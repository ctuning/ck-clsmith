// ---atomic_reductions ---fake_divergence -g 64,22,2 -l 2,22,2
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


// Seed: 42

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    int32_t g_11;
    int32_t g_16;
    uint8_t g_17[3];
    uint32_t g_49;
    int32_t g_83;
    int32_t *g_82;
    uint64_t g_95;
    uint64_t g_96[9][10][2];
    int64_t g_98;
    int8_t g_100;
    int32_t g_106;
    volatile int32_t g_107;
    volatile int64_t g_108;
    volatile uint16_t g_109[10][10];
    int16_t g_122;
    uint16_t g_124[10];
    int32_t * volatile g_126[2];
    int32_t * volatile g_127;
    int32_t * volatile g_128;
    uint32_t g_134;
    int8_t g_185;
    uint64_t g_229[5];
    int32_t ** volatile g_231;
    int64_t g_246;
    int16_t g_288;
    volatile int8_t * volatile *g_292;
    uint64_t *g_307;
    uint64_t * volatile * volatile g_306[9];
    uint32_t g_313;
    uint8_t *g_336[10];
    int32_t *g_403[2];
    int32_t ** volatile g_402;
    volatile uint8_t g_410[2];
    int32_t ** volatile g_501;
    int32_t * volatile g_543;
    uint8_t g_549;
    int32_t ** volatile g_637[1][1][2];
    int32_t ** volatile g_640;
    int32_t ***g_651;
    int8_t g_655;
    int32_t ** volatile g_704;
    uint32_t g_709;
    int16_t **g_722;
    uint16_t g_734;
    int32_t ** volatile g_757;
    int32_t ** volatile g_784;
    int32_t ** volatile g_836;
    int8_t g_850;
    int16_t *** volatile g_869;
    uint16_t **g_873;
    uint16_t *** volatile g_872;
    int32_t ** volatile g_885;
    int32_t ** volatile g_886;
    uint64_t g_1000;
    volatile int32_t *g_1027;
    volatile int32_t ** volatile g_1026;
    int32_t g_1142;
    int32_t ** volatile g_1143;
    int32_t ** volatile g_1148[6][8];
    int32_t ** volatile g_1149;
    uint32_t v_collective;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
};


/* --- FORWARD DECLARATIONS --- */
uint8_t  func_1(struct S0 * p_1152);
int32_t * func_21(uint32_t  p_22, uint32_t  p_23, struct S0 * p_1152);
int32_t  func_26(uint64_t  p_27, uint64_t  p_28, int32_t  p_29, int8_t  p_30, struct S0 * p_1152);
int16_t  func_34(uint64_t  p_35, struct S0 * p_1152);
int32_t  func_38(uint8_t  p_39, int64_t  p_40, int64_t  p_41, int64_t  p_42, struct S0 * p_1152);
int64_t  func_43(int32_t * p_44, struct S0 * p_1152);
int32_t * func_45(uint32_t  p_46, int32_t  p_47, struct S0 * p_1152);
uint64_t  func_56(int32_t  p_57, int64_t  p_58, struct S0 * p_1152);
uint32_t  func_61(int32_t * p_62, uint16_t  p_63, int32_t * p_64, struct S0 * p_1152);
int8_t  func_76(uint64_t  p_77, struct S0 * p_1152);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1152->g_2 p_1152->g_17 p_1152->g_757
 * writes: p_1152->g_2 p_1152->g_17 p_1152->g_82
 */
