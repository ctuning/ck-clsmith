// ---fake_divergence -g 31,1,1 -l 1,1,1
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


// Seed: 99

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2[7][8][2];
    volatile int32_t g_5;
    volatile int32_t g_6;
    volatile int32_t g_7;
    volatile int32_t g_8;
    int32_t g_9;
    volatile int32_t g_12;
    int32_t g_13[7];
    VECTOR(uint64_t, 8) g_24;
    int64_t g_25;
    int32_t g_66;
    int32_t g_82;
    VECTOR(int32_t, 4) g_87;
    int32_t *g_102;
    uint64_t *g_105[2][6][7];
    VECTOR(int8_t, 16) g_152;
    VECTOR(int8_t, 4) g_154;
    VECTOR(int8_t, 2) g_158;
    VECTOR(int8_t, 4) g_159;
    int32_t g_164;
    uint16_t g_171;
    int32_t *g_180;
    uint32_t g_181;
    uint32_t g_214;
    int32_t ** volatile g_218;
    int32_t ** volatile g_219;
    int16_t g_232;
    uint32_t g_233;
    int32_t ** volatile g_235;
    int32_t ** volatile g_236[3];
    volatile VECTOR(int8_t, 16) g_256;
    VECTOR(uint64_t, 16) g_261;
    VECTOR(int64_t, 4) g_263;
    int32_t ** volatile g_273;
    int32_t ** volatile g_274;
    int8_t g_290;
    int32_t ** volatile g_299;
    int32_t ** volatile g_300;
    int32_t ** volatile g_301[1];
    uint32_t g_339;
    int32_t ** volatile g_394;
    int32_t ** volatile g_395;
    volatile VECTOR(int32_t, 16) g_399;
    VECTOR(int32_t, 8) g_401;
    VECTOR(int32_t, 8) g_403;
    volatile VECTOR(int32_t, 16) g_404;
    volatile VECTOR(int8_t, 4) g_407;
    VECTOR(int16_t, 4) g_413;
    volatile VECTOR(int16_t, 2) g_415;
    uint8_t g_421;
    uint8_t *g_420;
    int32_t *g_507;
    int32_t **g_506[10];
    VECTOR(int8_t, 8) g_520;
    VECTOR(int64_t, 4) g_522;
    int64_t *g_538;
    int64_t **g_537;
    uint32_t g_558;
    VECTOR(int32_t, 2) g_572;
    VECTOR(int32_t, 2) g_574;
    VECTOR(int16_t, 16) g_584;
    VECTOR(int16_t, 4) g_585;
    VECTOR(int64_t, 2) g_586;
    VECTOR(uint8_t, 16) g_602;
    volatile VECTOR(uint64_t, 4) g_628;
    VECTOR(int64_t, 16) g_669;
    VECTOR(uint64_t, 2) g_676;
    int64_t g_681;
    int32_t * volatile g_687;
    VECTOR(uint16_t, 8) g_703;
    VECTOR(uint64_t, 16) g_711;
    VECTOR(uint32_t, 8) g_743;
    VECTOR(uint64_t, 4) g_755;
    uint64_t g_767;
    int32_t * volatile g_768;
    volatile int8_t g_773[6];
    volatile VECTOR(int16_t, 2) g_783;
    VECTOR(int64_t, 8) g_785;
    volatile VECTOR(int16_t, 4) g_804;
    volatile VECTOR(int64_t, 2) g_814;
    volatile VECTOR(int32_t, 4) g_816;
    volatile VECTOR(uint16_t, 16) g_835;
    int32_t ** volatile g_844[4];
    VECTOR(uint8_t, 2) g_856;
    VECTOR(uint16_t, 8) g_865;
    int32_t * volatile g_911;
    int32_t * volatile g_921;
    int32_t ** volatile g_927;
    VECTOR(uint16_t, 8) g_930;
    volatile VECTOR(int16_t, 4) g_942;
    volatile VECTOR(int16_t, 16) g_943;
    VECTOR(int16_t, 8) g_944;
    volatile VECTOR(int16_t, 4) g_945;
    volatile VECTOR(int32_t, 16) g_946;
    volatile VECTOR(int32_t, 8) g_948;
    volatile VECTOR(int32_t, 16) g_949;
    VECTOR(int32_t, 4) g_950;
    VECTOR(int16_t, 4) g_951;
    VECTOR(uint16_t, 4) g_952;
    VECTOR(int32_t, 4) g_953;
    int32_t g_957;
    volatile VECTOR(uint32_t, 8) g_996;
    VECTOR(int8_t, 16) g_1026;
    volatile VECTOR(int8_t, 4) g_1028;
    volatile VECTOR(uint32_t, 16) g_1036;
    VECTOR(uint32_t, 2) g_1037;
    int32_t * volatile g_1044;
    volatile uint32_t g_1051;
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
uint64_t  func_1(struct S0 * p_1054);
int32_t  func_16(uint8_t  p_17, int32_t  p_18, int64_t  p_19, int32_t  p_20, int64_t  p_21, struct S0 * p_1054);
int8_t  func_31(uint16_t  p_32, uint64_t * p_33, int16_t  p_34, uint64_t * p_35, uint32_t  p_36, struct S0 * p_1054);
uint16_t  func_37(uint16_t  p_38, struct S0 * p_1054);
int64_t  func_67(uint64_t * p_68, uint64_t * p_69, struct S0 * p_1054);
uint64_t * func_70(uint64_t  p_71, int32_t  p_72, int8_t  p_73, uint32_t  p_74, struct S0 * p_1054);
uint8_t  func_77(uint64_t  p_78, uint64_t * p_79, struct S0 * p_1054);
int32_t * func_93(uint16_t  p_94, int8_t  p_95, uint64_t * p_96, int32_t * p_97, struct S0 * p_1054);
VECTOR(int8_t, 16)  func_113(uint8_t  p_114, struct S0 * p_1054);
int32_t * func_115(uint64_t * p_116, struct S0 * p_1054);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1054->g_2 p_1054->g_927 p_1054->g_102 p_1054->g_930 p_1054->g_25 p_1054->g_164 p_1054->g_420 p_1054->g_421 p_1054->g_942 p_1054->g_572 p_1054->g_943 p_1054->g_944 p_1054->g_945 p_1054->g_946 p_1054->g_948 p_1054->g_949 p_1054->g_950 p_1054->g_951 p_1054->g_952 p_1054->g_953 p_1054->g_261 p_1054->g_538 p_1054->g_87 p_1054->g_105 p_1054->g_996 p_1054->g_1026 p_1054->g_1028 p_1054->g_159 p_1054->g_1036 p_1054->g_1037 p_1054->g_586 p_1054->g_755 p_1054->g_585 p_1054->g_1044 p_1054->g_256 p_1054->g_1051
 * writes: p_1054->g_2 p_1054->g_9 p_1054->g_13 p_1054->g_82 p_1054->g_558 p_1054->g_102 p_1054->g_164 p_1054->g_421 p_1054->g_214 p_1054->g_957 p_1054->g_507 p_1054->g_87 p_1054->g_506 p_1054->g_602 p_1054->g_290 p_1054->g_171 p_1054->g_1051
 */
uint64_t  func_1(struct S0 * p_1054)
{ /* block id: 4 */
    int16_t l_27 = (-1L);
    VECTOR(int32_t, 8) l_823 = (VECTOR(int32_t, 8))(0x596B6A78L, (VECTOR(int32_t, 4))(0x596B6A78L, (VECTOR(int32_t, 2))(0x596B6A78L, 9L), 9L), 9L, 0x596B6A78L, 9L);
    int32_t l_920 = (-1L);
    VECTOR(int32_t, 4) l_937 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x049AB1F7L), 0x049AB1F7L);
    int32_t **l_955 = &p_1054->g_507;
    uint32_t l_990 = 0x8F147F1EL;
    VECTOR(uint32_t, 2) l_995 = (VECTOR(uint32_t, 2))(0UL, 0xF1DEDF87L);
    VECTOR(uint8_t, 4) l_1003 = (VECTOR(uint8_t, 4))(254UL, (VECTOR(uint8_t, 2))(254UL, 0xDEL), 0xDEL);
    VECTOR(int8_t, 8) l_1023 = (VECTOR(int8_t, 8))(0x2CL, (VECTOR(int8_t, 4))(0x2CL, (VECTOR(int8_t, 2))(0x2CL, 1L), 1L), 1L, 0x2CL, 1L);
    VECTOR(int8_t, 2) l_1024 = (VECTOR(int8_t, 2))(1L, 8L);
    VECTOR(int8_t, 2) l_1025 = (VECTOR(int8_t, 2))(0x75L, 0x61L);
    VECTOR(int8_t, 8) l_1027 = (VECTOR(int8_t, 8))(0x51L, (VECTOR(int8_t, 4))(0x51L, (VECTOR(int8_t, 2))(0x51L, 0x3FL), 0x3FL), 0x3FL, 0x51L, 0x3FL);
    VECTOR(int8_t, 16) l_1029 = (VECTOR(int8_t, 16))(0x71L, (VECTOR(int8_t, 4))(0x71L, (VECTOR(int8_t, 2))(0x71L, 0x48L), 0x48L), 0x48L, 0x71L, 0x48L, (VECTOR(int8_t, 2))(0x71L, 0x48L), (VECTOR(int8_t, 2))(0x71L, 0x48L), 0x71L, 0x48L, 0x71L, 0x48L);
    VECTOR(int8_t, 8) l_1030 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x1AL), 0x1AL), 0x1AL, 0L, 0x1AL);
    VECTOR(int8_t, 16) l_1031 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x46L), 0x46L), 0x46L, (-1L), 0x46L, (VECTOR(int8_t, 2))((-1L), 0x46L), (VECTOR(int8_t, 2))((-1L), 0x46L), (-1L), 0x46L, (-1L), 0x46L);
    VECTOR(int8_t, 16) l_1032 = (VECTOR(int8_t, 16))(5L, (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0L), 0L), 0L, 5L, 0L, (VECTOR(int8_t, 2))(5L, 0L), (VECTOR(int8_t, 2))(5L, 0L), 5L, 0L, 5L, 0L);
    int i;
    for (p_1054->g_2[5][6][0] = 0; (p_1054->g_2[5][6][0] <= 26); ++p_1054->g_2[5][6][0])
    { /* block id: 7 */
        VECTOR(int64_t, 8) l_815 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x59832281FABB30BFL), 0x59832281FABB30BFL), 0x59832281FABB30BFL, 1L, 0x59832281FABB30BFL);
        VECTOR(uint32_t, 8) l_817 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967286UL), 4294967286UL), 4294967286UL, 1UL, 4294967286UL);
        uint64_t *l_839 = (void*)0;
        uint8_t l_978 = 0x66L;
        int32_t l_980 = 0x090F6C42L;
        int32_t *l_981 = (void*)0;
        int16_t l_987 = 1L;
        int32_t l_988 = 0x215C3A72L;
        int32_t l_989 = 0x17A0F7E8L;
        int i;
        for (p_1054->g_9 = 0; (p_1054->g_9 >= (-14)); p_1054->g_9 = safe_sub_func_uint32_t_u_u(p_1054->g_9, 1))
        { /* block id: 10 */
            uint64_t *l_30 = (void*)0;
            int32_t l_39[10][1][10] = {{{0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L}},{{0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L}},{{0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L}},{{0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L}},{{0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L}},{{0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L}},{{0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L}},{{0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L}},{{0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L}},{{0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L,0x7709B807L,0x10954028L,0x10954028L}}};
            int16_t l_838 = 6L;
            int32_t *l_966 = (void*)0;
            int32_t *l_982 = (void*)0;
            int32_t *l_983 = &l_920;
            int32_t *l_984 = &p_1054->g_82;
            int32_t *l_985 = &p_1054->g_66;
            int32_t *l_986[8][8][4] = {{{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]}},{{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]}},{{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]}},{{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]}},{{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]}},{{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]}},{{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]}},{{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]},{&l_39[5][0][7],&l_39[5][0][9],&l_39[9][0][3],&l_39[9][0][3]}}};
            int i, j, k;
            for (p_1054->g_13[4] = 0; (p_1054->g_13[4] < 2); p_1054->g_13[4] = safe_add_func_int64_t_s_s(p_1054->g_13[4], 3))
            { /* block id: 13 */
                uint32_t l_22 = 0x3E8F0887L;
                uint64_t *l_23[9][2][10] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                int32_t l_26 = 0x66DE11D6L;
                VECTOR(uint32_t, 4) l_820 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967289UL), 4294967289UL);
                VECTOR(int16_t, 4) l_824 = (VECTOR(int16_t, 4))(0x0E00L, (VECTOR(int16_t, 2))(0x0E00L, (-1L)), (-1L));
                int32_t *l_922 = &l_920;
                int i, j, k;
                (1 + 1);
            }
            for (p_1054->g_82 = 0; (p_1054->g_82 <= 13); p_1054->g_82 = safe_add_func_int64_t_s_s(p_1054->g_82, 5))
            { /* block id: 276 */
                VECTOR(int8_t, 2) l_933 = (VECTOR(int8_t, 2))(1L, 9L);
                int64_t l_934[10][7][3] = {{{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L}},{{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L}},{{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L}},{{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L}},{{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L}},{{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L}},{{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L}},{{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L}},{{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L}},{{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L},{(-3L),0L,0x6C23C0382609DE56L}}};
                int64_t *l_967[9];
                uint64_t *l_977 = &p_1054->g_767;
                int i, j, k;
                for (i = 0; i < 9; i++)
                    l_967[i] = &p_1054->g_681;
                for (p_1054->g_558 = (-27); (p_1054->g_558 > 47); p_1054->g_558++)
                { /* block id: 279 */
                    (*p_1054->g_927) = &l_920;
                    if (((**p_1054->g_927) < (safe_sub_func_int16_t_s_s((((VECTOR(uint16_t, 16))(p_1054->g_930.s7365010613303162)).s9 < ((void*)0 == &p_1054->g_290)), (p_1054->g_25 < (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 4))(l_933.yxyy)).x, l_933.y)))))))
                    { /* block id: 281 */
                        l_920 &= l_934[9][0][2];
                    }
                    else
                    { /* block id: 283 */
                        (*p_1054->g_102) &= (FAKE_DIVERGE(p_1054->global_1_offset, get_global_id(1), 10) & 0x2671L);
                    }
                }
                if (l_815.s3)
                    break;
                for (p_1054->g_164 = 25; (p_1054->g_164 <= 0); p_1054->g_164 = safe_sub_func_int64_t_s_s(p_1054->g_164, 7))
                { /* block id: 290 */
                    uint32_t l_940[5][2] = {{0xE380B398L,0xE380B398L},{0xE380B398L,0xE380B398L},{0xE380B398L,0xE380B398L},{0xE380B398L,0xE380B398L},{0xE380B398L,0xE380B398L}};
                    int32_t l_941[3][4][2] = {{{0L,0x0D3E69AFL},{0L,0x0D3E69AFL},{0L,0x0D3E69AFL},{0L,0x0D3E69AFL}},{{0L,0x0D3E69AFL},{0L,0x0D3E69AFL},{0L,0x0D3E69AFL},{0L,0x0D3E69AFL}},{{0L,0x0D3E69AFL},{0L,0x0D3E69AFL},{0L,0x0D3E69AFL},{0L,0x0D3E69AFL}}};
                    VECTOR(int32_t, 16) l_947 = (VECTOR(int32_t, 16))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0x290FCE5FL), 0x290FCE5FL), 0x290FCE5FL, 2L, 0x290FCE5FL, (VECTOR(int32_t, 2))(2L, 0x290FCE5FL), (VECTOR(int32_t, 2))(2L, 0x290FCE5FL), 2L, 0x290FCE5FL, 2L, 0x290FCE5FL);
                    int32_t *l_954 = &l_39[9][0][3];
                    uint32_t *l_956 = &p_1054->g_214;
                    int64_t **l_968 = &l_967[7];
                    int16_t *l_979[4][5][10] = {{{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0}},{{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0}},{{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0}},{{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0},{&l_27,(void*)0,(void*)0,&p_1054->g_232,(void*)0,&l_27,&l_27,(void*)0,&p_1054->g_232,(void*)0}}};
                    int i, j, k;
                    (*l_954) = ((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(0x780B4FE2L, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(0x79531496L, ((&p_1054->g_927 == &p_1054->g_236[0]) || (*p_1054->g_420)), ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(l_937.zzxz)).lo <= ((VECTOR(int32_t, 2))(0x3B1A2A42L, 0L))))), 1L, (-1L), (-6L), ((VECTOR(int32_t, 4))(0L, 4L, 0x3C83AB38L, 0x508CF78AL)), (l_941[1][0][0] = (safe_add_func_uint8_t_u_u(((*p_1054->g_420) ^= 0UL), l_940[1][1]))), ((VECTOR(int32_t, 4))(0L, ((VECTOR(int32_t, 2))(0L, 0x366537E7L)), 1L)))).se31c, ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 8))(p_1054->g_942.xxyyzyxy)).even, ((VECTOR(uint16_t, 16))(abs(((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 4))(p_1054->g_572.y, 0x7A1AL, 4L, 1L)).yxzyxxxw))), ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 8))(p_1054->g_943.s34bf5c2e)).s57, ((VECTOR(int16_t, 16))(p_1054->g_944.s0374627560357013)).s5f, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(p_1054->g_945.wxxyzyxy)) & ((VECTOR(int16_t, 2))((-4L), 1L)).xyxyyxxy))).s34))).yyxxxxyx))).s6322260562426256))).s3c87))), ((VECTOR(int32_t, 8))(p_1054->g_946.s18b86c07)).hi, ((VECTOR(int32_t, 8))(l_947.s6280e4a6)).lo))) && ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 16))(p_1054->g_948.s4150632426772123)).s26, ((VECTOR(int32_t, 16))(p_1054->g_949.s0598965670a152e9)).sfc))).yyxx)))))).even >= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(7L, 1L)), 0L, (-9L))), ((VECTOR(int32_t, 4))(p_1054->g_950.ywyy))))), ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 4))(p_1054->g_951.wzzw)), ((VECTOR(uint16_t, 2))(p_1054->g_952.xz)).yxxy))), ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(p_1054->g_953.xwyyxzyx)) | ((VECTOR(int32_t, 8))(0x5950AD59L, 1L, ((-4L) >= (~(!p_1054->g_572.x))), ((VECTOR(int32_t, 4))(0x2792BC30L)), 0x2306AD8CL))))))).s77))).xxxxyxyx, ((VECTOR(int32_t, 8))(0x5DE70691L))))).even && ((VECTOR(int32_t, 4))(0x1ED87ABCL))))).zyzwyywyyzwwywzz && ((VECTOR(int32_t, 16))(0x509ABB14L))))).s803a, ((VECTOR(int32_t, 4))(1L))))).zxxzwwwwxzxxwxwy && ((VECTOR(int32_t, 16))(4L))))).s5a))), 0L)).odd && ((VECTOR(int32_t, 2))((-1L)))))), 0x11E34EC7L, (-6L), (-9L), 0x73A3D142L, (-1L), 0x28FB7E7BL)), ((VECTOR(int32_t, 8))(0x096B5235L))))).s4;
                    l_981 = func_115(func_70(l_39[9][0][2], ((p_1054->g_957 = ((*l_956) = ((void*)0 != l_955))) ^ (safe_div_func_int16_t_s_s((safe_rshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_s((l_980 = (safe_mul_func_int8_t_s_s(((((((*l_955) = l_966) == (((((*l_968) = l_967[7]) == &p_1054->g_681) == ((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((safe_rshift_func_int8_t_s_s(p_1054->g_950.x, 0)) , (safe_mul_func_uint16_t_u_u(((((safe_mod_func_uint16_t_u_u((l_977 == (void*)0), p_1054->g_930.s0)) , 1UL) != l_39[9][0][3]) < 18446744073709551614UL), p_1054->g_261.s3))), 0x669CL, 0UL, 65535UL)), ((VECTOR(uint16_t, 4))(65529UL)))).lo + ((VECTOR(uint16_t, 4))(0xFC2BL))))), ((VECTOR(uint16_t, 4))(1UL))))), ((VECTOR(uint16_t, 4))(0xCF77L))))).x) , (void*)0)) <= l_978) | 0L) ^ (*p_1054->g_538)), p_1054->g_945.z))), 5)), l_978)), (-4L)))), (*l_954), p_1054->g_87.x, p_1054), p_1054);
                    return l_934[5][4][2];
                }
            }
            ++l_990;
        }
    }
    if ((safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(abs_diff(((VECTOR(uint32_t, 8))((-((VECTOR(uint32_t, 2))(l_995.yx)).yxxxxxxy))), ((VECTOR(uint32_t, 16))(p_1054->g_996.s7356547117044474)).even))).s5, 0x1C423203L)))
    { /* block id: 306 */
        uint32_t l_1012 = 4294967295UL;
        int64_t l_1035 = 0x58CCD2D2B53C2827L;
        int8_t *l_1041[6][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
        uint8_t *l_1042[4][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        uint16_t *l_1043 = &p_1054->g_171;
        int i, j;
        (*p_1054->g_1044) = (safe_sub_func_int16_t_s_s((((safe_mul_func_uint8_t_u_u((++(*p_1054->g_420)), ((VECTOR(uint8_t, 4))(l_1003.xzyy)).y)) > (safe_rshift_func_uint16_t_u_s(p_1054->g_930.s3, 14))) || (safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(0UL, (safe_add_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((l_1012 | ((*l_1043) = ((safe_mul_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u((safe_div_func_uint8_t_u_u((--(*p_1054->g_420)), l_823.s6)), ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))((p_1054->g_290 = ((safe_lshift_func_uint8_t_u_u((p_1054->g_602.s3 = ((l_920 = ((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(l_1023.s63)).yyyy && ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))((-1L), 5L)) && ((VECTOR(int8_t, 2))(0L, 0x37L))))).xxyyxxxyyxxyyxxy, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(0x6FL, (-1L))).xxxx && ((VECTOR(int8_t, 4))(l_1024.xyxx))))).odd && ((VECTOR(int8_t, 8))(l_1025.xxxyyyyx)).s32))).xxxxxxyyxxyxyxyy, ((VECTOR(int8_t, 4))(p_1054->g_1026.s573e)).xzyyzwzxxywyxyyz))) == ((VECTOR(int8_t, 2))(l_1027.s04)).yxxyyxyxxyyyyyxx))).s35 && ((VECTOR(int8_t, 2))(p_1054->g_1028.wy))))), ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 4))(l_1029.sfdea)).even, ((VECTOR(int8_t, 16))(l_1030.s1245374202410524)).s4e))).yyxy == ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x38L, 0x44L)), 0L, 1L)).yzxxzxzz, ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 4))(l_1031.s81c1)).yzyyxwxy))), ((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 16))(l_1032.s9ae2d7157b674143)), ((VECTOR(int8_t, 8))((safe_mod_func_uint16_t_u_u((((p_1054->g_159.x , l_1035) > ((p_1054->g_506[8] = l_955) != (((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(p_1054->g_1036.sd7e1)), 4294967288UL, 4294967294UL, 4294967289UL, 0xB245625AL, 0UL, ((VECTOR(uint32_t, 4))(p_1054->g_1037.xyyx)), 4294967292UL, 1UL, 0x364C82BAL)).s7 , &p_1054->g_507))) >= ((safe_unary_minus_func_int32_t_s((safe_mul_func_uint16_t_u_u((((p_1054->g_572.y , (((l_995.x , &p_1054->g_290) == l_1041[4][0]) | l_1025.y)) , FAKE_DIVERGE(p_1054->local_0_offset, get_local_id(0), 10)) , p_1054->g_586.y), 7UL)))) || p_1054->g_951.z)), FAKE_DIVERGE(p_1054->local_1_offset, get_local_id(1), 10))), ((VECTOR(int8_t, 2))(0x33L)), (-7L), 0x3AL, ((VECTOR(int8_t, 2))(9L)), 0x1AL)).s6200636636360607, ((VECTOR(int8_t, 16))(0x2EL))))).hi))) && ((VECTOR(int8_t, 8))(0L))))).s45, (int8_t)l_1035))).xxyxyxyx))) ^ ((VECTOR(int8_t, 8))(0x01L))))).hi))).odd, ((VECTOR(int8_t, 2))(0x38L)))))))).yxxy))), 0x78L, 7L, (-4L), 0x40L))))).s6) > l_1012)), 5)) ^ l_1035)), ((VECTOR(int8_t, 2))(0x19L)), (-6L))).xxyxxwwxxzwyzyzw || ((VECTOR(int8_t, 16))(0x25L))))).s717c, (int8_t)0x67L, (int8_t)(-3L)))).even && ((VECTOR(int8_t, 2))(0x55L))))).odd)), 0x35L)) && 0x3DABL))) > 1L), p_1054->g_2[0][3][1])), 248UL)), 0xA9CBL, 65535UL, ((VECTOR(uint16_t, 2))(0x74AFL)), 0xED9EL, 0xEBDDL)).s2, p_1054->g_755.x))), p_1054->g_585.w));
        return p_1054->g_256.sf;
    }
    else
    { /* block id: 316 */
        int64_t l_1047[2];
        int32_t *l_1048 = &p_1054->g_13[4];
        int32_t *l_1049 = &p_1054->g_2[5][6][0];
        int32_t *l_1050 = (void*)0;
        int i;
        for (i = 0; i < 2; i++)
            l_1047[i] = 0x619B081C1A6B266FL;
        for (l_27 = 0; (l_27 < (-4)); l_27--)
        { /* block id: 319 */
            return l_1047[0];
        }
        p_1054->g_1051--;
    }
    return l_1024.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_1054->g_82 p_1054->g_420 p_1054->g_421 p_1054->g_856 p_1054->g_171 p_1054->g_865 p_1054->g_783 p_1054->g_24 p_1054->g_785 p_1054->g_767 p_1054->g_401 p_1054->g_816 p_1054->g_507 p_1054->g_12 p_1054->g_538 p_1054->g_25 p_1054->g_911 p_1054->g_219 p_1054->g_180
 * writes: p_1054->g_421 p_1054->g_171 p_1054->g_102 p_1054->g_180 p_1054->g_585 p_1054->g_164 p_1054->g_66
 */
