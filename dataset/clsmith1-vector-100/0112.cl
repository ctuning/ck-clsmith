// ---fake_divergence -g 31,5,35 -l 31,1,5
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


// Seed: 112

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint16_t  f0;
   int64_t  f1;
   uint32_t  f2;
   uint32_t  f3;
   volatile uint8_t  f4;
};

struct S1 {
    int8_t g_3;
    volatile VECTOR(int32_t, 4) g_4;
    int32_t g_6;
    VECTOR(uint64_t, 16) g_46;
    int32_t *g_100;
    uint32_t g_108;
    int32_t g_109;
    union U0 g_118;
    union U0 *g_117;
    int32_t g_122;
    int32_t *g_121[4][10][5];
    int32_t **g_120;
    uint8_t g_131;
    VECTOR(uint64_t, 4) g_132;
    uint8_t g_139;
    VECTOR(int16_t, 2) g_155;
    VECTOR(uint64_t, 2) g_156;
    VECTOR(int32_t, 16) g_162;
    VECTOR(int32_t, 16) g_163;
    VECTOR(int32_t, 2) g_164;
    union U0 g_167;
    union U0 g_168[10][1];
    int64_t g_181;
    uint32_t g_185;
    int16_t *g_187;
    VECTOR(int32_t, 2) g_192;
    uint32_t *g_203;
    uint32_t **g_202;
    VECTOR(int8_t, 16) g_213;
    VECTOR(int32_t, 8) g_223;
    VECTOR(int32_t, 2) g_224;
    VECTOR(int32_t, 8) g_230;
    int32_t g_250;
    int32_t *g_253;
    int32_t **g_252[4];
    VECTOR(int8_t, 4) g_277;
    VECTOR(int8_t, 4) g_278;
    VECTOR(int8_t, 2) g_295;
    VECTOR(int8_t, 4) g_329;
    VECTOR(int8_t, 4) g_331;
    uint32_t g_338;
    VECTOR(int16_t, 4) g_342;
    uint8_t *g_400;
    VECTOR(uint8_t, 4) g_432;
    VECTOR(int32_t, 8) g_435;
    VECTOR(uint8_t, 16) g_464;
    uint16_t *g_488[5][8];
    uint16_t **g_487[1][1][4];
    uint32_t g_524;
    uint32_t ***g_537;
    uint32_t ****g_536;
    VECTOR(uint64_t, 16) g_599;
    VECTOR(uint64_t, 8) g_601;
    VECTOR(uint32_t, 4) g_602;
    VECTOR(uint16_t, 8) g_608;
    VECTOR(uint16_t, 8) g_613;
    VECTOR(uint64_t, 16) g_642;
    VECTOR(uint32_t, 8) g_665;
    VECTOR(uint32_t, 16) g_667;
    VECTOR(uint32_t, 4) g_668;
    VECTOR(uint64_t, 4) g_675;
    VECTOR(uint64_t, 16) g_678;
    VECTOR(int32_t, 16) g_714;
    uint64_t g_737;
    VECTOR(int64_t, 8) g_815;
    VECTOR(int64_t, 4) g_823;
    VECTOR(uint16_t, 4) g_836;
    volatile union U0 g_848;
    union U0 g_865;
    int32_t * volatile g_866;
    int64_t *** volatile g_870;
    volatile VECTOR(uint8_t, 4) g_908;
    VECTOR(int32_t, 8) g_929;
    volatile VECTOR(int32_t, 2) g_932;
    volatile VECTOR(int32_t, 2) g_933;
    uint64_t g_938[5][8][5];
    int32_t * volatile g_950;
    int32_t * volatile g_952[9];
    volatile int32_t g_954[9][5];
    int32_t *g_978;
    union U0 g_981;
    volatile VECTOR(uint8_t, 8) g_990;
    VECTOR(uint8_t, 2) g_992;
    uint32_t g_1010;
    volatile VECTOR(int32_t, 8) g_1016;
    VECTOR(int32_t, 16) g_1017;
    volatile VECTOR(int32_t, 4) g_1018;
    VECTOR(int32_t, 16) g_1019;
    int8_t *g_1050;
    int8_t **g_1049[10][5];
    int8_t *** volatile g_1048;
    volatile VECTOR(int32_t, 4) g_1055;
    VECTOR(int8_t, 2) g_1066;
    volatile VECTOR(uint64_t, 8) g_1075;
    VECTOR(int64_t, 4) g_1083;
    int32_t g_1086;
    volatile VECTOR(int32_t, 2) g_1098;
    VECTOR(uint8_t, 4) g_1116;
    volatile VECTOR(uint32_t, 16) g_1117;
    union U0 g_1118[2];
    int16_t g_1128;
    volatile VECTOR(int8_t, 8) g_1144;
    VECTOR(uint32_t, 8) g_1151;
    volatile union U0 g_1154[8][10];
    union U0 g_1162;
    uint16_t g_1163;
    VECTOR(uint32_t, 2) g_1175;
    VECTOR(uint32_t, 16) g_1176;
    volatile VECTOR(uint32_t, 4) g_1177;
    union U0 g_1188;
    union U0 **g_1204;
    union U0 ***g_1203;
    uint16_t g_1237;
    union U0 g_1260;
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
union U0  func_1(struct S1 * p_1261);
int8_t  func_42(uint8_t  p_43, int32_t  p_44, int32_t  p_45, struct S1 * p_1261);
int32_t * func_47(uint8_t  p_48, int32_t  p_49, int32_t  p_50, struct S1 * p_1261);
uint64_t  func_57(int64_t  p_58, int32_t  p_59, int16_t  p_60, uint32_t  p_61, int32_t * p_62, struct S1 * p_1261);
int8_t  func_65(uint16_t  p_66, uint64_t  p_67, int32_t ** p_68, int16_t  p_69, struct S1 * p_1261);
int32_t  func_79(int8_t  p_80, int32_t  p_81, int32_t * p_82, uint64_t  p_83, int32_t ** p_84, struct S1 * p_1261);
int32_t * func_86(uint32_t  p_87, int64_t  p_88, int64_t  p_89, struct S1 * p_1261);
uint32_t  func_90(int32_t * p_91, int32_t * p_92, int32_t * p_93, struct S1 * p_1261);
int32_t * func_94(int64_t  p_95, int32_t * p_96, uint16_t  p_97, uint32_t  p_98, int32_t ** p_99, struct S1 * p_1261);
uint8_t  func_101(uint32_t  p_102, int32_t  p_103, struct S1 * p_1261);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1261->g_3 p_1261->g_4 p_1261->g_46 p_1261->g_6 p_1261->g_132 p_1261->g_120 p_1261->g_121 p_1261->g_122 p_1261->g_118.f0 p_1261->g_155 p_1261->g_338 p_1261->g_131 p_1261->g_331 p_1261->g_737 p_1261->g_118.f3 p_1261->g_667 p_1261->g_230 p_1261->g_250 p_1261->g_865 p_1261->g_167.f0 p_1261->g_168.f0 p_1261->g_938 p_1261->g_213 p_1261->g_524 p_1261->g_981 p_1261->g_990 p_1261->g_992 p_1261->g_981.f0 p_1261->g_329 p_1261->g_608 p_1261->g_1010 p_1261->g_1016 p_1261->g_1017 p_1261->g_1018 p_1261->g_1019 p_1261->g_602 p_1261->g_601 p_1261->g_432 p_1261->g_823 p_1261->g_1048 p_1261->g_118 p_1261->g_342 p_1261->g_1055 p_1261->g_1066 p_1261->g_223 p_1261->g_156 p_1261->g_1075 p_1261->g_1083 p_1261->g_536 p_1261->g_537 p_1261->g_1098 p_1261->g_1116 p_1261->g_1117 p_1261->g_954 p_1261->g_1118 p_1261->g_1144 p_1261->g_1151 p_1261->g_1154 p_1261->g_870 p_1261->g_1162 p_1261->g_1163 p_1261->g_1175 p_1261->g_1176 p_1261->g_1177 p_1261->g_1188 p_1261->g_117 p_1261->g_203 p_1261->g_108 p_1261->g_278 p_1261->g_978 p_1261->g_109 p_1261->g_1237 p_1261->g_675 p_1261->g_668 p_1261->g_162 p_1261->g_164 p_1261->g_1260
 * writes: p_1261->g_122 p_1261->g_118.f0 p_1261->g_6 p_1261->g_121 p_1261->g_400 p_1261->g_181 p_1261->g_118.f3 p_1261->g_131 p_1261->g_250 p_1261->g_167.f0 p_1261->g_329 p_1261->g_168.f0 p_1261->g_117 p_1261->g_524 p_1261->g_978 p_1261->g_432 p_1261->g_1010 p_1261->g_536 p_1261->g_1049 p_1261->g_342 p_1261->g_737 p_1261->g_823 p_1261->g_1203 p_1261->g_1188.f0 p_1261->g_109 p_1261->g_1050
 */
union U0  func_1(struct S1 * p_1261)
{ /* block id: 4 */
    int8_t l_2 = 1L;
    int32_t l_20 = 0x18B9628EL;
    int32_t l_21 = 0L;
    int32_t l_22 = 7L;
    int32_t l_25 = 1L;
    int32_t l_26 = 0x4F69674BL;
    int32_t l_27 = 1L;
    int32_t l_28 = 0L;
    int32_t l_29 = 2L;
    int32_t l_30 = (-1L);
    int32_t l_31 = 0x2A14D58FL;
    int32_t l_32[6] = {1L,1L,1L,1L,1L,1L};
    int16_t l_33 = 0x7EE7L;
    uint16_t l_35 = 0x5359L;
    int32_t *l_53 = &l_27;
    int32_t l_977 = 1L;
    VECTOR(int64_t, 4) l_984 = (VECTOR(int64_t, 4))(0x7EEDEBA802991223L, (VECTOR(int64_t, 2))(0x7EEDEBA802991223L, 7L), 7L);
    VECTOR(uint8_t, 16) l_991 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x39L), 0x39L), 0x39L, 255UL, 0x39L, (VECTOR(uint8_t, 2))(255UL, 0x39L), (VECTOR(uint8_t, 2))(255UL, 0x39L), 255UL, 0x39L, 255UL, 0x39L);
    VECTOR(int32_t, 4) l_1020 = (VECTOR(int32_t, 4))(0x50042015L, (VECTOR(int32_t, 2))(0x50042015L, 0L), 0L);
    uint32_t **l_1027 = &p_1261->g_203;
    int64_t l_1041 = 0x769970F559483C01L;
    VECTOR(int8_t, 16) l_1059 = (VECTOR(int8_t, 16))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 0x4AL), 0x4AL), 0x4AL, (-4L), 0x4AL, (VECTOR(int8_t, 2))((-4L), 0x4AL), (VECTOR(int8_t, 2))((-4L), 0x4AL), (-4L), 0x4AL, (-4L), 0x4AL);
    int32_t ***l_1113 = &p_1261->g_120;
    int32_t ****l_1112[3];
    uint64_t l_1161 = 1UL;
    uint16_t **l_1179 = (void*)0;
    union U0 ***l_1205[7] = {&p_1261->g_1204,&p_1261->g_1204,&p_1261->g_1204,&p_1261->g_1204,&p_1261->g_1204,&p_1261->g_1204,&p_1261->g_1204};
    int32_t **l_1206 = &p_1261->g_121[1][3][3];
    int32_t *l_1207 = &l_977;
    int32_t l_1212 = 0L;
    VECTOR(uint64_t, 2) l_1215 = (VECTOR(uint64_t, 2))(0x69E477EB0E6270FFL, 0x0DCD8268599F10CAL);
    int32_t l_1233 = 1L;
    uint16_t l_1234 = 0xD9D3L;
    uint8_t l_1238 = 5UL;
    int32_t *l_1239[1];
    int32_t l_1240[5][9] = {{(-3L),9L,0x477E0BEFL,0x7E771E4FL,0x51352DF8L,(-3L),0x7E771E4FL,0x5273C0D6L,0x7E771E4FL},{(-3L),9L,0x477E0BEFL,0x7E771E4FL,0x51352DF8L,(-3L),0x7E771E4FL,0x5273C0D6L,0x7E771E4FL},{(-3L),9L,0x477E0BEFL,0x7E771E4FL,0x51352DF8L,(-3L),0x7E771E4FL,0x5273C0D6L,0x7E771E4FL},{(-3L),9L,0x477E0BEFL,0x7E771E4FL,0x51352DF8L,(-3L),0x7E771E4FL,0x5273C0D6L,0x7E771E4FL},{(-3L),9L,0x477E0BEFL,0x7E771E4FL,0x51352DF8L,(-3L),0x7E771E4FL,0x5273C0D6L,0x7E771E4FL}};
    uint16_t *l_1245[8][8] = {{(void*)0,&l_1234,&l_35,&p_1261->g_1163,(void*)0,(void*)0,&p_1261->g_1163,&l_35},{(void*)0,&l_1234,&l_35,&p_1261->g_1163,(void*)0,(void*)0,&p_1261->g_1163,&l_35},{(void*)0,&l_1234,&l_35,&p_1261->g_1163,(void*)0,(void*)0,&p_1261->g_1163,&l_35},{(void*)0,&l_1234,&l_35,&p_1261->g_1163,(void*)0,(void*)0,&p_1261->g_1163,&l_35},{(void*)0,&l_1234,&l_35,&p_1261->g_1163,(void*)0,(void*)0,&p_1261->g_1163,&l_35},{(void*)0,&l_1234,&l_35,&p_1261->g_1163,(void*)0,(void*)0,&p_1261->g_1163,&l_35},{(void*)0,&l_1234,&l_35,&p_1261->g_1163,(void*)0,(void*)0,&p_1261->g_1163,&l_35},{(void*)0,&l_1234,&l_35,&p_1261->g_1163,(void*)0,(void*)0,&p_1261->g_1163,&l_35}};
    uint8_t l_1246 = 0UL;
    int8_t **l_1251 = (void*)0;
    int8_t **l_1252 = &p_1261->g_1050;
    int8_t *l_1254[3];
    int8_t **l_1253[9];
    int8_t *l_1255 = (void*)0;
    int8_t *l_1256 = (void*)0;
    uint32_t l_1257 = 6UL;
    uint32_t l_1258 = 0x4BFF8FF9L;
    int16_t l_1259 = (-1L);
    int i, j;
    for (i = 0; i < 3; i++)
        l_1112[i] = &l_1113;
    for (i = 0; i < 1; i++)
        l_1239[i] = &l_31;
    for (i = 0; i < 3; i++)
        l_1254[i] = (void*)0;
    for (i = 0; i < 9; i++)
        l_1253[i] = &l_1254[0];
    if (((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 8))(0x6AC45307L, 0x263126FFL, 0x31A9565EL, 0x4CCDDD1DL, ((VECTOR(int32_t, 4))(l_2, (l_2 , p_1261->g_3), 0x2DAFBBD0L, 0x084BC9C3L)))), ((VECTOR(int32_t, 4))(p_1261->g_4.yzxy)).xxyxxxxw, ((VECTOR(int32_t, 2))(0L, 0x1934B0B4L)).xyxxyyyy))).s7)
    { /* block id: 5 */
        int32_t *l_5 = &p_1261->g_6;
        int32_t *l_7 = &p_1261->g_6;
        int32_t *l_8 = &p_1261->g_6;
        int32_t *l_9 = &p_1261->g_6;
        int32_t *l_10 = (void*)0;
        int32_t *l_11 = &p_1261->g_6;
        int32_t *l_12 = &p_1261->g_6;
        int32_t *l_13 = &p_1261->g_6;
        int32_t *l_14 = &p_1261->g_6;
        int32_t *l_15 = &p_1261->g_6;
        int32_t *l_16 = (void*)0;
        int32_t *l_17 = (void*)0;
        int32_t *l_18 = &p_1261->g_6;
        int32_t *l_19[2][8][7] = {{{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6},{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6},{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6},{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6},{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6},{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6},{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6},{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6}},{{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6},{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6},{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6},{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6},{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6},{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6},{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6},{&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6}}};
        int64_t l_23 = 9L;
        int32_t l_24 = 0x785D55A9L;
        int16_t l_34 = 3L;
        int32_t **l_54[2][10][7] = {{{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16}},{{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16},{&l_11,&l_8,&l_17,&l_8,&l_11,&l_19[0][1][0],&l_16}}};
        uint8_t *l_383[3][5] = {{&p_1261->g_131,&p_1261->g_131,&p_1261->g_131,&p_1261->g_131,&p_1261->g_131},{&p_1261->g_131,&p_1261->g_131,&p_1261->g_131,&p_1261->g_131,&p_1261->g_131},{&p_1261->g_131,&p_1261->g_131,&p_1261->g_131,&p_1261->g_131,&p_1261->g_131}};
        uint8_t l_967 = 0x87L;
        VECTOR(int32_t, 8) l_1021 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x3C6D1000L), 0x3C6D1000L), 0x3C6D1000L, (-1L), 0x3C6D1000L);
        uint32_t **l_1026[4];
        int64_t *l_1038 = (void*)0;
        int64_t **l_1037 = &l_1038;
        uint8_t l_1039 = 4UL;
        uint16_t **l_1074 = (void*)0;
        int32_t l_1130 = 0x6EE673F4L;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_1026[i] = &p_1261->g_203;
        --l_35;
        if ((safe_mul_func_uint8_t_u_u((safe_sub_func_int8_t_s_s(func_42(p_1261->g_4.w, p_1261->g_3, (((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 2))(p_1261->g_46.sa4)).yxyyyyyx, (uint64_t)(((p_1261->g_3 , (&l_20 == ((*p_1261->g_120) = func_47((l_20 = (safe_div_func_uint8_t_u_u(((l_53 = l_53) != &l_20), (safe_div_func_uint64_t_u_u(func_57((0UL > (safe_div_func_int32_t_s_s(((((((func_65((safe_mod_func_uint64_t_u_u((&l_17 != (void*)0), p_1261->g_6)), p_1261->g_3, &l_13, p_1261->g_46.s3, p_1261) , 0L) & l_22) < GROUP_DIVERGE(2, 1)) && 0L) | l_29) , l_29), FAKE_DIVERGE(p_1261->local_1_offset, get_local_id(1), 10)))), (*l_9), l_2, l_26, (*p_1261->g_120), p_1261), 0x2775F6733D8E06D9L))))), p_1261->g_155.x, l_35, p_1261)))) , p_1261->g_737) <= l_33)))).s5 , (*l_15)), p_1261), p_1261->g_213.s4)), l_27)))
        { /* block id: 413 */
            int32_t l_963 = (-7L);
            int32_t l_964 = (-10L);
            int32_t l_965 = 0x747D21BAL;
            int32_t l_966 = 0x21663F06L;
            l_967--;
        }
        else
        { /* block id: 415 */
            VECTOR(int32_t, 16) l_974 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-7L)), (-7L)), (-7L), (-1L), (-7L), (VECTOR(int32_t, 2))((-1L), (-7L)), (VECTOR(int32_t, 2))((-1L), (-7L)), (-1L), (-7L), (-1L), (-7L));
            int32_t l_1007 = 0L;
            int32_t l_1036 = (-6L);
            uint16_t ***l_1082 = &p_1261->g_487[0][0][2];
            int32_t l_1089 = 0x059C2B74L;
            int32_t l_1090 = (-5L);
            int32_t l_1092 = 7L;
            int32_t l_1093 = 0x4E444F5AL;
            uint64_t *l_1099 = &p_1261->g_737;
            int32_t l_1132 = 1L;
            int8_t l_1139 = 0x71L;
            int i;
            if ((safe_div_func_uint64_t_u_u(((p_1261->g_132.x , ((l_11 == (p_1261->g_978 = &p_1261->g_250)) <= (*l_53))) & (*l_18)), (*l_53))))
            { /* block id: 417 */
                VECTOR(int8_t, 8) l_989 = (VECTOR(int8_t, 8))(0x34L, (VECTOR(int8_t, 4))(0x34L, (VECTOR(int8_t, 2))(0x34L, (-1L)), (-1L)), (-1L), 0x34L, (-1L));
                int16_t *l_1004[2][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                int32_t l_1005 = 3L;
                uint64_t *l_1006[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t l_1011 = 0x299E461BL;
                int64_t *l_1035 = (void*)0;
                int64_t **l_1034 = &l_1035;
                uint32_t *l_1040[3][3][2] = {{{&p_1261->g_185,(void*)0},{&p_1261->g_185,(void*)0},{&p_1261->g_185,(void*)0}},{{&p_1261->g_185,(void*)0},{&p_1261->g_185,(void*)0},{&p_1261->g_185,(void*)0}},{{&p_1261->g_185,(void*)0},{&p_1261->g_185,(void*)0},{&p_1261->g_185,(void*)0}}};
                uint32_t *****l_1042 = (void*)0;
                uint32_t *****l_1043 = &p_1261->g_536;
                uint8_t l_1062 = 1UL;
                int16_t l_1067 = 0x131FL;
                VECTOR(int64_t, 2) l_1079 = (VECTOR(int64_t, 2))(0x335261FE543D5B4EL, 1L);
                VECTOR(int16_t, 8) l_1120 = (VECTOR(int16_t, 8))(0x2283L, (VECTOR(int16_t, 4))(0x2283L, (VECTOR(int16_t, 2))(0x2283L, 0x282BL), 0x282BL), 0x282BL, 0x2283L, 0x282BL);
                int32_t l_1125 = (-10L);
                int32_t l_1126 = 0x18F93D37L;
                int32_t l_1127 = 8L;
                int32_t l_1129 = 0x1CDC21D6L;
                int32_t l_1133 = 1L;
                int32_t l_1134[2];
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_1134[i] = (-2L);
                for (p_1261->g_524 = (-7); (p_1261->g_524 <= 15); p_1261->g_524 = safe_add_func_uint32_t_u_u(p_1261->g_524, 5))
                { /* block id: 420 */
                    return p_1261->g_981;
                }
                l_1011 &= ((safe_lshift_func_uint16_t_u_u((~(((VECTOR(int16_t, 2))((-1L), 0x438BL)).even == ((+((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(l_984.wyxw)))).x) != (safe_add_func_int32_t_s_s(((safe_rshift_func_uint8_t_u_s(((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 16))(l_989.s1212576622655651)), ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(p_1261->g_990.s36)))).xxxx, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 8))(l_991.s827f31a3)).s1761703746732515, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(p_1261->g_992.yxyxyyxxxyyyxxyx)).se, ((VECTOR(uint8_t, 4))((safe_div_func_uint32_t_u_u((p_1261->g_981.f0 > (((VECTOR(int32_t, 16))(((safe_lshift_func_uint8_t_u_s((safe_div_func_int16_t_s_s(((((0x487BL & (*l_8)) <= (0x5EL & (safe_add_func_uint64_t_u_u((safe_mul_func_uint64_t_u_u((l_1007 = ((safe_unary_minus_func_int16_t_s((l_1005 = l_989.s1))) & 0x03L)), ((*l_53) <= 18446744073709551606UL))), (safe_lshift_func_uint16_t_u_s((*l_53), (*l_11))))))) , (*l_18)) ^ l_974.s8), (*l_53))), p_1261->g_329.y)) != p_1261->g_608.s1), (-6L), 0x412F57D2L, (*l_53), ((VECTOR(int32_t, 2))((-6L))), ((VECTOR(int32_t, 4))(6L)), (-3L), (-1L), 0x1BE1AFB2L, ((VECTOR(int32_t, 2))(4L)), (-1L))).s9 ^ 0x381EDD1DL)), l_974.s5)), 0UL, 0x20L, 249UL)), ((VECTOR(uint8_t, 2))(0xDFL)), 255UL)).s3074156122451147))))))).sb9a4)), ((VECTOR(uint8_t, 4))(0x8EL))))).wwxzyzxyxyzywwzz))))).odd)).s1 & 0x6241L) == (*l_53)), 0)) > p_1261->g_1010), 0x4DBED9D7L))))), 8)) < (*l_53));
                (*l_12) = (safe_lshift_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_s((((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 16))((*l_53), 0x42D1A30DL, 0x27A39F54L, ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 4))(p_1261->g_1016.s2071)).zyzwyzzzxzwzzyyy, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(p_1261->g_1017.s37)).xyyxyxxxyyyxyxyx, ((VECTOR(int32_t, 16))(p_1261->g_1018.wzxzzxxzyzwzwzxx)), ((VECTOR(int32_t, 4))(p_1261->g_1019.sc32d)).ywxzxxxwyxyywxzy))).lo, ((VECTOR(int32_t, 2))(l_1020.yy)).xxyxxyyy))))).s14)).yxxxxxyxxxyyxxyy)))))).s3d, ((VECTOR(int32_t, 8))(l_1021.s51266523)).s63, ((VECTOR(int32_t, 4))(0x76858E14L, ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((safe_mul_func_int16_t_s_s((((l_1026[2] == l_1027) > (p_1261->g_1010 = (p_1261->g_602.z , ((safe_add_func_uint32_t_u_u(((p_1261->g_432.z &= (255UL < (safe_lshift_func_uint8_t_u_u((0UL <= 1L), (~((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 8))((safe_add_func_uint64_t_u_u(((l_1034 != ((((((l_1036 || l_1007) | (*l_9)) ^ 0UL) <= FAKE_DIVERGE(p_1261->group_2_offset, get_group_id(2), 10)) >= l_974.sd) , l_1037)) , l_989.s0), p_1261->g_992.x)), p_1261->g_601.s3, ((VECTOR(uint8_t, 4))(0x73L)), 0x09L, 0xE2L)).hi, ((VECTOR(uint8_t, 4))(0UL))))).even, ((VECTOR(uint8_t, 2))(0x24L)), ((VECTOR(uint8_t, 2))(0UL))))), 0xD4L, 6UL)).z))))) > p_1261->g_823.x), (*l_53))) > l_1039)))) < p_1261->g_990.s7), l_989.s5)) <= (*l_11)), 0x73EAL, 0x2462L, 0x7EE3L)))).x, ((VECTOR(int16_t, 4))(0x0B98L)), ((VECTOR(int16_t, 8))((-8L))), 0x09C0L, 0x5B69L, 0x3815L)).s91, ((VECTOR(uint16_t, 2))(0x4D4DL))))), 0x6A5EDD13L)).even))), 0x18920E3DL, 6L, 3L, l_1041, (*l_11), 0L, ((VECTOR(int32_t, 4))(1L)), 0x52DEF604L)).s89df, ((VECTOR(int32_t, 4))(0x400A03ACL)), ((VECTOR(int32_t, 4))(0L))))).z == l_1036), l_974.s9)) , 65535UL), (*l_53)));
                if ((((*l_1043) = &p_1261->g_537) != &p_1261->g_537))
                { /* block id: 430 */
                    for (l_25 = (-20); (l_25 >= (-30)); l_25--)
                    { /* block id: 433 */
                        (*p_1261->g_120) = &l_1011;
                    }
                }
                else
                { /* block id: 436 */
                    int8_t *l_1047 = (void*)0;
                    int8_t **l_1046 = &l_1047;
                    VECTOR(int8_t, 8) l_1058 = (VECTOR(int8_t, 8))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x30L), 0x30L), 0x30L, (-2L), 0x30L);
                    VECTOR(int8_t, 2) l_1063 = (VECTOR(int8_t, 2))(0x28L, 0x0BL);
                    int64_t l_1076 = 0x4EBF79420508049FL;
                    VECTOR(int64_t, 8) l_1077 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x12B9715D2AE00DF8L), 0x12B9715D2AE00DF8L), 0x12B9715D2AE00DF8L, 0L, 0x12B9715D2AE00DF8L);
                    int32_t l_1084 = (-1L);
                    int32_t l_1087 = (-5L);
                    int32_t l_1091 = 0x116F1056L;
                    int32_t l_1094 = 5L;
                    VECTOR(uint32_t, 4) l_1107 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x85AD7790L), 0x85AD7790L);
                    int32_t l_1135 = 0x5A36F875L;
                    uint32_t l_1140 = 0xBC8EB64CL;
                    int i;
                    if (l_1011)
                    { /* block id: 437 */
                        (*p_1261->g_1048) = l_1046;
                        return p_1261->g_118;
                    }
                    else
                    { /* block id: 440 */
                        VECTOR(int64_t, 4) l_1078 = (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, 0x41AD2F6C46DB8FDAL), 0x41AD2F6C46DB8FDAL);
                        int32_t l_1085 = (-1L);
                        int32_t l_1088[1];
                        uint32_t l_1095 = 7UL;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1088[i] = 0L;
                        (*l_53) = (safe_sub_func_int16_t_s_s((p_1261->g_342.y &= ((*l_8) = l_989.s3)), (((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 2))(0x1D643A47L, 0x31B13591L)).xyxxyxxxyxxxxyxx, ((VECTOR(int32_t, 16))(p_1261->g_1055.zwzyxwywywwxwwwz))))).sc, (safe_add_func_int8_t_s_s(l_989.s4, ((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_1058.s63)).yxxyyyxx)).hi, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 8))(l_1059.sc1ce4199)).s22, (int8_t)(0x76E3A0DE0845AC2EL == ((*l_53) || (l_1062 > (0xD1D2L && (&p_1261->g_1049[3][4] == &p_1261->g_1049[3][4])))))))).xyyxyyxxxyxxxxxx, ((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 2))((-7L), 0x5EL)).yyyy, ((VECTOR(int8_t, 8))(l_1063.xyyxyxxy)).even))).lo, ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 2))(0x44L, 0x65L)), (int8_t)(safe_lshift_func_uint16_t_u_u(((((~((VECTOR(int8_t, 8))(p_1261->g_1066.yxxxyyxy)).s7) >= ((void*)0 == &p_1261->g_109)) > (*l_53)) != p_1261->g_223.s6), (*l_53))))))))).yyxxxxxyxxxyxyyy))).s6e)).xyxx, ((VECTOR(int8_t, 4))(4L))))))), ((VECTOR(int8_t, 4))(0x65L))))).x)))) || p_1261->g_156.x) , l_1067)));
                        (*l_5) &= (safe_mul_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_u(((safe_mul_func_uint8_t_u_u(l_1011, (((void*)0 != l_1074) < ((((VECTOR(uint64_t, 4))(p_1261->g_1075.s2057)).x ^ 0x71C580D5FF28DCF9L) ^ (((l_1076 || (((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 16))(l_1077.s7652101714540514)), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(l_1078.zwxyxyzz)))), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(l_1079.xyxxyyyx))))))))).s57)).yxyyxxyyyyyyxxyy))).sf , (safe_add_func_uint8_t_u_u((((l_1082 != (void*)0) >= (((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(p_1261->g_1083.xx)))).hi > ((((VECTOR(uint32_t, 2))(1UL, 4294967286UL)).lo , ((*p_1261->g_536) == (*p_1261->g_536))) ^ l_989.s5))) > 253UL), (*l_53))))) | 6UL) | l_1078.x))))) >= l_1036), l_1062)) <= l_989.s3), l_1078.w));
                        --l_1095;
                    }
                    (*l_9) &= ((VECTOR(int32_t, 2))(p_1261->g_1098.yx)).lo;
                    if ((((void*)0 == l_1099) == (l_1091 = (l_1089 || p_1261->g_667.s8))))
                    { /* block id: 449 */
                        int16_t l_1100 = 0x3CECL;
                        l_1084 |= (((void*)0 != &p_1261->g_400) || ((l_1058.s7 | (*l_9)) , (l_1100 > ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(4L, (-1L), (-1L), 5L)))).x)));
                        (*l_5) |= (safe_add_func_int64_t_s_s(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))((safe_div_func_int64_t_s_s(0L, p_1261->g_1017.s0)), (0x38L < (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(0x82A7057DL, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_1107.yz)).yyxy)), ((l_1011 = ((((safe_add_func_uint32_t_u_u(((safe_rshift_func_uint8_t_u_s((l_1112[2] != &l_1113), ((safe_mul_func_int8_t_s_s(l_1079.y, ((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 2))(246UL, 0x38L)).yyxxyxyy, ((VECTOR(uint8_t, 2))(0x34L, 0xDEL)).xyxyyyyy, ((VECTOR(uint8_t, 16))(p_1261->g_1116.zwxyzwxyzxzxywyy)).lo))).s6)) | l_1100))) >= l_1005), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(p_1261->g_1117.se17f)).xxzyyzyx)).s3)) , 0x2E5E181AL) , p_1261->g_1066.y) || FAKE_DIVERGE(p_1261->global_2_offset, get_global_id(2), 10))) , p_1261->g_954[8][3]), 2UL, 0xF1823BF7L)).s0, (-1L)))), ((VECTOR(int64_t, 4))(0x28E241C1D1804149L)), 0x3D59B14EE6014031L, 0x119D7345C401214EL)).s17)).xxyyxyyx)).s07)), 1L, ((VECTOR(int64_t, 4))(0L)), 0x7B4A0245E934E17BL)).odd)).x, p_1261->g_938[4][3][2]));
                        return p_1261->g_1118[1];
                    }
                    else
                    { /* block id: 454 */
                        int32_t l_1119 = 1L;
                        int32_t l_1121 = 0x66B3B16BL;
                        int8_t l_1122 = 0x11L;
                        int32_t l_1123 = 0x6CB6AC87L;
                        int32_t l_1124 = 0L;
                        VECTOR(int32_t, 2) l_1131 = (VECTOR(int32_t, 2))(0x2DF37830L, 0x501EC56AL);
                        uint8_t l_1136 = 1UL;
                        int i;
                        (*l_11) = l_1119;
                        --l_1136;
                    }
                    l_1140--;
                }
            }
            else
            { /* block id: 460 */
                int32_t *l_1143 = &l_1093;
                uint16_t *l_1159[6] = {(void*)0,&p_1261->g_1118[1].f0,(void*)0,(void*)0,&p_1261->g_1118[1].f0,(void*)0};
                int64_t *l_1160[10][5][4] = {{{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181}},{{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181}},{{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181}},{{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181}},{{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181}},{{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181}},{{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181}},{{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181}},{{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181}},{{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181},{&l_23,(void*)0,(void*)0,&p_1261->g_181}}};
                int i, j, k;
                l_1143 = l_1143;
                l_1161 &= ((((+((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(6UL, 0UL)), (((VECTOR(int8_t, 4))((*l_1143), ((VECTOR(int8_t, 2))(p_1261->g_1144.s74)), 0x1AL)).w ^ l_1132), 0x1B916225775A336AL, ((safe_mod_func_int64_t_s_s((p_1261->g_823.z |= (((*l_53) = ((safe_lshift_func_uint16_t_u_u(l_1036, (((*l_11) = (((~(safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 16))((*l_1143), 4294967295UL, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(l_1007, 0xBE6DBD69L, 8UL, 9UL)), ((VECTOR(uint32_t, 2))(0UL, 0xBDEEC129L)), 4294967288UL, 8UL)), ((VECTOR(uint32_t, 2))(4294967295UL, 0UL)), ((VECTOR(uint32_t, 4))(p_1261->g_1151.s0025)))).lo, ((VECTOR(uint32_t, 2))(0xB01D9602L, 0UL)).yxxyyxxx))).s6, (*l_1143)))) && (254UL < (safe_rshift_func_int8_t_s_u((((*l_1099) = (((p_1261->g_1154[6][2] , (safe_lshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((*l_1143) = p_1261->g_338), 0x44L)), l_1092))) >= (*l_53)) & l_1036)) > p_1261->g_1116.z), 6)))) && (*l_1143))) , (*l_1143)))) != FAKE_DIVERGE(p_1261->group_0_offset, get_group_id(0), 10))) <= p_1261->g_1083.z)), 0x50E8F04851E29474L)) , 0x04ABA690CEC60EF7L), 18446744073709551615UL, 0x79CDCE916D6F4A26L, 8UL)).s0) , p_1261->g_870) == &l_1037) , l_1132);
            }
        }
        (*l_53) &= ((*l_8) = (p_1261->g_1162 , p_1261->g_1163));
    }
    else
    { /* block id: 472 */
        uint64_t l_1174 = 0x30E02B063C469CF6L;
        VECTOR(uint64_t, 16) l_1178 = (VECTOR(uint64_t, 16))(0xAD8FFED2D90DFB15L, (VECTOR(uint64_t, 4))(0xAD8FFED2D90DFB15L, (VECTOR(uint64_t, 2))(0xAD8FFED2D90DFB15L, 0xEDE9851C306C614DL), 0xEDE9851C306C614DL), 0xEDE9851C306C614DL, 0xAD8FFED2D90DFB15L, 0xEDE9851C306C614DL, (VECTOR(uint64_t, 2))(0xAD8FFED2D90DFB15L, 0xEDE9851C306C614DL), (VECTOR(uint64_t, 2))(0xAD8FFED2D90DFB15L, 0xEDE9851C306C614DL), 0xAD8FFED2D90DFB15L, 0xEDE9851C306C614DL, 0xAD8FFED2D90DFB15L, 0xEDE9851C306C614DL);
        int16_t *l_1180 = &l_33;
        uint64_t *l_1181 = (void*)0;
        uint64_t *l_1182[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_1183[7] = {0x30FEA0F3L,0x30FEA0F3L,0x30FEA0F3L,0x30FEA0F3L,0x30FEA0F3L,0x30FEA0F3L,0x30FEA0F3L};
        int32_t l_1184 = 0x0F74ED47L;
        VECTOR(int32_t, 2) l_1185 = (VECTOR(int32_t, 2))(0x26477F15L, 0x59F8161FL);
        VECTOR(uint16_t, 8) l_1196 = (VECTOR(uint16_t, 8))(0xC8DCL, (VECTOR(uint16_t, 4))(0xC8DCL, (VECTOR(uint16_t, 2))(0xC8DCL, 65528UL), 65528UL), 65528UL, 0xC8DCL, 65528UL);
        union U0 **l_1200 = &p_1261->g_117;
        union U0 ***l_1199 = &l_1200;
        union U0 ****l_1201 = (void*)0;
        union U0 ****l_1202[6];
        int32_t **l_1218 = &p_1261->g_253;
        uint16_t *l_1226 = &p_1261->g_1188.f0;
        uint8_t l_1231[2][2][2] = {{{0xCBL,0xCBL},{0xCBL,0xCBL}},{{0xCBL,0xCBL},{0xCBL,0xCBL}}};
        int32_t l_1232[3];
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_1202[i] = &l_1199;
        for (i = 0; i < 3; i++)
            l_1232[i] = 0x788DE903L;
        l_1185.y = (safe_mod_func_int64_t_s_s(((GROUP_DIVERGE(0, 1) < (0L != (safe_sub_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u((((void*)0 != &l_2) < (l_1184 = ((!(((l_1183[5] = ((safe_add_func_uint32_t_u_u((*l_53), 0xC2818044L)) != (safe_add_func_int8_t_s_s((p_1261->g_938[0][5][3] || ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(l_1174, ((VECTOR(uint64_t, 2))(0x3B12328AC30F9BCFL, 1UL)), 0xAB3A55B3A65AC8CDL)).lo)).xxxxxxxy, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 4))(p_1261->g_1175.yyyy)).wxxxzwwwwzywxwww, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(abs(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(hadd(((VECTOR(uint32_t, 2))(p_1261->g_1176.sce)), ((VECTOR(uint32_t, 4))(p_1261->g_1177.zzyw)).hi))))).yxxyyxxxyxyxyxxx))).s27d5)).zywzyxzxxwzzzyyy))).s11, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(l_1178.s3203)).yxxyxzzyzxzywwyx)).s88))).xyxy)).zyywyyxy))))).s5), (((*l_1180) = ((&p_1261->g_488[2][4] == (((*l_53) > l_1174) , l_1179)) , 0x0FB1L)) < l_1178.sc))))) | l_1178.s1) || (*l_53))) , 0L))), 11)), 0x49AECEB7L)))) && l_1183[1]), p_1261->g_823.z));
        for (p_1261->g_1010 = 13; (p_1261->g_1010 < 34); p_1261->g_1010++)
        { /* block id: 479 */
            return p_1261->g_1188;
        }
        (**l_1113) = (l_1207 = func_94(((l_1184 |= ((*p_1261->g_117) , (safe_div_func_uint8_t_u_u((safe_div_func_uint32_t_u_u(((safe_unary_minus_func_int16_t_s((((*p_1261->g_117) , (safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(l_1196.s65375375)).s3, (safe_mul_func_uint32_t_u_u(l_1183[5], ((p_1261->g_1203 = l_1199) != (l_1205[4] = l_1205[4]))))))) >= 0x81ACL))) > (!p_1261->g_992.y)), (*l_53))), 1L)))) , (-6L)), &l_1183[3], l_1185.y, (*p_1261->g_203), l_1206, p_1261));
        if (((VECTOR(int32_t, 4))((safe_add_func_uint16_t_u_u((((*p_1261->g_978) = (((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))(l_1212, (safe_sub_func_int32_t_s_s(((p_1261->g_278.x | ((VECTOR(uint64_t, 4))(l_1215.xxxx)).y) | ((safe_sub_func_int8_t_s_s(l_1183[5], (&p_1261->g_253 != l_1218))) , (safe_div_func_int16_t_s_s(((safe_add_func_int8_t_s_s((((((safe_sub_func_int32_t_s_s((safe_unary_minus_func_int32_t_s(l_1185.x)), (((*l_1226) = 0x07A4L) ^ ((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1261->local_2_offset, get_local_id(2), 10), (((*l_53) ^ (safe_sub_func_int8_t_s_s(((l_1185.x | l_1184) , (*l_53)), 0x12L))) > FAKE_DIVERGE(p_1261->global_1_offset, get_global_id(1), 10)))) ^ l_1231[0][1][0])))) == p_1261->g_981.f0) && p_1261->g_1075.s6) <= p_1261->g_938[4][1][0]) != l_1196.s4), p_1261->g_338)) != l_1232[0]), p_1261->g_737)))), l_1196.s0)), 0x81L, 0x2AL)).y, 4)) ^ l_1233) , (*p_1261->g_978))) , l_1234), l_1232[0])), ((VECTOR(int32_t, 2))(0L)), (-2L))).w)
        { /* block id: 489 */
            return (*p_1261->g_117);
        }
        else
        { /* block id: 491 */
            for (l_22 = 0; (l_22 >= (-14)); --l_22)
            { /* block id: 494 */
                if (p_1261->g_1237)
                    break;
            }
        }
    }
    (*l_1206) = func_94(l_1238, l_1239[0], (*l_1207), ((l_1240[1][4] > (((safe_lshift_func_uint8_t_u_s((safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0x49ACD5DCL, 0UL)), 0x1BC08427L, 0x35A3D718L)))).y, ((l_1246--) == 0UL))), (((*l_53) = (((safe_add_func_uint64_t_u_u(((l_1255 = ((*l_1252) = &l_2)) != l_1256), ((((VECTOR(uint32_t, 2))(0UL, 0xF73ED11CL)).odd , ((((GROUP_DIVERGE(2, 1) , (((l_1257 == (p_1261->g_870 != (void*)0)) || 0x78E5L) , (*l_1207))) & p_1261->g_675.w) && p_1261->g_668.z) ^ p_1261->g_162.s4)) >= l_1258))) && p_1261->g_164.y) , 0x07L)) > p_1261->g_230.s1))) < l_1259) ^ 0x5F4BL)) != GROUP_DIVERGE(2, 1)), &p_1261->g_100, p_1261);
    return p_1261->g_1260;
}