uint8_t  func_1(struct S0 * p_1152)
{ /* block id: 4 */
    uint64_t l_20 = 1UL;
    int32_t **l_1150[3][6] = {{&p_1152->g_403[0],&p_1152->g_403[0],&p_1152->g_403[0],&p_1152->g_403[0],&p_1152->g_403[0],&p_1152->g_403[0]},{&p_1152->g_403[0],&p_1152->g_403[0],&p_1152->g_403[0],&p_1152->g_403[0],&p_1152->g_403[0],&p_1152->g_403[0]},{&p_1152->g_403[0],&p_1152->g_403[0],&p_1152->g_403[0],&p_1152->g_403[0],&p_1152->g_403[0],&p_1152->g_403[0]}};
    int64_t l_1151 = (-5L);
    int i, j;
    for (p_1152->g_2 = 0; (p_1152->g_2 == 12); p_1152->g_2 = safe_add_func_int16_t_s_s(p_1152->g_2, 4))
    { /* block id: 7 */
        int32_t *l_5 = &p_1152->g_2;
        int32_t **l_6 = (void*)0;
        int32_t **l_7 = &l_5;
        (*l_7) = l_5;
    }
    for (p_1152->g_2 = 6; (p_1152->g_2 <= 20); p_1152->g_2 = safe_add_func_uint16_t_u_u(p_1152->g_2, 8))
    { /* block id: 12 */
        int32_t *l_10 = &p_1152->g_11;
        int32_t *l_12 = (void*)0;
        int32_t *l_13 = (void*)0;
        int32_t *l_14 = &p_1152->g_11;
        int32_t *l_15[5][5][9] = {{{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2}},{{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2}},{{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2}},{{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2}},{{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2},{&p_1152->g_2,&p_1152->g_2,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_11,&p_1152->g_2,&p_1152->g_2}}};
        int i, j, k;
        ++p_1152->g_17[1];
        return l_20;
    }
    (*p_1152->g_757) = func_21(l_20, l_20, p_1152);
    return l_1151;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_21(uint32_t  p_22, uint32_t  p_23, struct S0 * p_1152)
{ /* block id: 16 */
    int32_t *l_33 = (void*)0;
    for (p_23 = 20; (p_23 <= 57); p_23 = safe_add_func_uint8_t_u_u(p_23, 1))
    { /* block id: 19 */
        uint8_t l_31 = 0xFCL;
        int32_t *l_32 = &p_1152->g_11;
        int16_t l_888 = 0x7376L;
        int32_t *l_1141 = &p_1152->g_1142;
        if (p_22)
            break;
    }
    return l_33;
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_134 p_1152->g_122 p_1152->g_96 p_1152->g_709 p_1152->g_410 p_1152->g_402 p_1152->g_16 p_1152->g_107 p_1152->g_307 p_1152->g_229 p_1152->g_11 p_1152->g_83 p_1152->g_108 p_1152->g_549 p_1152->g_124 p_1152->g_1000 p_1152->g_1026 p_1152->g_17 p_1152->g_106 p_1152->g_100 p_1152->g_109 p_1152->g_49 p_1152->g_313 p_1152->g_734 p_1152->g_704 p_1152->g_82 p_1152->g_543 p_1152->g_246
 * writes: p_1152->g_134 p_1152->g_98 p_1152->g_11 p_1152->g_734 p_1152->g_709 p_1152->g_403 p_1152->g_16 p_1152->g_185 p_1152->g_96 p_1152->g_229 p_1152->g_106 p_1152->g_17 p_1152->g_82 p_1152->g_124 p_1152->g_108
 */
int32_t  func_26(uint64_t  p_27, uint64_t  p_28, int32_t  p_29, int8_t  p_30, struct S0 * p_1152)
{ /* block id: 476 */
    int32_t l_898 = 0x0D08AA5CL;
    int32_t l_937[2][1][10] = {{{0x16B137CAL,0x551F5982L,0x16B137CAL,0x16B137CAL,0x551F5982L,0x16B137CAL,0x16B137CAL,0x551F5982L,0x16B137CAL,0x16B137CAL}},{{0x16B137CAL,0x551F5982L,0x16B137CAL,0x16B137CAL,0x551F5982L,0x16B137CAL,0x16B137CAL,0x551F5982L,0x16B137CAL,0x16B137CAL}}};
    uint16_t *l_992 = &p_1152->g_124[1];
    uint16_t **l_991[9] = {&l_992,&l_992,&l_992,&l_992,&l_992,&l_992,&l_992,&l_992,&l_992};
    uint8_t l_1028[8][2] = {{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL}};
    int32_t *l_1059 = &p_1152->g_16;
    int32_t **l_1058 = &l_1059;
    int32_t ***l_1057 = &l_1058;
    uint32_t l_1138 = 0xE5EDD694L;
    int i, j, k;
    for (p_27 = 25; (p_27 != 34); p_27++)
    { /* block id: 479 */
        uint8_t *l_897 = &p_1152->g_17[1];
        int32_t l_899 = 0x5301A13CL;
        int64_t *l_900[5][7] = {{(void*)0,&p_1152->g_98,(void*)0,(void*)0,&p_1152->g_98,(void*)0,(void*)0},{(void*)0,&p_1152->g_98,(void*)0,(void*)0,&p_1152->g_98,(void*)0,(void*)0},{(void*)0,&p_1152->g_98,(void*)0,(void*)0,&p_1152->g_98,(void*)0,(void*)0},{(void*)0,&p_1152->g_98,(void*)0,(void*)0,&p_1152->g_98,(void*)0,(void*)0},{(void*)0,&p_1152->g_98,(void*)0,(void*)0,&p_1152->g_98,(void*)0,(void*)0}};
        int16_t *l_901[7];
        int32_t *l_902 = &p_1152->g_11;
        int32_t *l_908 = &l_898;
        uint16_t *l_948 = &p_1152->g_124[2];
        uint16_t **l_947 = &l_948;
        int32_t **l_950 = &l_908;
        int32_t ***l_949[10] = {(void*)0,&l_950,(void*)0,(void*)0,&l_950,(void*)0,(void*)0,&l_950,(void*)0,(void*)0};
        int8_t **l_1052 = (void*)0;
        int8_t ***l_1051 = &l_1052;
        uint64_t l_1101[1];
        int64_t l_1128 = 0L;
        int i, j;
        for (i = 0; i < 7; i++)
            l_901[i] = (void*)0;
        for (i = 0; i < 1; i++)
            l_1101[i] = 0UL;
        (*l_902) = ((p_29 || (l_898 = (GROUP_DIVERGE(1, 1) , ((1L != (((p_28 , (safe_sub_func_int64_t_s_s((p_1152->g_98 = ((p_1152->g_134--) | (((safe_lshift_func_int8_t_s_u(0x65L, (((((l_897 == l_897) != ((void*)0 != l_897)) , &p_1152->g_292) == &p_1152->g_292) , l_898))) , l_898) || l_899))), p_1152->g_122))) & 0xA6C6L) || p_1152->g_96[5][2][1])) >= 255UL)))) <= p_27);
        for (p_1152->g_134 = 0; (p_1152->g_134 > 11); p_1152->g_134 = safe_add_func_int8_t_s_s(p_1152->g_134, 2))
        { /* block id: 486 */
            uint32_t l_936 = 0xAA299E5AL;
            int32_t l_939[9] = {0x3C679BECL,0x3C679BECL,0x3C679BECL,0x3C679BECL,0x3C679BECL,0x3C679BECL,0x3C679BECL,0x3C679BECL,0x3C679BECL};
            int32_t l_962 = 0x1D2D4BB4L;
            int32_t l_963 = 0x26E77171L;
            uint32_t *l_966[9];
            int32_t l_1064 = 0x26B8D89FL;
            int32_t l_1073 = 0L;
            uint16_t *l_1113 = &p_1152->g_124[8];
            int i;
            for (i = 0; i < 9; i++)
                l_966[i] = &p_1152->g_134;
            for (p_1152->g_734 = (-21); (p_1152->g_734 >= 14); ++p_1152->g_734)
            { /* block id: 489 */
                uint64_t l_909 = 18446744073709551614UL;
                uint16_t **l_1006 = &l_948;
                int32_t **l_1030 = (void*)0;
                int32_t ***l_1029 = &l_1030;
                int8_t l_1031 = 1L;
                int32_t l_1050 = 0x6DC9FA98L;
                int32_t l_1076 = 3L;
                int32_t l_1078 = 0L;
                int32_t l_1079 = 0x435B6BE5L;
                uint8_t **l_1085 = &l_897;
                uint32_t l_1100 = 0x1EEFC626L;
                uint32_t l_1127 = 7UL;
                int32_t l_1134[1][10][7] = {{{0x44AC8D18L,0x0B6D6FD2L,0x0B6D6FD2L,0x44AC8D18L,0x61DC6DBDL,8L,0x0CE05725L},{0x44AC8D18L,0x0B6D6FD2L,0x0B6D6FD2L,0x44AC8D18L,0x61DC6DBDL,8L,0x0CE05725L},{0x44AC8D18L,0x0B6D6FD2L,0x0B6D6FD2L,0x44AC8D18L,0x61DC6DBDL,8L,0x0CE05725L},{0x44AC8D18L,0x0B6D6FD2L,0x0B6D6FD2L,0x44AC8D18L,0x61DC6DBDL,8L,0x0CE05725L},{0x44AC8D18L,0x0B6D6FD2L,0x0B6D6FD2L,0x44AC8D18L,0x61DC6DBDL,8L,0x0CE05725L},{0x44AC8D18L,0x0B6D6FD2L,0x0B6D6FD2L,0x44AC8D18L,0x61DC6DBDL,8L,0x0CE05725L},{0x44AC8D18L,0x0B6D6FD2L,0x0B6D6FD2L,0x44AC8D18L,0x61DC6DBDL,8L,0x0CE05725L},{0x44AC8D18L,0x0B6D6FD2L,0x0B6D6FD2L,0x44AC8D18L,0x61DC6DBDL,8L,0x0CE05725L},{0x44AC8D18L,0x0B6D6FD2L,0x0B6D6FD2L,0x44AC8D18L,0x61DC6DBDL,8L,0x0CE05725L},{0x44AC8D18L,0x0B6D6FD2L,0x0B6D6FD2L,0x44AC8D18L,0x61DC6DBDL,8L,0x0CE05725L}}};
                int i, j, k;
                for (p_1152->g_709 = 0; (p_1152->g_709 <= 1); p_1152->g_709 += 1)
                { /* block id: 492 */
                    int32_t *l_907 = (void*)0;
                    int i;
                    l_908 = l_907;
                    (*l_902) = p_1152->g_410[p_1152->g_709];
                    (*p_1152->g_402) = &l_899;
                    l_909--;
                }
                for (p_1152->g_16 = 0; (p_1152->g_16 <= 1); p_1152->g_16 += 1)
                { /* block id: 500 */
                    uint16_t *l_938[9][1] = {{&p_1152->g_124[8]},{&p_1152->g_124[8]},{&p_1152->g_124[8]},{&p_1152->g_124[8]},{&p_1152->g_124[8]},{&p_1152->g_124[8]},{&p_1152->g_124[8]},{&p_1152->g_124[8]},{&p_1152->g_124[8]}};
                    uint16_t l_940 = 0x012AL;
                    uint16_t **l_946 = &l_938[6][0];
                    int i, j, k;
                    p_29 = p_1152->g_96[(p_1152->g_16 + 1)][(p_1152->g_16 + 6)][p_1152->g_16];
                    if ((safe_sub_func_int64_t_s_s(((!(safe_mul_func_uint16_t_u_u((safe_div_func_uint8_t_u_u(0x82L, p_1152->g_96[(p_1152->g_16 + 5)][(p_1152->g_16 + 1)][p_1152->g_16])), ((safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(p_28, 5)), 255UL)) == (((*l_902) = 0x0FE1BF6AL) ^ (safe_div_func_int64_t_s_s(0x6CF21C8443E6F3E1L, ((safe_lshift_func_uint8_t_u_s(p_28, 4)) ^ (safe_add_func_int64_t_s_s(((safe_mod_func_uint16_t_u_u(((((l_898 = 0UL) >= (safe_sub_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_s(((((l_939[4] = ((safe_mod_func_int16_t_s_s((l_909 , l_936), l_936)) != l_937[1][0][4])) > 0xFAB1L) || 0x4761DD158B9D34F9L) > 1UL), p_29)) , p_27), p_1152->g_96[(p_1152->g_16 + 5)][(p_1152->g_16 + 1)][p_1152->g_16]))) & p_29) , l_940), l_937[1][0][9])) && 0xF131L), 0x667A6B9FD5EFAC1DL)))))))))) & 0xF9082CC7L), GROUP_DIVERGE(1, 1))))
                    { /* block id: 505 */
                        int8_t *l_941 = &p_1152->g_185;
                        int32_t l_961 = (-8L);
                        uint16_t *l_977[6][9] = {{&p_1152->g_124[7],&p_1152->g_124[4],&p_1152->g_124[7],(void*)0,&p_1152->g_124[7],&p_1152->g_124[4],&p_1152->g_124[7],&p_1152->g_124[8],(void*)0},{&p_1152->g_124[7],&p_1152->g_124[4],&p_1152->g_124[7],(void*)0,&p_1152->g_124[7],&p_1152->g_124[4],&p_1152->g_124[7],&p_1152->g_124[8],(void*)0},{&p_1152->g_124[7],&p_1152->g_124[4],&p_1152->g_124[7],(void*)0,&p_1152->g_124[7],&p_1152->g_124[4],&p_1152->g_124[7],&p_1152->g_124[8],(void*)0},{&p_1152->g_124[7],&p_1152->g_124[4],&p_1152->g_124[7],(void*)0,&p_1152->g_124[7],&p_1152->g_124[4],&p_1152->g_124[7],&p_1152->g_124[8],(void*)0},{&p_1152->g_124[7],&p_1152->g_124[4],&p_1152->g_124[7],(void*)0,&p_1152->g_124[7],&p_1152->g_124[4],&p_1152->g_124[7],&p_1152->g_124[8],(void*)0},{&p_1152->g_124[7],&p_1152->g_124[4],&p_1152->g_124[7],(void*)0,&p_1152->g_124[7],&p_1152->g_124[4],&p_1152->g_124[7],&p_1152->g_124[8],(void*)0}};
                        int16_t **l_999 = &l_901[0];
                        int8_t *l_1001[6][10][4] = {{{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0}},{{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0}},{{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0}},{{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0}},{{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0}},{{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0},{&p_1152->g_100,&p_1152->g_655,&p_1152->g_100,(void*)0}}};
                        int i, j, k;
                        (*l_950) = (((~(p_28 , (((*l_941) = p_27) & (safe_mod_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(((((&p_1152->g_637[0][0][0] == ((((l_946 = &l_938[3][0]) != l_947) , p_1152->g_107) , l_949[5])) > p_27) && (safe_rshift_func_uint16_t_u_u((safe_div_func_uint32_t_u_u((((((safe_add_func_int16_t_s_s((safe_div_func_int64_t_s_s((safe_lshift_func_uint16_t_u_s((l_961 , l_936), l_909)), 0x3563726C81BBB40CL)), p_1152->g_96[(p_1152->g_16 + 5)][(p_1152->g_16 + 1)][p_1152->g_16])) > p_1152->g_96[(p_1152->g_16 + 1)][(p_1152->g_16 + 6)][p_1152->g_16]) > l_962) && (*p_1152->g_307)) ^ 7UL), (*l_902))), l_963))) & p_28), 0L)), l_937[0][0][0]))))) , p_28) , (void*)0);
                        l_939[4] = (-7L);
                        l_898 |= ((((safe_mod_func_uint8_t_u_u(((l_966[1] != (void*)0) == (safe_mul_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_u(0x87L, 7)) , (2L > (((safe_add_func_uint8_t_u_u(l_961, (~(0x0ABBBB3FL < ((safe_add_func_int32_t_s_s(((+(l_962 , (((safe_rshift_func_uint8_t_u_u(((*l_947) != ((((*p_1152->g_307) = (p_1152->g_96[(p_1152->g_16 + 3)][(p_1152->g_16 + 8)][p_1152->g_16] = l_937[0][0][5])) && p_30) , l_977[2][6])), 6)) , 0L) | l_963))) > p_29), 0x5B1E2719L)) < l_961))))) | l_939[0]) <= 0x4CE7L))), 0x40L))), p_1152->g_83)) >= p_1152->g_108) , l_940) != 0x07E1L);
                        l_961 = ((l_937[1][0][9] , (l_937[1][0][4] = (((safe_sub_func_int8_t_s_s((p_30 = (((l_962 &= (((((safe_rshift_func_int8_t_s_u(((((-1L) > ((safe_mod_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((p_27 > (safe_mod_func_uint8_t_u_u((+(l_939[4] != ((*l_941) = (safe_unary_minus_func_uint64_t_u(((~(((((safe_div_func_uint64_t_u_u((l_991[6] != (void*)0), (safe_mul_func_int16_t_s_s((!(safe_mod_func_int64_t_s_s((l_963 = ((+FAKE_DIVERGE(p_1152->group_0_offset, get_group_id(0), 10)) , ((p_30 || (safe_add_func_int32_t_s_s(((((p_1152->g_96[(p_1152->g_16 + 1)][(p_1152->g_16 + 6)][p_1152->g_16] || (((*l_999) = l_977[2][6]) != l_992)) & l_937[1][0][4]) | p_30) | 4L), p_1152->g_549))) , (-1L)))), p_1152->g_549))), p_27)))) & 18446744073709551614UL) , p_1152->g_96[(p_1152->g_16 + 2)][(p_1152->g_16 + 6)][p_1152->g_16]) , p_1152->g_549) <= p_1152->g_96[(p_1152->g_16 + 2)][(p_1152->g_16 + 6)][p_1152->g_16])) & l_961)))))), l_961))), 65535UL)), 0x24D9L)) ^ p_1152->g_124[9])) | p_28) != p_29), p_1152->g_1000)) , GROUP_DIVERGE(2, 1)) | p_1152->g_96[(p_1152->g_16 + 3)][(p_1152->g_16 + 8)][p_1152->g_16]) ^ l_909) , p_30)) < 0xE9L) <= l_940)), 0x5AL)) >= p_29) , 0x20L))) == 255UL);
                    }
                    else
                    { /* block id: 520 */
                        uint16_t **l_1007 = &l_992;
                        uint16_t l_1014 = 65535UL;
                        atomic_min(&p_1152->g_atomic_reduction[get_linear_group_id()], (safe_mul_func_uint16_t_u_u(((((safe_rshift_func_uint16_t_u_s(p_29, 13)) || 0x21L) != (l_1006 != l_1007)) != (safe_lshift_func_uint16_t_u_u((((safe_rshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s((p_1152->g_96[(p_1152->g_16 + 1)][(p_1152->g_16 + 6)][p_1152->g_16] | (((*p_1152->g_307) = (l_1014 , (safe_mod_func_int32_t_s_s((((safe_sub_func_uint16_t_u_u(((safe_mod_func_uint64_t_u_u((safe_mod_func_int8_t_s_s(((((safe_lshift_func_int8_t_s_u((p_27 , 1L), 5)) , ((safe_unary_minus_func_int16_t_s((((void*)0 == p_1152->g_1026) >= 1L))) && l_1028[4][0])) & p_1152->g_17[2]) || p_1152->g_106), p_1152->g_549)), (-1L))) , p_28), p_27)) , &p_1152->g_49) != (void*)0), p_29)))) == FAKE_DIVERGE(p_1152->local_1_offset, get_local_id(1), 10))), (-2L))), 3)) , l_937[1][0][4]) == l_939[7]), p_1152->g_100))), p_27)));
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1152->v_collective += p_1152->g_atomic_reduction[get_linear_group_id()];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        (*l_950) = &p_29;
                        (*l_908) = (l_1029 == ((((l_1031 && p_1152->g_96[(p_1152->g_16 + 1)][(p_1152->g_16 + 6)][p_1152->g_16]) > (l_939[4] = ((1UL ^ GROUP_DIVERGE(2, 1)) != (0xB53141B1L > ((safe_mul_func_int16_t_s_s(p_27, 0xA823L)) != ((void*)0 == &l_938[6][0])))))) ^ p_29) , (void*)0));
                        if ((**l_950))
                            break;
                    }
                }
                for (p_1152->g_106 = 3; (p_1152->g_106 <= 8); p_1152->g_106 += 1)
                { /* block id: 531 */
                    int i, j;
                    return p_1152->g_109[(p_1152->g_106 + 1)][p_1152->g_106];
                }
                if ((+((safe_mul_func_uint8_t_u_u((safe_mod_func_int32_t_s_s((l_1031 > 9L), (safe_div_func_uint64_t_u_u((safe_mod_func_int8_t_s_s((safe_mod_func_uint64_t_u_u(p_27, ((safe_mul_func_uint16_t_u_u((((((safe_rshift_func_uint8_t_u_u(((l_1050 = ((safe_lshift_func_int16_t_s_s(0x52C7L, l_1031)) , 0x57A043C45967FFBDL)) > p_29), l_909)) , &p_1152->g_292) != l_1051) > p_1152->g_709) < p_1152->g_108), p_1152->g_49)) , (-5L)))), p_1152->g_313)), 3UL)))), p_1152->g_734)) > p_30)))
                { /* block id: 535 */
                    int64_t *l_1056 = (void*)0;
                    int64_t **l_1055 = &l_1056;
                    int32_t l_1072 = 0L;
                    int32_t l_1075[9];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_1075[i] = 0x7598DF1FL;
                    l_937[1][0][4] &= ((((*l_897) = (1L & (safe_add_func_int32_t_s_s((((*l_902) = (((p_1152->g_108 , l_900[3][6]) != ((*l_1055) = l_900[3][5])) , ((1UL ^ 0x7F0ECC3156B89396L) & ((7UL | (&l_1030 != l_1057)) == p_27)))) < l_939[2]), p_1152->g_122)))) <= (-5L)) == 0L);
                    for (p_29 = (-11); (p_29 < 8); p_29 = safe_add_func_int8_t_s_s(p_29, 8))
                    { /* block id: 542 */
                        (*p_1152->g_704) = &l_937[0][0][5];
                        (*p_1152->g_82) ^= p_30;
                    }
                    if (p_30)
                    { /* block id: 546 */
                        uint64_t l_1069 = 0UL;
                        (*l_902) |= l_1028[0][1];
                        (*l_902) ^= (safe_mod_func_uint32_t_u_u((l_1064 || (safe_sub_func_int64_t_s_s(1L, (*p_1152->g_307)))), (p_29 = (((p_30 >= 0x64L) & (safe_rshift_func_uint16_t_u_u((((p_27 , (void*)0) == (void*)0) , ((p_1152->g_98 = (p_1152->g_108 , 1L)) & 0xB7E3387D3F572FFEL)), GROUP_DIVERGE(0, 1)))) , l_1069))));
                    }
                    else
                    { /* block id: 551 */
                        int64_t l_1070 = 1L;
                        int32_t l_1071 = 0x620DD7D7L;
                        int32_t l_1074 = 0x4A22A564L;
                        int32_t l_1077 = 0x70A36E3EL;
                        int32_t l_1080 = 0L;
                        int32_t l_1081 = 1L;
                        uint64_t l_1082 = 18446744073709551615UL;
                        uint32_t l_1102 = 1UL;
                        l_1082++;
                        (*l_902) |= (((l_1085 == ((((safe_mul_func_uint16_t_u_u(p_27, (safe_add_func_uint64_t_u_u(((*p_1152->g_307) = (((((!((((p_27 , p_1152->g_16) | (((((safe_mod_func_int8_t_s_s(p_29, p_27)) <= ((safe_mul_func_uint32_t_u_u((safe_mod_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s((!0x79L), ((0xC690L && (safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), (p_27 , p_28)))) > (*p_1152->g_543)))), p_29)), 0UL)) , l_1100)) , l_939[2]) & (*p_1152->g_307)) >= p_30)) , l_1101[0]) > l_939[4])) > p_28) || p_28) < p_29) >= 0x8BL)), l_1077)))) , &p_1152->g_126[1]) == (void*)0) , (void*)0)) , 0x1DL) > p_29);
                        ++l_1102;
                    }
                }
                else
                { /* block id: 557 */
                    int16_t l_1130[3][2][5] = {{{0x4A35L,0x3F8EL,0x3F8EL,0x4A35L,0x4A35L},{0x4A35L,0x3F8EL,0x3F8EL,0x4A35L,0x4A35L}},{{0x4A35L,0x3F8EL,0x3F8EL,0x4A35L,0x4A35L},{0x4A35L,0x3F8EL,0x3F8EL,0x4A35L,0x4A35L}},{{0x4A35L,0x3F8EL,0x3F8EL,0x4A35L,0x4A35L},{0x4A35L,0x3F8EL,0x3F8EL,0x4A35L,0x4A35L}}};
                    int32_t l_1131 = 0L;
                    int32_t l_1132 = (-2L);
                    int32_t l_1133[3][7] = {{(-5L),0x21E69468L,(-1L),(-1L),0x21E69468L,(-1L),(-1L)},{(-5L),0x21E69468L,(-1L),(-1L),0x21E69468L,(-1L),(-1L)},{(-5L),0x21E69468L,(-1L),(-1L),0x21E69468L,(-1L),(-1L)}};
                    uint32_t l_1135 = 0x8BB3D74EL;
                    int i, j, k;
                    for (l_962 = 0; (l_962 != 24); l_962 = safe_add_func_int8_t_s_s(l_962, 9))
                    { /* block id: 560 */
                        int16_t l_1120[3][9][9] = {{{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L}},{{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L}},{{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L},{0x44EDL,0L,0x4188L,0x757EL,(-8L),(-8L),0x757EL,0x4188L,0L}}};
                        int32_t l_1129[2][7] = {{0x3F429809L,2L,0x3F429809L,0x3F429809L,2L,0x3F429809L,0x3F429809L},{0x3F429809L,2L,0x3F429809L,0x3F429809L,2L,0x3F429809L,0x3F429809L}};
                        int i, j, k;
                        p_29 = ((safe_sub_func_uint8_t_u_u((safe_add_func_int16_t_s_s((safe_lshift_func_int8_t_s_s((((*l_902) = p_28) && (((((l_1113 == l_1113) < (safe_mul_func_int8_t_s_s((safe_rshift_func_int16_t_s_u((p_30 >= ((-3L) && (l_1120[1][5][7] <= l_898))), 15)), (l_937[1][0][4] &= ((*l_897) = ((p_29 || (((safe_sub_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_s((safe_div_func_uint16_t_u_u(((*l_992) = ((((l_1127 = (p_1152->g_313 >= p_28)) != 0x6BC7B3C0L) != p_27) | 0x38L)), 6UL)), p_28)) > l_1028[4][0]), p_30)) > 3L) , l_939[0])) , 246UL)))))) == 0x64E5960C0C21168EL) , p_1152->g_96[3][1][1]) <= p_1152->g_246)), 3)), 7UL)), 8L)) , 7L);
                        l_1135++;
                    }
                    --l_1138;
                    for (p_1152->g_108 = 0; p_1152->g_108 < 3; p_1152->g_108 += 1)
                    {
                        p_1152->g_17[p_1152->g_108] = 0UL;
                    }
                }
            }
        }
    }
    return l_1138;
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_11 p_1152->g_307 p_1152->g_501 p_1152->g_82 p_1152->g_246 p_1152->g_288 p_1152->g_122 p_1152->g_108 p_1152->g_313 p_1152->g_17 p_1152->g_83 p_1152->g_549 p_1152->g_96 p_1152->g_124 p_1152->g_402 p_1152->g_403 p_1152->g_106 p_1152->g_98 p_1152->g_229 p_1152->g_107 p_1152->g_134 p_1152->g_100 p_1152->g_16 p_1152->g_2 p_1152->g_109 p_1152->g_95 p_1152->g_49 p_1152->g_127 p_1152->g_128 p_1152->g_231 p_1152->g_292 p_1152->g_306 p_1152->g_651 p_1152->g_709 p_1152->g_722 p_1152->g_757 p_1152->g_784 p_1152->g_185 p_1152->g_836 p_1152->g_734 p_1152->g_850 p_1152->g_869 p_1152->g_872 p_1152->g_886
 * writes: p_1152->g_11 p_1152->g_229 p_1152->g_549 p_1152->g_122 p_1152->g_83 p_1152->g_288 p_1152->g_98 p_1152->g_185 p_1152->g_100 p_1152->g_82 p_1152->g_95 p_1152->g_96 p_1152->g_109 p_1152->g_124 p_1152->g_106 p_1152->g_134 p_1152->g_49 p_1152->g_16 p_1152->g_246 p_1152->g_403 p_1152->g_651 p_1152->g_126 p_1152->g_709 p_1152->g_655 p_1152->g_313 p_1152->g_722 p_1152->g_873
 */
