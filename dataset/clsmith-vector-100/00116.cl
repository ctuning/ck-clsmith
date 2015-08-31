// ---fake_divergence -g 4,9,67 -l 4,3,1
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


// Seed: 116

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint8_t  f0;
   int32_t  f1;
   uint64_t  f2;
   volatile uint32_t  f3;
   uint16_t  f4;
   int32_t  f5;
   int16_t  f6;
   int32_t  f7;
   int32_t  f8;
   uint64_t  f9;
};

struct S1 {
   int32_t  f0;
   volatile int32_t  f1;
   struct S0  f2;
};

struct S2 {
    int16_t g_10;
    struct S1 g_23;
    int64_t g_25;
    VECTOR(int8_t, 4) g_45;
    int32_t g_49;
    VECTOR(uint32_t, 4) g_66;
    uint32_t g_69;
    VECTOR(int8_t, 16) g_73;
    volatile struct S1 g_78;
    VECTOR(int32_t, 4) g_96;
    VECTOR(int32_t, 8) g_97;
    VECTOR(uint32_t, 8) g_118;
    VECTOR(int16_t, 4) g_135;
    int16_t g_142;
    int32_t g_143;
    volatile uint8_t g_154;
    volatile uint32_t g_159[3];
    int64_t g_170;
    VECTOR(uint16_t, 16) g_192;
    struct S0 g_195;
    int8_t *g_217[10];
    struct S0 g_237;
    struct S0 g_239[9];
    struct S1 *g_243;
    struct S1 ** volatile g_242;
    struct S0 *g_248;
    struct S0 **g_247;
    struct S0 *** volatile g_246;
    struct S0 ***g_259;
    volatile VECTOR(int16_t, 16) g_311;
    VECTOR(int16_t, 4) g_312;
    volatile VECTOR(uint64_t, 2) g_320;
    VECTOR(uint64_t, 16) g_321;
    VECTOR(uint8_t, 2) g_342;
    volatile VECTOR(uint8_t, 8) g_344;
    volatile VECTOR(uint8_t, 16) g_345;
    volatile VECTOR(int32_t, 8) g_353;
    VECTOR(int32_t, 8) g_354;
    volatile VECTOR(int32_t, 8) g_356;
    VECTOR(int32_t, 2) g_357;
    int64_t g_379;
    VECTOR(int64_t, 8) g_435;
    volatile VECTOR(uint16_t, 2) g_445;
    volatile struct S0 g_463;
    volatile struct S0 * volatile g_464;
    int32_t *g_466;
    int32_t ** volatile g_465;
    struct S1 g_469;
    struct S1 * volatile g_470;
    VECTOR(uint16_t, 2) g_500;
    VECTOR(int16_t, 8) g_503;
    int32_t ** volatile g_548;
    struct S1 g_557[1][8];
    VECTOR(uint32_t, 8) g_563;
    volatile VECTOR(int32_t, 2) g_582;
    VECTOR(int32_t, 2) g_585;
    VECTOR(int32_t, 4) g_586;
    VECTOR(int16_t, 4) g_626;
    struct S1 g_650[9];
    volatile VECTOR(int64_t, 16) g_668;
    volatile VECTOR(int32_t, 2) g_675;
    volatile VECTOR(uint32_t, 8) g_678;
    VECTOR(int16_t, 16) g_684;
    uint64_t *g_719;
    volatile VECTOR(int8_t, 16) g_724;
    VECTOR(uint64_t, 4) g_732;
    volatile struct S1 g_746;
    volatile struct S1 * volatile g_747[8][1];
    int32_t * volatile g_751;
    int32_t * volatile g_752;
    VECTOR(int64_t, 2) g_755;
    VECTOR(int16_t, 2) g_756;
    int16_t g_766;
    volatile struct S1 g_767[7];
    VECTOR(int8_t, 2) g_784;
    uint32_t g_794;
    int32_t ** volatile g_812;
    uint8_t *g_843;
    uint8_t **g_842[1][9][8];
    int32_t *g_872[9][7][4];
    int32_t ** volatile g_871;
    int64_t g_876;
    volatile VECTOR(int64_t, 8) g_884;
    VECTOR(uint64_t, 16) g_896;
    VECTOR(uint32_t, 16) g_904;
    struct S1 g_912;
    int32_t ** volatile g_913[1];
    volatile VECTOR(int8_t, 4) g_918;
    int32_t * volatile g_929[4][3];
    int32_t * volatile g_930;
    volatile VECTOR(uint8_t, 8) g_945;
    struct S1 g_962[1][8][2];
    volatile struct S1 g_980[9];
    int32_t * volatile g_985;
    volatile VECTOR(int32_t, 16) g_1004;
    VECTOR(int16_t, 2) g_1013;
    volatile VECTOR(int16_t, 2) g_1014;
    VECTOR(int16_t, 4) g_1017;
    VECTOR(int8_t, 2) g_1020;
    VECTOR(int8_t, 8) g_1021;
    VECTOR(int8_t, 4) g_1028;
    VECTOR(int64_t, 4) g_1040;
    VECTOR(int64_t, 16) g_1043;
    VECTOR(uint16_t, 2) g_1051;
    struct S1 g_1053;
    int32_t * volatile g_1054;
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
int64_t  func_1(struct S2 * p_1055);
int16_t  func_4(uint64_t  p_5, uint32_t  p_6, int64_t  p_7, uint32_t  p_8, uint16_t  p_9, struct S2 * p_1055);
struct S1 * func_12(struct S1 * p_13, struct S1 * p_14, struct S2 * p_1055);
struct S1 * func_15(uint64_t  p_16, struct S1 * p_17, int8_t  p_18, int64_t  p_19, struct S1 * p_20, struct S2 * p_1055);
int64_t * func_28(int64_t  p_29, struct S2 * p_1055);
struct S1 * func_30(int64_t  p_31, struct S2 * p_1055);
int32_t  func_33(struct S1 * p_34, uint16_t  p_35, uint16_t  p_36, int8_t  p_37, uint8_t  p_38, struct S2 * p_1055);
VECTOR(uint32_t, 16)  func_40(int32_t  p_41, int32_t  p_42, struct S2 * p_1055);
int32_t * func_79(struct S1 * p_80, struct S2 * p_1055);
struct S1 * func_81(struct S1 * p_82, uint32_t  p_83, uint32_t  p_84, uint32_t * p_85, uint32_t  p_86, struct S2 * p_1055);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1055->g_10 p_1055->g_23.f2.f8 p_1055->g_242 p_1055->g_243 p_1055->g_469.f2.f7 p_1055->g_884 p_1055->g_159 p_1055->g_896 p_1055->g_904 p_1055->g_586 p_1055->g_469.f2.f1 p_1055->g_49 p_1055->g_154 p_1055->g_918 p_1055->g_469.f0 p_1055->g_843 p_1055->g_195.f9 p_1055->g_912 p_1055->g_23 p_1055->g_239.f1 p_1055->g_563 p_1055->g_985 p_1055->g_1013 p_1055->g_1014 p_1055->g_1017 p_1055->g_1020 p_1055->g_1021 p_1055->g_557.f2.f0 p_1055->g_1028 p_1055->g_1040 p_1055->g_1043 p_1055->g_650.f2.f0 p_1055->g_78.f2.f9 p_1055->g_1051 p_1055->g_585 p_1055->g_626
 * writes: p_1055->g_25 p_1055->g_23.f2.f8 p_1055->g_469.f2.f7 p_1055->g_23.f2.f6 p_1055->g_49 p_1055->g_154 p_1055->g_159 p_1055->g_872 p_1055->g_243 p_1055->g_195.f9
 */
int64_t  func_1(struct S2 * p_1055)
{ /* block id: 4 */
    uint64_t l_11 = 0UL;
    struct S1 *l_1052 = &p_1055->g_1053;
    (*p_1055->g_985) = (~(safe_rshift_func_int16_t_s_s(func_4(p_1055->g_10, p_1055->g_10, l_11, (p_1055->g_10 , p_1055->g_10), p_1055->g_10, p_1055), (safe_div_func_int8_t_s_s(0x2AL, ((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(p_1055->g_1051.yyyyxxxxxyyxyxyx)).sb2 ^ ((VECTOR(uint16_t, 16))((l_1052 == (void*)0), ((VECTOR(uint16_t, 4))(0xF067L)), 0xD03DL, p_1055->g_585.x, ((VECTOR(uint16_t, 8))(65527UL)), 65528UL)).s74))).hi & p_1055->g_1040.z) && l_11))))));
    return p_1055->g_626.z;
}


/* ------------------------------------------ */
/* 
 * reads : p_1055->g_242 p_1055->g_243 p_1055->g_469.f2.f1 p_1055->g_49 p_1055->g_154 p_1055->g_159 p_1055->g_469.f0 p_1055->g_843 p_1055->g_195.f9 p_1055->g_912 p_1055->g_23 p_1055->g_239.f1 p_1055->g_563 p_1055->g_985 p_1055->g_1013 p_1055->g_1014 p_1055->g_1017 p_1055->g_1020 p_1055->g_1021 p_1055->g_557.f2.f0 p_1055->g_1028 p_1055->g_1040 p_1055->g_1043 p_1055->g_650.f2.f0 p_1055->g_78.f2.f9 p_1055->g_469.f2.f7 p_1055->g_884 p_1055->g_896 p_1055->g_904 p_1055->g_586 p_1055->g_918
 * writes: p_1055->g_25 p_1055->g_23.f2.f8 p_1055->g_469.f2.f7 p_1055->g_23.f2.f6 p_1055->g_49 p_1055->g_154 p_1055->g_159 p_1055->g_872 p_1055->g_243 p_1055->g_195.f9
 */
int16_t  func_4(uint64_t  p_5, uint32_t  p_6, int64_t  p_7, uint32_t  p_8, uint16_t  p_9, struct S2 * p_1055)
{ /* block id: 5 */
    int16_t l_21[2][7][2] = {{{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L}},{{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L}}};
    struct S1 *l_22 = &p_1055->g_23;
    int64_t *l_24 = &p_1055->g_25;
    struct S1 **l_933 = (void*)0;
    struct S1 **l_934[8][7] = {{&p_1055->g_243,&p_1055->g_243,&p_1055->g_243,&l_22,&p_1055->g_243,&l_22,&l_22},{&p_1055->g_243,&p_1055->g_243,&p_1055->g_243,&l_22,&p_1055->g_243,&l_22,&l_22},{&p_1055->g_243,&p_1055->g_243,&p_1055->g_243,&l_22,&p_1055->g_243,&l_22,&l_22},{&p_1055->g_243,&p_1055->g_243,&p_1055->g_243,&l_22,&p_1055->g_243,&l_22,&l_22},{&p_1055->g_243,&p_1055->g_243,&p_1055->g_243,&l_22,&p_1055->g_243,&l_22,&l_22},{&p_1055->g_243,&p_1055->g_243,&p_1055->g_243,&l_22,&p_1055->g_243,&l_22,&l_22},{&p_1055->g_243,&p_1055->g_243,&p_1055->g_243,&l_22,&p_1055->g_243,&l_22,&l_22},{&p_1055->g_243,&p_1055->g_243,&p_1055->g_243,&l_22,&p_1055->g_243,&l_22,&l_22}};
    VECTOR(int8_t, 4) l_949 = (VECTOR(int8_t, 4))(0x73L, (VECTOR(int8_t, 2))(0x73L, 3L), 3L);
    VECTOR(int8_t, 4) l_951 = (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0L), 0L);
    VECTOR(int8_t, 8) l_952 = (VECTOR(int8_t, 8))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 9L), 9L), 9L, 6L, 9L);
    struct S1 *l_961 = &p_1055->g_962[0][3][0];
    struct S0 ***l_963 = (void*)0;
    VECTOR(uint8_t, 8) l_979 = (VECTOR(uint8_t, 8))(0x19L, (VECTOR(uint8_t, 4))(0x19L, (VECTOR(uint8_t, 2))(0x19L, 0xFAL), 0xFAL), 0xFAL, 0x19L, 0xFAL);
    int32_t l_989 = 0x7C1C7DA1L;
    int32_t l_994 = 0x0BA8C170L;
    int32_t l_996 = (-1L);
    int32_t l_997 = (-3L);
    int32_t l_998[7] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    VECTOR(int32_t, 4) l_1008 = (VECTOR(int32_t, 4))(0x37ED1F24L, (VECTOR(int32_t, 2))(0x37ED1F24L, 0x0915F697L), 0x0915F697L);
    VECTOR(int16_t, 16) l_1016 = (VECTOR(int16_t, 16))(9L, (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, (-7L)), (-7L)), (-7L), 9L, (-7L), (VECTOR(int16_t, 2))(9L, (-7L)), (VECTOR(int16_t, 2))(9L, (-7L)), 9L, (-7L), 9L, (-7L));
    VECTOR(int8_t, 16) l_1019 = (VECTOR(int8_t, 16))(0x04L, (VECTOR(int8_t, 4))(0x04L, (VECTOR(int8_t, 2))(0x04L, (-1L)), (-1L)), (-1L), 0x04L, (-1L), (VECTOR(int8_t, 2))(0x04L, (-1L)), (VECTOR(int8_t, 2))(0x04L, (-1L)), 0x04L, (-1L), 0x04L, (-1L));
    VECTOR(uint64_t, 8) l_1025 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xAF601CEC3116BE1AL), 0xAF601CEC3116BE1AL), 0xAF601CEC3116BE1AL, 1UL, 0xAF601CEC3116BE1AL);
    VECTOR(int64_t, 16) l_1041 = (VECTOR(int64_t, 16))(0x0A95A822A3AB6E05L, (VECTOR(int64_t, 4))(0x0A95A822A3AB6E05L, (VECTOR(int64_t, 2))(0x0A95A822A3AB6E05L, (-2L)), (-2L)), (-2L), 0x0A95A822A3AB6E05L, (-2L), (VECTOR(int64_t, 2))(0x0A95A822A3AB6E05L, (-2L)), (VECTOR(int64_t, 2))(0x0A95A822A3AB6E05L, (-2L)), 0x0A95A822A3AB6E05L, (-2L), 0x0A95A822A3AB6E05L, (-2L));
    VECTOR(int32_t, 16) l_1042 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 3L), 3L), 3L, (-1L), 3L, (VECTOR(int32_t, 2))((-1L), 3L), (VECTOR(int32_t, 2))((-1L), 3L), (-1L), 3L, (-1L), 3L);
    VECTOR(uint8_t, 16) l_1047 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x05L), 0x05L), 0x05L, 0UL, 0x05L, (VECTOR(uint8_t, 2))(0UL, 0x05L), (VECTOR(uint8_t, 2))(0UL, 0x05L), 0UL, 0x05L, 0UL, 0x05L);
    int i, j, k;
lbl_964:
    (*p_1055->g_242) = func_12(func_15(l_21[0][3][1], l_22, (l_22 == (void*)0), ((*l_24) = (5UL >= p_5)), &p_1055->g_23, p_1055), p_1055->g_243, p_1055);
    for (p_1055->g_195.f9 = (-11); (p_1055->g_195.f9 != 46); ++p_1055->g_195.f9)
    { /* block id: 316 */
        uint64_t **l_946 = &p_1055->g_719;
        VECTOR(int8_t, 8) l_947 = (VECTOR(int8_t, 8))(0x36L, (VECTOR(int8_t, 4))(0x36L, (VECTOR(int8_t, 2))(0x36L, (-1L)), (-1L)), (-1L), 0x36L, (-1L));
        VECTOR(int8_t, 4) l_948 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x01L), 0x01L);
        VECTOR(int8_t, 4) l_950 = (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 0x06L), 0x06L);
        uint32_t l_983[3][8][6] = {{{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL}},{{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL}},{{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL},{4294967295UL,0UL,0UL,0x2CF307B4L,4294967295UL,0UL}}};
        int32_t l_988 = 0x2F32F3C0L;
        int32_t l_993[3];
        int32_t l_995 = 0x615C1171L;
        int32_t l_999 = 1L;
        int32_t l_1007[9][2][1] = {{{(-2L)},{(-2L)}},{{(-2L)},{(-2L)}},{{(-2L)},{(-2L)}},{{(-2L)},{(-2L)}},{{(-2L)},{(-2L)}},{{(-2L)},{(-2L)}},{{(-2L)},{(-2L)}},{{(-2L)},{(-2L)}},{{(-2L)},{(-2L)}}};
        VECTOR(int32_t, 2) l_1009 = (VECTOR(int32_t, 2))(0x318253B4L, 1L);
        VECTOR(int32_t, 2) l_1010 = (VECTOR(int32_t, 2))((-5L), 1L);
        VECTOR(int16_t, 2) l_1015 = (VECTOR(int16_t, 2))(0x1B08L, (-9L));
        VECTOR(int16_t, 4) l_1018 = (VECTOR(int16_t, 4))(0x5083L, (VECTOR(int16_t, 2))(0x5083L, (-5L)), (-5L));
        VECTOR(int8_t, 4) l_1022 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x73L), 0x73L);
        int8_t *l_1026 = (void*)0;
        int8_t *l_1027[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        VECTOR(int64_t, 2) l_1037 = (VECTOR(int64_t, 2))(0x260A575AF281BB22L, 0x7F9A96550BFF7E17L);
        VECTOR(int64_t, 4) l_1038 = (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, (-4L)), (-4L));
        VECTOR(int64_t, 2) l_1039 = (VECTOR(int64_t, 2))((-8L), 0x2E060BB2647A1A5FL);
        int16_t *l_1046[7][9][4] = {{{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0}},{{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0}},{{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0}},{{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0}},{{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0}},{{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0}},{{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0},{(void*)0,(void*)0,&l_21[0][3][1],(void*)0}}};
        int32_t *l_1048 = (void*)0;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_993[i] = (-1L);
        if (((0x570FL > ((safe_rshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s((safe_add_func_int16_t_s_s(((safe_add_func_uint8_t_u_u((!(((*p_1055->g_243) , ((VECTOR(uint8_t, 4))(p_1055->g_945.s0436)).x) < ((void*)0 != l_946))), ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 2))(l_947.s32)), ((VECTOR(int8_t, 16))(l_948.ywwyzyyzwwxwywyx)).se0))).xyxxyyyy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_949.zxxy)), ((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 8))((!((VECTOR(int8_t, 2))(l_950.zw)).xyxyxyxy))).s24, ((VECTOR(int8_t, 2))((-1L), 0x01L)), ((VECTOR(int8_t, 2))(0L, (-3L)))))), 0x45L, 0x0DL))))).s26 < ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_951.xzzx)), ((VECTOR(int8_t, 4))(l_952.s5505)), ((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 16))(0x1BL, ((VECTOR(int8_t, 2))(0x6EL, 1L)), 1L, 8L, (safe_lshift_func_uint16_t_u_u((((safe_rshift_func_int16_t_s_s((safe_mod_func_int16_t_s_s((safe_add_func_int16_t_s_s(((void*)0 == &p_1055->g_25), ((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 8))((l_961 != (void*)0), (p_9 || p_7), 0x1B28L, 0x2013L, 0x1E67L, p_9, (-5L), 0x56DFL)), ((VECTOR(int16_t, 8))(1L)), ((VECTOR(int16_t, 8))(0x7A77L))))).s2)), l_952.s3)), 13)) , l_963) != &p_1055->g_247), 13)), ((VECTOR(int8_t, 2))(0x44L)), ((VECTOR(int8_t, 4))(0x12L)), ((VECTOR(int8_t, 4))(0x4CL)))).lo, ((VECTOR(int8_t, 8))(0x25L))))))).s94))).yyxxxxyyyxyxyxyy, ((VECTOR(int8_t, 16))(0x39L))))).sc6 && ((VECTOR(int8_t, 2))(1L))))).yxxyxxyyyxyyyxxx, ((VECTOR(int8_t, 16))(0x72L))))).lo, ((VECTOR(int8_t, 8))(0x72L)), ((VECTOR(int8_t, 8))(0x13L))))) && ((VECTOR(int8_t, 8))(0x5CL))))).s6)) || GROUP_DIVERGE(2, 1)), p_1055->g_239[3].f1)), l_947.s0)), l_948.w)) , p_1055->g_563.s6)) || 0x7AD2L))
        { /* block id: 317 */
            VECTOR(int32_t, 16) l_965 = (VECTOR(int32_t, 16))(0x3E6030E6L, (VECTOR(int32_t, 4))(0x3E6030E6L, (VECTOR(int32_t, 2))(0x3E6030E6L, 0x76D56636L), 0x76D56636L), 0x76D56636L, 0x3E6030E6L, 0x76D56636L, (VECTOR(int32_t, 2))(0x3E6030E6L, 0x76D56636L), (VECTOR(int32_t, 2))(0x3E6030E6L, 0x76D56636L), 0x3E6030E6L, 0x76D56636L, 0x3E6030E6L, 0x76D56636L);
            int32_t l_981 = 1L;
            int64_t l_1000 = (-3L);
            uint32_t l_1001 = 1UL;
            int i;
            if (p_1055->g_912.f2.f8)
                goto lbl_964;
            if (l_965.s9)
            { /* block id: 319 */
                struct S1 *l_974 = &p_1055->g_469;
                int32_t l_982 = 0x05838E02L;
                uint32_t *l_984 = &p_1055->g_69;
                (*p_1055->g_985) = (l_948.y , (safe_div_func_int32_t_s_s((safe_lshift_func_int16_t_s_s((safe_div_func_int8_t_s_s((((safe_lshift_func_int8_t_s_u(l_950.y, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(abs(((VECTOR(uint8_t, 8))(0UL, 0xBFL, ((l_965.sf = GROUP_DIVERGE(2, 1)) | (p_8 >= (0x5A05A26C8C29F18FL != (((*p_1055->g_242) = func_81(func_15(p_8, l_974, (1UL <= ((safe_add_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 2))(l_979.s01)).yyyyyxyx, (uint8_t)((p_1055->g_980[4] , l_947.s0) && l_981)))).s2, l_982)), p_1055->g_962[0][3][0].f2.f0)) != GROUP_DIVERGE(0, 1))), p_5, p_1055->g_243, p_1055), p_6, l_983[0][4][5], l_984, l_981, p_1055)) != (void*)0)))), ((VECTOR(uint8_t, 2))(0xAFL)), 0x11L, 0xACL, 247UL)).s20))), 255UL, GROUP_DIVERGE(0, 1), 0xFFL, ((VECTOR(uint8_t, 2))(252UL)), 0xC6L)).s7)) && l_965.sb) | p_1055->g_912.f2.f4), p_9)), p_8)), p_8)));
            }
            else
            { /* block id: 323 */
                int32_t *l_986 = (void*)0;
                int32_t *l_987[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint8_t l_990 = 249UL;
                int i;
                --l_990;
                l_1001--;
                if (p_7)
                    break;
                if (l_965.s7)
                    break;
            }
        }
        else
        { /* block id: 329 */
            int32_t *l_1005 = (void*)0;
            int32_t *l_1006 = &l_998[6];
            (*l_1006) &= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_1055->g_1004.s4e)), 1L, 0x13BFF33EL)).w;
            if (p_5)
                break;
            if (l_949.y)
                continue;
            if ((*l_1006))
                break;
        }
        (*p_1055->g_242) = (*p_1055->g_242);
        l_993[1] = (GROUP_DIVERGE(2, 1) , ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(l_1007[7][0][0], ((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 2))((-10L), 0L)).yyyy, ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(l_1008.xy)).yyxxyyxx & ((VECTOR(int32_t, 2))(1L, (-1L))).xyyxxyyy))).s4073611131134453 | ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(l_1009.yyxx)).odd ^ ((VECTOR(int32_t, 4))(l_1010.yxxx)).hi))).xyxxyxyxyyxyyyyx))).s4b30))), (((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(p_1055->g_1013.yxxyxyyyyxxxyxyx)).s2d & ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(p_1055->g_1014.xx)).xyyy && ((VECTOR(int16_t, 2))(l_1015.xx)).yyyx))).odd))) | ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(l_1016.sce)).yyxyyxyxxxyyyxyx & ((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 2))(p_1055->g_1017.ww)), ((VECTOR(int16_t, 4))((l_998[5] = ((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 2))(l_1018.wx)).xyxy, ((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 4))(0L, ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 8))(l_1019.sc2b7b14c)).s33, ((VECTOR(int8_t, 8))(0x29L, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(p_1055->g_1020.yy)).xyyy || ((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 4))(p_1055->g_1021.s0074)), ((VECTOR(int8_t, 4))(0x24L, 0x0AL, 0x03L, (-7L)))))), ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(l_1022.wxxxwzwxxyyzzyzz)).se1 >= ((VECTOR(int8_t, 16))((l_988 &= ((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(l_1025.s03)).lo, p_1055->g_557[0][5].f2.f0)) | 0xAF4D7FA64A54C358L)), 0x23L, 0x3EL, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 8))(p_1055->g_1028.zwxzzxww)).s4374061475061034, ((VECTOR(int8_t, 4))(((((safe_add_func_uint16_t_u_u((l_1008.x , (safe_rshift_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s(l_995, ((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))((safe_mul_func_uint8_t_u_u((((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))(l_1037.xyyy)).wyzxwzwwyxyxwxxz < ((VECTOR(int64_t, 8))(l_1038.yyyywzxz)).s2045774233023746))) > ((VECTOR(int64_t, 16))((-2L), 0x1D4F23F40CA121B1L, ((VECTOR(int64_t, 4))(l_1039.xxxx)), ((VECTOR(int64_t, 2))(p_1055->g_1040.xz)), ((VECTOR(int64_t, 2))(l_1041.s97)), 0x3BAB7FDC40046957L, ((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 16))((p_9 && ((VECTOR(int32_t, 8))(l_1042.s5c69936c)).s1), 1L, ((VECTOR(int64_t, 2))(p_1055->g_1043.s22)), 0x2870A9145AF96DD0L, 0x1B7824DFC3DD00DAL, 5L, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))((!((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 16))((safe_mod_func_int64_t_s_s((l_1046[5][0][1] != (p_7 , (void*)0)), p_1055->g_650[5].f2.f0)), 0x19872287B1538DCFL, p_1055->g_195.f9, 0x5D9D6E4C6B78E546L, 0x0DBDB5FBBEB84DA0L, p_6, ((VECTOR(int64_t, 4))(0x774940C374949832L)), (-7L), ((VECTOR(int64_t, 4))(0x191C66C51220EE36L)), 1L)), ((VECTOR(int64_t, 16))(8L))))) && ((VECTOR(int64_t, 16))(0x2D6624F67867DFB7L))))).lo & ((VECTOR(int64_t, 8))(0x26CB0ECF20F5A851L))))).s02 && ((VECTOR(int64_t, 2))(0x116C5EF563A24AA8L))))).xyxx))) ^ ((VECTOR(int64_t, 4))(0L))))), (-10L), (-1L), ((VECTOR(int64_t, 2))(0x5F7F98854270AAE7L)), 0x401818659FF4200AL)).sce, ((VECTOR(int64_t, 2))((-1L)))))), 3L, 0L, (-1L)))))) | ((VECTOR(int64_t, 16))(0x3C8B3478FBFCC69AL))))).sfbc8, ((VECTOR(int64_t, 4))(0x6F797C4B11AE1014L))))).y & 0x2481CC6AC6689BDCL), l_1015.y)), 0x7CL, 1L, 0x32L)).yxwwxyzzyxxzyyyy && ((VECTOR(int8_t, 16))(0x74L))))), ((VECTOR(int8_t, 16))(0x6EL))))).sc)) & l_994), 5))), 0L)) || 18446744073709551615UL) & l_951.z) <= 18446744073709551607UL), p_5, 1L, 0x7AL)).xzwzxyzzzzxwzxwz, ((VECTOR(int8_t, 16))(0x40L))))).s25, (int8_t)p_5))).yxxy, (int8_t)0L, (int8_t)l_999))) && ((VECTOR(int8_t, 4))(0x2AL))))), p_7, ((VECTOR(int8_t, 4))(6L)), 2L, ((VECTOR(int8_t, 2))((-4L))), 0x62L)).sc9))).xyxy)))))), ((VECTOR(int8_t, 2))(0x14L)), (-8L))).s50))), (-1L))).odd, ((VECTOR(int8_t, 2))((-1L))), ((VECTOR(int8_t, 2))(1L))))).yyyxyxyyxxxyyxxy, ((VECTOR(uint8_t, 16))(0x7FL))))).s8b05))).w), p_1055->g_23.f2.f1, 0x209BL, 0x5ED4L)).lo))).xyyxyyyyyyxyyxyy, ((VECTOR(int16_t, 16))(0x746CL)), ((VECTOR(int16_t, 16))((-9L))))))))).se2, ((VECTOR(int16_t, 2))(0L)))))))).yxyxxyxx >= ((VECTOR(int16_t, 8))(0x3BA8L))))).s6, 6)) | l_1041.sb) || l_1047.sd), ((VECTOR(int32_t, 2))(0x11923E00L)), 0x51D2B49EL)).odd, ((VECTOR(int32_t, 4))((-6L))), ((VECTOR(int32_t, 4))(1L))))), 9L, 0x2232656CL, 0x2F9AA5D9L)) | ((VECTOR(int32_t, 8))((-3L)))))).s22 && ((VECTOR(int32_t, 2))((-9L)))))).lo);
    }
    return p_1055->g_78.f2.f9;
}


