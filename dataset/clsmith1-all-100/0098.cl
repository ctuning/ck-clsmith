// --atomics 78 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 48,78,2 -l 6,13,2
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

__constant uint32_t permutations[10][156] = {
{21,27,145,64,82,81,45,46,43,155,97,5,154,83,129,122,32,25,144,153,115,114,130,49,91,68,133,79,104,128,34,55,54,80,103,9,26,11,138,84,19,92,137,76,108,89,73,7,120,93,75,101,15,6,110,142,143,10,102,95,51,47,61,119,87,39,94,121,3,18,41,86,139,16,78,116,56,88,28,96,30,150,127,149,63,132,44,37,36,74,48,14,134,152,77,12,107,8,151,70,13,31,33,123,24,20,2,106,22,136,71,148,40,59,113,98,125,58,118,23,131,146,60,29,126,4,109,99,1,50,62,66,105,140,135,85,100,147,124,53,141,65,38,52,111,35,0,112,90,67,117,72,42,57,17,69}, // permutation 0
{149,99,46,76,5,134,95,33,13,129,21,79,150,136,58,61,71,86,35,37,116,119,11,16,151,29,23,78,137,144,62,145,25,110,147,82,26,54,63,77,98,47,120,115,12,93,14,92,122,143,113,127,39,94,133,131,57,135,141,17,15,114,128,132,121,9,0,148,69,24,109,153,103,125,50,27,87,44,67,18,68,34,65,100,53,36,97,84,20,30,123,49,117,59,88,31,75,80,101,89,60,10,42,142,96,2,112,28,108,41,7,8,140,72,32,43,38,4,45,1,154,52,70,55,64,51,91,104,102,107,40,155,138,73,83,139,74,6,146,85,19,90,111,106,56,81,130,3,48,22,126,118,152,124,66,105}, // permutation 1
{104,8,64,21,56,53,133,70,68,120,126,138,101,14,1,145,39,93,36,81,122,30,84,117,15,98,69,129,118,71,38,79,116,16,7,33,91,130,47,134,82,17,148,140,144,83,95,113,150,90,149,26,78,119,6,121,108,11,155,89,125,37,132,48,20,154,51,127,45,147,32,40,152,124,142,13,9,5,31,77,42,131,0,146,87,59,137,107,128,24,103,135,29,92,74,136,109,55,85,41,44,97,123,52,54,60,141,80,2,151,112,105,94,23,49,72,28,139,96,43,57,27,62,73,35,143,75,3,4,19,111,61,63,58,153,115,114,10,12,67,99,22,88,106,46,65,18,100,25,66,50,86,76,102,110,34}, // permutation 2
{31,116,69,101,107,53,18,127,155,118,55,123,133,142,77,9,134,12,73,111,83,80,139,103,92,148,146,78,59,132,96,130,106,32,60,97,40,129,5,6,154,150,152,28,87,44,56,46,33,35,149,24,95,100,37,115,119,108,64,61,105,19,51,29,68,48,125,45,20,121,90,120,13,50,14,126,25,141,145,66,74,117,72,67,124,109,52,41,54,98,99,89,30,38,140,102,71,93,0,17,81,131,22,75,39,10,63,153,84,26,94,23,34,4,82,21,113,85,136,135,42,57,143,112,79,70,8,65,62,86,3,128,16,88,36,15,7,138,122,1,11,76,58,43,2,144,110,151,147,47,27,114,49,137,104,91}, // permutation 3
{43,106,108,129,137,76,123,83,114,149,4,102,5,134,65,144,60,109,143,95,99,155,152,16,153,59,104,11,140,111,119,2,50,90,24,69,118,18,96,33,85,13,142,21,25,120,125,41,74,131,116,45,92,57,17,79,122,10,66,36,26,19,64,80,15,34,27,136,71,110,48,14,151,127,75,107,73,135,150,133,82,86,20,58,6,128,29,22,3,63,141,84,130,51,38,30,42,53,81,94,124,7,105,35,23,77,146,46,113,103,31,9,40,98,8,12,70,115,62,61,121,100,139,44,49,87,148,145,28,89,72,88,67,132,117,147,37,101,39,93,78,154,52,91,126,68,55,112,138,97,0,54,1,47,56,32}, // permutation 4
{129,12,103,60,140,88,34,33,102,144,132,78,58,77,61,52,25,95,4,104,18,40,15,10,117,135,82,47,45,2,74,134,20,81,90,111,9,6,26,62,109,115,51,17,38,142,21,138,35,107,67,114,86,79,8,141,94,49,68,75,41,44,19,39,151,71,126,55,121,87,31,105,16,93,56,57,22,154,128,131,42,50,83,112,54,11,155,124,145,106,136,113,84,32,123,5,7,14,48,66,137,63,101,27,149,147,53,73,24,125,70,119,65,143,100,118,122,3,150,139,30,37,146,148,108,89,97,152,92,85,23,76,46,59,110,91,64,36,43,116,13,130,72,69,80,96,29,99,127,120,133,0,98,153,28,1}, // permutation 5
{98,69,78,97,56,26,137,150,104,83,140,11,87,149,115,45,35,49,3,93,51,118,126,70,57,19,130,66,32,108,94,101,124,37,22,67,127,38,47,15,88,68,48,111,64,145,74,41,27,60,99,106,36,18,30,112,155,121,148,113,116,14,129,152,146,16,42,53,139,107,89,136,85,46,133,135,138,29,82,39,123,75,20,65,34,84,119,120,54,17,103,151,61,0,72,50,114,4,147,13,134,77,128,143,86,81,52,73,10,8,95,21,109,5,24,90,12,105,2,1,6,25,131,153,9,44,23,33,144,100,80,58,28,62,63,141,43,102,31,122,142,154,110,7,117,125,55,79,132,59,71,96,92,91,76,40}, // permutation 6
{36,142,15,0,133,43,3,109,79,90,28,145,10,17,98,83,115,104,29,76,40,118,26,8,74,131,101,120,21,129,117,143,144,89,53,25,20,5,123,150,65,140,91,37,6,72,1,81,141,7,149,134,77,151,34,24,103,128,97,114,136,155,47,105,132,135,33,86,55,108,147,13,51,112,127,106,75,16,67,69,146,71,113,107,95,59,84,14,12,99,121,56,154,19,70,130,96,139,46,80,54,110,2,9,126,58,18,68,44,111,122,94,60,48,78,22,32,85,92,87,4,88,73,42,52,57,27,66,148,62,137,125,41,138,31,100,38,35,124,82,152,64,23,49,30,50,119,102,116,63,153,61,45,93,11,39}, // permutation 7
{75,153,67,88,152,117,116,38,100,83,92,132,82,101,54,20,85,16,79,125,102,37,74,77,87,41,59,40,12,91,76,98,129,49,65,97,126,17,120,107,2,14,108,48,155,66,136,43,131,31,70,45,137,103,1,27,121,35,10,114,89,134,68,18,81,52,94,23,105,113,130,24,42,19,22,60,123,148,71,36,135,124,33,150,25,28,147,110,34,30,119,56,146,96,53,95,73,9,133,112,3,50,118,69,143,58,139,51,144,154,47,145,84,57,115,151,29,55,122,142,72,86,127,111,93,80,141,21,4,13,26,6,0,90,62,11,46,138,78,149,104,64,39,140,99,32,128,5,106,7,63,8,109,61,44,15}, // permutation 8
{84,114,12,95,124,60,117,65,62,43,149,17,2,107,125,116,7,55,79,122,69,104,28,44,82,64,136,144,76,131,49,134,111,33,97,139,42,81,45,83,96,152,54,38,6,147,4,113,21,119,98,91,121,80,18,94,3,41,57,68,51,99,72,103,143,35,10,29,126,39,153,20,100,70,8,135,47,58,71,75,141,151,118,85,87,130,40,32,0,23,46,74,101,109,16,155,27,110,22,56,112,102,53,106,15,66,120,19,132,108,50,123,48,34,37,25,73,63,86,24,137,133,5,1,92,11,140,142,61,78,127,128,26,93,36,88,77,14,90,31,105,154,145,146,13,89,67,150,30,59,52,138,9,115,148,129} // permutation 9
};

// Seed: 98

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
};

struct S1 {
    int32_t g_4;
    volatile uint64_t g_12;
    uint32_t g_19;
    int32_t *g_24;
    int32_t **g_23;
    int16_t g_50[3][4][3];
    union U0 g_51;
    volatile VECTOR(int32_t, 8) g_54;
    uint8_t g_73;
    uint8_t *g_72;
    VECTOR(int32_t, 8) g_91;
    uint32_t g_93;
    int32_t ***g_109;
    VECTOR(int8_t, 2) g_116;
    VECTOR(int8_t, 8) g_117;
    int32_t g_120;
    union U0 *g_123;
    VECTOR(int32_t, 2) g_140;
    int8_t g_154;
    uint64_t g_163;
    VECTOR(int64_t, 4) g_174;
    uint16_t g_191;
    uint16_t *g_190;
    volatile VECTOR(int64_t, 8) g_222;
    int32_t g_224;
    VECTOR(int16_t, 8) g_225;
    int8_t g_234;
    uint32_t g_244;
    volatile int64_t * volatile g_253;
    uint8_t g_281;
    volatile VECTOR(uint32_t, 16) g_286;
    volatile VECTOR(int32_t, 4) g_289;
    volatile VECTOR(uint64_t, 4) g_310;
    uint64_t g_317;
    VECTOR(int8_t, 2) g_361;
    VECTOR(int64_t, 4) g_364;
    uint64_t g_379[7];
    VECTOR(int32_t, 4) g_389;
    int32_t g_394;
    int64_t g_413;
    volatile VECTOR(uint8_t, 2) g_418;
    VECTOR(uint8_t, 8) g_423;
    volatile VECTOR(int32_t, 16) g_439;
    VECTOR(uint32_t, 16) g_442;
    uint8_t *g_445;
    VECTOR(int32_t, 16) g_458;
    VECTOR(int16_t, 4) g_459;
    VECTOR(int16_t, 2) g_462;
    volatile int32_t g_474;
    volatile VECTOR(int32_t, 4) g_531;
    union U0 **g_552;
    VECTOR(uint16_t, 2) g_568;
    VECTOR(int64_t, 2) g_571;
    VECTOR(int64_t, 2) g_572;
    VECTOR(int64_t, 2) g_578;
    VECTOR(int64_t, 2) g_579;
    VECTOR(int64_t, 4) g_581;
    VECTOR(uint16_t, 16) g_587;
    int8_t *g_591[8];
    int16_t g_597;
    uint32_t g_600;
    int64_t g_610;
    volatile VECTOR(uint16_t, 4) g_642;
    int32_t g_645;
    VECTOR(int32_t, 16) g_653;
    int32_t g_667;
    volatile uint32_t g_678;
    volatile uint32_t *g_677[9][8][3];
    volatile uint32_t ** volatile g_676[8];
    int8_t g_685;
    VECTOR(uint8_t, 8) g_686;
    VECTOR(uint8_t, 4) g_730;
    VECTOR(uint64_t, 8) g_734;
    VECTOR(uint64_t, 8) g_735;
    volatile VECTOR(int16_t, 8) g_764;
    VECTOR(int16_t, 4) g_766;
    VECTOR(int64_t, 4) g_769;
    volatile VECTOR(uint32_t, 2) g_804;
    VECTOR(int32_t, 16) g_808;
    volatile VECTOR(int32_t, 8) g_809;
    VECTOR(int32_t, 4) g_810;
    VECTOR(int32_t, 16) g_812;
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
int32_t  func_1(struct S1 * p_813);
int32_t  func_20(int16_t  p_21, int32_t ** p_22, struct S1 * p_813);
int32_t * func_31(int32_t * p_32, uint8_t * p_33, struct S1 * p_813);
uint8_t * func_34(int32_t ** p_35, uint8_t * p_36, uint32_t  p_37, struct S1 * p_813);
int32_t ** func_38(union U0  p_39, uint8_t * p_40, int32_t ** p_41, struct S1 * p_813);
union U0  func_42(int32_t  p_43, int32_t  p_44, int32_t  p_45, struct S1 * p_813);
int32_t * func_52(int16_t  p_53, struct S1 * p_813);
int32_t  func_74(int32_t  p_75, int16_t * p_76, uint32_t  p_77, int32_t *** p_78, uint8_t * p_79, struct S1 * p_813);
int16_t * func_94(int16_t * p_95, uint64_t  p_96, struct S1 * p_813);
union U0 * func_97(int32_t  p_98, int64_t  p_99, struct S1 * p_813);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_813->g_12 p_813->g_4 p_813->g_23 p_813->g_24 p_813->g_51 p_813->g_19 p_813->g_54 p_813->g_72 p_813->g_91 p_813->g_93 p_813->g_120 p_813->g_117 p_813->g_116 p_813->g_140 p_813->g_comm_values p_813->g_51.f0 p_813->g_73 p_813->g_154 p_813->g_163 p_813->g_174 p_813->g_50 p_813->g_190 p_813->g_191 p_813->g_222 p_813->g_225 p_813->g_234 p_813->g_244 p_813->g_224 p_813->g_310 p_813->g_317 p_813->g_281 p_813->g_361 p_813->g_364 p_813->l_comm_values p_813->g_379 p_813->g_389 p_813->g_394 p_813->g_289 p_813->g_418 p_813->g_423 p_813->g_439 p_813->g_442 p_813->g_445 p_813->g_458 p_813->g_459 p_813->g_462 p_813->g_474 p_813->g_286 p_813->g_123 p_813->g_676 p_813->g_685 p_813->g_686 p_813->g_642 p_813->g_581 p_813->g_730 p_813->g_764 p_813->g_766 p_813->g_769 p_813->g_600 p_813->g_587 p_813->g_804 p_813->g_808 p_813->g_809 p_813->g_810 p_813->g_812
 * writes: p_813->g_12 p_813->g_19 p_813->g_50 p_813->g_4 p_813->g_23 p_813->g_93 p_813->g_120 p_813->g_123 p_813->g_73 p_813->g_154 p_813->g_163 p_813->g_190 p_813->g_191 p_813->g_51.f0 p_813->g_224 p_813->g_234 p_813->g_24 p_813->g_281 p_813->g_379 p_813->g_413 p_813->g_244 p_813->g_439 p_813->g_140 p_813->g_394 p_813->g_769 p_813->g_600 p_813->g_423
 */
int32_t  func_1(struct S1 * p_813)
{ /* block id: 4 */
    int32_t *l_3 = &p_813->g_4;
    int32_t **l_2 = &l_3;
    int32_t *l_5 = &p_813->g_4;
    int32_t *l_6 = &p_813->g_4;
    int32_t *l_7 = &p_813->g_4;
    int32_t *l_8 = &p_813->g_4;
    int32_t *l_9 = &p_813->g_4;
    int32_t *l_10 = &p_813->g_4;
    int32_t *l_11[7] = {&p_813->g_4,&p_813->g_4,&p_813->g_4,&p_813->g_4,&p_813->g_4,&p_813->g_4,&p_813->g_4};
    VECTOR(uint8_t, 16) l_17 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x08L), 0x08L), 0x08L, 255UL, 0x08L, (VECTOR(uint8_t, 2))(255UL, 0x08L), (VECTOR(uint8_t, 2))(255UL, 0x08L), 255UL, 0x08L, 255UL, 0x08L);
    int16_t *l_721 = &p_813->g_50[0][3][0];
    VECTOR(uint32_t, 2) l_728 = (VECTOR(uint32_t, 2))(4294967293UL, 6UL);
    VECTOR(uint8_t, 8) l_729 = (VECTOR(uint8_t, 8))(9UL, (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 0xD3L), 0xD3L), 0xD3L, 9UL, 0xD3L);
    uint16_t *l_740 = (void*)0;
    VECTOR(uint32_t, 4) l_800 = (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 0x8CBA30A6L), 0x8CBA30A6L);
    VECTOR(int32_t, 16) l_805 = (VECTOR(int32_t, 16))(0x5FBC8921L, (VECTOR(int32_t, 4))(0x5FBC8921L, (VECTOR(int32_t, 2))(0x5FBC8921L, 2L), 2L), 2L, 0x5FBC8921L, 2L, (VECTOR(int32_t, 2))(0x5FBC8921L, 2L), (VECTOR(int32_t, 2))(0x5FBC8921L, 2L), 0x5FBC8921L, 2L, 0x5FBC8921L, 2L);
    VECTOR(int32_t, 8) l_811 = (VECTOR(int32_t, 8))(0x7B13EBBAL, (VECTOR(int32_t, 4))(0x7B13EBBAL, (VECTOR(int32_t, 2))(0x7B13EBBAL, (-6L)), (-6L)), (-6L), 0x7B13EBBAL, (-6L));
    int i;
    (*l_2) = (void*)0;
    p_813->g_12--;
    if (p_813->g_12)
    { /* block id: 7 */
        uint8_t *l_18[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t *l_716[7][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int16_t l_755 = 0L;
        uint16_t l_799 = 9UL;
        int i, j;
        if ((safe_lshift_func_uint8_t_u_s((p_813->g_19 = ((VECTOR(uint8_t, 8))(l_17.sb15e314a)).s5), 6)))
        { /* block id: 9 */
            (*l_5) = func_20(p_813->g_4, p_813->g_23, p_813);
        }
        else
        { /* block id: 318 */
            uint16_t l_717 = 0x63B0L;
            int32_t l_741 = 0x0876418CL;
            VECTOR(uint32_t, 16) l_751 = (VECTOR(uint32_t, 16))(0x6A0AB9C8L, (VECTOR(uint32_t, 4))(0x6A0AB9C8L, (VECTOR(uint32_t, 2))(0x6A0AB9C8L, 4294967289UL), 4294967289UL), 4294967289UL, 0x6A0AB9C8L, 4294967289UL, (VECTOR(uint32_t, 2))(0x6A0AB9C8L, 4294967289UL), (VECTOR(uint32_t, 2))(0x6A0AB9C8L, 4294967289UL), 0x6A0AB9C8L, 4294967289UL, 0x6A0AB9C8L, 4294967289UL);
            uint32_t *l_754 = (void*)0;
            int i;
            if (((*l_5) &= 0x2F640F97L))
            { /* block id: 320 */
                uint8_t **l_719[6][7] = {{&l_18[3],&p_813->g_72,&l_18[0],&l_18[2],&l_18[0],&l_18[2],&l_18[0]},{&l_18[3],&p_813->g_72,&l_18[0],&l_18[2],&l_18[0],&l_18[2],&l_18[0]},{&l_18[3],&p_813->g_72,&l_18[0],&l_18[2],&l_18[0],&l_18[2],&l_18[0]},{&l_18[3],&p_813->g_72,&l_18[0],&l_18[2],&l_18[0],&l_18[2],&l_18[0]},{&l_18[3],&p_813->g_72,&l_18[0],&l_18[2],&l_18[0],&l_18[2],&l_18[0]},{&l_18[3],&p_813->g_72,&l_18[0],&l_18[2],&l_18[0],&l_18[2],&l_18[0]}};
                uint8_t ***l_718 = &l_719[3][1];
                uint8_t **l_720[10][9][2] = {{{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445}},{{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445}},{{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445}},{{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445}},{{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445}},{{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445}},{{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445}},{{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445}},{{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445}},{{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445},{(void*)0,&p_813->g_445}}};
                int32_t l_731 = 4L;
                VECTOR(uint64_t, 4) l_736 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xBF0F2462A526F249L), 0xBF0F2462A526F249L);
                int64_t *l_737 = (void*)0;
                int64_t *l_738[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t l_739[9] = {0x5F40C630L,0x5F40C630L,0x5F40C630L,0x5F40C630L,0x5F40C630L,0x5F40C630L,0x5F40C630L,0x5F40C630L,0x5F40C630L};
                int i, j, k;
                for (p_813->g_73 = 12; (p_813->g_73 < 3); p_813->g_73--)
                { /* block id: 323 */
                    for (p_813->g_394 = 19; (p_813->g_394 <= 27); ++p_813->g_394)
                    { /* block id: 326 */
                        (*l_2) = (*l_2);
                    }
                    (*p_813->g_23) = l_716[4][0];
                    if ((*l_9))
                        break;
                }
                l_741 |= (((((l_717 = p_813->g_581.z) , l_740) == (void*)0) , p_813->g_730.z) , (*l_6));
                if ((safe_sub_func_int32_t_s_s((((!(safe_unary_minus_func_int64_t_s((0UL >= (*p_813->g_190))))) & l_736.w) | (safe_sub_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u(FAKE_DIVERGE(p_813->global_1_offset, get_global_id(1), 10), 7)), ((*l_10) = l_717)))), (safe_add_func_int8_t_s_s(((p_813->g_116.y ^ (~((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(l_751.se420c48ffbbb32c8)).s922b)).w)) & (*p_813->g_72)), ((l_739[8] <= ((safe_add_func_int16_t_s_s((l_754 == (void*)0), l_755)) >= 0x5EE2ED1ED4F08E4BL)) ^ 0x0FL))))))
                { /* block id: 337 */
                    (*p_813->g_23) = l_716[4][0];
                }
                else
                { /* block id: 339 */
                    (*l_2) = (void*)0;
                    (*l_5) = 5L;
                }
            }
            else
            { /* block id: 343 */
                int32_t *l_756 = &p_813->g_224;
                (*l_2) = &l_741;
                (*l_2) = l_756;
            }
        }
        for (p_813->g_191 = 0; (p_813->g_191 <= 23); ++p_813->g_191)
        { /* block id: 350 */
            int64_t *l_761 = (void*)0;
            int64_t **l_760 = &l_761;
            int64_t ***l_759 = &l_760;
            int32_t l_762[4];
            int32_t *l_763 = &p_813->g_120;
            int32_t l_765 = 0x14F0333DL;
            union U0 *l_776 = &p_813->g_51;
            uint32_t *l_787 = &p_813->g_600;
            int i;
            for (i = 0; i < 4; i++)
                l_762[i] = 0x76E57907L;
            (*l_759) = (void*)0;
            (*l_2) = l_763;
            (*l_8) = (((*l_763) , (((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(0x2578L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(p_813->g_764.s27255252)).s75)))).yyyx)).hi)), 1L, 0x3F08L)), p_813->g_685, ((*l_721) = l_765), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(p_813->g_766.yyyxxyxw)).s47)))), ((((safe_div_func_uint16_t_u_u((1UL & (p_813->g_769.z = ((VECTOR(int64_t, 8))(p_813->g_769.wxwzxwwy)).s1)), (safe_mod_func_uint32_t_u_u((safe_sub_func_uint8_t_u_u((safe_mul_func_uint32_t_u_u(((*p_813->g_72) >= ((void*)0 != l_776)), (((*l_3) = (safe_sub_func_int32_t_s_s(((((((safe_mul_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u(((((*p_813->g_72) , ((safe_lshift_func_uint8_t_u_s(((safe_mod_func_uint32_t_u_u(((*l_787)--), (safe_div_func_int64_t_s_s(((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 16))(0x3B8DB698DEAF8487L, ((((safe_div_func_uint8_t_u_u((p_813->g_423.s7++), (safe_unary_minus_func_uint32_t_u((safe_sub_func_uint8_t_u_u((*p_813->g_72), (*l_763))))))) & (*l_763)) & (*l_763)) ^ (*l_763)), ((VECTOR(int64_t, 4))(1L)), 0L, 0x2D483DAC813E3C55L, ((VECTOR(int64_t, 4))(1L)), (-1L), (-8L), 0x0A98A9E11B5BAD05L, 0x31F9B93CBD8657E1L)).s20c2, ((VECTOR(int64_t, 4))(0x3D73EBC026C5014EL))))).w, 4UL)))) || (*l_763)), 5)) <= 0x0EC2829E77AFF432L)) || (*l_763)) , (*l_763)), GROUP_DIVERGE(2, 1))), (**l_2))) & (*p_813->g_72)) != 0x6D0CL) && (-1L)) || 0xCBBCL) && 4294967293UL), 0L))) <= l_799))), l_800.y)), 7L)))) || p_813->g_587.s2) , (*l_763)) <= 18446744073709551608UL), 0x05E0L, 0x28CAL, ((VECTOR(int16_t, 4))((-6L))))))).sf >= (*l_9))) <= (*p_813->g_190));
        }
    }
    else
    { /* block id: 360 */
        uint32_t l_801 = 0x616EAA07L;
        l_801++;
        (*l_9) |= (((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(p_813->g_804.xy)), 0xB0F9F4B6L, 5UL)).hi)), 0x03BE9E15L, 0xAFC7B7FBL)).z , ((VECTOR(int32_t, 8))(l_805.s78f18d14)).s5);
        for (p_813->g_244 = 0; (p_813->g_244 >= 26); p_813->g_244 = safe_add_func_int8_t_s_s(p_813->g_244, 8))
        { /* block id: 365 */
            return (*l_6);
        }
    }
    (*l_6) = ((VECTOR(int32_t, 8))(0L, ((VECTOR(int32_t, 2))(p_813->g_808.s57)), 0x1393D45AL, (-4L), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 2))(p_813->g_809.s46)).xyyxxyxy, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(p_813->g_810.xwyxxwxxwyxxzwzy)).sb037, ((VECTOR(int32_t, 16))(l_811.s0522743520650114)).sadc8))), (-10L), 0L, 0x2B72084DL, 0x2D530345L, 0x4ECDC245L, ((VECTOR(int32_t, 2))((-1L), 0x65C436DAL)), ((VECTOR(int32_t, 4))(p_813->g_812.sd9be)), 1L)).even))).s21)), 0x612EF59FL)).s1;
    return (*l_10);
}