int16_t  func_34(uint64_t  p_35, struct S0 * p_1152)
{ /* block id: 21 */
    int32_t l_497 = (-1L);
    int64_t *l_546 = &p_1152->g_246;
    int32_t *l_547 = &p_1152->g_83;
    uint8_t *l_548 = &p_1152->g_549;
    uint64_t l_575 = 18446744073709551615UL;
    int32_t l_599 = (-6L);
    int32_t l_656 = 0L;
    int32_t l_659[5][9][3] = {{{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL}},{{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL}},{{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL}},{{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL}},{{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL},{0L,6L,0x5CB9755EL}}};
    uint8_t l_697 = 255UL;
    int16_t *l_706 = &p_1152->g_288;
    int16_t **l_705 = &l_706;
    uint8_t l_727 = 0xACL;
    uint32_t l_752 = 4294967292UL;
    uint64_t l_782 = 0xCBEFC64FE03CC710L;
    int8_t *l_797 = (void*)0;
    int8_t **l_796[4] = {&l_797,&l_797,&l_797,&l_797};
    int32_t l_818 = 0L;
    int8_t l_887 = 0x76L;
    int i, j, k;
    for (p_1152->g_11 = 0; (p_1152->g_11 <= 3); p_1152->g_11 = safe_add_func_uint64_t_u_u(p_1152->g_11, 6))
    { /* block id: 24 */
        uint32_t *l_48 = &p_1152->g_49;
        int32_t l_50 = 0x7C499936L;
        (1 + 1);
    }
    if ((((*p_1152->g_307) = (safe_sub_func_int32_t_s_s(p_35, p_35))) | (((*l_548) = (((l_546 != ((FAKE_DIVERGE(p_1152->global_2_offset, get_global_id(2), 10) != p_35) , (void*)0)) , l_547) == (*p_1152->g_501))) & (((p_1152->g_246 < p_1152->g_288) || 0UL) >= 0x53L))))
    { /* block id: 304 */
        uint64_t l_558[9] = {18446744073709551615UL,0x1D2B176795B1DAE3L,18446744073709551615UL,18446744073709551615UL,0x1D2B176795B1DAE3L,18446744073709551615UL,18446744073709551615UL,0x1D2B176795B1DAE3L,18446744073709551615UL};
        int32_t l_563 = 0x092CA6F5L;
        int i;
        for (p_1152->g_122 = 0; (p_1152->g_122 > (-3)); --p_1152->g_122)
        { /* block id: 307 */
            uint8_t **l_566 = &l_548;
            uint8_t *l_567 = &p_1152->g_17[2];
            int32_t l_570 = (-1L);
            for (p_35 = 0; (p_35 != 30); p_35 = safe_add_func_uint8_t_u_u(p_35, 5))
            { /* block id: 310 */
                int16_t *l_561 = &p_1152->g_288;
                l_563 = (((safe_lshift_func_uint16_t_u_u(p_1152->g_108, (p_1152->g_313 > ((65531UL && p_1152->g_17[0]) , (!(((*l_547) = (safe_rshift_func_int16_t_s_s(3L, 6))) == 0x47FDL)))))) < l_558[1]) || (safe_mul_func_int16_t_s_s(((*l_561) = p_35), (((safe_unary_minus_func_int32_t_s((*l_547))) , 0xF8E91E37L) , 6UL))));
            }
            (*p_1152->g_82) = (l_575 ^= ((p_35 || (safe_rshift_func_int16_t_s_u(((((*l_566) = l_548) != l_567) ^ (p_35 != ((safe_mod_func_int32_t_s_s(l_570, (*l_547))) > (safe_div_func_int16_t_s_s((l_558[1] && ((0x75L & (safe_lshift_func_int8_t_s_s(((-1L) && 0x37L), p_35))) , 0xD73C9A77L)), p_1152->g_549))))), 1))) , 0x59C899F4L));
        }
    }
    else
    { /* block id: 319 */
        int16_t *l_576 = &p_1152->g_288;
        int32_t *l_598[5];
        int32_t *l_613[3];
        int32_t **l_612 = &l_613[1];
        uint32_t l_636[9][1][9] = {{{0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL,0x611CB742L,0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL}},{{0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL,0x611CB742L,0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL}},{{0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL,0x611CB742L,0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL}},{{0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL,0x611CB742L,0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL}},{{0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL,0x611CB742L,0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL}},{{0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL,0x611CB742L,0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL}},{{0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL,0x611CB742L,0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL}},{{0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL,0x611CB742L,0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL}},{{0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL,0x611CB742L,0x611CB742L,0x97AA0ADAL,0x93795F68L,0x97AA0ADAL}}};
        uint8_t l_676 = 255UL;
        int32_t l_756 = (-1L);
        int8_t l_779 = (-7L);
        int32_t l_834 = 0x1488A68CL;
        int8_t **l_837 = &l_797;
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_598[i] = &p_1152->g_11;
        for (i = 0; i < 3; i++)
            l_613[i] = (void*)0;
        if ((l_599 = ((((void*)0 == l_576) >= (safe_lshift_func_int8_t_s_s((((safe_unary_minus_func_uint64_t_u(((0L != ((safe_rshift_func_uint8_t_u_s((((p_1152->g_96[2][5][0] || (safe_mul_func_int8_t_s_s((safe_sub_func_int32_t_s_s(((*l_547) = (safe_sub_func_uint8_t_u_u(p_35, (safe_mul_func_int16_t_s_s(((((safe_add_func_int16_t_s_s((*l_547), ((safe_mod_func_int8_t_s_s((safe_sub_func_uint64_t_u_u((*l_547), ((2L | (0x58A96E9302153A4DL <= p_1152->g_124[5])) != p_35))), p_35)) == p_35))) != (*l_547)) && FAKE_DIVERGE(p_1152->group_0_offset, get_group_id(0), 10)) , p_1152->g_288), GROUP_DIVERGE(1, 1)))))), FAKE_DIVERGE(p_1152->group_2_offset, get_group_id(2), 10))), p_35))) , (*l_547)) ^ p_1152->g_17[1]), 6)) && 0L)) , p_35))) != (**p_1152->g_402)) == p_1152->g_98), p_35))) && p_35)))
        { /* block id: 322 */
            return p_35;
        }
        else
        { /* block id: 324 */
            int64_t *l_606[8] = {&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98};
            int32_t l_609[9][1][1] = {{{0x14BABC90L}},{{0x14BABC90L}},{{0x14BABC90L}},{{0x14BABC90L}},{{0x14BABC90L}},{{0x14BABC90L}},{{0x14BABC90L}},{{0x14BABC90L}},{{0x14BABC90L}}};
            int32_t l_633 = (-1L);
            int64_t l_677 = 4L;
            int32_t l_695[8][3][5] = {{{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)}},{{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)}},{{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)}},{{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)}},{{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)}},{{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)}},{{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)}},{{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)},{1L,0x32DFB52CL,0x20923367L,0x47402522L,(-1L)}}};
            int32_t l_754 = 0L;
            uint32_t l_755 = 0x7995509EL;
            uint8_t **l_813 = &l_548;
            uint16_t l_835 = 1UL;
            int8_t **l_839 = &l_797;
            uint32_t l_849 = 0x1EE94102L;
            uint32_t *l_884 = &l_636[2][0][2];
            int i, j, k;
            if ((safe_lshift_func_uint8_t_u_u((*l_547), (safe_mul_func_uint16_t_u_u((safe_add_func_uint32_t_u_u(p_1152->g_83, 0xC398EA95L)), ((p_1152->g_98 |= p_35) && (*p_1152->g_307)))))))
            { /* block id: 326 */
                int32_t ***l_614 = &l_612;
                (*l_614) = ((safe_rshift_func_uint16_t_u_u(((l_609[7][0][0] > ((*l_548) = 1UL)) == p_35), (safe_add_func_uint32_t_u_u((p_1152->g_107 && 0x0ED437F2287CE345L), l_609[7][0][0])))) , l_612);
            }
            else
            { /* block id: 329 */
                uint64_t l_634 = 0x0AACC7AADBE0BBD2L;
                int8_t *l_635 = &p_1152->g_185;
                int64_t l_658[4];
                int32_t l_662 = 0x06751765L;
                int32_t l_663 = (-1L);
                int32_t l_666 = 0L;
                int8_t l_696 = (-10L);
                int64_t l_702 = 0x473840EFD758A044L;
                int16_t ***l_707 = &l_705;
                uint32_t *l_708 = &p_1152->g_709;
                int16_t **l_711 = &l_706;
                int16_t ***l_710 = &l_711;
                int i;
                for (i = 0; i < 4; i++)
                    l_658[i] = (-1L);
                if ((((0x1175E2D8L == ((!p_35) && (*p_1152->g_307))) , GROUP_DIVERGE(0, 1)) || (safe_add_func_uint8_t_u_u(((*l_548) = (((*p_1152->g_307) = (((safe_mul_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_u(p_1152->g_134, ((safe_mod_func_int16_t_s_s(l_609[5][0][0], (+(((p_1152->g_288 , ((p_35 , (((safe_mul_func_int8_t_s_s((p_1152->g_100 &= ((*l_635) = ((safe_sub_func_int64_t_s_s((l_633 = ((safe_sub_func_int64_t_s_s(((safe_add_func_uint32_t_u_u((p_35 <= (safe_mod_func_int8_t_s_s((4294967286UL == 1UL), p_35))), (**p_1152->g_501))) , 2L), p_35)) && (-1L))), FAKE_DIVERGE(p_1152->local_1_offset, get_local_id(1), 10))) | l_634))), p_1152->g_229[2])) , &p_35) == (void*)0)) <= l_636[4][0][3])) > 0x15F62B26L) >= p_35)))) && p_1152->g_288))) && FAKE_DIVERGE(p_1152->local_1_offset, get_local_id(1), 10)), p_1152->g_229[3])) ^ 0x54A081D39A723806L) & p_1152->g_124[8])) > p_1152->g_288)), p_1152->g_246))))
                { /* block id: 335 */
                    int32_t **l_638[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int16_t *l_639 = &p_1152->g_288;
                    int i;
                    (*p_1152->g_82) &= p_35;
                    (*p_1152->g_501) = ((~0x7DC7L) , l_598[2]);
                    (*p_1152->g_501) = func_45(p_1152->g_96[6][8][0], (l_576 != l_639), p_1152);
                    return p_1152->g_109[7][1];
                }
                else
                { /* block id: 340 */
                    int32_t **l_641 = &p_1152->g_403[1];
                    uint16_t *l_642 = &p_1152->g_124[8];
                    int32_t ****l_652 = &p_1152->g_651;
                    int32_t l_653 = 0L;
                    int32_t l_654[2][3][8] = {{{0x0AFED28CL,0x1C30984DL,0x1C30984DL,0x0AFED28CL,3L,0L,0L,3L},{0x0AFED28CL,0x1C30984DL,0x1C30984DL,0x0AFED28CL,3L,0L,0L,3L},{0x0AFED28CL,0x1C30984DL,0x1C30984DL,0x0AFED28CL,3L,0L,0L,3L}},{{0x0AFED28CL,0x1C30984DL,0x1C30984DL,0x0AFED28CL,3L,0L,0L,3L},{0x0AFED28CL,0x1C30984DL,0x1C30984DL,0x0AFED28CL,3L,0L,0L,3L},{0x0AFED28CL,0x1C30984DL,0x1C30984DL,0x0AFED28CL,3L,0L,0L,3L}}};
                    int8_t *l_672[3];
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_672[i] = &p_1152->g_100;
                    (*l_641) = (*p_1152->g_231);
                    (**p_1152->g_402) = (l_633 &= (((((**l_641) != (((((((!(((*l_642)++) && (safe_mod_func_uint16_t_u_u(l_609[5][0][0], (+((*l_642) = (safe_div_func_uint16_t_u_u((**l_641), (0x3E06L && (safe_div_func_uint32_t_u_u(0xFF0C6CFCL, 0x5FDF2AAAL))))))))))) , &l_641) != ((*l_652) = p_1152->g_651)) <= FAKE_DIVERGE(p_1152->group_0_offset, get_group_id(0), 10)) ^ p_35) == p_1152->g_106) ^ p_1152->g_17[1])) , p_35) > p_35) <= p_1152->g_17[0]));
                    for (l_599 = 0; (l_599 <= 1); l_599 += 1)
                    { /* block id: 349 */
                        int32_t l_657 = 0x3F22B913L;
                        int32_t l_660 = 0L;
                        int32_t l_661 = 0x2ABF7E53L;
                        int32_t l_664 = 0x1523AE4FL;
                        int32_t l_665 = 0L;
                        uint16_t l_667 = 0x30BEL;
                        int i;
                        (**p_1152->g_402) = (**p_1152->g_501);
                        p_1152->g_126[l_599] = (void*)0;
                        --l_667;
                    }
                    if ((p_35 , (((safe_mod_func_int8_t_s_s((l_609[7][0][0] = ((*l_635) = p_35)), p_35)) | (p_35 & 250UL)) < p_1152->g_96[3][6][0])))
                    { /* block id: 356 */
                        int64_t l_675 = (-3L);
                        l_676 |= ((safe_div_func_int32_t_s_s(l_675, 0x372C2C25L)) >= p_35);
                        (**l_641) = l_677;
                    }
                    else
                    { /* block id: 359 */
                        uint64_t l_694 = 0xFD6AF861F3E96C01L;
                        l_695[5][0][0] = (l_633 |= (p_35 , (l_663 = (l_609[6][0][0] &= ((*p_1152->g_82) = (p_35 , (safe_div_func_uint16_t_u_u(((65535UL >= ((0L == ((*l_548) &= (safe_rshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_s((safe_div_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(p_35, (((safe_mod_func_int32_t_s_s(p_35, (~(safe_mod_func_int8_t_s_s(((~0x7186L) > (safe_lshift_func_int16_t_s_u(p_35, ((*p_1152->g_307) < l_694)))), p_35))))) && 0x28E635CDL) | 0x97B9L))), l_694)), 4)), p_35)))) <= p_35)) > p_1152->g_100), p_1152->g_49))))))));
                    }
                }
                ++l_697;
                for (p_35 = 0; (p_35 != 28); p_35 = safe_add_func_uint64_t_u_u(p_35, 1))
                { /* block id: 371 */
                    uint32_t l_703[8][8][4] = {{{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL}},{{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL}},{{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL}},{{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL}},{{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL}},{{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL}},{{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL}},{{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL},{0x0DB21F0BL,0x920251E4L,4294967291UL,4294967295UL}}};
                    int i, j, k;
                    (1 + 1);
                }
                if ((((*l_707) = l_705) == ((((*l_708) |= (*l_547)) , 0L) , ((*l_710) = (void*)0))))
                { /* block id: 382 */
                    int32_t l_730 = 3L;
                    uint16_t *l_733[10][3] = {{&p_1152->g_734,&p_1152->g_734,&p_1152->g_734},{&p_1152->g_734,&p_1152->g_734,&p_1152->g_734},{&p_1152->g_734,&p_1152->g_734,&p_1152->g_734},{&p_1152->g_734,&p_1152->g_734,&p_1152->g_734},{&p_1152->g_734,&p_1152->g_734,&p_1152->g_734},{&p_1152->g_734,&p_1152->g_734,&p_1152->g_734},{&p_1152->g_734,&p_1152->g_734,&p_1152->g_734},{&p_1152->g_734,&p_1152->g_734,&p_1152->g_734},{&p_1152->g_734,&p_1152->g_734,&p_1152->g_734},{&p_1152->g_734,&p_1152->g_734,&p_1152->g_734}};
                    uint32_t l_751 = 0x64FEEE75L;
                    int i, j;
                    for (l_676 = 0; (l_676 > 11); l_676 = safe_add_func_int16_t_s_s(l_676, 8))
                    { /* block id: 385 */
                        int16_t **l_723 = &l_706;
                        int32_t l_724 = 0x3A389A02L;
                        atomic_min(&p_1152->g_atomic_reduction[get_linear_group_id()], ((safe_div_func_uint64_t_u_u(0x64310AE9567B6C89L, (safe_sub_func_int8_t_s_s(((safe_sub_func_int32_t_s_s(((safe_lshift_func_uint16_t_u_u(p_35, ((((*l_710) = p_1152->g_722) == l_723) , (((0xB0E7L < (0x36FDL || p_1152->g_246)) | (((0x084BL < (6L >= 0x12L)) < (-1L)) == p_1152->g_109[6][7])) >= p_35)))) , 0x1EA50C2BL), 0x01464E73L)) >= p_35), 0xCBL)))) >= l_724));
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1152->v_collective += p_1152->g_atomic_reduction[get_linear_group_id()];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    }
                    l_633 = ((((safe_mod_func_uint16_t_u_u((~l_727), (l_659[4][2][0] &= (p_1152->g_124[7] &= (safe_div_func_int8_t_s_s((l_634 , (((void*)0 != (*p_1152->g_501)) || (((0x3D540861L <= ((*l_547) ^= l_730)) , (p_1152->g_655 = (p_35 != p_35))) != (safe_div_func_uint32_t_u_u(((4294967291UL || l_730) != p_35), 0xD28D076BL))))), p_35)))))) & l_730) >= l_634) > 0L);
                    for (l_497 = (-4); (l_497 >= 19); ++l_497)
                    { /* block id: 396 */
                        uint32_t *l_737 = &p_1152->g_313;
                        int32_t l_740 = 0x4E1015C2L;
                        l_740 &= (((*l_737) = 1UL) == (safe_rshift_func_uint8_t_u_s(p_35, 0)));
                    }
                    (*l_547) = (l_633 = (1L || ((safe_lshift_func_uint8_t_u_u(l_658[0], 5)) , (((0x06CC53FE96988396L <= (((*l_635) = (&p_1152->g_109[7][1] != (((((((safe_lshift_func_uint16_t_u_s(((safe_add_func_uint32_t_u_u((((safe_div_func_uint8_t_u_u(l_751, (l_751 && (l_752 , ((p_35 > (safe_unary_minus_func_int64_t_s((*l_547)))) , 2UL))))) & (*l_547)) < GROUP_DIVERGE(1, 1)), p_35)) , p_35), 7)) , l_754) <= (-3L)) || p_35) >= l_633) , l_755) , &p_1152->g_124[2]))) < p_35)) < p_35) != l_663))));
                }
                else
                { /* block id: 403 */
                    int16_t l_764 = 0L;
                    int32_t l_780 = (-4L);
                    uint32_t l_781[6][1] = {{0xE9786E2EL},{0xE9786E2EL},{0xE9786E2EL},{0xE9786E2EL},{0xE9786E2EL},{0xE9786E2EL}};
                    int32_t l_783 = 0x022C0018L;
                    int i, j;
                    if (l_756)
                    { /* block id: 404 */
                        uint32_t *l_792[9] = {&p_1152->g_134,&p_1152->g_134,&p_1152->g_134,&p_1152->g_134,&p_1152->g_134,&p_1152->g_134,&p_1152->g_134,&p_1152->g_134,&p_1152->g_134};
                        int32_t *l_793 = &l_783;
                        int i;
                        (*p_1152->g_757) = (*p_1152->g_231);
                        (*p_1152->g_784) = func_45((p_35 & (l_783 = ((safe_lshift_func_int8_t_s_u((((*p_1152->g_307) = (((safe_rshift_func_int8_t_s_u(p_35, l_634)) == l_658[1]) >= ((((((((safe_add_func_uint16_t_u_u(l_764, (((*l_547) = ((safe_sub_func_uint16_t_u_u((((*l_547) >= (safe_sub_func_int32_t_s_s((l_780 = (~(safe_div_func_uint8_t_u_u((+(safe_add_func_int8_t_s_s((((safe_rshift_func_uint8_t_u_s(p_35, 5)) || ((((safe_add_func_uint32_t_u_u((safe_rshift_func_int16_t_s_u((18446744073709551615UL || (((p_35 >= 6L) , p_35) ^ 0x78E18A1DE136C1CBL)), p_1152->g_109[4][4])), l_764)) == p_35) != p_35) < 6UL)) != p_35), 0x4BL))), l_779)))), 0x30A21337L))) != p_35), p_35)) & p_35)) <= l_781[0][0]))) <= 18446744073709551609UL) , (void*)0) == (void*)0) , (-1L)) || p_1152->g_100) & l_695[0][0][4]) & p_35))) >= p_35), 7)) , l_782))), p_1152->g_96[6][8][0], p_1152);
                        l_793 = ((0xF6571E94L > (safe_add_func_int8_t_s_s((safe_sub_func_int32_t_s_s(((l_783 | l_695[5][0][0]) , ((safe_sub_func_int32_t_s_s((((*l_635) = (safe_unary_minus_func_int16_t_s(p_1152->g_49))) , 0x57803B80L), (l_781[0][0] , 8L))) != p_1152->g_96[6][7][0])), (l_780 = l_695[5][0][0]))), p_35))) , (void*)0);
                    }
                    else
                    { /* block id: 414 */
                        uint8_t l_810 = 0xB2L;
                        l_662 = (safe_add_func_int16_t_s_s((p_1152->g_292 != l_796[1]), ((l_609[2][0][0] ^= (safe_rshift_func_int8_t_s_s((safe_mod_func_int16_t_s_s((safe_mod_func_int64_t_s_s(p_35, ((*l_547) ^= (l_780 |= p_35)))), p_35)), 0))) | (l_695[5][1][4] = p_35))));
                        (*l_547) |= (safe_mod_func_int64_t_s_s(p_35, ((((((safe_add_func_uint32_t_u_u((((safe_div_func_int8_t_s_s(1L, ((p_1152->g_655 = (p_1152->g_100 = (l_810 = ((*l_635) |= (-1L))))) ^ (FAKE_DIVERGE(p_1152->group_1_offset, get_group_id(1), 10) < (safe_div_func_uint8_t_u_u((l_813 != (((safe_mod_func_int8_t_s_s(p_1152->g_107, (GROUP_DIVERGE(1, 1) || ((safe_div_func_int32_t_s_s((p_1152->g_98 >= ((p_1152->g_651 != (void*)0) , (l_818 , 1L))), FAKE_DIVERGE(p_1152->local_2_offset, get_local_id(2), 10))) >= l_696)))) || GROUP_DIVERGE(1, 1)) , &p_1152->g_336[5])), p_35)))))) && p_35) > (-1L)), p_35)) ^ l_666) & l_781[4][0]) , p_35) | 1L) & p_35)));
                    }
                    l_780 ^= p_35;
                    (*l_547) = ((void*)0 == &p_1152->g_16);
                    for (l_575 = 0; (l_575 <= 2); ++l_575)
                    { /* block id: 430 */
                        int32_t **l_821 = (void*)0;
                        int32_t **l_822 = &l_598[2];
                        (*l_822) = (void*)0;
                        return p_1152->g_229[1];
                    }
                }
            }
            for (p_1152->g_11 = 0; (p_1152->g_11 == 10); p_1152->g_11 = safe_add_func_int64_t_s_s(p_1152->g_11, 1))
            { /* block id: 438 */
                uint16_t l_825 = 1UL;
                (*l_547) = l_825;
                (*p_1152->g_836) = &l_599;
            }
            for (l_676 = 1; (l_676 <= 7); l_676 += 1)
            { /* block id: 445 */
                int8_t ***l_838 = &l_796[2];
                int32_t l_848 = 0x196983A6L;
                uint32_t *l_865 = &p_1152->g_709;
                int i;
                l_609[1][0][0] |= (((((*l_838) = l_837) == l_839) >= ((++(*p_1152->g_307)) <= (((safe_div_func_int32_t_s_s(((p_1152->g_734 ^ p_35) == ((((((((*l_547) = 0x6795D834L) , p_35) >= ((**l_813) = (safe_mul_func_int8_t_s_s(p_35, (0x4B123E189CD97BAFL || (((((safe_mul_func_int16_t_s_s((0x35L >= l_848), 4L)) >= p_35) , p_35) | l_849) || 0x5DC303FCL)))))) || l_848) < p_1152->g_124[8]) >= p_35) <= p_1152->g_850)), p_35)) < p_1152->g_246) ^ 0x11246A3C9944B213L))) || p_35);
                if (((safe_sub_func_uint8_t_u_u((&l_598[2] != ((GROUP_DIVERGE(0, 1) | (((*l_865) = ((+(((safe_add_func_int32_t_s_s(p_35, l_677)) | 0x49L) > ((safe_add_func_int16_t_s_s(p_35, (+(safe_div_func_int16_t_s_s(((+(((**l_813) = ((p_1152->g_313 ^= p_1152->g_49) <= (safe_add_func_uint64_t_u_u(0UL, ((p_1152->g_100 ^= 0x7BL) , ((safe_div_func_int32_t_s_s((safe_add_func_uint32_t_u_u(4294967294UL, p_1152->g_98)), (*l_547))) , l_755)))))) < p_35)) | 0x02L), (*l_547)))))) || 1UL))) , 5UL)) , 0x2FA2DAD3077710B3L)) , &p_1152->g_128)), l_695[4][0][1])) && p_1152->g_49))
                { /* block id: 455 */
                    uint8_t l_866[1];
                    uint16_t *l_871 = &p_1152->g_124[5];
                    uint16_t **l_870 = &l_871;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_866[i] = 0x6BL;
                    l_866[0]++;
                    for (l_848 = 2; (l_848 >= 0); l_848 -= 1)
                    { /* block id: 459 */
                        (*p_1152->g_869) = p_1152->g_722;
                        (*p_1152->g_872) = l_870;
                        l_633 |= 0x01E22FB7L;
                    }
                }
                else
                { /* block id: 464 */
                    l_848 = (p_35 || ((safe_lshift_func_uint8_t_u_u((p_35 != ((safe_sub_func_int8_t_s_s(((*l_547) = (safe_div_func_int32_t_s_s((p_35 ^ (p_35 , ((~1UL) > (p_1152->g_246 == ((((l_609[2][0][0] = p_35) & ((*l_547) <= (safe_lshift_func_uint8_t_u_u(((((l_677 || p_35) <= p_35) , (void*)0) != (void*)0), p_35)))) < FAKE_DIVERGE(p_1152->global_2_offset, get_global_id(2), 10)) & 18446744073709551615UL))))), (*l_547)))), p_35)) , l_848)), p_35)) == p_35));
                }
                return l_848;
            }
            (*p_1152->g_886) = &l_695[7][0][0];
        }
    }
    return l_887;
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_288 p_1152->g_402 p_1152->g_403 p_1152->g_501 p_1152->g_100 p_1152->g_109 p_1152->g_229 p_1152->g_82 p_1152->g_313 p_1152->g_246 p_1152->g_128 p_1152->g_83
 * writes: p_1152->g_288 p_1152->g_100 p_1152->g_82 p_1152->g_106 p_1152->g_313 p_1152->g_246 p_1152->g_83 p_1152->g_403
 */