int32_t  func_16(uint8_t  p_17, int32_t  p_18, int64_t  p_19, int32_t  p_20, int64_t  p_21, struct S0 * p_1054)
{ /* block id: 238 */
    uint16_t *l_864 = &p_1054->g_171;
    int32_t l_868 = 0x0FBB73F0L;
    VECTOR(int16_t, 8) l_880 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L));
    int16_t *l_887[9] = {&p_1054->g_232,&p_1054->g_232,&p_1054->g_232,&p_1054->g_232,&p_1054->g_232,&p_1054->g_232,&p_1054->g_232,&p_1054->g_232,&p_1054->g_232};
    uint16_t l_888 = 6UL;
    uint16_t *l_889[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_890 = 0x1477BDA5L;
    int8_t *l_891 = (void*)0;
    int8_t *l_892[3];
    int32_t l_893 = 0L;
    int32_t *l_900 = (void*)0;
    VECTOR(uint64_t, 16) l_910 = (VECTOR(uint64_t, 16))(0xACA2432073961506L, (VECTOR(uint64_t, 4))(0xACA2432073961506L, (VECTOR(uint64_t, 2))(0xACA2432073961506L, 0x65F9ABCBBA67C93DL), 0x65F9ABCBBA67C93DL), 0x65F9ABCBBA67C93DL, 0xACA2432073961506L, 0x65F9ABCBBA67C93DL, (VECTOR(uint64_t, 2))(0xACA2432073961506L, 0x65F9ABCBBA67C93DL), (VECTOR(uint64_t, 2))(0xACA2432073961506L, 0x65F9ABCBBA67C93DL), 0xACA2432073961506L, 0x65F9ABCBBA67C93DL, 0xACA2432073961506L, 0x65F9ABCBBA67C93DL);
    int i;
    for (i = 0; i < 3; i++)
        l_892[i] = (void*)0;
    if (((safe_lshift_func_int16_t_s_u(p_1054->g_82, 1)) ^ ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 4))((++(*p_1054->g_420)), ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(p_1054->g_856.yxxy)).odd << ((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))((safe_lshift_func_int16_t_s_s((0x45CF0AC65D02C67BL | (p_18 , (safe_mul_func_uint16_t_u_u((((safe_unary_minus_func_int64_t_s(p_21)) >= ((*l_864) |= 0x2F5EL)) , ((VECTOR(uint16_t, 8))(p_1054->g_865.s13141414)).s2), (safe_div_func_int8_t_s_s(l_868, (safe_mod_func_int32_t_s_s(((safe_sub_func_int16_t_s_s((p_1054->g_783.y ^ p_1054->g_24.s2), (~(safe_add_func_int8_t_s_s((l_893 ^= (safe_lshift_func_uint16_t_u_u((safe_unary_minus_func_int64_t_s((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 2))(1L, (-2L))).yyyxxyxy, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0L, 8L)), 0x42C5L, (-1L))).ywxyxxzx, ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(l_880.s3010352064314112)) > ((VECTOR(int16_t, 16))(((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 16))(GROUP_DIVERGE(1, 1), 255UL, (safe_lshift_func_uint16_t_u_u(((l_890 = ((l_888 ^= (((*p_1054->g_420) = ((safe_mul_func_int16_t_s_s((safe_add_func_uint16_t_u_u(((~(0x948773021467B2F1L >= 18446744073709551615UL)) & 1UL), 0x41C9L)), 0x17BEL)) < p_1054->g_785.s6)) == p_1054->g_767)) > 0x2DF9L)) >= FAKE_DIVERGE(p_1054->group_2_offset, get_group_id(2), 10)), 3)), 255UL, ((VECTOR(uint8_t, 4))(0xB1L)), 254UL, 0x30L, 1UL, GROUP_DIVERGE(2, 1), 0x74L, 254UL, 0x10L, 0x9DL)).s84a8, ((VECTOR(uint8_t, 4))(0x90L))))).lo ^ ((VECTOR(uint8_t, 2))(1UL))))).odd > p_19) == l_880.s3), (-1L), (-10L), ((VECTOR(int16_t, 2))(0x6928L)), 1L, 0L, ((VECTOR(int16_t, 8))(0x49A8L)), 0x75E6L))))).odd))).s41 < ((VECTOR(int16_t, 2))(5L))))).yxxyyxyx))).s5067206002672062, ((VECTOR(int16_t, 16))(0x755BL))))).s8, 6UL)))), 7))), p_21))))) , p_19), p_18)))))))), p_1054->g_401.s5)), 1UL, 0UL, l_880.s0, 0x92L, 0xC3L, (*p_1054->g_420), 6UL, (*p_1054->g_420), ((VECTOR(uint8_t, 4))(0UL)), 0x89L, 0xADL, 254UL)).scb + ((VECTOR(uint8_t, 2))(2UL))))).xxyyxxxy, ((VECTOR(uint8_t, 8))(0x1CL)), ((VECTOR(uint8_t, 8))(0x22L))))).s31))), 7UL)).wwxyywxw, ((VECTOR(uint8_t, 8))(255UL))))) + ((VECTOR(uint8_t, 8))(246UL))))).s4))
    { /* block id: 245 */
        return p_19;
    }
    else
    { /* block id: 247 */
        int32_t **l_901 = &p_1054->g_102;
        int32_t **l_902 = &p_1054->g_180;
        VECTOR(uint64_t, 2) l_905 = (VECTOR(uint64_t, 2))(0x2BA02F8B13ADEA12L, 0x8254A029028BB074L);
        int i;
        (*p_1054->g_911) = (safe_sub_func_uint64_t_u_u((((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(2UL, 0UL)).xyyxyyxxyxxxxyxx + ((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 8))((safe_add_func_int16_t_s_s((l_900 == ((*l_902) = ((*l_901) = (void*)0))), (p_1054->g_585.y = (safe_mod_func_int16_t_s_s(p_21, 0x6D97L))))), 0xD209L, (((VECTOR(uint64_t, 2))(mad_sat(((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 2))(l_905.xy)), ((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 8))(rhadd(((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0x794DA531C741DAB6L, 0UL)), (safe_div_func_int16_t_s_s(p_1054->g_816.w, p_19)), ((VECTOR(uint64_t, 2))(l_910.s3c)), 0UL, 3UL, (((p_18 ^= p_21) , (((((((*p_1054->g_507) = ((VECTOR(int32_t, 2))(0x3AB9571FL, 1L)).odd) , &l_864) == (void*)0) , p_1054->g_12) , p_21) & 0x85FDEBD1L)) , GROUP_DIVERGE(2, 1)), ((VECTOR(uint64_t, 8))(0x479E711D3B5CEE22L)))).s1fe9 + ((VECTOR(uint64_t, 4))(8UL))))).wyyyxywywywxyxxz, ((VECTOR(uint64_t, 16))(4UL))))).even, ((VECTOR(uint64_t, 8))(0xF4B6761A4BD3ABADL))))), ((VECTOR(uint64_t, 8))(0xEAA64DA72C5A8352L))))).s51))), ((VECTOR(uint64_t, 2))(0x0BD4A8EDA97F6B68L)), ((VECTOR(uint64_t, 2))(0xC8E8335D0EEDE1AEL))))).hi <= (*p_1054->g_538)), p_17, 0x0DACL, 5UL, 0x6266L, 1UL)).s2470217362475026, ((VECTOR(uint16_t, 16))(0UL)))))))).s9 <= FAKE_DIVERGE(p_1054->group_0_offset, get_group_id(0), 10)) , (-6L)) && (-3L)), 0UL));
        (*l_902) = (*p_1054->g_219);
        return p_18;
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_1054->g_743 p_1054->g_102 p_1054->g_394 p_1054->g_219 p_1054->g_520
 * writes: p_1054->g_82 p_1054->g_180
 */
