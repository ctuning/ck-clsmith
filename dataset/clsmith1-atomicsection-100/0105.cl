// --atomics 30 ---fake_divergence -g 89,42,2 -l 1,21,2
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


// Seed: 105

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   uint16_t  f1;
   uint8_t  f2;
   int32_t  f3;
   volatile int16_t  f4;
   uint32_t  f5;
   volatile int32_t  f6;
   uint64_t  f7;
   uint8_t  f8;
};

struct S1 {
   volatile int32_t  f0;
   uint64_t  f1;
   volatile int16_t  f2;
   int64_t  f3;
   volatile uint64_t  f4;
   int32_t  f5;
   volatile uint32_t  f6;
   volatile uint8_t  f7;
   volatile int32_t  f8;
   uint64_t  f9;
};

struct S2 {
   uint32_t  f0;
   uint16_t  f1;
   uint64_t  f2;
};

union U3 {
   uint8_t  f0;
   struct S1  f1;
   volatile int64_t  f2;
   volatile int8_t * f3;
};

union U4 {
   int32_t  f0;
   volatile int8_t  f1;
   volatile struct S2  f2;
};

union U5 {
   int8_t * f0;
};

struct S6 {
    volatile int32_t g_2;
    int32_t g_3;
    int8_t g_22[4];
    uint64_t g_62;
    struct S0 g_66;
    struct S0 * volatile g_67;
    struct S0 * volatile g_68;
    struct S0 * volatile g_70;
    int32_t g_77;
    int32_t * volatile g_76;
    uint8_t g_107;
    union U4 g_117;
    struct S0 g_120;
    volatile int64_t g_135[6];
    uint32_t g_136;
    volatile union U3 g_152;
    union U3 g_158;
    union U3 g_159;
    int32_t * volatile g_165;
    struct S0 g_166[10];
    int16_t g_177;
    volatile uint16_t g_178;
    int8_t g_190[10];
    int64_t **g_216;
    int64_t **g_217[3];
    int32_t g_218[7][2][1];
    volatile union U4 g_223;
    uint64_t *g_227;
    union U3 g_243[4][7][3];
    int16_t g_249;
    union U4 g_266;
    int16_t g_268;
    struct S2 g_272[2][7][2];
    int64_t g_273[8][9];
    uint16_t g_285;
    int8_t **g_288;
    int8_t *** volatile g_287[8][1][5];
    struct S1 g_300;
    union U4 g_312;
    int32_t *g_374;
    int32_t *g_376;
    int32_t ** volatile g_375;
    int32_t ** volatile g_377;
    int32_t ** volatile g_378;
    uint32_t g_384;
    union U5 g_395;
    volatile struct S1 g_400;
    volatile uint64_t g_432;
    volatile struct S1 *g_439;
    volatile struct S1 ** volatile g_438[10];
    struct S1 g_442;
    struct S1 *g_441;
    struct S1 **g_440;
    int32_t ** volatile g_479;
    volatile struct S1 g_480;
    volatile struct S1 g_481;
    union U4 g_489[9];
    int32_t * volatile g_491[2];
    int32_t * volatile g_492;
    int32_t **g_505;
    int32_t ***g_504[6];
    volatile union U3 g_541;
    volatile struct S2 g_595[4][4];
    volatile struct S2 *g_594;
    volatile struct S2 * volatile * volatile g_593[7][9][1];
    int32_t *** volatile g_936;
    struct S0 g_953;
    volatile uint8_t *g_976;
    union U3 *g_1057;
    union U3 ** volatile g_1056;
    volatile int32_t g_1068;
    union U4 *g_1077;
    union U4 ** volatile g_1076;
    uint8_t g_1102[5][4];
    union U5 *g_1121;
    union U5 ** volatile g_1120;
    volatile struct S1 g_1151;
    volatile struct S1 g_1195;
    volatile struct S1 g_1204;
    uint8_t g_1279;
    union U4 g_1289[8][5];
    union U4 g_1307;
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
union U4  func_1(struct S6 * p_1308);
int32_t * func_6(int16_t  p_7, union U5  p_8, struct S6 * p_1308);
uint8_t  func_11(int8_t * p_12, uint32_t  p_13, uint32_t  p_14, int16_t  p_15, uint16_t  p_16, struct S6 * p_1308);
int8_t * func_17(int8_t * p_18, int32_t  p_19, uint64_t  p_20, struct S6 * p_1308);
int32_t  func_23(uint32_t  p_24, int64_t  p_25, struct S6 * p_1308);
int8_t * func_32(uint32_t  p_33, struct S6 * p_1308);
int8_t * func_36(uint64_t  p_37, int8_t * p_38, int32_t  p_39, int32_t * p_40, int32_t  p_41, struct S6 * p_1308);
int8_t * func_42(int32_t * p_43, uint64_t  p_44, uint8_t  p_45, uint32_t  p_46, int32_t * p_47, struct S6 * p_1308);
int32_t * func_48(int32_t  p_49, struct S6 * p_1308);
int8_t  func_52(int32_t * p_53, uint64_t  p_54, int8_t  p_55, int16_t  p_56, int8_t * p_57, struct S6 * p_1308);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1308->g_3 p_1308->g_976 p_1308->g_480.f7 p_1308->g_953.f0 p_1308->g_158.f0 p_1308->g_376 p_1308->g_166.f5 p_1308->g_1289.f0 p_1308->g_505 p_1308->g_1307
 * writes: p_1308->g_3 p_1308->g_166.f5 p_1308->g_374
 */
union U4  func_1(struct S6 * p_1308)
{ /* block id: 4 */
    int32_t l_60 = 0L;
    int32_t l_63[4][3][7] = {{{(-1L),(-3L),0x7CA44BABL,(-3L),(-1L),9L,(-1L)},{(-1L),(-3L),0x7CA44BABL,(-3L),(-1L),9L,(-1L)},{(-1L),(-3L),0x7CA44BABL,(-3L),(-1L),9L,(-1L)}},{{(-1L),(-3L),0x7CA44BABL,(-3L),(-1L),9L,(-1L)},{(-1L),(-3L),0x7CA44BABL,(-3L),(-1L),9L,(-1L)},{(-1L),(-3L),0x7CA44BABL,(-3L),(-1L),9L,(-1L)}},{{(-1L),(-3L),0x7CA44BABL,(-3L),(-1L),9L,(-1L)},{(-1L),(-3L),0x7CA44BABL,(-3L),(-1L),9L,(-1L)},{(-1L),(-3L),0x7CA44BABL,(-3L),(-1L),9L,(-1L)}},{{(-1L),(-3L),0x7CA44BABL,(-3L),(-1L),9L,(-1L)},{(-1L),(-3L),0x7CA44BABL,(-3L),(-1L),9L,(-1L)},{(-1L),(-3L),0x7CA44BABL,(-3L),(-1L),9L,(-1L)}}};
    int32_t *l_316 = &p_1308->g_3;
    int8_t *l_322 = &p_1308->g_22[0];
    int8_t l_323 = 0x4EL;
    uint16_t l_597 = 0x9C21L;
    uint32_t l_1260 = 0x93D7D923L;
    union U5 *l_1267 = &p_1308->g_395;
    uint32_t *l_1298 = &p_1308->g_166[8].f5;
    uint32_t l_1301 = 0x3E664506L;
    int32_t l_1302 = 0x2B9FE82DL;
    uint16_t *l_1303 = (void*)0;
    uint16_t *l_1304 = &l_597;
    int32_t *l_1305[6] = {&l_63[3][1][0],&l_63[3][1][0],&l_63[3][1][0],&l_63[3][1][0],&l_63[3][1][0],&l_63[3][1][0]};
    uint32_t l_1306 = 8UL;
    int i, j, k;
    for (p_1308->g_3 = (-1); (p_1308->g_3 < 5); p_1308->g_3++)
    { /* block id: 7 */
        int8_t *l_21 = &p_1308->g_22[0];
        int32_t l_30[2];
        uint64_t *l_61[1];
        int32_t l_315 = 1L;
        int8_t *l_321 = &p_1308->g_22[0];
        int8_t **l_367 = &l_322;
        int8_t *l_368 = &l_323;
        int16_t *l_1053 = &p_1308->g_249;
        union U5 l_1054 = {0};
        int32_t *l_1248 = &l_63[3][1][0];
        uint32_t l_1251 = 7UL;
        int i;
        for (i = 0; i < 2; i++)
            l_30[i] = 0x7AFBF261L;
        for (i = 0; i < 1; i++)
            l_61[i] = &p_1308->g_62;
        (1 + 1);
    }
    l_1306 |= ((((((safe_div_func_uint64_t_u_u((((*p_1308->g_976) == ((((safe_rshift_func_int16_t_s_u((*l_316), ((*l_1304) = ((((*l_316) <= (p_1308->g_953.f0 && ((((safe_mod_func_int32_t_s_s((safe_mod_func_int16_t_s_s(0x6608L, GROUP_DIVERGE(0, 1))), (*l_316))) ^ ((*l_1298) = (*l_316))) | (((safe_rshift_func_int8_t_s_s(p_1308->g_158.f0, 1)) ^ l_1301) , (*l_316))) , (*p_1308->g_376)))) ^ l_1302) , FAKE_DIVERGE(p_1308->group_1_offset, get_group_id(1), 10))))) , p_1308->g_166[8].f5) , &l_316) == &l_316)) && (*l_316)), (*l_316))) > p_1308->g_1289[0][3].f0) , (*l_316)) || GROUP_DIVERGE(0, 1)) != FAKE_DIVERGE(p_1308->global_1_offset, get_global_id(1), 10)) , 0x4F179C8DL);
    (*p_1308->g_505) = &l_63[3][1][0];
    return p_1308->g_1307;
}


/* ------------------------------------------ */
/* 
 * reads : p_1308->g_1056 p_1308->g_505 p_1308->g_218 p_1308->g_976 p_1308->g_480.f7 p_1308->g_953.f2 p_1308->g_378 p_1308->g_374 p_1308->g_442.f9 p_1308->g_136 p_1308->g_1076 p_1308->g_66.f5 p_1308->g_77 p_1308->g_480.f1 p_1308->g_1102 p_1308->g_442.f1 p_1308->g_312.f0 p_1308->g_273 p_1308->g_217 p_1308->g_1120 p_1308->g_120.f8 p_1308->g_953.f3 p_1308->g_1204 p_1308->g_441
 * writes: p_1308->g_1057 p_1308->g_374 p_1308->g_953.f2 p_1308->g_442.f9 p_1308->g_136 p_1308->g_120.f0 p_1308->g_77 p_1308->g_218 p_1308->g_1077 p_1308->g_66.f5 p_1308->g_953.f5 p_1308->g_440 p_1308->g_1121 p_1308->g_1102 p_1308->g_22 p_1308->g_120.f8 p_1308->g_953.f3 p_1308->g_442
 */
int32_t * func_6(int16_t  p_7, union U5  p_8, struct S6 * p_1308)
{ /* block id: 744 */
    union U3 *l_1055 = &p_1308->g_243[1][4][0];
    int32_t *l_1058 = (void*)0;
    int32_t *l_1059 = &p_1308->g_218[1][0][0];
    int32_t *l_1060 = &p_1308->g_218[0][1][0];
    int32_t *l_1061 = &p_1308->g_77;
    int32_t *l_1062 = (void*)0;
    int32_t *l_1063 = &p_1308->g_77;
    int32_t *l_1064[5][1];
    int16_t l_1065 = 1L;
    int64_t l_1066 = (-9L);
    int64_t l_1067 = 0x3A0964882EC7D19DL;
    uint64_t l_1069[1];
    union U4 **l_1131 = (void*)0;
    uint32_t l_1169 = 0UL;
    int32_t l_1229[5];
    int i, j;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
            l_1064[i][j] = &p_1308->g_77;
    }
    for (i = 0; i < 1; i++)
        l_1069[i] = 0xAF4D610162755A20L;
    for (i = 0; i < 5; i++)
        l_1229[i] = (-4L);
    (*p_1308->g_1056) = l_1055;
    (*p_1308->g_505) = l_1058;
    l_1069[0]++;
    if (((-8L) < ((*l_1059) , (*p_1308->g_976))))
    { /* block id: 748 */
        int8_t l_1090[7] = {0x1FL,0x1FL,0x1FL,0x1FL,0x1FL,0x1FL,0x1FL};
        struct S1 **l_1091[8][5] = {{&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441},{&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441},{&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441},{&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441},{&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441},{&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441},{&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441},{&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441,&p_1308->g_441}};
        struct S1 ***l_1092 = &p_1308->g_440;
        int32_t l_1093[2][9] = {{0x0426395CL,0L,0x0426395CL,0x0426395CL,0L,0x0426395CL,0x0426395CL,0L,0x0426395CL},{0x0426395CL,0L,0x0426395CL,0x0426395CL,0L,0x0426395CL,0x0426395CL,0L,0x0426395CL}};
        int i, j;
        for (p_1308->g_953.f2 = 2; (p_1308->g_953.f2 <= 9); p_1308->g_953.f2 += 1)
        { /* block id: 751 */
            int64_t l_1072 = 1L;
            union U4 *l_1075 = &p_1308->g_117;
            int64_t ***l_1080 = &p_1308->g_217[1];
            int32_t l_1081 = 0x0DA6461EL;
            int64_t l_1089[2][7] = {{1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L}};
            int i, j;
            if (l_1072)
                break;
            if (p_7)
                break;
            for (p_1308->g_442.f9 = 0; (p_1308->g_442.f9 <= 0); p_1308->g_442.f9 += 1)
            { /* block id: 756 */
                struct S2 **l_1073 = (void*)0;
                uint32_t *l_1082 = &p_1308->g_66.f5;
                uint32_t *l_1085 = &p_1308->g_953.f5;
                int i;
                for (p_1308->g_136 = 0; (p_1308->g_136 <= 0); p_1308->g_136 += 1)
                { /* block id: 759 */
                    struct S2 ***l_1074 = &l_1073;
                    int i;
                    for (p_1308->g_120.f0 = 1; (p_1308->g_120.f0 >= 0); p_1308->g_120.f0 -= 1)
                    { /* block id: 762 */
                        return (*p_1308->g_378);
                    }
                    (*l_1061) = l_1069[p_1308->g_442.f9];
                    (*l_1059) = l_1069[p_1308->g_136];
                    (*l_1074) = ((+l_1069[p_1308->g_442.f9]) , l_1073);
                }
                (*p_1308->g_1076) = l_1075;
                (*l_1063) ^= (l_1069[p_1308->g_442.f9] <= ((safe_lshift_func_uint8_t_u_u((((((void*)0 != l_1080) >= 1UL) >= FAKE_DIVERGE(p_1308->group_2_offset, get_group_id(2), 10)) > ((((*l_1085) = ((*l_1082)++)) == 4294967294UL) != (safe_unary_minus_func_uint32_t_u((safe_mod_func_uint32_t_u_u(l_1089[1][3], FAKE_DIVERGE(p_1308->local_0_offset, get_local_id(0), 10))))))), (((0x59L > l_1090[4]) <= 8L) | p_7))) > GROUP_DIVERGE(0, 1)));
            }
        }
        (*l_1092) = l_1091[5][0];
        l_1093[1][4] = ((*l_1061) ^= 0x1DE6A776L);
    }
    else
    { /* block id: 778 */
        int16_t l_1113 = 0x3552L;
        struct S2 *l_1128[3];
        struct S2 **l_1127 = &l_1128[2];
        struct S2 ***l_1126 = &l_1127;
        uint8_t *l_1132 = &p_1308->g_1102[3][1];
        int8_t *l_1133 = &p_1308->g_22[0];
        uint32_t l_1136 = 4294967294UL;
        int32_t l_1154 = 0x6B876D41L;
        int32_t l_1230 = 0x27B14DB4L;
        int32_t l_1231 = 2L;
        int32_t l_1232 = 0x66E79ED6L;
        int32_t l_1233 = (-1L);
        int32_t l_1234 = (-4L);
        int32_t l_1235 = 0L;
        int32_t l_1236 = 0x1395E799L;
        int32_t l_1237 = 0x6B6424B3L;
        int32_t l_1238 = 1L;
        int32_t l_1239 = 0x2FCB741CL;
        int32_t l_1240 = 0x62AFADB8L;
        int32_t l_1241 = 0x656C3456L;
        int32_t l_1242 = 0x639F448EL;
        int32_t l_1243[8] = {(-1L),0x6FB46B83L,(-1L),(-1L),0x6FB46B83L,(-1L),(-1L),0x6FB46B83L};
        int64_t l_1244[8][7][2] = {{{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L}},{{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L}},{{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L}},{{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L}},{{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L}},{{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L}},{{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L}},{{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L},{0x090D1A159B7AD0B8L,0x090D1A159B7AD0B8L}}};
        uint64_t l_1245 = 8UL;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1128[i] = (void*)0;
        if ((safe_mul_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((((safe_add_func_uint8_t_u_u((p_1308->g_66.f5 != ((*l_1063) = (((safe_sub_func_uint16_t_u_u((p_1308->g_480.f1 & ((p_1308->g_1102[3][1] > ((safe_rshift_func_int8_t_s_s((((+(safe_rshift_func_int16_t_s_u((GROUP_DIVERGE(2, 1) && (((safe_add_func_uint32_t_u_u(((safe_mod_func_int16_t_s_s((p_1308->g_218[1][1][0] < (safe_rshift_func_int16_t_s_u(0x7B54L, p_1308->g_442.f1))), (l_1113 ^ (safe_sub_func_int16_t_s_s((p_7 , (safe_div_func_uint16_t_u_u(p_1308->g_218[3][1][0], 0x0C11L))), p_1308->g_312.f0))))) == 0x4441F285L), p_7)) | 0xB593L) == p_7)), 5))) || l_1113) != (*l_1061)), 6)) < 0x96L)) <= p_1308->g_273[4][8])), l_1113)) , p_1308->g_217[0]) == p_1308->g_217[2]))), p_7)) <= 0L) >= GROUP_DIVERGE(1, 1)) >= l_1113), 4UL)), l_1113)))
        { /* block id: 780 */
            return l_1064[2][0];
        }
        else
        { /* block id: 782 */
            for (p_1308->g_953.f2 = 0; (p_1308->g_953.f2 < 53); p_1308->g_953.f2 = safe_add_func_uint8_t_u_u(p_1308->g_953.f2, 3))
            { /* block id: 785 */
                (*p_1308->g_1120) = &p_1308->g_395;
            }
        }
        (*l_1060) = (safe_sub_func_uint8_t_u_u(((((*l_1133) = (safe_add_func_int64_t_s_s((l_1126 != &p_1308->g_593[6][8][0]), ((*l_1061) ^= (safe_mod_func_uint8_t_u_u(((*l_1132) = (l_1131 == l_1131)), 8UL)))))) | (safe_lshift_func_int8_t_s_s(l_1136, 6))) || ((*l_1063) = 0x1DEE964CL)), (p_7 , ((((safe_lshift_func_uint8_t_u_u(0UL, p_7)) < l_1136) & p_7) != l_1136))));
        for (p_1308->g_120.f8 = 0; (p_1308->g_120.f8 <= 9); p_1308->g_120.f8 += 1)
        { /* block id: 796 */
            uint16_t l_1159 = 65531UL;
            int32_t l_1163 = 0x1491CFC9L;
            int32_t l_1168 = 0x1805E9FBL;
            uint64_t l_1203 = 0x05FEE59A90B47E1DL;
            for (p_1308->g_953.f3 = 1; (p_1308->g_953.f3 <= 9); p_1308->g_953.f3 += 1)
            { /* block id: 799 */
                int32_t l_1158 = 0x5E056FC2L;
                int32_t l_1162 = 0x104C50E2L;
                int32_t l_1164 = 0L;
                int32_t l_1165 = 1L;
                int32_t l_1166 = (-1L);
                int32_t l_1167[5][7][7] = {{{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)}},{{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)}},{{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)}},{{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)}},{{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)},{(-5L),0x0587F279L,0x7A67F5F5L,1L,0x3A6CD8C6L,0L,(-1L)}}};
                int i, j, k;
                for (p_1308->g_442.f9 = 1; (p_1308->g_442.f9 <= 9); p_1308->g_442.f9 += 1)
                { /* block id: 802 */
                    uint64_t *l_1150 = (void*)0;
                    int32_t l_1156[7] = {0x391012ECL,(-1L),0x391012ECL,0x391012ECL,(-1L),0x391012ECL,0x391012ECL};
                    int64_t ***l_1184 = &p_1308->g_217[2];
                    int32_t **l_1196 = &l_1060;
                    int i;
                    (1 + 1);
                }
                (*p_1308->g_441) = p_1308->g_1204;
                if ((atomic_inc(&p_1308->g_atomic_input[30 * get_linear_group_id() + 24]) == 5))
                { /* block id: 834 */
                    uint16_t l_1205 = 0x9548L;
                    if (l_1205)
                    { /* block id: 835 */
                        int8_t l_1206 = 0x3CL;
                        union U4 l_1208[2] = {{0x3B6384B2L},{0x3B6384B2L}};
                        union U4 *l_1207 = &l_1208[1];
                        union U4 *l_1209 = (void*)0;
                        union U4 *l_1210 = &l_1208[1];
                        int i;
                        l_1210 = (l_1209 = (l_1206 , l_1207));
                    }
                    else
                    { /* block id: 838 */
                        int32_t l_1211[6] = {0x3C5AF266L,0x3C5AF266L,0x3C5AF266L,0x3C5AF266L,0x3C5AF266L,0x3C5AF266L};
                        uint32_t l_1212 = 8UL;
                        struct S2 l_1215 = {0x279A42F7L,0xA187L,18446744073709551615UL};
                        struct S2 l_1216 = {0UL,0xF550L,18446744073709551613UL};
                        int8_t l_1217 = 0L;
                        uint32_t l_1218[5][4] = {{0x36C39344L,0x7BDE4949L,0x7BDE4949L,0x36C39344L},{0x36C39344L,0x7BDE4949L,0x7BDE4949L,0x36C39344L},{0x36C39344L,0x7BDE4949L,0x7BDE4949L,0x36C39344L},{0x36C39344L,0x7BDE4949L,0x7BDE4949L,0x36C39344L},{0x36C39344L,0x7BDE4949L,0x7BDE4949L,0x36C39344L}};
                        int i, j;
                        l_1212++;
                        l_1216 = l_1215;
                        ++l_1218[2][2];
                    }
                    for (l_1205 = 0; (l_1205 <= 9); l_1205 += 1)
                    { /* block id: 845 */
                        int32_t l_1221 = 0L;
                        uint64_t l_1222 = 5UL;
                        int64_t l_1223 = 0x41CCB03019E6FB2AL;
                        int32_t l_1225 = 1L;
                        int32_t *l_1224 = &l_1225;
                        struct S2 l_1226 = {0x788F1417L,0xB896L,5UL};
                        struct S2 l_1227 = {0x63AAB42AL,0x9ED3L,0x8F9ECFDE2EBB8398L};
                        struct S2 l_1228 = {0UL,0x68F3L,18446744073709551615UL};
                        l_1222 ^= l_1221;
                        l_1223 &= 2L;
                        l_1224 = (void*)0;
                        l_1228 = (l_1227 = l_1226);
                    }
                    unsigned int result = 0;
                    result += l_1205;
                    atomic_add(&p_1308->g_special_values[30 * get_linear_group_id() + 24], result);
                }
                else
                { /* block id: 852 */
                    (1 + 1);
                }
            }
            if (p_7)
                continue;
        }
        ++l_1245;
    }
    return l_1063;
}


