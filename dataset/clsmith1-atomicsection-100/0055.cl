// --atomics 5 ---fake_divergence -g 28,97,1 -l 2,1,1
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


// Seed: 55

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int8_t  f0;
};

struct S1 {
   volatile int32_t  f0;
   int64_t  f1;
   uint64_t  f2;
   volatile uint64_t  f3;
   int64_t  f4;
   int64_t  f5;
   volatile uint32_t  f6;
   uint8_t  f7;
   volatile uint32_t  f8;
   volatile uint32_t  f9;
};

struct S2 {
    int32_t g_2;
    volatile int32_t g_5;
    volatile int32_t g_6;
    volatile int32_t g_7;
    volatile int32_t g_8;
    volatile int32_t g_9;
    int32_t g_10;
    int32_t g_14[9][5][1];
    int32_t g_70;
    volatile int32_t g_76[2];
    volatile int32_t g_77;
    volatile int32_t g_78[9];
    volatile int32_t g_79[10][2][10];
    volatile int32_t g_80;
    volatile int32_t g_81;
    volatile int32_t g_82;
    volatile int32_t g_83[2][2];
    volatile int32_t g_84;
    volatile int32_t g_85;
    volatile int32_t g_86;
    volatile int32_t g_87;
    volatile int32_t g_88;
    volatile int32_t g_89;
    volatile int32_t g_90;
    volatile int32_t g_91[4];
    volatile int32_t g_92;
    volatile int32_t g_93;
    volatile int32_t g_94;
    volatile int32_t g_95;
    volatile int32_t g_96;
    volatile int32_t g_97[1][3][8];
    volatile int32_t g_98;
    volatile int32_t g_99;
    volatile int32_t g_100[5];
    volatile int32_t g_101;
    volatile int32_t g_102;
    volatile int32_t g_103;
    volatile int32_t g_104;
    volatile int32_t g_105;
    volatile int32_t g_106[1];
    volatile int32_t g_107;
    volatile int32_t g_108;
    volatile int32_t g_109;
    volatile int32_t g_110;
    volatile int32_t g_111;
    volatile int32_t g_112;
    volatile int32_t *g_75[5][7][3];
    uint16_t g_140;
    uint16_t g_149[6][9][3];
    uint32_t g_164;
    uint32_t g_187;
    int32_t g_189;
    int8_t g_228;
    int32_t g_242;
    uint16_t *g_264;
    uint16_t **g_263[6][4][5];
    uint16_t g_271;
    uint8_t g_316;
    int32_t *g_355;
    int64_t g_369;
    uint16_t g_383;
    struct S0 g_384;
    int16_t g_391[10][2];
    uint16_t ***g_396;
    uint16_t ****g_395[10][6][4];
    struct S0 g_491;
    uint16_t g_539;
    int32_t *g_552;
    volatile int64_t *g_577;
    volatile int64_t **g_576;
    struct S1 g_640;
    struct S1 *g_639;
    int32_t g_1007;
    uint64_t g_1014;
    struct S1 g_1017;
    int32_t g_1029;
    struct S1 ** volatile g_1063;
    struct S1 ** volatile g_1064;
    struct S0 *g_1071;
    struct S0 * volatile *g_1070;
    uint32_t g_1086;
    volatile int32_t ** volatile g_1089;
    int16_t g_1120;
    int32_t ** volatile g_1121;
    volatile struct S1 g_1123;
    struct S1 g_1182;
    uint32_t g_1217;
    int32_t ** volatile g_1225;
    int32_t ** volatile g_1226;
    int8_t g_1257;
    int32_t ** volatile g_1262;
    uint8_t *g_1271;
    uint64_t *g_1286;
    int32_t ** volatile g_1325[2][9][10];
    int32_t ** volatile g_1326[8];
    int32_t ** volatile g_1327;
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
uint8_t  func_1(struct S2 * p_1328);
int64_t  func_23(uint16_t  p_24, uint16_t  p_25, int32_t * p_26, int32_t * p_27, int32_t * p_28, struct S2 * p_1328);
int8_t  func_31(uint64_t  p_32, struct S2 * p_1328);
uint64_t  func_41(int32_t  p_42, uint16_t  p_43, int32_t * p_44, int32_t * p_45, uint32_t  p_46, struct S2 * p_1328);
uint8_t  func_50(uint8_t  p_51, struct S2 * p_1328);
int8_t  func_52(int32_t * p_53, int32_t  p_54, struct S2 * p_1328);
int32_t * func_55(uint64_t  p_56, int32_t * p_57, uint32_t  p_58, int32_t * p_59, struct S2 * p_1328);
uint32_t  func_66(int32_t  p_67, struct S2 * p_1328);
uint8_t  func_117(int32_t  p_118, struct S2 * p_1328);
uint32_t  func_122(int64_t  p_123, int32_t * p_124, int32_t ** p_125, struct S2 * p_1328);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1328->g_2 p_1328->g_10 p_1328->g_6 p_1328->g_1120 p_1328->g_1121 p_1328->g_552 p_1328->g_1286 p_1328->g_1017.f2 p_1328->g_187 p_1328->g_70 p_1328->g_140 p_1328->g_14 p_1328->g_369 p_1328->g_189 p_1328->g_355 p_1328->g_242 p_1328->g_383 p_1328->g_228 p_1328->g_271 p_1328->g_149 p_1328->g_264 p_1328->g_384 p_1328->g_1182.f2 p_1328->g_1182.f1 p_1328->g_1271 p_1328->g_640.f5 p_1328->g_640.f1 p_1328->g_491.f0 p_1328->g_640.f2 p_1328->g_1086 p_1328->g_1327
 * writes: p_1328->g_2 p_1328->g_10 p_1328->g_1120 p_1328->g_75 p_1328->g_140 p_1328->g_149 p_1328->g_14 p_1328->g_164 p_1328->g_369 p_1328->g_242 p_1328->g_228 p_1328->g_391 p_1328->g_383 p_1328->g_70 p_1328->g_395 p_1328->g_187 p_1328->g_271 p_1328->g_1182.f2 p_1328->g_1182.f7 p_1328->g_539 p_1328->g_552
 */
uint8_t  func_1(struct S2 * p_1328)
{ /* block id: 4 */
    uint32_t l_65 = 0x0C2DF100L;
    uint32_t l_1092[3][7][10] = {{{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L}},{{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L}},{{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L},{4294967293UL,0UL,0UL,4294967293UL,4294967295UL,0x96988E7AL,9UL,0x9FA7044AL,0xE753A331L,0x327E6665L}}};
    int32_t l_1155 = 0x3CAF7CD4L;
    int32_t l_1178 = 5L;
    int32_t l_1196[3];
    struct S0 l_1199 = {-9L};
    int32_t l_1224 = 0x734F496BL;
    int32_t l_1254[9] = {1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L};
    int8_t l_1256 = 0x1FL;
    uint64_t *l_1288 = &p_1328->g_1017.f2;
    int8_t l_1323 = 0x42L;
    uint16_t *l_1324 = &p_1328->g_539;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1196[i] = 0L;
    for (p_1328->g_2 = (-29); (p_1328->g_2 != (-18)); p_1328->g_2 = safe_add_func_int32_t_s_s(p_1328->g_2, 5))
    { /* block id: 7 */
        uint32_t l_16 = 3UL;
        uint32_t l_71 = 0x4BB8686BL;
        uint32_t l_114 = 4294967292UL;
        uint8_t l_991 = 255UL;
        int16_t l_992 = 5L;
        int32_t l_1093[9][1];
        struct S0 *l_1152 = &p_1328->g_491;
        struct S1 *l_1187 = &p_1328->g_640;
        uint16_t *l_1188 = &p_1328->g_149[5][0][1];
        uint16_t **l_1200 = &p_1328->g_264;
        int32_t l_1214 = (-4L);
        int16_t l_1232 = 0L;
        int i, j;
        for (i = 0; i < 9; i++)
        {
            for (j = 0; j < 1; j++)
                l_1093[i][j] = 0x79B00771L;
        }
        for (p_1328->g_10 = 0; (p_1328->g_10 <= 26); p_1328->g_10++)
        { /* block id: 10 */
            int32_t *l_13 = &p_1328->g_14[6][3][0];
            int32_t *l_15 = &p_1328->g_14[6][3][0];
            --l_16;
            return p_1328->g_6;
        }
        for (l_16 = 0; (l_16 <= 45); l_16 = safe_add_func_int16_t_s_s(l_16, 8))
        { /* block id: 16 */
            uint32_t l_47 = 8UL;
            int32_t *l_68 = (void*)0;
            int32_t *l_69[5] = {&p_1328->g_70,&p_1328->g_70,&p_1328->g_70,&p_1328->g_70,&p_1328->g_70};
            int32_t *l_113 = (void*)0;
            int16_t *l_1090 = &l_992;
            uint32_t *l_1091 = &l_71;
            uint16_t *l_1131 = &p_1328->g_383;
            uint64_t *l_1134 = &p_1328->g_1017.f2;
            int8_t l_1150 = 0x05L;
            int32_t l_1168 = 2L;
            int32_t l_1176 = 0L;
            uint8_t l_1179 = 3UL;
            uint16_t **l_1203 = &l_1188;
            uint32_t l_1223 = 0UL;
            int32_t l_1250 = 0x15D68EDAL;
            struct S0 *l_1295[5][6][6] = {{{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384}},{{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384}},{{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384}},{{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384}},{{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384},{&p_1328->g_384,&l_1199,&l_1199,&l_1199,&p_1328->g_491,&p_1328->g_384}}};
            int i, j, k;
            (1 + 1);
        }
    }
    for (p_1328->g_1120 = 0; (p_1328->g_1120 != (-28)); --p_1328->g_1120)
    { /* block id: 857 */
        int32_t l_1299 = (-6L);
        int32_t *l_1300 = &p_1328->g_14[0][0][0];
        if (l_1299)
            break;
        l_1300 = (*p_1328->g_1121);
    }
    (*p_1328->g_1327) = func_55((safe_sub_func_int8_t_s_s(l_1196[2], 255UL)), func_55((*p_1328->g_1286), (*p_1328->g_1121), p_1328->g_187, &l_1196[2], p_1328), ((safe_sub_func_int16_t_s_s((safe_mod_func_int8_t_s_s((((((safe_mul_func_int8_t_s_s((((safe_rshift_func_int16_t_s_u(l_1196[1], ((safe_rshift_func_uint8_t_u_s((((*l_1324) = (((*p_1328->g_1271) = ((p_1328->g_1182.f2++) <= ((safe_add_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((((((safe_div_func_int64_t_s_s(((0x1ED09034L <= 4294967287UL) | l_1323), 0x058296A8AD5FFA08L)) >= l_1196[2]) , l_1196[2]) > 0x79F9648CL) && l_1196[2]) && l_65), l_1256)), p_1328->g_1182.f1)), (-3L))) > (-1L)))) < 1L)) != p_1328->g_640.f5), 7)) <= p_1328->g_1182.f1))) >= FAKE_DIVERGE(p_1328->global_0_offset, get_global_id(0), 10)) | p_1328->g_640.f1), p_1328->g_491.f0)) , (void*)0) == &p_1328->g_2) && 18446744073709551615UL) >= p_1328->g_640.f2), l_1092[0][5][2])), l_1199.f0)) == p_1328->g_1086), &l_1196[1], p_1328);
    return l_1178;
}


/* ------------------------------------------ */
/* 
 * reads : p_1328->g_1086 p_1328->g_355 p_1328->g_189 p_1328->g_1120
 * writes: p_1328->g_1086 p_1328->g_189 p_1328->g_242 p_1328->g_491.f0 p_1328->g_1120
 */
int64_t  func_23(uint16_t  p_24, uint16_t  p_25, int32_t * p_26, int32_t * p_27, int32_t * p_28, struct S2 * p_1328)
{ /* block id: 755 */
    int32_t l_1094 = 0x20A5320AL;
    int32_t *l_1095[2][3];
    int32_t l_1096 = 0x7EBDF314L;
    int8_t l_1097 = 0x2CL;
    int64_t l_1098 = 0x787922619456E19BL;
    int32_t l_1099 = (-1L);
    uint32_t l_1100 = 4294967295UL;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
            l_1095[i][j] = &p_1328->g_242;
    }
    --l_1100;
    for (p_1328->g_1086 = 27; (p_1328->g_1086 > 26); p_1328->g_1086 = safe_sub_func_int64_t_s_s(p_1328->g_1086, 8))
    { /* block id: 759 */
        int16_t l_1115 = 0L;
        int8_t *l_1118 = (void*)0;
        int8_t *l_1119 = &p_1328->g_491.f0;
        (*p_1328->g_355) = 0x56813805L;
        for (p_25 = 0; (p_25 < 50); p_25++)
        { /* block id: 763 */
            return p_24;
        }
        p_1328->g_1120 ^= ((safe_mod_func_int32_t_s_s((safe_sub_func_uint8_t_u_u(p_24, (safe_sub_func_int16_t_s_s(p_1328->g_189, ((safe_add_func_int64_t_s_s(l_1115, 0x60D1C34C1117208DL)) & ((safe_add_func_int32_t_s_s(((0x2CL & ((*l_1119) = 0x63L)) || (p_24 <= ((void*)0 != &p_1328->g_1071))), 0UL)) , 0x67C5CE6994E46B4FL)))))), 4294967293UL)) ^ p_25);
    }
    return p_25;
}


