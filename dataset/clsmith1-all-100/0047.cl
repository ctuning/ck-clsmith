// --atomics 18 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 16,81,2 -l 2,81,1
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

__constant uint32_t permutations[10][162] = {
{66,92,119,3,52,47,1,7,61,139,40,81,59,18,76,88,15,145,68,23,101,159,57,46,26,6,113,50,136,111,116,149,51,30,58,38,67,22,20,28,12,17,43,34,106,105,16,97,156,115,83,60,140,56,135,64,73,125,54,95,120,107,86,144,100,134,31,129,41,110,160,154,85,32,117,102,25,74,53,127,82,114,161,78,45,62,133,108,71,42,70,96,44,130,128,91,90,104,142,137,79,122,5,80,39,99,35,4,147,152,141,36,75,87,13,72,158,94,155,124,98,21,89,14,84,77,153,33,157,37,118,48,24,8,121,112,29,55,138,109,143,27,131,150,11,148,123,132,2,65,10,63,0,126,49,103,146,19,69,93,9,151}, // permutation 0
{61,62,155,92,24,39,95,0,96,129,8,136,10,125,138,11,114,81,109,12,3,110,128,45,32,118,153,112,35,126,132,107,29,60,65,99,16,142,88,115,20,18,9,67,72,124,111,91,43,157,148,1,131,82,77,158,117,106,139,41,22,33,100,152,83,93,102,36,101,113,122,140,161,145,71,13,4,137,143,30,151,133,17,42,14,49,78,44,48,73,37,50,5,103,66,90,40,59,53,116,2,120,68,121,23,84,154,47,55,89,7,97,70,46,134,79,76,104,85,69,119,144,94,52,149,57,51,98,87,150,6,130,25,28,26,147,108,15,31,34,64,21,86,156,160,141,105,75,19,74,123,54,58,38,135,56,27,146,159,127,63,80}, // permutation 1
{160,123,97,82,130,98,127,148,86,132,67,28,74,139,109,155,75,102,122,95,47,44,140,156,34,145,64,14,133,146,39,68,65,62,42,32,157,78,63,36,108,115,3,22,85,18,52,17,31,6,149,143,154,58,41,5,113,45,107,111,141,125,110,21,66,26,77,138,7,61,25,153,129,20,51,128,161,38,103,16,19,79,142,59,112,100,150,50,57,49,120,99,96,80,104,55,83,147,158,90,101,23,94,135,87,10,12,159,56,119,134,71,92,40,118,35,126,84,73,114,2,33,137,4,152,116,27,37,144,60,121,1,43,30,69,72,81,124,15,11,89,151,54,48,117,70,0,91,13,106,24,105,9,76,93,53,136,29,131,46,8,88}, // permutation 2
{125,130,22,0,6,63,38,19,145,142,123,119,161,95,128,146,81,83,10,72,44,85,16,126,155,103,112,79,28,97,159,152,109,71,42,8,18,12,70,2,101,30,102,129,52,33,147,91,100,113,76,117,154,15,110,25,1,40,31,69,107,118,134,13,59,99,144,7,35,143,96,139,124,115,55,77,82,49,131,47,108,74,135,67,132,46,89,121,27,14,9,87,29,50,56,98,32,157,160,105,64,104,5,138,4,17,73,151,84,11,58,36,53,45,127,41,43,90,78,66,150,62,20,141,39,61,65,23,88,116,93,26,111,149,80,148,48,153,122,34,75,86,94,21,114,137,92,133,156,106,54,24,140,120,158,68,57,51,136,37,3,60}, // permutation 3
{106,23,145,8,19,82,18,102,133,152,17,149,119,129,111,159,7,103,110,98,68,85,27,153,91,46,150,104,4,54,127,75,109,63,45,22,121,15,69,31,143,118,94,148,28,5,11,66,33,12,73,139,71,20,99,155,136,132,151,1,38,142,135,137,62,117,56,13,116,97,123,72,9,78,147,96,21,59,65,26,43,79,77,100,61,120,158,146,107,14,161,113,101,84,114,93,92,16,3,144,48,0,2,50,140,88,125,122,157,124,67,130,156,36,134,128,141,57,83,37,138,112,39,131,74,44,86,64,32,87,95,30,58,29,25,41,60,10,90,76,55,81,115,49,24,47,80,70,53,105,40,52,35,89,154,160,34,42,51,126,6,108}, // permutation 4
{133,45,79,74,78,69,67,100,54,77,161,98,40,71,68,65,109,91,12,73,27,125,20,139,22,2,75,134,3,80,72,55,111,51,99,60,46,119,97,150,90,70,92,105,89,145,159,18,118,131,137,154,114,96,158,61,0,135,128,86,140,151,57,41,30,34,33,147,16,160,107,13,8,138,85,5,81,126,44,10,120,129,11,24,53,9,94,152,48,47,113,149,64,148,87,88,143,36,59,50,127,31,38,146,108,37,32,49,23,124,142,106,122,28,66,136,1,144,76,63,15,95,141,52,101,56,6,121,7,21,110,14,43,155,42,116,35,4,112,156,123,115,157,29,83,58,117,93,102,82,153,130,25,84,26,19,103,62,104,39,132,17}, // permutation 5
{116,155,127,35,56,135,65,88,82,123,114,39,110,87,67,46,106,57,143,100,11,66,139,54,85,157,70,91,147,50,160,134,138,41,84,108,105,33,61,81,36,44,73,25,79,153,4,131,77,60,149,19,86,64,40,15,75,158,146,98,32,16,132,144,126,117,124,55,3,27,45,93,137,130,2,17,7,125,103,94,49,13,119,76,159,129,1,72,62,104,101,37,48,21,22,34,111,14,121,151,83,71,90,97,69,145,109,113,9,53,154,12,26,68,140,29,96,74,18,28,5,152,0,47,120,23,133,142,59,115,24,112,161,20,136,141,42,8,150,43,122,52,89,10,78,128,38,51,102,95,148,107,31,63,58,156,6,118,80,30,92,99}, // permutation 6
{153,58,70,49,116,99,135,2,8,137,79,75,11,127,45,51,150,36,129,20,108,120,122,104,21,26,126,83,44,48,148,6,72,66,115,144,107,141,53,65,46,61,139,95,94,134,31,25,105,10,28,159,62,52,67,57,110,69,80,9,73,109,4,90,35,89,43,30,3,151,140,14,88,146,92,18,142,145,143,130,0,41,114,74,100,24,131,5,59,16,77,17,138,19,113,76,71,1,136,119,154,91,157,63,33,86,55,101,34,87,12,50,56,102,47,54,103,152,29,160,23,117,15,60,93,158,42,85,78,37,111,39,155,106,27,112,98,161,32,96,125,40,84,68,147,133,132,123,128,97,149,81,7,124,38,13,64,121,22,82,118,156}, // permutation 7
{56,79,58,145,33,101,106,47,132,36,157,65,57,7,21,144,158,148,75,155,100,99,126,55,80,22,88,28,154,128,82,108,74,129,40,27,104,71,8,81,156,60,37,50,39,124,117,102,83,97,137,109,133,84,52,49,96,123,42,31,149,151,4,30,1,23,29,15,64,35,66,113,78,115,161,140,18,131,77,95,6,51,93,12,68,147,153,122,17,136,85,3,134,98,46,118,9,76,20,67,114,112,103,125,127,135,25,121,152,13,34,59,70,2,10,62,38,146,54,48,150,43,120,87,72,53,89,26,141,19,16,92,91,105,14,0,139,116,61,41,142,69,11,159,119,111,138,143,160,86,44,94,63,24,130,32,110,73,45,90,5,107}, // permutation 8
{22,126,5,136,141,30,149,133,31,50,110,8,100,76,121,104,131,93,96,0,60,160,154,89,85,99,16,148,151,44,25,45,72,117,124,102,105,80,98,66,23,39,11,161,92,127,41,150,63,132,106,65,111,138,137,88,140,70,62,118,24,155,32,37,87,47,15,21,134,69,128,101,4,142,108,103,145,51,48,34,68,74,61,42,12,79,17,55,38,135,157,56,52,2,67,29,152,143,129,159,147,13,49,95,54,97,3,139,119,20,59,27,144,28,1,73,125,123,10,107,43,19,83,90,82,94,153,64,7,116,122,9,18,77,46,35,112,53,14,6,40,57,81,84,58,86,156,91,115,75,158,114,113,120,71,36,78,146,130,109,33,26} // permutation 9
};

// Seed: 47

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int64_t  f0;
   int64_t  f1;
   int16_t  f2;
   volatile int32_t  f3;
};

struct S1 {
    volatile int32_t g_2;
    int32_t g_3;
    int32_t g_7;
    int32_t g_26;
    int32_t g_29;
    uint8_t g_40;
    int64_t g_69;
    int32_t g_71;
    volatile uint8_t * volatile * volatile g_76;
    volatile uint8_t g_79;
    volatile uint8_t * volatile g_78;
    volatile VECTOR(int32_t, 16) g_93;
    VECTOR(int8_t, 2) g_98;
    int8_t g_100;
    uint16_t g_113[1];
    int8_t *g_116;
    int8_t **g_115;
    int8_t *** volatile g_114;
    uint8_t *g_121;
    int32_t *g_158;
    int32_t ** volatile g_157;
    VECTOR(int32_t, 4) g_180;
    VECTOR(int8_t, 16) g_197;
    volatile VECTOR(uint64_t, 2) g_199;
    int8_t g_204;
    volatile VECTOR(uint32_t, 16) g_214;
    VECTOR(int16_t, 16) g_217;
    VECTOR(uint64_t, 4) g_237;
    volatile VECTOR(uint64_t, 2) g_238;
    volatile VECTOR(uint32_t, 16) g_239;
    uint32_t g_260[7];
    int8_t g_285;
    int64_t g_289[1];
    int8_t ***g_295;
    int8_t ****g_294[8];
    volatile VECTOR(uint16_t, 4) g_298;
    volatile VECTOR(uint64_t, 16) g_309;
    VECTOR(uint16_t, 4) g_324;
    volatile int64_t g_330;
    volatile int64_t *g_329[5];
    volatile int64_t * volatile * volatile g_328;
    union U0 g_351;
    VECTOR(int64_t, 16) g_365;
    volatile VECTOR(int32_t, 4) g_369;
    int64_t g_378;
    int16_t g_379;
    uint64_t g_383;
    int32_t g_389;
    int32_t * volatile g_388[4];
    uint8_t g_392;
    int32_t * volatile g_396;
    int32_t * volatile g_397[5][6];
    int32_t * volatile g_398;
    uint32_t g_410[10][10][2];
    volatile VECTOR(int64_t, 16) g_427;
    VECTOR(int64_t, 2) g_428;
    volatile VECTOR(int64_t, 8) g_430;
    VECTOR(int8_t, 16) g_445;
    int32_t * volatile g_459;
    volatile VECTOR(int32_t, 8) g_460;
    volatile VECTOR(int32_t, 4) g_461;
    union U0 g_472;
    volatile VECTOR(int32_t, 16) g_517;
    volatile VECTOR(int32_t, 16) g_518;
    volatile VECTOR(uint8_t, 2) g_522;
    VECTOR(int32_t, 4) g_540;
    VECTOR(int8_t, 2) g_635;
    volatile VECTOR(int32_t, 2) g_649;
    VECTOR(uint32_t, 8) g_652;
    volatile VECTOR(uint8_t, 8) g_655;
    VECTOR(uint8_t, 8) g_656;
    uint32_t *g_667;
    uint32_t **g_666;
    VECTOR(uint64_t, 8) g_675;
    VECTOR(uint64_t, 2) g_676;
    VECTOR(int64_t, 2) g_677;
    VECTOR(int64_t, 16) g_683;
    VECTOR(int64_t, 16) g_685;
    uint64_t g_688;
    int32_t ** volatile g_694;
    int32_t ** volatile g_695;
    int32_t ** volatile g_696;
    int32_t ** volatile g_697[8][8][4];
    int32_t ** volatile g_698;
    volatile VECTOR(uint8_t, 16) g_712;
    volatile union U0 g_752;
    int32_t **g_761;
    VECTOR(uint8_t, 2) g_765;
    int64_t g_790;
    int32_t g_791;
    int64_t g_793;
    int64_t g_810[7];
    int16_t *g_838;
    int16_t **g_837;
    union U0 * volatile *g_869;
    int64_t *g_874[7][7][5];
    volatile VECTOR(int32_t, 2) g_907;
    VECTOR(uint32_t, 2) g_909;
    uint64_t g_924;
    uint64_t g_968;
    union U0 g_972;
    VECTOR(uint8_t, 4) g_1083;
    VECTOR(uint16_t, 8) g_1087;
    uint32_t g_1099;
    volatile VECTOR(int32_t, 2) g_1113;
    volatile VECTOR(uint16_t, 4) g_1116;
    VECTOR(uint16_t, 16) g_1117;
    VECTOR(uint16_t, 8) g_1118;
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
    uint32_t tid;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S1 * p_1135);
int32_t * func_11(int64_t  p_12, int32_t  p_13, int32_t * p_14, uint64_t  p_15, struct S1 * p_1135);
int8_t  func_16(int32_t * p_17, uint8_t  p_18, int32_t  p_19, uint16_t  p_20, uint64_t  p_21, struct S1 * p_1135);
int32_t * func_22(int32_t * p_23, struct S1 * p_1135);
int16_t  func_32(int16_t  p_33, int16_t  p_34, struct S1 * p_1135);
uint32_t  func_43(uint64_t  p_44, int32_t * p_45, struct S1 * p_1135);
int32_t * func_47(uint8_t * p_48, uint16_t  p_49, int64_t  p_50, int64_t  p_51, struct S1 * p_1135);
uint8_t * func_52(uint8_t * p_53, uint32_t  p_54, uint8_t * p_55, uint8_t * p_56, uint8_t * p_57, struct S1 * p_1135);
uint8_t * func_58(uint8_t  p_59, struct S1 * p_1135);
uint32_t  func_60(uint8_t * p_61, int32_t * p_62, struct S1 * p_1135);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1135->g_3 p_1135->g_157 p_1135->g_158 p_1135->g_761 p_1135->g_7
 * writes: p_1135->g_3 p_1135->g_158
 */
int32_t  func_1(struct S1 * p_1135)
{ /* block id: 4 */
    uint8_t l_8 = 4UL;
    VECTOR(int64_t, 16) l_1016 = (VECTOR(int64_t, 16))(0x6C0C80A815CC919BL, (VECTOR(int64_t, 4))(0x6C0C80A815CC919BL, (VECTOR(int64_t, 2))(0x6C0C80A815CC919BL, (-1L)), (-1L)), (-1L), 0x6C0C80A815CC919BL, (-1L), (VECTOR(int64_t, 2))(0x6C0C80A815CC919BL, (-1L)), (VECTOR(int64_t, 2))(0x6C0C80A815CC919BL, (-1L)), 0x6C0C80A815CC919BL, (-1L), 0x6C0C80A815CC919BL, (-1L));
    VECTOR(int64_t, 2) l_1017 = (VECTOR(int64_t, 2))(0x58202B0150A831AFL, 0x01861D4E33CC8BB6L);
    VECTOR(int8_t, 16) l_1018 = (VECTOR(int8_t, 16))(0x1BL, (VECTOR(int8_t, 4))(0x1BL, (VECTOR(int8_t, 2))(0x1BL, 1L), 1L), 1L, 0x1BL, 1L, (VECTOR(int8_t, 2))(0x1BL, 1L), (VECTOR(int8_t, 2))(0x1BL, 1L), 0x1BL, 1L, 0x1BL, 1L);
    int32_t *l_1134 = &p_1135->g_7;
    int i;
    for (p_1135->g_3 = 0; (p_1135->g_3 != 28); p_1135->g_3 = safe_add_func_uint32_t_u_u(p_1135->g_3, 5))
    { /* block id: 7 */
        int32_t *l_6[7] = {&p_1135->g_7,&p_1135->g_3,&p_1135->g_7,&p_1135->g_7,&p_1135->g_3,&p_1135->g_7,&p_1135->g_7};
        int32_t l_1012 = 0x267D72CFL;
        VECTOR(int64_t, 4) l_1015 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0L), 0L);
        int8_t *l_1047 = (void*)0;
        int8_t *l_1048 = &p_1135->g_285;
        uint16_t *l_1119 = (void*)0;
        uint64_t l_1124 = 0x19C930EF729B47C6L;
        int16_t l_1133[9][4] = {{0x0168L,0x70E2L,0x0168L,0x0168L},{0x0168L,0x70E2L,0x0168L,0x0168L},{0x0168L,0x70E2L,0x0168L,0x0168L},{0x0168L,0x70E2L,0x0168L,0x0168L},{0x0168L,0x70E2L,0x0168L,0x0168L},{0x0168L,0x70E2L,0x0168L,0x0168L},{0x0168L,0x70E2L,0x0168L,0x0168L},{0x0168L,0x70E2L,0x0168L,0x0168L},{0x0168L,0x70E2L,0x0168L,0x0168L}};
        int i, j;
        --l_8;
    }
    (*p_1135->g_761) = (*p_1135->g_157);
    return (*l_1134);
}


/* ------------------------------------------ */
/* 
 * reads : p_1135->g_666 p_1135->g_667 p_1135->g_389 p_1135->g_761 p_1135->g_71 p_1135->g_972.f1 p_1135->g_158 p_1135->g_1113 p_1135->g_157
 * writes: p_1135->g_260 p_1135->g_26 p_1135->g_158 p_1135->g_71 p_1135->g_972.f1 p_1135->g_389 p_1135->g_7
 */
int32_t * func_11(int64_t  p_12, int32_t  p_13, int32_t * p_14, uint64_t  p_15, struct S1 * p_1135)
{ /* block id: 431 */
    int32_t *l_1049 = &p_1135->g_71;
    int32_t *l_1050 = (void*)0;
    int32_t *l_1051 = (void*)0;
    int32_t *l_1052 = &p_1135->g_389;
    int32_t *l_1053 = &p_1135->g_7;
    int32_t *l_1054 = &p_1135->g_389;
    int32_t *l_1055[2][5] = {{&p_1135->g_71,&p_1135->g_71,&p_1135->g_71,&p_1135->g_71,&p_1135->g_71},{&p_1135->g_71,&p_1135->g_71,&p_1135->g_71,&p_1135->g_71,&p_1135->g_71}};
    uint32_t l_1056 = 0UL;
    int8_t ***l_1062[4][9][3] = {{{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115}},{{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115}},{{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115}},{{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115},{&p_1135->g_115,&p_1135->g_115,&p_1135->g_115}}};
    int8_t ****l_1063 = &p_1135->g_295;
    VECTOR(uint8_t, 4) l_1082 = (VECTOR(uint8_t, 4))(0x22L, (VECTOR(uint8_t, 2))(0x22L, 0xBDL), 0xBDL);
    uint64_t *l_1084[7][2][8] = {{{(void*)0,(void*)0,(void*)0,&p_1135->g_688,(void*)0,&p_1135->g_688,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1135->g_688,(void*)0,&p_1135->g_688,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1135->g_688,(void*)0,&p_1135->g_688,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1135->g_688,(void*)0,&p_1135->g_688,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1135->g_688,(void*)0,&p_1135->g_688,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1135->g_688,(void*)0,&p_1135->g_688,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1135->g_688,(void*)0,&p_1135->g_688,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1135->g_688,(void*)0,&p_1135->g_688,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1135->g_688,(void*)0,&p_1135->g_688,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1135->g_688,(void*)0,&p_1135->g_688,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1135->g_688,(void*)0,&p_1135->g_688,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1135->g_688,(void*)0,&p_1135->g_688,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1135->g_688,(void*)0,&p_1135->g_688,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1135->g_688,(void*)0,&p_1135->g_688,(void*)0,(void*)0}}};
    int64_t *l_1089[3];
    int64_t **l_1088 = &l_1089[2];
    int64_t ***l_1090 = &l_1088;
    uint32_t *l_1097 = (void*)0;
    uint32_t *l_1098[9];
    int32_t **l_1100[5] = {&l_1050,&l_1050,&l_1050,&l_1050,&l_1050};
    int32_t *l_1101 = (void*)0;
    int32_t *l_1102 = &p_1135->g_71;
    VECTOR(int8_t, 2) l_1109 = (VECTOR(int8_t, 2))(0x3DL, 0L);
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1089[i] = &p_1135->g_810[5];
    for (i = 0; i < 9; i++)
        l_1098[i] = &p_1135->g_1099;
    ++l_1056;
    (*p_14) = (((safe_sub_func_uint32_t_u_u(((**p_1135->g_666) = 1UL), (*l_1052))) , &p_1135->g_295) == &p_1135->g_114);
    (*p_1135->g_761) = p_14;
    if (((*p_14) = ((*l_1102) = ((l_1101 = ((*p_1135->g_761) = l_1054)) != l_1102))))
    { /* block id: 445 */
        for (p_15 = 0; (p_15 > 46); p_15 = safe_add_func_uint64_t_u_u(p_15, 1))
        { /* block id: 448 */
            uint32_t l_1110 = 5UL;
            if ((*l_1102))
            { /* block id: 449 */
                for (p_1135->g_972.f1 = 0; (p_1135->g_972.f1 == (-25)); p_1135->g_972.f1 = safe_sub_func_int8_t_s_s(p_1135->g_972.f1, 5))
                { /* block id: 452 */
                    (**p_1135->g_761) = (safe_lshift_func_int8_t_s_s((!((VECTOR(int8_t, 2))(l_1109.yy)).even), 5));
                }
            }
            else
            { /* block id: 455 */
                if (l_1110)
                    break;
            }
            return p_14;
        }
        if ((atomic_inc(&p_1135->g_atomic_input[18 * get_linear_group_id() + 9]) == 5))
        { /* block id: 461 */
            uint32_t l_1111 = 4294967295UL;
            uint64_t l_1112 = 18446744073709551615UL;
            l_1112 |= l_1111;
            unsigned int result = 0;
            result += l_1111;
            result += l_1112;
            atomic_add(&p_1135->g_special_values[18 * get_linear_group_id() + 9], result);
        }
        else
        { /* block id: 463 */
            (1 + 1);
        }
    }
    else
    { /* block id: 466 */
        (*l_1052) = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(p_1135->g_1113.yx)))).yxxx)))).z;
    }
    return (*p_1135->g_157);
}


