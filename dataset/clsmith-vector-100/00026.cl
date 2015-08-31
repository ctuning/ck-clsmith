// ---fake_divergence -g 1,1,3839 -l 1,1,1
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


// Seed: 26

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int64_t  f0;
   int32_t  f1;
   int16_t  f2;
   volatile uint64_t  f3;
};

union U1 {
   struct S0  f0;
   int64_t  f1;
   volatile int32_t  f2;
   uint8_t  f3;
   volatile int16_t  f4;
};

union U2 {
   int64_t  f0;
   struct S0  f1;
};

struct S3 {
    int32_t g_19;
    int64_t g_55;
    int64_t g_62;
    volatile struct S0 g_63[10][1];
    union U2 g_67[3][6];
    union U2 *g_69;
    union U2 ** volatile g_68;
    uint32_t g_71;
    int32_t *g_82;
    int32_t ** volatile g_84;
    volatile VECTOR(int16_t, 2) g_92;
    int8_t g_123;
    volatile VECTOR(int16_t, 16) g_131;
    VECTOR(uint32_t, 8) g_138;
    VECTOR(uint64_t, 4) g_139;
    uint8_t g_140[7][5];
    uint8_t g_143;
    uint8_t g_145;
    int32_t ** volatile g_162;
    int32_t ***g_185;
    uint64_t g_190;
    volatile VECTOR(int8_t, 2) g_219;
    VECTOR(int32_t, 8) g_221;
    VECTOR(uint8_t, 4) g_224;
    VECTOR(int8_t, 16) g_226;
    uint16_t g_243;
    VECTOR(int8_t, 2) g_253;
    VECTOR(int8_t, 4) g_255;
    VECTOR(int8_t, 16) g_260;
    volatile VECTOR(int16_t, 16) g_269;
    volatile VECTOR(int16_t, 8) g_270;
    int64_t *g_292;
    int64_t **g_291;
    int64_t *** volatile g_290;
    struct S0 g_325;
    union U2 g_328;
    int32_t ** volatile g_338;
    volatile struct S0 g_340;
    volatile VECTOR(int8_t, 4) g_346;
    VECTOR(int16_t, 8) g_349;
    volatile struct S0 g_363;
    volatile struct S0 g_364;
    int8_t g_367;
    volatile uint8_t g_391;
    struct S0 g_398;
    struct S0 g_399;
    struct S0 g_436;
    struct S0 g_438;
    int32_t ** volatile g_439;
    VECTOR(int32_t, 16) g_440;
    struct S0 g_441;
    int32_t ** volatile g_454;
    int32_t ** volatile g_459;
    int32_t ** volatile g_460;
    union U1 g_492;
    VECTOR(int8_t, 2) g_531;
    int32_t ** volatile g_562[4][10];
    int32_t ** volatile g_563;
    union U2 g_565;
    union U1 g_586[10];
    int8_t g_609;
    uint32_t g_617;
    volatile struct S0 g_648;
    uint32_t *g_656[6][8][5];
    uint32_t * volatile * volatile g_655;
    uint32_t **g_657;
    int64_t **g_684;
    union U2 ** volatile g_693;
    volatile VECTOR(int8_t, 2) g_705;
    struct S0 g_722;
    volatile VECTOR(int8_t, 4) g_725;
    uint32_t ***g_728;
    volatile struct S0 g_841;
    union U1 g_843;
    volatile union U2 g_865;
    VECTOR(int32_t, 4) g_882;
    uint64_t g_908;
    volatile VECTOR(int32_t, 2) g_912;
    VECTOR(int32_t, 16) g_921;
    volatile struct S0 g_950[9];
    volatile VECTOR(int64_t, 16) g_980;
    uint16_t *g_997[6][3];
    uint16_t **g_996;
    uint16_t *** volatile g_995;
    union U1 g_1012[9][10];
    VECTOR(int8_t, 16) g_1015;
    int32_t g_1020;
    VECTOR(int8_t, 2) g_1024;
    VECTOR(int8_t, 2) g_1026;
    volatile struct S0 *g_1035;
    volatile struct S0 ** volatile g_1034;
    volatile VECTOR(uint16_t, 2) g_1042;
    VECTOR(uint8_t, 8) g_1045;
    uint16_t g_1138[1][7][3];
    volatile VECTOR(uint8_t, 2) g_1142;
    VECTOR(uint8_t, 4) g_1185;
    volatile int8_t *g_1189;
    volatile int8_t **g_1188;
    volatile union U1 g_1201;
    VECTOR(int8_t, 16) g_1212;
    volatile VECTOR(int8_t, 4) g_1214;
    VECTOR(uint64_t, 16) g_1242;
    VECTOR(uint64_t, 16) g_1260;
    int64_t g_1276;
    VECTOR(uint8_t, 8) g_1286;
    VECTOR(uint8_t, 2) g_1311;
    struct S0 g_1333;
    volatile struct S0 ** volatile g_1339;
    volatile struct S0 ** volatile g_1340;
    int32_t g_1344;
    int32_t g_1346[3][1][5];
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
struct S0  func_1(struct S3 * p_1354);
int32_t  func_2(int64_t  p_3, uint64_t  p_4, uint8_t  p_5, uint8_t  p_6, uint32_t  p_7, struct S3 * p_1354);
uint8_t  func_10(uint32_t  p_11, int16_t  p_12, int32_t  p_13, uint32_t  p_14, struct S3 * p_1354);
int16_t  func_21(uint64_t  p_22, uint8_t  p_23, struct S3 * p_1354);
int32_t  func_27(uint32_t  p_28, struct S3 * p_1354);
union U2  func_29(int8_t  p_30, struct S3 * p_1354);
int32_t  func_32(int32_t  p_33, uint64_t  p_34, int16_t  p_35, struct S3 * p_1354);
int32_t  func_36(uint64_t  p_37, int64_t  p_38, uint32_t  p_39, int32_t  p_40, uint32_t  p_41, struct S3 * p_1354);
int32_t  func_42(int16_t  p_43, int16_t  p_44, int64_t  p_45, uint32_t  p_46, uint32_t  p_47, struct S3 * p_1354);
int32_t  func_56(int64_t * p_57, int8_t  p_58, int32_t  p_59, struct S3 * p_1354);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1354->g_1034 p_1354->g_1035 p_1354->g_340
 * writes:
 */
struct S0  func_1(struct S3 * p_1354)
{ /* block id: 4 */
    VECTOR(uint8_t, 8) l_20 = (VECTOR(uint8_t, 8))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 0xFFL), 0xFFL), 0xFFL, 6UL, 0xFFL);
    int32_t *l_1341 = (void*)0;
    int32_t *l_1342 = (void*)0;
    int32_t *l_1343 = &p_1354->g_1344;
    int32_t *l_1345 = &p_1354->g_1346[1][0][0];
    int32_t *l_1347 = &p_1354->g_1344;
    int32_t l_1348 = (-3L);
    int32_t *l_1349[10][8][3] = {{{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344}},{{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344}},{{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344}},{{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344}},{{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344}},{{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344}},{{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344}},{{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344}},{{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344}},{{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344},{&p_1354->g_1012[4][8].f0.f1,(void*)0,&p_1354->g_1344}}};
    uint16_t l_1350[9] = {65528UL,65528UL,65528UL,65528UL,65528UL,65528UL,65528UL,65528UL,65528UL};
    int i, j, k;
    return (**p_1354->g_1034);
}


/* ------------------------------------------ */
/* 
 * reads : p_1354->g_492.f0.f2 p_1354->g_950 p_1354->g_19 p_1354->g_260 p_1354->g_328.f0 p_1354->g_995 p_1354->g_364.f2 p_1354->g_657 p_1354->g_609 p_1354->g_143 p_1354->g_1012 p_1354->g_912 p_1354->g_338 p_1354->g_82 p_1354->g_1034 p_1354->g_1035 p_1354->g_841 p_1354->g_340 p_1354->g_363.f3 p_1354->g_1012.f0.f2 p_1354->g_843.f0.f0 p_1354->g_398.f1 p_1354->g_325.f2 p_1354->g_908 p_1354->g_1024 p_1354->g_441.f2 p_1354->g_398.f2 p_1354->g_693 p_1354->g_69 p_1354->g_1311 p_1354->g_1333 p_1354->g_292 p_1354->g_62 p_1354->g_67.f0 p_1354->g_843.f0.f1 p_1354->g_255 p_1354->g_139 p_1354->g_190 p_1354->g_1340
 * writes: p_1354->g_492.f0.f2 p_1354->g_441.f2 p_1354->g_328.f1.f2 p_1354->g_399.f1 p_1354->g_950 p_1354->g_19 p_1354->g_565.f1.f2 p_1354->g_145 p_1354->g_609 p_1354->g_996 p_1354->g_656 p_1354->g_243 p_1354->g_1035 p_1354->g_841 p_1354->g_340 p_1354->g_325.f2 p_1354->g_908 p_1354->g_398.f2 p_1354->g_69 p_1354->g_586.f3
 */