/* ------------------------------------------ */
/* 
 * reads : p_1328->g_10 p_1328->g_164 p_1328->g_369 p_1328->g_228 p_1328->g_355 p_1328->g_189 p_1328->g_242 p_1328->g_1017 p_1328->g_83 p_1328->g_640.f5 p_1328->g_1014 p_1328->g_391 p_1328->g_640.f4 p_1328->g_1029 p_1328->g_383 p_1328->g_6 p_1328->g_14 p_1328->g_1064 p_1328->g_491.f0 p_1328->g_1070 p_1328->g_271 p_1328->g_1086 p_1328->g_75 p_1328->g_1089 p_1328->g_78
 * writes: p_1328->g_10 p_1328->g_164 p_1328->g_369 p_1328->g_228 p_1328->g_1007 p_1328->g_189 p_1328->g_242 p_1328->g_1014 p_1328->g_14 p_1328->g_1017.f5 p_1328->g_1029 p_1328->g_1017.f7 p_1328->g_316 p_1328->g_639 p_1328->g_396 p_1328->g_271 p_1328->g_1086 p_1328->g_75
 */
int8_t  func_31(uint64_t  p_32, struct S2 * p_1328)
{ /* block id: 698 */
    uint32_t l_1021 = 1UL;
    int32_t *l_1062[4];
    uint16_t ***l_1067 = &p_1328->g_263[3][0][2];
    int32_t *l_1073 = &p_1328->g_1007;
    int32_t l_1078 = 0x67C64F44L;
    int32_t l_1080 = 0x5D40A08BL;
    int32_t l_1083[8];
    int i;
    for (i = 0; i < 4; i++)
        l_1062[i] = &p_1328->g_70;
    for (i = 0; i < 8; i++)
        l_1083[i] = 0x484F43C2L;
    for (p_1328->g_10 = 8; (p_1328->g_10 <= (-25)); p_1328->g_10 = safe_sub_func_int8_t_s_s(p_1328->g_10, 6))
    { /* block id: 701 */
        int8_t l_1027 = 0x73L;
        int32_t *l_1061[10] = {&p_1328->g_70,&p_1328->g_70,&p_1328->g_70,&p_1328->g_70,&p_1328->g_70,&p_1328->g_70,&p_1328->g_70,&p_1328->g_70,&p_1328->g_70,&p_1328->g_70};
        int32_t l_1077[1][5] = {{1L,1L,1L,1L,1L}};
        int i, j;
        for (p_1328->g_164 = 0; (p_1328->g_164 > 12); p_1328->g_164 = safe_add_func_uint32_t_u_u(p_1328->g_164, 4))
        { /* block id: 704 */
            struct S0 **l_1000 = (void*)0;
            struct S0 ***l_999 = &l_1000;
            int32_t l_1005 = 0x09321FE3L;
            int32_t l_1026 = 0x3596828BL;
            int16_t *l_1057[10][10] = {{&p_1328->g_391[1][1],&p_1328->g_391[8][1],(void*)0,&p_1328->g_391[0][0],&p_1328->g_391[9][0],&p_1328->g_391[1][1],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[1][1]},{&p_1328->g_391[1][1],&p_1328->g_391[8][1],(void*)0,&p_1328->g_391[0][0],&p_1328->g_391[9][0],&p_1328->g_391[1][1],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[1][1]},{&p_1328->g_391[1][1],&p_1328->g_391[8][1],(void*)0,&p_1328->g_391[0][0],&p_1328->g_391[9][0],&p_1328->g_391[1][1],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[1][1]},{&p_1328->g_391[1][1],&p_1328->g_391[8][1],(void*)0,&p_1328->g_391[0][0],&p_1328->g_391[9][0],&p_1328->g_391[1][1],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[1][1]},{&p_1328->g_391[1][1],&p_1328->g_391[8][1],(void*)0,&p_1328->g_391[0][0],&p_1328->g_391[9][0],&p_1328->g_391[1][1],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[1][1]},{&p_1328->g_391[1][1],&p_1328->g_391[8][1],(void*)0,&p_1328->g_391[0][0],&p_1328->g_391[9][0],&p_1328->g_391[1][1],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[1][1]},{&p_1328->g_391[1][1],&p_1328->g_391[8][1],(void*)0,&p_1328->g_391[0][0],&p_1328->g_391[9][0],&p_1328->g_391[1][1],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[1][1]},{&p_1328->g_391[1][1],&p_1328->g_391[8][1],(void*)0,&p_1328->g_391[0][0],&p_1328->g_391[9][0],&p_1328->g_391[1][1],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[1][1]},{&p_1328->g_391[1][1],&p_1328->g_391[8][1],(void*)0,&p_1328->g_391[0][0],&p_1328->g_391[9][0],&p_1328->g_391[1][1],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[1][1]},{&p_1328->g_391[1][1],&p_1328->g_391[8][1],(void*)0,&p_1328->g_391[0][0],&p_1328->g_391[9][0],&p_1328->g_391[1][1],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[0][0],&p_1328->g_391[1][1]}};
            int32_t l_1079[5][2];
            int32_t l_1084 = 0x213E9467L;
            int i, j;
            for (i = 0; i < 5; i++)
            {
                for (j = 0; j < 2; j++)
                    l_1079[i][j] = 0x39159126L;
            }
            for (p_1328->g_369 = 15; (p_1328->g_369 != (-13)); --p_1328->g_369)
            { /* block id: 707 */
                int32_t l_1020 = 0x0BAC314CL;
                int32_t l_1022 = 2L;
                int32_t *l_1060 = &p_1328->g_70;
                uint16_t ***l_1065 = &p_1328->g_263[3][0][2];
                int32_t l_1081 = 0x3925F676L;
                int32_t l_1082 = (-7L);
                int32_t l_1085 = (-1L);
                for (p_1328->g_228 = 0; (p_1328->g_228 <= 2); p_1328->g_228 += 1)
                { /* block id: 710 */
                    uint64_t *l_1006 = (void*)0;
                    int32_t l_1012 = 0L;
                    uint64_t *l_1013 = &p_1328->g_1014;
                    int32_t *l_1023 = (void*)0;
                    int32_t *l_1024 = &p_1328->g_14[6][3][0];
                    int64_t *l_1025 = &p_1328->g_1017.f5;
                    int32_t *l_1028 = &p_1328->g_1029;
                    uint8_t *l_1034 = &p_1328->g_1017.f7;
                    uint8_t *l_1058 = (void*)0;
                    uint8_t *l_1059 = &p_1328->g_316;
                    uint16_t ***l_1069 = &p_1328->g_263[0][0][0];
                    int i, j, k;
                    (*l_1028) |= (l_1027 = (l_1026 ^= (((void*)0 == l_999) , (((*l_1025) = (((safe_mod_func_uint8_t_u_u((((safe_rshift_func_int8_t_s_s(p_32, 5)) && ((((p_1328->g_1007 = (FAKE_DIVERGE(p_1328->group_0_offset, get_group_id(0), 10) >= l_1005)) , (((*p_1328->g_355) |= 0x5791D8B2L) ^ ((*l_1024) = (safe_add_func_int32_t_s_s((((((safe_rshift_func_int16_t_s_u((((*l_1013) = l_1012) , ((safe_rshift_func_uint16_t_u_s((((((p_1328->g_1017 , (l_1022 &= ((l_1020 & ((p_1328->g_83[1][0] > p_1328->g_1017.f7) < p_32)) == l_1021))) || 0x19L) , 0x5065AA1D0BCE2CF5L) | p_32) , l_1021), 7)) && 0xDE5508F4L)), p_32)) != l_1020) < p_1328->g_640.f5) && p_1328->g_1014) , 0x12F9D060L), 0x243CB6D8L))))) | p_1328->g_391[9][0]) , (-8L))) , l_1005), p_1328->g_640.f4)) < 0x8C4CBD05L) > p_32)) >= 0x014A3F1BA63C8857L))));
                    (*p_1328->g_355) = (safe_rshift_func_uint16_t_u_s((safe_lshift_func_uint8_t_u_s(((*l_1034) = 0x93L), 3)), (safe_add_func_int16_t_s_s(l_1026, (FAKE_DIVERGE(p_1328->local_1_offset, get_local_id(1), 10) ^ ((safe_lshift_func_int16_t_s_u(l_1026, (FAKE_DIVERGE(p_1328->local_1_offset, get_local_id(1), 10) , (safe_lshift_func_int16_t_s_s(0x2BEAL, 11))))) > (safe_sub_func_int64_t_s_s((p_32 != (safe_mod_func_int16_t_s_s(((((safe_div_func_uint32_t_u_u(((p_1328->g_383 != ((*l_1059) = (safe_div_func_int32_t_s_s((safe_div_func_int8_t_s_s((safe_mod_func_uint64_t_u_u((l_1005 |= (p_1328->g_6 || (1L == (((safe_add_func_uint32_t_u_u((+(l_1057[5][6] != &p_1328->g_391[9][1])), 2L)) & p_1328->g_14[6][3][0]) >= 0UL)))), (*l_1024))), 0x09L)), p_1328->g_383)))) <= p_1328->g_1017.f5), 0x79056E72L)) >= p_1328->g_1017.f5) & l_1020) , 0x743BL), p_32))), p_32))))))));
                    if ((l_1060 == (l_1061[5] = &p_1328->g_70)))
                    { /* block id: 725 */
                        (*p_1328->g_355) = ((void*)0 == l_1062[3]);
                        (*p_1328->g_1064) = &p_1328->g_640;
                    }
                    else
                    { /* block id: 728 */
                        uint16_t ****l_1066 = &l_1065;
                        uint16_t ****l_1068 = &p_1328->g_396;
                        int32_t l_1072 = 0x36B3FB2FL;
                        (*l_1028) = ((*p_1328->g_355) |= (((*l_1066) = l_1065) != (l_1069 = (p_1328->g_491.f0 , ((*l_1068) = l_1067)))));
                        l_1072 = (p_1328->g_1070 == ((*l_999) = (void*)0));
                        return p_32;
                    }
                    for (p_1328->g_271 = 0; (p_1328->g_271 <= 2); p_1328->g_271 += 1)
                    { /* block id: 740 */
                        int32_t *l_1074 = &l_1022;
                        int32_t *l_1075 = &l_1005;
                        int32_t *l_1076[4];
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                            l_1076[i] = &l_1022;
                        l_1073 = l_1061[5];
                        p_1328->g_1086++;
                        (*p_1328->g_1089) = p_1328->g_75[(p_1328->g_228 + 2)][(p_1328->g_228 + 3)][p_1328->g_228];
                        return p_1328->g_1017.f6;
                    }
                }
            }
        }
    }
    return p_1328->g_78[8];
}


/* ------------------------------------------ */
/* 
 * reads : p_1328->g_90
 * writes:
 */
uint64_t  func_41(int32_t  p_42, uint16_t  p_43, int32_t * p_44, int32_t * p_45, uint32_t  p_46, struct S2 * p_1328)
{ /* block id: 696 */
    return p_1328->g_90;
}


/* ------------------------------------------ */
/* 
 * reads : p_1328->g_140 p_1328->g_264 p_1328->g_149 p_1328->g_14 p_1328->g_552 p_1328->g_640.f2 p_1328->g_355 p_1328->g_189 p_1328->g_242 p_1328->g_2 p_1328->g_10 p_1328->g_391
 * writes: p_1328->g_491.f0 p_1328->g_384.f0 p_1328->g_369 p_1328->g_189 p_1328->g_10 p_1328->g_640.f2 p_1328->g_383 p_1328->g_140 p_1328->g_552 p_1328->g_242
 */