int32_t  func_38(uint8_t  p_39, int64_t  p_40, int64_t  p_41, int64_t  p_42, struct S0 * p_1152)
{ /* block id: 256 */
    int64_t l_507 = (-2L);
    int32_t l_508[2][4][2];
    int32_t l_510 = 1L;
    uint32_t l_512 = 0x40E1F32FL;
    uint32_t *l_515[3];
    int32_t *l_520[2];
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
                l_508[i][j][k] = 0x3442C536L;
        }
    }
    for (i = 0; i < 3; i++)
        l_515[i] = &p_1152->g_49;
    for (i = 0; i < 2; i++)
        l_520[i] = &l_510;
    for (p_1152->g_288 = 0; (p_1152->g_288 <= 4); p_1152->g_288 += 1)
    { /* block id: 259 */
        uint16_t l_498 = 65535UL;
        int32_t l_502 = 2L;
        int32_t l_504 = (-1L);
        int32_t l_505 = 0x1A8D9B2FL;
        int32_t l_506[4][6][1] = {{{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}},{{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}},{{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}},{{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}}};
        int i, j, k;
        l_498--;
        for (p_1152->g_100 = 4; (p_1152->g_100 >= 0); p_1152->g_100 -= 1)
        { /* block id: 263 */
            int32_t *l_503[4] = {&p_1152->g_83,&p_1152->g_83,&p_1152->g_83,&p_1152->g_83};
            int32_t l_509[8][6] = {{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)},{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)},{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)},{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)},{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)},{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)},{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)},{0x1ABF02F0L,(-1L),(-1L),0x1ABF02F0L,0x31546D84L,(-7L)}};
            int32_t l_511 = 0x4994C722L;
            uint16_t *l_516 = (void*)0;
            uint16_t *l_517 = &l_498;
            int i, j;
            (*p_1152->g_501) = (*p_1152->g_402);
            l_512++;
            (*p_1152->g_82) = (((l_515[1] = l_515[2]) == (void*)0) >= ((p_1152->g_109[(p_1152->g_100 + 3)][(p_1152->g_288 + 3)] ^ ((*l_517) = 0x000FL)) | p_1152->g_229[p_1152->g_100]));
            for (p_1152->g_313 = 0; (p_1152->g_313 <= 9); p_1152->g_313 += 1)
            { /* block id: 271 */
                return l_507;
            }
        }
        for (p_1152->g_246 = 9; (p_1152->g_246 >= 0); p_1152->g_246 -= 1)
        { /* block id: 277 */
            return l_502;
        }
        for (l_504 = 9; (l_504 >= 0); l_504 -= 1)
        { /* block id: 282 */
            uint32_t l_518 = 4294967295UL;
            int32_t *l_519[6] = {&l_506[1][5][0],(void*)0,&l_506[1][5][0],&l_506[1][5][0],(void*)0,&l_506[1][5][0]};
            int i;
            if ((*p_1152->g_128))
                break;
            l_508[1][1][0] |= l_518;
            return l_506[0][0][0];
        }
    }
    (*p_1152->g_128) = ((**p_1152->g_402) = (!l_507));
    for (l_507 = 0; (l_507 >= (-3)); l_507 = safe_sub_func_int32_t_s_s(l_507, 5))
    { /* block id: 292 */
        int16_t l_523 = 0x2FD2L;
        int8_t *l_529 = &p_1152->g_100;
        uint16_t *l_540[10] = {&p_1152->g_124[2],&p_1152->g_124[2],&p_1152->g_124[2],&p_1152->g_124[2],&p_1152->g_124[2],&p_1152->g_124[2],&p_1152->g_124[2],&p_1152->g_124[2],&p_1152->g_124[2],&p_1152->g_124[2]};
        int32_t *l_541 = &p_1152->g_83;
        int32_t **l_542 = &p_1152->g_403[0];
        int i;
        (*l_542) = l_541;
    }
    return p_40;
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_185 p_1152->g_313 p_1152->g_307 p_1152->g_96 p_1152->g_95
 * writes: p_1152->g_185 p_1152->g_229 p_1152->g_106 p_1152->g_83 p_1152->g_95
 */