int32_t  func_2(int64_t  p_3, uint64_t  p_4, uint8_t  p_5, uint8_t  p_6, uint32_t  p_7, struct S3 * p_1354)
{ /* block id: 368 */
    VECTOR(int32_t, 2) l_952 = (VECTOR(int32_t, 2))(0L, 0x0C4DE49BL);
    uint64_t *l_1004 = &p_1354->g_190;
    uint32_t *l_1008 = (void*)0;
    uint32_t *l_1009 = (void*)0;
    VECTOR(int8_t, 2) l_1025 = (VECTOR(int8_t, 2))(0x1CL, (-3L));
    VECTOR(int32_t, 8) l_1060 = (VECTOR(int32_t, 8))(0x62170E0FL, (VECTOR(int32_t, 4))(0x62170E0FL, (VECTOR(int32_t, 2))(0x62170E0FL, (-1L)), (-1L)), (-1L), 0x62170E0FL, (-1L));
    VECTOR(uint32_t, 8) l_1061 = (VECTOR(uint32_t, 8))(0xD0CE3A95L, (VECTOR(uint32_t, 4))(0xD0CE3A95L, (VECTOR(uint32_t, 2))(0xD0CE3A95L, 0x9E1AE4A9L), 0x9E1AE4A9L), 0x9E1AE4A9L, 0xD0CE3A95L, 0x9E1AE4A9L);
    VECTOR(int64_t, 2) l_1062 = (VECTOR(int64_t, 2))(0x790356175B611F01L, 1L);
    int16_t *l_1065 = &p_1354->g_565.f1.f2;
    int16_t *l_1066 = (void*)0;
    int32_t **l_1067[2][7] = {{&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,(void*)0,(void*)0,(void*)0,&p_1354->g_82},{&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,(void*)0,(void*)0,(void*)0,&p_1354->g_82}};
    union U2 **l_1070 = &p_1354->g_69;
    union U2 **l_1072 = &p_1354->g_69;
    union U2 ***l_1071 = &l_1072;
    uint16_t *l_1073 = &p_1354->g_243;
    VECTOR(int16_t, 4) l_1080 = (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), 0x50C6L), 0x50C6L);
    uint8_t *l_1108 = &p_1354->g_586[5].f3;
    VECTOR(int8_t, 8) l_1127 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x5BL), 0x5BL), 0x5BL, 1L, 0x5BL);
    VECTOR(int8_t, 2) l_1132 = (VECTOR(int8_t, 2))(0x51L, 0L);
    VECTOR(uint8_t, 2) l_1158 = (VECTOR(uint8_t, 2))(0xE1L, 0xBEL);
    VECTOR(uint8_t, 2) l_1166 = (VECTOR(uint8_t, 2))(0UL, 1UL);
    int8_t *l_1179 = (void*)0;
    VECTOR(int8_t, 4) l_1213 = (VECTOR(int8_t, 4))(0x71L, (VECTOR(int8_t, 2))(0x71L, 0x31L), 0x31L);
    VECTOR(int8_t, 4) l_1215 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x32L), 0x32L);
    VECTOR(uint64_t, 4) l_1229 = (VECTOR(uint64_t, 4))(0xD0757BFB344D0C75L, (VECTOR(uint64_t, 2))(0xD0757BFB344D0C75L, 0x75A1907D819D99EDL), 0x75A1907D819D99EDL);
    VECTOR(uint64_t, 16) l_1247 = (VECTOR(uint64_t, 16))(0xAD64DB1E59417746L, (VECTOR(uint64_t, 4))(0xAD64DB1E59417746L, (VECTOR(uint64_t, 2))(0xAD64DB1E59417746L, 0x5EA1589A3FD0AFACL), 0x5EA1589A3FD0AFACL), 0x5EA1589A3FD0AFACL, 0xAD64DB1E59417746L, 0x5EA1589A3FD0AFACL, (VECTOR(uint64_t, 2))(0xAD64DB1E59417746L, 0x5EA1589A3FD0AFACL), (VECTOR(uint64_t, 2))(0xAD64DB1E59417746L, 0x5EA1589A3FD0AFACL), 0xAD64DB1E59417746L, 0x5EA1589A3FD0AFACL, 0xAD64DB1E59417746L, 0x5EA1589A3FD0AFACL);
    VECTOR(uint64_t, 4) l_1255 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x332257A42A970ABCL), 0x332257A42A970ABCL);
    int8_t l_1279 = 0x58L;
    VECTOR(int16_t, 16) l_1325 = (VECTOR(int16_t, 16))(0x6755L, (VECTOR(int16_t, 4))(0x6755L, (VECTOR(int16_t, 2))(0x6755L, 1L), 1L), 1L, 0x6755L, 1L, (VECTOR(int16_t, 2))(0x6755L, 1L), (VECTOR(int16_t, 2))(0x6755L, 1L), 0x6755L, 1L, 0x6755L, 1L);
    VECTOR(int16_t, 16) l_1326 = (VECTOR(int16_t, 16))((-3L), (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 0x470EL), 0x470EL), 0x470EL, (-3L), 0x470EL, (VECTOR(int16_t, 2))((-3L), 0x470EL), (VECTOR(int16_t, 2))((-3L), 0x470EL), (-3L), 0x470EL, (-3L), 0x470EL);
    struct S0 *l_1335 = &p_1354->g_325;
    struct S0 **l_1334[1];
    int i, j;
    for (i = 0; i < 1; i++)
        l_1334[i] = &l_1335;
    for (p_1354->g_492.f0.f2 = (-29); (p_1354->g_492.f0.f2 > (-8)); p_1354->g_492.f0.f2 = safe_add_func_uint8_t_u_u(p_1354->g_492.f0.f2, 1))
    { /* block id: 371 */
        uint64_t l_988 = 8UL;
        int32_t l_989 = 0x473EB4F9L;
        int32_t *l_1023 = &p_1354->g_1020;
        int64_t *l_1032 = &p_1354->g_62;
        for (p_1354->g_441.f2 = (-7); (p_1354->g_441.f2 >= (-4)); ++p_1354->g_441.f2)
        { /* block id: 374 */
            int32_t *l_949 = (void*)0;
            int64_t **l_979 = &p_1354->g_292;
            uint16_t *l_994 = &p_1354->g_243;
            uint16_t **l_993[3];
            VECTOR(uint8_t, 16) l_1048 = (VECTOR(uint8_t, 16))(0xBEL, (VECTOR(uint8_t, 4))(0xBEL, (VECTOR(uint8_t, 2))(0xBEL, 0x6BL), 0x6BL), 0x6BL, 0xBEL, 0x6BL, (VECTOR(uint8_t, 2))(0xBEL, 0x6BL), (VECTOR(uint8_t, 2))(0xBEL, 0x6BL), 0xBEL, 0x6BL, 0xBEL, 0x6BL);
            int i;
            for (i = 0; i < 3; i++)
                l_993[i] = &l_994;
            if (p_4)
                break;
            for (p_1354->g_328.f1.f2 = 18; (p_1354->g_328.f1.f2 == 22); p_1354->g_328.f1.f2 = safe_add_func_int64_t_s_s(p_1354->g_328.f1.f2, 1))
            { /* block id: 378 */
                uint32_t l_992 = 0x36B20BF7L;
                int32_t *l_1019 = &p_1354->g_1020;
                uint8_t *l_1059 = &p_1354->g_145;
                for (p_1354->g_399.f1 = 0; (p_1354->g_399.f1 >= 5); p_1354->g_399.f1++)
                { /* block id: 381 */
                    volatile struct S0 *l_951 = &p_1354->g_950[0];
                    int32_t *l_953 = (void*)0;
                    int32_t *l_954 = &p_1354->g_19;
                    l_949 = (void*)0;
                    (*l_951) = p_1354->g_950[0];
                    (*l_954) &= ((VECTOR(int32_t, 4))(l_952.yxyx)).w;
                }
                for (p_1354->g_565.f1.f2 = 0; (p_1354->g_565.f1.f2 <= (-14)); p_1354->g_565.f1.f2 = safe_sub_func_int32_t_s_s(p_1354->g_565.f1.f2, 6))
                { /* block id: 388 */
                    return p_7;
                }
                for (p_1354->g_145 = (-13); (p_1354->g_145 != 21); p_1354->g_145 = safe_add_func_uint16_t_u_u(p_1354->g_145, 8))
                { /* block id: 393 */
                    VECTOR(int64_t, 2) l_981 = (VECTOR(int64_t, 2))((-9L), (-9L));
                    int8_t *l_990 = &p_1354->g_609;
                    int32_t *l_991[3];
                    uint32_t l_1005[2];
                    int16_t *l_1006 = &p_1354->g_586[5].f0.f2;
                    int16_t *l_1007 = (void*)0;
                    int64_t *l_1031 = &p_1354->g_62;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_991[i] = &p_1354->g_586[5].f0.f1;
                    for (i = 0; i < 2; i++)
                        l_1005[i] = 4294967295UL;
                    l_992 &= (safe_mul_func_int16_t_s_s((safe_div_func_int16_t_s_s(((safe_add_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(((*l_990) = (l_989 = (safe_sub_func_uint8_t_u_u(p_7, (safe_lshift_func_uint8_t_u_s((safe_div_func_int64_t_s_s(((safe_rshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(0UL, ((p_4 || (((VECTOR(int64_t, 16))(0x6C95696678335204L, (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(0x56L, ((void*)0 != l_979), 1L, ((VECTOR(int8_t, 8))(0x7CL, (((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(p_1354->g_980.s92c77c4b)).s44 & ((VECTOR(int64_t, 2))(l_981.yx))))).hi >= ((safe_rshift_func_uint16_t_u_u((p_5 > (safe_mod_func_int32_t_s_s(((p_5 , 0x19755615555C8A6AL) > (*p_1354->g_292)), 1L))), 6)) ^ 0UL)), 0x19L, ((VECTOR(int8_t, 4))(0x43L)), 0x0DL)), ((VECTOR(int8_t, 4))((-1L))), 0L)).s6, FAKE_DIVERGE(p_1354->local_1_offset, get_local_id(1), 10))), ((VECTOR(int64_t, 2))((-4L))), ((VECTOR(int64_t, 2))(0x67AB8CD5D9E575A6L)), 0x52F295AF29967338L, 0x1B1F936D5A8E1C58L, ((VECTOR(int64_t, 2))(0L)), l_988, l_952.y, ((VECTOR(int64_t, 4))(0x48F4D603EC7877D0L)))).sa , GROUP_DIVERGE(1, 1))) && (-1L)))), 6)) ^ 255UL), 0x2BCD3A645E9D7529L)), 4)))))), p_5)), p_1354->g_260.se)) < 0x3BCDL), p_1354->g_328.f0)), l_952.x));
                    (*p_1354->g_995) = l_993[1];
                    if ((((*l_990) |= ((((*p_1354->g_657) = (((safe_div_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), p_6)) , ((safe_div_func_int8_t_s_s((safe_div_func_uint16_t_u_u(((-9L) < (&p_1354->g_908 == l_1004)), (((l_1005[0] >= (p_5 == 0x4EAAFDB8L)) ^ ((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 16))(0x43CBL, 1L, 1L, (p_1354->g_349.s3 = (p_1354->g_438.f2 = ((*l_1006) = (l_952.x != p_3)))), 1L, p_1354->g_253.y, 0x657FL, p_4, 1L, 0x2F2FL, ((VECTOR(int16_t, 4))(0L)), 0x0378L, 0x5E9FL)), ((VECTOR(int16_t, 16))(0x068EL))))) ^ ((VECTOR(int16_t, 16))((-8L)))))).lo && ((VECTOR(int16_t, 8))((-1L)))))).s53 && ((VECTOR(int16_t, 2))(0x32E6L))))).yxxy, (int16_t)p_1354->g_586[5].f0.f2))).even < ((VECTOR(int16_t, 2))(0x2A82L))))).yxxxyyxx || ((VECTOR(int16_t, 8))((-1L)))))).s15 <= ((VECTOR(int16_t, 2))(0x71A7L))))).xxxxyyyxyyyyyxyy && ((VECTOR(int16_t, 16))((-9L)))))).sb & p_6) || p_7)) , p_4))), p_1354->g_364.f2)) ^ p_4)) , l_1008)) != l_1009) || 0UL)) >= p_1354->g_143))
                    { /* block id: 403 */
                        if (p_4)
                            break;
                    }
                    else
                    { /* block id: 405 */
                        int16_t l_1018[4][6] = {{(-1L),7L,(-1L),(-1L),7L,(-1L)},{(-1L),7L,(-1L),(-1L),7L,(-1L)},{(-1L),7L,(-1L),(-1L),7L,(-1L)},{(-1L),7L,(-1L),(-1L),7L,(-1L)}};
                        int32_t **l_1021 = (void*)0;
                        int32_t **l_1022[5][7] = {{&l_1019,&l_1019,&l_1019,(void*)0,(void*)0,(void*)0,&l_1019},{&l_1019,&l_1019,&l_1019,(void*)0,(void*)0,(void*)0,&l_1019},{&l_1019,&l_1019,&l_1019,(void*)0,(void*)0,(void*)0,&l_1019},{&l_1019,&l_1019,&l_1019,(void*)0,(void*)0,(void*)0,&l_1019},{&l_1019,&l_1019,&l_1019,(void*)0,(void*)0,(void*)0,&l_1019}};
                        int32_t **l_1033 = &l_991[2];
                        int i, j;
                        (*l_1033) = ((safe_mod_func_int8_t_s_s((p_1354->g_1012[4][8] , (safe_add_func_uint64_t_u_u(p_1354->g_912.x, (((*l_994) = 0UL) || l_952.x)))), ((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 8))(p_1354->g_1015.sa5c6b0c2)).s2017656647476775, ((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(9L, 0L)).xxxyyxxyyxxyyxyy | ((VECTOR(int8_t, 16))((-10L), (((safe_mod_func_int32_t_s_s(l_1018[2][4], 0x0B77B390L)) , p_1354->g_656[3][2][2]) != (l_1023 = l_1019)), 0x5FL, ((VECTOR(int8_t, 4))(p_1354->g_1024.xyyx)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_1025.yy)), 0x72L, 0L)), ((VECTOR(int8_t, 4))(p_1354->g_1026.xyyx)), 0x1FL))))).s7f00, ((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 4))(1L, (safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 4))(1L, (((safe_lshift_func_uint8_t_u_u((((*p_1354->g_684) = l_1031) != l_1032), p_1354->g_255.y)) , p_1354->g_255.y) && l_988), 0x16L, 8L)).w, 255UL)), (-1L), (-1L))).yxwyxxwwzxyywxyz, ((VECTOR(int8_t, 16))(0x19L))))).s04b2))).zxyzwwzzwzwxzxxx))).sd)) , l_949);
                        (*l_1033) = (*p_1354->g_338);
                        (*p_1354->g_1034) = &p_1354->g_841;
                    }
                }
                (*p_1354->g_1035) = (((safe_mod_func_int16_t_s_s(p_3, ((p_5 != ((((((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(p_1354->g_1042.yxyxyxyyyyyxxyyy)).s1ef8 + ((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(p_1354->g_1045.s10)).yyyy >> ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 8))(l_1048.sac17bb24)).s02, (uint8_t)((p_1354->g_617 < ((p_1354->g_325.f1 , (safe_mul_func_int16_t_s_s((!(safe_mod_func_int32_t_s_s(l_992, (safe_rshift_func_uint16_t_u_u((((*l_1059) = (((((safe_lshift_func_int16_t_s_s(p_4, p_7)) == 0L) && (p_1354->g_1015.s4 >= 0UL)) , p_6) >= 0x35A4AAA331936F13L)) <= l_992), l_988))))), l_992))) < GROUP_DIVERGE(2, 1))) > 0UL)))).xyyyyyyx + ((VECTOR(uint8_t, 8))(0x6CL))))).even))).zzxwwxwy, ((VECTOR(uint8_t, 8))(0xB9L))))).even))).yzwywwxwxwyxxzzw, ((VECTOR(uint16_t, 16))(65535UL)), ((VECTOR(uint16_t, 16))(65535UL))))).sd644 << ((VECTOR(uint16_t, 4))(0x5B0DL))))).odd, ((VECTOR(uint16_t, 2))(1UL))))).hi < 0x33A6L) < l_992) <= (-6L)) ^ p_6)) , p_3))) >= 18446744073709551611UL) , (*p_1354->g_1035));
            }
        }
    }
    if ((((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),VECTOR(int64_t, 4),((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 16))(l_1060.s4764477035754513)), ((VECTOR(uint32_t, 8))(l_1061.s35657455)).s5136176143310407))).s7244))), 4L, 0x673BF778A5D2664AL, ((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 4))(l_1062.xyxy)).wwxyxwzx, ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))((((safe_mul_func_uint16_t_u_u((p_6 || 0x578D0B61L), (l_952.y ^= l_1062.x))) > ((~((l_1067[0][0] == l_1067[0][0]) == (safe_mul_func_uint16_t_u_u((((*l_1071) = (l_1070 = &p_1354->g_69)) != (void*)0), (p_5 < ((*l_1073) = (p_1354->g_363.f3 ^ p_1354->g_1012[4][8].f0.f2))))))) != p_4)) | 0x331DL), 0x1C7A361E0652D5E6L, 1L, 0x6F3FD7CD0B1F3AD9L)), p_5, 8L, 0x02B30D69E7FFDB35L, 0x48CA33A4F2D8E249L)).s75, ((VECTOR(int64_t, 2))(0x7A189D82A320A36AL))))).yyxxxxxx, ((VECTOR(int64_t, 8))(0x188468233BF1BB4AL))))).s6271701220630252 >= ((VECTOR(int64_t, 16))((-6L)))))).hi, ((VECTOR(int64_t, 8))(0x1235B71CD50E152BL)), ((VECTOR(int64_t, 8))(8L))))).s41, ((VECTOR(int64_t, 2))(0x2695C7098C30C565L))))), 0x1AF1CE255B5DEE07L, ((VECTOR(int64_t, 2))(1L)), 5L, (-1L), ((VECTOR(int64_t, 2))(0x47D2D4469522AA1DL)), 0x06BCDD598B812E20L)) | ((VECTOR(int64_t, 16))(1L))))).sec51, ((VECTOR(int64_t, 4))(0x26BDAD8BA6B5ADCCL)), ((VECTOR(int64_t, 4))(0x28807681E5DF400AL))))).odd && ((VECTOR(int64_t, 2))(0x3DA8B36B038CE752L))))).yyxx, ((VECTOR(int64_t, 4))(0x023708B8BB8909E9L))))).x && p_1354->g_843.f0.f0))
    { /* block id: 423 */
        uint32_t l_1081[3][3] = {{4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL}};
        int16_t *l_1086 = (void*)0;
        int16_t *l_1087 = &p_1354->g_325.f2;
        union U2 ***l_1088 = &l_1072;
        int32_t l_1089[6][3] = {{0x31D1AE07L,0x19BE2989L,6L},{0x31D1AE07L,0x19BE2989L,6L},{0x31D1AE07L,0x19BE2989L,6L},{0x31D1AE07L,0x19BE2989L,6L},{0x31D1AE07L,0x19BE2989L,6L},{0x31D1AE07L,0x19BE2989L,6L}};
        int32_t *l_1101 = &p_1354->g_586[5].f0.f1;
        VECTOR(uint8_t, 2) l_1157 = (VECTOR(uint8_t, 2))(0xF5L, 248UL);
        int8_t *l_1187 = (void*)0;
        int8_t **l_1186 = &l_1187;
        uint16_t ***l_1192 = &p_1354->g_996;
        VECTOR(int8_t, 8) l_1222 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 5L), 5L), 5L, 0L, 5L);
        VECTOR(uint64_t, 16) l_1261 = (VECTOR(uint64_t, 16))(18446744073709551614UL, (VECTOR(uint64_t, 4))(18446744073709551614UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 8UL), 8UL), 8UL, 18446744073709551614UL, 8UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 8UL), (VECTOR(uint64_t, 2))(18446744073709551614UL, 8UL), 18446744073709551614UL, 8UL, 18446744073709551614UL, 8UL);
        struct S0 *l_1267 = &p_1354->g_843.f0;
        int32_t l_1277 = 0x3E36331FL;
        VECTOR(uint8_t, 16) l_1295 = (VECTOR(uint8_t, 16))(3UL, (VECTOR(uint8_t, 4))(3UL, (VECTOR(uint8_t, 2))(3UL, 7UL), 7UL), 7UL, 3UL, 7UL, (VECTOR(uint8_t, 2))(3UL, 7UL), (VECTOR(uint8_t, 2))(3UL, 7UL), 3UL, 7UL, 3UL, 7UL);
        VECTOR(uint8_t, 4) l_1297 = (VECTOR(uint8_t, 4))(0x4CL, (VECTOR(uint8_t, 2))(0x4CL, 1UL), 1UL);
        VECTOR(uint8_t, 8) l_1305 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 8UL), 8UL), 8UL, 1UL, 8UL);
        int i, j;
        if ((safe_lshift_func_int16_t_s_u(((*l_1087) &= (safe_mod_func_int64_t_s_s((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 8))(l_1080.wxyzwzzz)).s1, (++l_1081[0][0]))), (safe_mod_func_uint8_t_u_u(p_5, p_1354->g_398.f1))))), 13)))
        { /* block id: 426 */
            int32_t l_1090 = 9L;
            int32_t l_1091 = 0x5DC15612L;
            VECTOR(int32_t, 4) l_1092 = (VECTOR(int32_t, 4))(0x7D503E80L, (VECTOR(int32_t, 2))(0x7D503E80L, 9L), 9L);
            uint16_t l_1093 = 1UL;
            VECTOR(int16_t, 4) l_1106 = (VECTOR(int16_t, 4))(0x1F1DL, (VECTOR(int16_t, 2))(0x1F1DL, 0x23D1L), 0x23D1L);
            int i;
            l_1089[2][0] |= (&l_1070 == (((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0L, (-8L))), 0L, 0L)).x , l_1088));
            --l_1093;
            for (p_1354->g_908 = 0; (p_1354->g_908 >= 35); p_1354->g_908 = safe_add_func_uint32_t_u_u(p_1354->g_908, 8))
            { /* block id: 431 */
                VECTOR(int8_t, 4) l_1107 = (VECTOR(int8_t, 4))(0x00L, (VECTOR(int8_t, 2))(0x00L, 0L), 0L);
                int i;
                for (p_7 = 3; (p_7 <= 6); p_7++)
                { /* block id: 434 */
                    int32_t *l_1100 = (void*)0;
                    l_1101 = l_1100;
                }
                for (p_6 = (-4); (p_6 == 50); p_6 = safe_add_func_int32_t_s_s(p_6, 1))
                { /* block id: 439 */
                    l_1091 |= (safe_add_func_uint8_t_u_u(p_1354->g_340.f2, (((((VECTOR(int16_t, 4))(l_1106.wwwy)).z <= p_1354->g_1024.x) < ((VECTOR(int8_t, 2))(l_1107.zy)).odd) != (((l_1108 = (void*)0) == (void*)0) , p_1354->g_441.f2))));
                    return l_1107.x;
                }
            }
        }
        else
        { /* block id: 445 */
            uint8_t l_1115[3][3] = {{255UL,255UL,255UL},{255UL,255UL,255UL},{255UL,255UL,255UL}};
            int32_t l_1118 = 0x2FD83E8AL;
            int32_t l_1119 = 0x66B3830DL;
            int32_t l_1121[2];
            VECTOR(int8_t, 8) l_1128 = (VECTOR(int8_t, 8))(0x0EL, (VECTOR(int8_t, 4))(0x0EL, (VECTOR(int8_t, 2))(0x0EL, 1L), 1L), 1L, 0x0EL, 1L);
            VECTOR(int8_t, 8) l_1131 = (VECTOR(int8_t, 8))(0x6CL, (VECTOR(int8_t, 4))(0x6CL, (VECTOR(int8_t, 2))(0x6CL, 1L), 1L), 1L, 0x6CL, 1L);
            uint16_t *l_1137 = &p_1354->g_1138[0][3][1];
            VECTOR(int16_t, 2) l_1139 = (VECTOR(int16_t, 2))(3L, (-3L));
            int8_t l_1153 = 0L;
            VECTOR(uint8_t, 8) l_1169 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 1UL), 1UL), 1UL, 255UL, 1UL);
            VECTOR(uint8_t, 8) l_1184 = (VECTOR(uint8_t, 8))(0x1DL, (VECTOR(uint8_t, 4))(0x1DL, (VECTOR(uint8_t, 2))(0x1DL, 0x69L), 0x69L), 0x69L, 0x1DL, 0x69L);
            int64_t **l_1196 = &p_1354->g_292;
            VECTOR(int8_t, 2) l_1211 = (VECTOR(int8_t, 2))(0L, (-10L));
            VECTOR(uint64_t, 8) l_1228 = (VECTOR(uint64_t, 8))(18446744073709551608UL, (VECTOR(uint64_t, 4))(18446744073709551608UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 0x2831B108B5090641L), 0x2831B108B5090641L), 0x2831B108B5090641L, 18446744073709551608UL, 0x2831B108B5090641L);
            VECTOR(uint64_t, 16) l_1230 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL), 1UL), 1UL, 18446744073709551615UL, 1UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL), 18446744073709551615UL, 1UL, 18446744073709551615UL, 1UL);
            VECTOR(int8_t, 16) l_1232 = (VECTOR(int8_t, 16))(0x21L, (VECTOR(int8_t, 4))(0x21L, (VECTOR(int8_t, 2))(0x21L, 0x0BL), 0x0BL), 0x0BL, 0x21L, 0x0BL, (VECTOR(int8_t, 2))(0x21L, 0x0BL), (VECTOR(int8_t, 2))(0x21L, 0x0BL), 0x21L, 0x0BL, 0x21L, 0x0BL);
            VECTOR(uint64_t, 16) l_1241 = (VECTOR(uint64_t, 16))(0xDAA639448333B114L, (VECTOR(uint64_t, 4))(0xDAA639448333B114L, (VECTOR(uint64_t, 2))(0xDAA639448333B114L, 0x16F0416D8ED8E3A1L), 0x16F0416D8ED8E3A1L), 0x16F0416D8ED8E3A1L, 0xDAA639448333B114L, 0x16F0416D8ED8E3A1L, (VECTOR(uint64_t, 2))(0xDAA639448333B114L, 0x16F0416D8ED8E3A1L), (VECTOR(uint64_t, 2))(0xDAA639448333B114L, 0x16F0416D8ED8E3A1L), 0xDAA639448333B114L, 0x16F0416D8ED8E3A1L, 0xDAA639448333B114L, 0x16F0416D8ED8E3A1L);
            VECTOR(uint64_t, 16) l_1250 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint64_t, 2))(1UL, 0UL), (VECTOR(uint64_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL);
            uint64_t *l_1266 = (void*)0;
            int32_t l_1278 = 0L;
            int32_t l_1280 = 0x70CB15ABL;
            VECTOR(uint8_t, 8) l_1292 = (VECTOR(uint8_t, 8))(0xCAL, (VECTOR(uint8_t, 4))(0xCAL, (VECTOR(uint8_t, 2))(0xCAL, 0x85L), 0x85L), 0x85L, 0xCAL, 0x85L);
            VECTOR(uint8_t, 4) l_1300 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x7AL), 0x7AL);
            int8_t l_1316 = 0x04L;
            int i, j;
            for (i = 0; i < 2; i++)
                l_1121[i] = 0x10F9DF7AL;
            for (p_1354->g_398.f2 = (-9); (p_1354->g_398.f2 != 6); p_1354->g_398.f2 = safe_add_func_uint64_t_u_u(p_1354->g_398.f2, 8))
            { /* block id: 448 */
                int8_t l_1111 = 0x06L;
                uint8_t **l_1112 = &l_1108;
                uint8_t *l_1113 = &p_1354->g_140[6][2];
                int32_t *l_1114 = &p_1354->g_398.f1;
                uint8_t l_1122 = 1UL;
                VECTOR(int8_t, 4) l_1163 = (VECTOR(int8_t, 4))(0x29L, (VECTOR(int8_t, 2))(0x29L, 1L), 1L);
                uint32_t l_1202 = 0x6075AD55L;
                uint8_t *l_1216 = (void*)0;
                uint8_t *l_1217 = (void*)0;
                uint8_t *l_1218 = (void*)0;
                uint8_t *l_1219 = (void*)0;
                uint8_t *l_1220[4];
                int8_t *l_1221[5] = {&l_1111,&l_1111,&l_1111,&l_1111,&l_1111};
                uint64_t *l_1237 = (void*)0;
                uint64_t *l_1238[3][2] = {{&p_1354->g_908,&p_1354->g_908},{&p_1354->g_908,&p_1354->g_908},{&p_1354->g_908,&p_1354->g_908}};
                int32_t l_1272 = 0x4FDCEA90L;
                int32_t l_1274[9][9][3] = {{{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L}},{{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L}},{{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L}},{{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L}},{{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L}},{{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L}},{{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L}},{{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L}},{{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L},{(-5L),(-2L),0x22D9BC36L}}};
                uint32_t l_1281 = 1UL;
                VECTOR(uint8_t, 4) l_1291 = (VECTOR(uint8_t, 4))(0x66L, (VECTOR(uint8_t, 2))(0x66L, 251UL), 251UL);
                VECTOR(uint8_t, 4) l_1296 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 255UL), 255UL);
                uint32_t ***l_1306 = &p_1354->g_657;
                int32_t l_1317 = (-3L);
                int i, j, k;
                for (i = 0; i < 4; i++)
                    l_1220[i] = &p_1354->g_843.f3;
                (1 + 1);
            }
        }
        (*l_1072) = (*p_1354->g_693);
        return p_3;
    }
    else
    { /* block id: 505 */
        VECTOR(int16_t, 2) l_1324 = (VECTOR(int16_t, 2))((-3L), 0x3B5EL);
        int16_t *l_1336 = &p_1354->g_565.f1.f2;
        int16_t *l_1337 = &p_1354->g_441.f2;
        int32_t l_1338 = 0x401C8A4BL;
        int i;
        l_1338 &= ((((~(safe_div_func_uint16_t_u_u((safe_mod_func_int32_t_s_s((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(0x3C51L, 0x1919L)).xxyy && ((VECTOR(int16_t, 2))(l_1324.yy)).xxyy))), ((VECTOR(int16_t, 8))((!((VECTOR(int16_t, 8))(l_1325.s244ce87f))))).odd, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x4A6CL, 0L)), 1L, 0x27AAL)))))))) | ((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),int16_t,((VECTOR(int16_t, 8))(l_1326.sa2f28c61)).even, (int16_t)(safe_div_func_int64_t_s_s(p_5, FAKE_DIVERGE(p_1354->global_2_offset, get_global_id(2), 10))), (int16_t)(p_1354->g_1311.x < 0xFCL)))), ((VECTOR(int16_t, 16))(((*l_1337) &= ((safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(0x8BL, 0xB1L)).hi, (safe_mul_func_uint16_t_u_u((&p_1354->g_1035 != (p_1354->g_1333 , l_1334[0])), (0x79DAL <= ((((VECTOR(uint8_t, 2))(7UL, 0UL)).hi && ((*l_1108) = ((*p_1354->g_292) || ((l_1324.x > 9UL) <= p_1354->g_843.f0.f1)))) < 0UL)))))) , p_6)), (-7L), ((VECTOR(int16_t, 2))(0x0403L)), ((VECTOR(int16_t, 4))(0x70D2L)), (-4L), 4L, 0x726DL, (-7L), 8L, 1L, 0L, 0x09C2L)).sd8bd, ((VECTOR(int16_t, 4))(0x1275L))))).zxzxzwxy, ((VECTOR(int16_t, 8))(0x300CL))))).lo))).z, 8)), p_5)), p_1354->g_255.x))) > p_1354->g_139.x) <= p_1354->g_190) >= p_7);
        (*p_1354->g_1340) = (*p_1354->g_1034);
    }
    return p_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1354->g_684 p_1354->g_292 p_1354->g_67.f0 p_1354->g_563 p_1354->g_617 p_1354->g_921 p_1354->g_441.f3 p_1354->g_92 p_1354->g_140 p_1354->g_722.f1
 * writes: p_1354->g_82 p_1354->g_55 p_1354->g_140 p_1354->g_325.f1 p_1354->g_722.f1
 */
uint8_t  func_10(uint32_t  p_11, int16_t  p_12, int32_t  p_13, uint32_t  p_14, struct S3 * p_1354)
{ /* block id: 352 */
    VECTOR(int32_t, 4) l_914 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x7557EC2AL), 0x7557EC2AL);
    VECTOR(int32_t, 8) l_915 = (VECTOR(int32_t, 8))(0x4840A4CEL, (VECTOR(int32_t, 4))(0x4840A4CEL, (VECTOR(int32_t, 2))(0x4840A4CEL, 0x2AB21C6DL), 0x2AB21C6DL), 0x2AB21C6DL, 0x4840A4CEL, 0x2AB21C6DL);
    uint32_t ****l_916[7] = {&p_1354->g_728,&p_1354->g_728,&p_1354->g_728,&p_1354->g_728,&p_1354->g_728,&p_1354->g_728,&p_1354->g_728};
    int32_t *l_919 = (void*)0;
    int32_t *l_924 = (void*)0;
    VECTOR(int32_t, 4) l_929 = (VECTOR(int32_t, 4))(0x4ECAE8EDL, (VECTOR(int32_t, 2))(0x4ECAE8EDL, 0x39EA8201L), 0x39EA8201L);
    int64_t *l_931 = &p_1354->g_55;
    uint8_t *l_934 = &p_1354->g_140[6][2];
    int32_t *l_938 = &p_1354->g_325.f1;
    int32_t *l_939 = &p_1354->g_722.f1;
    uint8_t l_940[5] = {0x57L,0x57L,0x57L,0x57L,0x57L};
    int i;
    if (((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 4))(l_914.wxwy)).yzyyxyxw, ((VECTOR(int32_t, 4))(l_915.s5076)).xywyyywy))).s6)
    { /* block id: 353 */
        uint32_t l_917 = 0xB6D406A0L;
        int32_t **l_918 = &p_1354->g_82;
        l_917 |= ((void*)0 == l_916[0]);
        (*l_918) = (void*)0;
        l_915.s7 ^= (FAKE_DIVERGE(p_1354->global_0_offset, get_global_id(0), 10) != (**p_1354->g_684));
    }
    else
    { /* block id: 357 */
        int32_t **l_920[4] = {&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82};
        int i;
        (*p_1354->g_563) = l_919;
        return p_1354->g_617;
    }
    (*l_939) = ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 2))(p_1354->g_921.se4)), ((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))((safe_rshift_func_int8_t_s_s(((p_13 = (p_13 || 0x0F87L)) , p_1354->g_441.f3), (0x2BL | (safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), 2))))), (safe_sub_func_uint32_t_u_u(p_1354->g_92.x, p_12)), 0x33335887L, 0x7936EDB6L)).zwzwxwzx, ((VECTOR(int32_t, 4))(l_929.wxxw)).zzzywxzy, ((VECTOR(int32_t, 16))(0x3B6FCEFCL, (-5L), ((safe_unary_minus_func_int64_t_s(((*l_931) = (**p_1354->g_684)))) , ((*l_938) = (safe_mod_func_uint8_t_u_u(((*l_934) |= FAKE_DIVERGE(p_1354->global_2_offset, get_global_id(2), 10)), (((((safe_lshift_func_int16_t_s_s((safe_unary_minus_func_int64_t_s((0x5D92L && ((((8UL == l_929.z) ^ 0x31C50C63L) < 0x09L) || p_13)))), l_914.x)) , FAKE_DIVERGE(p_1354->group_1_offset, get_group_id(1), 10)) <= 0L) <= l_915.s1) , p_12))))), 0L, 0x17BDE948L, (-1L), ((VECTOR(int32_t, 8))(0x601BC3DEL)), 4L, 0L)).lo))).s05))).even;
    (*l_939) &= ((((l_940[1] & p_13) != ((void*)0 != &p_12)) , &p_1354->g_82) != (void*)0);
    return p_12;
}


/* ------------------------------------------ */
/* 
 * reads : p_1354->g_19 p_1354->g_63 p_1354->g_68 p_1354->g_67.f0 p_1354->g_55 p_1354->g_62 p_1354->g_92 p_1354->g_82 p_1354->g_71 p_1354->g_131 p_1354->g_138 p_1354->g_139 p_1354->g_145 p_1354->g_143 p_1354->g_219 p_1354->g_221 p_1354->g_140 p_1354->g_224 p_1354->g_226 p_1354->g_243 p_1354->g_253 p_1354->g_255 p_1354->g_260 p_1354->g_269 p_1354->g_270 p_1354->g_290 p_1354->g_439 p_1354->g_440 p_1354->g_441 p_1354->g_69 p_1354->g_454 p_1354->g_438 p_1354->g_398.f1 p_1354->g_338 p_1354->g_460 p_1354->g_364.f0 p_1354->g_291 p_1354->g_292 p_1354->g_340.f2 p_1354->g_349 p_1354->g_531 p_1354->g_492.f0.f0 p_1354->g_563 p_1354->g_565 p_1354->g_586 p_1354->g_586.f0.f1 p_1354->g_492.f0.f2 p_1354->g_648 p_1354->g_364.f1 p_1354->g_655 p_1354->g_657 p_1354->g_492.f1 p_1354->g_693 p_1354->g_617 p_1354->g_722.f1 p_1354->g_656 p_1354->g_841 p_1354->g_843 p_1354->g_325.f2 p_1354->g_399.f1 p_1354->g_865 p_1354->g_492.f0.f1 p_1354->g_684 p_1354->g_367 p_1354->g_882 p_1354->g_436.f1 p_1354->g_609 p_1354->g_340.f3 p_1354->g_436.f2 p_1354->g_908 p_1354->g_436.f3 p_1354->g_912
 * writes: p_1354->g_55 p_1354->g_69 p_1354->g_71 p_1354->g_67.f1.f2 p_1354->g_82 p_1354->g_67.f1.f1 p_1354->g_123 p_1354->g_140 p_1354->g_143 p_1354->g_63.f1 p_1354->g_243 p_1354->g_221 p_1354->g_139 p_1354->g_291 p_1354->g_398 p_1354->g_441 p_1354->g_67.f0 p_1354->g_617 p_1354->g_586.f0.f1 p_1354->g_492.f1 p_1354->g_684 p_1354->g_367 p_1354->g_145 p_1354->g_722.f1 p_1354->g_224 p_1354->g_531 p_1354->g_325.f2 p_1354->g_908 p_1354->g_436.f1 p_1354->g_328.f1.f1
 */