/* ------------------------------------------ */
/* 
 * reads : p_1135->g_7 p_1135->g_158 p_1135->g_652 p_1135->g_26 p_1135->g_667 p_1135->g_260 p_1135->g_328 p_1135->g_329 p_1135->g_330
 * writes: p_1135->g_7 p_1135->g_26 p_1135->g_260 p_1135->g_410 p_1135->g_69
 */
int8_t  func_16(int32_t * p_17, uint8_t  p_18, int32_t  p_19, uint16_t  p_20, uint64_t  p_21, struct S1 * p_1135)
{ /* block id: 416 */
    int16_t **l_1029 = &p_1135->g_838;
    int32_t l_1030 = 1L;
    uint32_t **l_1039 = &p_1135->g_667;
    uint32_t *l_1042 = &p_1135->g_410[9][2][0];
    int32_t l_1043 = 0x700298EBL;
    int32_t l_1044 = 0L;
    int64_t *l_1045 = &p_1135->g_69;
    int16_t l_1046 = 4L;
    for (p_1135->g_7 = 0; (p_1135->g_7 < (-25)); p_1135->g_7--)
    { /* block id: 419 */
        (*p_1135->g_158) = (-2L);
    }
    (*p_1135->g_158) |= ((safe_rshift_func_uint16_t_u_u(p_1135->g_652.s4, 13)) == (-4L));
    (*p_1135->g_158) = (safe_sub_func_int8_t_s_s((((*l_1045) = (safe_add_func_uint8_t_u_u((((safe_sub_func_uint32_t_u_u((l_1030 = (l_1029 != l_1029)), (((((safe_mod_func_uint64_t_u_u(p_18, ((safe_div_func_uint32_t_u_u(((safe_sub_func_uint64_t_u_u((1UL || (p_18 < ((((void*)0 == l_1039) < ((*l_1042) = ((**l_1039)++))) , (((l_1043 = ((&p_18 == (l_1043 , &p_1135->g_79)) & p_21)) > l_1044) == 65535UL)))), (**p_1135->g_328))) & l_1044), l_1044)) , 1UL))) && 246UL) < 0xC88BL) != 9L) != l_1044))) || p_21) , 0x49L), l_1044))) >= p_20), l_1046));
    return p_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_1135->g_7 p_1135->g_26 p_1135->g_29 p_1135->g_100 p_1135->g_907 p_1135->g_909 p_1135->g_351 p_1135->g_666 p_1135->g_667 p_1135->g_260 p_1135->g_379 p_1135->g_3 p_1135->g_924 p_1135->g_398 p_1135->g_968 p_1135->g_972 p_1135->g_295 p_1135->g_115 p_1135->g_116 p_1135->g_383 p_1135->g_761 p_1135->g_158
 * writes: p_1135->g_7 p_1135->g_26 p_1135->g_29 p_1135->g_100 p_1135->g_289 p_1135->g_71 p_1135->g_260 p_1135->g_968 p_1135->g_383 p_1135->g_295
 */
int32_t * func_22(int32_t * p_23, struct S1 * p_1135)
{ /* block id: 9 */
    VECTOR(int8_t, 2) l_835 = (VECTOR(int8_t, 2))(0x31L, 0L);
    int32_t l_844 = 7L;
    int32_t l_846 = 0L;
    int32_t l_847 = 0x22E647CEL;
    int32_t l_848 = 0x004A6888L;
    VECTOR(int32_t, 4) l_849 = (VECTOR(int32_t, 4))(0x64DE2AD0L, (VECTOR(int32_t, 2))(0x64DE2AD0L, 0x3A7C1179L), 0x3A7C1179L);
    int16_t l_890[3];
    uint32_t l_892 = 0xAD2198F7L;
    VECTOR(uint8_t, 2) l_905 = (VECTOR(uint8_t, 2))(1UL, 0xD5L);
    int16_t **l_929 = &p_1135->g_838;
    int64_t l_975 = 0x737BDAE2943155F2L;
    int32_t l_977 = (-1L);
    VECTOR(int32_t, 16) l_984 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x6CC4C25AL), 0x6CC4C25AL), 0x6CC4C25AL, 1L, 0x6CC4C25AL, (VECTOR(int32_t, 2))(1L, 0x6CC4C25AL), (VECTOR(int32_t, 2))(1L, 0x6CC4C25AL), 1L, 0x6CC4C25AL, 1L, 0x6CC4C25AL);
    VECTOR(int32_t, 16) l_985 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x3CD423D4L), 0x3CD423D4L), 0x3CD423D4L, 0L, 0x3CD423D4L, (VECTOR(int32_t, 2))(0L, 0x3CD423D4L), (VECTOR(int32_t, 2))(0L, 0x3CD423D4L), 0L, 0x3CD423D4L, 0L, 0x3CD423D4L);
    uint32_t ***l_996 = &p_1135->g_666;
    uint32_t ***l_998 = &p_1135->g_666;
    uint32_t ****l_997 = &l_998;
    VECTOR(uint64_t, 16) l_999 = (VECTOR(uint64_t, 16))(0xC01E0391421E74F6L, (VECTOR(uint64_t, 4))(0xC01E0391421E74F6L, (VECTOR(uint64_t, 2))(0xC01E0391421E74F6L, 3UL), 3UL), 3UL, 0xC01E0391421E74F6L, 3UL, (VECTOR(uint64_t, 2))(0xC01E0391421E74F6L, 3UL), (VECTOR(uint64_t, 2))(0xC01E0391421E74F6L, 3UL), 0xC01E0391421E74F6L, 3UL, 0xC01E0391421E74F6L, 3UL);
    uint8_t l_1004 = 1UL;
    int64_t *l_1005 = (void*)0;
    uint64_t *l_1006 = &p_1135->g_383;
    uint32_t l_1007 = 1UL;
    int8_t ***l_1010[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int8_t ****l_1011 = &p_1135->g_295;
    int i;
    for (i = 0; i < 3; i++)
        l_890[i] = 1L;
    for (p_1135->g_7 = 0; (p_1135->g_7 > 26); p_1135->g_7 = safe_add_func_int32_t_s_s(p_1135->g_7, 5))
    { /* block id: 12 */
        uint16_t l_35 = 0UL;
        int32_t l_38[4][1][8] = {{{0x48A81D5FL,0x7BA96689L,0x660BE628L,0x7BA96689L,0x48A81D5FL,0x48A81D5FL,0x7BA96689L,0x660BE628L}},{{0x48A81D5FL,0x7BA96689L,0x660BE628L,0x7BA96689L,0x48A81D5FL,0x48A81D5FL,0x7BA96689L,0x660BE628L}},{{0x48A81D5FL,0x7BA96689L,0x660BE628L,0x7BA96689L,0x48A81D5FL,0x48A81D5FL,0x7BA96689L,0x660BE628L}},{{0x48A81D5FL,0x7BA96689L,0x660BE628L,0x7BA96689L,0x48A81D5FL,0x48A81D5FL,0x7BA96689L,0x660BE628L}}};
        VECTOR(int16_t, 8) l_836 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x566DL), 0x566DL), 0x566DL, 1L, 0x566DL);
        int32_t l_860[6] = {(-5L),0L,(-5L),(-5L),0L,(-5L)};
        int32_t l_891 = 0x22FE2F14L;
        VECTOR(uint8_t, 2) l_915 = (VECTOR(uint8_t, 2))(0x52L, 6UL);
        int16_t **l_928[5][10][2] = {{{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0}},{{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0}},{{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0}},{{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0}},{{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0},{&p_1135->g_838,(void*)0}}};
        int i, j, k;
        for (p_1135->g_26 = (-4); (p_1135->g_26 <= 13); p_1135->g_26 = safe_add_func_uint64_t_u_u(p_1135->g_26, 4))
        { /* block id: 15 */
            int16_t **l_839[2];
            uint64_t l_840 = 1UL;
            int32_t l_841[2];
            uint16_t l_858 = 9UL;
            int32_t *l_886 = &l_841[1];
            int32_t *l_887 = &l_38[2][0][6];
            int32_t *l_888 = &l_847;
            int32_t *l_889[1];
            uint64_t *l_897 = (void*)0;
            uint64_t *l_898 = (void*)0;
            uint32_t l_930 = 0x74536511L;
            VECTOR(uint8_t, 16) l_940 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0UL), 0UL), 0UL, 255UL, 0UL, (VECTOR(uint8_t, 2))(255UL, 0UL), (VECTOR(uint8_t, 2))(255UL, 0UL), 255UL, 0UL, 255UL, 0UL);
            int64_t *l_944 = (void*)0;
            int8_t *l_973 = (void*)0;
            uint16_t l_981 = 65535UL;
            int i;
            for (i = 0; i < 2; i++)
                l_839[i] = &p_1135->g_838;
            for (i = 0; i < 2; i++)
                l_841[i] = 0x2AF13062L;
            for (i = 0; i < 1; i++)
                l_889[i] = (void*)0;
            for (p_1135->g_29 = (-11); (p_1135->g_29 == 7); p_1135->g_29 = safe_add_func_int16_t_s_s(p_1135->g_29, 2))
            { /* block id: 18 */
                uint8_t *l_39 = &p_1135->g_40;
                int32_t l_843 = 0x711939FCL;
                int32_t l_845[1];
                uint32_t l_851 = 1UL;
                int64_t *l_872 = &p_1135->g_790;
                int i;
                for (i = 0; i < 1; i++)
                    l_845[i] = 0x7F99F29EL;
                (1 + 1);
            }
            --l_892;
            (*l_888) ^= l_844;
            if ((safe_sub_func_uint64_t_u_u(((*l_887) = ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(0UL, 1UL)).yxyxxyyx)).s4), 1L)))
            { /* block id: 374 */
                uint64_t l_899 = 0x4EB93401DCAD7FE7L;
                if (l_899)
                    break;
            }
            else
            { /* block id: 376 */
                int32_t l_904[1];
                VECTOR(uint8_t, 4) l_906 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xEDL), 0xEDL);
                VECTOR(int32_t, 8) l_908 = (VECTOR(int32_t, 8))(0x32140257L, (VECTOR(int32_t, 4))(0x32140257L, (VECTOR(int32_t, 2))(0x32140257L, (-1L)), (-1L)), (-1L), 0x32140257L, (-1L));
                int32_t l_918 = (-3L);
                int16_t ***l_925 = &l_839[1];
                int64_t *l_931 = &p_1135->g_289[0];
                VECTOR(uint32_t, 16) l_971 = (VECTOR(uint32_t, 16))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 4294967288UL), 4294967288UL), 4294967288UL, 5UL, 4294967288UL, (VECTOR(uint32_t, 2))(5UL, 4294967288UL), (VECTOR(uint32_t, 2))(5UL, 4294967288UL), 5UL, 4294967288UL, 5UL, 4294967288UL);
                int i;
                for (i = 0; i < 1; i++)
                    l_904[i] = 0L;
                for (p_1135->g_100 = (-11); (p_1135->g_100 != (-2)); p_1135->g_100 = safe_add_func_uint32_t_u_u(p_1135->g_100, 2))
                { /* block id: 379 */
                    uint32_t l_910 = 4294967291UL;
                    int32_t *l_921 = (void*)0;
                    l_918 ^= ((safe_div_func_int64_t_s_s(((l_904[0] = l_848) > ((((0x61L ^ ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_905.yy)), ((VECTOR(uint8_t, 2))(l_906.yw)), 0UL, ((VECTOR(uint8_t, 2))(9UL, 251UL)), 0UL)).s2) != (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(p_1135->g_907.yy)).yyxxxxxyyxyxxyxx, ((VECTOR(int32_t, 4))(l_908.s4061)).zwzwyxywwywyzzxz))))).sc0, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))((((*l_888) = (FAKE_DIVERGE(p_1135->group_0_offset, get_group_id(0), 10) <= l_844)) | (0xC1B79280L || ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 4))(sub_sat(((VECTOR(uint32_t, 16))(p_1135->g_909.yyyxyyyyxyyyyyyx)).s76e0, ((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 2))(hadd(((VECTOR(uint32_t, 8))(4294967289UL, 0x98183748L, 9UL, (p_1135->g_351 , ((l_910 , (safe_rshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_s(p_1135->g_29, 2)), ((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),uint8_t,((VECTOR(uint8_t, 8))(l_915.xxxxxxxy)).odd, (uint8_t)(safe_rshift_func_uint16_t_u_s(0x54F1L, l_908.s5)), (uint8_t)l_910))).w))) != (-4L))), 4294967288UL, 0x8D102D73L, 0x084399D0L, 0UL)).s76, ((VECTOR(uint32_t, 2))(0x07B1E995L))))).xyyxxyyyxyxyxxyy, ((VECTOR(uint32_t, 16))(4UL))))).s8df2)))))), 1UL, ((VECTOR(uint32_t, 2))(0xEB964CA9L)), 0UL)).s6)), 3L, 0L, 0x088E40FAL)).zwxyzyyxwzwxzxwz)).sa0))), 0x67273385L, 0L)).y < (**p_1135->g_666))) | (*l_886)) < (-1L))), l_910)) ^ p_1135->g_379);
                    for (l_846 = 0; (l_846 == (-9)); --l_846)
                    { /* block id: 385 */
                        if ((*p_23))
                            break;
                    }
                    return l_921;
                }
                (*l_886) = (-3L);
                (*l_888) &= ((VECTOR(int32_t, 8))(0x0BDDF18FL, (safe_sub_func_int32_t_s_s(p_1135->g_924, (((*l_925) = &p_1135->g_838) != (((*l_931) = ((safe_lshift_func_uint16_t_u_s((((251UL || l_835.x) , l_928[0][1][1]) != l_929), l_918)) | ((((((l_38[0][0][7] , ((void*)0 != &p_1135->g_666)) & GROUP_DIVERGE(2, 1)) && l_848) && l_930) >= 1L) == l_835.x))) , l_929)))), ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 4))(5L)))).s4;
                for (l_930 = 21; (l_930 >= 38); l_930++)
                { /* block id: 396 */
                    uint64_t l_943 = 18446744073709551606UL;
                    uint16_t *l_947 = (void*)0;
                    uint16_t *l_948 = &l_35;
                    int32_t l_949 = 0x2A59C8D7L;
                    VECTOR(int16_t, 4) l_960 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x09C6L), 0x09C6L);
                    uint64_t *l_967 = &p_1135->g_968;
                    int32_t l_974 = 0x20C2ABF3L;
                    int32_t l_976 = (-1L);
                    int32_t l_978 = 0x0B84BB26L;
                    int32_t l_979 = 0x617EA089L;
                    int32_t l_980[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_980[i] = 0x4C345D90L;
                    (*p_1135->g_398) = (safe_rshift_func_uint8_t_u_s(((**p_1135->g_666) > (safe_add_func_uint16_t_u_u((((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(5UL, 0x9AL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(l_940.s54efced34b701be8)))).sf8))), 2UL, 0UL)), 1UL, 0xDCL)).s5, (safe_rshift_func_int8_t_s_s(l_943, (l_944 == (void*)0))))) && 255UL) | ((VECTOR(int64_t, 4))(0x73F264BD7DAA3F7DL, (18446744073709551606UL >= (safe_add_func_uint32_t_u_u((((*l_948) &= (0x1AD4L == (*l_887))) & 0x57B1L), l_906.z))), 0x6E32CC139973D5BCL, 0x599776EE235B27FAL)).w), 0UL))), 7));
                    (*l_886) &= (l_949 == (safe_div_func_uint64_t_u_u((((l_860[0] = (safe_add_func_uint32_t_u_u(((*p_1135->g_667) = 0xD607E21BL), (safe_lshift_func_int8_t_s_s((-1L), 1))))) , l_38[0][0][5]) , ((safe_lshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_u((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_960.zwyxxwxy)).odd)).w & l_904[0]), 4)), (l_848 = (safe_lshift_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(((((safe_add_func_uint64_t_u_u(p_1135->g_26, l_960.z)) , ((((((*l_967) ^= l_844) , (safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(l_971.s7cfd0f0eb48644bb)).se, ((VECTOR(uint32_t, 8))(((((((p_1135->g_972 , 7L) && (*l_888)) > l_847) | l_847) , FAKE_DIVERGE(p_1135->local_2_offset, get_local_id(2), 10)) < l_844), 1UL, (**p_1135->g_666), l_960.x, 1UL, 0xC056ACFAL, 0x837616CAL, 0UL)).s0))) , 0xCEL) >= 0xD2L) , l_973)) != (**p_1135->g_295)) && l_915.y), GROUP_DIVERGE(1, 1))), 0))))) == l_35)), l_904[0])));
                    l_981++;
                    atomic_max(&p_1135->g_atomic_reduction[get_linear_group_id()], 0x5F4C727CL);
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (get_linear_local_id() == 0)
                        p_1135->v_collective += p_1135->g_atomic_reduction[get_linear_group_id()];
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                }
            }
        }
    }
    (**p_1135->g_761) |= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_984.s988e2df8)), ((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_977, ((VECTOR(int32_t, 2))(l_985.s06)), ((VECTOR(int32_t, 8))((-2L), (0x6108L || (((((safe_lshift_func_int8_t_s_s((safe_add_func_uint64_t_u_u(((*l_1006) &= ((((safe_lshift_func_uint16_t_u_u((((safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), 11)) > (l_846 ^ (l_996 != ((*l_997) = l_996)))) , (l_905.y >= ((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(uint64_t, 8))(0UL, 6UL, 0xF4581424CD2990CEL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(l_999.sd4)))), 0xE40EE0528EB78D3CL, 0UL, 0UL)).even, ((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0x5E551CE59902AF1DL, 0x3F01A1A8F8640EB1L)), 18446744073709551615UL, 5UL)).wxwwxxzz, ((VECTOR(uint64_t, 8))((((((0L == (safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 4))((safe_sub_func_int32_t_s_s((*p_23), ((l_846 != l_985.s4) <= l_847))), 6UL, 8UL, 4294967289UL)).w, 4294967294UL))) || l_892) ^ l_905.y) , (**p_1135->g_666)) | 0x0BE860A9L), 0x307EBF9A3FBB5834L, l_985.s9, 0x168E10B2F9F4AD6CL, l_1004, 0xB419A34BEA1A0233L, 8UL, 0x337E718BFE9010FBL))))).lo))).y)), l_984.s0)) , l_1005) == &p_1135->g_793) == 0UL)), l_984.sc)), l_1007)) <= l_844) , (void*)0) == (void*)0) < 5UL)), ((VECTOR(int32_t, 4))((-1L))), 0L, (-10L))), 0x1BAF6ED7L, 0x57CB310CL, (*p_23), 0x2F6B44D1L, 0x6722D7B4L)).lo)).hi))).odd)), ((VECTOR(int32_t, 4))(0x3A4020E3L)), 0x132AF0CDL, 0x5A6AA959L)).hi, ((VECTOR(int32_t, 4))((-1L)))))), ((VECTOR(int32_t, 4))(0x7FDEA2A5L)), ((VECTOR(int32_t, 4))(0L))))), 0x77AA0906L, 0x7F4EDF93L, 3L, 0L)).hi, ((VECTOR(int32_t, 8))(0x47B28BDBL)), ((VECTOR(int32_t, 8))(1L))))).s33, ((VECTOR(int32_t, 2))(8L))))), 1L, 0x2AEC2328L)), ((VECTOR(int32_t, 4))(0x15CFE7FBL)), ((VECTOR(int32_t, 4))(1L))))).lo)), 1L, (-1L))).hi)).xyxyyyxxxyyxxxyx)).s8;
    (**p_1135->g_761) = (safe_sub_func_int8_t_s_s((((*l_1011) = l_1010[2]) == (void*)0), l_984.se));
    return p_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_1135->g_26 p_1135->g_40 p_1135->g_2 p_1135->g_comm_values p_1135->g_29 p_1135->l_comm_values p_1135->g_69 p_1135->g_71 p_1135->g_76 p_1135->g_383 p_1135->g_389 p_1135->g_396 p_1135->g_157 p_1135->g_158 p_1135->g_398 p_1135->g_113 p_1135->g_217 p_1135->g_260 p_1135->g_238 p_1135->g_351.f0 p_1135->g_3 p_1135->g_459 p_1135->g_379 p_1135->g_472 p_1135->g_289 p_1135->g_98 p_1135->g_7 p_1135->g_378 p_1135->g_675 p_1135->g_676 p_1135->g_677 p_1135->g_683 p_1135->g_685 p_1135->g_365 p_1135->g_649 p_1135->g_392 p_1135->g_695 p_1135->g_696 p_1135->g_656 p_1135->g_688 p_1135->g_445 p_1135->g_752 p_1135->g_667 p_1135->g_295 p_1135->g_115 p_1135->g_116 p_1135->g_121 p_1135->g_810 p_1135->g_761 p_1135->g_460 p_1135->g_298 p_1135->g_204
 * writes: p_1135->g_40 p_1135->g_69 p_1135->g_71 p_1135->g_383 p_1135->g_389 p_1135->g_260 p_1135->g_410 p_1135->g_285 p_1135->g_204 p_1135->g_379 p_1135->g_392 p_1135->g_378 p_1135->g_472.f2 p_1135->g_100 p_1135->g_666 p_1135->g_365 p_1135->g_688 p_1135->g_158 p_1135->g_289 p_1135->g_761
 */