uint8_t  func_50(uint8_t  p_51, struct S2 * p_1328)
{ /* block id: 383 */
    uint8_t l_697 = 1UL;
    int32_t l_704 = 0x7C11F9D2L;
    int8_t *l_717 = &p_1328->g_491.f0;
    int8_t *l_718 = (void*)0;
    int8_t *l_719[4] = {&p_1328->g_384.f0,&p_1328->g_384.f0,&p_1328->g_384.f0,&p_1328->g_384.f0};
    int64_t *l_720 = (void*)0;
    int64_t *l_721[1];
    struct S1 **l_730 = &p_1328->g_639;
    uint64_t *l_990 = &p_1328->g_640.f2;
    int i;
    for (i = 0; i < 1; i++)
        l_721[i] = &p_1328->g_640.f1;
    (*p_1328->g_552) = (safe_add_func_uint16_t_u_u(1UL, (safe_mul_func_int64_t_s_s((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), l_697)), ((p_1328->g_140 > (p_1328->g_369 = (p_51 && (safe_div_func_uint32_t_u_u(((safe_add_func_int8_t_s_s((p_51 > (((FAKE_DIVERGE(p_1328->group_0_offset, get_group_id(0), 10) , (0xF622E6635BAC7589L | (((safe_rshift_func_uint16_t_u_u((l_704 = l_697), ((p_1328->g_384.f0 = ((*l_717) = ((((safe_add_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s((safe_mod_func_uint8_t_u_u((((((safe_lshift_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(((l_697 , (safe_add_func_int16_t_s_s(((7UL && 1UL) | p_51), (*p_1328->g_264)))) && l_697), l_697)), l_697)) | p_51) ^ FAKE_DIVERGE(p_1328->global_0_offset, get_global_id(0), 10)) | 255UL) > 3UL), FAKE_DIVERGE(p_1328->local_2_offset, get_local_id(2), 10))), 3)), l_697)) != l_697) , 1L) , 0x53L))) , 65528UL))) == l_697) == 0x2B71728DL))) <= p_51) ^ 0x56L)), l_697)) ^ GROUP_DIVERGE(1, 1)), p_1328->g_14[6][3][0]))))) <= 2L)))));
    for (p_1328->g_640.f2 = 0; (p_1328->g_640.f2 > 8); p_1328->g_640.f2 = safe_add_func_int8_t_s_s(p_1328->g_640.f2, 9))
    { /* block id: 391 */
        struct S1 **l_729 = &p_1328->g_639;
        int32_t l_733[2][6] = {{0x1AB56BAEL,0x1AB56BAEL,0x1AB56BAEL,0x1AB56BAEL,0x1AB56BAEL,0x1AB56BAEL},{0x1AB56BAEL,0x1AB56BAEL,0x1AB56BAEL,0x1AB56BAEL,0x1AB56BAEL,0x1AB56BAEL}};
        int i, j;
        for (p_1328->g_383 = 27; (p_1328->g_383 <= 3); p_1328->g_383 = safe_sub_func_uint16_t_u_u(p_1328->g_383, 5))
        { /* block id: 394 */
            for (p_1328->g_140 = 0; (p_1328->g_140 == 42); p_1328->g_140 = safe_add_func_uint64_t_u_u(p_1328->g_140, 4))
            { /* block id: 397 */
                int32_t **l_728 = &p_1328->g_552;
                (*l_728) = &p_1328->g_2;
                (*p_1328->g_355) &= ((l_729 == l_730) < (safe_sub_func_uint32_t_u_u(p_51, l_704)));
            }
            if (l_704)
                continue;
        }
        if (l_733[1][4])
        { /* block id: 403 */
            (*p_1328->g_355) ^= l_704;
            if ((*p_1328->g_552))
                break;
        }
        else
        { /* block id: 406 */
            return l_733[1][3];
        }
    }
    if ((atomic_inc(&p_1328->g_atomic_input[5 * get_linear_group_id() + 2]) == 5))
    { /* block id: 411 */
        uint8_t l_734 = 0x03L;
        int32_t l_735 = 0x766A691AL;
        uint32_t l_736 = 0xD054F546L;
        uint32_t l_737 = 4294967295UL;
        uint8_t l_738 = 0x6DL;
        uint32_t l_739[2];
        uint16_t l_740 = 3UL;
        int i;
        for (i = 0; i < 2; i++)
            l_739[i] = 0x1E07EBCDL;
        if ((((((l_735 = l_734) , (l_737 = l_736)) , l_738) , (l_739[0] &= 9UL)) , l_740))
        { /* block id: 415 */
            int32_t l_742 = 0L;
            int32_t *l_741 = &l_742;
            int32_t l_743 = (-1L);
            uint8_t l_816 = 0xB2L;
            l_741 = (void*)0;
            if (l_743)
            { /* block id: 417 */
                int32_t l_744 = (-3L);
                uint64_t l_763 = 0x154FBB949EDCB538L;
                int32_t l_764 = 0x0821260DL;
                uint64_t l_765 = 0x60663AFFD1F01BBFL;
                uint64_t l_766 = 0x652ED03CAB9A1DCAL;
                int32_t l_767[2][5] = {{0x2C2BC04EL,0x0F3C4272L,3L,0x0F3C4272L,0x2C2BC04EL},{0x2C2BC04EL,0x0F3C4272L,3L,0x0F3C4272L,0x2C2BC04EL}};
                uint16_t l_768 = 65535UL;
                int16_t l_769 = 0x37A3L;
                int32_t l_770 = 0x54566DB8L;
                int32_t *l_771 = (void*)0;
                int i, j;
                for (l_744 = 1; (l_744 >= 0); l_744 -= 1)
                { /* block id: 420 */
                    int32_t l_745 = (-10L);
                    uint32_t l_755[10][3] = {{0x6693738BL,0x36FD075CL,4294967295UL},{0x6693738BL,0x36FD075CL,4294967295UL},{0x6693738BL,0x36FD075CL,4294967295UL},{0x6693738BL,0x36FD075CL,4294967295UL},{0x6693738BL,0x36FD075CL,4294967295UL},{0x6693738BL,0x36FD075CL,4294967295UL},{0x6693738BL,0x36FD075CL,4294967295UL},{0x6693738BL,0x36FD075CL,4294967295UL},{0x6693738BL,0x36FD075CL,4294967295UL},{0x6693738BL,0x36FD075CL,4294967295UL}};
                    int8_t l_758[7][9][4] = {{{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L}},{{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L}},{{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L}},{{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L}},{{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L}},{{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L}},{{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L},{(-9L),1L,0x17L,0x11L}}};
                    uint8_t l_759 = 0x44L;
                    int i, j, k;
                    for (l_745 = 0; (l_745 <= 3); l_745 += 1)
                    { /* block id: 423 */
                        uint32_t l_746 = 0x9F1E4E67L;
                        int8_t l_747 = 0L;
                        int32_t l_748 = 1L;
                        int32_t *l_749 = &l_748;
                        int32_t l_750 = 3L;
                        struct S0 l_751 = {4L};
                        struct S0 l_752 = {1L};
                        uint32_t l_753[1];
                        int64_t l_754 = 1L;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_753[i] = 0x9D958C69L;
                        l_742 = ((l_747 ^= l_746) , l_748);
                        l_741 = l_749;
                        l_752 = ((FAKE_DIVERGE(p_1328->global_2_offset, get_global_id(2), 10) , l_750) , l_751);
                        l_754 = ((*l_741) &= l_753[0]);
                    }
                    l_742 = ((--l_755[4][2]) , l_758[6][6][1]);
                    l_741 = (l_759 , (void*)0);
                    for (l_755[4][2] = 0; (l_755[4][2] <= 1); l_755[4][2] += 1)
                    { /* block id: 436 */
                        uint32_t l_760[10][3] = {{4294967295UL,4294967287UL,4294967295UL},{4294967295UL,4294967287UL,4294967295UL},{4294967295UL,4294967287UL,4294967295UL},{4294967295UL,4294967287UL,4294967295UL},{4294967295UL,4294967287UL,4294967295UL},{4294967295UL,4294967287UL,4294967295UL},{4294967295UL,4294967287UL,4294967295UL},{4294967295UL,4294967287UL,4294967295UL},{4294967295UL,4294967287UL,4294967295UL},{4294967295UL,4294967287UL,4294967295UL}};
                        int16_t l_761 = 0x64D0L;
                        uint8_t l_762 = 0xA5L;
                        int i, j;
                        l_742 |= l_760[7][0];
                        l_745 |= (l_761 , l_762);
                    }
                }
                l_770 = (l_744 = ((l_766 ^= ((l_763 , (l_764 , l_765)) , 0x0D737BE8876B20BEL)) , (l_767[0][2] , (l_769 ^= (l_742 = l_768)))));
                l_741 = (void*)0;
                l_741 = l_771;
            }
            else
            { /* block id: 448 */
                int16_t l_772 = 0x5E7DL;
                uint16_t l_773 = 0x72B1L;
                uint8_t l_776 = 255UL;
                int16_t l_777 = (-5L);
                uint64_t l_778 = 0xAD4D27EEB3754B92L;
                int32_t l_779 = 0x701DFB37L;
                uint32_t l_780 = 1UL;
                int32_t l_781 = 1L;
                l_778 ^= ((l_773--) , (l_777 = (l_742 = l_776)));
                if (((l_780 &= (l_779 = 0x5C9A5D69L)) , l_781))
                { /* block id: 455 */
                    int32_t l_782 = 0x7AE53EF2L;
                    struct S0 l_785 = {0x3DL};
                    struct S0 l_786 = {4L};
                    struct S0 l_787 = {1L};
                    for (l_782 = 0; (l_782 != 4); l_782++)
                    { /* block id: 458 */
                        l_779 ^= (l_781 = 1L);
                    }
                    l_787 = (l_786 = l_785);
                    for (l_786.f0 = 5; (l_786.f0 <= 6); l_786.f0 = safe_add_func_uint16_t_u_u(l_786.f0, 5))
                    { /* block id: 466 */
                        uint64_t l_790 = 0xFBB06526FC3512A8L;
                        l_781 = l_790;
                    }
                }
                else
                { /* block id: 469 */
                    int32_t l_791[8][2][1];
                    int32_t l_800 = 1L;
                    int i, j, k;
                    for (i = 0; i < 8; i++)
                    {
                        for (j = 0; j < 2; j++)
                        {
                            for (k = 0; k < 1; k++)
                                l_791[i][j][k] = 0L;
                        }
                    }
                    for (l_791[5][0][0] = (-14); (l_791[5][0][0] == 1); ++l_791[5][0][0])
                    { /* block id: 472 */
                        int64_t l_794[4][3][2] = {{{0x015870F8C7052B02L,0x015870F8C7052B02L},{0x015870F8C7052B02L,0x015870F8C7052B02L},{0x015870F8C7052B02L,0x015870F8C7052B02L}},{{0x015870F8C7052B02L,0x015870F8C7052B02L},{0x015870F8C7052B02L,0x015870F8C7052B02L},{0x015870F8C7052B02L,0x015870F8C7052B02L}},{{0x015870F8C7052B02L,0x015870F8C7052B02L},{0x015870F8C7052B02L,0x015870F8C7052B02L},{0x015870F8C7052B02L,0x015870F8C7052B02L}},{{0x015870F8C7052B02L,0x015870F8C7052B02L},{0x015870F8C7052B02L,0x015870F8C7052B02L},{0x015870F8C7052B02L,0x015870F8C7052B02L}}};
                        uint32_t l_795 = 0x16EBBFC3L;
                        int i, j, k;
                        l_795 = l_794[0][0][1];
                    }
                    for (l_791[3][0][0] = 25; (l_791[3][0][0] >= 7); l_791[3][0][0] = safe_sub_func_int64_t_s_s(l_791[3][0][0], 6))
                    { /* block id: 477 */
                        struct S0 l_798 = {1L};
                        struct S0 l_799 = {0x51L};
                        l_799 = (l_798 = l_798);
                    }
                    if ((l_742 = (l_781 = l_800)))
                    { /* block id: 483 */
                        uint32_t l_801 = 0xE14FD381L;
                        uint64_t l_804 = 4UL;
                        int32_t l_805 = 0L;
                        int16_t l_806 = 0x390DL;
                        uint32_t l_807 = 0x9E77470AL;
                        struct S0 l_808 = {-7L};
                        struct S0 l_809 = {0x4DL};
                        --l_801;
                        l_741 = (void*)0;
                        l_807 &= ((l_804 , (l_806 = l_805)) , (l_805 |= 0x7852B847L));
                        l_809 = l_808;
                    }
                    else
                    { /* block id: 490 */
                        int32_t l_811[7] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                        int32_t *l_810[6][5][8] = {{{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]}},{{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]}},{{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]}},{{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]}},{{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]}},{{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]},{(void*)0,&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6],&l_811[6]}}};
                        int32_t *l_812 = (void*)0;
                        struct S0 l_813[6] = {{-1L},{-1L},{-1L},{-1L},{-1L},{-1L}};
                        struct S0 l_814 = {7L};
                        struct S0 l_815[1] = {{0x5DL}};
                        int i, j, k;
                        l_741 = l_810[3][4][4];
                        l_741 = l_812;
                        l_815[0] = (l_814 = l_813[5]);
                    }
                }
            }
            if (l_816)
            { /* block id: 498 */
                struct S0 l_818 = {8L};
                struct S0 *l_817 = &l_818;
                struct S0 *l_819 = (void*)0;
                int32_t l_821 = (-7L);
                int32_t *l_820 = &l_821;
                uint32_t l_850 = 0xF5DCBC8AL;
                uint32_t l_851 = 0x6F41DE3DL;
                struct S0 l_852 = {-1L};
                uint16_t l_853 = 0x0F2FL;
                int32_t l_856[10] = {0x74B0DE1AL,0x2525841AL,0x1B83F477L,0x2525841AL,0x74B0DE1AL,0x74B0DE1AL,0x2525841AL,0x1B83F477L,0x2525841AL,0x74B0DE1AL};
                uint16_t l_857 = 0x0E1EL;
                uint8_t l_858 = 0x05L;
                int i;
                l_819 = (l_817 = l_817);
                l_741 = l_820;
                if ((GROUP_DIVERGE(0, 1) , (-1L)))
                { /* block id: 502 */
                    uint32_t l_822 = 0xB9E5CC94L;
                    int64_t l_823 = 0x5BED12D4E4318BD5L;
                    int32_t l_825 = (-6L);
                    int32_t *l_824 = &l_825;
                    l_820 = (l_822 , (l_823 , l_824));
                }
                else
                { /* block id: 504 */
                    int16_t l_826 = (-1L);
                    if (l_826)
                    { /* block id: 505 */
                        int8_t l_827 = 0L;
                        int8_t l_828 = 0x34L;
                        int64_t l_829 = 0x69EABAE7D04D774CL;
                        int32_t l_830 = 0x22B3B036L;
                        int8_t l_831 = (-6L);
                        uint64_t l_832 = 0UL;
                        int32_t l_833 = 1L;
                        int8_t l_834 = 0x15L;
                        uint32_t l_835 = 0UL;
                        int32_t l_838 = (-2L);
                        l_820 = (l_827 , (((l_818.f0 = l_828) , (l_833 = (l_832 = (((l_826 = l_829) , l_830) , l_831)))) , (void*)0));
                        l_835--;
                        l_742 = ((*l_741) = l_838);
                    }
                    else
                    { /* block id: 514 */
                        int64_t l_839 = (-1L);
                        uint16_t l_840[2][3] = {{65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL}};
                        int32_t l_841 = 0x050C5AFEL;
                        int32_t l_842 = 0x3C0C6FAFL;
                        struct S0 l_843 = {-4L};
                        int32_t l_844 = 0x4039A3C8L;
                        int32_t l_845 = 0L;
                        int16_t l_846 = 2L;
                        uint8_t l_847 = 7UL;
                        int i, j;
                        (*l_741) &= ((l_839 , l_840[1][2]) , l_841);
                        (*l_819) = (l_842 , l_843);
                        l_847++;
                        (*l_820) = 0x685D213CL;
                    }
                }
                (*l_741) = (((l_851 |= l_850) , ((l_852 , (--l_853)) , (l_856[7] , l_857))) , l_858);
            }
            else
            { /* block id: 524 */
                int32_t l_859 = 1L;
                for (l_859 = 11; (l_859 < 2); l_859 = safe_sub_func_uint8_t_u_u(l_859, 7))
                { /* block id: 527 */
                    int32_t l_862 = (-5L);
                    for (l_862 = 0; (l_862 > 9); l_862++)
                    { /* block id: 530 */
                        int64_t l_865 = 0x71E54564C838D1ABL;
                        int32_t l_866 = 1L;
                        uint16_t l_867 = 9UL;
                        uint16_t l_870 = 0xD37EL;
                        uint32_t l_871 = 0x074A6DE7L;
                        uint32_t l_872[6];
                        struct S0 l_873 = {0x59L};
                        struct S0 l_874 = {0L};
                        int i;
                        for (i = 0; i < 6; i++)
                            l_872[i] = 0x29DDFCB7L;
                        --l_867;
                        l_742 = (l_870 , (l_871 , l_872[0]));
                        l_873 = (l_874 = l_873);
                    }
                    l_862 = 8L;
                }
                for (l_859 = 0; (l_859 >= (-19)); l_859 = safe_sub_func_uint32_t_u_u(l_859, 1))
                { /* block id: 540 */
                    uint8_t l_877[7] = {0xA3L,0xA3L,0xA3L,0xA3L,0xA3L,0xA3L,0xA3L};
                    int i;
                    l_877[6] |= (l_742 ^= 0x467CD2BCL);
                    for (l_877[6] = (-14); (l_877[6] == 53); l_877[6] = safe_add_func_uint16_t_u_u(l_877[6], 1))
                    { /* block id: 545 */
                        int8_t l_880[4];
                        int32_t l_881 = 0x4970BA2AL;
                        int16_t l_882 = 4L;
                        int i;
                        for (i = 0; i < 4; i++)
                            l_880[i] = 1L;
                        l_880[1] = 1L;
                        l_882 ^= l_881;
                    }
                }
            }
            for (l_816 = 11; (l_816 < 35); l_816 = safe_add_func_uint16_t_u_u(l_816, 1))
            { /* block id: 553 */
                uint32_t l_885[5] = {4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL};
                int i;
                l_885[3]++;
            }
        }
        else
        { /* block id: 556 */
            int32_t l_888 = 0x570C2783L;
            int64_t l_898 = 0x70AF8A320A31178BL;
            int8_t l_899 = 0x37L;
            uint8_t l_900 = 0x6FL;
            int16_t l_901 = 0x7BEFL;
            struct S0 l_902 = {0x6BL};
            struct S0 l_903 = {0x68L};
            int16_t l_904 = (-1L);
            uint8_t l_905[9] = {0x72L,0x72L,0x72L,0x72L,0x72L,0x72L,0x72L,0x72L,0x72L};
            int i;
            for (l_888 = (-14); (l_888 >= (-29)); l_888 = safe_sub_func_int32_t_s_s(l_888, 6))
            { /* block id: 559 */
                uint8_t l_891[10][6] = {{7UL,0x33L,9UL,0xF9L,9UL,0x33L},{7UL,0x33L,9UL,0xF9L,9UL,0x33L},{7UL,0x33L,9UL,0xF9L,9UL,0x33L},{7UL,0x33L,9UL,0xF9L,9UL,0x33L},{7UL,0x33L,9UL,0xF9L,9UL,0x33L},{7UL,0x33L,9UL,0xF9L,9UL,0x33L},{7UL,0x33L,9UL,0xF9L,9UL,0x33L},{7UL,0x33L,9UL,0xF9L,9UL,0x33L},{7UL,0x33L,9UL,0xF9L,9UL,0x33L},{7UL,0x33L,9UL,0xF9L,9UL,0x33L}};
                int32_t *l_892 = (void*)0;
                int32_t *l_893 = (void*)0;
                int32_t l_895 = 0x0CA2A49FL;
                int32_t *l_894 = &l_895;
                uint32_t l_896 = 0x81E2E2B4L;
                int32_t l_897 = 3L;
                int i, j;
                l_892 = (l_891[4][2] , (l_893 = l_892));
                l_894 = (void*)0;
                l_897 |= l_896;
            }
            l_903 = (((l_899 = l_898) , ((l_900 = 0x04B8F678L) , (l_735 = l_901))) , l_902);
            if ((l_905[0] |= l_904))
            { /* block id: 570 */
                int32_t l_907 = 0x0CFA3CDFL;
                int32_t *l_906 = &l_907;
                int32_t *l_908 = &l_907;
                l_908 = l_906;
            }
            else
            { /* block id: 572 */
                int32_t l_909 = 0x0228BAA9L;
                for (l_909 = 0; (l_909 >= 0); l_909 -= 1)
                { /* block id: 575 */
                    int32_t l_910 = (-1L);
                    int16_t l_934[2];
                    uint32_t l_935 = 0xA249E099L;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_934[i] = 1L;
                    for (l_910 = 0; (l_910 <= 2); l_910 += 1)
                    { /* block id: 578 */
                        int32_t l_911 = 0x7E525EF8L;
                        uint32_t l_912 = 0UL;
                        uint32_t l_913 = 3UL;
                        struct S0 l_914 = {0x28L};
                        int8_t l_915 = (-1L);
                        int32_t l_916 = 0L;
                        uint8_t l_917 = 0xBCL;
                        uint32_t l_920[6][2][1] = {{{0xF1584AC8L},{0xF1584AC8L}},{{0xF1584AC8L},{0xF1584AC8L}},{{0xF1584AC8L},{0xF1584AC8L}},{{0xF1584AC8L},{0xF1584AC8L}},{{0xF1584AC8L},{0xF1584AC8L}},{{0xF1584AC8L},{0xF1584AC8L}}};
                        uint64_t l_921 = 1UL;
                        int i, j, k;
                        l_913 |= (l_911 , (l_888 = l_912));
                        l_903 = l_914;
                        l_917--;
                        l_921 = (l_888 |= l_920[0][1][0]);
                    }
                    for (l_910 = 2; (l_910 >= 0); l_910 -= 1)
                    { /* block id: 588 */
                        int8_t l_922 = 0L;
                        int8_t l_923[3];
                        int32_t l_924 = 0x13A3CD30L;
                        uint16_t l_925 = 65535UL;
                        struct S0 l_926 = {-3L};
                        uint16_t l_927[8] = {0xE8BFL,0x9785L,0xE8BFL,0xE8BFL,0x9785L,0xE8BFL,0xE8BFL,0x9785L};
                        uint64_t l_928 = 0x345C7E70C7F79922L;
                        int32_t l_929 = (-10L);
                        struct S0 l_930 = {0x64L};
                        uint16_t l_931 = 0x236DL;
                        struct S0 l_932 = {0x6EL};
                        int i;
                        for (i = 0; i < 3; i++)
                            l_923[i] = (-10L);
                        l_888 = l_922;
                        l_902 = (((l_899 = l_923[1]) , ((l_924 , ((l_925 , (l_926 , 0x15FF57ECL)) , ((l_928 = l_927[6]) , (l_929 , l_930)))) , (l_899 = l_931))) , l_932);
                    }
                    for (l_910 = 1; (l_910 >= 0); l_910 -= 1)
                    { /* block id: 597 */
                        int32_t l_933 = (-1L);
                        l_888 &= l_933;
                        l_888 &= 0x4A6F496CL;
                    }
                    l_935--;
                    for (l_935 = 0; (l_935 <= 0); l_935 += 1)
                    { /* block id: 604 */
                        struct S0 l_938 = {-1L};
                        l_902 = (l_938 = l_938);
                        l_888 = 0x4BC8B274L;
                        l_888 ^= 1L;
                    }
                }
            }
            for (l_888 = 2; (l_888 >= 0); l_888 -= 1)
            { /* block id: 614 */
                int32_t l_939 = (-1L);
                int8_t l_970 = 0x41L;
                int32_t l_971[5][9] = {{0x66DA95DAL,0L,(-1L),0x2373062CL,0L,0x2373062CL,(-1L),0L,0x66DA95DAL},{0x66DA95DAL,0L,(-1L),0x2373062CL,0L,0x2373062CL,(-1L),0L,0x66DA95DAL},{0x66DA95DAL,0L,(-1L),0x2373062CL,0L,0x2373062CL,(-1L),0L,0x66DA95DAL},{0x66DA95DAL,0L,(-1L),0x2373062CL,0L,0x2373062CL,(-1L),0L,0x66DA95DAL},{0x66DA95DAL,0L,(-1L),0x2373062CL,0L,0x2373062CL,(-1L),0L,0x66DA95DAL}};
                int8_t l_972 = 0x5BL;
                int i, j;
                for (l_939 = 2; (l_939 >= 0); l_939 -= 1)
                { /* block id: 617 */
                    int32_t l_941[7];
                    int32_t *l_940 = &l_941[4];
                    int i;
                    for (i = 0; i < 7; i++)
                        l_941[i] = 0x034B31F1L;
                    l_940 = (void*)0;
                    for (l_941[4] = 0; (l_941[4] <= 1); l_941[4] += 1)
                    { /* block id: 621 */
                        int32_t *l_942[2][3];
                        int32_t l_943 = 0x533E8DC1L;
                        uint32_t l_944 = 0x12BDE0FFL;
                        int i, j;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_942[i][j] = (void*)0;
                        }
                        l_940 = l_942[0][1];
                        l_944 = (l_943 = p_1328->g_391[(l_941[4] + 8)][l_941[4]]);
                    }
                    for (l_941[4] = 0; (l_941[4] <= 1); l_941[4] += 1)
                    { /* block id: 628 */
                        struct S0 l_945 = {0x2DL};
                        int16_t l_946[2];
                        uint16_t l_947 = 65526UL;
                        int16_t l_950 = (-5L);
                        int32_t *l_951 = (void*)0;
                        int i, j;
                        for (i = 0; i < 2; i++)
                            l_946[i] = 0x4137L;
                        l_903 = l_945;
                        l_946[1] = p_1328->g_391[(l_941[4] + 5)][l_941[4]];
                        --l_947;
                        l_951 = ((l_738 = (l_950 , GROUP_DIVERGE(0, 1))) , l_951);
                    }
                }
                for (l_939 = 0; (l_939 <= 2); l_939 += 1)
                { /* block id: 638 */
                    int32_t l_953 = 0x28524636L;
                    int32_t *l_952 = &l_953;
                    uint16_t l_954 = 65535UL;
                    uint64_t l_955 = 0UL;
                    uint64_t l_956 = 18446744073709551612UL;
                    l_952 = l_952;
                    l_955 |= l_954;
                    l_956 = 1L;
                    for (l_956 = 0; (l_956 <= 1); l_956 += 1)
                    { /* block id: 644 */
                        uint64_t l_957 = 0x9D24937307AE962CL;
                        uint64_t l_960 = 0UL;
                        int i, j;
                        (*l_952) = p_1328->g_391[(l_888 + 2)][l_956];
                        --l_957;
                        (*l_952) ^= l_739[l_956];
                        --l_960;
                    }
                    for (l_953 = 0; (l_953 <= 3); l_953 += 1)
                    { /* block id: 652 */
                        int8_t l_963 = 0L;
                        int64_t l_964 = 0x7691EF93DC65BD1BL;
                        uint32_t l_965 = 0xE3CA55DDL;
                        uint32_t l_968 = 0xE3C56AA2L;
                        uint16_t l_969[9][4][7];
                        int i, j, k;
                        for (i = 0; i < 9; i++)
                        {
                            for (j = 0; j < 4; j++)
                            {
                                for (k = 0; k < 7; k++)
                                    l_969[i][j][k] = 0xF6CAL;
                            }
                        }
                        l_965--;
                        l_969[6][3][5] ^= l_968;
                    }
                }
                l_972 ^= (l_971[3][8] &= l_970);
                for (l_970 = 1; (l_970 >= 0); l_970 -= 1)
                { /* block id: 661 */
                    int32_t l_973 = 0L;
                    int8_t l_975 = 0L;
                    int8_t l_976 = 0x3DL;
                    int32_t *l_985 = (void*)0;
                    for (l_973 = 0; (l_973 <= 1); l_973 += 1)
                    { /* block id: 664 */
                        int8_t l_974 = 9L;
                        int i, j;
                        l_974 &= (p_1328->g_391[(l_970 + 3)][l_973] , 0x50A56A6AL);
                    }
                    if ((l_971[3][8] ^= (l_975 , ((l_740 = l_976) , 0x6D3FCDD6L))))
                    { /* block id: 669 */
                        uint32_t l_977[4] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL};
                        int32_t l_979 = (-4L);
                        int32_t *l_978 = &l_979;
                        int32_t *l_980[5][8] = {{&l_979,&l_979,&l_979,&l_979,&l_979,&l_979,&l_979,&l_979},{&l_979,&l_979,&l_979,&l_979,&l_979,&l_979,&l_979,&l_979},{&l_979,&l_979,&l_979,&l_979,&l_979,&l_979,&l_979,&l_979},{&l_979,&l_979,&l_979,&l_979,&l_979,&l_979,&l_979,&l_979},{&l_979,&l_979,&l_979,&l_979,&l_979,&l_979,&l_979,&l_979}};
                        uint32_t l_981 = 0x3A7BE8C1L;
                        int i, j;
                        l_971[3][8] = l_977[2];
                        l_980[1][5] = l_978;
                        l_971[3][5] = (l_939 = l_981);
                    }
                    else
                    { /* block id: 674 */
                        uint64_t l_982 = 0UL;
                        --l_982;
                    }
                    l_985 = (void*)0;
                    l_971[0][2] &= 0x139F0ACAL;
                    for (l_973 = 0; (l_973 >= 0); l_973 -= 1)
                    { /* block id: 681 */
                        struct S0 l_986 = {1L};
                        int16_t l_987 = 0x291FL;
                        int32_t *l_988 = &p_1328->g_14[(l_970 + 5)][(l_973 + 4)][l_973];
                        int32_t *l_989 = &p_1328->g_14[(l_970 + 5)][(l_973 + 4)][l_973];
                        int i, j, k;
                        l_939 ^= (l_986 , p_1328->g_14[(l_970 + 5)][(l_973 + 4)][l_973]);
                        l_987 ^= (-1L);
                        l_989 = (l_985 = l_988);
                    }
                }
            }
        }
        unsigned int result = 0;
        result += l_734;
        result += l_735;
        result += l_736;
        result += l_737;
        result += l_738;
        int l_739_i0;
        for (l_739_i0 = 0; l_739_i0 < 2; l_739_i0++) {
            result += l_739[l_739_i0];
        }
        result += l_740;
        atomic_add(&p_1328->g_special_values[5 * get_linear_group_id() + 2], result);
    }
    else
    { /* block id: 690 */
        (1 + 1);
    }
    (*p_1328->g_355) &= (((*l_990) = FAKE_DIVERGE(p_1328->global_1_offset, get_global_id(1), 10)) <= l_697);
    return l_704;
}