int16_t  func_21(uint64_t  p_22, uint8_t  p_23, struct S3 * p_1354)
{ /* block id: 5 */
    uint16_t l_24[1][1][8] = {{{0x9CF7L,0x9CF7L,0x9CF7L,0x9CF7L,0x9CF7L,0x9CF7L,0x9CF7L,0x9CF7L}}};
    uint8_t l_31 = 0x54L;
    int32_t *l_913 = &p_1354->g_328.f1.f1;
    int i, j, k;
    ++l_24[0][0][6];
    (*l_913) = func_27((func_29(l_31, p_1354) , l_24[0][0][4]), p_1354);
    return p_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_1354->g_243 p_1354->g_260 p_1354->g_292 p_1354->g_586.f0.f1 p_1354->g_648.f3 p_1354->g_693 p_1354->g_454 p_1354->g_82 p_1354->g_722.f1 p_1354->g_143 p_1354->g_460 p_1354->g_67.f0 p_1354->g_62 p_1354->g_441.f2 p_1354->g_224 p_1354->g_657 p_1354->g_656 p_1354->g_221 p_1354->g_19 p_1354->g_841 p_1354->g_843 p_1354->g_325.f2 p_1354->g_399.f1 p_1354->g_340.f2 p_1354->g_865 p_1354->g_648.f0 p_1354->g_492.f0.f1 p_1354->g_145 p_1354->g_138 p_1354->g_684 p_1354->g_648.f1 p_1354->g_367 p_1354->g_882 p_1354->g_436.f1 p_1354->g_609 p_1354->g_340.f3 p_1354->g_436.f2 p_1354->g_908 p_1354->g_436.f3 p_1354->g_912 p_1354->g_586 p_1354->g_270 p_1354->g_492.f0.f2 p_1354->g_648 p_1354->g_364.f1 p_1354->g_655 p_1354->g_139 p_1354->g_492.f1 p_1354->g_617
 * writes: p_1354->g_243 p_1354->g_617 p_1354->g_67.f0 p_1354->g_586.f0.f1 p_1354->g_492.f1 p_1354->g_684 p_1354->g_82 p_1354->g_367 p_1354->g_69 p_1354->g_55 p_1354->g_145 p_1354->g_722.f1 p_1354->g_224 p_1354->g_531 p_1354->g_325.f2 p_1354->g_908 p_1354->g_436.f1 p_1354->g_139
 */
int32_t  func_27(uint32_t  p_28, struct S3 * p_1354)
{ /* block id: 227 */
    int32_t l_572 = 0x47B28027L;
    uint16_t *l_573 = &p_1354->g_243;
    VECTOR(int32_t, 2) l_587 = (VECTOR(int32_t, 2))(1L, 0x2E4E5042L);
    VECTOR(uint16_t, 4) l_590 = (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 0UL), 0UL);
    VECTOR(uint32_t, 8) l_596 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL);
    int32_t **l_599 = &p_1354->g_82;
    int32_t **l_600[1][5];
    int32_t *l_601[7][9][4] = {{{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1}},{{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1}},{{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1}},{{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1}},{{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1}},{{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1}},{{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1},{&p_1354->g_586[5].f0.f1,&p_1354->g_492.f0.f1,&p_1354->g_441.f1,&p_1354->g_436.f1}}};
    uint64_t l_602 = 18446744073709551614UL;
    VECTOR(int32_t, 8) l_618 = (VECTOR(int32_t, 8))(0x4264755BL, (VECTOR(int32_t, 4))(0x4264755BL, (VECTOR(int32_t, 2))(0x4264755BL, 0L), 0L), 0L, 0x4264755BL, 0L);
    VECTOR(uint32_t, 16) l_629 = (VECTOR(uint32_t, 16))(0xA7EC181BL, (VECTOR(uint32_t, 4))(0xA7EC181BL, (VECTOR(uint32_t, 2))(0xA7EC181BL, 4294967295UL), 4294967295UL), 4294967295UL, 0xA7EC181BL, 4294967295UL, (VECTOR(uint32_t, 2))(0xA7EC181BL, 4294967295UL), (VECTOR(uint32_t, 2))(0xA7EC181BL, 4294967295UL), 0xA7EC181BL, 4294967295UL, 0xA7EC181BL, 4294967295UL);
    VECTOR(uint32_t, 8) l_631 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 1UL), 1UL), 1UL, 4294967295UL, 1UL);
    VECTOR(uint32_t, 16) l_638 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x380E99C6L), 0x380E99C6L), 0x380E99C6L, 1UL, 0x380E99C6L, (VECTOR(uint32_t, 2))(1UL, 0x380E99C6L), (VECTOR(uint32_t, 2))(1UL, 0x380E99C6L), 1UL, 0x380E99C6L, 1UL, 0x380E99C6L);
    VECTOR(uint8_t, 8) l_653 = (VECTOR(uint8_t, 8))(0x96L, (VECTOR(uint8_t, 4))(0x96L, (VECTOR(uint8_t, 2))(0x96L, 255UL), 255UL), 255UL, 0x96L, 255UL);
    VECTOR(uint8_t, 8) l_654 = (VECTOR(uint8_t, 8))(0x1BL, (VECTOR(uint8_t, 4))(0x1BL, (VECTOR(uint8_t, 2))(0x1BL, 0xBAL), 0xBAL), 0xBAL, 0x1BL, 0xBAL);
    VECTOR(int32_t, 16) l_663 = (VECTOR(int32_t, 16))(0x5B072A07L, (VECTOR(int32_t, 4))(0x5B072A07L, (VECTOR(int32_t, 2))(0x5B072A07L, (-1L)), (-1L)), (-1L), 0x5B072A07L, (-1L), (VECTOR(int32_t, 2))(0x5B072A07L, (-1L)), (VECTOR(int32_t, 2))(0x5B072A07L, (-1L)), 0x5B072A07L, (-1L), 0x5B072A07L, (-1L));
    VECTOR(int32_t, 4) l_678 = (VECTOR(int32_t, 4))(0x4B6471AAL, (VECTOR(int32_t, 2))(0x4B6471AAL, 0x7B3698B3L), 0x7B3698B3L);
    VECTOR(int32_t, 4) l_680 = (VECTOR(int32_t, 4))(0x3E611BAFL, (VECTOR(int32_t, 2))(0x3E611BAFL, 1L), 1L);
    int8_t l_745 = 0x19L;
    int32_t l_823 = 0x3BED8B5AL;
    union U2 **l_828 = &p_1354->g_69;
    union U2 ***l_827 = &l_828;
    uint64_t l_844 = 0xFCC7D79567C56D6CL;
    VECTOR(uint64_t, 4) l_859 = (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x7CD31BB666315FFFL), 0x7CD31BB666315FFFL);
    VECTOR(uint32_t, 2) l_862 = (VECTOR(uint32_t, 2))(4294967295UL, 0x2410C522L);
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
            l_600[i][j] = &p_1354->g_82;
    }
lbl_748:
    l_602 = (safe_rshift_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((safe_div_func_int16_t_s_s(l_572, (++(*l_573)))), ((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(65535UL, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),uint16_t,((VECTOR(uint16_t, 4))(0xCE82L, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((0x29B4L || (safe_add_func_int32_t_s_s((p_1354->g_586[5] , ((VECTOR(int32_t, 4))(l_587.xxyy)).w), l_587.x))), p_1354->g_270.s3, 0xE1B1L, 0x06CAL)).hi + ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(l_590.wxyzwwxw)) + ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((safe_mul_func_uint8_t_u_u(((((*p_1354->g_292) , (l_601[0][8][3] = ((~(safe_unary_minus_func_int64_t_s((safe_div_func_int32_t_s_s(((((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 2))(l_596.s15)), ((VECTOR(uint32_t, 4))(hadd(((VECTOR(uint32_t, 2))(0x00433AF9L, 3UL)).yxyx, ((VECTOR(uint32_t, 8))(0x5AD5D2F5L, p_28, 0x22F023BDL, ((VECTOR(uint32_t, 4))(max(((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 8))(9UL, 4UL, ((VECTOR(uint32_t, 2))(sub_sat(((VECTOR(uint32_t, 8))(abs_diff(((VECTOR(uint32_t, 8))(0UL, ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 8))((p_1354->g_586[5].f0.f1 && 1L), ((VECTOR(uint32_t, 2))(0x44CD2D76L)), l_590.z, 0x9CD87693L, ((VECTOR(uint32_t, 2))(1UL)), 0x35F6B31AL)), ((VECTOR(uint32_t, 8))(0x647A940CL))))).s43 + ((VECTOR(uint32_t, 2))(4294967289UL))))), ((VECTOR(uint32_t, 2))(4294967295UL)), ((VECTOR(uint32_t, 2))(0xBA9D54BBL)), 4294967290UL)), ((VECTOR(uint32_t, 8))(4294967295UL))))).s12, ((VECTOR(uint32_t, 2))(0xF943E65FL))))), 0UL, p_28, 4294967286UL, 0xC6C7773AL)), ((VECTOR(uint32_t, 8))(1UL)), ((VECTOR(uint32_t, 8))(7UL))))).odd, (uint32_t)l_590.w))), 6UL)).hi))).lo))).hi || l_587.x) && l_596.s5), (-4L)))))) , (void*)0))) == &p_1354->g_19) <= p_28), FAKE_DIVERGE(p_1354->global_2_offset, get_global_id(2), 10))) < 1UL), ((VECTOR(uint16_t, 4))(0x569BL)), 0x4DC9L, GROUP_DIVERGE(1, 1), ((VECTOR(uint16_t, 2))(4UL)), 65535UL, 0x2C39L, 0x50F7L, ((VECTOR(uint16_t, 2))(0x82B2L)), 1UL, 1UL)).sf, 65535UL, p_1354->g_492.f0.f2, 65535UL, ((VECTOR(uint16_t, 2))(0x01CDL)), 0x36C9L, 1UL))))).s24))), 0x4D84L)).lo, (uint16_t)0xD1E2L, (uint16_t)0x21F5L))) + ((VECTOR(uint16_t, 2))(0xB5A4L))))), 0x950FL)) + ((VECTOR(uint16_t, 4))(0UL))))).wwxyywyzyxyxyzxx >> ((VECTOR(uint16_t, 16))(8UL))))).se7, ((VECTOR(uint16_t, 2))(0xA86DL)), ((VECTOR(uint16_t, 2))(65526UL))))).yyxxyxxx, ((VECTOR(uint16_t, 8))(0x307BL))))).s6)), 4));
    if (p_28)
    { /* block id: 231 */
        uint32_t *l_605 = (void*)0;
        uint32_t *l_606 = (void*)0;
        uint32_t *l_607 = (void*)0;
        uint32_t *l_608 = (void*)0;
        uint32_t *l_610 = (void*)0;
        uint32_t *l_611 = (void*)0;
        int32_t l_612 = 2L;
        uint32_t *l_613 = (void*)0;
        uint32_t *l_614[6][7][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        VECTOR(uint32_t, 16) l_630 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 5UL), 5UL), 5UL, 4294967295UL, 5UL, (VECTOR(uint32_t, 2))(4294967295UL, 5UL), (VECTOR(uint32_t, 2))(4294967295UL, 5UL), 4294967295UL, 5UL, 4294967295UL, 5UL);
        VECTOR(int32_t, 8) l_645 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x119AC026L), 0x119AC026L), 0x119AC026L, (-1L), 0x119AC026L);
        uint64_t *l_658[10] = {(void*)0,&p_1354->g_190,(void*)0,&p_1354->g_190,(void*)0,(void*)0,&p_1354->g_190,(void*)0,&p_1354->g_190,(void*)0};
        int16_t l_659 = 0x041CL;
        uint8_t **l_660 = (void*)0;
        VECTOR(int32_t, 4) l_675 = (VECTOR(int32_t, 4))(0x4D1932BEL, (VECTOR(int32_t, 2))(0x4D1932BEL, 0x38663245L), 0x38663245L);
        VECTOR(int32_t, 8) l_679 = (VECTOR(int32_t, 8))(0x582C7EABL, (VECTOR(int32_t, 4))(0x582C7EABL, (VECTOR(int32_t, 2))(0x582C7EABL, 3L), 3L), 3L, 0x582C7EABL, 3L);
        int i, j, k;
        p_1354->g_586[5].f0.f1 &= ((safe_add_func_int8_t_s_s(p_1354->g_260.s6, ((p_1354->g_617 = (--p_28)) | ((VECTOR(int32_t, 16))(l_618.s1735133762136072)).s6))) , (((*p_1354->g_292) = ((((VECTOR(uint64_t, 16))(mad_hi(((VECTOR(uint64_t, 2))(0x0945E0E88723ED16L, 0x3EEB8C7EA226E97CL)).xxyxxyyyxyxxxyxy, ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(l_629.sec)) + ((VECTOR(uint32_t, 2))(l_630.s6d))))).xyxxxxyxxxyxyyyx + ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 16))(l_631.s6764531732374052)).even, ((VECTOR(uint32_t, 8))(((safe_lshift_func_int16_t_s_u((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(0x26C67584L, 0x0BA0EC80L, 1UL, ((VECTOR(uint32_t, 4))(mad_sat(((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 4))((0x26L | p_28), 0x03F4D7E2L, 0xEB213130L, 0x46D53F8AL)).zyzwwxyz, ((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(l_638.s53)) + ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))(0xEA9DA90BL, 1UL, 4294967295UL, (safe_mod_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_u((((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(l_645.s62252571)).lo != ((VECTOR(int32_t, 8))(0x454EFA6DL, l_612, (safe_add_func_uint16_t_u_u((l_630.sc , (p_1354->g_648 , (p_1354->g_243 > ((p_1354->g_139.x &= (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),uint8_t,((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(l_653.s67)) + ((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 16))(l_654.s7613447130450044)), ((VECTOR(uint8_t, 2))(0xD5L, 255UL)).xxyxxxyxyxyyxyxy))).s1b))).yyxy, (uint8_t)p_1354->g_364.f1, (uint8_t)(p_1354->g_655 != p_1354->g_657)))).z, 0x20L))) || p_28)))), l_659)), p_28, ((VECTOR(int32_t, 4))(0x09910E86L)))).hi))).yxywxwyzyxzxyyzz, ((VECTOR(int32_t, 16))(0L))))).sc , l_659), l_645.s6)) | 0x4B4CD1EF7735B565L), 250UL)), ((VECTOR(uint32_t, 2))(0x37E54172L)), 4294967295UL, 0UL)).s40 + ((VECTOR(uint32_t, 2))(0x4073E104L)))))))).yxxx, ((VECTOR(uint32_t, 4))(0xD478F0F2L))))).yxxyzxzy))).s04, (uint32_t)p_28))).yxyy, ((VECTOR(uint32_t, 4))(0x344ED999L)), ((VECTOR(uint32_t, 4))(0x88E61C65L))))), 0x5ADD7176L)) + ((VECTOR(uint32_t, 8))(4294967295UL))))).s3 == p_28), 13)) , p_28), 4294967294UL, 4294967289UL, 4294967294UL, 4294967290UL, p_28, 1UL, 0xBB0FE8EEL)), ((VECTOR(uint32_t, 8))(1UL))))), p_28, l_645.s0, ((VECTOR(uint32_t, 2))(0xCFCFB1C6L)), 0xA971CBACL, ((VECTOR(uint32_t, 2))(0x929C8E6BL)), 0x9C7FC9D1L))))).even + ((VECTOR(uint32_t, 8))(0UL))))).s70 + ((VECTOR(uint32_t, 2))(0UL))))).yyyxyxyy, ((VECTOR(uint32_t, 8))(0xE38FC5E2L))))).even + ((VECTOR(uint64_t, 4))(1UL))))).xywywyzwxyzxzyxw, ((VECTOR(uint64_t, 16))(0xE7C00C6E173AB27EL))))).s7 , (void*)0) == l_660)) ^ p_28));
        for (p_1354->g_492.f1 = 0; (p_1354->g_492.f1 >= (-11)); p_1354->g_492.f1--)
        { /* block id: 239 */
            uint16_t l_664 = 0x2D9DL;
            int32_t l_665 = (-1L);
            int16_t *l_670 = (void*)0;
            int16_t *l_671 = &p_1354->g_67[1][3].f1.f2;
            int16_t *l_672 = &p_1354->g_565.f1.f2;
            int16_t *l_673 = (void*)0;
            int16_t *l_674[6] = {(void*)0,&p_1354->g_399.f2,(void*)0,(void*)0,&p_1354->g_399.f2,(void*)0};
            VECTOR(int8_t, 2) l_703 = (VECTOR(int8_t, 2))((-1L), (-7L));
            int i;
            if (((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 16))((-1L), 0x5EBC7E0AL, p_28, ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(0x5D1D42A3L, 0x78D209BFL, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(l_663.scf7a5ad1)).s70 > ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))((-10L), (l_665 = ((l_664 = 0x49D0137AE3050175L) | 0UL)), ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 16))(0x7766680CL, 1L, (p_1354->g_140[4][2] < (l_612 |= (safe_rshift_func_int8_t_s_u((safe_mod_func_int16_t_s_s(p_1354->g_492.f1, (l_645.s0 , 0xBAC0L))), 3)))), ((VECTOR(int32_t, 8))(l_675.wwwzxyzz)), (safe_lshift_func_uint8_t_u_u(255UL, 5)), ((VECTOR(int32_t, 2))(l_678.zy)), (-9L), 1L)).s3de7, ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 8))(l_679.s21456156)).hi, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_680.xw)), 8L, (-5L))).xzwzyxyw, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(((p_28 , p_28) , l_630.sa), ((VECTOR(int32_t, 2))(1L)), 0x0D46D4A8L)) || ((VECTOR(int32_t, 4))((-1L)))))).zxzxwxxz))).s24 && ((VECTOR(int32_t, 2))(0x6F89A1C2L))))).xxxy)))))), 0x2342F252L, 1L)) >= ((VECTOR(int32_t, 8))(5L))))).s72))), (-8L), 0x1552F713L)), 0x33F2A542L, 0x2DECF998L)).s2327635753520503, ((VECTOR(int32_t, 16))(0x6C85BD04L))))).se8, ((VECTOR(int32_t, 2))(0x7D105797L))))), ((VECTOR(int32_t, 8))((-10L))), ((VECTOR(int32_t, 2))(0x1B50F0A3L)), 0x119A0EAAL)).lo, ((VECTOR(int32_t, 8))(0x4B89E275L))))).s0)
            { /* block id: 243 */
                int64_t **l_681 = &p_1354->g_292;
                int64_t ***l_682 = &p_1354->g_291;
                int64_t ***l_683[4] = {&p_1354->g_291,&p_1354->g_291,&p_1354->g_291,&p_1354->g_291};
                int64_t **l_685[4][9] = {{&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292},{&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292},{&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292},{&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292,&p_1354->g_292}};
                union U2 *l_692[1][8] = {{&p_1354->g_565,&p_1354->g_565,&p_1354->g_565,&p_1354->g_565,&p_1354->g_565,&p_1354->g_565,&p_1354->g_565,&p_1354->g_565}};
                int32_t *l_694 = &l_612;
                struct S0 *l_696 = &p_1354->g_399;
                struct S0 *l_697 = &p_1354->g_325;
                int32_t l_698 = 0x591422BAL;
                VECTOR(int8_t, 2) l_704 = (VECTOR(int8_t, 2))(0x79L, 0L);
                VECTOR(int32_t, 8) l_713 = (VECTOR(int32_t, 8))(0x2917EAAEL, (VECTOR(int32_t, 4))(0x2917EAAEL, (VECTOR(int32_t, 2))(0x2917EAAEL, 0x749FB430L), 0x749FB430L), 0x749FB430L, 0x2917EAAEL, 0x749FB430L);
                VECTOR(int32_t, 16) l_714 = (VECTOR(int32_t, 16))(0x1890FBFFL, (VECTOR(int32_t, 4))(0x1890FBFFL, (VECTOR(int32_t, 2))(0x1890FBFFL, 0x0B49E58EL), 0x0B49E58EL), 0x0B49E58EL, 0x1890FBFFL, 0x0B49E58EL, (VECTOR(int32_t, 2))(0x1890FBFFL, 0x0B49E58EL), (VECTOR(int32_t, 2))(0x1890FBFFL, 0x0B49E58EL), 0x1890FBFFL, 0x0B49E58EL, 0x1890FBFFL, 0x0B49E58EL);
                int i, j;
                if (((p_1354->g_684 = l_681) != l_685[3][7]))
                { /* block id: 245 */
                    (*l_599) = ((safe_sub_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u(p_1354->g_648.f3, 0)), 0L)) , &l_612);
                    for (p_1354->g_367 = (-23); (p_1354->g_367 < 14); p_1354->g_367 = safe_add_func_uint16_t_u_u(p_1354->g_367, 4))
                    { /* block id: 249 */
                        int32_t *l_695[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_695[i] = &p_1354->g_325.f1;
                        (*p_1354->g_693) = l_692[0][3];
                        l_695[1] = l_694;
                    }
                    l_697 = l_696;
                }
                else
                { /* block id: 254 */
                    uint64_t l_708[2][3];
                    VECTOR(int32_t, 8) l_715 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), (-6L)), (-6L)), (-6L), (-9L), (-6L));
                    uint32_t ***l_727 = (void*)0;
                    uint32_t ****l_726[2][6] = {{&l_727,&l_727,&l_727,&l_727,&l_727,&l_727},{&l_727,&l_727,&l_727,&l_727,&l_727,&l_727}};
                    int i, j;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_708[i][j] = 18446744073709551615UL;
                    }
                    (*l_694) = p_28;
                    l_675.z &= (l_698 , (safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(l_703.xxyxyyxx)).hi && ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(0x74L, (-1L))).xxyyyxxxyyyxyxxx && ((VECTOR(int8_t, 2))(0x5BL, 4L)).xyyxyyxyxxxyyxxx))).lo | ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(9L, 0x24L, 0L, 0x45L)), ((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 4))(l_704.xxxx)).even, ((VECTOR(int8_t, 16))(p_1354->g_705.yyxyxyxxxyyxyyxy)).s0a, ((VECTOR(int8_t, 8))(((((*p_1354->g_292) = l_708[1][1]) != (((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 2))(0x00A4L, 0x67D5L)).lo, ((*l_672) = ((safe_add_func_int32_t_s_s((l_715.s5 = ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 2))(l_713.s03)).xxyxyxyyxxxxyyyy, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(l_714.sc3847145)) ^ ((VECTOR(int32_t, 2))(0x63594FF1L, (-1L))).yxxxyyyx))).s0062666162063341))), ((VECTOR(int32_t, 2))(l_715.s62)).xyyxyxxxxyxxyxyy, ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(((l_665 = (safe_mul_func_int16_t_s_s(p_1354->g_55, (safe_add_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((p_1354->g_722 , (safe_mul_func_int16_t_s_s((((VECTOR(int8_t, 16))(p_1354->g_725.zwyxwxzyyywzwzxy)).s7 ^ (&p_1354->g_657 == (p_1354->g_728 = &p_1354->g_657))), p_1354->g_138.s6))), 6)), ((((safe_mod_func_uint32_t_u_u((((safe_rshift_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1354->local_2_offset, get_local_id(2), 10), 0)), 7)) ^ ((((safe_mod_func_int32_t_s_s(((*l_694) |= ((((l_664 , ((p_28 > p_28) & p_28)) , p_28) | (-1L)) , 0L)), p_1354->g_190)) && (-7L)) != p_1354->g_143) | 248UL)) | p_28), p_28)) , p_28) < p_1354->g_531.y) & p_1354->g_349.s2)))))) < GROUP_DIVERGE(2, 1)), ((VECTOR(int32_t, 2))((-3L))), ((VECTOR(int32_t, 2))(9L)), 7L, 0x0A847D14L, 0x37B9F2BCL, ((VECTOR(int32_t, 8))(1L)))) && ((VECTOR(int32_t, 16))(0x5E7ED175L)))))))).hi & ((VECTOR(int32_t, 8))(0x12A4D85AL))))), (int32_t)l_703.y))), ((VECTOR(int32_t, 8))(0L))))).s0515166162227203 == ((VECTOR(int32_t, 16))(0x573F9AB4L))))).sc), p_28)) <= l_708[1][1])))) >= l_645.s2) == l_664)) || p_1354->g_253.x), 3L, p_28, (-10L), ((VECTOR(int8_t, 2))(1L)), (-9L), 1L)).s00))).xyxyxyyxyyyyyxxx, ((VECTOR(int8_t, 16))(0x2CL))))).s3, 0x20L, 0x11L, 1L)).s4256731431075765, (int8_t)l_715.s4))).odd && ((VECTOR(int8_t, 8))(0x29L)))))))).lo))).xxzwywyzyzzzzxxz >= ((VECTOR(int8_t, 16))(6L))))) >= ((VECTOR(int8_t, 16))(0x5AL))))).se, 6)), l_679.s6)));
                    (*l_599) = l_694;
                    if (p_28)
                        break;
                }
                (*l_599) = &l_665;
            }
            else
            { /* block id: 267 */
                int32_t *l_739 = (void*)0;
                for (p_1354->g_55 = 25; (p_1354->g_55 != 15); --p_1354->g_55)
                { /* block id: 270 */
                    (*l_599) = l_739;
                }
                return l_665;
            }
        }
    }
    else
    { /* block id: 276 */
        uint16_t l_783 = 9UL;
        int32_t l_791 = (-1L);
        uint32_t *l_824 = &p_1354->g_71;
        union U2 **l_826 = &p_1354->g_69;
        union U2 ***l_825 = &l_826;
        int32_t ***l_835 = &l_600[0][3];
        int32_t l_849[7] = {(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)};
        int i;
        for (p_1354->g_617 = 17; (p_1354->g_617 >= 28); ++p_1354->g_617)
        { /* block id: 279 */
            int16_t l_749 = 0x73B4L;
            int64_t *l_764 = &p_1354->g_67[1][3].f0;
            uint8_t l_782 = 0xE8L;
            int32_t l_790[1][3];
            int32_t ****l_829 = &p_1354->g_185;
            VECTOR(int16_t, 4) l_842 = (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x7F74L), 0x7F74L);
            VECTOR(uint16_t, 16) l_873 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xF2D8L), 0xF2D8L), 0xF2D8L, 65535UL, 0xF2D8L, (VECTOR(uint16_t, 2))(65535UL, 0xF2D8L), (VECTOR(uint16_t, 2))(65535UL, 0xF2D8L), 65535UL, 0xF2D8L, 65535UL, 0xF2D8L);
            VECTOR(uint16_t, 8) l_892 = (VECTOR(uint16_t, 8))(0x8B78L, (VECTOR(uint16_t, 4))(0x8B78L, (VECTOR(uint16_t, 2))(0x8B78L, 65526UL), 65526UL), 65526UL, 0x8B78L, 65526UL);
            VECTOR(uint16_t, 16) l_894 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), 0UL), 0UL, 65535UL, 0UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), (VECTOR(uint16_t, 2))(65535UL, 0UL), 65535UL, 0UL, 65535UL, 0UL);
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                    l_790[i][j] = 0x2A2D55D7L;
            }
            for (p_1354->g_145 = 0; (p_1354->g_145 == 32); p_1354->g_145 = safe_add_func_int8_t_s_s(p_1354->g_145, 9))
            { /* block id: 282 */
                int32_t *l_744 = &p_1354->g_722.f1;
                int32_t l_785[5][9] = {{(-10L),0x02B80DAFL,7L,0x55F8F137L,0x02B80DAFL,0x55F8F137L,7L,0x02B80DAFL,(-10L)},{(-10L),0x02B80DAFL,7L,0x55F8F137L,0x02B80DAFL,0x55F8F137L,7L,0x02B80DAFL,(-10L)},{(-10L),0x02B80DAFL,7L,0x55F8F137L,0x02B80DAFL,0x55F8F137L,7L,0x02B80DAFL,(-10L)},{(-10L),0x02B80DAFL,7L,0x55F8F137L,0x02B80DAFL,0x55F8F137L,7L,0x02B80DAFL,(-10L)},{(-10L),0x02B80DAFL,7L,0x55F8F137L,0x02B80DAFL,0x55F8F137L,7L,0x02B80DAFL,(-10L)}};
                int i, j;
                (*l_599) = l_744;
                if (l_745)
                    break;
                for (p_28 = 0; (p_28 != 30); p_28++)
                { /* block id: 287 */
                    uint64_t l_750 = 18446744073709551606UL;
                    int32_t l_784 = 0x6378568CL;
                    int32_t l_786 = 0x224D81F8L;
                    int32_t l_787 = 0L;
                    int32_t l_789 = 0x4C6725CFL;
                    int32_t l_792 = 0x3598CFE4L;
                    int32_t l_793 = 0x0119CE31L;
                    uint32_t l_794 = 6UL;
                    if (l_572)
                        goto lbl_748;
                    (**p_1354->g_454) |= p_28;
                    if (l_749)
                    { /* block id: 290 */
                        --l_750;
                    }
                    else
                    { /* block id: 292 */
                        int32_t l_781 = 0x69299CB4L;
                        int32_t l_788[9] = {(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L)};
                        int i;
                        l_783 ^= (p_28 == ((((safe_rshift_func_int16_t_s_s((safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(0xBEL, 248UL)).odd, (safe_unary_minus_func_int16_t_s((safe_mul_func_int16_t_s_s(((safe_add_func_uint32_t_u_u((safe_add_func_int16_t_s_s(((void*)0 != l_764), (FAKE_DIVERGE(p_1354->global_0_offset, get_global_id(0), 10) , ((*l_573) = l_749)))), (safe_sub_func_uint8_t_u_u(((18446744073709551614UL < ((l_750 | (safe_lshift_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u((!p_1354->g_143), (safe_lshift_func_int16_t_s_u((safe_div_func_int32_t_s_s((**p_1354->g_460), (safe_div_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u(0xD516A7DAL, l_781)), p_1354->g_260.s7)))), 3)))), 12))) >= 0L)) | p_1354->g_67[1][3].f0), p_1354->g_62)))) ^ l_782), p_28)))))), 4)) != p_28) , 0x37L) > FAKE_DIVERGE(p_1354->local_1_offset, get_local_id(1), 10)));
                        (**p_1354->g_460) &= p_28;
                        ++l_794;
                    }
                    for (l_782 = (-16); (l_782 > 48); l_782 = safe_add_func_uint64_t_u_u(l_782, 1))
                    { /* block id: 300 */
                        uint16_t l_799 = 3UL;
                        if (l_750)
                            goto lbl_748;
                        ++l_799;
                    }
                }
            }
            if ((safe_unary_minus_func_uint32_t_u((safe_unary_minus_func_int16_t_s((((safe_mod_func_uint64_t_u_u(p_1354->g_441.f2, 18446744073709551612UL)) == l_749) , (safe_add_func_uint64_t_u_u(p_28, (safe_div_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((~(((void*)0 != &p_1354->g_185) , (p_28 && l_791))), p_28)), (-4L)))))))))))
            { /* block id: 306 */
                uint8_t *l_812 = (void*)0;
                uint8_t *l_813[9][7][4] = {{{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0}},{{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0}},{{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0}},{{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0}},{{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0}},{{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0}},{{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0}},{{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0}},{{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0},{(void*)0,&p_1354->g_140[5][4],&p_1354->g_140[5][4],(void*)0}}};
                int8_t *l_822 = (void*)0;
                int32_t l_830[10] = {0x46EDD0E8L,0x46EDD0E8L,0x46EDD0E8L,0x46EDD0E8L,0x46EDD0E8L,0x46EDD0E8L,0x46EDD0E8L,0x46EDD0E8L,0x46EDD0E8L,0x46EDD0E8L};
                int i, j, k;
                l_790[0][0] = ((VECTOR(int32_t, 4))((-10L), ((--p_1354->g_224.x) & (safe_rshift_func_int16_t_s_u(((((0x4D87L ^ (((((((safe_sub_func_int32_t_s_s((0xC332L ^ ((p_28 == ((p_28 <= (safe_mul_func_int8_t_s_s((p_1354->g_531.x = 0x79L), (((~(~l_823)) , l_824) == (*p_1354->g_657))))) | ((p_1354->g_221.s3 , l_825) == l_827))) != 2L)), FAKE_DIVERGE(p_1354->local_0_offset, get_local_id(0), 10))) >= 4294967286UL) , &p_1354->g_185) == l_829) , p_1354->g_19) == 1UL) < p_28)) >= l_830[7]) , p_28) < 0x7C7320C3L), l_783))), (-9L), 6L)).y;
            }
            else
            { /* block id: 310 */
                int32_t l_838 = (-1L);
                int16_t *l_847 = &p_1354->g_565.f1.f2;
                int16_t *l_848 = &p_1354->g_325.f2;
                int32_t *l_850 = &l_823;
                VECTOR(uint8_t, 2) l_885 = (VECTOR(uint8_t, 2))(0UL, 255UL);
                int32_t l_909 = 6L;
                int i;
                l_838 = (l_849[5] &= (l_791 = ((safe_lshift_func_int16_t_s_s((safe_add_func_int32_t_s_s(((void*)0 != l_835), (&p_1354->g_69 != (void*)0))), ((!((safe_lshift_func_uint16_t_u_u(l_838, 1)) && (safe_mod_func_int16_t_s_s((p_1354->g_841 , ((*l_848) &= ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))(0x2234L, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(l_842.yzyyzxwyxxxwyzzx)).s54 >= ((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))((p_1354->g_843 , l_844), ((((safe_mod_func_int16_t_s_s((!0x591CL), p_28)) & p_1354->g_221.s1) >= GROUP_DIVERGE(0, 1)) & 0x03344E6BL), 0L, 0x31L)), 0x40L, (-8L), 4L, (-6L))), ((VECTOR(uint8_t, 8))(251UL))))).s25))), 0x463CL, (-1L), p_28, 0x3E59L, 0x5FD0L)).odd >= ((VECTOR(int16_t, 4))(0x4C00L))))).hi))).yxyyyxyxyxyyyyyx, ((VECTOR(int16_t, 16))(0x440EL))))).sb0, ((VECTOR(int16_t, 2))(9L)), ((VECTOR(int16_t, 2))(0x559AL))))).odd)), (-1L))))) >= l_838))) < p_1354->g_399.f1)));
                l_850 = &l_838;
                if (p_28)
                    break;
                if ((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(18446744073709551609UL, 0x26B6F56697B8A05CL, 0xCD23168E74BCC794L, 0x1D02A4FBE91D2A46L)).w, ((safe_lshift_func_uint16_t_u_s(((*l_573) ^= p_28), ((((+(safe_div_func_int64_t_s_s((safe_lshift_func_int16_t_s_u((p_1354->g_340.f2 && ((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_859.xy)), 0xCD1823FA29468BA4L, 1UL)).ywywxzyw, (uint64_t)(((safe_lshift_func_int8_t_s_s((((~(0x24C1FE4307DB2133L | ((VECTOR(uint64_t, 4))(7UL, 18446744073709551608UL, 4UL, 0UL)).z)) != (((VECTOR(uint32_t, 2))(l_862.yx)).even & (safe_sub_func_int16_t_s_s((p_1354->g_865 , ((((safe_mul_func_int16_t_s_s(((*l_850) | p_28), ((VECTOR(int16_t, 16))(0x0B30L, (p_28 & (safe_rshift_func_int16_t_s_s((safe_unary_minus_func_int8_t_s((safe_div_func_uint64_t_u_u((((VECTOR(uint16_t, 8))((~((VECTOR(uint16_t, 2))(l_873.s63)).xyxxyyxy))).s6 && (0x9586L >= (((p_28 , p_28) != p_28) || p_1354->g_648.f0))), (*l_850))))), p_1354->g_492.f0.f1))), ((VECTOR(int16_t, 8))(0x0C68L)), (-3L), ((VECTOR(int16_t, 4))(9L)), (-3L))).sd)) <= p_1354->g_145) & p_1354->g_138.s1) , 0L)), 0x29ECL)))) ^ 0x0A7337BA8DB7B1CFL), p_1354->g_325.f2)) != 0UL) < p_1354->g_492.f0.f1)))).hi, (uint64_t)0x393FA7440C1B8C5FL))), 18446744073709551608UL, 0xA24FC613869C0754L, 0xFDD4979E6D1A9F6EL, 0x1BC4C785D84F0C5DL)).s0621235772474140 | ((VECTOR(uint64_t, 16))(0xC10F14807ACAD40EL))))).hi, ((VECTOR(uint64_t, 8))(18446744073709551607UL))))).s2), p_1354->g_224.w)), (*p_1354->g_292)))) , 0x4208L) <= 0L) >= 0xB061B2B8L))) , (**p_1354->g_684)))))
                { /* block id: 318 */
                    int8_t *l_878 = &p_1354->g_367;
                    int32_t l_879 = (-5L);
                    uint32_t l_886 = 0x31CEDFCEL;
                    int64_t l_887 = 0L;
                    VECTOR(uint16_t, 4) l_893 = (VECTOR(uint16_t, 4))(0xA18FL, (VECTOR(uint16_t, 2))(0xA18FL, 0x6766L), 0x6766L);
                    VECTOR(uint16_t, 8) l_895 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xB744L), 0xB744L), 0xB744L, 1UL, 0xB744L);
                    int i;
                    l_790[0][0] &= ((safe_add_func_int8_t_s_s(((*l_850) = ((safe_rshift_func_int8_t_s_u(((*l_878) &= p_1354->g_648.f1), 1)) ^ ((l_879 | (GROUP_DIVERGE(2, 1) <= (safe_add_func_int32_t_s_s(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(p_1354->g_882.xxxz)).lo && ((VECTOR(int32_t, 16))(0L, ((*l_850) <= ((GROUP_DIVERGE(1, 1) , 0L) | (((-1L) && (safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(255UL, p_28, ((VECTOR(uint8_t, 2))(l_885.xy)), p_28, (0x49L == (l_879 || l_886)), p_1354->g_436.f1, ((VECTOR(uint8_t, 8))(254UL)), 255UL)).sb, p_28))) != p_1354->g_399.f1))), ((VECTOR(int32_t, 2))((-9L))), l_887, (-9L), (-1L), ((VECTOR(int32_t, 4))(0x6D97EF1DL)), p_28, p_28, ((VECTOR(int32_t, 2))(0x3A9F82C7L)), (-4L))).s7f))).odd, p_28)))) & (*l_850)))), p_28)) > 0x7B3A058E10968349L);
                    for (l_782 = 0; (l_782 >= 54); l_782 = safe_add_func_uint64_t_u_u(l_782, 8))
                    { /* block id: 324 */
                        int16_t l_890 = 0L;
                        uint64_t *l_906 = &l_602;
                        int32_t l_907 = 0x04FF308CL;
                        if (l_890)
                            break;
                        (*l_850) = (l_909 &= (safe_unary_minus_func_uint8_t_u((((((&p_1354->g_123 == ((((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 2))(l_892.s47)).xxyyyyyyxyyyxxyy, ((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 8))(l_893.wywzzzwz)).s72))), ((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 2))(0x7F8DL, 6UL)).xxxx, ((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 8))(l_894.s91b8bd0e)).lo, ((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 8))(l_895.s26361526)).s0065721730465154, (uint16_t)((p_1354->g_908 ^= ((l_890 , ((l_907 = ((l_879 ^= ((~p_28) || ((safe_div_func_uint8_t_u_u(p_1354->g_609, p_1354->g_340.f3)) != ((p_1354->g_138.s1 > (safe_mod_func_int16_t_s_s(p_28, (safe_mod_func_uint16_t_u_u(65531UL, ((((*l_906) = p_1354->g_436.f2) == (*l_850)) || p_28)))))) < p_28)))) != 0x39972FB6L)) > (-4L))) || 0xD888L)) , p_1354->g_436.f3)))).s7e07, ((VECTOR(uint16_t, 4))(0x32E0L)), ((VECTOR(uint16_t, 4))(65535UL))))))))))).odd))).xyxyxyyyyxyyyyxy))).sb || FAKE_DIVERGE(p_1354->global_0_offset, get_global_id(0), 10)) , l_878)) & 0x479131A663C2DEEDL) , p_28) & p_28) , 251UL))));
                    }
                    for (l_745 = (-15); (l_745 != 2); l_745 = safe_add_func_uint32_t_u_u(l_745, 1))
                    { /* block id: 335 */
                        if (l_895.s4)
                            break;
                        return l_893.x;
                    }
                }
                else
                { /* block id: 339 */
                    if (p_28)
                        break;
                    return p_28;
                }
            }
            p_1354->g_436.f1 ^= ((VECTOR(int32_t, 2))(p_1354->g_912.yy)).lo;
        }
        (*l_599) = &l_791;
    }
    (*l_599) = (void*)0;
    return p_28;
}