/* ------------------------------------------ */
/* 
 * reads : p_813->g_23 p_813->g_24 p_813->g_4 p_813->g_51 p_813->g_19 p_813->g_54 p_813->g_72 p_813->g_12 p_813->g_91 p_813->g_93 p_813->g_120 p_813->g_117 p_813->g_116 p_813->g_140 p_813->g_comm_values p_813->g_51.f0 p_813->g_73 p_813->g_154 p_813->g_163 p_813->g_174 p_813->g_50 p_813->g_190 p_813->g_191 p_813->g_222 p_813->g_225 p_813->g_234 p_813->g_244 p_813->g_224 p_813->g_310 p_813->g_317 p_813->g_281 p_813->g_361 p_813->g_364 p_813->l_comm_values p_813->g_379 p_813->g_389 p_813->g_394 p_813->g_289 p_813->g_418 p_813->g_423 p_813->g_439 p_813->g_442 p_813->g_445 p_813->g_458 p_813->g_459 p_813->g_462 p_813->g_474 p_813->g_286 p_813->g_123 p_813->g_676 p_813->g_685 p_813->g_686 p_813->g_642
 * writes: p_813->g_50 p_813->g_4 p_813->g_23 p_813->g_93 p_813->g_120 p_813->g_123 p_813->g_73 p_813->g_19 p_813->g_154 p_813->g_163 p_813->g_190 p_813->g_191 p_813->g_51.f0 p_813->g_224 p_813->g_234 p_813->g_24 p_813->g_281 p_813->g_379 p_813->g_413 p_813->g_244 p_813->g_439 p_813->g_140
 */
int32_t  func_20(int16_t  p_21, int32_t ** p_22, struct S1 * p_813)
{ /* block id: 10 */
    uint32_t l_27 = 4294967295UL;
    int32_t l_28 = 0x451978E6L;
    int16_t *l_49 = &p_813->g_50[0][3][0];
    uint8_t *l_59 = (void*)0;
    int32_t **l_60[2][8] = {{(void*)0,(void*)0,&p_813->g_24,&p_813->g_24,&p_813->g_24,&p_813->g_24,&p_813->g_24,(void*)0},{(void*)0,(void*)0,&p_813->g_24,&p_813->g_24,&p_813->g_24,&p_813->g_24,&p_813->g_24,(void*)0}};
    int32_t ***l_71 = &p_813->g_23;
    int32_t *l_711 = (void*)0;
    int i, j;
    p_813->g_140.y = ((safe_div_func_int32_t_s_s((l_27 |= (**p_813->g_23)), (l_28 && l_28))) , (safe_sub_func_int8_t_s_s(0x4AL, ((((&l_28 != (l_711 = ((*p_22) = func_31((*p_22), func_34(((*l_71) = func_38(func_42(((safe_mul_func_int16_t_s_s(((*l_49) = (+(GROUP_DIVERGE(1, 1) , (safe_unary_minus_func_uint32_t_u((!p_21)))))), (l_27 , ((p_21 , 3L) | p_21)))) , (**p_813->g_23)), p_813->g_4, p_21, p_813), l_59, l_60[1][5], p_813)), p_813->g_72, p_21, p_813), p_813)))) , p_21) >= p_21) > 0x49L))));
    return p_21;
}


/* ------------------------------------------ */
/* 
 * reads : p_813->g_12 p_813->g_91 p_813->g_23 p_813->g_24 p_813->g_4 p_813->g_93 p_813->g_120 p_813->g_117 p_813->g_116 p_813->g_72 p_813->g_19 p_813->g_140 p_813->g_comm_values p_813->g_51.f0 p_813->g_73 p_813->g_154 p_813->g_163 p_813->g_174 p_813->g_50 p_813->g_190 p_813->g_54 p_813->g_191 p_813->g_222 p_813->g_225 p_813->g_234 p_813->g_244 p_813->g_224 p_813->g_310 p_813->g_317 p_813->g_281 p_813->g_361 p_813->g_364 p_813->l_comm_values p_813->g_379 p_813->g_389 p_813->g_394 p_813->g_289 p_813->g_418 p_813->g_423 p_813->g_439 p_813->g_442 p_813->g_445 p_813->g_458 p_813->g_459 p_813->g_462 p_813->g_474 p_813->g_286 p_813->g_123 p_813->g_51 p_813->g_676 p_813->g_685 p_813->g_686 p_813->g_642
 * writes: p_813->g_50 p_813->g_93 p_813->g_120 p_813->g_123 p_813->g_73 p_813->g_19 p_813->g_154 p_813->g_4 p_813->g_163 p_813->g_190 p_813->g_191 p_813->g_51.f0 p_813->g_224 p_813->g_234 p_813->g_24 p_813->g_281 p_813->g_379 p_813->g_413 p_813->g_244 p_813->g_439
 */
