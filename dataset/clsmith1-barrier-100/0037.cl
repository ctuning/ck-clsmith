// ---fake_divergence ---inter_thread_comm -g 63,12,3 -l 3,6,3
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

__constant uint32_t permutations[10][54] = {
{39,23,2,26,8,5,4,3,18,38,9,49,45,15,21,46,7,10,41,16,31,29,24,0,48,14,19,50,52,35,28,17,51,42,47,25,22,1,20,53,13,34,40,44,43,6,32,30,36,27,37,11,33,12}, // permutation 0
{1,23,15,2,16,14,43,47,27,35,28,46,11,30,9,3,5,39,19,17,22,40,21,48,51,38,12,25,8,36,13,41,10,50,29,52,44,42,53,31,34,7,37,6,4,0,45,24,49,20,26,33,18,32}, // permutation 1
{15,6,0,31,19,44,8,26,23,2,30,53,27,40,52,41,4,42,5,34,17,48,14,18,45,12,11,28,24,25,13,50,29,21,36,9,10,46,32,1,16,3,43,37,7,22,47,51,20,49,39,33,35,38}, // permutation 2
{31,10,41,13,44,1,52,6,2,7,21,51,19,35,46,30,48,26,17,22,23,18,8,34,45,15,9,39,3,25,53,32,24,28,16,40,50,11,12,49,27,20,5,33,47,29,36,43,4,37,42,14,0,38}, // permutation 3
{27,32,52,23,7,31,0,5,19,37,14,11,40,44,4,43,6,21,39,35,24,22,30,38,26,33,50,47,17,36,51,45,10,18,3,1,25,2,15,28,34,53,20,46,49,16,8,12,48,41,29,9,42,13}, // permutation 4
{39,43,3,15,32,9,1,35,34,18,41,33,53,50,44,27,42,37,5,22,45,28,20,17,4,47,6,31,11,14,49,51,40,26,0,46,10,2,29,12,52,25,19,7,30,48,36,38,8,16,13,24,23,21}, // permutation 5
{28,24,25,45,26,4,31,1,11,15,35,0,41,23,52,38,48,44,29,30,37,20,13,7,42,33,8,46,49,36,14,10,40,43,19,6,9,39,12,50,5,34,47,27,2,53,21,17,32,18,51,3,22,16}, // permutation 6
{46,8,20,38,26,14,43,49,30,6,39,31,52,28,33,0,29,47,21,7,10,23,24,32,17,12,4,35,13,44,18,37,48,19,16,40,53,50,34,1,11,22,15,42,36,27,3,5,45,51,25,41,9,2}, // permutation 7
{52,0,28,50,19,9,16,14,49,33,41,20,31,51,25,1,32,17,53,47,44,23,40,30,45,5,38,24,6,34,11,18,13,37,39,46,42,2,35,10,12,21,8,48,4,15,36,22,43,27,26,3,7,29}, // permutation 8
{45,38,33,47,28,25,8,9,15,53,46,39,36,48,42,12,7,26,2,6,21,31,18,19,40,5,0,43,10,23,4,41,1,37,20,11,49,24,17,22,13,3,44,29,30,50,35,52,34,14,16,32,51,27} // permutation 9
};

// Seed: 37

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint32_t  f0;
   int64_t  f1;
   int32_t  f2;
   int16_t  f3;
   uint64_t  f4;
   int8_t  f5;
   int8_t  f6;
};

struct S1 {
   volatile uint32_t  f0;
   uint16_t  f1;
   volatile int64_t  f2;
   uint8_t  f3;
   volatile int64_t  f4;
};

union U2 {
   volatile uint16_t  f0;
   uint32_t  f1;
   volatile int32_t  f2;
};