/* ------------------------------------------ */
/* 
 * reads : p_1261->g_118.f3 p_1261->g_667 p_1261->g_230 p_1261->g_250 p_1261->g_865 p_1261->g_120 p_1261->g_121 p_1261->g_338 p_1261->g_6 p_1261->g_122 p_1261->g_167.f0 p_1261->g_168.f0 p_1261->g_938 p_1261->g_131 p_1261->g_331
 * writes: p_1261->g_118.f3 p_1261->g_121 p_1261->g_131 p_1261->g_122 p_1261->g_250 p_1261->g_167.f0 p_1261->g_329 p_1261->g_168.f0 p_1261->g_117 p_1261->g_400 p_1261->g_181 p_1261->g_524
 */
int8_t  func_42(uint8_t  p_43, int32_t  p_44, int32_t  p_45, struct S1 * p_1261)
{ /* block id: 347 */
    uint32_t l_829 = 0xC9EC2911L;
    VECTOR(uint16_t, 16) l_837 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xEA73L), 0xEA73L), 0xEA73L, 1UL, 0xEA73L, (VECTOR(uint16_t, 2))(1UL, 0xEA73L), (VECTOR(uint16_t, 2))(1UL, 0xEA73L), 1UL, 0xEA73L, 1UL, 0xEA73L);
    VECTOR(uint16_t, 16) l_838 = (VECTOR(uint16_t, 16))(0x5DA8L, (VECTOR(uint16_t, 4))(0x5DA8L, (VECTOR(uint16_t, 2))(0x5DA8L, 0UL), 0UL), 0UL, 0x5DA8L, 0UL, (VECTOR(uint16_t, 2))(0x5DA8L, 0UL), (VECTOR(uint16_t, 2))(0x5DA8L, 0UL), 0x5DA8L, 0UL, 0x5DA8L, 0UL);
    int32_t ***l_843 = &p_1261->g_120;
    uint32_t *l_854 = (void*)0;
    int32_t ***l_855 = (void*)0;
    int32_t l_875 = 0x2839A754L;
    int32_t l_876 = 0x78A94CEDL;
    int32_t l_882 = 0x63CAA700L;
    int32_t l_883 = 0x221D87D3L;
    int32_t l_884 = 0x44955547L;
    int32_t l_885 = 3L;
    int32_t l_886 = 1L;
    uint8_t *l_923[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(int32_t, 2) l_930 = (VECTOR(int32_t, 2))(0L, 0x0E5D8F42L);
    VECTOR(uint8_t, 16) l_946 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 255UL), 255UL), 255UL, 1UL, 255UL, (VECTOR(uint8_t, 2))(1UL, 255UL), (VECTOR(uint8_t, 2))(1UL, 255UL), 1UL, 255UL, 1UL, 255UL);
    int i;
    for (p_1261->g_118.f3 = 0; (p_1261->g_118.f3 <= 54); p_1261->g_118.f3 = safe_add_func_int32_t_s_s(p_1261->g_118.f3, 5))
    { /* block id: 350 */
        int32_t *l_828 = (void*)0;
        int32_t ****l_844 = &l_843;
        VECTOR(int8_t, 16) l_845 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x7AL), 0x7AL), 0x7AL, 1L, 0x7AL, (VECTOR(int8_t, 2))(1L, 0x7AL), (VECTOR(int8_t, 2))(1L, 0x7AL), 1L, 0x7AL, 1L, 0x7AL);
        uint16_t *l_851 = &p_1261->g_168[0][0].f0;
        int16_t *l_856 = (void*)0;
        int16_t *l_857 = (void*)0;
        int16_t *l_858 = (void*)0;
        int16_t *l_859 = (void*)0;
        int16_t *l_860 = (void*)0;
        int16_t *l_861 = (void*)0;
        int16_t *l_862 = (void*)0;
        int16_t *l_863[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_864 = 0x02A11848L;
        int64_t *l_869[3][6] = {{&p_1261->g_181,&p_1261->g_181,&p_1261->g_181,&p_1261->g_181,&p_1261->g_181,&p_1261->g_181},{&p_1261->g_181,&p_1261->g_181,&p_1261->g_181,&p_1261->g_181,&p_1261->g_181,&p_1261->g_181},{&p_1261->g_181,&p_1261->g_181,&p_1261->g_181,&p_1261->g_181,&p_1261->g_181,&p_1261->g_181}};
        int64_t **l_868 = &l_869[1][5];
        int32_t l_874 = (-8L);
        int32_t l_877 = 0x1E76FE66L;
        int32_t l_878[3][10][1];
        uint64_t l_887 = 0xB190D34FF617506DL;
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 10; j++)
            {
                for (k = 0; k < 1; k++)
                    l_878[i][j][k] = 5L;
            }
        }
        l_829 |= p_45;
        if ((((safe_sub_func_uint64_t_u_u((!((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))((safe_mod_func_int8_t_s_s(((255UL && (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),uint16_t,((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 2))(p_1261->g_836.xx)).xyxy, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(l_837.s73f3)), ((VECTOR(uint16_t, 2))(0xCA98L, 0UL)), 0xBD60L, 3UL)).s23)).yxyx))).yzwwwzzy, (uint16_t)((VECTOR(uint16_t, 4))(l_838.s35e4)).w, (uint16_t)(safe_add_func_int64_t_s_s((safe_mul_func_int16_t_s_s((p_1261->g_155.x ^= (l_864 = (((*l_844) = l_843) == ((((l_837.sa >= (0xFCD46F4D3FA17083L & (((**p_1261->g_537) = l_854) == l_854))) , p_43) != l_837.s5) , l_855)))), GROUP_DIVERGE(2, 1))), 0UL))))).s1136411455035536, ((VECTOR(uint16_t, 16))(0x3929L))))).s0, p_44))) | 0x538DL), p_1261->g_223.s0)), p_44, 0xBE16CDE2EC348681L, 0xB8E2DD0E94DB2813L)).lo)).yxyxxyxx))))).even)), p_1261->g_4.z, ((VECTOR(uint64_t, 2))(0x8EC392152CE0889BL)), 18446744073709551615UL)).s6), p_1261->g_667.s3)) > p_1261->g_230.s1) <= p_44))
        { /* block id: 357 */
            int32_t *l_867 = &l_864;
            (*l_867) = (l_855 != ((p_1261->g_250 , p_1261->g_865) , &p_1261->g_252[3]));
            (*l_867) |= 0x4752B56FL;
        }
        else
        { /* block id: 360 */
            int64_t ***l_871 = &l_868;
            int64_t l_873 = 0x34865EAB79FB9D25L;
            int32_t l_879 = (-1L);
            int32_t l_880 = 0L;
            int32_t l_881[1][4][2] = {{{0x1921E8D1L,0x1921E8D1L},{0x1921E8D1L,0x1921E8D1L},{0x1921E8D1L,0x1921E8D1L},{0x1921E8D1L,0x1921E8D1L}}};
            uint32_t l_939 = 9UL;
            int32_t *l_955 = (void*)0;
            int32_t *l_956[7];
            uint8_t l_957 = 0UL;
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_956[i] = &l_886;
            (*l_871) = (p_43 , l_868);
            if (p_43)
            { /* block id: 362 */
                int32_t *l_872[5] = {&l_864,&l_864,&l_864,&l_864,&l_864};
                int i;
                --l_887;
            }
            else
            { /* block id: 364 */
                (*p_1261->g_120) = (*p_1261->g_120);
            }
            for (p_43 = 0; (p_43 <= 41); p_43 = safe_add_func_int32_t_s_s(p_43, 4))
            { /* block id: 369 */
                VECTOR(int32_t, 16) l_892 = (VECTOR(int32_t, 16))(0x019E5288L, (VECTOR(int32_t, 4))(0x019E5288L, (VECTOR(int32_t, 2))(0x019E5288L, 0x1B451C6BL), 0x1B451C6BL), 0x1B451C6BL, 0x019E5288L, 0x1B451C6BL, (VECTOR(int32_t, 2))(0x019E5288L, 0x1B451C6BL), (VECTOR(int32_t, 2))(0x019E5288L, 0x1B451C6BL), 0x019E5288L, 0x1B451C6BL, 0x019E5288L, 0x1B451C6BL);
                VECTOR(int64_t, 4) l_895 = (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, 9L), 9L);
                int32_t **l_898 = &p_1261->g_121[0][6][2];
                uint8_t *l_911 = &p_1261->g_131;
                uint16_t *l_912 = &p_1261->g_865.f0;
                uint16_t *l_913 = (void*)0;
                uint16_t *l_914 = &p_1261->g_167.f0;
                uint64_t *l_915 = &l_887;
                int i;
                (**l_843) = func_94(p_1261->g_338, (***l_844), (((VECTOR(int32_t, 4))(l_892.s3a5c)).y , (safe_add_func_int64_t_s_s(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(l_895.yx)).odd, 0x0F724710E04F8A09L, ((safe_add_func_int64_t_s_s(0x43327740719C9E4AL, ((*l_915) |= ((((l_898 == (void*)0) , ((safe_mul_func_uint8_t_u_u((l_880 ^= (safe_sub_func_uint16_t_u_u(((*l_914) |= (safe_lshift_func_int16_t_s_s((safe_unary_minus_func_uint16_t_u(((*l_912) = (l_879 |= (safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(0UL, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(p_1261->g_908.ww)), 0xD8L, 250UL, l_881[0][1][1], (((*l_911) = (safe_add_func_uint8_t_u_u((((*l_851) = (FAKE_DIVERGE(p_1261->local_2_offset, get_local_id(2), 10) || (0x5D5170DEL < (&l_880 != &p_45)))) | p_45), p_43))) >= p_43), 7UL, 0xE0L)), 255UL, ((VECTOR(uint8_t, 4))(0x44L)), 0UL, 0UL)))).sd8d5, ((VECTOR(uint8_t, 4))(0UL))))).zwzzxwxyyxwxzyxw)).sc, p_1261->g_108)))))), 3))), 0L))), p_1261->g_181)) >= p_43)) , l_881[0][3][1]) >= p_45)))) , p_44), ((VECTOR(int64_t, 8))((-1L))), 0x33B1EF944616CCE5L, p_44, ((VECTOR(int64_t, 2))(1L)), 0x1FEE14EB9763919AL)).s6, p_45))), l_873, &p_1261->g_121[1][3][3], p_1261);
                for (l_829 = 21; (l_829 != 38); l_829 = safe_add_func_uint64_t_u_u(l_829, 7))
                { /* block id: 380 */
                    int32_t l_924[8];
                    VECTOR(int32_t, 2) l_931 = (VECTOR(int32_t, 2))((-3L), 0x2E44168FL);
                    union U0 **l_940 = &p_1261->g_117;
                    union U0 ***l_941 = &l_940;
                    VECTOR(uint8_t, 2) l_949 = (VECTOR(uint8_t, 2))(0UL, 0x73L);
                    int i;
                    for (i = 0; i < 8; i++)
                        l_924[i] = 1L;
                    for (p_1261->g_250 = (-24); (p_1261->g_250 != 12); p_1261->g_250++)
                    { /* block id: 383 */
                        uint32_t l_922 = 0x542ECFFCL;
                        union U0 *l_936 = (void*)0;
                        union U0 **l_937 = &p_1261->g_117;
                        l_879 &= ((safe_rshift_func_uint16_t_u_u(((*l_914) &= l_922), (((VECTOR(uint64_t, 8))(0x433B0EB8842620FDL, 18446744073709551615UL, 0UL, 0x3DA27085F332E983L, ((l_923[3] = &p_43) == (p_43 , &p_43)), 0x085AEE15E0B37745L, 5UL, 0x9F94FA80D25964A9L)).s5 , ((*l_851) ^= (0xF8764B57L && (l_924[1] | ((((GROUP_DIVERGE(0, 1) , FAKE_DIVERGE(p_1261->global_1_offset, get_global_id(1), 10)) , &p_1261->g_400) != (((((!(safe_sub_func_uint16_t_u_u((((safe_add_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), (~((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 4))(p_1261->g_929.s4331)).odd, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_930.xyxxxxyx)).s1747041364140772)))).sb4, ((VECTOR(int32_t, 16))(l_931.yxxyyxxxyyxxyxxy)).s17))).xxyx, ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(p_1261->g_932.yxyxyxxxxyxxyxxx)).s5ef7)))).zzzwwwyxzyxxzxxz)).s11)).xxyyxyyxxxxyyyxy, ((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 4))(p_1261->g_933.xyxy)).wzwzyxxxzyzxzxwz)))))).se5c4))).z))) ^ (safe_add_func_int8_t_s_s((p_44 > ((p_1261->g_329.x = 1L) == 0L)), p_44))) < p_43), 65535UL))) | 0x43L) ^ 0L) && 0x13002F98AD680142L) , &p_1261->g_400)) ^ p_43))))))) & l_924[1]);
                        (*l_937) = l_936;
                        (***l_844) = func_47(p_1261->g_938[0][4][3], p_44, p_43, p_1261);
                    }
                    p_45 = (l_939 <= FAKE_DIVERGE(p_1261->local_0_offset, get_local_id(0), 10));
                    (*l_941) = l_940;
                    for (l_885 = 0; (l_885 == 15); l_885++)
                    { /* block id: 396 */
                        int32_t *l_951 = (void*)0;
                        int32_t *l_953 = &l_864;
                        (*l_953) = (safe_div_func_int8_t_s_s((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(l_946.sd9715efd)), FAKE_DIVERGE(p_1261->global_0_offset, get_global_id(0), 10), (++(*l_911)), ((VECTOR(uint8_t, 2))(1UL, 0x18L)), ((VECTOR(uint8_t, 2))(0x06L, 0x50L)), 0x38L, 0x13L)).lo)).s7 <= ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_949.xx)).xyxy)).x), FAKE_DIVERGE(p_1261->global_1_offset, get_global_id(1), 10)));
                    }
                }
                p_45 ^= p_43;
            }
            l_957--;
        }
        for (p_1261->g_524 = 0; (p_1261->g_524 < 45); p_1261->g_524 = safe_add_func_int64_t_s_s(p_1261->g_524, 8))
        { /* block id: 407 */
            VECTOR(uint64_t, 2) l_962 = (VECTOR(uint64_t, 2))(0x0A65CE494A4EA2E9L, 0x21691AC4633230D1L);
            int i;
            (*p_1261->g_120) = &p_45;
            if (l_962.x)
                continue;
        }
    }
    return p_1261->g_131;
}