/* ------------------------------------------ */
/* 
 * reads : p_1055->g_469.f2.f7 p_1055->g_884 p_1055->g_159 p_1055->g_896 p_1055->g_904 p_1055->g_586 p_1055->g_469.f2.f1 p_1055->g_49 p_1055->g_242 p_1055->g_243 p_1055->g_154 p_1055->g_918 p_1055->g_469.f0 p_1055->g_843
 * writes: p_1055->g_469.f2.f7 p_1055->g_23.f2.f6 p_1055->g_25 p_1055->g_49 p_1055->g_23.f2.f8 p_1055->g_154 p_1055->g_159 p_1055->g_872
 */
struct S1 * func_12(struct S1 * p_13, struct S1 * p_14, struct S2 * p_1055)
{ /* block id: 300 */
    VECTOR(uint64_t, 2) l_899 = (VECTOR(uint64_t, 2))(0x92F141535EE07518L, 0x293F1722C5F84302L);
    VECTOR(uint32_t, 16) l_903 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint32_t, 2))(0UL, 0UL), (VECTOR(uint32_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL);
    int16_t l_909 = 0L;
    uint32_t *l_910 = &p_1055->g_69;
    struct S1 *l_911[4];
    int8_t *l_919 = (void*)0;
    int8_t **l_920 = &l_919;
    int8_t *l_923 = (void*)0;
    int8_t *l_924 = (void*)0;
    int8_t *l_925[3];
    int32_t l_926 = 0x67E8E38EL;
    int32_t l_927 = 1L;
    int64_t *l_928 = &p_1055->g_876;
    int32_t *l_931 = (void*)0;
    int32_t *l_932 = &p_1055->g_49;
    int i;
    for (i = 0; i < 4; i++)
        l_911[i] = &p_1055->g_912;
    for (i = 0; i < 3; i++)
        l_925[i] = (void*)0;
    for (p_1055->g_469.f2.f7 = 0; (p_1055->g_469.f2.f7 != 27); ++p_1055->g_469.f2.f7)
    { /* block id: 303 */
        uint32_t l_881 = 4294967295UL;
        uint32_t l_889 = 0xDC02B56BL;
        VECTOR(uint32_t, 8) l_902 = (VECTOR(uint32_t, 8))(0xB32FF4D9L, (VECTOR(uint32_t, 4))(0xB32FF4D9L, (VECTOR(uint32_t, 2))(0xB32FF4D9L, 0x0C900C65L), 0x0C900C65L), 0x0C900C65L, 0xB32FF4D9L, 0x0C900C65L);
        int32_t *l_905[2][9][9] = {{{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5}},{{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5},{&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5,&p_1055->g_23.f2.f1,&p_1055->g_23.f2.f1,&p_1055->g_239[3].f5,&p_1055->g_650[5].f2.f5,&p_1055->g_239[3].f5}}};
        struct S0 *l_906 = &p_1055->g_239[3];
        int32_t l_907 = 1L;
        uint64_t l_908 = 2UL;
        int32_t **l_914 = &p_1055->g_872[2][2][0];
        int32_t *l_915 = (void*)0;
        int i, j, k;
        (*l_914) = func_79(func_15(((l_881 < l_881) ^ l_881), func_81(p_14, (safe_add_func_int32_t_s_s((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))((!((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 4))(1L, 1L, 0x766D627D5E11DFD5L, 0x16E5156E0AA726AAL)), ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),VECTOR(int64_t, 16),((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),VECTOR(int64_t, 16),((VECTOR(int64_t, 16))(p_1055->g_884.s1236370256670536)), ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 4))(l_881, 7L, 1L, 0x42CC1383C144A3DFL)).yxyyyyywyxwwwxwz, ((VECTOR(int64_t, 16))(0x6B7D44763A28346DL, 5L, ((safe_rshift_func_int8_t_s_s(((safe_add_func_uint64_t_u_u((l_889 , (safe_mul_func_int8_t_s_s(((p_1055->g_159[2] && ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 16))(0x7A2D15611B7B401EL, ((VECTOR(uint64_t, 2))(p_1055->g_896.s75)), ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 8))((+((VECTOR(uint64_t, 16))(0UL, ((VECTOR(uint64_t, 8))(abs(((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(uint64_t, 2))(18446744073709551612UL, 18446744073709551610UL)), ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(abs(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(18446744073709551613UL, 0x94A25B10B3DED55DL)).yxyxyyyx ^ ((VECTOR(uint64_t, 2))(l_899.yy)).yyxyyyyx))).hi))), (l_907 = ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))(mad_sat(((VECTOR(uint32_t, 8))(4294967295UL, 0x59CE7894L, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_902.s15)), 0UL, 3UL)), 7UL, 0x52E0F53FL)).lo, ((VECTOR(uint32_t, 2))(l_903.s62)).yxyy, ((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(p_1055->g_904.s3450)), ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(1UL, 0x4DA782BFL)) ^ ((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 16))(0x97BEL, 6UL, 0UL, 0x4B1EL, (((((&p_1055->g_143 == l_905[0][5][1]) , (void*)0) == l_906) & l_903.sa) <= GROUP_DIVERGE(0, 1)), 8UL, 0x8E02L, 0xA1B3L, 1UL, 0x0F8DL, p_1055->g_586.y, ((VECTOR(uint16_t, 4))(8UL)), 65527UL)).lo, ((VECTOR(uint16_t, 8))(0x4C21L))))).s70))), l_899.x, 7UL, ((VECTOR(uint32_t, 4))(0xE896759CL)), ((VECTOR(uint32_t, 4))(1UL)))), ((VECTOR(uint32_t, 16))(4294967290UL)), ((VECTOR(uint32_t, 16))(1UL))))).s532a))).odd + ((VECTOR(uint32_t, 2))(0xD401F8FCL))))), ((VECTOR(uint32_t, 2))(0x955C807EL))))).odd, 3UL, ((VECTOR(uint64_t, 4))(0xA1F29526E86FDBDCL)), 18446744073709551607UL, 1UL)).s3), l_903.s8, 0xFA5855C21856684EL, 18446744073709551614UL, ((VECTOR(uint64_t, 4))(0x1EB28C381835D269L)), ((VECTOR(uint64_t, 4))(0xFE25C3F112B60874L)))).sce))).xxyyxyxy))), 1UL, l_881, 1UL, ((VECTOR(uint64_t, 2))(0x2136ADAF32F1659FL)), 18446744073709551615UL, 0xE92DE1A20E31E504L)).even))).s60, ((VECTOR(uint64_t, 2))(18446744073709551608UL))))).xyxyxxyxxyxyxxxx ^ ((VECTOR(uint64_t, 16))(0UL))))).lo + ((VECTOR(uint64_t, 8))(0xB7D257B46C5756E8L))))), 0x648547C3F2ECC823L, 0x499C831BD8FDB42CL, ((VECTOR(uint64_t, 2))(0x07FC97405A67E59DL)), 18446744073709551613UL)).even, ((VECTOR(uint64_t, 8))(0xC6EAA134AB3E0CCDL))))).even + ((VECTOR(uint64_t, 4))(0x88410CA9E0B3E378L))))).hi + ((VECTOR(uint64_t, 2))(18446744073709551606UL))))).lo) , l_903.sb), l_889))), GROUP_DIVERGE(2, 1))) <= l_899.y), l_881)) & 8UL), 0x4FA73A8AB85D7FD4L, ((VECTOR(int64_t, 4))((-7L))), 0L, l_908, l_903.s9, 0x4215052443BAEAB4L, 0x0F9D98E71F9D8A3CL, 0L, (-3L), 6L))))).s0c, ((VECTOR(int64_t, 2))(0x36F8E3058CD9B4DBL))))).xxyyyxxyyxyyxyyy && ((VECTOR(int64_t, 16))(0x0A5343208432FB0AL))))), ((VECTOR(int64_t, 16))(0x4D5BFA65F52FCF8FL))))), ((VECTOR(int64_t, 16))(0L)), ((VECTOR(int64_t, 16))((-6L)))))).sd226 || ((VECTOR(int64_t, 4))(0L)))))))) && ((VECTOR(int64_t, 4))(0x529A37A0A58F6308L))))), l_902.s0, ((VECTOR(int64_t, 2))(0x06F848ED62823395L)), 0x47FA0367DCAB51DAL)).hi != ((VECTOR(int64_t, 4))(0x2DA4671C537A9C75L)))))))).yxzxxzxzywxwwxzx && ((VECTOR(int64_t, 16))(0x2A3D66CB02C07FD1L))))).s0 <= l_909), l_902.s3)), l_903.sf, l_910, p_1055->g_469.f2.f1, p_1055), l_899.y, l_881, l_911[3], p_1055), p_1055);
        l_907 = 0x1F2C037AL;
    }
    (*l_932) = (((l_927 &= (l_926 = ((((safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 2))(p_1055->g_918.yw)).yxyy, ((VECTOR(int8_t, 4))(0L, 5L, (-3L), 0x3DL))))).y, 2L, 0x5CL, (-1L))).y, (l_899.x || p_1055->g_469.f0))) <= l_903.se) , (((*l_920) = l_919) != p_1055->g_843)) > (safe_mul_func_int8_t_s_s(l_903.s7, l_903.s3))))) , &p_1055->g_25) != l_928);
    return l_911[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1055->g_23.f2.f8 p_1055->g_242 p_1055->g_243
 * writes: p_1055->g_23.f2.f8
 */
struct S1 * func_15(uint64_t  p_16, struct S1 * p_17, int8_t  p_18, int64_t  p_19, struct S1 * p_20, struct S2 * p_1055)
{ /* block id: 7 */
    VECTOR(int16_t, 2) l_758 = (VECTOR(int16_t, 2))(0x5B9CL, 0x15AFL);
    VECTOR(int64_t, 4) l_759 = (VECTOR(int64_t, 4))(0x6222E153D881536EL, (VECTOR(int64_t, 2))(0x6222E153D881536EL, (-10L)), (-10L));
    uint8_t *l_763[2][6] = {{&p_1055->g_557[0][5].f2.f0,&p_1055->g_557[0][5].f2.f0,&p_1055->g_557[0][5].f2.f0,&p_1055->g_557[0][5].f2.f0,&p_1055->g_557[0][5].f2.f0,&p_1055->g_557[0][5].f2.f0},{&p_1055->g_557[0][5].f2.f0,&p_1055->g_557[0][5].f2.f0,&p_1055->g_557[0][5].f2.f0,&p_1055->g_557[0][5].f2.f0,&p_1055->g_557[0][5].f2.f0,&p_1055->g_557[0][5].f2.f0}};
    uint8_t *l_765 = (void*)0;
    int i, j;
    for (p_1055->g_23.f2.f8 = 0; (p_1055->g_23.f2.f8 > 26); ++p_1055->g_23.f2.f8)
    { /* block id: 10 */
        uint32_t l_32 = 0x2F725DC8L;
        struct S1 **l_753 = &p_1055->g_243;
        VECTOR(int16_t, 16) l_754 = (VECTOR(int16_t, 16))(0x36D1L, (VECTOR(int16_t, 4))(0x36D1L, (VECTOR(int16_t, 2))(0x36D1L, 0x0F94L), 0x0F94L), 0x0F94L, 0x36D1L, 0x0F94L, (VECTOR(int16_t, 2))(0x36D1L, 0x0F94L), (VECTOR(int16_t, 2))(0x36D1L, 0x0F94L), 0x36D1L, 0x0F94L, 0x36D1L, 0x0F94L);
        VECTOR(int16_t, 8) l_757 = (VECTOR(int16_t, 8))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 0x07EAL), 0x07EAL), 0x07EAL, (-5L), 0x07EAL);
        VECTOR(int64_t, 8) l_760 = (VECTOR(int64_t, 8))(6L, (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 0x2FA97EE1A0ECA695L), 0x2FA97EE1A0ECA695L), 0x2FA97EE1A0ECA695L, 6L, 0x2FA97EE1A0ECA695L);
        uint8_t **l_764 = &l_763[1][5];
        int64_t *l_875 = &p_1055->g_876;
        int32_t l_877 = 0x37E2E28AL;
        uint64_t l_878 = 18446744073709551611UL;
        int i;
        (1 + 1);
    }
    return (*p_1055->g_242);
}


/* ------------------------------------------ */
/* 
 * reads : p_1055->g_767 p_1055->g_470 p_1055->g_195.f2 p_1055->g_242 p_1055->g_243 p_1055->g_154 p_1055->g_159 p_1055->g_812 p_1055->g_842 p_1055->g_684 p_1055->g_871
 * writes: p_1055->g_469 p_1055->g_195.f2 p_1055->g_23.f2.f6 p_1055->g_154 p_1055->g_159 p_1055->g_466 p_1055->g_872
 */
int64_t * func_28(int64_t  p_29, struct S2 * p_1055)
{ /* block id: 251 */
    volatile struct S1 *l_768[2];
    int32_t *l_793 = (void*)0;
    int16_t l_795 = (-5L);
    uint32_t l_805 = 4294967288UL;
    int32_t l_808 = 0L;
    int32_t l_809 = 0x72841EC6L;
    uint8_t *l_841 = &p_1055->g_239[3].f0;
    uint8_t **l_840[6][6][7] = {{{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841}},{{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841}},{{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841}},{{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841}},{{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841}},{{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841},{&l_841,&l_841,&l_841,&l_841,(void*)0,&l_841,&l_841}}};
    struct S1 *l_859 = &p_1055->g_650[6];
    int64_t *l_874 = &p_1055->g_25;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_768[i] = &p_1055->g_746;
    (*p_1055->g_470) = p_1055->g_767[5];
    for (p_1055->g_195.f2 = 0; (p_1055->g_195.f2 != 58); ++p_1055->g_195.f2)
    { /* block id: 255 */
        int32_t l_779 = 0x22C0ACE5L;
        int32_t *l_787[8] = {(void*)0,&p_1055->g_650[5].f2.f8,(void*)0,(void*)0,&p_1055->g_650[5].f2.f8,(void*)0,(void*)0,&p_1055->g_650[5].f2.f8};
        struct S1 *l_788 = &p_1055->g_557[0][5];
        int8_t *l_796 = (void*)0;
        int8_t *l_797 = (void*)0;
        int32_t l_798 = 0L;
        int8_t *l_799 = (void*)0;
        int8_t *l_800 = (void*)0;
        int8_t *l_801 = (void*)0;
        int8_t *l_802 = (void*)0;
        int8_t *l_803[9][3][1] = {{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}}};
        int32_t l_804 = 0L;
        int32_t *l_806 = (void*)0;
        int32_t *l_807[3];
        VECTOR(int64_t, 2) l_835 = (VECTOR(int64_t, 2))((-8L), 0x481CFEA4BA24BAAAL);
        uint64_t l_867 = 0x8DF9FEDA4EE03035L;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_807[i] = (void*)0;
        l_809 = (l_808 = (!(safe_add_func_uint16_t_u_u((safe_div_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s((l_804 ^= (safe_sub_func_int8_t_s_s(((0x70CFBB65L || l_779) ^ (l_798 ^= (safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(p_1055->g_784.xyyxxxxxyxyxxyxx)).odd || ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x6BL, 0x37L)), (-9L), (safe_div_func_uint64_t_u_u(((GROUP_DIVERGE(1, 1) , l_787[2]) == (p_1055->g_557[0][5].f2.f8 , func_79(l_788, p_1055))), ((safe_sub_func_int32_t_s_s((safe_div_func_int8_t_s_s(((((~(p_1055->g_237.f9 || p_29)) , ((((l_793 == (void*)0) == 0x37EB54A61747034AL) , p_1055->g_354.s4) ^ p_1055->g_794)) & 0xEBD7FB289C52334EL) <= l_795), 3UL)), l_779)) , p_1055->g_766))), ((VECTOR(int8_t, 2))(0L)), 0x20L, 0L))))) && ((VECTOR(int8_t, 8))(0x49L))))).s7437077722576076 && ((VECTOR(int8_t, 16))(5L))))), ((VECTOR(int8_t, 16))((-5L))), ((VECTOR(int8_t, 16))((-1L)))))).sb, p_29)), 0x04E1L)))), l_779))), p_29)), l_805)), p_29))));
        for (p_1055->g_23.f2.f6 = (-15); (p_1055->g_23.f2.f6 > (-20)); p_1055->g_23.f2.f6 = safe_sub_func_uint16_t_u_u(p_1055->g_23.f2.f6, 5))
        { /* block id: 262 */
            int32_t l_813 = (-1L);
            int32_t **l_814 = (void*)0;
            int32_t **l_815 = &p_1055->g_466;
            int64_t *l_816 = &p_1055->g_25;
            (*p_1055->g_812) = func_79((*p_1055->g_242), p_1055);
            if (l_813)
                break;
            (*l_815) = &l_808;
            return l_816;
        }
        for (l_779 = 0; (l_779 >= 26); l_779++)
        { /* block id: 270 */
            uint16_t l_823 = 0xD191L;
            struct S1 *l_826 = &p_1055->g_469;
            uint32_t l_844 = 1UL;
            int32_t l_845 = 0x1AA22BF6L;
            for (p_1055->g_469.f2.f0 = (-30); (p_1055->g_469.f2.f0 > 33); p_1055->g_469.f2.f0 = safe_add_func_uint16_t_u_u(p_1055->g_469.f2.f0, 1))
            { /* block id: 273 */
                if (p_29)
                    break;
            }
            l_808 = (safe_mul_func_int8_t_s_s((l_823 = 7L), ((GROUP_DIVERGE(2, 1) > (p_29 | p_29)) != ((safe_add_func_int32_t_s_s(((!p_29) , 0x50C48B0FL), ((void*)0 == l_826))) || (safe_mul_func_uint16_t_u_u((((safe_lshift_func_int16_t_s_u(p_29, ((safe_rshift_func_int16_t_s_s((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 2))(l_835.xx)).lo, (safe_sub_func_int16_t_s_s((safe_sub_func_int8_t_s_s((l_844 = ((l_840[4][1][3] != p_1055->g_842[0][4][2]) > 0x31L)), p_29)), 4UL)))), p_29)) != 0x12L))) | l_845) , 0x0F98L), p_29))))));
        }
        if ((safe_add_func_int32_t_s_s((-2L), 0x1DA29D82L)))
        { /* block id: 280 */
            uint8_t *l_852 = (void*)0;
            uint8_t *l_853 = &p_1055->g_239[3].f0;
            uint32_t *l_854 = (void*)0;
            uint32_t *l_855 = &l_805;
            int32_t l_858 = 0x6D9266E3L;
            int32_t **l_860 = (void*)0;
            uint64_t *l_868 = (void*)0;
            int32_t l_869 = 0x01D57A17L;
            int32_t **l_870 = &p_1055->g_466;
            l_869 = (((((safe_sub_func_uint64_t_u_u(((((l_793 = ((l_858 ^= (safe_mod_func_uint32_t_u_u(((*l_855) = (l_852 != (l_853 = (void*)0))), (safe_lshift_func_int16_t_s_s(p_1055->g_684.s7, 12))))) , func_79(l_859, p_1055))) != &l_804) != (safe_div_func_int64_t_s_s((safe_lshift_func_int8_t_s_u((l_788 != ((!(~((l_867 = p_29) == (l_860 != l_860)))) , l_788)), 5)), p_29))) || 4294967295UL), p_29)) && p_29) , l_868) != (void*)0) , p_29);
            (*p_1055->g_871) = ((*l_870) = func_79(l_788, p_1055));
        }
        else
        { /* block id: 289 */
            int32_t l_873 = 0x47FDC38FL;
            l_873 = p_29;
            if (l_873)
                continue;
        }
    }
    return l_874;
}


/* ------------------------------------------ */
/* 
 * reads : p_1055->g_45 p_1055->g_66 p_1055->g_69 p_1055->g_73 p_1055->g_78 p_1055->g_23.f2.f6 p_1055->g_25 p_1055->g_96 p_1055->g_97 p_1055->g_23.f2 p_1055->g_118 p_1055->g_135 p_1055->g_10 p_1055->g_142 p_1055->g_143 p_1055->g_49 p_1055->g_154 p_1055->g_159 p_1055->g_170 p_1055->g_192 p_1055->g_195 p_1055->g_239.f1 p_1055->g_239.f9 p_1055->g_237.f9 p_1055->g_242 p_1055->g_237 p_1055->g_246 p_1055->g_243 p_1055->g_23 p_1055->g_259 p_1055->g_247 p_1055->g_321 p_1055->g_345 p_1055->g_463 p_1055->g_464 p_1055->g_465 p_1055->g_470 p_1055->g_500 p_1055->g_503 p_1055->g_379 p_1055->g_548 p_1055->g_557 p_1055->g_650 p_1055->g_248 p_1055->g_668 p_1055->g_217 p_1055->g_675 p_1055->g_678 p_1055->g_684 p_1055->g_469.f2.f2 p_1055->g_719 p_1055->g_724 p_1055->g_732 p_1055->g_342 p_1055->g_239.f4 p_1055->g_746 p_1055->g_752 p_1055->g_311 p_1055->g_312 p_1055->g_320 p_1055->g_344 p_1055->g_353 p_1055->g_354 p_1055->g_356 p_1055->g_357 p_1055->g_435 p_1055->g_445
 * writes: p_1055->g_69 p_1055->g_23.f2.f6 p_1055->g_25 p_1055->g_10 p_1055->g_135 p_1055->g_49 p_1055->g_154 p_1055->g_159 p_1055->g_73 p_1055->g_23.f2.f9 p_1055->g_195 p_1055->g_96 p_1055->g_23.f2.f1 p_1055->g_217 p_1055->g_237.f5 p_1055->g_243 p_1055->g_237 p_1055->g_247 p_1055->g_259 p_1055->g_142 p_1055->g_463 p_1055->g_466 p_1055->g_469 p_1055->g_557.f2.f8 p_1055->g_239.f7 p_1055->g_557.f2.f6 p_1055->g_23.f2.f0 p_1055->g_719 p_1055->g_321 p_1055->g_746 p_1055->g_239.f0 p_1055->g_239.f4 p_1055->g_379
 */
