// --atomics 78 ---fake_divergence -g 48,78,2 -l 6,13,2
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


// Seed: 98

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
};

struct S1 {
    int32_t g_4;
    volatile uint64_t g_12;
    int64_t g_18[10];
    volatile int32_t g_21;
    int32_t g_22;
    uint32_t g_56[10];
    uint64_t g_72;
    union U0 g_82[7];
    int16_t g_93;
    int16_t g_103;
    int16_t * volatile g_102;
    uint32_t g_105;
    int64_t g_112;
    uint32_t g_125;
    uint8_t g_127;
    int64_t g_128;
    uint32_t g_130;
    int32_t g_133;
    uint8_t g_181;
    int64_t g_183;
    int32_t * volatile g_192;
    int8_t g_203;
    int8_t g_214;
    volatile int32_t g_215;
    int32_t g_216;
    volatile int8_t g_217;
    volatile int32_t g_218;
    uint32_t g_221;
    uint32_t *g_238;
    uint32_t *g_239;
    int8_t g_240;
    int16_t g_243;
    int32_t * volatile g_246;
    int32_t g_289;
    uint64_t g_298;
    int32_t *g_306;
    int32_t **g_305;
    int8_t *g_318;
    int16_t g_319;
    volatile uint32_t g_327;
    int16_t *g_428[7];
    int16_t **g_427;
    volatile uint64_t g_440;
    int32_t g_455;
    uint16_t g_518[1];
    uint8_t *g_542[4];
    uint8_t ** volatile g_541[1];
    int32_t *g_585;
    int32_t ** volatile g_584;
    int32_t **g_668;
    uint16_t *g_692[8][5][6];
    uint16_t **g_691;
    uint16_t *** volatile g_690[4][7][5];
    int32_t g_767;
    int64_t g_768[4][5][9];
    int64_t g_769;
    int64_t g_770;
    volatile uint16_t g_771;
    uint64_t g_791;
    volatile int32_t g_814;
    uint8_t g_815;
    uint32_t g_879;
    int32_t * volatile g_884;
    int32_t * volatile g_885;
    uint16_t g_921;
    int8_t **g_941;
    uint8_t g_970;
    int8_t g_979;
    int32_t **g_990[7][8][4];
    int32_t *g_996[5];
    union U0 *g_999;
    union U0 ** volatile g_998;
    int32_t *g_1012[9];
    int16_t * volatile * volatile g_1043;
    int16_t * volatile * volatile *g_1042;
    int16_t * volatile * volatile **g_1041;
    uint64_t *g_1049;
    int8_t ***g_1068[5][7][5];
    int8_t ****g_1067;
    volatile int8_t g_1182;
    int32_t g_1218;
    uint32_t g_1225[8];
    uint8_t g_1240;
    int64_t *g_1243[3];
    volatile int8_t g_1324[1];
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S1 * p_1390);
int32_t  func_25(uint16_t  p_26, int32_t * p_27, int32_t ** p_28, struct S1 * p_1390);
int32_t ** func_31(int32_t  p_32, int32_t  p_33, struct S1 * p_1390);
int32_t * func_35(uint64_t  p_36, int32_t ** p_37, int16_t  p_38, int32_t * p_39, int32_t  p_40, struct S1 * p_1390);
int64_t  func_41(int32_t * p_42, uint32_t  p_43, struct S1 * p_1390);
uint32_t  func_50(uint32_t  p_51, int64_t  p_52, uint32_t  p_53, struct S1 * p_1390);
union U0  func_57(int32_t  p_58, int32_t * p_59, struct S1 * p_1390);
int32_t  func_60(uint32_t * p_61, uint32_t * p_62, struct S1 * p_1390);
uint32_t * func_63(uint32_t * p_64, int32_t * p_65, uint32_t  p_66, int32_t  p_67, uint64_t  p_68, struct S1 * p_1390);
uint32_t * func_77(int64_t  p_78, union U0  p_79, int32_t  p_80, uint32_t  p_81, struct S1 * p_1390);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1390->g_12 p_1390->g_4 p_1390->g_72 p_1390->g_21 p_1390->g_82 p_1390->g_82.f0 p_1390->g_18 p_1390->g_93 p_1390->g_102 p_1390->g_105 p_1390->g_103 p_1390->g_128 p_1390->g_22 p_1390->g_130 p_1390->g_133 p_1390->g_192 p_1390->g_125 p_1390->g_221 p_1390->g_56 p_1390->g_112 p_1390->g_240 p_1390->g_243 p_1390->g_246 p_1390->g_214 p_1390->g_216 p_1390->g_318 p_1390->g_319 p_1390->g_427 p_1390->g_428 p_1390->g_541 p_1390->g_518 p_1390->g_584 p_1390->g_289 p_1390->g_585 p_1390->g_183 p_1390->g_455 p_1390->g_203 p_1390->g_440 p_1390->g_218 p_1390->g_306 p_1390->g_771 p_1390->g_767 p_1390->g_769 p_1390->g_791 p_1390->g_815 p_1390->g_691 p_1390->g_879 p_1390->g_885 p_1390->g_921 p_1390->g_127 p_1390->g_768 p_1390->g_181 p_1390->g_970 p_1390->g_941 p_1390->g_998 p_1390->g_1012 p_1390->g_298 p_1390->g_1041 p_1390->g_1067 p_1390->g_1042 p_1390->g_217 p_1390->g_327 p_1390->g_1049 p_1390->g_1043 p_1390->g_238 p_1390->g_692 p_1390->g_1182 p_1390->g_1240
 * writes: p_1390->g_12 p_1390->g_18 p_1390->g_4 p_1390->g_22 p_1390->g_56 p_1390->g_72 p_1390->g_93 p_1390->g_105 p_1390->g_112 p_1390->g_127 p_1390->g_128 p_1390->g_130 p_1390->g_133 p_1390->g_181 p_1390->g_183 p_1390->g_21 p_1390->g_203 p_1390->g_221 p_1390->g_238 p_1390->g_239 p_1390->g_240 p_1390->g_103 p_1390->g_243 p_1390->g_216 p_1390->g_125 p_1390->g_518 p_1390->g_214 p_1390->g_585 p_1390->g_298 p_1390->g_289 p_1390->g_305 p_1390->g_668 p_1390->g_771 p_1390->g_767 p_1390->g_815 p_1390->g_692 p_1390->g_768 p_1390->g_319 p_1390->g_941 p_1390->g_970 p_1390->g_996 p_1390->g_999 p_1390->g_455 p_1390->g_1049 p_1390->g_921 p_1390->g_1067 p_1390->g_769 p_1390->g_770 p_1390->g_1243 p_1390->g_879 p_1390->g_1218
 */