/* ------------------------------------------ */
/* 
 * reads : p_1328->g_383 p_1328->g_228 p_1328->g_369 p_1328->g_70 p_1328->g_384.f0 p_1328->g_149 p_1328->g_355 p_1328->g_391 p_1328->g_189 p_1328->g_396 p_1328->g_2 p_1328->g_187 p_1328->g_164 p_1328->g_263 p_1328->g_316 p_1328->g_552 p_1328->g_140 p_1328->g_14 p_1328->g_384 p_1328->g_639 p_1328->g_242 p_1328->g_10 p_1328->g_264 p_1328->g_491.f0 p_1328->g_576 p_1328->g_577
 * writes: p_1328->g_383 p_1328->g_384.f0 p_1328->g_355 p_1328->g_228 p_1328->g_369 p_1328->g_70 p_1328->g_189 p_1328->g_149 p_1328->g_263 p_1328->g_391 p_1328->g_316 p_1328->g_10 p_1328->g_140 p_1328->g_187 p_1328->g_14 p_1328->g_384 p_1328->g_639 p_1328->g_491 p_1328->g_242 p_1328->g_552 p_1328->g_75 p_1328->g_164
 */
int8_t  func_52(int32_t * p_53, int32_t  p_54, struct S2 * p_1328)
{ /* block id: 194 */
    uint32_t l_444[7][7] = {{1UL,1UL,0x0080D6F4L,0x3A148C63L,0xB99AFB90L,0x3A148C63L,0x0080D6F4L},{1UL,1UL,0x0080D6F4L,0x3A148C63L,0xB99AFB90L,0x3A148C63L,0x0080D6F4L},{1UL,1UL,0x0080D6F4L,0x3A148C63L,0xB99AFB90L,0x3A148C63L,0x0080D6F4L},{1UL,1UL,0x0080D6F4L,0x3A148C63L,0xB99AFB90L,0x3A148C63L,0x0080D6F4L},{1UL,1UL,0x0080D6F4L,0x3A148C63L,0xB99AFB90L,0x3A148C63L,0x0080D6F4L},{1UL,1UL,0x0080D6F4L,0x3A148C63L,0xB99AFB90L,0x3A148C63L,0x0080D6F4L},{1UL,1UL,0x0080D6F4L,0x3A148C63L,0xB99AFB90L,0x3A148C63L,0x0080D6F4L}};
    uint16_t **l_446 = &p_1328->g_264;
    struct S0 *l_455 = &p_1328->g_384;
    int32_t l_496 = 0x42B8C058L;
    int32_t l_498 = 8L;
    int32_t l_534 = 0x68CB8E34L;
    int32_t l_536 = (-9L);
    int32_t l_537 = 0x50972F4FL;
    uint8_t *l_586 = (void*)0;
    uint8_t *l_587 = &p_1328->g_316;
    int8_t l_607[4][2][5] = {{{(-3L),(-1L),(-1L),(-3L),(-3L)},{(-3L),(-1L),(-1L),(-3L),(-3L)}},{{(-3L),(-1L),(-1L),(-3L),(-3L)},{(-3L),(-1L),(-1L),(-3L),(-3L)}},{{(-3L),(-1L),(-1L),(-3L),(-3L)},{(-3L),(-1L),(-1L),(-3L),(-3L)}},{{(-3L),(-1L),(-1L),(-3L),(-3L)},{(-3L),(-1L),(-1L),(-3L),(-3L)}}};
    int32_t l_623[8][2][5] = {{{6L,1L,8L,(-1L),0x036BF5A6L},{6L,1L,8L,(-1L),0x036BF5A6L}},{{6L,1L,8L,(-1L),0x036BF5A6L},{6L,1L,8L,(-1L),0x036BF5A6L}},{{6L,1L,8L,(-1L),0x036BF5A6L},{6L,1L,8L,(-1L),0x036BF5A6L}},{{6L,1L,8L,(-1L),0x036BF5A6L},{6L,1L,8L,(-1L),0x036BF5A6L}},{{6L,1L,8L,(-1L),0x036BF5A6L},{6L,1L,8L,(-1L),0x036BF5A6L}},{{6L,1L,8L,(-1L),0x036BF5A6L},{6L,1L,8L,(-1L),0x036BF5A6L}},{{6L,1L,8L,(-1L),0x036BF5A6L},{6L,1L,8L,(-1L),0x036BF5A6L}},{{6L,1L,8L,(-1L),0x036BF5A6L},{6L,1L,8L,(-1L),0x036BF5A6L}}};
    uint8_t **l_679[6];
    int64_t *l_688 = &p_1328->g_640.f1;
    int32_t l_689[7][1][1] = {{{0x15EA830BL}},{{0x15EA830BL}},{{0x15EA830BL}},{{0x15EA830BL}},{{0x15EA830BL}},{{0x15EA830BL}},{{0x15EA830BL}}};
    uint16_t ****l_690 = &p_1328->g_396;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_679[i] = &l_587;
    for (p_1328->g_383 = 0; (p_1328->g_383 == 8); p_1328->g_383 = safe_add_func_uint16_t_u_u(p_1328->g_383, 1))
    { /* block id: 197 */
        uint64_t l_433 = 0xD561F33298395719L;
        uint16_t ****l_442 = &p_1328->g_396;
        int64_t l_458[1];
        int32_t l_462 = (-5L);
        int32_t *l_477 = &p_1328->g_70;
        struct S0 *l_490 = &p_1328->g_491;
        int32_t l_532[9] = {4L,4L,4L,4L,4L,4L,4L,4L,4L};
        int32_t l_538 = 0x64A58D5EL;
        int i;
        for (i = 0; i < 1; i++)
            l_458[i] = 0x4F6A21E68D7B95E2L;
        for (p_1328->g_384.f0 = 0; (p_1328->g_384.f0 <= 2); p_1328->g_384.f0 += 1)
        { /* block id: 200 */
            int32_t **l_432 = &p_1328->g_355;
            uint32_t *l_441 = &p_1328->g_164;
            uint16_t **l_445[1][4];
            struct S0 *l_459[3];
            int32_t l_471 = (-3L);
            uint32_t l_473 = 0UL;
            struct S0 *l_489 = &p_1328->g_384;
            int32_t l_497 = 0x73B608DCL;
            int32_t l_535 = (-3L);
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 4; j++)
                    l_445[i][j] = (void*)0;
            }
            for (i = 0; i < 3; i++)
                l_459[i] = &p_1328->g_384;
            (*l_432) = &p_1328->g_189;
            for (p_1328->g_228 = 1; (p_1328->g_228 >= 0); p_1328->g_228 -= 1)
            { /* block id: 204 */
                int16_t l_443 = (-10L);
                struct S0 **l_456 = (void*)0;
                struct S0 **l_457 = &l_455;
                int32_t l_460 = (-1L);
                int32_t *l_461[10][5] = {{&p_1328->g_2,&p_1328->g_14[6][3][0],&p_1328->g_14[4][4][0],&p_1328->g_242,&p_1328->g_14[6][3][0]},{&p_1328->g_2,&p_1328->g_14[6][3][0],&p_1328->g_14[4][4][0],&p_1328->g_242,&p_1328->g_14[6][3][0]},{&p_1328->g_2,&p_1328->g_14[6][3][0],&p_1328->g_14[4][4][0],&p_1328->g_242,&p_1328->g_14[6][3][0]},{&p_1328->g_2,&p_1328->g_14[6][3][0],&p_1328->g_14[4][4][0],&p_1328->g_242,&p_1328->g_14[6][3][0]},{&p_1328->g_2,&p_1328->g_14[6][3][0],&p_1328->g_14[4][4][0],&p_1328->g_242,&p_1328->g_14[6][3][0]},{&p_1328->g_2,&p_1328->g_14[6][3][0],&p_1328->g_14[4][4][0],&p_1328->g_242,&p_1328->g_14[6][3][0]},{&p_1328->g_2,&p_1328->g_14[6][3][0],&p_1328->g_14[4][4][0],&p_1328->g_242,&p_1328->g_14[6][3][0]},{&p_1328->g_2,&p_1328->g_14[6][3][0],&p_1328->g_14[4][4][0],&p_1328->g_242,&p_1328->g_14[6][3][0]},{&p_1328->g_2,&p_1328->g_14[6][3][0],&p_1328->g_14[4][4][0],&p_1328->g_242,&p_1328->g_14[6][3][0]},{&p_1328->g_2,&p_1328->g_14[6][3][0],&p_1328->g_14[4][4][0],&p_1328->g_242,&p_1328->g_14[6][3][0]}};
                int i, j, k;
                for (p_1328->g_369 = 1; (p_1328->g_369 >= 0); p_1328->g_369 -= 1)
                { /* block id: 207 */
                    int8_t l_438 = 1L;
                    int i, j, k;
                    l_433++;
                    for (p_1328->g_70 = 0; (p_1328->g_70 <= 3); p_1328->g_70 += 1)
                    { /* block id: 211 */
                        int i, j, k;
                        (*p_1328->g_355) = (safe_lshift_func_uint8_t_u_s(p_1328->g_149[(p_1328->g_369 + 2)][(p_1328->g_384.f0 + 1)][(p_1328->g_369 + 1)], 2));
                        if (p_1328->g_391[(p_1328->g_70 + 4)][p_1328->g_228])
                            continue;
                        (**l_432) ^= l_438;
                        (*p_1328->g_355) = (p_54 , (-7L));
                    }
                    return p_1328->g_149[(p_1328->g_228 + 4)][(p_1328->g_384.f0 + 6)][p_1328->g_228];
                }
                (*p_1328->g_355) = (((*p_1328->g_396) = (((((((safe_rshift_func_int16_t_s_s((((void*)0 != l_441) | 0x11L), 8)) != (((((l_442 != ((p_1328->g_149[p_1328->g_384.f0][(p_1328->g_228 + 2)][p_1328->g_228] = p_1328->g_391[(p_1328->g_384.f0 + 5)][p_1328->g_228]) , (((0x7190C5EA3A8E5BAAL ^ ((0xC185FC9C7FB1C3DAL & (GROUP_DIVERGE(0, 1) == l_443)) >= (p_54 , 0x3466L))) || 0x02L) , (void*)0))) , p_1328->g_391[1][0]) <= 255UL) || p_1328->g_149[p_1328->g_384.f0][(p_1328->g_228 + 2)][p_1328->g_228]) && p_54)) ^ p_1328->g_391[(p_1328->g_384.f0 + 5)][p_1328->g_228]) , p_54) >= l_444[6][2]) < 255UL) , l_445[0][0])) == l_446);
                (**l_432) ^= p_54;
                l_462 ^= ((p_1328->g_2 <= (safe_sub_func_uint32_t_u_u(((p_1328->g_391[p_1328->g_228][p_1328->g_228] = l_444[5][2]) || p_1328->g_149[1][7][2]), ((void*)0 != l_442)))) >= ((p_1328->g_187 ^ ((l_460 ^= (safe_div_func_int8_t_s_s(((~((safe_mod_func_uint16_t_u_u((((*l_457) = l_455) == (((p_54 < l_458[0]) > p_54) , l_459[0])), l_458[0])) == (*p_1328->g_355))) >= p_54), 0xEFL))) , 0xEAL)) != p_1328->g_164));
            }
            for (p_1328->g_228 = 0; (p_1328->g_228 <= 3); p_1328->g_228 += 1)
            { /* block id: 230 */
                uint32_t l_464 = 4294967287UL;
                int32_t l_472 = 5L;
                struct S0 **l_509 = &l_459[0];
                int32_t l_530[8][2] = {{0x1723C9A9L,0x7A40C6E4L},{0x1723C9A9L,0x7A40C6E4L},{0x1723C9A9L,0x7A40C6E4L},{0x1723C9A9L,0x7A40C6E4L},{0x1723C9A9L,0x7A40C6E4L},{0x1723C9A9L,0x7A40C6E4L},{0x1723C9A9L,0x7A40C6E4L},{0x1723C9A9L,0x7A40C6E4L}};
                uint16_t ***l_578 = (void*)0;
                int i, j;
                (1 + 1);
            }
        }
        (**l_442) = (**l_442);
        for (l_538 = 0; (l_538 != (-29)); l_538 = safe_sub_func_int64_t_s_s(l_538, 9))
        { /* block id: 295 */
            return p_1328->g_384.f0;
        }
    }
    if (((*p_1328->g_552) = (safe_rshift_func_uint8_t_u_u(((*l_587) &= ((l_498 & p_54) | 9L)), 2))))
    { /* block id: 301 */
        int64_t **l_588 = (void*)0;
        int32_t l_606 = 0x0E9E5FF0L;
        int32_t l_608 = 0x30573847L;
        int32_t l_622 = (-8L);
        int32_t l_628 = 0x08FE906EL;
        int32_t l_632[2];
        int i;
        for (i = 0; i < 2; i++)
            l_632[i] = 0x141AB0AAL;
        for (p_1328->g_140 = 0; (p_1328->g_140 <= 0); p_1328->g_140 += 1)
        { /* block id: 304 */
            uint32_t *l_591 = &p_1328->g_187;
            int32_t l_604 = 0x50F56CFEL;
            struct S0 *l_616 = &p_1328->g_384;
            int32_t l_620 = 0L;
            int32_t l_625 = 0x57399F56L;
            int32_t l_629[9];
            uint64_t l_635 = 0xFB84E94213C39E1FL;
            int i;
            for (i = 0; i < 9; i++)
                l_629[i] = 0x3FE367B1L;
            if ((((void*)0 != l_588) && (p_54 == (safe_lshift_func_uint8_t_u_u(((++(*l_591)) >= 0x3867C3B9L), (safe_lshift_func_uint8_t_u_u(p_54, 1)))))))
            { /* block id: 306 */
                uint32_t l_609 = 0xFD3E386BL;
                int32_t l_619 = 0x1269B9DEL;
                int32_t l_624 = 0x6B535024L;
                int32_t l_634[4][1][5] = {{{0x0F5AA87AL,(-7L),0x0F5AA87AL,0x0F5AA87AL,(-7L)}},{{0x0F5AA87AL,(-7L),0x0F5AA87AL,0x0F5AA87AL,(-7L)}},{{0x0F5AA87AL,(-7L),0x0F5AA87AL,0x0F5AA87AL,(-7L)}},{{0x0F5AA87AL,(-7L),0x0F5AA87AL,0x0F5AA87AL,(-7L)}}};
                struct S0 l_638 = {-2L};
                struct S1 **l_641 = (void*)0;
                struct S1 **l_642 = &p_1328->g_639;
                int i, j, k;
                for (p_1328->g_228 = 0; (p_1328->g_228 <= 2); p_1328->g_228 += 1)
                { /* block id: 309 */
                    int32_t *l_596 = &l_536;
                    int32_t *l_597 = &p_1328->g_14[6][3][0];
                    int32_t *l_598 = &p_1328->g_10;
                    int32_t *l_599 = &l_536;
                    int32_t *l_600 = (void*)0;
                    int32_t *l_601 = &l_536;
                    int32_t *l_602 = &l_498;
                    int32_t *l_603 = &l_537;
                    int32_t *l_605[4] = {&p_1328->g_10,&p_1328->g_10,&p_1328->g_10,&p_1328->g_10};
                    int32_t **l_612 = &l_597;
                    uint16_t l_613 = 1UL;
                    int i;
                    p_53 = p_53;
                    ++l_609;
                    (*l_612) = p_53;
                    (*l_602) |= l_613;
                    for (l_536 = 0; (l_536 <= 2); l_536 += 1)
                    { /* block id: 316 */
                        int32_t l_621 = (-2L);
                        int32_t l_626 = (-1L);
                        int32_t l_627 = 0x65D6599AL;
                        int32_t l_630 = 0x70974220L;
                        int32_t l_631 = 0L;
                        int32_t l_633[9][4] = {{0x31964A92L,0x645F8651L,0x645F8651L,0x31964A92L},{0x31964A92L,0x645F8651L,0x645F8651L,0x31964A92L},{0x31964A92L,0x645F8651L,0x645F8651L,0x31964A92L},{0x31964A92L,0x645F8651L,0x645F8651L,0x31964A92L},{0x31964A92L,0x645F8651L,0x645F8651L,0x31964A92L},{0x31964A92L,0x645F8651L,0x645F8651L,0x31964A92L},{0x31964A92L,0x645F8651L,0x645F8651L,0x31964A92L},{0x31964A92L,0x645F8651L,0x645F8651L,0x31964A92L},{0x31964A92L,0x645F8651L,0x645F8651L,0x31964A92L}};
                        int i, j, k;
                        p_1328->g_14[p_1328->g_228][(p_1328->g_140 + 4)][p_1328->g_140] &= (p_1328->g_149[p_1328->g_140][(p_1328->g_228 + 6)][(p_1328->g_140 + 2)] & (safe_mod_func_uint32_t_u_u(((void*)0 != l_616), (safe_mul_func_int16_t_s_s(0x3862L, 65535UL)))));
                        (*l_612) = &p_1328->g_14[(l_536 + 4)][(l_536 + 2)][p_1328->g_140];
                        (*l_612) = &l_606;
                        --l_635;
                    }
                }
                (*l_616) = (l_638 = (*l_455));
                (*l_642) = p_1328->g_639;
            }
            else
            { /* block id: 326 */
                p_1328->g_491 = p_1328->g_384;
                for (l_606 = 10; (l_606 <= (-15)); --l_606)
                { /* block id: 330 */
                    for (p_1328->g_369 = 2; (p_1328->g_369 >= 0); p_1328->g_369 -= 1)
                    { /* block id: 333 */
                        int32_t **l_647 = &p_1328->g_552;
                        int i, j, k;
                        (*p_1328->g_355) ^= (safe_div_func_uint16_t_u_u((l_496 = l_623[(p_1328->g_140 + 4)][(p_1328->g_140 + 1)][(p_1328->g_140 + 3)]), l_623[(p_1328->g_369 + 1)][p_1328->g_140][p_1328->g_140]));
                        (*l_647) = &p_1328->g_189;
                        if ((*p_1328->g_355))
                            break;
                    }
                    (*p_1328->g_355) = (*p_1328->g_552);
                    if ((*p_1328->g_355))
                        continue;
                }
            }
            (*p_1328->g_355) = 0x385E0B38L;
            (*p_1328->g_355) = (safe_unary_minus_func_uint16_t_u(((*p_1328->g_264) &= p_54)));
        }
        for (p_1328->g_491.f0 = 2; (p_1328->g_491.f0 >= 0); p_1328->g_491.f0 -= 1)
        { /* block id: 349 */
            int32_t *l_649 = (void*)0;
            int32_t *l_650 = (void*)0;
            int32_t *l_651 = &p_1328->g_189;
            int32_t *l_652 = &l_537;
            int32_t *l_653 = &l_534;
            int32_t *l_654 = &l_628;
            int32_t *l_655 = (void*)0;
            int32_t *l_656 = &l_498;
            int32_t *l_657 = &p_1328->g_14[6][3][0];
            int32_t *l_658 = &l_632[1];
            int32_t *l_659 = &l_632[1];
            int32_t *l_660 = (void*)0;
            int32_t *l_661 = &l_632[0];
            int32_t *l_662[1][9] = {{&p_1328->g_242,&p_1328->g_242,&p_1328->g_242,&p_1328->g_242,&p_1328->g_242,&p_1328->g_242,&p_1328->g_242,&p_1328->g_242,&p_1328->g_242}};
            uint32_t l_663[10] = {4294967290UL,0UL,4294967290UL,4294967290UL,0UL,4294967290UL,4294967290UL,0UL,4294967290UL,4294967290UL};
            int i, j;
            ++l_663[7];
            for (l_534 = 1; (l_534 >= 0); l_534 -= 1)
            { /* block id: 353 */
                for (p_54 = 0; (p_54 <= 2); p_54 += 1)
                { /* block id: 356 */
                    int32_t **l_666 = &l_662[0][0];
                    int i, j, k;
                    (*l_666) = &p_1328->g_14[6][3][0];
                    p_1328->g_75[(l_534 + 3)][(p_1328->g_491.f0 + 3)][l_534] = (void*)0;
                }
                if ((atomic_inc(&p_1328->l_atomic_input[4]) == 3))
                { /* block id: 361 */
                    int32_t l_667 = (-2L);
                    for (l_667 = 1; (l_667 >= 0); l_667 -= 1)
                    { /* block id: 364 */
                        struct S0 l_668 = {0x5DL};
                        struct S0 l_669 = {0x21L};
                        l_669 = l_668;
                    }
                    unsigned int result = 0;
                    result += l_667;
                    atomic_add(&p_1328->l_special_values[4], result);
                }
                else
                { /* block id: 367 */
                    (1 + 1);
                }
                for (p_1328->g_164 = 0; (p_1328->g_164 <= 2); p_1328->g_164 += 1)
                { /* block id: 372 */
                    int i, j, k;
                    (*p_1328->g_355) = l_607[(p_1328->g_491.f0 + 1)][l_534][(p_1328->g_164 + 1)];
                }
            }
        }
    }
    else
    { /* block id: 377 */
        int32_t l_675 = 0x267CD781L;
        uint8_t **l_678 = &l_587;
        (*p_1328->g_552) |= ((p_54 && (safe_unary_minus_func_uint32_t_u(p_54))) , ((((safe_lshift_func_int8_t_s_s(0x73L, ((p_54 | ((safe_mod_func_uint32_t_u_u((l_675 && (((l_689[0][0][0] = ((safe_div_func_uint64_t_u_u((l_678 != l_679[3]), (safe_add_func_int64_t_s_s(((safe_mod_func_int16_t_s_s((safe_sub_func_uint32_t_u_u((safe_mul_func_int16_t_s_s(((l_688 != (*p_1328->g_576)) ^ (-8L)), p_1328->g_149[0][2][2])), GROUP_DIVERGE(2, 1))), (-9L))) == p_1328->g_316), p_1328->g_242)))) | l_536)) , l_690) != (void*)0)), 0x193E2E56L)) & 0x4025L)) || p_1328->g_140))) || l_498) , p_54) ^ 0xFE06L));
        return p_54;
    }
    return p_54;
}