int64_t  func_43(int32_t * p_44, struct S0 * p_1152)
{ /* block id: 163 */
    int32_t **l_315 = &p_1152->g_82;
    uint64_t *l_319 = &p_1152->g_95;
    int32_t l_327 = 0x37871E8FL;
    int16_t *l_344 = &p_1152->g_288;
    int32_t l_385 = 9L;
    int32_t l_397 = 0x08E9BBEAL;
    int32_t l_415[2][1];
    int16_t l_434 = 0x7D1BL;
    uint16_t *l_481 = (void*)0;
    int8_t l_490 = 0x2CL;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_415[i][j] = 5L;
    }
    for (p_1152->g_185 = 0; (p_1152->g_185 != (-2)); p_1152->g_185--)
    { /* block id: 166 */
        int32_t ***l_314 = (void*)0;
        uint64_t *l_320 = &p_1152->g_95;
        int32_t *l_321 = &p_1152->g_106;
        int32_t *l_322 = &p_1152->g_83;
        (*l_322) = (0UL | (p_1152->g_313 , ((((void*)0 == l_314) < ((~(&p_1152->g_126[1] == l_315)) , (~(((*p_1152->g_307) = 0x53D9A7A357069F22L) | (safe_lshift_func_int8_t_s_u((safe_unary_minus_func_int64_t_s(p_1152->g_96[4][7][0])), 6)))))) , ((*l_321) = ((l_319 != l_320) > 253UL)))));
    }
    for (p_1152->g_95 = 3; (p_1152->g_95 > 7); ++p_1152->g_95)
    { /* block id: 173 */
        uint8_t **l_337 = &p_1152->g_336[0];
        uint8_t l_340 = 255UL;
        int8_t *l_347 = (void*)0;
        int8_t **l_346 = &l_347;
        int32_t l_358 = 0x194CD54BL;
        int32_t l_383 = 0x1840CDF6L;
        int32_t l_408 = 1L;
        uint64_t **l_484[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int16_t *l_491[4];
        int16_t **l_492[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t *l_493 = &l_408;
        int i;
        for (i = 0; i < 4; i++)
            l_491[i] = &p_1152->g_122;
        (1 + 1);
    }
    for (l_327 = 0; (l_327 <= (-22)); l_327--)
    { /* block id: 252 */
        uint64_t l_496 = 18446744073709551612UL;
        if (l_496)
            break;
    }
    return l_385;
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_16 p_1152->g_2 p_1152->g_83 p_1152->g_82 p_1152->g_100 p_1152->g_109 p_1152->g_95 p_1152->g_11 p_1152->g_49 p_1152->g_122 p_1152->g_96 p_1152->g_127 p_1152->g_106 p_1152->g_128 p_1152->g_17 p_1152->g_134 p_1152->g_107 p_1152->g_124 p_1152->g_229 p_1152->g_231 p_1152->g_98 p_1152->g_246 p_1152->g_292 p_1152->g_306
 * writes: p_1152->g_82 p_1152->g_95 p_1152->g_96 p_1152->g_98 p_1152->g_100 p_1152->g_109 p_1152->g_122 p_1152->g_124 p_1152->g_106 p_1152->g_83 p_1152->g_134 p_1152->g_49 p_1152->g_16 p_1152->g_185 p_1152->g_229 p_1152->g_246 p_1152->g_288
 */
int32_t * func_45(uint32_t  p_46, int32_t  p_47, struct S0 * p_1152)
{ /* block id: 26 */
    int32_t *l_65[7];
    uint32_t *l_133 = &p_1152->g_134;
    int8_t l_135 = 0x05L;
    uint8_t l_136 = 0x82L;
    int32_t *l_137 = &p_1152->g_2;
    uint64_t l_198 = 0x0E1254D81AA495B3L;
    uint64_t *l_226 = (void*)0;
    uint64_t **l_225 = &l_226;
    uint64_t ***l_224 = &l_225;
    int8_t *l_265 = &l_135;
    int8_t **l_264 = &l_265;
    int16_t l_310 = (-6L);
    int i;
    for (i = 0; i < 7; i++)
        l_65[i] = &p_1152->g_11;
    if ((((safe_lshift_func_int8_t_s_s((safe_sub_func_int8_t_s_s(((((0xD7CCL | (safe_unary_minus_func_uint64_t_u((func_56(p_47, ((p_1152->g_16 != (safe_mod_func_uint32_t_u_u(func_61(l_65[3], ((p_46 , (safe_mod_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_s(((safe_lshift_func_int8_t_s_u(((p_1152->g_2 & (safe_mul_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_u(func_76(p_47, p_1152), 0)) | (((*l_133) ^= (((safe_rshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s((~p_1152->g_17[0]), p_1152->g_17[1])) == 1L), p_47)) && p_1152->g_2) != 0xEE9C46A301C7F311L)) || p_1152->g_17[1])), p_1152->g_2))) != 65527UL), p_47)) ^ l_135), 4)) , l_136), p_47))) && 0x28A0557642EFCB15L), l_137, p_1152), 0x61E38285L))) <= p_46), p_1152) & 0x0B1CBCA9DBBE3BBBL)))) || FAKE_DIVERGE(p_1152->group_1_offset, get_group_id(1), 10)) && p_46) > p_47), p_47)), 1)) >= p_1152->g_2) | p_1152->g_16))
    { /* block id: 59 */
        uint8_t l_177 = 1UL;
        int32_t l_181 = (-8L);
        uint64_t *l_201 = &p_1152->g_96[6][8][0];
        uint64_t *l_204 = (void*)0;
        uint64_t *l_205 = &p_1152->g_95;
        int8_t *l_227 = &p_1152->g_185;
        uint64_t *l_228 = &p_1152->g_229[3];
        uint16_t l_230 = 65534UL;
        uint32_t l_267 = 0x44E22DBBL;
lbl_248:
        for (p_1152->g_134 = 0; (p_1152->g_134 <= 1); p_1152->g_134 += 1)
        { /* block id: 62 */
            uint64_t *l_172[4] = {&p_1152->g_95,&p_1152->g_95,&p_1152->g_95,&p_1152->g_95};
            uint64_t **l_171 = &l_172[0];
            int32_t l_180 = 0L;
            int32_t l_182 = 0x12886F20L;
            int32_t l_186 = 0x5F1D7F75L;
            uint64_t l_188 = 0x75A03A189BEC7C54L;
            int i;
            for (p_1152->g_49 = 0; (p_1152->g_49 <= 1); p_1152->g_49 += 1)
            { /* block id: 65 */
                uint64_t ***l_173 = &l_171;
                int32_t l_176 = 0x49473A2EL;
                int32_t l_184 = 0L;
                (*l_173) = l_171;
                for (p_1152->g_16 = 1; (p_1152->g_16 >= 0); p_1152->g_16 -= 1)
                { /* block id: 69 */
                    int32_t l_174 = (-9L);
                    int32_t l_175 = (-1L);
                    int32_t l_183 = 0x377E2E7FL;
                    int32_t l_187 = (-1L);
                    uint32_t l_191[4][4][2] = {{{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L}},{{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L}},{{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L}},{{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L},{0x6AF6FE2EL,0x6C887C84L}}};
                    int i, j, k;
                    --l_177;
                    l_188++;
                    l_191[2][2][0]--;
                }
            }
            return &p_1152->g_2;
        }
        if ((((safe_lshift_func_int16_t_s_u((((safe_mod_func_int64_t_s_s(((l_198 | (safe_unary_minus_func_int8_t_s(l_177))) < (safe_unary_minus_func_uint64_t_u(p_47))), ((*l_205) &= ((*l_201)--)))) != (l_230 ^= ((*l_228) |= (((((safe_div_func_uint64_t_u_u(((safe_mod_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s(((((safe_rshift_func_uint8_t_u_s(((safe_mod_func_uint32_t_u_u((((void*)0 == l_137) < (0xE982L < ((((safe_lshift_func_int8_t_s_s(((*l_227) = ((safe_lshift_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u((((0xBDL && ((void*)0 != l_224)) || p_1152->g_100) == 18446744073709551613UL), p_46)), p_46)), 6)) , p_47)), l_177)) < l_181) | l_181) , 0xA390L))), p_1152->g_109[7][1])) <= l_177), p_1152->g_122)) & 0x41L) >= p_1152->g_124[8]) >= GROUP_DIVERGE(0, 1)), 5)), p_1152->g_122)) > p_46), p_1152->g_16)) , 0x29968E2C016A6488L) != p_1152->g_134) <= 247UL) || l_177)))) <= l_181), GROUP_DIVERGE(2, 1))) <= p_1152->g_49) && 2L))
        { /* block id: 82 */
            int32_t *l_244 = &p_1152->g_11;
            int32_t l_263 = (-5L);
            (*p_1152->g_231) = &l_181;
            for (l_136 = 0; (l_136 > 33); l_136++)
            { /* block id: 86 */
                uint16_t *l_253[2][1];
                int32_t l_258 = 0x74CD0BB9L;
                int i, j;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_253[i][j] = &p_1152->g_124[4];
                }
                for (p_1152->g_122 = (-15); (p_1152->g_122 <= (-5)); p_1152->g_122++)
                { /* block id: 89 */
                    int32_t *l_240 = &p_1152->g_16;
                    uint8_t *l_243 = &l_177;
                    (*p_1152->g_82) = (l_65[4] != l_133);
                    (*p_1152->g_82) = (safe_mod_func_uint16_t_u_u(p_47, (safe_mul_func_int16_t_s_s(p_47, (1L && ((((*l_240) = p_1152->g_134) , (FAKE_DIVERGE(p_1152->local_2_offset, get_local_id(2), 10) || (!((&p_1152->g_100 == (void*)0) & (safe_add_func_int16_t_s_s(l_230, ((~((((*l_243) &= p_1152->g_109[6][4]) < (~p_47)) != p_1152->g_83)) <= 0xE784L))))))) < 0xEE72L))))));
                    (*p_1152->g_127) = 1L;
                    for (p_1152->g_106 = 4; (p_1152->g_106 >= 0); p_1152->g_106 -= 1)
                    { /* block id: 97 */
                        return l_244;
                    }
                }
                for (l_198 = 0; (l_198 <= 1); l_198 += 1)
                { /* block id: 103 */
                    int64_t *l_245 = &p_1152->g_246;
                    int i;
                    p_1152->g_83 |= (((*l_245) = (p_1152->g_124[l_198] || p_1152->g_124[(l_198 + 6)])) , (**p_1152->g_231));
                    if (l_230)
                        continue;
                    for (l_135 = 0; (l_135 <= 9); l_135 += 1)
                    { /* block id: 109 */
                        int32_t *l_247 = (void*)0;
                        return l_247;
                    }
                    for (p_1152->g_16 = 0; (p_1152->g_16 <= 1); p_1152->g_16 += 1)
                    { /* block id: 114 */
                        if (l_177)
                            goto lbl_248;
                        if ((*l_244))
                            continue;
                    }
                }
                l_263 = (((l_181 = (safe_lshift_func_int8_t_s_u(p_1152->g_229[3], 0))) , p_47) >= (safe_mul_func_uint16_t_u_u((++p_1152->g_124[8]), ((safe_rshift_func_uint16_t_u_u(((p_1152->g_16 && ((((l_258 = p_46) >= (((void*)0 != &p_1152->g_109[7][1]) >= (((*l_201) = (((safe_mod_func_uint64_t_u_u(0x9ED9BC621D0DC95DL, p_46)) != (safe_lshift_func_int8_t_s_u(p_47, p_1152->g_95))) , l_230)) > 1UL))) == FAKE_DIVERGE(p_1152->global_1_offset, get_global_id(1), 10)) & p_47)) || p_1152->g_229[1]), 8)) != FAKE_DIVERGE(p_1152->group_1_offset, get_group_id(1), 10)))));
            }
        }
        else
        { /* block id: 125 */
            int8_t **l_266 = &l_265;
            int32_t l_291 = 0L;
            l_266 = l_264;
            l_267++;
            for (p_1152->g_122 = 0; (p_1152->g_122 != 6); ++p_1152->g_122)
            { /* block id: 130 */
                uint64_t l_280 = 0x989D3A3C46B0DBF9L;
                int16_t *l_287 = &p_1152->g_288;
                uint32_t *l_289 = &l_267;
                uint32_t **l_290 = &l_289;
                int32_t l_293 = 0x4F099D6DL;
                l_293 = ((p_47 & (safe_mod_func_uint32_t_u_u((safe_mod_func_int64_t_s_s((safe_lshift_func_int8_t_s_s((((((p_1152->g_98 || l_280) == l_280) > (((safe_add_func_uint32_t_u_u(((*l_133) = (p_1152->g_83 < (((((l_230 , ((p_47 && (safe_rshift_func_int16_t_s_s(((((((safe_mul_func_int16_t_s_s(((*l_287) = p_1152->g_246), (((*l_290) = l_289) != (void*)0))) , 65533UL) , p_1152->g_229[3]) || l_291) , p_1152->g_292) != (void*)0), l_291))) & p_1152->g_246)) == FAKE_DIVERGE(p_1152->local_2_offset, get_local_id(2), 10)) != 0x55FA5ECB414F5B9CL) == (-5L)) < (*l_137)))), (*l_137))) < p_47) < l_230)) , l_291) >= p_46), p_46)), p_1152->g_124[5])), (*l_137)))) <= 65535UL);
                for (p_1152->g_246 = 2; (p_1152->g_246 <= 9); p_1152->g_246 += 1)
                { /* block id: 137 */
                    int32_t l_294 = 0x18AF615FL;
                    int i, j;
                    l_294 ^= (p_1152->g_109[p_1152->g_246][p_1152->g_246] , (&p_1152->g_17[0] != &p_1152->g_17[1]));
                }
            }
            for (l_136 = (-28); (l_136 <= 29); l_136++)
            { /* block id: 143 */
                uint32_t l_297 = 0UL;
                if (p_47)
                    break;
                ++l_297;
                l_181 = p_46;
            }
        }
        for (p_1152->g_16 = 0; (p_1152->g_16 > (-19)); p_1152->g_16--)
        { /* block id: 151 */
            (*p_1152->g_128) = ((&p_1152->g_108 != (void*)0) ^ (FAKE_DIVERGE(p_1152->local_0_offset, get_local_id(0), 10) != ((void*)0 != p_1152->g_306[0])));
        }
    }
    else
    { /* block id: 154 */
        for (p_1152->g_16 = (-7); (p_1152->g_16 == (-5)); p_1152->g_16 = safe_add_func_int64_t_s_s(p_1152->g_16, 5))
        { /* block id: 157 */
            return l_65[4];
        }
    }
    l_310 &= 8L;
    return l_65[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_134 p_1152->g_107 p_1152->g_11 p_1152->g_95 p_1152->g_106
 * writes: p_1152->g_134
 */
uint64_t  func_56(int32_t  p_57, int64_t  p_58, struct S0 * p_1152)
{ /* block id: 54 */
    int32_t l_143 = 0x34AC4052L;
    uint32_t *l_144 = &p_1152->g_134;
    int16_t l_155[5][8] = {{1L,1L,(-1L),1L,0L,1L,(-1L),1L},{1L,1L,(-1L),1L,0L,1L,(-1L),1L},{1L,1L,(-1L),1L,0L,1L,(-1L),1L},{1L,1L,(-1L),1L,0L,1L,(-1L),1L},{1L,1L,(-1L),1L,0L,1L,(-1L),1L}};
    int8_t *l_156 = (void*)0;
    int8_t *l_157 = (void*)0;
    int32_t l_158[1];
    int64_t l_163 = 0L;
    int32_t l_170 = (-1L);
    int i, j;
    for (i = 0; i < 1; i++)
        l_158[i] = (-1L);
    l_170 ^= ((++(*l_144)) < ((safe_div_func_int64_t_s_s(((safe_sub_func_uint8_t_u_u((FAKE_DIVERGE(p_1152->global_1_offset, get_global_id(1), 10) | (safe_div_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(((l_143 <= 0x73432FECL) && (l_158[0] ^= l_155[0][0])), 6)), (safe_rshift_func_uint16_t_u_s(l_143, (((safe_mul_func_int16_t_s_s((-2L), 3L)) || 255UL) && (l_163 ^ (((safe_lshift_func_uint16_t_u_s((safe_mod_func_int16_t_s_s((safe_add_func_int8_t_s_s((((((!p_1152->g_107) , 1UL) , (void*)0) != l_144) < p_57), 0xADL)), p_1152->g_11)), p_1152->g_95)) , 0xAD1FF961L) , l_155[0][0])))))))), 1L)) <= 0x6AL), 18446744073709551615UL)) != p_1152->g_106));
    return p_58;
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_128 p_1152->g_83 p_1152->g_122 p_1152->g_106 p_1152->g_11
 * writes: p_1152->g_106
 */