int32_t  func_1(struct S1 * p_1390)
{ /* block id: 4 */
    int32_t *l_3 = &p_1390->g_4;
    int32_t **l_2 = &l_3;
    int32_t *l_5 = &p_1390->g_4;
    int32_t *l_6 = &p_1390->g_4;
    int32_t *l_7 = &p_1390->g_4;
    int32_t *l_8 = &p_1390->g_4;
    int32_t *l_9 = &p_1390->g_4;
    int32_t *l_10 = &p_1390->g_4;
    int32_t *l_11[7] = {&p_1390->g_4,&p_1390->g_4,&p_1390->g_4,&p_1390->g_4,&p_1390->g_4,&p_1390->g_4,&p_1390->g_4};
    int32_t *l_17 = &p_1390->g_4;
    int32_t l_895[8][2][10] = {{{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L},{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L}},{{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L},{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L}},{{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L},{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L}},{{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L},{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L}},{{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L},{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L}},{{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L},{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L}},{{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L},{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L}},{{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L},{0x69BBDC47L,0L,0L,(-1L),0x69BBDC47L,0L,0L,0x45387539L,(-1L),0L}}};
    union U0 *l_997 = (void*)0;
    uint8_t l_1083 = 253UL;
    uint64_t *l_1100 = &p_1390->g_298;
    uint64_t **l_1116 = &p_1390->g_1049;
    int8_t *l_1223 = &p_1390->g_203;
    uint32_t l_1277 = 1UL;
    uint8_t **l_1302 = &p_1390->g_542[2];
    int32_t *l_1347 = &p_1390->g_1218;
    uint16_t l_1373[5][9][5] = {{{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL}},{{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL}},{{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL}},{{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL}},{{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL},{1UL,1UL,0x3DFAL,0UL,65535UL}}};
    uint16_t l_1386 = 1UL;
    int16_t l_1387 = 0x185DL;
    int i, j, k;
    (*l_2) = (void*)0;
    p_1390->g_12--;
    if (p_1390->g_12)
    { /* block id: 7 */
        uint8_t l_887 = 0xAAL;
        uint16_t l_890 = 7UL;
        int16_t ***l_963 = &p_1390->g_427;
        int16_t ***l_964[8];
        int32_t l_966 = 0x13C99B0CL;
        int32_t l_980[3];
        int32_t l_1039[3];
        uint64_t *l_1048 = &p_1390->g_791;
        int16_t ****l_1054 = &l_963;
        int8_t ****l_1070 = (void*)0;
        int8_t l_1111 = 0x75L;
        int16_t l_1113 = 1L;
        int16_t l_1162[3];
        uint8_t l_1234[1];
        int16_t l_1237[6];
        uint32_t l_1355 = 0xDF2EDD55L;
        int32_t l_1357 = 1L;
        int i;
        for (i = 0; i < 8; i++)
            l_964[i] = &p_1390->g_427;
        for (i = 0; i < 3; i++)
            l_980[i] = 1L;
        for (i = 0; i < 3; i++)
            l_1039[i] = 0x0E0B14EAL;
        for (i = 0; i < 3; i++)
            l_1162[i] = 0x5605L;
        for (i = 0; i < 1; i++)
            l_1234[i] = 0UL;
        for (i = 0; i < 6; i++)
            l_1237[i] = (-1L);
        if ((safe_lshift_func_uint8_t_u_s((p_1390->g_18[4] = (l_17 == (void*)0)), 1)))
        { /* block id: 9 */
            int32_t *l_30 = &p_1390->g_4;
            int8_t l_922[9][6] = {{0x1FL,0x1FL,0x17L,0x14L,0x79L,1L},{0x1FL,0x1FL,0x17L,0x14L,0x79L,1L},{0x1FL,0x1FL,0x17L,0x14L,0x79L,1L},{0x1FL,0x1FL,0x17L,0x14L,0x79L,1L},{0x1FL,0x1FL,0x17L,0x14L,0x79L,1L},{0x1FL,0x1FL,0x17L,0x14L,0x79L,1L},{0x1FL,0x1FL,0x17L,0x14L,0x79L,1L},{0x1FL,0x1FL,0x17L,0x14L,0x79L,1L},{0x1FL,0x1FL,0x17L,0x14L,0x79L,1L}};
            int32_t l_925 = 0L;
            int32_t l_965 = 1L;
            int32_t l_968[5] = {0x31F4B79AL,0x31F4B79AL,0x31F4B79AL,0x31F4B79AL,0x31F4B79AL};
            uint8_t *l_977[5];
            int8_t l_978[10][10][2] = {{{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)}},{{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)}},{{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)}},{{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)}},{{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)}},{{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)}},{{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)}},{{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)}},{{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)}},{{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)},{1L,(-6L)}}};
            uint8_t l_981 = 0xEBL;
            int32_t *l_988[2];
            int32_t **l_987 = &l_988[1];
            int32_t ***l_989 = (void*)0;
            int32_t *l_995 = &p_1390->g_455;
            int32_t l_1002 = 0x5559941DL;
            int32_t *l_1013[1];
            int8_t ***l_1034 = &p_1390->g_941;
            int64_t l_1058 = 0x56ABEAD3DE258261L;
            int64_t l_1059[8][7] = {{(-5L),(-9L),(-9L),(-5L),0x4D0B864B1EC7DACAL,3L,3L},{(-5L),(-9L),(-9L),(-5L),0x4D0B864B1EC7DACAL,3L,3L},{(-5L),(-9L),(-9L),(-5L),0x4D0B864B1EC7DACAL,3L,3L},{(-5L),(-9L),(-9L),(-5L),0x4D0B864B1EC7DACAL,3L,3L},{(-5L),(-9L),(-9L),(-5L),0x4D0B864B1EC7DACAL,3L,3L},{(-5L),(-9L),(-9L),(-5L),0x4D0B864B1EC7DACAL,3L,3L},{(-5L),(-9L),(-9L),(-5L),0x4D0B864B1EC7DACAL,3L,3L},{(-5L),(-9L),(-9L),(-5L),0x4D0B864B1EC7DACAL,3L,3L}};
            int8_t l_1060 = 1L;
            uint16_t ***l_1071 = &p_1390->g_691;
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_977[i] = &p_1390->g_970;
            for (i = 0; i < 2; i++)
                l_988[i] = (void*)0;
            for (i = 0; i < 1; i++)
                l_1013[i] = &p_1390->g_289;
            for (p_1390->g_4 = 0; (p_1390->g_4 > (-29)); p_1390->g_4--)
            { /* block id: 12 */
                int32_t l_29 = 0L;
                int32_t **l_587 = &l_3;
                int16_t l_934 = (-1L);
                int32_t l_943 = 0x2853CAEEL;
                for (p_1390->g_22 = 0; (p_1390->g_22 >= (-9)); p_1390->g_22--)
                { /* block id: 15 */
                    int32_t *l_34 = &l_29;
                    uint32_t *l_54 = (void*)0;
                    uint32_t *l_55[10] = {&p_1390->g_56[2],&p_1390->g_56[2],&p_1390->g_56[2],&p_1390->g_56[2],&p_1390->g_56[2],&p_1390->g_56[2],&p_1390->g_56[2],&p_1390->g_56[2],&p_1390->g_56[2],&p_1390->g_56[2]};
                    uint16_t *l_517 = &p_1390->g_518[0];
                    int i;
                    if (func_25(l_29, l_30, func_31(((((l_34 != ((*l_2) = func_35(((func_41(&p_1390->g_22, (safe_sub_func_uint64_t_u_u((((GROUP_DIVERGE(2, 1) == (((*l_517) = (+(safe_mod_func_int16_t_s_s((safe_mod_func_int32_t_s_s(l_29, func_50((p_1390->g_56[2] = (!4294967295UL)), (func_57(l_29, &p_1390->g_4, p_1390) , p_1390->g_21), p_1390->g_18[3], p_1390))), (*l_34))))) ^ 7L)) , (*l_34)) , (*l_6)), p_1390->g_22)), p_1390) , p_1390->g_240) , p_1390->g_518[0]), l_587, (*l_34), &p_1390->g_4, p_1390->g_289, p_1390))) , (*l_34)) >= 0x4DF6378DL) > (-8L)), p_1390->g_18[4], p_1390), p_1390))
                    { /* block id: 398 */
                        l_887--;
                    }
                    else
                    { /* block id: 400 */
                        (*l_587) = (void*)0;
                        return l_887;
                    }
                    (*l_34) &= ((*p_1390->g_885) = l_890);
                }
                (*p_1390->g_885) = l_890;
                for (p_1390->g_103 = 15; (p_1390->g_103 < 19); p_1390->g_103 = safe_add_func_uint64_t_u_u(p_1390->g_103, 2))
                { /* block id: 410 */
                    uint32_t l_896 = 4294967286UL;
                    uint8_t *l_920 = &p_1390->g_815;
                    int64_t *l_923 = &p_1390->g_768[2][3][1];
                    uint8_t *l_924[8] = {&p_1390->g_181,&p_1390->g_127,&p_1390->g_181,&p_1390->g_181,&p_1390->g_127,&p_1390->g_181,&p_1390->g_181,&p_1390->g_127};
                    int64_t l_926 = (-3L);
                    int i;
                    for (p_1390->g_319 = 11; (p_1390->g_319 < 15); p_1390->g_319 = safe_add_func_int32_t_s_s(p_1390->g_319, 9))
                    { /* block id: 413 */
                        uint16_t l_899 = 3UL;
                        if (l_895[4][1][9])
                            break;
                        ++l_896;
                        l_899--;
                    }
                    l_926 ^= (safe_unary_minus_func_uint8_t_u((l_925 &= (((*l_923) = (+(((safe_mul_func_int16_t_s_s((*p_1390->g_102), (((safe_add_func_uint16_t_u_u(((((void*)0 != &p_1390->g_298) || (*l_30)) >= ((((0x417CL == ((safe_unary_minus_func_uint8_t_u(GROUP_DIVERGE(1, 1))) == (safe_mul_func_int16_t_s_s(((((safe_mod_func_int16_t_s_s(((**p_1390->g_427) = ((**p_1390->g_427) , (~0x5729L))), (safe_div_func_int16_t_s_s((safe_mod_func_int8_t_s_s(((((((safe_mul_func_int16_t_s_s(l_887, (((safe_lshift_func_uint8_t_u_u(((*l_920) = (*l_30)), 5)) , &l_11[5]) == &l_6))) , GROUP_DIVERGE(2, 1)) | p_1390->g_921) && p_1390->g_243) ^ 18446744073709551612UL) && GROUP_DIVERGE(2, 1)), l_896)), 0x474AL)))) , l_29) , (*l_30)) & (*l_7)), 0x88FBL)))) , l_896) > (*p_1390->g_318)) <= (*l_5))), 0x2715L)) <= (*l_30)) >= 0x3D70B9C2F1FF71EEL))) >= l_922[7][4]) > GROUP_DIVERGE(0, 1)))) < 1UL))));
                    for (p_1390->g_127 = 0; (p_1390->g_127 <= 3); p_1390->g_127 += 1)
                    { /* block id: 425 */
                        int i, j, k;
                        if (l_922[(p_1390->g_127 + 2)][(p_1390->g_127 + 2)])
                            break;
                        return p_1390->g_768[p_1390->g_127][(p_1390->g_127 + 1)][(p_1390->g_127 + 1)];
                    }
                }
                for (p_1390->g_128 = 16; (p_1390->g_128 >= (-11)); --p_1390->g_128)
                { /* block id: 432 */
                    int8_t **l_940 = &p_1390->g_318;
                    int8_t ***l_939[5] = {&l_940,&l_940,&l_940,&l_940,&l_940};
                    int32_t l_942 = (-1L);
                    int32_t l_967 = 1L;
                    int32_t l_969 = 2L;
                    int i;
                    if (((255UL & (*l_17)) >= (safe_unary_minus_func_int32_t_s(((((safe_rshift_func_int8_t_s_s(((safe_add_func_uint64_t_u_u((p_1390->g_72 ^= l_934), (((void*)0 == &p_1390->g_238) == (safe_div_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(l_890, FAKE_DIVERGE(p_1390->local_0_offset, get_local_id(0), 10))), ((((p_1390->g_941 = &p_1390->g_318) == &p_1390->g_318) ^ (l_942 > GROUP_DIVERGE(0, 1))) , l_890)))))) == 4UL), 6)) || p_1390->g_791) | p_1390->g_921) == 0L)))))
                    { /* block id: 435 */
                        return (*l_5);
                    }
                    else
                    { /* block id: 437 */
                        uint32_t l_944 = 2UL;
                        uint32_t *l_951 = &p_1390->g_105;
                        uint8_t *l_962 = &p_1390->g_181;
                        if ((*p_1390->g_246))
                            break;
                        --l_944;
                        (*p_1390->g_885) = (l_942 ^ (l_942 && (((safe_sub_func_int16_t_s_s((((((safe_add_func_uint32_t_u_u(1UL, ((*l_951) |= 4294967292UL))) ^ l_887) >= ((((safe_mod_func_int8_t_s_s((((*p_1390->g_102) && (safe_mod_func_int8_t_s_s((safe_div_func_int16_t_s_s((safe_add_func_uint64_t_u_u(0xF00157DC1FF3BEA2L, (((*l_962) ^= (*l_8)) <= ((l_963 != l_964[0]) < 0x9D30324009C278E6L)))), l_887)), (*l_9)))) != 2L), (*p_1390->g_318))) == (-1L)) != 4UL) <= 0x0DL)) && l_944) && 0x4CC9E827C1ED6FC1L), (*l_30))) , (void*)0) != &p_1390->g_298)));
                    }
                    ++p_1390->g_970;
                    (*l_587) = &l_966;
                }
            }
            if ((((((**p_1390->g_941) = ((safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((--l_981), (-10L))), ((p_1390->g_105 = p_1390->g_771) && (0L <= (safe_unary_minus_func_int8_t_s((((18446744073709551612UL == ((safe_div_func_int8_t_s_s((((*l_987) = &p_1390->g_455) == (p_1390->g_996[3] = l_995)), (**p_1390->g_941))) <= 0x3CCE0B7BL)) <= l_980[1]) == (*l_30)))))))) || (*l_30))) & (-1L)) & 65534UL) , l_980[1]))
            { /* block id: 454 */
                (*p_1390->g_998) = l_997;
            }
            else
            { /* block id: 456 */
                uint32_t l_1029 = 0x7FE5058EL;
                int32_t l_1038 = 0x2E41C374L;
                int16_t ****l_1040 = &l_963;
                uint64_t *l_1046[1][3];
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_1046[i][j] = &p_1390->g_72;
                }
                for (p_1390->g_181 = 0; (p_1390->g_181 <= 56); p_1390->g_181++)
                { /* block id: 459 */
                    for (l_966 = 0; (l_966 <= 0); l_966 += 1)
                    { /* block id: 462 */
                        int i;
                        return p_1390->g_518[l_966];
                    }
                    (*l_9) ^= 0x0D9B5331L;
                    (*l_7) |= ((**p_1390->g_427) & l_1002);
                }
                for (p_1390->g_130 = 0; (p_1390->g_130 <= 0); p_1390->g_130 += 1)
                { /* block id: 470 */
                    int32_t *l_1011 = &p_1390->g_289;
                    int32_t l_1024 = (-1L);
                    int32_t l_1025 = 0x41F2FE4BL;
                    int32_t l_1026 = 1L;
                    int8_t *****l_1069 = &p_1390->g_1067;
                    uint16_t ***l_1072 = (void*)0;
                    for (p_1390->g_455 = 0; (p_1390->g_455 <= 1); p_1390->g_455 += 1)
                    { /* block id: 473 */
                        int8_t l_1027 = 1L;
                        int32_t l_1028 = 0x7AFF0AB5L;
                        int8_t ****l_1035 = &l_1034;
                        uint64_t **l_1047 = &l_1046[0][0];
                        int16_t ****l_1055 = &l_964[5];
                        uint16_t *l_1056 = (void*)0;
                        uint16_t *l_1057 = &p_1390->g_921;
                        int i;
                        (*l_9) = (*l_30);
                        l_965 |= ((+((safe_mod_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s((((safe_mod_func_int8_t_s_s(((**p_1390->g_941) |= 0x43L), (1UL & ((((l_1011 != (l_1013[0] = p_1390->g_1012[7])) != (safe_add_func_uint16_t_u_u(((~(((((((0UL & (((safe_mul_func_uint16_t_u_u((p_1390->g_298 && (safe_sub_func_uint32_t_u_u((l_966 = (safe_sub_func_int64_t_s_s(((++l_1029) , (safe_add_func_int8_t_s_s((((*l_1035) = l_1034) == &p_1390->g_941), (safe_mul_func_uint16_t_u_u(65530UL, (*p_1390->g_102)))))), l_1038))), 0x6E68BD38L))), l_1028)) && l_1039[0]) > 0xBF4042AEF3BC8298L)) , 0xA5283863L) , l_1040) != p_1390->g_1041) & l_980[0]) == l_1025) , (*l_30))) || (-1L)), (*l_10)))) <= 0x324A7609L) , (*l_10))))) > p_1390->g_125) , l_1025), 0xEFL)) != 0x0E88L), l_1025)), 65535UL)) < l_887)) | l_1028);
                        l_1059[1][5] |= (safe_add_func_uint8_t_u_u((((*l_1047) = l_1046[0][0]) != (p_1390->g_1049 = l_1048)), (safe_rshift_func_uint16_t_u_u(65535UL, (p_1390->g_518[0] ^ ((((*l_1057) = (safe_mul_func_uint8_t_u_u(((*l_9) && (((*l_30) < 0x5914L) <= 0x0AL)), ((****l_1035) &= (l_1054 != l_1055))))) , l_1058) > 0xC285L))))));
                        l_1028 = ((*l_8) = l_1060);
                    }
                    l_980[1] |= ((*p_1390->g_318) | ((safe_mul_func_int16_t_s_s(((safe_mul_func_int16_t_s_s(1L, (((*l_1069) = p_1390->g_1067) == (l_890 , l_1070)))) || ((l_1072 = l_1071) != ((safe_mul_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_s((l_1025 &= ((safe_mod_func_int64_t_s_s((((((!((*l_10) > l_1024)) , (safe_sub_func_int32_t_s_s((((!(safe_unary_minus_func_int64_t_s((0UL >= l_1038)))) & 0x06L) | (*l_7)), FAKE_DIVERGE(p_1390->global_1_offset, get_global_id(1), 10)))) != (*p_1390->g_885)) & p_1390->g_18[4]) , l_1029), 2L)) != p_1390->g_105)), (*l_8))) ^ 1UL), (**p_1390->g_427))) , &p_1390->g_691))), 0x43D7L)) , (**p_1390->g_941)));
                    return (*l_30);
                }
            }
            return l_980[1];
        }
        else
        { /* block id: 497 */
            int32_t l_1082[9];
            uint64_t **l_1101 = &l_1100;
            uint32_t *l_1106 = &p_1390->g_130;
            uint8_t *l_1112 = &p_1390->g_815;
            int32_t l_1135 = 5L;
            int32_t l_1137 = 0x18676541L;
            int32_t *l_1138 = &l_980[2];
            uint8_t l_1163 = 0xEFL;
            uint32_t l_1274[4];
            uint32_t l_1300[6] = {4294967289UL,4294967295UL,4294967289UL,4294967289UL,4294967295UL,4294967289UL};
            int i;
            for (i = 0; i < 9; i++)
                l_1082[i] = (-1L);
            for (i = 0; i < 4; i++)
                l_1274[i] = 0xF04600F9L;
            l_1083++;
            if ((safe_rshift_func_int16_t_s_s((FAKE_DIVERGE(p_1390->global_0_offset, get_global_id(0), 10) , ((safe_rshift_func_uint16_t_u_u((FAKE_DIVERGE(p_1390->global_2_offset, get_global_id(2), 10) , (((((safe_div_func_uint16_t_u_u((1UL & (l_1082[0] = (65535UL < ((((*p_1390->g_585) = (safe_lshift_func_uint8_t_u_s((safe_mod_func_uint32_t_u_u((safe_sub_func_uint8_t_u_u((safe_div_func_uint32_t_u_u((l_1082[1] >= ((*l_1112) = (((((FAKE_DIVERGE(p_1390->global_2_offset, get_global_id(2), 10) > (((l_980[1] , &p_1390->g_298) != ((*l_1101) = l_1100)) < (((l_1082[0] , (safe_lshift_func_uint8_t_u_s(((safe_mod_func_uint32_t_u_u(((*l_1106)--), (safe_div_func_int64_t_s_s(((void*)0 == (*p_1390->g_1041)), l_1111)))) || p_1390->g_214), 4))) || 0x1CL) , l_966))) | p_1390->g_921) , &p_1390->g_691) == &p_1390->g_691) == p_1390->g_217))), (*l_6))), 7UL)), l_1082[7])), 7))) && l_1082[0]) , l_1039[0])))), 0x2D48L)) || 0xC55D78821DDD1CC2L) , p_1390->g_289) <= FAKE_DIVERGE(p_1390->group_1_offset, get_group_id(1), 10)) >= l_1113)), (*l_7))) >= 8UL)), 15)))
            { /* block id: 504 */
                uint32_t l_1121 = 0x64E54102L;
                uint16_t *l_1122 = &p_1390->g_518[0];
                uint16_t *l_1131 = &p_1390->g_921;
                uint32_t *l_1132 = (void*)0;
                uint32_t *l_1133 = (void*)0;
                uint32_t *l_1134[10][9] = {{&p_1390->g_105,&p_1390->g_105,&l_1121,(void*)0,&p_1390->g_105,(void*)0,&l_1121,&p_1390->g_105,&p_1390->g_105},{&p_1390->g_105,&p_1390->g_105,&l_1121,(void*)0,&p_1390->g_105,(void*)0,&l_1121,&p_1390->g_105,&p_1390->g_105},{&p_1390->g_105,&p_1390->g_105,&l_1121,(void*)0,&p_1390->g_105,(void*)0,&l_1121,&p_1390->g_105,&p_1390->g_105},{&p_1390->g_105,&p_1390->g_105,&l_1121,(void*)0,&p_1390->g_105,(void*)0,&l_1121,&p_1390->g_105,&p_1390->g_105},{&p_1390->g_105,&p_1390->g_105,&l_1121,(void*)0,&p_1390->g_105,(void*)0,&l_1121,&p_1390->g_105,&p_1390->g_105},{&p_1390->g_105,&p_1390->g_105,&l_1121,(void*)0,&p_1390->g_105,(void*)0,&l_1121,&p_1390->g_105,&p_1390->g_105},{&p_1390->g_105,&p_1390->g_105,&l_1121,(void*)0,&p_1390->g_105,(void*)0,&l_1121,&p_1390->g_105,&p_1390->g_105},{&p_1390->g_105,&p_1390->g_105,&l_1121,(void*)0,&p_1390->g_105,(void*)0,&l_1121,&p_1390->g_105,&p_1390->g_105},{&p_1390->g_105,&p_1390->g_105,&l_1121,(void*)0,&p_1390->g_105,(void*)0,&l_1121,&p_1390->g_105,&p_1390->g_105},{&p_1390->g_105,&p_1390->g_105,&l_1121,(void*)0,&p_1390->g_105,(void*)0,&l_1121,&p_1390->g_105,&p_1390->g_105}};
                int64_t *l_1136 = &p_1390->g_769;
                int i, j;
                (*l_9) = (l_1137 &= (((safe_div_func_int8_t_s_s((((p_1390->g_105 ^= ((((****l_1054) ^= (((l_1116 == (((safe_lshift_func_int8_t_s_s(((((*l_1136) &= (safe_add_func_uint16_t_u_u((+l_1121), (((*l_1122)--) ^ ((safe_rshift_func_int8_t_s_u(((*l_6) >= 0x3BL), ((safe_mul_func_uint8_t_u_u(((((*l_1106) |= l_1082[0]) <= l_1082[1]) < (FAKE_DIVERGE(p_1390->local_1_offset, get_local_id(1), 10) && ((l_1135 = ((((*l_1131) = (p_1390->g_327 , (safe_div_func_int16_t_s_s((*l_5), (((((&l_1083 == &l_887) && p_1390->g_133) & l_1121) ^ 0x1393D45A0966B6D2L) , 1UL))))) | 0x7B9DL) && p_1390->g_221)) | l_1082[3]))), l_1082[4])) & 0x53L))) > l_887))))) > (*p_1390->g_1049)) == l_890), l_1113)) <= p_1390->g_103) , (void*)0)) ^ (*p_1390->g_318)) == 0x15L)) || l_1121) != 0x6632EC9939363EBEL)) || (**p_1390->g_584)) < p_1390->g_56[7]), 0x55L)) && (*p_1390->g_1049)) || (*p_1390->g_585)));
                return (*p_1390->g_246);
            }
            else
            { /* block id: 515 */
                int8_t l_1149 = 0x26L;
                uint16_t *l_1176 = &p_1390->g_921;
                uint32_t l_1179 = 0xAD264AF7L;
                union U0 **l_1181 = &l_997;
                uint8_t l_1204 = 0UL;
                int16_t l_1224 = 7L;
                int32_t l_1227 = 1L;
                uint64_t l_1276 = 0xE9CFEF8B396492D8L;
                uint16_t l_1278 = 65529UL;
                (*l_2) = l_1138;
                if (((((safe_add_func_uint8_t_u_u((safe_sub_func_int8_t_s_s(((void*)0 == (*p_1390->g_1043)), (safe_div_func_uint64_t_u_u((safe_add_func_int8_t_s_s(((((*p_1390->g_238) , (((safe_div_func_int16_t_s_s((((((l_1111 >= p_1390->g_112) <= l_1149) ^ ((safe_add_func_int16_t_s_s((safe_lshift_func_int8_t_s_s(((safe_div_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u(0x6058L, 0)), ((**p_1390->g_941) = (safe_rshift_func_uint8_t_u_s((safe_lshift_func_int16_t_s_s((*l_1138), 2)), ((*l_1138) , (*l_1138))))))) > 0xE9F77AC7L), (*l_1138))), l_966)) > FAKE_DIVERGE(p_1390->global_2_offset, get_global_id(2), 10))) && l_1162[2]) > l_1113), (**p_1390->g_427))) , l_966) , 0L)) && l_1149) ^ l_1113), 1L)), p_1390->g_93)))), (*l_3))) || l_1163) , 0L) ^ p_1390->g_289))
                { /* block id: 518 */
                    union U0 **l_1168[10][9] = {{(void*)0,(void*)0,&p_1390->g_999,&p_1390->g_999,&l_997,&p_1390->g_999,&p_1390->g_999,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1390->g_999,&p_1390->g_999,&l_997,&p_1390->g_999,&p_1390->g_999,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1390->g_999,&p_1390->g_999,&l_997,&p_1390->g_999,&p_1390->g_999,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1390->g_999,&p_1390->g_999,&l_997,&p_1390->g_999,&p_1390->g_999,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1390->g_999,&p_1390->g_999,&l_997,&p_1390->g_999,&p_1390->g_999,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1390->g_999,&p_1390->g_999,&l_997,&p_1390->g_999,&p_1390->g_999,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1390->g_999,&p_1390->g_999,&l_997,&p_1390->g_999,&p_1390->g_999,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1390->g_999,&p_1390->g_999,&l_997,&p_1390->g_999,&p_1390->g_999,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1390->g_999,&p_1390->g_999,&l_997,&p_1390->g_999,&p_1390->g_999,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1390->g_999,&p_1390->g_999,&l_997,&p_1390->g_999,&p_1390->g_999,(void*)0,(void*)0}};
                    int64_t *l_1171 = &p_1390->g_128;
                    int32_t l_1180 = 0x484DF757L;
                    int i, j;
                    l_1138 = (*l_2);
                    (*p_1390->g_585) = ((*l_3) = ((safe_mul_func_int16_t_s_s(((***p_1390->g_1042) = ((p_1390->g_216 ^ 0x1F61E649967F8DA8L) <= (safe_add_func_int32_t_s_s((l_1168[4][8] != (((((safe_rshift_func_uint16_t_u_u((*l_1138), ((+(((*l_1171) = p_1390->g_768[0][1][1]) < (safe_lshift_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_u((((p_1390->g_770 = (l_1176 == ((*p_1390->g_691) = (*p_1390->g_691)))) < (*p_1390->g_1049)) > ((((*l_5) = (safe_div_func_int8_t_s_s((*l_7), GROUP_DIVERGE(1, 1)))) , 0x1344L) < l_1179)), l_1179)) ^ p_1390->g_56[7]), 1)))) | p_1390->g_18[1]))) , l_1180) , l_1162[2]) <= (*l_1138)) , l_1181)), p_1390->g_1182)))), l_1180)) >= l_1180));
                }
                else
                { /* block id: 527 */
                    int8_t **l_1187 = &p_1390->g_318;
                    int32_t l_1226 = 0x790BF6D3L;
                    uint8_t l_1259 = 0xA0L;
                    int32_t l_1279[8][2] = {{(-6L),(-6L)},{(-6L),(-6L)},{(-6L),(-6L)},{(-6L),(-6L)},{(-6L),(-6L)},{(-6L),(-6L)},{(-6L),(-6L)},{(-6L),(-6L)}};
                    int i, j;
                    for (l_1135 = 20; (l_1135 != (-29)); --l_1135)
                    { /* block id: 530 */
                        int8_t ***l_1188 = &p_1390->g_941;
                        uint32_t l_1203 = 0x87C07C9EL;
                        int32_t l_1205 = (-1L);
                        int32_t l_1206 = 0x52E6E364L;
                        int32_t l_1207[5];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_1207[i] = 0x4EF55EE4L;
                        if (l_1179)
                            break;
                    }
                    l_1227 = ((*l_1138) = (*p_1390->g_885));
                    if (((*p_1390->g_885) ^= (*l_1138)))
                    { /* block id: 547 */
                        union U0 ***l_1228 = &l_1181;
                        int32_t l_1233 = 0x720303C3L;
                        (*l_1228) = &p_1390->g_999;
                        l_1138 = func_77((safe_mul_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u(0x0DFDL, l_1233)), (l_1234[0] < (((&l_8 != (void*)0) , FAKE_DIVERGE(p_1390->group_2_offset, get_group_id(2), 10)) != (!(safe_rshift_func_int8_t_s_u(l_1237[1], ((-5L) != l_1226)))))))), func_57(((safe_rshift_func_uint16_t_u_s(l_1233, 2)) && (*l_1138)), (*p_1390->g_584), p_1390), (*p_1390->g_585), p_1390->g_298, p_1390);
                        return p_1390->g_1240;
                    }
                    else
                    { /* block id: 551 */
                        uint32_t l_1241 = 0UL;
                        int64_t *l_1242 = &p_1390->g_769;
                        union U0 l_1244 = {4294967292UL};
                        uint16_t l_1275 = 0UL;
                        l_1241 ^= ((*l_8) || 0x04BEAB4FL);
                        (*l_1138) |= (!((**p_1390->g_941) & ((((p_1390->g_1243[0] = l_1242) != l_1100) & ((**p_1390->g_941) , (((*l_1106) = ((*p_1390->g_1049) , 0x1EF993C3L)) && FAKE_DIVERGE(p_1390->global_1_offset, get_global_id(1), 10)))) , l_1179)));
                        l_1279[0][0] |= ((+(-1L)) == ((*l_1112) = ((l_1278 ^= (l_1244 , ((safe_sub_func_uint32_t_u_u(4294967288UL, (safe_rshift_func_uint16_t_u_u(((*l_8) <= (safe_rshift_func_uint8_t_u_s((((safe_add_func_uint32_t_u_u(((*l_1106) = (safe_add_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s((safe_rshift_func_uint8_t_u_s(l_1259, 1)), (l_1227 = ((safe_div_func_uint32_t_u_u((((((safe_add_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((*l_1138), ((**l_1187) ^= ((*l_1223) ^= (safe_lshift_func_int16_t_s_s(((safe_add_func_int64_t_s_s((*l_1138), ((safe_rshift_func_int16_t_s_s((safe_mod_func_uint32_t_u_u(((void*)0 != &p_1390->g_1067), l_1226)), (**p_1390->g_427))) && l_1259))) , l_1226), (***p_1390->g_1042))))))), (*l_6))) , 0xAB48E48AL) , 0x9EC7L) ^ (*l_1138)) > p_1390->g_105), p_1390->g_181)) & l_1274[2])))), 0x70L))), l_1275)) & l_1226) , l_1276), l_1204))), l_1277)))) , l_1039[0]))) || 0x477F930AL)));
                        (*l_9) = ((*p_1390->g_585) = l_1227);
                    }
                }
                for (p_1390->g_4 = (-10); (p_1390->g_4 <= 14); p_1390->g_4 = safe_add_func_uint32_t_u_u(p_1390->g_4, 7))
                { /* block id: 569 */
                    int32_t *l_1301 = &p_1390->g_216;
                    (1 + 1);
                }
            }
            for (l_890 = 0; (l_890 <= 8); l_890 += 1)
            { /* block id: 584 */
                int64_t *l_1312[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_1312[i] = &p_1390->g_18[4];
                (*l_6) = (((*l_1112)--) || (~(safe_add_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), ((l_966 ^= (4L != ((**p_1390->g_584) &= (safe_div_func_uint32_t_u_u((*l_17), ((*l_1138) & (*p_1390->g_1049))))))) , (-3L))))));
            }
        }
        for (p_1390->g_879 = 29; (p_1390->g_879 < 40); p_1390->g_879 = safe_add_func_uint16_t_u_u(p_1390->g_879, 9))
        { /* block id: 593 */
            int8_t l_1315[9] = {0x15L,0L,0x15L,0x15L,0L,0x15L,0x15L,0L,0x15L};
            int32_t l_1318 = 0x77099E94L;
            int32_t l_1320 = 0x796464CBL;
            int32_t l_1321 = 0x30063025L;
            int32_t l_1323[3][10] = {{0x414F1B77L,0x0B58872CL,(-2L),(-1L),(-2L),0x0B58872CL,0x414F1B77L,0x6A7CF9B3L,5L,5L},{0x414F1B77L,0x0B58872CL,(-2L),(-1L),(-2L),0x0B58872CL,0x414F1B77L,0x6A7CF9B3L,5L,5L},{0x414F1B77L,0x0B58872CL,(-2L),(-1L),(-2L),0x0B58872CL,0x414F1B77L,0x6A7CF9B3L,5L,5L}};
            int64_t l_1330 = 0L;
            int64_t *l_1352 = &p_1390->g_768[3][4][4];
            int64_t *l_1353 = (void*)0;
            int64_t *l_1354 = &p_1390->g_128;
            uint16_t *l_1356 = &p_1390->g_921;
            uint32_t *l_1358 = &l_1277;
            int i, j;
            if (l_1315[3])
                break;
            if ((*l_6))
                continue;
            for (p_1390->g_125 = 0; (p_1390->g_125 >= 4); p_1390->g_125 = safe_add_func_uint64_t_u_u(p_1390->g_125, 4))
            { /* block id: 598 */
                int64_t l_1319 = 0x620AF9A73CB8C536L;
                int32_t l_1322[4][1] = {{0x40A21142L},{0x40A21142L},{0x40A21142L},{0x40A21142L}};
                uint16_t l_1325 = 65535UL;
                uint32_t *l_1338 = (void*)0;
                uint32_t *l_1339 = &p_1390->g_105;
                int i, j;
                l_1325--;
                for (p_1390->g_1218 = (-6); (p_1390->g_1218 <= (-27)); p_1390->g_1218--)
                { /* block id: 602 */
                    int64_t l_1331 = 0x6FAE2DF9B42C3A6BL;
                    int32_t l_1332 = (-1L);
                    int32_t l_1333 = (-3L);
                    uint32_t l_1334 = 4294967295UL;
                    uint64_t *l_1337 = &p_1390->g_298;
                    ++l_1334;
                    (*l_5) = ((void*)0 != l_1337);
                }
                (*l_5) ^= (((*l_1339) = 1UL) && (safe_unary_minus_func_int8_t_s(((*p_1390->g_585) <= 0x57DFCA57L))));
            }
            (*l_3) = (((*l_9) ^ (~((((*l_1358) &= (safe_lshift_func_uint16_t_u_s(((((*p_1390->g_584) = (*l_2)) != &l_1323[1][4]) ^ l_1323[2][3]), (**p_1390->g_427)))) ^ l_1237[1]) ^ (*p_1390->g_1049)))) || GROUP_DIVERGE(0, 1));
        }
    }
    else
    { /* block id: 618 */
        if ((atomic_inc(&p_1390->g_atomic_input[78 * get_linear_group_id() + 44]) == 9))
        { /* block id: 620 */
            uint8_t l_1359[3];
            int i;
            for (i = 0; i < 3; i++)
                l_1359[i] = 0x7FL;
            if (l_1359[2])
            { /* block id: 621 */
                uint32_t l_1360 = 0xEF4A5F6FL;
                int64_t l_1361 = 0L;
                l_1361 &= l_1360;
            }
            else
            { /* block id: 623 */
                uint8_t l_1362 = 0UL;
                int32_t l_1363 = (-1L);
                uint8_t l_1364[2][3][5] = {{{0xC6L,0x08L,0xC6L,0xC6L,0x08L},{0xC6L,0x08L,0xC6L,0xC6L,0x08L},{0xC6L,0x08L,0xC6L,0xC6L,0x08L}},{{0xC6L,0x08L,0xC6L,0xC6L,0x08L},{0xC6L,0x08L,0xC6L,0xC6L,0x08L},{0xC6L,0x08L,0xC6L,0xC6L,0x08L}}};
                int i, j, k;
                l_1364[0][2][2] &= (l_1363 ^= l_1362);
            }
            unsigned int result = 0;
            int l_1359_i0;
            for (l_1359_i0 = 0; l_1359_i0 < 3; l_1359_i0++) {
                result += l_1359[l_1359_i0];
            }
            atomic_add(&p_1390->g_special_values[78 * get_linear_group_id() + 44], result);
        }
        else
        { /* block id: 627 */
            (1 + 1);
        }
    }
    for (p_1390->g_298 = 0; (p_1390->g_298 <= 0); p_1390->g_298 += 1)
    { /* block id: 633 */
        int8_t l_1365 = 0x31L;
        int32_t l_1366 = 0x2DB45164L;
        int32_t l_1367 = 0x17502130L;
        int32_t l_1368 = 8L;
        int32_t l_1369 = 0x16A29756L;
        int32_t l_1370 = 0x095D38E9L;
        int32_t l_1371 = 0L;
        int32_t l_1372 = 0x5D77F94EL;
        int16_t l_1382 = 0L;
        uint32_t *l_1383 = &p_1390->g_130;
        int8_t l_1388[8][3] = {{(-3L),0x30L,0x30L},{(-3L),0x30L,0x30L},{(-3L),0x30L,0x30L},{(-3L),0x30L,0x30L},{(-3L),0x30L,0x30L},{(-3L),0x30L,0x30L},{(-3L),0x30L,0x30L},{(-3L),0x30L,0x30L}};
        uint64_t **l_1389 = &l_1100;
        int i, j;
        ++l_1373[0][3][1];
        (*l_2) = &l_895[7][0][8];
        if (l_1372)
            break;
        (*l_2) = ((((*l_5) ^ ((((((p_1390->g_105 |= ((safe_mod_func_uint32_t_u_u(((*l_1383) = (safe_rshift_func_int8_t_s_u(((*p_1390->g_885) <= (GROUP_DIVERGE(2, 1) , (0x7AF9L <= l_1382))), GROUP_DIVERGE(2, 1)))), (safe_mod_func_uint32_t_u_u(p_1390->g_22, ((*l_1347) = 0x13670153L))))) | l_1386)) < ((l_1387 ^ (*p_1390->g_1049)) , l_1367)) == l_1388[3][1]) , &l_1100) != l_1389) , (*p_1390->g_318))) | l_1371) , (void*)0);
    }
    return (*l_5);
}