/* ------------------------------------------ */
/* 
 * reads : p_1328->g_2 p_1328->g_70 p_1328->g_140 p_1328->g_14 p_1328->g_10 p_1328->g_369 p_1328->g_189 p_1328->g_355 p_1328->g_228 p_1328->g_242 p_1328->g_383 p_1328->g_271 p_1328->g_149 p_1328->g_264 p_1328->g_384
 * writes: p_1328->g_75 p_1328->g_140 p_1328->g_149 p_1328->g_14 p_1328->g_164 p_1328->g_10 p_1328->g_369 p_1328->g_242 p_1328->g_228 p_1328->g_391 p_1328->g_383 p_1328->g_70 p_1328->g_395 p_1328->g_187 p_1328->g_271 p_1328->g_189
 */
int32_t * func_55(uint64_t  p_56, int32_t * p_57, uint32_t  p_58, int32_t * p_59, struct S2 * p_1328)
{ /* block id: 22 */
    int64_t l_121 = 0L;
    int32_t *l_126 = (void*)0;
    int32_t *l_128 = &p_1328->g_14[6][3][0];
    int32_t **l_127 = &l_128;
    int64_t *l_387 = &p_1328->g_369;
    struct S0 *l_429[7][8][2] = {{{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384}},{{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384}},{{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384}},{{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384}},{{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384}},{{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384}},{{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384},{(void*)0,&p_1328->g_384}}};
    int i, j, k;
    (**l_127) = (safe_mul_func_uint8_t_u_u(func_117(((p_1328->g_2 == ((*l_387) |= (((safe_div_func_uint64_t_u_u((0x1F1C6DC0DC4BEA28L == 0xB9DF8DAF57E05BCBL), p_58)) , ((func_66(l_121, p_1328) , p_1328->g_2) ^ func_122(p_1328->g_70, l_126, l_127, p_1328))) == 0x797BL))) | p_1328->g_189), p_1328), p_1328->g_384.f0));
    (*l_127) = p_59;
    l_429[6][5][0] = ((safe_rshift_func_uint8_t_u_u(p_1328->g_383, 4)) , l_429[4][7][1]);
    return p_57;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1328->g_75
 */
uint32_t  func_66(int32_t  p_67, struct S2 * p_1328)
{ /* block id: 18 */
    int32_t **l_72 = (void*)0;
    int32_t **l_73 = (void*)0;
    int32_t **l_74[1][2][3];
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 3; k++)
                l_74[i][j][k] = (void*)0;
        }
    }
    p_1328->g_75[0][4][1] = (void*)0;
    return p_67;
}