int32_t * func_31(int32_t * p_32, uint8_t * p_33, struct S1 * p_813)
{ /* block id: 39 */
    uint16_t l_86 = 0xFCBCL;
    int16_t *l_92 = &p_813->g_50[0][3][0];
    int32_t ***l_155 = &p_813->g_23;
    int16_t *l_167 = &p_813->g_50[0][3][0];
    uint64_t l_169 = 0x2DAB10FF70A894EAL;
    uint16_t *l_193[3][3] = {{&p_813->g_191,&p_813->g_191,&p_813->g_191},{&p_813->g_191,&p_813->g_191,&p_813->g_191},{&p_813->g_191,&p_813->g_191,&p_813->g_191}};
    VECTOR(int64_t, 4) l_202 = (VECTOR(int64_t, 4))(0x066434410D69DBB5L, (VECTOR(int64_t, 2))(0x066434410D69DBB5L, (-1L)), (-1L));
    VECTOR(int32_t, 8) l_228 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x30DB2345L), 0x30DB2345L), 0x30DB2345L, 0L, 0x30DB2345L);
    uint32_t *l_273 = &p_813->g_244;
    uint16_t l_330[1];
    uint8_t *l_333 = &p_813->g_281;
    VECTOR(int64_t, 4) l_336 = (VECTOR(int64_t, 4))(0x4F4DA73571BD6022L, (VECTOR(int64_t, 2))(0x4F4DA73571BD6022L, 6L), 6L);
    int32_t **l_339 = &p_813->g_24;
    uint32_t *l_341 = &p_813->g_51.f0;
    uint32_t **l_340 = &l_341;
    uint64_t l_345 = 18446744073709551609UL;
    int64_t l_348[9][1] = {{0x2349F03E3C6B9919L},{0x2349F03E3C6B9919L},{0x2349F03E3C6B9919L},{0x2349F03E3C6B9919L},{0x2349F03E3C6B9919L},{0x2349F03E3C6B9919L},{0x2349F03E3C6B9919L},{0x2349F03E3C6B9919L},{0x2349F03E3C6B9919L}};
    int16_t l_349 = 0L;
    uint16_t l_350 = 6UL;
    VECTOR(int8_t, 16) l_360 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x7BL), 0x7BL), 0x7BL, 0L, 0x7BL, (VECTOR(int8_t, 2))(0L, 0x7BL), (VECTOR(int8_t, 2))(0L, 0x7BL), 0L, 0x7BL, 0L, 0x7BL);
    VECTOR(int64_t, 8) l_373 = (VECTOR(int64_t, 8))(0x14A8E7D9123E0B62L, (VECTOR(int64_t, 4))(0x14A8E7D9123E0B62L, (VECTOR(int64_t, 2))(0x14A8E7D9123E0B62L, 0x1DDD121242E491F4L), 0x1DDD121242E491F4L), 0x1DDD121242E491F4L, 0x14A8E7D9123E0B62L, 0x1DDD121242E491F4L);
    int16_t *l_397 = &l_349;
    int8_t *l_400[8] = {&p_813->g_154,&p_813->g_234,&p_813->g_154,&p_813->g_154,&p_813->g_234,&p_813->g_154,&p_813->g_154,&p_813->g_234};
    int32_t l_411 = 0x13D8306BL;
    int64_t *l_412 = &p_813->g_413;
    int32_t l_414[1];
    int32_t l_415 = 0x5B0B43FCL;
    VECTOR(uint8_t, 4) l_419 = (VECTOR(uint8_t, 4))(0x4BL, (VECTOR(uint8_t, 2))(0x4BL, 0xBBL), 0xBBL);
    VECTOR(uint8_t, 8) l_420 = (VECTOR(uint8_t, 8))(8UL, (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 0x11L), 0x11L), 0x11L, 8UL, 0x11L);
    VECTOR(uint8_t, 16) l_421 = (VECTOR(uint8_t, 16))(0xE3L, (VECTOR(uint8_t, 4))(0xE3L, (VECTOR(uint8_t, 2))(0xE3L, 0x53L), 0x53L), 0x53L, 0xE3L, 0x53L, (VECTOR(uint8_t, 2))(0xE3L, 0x53L), (VECTOR(uint8_t, 2))(0xE3L, 0x53L), 0xE3L, 0x53L, 0xE3L, 0x53L);
    VECTOR(uint8_t, 8) l_422 = (VECTOR(uint8_t, 8))(0x54L, (VECTOR(uint8_t, 4))(0x54L, (VECTOR(uint8_t, 2))(0x54L, 0x74L), 0x74L), 0x74L, 0x54L, 0x74L);
    VECTOR(uint8_t, 2) l_424 = (VECTOR(uint8_t, 2))(2UL, 0x7BL);
    VECTOR(int32_t, 8) l_429 = (VECTOR(int32_t, 8))(0x113EEC67L, (VECTOR(int32_t, 4))(0x113EEC67L, (VECTOR(int32_t, 2))(0x113EEC67L, (-1L)), (-1L)), (-1L), 0x113EEC67L, (-1L));
    VECTOR(int32_t, 8) l_430 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-7L)), (-7L)), (-7L), 0L, (-7L));
    uint32_t l_449 = 0UL;
    VECTOR(int16_t, 4) l_463 = (VECTOR(int16_t, 4))(0x360BL, (VECTOR(int16_t, 2))(0x360BL, 3L), 3L);
    VECTOR(int64_t, 16) l_481 = (VECTOR(int64_t, 16))(0x62AB714346913F96L, (VECTOR(int64_t, 4))(0x62AB714346913F96L, (VECTOR(int64_t, 2))(0x62AB714346913F96L, 0x45CA51B2E7E2188EL), 0x45CA51B2E7E2188EL), 0x45CA51B2E7E2188EL, 0x62AB714346913F96L, 0x45CA51B2E7E2188EL, (VECTOR(int64_t, 2))(0x62AB714346913F96L, 0x45CA51B2E7E2188EL), (VECTOR(int64_t, 2))(0x62AB714346913F96L, 0x45CA51B2E7E2188EL), 0x62AB714346913F96L, 0x45CA51B2E7E2188EL, 0x62AB714346913F96L, 0x45CA51B2E7E2188EL);
    VECTOR(int64_t, 2) l_483 = (VECTOR(int64_t, 2))(0x7A427C4C098166F9L, (-1L));
    uint64_t *l_534 = &l_169;
    VECTOR(uint32_t, 2) l_536 = (VECTOR(uint32_t, 2))(0xDCF26C2FL, 0UL);
    int8_t l_547[3];
    union U0 **l_551 = &p_813->g_123;
    VECTOR(uint16_t, 16) l_585 = (VECTOR(uint16_t, 16))(6UL, (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0UL), 0UL), 0UL, 6UL, 0UL, (VECTOR(uint16_t, 2))(6UL, 0UL), (VECTOR(uint16_t, 2))(6UL, 0UL), 6UL, 0UL, 6UL, 0UL);
    VECTOR(int32_t, 16) l_608 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x4591586BL), 0x4591586BL), 0x4591586BL, 0L, 0x4591586BL, (VECTOR(int32_t, 2))(0L, 0x4591586BL), (VECTOR(int32_t, 2))(0L, 0x4591586BL), 0L, 0x4591586BL, 0L, 0x4591586BL);
    int16_t l_613 = (-1L);
    int32_t l_617 = (-1L);
    VECTOR(int32_t, 2) l_650 = (VECTOR(int32_t, 2))((-10L), 0x2C5FA1ECL);
    int i, j;
    for (i = 0; i < 1; i++)
        l_330[i] = 0UL;
    for (i = 0; i < 1; i++)
        l_414[i] = (-5L);
    for (i = 0; i < 3; i++)
        l_547[i] = 0x7DL;
    if (func_74((p_813->g_12 != (p_813->g_93 |= (safe_mul_func_uint32_t_u_u(((safe_lshift_func_int16_t_s_u((safe_mod_func_int8_t_s_s(l_86, ((1L || l_86) , ((VECTOR(int8_t, 2))(0x35L, 0x09L)).lo))), 12)) <= 0L), ((safe_lshift_func_int16_t_s_u(((*l_92) = (safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(4294967290UL, 4294967295UL)).odd, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(p_813->g_91.s0334043017647717)).sf5ba)).z))), 0)) >= ((**p_813->g_23) , 0xC2FCF81C7DC75790L)))))), func_94(l_92, l_86, p_813), p_813->g_140.y, l_155, p_813->g_72, p_813))
    { /* block id: 77 */
        int16_t *l_160 = &p_813->g_50[1][3][0];
        uint64_t *l_161 = (void*)0;
        uint64_t *l_162 = &p_813->g_163;
        int16_t **l_166 = &l_160;
        int16_t l_168 = 1L;
        (**p_813->g_23) = (((*l_166) = func_94(l_160, ((*l_162)++), p_813)) != (l_167 = &p_813->g_50[1][1][0]));
        l_168 = 1L;
    }
    else
    { /* block id: 83 */
        VECTOR(int64_t, 16) l_175 = (VECTOR(int64_t, 16))(0x6FCD83BFDD044356L, (VECTOR(int64_t, 4))(0x6FCD83BFDD044356L, (VECTOR(int64_t, 2))(0x6FCD83BFDD044356L, 0x09ECF18C14CA5645L), 0x09ECF18C14CA5645L), 0x09ECF18C14CA5645L, 0x6FCD83BFDD044356L, 0x09ECF18C14CA5645L, (VECTOR(int64_t, 2))(0x6FCD83BFDD044356L, 0x09ECF18C14CA5645L), (VECTOR(int64_t, 2))(0x6FCD83BFDD044356L, 0x09ECF18C14CA5645L), 0x6FCD83BFDD044356L, 0x09ECF18C14CA5645L, 0x6FCD83BFDD044356L, 0x09ECF18C14CA5645L);
        VECTOR(uint32_t, 16) l_181 = (VECTOR(uint32_t, 16))(4294967293UL, (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 0x23F5755EL), 0x23F5755EL), 0x23F5755EL, 4294967293UL, 0x23F5755EL, (VECTOR(uint32_t, 2))(4294967293UL, 0x23F5755EL), (VECTOR(uint32_t, 2))(4294967293UL, 0x23F5755EL), 4294967293UL, 0x23F5755EL, 4294967293UL, 0x23F5755EL);
        uint16_t *l_186 = &l_86;
        int8_t *l_187 = (void*)0;
        int8_t *l_188[3];
        int32_t l_189[3];
        uint16_t **l_192[4] = {&p_813->g_190,&p_813->g_190,&p_813->g_190,&p_813->g_190};
        int32_t l_242 = 6L;
        uint16_t l_243 = 0UL;
        VECTOR(uint32_t, 8) l_252 = (VECTOR(uint32_t, 8))(0xD07DB5B4L, (VECTOR(uint32_t, 4))(0xD07DB5B4L, (VECTOR(uint32_t, 2))(0xD07DB5B4L, 0x8FF907EEL), 0x8FF907EEL), 0x8FF907EEL, 0xD07DB5B4L, 0x8FF907EEL);
        VECTOR(uint64_t, 2) l_283 = (VECTOR(uint64_t, 2))(1UL, 5UL);
        VECTOR(uint64_t, 16) l_285 = (VECTOR(uint64_t, 16))(0x17583D3E0E9D6124L, (VECTOR(uint64_t, 4))(0x17583D3E0E9D6124L, (VECTOR(uint64_t, 2))(0x17583D3E0E9D6124L, 0xF40633B5AC01637AL), 0xF40633B5AC01637AL), 0xF40633B5AC01637AL, 0x17583D3E0E9D6124L, 0xF40633B5AC01637AL, (VECTOR(uint64_t, 2))(0x17583D3E0E9D6124L, 0xF40633B5AC01637AL), (VECTOR(uint64_t, 2))(0x17583D3E0E9D6124L, 0xF40633B5AC01637AL), 0x17583D3E0E9D6124L, 0xF40633B5AC01637AL, 0x17583D3E0E9D6124L, 0xF40633B5AC01637AL);
        int32_t **l_296 = &p_813->g_24;
        VECTOR(int8_t, 4) l_297 = (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0x1FL), 0x1FL);
        int32_t *l_325 = &l_189[1];
        int32_t *l_326 = (void*)0;
        uint32_t l_327 = 0UL;
        int i;
        for (i = 0; i < 3; i++)
            l_188[i] = (void*)0;
        for (i = 0; i < 3; i++)
            l_189[i] = 1L;
        if ((4294967295UL && ((l_193[2][1] = (p_813->g_190 = ((l_169 & FAKE_DIVERGE(p_813->global_0_offset, get_global_id(0), 10)) , (((p_813->g_154 |= (l_189[0] = (safe_rshift_func_int8_t_s_s((l_175.sa = (safe_div_func_int64_t_s_s(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(p_813->g_174.xxwxxxzxyxwxxywx)).s90)).even, 0x03291253B8200A14L))), (safe_unary_minus_func_int16_t_s((safe_lshift_func_uint16_t_u_s(((safe_rshift_func_int16_t_s_s(p_813->g_91.s1, ((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 16))((-1L), 1L, ((VECTOR(int16_t, 8))((!((void*)0 == &p_813->g_93)), ((VECTOR(int16_t, 2))(0x665BL, 1L)), ((((VECTOR(uint32_t, 16))(l_181.s19477ffdd8a1f484)).s8 != (((VECTOR(uint8_t, 8))((*p_813->g_72), (((VECTOR(uint8_t, 8))((safe_div_func_uint8_t_u_u(((safe_add_func_int16_t_s_s(((((*l_186) = (4294967295UL ^ (-9L))) , (*p_813->g_24)) >= p_813->g_140.y), p_813->g_174.z)) ^ (***l_155)), 0xE4L)), 0x90L, 0xC5L, 255UL, ((VECTOR(uint8_t, 2))(0x13L)), 0xA9L, 0x0DL)).s2 <= (*p_813->g_72)), ((VECTOR(uint8_t, 2))(0x02L)), 1UL, (*p_813->g_72), 246UL, 0x51L)).s6 , 0xF4D9A014L)) >= 4L), 0x53F0L, p_813->g_50[0][3][0], (-1L), 0x60ACL)), 0x7D6DL, 0x5165L, p_813->g_174.x, 1L, 0x17A8L, 0L)).odd, ((VECTOR(int16_t, 8))(0x6586L)), ((VECTOR(int16_t, 8))((-1L)))))).s6)) , (***l_155)), p_813->g_91.s0)))))))) == 0x16L) , p_813->g_190)))) == &p_813->g_191)))
        { /* block id: 90 */
            uint64_t l_207 = 0x7FDFE881F7A3D568L;
            VECTOR(uint16_t, 16) l_213 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 4UL), 4UL), 4UL, 0UL, 4UL, (VECTOR(uint16_t, 2))(0UL, 4UL), (VECTOR(uint16_t, 2))(0UL, 4UL), 0UL, 4UL, 0UL, 4UL);
            uint16_t l_230 = 1UL;
            int32_t **l_233 = &p_813->g_24;
            int i;
            for (p_813->g_163 = 1; (p_813->g_163 == 41); p_813->g_163 = safe_add_func_int16_t_s_s(p_813->g_163, 5))
            { /* block id: 93 */
                int32_t l_203 = 0x12FAA1E9L;
                int32_t ****l_204 = &p_813->g_109;
                uint32_t *l_208[2];
                uint64_t *l_216 = &p_813->g_163;
                uint64_t **l_217 = &l_216;
                uint64_t *l_223[3];
                int64_t *l_239 = (void*)0;
                int64_t *l_240 = (void*)0;
                int64_t *l_241[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                for (i = 0; i < 2; i++)
                    l_208[i] = &p_813->g_51.f0;
                for (i = 0; i < 3; i++)
                    l_223[i] = (void*)0;
                (***l_155) = ((l_202.w = (safe_lshift_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u((++(*l_186)), ((*p_813->g_190) = 65535UL))), 6))) , ((+(~(GROUP_DIVERGE(2, 1) && l_203))) , (((l_204 == l_204) , (((l_189[0] | ((*l_167) = ((((safe_sub_func_uint32_t_u_u(l_207, (((p_813->g_51.f0 &= GROUP_DIVERGE(0, 1)) , (safe_rshift_func_int8_t_s_u((safe_mul_func_int16_t_s_s((((((((VECTOR(uint16_t, 2))(l_213.s20)).lo == (((safe_mul_func_int16_t_s_s((((p_813->g_91.s3 , ((*l_217) = l_216)) != &p_813->g_163) > 0x18L), (-1L))) < p_813->g_174.y) || 254UL)) || 0x33AEA3B3L) < (*p_813->g_72)) == p_813->g_54.s7) <= (*p_33)), p_813->g_140.x)), 2))) >= GROUP_DIVERGE(2, 1)))) & 0xA2B93A76B4AF432EL) , p_813->g_191) != p_813->g_116.y))) | FAKE_DIVERGE(p_813->global_1_offset, get_global_id(1), 10)) == 0x74ED5134EBF0AE52L)) & l_207)));
                (**l_233) = (((safe_rshift_func_int8_t_s_s((((((l_189[0] |= (p_813->g_224 = ((***l_155) < (safe_mod_func_uint64_t_u_u(p_813->g_174.z, ((VECTOR(int64_t, 4))(p_813->g_222.s7202)).y))))) | ((((((((((VECTOR(int16_t, 4))(p_813->g_225.s6471)).y && (safe_rshift_func_uint8_t_u_u((*p_813->g_72), (0UL != ((VECTOR(int32_t, 8))(l_228.s41347277)).s7)))) , ((safe_unary_minus_func_uint16_t_u(((*p_813->g_190) = (l_230 , (safe_add_func_int32_t_s_s((((p_813->g_234 &= ((void*)0 != l_233)) == 0xA8A2A549730AFC9AL) <= (safe_mod_func_int64_t_s_s(((((((l_242 = ((safe_mul_func_int16_t_s_s(0x1008L, (***l_155))) < (*p_33))) ^ 0L) & (-9L)) , 0x6B9B84ECL) || l_175.s2) & p_813->g_50[1][0][2]), p_813->g_73))), (**l_233))))))) >= l_243)) & (**p_813->g_23)) && (*p_813->g_72)) > 0x6F7BA14FACFC0601L) , l_203) <= 0x787AL) , (***l_155))) <= p_813->g_120) , (*p_32)) , l_189[0]), 1)) < p_813->g_244) | (***l_155));
            }
        }
        else
        { /* block id: 108 */
            VECTOR(int32_t, 8) l_251 = (VECTOR(int32_t, 8))(0x070294DBL, (VECTOR(int32_t, 4))(0x070294DBL, (VECTOR(int32_t, 2))(0x070294DBL, 0x68C40D49L), 0x68C40D49L), 0x68C40D49L, 0x070294DBL, 0x68C40D49L);
            VECTOR(uint32_t, 4) l_274 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967294UL), 4294967294UL);
            VECTOR(uint64_t, 16) l_282 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL);
            VECTOR(uint16_t, 2) l_287 = (VECTOR(uint16_t, 2))(0x7A85L, 0x9600L);
            int i;
            for (p_813->g_93 = 6; (p_813->g_93 != 34); p_813->g_93 = safe_add_func_int32_t_s_s(p_813->g_93, 4))
            { /* block id: 111 */
                int32_t *l_247 = &p_813->g_224;
                VECTOR(uint64_t, 8) l_284 = (VECTOR(uint64_t, 8))(0xA6A3311199DAAF45L, (VECTOR(uint64_t, 4))(0xA6A3311199DAAF45L, (VECTOR(uint64_t, 2))(0xA6A3311199DAAF45L, 2UL), 2UL), 2UL, 0xA6A3311199DAAF45L, 2UL);
                VECTOR(int32_t, 8) l_288 = (VECTOR(int32_t, 8))(0x13662A07L, (VECTOR(int32_t, 4))(0x13662A07L, (VECTOR(int32_t, 2))(0x13662A07L, (-3L)), (-3L)), (-3L), 0x13662A07L, (-3L));
                int32_t l_298 = 0x074FEF34L;
                uint16_t ***l_323 = (void*)0;
                uint16_t ***l_324 = &l_192[2];
                int i;
                (**l_155) = l_247;
                for (p_813->g_224 = 0; (p_813->g_224 < (-25)); --p_813->g_224)
                { /* block id: 115 */
                    int32_t *l_250[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    uint16_t **l_270 = &l_193[2][1];
                    int16_t *l_275 = (void*)0;
                    uint8_t *l_280 = &p_813->g_281;
                    int i, j;
                    (1 + 1);
                }
                for (p_813->g_191 = (-22); (p_813->g_191 > 39); p_813->g_191 = safe_add_func_uint64_t_u_u(p_813->g_191, 1))
                { /* block id: 142 */
                    VECTOR(int8_t, 4) l_305 = (VECTOR(int8_t, 4))(0x65L, (VECTOR(int8_t, 2))(0x65L, 0x0BL), 0x0BL);
                    uint8_t *l_322 = &p_813->g_281;
                    int i;
                    for (l_242 = 0; (l_242 <= 0); l_242++)
                    { /* block id: 145 */
                        return p_32;
                    }
                    (**p_813->g_23) = (safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 4))(l_305.zxwy)).w, ((*l_322) ^= (((safe_rshift_func_uint16_t_u_u((--(*l_186)), (9UL & 0x476DE8D8L))) ^ (p_813->g_225.s6 | (((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(p_813->g_310.wxzy)).xyzwzyywyxzzxwzw)))).sc324, ((VECTOR(uint64_t, 2))(0x667AEED038F2240EL, 0xE1015E90E7574AEFL)).yyxy))).y != ((safe_mod_func_uint8_t_u_u((safe_sub_func_int8_t_s_s((safe_add_func_int32_t_s_s((0x813AAD42L > p_813->g_317), ((safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((((*p_33) = 0xB3L) < p_813->g_comm_values[p_813->tid]), ((***l_155) , (l_305.y == p_813->g_191)))), (*p_813->g_190))) == (**l_296)))), (**l_296))), l_274.x)) || GROUP_DIVERGE(2, 1))))) | (***l_155)))));
                }
                (*l_324) = &p_813->g_190;
            }
        }
        ++l_327;
        (*l_296) = func_52(l_330[0], p_813);
    }
    (*p_32) = (FAKE_DIVERGE(p_813->group_0_offset, get_group_id(0), 10) <= ((((*l_340) = p_813->g_24) != (void*)0) < GROUP_DIVERGE(2, 1)));
    if ((*p_32))
    { /* block id: 165 */
        int32_t *l_342 = (void*)0;
        int32_t l_343 = (-8L);
        int32_t *l_344[7][8] = {{&p_813->g_224,(void*)0,(void*)0,&p_813->g_224,&p_813->g_224,(void*)0,(void*)0,&p_813->g_224},{&p_813->g_224,(void*)0,(void*)0,&p_813->g_224,&p_813->g_224,(void*)0,(void*)0,&p_813->g_224},{&p_813->g_224,(void*)0,(void*)0,&p_813->g_224,&p_813->g_224,(void*)0,(void*)0,&p_813->g_224},{&p_813->g_224,(void*)0,(void*)0,&p_813->g_224,&p_813->g_224,(void*)0,(void*)0,&p_813->g_224},{&p_813->g_224,(void*)0,(void*)0,&p_813->g_224,&p_813->g_224,(void*)0,(void*)0,&p_813->g_224},{&p_813->g_224,(void*)0,(void*)0,&p_813->g_224,&p_813->g_224,(void*)0,(void*)0,&p_813->g_224},{&p_813->g_224,(void*)0,(void*)0,&p_813->g_224,&p_813->g_224,(void*)0,(void*)0,&p_813->g_224}};
        uint32_t l_380 = 8UL;
        int8_t l_386 = 0x3DL;
        int i, j;
        ++l_345;
        --l_350;
        for (p_813->g_163 = (-3); (p_813->g_163 > 35); p_813->g_163 = safe_add_func_uint16_t_u_u(p_813->g_163, 8))
        { /* block id: 170 */
            int32_t l_355[4];
            VECTOR(int64_t, 16) l_371 = (VECTOR(int64_t, 16))((-7L), (VECTOR(int64_t, 4))((-7L), (VECTOR(int64_t, 2))((-7L), 0L), 0L), 0L, (-7L), 0L, (VECTOR(int64_t, 2))((-7L), 0L), (VECTOR(int64_t, 2))((-7L), 0L), (-7L), 0L, (-7L), 0L);
            VECTOR(uint64_t, 8) l_374 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xD085F9AEFA7F653DL), 0xD085F9AEFA7F653DL), 0xD085F9AEFA7F653DL, 1UL, 0xD085F9AEFA7F653DL);
            int64_t *l_375 = (void*)0;
            int64_t *l_376 = &l_348[0][0];
            int8_t *l_377 = (void*)0;
            int8_t *l_378[5] = {&p_813->g_154,&p_813->g_154,&p_813->g_154,&p_813->g_154,&p_813->g_154};
            int32_t l_381 = 5L;
            int i;
            for (i = 0; i < 4; i++)
                l_355[i] = 0x256170AAL;
            (*p_32) = ((void*)0 != &l_86);
            if (l_355[0])
                break;
            (*p_32) &= 9L;
            l_381 = (p_813->g_4 = (safe_add_func_int64_t_s_s((((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 8))((((*p_33) = (--(*l_333))) && (*p_813->g_72)), ((VECTOR(int8_t, 2))(0x59L, 3L)), 7L, 0L, 1L, 0x1AL, (-7L))).s74, ((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 16))(0x04L, ((((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_360.se8)), (-1L), 9L)).xyyyyyxwwywyyyww, ((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 16))(p_813->g_361.xyxyxxxxyyxxyxyy)).s1c, (int8_t)l_355[1], (int8_t)((safe_sub_func_uint16_t_u_u((FAKE_DIVERGE(p_813->local_2_offset, get_local_id(2), 10) , ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(5UL, (p_32 == p_32), 0UL, 0xE3FEL)))).y), (((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(p_813->g_364.zwwwyxwx)).s71)).hi ^ l_355[0]) , (safe_mod_func_uint8_t_u_u((GROUP_DIVERGE(0, 1) > 0xCBL), l_355[0]))) != (safe_add_func_uint8_t_u_u(((p_813->g_234 = (p_813->g_379[5] &= (safe_add_func_uint64_t_u_u(0xD2BBCD76E5FCF05DL, ((*l_376) = ((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),int64_t,((VECTOR(int64_t, 8))(l_371.s932c1035)).s25, (int64_t)(safe_unary_minus_func_uint32_t_u(((((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 2))((-1L), 0L)), ((VECTOR(int64_t, 2))(l_373.s72))))).even & ((VECTOR(uint64_t, 8))(l_374.s23561450)).s3) , p_813->l_comm_values[(safe_mod_func_uint32_t_u_u(p_813->tid, 156))]))), (int64_t)p_813->g_234))).yyyxyxyyyyxyxxxx, ((VECTOR(int64_t, 16))(0x7C67D272D4C250CDL))))).s5))))) > 1L), l_380))))) > p_813->g_93)))).xyxxxxxxyxyxxxyy, ((VECTOR(int8_t, 16))(7L)), ((VECTOR(int8_t, 16))(0x5FL))))).s9b10, ((VECTOR(int8_t, 4))(0x38L))))).xyxwxzwzyxxyyyyx, ((VECTOR(int8_t, 16))(5L))))).s97a3, (int8_t)(-9L)))), ((VECTOR(int8_t, 4))(0x19L))))).z < (*p_33)) > l_355[0]), ((VECTOR(int8_t, 4))(0x71L)), 0x7BL, 1L, ((VECTOR(int8_t, 8))(8L)))).even, ((VECTOR(int8_t, 8))(0x14L)), ((VECTOR(int8_t, 8))((-9L)))))).s23))).lo ^ GROUP_DIVERGE(1, 1)), p_813->g_364.z)));
        }
        for (p_813->g_191 = (-24); (p_813->g_191 < 40); ++p_813->g_191)
        { /* block id: 184 */
            int8_t *l_385[6] = {&p_813->g_234,(void*)0,&p_813->g_234,&p_813->g_234,(void*)0,&p_813->g_234};
            int8_t **l_384 = &l_385[3];
            int i;
            l_386 ^= (((*l_384) = p_33) != (void*)0);
        }
    }
    else
    { /* block id: 188 */
        return (*p_813->g_23);
    }
    if ((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 2))(p_813->g_389.wy)).yyyxxyxxxyxyxyyx, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((*p_32) |= (safe_lshift_func_uint8_t_u_s((p_813->g_389.z || 1UL), ((safe_lshift_func_int16_t_s_s(p_813->g_394, 6)) , ((p_813->g_50[2][3][1] && p_813->g_116.y) != (safe_rshift_func_uint8_t_u_u((((*l_397) = (-1L)) != (l_415 ^= ((((*p_813->g_72)--) , ((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 4))((l_228.s2 = (p_813->g_289.w >= GROUP_DIVERGE(2, 1))), (((*l_412) = ((VECTOR(int64_t, 8))((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 4))((safe_mod_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((p_813->g_51.f0 <= ((safe_lshift_func_int8_t_s_u((safe_sub_func_uint8_t_u_u(((*p_813->g_72)++), FAKE_DIVERGE(p_813->global_0_offset, get_global_id(0), 10))), (((0xFD9C0902L > 5UL) < FAKE_DIVERGE(p_813->group_1_offset, get_group_id(1), 10)) , p_813->g_54.s4))) < (-4L))), l_411)), 0x68FDL)), 0xA4L, 251UL, 0x31L)).even, ((VECTOR(uint8_t, 2))(0UL)), ((VECTOR(uint8_t, 2))(0x1FL))))), 0xCCL, 0x2BL, FAKE_DIVERGE(p_813->local_1_offset, get_local_id(1), 10), ((VECTOR(uint8_t, 2))(0x3BL)), 0xB7L)).even, ((VECTOR(uint8_t, 4))(255UL))))))).zwwxxzwx)).s6722613255517317)).sdd)), 9UL, (*p_813->g_72), 0xE8L, ((VECTOR(uint8_t, 2))(0xF4L)), 0x80L)).odd)).z >= l_350), 0x05DADAD878331DD3L, ((VECTOR(int64_t, 4))(0x283BE53A59D4CF02L)), 0L, 7L)).s0) , l_414[0]), (-1L), 1L)).xyyywwyx, ((VECTOR(int8_t, 8))(0x12L))))).s6) , (*p_813->g_190)))), p_813->g_117.s7))))))), 1L, 0x78F12ADEL, (-1L))).z, ((VECTOR(int32_t, 2))(0x74CCA008L)), 0x077BEE70L, ((VECTOR(int32_t, 2))(7L)), ((VECTOR(int32_t, 2))((-3L))), ((VECTOR(int32_t, 4))(0x2575DABEL)), ((VECTOR(int32_t, 2))(0x4F7FCB87L)), 0x69F32ED0L, 8L))))).sec4f)).w, 0x6F1D9611L)))
    { /* block id: 198 */
        uint32_t *l_443 = &p_813->g_51.f0;
        uint8_t *l_444 = &p_813->g_281;
        uint8_t **l_446 = (void*)0;
        uint8_t **l_447 = (void*)0;
        uint8_t **l_448 = &l_333;
        int32_t l_450[3];
        uint32_t l_451 = 6UL;
        int32_t *l_452 = &l_450[1];
        int32_t *l_453 = &l_414[0];
        VECTOR(int32_t, 8) l_454 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 6L), 6L), 6L, 0L, 6L);
        VECTOR(int32_t, 4) l_457 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 8L), 8L);
        VECTOR(int16_t, 4) l_460 = (VECTOR(int16_t, 4))(0x645BL, (VECTOR(int16_t, 2))(0x645BL, 0x5490L), 0x5490L);
        VECTOR(int16_t, 8) l_461 = (VECTOR(int16_t, 8))(0x73DBL, (VECTOR(int16_t, 4))(0x73DBL, (VECTOR(int16_t, 2))(0x73DBL, 1L), 1L), 1L, 0x73DBL, 1L);
        int32_t *l_477[9][3] = {{(void*)0,&p_813->g_394,(void*)0},{(void*)0,&p_813->g_394,(void*)0},{(void*)0,&p_813->g_394,(void*)0},{(void*)0,&p_813->g_394,(void*)0},{(void*)0,&p_813->g_394,(void*)0},{(void*)0,&p_813->g_394,(void*)0},{(void*)0,&p_813->g_394,(void*)0},{(void*)0,&p_813->g_394,(void*)0},{(void*)0,&p_813->g_394,(void*)0}};
        uint32_t l_478 = 4294967286UL;
        VECTOR(int64_t, 4) l_482 = (VECTOR(int64_t, 4))(0x0C7D01B348A702F3L, (VECTOR(int64_t, 2))(0x0C7D01B348A702F3L, 0x3FE0546221C46C42L), 0x3FE0546221C46C42L);
        VECTOR(int64_t, 4) l_484 = (VECTOR(int64_t, 4))(0x78B3FBFAB4407815L, (VECTOR(int64_t, 2))(0x78B3FBFAB4407815L, 0x5D0D9D96228B2FCAL), 0x5D0D9D96228B2FCAL);
        int64_t l_487 = (-3L);
        union U0 *l_488 = &p_813->g_51;
        union U0 **l_489 = &p_813->g_123;
        int32_t l_528 = (-9L);
        VECTOR(int32_t, 16) l_533 = (VECTOR(int32_t, 16))(0x38315CDEL, (VECTOR(int32_t, 4))(0x38315CDEL, (VECTOR(int32_t, 2))(0x38315CDEL, (-10L)), (-10L)), (-10L), 0x38315CDEL, (-10L), (VECTOR(int32_t, 2))(0x38315CDEL, (-10L)), (VECTOR(int32_t, 2))(0x38315CDEL, (-10L)), 0x38315CDEL, (-10L), 0x38315CDEL, (-10L));
        uint64_t *l_535 = &p_813->g_317;
        uint16_t l_548 = 8UL;
        uint8_t l_554 = 0xFDL;
        int16_t **l_573 = &l_167;
        VECTOR(uint16_t, 2) l_592 = (VECTOR(uint16_t, 2))(0xE8D0L, 0x25E9L);
        uint16_t **l_649[2];
        VECTOR(uint32_t, 16) l_656 = (VECTOR(uint32_t, 16))(0x5E31D234L, (VECTOR(uint32_t, 4))(0x5E31D234L, (VECTOR(uint32_t, 2))(0x5E31D234L, 0xEB6E969FL), 0xEB6E969FL), 0xEB6E969FL, 0x5E31D234L, 0xEB6E969FL, (VECTOR(uint32_t, 2))(0x5E31D234L, 0xEB6E969FL), (VECTOR(uint32_t, 2))(0x5E31D234L, 0xEB6E969FL), 0x5E31D234L, 0xEB6E969FL, 0x5E31D234L, 0xEB6E969FL);
        VECTOR(int64_t, 8) l_692 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 7L), 7L), 7L, 1L, 7L);
        uint32_t l_696[1];
        uint32_t l_697[1][6][7] = {{{0xCCD94330L,0UL,0xC181C8D2L,1UL,0xC181C8D2L,0UL,0xCCD94330L},{0xCCD94330L,0UL,0xC181C8D2L,1UL,0xC181C8D2L,0UL,0xCCD94330L},{0xCCD94330L,0UL,0xC181C8D2L,1UL,0xC181C8D2L,0UL,0xCCD94330L},{0xCCD94330L,0UL,0xC181C8D2L,1UL,0xC181C8D2L,0UL,0xCCD94330L},{0xCCD94330L,0UL,0xC181C8D2L,1UL,0xC181C8D2L,0UL,0xCCD94330L},{0xCCD94330L,0UL,0xC181C8D2L,1UL,0xC181C8D2L,0UL,0xCCD94330L}}};
        VECTOR(int8_t, 8) l_701 = (VECTOR(int8_t, 8))(3L, (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 1L), 1L), 1L, 3L, 1L);
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_450[i] = (-1L);
        for (i = 0; i < 2; i++)
            l_649[i] = (void*)0;
        for (i = 0; i < 1; i++)
            l_696[i] = 0x9C943118L;
        (*l_453) ^= ((safe_rshift_func_int16_t_s_s((-1L), (((((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 2))(3UL, 1UL)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(p_813->g_418.yx)).xyxxyyyyyxyyyyxy)), ((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 4))(l_419.yyyw)).xyyzywyzywzzxxxy, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_420.s55)).yxxx)).x, 255UL, 0x45L, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0x02L, 0x34L)), 255UL, 1UL)).xzzwzywx)).s61)).hi, 0x46L, 2UL, 0UL, 0UL)).s66, ((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 2))(l_421.s5e)).yyyx, ((VECTOR(uint8_t, 16))(l_422.s1560545217450141)).sd391))).lo))), 0x38L, 0xB9L)).zwxyxzywxywxyzxz, ((VECTOR(uint8_t, 8))(p_813->g_423.s51730705)).s1731575351251555)))))).s2c)), 0xA2L, ((VECTOR(uint8_t, 4))(l_424.yxxx)), 255UL)).s40))).yyyx)).hi, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(0xAEL, 1UL, 0xBDL, 255UL)))).even))).hi > (&p_813->g_109 != &l_155)) && ((*p_813->g_72) = (safe_sub_func_int32_t_s_s((-3L), ((safe_add_func_uint8_t_u_u((((*l_452) = ((l_451 = ((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 8))(l_429.s26135265)).even, ((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 4))(l_430.s0276)).xyzxwwywwxxwyzxz, ((VECTOR(int32_t, 8))(4L, ((VECTOR(int32_t, 4))((*p_32), ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))((safe_mul_func_uint8_t_u_u(0x9EL, (safe_lshift_func_uint16_t_u_s(((++(*p_813->g_190)) && (safe_div_func_int32_t_s_s(((VECTOR(int32_t, 8))(p_813->g_439.sdaf3c909)).s4, ((safe_mul_func_uint16_t_u_u((((*p_32) &= ((((((*l_443) = ((VECTOR(uint32_t, 16))(p_813->g_442.s96a1f4462b49e651)).s6) , (((l_444 = &p_813->g_73) == ((*l_448) = p_813->g_445)) , &l_345)) != &p_813->g_317) & p_813->g_174.y) , l_449)) , 65535UL), l_450[0])) & 1L)))), 8)))), 0x5B00A233L, 0x560BE887L, 0x6D3D10D6L)).odd, ((VECTOR(int32_t, 2))(1L))))), 0L)), 0x0DFE6414L, 0x51C9859EL, 8L)).s1661051666133013))).s6b3f))).yyywzyxxwzzyxyww, ((VECTOR(int32_t, 16))(0x11B7B8E2L))))).s3) , l_450[0])) || (*l_452)), p_813->g_379[1])) == p_813->g_120))))) != 0x7A1BL))) < GROUP_DIVERGE(2, 1));
        l_478 ^= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(0x515EBFDCL, ((*l_453) &= ((*l_452) &= (*p_32))), 0L, 0x08AAEEE2L)), ((VECTOR(int32_t, 8))(l_454.s65176011)), (safe_lshift_func_uint8_t_u_s(((*p_33) = 255UL), 5)), ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(6L, (-1L), 0x75EFEF09L, 0x1D6C3C25L)), ((VECTOR(int32_t, 8))(l_457.xxzzxwzz)).even, ((VECTOR(int32_t, 8))(p_813->g_458.s502c3873)).odd))).lo, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 4))(0x0070L, (-1L), 0x11D3L, 0L)).xywyyyxwyywxyxwy, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 8))(p_813->g_459.wxxxwywz)).hi, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(l_330[0], ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_460.xz)).xxxy)).xzxzzzzzzzzzyywy)).s8f)), 1L, ((VECTOR(int16_t, 8))(l_461.s71636426)), (*l_452), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 16))(p_813->g_462.xyyxyxyyxyyyxxyx)).odd, ((VECTOR(int16_t, 2))(0x5FCAL, 0x1450L)).yxyxyxyx))).s0633506104731515, ((VECTOR(int16_t, 8))(l_463.yxyxzwyy)).s2127107364416634))).s6a)), 5L)))))).sc3bf, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((safe_lshift_func_uint16_t_u_s(((safe_rshift_func_int16_t_s_s(((*l_453) && ((safe_sub_func_int32_t_s_s(((*l_453) = (safe_sub_func_int64_t_s_s(p_813->g_458.sd, p_813->g_19))), (safe_lshift_func_int8_t_s_u(((((p_813->g_474 , (safe_rshift_func_int16_t_s_s(0x1AD3L, p_813->g_222.s5))) , 0L) , &l_345) != (void*)0), 4)))) | p_813->g_361.y)), 9)) == 0x2072B6406A777E9BL), 9)) || 0x761B991BL), p_813->g_310.z, 0x3BE6L, 1L)).hi)).yxxx, ((VECTOR(int16_t, 4))(0x4748L)), ((VECTOR(int16_t, 4))(0x15B3L))))), ((VECTOR(int16_t, 2))(0x336BL)), p_813->g_364.y, 0x16E7L, 0x7334L, (*l_452), ((VECTOR(int16_t, 2))(5L)), (*l_453), ((VECTOR(int16_t, 2))(1L)), 0L)).s5c90))).wwxwyxwzyxzzxywy)), ((VECTOR(int16_t, 16))(0x553AL))))), ((VECTOR(uint16_t, 16))(1UL))))).hi, ((VECTOR(int32_t, 8))(0x584DF6D5L))))).s15)), (-3L), (-1L))).even, ((VECTOR(int32_t, 2))((-5L)))))), 0x275505B0L)).sd;
        if (((&p_813->g_51 != ((*l_489) = ((&l_92 == ((safe_mod_func_int16_t_s_s(0x6C69L, ((((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 8))(l_481.s8f2b11fd)).s22, ((VECTOR(int64_t, 8))((*l_452), ((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 2))(1L, 0L)).xxxxyyyyxyxyxxxx, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(0x04A3AF666502FD5AL, (-5L))).yxyyxxxxxxyyyxyy))))).sf165))))), ((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(l_482.wx)))), ((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 2))(l_483.xy)).yxxy, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(l_484.yyywyxzzwxyxwywx)).s01)).xxxy))).hi))), 1L)).s74))).lo & (((-5L) <= ((*l_453) |= (*p_32))) != (*p_32))) && (p_813->g_364.y != ((((safe_mul_func_uint16_t_u_u((((VECTOR(int16_t, 16))(0x6D6CL, 0x726CL, ((6L == 4294967295UL) != (*l_452)), p_813->g_93, (*l_453), ((VECTOR(int16_t, 4))((-1L))), 0x250DL, ((VECTOR(int16_t, 4))(3L)), 1L, 1L)).s6 & (*p_813->g_190)), (-6L))) ^ (*p_32)) ^ l_487) , p_813->g_286.sb))))) , &l_397)) , l_488))) & (*l_452)))
        { /* block id: 215 */
            uint16_t l_516 = 9UL;
            uint16_t **l_523 = &p_813->g_190;
            uint16_t ***l_522 = &l_523;
            int16_t **l_574 = (void*)0;
            VECTOR(uint16_t, 16) l_586 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xA3B9L), 0xA3B9L), 0xA3B9L, 1UL, 0xA3B9L, (VECTOR(uint16_t, 2))(1UL, 0xA3B9L), (VECTOR(uint16_t, 2))(1UL, 0xA3B9L), 1UL, 0xA3B9L, 1UL, 0xA3B9L);
            int32_t l_596 = 2L;
            int32_t l_622 = 0x7CA7E9C5L;
            int32_t l_623 = 0x1BAD0456L;
            VECTOR(uint16_t, 4) l_624 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 1UL), 1UL);
            int32_t ****l_648[6][2][1] = {{{&p_813->g_109},{&p_813->g_109}},{{&p_813->g_109},{&p_813->g_109}},{{&p_813->g_109},{&p_813->g_109}},{{&p_813->g_109},{&p_813->g_109}},{{&p_813->g_109},{&p_813->g_109}},{{&p_813->g_109},{&p_813->g_109}}};
            int8_t **l_679[8][3] = {{(void*)0,&l_400[0],&p_813->g_591[6]},{(void*)0,&l_400[0],&p_813->g_591[6]},{(void*)0,&l_400[0],&p_813->g_591[6]},{(void*)0,&l_400[0],&p_813->g_591[6]},{(void*)0,&l_400[0],&p_813->g_591[6]},{(void*)0,&l_400[0],&p_813->g_591[6]},{(void*)0,&l_400[0],&p_813->g_591[6]},{(void*)0,&l_400[0],&p_813->g_591[6]}};
            uint32_t **l_680 = &l_341;
            VECTOR(uint64_t, 8) l_695 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x467F17F234E20636L), 0x467F17F234E20636L), 0x467F17F234E20636L, 18446744073709551615UL, 0x467F17F234E20636L);
            int i, j, k;
            for (l_411 = 0; (l_411 != 20); l_411 = safe_add_func_int8_t_s_s(l_411, 4))
            { /* block id: 218 */
                uint32_t l_492 = 0xB27B0693L;
                VECTOR(int16_t, 16) l_500 = (VECTOR(int16_t, 16))(0x4824L, (VECTOR(int16_t, 4))(0x4824L, (VECTOR(int16_t, 2))(0x4824L, (-1L)), (-1L)), (-1L), 0x4824L, (-1L), (VECTOR(int16_t, 2))(0x4824L, (-1L)), (VECTOR(int16_t, 2))(0x4824L, (-1L)), 0x4824L, (-1L), 0x4824L, (-1L));
                uint64_t l_517 = 0xD74D2BEADD9E89A8L;
                int i;
                --l_492;
                for (l_349 = 0; (l_349 != 23); ++l_349)
                { /* block id: 222 */
                    uint64_t l_509 = 18446744073709551615UL;
                    (*l_453) ^= (((*p_33) = (safe_unary_minus_func_int64_t_s((safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_813->group_1_offset, get_group_id(1), 10), ((((*l_452) > (((((((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 2))((-5L), 3L)), ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 4))(l_500.sa2c8)).even, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(((safe_add_func_uint32_t_u_u((safe_mod_func_uint64_t_u_u(p_813->g_174.x, 0x59862A795DC36EADL)), (safe_mod_func_int16_t_s_s(l_492, (safe_mod_func_uint16_t_u_u(((l_509 || 255UL) < p_813->g_91.s1), (safe_sub_func_int16_t_s_s(l_509, (safe_div_func_int64_t_s_s((safe_mul_func_uint16_t_u_u((p_813->g_19 & (*p_813->g_190)), (-9L))), l_509)))))))))) , 0xB33CL), (*p_813->g_190), 65534UL, 1UL)))).hi))).xyxxxxyyyxxyxyxx, ((VECTOR(int32_t, 16))(0x68083C85L))))).s3d))).odd || p_813->g_281) & 0UL) & 0x53A0L) < 0xC5L) < GROUP_DIVERGE(2, 1))) & p_813->g_389.z) && l_516)))))) | l_517);
                }
            }
            for (p_813->g_19 = 26; (p_813->g_19 != 21); p_813->g_19 = safe_sub_func_uint8_t_u_u(p_813->g_19, 7))
            { /* block id: 229 */
                VECTOR(int32_t, 8) l_532 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 7L), 7L), 7L, 1L, 7L);
                VECTOR(int64_t, 4) l_580 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-10L)), (-10L));
                int32_t l_598 = 0x19DADD8CL;
                int32_t l_611 = (-2L);
                VECTOR(uint16_t, 16) l_643 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint16_t, 2))(1UL, 0UL), (VECTOR(uint16_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL);
                int32_t *l_671 = &l_611;
                int i;
                (*l_339) = (**l_155);
            }
            atomic_max(&p_813->l_atomic_reduction[0], (safe_add_func_int16_t_s_s((*l_452), ((safe_mul_func_int16_t_s_s((p_813->g_24 == ((**l_551) , p_32)), 0x6321L)) > (p_813->g_676[2] == ((l_679[0][0] == ((*l_453) , &p_813->g_591[6])) , l_680))))) + get_linear_global_id());
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_813->v_collective += p_813->l_atomic_reduction[0];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            (*p_32) = ((*l_453) | (((*l_452) = (l_228.s4 = 0x57L)) > (l_697[0][0][4] = ((safe_lshift_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(p_813->g_685, ((VECTOR(uint8_t, 8))(p_813->g_686.s67257544)).s4)), (l_696[0] = (safe_sub_func_int32_t_s_s(((p_813->g_642.z && (safe_unary_minus_func_uint8_t_u((safe_mod_func_int64_t_s_s(p_813->g_379[0], ((VECTOR(int64_t, 2))(l_692.s40)).odd))))) < ((void*)0 == l_453)), ((*l_273) |= (((VECTOR(uint16_t, 16))(abs(((VECTOR(uint16_t, 4))(0UL, GROUP_DIVERGE(2, 1), 0xC370L, 0x87DDL)).yyywxxyzxxxwwzwy))).s2 < (safe_rshift_func_int8_t_s_u((((VECTOR(uint64_t, 2))(l_695.s02)).even == (0x56F4L < (((1UL < (*p_33)) >= (*p_813->g_72)) || GROUP_DIVERGE(1, 1)))), (*p_33)))))))))) && (*l_453)))));
        }
        else
        { /* block id: 290 */
            VECTOR(uint32_t, 16) l_702 = (VECTOR(uint32_t, 16))(0xDE28141FL, (VECTOR(uint32_t, 4))(0xDE28141FL, (VECTOR(uint32_t, 2))(0xDE28141FL, 4294967295UL), 4294967295UL), 4294967295UL, 0xDE28141FL, 4294967295UL, (VECTOR(uint32_t, 2))(0xDE28141FL, 4294967295UL), (VECTOR(uint32_t, 2))(0xDE28141FL, 4294967295UL), 0xDE28141FL, 4294967295UL, 0xDE28141FL, 4294967295UL);
            int32_t *l_706[10] = {&p_813->g_667,(void*)0,&p_813->g_667,&p_813->g_667,(void*)0,&p_813->g_667,&p_813->g_667,(void*)0,&p_813->g_667,&p_813->g_667};
            int32_t **l_705 = &l_706[0];
            uint32_t ***l_709 = &l_340;
            int i;
            for (p_813->g_191 = 0; (p_813->g_191 >= 53); p_813->g_191 = safe_add_func_uint8_t_u_u(p_813->g_191, 9))
            { /* block id: 293 */
                int8_t l_700[5][10] = {{1L,0L,1L,1L,0L,1L,1L,0L,1L,1L},{1L,0L,1L,1L,0L,1L,1L,0L,1L,1L},{1L,0L,1L,1L,0L,1L,1L,0L,1L,1L},{1L,0L,1L,1L,0L,1L,1L,0L,1L,1L},{1L,0L,1L,1L,0L,1L,1L,0L,1L,1L}};
                int32_t **l_704 = (void*)0;
                int32_t ***l_703 = &l_704;
                int i, j;
                (1 + 1);
            }
            (*l_452) |= ((*p_32) = ((FAKE_DIVERGE(p_813->group_0_offset, get_group_id(0), 10) == 0xB549L) >= (0x6D1FB7FE5058E3B6L & (safe_add_func_int8_t_s_s((((*l_709) = &l_341) == &p_813->g_677[6][6][2]), ((*l_453) = (-6L)))))));
            p_813->g_439.s2 = (*p_32);
        }
        return (*p_813->g_23);
    }
    else
    { /* block id: 309 */
        int8_t l_710[2];
        int i;
        for (i = 0; i < 2; i++)
            l_710[i] = 0x0EL;
        l_710[0] &= (*p_32);
        return (*p_813->g_23);
    }
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t * func_34(int32_t ** p_35, uint8_t * p_36, uint32_t  p_37, struct S1 * p_813)
{ /* block id: 37 */
    return &p_813->g_73;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t ** func_38(union U0  p_39, uint8_t * p_40, int32_t ** p_41, struct S1 * p_813)
{ /* block id: 23 */
    if ((atomic_inc(&p_813->g_atomic_input[78 * get_linear_group_id() + 61]) == 8))
    { /* block id: 25 */
        int16_t l_61[4][7][6] = {{{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L}},{{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L}},{{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L}},{{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L},{(-1L),0x496AL,0x7358L,0x2724L,8L,0x4064L}}};
        uint64_t l_62 = 0x6757AC12ABB1EF36L;
        int32_t l_63 = 0x004519F0L;
        uint32_t l_64 = 0x1B595946L;
        int8_t l_65 = 0x4AL;
        VECTOR(int32_t, 8) l_66 = (VECTOR(int32_t, 8))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0L), 0L), 0L, 2L, 0L);
        VECTOR(int16_t, 16) l_67 = (VECTOR(int16_t, 16))(0x1F3DL, (VECTOR(int16_t, 4))(0x1F3DL, (VECTOR(int16_t, 2))(0x1F3DL, 0x0E6AL), 0x0E6AL), 0x0E6AL, 0x1F3DL, 0x0E6AL, (VECTOR(int16_t, 2))(0x1F3DL, 0x0E6AL), (VECTOR(int16_t, 2))(0x1F3DL, 0x0E6AL), 0x1F3DL, 0x0E6AL, 0x1F3DL, 0x0E6AL);
        VECTOR(uint16_t, 16) l_68 = (VECTOR(uint16_t, 16))(0x1B5EL, (VECTOR(uint16_t, 4))(0x1B5EL, (VECTOR(uint16_t, 2))(0x1B5EL, 0x2544L), 0x2544L), 0x2544L, 0x1B5EL, 0x2544L, (VECTOR(uint16_t, 2))(0x1B5EL, 0x2544L), (VECTOR(uint16_t, 2))(0x1B5EL, 0x2544L), 0x1B5EL, 0x2544L, 0x1B5EL, 0x2544L);
        uint32_t l_69 = 9UL;
        uint32_t l_70 = 0xC9AC803BL;
        int i, j, k;
        l_61[2][2][1] = 0x4357240EL;
        l_63 = l_62;
        l_69 = ((l_65 = (l_64 = 2L)) , ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))((-7L), 0x70833481L, 9L, ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 4))(l_66.s0361)), ((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 16))(l_67.s276d00daeff8ee85)).odd, ((VECTOR(uint16_t, 2))(l_68.see)).yyxxxxxy))).even))), 0L)).s14)).lo);
        l_70 = (-10L);
        unsigned int result = 0;
        int l_61_i0, l_61_i1, l_61_i2;
        for (l_61_i0 = 0; l_61_i0 < 4; l_61_i0++) {
            for (l_61_i1 = 0; l_61_i1 < 7; l_61_i1++) {
                for (l_61_i2 = 0; l_61_i2 < 6; l_61_i2++) {
                    result += l_61[l_61_i0][l_61_i1][l_61_i2];
                }
            }
        }
        result += l_62;
        result += l_63;
        result += l_64;
        result += l_65;
        result += l_66.s7;
        result += l_66.s6;
        result += l_66.s5;
        result += l_66.s4;
        result += l_66.s3;
        result += l_66.s2;
        result += l_66.s1;
        result += l_66.s0;
        result += l_67.sf;
        result += l_67.se;
        result += l_67.sd;
        result += l_67.sc;
        result += l_67.sb;
        result += l_67.sa;
        result += l_67.s9;
        result += l_67.s8;
        result += l_67.s7;
        result += l_67.s6;
        result += l_67.s5;
        result += l_67.s4;
        result += l_67.s3;
        result += l_67.s2;
        result += l_67.s1;
        result += l_67.s0;
        result += l_68.sf;
        result += l_68.se;
        result += l_68.sd;
        result += l_68.sc;
        result += l_68.sb;
        result += l_68.sa;
        result += l_68.s9;
        result += l_68.s8;
        result += l_68.s7;
        result += l_68.s6;
        result += l_68.s5;
        result += l_68.s4;
        result += l_68.s3;
        result += l_68.s2;
        result += l_68.s1;
        result += l_68.s0;
        result += l_69;
        result += l_70;
        atomic_add(&p_813->g_special_values[78 * get_linear_group_id() + 61], result);
    }
    else
    { /* block id: 32 */
        (1 + 1);
    }
    return &p_813->g_24;
}