/* ------------------------------------------ */
/* 
 * reads : p_1390->g_427 p_1390->g_428 p_1390->g_93 p_1390->g_879 p_1390->g_885 p_1390->g_767 p_1390->g_4
 * writes: p_1390->g_768 p_1390->g_133 p_1390->g_767
 */
int32_t  func_25(uint16_t  p_26, int32_t * p_27, int32_t ** p_28, struct S1 * p_1390)
{ /* block id: 393 */
    int8_t l_874 = (-1L);
    int32_t ***l_875 = (void*)0;
    int64_t *l_876 = &p_1390->g_768[0][4][1];
    int32_t *l_886 = &p_1390->g_767;
    (*p_1390->g_885) = (safe_add_func_uint8_t_u_u((safe_add_func_int16_t_s_s((**p_1390->g_427), ((((((FAKE_DIVERGE(p_1390->group_1_offset, get_group_id(1), 10) <= l_874) , l_875) != (void*)0) , ((*l_876) = (p_27 == (void*)0))) >= (safe_div_func_int16_t_s_s((p_1390->g_879 & ((safe_rshift_func_uint8_t_u_u(((safe_lshift_func_int8_t_s_u((0xADE2B11AL & ((+0x2B4C0E53DCDCDE73L) ^ l_874)), 0)) || GROUP_DIVERGE(0, 1)), 5)) , p_26)), l_874))) && p_26))), l_874));
    (*l_886) |= l_874;
    return (*p_27);
}