struct S3 {
    uint32_t g_2[5];
    int32_t g_3;
    volatile struct S1 g_48;
    uint8_t g_50;
    int32_t g_55[8];
    int32_t g_64;
    volatile struct S1 * volatile g_93;
    struct S1 *g_112;
    struct S1 g_115;
    int32_t *g_118;
    int32_t *g_119;
    int32_t ** volatile g_120;
    int32_t ** volatile g_122[2][6];
    int32_t ** volatile g_152[2];
    int16_t g_172;
    uint32_t g_174;
    volatile uint32_t g_205;
    volatile uint32_t *g_204;
    volatile uint32_t * volatile * volatile g_203;
    volatile uint32_t * volatile * volatile * volatile g_207;
    int8_t g_219;
    int16_t g_220;
    struct S1 g_223;
    int32_t ** volatile g_225;
    struct S0 g_260;
    uint32_t g_269[2][10];
    volatile struct S1 g_282;
    int64_t *g_285;
    union U2 g_309;
    union U2 *g_311[3];
    union U2 ** volatile g_310;
    union U2 g_328;
    struct S1 g_343;
    volatile struct S0 g_344[6][10][4];
    volatile struct S1 g_371[2];
    volatile struct S1 g_385;
    volatile uint16_t * volatile g_418;
    struct S0 g_419;
    struct S1 g_441[3][2][6];
    struct S1 * volatile g_442;
    int32_t ** volatile g_463;
    struct S0 g_470;
    struct S0 g_505;
    struct S0 *g_504;
    uint64_t g_561;
    int32_t * volatile g_583[8][3][6];
    int32_t * volatile g_584;
    int32_t * volatile g_609;
    int32_t ** volatile g_610[8][7];
    int32_t ** volatile g_611;
    struct S0 g_636;
    uint32_t *g_690;
    uint32_t **g_689;
    uint32_t ** volatile *g_688;
    uint32_t ** volatile **g_687;
    struct S1 g_696;
    struct S0 **g_699;
    struct S0 *** volatile g_698;
    int32_t ** volatile g_701;
    int32_t ** volatile g_712;
    volatile struct S1 * volatile g_713[5];
    volatile struct S1 * volatile g_714[10][4];
    volatile struct S1 g_715;
    volatile struct S1 g_716[10];
    volatile struct S1 * volatile g_717;
    int8_t **g_728;
    struct S0 ** volatile g_741;
    volatile struct S0 g_754;
    struct S0 g_769[2];
    volatile union U2 g_772;
    volatile union U2 g_775;
    uint16_t *g_792;
    uint16_t *g_836;
    int32_t g_841;
    union U2 g_843[6];
    volatile struct S1 g_871;
    int16_t g_902[1][9][5];
    int16_t g_926;
    struct S1 g_933;
    volatile struct S1 g_943;
    int32_t g_949;
    int16_t * volatile g_952;
    int16_t * volatile *g_951;
    struct S1 g_984;
    struct S0 ***g_987;
    int64_t g_1014[9][2][7];
    struct S1 g_1019;
    volatile struct S1 g_1024;
    volatile struct S1 g_1031;
    volatile struct S1 g_1047;
    volatile struct S1 * volatile g_1048;
    volatile int32_t * volatile **g_1060;
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
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
struct S0  func_1(struct S3 * p_1105);
int32_t * func_4(int64_t  p_5, uint32_t  p_6, int32_t  p_7, struct S3 * p_1105);
int64_t  func_8(int32_t * p_9, uint64_t  p_10, int32_t  p_11, int32_t * p_12, uint16_t  p_13, struct S3 * p_1105);
int32_t * func_14(int64_t  p_15, int32_t * p_16, uint64_t  p_17, int64_t  p_18, uint32_t  p_19, struct S3 * p_1105);
int32_t * func_20(int32_t * p_21, struct S3 * p_1105);
uint8_t  func_25(int32_t  p_26, int32_t  p_27, int64_t  p_28, uint8_t  p_29, int32_t * p_30, struct S3 * p_1105);
int32_t  func_32(int32_t * p_33, int16_t  p_34, int32_t  p_35, struct S3 * p_1105);
int32_t * func_36(int32_t * p_37, int32_t * p_38, struct S3 * p_1105);
int32_t * func_40(int16_t  p_41, uint8_t  p_42, int16_t  p_43, int32_t * p_44, struct S3 * p_1105);
int32_t  func_45(int32_t * p_46, uint8_t  p_47, struct S3 * p_1105);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1105->g_3 p_1105->g_285 p_1105->g_260.f1 p_1105->g_561 p_1105->g_470.f3 p_1105->g_636.f2 p_1105->g_441.f0 p_1105->g_64 p_1105->g_1024 p_1105->g_115.f3 p_1105->g_1031 p_1105->g_769.f2 p_1105->g_769.f4 p_1105->g_689 p_1105->g_690 p_1105->g_174 p_1105->g_207 p_1105->g_203 p_1105->g_204 p_1105->g_205 p_1105->g_951 p_1105->g_952 p_1105->g_260.f3 p_1105->g_843.f0 p_1105->g_836 p_1105->g_343.f1 p_1105->g_769.f3 p_1105->g_841 p_1105->g_1047 p_1105->g_1048 p_1105->g_716.f3 p_1105->g_50 p_1105->g_419.f4 p_1105->g_260.f6 p_1105->g_1060 p_1105->g_505.f3 p_1105->g_984.f3 p_1105->g_505.f4 p_1105->g_792 p_1105->g_223.f1 p_1105->g_219 p_1105->g_441.f2 p_1105->g_871.f1 p_1105->g_119 p_1105->g_55 p_1105->g_120 p_1105->g_118 p_1105->g_115.f1 p_1105->g_2 p_1105->g_987 p_1105->g_699 p_1105->g_504 p_1105->g_505
 * writes: p_1105->g_3 p_1105->g_561 p_1105->g_636.f2 p_1105->g_64 p_1105->g_115.f3 p_1105->g_112 p_1105->g_174 p_1105->g_441.f1 p_1105->g_841 p_1105->g_385 p_1105->g_260.f6
 */
struct S0  func_1(struct S3 * p_1105)
{ /* block id: 4 */
    int16_t l_22 = 0x5AE4L;
    uint64_t l_221 = 18446744073709551615UL;
    uint32_t l_228 = 1UL;
    uint8_t l_257 = 0xECL;
    int32_t l_541 = 0x607375C0L;
    uint64_t *l_813 = (void*)0;
    uint32_t ***l_819[7] = {&p_1105->g_689,&p_1105->g_689,&p_1105->g_689,&p_1105->g_689,&p_1105->g_689,&p_1105->g_689,&p_1105->g_689};
    uint32_t ****l_818 = &l_819[1];
    int32_t l_820 = 5L;
    int32_t l_929 = 0x754E157CL;
    int16_t **l_950 = (void*)0;
    uint16_t l_989 = 0xA01BL;
    int32_t *l_1007 = &p_1105->g_64;
    uint32_t l_1021 = 0xA2E89E90L;
    int32_t l_1044[4] = {(-1L),(-1L),(-1L),(-1L)};
    uint32_t l_1045 = 0x5402EDA6L;
    uint32_t l_1046 = 4294967295UL;
    int32_t l_1070 = 0x4BB10217L;
    int32_t l_1088 = 1L;
    int8_t l_1102 = (-1L);
    int32_t *l_1104 = &l_929;
    int i;
    for (p_1105->g_3 = 1; (p_1105->g_3 <= 4); p_1105->g_3 += 1)
    { /* block id: 7 */
        int32_t *l_31 = &p_1105->g_3;
        int32_t *l_222[2][7] = {{&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_3},{&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_3}};
        int64_t *l_540[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t **l_804 = &l_222[0][2];
        int i, j;
        (1 + 1);
    }
    if (((((l_820 = (safe_add_func_int64_t_s_s((*p_1105->g_285), (0L | ((safe_mul_func_int8_t_s_s(((safe_div_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s((((p_1105->g_561 &= 6UL) || (safe_mod_func_int16_t_s_s((l_541 = ((void*)0 != &p_1105->g_610[7][2])), l_228))) , ((((safe_mod_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), 1L)) > l_257) , l_818) != (void*)0)), 15)), FAKE_DIVERGE(p_1105->local_0_offset, get_local_id(0), 10))) > 0x15L), l_22)) > l_228))))) , p_1105->g_470.f3) , l_257) || 0x16DE4548CD39313CL))
    { /* block id: 421 */
        uint16_t *l_835 = (void*)0;
        union U2 **l_856 = &p_1105->g_311[2];
        int32_t l_868 = 3L;
        int8_t *l_904[9][8][2] = {{{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219}},{{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219}},{{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219}},{{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219}},{{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219}},{{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219}},{{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219}},{{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219}},{{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219},{&p_1105->g_636.f6,&p_1105->g_219}}};
        int32_t l_990[1][3][6] = {{{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}}};
        int32_t *l_1008 = &l_820;
        int64_t *l_1013 = &p_1105->g_1014[2][1][1];
        int8_t l_1017[8];
        int i, j, k;
        for (i = 0; i < 8; i++)
            l_1017[i] = (-2L);
        for (p_1105->g_636.f2 = 0; (p_1105->g_636.f2 <= 2); p_1105->g_636.f2 += 1)
        { /* block id: 424 */
            uint16_t l_844 = 0UL;
            int32_t l_867 = 4L;
            int16_t *l_878 = &p_1105->g_505.f3;
            int16_t *l_879 = &p_1105->g_172;
            uint16_t l_930 = 0xB5A5L;
            int16_t l_953 = (-1L);
            int32_t l_988 = 0x36AAAEC1L;
            struct S0 **l_995 = &p_1105->g_504;
            int64_t *l_1018 = &p_1105->g_470.f1;
            struct S1 *l_1020 = &p_1105->g_441[0][1][3];
            (1 + 1);
        }
        (*l_1007) &= (p_1105->g_441[2][0][4].f0 && l_1021);
    }
    else
    { /* block id: 498 */
        uint8_t *l_1027 = (void*)0;
        struct S1 **l_1030 = &p_1105->g_112;
        int32_t l_1032[8][6] = {{(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)}};
        uint64_t *l_1033 = &l_221;
        int i, j;
        (*l_1007) = (safe_rshift_func_int8_t_s_u(((p_1105->g_1024 , 3UL) || (0x3F8CE8CAL && (l_1032[1][3] = ((p_1105->g_115.f3--) > ((0x5FA7AA52L > ((((*l_1007) <= (GROUP_DIVERGE(2, 1) , (((&p_1105->g_933 != ((*l_1030) = &p_1105->g_343)) , (p_1105->g_1031 , ((*l_1033) |= ((l_1032[1][3] || (*l_1007)) , p_1105->g_769[1].f2)))) && l_1032[0][1]))) && l_1032[1][3]) && (*l_1007))) == p_1105->g_769[1].f4))))), 0));
        p_1105->g_841 ^= (safe_rshift_func_int8_t_s_s((*l_1007), (((**p_1105->g_689) &= (*l_1007)) ^ ((*l_1007) < (((void*)0 != l_1033) | ((***p_1105->g_207) , (l_1032[7][3] = (l_1045 = (((((safe_add_func_int16_t_s_s((0xCBL != (safe_mod_func_uint64_t_u_u(((*l_1007) == ((*p_1105->g_836) = (safe_lshift_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s((&p_1105->g_1014[6][1][3] == (void*)0), (**p_1105->g_951))) && p_1105->g_843[0].f0), (*l_1007))))), l_1032[1][3]))), p_1105->g_343.f1)) >= FAKE_DIVERGE(p_1105->global_0_offset, get_global_id(0), 10)) | p_1105->g_769[1].f3) | GROUP_DIVERGE(0, 1)) < l_1044[3])))))))));
    }
    if (l_1046)
    { /* block id: 510 */
        int32_t l_1053[6];
        int8_t *l_1056 = &p_1105->g_260.f6;
        int32_t ***l_1059 = (void*)0;
        int16_t l_1063 = 0L;
        int i;
        for (i = 0; i < 6; i++)
            l_1053[i] = (-9L);
        (*p_1105->g_1048) = p_1105->g_1047;
        (*l_1007) = (((safe_add_func_uint8_t_u_u(p_1105->g_716[7].f3, ((safe_mul_func_int8_t_s_s(l_1053[1], (!p_1105->g_50))) <= ((safe_mul_func_uint8_t_u_u(p_1105->g_419.f4, (((((*l_1056) |= l_1053[1]) <= ((((**p_1105->g_689) ^= ((l_541 |= (safe_add_func_int8_t_s_s(((l_1059 != p_1105->g_1060) , (safe_rshift_func_int8_t_s_u(l_1063, ((safe_rshift_func_uint8_t_u_u((safe_mod_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s(l_1070, p_1105->g_505.f3)), 0xE727L)), p_1105->g_984.f3)) && (*l_1007))))), (*l_1007)))) < l_1053[4])) < (*l_1007)) & p_1105->g_505.f4)) , &l_820) != (void*)0))) ^ (*p_1105->g_792))))) , l_1059) != (void*)0);
    }
    else
    { /* block id: 516 */
        uint32_t l_1073[10] = {0x9E1D2C74L,0x676BBF65L,0x9E1D2C74L,0x9E1D2C74L,0x676BBF65L,0x9E1D2C74L,0x9E1D2C74L,0x676BBF65L,0x9E1D2C74L,0x9E1D2C74L};
        int32_t *l_1076 = &p_1105->g_636.f2;
        int32_t *l_1083 = (void*)0;
        int32_t *l_1084[7] = {&l_929,&l_929,&l_929,&l_929,&l_929,&l_929,&l_929};
        uint32_t ***l_1086 = &p_1105->g_689;
        uint32_t ****l_1085 = &l_1086;
        uint32_t ***l_1087 = &p_1105->g_689;
        int8_t *l_1089 = &p_1105->g_260.f6;
        int32_t **l_1103[4];
        int i;
        for (i = 0; i < 4; i++)
            l_1103[i] = &p_1105->g_119;
        (*l_1007) = (l_1070 &= ((((safe_mul_func_uint16_t_u_u(l_1073[9], (safe_rshift_func_int8_t_s_u(l_1073[9], 2)))) , (l_1076 == ((*l_1007) , func_20(l_1076, p_1105)))) | (safe_rshift_func_uint16_t_u_u(((((*p_1105->g_952) | (((*l_1085) = ((*l_818) = ((p_1105->g_841 = (((((((l_929 = ((safe_sub_func_uint32_t_u_u((**p_1105->g_689), (safe_mod_func_uint32_t_u_u((*l_1007), (*l_1007))))) , 1L)) <= 1L) && p_1105->g_219) , p_1105->g_174) | 0x5A0AL) , (*l_1007)) == (*l_1007))) , (void*)0))) == l_1087)) & (*l_1007)) <= 0x3416CD61B9B81829L), 6))) < (*p_1105->g_285)));
        l_1088 ^= ((*l_1007) = (*l_1007));
        l_1104 = func_14(((p_1105->g_441[2][0][4].f2 , ((*l_1089) &= p_1105->g_871.f1)) , (*p_1105->g_285)), &p_1105->g_841, p_1105->g_219, ((0L == (safe_rshift_func_uint16_t_u_s(((safe_mod_func_int8_t_s_s(((((safe_div_func_int8_t_s_s((1L >= ((safe_lshift_func_uint8_t_u_u((safe_mod_func_int8_t_s_s((safe_div_func_int32_t_s_s(((((*l_1085) = (*l_818)) != ((*p_1105->g_792) , (void*)0)) , (*l_1007)), 0x77938D67L)), 1UL)), p_1105->g_260.f1)) , (*l_1007))), l_1102)) != (*l_1007)) || (*l_1007)) , (*l_1007)), p_1105->g_260.f1)) > (*p_1105->g_119)), 2))) > (*p_1105->g_792)), p_1105->g_55[5], p_1105);
    }
    return (***p_1105->g_987);
}


/* ------------------------------------------ */
/* 
 * reads : p_1105->g_260.f6 p_1105->g_712 p_1105->g_119
 * writes: p_1105->g_260.f6
 */
int32_t * func_4(int64_t  p_5, uint32_t  p_6, int32_t  p_7, struct S3 * p_1105)
{ /* block id: 264 */
    int32_t l_548[5];
    uint32_t *l_551 = &p_1105->g_269[1][3];
    int32_t l_564 = 0x22897289L;
    uint32_t l_566 = 0xA0588A8AL;
    int32_t *l_803 = &l_548[3];
    int i;
    for (i = 0; i < 5; i++)
        l_548[i] = 2L;
    for (p_1105->g_260.f6 = 0; (p_1105->g_260.f6 > (-12)); --p_1105->g_260.f6)
    { /* block id: 267 */
        uint64_t *l_560 = &p_1105->g_561;
        int32_t l_562 = 2L;
        int8_t *l_563[6];
        uint16_t *l_565[6][3][7] = {{{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0},{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0},{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0}},{{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0},{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0},{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0}},{{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0},{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0},{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0}},{{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0},{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0},{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0}},{{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0},{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0},{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0}},{{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0},{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0},{(void*)0,&p_1105->g_441[2][0][4].f1,&p_1105->g_223.f1,&p_1105->g_223.f1,&p_1105->g_441[2][0][4].f1,(void*)0,(void*)0}}};
        uint64_t l_580[3];
        uint32_t l_677 = 1UL;
        uint32_t *l_680 = &p_1105->g_269[0][0];
        int32_t l_702 = 0x702773F0L;
        int8_t ***l_729 = &p_1105->g_728;
        int8_t **l_731 = &l_563[3];
        int8_t ***l_730 = &l_731;
        uint8_t l_732[2][4][10] = {{{253UL,253UL,1UL,0x1BL,0x71L,246UL,0x13L,252UL,0x13L,246UL},{253UL,253UL,1UL,0x1BL,0x71L,246UL,0x13L,252UL,0x13L,246UL},{253UL,253UL,1UL,0x1BL,0x71L,246UL,0x13L,252UL,0x13L,246UL},{253UL,253UL,1UL,0x1BL,0x71L,246UL,0x13L,252UL,0x13L,246UL}},{{253UL,253UL,1UL,0x1BL,0x71L,246UL,0x13L,252UL,0x13L,246UL},{253UL,253UL,1UL,0x1BL,0x71L,246UL,0x13L,252UL,0x13L,246UL},{253UL,253UL,1UL,0x1BL,0x71L,246UL,0x13L,252UL,0x13L,246UL},{253UL,253UL,1UL,0x1BL,0x71L,246UL,0x13L,252UL,0x13L,246UL}}};
        int32_t l_733 = 0x33036F19L;
        struct S0 *l_740 = &p_1105->g_470;
        int32_t l_747 = 0L;
        int32_t l_748 = 5L;
        int32_t l_750 = 0x076BEB11L;
        int16_t l_784 = 0x0FB7L;
        union U2 **l_788 = &p_1105->g_311[2];
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_563[i] = &p_1105->g_219;
        for (i = 0; i < 3; i++)
            l_580[i] = 18446744073709551615UL;
        (1 + 1);
    }
    l_548[3] &= l_566;
    return (*p_1105->g_712);
}