/* ------------------------------------------ */
/* 
 * reads : p_1328->g_355 p_1328->g_228 p_1328->g_140 p_1328->g_242 p_1328->g_383 p_1328->g_14 p_1328->g_271 p_1328->g_149 p_1328->g_264 p_1328->g_384 p_1328->g_189
 * writes: p_1328->g_242 p_1328->g_228 p_1328->g_391 p_1328->g_383 p_1328->g_70 p_1328->g_140 p_1328->g_395 p_1328->g_14 p_1328->g_369 p_1328->g_10 p_1328->g_187 p_1328->g_271 p_1328->g_149 p_1328->g_189
 */
uint8_t  func_117(int32_t  p_118, struct S2 * p_1328)
{ /* block id: 128 */
    uint16_t ****l_392 = (void*)0;
    struct S0 *l_423 = (void*)0;
    struct S0 *l_424 = (void*)0;
    struct S0 l_425 = {1L};
    int8_t l_426 = 0x24L;
    (*p_1328->g_355) = (0xB7L == 247UL);
    for (p_1328->g_228 = 0; (p_1328->g_228 <= 3); p_1328->g_228 += 1)
    { /* block id: 132 */
        int16_t *l_390 = &p_1328->g_391[9][0];
        for (p_1328->g_242 = 0; (p_1328->g_242 <= 3); p_1328->g_242 += 1)
        { /* block id: 135 */
            return p_1328->g_140;
        }
        (*p_1328->g_355) ^= (safe_sub_func_uint8_t_u_u((((*l_390) = 1L) <= 0x2AADL), 0x06L));
        for (p_1328->g_383 = 0; (p_1328->g_383 <= 0); p_1328->g_383 += 1)
        { /* block id: 142 */
            uint16_t ***l_394 = &p_1328->g_263[1][2][3];
            uint16_t ****l_393[4] = {&l_394,&l_394,&l_394,&l_394};
            int32_t l_420 = 0x310A4CB2L;
            int i;
            for (p_1328->g_70 = 3; (p_1328->g_70 >= 0); p_1328->g_70 -= 1)
            { /* block id: 145 */
                int32_t *l_397[5][3] = {{(void*)0,&p_1328->g_10,(void*)0},{(void*)0,&p_1328->g_10,(void*)0},{(void*)0,&p_1328->g_10,(void*)0},{(void*)0,&p_1328->g_10,(void*)0},{(void*)0,&p_1328->g_10,(void*)0}};
                int i, j, k;
                for (p_1328->g_140 = 0; (p_1328->g_140 <= 0); p_1328->g_140 += 1)
                { /* block id: 148 */
                    int i, j, k;
                    p_1328->g_14[(p_1328->g_383 + 1)][(p_1328->g_140 + 1)][p_1328->g_140] |= (l_392 == (p_1328->g_395[0][3][1] = l_393[1]));
                }
                for (p_1328->g_369 = 0; (p_1328->g_369 >= 0); p_1328->g_369 -= 1)
                { /* block id: 154 */
                    int i, j, k;
                    (*p_1328->g_355) = p_1328->g_14[(p_1328->g_383 + 5)][(p_1328->g_228 + 1)][p_1328->g_383];
                    if (p_118)
                        continue;
                    return p_118;
                }
                p_1328->g_10 = (p_1328->g_14[3][1][0] = ((*p_1328->g_355) = p_1328->g_14[(p_1328->g_383 + 2)][(p_1328->g_383 + 2)][p_1328->g_383]));
            }
            (*p_1328->g_355) = (*p_1328->g_355);
            if ((atomic_inc(&p_1328->l_atomic_input[1]) == 4))
            { /* block id: 165 */
                int32_t l_398[2];
                int16_t l_399 = (-1L);
                int16_t l_400 = 0x77E9L;
                uint8_t l_401 = 0x50L;
                int8_t l_404[10] = {0x7FL,0x7FL,0x7FL,0x7FL,0x7FL,0x7FL,0x7FL,0x7FL,0x7FL,0x7FL};
                uint16_t l_405 = 0xC483L;
                int64_t l_410 = 0x12AA66A0BF9F2782L;
                int64_t *l_409 = &l_410;
                int64_t **l_408 = &l_409;
                int64_t **l_411[10][6] = {{&l_409,&l_409,&l_409,(void*)0,&l_409,&l_409},{&l_409,&l_409,&l_409,(void*)0,&l_409,&l_409},{&l_409,&l_409,&l_409,(void*)0,&l_409,&l_409},{&l_409,&l_409,&l_409,(void*)0,&l_409,&l_409},{&l_409,&l_409,&l_409,(void*)0,&l_409,&l_409},{&l_409,&l_409,&l_409,(void*)0,&l_409,&l_409},{&l_409,&l_409,&l_409,(void*)0,&l_409,&l_409},{&l_409,&l_409,&l_409,(void*)0,&l_409,&l_409},{&l_409,&l_409,&l_409,(void*)0,&l_409,&l_409},{&l_409,&l_409,&l_409,(void*)0,&l_409,&l_409}};
                int i, j;
                for (i = 0; i < 2; i++)
                    l_398[i] = (-3L);
                --l_401;
                --l_405;
                l_411[9][2] = l_408;
                unsigned int result = 0;
                int l_398_i0;
                for (l_398_i0 = 0; l_398_i0 < 2; l_398_i0++) {
                    result += l_398[l_398_i0];
                }
                result += l_399;
                result += l_400;
                result += l_401;
                int l_404_i0;
                for (l_404_i0 = 0; l_404_i0 < 10; l_404_i0++) {
                    result += l_404[l_404_i0];
                }
                result += l_405;
                result += l_410;
                atomic_add(&p_1328->l_special_values[1], result);
            }
            else
            { /* block id: 169 */
                (1 + 1);
            }
            for (p_1328->g_187 = 0; (p_1328->g_187 <= 3); p_1328->g_187 += 1)
            { /* block id: 174 */
                uint16_t l_421 = 1UL;
                for (p_1328->g_271 = 0; (p_1328->g_271 <= 2); p_1328->g_271 += 1)
                { /* block id: 177 */
                    int32_t l_422 = 5L;
                    int i, j, k;
                    p_1328->g_14[(p_1328->g_271 + 1)][p_1328->g_228][p_1328->g_383] = 0x7634814EL;
                    (*p_1328->g_355) |= (GROUP_DIVERGE(1, 1) , (safe_div_func_uint16_t_u_u(((*p_1328->g_264) = (safe_div_func_uint64_t_u_u(((l_421 ^= (p_1328->g_14[(p_1328->g_271 + 1)][p_1328->g_228][p_1328->g_383] = (p_1328->g_149[0][2][2] && (safe_mod_func_uint64_t_u_u(p_1328->g_149[0][2][2], (safe_lshift_func_uint8_t_u_s((5UL < (-8L)), l_420))))))) & (p_118 ^ (&p_1328->g_396 == ((l_422 ^ 0L) , &l_394)))), p_118))), p_118)));
                    if ((*p_1328->g_355))
                        break;
                }
            }
        }
    }
    l_425 = p_1328->g_384;
    return l_426;
}