/* ------------------------------------------ */
/* 
 * reads : p_1354->g_19 p_1354->g_63 p_1354->g_68 p_1354->g_67.f0 p_1354->g_55 p_1354->g_62 p_1354->g_92 p_1354->g_82 p_1354->g_71 p_1354->g_131 p_1354->g_138 p_1354->g_139 p_1354->g_145 p_1354->g_143 p_1354->g_219 p_1354->g_221 p_1354->g_140 p_1354->g_224 p_1354->g_226 p_1354->g_243 p_1354->g_253 p_1354->g_255 p_1354->g_260 p_1354->g_269 p_1354->g_270 p_1354->g_290 p_1354->g_439 p_1354->g_440 p_1354->g_441 p_1354->g_69 p_1354->g_454 p_1354->g_438 p_1354->g_398.f1 p_1354->g_338 p_1354->g_460 p_1354->g_364.f0 p_1354->g_291 p_1354->g_292 p_1354->g_340.f2 p_1354->g_349 p_1354->g_531 p_1354->g_492.f0.f0 p_1354->g_563 p_1354->g_565
 * writes: p_1354->g_55 p_1354->g_69 p_1354->g_71 p_1354->g_67.f1.f2 p_1354->g_82 p_1354->g_67.f1.f1 p_1354->g_123 p_1354->g_140 p_1354->g_143 p_1354->g_63.f1 p_1354->g_243 p_1354->g_221 p_1354->g_139 p_1354->g_291 p_1354->g_398 p_1354->g_441 p_1354->g_67.f0
 */
union U2  func_29(int8_t  p_30, struct S3 * p_1354)
{ /* block id: 7 */
    int64_t *l_54 = &p_1354->g_55;
    int64_t *l_61 = &p_1354->g_62;
    int64_t **l_60 = &l_61;
    int64_t *l_64 = (void*)0;
    int32_t l_65 = 0x35CFE74DL;
    int32_t l_72 = 0x7BB1CA98L;
    int32_t l_101 = 1L;
    int32_t *l_102 = &p_1354->g_67[1][3].f1.f1;
    int32_t l_564 = (-9L);
    l_564 ^= func_32(((*l_102) = (0xC87A9B65L ^ (l_101 ^= func_36(((p_30 == ((p_1354->g_67[1][3].f1.f1 = ((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(func_42((safe_lshift_func_int16_t_s_s((l_65 = (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 4))(((0x7283A38CL >= p_30) , ((VECTOR(int8_t, 8))((((safe_div_func_int64_t_s_s(((*l_54) = p_1354->g_19), ((p_1354->g_71 = func_56(((*l_60) = l_54), (p_1354->g_63[1][0] , ((void*)0 != l_64)), l_65, p_1354)) , l_65))) && l_65) > p_30), 0x52L, 0x2DL, ((VECTOR(int8_t, 2))(0x02L)), ((VECTOR(int8_t, 2))(1L)), 0x28L)).s5), 8L, 3L, (-3L))).z, 0xCFL))), 12)), p_1354->g_67[1][3].f0, l_72, p_30, l_72, p_1354), 7L, 0x248679C0L, 0L)).z, (-1L), 0x7F04DBB3L, p_30, ((VECTOR(int32_t, 4))(0x16AC63FEL)), (-1L), 0x1B86155BL, p_30, ((VECTOR(int32_t, 2))(6L)), (-3L), 0x2A41409BL, 0x571AF1E1L)).even, ((VECTOR(int32_t, 8))(0x2A352EE0L))))).s6) & p_30)) <= p_1354->g_62), l_72, l_72, p_30, l_72, p_1354)))), p_30, p_30, p_1354);
    return p_1354->g_565;
}


/* ------------------------------------------ */
/* 
 * reads : p_1354->g_71 p_1354->g_131 p_1354->g_138 p_1354->g_139 p_1354->g_62 p_1354->g_67.f0 p_1354->g_145 p_1354->g_82 p_1354->g_19 p_1354->g_143 p_1354->g_219 p_1354->g_221 p_1354->g_140 p_1354->g_92 p_1354->g_224 p_1354->g_226 p_1354->g_243 p_1354->g_253 p_1354->g_255 p_1354->g_260 p_1354->g_269 p_1354->g_270 p_1354->g_290 p_1354->g_63.f3 p_1354->g_439 p_1354->g_440 p_1354->g_441 p_1354->g_69 p_1354->g_454 p_1354->g_438 p_1354->g_398.f1 p_1354->g_338 p_1354->g_460 p_1354->g_364.f0 p_1354->g_291 p_1354->g_292 p_1354->g_340.f2 p_1354->g_349 p_1354->g_531 p_1354->g_492.f0.f0 p_1354->g_563
 * writes: p_1354->g_71 p_1354->g_123 p_1354->g_140 p_1354->g_143 p_1354->g_67.f1.f1 p_1354->g_63.f1 p_1354->g_243 p_1354->g_221 p_1354->g_139 p_1354->g_291 p_1354->g_398 p_1354->g_69 p_1354->g_82 p_1354->g_441 p_1354->g_67.f0 p_1354->g_55
 */