/* ------------------------------------------ */
/* 
 * reads : p_1105->g_64 p_1105->g_260 p_1105->g_115.f1 p_1105->g_269 p_1105->g_93 p_1105->g_48 p_1105->g_282 p_1105->g_285 p_1105->g_55 p_1105->g_310 p_1105->g_115.f3 p_1105->g_3 p_1105->g_204 p_1105->g_205 p_1105->g_118 p_1105->g_219 p_1105->g_223.f1 p_1105->g_328 p_1105->g_203 p_1105->g_343 p_1105->g_344 p_1105->g_220 p_1105->g_2 p_1105->g_371 p_1105->g_385
 * writes: p_1105->g_64 p_1105->g_260 p_1105->g_115.f1 p_1105->g_269 p_1105->g_119 p_1105->g_48 p_1105->g_115.f3 p_1105->g_55 p_1105->g_219 p_1105->g_311 p_1105->l_comm_values p_1105->g_343.f3 p_1105->g_309.f1 p_1105->g_220
 */
int64_t  func_8(int32_t * p_9, uint64_t  p_10, int32_t  p_11, int32_t * p_12, uint16_t  p_13, struct S3 * p_1105)
{ /* block id: 118 */
    uint64_t l_265 = 0x9276B277BD7251C7L;
    int32_t l_290 = (-3L);
    int32_t l_293 = 0x5A7C996EL;
    int32_t l_295[1];
    int32_t l_297 = 0x6B03EBD1L;
    uint32_t *l_316 = &p_1105->g_174;
    uint32_t **l_315 = &l_316;
    uint32_t ***l_314 = &l_315;
    uint32_t **l_326 = &l_316;
    uint32_t l_354 = 0xE523E813L;
    int8_t *l_393[3];
    uint8_t l_443 = 0x59L;
    struct S1 *l_488 = (void*)0;
    int i;
    for (i = 0; i < 1; i++)
        l_295[i] = 0x778665C7L;
    for (i = 0; i < 3; i++)
        l_393[i] = &p_1105->g_219;
    for (p_1105->g_64 = (-1); (p_1105->g_64 < (-30)); --p_1105->g_64)
    { /* block id: 121 */
        struct S0 *l_261 = &p_1105->g_260;
        (*l_261) = p_1105->g_260;
    }
    for (p_1105->g_115.f1 = 0; (p_1105->g_115.f1 <= 1); p_1105->g_115.f1 += 1)
    { /* block id: 126 */
        int32_t *l_262 = &p_1105->g_55[4];
        int32_t *l_263 = &p_1105->g_55[6];
        int32_t *l_264[6] = {&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_55[4]};
        uint32_t *l_268 = &p_1105->g_269[1][3];
        int32_t **l_272 = (void*)0;
        int32_t **l_273 = &l_264[5];
        int32_t **l_274 = &p_1105->g_119;
        volatile struct S1 *l_275 = &p_1105->g_48;
        union U2 *l_308 = &p_1105->g_309;
        int i;
        ++l_265;
        (*l_274) = ((*l_273) = (((*l_268)--) , (void*)0));
        (*l_275) = (*p_1105->g_93);
        for (p_13 = 0; (p_13 <= 1); p_13 += 1)
        { /* block id: 134 */
            int32_t l_283 = 0x676BFBB4L;
            uint8_t *l_284 = &p_1105->g_115.f3;
            uint16_t l_288 = 0x50FDL;
            int32_t l_291 = 0x64933B06L;
            int32_t l_294 = 0x673A61B8L;
            int32_t l_300 = 1L;
            int32_t l_302 = 1L;
            int32_t l_303 = 0x3CC2ADB7L;
            int32_t l_304 = (-3L);
            int i, j;
            if ((((safe_mod_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u((((((void*)0 == &p_11) > ((*l_284) = (((safe_mul_func_uint16_t_u_u(((p_1105->g_282 , p_1105->g_282.f2) > FAKE_DIVERGE(p_1105->local_2_offset, get_local_id(2), 10)), l_283)) , 5L) <= (-9L)))) || ((void*)0 != p_1105->g_285)) <= p_11), p_10)), 0x2AL)) || (*l_262)) ^ 1L))
            { /* block id: 136 */
                int8_t *l_289 = &p_1105->g_219;
                int32_t l_292 = 0x66DCB5F9L;
                int32_t l_296[9] = {0x5AE15026L,0x297274D5L,0x5AE15026L,0x5AE15026L,0x297274D5L,0x5AE15026L,0x5AE15026L,0x297274D5L,0x5AE15026L};
                uint32_t **l_324 = (void*)0;
                int16_t *l_327 = (void*)0;
                int8_t l_333 = 0L;
                int i;
                (*l_262) = (p_1105->g_260.f5 <= p_1105->g_260.f4);
                if ((safe_div_func_int8_t_s_s(((*l_289) = l_288), 7UL)))
                { /* block id: 139 */
                    int64_t l_298 = 0x2FFD0E33ADBBC01CL;
                    int32_t l_299 = 0x11362469L;
                    int32_t l_301[3][2];
                    uint16_t l_305 = 0xBFE9L;
                    int i, j;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_301[i][j] = 0x1AD0D8FAL;
                    }
                    l_305++;
                    (*p_1105->g_310) = l_308;
                }
                else
                { /* block id: 142 */
                    uint8_t l_336[9][10][1] = {{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}}};
                    uint64_t *l_366 = &l_265;
                    int64_t *l_367 = (void*)0;
                    int64_t *l_368 = (void*)0;
                    uint8_t *l_369 = &p_1105->g_343.f3;
                    int32_t l_370 = 0x19071B45L;
                    int i, j, k;
                    if ((((*l_284)--) < 0x31L))
                    { /* block id: 144 */
                        uint8_t l_323 = 7UL;
                        uint32_t **l_325 = &l_316;
                        int32_t *l_331 = (void*)0;
                        int32_t *l_332 = &p_1105->g_260.f2;
                        uint32_t l_334 = 0x78932494L;
                        int32_t l_335[9] = {0x0AA566FAL,0x0AA566FAL,0x0AA566FAL,0x0AA566FAL,0x0AA566FAL,0x0AA566FAL,0x0AA566FAL,0x0AA566FAL,0x0AA566FAL};
                        int i;
                        l_296[2] &= (((((p_11 || 0xDCL) , l_314) != &p_1105->g_203) && (*p_12)) < ((((safe_mul_func_uint16_t_u_u(p_1105->g_55[0], 0x79ABL)) < (safe_rshift_func_uint16_t_u_s((safe_mod_func_uint64_t_u_u((((*l_289) &= (((p_13 <= ((*p_1105->g_204) & (*p_1105->g_118))) , (void*)0) == &p_11)) || p_10), p_10)), l_323))) , GROUP_DIVERGE(2, 1)) <= p_1105->g_223.f1));
                        l_334 &= (((p_13 , l_324) != (l_326 = l_325)) , (p_1105->g_3 || ((l_327 == (p_1105->g_328 , ((safe_lshift_func_int8_t_s_u(((*p_1105->g_203) != ((l_333 = ((*l_332) = p_13)) , (p_10 , &p_1105->g_174))), 3)) , &p_1105->g_172))) >= l_302)));
                        (*l_273) = l_331;
                        l_336[2][7][0]++;
                    }
                    else
                    { /* block id: 153 */
                        int32_t l_347[7] = {0x4FC837D2L,0x5115A926L,0x4FC837D2L,0x4FC837D2L,0x5115A926L,0x4FC837D2L,0x4FC837D2L};
                        int i;
                        (*l_263) ^= (((safe_lshift_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_u(p_11, 1)) < ((((*l_275) , p_1105->g_343) , (p_13 , (p_1105->g_344[0][7][3] , l_290))) > ((-1L) > (((safe_mod_func_uint64_t_u_u((+(~p_1105->g_220)), 0x5AD43F3C3C12B8C4L)) > l_347[4]) != p_11)))), p_10)) | l_265) , (*p_9));
                    }
                    l_370 |= (!(safe_add_func_int16_t_s_s((safe_sub_func_uint64_t_u_u((p_11 != 6UL), ((safe_mul_func_uint8_t_u_u(((*l_369) &= (((*l_289) = ((0x900802EDE02F3A05L >= ((*p_1105->g_285) = l_354)) <= ((safe_lshift_func_int16_t_s_s((l_296[6] && (!(safe_mul_func_uint8_t_u_u(((*l_284) = ((((safe_add_func_int64_t_s_s((safe_unary_minus_func_int64_t_s((p_1105->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1105->tid, 54))] = (!(safe_add_func_int16_t_s_s(((+(((p_1105->g_344[0][7][3].f1 & ((*l_366) = GROUP_DIVERGE(0, 1))) > ((*p_1105->g_118) == (~(*p_1105->g_118)))) & (p_11 && 0x6E10F8F6L))) , p_1105->g_115.f1), p_1105->g_260.f6)))))), l_354)) | p_1105->g_269[0][7]) ^ 0x27A52C9B0DF282F3L) && p_1105->g_48.f3)), (*l_263))))), p_13)) | l_297))) , (*l_262))), p_1105->g_55[3])) <= p_1105->g_2[4]))), 0x49EDL)));
                }
            }
            else
            { /* block id: 164 */
                uint32_t l_373 = 1UL;
                struct S0 *l_382 = (void*)0;
                int32_t l_386 = 1L;
                for (l_290 = 0; (l_290 <= 0); l_290 += 1)
                { /* block id: 167 */
                    int i;
                    (*l_275) = p_1105->g_371[0];
                    for (p_1105->g_309.f1 = 0; (p_1105->g_309.f1 <= 0); p_1105->g_309.f1 += 1)
                    { /* block id: 171 */
                        int32_t l_372[3][8][7] = {{{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL}},{{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL}},{{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL},{0L,(-7L),0x0C92ECC8L,3L,0x0B8EF223L,0x3603B3ADL,0x4C41EAECL}}};
                        int i, j, k;
                        (*p_1105->g_118) |= l_295[l_290];
                        l_373--;
                        (*p_9) &= (safe_rshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s(((void*)0 != p_1105->g_118), 0)), 6));
                    }
                    (*p_1105->g_118) = (((1L && (safe_add_func_int64_t_s_s((-9L), ((void*)0 != l_382)))) || (((safe_lshift_func_int16_t_s_s(((((-9L) & 0x2049CB8E67158AE5L) , p_1105->g_385) , (l_386 = l_295[l_290])), 1)) && (((0x9DL || l_293) , (-1L)) | 1L)) != p_13)) , 4L);
                }
            }
        }
    }
    for (p_1105->g_260.f5 = 0; (p_1105->g_260.f5 > (-22)); p_1105->g_260.f5--)
    { /* block id: 184 */
        int32_t *l_389 = &l_295[0];
        int8_t *l_489 = &p_1105->g_470.f5;
        struct S0 *l_503 = &p_1105->g_419;
        struct S0 **l_508[4] = {&p_1105->g_504,&p_1105->g_504,&p_1105->g_504,&p_1105->g_504};
        uint32_t l_538 = 0x2EC443FBL;
        int i;
        (*l_389) |= (*p_9);
        if ((p_13 < 0x49L))
        { /* block id: 186 */
            uint8_t l_390[1];
            int8_t *l_395 = &p_1105->g_260.f5;
            int8_t **l_394 = &l_395;
            int32_t **l_396 = &p_1105->g_119;
            int i;
            for (i = 0; i < 1; i++)
                l_390[i] = 0x44L;
            if (l_390[0])
                break;
            (*p_9) &= (+(p_1105->g_48.f3 | (((((*l_389) , (*l_314)) == (*l_314)) == ((p_11 , l_393[2]) == ((*l_394) = &p_1105->g_219))) | p_11)));
            (*l_396) = func_20(l_389, p_1105);
        }
        else
        { /* block id: 191 */
            int8_t **l_420 = &l_393[2];
            int32_t l_446[7] = {(-2L),(-7L),(-2L),(-2L),(-7L),(-2L),(-2L)};
            int64_t l_482 = 3L;
            int i;
            for (p_1105->g_220 = (-9); (p_1105->g_220 != 16); p_1105->g_220++)
            { /* block id: 194 */
                int32_t **l_417 = &l_389;
                int8_t **l_421 = &l_393[2];
                int32_t l_439 = (-1L);
                for (p_1105->g_260.f1 = (-5); (p_1105->g_260.f1 >= 10); p_1105->g_260.f1++)
                { /* block id: 197 */
                    for (l_293 = (-16); (l_293 != 20); ++l_293)
                    { /* block id: 200 */
                        (*p_9) = (-5L);
                    }
                }
            }
            for (p_1105->g_115.f3 = 0; (p_1105->g_115.f3 > 32); p_1105->g_115.f3++)
            { /* block id: 223 */
                int16_t *l_460 = &p_1105->g_260.f3;
                int64_t *l_461 = &p_1105->g_419.f1;
                int32_t l_462[3][3] = {{0x2A07ADAEL,0x2A07ADAEL,0x2A07ADAEL},{0x2A07ADAEL,0x2A07ADAEL,0x2A07ADAEL},{0x2A07ADAEL,0x2A07ADAEL,0x2A07ADAEL}};
                int32_t l_506 = 3L;
                int8_t *l_512[1][2][10] = {{{&p_1105->g_470.f5,(void*)0,&p_1105->g_419.f6,(void*)0,&p_1105->g_470.f5,&p_1105->g_470.f5,(void*)0,&p_1105->g_419.f6,(void*)0,&p_1105->g_470.f5},{&p_1105->g_470.f5,(void*)0,&p_1105->g_419.f6,(void*)0,&p_1105->g_470.f5,&p_1105->g_470.f5,(void*)0,&p_1105->g_419.f6,(void*)0,&p_1105->g_470.f5}}};
                int i, j, k;
                (*l_389) = (*p_9);
            }
        }
    }
    return p_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_1105->g_120 p_1105->g_118 p_1105->g_64 p_1105->g_219 p_1105->g_115.f1 p_1105->g_2
 * writes:
 */