/* ------------------------------------------ */
/* 
 * reads : p_813->g_51 p_813->g_19 p_813->g_54 p_813->g_23 p_813->g_24
 * writes: p_813->g_4
 */
union U0  func_42(int32_t  p_43, int32_t  p_44, int32_t  p_45, struct S1 * p_813)
{ /* block id: 13 */
    union U0 l_58 = {0x9A2DD318L};
    if (p_43)
    { /* block id: 14 */
        return p_813->g_51;
    }
    else
    { /* block id: 16 */
        int32_t *l_57 = &p_813->g_4;
        int32_t **l_56 = &l_57;
        (*l_56) = func_52(p_813->g_19, p_813);
    }
    return l_58;
}


/* ------------------------------------------ */
/* 
 * reads : p_813->g_54 p_813->g_23 p_813->g_24
 * writes: p_813->g_4 p_813->g_224
 */
int32_t * func_52(int16_t  p_53, struct S1 * p_813)
{ /* block id: 17 */
    int32_t *l_55[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    (**p_813->g_23) = ((VECTOR(int32_t, 16))(p_813->g_54.s3153115774462517)).s7;
    return l_55[4];
}


/* ------------------------------------------ */
/* 
 * reads : p_813->g_73 p_813->g_23 p_813->g_24 p_813->g_4
 * writes: p_813->g_73 p_813->g_4
 */
int32_t  func_74(int32_t  p_75, int16_t * p_76, uint32_t  p_77, int32_t *** p_78, uint8_t * p_79, struct S1 * p_813)
{ /* block id: 65 */
    for (p_813->g_73 = 0; (p_813->g_73 > 33); p_813->g_73 = safe_add_func_uint8_t_u_u(p_813->g_73, 1))
    { /* block id: 68 */
        if ((**p_813->g_23))
            break;
    }
    for (p_813->g_4 = (-4); (p_813->g_4 == 10); p_813->g_4++)
    { /* block id: 73 */
        return (***p_78);
    }
    return (**p_813->g_23);
}


/* ------------------------------------------ */
/* 
 * reads : p_813->g_4 p_813->g_120 p_813->g_117 p_813->g_116 p_813->g_72 p_813->g_19 p_813->g_140 p_813->g_comm_values p_813->g_23 p_813->g_24 p_813->g_51.f0 p_813->g_73 p_813->g_154
 * writes: p_813->g_120 p_813->g_123 p_813->g_73 p_813->g_19 p_813->g_154
 */
int16_t * func_94(int16_t * p_95, uint64_t  p_96, struct S1 * p_813)
{ /* block id: 42 */
    uint16_t l_102 = 7UL;
    uint32_t *l_103[9][2] = {{&p_813->g_19,&p_813->g_19},{&p_813->g_19,&p_813->g_19},{&p_813->g_19,&p_813->g_19},{&p_813->g_19,&p_813->g_19},{&p_813->g_19,&p_813->g_19},{&p_813->g_19,&p_813->g_19},{&p_813->g_19,&p_813->g_19},{&p_813->g_19,&p_813->g_19},{&p_813->g_19,&p_813->g_19}};
    int32_t l_104 = 7L;
    VECTOR(int8_t, 8) l_126 = (VECTOR(int8_t, 8))(0x0FL, (VECTOR(int8_t, 4))(0x0FL, (VECTOR(int8_t, 2))(0x0FL, (-5L)), (-5L)), (-5L), 0x0FL, (-5L));
    int32_t **l_127 = (void*)0;
    int32_t **l_129 = &p_813->g_24;
    int32_t ***l_128 = &l_129;
    int32_t *l_130 = &p_813->g_120;
    uint16_t *l_153 = &l_102;
    int i, j;
    p_813->g_123 = func_97((safe_mod_func_uint32_t_u_u((l_104 = l_102), (+l_102))), p_813->g_4, p_813);
    (*l_130) = (safe_mul_func_int16_t_s_s((((VECTOR(int8_t, 16))(l_126.s6727275471030247)).s0 >= (p_813->g_117.s3 ^ (FAKE_DIVERGE(p_813->group_0_offset, get_group_id(0), 10) , (l_127 != ((*l_128) = (FAKE_DIVERGE(p_813->global_0_offset, get_global_id(0), 10) , l_127)))))), p_813->g_116.y));
    p_813->g_154 &= (0x65F8L < ((*l_153) = (safe_add_func_int8_t_s_s((-10L), (((*p_813->g_72) = (safe_lshift_func_uint16_t_u_s(((FAKE_DIVERGE(p_813->local_0_offset, get_local_id(0), 10) , &l_127) != &p_813->g_23), ((void*)0 == &l_128)))) , ((((((*l_130) = 0x1BL) , ((safe_unary_minus_func_int16_t_s((((((safe_add_func_uint64_t_u_u((safe_div_func_uint32_t_u_u(((p_813->g_19 |= 0x518D9D7CL) , (((VECTOR(int32_t, 4))(p_813->g_140.xxxy)).x >= ((safe_div_func_uint64_t_u_u(((safe_mod_func_uint8_t_u_u((((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(0UL, (safe_lshift_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(8UL, 0xDD16L)).lo, (safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_813->global_1_offset, get_global_id(1), 10), (safe_sub_func_int16_t_s_s((((p_96 == p_813->g_comm_values[p_813->tid]) | p_96) >= p_96), p_96)))))) || (**p_813->g_23)), p_96)), 4294967288UL, 0x96A0B7F3L)).z, 4294967288UL, 0xCD69FAF8L, ((VECTOR(uint32_t, 4))(0x0D721F5EL)), 0xB6F6008FL)).s0573154704246577, ((VECTOR(uint32_t, 16))(0xA1556E8DL))))).s1 , 248UL), p_813->g_117.s2)) , p_96), 0xCE19DED147D6BF53L)) , (*p_813->g_24)))), p_96)), p_813->g_51.f0)) , (*l_128)) == (*l_128)) < 0x16A4FF77B4A3B70CL) >= p_96))) , 1L)) , 0x01B76BFB62ABAF8BL) , 0xDA593D3CL) , (*p_813->g_72)))))));
    return p_95;
}