/* ------------------------------------------ */
/* 
 * reads : p_1390->g_771 p_1390->g_133 p_1390->g_56 p_1390->g_428 p_1390->g_427 p_1390->g_767 p_1390->g_584 p_1390->g_585 p_1390->g_769 p_1390->g_791 p_1390->g_246 p_1390->g_216 p_1390->g_318 p_1390->g_214 p_1390->g_130 p_1390->g_221 p_1390->g_815 p_1390->g_203 p_1390->g_4 p_1390->g_691 p_1390->g_128 p_1390->g_93 p_1390->g_243
 * writes: p_1390->g_771 p_1390->g_133 p_1390->g_130 p_1390->g_72 p_1390->g_93 p_1390->g_127 p_1390->g_518 p_1390->g_18 p_1390->g_767 p_1390->g_221 p_1390->g_815 p_1390->g_214 p_1390->g_240 p_1390->g_203 p_1390->g_692 p_1390->g_216
 */
int32_t ** func_31(int32_t  p_32, int32_t  p_33, struct S1 * p_1390)
{ /* block id: 354 */
    int32_t l_765 = (-1L);
    int32_t *l_766[4];
    uint16_t *l_841 = &p_1390->g_518[0];
    uint16_t *l_843 = &p_1390->g_518[0];
    uint16_t **l_842 = &l_843;
    uint8_t *l_858 = &p_1390->g_815;
    union U0 l_865 = {1UL};
    int64_t *l_868[3][7] = {{&p_1390->g_768[0][3][0],&p_1390->g_769,&p_1390->g_768[0][3][0],&p_1390->g_768[0][3][0],&p_1390->g_769,&p_1390->g_768[0][3][0],&p_1390->g_768[0][3][0]},{&p_1390->g_768[0][3][0],&p_1390->g_769,&p_1390->g_768[0][3][0],&p_1390->g_768[0][3][0],&p_1390->g_769,&p_1390->g_768[0][3][0],&p_1390->g_768[0][3][0]},{&p_1390->g_768[0][3][0],&p_1390->g_769,&p_1390->g_768[0][3][0],&p_1390->g_768[0][3][0],&p_1390->g_769,&p_1390->g_768[0][3][0],&p_1390->g_768[0][3][0]}};
    int8_t *l_869 = &p_1390->g_240;
    int i, j;
    for (i = 0; i < 4; i++)
        l_766[i] = &l_765;
    p_1390->g_771++;
    p_32 = (p_1390->g_771 ^ p_33);
    for (p_1390->g_133 = 3; (p_1390->g_133 >= 0); p_1390->g_133 -= 1)
    { /* block id: 359 */
        int32_t *l_788 = &p_1390->g_767;
        int32_t l_813[5] = {1L,1L,1L,1L,1L};
        int8_t l_838 = 0x67L;
        int i;
        if (p_1390->g_56[(p_1390->g_133 + 4)])
            break;
        for (p_1390->g_130 = 2; (p_1390->g_130 <= 9); p_1390->g_130 += 1)
        { /* block id: 363 */
            int32_t l_774 = 0x7230660AL;
            int32_t l_789[5] = {0L,0L,0L,0L,0L};
            uint16_t l_790 = 0xE122L;
            int64_t l_793[4][5][2] = {{{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L}},{{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L}},{{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L}},{{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L},{0x63C611047FFAF319L,0x63C611047FFAF319L}}};
            int32_t l_812[1][7] = {{0L,6L,0L,0L,6L,0L,0L}};
            int i, j, k;
            p_32 &= l_774;
            for (p_1390->g_72 = 0; (p_1390->g_72 <= 9); p_1390->g_72 += 1)
            { /* block id: 367 */
                int8_t l_783 = 0x1DL;
                int64_t l_792[2][1][3] = {{{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)}}};
                uint8_t *l_794 = &p_1390->g_127;
                uint16_t *l_808 = &p_1390->g_518[0];
                int32_t l_811[6][9] = {{0L,1L,0x16DB6F6EL,0L,1L,0x16DB6F6EL,0x16DB6F6EL,1L,0L},{0L,1L,0x16DB6F6EL,0L,1L,0x16DB6F6EL,0x16DB6F6EL,1L,0L},{0L,1L,0x16DB6F6EL,0L,1L,0x16DB6F6EL,0x16DB6F6EL,1L,0L},{0L,1L,0x16DB6F6EL,0L,1L,0x16DB6F6EL,0x16DB6F6EL,1L,0L},{0L,1L,0x16DB6F6EL,0L,1L,0x16DB6F6EL,0x16DB6F6EL,1L,0L},{0L,1L,0x16DB6F6EL,0L,1L,0x16DB6F6EL,0x16DB6F6EL,1L,0L}};
                int8_t l_837 = 4L;
                int i, j, k;
                l_766[p_1390->g_133] = func_63(func_63(func_63(l_766[p_1390->g_133], (((safe_lshift_func_uint16_t_u_s((safe_rshift_func_int8_t_s_s(p_1390->g_56[(p_1390->g_133 + 4)], (safe_div_func_int8_t_s_s((p_32 <= ((void*)0 == p_1390->g_428[(p_1390->g_133 + 3)])), 7L)))), (safe_mod_func_uint16_t_u_u((p_32 ^ l_783), (safe_div_func_int16_t_s_s(((**p_1390->g_427) = (safe_lshift_func_uint8_t_u_u(1UL, 3))), 0x16D4L)))))) <= l_783) , l_788), l_789[3], (*l_788), l_783, p_1390), (*p_1390->g_584), l_790, p_32, p_1390->g_769, p_1390), &p_1390->g_4, p_1390->g_791, p_33, l_792[0][0][2], p_1390);
                (*l_788) = (((*l_794) = l_793[1][0][0]) | (+(safe_lshift_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((p_1390->g_18[p_1390->g_130] = (safe_add_func_uint32_t_u_u((safe_sub_func_int32_t_s_s((*p_1390->g_246), (safe_mod_func_int8_t_s_s(((&p_1390->g_428[1] == (void*)0) , ((((*l_808) = (safe_unary_minus_func_int64_t_s((p_33 < p_32)))) & p_32) | ((*p_1390->g_318) != ((p_33 , 6L) <= 0x738C6ABAL)))), (-7L))))), 0x5E9731E8L))), p_33)), 7))));
                for (p_1390->g_221 = 0; (p_1390->g_221 <= 1); p_1390->g_221 += 1)
                { /* block id: 376 */
                    int32_t l_809 = (-5L);
                    int32_t l_810[9][9][3] = {{{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L}},{{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L}},{{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L}},{{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L}},{{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L}},{{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L}},{{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L}},{{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L}},{{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L},{0L,0L,0x6F10EB57L}}};
                    int8_t *l_834 = (void*)0;
                    int8_t *l_835 = &p_1390->g_240;
                    int8_t *l_836[4][5] = {{&l_783,&p_1390->g_203,&l_783,&l_783,&p_1390->g_203},{&l_783,&p_1390->g_203,&l_783,&l_783,&p_1390->g_203},{&l_783,&p_1390->g_203,&l_783,&l_783,&p_1390->g_203},{&l_783,&p_1390->g_203,&l_783,&l_783,&p_1390->g_203}};
                    int i, j, k;
                    --p_1390->g_815;
                    l_838 = (safe_mod_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((0xD0L | ((safe_mod_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(l_793[p_1390->g_221][(p_1390->g_133 + 1)][p_1390->g_221], (*l_788))), p_33)), (safe_rshift_func_int8_t_s_u(4L, 3)))) ^ (+p_33))), ((((safe_mod_func_uint64_t_u_u(((p_33 , (safe_sub_func_uint8_t_u_u(0x7AL, (p_1390->g_203 ^= ((*l_835) = ((*p_1390->g_318) = (*p_1390->g_318))))))) ^ l_810[5][5][1]), p_1390->g_4)) , (*p_1390->g_318)) || l_837) & p_32))), p_33));
                }
            }
        }
    }
    (*p_1390->g_246) = (safe_add_func_uint16_t_u_u((((*p_1390->g_691) = l_841) != ((*l_842) = (void*)0)), (safe_add_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(((*l_869) = (safe_lshift_func_int8_t_s_s(((*p_1390->g_318) |= (safe_rshift_func_int16_t_s_s(((safe_mul_func_int16_t_s_s((safe_add_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_u(((++(*l_858)) && (safe_lshift_func_uint16_t_u_s((((safe_div_func_uint32_t_u_u((p_1390->g_128 < (p_32 != 0xE29CA887875E93A4L)), (l_865 , (safe_add_func_int8_t_s_s((p_32 == (l_868[1][6] != l_868[2][1])), p_33))))) && p_1390->g_203) , p_32), (**p_1390->g_427)))), 7)), p_1390->g_243)), (**p_1390->g_427))) && 0UL), 3))), 0))), p_32)), p_33))));
    return &p_1390->g_585;
}