/* ------------------------------------------ */
/* 
 * reads : p_1308->g_190 p_1308->g_120.f0 p_1308->g_936 p_1308->g_505 p_1308->g_66.f7 p_1308->g_218 p_1308->g_953 p_1308->g_158.f0 p_1308->g_22 p_1308->g_120.f1 p_1308->g_374 p_1308->g_442.f1 p_1308->g_285 p_1308->g_441 p_1308->g_442 p_1308->g_439 p_1308->g_312.f0 p_1308->g_107 p_1308->g_480.f8 p_1308->g_976 p_1308->g_489.f0 p_1308->g_300.f0 p_1308->g_480.f5 p_1308->g_66.f1
 * writes: p_1308->g_287 p_1308->g_120.f0 p_1308->g_505 p_1308->g_374 p_1308->g_66.f7 p_1308->g_120.f1 p_1308->g_62 p_1308->g_190 p_1308->g_22 p_1308->g_442.f1 p_1308->g_400 p_1308->g_218 p_1308->g_953.f5 p_1308->g_107 p_1308->g_312.f0 p_1308->g_953.f2 p_1308->g_66.f3
 */
uint8_t  func_11(int8_t * p_12, uint32_t  p_13, uint32_t  p_14, int16_t  p_15, uint16_t  p_16, struct S6 * p_1308)
{ /* block id: 348 */
    int64_t l_930 = 1L;
    int32_t l_931 = (-5L);
    int32_t *l_938 = &p_1308->g_218[5][1][0];
    union U4 *l_974 = &p_1308->g_489[5];
    int64_t ***l_992 = (void*)0;
    int64_t ****l_991 = &l_992;
    uint16_t l_993[9][3][3] = {{{1UL,0UL,0UL},{1UL,0UL,0UL},{1UL,0UL,0UL}},{{1UL,0UL,0UL},{1UL,0UL,0UL},{1UL,0UL,0UL}},{{1UL,0UL,0UL},{1UL,0UL,0UL},{1UL,0UL,0UL}},{{1UL,0UL,0UL},{1UL,0UL,0UL},{1UL,0UL,0UL}},{{1UL,0UL,0UL},{1UL,0UL,0UL},{1UL,0UL,0UL}},{{1UL,0UL,0UL},{1UL,0UL,0UL},{1UL,0UL,0UL}},{{1UL,0UL,0UL},{1UL,0UL,0UL},{1UL,0UL,0UL}},{{1UL,0UL,0UL},{1UL,0UL,0UL},{1UL,0UL,0UL}},{{1UL,0UL,0UL},{1UL,0UL,0UL},{1UL,0UL,0UL}}};
    struct S1 **l_1019 = &p_1308->g_441;
    uint32_t *l_1043 = &p_1308->g_66.f5;
    union U5 *l_1048[5];
    union U5 **l_1049 = (void*)0;
    union U5 **l_1050 = &l_1048[2];
    union U5 *l_1051[3];
    uint64_t l_1052 = 0x958EE48D57C32BFDL;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_1048[i] = &p_1308->g_395;
    for (i = 0; i < 3; i++)
        l_1051[i] = &p_1308->g_395;
    if ((atomic_inc(&p_1308->g_atomic_input[30 * get_linear_group_id() + 9]) == 9))
    { /* block id: 350 */
        int32_t l_598 = 0x430E1B4FL;
        int64_t l_745 = 0x6C66E4A67CE89B1AL;
        int32_t l_746[3];
        uint32_t l_747 = 0x36162F9AL;
        int i;
        for (i = 0; i < 3; i++)
            l_746[i] = (-1L);
        for (l_598 = 0; (l_598 == 26); l_598 = safe_add_func_uint16_t_u_u(l_598, 7))
        { /* block id: 353 */
            int32_t l_601 = 4L;
            uint64_t l_627 = 0xC590E28F619FFBBEL;
            for (l_601 = (-21); (l_601 > (-25)); --l_601)
            { /* block id: 356 */
                int64_t l_604 = 0x185C7D2E0153AEFEL;
                uint16_t l_605 = 0x2309L;
                uint32_t l_608 = 0UL;
                --l_605;
                --l_608;
                for (l_604 = 6; (l_604 >= 0); l_604 -= 1)
                { /* block id: 361 */
                    int32_t l_611 = 0x28C47F75L;
                    int32_t l_615 = 0L;
                    for (l_611 = 9; (l_611 >= 2); l_611 -= 1)
                    { /* block id: 364 */
                        int32_t l_613 = 0L;
                        int32_t *l_612 = &l_613;
                        int32_t *l_614 = &l_613;
                        l_614 = (l_612 = (void*)0);
                    }
                    if ((l_615 = 0x314645AEL))
                    { /* block id: 369 */
                        uint32_t l_616 = 1UL;
                        int32_t l_618 = 0x1869137BL;
                        int32_t *l_617 = &l_618;
                        union U3 l_619 = {0xBCL};/* VOLATILE GLOBAL l_619 */
                        uint32_t l_620 = 0x18F6575DL;
                        uint32_t l_621 = 0xF8DA7331L;
                        uint32_t l_622[2];
                        int16_t l_623 = 0L;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_622[i] = 0x0BBC217EL;
                        l_615 &= (l_616 = 1L);
                        l_617 = (void*)0;
                        l_615 &= (l_619 , ((l_620 , ((l_621 = 0xA2C7FA26D036522CL) , (l_623 &= (l_622[0] &= 1L)))) , 0x619B7737L));
                    }
                    else
                    { /* block id: 377 */
                        uint8_t l_624[3];
                        int32_t l_625 = 0x2F718182L;
                        int32_t *l_626 = (void*)0;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_624[i] = 0x07L;
                        l_611 = l_624[1];
                        l_611 = l_625;
                        l_626 = (void*)0;
                    }
                }
            }
            l_627++;
        }
        for (l_598 = 0; (l_598 != (-4)); l_598--)
        { /* block id: 388 */
            uint8_t l_632[10] = {250UL,255UL,250UL,250UL,255UL,250UL,250UL,255UL,250UL,250UL};
            uint32_t l_701 = 0x9BA90ACDL;
            int32_t l_742[8] = {0x5C7A3274L,0x5C7A3274L,0x5C7A3274L,0x5C7A3274L,0x5C7A3274L,0x5C7A3274L,0x5C7A3274L,0x5C7A3274L};
            uint16_t l_743[4];
            uint16_t l_744[1][9] = {{5UL,5UL,5UL,5UL,5UL,5UL,5UL,5UL,5UL}};
            int i, j;
            for (i = 0; i < 4; i++)
                l_743[i] = 65535UL;
            l_632[4]++;
            for (l_632[0] = 0; (l_632[0] <= 8); l_632[0] += 1)
            { /* block id: 392 */
                uint32_t l_635[1][7][3] = {{{0UL,0UL,0UL},{0UL,0UL,0UL},{0UL,0UL,0UL},{0UL,0UL,0UL},{0UL,0UL,0UL},{0UL,0UL,0UL},{0UL,0UL,0UL}}};
                union U4 l_637[7][9] = {{{-6L},{-6L},{2L},{0x7A9EC348L},{0L},{0x7916086EL},{0x0C979A59L},{0x3A6C4835L},{0x0C979A59L}},{{-6L},{-6L},{2L},{0x7A9EC348L},{0L},{0x7916086EL},{0x0C979A59L},{0x3A6C4835L},{0x0C979A59L}},{{-6L},{-6L},{2L},{0x7A9EC348L},{0L},{0x7916086EL},{0x0C979A59L},{0x3A6C4835L},{0x0C979A59L}},{{-6L},{-6L},{2L},{0x7A9EC348L},{0L},{0x7916086EL},{0x0C979A59L},{0x3A6C4835L},{0x0C979A59L}},{{-6L},{-6L},{2L},{0x7A9EC348L},{0L},{0x7916086EL},{0x0C979A59L},{0x3A6C4835L},{0x0C979A59L}},{{-6L},{-6L},{2L},{0x7A9EC348L},{0L},{0x7916086EL},{0x0C979A59L},{0x3A6C4835L},{0x0C979A59L}},{{-6L},{-6L},{2L},{0x7A9EC348L},{0L},{0x7916086EL},{0x0C979A59L},{0x3A6C4835L},{0x0C979A59L}}};
                union U4 *l_636 = &l_637[0][0];
                union U4 *l_638 = (void*)0;
                int64_t l_639 = 4L;
                int32_t l_640 = 1L;
                uint8_t l_641 = 0x5CL;
                uint16_t l_644 = 8UL;
                int i, j, k;
                l_638 = (l_635[0][4][0] , l_636);
                --l_641;
                if (l_644)
                { /* block id: 395 */
                    int32_t l_646 = (-7L);
                    int32_t *l_645 = &l_646;
                    uint32_t l_647 = 1UL;
                    uint64_t l_667 = 0x5164733BAE324D16L;
                    int64_t l_668 = 0x618A5346D060D521L;
                    uint16_t l_669 = 0x6901L;
                    int32_t l_670 = 0x089C3EE7L;
                    l_645 = l_645;
                    if (l_647)
                    { /* block id: 397 */
                        int16_t l_648[2][9];
                        int16_t l_649[7][9] = {{0x5439L,0x152EL,0x38A8L,0x38A8L,0x152EL,0x5439L,(-5L),(-1L),0x5997L},{0x5439L,0x152EL,0x38A8L,0x38A8L,0x152EL,0x5439L,(-5L),(-1L),0x5997L},{0x5439L,0x152EL,0x38A8L,0x38A8L,0x152EL,0x5439L,(-5L),(-1L),0x5997L},{0x5439L,0x152EL,0x38A8L,0x38A8L,0x152EL,0x5439L,(-5L),(-1L),0x5997L},{0x5439L,0x152EL,0x38A8L,0x38A8L,0x152EL,0x5439L,(-5L),(-1L),0x5997L},{0x5439L,0x152EL,0x38A8L,0x38A8L,0x152EL,0x5439L,(-5L),(-1L),0x5997L},{0x5439L,0x152EL,0x38A8L,0x38A8L,0x152EL,0x5439L,(-5L),(-1L),0x5997L}};
                        int32_t l_650 = 0x4C8D312EL;
                        int32_t l_652[3][2] = {{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}};
                        int32_t *l_651 = &l_652[2][1];
                        int32_t *l_653[10][5] = {{&l_652[1][0],(void*)0,(void*)0,&l_652[1][0],&l_652[0][1]},{&l_652[1][0],(void*)0,(void*)0,&l_652[1][0],&l_652[0][1]},{&l_652[1][0],(void*)0,(void*)0,&l_652[1][0],&l_652[0][1]},{&l_652[1][0],(void*)0,(void*)0,&l_652[1][0],&l_652[0][1]},{&l_652[1][0],(void*)0,(void*)0,&l_652[1][0],&l_652[0][1]},{&l_652[1][0],(void*)0,(void*)0,&l_652[1][0],&l_652[0][1]},{&l_652[1][0],(void*)0,(void*)0,&l_652[1][0],&l_652[0][1]},{&l_652[1][0],(void*)0,(void*)0,&l_652[1][0],&l_652[0][1]},{&l_652[1][0],(void*)0,(void*)0,&l_652[1][0],&l_652[0][1]},{&l_652[1][0],(void*)0,(void*)0,&l_652[1][0],&l_652[0][1]}};
                        uint32_t l_654 = 0xDCAC6FFDL;
                        uint32_t l_657 = 0x308F15A7L;
                        int32_t *l_658[1][4] = {{&l_652[1][1],&l_652[1][1],&l_652[1][1],&l_652[1][1]}};
                        int i, j;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 9; j++)
                                l_648[i][j] = 0x411BL;
                        }
                        l_653[5][2] = (l_645 = ((l_650 = (l_649[4][6] = l_648[1][3])) , l_651));
                        l_654--;
                        (*l_645) = l_657;
                        l_645 = l_658[0][2];
                    }
                    else
                    { /* block id: 405 */
                        uint32_t l_659 = 4294967295UL;
                        int32_t l_660 = 0L;
                        uint8_t l_661 = 0x13L;
                        int16_t l_662 = 0x6551L;
                        uint32_t l_663 = 0xFF52526CL;
                        uint64_t l_664 = 0x79F5686267A10264L;
                        int32_t l_665 = 0x2FA2C2C5L;
                        int64_t l_666[4][7][2] = {{{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L}},{{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L}},{{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L}},{{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L},{(-6L),8L}}};
                        int i, j, k;
                        (*l_645) ^= 0x62FEC42BL;
                        (*l_645) &= ((l_664 = (l_659 , ((l_660 , ((l_641 = (l_661 , l_662)) , l_663)) , (l_637[0][0].f0 = 5L)))) , (l_666[2][0][1] = l_665));
                    }
                    if ((l_670 = ((l_667 , l_668) , l_669)))
                    { /* block id: 414 */
                        int32_t l_671 = (-1L);
                        int8_t l_672 = (-1L);
                        uint64_t l_673 = 0x6B6C8DC80907EC14L;
                        int16_t l_674 = 0x546CL;
                        struct S0 l_675 = {0x71858231L,7UL,251UL,-1L,1L,0xF32086EFL,1L,0xF88E33C0242BD374L,0xB7L};/* VOLATILE GLOBAL l_675 */
                        struct S0 l_676 = {0x18E3829DL,0x7FC9L,1UL,0x3192789CL,0x462AL,7UL,-1L,18446744073709551615UL,0x78L};/* VOLATILE GLOBAL l_676 */
                        int16_t l_677 = 0x61E6L;
                        int16_t l_678[10][8][3] = {{{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L}},{{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L}},{{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L}},{{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L}},{{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L}},{{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L}},{{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L}},{{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L}},{{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L}},{{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L},{0x20F4L,4L,4L}}};
                        uint32_t l_679[5] = {4294967289UL,4294967289UL,4294967289UL,4294967289UL,4294967289UL};
                        int i, j, k;
                        l_676 = ((l_674 = (l_671 , (l_673 |= l_672))) , l_675);
                        l_679[1]--;
                    }
                    else
                    { /* block id: 419 */
                        uint8_t l_682[3][10] = {{1UL,1UL,1UL,0x22L,0xFDL,0x22L,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,0x22L,0xFDL,0x22L,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,0x22L,0xFDL,0x22L,1UL,1UL,1UL,1UL}};
                        struct S0 l_683 = {0x3DC9DC0AL,0xCCD7L,0UL,0x1E024529L,-8L,0x31556F67L,0x5ED29AECL,0xD21FD1647DF03A9DL,0UL};/* VOLATILE GLOBAL l_683 */
                        int32_t l_684 = 6L;
                        union U5 l_685 = {0};
                        int32_t l_687 = 0L;
                        int32_t *l_686[6];
                        int i, j;
                        for (i = 0; i < 6; i++)
                            l_686[i] = &l_687;
                        l_686[3] = (((l_682[2][1] , l_683) , (l_684 , l_685)) , (void*)0);
                    }
                }
                else
                { /* block id: 422 */
                    int8_t l_688 = 0x1BL;
                    uint8_t l_689 = 1UL;
                    l_689 = l_688;
                    for (l_688 = 0; (l_688 <= 8); l_688 += 1)
                    { /* block id: 426 */
                        struct S1 l_690 = {-1L,1UL,4L,0x661BDA69D6CD465DL,0x1F07EED6F818ADF8L,0x11588D1BL,7UL,0xE3L,0L,0UL};/* VOLATILE GLOBAL l_690 */
                        struct S1 l_691 = {-1L,4UL,7L,0x6242392340C6E315L,0UL,2L,1UL,0xC1L,0x302EE6A9L,9UL};/* VOLATILE GLOBAL l_691 */
                        uint64_t l_692 = 0xD4D4907577EAE561L;
                        int32_t l_693 = (-10L);
                        l_691 = l_690;
                        l_693 ^= l_692;
                    }
                }
                for (l_640 = 0; (l_640 <= 0); l_640 += 1)
                { /* block id: 433 */
                    uint8_t l_694 = 0x6BL;
                    int32_t l_695 = 0x60A4C97DL;
                    union U4 l_696[8][4][4] = {{{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}}},{{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}}},{{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}}},{{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}}},{{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}}},{{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}}},{{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}}},{{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}},{{-5L},{0x63BF8090L},{-1L},{0x3F844D04L}}}};
                    uint32_t l_697 = 4294967295UL;
                    uint32_t l_698 = 4294967295UL;
                    int i, j, k;
                    l_695 &= l_694;
                    l_698 = (l_696[4][2][2] , l_697);
                    for (l_695 = 0; (l_695 >= 0); l_695 -= 1)
                    { /* block id: 438 */
                        uint8_t l_699[8];
                        int32_t l_700 = 0x4B542BCDL;
                        int i;
                        for (i = 0; i < 8; i++)
                            l_699[i] = 0xBBL;
                        l_700 = l_699[7];
                    }
                }
            }
            if (l_701)
            { /* block id: 443 */
                uint32_t l_702 = 0xD43E0B60L;
                int8_t l_705[2];
                uint32_t l_706[9] = {1UL,3UL,1UL,1UL,3UL,1UL,1UL,3UL,1UL};
                int i;
                for (i = 0; i < 2; i++)
                    l_705[i] = 0x25L;
                l_702--;
                l_706[3] = l_705[0];
                for (l_706[3] = 0; (l_706[3] == 10); l_706[3] = safe_add_func_uint32_t_u_u(l_706[3], 1))
                { /* block id: 448 */
                    uint16_t l_709 = 0xC5DCL;
                    uint64_t l_710 = 1UL;
                    int64_t l_711[4][5][8] = {{{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)}},{{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)}},{{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)}},{{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)},{(-10L),0L,(-10L),0x67323E806C713C96L,0x08B904AF8F2BCADAL,0x6BD913B3546C2FFEL,0x1A88682428FF05D3L,(-1L)}}};
                    uint64_t l_712 = 0x54336148CD10CEC0L;
                    int32_t l_713[8];
                    uint64_t l_714 = 6UL;
                    int32_t l_715 = 0x04A25A37L;
                    int8_t l_716 = (-8L);
                    struct S2 l_717 = {0x043232DAL,3UL,0x6003E6E1A3F6143BL};
                    struct S2 l_718[9] = {{0xC408E21EL,0xD2FCL,0xCC119F4BCC45B0CCL},{0xC408E21EL,0xD2FCL,0xCC119F4BCC45B0CCL},{0xC408E21EL,0xD2FCL,0xCC119F4BCC45B0CCL},{0xC408E21EL,0xD2FCL,0xCC119F4BCC45B0CCL},{0xC408E21EL,0xD2FCL,0xCC119F4BCC45B0CCL},{0xC408E21EL,0xD2FCL,0xCC119F4BCC45B0CCL},{0xC408E21EL,0xD2FCL,0xCC119F4BCC45B0CCL},{0xC408E21EL,0xD2FCL,0xCC119F4BCC45B0CCL},{0xC408E21EL,0xD2FCL,0xCC119F4BCC45B0CCL}};
                    struct S2 l_719 = {0xF5EBC707L,1UL,6UL};
                    int i, j, k;
                    for (i = 0; i < 8; i++)
                        l_713[i] = 0L;
                    l_710 &= l_709;
                    l_715 = (l_711[1][3][2] , ((l_712 , l_713[1]) , l_714));
                    l_719 = (l_716 , (l_718[4] = l_717));
                }
            }
            else
            { /* block id: 454 */
                int32_t l_720[5] = {1L,1L,1L,1L,1L};
                int32_t l_721 = 0x7750F865L;
                struct S1 l_722 = {0x6844F178L,0x44D94D1D4C7DCCE4L,0x5D3BL,0x3A91AF364D4CDC89L,0x9CD6327820463859L,0L,0x852D7570L,246UL,1L,9UL};/* VOLATILE GLOBAL l_722 */
                struct S1 l_723 = {5L,0xCED67A86741D3DE0L,1L,0x06AFA8B6A1639C57L,1UL,0L,0x0F836620L,1UL,0x69535A12L,0x9A10F3386AA04AE6L};/* VOLATILE GLOBAL l_723 */
                struct S1 *l_724 = &l_723;
                int i;
                l_723 = (l_720[0] , (l_721 , l_722));
                l_724 = (void*)0;
                for (l_722.f9 = (-12); (l_722.f9 > 33); ++l_722.f9)
                { /* block id: 459 */
                    int32_t l_727 = 0x09F2087AL;
                    if (l_727)
                    { /* block id: 460 */
                        union U3 l_728[8][8] = {{{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL}},{{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL}},{{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL}},{{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL}},{{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL}},{{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL}},{{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL}},{{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL},{0x18L},{0x18L},{0x9DL}}};
                        int16_t l_729 = 0L;
                        struct S0 l_730 = {-3L,0x05F7L,0xBBL,0x08F27A12L,0x257EL,0UL,0x77E2A9A0L,0x54E594B796A18923L,3UL};/* VOLATILE GLOBAL l_730 */
                        struct S0 l_731 = {0L,0xD7BFL,0x68L,1L,-1L,1UL,-7L,0xFF4954FD62AA3AE9L,1UL};/* VOLATILE GLOBAL l_731 */
                        int i, j;
                        l_731 = (l_728[1][2] , (l_729 , l_730));
                    }
                    else
                    { /* block id: 462 */
                        uint64_t l_732 = 18446744073709551611UL;
                        l_722.f8 &= l_732;
                        l_720[0] &= 0x2F7F55D0L;
                    }
                    l_720[1] &= 0x380274BCL;
                }
                for (l_720[4] = 0; (l_720[4] > (-30)); l_720[4] = safe_sub_func_uint64_t_u_u(l_720[4], 8))
                { /* block id: 470 */
                    int32_t l_735 = (-1L);
                    union U5 *l_741[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_741[i] = (void*)0;
                    for (l_735 = 0; (l_735 <= 9); l_735 += 1)
                    { /* block id: 473 */
                        int64_t l_736 = (-8L);
                        int32_t l_737 = (-1L);
                        int32_t l_739 = 0x61FBDC73L;
                        int32_t *l_738 = &l_739;
                        int32_t *l_740 = &l_739;
                        int i;
                        l_723.f8 = p_1308->g_190[l_735];
                        l_737 = l_736;
                        l_740 = l_738;
                    }
                    l_741[0] = (void*)0;
                }
            }
            l_744[0][4] |= (l_743[3] ^= (l_742[4] = 0x5B5C373DL));
        }
        if (((--l_747) , 0L))
        { /* block id: 486 */
            int32_t l_750 = 0x053C2358L;
            uint32_t l_799 = 0xBAA1981CL;
            union U5 l_800 = {0};
            uint32_t l_801 = 1UL;
            struct S0 l_802 = {0x5A0D52C6L,65533UL,0x60L,0x7815BC4FL,0L,0x524F36FAL,-1L,0xE9E436F3323A4385L,1UL};/* VOLATILE GLOBAL l_802 */
            struct S1 l_804 = {0x15DF8593L,18446744073709551606UL,0x4E49L,-1L,0UL,0x5E7E92CBL,0x06D3A77FL,0x46L,0x402C0730L,0x8D25AA77F3785A57L};/* VOLATILE GLOBAL l_804 */
            struct S1 *l_803 = &l_804;
            struct S1 *l_805 = (void*)0;
            int32_t l_806 = 0x6FB1B55BL;
            if (l_750)
            { /* block id: 487 */
                uint32_t l_751 = 4UL;
                uint16_t l_754 = 0xED65L;
                --l_751;
                ++l_754;
            }
            else
            { /* block id: 490 */
                int32_t l_792[3][7] = {{0x21214213L,0x21214213L,0L,(-5L),0L,(-5L),0L},{0x21214213L,0x21214213L,0L,(-5L),0L,(-5L),0L},{0x21214213L,0x21214213L,0L,(-5L),0L,(-5L),0L}};
                int32_t l_793 = 0x1683C656L;
                int32_t l_794 = 0x4FE2B8E4L;
                int8_t l_797 = (-1L);
                int8_t *l_796 = &l_797;
                int8_t **l_795 = &l_796;
                uint8_t l_798 = 0x27L;
                int i, j;
                if ((l_746[0] ^= 0x4A224331L))
                { /* block id: 492 */
                    int32_t l_757 = 1L;
                    for (l_757 = 28; (l_757 == (-4)); l_757--)
                    { /* block id: 495 */
                        uint16_t l_760 = 0x0524L;
                        int8_t l_763 = (-1L);
                        uint64_t l_764 = 0xFCECE1E22846471AL;
                        struct S1 *l_767 = (void*)0;
                        ++l_760;
                        l_764++;
                        l_767 = (void*)0;
                    }
                }
                else
                { /* block id: 500 */
                    int16_t l_768 = 4L;
                    int32_t l_769 = 0L;
                    int16_t l_770[4][2];
                    uint8_t l_771 = 0UL;
                    uint32_t l_774 = 4294967289UL;
                    struct S2 l_777 = {0UL,0xDB53L,0x22636FBEBFDEFD2EL};
                    int i, j;
                    for (i = 0; i < 4; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_770[i][j] = (-5L);
                    }
                    --l_771;
                    l_774--;
                    l_777 = l_777;
                    for (l_777.f0 = 0; (l_777.f0 < 10); l_777.f0 = safe_add_func_uint64_t_u_u(l_777.f0, 2))
                    { /* block id: 506 */
                        int16_t l_780 = 0x1419L;
                        uint32_t l_781 = 0xB8947B91L;
                        int64_t l_782 = 0L;
                        int8_t l_783 = 0x4AL;
                        uint16_t l_784 = 0x4C93L;
                        struct S1 l_787 = {0x393A9D1EL,1UL,-1L,-7L,0xA3713D1964D780B2L,1L,0x6127E163L,0xE7L,0x08DEB0EBL,0x400F8CC12ED419E1L};/* VOLATILE GLOBAL l_787 */
                        struct S0 l_789[1][8] = {{{1L,2UL,0xE3L,0x6E4A93C1L,0x3A62L,0x015143D5L,0x1C4AAAC7L,0x2BE36A0007097A37L,0x96L},{1L,2UL,0xE3L,0x6E4A93C1L,0x3A62L,0x015143D5L,0x1C4AAAC7L,0x2BE36A0007097A37L,0x96L},{1L,2UL,0xE3L,0x6E4A93C1L,0x3A62L,0x015143D5L,0x1C4AAAC7L,0x2BE36A0007097A37L,0x96L},{1L,2UL,0xE3L,0x6E4A93C1L,0x3A62L,0x015143D5L,0x1C4AAAC7L,0x2BE36A0007097A37L,0x96L},{1L,2UL,0xE3L,0x6E4A93C1L,0x3A62L,0x015143D5L,0x1C4AAAC7L,0x2BE36A0007097A37L,0x96L},{1L,2UL,0xE3L,0x6E4A93C1L,0x3A62L,0x015143D5L,0x1C4AAAC7L,0x2BE36A0007097A37L,0x96L},{1L,2UL,0xE3L,0x6E4A93C1L,0x3A62L,0x015143D5L,0x1C4AAAC7L,0x2BE36A0007097A37L,0x96L},{1L,2UL,0xE3L,0x6E4A93C1L,0x3A62L,0x015143D5L,0x1C4AAAC7L,0x2BE36A0007097A37L,0x96L}}};
                        struct S0 *l_788 = &l_789[0][6];
                        int32_t l_791 = (-1L);
                        int32_t *l_790[3][7][3] = {{{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791}},{{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791}},{{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791},{&l_791,&l_791,&l_791}}};
                        int i, j, k;
                        l_781 &= (l_598 &= (l_746[0] = l_780));
                        l_784--;
                        l_788 = (l_787 , (void*)0);
                        l_790[0][1][1] = (void*)0;
                    }
                }
                for (l_792[0][3] = 0; l_792[0][3] < 8; l_792[0][3] += 1)
                {
                    for (l_793 = 0; l_793 < 1; l_793 += 1)
                    {
                        for (l_794 = 0; l_794 < 5; l_794 += 1)
                        {
                            p_1308->g_287[l_792[0][3]][l_793][l_794] = &l_795;
                        }
                    }
                }
                l_746[2] = l_798;
            }
            l_805 = (l_799 , ((l_800 = l_800) , ((l_801 , l_802) , l_803)));
            if (l_806)
            { /* block id: 520 */
                int16_t l_807 = 0x13CFL;
                int32_t l_808 = 0x1813F4EAL;
                int64_t l_809 = 0x344399A01EF329DFL;
                int64_t l_826 = 0x48915A20920F8B0AL;
                uint32_t l_850 = 0UL;
                l_808 = (l_806 = ((l_598 = (l_746[0] |= l_807)) , 0L));
                if (l_809)
                { /* block id: 525 */
                    uint8_t l_810 = 0x89L;
                    l_746[2] = (l_810 , (l_806 ^= 0x28AC9FD7L));
                }
                else
                { /* block id: 528 */
                    int64_t l_811 = 0x6C8717134BF66A73L;
                    int32_t l_813 = 7L;
                    int32_t *l_812[2][5][4] = {{{(void*)0,&l_813,&l_813,&l_813},{(void*)0,&l_813,&l_813,&l_813},{(void*)0,&l_813,&l_813,&l_813},{(void*)0,&l_813,&l_813,&l_813},{(void*)0,&l_813,&l_813,&l_813}},{{(void*)0,&l_813,&l_813,&l_813},{(void*)0,&l_813,&l_813,&l_813},{(void*)0,&l_813,&l_813,&l_813},{(void*)0,&l_813,&l_813,&l_813},{(void*)0,&l_813,&l_813,&l_813}}};
                    int32_t *l_814 = &l_813;
                    int16_t l_815 = 1L;
                    int i, j, k;
                    l_808 |= (l_598 = (l_811 , 1L));
                    l_812[1][2][0] = (l_814 = l_812[1][2][0]);
                    if (l_815)
                    { /* block id: 533 */
                        struct S2 l_816[3][3] = {{{4294967290UL,0x8416L,0x1CCC0930D166048EL},{4294967290UL,0x8416L,0x1CCC0930D166048EL},{4294967290UL,0x8416L,0x1CCC0930D166048EL}},{{4294967290UL,0x8416L,0x1CCC0930D166048EL},{4294967290UL,0x8416L,0x1CCC0930D166048EL},{4294967290UL,0x8416L,0x1CCC0930D166048EL}},{{4294967290UL,0x8416L,0x1CCC0930D166048EL},{4294967290UL,0x8416L,0x1CCC0930D166048EL},{4294967290UL,0x8416L,0x1CCC0930D166048EL}}};
                        struct S2 l_817[8] = {{0x342F3FA2L,0UL,0x8A93EE1F98F9E421L},{4294967286UL,0xE1C8L,0x44D33714F4864D70L},{0x342F3FA2L,0UL,0x8A93EE1F98F9E421L},{0x342F3FA2L,0UL,0x8A93EE1F98F9E421L},{4294967286UL,0xE1C8L,0x44D33714F4864D70L},{0x342F3FA2L,0UL,0x8A93EE1F98F9E421L},{0x342F3FA2L,0UL,0x8A93EE1F98F9E421L},{4294967286UL,0xE1C8L,0x44D33714F4864D70L}};
                        int i, j;
                        l_817[6] = l_816[2][1];
                        l_803 = (l_805 = (void*)0);
                    }
                    else
                    { /* block id: 537 */
                        struct S0 l_818 = {1L,0x96B2L,0UL,-1L,0x7A4FL,0x07241C47L,0x3A6266EAL,0x0350296FC34286A2L,0x8BL};/* VOLATILE GLOBAL l_818 */
                        uint64_t l_819 = 0x81F75BFBAA8115CCL;
                        int64_t l_820 = 0x6D87B62233C62DFCL;
                        uint64_t l_821 = 0x89474210103D8518L;
                        int32_t l_823 = 9L;
                        int32_t *l_822 = &l_823;
                        uint32_t l_824 = 0UL;
                        int32_t *l_825 = &l_823;
                        l_821 &= ((l_818 , l_819) , l_820);
                        l_822 = (l_812[1][2][0] = l_822);
                        l_812[1][2][0] = (l_825 = (l_814 = (l_824 , (void*)0)));
                    }
                }
                if (l_826)
                { /* block id: 546 */
                    int32_t l_827 = 0x1B70B458L;
                    int16_t l_842[2];
                    int8_t l_843[6][9] = {{0x50L,0x50L,0x6CL,0x7FL,5L,0x2BL,0L,0x5DL,0L},{0x50L,0x50L,0x6CL,0x7FL,5L,0x2BL,0L,0x5DL,0L},{0x50L,0x50L,0x6CL,0x7FL,5L,0x2BL,0L,0x5DL,0L},{0x50L,0x50L,0x6CL,0x7FL,5L,0x2BL,0L,0x5DL,0L},{0x50L,0x50L,0x6CL,0x7FL,5L,0x2BL,0L,0x5DL,0L},{0x50L,0x50L,0x6CL,0x7FL,5L,0x2BL,0L,0x5DL,0L}};
                    int8_t l_844 = (-1L);
                    int32_t l_845 = 0x0F7B0951L;
                    struct S1 l_847[4][2][10] = {{{{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0x6CCBFA6BL,0x30E15FDB0C10007EL,0x23CEL,-10L,1UL,0x374931CEL,0xDE983C7CL,0xDCL,0x3E3163FEL,18446744073709551612UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL}},{{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0x6CCBFA6BL,0x30E15FDB0C10007EL,0x23CEL,-10L,1UL,0x374931CEL,0xDE983C7CL,0xDCL,0x3E3163FEL,18446744073709551612UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL}}},{{{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0x6CCBFA6BL,0x30E15FDB0C10007EL,0x23CEL,-10L,1UL,0x374931CEL,0xDE983C7CL,0xDCL,0x3E3163FEL,18446744073709551612UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL}},{{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0x6CCBFA6BL,0x30E15FDB0C10007EL,0x23CEL,-10L,1UL,0x374931CEL,0xDE983C7CL,0xDCL,0x3E3163FEL,18446744073709551612UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL}}},{{{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0x6CCBFA6BL,0x30E15FDB0C10007EL,0x23CEL,-10L,1UL,0x374931CEL,0xDE983C7CL,0xDCL,0x3E3163FEL,18446744073709551612UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL}},{{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0x6CCBFA6BL,0x30E15FDB0C10007EL,0x23CEL,-10L,1UL,0x374931CEL,0xDE983C7CL,0xDCL,0x3E3163FEL,18446744073709551612UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL}}},{{{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0x6CCBFA6BL,0x30E15FDB0C10007EL,0x23CEL,-10L,1UL,0x374931CEL,0xDE983C7CL,0xDCL,0x3E3163FEL,18446744073709551612UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL}},{{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0x6CCBFA6BL,0x30E15FDB0C10007EL,0x23CEL,-10L,1UL,0x374931CEL,0xDE983C7CL,0xDCL,0x3E3163FEL,18446744073709551612UL},{0x2D1D4EE3L,0x7588A7B2E5B40BB5L,7L,-10L,0x3947EF5193CC71E6L,0x110906E0L,6UL,0xB8L,-1L,0x8C79B90D7595D2DBL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL},{0x4A7F2549L,0x1FCCAE40CB3B1CE8L,2L,-9L,0x02011E975E4D38DEL,0x01F2AD53L,2UL,0x2DL,0x1C88E1A7L,0x6C47ACB09E3304FAL},{-1L,0xF8CBB3F347846831L,0x0EEDL,1L,0UL,0L,4294967289UL,0UL,8L,1UL},{0L,18446744073709551609UL,-1L,-4L,0x49976C8B03B0963DL,2L,0UL,255UL,0x29286976L,18446744073709551615UL}}}};
                    struct S1 *l_846[9][8] = {{&l_847[2][0][0],&l_847[1][1][4],&l_847[2][0][0],&l_847[2][0][0],(void*)0,&l_847[2][0][0],&l_847[2][0][0],&l_847[1][1][4]},{&l_847[2][0][0],&l_847[1][1][4],&l_847[2][0][0],&l_847[2][0][0],(void*)0,&l_847[2][0][0],&l_847[2][0][0],&l_847[1][1][4]},{&l_847[2][0][0],&l_847[1][1][4],&l_847[2][0][0],&l_847[2][0][0],(void*)0,&l_847[2][0][0],&l_847[2][0][0],&l_847[1][1][4]},{&l_847[2][0][0],&l_847[1][1][4],&l_847[2][0][0],&l_847[2][0][0],(void*)0,&l_847[2][0][0],&l_847[2][0][0],&l_847[1][1][4]},{&l_847[2][0][0],&l_847[1][1][4],&l_847[2][0][0],&l_847[2][0][0],(void*)0,&l_847[2][0][0],&l_847[2][0][0],&l_847[1][1][4]},{&l_847[2][0][0],&l_847[1][1][4],&l_847[2][0][0],&l_847[2][0][0],(void*)0,&l_847[2][0][0],&l_847[2][0][0],&l_847[1][1][4]},{&l_847[2][0][0],&l_847[1][1][4],&l_847[2][0][0],&l_847[2][0][0],(void*)0,&l_847[2][0][0],&l_847[2][0][0],&l_847[1][1][4]},{&l_847[2][0][0],&l_847[1][1][4],&l_847[2][0][0],&l_847[2][0][0],(void*)0,&l_847[2][0][0],&l_847[2][0][0],&l_847[1][1][4]},{&l_847[2][0][0],&l_847[1][1][4],&l_847[2][0][0],&l_847[2][0][0],(void*)0,&l_847[2][0][0],&l_847[2][0][0],&l_847[1][1][4]}};
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_842[i] = 0L;
                    for (l_827 = 0; (l_827 >= 0); l_827 -= 1)
                    { /* block id: 549 */
                        uint8_t l_828 = 0xA8L;
                        uint64_t l_831 = 8UL;
                        struct S2 l_834 = {0x1FA2ABB2L,65526UL,1UL};
                        int32_t l_835 = 0x5901F8C0L;
                        int32_t l_836 = 0x47E78705L;
                        int32_t l_837[2];
                        struct S2 l_838 = {0x723F2A90L,0UL,1UL};
                        struct S2 l_839 = {0x571B2F2EL,65535UL,0UL};
                        struct S0 l_841 = {0x237689DAL,65535UL,0x8DL,0L,1L,0UL,0x1A80EB4AL,0x9B14E9440F50507AL,247UL};/* VOLATILE GLOBAL l_841 */
                        struct S0 *l_840 = &l_841;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_837[i] = 0x156748AEL;
                        ++l_828;
                        --l_831;
                        l_840 = (l_834 , ((l_835 , (l_839 = ((l_836 , l_837[1]) , l_838))) , (void*)0));
                    }
                    l_808 ^= l_842[1];
                    l_746[2] &= (l_844 = (l_808 = (l_806 = (FAKE_DIVERGE(p_1308->group_1_offset, get_group_id(1), 10) , l_843[1][0]))));
                    l_805 = (l_803 = (l_845 , l_846[6][5]));
                }
                else
                { /* block id: 562 */
                    uint16_t l_848 = 65534UL;
                    int8_t l_849 = 0x4AL;
                    l_598 = (l_848 , l_849);
                }
                if ((l_746[2] = l_850))
                { /* block id: 566 */
                    int32_t l_851[2][8] = {{0x19A7AF56L,0x19A7AF56L,0x5114B9EFL,(-8L),(-4L),(-8L),0x5114B9EFL,0x19A7AF56L},{0x19A7AF56L,0x19A7AF56L,0x5114B9EFL,(-8L),(-4L),(-8L),0x5114B9EFL,0x19A7AF56L}};
                    int8_t l_867[10];
                    int i, j;
                    for (i = 0; i < 10; i++)
                        l_867[i] = 1L;
                    for (l_851[1][4] = 0; (l_851[1][4] > 4); l_851[1][4]++)
                    { /* block id: 569 */
                        uint32_t l_854 = 4294967295UL;
                        int32_t l_855 = 0x19EDB02DL;
                        uint64_t l_858 = 18446744073709551610UL;
                        struct S2 l_859 = {4294967295UL,0x60B0L,18446744073709551615UL};
                        struct S2 l_860 = {0xEB9EC567L,65526UL,0x6F3E07F86F54437CL};
                        struct S2 l_861 = {4294967295UL,0x9C0AL,7UL};
                        struct S2 l_862 = {2UL,0UL,0x14A9277D77D5BA72L};
                        int32_t *l_863 = (void*)0;
                        int32_t *l_864 = &l_855;
                        struct S2 *l_865 = &l_859;
                        struct S2 *l_866 = &l_862;
                        l_746[1] ^= l_854;
                        l_862 = ((l_855 , (l_854++)) , (l_858 , (l_861 = (l_860 = l_859))));
                        l_864 = (l_863 = (void*)0);
                        l_866 = l_865;
                    }
                    l_804.f8 = l_867[5];
                }
                else
                { /* block id: 580 */
                    int32_t l_868 = (-3L);
                    uint32_t l_874[4] = {4294967291UL,4294967291UL,4294967291UL,4294967291UL};
                    int32_t l_882 = 0x6E3C3D21L;
                    int i;
                    for (l_868 = 23; (l_868 != (-26)); l_868--)
                    { /* block id: 583 */
                        int32_t l_872 = 0x67897987L;
                        int32_t *l_871 = &l_872;
                        int32_t *l_873[10] = {&l_872,&l_872,&l_872,&l_872,&l_872,&l_872,&l_872,&l_872,&l_872,&l_872};
                        int i;
                        l_871 = (l_873[1] = l_871);
                    }
                    if (l_874[2])
                    { /* block id: 587 */
                        int32_t *l_875 = (void*)0;
                        int32_t l_877 = 0x4B0FB534L;
                        int32_t *l_876 = &l_877;
                        int32_t *l_878[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int32_t *l_879 = (void*)0;
                        int i;
                        l_876 = l_875;
                        l_879 = l_878[0];
                    }
                    else
                    { /* block id: 590 */
                        int32_t l_881 = 9L;
                        int32_t *l_880 = &l_881;
                        l_880 = (void*)0;
                    }
                    if ((l_746[1] = l_882))
                    { /* block id: 594 */
                        uint32_t l_883 = 3UL;
                        uint8_t l_884 = 8UL;
                        int32_t l_886 = (-1L);
                        int32_t *l_885 = &l_886;
                        uint32_t l_887 = 0xF06A1F5CL;
                        l_885 = ((l_883 , l_884) , (void*)0);
                        ++l_887;
                    }
                    else
                    { /* block id: 597 */
                        int32_t l_890 = 9L;
                        uint64_t l_891 = 0x3154B28D011A712AL;
                        int16_t l_892 = 0x6429L;
                        uint64_t l_893 = 1UL;
                        l_891 = (l_806 = l_890);
                        l_890 = l_892;
                        l_598 = l_893;
                    }
                }
            }
            else
            { /* block id: 604 */
                int64_t l_894 = (-1L);
                uint32_t l_895 = 4294967291UL;
                l_806 = l_894;
                l_895++;
                for (l_894 = 21; (l_894 >= (-30)); l_894 = safe_sub_func_int32_t_s_s(l_894, 8))
                { /* block id: 609 */
                    struct S2 l_900 = {4294967295UL,1UL,18446744073709551609UL};
                    struct S2 l_901 = {4294967295UL,0x900FL,0UL};
                    l_901 = l_900;
                    for (l_901.f1 = 0; (l_901.f1 <= 46); l_901.f1 = safe_add_func_uint64_t_u_u(l_901.f1, 5))
                    { /* block id: 613 */
                        union U3 l_904 = {0x17L};/* VOLATILE GLOBAL l_904 */
                        uint32_t l_905 = 0x44D60220L;
                        l_598 &= (l_904 , (l_806 = l_905));
                        l_746[1] = (-1L);
                        l_598 &= (-1L);
                    }
                }
            }
        }
        else
        { /* block id: 621 */
            int32_t l_906 = 0x07699815L;
            for (l_906 = 0; (l_906 <= 8); l_906 += 1)
            { /* block id: 624 */
                int32_t l_907 = 0L;
                for (l_907 = 3; (l_907 >= 0); l_907 -= 1)
                { /* block id: 627 */
                    uint16_t l_908 = 1UL;
                    if (l_908)
                    { /* block id: 628 */
                        l_746[2] = 0x314FB9ACL;
                    }
                    else
                    { /* block id: 630 */
                        struct S1 l_909 = {0x756AB8D1L,0x8C4A1D55A74E2599L,2L,1L,0xAE6B98CB4BE79108L,0x623EE63CL,1UL,0UL,4L,18446744073709551615UL};/* VOLATILE GLOBAL l_909 */
                        int16_t l_910 = 0x443BL;
                        uint8_t l_911 = 255UL;
                        union U5 l_913[3][10][2] = {{{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}}},{{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}}},{{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}}}};
                        union U5 *l_912[7] = {&l_913[1][3][1],&l_913[1][3][1],&l_913[1][3][1],&l_913[1][3][1],&l_913[1][3][1],&l_913[1][3][1],&l_913[1][3][1]};
                        int i, j, k;
                        l_598 ^= (l_911 = (l_909 , l_910));
                        l_912[6] = (void*)0;
                    }
                    for (l_908 = 0; (l_908 <= 3); l_908 += 1)
                    { /* block id: 637 */
                        struct S2 l_914 = {0x6F73177DL,0x93D2L,18446744073709551615UL};
                        struct S2 l_915[9][7] = {{{0xCED58C2CL,1UL,0xEC6B64D46E378850L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{1UL,0xF13BL,0UL},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{1UL,0xF13BL,0UL}},{{0xCED58C2CL,1UL,0xEC6B64D46E378850L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{1UL,0xF13BL,0UL},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{1UL,0xF13BL,0UL}},{{0xCED58C2CL,1UL,0xEC6B64D46E378850L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{1UL,0xF13BL,0UL},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{1UL,0xF13BL,0UL}},{{0xCED58C2CL,1UL,0xEC6B64D46E378850L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{1UL,0xF13BL,0UL},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{1UL,0xF13BL,0UL}},{{0xCED58C2CL,1UL,0xEC6B64D46E378850L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{1UL,0xF13BL,0UL},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{1UL,0xF13BL,0UL}},{{0xCED58C2CL,1UL,0xEC6B64D46E378850L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{1UL,0xF13BL,0UL},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{1UL,0xF13BL,0UL}},{{0xCED58C2CL,1UL,0xEC6B64D46E378850L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{1UL,0xF13BL,0UL},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{1UL,0xF13BL,0UL}},{{0xCED58C2CL,1UL,0xEC6B64D46E378850L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{1UL,0xF13BL,0UL},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{1UL,0xF13BL,0UL}},{{0xCED58C2CL,1UL,0xEC6B64D46E378850L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{1UL,0xF13BL,0UL},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{0x35335138L,0x5119L,0x7533DE22D1B834F8L},{0xC9273E9DL,0x4BFFL,0x91D5D10DBD320326L},{1UL,0xF13BL,0UL}}};
                        int i, j;
                        l_915[1][2] = l_914;
                    }
                }
                for (l_907 = 0; (l_907 <= 8); l_907 += 1)
                { /* block id: 643 */
                    int32_t l_917 = 0x50C6CEA8L;
                    int32_t *l_916 = &l_917;
                    int32_t *l_918 = &l_917;
                    l_918 = l_916;
                }
            }
        }
        for (l_746[0] = 0; (l_746[0] >= 27); ++l_746[0])
        { /* block id: 650 */
            int32_t l_921[5];
            int32_t *l_926 = &l_921[0];
            int32_t *l_927 = &l_921[3];
            int i;
            for (i = 0; i < 5; i++)
                l_921[i] = 0L;
            for (l_921[2] = 0; (l_921[2] == (-6)); l_921[2]--)
            { /* block id: 653 */
                int16_t l_924[5];
                int64_t l_925 = 0L;
                int i;
                for (i = 0; i < 5; i++)
                    l_924[i] = 0x12ADL;
                l_925 = ((l_924[3] ^= 0L) , 0x2EF1E620L);
            }
            l_926 = (l_927 = l_926);
            l_598 = 0x43F2E7BCL;
        }
        unsigned int result = 0;
        result += l_598;
        result += l_745;
        int l_746_i0;
        for (l_746_i0 = 0; l_746_i0 < 3; l_746_i0++) {
            result += l_746[l_746_i0];
        }
        result += l_747;
        atomic_add(&p_1308->g_special_values[30 * get_linear_group_id() + 9], result);
    }
    else
    { /* block id: 661 */
        (1 + 1);
    }
    for (p_1308->g_120.f0 = 0; (p_1308->g_120.f0 <= 8); p_1308->g_120.f0 += 1)
    { /* block id: 666 */
        int32_t l_928[3][7] = {{0x56B64262L,9L,0x43D537E6L,9L,0x56B64262L,0x56B64262L,9L},{0x56B64262L,9L,0x43D537E6L,9L,0x56B64262L,0x56B64262L,9L},{0x56B64262L,9L,0x43D537E6L,9L,0x56B64262L,0x56B64262L,9L}};
        int32_t **l_935 = &p_1308->g_374;
        int64_t *l_963 = &l_930;
        uint64_t l_975 = 0xD771052C37AB0D27L;
        struct S2 *l_989 = &p_1308->g_272[1][5][1];
        struct S2 **l_988[1][9][9] = {{{&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989},{&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989},{&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989},{&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989},{&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989},{&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989},{&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989},{&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989},{&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989}}};
        union U5 l_1001 = {0};
        uint32_t l_1024 = 8UL;
        int i, j, k;
        if (p_1308->g_190[p_1308->g_120.f0])
        { /* block id: 667 */
            int32_t *l_929[4][5] = {{(void*)0,&l_928[0][5],(void*)0,(void*)0,&l_928[0][5]},{(void*)0,&l_928[0][5],(void*)0,(void*)0,&l_928[0][5]},{(void*)0,&l_928[0][5],(void*)0,(void*)0,&l_928[0][5]},{(void*)0,&l_928[0][5],(void*)0,(void*)0,&l_928[0][5]}};
            uint32_t l_932 = 2UL;
            int i, j;
            ++l_932;
            (*p_1308->g_936) = l_935;
        }
        else
        { /* block id: 670 */
            int32_t *l_937 = &p_1308->g_218[0][1][0];
            uint64_t l_958 = 18446744073709551615UL;
            l_938 = ((*p_1308->g_505) = l_937);
            for (p_1308->g_66.f7 = 0; (p_1308->g_66.f7 <= 5); p_1308->g_66.f7 += 1)
            { /* block id: 675 */
                uint16_t *l_956 = &p_1308->g_120.f1;
                uint64_t *l_957 = &p_1308->g_62;
                uint64_t *l_959[7][7] = {{&p_1308->g_66.f7,&p_1308->g_442.f1,&p_1308->g_442.f9,&p_1308->g_66.f7,&p_1308->g_442.f1,&p_1308->g_442.f9,&p_1308->g_442.f9},{&p_1308->g_66.f7,&p_1308->g_442.f1,&p_1308->g_442.f9,&p_1308->g_66.f7,&p_1308->g_442.f1,&p_1308->g_442.f9,&p_1308->g_442.f9},{&p_1308->g_66.f7,&p_1308->g_442.f1,&p_1308->g_442.f9,&p_1308->g_66.f7,&p_1308->g_442.f1,&p_1308->g_442.f9,&p_1308->g_442.f9},{&p_1308->g_66.f7,&p_1308->g_442.f1,&p_1308->g_442.f9,&p_1308->g_66.f7,&p_1308->g_442.f1,&p_1308->g_442.f9,&p_1308->g_442.f9},{&p_1308->g_66.f7,&p_1308->g_442.f1,&p_1308->g_442.f9,&p_1308->g_66.f7,&p_1308->g_442.f1,&p_1308->g_442.f9,&p_1308->g_442.f9},{&p_1308->g_66.f7,&p_1308->g_442.f1,&p_1308->g_442.f9,&p_1308->g_66.f7,&p_1308->g_442.f1,&p_1308->g_442.f9,&p_1308->g_442.f9},{&p_1308->g_66.f7,&p_1308->g_442.f1,&p_1308->g_442.f9,&p_1308->g_66.f7,&p_1308->g_442.f1,&p_1308->g_442.f9,&p_1308->g_442.f9}};
                int16_t l_960 = 0x1B3AL;
                int i, j;
                (*p_1308->g_439) = ((((safe_mod_func_uint8_t_u_u(((safe_mod_func_int16_t_s_s(((p_1308->g_442.f1 ^= ((~(p_16 | (((GROUP_DIVERGE(1, 1) , p_15) | ((safe_mul_func_uint8_t_u_u((1L >= (!(p_13 && (*l_938)))), ((*p_12) = (p_1308->g_190[(p_1308->g_66.f7 + 4)] = (safe_sub_func_uint32_t_u_u((safe_add_func_uint64_t_u_u((safe_mod_func_uint8_t_u_u((((*l_957) = (safe_rshift_func_int8_t_s_u(((((*l_956) &= (p_1308->g_953 , (((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1308->local_2_offset, get_local_id(2), 10), 6)) && ((p_1308->g_158.f0 != p_13) | p_13)) && (*p_12)))) ^ GROUP_DIVERGE(2, 1)) , (*l_938)), 3))) , 246UL), FAKE_DIVERGE(p_1308->local_2_offset, get_local_id(2), 10))), (-1L))), (**p_1308->g_505))))))) & l_958)) & p_15))) >= 2L)) <= l_960), l_960)) < p_14), p_16)) | p_1308->g_285) , (-5L)) , (*p_1308->g_441));
                return p_15;
            }
        }
        (*l_938) ^= (-4L);
        for (p_1308->g_120.f1 = 2; (p_1308->g_120.f1 <= 8); p_1308->g_120.f1 += 1)
        { /* block id: 688 */
            if ((*l_938))
                break;
            (*l_938) = p_13;
        }
        for (p_1308->g_953.f5 = 3; (p_1308->g_953.f5 <= 8); p_1308->g_953.f5 += 1)
        { /* block id: 694 */
            uint8_t *l_966 = &p_1308->g_107;
            int32_t l_973 = 0L;
            int32_t *l_1028 = &l_973;
            int32_t *l_1029[2];
            uint32_t l_1030 = 0UL;
            int i;
            for (i = 0; i < 2; i++)
                l_1029[i] = &p_1308->g_77;
            if ((safe_sub_func_int32_t_s_s(((*l_938) = ((&l_930 != l_963) != ((safe_add_func_uint8_t_u_u(p_14, (((*l_966) |= p_1308->g_312.f0) != (safe_sub_func_int64_t_s_s((GROUP_DIVERGE(2, 1) == ((safe_rshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_u(l_973, 0)), 1)) <= 4294967289UL)), ((p_1308->g_480.f8 , 0L) || (&p_1308->g_489[p_1308->g_120.f0] == l_974))))))) , 0x3E14CD65DE35AE23L))), l_975)))
            { /* block id: 697 */
                uint16_t l_990 = 0xBEE8L;
                for (p_16 = 0; (p_16 <= 1); p_16 += 1)
                { /* block id: 700 */
                    for (l_975 = 0; (l_975 <= 1); l_975 += 1)
                    { /* block id: 703 */
                        struct S2 *l_987 = (void*)0;
                        struct S2 **l_986[3][7] = {{&l_987,&l_987,&l_987,&l_987,&l_987,&l_987,&l_987},{&l_987,&l_987,&l_987,&l_987,&l_987,&l_987,&l_987},{&l_987,&l_987,&l_987,&l_987,&l_987,&l_987,&l_987}};
                        struct S2 ***l_985 = &l_986[2][4];
                        int i, j;
                        l_993[4][2][1] ^= ((((p_1308->g_976 == (void*)0) & ((safe_rshift_func_uint16_t_u_u(0x6F29L, (safe_mod_func_uint16_t_u_u(((0xC977B7ABL != ((safe_lshift_func_int16_t_s_u((0x3CEEL != (safe_add_func_int64_t_s_s(p_13, ((((*l_985) = (void*)0) == l_988[0][3][2]) < (((l_990 | (*p_12)) ^ l_973) || p_13))))), GROUP_DIVERGE(2, 1))) != (*l_938))) || 4294967295UL), (*l_938))))) == 0x2F0E0BFAL)) , l_991) != (void*)0);
                    }
                }
                (*l_938) ^= (safe_lshift_func_uint16_t_u_u(p_1308->g_489[p_1308->g_120.f0].f0, 10));
                for (p_1308->g_312.f0 = 0; (p_1308->g_312.f0 <= 8); p_1308->g_312.f0 += 1)
                { /* block id: 711 */
                    if ((*l_938))
                        break;
                }
                if ((atomic_inc(&p_1308->l_atomic_input[7]) == 1))
                { /* block id: 715 */
                    uint32_t l_996 = 0UL;
                    l_996 |= 0x59C7FD61L;
                    unsigned int result = 0;
                    result += l_996;
                    atomic_add(&p_1308->l_special_values[7], result);
                }
                else
                { /* block id: 717 */
                    (1 + 1);
                }
            }
            else
            { /* block id: 720 */
                uint64_t *l_1025 = &p_1308->g_300.f1;
                int32_t l_1026 = 5L;
                for (p_1308->g_953.f2 = 1; (p_1308->g_953.f2 <= 8); p_1308->g_953.f2 += 1)
                { /* block id: 723 */
                    uint32_t l_1027[8][10] = {{7UL,0xD0E43CD4L,1UL,4294967288UL,0x2841DF25L,0xA01BD72CL,0xF40093C3L,0x4C23E8EFL,6UL,0x7D9288DAL},{7UL,0xD0E43CD4L,1UL,4294967288UL,0x2841DF25L,0xA01BD72CL,0xF40093C3L,0x4C23E8EFL,6UL,0x7D9288DAL},{7UL,0xD0E43CD4L,1UL,4294967288UL,0x2841DF25L,0xA01BD72CL,0xF40093C3L,0x4C23E8EFL,6UL,0x7D9288DAL},{7UL,0xD0E43CD4L,1UL,4294967288UL,0x2841DF25L,0xA01BD72CL,0xF40093C3L,0x4C23E8EFL,6UL,0x7D9288DAL},{7UL,0xD0E43CD4L,1UL,4294967288UL,0x2841DF25L,0xA01BD72CL,0xF40093C3L,0x4C23E8EFL,6UL,0x7D9288DAL},{7UL,0xD0E43CD4L,1UL,4294967288UL,0x2841DF25L,0xA01BD72CL,0xF40093C3L,0x4C23E8EFL,6UL,0x7D9288DAL},{7UL,0xD0E43CD4L,1UL,4294967288UL,0x2841DF25L,0xA01BD72CL,0xF40093C3L,0x4C23E8EFL,6UL,0x7D9288DAL},{7UL,0xD0E43CD4L,1UL,4294967288UL,0x2841DF25L,0xA01BD72CL,0xF40093C3L,0x4C23E8EFL,6UL,0x7D9288DAL}};
                    int i, j;
                    for (p_1308->g_66.f3 = 7; (p_1308->g_66.f3 >= 0); p_1308->g_66.f3 -= 1)
                    { /* block id: 726 */
                        l_973 ^= (p_1308->g_300.f0 & (&p_1308->g_505 == &p_1308->g_505));
                    }
                    if (p_13)
                        continue;
                    l_1027[3][2] = ((p_15 < 65535UL) && (safe_rshift_func_uint16_t_u_s(((p_14 & (l_1001 , (safe_lshift_func_uint16_t_u_s((FAKE_DIVERGE(p_1308->global_2_offset, get_global_id(2), 10) > (((safe_unary_minus_func_int8_t_s(((safe_add_func_uint8_t_u_u(((*l_966) = (l_973 = ((*l_938) != ((safe_rshift_func_int16_t_s_u(((safe_mul_func_int16_t_s_s(p_13, (safe_sub_func_int64_t_s_s((((safe_mod_func_int16_t_s_s((-1L), (safe_rshift_func_uint16_t_u_s((safe_div_func_uint16_t_u_u((l_1019 != ((safe_rshift_func_uint16_t_u_u((((safe_add_func_int8_t_s_s((0x37L > 0x7DL), (*p_12))) , p_13) & (-10L)), p_16)) , &p_1308->g_439)), l_1024)), p_1308->g_480.f5)))) , (void*)0) != l_1025), l_1026)))) && p_1308->g_66.f1), 11)) >= l_973)))), p_14)) <= p_16))) , FAKE_DIVERGE(p_1308->global_1_offset, get_global_id(1), 10)) >= FAKE_DIVERGE(p_1308->group_1_offset, get_group_id(1), 10))), 6)))) && 255UL), 8)));
                }
            }
            ++l_1030;
        }
    }
    (*p_1308->g_505) = &l_931;
    return l_1052;
}


/* ------------------------------------------ */
/* 
 * reads : p_1308->g_395 p_1308->g_66.f4 p_1308->g_272 p_1308->g_66.f7 p_1308->g_22 p_1308->g_400 p_1308->g_378 p_1308->g_375 p_1308->g_120.f1 p_1308->g_166.f7 p_1308->g_165 p_1308->g_77 p_1308->g_432 p_1308->g_438 p_1308->g_440 p_1308->g_442.f2 p_1308->g_218 p_1308->g_376 p_1308->g_3 p_1308->g_442.f3 p_1308->g_479 p_1308->g_480 p_1308->g_489 p_1308->g_300.f3 p_1308->g_120.f0 p_1308->g_243 p_1308->g_374 p_1308->g_442.f5 p_1308->g_492 p_1308->g_249 p_1308->g_300.f0 p_1308->g_504 p_1308->g_300.f5 p_1308->g_505 p_1308->g_441 p_1308->g_541 p_1308->g_136 p_1308->g_120.f7 p_1308->g_227 p_1308->g_166.f5 p_1308->g_66.f2 p_1308->g_120.f2 p_1308->g_593
 * writes: p_1308->g_384 p_1308->g_374 p_1308->g_376 p_1308->g_120.f1 p_1308->g_66.f1 p_1308->g_66.f5 p_1308->g_62 p_1308->g_77 p_1308->g_432 p_1308->g_272 p_1308->g_440 p_1308->g_285 p_1308->g_218 p_1308->g_442.f3 p_1308->g_300.f3 p_1308->g_120.f0 p_1308->g_481 p_1308->g_22 p_1308->g_442.f5 p_1308->g_66.f3 p_1308->g_249 p_1308->g_441 p_1308->g_120.f3 p_1308->g_166.f5 p_1308->g_312.f0
 */
int8_t * func_17(int8_t * p_18, int32_t  p_19, uint64_t  p_20, struct S6 * p_1308)
{ /* block id: 175 */
    int8_t l_380 = 0x26L;
    uint64_t *l_381 = (void*)0;
    struct S2 *l_382 = &p_1308->g_272[0][6][0];
    uint32_t *l_383 = &p_1308->g_384;
    int64_t ***l_385 = &p_1308->g_217[2];
    int64_t ****l_386 = &l_385;
    uint16_t l_388 = 0xB382L;
    uint16_t l_399 = 65535UL;
    int32_t l_419 = 0x053C6841L;
    struct S1 **l_485 = &p_1308->g_441;
    int32_t *l_488 = &p_1308->g_3;
    int32_t l_525 = 0x562377FDL;
    int32_t l_532 = 0x1ED1A0BCL;
    int32_t l_533 = (-3L);
    int8_t *l_545 = &p_1308->g_22[0];
    int8_t **l_544 = &l_545;
    volatile struct S2 * volatile * volatile l_596[2];
    int i;
    for (i = 0; i < 2; i++)
        l_596[i] = &p_1308->g_594;
    if ((((*l_383) = ((l_380 |= 0x5F126BD788C188BEL) > (((void*)0 == l_381) && (l_382 != (p_20 , l_382))))) , (((*l_386) = l_385) != (void*)0)))
    { /* block id: 179 */
        uint16_t l_387 = 0x85DBL;
        int32_t *l_404 = (void*)0;
        int8_t *l_412 = &p_1308->g_190[7];
        int8_t **l_411 = &l_412;
        l_387 = p_19;
        if (((p_20 & (l_388 | (safe_add_func_uint32_t_u_u((((~(((safe_div_func_int8_t_s_s((safe_div_func_uint16_t_u_u((((0L >= (p_1308->g_395 , p_1308->g_66.f4)) & ((((+(safe_unary_minus_func_uint16_t_u((safe_div_func_int64_t_s_s(((*l_382) , (p_1308->g_66.f7 >= l_387)), 0xE8E13BC2A8D072CAL))))) != (*p_18)) && 0x2BL) ^ l_388)) & 0x08L), p_19)), 0x07L)) ^ l_387) & l_399)) > p_20) <= GROUP_DIVERGE(2, 1)), 0x9D6B01C9L)))) , l_399))
        { /* block id: 181 */
            struct S1 *l_402 = (void*)0;
            struct S1 **l_401 = &l_402;
            int32_t **l_403[10][3][6] = {{{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376}},{{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376}},{{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376}},{{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376}},{{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376}},{{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376}},{{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376}},{{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376}},{{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376}},{{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376},{&p_1308->g_376,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376,&p_1308->g_374,&p_1308->g_376}}};
            int i, j, k;
            (*l_401) = (p_1308->g_400 , &p_1308->g_300);
            (*p_1308->g_375) = ((*p_1308->g_378) = (l_404 = (void*)0));
            for (p_1308->g_120.f1 = (-13); (p_1308->g_120.f1 <= 46); p_1308->g_120.f1 = safe_add_func_uint64_t_u_u(p_1308->g_120.f1, 2))
            { /* block id: 188 */
                uint8_t l_420 = 247UL;
                int32_t l_426[10] = {(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L)};
                struct S2 l_435 = {0UL,6UL,0x840EFFD0A315EDF7L};
                int i;
                for (p_1308->g_66.f1 = (-9); (p_1308->g_66.f1 >= 37); p_1308->g_66.f1 = safe_add_func_int8_t_s_s(p_1308->g_66.f1, 8))
                { /* block id: 191 */
                    int64_t *l_421 = &p_1308->g_273[5][4];
                    int32_t l_422 = (-7L);
                    for (p_1308->g_66.f5 = 0; (p_1308->g_66.f5 <= 9); p_1308->g_66.f5 += 1)
                    { /* block id: 194 */
                        l_422 = (safe_rshift_func_uint16_t_u_s((((FAKE_DIVERGE(p_1308->global_2_offset, get_global_id(2), 10) , (&p_18 != l_411)) && (safe_rshift_func_uint8_t_u_s((FAKE_DIVERGE(p_1308->local_2_offset, get_local_id(2), 10) | (-10L)), 1))) || (safe_sub_func_int64_t_s_s(((((((l_419 &= p_19) || (l_420 , (p_1308->g_166[8].f7 > (*p_18)))) > ((p_19 , l_421) == (void*)0)) | (*p_18)) < 255UL) == 0x1E47L), 0UL))), 10));
                        return p_18;
                    }
                }
                for (p_1308->g_62 = 9; (p_1308->g_62 < 53); ++p_1308->g_62)
                { /* block id: 202 */
                    uint32_t l_425 = 0xBDD8C9C1L;
                    int32_t l_427 = 0x46324CF9L;
                    int32_t l_428 = 1L;
                    int32_t l_429 = 0x42FE3C10L;
                    int32_t l_431[6] = {0L,0L,0L,0L,0L,0L};
                    int i;
                    (*p_1308->g_165) ^= l_425;
                    for (p_1308->g_66.f1 = 0; (p_1308->g_66.f1 <= 2); p_1308->g_66.f1 += 1)
                    { /* block id: 206 */
                        int32_t l_430 = 0x04BC34CBL;
                        int i, j, k;
                        p_1308->g_432++;
                    }
                }
                (*l_382) = l_435;
                (*p_1308->g_378) = &l_419;
            }
        }
        else
        { /* block id: 213 */
            struct S1 ***l_443 = &p_1308->g_440;
            int32_t l_444 = (-5L);
            l_444 = ((safe_lshift_func_int8_t_s_u((p_1308->g_438[2] != ((*l_443) = p_1308->g_440)), 0)) , ((void*)0 != l_412));
        }
        for (p_1308->g_120.f1 = 18; (p_1308->g_120.f1 <= 58); p_1308->g_120.f1 = safe_add_func_uint16_t_u_u(p_1308->g_120.f1, 2))
        { /* block id: 219 */
            int32_t **l_455 = &l_404;
            int32_t ***l_456 = &l_455;
            uint16_t *l_457[10][2][7] = {{{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285},{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285}},{{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285},{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285}},{{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285},{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285}},{{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285},{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285}},{{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285},{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285}},{{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285},{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285}},{{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285},{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285}},{{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285},{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285}},{{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285},{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285}},{{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285},{&p_1308->g_66.f1,&p_1308->g_66.f1,&p_1308->g_285,&p_1308->g_66.f1,&l_388,&p_1308->g_66.f1,&p_1308->g_285}}};
            int32_t *l_458 = &p_1308->g_218[3][1][0];
            struct S2 l_459 = {0x23D38508L,65528UL,18446744073709551613UL};
            int i, j, k;
            (*l_458) |= (safe_mul_func_int16_t_s_s(p_1308->g_272[0][6][0].f0, ((safe_mod_func_uint8_t_u_u((safe_sub_func_int16_t_s_s((-1L), (((p_1308->g_285 = ((GROUP_DIVERGE(2, 1) <= (safe_rshift_func_int8_t_s_u((*p_18), (l_419 <= 1L)))) == (((*l_456) = l_455) == &p_1308->g_374))) & (((p_18 != p_18) != p_1308->g_442.f2) == l_388)) <= (-7L)))), 0x5FL)) <= 1UL)));
            (*l_382) = l_459;
        }
    }
    else
    { /* block id: 225 */
        uint16_t l_465 = 65526UL;
        int32_t l_471 = 0x302927BBL;
        int32_t *l_472 = &p_1308->g_218[0][1][0];
        for (p_1308->g_77 = 0; (p_1308->g_77 < (-25)); p_1308->g_77--)
        { /* block id: 228 */
            int32_t *l_462 = &l_419;
            int32_t *l_463 = (void*)0;
            int32_t *l_464 = &l_419;
            int64_t *l_470 = (void*)0;
            ++l_465;
            l_471 |= ((*l_464) &= (safe_lshift_func_int8_t_s_u((l_470 == (void*)0), 7)));
        }
        (*l_472) = (*p_1308->g_376);
        for (p_20 = 0; (p_20 < 11); p_20 = safe_add_func_int32_t_s_s(p_20, 2))
        { /* block id: 236 */
            for (p_1308->g_442.f3 = 24; (p_1308->g_442.f3 < 11); p_1308->g_442.f3--)
            { /* block id: 239 */
                if ((*l_472))
                    break;
            }
        }
    }
    (*l_382) = p_1308->g_272[0][0][0];
    for (l_399 = 0; (l_399 != 36); l_399++)
    { /* block id: 247 */
        struct S1 **l_486 = &p_1308->g_441;
        int32_t l_487[1][9] = {{(-1L),8L,(-1L),(-1L),8L,(-1L),(-1L),8L,(-1L)}};
        uint16_t l_506 = 0xA418L;
        int16_t l_514 = 8L;
        uint16_t l_516 = 1UL;
        uint64_t l_564 = 0xEED84E7355BADEE9L;
        int32_t **l_591 = &p_1308->g_376;
        int i, j;
        for (p_1308->g_300.f3 = 0; (p_1308->g_300.f3 <= 2); p_1308->g_300.f3 += 1)
        { /* block id: 250 */
            int32_t l_482 = 0x1497B9F4L;
            int32_t **l_503 = (void*)0;
            int32_t ***l_502 = &l_503;
            int32_t *l_519 = &p_1308->g_218[3][1][0];
            int32_t *l_520 = &l_487[0][7];
            int32_t *l_521 = (void*)0;
            int32_t *l_522 = &p_1308->g_77;
            int32_t *l_523 = &p_1308->g_218[4][0][0];
            int32_t *l_524 = &l_487[0][7];
            int32_t *l_526 = (void*)0;
            int32_t *l_527 = (void*)0;
            int32_t l_528 = 0x4FB529AAL;
            int32_t *l_529 = &l_487[0][0];
            int32_t *l_530 = &l_487[0][7];
            int32_t *l_531[4];
            uint32_t l_534 = 4294967295UL;
            int i;
            for (i = 0; i < 4; i++)
                l_531[i] = &l_419;
            for (p_1308->g_120.f0 = 0; (p_1308->g_120.f0 <= 2); p_1308->g_120.f0 += 1)
            { /* block id: 253 */
                (*p_1308->g_479) = &l_419;
                for (p_19 = 0; (p_19 <= 2); p_19 += 1)
                { /* block id: 257 */
                    int32_t **l_490 = &p_1308->g_374;
                    int i, j, k;
                    p_1308->g_481 = p_1308->g_480;
                    if (l_388)
                        continue;
                    if (l_482)
                        break;
                    (*p_1308->g_492) = ((l_482 = (((safe_rshift_func_int8_t_s_s(((p_1308->g_442.f5 ^= ((+(l_485 == l_486)) , (((*p_18) = ((l_487[0][7] , l_488) != ((*l_490) = (p_1308->g_489[3] , (p_19 , (p_1308->g_243[p_1308->g_300.f3][(p_19 + 1)][p_1308->g_120.f0] , (*p_1308->g_378))))))) || (*p_18)))) , (**l_490)), (*l_488))) != p_20) & 0x1AL)) & p_19);
                }
                l_487[0][0] |= ((*p_1308->g_374) = 0L);
                for (p_1308->g_66.f3 = 2; (p_1308->g_66.f3 >= 0); p_1308->g_66.f3 -= 1)
                { /* block id: 272 */
                    int16_t *l_501 = &p_1308->g_249;
                    (*p_1308->g_374) = (*p_1308->g_492);
                    (**p_1308->g_505) = (1L <= (safe_mod_func_int8_t_s_s((((safe_div_func_int16_t_s_s((((p_19 <= (((safe_div_func_uint8_t_u_u(1UL, (safe_lshift_func_int16_t_s_s((*l_488), 11)))) ^ (p_19 != l_482)) <= ((*l_501) &= p_1308->g_442.f2))) || (p_1308->g_300.f0 ^ FAKE_DIVERGE(p_1308->group_0_offset, get_group_id(0), 10))) & ((l_502 != p_1308->g_504[4]) < 0x4BL)), p_1308->g_300.f5)) , p_20) , (-4L)), p_1308->g_120.f0)));
                }
            }
            for (p_1308->g_442.f3 = 0; (p_1308->g_442.f3 <= 2); p_1308->g_442.f3 += 1)
            { /* block id: 280 */
                int32_t *l_507 = &l_419;
                int32_t *l_508 = &p_1308->g_218[3][1][0];
                int32_t *l_509 = &p_1308->g_218[1][1][0];
                int32_t *l_510 = &l_487[0][7];
                int32_t *l_511 = &p_1308->g_218[3][1][0];
                int32_t *l_512 = &l_487[0][7];
                int32_t *l_513 = &p_1308->g_218[0][1][0];
                int32_t *l_515 = &p_1308->g_218[0][0][0];
                l_506 ^= (l_487[0][7] = 9L);
                (*l_485) = (*l_486);
                --l_516;
                if (p_19)
                    break;
            }
            ++l_534;
            for (p_1308->g_62 = 0; (p_1308->g_62 <= 2); p_1308->g_62 += 1)
            { /* block id: 290 */
                int32_t *l_537 = &l_487[0][7];
                (*p_1308->g_505) = l_537;
                for (p_1308->g_120.f3 = 2; (p_1308->g_120.f3 >= 0); p_1308->g_120.f3 -= 1)
                { /* block id: 294 */
                    if (p_19)
                        break;
                }
                if ((*p_1308->g_165))
                    continue;
            }
        }
        for (p_1308->g_120.f1 = 0; (p_1308->g_120.f1 <= 2); p_1308->g_120.f1 += 1)
        { /* block id: 302 */
            int8_t **l_563[10][4] = {{&l_545,&l_545,&l_545,&l_545},{&l_545,&l_545,&l_545,&l_545},{&l_545,&l_545,&l_545,&l_545},{&l_545,&l_545,&l_545,&l_545},{&l_545,&l_545,&l_545,&l_545},{&l_545,&l_545,&l_545,&l_545},{&l_545,&l_545,&l_545,&l_545},{&l_545,&l_545,&l_545,&l_545},{&l_545,&l_545,&l_545,&l_545},{&l_545,&l_545,&l_545,&l_545}};
            int i, j;
            for (p_1308->g_300.f3 = 0; (p_1308->g_300.f3 <= 2); p_1308->g_300.f3 += 1)
            { /* block id: 305 */
                int32_t *l_538 = &l_533;
                uint16_t *l_546 = &l_388;
                (*p_1308->g_505) = l_538;
                if ((safe_mul_func_int16_t_s_s(l_506, (p_1308->g_541 , (safe_lshift_func_uint16_t_u_s(((*l_546) = (((p_19 , FAKE_DIVERGE(p_1308->local_2_offset, get_local_id(2), 10)) , (void*)0) != l_544)), 15))))))
                { /* block id: 308 */
                    int32_t l_551[4] = {5L,5L,5L,5L};
                    uint32_t *l_565[8][2][5] = {{{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5},{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5}},{{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5},{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5}},{{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5},{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5}},{{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5},{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5}},{{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5},{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5}},{{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5},{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5}},{{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5},{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5}},{{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5},{(void*)0,&p_1308->g_120.f5,(void*)0,(void*)0,&p_1308->g_120.f5}}};
                    int i, j, k;
                    (**p_1308->g_505) = (((p_19 , (safe_div_func_uint64_t_u_u((((p_1308->g_166[8].f5 |= (safe_rshift_func_uint16_t_u_u((l_551[3] & (*l_538)), (((l_525 = ((*l_545) = (safe_add_func_int8_t_s_s((*p_18), (((safe_mul_func_uint16_t_u_u((((p_1308->g_136 >= (safe_unary_minus_func_uint8_t_u((safe_rshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u(p_1308->g_480.f5, l_551[3])), (safe_sub_func_uint32_t_u_u(p_1308->g_120.f7, ((((void*)0 == l_563[3][0]) , p_1308->g_227) == (void*)0)))))))) == (*l_538)) > p_19), 0x1CA3L)) & l_516) , 0x11L))))) > l_516) < l_564)))) != (*l_488)) , l_551[3]), p_20))) > p_19) , p_19);
                }
                else
                { /* block id: 313 */
                    if ((atomic_inc(&p_1308->l_atomic_input[8]) == 5))
                    { /* block id: 315 */
                        int32_t l_567 = 0x4DD981EAL;
                        int32_t *l_566 = &l_567;
                        int16_t l_570[2];
                        int16_t *l_569[5] = {&l_570[0],&l_570[0],&l_570[0],&l_570[0],&l_570[0]};
                        int16_t **l_568 = &l_569[1];
                        int32_t *l_571 = (void*)0;
                        int32_t *l_572 = &l_567;
                        union U5 l_574[7][2][3] = {{{{0},{0},{0}},{{0},{0},{0}}},{{{0},{0},{0}},{{0},{0},{0}}},{{{0},{0},{0}},{{0},{0},{0}}},{{{0},{0},{0}},{{0},{0},{0}}},{{{0},{0},{0}},{{0},{0},{0}}},{{{0},{0},{0}},{{0},{0},{0}}},{{{0},{0},{0}},{{0},{0},{0}}}};
                        union U5 *l_573[9] = {&l_574[0][1][2],&l_574[0][1][2],&l_574[0][1][2],&l_574[0][1][2],&l_574[0][1][2],&l_574[0][1][2],&l_574[0][1][2],&l_574[0][1][2],&l_574[0][1][2]};
                        union U5 *l_575 = (void*)0;
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_570[i] = 4L;
                        l_566 = (void*)0;
                        l_568 = (void*)0;
                        l_566 = (l_572 = l_571);
                        l_575 = (l_573[3] = l_573[2]);
                        unsigned int result = 0;
                        result += l_567;
                        int l_570_i0;
                        for (l_570_i0 = 0; l_570_i0 < 2; l_570_i0++) {
                            result += l_570[l_570_i0];
                        }
                        int l_574_i0, l_574_i1, l_574_i2;
                        for (l_574_i0 = 0; l_574_i0 < 7; l_574_i0++) {
                            for (l_574_i1 = 0; l_574_i1 < 2; l_574_i1++) {
                                for (l_574_i2 = 0; l_574_i2 < 3; l_574_i2++) {
                                    result += l_574[l_574_i0][l_574_i1][l_574_i2].f0;
                                }
                            }
                        }
                        atomic_add(&p_1308->l_special_values[8], result);
                    }
                    else
                    { /* block id: 322 */
                        (1 + 1);
                    }
                    return p_18;
                }
                for (p_1308->g_312.f0 = 0; (p_1308->g_312.f0 <= 2); p_1308->g_312.f0 += 1)
                { /* block id: 329 */
                    uint8_t l_584[6];
                    int i;
                    for (i = 0; i < 6; i++)
                        l_584[i] = 0UL;
                    for (p_1308->g_285 = 0; (p_1308->g_285 <= 2); p_1308->g_285 += 1)
                    { /* block id: 332 */
                        int32_t *l_576 = (void*)0;
                        int32_t *l_577 = &l_532;
                        int32_t l_578 = 0x2429BD85L;
                        int32_t l_579 = 1L;
                        int32_t *l_580 = &l_525;
                        int32_t *l_581 = (void*)0;
                        int32_t *l_582 = (void*)0;
                        int32_t *l_583 = &l_487[0][2];
                        int16_t *l_592 = &p_1308->g_249;
                        int i;
                        l_584[0]--;
                        if (p_20)
                            continue;
                        l_596[1] = ((((*l_592) = ((safe_sub_func_int32_t_s_s(0L, (-1L))) , (((safe_mul_func_int16_t_s_s(((&l_577 != (p_1308->g_395 , l_591)) < p_1308->g_66.f2), ((((&p_1308->g_217[p_1308->g_120.f1] != ((*l_386) = (((&p_1308->g_107 != (void*)0) && (*l_538)) , (void*)0))) <= p_20) != FAKE_DIVERGE(p_1308->global_0_offset, get_global_id(0), 10)) , (*l_538)))) || p_1308->g_120.f2) && (*p_18)))) <= 2L) , p_1308->g_593[6][8][0]);
                        return p_18;
                    }
                    (*l_591) = &l_419;
                }
                if ((**p_1308->g_479))
                    continue;
            }
        }
        if (p_20)
            continue;
    }
    return p_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_1308->g_312.f0 p_1308->g_66.f8 p_1308->g_375 p_1308->g_376 p_1308->g_378 p_1308->g_272.f0 p_1308->g_3
 * writes: p_1308->g_312.f0 p_1308->g_66.f8 p_1308->g_374 p_1308->g_376
 */