int8_t  func_31(uint16_t  p_32, uint64_t * p_33, int16_t  p_34, uint64_t * p_35, uint32_t  p_36, struct S0 * p_1054)
{ /* block id: 225 */
    uint8_t l_840 = 0x63L;
    int32_t l_841[8] = {(-1L),0x2BB0FFFEL,(-1L),(-1L),0x2BB0FFFEL,(-1L),(-1L),0x2BB0FFFEL};
    int32_t *l_846 = (void*)0;
    uint8_t l_847[10][1][5] = {{{5UL,0x2FL,255UL,0x2FL,5UL}},{{5UL,0x2FL,255UL,0x2FL,5UL}},{{5UL,0x2FL,255UL,0x2FL,5UL}},{{5UL,0x2FL,255UL,0x2FL,5UL}},{{5UL,0x2FL,255UL,0x2FL,5UL}},{{5UL,0x2FL,255UL,0x2FL,5UL}},{{5UL,0x2FL,255UL,0x2FL,5UL}},{{5UL,0x2FL,255UL,0x2FL,5UL}},{{5UL,0x2FL,255UL,0x2FL,5UL}},{{5UL,0x2FL,255UL,0x2FL,5UL}}};
    int i, j, k;
    (*p_1054->g_102) = (0x431ECDD74B18AC8AL < (l_841[2] = (l_840 || (!p_1054->g_743.s3))));
    l_841[4] ^= 0L;
    if (l_840)
    { /* block id: 229 */
        uint64_t l_842 = 6UL;
        return l_842;
    }
    else
    { /* block id: 231 */
        int32_t *l_843[6][1][2] = {{{&l_841[2],&p_1054->g_82}},{{&l_841[2],&p_1054->g_82}},{{&l_841[2],&p_1054->g_82}},{{&l_841[2],&p_1054->g_82}},{{&l_841[2],&p_1054->g_82}},{{&l_841[2],&p_1054->g_82}}};
        int32_t **l_845[7];
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_845[i] = &p_1054->g_180;
        (*p_1054->g_394) = l_843[2][0][0];
        l_846 = (void*)0;
        (*p_1054->g_102) = l_847[4][0][0];
        (*p_1054->g_219) = (void*)0;
    }
    return p_1054->g_520.s0;
}


/* ------------------------------------------ */
/* 
 * reads : p_1054->g_25
 * writes: p_1054->g_25
 */
uint16_t  func_37(uint16_t  p_38, struct S0 * p_1054)
{ /* block id: 15 */
    VECTOR(uint8_t, 8) l_47 = (VECTOR(uint8_t, 8))(0x59L, (VECTOR(uint8_t, 4))(0x59L, (VECTOR(uint8_t, 2))(0x59L, 0x0AL), 0x0AL), 0x0AL, 0x59L, 0x0AL);
    int32_t l_277 = 0x0C315EC5L;
    uint8_t *l_289 = (void*)0;
    int32_t l_366 = 0x00F3A398L;
    int32_t l_368 = 0x3D17A426L;
    int32_t l_373 = 0x55E65395L;
    int32_t l_377 = 0L;
    int32_t l_381 = (-5L);
    int32_t l_382[6][2] = {{0x3877866AL,0x36F49889L},{0x3877866AL,0x36F49889L},{0x3877866AL,0x36F49889L},{0x3877866AL,0x36F49889L},{0x3877866AL,0x36F49889L},{0x3877866AL,0x36F49889L}};
    VECTOR(int32_t, 4) l_402 = (VECTOR(int32_t, 4))(0x670702EFL, (VECTOR(int32_t, 2))(0x670702EFL, 0x484B9C91L), 0x484B9C91L);
    VECTOR(uint32_t, 16) l_448 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x68DB86AFL), 0x68DB86AFL), 0x68DB86AFL, 4294967295UL, 0x68DB86AFL, (VECTOR(uint32_t, 2))(4294967295UL, 0x68DB86AFL), (VECTOR(uint32_t, 2))(4294967295UL, 0x68DB86AFL), 4294967295UL, 0x68DB86AFL, 4294967295UL, 0x68DB86AFL);
    uint16_t **l_453 = (void*)0;
    uint64_t l_510 = 0UL;
    int16_t l_513[8];
    VECTOR(int8_t, 4) l_519 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 5L), 5L);
    int64_t *l_535[1];
    int64_t **l_534 = &l_535[0];
    VECTOR(int16_t, 2) l_545 = (VECTOR(int16_t, 2))((-1L), 0x39B2L);
    VECTOR(int32_t, 8) l_563 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
    VECTOR(int32_t, 2) l_573 = (VECTOR(int32_t, 2))(1L, 0x2C59A7A9L);
    int64_t l_590 = 0x71734C492EB125E9L;
    int32_t l_591 = 1L;
    int32_t *l_592 = &p_1054->g_164;
    VECTOR(uint8_t, 2) l_605 = (VECTOR(uint8_t, 2))(3UL, 0xBFL);
    VECTOR(uint64_t, 4) l_710 = (VECTOR(uint64_t, 4))(0xD38FF340452228E1L, (VECTOR(uint64_t, 2))(0xD38FF340452228E1L, 0x9D2998CCA97FF3F5L), 0x9D2998CCA97FF3F5L);
    uint32_t l_738 = 0xD93CB375L;
    int32_t **l_764 = &p_1054->g_102;
    int32_t ***l_763 = &l_764;
    VECTOR(int64_t, 8) l_784 = (VECTOR(int64_t, 8))(0x2E21C69755036B6BL, (VECTOR(int64_t, 4))(0x2E21C69755036B6BL, (VECTOR(int64_t, 2))(0x2E21C69755036B6BL, 5L), 5L), 5L, 0x2E21C69755036B6BL, 5L);
    VECTOR(uint64_t, 8) l_810 = (VECTOR(uint64_t, 8))(0x84181BDEEA4488E9L, (VECTOR(uint64_t, 4))(0x84181BDEEA4488E9L, (VECTOR(uint64_t, 2))(0x84181BDEEA4488E9L, 0xE196F958D70C033CL), 0xE196F958D70C033CL), 0xE196F958D70C033CL, 0x84181BDEEA4488E9L, 0xE196F958D70C033CL);
    uint16_t l_811 = 65529UL;
    uint32_t l_812 = 4294967295UL;
    int i, j;
    for (i = 0; i < 8; i++)
        l_513[i] = 0x0C11L;
    for (i = 0; i < 1; i++)
        l_535[i] = &p_1054->g_25;
    for (p_1054->g_25 = 1; (p_1054->g_25 >= (-25)); p_1054->g_25 = safe_sub_func_uint64_t_u_u(p_1054->g_25, 5))
    { /* block id: 18 */
        VECTOR(uint8_t, 8) l_48 = (VECTOR(uint8_t, 8))(8UL, (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 7UL), 7UL), 7UL, 8UL, 7UL);
        int32_t *l_65 = &p_1054->g_66;
        uint64_t *l_80 = (void*)0;
        int16_t *l_275 = &p_1054->g_232;
        uint16_t l_276 = 0x3217L;
        int32_t *l_288[9];
        VECTOR(uint8_t, 16) l_327 = (VECTOR(uint8_t, 16))(254UL, (VECTOR(uint8_t, 4))(254UL, (VECTOR(uint8_t, 2))(254UL, 0x87L), 0x87L), 0x87L, 254UL, 0x87L, (VECTOR(uint8_t, 2))(254UL, 0x87L), (VECTOR(uint8_t, 2))(254UL, 0x87L), 254UL, 0x87L, 254UL, 0x87L);
        VECTOR(uint16_t, 16) l_343 = (VECTOR(uint16_t, 16))(65533UL, (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 3UL), 3UL), 3UL, 65533UL, 3UL, (VECTOR(uint16_t, 2))(65533UL, 3UL), (VECTOR(uint16_t, 2))(65533UL, 3UL), 65533UL, 3UL, 65533UL, 3UL);
        int32_t l_359 = 1L;
        int32_t l_361 = 0x2E839DA0L;
        int32_t l_363 = 0x6AF3258EL;
        int32_t l_367 = 0L;
        int32_t l_372 = (-1L);
        int32_t l_376 = 1L;
        int32_t l_378 = 1L;
        int32_t l_380 = 0x0304CA01L;
        int32_t l_383 = 0x076C5B1EL;
        int32_t l_385 = 0x3791F0A8L;
        VECTOR(int32_t, 8) l_400 = (VECTOR(int32_t, 8))(0x14D61557L, (VECTOR(int32_t, 4))(0x14D61557L, (VECTOR(int32_t, 2))(0x14D61557L, 0x17ABDD65L), 0x17ABDD65L), 0x17ABDD65L, 0x14D61557L, 0x17ABDD65L);
        VECTOR(int16_t, 4) l_411 = (VECTOR(int16_t, 4))(0x4DA3L, (VECTOR(int16_t, 2))(0x4DA3L, 6L), 6L);
        VECTOR(int16_t, 16) l_414 = (VECTOR(int16_t, 16))((-7L), (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), 0x69E4L), 0x69E4L), 0x69E4L, (-7L), 0x69E4L, (VECTOR(int16_t, 2))((-7L), 0x69E4L), (VECTOR(int16_t, 2))((-7L), 0x69E4L), (-7L), 0x69E4L, (-7L), 0x69E4L);
        VECTOR(uint32_t, 2) l_445 = (VECTOR(uint32_t, 2))(5UL, 0x1BE864C5L);
        VECTOR(uint32_t, 4) l_451 = (VECTOR(uint32_t, 4))(4294967288UL, (VECTOR(uint32_t, 2))(4294967288UL, 4294967287UL), 4294967287UL);
        VECTOR(uint32_t, 4) l_461 = (VECTOR(uint32_t, 4))(0xA63BE433L, (VECTOR(uint32_t, 2))(0xA63BE433L, 0xB7FAAD69L), 0xB7FAAD69L);
        uint16_t l_514 = 0x79E8L;
        VECTOR(int16_t, 4) l_577 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x30D8L), 0x30D8L);
        VECTOR(uint8_t, 8) l_599 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xCAL), 0xCAL), 0xCAL, 255UL, 0xCAL);
        uint64_t l_636[8];
        int64_t ***l_649 = &l_534;
        uint16_t l_686 = 0x5081L;
        VECTOR(uint64_t, 4) l_776 = (VECTOR(uint64_t, 4))(0xD05782F5B9427BA9L, (VECTOR(uint64_t, 2))(0xD05782F5B9427BA9L, 0xA8D67A3EB30E7B3DL), 0xA8D67A3EB30E7B3DL);
        uint64_t *l_808[6][2][8] = {{{&l_636[7],(void*)0,&l_636[1],&l_636[7],&l_636[1],(void*)0,&l_636[7],(void*)0},{&l_636[7],(void*)0,&l_636[1],&l_636[7],&l_636[1],(void*)0,&l_636[7],(void*)0}},{{&l_636[7],(void*)0,&l_636[1],&l_636[7],&l_636[1],(void*)0,&l_636[7],(void*)0},{&l_636[7],(void*)0,&l_636[1],&l_636[7],&l_636[1],(void*)0,&l_636[7],(void*)0}},{{&l_636[7],(void*)0,&l_636[1],&l_636[7],&l_636[1],(void*)0,&l_636[7],(void*)0},{&l_636[7],(void*)0,&l_636[1],&l_636[7],&l_636[1],(void*)0,&l_636[7],(void*)0}},{{&l_636[7],(void*)0,&l_636[1],&l_636[7],&l_636[1],(void*)0,&l_636[7],(void*)0},{&l_636[7],(void*)0,&l_636[1],&l_636[7],&l_636[1],(void*)0,&l_636[7],(void*)0}},{{&l_636[7],(void*)0,&l_636[1],&l_636[7],&l_636[1],(void*)0,&l_636[7],(void*)0},{&l_636[7],(void*)0,&l_636[1],&l_636[7],&l_636[1],(void*)0,&l_636[7],(void*)0}},{{&l_636[7],(void*)0,&l_636[1],&l_636[7],&l_636[1],(void*)0,&l_636[7],(void*)0},{&l_636[7],(void*)0,&l_636[1],&l_636[7],&l_636[1],(void*)0,&l_636[7],(void*)0}}};
        VECTOR(int32_t, 16) l_809 = (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 1L), 1L), 1L, 8L, 1L, (VECTOR(int32_t, 2))(8L, 1L), (VECTOR(int32_t, 2))(8L, 1L), 8L, 1L, 8L, 1L);
        int32_t *l_813 = &l_277;
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_288[i] = &p_1054->g_164;
        for (i = 0; i < 8; i++)
            l_636[i] = 0x8017FB636B8A8D61L;
        l_277 ^= (safe_unary_minus_func_uint8_t_u(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(l_47.s12)).xxxxyxyy - ((VECTOR(uint8_t, 16))(l_48.s6304447042322040)).even))).s22 + ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 4))((safe_mul_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s(((*l_275) = ((safe_rshift_func_uint16_t_u_s((safe_add_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(l_47.s2, 3)), ((safe_sub_func_int32_t_s_s(((*l_65) = p_38), (func_67(func_70((((p_1054->g_7 & (safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (func_77(p_1054->g_24.s2, l_80, p_1054) | p_38)))) >= (((~(-10L)) <= 0x1459L) | p_1054->g_24.s5)) || p_38), p_1054->g_25, p_38, l_47.s5, p_1054), l_80, p_1054) == p_38))) & 0x97L))), 7)) != p_1054->g_152.sb)), GROUP_DIVERGE(2, 1))), l_276)), p_38)), ((VECTOR(uint8_t, 2))(1UL)), 0xEDL)).wwwzzzyxzzxyxxzz, ((VECTOR(uint8_t, 16))(0x0FL))))).s783c + ((VECTOR(uint8_t, 4))(0x02L))))) ^ ((VECTOR(uint8_t, 4))(0UL))))).hi))), 247UL, 0x63L)).x));
    }
    return p_38;
}


/* ------------------------------------------ */
/* 
 * reads : p_1054->g_164 p_1054->g_159 p_1054->g_219 p_1054->g_180 p_1054->g_214 p_1054->g_2 p_1054->g_82 p_1054->g_171 p_1054->g_152 p_1054->g_274 p_1054->g_181
 * writes: p_1054->g_164 p_1054->g_181 p_1054->g_82 p_1054->g_87 p_1054->g_214 p_1054->g_180 p_1054->g_232 p_1054->g_233 p_1054->g_263
 */