int16_t  func_32(int16_t  p_33, int16_t  p_34, struct S1 * p_1135)
{ /* block id: 21 */
    int32_t *l_46[5] = {&p_1135->g_3,&p_1135->g_3,&p_1135->g_3,&p_1135->g_3,&p_1135->g_3};
    uint8_t *l_63[4][3] = {{&p_1135->g_40,&p_1135->g_40,&p_1135->g_40},{&p_1135->g_40,&p_1135->g_40,&p_1135->g_40},{&p_1135->g_40,&p_1135->g_40,&p_1135->g_40},{&p_1135->g_40,&p_1135->g_40,&p_1135->g_40}};
    uint8_t **l_64 = (void*)0;
    uint8_t **l_65 = &l_63[3][2];
    int32_t l_68 = 0x4392AD58L;
    uint8_t *l_391 = &p_1135->g_392;
    uint16_t l_399 = 0x6BF5L;
    int16_t l_833 = 1L;
    int16_t *l_834 = &l_833;
    int i, j;
    (*p_1135->g_396) = ((FAKE_DIVERGE(p_1135->local_2_offset, get_local_id(2), 10) == 0x214C259DL) == (safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1135->global_1_offset, get_global_id(1), 10), ((p_1135->g_26 == GROUP_DIVERGE(1, 1)) | (p_33 = ((*l_834) = ((!p_34) < (func_43((l_46[0] != (void*)0), func_47(func_52(&p_1135->g_40, p_33, func_58((p_1135->g_69 = ((p_34 , ((func_60(((*l_65) = l_63[3][2]), l_46[2], p_1135) & l_68) || p_1135->g_29)) || p_1135->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1135->tid, 162))])), p_1135), l_391, &p_1135->g_392, p_1135), p_1135->g_113[0], l_399, p_1135->g_217.sa, p_1135), p_1135) , l_833))))))));
    return p_34;
}


/* ------------------------------------------ */
/* 
 * reads : p_1135->g_675 p_1135->g_676 p_1135->g_677 p_1135->g_683 p_1135->g_685 p_1135->g_365 p_1135->g_289 p_1135->g_649 p_1135->g_389 p_1135->g_26 p_1135->g_392 p_1135->g_695 p_1135->g_696 p_1135->g_656 p_1135->g_158 p_1135->g_688 p_1135->g_445 p_1135->g_217 p_1135->g_71 p_1135->g_752 p_1135->g_3 p_1135->g_667 p_1135->g_260 p_1135->g_398 p_1135->g_295 p_1135->g_115 p_1135->g_116 p_1135->g_121 p_1135->g_40 p_1135->g_810 p_1135->g_761 p_1135->l_comm_values p_1135->g_460 p_1135->g_459 p_1135->g_comm_values p_1135->g_298 p_1135->g_204
 * writes: p_1135->g_472.f2 p_1135->g_365 p_1135->g_688 p_1135->g_392 p_1135->g_389 p_1135->g_158 p_1135->g_71 p_1135->g_289 p_1135->g_761 p_1135->g_40
 */
uint32_t  func_43(uint64_t  p_44, int32_t * p_45, struct S1 * p_1135)
{ /* block id: 265 */
    int64_t *l_678[9] = {&p_1135->g_69,&p_1135->g_69,&p_1135->g_69,&p_1135->g_69,&p_1135->g_69,&p_1135->g_69,&p_1135->g_69,&p_1135->g_69,&p_1135->g_69};
    int32_t l_679 = 0x5B573070L;
    VECTOR(int64_t, 4) l_680 = (VECTOR(int64_t, 4))(7L, (VECTOR(int64_t, 2))(7L, 0L), 0L);
    VECTOR(int64_t, 4) l_681 = (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 0x2F6FD27988580866L), 0x2F6FD27988580866L);
    int8_t *l_682 = (void*)0;
    VECTOR(int64_t, 2) l_684 = (VECTOR(int64_t, 2))(1L, (-1L));
    int32_t l_686 = 0x2166D9C7L;
    int16_t *l_687 = (void*)0;
    int32_t *l_693[4];
    uint32_t l_762 = 5UL;
    VECTOR(int32_t, 16) l_811 = (VECTOR(int32_t, 16))(0x33F53BC7L, (VECTOR(int32_t, 4))(0x33F53BC7L, (VECTOR(int32_t, 2))(0x33F53BC7L, 0x539DFC6DL), 0x539DFC6DL), 0x539DFC6DL, 0x33F53BC7L, 0x539DFC6DL, (VECTOR(int32_t, 2))(0x33F53BC7L, 0x539DFC6DL), (VECTOR(int32_t, 2))(0x33F53BC7L, 0x539DFC6DL), 0x33F53BC7L, 0x539DFC6DL, 0x33F53BC7L, 0x539DFC6DL);
    uint8_t ***l_822 = (void*)0;
    int32_t l_823 = 0x23818A25L;
    union U0 *l_826 = (void*)0;
    union U0 **l_825 = &l_826;
    int i;
    for (i = 0; i < 4; i++)
        l_693[i] = &p_1135->g_3;
    if (((((safe_sub_func_int16_t_s_s((safe_sub_func_int64_t_s_s((p_1135->g_365.s5 &= (p_44 | (p_1135->g_472.f2 = ((l_679 ^= (((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0xDBAF3ED343F6E255L, 0x1DD0B287D8967279L)), 3UL, 0xE88969CFBFE820DEL)), 0UL, ((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 8))(p_1135->g_675.s57717125)).s74, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(p_1135->g_676.xxxyxyxx)).s11))))), 1UL)).s11)).even , ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(p_1135->g_677.xxyyyyxyxyxyxyxy)).s62f7)).w)) && (l_679 = (l_686 = ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(l_680.wzwx)), ((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 16))(l_681.wzwxwzzwyxxzxwzx)).s114d))).even, (int64_t)((void*)0 != l_682)))), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 2))(p_1135->g_683.sd0)), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(l_684.yyyxxyxyxyxyyyyx)).s85))))), (-7L), 0x33B7946B6E90074CL)))), ((VECTOR(int64_t, 4))(p_1135->g_685.s81ae)), 1L, 1L)).se)))))), ((p_1135->g_688 = p_1135->g_289[0]) , (&p_1135->g_351 != &p_1135->g_351)))), ((p_1135->g_649.y & GROUP_DIVERGE(0, 1)) != (-2L)))) , (void*)0) != p_45) , (*p_45)))
    { /* block id: 272 */
        int16_t l_700 = 0x4945L;
        for (p_1135->g_392 = 10; (p_1135->g_392 < 53); ++p_1135->g_392)
        { /* block id: 275 */
            int32_t **l_699 = &p_1135->g_158;
            for (p_1135->g_389 = 0; (p_1135->g_389 == 14); p_1135->g_389++)
            { /* block id: 278 */
                (*p_1135->g_695) = l_693[0];
                (*p_1135->g_696) = p_45;
                return p_1135->g_656.s0;
            }
            (*l_699) = (*p_1135->g_695);
        }
        return l_700;
    }
    else
    { /* block id: 286 */
        int32_t *l_722 = &p_1135->g_3;
        int8_t ***l_743[4][1][8] = {{{&p_1135->g_115,(void*)0,&p_1135->g_115,(void*)0,&p_1135->g_115,&p_1135->g_115,(void*)0,&p_1135->g_115}},{{&p_1135->g_115,(void*)0,&p_1135->g_115,(void*)0,&p_1135->g_115,&p_1135->g_115,(void*)0,&p_1135->g_115}},{{&p_1135->g_115,(void*)0,&p_1135->g_115,(void*)0,&p_1135->g_115,&p_1135->g_115,(void*)0,&p_1135->g_115}},{{&p_1135->g_115,(void*)0,&p_1135->g_115,(void*)0,&p_1135->g_115,&p_1135->g_115,(void*)0,&p_1135->g_115}}};
        VECTOR(int32_t, 4) l_764 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L);
        VECTOR(int32_t, 4) l_812 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x4CE1FDA4L), 0x4CE1FDA4L);
        VECTOR(int32_t, 2) l_815 = (VECTOR(int32_t, 2))(0x17CA9A11L, 0x044A063FL);
        uint8_t **l_821 = &p_1135->g_121;
        uint8_t ***l_820 = &l_821;
        uint8_t l_824 = 251UL;
        int i, j, k;
        for (p_1135->g_688 = 16; (p_1135->g_688 >= 12); p_1135->g_688 = safe_sub_func_uint64_t_u_u(p_1135->g_688, 6))
        { /* block id: 289 */
            uint64_t l_707[10] = {0x32C58AC161F90601L,0x32C58AC161F90601L,0x32C58AC161F90601L,0x32C58AC161F90601L,0x32C58AC161F90601L,0x32C58AC161F90601L,0x32C58AC161F90601L,0x32C58AC161F90601L,0x32C58AC161F90601L,0x32C58AC161F90601L};
            VECTOR(uint8_t, 8) l_713 = (VECTOR(uint8_t, 8))(0xF7L, (VECTOR(uint8_t, 4))(0xF7L, (VECTOR(uint8_t, 2))(0xF7L, 0xAAL), 0xAAL), 0xAAL, 0xF7L, 0xAAL);
            int16_t l_716 = 1L;
            int32_t l_717 = 1L;
            uint16_t l_755 = 0UL;
            int8_t *l_809 = &p_1135->g_100;
            int i;
            for (p_1135->g_392 = 0; (p_1135->g_392 <= 50); p_1135->g_392 = safe_add_func_uint16_t_u_u(p_1135->g_392, 8))
            { /* block id: 292 */
                int8_t l_718 = 4L;
                int16_t *l_719 = &l_716;
                int32_t l_759 = (-7L);
                uint8_t l_763 = 0x1AL;
                p_1135->g_71 &= ((p_1135->g_445.s3 || ((*l_719) = (((safe_div_func_uint32_t_u_u(p_44, (l_707[6] , (((*p_45) ^ ((safe_sub_func_int32_t_s_s(l_707[6], (safe_rshift_func_int8_t_s_u((FAKE_DIVERGE(p_1135->local_2_offset, get_local_id(2), 10) != (+((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(p_1135->g_712.sb8)), 0x13L, 0xC8L, ((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(0x6AL, ((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 8))(abs(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_713.s27)).xyyy)).wzxzwyyx))).s33, ((VECTOR(uint8_t, 16))(1UL, ((*p_1135->g_121) |= (safe_rshift_func_uint8_t_u_u((((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0x1BBF70726B4E9AF7L, 0x0302695A71FE2BFCL)).xxxxyxxy)).s1245102273027304, (int64_t)(l_717 = (p_44 || l_716))))).s5 < 0x0BB04B7935C12A3EL), 7))), ((VECTOR(uint8_t, 8))(250UL)), 0UL, ((VECTOR(uint8_t, 4))(255UL)), 0x08L)).s0e, ((VECTOR(uint8_t, 2))(0UL))))), ((VECTOR(uint8_t, 4))(0x0FL)), 0xA2L)).s07)), ((VECTOR(uint8_t, 2))(255UL))))), 250UL, 0xE1L)).lo)).z)), 6)))) >= p_44)) ^ l_718)))) | 1L) , p_1135->g_217.s3))) < p_44);
                for (p_1135->g_472.f2 = 25; (p_1135->g_472.f2 != (-10)); p_1135->g_472.f2 = safe_sub_func_int64_t_s_s(p_1135->g_472.f2, 1))
                { /* block id: 299 */
                    int32_t **l_723 = &l_693[0];
                    uint16_t l_760 = 0x4DC3L;
                    (*l_723) = l_722;
                    for (p_1135->g_389 = 0; (p_1135->g_389 <= (-16)); p_1135->g_389 = safe_sub_func_int32_t_s_s(p_1135->g_389, 8))
                    { /* block id: 303 */
                        int8_t **l_730 = &p_1135->g_116;
                        int32_t l_758 = 0x289AAB48L;
                        l_760 = (safe_mod_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s(((void*)0 == l_730), 3)), (safe_rshift_func_int8_t_s_u((safe_rshift_func_uint8_t_u_s(p_44, (l_759 ^= (((safe_add_func_uint8_t_u_u((safe_add_func_int8_t_s_s(((safe_div_func_uint8_t_u_u(((((safe_sub_func_uint64_t_u_u((((void*)0 == l_743[0][0][3]) , (((safe_lshift_func_uint16_t_u_s(((l_758 = (safe_add_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s(((p_44 != (safe_rshift_func_int16_t_s_s(((p_1135->g_752 , (p_1135->g_289[0] = ((safe_rshift_func_uint8_t_u_u((l_755 & (safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_1135->global_0_offset, get_global_id(0), 10), 0x29DFL))), p_44)) | l_755))) > p_44), p_44))) >= 0x1DL), 4)), 0x2C8DL))) >= l_718), p_1135->g_26)) < 255UL) > 0x6A60L)), 0x5CC713AE944BFFB2L)) & 3L) , (*l_722)) == GROUP_DIVERGE(2, 1)), GROUP_DIVERGE(1, 1))) != l_717), 1L)), p_44)) == p_44) <= p_44)))), 3))));
                    }
                    if ((l_762 = ((p_1135->g_761 = &p_1135->g_158) != (void*)0)))
                    { /* block id: 311 */
                        return p_1135->g_683.se;
                    }
                    else
                    { /* block id: 313 */
                        return p_44;
                    }
                }
                return l_763;
            }
            if (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_764.xzxx)))).y)
            { /* block id: 319 */
                int16_t **l_777 = (void*)0;
                int16_t **l_778 = &l_687;
                int32_t l_787[10] = {5L,(-9L),0x30F6EF65L,(-9L),5L,5L,(-9L),0x30F6EF65L,(-9L),5L};
                int64_t *l_788 = (void*)0;
                int64_t *l_789 = &p_1135->g_790;
                int64_t *l_792 = &p_1135->g_793;
                uint32_t l_794 = 0x2EEC9429L;
                int32_t l_795 = 0x18C1292CL;
                uint16_t *l_796[9][7][4] = {{{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0}},{{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0}},{{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0}},{{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0}},{{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0}},{{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0}},{{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0}},{{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0}},{{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0},{&l_755,(void*)0,(void*)0,(void*)0}}};
                int i, j, k;
                if (((l_764.y &= ((((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(p_1135->g_765.xxyxxyxy)).s0735434675751565)).s8 >= ((safe_unary_minus_func_uint8_t_u((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(4294967295UL, 1UL, ((safe_add_func_uint16_t_u_u(((safe_sub_func_uint32_t_u_u(5UL, (safe_sub_func_uint32_t_u_u((safe_add_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((p_1135->g_217.sd , p_44), (((*l_792) = (p_1135->g_791 = ((*l_789) = (((*l_778) = &p_1135->g_379) == ((+(((safe_mul_func_uint16_t_u_u(0x2385L, ((safe_sub_func_int16_t_s_s((safe_add_func_int8_t_s_s(p_44, (((*p_1135->g_78) <= (4294967295UL > (((safe_add_func_int8_t_s_s((((VECTOR(uint16_t, 8))((((((p_1135->g_392 , p_44) , l_787[0]) & p_44) > p_1135->g_656.s1) , 0xC63EL), ((VECTOR(uint16_t, 4))(0xEC1BL)), GROUP_DIVERGE(2, 1), 65529UL, 0x453AL)).s1 && (-8L)), GROUP_DIVERGE(0, 1))) , p_44) > p_44))) ^ l_713.s7))), p_44)) >= 0xACL))) <= 2UL) , (-1L))) , &p_1135->g_379))))) , p_1135->g_180.x))), p_1135->g_677.x)), (*l_722))))) , l_794), p_44)) > p_44), ((VECTOR(uint32_t, 2))(0x00179930L)), 0x2E4854D1L, 0x771EFC69L, 1UL)).even)).z & (*l_722)))) || l_795)) , (-10L)) <= (*p_1135->g_667)) ^ p_1135->g_26)) , 0x50C55EABL))
                { /* block id: 325 */
                    if ((*p_45))
                        break;
                }
                else
                { /* block id: 327 */
                    for (p_1135->g_392 = 0; (p_1135->g_392 >= 12); p_1135->g_392 = safe_add_func_int32_t_s_s(p_1135->g_392, 4))
                    { /* block id: 330 */
                        return l_716;
                    }
                }
                (*p_1135->g_398) = (!0x1D27CE47L);
            }
            else
            { /* block id: 335 */
                int16_t l_799 = 0x0EA9L;
                int8_t *l_808 = (void*)0;
                (*p_1135->g_398) &= (!l_799);
                l_717 = (safe_sub_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s((safe_mod_func_int16_t_s_s((((safe_div_func_int8_t_s_s((l_808 == (**p_1135->g_295)), (0x73L & ((*p_1135->g_121) ^= ((*l_722) == p_44))))) == p_44) < ((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 4))(0L, ((*l_722) && (l_809 == l_808)), (-2L), 0x0D9D8BC7L)).yzyzwxxw, (int32_t)(*l_722), (int32_t)(*p_45)))).s2), 0xF65FL)), p_1135->g_810[5])), 65534UL));
            }
        }
        (*p_1135->g_761) = (void*)0;
        (*p_1135->g_459) = ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 2))(l_811.sa3)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))(l_812.zw)).xxyy, ((VECTOR(int32_t, 16))(0x4B690474L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))((*l_722), ((VECTOR(int32_t, 2))(1L, 0x1793350FL)), 0x1C0DE112L)))), (p_44 != (safe_div_func_int64_t_s_s((l_764.x = (*l_722)), p_1135->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1135->tid, 162))]))), ((~(7UL <= (*p_45))) , ((VECTOR(int32_t, 8))(1L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_815.xx)), 0x278A924DL, 0x41E36626L)), ((VECTOR(int32_t, 2))(0x57E9026EL, 2L)), 0x2CCF25EDL)).s4), (((safe_mul_func_uint8_t_u_u(1UL, ((safe_mod_func_int16_t_s_s((*l_722), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(1UL, p_44, 0xE8B0L, 0UL, 0x61C9L, p_44, 65526UL, 0x8F08L, 65531UL, p_1135->g_26, ((VECTOR(uint16_t, 4))(0x38AAL)), 0x1EE5L, 0xE0AEL)).s80ca)).even)).even)) <= p_1135->g_460.s6))) , l_820) != l_822), l_823, 0x20270BCEL, (*p_45), 0L, l_824, ((VECTOR(int32_t, 2))(0x430A8903L)), 1L)).sff30))).hi))))), ((VECTOR(int32_t, 2))(0x0E4A6245L)), ((VECTOR(int32_t, 2))((-1L)))))).lo;
        l_815.x = ((&p_1135->g_410[9][9][1] == ((((*l_722) , ((((p_1135->g_comm_values[p_1135->tid] >= (!(((void*)0 == l_825) || p_44))) != (safe_div_func_uint32_t_u_u(((!0xDEAFL) | p_1135->g_298.z), (((safe_div_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((((0x27L < 0x73L) & (*l_722)) & 0x3C8AA4707339CD73L), p_44)) || 7L), p_44)) , 1L) || p_44)))) <= p_1135->g_217.sf) >= (*l_722))) != (-1L)) , (void*)0)) & p_44);
    }
    return p_1135->g_204;
}