/* ------------------------------------------ */
/* 
 * reads : p_1261->g_338 p_1261->g_131 p_1261->g_331 p_1261->g_120 p_1261->g_121
 * writes: p_1261->g_400 p_1261->g_181
 */
int32_t * func_47(uint8_t  p_48, int32_t  p_49, int32_t  p_50, struct S1 * p_1261)
{ /* block id: 143 */
    int32_t l_390 = 0L;
    VECTOR(uint16_t, 4) l_391 = (VECTOR(uint16_t, 4))(0xE22FL, (VECTOR(uint16_t, 2))(0xE22FL, 0x8A29L), 0x8A29L);
    uint8_t *l_399 = &p_1261->g_139;
    uint8_t **l_398[9] = {&l_399,&l_399,&l_399,&l_399,&l_399,&l_399,&l_399,&l_399,&l_399};
    int64_t *l_405 = &p_1261->g_181;
    int32_t *l_406 = (void*)0;
    int32_t *l_407 = (void*)0;
    int32_t *l_408[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_439 = (-1L);
    uint16_t *l_440 = &p_1261->g_168[0][0].f0;
    uint32_t ***l_463 = &p_1261->g_202;
    uint32_t l_489 = 4294967295UL;
    uint8_t l_577 = 0xA0L;
    VECTOR(uint64_t, 4) l_598 = (VECTOR(uint64_t, 4))(0xACD745D1222B4C9CL, (VECTOR(uint64_t, 2))(0xACD745D1222B4C9CL, 18446744073709551612UL), 18446744073709551612UL);
    VECTOR(uint64_t, 4) l_600 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL), 18446744073709551615UL);
    VECTOR(int16_t, 4) l_607 = (VECTOR(int16_t, 4))(0x735CL, (VECTOR(int16_t, 2))(0x735CL, 1L), 1L);
    int32_t l_623[7][4][6] = {{{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)}},{{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)}},{{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)}},{{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)}},{{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)}},{{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)}},{{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)},{(-1L),0x03BC90BBL,0x487ACE51L,0x03BC90BBL,(-1L),(-1L)}}};
    uint64_t l_660 = 18446744073709551614UL;
    VECTOR(uint32_t, 4) l_669 = (VECTOR(uint32_t, 4))(0x4C70B163L, (VECTOR(uint32_t, 2))(0x4C70B163L, 2UL), 2UL);
    VECTOR(uint64_t, 8) l_679 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x76B1349CB5660C1EL), 0x76B1349CB5660C1EL), 0x76B1349CB5660C1EL, 1UL, 0x76B1349CB5660C1EL);
    uint32_t ***l_727 = &p_1261->g_202;
    uint8_t l_764 = 9UL;
    uint64_t l_792 = 18446744073709551614UL;
    VECTOR(int64_t, 2) l_824 = (VECTOR(int64_t, 2))((-8L), 0x633D14259B9979F8L);
    int32_t *l_825 = &l_439;
    int i, j, k;
    p_50 = (safe_lshift_func_uint16_t_u_s(0xE2EBL, (safe_sub_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u(l_390, ((VECTOR(uint16_t, 2))(l_391.wy)).lo)), (((*l_405) = ((((void*)0 == &p_1261->g_252[3]) || (~(safe_lshift_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u((((VECTOR(int8_t, 2))(0L, 0x3DL)).lo > ((0x2BL < (safe_sub_func_uint64_t_u_u(p_1261->g_338, l_391.x))) && ((p_1261->g_400 = &p_48) == ((safe_sub_func_uint16_t_u_u(((((safe_rshift_func_int8_t_s_u(p_1261->g_131, p_50)) , 0x953384BC5E3DA605L) | 7L) < 0xBFD8L), p_48)) , (void*)0)))), l_390)), p_48)))) > p_1261->g_331.z)) == 18446744073709551614UL)))));
    return (*p_1261->g_120);
}