uint32_t  func_61(int32_t * p_62, uint16_t  p_63, int32_t * p_64, struct S0 * p_1152)
{ /* block id: 49 */
    int32_t *l_140 = &p_1152->g_106;
    int32_t **l_141[5];
    uint16_t l_142[8] = {1UL,65535UL,1UL,1UL,65535UL,1UL,1UL,65535UL};
    int i;
    for (i = 0; i < 5; i++)
        l_141[i] = &l_140;
    (*l_140) &= (safe_mul_func_uint8_t_u_u(((*p_1152->g_128) | p_1152->g_122), (-2L)));
    (*l_140) ^= (*p_62);
    p_64 = p_62;
    return l_142[5];
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_83 p_1152->g_16 p_1152->g_2 p_1152->g_82 p_1152->g_100 p_1152->g_109 p_1152->g_95 p_1152->g_11 p_1152->g_49 p_1152->g_122 p_1152->g_96 p_1152->g_127 p_1152->g_106 p_1152->g_128
 * writes: p_1152->g_82 p_1152->g_95 p_1152->g_96 p_1152->g_98 p_1152->g_100 p_1152->g_109 p_1152->g_122 p_1152->g_124 p_1152->g_106 p_1152->g_83
 */
int8_t  func_76(uint64_t  p_77, struct S0 * p_1152)
{ /* block id: 27 */
    uint32_t l_86 = 0xE24EB764L;
    int32_t **l_91 = &p_1152->g_82;
    int32_t **l_93 = &p_1152->g_82;
    int32_t l_99 = 0L;
    int32_t l_102 = 0L;
    int32_t l_103 = 0x2E73AF25L;
    int32_t l_104 = 0x17764D01L;
    int32_t l_105[3][1];
    uint32_t l_118 = 0x69E21D65L;
    int16_t *l_121 = &p_1152->g_122;
    int64_t *l_123[4][10][6] = {{{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98}},{{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98}},{{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98}},{{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98},{(void*)0,(void*)0,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98,&p_1152->g_98}}};
    int32_t *l_125 = (void*)0;
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
            l_105[i][j] = (-1L);
    }
    for (p_77 = 21; (p_77 >= 40); p_77 = safe_add_func_int64_t_s_s(p_77, 2))
    { /* block id: 30 */
        int32_t *l_80 = &p_1152->g_2;
        int32_t **l_81[10][3][1] = {{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}},{{&l_80},{&l_80},{&l_80}}};
        int32_t ***l_92 = &l_91;
        uint64_t *l_94[8][9][3] = {{{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95}},{{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95}},{{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95}},{{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95}},{{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95}},{{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95}},{{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95}},{{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95},{&p_1152->g_95,&p_1152->g_95,&p_1152->g_95}}};
        int64_t *l_97 = &p_1152->g_98;
        int32_t *l_101 = &p_1152->g_11;
        int i, j, k;
        p_1152->g_82 = l_80;
        p_1152->g_100 |= (l_99 = (p_1152->g_83 & (((safe_div_func_uint64_t_u_u(l_86, (safe_mul_func_int8_t_s_s((p_1152->g_16 > ((p_1152->g_2 < (GROUP_DIVERGE(1, 1) >= ((~(((p_77 != (-9L)) , ((&p_1152->g_82 != (((*l_97) = ((p_1152->g_96[6][8][0] = (p_1152->g_95 = (safe_sub_func_int32_t_s_s((((*l_92) = l_91) == l_93), (**l_93))))) | (**l_93))) , l_91)) && FAKE_DIVERGE(p_1152->local_0_offset, get_local_id(0), 10))) >= 0x3B62L)) || p_1152->g_83))) || p_77)), (**l_93))))) != (**l_93)) < (**l_93))));
        (*l_91) = l_101;
        --p_1152->g_109[7][1];
    }
    (*p_1152->g_127) |= ((p_1152->g_124[8] = (safe_div_func_uint32_t_u_u(((safe_mod_func_int64_t_s_s(p_1152->g_95, (p_1152->g_98 = (safe_add_func_int16_t_s_s(((l_118 < (safe_rshift_func_int16_t_s_s(p_1152->g_11, 5))) >= p_77), ((((((0xAC5FL > ((((*l_121) &= p_1152->g_49) | p_77) && 5UL)) < 0x1000718B624CAB1FL) == (*p_1152->g_82)) , (void*)0) != &l_91) <= 1UL)))))) >= (**l_91)), p_1152->g_96[6][4][1]))) | (**l_93));
    for (p_1152->g_98 = 0; p_1152->g_98 < 10; p_1152->g_98 += 1)
    {
        p_1152->g_124[p_1152->g_98] = 4UL;
    }
    (*p_1152->g_128) = (*p_1152->g_82);
    return p_1152->g_2;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S0 c_1153;
    struct S0* p_1152 = &c_1153;
    struct S0 c_1154 = {
        (-5L), // p_1152->g_2
        0x479E672CL, // p_1152->g_11
        0x46C8C5CEL, // p_1152->g_16
        {255UL,255UL,255UL}, // p_1152->g_17
        4294967295UL, // p_1152->g_49
        0x13CBC919L, // p_1152->g_83
        &p_1152->g_83, // p_1152->g_82
        0xF5ABE080F98811FBL, // p_1152->g_95
        {{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}},{{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L},{0xEA8502006303C50BL,0x70AB71361DE361C4L}}}, // p_1152->g_96
        0x2F053B50BCEF8620L, // p_1152->g_98
        0L, // p_1152->g_100
        0x1C2FEE76L, // p_1152->g_106
        (-10L), // p_1152->g_107
        0L, // p_1152->g_108
        {{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL},{0x2DAEL,4UL,65531UL,1UL,0xA3A4L,65535UL,0UL,65531UL,1UL,65535UL}}, // p_1152->g_109
        0x1351L, // p_1152->g_122
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_1152->g_124
        {&p_1152->g_106,&p_1152->g_106}, // p_1152->g_126
        &p_1152->g_106, // p_1152->g_127
        &p_1152->g_83, // p_1152->g_128
        4294967290UL, // p_1152->g_134
        0x3BL, // p_1152->g_185
        {0UL,0UL,0UL,0UL,0UL}, // p_1152->g_229
        &p_1152->g_82, // p_1152->g_231
        0L, // p_1152->g_246
        0L, // p_1152->g_288
        (void*)0, // p_1152->g_292
        &p_1152->g_229[3], // p_1152->g_307
        {&p_1152->g_307,&p_1152->g_307,&p_1152->g_307,&p_1152->g_307,&p_1152->g_307,&p_1152->g_307,&p_1152->g_307,&p_1152->g_307,&p_1152->g_307}, // p_1152->g_306
        0x9E86540BL, // p_1152->g_313
        {&p_1152->g_17[1],(void*)0,&p_1152->g_17[1],&p_1152->g_17[1],(void*)0,&p_1152->g_17[1],&p_1152->g_17[1],(void*)0,&p_1152->g_17[1],&p_1152->g_17[1]}, // p_1152->g_336
        {&p_1152->g_106,&p_1152->g_106}, // p_1152->g_403
        &p_1152->g_403[0], // p_1152->g_402
        {9UL,9UL}, // p_1152->g_410
        &p_1152->g_82, // p_1152->g_501
        &p_1152->g_83, // p_1152->g_543
        255UL, // p_1152->g_549
        {{{&p_1152->g_403[0],&p_1152->g_403[0]}}}, // p_1152->g_637
        (void*)0, // p_1152->g_640
        (void*)0, // p_1152->g_651
        0x0DL, // p_1152->g_655
        &p_1152->g_82, // p_1152->g_704
        0x54E4AD30L, // p_1152->g_709
        (void*)0, // p_1152->g_722
        0x7774L, // p_1152->g_734
        &p_1152->g_82, // p_1152->g_757
        &p_1152->g_403[0], // p_1152->g_784
        &p_1152->g_403[0], // p_1152->g_836
        0x10L, // p_1152->g_850
        &p_1152->g_722, // p_1152->g_869
        (void*)0, // p_1152->g_873
        &p_1152->g_873, // p_1152->g_872
        (void*)0, // p_1152->g_885
        &p_1152->g_82, // p_1152->g_886
        0x62470512B9BCDED8L, // p_1152->g_1000
        &p_1152->g_107, // p_1152->g_1027
        &p_1152->g_1027, // p_1152->g_1026
        0x796F786AL, // p_1152->g_1142
        &p_1152->g_403[0], // p_1152->g_1143
        {{&p_1152->g_82,&p_1152->g_403[0],&p_1152->g_82,&p_1152->g_82,&p_1152->g_403[0],&p_1152->g_82,&p_1152->g_82,&p_1152->g_403[0]},{&p_1152->g_82,&p_1152->g_403[0],&p_1152->g_82,&p_1152->g_82,&p_1152->g_403[0],&p_1152->g_82,&p_1152->g_82,&p_1152->g_403[0]},{&p_1152->g_82,&p_1152->g_403[0],&p_1152->g_82,&p_1152->g_82,&p_1152->g_403[0],&p_1152->g_82,&p_1152->g_82,&p_1152->g_403[0]},{&p_1152->g_82,&p_1152->g_403[0],&p_1152->g_82,&p_1152->g_82,&p_1152->g_403[0],&p_1152->g_82,&p_1152->g_82,&p_1152->g_403[0]},{&p_1152->g_82,&p_1152->g_403[0],&p_1152->g_82,&p_1152->g_82,&p_1152->g_403[0],&p_1152->g_82,&p_1152->g_82,&p_1152->g_403[0]},{&p_1152->g_82,&p_1152->g_403[0],&p_1152->g_82,&p_1152->g_82,&p_1152->g_403[0],&p_1152->g_82,&p_1152->g_82,&p_1152->g_403[0]}}, // p_1152->g_1148
        &p_1152->g_82, // p_1152->g_1149
        0, // p_1152->v_collective
        sequence_input[get_global_id(0)], // p_1152->global_0_offset
        sequence_input[get_global_id(1)], // p_1152->global_1_offset
        sequence_input[get_global_id(2)], // p_1152->global_2_offset
        sequence_input[get_local_id(0)], // p_1152->local_0_offset
        sequence_input[get_local_id(1)], // p_1152->local_1_offset
        sequence_input[get_local_id(2)], // p_1152->local_2_offset
        sequence_input[get_group_id(0)], // p_1152->group_0_offset
        sequence_input[get_group_id(1)], // p_1152->group_1_offset
        sequence_input[get_group_id(2)], // p_1152->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1153 = c_1154;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1152);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1152->g_2, "p_1152->g_2", print_hash_value);
    transparent_crc(p_1152->g_11, "p_1152->g_11", print_hash_value);
    transparent_crc(p_1152->g_16, "p_1152->g_16", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1152->g_17[i], "p_1152->g_17[i]", print_hash_value);

    }
    transparent_crc(p_1152->g_49, "p_1152->g_49", print_hash_value);
    transparent_crc(p_1152->g_83, "p_1152->g_83", print_hash_value);
    transparent_crc(p_1152->g_95, "p_1152->g_95", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1152->g_96[i][j][k], "p_1152->g_96[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1152->g_98, "p_1152->g_98", print_hash_value);
    transparent_crc(p_1152->g_100, "p_1152->g_100", print_hash_value);
    transparent_crc(p_1152->g_106, "p_1152->g_106", print_hash_value);
    transparent_crc(p_1152->g_107, "p_1152->g_107", print_hash_value);
    transparent_crc(p_1152->g_108, "p_1152->g_108", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1152->g_109[i][j], "p_1152->g_109[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1152->g_122, "p_1152->g_122", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1152->g_124[i], "p_1152->g_124[i]", print_hash_value);

    }
    transparent_crc(p_1152->g_134, "p_1152->g_134", print_hash_value);
    transparent_crc(p_1152->g_185, "p_1152->g_185", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1152->g_229[i], "p_1152->g_229[i]", print_hash_value);

    }
    transparent_crc(p_1152->g_246, "p_1152->g_246", print_hash_value);
    transparent_crc(p_1152->g_288, "p_1152->g_288", print_hash_value);
    transparent_crc(p_1152->g_313, "p_1152->g_313", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1152->g_410[i], "p_1152->g_410[i]", print_hash_value);

    }
    transparent_crc(p_1152->g_549, "p_1152->g_549", print_hash_value);
    transparent_crc(p_1152->g_655, "p_1152->g_655", print_hash_value);
    transparent_crc(p_1152->g_709, "p_1152->g_709", print_hash_value);
    transparent_crc(p_1152->g_734, "p_1152->g_734", print_hash_value);
    transparent_crc(p_1152->g_850, "p_1152->g_850", print_hash_value);
    transparent_crc(p_1152->g_1000, "p_1152->g_1000", print_hash_value);
    transparent_crc(p_1152->g_1142, "p_1152->g_1142", print_hash_value);
    transparent_crc(p_1152->v_collective, "p_1152->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