/* ------------------------------------------ */
/* 
 * reads : p_1135->g_383 p_1135->g_260 p_1135->g_113 p_1135->g_40 p_1135->g_238 p_1135->g_351.f0 p_1135->g_26 p_1135->g_3 p_1135->g_459 p_1135->g_71 p_1135->g_157 p_1135->g_158 p_1135->g_379 p_1135->g_472 p_1135->g_289 p_1135->g_98 p_1135->g_2 p_1135->g_389 p_1135->g_7 p_1135->g_378
 * writes: p_1135->g_383 p_1135->g_260 p_1135->g_410 p_1135->g_40 p_1135->g_285 p_1135->g_204 p_1135->g_71 p_1135->g_389 p_1135->g_379 p_1135->g_392 p_1135->g_378 p_1135->g_472.f2 p_1135->g_100 p_1135->g_666
 */
int32_t * func_47(uint8_t * p_48, uint16_t  p_49, int64_t  p_50, int64_t  p_51, struct S1 * p_1135)
{ /* block id: 151 */
    int32_t *l_400 = &p_1135->g_3;
    int32_t **l_401 = &l_400;
    uint8_t *l_411 = &p_1135->g_392;
    int32_t l_416[7] = {0x596974D6L,0x596974D6L,0x596974D6L,0x596974D6L,0x596974D6L,0x596974D6L,0x596974D6L};
    uint8_t l_419 = 255UL;
    VECTOR(int64_t, 16) l_434 = (VECTOR(int64_t, 16))(0x2F934E81C3F5A2B8L, (VECTOR(int64_t, 4))(0x2F934E81C3F5A2B8L, (VECTOR(int64_t, 2))(0x2F934E81C3F5A2B8L, 0x063B1FA4E80BAEE6L), 0x063B1FA4E80BAEE6L), 0x063B1FA4E80BAEE6L, 0x2F934E81C3F5A2B8L, 0x063B1FA4E80BAEE6L, (VECTOR(int64_t, 2))(0x2F934E81C3F5A2B8L, 0x063B1FA4E80BAEE6L), (VECTOR(int64_t, 2))(0x2F934E81C3F5A2B8L, 0x063B1FA4E80BAEE6L), 0x2F934E81C3F5A2B8L, 0x063B1FA4E80BAEE6L, 0x2F934E81C3F5A2B8L, 0x063B1FA4E80BAEE6L);
    int8_t ***l_456 = &p_1135->g_115;
    VECTOR(int8_t, 2) l_475 = (VECTOR(int8_t, 2))((-10L), (-9L));
    VECTOR(uint8_t, 16) l_485 = (VECTOR(uint8_t, 16))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 0x42L), 0x42L), 0x42L, 4UL, 0x42L, (VECTOR(uint8_t, 2))(4UL, 0x42L), (VECTOR(uint8_t, 2))(4UL, 0x42L), 4UL, 0x42L, 4UL, 0x42L);
    uint32_t l_509[10] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
    uint32_t l_515[5];
    int16_t l_557 = 0x22DDL;
    int32_t l_558 = 0x4787EDE9L;
    int16_t l_586 = 0x7750L;
    int64_t *l_618 = &p_1135->g_472.f0;
    int64_t **l_617 = &l_618;
    VECTOR(uint32_t, 8) l_651 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x79D7FE8AL), 0x79D7FE8AL), 0x79D7FE8AL, 4294967295UL, 0x79D7FE8AL);
    int32_t *l_670 = &p_1135->g_3;
    int i;
    for (i = 0; i < 5; i++)
        l_515[i] = 4294967288UL;
    (*l_401) = l_400;
    for (p_1135->g_383 = 0; (p_1135->g_383 > 42); ++p_1135->g_383)
    { /* block id: 155 */
        uint32_t *l_406 = &p_1135->g_260[2];
        uint32_t *l_409 = &p_1135->g_410[9][2][0];
        int32_t l_412 = 0x518F548CL;
        int32_t *l_413 = &l_412;
        int32_t *l_414 = &l_412;
        int32_t *l_415 = &p_1135->g_71;
        int32_t *l_417 = &p_1135->g_71;
        int32_t *l_418[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        l_412 ^= (p_51 > (((safe_rshift_func_uint16_t_u_u((((*l_409) = (++(*l_406))) ^ p_1135->g_113[0]), 7)) , (void*)0) == (l_411 = &p_1135->g_40)));
        l_419--;
    }
    for (p_1135->g_40 = 0; (p_1135->g_40 > 8); p_1135->g_40++)
    { /* block id: 164 */
        int32_t l_424 = 0x40760916L;
        VECTOR(uint64_t, 2) l_440 = (VECTOR(uint64_t, 2))(0x5D8E990B4D4733C2L, 0xDEFB6F4A71E5F94BL);
        int16_t l_449 = 0x1780L;
        int64_t *l_458 = &p_1135->g_289[0];
        int64_t **l_457 = &l_458;
        VECTOR(int32_t, 4) l_464 = (VECTOR(int32_t, 4))(0x4D13A49AL, (VECTOR(int32_t, 2))(0x4D13A49AL, 0x79954615L), 0x79954615L);
        int i;
        if (l_424)
            break;
        for (p_1135->g_285 = 0; (p_1135->g_285 >= (-28)); p_1135->g_285 = safe_sub_func_uint16_t_u_u(p_1135->g_285, 8))
        { /* block id: 168 */
            VECTOR(int64_t, 2) l_429 = (VECTOR(int64_t, 2))(0x1569969D21181569L, (-1L));
            int32_t l_431 = (-3L);
            uint32_t *l_438[4][6] = {{&p_1135->g_410[9][5][0],&p_1135->g_260[2],&p_1135->g_410[9][5][0],&p_1135->g_410[9][5][0],&p_1135->g_260[2],&p_1135->g_410[9][5][0]},{&p_1135->g_410[9][5][0],&p_1135->g_260[2],&p_1135->g_410[9][5][0],&p_1135->g_410[9][5][0],&p_1135->g_260[2],&p_1135->g_410[9][5][0]},{&p_1135->g_410[9][5][0],&p_1135->g_260[2],&p_1135->g_410[9][5][0],&p_1135->g_410[9][5][0],&p_1135->g_260[2],&p_1135->g_410[9][5][0]},{&p_1135->g_410[9][5][0],&p_1135->g_260[2],&p_1135->g_410[9][5][0],&p_1135->g_410[9][5][0],&p_1135->g_260[2],&p_1135->g_410[9][5][0]}};
            int32_t l_439 = (-1L);
            int32_t l_448 = 0x604DBAA6L;
            int8_t *l_450 = (void*)0;
            int8_t *l_451 = (void*)0;
            int8_t *l_452 = (void*)0;
            int8_t *l_453 = &p_1135->g_204;
            int32_t *l_454 = (void*)0;
            int32_t *l_455 = &p_1135->g_71;
            int i, j;
            (*p_1135->g_459) = (((((((l_439 = (l_424 = (((((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 8))(p_1135->g_427.s864dd3c7)).s6123146437037047, ((VECTOR(int64_t, 2))(p_1135->g_428.xx)).yyyyxxyyyxxxxyyx))).sb4, ((VECTOR(int64_t, 2))(l_429.yy))))), ((VECTOR(int64_t, 8))(p_1135->g_430.s64646110)).s75))).odd & 0xD575401DFDB34D62L) , l_431) || (safe_rshift_func_uint8_t_u_s(((((VECTOR(int64_t, 16))(l_434.s7ab610744274a1e5)).s5 ^ (safe_unary_minus_func_uint64_t_u((safe_add_func_uint32_t_u_u(4294967292UL, p_1135->g_238.y))))) & 4294967295UL), 5))))) < ((*l_455) = ((((*l_453) = ((((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 2))(l_440.yx)).yyyyyyyxyxyxyyyx, ((VECTOR(uint64_t, 16))((p_51 < (safe_add_func_int16_t_s_s((((safe_lshift_func_int16_t_s_s((((void*)0 == l_438[0][1]) || (((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 2))(p_1135->g_445.s99)), (int8_t)(safe_sub_func_int8_t_s_s(l_440.x, l_448)), (int8_t)p_51))).yyyyyyyx, ((VECTOR(int8_t, 8))(7L))))).even, ((VECTOR(int8_t, 4))(0x5CL))))).x & p_49)), 1)) <= 0UL) != (*p_48)), l_449))), 18446744073709551615UL, 18446744073709551615UL, 0xB06F934027FAC06CL, ((VECTOR(uint64_t, 4))(18446744073709551612UL)), l_429.y, ((VECTOR(uint64_t, 4))(18446744073709551612UL)), 0xDBD87A4CE34376C3L, 0UL, 0x4009084435127A92L))))).sb != p_1135->g_351.f0) ^ 0L)) , 255UL) <= p_51))) , l_456) != (void*)0) , l_457) == (void*)0) , (*l_400));
            (*l_455) = ((((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 2))(p_1135->g_460.s51)), ((VECTOR(int32_t, 2))(p_1135->g_461.xw))))).lo || (safe_lshift_func_uint16_t_u_s((*l_455), 5))) > p_51);
            if (p_50)
                break;
        }
        l_424 ^= (l_464.z = p_50);
        (*l_401) = (*p_1135->g_157);
    }
    for (p_1135->g_379 = 24; (p_1135->g_379 >= 1); p_1135->g_379 = safe_sub_func_uint64_t_u_u(p_1135->g_379, 8))
    { /* block id: 183 */
        int16_t l_467 = (-2L);
        VECTOR(int64_t, 8) l_482 = (VECTOR(int64_t, 8))(0x375036E318724CF4L, (VECTOR(int64_t, 4))(0x375036E318724CF4L, (VECTOR(int64_t, 2))(0x375036E318724CF4L, 0x60A7AB155B960A3FL), 0x60A7AB155B960A3FL), 0x60A7AB155B960A3FL, 0x375036E318724CF4L, 0x60A7AB155B960A3FL);
        VECTOR(uint8_t, 4) l_486 = (VECTOR(uint8_t, 4))(0xCCL, (VECTOR(uint8_t, 2))(0xCCL, 246UL), 246UL);
        VECTOR(int8_t, 4) l_488 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x44L), 0x44L);
        VECTOR(int64_t, 16) l_491 = (VECTOR(int64_t, 16))(0x462E357303DAD9E1L, (VECTOR(int64_t, 4))(0x462E357303DAD9E1L, (VECTOR(int64_t, 2))(0x462E357303DAD9E1L, (-1L)), (-1L)), (-1L), 0x462E357303DAD9E1L, (-1L), (VECTOR(int64_t, 2))(0x462E357303DAD9E1L, (-1L)), (VECTOR(int64_t, 2))(0x462E357303DAD9E1L, (-1L)), 0x462E357303DAD9E1L, (-1L), 0x462E357303DAD9E1L, (-1L));
        int32_t l_514 = (-1L);
        uint64_t l_534 = 0UL;
        int32_t l_583[10] = {0x5892765FL,0x5892765FL,0x5892765FL,0x5892765FL,0x5892765FL,0x5892765FL,0x5892765FL,0x5892765FL,0x5892765FL,0x5892765FL};
        int32_t l_611 = 0x3608445EL;
        uint32_t l_612 = 0xD1537675L;
        VECTOR(int16_t, 8) l_659 = (VECTOR(int16_t, 8))(4L, (VECTOR(int16_t, 4))(4L, (VECTOR(int16_t, 2))(4L, 9L), 9L), 9L, 4L, 9L);
        int i;
        if (l_467)
            break;
        for (p_1135->g_383 = 0; (p_1135->g_383 != 14); p_1135->g_383++)
        { /* block id: 187 */
            VECTOR(int16_t, 16) l_487 = (VECTOR(int16_t, 16))(0x4702L, (VECTOR(int16_t, 4))(0x4702L, (VECTOR(int16_t, 2))(0x4702L, 0x1278L), 0x1278L), 0x1278L, 0x4702L, 0x1278L, (VECTOR(int16_t, 2))(0x4702L, 0x1278L), (VECTOR(int16_t, 2))(0x4702L, 0x1278L), 0x4702L, 0x1278L, 0x4702L, 0x1278L);
            uint32_t *l_493 = &p_1135->g_410[9][2][0];
            uint64_t l_507[5][7] = {{18446744073709551608UL,18446744073709551608UL,4UL,0x46CA12936159CBB9L,0xA613AFD3FE555A84L,0x46CA12936159CBB9L,4UL},{18446744073709551608UL,18446744073709551608UL,4UL,0x46CA12936159CBB9L,0xA613AFD3FE555A84L,0x46CA12936159CBB9L,4UL},{18446744073709551608UL,18446744073709551608UL,4UL,0x46CA12936159CBB9L,0xA613AFD3FE555A84L,0x46CA12936159CBB9L,4UL},{18446744073709551608UL,18446744073709551608UL,4UL,0x46CA12936159CBB9L,0xA613AFD3FE555A84L,0x46CA12936159CBB9L,4UL},{18446744073709551608UL,18446744073709551608UL,4UL,0x46CA12936159CBB9L,0xA613AFD3FE555A84L,0x46CA12936159CBB9L,4UL}};
            int i, j;
            for (p_1135->g_71 = 0; (p_1135->g_71 == (-5)); p_1135->g_71--)
            { /* block id: 190 */
                uint64_t *l_492 = (void*)0;
                int32_t l_506 = 0x1F1CE000L;
                int8_t *l_508 = &p_1135->g_285;
                uint32_t l_510 = 0xD3F99DB2L;
                int8_t *l_511 = (void*)0;
                int8_t *l_512 = &p_1135->g_204;
                int32_t *l_513 = &l_416[3];
                l_514 = ((*l_513) ^= (p_1135->g_472 , (((-1L) & (safe_add_func_int8_t_s_s(((p_1135->g_392 = ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 2))(0xCBL, 255UL)).xxxy, ((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 4))(l_475.yxxy))))).xxyxxywz, ((VECTOR(int8_t, 16))(((*l_512) = (safe_sub_func_int32_t_s_s(((safe_sub_func_uint64_t_u_u(((safe_mod_func_int8_t_s_s((l_506 = (((((*l_400) == ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_482.s17)), 0x476A194E2601E79EL, 2L)).y) == (safe_mod_func_uint16_t_u_u(((((VECTOR(uint8_t, 16))(add_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(l_485.se3)))).xxyyxyyxxxxxyxyx, ((VECTOR(uint8_t, 4))(l_486.zwzx)).zwzxwzwxwzwxzxwx))).s9 >= (((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(l_487.s74)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(0x07L, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_488.zz)), 0x7FL, (-4L))), (safe_rshift_func_uint16_t_u_s((((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(l_491.s597e)))).y >= (p_1135->g_237.x = 0xA726C8317DD1DE59L)) , l_493) != (void*)0), 10)), (-6L), 0x44L)).s70)), ((VECTOR(uint8_t, 4))(abs(((VECTOR(int8_t, 4))(0x26L, ((*l_508) ^= (safe_mul_func_uint16_t_u_u((((l_487.s1 || ((safe_mul_func_int8_t_s_s(((((!p_50) , ((safe_mul_func_uint16_t_u_u(((((safe_rshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((safe_div_func_int16_t_s_s((((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 8))(0UL, ((*p_1135->g_121) &= l_486.y), 0xFBL, (*p_48), GROUP_DIVERGE(1, 1), ((VECTOR(uint8_t, 2))(0x80L)), 1UL)), ((VECTOR(uint8_t, 8))(0x4BL)), ((VECTOR(uint8_t, 8))(0xE9L))))), ((VECTOR(uint8_t, 8))(5UL))))).s45, ((VECTOR(uint8_t, 2))(0xC9L))))).hi ^ (*p_1135->g_78)), p_51)), l_506)), l_507[1][0])) , p_49) != p_49) , (*l_400)), p_49)) & 0x5CC39AEB9F928BB7L)) > l_482.s7) != l_506), p_51)) >= 0L)) >= 1L) || l_487.s3), GROUP_DIVERGE(1, 1)))), 0x56L, 1L))))).hi))), 4L, (-1L))), 0x5403L, (-9L))).s6 == 0L)) , 0x3EF2L), l_509[5]))) , p_1135->g_472) , l_510)), p_1135->g_383)) | 18446744073709551610UL), FAKE_DIVERGE(p_1135->local_1_offset, get_local_id(1), 10))) < 0x67L), 1L))), l_491.s3, ((VECTOR(int8_t, 8))((-1L))), ((VECTOR(int8_t, 4))(0x75L)), 0L, (-1L))).lo))).s7060201732603156, ((VECTOR(int8_t, 16))((-1L)))))).saf4c, (int8_t)p_49))).zxwwwwwyzwzyxzzy, ((VECTOR(int8_t, 16))(0x7EL))))).s855b))).hi, ((VECTOR(uint8_t, 2))(252UL))))))).lo) == p_51), p_1135->g_289[0]))) , p_50)));
                if (p_50)
                    continue;
            }
        }
        if (((&p_1135->g_379 == (void*)0) | 0xC7F4AB3A53488D49L))
        { /* block id: 202 */
            int32_t *l_516 = &p_1135->g_389;
            VECTOR(int32_t, 2) l_519 = (VECTOR(int32_t, 2))(0x6591E967L, 2L);
            int16_t *l_529 = &p_1135->g_472.f2;
            int16_t *l_530 = &l_467;
            uint32_t *l_531 = &p_1135->g_410[9][2][0];
            int i;
            (*l_401) = (void*)0;
            (*l_516) = (((void*)0 == &p_1135->g_79) , l_515[4]);
            (*l_516) = ((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(p_1135->g_517.sd4a4ca7092659ad8)), ((VECTOR(int32_t, 16))(p_1135->g_518.sbd96308779869050)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x29B4L, 0x0AB9L)).xyxyyyyy)).s32)).yyxy, ((VECTOR(uint16_t, 2))(1UL, 0xF0C2L)).yyyx))).yyywyxwx)))).s45)), ((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_519.yxxxxyyyxxyxyxyx)).s3a85)).xzzyyzzx, ((VECTOR(int32_t, 4))(0x0714DB3EL, (((l_534 = ((5L & (safe_rshift_func_uint8_t_u_s(1UL, (((VECTOR(uint8_t, 16))(p_1135->g_522.xyxyxyxyxyxxyyyy)).sf & ((*p_1135->g_121)++))))) <= (safe_lshift_func_uint16_t_u_u(((safe_add_func_int8_t_s_s((&l_400 != (void*)0), ((((*l_530) &= p_1135->g_217.s0) > p_49) != ((*l_531) = p_49)))) <= ((safe_rshift_func_uint8_t_u_s((((VECTOR(uint8_t, 16))(((l_488.x ^ ((VECTOR(uint8_t, 2))(0UL, 255UL)).lo) < 0x68509993B1590B15L), 1UL, ((VECTOR(uint8_t, 2))(0x3EL)), ((VECTOR(uint8_t, 4))(0x92L)), (*l_516), p_1135->g_204, ((VECTOR(uint8_t, 4))(0x1CL)), 255UL, 0x89L)).s5 != p_51), 2)) != 0x34566ACBL)), GROUP_DIVERGE(1, 1))))) & p_49) == p_49), 0L, (-4L))).zzwzwxwz))).s77))).yxxy, ((VECTOR(int32_t, 4))(0x3428E6FFL)), ((VECTOR(int32_t, 4))(0x016E5826L))))).xxxyyzzxwxwyxwyx))))).s8;
        }
        else
        { /* block id: 210 */
            int64_t l_555 = 0x3A4F8ED8168DAC04L;
            int32_t *l_559 = &p_1135->g_7;
            int32_t l_579 = 1L;
            int32_t l_590 = 1L;
            VECTOR(int32_t, 2) l_591 = (VECTOR(int32_t, 2))(0x68E2DD50L, 0x654F36A1L);
            VECTOR(int16_t, 4) l_625 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L);
            int64_t l_629 = 0x3B8AADC26E564B94L;
            VECTOR(int8_t, 16) l_634 = (VECTOR(int8_t, 16))(0x14L, (VECTOR(int8_t, 4))(0x14L, (VECTOR(int8_t, 2))(0x14L, 0x06L), 0x06L), 0x06L, 0x14L, 0x06L, (VECTOR(int8_t, 2))(0x14L, 0x06L), (VECTOR(int8_t, 2))(0x14L, 0x06L), 0x14L, 0x06L, 0x14L, 0x06L);
            int i;
            for (l_419 = 0; (l_419 == 47); l_419 = safe_add_func_int8_t_s_s(l_419, 2))
            { /* block id: 213 */
                VECTOR(int32_t, 16) l_585 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x2F45566DL), 0x2F45566DL), 0x2F45566DL, (-1L), 0x2F45566DL, (VECTOR(int32_t, 2))((-1L), 0x2F45566DL), (VECTOR(int32_t, 2))((-1L), 0x2F45566DL), (-1L), 0x2F45566DL, (-1L), 0x2F45566DL);
                uint16_t l_594 = 0x86DBL;
                int64_t *l_616 = &p_1135->g_351.f0;
                int64_t **l_615 = &l_616;
                VECTOR(uint8_t, 16) l_626 = (VECTOR(uint8_t, 16))(0xACL, (VECTOR(uint8_t, 4))(0xACL, (VECTOR(uint8_t, 2))(0xACL, 0x12L), 0x12L), 0x12L, 0xACL, 0x12L, (VECTOR(uint8_t, 2))(0xACL, 0x12L), (VECTOR(uint8_t, 2))(0xACL, 0x12L), 0xACL, 0x12L, 0xACL, 0x12L);
                int i;
                for (p_1135->g_378 = 0; (p_1135->g_378 != 24); p_1135->g_378 = safe_add_func_uint8_t_u_u(p_1135->g_378, 4))
                { /* block id: 216 */
                    int16_t l_539 = 0L;
                    VECTOR(int32_t, 2) l_541 = (VECTOR(int32_t, 2))(0x39C44E11L, 0x66C9AC66L);
                    VECTOR(uint32_t, 4) l_544 = (VECTOR(uint32_t, 4))(0x51E94199L, (VECTOR(uint32_t, 2))(0x51E94199L, 4294967295UL), 4294967295UL);
                    VECTOR(int16_t, 2) l_545 = (VECTOR(int16_t, 2))(0L, 0x5B59L);
                    int16_t *l_548 = &l_467;
                    int64_t *l_556[8][10][3] = {{{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0}},{{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0}},{{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0}},{{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0}},{{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0}},{{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0}},{{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0}},{{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0},{(void*)0,&p_1135->g_289[0],(void*)0}}};
                    uint64_t *l_566 = &p_1135->g_383;
                    int i, j, k;
                    if (l_539)
                        break;
                    (*l_401) = (((((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(p_1135->g_540.yywx)))).wzywzwyxxwyxxzww, ((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 16))(l_541.xxyyyyyxxyxyyxyy)).lo, (int32_t)0x346C1086L, (int32_t)(safe_lshift_func_int8_t_s_u((((VECTOR(uint32_t, 16))(l_544.xyzywwzwzxwxyzyz)).s9 & (((VECTOR(int32_t, 8))(((0x672DFB2EEA22F176L > (p_51 = (l_557 = (((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(1L, 0L)), ((VECTOR(int16_t, 2))(l_545.xy)), 5L, (safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x7DL, 0x63L)).xxyx)).z, ((&p_1135->g_295 == (void*)0) != (((*l_548) ^= p_51) == (safe_add_func_int16_t_s_s((safe_div_func_int64_t_s_s((((((safe_add_func_uint32_t_u_u(p_1135->g_378, ((**l_401) || 0x0218FF1AL))) | 1UL) & 3L) ^ l_555) || GROUP_DIVERGE(0, 1)), p_1135->g_379)), l_482.s4)))))), 0x2A44L, (-9L))).s73)), 0x7541L, 0x79FDL)).zzxxyyyzzyxzwwzx)).sa == 0x3728L)))) == 0x6901L), 0x48849C95L, p_51, (-9L), 1L, ((VECTOR(int32_t, 2))(0x0AE89019L)), 1L)).s0 , (**l_401))), (*p_48)))))).s7455153416525074))).s97, ((VECTOR(uint32_t, 2))(0x5651F974L))))).xxxyxyyyxyxxyxyx)).sd , 0xF1L) ^ GROUP_DIVERGE(0, 1)) == l_558) == p_1135->g_98.y) , l_559);
                    l_514 |= ((safe_sub_func_uint64_t_u_u(p_49, (safe_sub_func_uint16_t_u_u((p_50 <= (safe_lshift_func_int8_t_s_u((((*l_566) ^= p_1135->g_2) >= (safe_rshift_func_uint8_t_u_u(l_467, 7))), ((*l_411) = 0x68L)))), l_486.x)))) & FAKE_DIVERGE(p_1135->global_1_offset, get_global_id(1), 10));
                }
                if ((**p_1135->g_157))
                    break;
                (*l_401) = (*l_401);
                if ((safe_rshift_func_int8_t_s_s(0x10L, l_486.x)))
                { /* block id: 228 */
                    uint8_t l_580 = 1UL;
                    int32_t l_584 = 1L;
                    int32_t l_587 = 0x786756D9L;
                    int32_t l_588 = 0x414BA059L;
                    int32_t l_589 = 0x31075EBBL;
                    int32_t l_592 = 0x30BE9ED5L;
                    int32_t *l_597 = &l_583[9];
                    int32_t *l_598 = &l_416[4];
                    int32_t *l_599 = &l_416[1];
                    int32_t *l_600 = &l_514;
                    int32_t *l_601 = &l_590;
                    int32_t *l_602 = &p_1135->g_389;
                    int32_t *l_603 = &l_558;
                    int32_t *l_604 = &l_589;
                    int32_t *l_605 = (void*)0;
                    int32_t *l_606 = &l_587;
                    int32_t *l_607 = &l_592;
                    int32_t *l_608 = (void*)0;
                    int32_t *l_609 = (void*)0;
                    int32_t *l_610[1][8][9] = {{{&l_416[0],&l_583[9],(void*)0,&l_558,(void*)0,&l_558,(void*)0,&l_583[9],&l_416[0]},{&l_416[0],&l_583[9],(void*)0,&l_558,(void*)0,&l_558,(void*)0,&l_583[9],&l_416[0]},{&l_416[0],&l_583[9],(void*)0,&l_558,(void*)0,&l_558,(void*)0,&l_583[9],&l_416[0]},{&l_416[0],&l_583[9],(void*)0,&l_558,(void*)0,&l_558,(void*)0,&l_583[9],&l_416[0]},{&l_416[0],&l_583[9],(void*)0,&l_558,(void*)0,&l_558,(void*)0,&l_583[9],&l_416[0]},{&l_416[0],&l_583[9],(void*)0,&l_558,(void*)0,&l_558,(void*)0,&l_583[9],&l_416[0]},{&l_416[0],&l_583[9],(void*)0,&l_558,(void*)0,&l_558,(void*)0,&l_583[9],&l_416[0]},{&l_416[0],&l_583[9],(void*)0,&l_558,(void*)0,&l_558,(void*)0,&l_583[9],&l_416[0]}}};
                    int i, j, k;
                    for (p_1135->g_472.f2 = 0; (p_1135->g_472.f2 != 7); ++p_1135->g_472.f2)
                    { /* block id: 231 */
                        int32_t *l_573 = &p_1135->g_389;
                        int32_t *l_574 = &p_1135->g_71;
                        int32_t *l_575 = &l_416[1];
                        int32_t *l_576 = &l_514;
                        int32_t *l_577 = &p_1135->g_389;
                        int32_t *l_578[1][1];
                        int16_t l_593 = 0x26BAL;
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_578[i][j] = &p_1135->g_389;
                        }
                        (*l_573) |= (-8L);
                        l_580++;
                        l_594++;
                    }
                    --l_612;
                    return (*p_1135->g_157);
                }
                else
                { /* block id: 238 */
                    int8_t *l_619 = (void*)0;
                    int8_t *l_620 = &p_1135->g_100;
                    int32_t l_643 = 0x13D0EB46L;
                    VECTOR(int32_t, 4) l_650 = (VECTOR(int32_t, 4))(0x3CADC31DL, (VECTOR(int32_t, 2))(0x3CADC31DL, 0x105A9396L), 0x105A9396L);
                    uint32_t ***l_663 = (void*)0;
                    uint32_t **l_665 = (void*)0;
                    uint32_t ***l_664[8][3] = {{&l_665,(void*)0,&l_665},{&l_665,(void*)0,&l_665},{&l_665,(void*)0,&l_665},{&l_665,(void*)0,&l_665},{&l_665,(void*)0,&l_665},{&l_665,(void*)0,&l_665},{&l_665,(void*)0,&l_665},{&l_665,(void*)0,&l_665}};
                    int i, j;
                    if (((l_585.s3 = (((*l_620) = (l_615 != l_617)) || (((*l_620) = (safe_mod_func_uint16_t_u_u((l_482.s5 , ((safe_sub_func_int64_t_s_s(p_49, 0x2A96FC89E0A47BF5L)) , 65526UL)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_625.zyywzzxx)), (((VECTOR(uint8_t, 8))(l_626.s86d485ef)).s2 & (safe_div_func_uint64_t_u_u(((l_629 , ((((*p_1135->g_78) & (safe_sub_func_int16_t_s_s(((safe_mod_func_int32_t_s_s((((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 8))(l_634.sd836ba62)).odd, ((VECTOR(int8_t, 4))(p_1135->g_635.xxyx))))), (safe_unary_minus_func_uint32_t_u((safe_mul_func_uint8_t_u_u((safe_add_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), (safe_lshift_func_uint8_t_u_u(0UL, (*p_1135->g_121))))), l_482.s5)))), 0x04L, (-8L), 0x58L)).even)).hi)).xxxyxyxy)).s7 < l_585.sf) > p_50) , (*p_1135->g_158)), FAKE_DIVERGE(p_1135->local_1_offset, get_local_id(1), 10))) || GROUP_DIVERGE(2, 1)), 0x4505L))) ^ p_51) > p_1135->g_285)) || p_1135->g_98.x), p_50))), p_51, 1L, 0x089AL, 8L, p_49, 1L, (-1L))))).se8, ((VECTOR(int16_t, 2))(0x36ABL))))).xxyx)).w))) == 0xCCL))) <= l_643))
                    { /* block id: 242 */
                        int32_t *l_644 = &p_1135->g_389;
                        return l_644;
                    }
                    else
                    { /* block id: 244 */
                        int16_t *l_662 = (void*)0;
                        (*l_401) = &l_643;
                        (**l_401) = ((safe_lshift_func_uint8_t_u_u((p_49 , (safe_mod_func_uint64_t_u_u(((((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 8))(1L, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 16))(0x1848FCDAL, ((VECTOR(int32_t, 2))(9L, (-3L))), 0x19387A37L, 0x5C056676L, ((VECTOR(int32_t, 4))(p_1135->g_649.xyxx)), 0L, 0x436A52E8L, 5L, 0x55BFD8D0L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_650.yzwzxwyy)).s67)), 0x38176314L)).s999b, ((VECTOR(uint32_t, 8))(l_651.s52706111)).hi))))), ((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(p_1135->g_652.s0652)).yyxxwxwzzzyzyzxw)).sa , ((l_643 >= (safe_lshift_func_int8_t_s_u((p_1135->g_365.se == p_1135->g_378), (((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(4UL, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(0x5FL, ((VECTOR(uint8_t, 4))(p_1135->g_655.s6620)), ((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 8))(p_1135->g_656.s73742600)).s74, (uint8_t)(((((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 16))(0x0C2FL, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 2))(0x0AD8L, 0x2DC9L)), ((VECTOR(int16_t, 16))(l_659.s5533177223334545)).s9a))), (((*p_1135->g_459) = ((safe_mul_func_uint8_t_u_u(((*p_48) = ((((p_50 && (p_1135->g_656.s0 >= 0L)) | p_50) == p_1135->g_428.x) & p_51)), (**l_401))) | l_583[8])) || l_650.z), 0x5568L, ((VECTOR(int16_t, 8))(4L)), (-4L), p_50, (-1L), 4L)).s3d29)), (-1L), 0x4686L, 0x0210L, (*l_559), 0x17E4L, ((VECTOR(int16_t, 4))(0x6640L)), 0x5CCAL, 0x7A82L)).s0, GROUP_DIVERGE(1, 1))) && (*l_559)) || l_583[9]) >= p_51) , (*p_48)), (uint8_t)0x7FL))), 0xFFL)).s07)), 1UL)))).y ^ 0x06L)))) <= 0x15L)) >= GROUP_DIVERGE(2, 1)), 0x73CF0DC136B1532AL, 1L)), ((VECTOR(int64_t, 8))(0x723B0277BBC5787BL))))).s7 , p_1135->g_7) <= p_50), 0x60635AACDD63868BL))), 6)) & 0xBBL);
                        (*l_400) ^= ((GROUP_DIVERGE(1, 1) , l_662) != (void*)0);
                    }
                    (*l_401) = (void*)0;
                    p_1135->g_666 = (void*)0;
                }
            }
            for (p_1135->g_378 = 6; (p_1135->g_378 <= (-15)); p_1135->g_378 = safe_sub_func_int32_t_s_s(p_1135->g_378, 8))
            { /* block id: 257 */
                if (p_50)
                    break;
            }
            (*l_401) = l_670;
        }
        (*l_401) = (*l_401);
    }
    return (*p_1135->g_157);
}