/* ------------------------------------------ */
/* 
 * reads : p_1390->g_246 p_1390->g_216 p_1390->g_298 p_1390->g_289 p_1390->g_584 p_1390->g_585 p_1390->g_183 p_1390->g_56 p_1390->g_243 p_1390->g_214 p_1390->g_318 p_1390->g_455 p_1390->g_133 p_1390->g_203 p_1390->g_427 p_1390->g_428 p_1390->g_440 p_1390->g_218 p_1390->g_128 p_1390->g_518 p_1390->g_93 p_1390->g_102 p_1390->g_103 p_1390->g_18 p_1390->g_306 p_1390->g_22
 * writes: p_1390->g_298 p_1390->g_289 p_1390->g_183 p_1390->g_305 p_1390->g_668 p_1390->g_585 p_1390->g_93 p_1390->g_133 p_1390->g_128 p_1390->g_216
 */
int32_t * func_35(uint64_t  p_36, int32_t ** p_37, int16_t  p_38, int32_t * p_39, int32_t  p_40, struct S1 * p_1390)
{ /* block id: 236 */
    uint8_t l_593 = 251UL;
    uint32_t *l_661 = &p_1390->g_105;
    int32_t l_681 = 0x7364496EL;
    int32_t l_683 = 0L;
    uint32_t l_685[1][5][1];
    int32_t l_694[5][1] = {{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}};
    int16_t *l_698 = (void*)0;
    int32_t *l_704 = &p_1390->g_133;
    union U0 l_712 = {0x2FD5AA54L};
    int64_t *l_732 = &p_1390->g_128;
    uint16_t **l_733 = &p_1390->g_692[6][1][0];
    int32_t **l_737 = &p_1390->g_306;
    uint16_t ***l_758 = &p_1390->g_691;
    uint64_t l_761 = 18446744073709551611UL;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 1; k++)
                l_685[i][j][k] = 0x3A78C7FDL;
        }
    }
    if ((*p_1390->g_246))
    { /* block id: 237 */
        for (p_1390->g_298 = 0; (p_1390->g_298 == 31); p_1390->g_298 = safe_add_func_int8_t_s_s(p_1390->g_298, 1))
        { /* block id: 240 */
            int32_t *l_590 = &p_1390->g_133;
            int32_t *l_591 = &p_1390->g_133;
            int32_t *l_592[2][7] = {{&p_1390->g_216,&p_1390->g_216,&p_1390->g_216,&p_1390->g_216,&p_1390->g_216,&p_1390->g_216,&p_1390->g_216},{&p_1390->g_216,&p_1390->g_216,&p_1390->g_216,&p_1390->g_216,&p_1390->g_216,&p_1390->g_216,&p_1390->g_216}};
            int i, j;
            --l_593;
        }
        if ((atomic_inc(&p_1390->g_atomic_input[78 * get_linear_group_id() + 60]) == 4))
        { /* block id: 244 */
            int32_t l_596[6][1];
            int32_t l_604 = 0x5F9BC5C2L;
            int16_t l_605 = 1L;
            int i, j;
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 1; j++)
                    l_596[i][j] = 0x08BDB360L;
            }
            for (l_596[4][0] = 0; (l_596[4][0] <= (-26)); l_596[4][0] = safe_sub_func_uint8_t_u_u(l_596[4][0], 2))
            { /* block id: 247 */
                int16_t l_599 = (-1L);
                int32_t l_601 = 0x66F1F6D6L;
                int32_t *l_600 = &l_601;
                int32_t *l_602 = &l_601;
                int32_t *l_603 = &l_601;
                l_599 = 4L;
                l_603 = (l_602 = l_600);
            }
            l_605 = l_604;
            for (l_605 = (-19); (l_605 > (-5)); l_605 = safe_add_func_int8_t_s_s(l_605, 7))
            { /* block id: 255 */
                int32_t l_608 = 0x045D8BC0L;
                int64_t l_609 = 0L;
                int16_t l_610[6] = {8L,8L,8L,8L,8L,8L};
                uint16_t l_611[6][4][8] = {{{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL}},{{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL}},{{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL}},{{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL}},{{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL}},{{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL},{1UL,1UL,0UL,0x1F7EL,5UL,5UL,0x1F7EL,0UL}}};
                int i, j, k;
                ++l_611[3][3][5];
            }
            for (l_604 = (-22); (l_604 <= (-5)); l_604++)
            { /* block id: 260 */
                int32_t l_616 = (-1L);
                int32_t l_617 = 0L;
                uint64_t l_618 = 18446744073709551615UL;
                uint32_t l_621[10] = {0x7C65D673L,1UL,0x43CF993AL,1UL,0x7C65D673L,0x7C65D673L,1UL,0x43CF993AL,1UL,0x7C65D673L};
                int32_t l_622 = 0x0C8B587DL;
                uint32_t l_623 = 4294967293UL;
                int i;
                ++l_618;
                if ((l_596[4][0] = ((l_622 = l_621[5]) , l_623)))
                { /* block id: 264 */
                    uint64_t l_624 = 1UL;
                    --l_624;
                }
                else
                { /* block id: 266 */
                    int32_t l_627 = 0x4216E40FL;
                    int16_t l_643 = 0x1825L;
                    int8_t l_644 = 0x28L;
                    uint16_t l_645 = 0xA2BFL;
                    int32_t l_648 = (-1L);
                    for (l_627 = 0; (l_627 >= (-1)); l_627--)
                    { /* block id: 269 */
                        int32_t l_630 = 0x2DEE90E6L;
                        uint64_t l_631[8] = {0x008CB077BEE703BBL,0x008CB077BEE703BBL,0x008CB077BEE703BBL,0x008CB077BEE703BBL,0x008CB077BEE703BBL,0x008CB077BEE703BBL,0x008CB077BEE703BBL,0x008CB077BEE703BBL};
                        int32_t l_635[4] = {0x6F1D9611L,0x6F1D9611L,0x6F1D9611L,0x6F1D9611L};
                        int32_t *l_634 = &l_635[3];
                        uint8_t l_636 = 0UL;
                        uint16_t l_637 = 65535UL;
                        int32_t l_638[2][10][7] = {{{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L}},{{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L},{0x552DF5A9L,0x44BDDBB5L,8L,0x44BDDBB5L,0x552DF5A9L,0x552DF5A9L,0x44BDDBB5L}}};
                        int32_t *l_639 = &l_635[3];
                        int32_t *l_640[9][6] = {{&l_638[1][6][2],&l_635[3],&l_635[2],&l_638[1][1][4],&l_635[2],&l_635[3]},{&l_638[1][6][2],&l_635[3],&l_635[2],&l_638[1][1][4],&l_635[2],&l_635[3]},{&l_638[1][6][2],&l_635[3],&l_635[2],&l_638[1][1][4],&l_635[2],&l_635[3]},{&l_638[1][6][2],&l_635[3],&l_635[2],&l_638[1][1][4],&l_635[2],&l_635[3]},{&l_638[1][6][2],&l_635[3],&l_635[2],&l_638[1][1][4],&l_635[2],&l_635[3]},{&l_638[1][6][2],&l_635[3],&l_635[2],&l_638[1][1][4],&l_635[2],&l_635[3]},{&l_638[1][6][2],&l_635[3],&l_635[2],&l_638[1][1][4],&l_635[2],&l_635[3]},{&l_638[1][6][2],&l_635[3],&l_635[2],&l_638[1][1][4],&l_635[2],&l_635[3]},{&l_638[1][6][2],&l_635[3],&l_635[2],&l_638[1][1][4],&l_635[2],&l_635[3]}};
                        int32_t *l_641 = (void*)0;
                        int64_t l_642[5] = {0L,0L,0L,0L,0L};
                        int i, j, k;
                        --l_631[7];
                        l_634 = (void*)0;
                        l_641 = ((l_638[1][1][4] = ((l_636 , 0x23B4L) , l_637)) , (l_640[7][2] = l_639));
                        l_617 = l_642[0];
                    }
                    ++l_645;
                    l_627 ^= l_648;
                }
                for (l_622 = 0; (l_622 >= 0); l_622 -= 1)
                { /* block id: 282 */
                    int32_t l_649[3][7][8] = {{{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)}},{{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)}},{{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)},{(-1L),0x06F65C15L,(-3L),0x06F65C15L,(-1L),(-1L),0x06F65C15L,(-3L)}}};
                    uint16_t l_657 = 7UL;
                    uint32_t l_658 = 0x6A3BCBC5L;
                    int32_t *l_659 = &l_649[0][5][3];
                    int32_t *l_660 = &l_649[0][2][6];
                    int i, j, k;
                    for (l_649[2][1][5] = 0; (l_649[2][1][5] <= 0); l_649[2][1][5] += 1)
                    { /* block id: 285 */
                        uint16_t l_650 = 65535UL;
                        int32_t l_653[3][9][8] = {{{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L}},{{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L}},{{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L},{1L,0x516F625EL,1L,0x579F30BDL,(-10L),0x29FCB4A5L,0x596AF7A5L,0x596AF7A5L}}};
                        uint64_t l_654 = 0xFE25E8488AAEEE25L;
                        int i, j, k;
                        --l_650;
                        l_617 = l_653[1][4][1];
                        --l_654;
                    }
                    l_660 = (l_657 , (l_659 = (l_658 , (void*)0)));
                }
            }
            unsigned int result = 0;
            int l_596_i0, l_596_i1;
            for (l_596_i0 = 0; l_596_i0 < 6; l_596_i0++) {
                for (l_596_i1 = 0; l_596_i1 < 1; l_596_i1++) {
                    result += l_596[l_596_i0][l_596_i1];
                }
            }
            result += l_604;
            result += l_605;
            atomic_add(&p_1390->g_special_values[78 * get_linear_group_id() + 60], result);
        }
        else
        { /* block id: 294 */
            (1 + 1);
        }
        for (p_1390->g_289 = 0; (p_1390->g_289 <= 3); p_1390->g_289 += 1)
        { /* block id: 299 */
            int32_t **l_666 = (void*)0;
            int32_t l_679 = 9L;
            uint16_t *l_689 = &p_1390->g_518[0];
            uint16_t **l_688 = &l_689;
            uint16_t ***l_693 = &l_688;
            for (p_1390->g_183 = 0; (p_1390->g_183 <= 3); p_1390->g_183 += 1)
            { /* block id: 302 */
                int16_t ***l_674 = &p_1390->g_427;
                int32_t l_682 = 0x0C7C62E6L;
                if ((l_661 != p_39))
                { /* block id: 303 */
                    return (*p_1390->g_584);
                }
                else
                { /* block id: 305 */
                    int32_t ***l_667 = &p_1390->g_305;
                    int32_t **l_669 = &p_1390->g_585;
                    int16_t ****l_675 = &l_674;
                    int32_t l_680 = 0x741D450EL;
                    int32_t l_684 = 0x55717089L;
                    int i;
                    if ((safe_mul_func_uint16_t_u_u(7UL, (((safe_sub_func_uint16_t_u_u(((p_1390->g_668 = ((*l_667) = l_666)) == (void*)0), (p_1390->g_56[(p_1390->g_183 + 6)] && ((*p_37) != ((*l_669) = (*p_37)))))) , (p_1390->g_56[p_1390->g_183] || p_1390->g_243)) , (safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((((*l_675) = l_674) == &p_1390->g_427), 0xAB7AL)), 0xD5A1L))))))
                    { /* block id: 310 */
                        int32_t *l_676 = (void*)0;
                        int32_t *l_677 = &p_1390->g_216;
                        int32_t *l_678[1][1];
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_678[i][j] = &p_1390->g_133;
                        }
                        l_685[0][1][0]--;
                    }
                    else
                    { /* block id: 312 */
                        return (*p_1390->g_584);
                    }
                }
            }
            (*l_693) = l_688;
            if (l_694[2][0])
                continue;
        }
    }
    else
    { /* block id: 320 */
        uint32_t l_695 = 0x2C1BA00EL;
        int32_t *l_715 = (void*)0;
        l_695++;
        for (l_593 = 0; (l_593 <= 0); l_593 += 1)
        { /* block id: 324 */
            int32_t *l_699 = &l_683;
            (*p_37) = (*p_37);
            (*l_699) = ((void*)0 != l_698);
            for (l_683 = 0; (l_683 <= 0); l_683 += 1)
            { /* block id: 329 */
                return (*p_37);
            }
        }
        (*l_704) = (safe_div_func_int16_t_s_s(((**p_1390->g_427) = (p_1390->g_214 <= ((l_704 == ((((*p_1390->g_318) == 0x74L) && (safe_div_func_int8_t_s_s(((p_1390->g_455 , ((*l_704) > ((((~(safe_rshift_func_int16_t_s_s((safe_unary_minus_func_uint32_t_u((safe_lshift_func_uint8_t_u_u(((l_712 , (safe_div_func_uint8_t_u_u(((&p_1390->g_306 != &p_1390->g_306) ^ p_1390->g_203), (*p_1390->g_318)))) < 0L), (*l_704))))), p_36))) , (*l_704)) ^ FAKE_DIVERGE(p_1390->local_2_offset, get_local_id(2), 10)) && (*l_704)))) > l_695), (*l_704)))) , l_715)) , 0UL))), 1UL));
        return l_715;
    }
    (*l_704) = (safe_add_func_int16_t_s_s((safe_mod_func_uint32_t_u_u(0UL, 0xE6EAD8F5L)), (*l_704)));
    if ((l_712 , ((safe_lshift_func_uint16_t_u_s((safe_sub_func_uint32_t_u_u((0x56L || ((safe_div_func_int64_t_s_s(((*l_704) = ((*p_1390->g_318) >= (safe_lshift_func_uint16_t_u_s((safe_add_func_int8_t_s_s((((p_40 != ((5UL && p_38) , ((*l_732) |= ((safe_sub_func_int8_t_s_s(((-1L) > p_1390->g_440), ((0x0618523AFC1166D3L | 3L) & (*l_704)))) || p_1390->g_218)))) , l_733) == (void*)0), (*l_704))), (*l_704))))), 7L)) ^ l_593)), p_1390->g_518[0])), (**p_1390->g_427))) | 0UL)))
    { /* block id: 340 */
        uint32_t l_736 = 0x15079872L;
        uint32_t **l_744 = &p_1390->g_238;
        (*l_704) |= (safe_add_func_uint16_t_u_u(l_736, l_736));
        (*l_704) ^= (l_737 != ((safe_add_func_uint8_t_u_u(p_40, (safe_div_func_int64_t_s_s(((~((safe_sub_func_uint64_t_u_u((&p_1390->g_239 == l_744), 0L)) | ((*l_732) = p_40))) || (l_712 , p_38)), ((safe_mod_func_int16_t_s_s(p_36, p_40)) , p_40))))) , &p_1390->g_306));
    }
    else
    { /* block id: 344 */
        uint32_t l_749 = 4294967289UL;
        int32_t l_762 = 0x7C667B3AL;
        int32_t l_763 = 3L;
        int32_t *l_764 = &p_1390->g_216;
        (*l_704) = (safe_rshift_func_uint16_t_u_u(l_749, 0));
        (*l_764) = ((*p_1390->g_102) & (p_1390->g_18[3] & (((safe_mul_func_int8_t_s_s(0x33L, (safe_sub_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u(((safe_sub_func_uint32_t_u_u((((l_758 == ((l_763 = ((*p_1390->g_306) = ((*l_704) = (((void*)0 == &l_698) & ((safe_mul_func_uint8_t_u_u((((p_1390->g_18[6] & (*l_704)) || (l_762 |= (l_761 >= 0xA85817CEA4C0FC31L))) | p_38), (-4L))) > 0x089BB2572AA9F080L))))) , (void*)0)) , l_749) == l_749), 0x0E102F7CL)) , p_1390->g_22), l_749)), l_749)))) || FAKE_DIVERGE(p_1390->group_0_offset, get_group_id(0), 10)) == 4294967293UL)));
    }
    return (*p_37);
}