struct S1 * func_30(int64_t  p_31, struct S2 * p_1055)
{ /* block id: 11 */
    struct S1 *l_39 = (void*)0;
    int64_t *l_47 = &p_1055->g_25;
    int64_t **l_46 = &l_47;
    uint32_t *l_67 = (void*)0;
    uint32_t *l_68 = &p_1055->g_69;
    VECTOR(uint64_t, 4) l_72 = (VECTOR(uint64_t, 4))(5UL, (VECTOR(uint64_t, 2))(5UL, 0UL), 0UL);
    int32_t *l_162 = (void*)0;
    int8_t *l_163 = (void*)0;
    int8_t *l_164 = (void*)0;
    int8_t *l_165 = (void*)0;
    int8_t *l_166 = (void*)0;
    int8_t *l_167 = (void*)0;
    int8_t *l_168 = (void*)0;
    uint32_t l_169 = 0x1DC01494L;
    struct S0 *l_236 = &p_1055->g_237;
    VECTOR(int32_t, 8) l_307 = (VECTOR(int32_t, 8))(0x2D5CFDD4L, (VECTOR(int32_t, 4))(0x2D5CFDD4L, (VECTOR(int32_t, 2))(0x2D5CFDD4L, (-1L)), (-1L)), (-1L), 0x2D5CFDD4L, (-1L));
    VECTOR(uint64_t, 16) l_316 = (VECTOR(uint64_t, 16))(0x7D3CC4FAD99BF391L, (VECTOR(uint64_t, 4))(0x7D3CC4FAD99BF391L, (VECTOR(uint64_t, 2))(0x7D3CC4FAD99BF391L, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 0x7D3CC4FAD99BF391L, 18446744073709551610UL, (VECTOR(uint64_t, 2))(0x7D3CC4FAD99BF391L, 18446744073709551610UL), (VECTOR(uint64_t, 2))(0x7D3CC4FAD99BF391L, 18446744073709551610UL), 0x7D3CC4FAD99BF391L, 18446744073709551610UL, 0x7D3CC4FAD99BF391L, 18446744073709551610UL);
    VECTOR(int8_t, 8) l_338 = (VECTOR(int8_t, 8))(0x11L, (VECTOR(int8_t, 4))(0x11L, (VECTOR(int8_t, 2))(0x11L, 0L), 0L), 0L, 0x11L, 0L);
    int64_t l_380[6] = {(-1L),0x5748E87C62852F21L,(-1L),(-1L),0x5748E87C62852F21L,(-1L)};
    VECTOR(int32_t, 2) l_415 = (VECTOR(int32_t, 2))(0x12157EA1L, 0x57A51863L);
    VECTOR(uint16_t, 2) l_507 = (VECTOR(uint16_t, 2))(1UL, 2UL);
    VECTOR(uint16_t, 8) l_508 = (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 2UL), 2UL), 2UL, 65535UL, 2UL);
    VECTOR(uint32_t, 4) l_560 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xDCF2952BL), 0xDCF2952BL);
    VECTOR(int32_t, 8) l_583 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
    int16_t l_616 = 0x4EF1L;
    uint64_t *l_652 = (void*)0;
    uint32_t l_695 = 0x98D656DCL;
    VECTOR(int64_t, 16) l_716 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x6188FAE51B89FF15L), 0x6188FAE51B89FF15L), 0x6188FAE51B89FF15L, (-1L), 0x6188FAE51B89FF15L, (VECTOR(int64_t, 2))((-1L), 0x6188FAE51B89FF15L), (VECTOR(int64_t, 2))((-1L), 0x6188FAE51B89FF15L), (-1L), 0x6188FAE51B89FF15L, (-1L), 0x6188FAE51B89FF15L);
    volatile struct S1 *l_748 = &p_1055->g_746;
    int i;
    if (func_33(l_39, ((p_1055->g_73.sb = ((p_31 , (((~((((*l_68) |= ((VECTOR(uint32_t, 16))(func_40((safe_rshift_func_int8_t_s_s(0L, ((VECTOR(int8_t, 4))(p_1055->g_45.yyzx)).w)), (&p_1055->g_25 != ((*l_46) = (void*)0)), p_1055))).se) == 0x9F656345L) != ((safe_add_func_uint32_t_u_u((((VECTOR(uint64_t, 16))(l_72.yzyywzzwzxyxyzxw)).s5 != (((((VECTOR(int8_t, 2))(p_1055->g_73.s74)).hi | (safe_lshift_func_uint16_t_u_s((safe_mul_func_uint8_t_u_u((p_1055->g_78 , ((l_162 = func_79(func_81(l_39, p_31, l_72.w, l_68, p_31, p_1055), p_1055)) == (void*)0)), 0x26L)), p_1055->g_23.f2.f9))) < p_31) || 0x220D3CC9L)), (-1L))) && 0x61L))) , p_31) ^ p_1055->g_143)) , 0L)) ^ p_31), p_1055->g_23.f2.f7, l_169, p_1055->g_170, p_1055))
    { /* block id: 61 */
        int16_t l_200 = 0x6334L;
        VECTOR(int32_t, 16) l_227 = (VECTOR(int32_t, 16))(0x514F1A5EL, (VECTOR(int32_t, 4))(0x514F1A5EL, (VECTOR(int32_t, 2))(0x514F1A5EL, 2L), 2L), 2L, 0x514F1A5EL, 2L, (VECTOR(int32_t, 2))(0x514F1A5EL, 2L), (VECTOR(int32_t, 2))(0x514F1A5EL, 2L), 0x514F1A5EL, 2L, 0x514F1A5EL, 2L);
        int i;
        for (p_1055->g_23.f2.f1 = 0; (p_1055->g_23.f2.f1 <= 17); p_1055->g_23.f2.f1 = safe_add_func_int16_t_s_s(p_1055->g_23.f2.f1, 8))
        { /* block id: 64 */
            VECTOR(int16_t, 2) l_214 = (VECTOR(int16_t, 2))(8L, 0x3858L);
            int8_t *l_216 = (void*)0;
            struct S0 *l_238 = &p_1055->g_239[3];
            int i;
            if ((0x942405EA537F39B1L && l_200))
            { /* block id: 65 */
                int32_t **l_201 = &l_162;
                VECTOR(int8_t, 2) l_215 = (VECTOR(int8_t, 2))(1L, 1L);
                uint16_t *l_220 = (void*)0;
                uint16_t *l_221 = &p_1055->g_195.f4;
                int32_t l_222 = 0x5CE51773L;
                int i;
                (*l_201) = &p_1055->g_49;
                l_222 ^= ((safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(((((~(safe_div_func_uint64_t_u_u((safe_lshift_func_int16_t_s_s((safe_div_func_int8_t_s_s(0x0FL, 9L)), ((VECTOR(int16_t, 2))((-1L), (-1L))).lo)), (safe_mul_func_uint16_t_u_u(((*l_221) = (safe_add_func_int16_t_s_s(0x1A2AL, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(l_214.xxyx)).lo & ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(4L, (-2L))).xyxyyyxxyyxyyyyy && ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(l_215.yxyy)), ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(0x40L, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(9L, 0x4DL)).xxxx != ((VECTOR(int8_t, 4))(1L, (-7L), 0x3FL, 0L))))), ((VECTOR(int8_t, 4))(0x29L, (p_31 != (((p_1055->g_217[8] = l_216) == l_164) < FAKE_DIVERGE(p_1055->global_2_offset, get_global_id(2), 10))), 0x60L, 1L)), p_31, 3L, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 4))((safe_div_func_uint64_t_u_u((4294967293UL > l_214.x), 0x4CB03ED47F7B9D44L)), 0x1CL, (-1L), (-3L))).xzzxwzwz, ((VECTOR(int8_t, 8))(0x05L)), ((VECTOR(int8_t, 8))(0x66L))))).s74 && ((VECTOR(int8_t, 2))((-2L)))))), ((VECTOR(int8_t, 2))((-8L))), 1L)).s5843 && ((VECTOR(int8_t, 4))((-3L)))))).wyyyxyyzyxzwxxyw && ((VECTOR(int8_t, 16))((-8L)))))).s28ab, ((VECTOR(int8_t, 4))(0x6CL))))).ywwzzyzyzzzzwyzy, ((VECTOR(uint8_t, 16))(0UL))))).s88c2, ((VECTOR(int16_t, 4))(0x5ECEL))))) == ((VECTOR(int16_t, 4))(0x374FL))))).yzwxwzxxzyxxyyyz))).sbc))), 0x43F0L, 0x4D34L)) | ((VECTOR(int16_t, 4))(0x546CL))))).z))), p_31))))) , p_1055->g_78.f2.f1) >= p_1055->g_195.f1) || p_31), ((VECTOR(uint16_t, 2))(0xAD23L)), 7UL, 0x773BL, (*l_162), 0x2B11L, 1UL)).s7, p_1055->g_23.f2.f8)) < 1L);
            }
            else
            { /* block id: 70 */
                int32_t **l_223 = (void*)0;
                int32_t **l_224 = &l_162;
                int32_t *l_240 = (void*)0;
                int32_t *l_241 = &p_1055->g_237.f5;
                (*l_224) = &p_1055->g_49;
                (*p_1055->g_242) = func_81(&p_1055->g_23, (safe_mod_func_uint8_t_u_u((((*l_241) = (p_31 , ((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 2))(l_227.sa2)).xxxy, ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(5L, 0x043FA161L)), 0x038D1F01L, 0x4A4B0801L)).yyyzzxzx, ((VECTOR(int32_t, 8))(((((l_227.s6 >= p_31) && l_227.sb) >= ((p_31 | ((((+(safe_sub_func_uint16_t_u_u(((safe_mod_func_int8_t_s_s(((safe_add_func_int8_t_s_s((safe_sub_func_int64_t_s_s(p_1055->g_23.f2.f3, (((+((((l_236 != l_238) < p_1055->g_135.z) || 1UL) , p_31)) , p_31) | (*l_162)))), p_31)) != 0L), 0x9DL)) | p_1055->g_135.y), 0x7796L))) | p_31) > 0x7A3A65D1L) & 0x6941L)) != l_200)) , 1L), l_227.s0, p_1055->g_239[3].f1, p_31, ((VECTOR(int32_t, 4))(0x01290865L))))))).even))).lo | ((VECTOR(int32_t, 2))(1L))))).xyyy, (int32_t)p_1055->g_135.w, (int32_t)p_1055->g_239[3].f1))).y)) , p_1055->g_239[3].f9), 0x06L)), p_1055->g_237.f9, &p_1055->g_69, (*l_162), p_1055);
                for (p_1055->g_195.f4 = 0; (p_1055->g_195.f4 > 32); p_1055->g_195.f4 = safe_add_func_uint8_t_u_u(p_1055->g_195.f4, 4))
                { /* block id: 76 */
                    (*l_224) = l_67;
                }
            }
        }
        (*l_236) = (*l_236);
        (*p_1055->g_246) = &l_236;
    }
    else
    { /* block id: 83 */
        int16_t l_254 = 1L;
        int32_t l_257 = (-1L);
        struct S0 ***l_258 = &p_1055->g_247;
        VECTOR(uint32_t, 16) l_270 = (VECTOR(uint32_t, 16))(4294967291UL, (VECTOR(uint32_t, 4))(4294967291UL, (VECTOR(uint32_t, 2))(4294967291UL, 0UL), 0UL), 0UL, 4294967291UL, 0UL, (VECTOR(uint32_t, 2))(4294967291UL, 0UL), (VECTOR(uint32_t, 2))(4294967291UL, 0UL), 4294967291UL, 0UL, 4294967291UL, 0UL);
        uint32_t l_274[8][5][3] = {{{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL}},{{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL}},{{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL}},{{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL}},{{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL}},{{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL}},{{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL}},{{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL},{0x214E21D8L,0UL,3UL}}};
        int32_t l_284 = 1L;
        uint32_t l_290[3];
        VECTOR(uint64_t, 4) l_317 = (VECTOR(uint64_t, 4))(0xB384DC00473BA1ABL, (VECTOR(uint64_t, 2))(0xB384DC00473BA1ABL, 18446744073709551612UL), 18446744073709551612UL);
        uint64_t l_324 = 0xF6A262D9FF996547L;
        VECTOR(uint8_t, 16) l_341 = (VECTOR(uint8_t, 16))(250UL, (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 253UL), 253UL), 253UL, 250UL, 253UL, (VECTOR(uint8_t, 2))(250UL, 253UL), (VECTOR(uint8_t, 2))(250UL, 253UL), 250UL, 253UL, 250UL, 253UL);
        struct S1 **l_375 = &l_39;
        uint16_t l_381 = 0UL;
        int32_t l_394[5][5] = {{0x04A2F904L,0x603AAAD1L,0x04A2F904L,0x04A2F904L,0x603AAAD1L},{0x04A2F904L,0x603AAAD1L,0x04A2F904L,0x04A2F904L,0x603AAAD1L},{0x04A2F904L,0x603AAAD1L,0x04A2F904L,0x04A2F904L,0x603AAAD1L},{0x04A2F904L,0x603AAAD1L,0x04A2F904L,0x04A2F904L,0x603AAAD1L},{0x04A2F904L,0x603AAAD1L,0x04A2F904L,0x04A2F904L,0x603AAAD1L}};
        VECTOR(int64_t, 4) l_436 = (VECTOR(int64_t, 4))(0x55A5AB7C252FAF2EL, (VECTOR(int64_t, 2))(0x55A5AB7C252FAF2EL, (-9L)), (-9L));
        uint32_t l_476[3];
        int32_t *l_481 = (void*)0;
        VECTOR(uint16_t, 2) l_512 = (VECTOR(uint16_t, 2))(0x5365L, 65535UL);
        int32_t l_544 = 8L;
        VECTOR(uint32_t, 16) l_562 = (VECTOR(uint32_t, 16))(4294967287UL, (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 0x6C62A748L), 0x6C62A748L), 0x6C62A748L, 4294967287UL, 0x6C62A748L, (VECTOR(uint32_t, 2))(4294967287UL, 0x6C62A748L), (VECTOR(uint32_t, 2))(4294967287UL, 0x6C62A748L), 4294967287UL, 0x6C62A748L, 4294967287UL, 0x6C62A748L);
        VECTOR(int16_t, 8) l_621 = (VECTOR(int16_t, 8))((-4L), (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), (-1L)), (-1L)), (-1L), (-4L), (-1L));
        VECTOR(int16_t, 16) l_623 = (VECTOR(int16_t, 16))(0x7950L, (VECTOR(int16_t, 4))(0x7950L, (VECTOR(int16_t, 2))(0x7950L, (-7L)), (-7L)), (-7L), 0x7950L, (-7L), (VECTOR(int16_t, 2))(0x7950L, (-7L)), (VECTOR(int16_t, 2))(0x7950L, (-7L)), 0x7950L, (-7L), 0x7950L, (-7L));
        int8_t l_640 = (-6L);
        VECTOR(int32_t, 2) l_664 = (VECTOR(int32_t, 2))(0x01E392FDL, (-1L));
        VECTOR(uint32_t, 8) l_667 = (VECTOR(uint32_t, 8))(0xC4774574L, (VECTOR(uint32_t, 4))(0xC4774574L, (VECTOR(uint32_t, 2))(0xC4774574L, 4294967295UL), 4294967295UL), 4294967295UL, 0xC4774574L, 4294967295UL);
        VECTOR(int8_t, 16) l_725 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x58L), 0x58L), 0x58L, 0L, 0x58L, (VECTOR(int8_t, 2))(0L, 0x58L), (VECTOR(int8_t, 2))(0L, 0x58L), 0L, 0x58L, 0L, 0x58L);
        uint8_t l_737[2];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_290[i] = 0xB9F2D00BL;
        for (i = 0; i < 3; i++)
            l_476[i] = 0xA833773AL;
        for (i = 0; i < 2; i++)
            l_737[i] = 0x72L;