int32_t * func_14(int64_t  p_15, int32_t * p_16, uint64_t  p_17, int64_t  p_18, uint32_t  p_19, struct S3 * p_1105)
{ /* block id: 107 */
    struct S1 **l_239[3];
    uint32_t *l_242 = (void*)0;
    uint32_t **l_241[1];
    uint32_t ***l_240 = &l_241[0];
    int32_t l_249 = (-5L);
    int32_t l_251 = 0x5A3EA501L;
    int32_t l_252 = 1L;
    int32_t l_253 = (-1L);
    uint16_t l_254 = 0x3992L;
    int i;
    for (i = 0; i < 3; i++)
        l_239[i] = &p_1105->g_112;
    for (i = 0; i < 1; i++)
        l_241[i] = &l_242;
    for (p_19 = (-6); (p_19 == 45); ++p_19)
    { /* block id: 110 */
        int8_t *l_237[2][6] = {{(void*)0,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,(void*)0,(void*)0},{(void*)0,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,(void*)0,(void*)0}};
        int32_t l_238 = 0x1B4DF1B7L;
        uint32_t ****l_243 = &l_240;
        struct S1 *l_248 = &p_1105->g_223;
        int32_t *l_250[7];
        int i, j;
        for (i = 0; i < 7; i++)
            l_250[i] = &p_1105->g_55[1];
        l_251 &= (safe_rshift_func_int16_t_s_u(((safe_mod_func_int8_t_s_s((-10L), (((safe_lshift_func_int8_t_s_s((l_238 = 0x1EL), (((l_239[0] != &p_1105->g_93) <= 0x38C9CE29C19789F8L) == (((*l_243) = l_240) != &p_1105->g_203)))) && ((0x3FA3B0DD65361546L < (+((l_238 = ((!(((safe_div_func_int64_t_s_s((!(((safe_add_func_uint32_t_u_u(((l_248 == l_248) == 0L), p_15)) | (**p_1105->g_120)) && l_249)), 18446744073709551607UL)) || (-7L)) , 7UL)) == p_1105->g_219)) != 0L))) & p_1105->g_115.f1)) | p_15))) || p_1105->g_2[0]), p_17));
        --l_254;
    }
    return p_16;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_20(int32_t * p_21, struct S3 * p_1105)
{ /* block id: 102 */
    uint32_t l_226 = 0x2385D345L;
    int32_t *l_227 = &p_1105->g_64;
    int i, j;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_1105->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 54)), permutations[(safe_mod_func_uint32_t_u_u((~l_226), 10))][(safe_mod_func_uint32_t_u_u(p_1105->tid, 54))]));
    return l_227;
}


/* ------------------------------------------ */
/* 
 * reads : p_1105->g_174
 * writes:
 */
uint8_t  func_25(int32_t  p_26, int32_t  p_27, int64_t  p_28, uint8_t  p_29, int32_t * p_30, struct S3 * p_1105)
{ /* block id: 99 */
    int32_t *l_224 = &p_1105->g_3;
    l_224 = l_224;
    return p_1105->g_174;
}


/* ------------------------------------------ */
/* 
 * reads : p_1105->g_2 p_1105->g_48 p_1105->g_3 p_1105->g_119 p_1105->g_55 p_1105->g_64 p_1105->g_115.f1 p_1105->g_172 p_1105->g_115.f3 p_1105->g_115.f0 p_1105->g_118 p_1105->g_comm_values p_1105->g_203 p_1105->g_207 p_1105->g_50 p_1105->g_220
 * writes: p_1105->g_50 p_1105->g_64 p_1105->g_115.f1 p_1105->g_122 p_1105->g_55 p_1105->g_119 p_1105->g_174 p_1105->g_203 p_1105->l_comm_values p_1105->g_comm_values p_1105->g_219 p_1105->g_220
 */