int32_t  func_23(uint32_t  p_24, int64_t  p_25, struct S6 * p_1308)
{ /* block id: 160 */
    int32_t *l_373 = &p_1308->g_3;
    for (p_1308->g_312.f0 = 0; (p_1308->g_312.f0 != 26); ++p_1308->g_312.f0)
    { /* block id: 163 */
        int32_t **l_379 = &p_1308->g_376;
        for (p_1308->g_66.f8 = 0; (p_1308->g_66.f8 >= 30); p_1308->g_66.f8++)
        { /* block id: 166 */
            (*p_1308->g_375) = (p_1308->g_374 = l_373);
            (*p_1308->g_378) = (*p_1308->g_375);
        }
        (*l_379) = l_373;
        return p_1308->g_272[0][6][0].f0;
    }
    return (*l_373);
}


/* ------------------------------------------ */
/* 
 * reads : p_1308->g_312.f0 p_1308->g_249 p_1308->g_273 p_1308->g_218 p_1308->g_165 p_1308->g_77 p_1308->g_66.f2
 * writes: p_1308->g_312.f0 p_1308->g_249 p_1308->g_218 p_1308->g_66.f2 p_1308->g_77
 */
int8_t * func_32(uint32_t  p_33, struct S6 * p_1308)
{ /* block id: 118 */
    int32_t *l_327 = &p_1308->g_77;
    int32_t l_336 = 1L;
    int32_t l_337 = (-10L);
    int32_t l_338 = (-1L);
    int32_t l_339 = 0x284662E8L;
    int32_t l_340 = 6L;
    int32_t l_341 = (-10L);
    int32_t l_342 = (-1L);
    int32_t l_343 = (-8L);
    int32_t l_344 = 1L;
    int32_t l_345 = 0x3B390FAAL;
    int32_t l_349 = 0L;
    int32_t l_350 = 0x4CC13ED9L;
    int32_t l_351 = 0x38D1ADCEL;
    int32_t l_352 = 0L;
    int32_t l_353 = (-1L);
    int32_t l_354[9][2][1] = {{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}}};
    int8_t *l_366 = &p_1308->g_190[7];
    int i, j, k;
    for (p_1308->g_312.f0 = 5; (p_1308->g_312.f0 >= 0); p_1308->g_312.f0 -= 1)
    { /* block id: 121 */
        struct S2 l_324 = {4294967293UL,0x7AB1L,1UL};
        struct S2 *l_325 = &l_324;
        int8_t *l_333 = &p_1308->g_190[3];
        (*l_325) = l_324;
        if (l_324.f2)
            continue;
        for (p_1308->g_249 = 1; (p_1308->g_249 <= 7); p_1308->g_249 += 1)
        { /* block id: 126 */
            int32_t *l_326 = &p_1308->g_218[2][1][0];
            int i, j;
            if (((*l_326) |= p_1308->g_273[(p_1308->g_312.f0 + 1)][(p_1308->g_312.f0 + 3)]))
            { /* block id: 128 */
                int32_t *l_328 = &p_1308->g_77;
                l_328 = l_327;
            }
            else
            { /* block id: 130 */
                if ((atomic_inc(&p_1308->g_atomic_input[30 * get_linear_group_id() + 25]) == 7))
                { /* block id: 132 */
                    int32_t l_329 = (-8L);
                    for (l_329 = 7; (l_329 >= 1); l_329 -= 1)
                    { /* block id: 135 */
                        uint16_t l_330 = 0xCA13L;
                        int8_t l_331 = (-1L);
                        uint8_t l_332[6] = {1UL,1UL,1UL,1UL,1UL,1UL};
                        int i, j;
                        l_330 &= p_1308->g_273[p_1308->g_312.f0][l_329];
                        l_332[3] |= l_331;
                    }
                    unsigned int result = 0;
                    result += l_329;
                    atomic_add(&p_1308->g_special_values[30 * get_linear_group_id() + 25], result);
                }
                else
                { /* block id: 139 */
                    (1 + 1);
                }
            }
            return l_333;
        }
    }
    if ((*p_1308->g_165))
    { /* block id: 146 */
        int32_t *l_334 = &p_1308->g_218[3][1][0];
        int32_t *l_335[3];
        uint32_t l_346 = 4294967295UL;
        int32_t l_355 = (-9L);
        int32_t l_356[7] = {0x40E24AB9L,0x40E24AB9L,0x40E24AB9L,0x40E24AB9L,0x40E24AB9L,0x40E24AB9L,0x40E24AB9L};
        uint8_t l_357 = 9UL;
        int i;
        for (i = 0; i < 3; i++)
            l_335[i] = &p_1308->g_218[5][0][0];
        ++l_346;
        --l_357;
        for (p_1308->g_66.f2 = 0; (p_1308->g_66.f2 <= 5); ++p_1308->g_66.f2)
        { /* block id: 151 */
            uint32_t l_362[4][1][8] = {{{4294967295UL,4294967295UL,0x51A83513L,0x0518B799L,0UL,0UL,0xCE0710F4L,0x3BE1526CL}},{{4294967295UL,4294967295UL,0x51A83513L,0x0518B799L,0UL,0UL,0xCE0710F4L,0x3BE1526CL}},{{4294967295UL,4294967295UL,0x51A83513L,0x0518B799L,0UL,0UL,0xCE0710F4L,0x3BE1526CL}},{{4294967295UL,4294967295UL,0x51A83513L,0x0518B799L,0UL,0UL,0xCE0710F4L,0x3BE1526CL}}};
            int i, j, k;
            ++l_362[3][0][4];
        }
    }
    else
    { /* block id: 154 */
        int64_t l_365 = 0x180E95B98186256CL;
        (*l_327) = l_365;
    }
    (*l_327) &= 0x07ABB56EL;
    return l_366;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_36(uint64_t  p_37, int8_t * p_38, int32_t  p_39, int32_t * p_40, int32_t  p_41, struct S6 * p_1308)
{ /* block id: 114 */
    uint32_t l_318[5][5][4] = {{{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L}},{{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L}},{{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L}},{{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L}},{{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L},{0UL,0xB5D1EFB1L,4294967290UL,0x2A64A254L}}};
    int i, j, k;
    --l_318[0][0][3];
    return p_38;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_42(int32_t * p_43, uint64_t  p_44, uint8_t  p_45, uint32_t  p_46, int32_t * p_47, struct S6 * p_1308)
{ /* block id: 112 */
    int8_t *l_317 = &p_1308->g_190[7];
    return l_317;
}


/* ------------------------------------------ */
/* 
 * reads : p_1308->g_22 p_1308->g_66 p_1308->g_70 p_1308->g_77 p_1308->g_2 p_1308->g_62 p_1308->g_107 p_1308->g_117 p_1308->g_120 p_1308->g_136 p_1308->g_152 p_1308->g_158 p_1308->g_159 p_1308->g_165 p_1308->g_166 p_1308->g_76 p_1308->g_177 p_1308->g_178 p_1308->g_217 p_1308->g_218 p_1308->g_223 p_1308->g_227 p_1308->g_190 p_1308->g_159.f0 p_1308->g_243 p_1308->g_158.f0 p_1308->g_243.f0 p_1308->g_249 p_1308->g_266 p_1308->g_268 p_1308->g_272 p_1308->g_216 p_1308->g_285 p_1308->g_300 p_1308->g_312
 * writes: p_1308->g_66 p_1308->g_76 p_1308->g_77 p_1308->g_107 p_1308->g_136 p_1308->g_120.f5 p_1308->g_166.f1 p_1308->g_177 p_1308->g_190 p_1308->g_216 p_1308->g_218 p_1308->g_120.f3 p_1308->g_249 p_1308->g_268 p_1308->g_273 p_1308->g_120.f1 p_1308->g_272.f1
 */
int32_t * func_48(int32_t  p_49, struct S6 * p_1308)
{ /* block id: 12 */
    int64_t l_82 = (-1L);
    int32_t l_89[3];
    uint32_t *l_157 = &p_1308->g_66.f5;
    uint32_t l_169 = 0xF473321FL;
    int8_t *l_189 = &p_1308->g_190[7];
    uint64_t *l_191[1];
    int32_t *l_192 = (void*)0;
    int32_t *l_193 = (void*)0;
    int32_t *l_194[4];
    int64_t *l_214 = (void*)0;
    int64_t **l_213 = &l_214;
    int64_t ***l_215[3][3];
    uint32_t l_230 = 4294967291UL;
    int8_t l_231 = (-8L);
    uint32_t l_252 = 0xF6000606L;
    int i, j;
    for (i = 0; i < 3; i++)
        l_89[i] = 0x3045D781L;
    for (i = 0; i < 1; i++)
        l_191[i] = &p_1308->g_120.f7;
    for (i = 0; i < 4; i++)
        l_194[i] = &p_1308->g_77;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
            l_215[i][j] = (void*)0;
    }
    if ((safe_sub_func_int16_t_s_s((-3L), p_1308->g_22[1])))
    { /* block id: 13 */
        struct S0 *l_69 = (void*)0;
        uint32_t l_123 = 4294967295UL;
        int32_t l_131 = 0x0BFBDA86L;
        int32_t l_134 = 0x58784057L;
        union U5 l_151[3] = {{0},{0},{0}};
        uint32_t *l_153[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t *l_160 = &l_134;
        struct S2 l_161[10] = {{0xD6524C08L,0UL,0x72FB52A324362DD0L},{0xD6524C08L,0UL,0x72FB52A324362DD0L},{0xD6524C08L,0UL,0x72FB52A324362DD0L},{0xD6524C08L,0UL,0x72FB52A324362DD0L},{0xD6524C08L,0UL,0x72FB52A324362DD0L},{0xD6524C08L,0UL,0x72FB52A324362DD0L},{0xD6524C08L,0UL,0x72FB52A324362DD0L},{0xD6524C08L,0UL,0x72FB52A324362DD0L},{0xD6524C08L,0UL,0x72FB52A324362DD0L},{0xD6524C08L,0UL,0x72FB52A324362DD0L}};
        struct S2 *l_162 = &l_161[2];
        int i;
        (*p_1308->g_70) = p_1308->g_66;
        for (p_1308->g_66.f1 = 0; (p_1308->g_66.f1 > 6); ++p_1308->g_66.f1)
        { /* block id: 17 */
            uint16_t l_105 = 0x0203L;
            int32_t *l_109 = &l_89[1];
            int32_t **l_108 = &l_109;
            int64_t *l_122 = &l_82;
            int64_t **l_121 = &l_122;
            int32_t *l_124 = &p_1308->g_77;
            int32_t *l_125 = &l_89[1];
            int32_t l_126 = 0L;
            int32_t *l_127 = (void*)0;
            int32_t *l_128 = &l_89[2];
            int32_t *l_129 = &p_1308->g_77;
            int32_t *l_130 = (void*)0;
            int32_t *l_132 = (void*)0;
            int32_t *l_133[3][1][8] = {{{&l_126,(void*)0,&l_126,&l_126,(void*)0,&l_126,&l_126,(void*)0}},{{&l_126,(void*)0,&l_126,&l_126,(void*)0,&l_126,&l_126,(void*)0}},{{&l_126,(void*)0,&l_126,&l_126,(void*)0,&l_126,&l_126,(void*)0}}};
            int i, j, k;
            for (p_1308->g_66.f8 = 23; (p_1308->g_66.f8 >= 22); p_1308->g_66.f8--)
            { /* block id: 20 */
                int32_t **l_75 = (void*)0;
                uint32_t l_78[5] = {4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL};
                uint64_t *l_104 = &p_1308->g_62;
                uint8_t l_106 = 0x5FL;
                int i;
                p_1308->g_76 = (void*)0;
                for (p_1308->g_66.f7 = 0; (p_1308->g_66.f7 <= 4); p_1308->g_66.f7 += 1)
                { /* block id: 24 */
                    uint32_t *l_81[9] = {&p_1308->g_66.f5,&p_1308->g_66.f5,&p_1308->g_66.f5,&p_1308->g_66.f5,&p_1308->g_66.f5,&p_1308->g_66.f5,&p_1308->g_66.f5,&p_1308->g_66.f5,&p_1308->g_66.f5};
                    uint8_t *l_85 = &p_1308->g_66.f2;
                    int32_t *l_88[10][7][3] = {{{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77}},{{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77}},{{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77}},{{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77}},{{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77}},{{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77}},{{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77}},{{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77}},{{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77}},{{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77},{&p_1308->g_77,&p_1308->g_3,&p_1308->g_77}}};
                    int32_t ***l_110 = &l_75;
                    int i, j, k;
                    p_49 &= (l_78[p_1308->g_66.f7] & (safe_div_func_uint32_t_u_u((p_1308->g_66.f5 = (l_82 = 0xCFF14709L)), (l_89[0] = (safe_rshift_func_uint8_t_u_s((++(*l_85)), 2))))));
                    for (p_1308->g_77 = 29; (p_1308->g_77 <= (-10)); p_1308->g_77 = safe_sub_func_int64_t_s_s(p_1308->g_77, 9))
                    { /* block id: 32 */
                        uint32_t l_92 = 0xEF6EAEA5L;
                        int64_t *l_97 = &l_82;
                        l_92 &= p_49;
                        p_1308->g_107 ^= ((p_1308->g_66.f1 <= (safe_sub_func_int64_t_s_s((((p_1308->g_77 > (safe_mul_func_uint8_t_u_u(((*l_85) = ((((*l_97) = p_49) < (+p_49)) == (safe_mul_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s((safe_add_func_int8_t_s_s(7L, ((p_1308->g_66.f5 ^= GROUP_DIVERGE(0, 1)) & p_49))), p_1308->g_2)), FAKE_DIVERGE(p_1308->global_1_offset, get_global_id(1), 10))))), (((void*)0 == l_104) < 0x003FL)))) || l_105) , l_82), p_1308->g_62))) | l_106);
                        p_49 |= (-1L);
                    }
                    p_49 = (l_108 != ((*l_110) = &l_88[1][3][1]));
                }
            }
            (*l_109) = ((safe_sub_func_uint64_t_u_u(((l_82 , l_89[0]) >= l_89[0]), (GROUP_DIVERGE(0, 1) != 1L))) <= (safe_sub_func_int8_t_s_s(((((safe_mod_func_uint16_t_u_u((p_1308->g_117 , (p_49 > ((((((*l_121) = (p_1308->g_66.f6 , ((safe_div_func_uint64_t_u_u((p_1308->g_120 , (p_1308->g_117 , 0xF0C45E9BC94048DEL)), p_49)) , (void*)0))) != (void*)0) , p_1308->g_66.f8) && 0x25B7L) , 0x4FEEL))), p_1308->g_120.f5)) && (*l_109)) , p_49) ^ l_123), p_49)));
            if (l_89[1])
                continue;
            --p_1308->g_136;
        }
        (*l_160) &= (safe_lshift_func_int16_t_s_s(((~(l_123 < ((((((safe_div_func_int16_t_s_s((((0x1E7B35E0E5596EFEL <= ((safe_add_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_u((safe_sub_func_uint32_t_u_u(((l_151[1] , (p_1308->g_152 , p_49)) & ((4294967295UL & (p_1308->g_120.f5 = (+(p_1308->g_66.f5 &= (l_89[0] |= 4294967294UL))))) && ((safe_unary_minus_func_int64_t_s((((safe_rshift_func_int8_t_s_s(((void*)0 == l_157), 4)) | 1L) == p_1308->g_66.f7))) <= p_1308->g_66.f8))), 0x79FC7206L)), p_1308->g_66.f7)) && 8L), p_49)) && 0x06E3L)) >= (-1L)) != 0x24C05076L), 0x7764L)) <= (-9L)) , p_1308->g_158) , p_1308->g_159) , p_49) >= GROUP_DIVERGE(0, 1)))) <= p_49), 10));
        (*l_162) = l_161[4];
    }
    else
    { /* block id: 54 */
        uint16_t l_170 = 0x9798L;
        int64_t *l_171 = &l_82;
        uint64_t *l_172[9][4] = {{&p_1308->g_120.f7,&p_1308->g_166[8].f7,&p_1308->g_120.f7,&p_1308->g_120.f7},{&p_1308->g_120.f7,&p_1308->g_166[8].f7,&p_1308->g_120.f7,&p_1308->g_120.f7},{&p_1308->g_120.f7,&p_1308->g_166[8].f7,&p_1308->g_120.f7,&p_1308->g_120.f7},{&p_1308->g_120.f7,&p_1308->g_166[8].f7,&p_1308->g_120.f7,&p_1308->g_120.f7},{&p_1308->g_120.f7,&p_1308->g_166[8].f7,&p_1308->g_120.f7,&p_1308->g_120.f7},{&p_1308->g_120.f7,&p_1308->g_166[8].f7,&p_1308->g_120.f7,&p_1308->g_120.f7},{&p_1308->g_120.f7,&p_1308->g_166[8].f7,&p_1308->g_120.f7,&p_1308->g_120.f7},{&p_1308->g_120.f7,&p_1308->g_166[8].f7,&p_1308->g_120.f7,&p_1308->g_120.f7},{&p_1308->g_120.f7,&p_1308->g_166[8].f7,&p_1308->g_120.f7,&p_1308->g_120.f7}};
        int32_t l_173 = 0x2B5ABC4BL;
        uint16_t *l_176 = &p_1308->g_166[8].f1;
        int i, j;
        (*p_1308->g_165) &= (safe_add_func_uint64_t_u_u(0x00A57CCE38ADB6E0L, GROUP_DIVERGE(1, 1)));
        p_1308->g_177 ^= (p_1308->g_166[8] , (((safe_rshift_func_uint16_t_u_u(l_169, ((*l_176) = ((((*p_1308->g_76) , (+p_49)) >= (((*l_171) = l_170) >= (((((l_173 = 1UL) || (safe_lshift_func_uint16_t_u_s(((((p_1308->g_62 == (-10L)) | p_49) || p_49) ^ l_89[0]), l_169))) != l_169) | 3UL) | l_170))) < l_89[0])))) || p_49) | p_49));
    }
    p_1308->g_77 |= ((((p_1308->g_178 || l_89[0]) ^ 251UL) | (safe_rshift_func_uint16_t_u_u(((((2UL && (p_1308->g_22[0] < (safe_lshift_func_int8_t_s_u((safe_sub_func_int16_t_s_s(1L, (FAKE_DIVERGE(p_1308->group_0_offset, get_group_id(0), 10) && p_49))), (safe_mul_func_int8_t_s_s(((*l_189) = (l_169 | (!0L))), l_89[0])))))) , l_191[0]) != (void*)0) , l_82), 7))) || 0UL);
    p_1308->g_218[3][1][0] ^= (p_49 == ((safe_rshift_func_int8_t_s_u((p_49 ^ ((((p_1308->g_166[8].f8 != ((((((*l_157) = (safe_rshift_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(0xCFDCL, (((*p_1308->g_165) = p_49) | (safe_lshift_func_uint16_t_u_s((safe_lshift_func_int16_t_s_u((-7L), (safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((void*)0 == l_191[0]), ((*l_189) = ((safe_add_func_int8_t_s_s(((safe_mul_func_int16_t_s_s(((p_1308->g_216 = l_213) != p_1308->g_217[2]), 0x5D73L)) <= p_1308->g_22[0]), p_1308->g_22[3])) ^ p_49)))), p_49)))), 11))))), 14))) ^ 0x4F0B3B0FL) , p_1308->g_2) <= p_49) & p_1308->g_177)) == 4294967292UL) ^ 0x74L) & p_1308->g_62)), 5)) , p_49));
    for (p_1308->g_66.f0 = 0; (p_1308->g_66.f0 > 29); p_1308->g_66.f0++)
    { /* block id: 70 */
        uint8_t l_226 = 0x4EL;
        int32_t l_232 = 0x6A6B4D2BL;
        int64_t **l_275 = &l_214;
        int8_t **l_286 = &l_189;
        int8_t ***l_289 = &l_286;
        uint16_t *l_309 = &p_1308->g_120.f1;
        int8_t l_313 = (-7L);
        int32_t l_314 = (-1L);
        if ((p_1308->g_77 &= (l_232 = ((safe_add_func_int64_t_s_s((p_1308->g_223 , (-3L)), ((safe_lshift_func_uint16_t_u_u(p_1308->g_218[3][0][0], ((l_226 , p_1308->g_227) == (void*)0))) <= (safe_mul_func_int8_t_s_s((-1L), ((p_1308->g_166[8].f1 <= ((l_230 = p_49) > p_49)) , p_1308->g_190[4])))))) ^ l_231))))
        { /* block id: 74 */
            int64_t l_244 = 0x06B45E094BE1140EL;
            int32_t l_278 = 9L;
            int32_t l_281 = (-4L);
            int32_t l_282[9] = {(-1L),0x116848BAL,(-1L),(-1L),0x116848BAL,(-1L),(-1L),0x116848BAL,(-1L)};
            int i;
            if ((((safe_mul_func_uint16_t_u_u((9UL | ((((((safe_div_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_s((((safe_mod_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u(((*l_157) |= (p_1308->g_177 & ((void*)0 == &p_1308->g_218[2][0][0]))), (+p_1308->g_159.f0))), (0x1178L ^ p_49))) | ((p_1308->g_243[1][4][0] , &p_1308->g_178) == (void*)0)) < 0x088F62F7L), 3)) , l_244), (-2L))) < p_1308->g_158.f0) || l_226) >= l_226) < p_49) ^ p_49)), FAKE_DIVERGE(p_1308->local_2_offset, get_local_id(2), 10))) < p_1308->g_243[1][4][0].f0) , p_49))
            { /* block id: 76 */
                int64_t **l_274 = &l_214;
                for (p_1308->g_120.f3 = 0; (p_1308->g_120.f3 != (-16)); p_1308->g_120.f3 = safe_sub_func_int64_t_s_s(p_1308->g_120.f3, 9))
                { /* block id: 79 */
                    int16_t *l_247 = &p_1308->g_177;
                    int16_t *l_248 = &p_1308->g_249;
                    int16_t *l_267[3][6];
                    uint8_t *l_271 = &p_1308->g_66.f2;
                    uint16_t *l_276[9][1][7] = {{{(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0}},{{(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0}},{{(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0}},{{(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0}},{{(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0}},{{(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0}},{{(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0}},{{(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0}},{{(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0,&p_1308->g_66.f1,(void*)0,(void*)0}}};
                    uint16_t l_277[8][6][5] = {{{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL}},{{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL}},{{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL}},{{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL}},{{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL}},{{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL}},{{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL}},{{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL},{0x17DFL,0xA0ECL,0x8C44L,65535UL,65535UL}}};
                    int32_t **l_280 = &l_193;
                    int32_t ***l_279 = &l_280;
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 6; j++)
                            l_267[i][j] = &p_1308->g_268;
                    }
                    p_49 = (((*l_248) = ((*l_247) &= p_49)) , 0x1D718FD4L);
                    l_282[4] = ((safe_sub_func_uint16_t_u_u(((l_252 &= (p_1308->g_177 = ((*l_248) &= p_1308->g_166[8].f0))) != 2L), (safe_lshift_func_int16_t_s_s((l_281 = (safe_rshift_func_uint16_t_u_s((((safe_unary_minus_func_uint8_t_u(((l_278 = (safe_div_func_uint32_t_u_u((((p_49 == 0x53L) || ((p_1308->g_272[0][6][0].f1 = (safe_sub_func_uint16_t_u_u((p_1308->g_120.f1 = (251UL != ((l_274 = ((safe_mul_func_int16_t_s_s((p_1308->g_268 ^= (GROUP_DIVERGE(0, 1) <= (p_1308->g_266 , p_49))), (safe_lshift_func_int16_t_s_u(((FAKE_DIVERGE(p_1308->global_0_offset, get_global_id(0), 10) , ((*l_271) = p_49)) , (p_1308->g_273[3][6] = (p_1308->g_272[0][6][0] , 0x3091L))), 11)))) , p_1308->g_216)) == l_275))), p_1308->g_66.f8))) == p_49)) == l_277[4][3][2]), p_49))) , 249UL))) , l_279) != (void*)0), p_1308->g_120.f7))), p_49)))) < p_1308->g_120.f0);
                }
                p_49 = 0x44743E29L;
            }
            else
            { /* block id: 97 */
                (*p_1308->g_165) |= 0x470856A3L;
            }
        }
        else
        { /* block id: 100 */
            l_232 |= ((p_49 , (~(p_1308->g_159.f0 ^ (safe_lshift_func_uint8_t_u_u(1UL, p_1308->g_285))))) | p_49);
        }
        (*l_289) = l_286;
        p_49 = (l_314 = ((safe_mod_func_uint16_t_u_u((p_49 && (safe_add_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s((safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_1308->global_1_offset, get_global_id(1), 10), ((p_49 >= (p_1308->g_249 = ((safe_add_func_uint64_t_u_u(18446744073709551615UL, (p_1308->g_300 , (((((((p_49 != FAKE_DIVERGE(p_1308->local_1_offset, get_local_id(1), 10)) >= ((safe_div_func_uint32_t_u_u(((safe_lshift_func_uint8_t_u_u((((((*p_1308->g_165) = 0x5A6B60CBL) , ((safe_sub_func_int64_t_s_s((safe_sub_func_uint16_t_u_u((++(*l_309)), (l_232 = p_49))), ((p_1308->g_312 , l_191[0]) == &p_1308->g_62))) , 0x05C9C2B5L)) , p_1308->g_166[8].f6) & p_49), p_1308->g_177)) >= l_313), p_1308->g_268)) , 7L)) > p_49) || p_1308->g_166[8].f2) | (-1L)) & 1UL) >= 0x60A7L)))) && (-7L)))) ^ p_49))), p_1308->g_190[7])), 1UL))), p_49)) || 0UL));
    }
    return &p_1308->g_77;
}