/* ------------------------------------------ */
/* 
 * reads : p_1328->g_140 p_1328->g_14 p_1328->g_70 p_1328->g_10
 * writes: p_1328->g_140 p_1328->g_149 p_1328->g_14 p_1328->g_164 p_1328->g_10
 */
uint32_t  func_122(int64_t  p_123, int32_t * p_124, int32_t ** p_125, struct S2 * p_1328)
{ /* block id: 23 */
    int16_t l_132[10][10] = {{0L,0L,0x5B28L,(-9L),(-4L),(-8L),(-1L),1L,(-1L),(-8L)},{0L,0L,0x5B28L,(-9L),(-4L),(-8L),(-1L),1L,(-1L),(-8L)},{0L,0L,0x5B28L,(-9L),(-4L),(-8L),(-1L),1L,(-1L),(-8L)},{0L,0L,0x5B28L,(-9L),(-4L),(-8L),(-1L),1L,(-1L),(-8L)},{0L,0L,0x5B28L,(-9L),(-4L),(-8L),(-1L),1L,(-1L),(-8L)},{0L,0L,0x5B28L,(-9L),(-4L),(-8L),(-1L),1L,(-1L),(-8L)},{0L,0L,0x5B28L,(-9L),(-4L),(-8L),(-1L),1L,(-1L),(-8L)},{0L,0L,0x5B28L,(-9L),(-4L),(-8L),(-1L),1L,(-1L),(-8L)},{0L,0L,0x5B28L,(-9L),(-4L),(-8L),(-1L),1L,(-1L),(-8L)},{0L,0L,0x5B28L,(-9L),(-4L),(-8L),(-1L),1L,(-1L),(-8L)}};
    uint16_t *l_139 = &p_1328->g_140;
    uint16_t **l_145 = &l_139;
    uint16_t *l_146 = &p_1328->g_140;
    uint16_t *l_147 = (void*)0;
    uint16_t *l_148[10][3][8] = {{{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0}},{{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0}},{{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0}},{{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0}},{{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0}},{{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0}},{{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0}},{{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0}},{{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0}},{{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0},{&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0,&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],&p_1328->g_149[0][2][2],(void*)0}}};
    int32_t l_162 = 0x34F394D2L;
    uint32_t *l_163 = &p_1328->g_164;
    int32_t *l_165 = &p_1328->g_10;
    struct S0 l_177 = {0x20L};
    int32_t l_185 = 0x4406D13BL;
    int32_t l_246 = (-6L);
    int32_t l_252 = 0x04C1E5BBL;
    int32_t l_253 = 0x776B26CEL;
    int32_t l_254 = 0x671C832DL;
    int32_t l_255 = 0x5DD63096L;
    int32_t l_329 = 0L;
    uint8_t *l_330 = &p_1328->g_316;
    int i, j, k;
    (**p_125) = (safe_rshift_func_uint16_t_u_s((safe_unary_minus_func_uint16_t_u((l_132[3][1] | (l_132[3][1] , (safe_add_func_int16_t_s_s(((((l_132[3][1] | (GROUP_DIVERGE(1, 1) >= (0x100AL && ((-1L) >= p_123)))) | (p_1328->g_149[0][2][2] = ((safe_div_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (l_132[6][9] ^ (safe_lshift_func_uint16_t_u_u(((((*l_139)++) == l_132[2][8]) , (safe_sub_func_uint16_t_u_u(((*l_146) = (((*l_145) = l_139) != l_146)), 1L))), p_123))))) == p_123))) > 18446744073709551607UL) >= 0x1AL), p_1328->g_14[7][0][0])))))), p_1328->g_70));
    (*l_165) &= ((safe_lshift_func_uint16_t_u_s((safe_rshift_func_int16_t_s_u((safe_add_func_uint64_t_u_u(((0x244BL || GROUP_DIVERGE(0, 1)) || (safe_sub_func_uint64_t_u_u((((p_123 , (*l_145)) == &p_1328->g_149[0][2][2]) > (((safe_lshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s(p_123, (p_1328->g_14[6][3][0] < (p_123 && l_162)))), 5)) , ((*l_163) = p_123)) , 0x72E48B94L)), 1L))), 0L)), 9)), p_123)) | 0xD7C6F009EE3F616CL);
    for (p_123 = 1; (p_123 >= (-8)); p_123--)
    { /* block id: 33 */
        uint16_t **l_178 = &l_148[1][2][1];
        uint16_t ***l_179 = &l_178;
        int32_t l_184 = (-1L);
        uint32_t *l_186 = &p_1328->g_187;
        int32_t *l_188 = &p_1328->g_189;
        uint16_t l_215 = 0UL;
        int32_t l_240 = 4L;
        int32_t l_243 = 0x12F738AEL;
        int32_t l_244 = 0x7D35BE62L;
        int32_t l_248 = 0x788454AFL;
        int32_t l_251[6] = {3L,0x00171D70L,3L,3L,0x00171D70L,3L};
        int64_t *l_368 = &p_1328->g_369;
        int i;
        (**p_125) &= (p_123 , (-1L));
    }
    return (*l_165);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[5];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 5; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[5];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 5; i++)
            l_special_values[i] = 0;
    struct S2 c_1329;
    struct S2* p_1328 = &c_1329;
    struct S2 c_1330 = {
        1L, // p_1328->g_2
        1L, // p_1328->g_5
        8L, // p_1328->g_6
        0x123607A9L, // p_1328->g_7
        0x5CBCEF05L, // p_1328->g_8
        0x0A29822CL, // p_1328->g_9
        1L, // p_1328->g_10
        {{{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L}},{{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L}},{{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L}},{{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L}},{{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L}},{{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L}},{{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L}},{{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L}},{{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L},{0x6E348CC3L}}}, // p_1328->g_14
        0x1CCD29D3L, // p_1328->g_70
        {0x5F21916DL,0x5F21916DL}, // p_1328->g_76
        (-1L), // p_1328->g_77
        {0x4A9B53ABL,0x6A420A61L,0x4A9B53ABL,0x4A9B53ABL,0x6A420A61L,0x4A9B53ABL,0x4A9B53ABL,0x6A420A61L,0x4A9B53ABL}, // p_1328->g_78
        {{{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)},{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)}},{{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)},{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)}},{{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)},{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)}},{{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)},{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)}},{{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)},{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)}},{{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)},{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)}},{{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)},{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)}},{{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)},{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)}},{{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)},{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)}},{{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)},{0x7A87DC7FL,1L,(-3L),8L,0x0DAE6E92L,0x0BBFFD32L,0L,(-2L),0x4D5E33ABL,(-5L)}}}, // p_1328->g_79
        8L, // p_1328->g_80
        (-6L), // p_1328->g_81
        4L, // p_1328->g_82
        {{0x6110BDBEL,0x6110BDBEL},{0x6110BDBEL,0x6110BDBEL}}, // p_1328->g_83
        (-8L), // p_1328->g_84
        0L, // p_1328->g_85
        0x4EDF4A20L, // p_1328->g_86
        0x7D51EEA2L, // p_1328->g_87
        0L, // p_1328->g_88
        (-9L), // p_1328->g_89
        1L, // p_1328->g_90
        {0x28949F0EL,0x28949F0EL,0x28949F0EL,0x28949F0EL}, // p_1328->g_91
        (-1L), // p_1328->g_92
        0x4E6B2E54L, // p_1328->g_93
        0x60112182L, // p_1328->g_94
        5L, // p_1328->g_95
        0x6F461E62L, // p_1328->g_96
        {{{0x2F92BF7CL,(-8L),2L,0x2769A4A7L,2L,(-8L),0x2F92BF7CL,0x0794679FL},{0x2F92BF7CL,(-8L),2L,0x2769A4A7L,2L,(-8L),0x2F92BF7CL,0x0794679FL},{0x2F92BF7CL,(-8L),2L,0x2769A4A7L,2L,(-8L),0x2F92BF7CL,0x0794679FL}}}, // p_1328->g_97
        0x141B8E2AL, // p_1328->g_98
        0x7841B203L, // p_1328->g_99
        {0x0CD1CB45L,0x0CD1CB45L,0x0CD1CB45L,0x0CD1CB45L,0x0CD1CB45L}, // p_1328->g_100
        0x6A482816L, // p_1328->g_101
        3L, // p_1328->g_102
        0x2BF80AFDL, // p_1328->g_103
        0L, // p_1328->g_104
        0x6DA02901L, // p_1328->g_105
        {0x42C7241AL}, // p_1328->g_106
        (-1L), // p_1328->g_107
        0L, // p_1328->g_108
        1L, // p_1328->g_109
        0x1153E23BL, // p_1328->g_110
        0x33C15289L, // p_1328->g_111
        1L, // p_1328->g_112
        {{{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0}},{{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0}},{{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0}},{{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0}},{{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0},{&p_1328->g_107,&p_1328->g_101,(void*)0}}}, // p_1328->g_75
        1UL, // p_1328->g_140
        {{{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL}},{{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL}},{{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL}},{{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL}},{{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL}},{{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL},{0xD931L,65535UL,0UL}}}, // p_1328->g_149
        6UL, // p_1328->g_164
        0xD52F8519L, // p_1328->g_187
        0x0860F980L, // p_1328->g_189
        0x46L, // p_1328->g_228
        0x6F0A70CCL, // p_1328->g_242
        &p_1328->g_149[3][5][1], // p_1328->g_264
        {{{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264}},{{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264}},{{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264}},{{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264}},{{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264}},{{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264},{&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264,&p_1328->g_264}}}, // p_1328->g_263
        65535UL, // p_1328->g_271
        0xF0L, // p_1328->g_316
        &p_1328->g_242, // p_1328->g_355
        (-5L), // p_1328->g_369
        0x3C7CL, // p_1328->g_383
        {0x4AL}, // p_1328->g_384
        {{(-1L),(-7L)},{(-1L),(-7L)},{(-1L),(-7L)},{(-1L),(-7L)},{(-1L),(-7L)},{(-1L),(-7L)},{(-1L),(-7L)},{(-1L),(-7L)},{(-1L),(-7L)},{(-1L),(-7L)}}, // p_1328->g_391
        &p_1328->g_263[4][2][0], // p_1328->g_396
        {{{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396}},{{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396}},{{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396}},{{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396}},{{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396}},{{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396}},{{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396}},{{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396}},{{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396}},{{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396},{&p_1328->g_396,&p_1328->g_396,(void*)0,&p_1328->g_396}}}, // p_1328->g_395
        {0L}, // p_1328->g_491
        1UL, // p_1328->g_539
        &p_1328->g_10, // p_1328->g_552
        (void*)0, // p_1328->g_577
        &p_1328->g_577, // p_1328->g_576
        {0x5F173DD1L,-7L,1UL,8UL,0x4C4F757BB90C01F4L,1L,0x79E9612DL,0x09L,0UL,0xDE28B015L}, // p_1328->g_640
        &p_1328->g_640, // p_1328->g_639
        1L, // p_1328->g_1007
        18446744073709551615UL, // p_1328->g_1014
        {0x44FA140CL,1L,18446744073709551610UL,0xB1D7C34D0B0DC5A6L,0x3F68994499A0C210L,0x54C056C86006729FL,0UL,0xB4L,0xC46A0CC5L,0x7383ED6BL}, // p_1328->g_1017
        9L, // p_1328->g_1029
        (void*)0, // p_1328->g_1063
        &p_1328->g_639, // p_1328->g_1064
        &p_1328->g_491, // p_1328->g_1071
        &p_1328->g_1071, // p_1328->g_1070
        0xCABD4CACL, // p_1328->g_1086
        &p_1328->g_75[0][6][2], // p_1328->g_1089
        0x3374L, // p_1328->g_1120
        &p_1328->g_552, // p_1328->g_1121
        {-1L,0x5FD6574F51A27BCBL,0x85018D3D48033F3AL,0xC9D7E141D01D7D62L,0x74691F40FDD51D85L,-1L,0UL,0xAEL,0x4A3288C8L,0UL}, // p_1328->g_1123
        {1L,1L,1UL,0x891541BF4E0A6121L,0x4FAED63316BDA5EAL,0x29109BEA8CE82731L,0x34ED0558L,0xEFL,0x5AB78ECFL,0x4D8C450FL}, // p_1328->g_1182
        0xDB704748L, // p_1328->g_1217
        (void*)0, // p_1328->g_1225
        &p_1328->g_355, // p_1328->g_1226
        (-3L), // p_1328->g_1257
        &p_1328->g_355, // p_1328->g_1262
        &p_1328->g_1182.f7, // p_1328->g_1271
        &p_1328->g_1017.f2, // p_1328->g_1286
        {{{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355}},{{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355},{&p_1328->g_355,&p_1328->g_355,(void*)0,(void*)0,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_552,(void*)0,&p_1328->g_355}}}, // p_1328->g_1325
        {&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355,&p_1328->g_355}, // p_1328->g_1326
        &p_1328->g_552, // p_1328->g_1327
        sequence_input[get_global_id(0)], // p_1328->global_0_offset
        sequence_input[get_global_id(1)], // p_1328->global_1_offset
        sequence_input[get_global_id(2)], // p_1328->global_2_offset
        sequence_input[get_local_id(0)], // p_1328->local_0_offset
        sequence_input[get_local_id(1)], // p_1328->local_1_offset
        sequence_input[get_local_id(2)], // p_1328->local_2_offset
        sequence_input[get_group_id(0)], // p_1328->group_0_offset
        sequence_input[get_group_id(1)], // p_1328->group_1_offset
        sequence_input[get_group_id(2)], // p_1328->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1329 = c_1330;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1328);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1328->g_2, "p_1328->g_2", print_hash_value);
    transparent_crc(p_1328->g_5, "p_1328->g_5", print_hash_value);
    transparent_crc(p_1328->g_6, "p_1328->g_6", print_hash_value);
    transparent_crc(p_1328->g_7, "p_1328->g_7", print_hash_value);
    transparent_crc(p_1328->g_8, "p_1328->g_8", print_hash_value);
    transparent_crc(p_1328->g_9, "p_1328->g_9", print_hash_value);
    transparent_crc(p_1328->g_10, "p_1328->g_10", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1328->g_14[i][j][k], "p_1328->g_14[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1328->g_70, "p_1328->g_70", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1328->g_76[i], "p_1328->g_76[i]", print_hash_value);

    }
    transparent_crc(p_1328->g_77, "p_1328->g_77", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1328->g_78[i], "p_1328->g_78[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_1328->g_79[i][j][k], "p_1328->g_79[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1328->g_80, "p_1328->g_80", print_hash_value);
    transparent_crc(p_1328->g_81, "p_1328->g_81", print_hash_value);
    transparent_crc(p_1328->g_82, "p_1328->g_82", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1328->g_83[i][j], "p_1328->g_83[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1328->g_84, "p_1328->g_84", print_hash_value);
    transparent_crc(p_1328->g_85, "p_1328->g_85", print_hash_value);
    transparent_crc(p_1328->g_86, "p_1328->g_86", print_hash_value);
    transparent_crc(p_1328->g_87, "p_1328->g_87", print_hash_value);
    transparent_crc(p_1328->g_88, "p_1328->g_88", print_hash_value);
    transparent_crc(p_1328->g_89, "p_1328->g_89", print_hash_value);
    transparent_crc(p_1328->g_90, "p_1328->g_90", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1328->g_91[i], "p_1328->g_91[i]", print_hash_value);

    }
    transparent_crc(p_1328->g_92, "p_1328->g_92", print_hash_value);
    transparent_crc(p_1328->g_93, "p_1328->g_93", print_hash_value);
    transparent_crc(p_1328->g_94, "p_1328->g_94", print_hash_value);
    transparent_crc(p_1328->g_95, "p_1328->g_95", print_hash_value);
    transparent_crc(p_1328->g_96, "p_1328->g_96", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1328->g_97[i][j][k], "p_1328->g_97[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1328->g_98, "p_1328->g_98", print_hash_value);
    transparent_crc(p_1328->g_99, "p_1328->g_99", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1328->g_100[i], "p_1328->g_100[i]", print_hash_value);

    }
    transparent_crc(p_1328->g_101, "p_1328->g_101", print_hash_value);
    transparent_crc(p_1328->g_102, "p_1328->g_102", print_hash_value);
    transparent_crc(p_1328->g_103, "p_1328->g_103", print_hash_value);
    transparent_crc(p_1328->g_104, "p_1328->g_104", print_hash_value);
    transparent_crc(p_1328->g_105, "p_1328->g_105", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1328->g_106[i], "p_1328->g_106[i]", print_hash_value);

    }
    transparent_crc(p_1328->g_107, "p_1328->g_107", print_hash_value);
    transparent_crc(p_1328->g_108, "p_1328->g_108", print_hash_value);
    transparent_crc(p_1328->g_109, "p_1328->g_109", print_hash_value);
    transparent_crc(p_1328->g_110, "p_1328->g_110", print_hash_value);
    transparent_crc(p_1328->g_111, "p_1328->g_111", print_hash_value);
    transparent_crc(p_1328->g_112, "p_1328->g_112", print_hash_value);
    transparent_crc(p_1328->g_140, "p_1328->g_140", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1328->g_149[i][j][k], "p_1328->g_149[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1328->g_164, "p_1328->g_164", print_hash_value);
    transparent_crc(p_1328->g_187, "p_1328->g_187", print_hash_value);
    transparent_crc(p_1328->g_189, "p_1328->g_189", print_hash_value);
    transparent_crc(p_1328->g_228, "p_1328->g_228", print_hash_value);
    transparent_crc(p_1328->g_242, "p_1328->g_242", print_hash_value);
    transparent_crc(p_1328->g_271, "p_1328->g_271", print_hash_value);
    transparent_crc(p_1328->g_316, "p_1328->g_316", print_hash_value);
    transparent_crc(p_1328->g_369, "p_1328->g_369", print_hash_value);
    transparent_crc(p_1328->g_383, "p_1328->g_383", print_hash_value);
    transparent_crc(p_1328->g_384.f0, "p_1328->g_384.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1328->g_391[i][j], "p_1328->g_391[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1328->g_491.f0, "p_1328->g_491.f0", print_hash_value);
    transparent_crc(p_1328->g_539, "p_1328->g_539", print_hash_value);
    transparent_crc(p_1328->g_640.f0, "p_1328->g_640.f0", print_hash_value);
    transparent_crc(p_1328->g_640.f1, "p_1328->g_640.f1", print_hash_value);
    transparent_crc(p_1328->g_640.f2, "p_1328->g_640.f2", print_hash_value);
    transparent_crc(p_1328->g_640.f3, "p_1328->g_640.f3", print_hash_value);
    transparent_crc(p_1328->g_640.f4, "p_1328->g_640.f4", print_hash_value);
    transparent_crc(p_1328->g_640.f5, "p_1328->g_640.f5", print_hash_value);
    transparent_crc(p_1328->g_640.f6, "p_1328->g_640.f6", print_hash_value);
    transparent_crc(p_1328->g_640.f7, "p_1328->g_640.f7", print_hash_value);
    transparent_crc(p_1328->g_640.f8, "p_1328->g_640.f8", print_hash_value);
    transparent_crc(p_1328->g_640.f9, "p_1328->g_640.f9", print_hash_value);
    transparent_crc(p_1328->g_1007, "p_1328->g_1007", print_hash_value);
    transparent_crc(p_1328->g_1014, "p_1328->g_1014", print_hash_value);
    transparent_crc(p_1328->g_1017.f0, "p_1328->g_1017.f0", print_hash_value);
    transparent_crc(p_1328->g_1017.f1, "p_1328->g_1017.f1", print_hash_value);
    transparent_crc(p_1328->g_1017.f2, "p_1328->g_1017.f2", print_hash_value);
    transparent_crc(p_1328->g_1017.f3, "p_1328->g_1017.f3", print_hash_value);
    transparent_crc(p_1328->g_1017.f4, "p_1328->g_1017.f4", print_hash_value);
    transparent_crc(p_1328->g_1017.f5, "p_1328->g_1017.f5", print_hash_value);
    transparent_crc(p_1328->g_1017.f6, "p_1328->g_1017.f6", print_hash_value);
    transparent_crc(p_1328->g_1017.f7, "p_1328->g_1017.f7", print_hash_value);
    transparent_crc(p_1328->g_1017.f8, "p_1328->g_1017.f8", print_hash_value);
    transparent_crc(p_1328->g_1017.f9, "p_1328->g_1017.f9", print_hash_value);
    transparent_crc(p_1328->g_1029, "p_1328->g_1029", print_hash_value);
    transparent_crc(p_1328->g_1086, "p_1328->g_1086", print_hash_value);
    transparent_crc(p_1328->g_1120, "p_1328->g_1120", print_hash_value);
    transparent_crc(p_1328->g_1123.f0, "p_1328->g_1123.f0", print_hash_value);
    transparent_crc(p_1328->g_1123.f1, "p_1328->g_1123.f1", print_hash_value);
    transparent_crc(p_1328->g_1123.f2, "p_1328->g_1123.f2", print_hash_value);
    transparent_crc(p_1328->g_1123.f3, "p_1328->g_1123.f3", print_hash_value);
    transparent_crc(p_1328->g_1123.f4, "p_1328->g_1123.f4", print_hash_value);
    transparent_crc(p_1328->g_1123.f5, "p_1328->g_1123.f5", print_hash_value);
    transparent_crc(p_1328->g_1123.f6, "p_1328->g_1123.f6", print_hash_value);
    transparent_crc(p_1328->g_1123.f7, "p_1328->g_1123.f7", print_hash_value);
    transparent_crc(p_1328->g_1123.f8, "p_1328->g_1123.f8", print_hash_value);
    transparent_crc(p_1328->g_1123.f9, "p_1328->g_1123.f9", print_hash_value);
    transparent_crc(p_1328->g_1182.f0, "p_1328->g_1182.f0", print_hash_value);
    transparent_crc(p_1328->g_1182.f1, "p_1328->g_1182.f1", print_hash_value);
    transparent_crc(p_1328->g_1182.f2, "p_1328->g_1182.f2", print_hash_value);
    transparent_crc(p_1328->g_1182.f3, "p_1328->g_1182.f3", print_hash_value);
    transparent_crc(p_1328->g_1182.f4, "p_1328->g_1182.f4", print_hash_value);
    transparent_crc(p_1328->g_1182.f5, "p_1328->g_1182.f5", print_hash_value);
    transparent_crc(p_1328->g_1182.f6, "p_1328->g_1182.f6", print_hash_value);
    transparent_crc(p_1328->g_1182.f7, "p_1328->g_1182.f7", print_hash_value);
    transparent_crc(p_1328->g_1182.f8, "p_1328->g_1182.f8", print_hash_value);
    transparent_crc(p_1328->g_1182.f9, "p_1328->g_1182.f9", print_hash_value);
    transparent_crc(p_1328->g_1217, "p_1328->g_1217", print_hash_value);
    transparent_crc(p_1328->g_1257, "p_1328->g_1257", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 5; i++)
            transparent_crc(p_1328->g_special_values[i + 5 * get_linear_group_id()], "p_1328->g_special_values[i + 5 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 5; i++)
            transparent_crc(p_1328->l_special_values[i], "p_1328->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