lbl_406:
        for (p_1055->g_237.f9 = 0; (p_1055->g_237.f9 <= 14); p_1055->g_237.f9++)
        { /* block id: 86 */
            int64_t l_253 = 9L;
            int32_t *l_256 = &p_1055->g_49;
            int32_t **l_255 = &l_256;
            l_257 = (safe_sub_func_uint64_t_u_u((*l_162), ((l_253 || (l_254 != (((**p_1055->g_242) , 0x099D93CAL) < (((((((((*l_255) = &p_1055->g_49) == &p_1055->g_49) >= (0x67L >= l_254)) , 4294967293UL) >= (-1L)) , p_31) , 6L) , l_254)))) <= (*l_162))));
        }
        if ((((l_258 != &p_1055->g_247) , ((*l_162) <= ((p_1055->g_259 = &p_1055->g_247) != (void*)0))) >= (safe_lshift_func_int8_t_s_s(0x0AL, 5))))
        { /* block id: 91 */
            int32_t **l_267 = &l_162;
            int32_t ***l_266 = &l_267;
            VECTOR(int8_t, 16) l_273 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int8_t, 2))((-1L), 0L), (VECTOR(int8_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
            int8_t *l_275 = (void*)0;
            int8_t *l_276 = (void*)0;
            int8_t *l_277 = (void*)0;
            int8_t *l_278 = (void*)0;
            int8_t *l_279 = (void*)0;
            int8_t *l_280 = (void*)0;
            int8_t *l_281 = (void*)0;
            int8_t *l_282 = (void*)0;
            int8_t *l_283[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t *l_285 = &p_1055->g_23.f2.f1;
            VECTOR(int16_t, 4) l_288 = (VECTOR(int16_t, 4))(0x61B6L, (VECTOR(int16_t, 2))(0x61B6L, 0x71E5L), 0x71E5L);
            VECTOR(int8_t, 16) l_300 = (VECTOR(int8_t, 16))(0x05L, (VECTOR(int8_t, 4))(0x05L, (VECTOR(int8_t, 2))(0x05L, 0x66L), 0x66L), 0x66L, 0x05L, 0x66L, (VECTOR(int8_t, 2))(0x05L, 0x66L), (VECTOR(int8_t, 2))(0x05L, 0x66L), 0x05L, 0x66L, 0x05L, 0x66L);
            VECTOR(uint64_t, 4) l_315 = (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 0x05F723D67A6BB688L), 0x05F723D67A6BB688L);
            int32_t l_332[2][6][4] = {{{0x3BFEEABCL,(-10L),0L,0L},{0x3BFEEABCL,(-10L),0L,0L},{0x3BFEEABCL,(-10L),0L,0L},{0x3BFEEABCL,(-10L),0L,0L},{0x3BFEEABCL,(-10L),0L,0L},{0x3BFEEABCL,(-10L),0L,0L}},{{0x3BFEEABCL,(-10L),0L,0L},{0x3BFEEABCL,(-10L),0L,0L},{0x3BFEEABCL,(-10L),0L,0L},{0x3BFEEABCL,(-10L),0L,0L},{0x3BFEEABCL,(-10L),0L,0L},{0x3BFEEABCL,(-10L),0L,0L}}};
            uint32_t l_350 = 0xCC1EB9CAL;
            VECTOR(int32_t, 2) l_351 = (VECTOR(int32_t, 2))((-1L), 4L);
            struct S1 **l_376 = &l_39;
            uint16_t l_455 = 0x04A5L;
            int i, j, k;
            if ((((p_31 , ((VECTOR(int16_t, 2))(0x49E0L, 0x07D8L)).hi) < (!(GROUP_DIVERGE(1, 1) <= 0L))) ^ (p_1055->g_237.f3 != (((*l_285) ^= ((safe_div_func_uint64_t_u_u((l_257 ^= p_31), (safe_sub_func_uint16_t_u_u(((((*l_266) = (void*)0) != ((((VECTOR(uint32_t, 4))(4294967295UL, ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))(l_270.sff65f103)).s11 - ((VECTOR(uint32_t, 4))(4294967292UL, 4294967289UL, 1UL, 0xDFCA0B9FL)).even))), 0x9D5A18F3L)).w | p_31) , &l_162)) != (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(l_273.sd8554b9ebd0323b8)).scb == ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(l_273.sd, (l_284 |= l_274[4][3][1]), (-1L), 0x2CL, ((VECTOR(int8_t, 2))(6L)), 0x31L, 0x45L)).s6370006467727367 && ((VECTOR(int8_t, 16))(0x1DL))))).s5573 & ((VECTOR(int8_t, 4))((-6L)))))).odd))).even, 255UL))), (*l_162))))) == p_31)) , 0xF73EE0B1L))))
            { /* block id: 96 */
                VECTOR(int16_t, 8) l_289 = (VECTOR(int16_t, 8))(0x097AL, (VECTOR(int16_t, 4))(0x097AL, (VECTOR(int16_t, 2))(0x097AL, (-1L)), (-1L)), (-1L), 0x097AL, (-1L));
                int16_t *l_291 = &p_1055->g_10;
                VECTOR(int16_t, 16) l_310 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x25CAL), 0x25CAL), 0x25CAL, 1L, 0x25CAL, (VECTOR(int16_t, 2))(1L, 0x25CAL), (VECTOR(int16_t, 2))(1L, 0x25CAL), 1L, 0x25CAL, 1L, 0x25CAL);
                struct S1 **l_325 = (void*)0;
                int16_t *l_326 = (void*)0;
                int16_t *l_327[3];
                VECTOR(uint8_t, 8) l_343 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x8FL), 0x8FL), 0x8FL, 1UL, 0x8FL);
                VECTOR(int32_t, 4) l_352 = (VECTOR(int32_t, 4))(0x4CB2E0C9L, (VECTOR(int32_t, 2))(0x4CB2E0C9L, 0x7213D790L), 0x7213D790L);
                int i;
                for (i = 0; i < 3; i++)
                    l_327[i] = &p_1055->g_23.f2.f6;
                if (((((*l_291) = (safe_mul_func_uint16_t_u_u(65527UL, ((((p_31 | ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(l_288.zyyw)) && ((VECTOR(int16_t, 8))(l_289.s60303602)).even))).w) , (void*)0) == ((*l_258) = (*p_1055->g_259))) , l_290[0])))) >= ((safe_add_func_int16_t_s_s((p_1055->g_142 = ((safe_rshift_func_uint16_t_u_s(((!(safe_lshift_func_uint8_t_u_u((((((((((*l_285) ^= (safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 16))(l_300.s78d4e72f83b0de0d)).sc, ((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(0x4B5F1D5E67ACE2E2L, 18446744073709551615UL, (safe_sub_func_int16_t_s_s((safe_rshift_func_int8_t_s_s((((VECTOR(int32_t, 4))(l_307.s3265)).y < p_1055->g_23.f0), 0)), (safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),VECTOR(int16_t, 2),((VECTOR(int16_t, 2))(l_310.sbf)), ((VECTOR(int16_t, 8))(p_1055->g_311.s6975232a)).s75, ((VECTOR(int16_t, 8))(p_1055->g_312.wwxyyzwx)).s20))).hi, 0)))), 0xBD1C85215F769B93L, 0x81FD754C5A717AF1L, 18446744073709551608UL, ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))(l_315.wxwyxwwyzyyzyzwz)).se318 + ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(l_316.s1bc0d388691c0b45)) | ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(l_317.ywzx)), ((VECTOR(uint64_t, 8))((safe_add_func_uint8_t_u_u(l_284, (*l_162))), 0x49EBBCC51002C15DL, ((VECTOR(uint64_t, 4))(mul_hi(((VECTOR(uint64_t, 2))(p_1055->g_320.yy)).xxyx, ((VECTOR(uint64_t, 16))(min(((VECTOR(uint64_t, 2))(p_1055->g_321.sde)).xyxyyyyyyxyyyyxx, (uint64_t)(safe_mod_func_uint64_t_u_u((0x0BC2A5C8606CE886L && p_31), l_324))))).s8d47))), 5UL, 0xCBE35A6D86730176L)).s5, p_1055->g_311.s5, 7UL, 0x28D94D37AFEA8888L)).s0571317606743151))).s79d2))), ((VECTOR(uint64_t, 2))(18446744073709551615UL)), 8UL, ((VECTOR(uint64_t, 2))(0x865FC6D5E83C0ED9L)), 0x27C4B87A6C449CC0L)).s3, l_289.s4)) & 0x2E2015F3L)))) , l_67) != (void*)0) | p_1055->g_45.y) != p_1055->g_66.x) , &p_1055->g_243) == l_325) & 0x3C6DL), 0))) >= 0xAA74L), 5)) >= 0x3600E5B1L)), 0x43F0L)) >= p_31)) & p_31))
                { /* block id: 101 */
                    uint16_t l_333 = 0x3B89L;
                    VECTOR(int32_t, 8) l_355 = (VECTOR(int32_t, 8))(0x45F4BEFFL, (VECTOR(int32_t, 4))(0x45F4BEFFL, (VECTOR(int32_t, 2))(0x45F4BEFFL, 0x1F9C2642L), 0x1F9C2642L), 0x1F9C2642L, 0x45F4BEFFL, 0x1F9C2642L);
                    uint8_t *l_362 = &p_1055->g_239[3].f0;
                    uint16_t *l_377 = &p_1055->g_239[3].f4;
                    int64_t *l_378 = &p_1055->g_379;
                    uint16_t l_401 = 65534UL;
                    int i;
                    for (p_1055->g_195.f7 = 0; (p_1055->g_195.f7 == (-7)); p_1055->g_195.f7--)
                    { /* block id: 104 */
                        int32_t *l_330 = (void*)0;
                        int32_t *l_331[6];
                        int i;
                        for (i = 0; i < 6; i++)
                            l_331[i] = &l_257;
                        l_333++;
                        if (p_1055->g_321.s2)
                            break;
                    }
                    if ((safe_lshift_func_int16_t_s_u((((*l_291) = p_1055->g_23.f2.f6) > ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(0x3194L, ((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 16))(l_338.s0145157267462214)).hi, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(safe_clamp_func(VECTOR(uint8_t, 16),VECTOR(uint8_t, 16),((VECTOR(uint8_t, 4))(l_341.sc5b8)).yxzyzwxzzwwzywxz, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 8))(p_1055->g_342.yxxyyyyx)).lo, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0UL, 0x21L)), 0x82L, 0xD2L)), ((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),uint8_t,((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),VECTOR(uint8_t, 8),((VECTOR(uint8_t, 16))(l_343.s7661232424373042)).hi, ((VECTOR(uint8_t, 8))(p_1055->g_344.s22450212)), ((VECTOR(uint8_t, 2))(p_1055->g_345.sb4)).xyyyyxxy))).s54, ((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(abs(((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 16))(((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 8))(mad_sat(((VECTOR(uint64_t, 16))(0x9D97DA5877DACC50L, (((l_350 <= (((-1L) ^ ((VECTOR(int32_t, 2))(l_351.yx)).lo) , p_1055->g_23.f2.f3)) , ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))(l_352.ww)).xyyy, ((VECTOR(int32_t, 2))(0x482821DBL, 0x22B6AAF1L)).xxxx))).zzzyyxxxzwzzwxxy && ((VECTOR(int32_t, 16))(p_1055->g_353.s3345056451424654))))).s9a20, ((VECTOR(int32_t, 16))(0x747CA086L, 4L, 0x39382799L, ((VECTOR(int32_t, 8))(p_1055->g_354.s14070573)).s6, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(l_355.s30040266)).odd < ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(p_1055->g_356.s30220600)).s37 < ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(p_1055->g_357.xy)).xxyxyxyy < ((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(0L, 0x3603A97DL)).xyxx != ((VECTOR(int32_t, 16))((-1L), (safe_sub_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((((*l_362) = 4UL) ^ ((safe_sub_func_uint32_t_u_u((0xB1L == (((safe_mod_func_uint32_t_u_u((l_352.z = ((*l_68)++)), (safe_mul_func_int8_t_s_s((safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 16))(4294967295UL, 9UL, ((safe_lshift_func_int16_t_s_u((l_310.se > (((*l_378) |= (((*l_377) = (((((l_375 == l_376) <= p_1055->g_312.z) & p_1055->g_170) && p_31) || l_254)) , p_1055->g_23.f2.f2)) & 0L)), 11)) >= 0x044FL), 4294967295UL, 7UL, ((VECTOR(uint32_t, 2))(4294967287UL)), ((VECTOR(uint32_t, 4))(1UL)), 4294967295UL, 0x6DF1DFA2L, l_317.x, 4294967295UL, 1UL)).sec27, ((VECTOR(uint32_t, 4))(4294967292UL)), ((VECTOR(uint32_t, 4))(0xC235667DL))))).y, p_1055->g_143)), p_31)))) ^ p_31) ^ p_1055->g_66.x)), (*l_162))) || l_380[2])), 11)), 0x7CE3L)), ((VECTOR(int32_t, 8))(0x7FCAB2DAL)), 0L, p_1055->g_97.s5, ((VECTOR(int32_t, 2))(0x38853C91L)), (-1L), (-5L))).sd32b))).xyzwwwzxwxywyzxy, ((VECTOR(int32_t, 16))((-6L))), ((VECTOR(int32_t, 16))(1L))))).lo))).lo == ((VECTOR(int32_t, 4))(0x6E97A19AL))))).xyxxwxzx, ((VECTOR(int32_t, 8))((-6L)))))).s46))).yxyx))).wxzzxwzywxxxyzyx, ((VECTOR(int32_t, 16))(7L))))).hi, ((VECTOR(int32_t, 8))(0x7CCD2810L))))) == ((VECTOR(int32_t, 8))(0x60EC474BL))))), ((VECTOR(int32_t, 4))(2L)))).s7cfe))).yxyzzyyzxyyzyxyz && ((VECTOR(int32_t, 16))(0x5D136CB3L))))).sd) <= l_381), ((VECTOR(uint64_t, 8))(0x05C796044DC67079L)), ((VECTOR(uint64_t, 4))(1UL)), 18446744073709551609UL, 0UL)).hi, ((VECTOR(uint64_t, 8))(0x62DC38CFB7E95BB0L)), ((VECTOR(uint64_t, 8))(3UL))))) & ((VECTOR(uint64_t, 8))(0x70C22F5F7F1DFFA5L))))).s5, 0x424F940AD292A590L)) > p_1055->g_312.w), ((VECTOR(int8_t, 8))((-1L))), (-1L), (*l_162), ((VECTOR(int8_t, 4))((-1L))), 0x21L)), ((VECTOR(int8_t, 16))((-1L)))))).sf2))).xxxxxxxx * ((VECTOR(uint8_t, 8))(0UL))))), ((VECTOR(uint8_t, 8))(0x89L))))).s25))).xxyy, (uint8_t)l_352.z, (uint8_t)l_352.w)))))), 0UL, 255UL, 0x20L, 0xA0L)).s55, ((VECTOR(uint8_t, 2))(251UL))))), 0x7AL, 0UL, ((VECTOR(uint8_t, 8))(6UL)), ((VECTOR(uint8_t, 2))(0x9DL)), 0x48L, 1UL)), ((VECTOR(uint8_t, 16))(247UL))))).s79 + ((VECTOR(uint8_t, 2))(0xEAL))))).yxxyxxyy))), 0x2EA2L, ((VECTOR(int16_t, 2))(0L)), ((VECTOR(int16_t, 4))(0x07E6L)))).even | ((VECTOR(int16_t, 8))(0L))))).s5), p_1055->g_143)))
                    { /* block id: 114 */
                        int32_t *l_382 = &l_257;
                        int32_t *l_383 = &l_332[1][5][1];
                        int32_t *l_384 = (void*)0;
                        int32_t *l_385 = (void*)0;
                        int32_t *l_386 = (void*)0;
                        int32_t *l_387 = &l_332[0][0][1];
                        int32_t *l_388 = (void*)0;
                        int32_t *l_389 = (void*)0;
                        int32_t *l_390 = &p_1055->g_49;
                        int32_t *l_391 = (void*)0;
                        int32_t *l_392 = (void*)0;
                        int32_t *l_393[7];
                        int32_t l_395 = 0L;
                        uint8_t l_396 = 0x02L;
                        int i;
                        for (i = 0; i < 7; i++)
                            l_393[i] = (void*)0;
                        (*l_162) |= (~p_31);
                        if (p_1055->g_23.f2.f9)
                            goto lbl_399;
lbl_399:
                        ++l_396;
                        return (*p_1055->g_242);
                    }
                    else
                    { /* block id: 119 */
                        int32_t *l_400[4];
                        int i;
                        for (i = 0; i < 4; i++)
                            l_400[i] = (void*)0;
                        --l_401;
                    }
                }
                else
                { /* block id: 122 */
                    VECTOR(int64_t, 4) l_437 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x7F5A6BA5B4D4C8AEL), 0x7F5A6BA5B4D4C8AEL);
                    int i;
                    for (l_350 = 18; (l_350 < 46); l_350 = safe_add_func_uint8_t_u_u(l_350, 2))
                    { /* block id: 125 */
                        uint32_t l_424 = 0xA03B033EL;
                        uint64_t *l_446 = &l_324;
                        uint64_t *l_447 = (void*)0;
                        uint64_t *l_448 = (void*)0;
                        uint64_t *l_449[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_449[i] = (void*)0;
                        (*l_162) |= p_31;
                        if (p_1055->g_69)
                            goto lbl_406;
                        l_307.s6 |= (safe_div_func_uint64_t_u_u(((safe_mod_func_uint8_t_u_u(((l_163 != ((safe_add_func_uint16_t_u_u((((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 4))(l_415.xxxx)).w, (safe_mul_func_int8_t_s_s((-9L), (l_341.s0 || (((safe_mod_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s((((safe_sub_func_uint32_t_u_u((l_424 || ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))((safe_mod_func_uint32_t_u_u(((safe_div_func_int32_t_s_s((safe_sub_func_uint64_t_u_u((safe_mul_func_int8_t_s_s(((((l_424 , ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 8))(p_1055->g_435.s41626513)).even, ((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 2))(l_436.wx)).xyxxyxxy, ((VECTOR(int64_t, 2))(1L, (-5L))).xyxxxyxx))).even))).zzzzwwwy <= ((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))((~((VECTOR(int64_t, 16))(l_437.ywzxwzyxywxxwxzz)).s7e))).odd, (safe_rshift_func_int16_t_s_s((((*l_446) ^= ((safe_unary_minus_func_int16_t_s((safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))(p_1055->g_445.yxxyxyyx)).lo + ((VECTOR(uint16_t, 2))(1UL, 0xF333L)).xyxx))).z, 1)))) == l_343.s2)) > (0x69E367745811EB96L != (l_352.y &= (l_424 <= p_1055->g_321.sf)))), 13)), 0x0E61F080417E1F4CL, 0x75FD0C0591D28F1CL)).odd, ((VECTOR(int64_t, 2))(0x157E1A3034DEAB7AL))))).xxxyxyxx))).hi >= ((VECTOR(int64_t, 4))((-2L)))))).xywxzxxwywxzxxxw && ((VECTOR(int64_t, 16))(1L))))).s1) | 0x227FEE967F102A46L) > p_31) >= p_1055->g_237.f8), (-10L))), p_1055->g_195.f5)), p_31)) || FAKE_DIVERGE(p_1055->global_2_offset, get_global_id(2), 10)), l_424)), ((VECTOR(uint8_t, 4))(0xEAL)), 255UL, 0x82L, 0UL)).s3361760021222644 + ((VECTOR(uint8_t, 16))(0x26L))))).s7), 7UL)) , (*p_1055->g_243)) , p_1055->g_78.f2.f8), p_31)) != p_31), 0xD2L)) == (*l_162)) || (*l_162))))))) ^ 0L) || p_1055->g_237.f5), 65532UL)) , (void*)0)) != FAKE_DIVERGE(p_1055->group_0_offset, get_group_id(0), 10)), l_437.y)) & p_1055->g_23.f2.f0), l_274[7][2][0]));
                    }
                }
            }
            else
            { /* block id: 133 */
                struct S0 ***l_452 = &p_1055->g_247;
                for (l_257 = 0; (l_257 <= (-18)); l_257--)
                { /* block id: 136 */
                    int32_t *l_453 = (void*)0;
                    int32_t *l_454[7][5][6] = {{{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0}},{{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0}},{{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0}},{{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0}},{{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0}},{{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0}},{{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0},{(void*)0,&l_284,&l_257,&l_284,(void*)0,(void*)0}}};
                    int i, j, k;
                    (*l_162) = ((void*)0 == l_452);
                    if (p_1055->g_78.f2.f3)
                        continue;
                    --l_455;
                }
            }
            for (p_1055->g_237.f7 = 13; (p_1055->g_237.f7 >= (-28)); p_1055->g_237.f7--)
            { /* block id: 144 */
                int32_t l_460 = 5L;
                l_257 |= l_460;
                for (p_1055->g_195.f6 = 15; (p_1055->g_195.f6 > (-1)); p_1055->g_195.f6 = safe_sub_func_int32_t_s_s(p_1055->g_195.f6, 1))
                { /* block id: 148 */
                    (*l_162) |= p_1055->g_345.s5;
                    (*l_162) |= 4L;
                    (*p_1055->g_464) = p_1055->g_463;
                }
                (*p_1055->g_465) = &p_1055->g_49;
                for (p_31 = 14; (p_31 > (-6)); p_31--)
                { /* block id: 156 */
                    p_1055->g_469 = (**p_1055->g_242);
                }
            }
        }
        else
        { /* block id: 160 */
            int32_t *l_473 = &l_394[0][0];
            int32_t *l_474 = (void*)0;
            int32_t *l_475[10] = {&p_1055->g_49,&l_394[0][0],(void*)0,&l_394[0][0],&p_1055->g_49,&p_1055->g_49,&l_394[0][0],(void*)0,&l_394[0][0],&p_1055->g_49};
            int i;
lbl_471:
            (*p_1055->g_470) = (**p_1055->g_242);
            if (((*l_162) ^= p_31))
            { /* block id: 163 */
                if (l_284)
                    goto lbl_471;
            }
            else
            { /* block id: 165 */
                struct S1 *l_472[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_472[i] = &p_1055->g_23;
                (*l_162) = p_1055->g_23.f2.f5;
                return l_472[0];
            }
            l_476[1]++;
            return (*p_1055->g_242);
        }
        if (p_31)
        { /* block id: 172 */
            uint32_t l_479 = 4294967289UL;
            VECTOR(int32_t, 8) l_482 = (VECTOR(int32_t, 8))(0x7B0EB3A3L, (VECTOR(int32_t, 4))(0x7B0EB3A3L, (VECTOR(int32_t, 2))(0x7B0EB3A3L, (-1L)), (-1L)), (-1L), 0x7B0EB3A3L, (-1L));
            VECTOR(int32_t, 4) l_484 = (VECTOR(int32_t, 4))(0x5AD2E04DL, (VECTOR(int32_t, 2))(0x5AD2E04DL, 0x59B290ACL), 0x59B290ACL);
            struct S1 *l_485 = &p_1055->g_469;
            VECTOR(uint16_t, 16) l_504 = (VECTOR(uint16_t, 16))(0x92BFL, (VECTOR(uint16_t, 4))(0x92BFL, (VECTOR(uint16_t, 2))(0x92BFL, 0UL), 0UL), 0UL, 0x92BFL, 0UL, (VECTOR(uint16_t, 2))(0x92BFL, 0UL), (VECTOR(uint16_t, 2))(0x92BFL, 0UL), 0x92BFL, 0UL, 0x92BFL, 0UL);
            VECTOR(uint64_t, 4) l_540 = (VECTOR(uint64_t, 4))(9UL, (VECTOR(uint64_t, 2))(9UL, 1UL), 1UL);
            uint32_t l_545 = 1UL;
            VECTOR(int32_t, 4) l_584 = (VECTOR(int32_t, 4))(0x5F7E6944L, (VECTOR(int32_t, 2))(0x5F7E6944L, 7L), 7L);
            VECTOR(uint8_t, 16) l_608 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 253UL), 253UL), 253UL, 0UL, 253UL, (VECTOR(uint8_t, 2))(0UL, 253UL), (VECTOR(uint8_t, 2))(0UL, 253UL), 0UL, 253UL, 0UL, 253UL);
            VECTOR(int16_t, 2) l_622 = (VECTOR(int16_t, 2))(5L, (-8L));
            int8_t l_649[5][4][5] = {{{0x14L,(-1L),0x6DL,0x1CL,6L},{0x14L,(-1L),0x6DL,0x1CL,6L},{0x14L,(-1L),0x6DL,0x1CL,6L},{0x14L,(-1L),0x6DL,0x1CL,6L}},{{0x14L,(-1L),0x6DL,0x1CL,6L},{0x14L,(-1L),0x6DL,0x1CL,6L},{0x14L,(-1L),0x6DL,0x1CL,6L},{0x14L,(-1L),0x6DL,0x1CL,6L}},{{0x14L,(-1L),0x6DL,0x1CL,6L},{0x14L,(-1L),0x6DL,0x1CL,6L},{0x14L,(-1L),0x6DL,0x1CL,6L},{0x14L,(-1L),0x6DL,0x1CL,6L}},{{0x14L,(-1L),0x6DL,0x1CL,6L},{0x14L,(-1L),0x6DL,0x1CL,6L},{0x14L,(-1L),0x6DL,0x1CL,6L},{0x14L,(-1L),0x6DL,0x1CL,6L}},{{0x14L,(-1L),0x6DL,0x1CL,6L},{0x14L,(-1L),0x6DL,0x1CL,6L},{0x14L,(-1L),0x6DL,0x1CL,6L},{0x14L,(-1L),0x6DL,0x1CL,6L}}};
            VECTOR(uint32_t, 16) l_657 = (VECTOR(uint32_t, 16))(0x94034ABDL, (VECTOR(uint32_t, 4))(0x94034ABDL, (VECTOR(uint32_t, 2))(0x94034ABDL, 0x09C5BB5EL), 0x09C5BB5EL), 0x09C5BB5EL, 0x94034ABDL, 0x09C5BB5EL, (VECTOR(uint32_t, 2))(0x94034ABDL, 0x09C5BB5EL), (VECTOR(uint32_t, 2))(0x94034ABDL, 0x09C5BB5EL), 0x94034ABDL, 0x09C5BB5EL, 0x94034ABDL, 0x09C5BB5EL);
            int32_t *l_699 = (void*)0;
            uint8_t *l_709[8][2][6] = {{{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0},{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0}},{{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0},{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0}},{{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0},{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0}},{{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0},{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0}},{{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0},{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0}},{{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0},{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0}},{{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0},{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0}},{{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0},{&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,(void*)0,&p_1055->g_650[5].f2.f0,&p_1055->g_650[5].f2.f0}}};
            uint64_t **l_720 = (void*)0;
            uint64_t **l_721 = &p_1055->g_719;
            uint32_t l_738[10][4];
            int8_t *l_739 = &l_640;
            int8_t *l_740 = (void*)0;
            int8_t *l_741 = &l_649[3][1][3];
            uint16_t l_742 = 0xB667L;
            int32_t *l_743 = &l_257;
            int i, j, k;
            for (i = 0; i < 10; i++)
            {
                for (j = 0; j < 4; j++)
                    l_738[i][j] = 4294967286UL;
            }
            if (l_479)
            { /* block id: 173 */
                int32_t l_487 = 1L;
                int32_t l_488 = (-1L);
                int32_t l_489 = (-1L);
                VECTOR(uint16_t, 2) l_509 = (VECTOR(uint16_t, 2))(0x77BEL, 0xBC42L);
                uint16_t l_513 = 0x114AL;
                VECTOR(uint32_t, 8) l_561 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 4294967295UL), 4294967295UL, 0UL, 4294967295UL);
                VECTOR(uint32_t, 8) l_564 = (VECTOR(uint32_t, 8))(3UL, (VECTOR(uint32_t, 4))(3UL, (VECTOR(uint32_t, 2))(3UL, 4294967295UL), 4294967295UL), 4294967295UL, 3UL, 4294967295UL);
                VECTOR(uint8_t, 8) l_607 = (VECTOR(uint8_t, 8))(0xC8L, (VECTOR(uint8_t, 4))(0xC8L, (VECTOR(uint8_t, 2))(0xC8L, 0xFFL), 0xFFL), 0xFFL, 0xC8L, 0xFFL);
                int32_t *l_683 = &p_1055->g_557[0][5].f2.f8;
                int16_t *l_685 = &p_1055->g_557[0][5].f2.f6;
                int32_t *l_686 = &l_257;
                int32_t *l_687 = (void*)0;
                int32_t *l_688 = (void*)0;
                int32_t *l_689 = (void*)0;
                int32_t *l_690 = &l_257;
                int32_t *l_691 = (void*)0;
                int32_t *l_692 = (void*)0;
                int32_t *l_693 = &l_394[0][0];
                int32_t *l_694[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_694[i] = &l_394[0][0];
lbl_698:
                if (l_479)
                { /* block id: 174 */
                    int32_t *l_480 = (void*)0;
                    VECTOR(int32_t, 16) l_483 = (VECTOR(int32_t, 16))(0x5D956D99L, (VECTOR(int32_t, 4))(0x5D956D99L, (VECTOR(int32_t, 2))(0x5D956D99L, 0x783A70A9L), 0x783A70A9L), 0x783A70A9L, 0x5D956D99L, 0x783A70A9L, (VECTOR(int32_t, 2))(0x5D956D99L, 0x783A70A9L), (VECTOR(int32_t, 2))(0x5D956D99L, 0x783A70A9L), 0x5D956D99L, 0x783A70A9L, 0x5D956D99L, 0x783A70A9L);
                    uint32_t l_490 = 0xC2619D7EL;
                    uint64_t *l_543 = &l_324;
                    int i;
                    l_481 = l_480;
                    if (p_1055->g_23.f2.f2)
                        goto lbl_495;
                    if (((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(l_482.s5253)).xzwywxwzxwwyxwwy, ((VECTOR(int32_t, 8))(l_483.s99f68491)).s7026306044455330, ((VECTOR(int32_t, 16))(l_484.wyzwwyxyxyzwzxxz))))).hi, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x1DB6A04DL, 0x6F17E9F1L)), 1L, 0x69B95973L)).xwwwywxx))).s6)
                    { /* block id: 176 */
                        return l_485;
                    }
                    else
                    { /* block id: 178 */
                        int32_t *l_486[8][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
                        int i, j;
                        if (p_1055->g_23.f2.f0)
                            goto lbl_406;
                        l_490++;
                    }
lbl_495:
                    (*l_162) ^= (safe_add_func_uint32_t_u_u(p_1055->g_192.s2, 0x44698256L));
                    if (((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 4))((-1L), 0x3BDEL, 0x33F2L, 1L)).yzzxxxxwzwyxwzxx, ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(0UL, 7UL, 1UL, 3UL)), 0xCC84L, ((VECTOR(uint16_t, 2))(p_1055->g_500.yx)), 0x1143L)) << ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 4))(abs(((VECTOR(int16_t, 4))(p_1055->g_503.s3117))))).lo))).xyyy, ((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),uint16_t,((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 4))(l_504.sc180)).odd, ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 8))(l_507.xyyxyyyy)).lo, ((VECTOR(uint16_t, 4))(l_508.s5325))))).zzywzxwywxxzxwww + ((VECTOR(uint16_t, 2))(l_509.xx)).yyxyxxyyxxyxyyxx))).sff))).xyyy, (uint16_t)(safe_mod_func_int32_t_s_s((((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 16))((-((VECTOR(uint16_t, 2))(0xF0B3L, 65528UL)).yyxyxyxxyyxyyxyy))).s8a, ((VECTOR(uint16_t, 2))(0x3999L, 0UL)), ((VECTOR(uint16_t, 16))(add_sat(((VECTOR(uint16_t, 2))(0xD7FCL, 9UL)).yyyyxyxxyxxyxxxx, ((VECTOR(uint16_t, 4))(l_512.xxxx)).ywywyxyyzwyzwzyx))).s74))).hi || p_1055->g_78.f2.f5), (~l_513))), (uint16_t)(safe_add_func_int8_t_s_s((safe_sub_func_uint64_t_u_u((((VECTOR(int64_t, 2))(0x232E552216F9EE87L, 0x7CE3CDB0846B8E69L)).hi < ((safe_mul_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u((p_31 > ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(254UL, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))((safe_div_func_int32_t_s_s((l_545 = (((safe_lshift_func_int8_t_s_s(0x55L, (safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(l_540.wx)).odd, ((VECTOR(uint64_t, 16))(1UL, (((*l_543) = (((safe_lshift_func_int16_t_s_u(0L, p_31)) , (p_31 , func_79((((((&p_1055->g_247 != &p_1055->g_247) | l_482.s7) , p_1055->g_159[0]) || p_31) , (*l_375)), p_1055))) == &l_274[2][0][0])) <= p_1055->g_23.f2.f0), p_31, ((VECTOR(uint64_t, 8))(0x3D3BEBC1B6CD8A11L)), 0x60AF56AEA527FAB5L, p_1055->g_379, 0xD36101D0E8FBFCECL, 18446744073709551610UL, 0x0B71D93DC31C1DB5L)).sb)))) != l_544) , p_31)), p_31)), 251UL, 0x29L, 0x86L)).wxwywzwx + ((VECTOR(uint8_t, 8))(246UL))))).hi * ((VECTOR(uint8_t, 4))(0xF9L))))), p_1055->g_159[0], 0UL, 255UL)).lo + ((VECTOR(uint8_t, 4))(3UL))))).hi + ((VECTOR(uint8_t, 2))(255UL))))).yxyyyxyxyxxyyyyx, ((VECTOR(uint8_t, 16))(0x76L))))) >> ((VECTOR(uint8_t, 16))(0x29L))))).s9), l_540.y)), (*l_162))), 0x8A39L)) , p_31)), 0L)), 0L))))).zzzxzzzwzzzyzxxx, ((VECTOR(uint16_t, 16))(2UL))))).sa520))), ((VECTOR(uint16_t, 4))(0x6631L))))).xwyyxwxzywxyywzz | ((VECTOR(uint16_t, 16))(1UL))))).hi + ((VECTOR(uint16_t, 8))(0xC5BFL)))))))) << ((VECTOR(uint16_t, 8))(16))))).s0441246156111777))).s2)
                    { /* block id: 186 */
                        int32_t **l_546 = &l_481;
                        (*l_162) = 0x3A03938CL;
                        (*l_546) = (void*)0;
                    }
                    else
                    { /* block id: 189 */
                        int32_t *l_547 = (void*)0;
                        (*p_1055->g_548) = l_547;
                    }
                }
                else
                { /* block id: 192 */
                    int16_t l_579 = 4L;
                    int32_t l_618 = 0L;
                    VECTOR(int16_t, 4) l_624 = (VECTOR(int16_t, 4))(0x4C6FL, (VECTOR(int16_t, 2))(0x4C6FL, 0x7FB4L), 0x7FB4L);
                    VECTOR(int16_t, 4) l_637 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L);
                    struct S0 *l_653 = &p_1055->g_239[3];
                    int32_t *l_670 = (void*)0;
                    int32_t **l_669 = &l_670;
                    int8_t *l_671 = &l_649[4][3][3];
                    int32_t *l_672 = (void*)0;
                    int32_t *l_673 = (void*)0;
                    int32_t *l_674 = &l_394[0][0];
                    int i;