int32_t  func_32(int32_t  p_33, uint64_t  p_34, int16_t  p_35, struct S3 * p_1354)
{ /* block id: 33 */
    uint32_t *l_117[10] = {(void*)0,&p_1354->g_71,(void*)0,(void*)0,&p_1354->g_71,(void*)0,(void*)0,&p_1354->g_71,(void*)0,(void*)0};
    int32_t l_118 = 0x2AE737D7L;
    int8_t *l_121 = (void*)0;
    int8_t *l_122 = &p_1354->g_123;
    VECTOR(int16_t, 2) l_130 = (VECTOR(int16_t, 2))((-1L), 0x5AE1L);
    int64_t *l_141 = &p_1354->g_62;
    uint8_t *l_142 = &p_1354->g_143;
    uint8_t *l_144[7][5][7] = {{{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145}},{{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145}},{{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145}},{{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145}},{{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145}},{{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145}},{{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145},{&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145,&p_1354->g_145}}};
    int8_t l_157 = 0x6CL;
    VECTOR(int32_t, 4) l_164 = (VECTOR(int32_t, 4))(0x6FB1311AL, (VECTOR(int32_t, 2))(0x6FB1311AL, 0x033BB994L), 0x033BB994L);
    int32_t l_191 = 0x2CB20AC4L;
    uint32_t l_197 = 8UL;
    VECTOR(int32_t, 2) l_198 = (VECTOR(int32_t, 2))(0x02DDD63BL, 0x34B86BEEL);
    VECTOR(int32_t, 4) l_199 = (VECTOR(int32_t, 4))(0x1646E610L, (VECTOR(int32_t, 2))(0x1646E610L, 0x7C6B8560L), 0x7C6B8560L);
    VECTOR(int8_t, 2) l_214 = (VECTOR(int8_t, 2))(0x40L, 1L);
    VECTOR(int8_t, 2) l_215 = (VECTOR(int8_t, 2))(1L, 0x17L);
    VECTOR(int8_t, 4) l_216 = (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 2L), 2L);
    VECTOR(int8_t, 8) l_217 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
    VECTOR(int8_t, 8) l_218 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x31L), 0x31L), 0x31L, (-1L), 0x31L);
    int64_t *l_223 = &p_1354->g_55;
    VECTOR(int8_t, 8) l_225 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x22L), 0x22L), 0x22L, 1L, 0x22L);
    uint64_t *l_237 = (void*)0;
    uint16_t *l_242 = &p_1354->g_243;
    uint32_t *l_248 = &l_197;
    VECTOR(int16_t, 8) l_251 = (VECTOR(int16_t, 8))(0x5811L, (VECTOR(int16_t, 4))(0x5811L, (VECTOR(int16_t, 2))(0x5811L, 0x2DB6L), 0x2DB6L), 0x2DB6L, 0x5811L, 0x2DB6L);
    VECTOR(int8_t, 8) l_252 = (VECTOR(int8_t, 8))(0x23L, (VECTOR(int8_t, 4))(0x23L, (VECTOR(int8_t, 2))(0x23L, 0x48L), 0x48L), 0x48L, 0x23L, 0x48L);
    VECTOR(int8_t, 2) l_254 = (VECTOR(int8_t, 2))(3L, 4L);
    VECTOR(int8_t, 4) l_256 = (VECTOR(int8_t, 4))(0x53L, (VECTOR(int8_t, 2))(0x53L, 0x79L), 0x79L);
    VECTOR(int8_t, 8) l_257 = (VECTOR(int8_t, 8))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0x72L), 0x72L), 0x72L, 9L, 0x72L);
    VECTOR(int8_t, 2) l_258 = (VECTOR(int8_t, 2))(0L, 0x0CL);
    VECTOR(int8_t, 4) l_259 = (VECTOR(int8_t, 4))(0x01L, (VECTOR(int8_t, 2))(0x01L, 3L), 3L);
    uint32_t **l_261 = &l_117[3];
    uint32_t *l_262 = &p_1354->g_71;
    int32_t *l_263 = (void*)0;
    VECTOR(int8_t, 4) l_272 = (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 9L), 9L);
    uint8_t l_283 = 5UL;
    VECTOR(int32_t, 8) l_366 = (VECTOR(int32_t, 8))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x6464B5DFL), 0x6464B5DFL), 0x6464B5DFL, 8L, 0x6464B5DFL);
    uint64_t l_411 = 0x719FF0E324809ED5L;
    VECTOR(int32_t, 8) l_427 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x573FA289L), 0x573FA289L), 0x573FA289L, (-1L), 0x573FA289L);
    int32_t l_480 = 0x29C9FA64L;
    uint8_t l_481[4] = {0x8DL,0x8DL,0x8DL,0x8DL};
    VECTOR(uint64_t, 2) l_495 = (VECTOR(uint64_t, 2))(0xA99C62A6238A3AFBL, 0xC63D13CB6C18C555L);
    int32_t l_539 = (-2L);
    uint32_t l_557 = 0UL;
    int i, j, k;
    if ((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 2))(0xE1L, 0xF2L))))).xyyyxxyxyyxxyyyx, (uint8_t)(safe_lshift_func_uint8_t_u_s((l_118 = (((safe_sub_func_uint8_t_u_u(((p_34 && ((safe_mul_func_uint8_t_u_u(((*l_142) = (((safe_add_func_int32_t_s_s(((p_1354->g_140[6][2] = (safe_rshift_func_int8_t_s_s(((((--p_1354->g_71) , (((p_35 ^ (((*l_122) = l_118) & (safe_rshift_func_int8_t_s_u((safe_mul_func_int8_t_s_s((safe_mod_func_int8_t_s_s(((((0x39B47A1F191750CCL <= (-1L)) >= 0x7AD419A621B44B64L) == (+((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(l_130.yyxxyxyx)).s40 > ((VECTOR(int16_t, 2))(p_1354->g_131.s3b))))).hi)) ^ p_34), ((safe_sub_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_s(p_34, 2)) ^ ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 2))(0xB13CA659L, 0x8809466FL)).xxxxxyyyyyxxxxyy, ((VECTOR(uint32_t, 4))(p_1354->g_138.s0723)).yyzzywyyyyxyyywx))).hi + ((VECTOR(uint64_t, 8))(p_1354->g_139.wwxxzwxz))))).s2), l_130.x)) , l_130.x))), 7L)), l_118)))) && p_35) , &p_1354->g_62)) == (void*)0) || 0x0FF0B4F3L), 2))) != 0UL), 0xA1CF38B8L)) , l_141) != l_141)), p_1354->g_62)) < 0UL)) || l_130.y), l_118)) == p_33) != l_130.x)), 2))))).sde + ((VECTOR(uint8_t, 2))(253UL))))).even != 0L))
    { /* block id: 39 */
        VECTOR(int8_t, 4) l_146 = (VECTOR(int8_t, 4))(0x39L, (VECTOR(int8_t, 2))(0x39L, 0x3DL), 0x3DL);
        int32_t *l_158 = &p_1354->g_67[1][3].f1.f1;
        int32_t *l_159 = (void*)0;
        int32_t *l_160[7][6] = {{(void*)0,&l_118,&l_118,(void*)0,(void*)0,&l_118},{(void*)0,&l_118,&l_118,(void*)0,(void*)0,&l_118},{(void*)0,&l_118,&l_118,(void*)0,(void*)0,&l_118},{(void*)0,&l_118,&l_118,(void*)0,(void*)0,&l_118},{(void*)0,&l_118,&l_118,(void*)0,(void*)0,&l_118},{(void*)0,&l_118,&l_118,(void*)0,(void*)0,&l_118},{(void*)0,&l_118,&l_118,(void*)0,(void*)0,&l_118}};
        int i, j;
        p_1354->g_63[1][0].f1 = ((VECTOR(int32_t, 16))(((*l_158) = (((VECTOR(int8_t, 8))(l_146.zyxzxyww)).s2 & ((((safe_lshift_func_int8_t_s_s(l_146.w, 1)) && ((p_33 = (safe_sub_func_int32_t_s_s(0L, ((safe_add_func_int16_t_s_s(p_1354->g_67[1][3].f0, ((p_33 , (p_35 || ((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 8))((safe_add_func_int8_t_s_s((safe_sub_func_uint16_t_u_u(l_146.z, p_1354->g_145)), ((18446744073709551608UL <= 0x350F492790C0A41BL) , 0xD2L))), ((VECTOR(uint64_t, 4))(4UL)), 0x9D059520BB0CEBAAL, 0x4B22FE7AF752ECEAL, 0xE5138A19F7B7F5E4L)).s66, ((VECTOR(uint64_t, 2))(0xC2BD87208DD124E3L)), ((VECTOR(uint64_t, 2))(0x5E967DCBB3C6450AL))))).odd)) == l_157))) == p_33)))) >= l_146.y)) | p_35) < GROUP_DIVERGE(0, 1)))), p_33, ((VECTOR(int32_t, 2))((-1L))), (*p_1354->g_82), 0x6CC6D066L, ((VECTOR(int32_t, 8))(8L)), 0x14F7B99CL, (-1L))).s2;
    }
    else
    { /* block id: 43 */
        int32_t *l_161 = &l_118;
        int32_t **l_163 = &l_161;
        VECTOR(int32_t, 8) l_181 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 3L), 3L), 3L, (-1L), 3L);
        VECTOR(int32_t, 8) l_184 = (VECTOR(int32_t, 8))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, (-7L)), (-7L)), (-7L), 7L, (-7L));
        int32_t **l_188[1][1];
        int32_t ***l_187 = &l_188[0][0];
        uint32_t *l_220 = &l_197;
        uint8_t *l_222[6] = {&p_1354->g_140[5][4],&p_1354->g_140[5][4],&p_1354->g_140[5][4],&p_1354->g_140[5][4],&p_1354->g_140[5][4],&p_1354->g_140[5][4]};
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_188[i][j] = (void*)0;
        }
        (*l_163) = l_161;
        if (((VECTOR(int32_t, 4))(l_164.zywx)).x)
        { /* block id: 45 */
            VECTOR(int32_t, 2) l_180 = (VECTOR(int32_t, 2))(1L, (-3L));
            VECTOR(int32_t, 8) l_182 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x23D05821L), 0x23D05821L), 0x23D05821L, (-1L), 0x23D05821L);
            int i;
            for (l_118 = 26; (l_118 == (-3)); --l_118)
            { /* block id: 48 */
                uint32_t l_174 = 0x285C2981L;
                int32_t ***l_179 = &l_163;
                VECTOR(int32_t, 2) l_183 = (VECTOR(int32_t, 2))(0x0A6EAA2CL, 0x162B6702L);
                int32_t ****l_186 = &p_1354->g_185;
                uint64_t *l_189 = &p_1354->g_190;
                int i;
                if (p_34)
                    break;
            }
        }
        else
        { /* block id: 69 */
            uint64_t l_192[10][7][1] = {{{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L}},{{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L}},{{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L}},{{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L}},{{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L}},{{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L}},{{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L}},{{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L}},{{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L}},{{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L},{0x268EDA36ACC48969L}}};
            int i, j, k;
            l_192[0][6][0]--;
        }
        (*l_161) = (safe_lshift_func_uint16_t_u_s(((((((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(0x64833E0D82929E3FL, l_197, 0x32C9FA7D3C94311DL, 1L)), 0x4B37AEE3016BB01CL, 1L, ((((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 16))(l_198.yyyxyyyyxxxyyxxy)), ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 16))(l_199.wywxywwzwwwzyxyw)).odd, (int32_t)p_1354->g_131.s1, (int32_t)(safe_sub_func_int32_t_s_s((safe_div_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((*l_142)++), p_33)), (-1L))), (safe_add_func_int8_t_s_s((((safe_rshift_func_uint8_t_u_u((p_33 ^ (safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(l_214.yxyxxyxy)).s4515304431550531 > ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(l_215.xyyxyxyx)).lo && ((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 4))(l_216.zzzx)).hi, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 4))(l_217.s2204)).yzxzyzzxxxzywwyy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))((-2L), 4L)), 0x1EL, ((VECTOR(int8_t, 2))(l_218.s35)).even, 0x3AL, 0x1EL, 1L, 0x3FL)).s7022036451723070))), ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 4))(p_1354->g_219.xyyx)), ((VECTOR(int8_t, 4))(0x3CL, 0x5CL, 0x28L, 5L))))).wxwywwxy | ((VECTOR(int8_t, 4))((!(((*l_220) &= GROUP_DIVERGE(2, 1)) | (p_35 & (((VECTOR(int32_t, 16))(p_1354->g_221.s7010067060310537)).s1 <= ((8UL ^ (((l_144[6][2][6] == l_222[1]) , &p_1354->g_62) != l_223)) < 255UL))))), 2L, 0x23L, (-1L))).yzwwxwxy))).odd, (int8_t)p_1354->g_19))).even, ((VECTOR(int8_t, 2))(0x2AL))))).xxxx && ((VECTOR(int8_t, 4))(0L))))).hi && ((VECTOR(int8_t, 2))(0x64L))))), ((VECTOR(int8_t, 2))(0x58L)), 0x30L, p_1354->g_140[6][2], 0x34L, 0x63L)).s2026321255406247 && ((VECTOR(int8_t, 16))((-1L)))))) || ((VECTOR(int8_t, 16))(0x69L))))).lo != ((VECTOR(int8_t, 8))(8L))))).even < ((VECTOR(int8_t, 4))(1L))))).odd && ((VECTOR(int8_t, 2))(0L))))).xyyxxxyyxyyyyxyy))).s56))).yxxx, ((VECTOR(int8_t, 4))(2L))))).zzxwwwzz, (int8_t)p_33, (int8_t)0x42L))).even && ((VECTOR(int8_t, 4))(0x67L))))).lo))).yyyyyyyxxyyxxyyy, ((VECTOR(int8_t, 16))(0x5DL))))), ((VECTOR(int8_t, 16))(0L))))).sde96))).zywyyzxyzyzyywxz))).sab, ((VECTOR(int8_t, 2))((-1L)))))).lo, p_34))), p_34)) != (*l_161)) ^ GROUP_DIVERGE(1, 1)), FAKE_DIVERGE(p_1354->group_1_offset, get_group_id(1), 10)))))))), ((VECTOR(int32_t, 8))(1L)), ((VECTOR(int32_t, 8))((-2L)))))).s2746172066006056))).s9 , 0x398880EEL) >= FAKE_DIVERGE(p_1354->local_2_offset, get_local_id(2), 10)), 0x63F64EC95441F103L, ((VECTOR(int64_t, 4))(0L)), p_1354->g_221.s1, 4L, 0x457B24ACD0642E42L, 0x23CA59413721B999L)).s90 && ((VECTOR(int64_t, 2))(0x6AB4E013F2B214F6L))))) && ((VECTOR(int64_t, 2))(8L))))).xxyy && ((VECTOR(int64_t, 4))((-1L)))))).yxzwwzzx == ((VECTOR(int64_t, 8))(0x2F3E0FC458331AFDL))))).even, ((VECTOR(int64_t, 4))(0x6921B34851EF8135L)), ((VECTOR(int64_t, 4))(1L))))).y , 0x6C0EE888L) | l_164.z) != p_1354->g_138.s1) < p_33), 15));
    }
    if (((p_1354->g_92.y == ((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 16))((((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),VECTOR(uint8_t, 4),((VECTOR(uint8_t, 4))(p_1354->g_224.ywzy)), ((VECTOR(uint8_t, 2))(abs(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(l_225.s67)).yxxyyyyx < ((VECTOR(int8_t, 2))(p_1354->g_226.s93)).xxyyxyxx))).s27))).yxxx, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))((~((VECTOR(uint8_t, 4))((safe_sub_func_int32_t_s_s((p_1354->g_221.s5 &= ((-1L) < (safe_sub_func_uint8_t_u_u((((*l_261) = ((safe_mul_func_uint8_t_u_u((safe_div_func_uint64_t_u_u((p_34--), ((safe_lshift_func_uint16_t_u_u(((*l_242)++), (p_35 >= (((*l_142)++) & ((~(((*l_248) = p_33) & (((safe_rshift_func_uint16_t_u_u((0x523CL <= ((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_251.s01271201)), 0L, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 8))(l_252.s55524206)).s37))).yyxy))).wzxzyzww, ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(0x7CL, 0x7BL, (-1L), 8L)), ((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 16))(1L, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(p_1354->g_253.yyyxxxyx)).s55 <= ((VECTOR(int8_t, 16))(l_254.xxyyyxxyxyxxxxyx)).s8d))), ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))(p_1354->g_255.zzwxyzyx)).s45, (int8_t)0x57L))), ((VECTOR(int8_t, 2))(l_256.wz)).lo, 0x12L, ((VECTOR(int8_t, 2))(0x30L, (-7L))), ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(l_257.s52741620)) ^ ((VECTOR(int8_t, 16))(l_258.yxyyxxxxyyxyxxyx)).odd))).s5244606214450110 && ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(l_259.wzwxwyzxwwyxzyxz)).s982e < ((VECTOR(int8_t, 16))(p_1354->g_260.se5370de612a070a5)).s3ddf))).odd | ((VECTOR(int8_t, 8))((l_217.s0 & p_1354->g_253.y), 0x09L, 0x68L, (GROUP_DIVERGE(0, 1) , (p_1354->g_260.s0 , 0x51L)), 0x76L, 2L, 0x7BL, 0x50L)).s23))).xxyxxyxxxxxyxxyy))).lo, ((VECTOR(int8_t, 8))(8L))))).hi && ((VECTOR(int8_t, 4))(0x29L))))), 0x3EL, 0x4BL, 0x76L)).even, ((VECTOR(int8_t, 8))((-5L)))))), 3L, l_256.w, 0x33L, ((VECTOR(int8_t, 4))(5L)), 7L)).scd61 | ((VECTOR(int8_t, 4))(6L))))) >= ((VECTOR(int8_t, 4))(0x4BL))))), ((VECTOR(int8_t, 4))(1L))))), ((VECTOR(int8_t, 4))((-1L)))))).hi, ((VECTOR(int8_t, 2))(0x5CL))))).xyyxxxxx, ((VECTOR(int8_t, 8))((-1L))), ((VECTOR(int8_t, 8))((-3L)))))).s56, ((VECTOR(int8_t, 2))(1L)), ((VECTOR(int8_t, 2))((-1L)))))).xxxyyyyy))).s3243450612624715, ((VECTOR(int8_t, 16))(8L)), ((VECTOR(int8_t, 16))(6L))))), ((VECTOR(uint8_t, 16))(7UL))))).s2c < ((VECTOR(int16_t, 2))(0x17D4L))))), ((VECTOR(int16_t, 2))((-1L))), 0x12E2L, (-1L), 1L)), ((VECTOR(int16_t, 16))(1L))))).s7), p_35)) > l_259.w) , p_1354->g_253.y))) >= l_214.x))))) & p_1354->g_139.x))), 0x7CL)) , l_117[1])) == l_262), 7L)))), p_1354->g_255.x)), ((VECTOR(uint8_t, 2))(0UL)), 0x3DL)).xxywwzyxwwxzxwyw))).even + ((VECTOR(uint8_t, 8))(0x71L))))).s25, ((VECTOR(uint8_t, 2))(0xD1L))))).yyyx))).even, ((VECTOR(uint8_t, 2))(0x7BL))))).xxyx, ((VECTOR(uint8_t, 4))(0x85L))))).wwzwywwz, ((VECTOR(uint8_t, 8))(0UL)), ((VECTOR(uint8_t, 8))(0x4DL))))).s3 ^ p_1354->g_224.w), 0x17AAAFD0L, ((VECTOR(uint32_t, 2))(3UL)), p_34, ((VECTOR(uint32_t, 8))(4294967290UL)), p_34, 4294967289UL, 0xDB70A726L)) ^ ((VECTOR(uint32_t, 16))(0UL))))).s8) && FAKE_DIVERGE(p_1354->global_2_offset, get_global_id(2), 10)))
    { /* block id: 82 */
        VECTOR(int16_t, 4) l_268 = (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 1L), 1L);
        VECTOR(int8_t, 4) l_271 = (VECTOR(int8_t, 4))(0x66L, (VECTOR(int8_t, 2))(0x66L, 9L), 9L);
        uint8_t **l_281 = &l_142;
        uint32_t **l_282 = &l_117[1];
        uint64_t *l_284[2];
        int32_t *l_285 = &p_1354->g_67[1][3].f1.f1;
        int32_t *l_286 = &p_1354->g_67[1][3].f1.f1;
        int32_t *l_287[10][6][4] = {{{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191}},{{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191}},{{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191}},{{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191}},{{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191}},{{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191}},{{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191}},{{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191}},{{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191}},{{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191},{&p_1354->g_19,&p_1354->g_19,&p_1354->g_19,&l_191}}};
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_284[i] = (void*)0;
        l_191 &= (safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_1354->global_1_offset, get_global_id(1), 10), (safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(l_268.zyyw)).xzyxxwxx != ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))(p_1354->g_269.s96)).xyxyxyyx || ((VECTOR(int16_t, 2))((-8L), 0x7B60L)).yxyyyxyx))).s1373536203326520, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))(p_1354->g_270.s65)).xyyxxyyy > ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))((!((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 16))(l_271.yzxzzxwxywyyxzzw)).odd, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_272.yzwx)), (safe_rshift_func_uint8_t_u_u((0xF3L < ((*l_122) = (safe_mod_func_int64_t_s_s((p_1354->g_145 && GROUP_DIVERGE(1, 1)), p_33)))), 6)), 0x40L, 1L, 0x2EL)), ((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 4))(0x36L, ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 16))(8L, (((p_34 || (p_1354->g_139.x = (((p_35 | (l_144[0][0][6] == ((*l_281) = &p_1354->g_143))) , (p_34 & (&l_262 == l_282))) == l_283))) , p_1354->g_260.s8) | 0UL), p_1354->g_255.z, l_268.y, p_1354->g_255.y, ((VECTOR(int8_t, 4))((-7L))), ((VECTOR(int8_t, 2))(0x28L)), 1L, p_34, ((VECTOR(int8_t, 2))(0x5AL)), (-5L))).se2, ((VECTOR(int8_t, 2))((-8L)))))), (-4L))).xwwzzwzyyxxwzwxy, (int8_t)l_268.y))).s944d, ((VECTOR(int8_t, 4))(0L)), ((VECTOR(int8_t, 4))(0x5DL))))).wyzxzzxz))) && ((VECTOR(int8_t, 8))(2L))))).s6653437521054255))).lo && ((VECTOR(int8_t, 8))(1L))))).s0530111620602552, ((VECTOR(uint8_t, 16))(0x91L))))).sad60 <= ((VECTOR(int16_t, 4))(1L))))).wyywyxzx <= ((VECTOR(int16_t, 8))(0x0792L)))))))).s4533034013207237))).even && ((VECTOR(int16_t, 8))(0x2CD0L))))).s75 && ((VECTOR(int16_t, 2))(1L))))).yyyyxyxx))).s4, l_268.y))));
        return p_35;
    }
    else
    { /* block id: 88 */
        VECTOR(uint64_t, 4) l_302 = (VECTOR(uint64_t, 4))(0x6F16D85A1D1B10EDL, (VECTOR(uint64_t, 2))(0x6F16D85A1D1B10EDL, 0x894548E907C6F90BL), 0x894548E907C6F90BL);
        int32_t l_303[3][7] = {{9L,0x5D3DF351L,0x6E8750D9L,0L,0x5D3DF351L,0L,0x6E8750D9L},{9L,0x5D3DF351L,0x6E8750D9L,0L,0x5D3DF351L,0L,0x6E8750D9L},{9L,0x5D3DF351L,0x6E8750D9L,0L,0x5D3DF351L,0L,0x6E8750D9L}};
        VECTOR(int32_t, 2) l_319 = (VECTOR(int32_t, 2))(1L, (-1L));
        int32_t *l_337[10][10] = {{&l_118,&l_191,&l_191,&l_191,&l_118,&l_118,&l_191,&l_191,&l_191,&l_118},{&l_118,&l_191,&l_191,&l_191,&l_118,&l_118,&l_191,&l_191,&l_191,&l_118},{&l_118,&l_191,&l_191,&l_191,&l_118,&l_118,&l_191,&l_191,&l_191,&l_118},{&l_118,&l_191,&l_191,&l_191,&l_118,&l_118,&l_191,&l_191,&l_191,&l_118},{&l_118,&l_191,&l_191,&l_191,&l_118,&l_118,&l_191,&l_191,&l_191,&l_118},{&l_118,&l_191,&l_191,&l_191,&l_118,&l_118,&l_191,&l_191,&l_191,&l_118},{&l_118,&l_191,&l_191,&l_191,&l_118,&l_118,&l_191,&l_191,&l_191,&l_118},{&l_118,&l_191,&l_191,&l_191,&l_118,&l_118,&l_191,&l_191,&l_191,&l_118},{&l_118,&l_191,&l_191,&l_191,&l_118,&l_118,&l_191,&l_191,&l_191,&l_118},{&l_118,&l_191,&l_191,&l_191,&l_118,&l_118,&l_191,&l_191,&l_191,&l_118}};
        VECTOR(uint16_t, 8) l_353 = (VECTOR(uint16_t, 8))(0xE98AL, (VECTOR(uint16_t, 4))(0xE98AL, (VECTOR(uint16_t, 2))(0xE98AL, 65533UL), 65533UL), 65533UL, 0xE98AL, 65533UL);
        int8_t l_401 = 0L;
        int32_t l_403 = (-1L);
        VECTOR(int32_t, 2) l_426 = (VECTOR(int32_t, 2))(0x4AB2FC0CL, 0x2311C290L);
        union U2 *l_545 = &p_1354->g_67[2][1];
        uint64_t **l_550 = &l_237;
        uint64_t **l_558 = (void*)0;
        uint64_t *l_560 = &l_411;
        uint64_t **l_559 = &l_560;
        int i, j;
        if ((~0x0BE4A081L))
        { /* block id: 89 */
            for (l_197 = 0; (l_197 >= 3); l_197 = safe_add_func_uint32_t_u_u(l_197, 2))
            { /* block id: 92 */
                (*p_1354->g_290) = &l_141;
            }
            return p_35;
        }
        else
        { /* block id: 96 */
            int64_t l_295 = 3L;
            uint32_t l_308 = 0xB1DC9098L;
            VECTOR(int8_t, 8) l_341 = (VECTOR(int8_t, 8))(0x4AL, (VECTOR(int8_t, 4))(0x4AL, (VECTOR(int8_t, 2))(0x4AL, 0x4EL), 0x4EL), 0x4EL, 0x4AL, 0x4EL);
            uint32_t **l_360 = &l_117[8];
            int32_t l_371 = 0L;
            int32_t l_374[9][1][6] = {{{0x761073AFL,0x3A716417L,0x1803213DL,0x1FB2A024L,0x2D1CF9E4L,0x761073AFL}},{{0x761073AFL,0x3A716417L,0x1803213DL,0x1FB2A024L,0x2D1CF9E4L,0x761073AFL}},{{0x761073AFL,0x3A716417L,0x1803213DL,0x1FB2A024L,0x2D1CF9E4L,0x761073AFL}},{{0x761073AFL,0x3A716417L,0x1803213DL,0x1FB2A024L,0x2D1CF9E4L,0x761073AFL}},{{0x761073AFL,0x3A716417L,0x1803213DL,0x1FB2A024L,0x2D1CF9E4L,0x761073AFL}},{{0x761073AFL,0x3A716417L,0x1803213DL,0x1FB2A024L,0x2D1CF9E4L,0x761073AFL}},{{0x761073AFL,0x3A716417L,0x1803213DL,0x1FB2A024L,0x2D1CF9E4L,0x761073AFL}},{{0x761073AFL,0x3A716417L,0x1803213DL,0x1FB2A024L,0x2D1CF9E4L,0x761073AFL}},{{0x761073AFL,0x3A716417L,0x1803213DL,0x1FB2A024L,0x2D1CF9E4L,0x761073AFL}}};
            union U2 **l_432 = &p_1354->g_69;
            VECTOR(uint32_t, 4) l_444 = (VECTOR(uint32_t, 4))(0x006F3508L, (VECTOR(uint32_t, 2))(0x006F3508L, 0xD9C2F5D5L), 0xD9C2F5D5L);
            int i, j, k;
            for (p_1354->g_71 = (-22); (p_1354->g_71 <= 9); p_1354->g_71 = safe_add_func_uint64_t_u_u(p_1354->g_71, 5))
            { /* block id: 99 */
                return p_34;
            }
            p_33 &= l_295;
            if (((((*l_248) = ((void*)0 == &p_1354->g_291)) & (safe_lshift_func_uint8_t_u_u(8UL, (p_34 & (safe_mul_func_int16_t_s_s(l_295, 0x3A08L)))))) , (p_1354->g_63[1][0].f3 | 65535UL)))
            { /* block id: 104 */
                VECTOR(int32_t, 2) l_320 = (VECTOR(int32_t, 2))((-1L), 0L);
                VECTOR(int8_t, 2) l_342 = (VECTOR(int8_t, 2))(1L, 4L);
                VECTOR(uint16_t, 16) l_352 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 8UL), 8UL), 8UL, 65535UL, 8UL, (VECTOR(uint16_t, 2))(65535UL, 8UL), (VECTOR(uint16_t, 2))(65535UL, 8UL), 65535UL, 8UL, 65535UL, 8UL);
                int16_t *l_369 = (void*)0;
                uint8_t l_405 = 0UL;
                struct S0 *l_437[4][7][9] = {{{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325}},{{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325}},{{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325}},{{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325},{&p_1354->g_398,(void*)0,&p_1354->g_398,&p_1354->g_325,&p_1354->g_398,(void*)0,&p_1354->g_398,(void*)0,&p_1354->g_325}}};
                int i, j, k;
                for (p_33 = 23; (p_33 != (-25)); p_33 = safe_sub_func_int64_t_s_s(p_33, 8))
                { /* block id: 107 */
                    if (l_302.x)
                        break;
                    l_303[0][6] = 0x7E765B9DL;
                }
            }
            else
            { /* block id: 152 */
                uint32_t l_450 = 0x7A6903CFL;
                struct S0 *l_455 = &p_1354->g_441;
                int32_t l_478 = 0x29124C06L;
                int32_t l_479 = 9L;
                uint16_t l_491 = 65535UL;
                VECTOR(uint64_t, 16) l_496 = (VECTOR(uint64_t, 16))(6UL, (VECTOR(uint64_t, 4))(6UL, (VECTOR(uint64_t, 2))(6UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 6UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(6UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(6UL, 18446744073709551615UL), 6UL, 18446744073709551615UL, 6UL, 18446744073709551615UL);
                int32_t l_516 = (-1L);
                int i;
                if ((**p_1354->g_439))
                { /* block id: 153 */
                    if (((VECTOR(int32_t, 16))(p_1354->g_440.s0f9a2f6998f8a313)).s7)
                    { /* block id: 154 */
                        struct S0 *l_442 = &p_1354->g_398;
                        int32_t **l_443 = &l_263;
                        (*l_442) = p_1354->g_441;
                        p_33 = ((VECTOR(int32_t, 2))(0x6AE8B054L, 5L)).even;
                        (*l_443) = (*p_1354->g_439);
                    }
                    else
                    { /* block id: 158 */
                        p_33 &= ((*p_1354->g_82) < ((VECTOR(uint32_t, 2))(l_444.yw)).hi);
                        (*l_432) = (*l_432);
                        return p_33;
                    }
                }
                else
                { /* block id: 163 */
                    uint16_t l_445 = 0UL;
                    int32_t l_446 = 0x4B9FEC39L;
                    int32_t l_447 = 0x5619501BL;
                    int32_t l_448 = 0x4EAE5864L;
                    int32_t l_449 = 1L;
                    int32_t **l_453 = &l_337[9][6];
                    l_445 = p_34;
                    --l_450;
                    l_371 &= 1L;
                    (*l_453) = (void*)0;
                }
                (*p_1354->g_454) = &p_33;
                (*l_455) = p_1354->g_438;
                for (p_1354->g_398.f1 = 29; (p_1354->g_398.f1 >= (-16)); p_1354->g_398.f1--)
                { /* block id: 173 */
                    int32_t **l_458 = &l_263;
                    int32_t l_477 = 0L;
                    (*p_1354->g_460) = ((*l_458) = (*p_1354->g_338));
                    p_1354->g_221.s6 |= (safe_rshift_func_int16_t_s_s(p_1354->g_364.f0, p_33));
                    p_33 = (((~((safe_div_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(7UL, (~((((safe_mul_func_uint8_t_u_u(((*l_263) >= (((VECTOR(uint32_t, 2))(0xEBC26719L, 0UL)).lo , ((GROUP_DIVERGE(2, 1) >= 0x9EL) , ((**p_1354->g_291) = 0x7FE980547E5001E7L)))), (safe_lshift_func_uint8_t_u_u((p_1354->g_140[6][2]++), 7)))) , (**l_458)) == (~(p_35 , FAKE_DIVERGE(p_1354->global_1_offset, get_global_id(1), 10)))) && (((!(p_1354->g_340.f2 , ((safe_mod_func_uint32_t_u_u((p_34 >= p_34), 0x73443F7AL)) ^ 0x79803F18B594C239L))) ^ 0x24L) && 0x4595F888BA867A22L))))), p_34)) && 1L)) & p_1354->g_349.s3) , (-3L));
                }
            }
            l_427.s6 ^= (safe_sub_func_uint16_t_u_u((0x7A2DE495L != (safe_lshift_func_int8_t_s_u((!((~((((safe_mul_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s(((p_33 = (p_1354->g_349.s0 , (l_366.s1 = (!((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))((safe_add_func_int32_t_s_s(p_34, (l_198.y == (safe_sub_func_int16_t_s_s(p_34, 0x07B3L))))), ((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 2))(0x15L, 0x71L)), ((VECTOR(int8_t, 8))(0x07L, ((VECTOR(int8_t, 2))(p_1354->g_531.yx)), ((VECTOR(int8_t, 4))((((safe_sub_func_uint32_t_u_u((safe_unary_minus_func_uint8_t_u(0xD3L)), (safe_add_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(0UL, p_33)), l_539)))) < p_1354->g_226.sc) ^ FAKE_DIVERGE(p_1354->global_2_offset, get_global_id(2), 10)), ((VECTOR(int8_t, 2))(0x3FL)), 0x6EL)), 4L)).s35, ((VECTOR(int8_t, 2))(0L))))), 0L)), 0x0FL, ((VECTOR(int8_t, 2))(0x62L)), 0x64L)).s0, 250UL)) != l_374[6][0][0]))))) == 0x076081ABL), p_34)), 0xF1L)) , p_35) > 0x740BL) && 249UL)) ^ p_1354->g_19)), 2))), 7UL));
        }
        for (p_1354->g_143 = 0; (p_1354->g_143 > 32); p_1354->g_143 = safe_add_func_uint16_t_u_u(p_1354->g_143, 8))
        { /* block id: 206 */
            int32_t *l_544[7][5] = {{&l_303[0][6],(void*)0,(void*)0,&l_303[0][6],&l_303[0][6]},{&l_303[0][6],(void*)0,(void*)0,&l_303[0][6],&l_303[0][6]},{&l_303[0][6],(void*)0,(void*)0,&l_303[0][6],&l_303[0][6]},{&l_303[0][6],(void*)0,(void*)0,&l_303[0][6],&l_303[0][6]},{&l_303[0][6],(void*)0,(void*)0,&l_303[0][6],&l_303[0][6]},{&l_303[0][6],(void*)0,(void*)0,&l_303[0][6],&l_303[0][6]},{&l_303[0][6],(void*)0,(void*)0,&l_303[0][6],&l_303[0][6]}};
            int i, j;
            for (p_34 = (-27); (p_34 != 4); p_34 = safe_add_func_uint16_t_u_u(p_34, 4))
            { /* block id: 209 */
                if (p_34)
                    break;
            }
            l_544[6][1] = (void*)0;
        }
        if (((&l_191 != (void*)0) || (((l_545 != (void*)0) || p_1354->g_492.f0.f0) <= (safe_div_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_u((((*l_550) = &p_1354->g_190) == ((*l_559) = ((safe_add_func_int32_t_s_s(((*p_1354->g_292) <= (safe_add_func_int64_t_s_s(((3L || ((((*l_223) = (safe_rshift_func_int8_t_s_s((p_33 , 0x42L), 0))) > p_1354->g_255.y) ^ p_1354->g_441.f2)) > l_557), p_34))), p_33)) , &p_34))), p_1354->g_440.s9)) ^ p_35), 0xA844L)))))
        { /* block id: 217 */
            int32_t **l_561 = &l_337[9][6];
            (*l_561) = &l_303[1][4];
            (*l_561) = &p_33;
        }
        else
        { /* block id: 220 */
            (*p_1354->g_563) = (*p_1354->g_460);
        }
    }
    return p_35;
}