int64_t  func_67(uint64_t * p_68, uint64_t * p_69, struct S0 * p_1054)
{ /* block id: 57 */
    uint32_t l_189 = 1UL;
    int32_t l_216 = 0x633DE217L;
    uint16_t *l_254 = &p_1054->g_171;
    VECTOR(uint64_t, 8) l_257 = (VECTOR(uint64_t, 8))(0xA83157B272C45AEDL, (VECTOR(uint64_t, 4))(0xA83157B272C45AEDL, (VECTOR(uint64_t, 2))(0xA83157B272C45AEDL, 0UL), 0UL), 0UL, 0xA83157B272C45AEDL, 0UL);
    int i;
    l_189--;
    for (p_1054->g_164 = (-17); (p_1054->g_164 != (-18)); p_1054->g_164 = safe_sub_func_int32_t_s_s(p_1054->g_164, 3))
    { /* block id: 61 */
        int8_t l_211[5][4][7] = {{{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)},{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)},{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)},{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)}},{{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)},{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)},{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)},{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)}},{{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)},{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)},{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)},{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)}},{{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)},{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)},{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)},{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)}},{{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)},{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)},{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)},{0x22L,0x50L,0x72L,0x61L,0x58L,8L,(-5L)}}};
        int32_t l_217 = 0x1CFE1C9FL;
        uint16_t *l_229[7][5][6] = {{{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171}},{{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171}},{{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171}},{{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171}},{{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171}},{{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171}},{{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171},{&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171,&p_1054->g_171}}};
        int32_t *l_237[5];
        VECTOR(uint64_t, 16) l_262 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xE838CCD62B2E0209L), 0xE838CCD62B2E0209L), 0xE838CCD62B2E0209L, 1UL, 0xE838CCD62B2E0209L, (VECTOR(uint64_t, 2))(1UL, 0xE838CCD62B2E0209L), (VECTOR(uint64_t, 2))(1UL, 0xE838CCD62B2E0209L), 1UL, 0xE838CCD62B2E0209L, 1UL, 0xE838CCD62B2E0209L);
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_237[i] = (void*)0;
        for (p_1054->g_181 = (-25); (p_1054->g_181 != 28); p_1054->g_181++)
        { /* block id: 64 */
            int64_t l_212[10] = {0x50DD1DF32BE28071L,0x50DD1DF32BE28071L,0x50DD1DF32BE28071L,0x50DD1DF32BE28071L,0x50DD1DF32BE28071L,0x50DD1DF32BE28071L,0x50DD1DF32BE28071L,0x50DD1DF32BE28071L,0x50DD1DF32BE28071L,0x50DD1DF32BE28071L};
            int32_t l_234 = 0x6B9A1A24L;
            uint16_t *l_255 = &p_1054->g_171;
            VECTOR(uint64_t, 2) l_258 = (VECTOR(uint64_t, 2))(18446744073709551614UL, 18446744073709551615UL);
            VECTOR(uint64_t, 2) l_259 = (VECTOR(uint64_t, 2))(6UL, 0UL);
            VECTOR(uint64_t, 8) l_260 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 1UL, 18446744073709551615UL);
            int64_t *l_266 = &l_212[1];
            int64_t *l_267 = (void*)0;
            int64_t *l_268[7];
            uint32_t *l_269 = &l_189;
            int8_t *l_270 = (void*)0;
            int8_t *l_271 = (void*)0;
            int8_t *l_272 = &l_211[2][2][0];
            int i;
            for (i = 0; i < 7; i++)
                l_268[i] = (void*)0;
            for (p_1054->g_82 = (-29); (p_1054->g_82 != (-30)); --p_1054->g_82)
            { /* block id: 67 */
                int32_t *l_209 = (void*)0;
                int32_t *l_210[2];
                uint32_t *l_213 = &p_1054->g_214;
                uint16_t *l_215[3][1][1];
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_210[i] = (void*)0;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 1; k++)
                            l_215[i][j][k] = &p_1054->g_171;
                    }
                }
                l_217 = (65532UL && (~(safe_div_func_int64_t_s_s(((VECTOR(int64_t, 2))((-9L), (-9L))).even, (safe_unary_minus_func_int64_t_s((safe_add_func_uint16_t_u_u((l_216 = (safe_rshift_func_int8_t_s_s(((safe_sub_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u((!0x0B68L), l_189)) < (p_1054->g_87.w = l_189)), ((*l_213) = (l_211[0][0][2] | ((l_211[0][0][2] && ((((((+251UL) > (!(((6UL != (GROUP_DIVERGE(1, 1) , (((((-1L) > l_211[2][3][0]) , 65529UL) | l_211[1][2][1]) ^ 0x5AL))) || l_212[1]) , 0x71L))) ^ l_189) != p_1054->g_159.x) <= l_212[1]) == 6L)) ^ l_189))))) <= FAKE_DIVERGE(p_1054->global_1_offset, get_global_id(1), 10)), 2))), 0L))))))));
                (*p_1054->g_219) = &l_216;
                (*p_1054->g_180) = l_217;
            }
            for (p_1054->g_82 = (-4); (p_1054->g_82 == (-12)); p_1054->g_82--)
            { /* block id: 77 */
                int16_t l_224 = 0x350DL;
                uint16_t **l_230 = &l_229[3][3][1];
                int16_t *l_231 = &p_1054->g_232;
                l_234 = (safe_sub_func_int32_t_s_s(l_224, (l_211[0][0][1] , (((p_1054->g_233 = ((safe_sub_func_uint16_t_u_u((l_216 | (0xEDL || ((safe_lshift_func_uint8_t_u_s((1L ^ (l_211[0][0][2] , ((GROUP_DIVERGE(2, 1) ^ ((*l_231) = (&p_1054->g_171 == ((*l_230) = l_229[3][3][1])))) || (l_217 <= l_216)))), l_189)) ^ p_1054->g_214))), GROUP_DIVERGE(1, 1))) ^ 0x33B0L)) , l_212[1]) > GROUP_DIVERGE(0, 1)))));
                l_237[3] = &l_234;
            }
            l_234 = (safe_add_func_int32_t_s_s(((safe_mod_func_int8_t_s_s(((*l_272) = (18446744073709551608UL | ((((*l_269) = (safe_sub_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s(l_189, 5)), (((safe_sub_func_uint8_t_u_u((safe_add_func_uint16_t_u_u((((((p_1054->g_263.z = ((safe_mul_func_int8_t_s_s((safe_add_func_int64_t_s_s(0x3905C364FBA54FB7L, 18446744073709551606UL)), ((l_254 != l_255) , ((VECTOR(int8_t, 8))(p_1054->g_256.s0fdc778b)).s5))) | ((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),VECTOR(uint64_t, 2),((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 8))(l_257.s63154051)).lo, ((VECTOR(uint64_t, 8))(rotate(((VECTOR(uint64_t, 8))(l_258.xxxxyxyx)), ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_259.xy)), 8UL, 0x59F013895B77DECBL)).yyzwyxzy & ((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 16))(l_260.s5213111415403725)), ((VECTOR(uint64_t, 8))(rhadd(((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 4))(p_1054->g_261.s3465)).hi, ((VECTOR(uint64_t, 2))(1UL, 18446744073709551614UL))))).yxyxxxyx, ((VECTOR(uint64_t, 2))(l_262.s11)).xyxyxyyy))).s5500324012635554))).lo)))))).lo))).odd, ((VECTOR(uint64_t, 16))(rhadd(((VECTOR(uint64_t, 2))(abs(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))((-1L), 0x6B6B44AD2A175853L, 6L, 0x24D222F857C45B17L)).hi != ((VECTOR(int64_t, 4))(p_1054->g_263.xxxw)).hi))), (-9L), (-1L))).hi && ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((-1L), 0x3FB299D949EFFA17L)), (l_212[0] > 0x778C5597L), ((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),int64_t,((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(1L, (-8L))) != ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0L, (-8L))), ((*l_266) = (safe_mod_func_int8_t_s_s(p_1054->g_152.sa, 0xCAL))), (-1L), ((VECTOR(int64_t, 2))(0x2AB91710C8686A52L)), 0x6ABA46CA4792FF84L, 6L)).s13, ((VECTOR(int64_t, 2))((-1L)))))), 1L, 0L, 0x4924E5F42DECB10AL, ((VECTOR(int64_t, 2))(0L)), (-1L), ((VECTOR(int64_t, 4))(0x1ECC58A9AC5DE7C9L)), 0x3F3A690F2597311CL, ((VECTOR(int64_t, 2))(0x33579C4F052CB063L)), 0x0F18263FFD70F741L)).sc8))), ((VECTOR(int64_t, 2))((-1L))), p_1054->g_164, l_257.s1, 0L, 1L)) && ((VECTOR(int64_t, 8))(0x47E6054026ABD109L))))).s43, ((VECTOR(int64_t, 2))(0L))))).xyyx, (int64_t)l_257.s2, (int64_t)(-1L)))), (-9L))), ((VECTOR(int64_t, 8))(6L))))).s51 || ((VECTOR(int64_t, 2))(0x7F4622C585B56D45L))))), ((VECTOR(int64_t, 2))(0x26A33A6AFC24F1CAL)), ((VECTOR(int64_t, 2))(0x4B5EA101BEEFEFF1L)), (-3L), 0x28D40452170CCA3BL)).s02)))))).xyyyyxxyxyyxxyyy, ((VECTOR(uint64_t, 16))(7UL))))).saa, ((VECTOR(uint64_t, 2))(0UL))))).even)) || l_189) > FAKE_DIVERGE(p_1054->global_1_offset, get_global_id(1), 10)) , p_1054->g_2[5][6][0]) || l_234), p_1054->g_82)), l_257.s5)) , l_260.s3) ^ l_258.x)))) ^ p_1054->g_171) <= l_259.y))), p_1054->g_152.s6)) || 0x70L), 1L));
            if (l_189)
                continue;
        }
    }
    (*p_1054->g_274) = &l_216;
    return p_1054->g_181;
}


/* ------------------------------------------ */
/* 
 * reads : p_1054->g_105
 * writes:
 */
uint64_t * func_70(uint64_t  p_71, int32_t  p_72, int8_t  p_73, uint32_t  p_74, struct S0 * p_1054)
{ /* block id: 54 */
    int32_t *l_184[4][10][4] = {{{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]}},{{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]}},{{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]}},{{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]},{&p_1054->g_2[5][6][0],(void*)0,(void*)0,&p_1054->g_2[5][6][0]}}};
    int8_t l_185[1][8] = {{0x01L,0x01L,0x01L,0x01L,0x01L,0x01L,0x01L,0x01L}};
    uint16_t l_186 = 0x1730L;
    int i, j, k;
    --l_186;
    return p_1054->g_105[0][1][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1054->g_105 p_1054->g_82 p_1054->g_181
 * writes: p_1054->g_102 p_1054->g_82 p_1054->g_87 p_1054->g_180 p_1054->g_181
 */
uint8_t  func_77(uint64_t  p_78, uint64_t * p_79, struct S0 * p_1054)
{ /* block id: 20 */
    int32_t *l_81 = &p_1054->g_82;
    int32_t *l_83 = (void*)0;
    int32_t *l_84 = (void*)0;
    int32_t *l_85[10] = {&p_1054->g_2[0][3][0],&p_1054->g_2[5][6][0],&p_1054->g_9,&p_1054->g_2[5][6][0],&p_1054->g_2[0][3][0],&p_1054->g_2[0][3][0],&p_1054->g_2[5][6][0],&p_1054->g_9,&p_1054->g_2[5][6][0],&p_1054->g_2[0][3][0]};
    int32_t l_86 = (-1L);
    uint8_t l_88 = 254UL;
    uint64_t *l_99 = (void*)0;
    int i;
    ++l_88;
    for (l_86 = (-22); (l_86 < (-13)); ++l_86)
    { /* block id: 24 */
        int32_t l_98[8][3] = {{0x473D51CDL,0x473D51CDL,0x51B9DC45L},{0x473D51CDL,0x473D51CDL,0x51B9DC45L},{0x473D51CDL,0x473D51CDL,0x51B9DC45L},{0x473D51CDL,0x473D51CDL,0x51B9DC45L},{0x473D51CDL,0x473D51CDL,0x51B9DC45L},{0x473D51CDL,0x473D51CDL,0x51B9DC45L},{0x473D51CDL,0x473D51CDL,0x51B9DC45L},{0x473D51CDL,0x473D51CDL,0x51B9DC45L}};
        int32_t **l_179[7][4][9] = {{{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]}},{{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]}},{{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]}},{{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]}},{{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]}},{{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]}},{{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]},{&l_81,&l_81,&l_81,&l_84,&l_84,(void*)0,&l_83,&l_85[0],&l_85[4]}}};
        int i, j, k;
        if (p_78)
            break;
        p_1054->g_180 = func_93(p_78, l_98[4][0], l_99, &l_86, p_1054);
        --p_1054->g_181;
    }
    return p_78;
}


/* ------------------------------------------ */
/* 
 * reads : p_1054->g_82 p_1054->g_105
 * writes: p_1054->g_102 p_1054->g_82 p_1054->g_87
 */
int32_t * func_93(uint16_t  p_94, int8_t  p_95, uint64_t * p_96, int32_t * p_97, struct S0 * p_1054)
{ /* block id: 26 */
    int32_t *l_100 = (void*)0;
    int32_t **l_101 = &l_100;
    VECTOR(int8_t, 2) l_156 = (VECTOR(int8_t, 2))(0x11L, 0x10L);
    uint16_t l_172 = 0UL;
    uint16_t *l_176 = &l_172;
    uint64_t **l_177 = &p_1054->g_105[1][4][6];
    int32_t *l_178 = &p_1054->g_82;
    int i;
    p_1054->g_102 = ((*l_101) = l_100);
    for (p_1054->g_82 = 0; (p_1054->g_82 >= 26); ++p_1054->g_82)
    { /* block id: 31 */
        int32_t *l_106 = (void*)0;
        int32_t *l_107 = (void*)0;
        int32_t *l_108 = (void*)0;
        int32_t *l_109 = (void*)0;
        int32_t *l_110[7] = {&p_1054->g_2[0][5][0],&p_1054->g_13[0],&p_1054->g_2[0][5][0],&p_1054->g_2[0][5][0],&p_1054->g_13[0],&p_1054->g_2[0][5][0],&p_1054->g_2[0][5][0]};
        VECTOR(int8_t, 8) l_153 = (VECTOR(int8_t, 8))(0x32L, (VECTOR(int8_t, 4))(0x32L, (VECTOR(int8_t, 2))(0x32L, 0x44L), 0x44L), 0x44L, 0x32L, 0x44L);
        VECTOR(int8_t, 16) l_155 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-5L)), (-5L)), (-5L), 1L, (-5L), (VECTOR(int8_t, 2))(1L, (-5L)), (VECTOR(int8_t, 2))(1L, (-5L)), 1L, (-5L), 1L, (-5L));
        VECTOR(int8_t, 16) l_157 = (VECTOR(int8_t, 16))(0x0BL, (VECTOR(int8_t, 4))(0x0BL, (VECTOR(int8_t, 2))(0x0BL, 0x16L), 0x16L), 0x16L, 0x0BL, 0x16L, (VECTOR(int8_t, 2))(0x0BL, 0x16L), (VECTOR(int8_t, 2))(0x0BL, 0x16L), 0x0BL, 0x16L, 0x0BL, 0x16L);
        uint64_t **l_160[8][2] = {{&p_1054->g_105[0][1][0],&p_1054->g_105[0][4][5]},{&p_1054->g_105[0][1][0],&p_1054->g_105[0][4][5]},{&p_1054->g_105[0][1][0],&p_1054->g_105[0][4][5]},{&p_1054->g_105[0][1][0],&p_1054->g_105[0][4][5]},{&p_1054->g_105[0][1][0],&p_1054->g_105[0][4][5]},{&p_1054->g_105[0][1][0],&p_1054->g_105[0][4][5]},{&p_1054->g_105[0][1][0],&p_1054->g_105[0][4][5]},{&p_1054->g_105[0][1][0],&p_1054->g_105[0][4][5]}};
        int32_t *l_163 = &p_1054->g_164;
        uint64_t l_173[8] = {2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL};
        int i, j;
        p_1054->g_87.w = ((void*)0 != p_1054->g_105[0][1][0]);
        if ((*p_97))
            break;
        l_173[7] = (safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(func_113(p_1054->g_87.z, p_1054))).s995b && ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(p_1054->g_152.sa7fea728027805f1)).even && ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 2))(l_153.s25)).yxxxyxyxyxyyxyxx, ((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(p_1054->g_154.zwxyxxzxxxzwzwzz)).se967 && ((VECTOR(int8_t, 16))(0x26L, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(l_155.s02fcd55c)).s44 && ((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(l_156.yyyxxxxx)).even, ((VECTOR(int8_t, 2))(l_157.s50)).yyxy, ((VECTOR(int8_t, 16))(p_1054->g_158.xxyyxyyxyyyxxxxy)).se89a))).even))), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_1054->g_159.xy)), 0x06L, 0x44L)), ((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(0x29L, (0x0B726DB9416F8909L == FAKE_DIVERGE(p_1054->global_1_offset, get_global_id(1), 10)), (-5L), ((((*l_163) = (((p_96 = p_96) != (p_1054->g_105[1][0][4] = p_1054->g_105[0][1][0])) != (safe_mul_func_int8_t_s_s(((void*)0 == &p_1054->g_102), p_94)))) , (((safe_sub_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_s((((safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1054->group_1_offset, get_group_id(1), 10), 3)) >= (((65530UL | p_1054->g_13[4]) , 1L) | p_1054->g_171)) , 0UL), 3)), 3L)) , (*p_1054->g_102)) , l_172)) >= 0x34L), p_95, p_94, p_1054->g_87.x, 0L, p_95, ((VECTOR(int8_t, 2))(1L)), p_1054->g_159.y, ((VECTOR(int8_t, 4))((-4L))))).sc5 && ((VECTOR(int8_t, 2))(2L))))).yyxy, ((VECTOR(int8_t, 4))(0x5CL))))), p_95, ((VECTOR(int8_t, 2))((-7L))), (-1L), (-2L))).s2a53))).even, (int8_t)p_94, (int8_t)p_1054->g_87.w))).yxyyxyxxyxxxyyyy))).sac && ((VECTOR(int8_t, 2))(0x1BL))))).xxyxyyyx))).hi))).xzwzwzwy ^ ((VECTOR(int8_t, 8))(0x73L))))).s3, p_95));
    }
    (*l_178) |= (safe_sub_func_uint64_t_u_u((65535UL & ((*l_176) = (p_94 , (p_94 || 4294967295UL)))), (l_177 != &p_1054->g_105[0][1][0])));
    return &p_1054->g_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_1054->g_25 p_1054->g_82 p_1054->g_24 p_1054->g_2 p_1054->g_87
 * writes: p_1054->g_87 p_1054->g_102
 */
VECTOR(int8_t, 16)  func_113(uint8_t  p_114, struct S0 * p_1054)
{ /* block id: 34 */
    uint64_t *l_117 = (void*)0;
    int32_t **l_150 = &p_1054->g_102;
    VECTOR(int8_t, 4) l_151 = (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 0x0AL), 0x0AL);
    int i;
    (*l_150) = func_115(l_117, p_1054);
    return l_151.zwzxxwwwwxywzxwy;
}