/* ------------------------------------------ */
/* 
 * reads : p_1390->g_318 p_1390->g_214 p_1390->g_319 p_1390->g_72 p_1390->g_427 p_1390->g_428 p_1390->g_93 p_1390->g_18 p_1390->g_541 p_1390->g_518 p_1390->g_133 p_1390->g_22 p_1390->g_102 p_1390->g_103 p_1390->g_112 p_1390->g_4 p_1390->g_105 p_1390->g_82 p_1390->g_246 p_1390->g_216 p_1390->g_584
 * writes: p_1390->g_214 p_1390->g_72 p_1390->g_518 p_1390->g_133 p_1390->g_105 p_1390->g_216 p_1390->g_585
 */
int64_t  func_41(int32_t * p_42, uint32_t  p_43, struct S1 * p_1390)
{ /* block id: 211 */
    int8_t l_521 = 0L;
    int32_t l_548 = 0x2C645E51L;
    int32_t l_579 = 0L;
    int8_t l_580 = 7L;
    uint32_t *l_586 = &p_1390->g_221;
    if (((p_43 || (safe_mul_func_uint8_t_u_u(0x6FL, (p_43 , ((*p_1390->g_318) &= 0x27L))))) < l_521))
    { /* block id: 213 */
        uint16_t *l_545[1];
        int8_t l_547 = 0L;
        int32_t l_570 = (-1L);
        int64_t *l_581[10] = {&p_1390->g_112,(void*)0,&p_1390->g_128,(void*)0,&p_1390->g_112,&p_1390->g_112,(void*)0,&p_1390->g_128,(void*)0,&p_1390->g_112};
        uint32_t *l_582 = &p_1390->g_105;
        int32_t *l_583[5][7][7] = {{{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216}},{{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216}},{{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216}},{{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216}},{{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216},{(void*)0,&p_1390->g_22,&l_579,&p_1390->g_22,&l_548,&p_1390->g_216,&p_1390->g_216}}};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_545[i] = (void*)0;
        for (l_521 = 0; (l_521 >= (-6)); --l_521)
        { /* block id: 216 */
            uint64_t *l_526 = &p_1390->g_72;
            int32_t l_546 = 0L;
            int32_t *l_549 = &p_1390->g_133;
            (*l_549) |= (safe_mul_func_int16_t_s_s((p_1390->g_319 || (--(*l_526))), ((((FAKE_DIVERGE(p_1390->global_0_offset, get_global_id(0), 10) >= ((safe_mul_func_int16_t_s_s((**p_1390->g_427), (((((((((((p_1390->g_518[0] = (((*p_1390->g_318) && ((safe_mod_func_int16_t_s_s(0L, (safe_lshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_u((safe_sub_func_uint32_t_u_u((safe_mul_func_int8_t_s_s((p_1390->g_18[4] == 0x7D51CBB78CD30826L), (p_1390->g_541[0] == &p_1390->g_542[2]))), (safe_div_func_uint16_t_u_u((l_545[0] == l_545[0]), p_43)))), l_546)), p_43)))) || p_43)) <= p_43)) , l_547) & l_546) ^ l_521) , p_43) != l_521) > 0x7A43A0AFFEB9393CL) | p_43) & p_43) >= l_521) , p_1390->g_518[0]))) > l_548)) || (**p_1390->g_427)) && 0x420E4FE2L) , l_546)));
            (*l_549) |= 0x1A0559B9L;
            (*l_549) ^= (p_43 & (-2L));
        }
        p_1390->g_133 ^= (safe_rshift_func_int8_t_s_s(0x00L, (((safe_div_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(((*p_1390->g_318) = ((((((safe_mul_func_int8_t_s_s(((((safe_mul_func_uint8_t_u_u(((((((*l_582) &= (((safe_add_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), ((safe_mul_func_uint8_t_u_u((((((safe_sub_func_int64_t_s_s((!(safe_div_func_int8_t_s_s(((!(((*p_42) & ((safe_add_func_int64_t_s_s(0L, p_43)) | (--p_1390->g_518[0]))) ^ (l_548 , 4L))) , (safe_add_func_uint64_t_u_u(0xD2BBCD76E5FCF05DL, (l_570 = (safe_add_func_int16_t_s_s(l_548, (safe_lshift_func_int16_t_s_s((l_580 = (0x07L ^ l_579)), (*p_1390->g_102))))))))), 1UL))), p_1390->g_112)) , l_580) < p_1390->g_4) , p_43) >= 0xF2E6L), l_521)) == p_1390->g_72))) ^ l_548) , GROUP_DIVERGE(0, 1))) | l_547) , 0x564957EBL) ^ l_548) ^ p_1390->g_18[4]), l_579)) != 247UL) >= 0UL) | 1UL), (*p_1390->g_318))) == 1L) > FAKE_DIVERGE(p_1390->group_1_offset, get_group_id(1), 10)) == FAKE_DIVERGE(p_1390->global_2_offset, get_global_id(2), 10)) , p_1390->g_82[0]) , l_547)), l_548)), p_43)) , FAKE_DIVERGE(p_1390->local_1_offset, get_local_id(1), 10)) <= (-9L))));
        (*p_1390->g_246) &= (*p_42);
    }
    else
    { /* block id: 230 */
        (*p_1390->g_584) = p_42;
        return l_580;
    }
    l_579 ^= ((void*)0 == l_586);
    return l_579;
}


/* ------------------------------------------ */
/* 
 * reads : p_1390->g_93 p_1390->g_12 p_1390->g_82.f0 p_1390->g_56 p_1390->g_112 p_1390->g_240 p_1390->g_72 p_1390->g_243 p_1390->g_246 p_1390->g_102 p_1390->g_105 p_1390->g_103 p_1390->g_128 p_1390->g_22 p_1390->g_130 p_1390->g_133 p_1390->g_18 p_1390->g_214 p_1390->g_125 p_1390->g_216 p_1390->g_21 p_1390->g_82 p_1390->g_192 p_1390->g_221
 * writes: p_1390->g_93 p_1390->g_238 p_1390->g_239 p_1390->g_240 p_1390->g_103 p_1390->g_243 p_1390->g_216 p_1390->g_105 p_1390->g_112 p_1390->g_127 p_1390->g_128 p_1390->g_130 p_1390->g_133 p_1390->g_181 p_1390->g_183 p_1390->g_125 p_1390->g_72 p_1390->g_21 p_1390->g_203 p_1390->g_221
 */