/* ------------------------------------------ */
/* 
 * reads : p_1308->g_22
 * writes:
 */
int8_t  func_52(int32_t * p_53, uint64_t  p_54, int8_t  p_55, int16_t  p_56, int8_t * p_57, struct S6 * p_1308)
{ /* block id: 10 */
    return (*p_57);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[30];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 30; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[30];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 30; i++)
            l_special_values[i] = 0;
    struct S6 c_1309;
    struct S6* p_1308 = &c_1309;
    struct S6 c_1310 = {
        0x1D1B9849L, // p_1308->g_2
        (-1L), // p_1308->g_3
        {0x1CL,0x1CL,0x1CL,0x1CL}, // p_1308->g_22
        0xED469F41AF53C8CBL, // p_1308->g_62
        {-1L,7UL,0x26L,0L,-9L,4294967290UL,0x7634C5D1L,0UL,0xF5L}, // p_1308->g_66
        (void*)0, // p_1308->g_67
        (void*)0, // p_1308->g_68
        &p_1308->g_66, // p_1308->g_70
        0x1CE904CDL, // p_1308->g_77
        &p_1308->g_77, // p_1308->g_76
        9UL, // p_1308->g_107
        {0x22965476L}, // p_1308->g_117
        {0x24971ED8L,0UL,1UL,0x4238541CL,-5L,0xF2ED6A3EL,0x45F198F0L,0UL,0x90L}, // p_1308->g_120
        {0x3D5EB93CA2B8C224L,0x3D5EB93CA2B8C224L,0x3D5EB93CA2B8C224L,0x3D5EB93CA2B8C224L,0x3D5EB93CA2B8C224L,0x3D5EB93CA2B8C224L}, // p_1308->g_135
        4294967291UL, // p_1308->g_136
        {255UL}, // p_1308->g_152
        {255UL}, // p_1308->g_158
        {0x84L}, // p_1308->g_159
        &p_1308->g_77, // p_1308->g_165
        {{-8L,1UL,0x24L,-1L,-1L,1UL,-9L,18446744073709551612UL,247UL},{-8L,1UL,0x24L,-1L,-1L,1UL,-9L,18446744073709551612UL,247UL},{-8L,1UL,0x24L,-1L,-1L,1UL,-9L,18446744073709551612UL,247UL},{-8L,1UL,0x24L,-1L,-1L,1UL,-9L,18446744073709551612UL,247UL},{-8L,1UL,0x24L,-1L,-1L,1UL,-9L,18446744073709551612UL,247UL},{-8L,1UL,0x24L,-1L,-1L,1UL,-9L,18446744073709551612UL,247UL},{-8L,1UL,0x24L,-1L,-1L,1UL,-9L,18446744073709551612UL,247UL},{-8L,1UL,0x24L,-1L,-1L,1UL,-9L,18446744073709551612UL,247UL},{-8L,1UL,0x24L,-1L,-1L,1UL,-9L,18446744073709551612UL,247UL},{-8L,1UL,0x24L,-1L,-1L,1UL,-9L,18446744073709551612UL,247UL}}, // p_1308->g_166
        0x10D7L, // p_1308->g_177
        65526UL, // p_1308->g_178
        {4L,(-8L),4L,(-8L),4L,4L,(-8L),4L,(-8L),4L}, // p_1308->g_190
        (void*)0, // p_1308->g_216
        {(void*)0,(void*)0,(void*)0}, // p_1308->g_217
        {{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}}}, // p_1308->g_218
        {0x7B452A93L}, // p_1308->g_223
        (void*)0, // p_1308->g_227
        {{{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}}},{{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}}},{{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}}},{{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}},{{6UL},{0x78L},{2UL}}}}, // p_1308->g_243
        0x0032L, // p_1308->g_249
        {0x6B47831BL}, // p_1308->g_266
        2L, // p_1308->g_268
        {{{{0xB3B7F865L,65535UL,2UL},{0xB3B7F865L,65535UL,2UL}},{{0xB3B7F865L,65535UL,2UL},{0xB3B7F865L,65535UL,2UL}},{{0xB3B7F865L,65535UL,2UL},{0xB3B7F865L,65535UL,2UL}},{{0xB3B7F865L,65535UL,2UL},{0xB3B7F865L,65535UL,2UL}},{{0xB3B7F865L,65535UL,2UL},{0xB3B7F865L,65535UL,2UL}},{{0xB3B7F865L,65535UL,2UL},{0xB3B7F865L,65535UL,2UL}},{{0xB3B7F865L,65535UL,2UL},{0xB3B7F865L,65535UL,2UL}}},{{{0xB3B7F865L,65535UL,2UL},{0xB3B7F865L,65535UL,2UL}},{{0xB3B7F865L,65535UL,2UL},{0xB3B7F865L,65535UL,2UL}},{{0xB3B7F865L,65535UL,2UL},{0xB3B7F865L,65535UL,2UL}},{{0xB3B7F865L,65535UL,2UL},{0xB3B7F865L,65535UL,2UL}},{{0xB3B7F865L,65535UL,2UL},{0xB3B7F865L,65535UL,2UL}},{{0xB3B7F865L,65535UL,2UL},{0xB3B7F865L,65535UL,2UL}},{{0xB3B7F865L,65535UL,2UL},{0xB3B7F865L,65535UL,2UL}}}}, // p_1308->g_272
        {{0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL},{0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL},{0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL},{0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL},{0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL},{0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL},{0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL},{0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL,0x6196648B8FF587DBL}}, // p_1308->g_273
        65535UL, // p_1308->g_285
        (void*)0, // p_1308->g_288
        {{{(void*)0,&p_1308->g_288,&p_1308->g_288,(void*)0,&p_1308->g_288}},{{(void*)0,&p_1308->g_288,&p_1308->g_288,(void*)0,&p_1308->g_288}},{{(void*)0,&p_1308->g_288,&p_1308->g_288,(void*)0,&p_1308->g_288}},{{(void*)0,&p_1308->g_288,&p_1308->g_288,(void*)0,&p_1308->g_288}},{{(void*)0,&p_1308->g_288,&p_1308->g_288,(void*)0,&p_1308->g_288}},{{(void*)0,&p_1308->g_288,&p_1308->g_288,(void*)0,&p_1308->g_288}},{{(void*)0,&p_1308->g_288,&p_1308->g_288,(void*)0,&p_1308->g_288}},{{(void*)0,&p_1308->g_288,&p_1308->g_288,(void*)0,&p_1308->g_288}}}, // p_1308->g_287
        {-9L,18446744073709551615UL,0L,0x66DB36570C3F18F3L,0xE97EDA3FD96416AAL,0x62A1C152L,0x4DAFFD6FL,1UL,9L,18446744073709551613UL}, // p_1308->g_300
        {0x0B6D7122L}, // p_1308->g_312
        (void*)0, // p_1308->g_374
        &p_1308->g_3, // p_1308->g_376
        &p_1308->g_376, // p_1308->g_375
        (void*)0, // p_1308->g_377
        &p_1308->g_374, // p_1308->g_378
        0xAC7BC0C0L, // p_1308->g_384
        {0}, // p_1308->g_395
        {0x251A3B2AL,0x8841C7C1C8082633L,0x072EL,-6L,1UL,0x3FB3EEB2L,0x18BB75CDL,0x3EL,0x57F0CCCBL,1UL}, // p_1308->g_400
        0x60F49AA7848E9823L, // p_1308->g_432
        &p_1308->g_400, // p_1308->g_439
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1308->g_438
        {0x17A8E506L,0x4E57DE57C99E85F4L,0L,0x3352C83D996D6E6AL,0x972FC3278C0F1153L,0x78AB1500L,1UL,9UL,0L,18446744073709551615UL}, // p_1308->g_442
        &p_1308->g_442, // p_1308->g_441
        &p_1308->g_441, // p_1308->g_440
        &p_1308->g_374, // p_1308->g_479
        {0x325DE4F9L,0x94010C61BD618D38L,0x5D8BL,0x3864F0182DF3C4D5L,18446744073709551615UL,0x23DC6AB2L,0xD6582A0AL,1UL,-10L,18446744073709551615UL}, // p_1308->g_480
        {0L,0xDC23DE0A621B5A68L,1L,-1L,18446744073709551613UL,0x4C988D5CL,0x45E63291L,0xFFL,0x12E88F12L,0x235F9EEBC11FA1D8L}, // p_1308->g_481
        {{-1L},{0x2E6ADB19L},{-1L},{-1L},{0x2E6ADB19L},{-1L},{-1L},{0x2E6ADB19L},{-1L}}, // p_1308->g_489
        {&p_1308->g_77,&p_1308->g_77}, // p_1308->g_491
        &p_1308->g_218[5][1][0], // p_1308->g_492
        &p_1308->g_374, // p_1308->g_505
        {&p_1308->g_505,&p_1308->g_505,&p_1308->g_505,&p_1308->g_505,&p_1308->g_505,&p_1308->g_505}, // p_1308->g_504
        {0x62L}, // p_1308->g_541
        {{{4294967292UL,9UL,1UL},{0x6BB66329L,65530UL,0UL},{4294967292UL,9UL,1UL},{4294967292UL,9UL,1UL}},{{4294967292UL,9UL,1UL},{0x6BB66329L,65530UL,0UL},{4294967292UL,9UL,1UL},{4294967292UL,9UL,1UL}},{{4294967292UL,9UL,1UL},{0x6BB66329L,65530UL,0UL},{4294967292UL,9UL,1UL},{4294967292UL,9UL,1UL}},{{4294967292UL,9UL,1UL},{0x6BB66329L,65530UL,0UL},{4294967292UL,9UL,1UL},{4294967292UL,9UL,1UL}}}, // p_1308->g_595
        &p_1308->g_595[3][2], // p_1308->g_594
        {{{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594}},{{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594}},{{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594}},{{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594}},{{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594}},{{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594}},{{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594},{&p_1308->g_594}}}, // p_1308->g_593
        &p_1308->g_505, // p_1308->g_936
        {0x218D0E27L,65526UL,0x61L,1L,0x5F86L,0xFDD4D76AL,-10L,0x8E94E3BD72E6A412L,1UL}, // p_1308->g_953
        &p_1308->g_480.f7, // p_1308->g_976
        &p_1308->g_159, // p_1308->g_1057
        &p_1308->g_1057, // p_1308->g_1056
        0x598A5D4AL, // p_1308->g_1068
        &p_1308->g_489[3], // p_1308->g_1077
        &p_1308->g_1077, // p_1308->g_1076
        {{249UL,249UL,249UL,249UL},{249UL,249UL,249UL,249UL},{249UL,249UL,249UL,249UL},{249UL,249UL,249UL,249UL},{249UL,249UL,249UL,249UL}}, // p_1308->g_1102
        &p_1308->g_395, // p_1308->g_1121
        &p_1308->g_1121, // p_1308->g_1120
        {0x4995C91BL,0x91888D35159BAB61L,0x7F64L,1L,1UL,9L,0x91BEFFFAL,247UL,-1L,18446744073709551615UL}, // p_1308->g_1151
        {0x12581396L,6UL,0x11B7L,0x21565EDB53EA9903L,9UL,0x56358EADL,0UL,0xF0L,0L,0x31FCF9367E9BE5E2L}, // p_1308->g_1195
        {0x596CF461L,0UL,-10L,1L,0x94767DF2E77F023AL,0x6C593DB1L,4294967295UL,0x41L,1L,0x049F5B4B63AE0EA6L}, // p_1308->g_1204
        0xC1L, // p_1308->g_1279
        {{{1L},{0x7566BAA4L},{1L},{0x5D30876AL},{4L}},{{1L},{0x7566BAA4L},{1L},{0x5D30876AL},{4L}},{{1L},{0x7566BAA4L},{1L},{0x5D30876AL},{4L}},{{1L},{0x7566BAA4L},{1L},{0x5D30876AL},{4L}},{{1L},{0x7566BAA4L},{1L},{0x5D30876AL},{4L}},{{1L},{0x7566BAA4L},{1L},{0x5D30876AL},{4L}},{{1L},{0x7566BAA4L},{1L},{0x5D30876AL},{4L}},{{1L},{0x7566BAA4L},{1L},{0x5D30876AL},{4L}}}, // p_1308->g_1289
        {0x39B84021L}, // p_1308->g_1307
        sequence_input[get_global_id(0)], // p_1308->global_0_offset
        sequence_input[get_global_id(1)], // p_1308->global_1_offset
        sequence_input[get_global_id(2)], // p_1308->global_2_offset
        sequence_input[get_local_id(0)], // p_1308->local_0_offset
        sequence_input[get_local_id(1)], // p_1308->local_1_offset
        sequence_input[get_local_id(2)], // p_1308->local_2_offset
        sequence_input[get_group_id(0)], // p_1308->group_0_offset
        sequence_input[get_group_id(1)], // p_1308->group_1_offset
        sequence_input[get_group_id(2)], // p_1308->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1309 = c_1310;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1308);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1308->g_2, "p_1308->g_2", print_hash_value);
    transparent_crc(p_1308->g_3, "p_1308->g_3", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1308->g_22[i], "p_1308->g_22[i]", print_hash_value);

    }
    transparent_crc(p_1308->g_62, "p_1308->g_62", print_hash_value);
    transparent_crc(p_1308->g_66.f0, "p_1308->g_66.f0", print_hash_value);
    transparent_crc(p_1308->g_66.f1, "p_1308->g_66.f1", print_hash_value);
    transparent_crc(p_1308->g_66.f2, "p_1308->g_66.f2", print_hash_value);
    transparent_crc(p_1308->g_66.f3, "p_1308->g_66.f3", print_hash_value);
    transparent_crc(p_1308->g_66.f4, "p_1308->g_66.f4", print_hash_value);
    transparent_crc(p_1308->g_66.f5, "p_1308->g_66.f5", print_hash_value);
    transparent_crc(p_1308->g_66.f6, "p_1308->g_66.f6", print_hash_value);
    transparent_crc(p_1308->g_66.f7, "p_1308->g_66.f7", print_hash_value);
    transparent_crc(p_1308->g_66.f8, "p_1308->g_66.f8", print_hash_value);
    transparent_crc(p_1308->g_77, "p_1308->g_77", print_hash_value);
    transparent_crc(p_1308->g_107, "p_1308->g_107", print_hash_value);
    transparent_crc(p_1308->g_117.f0, "p_1308->g_117.f0", print_hash_value);
    transparent_crc(p_1308->g_120.f0, "p_1308->g_120.f0", print_hash_value);
    transparent_crc(p_1308->g_120.f1, "p_1308->g_120.f1", print_hash_value);
    transparent_crc(p_1308->g_120.f2, "p_1308->g_120.f2", print_hash_value);
    transparent_crc(p_1308->g_120.f3, "p_1308->g_120.f3", print_hash_value);
    transparent_crc(p_1308->g_120.f4, "p_1308->g_120.f4", print_hash_value);
    transparent_crc(p_1308->g_120.f5, "p_1308->g_120.f5", print_hash_value);
    transparent_crc(p_1308->g_120.f6, "p_1308->g_120.f6", print_hash_value);
    transparent_crc(p_1308->g_120.f7, "p_1308->g_120.f7", print_hash_value);
    transparent_crc(p_1308->g_120.f8, "p_1308->g_120.f8", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1308->g_135[i], "p_1308->g_135[i]", print_hash_value);

    }
    transparent_crc(p_1308->g_136, "p_1308->g_136", print_hash_value);
    transparent_crc(p_1308->g_152.f0, "p_1308->g_152.f0", print_hash_value);
    transparent_crc(p_1308->g_158.f0, "p_1308->g_158.f0", print_hash_value);
    transparent_crc(p_1308->g_159.f0, "p_1308->g_159.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1308->g_166[i].f0, "p_1308->g_166[i].f0", print_hash_value);
        transparent_crc(p_1308->g_166[i].f1, "p_1308->g_166[i].f1", print_hash_value);
        transparent_crc(p_1308->g_166[i].f2, "p_1308->g_166[i].f2", print_hash_value);
        transparent_crc(p_1308->g_166[i].f3, "p_1308->g_166[i].f3", print_hash_value);
        transparent_crc(p_1308->g_166[i].f4, "p_1308->g_166[i].f4", print_hash_value);
        transparent_crc(p_1308->g_166[i].f5, "p_1308->g_166[i].f5", print_hash_value);
        transparent_crc(p_1308->g_166[i].f6, "p_1308->g_166[i].f6", print_hash_value);
        transparent_crc(p_1308->g_166[i].f7, "p_1308->g_166[i].f7", print_hash_value);
        transparent_crc(p_1308->g_166[i].f8, "p_1308->g_166[i].f8", print_hash_value);

    }
    transparent_crc(p_1308->g_177, "p_1308->g_177", print_hash_value);
    transparent_crc(p_1308->g_178, "p_1308->g_178", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1308->g_190[i], "p_1308->g_190[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1308->g_218[i][j][k], "p_1308->g_218[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1308->g_223.f0, "p_1308->g_223.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1308->g_243[i][j][k].f0, "p_1308->g_243[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1308->g_249, "p_1308->g_249", print_hash_value);
    transparent_crc(p_1308->g_266.f0, "p_1308->g_266.f0", print_hash_value);
    transparent_crc(p_1308->g_268, "p_1308->g_268", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1308->g_272[i][j][k].f0, "p_1308->g_272[i][j][k].f0", print_hash_value);
                transparent_crc(p_1308->g_272[i][j][k].f1, "p_1308->g_272[i][j][k].f1", print_hash_value);
                transparent_crc(p_1308->g_272[i][j][k].f2, "p_1308->g_272[i][j][k].f2", print_hash_value);

            }
        }
    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1308->g_273[i][j], "p_1308->g_273[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1308->g_285, "p_1308->g_285", print_hash_value);
    transparent_crc(p_1308->g_300.f0, "p_1308->g_300.f0", print_hash_value);
    transparent_crc(p_1308->g_300.f1, "p_1308->g_300.f1", print_hash_value);
    transparent_crc(p_1308->g_300.f2, "p_1308->g_300.f2", print_hash_value);
    transparent_crc(p_1308->g_300.f3, "p_1308->g_300.f3", print_hash_value);
    transparent_crc(p_1308->g_300.f4, "p_1308->g_300.f4", print_hash_value);
    transparent_crc(p_1308->g_300.f5, "p_1308->g_300.f5", print_hash_value);
    transparent_crc(p_1308->g_300.f6, "p_1308->g_300.f6", print_hash_value);
    transparent_crc(p_1308->g_300.f7, "p_1308->g_300.f7", print_hash_value);
    transparent_crc(p_1308->g_300.f8, "p_1308->g_300.f8", print_hash_value);
    transparent_crc(p_1308->g_300.f9, "p_1308->g_300.f9", print_hash_value);
    transparent_crc(p_1308->g_312.f0, "p_1308->g_312.f0", print_hash_value);
    transparent_crc(p_1308->g_384, "p_1308->g_384", print_hash_value);
    transparent_crc(p_1308->g_400.f0, "p_1308->g_400.f0", print_hash_value);
    transparent_crc(p_1308->g_400.f1, "p_1308->g_400.f1", print_hash_value);
    transparent_crc(p_1308->g_400.f2, "p_1308->g_400.f2", print_hash_value);
    transparent_crc(p_1308->g_400.f3, "p_1308->g_400.f3", print_hash_value);
    transparent_crc(p_1308->g_400.f4, "p_1308->g_400.f4", print_hash_value);
    transparent_crc(p_1308->g_400.f5, "p_1308->g_400.f5", print_hash_value);
    transparent_crc(p_1308->g_400.f6, "p_1308->g_400.f6", print_hash_value);
    transparent_crc(p_1308->g_400.f7, "p_1308->g_400.f7", print_hash_value);
    transparent_crc(p_1308->g_400.f8, "p_1308->g_400.f8", print_hash_value);
    transparent_crc(p_1308->g_400.f9, "p_1308->g_400.f9", print_hash_value);
    transparent_crc(p_1308->g_432, "p_1308->g_432", print_hash_value);
    transparent_crc(p_1308->g_442.f0, "p_1308->g_442.f0", print_hash_value);
    transparent_crc(p_1308->g_442.f1, "p_1308->g_442.f1", print_hash_value);
    transparent_crc(p_1308->g_442.f2, "p_1308->g_442.f2", print_hash_value);
    transparent_crc(p_1308->g_442.f3, "p_1308->g_442.f3", print_hash_value);
    transparent_crc(p_1308->g_442.f4, "p_1308->g_442.f4", print_hash_value);
    transparent_crc(p_1308->g_442.f5, "p_1308->g_442.f5", print_hash_value);
    transparent_crc(p_1308->g_442.f6, "p_1308->g_442.f6", print_hash_value);
    transparent_crc(p_1308->g_442.f7, "p_1308->g_442.f7", print_hash_value);
    transparent_crc(p_1308->g_442.f8, "p_1308->g_442.f8", print_hash_value);
    transparent_crc(p_1308->g_442.f9, "p_1308->g_442.f9", print_hash_value);
    transparent_crc(p_1308->g_480.f0, "p_1308->g_480.f0", print_hash_value);
    transparent_crc(p_1308->g_480.f1, "p_1308->g_480.f1", print_hash_value);
    transparent_crc(p_1308->g_480.f2, "p_1308->g_480.f2", print_hash_value);
    transparent_crc(p_1308->g_480.f3, "p_1308->g_480.f3", print_hash_value);
    transparent_crc(p_1308->g_480.f4, "p_1308->g_480.f4", print_hash_value);
    transparent_crc(p_1308->g_480.f5, "p_1308->g_480.f5", print_hash_value);
    transparent_crc(p_1308->g_480.f6, "p_1308->g_480.f6", print_hash_value);
    transparent_crc(p_1308->g_480.f7, "p_1308->g_480.f7", print_hash_value);
    transparent_crc(p_1308->g_480.f8, "p_1308->g_480.f8", print_hash_value);
    transparent_crc(p_1308->g_480.f9, "p_1308->g_480.f9", print_hash_value);
    transparent_crc(p_1308->g_481.f0, "p_1308->g_481.f0", print_hash_value);
    transparent_crc(p_1308->g_481.f1, "p_1308->g_481.f1", print_hash_value);
    transparent_crc(p_1308->g_481.f2, "p_1308->g_481.f2", print_hash_value);
    transparent_crc(p_1308->g_481.f3, "p_1308->g_481.f3", print_hash_value);
    transparent_crc(p_1308->g_481.f4, "p_1308->g_481.f4", print_hash_value);
    transparent_crc(p_1308->g_481.f5, "p_1308->g_481.f5", print_hash_value);
    transparent_crc(p_1308->g_481.f6, "p_1308->g_481.f6", print_hash_value);
    transparent_crc(p_1308->g_481.f7, "p_1308->g_481.f7", print_hash_value);
    transparent_crc(p_1308->g_481.f8, "p_1308->g_481.f8", print_hash_value);
    transparent_crc(p_1308->g_481.f9, "p_1308->g_481.f9", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1308->g_489[i].f0, "p_1308->g_489[i].f0", print_hash_value);

    }
    transparent_crc(p_1308->g_541.f0, "p_1308->g_541.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1308->g_595[i][j].f0, "p_1308->g_595[i][j].f0", print_hash_value);
            transparent_crc(p_1308->g_595[i][j].f1, "p_1308->g_595[i][j].f1", print_hash_value);
            transparent_crc(p_1308->g_595[i][j].f2, "p_1308->g_595[i][j].f2", print_hash_value);

        }
    }
    transparent_crc(p_1308->g_953.f0, "p_1308->g_953.f0", print_hash_value);
    transparent_crc(p_1308->g_953.f1, "p_1308->g_953.f1", print_hash_value);
    transparent_crc(p_1308->g_953.f2, "p_1308->g_953.f2", print_hash_value);
    transparent_crc(p_1308->g_953.f3, "p_1308->g_953.f3", print_hash_value);
    transparent_crc(p_1308->g_953.f4, "p_1308->g_953.f4", print_hash_value);
    transparent_crc(p_1308->g_953.f5, "p_1308->g_953.f5", print_hash_value);
    transparent_crc(p_1308->g_953.f6, "p_1308->g_953.f6", print_hash_value);
    transparent_crc(p_1308->g_953.f7, "p_1308->g_953.f7", print_hash_value);
    transparent_crc(p_1308->g_953.f8, "p_1308->g_953.f8", print_hash_value);
    transparent_crc(p_1308->g_1068, "p_1308->g_1068", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1308->g_1102[i][j], "p_1308->g_1102[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1308->g_1151.f0, "p_1308->g_1151.f0", print_hash_value);
    transparent_crc(p_1308->g_1151.f1, "p_1308->g_1151.f1", print_hash_value);
    transparent_crc(p_1308->g_1151.f2, "p_1308->g_1151.f2", print_hash_value);
    transparent_crc(p_1308->g_1151.f3, "p_1308->g_1151.f3", print_hash_value);
    transparent_crc(p_1308->g_1151.f4, "p_1308->g_1151.f4", print_hash_value);
    transparent_crc(p_1308->g_1151.f5, "p_1308->g_1151.f5", print_hash_value);
    transparent_crc(p_1308->g_1151.f6, "p_1308->g_1151.f6", print_hash_value);
    transparent_crc(p_1308->g_1151.f7, "p_1308->g_1151.f7", print_hash_value);
    transparent_crc(p_1308->g_1151.f8, "p_1308->g_1151.f8", print_hash_value);
    transparent_crc(p_1308->g_1151.f9, "p_1308->g_1151.f9", print_hash_value);
    transparent_crc(p_1308->g_1195.f0, "p_1308->g_1195.f0", print_hash_value);
    transparent_crc(p_1308->g_1195.f1, "p_1308->g_1195.f1", print_hash_value);
    transparent_crc(p_1308->g_1195.f2, "p_1308->g_1195.f2", print_hash_value);
    transparent_crc(p_1308->g_1195.f3, "p_1308->g_1195.f3", print_hash_value);
    transparent_crc(p_1308->g_1195.f4, "p_1308->g_1195.f4", print_hash_value);
    transparent_crc(p_1308->g_1195.f5, "p_1308->g_1195.f5", print_hash_value);
    transparent_crc(p_1308->g_1195.f6, "p_1308->g_1195.f6", print_hash_value);
    transparent_crc(p_1308->g_1195.f7, "p_1308->g_1195.f7", print_hash_value);
    transparent_crc(p_1308->g_1195.f8, "p_1308->g_1195.f8", print_hash_value);
    transparent_crc(p_1308->g_1195.f9, "p_1308->g_1195.f9", print_hash_value);
    transparent_crc(p_1308->g_1204.f0, "p_1308->g_1204.f0", print_hash_value);
    transparent_crc(p_1308->g_1204.f1, "p_1308->g_1204.f1", print_hash_value);
    transparent_crc(p_1308->g_1204.f2, "p_1308->g_1204.f2", print_hash_value);
    transparent_crc(p_1308->g_1204.f3, "p_1308->g_1204.f3", print_hash_value);
    transparent_crc(p_1308->g_1204.f4, "p_1308->g_1204.f4", print_hash_value);
    transparent_crc(p_1308->g_1204.f5, "p_1308->g_1204.f5", print_hash_value);
    transparent_crc(p_1308->g_1204.f6, "p_1308->g_1204.f6", print_hash_value);
    transparent_crc(p_1308->g_1204.f7, "p_1308->g_1204.f7", print_hash_value);
    transparent_crc(p_1308->g_1204.f8, "p_1308->g_1204.f8", print_hash_value);
    transparent_crc(p_1308->g_1204.f9, "p_1308->g_1204.f9", print_hash_value);
    transparent_crc(p_1308->g_1279, "p_1308->g_1279", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1308->g_1289[i][j].f0, "p_1308->g_1289[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1308->g_1307.f0, "p_1308->g_1307.f0", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 30; i++)
            transparent_crc(p_1308->g_special_values[i + 30 * get_linear_group_id()], "p_1308->g_special_values[i + 30 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 30; i++)
            transparent_crc(p_1308->l_special_values[i], "p_1308->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