/* ------------------------------------------ */
/* 
 * reads : p_1054->g_25 p_1054->g_82 p_1054->g_24 p_1054->g_2 p_1054->g_87
 * writes: p_1054->g_87
 */
int32_t * func_115(uint64_t * p_116, struct S0 * p_1054)
{ /* block id: 35 */
    VECTOR(uint8_t, 16) l_118 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL), 255UL, 255UL, 255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL, 255UL, 255UL, 255UL);
    VECTOR(uint8_t, 16) l_123 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x33L), 0x33L), 0x33L, 0UL, 0x33L, (VECTOR(uint8_t, 2))(0UL, 0x33L), (VECTOR(uint8_t, 2))(0UL, 0x33L), 0UL, 0x33L, 0UL, 0x33L);
    VECTOR(uint8_t, 4) l_124 = (VECTOR(uint8_t, 4))(247UL, (VECTOR(uint8_t, 2))(247UL, 6UL), 6UL);
    VECTOR(uint8_t, 16) l_125 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xA8L), 0xA8L), 0xA8L, 255UL, 0xA8L, (VECTOR(uint8_t, 2))(255UL, 0xA8L), (VECTOR(uint8_t, 2))(255UL, 0xA8L), 255UL, 0xA8L, 255UL, 0xA8L);
    VECTOR(uint8_t, 8) l_130 = (VECTOR(uint8_t, 8))(253UL, (VECTOR(uint8_t, 4))(253UL, (VECTOR(uint8_t, 2))(253UL, 255UL), 255UL), 255UL, 253UL, 255UL);
    VECTOR(uint8_t, 8) l_131 = (VECTOR(uint8_t, 8))(5UL, (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 0xC8L), 0xC8L), 0xC8L, 5UL, 0xC8L);
    int32_t l_142 = 0x31ED4B6EL;
    uint8_t *l_143 = (void*)0;
    uint8_t *l_144 = (void*)0;
    uint8_t *l_145 = (void*)0;
    uint8_t *l_146 = (void*)0;
    uint8_t *l_147[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_148 = 0x24D0BBB0L;
    int32_t *l_149[8][7] = {{(void*)0,&p_1054->g_13[6],&p_1054->g_2[5][6][0],&p_1054->g_82,&p_1054->g_82,&p_1054->g_13[4],&p_1054->g_9},{(void*)0,&p_1054->g_13[6],&p_1054->g_2[5][6][0],&p_1054->g_82,&p_1054->g_82,&p_1054->g_13[4],&p_1054->g_9},{(void*)0,&p_1054->g_13[6],&p_1054->g_2[5][6][0],&p_1054->g_82,&p_1054->g_82,&p_1054->g_13[4],&p_1054->g_9},{(void*)0,&p_1054->g_13[6],&p_1054->g_2[5][6][0],&p_1054->g_82,&p_1054->g_82,&p_1054->g_13[4],&p_1054->g_9},{(void*)0,&p_1054->g_13[6],&p_1054->g_2[5][6][0],&p_1054->g_82,&p_1054->g_82,&p_1054->g_13[4],&p_1054->g_9},{(void*)0,&p_1054->g_13[6],&p_1054->g_2[5][6][0],&p_1054->g_82,&p_1054->g_82,&p_1054->g_13[4],&p_1054->g_9},{(void*)0,&p_1054->g_13[6],&p_1054->g_2[5][6][0],&p_1054->g_82,&p_1054->g_82,&p_1054->g_13[4],&p_1054->g_9},{(void*)0,&p_1054->g_13[6],&p_1054->g_2[5][6][0],&p_1054->g_82,&p_1054->g_82,&p_1054->g_13[4],&p_1054->g_9}};
    int i, j;
    p_1054->g_87.x ^= (((((VECTOR(uint8_t, 8))(l_118.s8655dcce)).s3 == ((VECTOR(uint8_t, 16))(1UL, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(0xE4L, ((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 4))(l_123.sb9d5)).lo, ((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 8))(1UL, 1UL, ((VECTOR(uint8_t, 4))(3UL, ((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 16))(0xBFL, 255UL, 0x68L, ((VECTOR(uint8_t, 8))(l_124.yzyxwyzx)), ((VECTOR(uint8_t, 2))(l_125.se6)), 0xDAL, 1UL, 253UL)).sc6, ((VECTOR(uint8_t, 2))(0x4DL, 0xB9L))))), 249UL)), 255UL, 0xB3L)).odd, (uint8_t)p_1054->g_25))).lo, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))((l_125.s7 , l_125.s9), 0x7DL, 1UL, 0xA5L, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(l_130.s07727023)).odd | ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(l_131.s5227)), 0x03L, 0UL, (safe_sub_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(p_1054->g_82, (+(safe_div_func_uint64_t_u_u((safe_mod_func_uint16_t_u_u(0xCC0EL, FAKE_DIVERGE(p_1054->global_0_offset, get_global_id(0), 10))), (p_1054->g_24.s4 | (safe_rshift_func_uint8_t_u_s((l_148 &= (l_142 = l_118.se)), (l_118.s0 , p_1054->g_24.s7))))))))), l_125.sc)), ((VECTOR(uint8_t, 4))(0UL)), p_1054->g_2[5][6][0], ((VECTOR(uint8_t, 4))(0x53L)))).scea5))), ((VECTOR(uint8_t, 4))(0xA2L))))).even + ((VECTOR(uint8_t, 2))(4UL))))), 255UL, 0xD8L)), 255UL, 0x48L, ((VECTOR(uint8_t, 4))(1UL)), 0xFAL, 0xBAL)).s350d + ((VECTOR(uint8_t, 4))(0x49L))))).odd))), ((VECTOR(uint8_t, 2))(0xF0L)), p_1054->g_25, 8UL, 252UL)).s0107133032724274 ^ ((VECTOR(uint8_t, 16))(5UL))))).lo + ((VECTOR(uint8_t, 8))(249UL))))) >> ((VECTOR(uint8_t, 8))(8))))), 0x02L, 0x11L, 0xF9L, ((VECTOR(uint8_t, 4))(0UL)))).s0) == l_131.s4) , 0L);
    return &p_1054->g_9;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1055;
    struct S0* p_1054 = &c_1055;
    struct S0 c_1056 = {
        {{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}}}, // p_1054->g_2
        6L, // p_1054->g_5
        0x495231FBL, // p_1054->g_6
        0x593F9BEAL, // p_1054->g_7
        0x6A56C37FL, // p_1054->g_8
        0L, // p_1054->g_9
        9L, // p_1054->g_12
        {0x52E819D3L,0x52E819D3L,0x52E819D3L,0x52E819D3L,0x52E819D3L,0x52E819D3L,0x52E819D3L}, // p_1054->g_13
        (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xB1857497F3C88FEDL), 0xB1857497F3C88FEDL), 0xB1857497F3C88FEDL, 1UL, 0xB1857497F3C88FEDL), // p_1054->g_24
        0x3A55A41183D96456L, // p_1054->g_25
        0x4DC86549L, // p_1054->g_66
        0x31902DE6L, // p_1054->g_82
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), // p_1054->g_87
        &p_1054->g_82, // p_1054->g_102
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_1054->g_105
        (VECTOR(int8_t, 16))(0x57L, (VECTOR(int8_t, 4))(0x57L, (VECTOR(int8_t, 2))(0x57L, 0x35L), 0x35L), 0x35L, 0x57L, 0x35L, (VECTOR(int8_t, 2))(0x57L, 0x35L), (VECTOR(int8_t, 2))(0x57L, 0x35L), 0x57L, 0x35L, 0x57L, 0x35L), // p_1054->g_152
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-10L)), (-10L)), // p_1054->g_154
        (VECTOR(int8_t, 2))(0x17L, 0x7CL), // p_1054->g_158
        (VECTOR(int8_t, 4))(0x7FL, (VECTOR(int8_t, 2))(0x7FL, 0x5FL), 0x5FL), // p_1054->g_159
        1L, // p_1054->g_164
        0xEE82L, // p_1054->g_171
        (void*)0, // p_1054->g_180
        0xAD1BBFE5L, // p_1054->g_181
        1UL, // p_1054->g_214
        (void*)0, // p_1054->g_218
        &p_1054->g_180, // p_1054->g_219
        9L, // p_1054->g_232
        1UL, // p_1054->g_233
        (void*)0, // p_1054->g_235
        {&p_1054->g_180,&p_1054->g_180,&p_1054->g_180}, // p_1054->g_236
        (VECTOR(int8_t, 16))(5L, (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0x64L), 0x64L), 0x64L, 5L, 0x64L, (VECTOR(int8_t, 2))(5L, 0x64L), (VECTOR(int8_t, 2))(5L, 0x64L), 5L, 0x64L, 5L, 0x64L), // p_1054->g_256
        (VECTOR(uint64_t, 16))(18446744073709551612UL, (VECTOR(uint64_t, 4))(18446744073709551612UL, (VECTOR(uint64_t, 2))(18446744073709551612UL, 0x3F513112503CDE44L), 0x3F513112503CDE44L), 0x3F513112503CDE44L, 18446744073709551612UL, 0x3F513112503CDE44L, (VECTOR(uint64_t, 2))(18446744073709551612UL, 0x3F513112503CDE44L), (VECTOR(uint64_t, 2))(18446744073709551612UL, 0x3F513112503CDE44L), 18446744073709551612UL, 0x3F513112503CDE44L, 18446744073709551612UL, 0x3F513112503CDE44L), // p_1054->g_261
        (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-4L)), (-4L)), // p_1054->g_263
        (void*)0, // p_1054->g_273
        &p_1054->g_180, // p_1054->g_274
        0L, // p_1054->g_290
        (void*)0, // p_1054->g_299
        (void*)0, // p_1054->g_300
        {&p_1054->g_102}, // p_1054->g_301
        0x29B82F5DL, // p_1054->g_339
        &p_1054->g_180, // p_1054->g_394
        &p_1054->g_102, // p_1054->g_395
        (VECTOR(int32_t, 16))(0x5AFC4515L, (VECTOR(int32_t, 4))(0x5AFC4515L, (VECTOR(int32_t, 2))(0x5AFC4515L, 1L), 1L), 1L, 0x5AFC4515L, 1L, (VECTOR(int32_t, 2))(0x5AFC4515L, 1L), (VECTOR(int32_t, 2))(0x5AFC4515L, 1L), 0x5AFC4515L, 1L, 0x5AFC4515L, 1L), // p_1054->g_399
        (VECTOR(int32_t, 8))(0x4C121C0AL, (VECTOR(int32_t, 4))(0x4C121C0AL, (VECTOR(int32_t, 2))(0x4C121C0AL, 0x3237DB2EL), 0x3237DB2EL), 0x3237DB2EL, 0x4C121C0AL, 0x3237DB2EL), // p_1054->g_401
        (VECTOR(int32_t, 8))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0x7561EA05L), 0x7561EA05L), 0x7561EA05L, 9L, 0x7561EA05L), // p_1054->g_403
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x256FAC0FL), 0x256FAC0FL), 0x256FAC0FL, 0L, 0x256FAC0FL, (VECTOR(int32_t, 2))(0L, 0x256FAC0FL), (VECTOR(int32_t, 2))(0L, 0x256FAC0FL), 0L, 0x256FAC0FL, 0L, 0x256FAC0FL), // p_1054->g_404
        (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x26L), 0x26L), // p_1054->g_407
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 2L), 2L), // p_1054->g_413
        (VECTOR(int16_t, 2))(1L, 0x694DL), // p_1054->g_415
        248UL, // p_1054->g_421
        &p_1054->g_421, // p_1054->g_420
        &p_1054->g_164, // p_1054->g_507
        {&p_1054->g_507,&p_1054->g_507,&p_1054->g_507,&p_1054->g_507,&p_1054->g_507,&p_1054->g_507,&p_1054->g_507,&p_1054->g_507,&p_1054->g_507,&p_1054->g_507}, // p_1054->g_506
        (VECTOR(int8_t, 8))(0x73L, (VECTOR(int8_t, 4))(0x73L, (VECTOR(int8_t, 2))(0x73L, 1L), 1L), 1L, 0x73L, 1L), // p_1054->g_520
        (VECTOR(int64_t, 4))(0x678C6EAD5C701582L, (VECTOR(int64_t, 2))(0x678C6EAD5C701582L, (-8L)), (-8L)), // p_1054->g_522
        &p_1054->g_25, // p_1054->g_538
        &p_1054->g_538, // p_1054->g_537
        0xBCE3FA61L, // p_1054->g_558
        (VECTOR(int32_t, 2))((-6L), 1L), // p_1054->g_572
        (VECTOR(int32_t, 2))(0x7FF8FB99L, 0x2C4CFEBBL), // p_1054->g_574
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x5C00L), 0x5C00L), 0x5C00L, 1L, 0x5C00L, (VECTOR(int16_t, 2))(1L, 0x5C00L), (VECTOR(int16_t, 2))(1L, 0x5C00L), 1L, 0x5C00L, 1L, 0x5C00L), // p_1054->g_584
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x1873L), 0x1873L), // p_1054->g_585
        (VECTOR(int64_t, 2))(5L, (-2L)), // p_1054->g_586
        (VECTOR(uint8_t, 16))(0x8BL, (VECTOR(uint8_t, 4))(0x8BL, (VECTOR(uint8_t, 2))(0x8BL, 0x08L), 0x08L), 0x08L, 0x8BL, 0x08L, (VECTOR(uint8_t, 2))(0x8BL, 0x08L), (VECTOR(uint8_t, 2))(0x8BL, 0x08L), 0x8BL, 0x08L, 0x8BL, 0x08L), // p_1054->g_602
        (VECTOR(uint64_t, 4))(0x1DE4F65BF3132FC3L, (VECTOR(uint64_t, 2))(0x1DE4F65BF3132FC3L, 0UL), 0UL), // p_1054->g_628
        (VECTOR(int64_t, 16))(5L, (VECTOR(int64_t, 4))(5L, (VECTOR(int64_t, 2))(5L, 1L), 1L), 1L, 5L, 1L, (VECTOR(int64_t, 2))(5L, 1L), (VECTOR(int64_t, 2))(5L, 1L), 5L, 1L, 5L, 1L), // p_1054->g_669
        (VECTOR(uint64_t, 2))(18446744073709551613UL, 0xC65D599EFA89D790L), // p_1054->g_676
        0x380F68BDD24091B7L, // p_1054->g_681
        &p_1054->g_82, // p_1054->g_687
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x0908L), 0x0908L), 0x0908L, 0UL, 0x0908L), // p_1054->g_703
        (VECTOR(uint64_t, 16))(0xA14563946301D1EEL, (VECTOR(uint64_t, 4))(0xA14563946301D1EEL, (VECTOR(uint64_t, 2))(0xA14563946301D1EEL, 0x29A1A15366654C84L), 0x29A1A15366654C84L), 0x29A1A15366654C84L, 0xA14563946301D1EEL, 0x29A1A15366654C84L, (VECTOR(uint64_t, 2))(0xA14563946301D1EEL, 0x29A1A15366654C84L), (VECTOR(uint64_t, 2))(0xA14563946301D1EEL, 0x29A1A15366654C84L), 0xA14563946301D1EEL, 0x29A1A15366654C84L, 0xA14563946301D1EEL, 0x29A1A15366654C84L), // p_1054->g_711
        (VECTOR(uint32_t, 8))(0xDAB2D7AEL, (VECTOR(uint32_t, 4))(0xDAB2D7AEL, (VECTOR(uint32_t, 2))(0xDAB2D7AEL, 4294967295UL), 4294967295UL), 4294967295UL, 0xDAB2D7AEL, 4294967295UL), // p_1054->g_743
        (VECTOR(uint64_t, 4))(0xA0CE24F8F1BDC661L, (VECTOR(uint64_t, 2))(0xA0CE24F8F1BDC661L, 0xC454F5D8970DDDBAL), 0xC454F5D8970DDDBAL), // p_1054->g_755
        0x0045B5BA043453FAL, // p_1054->g_767
        (void*)0, // p_1054->g_768
        {0x76L,0x76L,0x76L,0x76L,0x76L,0x76L}, // p_1054->g_773
        (VECTOR(int16_t, 2))(5L, 0x0609L), // p_1054->g_783
        (VECTOR(int64_t, 8))(0x470A8F8EBBD8B823L, (VECTOR(int64_t, 4))(0x470A8F8EBBD8B823L, (VECTOR(int64_t, 2))(0x470A8F8EBBD8B823L, 0x0A130FC5681DB47EL), 0x0A130FC5681DB47EL), 0x0A130FC5681DB47EL, 0x470A8F8EBBD8B823L, 0x0A130FC5681DB47EL), // p_1054->g_785
        (VECTOR(int16_t, 4))(0x07F2L, (VECTOR(int16_t, 2))(0x07F2L, (-1L)), (-1L)), // p_1054->g_804
        (VECTOR(int64_t, 2))(0L, 1L), // p_1054->g_814
        (VECTOR(int32_t, 4))(0x08FB953DL, (VECTOR(int32_t, 2))(0x08FB953DL, 0x1460B828L), 0x1460B828L), // p_1054->g_816
        (VECTOR(uint16_t, 16))(4UL, (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 0UL), 0UL), 0UL, 4UL, 0UL, (VECTOR(uint16_t, 2))(4UL, 0UL), (VECTOR(uint16_t, 2))(4UL, 0UL), 4UL, 0UL, 4UL, 0UL), // p_1054->g_835
        {&p_1054->g_102,&p_1054->g_102,&p_1054->g_102,&p_1054->g_102}, // p_1054->g_844
        (VECTOR(uint8_t, 2))(0x64L, 0xAFL), // p_1054->g_856
        (VECTOR(uint16_t, 8))(0x1A72L, (VECTOR(uint16_t, 4))(0x1A72L, (VECTOR(uint16_t, 2))(0x1A72L, 65530UL), 65530UL), 65530UL, 0x1A72L, 65530UL), // p_1054->g_865
        &p_1054->g_66, // p_1054->g_911
        (void*)0, // p_1054->g_921
        &p_1054->g_102, // p_1054->g_927
        (VECTOR(uint16_t, 8))(0x29CAL, (VECTOR(uint16_t, 4))(0x29CAL, (VECTOR(uint16_t, 2))(0x29CAL, 0x627FL), 0x627FL), 0x627FL, 0x29CAL, 0x627FL), // p_1054->g_930
        (VECTOR(int16_t, 4))(0x077CL, (VECTOR(int16_t, 2))(0x077CL, 0x710FL), 0x710FL), // p_1054->g_942
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 9L), 9L), 9L, (-1L), 9L, (VECTOR(int16_t, 2))((-1L), 9L), (VECTOR(int16_t, 2))((-1L), 9L), (-1L), 9L, (-1L), 9L), // p_1054->g_943
        (VECTOR(int16_t, 8))(0x59E5L, (VECTOR(int16_t, 4))(0x59E5L, (VECTOR(int16_t, 2))(0x59E5L, 0x5F18L), 0x5F18L), 0x5F18L, 0x59E5L, 0x5F18L), // p_1054->g_944
        (VECTOR(int16_t, 4))(0x6189L, (VECTOR(int16_t, 2))(0x6189L, (-6L)), (-6L)), // p_1054->g_945
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x4E9CFD25L), 0x4E9CFD25L), 0x4E9CFD25L, (-1L), 0x4E9CFD25L, (VECTOR(int32_t, 2))((-1L), 0x4E9CFD25L), (VECTOR(int32_t, 2))((-1L), 0x4E9CFD25L), (-1L), 0x4E9CFD25L, (-1L), 0x4E9CFD25L), // p_1054->g_946
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x2B6F0561L), 0x2B6F0561L), 0x2B6F0561L, (-1L), 0x2B6F0561L), // p_1054->g_948
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-5L)), (-5L)), (-5L), 0L, (-5L), (VECTOR(int32_t, 2))(0L, (-5L)), (VECTOR(int32_t, 2))(0L, (-5L)), 0L, (-5L), 0L, (-5L)), // p_1054->g_949
        (VECTOR(int32_t, 4))(0x46966804L, (VECTOR(int32_t, 2))(0x46966804L, 0x42E43643L), 0x42E43643L), // p_1054->g_950
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x6522L), 0x6522L), // p_1054->g_951
        (VECTOR(uint16_t, 4))(0x7440L, (VECTOR(uint16_t, 2))(0x7440L, 0xA39BL), 0xA39BL), // p_1054->g_952
        (VECTOR(int32_t, 4))(0x0C8624B4L, (VECTOR(int32_t, 2))(0x0C8624B4L, 0x1F6F1D26L), 0x1F6F1D26L), // p_1054->g_953
        (-1L), // p_1054->g_957
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x55F484C3L), 0x55F484C3L), 0x55F484C3L, 0UL, 0x55F484C3L), // p_1054->g_996
        (VECTOR(int8_t, 16))(0x2AL, (VECTOR(int8_t, 4))(0x2AL, (VECTOR(int8_t, 2))(0x2AL, 0x05L), 0x05L), 0x05L, 0x2AL, 0x05L, (VECTOR(int8_t, 2))(0x2AL, 0x05L), (VECTOR(int8_t, 2))(0x2AL, 0x05L), 0x2AL, 0x05L, 0x2AL, 0x05L), // p_1054->g_1026
        (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 0x2BL), 0x2BL), // p_1054->g_1028
        (VECTOR(uint32_t, 16))(0x2C8AA496L, (VECTOR(uint32_t, 4))(0x2C8AA496L, (VECTOR(uint32_t, 2))(0x2C8AA496L, 0UL), 0UL), 0UL, 0x2C8AA496L, 0UL, (VECTOR(uint32_t, 2))(0x2C8AA496L, 0UL), (VECTOR(uint32_t, 2))(0x2C8AA496L, 0UL), 0x2C8AA496L, 0UL, 0x2C8AA496L, 0UL), // p_1054->g_1036
        (VECTOR(uint32_t, 2))(0xBCD2256AL, 0x271D8CE2L), // p_1054->g_1037
        &p_1054->g_9, // p_1054->g_1044
        4294967293UL, // p_1054->g_1051
        sequence_input[get_global_id(0)], // p_1054->global_0_offset
        sequence_input[get_global_id(1)], // p_1054->global_1_offset
        sequence_input[get_global_id(2)], // p_1054->global_2_offset
        sequence_input[get_local_id(0)], // p_1054->local_0_offset
        sequence_input[get_local_id(1)], // p_1054->local_1_offset
        sequence_input[get_local_id(2)], // p_1054->local_2_offset
        sequence_input[get_group_id(0)], // p_1054->group_0_offset
        sequence_input[get_group_id(1)], // p_1054->group_1_offset
        sequence_input[get_group_id(2)], // p_1054->group_2_offset
    };
    c_1055 = c_1056;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1054);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1054->g_2[i][j][k], "p_1054->g_2[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1054->g_5, "p_1054->g_5", print_hash_value);
    transparent_crc(p_1054->g_6, "p_1054->g_6", print_hash_value);
    transparent_crc(p_1054->g_7, "p_1054->g_7", print_hash_value);
    transparent_crc(p_1054->g_8, "p_1054->g_8", print_hash_value);
    transparent_crc(p_1054->g_9, "p_1054->g_9", print_hash_value);
    transparent_crc(p_1054->g_12, "p_1054->g_12", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1054->g_13[i], "p_1054->g_13[i]", print_hash_value);

    }
    transparent_crc(p_1054->g_24.s0, "p_1054->g_24.s0", print_hash_value);
    transparent_crc(p_1054->g_24.s1, "p_1054->g_24.s1", print_hash_value);
    transparent_crc(p_1054->g_24.s2, "p_1054->g_24.s2", print_hash_value);
    transparent_crc(p_1054->g_24.s3, "p_1054->g_24.s3", print_hash_value);
    transparent_crc(p_1054->g_24.s4, "p_1054->g_24.s4", print_hash_value);
    transparent_crc(p_1054->g_24.s5, "p_1054->g_24.s5", print_hash_value);
    transparent_crc(p_1054->g_24.s6, "p_1054->g_24.s6", print_hash_value);
    transparent_crc(p_1054->g_24.s7, "p_1054->g_24.s7", print_hash_value);
    transparent_crc(p_1054->g_25, "p_1054->g_25", print_hash_value);
    transparent_crc(p_1054->g_66, "p_1054->g_66", print_hash_value);
    transparent_crc(p_1054->g_82, "p_1054->g_82", print_hash_value);
    transparent_crc(p_1054->g_87.x, "p_1054->g_87.x", print_hash_value);
    transparent_crc(p_1054->g_87.y, "p_1054->g_87.y", print_hash_value);
    transparent_crc(p_1054->g_87.z, "p_1054->g_87.z", print_hash_value);
    transparent_crc(p_1054->g_87.w, "p_1054->g_87.w", print_hash_value);
    transparent_crc(p_1054->g_152.s0, "p_1054->g_152.s0", print_hash_value);
    transparent_crc(p_1054->g_152.s1, "p_1054->g_152.s1", print_hash_value);
    transparent_crc(p_1054->g_152.s2, "p_1054->g_152.s2", print_hash_value);
    transparent_crc(p_1054->g_152.s3, "p_1054->g_152.s3", print_hash_value);
    transparent_crc(p_1054->g_152.s4, "p_1054->g_152.s4", print_hash_value);
    transparent_crc(p_1054->g_152.s5, "p_1054->g_152.s5", print_hash_value);
    transparent_crc(p_1054->g_152.s6, "p_1054->g_152.s6", print_hash_value);
    transparent_crc(p_1054->g_152.s7, "p_1054->g_152.s7", print_hash_value);
    transparent_crc(p_1054->g_152.s8, "p_1054->g_152.s8", print_hash_value);
    transparent_crc(p_1054->g_152.s9, "p_1054->g_152.s9", print_hash_value);
    transparent_crc(p_1054->g_152.sa, "p_1054->g_152.sa", print_hash_value);
    transparent_crc(p_1054->g_152.sb, "p_1054->g_152.sb", print_hash_value);
    transparent_crc(p_1054->g_152.sc, "p_1054->g_152.sc", print_hash_value);
    transparent_crc(p_1054->g_152.sd, "p_1054->g_152.sd", print_hash_value);
    transparent_crc(p_1054->g_152.se, "p_1054->g_152.se", print_hash_value);
    transparent_crc(p_1054->g_152.sf, "p_1054->g_152.sf", print_hash_value);
    transparent_crc(p_1054->g_154.x, "p_1054->g_154.x", print_hash_value);
    transparent_crc(p_1054->g_154.y, "p_1054->g_154.y", print_hash_value);
    transparent_crc(p_1054->g_154.z, "p_1054->g_154.z", print_hash_value);
    transparent_crc(p_1054->g_154.w, "p_1054->g_154.w", print_hash_value);
    transparent_crc(p_1054->g_158.x, "p_1054->g_158.x", print_hash_value);
    transparent_crc(p_1054->g_158.y, "p_1054->g_158.y", print_hash_value);
    transparent_crc(p_1054->g_159.x, "p_1054->g_159.x", print_hash_value);
    transparent_crc(p_1054->g_159.y, "p_1054->g_159.y", print_hash_value);
    transparent_crc(p_1054->g_159.z, "p_1054->g_159.z", print_hash_value);
    transparent_crc(p_1054->g_159.w, "p_1054->g_159.w", print_hash_value);
    transparent_crc(p_1054->g_164, "p_1054->g_164", print_hash_value);
    transparent_crc(p_1054->g_171, "p_1054->g_171", print_hash_value);
    transparent_crc(p_1054->g_181, "p_1054->g_181", print_hash_value);
    transparent_crc(p_1054->g_214, "p_1054->g_214", print_hash_value);
    transparent_crc(p_1054->g_232, "p_1054->g_232", print_hash_value);
    transparent_crc(p_1054->g_233, "p_1054->g_233", print_hash_value);
    transparent_crc(p_1054->g_256.s0, "p_1054->g_256.s0", print_hash_value);
    transparent_crc(p_1054->g_256.s1, "p_1054->g_256.s1", print_hash_value);
    transparent_crc(p_1054->g_256.s2, "p_1054->g_256.s2", print_hash_value);
    transparent_crc(p_1054->g_256.s3, "p_1054->g_256.s3", print_hash_value);
    transparent_crc(p_1054->g_256.s4, "p_1054->g_256.s4", print_hash_value);
    transparent_crc(p_1054->g_256.s5, "p_1054->g_256.s5", print_hash_value);
    transparent_crc(p_1054->g_256.s6, "p_1054->g_256.s6", print_hash_value);
    transparent_crc(p_1054->g_256.s7, "p_1054->g_256.s7", print_hash_value);
    transparent_crc(p_1054->g_256.s8, "p_1054->g_256.s8", print_hash_value);
    transparent_crc(p_1054->g_256.s9, "p_1054->g_256.s9", print_hash_value);
    transparent_crc(p_1054->g_256.sa, "p_1054->g_256.sa", print_hash_value);
    transparent_crc(p_1054->g_256.sb, "p_1054->g_256.sb", print_hash_value);
    transparent_crc(p_1054->g_256.sc, "p_1054->g_256.sc", print_hash_value);
    transparent_crc(p_1054->g_256.sd, "p_1054->g_256.sd", print_hash_value);
    transparent_crc(p_1054->g_256.se, "p_1054->g_256.se", print_hash_value);
    transparent_crc(p_1054->g_256.sf, "p_1054->g_256.sf", print_hash_value);
    transparent_crc(p_1054->g_261.s0, "p_1054->g_261.s0", print_hash_value);
    transparent_crc(p_1054->g_261.s1, "p_1054->g_261.s1", print_hash_value);
    transparent_crc(p_1054->g_261.s2, "p_1054->g_261.s2", print_hash_value);
    transparent_crc(p_1054->g_261.s3, "p_1054->g_261.s3", print_hash_value);
    transparent_crc(p_1054->g_261.s4, "p_1054->g_261.s4", print_hash_value);
    transparent_crc(p_1054->g_261.s5, "p_1054->g_261.s5", print_hash_value);
    transparent_crc(p_1054->g_261.s6, "p_1054->g_261.s6", print_hash_value);
    transparent_crc(p_1054->g_261.s7, "p_1054->g_261.s7", print_hash_value);
    transparent_crc(p_1054->g_261.s8, "p_1054->g_261.s8", print_hash_value);
    transparent_crc(p_1054->g_261.s9, "p_1054->g_261.s9", print_hash_value);
    transparent_crc(p_1054->g_261.sa, "p_1054->g_261.sa", print_hash_value);
    transparent_crc(p_1054->g_261.sb, "p_1054->g_261.sb", print_hash_value);
    transparent_crc(p_1054->g_261.sc, "p_1054->g_261.sc", print_hash_value);
    transparent_crc(p_1054->g_261.sd, "p_1054->g_261.sd", print_hash_value);
    transparent_crc(p_1054->g_261.se, "p_1054->g_261.se", print_hash_value);
    transparent_crc(p_1054->g_261.sf, "p_1054->g_261.sf", print_hash_value);
    transparent_crc(p_1054->g_263.x, "p_1054->g_263.x", print_hash_value);
    transparent_crc(p_1054->g_263.y, "p_1054->g_263.y", print_hash_value);
    transparent_crc(p_1054->g_263.z, "p_1054->g_263.z", print_hash_value);
    transparent_crc(p_1054->g_263.w, "p_1054->g_263.w", print_hash_value);
    transparent_crc(p_1054->g_290, "p_1054->g_290", print_hash_value);
    transparent_crc(p_1054->g_339, "p_1054->g_339", print_hash_value);
    transparent_crc(p_1054->g_399.s0, "p_1054->g_399.s0", print_hash_value);
    transparent_crc(p_1054->g_399.s1, "p_1054->g_399.s1", print_hash_value);
    transparent_crc(p_1054->g_399.s2, "p_1054->g_399.s2", print_hash_value);
    transparent_crc(p_1054->g_399.s3, "p_1054->g_399.s3", print_hash_value);
    transparent_crc(p_1054->g_399.s4, "p_1054->g_399.s4", print_hash_value);
    transparent_crc(p_1054->g_399.s5, "p_1054->g_399.s5", print_hash_value);
    transparent_crc(p_1054->g_399.s6, "p_1054->g_399.s6", print_hash_value);
    transparent_crc(p_1054->g_399.s7, "p_1054->g_399.s7", print_hash_value);
    transparent_crc(p_1054->g_399.s8, "p_1054->g_399.s8", print_hash_value);
    transparent_crc(p_1054->g_399.s9, "p_1054->g_399.s9", print_hash_value);
    transparent_crc(p_1054->g_399.sa, "p_1054->g_399.sa", print_hash_value);
    transparent_crc(p_1054->g_399.sb, "p_1054->g_399.sb", print_hash_value);
    transparent_crc(p_1054->g_399.sc, "p_1054->g_399.sc", print_hash_value);
    transparent_crc(p_1054->g_399.sd, "p_1054->g_399.sd", print_hash_value);
    transparent_crc(p_1054->g_399.se, "p_1054->g_399.se", print_hash_value);
    transparent_crc(p_1054->g_399.sf, "p_1054->g_399.sf", print_hash_value);
    transparent_crc(p_1054->g_401.s0, "p_1054->g_401.s0", print_hash_value);
    transparent_crc(p_1054->g_401.s1, "p_1054->g_401.s1", print_hash_value);
    transparent_crc(p_1054->g_401.s2, "p_1054->g_401.s2", print_hash_value);
    transparent_crc(p_1054->g_401.s3, "p_1054->g_401.s3", print_hash_value);
    transparent_crc(p_1054->g_401.s4, "p_1054->g_401.s4", print_hash_value);
    transparent_crc(p_1054->g_401.s5, "p_1054->g_401.s5", print_hash_value);
    transparent_crc(p_1054->g_401.s6, "p_1054->g_401.s6", print_hash_value);
    transparent_crc(p_1054->g_401.s7, "p_1054->g_401.s7", print_hash_value);
    transparent_crc(p_1054->g_403.s0, "p_1054->g_403.s0", print_hash_value);
    transparent_crc(p_1054->g_403.s1, "p_1054->g_403.s1", print_hash_value);
    transparent_crc(p_1054->g_403.s2, "p_1054->g_403.s2", print_hash_value);
    transparent_crc(p_1054->g_403.s3, "p_1054->g_403.s3", print_hash_value);
    transparent_crc(p_1054->g_403.s4, "p_1054->g_403.s4", print_hash_value);
    transparent_crc(p_1054->g_403.s5, "p_1054->g_403.s5", print_hash_value);
    transparent_crc(p_1054->g_403.s6, "p_1054->g_403.s6", print_hash_value);
    transparent_crc(p_1054->g_403.s7, "p_1054->g_403.s7", print_hash_value);
    transparent_crc(p_1054->g_404.s0, "p_1054->g_404.s0", print_hash_value);
    transparent_crc(p_1054->g_404.s1, "p_1054->g_404.s1", print_hash_value);
    transparent_crc(p_1054->g_404.s2, "p_1054->g_404.s2", print_hash_value);
    transparent_crc(p_1054->g_404.s3, "p_1054->g_404.s3", print_hash_value);
    transparent_crc(p_1054->g_404.s4, "p_1054->g_404.s4", print_hash_value);
    transparent_crc(p_1054->g_404.s5, "p_1054->g_404.s5", print_hash_value);
    transparent_crc(p_1054->g_404.s6, "p_1054->g_404.s6", print_hash_value);
    transparent_crc(p_1054->g_404.s7, "p_1054->g_404.s7", print_hash_value);
    transparent_crc(p_1054->g_404.s8, "p_1054->g_404.s8", print_hash_value);
    transparent_crc(p_1054->g_404.s9, "p_1054->g_404.s9", print_hash_value);
    transparent_crc(p_1054->g_404.sa, "p_1054->g_404.sa", print_hash_value);
    transparent_crc(p_1054->g_404.sb, "p_1054->g_404.sb", print_hash_value);
    transparent_crc(p_1054->g_404.sc, "p_1054->g_404.sc", print_hash_value);
    transparent_crc(p_1054->g_404.sd, "p_1054->g_404.sd", print_hash_value);
    transparent_crc(p_1054->g_404.se, "p_1054->g_404.se", print_hash_value);
    transparent_crc(p_1054->g_404.sf, "p_1054->g_404.sf", print_hash_value);
    transparent_crc(p_1054->g_407.x, "p_1054->g_407.x", print_hash_value);
    transparent_crc(p_1054->g_407.y, "p_1054->g_407.y", print_hash_value);
    transparent_crc(p_1054->g_407.z, "p_1054->g_407.z", print_hash_value);
    transparent_crc(p_1054->g_407.w, "p_1054->g_407.w", print_hash_value);
    transparent_crc(p_1054->g_413.x, "p_1054->g_413.x", print_hash_value);
    transparent_crc(p_1054->g_413.y, "p_1054->g_413.y", print_hash_value);
    transparent_crc(p_1054->g_413.z, "p_1054->g_413.z", print_hash_value);
    transparent_crc(p_1054->g_413.w, "p_1054->g_413.w", print_hash_value);
    transparent_crc(p_1054->g_415.x, "p_1054->g_415.x", print_hash_value);
    transparent_crc(p_1054->g_415.y, "p_1054->g_415.y", print_hash_value);
    transparent_crc(p_1054->g_421, "p_1054->g_421", print_hash_value);
    transparent_crc(p_1054->g_520.s0, "p_1054->g_520.s0", print_hash_value);
    transparent_crc(p_1054->g_520.s1, "p_1054->g_520.s1", print_hash_value);
    transparent_crc(p_1054->g_520.s2, "p_1054->g_520.s2", print_hash_value);
    transparent_crc(p_1054->g_520.s3, "p_1054->g_520.s3", print_hash_value);
    transparent_crc(p_1054->g_520.s4, "p_1054->g_520.s4", print_hash_value);
    transparent_crc(p_1054->g_520.s5, "p_1054->g_520.s5", print_hash_value);
    transparent_crc(p_1054->g_520.s6, "p_1054->g_520.s6", print_hash_value);
    transparent_crc(p_1054->g_520.s7, "p_1054->g_520.s7", print_hash_value);
    transparent_crc(p_1054->g_522.x, "p_1054->g_522.x", print_hash_value);
    transparent_crc(p_1054->g_522.y, "p_1054->g_522.y", print_hash_value);
    transparent_crc(p_1054->g_522.z, "p_1054->g_522.z", print_hash_value);
    transparent_crc(p_1054->g_522.w, "p_1054->g_522.w", print_hash_value);
    transparent_crc(p_1054->g_558, "p_1054->g_558", print_hash_value);
    transparent_crc(p_1054->g_572.x, "p_1054->g_572.x", print_hash_value);
    transparent_crc(p_1054->g_572.y, "p_1054->g_572.y", print_hash_value);
    transparent_crc(p_1054->g_574.x, "p_1054->g_574.x", print_hash_value);
    transparent_crc(p_1054->g_574.y, "p_1054->g_574.y", print_hash_value);
    transparent_crc(p_1054->g_584.s0, "p_1054->g_584.s0", print_hash_value);
    transparent_crc(p_1054->g_584.s1, "p_1054->g_584.s1", print_hash_value);
    transparent_crc(p_1054->g_584.s2, "p_1054->g_584.s2", print_hash_value);
    transparent_crc(p_1054->g_584.s3, "p_1054->g_584.s3", print_hash_value);
    transparent_crc(p_1054->g_584.s4, "p_1054->g_584.s4", print_hash_value);
    transparent_crc(p_1054->g_584.s5, "p_1054->g_584.s5", print_hash_value);
    transparent_crc(p_1054->g_584.s6, "p_1054->g_584.s6", print_hash_value);
    transparent_crc(p_1054->g_584.s7, "p_1054->g_584.s7", print_hash_value);
    transparent_crc(p_1054->g_584.s8, "p_1054->g_584.s8", print_hash_value);
    transparent_crc(p_1054->g_584.s9, "p_1054->g_584.s9", print_hash_value);
    transparent_crc(p_1054->g_584.sa, "p_1054->g_584.sa", print_hash_value);
    transparent_crc(p_1054->g_584.sb, "p_1054->g_584.sb", print_hash_value);
    transparent_crc(p_1054->g_584.sc, "p_1054->g_584.sc", print_hash_value);
    transparent_crc(p_1054->g_584.sd, "p_1054->g_584.sd", print_hash_value);
    transparent_crc(p_1054->g_584.se, "p_1054->g_584.se", print_hash_value);
    transparent_crc(p_1054->g_584.sf, "p_1054->g_584.sf", print_hash_value);
    transparent_crc(p_1054->g_585.x, "p_1054->g_585.x", print_hash_value);
    transparent_crc(p_1054->g_585.y, "p_1054->g_585.y", print_hash_value);
    transparent_crc(p_1054->g_585.z, "p_1054->g_585.z", print_hash_value);
    transparent_crc(p_1054->g_585.w, "p_1054->g_585.w", print_hash_value);
    transparent_crc(p_1054->g_586.x, "p_1054->g_586.x", print_hash_value);
    transparent_crc(p_1054->g_586.y, "p_1054->g_586.y", print_hash_value);
    transparent_crc(p_1054->g_602.s0, "p_1054->g_602.s0", print_hash_value);
    transparent_crc(p_1054->g_602.s1, "p_1054->g_602.s1", print_hash_value);
    transparent_crc(p_1054->g_602.s2, "p_1054->g_602.s2", print_hash_value);
    transparent_crc(p_1054->g_602.s3, "p_1054->g_602.s3", print_hash_value);
    transparent_crc(p_1054->g_602.s4, "p_1054->g_602.s4", print_hash_value);
    transparent_crc(p_1054->g_602.s5, "p_1054->g_602.s5", print_hash_value);
    transparent_crc(p_1054->g_602.s6, "p_1054->g_602.s6", print_hash_value);
    transparent_crc(p_1054->g_602.s7, "p_1054->g_602.s7", print_hash_value);
    transparent_crc(p_1054->g_602.s8, "p_1054->g_602.s8", print_hash_value);
    transparent_crc(p_1054->g_602.s9, "p_1054->g_602.s9", print_hash_value);
    transparent_crc(p_1054->g_602.sa, "p_1054->g_602.sa", print_hash_value);
    transparent_crc(p_1054->g_602.sb, "p_1054->g_602.sb", print_hash_value);
    transparent_crc(p_1054->g_602.sc, "p_1054->g_602.sc", print_hash_value);
    transparent_crc(p_1054->g_602.sd, "p_1054->g_602.sd", print_hash_value);
    transparent_crc(p_1054->g_602.se, "p_1054->g_602.se", print_hash_value);
    transparent_crc(p_1054->g_602.sf, "p_1054->g_602.sf", print_hash_value);
    transparent_crc(p_1054->g_628.x, "p_1054->g_628.x", print_hash_value);
    transparent_crc(p_1054->g_628.y, "p_1054->g_628.y", print_hash_value);
    transparent_crc(p_1054->g_628.z, "p_1054->g_628.z", print_hash_value);
    transparent_crc(p_1054->g_628.w, "p_1054->g_628.w", print_hash_value);
    transparent_crc(p_1054->g_669.s0, "p_1054->g_669.s0", print_hash_value);
    transparent_crc(p_1054->g_669.s1, "p_1054->g_669.s1", print_hash_value);
    transparent_crc(p_1054->g_669.s2, "p_1054->g_669.s2", print_hash_value);
    transparent_crc(p_1054->g_669.s3, "p_1054->g_669.s3", print_hash_value);
    transparent_crc(p_1054->g_669.s4, "p_1054->g_669.s4", print_hash_value);
    transparent_crc(p_1054->g_669.s5, "p_1054->g_669.s5", print_hash_value);
    transparent_crc(p_1054->g_669.s6, "p_1054->g_669.s6", print_hash_value);
    transparent_crc(p_1054->g_669.s7, "p_1054->g_669.s7", print_hash_value);
    transparent_crc(p_1054->g_669.s8, "p_1054->g_669.s8", print_hash_value);
    transparent_crc(p_1054->g_669.s9, "p_1054->g_669.s9", print_hash_value);
    transparent_crc(p_1054->g_669.sa, "p_1054->g_669.sa", print_hash_value);
    transparent_crc(p_1054->g_669.sb, "p_1054->g_669.sb", print_hash_value);
    transparent_crc(p_1054->g_669.sc, "p_1054->g_669.sc", print_hash_value);
    transparent_crc(p_1054->g_669.sd, "p_1054->g_669.sd", print_hash_value);
    transparent_crc(p_1054->g_669.se, "p_1054->g_669.se", print_hash_value);
    transparent_crc(p_1054->g_669.sf, "p_1054->g_669.sf", print_hash_value);
    transparent_crc(p_1054->g_676.x, "p_1054->g_676.x", print_hash_value);
    transparent_crc(p_1054->g_676.y, "p_1054->g_676.y", print_hash_value);
    transparent_crc(p_1054->g_681, "p_1054->g_681", print_hash_value);
    transparent_crc(p_1054->g_703.s0, "p_1054->g_703.s0", print_hash_value);
    transparent_crc(p_1054->g_703.s1, "p_1054->g_703.s1", print_hash_value);
    transparent_crc(p_1054->g_703.s2, "p_1054->g_703.s2", print_hash_value);
    transparent_crc(p_1054->g_703.s3, "p_1054->g_703.s3", print_hash_value);
    transparent_crc(p_1054->g_703.s4, "p_1054->g_703.s4", print_hash_value);
    transparent_crc(p_1054->g_703.s5, "p_1054->g_703.s5", print_hash_value);
    transparent_crc(p_1054->g_703.s6, "p_1054->g_703.s6", print_hash_value);
    transparent_crc(p_1054->g_703.s7, "p_1054->g_703.s7", print_hash_value);
    transparent_crc(p_1054->g_711.s0, "p_1054->g_711.s0", print_hash_value);
    transparent_crc(p_1054->g_711.s1, "p_1054->g_711.s1", print_hash_value);
    transparent_crc(p_1054->g_711.s2, "p_1054->g_711.s2", print_hash_value);
    transparent_crc(p_1054->g_711.s3, "p_1054->g_711.s3", print_hash_value);
    transparent_crc(p_1054->g_711.s4, "p_1054->g_711.s4", print_hash_value);
    transparent_crc(p_1054->g_711.s5, "p_1054->g_711.s5", print_hash_value);
    transparent_crc(p_1054->g_711.s6, "p_1054->g_711.s6", print_hash_value);
    transparent_crc(p_1054->g_711.s7, "p_1054->g_711.s7", print_hash_value);
    transparent_crc(p_1054->g_711.s8, "p_1054->g_711.s8", print_hash_value);
    transparent_crc(p_1054->g_711.s9, "p_1054->g_711.s9", print_hash_value);
    transparent_crc(p_1054->g_711.sa, "p_1054->g_711.sa", print_hash_value);
    transparent_crc(p_1054->g_711.sb, "p_1054->g_711.sb", print_hash_value);
    transparent_crc(p_1054->g_711.sc, "p_1054->g_711.sc", print_hash_value);
    transparent_crc(p_1054->g_711.sd, "p_1054->g_711.sd", print_hash_value);
    transparent_crc(p_1054->g_711.se, "p_1054->g_711.se", print_hash_value);
    transparent_crc(p_1054->g_711.sf, "p_1054->g_711.sf", print_hash_value);
    transparent_crc(p_1054->g_743.s0, "p_1054->g_743.s0", print_hash_value);
    transparent_crc(p_1054->g_743.s1, "p_1054->g_743.s1", print_hash_value);
    transparent_crc(p_1054->g_743.s2, "p_1054->g_743.s2", print_hash_value);
    transparent_crc(p_1054->g_743.s3, "p_1054->g_743.s3", print_hash_value);
    transparent_crc(p_1054->g_743.s4, "p_1054->g_743.s4", print_hash_value);
    transparent_crc(p_1054->g_743.s5, "p_1054->g_743.s5", print_hash_value);
    transparent_crc(p_1054->g_743.s6, "p_1054->g_743.s6", print_hash_value);
    transparent_crc(p_1054->g_743.s7, "p_1054->g_743.s7", print_hash_value);
    transparent_crc(p_1054->g_755.x, "p_1054->g_755.x", print_hash_value);
    transparent_crc(p_1054->g_755.y, "p_1054->g_755.y", print_hash_value);
    transparent_crc(p_1054->g_755.z, "p_1054->g_755.z", print_hash_value);
    transparent_crc(p_1054->g_755.w, "p_1054->g_755.w", print_hash_value);
    transparent_crc(p_1054->g_767, "p_1054->g_767", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1054->g_773[i], "p_1054->g_773[i]", print_hash_value);

    }
    transparent_crc(p_1054->g_783.x, "p_1054->g_783.x", print_hash_value);
    transparent_crc(p_1054->g_783.y, "p_1054->g_783.y", print_hash_value);
    transparent_crc(p_1054->g_785.s0, "p_1054->g_785.s0", print_hash_value);
    transparent_crc(p_1054->g_785.s1, "p_1054->g_785.s1", print_hash_value);
    transparent_crc(p_1054->g_785.s2, "p_1054->g_785.s2", print_hash_value);
    transparent_crc(p_1054->g_785.s3, "p_1054->g_785.s3", print_hash_value);
    transparent_crc(p_1054->g_785.s4, "p_1054->g_785.s4", print_hash_value);
    transparent_crc(p_1054->g_785.s5, "p_1054->g_785.s5", print_hash_value);
    transparent_crc(p_1054->g_785.s6, "p_1054->g_785.s6", print_hash_value);
    transparent_crc(p_1054->g_785.s7, "p_1054->g_785.s7", print_hash_value);
    transparent_crc(p_1054->g_804.x, "p_1054->g_804.x", print_hash_value);
    transparent_crc(p_1054->g_804.y, "p_1054->g_804.y", print_hash_value);
    transparent_crc(p_1054->g_804.z, "p_1054->g_804.z", print_hash_value);
    transparent_crc(p_1054->g_804.w, "p_1054->g_804.w", print_hash_value);
    transparent_crc(p_1054->g_814.x, "p_1054->g_814.x", print_hash_value);
    transparent_crc(p_1054->g_814.y, "p_1054->g_814.y", print_hash_value);
    transparent_crc(p_1054->g_816.x, "p_1054->g_816.x", print_hash_value);
    transparent_crc(p_1054->g_816.y, "p_1054->g_816.y", print_hash_value);
    transparent_crc(p_1054->g_816.z, "p_1054->g_816.z", print_hash_value);
    transparent_crc(p_1054->g_816.w, "p_1054->g_816.w", print_hash_value);
    transparent_crc(p_1054->g_835.s0, "p_1054->g_835.s0", print_hash_value);
    transparent_crc(p_1054->g_835.s1, "p_1054->g_835.s1", print_hash_value);
    transparent_crc(p_1054->g_835.s2, "p_1054->g_835.s2", print_hash_value);
    transparent_crc(p_1054->g_835.s3, "p_1054->g_835.s3", print_hash_value);
    transparent_crc(p_1054->g_835.s4, "p_1054->g_835.s4", print_hash_value);
    transparent_crc(p_1054->g_835.s5, "p_1054->g_835.s5", print_hash_value);
    transparent_crc(p_1054->g_835.s6, "p_1054->g_835.s6", print_hash_value);
    transparent_crc(p_1054->g_835.s7, "p_1054->g_835.s7", print_hash_value);
    transparent_crc(p_1054->g_835.s8, "p_1054->g_835.s8", print_hash_value);
    transparent_crc(p_1054->g_835.s9, "p_1054->g_835.s9", print_hash_value);
    transparent_crc(p_1054->g_835.sa, "p_1054->g_835.sa", print_hash_value);
    transparent_crc(p_1054->g_835.sb, "p_1054->g_835.sb", print_hash_value);
    transparent_crc(p_1054->g_835.sc, "p_1054->g_835.sc", print_hash_value);
    transparent_crc(p_1054->g_835.sd, "p_1054->g_835.sd", print_hash_value);
    transparent_crc(p_1054->g_835.se, "p_1054->g_835.se", print_hash_value);
    transparent_crc(p_1054->g_835.sf, "p_1054->g_835.sf", print_hash_value);
    transparent_crc(p_1054->g_856.x, "p_1054->g_856.x", print_hash_value);
    transparent_crc(p_1054->g_856.y, "p_1054->g_856.y", print_hash_value);
    transparent_crc(p_1054->g_865.s0, "p_1054->g_865.s0", print_hash_value);
    transparent_crc(p_1054->g_865.s1, "p_1054->g_865.s1", print_hash_value);
    transparent_crc(p_1054->g_865.s2, "p_1054->g_865.s2", print_hash_value);
    transparent_crc(p_1054->g_865.s3, "p_1054->g_865.s3", print_hash_value);
    transparent_crc(p_1054->g_865.s4, "p_1054->g_865.s4", print_hash_value);
    transparent_crc(p_1054->g_865.s5, "p_1054->g_865.s5", print_hash_value);
    transparent_crc(p_1054->g_865.s6, "p_1054->g_865.s6", print_hash_value);
    transparent_crc(p_1054->g_865.s7, "p_1054->g_865.s7", print_hash_value);
    transparent_crc(p_1054->g_930.s0, "p_1054->g_930.s0", print_hash_value);
    transparent_crc(p_1054->g_930.s1, "p_1054->g_930.s1", print_hash_value);
    transparent_crc(p_1054->g_930.s2, "p_1054->g_930.s2", print_hash_value);
    transparent_crc(p_1054->g_930.s3, "p_1054->g_930.s3", print_hash_value);
    transparent_crc(p_1054->g_930.s4, "p_1054->g_930.s4", print_hash_value);
    transparent_crc(p_1054->g_930.s5, "p_1054->g_930.s5", print_hash_value);
    transparent_crc(p_1054->g_930.s6, "p_1054->g_930.s6", print_hash_value);
    transparent_crc(p_1054->g_930.s7, "p_1054->g_930.s7", print_hash_value);
    transparent_crc(p_1054->g_942.x, "p_1054->g_942.x", print_hash_value);
    transparent_crc(p_1054->g_942.y, "p_1054->g_942.y", print_hash_value);
    transparent_crc(p_1054->g_942.z, "p_1054->g_942.z", print_hash_value);
    transparent_crc(p_1054->g_942.w, "p_1054->g_942.w", print_hash_value);
    transparent_crc(p_1054->g_943.s0, "p_1054->g_943.s0", print_hash_value);
    transparent_crc(p_1054->g_943.s1, "p_1054->g_943.s1", print_hash_value);
    transparent_crc(p_1054->g_943.s2, "p_1054->g_943.s2", print_hash_value);
    transparent_crc(p_1054->g_943.s3, "p_1054->g_943.s3", print_hash_value);
    transparent_crc(p_1054->g_943.s4, "p_1054->g_943.s4", print_hash_value);
    transparent_crc(p_1054->g_943.s5, "p_1054->g_943.s5", print_hash_value);
    transparent_crc(p_1054->g_943.s6, "p_1054->g_943.s6", print_hash_value);
    transparent_crc(p_1054->g_943.s7, "p_1054->g_943.s7", print_hash_value);
    transparent_crc(p_1054->g_943.s8, "p_1054->g_943.s8", print_hash_value);
    transparent_crc(p_1054->g_943.s9, "p_1054->g_943.s9", print_hash_value);
    transparent_crc(p_1054->g_943.sa, "p_1054->g_943.sa", print_hash_value);
    transparent_crc(p_1054->g_943.sb, "p_1054->g_943.sb", print_hash_value);
    transparent_crc(p_1054->g_943.sc, "p_1054->g_943.sc", print_hash_value);
    transparent_crc(p_1054->g_943.sd, "p_1054->g_943.sd", print_hash_value);
    transparent_crc(p_1054->g_943.se, "p_1054->g_943.se", print_hash_value);
    transparent_crc(p_1054->g_943.sf, "p_1054->g_943.sf", print_hash_value);
    transparent_crc(p_1054->g_944.s0, "p_1054->g_944.s0", print_hash_value);
    transparent_crc(p_1054->g_944.s1, "p_1054->g_944.s1", print_hash_value);
    transparent_crc(p_1054->g_944.s2, "p_1054->g_944.s2", print_hash_value);
    transparent_crc(p_1054->g_944.s3, "p_1054->g_944.s3", print_hash_value);
    transparent_crc(p_1054->g_944.s4, "p_1054->g_944.s4", print_hash_value);
    transparent_crc(p_1054->g_944.s5, "p_1054->g_944.s5", print_hash_value);
    transparent_crc(p_1054->g_944.s6, "p_1054->g_944.s6", print_hash_value);
    transparent_crc(p_1054->g_944.s7, "p_1054->g_944.s7", print_hash_value);
    transparent_crc(p_1054->g_945.x, "p_1054->g_945.x", print_hash_value);
    transparent_crc(p_1054->g_945.y, "p_1054->g_945.y", print_hash_value);
    transparent_crc(p_1054->g_945.z, "p_1054->g_945.z", print_hash_value);
    transparent_crc(p_1054->g_945.w, "p_1054->g_945.w", print_hash_value);
    transparent_crc(p_1054->g_946.s0, "p_1054->g_946.s0", print_hash_value);
    transparent_crc(p_1054->g_946.s1, "p_1054->g_946.s1", print_hash_value);
    transparent_crc(p_1054->g_946.s2, "p_1054->g_946.s2", print_hash_value);
    transparent_crc(p_1054->g_946.s3, "p_1054->g_946.s3", print_hash_value);
    transparent_crc(p_1054->g_946.s4, "p_1054->g_946.s4", print_hash_value);
    transparent_crc(p_1054->g_946.s5, "p_1054->g_946.s5", print_hash_value);
    transparent_crc(p_1054->g_946.s6, "p_1054->g_946.s6", print_hash_value);
    transparent_crc(p_1054->g_946.s7, "p_1054->g_946.s7", print_hash_value);
    transparent_crc(p_1054->g_946.s8, "p_1054->g_946.s8", print_hash_value);
    transparent_crc(p_1054->g_946.s9, "p_1054->g_946.s9", print_hash_value);
    transparent_crc(p_1054->g_946.sa, "p_1054->g_946.sa", print_hash_value);
    transparent_crc(p_1054->g_946.sb, "p_1054->g_946.sb", print_hash_value);
    transparent_crc(p_1054->g_946.sc, "p_1054->g_946.sc", print_hash_value);
    transparent_crc(p_1054->g_946.sd, "p_1054->g_946.sd", print_hash_value);
    transparent_crc(p_1054->g_946.se, "p_1054->g_946.se", print_hash_value);
    transparent_crc(p_1054->g_946.sf, "p_1054->g_946.sf", print_hash_value);
    transparent_crc(p_1054->g_948.s0, "p_1054->g_948.s0", print_hash_value);
    transparent_crc(p_1054->g_948.s1, "p_1054->g_948.s1", print_hash_value);
    transparent_crc(p_1054->g_948.s2, "p_1054->g_948.s2", print_hash_value);
    transparent_crc(p_1054->g_948.s3, "p_1054->g_948.s3", print_hash_value);
    transparent_crc(p_1054->g_948.s4, "p_1054->g_948.s4", print_hash_value);
    transparent_crc(p_1054->g_948.s5, "p_1054->g_948.s5", print_hash_value);
    transparent_crc(p_1054->g_948.s6, "p_1054->g_948.s6", print_hash_value);
    transparent_crc(p_1054->g_948.s7, "p_1054->g_948.s7", print_hash_value);
    transparent_crc(p_1054->g_949.s0, "p_1054->g_949.s0", print_hash_value);
    transparent_crc(p_1054->g_949.s1, "p_1054->g_949.s1", print_hash_value);
    transparent_crc(p_1054->g_949.s2, "p_1054->g_949.s2", print_hash_value);
    transparent_crc(p_1054->g_949.s3, "p_1054->g_949.s3", print_hash_value);
    transparent_crc(p_1054->g_949.s4, "p_1054->g_949.s4", print_hash_value);
    transparent_crc(p_1054->g_949.s5, "p_1054->g_949.s5", print_hash_value);
    transparent_crc(p_1054->g_949.s6, "p_1054->g_949.s6", print_hash_value);
    transparent_crc(p_1054->g_949.s7, "p_1054->g_949.s7", print_hash_value);
    transparent_crc(p_1054->g_949.s8, "p_1054->g_949.s8", print_hash_value);
    transparent_crc(p_1054->g_949.s9, "p_1054->g_949.s9", print_hash_value);
    transparent_crc(p_1054->g_949.sa, "p_1054->g_949.sa", print_hash_value);
    transparent_crc(p_1054->g_949.sb, "p_1054->g_949.sb", print_hash_value);
    transparent_crc(p_1054->g_949.sc, "p_1054->g_949.sc", print_hash_value);
    transparent_crc(p_1054->g_949.sd, "p_1054->g_949.sd", print_hash_value);
    transparent_crc(p_1054->g_949.se, "p_1054->g_949.se", print_hash_value);
    transparent_crc(p_1054->g_949.sf, "p_1054->g_949.sf", print_hash_value);
    transparent_crc(p_1054->g_950.x, "p_1054->g_950.x", print_hash_value);
    transparent_crc(p_1054->g_950.y, "p_1054->g_950.y", print_hash_value);
    transparent_crc(p_1054->g_950.z, "p_1054->g_950.z", print_hash_value);
    transparent_crc(p_1054->g_950.w, "p_1054->g_950.w", print_hash_value);
    transparent_crc(p_1054->g_951.x, "p_1054->g_951.x", print_hash_value);
    transparent_crc(p_1054->g_951.y, "p_1054->g_951.y", print_hash_value);
    transparent_crc(p_1054->g_951.z, "p_1054->g_951.z", print_hash_value);
    transparent_crc(p_1054->g_951.w, "p_1054->g_951.w", print_hash_value);
    transparent_crc(p_1054->g_952.x, "p_1054->g_952.x", print_hash_value);
    transparent_crc(p_1054->g_952.y, "p_1054->g_952.y", print_hash_value);
    transparent_crc(p_1054->g_952.z, "p_1054->g_952.z", print_hash_value);
    transparent_crc(p_1054->g_952.w, "p_1054->g_952.w", print_hash_value);
    transparent_crc(p_1054->g_953.x, "p_1054->g_953.x", print_hash_value);
    transparent_crc(p_1054->g_953.y, "p_1054->g_953.y", print_hash_value);
    transparent_crc(p_1054->g_953.z, "p_1054->g_953.z", print_hash_value);
    transparent_crc(p_1054->g_953.w, "p_1054->g_953.w", print_hash_value);
    transparent_crc(p_1054->g_957, "p_1054->g_957", print_hash_value);
    transparent_crc(p_1054->g_996.s0, "p_1054->g_996.s0", print_hash_value);
    transparent_crc(p_1054->g_996.s1, "p_1054->g_996.s1", print_hash_value);
    transparent_crc(p_1054->g_996.s2, "p_1054->g_996.s2", print_hash_value);
    transparent_crc(p_1054->g_996.s3, "p_1054->g_996.s3", print_hash_value);
    transparent_crc(p_1054->g_996.s4, "p_1054->g_996.s4", print_hash_value);
    transparent_crc(p_1054->g_996.s5, "p_1054->g_996.s5", print_hash_value);
    transparent_crc(p_1054->g_996.s6, "p_1054->g_996.s6", print_hash_value);
    transparent_crc(p_1054->g_996.s7, "p_1054->g_996.s7", print_hash_value);
    transparent_crc(p_1054->g_1026.s0, "p_1054->g_1026.s0", print_hash_value);
    transparent_crc(p_1054->g_1026.s1, "p_1054->g_1026.s1", print_hash_value);
    transparent_crc(p_1054->g_1026.s2, "p_1054->g_1026.s2", print_hash_value);
    transparent_crc(p_1054->g_1026.s3, "p_1054->g_1026.s3", print_hash_value);
    transparent_crc(p_1054->g_1026.s4, "p_1054->g_1026.s4", print_hash_value);
    transparent_crc(p_1054->g_1026.s5, "p_1054->g_1026.s5", print_hash_value);
    transparent_crc(p_1054->g_1026.s6, "p_1054->g_1026.s6", print_hash_value);
    transparent_crc(p_1054->g_1026.s7, "p_1054->g_1026.s7", print_hash_value);
    transparent_crc(p_1054->g_1026.s8, "p_1054->g_1026.s8", print_hash_value);
    transparent_crc(p_1054->g_1026.s9, "p_1054->g_1026.s9", print_hash_value);
    transparent_crc(p_1054->g_1026.sa, "p_1054->g_1026.sa", print_hash_value);
    transparent_crc(p_1054->g_1026.sb, "p_1054->g_1026.sb", print_hash_value);
    transparent_crc(p_1054->g_1026.sc, "p_1054->g_1026.sc", print_hash_value);
    transparent_crc(p_1054->g_1026.sd, "p_1054->g_1026.sd", print_hash_value);
    transparent_crc(p_1054->g_1026.se, "p_1054->g_1026.se", print_hash_value);
    transparent_crc(p_1054->g_1026.sf, "p_1054->g_1026.sf", print_hash_value);
    transparent_crc(p_1054->g_1028.x, "p_1054->g_1028.x", print_hash_value);
    transparent_crc(p_1054->g_1028.y, "p_1054->g_1028.y", print_hash_value);
    transparent_crc(p_1054->g_1028.z, "p_1054->g_1028.z", print_hash_value);
    transparent_crc(p_1054->g_1028.w, "p_1054->g_1028.w", print_hash_value);
    transparent_crc(p_1054->g_1036.s0, "p_1054->g_1036.s0", print_hash_value);
    transparent_crc(p_1054->g_1036.s1, "p_1054->g_1036.s1", print_hash_value);
    transparent_crc(p_1054->g_1036.s2, "p_1054->g_1036.s2", print_hash_value);
    transparent_crc(p_1054->g_1036.s3, "p_1054->g_1036.s3", print_hash_value);
    transparent_crc(p_1054->g_1036.s4, "p_1054->g_1036.s4", print_hash_value);
    transparent_crc(p_1054->g_1036.s5, "p_1054->g_1036.s5", print_hash_value);
    transparent_crc(p_1054->g_1036.s6, "p_1054->g_1036.s6", print_hash_value);
    transparent_crc(p_1054->g_1036.s7, "p_1054->g_1036.s7", print_hash_value);
    transparent_crc(p_1054->g_1036.s8, "p_1054->g_1036.s8", print_hash_value);
    transparent_crc(p_1054->g_1036.s9, "p_1054->g_1036.s9", print_hash_value);
    transparent_crc(p_1054->g_1036.sa, "p_1054->g_1036.sa", print_hash_value);
    transparent_crc(p_1054->g_1036.sb, "p_1054->g_1036.sb", print_hash_value);
    transparent_crc(p_1054->g_1036.sc, "p_1054->g_1036.sc", print_hash_value);
    transparent_crc(p_1054->g_1036.sd, "p_1054->g_1036.sd", print_hash_value);
    transparent_crc(p_1054->g_1036.se, "p_1054->g_1036.se", print_hash_value);
    transparent_crc(p_1054->g_1036.sf, "p_1054->g_1036.sf", print_hash_value);
    transparent_crc(p_1054->g_1037.x, "p_1054->g_1037.x", print_hash_value);
    transparent_crc(p_1054->g_1037.y, "p_1054->g_1037.y", print_hash_value);
    transparent_crc(p_1054->g_1051, "p_1054->g_1051", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