/* ------------------------------------------ */
/* 
 * reads : p_1354->g_92 p_1354->g_62 p_1354->g_82 p_1354->g_19 p_1354->g_55 p_1354->g_71
 * writes: p_1354->g_82
 */
int32_t  func_36(uint64_t  p_37, int64_t  p_38, uint32_t  p_39, int32_t  p_40, uint32_t  p_41, struct S3 * p_1354)
{ /* block id: 27 */
    int32_t *l_83 = &p_1354->g_19;
    int32_t **l_85 = &p_1354->g_82;
    (*l_85) = l_83;
    p_40 |= ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(0x7EABB878L, (safe_rshift_func_int8_t_s_u((safe_add_func_uint16_t_u_u(((safe_add_func_uint16_t_u_u(0UL, ((VECTOR(int16_t, 4))(p_1354->g_92.xyyy)).w)) | ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x60L, 0x7AL)), 0x07L, 0L)).z), (safe_lshift_func_uint16_t_u_s(((safe_add_func_int8_t_s_s((+((((p_1354->g_62 == (+(safe_lshift_func_uint8_t_u_u(0UL, (((*l_85) != &p_40) , (*l_83)))))) >= ((safe_mul_func_uint16_t_u_u(p_1354->g_55, 1UL)) != p_1354->g_71)) , 0L) , 0L)), p_1354->g_55)) >= p_38), p_1354->g_55)))), 1)), ((VECTOR(int32_t, 2))(0x1909C2EEL)), ((VECTOR(int32_t, 4))(0x5005B569L)))).s0402205065441165 & ((VECTOR(int32_t, 16))(0x7056167BL))))).s9c, ((VECTOR(int32_t, 2))(1L))))), 1L, p_41, 0x7852D388L, ((VECTOR(int32_t, 2))(0L)), 0x10B97FFBL, 1L, 0x7AD93CD9L, 0x089C386FL, (**l_85), p_37, (**l_85), (-7L), 0x3C59DB3CL)).sa6 && ((VECTOR(int32_t, 2))(0x2B0D1CDFL))))).yxxx != ((VECTOR(int32_t, 4))(0x233F3924L))))), ((VECTOR(int32_t, 4))(6L))))).wzzzwzzz, (int32_t)(-6L), (int32_t)p_41))), ((VECTOR(int32_t, 8))(9L)), ((VECTOR(int32_t, 8))(0x0EFB8CC5L))))) || ((VECTOR(int32_t, 8))(0L))))).s6;
    return (**l_85);
}


/* ------------------------------------------ */
/* 
 * reads : p_1354->g_55 p_1354->g_62
 * writes: p_1354->g_67.f1.f2 p_1354->g_82
 */
int32_t  func_42(int16_t  p_43, int16_t  p_44, int64_t  p_45, uint32_t  p_46, uint32_t  p_47, struct S3 * p_1354)
{ /* block id: 15 */
    union U2 **l_75 = (void*)0;
    union U2 ***l_76 = &l_75;
    int16_t *l_77 = &p_1354->g_67[1][3].f1.f2;
    int32_t *l_80[1];
    int i;
    for (i = 0; i < 1; i++)
        l_80[i] = &p_1354->g_19;
    if ((0xB73DL ^ (((*l_77) = (((((*l_76) = l_75) == (void*)0) ^ 0xB3A76C1EL) <= 0x0CA1L)) >= ((void*)0 != &p_1354->g_55))))
    { /* block id: 18 */
        return p_1354->g_55;
    }
    else
    { /* block id: 20 */
        int32_t *l_78 = &p_1354->g_19;
        int32_t l_79 = 9L;
        int32_t **l_81[4];
        int i;
        for (i = 0; i < 4; i++)
            l_81[i] = &l_78;
        l_78 = l_78;
        l_79 |= p_1354->g_62;
        p_1354->g_82 = l_80[0];
    }
    return p_43;
}


/* ------------------------------------------ */
/* 
 * reads : p_1354->g_68
 * writes: p_1354->g_69
 */