lbl_654:
                    if (((0x5CL >= (l_488 = ((((safe_add_func_uint16_t_u_u(((safe_add_func_uint8_t_u_u(p_1055->g_23.f2.f4, (safe_add_func_uint8_t_u_u(l_479, (safe_add_func_uint16_t_u_u(((*l_162) ^ (p_1055->g_557[0][5] , (((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 8))(0x2A12A772L, ((VECTOR(uint32_t, 4))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 2))(l_560.xx)).xxyx, ((VECTOR(uint32_t, 8))(l_561.s54230147)).hi))), ((VECTOR(uint32_t, 2))(l_562.sd5)), 4294967295UL)), ((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 8))(p_1055->g_563.s56277777)).s13, ((VECTOR(uint32_t, 8))(l_564.s44653200)).s51))).xxxyyyyx))) + ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(abs(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(0x91817A09L, ((((~(-1L)) , (safe_add_func_int32_t_s_s(1L, (*l_162)))) >= l_579) , 0x6AB04D45L), ((VECTOR(uint32_t, 4))(0xB1E3D086L)), 4294967295UL, 0xF834750BL)).s7225537017667240 >> ((VECTOR(uint32_t, 16))(32))))).s69 + ((VECTOR(uint32_t, 2))(4294967287UL))))).yyyxyxxyxxyyyxyy, ((VECTOR(uint32_t, 16))(0x90AB1D9EL))))).odd - ((VECTOR(uint32_t, 8))(1UL))))).s57))).xyyxyyyx + ((VECTOR(uint32_t, 8))(0xC734645EL))))).even + ((VECTOR(uint32_t, 4))(0x4EE5CB67L))))) & ((VECTOR(uint32_t, 4))(0UL))))) | ((VECTOR(uint32_t, 4))(0xD4582B7FL))))).hi, ((VECTOR(uint32_t, 2))(4UL))))) + ((VECTOR(uint32_t, 2))(0x7FA61678L))))).xxxyxxyy))).s4 | l_579) , p_31) , l_579))), (-1L))))))) , p_1055->g_78.f2.f1), 1L)) ^ (*l_162)) < (-6L)) > 1UL))) & p_1055->g_557[0][5].f2.f0))
                    { /* block id: 194 */
                        int64_t *l_615[9] = {&p_1055->g_25,&p_1055->g_25,&p_1055->g_25,&p_1055->g_25,&p_1055->g_25,&p_1055->g_25,&p_1055->g_25,&p_1055->g_25,&p_1055->g_25};
                        int32_t l_617[8][9] = {{(-1L),0x01D025D7L,(-3L),(-10L),(-3L),0x01D025D7L,(-1L),1L,0x7FE551A7L},{(-1L),0x01D025D7L,(-3L),(-10L),(-3L),0x01D025D7L,(-1L),1L,0x7FE551A7L},{(-1L),0x01D025D7L,(-3L),(-10L),(-3L),0x01D025D7L,(-1L),1L,0x7FE551A7L},{(-1L),0x01D025D7L,(-3L),(-10L),(-3L),0x01D025D7L,(-1L),1L,0x7FE551A7L},{(-1L),0x01D025D7L,(-3L),(-10L),(-3L),0x01D025D7L,(-1L),1L,0x7FE551A7L},{(-1L),0x01D025D7L,(-3L),(-10L),(-3L),0x01D025D7L,(-1L),1L,0x7FE551A7L},{(-1L),0x01D025D7L,(-3L),(-10L),(-3L),0x01D025D7L,(-1L),1L,0x7FE551A7L},{(-1L),0x01D025D7L,(-3L),(-10L),(-3L),0x01D025D7L,(-1L),1L,0x7FE551A7L}};
                        int32_t *l_619 = (void*)0;
                        int32_t *l_620 = &l_489;
                        VECTOR(int16_t, 4) l_625 = (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, 0x5796L), 0x5796L);
                        uint64_t *l_641 = (void*)0;
                        uint64_t *l_642 = (void*)0;
                        uint64_t *l_643 = (void*)0;
                        uint64_t *l_644 = &l_324;
                        uint64_t **l_651[6][4];
                        int i, j;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 4; j++)
                                l_651[i][j] = &l_643;
                        }
                        (*l_620) = ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(0x529560ACL, ((*l_162) = (safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_1055->g_582.xxxy)), 0x7AE9897EL, ((VECTOR(int32_t, 8))(l_583.s63120720)), ((VECTOR(int32_t, 2))(l_584.zw)), 0x025FEED8L)).s71 && ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(p_1055->g_585.yy)).yxyyyyyxyyxyyyxy ^ ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(p_1055->g_586.xz)), (((safe_mod_func_int16_t_s_s(((((safe_rshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((!p_1055->g_586.z), (p_1055->g_143 <= 1UL))), (safe_rshift_func_int8_t_s_s((l_618 = ((~(safe_mod_func_int64_t_s_s((safe_lshift_func_int8_t_s_u((safe_add_func_int8_t_s_s((safe_add_func_int8_t_s_s(p_31, ((p_1055->g_237.f0 ^= ((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(l_607.s14)).xxyx + ((VECTOR(uint8_t, 2))(0xD5L, 0x9DL)).xyxy))).ywxzzxzxyzzwzwzw, ((VECTOR(uint8_t, 8))(rotate(((VECTOR(uint8_t, 16))(l_608.s11a242da5a4a0411)).hi, ((VECTOR(uint8_t, 16))((p_31 | p_1055->g_342.x), 0xCEL, 0xFEL, 0UL, ((safe_add_func_uint8_t_u_u((safe_mod_func_int32_t_s_s((!1L), p_1055->g_195.f5)), ((safe_div_func_int8_t_s_s(((void*)0 != l_615[7]), p_31)) > l_616))) & 0x351CL), p_1055->g_344.s2, 0UL, 0x54L, ((VECTOR(uint8_t, 4))(0x91L)), 0xC4L, ((VECTOR(uint8_t, 2))(6UL)), 0xF9L)).lo))).s2222103015260734))).s4) || l_617[2][5]))), (*l_162))), p_31)), 0xA1527E83F6AFB0EAL))) ^ FAKE_DIVERGE(p_1055->global_2_offset, get_global_id(2), 10))), 5)))), 6)) == l_579) == 1L) != 0x550B9E4BE71DDE5CL), l_270.s5)) , 0x7CBF6356E62E9669L) >= 18446744073709551609UL), 0L, (-9L), ((VECTOR(int32_t, 2))(0x772CF8A3L)), 0x1D0B8365L)).s3316715711250004))).lo, (int32_t)(*l_162)))).s27, (int32_t)p_31))).yyyxyyyx && ((VECTOR(int32_t, 8))((-1L)))))).s4315173310063672 ^ ((VECTOR(int32_t, 16))(0L))))).hi && ((VECTOR(int32_t, 8))(0x1ED2FEABL))))).s75))), 0x5F64FA92L, p_31, 0x050829E6L, 3L, 0x0C9CC08EL, (-5L))).s5, p_31))), (-7L), ((VECTOR(int32_t, 8))(0x45840618L)), ((VECTOR(int32_t, 2))((-7L))), 1L, 0x345B9907L, 1L)).odd && ((VECTOR(int32_t, 8))(0x2FFDAE55L))))).s64, ((VECTOR(int32_t, 2))((-1L)))))).even;
                        (*l_620) &= (((l_652 = (((((*l_162) |= ((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(0x3FA5L, ((VECTOR(int16_t, 4))((-2L), ((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),VECTOR(int16_t, 16),((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(l_621.s6406344421561000)) >= ((VECTOR(int16_t, 8))(l_622.xyyyxxyx)).s4157713035706601))), ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(0x7A1CL, 0L)) && ((VECTOR(int16_t, 16))(l_623.s2cdbb00f40e55760)).saa))).xyxyxyxyyxxyyxxy, ((VECTOR(int16_t, 8))(l_624.xxyzzwzw)).s0342051657463372))).s9d || ((VECTOR(int16_t, 4))((-2L), 0L, 0x1AF1L, 0x1FFBL)).odd))), ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(l_625.zyxwxyxwzyxxxzyw)).lo && ((VECTOR(int16_t, 8))(p_1055->g_626.wxxzzzyw))))).s60))), 2L)), (p_1055->g_626.z = ((safe_mul_func_int8_t_s_s(l_624.z, (safe_sub_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u(p_1055->g_469.f2.f7, (safe_lshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(0xF1L, l_579)), 1)))) == ((VECTOR(int16_t, 8))(l_637.yyxwwyww)).s0), (((*l_644) = (safe_mod_func_uint32_t_u_u(0UL, l_640))) >= (p_1055->g_321.sb = 6UL)))))) == (((safe_div_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((65534UL & p_31), p_1055->g_469.f2.f9)), l_607.s7)) == l_564.s0) != l_649[1][1][4]))), 1L, 0L)).s61 && ((VECTOR(int16_t, 2))(0x4463L))))).xxyyxxyx, ((VECTOR(int16_t, 8))((-3L)))))).s1152352423273026, ((VECTOR(uint16_t, 16))(1UL))))).s7) || 0L) , p_1055->g_650[5]) , (void*)0)) == (void*)0) , 0x1225F731L);
                    }
                    else
                    { /* block id: 205 */
                        l_653 = (l_484.x , (**l_258));
                        if (p_1055->g_23.f2.f1)
                            goto lbl_654;
                    }
                    (*l_674) |= (safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(l_657.s23)).lo, (safe_lshift_func_uint16_t_u_s((((+(safe_rshift_func_uint16_t_u_u(((((((*l_671) |= (p_1055->g_49 , ((safe_sub_func_uint64_t_u_u(p_31, (GROUP_DIVERGE(2, 1) == (&p_31 == ((*l_46) = (void*)0))))) & ((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 2))(l_664.yx)), ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))(l_667.s16350733)).lo + ((VECTOR(uint32_t, 2))(0x1DFAEB08L, 0x5B438617L)).xxxy))).hi))).yxxxyxyxxyyxyyyy >= ((VECTOR(int64_t, 2))(p_1055->g_668.sca)).xyxxxxyyyyyxxyxy))).s4 , ((*l_162) , func_79((*p_1055->g_242), p_1055))) != ((*l_669) = l_67))))) , p_1055->g_217[8]) == (void*)0) > p_1055->g_650[5].f0) == 0x19FC4591C686C49FL), 10))) | 0x01C6552848B5F48FL) <= p_31), 0))));
                    (*l_162) = (~p_31);
                }
                (*l_162) ^= ((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(p_1055->g_675.xxyxxxyxyyxxxyyy)).lo || ((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 4))((-2L), (((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))(0xDD0DCCDDL, 0x0F35FE0CL, 0x130B9146L, 0xCC6B1AD5L)).hi + ((VECTOR(uint32_t, 8))(hadd(((VECTOR(uint32_t, 2))(0x61A2CF42L, 0x4DEB4A23L)).yyyxyxyx, ((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),uint32_t,((VECTOR(uint32_t, 8))(p_1055->g_678.s36504457)).s53, (uint32_t)p_1055->g_503.s5, (uint32_t)((*l_68) = (safe_sub_func_int64_t_s_s((safe_lshift_func_int8_t_s_s(((void*)0 == &p_1055->g_154), 5)), (~p_1055->g_237.f1))))))).yxyxyxxy))).s46))).lo != 0x1EE77D0BL) == ((p_1055->g_239[3].f7 = ((*l_683) = p_31)) , ((0x23D7A57960BBE31BL | (((*l_685) = ((VECTOR(int16_t, 2))(p_1055->g_684.s5d)).hi) != ((0xEAB8CC74L | (!0x7671926DL)) || 0UL))) ^ FAKE_DIVERGE(p_1055->group_2_offset, get_group_id(2), 10)))) & p_1055->g_650[5].f2.f8), (-10L), 0L)).even, ((VECTOR(int32_t, 2))(6L))))).yxyxxyyxyyxyyxxy, (int32_t)0x47D4E10EL))).hi))).s35 >= ((VECTOR(int32_t, 2))(0x1A43C79CL))))).xxxyyxyx, ((VECTOR(int32_t, 8))(0x7337C8E0L))))).s6763271670275164, ((VECTOR(int32_t, 16))(0L)), ((VECTOR(int32_t, 16))(0x107332E6L))))).s4;
                ++l_695;
                if (p_1055->g_237.f1)
                    goto lbl_698;
            }
            else
            { /* block id: 222 */
                l_699 = func_79(l_39, p_1055);
            }
            for (p_1055->g_469.f2.f2 = 0; (p_1055->g_469.f2.f2 < 30); p_1055->g_469.f2.f2++)
            { /* block id: 227 */
                int32_t **l_702[10];
                int i;
                for (i = 0; i < 10; i++)
                    l_702[i] = &l_162;
                l_162 = func_79((*p_1055->g_242), p_1055);
            }
            (*l_743) ^= (((FAKE_DIVERGE(p_1055->group_1_offset, get_group_id(1), 10) <= ((*l_162) = (((safe_sub_func_int32_t_s_s((safe_lshift_func_int8_t_s_u(p_31, 7)), (-5L))) && ((((*l_741) = (safe_sub_func_uint8_t_u_u((p_1055->g_23.f2.f0--), ((0x5927AAAA7A166EC3L <= (safe_mod_func_uint16_t_u_u((safe_div_func_int8_t_s_s((((((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 4))(l_716.s76a5)).hi, ((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 16))((safe_mul_func_uint16_t_u_u((((*l_721) = p_1055->g_719) != l_652), (safe_lshift_func_uint8_t_u_s((((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(p_1055->g_724.s2c)).xyyx != ((VECTOR(int8_t, 2))(l_725.sd3)).yxxx))).y < (p_31 , p_31)) | ((*l_739) |= (safe_add_func_int8_t_s_s(((safe_div_func_uint64_t_u_u((p_1055->g_321.sd++), ((VECTOR(uint64_t, 8))(p_1055->g_732.xwzwyzyx)).s1)) < (!((safe_sub_func_uint16_t_u_u((l_737[0] | ((((((p_31 <= p_1055->g_342.x) , p_31) != p_1055->g_557[0][5].f2.f7) >= p_31) < 0xE8L) <= l_738[0][3])), p_31)) && (-1L)))), 4UL)))) , GROUP_DIVERGE(2, 1)), 0)))), ((VECTOR(int64_t, 4))(0x70A983B6E7B8F7D2L)), ((VECTOR(int64_t, 8))(0L)), p_1055->g_557[0][5].f2.f4, 0x4610661405010E90L, (-3L))).se0ef, (int64_t)0x66E2E910A797FDC1L))).odd))).odd , p_31) < FAKE_DIVERGE(p_1055->group_0_offset, get_group_id(0), 10)) | p_31), p_31)), (-6L)))) >= p_1055->g_239[3].f4)))) < l_621.s7) == 0L)) || l_742))) == p_31) == p_1055->g_732.z);
        }
        else
        { /* block id: 237 */
            for (p_1055->g_237.f1 = 0; (p_1055->g_237.f1 <= (-17)); --p_1055->g_237.f1)
            { /* block id: 240 */
                return (*p_1055->g_242);
            }
        }
    }
    (*l_748) = p_1055->g_746;
    l_307.s4 = (safe_mod_func_int32_t_s_s(l_307.s3, (~(l_307.s5 >= p_1055->g_500.x))));
    (*p_1055->g_752) ^= (p_1055->g_73.s2 ^ p_31);
    return l_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_1055->g_69 p_1055->g_23.f2.f9 p_1055->g_78.f2.f6 p_1055->g_78.f2.f5 p_1055->g_192 p_1055->g_195 p_1055->g_159 p_1055->g_23.f2.f1 p_1055->g_97
 * writes: p_1055->g_69 p_1055->g_23.f2.f9 p_1055->g_195 p_1055->g_96
 */
int32_t  func_33(struct S1 * p_34, uint16_t  p_35, uint16_t  p_36, int8_t  p_37, uint8_t  p_38, struct S2 * p_1055)
{ /* block id: 40 */
    int32_t *l_172 = (void*)0;
    int32_t **l_171 = &l_172;
    int32_t l_176 = 0x1F27ABC4L;
    int32_t l_177 = 0x087734DAL;
    int32_t l_178 = 0x0C538581L;
    struct S0 *l_197 = &p_1055->g_195;
    (*l_171) = (void*)0;
    for (p_1055->g_69 = 3; (p_1055->g_69 != 25); ++p_1055->g_69)
    { /* block id: 44 */
        int32_t *l_175[5];
        uint64_t l_179[1];
        VECTOR(uint32_t, 2) l_189 = (VECTOR(uint32_t, 2))(0x5ED426F9L, 0x0FC968B5L);
        int i;
        for (i = 0; i < 5; i++)
            l_175[i] = (void*)0;
        for (i = 0; i < 1; i++)
            l_179[i] = 0xC242F11C631CB2D3L;
        --l_179[0];
        for (p_1055->g_23.f2.f9 = 27; (p_1055->g_23.f2.f9 != 51); p_1055->g_23.f2.f9 = safe_add_func_uint8_t_u_u(p_1055->g_23.f2.f9, 9))
        { /* block id: 48 */
            uint8_t l_188 = 0xF6L;
            l_177 ^= (safe_mod_func_int16_t_s_s((((safe_rshift_func_uint16_t_u_u(p_1055->g_78.f2.f6, 9)) , (!(p_1055->g_78.f2.f5 <= (l_188 >= p_36)))) < 0x310F99018F33F5BEL), (((VECTOR(uint32_t, 8))(l_189.yyyyyyxx)).s0 , (safe_sub_func_uint64_t_u_u(0x043DD9BAFC729903L, (p_37 <= GROUP_DIVERGE(2, 1)))))));
            if (p_1055->g_192.s5)
                continue;
        }
        for (p_1055->g_23.f2.f9 = (-27); (p_1055->g_23.f2.f9 <= 5); p_1055->g_23.f2.f9 = safe_add_func_uint16_t_u_u(p_1055->g_23.f2.f9, 2))
        { /* block id: 54 */
            struct S0 *l_196 = &p_1055->g_195;
            (*l_196) = p_1055->g_195;
        }
    }
    l_197 = (void*)0;
    p_1055->g_96.z = (p_1055->g_159[2] == (p_1055->g_23.f2.f1 || p_37));
    return p_1055->g_97.s2;
}


/* ------------------------------------------ */
/* 
 * reads : p_1055->g_66
 * writes:
 */
VECTOR(uint32_t, 16)  func_40(int32_t  p_41, int32_t  p_42, struct S2 * p_1055)
{ /* block id: 13 */
    int32_t *l_48 = &p_1055->g_49;
    int32_t *l_50 = &p_1055->g_49;
    int32_t *l_51 = &p_1055->g_49;
    int32_t *l_52 = &p_1055->g_49;
    int32_t *l_53 = &p_1055->g_49;
    int32_t l_54 = (-10L);
    int32_t *l_55 = &l_54;
    int32_t *l_56 = &l_54;
    int32_t *l_57 = (void*)0;
    int32_t *l_58 = (void*)0;
    int32_t *l_59 = &l_54;
    int32_t *l_60 = &l_54;
    int32_t *l_61 = &p_1055->g_49;
    int32_t *l_62[3][3][8] = {{{&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54},{&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54},{&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54}},{{&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54},{&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54},{&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54}},{{&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54},{&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54},{&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54,&l_54}}};
    uint32_t l_63 = 4294967292UL;
    int i, j, k;
    l_63++;
    return p_1055->g_66.zyyzxxxzzwwwzxyw;
}


/* ------------------------------------------ */
/* 
 * reads : p_1055->g_154 p_1055->g_159
 * writes: p_1055->g_154 p_1055->g_159
 */