uint32_t  func_50(uint32_t  p_51, int64_t  p_52, uint32_t  p_53, struct S1 * p_1390)
{ /* block id: 81 */
    uint32_t l_252 = 0xAE96437FL;
    union U0 l_253 = {0xEFAEFD56L};
    int32_t *l_255 = (void*)0;
    int32_t **l_254 = &l_255;
    int64_t *l_266 = (void*)0;
    int32_t l_268 = 0x28857758L;
    uint8_t *l_291 = (void*)0;
    int16_t *l_299 = &p_1390->g_93;
    int32_t l_302 = (-1L);
    int8_t *l_316[2][5] = {{&p_1390->g_240,&p_1390->g_240,&p_1390->g_240,&p_1390->g_240,&p_1390->g_240},{&p_1390->g_240,&p_1390->g_240,&p_1390->g_240,&p_1390->g_240,&p_1390->g_240}};
    uint16_t l_352 = 0xBA2CL;
    int32_t *l_429 = &p_1390->g_289;
    uint32_t l_453 = 4294967294UL;
    int32_t l_458 = 0x77F89DB1L;
    int32_t l_482 = 0x2BA9FD12L;
    uint32_t l_512[10][10] = {{4294967295UL,1UL,1UL,4294967295UL,0xB0F610E5L,1UL,1UL,0xB0F610E5L,4294967295UL,1UL},{4294967295UL,1UL,1UL,4294967295UL,0xB0F610E5L,1UL,1UL,0xB0F610E5L,4294967295UL,1UL},{4294967295UL,1UL,1UL,4294967295UL,0xB0F610E5L,1UL,1UL,0xB0F610E5L,4294967295UL,1UL},{4294967295UL,1UL,1UL,4294967295UL,0xB0F610E5L,1UL,1UL,0xB0F610E5L,4294967295UL,1UL},{4294967295UL,1UL,1UL,4294967295UL,0xB0F610E5L,1UL,1UL,0xB0F610E5L,4294967295UL,1UL},{4294967295UL,1UL,1UL,4294967295UL,0xB0F610E5L,1UL,1UL,0xB0F610E5L,4294967295UL,1UL},{4294967295UL,1UL,1UL,4294967295UL,0xB0F610E5L,1UL,1UL,0xB0F610E5L,4294967295UL,1UL},{4294967295UL,1UL,1UL,4294967295UL,0xB0F610E5L,1UL,1UL,0xB0F610E5L,4294967295UL,1UL},{4294967295UL,1UL,1UL,4294967295UL,0xB0F610E5L,1UL,1UL,0xB0F610E5L,4294967295UL,1UL},{4294967295UL,1UL,1UL,4294967295UL,0xB0F610E5L,1UL,1UL,0xB0F610E5L,4294967295UL,1UL}};
    int i, j;
    for (p_1390->g_93 = 0; (p_1390->g_93 <= 8); p_1390->g_93 = safe_add_func_int8_t_s_s(p_1390->g_93, 2))
    { /* block id: 84 */
        uint32_t *l_235[3][9] = {{&p_1390->g_105,&p_1390->g_130,&p_1390->g_130,&p_1390->g_105,&p_1390->g_105,&p_1390->g_130,&p_1390->g_130,&p_1390->g_105,&p_1390->g_105},{&p_1390->g_105,&p_1390->g_130,&p_1390->g_130,&p_1390->g_105,&p_1390->g_105,&p_1390->g_130,&p_1390->g_130,&p_1390->g_105,&p_1390->g_105},{&p_1390->g_105,&p_1390->g_130,&p_1390->g_130,&p_1390->g_105,&p_1390->g_105,&p_1390->g_130,&p_1390->g_130,&p_1390->g_105,&p_1390->g_105}};
        uint32_t *l_237[5][5][4] = {{{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221}},{{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221}},{{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221}},{{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221}},{{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221},{&p_1390->g_221,(void*)0,(void*)0,&p_1390->g_221}}};
        uint32_t **l_236[1][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int16_t *l_241 = &p_1390->g_103;
        int16_t *l_242[3][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t *l_244 = (void*)0;
        int32_t *l_245 = (void*)0;
        int i, j, k;
        if (p_51)
            break;
        (*p_1390->g_246) = ((p_1390->g_243 &= (safe_div_func_int64_t_s_s((safe_div_func_int8_t_s_s(p_1390->g_12, (safe_mod_func_uint8_t_u_u((((*l_241) = ((p_1390->g_240 ^= ((((p_1390->g_239 = (p_1390->g_238 = func_63(&p_1390->g_56[2], &p_1390->g_216, ((safe_mul_func_int8_t_s_s(0x59L, ((8UL && (((void*)0 == l_235[0][2]) , p_51)) , (0x318BE7EDE46C1132L & p_1390->g_82[0].f0)))) > p_52), p_1390->g_56[2], p_52, p_1390))) == (void*)0) <= 0xE46CL) ^ p_1390->g_112)) , p_51)) ^ p_1390->g_72), 2L)))), p_1390->g_93))) < 0x8618L);
        if ((atomic_inc(&p_1390->g_atomic_input[78 * get_linear_group_id() + 50]) == 3))
        { /* block id: 93 */
            int32_t l_247[2];
            uint8_t l_248[1][2];
            int32_t l_249 = 1L;
            uint8_t l_250[5][7] = {{1UL,0x00L,248UL,0x98L,0x1FL,1UL,0x98L},{1UL,0x00L,248UL,0x98L,0x1FL,1UL,0x98L},{1UL,0x00L,248UL,0x98L,0x1FL,1UL,0x98L},{1UL,0x00L,248UL,0x98L,0x1FL,1UL,0x98L},{1UL,0x00L,248UL,0x98L,0x1FL,1UL,0x98L}};
            int32_t *l_251[6];
            int i, j;
            for (i = 0; i < 2; i++)
                l_247[i] = (-1L);
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 2; j++)
                    l_248[i][j] = 0UL;
            }
            for (i = 0; i < 6; i++)
                l_251[i] = (void*)0;
            l_248[0][1] = l_247[0];
            l_251[5] = ((l_250[2][0] = l_249) , (void*)0);
            unsigned int result = 0;
            int l_247_i0;
            for (l_247_i0 = 0; l_247_i0 < 2; l_247_i0++) {
                result += l_247[l_247_i0];
            }
            int l_248_i0, l_248_i1;
            for (l_248_i0 = 0; l_248_i0 < 1; l_248_i0++) {
                for (l_248_i1 = 0; l_248_i1 < 2; l_248_i1++) {
                    result += l_248[l_248_i0][l_248_i1];
                }
            }
            result += l_249;
            int l_250_i0, l_250_i1;
            for (l_250_i0 = 0; l_250_i0 < 5; l_250_i0++) {
                for (l_250_i1 = 0; l_250_i1 < 7; l_250_i1++) {
                    result += l_250[l_250_i0][l_250_i1];
                }
            }
            atomic_add(&p_1390->g_special_values[78 * get_linear_group_id() + 50], result);
        }
        else
        { /* block id: 97 */
            (1 + 1);
        }
        l_252 = p_51;
    }
    (*l_254) = func_77((p_1390->g_12 <= (+0x6F15L)), l_253, l_252, p_52, p_1390);
    (**l_254) &= (253UL == p_1390->g_214);
    for (p_1390->g_103 = 15; (p_1390->g_103 >= (-28)); p_1390->g_103 = safe_sub_func_int32_t_s_s(p_1390->g_103, 3))
    { /* block id: 106 */
        int64_t *l_264 = &p_1390->g_183;
        int64_t *l_265[8] = {&p_1390->g_183,&p_1390->g_183,&p_1390->g_183,&p_1390->g_183,&p_1390->g_183,&p_1390->g_183,&p_1390->g_183,&p_1390->g_183};
        int32_t l_267 = (-1L);
        int16_t *l_282 = (void*)0;
        int16_t **l_281 = &l_282;
        int16_t ***l_280 = &l_281;
        uint64_t *l_285 = &p_1390->g_72;
        int32_t *l_288 = &p_1390->g_289;
        int64_t *l_290[4][3] = {{&p_1390->g_112,&p_1390->g_112,&p_1390->g_112},{&p_1390->g_112,&p_1390->g_112,&p_1390->g_112},{&p_1390->g_112,&p_1390->g_112,&p_1390->g_112},{&p_1390->g_112,&p_1390->g_112,&p_1390->g_112}};
        int32_t *l_292 = (void*)0;
        int32_t *l_293 = &p_1390->g_216;
        int8_t *l_314 = &p_1390->g_203;
        uint64_t l_343[3][4][4] = {{{5UL,0UL,5UL,5UL},{5UL,0UL,5UL,5UL},{5UL,0UL,5UL,5UL},{5UL,0UL,5UL,5UL}},{{5UL,0UL,5UL,5UL},{5UL,0UL,5UL,5UL},{5UL,0UL,5UL,5UL},{5UL,0UL,5UL,5UL}},{{5UL,0UL,5UL,5UL},{5UL,0UL,5UL,5UL},{5UL,0UL,5UL,5UL},{5UL,0UL,5UL,5UL}}};
        uint32_t *l_347[1];
        int32_t l_421 = 0x20A2916BL;
        int8_t l_423 = (-1L);
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_347[i] = &p_1390->g_56[2];
        l_268 ^= (func_57(p_1390->g_216, &p_1390->g_22, p_1390) , (safe_mod_func_int16_t_s_s((*p_1390->g_102), (safe_add_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s(((+(~(GROUP_DIVERGE(2, 1) && p_1390->g_93))) , (**l_254)), 1)) & (*l_255)), ((((l_264 == (l_266 = l_265[3])) , p_1390->g_128) & l_267) , p_52))))));
    }
    return p_1390->g_22;
}


/* ------------------------------------------ */
/* 
 * reads : p_1390->g_72 p_1390->g_21 p_1390->g_82 p_1390->g_82.f0 p_1390->g_18 p_1390->g_93 p_1390->g_102 p_1390->g_105 p_1390->g_103 p_1390->g_128 p_1390->g_22 p_1390->g_130 p_1390->g_133 p_1390->g_112 p_1390->g_192 p_1390->g_125 p_1390->g_127 p_1390->g_221 p_1390->g_4 p_1390->g_216 p_1390->g_1218
 * writes: p_1390->g_72 p_1390->g_93 p_1390->g_105 p_1390->g_112 p_1390->g_127 p_1390->g_128 p_1390->g_130 p_1390->g_133 p_1390->g_181 p_1390->g_183 p_1390->g_21 p_1390->g_203 p_1390->g_221
 */
union U0  func_57(int32_t  p_58, int32_t * p_59, struct S1 * p_1390)
{ /* block id: 17 */
    int32_t *l_69[9] = {(void*)0,&p_1390->g_4,(void*)0,(void*)0,&p_1390->g_4,(void*)0,(void*)0,&p_1390->g_4,(void*)0};
    uint64_t *l_70 = (void*)0;
    uint64_t *l_71 = &p_1390->g_72;
    uint32_t *l_76[3][6];
    uint32_t **l_75 = &l_76[2][0];
    uint16_t l_206 = 0x8D10L;
    int32_t l_207 = 0x798853BCL;
    int16_t *l_208 = &p_1390->g_93;
    union U0 l_224 = {0x15682789L};
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 6; j++)
            l_76[i][j] = (void*)0;
    }
    p_1390->g_21 = (func_60(((*l_75) = func_63(p_59, l_69[5], p_58, p_58, ((*l_71) |= 0xFCCEA59F7C1AE2EFL), p_1390)), func_77(p_1390->g_21, p_1390->g_82[0], p_1390->g_82[0].f0, p_1390->g_18[4], p_1390), p_1390) ^ p_1390->g_18[0]);
    for (p_1390->g_127 = 0; (p_1390->g_127 == 10); ++p_1390->g_127)
    { /* block id: 70 */
        int8_t *l_201[1][1][1];
        int32_t l_202 = 0x684E38CDL;
        int16_t **l_209 = &l_208;
        int16_t *l_211 = &p_1390->g_93;
        int16_t **l_210 = &l_211;
        uint32_t *l_212 = &p_1390->g_130;
        int32_t l_213 = (-1L);
        int32_t l_219 = 0x69D149D9L;
        int32_t l_220 = 1L;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 1; k++)
                    l_201[i][j][k] = (void*)0;
            }
        }
        l_213 = ((&p_1390->g_183 != &p_1390->g_183) , ((((safe_mod_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((p_58 <= (p_1390->g_203 = (!(l_202 = p_58)))), (safe_sub_func_uint64_t_u_u(l_206, ((((*l_210) = ((*l_209) = (l_207 , l_208))) == &p_1390->g_103) >= ((*l_212) = p_58)))))), p_1390->g_22)) | p_58) <= p_1390->g_22) && (*p_1390->g_102)));
        p_1390->g_221++;
        if ((*p_59))
            break;
    }
    return l_224;
}


/* ------------------------------------------ */
/* 
 * reads : p_1390->g_112 p_1390->g_192 p_1390->g_125 p_1390->g_133
 * writes: p_1390->g_112
 */