/* ------------------------------------------ */
/* 
 * reads : p_1135->g_383 p_1135->g_396 p_1135->g_157 p_1135->g_158 p_1135->g_26 p_1135->g_398
 * writes: p_1135->g_383 p_1135->g_71
 */
uint8_t * func_52(uint8_t * p_53, uint32_t  p_54, uint8_t * p_55, uint8_t * p_56, uint8_t * p_57, struct S1 * p_1135)
{ /* block id: 146 */
    uint8_t l_394 = 0x7CL;
    uint64_t *l_395 = &p_1135->g_383;
    (*p_1135->g_396) = (safe_unary_minus_func_uint64_t_u(((*l_395) ^= l_394)));
    (*p_1135->g_398) = (**p_1135->g_157);
    return &p_1135->g_40;
}


/* ------------------------------------------ */
/* 
 * reads : p_1135->g_69 p_1135->g_71 p_1135->g_comm_values p_1135->g_76 p_1135->g_383 p_1135->g_389
 * writes: p_1135->g_71 p_1135->g_69 p_1135->g_383 p_1135->g_389
 */
uint8_t * func_58(uint8_t  p_59, struct S1 * p_1135)
{ /* block id: 31 */
    int32_t *l_70 = &p_1135->g_71;
    VECTOR(int32_t, 4) l_91 = (VECTOR(int32_t, 4))(0x52566A56L, (VECTOR(int32_t, 2))(0x52566A56L, 0x04A74307L), 0x04A74307L);
    uint8_t *l_102 = &p_1135->g_40;
    uint8_t **l_101 = &l_102;
    VECTOR(uint16_t, 4) l_126 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xA07AL), 0xA07AL);
    VECTOR(uint32_t, 4) l_179 = (VECTOR(uint32_t, 4))(0x67EB79DCL, (VECTOR(uint32_t, 2))(0x67EB79DCL, 0x5BA2BE6EL), 0x5BA2BE6EL);
    uint32_t l_185 = 5UL;
    uint32_t l_211 = 1UL;
    VECTOR(uint64_t, 8) l_236 = (VECTOR(uint64_t, 8))(0x87E794C5C5D794C9L, (VECTOR(uint64_t, 4))(0x87E794C5C5D794C9L, (VECTOR(uint64_t, 2))(0x87E794C5C5D794C9L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x87E794C5C5D794C9L, 18446744073709551615UL);
    int8_t ***l_242 = &p_1135->g_115;
    VECTOR(uint16_t, 2) l_299 = (VECTOR(uint16_t, 2))(0x7B36L, 5UL);
    int32_t l_312 = 6L;
    uint64_t l_315 = 9UL;
    VECTOR(uint64_t, 2) l_335 = (VECTOR(uint64_t, 2))(0xE51A943F43513267L, 0x53BD5B5AC59ABE27L);
    VECTOR(int32_t, 2) l_371 = (VECTOR(int32_t, 2))(0x62F7704DL, 0L);
    VECTOR(int16_t, 2) l_373 = (VECTOR(int16_t, 2))(0x7185L, 0L);
    int32_t *l_386 = (void*)0;
    int32_t *l_387 = (void*)0;
    int32_t *l_390 = &p_1135->g_389;
    int i;
    (*l_70) = p_59;
    for (p_1135->g_69 = 0; (p_1135->g_69 < 10); p_1135->g_69 = safe_add_func_uint16_t_u_u(p_1135->g_69, 5))
    { /* block id: 35 */
        volatile uint8_t * volatile * volatile l_77[5][1][5] = {{{&p_1135->g_78,&p_1135->g_78,&p_1135->g_78,&p_1135->g_78,&p_1135->g_78}},{{&p_1135->g_78,&p_1135->g_78,&p_1135->g_78,&p_1135->g_78,&p_1135->g_78}},{{&p_1135->g_78,&p_1135->g_78,&p_1135->g_78,&p_1135->g_78,&p_1135->g_78}},{{&p_1135->g_78,&p_1135->g_78,&p_1135->g_78,&p_1135->g_78,&p_1135->g_78}},{{&p_1135->g_78,&p_1135->g_78,&p_1135->g_78,&p_1135->g_78,&p_1135->g_78}}};
        VECTOR(uint32_t, 8) l_83 = (VECTOR(uint32_t, 8))(0xB334FE9DL, (VECTOR(uint32_t, 4))(0xB334FE9DL, (VECTOR(uint32_t, 2))(0xB334FE9DL, 0x592ED994L), 0x592ED994L), 0x592ED994L, 0xB334FE9DL, 0x592ED994L);
        VECTOR(int32_t, 16) l_90 = (VECTOR(int32_t, 16))(0x3A74F570L, (VECTOR(int32_t, 4))(0x3A74F570L, (VECTOR(int32_t, 2))(0x3A74F570L, 0x49969097L), 0x49969097L), 0x49969097L, 0x3A74F570L, 0x49969097L, (VECTOR(int32_t, 2))(0x3A74F570L, 0x49969097L), (VECTOR(int32_t, 2))(0x3A74F570L, 0x49969097L), 0x3A74F570L, 0x49969097L, 0x3A74F570L, 0x49969097L);
        VECTOR(int32_t, 2) l_92 = (VECTOR(int32_t, 2))(6L, 0x5C6DFA21L);
        VECTOR(uint16_t, 8) l_177 = (VECTOR(uint16_t, 8))(0xD234L, (VECTOR(uint16_t, 4))(0xD234L, (VECTOR(uint16_t, 2))(0xD234L, 0x2B22L), 0x2B22L), 0x2B22L, 0xD234L, 0x2B22L);
        VECTOR(uint32_t, 2) l_181 = (VECTOR(uint32_t, 2))(0xEB8B61DAL, 1UL);
        uint8_t *l_184[1];
        uint16_t *l_202 = (void*)0;
        uint8_t ***l_207 = (void*)0;
        VECTOR(int16_t, 2) l_216 = (VECTOR(int16_t, 2))(0x0EE6L, 0x6ADDL);
        VECTOR(int8_t, 4) l_325 = (VECTOR(int8_t, 4))(0x4CL, (VECTOR(int8_t, 2))(0x4CL, 0x39L), 0x39L);
        VECTOR(int8_t, 8) l_327 = (VECTOR(int8_t, 8))(0x2AL, (VECTOR(int8_t, 4))(0x2AL, (VECTOR(int8_t, 2))(0x2AL, 0x76L), 0x76L), 0x76L, 0x2AL, 0x76L);
        int32_t *l_354 = (void*)0;
        uint8_t l_368 = 0x47L;
        VECTOR(int16_t, 4) l_372 = (VECTOR(int16_t, 4))(0x440DL, (VECTOR(int16_t, 2))(0x440DL, 0x3642L), 0x3642L);
        int32_t *l_381 = (void*)0;
        int32_t *l_382[1][3];
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_184[i] = &p_1135->g_40;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 3; j++)
                l_382[i][j] = (void*)0;
        }
        for (p_1135->g_71 = (-2); (p_1135->g_71 != 8); ++p_1135->g_71)
        { /* block id: 38 */
            uint8_t *l_82 = &p_1135->g_40;
            int8_t *l_99 = &p_1135->g_100;
            int32_t *l_103 = (void*)0;
            int32_t *l_104 = (void*)0;
            int32_t l_105[9][7] = {{(-1L),(-1L),6L,(-5L),(-7L),(-5L),6L},{(-1L),(-1L),6L,(-5L),(-7L),(-5L),6L},{(-1L),(-1L),6L,(-5L),(-7L),(-5L),6L},{(-1L),(-1L),6L,(-5L),(-7L),(-5L),6L},{(-1L),(-1L),6L,(-5L),(-7L),(-5L),6L},{(-1L),(-1L),6L,(-5L),(-7L),(-5L),6L},{(-1L),(-1L),6L,(-5L),(-7L),(-5L),6L},{(-1L),(-1L),6L,(-5L),(-7L),(-5L),6L},{(-1L),(-1L),6L,(-5L),(-7L),(-5L),6L}};
            VECTOR(uint8_t, 8) l_108 = (VECTOR(uint8_t, 8))(247UL, (VECTOR(uint8_t, 4))(247UL, (VECTOR(uint8_t, 2))(247UL, 0xB4L), 0xB4L), 0xB4L, 247UL, 0xB4L);
            int8_t *l_109[10][4][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            uint16_t *l_112 = &p_1135->g_113[0];
            uint8_t ***l_147 = &l_101;
            VECTOR(int8_t, 4) l_149 = (VECTOR(int8_t, 4))(0x52L, (VECTOR(int8_t, 2))(0x52L, 2L), 2L);
            VECTOR(int8_t, 16) l_150 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x77L), 0x77L), 0x77L, 1L, 0x77L, (VECTOR(int8_t, 2))(1L, 0x77L), (VECTOR(int8_t, 2))(1L, 0x77L), 1L, 0x77L, 1L, 0x77L);
            VECTOR(uint64_t, 8) l_198 = (VECTOR(uint64_t, 8))(0xA4B412E4D6ACB4F6L, (VECTOR(uint64_t, 4))(0xA4B412E4D6ACB4F6L, (VECTOR(uint64_t, 2))(0xA4B412E4D6ACB4F6L, 0xD70C356468E3BE80L), 0xD70C356468E3BE80L), 0xD70C356468E3BE80L, 0xA4B412E4D6ACB4F6L, 0xD70C356468E3BE80L);
            VECTOR(int16_t, 4) l_215 = (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, 0x633EL), 0x633EL);
            VECTOR(int32_t, 4) l_224 = (VECTOR(int32_t, 4))(0x515CF45EL, (VECTOR(int32_t, 2))(0x515CF45EL, 0x41A622EBL), 0x41A622EBL);
            VECTOR(int16_t, 2) l_227 = (VECTOR(int16_t, 2))((-1L), 0x1734L);
            VECTOR(int32_t, 16) l_230 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-3L)), (-3L)), (-3L), 0L, (-3L), (VECTOR(int32_t, 2))(0L, (-3L)), (VECTOR(int32_t, 2))(0L, (-3L)), 0L, (-3L), 0L, (-3L));
            int8_t ***l_234 = &p_1135->g_115;
            VECTOR(uint64_t, 2) l_308 = (VECTOR(uint64_t, 2))(0x501433D7443F8EBDL, 18446744073709551615UL);
            union U0 *l_353[1][6] = {{(void*)0,&p_1135->g_351,(void*)0,(void*)0,&p_1135->g_351,(void*)0}};
            VECTOR(int32_t, 16) l_370 = (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 1L), 1L), 1L, 8L, 1L, (VECTOR(int32_t, 2))(8L, 1L), (VECTOR(int32_t, 2))(8L, 1L), 8L, 1L, 8L, 1L);
            int i, j, k;
            if (p_1135->g_comm_values[p_1135->tid])
                break;
            l_77[3][0][2] = p_1135->g_76;
        }
        p_1135->g_383++;
    }
    (*l_390) &= (*l_70);
    return &p_1135->g_40;
}