/* ------------------------------------------ */
/* 
 * reads : p_1261->g_122 p_1261->g_118.f0 p_1261->g_6 p_1261->g_120 p_1261->g_46
 * writes: p_1261->g_122 p_1261->g_118.f0 p_1261->g_6 p_1261->g_121
 */
uint64_t  func_57(int64_t  p_58, int32_t  p_59, int16_t  p_60, uint32_t  p_61, int32_t * p_62, struct S1 * p_1261)
{ /* block id: 122 */
    int8_t l_357[2][2][5] = {{{0x55L,(-10L),0x37L,(-10L),0x55L},{0x55L,(-10L),0x37L,(-10L),0x55L}},{{0x55L,(-10L),0x37L,(-10L),0x55L},{0x55L,(-10L),0x37L,(-10L),0x55L}}};
    uint32_t l_367 = 1UL;
    int16_t l_368 = 8L;
    int16_t l_375 = 0L;
    int32_t l_376[6][3] = {{0x10BDB1B2L,0x4DC2C97FL,0x1B7C950DL},{0x10BDB1B2L,0x4DC2C97FL,0x1B7C950DL},{0x10BDB1B2L,0x4DC2C97FL,0x1B7C950DL},{0x10BDB1B2L,0x4DC2C97FL,0x1B7C950DL},{0x10BDB1B2L,0x4DC2C97FL,0x1B7C950DL},{0x10BDB1B2L,0x4DC2C97FL,0x1B7C950DL}};
    uint64_t l_378 = 0x8A96E8D508321D05L;
    int32_t *l_381 = (void*)0;
    int32_t *l_382 = &p_1261->g_6;
    int i, j, k;
    for (p_1261->g_122 = 0; (p_1261->g_122 == 27); ++p_1261->g_122)
    { /* block id: 125 */
        VECTOR(uint32_t, 16) l_365 = (VECTOR(uint32_t, 16))(0x7DABDBBFL, (VECTOR(uint32_t, 4))(0x7DABDBBFL, (VECTOR(uint32_t, 2))(0x7DABDBBFL, 1UL), 1UL), 1UL, 0x7DABDBBFL, 1UL, (VECTOR(uint32_t, 2))(0x7DABDBBFL, 1UL), (VECTOR(uint32_t, 2))(0x7DABDBBFL, 1UL), 0x7DABDBBFL, 1UL, 0x7DABDBBFL, 1UL);
        int32_t l_369 = 0x137A834DL;
        int32_t *l_370 = (void*)0;
        int32_t *l_371 = &l_369;
        int32_t *l_372 = &p_1261->g_6;
        int32_t *l_373 = (void*)0;
        int32_t *l_374[1][6];
        int16_t l_377 = 0x6D09L;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 6; j++)
                l_374[i][j] = &l_369;
        }
        l_357[1][0][0] = ((VECTOR(int32_t, 2))(0x6C8E15FFL, 0x32D59527L)).lo;
        for (p_1261->g_118.f0 = 0; (p_1261->g_118.f0 > 57); ++p_1261->g_118.f0)
        { /* block id: 129 */
            for (p_1261->g_6 = 2; (p_1261->g_6 < 14); p_1261->g_6++)
            { /* block id: 132 */
                int32_t *l_362 = &p_1261->g_122;
                int64_t *l_366 = (void*)0;
                (*p_1261->g_120) = l_362;
                l_367 = (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(l_365.s945b6ad6)).s1, (&p_1261->g_181 == l_366)));
            }
        }
        --l_378;
        return p_58;
    }
    (*l_382) = l_357[0][0][0];
    return p_1261->g_46.sb;
}


/* ------------------------------------------ */
/* 
 * reads : p_1261->g_132
 * writes:
 */
int8_t  func_65(uint16_t  p_66, uint64_t  p_67, int32_t ** p_68, int16_t  p_69, struct S1 * p_1261)
{ /* block id: 8 */
    VECTOR(uint16_t, 2) l_112 = (VECTOR(uint16_t, 2))(0UL, 0x5807L);
    int32_t *l_115 = &p_1261->g_6;
    int32_t **l_114[1][3][1];
    uint8_t *l_305 = &p_1261->g_139;
    int16_t *l_339 = (void*)0;
    uint16_t l_352[3][8] = {{65526UL,0x1CA8L,0xC9B0L,0xE68BL,0x1CA8L,0xE68BL,0xC9B0L,0x1CA8L},{65526UL,0x1CA8L,0xC9B0L,0xE68BL,0x1CA8L,0xE68BL,0xC9B0L,0x1CA8L},{65526UL,0x1CA8L,0xC9B0L,0xE68BL,0x1CA8L,0xE68BL,0xC9B0L,0x1CA8L}};
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 1; k++)
                l_114[i][j][k] = &l_115;
        }
    }
    for (p_66 = 0; (p_66 <= 35); p_66 = safe_add_func_int8_t_s_s(p_66, 9))
    { /* block id: 11 */
        int32_t *l_85 = &p_1261->g_6;
        int32_t l_116 = 1L;
        int32_t l_251 = 0x354FA31EL;
        uint8_t *l_302[1];
        int8_t l_345 = 0x39L;
        int32_t l_347[8][4][8] = {{{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L}},{{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L}},{{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L}},{{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L}},{{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L}},{{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L}},{{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L}},{{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L},{(-1L),0x081E825AL,0x697E6CD3L,0x697E6CD3L,0x081E825AL,(-1L),(-1L),1L}}};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_302[i] = &p_1261->g_131;
        (1 + 1);
    }
    return p_1261->g_132.z;
}


/* ------------------------------------------ */
/* 
 * reads : p_1261->g_122 p_1261->g_192 p_1261->g_230 p_1261->g_277 p_1261->g_278 p_1261->g_155 p_1261->g_139 p_1261->g_3 p_1261->g_118.f0 p_1261->g_6 p_1261->g_156 p_1261->g_162 p_1261->g_46 p_1261->g_100 p_1261->g_120
 * writes: p_1261->g_122 p_1261->g_167.f0 p_1261->g_6
 */
int32_t  func_79(int8_t  p_80, int32_t  p_81, int32_t * p_82, uint64_t  p_83, int32_t ** p_84, struct S1 * p_1261)
{ /* block id: 64 */
    int32_t *l_257 = (void*)0;
    uint32_t ***l_260 = &p_1261->g_202;
    uint32_t ***l_276 = &p_1261->g_202;
    VECTOR(int8_t, 16) l_280 = (VECTOR(int8_t, 16))(0x58L, (VECTOR(int8_t, 4))(0x58L, (VECTOR(int8_t, 2))(0x58L, 0x79L), 0x79L), 0x79L, 0x58L, 0x79L, (VECTOR(int8_t, 2))(0x58L, 0x79L), (VECTOR(int8_t, 2))(0x58L, 0x79L), 0x58L, 0x79L, 0x58L, 0x79L);
    VECTOR(int8_t, 4) l_281 = (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x53L), 0x53L);
    int32_t ***l_285 = &p_1261->g_252[3];
    uint32_t l_286 = 0x3D06E82CL;
    int i;
    p_81 ^= (*p_82);
    for (p_1261->g_122 = (-21); (p_1261->g_122 > (-23)); p_1261->g_122 = safe_sub_func_int8_t_s_s(p_1261->g_122, 3))
    { /* block id: 68 */
        int32_t *l_256 = (void*)0;
        uint32_t ****l_261 = &l_260;
        VECTOR(int8_t, 4) l_279 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 8L), 8L);
        uint16_t *l_284 = &p_1261->g_167.f0;
        int i;
        l_257 = l_256;
        (*p_1261->g_100) = ((safe_mod_func_uint16_t_u_u(((p_1261->g_192.x , &p_1261->g_202) == ((*l_261) = l_260)), (((((-9L) && (safe_sub_func_int32_t_s_s(((safe_mul_func_uint8_t_u_u(((((*l_284) = ((safe_mod_func_uint32_t_u_u((((safe_mul_func_uint8_t_u_u(p_1261->g_230.s0, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((((safe_sub_func_int8_t_s_s((1L ^ ((safe_mod_func_int8_t_s_s(((void*)0 != l_276), ((((((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 16))(p_1261->g_277.ywyxxzwywywzzwxy)).s750d, ((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(0x5BL, 0x6BL)))), ((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(p_1261->g_278.ywxw)).lo)))).xyxy)), ((VECTOR(int8_t, 2))(l_279.xy)).yxxx, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_280.s51ff)).yzwzwyzz)).even))).hi, ((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 16))(l_281.ywzzxyyzzwzzzzyy)).hi, ((VECTOR(int8_t, 2))((-8L), 0x75L)).xxxyxxxx))).s26))))), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))((safe_mod_func_uint8_t_u_u(1UL, 0x8AL)), ((VECTOR(int8_t, 4))(0x79L)), p_1261->g_155.x, 0x47L, 0x4FL)).lo)), 0L, p_1261->g_139, 0x0DL, 1L)), ((VECTOR(int8_t, 8))(0x03L))))).s2515755275170634)).sb2))).xyyyyyyyyxxyxyyx, (int8_t)p_1261->g_192.x))).s2ce6, ((VECTOR(int8_t, 4))((-8L)))))).x , l_279.w) & p_83) | p_81) , 0x14L))) == p_1261->g_3)), p_1261->g_118.f0)) & 8UL) || 0xE6B571F5L) > (-9L)), 250UL, 0xC2L, 8UL)).wzyxwyxz)).s4)) || 0L) ^ p_1261->g_6), l_281.z)) > p_1261->g_156.y)) <= p_80) != p_1261->g_162.s6), p_1261->g_46.sa)) & 0UL), FAKE_DIVERGE(p_1261->global_1_offset, get_global_id(1), 10)))) , &p_84) == l_285) | p_1261->g_277.w))) < p_80);
        (*p_1261->g_100) = (**p_1261->g_120);
    }
    return l_286;
}


/* ------------------------------------------ */
/* 
 * reads : p_1261->g_100 p_1261->g_192 p_1261->g_162 p_1261->g_202 p_1261->g_213 p_1261->g_187 p_1261->g_223 p_1261->g_224 p_1261->g_230 p_1261->g_155 p_1261->g_118.f0 p_1261->g_164 p_1261->g_46 p_1261->g_122 p_1261->g_6 p_1261->g_120 p_1261->g_132 p_1261->g_250
 * writes: p_1261->g_187 p_1261->g_118.f0 p_1261->g_6 p_1261->g_202 p_1261->g_120 p_1261->g_109 p_1261->g_250 p_1261->g_121 p_1261->g_100
 */
int32_t * func_86(uint32_t  p_87, int64_t  p_88, int64_t  p_89, struct S1 * p_1261)
{ /* block id: 49 */
    uint64_t l_186 = 1UL;
    int16_t *l_188[8][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint16_t *l_189 = &p_1261->g_118.f0;
    uint8_t *l_190[10] = {(void*)0,&p_1261->g_131,(void*)0,(void*)0,&p_1261->g_131,(void*)0,(void*)0,&p_1261->g_131,(void*)0,(void*)0};
    VECTOR(int32_t, 2) l_191 = (VECTOR(int32_t, 2))(3L, 0x195CB3C5L);
    VECTOR(int32_t, 2) l_193 = (VECTOR(int32_t, 2))((-7L), 0L);
    VECTOR(int16_t, 16) l_194 = (VECTOR(int16_t, 16))(0x43F4L, (VECTOR(int16_t, 4))(0x43F4L, (VECTOR(int16_t, 2))(0x43F4L, (-7L)), (-7L)), (-7L), 0x43F4L, (-7L), (VECTOR(int16_t, 2))(0x43F4L, (-7L)), (VECTOR(int16_t, 2))(0x43F4L, (-7L)), 0x43F4L, (-7L), 0x43F4L, (-7L));
    VECTOR(uint16_t, 4) l_195 = (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0x755EL), 0x755EL);
    VECTOR(uint64_t, 2) l_198 = (VECTOR(uint64_t, 2))(0xF5B507F084D59CC5L, 0UL);
    VECTOR(uint64_t, 8) l_199 = (VECTOR(uint64_t, 8))(0x7460548AB624D7EAL, (VECTOR(uint64_t, 4))(0x7460548AB624D7EAL, (VECTOR(uint64_t, 2))(0x7460548AB624D7EAL, 4UL), 4UL), 4UL, 0x7460548AB624D7EAL, 4UL);
    uint32_t *l_201 = &p_1261->g_108;
    uint32_t **l_200 = &l_201;
    uint32_t ***l_204 = &p_1261->g_202;
    VECTOR(int32_t, 2) l_220 = (VECTOR(int32_t, 2))((-2L), 0x78D422A0L);
    VECTOR(int32_t, 4) l_221 = (VECTOR(int32_t, 4))(0x4D1F4282L, (VECTOR(int32_t, 2))(0x4D1F4282L, 0L), 0L);
    VECTOR(int32_t, 2) l_222 = (VECTOR(int32_t, 2))(0x59327C20L, 1L);
    VECTOR(int32_t, 8) l_225 = (VECTOR(int32_t, 8))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0x779CD59EL), 0x779CD59EL), 0x779CD59EL, 9L, 0x779CD59EL);
    VECTOR(int32_t, 16) l_226 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x52E63805L), 0x52E63805L), 0x52E63805L, 1L, 0x52E63805L, (VECTOR(int32_t, 2))(1L, 0x52E63805L), (VECTOR(int32_t, 2))(1L, 0x52E63805L), 1L, 0x52E63805L, 1L, 0x52E63805L);
    VECTOR(int32_t, 16) l_227 = (VECTOR(int32_t, 16))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 0L), 0L), 0L, (-10L), 0L, (VECTOR(int32_t, 2))((-10L), 0L), (VECTOR(int32_t, 2))((-10L), 0L), (-10L), 0L, (-10L), 0L);
    VECTOR(int32_t, 8) l_228 = (VECTOR(int32_t, 8))(0x59B8B5A0L, (VECTOR(int32_t, 4))(0x59B8B5A0L, (VECTOR(int32_t, 2))(0x59B8B5A0L, (-1L)), (-1L)), (-1L), 0x59B8B5A0L, (-1L));
    VECTOR(int32_t, 16) l_229 = (VECTOR(int32_t, 16))(0x7604BCCBL, (VECTOR(int32_t, 4))(0x7604BCCBL, (VECTOR(int32_t, 2))(0x7604BCCBL, 9L), 9L), 9L, 0x7604BCCBL, 9L, (VECTOR(int32_t, 2))(0x7604BCCBL, 9L), (VECTOR(int32_t, 2))(0x7604BCCBL, 9L), 0x7604BCCBL, 9L, 0x7604BCCBL, 9L);
    int32_t **l_233 = &p_1261->g_100;
    int32_t ***l_234 = &p_1261->g_120;
    int32_t ***l_235 = (void*)0;
    int32_t **l_237 = &p_1261->g_100;
    int32_t ***l_236 = &l_237;
    int32_t *l_248 = &p_1261->g_109;
    int32_t *l_249 = &p_1261->g_250;
    int i, j;
    (*p_1261->g_100) = (l_186 != ((*l_189) = ((p_1261->g_187 = (void*)0) != l_188[2][0])));
    (*p_1261->g_100) = (l_190[2] != (void*)0);
    l_191.x = (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 16))(l_191.xyyyxyyyxxxxxxxx)).sd1, ((VECTOR(int32_t, 8))(p_1261->g_192.xyxyxxxx)).s76, ((VECTOR(int32_t, 2))(0x54C98D32L, 0x33DE2EC5L))))).yyxyxxyxyxyyyxyx)).s6de4, ((VECTOR(int32_t, 2))(7L, 0x0F7B2116L)).yxyx, ((VECTOR(int32_t, 16))(l_193.yyyyyxyxxyyyyxxy)).s6df0))).lo, ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 16))(l_194.s7625086540933524)).s6675, ((VECTOR(uint16_t, 16))(0x1C65L, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(l_195.wwwyxyzwyxyxzzwx)).sd9)).xyyyxyyx)), 0UL, p_1261->g_162.se, ((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 2))(0x7FL, 6L)).hi, (l_195.x || (+((VECTOR(uint8_t, 2))(255UL, 0xC8L)).lo)))) && (((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 4))(l_198.yyyy)).hi, ((VECTOR(uint64_t, 4))(l_199.s2432)).lo))))), ((((((l_200 == ((*l_204) = p_1261->g_202)) && (safe_div_func_int8_t_s_s(p_89, (safe_rshift_func_int16_t_s_u((l_194.s0 & 7L), 1))))) , (~(safe_mul_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 4))(p_1261->g_213.s296c)).zzwyxxzwxzwxywyw, (int8_t)((safe_rshift_func_int16_t_s_s(((void*)0 != p_1261->g_187), l_195.w)) >= l_198.y)))).odd)).s4, l_191.y)), p_89)))) , p_1261->g_213.s6) == 0xED0FAEB5FE0EA120L) == 1L), l_198.y, GROUP_DIVERGE(1, 1), 18446744073709551615UL, 0x6449A1E4A71829D1L, 0x3D0BC41B950C5E99L)).s7 == 18446744073709551615UL)), ((VECTOR(uint16_t, 2))(0UL)), 65531UL, 0xD6A2L)).sf6e2))).even))).yyxx)))).x != p_87);
    p_1261->g_100 = (p_1261->g_121[1][3][3] = (((*l_249) &= ((*l_248) = (safe_rshift_func_int8_t_s_s((p_88 < (0xA0499970256F4602L == (safe_lshift_func_int8_t_s_s(((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_220.xyyy)).zzyyxywy)).s5176657727057721, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 8))(3L, ((VECTOR(int32_t, 2))(1L, 0x79EC15FAL)), ((VECTOR(int32_t, 4))(l_221.yxxx)), 0x6692C0D9L)).even, ((VECTOR(int32_t, 16))(l_222.xxyxxxyxyyxxxxxy)).sa81a))).wxywwzwwwzzyyyyw, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 4))(l_221.y, 0x7C68337EL, 0L, 0x5238100CL)).even, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(p_1261->g_223.s3065366452246105)))).s8614, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(p_1261->g_224.xy)))).xxyx))).wyxwxyzy)).s40))), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_225.s5514323651771775)).even)).s74, ((VECTOR(int32_t, 2))(l_226.s1b))))).yxyx)).xxyyyywxwwyyywxw, ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_227.s61)), 0x642D54BDL, 0x1FFF4F0FL, ((VECTOR(int32_t, 2))(l_228.s23)), 5L, 0x651DE766L)).s2570376344652612, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))((-5L), 0x270FA912L)).xyxyyxyyxyyxyxyy))))).s62, ((VECTOR(int32_t, 4))(0x20C19D5FL, ((VECTOR(int32_t, 2))(0x09103576L, 0x3AE95290L)), (-1L))).lo, ((VECTOR(int32_t, 8))(l_229.se004e413)).s15))).yyyxyyyxxyxxxyxy))).s0bd4)).xxxyywxzwxxxyywy))).sb98c)).even, ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 4))(p_1261->g_230.s6417)), ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 8))((safe_mul_func_int16_t_s_s((((*l_234) = l_233) == ((*l_236) = &p_1261->g_121[3][4][4])), (((((((safe_rshift_func_int16_t_s_u((safe_rshift_func_uint8_t_u_s((safe_lshift_func_int16_t_s_u((safe_div_func_int64_t_s_s(((GROUP_DIVERGE(0, 1) , ((safe_mod_func_uint64_t_u_u(p_1261->g_155.x, FAKE_DIVERGE(p_1261->group_0_offset, get_group_id(0), 10))) & p_1261->g_118.f0)) && (&p_1261->g_6 != (void*)0)), p_88)), p_1261->g_164.y)), p_1261->g_46.s7)), p_1261->g_122)) <= 0L) < (*p_1261->g_100)) | FAKE_DIVERGE(p_1261->global_1_offset, get_global_id(1), 10)) | 1UL) , 0xFBDB857C05AC7BDAL) , p_89))), (-1L), p_88, ((VECTOR(int32_t, 2))(0x711A5ECBL)), (**p_1261->g_120), 0x2432746AL, 0x6B3C505BL)).s76, ((VECTOR(int32_t, 2))((-3L))), ((VECTOR(int32_t, 2))(0x2D1D4523L))))).xxyx))).hi, ((VECTOR(int32_t, 2))((-3L)))))).yxxyyyyxyyxxyyyy))))).s5f)), 8L)), p_1261->g_132.w, ((VECTOR(int32_t, 2))(0x2BCD2E3AL)), 0x3FA3C9DEL)).s6 , p_1261->g_213.s1) | p_1261->g_6), 6)))), p_87)))) , (**l_234)));
    return (*p_1261->g_120);
}