int32_t  func_60(uint32_t * p_61, uint32_t * p_62, struct S1 * p_1390)
{ /* block id: 59 */
    int32_t * volatile l_194 = &p_1390->g_133;/* VOLATILE GLOBAL l_194 */
    for (p_1390->g_112 = 17; (p_1390->g_112 < (-28)); p_1390->g_112--)
    { /* block id: 62 */
        int32_t * volatile *l_193[5];
        int i;
        for (i = 0; i < 5; i++)
            l_193[i] = &p_1390->g_192;
        l_194 = p_1390->g_192;
        return p_1390->g_125;
    }
    return (*l_194);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t * func_63(uint32_t * p_64, int32_t * p_65, uint32_t  p_66, int32_t  p_67, uint64_t  p_68, struct S1 * p_1390)
{ /* block id: 19 */
    int32_t *l_73 = &p_1390->g_4;
    int32_t **l_74 = &l_73;
    (*l_74) = l_73;
    return l_73;
}


/* ------------------------------------------ */
/* 
 * reads : p_1390->g_93 p_1390->g_102 p_1390->g_105 p_1390->g_103 p_1390->g_128 p_1390->g_82.f0 p_1390->g_22 p_1390->g_130 p_1390->g_133 p_1390->g_18
 * writes: p_1390->g_93 p_1390->g_105 p_1390->g_112 p_1390->g_127 p_1390->g_128 p_1390->g_130 p_1390->g_133 p_1390->g_181 p_1390->g_183
 */
uint32_t * func_77(int64_t  p_78, union U0  p_79, int32_t  p_80, uint32_t  p_81, struct S1 * p_1390)
{ /* block id: 23 */
    uint64_t l_118 = 0UL;
    int32_t l_119 = 0x6BE4505CL;
    uint32_t *l_124 = &p_1390->g_125;
    uint32_t **l_123 = &l_124;
    int16_t *l_129 = &p_1390->g_103;
    int32_t l_136 = 1L;
    int32_t l_137[1][1];
    uint32_t l_138 = 0xAD4046E4L;
    int16_t **l_151 = &l_129;
    int16_t **l_174 = (void*)0;
    int16_t **l_175 = (void*)0;
    int16_t *l_177 = &p_1390->g_103;
    int16_t **l_176 = &l_177;
    uint8_t *l_178 = (void*)0;
    uint8_t *l_179 = &p_1390->g_127;
    uint8_t *l_180 = &p_1390->g_181;
    int64_t *l_182 = &p_1390->g_183;
    int16_t **l_184 = (void*)0;
    int16_t *l_186 = &p_1390->g_103;
    int16_t **l_185 = &l_186;
    int32_t *l_187 = &l_136;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_137[i][j] = 3L;
    }
    for (p_78 = 0; (p_78 > 2); ++p_78)
    { /* block id: 26 */
        uint16_t l_91 = 65528UL;
        int16_t *l_92 = &p_1390->g_93;
        uint32_t *l_104 = &p_1390->g_105;
        int64_t *l_117 = (void*)0;
        uint64_t l_120 = 8UL;
        uint32_t **l_121 = (void*)0;
        uint32_t ***l_122[7][6] = {{(void*)0,&l_121,&l_121,&l_121,(void*)0,&l_121},{(void*)0,&l_121,&l_121,&l_121,(void*)0,&l_121},{(void*)0,&l_121,&l_121,&l_121,(void*)0,&l_121},{(void*)0,&l_121,&l_121,&l_121,(void*)0,&l_121},{(void*)0,&l_121,&l_121,&l_121,(void*)0,&l_121},{(void*)0,&l_121,&l_121,&l_121,(void*)0,&l_121},{(void*)0,&l_121,&l_121,&l_121,(void*)0,&l_121}};
        uint8_t *l_126 = &p_1390->g_127;
        int32_t *l_131 = (void*)0;
        int32_t *l_132 = &p_1390->g_133;
        int32_t *l_134 = &l_119;
        int32_t *l_135[10] = {&p_1390->g_133,&p_1390->g_133,&p_1390->g_133,&p_1390->g_133,&p_1390->g_133,&p_1390->g_133,&p_1390->g_133,&p_1390->g_133,&p_1390->g_133,&p_1390->g_133};
        int i, j;
        (*l_132) |= ((p_1390->g_130 &= (safe_lshift_func_uint16_t_u_s(((safe_sub_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u((((*l_92) |= l_91) < ((safe_rshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s(0x32CBL, (safe_mod_func_int8_t_s_s((safe_mul_func_int16_t_s_s(((((((void*)0 != p_1390->g_102) ^ ((++(*l_104)) | ((p_81 , (safe_lshift_func_int8_t_s_u((p_1390->g_112 = (safe_div_func_int64_t_s_s(p_81, 0x40E51693878D320CL))), 0))) | (((p_1390->g_128 |= (safe_sub_func_uint64_t_u_u((((*l_126) = ((l_123 = (((~0x9469FD68CABD0465L) > (((((safe_div_func_uint64_t_u_u((((l_118 = 0L) > p_81) == 4294967293UL), l_119)) == p_1390->g_103) == 0x13CFL) , 1UL) | l_120)) , l_121)) != &l_124)) <= p_79.f0), p_81))) , p_1390->g_82[0].f0) >= p_1390->g_22)))) , 0xE064EC4FL) , &p_1390->g_103) != l_129), p_80)), 1UL)))), 7)) > p_81)), 1)), 4L)) & 0x4ECC2FCF81C7DC75L), 9))) == l_91);
        --l_138;
    }
    if ((atomic_inc(&p_1390->g_atomic_input[78 * get_linear_group_id() + 46]) == 7))
    { /* block id: 39 */
        int16_t l_143 = 2L;
        int16_t *l_142 = &l_143;
        int16_t **l_141 = &l_142;
        int16_t **l_144[9][9];
        uint8_t l_145[4][7] = {{4UL,1UL,1UL,1UL,4UL,4UL,1UL},{4UL,1UL,1UL,1UL,4UL,4UL,1UL},{4UL,1UL,1UL,1UL,4UL,4UL,1UL},{4UL,1UL,1UL,1UL,4UL,4UL,1UL}};
        uint8_t **l_148 = (void*)0;
        int i, j;
        for (i = 0; i < 9; i++)
        {
            for (j = 0; j < 9; j++)
                l_144[i][j] = &l_142;
        }
        l_144[0][2] = l_141;
        l_145[2][2]--;
        l_148 = (void*)0;
        unsigned int result = 0;
        result += l_143;
        int l_145_i0, l_145_i1;
        for (l_145_i0 = 0; l_145_i0 < 4; l_145_i0++) {
            for (l_145_i1 = 0; l_145_i1 < 7; l_145_i1++) {
                result += l_145[l_145_i0][l_145_i1];
            }
        }
        atomic_add(&p_1390->g_special_values[78 * get_linear_group_id() + 46], result);
    }
    else
    { /* block id: 43 */
        (1 + 1);
    }
    (*l_187) ^= (65526UL >= (safe_mul_func_int8_t_s_s((p_78 , (((*l_151) = l_129) != ((*l_185) = (((p_78 , ((*l_182) = (safe_add_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (8UL <= ((safe_rshift_func_int8_t_s_u(p_1390->g_18[2], 2)) < ((*l_180) = ((*l_179) = (safe_mod_func_int16_t_s_s((safe_mod_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u(p_78, ((safe_mul_func_uint8_t_u_u((((safe_rshift_func_uint16_t_u_s((safe_add_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u((safe_div_func_uint8_t_u_u((0x48L == ((((*l_176) = &p_1390->g_103) == &p_1390->g_103) != 9L)), (-1L))), 0x4B9299A0L)), l_138)), 0UL)), l_137[0][0])) < 0xF682D672L) || 0L), l_137[0][0])) < 0x04173BB164CB8E99L))) , p_80), l_138)), 0x218AL)))))))))) , 18446744073709551615UL) , (void*)0)))), p_79.f0)));
    for (p_79.f0 = 3; (p_79.f0 <= 9); p_79.f0 += 1)
    { /* block id: 55 */
        int16_t **l_188[6];
        int16_t ***l_189 = &l_174;
        int i;
        for (i = 0; i < 6; i++)
            l_188[i] = &l_186;
        (*l_189) = (p_1390->g_18[p_79.f0] , l_188[1]);
    }
    return &p_1390->g_125;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1391;
    struct S1* p_1390 = &c_1391;
    struct S1 c_1392 = {
        0x3B3152C5L, // p_1390->g_4
        0x9BACDE9E843631E1L, // p_1390->g_12
        {9L,9L,9L,9L,9L,9L,9L,9L,9L,9L}, // p_1390->g_18
        0x1462CCD2L, // p_1390->g_21
        0x653FFD03L, // p_1390->g_22
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_1390->g_56
        0xD3D7FBA349A2DD31L, // p_1390->g_72
        {{0xD92EDCDDL},{0UL},{0xD92EDCDDL},{0xD92EDCDDL},{0UL},{0xD92EDCDDL},{0xD92EDCDDL}}, // p_1390->g_82
        0x16AAL, // p_1390->g_93
        (-1L), // p_1390->g_103
        &p_1390->g_103, // p_1390->g_102
        6UL, // p_1390->g_105
        0x0A503ECEF36AA128L, // p_1390->g_112
        0xAC4CB544L, // p_1390->g_125
        5UL, // p_1390->g_127
        0x7CF170C459F779DDL, // p_1390->g_128
        1UL, // p_1390->g_130
        (-1L), // p_1390->g_133
        0x5BL, // p_1390->g_181
        (-1L), // p_1390->g_183
        (void*)0, // p_1390->g_192
        0x00L, // p_1390->g_203
        0x02L, // p_1390->g_214
        (-1L), // p_1390->g_215
        0x7BC6E321L, // p_1390->g_216
        1L, // p_1390->g_217
        0x2A45CE9BL, // p_1390->g_218
        0x928AAD06L, // p_1390->g_221
        &p_1390->g_221, // p_1390->g_238
        &p_1390->g_125, // p_1390->g_239
        1L, // p_1390->g_240
        0x02F5L, // p_1390->g_243
        &p_1390->g_216, // p_1390->g_246
        0x19A55D28L, // p_1390->g_289
        0x1A7FCE78FCAF2253L, // p_1390->g_298
        &p_1390->g_289, // p_1390->g_306
        &p_1390->g_306, // p_1390->g_305
        &p_1390->g_214, // p_1390->g_318
        1L, // p_1390->g_319
        0xD8582BF0L, // p_1390->g_327
        {&p_1390->g_93,&p_1390->g_93,&p_1390->g_93,&p_1390->g_93,&p_1390->g_93,&p_1390->g_93,&p_1390->g_93}, // p_1390->g_428
        &p_1390->g_428[0], // p_1390->g_427
        0xF68401850DD78E7BL, // p_1390->g_440
        0x153D7263L, // p_1390->g_455
        {0x66BDL}, // p_1390->g_518
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_1390->g_542
        {&p_1390->g_542[2]}, // p_1390->g_541
        &p_1390->g_216, // p_1390->g_585
        &p_1390->g_585, // p_1390->g_584
        (void*)0, // p_1390->g_668
        {{{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0}},{{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0}},{{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0}},{{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0}},{{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0}},{{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0}},{{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0}},{{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0},{&p_1390->g_518[0],(void*)0,(void*)0,&p_1390->g_518[0],&p_1390->g_518[0],(void*)0}}}, // p_1390->g_692
        &p_1390->g_692[6][1][0], // p_1390->g_691
        {{{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691}},{{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691}},{{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691}},{{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691},{&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691,&p_1390->g_691}}}, // p_1390->g_690
        8L, // p_1390->g_767
        {{{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L}},{{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L}},{{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L}},{{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L},{0x742132111A08C305L,0x19AD1B7D556F1096L,0x4B2D63D424474DAEL,0L,0x51B21B757EA8AC01L,0L,0x4B2D63D424474DAEL,0x19AD1B7D556F1096L,0x742132111A08C305L}}}, // p_1390->g_768
        0x50AE8697D12FF9C1L, // p_1390->g_769
        0x031F31D62F5436B5L, // p_1390->g_770
        1UL, // p_1390->g_771
        0x8193F23300E1B164L, // p_1390->g_791
        0x5DD68BD0L, // p_1390->g_814
        252UL, // p_1390->g_815
        0x1DB2637CL, // p_1390->g_879
        (void*)0, // p_1390->g_884
        &p_1390->g_133, // p_1390->g_885
        1UL, // p_1390->g_921
        &p_1390->g_318, // p_1390->g_941
        0xF3L, // p_1390->g_970
        0L, // p_1390->g_979
        {{{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585}},{{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585}},{{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585}},{{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585}},{{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585}},{{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585}},{{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585},{&p_1390->g_585,&p_1390->g_585,&p_1390->g_585,&p_1390->g_585}}}, // p_1390->g_990
        {&p_1390->g_455,&p_1390->g_455,&p_1390->g_455,&p_1390->g_455,&p_1390->g_455}, // p_1390->g_996
        &p_1390->g_82[0], // p_1390->g_999
        &p_1390->g_999, // p_1390->g_998
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1390->g_1012
        &p_1390->g_428[5], // p_1390->g_1043
        &p_1390->g_1043, // p_1390->g_1042
        &p_1390->g_1042, // p_1390->g_1041
        &p_1390->g_72, // p_1390->g_1049
        {{{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0}},{{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0}},{{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0}},{{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0}},{{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0},{&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,&p_1390->g_941,(void*)0}}}, // p_1390->g_1068
        &p_1390->g_1068[3][2][3], // p_1390->g_1067
        0x67L, // p_1390->g_1182
        1L, // p_1390->g_1218
        {4294967295UL,0xD48DE31AL,4294967295UL,4294967295UL,0xD48DE31AL,4294967295UL,4294967295UL,0xD48DE31AL}, // p_1390->g_1225
        3UL, // p_1390->g_1240
        {(void*)0,(void*)0,(void*)0}, // p_1390->g_1243
        {0x3AL}, // p_1390->g_1324
        sequence_input[get_global_id(0)], // p_1390->global_0_offset
        sequence_input[get_global_id(1)], // p_1390->global_1_offset
        sequence_input[get_global_id(2)], // p_1390->global_2_offset
        sequence_input[get_local_id(0)], // p_1390->local_0_offset
        sequence_input[get_local_id(1)], // p_1390->local_1_offset
        sequence_input[get_local_id(2)], // p_1390->local_2_offset
        sequence_input[get_group_id(0)], // p_1390->group_0_offset
        sequence_input[get_group_id(1)], // p_1390->group_1_offset
        sequence_input[get_group_id(2)], // p_1390->group_2_offset
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1391 = c_1392;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1390);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1390->g_4, "p_1390->g_4", print_hash_value);
    transparent_crc(p_1390->g_12, "p_1390->g_12", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1390->g_18[i], "p_1390->g_18[i]", print_hash_value);

    }
    transparent_crc(p_1390->g_21, "p_1390->g_21", print_hash_value);
    transparent_crc(p_1390->g_22, "p_1390->g_22", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1390->g_56[i], "p_1390->g_56[i]", print_hash_value);

    }
    transparent_crc(p_1390->g_72, "p_1390->g_72", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1390->g_82[i].f0, "p_1390->g_82[i].f0", print_hash_value);

    }
    transparent_crc(p_1390->g_93, "p_1390->g_93", print_hash_value);
    transparent_crc(p_1390->g_103, "p_1390->g_103", print_hash_value);
    transparent_crc(p_1390->g_105, "p_1390->g_105", print_hash_value);
    transparent_crc(p_1390->g_112, "p_1390->g_112", print_hash_value);
    transparent_crc(p_1390->g_125, "p_1390->g_125", print_hash_value);
    transparent_crc(p_1390->g_127, "p_1390->g_127", print_hash_value);
    transparent_crc(p_1390->g_128, "p_1390->g_128", print_hash_value);
    transparent_crc(p_1390->g_130, "p_1390->g_130", print_hash_value);
    transparent_crc(p_1390->g_133, "p_1390->g_133", print_hash_value);
    transparent_crc(p_1390->g_181, "p_1390->g_181", print_hash_value);
    transparent_crc(p_1390->g_183, "p_1390->g_183", print_hash_value);
    transparent_crc(p_1390->g_203, "p_1390->g_203", print_hash_value);
    transparent_crc(p_1390->g_214, "p_1390->g_214", print_hash_value);
    transparent_crc(p_1390->g_215, "p_1390->g_215", print_hash_value);
    transparent_crc(p_1390->g_216, "p_1390->g_216", print_hash_value);
    transparent_crc(p_1390->g_217, "p_1390->g_217", print_hash_value);
    transparent_crc(p_1390->g_218, "p_1390->g_218", print_hash_value);
    transparent_crc(p_1390->g_221, "p_1390->g_221", print_hash_value);
    transparent_crc(p_1390->g_240, "p_1390->g_240", print_hash_value);
    transparent_crc(p_1390->g_243, "p_1390->g_243", print_hash_value);
    transparent_crc(p_1390->g_289, "p_1390->g_289", print_hash_value);
    transparent_crc(p_1390->g_298, "p_1390->g_298", print_hash_value);
    transparent_crc(p_1390->g_319, "p_1390->g_319", print_hash_value);
    transparent_crc(p_1390->g_327, "p_1390->g_327", print_hash_value);
    transparent_crc(p_1390->g_440, "p_1390->g_440", print_hash_value);
    transparent_crc(p_1390->g_455, "p_1390->g_455", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1390->g_518[i], "p_1390->g_518[i]", print_hash_value);

    }
    transparent_crc(p_1390->g_767, "p_1390->g_767", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1390->g_768[i][j][k], "p_1390->g_768[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1390->g_769, "p_1390->g_769", print_hash_value);
    transparent_crc(p_1390->g_770, "p_1390->g_770", print_hash_value);
    transparent_crc(p_1390->g_771, "p_1390->g_771", print_hash_value);
    transparent_crc(p_1390->g_791, "p_1390->g_791", print_hash_value);
    transparent_crc(p_1390->g_814, "p_1390->g_814", print_hash_value);
    transparent_crc(p_1390->g_815, "p_1390->g_815", print_hash_value);
    transparent_crc(p_1390->g_879, "p_1390->g_879", print_hash_value);
    transparent_crc(p_1390->g_921, "p_1390->g_921", print_hash_value);
    transparent_crc(p_1390->g_970, "p_1390->g_970", print_hash_value);
    transparent_crc(p_1390->g_979, "p_1390->g_979", print_hash_value);
    transparent_crc(p_1390->g_1182, "p_1390->g_1182", print_hash_value);
    transparent_crc(p_1390->g_1218, "p_1390->g_1218", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1390->g_1225[i], "p_1390->g_1225[i]", print_hash_value);

    }
    transparent_crc(p_1390->g_1240, "p_1390->g_1240", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1390->g_1324[i], "p_1390->g_1324[i]", print_hash_value);

    }
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 78; i++)
            transparent_crc(p_1390->g_special_values[i + 78 * get_linear_group_id()], "p_1390->g_special_values[i + 78 * get_linear_group_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