int32_t  func_32(int32_t * p_33, int16_t  p_34, int32_t  p_35, struct S3 * p_1105)
{ /* block id: 8 */
    int32_t *l_39 = (void*)0;
    uint8_t *l_49[1];
    int32_t l_51 = 0x4A839BB8L;
    int32_t **l_153 = &p_1105->g_119;
    int32_t *l_154 = &p_1105->g_64;
    int32_t *l_155 = (void*)0;
    int32_t *l_156 = &p_1105->g_64;
    int32_t *l_157 = &p_1105->g_64;
    int32_t *l_158[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint64_t l_159 = 18446744073709551612UL;
    uint32_t l_170[5][7] = {{0UL,6UL,1UL,1UL,1UL,6UL,0UL},{0UL,6UL,1UL,1UL,1UL,6UL,0UL},{0UL,6UL,1UL,1UL,1UL,6UL,0UL},{0UL,6UL,1UL,1UL,1UL,6UL,0UL},{0UL,6UL,1UL,1UL,1UL,6UL,0UL}};
    int16_t *l_171[2][7] = {{&p_1105->g_172,&p_1105->g_172,&p_1105->g_172,&p_1105->g_172,&p_1105->g_172,&p_1105->g_172,&p_1105->g_172},{&p_1105->g_172,&p_1105->g_172,&p_1105->g_172,&p_1105->g_172,&p_1105->g_172,&p_1105->g_172,&p_1105->g_172}};
    uint32_t *l_173 = &p_1105->g_174;
    uint16_t *l_175 = &p_1105->g_115.f1;
    uint32_t l_180[1];
    uint32_t l_217 = 4294967288UL;
    int i, j;
    for (i = 0; i < 1; i++)
        l_49[i] = &p_1105->g_50;
    for (i = 0; i < 1; i++)
        l_180[i] = 0x0D1E5C2CL;
    (*l_153) = func_36(l_39, func_40(p_1105->g_2[4], ((func_45(&p_35, (p_1105->g_50 = (l_51 = (&p_35 != (p_1105->g_48 , (void*)0)))), p_1105) > p_1105->g_2[1]) > p_34), p_1105->g_3, &p_1105->g_3, p_1105), p_1105);
    --l_159;
    if ((safe_add_func_uint32_t_u_u((*l_157), (((*l_175) = (safe_add_func_int8_t_s_s((p_34 <= ((p_34 | p_1105->g_115.f1) ^ 0x63CD06E9L)), ((safe_div_func_int32_t_s_s((*l_154), (safe_mul_func_uint8_t_u_u(l_170[2][6], p_35)))) && (((*l_173) = ((((void*)0 != l_171[0][2]) || FAKE_DIVERGE(p_1105->global_2_offset, get_global_id(2), 10)) | p_35)) | p_34))))) >= p_1105->g_48.f4))))
    { /* block id: 74 */
        return (*l_154);
    }
    else
    { /* block id: 76 */
        int16_t l_197 = 0x1ECDL;
        int32_t l_198 = 3L;
        int32_t l_200 = 0L;
        volatile uint32_t * volatile * volatile *l_206 = (void*)0;
        for (p_34 = (-6); (p_34 < (-24)); --p_34)
        { /* block id: 79 */
            uint32_t l_199 = 0UL;
            l_200 ^= (safe_mul_func_uint16_t_u_u((0UL < p_1105->g_172), (p_1105->g_115.f3 | (((~(l_180[0] , p_1105->g_115.f0)) == ((((0UL && (!(((safe_div_func_int32_t_s_s((safe_lshift_func_int8_t_s_s((((l_198 |= ((*l_154) >= (safe_sub_func_int32_t_s_s((*p_1105->g_118), ((safe_mod_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s(((safe_sub_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u((safe_rshift_func_uint8_t_u_s(0x94L, 3)), l_197)), l_197)) && p_1105->g_comm_values[p_1105->tid]), p_1105->g_2[3])), l_197)) , (*p_33)))))) ^ GROUP_DIVERGE(1, 1)) != p_34), l_199)), 0x632F0E82L)) || p_1105->g_3) , p_34))) | p_34) , l_199) >= p_35)) && p_1105->g_48.f3))));
            (*l_153) = (*l_153);
        }
        (*l_156) = ((safe_lshift_func_int8_t_s_s((&p_34 == (void*)0), 0)) & ((void*)0 != &p_1105->g_119));
        (*p_1105->g_207) = p_1105->g_203;
        for (l_200 = 0; (l_200 == (-4)); --l_200)
        { /* block id: 88 */
            int64_t *l_214 = (void*)0;
            int64_t *l_215 = (void*)0;
            int32_t l_216 = 1L;
            int8_t *l_218[2][7][8] = {{{&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219},{&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219},{&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219},{&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219},{&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219},{&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219},{&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219}},{{&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219},{&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219},{&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219},{&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219},{&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219},{&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219},{&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219,&p_1105->g_219}}};
            int i, j, k;
            p_1105->g_220 &= ((safe_div_func_uint32_t_u_u((((p_1105->g_55[1] | (0x483C6933AF73780EL > (safe_add_func_int8_t_s_s((0x7CL == p_1105->g_3), ((p_1105->g_comm_values[p_1105->tid] = (p_1105->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1105->tid, 54))] = p_35)) ^ p_1105->g_48.f4))))) & (p_1105->g_219 = (((((*l_175) = ((l_217 |= (l_216 != ((*l_157) = ((void*)0 == &p_1105->g_172)))) && p_1105->g_115.f1)) , p_1105->g_50) ^ l_216) != 0x425264EAL))) != 0UL), p_1105->g_172)) , (*p_33));
        }
    }
    return (*l_157);
}


/* ------------------------------------------ */
/* 
 * reads : p_1105->g_3 p_1105->g_119 p_1105->g_55
 * writes: p_1105->g_64 p_1105->g_115.f1 p_1105->g_122 p_1105->g_55
 */