/* ------------------------------------------ */
/* 
 * reads : p_1261->g_139 p_1261->g_6 p_1261->g_155 p_1261->g_156 p_1261->g_109 p_1261->g_162 p_1261->g_163 p_1261->g_164 p_1261->g_131 p_1261->g_46 p_1261->g_117 p_1261->g_122 p_1261->g_108 p_1261->g_132
 * writes: p_1261->g_139 p_1261->g_6 p_1261->g_131 p_1261->g_122 p_1261->g_181 p_1261->g_108
 */
uint32_t  func_90(int32_t * p_91, int32_t * p_92, int32_t * p_93, struct S1 * p_1261)
{ /* block id: 29 */
    uint64_t l_134 = 0x7F4DF67537B09033L;
    uint16_t *l_135 = (void*)0;
    int32_t l_136[10][1] = {{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)}};
    int32_t *l_137 = &p_1261->g_6;
    int32_t *l_138[5][10];
    union U0 *l_165 = (void*)0;
    uint8_t l_175 = 0x30L;
    uint8_t l_183 = 255UL;
    int i, j;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 10; j++)
            l_138[i][j] = (void*)0;
    }
    l_136[5][0] = (l_134 || (l_135 == l_135));
    --p_1261->g_139;
    for (p_1261->g_6 = 7; (p_1261->g_6 != 19); p_1261->g_6++)
    { /* block id: 34 */
        int16_t l_144[10][4] = {{0x1C4DL,0x2E49L,0L,0L},{0x1C4DL,0x2E49L,0L,0L},{0x1C4DL,0x2E49L,0L,0L},{0x1C4DL,0x2E49L,0L,0L},{0x1C4DL,0x2E49L,0L,0L},{0x1C4DL,0x2E49L,0L,0L},{0x1C4DL,0x2E49L,0L,0L},{0x1C4DL,0x2E49L,0L,0L},{0x1C4DL,0x2E49L,0L,0L},{0x1C4DL,0x2E49L,0L,0L}};
        int32_t l_145 = 0L;
        int32_t l_146 = 0x2D5D3A58L;
        int32_t l_147 = (-1L);
        int32_t l_148 = (-9L);
        int32_t l_149 = (-1L);
        int32_t l_150 = (-1L);
        uint8_t l_151 = 0x57L;
        VECTOR(uint64_t, 16) l_157 = (VECTOR(uint64_t, 16))(0xB388EDF5FA7B2E72L, (VECTOR(uint64_t, 4))(0xB388EDF5FA7B2E72L, (VECTOR(uint64_t, 2))(0xB388EDF5FA7B2E72L, 0x4C6D4E311F9259F1L), 0x4C6D4E311F9259F1L), 0x4C6D4E311F9259F1L, 0xB388EDF5FA7B2E72L, 0x4C6D4E311F9259F1L, (VECTOR(uint64_t, 2))(0xB388EDF5FA7B2E72L, 0x4C6D4E311F9259F1L), (VECTOR(uint64_t, 2))(0xB388EDF5FA7B2E72L, 0x4C6D4E311F9259F1L), 0xB388EDF5FA7B2E72L, 0x4C6D4E311F9259F1L, 0xB388EDF5FA7B2E72L, 0x4C6D4E311F9259F1L);
        VECTOR(int32_t, 16) l_158 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x08D8BCF4L), 0x08D8BCF4L), 0x08D8BCF4L, (-1L), 0x08D8BCF4L, (VECTOR(int32_t, 2))((-1L), 0x08D8BCF4L), (VECTOR(int32_t, 2))((-1L), 0x08D8BCF4L), (-1L), 0x08D8BCF4L, (-1L), 0x08D8BCF4L);
        VECTOR(int32_t, 16) l_159 = (VECTOR(int32_t, 16))(0x1765F1DFL, (VECTOR(int32_t, 4))(0x1765F1DFL, (VECTOR(int32_t, 2))(0x1765F1DFL, 1L), 1L), 1L, 0x1765F1DFL, 1L, (VECTOR(int32_t, 2))(0x1765F1DFL, 1L), (VECTOR(int32_t, 2))(0x1765F1DFL, 1L), 0x1765F1DFL, 1L, 0x1765F1DFL, 1L);
        union U0 *l_166[5] = {&p_1261->g_167,&p_1261->g_167,&p_1261->g_167,&p_1261->g_167,&p_1261->g_167};
        uint32_t *l_170 = &p_1261->g_108;
        uint32_t **l_169 = &l_170;
        int64_t *l_180[7][2][7] = {{{&p_1261->g_181,(void*)0,&p_1261->g_181,(void*)0,&p_1261->g_181,&p_1261->g_181,(void*)0},{&p_1261->g_181,(void*)0,&p_1261->g_181,(void*)0,&p_1261->g_181,&p_1261->g_181,(void*)0}},{{&p_1261->g_181,(void*)0,&p_1261->g_181,(void*)0,&p_1261->g_181,&p_1261->g_181,(void*)0},{&p_1261->g_181,(void*)0,&p_1261->g_181,(void*)0,&p_1261->g_181,&p_1261->g_181,(void*)0}},{{&p_1261->g_181,(void*)0,&p_1261->g_181,(void*)0,&p_1261->g_181,&p_1261->g_181,(void*)0},{&p_1261->g_181,(void*)0,&p_1261->g_181,(void*)0,&p_1261->g_181,&p_1261->g_181,(void*)0}},{{&p_1261->g_181,(void*)0,&p_1261->g_181,(void*)0,&p_1261->g_181,&p_1261->g_181,(void*)0},{&p_1261->g_181,(void*)0,&p_1261->g_181,(void*)0,&p_1261->g_181,&p_1261->g_181,(void*)0}},{{&p_1261->g_181,(void*)0,&p_1261->g_181,(void*)0,&p_1261->g_181,&p_1261->g_181,(void*)0},{&p_1261->g_181,(void*)0,&p_1261->g_181,(void*)0,&p_1261->g_181,&p_1261->g_181,(void*)0}},{{&p_1261->g_181,(void*)0,&p_1261->g_181,(void*)0,&p_1261->g_181,&p_1261->g_181,(void*)0},{&p_1261->g_181,(void*)0,&p_1261->g_181,(void*)0,&p_1261->g_181,&p_1261->g_181,(void*)0}},{{&p_1261->g_181,(void*)0,&p_1261->g_181,(void*)0,&p_1261->g_181,&p_1261->g_181,(void*)0},{&p_1261->g_181,(void*)0,&p_1261->g_181,(void*)0,&p_1261->g_181,&p_1261->g_181,(void*)0}}};
        int16_t *l_182[7][8][4] = {{{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]}},{{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]}},{{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]}},{{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]}},{{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]}},{{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]}},{{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]},{&l_144[9][3],&l_144[0][2],&l_144[6][3],&l_144[6][1]}}};
        int i, j, k;
        ++l_151;
        (*p_93) = ((VECTOR(int32_t, 16))((-1L), (safe_unary_minus_func_int16_t_s(((VECTOR(int16_t, 2))(p_1261->g_155.yy)).lo)), (l_145 = (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(p_1261->g_156.yyyx)).lo)), 0x903DA8915DD1E5A3L, ((VECTOR(uint64_t, 4))(l_157.s8d47)), 0x0D1F882ED2A023C0L)).s1776112555104240)).s0 < p_1261->g_109)), ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_158.s9a6d)))).lo, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_159.sf0fd)))).lo, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x616B0BCAL, 1L)), 0x178212C6L, (-4L))).hi))), (safe_rshift_func_int16_t_s_s(0x126FL, 3)), 0x18535F4CL, (-1L), 9L, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(p_1261->g_162.s29)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_1261->g_163.s1d98)), ((4294967295UL || ((VECTOR(int32_t, 16))(p_1261->g_164.yxxxxxyxxxyyyyyy)).s3) && (((*l_169) = func_94(p_1261->g_131, &l_136[5][0], l_157.s1, ((!p_1261->g_46.sa) ^ (((l_166[3] = l_165) == p_1261->g_117) || p_1261->g_164.y)), &l_138[0][7], p_1261)) == p_91)), l_157.s3, 0x6F0FF016L, l_148, l_157.sd, (*p_91), ((VECTOR(int32_t, 2))(0L)), 0x750E86C6L, (*p_91), 0x22219A26L, 1L)).se5)), ((VECTOR(int32_t, 2))(0L)), ((VECTOR(int32_t, 2))(0x523637ADL))))), 0L, ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))(0x797CAD44L)), 0x0C6923B6L)))).s25)), ((VECTOR(int32_t, 2))(0x36DBBD37L)), (-1L), 0x5EC8AD6DL)).s7, l_150, (*p_91), ((VECTOR(int32_t, 4))((-9L))))).s5;
        (*p_91) = ((*l_137) < ((p_1261->g_132.z <= ((p_1261->g_163.s7 < (safe_add_func_uint64_t_u_u((*l_137), l_175))) , ((safe_add_func_uint8_t_u_u(FAKE_DIVERGE(p_1261->local_2_offset, get_local_id(2), 10), ((safe_lshift_func_int16_t_s_u((l_183 = (l_159.s2 = (((*l_137) < ((p_1261->g_181 = 0x2581F7334F888573L) || (!(((*p_93) |= ((&l_151 != &l_175) < p_1261->g_46.s7)) , 0UL)))) >= FAKE_DIVERGE(p_1261->global_1_offset, get_global_id(1), 10)))), 15)) <= (*l_137)))) > 0L))) == l_144[0][2]));
        return l_149;
    }
    return (*l_137);
}


/* ------------------------------------------ */
/* 
 * reads : p_1261->g_6 p_1261->g_132 p_1261->g_122
 * writes: p_1261->g_131 p_1261->g_122
 */
int32_t * func_94(int64_t  p_95, int32_t * p_96, uint16_t  p_97, uint32_t  p_98, int32_t ** p_99, struct S1 * p_1261)
{ /* block id: 22 */
    uint32_t *l_127 = &p_1261->g_108;
    uint32_t *l_128 = &p_1261->g_108;
    uint32_t **l_129 = &l_128;
    uint8_t *l_130[1][8] = {{&p_1261->g_131,&p_1261->g_131,&p_1261->g_131,&p_1261->g_131,&p_1261->g_131,&p_1261->g_131,&p_1261->g_131,&p_1261->g_131}};
    int32_t *l_133 = &p_1261->g_122;
    int i, j;
    (*l_133) &= (safe_add_func_int64_t_s_s((p_95 = (safe_sub_func_int8_t_s_s(((l_127 = l_127) == ((*l_129) = l_128)), ((p_1261->g_131 = p_1261->g_6) == GROUP_DIVERGE(2, 1))))), ((VECTOR(uint64_t, 8))(p_1261->g_132.yxzyxxzx)).s3));
    return l_127;
}


/* ------------------------------------------ */
/* 
 * reads : p_1261->g_117
 * writes: p_1261->g_117
 */