int32_t * func_79(struct S1 * p_80, struct S2 * p_1055)
{ /* block id: 34 */
    int32_t *l_144 = &p_1055->g_49;
    int32_t *l_145 = (void*)0;
    int32_t *l_146 = (void*)0;
    int32_t *l_147 = (void*)0;
    int32_t *l_148 = &p_1055->g_49;
    int32_t *l_149 = &p_1055->g_49;
    int32_t *l_150 = &p_1055->g_49;
    int32_t *l_151 = &p_1055->g_49;
    int32_t *l_152 = &p_1055->g_49;
    int32_t *l_153[9][6] = {{&p_1055->g_49,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1055->g_49,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1055->g_49,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1055->g_49,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1055->g_49,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1055->g_49,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1055->g_49,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1055->g_49,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1055->g_49,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int8_t l_157 = 0x5DL;
    int64_t l_158 = 0x3EBD9387172B58A0L;
    int i, j;
    --p_1055->g_154;
    ++p_1055->g_159[2];
    return l_152;
}


/* ------------------------------------------ */
/* 
 * reads : p_1055->g_23.f2.f6 p_1055->g_25 p_1055->g_96 p_1055->g_97 p_1055->g_23.f2 p_1055->g_118 p_1055->g_135 p_1055->g_73 p_1055->g_10 p_1055->g_45 p_1055->g_142 p_1055->g_143 p_1055->g_49
 * writes: p_1055->g_23.f2.f6 p_1055->g_25 p_1055->g_10 p_1055->g_135 p_1055->g_49
 */
struct S1 * func_81(struct S1 * p_82, uint32_t  p_83, uint32_t  p_84, uint32_t * p_85, uint32_t  p_86, struct S2 * p_1055)
{ /* block id: 17 */
    int32_t *l_88 = (void*)0;
    int32_t **l_87 = &l_88;
    int32_t *l_90 = &p_1055->g_49;
    int32_t **l_89 = &l_90;
    VECTOR(int16_t, 4) l_98 = (VECTOR(int16_t, 4))(0x6A54L, (VECTOR(int16_t, 2))(0x6A54L, 1L), 1L);
    VECTOR(uint64_t, 2) l_106 = (VECTOR(uint64_t, 2))(0xD994F87C28FDDE4DL, 0x1D69833782E33F91L);
    VECTOR(uint32_t, 16) l_117 = (VECTOR(uint32_t, 16))(4294967292UL, (VECTOR(uint32_t, 4))(4294967292UL, (VECTOR(uint32_t, 2))(4294967292UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967292UL, 4294967295UL, (VECTOR(uint32_t, 2))(4294967292UL, 4294967295UL), (VECTOR(uint32_t, 2))(4294967292UL, 4294967295UL), 4294967292UL, 4294967295UL, 4294967292UL, 4294967295UL);
    VECTOR(int16_t, 4) l_136 = (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 0x3705L), 0x3705L);
    VECTOR(int32_t, 8) l_138 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-4L)), (-4L)), (-4L), (-1L), (-4L));
    int64_t *l_139 = (void*)0;
    int i;
    (*l_89) = ((*l_87) = (void*)0);
    for (p_1055->g_23.f2.f6 = 0; (p_1055->g_23.f2.f6 < (-1)); --p_1055->g_23.f2.f6)
    { /* block id: 22 */
        VECTOR(int32_t, 16) l_95 = (VECTOR(int32_t, 16))(0x35B590B8L, (VECTOR(int32_t, 4))(0x35B590B8L, (VECTOR(int32_t, 2))(0x35B590B8L, 0x386FCCF6L), 0x386FCCF6L), 0x386FCCF6L, 0x35B590B8L, 0x386FCCF6L, (VECTOR(int32_t, 2))(0x35B590B8L, 0x386FCCF6L), (VECTOR(int32_t, 2))(0x35B590B8L, 0x386FCCF6L), 0x35B590B8L, 0x386FCCF6L, 0x35B590B8L, 0x386FCCF6L);
        VECTOR(int16_t, 8) l_99 = (VECTOR(int16_t, 8))((-3L), (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), (-1L)), (-1L)), (-1L), (-3L), (-1L));
        VECTOR(int16_t, 16) l_100 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int16_t, 2))(1L, 0L), (VECTOR(int16_t, 2))(1L, 0L), 1L, 0L, 1L, 0L);
        VECTOR(int16_t, 2) l_101 = (VECTOR(int16_t, 2))((-2L), 0x46B9L);
        VECTOR(uint32_t, 2) l_109 = (VECTOR(uint32_t, 2))(0x5F7132E5L, 6UL);
        VECTOR(uint32_t, 4) l_114 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xD02E5D80L), 0xD02E5D80L);
        VECTOR(uint32_t, 2) l_121 = (VECTOR(uint32_t, 2))(1UL, 2UL);
        int64_t *l_137 = (void*)0;
        int16_t *l_140 = (void*)0;
        int16_t *l_141 = (void*)0;
        int i;
        for (p_1055->g_25 = 21; (p_1055->g_25 < (-17)); p_1055->g_25--)
        { /* block id: 25 */
            return &p_1055->g_23;
        }
        p_1055->g_49 &= ((VECTOR(int32_t, 4))(0x10E05D1EL, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(l_95.sb01ab19369d4055d)).s01 >= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(2L, ((VECTOR(int32_t, 2))(p_1055->g_96.yz)), (-1L))), (-1L), 0x0F443C0CL, 0x2DB549FEL, 0L)).s35))) && ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(p_1055->g_97.s34)).yyyyxyxyyxxyyxxy && ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 2))(2L, (-4L))), ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 4))(((((((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 2))(l_98.yw)).yyxyxyxx, ((VECTOR(int16_t, 4))(l_99.s4044)).yzxwwwyx))).s44, ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(l_100.s75c6ba71)).s6740601045711404 & ((VECTOR(int16_t, 2))(0x26B0L, 0x1F58L)).xxyxxxyxxyxxxxxy))).sb3, ((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_101.xy)), (-1L), 1L)).even, ((VECTOR(int16_t, 8))(0x1C9DL, (safe_sub_func_uint32_t_u_u((safe_sub_func_int32_t_s_s((p_1055->g_23.f2 , l_106.y), ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(l_109.xxyyxyxx)) << ((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 16))(safe_clamp_func(VECTOR(uint32_t, 16),VECTOR(uint32_t, 16),((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))((+((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(l_114.yy)).yyxyyyyx + ((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 4))(l_117.sb5b2)).wyxzyxxxzwwxyywx + ((VECTOR(uint32_t, 8))(p_1055->g_118.s35015465)).s5344712010167146))), ((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 4))(0x6CA1BE13L, 0xA447F7BBL, 4294967295UL, 0xB088A057L)).zxzyyxxxxyyyxyxw + ((VECTOR(uint32_t, 4))(l_121.xyxy)).wyxyxxxyxwyxywww))), ((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))((0x997ADCAFL & ((((((p_1055->g_135.x = (safe_mod_func_int32_t_s_s((safe_unary_minus_func_uint32_t_u((safe_mul_func_int8_t_s_s(((FAKE_DIVERGE(p_1055->group_2_offset, get_group_id(2), 10) || (safe_mul_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), p_1055->g_23.f2.f6)), (p_1055->g_25 && ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x7C91L, 1UL)), 1UL, 65531UL)), ((VECTOR(uint16_t, 2))(0x570BL, 0x7C06L)), 0x71E0L, 0UL)).s3)))) <= ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))((3L ^ ((FAKE_DIVERGE(p_1055->group_2_offset, get_group_id(2), 10) & ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),int16_t,((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(p_1055->g_135.wwyxwwyx)).s2036433116460570 || ((VECTOR(int16_t, 4))(l_136.zxzy)).zxzxxwzwxwzxyxwy))).odd, (int16_t)(p_1055->g_10 &= (((l_137 == ((((VECTOR(int32_t, 16))(0x71EAABBEL, 0x397AFB7AL, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(0x75140D49L, ((VECTOR(int32_t, 2))(0x76DE95A8L, 0x38992417L)), 0x14782D3BL)) && ((VECTOR(int32_t, 8))(l_138.s23420430)).lo))), ((VECTOR(int32_t, 2))((-1L), (-8L))), 0x66100BB5L, 1L)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x7A1B735CL, (-1L))), 0x74962EC1L, 5L)), 0x6FF18044L, 0x55BCDDAFL)).se , 4294967295UL) , l_139)) && p_1055->g_118.s0) <= p_1055->g_73.s4)), (int16_t)0x3EBEL))).odd | ((VECTOR(int16_t, 4))(9L))))).y) & p_84)), ((VECTOR(uint64_t, 2))(0x4D8E95E8C976AA72L)), 0x02788A4551945E40L)).wxwzwwzwwzzwzzwz >> ((VECTOR(uint64_t, 16))(64))))).s7), p_1055->g_45.z)))), 1UL))) && p_1055->g_142) , p_1055->g_118.s6) < p_1055->g_73.se) || p_84) , p_84)), ((VECTOR(uint32_t, 2))(4294967287UL)), 4294967292UL)).odd << ((VECTOR(uint32_t, 2))(0x49806CA2L))))).yxyy, ((VECTOR(uint32_t, 4))(0x4B4D06ADL))))).hi, ((VECTOR(uint32_t, 2))(4294967292UL))))).yxyyyyyxxxyxyxyy))).sbdd3, ((VECTOR(uint32_t, 4))(0xEFA2A6CCL)), ((VECTOR(uint32_t, 4))(4294967295UL))))).ywzzzwyy)))))).hi ^ ((VECTOR(uint32_t, 4))(0x5C781191L))))).wzyxyxyyxwyyzxyy, ((VECTOR(uint32_t, 16))(4294967293UL)), ((VECTOR(uint32_t, 16))(0x5CB3DCC7L))))).even, ((VECTOR(uint32_t, 8))(0x9CDD84AAL)), ((VECTOR(uint32_t, 8))(4294967293UL))))), 0xDD64F9C2L, p_1055->g_10, 1UL, ((VECTOR(uint32_t, 2))(4294967295UL)), ((VECTOR(uint32_t, 2))(0x425DD392L)), 4294967293UL)) + ((VECTOR(uint32_t, 16))(0xAE03F525L))))).lo))).s2)), p_1055->g_143)), 1L, 6L, ((VECTOR(int16_t, 2))(2L)), 0x71F7L, 4L)).s20)))))).yyxx && ((VECTOR(int16_t, 4))(1L))))).x , p_1055->g_23.f2.f6) & l_114.x) , 0x704EBC73C5DB116DL) <= p_1055->g_73.s1) <= FAKE_DIVERGE(p_1055->global_0_offset, get_global_id(0), 10)) != p_1055->g_118.s4), 0L, 3L, 0x20318852L)).zxzyyxyy, ((VECTOR(int32_t, 8))(3L))))).s61))), (-4L), 0x253E1635L)).xwzzwzxxywyywzyw))).s3a))), 0L)).x;
        if (p_84)
            break;
    }
    return p_82;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_1056;
    struct S2* p_1055 = &c_1056;
    struct S2 c_1057 = {
        (-10L), // p_1055->g_10
        {0x74039EE4L,0x1BA6B42BL,{0x19L,0x67C14AB6L,1UL,0xDAB551FAL,65526UL,-2L,1L,-1L,0x5D93BA6AL,1UL}}, // p_1055->g_23
        9L, // p_1055->g_25
        (VECTOR(int8_t, 4))(0x28L, (VECTOR(int8_t, 2))(0x28L, 0x0EL), 0x0EL), // p_1055->g_45
        0L, // p_1055->g_49
        (VECTOR(uint32_t, 4))(0xB821BFDBL, (VECTOR(uint32_t, 2))(0xB821BFDBL, 0xE086565EL), 0xE086565EL), // p_1055->g_66
        1UL, // p_1055->g_69
        (VECTOR(int8_t, 16))(0x28L, (VECTOR(int8_t, 4))(0x28L, (VECTOR(int8_t, 2))(0x28L, 0x63L), 0x63L), 0x63L, 0x28L, 0x63L, (VECTOR(int8_t, 2))(0x28L, 0x63L), (VECTOR(int8_t, 2))(0x28L, 0x63L), 0x28L, 0x63L, 0x28L, 0x63L), // p_1055->g_73
        {-5L,0x5E26160DL,{1UL,0x6EE5324EL,1UL,4UL,1UL,-1L,0x043CL,0x540DD2C8L,-8L,18446744073709551615UL}}, // p_1055->g_78
        (VECTOR(int32_t, 4))(0x6ED2767FL, (VECTOR(int32_t, 2))(0x6ED2767FL, 0x171DF810L), 0x171DF810L), // p_1055->g_96
        (VECTOR(int32_t, 8))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 0x13618026L), 0x13618026L), 0x13618026L, (-10L), 0x13618026L), // p_1055->g_97
        (VECTOR(uint32_t, 8))(0x8D339D48L, (VECTOR(uint32_t, 4))(0x8D339D48L, (VECTOR(uint32_t, 2))(0x8D339D48L, 4294967286UL), 4294967286UL), 4294967286UL, 0x8D339D48L, 4294967286UL), // p_1055->g_118
        (VECTOR(int16_t, 4))(0x2EA2L, (VECTOR(int16_t, 2))(0x2EA2L, 0x6E45L), 0x6E45L), // p_1055->g_135
        0x19E5L, // p_1055->g_142
        1L, // p_1055->g_143
        0x73L, // p_1055->g_154
        {0xF7204BD9L,0xF7204BD9L,0xF7204BD9L}, // p_1055->g_159
        1L, // p_1055->g_170
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), 0UL), 0UL, 65535UL, 0UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), (VECTOR(uint16_t, 2))(65535UL, 0UL), 65535UL, 0UL, 65535UL, 0UL), // p_1055->g_192
        {0xD1L,0x09291A30L,0x0AC31470323A823FL,0UL,9UL,-7L,-1L,0x2C0E2F8FL,-3L,0xB97A5FBFFA6FDFF5L}, // p_1055->g_195
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1055->g_217
        {254UL,0x429CBB98L,0xF491811AB46CC7DBL,4294967292UL,1UL,-4L,0L,1L,0x398AA170L,0x69BBFE556765D163L}, // p_1055->g_237
        {{1UL,0x7BD035DCL,7UL,0x54E5BD1AL,65531UL,0x2DD311D7L,0x61F0L,0L,-4L,1UL},{255UL,0x0EAA7AA2L,18446744073709551608UL,0x2E2CF94CL,9UL,0x56CCC472L,0x74F3L,0x5F079757L,0x19226773L,0x6724607D9147CCF5L},{1UL,0x7BD035DCL,7UL,0x54E5BD1AL,65531UL,0x2DD311D7L,0x61F0L,0L,-4L,1UL},{1UL,0x7BD035DCL,7UL,0x54E5BD1AL,65531UL,0x2DD311D7L,0x61F0L,0L,-4L,1UL},{255UL,0x0EAA7AA2L,18446744073709551608UL,0x2E2CF94CL,9UL,0x56CCC472L,0x74F3L,0x5F079757L,0x19226773L,0x6724607D9147CCF5L},{1UL,0x7BD035DCL,7UL,0x54E5BD1AL,65531UL,0x2DD311D7L,0x61F0L,0L,-4L,1UL},{1UL,0x7BD035DCL,7UL,0x54E5BD1AL,65531UL,0x2DD311D7L,0x61F0L,0L,-4L,1UL},{255UL,0x0EAA7AA2L,18446744073709551608UL,0x2E2CF94CL,9UL,0x56CCC472L,0x74F3L,0x5F079757L,0x19226773L,0x6724607D9147CCF5L},{1UL,0x7BD035DCL,7UL,0x54E5BD1AL,65531UL,0x2DD311D7L,0x61F0L,0L,-4L,1UL}}, // p_1055->g_239
        &p_1055->g_23, // p_1055->g_243
        &p_1055->g_243, // p_1055->g_242
        &p_1055->g_23.f2, // p_1055->g_248
        &p_1055->g_248, // p_1055->g_247
        &p_1055->g_247, // p_1055->g_246
        (void*)0, // p_1055->g_259
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x5CB6L), 0x5CB6L), 0x5CB6L, 1L, 0x5CB6L, (VECTOR(int16_t, 2))(1L, 0x5CB6L), (VECTOR(int16_t, 2))(1L, 0x5CB6L), 1L, 0x5CB6L, 1L, 0x5CB6L), // p_1055->g_311
        (VECTOR(int16_t, 4))(0x484CL, (VECTOR(int16_t, 2))(0x484CL, 0x27CAL), 0x27CAL), // p_1055->g_312
        (VECTOR(uint64_t, 2))(0x9C6302B15B341686L, 0UL), // p_1055->g_320
        (VECTOR(uint64_t, 16))(0xA5076B0EA0F8AD32L, (VECTOR(uint64_t, 4))(0xA5076B0EA0F8AD32L, (VECTOR(uint64_t, 2))(0xA5076B0EA0F8AD32L, 0UL), 0UL), 0UL, 0xA5076B0EA0F8AD32L, 0UL, (VECTOR(uint64_t, 2))(0xA5076B0EA0F8AD32L, 0UL), (VECTOR(uint64_t, 2))(0xA5076B0EA0F8AD32L, 0UL), 0xA5076B0EA0F8AD32L, 0UL, 0xA5076B0EA0F8AD32L, 0UL), // p_1055->g_321
        (VECTOR(uint8_t, 2))(0UL, 0x90L), // p_1055->g_342
        (VECTOR(uint8_t, 8))(0x46L, (VECTOR(uint8_t, 4))(0x46L, (VECTOR(uint8_t, 2))(0x46L, 253UL), 253UL), 253UL, 0x46L, 253UL), // p_1055->g_344
        (VECTOR(uint8_t, 16))(5UL, (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 0xE1L), 0xE1L), 0xE1L, 5UL, 0xE1L, (VECTOR(uint8_t, 2))(5UL, 0xE1L), (VECTOR(uint8_t, 2))(5UL, 0xE1L), 5UL, 0xE1L, 5UL, 0xE1L), // p_1055->g_345
        (VECTOR(int32_t, 8))(0x2B119FB8L, (VECTOR(int32_t, 4))(0x2B119FB8L, (VECTOR(int32_t, 2))(0x2B119FB8L, 0x492C3A3EL), 0x492C3A3EL), 0x492C3A3EL, 0x2B119FB8L, 0x492C3A3EL), // p_1055->g_353
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x62288249L), 0x62288249L), 0x62288249L, 1L, 0x62288249L), // p_1055->g_354
        (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, (-2L)), (-2L)), (-2L), 6L, (-2L)), // p_1055->g_356
        (VECTOR(int32_t, 2))(0x62D200BDL, 0x0A022494L), // p_1055->g_357
        (-6L), // p_1055->g_379
        (VECTOR(int64_t, 8))(0x55CEDA0411F8DB44L, (VECTOR(int64_t, 4))(0x55CEDA0411F8DB44L, (VECTOR(int64_t, 2))(0x55CEDA0411F8DB44L, 0x00B9A53B729DBD1BL), 0x00B9A53B729DBD1BL), 0x00B9A53B729DBD1BL, 0x55CEDA0411F8DB44L, 0x00B9A53B729DBD1BL), // p_1055->g_435
        (VECTOR(uint16_t, 2))(0x02C3L, 0UL), // p_1055->g_445
        {253UL,0x0047A4CCL,0xD00917C36A7FC95DL,0xBFF320E4L,0x9DE7L,-1L,7L,0L,1L,0x3FAC9D1C079F269CL}, // p_1055->g_463
        &p_1055->g_463, // p_1055->g_464
        (void*)0, // p_1055->g_466
        &p_1055->g_466, // p_1055->g_465
        {1L,8L,{0xF3L,0x4062BF68L,0UL,0xCB9ECF88L,0x62BBL,-1L,3L,8L,0L,0xC9F0C34AEBEDAE11L}}, // p_1055->g_469
        &p_1055->g_469, // p_1055->g_470
        (VECTOR(uint16_t, 2))(65530UL, 0x7574L), // p_1055->g_500
        (VECTOR(int16_t, 8))(0x5CD0L, (VECTOR(int16_t, 4))(0x5CD0L, (VECTOR(int16_t, 2))(0x5CD0L, 0x6802L), 0x6802L), 0x6802L, 0x5CD0L, 0x6802L), // p_1055->g_503
        &p_1055->g_466, // p_1055->g_548
        {{{7L,0x01FB11DAL,{0UL,0x50D7FD31L,0xB6A3DF6D8ECBBAE2L,0xF4B46447L,65535UL,0x6D685B50L,1L,0x5702E727L,0x22A64123L,0x8958D68B289A8B95L}},{7L,0x01FB11DAL,{0UL,0x50D7FD31L,0xB6A3DF6D8ECBBAE2L,0xF4B46447L,65535UL,0x6D685B50L,1L,0x5702E727L,0x22A64123L,0x8958D68B289A8B95L}},{7L,0x01FB11DAL,{0UL,0x50D7FD31L,0xB6A3DF6D8ECBBAE2L,0xF4B46447L,65535UL,0x6D685B50L,1L,0x5702E727L,0x22A64123L,0x8958D68B289A8B95L}},{7L,0x01FB11DAL,{0UL,0x50D7FD31L,0xB6A3DF6D8ECBBAE2L,0xF4B46447L,65535UL,0x6D685B50L,1L,0x5702E727L,0x22A64123L,0x8958D68B289A8B95L}},{7L,0x01FB11DAL,{0UL,0x50D7FD31L,0xB6A3DF6D8ECBBAE2L,0xF4B46447L,65535UL,0x6D685B50L,1L,0x5702E727L,0x22A64123L,0x8958D68B289A8B95L}},{7L,0x01FB11DAL,{0UL,0x50D7FD31L,0xB6A3DF6D8ECBBAE2L,0xF4B46447L,65535UL,0x6D685B50L,1L,0x5702E727L,0x22A64123L,0x8958D68B289A8B95L}},{7L,0x01FB11DAL,{0UL,0x50D7FD31L,0xB6A3DF6D8ECBBAE2L,0xF4B46447L,65535UL,0x6D685B50L,1L,0x5702E727L,0x22A64123L,0x8958D68B289A8B95L}},{7L,0x01FB11DAL,{0UL,0x50D7FD31L,0xB6A3DF6D8ECBBAE2L,0xF4B46447L,65535UL,0x6D685B50L,1L,0x5702E727L,0x22A64123L,0x8958D68B289A8B95L}}}}, // p_1055->g_557
        (VECTOR(uint32_t, 8))(0xE0B710BAL, (VECTOR(uint32_t, 4))(0xE0B710BAL, (VECTOR(uint32_t, 2))(0xE0B710BAL, 0xAE6FA644L), 0xAE6FA644L), 0xAE6FA644L, 0xE0B710BAL, 0xAE6FA644L), // p_1055->g_563
        (VECTOR(int32_t, 2))(3L, 0x4228FE77L), // p_1055->g_582
        (VECTOR(int32_t, 2))(0x12D2CD1EL, 1L), // p_1055->g_585
        (VECTOR(int32_t, 4))(0x3FBE21E4L, (VECTOR(int32_t, 2))(0x3FBE21E4L, 5L), 5L), // p_1055->g_586
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x384BL), 0x384BL), // p_1055->g_626
        {{0L,-4L,{0x8CL,0x6250E61CL,0x08E008B074E3DB68L,4294967292UL,5UL,0x57F34F90L,-5L,0x0570FDFCL,0x7AE2C1F6L,18446744073709551615UL}},{0L,-4L,{0x8CL,0x6250E61CL,0x08E008B074E3DB68L,4294967292UL,5UL,0x57F34F90L,-5L,0x0570FDFCL,0x7AE2C1F6L,18446744073709551615UL}},{0L,-4L,{0x8CL,0x6250E61CL,0x08E008B074E3DB68L,4294967292UL,5UL,0x57F34F90L,-5L,0x0570FDFCL,0x7AE2C1F6L,18446744073709551615UL}},{0L,-4L,{0x8CL,0x6250E61CL,0x08E008B074E3DB68L,4294967292UL,5UL,0x57F34F90L,-5L,0x0570FDFCL,0x7AE2C1F6L,18446744073709551615UL}},{0L,-4L,{0x8CL,0x6250E61CL,0x08E008B074E3DB68L,4294967292UL,5UL,0x57F34F90L,-5L,0x0570FDFCL,0x7AE2C1F6L,18446744073709551615UL}},{0L,-4L,{0x8CL,0x6250E61CL,0x08E008B074E3DB68L,4294967292UL,5UL,0x57F34F90L,-5L,0x0570FDFCL,0x7AE2C1F6L,18446744073709551615UL}},{0L,-4L,{0x8CL,0x6250E61CL,0x08E008B074E3DB68L,4294967292UL,5UL,0x57F34F90L,-5L,0x0570FDFCL,0x7AE2C1F6L,18446744073709551615UL}},{0L,-4L,{0x8CL,0x6250E61CL,0x08E008B074E3DB68L,4294967292UL,5UL,0x57F34F90L,-5L,0x0570FDFCL,0x7AE2C1F6L,18446744073709551615UL}},{0L,-4L,{0x8CL,0x6250E61CL,0x08E008B074E3DB68L,4294967292UL,5UL,0x57F34F90L,-5L,0x0570FDFCL,0x7AE2C1F6L,18446744073709551615UL}}}, // p_1055->g_650
        (VECTOR(int64_t, 16))(0x2AF657D2FA775B99L, (VECTOR(int64_t, 4))(0x2AF657D2FA775B99L, (VECTOR(int64_t, 2))(0x2AF657D2FA775B99L, 0x51B887D4AD4F470EL), 0x51B887D4AD4F470EL), 0x51B887D4AD4F470EL, 0x2AF657D2FA775B99L, 0x51B887D4AD4F470EL, (VECTOR(int64_t, 2))(0x2AF657D2FA775B99L, 0x51B887D4AD4F470EL), (VECTOR(int64_t, 2))(0x2AF657D2FA775B99L, 0x51B887D4AD4F470EL), 0x2AF657D2FA775B99L, 0x51B887D4AD4F470EL, 0x2AF657D2FA775B99L, 0x51B887D4AD4F470EL), // p_1055->g_668
        (VECTOR(int32_t, 2))(0x6CD77BDAL, 1L), // p_1055->g_675
        (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xC8DB146DL), 0xC8DB146DL), 0xC8DB146DL, 4294967295UL, 0xC8DB146DL), // p_1055->g_678
        (VECTOR(int16_t, 16))((-10L), (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 0x098DL), 0x098DL), 0x098DL, (-10L), 0x098DL, (VECTOR(int16_t, 2))((-10L), 0x098DL), (VECTOR(int16_t, 2))((-10L), 0x098DL), (-10L), 0x098DL, (-10L), 0x098DL), // p_1055->g_684
        (void*)0, // p_1055->g_719
        (VECTOR(int8_t, 16))(0x1EL, (VECTOR(int8_t, 4))(0x1EL, (VECTOR(int8_t, 2))(0x1EL, 0x4CL), 0x4CL), 0x4CL, 0x1EL, 0x4CL, (VECTOR(int8_t, 2))(0x1EL, 0x4CL), (VECTOR(int8_t, 2))(0x1EL, 0x4CL), 0x1EL, 0x4CL, 0x1EL, 0x4CL), // p_1055->g_724
        (VECTOR(uint64_t, 4))(0x25D249ABE8DDC990L, (VECTOR(uint64_t, 2))(0x25D249ABE8DDC990L, 0x5EB6DF80263817A2L), 0x5EB6DF80263817A2L), // p_1055->g_732
        {1L,-5L,{6UL,0L,18446744073709551615UL,0xEC000CA4L,0x0C7AL,3L,0x37A9L,0x78D464D8L,0x61C3CA0BL,0xBD9F4E37FC38352CL}}, // p_1055->g_746
        {{&p_1055->g_746},{&p_1055->g_746},{&p_1055->g_746},{&p_1055->g_746},{&p_1055->g_746},{&p_1055->g_746},{&p_1055->g_746},{&p_1055->g_746}}, // p_1055->g_747
        (void*)0, // p_1055->g_751
        &p_1055->g_49, // p_1055->g_752
        (VECTOR(int64_t, 2))(0x59393DF0E94C1AF3L, 0x7603ECD0EABDF14DL), // p_1055->g_755
        (VECTOR(int16_t, 2))((-2L), 0x4FECL), // p_1055->g_756
        0x3ECDL, // p_1055->g_766
        {{-1L,0x1D18DC54L,{255UL,0x343E8E50L,0x916E6BED57BC0CEDL,1UL,0xAAE4L,0x0C93D9C6L,1L,0L,-1L,0x09E337C6DD2820ABL}},{-1L,0x5F698C7CL,{255UL,0x7BAC4747L,18446744073709551606UL,0xEB6EDA32L,0x85D0L,0x56011C7CL,0x33A5L,9L,0x5E979727L,18446744073709551612UL}},{-1L,0x1D18DC54L,{255UL,0x343E8E50L,0x916E6BED57BC0CEDL,1UL,0xAAE4L,0x0C93D9C6L,1L,0L,-1L,0x09E337C6DD2820ABL}},{-1L,0x1D18DC54L,{255UL,0x343E8E50L,0x916E6BED57BC0CEDL,1UL,0xAAE4L,0x0C93D9C6L,1L,0L,-1L,0x09E337C6DD2820ABL}},{-1L,0x5F698C7CL,{255UL,0x7BAC4747L,18446744073709551606UL,0xEB6EDA32L,0x85D0L,0x56011C7CL,0x33A5L,9L,0x5E979727L,18446744073709551612UL}},{-1L,0x1D18DC54L,{255UL,0x343E8E50L,0x916E6BED57BC0CEDL,1UL,0xAAE4L,0x0C93D9C6L,1L,0L,-1L,0x09E337C6DD2820ABL}},{-1L,0x1D18DC54L,{255UL,0x343E8E50L,0x916E6BED57BC0CEDL,1UL,0xAAE4L,0x0C93D9C6L,1L,0L,-1L,0x09E337C6DD2820ABL}}}, // p_1055->g_767
        (VECTOR(int8_t, 2))(0x49L, 0x5CL), // p_1055->g_784
        0x9A8609D9L, // p_1055->g_794
        &p_1055->g_466, // p_1055->g_812
        &p_1055->g_23.f2.f0, // p_1055->g_843
        {{{&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843},{&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843},{&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843},{&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843},{&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843},{&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843},{&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843},{&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843},{&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843,&p_1055->g_843}}}, // p_1055->g_842
        {{{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49}},{{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49}},{{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49}},{{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49}},{{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49}},{{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49}},{{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49}},{{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49}},{{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49},{(void*)0,(void*)0,&p_1055->g_49,&p_1055->g_49}}}, // p_1055->g_872
        &p_1055->g_872[0][2][3], // p_1055->g_871
        0x47FA93E7AE1DB698L, // p_1055->g_876
        (VECTOR(int64_t, 8))(0x2F4EF905FF6E9F2CL, (VECTOR(int64_t, 4))(0x2F4EF905FF6E9F2CL, (VECTOR(int64_t, 2))(0x2F4EF905FF6E9F2CL, 1L), 1L), 1L, 0x2F4EF905FF6E9F2CL, 1L), // p_1055->g_884
        (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x05026D2245A0702BL), 0x05026D2245A0702BL), 0x05026D2245A0702BL, 18446744073709551615UL, 0x05026D2245A0702BL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x05026D2245A0702BL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x05026D2245A0702BL), 18446744073709551615UL, 0x05026D2245A0702BL, 18446744073709551615UL, 0x05026D2245A0702BL), // p_1055->g_896
        (VECTOR(uint32_t, 16))(9UL, (VECTOR(uint32_t, 4))(9UL, (VECTOR(uint32_t, 2))(9UL, 0UL), 0UL), 0UL, 9UL, 0UL, (VECTOR(uint32_t, 2))(9UL, 0UL), (VECTOR(uint32_t, 2))(9UL, 0UL), 9UL, 0UL, 9UL, 0UL), // p_1055->g_904
        {0x6C54F053L,1L,{0xA8L,0x68409218L,0xC40C48681710651CL,1UL,0xA89BL,1L,0x0EFAL,-1L,1L,6UL}}, // p_1055->g_912
        {&p_1055->g_872[0][2][3]}, // p_1055->g_913
        (VECTOR(int8_t, 4))(0x04L, (VECTOR(int8_t, 2))(0x04L, (-9L)), (-9L)), // p_1055->g_918
        {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}, // p_1055->g_929
        (void*)0, // p_1055->g_930
        (VECTOR(uint8_t, 8))(0x17L, (VECTOR(uint8_t, 4))(0x17L, (VECTOR(uint8_t, 2))(0x17L, 0xDCL), 0xDCL), 0xDCL, 0x17L, 0xDCL), // p_1055->g_945
        {{{{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}},{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}}},{{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}},{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}}},{{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}},{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}}},{{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}},{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}}},{{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}},{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}}},{{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}},{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}}},{{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}},{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}}},{{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}},{0x72B823E0L,0x6DBBAFD6L,{0x10L,0x17A87FA6L,4UL,0xA45233C3L,0xD772L,0x5CBA079FL,0L,0x4712C446L,-6L,0x205E3F50DBBD698BL}}}}}, // p_1055->g_962
        {{3L,0x18EDF995L,{249UL,0x1FBB2E39L,0xF8926C5421BDE31CL,0x3DFBCD90L,0x0F31L,0x0957F076L,0x7F59L,0x6CB68011L,0x2A2D171DL,0x5D713C702F8D9322L}},{3L,0x18EDF995L,{249UL,0x1FBB2E39L,0xF8926C5421BDE31CL,0x3DFBCD90L,0x0F31L,0x0957F076L,0x7F59L,0x6CB68011L,0x2A2D171DL,0x5D713C702F8D9322L}},{3L,0x18EDF995L,{249UL,0x1FBB2E39L,0xF8926C5421BDE31CL,0x3DFBCD90L,0x0F31L,0x0957F076L,0x7F59L,0x6CB68011L,0x2A2D171DL,0x5D713C702F8D9322L}},{3L,0x18EDF995L,{249UL,0x1FBB2E39L,0xF8926C5421BDE31CL,0x3DFBCD90L,0x0F31L,0x0957F076L,0x7F59L,0x6CB68011L,0x2A2D171DL,0x5D713C702F8D9322L}},{3L,0x18EDF995L,{249UL,0x1FBB2E39L,0xF8926C5421BDE31CL,0x3DFBCD90L,0x0F31L,0x0957F076L,0x7F59L,0x6CB68011L,0x2A2D171DL,0x5D713C702F8D9322L}},{3L,0x18EDF995L,{249UL,0x1FBB2E39L,0xF8926C5421BDE31CL,0x3DFBCD90L,0x0F31L,0x0957F076L,0x7F59L,0x6CB68011L,0x2A2D171DL,0x5D713C702F8D9322L}},{3L,0x18EDF995L,{249UL,0x1FBB2E39L,0xF8926C5421BDE31CL,0x3DFBCD90L,0x0F31L,0x0957F076L,0x7F59L,0x6CB68011L,0x2A2D171DL,0x5D713C702F8D9322L}},{3L,0x18EDF995L,{249UL,0x1FBB2E39L,0xF8926C5421BDE31CL,0x3DFBCD90L,0x0F31L,0x0957F076L,0x7F59L,0x6CB68011L,0x2A2D171DL,0x5D713C702F8D9322L}},{3L,0x18EDF995L,{249UL,0x1FBB2E39L,0xF8926C5421BDE31CL,0x3DFBCD90L,0x0F31L,0x0957F076L,0x7F59L,0x6CB68011L,0x2A2D171DL,0x5D713C702F8D9322L}}}, // p_1055->g_980
        &p_1055->g_49, // p_1055->g_985
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int32_t, 2))(1L, (-1L)), (VECTOR(int32_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L)), // p_1055->g_1004
        (VECTOR(int16_t, 2))((-1L), 1L), // p_1055->g_1013
        (VECTOR(int16_t, 2))((-5L), 0x4042L), // p_1055->g_1014
        (VECTOR(int16_t, 4))(4L, (VECTOR(int16_t, 2))(4L, 3L), 3L), // p_1055->g_1017
        (VECTOR(int8_t, 2))(0x77L, 0x39L), // p_1055->g_1020
        (VECTOR(int8_t, 8))(0x22L, (VECTOR(int8_t, 4))(0x22L, (VECTOR(int8_t, 2))(0x22L, 1L), 1L), 1L, 0x22L, 1L), // p_1055->g_1021
        (VECTOR(int8_t, 4))(0x5FL, (VECTOR(int8_t, 2))(0x5FL, 0x19L), 0x19L), // p_1055->g_1028
        (VECTOR(int64_t, 4))((-3L), (VECTOR(int64_t, 2))((-3L), (-1L)), (-1L)), // p_1055->g_1040
        (VECTOR(int64_t, 16))(0x3675F66603D02807L, (VECTOR(int64_t, 4))(0x3675F66603D02807L, (VECTOR(int64_t, 2))(0x3675F66603D02807L, (-3L)), (-3L)), (-3L), 0x3675F66603D02807L, (-3L), (VECTOR(int64_t, 2))(0x3675F66603D02807L, (-3L)), (VECTOR(int64_t, 2))(0x3675F66603D02807L, (-3L)), 0x3675F66603D02807L, (-3L), 0x3675F66603D02807L, (-3L)), // p_1055->g_1043
        (VECTOR(uint16_t, 2))(65535UL, 0xBCD3L), // p_1055->g_1051
        {-8L,0x476EBC74L,{0x86L,0x0F5A9F48L,0xAFEF484E8CAB65DDL,0xC8B187E5L,65531UL,0L,0x4369L,1L,0x7C717CBBL,0xCD1DF1FC2D91FD30L}}, // p_1055->g_1053
        (void*)0, // p_1055->g_1054
        sequence_input[get_global_id(0)], // p_1055->global_0_offset
        sequence_input[get_global_id(1)], // p_1055->global_1_offset
        sequence_input[get_global_id(2)], // p_1055->global_2_offset
        sequence_input[get_local_id(0)], // p_1055->local_0_offset
        sequence_input[get_local_id(1)], // p_1055->local_1_offset
        sequence_input[get_local_id(2)], // p_1055->local_2_offset
        sequence_input[get_group_id(0)], // p_1055->group_0_offset
        sequence_input[get_group_id(1)], // p_1055->group_1_offset
        sequence_input[get_group_id(2)], // p_1055->group_2_offset
    };
    c_1056 = c_1057;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1055);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1055->g_10, "p_1055->g_10", print_hash_value);
    transparent_crc(p_1055->g_23.f0, "p_1055->g_23.f0", print_hash_value);
    transparent_crc(p_1055->g_23.f1, "p_1055->g_23.f1", print_hash_value);
    transparent_crc(p_1055->g_23.f2.f0, "p_1055->g_23.f2.f0", print_hash_value);
    transparent_crc(p_1055->g_23.f2.f1, "p_1055->g_23.f2.f1", print_hash_value);
    transparent_crc(p_1055->g_23.f2.f2, "p_1055->g_23.f2.f2", print_hash_value);
    transparent_crc(p_1055->g_23.f2.f3, "p_1055->g_23.f2.f3", print_hash_value);
    transparent_crc(p_1055->g_23.f2.f4, "p_1055->g_23.f2.f4", print_hash_value);
    transparent_crc(p_1055->g_23.f2.f5, "p_1055->g_23.f2.f5", print_hash_value);
    transparent_crc(p_1055->g_23.f2.f6, "p_1055->g_23.f2.f6", print_hash_value);
    transparent_crc(p_1055->g_23.f2.f7, "p_1055->g_23.f2.f7", print_hash_value);
    transparent_crc(p_1055->g_23.f2.f8, "p_1055->g_23.f2.f8", print_hash_value);
    transparent_crc(p_1055->g_23.f2.f9, "p_1055->g_23.f2.f9", print_hash_value);
    transparent_crc(p_1055->g_25, "p_1055->g_25", print_hash_value);
    transparent_crc(p_1055->g_45.x, "p_1055->g_45.x", print_hash_value);
    transparent_crc(p_1055->g_45.y, "p_1055->g_45.y", print_hash_value);
    transparent_crc(p_1055->g_45.z, "p_1055->g_45.z", print_hash_value);
    transparent_crc(p_1055->g_45.w, "p_1055->g_45.w", print_hash_value);
    transparent_crc(p_1055->g_49, "p_1055->g_49", print_hash_value);
    transparent_crc(p_1055->g_66.x, "p_1055->g_66.x", print_hash_value);
    transparent_crc(p_1055->g_66.y, "p_1055->g_66.y", print_hash_value);
    transparent_crc(p_1055->g_66.z, "p_1055->g_66.z", print_hash_value);
    transparent_crc(p_1055->g_66.w, "p_1055->g_66.w", print_hash_value);
    transparent_crc(p_1055->g_69, "p_1055->g_69", print_hash_value);
    transparent_crc(p_1055->g_73.s0, "p_1055->g_73.s0", print_hash_value);
    transparent_crc(p_1055->g_73.s1, "p_1055->g_73.s1", print_hash_value);
    transparent_crc(p_1055->g_73.s2, "p_1055->g_73.s2", print_hash_value);
    transparent_crc(p_1055->g_73.s3, "p_1055->g_73.s3", print_hash_value);
    transparent_crc(p_1055->g_73.s4, "p_1055->g_73.s4", print_hash_value);
    transparent_crc(p_1055->g_73.s5, "p_1055->g_73.s5", print_hash_value);
    transparent_crc(p_1055->g_73.s6, "p_1055->g_73.s6", print_hash_value);
    transparent_crc(p_1055->g_73.s7, "p_1055->g_73.s7", print_hash_value);
    transparent_crc(p_1055->g_73.s8, "p_1055->g_73.s8", print_hash_value);
    transparent_crc(p_1055->g_73.s9, "p_1055->g_73.s9", print_hash_value);
    transparent_crc(p_1055->g_73.sa, "p_1055->g_73.sa", print_hash_value);
    transparent_crc(p_1055->g_73.sb, "p_1055->g_73.sb", print_hash_value);
    transparent_crc(p_1055->g_73.sc, "p_1055->g_73.sc", print_hash_value);
    transparent_crc(p_1055->g_73.sd, "p_1055->g_73.sd", print_hash_value);
    transparent_crc(p_1055->g_73.se, "p_1055->g_73.se", print_hash_value);
    transparent_crc(p_1055->g_73.sf, "p_1055->g_73.sf", print_hash_value);
    transparent_crc(p_1055->g_78.f0, "p_1055->g_78.f0", print_hash_value);
    transparent_crc(p_1055->g_78.f1, "p_1055->g_78.f1", print_hash_value);
    transparent_crc(p_1055->g_78.f2.f0, "p_1055->g_78.f2.f0", print_hash_value);
    transparent_crc(p_1055->g_78.f2.f1, "p_1055->g_78.f2.f1", print_hash_value);
    transparent_crc(p_1055->g_78.f2.f2, "p_1055->g_78.f2.f2", print_hash_value);
    transparent_crc(p_1055->g_78.f2.f3, "p_1055->g_78.f2.f3", print_hash_value);
    transparent_crc(p_1055->g_78.f2.f4, "p_1055->g_78.f2.f4", print_hash_value);
    transparent_crc(p_1055->g_78.f2.f5, "p_1055->g_78.f2.f5", print_hash_value);
    transparent_crc(p_1055->g_78.f2.f6, "p_1055->g_78.f2.f6", print_hash_value);
    transparent_crc(p_1055->g_78.f2.f7, "p_1055->g_78.f2.f7", print_hash_value);
    transparent_crc(p_1055->g_78.f2.f8, "p_1055->g_78.f2.f8", print_hash_value);
    transparent_crc(p_1055->g_78.f2.f9, "p_1055->g_78.f2.f9", print_hash_value);
    transparent_crc(p_1055->g_96.x, "p_1055->g_96.x", print_hash_value);
    transparent_crc(p_1055->g_96.y, "p_1055->g_96.y", print_hash_value);
    transparent_crc(p_1055->g_96.z, "p_1055->g_96.z", print_hash_value);
    transparent_crc(p_1055->g_96.w, "p_1055->g_96.w", print_hash_value);
    transparent_crc(p_1055->g_97.s0, "p_1055->g_97.s0", print_hash_value);
    transparent_crc(p_1055->g_97.s1, "p_1055->g_97.s1", print_hash_value);
    transparent_crc(p_1055->g_97.s2, "p_1055->g_97.s2", print_hash_value);
    transparent_crc(p_1055->g_97.s3, "p_1055->g_97.s3", print_hash_value);
    transparent_crc(p_1055->g_97.s4, "p_1055->g_97.s4", print_hash_value);
    transparent_crc(p_1055->g_97.s5, "p_1055->g_97.s5", print_hash_value);
    transparent_crc(p_1055->g_97.s6, "p_1055->g_97.s6", print_hash_value);
    transparent_crc(p_1055->g_97.s7, "p_1055->g_97.s7", print_hash_value);
    transparent_crc(p_1055->g_118.s0, "p_1055->g_118.s0", print_hash_value);
    transparent_crc(p_1055->g_118.s1, "p_1055->g_118.s1", print_hash_value);
    transparent_crc(p_1055->g_118.s2, "p_1055->g_118.s2", print_hash_value);
    transparent_crc(p_1055->g_118.s3, "p_1055->g_118.s3", print_hash_value);
    transparent_crc(p_1055->g_118.s4, "p_1055->g_118.s4", print_hash_value);
    transparent_crc(p_1055->g_118.s5, "p_1055->g_118.s5", print_hash_value);
    transparent_crc(p_1055->g_118.s6, "p_1055->g_118.s6", print_hash_value);
    transparent_crc(p_1055->g_118.s7, "p_1055->g_118.s7", print_hash_value);
    transparent_crc(p_1055->g_135.x, "p_1055->g_135.x", print_hash_value);
    transparent_crc(p_1055->g_135.y, "p_1055->g_135.y", print_hash_value);
    transparent_crc(p_1055->g_135.z, "p_1055->g_135.z", print_hash_value);
    transparent_crc(p_1055->g_135.w, "p_1055->g_135.w", print_hash_value);
    transparent_crc(p_1055->g_142, "p_1055->g_142", print_hash_value);
    transparent_crc(p_1055->g_143, "p_1055->g_143", print_hash_value);
    transparent_crc(p_1055->g_154, "p_1055->g_154", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1055->g_159[i], "p_1055->g_159[i]", print_hash_value);

    }
    transparent_crc(p_1055->g_170, "p_1055->g_170", print_hash_value);
    transparent_crc(p_1055->g_192.s0, "p_1055->g_192.s0", print_hash_value);
    transparent_crc(p_1055->g_192.s1, "p_1055->g_192.s1", print_hash_value);
    transparent_crc(p_1055->g_192.s2, "p_1055->g_192.s2", print_hash_value);
    transparent_crc(p_1055->g_192.s3, "p_1055->g_192.s3", print_hash_value);
    transparent_crc(p_1055->g_192.s4, "p_1055->g_192.s4", print_hash_value);
    transparent_crc(p_1055->g_192.s5, "p_1055->g_192.s5", print_hash_value);
    transparent_crc(p_1055->g_192.s6, "p_1055->g_192.s6", print_hash_value);
    transparent_crc(p_1055->g_192.s7, "p_1055->g_192.s7", print_hash_value);
    transparent_crc(p_1055->g_192.s8, "p_1055->g_192.s8", print_hash_value);
    transparent_crc(p_1055->g_192.s9, "p_1055->g_192.s9", print_hash_value);
    transparent_crc(p_1055->g_192.sa, "p_1055->g_192.sa", print_hash_value);
    transparent_crc(p_1055->g_192.sb, "p_1055->g_192.sb", print_hash_value);
    transparent_crc(p_1055->g_192.sc, "p_1055->g_192.sc", print_hash_value);
    transparent_crc(p_1055->g_192.sd, "p_1055->g_192.sd", print_hash_value);
    transparent_crc(p_1055->g_192.se, "p_1055->g_192.se", print_hash_value);
    transparent_crc(p_1055->g_192.sf, "p_1055->g_192.sf", print_hash_value);
    transparent_crc(p_1055->g_195.f0, "p_1055->g_195.f0", print_hash_value);
    transparent_crc(p_1055->g_195.f1, "p_1055->g_195.f1", print_hash_value);
    transparent_crc(p_1055->g_195.f2, "p_1055->g_195.f2", print_hash_value);
    transparent_crc(p_1055->g_195.f3, "p_1055->g_195.f3", print_hash_value);
    transparent_crc(p_1055->g_195.f4, "p_1055->g_195.f4", print_hash_value);
    transparent_crc(p_1055->g_195.f5, "p_1055->g_195.f5", print_hash_value);
    transparent_crc(p_1055->g_195.f6, "p_1055->g_195.f6", print_hash_value);
    transparent_crc(p_1055->g_195.f7, "p_1055->g_195.f7", print_hash_value);
    transparent_crc(p_1055->g_195.f8, "p_1055->g_195.f8", print_hash_value);
    transparent_crc(p_1055->g_195.f9, "p_1055->g_195.f9", print_hash_value);
    transparent_crc(p_1055->g_237.f0, "p_1055->g_237.f0", print_hash_value);
    transparent_crc(p_1055->g_237.f1, "p_1055->g_237.f1", print_hash_value);
    transparent_crc(p_1055->g_237.f2, "p_1055->g_237.f2", print_hash_value);
    transparent_crc(p_1055->g_237.f3, "p_1055->g_237.f3", print_hash_value);
    transparent_crc(p_1055->g_237.f4, "p_1055->g_237.f4", print_hash_value);
    transparent_crc(p_1055->g_237.f5, "p_1055->g_237.f5", print_hash_value);
    transparent_crc(p_1055->g_237.f6, "p_1055->g_237.f6", print_hash_value);
    transparent_crc(p_1055->g_237.f7, "p_1055->g_237.f7", print_hash_value);
    transparent_crc(p_1055->g_237.f8, "p_1055->g_237.f8", print_hash_value);
    transparent_crc(p_1055->g_237.f9, "p_1055->g_237.f9", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1055->g_239[i].f0, "p_1055->g_239[i].f0", print_hash_value);
        transparent_crc(p_1055->g_239[i].f1, "p_1055->g_239[i].f1", print_hash_value);
        transparent_crc(p_1055->g_239[i].f2, "p_1055->g_239[i].f2", print_hash_value);
        transparent_crc(p_1055->g_239[i].f3, "p_1055->g_239[i].f3", print_hash_value);
        transparent_crc(p_1055->g_239[i].f4, "p_1055->g_239[i].f4", print_hash_value);
        transparent_crc(p_1055->g_239[i].f5, "p_1055->g_239[i].f5", print_hash_value);
        transparent_crc(p_1055->g_239[i].f6, "p_1055->g_239[i].f6", print_hash_value);
        transparent_crc(p_1055->g_239[i].f7, "p_1055->g_239[i].f7", print_hash_value);
        transparent_crc(p_1055->g_239[i].f8, "p_1055->g_239[i].f8", print_hash_value);
        transparent_crc(p_1055->g_239[i].f9, "p_1055->g_239[i].f9", print_hash_value);

    }
    transparent_crc(p_1055->g_311.s0, "p_1055->g_311.s0", print_hash_value);
    transparent_crc(p_1055->g_311.s1, "p_1055->g_311.s1", print_hash_value);
    transparent_crc(p_1055->g_311.s2, "p_1055->g_311.s2", print_hash_value);
    transparent_crc(p_1055->g_311.s3, "p_1055->g_311.s3", print_hash_value);
    transparent_crc(p_1055->g_311.s4, "p_1055->g_311.s4", print_hash_value);
    transparent_crc(p_1055->g_311.s5, "p_1055->g_311.s5", print_hash_value);
    transparent_crc(p_1055->g_311.s6, "p_1055->g_311.s6", print_hash_value);
    transparent_crc(p_1055->g_311.s7, "p_1055->g_311.s7", print_hash_value);
    transparent_crc(p_1055->g_311.s8, "p_1055->g_311.s8", print_hash_value);
    transparent_crc(p_1055->g_311.s9, "p_1055->g_311.s9", print_hash_value);
    transparent_crc(p_1055->g_311.sa, "p_1055->g_311.sa", print_hash_value);
    transparent_crc(p_1055->g_311.sb, "p_1055->g_311.sb", print_hash_value);
    transparent_crc(p_1055->g_311.sc, "p_1055->g_311.sc", print_hash_value);
    transparent_crc(p_1055->g_311.sd, "p_1055->g_311.sd", print_hash_value);
    transparent_crc(p_1055->g_311.se, "p_1055->g_311.se", print_hash_value);
    transparent_crc(p_1055->g_311.sf, "p_1055->g_311.sf", print_hash_value);
    transparent_crc(p_1055->g_312.x, "p_1055->g_312.x", print_hash_value);
    transparent_crc(p_1055->g_312.y, "p_1055->g_312.y", print_hash_value);
    transparent_crc(p_1055->g_312.z, "p_1055->g_312.z", print_hash_value);
    transparent_crc(p_1055->g_312.w, "p_1055->g_312.w", print_hash_value);
    transparent_crc(p_1055->g_320.x, "p_1055->g_320.x", print_hash_value);
    transparent_crc(p_1055->g_320.y, "p_1055->g_320.y", print_hash_value);
    transparent_crc(p_1055->g_321.s0, "p_1055->g_321.s0", print_hash_value);
    transparent_crc(p_1055->g_321.s1, "p_1055->g_321.s1", print_hash_value);
    transparent_crc(p_1055->g_321.s2, "p_1055->g_321.s2", print_hash_value);
    transparent_crc(p_1055->g_321.s3, "p_1055->g_321.s3", print_hash_value);
    transparent_crc(p_1055->g_321.s4, "p_1055->g_321.s4", print_hash_value);
    transparent_crc(p_1055->g_321.s5, "p_1055->g_321.s5", print_hash_value);
    transparent_crc(p_1055->g_321.s6, "p_1055->g_321.s6", print_hash_value);
    transparent_crc(p_1055->g_321.s7, "p_1055->g_321.s7", print_hash_value);
    transparent_crc(p_1055->g_321.s8, "p_1055->g_321.s8", print_hash_value);
    transparent_crc(p_1055->g_321.s9, "p_1055->g_321.s9", print_hash_value);
    transparent_crc(p_1055->g_321.sa, "p_1055->g_321.sa", print_hash_value);
    transparent_crc(p_1055->g_321.sb, "p_1055->g_321.sb", print_hash_value);
    transparent_crc(p_1055->g_321.sc, "p_1055->g_321.sc", print_hash_value);
    transparent_crc(p_1055->g_321.sd, "p_1055->g_321.sd", print_hash_value);
    transparent_crc(p_1055->g_321.se, "p_1055->g_321.se", print_hash_value);
    transparent_crc(p_1055->g_321.sf, "p_1055->g_321.sf", print_hash_value);
    transparent_crc(p_1055->g_342.x, "p_1055->g_342.x", print_hash_value);
    transparent_crc(p_1055->g_342.y, "p_1055->g_342.y", print_hash_value);
    transparent_crc(p_1055->g_344.s0, "p_1055->g_344.s0", print_hash_value);
    transparent_crc(p_1055->g_344.s1, "p_1055->g_344.s1", print_hash_value);
    transparent_crc(p_1055->g_344.s2, "p_1055->g_344.s2", print_hash_value);
    transparent_crc(p_1055->g_344.s3, "p_1055->g_344.s3", print_hash_value);
    transparent_crc(p_1055->g_344.s4, "p_1055->g_344.s4", print_hash_value);
    transparent_crc(p_1055->g_344.s5, "p_1055->g_344.s5", print_hash_value);
    transparent_crc(p_1055->g_344.s6, "p_1055->g_344.s6", print_hash_value);
    transparent_crc(p_1055->g_344.s7, "p_1055->g_344.s7", print_hash_value);
    transparent_crc(p_1055->g_345.s0, "p_1055->g_345.s0", print_hash_value);
    transparent_crc(p_1055->g_345.s1, "p_1055->g_345.s1", print_hash_value);
    transparent_crc(p_1055->g_345.s2, "p_1055->g_345.s2", print_hash_value);
    transparent_crc(p_1055->g_345.s3, "p_1055->g_345.s3", print_hash_value);
    transparent_crc(p_1055->g_345.s4, "p_1055->g_345.s4", print_hash_value);
    transparent_crc(p_1055->g_345.s5, "p_1055->g_345.s5", print_hash_value);
    transparent_crc(p_1055->g_345.s6, "p_1055->g_345.s6", print_hash_value);
    transparent_crc(p_1055->g_345.s7, "p_1055->g_345.s7", print_hash_value);
    transparent_crc(p_1055->g_345.s8, "p_1055->g_345.s8", print_hash_value);
    transparent_crc(p_1055->g_345.s9, "p_1055->g_345.s9", print_hash_value);
    transparent_crc(p_1055->g_345.sa, "p_1055->g_345.sa", print_hash_value);
    transparent_crc(p_1055->g_345.sb, "p_1055->g_345.sb", print_hash_value);
    transparent_crc(p_1055->g_345.sc, "p_1055->g_345.sc", print_hash_value);
    transparent_crc(p_1055->g_345.sd, "p_1055->g_345.sd", print_hash_value);
    transparent_crc(p_1055->g_345.se, "p_1055->g_345.se", print_hash_value);
    transparent_crc(p_1055->g_345.sf, "p_1055->g_345.sf", print_hash_value);
    transparent_crc(p_1055->g_353.s0, "p_1055->g_353.s0", print_hash_value);
    transparent_crc(p_1055->g_353.s1, "p_1055->g_353.s1", print_hash_value);
    transparent_crc(p_1055->g_353.s2, "p_1055->g_353.s2", print_hash_value);
    transparent_crc(p_1055->g_353.s3, "p_1055->g_353.s3", print_hash_value);
    transparent_crc(p_1055->g_353.s4, "p_1055->g_353.s4", print_hash_value);
    transparent_crc(p_1055->g_353.s5, "p_1055->g_353.s5", print_hash_value);
    transparent_crc(p_1055->g_353.s6, "p_1055->g_353.s6", print_hash_value);
    transparent_crc(p_1055->g_353.s7, "p_1055->g_353.s7", print_hash_value);
    transparent_crc(p_1055->g_354.s0, "p_1055->g_354.s0", print_hash_value);
    transparent_crc(p_1055->g_354.s1, "p_1055->g_354.s1", print_hash_value);
    transparent_crc(p_1055->g_354.s2, "p_1055->g_354.s2", print_hash_value);
    transparent_crc(p_1055->g_354.s3, "p_1055->g_354.s3", print_hash_value);
    transparent_crc(p_1055->g_354.s4, "p_1055->g_354.s4", print_hash_value);
    transparent_crc(p_1055->g_354.s5, "p_1055->g_354.s5", print_hash_value);
    transparent_crc(p_1055->g_354.s6, "p_1055->g_354.s6", print_hash_value);
    transparent_crc(p_1055->g_354.s7, "p_1055->g_354.s7", print_hash_value);
    transparent_crc(p_1055->g_356.s0, "p_1055->g_356.s0", print_hash_value);
    transparent_crc(p_1055->g_356.s1, "p_1055->g_356.s1", print_hash_value);
    transparent_crc(p_1055->g_356.s2, "p_1055->g_356.s2", print_hash_value);
    transparent_crc(p_1055->g_356.s3, "p_1055->g_356.s3", print_hash_value);
    transparent_crc(p_1055->g_356.s4, "p_1055->g_356.s4", print_hash_value);
    transparent_crc(p_1055->g_356.s5, "p_1055->g_356.s5", print_hash_value);
    transparent_crc(p_1055->g_356.s6, "p_1055->g_356.s6", print_hash_value);
    transparent_crc(p_1055->g_356.s7, "p_1055->g_356.s7", print_hash_value);
    transparent_crc(p_1055->g_357.x, "p_1055->g_357.x", print_hash_value);
    transparent_crc(p_1055->g_357.y, "p_1055->g_357.y", print_hash_value);
    transparent_crc(p_1055->g_379, "p_1055->g_379", print_hash_value);
    transparent_crc(p_1055->g_435.s0, "p_1055->g_435.s0", print_hash_value);
    transparent_crc(p_1055->g_435.s1, "p_1055->g_435.s1", print_hash_value);
    transparent_crc(p_1055->g_435.s2, "p_1055->g_435.s2", print_hash_value);
    transparent_crc(p_1055->g_435.s3, "p_1055->g_435.s3", print_hash_value);
    transparent_crc(p_1055->g_435.s4, "p_1055->g_435.s4", print_hash_value);
    transparent_crc(p_1055->g_435.s5, "p_1055->g_435.s5", print_hash_value);
    transparent_crc(p_1055->g_435.s6, "p_1055->g_435.s6", print_hash_value);
    transparent_crc(p_1055->g_435.s7, "p_1055->g_435.s7", print_hash_value);
    transparent_crc(p_1055->g_445.x, "p_1055->g_445.x", print_hash_value);
    transparent_crc(p_1055->g_445.y, "p_1055->g_445.y", print_hash_value);
    transparent_crc(p_1055->g_463.f0, "p_1055->g_463.f0", print_hash_value);
    transparent_crc(p_1055->g_463.f1, "p_1055->g_463.f1", print_hash_value);
    transparent_crc(p_1055->g_463.f2, "p_1055->g_463.f2", print_hash_value);
    transparent_crc(p_1055->g_463.f3, "p_1055->g_463.f3", print_hash_value);
    transparent_crc(p_1055->g_463.f4, "p_1055->g_463.f4", print_hash_value);
    transparent_crc(p_1055->g_463.f5, "p_1055->g_463.f5", print_hash_value);
    transparent_crc(p_1055->g_463.f6, "p_1055->g_463.f6", print_hash_value);
    transparent_crc(p_1055->g_463.f7, "p_1055->g_463.f7", print_hash_value);
    transparent_crc(p_1055->g_463.f8, "p_1055->g_463.f8", print_hash_value);
    transparent_crc(p_1055->g_463.f9, "p_1055->g_463.f9", print_hash_value);
    transparent_crc(p_1055->g_469.f0, "p_1055->g_469.f0", print_hash_value);
    transparent_crc(p_1055->g_469.f1, "p_1055->g_469.f1", print_hash_value);
    transparent_crc(p_1055->g_469.f2.f0, "p_1055->g_469.f2.f0", print_hash_value);
    transparent_crc(p_1055->g_469.f2.f1, "p_1055->g_469.f2.f1", print_hash_value);
    transparent_crc(p_1055->g_469.f2.f2, "p_1055->g_469.f2.f2", print_hash_value);
    transparent_crc(p_1055->g_469.f2.f3, "p_1055->g_469.f2.f3", print_hash_value);
    transparent_crc(p_1055->g_469.f2.f4, "p_1055->g_469.f2.f4", print_hash_value);
    transparent_crc(p_1055->g_469.f2.f5, "p_1055->g_469.f2.f5", print_hash_value);
    transparent_crc(p_1055->g_469.f2.f6, "p_1055->g_469.f2.f6", print_hash_value);
    transparent_crc(p_1055->g_469.f2.f7, "p_1055->g_469.f2.f7", print_hash_value);
    transparent_crc(p_1055->g_469.f2.f8, "p_1055->g_469.f2.f8", print_hash_value);
    transparent_crc(p_1055->g_469.f2.f9, "p_1055->g_469.f2.f9", print_hash_value);
    transparent_crc(p_1055->g_500.x, "p_1055->g_500.x", print_hash_value);
    transparent_crc(p_1055->g_500.y, "p_1055->g_500.y", print_hash_value);
    transparent_crc(p_1055->g_503.s0, "p_1055->g_503.s0", print_hash_value);
    transparent_crc(p_1055->g_503.s1, "p_1055->g_503.s1", print_hash_value);
    transparent_crc(p_1055->g_503.s2, "p_1055->g_503.s2", print_hash_value);
    transparent_crc(p_1055->g_503.s3, "p_1055->g_503.s3", print_hash_value);
    transparent_crc(p_1055->g_503.s4, "p_1055->g_503.s4", print_hash_value);
    transparent_crc(p_1055->g_503.s5, "p_1055->g_503.s5", print_hash_value);
    transparent_crc(p_1055->g_503.s6, "p_1055->g_503.s6", print_hash_value);
    transparent_crc(p_1055->g_503.s7, "p_1055->g_503.s7", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1055->g_557[i][j].f0, "p_1055->g_557[i][j].f0", print_hash_value);
            transparent_crc(p_1055->g_557[i][j].f1, "p_1055->g_557[i][j].f1", print_hash_value);
            transparent_crc(p_1055->g_557[i][j].f2.f0, "p_1055->g_557[i][j].f2.f0", print_hash_value);
            transparent_crc(p_1055->g_557[i][j].f2.f1, "p_1055->g_557[i][j].f2.f1", print_hash_value);
            transparent_crc(p_1055->g_557[i][j].f2.f2, "p_1055->g_557[i][j].f2.f2", print_hash_value);
            transparent_crc(p_1055->g_557[i][j].f2.f3, "p_1055->g_557[i][j].f2.f3", print_hash_value);
            transparent_crc(p_1055->g_557[i][j].f2.f4, "p_1055->g_557[i][j].f2.f4", print_hash_value);
            transparent_crc(p_1055->g_557[i][j].f2.f5, "p_1055->g_557[i][j].f2.f5", print_hash_value);
            transparent_crc(p_1055->g_557[i][j].f2.f6, "p_1055->g_557[i][j].f2.f6", print_hash_value);
            transparent_crc(p_1055->g_557[i][j].f2.f7, "p_1055->g_557[i][j].f2.f7", print_hash_value);
            transparent_crc(p_1055->g_557[i][j].f2.f8, "p_1055->g_557[i][j].f2.f8", print_hash_value);
            transparent_crc(p_1055->g_557[i][j].f2.f9, "p_1055->g_557[i][j].f2.f9", print_hash_value);

        }
    }
    transparent_crc(p_1055->g_563.s0, "p_1055->g_563.s0", print_hash_value);
    transparent_crc(p_1055->g_563.s1, "p_1055->g_563.s1", print_hash_value);
    transparent_crc(p_1055->g_563.s2, "p_1055->g_563.s2", print_hash_value);
    transparent_crc(p_1055->g_563.s3, "p_1055->g_563.s3", print_hash_value);
    transparent_crc(p_1055->g_563.s4, "p_1055->g_563.s4", print_hash_value);
    transparent_crc(p_1055->g_563.s5, "p_1055->g_563.s5", print_hash_value);
    transparent_crc(p_1055->g_563.s6, "p_1055->g_563.s6", print_hash_value);
    transparent_crc(p_1055->g_563.s7, "p_1055->g_563.s7", print_hash_value);
    transparent_crc(p_1055->g_582.x, "p_1055->g_582.x", print_hash_value);
    transparent_crc(p_1055->g_582.y, "p_1055->g_582.y", print_hash_value);
    transparent_crc(p_1055->g_585.x, "p_1055->g_585.x", print_hash_value);
    transparent_crc(p_1055->g_585.y, "p_1055->g_585.y", print_hash_value);
    transparent_crc(p_1055->g_586.x, "p_1055->g_586.x", print_hash_value);
    transparent_crc(p_1055->g_586.y, "p_1055->g_586.y", print_hash_value);
    transparent_crc(p_1055->g_586.z, "p_1055->g_586.z", print_hash_value);
    transparent_crc(p_1055->g_586.w, "p_1055->g_586.w", print_hash_value);
    transparent_crc(p_1055->g_626.x, "p_1055->g_626.x", print_hash_value);
    transparent_crc(p_1055->g_626.y, "p_1055->g_626.y", print_hash_value);
    transparent_crc(p_1055->g_626.z, "p_1055->g_626.z", print_hash_value);
    transparent_crc(p_1055->g_626.w, "p_1055->g_626.w", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1055->g_650[i].f0, "p_1055->g_650[i].f0", print_hash_value);
        transparent_crc(p_1055->g_650[i].f1, "p_1055->g_650[i].f1", print_hash_value);
        transparent_crc(p_1055->g_650[i].f2.f0, "p_1055->g_650[i].f2.f0", print_hash_value);
        transparent_crc(p_1055->g_650[i].f2.f1, "p_1055->g_650[i].f2.f1", print_hash_value);
        transparent_crc(p_1055->g_650[i].f2.f2, "p_1055->g_650[i].f2.f2", print_hash_value);
        transparent_crc(p_1055->g_650[i].f2.f3, "p_1055->g_650[i].f2.f3", print_hash_value);
        transparent_crc(p_1055->g_650[i].f2.f4, "p_1055->g_650[i].f2.f4", print_hash_value);
        transparent_crc(p_1055->g_650[i].f2.f5, "p_1055->g_650[i].f2.f5", print_hash_value);
        transparent_crc(p_1055->g_650[i].f2.f6, "p_1055->g_650[i].f2.f6", print_hash_value);
        transparent_crc(p_1055->g_650[i].f2.f7, "p_1055->g_650[i].f2.f7", print_hash_value);
        transparent_crc(p_1055->g_650[i].f2.f8, "p_1055->g_650[i].f2.f8", print_hash_value);
        transparent_crc(p_1055->g_650[i].f2.f9, "p_1055->g_650[i].f2.f9", print_hash_value);

    }
    transparent_crc(p_1055->g_668.s0, "p_1055->g_668.s0", print_hash_value);
    transparent_crc(p_1055->g_668.s1, "p_1055->g_668.s1", print_hash_value);
    transparent_crc(p_1055->g_668.s2, "p_1055->g_668.s2", print_hash_value);
    transparent_crc(p_1055->g_668.s3, "p_1055->g_668.s3", print_hash_value);
    transparent_crc(p_1055->g_668.s4, "p_1055->g_668.s4", print_hash_value);
    transparent_crc(p_1055->g_668.s5, "p_1055->g_668.s5", print_hash_value);
    transparent_crc(p_1055->g_668.s6, "p_1055->g_668.s6", print_hash_value);
    transparent_crc(p_1055->g_668.s7, "p_1055->g_668.s7", print_hash_value);
    transparent_crc(p_1055->g_668.s8, "p_1055->g_668.s8", print_hash_value);
    transparent_crc(p_1055->g_668.s9, "p_1055->g_668.s9", print_hash_value);
    transparent_crc(p_1055->g_668.sa, "p_1055->g_668.sa", print_hash_value);
    transparent_crc(p_1055->g_668.sb, "p_1055->g_668.sb", print_hash_value);
    transparent_crc(p_1055->g_668.sc, "p_1055->g_668.sc", print_hash_value);
    transparent_crc(p_1055->g_668.sd, "p_1055->g_668.sd", print_hash_value);
    transparent_crc(p_1055->g_668.se, "p_1055->g_668.se", print_hash_value);
    transparent_crc(p_1055->g_668.sf, "p_1055->g_668.sf", print_hash_value);
    transparent_crc(p_1055->g_675.x, "p_1055->g_675.x", print_hash_value);
    transparent_crc(p_1055->g_675.y, "p_1055->g_675.y", print_hash_value);
    transparent_crc(p_1055->g_678.s0, "p_1055->g_678.s0", print_hash_value);
    transparent_crc(p_1055->g_678.s1, "p_1055->g_678.s1", print_hash_value);
    transparent_crc(p_1055->g_678.s2, "p_1055->g_678.s2", print_hash_value);
    transparent_crc(p_1055->g_678.s3, "p_1055->g_678.s3", print_hash_value);
    transparent_crc(p_1055->g_678.s4, "p_1055->g_678.s4", print_hash_value);
    transparent_crc(p_1055->g_678.s5, "p_1055->g_678.s5", print_hash_value);
    transparent_crc(p_1055->g_678.s6, "p_1055->g_678.s6", print_hash_value);
    transparent_crc(p_1055->g_678.s7, "p_1055->g_678.s7", print_hash_value);
    transparent_crc(p_1055->g_684.s0, "p_1055->g_684.s0", print_hash_value);
    transparent_crc(p_1055->g_684.s1, "p_1055->g_684.s1", print_hash_value);
    transparent_crc(p_1055->g_684.s2, "p_1055->g_684.s2", print_hash_value);
    transparent_crc(p_1055->g_684.s3, "p_1055->g_684.s3", print_hash_value);
    transparent_crc(p_1055->g_684.s4, "p_1055->g_684.s4", print_hash_value);
    transparent_crc(p_1055->g_684.s5, "p_1055->g_684.s5", print_hash_value);
    transparent_crc(p_1055->g_684.s6, "p_1055->g_684.s6", print_hash_value);
    transparent_crc(p_1055->g_684.s7, "p_1055->g_684.s7", print_hash_value);
    transparent_crc(p_1055->g_684.s8, "p_1055->g_684.s8", print_hash_value);
    transparent_crc(p_1055->g_684.s9, "p_1055->g_684.s9", print_hash_value);
    transparent_crc(p_1055->g_684.sa, "p_1055->g_684.sa", print_hash_value);
    transparent_crc(p_1055->g_684.sb, "p_1055->g_684.sb", print_hash_value);
    transparent_crc(p_1055->g_684.sc, "p_1055->g_684.sc", print_hash_value);
    transparent_crc(p_1055->g_684.sd, "p_1055->g_684.sd", print_hash_value);
    transparent_crc(p_1055->g_684.se, "p_1055->g_684.se", print_hash_value);
    transparent_crc(p_1055->g_684.sf, "p_1055->g_684.sf", print_hash_value);
    transparent_crc(p_1055->g_724.s0, "p_1055->g_724.s0", print_hash_value);
    transparent_crc(p_1055->g_724.s1, "p_1055->g_724.s1", print_hash_value);
    transparent_crc(p_1055->g_724.s2, "p_1055->g_724.s2", print_hash_value);
    transparent_crc(p_1055->g_724.s3, "p_1055->g_724.s3", print_hash_value);
    transparent_crc(p_1055->g_724.s4, "p_1055->g_724.s4", print_hash_value);
    transparent_crc(p_1055->g_724.s5, "p_1055->g_724.s5", print_hash_value);
    transparent_crc(p_1055->g_724.s6, "p_1055->g_724.s6", print_hash_value);
    transparent_crc(p_1055->g_724.s7, "p_1055->g_724.s7", print_hash_value);
    transparent_crc(p_1055->g_724.s8, "p_1055->g_724.s8", print_hash_value);
    transparent_crc(p_1055->g_724.s9, "p_1055->g_724.s9", print_hash_value);
    transparent_crc(p_1055->g_724.sa, "p_1055->g_724.sa", print_hash_value);
    transparent_crc(p_1055->g_724.sb, "p_1055->g_724.sb", print_hash_value);
    transparent_crc(p_1055->g_724.sc, "p_1055->g_724.sc", print_hash_value);
    transparent_crc(p_1055->g_724.sd, "p_1055->g_724.sd", print_hash_value);
    transparent_crc(p_1055->g_724.se, "p_1055->g_724.se", print_hash_value);
    transparent_crc(p_1055->g_724.sf, "p_1055->g_724.sf", print_hash_value);
    transparent_crc(p_1055->g_732.x, "p_1055->g_732.x", print_hash_value);
    transparent_crc(p_1055->g_732.y, "p_1055->g_732.y", print_hash_value);
    transparent_crc(p_1055->g_732.z, "p_1055->g_732.z", print_hash_value);
    transparent_crc(p_1055->g_732.w, "p_1055->g_732.w", print_hash_value);
    transparent_crc(p_1055->g_746.f0, "p_1055->g_746.f0", print_hash_value);
    transparent_crc(p_1055->g_746.f1, "p_1055->g_746.f1", print_hash_value);
    transparent_crc(p_1055->g_746.f2.f0, "p_1055->g_746.f2.f0", print_hash_value);
    transparent_crc(p_1055->g_746.f2.f1, "p_1055->g_746.f2.f1", print_hash_value);
    transparent_crc(p_1055->g_746.f2.f2, "p_1055->g_746.f2.f2", print_hash_value);
    transparent_crc(p_1055->g_746.f2.f3, "p_1055->g_746.f2.f3", print_hash_value);
    transparent_crc(p_1055->g_746.f2.f4, "p_1055->g_746.f2.f4", print_hash_value);
    transparent_crc(p_1055->g_746.f2.f5, "p_1055->g_746.f2.f5", print_hash_value);
    transparent_crc(p_1055->g_746.f2.f6, "p_1055->g_746.f2.f6", print_hash_value);
    transparent_crc(p_1055->g_746.f2.f7, "p_1055->g_746.f2.f7", print_hash_value);
    transparent_crc(p_1055->g_746.f2.f8, "p_1055->g_746.f2.f8", print_hash_value);
    transparent_crc(p_1055->g_746.f2.f9, "p_1055->g_746.f2.f9", print_hash_value);
    transparent_crc(p_1055->g_755.x, "p_1055->g_755.x", print_hash_value);
    transparent_crc(p_1055->g_755.y, "p_1055->g_755.y", print_hash_value);
    transparent_crc(p_1055->g_756.x, "p_1055->g_756.x", print_hash_value);
    transparent_crc(p_1055->g_756.y, "p_1055->g_756.y", print_hash_value);
    transparent_crc(p_1055->g_766, "p_1055->g_766", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1055->g_767[i].f0, "p_1055->g_767[i].f0", print_hash_value);
        transparent_crc(p_1055->g_767[i].f1, "p_1055->g_767[i].f1", print_hash_value);
        transparent_crc(p_1055->g_767[i].f2.f0, "p_1055->g_767[i].f2.f0", print_hash_value);
        transparent_crc(p_1055->g_767[i].f2.f1, "p_1055->g_767[i].f2.f1", print_hash_value);
        transparent_crc(p_1055->g_767[i].f2.f2, "p_1055->g_767[i].f2.f2", print_hash_value);
        transparent_crc(p_1055->g_767[i].f2.f3, "p_1055->g_767[i].f2.f3", print_hash_value);
        transparent_crc(p_1055->g_767[i].f2.f4, "p_1055->g_767[i].f2.f4", print_hash_value);
        transparent_crc(p_1055->g_767[i].f2.f5, "p_1055->g_767[i].f2.f5", print_hash_value);
        transparent_crc(p_1055->g_767[i].f2.f6, "p_1055->g_767[i].f2.f6", print_hash_value);
        transparent_crc(p_1055->g_767[i].f2.f7, "p_1055->g_767[i].f2.f7", print_hash_value);
        transparent_crc(p_1055->g_767[i].f2.f8, "p_1055->g_767[i].f2.f8", print_hash_value);
        transparent_crc(p_1055->g_767[i].f2.f9, "p_1055->g_767[i].f2.f9", print_hash_value);

    }
    transparent_crc(p_1055->g_784.x, "p_1055->g_784.x", print_hash_value);
    transparent_crc(p_1055->g_784.y, "p_1055->g_784.y", print_hash_value);
    transparent_crc(p_1055->g_794, "p_1055->g_794", print_hash_value);
    transparent_crc(p_1055->g_876, "p_1055->g_876", print_hash_value);
    transparent_crc(p_1055->g_884.s0, "p_1055->g_884.s0", print_hash_value);
    transparent_crc(p_1055->g_884.s1, "p_1055->g_884.s1", print_hash_value);
    transparent_crc(p_1055->g_884.s2, "p_1055->g_884.s2", print_hash_value);
    transparent_crc(p_1055->g_884.s3, "p_1055->g_884.s3", print_hash_value);
    transparent_crc(p_1055->g_884.s4, "p_1055->g_884.s4", print_hash_value);
    transparent_crc(p_1055->g_884.s5, "p_1055->g_884.s5", print_hash_value);
    transparent_crc(p_1055->g_884.s6, "p_1055->g_884.s6", print_hash_value);
    transparent_crc(p_1055->g_884.s7, "p_1055->g_884.s7", print_hash_value);
    transparent_crc(p_1055->g_896.s0, "p_1055->g_896.s0", print_hash_value);
    transparent_crc(p_1055->g_896.s1, "p_1055->g_896.s1", print_hash_value);
    transparent_crc(p_1055->g_896.s2, "p_1055->g_896.s2", print_hash_value);
    transparent_crc(p_1055->g_896.s3, "p_1055->g_896.s3", print_hash_value);
    transparent_crc(p_1055->g_896.s4, "p_1055->g_896.s4", print_hash_value);
    transparent_crc(p_1055->g_896.s5, "p_1055->g_896.s5", print_hash_value);
    transparent_crc(p_1055->g_896.s6, "p_1055->g_896.s6", print_hash_value);
    transparent_crc(p_1055->g_896.s7, "p_1055->g_896.s7", print_hash_value);
    transparent_crc(p_1055->g_896.s8, "p_1055->g_896.s8", print_hash_value);
    transparent_crc(p_1055->g_896.s9, "p_1055->g_896.s9", print_hash_value);
    transparent_crc(p_1055->g_896.sa, "p_1055->g_896.sa", print_hash_value);
    transparent_crc(p_1055->g_896.sb, "p_1055->g_896.sb", print_hash_value);
    transparent_crc(p_1055->g_896.sc, "p_1055->g_896.sc", print_hash_value);
    transparent_crc(p_1055->g_896.sd, "p_1055->g_896.sd", print_hash_value);
    transparent_crc(p_1055->g_896.se, "p_1055->g_896.se", print_hash_value);
    transparent_crc(p_1055->g_896.sf, "p_1055->g_896.sf", print_hash_value);
    transparent_crc(p_1055->g_904.s0, "p_1055->g_904.s0", print_hash_value);
    transparent_crc(p_1055->g_904.s1, "p_1055->g_904.s1", print_hash_value);
    transparent_crc(p_1055->g_904.s2, "p_1055->g_904.s2", print_hash_value);
    transparent_crc(p_1055->g_904.s3, "p_1055->g_904.s3", print_hash_value);
    transparent_crc(p_1055->g_904.s4, "p_1055->g_904.s4", print_hash_value);
    transparent_crc(p_1055->g_904.s5, "p_1055->g_904.s5", print_hash_value);
    transparent_crc(p_1055->g_904.s6, "p_1055->g_904.s6", print_hash_value);
    transparent_crc(p_1055->g_904.s7, "p_1055->g_904.s7", print_hash_value);
    transparent_crc(p_1055->g_904.s8, "p_1055->g_904.s8", print_hash_value);
    transparent_crc(p_1055->g_904.s9, "p_1055->g_904.s9", print_hash_value);
    transparent_crc(p_1055->g_904.sa, "p_1055->g_904.sa", print_hash_value);
    transparent_crc(p_1055->g_904.sb, "p_1055->g_904.sb", print_hash_value);
    transparent_crc(p_1055->g_904.sc, "p_1055->g_904.sc", print_hash_value);
    transparent_crc(p_1055->g_904.sd, "p_1055->g_904.sd", print_hash_value);
    transparent_crc(p_1055->g_904.se, "p_1055->g_904.se", print_hash_value);
    transparent_crc(p_1055->g_904.sf, "p_1055->g_904.sf", print_hash_value);
    transparent_crc(p_1055->g_912.f0, "p_1055->g_912.f0", print_hash_value);
    transparent_crc(p_1055->g_912.f1, "p_1055->g_912.f1", print_hash_value);
    transparent_crc(p_1055->g_912.f2.f0, "p_1055->g_912.f2.f0", print_hash_value);
    transparent_crc(p_1055->g_912.f2.f1, "p_1055->g_912.f2.f1", print_hash_value);
    transparent_crc(p_1055->g_912.f2.f2, "p_1055->g_912.f2.f2", print_hash_value);
    transparent_crc(p_1055->g_912.f2.f3, "p_1055->g_912.f2.f3", print_hash_value);
    transparent_crc(p_1055->g_912.f2.f4, "p_1055->g_912.f2.f4", print_hash_value);
    transparent_crc(p_1055->g_912.f2.f5, "p_1055->g_912.f2.f5", print_hash_value);
    transparent_crc(p_1055->g_912.f2.f6, "p_1055->g_912.f2.f6", print_hash_value);
    transparent_crc(p_1055->g_912.f2.f7, "p_1055->g_912.f2.f7", print_hash_value);
    transparent_crc(p_1055->g_912.f2.f8, "p_1055->g_912.f2.f8", print_hash_value);
    transparent_crc(p_1055->g_912.f2.f9, "p_1055->g_912.f2.f9", print_hash_value);
    transparent_crc(p_1055->g_918.x, "p_1055->g_918.x", print_hash_value);
    transparent_crc(p_1055->g_918.y, "p_1055->g_918.y", print_hash_value);
    transparent_crc(p_1055->g_918.z, "p_1055->g_918.z", print_hash_value);
    transparent_crc(p_1055->g_918.w, "p_1055->g_918.w", print_hash_value);
    transparent_crc(p_1055->g_945.s0, "p_1055->g_945.s0", print_hash_value);
    transparent_crc(p_1055->g_945.s1, "p_1055->g_945.s1", print_hash_value);
    transparent_crc(p_1055->g_945.s2, "p_1055->g_945.s2", print_hash_value);
    transparent_crc(p_1055->g_945.s3, "p_1055->g_945.s3", print_hash_value);
    transparent_crc(p_1055->g_945.s4, "p_1055->g_945.s4", print_hash_value);
    transparent_crc(p_1055->g_945.s5, "p_1055->g_945.s5", print_hash_value);
    transparent_crc(p_1055->g_945.s6, "p_1055->g_945.s6", print_hash_value);
    transparent_crc(p_1055->g_945.s7, "p_1055->g_945.s7", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1055->g_962[i][j][k].f0, "p_1055->g_962[i][j][k].f0", print_hash_value);
                transparent_crc(p_1055->g_962[i][j][k].f1, "p_1055->g_962[i][j][k].f1", print_hash_value);
                transparent_crc(p_1055->g_962[i][j][k].f2.f0, "p_1055->g_962[i][j][k].f2.f0", print_hash_value);
                transparent_crc(p_1055->g_962[i][j][k].f2.f1, "p_1055->g_962[i][j][k].f2.f1", print_hash_value);
                transparent_crc(p_1055->g_962[i][j][k].f2.f2, "p_1055->g_962[i][j][k].f2.f2", print_hash_value);
                transparent_crc(p_1055->g_962[i][j][k].f2.f3, "p_1055->g_962[i][j][k].f2.f3", print_hash_value);
                transparent_crc(p_1055->g_962[i][j][k].f2.f4, "p_1055->g_962[i][j][k].f2.f4", print_hash_value);
                transparent_crc(p_1055->g_962[i][j][k].f2.f5, "p_1055->g_962[i][j][k].f2.f5", print_hash_value);
                transparent_crc(p_1055->g_962[i][j][k].f2.f6, "p_1055->g_962[i][j][k].f2.f6", print_hash_value);
                transparent_crc(p_1055->g_962[i][j][k].f2.f7, "p_1055->g_962[i][j][k].f2.f7", print_hash_value);
                transparent_crc(p_1055->g_962[i][j][k].f2.f8, "p_1055->g_962[i][j][k].f2.f8", print_hash_value);
                transparent_crc(p_1055->g_962[i][j][k].f2.f9, "p_1055->g_962[i][j][k].f2.f9", print_hash_value);

            }
        }
    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1055->g_980[i].f0, "p_1055->g_980[i].f0", print_hash_value);
        transparent_crc(p_1055->g_980[i].f1, "p_1055->g_980[i].f1", print_hash_value);
        transparent_crc(p_1055->g_980[i].f2.f0, "p_1055->g_980[i].f2.f0", print_hash_value);
        transparent_crc(p_1055->g_980[i].f2.f1, "p_1055->g_980[i].f2.f1", print_hash_value);
        transparent_crc(p_1055->g_980[i].f2.f2, "p_1055->g_980[i].f2.f2", print_hash_value);
        transparent_crc(p_1055->g_980[i].f2.f3, "p_1055->g_980[i].f2.f3", print_hash_value);
        transparent_crc(p_1055->g_980[i].f2.f4, "p_1055->g_980[i].f2.f4", print_hash_value);
        transparent_crc(p_1055->g_980[i].f2.f5, "p_1055->g_980[i].f2.f5", print_hash_value);
        transparent_crc(p_1055->g_980[i].f2.f6, "p_1055->g_980[i].f2.f6", print_hash_value);
        transparent_crc(p_1055->g_980[i].f2.f7, "p_1055->g_980[i].f2.f7", print_hash_value);
        transparent_crc(p_1055->g_980[i].f2.f8, "p_1055->g_980[i].f2.f8", print_hash_value);
        transparent_crc(p_1055->g_980[i].f2.f9, "p_1055->g_980[i].f2.f9", print_hash_value);

    }
    transparent_crc(p_1055->g_1004.s0, "p_1055->g_1004.s0", print_hash_value);
    transparent_crc(p_1055->g_1004.s1, "p_1055->g_1004.s1", print_hash_value);
    transparent_crc(p_1055->g_1004.s2, "p_1055->g_1004.s2", print_hash_value);
    transparent_crc(p_1055->g_1004.s3, "p_1055->g_1004.s3", print_hash_value);
    transparent_crc(p_1055->g_1004.s4, "p_1055->g_1004.s4", print_hash_value);
    transparent_crc(p_1055->g_1004.s5, "p_1055->g_1004.s5", print_hash_value);
    transparent_crc(p_1055->g_1004.s6, "p_1055->g_1004.s6", print_hash_value);
    transparent_crc(p_1055->g_1004.s7, "p_1055->g_1004.s7", print_hash_value);
    transparent_crc(p_1055->g_1004.s8, "p_1055->g_1004.s8", print_hash_value);
    transparent_crc(p_1055->g_1004.s9, "p_1055->g_1004.s9", print_hash_value);
    transparent_crc(p_1055->g_1004.sa, "p_1055->g_1004.sa", print_hash_value);
    transparent_crc(p_1055->g_1004.sb, "p_1055->g_1004.sb", print_hash_value);
    transparent_crc(p_1055->g_1004.sc, "p_1055->g_1004.sc", print_hash_value);
    transparent_crc(p_1055->g_1004.sd, "p_1055->g_1004.sd", print_hash_value);
    transparent_crc(p_1055->g_1004.se, "p_1055->g_1004.se", print_hash_value);
    transparent_crc(p_1055->g_1004.sf, "p_1055->g_1004.sf", print_hash_value);
    transparent_crc(p_1055->g_1013.x, "p_1055->g_1013.x", print_hash_value);
    transparent_crc(p_1055->g_1013.y, "p_1055->g_1013.y", print_hash_value);
    transparent_crc(p_1055->g_1014.x, "p_1055->g_1014.x", print_hash_value);
    transparent_crc(p_1055->g_1014.y, "p_1055->g_1014.y", print_hash_value);
    transparent_crc(p_1055->g_1017.x, "p_1055->g_1017.x", print_hash_value);
    transparent_crc(p_1055->g_1017.y, "p_1055->g_1017.y", print_hash_value);
    transparent_crc(p_1055->g_1017.z, "p_1055->g_1017.z", print_hash_value);
    transparent_crc(p_1055->g_1017.w, "p_1055->g_1017.w", print_hash_value);
    transparent_crc(p_1055->g_1020.x, "p_1055->g_1020.x", print_hash_value);
    transparent_crc(p_1055->g_1020.y, "p_1055->g_1020.y", print_hash_value);
    transparent_crc(p_1055->g_1021.s0, "p_1055->g_1021.s0", print_hash_value);
    transparent_crc(p_1055->g_1021.s1, "p_1055->g_1021.s1", print_hash_value);
    transparent_crc(p_1055->g_1021.s2, "p_1055->g_1021.s2", print_hash_value);
    transparent_crc(p_1055->g_1021.s3, "p_1055->g_1021.s3", print_hash_value);
    transparent_crc(p_1055->g_1021.s4, "p_1055->g_1021.s4", print_hash_value);
    transparent_crc(p_1055->g_1021.s5, "p_1055->g_1021.s5", print_hash_value);
    transparent_crc(p_1055->g_1021.s6, "p_1055->g_1021.s6", print_hash_value);
    transparent_crc(p_1055->g_1021.s7, "p_1055->g_1021.s7", print_hash_value);
    transparent_crc(p_1055->g_1028.x, "p_1055->g_1028.x", print_hash_value);
    transparent_crc(p_1055->g_1028.y, "p_1055->g_1028.y", print_hash_value);
    transparent_crc(p_1055->g_1028.z, "p_1055->g_1028.z", print_hash_value);
    transparent_crc(p_1055->g_1028.w, "p_1055->g_1028.w", print_hash_value);
    transparent_crc(p_1055->g_1040.x, "p_1055->g_1040.x", print_hash_value);
    transparent_crc(p_1055->g_1040.y, "p_1055->g_1040.y", print_hash_value);
    transparent_crc(p_1055->g_1040.z, "p_1055->g_1040.z", print_hash_value);
    transparent_crc(p_1055->g_1040.w, "p_1055->g_1040.w", print_hash_value);
    transparent_crc(p_1055->g_1043.s0, "p_1055->g_1043.s0", print_hash_value);
    transparent_crc(p_1055->g_1043.s1, "p_1055->g_1043.s1", print_hash_value);
    transparent_crc(p_1055->g_1043.s2, "p_1055->g_1043.s2", print_hash_value);
    transparent_crc(p_1055->g_1043.s3, "p_1055->g_1043.s3", print_hash_value);
    transparent_crc(p_1055->g_1043.s4, "p_1055->g_1043.s4", print_hash_value);
    transparent_crc(p_1055->g_1043.s5, "p_1055->g_1043.s5", print_hash_value);
    transparent_crc(p_1055->g_1043.s6, "p_1055->g_1043.s6", print_hash_value);
    transparent_crc(p_1055->g_1043.s7, "p_1055->g_1043.s7", print_hash_value);
    transparent_crc(p_1055->g_1043.s8, "p_1055->g_1043.s8", print_hash_value);
    transparent_crc(p_1055->g_1043.s9, "p_1055->g_1043.s9", print_hash_value);
    transparent_crc(p_1055->g_1043.sa, "p_1055->g_1043.sa", print_hash_value);
    transparent_crc(p_1055->g_1043.sb, "p_1055->g_1043.sb", print_hash_value);
    transparent_crc(p_1055->g_1043.sc, "p_1055->g_1043.sc", print_hash_value);
    transparent_crc(p_1055->g_1043.sd, "p_1055->g_1043.sd", print_hash_value);
    transparent_crc(p_1055->g_1043.se, "p_1055->g_1043.se", print_hash_value);
    transparent_crc(p_1055->g_1043.sf, "p_1055->g_1043.sf", print_hash_value);
    transparent_crc(p_1055->g_1051.x, "p_1055->g_1051.x", print_hash_value);
    transparent_crc(p_1055->g_1051.y, "p_1055->g_1051.y", print_hash_value);
    transparent_crc(p_1055->g_1053.f0, "p_1055->g_1053.f0", print_hash_value);
    transparent_crc(p_1055->g_1053.f1, "p_1055->g_1053.f1", print_hash_value);
    transparent_crc(p_1055->g_1053.f2.f0, "p_1055->g_1053.f2.f0", print_hash_value);
    transparent_crc(p_1055->g_1053.f2.f1, "p_1055->g_1053.f2.f1", print_hash_value);
    transparent_crc(p_1055->g_1053.f2.f2, "p_1055->g_1053.f2.f2", print_hash_value);
    transparent_crc(p_1055->g_1053.f2.f3, "p_1055->g_1053.f2.f3", print_hash_value);
    transparent_crc(p_1055->g_1053.f2.f4, "p_1055->g_1053.f2.f4", print_hash_value);
    transparent_crc(p_1055->g_1053.f2.f5, "p_1055->g_1053.f2.f5", print_hash_value);
    transparent_crc(p_1055->g_1053.f2.f6, "p_1055->g_1053.f2.f6", print_hash_value);
    transparent_crc(p_1055->g_1053.f2.f7, "p_1055->g_1053.f2.f7", print_hash_value);
    transparent_crc(p_1055->g_1053.f2.f8, "p_1055->g_1053.f2.f8", print_hash_value);
    transparent_crc(p_1055->g_1053.f2.f9, "p_1055->g_1053.f2.f9", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