int32_t * func_36(int32_t * p_37, int32_t * p_38, struct S3 * p_1105)
{ /* block id: 64 */
    int32_t *l_143 = &p_1105->g_55[2];
    int32_t *l_144 = (void*)0;
    int32_t *l_145 = &p_1105->g_64;
    int32_t *l_146 = &p_1105->g_55[4];
    int32_t *l_147[9][6][4] = {{{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0}},{{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0}},{{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0}},{{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0}},{{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0}},{{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0}},{{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0}},{{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0}},{{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0},{(void*)0,&p_1105->g_55[6],&p_1105->g_55[4],(void*)0}}};
    int64_t l_148[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
    uint8_t l_149 = 255UL;
    int i, j, k;
    for (p_1105->g_64 = 0; p_1105->g_64 < 2; p_1105->g_64 += 1)
    {
        for (p_1105->g_115.f1 = 0; p_1105->g_115.f1 < 6; p_1105->g_115.f1 += 1)
        {
            p_1105->g_122[p_1105->g_64][p_1105->g_115.f1] = &p_1105->g_118;
        }
    }
    (*l_143) |= ((*p_1105->g_119) = (*p_38));
    --l_149;
    return p_37;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_40(int16_t  p_41, uint8_t  p_42, int16_t  p_43, int32_t * p_44, struct S3 * p_1105)
{ /* block id: 14 */
    int32_t *l_54 = &p_1105->g_55[4];
    int32_t *l_56 = &p_1105->g_55[0];
    int32_t *l_57 = (void*)0;
    int32_t *l_58 = &p_1105->g_55[6];
    int32_t *l_59 = (void*)0;
    int32_t l_60 = 0x5FC7A8F6L;
    int32_t *l_61 = (void*)0;
    int32_t l_62 = 0L;
    int32_t *l_63[10] = {&l_62,&l_62,&l_62,&l_62,&l_62,&l_62,&l_62,&l_62,&l_62,&l_62};
    int64_t l_65[8][9] = {{0x62AF0730FA2875F2L,0x74DCC0C03A2C1E63L,(-3L),0L,1L,0x0E5F853116D361F4L,0x588D280D01B1C7CCL,0x7FDB7285802EA210L,(-8L)},{0x62AF0730FA2875F2L,0x74DCC0C03A2C1E63L,(-3L),0L,1L,0x0E5F853116D361F4L,0x588D280D01B1C7CCL,0x7FDB7285802EA210L,(-8L)},{0x62AF0730FA2875F2L,0x74DCC0C03A2C1E63L,(-3L),0L,1L,0x0E5F853116D361F4L,0x588D280D01B1C7CCL,0x7FDB7285802EA210L,(-8L)},{0x62AF0730FA2875F2L,0x74DCC0C03A2C1E63L,(-3L),0L,1L,0x0E5F853116D361F4L,0x588D280D01B1C7CCL,0x7FDB7285802EA210L,(-8L)},{0x62AF0730FA2875F2L,0x74DCC0C03A2C1E63L,(-3L),0L,1L,0x0E5F853116D361F4L,0x588D280D01B1C7CCL,0x7FDB7285802EA210L,(-8L)},{0x62AF0730FA2875F2L,0x74DCC0C03A2C1E63L,(-3L),0L,1L,0x0E5F853116D361F4L,0x588D280D01B1C7CCL,0x7FDB7285802EA210L,(-8L)},{0x62AF0730FA2875F2L,0x74DCC0C03A2C1E63L,(-3L),0L,1L,0x0E5F853116D361F4L,0x588D280D01B1C7CCL,0x7FDB7285802EA210L,(-8L)},{0x62AF0730FA2875F2L,0x74DCC0C03A2C1E63L,(-3L),0L,1L,0x0E5F853116D361F4L,0x588D280D01B1C7CCL,0x7FDB7285802EA210L,(-8L)}};
    uint16_t l_66 = 65528UL;
    int16_t l_74[7][9][4] = {{{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L}},{{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L}},{{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L}},{{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L}},{{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L}},{{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L}},{{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L},{0L,1L,1L,0L}}};
    int8_t l_75[5] = {(-6L),(-6L),(-6L),(-6L),(-6L)};
    int32_t l_76 = 8L;
    uint16_t l_77 = 65534UL;
    uint8_t l_82[8][9] = {{0xFFL,255UL,255UL,0xFFL,0xA0L,0UL,3UL,246UL,0xD9L},{0xFFL,255UL,255UL,0xFFL,0xA0L,0UL,3UL,246UL,0xD9L},{0xFFL,255UL,255UL,0xFFL,0xA0L,0UL,3UL,246UL,0xD9L},{0xFFL,255UL,255UL,0xFFL,0xA0L,0UL,3UL,246UL,0xD9L},{0xFFL,255UL,255UL,0xFFL,0xA0L,0UL,3UL,246UL,0xD9L},{0xFFL,255UL,255UL,0xFFL,0xA0L,0UL,3UL,246UL,0xD9L},{0xFFL,255UL,255UL,0xFFL,0xA0L,0UL,3UL,246UL,0xD9L},{0xFFL,255UL,255UL,0xFFL,0xA0L,0UL,3UL,246UL,0xD9L}};
    struct S1 *l_114[8][4] = {{&p_1105->g_115,&p_1105->g_115,&p_1105->g_115,&p_1105->g_115},{&p_1105->g_115,&p_1105->g_115,&p_1105->g_115,&p_1105->g_115},{&p_1105->g_115,&p_1105->g_115,&p_1105->g_115,&p_1105->g_115},{&p_1105->g_115,&p_1105->g_115,&p_1105->g_115,&p_1105->g_115},{&p_1105->g_115,&p_1105->g_115,&p_1105->g_115,&p_1105->g_115},{&p_1105->g_115,&p_1105->g_115,&p_1105->g_115,&p_1105->g_115},{&p_1105->g_115,&p_1105->g_115,&p_1105->g_115,&p_1105->g_115},{&p_1105->g_115,&p_1105->g_115,&p_1105->g_115,&p_1105->g_115}};
    int i, j, k;
    ++l_66;
    for (l_62 = (-21); (l_62 <= (-1)); l_62 = safe_add_func_uint8_t_u_u(l_62, 8))
    { /* block id: 18 */
        int64_t l_71 = 9L;
        int32_t l_72 = (-1L);
        int32_t l_73[10] = {0x58F69C2BL,0x58F69C2BL,0x58F69C2BL,0x58F69C2BL,0x58F69C2BL,0x58F69C2BL,0x58F69C2BL,0x58F69C2BL,0x58F69C2BL,0x58F69C2BL};
        int64_t l_80 = (-1L);
        int32_t l_81 = 0x67E9A630L;
        uint8_t *l_85 = &l_82[2][8];
        uint8_t *l_86[1][9][9];
        uint8_t **l_87 = &l_86[0][5][7];
        int8_t l_137 = 0x34L;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 9; j++)
            {
                for (k = 0; k < 9; k++)
                    l_86[i][j][k] = (void*)0;
            }
        }
        l_77++;
        l_82[5][2]++;
    }
    return p_44;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_45(int32_t * p_46, uint8_t  p_47, struct S3 * p_1105)
{ /* block id: 11 */
    int16_t l_52 = 0x6239L;
    uint64_t l_53 = 18446744073709551606UL;
    (*p_46) = ((l_52 ^ l_52) < l_53);
    return l_53;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[54];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 54; i++)
            l_comm_values[i] = 1;
    struct S3 c_1106;
    struct S3* p_1105 = &c_1106;
    struct S3 c_1107 = {
        {9UL,9UL,9UL,9UL,9UL}, // p_1105->g_2
        0x2A26F3F1L, // p_1105->g_3
        {0x31364F2CL,0x1253L,-5L,0x06L,0L}, // p_1105->g_48
        0x7EL, // p_1105->g_50
        {0x241D407BL,0x241D407BL,0x241D407BL,0x241D407BL,0x241D407BL,0x241D407BL,0x241D407BL,0x241D407BL}, // p_1105->g_55
        0x7567D2F7L, // p_1105->g_64
        &p_1105->g_48, // p_1105->g_93
        (void*)0, // p_1105->g_112
        {0xF338B5EEL,65535UL,-1L,0x38L,0x6C70B449B74578E6L}, // p_1105->g_115
        &p_1105->g_64, // p_1105->g_118
        &p_1105->g_64, // p_1105->g_119
        &p_1105->g_118, // p_1105->g_120
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1105->g_122
        {(void*)0,(void*)0}, // p_1105->g_152
        0x14B6L, // p_1105->g_172
        0x1D70941AL, // p_1105->g_174
        0xE9EF2415L, // p_1105->g_205
        &p_1105->g_205, // p_1105->g_204
        &p_1105->g_204, // p_1105->g_203
        &p_1105->g_203, // p_1105->g_207
        0L, // p_1105->g_219
        0x4E7EL, // p_1105->g_220
        {0UL,0x541CL,0x1828AE5848D3F0D9L,1UL,0x21748FBCABF82D76L}, // p_1105->g_223
        (void*)0, // p_1105->g_225
        {0x5ACF67E2L,1L,-7L,0x7408L,0x1F4155962D47C7DFL,0L,0x7BL}, // p_1105->g_260
        {{0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL}}, // p_1105->g_269
        {5UL,0xB8F5L,0L,0xB4L,1L}, // p_1105->g_282
        &p_1105->g_260.f1, // p_1105->g_285
        {0xB0CAL}, // p_1105->g_309
        {&p_1105->g_309,&p_1105->g_309,&p_1105->g_309}, // p_1105->g_311
        &p_1105->g_311[2], // p_1105->g_310
        {0x3559L}, // p_1105->g_328
        {4294967288UL,3UL,-9L,0x44L,-1L}, // p_1105->g_343
        {{{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}}},{{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}}},{{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}}},{{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}}},{{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}}},{{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}},{{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{0xBEB30949L,0L,1L,-5L,7UL,-7L,0x0FL},{4294967295UL,0x7FA6E6C67ADB3B67L,7L,0x3A1EL,1UL,-1L,2L},{4294967295UL,-3L,0L,0x7A5BL,18446744073709551615UL,0L,2L}}}}, // p_1105->g_344
        {{0x50BA4EEDL,0x2718L,0x28D835ACE7C09CD9L,1UL,-1L},{0x50BA4EEDL,0x2718L,0x28D835ACE7C09CD9L,1UL,-1L}}, // p_1105->g_371
        {0UL,1UL,0x62749DD47B6FDB05L,0x6BL,0L}, // p_1105->g_385
        (void*)0, // p_1105->g_418
        {4294967292UL,0x1C9E42BA7C311CB4L,0x4BE53F5EL,1L,0xB6D20D883374FBBFL,2L,7L}, // p_1105->g_419
        {{{{4UL,0UL,5L,255UL,9L},{4294967292UL,1UL,0L,253UL,0x7701C2ABE51C36D8L},{4UL,0UL,5L,255UL,9L},{4UL,0UL,5L,255UL,9L},{4294967292UL,1UL,0L,253UL,0x7701C2ABE51C36D8L},{4UL,0UL,5L,255UL,9L}},{{4UL,0UL,5L,255UL,9L},{4294967292UL,1UL,0L,253UL,0x7701C2ABE51C36D8L},{4UL,0UL,5L,255UL,9L},{4UL,0UL,5L,255UL,9L},{4294967292UL,1UL,0L,253UL,0x7701C2ABE51C36D8L},{4UL,0UL,5L,255UL,9L}}},{{{4UL,0UL,5L,255UL,9L},{4294967292UL,1UL,0L,253UL,0x7701C2ABE51C36D8L},{4UL,0UL,5L,255UL,9L},{4UL,0UL,5L,255UL,9L},{4294967292UL,1UL,0L,253UL,0x7701C2ABE51C36D8L},{4UL,0UL,5L,255UL,9L}},{{4UL,0UL,5L,255UL,9L},{4294967292UL,1UL,0L,253UL,0x7701C2ABE51C36D8L},{4UL,0UL,5L,255UL,9L},{4UL,0UL,5L,255UL,9L},{4294967292UL,1UL,0L,253UL,0x7701C2ABE51C36D8L},{4UL,0UL,5L,255UL,9L}}},{{{4UL,0UL,5L,255UL,9L},{4294967292UL,1UL,0L,253UL,0x7701C2ABE51C36D8L},{4UL,0UL,5L,255UL,9L},{4UL,0UL,5L,255UL,9L},{4294967292UL,1UL,0L,253UL,0x7701C2ABE51C36D8L},{4UL,0UL,5L,255UL,9L}},{{4UL,0UL,5L,255UL,9L},{4294967292UL,1UL,0L,253UL,0x7701C2ABE51C36D8L},{4UL,0UL,5L,255UL,9L},{4UL,0UL,5L,255UL,9L},{4294967292UL,1UL,0L,253UL,0x7701C2ABE51C36D8L},{4UL,0UL,5L,255UL,9L}}}}, // p_1105->g_441
        &p_1105->g_223, // p_1105->g_442
        &p_1105->g_118, // p_1105->g_463
        {0x6093349CL,0L,0x4C053C61L,0x2A21L,18446744073709551615UL,0x06L,0x72L}, // p_1105->g_470
        {0x4AB4271FL,0x285D83DB79A7419CL,-2L,0x2368L,0UL,0x0BL,-1L}, // p_1105->g_505
        &p_1105->g_505, // p_1105->g_504
        0UL, // p_1105->g_561
        {{{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]}},{{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]}},{{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]}},{{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]}},{{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]}},{{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]}},{{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]}},{{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]},{&p_1105->g_55[4],&p_1105->g_3,&p_1105->g_3,&p_1105->g_3,&p_1105->g_55[4],&p_1105->g_55[4]}}}, // p_1105->g_583
        &p_1105->g_55[4], // p_1105->g_584
        &p_1105->g_55[4], // p_1105->g_609
        {{(void*)0,&p_1105->g_119,(void*)0,&p_1105->g_118,&p_1105->g_119,&p_1105->g_118,(void*)0},{(void*)0,&p_1105->g_119,(void*)0,&p_1105->g_118,&p_1105->g_119,&p_1105->g_118,(void*)0},{(void*)0,&p_1105->g_119,(void*)0,&p_1105->g_118,&p_1105->g_119,&p_1105->g_118,(void*)0},{(void*)0,&p_1105->g_119,(void*)0,&p_1105->g_118,&p_1105->g_119,&p_1105->g_118,(void*)0},{(void*)0,&p_1105->g_119,(void*)0,&p_1105->g_118,&p_1105->g_119,&p_1105->g_118,(void*)0},{(void*)0,&p_1105->g_119,(void*)0,&p_1105->g_118,&p_1105->g_119,&p_1105->g_118,(void*)0},{(void*)0,&p_1105->g_119,(void*)0,&p_1105->g_118,&p_1105->g_119,&p_1105->g_118,(void*)0},{(void*)0,&p_1105->g_119,(void*)0,&p_1105->g_118,&p_1105->g_119,&p_1105->g_118,(void*)0}}, // p_1105->g_610
        &p_1105->g_118, // p_1105->g_611
        {0x10B93683L,0x0CF1361745827F6FL,5L,1L,1UL,1L,0x5BL}, // p_1105->g_636
        &p_1105->g_174, // p_1105->g_690
        &p_1105->g_690, // p_1105->g_689
        &p_1105->g_689, // p_1105->g_688
        &p_1105->g_688, // p_1105->g_687
        {1UL,0xA1EEL,0x58B7CC10FE30053FL,0x2CL,0x4EC6EDC3BEECD428L}, // p_1105->g_696
        &p_1105->g_504, // p_1105->g_699
        &p_1105->g_699, // p_1105->g_698
        &p_1105->g_118, // p_1105->g_701
        &p_1105->g_119, // p_1105->g_712
        {&p_1105->g_282,&p_1105->g_282,&p_1105->g_282,&p_1105->g_282,&p_1105->g_282}, // p_1105->g_713
        {{&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0]},{&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0]},{&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0]},{&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0]},{&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0]},{&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0]},{&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0]},{&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0]},{&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0]},{&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0],&p_1105->g_371[0]}}, // p_1105->g_714
        {4UL,0xD052L,0x7A409632674E124BL,255UL,0x54016420314E4CA6L}, // p_1105->g_715
        {{0xDE3F1A76L,0x2CA7L,0L,0x90L,-1L},{0x193DEF16L,0x13C1L,-4L,255UL,0x3EF50005582CFC54L},{0UL,1UL,1L,0x4AL,0x36A84699061E7E73L},{0x193DEF16L,0x13C1L,-4L,255UL,0x3EF50005582CFC54L},{0xDE3F1A76L,0x2CA7L,0L,0x90L,-1L},{0xDE3F1A76L,0x2CA7L,0L,0x90L,-1L},{0x193DEF16L,0x13C1L,-4L,255UL,0x3EF50005582CFC54L},{0UL,1UL,1L,0x4AL,0x36A84699061E7E73L},{0x193DEF16L,0x13C1L,-4L,255UL,0x3EF50005582CFC54L},{0xDE3F1A76L,0x2CA7L,0L,0x90L,-1L}}, // p_1105->g_716
        &p_1105->g_371[0], // p_1105->g_717
        (void*)0, // p_1105->g_728
        &p_1105->g_504, // p_1105->g_741
        {0x0076B197L,-5L,0x26DF7DB7L,1L,0xC27DDCEB5798D8CBL,0x2BL,0x4BL}, // p_1105->g_754
        {{9UL,1L,-6L,0x2560L,0UL,0x6DL,0x16L},{9UL,1L,-6L,0x2560L,0UL,0x6DL,0x16L}}, // p_1105->g_769
        {0x84C2L}, // p_1105->g_772
        {8UL}, // p_1105->g_775
        &p_1105->g_223.f1, // p_1105->g_792
        &p_1105->g_441[2][0][4].f1, // p_1105->g_836
        0x1E98704AL, // p_1105->g_841
        {{0x48EDL},{0x48EDL},{0x48EDL},{0x48EDL},{0x48EDL},{0x48EDL}}, // p_1105->g_843
        {8UL,1UL,0L,0x1BL,0x2721E59B1A132327L}, // p_1105->g_871
        {{{0x484FL,4L,0x02B5L,4L,0x484FL},{0x484FL,4L,0x02B5L,4L,0x484FL},{0x484FL,4L,0x02B5L,4L,0x484FL},{0x484FL,4L,0x02B5L,4L,0x484FL},{0x484FL,4L,0x02B5L,4L,0x484FL},{0x484FL,4L,0x02B5L,4L,0x484FL},{0x484FL,4L,0x02B5L,4L,0x484FL},{0x484FL,4L,0x02B5L,4L,0x484FL},{0x484FL,4L,0x02B5L,4L,0x484FL}}}, // p_1105->g_902
        0x139CL, // p_1105->g_926
        {0UL,0x5767L,0x62CD9EB2EAF66A10L,0x77L,0x73D2E9EB03FD568FL}, // p_1105->g_933
        {2UL,0xCB3FL,0L,0x5FL,-8L}, // p_1105->g_943
        1L, // p_1105->g_949
        &p_1105->g_260.f3, // p_1105->g_952
        &p_1105->g_952, // p_1105->g_951
        {4294967292UL,0x1D0FL,0x4D31623A3B42A5C7L,0x5AL,1L}, // p_1105->g_984
        &p_1105->g_699, // p_1105->g_987
        {{{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L},{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L}},{{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L},{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L}},{{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L},{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L}},{{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L},{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L}},{{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L},{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L}},{{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L},{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L}},{{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L},{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L}},{{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L},{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L}},{{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L},{0x03775D0EA6AD5D98L,0x1308995E5CC33C2CL,9L,0x7F70DD79AA5A52B9L,(-2L),(-2L),0x7F70DD79AA5A52B9L}}}, // p_1105->g_1014
        {4294967295UL,1UL,0x7E0CE69C6658216BL,0x5BL,6L}, // p_1105->g_1019
        {0xAA81464DL,65534UL,0x0DBCED44CC285A94L,0x5EL,4L}, // p_1105->g_1024
        {3UL,0x030FL,0x28E47C947370BF00L,0x2BL,0x29280DE75F5A10CCL}, // p_1105->g_1031
        {5UL,0xA81DL,0x75686D2B2C6D4D6EL,0x4BL,0L}, // p_1105->g_1047
        &p_1105->g_385, // p_1105->g_1048
        (void*)0, // p_1105->g_1060
        sequence_input[get_global_id(0)], // p_1105->global_0_offset
        sequence_input[get_global_id(1)], // p_1105->global_1_offset
        sequence_input[get_global_id(2)], // p_1105->global_2_offset
        sequence_input[get_local_id(0)], // p_1105->local_0_offset
        sequence_input[get_local_id(1)], // p_1105->local_1_offset
        sequence_input[get_local_id(2)], // p_1105->local_2_offset
        sequence_input[get_group_id(0)], // p_1105->group_0_offset
        sequence_input[get_group_id(1)], // p_1105->group_1_offset
        sequence_input[get_group_id(2)], // p_1105->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 54)), permutations[0][get_linear_local_id()])), // p_1105->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1106 = c_1107;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1105);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1105->g_2[i], "p_1105->g_2[i]", print_hash_value);

    }
    transparent_crc(p_1105->g_3, "p_1105->g_3", print_hash_value);
    transparent_crc(p_1105->g_48.f0, "p_1105->g_48.f0", print_hash_value);
    transparent_crc(p_1105->g_48.f1, "p_1105->g_48.f1", print_hash_value);
    transparent_crc(p_1105->g_48.f2, "p_1105->g_48.f2", print_hash_value);
    transparent_crc(p_1105->g_48.f3, "p_1105->g_48.f3", print_hash_value);
    transparent_crc(p_1105->g_48.f4, "p_1105->g_48.f4", print_hash_value);
    transparent_crc(p_1105->g_50, "p_1105->g_50", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1105->g_55[i], "p_1105->g_55[i]", print_hash_value);

    }
    transparent_crc(p_1105->g_64, "p_1105->g_64", print_hash_value);
    transparent_crc(p_1105->g_115.f0, "p_1105->g_115.f0", print_hash_value);
    transparent_crc(p_1105->g_115.f1, "p_1105->g_115.f1", print_hash_value);
    transparent_crc(p_1105->g_115.f2, "p_1105->g_115.f2", print_hash_value);
    transparent_crc(p_1105->g_115.f3, "p_1105->g_115.f3", print_hash_value);
    transparent_crc(p_1105->g_115.f4, "p_1105->g_115.f4", print_hash_value);
    transparent_crc(p_1105->g_172, "p_1105->g_172", print_hash_value);
    transparent_crc(p_1105->g_174, "p_1105->g_174", print_hash_value);
    transparent_crc(p_1105->g_205, "p_1105->g_205", print_hash_value);
    transparent_crc(p_1105->g_219, "p_1105->g_219", print_hash_value);
    transparent_crc(p_1105->g_220, "p_1105->g_220", print_hash_value);
    transparent_crc(p_1105->g_223.f0, "p_1105->g_223.f0", print_hash_value);
    transparent_crc(p_1105->g_223.f1, "p_1105->g_223.f1", print_hash_value);
    transparent_crc(p_1105->g_223.f2, "p_1105->g_223.f2", print_hash_value);
    transparent_crc(p_1105->g_223.f3, "p_1105->g_223.f3", print_hash_value);
    transparent_crc(p_1105->g_223.f4, "p_1105->g_223.f4", print_hash_value);
    transparent_crc(p_1105->g_260.f0, "p_1105->g_260.f0", print_hash_value);
    transparent_crc(p_1105->g_260.f1, "p_1105->g_260.f1", print_hash_value);
    transparent_crc(p_1105->g_260.f2, "p_1105->g_260.f2", print_hash_value);
    transparent_crc(p_1105->g_260.f3, "p_1105->g_260.f3", print_hash_value);
    transparent_crc(p_1105->g_260.f4, "p_1105->g_260.f4", print_hash_value);
    transparent_crc(p_1105->g_260.f5, "p_1105->g_260.f5", print_hash_value);
    transparent_crc(p_1105->g_260.f6, "p_1105->g_260.f6", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1105->g_269[i][j], "p_1105->g_269[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1105->g_282.f0, "p_1105->g_282.f0", print_hash_value);
    transparent_crc(p_1105->g_282.f1, "p_1105->g_282.f1", print_hash_value);
    transparent_crc(p_1105->g_282.f2, "p_1105->g_282.f2", print_hash_value);
    transparent_crc(p_1105->g_282.f3, "p_1105->g_282.f3", print_hash_value);
    transparent_crc(p_1105->g_282.f4, "p_1105->g_282.f4", print_hash_value);
    transparent_crc(p_1105->g_309.f0, "p_1105->g_309.f0", print_hash_value);
    transparent_crc(p_1105->g_328.f0, "p_1105->g_328.f0", print_hash_value);
    transparent_crc(p_1105->g_343.f0, "p_1105->g_343.f0", print_hash_value);
    transparent_crc(p_1105->g_343.f1, "p_1105->g_343.f1", print_hash_value);
    transparent_crc(p_1105->g_343.f2, "p_1105->g_343.f2", print_hash_value);
    transparent_crc(p_1105->g_343.f3, "p_1105->g_343.f3", print_hash_value);
    transparent_crc(p_1105->g_343.f4, "p_1105->g_343.f4", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1105->g_344[i][j][k].f0, "p_1105->g_344[i][j][k].f0", print_hash_value);
                transparent_crc(p_1105->g_344[i][j][k].f1, "p_1105->g_344[i][j][k].f1", print_hash_value);
                transparent_crc(p_1105->g_344[i][j][k].f2, "p_1105->g_344[i][j][k].f2", print_hash_value);
                transparent_crc(p_1105->g_344[i][j][k].f3, "p_1105->g_344[i][j][k].f3", print_hash_value);
                transparent_crc(p_1105->g_344[i][j][k].f4, "p_1105->g_344[i][j][k].f4", print_hash_value);
                transparent_crc(p_1105->g_344[i][j][k].f5, "p_1105->g_344[i][j][k].f5", print_hash_value);
                transparent_crc(p_1105->g_344[i][j][k].f6, "p_1105->g_344[i][j][k].f6", print_hash_value);

            }
        }
    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1105->g_371[i].f0, "p_1105->g_371[i].f0", print_hash_value);
        transparent_crc(p_1105->g_371[i].f1, "p_1105->g_371[i].f1", print_hash_value);
        transparent_crc(p_1105->g_371[i].f2, "p_1105->g_371[i].f2", print_hash_value);
        transparent_crc(p_1105->g_371[i].f3, "p_1105->g_371[i].f3", print_hash_value);
        transparent_crc(p_1105->g_371[i].f4, "p_1105->g_371[i].f4", print_hash_value);

    }
    transparent_crc(p_1105->g_385.f0, "p_1105->g_385.f0", print_hash_value);
    transparent_crc(p_1105->g_385.f1, "p_1105->g_385.f1", print_hash_value);
    transparent_crc(p_1105->g_385.f2, "p_1105->g_385.f2", print_hash_value);
    transparent_crc(p_1105->g_385.f3, "p_1105->g_385.f3", print_hash_value);
    transparent_crc(p_1105->g_385.f4, "p_1105->g_385.f4", print_hash_value);
    transparent_crc(p_1105->g_419.f0, "p_1105->g_419.f0", print_hash_value);
    transparent_crc(p_1105->g_419.f1, "p_1105->g_419.f1", print_hash_value);
    transparent_crc(p_1105->g_419.f2, "p_1105->g_419.f2", print_hash_value);
    transparent_crc(p_1105->g_419.f3, "p_1105->g_419.f3", print_hash_value);
    transparent_crc(p_1105->g_419.f4, "p_1105->g_419.f4", print_hash_value);
    transparent_crc(p_1105->g_419.f5, "p_1105->g_419.f5", print_hash_value);
    transparent_crc(p_1105->g_419.f6, "p_1105->g_419.f6", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1105->g_441[i][j][k].f0, "p_1105->g_441[i][j][k].f0", print_hash_value);
                transparent_crc(p_1105->g_441[i][j][k].f1, "p_1105->g_441[i][j][k].f1", print_hash_value);
                transparent_crc(p_1105->g_441[i][j][k].f2, "p_1105->g_441[i][j][k].f2", print_hash_value);
                transparent_crc(p_1105->g_441[i][j][k].f3, "p_1105->g_441[i][j][k].f3", print_hash_value);
                transparent_crc(p_1105->g_441[i][j][k].f4, "p_1105->g_441[i][j][k].f4", print_hash_value);

            }
        }
    }
    transparent_crc(p_1105->g_470.f0, "p_1105->g_470.f0", print_hash_value);
    transparent_crc(p_1105->g_470.f1, "p_1105->g_470.f1", print_hash_value);
    transparent_crc(p_1105->g_470.f2, "p_1105->g_470.f2", print_hash_value);
    transparent_crc(p_1105->g_470.f3, "p_1105->g_470.f3", print_hash_value);
    transparent_crc(p_1105->g_470.f4, "p_1105->g_470.f4", print_hash_value);
    transparent_crc(p_1105->g_470.f5, "p_1105->g_470.f5", print_hash_value);
    transparent_crc(p_1105->g_470.f6, "p_1105->g_470.f6", print_hash_value);
    transparent_crc(p_1105->g_505.f0, "p_1105->g_505.f0", print_hash_value);
    transparent_crc(p_1105->g_505.f1, "p_1105->g_505.f1", print_hash_value);
    transparent_crc(p_1105->g_505.f2, "p_1105->g_505.f2", print_hash_value);
    transparent_crc(p_1105->g_505.f3, "p_1105->g_505.f3", print_hash_value);
    transparent_crc(p_1105->g_505.f4, "p_1105->g_505.f4", print_hash_value);
    transparent_crc(p_1105->g_505.f5, "p_1105->g_505.f5", print_hash_value);
    transparent_crc(p_1105->g_505.f6, "p_1105->g_505.f6", print_hash_value);
    transparent_crc(p_1105->g_561, "p_1105->g_561", print_hash_value);
    transparent_crc(p_1105->g_636.f0, "p_1105->g_636.f0", print_hash_value);
    transparent_crc(p_1105->g_636.f1, "p_1105->g_636.f1", print_hash_value);
    transparent_crc(p_1105->g_636.f2, "p_1105->g_636.f2", print_hash_value);
    transparent_crc(p_1105->g_636.f3, "p_1105->g_636.f3", print_hash_value);
    transparent_crc(p_1105->g_636.f4, "p_1105->g_636.f4", print_hash_value);
    transparent_crc(p_1105->g_636.f5, "p_1105->g_636.f5", print_hash_value);
    transparent_crc(p_1105->g_636.f6, "p_1105->g_636.f6", print_hash_value);
    transparent_crc(p_1105->g_696.f0, "p_1105->g_696.f0", print_hash_value);
    transparent_crc(p_1105->g_696.f1, "p_1105->g_696.f1", print_hash_value);
    transparent_crc(p_1105->g_696.f2, "p_1105->g_696.f2", print_hash_value);
    transparent_crc(p_1105->g_696.f3, "p_1105->g_696.f3", print_hash_value);
    transparent_crc(p_1105->g_696.f4, "p_1105->g_696.f4", print_hash_value);
    transparent_crc(p_1105->g_715.f0, "p_1105->g_715.f0", print_hash_value);
    transparent_crc(p_1105->g_715.f1, "p_1105->g_715.f1", print_hash_value);
    transparent_crc(p_1105->g_715.f2, "p_1105->g_715.f2", print_hash_value);
    transparent_crc(p_1105->g_715.f3, "p_1105->g_715.f3", print_hash_value);
    transparent_crc(p_1105->g_715.f4, "p_1105->g_715.f4", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1105->g_716[i].f0, "p_1105->g_716[i].f0", print_hash_value);
        transparent_crc(p_1105->g_716[i].f1, "p_1105->g_716[i].f1", print_hash_value);
        transparent_crc(p_1105->g_716[i].f2, "p_1105->g_716[i].f2", print_hash_value);
        transparent_crc(p_1105->g_716[i].f3, "p_1105->g_716[i].f3", print_hash_value);
        transparent_crc(p_1105->g_716[i].f4, "p_1105->g_716[i].f4", print_hash_value);

    }
    transparent_crc(p_1105->g_754.f0, "p_1105->g_754.f0", print_hash_value);
    transparent_crc(p_1105->g_754.f1, "p_1105->g_754.f1", print_hash_value);
    transparent_crc(p_1105->g_754.f2, "p_1105->g_754.f2", print_hash_value);
    transparent_crc(p_1105->g_754.f3, "p_1105->g_754.f3", print_hash_value);
    transparent_crc(p_1105->g_754.f4, "p_1105->g_754.f4", print_hash_value);
    transparent_crc(p_1105->g_754.f5, "p_1105->g_754.f5", print_hash_value);
    transparent_crc(p_1105->g_754.f6, "p_1105->g_754.f6", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1105->g_769[i].f0, "p_1105->g_769[i].f0", print_hash_value);
        transparent_crc(p_1105->g_769[i].f1, "p_1105->g_769[i].f1", print_hash_value);
        transparent_crc(p_1105->g_769[i].f2, "p_1105->g_769[i].f2", print_hash_value);
        transparent_crc(p_1105->g_769[i].f3, "p_1105->g_769[i].f3", print_hash_value);
        transparent_crc(p_1105->g_769[i].f4, "p_1105->g_769[i].f4", print_hash_value);
        transparent_crc(p_1105->g_769[i].f5, "p_1105->g_769[i].f5", print_hash_value);
        transparent_crc(p_1105->g_769[i].f6, "p_1105->g_769[i].f6", print_hash_value);

    }
    transparent_crc(p_1105->g_772.f0, "p_1105->g_772.f0", print_hash_value);
    transparent_crc(p_1105->g_775.f0, "p_1105->g_775.f0", print_hash_value);
    transparent_crc(p_1105->g_841, "p_1105->g_841", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1105->g_843[i].f0, "p_1105->g_843[i].f0", print_hash_value);

    }
    transparent_crc(p_1105->g_871.f0, "p_1105->g_871.f0", print_hash_value);
    transparent_crc(p_1105->g_871.f1, "p_1105->g_871.f1", print_hash_value);
    transparent_crc(p_1105->g_871.f2, "p_1105->g_871.f2", print_hash_value);
    transparent_crc(p_1105->g_871.f3, "p_1105->g_871.f3", print_hash_value);
    transparent_crc(p_1105->g_871.f4, "p_1105->g_871.f4", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1105->g_902[i][j][k], "p_1105->g_902[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1105->g_926, "p_1105->g_926", print_hash_value);
    transparent_crc(p_1105->g_933.f0, "p_1105->g_933.f0", print_hash_value);
    transparent_crc(p_1105->g_933.f1, "p_1105->g_933.f1", print_hash_value);
    transparent_crc(p_1105->g_933.f2, "p_1105->g_933.f2", print_hash_value);
    transparent_crc(p_1105->g_933.f3, "p_1105->g_933.f3", print_hash_value);
    transparent_crc(p_1105->g_933.f4, "p_1105->g_933.f4", print_hash_value);
    transparent_crc(p_1105->g_943.f0, "p_1105->g_943.f0", print_hash_value);
    transparent_crc(p_1105->g_943.f1, "p_1105->g_943.f1", print_hash_value);
    transparent_crc(p_1105->g_943.f2, "p_1105->g_943.f2", print_hash_value);
    transparent_crc(p_1105->g_943.f3, "p_1105->g_943.f3", print_hash_value);
    transparent_crc(p_1105->g_943.f4, "p_1105->g_943.f4", print_hash_value);
    transparent_crc(p_1105->g_949, "p_1105->g_949", print_hash_value);
    transparent_crc(p_1105->g_984.f0, "p_1105->g_984.f0", print_hash_value);
    transparent_crc(p_1105->g_984.f1, "p_1105->g_984.f1", print_hash_value);
    transparent_crc(p_1105->g_984.f2, "p_1105->g_984.f2", print_hash_value);
    transparent_crc(p_1105->g_984.f3, "p_1105->g_984.f3", print_hash_value);
    transparent_crc(p_1105->g_984.f4, "p_1105->g_984.f4", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1105->g_1014[i][j][k], "p_1105->g_1014[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1105->g_1019.f0, "p_1105->g_1019.f0", print_hash_value);
    transparent_crc(p_1105->g_1019.f1, "p_1105->g_1019.f1", print_hash_value);
    transparent_crc(p_1105->g_1019.f2, "p_1105->g_1019.f2", print_hash_value);
    transparent_crc(p_1105->g_1019.f3, "p_1105->g_1019.f3", print_hash_value);
    transparent_crc(p_1105->g_1019.f4, "p_1105->g_1019.f4", print_hash_value);
    transparent_crc(p_1105->g_1024.f0, "p_1105->g_1024.f0", print_hash_value);
    transparent_crc(p_1105->g_1024.f1, "p_1105->g_1024.f1", print_hash_value);
    transparent_crc(p_1105->g_1024.f2, "p_1105->g_1024.f2", print_hash_value);
    transparent_crc(p_1105->g_1024.f3, "p_1105->g_1024.f3", print_hash_value);
    transparent_crc(p_1105->g_1024.f4, "p_1105->g_1024.f4", print_hash_value);
    transparent_crc(p_1105->g_1031.f0, "p_1105->g_1031.f0", print_hash_value);
    transparent_crc(p_1105->g_1031.f1, "p_1105->g_1031.f1", print_hash_value);
    transparent_crc(p_1105->g_1031.f2, "p_1105->g_1031.f2", print_hash_value);
    transparent_crc(p_1105->g_1031.f3, "p_1105->g_1031.f3", print_hash_value);
    transparent_crc(p_1105->g_1031.f4, "p_1105->g_1031.f4", print_hash_value);
    transparent_crc(p_1105->g_1047.f0, "p_1105->g_1047.f0", print_hash_value);
    transparent_crc(p_1105->g_1047.f1, "p_1105->g_1047.f1", print_hash_value);
    transparent_crc(p_1105->g_1047.f2, "p_1105->g_1047.f2", print_hash_value);
    transparent_crc(p_1105->g_1047.f3, "p_1105->g_1047.f3", print_hash_value);
    transparent_crc(p_1105->g_1047.f4, "p_1105->g_1047.f4", print_hash_value);
    transparent_crc(p_1105->l_comm_values[get_linear_local_id()], "p_1105->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1105->g_comm_values[get_linear_group_id() * 54 + get_linear_local_id()], "p_1105->g_comm_values[get_linear_group_id() * 54 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