uint8_t  func_101(uint32_t  p_102, int32_t  p_103, struct S1 * p_1261)
{ /* block id: 19 */
    union U0 **l_119 = &p_1261->g_117;
    (*l_119) = p_1261->g_117;
    return p_102;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1262;
    struct S1* p_1261 = &c_1262;
    struct S1 c_1263 = {
        0x6CL, // p_1261->g_3
        (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 1L), 1L), // p_1261->g_4
        0x68F98558L, // p_1261->g_6
        (VECTOR(uint64_t, 16))(7UL, (VECTOR(uint64_t, 4))(7UL, (VECTOR(uint64_t, 2))(7UL, 4UL), 4UL), 4UL, 7UL, 4UL, (VECTOR(uint64_t, 2))(7UL, 4UL), (VECTOR(uint64_t, 2))(7UL, 4UL), 7UL, 4UL, 7UL, 4UL), // p_1261->g_46
        (void*)0, // p_1261->g_100
        0xBCA9CE85L, // p_1261->g_108
        0x3C2ACCF6L, // p_1261->g_109
        {0xDE83L}, // p_1261->g_118
        &p_1261->g_118, // p_1261->g_117
        (-1L), // p_1261->g_122
        {{{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122}},{{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122}},{{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122}},{{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122},{&p_1261->g_122,&p_1261->g_122,&p_1261->g_122,(void*)0,&p_1261->g_122}}}, // p_1261->g_121
        &p_1261->g_121[1][3][3], // p_1261->g_120
        0xF3L, // p_1261->g_131
        (VECTOR(uint64_t, 4))(0x862B96CBFF400B97L, (VECTOR(uint64_t, 2))(0x862B96CBFF400B97L, 0x96908100F8154E25L), 0x96908100F8154E25L), // p_1261->g_132
        0xC4L, // p_1261->g_139
        (VECTOR(int16_t, 2))((-6L), (-1L)), // p_1261->g_155
        (VECTOR(uint64_t, 2))(0x3F161DF2DE5E56C9L, 1UL), // p_1261->g_156
        (VECTOR(int32_t, 16))(0x48562396L, (VECTOR(int32_t, 4))(0x48562396L, (VECTOR(int32_t, 2))(0x48562396L, 1L), 1L), 1L, 0x48562396L, 1L, (VECTOR(int32_t, 2))(0x48562396L, 1L), (VECTOR(int32_t, 2))(0x48562396L, 1L), 0x48562396L, 1L, 0x48562396L, 1L), // p_1261->g_162
        (VECTOR(int32_t, 16))(0x2CEF5FAAL, (VECTOR(int32_t, 4))(0x2CEF5FAAL, (VECTOR(int32_t, 2))(0x2CEF5FAAL, (-3L)), (-3L)), (-3L), 0x2CEF5FAAL, (-3L), (VECTOR(int32_t, 2))(0x2CEF5FAAL, (-3L)), (VECTOR(int32_t, 2))(0x2CEF5FAAL, (-3L)), 0x2CEF5FAAL, (-3L), 0x2CEF5FAAL, (-3L)), // p_1261->g_163
        (VECTOR(int32_t, 2))(0x5D0C9CB3L, 0x29F3894AL), // p_1261->g_164
        {9UL}, // p_1261->g_167
        {{{65526UL}},{{65526UL}},{{65526UL}},{{65526UL}},{{65526UL}},{{65526UL}},{{65526UL}},{{65526UL}},{{65526UL}},{{65526UL}}}, // p_1261->g_168
        (-2L), // p_1261->g_181
        4294967293UL, // p_1261->g_185
        (void*)0, // p_1261->g_187
        (VECTOR(int32_t, 2))(5L, 0x54865413L), // p_1261->g_192
        &p_1261->g_108, // p_1261->g_203
        &p_1261->g_203, // p_1261->g_202
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x5BL), 0x5BL), 0x5BL, (-1L), 0x5BL, (VECTOR(int8_t, 2))((-1L), 0x5BL), (VECTOR(int8_t, 2))((-1L), 0x5BL), (-1L), 0x5BL, (-1L), 0x5BL), // p_1261->g_213
        (VECTOR(int32_t, 8))(0x6914E7A1L, (VECTOR(int32_t, 4))(0x6914E7A1L, (VECTOR(int32_t, 2))(0x6914E7A1L, 0L), 0L), 0L, 0x6914E7A1L, 0L), // p_1261->g_223
        (VECTOR(int32_t, 2))(7L, 0L), // p_1261->g_224
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x4EC7DB43L), 0x4EC7DB43L), 0x4EC7DB43L, 1L, 0x4EC7DB43L), // p_1261->g_230
        0x560A1FF2L, // p_1261->g_250
        (void*)0, // p_1261->g_253
        {&p_1261->g_253,&p_1261->g_253,&p_1261->g_253,&p_1261->g_253}, // p_1261->g_252
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-1L)), (-1L)), // p_1261->g_277
        (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), (-1L)), (-1L)), // p_1261->g_278
        (VECTOR(int8_t, 2))(9L, (-9L)), // p_1261->g_295
        (VECTOR(int8_t, 4))(0x73L, (VECTOR(int8_t, 2))(0x73L, 0L), 0L), // p_1261->g_329
        (VECTOR(int8_t, 4))(0x20L, (VECTOR(int8_t, 2))(0x20L, (-1L)), (-1L)), // p_1261->g_331
        1UL, // p_1261->g_338
        (VECTOR(int16_t, 4))(0x529DL, (VECTOR(int16_t, 2))(0x529DL, 3L), 3L), // p_1261->g_342
        (void*)0, // p_1261->g_400
        (VECTOR(uint8_t, 4))(0x11L, (VECTOR(uint8_t, 2))(0x11L, 247UL), 247UL), // p_1261->g_432
        (VECTOR(int32_t, 8))(0x20D3B1C1L, (VECTOR(int32_t, 4))(0x20D3B1C1L, (VECTOR(int32_t, 2))(0x20D3B1C1L, 0x6EA0FAFCL), 0x6EA0FAFCL), 0x6EA0FAFCL, 0x20D3B1C1L, 0x6EA0FAFCL), // p_1261->g_435
        (VECTOR(uint8_t, 16))(0xCFL, (VECTOR(uint8_t, 4))(0xCFL, (VECTOR(uint8_t, 2))(0xCFL, 0x91L), 0x91L), 0x91L, 0xCFL, 0x91L, (VECTOR(uint8_t, 2))(0xCFL, 0x91L), (VECTOR(uint8_t, 2))(0xCFL, 0x91L), 0xCFL, 0x91L, 0xCFL, 0x91L), // p_1261->g_464
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1261->g_488
        {{{&p_1261->g_488[1][2],&p_1261->g_488[1][2],&p_1261->g_488[1][2],&p_1261->g_488[1][2]}}}, // p_1261->g_487
        3UL, // p_1261->g_524
        &p_1261->g_202, // p_1261->g_537
        &p_1261->g_537, // p_1261->g_536
        (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint64_t, 2))(0UL, 0UL), (VECTOR(uint64_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL), // p_1261->g_599
        (VECTOR(uint64_t, 8))(0xA19D7569CAAF6605L, (VECTOR(uint64_t, 4))(0xA19D7569CAAF6605L, (VECTOR(uint64_t, 2))(0xA19D7569CAAF6605L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0xA19D7569CAAF6605L, 18446744073709551615UL), // p_1261->g_601
        (VECTOR(uint32_t, 4))(4294967291UL, (VECTOR(uint32_t, 2))(4294967291UL, 4294967292UL), 4294967292UL), // p_1261->g_602
        (VECTOR(uint16_t, 8))(0x02B6L, (VECTOR(uint16_t, 4))(0x02B6L, (VECTOR(uint16_t, 2))(0x02B6L, 0x125AL), 0x125AL), 0x125AL, 0x02B6L, 0x125AL), // p_1261->g_608
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x60EFL), 0x60EFL), 0x60EFL, 0UL, 0x60EFL), // p_1261->g_613
        (VECTOR(uint64_t, 16))(0xD3BC3EF24B386A61L, (VECTOR(uint64_t, 4))(0xD3BC3EF24B386A61L, (VECTOR(uint64_t, 2))(0xD3BC3EF24B386A61L, 18446744073709551608UL), 18446744073709551608UL), 18446744073709551608UL, 0xD3BC3EF24B386A61L, 18446744073709551608UL, (VECTOR(uint64_t, 2))(0xD3BC3EF24B386A61L, 18446744073709551608UL), (VECTOR(uint64_t, 2))(0xD3BC3EF24B386A61L, 18446744073709551608UL), 0xD3BC3EF24B386A61L, 18446744073709551608UL, 0xD3BC3EF24B386A61L, 18446744073709551608UL), // p_1261->g_642
        (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 3UL), 3UL), 3UL, 1UL, 3UL), // p_1261->g_665
        (VECTOR(uint32_t, 16))(0x14BC75C9L, (VECTOR(uint32_t, 4))(0x14BC75C9L, (VECTOR(uint32_t, 2))(0x14BC75C9L, 4294967287UL), 4294967287UL), 4294967287UL, 0x14BC75C9L, 4294967287UL, (VECTOR(uint32_t, 2))(0x14BC75C9L, 4294967287UL), (VECTOR(uint32_t, 2))(0x14BC75C9L, 4294967287UL), 0x14BC75C9L, 4294967287UL, 0x14BC75C9L, 4294967287UL), // p_1261->g_667
        (VECTOR(uint32_t, 4))(0x500E7AD3L, (VECTOR(uint32_t, 2))(0x500E7AD3L, 0x1FCFD059L), 0x1FCFD059L), // p_1261->g_668
        (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x5876F49165A4086CL), 0x5876F49165A4086CL), // p_1261->g_675
        (VECTOR(uint64_t, 16))(0x90A8D5C31981207EL, (VECTOR(uint64_t, 4))(0x90A8D5C31981207EL, (VECTOR(uint64_t, 2))(0x90A8D5C31981207EL, 0xF08E166A0C7ACD1AL), 0xF08E166A0C7ACD1AL), 0xF08E166A0C7ACD1AL, 0x90A8D5C31981207EL, 0xF08E166A0C7ACD1AL, (VECTOR(uint64_t, 2))(0x90A8D5C31981207EL, 0xF08E166A0C7ACD1AL), (VECTOR(uint64_t, 2))(0x90A8D5C31981207EL, 0xF08E166A0C7ACD1AL), 0x90A8D5C31981207EL, 0xF08E166A0C7ACD1AL, 0x90A8D5C31981207EL, 0xF08E166A0C7ACD1AL), // p_1261->g_678
        (VECTOR(int32_t, 16))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 1L), 1L), 1L, 9L, 1L, (VECTOR(int32_t, 2))(9L, 1L), (VECTOR(int32_t, 2))(9L, 1L), 9L, 1L, 9L, 1L), // p_1261->g_714
        18446744073709551610UL, // p_1261->g_737
        (VECTOR(int64_t, 8))(0x18618FF9BA3938AFL, (VECTOR(int64_t, 4))(0x18618FF9BA3938AFL, (VECTOR(int64_t, 2))(0x18618FF9BA3938AFL, 1L), 1L), 1L, 0x18618FF9BA3938AFL, 1L), // p_1261->g_815
        (VECTOR(int64_t, 4))(0x013DBEB37B397E9DL, (VECTOR(int64_t, 2))(0x013DBEB37B397E9DL, 0x50D411C9DBA2D498L), 0x50D411C9DBA2D498L), // p_1261->g_823
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x2B4EL), 0x2B4EL), // p_1261->g_836
        {65535UL}, // p_1261->g_848
        {65535UL}, // p_1261->g_865
        (void*)0, // p_1261->g_866
        (void*)0, // p_1261->g_870
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 1UL), 1UL), // p_1261->g_908
        (VECTOR(int32_t, 8))(0x77E59BB3L, (VECTOR(int32_t, 4))(0x77E59BB3L, (VECTOR(int32_t, 2))(0x77E59BB3L, 0x7E16A594L), 0x7E16A594L), 0x7E16A594L, 0x77E59BB3L, 0x7E16A594L), // p_1261->g_929
        (VECTOR(int32_t, 2))(0L, 8L), // p_1261->g_932
        (VECTOR(int32_t, 2))(0x5562006BL, 0x1729699FL), // p_1261->g_933
        {{{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL}},{{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL}},{{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL}},{{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL}},{{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL},{0UL,0UL,3UL,1UL,0UL}}}, // p_1261->g_938
        (void*)0, // p_1261->g_950
        {&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6,&p_1261->g_6}, // p_1261->g_952
        {{0x043D1831L,0L,2L,9L,0L},{0x043D1831L,0L,2L,9L,0L},{0x043D1831L,0L,2L,9L,0L},{0x043D1831L,0L,2L,9L,0L},{0x043D1831L,0L,2L,9L,0L},{0x043D1831L,0L,2L,9L,0L},{0x043D1831L,0L,2L,9L,0L},{0x043D1831L,0L,2L,9L,0L},{0x043D1831L,0L,2L,9L,0L}}, // p_1261->g_954
        &p_1261->g_109, // p_1261->g_978
        {65528UL}, // p_1261->g_981
        (VECTOR(uint8_t, 8))(0x92L, (VECTOR(uint8_t, 4))(0x92L, (VECTOR(uint8_t, 2))(0x92L, 0xDEL), 0xDEL), 0xDEL, 0x92L, 0xDEL), // p_1261->g_990
        (VECTOR(uint8_t, 2))(0xEEL, 246UL), // p_1261->g_992
        0x5C5EC4D7L, // p_1261->g_1010
        (VECTOR(int32_t, 8))(0x0AF5AF65L, (VECTOR(int32_t, 4))(0x0AF5AF65L, (VECTOR(int32_t, 2))(0x0AF5AF65L, 0x20CE4B51L), 0x20CE4B51L), 0x20CE4B51L, 0x0AF5AF65L, 0x20CE4B51L), // p_1261->g_1016
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x091CE92CL), 0x091CE92CL), 0x091CE92CL, 0L, 0x091CE92CL, (VECTOR(int32_t, 2))(0L, 0x091CE92CL), (VECTOR(int32_t, 2))(0L, 0x091CE92CL), 0L, 0x091CE92CL, 0L, 0x091CE92CL), // p_1261->g_1017
        (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x4B70F9DBL), 0x4B70F9DBL), // p_1261->g_1018
        (VECTOR(int32_t, 16))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 4L), 4L), 4L, (-7L), 4L, (VECTOR(int32_t, 2))((-7L), 4L), (VECTOR(int32_t, 2))((-7L), 4L), (-7L), 4L, (-7L), 4L), // p_1261->g_1019
        (void*)0, // p_1261->g_1050
        {{&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050},{&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050},{&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050},{&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050},{&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050},{&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050},{&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050},{&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050},{&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050},{&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050,&p_1261->g_1050}}, // p_1261->g_1049
        &p_1261->g_1049[3][4], // p_1261->g_1048
        (VECTOR(int32_t, 4))(0x18259F4DL, (VECTOR(int32_t, 2))(0x18259F4DL, 0x726A95A7L), 0x726A95A7L), // p_1261->g_1055
        (VECTOR(int8_t, 2))((-1L), 0x69L), // p_1261->g_1066
        (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x15391F10090C3CABL), 0x15391F10090C3CABL), 0x15391F10090C3CABL, 0UL, 0x15391F10090C3CABL), // p_1261->g_1075
        (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 4L), 4L), // p_1261->g_1083
        0L, // p_1261->g_1086
        (VECTOR(int32_t, 2))(0x74B09218L, 0L), // p_1261->g_1098
        (VECTOR(uint8_t, 4))(251UL, (VECTOR(uint8_t, 2))(251UL, 9UL), 9UL), // p_1261->g_1116
        (VECTOR(uint32_t, 16))(0x11EE5078L, (VECTOR(uint32_t, 4))(0x11EE5078L, (VECTOR(uint32_t, 2))(0x11EE5078L, 0x7447F0B2L), 0x7447F0B2L), 0x7447F0B2L, 0x11EE5078L, 0x7447F0B2L, (VECTOR(uint32_t, 2))(0x11EE5078L, 0x7447F0B2L), (VECTOR(uint32_t, 2))(0x11EE5078L, 0x7447F0B2L), 0x11EE5078L, 0x7447F0B2L, 0x11EE5078L, 0x7447F0B2L), // p_1261->g_1117
        {{65535UL},{65535UL}}, // p_1261->g_1118
        0x152DL, // p_1261->g_1128
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 1L), 1L), 1L, 1L, 1L), // p_1261->g_1144
        (VECTOR(uint32_t, 8))(0x352AFE59L, (VECTOR(uint32_t, 4))(0x352AFE59L, (VECTOR(uint32_t, 2))(0x352AFE59L, 9UL), 9UL), 9UL, 0x352AFE59L, 9UL), // p_1261->g_1151
        {{{0x460DL},{1UL},{4UL},{0x2908L},{4UL},{1UL},{0x460DL},{0x7169L},{0x0B1CL},{0x0B1CL}},{{0x460DL},{1UL},{4UL},{0x2908L},{4UL},{1UL},{0x460DL},{0x7169L},{0x0B1CL},{0x0B1CL}},{{0x460DL},{1UL},{4UL},{0x2908L},{4UL},{1UL},{0x460DL},{0x7169L},{0x0B1CL},{0x0B1CL}},{{0x460DL},{1UL},{4UL},{0x2908L},{4UL},{1UL},{0x460DL},{0x7169L},{0x0B1CL},{0x0B1CL}},{{0x460DL},{1UL},{4UL},{0x2908L},{4UL},{1UL},{0x460DL},{0x7169L},{0x0B1CL},{0x0B1CL}},{{0x460DL},{1UL},{4UL},{0x2908L},{4UL},{1UL},{0x460DL},{0x7169L},{0x0B1CL},{0x0B1CL}},{{0x460DL},{1UL},{4UL},{0x2908L},{4UL},{1UL},{0x460DL},{0x7169L},{0x0B1CL},{0x0B1CL}},{{0x460DL},{1UL},{4UL},{0x2908L},{4UL},{1UL},{0x460DL},{0x7169L},{0x0B1CL},{0x0B1CL}}}, // p_1261->g_1154
        {0xFE19L}, // p_1261->g_1162
        0xCB2FL, // p_1261->g_1163
        (VECTOR(uint32_t, 2))(0xC85AC21CL, 4294967286UL), // p_1261->g_1175
        (VECTOR(uint32_t, 16))(0x1E689932L, (VECTOR(uint32_t, 4))(0x1E689932L, (VECTOR(uint32_t, 2))(0x1E689932L, 8UL), 8UL), 8UL, 0x1E689932L, 8UL, (VECTOR(uint32_t, 2))(0x1E689932L, 8UL), (VECTOR(uint32_t, 2))(0x1E689932L, 8UL), 0x1E689932L, 8UL, 0x1E689932L, 8UL), // p_1261->g_1176
        (VECTOR(uint32_t, 4))(4294967288UL, (VECTOR(uint32_t, 2))(4294967288UL, 0xEE7B3860L), 0xEE7B3860L), // p_1261->g_1177
        {0UL}, // p_1261->g_1188
        (void*)0, // p_1261->g_1204
        &p_1261->g_1204, // p_1261->g_1203
        0x860DL, // p_1261->g_1237
        {0x93DFL}, // p_1261->g_1260
        sequence_input[get_global_id(0)], // p_1261->global_0_offset
        sequence_input[get_global_id(1)], // p_1261->global_1_offset
        sequence_input[get_global_id(2)], // p_1261->global_2_offset
        sequence_input[get_local_id(0)], // p_1261->local_0_offset
        sequence_input[get_local_id(1)], // p_1261->local_1_offset
        sequence_input[get_local_id(2)], // p_1261->local_2_offset
        sequence_input[get_group_id(0)], // p_1261->group_0_offset
        sequence_input[get_group_id(1)], // p_1261->group_1_offset
        sequence_input[get_group_id(2)], // p_1261->group_2_offset
    };
    c_1262 = c_1263;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1261);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1261->g_3, "p_1261->g_3", print_hash_value);
    transparent_crc(p_1261->g_4.x, "p_1261->g_4.x", print_hash_value);
    transparent_crc(p_1261->g_4.y, "p_1261->g_4.y", print_hash_value);
    transparent_crc(p_1261->g_4.z, "p_1261->g_4.z", print_hash_value);
    transparent_crc(p_1261->g_4.w, "p_1261->g_4.w", print_hash_value);
    transparent_crc(p_1261->g_6, "p_1261->g_6", print_hash_value);
    transparent_crc(p_1261->g_46.s0, "p_1261->g_46.s0", print_hash_value);
    transparent_crc(p_1261->g_46.s1, "p_1261->g_46.s1", print_hash_value);
    transparent_crc(p_1261->g_46.s2, "p_1261->g_46.s2", print_hash_value);
    transparent_crc(p_1261->g_46.s3, "p_1261->g_46.s3", print_hash_value);
    transparent_crc(p_1261->g_46.s4, "p_1261->g_46.s4", print_hash_value);
    transparent_crc(p_1261->g_46.s5, "p_1261->g_46.s5", print_hash_value);
    transparent_crc(p_1261->g_46.s6, "p_1261->g_46.s6", print_hash_value);
    transparent_crc(p_1261->g_46.s7, "p_1261->g_46.s7", print_hash_value);
    transparent_crc(p_1261->g_46.s8, "p_1261->g_46.s8", print_hash_value);
    transparent_crc(p_1261->g_46.s9, "p_1261->g_46.s9", print_hash_value);
    transparent_crc(p_1261->g_46.sa, "p_1261->g_46.sa", print_hash_value);
    transparent_crc(p_1261->g_46.sb, "p_1261->g_46.sb", print_hash_value);
    transparent_crc(p_1261->g_46.sc, "p_1261->g_46.sc", print_hash_value);
    transparent_crc(p_1261->g_46.sd, "p_1261->g_46.sd", print_hash_value);
    transparent_crc(p_1261->g_46.se, "p_1261->g_46.se", print_hash_value);
    transparent_crc(p_1261->g_46.sf, "p_1261->g_46.sf", print_hash_value);
    transparent_crc(p_1261->g_108, "p_1261->g_108", print_hash_value);
    transparent_crc(p_1261->g_109, "p_1261->g_109", print_hash_value);
    transparent_crc(p_1261->g_122, "p_1261->g_122", print_hash_value);
    transparent_crc(p_1261->g_131, "p_1261->g_131", print_hash_value);
    transparent_crc(p_1261->g_132.x, "p_1261->g_132.x", print_hash_value);
    transparent_crc(p_1261->g_132.y, "p_1261->g_132.y", print_hash_value);
    transparent_crc(p_1261->g_132.z, "p_1261->g_132.z", print_hash_value);
    transparent_crc(p_1261->g_132.w, "p_1261->g_132.w", print_hash_value);
    transparent_crc(p_1261->g_139, "p_1261->g_139", print_hash_value);
    transparent_crc(p_1261->g_155.x, "p_1261->g_155.x", print_hash_value);
    transparent_crc(p_1261->g_155.y, "p_1261->g_155.y", print_hash_value);
    transparent_crc(p_1261->g_156.x, "p_1261->g_156.x", print_hash_value);
    transparent_crc(p_1261->g_156.y, "p_1261->g_156.y", print_hash_value);
    transparent_crc(p_1261->g_162.s0, "p_1261->g_162.s0", print_hash_value);
    transparent_crc(p_1261->g_162.s1, "p_1261->g_162.s1", print_hash_value);
    transparent_crc(p_1261->g_162.s2, "p_1261->g_162.s2", print_hash_value);
    transparent_crc(p_1261->g_162.s3, "p_1261->g_162.s3", print_hash_value);
    transparent_crc(p_1261->g_162.s4, "p_1261->g_162.s4", print_hash_value);
    transparent_crc(p_1261->g_162.s5, "p_1261->g_162.s5", print_hash_value);
    transparent_crc(p_1261->g_162.s6, "p_1261->g_162.s6", print_hash_value);
    transparent_crc(p_1261->g_162.s7, "p_1261->g_162.s7", print_hash_value);
    transparent_crc(p_1261->g_162.s8, "p_1261->g_162.s8", print_hash_value);
    transparent_crc(p_1261->g_162.s9, "p_1261->g_162.s9", print_hash_value);
    transparent_crc(p_1261->g_162.sa, "p_1261->g_162.sa", print_hash_value);
    transparent_crc(p_1261->g_162.sb, "p_1261->g_162.sb", print_hash_value);
    transparent_crc(p_1261->g_162.sc, "p_1261->g_162.sc", print_hash_value);
    transparent_crc(p_1261->g_162.sd, "p_1261->g_162.sd", print_hash_value);
    transparent_crc(p_1261->g_162.se, "p_1261->g_162.se", print_hash_value);
    transparent_crc(p_1261->g_162.sf, "p_1261->g_162.sf", print_hash_value);
    transparent_crc(p_1261->g_163.s0, "p_1261->g_163.s0", print_hash_value);
    transparent_crc(p_1261->g_163.s1, "p_1261->g_163.s1", print_hash_value);
    transparent_crc(p_1261->g_163.s2, "p_1261->g_163.s2", print_hash_value);
    transparent_crc(p_1261->g_163.s3, "p_1261->g_163.s3", print_hash_value);
    transparent_crc(p_1261->g_163.s4, "p_1261->g_163.s4", print_hash_value);
    transparent_crc(p_1261->g_163.s5, "p_1261->g_163.s5", print_hash_value);
    transparent_crc(p_1261->g_163.s6, "p_1261->g_163.s6", print_hash_value);
    transparent_crc(p_1261->g_163.s7, "p_1261->g_163.s7", print_hash_value);
    transparent_crc(p_1261->g_163.s8, "p_1261->g_163.s8", print_hash_value);
    transparent_crc(p_1261->g_163.s9, "p_1261->g_163.s9", print_hash_value);
    transparent_crc(p_1261->g_163.sa, "p_1261->g_163.sa", print_hash_value);
    transparent_crc(p_1261->g_163.sb, "p_1261->g_163.sb", print_hash_value);
    transparent_crc(p_1261->g_163.sc, "p_1261->g_163.sc", print_hash_value);
    transparent_crc(p_1261->g_163.sd, "p_1261->g_163.sd", print_hash_value);
    transparent_crc(p_1261->g_163.se, "p_1261->g_163.se", print_hash_value);
    transparent_crc(p_1261->g_163.sf, "p_1261->g_163.sf", print_hash_value);
    transparent_crc(p_1261->g_164.x, "p_1261->g_164.x", print_hash_value);
    transparent_crc(p_1261->g_164.y, "p_1261->g_164.y", print_hash_value);
    transparent_crc(p_1261->g_167.f0, "p_1261->g_167.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1261->g_168[i][j].f0, "p_1261->g_168[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1261->g_181, "p_1261->g_181", print_hash_value);
    transparent_crc(p_1261->g_185, "p_1261->g_185", print_hash_value);
    transparent_crc(p_1261->g_192.x, "p_1261->g_192.x", print_hash_value);
    transparent_crc(p_1261->g_192.y, "p_1261->g_192.y", print_hash_value);
    transparent_crc(p_1261->g_213.s0, "p_1261->g_213.s0", print_hash_value);
    transparent_crc(p_1261->g_213.s1, "p_1261->g_213.s1", print_hash_value);
    transparent_crc(p_1261->g_213.s2, "p_1261->g_213.s2", print_hash_value);
    transparent_crc(p_1261->g_213.s3, "p_1261->g_213.s3", print_hash_value);
    transparent_crc(p_1261->g_213.s4, "p_1261->g_213.s4", print_hash_value);
    transparent_crc(p_1261->g_213.s5, "p_1261->g_213.s5", print_hash_value);
    transparent_crc(p_1261->g_213.s6, "p_1261->g_213.s6", print_hash_value);
    transparent_crc(p_1261->g_213.s7, "p_1261->g_213.s7", print_hash_value);
    transparent_crc(p_1261->g_213.s8, "p_1261->g_213.s8", print_hash_value);
    transparent_crc(p_1261->g_213.s9, "p_1261->g_213.s9", print_hash_value);
    transparent_crc(p_1261->g_213.sa, "p_1261->g_213.sa", print_hash_value);
    transparent_crc(p_1261->g_213.sb, "p_1261->g_213.sb", print_hash_value);
    transparent_crc(p_1261->g_213.sc, "p_1261->g_213.sc", print_hash_value);
    transparent_crc(p_1261->g_213.sd, "p_1261->g_213.sd", print_hash_value);
    transparent_crc(p_1261->g_213.se, "p_1261->g_213.se", print_hash_value);
    transparent_crc(p_1261->g_213.sf, "p_1261->g_213.sf", print_hash_value);
    transparent_crc(p_1261->g_223.s0, "p_1261->g_223.s0", print_hash_value);
    transparent_crc(p_1261->g_223.s1, "p_1261->g_223.s1", print_hash_value);
    transparent_crc(p_1261->g_223.s2, "p_1261->g_223.s2", print_hash_value);
    transparent_crc(p_1261->g_223.s3, "p_1261->g_223.s3", print_hash_value);
    transparent_crc(p_1261->g_223.s4, "p_1261->g_223.s4", print_hash_value);
    transparent_crc(p_1261->g_223.s5, "p_1261->g_223.s5", print_hash_value);
    transparent_crc(p_1261->g_223.s6, "p_1261->g_223.s6", print_hash_value);
    transparent_crc(p_1261->g_223.s7, "p_1261->g_223.s7", print_hash_value);
    transparent_crc(p_1261->g_224.x, "p_1261->g_224.x", print_hash_value);
    transparent_crc(p_1261->g_224.y, "p_1261->g_224.y", print_hash_value);
    transparent_crc(p_1261->g_230.s0, "p_1261->g_230.s0", print_hash_value);
    transparent_crc(p_1261->g_230.s1, "p_1261->g_230.s1", print_hash_value);
    transparent_crc(p_1261->g_230.s2, "p_1261->g_230.s2", print_hash_value);
    transparent_crc(p_1261->g_230.s3, "p_1261->g_230.s3", print_hash_value);
    transparent_crc(p_1261->g_230.s4, "p_1261->g_230.s4", print_hash_value);
    transparent_crc(p_1261->g_230.s5, "p_1261->g_230.s5", print_hash_value);
    transparent_crc(p_1261->g_230.s6, "p_1261->g_230.s6", print_hash_value);
    transparent_crc(p_1261->g_230.s7, "p_1261->g_230.s7", print_hash_value);
    transparent_crc(p_1261->g_250, "p_1261->g_250", print_hash_value);
    transparent_crc(p_1261->g_277.x, "p_1261->g_277.x", print_hash_value);
    transparent_crc(p_1261->g_277.y, "p_1261->g_277.y", print_hash_value);
    transparent_crc(p_1261->g_277.z, "p_1261->g_277.z", print_hash_value);
    transparent_crc(p_1261->g_277.w, "p_1261->g_277.w", print_hash_value);
    transparent_crc(p_1261->g_278.x, "p_1261->g_278.x", print_hash_value);
    transparent_crc(p_1261->g_278.y, "p_1261->g_278.y", print_hash_value);
    transparent_crc(p_1261->g_278.z, "p_1261->g_278.z", print_hash_value);
    transparent_crc(p_1261->g_278.w, "p_1261->g_278.w", print_hash_value);
    transparent_crc(p_1261->g_295.x, "p_1261->g_295.x", print_hash_value);
    transparent_crc(p_1261->g_295.y, "p_1261->g_295.y", print_hash_value);
    transparent_crc(p_1261->g_329.x, "p_1261->g_329.x", print_hash_value);
    transparent_crc(p_1261->g_329.y, "p_1261->g_329.y", print_hash_value);
    transparent_crc(p_1261->g_329.z, "p_1261->g_329.z", print_hash_value);
    transparent_crc(p_1261->g_329.w, "p_1261->g_329.w", print_hash_value);
    transparent_crc(p_1261->g_331.x, "p_1261->g_331.x", print_hash_value);
    transparent_crc(p_1261->g_331.y, "p_1261->g_331.y", print_hash_value);
    transparent_crc(p_1261->g_331.z, "p_1261->g_331.z", print_hash_value);
    transparent_crc(p_1261->g_331.w, "p_1261->g_331.w", print_hash_value);
    transparent_crc(p_1261->g_338, "p_1261->g_338", print_hash_value);
    transparent_crc(p_1261->g_342.x, "p_1261->g_342.x", print_hash_value);
    transparent_crc(p_1261->g_342.y, "p_1261->g_342.y", print_hash_value);
    transparent_crc(p_1261->g_342.z, "p_1261->g_342.z", print_hash_value);
    transparent_crc(p_1261->g_342.w, "p_1261->g_342.w", print_hash_value);
    transparent_crc(p_1261->g_432.x, "p_1261->g_432.x", print_hash_value);
    transparent_crc(p_1261->g_432.y, "p_1261->g_432.y", print_hash_value);
    transparent_crc(p_1261->g_432.z, "p_1261->g_432.z", print_hash_value);
    transparent_crc(p_1261->g_432.w, "p_1261->g_432.w", print_hash_value);
    transparent_crc(p_1261->g_435.s0, "p_1261->g_435.s0", print_hash_value);
    transparent_crc(p_1261->g_435.s1, "p_1261->g_435.s1", print_hash_value);
    transparent_crc(p_1261->g_435.s2, "p_1261->g_435.s2", print_hash_value);
    transparent_crc(p_1261->g_435.s3, "p_1261->g_435.s3", print_hash_value);
    transparent_crc(p_1261->g_435.s4, "p_1261->g_435.s4", print_hash_value);
    transparent_crc(p_1261->g_435.s5, "p_1261->g_435.s5", print_hash_value);
    transparent_crc(p_1261->g_435.s6, "p_1261->g_435.s6", print_hash_value);
    transparent_crc(p_1261->g_435.s7, "p_1261->g_435.s7", print_hash_value);
    transparent_crc(p_1261->g_464.s0, "p_1261->g_464.s0", print_hash_value);
    transparent_crc(p_1261->g_464.s1, "p_1261->g_464.s1", print_hash_value);
    transparent_crc(p_1261->g_464.s2, "p_1261->g_464.s2", print_hash_value);
    transparent_crc(p_1261->g_464.s3, "p_1261->g_464.s3", print_hash_value);
    transparent_crc(p_1261->g_464.s4, "p_1261->g_464.s4", print_hash_value);
    transparent_crc(p_1261->g_464.s5, "p_1261->g_464.s5", print_hash_value);
    transparent_crc(p_1261->g_464.s6, "p_1261->g_464.s6", print_hash_value);
    transparent_crc(p_1261->g_464.s7, "p_1261->g_464.s7", print_hash_value);
    transparent_crc(p_1261->g_464.s8, "p_1261->g_464.s8", print_hash_value);
    transparent_crc(p_1261->g_464.s9, "p_1261->g_464.s9", print_hash_value);
    transparent_crc(p_1261->g_464.sa, "p_1261->g_464.sa", print_hash_value);
    transparent_crc(p_1261->g_464.sb, "p_1261->g_464.sb", print_hash_value);
    transparent_crc(p_1261->g_464.sc, "p_1261->g_464.sc", print_hash_value);
    transparent_crc(p_1261->g_464.sd, "p_1261->g_464.sd", print_hash_value);
    transparent_crc(p_1261->g_464.se, "p_1261->g_464.se", print_hash_value);
    transparent_crc(p_1261->g_464.sf, "p_1261->g_464.sf", print_hash_value);
    transparent_crc(p_1261->g_524, "p_1261->g_524", print_hash_value);
    transparent_crc(p_1261->g_599.s0, "p_1261->g_599.s0", print_hash_value);
    transparent_crc(p_1261->g_599.s1, "p_1261->g_599.s1", print_hash_value);
    transparent_crc(p_1261->g_599.s2, "p_1261->g_599.s2", print_hash_value);
    transparent_crc(p_1261->g_599.s3, "p_1261->g_599.s3", print_hash_value);
    transparent_crc(p_1261->g_599.s4, "p_1261->g_599.s4", print_hash_value);
    transparent_crc(p_1261->g_599.s5, "p_1261->g_599.s5", print_hash_value);
    transparent_crc(p_1261->g_599.s6, "p_1261->g_599.s6", print_hash_value);
    transparent_crc(p_1261->g_599.s7, "p_1261->g_599.s7", print_hash_value);
    transparent_crc(p_1261->g_599.s8, "p_1261->g_599.s8", print_hash_value);
    transparent_crc(p_1261->g_599.s9, "p_1261->g_599.s9", print_hash_value);
    transparent_crc(p_1261->g_599.sa, "p_1261->g_599.sa", print_hash_value);
    transparent_crc(p_1261->g_599.sb, "p_1261->g_599.sb", print_hash_value);
    transparent_crc(p_1261->g_599.sc, "p_1261->g_599.sc", print_hash_value);
    transparent_crc(p_1261->g_599.sd, "p_1261->g_599.sd", print_hash_value);
    transparent_crc(p_1261->g_599.se, "p_1261->g_599.se", print_hash_value);
    transparent_crc(p_1261->g_599.sf, "p_1261->g_599.sf", print_hash_value);
    transparent_crc(p_1261->g_601.s0, "p_1261->g_601.s0", print_hash_value);
    transparent_crc(p_1261->g_601.s1, "p_1261->g_601.s1", print_hash_value);
    transparent_crc(p_1261->g_601.s2, "p_1261->g_601.s2", print_hash_value);
    transparent_crc(p_1261->g_601.s3, "p_1261->g_601.s3", print_hash_value);
    transparent_crc(p_1261->g_601.s4, "p_1261->g_601.s4", print_hash_value);
    transparent_crc(p_1261->g_601.s5, "p_1261->g_601.s5", print_hash_value);
    transparent_crc(p_1261->g_601.s6, "p_1261->g_601.s6", print_hash_value);
    transparent_crc(p_1261->g_601.s7, "p_1261->g_601.s7", print_hash_value);
    transparent_crc(p_1261->g_602.x, "p_1261->g_602.x", print_hash_value);
    transparent_crc(p_1261->g_602.y, "p_1261->g_602.y", print_hash_value);
    transparent_crc(p_1261->g_602.z, "p_1261->g_602.z", print_hash_value);
    transparent_crc(p_1261->g_602.w, "p_1261->g_602.w", print_hash_value);
    transparent_crc(p_1261->g_608.s0, "p_1261->g_608.s0", print_hash_value);
    transparent_crc(p_1261->g_608.s1, "p_1261->g_608.s1", print_hash_value);
    transparent_crc(p_1261->g_608.s2, "p_1261->g_608.s2", print_hash_value);
    transparent_crc(p_1261->g_608.s3, "p_1261->g_608.s3", print_hash_value);
    transparent_crc(p_1261->g_608.s4, "p_1261->g_608.s4", print_hash_value);
    transparent_crc(p_1261->g_608.s5, "p_1261->g_608.s5", print_hash_value);
    transparent_crc(p_1261->g_608.s6, "p_1261->g_608.s6", print_hash_value);
    transparent_crc(p_1261->g_608.s7, "p_1261->g_608.s7", print_hash_value);
    transparent_crc(p_1261->g_613.s0, "p_1261->g_613.s0", print_hash_value);
    transparent_crc(p_1261->g_613.s1, "p_1261->g_613.s1", print_hash_value);
    transparent_crc(p_1261->g_613.s2, "p_1261->g_613.s2", print_hash_value);
    transparent_crc(p_1261->g_613.s3, "p_1261->g_613.s3", print_hash_value);
    transparent_crc(p_1261->g_613.s4, "p_1261->g_613.s4", print_hash_value);
    transparent_crc(p_1261->g_613.s5, "p_1261->g_613.s5", print_hash_value);
    transparent_crc(p_1261->g_613.s6, "p_1261->g_613.s6", print_hash_value);
    transparent_crc(p_1261->g_613.s7, "p_1261->g_613.s7", print_hash_value);
    transparent_crc(p_1261->g_642.s0, "p_1261->g_642.s0", print_hash_value);
    transparent_crc(p_1261->g_642.s1, "p_1261->g_642.s1", print_hash_value);
    transparent_crc(p_1261->g_642.s2, "p_1261->g_642.s2", print_hash_value);
    transparent_crc(p_1261->g_642.s3, "p_1261->g_642.s3", print_hash_value);
    transparent_crc(p_1261->g_642.s4, "p_1261->g_642.s4", print_hash_value);
    transparent_crc(p_1261->g_642.s5, "p_1261->g_642.s5", print_hash_value);
    transparent_crc(p_1261->g_642.s6, "p_1261->g_642.s6", print_hash_value);
    transparent_crc(p_1261->g_642.s7, "p_1261->g_642.s7", print_hash_value);
    transparent_crc(p_1261->g_642.s8, "p_1261->g_642.s8", print_hash_value);
    transparent_crc(p_1261->g_642.s9, "p_1261->g_642.s9", print_hash_value);
    transparent_crc(p_1261->g_642.sa, "p_1261->g_642.sa", print_hash_value);
    transparent_crc(p_1261->g_642.sb, "p_1261->g_642.sb", print_hash_value);
    transparent_crc(p_1261->g_642.sc, "p_1261->g_642.sc", print_hash_value);
    transparent_crc(p_1261->g_642.sd, "p_1261->g_642.sd", print_hash_value);
    transparent_crc(p_1261->g_642.se, "p_1261->g_642.se", print_hash_value);
    transparent_crc(p_1261->g_642.sf, "p_1261->g_642.sf", print_hash_value);
    transparent_crc(p_1261->g_665.s0, "p_1261->g_665.s0", print_hash_value);
    transparent_crc(p_1261->g_665.s1, "p_1261->g_665.s1", print_hash_value);
    transparent_crc(p_1261->g_665.s2, "p_1261->g_665.s2", print_hash_value);
    transparent_crc(p_1261->g_665.s3, "p_1261->g_665.s3", print_hash_value);
    transparent_crc(p_1261->g_665.s4, "p_1261->g_665.s4", print_hash_value);
    transparent_crc(p_1261->g_665.s5, "p_1261->g_665.s5", print_hash_value);
    transparent_crc(p_1261->g_665.s6, "p_1261->g_665.s6", print_hash_value);
    transparent_crc(p_1261->g_665.s7, "p_1261->g_665.s7", print_hash_value);
    transparent_crc(p_1261->g_667.s0, "p_1261->g_667.s0", print_hash_value);
    transparent_crc(p_1261->g_667.s1, "p_1261->g_667.s1", print_hash_value);
    transparent_crc(p_1261->g_667.s2, "p_1261->g_667.s2", print_hash_value);
    transparent_crc(p_1261->g_667.s3, "p_1261->g_667.s3", print_hash_value);
    transparent_crc(p_1261->g_667.s4, "p_1261->g_667.s4", print_hash_value);
    transparent_crc(p_1261->g_667.s5, "p_1261->g_667.s5", print_hash_value);
    transparent_crc(p_1261->g_667.s6, "p_1261->g_667.s6", print_hash_value);
    transparent_crc(p_1261->g_667.s7, "p_1261->g_667.s7", print_hash_value);
    transparent_crc(p_1261->g_667.s8, "p_1261->g_667.s8", print_hash_value);
    transparent_crc(p_1261->g_667.s9, "p_1261->g_667.s9", print_hash_value);
    transparent_crc(p_1261->g_667.sa, "p_1261->g_667.sa", print_hash_value);
    transparent_crc(p_1261->g_667.sb, "p_1261->g_667.sb", print_hash_value);
    transparent_crc(p_1261->g_667.sc, "p_1261->g_667.sc", print_hash_value);
    transparent_crc(p_1261->g_667.sd, "p_1261->g_667.sd", print_hash_value);
    transparent_crc(p_1261->g_667.se, "p_1261->g_667.se", print_hash_value);
    transparent_crc(p_1261->g_667.sf, "p_1261->g_667.sf", print_hash_value);
    transparent_crc(p_1261->g_668.x, "p_1261->g_668.x", print_hash_value);
    transparent_crc(p_1261->g_668.y, "p_1261->g_668.y", print_hash_value);
    transparent_crc(p_1261->g_668.z, "p_1261->g_668.z", print_hash_value);
    transparent_crc(p_1261->g_668.w, "p_1261->g_668.w", print_hash_value);
    transparent_crc(p_1261->g_675.x, "p_1261->g_675.x", print_hash_value);
    transparent_crc(p_1261->g_675.y, "p_1261->g_675.y", print_hash_value);
    transparent_crc(p_1261->g_675.z, "p_1261->g_675.z", print_hash_value);
    transparent_crc(p_1261->g_675.w, "p_1261->g_675.w", print_hash_value);
    transparent_crc(p_1261->g_678.s0, "p_1261->g_678.s0", print_hash_value);
    transparent_crc(p_1261->g_678.s1, "p_1261->g_678.s1", print_hash_value);
    transparent_crc(p_1261->g_678.s2, "p_1261->g_678.s2", print_hash_value);
    transparent_crc(p_1261->g_678.s3, "p_1261->g_678.s3", print_hash_value);
    transparent_crc(p_1261->g_678.s4, "p_1261->g_678.s4", print_hash_value);
    transparent_crc(p_1261->g_678.s5, "p_1261->g_678.s5", print_hash_value);
    transparent_crc(p_1261->g_678.s6, "p_1261->g_678.s6", print_hash_value);
    transparent_crc(p_1261->g_678.s7, "p_1261->g_678.s7", print_hash_value);
    transparent_crc(p_1261->g_678.s8, "p_1261->g_678.s8", print_hash_value);
    transparent_crc(p_1261->g_678.s9, "p_1261->g_678.s9", print_hash_value);
    transparent_crc(p_1261->g_678.sa, "p_1261->g_678.sa", print_hash_value);
    transparent_crc(p_1261->g_678.sb, "p_1261->g_678.sb", print_hash_value);
    transparent_crc(p_1261->g_678.sc, "p_1261->g_678.sc", print_hash_value);
    transparent_crc(p_1261->g_678.sd, "p_1261->g_678.sd", print_hash_value);
    transparent_crc(p_1261->g_678.se, "p_1261->g_678.se", print_hash_value);
    transparent_crc(p_1261->g_678.sf, "p_1261->g_678.sf", print_hash_value);
    transparent_crc(p_1261->g_714.s0, "p_1261->g_714.s0", print_hash_value);
    transparent_crc(p_1261->g_714.s1, "p_1261->g_714.s1", print_hash_value);
    transparent_crc(p_1261->g_714.s2, "p_1261->g_714.s2", print_hash_value);
    transparent_crc(p_1261->g_714.s3, "p_1261->g_714.s3", print_hash_value);
    transparent_crc(p_1261->g_714.s4, "p_1261->g_714.s4", print_hash_value);
    transparent_crc(p_1261->g_714.s5, "p_1261->g_714.s5", print_hash_value);
    transparent_crc(p_1261->g_714.s6, "p_1261->g_714.s6", print_hash_value);
    transparent_crc(p_1261->g_714.s7, "p_1261->g_714.s7", print_hash_value);
    transparent_crc(p_1261->g_714.s8, "p_1261->g_714.s8", print_hash_value);
    transparent_crc(p_1261->g_714.s9, "p_1261->g_714.s9", print_hash_value);
    transparent_crc(p_1261->g_714.sa, "p_1261->g_714.sa", print_hash_value);
    transparent_crc(p_1261->g_714.sb, "p_1261->g_714.sb", print_hash_value);
    transparent_crc(p_1261->g_714.sc, "p_1261->g_714.sc", print_hash_value);
    transparent_crc(p_1261->g_714.sd, "p_1261->g_714.sd", print_hash_value);
    transparent_crc(p_1261->g_714.se, "p_1261->g_714.se", print_hash_value);
    transparent_crc(p_1261->g_714.sf, "p_1261->g_714.sf", print_hash_value);
    transparent_crc(p_1261->g_737, "p_1261->g_737", print_hash_value);
    transparent_crc(p_1261->g_815.s0, "p_1261->g_815.s0", print_hash_value);
    transparent_crc(p_1261->g_815.s1, "p_1261->g_815.s1", print_hash_value);
    transparent_crc(p_1261->g_815.s2, "p_1261->g_815.s2", print_hash_value);
    transparent_crc(p_1261->g_815.s3, "p_1261->g_815.s3", print_hash_value);
    transparent_crc(p_1261->g_815.s4, "p_1261->g_815.s4", print_hash_value);
    transparent_crc(p_1261->g_815.s5, "p_1261->g_815.s5", print_hash_value);
    transparent_crc(p_1261->g_815.s6, "p_1261->g_815.s6", print_hash_value);
    transparent_crc(p_1261->g_815.s7, "p_1261->g_815.s7", print_hash_value);
    transparent_crc(p_1261->g_823.x, "p_1261->g_823.x", print_hash_value);
    transparent_crc(p_1261->g_823.y, "p_1261->g_823.y", print_hash_value);
    transparent_crc(p_1261->g_823.z, "p_1261->g_823.z", print_hash_value);
    transparent_crc(p_1261->g_823.w, "p_1261->g_823.w", print_hash_value);
    transparent_crc(p_1261->g_836.x, "p_1261->g_836.x", print_hash_value);
    transparent_crc(p_1261->g_836.y, "p_1261->g_836.y", print_hash_value);
    transparent_crc(p_1261->g_836.z, "p_1261->g_836.z", print_hash_value);
    transparent_crc(p_1261->g_836.w, "p_1261->g_836.w", print_hash_value);
    transparent_crc(p_1261->g_848.f0, "p_1261->g_848.f0", print_hash_value);
    transparent_crc(p_1261->g_865.f0, "p_1261->g_865.f0", print_hash_value);
    transparent_crc(p_1261->g_908.x, "p_1261->g_908.x", print_hash_value);
    transparent_crc(p_1261->g_908.y, "p_1261->g_908.y", print_hash_value);
    transparent_crc(p_1261->g_908.z, "p_1261->g_908.z", print_hash_value);
    transparent_crc(p_1261->g_908.w, "p_1261->g_908.w", print_hash_value);
    transparent_crc(p_1261->g_929.s0, "p_1261->g_929.s0", print_hash_value);
    transparent_crc(p_1261->g_929.s1, "p_1261->g_929.s1", print_hash_value);
    transparent_crc(p_1261->g_929.s2, "p_1261->g_929.s2", print_hash_value);
    transparent_crc(p_1261->g_929.s3, "p_1261->g_929.s3", print_hash_value);
    transparent_crc(p_1261->g_929.s4, "p_1261->g_929.s4", print_hash_value);
    transparent_crc(p_1261->g_929.s5, "p_1261->g_929.s5", print_hash_value);
    transparent_crc(p_1261->g_929.s6, "p_1261->g_929.s6", print_hash_value);
    transparent_crc(p_1261->g_929.s7, "p_1261->g_929.s7", print_hash_value);
    transparent_crc(p_1261->g_932.x, "p_1261->g_932.x", print_hash_value);
    transparent_crc(p_1261->g_932.y, "p_1261->g_932.y", print_hash_value);
    transparent_crc(p_1261->g_933.x, "p_1261->g_933.x", print_hash_value);
    transparent_crc(p_1261->g_933.y, "p_1261->g_933.y", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1261->g_938[i][j][k], "p_1261->g_938[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1261->g_954[i][j], "p_1261->g_954[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1261->g_981.f0, "p_1261->g_981.f0", print_hash_value);
    transparent_crc(p_1261->g_990.s0, "p_1261->g_990.s0", print_hash_value);
    transparent_crc(p_1261->g_990.s1, "p_1261->g_990.s1", print_hash_value);
    transparent_crc(p_1261->g_990.s2, "p_1261->g_990.s2", print_hash_value);
    transparent_crc(p_1261->g_990.s3, "p_1261->g_990.s3", print_hash_value);
    transparent_crc(p_1261->g_990.s4, "p_1261->g_990.s4", print_hash_value);
    transparent_crc(p_1261->g_990.s5, "p_1261->g_990.s5", print_hash_value);
    transparent_crc(p_1261->g_990.s6, "p_1261->g_990.s6", print_hash_value);
    transparent_crc(p_1261->g_990.s7, "p_1261->g_990.s7", print_hash_value);
    transparent_crc(p_1261->g_992.x, "p_1261->g_992.x", print_hash_value);
    transparent_crc(p_1261->g_992.y, "p_1261->g_992.y", print_hash_value);
    transparent_crc(p_1261->g_1010, "p_1261->g_1010", print_hash_value);
    transparent_crc(p_1261->g_1016.s0, "p_1261->g_1016.s0", print_hash_value);
    transparent_crc(p_1261->g_1016.s1, "p_1261->g_1016.s1", print_hash_value);
    transparent_crc(p_1261->g_1016.s2, "p_1261->g_1016.s2", print_hash_value);
    transparent_crc(p_1261->g_1016.s3, "p_1261->g_1016.s3", print_hash_value);
    transparent_crc(p_1261->g_1016.s4, "p_1261->g_1016.s4", print_hash_value);
    transparent_crc(p_1261->g_1016.s5, "p_1261->g_1016.s5", print_hash_value);
    transparent_crc(p_1261->g_1016.s6, "p_1261->g_1016.s6", print_hash_value);
    transparent_crc(p_1261->g_1016.s7, "p_1261->g_1016.s7", print_hash_value);
    transparent_crc(p_1261->g_1017.s0, "p_1261->g_1017.s0", print_hash_value);
    transparent_crc(p_1261->g_1017.s1, "p_1261->g_1017.s1", print_hash_value);
    transparent_crc(p_1261->g_1017.s2, "p_1261->g_1017.s2", print_hash_value);
    transparent_crc(p_1261->g_1017.s3, "p_1261->g_1017.s3", print_hash_value);
    transparent_crc(p_1261->g_1017.s4, "p_1261->g_1017.s4", print_hash_value);
    transparent_crc(p_1261->g_1017.s5, "p_1261->g_1017.s5", print_hash_value);
    transparent_crc(p_1261->g_1017.s6, "p_1261->g_1017.s6", print_hash_value);
    transparent_crc(p_1261->g_1017.s7, "p_1261->g_1017.s7", print_hash_value);
    transparent_crc(p_1261->g_1017.s8, "p_1261->g_1017.s8", print_hash_value);
    transparent_crc(p_1261->g_1017.s9, "p_1261->g_1017.s9", print_hash_value);
    transparent_crc(p_1261->g_1017.sa, "p_1261->g_1017.sa", print_hash_value);
    transparent_crc(p_1261->g_1017.sb, "p_1261->g_1017.sb", print_hash_value);
    transparent_crc(p_1261->g_1017.sc, "p_1261->g_1017.sc", print_hash_value);
    transparent_crc(p_1261->g_1017.sd, "p_1261->g_1017.sd", print_hash_value);
    transparent_crc(p_1261->g_1017.se, "p_1261->g_1017.se", print_hash_value);
    transparent_crc(p_1261->g_1017.sf, "p_1261->g_1017.sf", print_hash_value);
    transparent_crc(p_1261->g_1018.x, "p_1261->g_1018.x", print_hash_value);
    transparent_crc(p_1261->g_1018.y, "p_1261->g_1018.y", print_hash_value);
    transparent_crc(p_1261->g_1018.z, "p_1261->g_1018.z", print_hash_value);
    transparent_crc(p_1261->g_1018.w, "p_1261->g_1018.w", print_hash_value);
    transparent_crc(p_1261->g_1019.s0, "p_1261->g_1019.s0", print_hash_value);
    transparent_crc(p_1261->g_1019.s1, "p_1261->g_1019.s1", print_hash_value);
    transparent_crc(p_1261->g_1019.s2, "p_1261->g_1019.s2", print_hash_value);
    transparent_crc(p_1261->g_1019.s3, "p_1261->g_1019.s3", print_hash_value);
    transparent_crc(p_1261->g_1019.s4, "p_1261->g_1019.s4", print_hash_value);
    transparent_crc(p_1261->g_1019.s5, "p_1261->g_1019.s5", print_hash_value);
    transparent_crc(p_1261->g_1019.s6, "p_1261->g_1019.s6", print_hash_value);
    transparent_crc(p_1261->g_1019.s7, "p_1261->g_1019.s7", print_hash_value);
    transparent_crc(p_1261->g_1019.s8, "p_1261->g_1019.s8", print_hash_value);
    transparent_crc(p_1261->g_1019.s9, "p_1261->g_1019.s9", print_hash_value);
    transparent_crc(p_1261->g_1019.sa, "p_1261->g_1019.sa", print_hash_value);
    transparent_crc(p_1261->g_1019.sb, "p_1261->g_1019.sb", print_hash_value);
    transparent_crc(p_1261->g_1019.sc, "p_1261->g_1019.sc", print_hash_value);
    transparent_crc(p_1261->g_1019.sd, "p_1261->g_1019.sd", print_hash_value);
    transparent_crc(p_1261->g_1019.se, "p_1261->g_1019.se", print_hash_value);
    transparent_crc(p_1261->g_1019.sf, "p_1261->g_1019.sf", print_hash_value);
    transparent_crc(p_1261->g_1055.x, "p_1261->g_1055.x", print_hash_value);
    transparent_crc(p_1261->g_1055.y, "p_1261->g_1055.y", print_hash_value);
    transparent_crc(p_1261->g_1055.z, "p_1261->g_1055.z", print_hash_value);
    transparent_crc(p_1261->g_1055.w, "p_1261->g_1055.w", print_hash_value);
    transparent_crc(p_1261->g_1066.x, "p_1261->g_1066.x", print_hash_value);
    transparent_crc(p_1261->g_1066.y, "p_1261->g_1066.y", print_hash_value);
    transparent_crc(p_1261->g_1075.s0, "p_1261->g_1075.s0", print_hash_value);
    transparent_crc(p_1261->g_1075.s1, "p_1261->g_1075.s1", print_hash_value);
    transparent_crc(p_1261->g_1075.s2, "p_1261->g_1075.s2", print_hash_value);
    transparent_crc(p_1261->g_1075.s3, "p_1261->g_1075.s3", print_hash_value);
    transparent_crc(p_1261->g_1075.s4, "p_1261->g_1075.s4", print_hash_value);
    transparent_crc(p_1261->g_1075.s5, "p_1261->g_1075.s5", print_hash_value);
    transparent_crc(p_1261->g_1075.s6, "p_1261->g_1075.s6", print_hash_value);
    transparent_crc(p_1261->g_1075.s7, "p_1261->g_1075.s7", print_hash_value);
    transparent_crc(p_1261->g_1083.x, "p_1261->g_1083.x", print_hash_value);
    transparent_crc(p_1261->g_1083.y, "p_1261->g_1083.y", print_hash_value);
    transparent_crc(p_1261->g_1083.z, "p_1261->g_1083.z", print_hash_value);
    transparent_crc(p_1261->g_1083.w, "p_1261->g_1083.w", print_hash_value);
    transparent_crc(p_1261->g_1086, "p_1261->g_1086", print_hash_value);
    transparent_crc(p_1261->g_1098.x, "p_1261->g_1098.x", print_hash_value);
    transparent_crc(p_1261->g_1098.y, "p_1261->g_1098.y", print_hash_value);
    transparent_crc(p_1261->g_1116.x, "p_1261->g_1116.x", print_hash_value);
    transparent_crc(p_1261->g_1116.y, "p_1261->g_1116.y", print_hash_value);
    transparent_crc(p_1261->g_1116.z, "p_1261->g_1116.z", print_hash_value);
    transparent_crc(p_1261->g_1116.w, "p_1261->g_1116.w", print_hash_value);
    transparent_crc(p_1261->g_1117.s0, "p_1261->g_1117.s0", print_hash_value);
    transparent_crc(p_1261->g_1117.s1, "p_1261->g_1117.s1", print_hash_value);
    transparent_crc(p_1261->g_1117.s2, "p_1261->g_1117.s2", print_hash_value);
    transparent_crc(p_1261->g_1117.s3, "p_1261->g_1117.s3", print_hash_value);
    transparent_crc(p_1261->g_1117.s4, "p_1261->g_1117.s4", print_hash_value);
    transparent_crc(p_1261->g_1117.s5, "p_1261->g_1117.s5", print_hash_value);
    transparent_crc(p_1261->g_1117.s6, "p_1261->g_1117.s6", print_hash_value);
    transparent_crc(p_1261->g_1117.s7, "p_1261->g_1117.s7", print_hash_value);
    transparent_crc(p_1261->g_1117.s8, "p_1261->g_1117.s8", print_hash_value);
    transparent_crc(p_1261->g_1117.s9, "p_1261->g_1117.s9", print_hash_value);
    transparent_crc(p_1261->g_1117.sa, "p_1261->g_1117.sa", print_hash_value);
    transparent_crc(p_1261->g_1117.sb, "p_1261->g_1117.sb", print_hash_value);
    transparent_crc(p_1261->g_1117.sc, "p_1261->g_1117.sc", print_hash_value);
    transparent_crc(p_1261->g_1117.sd, "p_1261->g_1117.sd", print_hash_value);
    transparent_crc(p_1261->g_1117.se, "p_1261->g_1117.se", print_hash_value);
    transparent_crc(p_1261->g_1117.sf, "p_1261->g_1117.sf", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1261->g_1118[i].f0, "p_1261->g_1118[i].f0", print_hash_value);

    }
    transparent_crc(p_1261->g_1128, "p_1261->g_1128", print_hash_value);
    transparent_crc(p_1261->g_1144.s0, "p_1261->g_1144.s0", print_hash_value);
    transparent_crc(p_1261->g_1144.s1, "p_1261->g_1144.s1", print_hash_value);
    transparent_crc(p_1261->g_1144.s2, "p_1261->g_1144.s2", print_hash_value);
    transparent_crc(p_1261->g_1144.s3, "p_1261->g_1144.s3", print_hash_value);
    transparent_crc(p_1261->g_1144.s4, "p_1261->g_1144.s4", print_hash_value);
    transparent_crc(p_1261->g_1144.s5, "p_1261->g_1144.s5", print_hash_value);
    transparent_crc(p_1261->g_1144.s6, "p_1261->g_1144.s6", print_hash_value);
    transparent_crc(p_1261->g_1144.s7, "p_1261->g_1144.s7", print_hash_value);
    transparent_crc(p_1261->g_1151.s0, "p_1261->g_1151.s0", print_hash_value);
    transparent_crc(p_1261->g_1151.s1, "p_1261->g_1151.s1", print_hash_value);
    transparent_crc(p_1261->g_1151.s2, "p_1261->g_1151.s2", print_hash_value);
    transparent_crc(p_1261->g_1151.s3, "p_1261->g_1151.s3", print_hash_value);
    transparent_crc(p_1261->g_1151.s4, "p_1261->g_1151.s4", print_hash_value);
    transparent_crc(p_1261->g_1151.s5, "p_1261->g_1151.s5", print_hash_value);
    transparent_crc(p_1261->g_1151.s6, "p_1261->g_1151.s6", print_hash_value);
    transparent_crc(p_1261->g_1151.s7, "p_1261->g_1151.s7", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1261->g_1154[i][j].f0, "p_1261->g_1154[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1261->g_1162.f0, "p_1261->g_1162.f0", print_hash_value);
    transparent_crc(p_1261->g_1163, "p_1261->g_1163", print_hash_value);
    transparent_crc(p_1261->g_1175.x, "p_1261->g_1175.x", print_hash_value);
    transparent_crc(p_1261->g_1175.y, "p_1261->g_1175.y", print_hash_value);
    transparent_crc(p_1261->g_1176.s0, "p_1261->g_1176.s0", print_hash_value);
    transparent_crc(p_1261->g_1176.s1, "p_1261->g_1176.s1", print_hash_value);
    transparent_crc(p_1261->g_1176.s2, "p_1261->g_1176.s2", print_hash_value);
    transparent_crc(p_1261->g_1176.s3, "p_1261->g_1176.s3", print_hash_value);
    transparent_crc(p_1261->g_1176.s4, "p_1261->g_1176.s4", print_hash_value);
    transparent_crc(p_1261->g_1176.s5, "p_1261->g_1176.s5", print_hash_value);
    transparent_crc(p_1261->g_1176.s6, "p_1261->g_1176.s6", print_hash_value);
    transparent_crc(p_1261->g_1176.s7, "p_1261->g_1176.s7", print_hash_value);
    transparent_crc(p_1261->g_1176.s8, "p_1261->g_1176.s8", print_hash_value);
    transparent_crc(p_1261->g_1176.s9, "p_1261->g_1176.s9", print_hash_value);
    transparent_crc(p_1261->g_1176.sa, "p_1261->g_1176.sa", print_hash_value);
    transparent_crc(p_1261->g_1176.sb, "p_1261->g_1176.sb", print_hash_value);
    transparent_crc(p_1261->g_1176.sc, "p_1261->g_1176.sc", print_hash_value);
    transparent_crc(p_1261->g_1176.sd, "p_1261->g_1176.sd", print_hash_value);
    transparent_crc(p_1261->g_1176.se, "p_1261->g_1176.se", print_hash_value);
    transparent_crc(p_1261->g_1176.sf, "p_1261->g_1176.sf", print_hash_value);
    transparent_crc(p_1261->g_1177.x, "p_1261->g_1177.x", print_hash_value);
    transparent_crc(p_1261->g_1177.y, "p_1261->g_1177.y", print_hash_value);
    transparent_crc(p_1261->g_1177.z, "p_1261->g_1177.z", print_hash_value);
    transparent_crc(p_1261->g_1177.w, "p_1261->g_1177.w", print_hash_value);
    transparent_crc(p_1261->g_1188.f0, "p_1261->g_1188.f0", print_hash_value);
    transparent_crc(p_1261->g_1237, "p_1261->g_1237", print_hash_value);
    transparent_crc(p_1261->g_1260.f0, "p_1261->g_1260.f0", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