/* ------------------------------------------ */
/* 
 * reads : p_1135->g_40 p_1135->g_2 p_1135->g_comm_values
 * writes: p_1135->g_40
 */
uint32_t  func_60(uint8_t * p_61, int32_t * p_62, struct S1 * p_1135)
{ /* block id: 23 */
    for (p_1135->g_40 = 0; (p_1135->g_40 == 30); p_1135->g_40 = safe_add_func_uint32_t_u_u(p_1135->g_40, 9))
    { /* block id: 26 */
        return p_1135->g_2;
    }
    return p_1135->g_comm_values[p_1135->tid];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[162];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 162; i++)
            l_comm_values[i] = 1;
    struct S1 c_1136;
    struct S1* p_1135 = &c_1136;
    struct S1 c_1137 = {
        (-8L), // p_1135->g_2
        2L, // p_1135->g_3
        0x1CC25FA5L, // p_1135->g_7
        (-1L), // p_1135->g_26
        (-1L), // p_1135->g_29
        254UL, // p_1135->g_40
        0x417B1AB372C247AFL, // p_1135->g_69
        0x2A9BED5DL, // p_1135->g_71
        (void*)0, // p_1135->g_76
        0x73L, // p_1135->g_79
        &p_1135->g_79, // p_1135->g_78
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 5L), 5L), 5L, (-1L), 5L, (VECTOR(int32_t, 2))((-1L), 5L), (VECTOR(int32_t, 2))((-1L), 5L), (-1L), 5L, (-1L), 5L), // p_1135->g_93
        (VECTOR(int8_t, 2))(0x7AL, 1L), // p_1135->g_98
        0x3FL, // p_1135->g_100
        {65535UL}, // p_1135->g_113
        (void*)0, // p_1135->g_116
        &p_1135->g_116, // p_1135->g_115
        &p_1135->g_115, // p_1135->g_114
        &p_1135->g_40, // p_1135->g_121
        &p_1135->g_26, // p_1135->g_158
        &p_1135->g_158, // p_1135->g_157
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 6L), 6L), // p_1135->g_180
        (VECTOR(int8_t, 16))(0x45L, (VECTOR(int8_t, 4))(0x45L, (VECTOR(int8_t, 2))(0x45L, 0L), 0L), 0L, 0x45L, 0L, (VECTOR(int8_t, 2))(0x45L, 0L), (VECTOR(int8_t, 2))(0x45L, 0L), 0x45L, 0L, 0x45L, 0L), // p_1135->g_197
        (VECTOR(uint64_t, 2))(0x18A363AFEA6F2518L, 18446744073709551611UL), // p_1135->g_199
        5L, // p_1135->g_204
        (VECTOR(uint32_t, 16))(0x0E3602B0L, (VECTOR(uint32_t, 4))(0x0E3602B0L, (VECTOR(uint32_t, 2))(0x0E3602B0L, 0x8BA211ECL), 0x8BA211ECL), 0x8BA211ECL, 0x0E3602B0L, 0x8BA211ECL, (VECTOR(uint32_t, 2))(0x0E3602B0L, 0x8BA211ECL), (VECTOR(uint32_t, 2))(0x0E3602B0L, 0x8BA211ECL), 0x0E3602B0L, 0x8BA211ECL, 0x0E3602B0L, 0x8BA211ECL), // p_1135->g_214
        (VECTOR(int16_t, 16))(0x31FDL, (VECTOR(int16_t, 4))(0x31FDL, (VECTOR(int16_t, 2))(0x31FDL, 1L), 1L), 1L, 0x31FDL, 1L, (VECTOR(int16_t, 2))(0x31FDL, 1L), (VECTOR(int16_t, 2))(0x31FDL, 1L), 0x31FDL, 1L, 0x31FDL, 1L), // p_1135->g_217
        (VECTOR(uint64_t, 4))(0xE8A7D79281EB3C0BL, (VECTOR(uint64_t, 2))(0xE8A7D79281EB3C0BL, 0x7CF08D60B0F39E67L), 0x7CF08D60B0F39E67L), // p_1135->g_237
        (VECTOR(uint64_t, 2))(0x6029253BF1A1C197L, 0xDC78A53E4EF68A5EL), // p_1135->g_238
        (VECTOR(uint32_t, 16))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 0UL), 0UL), 0UL, 5UL, 0UL, (VECTOR(uint32_t, 2))(5UL, 0UL), (VECTOR(uint32_t, 2))(5UL, 0UL), 5UL, 0UL, 5UL, 0UL), // p_1135->g_239
        {0x01D6E4C4L,0x01D6E4C4L,0x01D6E4C4L,0x01D6E4C4L,0x01D6E4C4L,0x01D6E4C4L,0x01D6E4C4L}, // p_1135->g_260
        (-4L), // p_1135->g_285
        {0x0E351EE41EBB217BL}, // p_1135->g_289
        &p_1135->g_115, // p_1135->g_295
        {&p_1135->g_295,&p_1135->g_295,&p_1135->g_295,&p_1135->g_295,&p_1135->g_295,&p_1135->g_295,&p_1135->g_295,&p_1135->g_295}, // p_1135->g_294
        (VECTOR(uint16_t, 4))(0x5179L, (VECTOR(uint16_t, 2))(0x5179L, 0x873BL), 0x873BL), // p_1135->g_298
        (VECTOR(uint64_t, 16))(0x43052055CDA78A6AL, (VECTOR(uint64_t, 4))(0x43052055CDA78A6AL, (VECTOR(uint64_t, 2))(0x43052055CDA78A6AL, 0xFE95DC11936E4006L), 0xFE95DC11936E4006L), 0xFE95DC11936E4006L, 0x43052055CDA78A6AL, 0xFE95DC11936E4006L, (VECTOR(uint64_t, 2))(0x43052055CDA78A6AL, 0xFE95DC11936E4006L), (VECTOR(uint64_t, 2))(0x43052055CDA78A6AL, 0xFE95DC11936E4006L), 0x43052055CDA78A6AL, 0xFE95DC11936E4006L, 0x43052055CDA78A6AL, 0xFE95DC11936E4006L), // p_1135->g_309
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x39CBL), 0x39CBL), // p_1135->g_324
        0L, // p_1135->g_330
        {&p_1135->g_330,&p_1135->g_330,&p_1135->g_330,&p_1135->g_330,&p_1135->g_330}, // p_1135->g_329
        &p_1135->g_329[2], // p_1135->g_328
        {1L}, // p_1135->g_351
        (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x3C22F0221615BC1CL), 0x3C22F0221615BC1CL), 0x3C22F0221615BC1CL, 0L, 0x3C22F0221615BC1CL, (VECTOR(int64_t, 2))(0L, 0x3C22F0221615BC1CL), (VECTOR(int64_t, 2))(0L, 0x3C22F0221615BC1CL), 0L, 0x3C22F0221615BC1CL, 0L, 0x3C22F0221615BC1CL), // p_1135->g_365
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), // p_1135->g_369
        1L, // p_1135->g_378
        0x4281L, // p_1135->g_379
        0xBFE21B30C6F659CBL, // p_1135->g_383
        0x3DBAABDBL, // p_1135->g_389
        {&p_1135->g_389,&p_1135->g_389,&p_1135->g_389,&p_1135->g_389}, // p_1135->g_388
        7UL, // p_1135->g_392
        &p_1135->g_71, // p_1135->g_396
        {{&p_1135->g_29,&p_1135->g_26,&p_1135->g_71,&p_1135->g_3,&p_1135->g_26,&p_1135->g_3},{&p_1135->g_29,&p_1135->g_26,&p_1135->g_71,&p_1135->g_3,&p_1135->g_26,&p_1135->g_3},{&p_1135->g_29,&p_1135->g_26,&p_1135->g_71,&p_1135->g_3,&p_1135->g_26,&p_1135->g_3},{&p_1135->g_29,&p_1135->g_26,&p_1135->g_71,&p_1135->g_3,&p_1135->g_26,&p_1135->g_3},{&p_1135->g_29,&p_1135->g_26,&p_1135->g_71,&p_1135->g_3,&p_1135->g_26,&p_1135->g_3}}, // p_1135->g_397
        &p_1135->g_71, // p_1135->g_398
        {{{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L}},{{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L}},{{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L}},{{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L}},{{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L}},{{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L}},{{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L}},{{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L}},{{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L}},{{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L},{4294967295UL,0x2E258E49L}}}, // p_1135->g_410
        (VECTOR(int64_t, 16))(0x1B36E5F7EBCF9EC1L, (VECTOR(int64_t, 4))(0x1B36E5F7EBCF9EC1L, (VECTOR(int64_t, 2))(0x1B36E5F7EBCF9EC1L, 3L), 3L), 3L, 0x1B36E5F7EBCF9EC1L, 3L, (VECTOR(int64_t, 2))(0x1B36E5F7EBCF9EC1L, 3L), (VECTOR(int64_t, 2))(0x1B36E5F7EBCF9EC1L, 3L), 0x1B36E5F7EBCF9EC1L, 3L, 0x1B36E5F7EBCF9EC1L, 3L), // p_1135->g_427
        (VECTOR(int64_t, 2))((-6L), (-4L)), // p_1135->g_428
        (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x13F886E5F10C5271L), 0x13F886E5F10C5271L), 0x13F886E5F10C5271L, 1L, 0x13F886E5F10C5271L), // p_1135->g_430
        (VECTOR(int8_t, 16))(0x1DL, (VECTOR(int8_t, 4))(0x1DL, (VECTOR(int8_t, 2))(0x1DL, 2L), 2L), 2L, 0x1DL, 2L, (VECTOR(int8_t, 2))(0x1DL, 2L), (VECTOR(int8_t, 2))(0x1DL, 2L), 0x1DL, 2L, 0x1DL, 2L), // p_1135->g_445
        &p_1135->g_389, // p_1135->g_459
        (VECTOR(int32_t, 8))(0x2E26F827L, (VECTOR(int32_t, 4))(0x2E26F827L, (VECTOR(int32_t, 2))(0x2E26F827L, 0x5CC9DCD7L), 0x5CC9DCD7L), 0x5CC9DCD7L, 0x2E26F827L, 0x5CC9DCD7L), // p_1135->g_460
        (VECTOR(int32_t, 4))(0x5FC70761L, (VECTOR(int32_t, 2))(0x5FC70761L, 0x47B61CBCL), 0x47B61CBCL), // p_1135->g_461
        {3L}, // p_1135->g_472
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-4L)), (-4L)), (-4L), 0L, (-4L), (VECTOR(int32_t, 2))(0L, (-4L)), (VECTOR(int32_t, 2))(0L, (-4L)), 0L, (-4L), 0L, (-4L)), // p_1135->g_517
        (VECTOR(int32_t, 16))(0x77DC86E4L, (VECTOR(int32_t, 4))(0x77DC86E4L, (VECTOR(int32_t, 2))(0x77DC86E4L, 0L), 0L), 0L, 0x77DC86E4L, 0L, (VECTOR(int32_t, 2))(0x77DC86E4L, 0L), (VECTOR(int32_t, 2))(0x77DC86E4L, 0L), 0x77DC86E4L, 0L, 0x77DC86E4L, 0L), // p_1135->g_518
        (VECTOR(uint8_t, 2))(0xE1L, 0UL), // p_1135->g_522
        (VECTOR(int32_t, 4))(0x7BAC284CL, (VECTOR(int32_t, 2))(0x7BAC284CL, 0x2B2C5F92L), 0x2B2C5F92L), // p_1135->g_540
        (VECTOR(int8_t, 2))((-6L), (-1L)), // p_1135->g_635
        (VECTOR(int32_t, 2))(0x079DD516L, 0x65471FC4L), // p_1135->g_649
        (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xE0CB76B2L), 0xE0CB76B2L), 0xE0CB76B2L, 4294967295UL, 0xE0CB76B2L), // p_1135->g_652
        (VECTOR(uint8_t, 8))(253UL, (VECTOR(uint8_t, 4))(253UL, (VECTOR(uint8_t, 2))(253UL, 0x03L), 0x03L), 0x03L, 253UL, 0x03L), // p_1135->g_655
        (VECTOR(uint8_t, 8))(0x78L, (VECTOR(uint8_t, 4))(0x78L, (VECTOR(uint8_t, 2))(0x78L, 0UL), 0UL), 0UL, 0x78L, 0UL), // p_1135->g_656
        &p_1135->g_260[2], // p_1135->g_667
        &p_1135->g_667, // p_1135->g_666
        (VECTOR(uint64_t, 8))(18446744073709551612UL, (VECTOR(uint64_t, 4))(18446744073709551612UL, (VECTOR(uint64_t, 2))(18446744073709551612UL, 0x7244B4CEBDF0FC1EL), 0x7244B4CEBDF0FC1EL), 0x7244B4CEBDF0FC1EL, 18446744073709551612UL, 0x7244B4CEBDF0FC1EL), // p_1135->g_675
        (VECTOR(uint64_t, 2))(0xE669DFC0837D45B4L, 18446744073709551615UL), // p_1135->g_676
        (VECTOR(int64_t, 2))(0x03180E63F43ABD03L, 0x20F00B6D0C86EA01L), // p_1135->g_677
        (VECTOR(int64_t, 16))(0x162DD58A9516A534L, (VECTOR(int64_t, 4))(0x162DD58A9516A534L, (VECTOR(int64_t, 2))(0x162DD58A9516A534L, 9L), 9L), 9L, 0x162DD58A9516A534L, 9L, (VECTOR(int64_t, 2))(0x162DD58A9516A534L, 9L), (VECTOR(int64_t, 2))(0x162DD58A9516A534L, 9L), 0x162DD58A9516A534L, 9L, 0x162DD58A9516A534L, 9L), // p_1135->g_683
        (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x0343CEA3B2DAF2F8L), 0x0343CEA3B2DAF2F8L), 0x0343CEA3B2DAF2F8L, 1L, 0x0343CEA3B2DAF2F8L, (VECTOR(int64_t, 2))(1L, 0x0343CEA3B2DAF2F8L), (VECTOR(int64_t, 2))(1L, 0x0343CEA3B2DAF2F8L), 1L, 0x0343CEA3B2DAF2F8L, 1L, 0x0343CEA3B2DAF2F8L), // p_1135->g_685
        0x92B01C7BFE5E4392L, // p_1135->g_688
        (void*)0, // p_1135->g_694
        &p_1135->g_158, // p_1135->g_695
        &p_1135->g_158, // p_1135->g_696
        {{{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158}},{{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158}},{{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158}},{{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158}},{{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158}},{{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158}},{{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158}},{{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158},{&p_1135->g_158,&p_1135->g_158,(void*)0,&p_1135->g_158}}}, // p_1135->g_697
        (void*)0, // p_1135->g_698
        (VECTOR(uint8_t, 16))(0x4BL, (VECTOR(uint8_t, 4))(0x4BL, (VECTOR(uint8_t, 2))(0x4BL, 255UL), 255UL), 255UL, 0x4BL, 255UL, (VECTOR(uint8_t, 2))(0x4BL, 255UL), (VECTOR(uint8_t, 2))(0x4BL, 255UL), 0x4BL, 255UL, 0x4BL, 255UL), // p_1135->g_712
        {0x17B0D29B7AC2727BL}, // p_1135->g_752
        &p_1135->g_158, // p_1135->g_761
        (VECTOR(uint8_t, 2))(255UL, 0x88L), // p_1135->g_765
        0x318FF02B0A06EF8FL, // p_1135->g_790
        1L, // p_1135->g_791
        0x0B5D2884E1BF1299L, // p_1135->g_793
        {8L,8L,8L,8L,8L,8L,8L}, // p_1135->g_810
        (void*)0, // p_1135->g_838
        &p_1135->g_838, // p_1135->g_837
        (void*)0, // p_1135->g_869
        {{{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790}},{{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790}},{{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790}},{{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790}},{{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790}},{{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790}},{{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790},{(void*)0,&p_1135->g_790,(void*)0,&p_1135->g_790,&p_1135->g_790}}}, // p_1135->g_874
        (VECTOR(int32_t, 2))(0L, 0x5A1D8A24L), // p_1135->g_907
        (VECTOR(uint32_t, 2))(4294967290UL, 4294967294UL), // p_1135->g_909
        0x30B39CD20F504341L, // p_1135->g_924
        4UL, // p_1135->g_968
        {1L}, // p_1135->g_972
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 250UL), 250UL), // p_1135->g_1083
        (VECTOR(uint16_t, 8))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 9UL), 9UL), 9UL, 65534UL, 9UL), // p_1135->g_1087
        0xD2F1DE4DL, // p_1135->g_1099
        (VECTOR(int32_t, 2))(0x7DD0D4AFL, 0x20D43D50L), // p_1135->g_1113
        (VECTOR(uint16_t, 4))(0x3A8DL, (VECTOR(uint16_t, 2))(0x3A8DL, 1UL), 1UL), // p_1135->g_1116
        (VECTOR(uint16_t, 16))(65530UL, (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 0x9D5BL), 0x9D5BL), 0x9D5BL, 65530UL, 0x9D5BL, (VECTOR(uint16_t, 2))(65530UL, 0x9D5BL), (VECTOR(uint16_t, 2))(65530UL, 0x9D5BL), 65530UL, 0x9D5BL, 65530UL, 0x9D5BL), // p_1135->g_1117
        (VECTOR(uint16_t, 8))(65527UL, (VECTOR(uint16_t, 4))(65527UL, (VECTOR(uint16_t, 2))(65527UL, 0xE93AL), 0xE93AL), 0xE93AL, 65527UL, 0xE93AL), // p_1135->g_1118
        0, // p_1135->v_collective
        sequence_input[get_global_id(0)], // p_1135->global_0_offset
        sequence_input[get_global_id(1)], // p_1135->global_1_offset
        sequence_input[get_global_id(2)], // p_1135->global_2_offset
        sequence_input[get_local_id(0)], // p_1135->local_0_offset
        sequence_input[get_local_id(1)], // p_1135->local_1_offset
        sequence_input[get_local_id(2)], // p_1135->local_2_offset
        sequence_input[get_group_id(0)], // p_1135->group_0_offset
        sequence_input[get_group_id(1)], // p_1135->group_1_offset
        sequence_input[get_group_id(2)], // p_1135->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 162)), permutations[0][get_linear_local_id()])), // p_1135->tid
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1136 = c_1137;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1135);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1135->g_2, "p_1135->g_2", print_hash_value);
    transparent_crc(p_1135->g_3, "p_1135->g_3", print_hash_value);
    transparent_crc(p_1135->g_7, "p_1135->g_7", print_hash_value);
    transparent_crc(p_1135->g_26, "p_1135->g_26", print_hash_value);
    transparent_crc(p_1135->g_29, "p_1135->g_29", print_hash_value);
    transparent_crc(p_1135->g_40, "p_1135->g_40", print_hash_value);
    transparent_crc(p_1135->g_69, "p_1135->g_69", print_hash_value);
    transparent_crc(p_1135->g_71, "p_1135->g_71", print_hash_value);
    transparent_crc(p_1135->g_79, "p_1135->g_79", print_hash_value);
    transparent_crc(p_1135->g_93.s0, "p_1135->g_93.s0", print_hash_value);
    transparent_crc(p_1135->g_93.s1, "p_1135->g_93.s1", print_hash_value);
    transparent_crc(p_1135->g_93.s2, "p_1135->g_93.s2", print_hash_value);
    transparent_crc(p_1135->g_93.s3, "p_1135->g_93.s3", print_hash_value);
    transparent_crc(p_1135->g_93.s4, "p_1135->g_93.s4", print_hash_value);
    transparent_crc(p_1135->g_93.s5, "p_1135->g_93.s5", print_hash_value);
    transparent_crc(p_1135->g_93.s6, "p_1135->g_93.s6", print_hash_value);
    transparent_crc(p_1135->g_93.s7, "p_1135->g_93.s7", print_hash_value);
    transparent_crc(p_1135->g_93.s8, "p_1135->g_93.s8", print_hash_value);
    transparent_crc(p_1135->g_93.s9, "p_1135->g_93.s9", print_hash_value);
    transparent_crc(p_1135->g_93.sa, "p_1135->g_93.sa", print_hash_value);
    transparent_crc(p_1135->g_93.sb, "p_1135->g_93.sb", print_hash_value);
    transparent_crc(p_1135->g_93.sc, "p_1135->g_93.sc", print_hash_value);
    transparent_crc(p_1135->g_93.sd, "p_1135->g_93.sd", print_hash_value);
    transparent_crc(p_1135->g_93.se, "p_1135->g_93.se", print_hash_value);
    transparent_crc(p_1135->g_93.sf, "p_1135->g_93.sf", print_hash_value);
    transparent_crc(p_1135->g_98.x, "p_1135->g_98.x", print_hash_value);
    transparent_crc(p_1135->g_98.y, "p_1135->g_98.y", print_hash_value);
    transparent_crc(p_1135->g_100, "p_1135->g_100", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1135->g_113[i], "p_1135->g_113[i]", print_hash_value);

    }
    transparent_crc(p_1135->g_180.x, "p_1135->g_180.x", print_hash_value);
    transparent_crc(p_1135->g_180.y, "p_1135->g_180.y", print_hash_value);
    transparent_crc(p_1135->g_180.z, "p_1135->g_180.z", print_hash_value);
    transparent_crc(p_1135->g_180.w, "p_1135->g_180.w", print_hash_value);
    transparent_crc(p_1135->g_197.s0, "p_1135->g_197.s0", print_hash_value);
    transparent_crc(p_1135->g_197.s1, "p_1135->g_197.s1", print_hash_value);
    transparent_crc(p_1135->g_197.s2, "p_1135->g_197.s2", print_hash_value);
    transparent_crc(p_1135->g_197.s3, "p_1135->g_197.s3", print_hash_value);
    transparent_crc(p_1135->g_197.s4, "p_1135->g_197.s4", print_hash_value);
    transparent_crc(p_1135->g_197.s5, "p_1135->g_197.s5", print_hash_value);
    transparent_crc(p_1135->g_197.s6, "p_1135->g_197.s6", print_hash_value);
    transparent_crc(p_1135->g_197.s7, "p_1135->g_197.s7", print_hash_value);
    transparent_crc(p_1135->g_197.s8, "p_1135->g_197.s8", print_hash_value);
    transparent_crc(p_1135->g_197.s9, "p_1135->g_197.s9", print_hash_value);
    transparent_crc(p_1135->g_197.sa, "p_1135->g_197.sa", print_hash_value);
    transparent_crc(p_1135->g_197.sb, "p_1135->g_197.sb", print_hash_value);
    transparent_crc(p_1135->g_197.sc, "p_1135->g_197.sc", print_hash_value);
    transparent_crc(p_1135->g_197.sd, "p_1135->g_197.sd", print_hash_value);
    transparent_crc(p_1135->g_197.se, "p_1135->g_197.se", print_hash_value);
    transparent_crc(p_1135->g_197.sf, "p_1135->g_197.sf", print_hash_value);
    transparent_crc(p_1135->g_199.x, "p_1135->g_199.x", print_hash_value);
    transparent_crc(p_1135->g_199.y, "p_1135->g_199.y", print_hash_value);
    transparent_crc(p_1135->g_204, "p_1135->g_204", print_hash_value);
    transparent_crc(p_1135->g_214.s0, "p_1135->g_214.s0", print_hash_value);
    transparent_crc(p_1135->g_214.s1, "p_1135->g_214.s1", print_hash_value);
    transparent_crc(p_1135->g_214.s2, "p_1135->g_214.s2", print_hash_value);
    transparent_crc(p_1135->g_214.s3, "p_1135->g_214.s3", print_hash_value);
    transparent_crc(p_1135->g_214.s4, "p_1135->g_214.s4", print_hash_value);
    transparent_crc(p_1135->g_214.s5, "p_1135->g_214.s5", print_hash_value);
    transparent_crc(p_1135->g_214.s6, "p_1135->g_214.s6", print_hash_value);
    transparent_crc(p_1135->g_214.s7, "p_1135->g_214.s7", print_hash_value);
    transparent_crc(p_1135->g_214.s8, "p_1135->g_214.s8", print_hash_value);
    transparent_crc(p_1135->g_214.s9, "p_1135->g_214.s9", print_hash_value);
    transparent_crc(p_1135->g_214.sa, "p_1135->g_214.sa", print_hash_value);
    transparent_crc(p_1135->g_214.sb, "p_1135->g_214.sb", print_hash_value);
    transparent_crc(p_1135->g_214.sc, "p_1135->g_214.sc", print_hash_value);
    transparent_crc(p_1135->g_214.sd, "p_1135->g_214.sd", print_hash_value);
    transparent_crc(p_1135->g_214.se, "p_1135->g_214.se", print_hash_value);
    transparent_crc(p_1135->g_214.sf, "p_1135->g_214.sf", print_hash_value);
    transparent_crc(p_1135->g_217.s0, "p_1135->g_217.s0", print_hash_value);
    transparent_crc(p_1135->g_217.s1, "p_1135->g_217.s1", print_hash_value);
    transparent_crc(p_1135->g_217.s2, "p_1135->g_217.s2", print_hash_value);
    transparent_crc(p_1135->g_217.s3, "p_1135->g_217.s3", print_hash_value);
    transparent_crc(p_1135->g_217.s4, "p_1135->g_217.s4", print_hash_value);
    transparent_crc(p_1135->g_217.s5, "p_1135->g_217.s5", print_hash_value);
    transparent_crc(p_1135->g_217.s6, "p_1135->g_217.s6", print_hash_value);
    transparent_crc(p_1135->g_217.s7, "p_1135->g_217.s7", print_hash_value);
    transparent_crc(p_1135->g_217.s8, "p_1135->g_217.s8", print_hash_value);
    transparent_crc(p_1135->g_217.s9, "p_1135->g_217.s9", print_hash_value);
    transparent_crc(p_1135->g_217.sa, "p_1135->g_217.sa", print_hash_value);
    transparent_crc(p_1135->g_217.sb, "p_1135->g_217.sb", print_hash_value);
    transparent_crc(p_1135->g_217.sc, "p_1135->g_217.sc", print_hash_value);
    transparent_crc(p_1135->g_217.sd, "p_1135->g_217.sd", print_hash_value);
    transparent_crc(p_1135->g_217.se, "p_1135->g_217.se", print_hash_value);
    transparent_crc(p_1135->g_217.sf, "p_1135->g_217.sf", print_hash_value);
    transparent_crc(p_1135->g_237.x, "p_1135->g_237.x", print_hash_value);
    transparent_crc(p_1135->g_237.y, "p_1135->g_237.y", print_hash_value);
    transparent_crc(p_1135->g_237.z, "p_1135->g_237.z", print_hash_value);
    transparent_crc(p_1135->g_237.w, "p_1135->g_237.w", print_hash_value);
    transparent_crc(p_1135->g_238.x, "p_1135->g_238.x", print_hash_value);
    transparent_crc(p_1135->g_238.y, "p_1135->g_238.y", print_hash_value);
    transparent_crc(p_1135->g_239.s0, "p_1135->g_239.s0", print_hash_value);
    transparent_crc(p_1135->g_239.s1, "p_1135->g_239.s1", print_hash_value);
    transparent_crc(p_1135->g_239.s2, "p_1135->g_239.s2", print_hash_value);
    transparent_crc(p_1135->g_239.s3, "p_1135->g_239.s3", print_hash_value);
    transparent_crc(p_1135->g_239.s4, "p_1135->g_239.s4", print_hash_value);
    transparent_crc(p_1135->g_239.s5, "p_1135->g_239.s5", print_hash_value);
    transparent_crc(p_1135->g_239.s6, "p_1135->g_239.s6", print_hash_value);
    transparent_crc(p_1135->g_239.s7, "p_1135->g_239.s7", print_hash_value);
    transparent_crc(p_1135->g_239.s8, "p_1135->g_239.s8", print_hash_value);
    transparent_crc(p_1135->g_239.s9, "p_1135->g_239.s9", print_hash_value);
    transparent_crc(p_1135->g_239.sa, "p_1135->g_239.sa", print_hash_value);
    transparent_crc(p_1135->g_239.sb, "p_1135->g_239.sb", print_hash_value);
    transparent_crc(p_1135->g_239.sc, "p_1135->g_239.sc", print_hash_value);
    transparent_crc(p_1135->g_239.sd, "p_1135->g_239.sd", print_hash_value);
    transparent_crc(p_1135->g_239.se, "p_1135->g_239.se", print_hash_value);
    transparent_crc(p_1135->g_239.sf, "p_1135->g_239.sf", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1135->g_260[i], "p_1135->g_260[i]", print_hash_value);

    }
    transparent_crc(p_1135->g_285, "p_1135->g_285", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1135->g_289[i], "p_1135->g_289[i]", print_hash_value);

    }
    transparent_crc(p_1135->g_298.x, "p_1135->g_298.x", print_hash_value);
    transparent_crc(p_1135->g_298.y, "p_1135->g_298.y", print_hash_value);
    transparent_crc(p_1135->g_298.z, "p_1135->g_298.z", print_hash_value);
    transparent_crc(p_1135->g_298.w, "p_1135->g_298.w", print_hash_value);
    transparent_crc(p_1135->g_309.s0, "p_1135->g_309.s0", print_hash_value);
    transparent_crc(p_1135->g_309.s1, "p_1135->g_309.s1", print_hash_value);
    transparent_crc(p_1135->g_309.s2, "p_1135->g_309.s2", print_hash_value);
    transparent_crc(p_1135->g_309.s3, "p_1135->g_309.s3", print_hash_value);
    transparent_crc(p_1135->g_309.s4, "p_1135->g_309.s4", print_hash_value);
    transparent_crc(p_1135->g_309.s5, "p_1135->g_309.s5", print_hash_value);
    transparent_crc(p_1135->g_309.s6, "p_1135->g_309.s6", print_hash_value);
    transparent_crc(p_1135->g_309.s7, "p_1135->g_309.s7", print_hash_value);
    transparent_crc(p_1135->g_309.s8, "p_1135->g_309.s8", print_hash_value);
    transparent_crc(p_1135->g_309.s9, "p_1135->g_309.s9", print_hash_value);
    transparent_crc(p_1135->g_309.sa, "p_1135->g_309.sa", print_hash_value);
    transparent_crc(p_1135->g_309.sb, "p_1135->g_309.sb", print_hash_value);
    transparent_crc(p_1135->g_309.sc, "p_1135->g_309.sc", print_hash_value);
    transparent_crc(p_1135->g_309.sd, "p_1135->g_309.sd", print_hash_value);
    transparent_crc(p_1135->g_309.se, "p_1135->g_309.se", print_hash_value);
    transparent_crc(p_1135->g_309.sf, "p_1135->g_309.sf", print_hash_value);
    transparent_crc(p_1135->g_324.x, "p_1135->g_324.x", print_hash_value);
    transparent_crc(p_1135->g_324.y, "p_1135->g_324.y", print_hash_value);
    transparent_crc(p_1135->g_324.z, "p_1135->g_324.z", print_hash_value);
    transparent_crc(p_1135->g_324.w, "p_1135->g_324.w", print_hash_value);
    transparent_crc(p_1135->g_330, "p_1135->g_330", print_hash_value);
    transparent_crc(p_1135->g_351.f0, "p_1135->g_351.f0", print_hash_value);
    transparent_crc(p_1135->g_365.s0, "p_1135->g_365.s0", print_hash_value);
    transparent_crc(p_1135->g_365.s1, "p_1135->g_365.s1", print_hash_value);
    transparent_crc(p_1135->g_365.s2, "p_1135->g_365.s2", print_hash_value);
    transparent_crc(p_1135->g_365.s3, "p_1135->g_365.s3", print_hash_value);
    transparent_crc(p_1135->g_365.s4, "p_1135->g_365.s4", print_hash_value);
    transparent_crc(p_1135->g_365.s5, "p_1135->g_365.s5", print_hash_value);
    transparent_crc(p_1135->g_365.s6, "p_1135->g_365.s6", print_hash_value);
    transparent_crc(p_1135->g_365.s7, "p_1135->g_365.s7", print_hash_value);
    transparent_crc(p_1135->g_365.s8, "p_1135->g_365.s8", print_hash_value);
    transparent_crc(p_1135->g_365.s9, "p_1135->g_365.s9", print_hash_value);
    transparent_crc(p_1135->g_365.sa, "p_1135->g_365.sa", print_hash_value);
    transparent_crc(p_1135->g_365.sb, "p_1135->g_365.sb", print_hash_value);
    transparent_crc(p_1135->g_365.sc, "p_1135->g_365.sc", print_hash_value);
    transparent_crc(p_1135->g_365.sd, "p_1135->g_365.sd", print_hash_value);
    transparent_crc(p_1135->g_365.se, "p_1135->g_365.se", print_hash_value);
    transparent_crc(p_1135->g_365.sf, "p_1135->g_365.sf", print_hash_value);
    transparent_crc(p_1135->g_369.x, "p_1135->g_369.x", print_hash_value);
    transparent_crc(p_1135->g_369.y, "p_1135->g_369.y", print_hash_value);
    transparent_crc(p_1135->g_369.z, "p_1135->g_369.z", print_hash_value);
    transparent_crc(p_1135->g_369.w, "p_1135->g_369.w", print_hash_value);
    transparent_crc(p_1135->g_378, "p_1135->g_378", print_hash_value);
    transparent_crc(p_1135->g_379, "p_1135->g_379", print_hash_value);
    transparent_crc(p_1135->g_383, "p_1135->g_383", print_hash_value);
    transparent_crc(p_1135->g_389, "p_1135->g_389", print_hash_value);
    transparent_crc(p_1135->g_392, "p_1135->g_392", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1135->g_410[i][j][k], "p_1135->g_410[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1135->g_427.s0, "p_1135->g_427.s0", print_hash_value);
    transparent_crc(p_1135->g_427.s1, "p_1135->g_427.s1", print_hash_value);
    transparent_crc(p_1135->g_427.s2, "p_1135->g_427.s2", print_hash_value);
    transparent_crc(p_1135->g_427.s3, "p_1135->g_427.s3", print_hash_value);
    transparent_crc(p_1135->g_427.s4, "p_1135->g_427.s4", print_hash_value);
    transparent_crc(p_1135->g_427.s5, "p_1135->g_427.s5", print_hash_value);
    transparent_crc(p_1135->g_427.s6, "p_1135->g_427.s6", print_hash_value);
    transparent_crc(p_1135->g_427.s7, "p_1135->g_427.s7", print_hash_value);
    transparent_crc(p_1135->g_427.s8, "p_1135->g_427.s8", print_hash_value);
    transparent_crc(p_1135->g_427.s9, "p_1135->g_427.s9", print_hash_value);
    transparent_crc(p_1135->g_427.sa, "p_1135->g_427.sa", print_hash_value);
    transparent_crc(p_1135->g_427.sb, "p_1135->g_427.sb", print_hash_value);
    transparent_crc(p_1135->g_427.sc, "p_1135->g_427.sc", print_hash_value);
    transparent_crc(p_1135->g_427.sd, "p_1135->g_427.sd", print_hash_value);
    transparent_crc(p_1135->g_427.se, "p_1135->g_427.se", print_hash_value);
    transparent_crc(p_1135->g_427.sf, "p_1135->g_427.sf", print_hash_value);
    transparent_crc(p_1135->g_428.x, "p_1135->g_428.x", print_hash_value);
    transparent_crc(p_1135->g_428.y, "p_1135->g_428.y", print_hash_value);
    transparent_crc(p_1135->g_430.s0, "p_1135->g_430.s0", print_hash_value);
    transparent_crc(p_1135->g_430.s1, "p_1135->g_430.s1", print_hash_value);
    transparent_crc(p_1135->g_430.s2, "p_1135->g_430.s2", print_hash_value);
    transparent_crc(p_1135->g_430.s3, "p_1135->g_430.s3", print_hash_value);
    transparent_crc(p_1135->g_430.s4, "p_1135->g_430.s4", print_hash_value);
    transparent_crc(p_1135->g_430.s5, "p_1135->g_430.s5", print_hash_value);
    transparent_crc(p_1135->g_430.s6, "p_1135->g_430.s6", print_hash_value);
    transparent_crc(p_1135->g_430.s7, "p_1135->g_430.s7", print_hash_value);
    transparent_crc(p_1135->g_445.s0, "p_1135->g_445.s0", print_hash_value);
    transparent_crc(p_1135->g_445.s1, "p_1135->g_445.s1", print_hash_value);
    transparent_crc(p_1135->g_445.s2, "p_1135->g_445.s2", print_hash_value);
    transparent_crc(p_1135->g_445.s3, "p_1135->g_445.s3", print_hash_value);
    transparent_crc(p_1135->g_445.s4, "p_1135->g_445.s4", print_hash_value);
    transparent_crc(p_1135->g_445.s5, "p_1135->g_445.s5", print_hash_value);
    transparent_crc(p_1135->g_445.s6, "p_1135->g_445.s6", print_hash_value);
    transparent_crc(p_1135->g_445.s7, "p_1135->g_445.s7", print_hash_value);
    transparent_crc(p_1135->g_445.s8, "p_1135->g_445.s8", print_hash_value);
    transparent_crc(p_1135->g_445.s9, "p_1135->g_445.s9", print_hash_value);
    transparent_crc(p_1135->g_445.sa, "p_1135->g_445.sa", print_hash_value);
    transparent_crc(p_1135->g_445.sb, "p_1135->g_445.sb", print_hash_value);
    transparent_crc(p_1135->g_445.sc, "p_1135->g_445.sc", print_hash_value);
    transparent_crc(p_1135->g_445.sd, "p_1135->g_445.sd", print_hash_value);
    transparent_crc(p_1135->g_445.se, "p_1135->g_445.se", print_hash_value);
    transparent_crc(p_1135->g_445.sf, "p_1135->g_445.sf", print_hash_value);
    transparent_crc(p_1135->g_460.s0, "p_1135->g_460.s0", print_hash_value);
    transparent_crc(p_1135->g_460.s1, "p_1135->g_460.s1", print_hash_value);
    transparent_crc(p_1135->g_460.s2, "p_1135->g_460.s2", print_hash_value);
    transparent_crc(p_1135->g_460.s3, "p_1135->g_460.s3", print_hash_value);
    transparent_crc(p_1135->g_460.s4, "p_1135->g_460.s4", print_hash_value);
    transparent_crc(p_1135->g_460.s5, "p_1135->g_460.s5", print_hash_value);
    transparent_crc(p_1135->g_460.s6, "p_1135->g_460.s6", print_hash_value);
    transparent_crc(p_1135->g_460.s7, "p_1135->g_460.s7", print_hash_value);
    transparent_crc(p_1135->g_461.x, "p_1135->g_461.x", print_hash_value);
    transparent_crc(p_1135->g_461.y, "p_1135->g_461.y", print_hash_value);
    transparent_crc(p_1135->g_461.z, "p_1135->g_461.z", print_hash_value);
    transparent_crc(p_1135->g_461.w, "p_1135->g_461.w", print_hash_value);
    transparent_crc(p_1135->g_472.f0, "p_1135->g_472.f0", print_hash_value);
    transparent_crc(p_1135->g_517.s0, "p_1135->g_517.s0", print_hash_value);
    transparent_crc(p_1135->g_517.s1, "p_1135->g_517.s1", print_hash_value);
    transparent_crc(p_1135->g_517.s2, "p_1135->g_517.s2", print_hash_value);
    transparent_crc(p_1135->g_517.s3, "p_1135->g_517.s3", print_hash_value);
    transparent_crc(p_1135->g_517.s4, "p_1135->g_517.s4", print_hash_value);
    transparent_crc(p_1135->g_517.s5, "p_1135->g_517.s5", print_hash_value);
    transparent_crc(p_1135->g_517.s6, "p_1135->g_517.s6", print_hash_value);
    transparent_crc(p_1135->g_517.s7, "p_1135->g_517.s7", print_hash_value);
    transparent_crc(p_1135->g_517.s8, "p_1135->g_517.s8", print_hash_value);
    transparent_crc(p_1135->g_517.s9, "p_1135->g_517.s9", print_hash_value);
    transparent_crc(p_1135->g_517.sa, "p_1135->g_517.sa", print_hash_value);
    transparent_crc(p_1135->g_517.sb, "p_1135->g_517.sb", print_hash_value);
    transparent_crc(p_1135->g_517.sc, "p_1135->g_517.sc", print_hash_value);
    transparent_crc(p_1135->g_517.sd, "p_1135->g_517.sd", print_hash_value);
    transparent_crc(p_1135->g_517.se, "p_1135->g_517.se", print_hash_value);
    transparent_crc(p_1135->g_517.sf, "p_1135->g_517.sf", print_hash_value);
    transparent_crc(p_1135->g_518.s0, "p_1135->g_518.s0", print_hash_value);
    transparent_crc(p_1135->g_518.s1, "p_1135->g_518.s1", print_hash_value);
    transparent_crc(p_1135->g_518.s2, "p_1135->g_518.s2", print_hash_value);
    transparent_crc(p_1135->g_518.s3, "p_1135->g_518.s3", print_hash_value);
    transparent_crc(p_1135->g_518.s4, "p_1135->g_518.s4", print_hash_value);
    transparent_crc(p_1135->g_518.s5, "p_1135->g_518.s5", print_hash_value);
    transparent_crc(p_1135->g_518.s6, "p_1135->g_518.s6", print_hash_value);
    transparent_crc(p_1135->g_518.s7, "p_1135->g_518.s7", print_hash_value);
    transparent_crc(p_1135->g_518.s8, "p_1135->g_518.s8", print_hash_value);
    transparent_crc(p_1135->g_518.s9, "p_1135->g_518.s9", print_hash_value);
    transparent_crc(p_1135->g_518.sa, "p_1135->g_518.sa", print_hash_value);
    transparent_crc(p_1135->g_518.sb, "p_1135->g_518.sb", print_hash_value);
    transparent_crc(p_1135->g_518.sc, "p_1135->g_518.sc", print_hash_value);
    transparent_crc(p_1135->g_518.sd, "p_1135->g_518.sd", print_hash_value);
    transparent_crc(p_1135->g_518.se, "p_1135->g_518.se", print_hash_value);
    transparent_crc(p_1135->g_518.sf, "p_1135->g_518.sf", print_hash_value);
    transparent_crc(p_1135->g_522.x, "p_1135->g_522.x", print_hash_value);
    transparent_crc(p_1135->g_522.y, "p_1135->g_522.y", print_hash_value);
    transparent_crc(p_1135->g_540.x, "p_1135->g_540.x", print_hash_value);
    transparent_crc(p_1135->g_540.y, "p_1135->g_540.y", print_hash_value);
    transparent_crc(p_1135->g_540.z, "p_1135->g_540.z", print_hash_value);
    transparent_crc(p_1135->g_540.w, "p_1135->g_540.w", print_hash_value);
    transparent_crc(p_1135->g_635.x, "p_1135->g_635.x", print_hash_value);
    transparent_crc(p_1135->g_635.y, "p_1135->g_635.y", print_hash_value);
    transparent_crc(p_1135->g_649.x, "p_1135->g_649.x", print_hash_value);
    transparent_crc(p_1135->g_649.y, "p_1135->g_649.y", print_hash_value);
    transparent_crc(p_1135->g_652.s0, "p_1135->g_652.s0", print_hash_value);
    transparent_crc(p_1135->g_652.s1, "p_1135->g_652.s1", print_hash_value);
    transparent_crc(p_1135->g_652.s2, "p_1135->g_652.s2", print_hash_value);
    transparent_crc(p_1135->g_652.s3, "p_1135->g_652.s3", print_hash_value);
    transparent_crc(p_1135->g_652.s4, "p_1135->g_652.s4", print_hash_value);
    transparent_crc(p_1135->g_652.s5, "p_1135->g_652.s5", print_hash_value);
    transparent_crc(p_1135->g_652.s6, "p_1135->g_652.s6", print_hash_value);
    transparent_crc(p_1135->g_652.s7, "p_1135->g_652.s7", print_hash_value);
    transparent_crc(p_1135->g_655.s0, "p_1135->g_655.s0", print_hash_value);
    transparent_crc(p_1135->g_655.s1, "p_1135->g_655.s1", print_hash_value);
    transparent_crc(p_1135->g_655.s2, "p_1135->g_655.s2", print_hash_value);
    transparent_crc(p_1135->g_655.s3, "p_1135->g_655.s3", print_hash_value);
    transparent_crc(p_1135->g_655.s4, "p_1135->g_655.s4", print_hash_value);
    transparent_crc(p_1135->g_655.s5, "p_1135->g_655.s5", print_hash_value);
    transparent_crc(p_1135->g_655.s6, "p_1135->g_655.s6", print_hash_value);
    transparent_crc(p_1135->g_655.s7, "p_1135->g_655.s7", print_hash_value);
    transparent_crc(p_1135->g_656.s0, "p_1135->g_656.s0", print_hash_value);
    transparent_crc(p_1135->g_656.s1, "p_1135->g_656.s1", print_hash_value);
    transparent_crc(p_1135->g_656.s2, "p_1135->g_656.s2", print_hash_value);
    transparent_crc(p_1135->g_656.s3, "p_1135->g_656.s3", print_hash_value);
    transparent_crc(p_1135->g_656.s4, "p_1135->g_656.s4", print_hash_value);
    transparent_crc(p_1135->g_656.s5, "p_1135->g_656.s5", print_hash_value);
    transparent_crc(p_1135->g_656.s6, "p_1135->g_656.s6", print_hash_value);
    transparent_crc(p_1135->g_656.s7, "p_1135->g_656.s7", print_hash_value);
    transparent_crc(p_1135->g_675.s0, "p_1135->g_675.s0", print_hash_value);
    transparent_crc(p_1135->g_675.s1, "p_1135->g_675.s1", print_hash_value);
    transparent_crc(p_1135->g_675.s2, "p_1135->g_675.s2", print_hash_value);
    transparent_crc(p_1135->g_675.s3, "p_1135->g_675.s3", print_hash_value);
    transparent_crc(p_1135->g_675.s4, "p_1135->g_675.s4", print_hash_value);
    transparent_crc(p_1135->g_675.s5, "p_1135->g_675.s5", print_hash_value);
    transparent_crc(p_1135->g_675.s6, "p_1135->g_675.s6", print_hash_value);
    transparent_crc(p_1135->g_675.s7, "p_1135->g_675.s7", print_hash_value);
    transparent_crc(p_1135->g_676.x, "p_1135->g_676.x", print_hash_value);
    transparent_crc(p_1135->g_676.y, "p_1135->g_676.y", print_hash_value);
    transparent_crc(p_1135->g_677.x, "p_1135->g_677.x", print_hash_value);
    transparent_crc(p_1135->g_677.y, "p_1135->g_677.y", print_hash_value);
    transparent_crc(p_1135->g_683.s0, "p_1135->g_683.s0", print_hash_value);
    transparent_crc(p_1135->g_683.s1, "p_1135->g_683.s1", print_hash_value);
    transparent_crc(p_1135->g_683.s2, "p_1135->g_683.s2", print_hash_value);
    transparent_crc(p_1135->g_683.s3, "p_1135->g_683.s3", print_hash_value);
    transparent_crc(p_1135->g_683.s4, "p_1135->g_683.s4", print_hash_value);
    transparent_crc(p_1135->g_683.s5, "p_1135->g_683.s5", print_hash_value);
    transparent_crc(p_1135->g_683.s6, "p_1135->g_683.s6", print_hash_value);
    transparent_crc(p_1135->g_683.s7, "p_1135->g_683.s7", print_hash_value);
    transparent_crc(p_1135->g_683.s8, "p_1135->g_683.s8", print_hash_value);
    transparent_crc(p_1135->g_683.s9, "p_1135->g_683.s9", print_hash_value);
    transparent_crc(p_1135->g_683.sa, "p_1135->g_683.sa", print_hash_value);
    transparent_crc(p_1135->g_683.sb, "p_1135->g_683.sb", print_hash_value);
    transparent_crc(p_1135->g_683.sc, "p_1135->g_683.sc", print_hash_value);
    transparent_crc(p_1135->g_683.sd, "p_1135->g_683.sd", print_hash_value);
    transparent_crc(p_1135->g_683.se, "p_1135->g_683.se", print_hash_value);
    transparent_crc(p_1135->g_683.sf, "p_1135->g_683.sf", print_hash_value);
    transparent_crc(p_1135->g_685.s0, "p_1135->g_685.s0", print_hash_value);
    transparent_crc(p_1135->g_685.s1, "p_1135->g_685.s1", print_hash_value);
    transparent_crc(p_1135->g_685.s2, "p_1135->g_685.s2", print_hash_value);
    transparent_crc(p_1135->g_685.s3, "p_1135->g_685.s3", print_hash_value);
    transparent_crc(p_1135->g_685.s4, "p_1135->g_685.s4", print_hash_value);
    transparent_crc(p_1135->g_685.s5, "p_1135->g_685.s5", print_hash_value);
    transparent_crc(p_1135->g_685.s6, "p_1135->g_685.s6", print_hash_value);
    transparent_crc(p_1135->g_685.s7, "p_1135->g_685.s7", print_hash_value);
    transparent_crc(p_1135->g_685.s8, "p_1135->g_685.s8", print_hash_value);
    transparent_crc(p_1135->g_685.s9, "p_1135->g_685.s9", print_hash_value);
    transparent_crc(p_1135->g_685.sa, "p_1135->g_685.sa", print_hash_value);
    transparent_crc(p_1135->g_685.sb, "p_1135->g_685.sb", print_hash_value);
    transparent_crc(p_1135->g_685.sc, "p_1135->g_685.sc", print_hash_value);
    transparent_crc(p_1135->g_685.sd, "p_1135->g_685.sd", print_hash_value);
    transparent_crc(p_1135->g_685.se, "p_1135->g_685.se", print_hash_value);
    transparent_crc(p_1135->g_685.sf, "p_1135->g_685.sf", print_hash_value);
    transparent_crc(p_1135->g_688, "p_1135->g_688", print_hash_value);
    transparent_crc(p_1135->g_712.s0, "p_1135->g_712.s0", print_hash_value);
    transparent_crc(p_1135->g_712.s1, "p_1135->g_712.s1", print_hash_value);
    transparent_crc(p_1135->g_712.s2, "p_1135->g_712.s2", print_hash_value);
    transparent_crc(p_1135->g_712.s3, "p_1135->g_712.s3", print_hash_value);
    transparent_crc(p_1135->g_712.s4, "p_1135->g_712.s4", print_hash_value);
    transparent_crc(p_1135->g_712.s5, "p_1135->g_712.s5", print_hash_value);
    transparent_crc(p_1135->g_712.s6, "p_1135->g_712.s6", print_hash_value);
    transparent_crc(p_1135->g_712.s7, "p_1135->g_712.s7", print_hash_value);
    transparent_crc(p_1135->g_712.s8, "p_1135->g_712.s8", print_hash_value);
    transparent_crc(p_1135->g_712.s9, "p_1135->g_712.s9", print_hash_value);
    transparent_crc(p_1135->g_712.sa, "p_1135->g_712.sa", print_hash_value);
    transparent_crc(p_1135->g_712.sb, "p_1135->g_712.sb", print_hash_value);
    transparent_crc(p_1135->g_712.sc, "p_1135->g_712.sc", print_hash_value);
    transparent_crc(p_1135->g_712.sd, "p_1135->g_712.sd", print_hash_value);
    transparent_crc(p_1135->g_712.se, "p_1135->g_712.se", print_hash_value);
    transparent_crc(p_1135->g_712.sf, "p_1135->g_712.sf", print_hash_value);
    transparent_crc(p_1135->g_752.f0, "p_1135->g_752.f0", print_hash_value);
    transparent_crc(p_1135->g_765.x, "p_1135->g_765.x", print_hash_value);
    transparent_crc(p_1135->g_765.y, "p_1135->g_765.y", print_hash_value);
    transparent_crc(p_1135->g_790, "p_1135->g_790", print_hash_value);
    transparent_crc(p_1135->g_791, "p_1135->g_791", print_hash_value);
    transparent_crc(p_1135->g_793, "p_1135->g_793", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1135->g_810[i], "p_1135->g_810[i]", print_hash_value);

    }
    transparent_crc(p_1135->g_907.x, "p_1135->g_907.x", print_hash_value);
    transparent_crc(p_1135->g_907.y, "p_1135->g_907.y", print_hash_value);
    transparent_crc(p_1135->g_909.x, "p_1135->g_909.x", print_hash_value);
    transparent_crc(p_1135->g_909.y, "p_1135->g_909.y", print_hash_value);
    transparent_crc(p_1135->g_924, "p_1135->g_924", print_hash_value);
    transparent_crc(p_1135->g_968, "p_1135->g_968", print_hash_value);
    transparent_crc(p_1135->g_972.f0, "p_1135->g_972.f0", print_hash_value);
    transparent_crc(p_1135->g_1083.x, "p_1135->g_1083.x", print_hash_value);
    transparent_crc(p_1135->g_1083.y, "p_1135->g_1083.y", print_hash_value);
    transparent_crc(p_1135->g_1083.z, "p_1135->g_1083.z", print_hash_value);
    transparent_crc(p_1135->g_1083.w, "p_1135->g_1083.w", print_hash_value);
    transparent_crc(p_1135->g_1087.s0, "p_1135->g_1087.s0", print_hash_value);
    transparent_crc(p_1135->g_1087.s1, "p_1135->g_1087.s1", print_hash_value);
    transparent_crc(p_1135->g_1087.s2, "p_1135->g_1087.s2", print_hash_value);
    transparent_crc(p_1135->g_1087.s3, "p_1135->g_1087.s3", print_hash_value);
    transparent_crc(p_1135->g_1087.s4, "p_1135->g_1087.s4", print_hash_value);
    transparent_crc(p_1135->g_1087.s5, "p_1135->g_1087.s5", print_hash_value);
    transparent_crc(p_1135->g_1087.s6, "p_1135->g_1087.s6", print_hash_value);
    transparent_crc(p_1135->g_1087.s7, "p_1135->g_1087.s7", print_hash_value);
    transparent_crc(p_1135->g_1099, "p_1135->g_1099", print_hash_value);
    transparent_crc(p_1135->g_1113.x, "p_1135->g_1113.x", print_hash_value);
    transparent_crc(p_1135->g_1113.y, "p_1135->g_1113.y", print_hash_value);
    transparent_crc(p_1135->g_1116.x, "p_1135->g_1116.x", print_hash_value);
    transparent_crc(p_1135->g_1116.y, "p_1135->g_1116.y", print_hash_value);
    transparent_crc(p_1135->g_1116.z, "p_1135->g_1116.z", print_hash_value);
    transparent_crc(p_1135->g_1116.w, "p_1135->g_1116.w", print_hash_value);
    transparent_crc(p_1135->g_1117.s0, "p_1135->g_1117.s0", print_hash_value);
    transparent_crc(p_1135->g_1117.s1, "p_1135->g_1117.s1", print_hash_value);
    transparent_crc(p_1135->g_1117.s2, "p_1135->g_1117.s2", print_hash_value);
    transparent_crc(p_1135->g_1117.s3, "p_1135->g_1117.s3", print_hash_value);
    transparent_crc(p_1135->g_1117.s4, "p_1135->g_1117.s4", print_hash_value);
    transparent_crc(p_1135->g_1117.s5, "p_1135->g_1117.s5", print_hash_value);
    transparent_crc(p_1135->g_1117.s6, "p_1135->g_1117.s6", print_hash_value);
    transparent_crc(p_1135->g_1117.s7, "p_1135->g_1117.s7", print_hash_value);
    transparent_crc(p_1135->g_1117.s8, "p_1135->g_1117.s8", print_hash_value);
    transparent_crc(p_1135->g_1117.s9, "p_1135->g_1117.s9", print_hash_value);
    transparent_crc(p_1135->g_1117.sa, "p_1135->g_1117.sa", print_hash_value);
    transparent_crc(p_1135->g_1117.sb, "p_1135->g_1117.sb", print_hash_value);
    transparent_crc(p_1135->g_1117.sc, "p_1135->g_1117.sc", print_hash_value);
    transparent_crc(p_1135->g_1117.sd, "p_1135->g_1117.sd", print_hash_value);
    transparent_crc(p_1135->g_1117.se, "p_1135->g_1117.se", print_hash_value);
    transparent_crc(p_1135->g_1117.sf, "p_1135->g_1117.sf", print_hash_value);
    transparent_crc(p_1135->g_1118.s0, "p_1135->g_1118.s0", print_hash_value);
    transparent_crc(p_1135->g_1118.s1, "p_1135->g_1118.s1", print_hash_value);
    transparent_crc(p_1135->g_1118.s2, "p_1135->g_1118.s2", print_hash_value);
    transparent_crc(p_1135->g_1118.s3, "p_1135->g_1118.s3", print_hash_value);
    transparent_crc(p_1135->g_1118.s4, "p_1135->g_1118.s4", print_hash_value);
    transparent_crc(p_1135->g_1118.s5, "p_1135->g_1118.s5", print_hash_value);
    transparent_crc(p_1135->g_1118.s6, "p_1135->g_1118.s6", print_hash_value);
    transparent_crc(p_1135->g_1118.s7, "p_1135->g_1118.s7", print_hash_value);
    transparent_crc(p_1135->v_collective, "p_1135->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 18; i++)
            transparent_crc(p_1135->g_special_values[i + 18 * get_linear_group_id()], "p_1135->g_special_values[i + 18 * get_linear_group_id()]", print_hash_value);
    transparent_crc(p_1135->l_comm_values[get_linear_local_id()], "p_1135->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1135->g_comm_values[get_linear_group_id() * 162 + get_linear_local_id()], "p_1135->g_comm_values[get_linear_group_id() * 162 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