/* ------------------------------------------ */
/* 
 * reads : p_813->g_120
 * writes: p_813->g_120
 */
union U0 * func_97(int32_t  p_98, int64_t  p_99, struct S1 * p_813)
{ /* block id: 44 */
    uint32_t *l_107 = &p_813->g_19;
    VECTOR(int8_t, 16) l_118 = (VECTOR(int8_t, 16))(0x72L, (VECTOR(int8_t, 4))(0x72L, (VECTOR(int8_t, 2))(0x72L, 0x21L), 0x21L), 0x21L, 0x72L, 0x21L, (VECTOR(int8_t, 2))(0x72L, 0x21L), (VECTOR(int8_t, 2))(0x72L, 0x21L), 0x72L, 0x21L, 0x72L, 0x21L);
    int32_t l_119 = 0L;
    int32_t *l_121 = &p_813->g_120;
    union U0 *l_122 = &p_813->g_51;
    int i;
    for (p_98 = 12; (p_98 < 23); p_98 = safe_add_func_int16_t_s_s(p_98, 1))
    { /* block id: 47 */
        uint32_t *l_108 = &p_813->g_19;
        int32_t ***l_111 = (void*)0;
        int32_t ****l_110 = &l_111;
        int32_t **l_113[8][5] = {{(void*)0,(void*)0,&p_813->g_24,&p_813->g_24,&p_813->g_24},{(void*)0,(void*)0,&p_813->g_24,&p_813->g_24,&p_813->g_24},{(void*)0,(void*)0,&p_813->g_24,&p_813->g_24,&p_813->g_24},{(void*)0,(void*)0,&p_813->g_24,&p_813->g_24,&p_813->g_24},{(void*)0,(void*)0,&p_813->g_24,&p_813->g_24,&p_813->g_24},{(void*)0,(void*)0,&p_813->g_24,&p_813->g_24,&p_813->g_24},{(void*)0,(void*)0,&p_813->g_24,&p_813->g_24,&p_813->g_24},{(void*)0,(void*)0,&p_813->g_24,&p_813->g_24,&p_813->g_24}};
        int32_t ***l_112[9] = {&l_113[1][4],&l_113[1][4],&l_113[1][4],&l_113[1][4],&l_113[1][4],&l_113[1][4],&l_113[1][4],&l_113[1][4],&l_113[1][4]};
        int i, j;
        p_813->g_120 &= ((((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 8))(0x5AL, ((void*)0 == l_107), ((VECTOR(int8_t, 4))((((*p_813->g_72) != (l_108 != l_107)) | (((*l_110) = (p_813->g_109 = &p_813->g_23)) != (p_98 , (l_112[5] = &p_813->g_23)))), (l_119 ^= ((safe_mul_func_int16_t_s_s((+(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 4))(p_813->g_116.xxyx)).ywwyxwxzwxzzxzyy, ((VECTOR(int8_t, 2))(p_813->g_117.s35)).xxyyyxyyxxyyxxxx, ((VECTOR(int8_t, 2))(l_118.s65)).yyyyyyyxxyyxxyyy))).s0 | (0x48L == (*p_813->g_72)))), l_118.s8)) & 0x4EL)), (-1L), 1L)), 0x43L, 1L)).even, ((VECTOR(int8_t, 4))(0x6AL))))).w < l_118.s3) || 9UL);
    }
    l_121 = &l_119;
    return l_122;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[156];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 156; i++)
            l_comm_values[i] = 1;
    struct S1 c_814;
    struct S1* p_813 = &c_814;
    struct S1 c_815 = {
        0x3B3152C5L, // p_813->g_4
        0x9BACDE9E843631E1L, // p_813->g_12
        0UL, // p_813->g_19
        &p_813->g_4, // p_813->g_24
        &p_813->g_24, // p_813->g_23
        {{{0L,0x6525L,0x6DE2L},{0L,0x6525L,0x6DE2L},{0L,0x6525L,0x6DE2L},{0L,0x6525L,0x6DE2L}},{{0L,0x6525L,0x6DE2L},{0L,0x6525L,0x6DE2L},{0L,0x6525L,0x6DE2L},{0L,0x6525L,0x6DE2L}},{{0L,0x6525L,0x6DE2L},{0L,0x6525L,0x6DE2L},{0L,0x6525L,0x6DE2L},{0L,0x6525L,0x6DE2L}}}, // p_813->g_50
        {1UL}, // p_813->g_51
        (VECTOR(int32_t, 8))(0x18E961CAL, (VECTOR(int32_t, 4))(0x18E961CAL, (VECTOR(int32_t, 2))(0x18E961CAL, 0x674E6A83L), 0x674E6A83L), 0x674E6A83L, 0x18E961CAL, 0x674E6A83L), // p_813->g_54
        0x1BL, // p_813->g_73
        &p_813->g_73, // p_813->g_72
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x49E84290L), 0x49E84290L), 0x49E84290L, 0L, 0x49E84290L), // p_813->g_91
        1UL, // p_813->g_93
        (void*)0, // p_813->g_109
        (VECTOR(int8_t, 2))(0x48L, 0x05L), // p_813->g_116
        (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x72L), 0x72L), 0x72L, (-1L), 0x72L), // p_813->g_117
        1L, // p_813->g_120
        &p_813->g_51, // p_813->g_123
        (VECTOR(int32_t, 2))(0L, 1L), // p_813->g_140
        0x48L, // p_813->g_154
        18446744073709551612UL, // p_813->g_163
        (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-1L)), (-1L)), // p_813->g_174
        65528UL, // p_813->g_191
        &p_813->g_191, // p_813->g_190
        (VECTOR(int64_t, 8))(0x6ECB2F27A7921FCFL, (VECTOR(int64_t, 4))(0x6ECB2F27A7921FCFL, (VECTOR(int64_t, 2))(0x6ECB2F27A7921FCFL, 0L), 0L), 0L, 0x6ECB2F27A7921FCFL, 0L), // p_813->g_222
        0x4C8CD9B6L, // p_813->g_224
        (VECTOR(int16_t, 8))(0x725DL, (VECTOR(int16_t, 4))(0x725DL, (VECTOR(int16_t, 2))(0x725DL, (-1L)), (-1L)), (-1L), 0x725DL, (-1L)), // p_813->g_225
        5L, // p_813->g_234
        0x7D8582BFL, // p_813->g_244
        (void*)0, // p_813->g_253
        8UL, // p_813->g_281
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x9EB05264L), 0x9EB05264L), 0x9EB05264L, 4294967295UL, 0x9EB05264L, (VECTOR(uint32_t, 2))(4294967295UL, 0x9EB05264L), (VECTOR(uint32_t, 2))(4294967295UL, 0x9EB05264L), 4294967295UL, 0x9EB05264L, 4294967295UL, 0x9EB05264L), // p_813->g_286
        (VECTOR(int32_t, 4))(0x5C0AC00EL, (VECTOR(int32_t, 2))(0x5C0AC00EL, 8L), 8L), // p_813->g_289
        (VECTOR(uint64_t, 4))(0x43F16F39F61A1B21L, (VECTOR(uint64_t, 2))(0x43F16F39F61A1B21L, 0x17F19FA5CB6F0BD8L), 0x17F19FA5CB6F0BD8L), // p_813->g_310
        0xCF68401850DD78E7L, // p_813->g_317
        (VECTOR(int8_t, 2))(0x4FL, 1L), // p_813->g_361
        (VECTOR(int64_t, 4))((-6L), (VECTOR(int64_t, 2))((-6L), 3L), 3L), // p_813->g_364
        {4UL,4UL,4UL,4UL,4UL,4UL,4UL}, // p_813->g_379
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-3L)), (-3L)), // p_813->g_389
        0x39BC6D59L, // p_813->g_394
        (-1L), // p_813->g_413
        (VECTOR(uint8_t, 2))(0x99L, 0xB4L), // p_813->g_418
        (VECTOR(uint8_t, 8))(0xC8L, (VECTOR(uint8_t, 4))(0xC8L, (VECTOR(uint8_t, 2))(0xC8L, 0x69L), 0x69L), 0x69L, 0xC8L, 0x69L), // p_813->g_423
        (VECTOR(int32_t, 16))(0x1309A9FCL, (VECTOR(int32_t, 4))(0x1309A9FCL, (VECTOR(int32_t, 2))(0x1309A9FCL, 0L), 0L), 0L, 0x1309A9FCL, 0L, (VECTOR(int32_t, 2))(0x1309A9FCL, 0L), (VECTOR(int32_t, 2))(0x1309A9FCL, 0L), 0x1309A9FCL, 0L, 0x1309A9FCL, 0L), // p_813->g_439
        (VECTOR(uint32_t, 16))(7UL, (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 0UL), 0UL), 0UL, 7UL, 0UL, (VECTOR(uint32_t, 2))(7UL, 0UL), (VECTOR(uint32_t, 2))(7UL, 0UL), 7UL, 0UL, 7UL, 0UL), // p_813->g_442
        (void*)0, // p_813->g_445
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int32_t, 2))(1L, (-1L)), (VECTOR(int32_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L)), // p_813->g_458
        (VECTOR(int16_t, 4))(0x7B8EL, (VECTOR(int16_t, 2))(0x7B8EL, 0x7B65L), 0x7B65L), // p_813->g_459
        (VECTOR(int16_t, 2))(0x7A69L, 0x2C9AL), // p_813->g_462
        (-1L), // p_813->g_474
        (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0L), 0L), // p_813->g_531
        &p_813->g_123, // p_813->g_552
        (VECTOR(uint16_t, 2))(0xDEB9L, 0x4E9FL), // p_813->g_568
        (VECTOR(int64_t, 2))((-9L), 8L), // p_813->g_571
        (VECTOR(int64_t, 2))((-5L), (-1L)), // p_813->g_572
        (VECTOR(int64_t, 2))(1L, 0x020A3FACDA1F8194L), // p_813->g_578
        (VECTOR(int64_t, 2))(0L, 0x43148B9EDB1F0673L), // p_813->g_579
        (VECTOR(int64_t, 4))(0x1F1D7D37819C7E81L, (VECTOR(int64_t, 2))(0x1F1D7D37819C7E81L, 5L), 5L), // p_813->g_581
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65527UL), 65527UL), 65527UL, 65535UL, 65527UL, (VECTOR(uint16_t, 2))(65535UL, 65527UL), (VECTOR(uint16_t, 2))(65535UL, 65527UL), 65535UL, 65527UL, 65535UL, 65527UL), // p_813->g_587
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_813->g_591
        0x1C4CL, // p_813->g_597
        0UL, // p_813->g_600
        0x2EA9904AC5167DC5L, // p_813->g_610
        (VECTOR(uint16_t, 4))(0xE218L, (VECTOR(uint16_t, 2))(0xE218L, 1UL), 1UL), // p_813->g_642
        0x45F107DEL, // p_813->g_645
        (VECTOR(int32_t, 16))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x2B54C323L), 0x2B54C323L), 0x2B54C323L, (-4L), 0x2B54C323L, (VECTOR(int32_t, 2))((-4L), 0x2B54C323L), (VECTOR(int32_t, 2))((-4L), 0x2B54C323L), (-4L), 0x2B54C323L, (-4L), 0x2B54C323L), // p_813->g_653
        (-5L), // p_813->g_667
        0UL, // p_813->g_678
        {{{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678}},{{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678}},{{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678}},{{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678}},{{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678}},{{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678}},{{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678}},{{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678}},{{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678},{&p_813->g_678,&p_813->g_678,&p_813->g_678}}}, // p_813->g_677
        {&p_813->g_677[2][5][0],&p_813->g_677[2][5][0],&p_813->g_677[2][5][0],&p_813->g_677[2][5][0],&p_813->g_677[2][5][0],&p_813->g_677[2][5][0],&p_813->g_677[2][5][0],&p_813->g_677[2][5][0]}, // p_813->g_676
        0x20L, // p_813->g_685
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 5UL), 5UL), 5UL, 0UL, 5UL), // p_813->g_686
        (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x78L), 0x78L), // p_813->g_730
        (VECTOR(uint64_t, 8))(18446744073709551607UL, (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 18446744073709551606UL), 18446744073709551606UL), 18446744073709551606UL, 18446744073709551607UL, 18446744073709551606UL), // p_813->g_734
        (VECTOR(uint64_t, 8))(0x311F852033AF75E3L, (VECTOR(uint64_t, 4))(0x311F852033AF75E3L, (VECTOR(uint64_t, 2))(0x311F852033AF75E3L, 0x5BAA603726A1B114L), 0x5BAA603726A1B114L), 0x5BAA603726A1B114L, 0x311F852033AF75E3L, 0x5BAA603726A1B114L), // p_813->g_735
        (VECTOR(int16_t, 8))(0x7310L, (VECTOR(int16_t, 4))(0x7310L, (VECTOR(int16_t, 2))(0x7310L, 0x6689L), 0x6689L), 0x6689L, 0x7310L, 0x6689L), // p_813->g_764
        (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, 0x6FFCL), 0x6FFCL), // p_813->g_766
        (VECTOR(int64_t, 4))(0x5658A590D79BDD44L, (VECTOR(int64_t, 2))(0x5658A590D79BDD44L, (-8L)), (-8L)), // p_813->g_769
        (VECTOR(uint32_t, 2))(0UL, 0xA84FDF60L), // p_813->g_804
        (VECTOR(int32_t, 16))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 1L), 1L), 1L, (-5L), 1L, (VECTOR(int32_t, 2))((-5L), 1L), (VECTOR(int32_t, 2))((-5L), 1L), (-5L), 1L, (-5L), 1L), // p_813->g_808
        (VECTOR(int32_t, 8))(0x4521DFB6L, (VECTOR(int32_t, 4))(0x4521DFB6L, (VECTOR(int32_t, 2))(0x4521DFB6L, 4L), 4L), 4L, 0x4521DFB6L, 4L), // p_813->g_809
        (VECTOR(int32_t, 4))(0x54CDFDBDL, (VECTOR(int32_t, 2))(0x54CDFDBDL, (-1L)), (-1L)), // p_813->g_810
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x3F4DDD4EL), 0x3F4DDD4EL), 0x3F4DDD4EL, (-1L), 0x3F4DDD4EL, (VECTOR(int32_t, 2))((-1L), 0x3F4DDD4EL), (VECTOR(int32_t, 2))((-1L), 0x3F4DDD4EL), (-1L), 0x3F4DDD4EL, (-1L), 0x3F4DDD4EL), // p_813->g_812
        0, // p_813->v_collective
        sequence_input[get_global_id(0)], // p_813->global_0_offset
        sequence_input[get_global_id(1)], // p_813->global_1_offset
        sequence_input[get_global_id(2)], // p_813->global_2_offset
        sequence_input[get_local_id(0)], // p_813->local_0_offset
        sequence_input[get_local_id(1)], // p_813->local_1_offset
        sequence_input[get_local_id(2)], // p_813->local_2_offset
        sequence_input[get_group_id(0)], // p_813->group_0_offset
        sequence_input[get_group_id(1)], // p_813->group_1_offset
        sequence_input[get_group_id(2)], // p_813->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 156)), permutations[0][get_linear_local_id()])), // p_813->tid
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_814 = c_815;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_813);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_813->g_4, "p_813->g_4", print_hash_value);
    transparent_crc(p_813->g_12, "p_813->g_12", print_hash_value);
    transparent_crc(p_813->g_19, "p_813->g_19", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_813->g_50[i][j][k], "p_813->g_50[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_813->g_51.f0, "p_813->g_51.f0", print_hash_value);
    transparent_crc(p_813->g_54.s0, "p_813->g_54.s0", print_hash_value);
    transparent_crc(p_813->g_54.s1, "p_813->g_54.s1", print_hash_value);
    transparent_crc(p_813->g_54.s2, "p_813->g_54.s2", print_hash_value);
    transparent_crc(p_813->g_54.s3, "p_813->g_54.s3", print_hash_value);
    transparent_crc(p_813->g_54.s4, "p_813->g_54.s4", print_hash_value);
    transparent_crc(p_813->g_54.s5, "p_813->g_54.s5", print_hash_value);
    transparent_crc(p_813->g_54.s6, "p_813->g_54.s6", print_hash_value);
    transparent_crc(p_813->g_54.s7, "p_813->g_54.s7", print_hash_value);
    transparent_crc(p_813->g_73, "p_813->g_73", print_hash_value);
    transparent_crc(p_813->g_91.s0, "p_813->g_91.s0", print_hash_value);
    transparent_crc(p_813->g_91.s1, "p_813->g_91.s1", print_hash_value);
    transparent_crc(p_813->g_91.s2, "p_813->g_91.s2", print_hash_value);
    transparent_crc(p_813->g_91.s3, "p_813->g_91.s3", print_hash_value);
    transparent_crc(p_813->g_91.s4, "p_813->g_91.s4", print_hash_value);
    transparent_crc(p_813->g_91.s5, "p_813->g_91.s5", print_hash_value);
    transparent_crc(p_813->g_91.s6, "p_813->g_91.s6", print_hash_value);
    transparent_crc(p_813->g_91.s7, "p_813->g_91.s7", print_hash_value);
    transparent_crc(p_813->g_93, "p_813->g_93", print_hash_value);
    transparent_crc(p_813->g_116.x, "p_813->g_116.x", print_hash_value);
    transparent_crc(p_813->g_116.y, "p_813->g_116.y", print_hash_value);
    transparent_crc(p_813->g_117.s0, "p_813->g_117.s0", print_hash_value);
    transparent_crc(p_813->g_117.s1, "p_813->g_117.s1", print_hash_value);
    transparent_crc(p_813->g_117.s2, "p_813->g_117.s2", print_hash_value);
    transparent_crc(p_813->g_117.s3, "p_813->g_117.s3", print_hash_value);
    transparent_crc(p_813->g_117.s4, "p_813->g_117.s4", print_hash_value);
    transparent_crc(p_813->g_117.s5, "p_813->g_117.s5", print_hash_value);
    transparent_crc(p_813->g_117.s6, "p_813->g_117.s6", print_hash_value);
    transparent_crc(p_813->g_117.s7, "p_813->g_117.s7", print_hash_value);
    transparent_crc(p_813->g_120, "p_813->g_120", print_hash_value);
    transparent_crc(p_813->g_140.x, "p_813->g_140.x", print_hash_value);
    transparent_crc(p_813->g_140.y, "p_813->g_140.y", print_hash_value);
    transparent_crc(p_813->g_154, "p_813->g_154", print_hash_value);
    transparent_crc(p_813->g_163, "p_813->g_163", print_hash_value);
    transparent_crc(p_813->g_174.x, "p_813->g_174.x", print_hash_value);
    transparent_crc(p_813->g_174.y, "p_813->g_174.y", print_hash_value);
    transparent_crc(p_813->g_174.z, "p_813->g_174.z", print_hash_value);
    transparent_crc(p_813->g_174.w, "p_813->g_174.w", print_hash_value);
    transparent_crc(p_813->g_191, "p_813->g_191", print_hash_value);
    transparent_crc(p_813->g_222.s0, "p_813->g_222.s0", print_hash_value);
    transparent_crc(p_813->g_222.s1, "p_813->g_222.s1", print_hash_value);
    transparent_crc(p_813->g_222.s2, "p_813->g_222.s2", print_hash_value);
    transparent_crc(p_813->g_222.s3, "p_813->g_222.s3", print_hash_value);
    transparent_crc(p_813->g_222.s4, "p_813->g_222.s4", print_hash_value);
    transparent_crc(p_813->g_222.s5, "p_813->g_222.s5", print_hash_value);
    transparent_crc(p_813->g_222.s6, "p_813->g_222.s6", print_hash_value);
    transparent_crc(p_813->g_222.s7, "p_813->g_222.s7", print_hash_value);
    transparent_crc(p_813->g_224, "p_813->g_224", print_hash_value);
    transparent_crc(p_813->g_225.s0, "p_813->g_225.s0", print_hash_value);
    transparent_crc(p_813->g_225.s1, "p_813->g_225.s1", print_hash_value);
    transparent_crc(p_813->g_225.s2, "p_813->g_225.s2", print_hash_value);
    transparent_crc(p_813->g_225.s3, "p_813->g_225.s3", print_hash_value);
    transparent_crc(p_813->g_225.s4, "p_813->g_225.s4", print_hash_value);
    transparent_crc(p_813->g_225.s5, "p_813->g_225.s5", print_hash_value);
    transparent_crc(p_813->g_225.s6, "p_813->g_225.s6", print_hash_value);
    transparent_crc(p_813->g_225.s7, "p_813->g_225.s7", print_hash_value);
    transparent_crc(p_813->g_234, "p_813->g_234", print_hash_value);
    transparent_crc(p_813->g_244, "p_813->g_244", print_hash_value);
    transparent_crc(p_813->g_281, "p_813->g_281", print_hash_value);
    transparent_crc(p_813->g_286.s0, "p_813->g_286.s0", print_hash_value);
    transparent_crc(p_813->g_286.s1, "p_813->g_286.s1", print_hash_value);
    transparent_crc(p_813->g_286.s2, "p_813->g_286.s2", print_hash_value);
    transparent_crc(p_813->g_286.s3, "p_813->g_286.s3", print_hash_value);
    transparent_crc(p_813->g_286.s4, "p_813->g_286.s4", print_hash_value);
    transparent_crc(p_813->g_286.s5, "p_813->g_286.s5", print_hash_value);
    transparent_crc(p_813->g_286.s6, "p_813->g_286.s6", print_hash_value);
    transparent_crc(p_813->g_286.s7, "p_813->g_286.s7", print_hash_value);
    transparent_crc(p_813->g_286.s8, "p_813->g_286.s8", print_hash_value);
    transparent_crc(p_813->g_286.s9, "p_813->g_286.s9", print_hash_value);
    transparent_crc(p_813->g_286.sa, "p_813->g_286.sa", print_hash_value);
    transparent_crc(p_813->g_286.sb, "p_813->g_286.sb", print_hash_value);
    transparent_crc(p_813->g_286.sc, "p_813->g_286.sc", print_hash_value);
    transparent_crc(p_813->g_286.sd, "p_813->g_286.sd", print_hash_value);
    transparent_crc(p_813->g_286.se, "p_813->g_286.se", print_hash_value);
    transparent_crc(p_813->g_286.sf, "p_813->g_286.sf", print_hash_value);
    transparent_crc(p_813->g_289.x, "p_813->g_289.x", print_hash_value);
    transparent_crc(p_813->g_289.y, "p_813->g_289.y", print_hash_value);
    transparent_crc(p_813->g_289.z, "p_813->g_289.z", print_hash_value);
    transparent_crc(p_813->g_289.w, "p_813->g_289.w", print_hash_value);
    transparent_crc(p_813->g_310.x, "p_813->g_310.x", print_hash_value);
    transparent_crc(p_813->g_310.y, "p_813->g_310.y", print_hash_value);
    transparent_crc(p_813->g_310.z, "p_813->g_310.z", print_hash_value);
    transparent_crc(p_813->g_310.w, "p_813->g_310.w", print_hash_value);
    transparent_crc(p_813->g_317, "p_813->g_317", print_hash_value);
    transparent_crc(p_813->g_361.x, "p_813->g_361.x", print_hash_value);
    transparent_crc(p_813->g_361.y, "p_813->g_361.y", print_hash_value);
    transparent_crc(p_813->g_364.x, "p_813->g_364.x", print_hash_value);
    transparent_crc(p_813->g_364.y, "p_813->g_364.y", print_hash_value);
    transparent_crc(p_813->g_364.z, "p_813->g_364.z", print_hash_value);
    transparent_crc(p_813->g_364.w, "p_813->g_364.w", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_813->g_379[i], "p_813->g_379[i]", print_hash_value);

    }
    transparent_crc(p_813->g_389.x, "p_813->g_389.x", print_hash_value);
    transparent_crc(p_813->g_389.y, "p_813->g_389.y", print_hash_value);
    transparent_crc(p_813->g_389.z, "p_813->g_389.z", print_hash_value);
    transparent_crc(p_813->g_389.w, "p_813->g_389.w", print_hash_value);
    transparent_crc(p_813->g_394, "p_813->g_394", print_hash_value);
    transparent_crc(p_813->g_413, "p_813->g_413", print_hash_value);
    transparent_crc(p_813->g_418.x, "p_813->g_418.x", print_hash_value);
    transparent_crc(p_813->g_418.y, "p_813->g_418.y", print_hash_value);
    transparent_crc(p_813->g_423.s0, "p_813->g_423.s0", print_hash_value);
    transparent_crc(p_813->g_423.s1, "p_813->g_423.s1", print_hash_value);
    transparent_crc(p_813->g_423.s2, "p_813->g_423.s2", print_hash_value);
    transparent_crc(p_813->g_423.s3, "p_813->g_423.s3", print_hash_value);
    transparent_crc(p_813->g_423.s4, "p_813->g_423.s4", print_hash_value);
    transparent_crc(p_813->g_423.s5, "p_813->g_423.s5", print_hash_value);
    transparent_crc(p_813->g_423.s6, "p_813->g_423.s6", print_hash_value);
    transparent_crc(p_813->g_423.s7, "p_813->g_423.s7", print_hash_value);
    transparent_crc(p_813->g_439.s0, "p_813->g_439.s0", print_hash_value);
    transparent_crc(p_813->g_439.s1, "p_813->g_439.s1", print_hash_value);
    transparent_crc(p_813->g_439.s2, "p_813->g_439.s2", print_hash_value);
    transparent_crc(p_813->g_439.s3, "p_813->g_439.s3", print_hash_value);
    transparent_crc(p_813->g_439.s4, "p_813->g_439.s4", print_hash_value);
    transparent_crc(p_813->g_439.s5, "p_813->g_439.s5", print_hash_value);
    transparent_crc(p_813->g_439.s6, "p_813->g_439.s6", print_hash_value);
    transparent_crc(p_813->g_439.s7, "p_813->g_439.s7", print_hash_value);
    transparent_crc(p_813->g_439.s8, "p_813->g_439.s8", print_hash_value);
    transparent_crc(p_813->g_439.s9, "p_813->g_439.s9", print_hash_value);
    transparent_crc(p_813->g_439.sa, "p_813->g_439.sa", print_hash_value);
    transparent_crc(p_813->g_439.sb, "p_813->g_439.sb", print_hash_value);
    transparent_crc(p_813->g_439.sc, "p_813->g_439.sc", print_hash_value);
    transparent_crc(p_813->g_439.sd, "p_813->g_439.sd", print_hash_value);
    transparent_crc(p_813->g_439.se, "p_813->g_439.se", print_hash_value);
    transparent_crc(p_813->g_439.sf, "p_813->g_439.sf", print_hash_value);
    transparent_crc(p_813->g_442.s0, "p_813->g_442.s0", print_hash_value);
    transparent_crc(p_813->g_442.s1, "p_813->g_442.s1", print_hash_value);
    transparent_crc(p_813->g_442.s2, "p_813->g_442.s2", print_hash_value);
    transparent_crc(p_813->g_442.s3, "p_813->g_442.s3", print_hash_value);
    transparent_crc(p_813->g_442.s4, "p_813->g_442.s4", print_hash_value);
    transparent_crc(p_813->g_442.s5, "p_813->g_442.s5", print_hash_value);
    transparent_crc(p_813->g_442.s6, "p_813->g_442.s6", print_hash_value);
    transparent_crc(p_813->g_442.s7, "p_813->g_442.s7", print_hash_value);
    transparent_crc(p_813->g_442.s8, "p_813->g_442.s8", print_hash_value);
    transparent_crc(p_813->g_442.s9, "p_813->g_442.s9", print_hash_value);
    transparent_crc(p_813->g_442.sa, "p_813->g_442.sa", print_hash_value);
    transparent_crc(p_813->g_442.sb, "p_813->g_442.sb", print_hash_value);
    transparent_crc(p_813->g_442.sc, "p_813->g_442.sc", print_hash_value);
    transparent_crc(p_813->g_442.sd, "p_813->g_442.sd", print_hash_value);
    transparent_crc(p_813->g_442.se, "p_813->g_442.se", print_hash_value);
    transparent_crc(p_813->g_442.sf, "p_813->g_442.sf", print_hash_value);
    transparent_crc(p_813->g_458.s0, "p_813->g_458.s0", print_hash_value);
    transparent_crc(p_813->g_458.s1, "p_813->g_458.s1", print_hash_value);
    transparent_crc(p_813->g_458.s2, "p_813->g_458.s2", print_hash_value);
    transparent_crc(p_813->g_458.s3, "p_813->g_458.s3", print_hash_value);
    transparent_crc(p_813->g_458.s4, "p_813->g_458.s4", print_hash_value);
    transparent_crc(p_813->g_458.s5, "p_813->g_458.s5", print_hash_value);
    transparent_crc(p_813->g_458.s6, "p_813->g_458.s6", print_hash_value);
    transparent_crc(p_813->g_458.s7, "p_813->g_458.s7", print_hash_value);
    transparent_crc(p_813->g_458.s8, "p_813->g_458.s8", print_hash_value);
    transparent_crc(p_813->g_458.s9, "p_813->g_458.s9", print_hash_value);
    transparent_crc(p_813->g_458.sa, "p_813->g_458.sa", print_hash_value);
    transparent_crc(p_813->g_458.sb, "p_813->g_458.sb", print_hash_value);
    transparent_crc(p_813->g_458.sc, "p_813->g_458.sc", print_hash_value);
    transparent_crc(p_813->g_458.sd, "p_813->g_458.sd", print_hash_value);
    transparent_crc(p_813->g_458.se, "p_813->g_458.se", print_hash_value);
    transparent_crc(p_813->g_458.sf, "p_813->g_458.sf", print_hash_value);
    transparent_crc(p_813->g_459.x, "p_813->g_459.x", print_hash_value);
    transparent_crc(p_813->g_459.y, "p_813->g_459.y", print_hash_value);
    transparent_crc(p_813->g_459.z, "p_813->g_459.z", print_hash_value);
    transparent_crc(p_813->g_459.w, "p_813->g_459.w", print_hash_value);
    transparent_crc(p_813->g_462.x, "p_813->g_462.x", print_hash_value);
    transparent_crc(p_813->g_462.y, "p_813->g_462.y", print_hash_value);
    transparent_crc(p_813->g_474, "p_813->g_474", print_hash_value);
    transparent_crc(p_813->g_531.x, "p_813->g_531.x", print_hash_value);
    transparent_crc(p_813->g_531.y, "p_813->g_531.y", print_hash_value);
    transparent_crc(p_813->g_531.z, "p_813->g_531.z", print_hash_value);
    transparent_crc(p_813->g_531.w, "p_813->g_531.w", print_hash_value);
    transparent_crc(p_813->g_568.x, "p_813->g_568.x", print_hash_value);
    transparent_crc(p_813->g_568.y, "p_813->g_568.y", print_hash_value);
    transparent_crc(p_813->g_571.x, "p_813->g_571.x", print_hash_value);
    transparent_crc(p_813->g_571.y, "p_813->g_571.y", print_hash_value);
    transparent_crc(p_813->g_572.x, "p_813->g_572.x", print_hash_value);
    transparent_crc(p_813->g_572.y, "p_813->g_572.y", print_hash_value);
    transparent_crc(p_813->g_578.x, "p_813->g_578.x", print_hash_value);
    transparent_crc(p_813->g_578.y, "p_813->g_578.y", print_hash_value);
    transparent_crc(p_813->g_579.x, "p_813->g_579.x", print_hash_value);
    transparent_crc(p_813->g_579.y, "p_813->g_579.y", print_hash_value);
    transparent_crc(p_813->g_581.x, "p_813->g_581.x", print_hash_value);
    transparent_crc(p_813->g_581.y, "p_813->g_581.y", print_hash_value);
    transparent_crc(p_813->g_581.z, "p_813->g_581.z", print_hash_value);
    transparent_crc(p_813->g_581.w, "p_813->g_581.w", print_hash_value);
    transparent_crc(p_813->g_587.s0, "p_813->g_587.s0", print_hash_value);
    transparent_crc(p_813->g_587.s1, "p_813->g_587.s1", print_hash_value);
    transparent_crc(p_813->g_587.s2, "p_813->g_587.s2", print_hash_value);
    transparent_crc(p_813->g_587.s3, "p_813->g_587.s3", print_hash_value);
    transparent_crc(p_813->g_587.s4, "p_813->g_587.s4", print_hash_value);
    transparent_crc(p_813->g_587.s5, "p_813->g_587.s5", print_hash_value);
    transparent_crc(p_813->g_587.s6, "p_813->g_587.s6", print_hash_value);
    transparent_crc(p_813->g_587.s7, "p_813->g_587.s7", print_hash_value);
    transparent_crc(p_813->g_587.s8, "p_813->g_587.s8", print_hash_value);
    transparent_crc(p_813->g_587.s9, "p_813->g_587.s9", print_hash_value);
    transparent_crc(p_813->g_587.sa, "p_813->g_587.sa", print_hash_value);
    transparent_crc(p_813->g_587.sb, "p_813->g_587.sb", print_hash_value);
    transparent_crc(p_813->g_587.sc, "p_813->g_587.sc", print_hash_value);
    transparent_crc(p_813->g_587.sd, "p_813->g_587.sd", print_hash_value);
    transparent_crc(p_813->g_587.se, "p_813->g_587.se", print_hash_value);
    transparent_crc(p_813->g_587.sf, "p_813->g_587.sf", print_hash_value);
    transparent_crc(p_813->g_597, "p_813->g_597", print_hash_value);
    transparent_crc(p_813->g_600, "p_813->g_600", print_hash_value);
    transparent_crc(p_813->g_610, "p_813->g_610", print_hash_value);
    transparent_crc(p_813->g_642.x, "p_813->g_642.x", print_hash_value);
    transparent_crc(p_813->g_642.y, "p_813->g_642.y", print_hash_value);
    transparent_crc(p_813->g_642.z, "p_813->g_642.z", print_hash_value);
    transparent_crc(p_813->g_642.w, "p_813->g_642.w", print_hash_value);
    transparent_crc(p_813->g_645, "p_813->g_645", print_hash_value);
    transparent_crc(p_813->g_653.s0, "p_813->g_653.s0", print_hash_value);
    transparent_crc(p_813->g_653.s1, "p_813->g_653.s1", print_hash_value);
    transparent_crc(p_813->g_653.s2, "p_813->g_653.s2", print_hash_value);
    transparent_crc(p_813->g_653.s3, "p_813->g_653.s3", print_hash_value);
    transparent_crc(p_813->g_653.s4, "p_813->g_653.s4", print_hash_value);
    transparent_crc(p_813->g_653.s5, "p_813->g_653.s5", print_hash_value);
    transparent_crc(p_813->g_653.s6, "p_813->g_653.s6", print_hash_value);
    transparent_crc(p_813->g_653.s7, "p_813->g_653.s7", print_hash_value);
    transparent_crc(p_813->g_653.s8, "p_813->g_653.s8", print_hash_value);
    transparent_crc(p_813->g_653.s9, "p_813->g_653.s9", print_hash_value);
    transparent_crc(p_813->g_653.sa, "p_813->g_653.sa", print_hash_value);
    transparent_crc(p_813->g_653.sb, "p_813->g_653.sb", print_hash_value);
    transparent_crc(p_813->g_653.sc, "p_813->g_653.sc", print_hash_value);
    transparent_crc(p_813->g_653.sd, "p_813->g_653.sd", print_hash_value);
    transparent_crc(p_813->g_653.se, "p_813->g_653.se", print_hash_value);
    transparent_crc(p_813->g_653.sf, "p_813->g_653.sf", print_hash_value);
    transparent_crc(p_813->g_667, "p_813->g_667", print_hash_value);
    transparent_crc(p_813->g_678, "p_813->g_678", print_hash_value);
    transparent_crc(p_813->g_685, "p_813->g_685", print_hash_value);
    transparent_crc(p_813->g_686.s0, "p_813->g_686.s0", print_hash_value);
    transparent_crc(p_813->g_686.s1, "p_813->g_686.s1", print_hash_value);
    transparent_crc(p_813->g_686.s2, "p_813->g_686.s2", print_hash_value);
    transparent_crc(p_813->g_686.s3, "p_813->g_686.s3", print_hash_value);
    transparent_crc(p_813->g_686.s4, "p_813->g_686.s4", print_hash_value);
    transparent_crc(p_813->g_686.s5, "p_813->g_686.s5", print_hash_value);
    transparent_crc(p_813->g_686.s6, "p_813->g_686.s6", print_hash_value);
    transparent_crc(p_813->g_686.s7, "p_813->g_686.s7", print_hash_value);
    transparent_crc(p_813->g_730.x, "p_813->g_730.x", print_hash_value);
    transparent_crc(p_813->g_730.y, "p_813->g_730.y", print_hash_value);
    transparent_crc(p_813->g_730.z, "p_813->g_730.z", print_hash_value);
    transparent_crc(p_813->g_730.w, "p_813->g_730.w", print_hash_value);
    transparent_crc(p_813->g_734.s0, "p_813->g_734.s0", print_hash_value);
    transparent_crc(p_813->g_734.s1, "p_813->g_734.s1", print_hash_value);
    transparent_crc(p_813->g_734.s2, "p_813->g_734.s2", print_hash_value);
    transparent_crc(p_813->g_734.s3, "p_813->g_734.s3", print_hash_value);
    transparent_crc(p_813->g_734.s4, "p_813->g_734.s4", print_hash_value);
    transparent_crc(p_813->g_734.s5, "p_813->g_734.s5", print_hash_value);
    transparent_crc(p_813->g_734.s6, "p_813->g_734.s6", print_hash_value);
    transparent_crc(p_813->g_734.s7, "p_813->g_734.s7", print_hash_value);
    transparent_crc(p_813->g_735.s0, "p_813->g_735.s0", print_hash_value);
    transparent_crc(p_813->g_735.s1, "p_813->g_735.s1", print_hash_value);
    transparent_crc(p_813->g_735.s2, "p_813->g_735.s2", print_hash_value);
    transparent_crc(p_813->g_735.s3, "p_813->g_735.s3", print_hash_value);
    transparent_crc(p_813->g_735.s4, "p_813->g_735.s4", print_hash_value);
    transparent_crc(p_813->g_735.s5, "p_813->g_735.s5", print_hash_value);
    transparent_crc(p_813->g_735.s6, "p_813->g_735.s6", print_hash_value);
    transparent_crc(p_813->g_735.s7, "p_813->g_735.s7", print_hash_value);
    transparent_crc(p_813->g_764.s0, "p_813->g_764.s0", print_hash_value);
    transparent_crc(p_813->g_764.s1, "p_813->g_764.s1", print_hash_value);
    transparent_crc(p_813->g_764.s2, "p_813->g_764.s2", print_hash_value);
    transparent_crc(p_813->g_764.s3, "p_813->g_764.s3", print_hash_value);
    transparent_crc(p_813->g_764.s4, "p_813->g_764.s4", print_hash_value);
    transparent_crc(p_813->g_764.s5, "p_813->g_764.s5", print_hash_value);
    transparent_crc(p_813->g_764.s6, "p_813->g_764.s6", print_hash_value);
    transparent_crc(p_813->g_764.s7, "p_813->g_764.s7", print_hash_value);
    transparent_crc(p_813->g_766.x, "p_813->g_766.x", print_hash_value);
    transparent_crc(p_813->g_766.y, "p_813->g_766.y", print_hash_value);
    transparent_crc(p_813->g_766.z, "p_813->g_766.z", print_hash_value);
    transparent_crc(p_813->g_766.w, "p_813->g_766.w", print_hash_value);
    transparent_crc(p_813->g_769.x, "p_813->g_769.x", print_hash_value);
    transparent_crc(p_813->g_769.y, "p_813->g_769.y", print_hash_value);
    transparent_crc(p_813->g_769.z, "p_813->g_769.z", print_hash_value);
    transparent_crc(p_813->g_769.w, "p_813->g_769.w", print_hash_value);
    transparent_crc(p_813->g_804.x, "p_813->g_804.x", print_hash_value);
    transparent_crc(p_813->g_804.y, "p_813->g_804.y", print_hash_value);
    transparent_crc(p_813->g_808.s0, "p_813->g_808.s0", print_hash_value);
    transparent_crc(p_813->g_808.s1, "p_813->g_808.s1", print_hash_value);
    transparent_crc(p_813->g_808.s2, "p_813->g_808.s2", print_hash_value);
    transparent_crc(p_813->g_808.s3, "p_813->g_808.s3", print_hash_value);
    transparent_crc(p_813->g_808.s4, "p_813->g_808.s4", print_hash_value);
    transparent_crc(p_813->g_808.s5, "p_813->g_808.s5", print_hash_value);
    transparent_crc(p_813->g_808.s6, "p_813->g_808.s6", print_hash_value);
    transparent_crc(p_813->g_808.s7, "p_813->g_808.s7", print_hash_value);
    transparent_crc(p_813->g_808.s8, "p_813->g_808.s8", print_hash_value);
    transparent_crc(p_813->g_808.s9, "p_813->g_808.s9", print_hash_value);
    transparent_crc(p_813->g_808.sa, "p_813->g_808.sa", print_hash_value);
    transparent_crc(p_813->g_808.sb, "p_813->g_808.sb", print_hash_value);
    transparent_crc(p_813->g_808.sc, "p_813->g_808.sc", print_hash_value);
    transparent_crc(p_813->g_808.sd, "p_813->g_808.sd", print_hash_value);
    transparent_crc(p_813->g_808.se, "p_813->g_808.se", print_hash_value);
    transparent_crc(p_813->g_808.sf, "p_813->g_808.sf", print_hash_value);
    transparent_crc(p_813->g_809.s0, "p_813->g_809.s0", print_hash_value);
    transparent_crc(p_813->g_809.s1, "p_813->g_809.s1", print_hash_value);
    transparent_crc(p_813->g_809.s2, "p_813->g_809.s2", print_hash_value);
    transparent_crc(p_813->g_809.s3, "p_813->g_809.s3", print_hash_value);
    transparent_crc(p_813->g_809.s4, "p_813->g_809.s4", print_hash_value);
    transparent_crc(p_813->g_809.s5, "p_813->g_809.s5", print_hash_value);
    transparent_crc(p_813->g_809.s6, "p_813->g_809.s6", print_hash_value);
    transparent_crc(p_813->g_809.s7, "p_813->g_809.s7", print_hash_value);
    transparent_crc(p_813->g_810.x, "p_813->g_810.x", print_hash_value);
    transparent_crc(p_813->g_810.y, "p_813->g_810.y", print_hash_value);
    transparent_crc(p_813->g_810.z, "p_813->g_810.z", print_hash_value);
    transparent_crc(p_813->g_810.w, "p_813->g_810.w", print_hash_value);
    transparent_crc(p_813->g_812.s0, "p_813->g_812.s0", print_hash_value);
    transparent_crc(p_813->g_812.s1, "p_813->g_812.s1", print_hash_value);
    transparent_crc(p_813->g_812.s2, "p_813->g_812.s2", print_hash_value);
    transparent_crc(p_813->g_812.s3, "p_813->g_812.s3", print_hash_value);
    transparent_crc(p_813->g_812.s4, "p_813->g_812.s4", print_hash_value);
    transparent_crc(p_813->g_812.s5, "p_813->g_812.s5", print_hash_value);
    transparent_crc(p_813->g_812.s6, "p_813->g_812.s6", print_hash_value);
    transparent_crc(p_813->g_812.s7, "p_813->g_812.s7", print_hash_value);
    transparent_crc(p_813->g_812.s8, "p_813->g_812.s8", print_hash_value);
    transparent_crc(p_813->g_812.s9, "p_813->g_812.s9", print_hash_value);
    transparent_crc(p_813->g_812.sa, "p_813->g_812.sa", print_hash_value);
    transparent_crc(p_813->g_812.sb, "p_813->g_812.sb", print_hash_value);
    transparent_crc(p_813->g_812.sc, "p_813->g_812.sc", print_hash_value);
    transparent_crc(p_813->g_812.sd, "p_813->g_812.sd", print_hash_value);
    transparent_crc(p_813->g_812.se, "p_813->g_812.se", print_hash_value);
    transparent_crc(p_813->g_812.sf, "p_813->g_812.sf", print_hash_value);
    transparent_crc(p_813->v_collective, "p_813->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 78; i++)
            transparent_crc(p_813->g_special_values[i + 78 * get_linear_group_id()], "p_813->g_special_values[i + 78 * get_linear_group_id()]", print_hash_value);
    transparent_crc(p_813->l_comm_values[get_linear_local_id()], "p_813->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_813->g_comm_values[get_linear_group_id() * 156 + get_linear_local_id()], "p_813->g_comm_values[get_linear_group_id() * 156 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