int32_t  func_56(int64_t * p_57, int8_t  p_58, int32_t  p_59, struct S3 * p_1354)
{ /* block id: 10 */
    union U2 *l_66 = &p_1354->g_67[1][3];
    int32_t l_70 = 9L;
    (*p_1354->g_68) = l_66;
    return l_70;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_1355;
    struct S3* p_1354 = &c_1355;
    struct S3 c_1356 = {
        0x6356EC7EL, // p_1354->g_19
        0x11919B17C08A59C2L, // p_1354->g_55
        6L, // p_1354->g_62
        {{{0L,-1L,0x1B4BL,0x71F8B108A6652F52L}},{{0L,-1L,0x1B4BL,0x71F8B108A6652F52L}},{{0L,-1L,0x1B4BL,0x71F8B108A6652F52L}},{{0L,-1L,0x1B4BL,0x71F8B108A6652F52L}},{{0L,-1L,0x1B4BL,0x71F8B108A6652F52L}},{{0L,-1L,0x1B4BL,0x71F8B108A6652F52L}},{{0L,-1L,0x1B4BL,0x71F8B108A6652F52L}},{{0L,-1L,0x1B4BL,0x71F8B108A6652F52L}},{{0L,-1L,0x1B4BL,0x71F8B108A6652F52L}},{{0L,-1L,0x1B4BL,0x71F8B108A6652F52L}}}, // p_1354->g_63
        {{{0L},{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L},{0L}}}, // p_1354->g_67
        &p_1354->g_67[0][1], // p_1354->g_69
        &p_1354->g_69, // p_1354->g_68
        4294967295UL, // p_1354->g_71
        (void*)0, // p_1354->g_82
        (void*)0, // p_1354->g_84
        (VECTOR(int16_t, 2))(1L, 0x53C8L), // p_1354->g_92
        0x3FL, // p_1354->g_123
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x65B8L), 0x65B8L), 0x65B8L, (-1L), 0x65B8L, (VECTOR(int16_t, 2))((-1L), 0x65B8L), (VECTOR(int16_t, 2))((-1L), 0x65B8L), (-1L), 0x65B8L, (-1L), 0x65B8L), // p_1354->g_131
        (VECTOR(uint32_t, 8))(4UL, (VECTOR(uint32_t, 4))(4UL, (VECTOR(uint32_t, 2))(4UL, 0x8532EA63L), 0x8532EA63L), 0x8532EA63L, 4UL, 0x8532EA63L), // p_1354->g_138
        (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x29B62C093970EBC1L), 0x29B62C093970EBC1L), // p_1354->g_139
        {{0x4EL,0x4EL,255UL,0x99L,247UL},{0x4EL,0x4EL,255UL,0x99L,247UL},{0x4EL,0x4EL,255UL,0x99L,247UL},{0x4EL,0x4EL,255UL,0x99L,247UL},{0x4EL,0x4EL,255UL,0x99L,247UL},{0x4EL,0x4EL,255UL,0x99L,247UL},{0x4EL,0x4EL,255UL,0x99L,247UL}}, // p_1354->g_140
        248UL, // p_1354->g_143
        255UL, // p_1354->g_145
        (void*)0, // p_1354->g_162
        (void*)0, // p_1354->g_185
        0x2A6EC6CEE4413314L, // p_1354->g_190
        (VECTOR(int8_t, 2))(0L, 4L), // p_1354->g_219
        (VECTOR(int32_t, 8))(0x125EA103L, (VECTOR(int32_t, 4))(0x125EA103L, (VECTOR(int32_t, 2))(0x125EA103L, (-1L)), (-1L)), (-1L), 0x125EA103L, (-1L)), // p_1354->g_221
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xCDL), 0xCDL), // p_1354->g_224
        (VECTOR(int8_t, 16))(0x00L, (VECTOR(int8_t, 4))(0x00L, (VECTOR(int8_t, 2))(0x00L, 0x6BL), 0x6BL), 0x6BL, 0x00L, 0x6BL, (VECTOR(int8_t, 2))(0x00L, 0x6BL), (VECTOR(int8_t, 2))(0x00L, 0x6BL), 0x00L, 0x6BL, 0x00L, 0x6BL), // p_1354->g_226
        0xDD08L, // p_1354->g_243
        (VECTOR(int8_t, 2))((-10L), 0x6BL), // p_1354->g_253
        (VECTOR(int8_t, 4))(0x5DL, (VECTOR(int8_t, 2))(0x5DL, 0x59L), 0x59L), // p_1354->g_255
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 3L), 3L), 3L, 1L, 3L, (VECTOR(int8_t, 2))(1L, 3L), (VECTOR(int8_t, 2))(1L, 3L), 1L, 3L, 1L, 3L), // p_1354->g_260
        (VECTOR(int16_t, 16))(0x30BAL, (VECTOR(int16_t, 4))(0x30BAL, (VECTOR(int16_t, 2))(0x30BAL, 1L), 1L), 1L, 0x30BAL, 1L, (VECTOR(int16_t, 2))(0x30BAL, 1L), (VECTOR(int16_t, 2))(0x30BAL, 1L), 0x30BAL, 1L, 0x30BAL, 1L), // p_1354->g_269
        (VECTOR(int16_t, 8))(0x4BECL, (VECTOR(int16_t, 4))(0x4BECL, (VECTOR(int16_t, 2))(0x4BECL, (-8L)), (-8L)), (-8L), 0x4BECL, (-8L)), // p_1354->g_270
        &p_1354->g_67[1][3].f0, // p_1354->g_292
        &p_1354->g_292, // p_1354->g_291
        &p_1354->g_291, // p_1354->g_290
        {0x305A38B45E41835AL,-2L,0x18ADL,0x224F215CE0169560L}, // p_1354->g_325
        {0x3F2FEC3AA49889C9L}, // p_1354->g_328
        &p_1354->g_82, // p_1354->g_338
        {0x3BD001C5E73EF299L,-1L,9L,1UL}, // p_1354->g_340
        (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), 0L), 0L), // p_1354->g_346
        (VECTOR(int16_t, 8))(0x5BE6L, (VECTOR(int16_t, 4))(0x5BE6L, (VECTOR(int16_t, 2))(0x5BE6L, (-8L)), (-8L)), (-8L), 0x5BE6L, (-8L)), // p_1354->g_349
        {-1L,1L,5L,0xE91A2BF89AC35681L}, // p_1354->g_363
        {0x0201A1D81D62C3C3L,-6L,9L,5UL}, // p_1354->g_364
        0L, // p_1354->g_367
        0x79L, // p_1354->g_391
        {0x6FC43FAABFB384F5L,0x51788930L,-7L,0x6995A456414D38A6L}, // p_1354->g_398
        {0x3FC82B6D56234401L,0L,0L,2UL}, // p_1354->g_399
        {0x23FF5EF95C3D56ADL,0x5C52A40FL,-1L,18446744073709551615UL}, // p_1354->g_436
        {0x2FE3AE25426D99FFL,0x33CBA986L,0x06A3L,0UL}, // p_1354->g_438
        &p_1354->g_82, // p_1354->g_439
        (VECTOR(int32_t, 16))(0x20826293L, (VECTOR(int32_t, 4))(0x20826293L, (VECTOR(int32_t, 2))(0x20826293L, 5L), 5L), 5L, 0x20826293L, 5L, (VECTOR(int32_t, 2))(0x20826293L, 5L), (VECTOR(int32_t, 2))(0x20826293L, 5L), 0x20826293L, 5L, 0x20826293L, 5L), // p_1354->g_440
        {0L,1L,1L,0x4B881ACE176C98FAL}, // p_1354->g_441
        &p_1354->g_82, // p_1354->g_454
        (void*)0, // p_1354->g_459
        &p_1354->g_82, // p_1354->g_460
        {{-1L,-8L,1L,0x5230BA30E1A8B5D9L}}, // p_1354->g_492
        (VECTOR(int8_t, 2))(1L, 1L), // p_1354->g_531
        {{&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82},{&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82},{&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82},{&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82,&p_1354->g_82}}, // p_1354->g_562
        &p_1354->g_82, // p_1354->g_563
        {0x2FEC72645B4A7AC2L}, // p_1354->g_565
        {{{0x21C26FB53E2E3DCFL,0x7A52C755L,0x6179L,0UL}},{{0x21C26FB53E2E3DCFL,0x7A52C755L,0x6179L,0UL}},{{0x21C26FB53E2E3DCFL,0x7A52C755L,0x6179L,0UL}},{{0x21C26FB53E2E3DCFL,0x7A52C755L,0x6179L,0UL}},{{0x21C26FB53E2E3DCFL,0x7A52C755L,0x6179L,0UL}},{{0x21C26FB53E2E3DCFL,0x7A52C755L,0x6179L,0UL}},{{0x21C26FB53E2E3DCFL,0x7A52C755L,0x6179L,0UL}},{{0x21C26FB53E2E3DCFL,0x7A52C755L,0x6179L,0UL}},{{0x21C26FB53E2E3DCFL,0x7A52C755L,0x6179L,0UL}},{{0x21C26FB53E2E3DCFL,0x7A52C755L,0x6179L,0UL}}}, // p_1354->g_586
        (-3L), // p_1354->g_609
        0xD0468867L, // p_1354->g_617
        {0x220B36B46A84BA0AL,0L,2L,0xB9517F1108A0461FL}, // p_1354->g_648
        {{{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71}},{{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71}},{{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71}},{{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71}},{{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71}},{{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71},{(void*)0,&p_1354->g_71,&p_1354->g_71,(void*)0,&p_1354->g_71}}}, // p_1354->g_656
        &p_1354->g_656[5][7][4], // p_1354->g_655
        &p_1354->g_656[5][7][4], // p_1354->g_657
        &p_1354->g_292, // p_1354->g_684
        &p_1354->g_69, // p_1354->g_693
        (VECTOR(int8_t, 2))(0x45L, 0x3AL), // p_1354->g_705
        {-6L,0x69D0736CL,7L,0x3D7311E95D2F0330L}, // p_1354->g_722
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x38L), 0x38L), // p_1354->g_725
        &p_1354->g_657, // p_1354->g_728
        {-10L,1L,9L,0xA30D6FE8B351182BL}, // p_1354->g_841
        {{0x6D32A7CC318AFF0BL,-1L,0x2594L,18446744073709551613UL}}, // p_1354->g_843
        {-1L}, // p_1354->g_865
        (VECTOR(int32_t, 4))(0x54373FC2L, (VECTOR(int32_t, 2))(0x54373FC2L, 0x1AABF273L), 0x1AABF273L), // p_1354->g_882
        18446744073709551615UL, // p_1354->g_908
        (VECTOR(int32_t, 2))(5L, 0x007639F4L), // p_1354->g_912
        (VECTOR(int32_t, 16))(0x260835D0L, (VECTOR(int32_t, 4))(0x260835D0L, (VECTOR(int32_t, 2))(0x260835D0L, 0x6C90E0C3L), 0x6C90E0C3L), 0x6C90E0C3L, 0x260835D0L, 0x6C90E0C3L, (VECTOR(int32_t, 2))(0x260835D0L, 0x6C90E0C3L), (VECTOR(int32_t, 2))(0x260835D0L, 0x6C90E0C3L), 0x260835D0L, 0x6C90E0C3L, 0x260835D0L, 0x6C90E0C3L), // p_1354->g_921
        {{0x3B6979A139F7B3A1L,1L,0x7E27L,9UL},{0x3B6979A139F7B3A1L,1L,0x7E27L,9UL},{0x3B6979A139F7B3A1L,1L,0x7E27L,9UL},{0x3B6979A139F7B3A1L,1L,0x7E27L,9UL},{0x3B6979A139F7B3A1L,1L,0x7E27L,9UL},{0x3B6979A139F7B3A1L,1L,0x7E27L,9UL},{0x3B6979A139F7B3A1L,1L,0x7E27L,9UL},{0x3B6979A139F7B3A1L,1L,0x7E27L,9UL},{0x3B6979A139F7B3A1L,1L,0x7E27L,9UL}}, // p_1354->g_950
        (VECTOR(int64_t, 16))(2L, (VECTOR(int64_t, 4))(2L, (VECTOR(int64_t, 2))(2L, 1L), 1L), 1L, 2L, 1L, (VECTOR(int64_t, 2))(2L, 1L), (VECTOR(int64_t, 2))(2L, 1L), 2L, 1L, 2L, 1L), // p_1354->g_980
        {{&p_1354->g_243,&p_1354->g_243,(void*)0},{&p_1354->g_243,&p_1354->g_243,(void*)0},{&p_1354->g_243,&p_1354->g_243,(void*)0},{&p_1354->g_243,&p_1354->g_243,(void*)0},{&p_1354->g_243,&p_1354->g_243,(void*)0},{&p_1354->g_243,&p_1354->g_243,(void*)0}}, // p_1354->g_997
        &p_1354->g_997[0][1], // p_1354->g_996
        &p_1354->g_996, // p_1354->g_995
        {{{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{0x3C57B8464D8B0DC8L,0x5C929C93L,0x2EFAL,0xF9E35DF2F5E30BCFL}},{{0x373B4C0AF1A5A6BEL,-1L,0L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x4F603574AC508D8EL,0x04B13395L,0L,18446744073709551610UL}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x1FAFE7E6DAC86DB6L,-5L,0x20B7L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}}},{{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{0x3C57B8464D8B0DC8L,0x5C929C93L,0x2EFAL,0xF9E35DF2F5E30BCFL}},{{0x373B4C0AF1A5A6BEL,-1L,0L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x4F603574AC508D8EL,0x04B13395L,0L,18446744073709551610UL}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x1FAFE7E6DAC86DB6L,-5L,0x20B7L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}}},{{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{0x3C57B8464D8B0DC8L,0x5C929C93L,0x2EFAL,0xF9E35DF2F5E30BCFL}},{{0x373B4C0AF1A5A6BEL,-1L,0L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x4F603574AC508D8EL,0x04B13395L,0L,18446744073709551610UL}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x1FAFE7E6DAC86DB6L,-5L,0x20B7L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}}},{{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{0x3C57B8464D8B0DC8L,0x5C929C93L,0x2EFAL,0xF9E35DF2F5E30BCFL}},{{0x373B4C0AF1A5A6BEL,-1L,0L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x4F603574AC508D8EL,0x04B13395L,0L,18446744073709551610UL}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x1FAFE7E6DAC86DB6L,-5L,0x20B7L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}}},{{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{0x3C57B8464D8B0DC8L,0x5C929C93L,0x2EFAL,0xF9E35DF2F5E30BCFL}},{{0x373B4C0AF1A5A6BEL,-1L,0L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x4F603574AC508D8EL,0x04B13395L,0L,18446744073709551610UL}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x1FAFE7E6DAC86DB6L,-5L,0x20B7L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}}},{{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{0x3C57B8464D8B0DC8L,0x5C929C93L,0x2EFAL,0xF9E35DF2F5E30BCFL}},{{0x373B4C0AF1A5A6BEL,-1L,0L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x4F603574AC508D8EL,0x04B13395L,0L,18446744073709551610UL}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x1FAFE7E6DAC86DB6L,-5L,0x20B7L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}}},{{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{0x3C57B8464D8B0DC8L,0x5C929C93L,0x2EFAL,0xF9E35DF2F5E30BCFL}},{{0x373B4C0AF1A5A6BEL,-1L,0L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x4F603574AC508D8EL,0x04B13395L,0L,18446744073709551610UL}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x1FAFE7E6DAC86DB6L,-5L,0x20B7L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}}},{{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{0x3C57B8464D8B0DC8L,0x5C929C93L,0x2EFAL,0xF9E35DF2F5E30BCFL}},{{0x373B4C0AF1A5A6BEL,-1L,0L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x4F603574AC508D8EL,0x04B13395L,0L,18446744073709551610UL}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x1FAFE7E6DAC86DB6L,-5L,0x20B7L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}}},{{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{0x3C57B8464D8B0DC8L,0x5C929C93L,0x2EFAL,0xF9E35DF2F5E30BCFL}},{{0x373B4C0AF1A5A6BEL,-1L,0L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x4F603574AC508D8EL,0x04B13395L,0L,18446744073709551610UL}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x1FAFE7E6DAC86DB6L,-5L,0x20B7L,0UL}},{{9L,0x2B862113L,0x4FB6L,0x30AB74A012104741L}},{{0x51B2979CF6623514L,0x2D08A17CL,0x7C80L,18446744073709551615UL}}}}, // p_1354->g_1012
        (VECTOR(int8_t, 16))(0x04L, (VECTOR(int8_t, 4))(0x04L, (VECTOR(int8_t, 2))(0x04L, 1L), 1L), 1L, 0x04L, 1L, (VECTOR(int8_t, 2))(0x04L, 1L), (VECTOR(int8_t, 2))(0x04L, 1L), 0x04L, 1L, 0x04L, 1L), // p_1354->g_1015
        (-7L), // p_1354->g_1020
        (VECTOR(int8_t, 2))(0x59L, 0x5FL), // p_1354->g_1024
        (VECTOR(int8_t, 2))(0L, 0x20L), // p_1354->g_1026
        &p_1354->g_340, // p_1354->g_1035
        &p_1354->g_1035, // p_1354->g_1034
        (VECTOR(uint16_t, 2))(0UL, 0UL), // p_1354->g_1042
        (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 5UL), 5UL), 5UL, 1UL, 5UL), // p_1354->g_1045
        {{{0x8BB3L,0x3E2CL,0x02D7L},{0x8BB3L,0x3E2CL,0x02D7L},{0x8BB3L,0x3E2CL,0x02D7L},{0x8BB3L,0x3E2CL,0x02D7L},{0x8BB3L,0x3E2CL,0x02D7L},{0x8BB3L,0x3E2CL,0x02D7L},{0x8BB3L,0x3E2CL,0x02D7L}}}, // p_1354->g_1138
        (VECTOR(uint8_t, 2))(1UL, 5UL), // p_1354->g_1142
        (VECTOR(uint8_t, 4))(0xCFL, (VECTOR(uint8_t, 2))(0xCFL, 0UL), 0UL), // p_1354->g_1185
        (void*)0, // p_1354->g_1189
        &p_1354->g_1189, // p_1354->g_1188
        {{0x4790DF0C8E15F467L,9L,0x455FL,18446744073709551615UL}}, // p_1354->g_1201
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 4L), 4L), 4L, (-1L), 4L, (VECTOR(int8_t, 2))((-1L), 4L), (VECTOR(int8_t, 2))((-1L), 4L), (-1L), 4L, (-1L), 4L), // p_1354->g_1212
        (VECTOR(int8_t, 4))(0x0EL, (VECTOR(int8_t, 2))(0x0EL, (-10L)), (-10L)), // p_1354->g_1214
        (VECTOR(uint64_t, 16))(0xE4610ED9E9E662A5L, (VECTOR(uint64_t, 4))(0xE4610ED9E9E662A5L, (VECTOR(uint64_t, 2))(0xE4610ED9E9E662A5L, 0x6BBC42C9EE3DCB35L), 0x6BBC42C9EE3DCB35L), 0x6BBC42C9EE3DCB35L, 0xE4610ED9E9E662A5L, 0x6BBC42C9EE3DCB35L, (VECTOR(uint64_t, 2))(0xE4610ED9E9E662A5L, 0x6BBC42C9EE3DCB35L), (VECTOR(uint64_t, 2))(0xE4610ED9E9E662A5L, 0x6BBC42C9EE3DCB35L), 0xE4610ED9E9E662A5L, 0x6BBC42C9EE3DCB35L, 0xE4610ED9E9E662A5L, 0x6BBC42C9EE3DCB35L), // p_1354->g_1242
        (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL), // p_1354->g_1260
        (-10L), // p_1354->g_1276
        (VECTOR(uint8_t, 8))(252UL, (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 0x9FL), 0x9FL), 0x9FL, 252UL, 0x9FL), // p_1354->g_1286
        (VECTOR(uint8_t, 2))(0x80L, 247UL), // p_1354->g_1311
        {4L,0L,0L,0x60A7AF5712EBE2BBL}, // p_1354->g_1333
        (void*)0, // p_1354->g_1339
        &p_1354->g_1035, // p_1354->g_1340
        0x1116E772L, // p_1354->g_1344
        {{{(-2L),0x2B26B3DFL,(-2L),(-2L),0x2B26B3DFL}},{{(-2L),0x2B26B3DFL,(-2L),(-2L),0x2B26B3DFL}},{{(-2L),0x2B26B3DFL,(-2L),(-2L),0x2B26B3DFL}}}, // p_1354->g_1346
        sequence_input[get_global_id(0)], // p_1354->global_0_offset
        sequence_input[get_global_id(1)], // p_1354->global_1_offset
        sequence_input[get_global_id(2)], // p_1354->global_2_offset
        sequence_input[get_local_id(0)], // p_1354->local_0_offset
        sequence_input[get_local_id(1)], // p_1354->local_1_offset
        sequence_input[get_local_id(2)], // p_1354->local_2_offset
        sequence_input[get_group_id(0)], // p_1354->group_0_offset
        sequence_input[get_group_id(1)], // p_1354->group_1_offset
        sequence_input[get_group_id(2)], // p_1354->group_2_offset
    };
    c_1355 = c_1356;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1354);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1354->g_19, "p_1354->g_19", print_hash_value);
    transparent_crc(p_1354->g_55, "p_1354->g_55", print_hash_value);
    transparent_crc(p_1354->g_62, "p_1354->g_62", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1354->g_63[i][j].f0, "p_1354->g_63[i][j].f0", print_hash_value);
            transparent_crc(p_1354->g_63[i][j].f1, "p_1354->g_63[i][j].f1", print_hash_value);
            transparent_crc(p_1354->g_63[i][j].f2, "p_1354->g_63[i][j].f2", print_hash_value);
            transparent_crc(p_1354->g_63[i][j].f3, "p_1354->g_63[i][j].f3", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1354->g_67[i][j].f0, "p_1354->g_67[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1354->g_71, "p_1354->g_71", print_hash_value);
    transparent_crc(p_1354->g_92.x, "p_1354->g_92.x", print_hash_value);
    transparent_crc(p_1354->g_92.y, "p_1354->g_92.y", print_hash_value);
    transparent_crc(p_1354->g_123, "p_1354->g_123", print_hash_value);
    transparent_crc(p_1354->g_131.s0, "p_1354->g_131.s0", print_hash_value);
    transparent_crc(p_1354->g_131.s1, "p_1354->g_131.s1", print_hash_value);
    transparent_crc(p_1354->g_131.s2, "p_1354->g_131.s2", print_hash_value);
    transparent_crc(p_1354->g_131.s3, "p_1354->g_131.s3", print_hash_value);
    transparent_crc(p_1354->g_131.s4, "p_1354->g_131.s4", print_hash_value);
    transparent_crc(p_1354->g_131.s5, "p_1354->g_131.s5", print_hash_value);
    transparent_crc(p_1354->g_131.s6, "p_1354->g_131.s6", print_hash_value);
    transparent_crc(p_1354->g_131.s7, "p_1354->g_131.s7", print_hash_value);
    transparent_crc(p_1354->g_131.s8, "p_1354->g_131.s8", print_hash_value);
    transparent_crc(p_1354->g_131.s9, "p_1354->g_131.s9", print_hash_value);
    transparent_crc(p_1354->g_131.sa, "p_1354->g_131.sa", print_hash_value);
    transparent_crc(p_1354->g_131.sb, "p_1354->g_131.sb", print_hash_value);
    transparent_crc(p_1354->g_131.sc, "p_1354->g_131.sc", print_hash_value);
    transparent_crc(p_1354->g_131.sd, "p_1354->g_131.sd", print_hash_value);
    transparent_crc(p_1354->g_131.se, "p_1354->g_131.se", print_hash_value);
    transparent_crc(p_1354->g_131.sf, "p_1354->g_131.sf", print_hash_value);
    transparent_crc(p_1354->g_138.s0, "p_1354->g_138.s0", print_hash_value);
    transparent_crc(p_1354->g_138.s1, "p_1354->g_138.s1", print_hash_value);
    transparent_crc(p_1354->g_138.s2, "p_1354->g_138.s2", print_hash_value);
    transparent_crc(p_1354->g_138.s3, "p_1354->g_138.s3", print_hash_value);
    transparent_crc(p_1354->g_138.s4, "p_1354->g_138.s4", print_hash_value);
    transparent_crc(p_1354->g_138.s5, "p_1354->g_138.s5", print_hash_value);
    transparent_crc(p_1354->g_138.s6, "p_1354->g_138.s6", print_hash_value);
    transparent_crc(p_1354->g_138.s7, "p_1354->g_138.s7", print_hash_value);
    transparent_crc(p_1354->g_139.x, "p_1354->g_139.x", print_hash_value);
    transparent_crc(p_1354->g_139.y, "p_1354->g_139.y", print_hash_value);
    transparent_crc(p_1354->g_139.z, "p_1354->g_139.z", print_hash_value);
    transparent_crc(p_1354->g_139.w, "p_1354->g_139.w", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1354->g_140[i][j], "p_1354->g_140[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1354->g_143, "p_1354->g_143", print_hash_value);
    transparent_crc(p_1354->g_145, "p_1354->g_145", print_hash_value);
    transparent_crc(p_1354->g_190, "p_1354->g_190", print_hash_value);
    transparent_crc(p_1354->g_219.x, "p_1354->g_219.x", print_hash_value);
    transparent_crc(p_1354->g_219.y, "p_1354->g_219.y", print_hash_value);
    transparent_crc(p_1354->g_221.s0, "p_1354->g_221.s0", print_hash_value);
    transparent_crc(p_1354->g_221.s1, "p_1354->g_221.s1", print_hash_value);
    transparent_crc(p_1354->g_221.s2, "p_1354->g_221.s2", print_hash_value);
    transparent_crc(p_1354->g_221.s3, "p_1354->g_221.s3", print_hash_value);
    transparent_crc(p_1354->g_221.s4, "p_1354->g_221.s4", print_hash_value);
    transparent_crc(p_1354->g_221.s5, "p_1354->g_221.s5", print_hash_value);
    transparent_crc(p_1354->g_221.s6, "p_1354->g_221.s6", print_hash_value);
    transparent_crc(p_1354->g_221.s7, "p_1354->g_221.s7", print_hash_value);
    transparent_crc(p_1354->g_224.x, "p_1354->g_224.x", print_hash_value);
    transparent_crc(p_1354->g_224.y, "p_1354->g_224.y", print_hash_value);
    transparent_crc(p_1354->g_224.z, "p_1354->g_224.z", print_hash_value);
    transparent_crc(p_1354->g_224.w, "p_1354->g_224.w", print_hash_value);
    transparent_crc(p_1354->g_226.s0, "p_1354->g_226.s0", print_hash_value);
    transparent_crc(p_1354->g_226.s1, "p_1354->g_226.s1", print_hash_value);
    transparent_crc(p_1354->g_226.s2, "p_1354->g_226.s2", print_hash_value);
    transparent_crc(p_1354->g_226.s3, "p_1354->g_226.s3", print_hash_value);
    transparent_crc(p_1354->g_226.s4, "p_1354->g_226.s4", print_hash_value);
    transparent_crc(p_1354->g_226.s5, "p_1354->g_226.s5", print_hash_value);
    transparent_crc(p_1354->g_226.s6, "p_1354->g_226.s6", print_hash_value);
    transparent_crc(p_1354->g_226.s7, "p_1354->g_226.s7", print_hash_value);
    transparent_crc(p_1354->g_226.s8, "p_1354->g_226.s8", print_hash_value);
    transparent_crc(p_1354->g_226.s9, "p_1354->g_226.s9", print_hash_value);
    transparent_crc(p_1354->g_226.sa, "p_1354->g_226.sa", print_hash_value);
    transparent_crc(p_1354->g_226.sb, "p_1354->g_226.sb", print_hash_value);
    transparent_crc(p_1354->g_226.sc, "p_1354->g_226.sc", print_hash_value);
    transparent_crc(p_1354->g_226.sd, "p_1354->g_226.sd", print_hash_value);
    transparent_crc(p_1354->g_226.se, "p_1354->g_226.se", print_hash_value);
    transparent_crc(p_1354->g_226.sf, "p_1354->g_226.sf", print_hash_value);
    transparent_crc(p_1354->g_243, "p_1354->g_243", print_hash_value);
    transparent_crc(p_1354->g_253.x, "p_1354->g_253.x", print_hash_value);
    transparent_crc(p_1354->g_253.y, "p_1354->g_253.y", print_hash_value);
    transparent_crc(p_1354->g_255.x, "p_1354->g_255.x", print_hash_value);
    transparent_crc(p_1354->g_255.y, "p_1354->g_255.y", print_hash_value);
    transparent_crc(p_1354->g_255.z, "p_1354->g_255.z", print_hash_value);
    transparent_crc(p_1354->g_255.w, "p_1354->g_255.w", print_hash_value);
    transparent_crc(p_1354->g_260.s0, "p_1354->g_260.s0", print_hash_value);
    transparent_crc(p_1354->g_260.s1, "p_1354->g_260.s1", print_hash_value);
    transparent_crc(p_1354->g_260.s2, "p_1354->g_260.s2", print_hash_value);
    transparent_crc(p_1354->g_260.s3, "p_1354->g_260.s3", print_hash_value);
    transparent_crc(p_1354->g_260.s4, "p_1354->g_260.s4", print_hash_value);
    transparent_crc(p_1354->g_260.s5, "p_1354->g_260.s5", print_hash_value);
    transparent_crc(p_1354->g_260.s6, "p_1354->g_260.s6", print_hash_value);
    transparent_crc(p_1354->g_260.s7, "p_1354->g_260.s7", print_hash_value);
    transparent_crc(p_1354->g_260.s8, "p_1354->g_260.s8", print_hash_value);
    transparent_crc(p_1354->g_260.s9, "p_1354->g_260.s9", print_hash_value);
    transparent_crc(p_1354->g_260.sa, "p_1354->g_260.sa", print_hash_value);
    transparent_crc(p_1354->g_260.sb, "p_1354->g_260.sb", print_hash_value);
    transparent_crc(p_1354->g_260.sc, "p_1354->g_260.sc", print_hash_value);
    transparent_crc(p_1354->g_260.sd, "p_1354->g_260.sd", print_hash_value);
    transparent_crc(p_1354->g_260.se, "p_1354->g_260.se", print_hash_value);
    transparent_crc(p_1354->g_260.sf, "p_1354->g_260.sf", print_hash_value);
    transparent_crc(p_1354->g_269.s0, "p_1354->g_269.s0", print_hash_value);
    transparent_crc(p_1354->g_269.s1, "p_1354->g_269.s1", print_hash_value);
    transparent_crc(p_1354->g_269.s2, "p_1354->g_269.s2", print_hash_value);
    transparent_crc(p_1354->g_269.s3, "p_1354->g_269.s3", print_hash_value);
    transparent_crc(p_1354->g_269.s4, "p_1354->g_269.s4", print_hash_value);
    transparent_crc(p_1354->g_269.s5, "p_1354->g_269.s5", print_hash_value);
    transparent_crc(p_1354->g_269.s6, "p_1354->g_269.s6", print_hash_value);
    transparent_crc(p_1354->g_269.s7, "p_1354->g_269.s7", print_hash_value);
    transparent_crc(p_1354->g_269.s8, "p_1354->g_269.s8", print_hash_value);
    transparent_crc(p_1354->g_269.s9, "p_1354->g_269.s9", print_hash_value);
    transparent_crc(p_1354->g_269.sa, "p_1354->g_269.sa", print_hash_value);
    transparent_crc(p_1354->g_269.sb, "p_1354->g_269.sb", print_hash_value);
    transparent_crc(p_1354->g_269.sc, "p_1354->g_269.sc", print_hash_value);
    transparent_crc(p_1354->g_269.sd, "p_1354->g_269.sd", print_hash_value);
    transparent_crc(p_1354->g_269.se, "p_1354->g_269.se", print_hash_value);
    transparent_crc(p_1354->g_269.sf, "p_1354->g_269.sf", print_hash_value);
    transparent_crc(p_1354->g_270.s0, "p_1354->g_270.s0", print_hash_value);
    transparent_crc(p_1354->g_270.s1, "p_1354->g_270.s1", print_hash_value);
    transparent_crc(p_1354->g_270.s2, "p_1354->g_270.s2", print_hash_value);
    transparent_crc(p_1354->g_270.s3, "p_1354->g_270.s3", print_hash_value);
    transparent_crc(p_1354->g_270.s4, "p_1354->g_270.s4", print_hash_value);
    transparent_crc(p_1354->g_270.s5, "p_1354->g_270.s5", print_hash_value);
    transparent_crc(p_1354->g_270.s6, "p_1354->g_270.s6", print_hash_value);
    transparent_crc(p_1354->g_270.s7, "p_1354->g_270.s7", print_hash_value);
    transparent_crc(p_1354->g_325.f0, "p_1354->g_325.f0", print_hash_value);
    transparent_crc(p_1354->g_325.f1, "p_1354->g_325.f1", print_hash_value);
    transparent_crc(p_1354->g_325.f2, "p_1354->g_325.f2", print_hash_value);
    transparent_crc(p_1354->g_325.f3, "p_1354->g_325.f3", print_hash_value);
    transparent_crc(p_1354->g_328.f0, "p_1354->g_328.f0", print_hash_value);
    transparent_crc(p_1354->g_340.f0, "p_1354->g_340.f0", print_hash_value);
    transparent_crc(p_1354->g_340.f1, "p_1354->g_340.f1", print_hash_value);
    transparent_crc(p_1354->g_340.f2, "p_1354->g_340.f2", print_hash_value);
    transparent_crc(p_1354->g_340.f3, "p_1354->g_340.f3", print_hash_value);
    transparent_crc(p_1354->g_346.x, "p_1354->g_346.x", print_hash_value);
    transparent_crc(p_1354->g_346.y, "p_1354->g_346.y", print_hash_value);
    transparent_crc(p_1354->g_346.z, "p_1354->g_346.z", print_hash_value);
    transparent_crc(p_1354->g_346.w, "p_1354->g_346.w", print_hash_value);
    transparent_crc(p_1354->g_349.s0, "p_1354->g_349.s0", print_hash_value);
    transparent_crc(p_1354->g_349.s1, "p_1354->g_349.s1", print_hash_value);
    transparent_crc(p_1354->g_349.s2, "p_1354->g_349.s2", print_hash_value);
    transparent_crc(p_1354->g_349.s3, "p_1354->g_349.s3", print_hash_value);
    transparent_crc(p_1354->g_349.s4, "p_1354->g_349.s4", print_hash_value);
    transparent_crc(p_1354->g_349.s5, "p_1354->g_349.s5", print_hash_value);
    transparent_crc(p_1354->g_349.s6, "p_1354->g_349.s6", print_hash_value);
    transparent_crc(p_1354->g_349.s7, "p_1354->g_349.s7", print_hash_value);
    transparent_crc(p_1354->g_363.f0, "p_1354->g_363.f0", print_hash_value);
    transparent_crc(p_1354->g_363.f1, "p_1354->g_363.f1", print_hash_value);
    transparent_crc(p_1354->g_363.f2, "p_1354->g_363.f2", print_hash_value);
    transparent_crc(p_1354->g_363.f3, "p_1354->g_363.f3", print_hash_value);
    transparent_crc(p_1354->g_364.f0, "p_1354->g_364.f0", print_hash_value);
    transparent_crc(p_1354->g_364.f1, "p_1354->g_364.f1", print_hash_value);
    transparent_crc(p_1354->g_364.f2, "p_1354->g_364.f2", print_hash_value);
    transparent_crc(p_1354->g_364.f3, "p_1354->g_364.f3", print_hash_value);
    transparent_crc(p_1354->g_367, "p_1354->g_367", print_hash_value);
    transparent_crc(p_1354->g_391, "p_1354->g_391", print_hash_value);
    transparent_crc(p_1354->g_398.f0, "p_1354->g_398.f0", print_hash_value);
    transparent_crc(p_1354->g_398.f1, "p_1354->g_398.f1", print_hash_value);
    transparent_crc(p_1354->g_398.f2, "p_1354->g_398.f2", print_hash_value);
    transparent_crc(p_1354->g_398.f3, "p_1354->g_398.f3", print_hash_value);
    transparent_crc(p_1354->g_399.f0, "p_1354->g_399.f0", print_hash_value);
    transparent_crc(p_1354->g_399.f1, "p_1354->g_399.f1", print_hash_value);
    transparent_crc(p_1354->g_399.f2, "p_1354->g_399.f2", print_hash_value);
    transparent_crc(p_1354->g_399.f3, "p_1354->g_399.f3", print_hash_value);
    transparent_crc(p_1354->g_436.f0, "p_1354->g_436.f0", print_hash_value);
    transparent_crc(p_1354->g_436.f1, "p_1354->g_436.f1", print_hash_value);
    transparent_crc(p_1354->g_436.f2, "p_1354->g_436.f2", print_hash_value);
    transparent_crc(p_1354->g_436.f3, "p_1354->g_436.f3", print_hash_value);
    transparent_crc(p_1354->g_438.f0, "p_1354->g_438.f0", print_hash_value);
    transparent_crc(p_1354->g_438.f1, "p_1354->g_438.f1", print_hash_value);
    transparent_crc(p_1354->g_438.f2, "p_1354->g_438.f2", print_hash_value);
    transparent_crc(p_1354->g_438.f3, "p_1354->g_438.f3", print_hash_value);
    transparent_crc(p_1354->g_440.s0, "p_1354->g_440.s0", print_hash_value);
    transparent_crc(p_1354->g_440.s1, "p_1354->g_440.s1", print_hash_value);
    transparent_crc(p_1354->g_440.s2, "p_1354->g_440.s2", print_hash_value);
    transparent_crc(p_1354->g_440.s3, "p_1354->g_440.s3", print_hash_value);
    transparent_crc(p_1354->g_440.s4, "p_1354->g_440.s4", print_hash_value);
    transparent_crc(p_1354->g_440.s5, "p_1354->g_440.s5", print_hash_value);
    transparent_crc(p_1354->g_440.s6, "p_1354->g_440.s6", print_hash_value);
    transparent_crc(p_1354->g_440.s7, "p_1354->g_440.s7", print_hash_value);
    transparent_crc(p_1354->g_440.s8, "p_1354->g_440.s8", print_hash_value);
    transparent_crc(p_1354->g_440.s9, "p_1354->g_440.s9", print_hash_value);
    transparent_crc(p_1354->g_440.sa, "p_1354->g_440.sa", print_hash_value);
    transparent_crc(p_1354->g_440.sb, "p_1354->g_440.sb", print_hash_value);
    transparent_crc(p_1354->g_440.sc, "p_1354->g_440.sc", print_hash_value);
    transparent_crc(p_1354->g_440.sd, "p_1354->g_440.sd", print_hash_value);
    transparent_crc(p_1354->g_440.se, "p_1354->g_440.se", print_hash_value);
    transparent_crc(p_1354->g_440.sf, "p_1354->g_440.sf", print_hash_value);
    transparent_crc(p_1354->g_441.f0, "p_1354->g_441.f0", print_hash_value);
    transparent_crc(p_1354->g_441.f1, "p_1354->g_441.f1", print_hash_value);
    transparent_crc(p_1354->g_441.f2, "p_1354->g_441.f2", print_hash_value);
    transparent_crc(p_1354->g_441.f3, "p_1354->g_441.f3", print_hash_value);
    transparent_crc(p_1354->g_492.f0.f0, "p_1354->g_492.f0.f0", print_hash_value);
    transparent_crc(p_1354->g_492.f0.f1, "p_1354->g_492.f0.f1", print_hash_value);
    transparent_crc(p_1354->g_492.f0.f2, "p_1354->g_492.f0.f2", print_hash_value);
    transparent_crc(p_1354->g_492.f0.f3, "p_1354->g_492.f0.f3", print_hash_value);
    transparent_crc(p_1354->g_531.x, "p_1354->g_531.x", print_hash_value);
    transparent_crc(p_1354->g_531.y, "p_1354->g_531.y", print_hash_value);
    transparent_crc(p_1354->g_565.f0, "p_1354->g_565.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1354->g_586[i].f0.f0, "p_1354->g_586[i].f0.f0", print_hash_value);
        transparent_crc(p_1354->g_586[i].f0.f1, "p_1354->g_586[i].f0.f1", print_hash_value);
        transparent_crc(p_1354->g_586[i].f0.f2, "p_1354->g_586[i].f0.f2", print_hash_value);
        transparent_crc(p_1354->g_586[i].f0.f3, "p_1354->g_586[i].f0.f3", print_hash_value);

    }
    transparent_crc(p_1354->g_609, "p_1354->g_609", print_hash_value);
    transparent_crc(p_1354->g_617, "p_1354->g_617", print_hash_value);
    transparent_crc(p_1354->g_648.f0, "p_1354->g_648.f0", print_hash_value);
    transparent_crc(p_1354->g_648.f1, "p_1354->g_648.f1", print_hash_value);
    transparent_crc(p_1354->g_648.f2, "p_1354->g_648.f2", print_hash_value);
    transparent_crc(p_1354->g_648.f3, "p_1354->g_648.f3", print_hash_value);
    transparent_crc(p_1354->g_705.x, "p_1354->g_705.x", print_hash_value);
    transparent_crc(p_1354->g_705.y, "p_1354->g_705.y", print_hash_value);
    transparent_crc(p_1354->g_722.f0, "p_1354->g_722.f0", print_hash_value);
    transparent_crc(p_1354->g_722.f1, "p_1354->g_722.f1", print_hash_value);
    transparent_crc(p_1354->g_722.f2, "p_1354->g_722.f2", print_hash_value);
    transparent_crc(p_1354->g_722.f3, "p_1354->g_722.f3", print_hash_value);
    transparent_crc(p_1354->g_725.x, "p_1354->g_725.x", print_hash_value);
    transparent_crc(p_1354->g_725.y, "p_1354->g_725.y", print_hash_value);
    transparent_crc(p_1354->g_725.z, "p_1354->g_725.z", print_hash_value);
    transparent_crc(p_1354->g_725.w, "p_1354->g_725.w", print_hash_value);
    transparent_crc(p_1354->g_841.f0, "p_1354->g_841.f0", print_hash_value);
    transparent_crc(p_1354->g_841.f1, "p_1354->g_841.f1", print_hash_value);
    transparent_crc(p_1354->g_841.f2, "p_1354->g_841.f2", print_hash_value);
    transparent_crc(p_1354->g_841.f3, "p_1354->g_841.f3", print_hash_value);
    transparent_crc(p_1354->g_843.f0.f0, "p_1354->g_843.f0.f0", print_hash_value);
    transparent_crc(p_1354->g_843.f0.f1, "p_1354->g_843.f0.f1", print_hash_value);
    transparent_crc(p_1354->g_843.f0.f2, "p_1354->g_843.f0.f2", print_hash_value);
    transparent_crc(p_1354->g_843.f0.f3, "p_1354->g_843.f0.f3", print_hash_value);
    transparent_crc(p_1354->g_865.f0, "p_1354->g_865.f0", print_hash_value);
    transparent_crc(p_1354->g_882.x, "p_1354->g_882.x", print_hash_value);
    transparent_crc(p_1354->g_882.y, "p_1354->g_882.y", print_hash_value);
    transparent_crc(p_1354->g_882.z, "p_1354->g_882.z", print_hash_value);
    transparent_crc(p_1354->g_882.w, "p_1354->g_882.w", print_hash_value);
    transparent_crc(p_1354->g_908, "p_1354->g_908", print_hash_value);
    transparent_crc(p_1354->g_912.x, "p_1354->g_912.x", print_hash_value);
    transparent_crc(p_1354->g_912.y, "p_1354->g_912.y", print_hash_value);
    transparent_crc(p_1354->g_921.s0, "p_1354->g_921.s0", print_hash_value);
    transparent_crc(p_1354->g_921.s1, "p_1354->g_921.s1", print_hash_value);
    transparent_crc(p_1354->g_921.s2, "p_1354->g_921.s2", print_hash_value);
    transparent_crc(p_1354->g_921.s3, "p_1354->g_921.s3", print_hash_value);
    transparent_crc(p_1354->g_921.s4, "p_1354->g_921.s4", print_hash_value);
    transparent_crc(p_1354->g_921.s5, "p_1354->g_921.s5", print_hash_value);
    transparent_crc(p_1354->g_921.s6, "p_1354->g_921.s6", print_hash_value);
    transparent_crc(p_1354->g_921.s7, "p_1354->g_921.s7", print_hash_value);
    transparent_crc(p_1354->g_921.s8, "p_1354->g_921.s8", print_hash_value);
    transparent_crc(p_1354->g_921.s9, "p_1354->g_921.s9", print_hash_value);
    transparent_crc(p_1354->g_921.sa, "p_1354->g_921.sa", print_hash_value);
    transparent_crc(p_1354->g_921.sb, "p_1354->g_921.sb", print_hash_value);
    transparent_crc(p_1354->g_921.sc, "p_1354->g_921.sc", print_hash_value);
    transparent_crc(p_1354->g_921.sd, "p_1354->g_921.sd", print_hash_value);
    transparent_crc(p_1354->g_921.se, "p_1354->g_921.se", print_hash_value);
    transparent_crc(p_1354->g_921.sf, "p_1354->g_921.sf", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1354->g_950[i].f0, "p_1354->g_950[i].f0", print_hash_value);
        transparent_crc(p_1354->g_950[i].f1, "p_1354->g_950[i].f1", print_hash_value);
        transparent_crc(p_1354->g_950[i].f2, "p_1354->g_950[i].f2", print_hash_value);
        transparent_crc(p_1354->g_950[i].f3, "p_1354->g_950[i].f3", print_hash_value);

    }
    transparent_crc(p_1354->g_980.s0, "p_1354->g_980.s0", print_hash_value);
    transparent_crc(p_1354->g_980.s1, "p_1354->g_980.s1", print_hash_value);
    transparent_crc(p_1354->g_980.s2, "p_1354->g_980.s2", print_hash_value);
    transparent_crc(p_1354->g_980.s3, "p_1354->g_980.s3", print_hash_value);
    transparent_crc(p_1354->g_980.s4, "p_1354->g_980.s4", print_hash_value);
    transparent_crc(p_1354->g_980.s5, "p_1354->g_980.s5", print_hash_value);
    transparent_crc(p_1354->g_980.s6, "p_1354->g_980.s6", print_hash_value);
    transparent_crc(p_1354->g_980.s7, "p_1354->g_980.s7", print_hash_value);
    transparent_crc(p_1354->g_980.s8, "p_1354->g_980.s8", print_hash_value);
    transparent_crc(p_1354->g_980.s9, "p_1354->g_980.s9", print_hash_value);
    transparent_crc(p_1354->g_980.sa, "p_1354->g_980.sa", print_hash_value);
    transparent_crc(p_1354->g_980.sb, "p_1354->g_980.sb", print_hash_value);
    transparent_crc(p_1354->g_980.sc, "p_1354->g_980.sc", print_hash_value);
    transparent_crc(p_1354->g_980.sd, "p_1354->g_980.sd", print_hash_value);
    transparent_crc(p_1354->g_980.se, "p_1354->g_980.se", print_hash_value);
    transparent_crc(p_1354->g_980.sf, "p_1354->g_980.sf", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1354->g_1012[i][j].f0.f0, "p_1354->g_1012[i][j].f0.f0", print_hash_value);
            transparent_crc(p_1354->g_1012[i][j].f0.f1, "p_1354->g_1012[i][j].f0.f1", print_hash_value);
            transparent_crc(p_1354->g_1012[i][j].f0.f2, "p_1354->g_1012[i][j].f0.f2", print_hash_value);
            transparent_crc(p_1354->g_1012[i][j].f0.f3, "p_1354->g_1012[i][j].f0.f3", print_hash_value);

        }
    }
    transparent_crc(p_1354->g_1015.s0, "p_1354->g_1015.s0", print_hash_value);
    transparent_crc(p_1354->g_1015.s1, "p_1354->g_1015.s1", print_hash_value);
    transparent_crc(p_1354->g_1015.s2, "p_1354->g_1015.s2", print_hash_value);
    transparent_crc(p_1354->g_1015.s3, "p_1354->g_1015.s3", print_hash_value);
    transparent_crc(p_1354->g_1015.s4, "p_1354->g_1015.s4", print_hash_value);
    transparent_crc(p_1354->g_1015.s5, "p_1354->g_1015.s5", print_hash_value);
    transparent_crc(p_1354->g_1015.s6, "p_1354->g_1015.s6", print_hash_value);
    transparent_crc(p_1354->g_1015.s7, "p_1354->g_1015.s7", print_hash_value);
    transparent_crc(p_1354->g_1015.s8, "p_1354->g_1015.s8", print_hash_value);
    transparent_crc(p_1354->g_1015.s9, "p_1354->g_1015.s9", print_hash_value);
    transparent_crc(p_1354->g_1015.sa, "p_1354->g_1015.sa", print_hash_value);
    transparent_crc(p_1354->g_1015.sb, "p_1354->g_1015.sb", print_hash_value);
    transparent_crc(p_1354->g_1015.sc, "p_1354->g_1015.sc", print_hash_value);
    transparent_crc(p_1354->g_1015.sd, "p_1354->g_1015.sd", print_hash_value);
    transparent_crc(p_1354->g_1015.se, "p_1354->g_1015.se", print_hash_value);
    transparent_crc(p_1354->g_1015.sf, "p_1354->g_1015.sf", print_hash_value);
    transparent_crc(p_1354->g_1020, "p_1354->g_1020", print_hash_value);
    transparent_crc(p_1354->g_1024.x, "p_1354->g_1024.x", print_hash_value);
    transparent_crc(p_1354->g_1024.y, "p_1354->g_1024.y", print_hash_value);
    transparent_crc(p_1354->g_1026.x, "p_1354->g_1026.x", print_hash_value);
    transparent_crc(p_1354->g_1026.y, "p_1354->g_1026.y", print_hash_value);
    transparent_crc(p_1354->g_1042.x, "p_1354->g_1042.x", print_hash_value);
    transparent_crc(p_1354->g_1042.y, "p_1354->g_1042.y", print_hash_value);
    transparent_crc(p_1354->g_1045.s0, "p_1354->g_1045.s0", print_hash_value);
    transparent_crc(p_1354->g_1045.s1, "p_1354->g_1045.s1", print_hash_value);
    transparent_crc(p_1354->g_1045.s2, "p_1354->g_1045.s2", print_hash_value);
    transparent_crc(p_1354->g_1045.s3, "p_1354->g_1045.s3", print_hash_value);
    transparent_crc(p_1354->g_1045.s4, "p_1354->g_1045.s4", print_hash_value);
    transparent_crc(p_1354->g_1045.s5, "p_1354->g_1045.s5", print_hash_value);
    transparent_crc(p_1354->g_1045.s6, "p_1354->g_1045.s6", print_hash_value);
    transparent_crc(p_1354->g_1045.s7, "p_1354->g_1045.s7", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1354->g_1138[i][j][k], "p_1354->g_1138[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1354->g_1142.x, "p_1354->g_1142.x", print_hash_value);
    transparent_crc(p_1354->g_1142.y, "p_1354->g_1142.y", print_hash_value);
    transparent_crc(p_1354->g_1185.x, "p_1354->g_1185.x", print_hash_value);
    transparent_crc(p_1354->g_1185.y, "p_1354->g_1185.y", print_hash_value);
    transparent_crc(p_1354->g_1185.z, "p_1354->g_1185.z", print_hash_value);
    transparent_crc(p_1354->g_1185.w, "p_1354->g_1185.w", print_hash_value);
    transparent_crc(p_1354->g_1201.f0.f0, "p_1354->g_1201.f0.f0", print_hash_value);
    transparent_crc(p_1354->g_1201.f0.f1, "p_1354->g_1201.f0.f1", print_hash_value);
    transparent_crc(p_1354->g_1201.f0.f2, "p_1354->g_1201.f0.f2", print_hash_value);
    transparent_crc(p_1354->g_1201.f0.f3, "p_1354->g_1201.f0.f3", print_hash_value);
    transparent_crc(p_1354->g_1212.s0, "p_1354->g_1212.s0", print_hash_value);
    transparent_crc(p_1354->g_1212.s1, "p_1354->g_1212.s1", print_hash_value);
    transparent_crc(p_1354->g_1212.s2, "p_1354->g_1212.s2", print_hash_value);
    transparent_crc(p_1354->g_1212.s3, "p_1354->g_1212.s3", print_hash_value);
    transparent_crc(p_1354->g_1212.s4, "p_1354->g_1212.s4", print_hash_value);
    transparent_crc(p_1354->g_1212.s5, "p_1354->g_1212.s5", print_hash_value);
    transparent_crc(p_1354->g_1212.s6, "p_1354->g_1212.s6", print_hash_value);
    transparent_crc(p_1354->g_1212.s7, "p_1354->g_1212.s7", print_hash_value);
    transparent_crc(p_1354->g_1212.s8, "p_1354->g_1212.s8", print_hash_value);
    transparent_crc(p_1354->g_1212.s9, "p_1354->g_1212.s9", print_hash_value);
    transparent_crc(p_1354->g_1212.sa, "p_1354->g_1212.sa", print_hash_value);
    transparent_crc(p_1354->g_1212.sb, "p_1354->g_1212.sb", print_hash_value);
    transparent_crc(p_1354->g_1212.sc, "p_1354->g_1212.sc", print_hash_value);
    transparent_crc(p_1354->g_1212.sd, "p_1354->g_1212.sd", print_hash_value);
    transparent_crc(p_1354->g_1212.se, "p_1354->g_1212.se", print_hash_value);
    transparent_crc(p_1354->g_1212.sf, "p_1354->g_1212.sf", print_hash_value);
    transparent_crc(p_1354->g_1214.x, "p_1354->g_1214.x", print_hash_value);
    transparent_crc(p_1354->g_1214.y, "p_1354->g_1214.y", print_hash_value);
    transparent_crc(p_1354->g_1214.z, "p_1354->g_1214.z", print_hash_value);
    transparent_crc(p_1354->g_1214.w, "p_1354->g_1214.w", print_hash_value);
    transparent_crc(p_1354->g_1242.s0, "p_1354->g_1242.s0", print_hash_value);
    transparent_crc(p_1354->g_1242.s1, "p_1354->g_1242.s1", print_hash_value);
    transparent_crc(p_1354->g_1242.s2, "p_1354->g_1242.s2", print_hash_value);
    transparent_crc(p_1354->g_1242.s3, "p_1354->g_1242.s3", print_hash_value);
    transparent_crc(p_1354->g_1242.s4, "p_1354->g_1242.s4", print_hash_value);
    transparent_crc(p_1354->g_1242.s5, "p_1354->g_1242.s5", print_hash_value);
    transparent_crc(p_1354->g_1242.s6, "p_1354->g_1242.s6", print_hash_value);
    transparent_crc(p_1354->g_1242.s7, "p_1354->g_1242.s7", print_hash_value);
    transparent_crc(p_1354->g_1242.s8, "p_1354->g_1242.s8", print_hash_value);
    transparent_crc(p_1354->g_1242.s9, "p_1354->g_1242.s9", print_hash_value);
    transparent_crc(p_1354->g_1242.sa, "p_1354->g_1242.sa", print_hash_value);
    transparent_crc(p_1354->g_1242.sb, "p_1354->g_1242.sb", print_hash_value);
    transparent_crc(p_1354->g_1242.sc, "p_1354->g_1242.sc", print_hash_value);
    transparent_crc(p_1354->g_1242.sd, "p_1354->g_1242.sd", print_hash_value);
    transparent_crc(p_1354->g_1242.se, "p_1354->g_1242.se", print_hash_value);
    transparent_crc(p_1354->g_1242.sf, "p_1354->g_1242.sf", print_hash_value);
    transparent_crc(p_1354->g_1260.s0, "p_1354->g_1260.s0", print_hash_value);
    transparent_crc(p_1354->g_1260.s1, "p_1354->g_1260.s1", print_hash_value);
    transparent_crc(p_1354->g_1260.s2, "p_1354->g_1260.s2", print_hash_value);
    transparent_crc(p_1354->g_1260.s3, "p_1354->g_1260.s3", print_hash_value);
    transparent_crc(p_1354->g_1260.s4, "p_1354->g_1260.s4", print_hash_value);
    transparent_crc(p_1354->g_1260.s5, "p_1354->g_1260.s5", print_hash_value);
    transparent_crc(p_1354->g_1260.s6, "p_1354->g_1260.s6", print_hash_value);
    transparent_crc(p_1354->g_1260.s7, "p_1354->g_1260.s7", print_hash_value);
    transparent_crc(p_1354->g_1260.s8, "p_1354->g_1260.s8", print_hash_value);
    transparent_crc(p_1354->g_1260.s9, "p_1354->g_1260.s9", print_hash_value);
    transparent_crc(p_1354->g_1260.sa, "p_1354->g_1260.sa", print_hash_value);
    transparent_crc(p_1354->g_1260.sb, "p_1354->g_1260.sb", print_hash_value);
    transparent_crc(p_1354->g_1260.sc, "p_1354->g_1260.sc", print_hash_value);
    transparent_crc(p_1354->g_1260.sd, "p_1354->g_1260.sd", print_hash_value);
    transparent_crc(p_1354->g_1260.se, "p_1354->g_1260.se", print_hash_value);
    transparent_crc(p_1354->g_1260.sf, "p_1354->g_1260.sf", print_hash_value);
    transparent_crc(p_1354->g_1276, "p_1354->g_1276", print_hash_value);
    transparent_crc(p_1354->g_1286.s0, "p_1354->g_1286.s0", print_hash_value);
    transparent_crc(p_1354->g_1286.s1, "p_1354->g_1286.s1", print_hash_value);
    transparent_crc(p_1354->g_1286.s2, "p_1354->g_1286.s2", print_hash_value);
    transparent_crc(p_1354->g_1286.s3, "p_1354->g_1286.s3", print_hash_value);
    transparent_crc(p_1354->g_1286.s4, "p_1354->g_1286.s4", print_hash_value);
    transparent_crc(p_1354->g_1286.s5, "p_1354->g_1286.s5", print_hash_value);
    transparent_crc(p_1354->g_1286.s6, "p_1354->g_1286.s6", print_hash_value);
    transparent_crc(p_1354->g_1286.s7, "p_1354->g_1286.s7", print_hash_value);
    transparent_crc(p_1354->g_1311.x, "p_1354->g_1311.x", print_hash_value);
    transparent_crc(p_1354->g_1311.y, "p_1354->g_1311.y", print_hash_value);
    transparent_crc(p_1354->g_1333.f0, "p_1354->g_1333.f0", print_hash_value);
    transparent_crc(p_1354->g_1333.f1, "p_1354->g_1333.f1", print_hash_value);
    transparent_crc(p_1354->g_1333.f2, "p_1354->g_1333.f2", print_hash_value);
    transparent_crc(p_1354->g_1333.f3, "p_1354->g_1333.f3", print_hash_value);
    transparent_crc(p_1354->g_1344, "p_1354->g_1344", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1354->g_1346[i][j][k], "p_1354->g_1346[i][j][k]", print_hash_value);

            }
        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
