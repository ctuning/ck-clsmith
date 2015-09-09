// ---atomic_reductions ---fake_divergence -g 34,64,2 -l 1,1,2
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


// Seed: 38

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile uint64_t  f0;
   uint64_t  f1;
   volatile int32_t  f2;
   volatile uint16_t  f3;
};

struct S1 {
    int32_t g_4[5];
    int32_t g_6[9][9];
    int32_t *g_8;
    volatile int32_t g_10;
    volatile int32_t g_11;
    int32_t g_12[4][4][8];
    int32_t g_41;
    int8_t g_74;
    union U0 g_93;
    volatile union U0 g_95;
    volatile union U0 *g_94;
    int64_t g_111;
    int16_t g_113[6][2];
    int16_t *g_120;
    int16_t **g_119;
    int64_t g_127;
    uint32_t g_129;
    uint32_t g_181;
    int64_t g_184;
    union U0 g_232;
    uint32_t g_246;
    uint64_t g_264;
    int32_t *g_269;
    int64_t g_270;
    uint16_t g_281;
    union U0 *g_299;
    union U0 **g_298;
    int32_t g_304;
    uint16_t g_322;
    int32_t g_327;
    union U0 g_329;
    uint32_t *g_336;
    uint8_t g_354;
    volatile int8_t g_373;
    volatile int8_t *g_372;
    uint16_t g_374;
    union U0 g_384;
    uint32_t **g_416;
    int64_t g_421;
    uint64_t g_458;
    union U0 g_514;
    int32_t g_522;
    int8_t *g_547;
    int8_t **g_546[4];
    volatile union U0 * volatile * volatile *g_607[7][1];
    volatile union U0 * volatile * volatile * volatile *g_606;
    uint64_t g_613[3];
    int16_t g_627[5];
    uint64_t g_786;
    uint16_t *g_787;
    uint8_t * volatile *g_853;
    uint8_t g_881;
    int16_t g_887[1][9];
    union U0 g_932[1][3];
    int32_t ** volatile g_935;
    uint16_t *g_957;
    uint32_t g_978;
    volatile int32_t g_982;
    volatile int32_t *g_981;
    volatile int32_t ** volatile g_980;
    volatile int32_t ** volatile *g_979;
    union U0 g_988;
    int16_t **g_1011;
    int32_t g_1052[10][7];
    volatile uint32_t g_1056[1][2];
    int32_t *g_1085[1];
    int32_t **g_1084;
    uint32_t g_1094;
    uint64_t g_1125[6][4];
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
int16_t  func_1(struct S1 * p_1147);
int32_t * func_13(uint32_t  p_14, int32_t * p_15, int32_t * p_16, int8_t  p_17, struct S1 * p_1147);
uint32_t  func_23(int32_t * p_24, struct S1 * p_1147);
int32_t * func_25(int32_t  p_26, int32_t * p_27, struct S1 * p_1147);
int8_t  func_28(uint32_t  p_29, struct S1 * p_1147);
int32_t  func_34(int32_t * p_35, int32_t * p_36, int8_t  p_37, int32_t * p_38, struct S1 * p_1147);
uint16_t  func_42(int32_t  p_43, int16_t * p_44, int16_t * p_45, struct S1 * p_1147);
int16_t * func_46(uint8_t  p_47, int16_t * p_48, int16_t  p_49, uint64_t  p_50, struct S1 * p_1147);
uint8_t  func_53(int64_t  p_54, int32_t * p_55, int64_t  p_56, struct S1 * p_1147);
int64_t  func_57(uint64_t  p_58, int16_t * p_59, int16_t * p_60, struct S1 * p_1147);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1147->g_4 p_1147->g_8 p_1147->g_6 p_1147->g_12 p_1147->g_298 p_1147->g_1011 p_1147->g_120 p_1147->g_113 p_1147->g_627 p_1147->g_322 p_1147->g_547 p_1147->g_74 p_1147->g_269 p_1147->g_1084
 * writes: p_1147->g_4 p_1147->g_6 p_1147->g_8 p_1147->g_12 p_1147->g_299 p_1147->g_1085
 */
int16_t  func_1(struct S1 * p_1147)
{ /* block id: 4 */
    uint32_t l_2[8][4][8] = {{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}},{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}},{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}},{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}},{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}},{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}},{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}},{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}}};
    int32_t *l_7 = &p_1147->g_6[0][4];
    uint8_t l_933 = 0xC9L;
    uint16_t *l_955 = &p_1147->g_374;
    int32_t l_986 = (-1L);
    uint64_t *l_1037 = &p_1147->g_232.f1;
    int32_t l_1055 = (-1L);
    int16_t l_1060[8] = {0x7335L,0x3284L,0x7335L,0x7335L,0x3284L,0x7335L,0x7335L,0x3284L};
    int8_t *l_1088 = &p_1147->g_74;
    uint32_t l_1123[9][2] = {{4294967292UL,0x4720FFE7L},{4294967292UL,0x4720FFE7L},{4294967292UL,0x4720FFE7L},{4294967292UL,0x4720FFE7L},{4294967292UL,0x4720FFE7L},{4294967292UL,0x4720FFE7L},{4294967292UL,0x4720FFE7L},{4294967292UL,0x4720FFE7L},{4294967292UL,0x4720FFE7L}};
    union U0 *l_1128 = &p_1147->g_514;
    int32_t l_1133 = 0x13EE56FDL;
    uint8_t l_1141 = 255UL;
    uint8_t *l_1144 = &p_1147->g_354;
    uint8_t *l_1145[4];
    int32_t *l_1146 = (void*)0;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_1145[i] = &l_933;
    if (l_2[4][3][2])
    { /* block id: 5 */
        int32_t *l_3 = &p_1147->g_4[1];
        int32_t *l_5 = &p_1147->g_6[0][4];
        (*l_5) = ((*l_3) = l_2[6][2][2]);
        (*l_5) = l_2[2][0][6];
        (*l_3) = ((p_1147->g_4[1] || (&p_1147->g_4[3] != &p_1147->g_4[2])) > (-1L));
    }
    else
    { /* block id: 10 */
        int32_t l_9[2];
        int i;
        for (i = 0; i < 2; i++)
            l_9[i] = 0x457720F8L;
        p_1147->g_8 = l_7;
        l_9[1] ^= (*p_1147->g_8);
    }
    for (p_1147->g_12[0][1][6] = 3; (p_1147->g_12[0][1][6] >= 0); p_1147->g_12[0][1][6] -= 1)
    { /* block id: 16 */
        int32_t l_20[1];
        int32_t **l_934 = &l_7;
        uint32_t l_946 = 4294967290UL;
        int8_t l_974[4];
        int16_t l_998 = 0x4915L;
        int8_t l_1059 = 1L;
        int32_t **l_1087 = (void*)0;
        int8_t l_1092 = 0x47L;
        int i;
        for (i = 0; i < 1; i++)
            l_20[i] = (-1L);
        for (i = 0; i < 4; i++)
            l_974[i] = 0x09L;
        (1 + 1);
    }
    (*p_1147->g_298) = l_1128;
    (*p_1147->g_1084) = func_13((safe_mul_func_uint8_t_u_u(((*l_7) = (safe_div_func_uint32_t_u_u((p_1147->g_12[0][1][6] , l_1133), (((safe_mul_func_uint8_t_u_u(((*l_7) , ((((safe_unary_minus_func_int8_t_s(((safe_sub_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(l_1141, (**p_1147->g_1011))), ((p_1147->g_4[1] >= (safe_add_func_int16_t_s_s((p_1147->g_627[4] , (0x05DDL < ((((l_1144 = &l_1141) != &l_933) , (-7L)) >= p_1147->g_4[1]))), 0x06B7L))) != p_1147->g_322))) & (*l_7)))) <= (*l_7)) && (*p_1147->g_547)) < (*p_1147->g_547))), (*l_7))) || GROUP_DIVERGE(1, 1)) ^ 9L)))), p_1147->g_322)), &l_986, l_1146, (*p_1147->g_547), p_1147);
    return (**p_1147->g_1011);
}


/* ------------------------------------------ */
/* 
 * reads : p_1147->g_269 p_1147->g_327 p_1147->g_304 p_1147->g_4 p_1147->g_6
 * writes: p_1147->g_6
 */
int32_t * func_13(uint32_t  p_14, int32_t * p_15, int32_t * p_16, int8_t  p_17, struct S1 * p_1147)
{ /* block id: 440 */
    (*p_15) |= (*p_1147->g_269);
    return &p_1147->g_304;
}


/* ------------------------------------------ */
/* 
 * reads : p_1147->g_354 p_1147->g_269 p_1147->g_327 p_1147->g_304 p_1147->g_4 p_1147->g_322 p_1147->g_184 p_1147->g_522 p_1147->g_127 p_1147->g_8 p_1147->g_111 p_1147->g_120 p_1147->g_113 p_1147->g_12 p_1147->g_281 p_1147->g_129 p_1147->g_547 p_1147->g_74 p_1147->g_374 p_1147->g_606 p_1147->g_613 p_1147->g_270 p_1147->g_421 p_1147->g_246 p_1147->g_181 p_1147->g_41 p_1147->g_881 p_1147->g_93.f1 p_1147->g_264
 * writes: p_1147->g_354 p_1147->g_8 p_1147->g_421 p_1147->g_522 p_1147->g_374 p_1147->g_129 p_1147->g_264 p_1147->g_327 p_1147->g_304 p_1147->g_4 p_1147->g_269 p_1147->g_546 p_1147->g_111 p_1147->g_281 p_1147->g_322 p_1147->g_113 p_1147->g_120 p_1147->g_74 p_1147->g_627 p_1147->g_270 p_1147->g_184 p_1147->g_246 p_1147->g_93.f1
 */
uint32_t  func_23(int32_t * p_24, struct S1 * p_1147)
{ /* block id: 229 */
    uint32_t l_487 = 0xA4010911L;
    uint64_t *l_508 = &p_1147->g_458;
    uint8_t *l_511 = (void*)0;
    uint8_t *l_512 = &p_1147->g_354;
    union U0 *l_513 = &p_1147->g_514;
    int64_t l_573 = 0x312A204C59201076L;
    int8_t *l_595[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_640[10][7] = {{(-1L),(-1L),0L,1L,3L,(-1L),1L},{(-1L),(-1L),0L,1L,3L,(-1L),1L},{(-1L),(-1L),0L,1L,3L,(-1L),1L},{(-1L),(-1L),0L,1L,3L,(-1L),1L},{(-1L),(-1L),0L,1L,3L,(-1L),1L},{(-1L),(-1L),0L,1L,3L,(-1L),1L},{(-1L),(-1L),0L,1L,3L,(-1L),1L},{(-1L),(-1L),0L,1L,3L,(-1L),1L},{(-1L),(-1L),0L,1L,3L,(-1L),1L},{(-1L),(-1L),0L,1L,3L,(-1L),1L}};
    uint32_t l_687 = 0xE6B98EC6L;
    int32_t l_694 = 0x4D99A8EFL;
    int32_t l_739[3][5][5] = {{{8L,9L,(-9L),9L,8L},{8L,9L,(-9L),9L,8L},{8L,9L,(-9L),9L,8L},{8L,9L,(-9L),9L,8L},{8L,9L,(-9L),9L,8L}},{{8L,9L,(-9L),9L,8L},{8L,9L,(-9L),9L,8L},{8L,9L,(-9L),9L,8L},{8L,9L,(-9L),9L,8L},{8L,9L,(-9L),9L,8L}},{{8L,9L,(-9L),9L,8L},{8L,9L,(-9L),9L,8L},{8L,9L,(-9L),9L,8L},{8L,9L,(-9L),9L,8L},{8L,9L,(-9L),9L,8L}}};
    int16_t l_752[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
    uint32_t l_824 = 1UL;
    union U0 ***l_825 = &p_1147->g_298;
    int i, j, k;
    if ((l_487 , (safe_div_func_uint16_t_u_u((0x860A4EF2F7283642L < (((safe_sub_func_int16_t_s_s((safe_add_func_uint64_t_u_u(((safe_div_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s(0x12L, ((safe_mul_func_int8_t_s_s((((((((((safe_add_func_int64_t_s_s((((safe_sub_func_int16_t_s_s(l_487, ((l_487 == 249UL) , (safe_add_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_s(((*l_512) ^= ((((l_508 = &p_1147->g_264) != (void*)0) && (safe_lshift_func_int16_t_s_s((l_487 ^ GROUP_DIVERGE(1, 1)), 1))) >= 0UL)), 5)) , l_487), l_487))))) <= 0L) != (*p_1147->g_269)), 0x54C47E684543A18DL)) , l_487) || l_487) , l_513) != (void*)0) & (*p_24)) > 18446744073709551615UL) && p_1147->g_322) < (-2L)), l_487)) <= l_487))), p_1147->g_184)) <= 0x78L), 0x5B5E9356256E6D6BL)), (-1L))) || l_487) , l_487)), l_487))))
    { /* block id: 232 */
        int32_t **l_515 = (void*)0;
        int32_t **l_516 = &p_1147->g_8;
        int8_t **l_572[1][10] = {{(void*)0,&p_1147->g_547,(void*)0,&p_1147->g_547,(void*)0,(void*)0,&p_1147->g_547,(void*)0,&p_1147->g_547,(void*)0}};
        union U0 ***l_578 = &p_1147->g_298;
        union U0 ****l_577 = &l_578;
        int16_t *l_586 = &p_1147->g_113[2][0];
        uint64_t *l_612 = &p_1147->g_613[1];
        int32_t l_652 = 0x68786671L;
        int8_t l_655 = 0L;
        int32_t l_658 = 0x733591FFL;
        int8_t l_684[9] = {0x5AL,0x5AL,0x5AL,0x5AL,0x5AL,0x5AL,0x5AL,0x5AL,0x5AL};
        int32_t l_698 = 0x3A5BA72AL;
        int32_t l_699[9][7][4] = {{{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L}},{{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L}},{{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L}},{{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L}},{{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L}},{{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L}},{{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L}},{{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L}},{{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L},{0x4594B6C2L,(-8L),0x214D5F68L,2L}}};
        uint8_t **l_766 = &l_511;
        int i, j, k;
lbl_892:
        (*l_516) = p_24;
        for (p_1147->g_421 = (-17); (p_1147->g_421 <= (-4)); p_1147->g_421 = safe_add_func_int16_t_s_s(p_1147->g_421, 1))
        { /* block id: 236 */
            int32_t *l_519 = (void*)0;
            int32_t *l_520 = (void*)0;
            int32_t *l_521[8] = {&p_1147->g_522,&p_1147->g_522,&p_1147->g_522,&p_1147->g_522,&p_1147->g_522,&p_1147->g_522,&p_1147->g_522,&p_1147->g_522};
            union U0 ***l_532[8][1] = {{&p_1147->g_298},{&p_1147->g_298},{&p_1147->g_298},{&p_1147->g_298},{&p_1147->g_298},{&p_1147->g_298},{&p_1147->g_298},{&p_1147->g_298}};
            int8_t **l_544 = (void*)0;
            int8_t ***l_545[10] = {&l_544,(void*)0,&l_544,(void*)0,&l_544,&l_544,(void*)0,&l_544,(void*)0,&l_544};
            int i, j;
            p_1147->g_522 &= (*p_1147->g_269);
            for (p_1147->g_374 = 0; (p_1147->g_374 == 41); p_1147->g_374 = safe_add_func_uint8_t_u_u(p_1147->g_374, 4))
            { /* block id: 240 */
                int8_t l_527 = 0x13L;
                union U0 ****l_533 = &l_532[6][0];
                if ((*p_1147->g_269))
                    break;
                for (p_1147->g_129 = 0; (p_1147->g_129 < 56); p_1147->g_129 = safe_add_func_int16_t_s_s(p_1147->g_129, 6))
                { /* block id: 244 */
                    for (p_1147->g_264 = 0; (p_1147->g_264 <= 7); p_1147->g_264 += 1)
                    { /* block id: 247 */
                        return p_1147->g_127;
                    }
                    (*p_1147->g_269) = 6L;
                    return l_527;
                }
                if ((*p_24))
                    continue;
                (**l_516) = (safe_sub_func_int16_t_s_s(((&p_24 != &p_1147->g_269) > (safe_rshift_func_uint16_t_u_u((((*l_533) = l_532[6][0]) != &p_1147->g_298), ((safe_add_func_int64_t_s_s(((0L || ((((l_527 > ((p_1147->g_269 = p_24) == (void*)0)) != (safe_sub_func_int32_t_s_s((((safe_mod_func_int8_t_s_s(((safe_div_func_uint8_t_u_u((((safe_add_func_int8_t_s_s((**l_516), 5L)) != p_1147->g_127) , p_1147->g_4[1]), p_1147->g_111)) && l_527), p_1147->g_127)) && l_527) > (*p_1147->g_120)), (*p_24)))) && 65535UL) , p_1147->g_12[0][1][6])) && (-1L)), p_1147->g_4[3])) || (**l_516))))), GROUP_DIVERGE(1, 1)));
            }
            p_1147->g_546[1] = l_544;
            if ((*p_1147->g_8))
            { /* block id: 259 */
                return l_487;
            }
            else
            { /* block id: 261 */
                int16_t l_548 = 0x4ABEL;
                (*p_1147->g_269) |= (l_487 && l_548);
            }
        }
        for (p_1147->g_111 = 3; (p_1147->g_111 >= 0); p_1147->g_111 -= 1)
        { /* block id: 267 */
            uint16_t *l_564 = &p_1147->g_281;
            int32_t l_569 = (-3L);
            int64_t l_574 = 0x3CC909A490E3CE15L;
            int8_t *l_596 = &p_1147->g_74;
            int32_t l_648 = 0x1EEEAB23L;
            int32_t l_651 = 0x2588F8D0L;
            int32_t l_659 = (-1L);
            uint16_t l_660 = 0x576EL;
            int32_t l_697[7][6][5] = {{{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L}},{{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L}},{{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L}},{{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L}},{{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L}},{{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L}},{{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L},{0x22A7A2E4L,1L,0x34303F1AL,(-3L),0x6007E2F4L}}};
            int64_t l_724 = 9L;
            union U0 ***l_813 = &p_1147->g_298;
            int32_t **l_826 = &p_1147->g_269;
            uint32_t l_854 = 0x7B2F8237L;
            int i, j, k;
            (*p_1147->g_269) ^= (-1L);
            l_573 = (safe_div_func_uint8_t_u_u((((safe_sub_func_int32_t_s_s(((((safe_div_func_uint32_t_u_u((safe_add_func_int8_t_s_s(0x56L, ((safe_mul_func_int8_t_s_s(((*p_1147->g_120) >= ((safe_sub_func_uint16_t_u_u((&p_1147->g_120 == &p_1147->g_120), (safe_unary_minus_func_int64_t_s((safe_lshift_func_uint16_t_u_s(((*l_564) ^= p_1147->g_127), ((((safe_lshift_func_int8_t_s_u((l_487 != ((safe_lshift_func_int8_t_s_s((l_569 , l_569), 5)) <= (safe_mul_func_int16_t_s_s((((GROUP_DIVERGE(1, 1) ^ (&p_1147->g_547 != l_572[0][3])) ^ p_1147->g_129) <= 0L), l_487)))), (**l_516))) ^ (*p_1147->g_269)) == p_1147->g_113[2][0]) , (*p_1147->g_120)))))))) <= (**l_516))), p_1147->g_113[0][1])) < l_487))), (*p_1147->g_269))) > (-8L)) , 0x2DL) & l_569), 4294967295UL)) >= (*p_1147->g_547)) == GROUP_DIVERGE(2, 1)), 255UL));
            for (p_1147->g_322 = 0; (p_1147->g_322 <= 3); p_1147->g_322 += 1)
            { /* block id: 273 */
                int16_t *l_589 = &p_1147->g_113[3][1];
                int32_t l_590 = (-2L);
                uint8_t l_639[10] = {0xFAL,0xFAL,0xFAL,0xFAL,0xFAL,0xFAL,0xFAL,0xFAL,0xFAL,0xFAL};
                int32_t l_649 = 1L;
                int32_t l_653 = 0x323430C5L;
                int32_t l_654 = (-8L);
                int32_t l_656 = 0x0EECD37BL;
                int32_t l_657[3][1][9] = {{{0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L}},{{0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L}},{{0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L,0x17ABB548L}}};
                int8_t l_670[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
                uint32_t *l_680 = (void*)0;
                uint32_t *l_681 = &p_1147->g_246;
                int8_t ***l_682[4] = {&p_1147->g_546[1],&p_1147->g_546[1],&p_1147->g_546[1],&p_1147->g_546[1]};
                int32_t *l_683[8];
                int i, j, k;
                for (i = 0; i < 8; i++)
                    l_683[i] = &l_652;
                if ((p_1147->g_374 < l_574))
                { /* block id: 274 */
                    uint32_t l_592 = 0x7A247847L;
                    int8_t *l_594[8] = {&p_1147->g_74,&p_1147->g_74,&p_1147->g_74,&p_1147->g_74,&p_1147->g_74,&p_1147->g_74,&p_1147->g_74,&p_1147->g_74};
                    int i;
                    if (((*p_1147->g_8) = 0x68C3949CL))
                    { /* block id: 276 */
                        uint64_t l_579[4][8][2] = {{{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L}},{{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L}},{{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L}},{{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L},{0xD8EBC84A8FF0D8EEL,0x36541B9751C51805L}}};
                        int16_t **l_587 = (void*)0;
                        int16_t **l_588 = &p_1147->g_120;
                        int32_t *l_591 = &p_1147->g_304;
                        int i, j, k;
                        (*p_1147->g_8) |= 3L;
                        (*l_591) |= ((safe_rshift_func_uint8_t_u_s(((*l_512) = FAKE_DIVERGE(p_1147->group_1_offset, get_group_id(1), 10)), (((*p_1147->g_120) = (-1L)) != (((~(l_577 == (void*)0)) , GROUP_DIVERGE(2, 1)) != ((l_579[3][7][1] == 249UL) < 0x2CL))))) , (safe_sub_func_uint16_t_u_u((safe_div_func_int64_t_s_s(((safe_div_func_uint32_t_u_u(((~((*p_24) >= (((*l_588) = l_586) == (l_589 = &p_1147->g_113[2][1])))) && l_590), 1UL)) , 0x6274F636EED263F5L), l_574)), p_1147->g_111)));
                        if (l_592)
                            continue;
                    }
                    else
                    { /* block id: 284 */
                        int16_t l_593 = 0x1047L;
                        if ((*p_24))
                            break;
                        if ((*p_1147->g_8))
                            continue;
                        (*p_1147->g_8) &= l_593;
                        if ((*p_24))
                            break;
                    }
                    if ((((l_595[0] = l_594[3]) != l_596) | 0x2CAE0109L))
                    { /* block id: 291 */
                        int8_t l_601 = 0x6DL;
                        union U0 *****l_608 = (void*)0;
                        union U0 ****l_609 = &l_578;
                        int32_t l_617 = (-7L);
                        p_1147->g_522 ^= ((((0x6984CCD6L ^ FAKE_DIVERGE(p_1147->global_0_offset, get_global_id(0), 10)) ^ (safe_sub_func_int32_t_s_s((p_1147->g_304 == p_1147->g_281), (*p_1147->g_8)))) < (safe_lshift_func_uint16_t_u_u(l_601, 3))) , 0x65B10794L);
                        l_617 = ((**l_516) = (safe_rshift_func_uint16_t_u_s(0xAE89L, (safe_add_func_uint64_t_u_u((p_1147->g_606 == (l_609 = &l_578)), (safe_mul_func_uint8_t_u_u(0xA2L, ((p_1147->g_12[0][1][6] | ((void*)0 == l_612)) != (safe_mod_func_int64_t_s_s(((l_569 = ((*l_596) = (safe_unary_minus_func_int64_t_s(l_601)))) , l_590), l_592))))))))));
                    }
                    else
                    { /* block id: 298 */
                        int16_t *l_626 = &p_1147->g_627[1];
                        int32_t l_630 = 0x0FC5500FL;
                        p_24 = &p_1147->g_4[3];
                        (*p_24) = (safe_rshift_func_uint8_t_u_s(((safe_add_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((0xF7L == (safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1147->local_0_offset, get_local_id(0), 10), ((((*l_626) = ((*p_1147->g_120) = 0x2196L)) | (((**l_516) = (8UL & l_590)) && ((+(safe_sub_func_uint64_t_u_u(18446744073709551612UL, (~l_630)))) <= ((((safe_sub_func_int32_t_s_s((*p_24), ((((safe_rshift_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((((safe_sub_func_int32_t_s_s(0L, (-1L))) , p_1147->g_613[0]) <= 0x13C9F7A75274DF13L), 10)), p_1147->g_281)) , (*p_24)) != 0x5CF5D54BL) != 0x94E1L))) > (*p_1147->g_547)) & 0x389FCEBD42A0296DL) && 0x7F1E3C5FL)))) <= GROUP_DIVERGE(1, 1))))), l_590)), l_639[7])) | p_1147->g_522), 4));
                    }
                    return l_592;
                }
                else
                { /* block id: 306 */
                    int32_t l_650 = 1L;
                    uint8_t *l_669 = &l_639[1];
                    int8_t **l_671 = &l_596;
                    for (p_1147->g_270 = 0; (p_1147->g_270 <= 4); p_1147->g_270 += 1)
                    { /* block id: 309 */
                        int32_t *l_641 = &p_1147->g_327;
                        int32_t *l_642 = &l_569;
                        int32_t l_643 = 1L;
                        int32_t *l_644 = &l_590;
                        int32_t l_645 = 1L;
                        int32_t *l_646 = &p_1147->g_327;
                        int32_t *l_647[8] = {&l_590,&p_1147->g_304,&l_590,&l_590,&p_1147->g_304,&l_590,&l_590,&p_1147->g_304};
                        int i;
                        ++l_660;
                    }
                    (*p_1147->g_8) = ((((+(0xB2107922L < (safe_rshift_func_uint8_t_u_s(p_1147->g_12[0][2][1], ((safe_mod_func_int16_t_s_s(((!(safe_rshift_func_int8_t_s_u(((**l_516) != p_1147->g_74), 7))) | p_1147->g_374), 0xDA7DL)) , ((l_573 <= ((l_669 != &p_1147->g_354) >= p_1147->g_327)) , l_670[6])))))) <= 0x2442L) ^ l_651) || (*p_24));
                    if (l_487)
                        break;
                    for (p_1147->g_184 = 1; (p_1147->g_184 >= 0); p_1147->g_184 -= 1)
                    { /* block id: 316 */
                        int i, j;
                        if (p_1147->g_113[p_1147->g_111][p_1147->g_184])
                            break;
                        if ((*p_24))
                            break;
                        p_1147->g_546[p_1147->g_322] = l_671;
                        return p_1147->g_113[p_1147->g_111][p_1147->g_184];
                    }
                }
                atomic_or(&p_1147->g_atomic_reduction[get_linear_group_id()], (p_1147->g_4[1] |= ((0x2A8C8ED6L | ((((*p_1147->g_8) ^ 6UL) & ((safe_mod_func_uint32_t_u_u(((safe_mod_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u((l_648 != (safe_add_func_uint16_t_u_u((((p_1147->g_74 | (((*l_681) = GROUP_DIVERGE(2, 1)) == 0x8E3FEAA3L)) && (((void*)0 == l_682[0]) > (!(l_640[9][2] != (**l_516))))) , l_651), 0x3C0EL))), l_670[5])), l_574)) >= 0x06DAL), l_657[1][0][0])) & (**l_516))) , l_654)) != (-1L))));
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_1147->v_collective += p_1147->g_atomic_reduction[get_linear_group_id()];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            }
            for (p_1147->g_421 = 0; (p_1147->g_421 <= 1); p_1147->g_421 += 1)
            { /* block id: 329 */
                int32_t *l_685 = &l_648;
                int32_t *l_686[10][9][2] = {{{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]}},{{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]}},{{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]}},{{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]}},{{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]}},{{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]}},{{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]}},{{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]}},{{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]}},{{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]},{&l_648,&p_1147->g_12[2][0][1]}}};
                uint32_t l_700 = 0x956538BFL;
                uint16_t l_737 = 65531UL;
                uint32_t l_776 = 4294967286UL;
                int8_t **l_810 = &l_596;
                int i, j, k;
                ++l_687;
                for (l_574 = 3; (l_574 >= 0); l_574 -= 1)
                { /* block id: 333 */
                    uint32_t l_690 = 0x97E50DF6L;
                    int32_t l_693 = 0x0E8A0D0AL;
                    int32_t l_695 = 0x25AE8380L;
                    int32_t l_696[5];
                    uint32_t *l_709 = &l_687;
                    int64_t l_745 = (-2L);
                    int i, j;
                    for (i = 0; i < 5; i++)
                        l_696[i] = 0x12DF36B0L;
                    --l_690;
                    l_700++;
                    if ((safe_add_func_int16_t_s_s(((safe_sub_func_int32_t_s_s(((p_1147->g_113[(p_1147->g_111 + 2)][p_1147->g_421] == ((*l_709) = (((safe_mul_func_int16_t_s_s(p_1147->g_113[(p_1147->g_111 + 2)][p_1147->g_421], GROUP_DIVERGE(0, 1))) < (*p_1147->g_120)) , 4294967288UL))) <= ((safe_mod_func_uint64_t_u_u((((safe_add_func_uint16_t_u_u((p_1147->g_246 , GROUP_DIVERGE(1, 1)), (safe_mod_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u(0x9366F237L, ((safe_add_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), FAKE_DIVERGE(p_1147->global_2_offset, get_global_id(2), 10))) >= (**l_516)))), ((safe_sub_func_uint64_t_u_u((l_487 | ((*p_1147->g_547) = (((l_640[9][2] &= ((*l_512) &= ((0x14F38F2EL && (*p_24)) ^ 0L))) >= l_573) , l_724))), p_1147->g_181)) & (**l_516)))))) , l_569) <= (*p_1147->g_8)), l_694)) <= (*p_1147->g_269))), (-1L))) & l_660), p_1147->g_12[2][3][2])))
                    { /* block id: 340 */
                        int32_t l_738[3][7][7] = {{{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL}},{{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL}},{{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL},{0L,4L,1L,(-1L),0x29F48034L,0x3D3BF811L,0x04DFFE3EL}}};
                        int i, j, k;
                        l_739[2][3][1] &= ((safe_lshift_func_uint8_t_u_u(l_660, p_1147->g_421)) || (safe_add_func_uint32_t_u_u((safe_mod_func_int32_t_s_s((**l_516), (l_640[6][3] = 9L))), (((((((p_1147->g_304 >= p_1147->g_281) <= ((safe_sub_func_int32_t_s_s(((((FAKE_DIVERGE(p_1147->group_2_offset, get_group_id(2), 10) , (p_1147->g_522 = (safe_add_func_int8_t_s_s((p_1147->g_12[3][1][0] , ((((((*p_1147->g_547) = (safe_div_func_int32_t_s_s(((*l_685) = ((p_1147->g_113[(p_1147->g_421 + 2)][p_1147->g_421] = (*p_1147->g_120)) | ((*l_685) & 0xCB3BL))), 4294967288UL))) , p_1147->g_113[(p_1147->g_421 + 2)][p_1147->g_421]) || 0x4170FA83L) && 6L) , l_487)), (**l_516))))) || 0xEA0F57E7L) , (void*)0) != &p_1147->g_627[1]), (-3L))) != FAKE_DIVERGE(p_1147->local_2_offset, get_local_id(2), 10))) > l_737) | 4294967295UL) && l_651) || p_1147->g_111) > l_738[0][1][2]))));
                        (*l_685) |= (safe_mul_func_int8_t_s_s((**l_516), (((safe_unary_minus_func_int64_t_s(9L)) && (safe_mul_func_uint8_t_u_u(((1L && FAKE_DIVERGE(p_1147->local_1_offset, get_local_id(1), 10)) == (((l_569 == (((*p_1147->g_120) = (0xAEDDL >= (**l_516))) != l_745)) >= p_1147->g_41) == (safe_lshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s((safe_add_func_uint16_t_u_u(((((p_1147->g_127 > 0x0FAFD04A0B4009AAL) ^ l_738[0][1][2]) < l_651) >= (*p_1147->g_547)), 65531UL)), (*p_1147->g_547))), l_752[8])))), l_573))) & l_724)));
                    }
                    else
                    { /* block id: 349 */
                        (*p_24) = (p_1147->g_41 && l_648);
                    }
                }
            }
        }
        for (l_573 = 0; (l_573 != (-3)); --l_573)
        { /* block id: 403 */
            uint32_t l_863 = 0xE9B49013L;
            int32_t l_880[10][2][3] = {{{(-3L),(-2L),0x64982632L},{(-3L),(-2L),0x64982632L}},{{(-3L),(-2L),0x64982632L},{(-3L),(-2L),0x64982632L}},{{(-3L),(-2L),0x64982632L},{(-3L),(-2L),0x64982632L}},{{(-3L),(-2L),0x64982632L},{(-3L),(-2L),0x64982632L}},{{(-3L),(-2L),0x64982632L},{(-3L),(-2L),0x64982632L}},{{(-3L),(-2L),0x64982632L},{(-3L),(-2L),0x64982632L}},{{(-3L),(-2L),0x64982632L},{(-3L),(-2L),0x64982632L}},{{(-3L),(-2L),0x64982632L},{(-3L),(-2L),0x64982632L}},{{(-3L),(-2L),0x64982632L},{(-3L),(-2L),0x64982632L}},{{(-3L),(-2L),0x64982632L},{(-3L),(-2L),0x64982632L}}};
            int i, j, k;
            if ((safe_mod_func_int32_t_s_s(((l_863 = ((safe_mod_func_uint32_t_u_u((**l_516), (safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1147->global_0_offset, get_global_id(0), 10), FAKE_DIVERGE(p_1147->local_2_offset, get_local_id(2), 10))))) < 0x22L)) >= ((safe_rshift_func_int16_t_s_s(((~((((safe_div_func_uint32_t_u_u(((**l_516) | ((safe_mul_func_int16_t_s_s(0x4C50L, (FAKE_DIVERGE(p_1147->group_1_offset, get_group_id(1), 10) == ((*l_586) = (safe_mod_func_int16_t_s_s(((safe_mod_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u((((safe_rshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(l_880[4][1][1], (0UL && ((*p_1147->g_269) ^ (((0x3FL & (l_752[8] != l_824)) , p_1147->g_184) , l_752[8]))))), l_880[3][0][1])) || 1L) < 0x5F2D3FB8BA912793L), l_694)), p_1147->g_881)) && 0xE1853884L), l_880[4][1][1])))))) == l_880[4][1][1])), l_880[4][0][1])) , &p_1147->g_269) != &p_24) <= 1L)) >= FAKE_DIVERGE(p_1147->global_1_offset, get_global_id(1), 10)), 9)) , (**l_516))), (*p_1147->g_269))))
            { /* block id: 406 */
                int64_t l_882 = 0x064FBCE1486BED9EL;
                int32_t l_888[4] = {0x143EA4E6L,0x143EA4E6L,0x143EA4E6L,0x143EA4E6L};
                int i;
                for (p_1147->g_93.f1 = 0; (p_1147->g_93.f1 <= 0); p_1147->g_93.f1 += 1)
                { /* block id: 409 */
                    int64_t l_884[5][7][7] = {{{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L}},{{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L}},{{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L}},{{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L}},{{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L},{(-5L),0x0FDE29B0A3C926C8L,1L,1L,0x0FDE29B0A3C926C8L,(-5L),0x4063B6E06D3E2064L}}};
                    int32_t l_886[1][2][3] = {{{0x5D9294E8L,0x5D9294E8L,0x5D9294E8L},{0x5D9294E8L,0x5D9294E8L,0x5D9294E8L}}};
                    uint32_t l_889[6][7] = {{0xC7220872L,4294967289UL,1UL,4294967289UL,0xC7220872L,0xC7220872L,4294967289UL},{0xC7220872L,4294967289UL,1UL,4294967289UL,0xC7220872L,0xC7220872L,4294967289UL},{0xC7220872L,4294967289UL,1UL,4294967289UL,0xC7220872L,0xC7220872L,4294967289UL},{0xC7220872L,4294967289UL,1UL,4294967289UL,0xC7220872L,0xC7220872L,4294967289UL},{0xC7220872L,4294967289UL,1UL,4294967289UL,0xC7220872L,0xC7220872L,4294967289UL},{0xC7220872L,4294967289UL,1UL,4294967289UL,0xC7220872L,0xC7220872L,4294967289UL}};
                    int i, j, k;
                    for (l_652 = 0; (l_652 >= 0); l_652 -= 1)
                    { /* block id: 412 */
                        int i, j, k;
                        if (l_699[(p_1147->g_93.f1 + 3)][(p_1147->g_93.f1 + 2)][(p_1147->g_93.f1 + 3)])
                            break;
                        return l_882;
                    }
                    for (p_1147->g_74 = 0; (p_1147->g_74 <= 0); p_1147->g_74 += 1)
                    { /* block id: 418 */
                        int32_t *l_883 = &p_1147->g_304;
                        int32_t *l_885[1][3];
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_885[i][j] = &p_1147->g_522;
                        }
                        (*l_883) |= (*p_24);
                        --l_889[3][5];
                    }
                }
            }
            else
            { /* block id: 423 */
                if (p_1147->g_881)
                    goto lbl_892;
                if ((*p_1147->g_8))
                    break;
            }
        }
    }
    else
    { /* block id: 428 */
        int32_t l_893 = 0x535BC346L;
        int32_t l_894 = 0x5A0C20DEL;
        int32_t *l_895[3][5] = {{&p_1147->g_327,&p_1147->g_327,&p_1147->g_327,&p_1147->g_327,&p_1147->g_327},{&p_1147->g_327,&p_1147->g_327,&p_1147->g_327,&p_1147->g_327,&p_1147->g_327},{&p_1147->g_327,&p_1147->g_327,&p_1147->g_327,&p_1147->g_327,&p_1147->g_327}};
        int16_t l_896 = 0x525DL;
        uint32_t l_897 = 0xED0B2D47L;
        union U0 ****l_924 = &l_825;
        union U0 *****l_923 = &l_924;
        union U0 *l_931 = &p_1147->g_932[0][1];
        int i, j;
        l_897++;
        for (l_893 = 0; (l_893 <= 4); l_893 = safe_add_func_uint8_t_u_u(l_893, 6))
        { /* block id: 432 */
            uint32_t l_902 = 4294967294UL;
            p_1147->g_304 |= ((l_902 , (*p_24)) > ((safe_rshift_func_uint8_t_u_s(0xC4L, 3)) == (safe_add_func_int8_t_s_s((safe_sub_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(0UL, (safe_div_func_int64_t_s_s((((safe_rshift_func_int16_t_s_u(((*p_1147->g_120) = (safe_mul_func_int64_t_s_s(0L, (l_487 != ((safe_rshift_func_uint8_t_u_s((((safe_add_func_int16_t_s_s(l_902, (safe_lshift_func_int16_t_s_u((l_923 != ((FAKE_DIVERGE(p_1147->group_2_offset, get_group_id(2), 10) , ((safe_rshift_func_uint8_t_u_u(((*l_512) = (safe_div_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s((*p_1147->g_547), 3)), l_573))), 4)) || p_1147->g_41)) , (void*)0)), 14)))) >= p_1147->g_74) == l_752[8]), 2)) & 65535UL))))), 10)) , (*p_24)) > l_739[2][3][1]), p_1147->g_264)))), 0x5CL)), 0xF0L))));
        }
        l_931 = l_513;
    }
    return l_824;
}


/* ------------------------------------------ */
/* 
 * reads : p_1147->g_12 p_1147->g_129 p_1147->g_113
 * writes:
 */
int32_t * func_25(int32_t  p_26, int32_t * p_27, struct S1 * p_1147)
{ /* block id: 226 */
    uint8_t *l_479 = &p_1147->g_354;
    int16_t *l_484 = &p_1147->g_113[2][0];
    int32_t l_485 = 0x6C7AE77BL;
    int32_t l_486 = (-1L);
    l_486 |= ((safe_rshift_func_int8_t_s_s(((0x47472B2021810280L == ((l_479 == &p_1147->g_354) != p_1147->g_12[1][0][2])) <= ((safe_div_func_uint64_t_u_u(p_1147->g_129, (safe_add_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), p_26)))) , (((-1L) & ((((void*)0 != l_484) >= p_1147->g_113[2][0]) & l_485)) , l_485))), l_485)) && l_485);
    return &p_1147->g_327;
}


/* ------------------------------------------ */
/* 
 * reads : p_1147->g_12 p_1147->g_4 p_1147->g_304 p_1147->g_74 p_1147->g_6 p_1147->g_129 p_1147->g_113 p_1147->g_111 p_1147->g_120 p_1147->g_8 p_1147->g_184 p_1147->g_127 p_1147->g_281 p_1147->g_298 p_1147->g_322 p_1147->g_327 p_1147->g_336 p_1147->g_354 p_1147->g_264 p_1147->g_372 p_1147->g_374 p_1147->g_270 p_1147->g_93.f1 p_1147->g_421 p_1147->g_246 p_1147->g_458 p_1147->g_181
 * writes: p_1147->g_41 p_1147->g_74 p_1147->g_4 p_1147->g_304 p_1147->g_94 p_1147->g_111 p_1147->g_113 p_1147->g_119 p_1147->g_129 p_1147->g_8 p_1147->g_184 p_1147->g_181 p_1147->g_246 p_1147->g_264 p_1147->g_269 p_1147->g_270 p_1147->g_281 p_1147->g_322 p_1147->g_327 p_1147->g_299 p_1147->g_336 p_1147->g_298 p_1147->g_354 p_1147->g_374 p_1147->g_93.f1 p_1147->g_416 p_1147->g_232.f1 p_1147->g_384.f1 p_1147->g_458
 */
int8_t  func_28(uint32_t  p_29, struct S1 * p_1147)
{ /* block id: 17 */
    int32_t *l_39 = &p_1147->g_4[1];
    int16_t *l_40 = (void*)0;
    int8_t *l_73 = &p_1147->g_74;
    int32_t *l_326 = &p_1147->g_327;
    union U0 *l_328 = &p_1147->g_329;
    int16_t ***l_385 = (void*)0;
    int64_t l_393 = 1L;
    uint32_t **l_396 = &p_1147->g_336;
    int32_t l_459 = 0L;
    uint8_t l_475 = 0x5CL;
    int32_t *l_476 = &l_459;
lbl_418:
    (*l_326) &= (safe_add_func_uint32_t_u_u(p_29, ((func_34(l_39, l_39, ((p_1147->g_41 = 0x7092L) != func_42(p_29, func_46((safe_mod_func_uint8_t_u_u(func_53((p_1147->g_12[3][2][7] , ((*l_39) = func_57(((safe_div_func_int32_t_s_s((((*l_73) &= ((safe_sub_func_int16_t_s_s((-6L), ((safe_div_func_int16_t_s_s(((safe_mod_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(0x5785L, p_29)), p_1147->g_12[0][1][6])) < (*l_39)), 0x58D8L)) || 0L))) | (*l_39))) != p_29), p_29)) != 1L), l_40, l_40, p_1147))), l_39, p_29, p_1147), p_29)), l_40, p_29, p_1147->g_6[0][4], p_1147), l_40, p_1147)), l_39, p_1147) , &p_1147->g_12[0][1][6]) == &p_1147->g_6[0][4])));
lbl_395:
    (*p_1147->g_298) = l_328;
    for (p_1147->g_129 = 0; (p_1147->g_129 <= 1); p_1147->g_129 += 1)
    { /* block id: 139 */
        uint32_t *l_335 = &p_1147->g_181;
        uint32_t **l_334[2][3];
        union U0 **l_338 = &l_328;
        union U0 ***l_339 = &p_1147->g_298;
        int32_t l_344 = 0x79847286L;
        int32_t *l_347 = &l_344;
        int64_t *l_348 = &p_1147->g_184;
        uint8_t *l_353 = &p_1147->g_354;
        uint16_t *l_375 = &p_1147->g_322;
        int16_t ***l_386 = &p_1147->g_119;
        int8_t l_401 = 4L;
        uint8_t *l_403 = &p_1147->g_354;
        int16_t *l_451 = (void*)0;
        uint32_t l_456 = 0UL;
        int i, j;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 3; j++)
                l_334[i][j] = &l_335;
        }
        (*l_347) = (safe_mod_func_int32_t_s_s(((*l_39) ^= (0x06CBFBB6D1853BCCL & 18446744073709551609UL)), (((((((((*l_326) = (((((safe_mul_func_int8_t_s_s(((p_1147->g_336 = l_326) == l_39), (safe_unary_minus_func_uint64_t_u(0xEC06545ED4EA07C8L)))) , ((((*l_339) = (l_338 = &l_328)) == (((safe_mul_func_int8_t_s_s((((safe_mod_func_int16_t_s_s((l_344 , (*p_1147->g_120)), ((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1147->global_2_offset, get_global_id(2), 10), (0xCC1E15542F661273L || p_29))) & FAKE_DIVERGE(p_1147->global_1_offset, get_global_id(1), 10)))) & (-10L)) , p_29), (*l_326))) , (*p_1147->g_336)) , &p_1147->g_299)) != (*l_326))) < 0x44L) , p_29) < 0x03B7L)) != l_344) || l_344) == p_29) | (-4L)) , (*l_326)) | l_344) & p_29)));
        if (((~(&p_1147->g_184 != l_348)) >= ((*p_1147->g_336) &= (safe_sub_func_int8_t_s_s((p_29 ^ (safe_lshift_func_uint16_t_u_u(((--(*l_353)) , ((*l_375) = (safe_lshift_func_int8_t_s_u(((*l_73) = (safe_rshift_func_int8_t_s_s(p_1147->g_264, 4))), ((p_1147->g_374 ^= (safe_div_func_int8_t_s_s((safe_add_func_uint16_t_u_u((safe_unary_minus_func_int8_t_s((safe_sub_func_int8_t_s_s((safe_div_func_int32_t_s_s((7L || (safe_mod_func_uint8_t_u_u((&p_1147->g_4[(p_1147->g_129 + 2)] != (((~((((*p_1147->g_120) = ((void*)0 != p_1147->g_372)) ^ 0x67F8L) && 3UL)) ^ p_1147->g_322) , l_326)), FAKE_DIVERGE(p_1147->group_1_offset, get_group_id(1), 10)))), FAKE_DIVERGE(p_1147->group_2_offset, get_group_id(2), 10))), 1UL)))), p_29)), p_29))) & p_29))))), 6))), 0x71L)))))
        { /* block id: 152 */
            uint64_t l_382 = 0xB094975026D48073L;
            union U0 *l_383 = &p_1147->g_384;
            int32_t **l_391 = &l_39;
            int32_t **l_392 = (void*)0;
            (*l_347) ^= (((safe_sub_func_uint8_t_u_u(1UL, (*l_326))) ^ ((safe_sub_func_int64_t_s_s(p_1147->g_12[0][3][0], GROUP_DIVERGE(0, 1))) != (((l_382 & (l_383 != (void*)0)) & (l_385 != l_386)) > (safe_div_func_int64_t_s_s((safe_add_func_uint32_t_u_u((((*p_1147->g_336) , (*p_1147->g_336)) ^ p_29), 8L)), p_29))))) <= 247UL);
            p_1147->g_269 = ((*l_391) = &p_1147->g_304);
            p_1147->g_4[2] ^= ((((*p_1147->g_336) = (*p_1147->g_336)) > ((&p_1147->g_113[2][0] != &p_1147->g_113[0][1]) == l_393)) != (((**l_391) = (FAKE_DIVERGE(p_1147->local_0_offset, get_local_id(0), 10) <= (*l_347))) && p_29));
        }
        else
        { /* block id: 159 */
            int32_t **l_394 = &p_1147->g_269;
            (*l_394) = (p_29 , &p_1147->g_327);
            if (p_29)
                goto lbl_395;
        }
        for (p_1147->g_270 = 0; (p_1147->g_270 <= 1); p_1147->g_270 += 1)
        { /* block id: 165 */
            uint8_t **l_402 = &l_353;
            uint64_t *l_404[10][8][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            int32_t l_413 = (-1L);
            uint32_t l_414 = 1UL;
            uint32_t ***l_415[2];
            int32_t **l_417 = &l_39;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_415[i] = &l_334[0][2];
            for (p_1147->g_93.f1 = 0; (p_1147->g_93.f1 <= 1); p_1147->g_93.f1 += 1)
            { /* block id: 168 */
                for (p_1147->g_281 = 0; (p_1147->g_281 <= 1); p_1147->g_281 += 1)
                { /* block id: 171 */
                    int i, j;
                    (*l_326) |= p_1147->g_113[(p_1147->g_270 + 4)][p_1147->g_93.f1];
                }
            }
            (*l_417) = ((p_29 < ((((p_29 || (l_396 != (p_1147->g_416 = (((safe_div_func_int16_t_s_s((*p_1147->g_120), (((safe_mul_func_uint16_t_u_u(l_401, ((((p_1147->g_264 = (((((*l_39) = (((*l_402) = (void*)0) == l_403)) <= p_29) == ((safe_mod_func_uint8_t_u_u((((safe_rshift_func_int8_t_s_u(((safe_sub_func_uint32_t_u_u((safe_sub_func_int32_t_s_s((p_1147->g_113[1][0] | p_29), 1L)), 0x4565B4DBL)) <= l_413), 6)) <= 0x67E58345L) < (*p_1147->g_336)), 246UL)) && p_29)) , 18446744073709551615UL)) > 18446744073709551614UL) != p_1147->g_374) != p_29))) | l_414) , 0x29AEL))) < (*p_1147->g_336)) , (void*)0)))) == p_29) ^ 0L) , l_413)) , &l_413);
            (*l_417) = &p_1147->g_4[1];
            for (p_1147->g_232.f1 = 0; p_1147->g_232.f1 < 2; p_1147->g_232.f1 += 1)
            {
                l_415[p_1147->g_232.f1] = &l_334[0][0];
            }
        }
        for (p_1147->g_270 = 0; (p_1147->g_270 <= 1); p_1147->g_270 += 1)
        { /* block id: 185 */
            uint32_t l_423 = 0UL;
            if (p_1147->g_304)
                goto lbl_418;
            if ((*l_39))
            { /* block id: 187 */
                (*l_326) = ((*l_39) = (safe_mod_func_int16_t_s_s(p_29, ((*l_347) = ((-1L) || 247UL)))));
            }
            else
            { /* block id: 191 */
                return p_1147->g_421;
            }
            for (p_1147->g_264 = 0; (p_1147->g_264 <= 1); p_1147->g_264 += 1)
            { /* block id: 196 */
                int32_t *l_422[6] = {&p_1147->g_4[1],&p_1147->g_4[1],&p_1147->g_4[1],&p_1147->g_4[1],&p_1147->g_4[1],&p_1147->g_4[1]};
                int i;
                l_423--;
                for (p_1147->g_111 = 0; (p_1147->g_111 <= 1); p_1147->g_111 += 1)
                { /* block id: 200 */
                    uint8_t l_426 = 0xB4L;
                    int8_t *l_449[5][2][3] = {{{&l_401,&l_401,&l_401},{&l_401,&l_401,&l_401}},{{&l_401,&l_401,&l_401},{&l_401,&l_401,&l_401}},{{&l_401,&l_401,&l_401},{&l_401,&l_401,&l_401}},{{&l_401,&l_401,&l_401},{&l_401,&l_401,&l_401}},{{&l_401,&l_401,&l_401},{&l_401,&l_401,&l_401}}};
                    int i, j, k;
                    l_426--;
                    for (p_1147->g_246 = 0; (p_1147->g_246 <= 4); p_1147->g_246 += 1)
                    { /* block id: 204 */
                        int16_t *l_450 = &p_1147->g_113[2][0];
                        int16_t **l_452 = &l_451;
                        uint32_t ***l_453 = (void*)0;
                        uint32_t ***l_454 = &l_396;
                        uint64_t *l_455 = &p_1147->g_384.f1;
                        uint64_t *l_457 = &p_1147->g_458;
                        int i, j;
                        (*l_386) = (void*)0;
                        l_459 ^= (((*l_326) ^= (safe_div_func_uint64_t_u_u(((*l_457) = (safe_add_func_int8_t_s_s(((+((safe_sub_func_int32_t_s_s((p_1147->g_4[p_1147->g_246] , (p_1147->g_4[(p_1147->g_264 + 2)] = (safe_lshift_func_uint16_t_u_s(((*l_375) = (safe_lshift_func_int8_t_s_s((safe_div_func_int8_t_s_s(((safe_div_func_int64_t_s_s(p_1147->g_281, (safe_mod_func_int8_t_s_s((((*l_347) > (safe_add_func_int8_t_s_s(p_29, (((((l_449[2][1][0] == (((*l_455) = (((&l_335 != ((*l_454) = ((l_450 == ((*l_452) = l_451)) , (l_334[p_1147->g_270][p_1147->g_270] = l_396)))) & (*l_347)) >= (-1L))) , &p_1147->g_74)) && (-10L)) ^ 0xFEL) > (*l_347)) , p_29)))) && p_29), p_1147->g_4[3])))) && 4UL), p_1147->g_4[p_1147->g_246])), p_1147->g_270))), 2)))), 0x0F1B8B2DL)) > 0L)) ^ (-7L)), l_456))), p_29))) <= p_29);
                    }
                    return p_1147->g_12[0][1][6];
                }
            }
        }
    }
    (*l_476) &= (safe_div_func_int8_t_s_s((safe_rshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(((!((*l_39) == ((safe_unary_minus_func_uint16_t_u(((((l_385 == &p_1147->g_119) ^ ((void*)0 != l_385)) | 1UL) ^ p_29))) , p_29))) , (((*p_1147->g_120) = ((*l_39) ^= (((safe_lshift_func_int16_t_s_s((safe_sub_func_int16_t_s_s(((safe_add_func_int8_t_s_s(((*l_326) = ((*l_326) != 0x1CB847CAL)), 0xB7L)) | (-1L)), 0x7876L)), l_475)) & p_29) > p_1147->g_184))) <= 0x0F54L)), p_1147->g_458)), l_393)), 0xA8L));
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_34(int32_t * p_35, int32_t * p_36, int8_t  p_37, int32_t * p_38, struct S1 * p_1147)
{ /* block id: 133 */
    int32_t l_325[7][1][4] = {{{0x6181D6DFL,(-1L),0x6181D6DFL,0x6181D6DFL}},{{0x6181D6DFL,(-1L),0x6181D6DFL,0x6181D6DFL}},{{0x6181D6DFL,(-1L),0x6181D6DFL,0x6181D6DFL}},{{0x6181D6DFL,(-1L),0x6181D6DFL,0x6181D6DFL}},{{0x6181D6DFL,(-1L),0x6181D6DFL,0x6181D6DFL}},{{0x6181D6DFL,(-1L),0x6181D6DFL,0x6181D6DFL}},{{0x6181D6DFL,(-1L),0x6181D6DFL,0x6181D6DFL}}};
    int i, j, k;
    return l_325[5][0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1147->g_322
 * writes: p_1147->g_322
 */
uint16_t  func_42(int32_t  p_43, int16_t * p_44, int16_t * p_45, struct S1 * p_1147)
{ /* block id: 129 */
    uint32_t l_310[4][3][1];
    int32_t *l_313 = &p_1147->g_304;
    int32_t *l_314 = &p_1147->g_4[4];
    int32_t *l_315 = &p_1147->g_4[1];
    int32_t *l_316 = &p_1147->g_304;
    int32_t *l_317 = &p_1147->g_304;
    int32_t *l_318 = &p_1147->g_304;
    int32_t *l_319 = (void*)0;
    int32_t *l_320[6][5][3] = {{{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]}},{{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]}},{{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]}},{{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]}},{{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]}},{{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]},{&p_1147->g_4[2],(void*)0,&p_1147->g_4[2]}}};
    int16_t l_321[1];
    int i, j, k;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 1; k++)
                l_310[i][j][k] = 0x3397DFDCL;
        }
    }
    for (i = 0; i < 1; i++)
        l_321[i] = 0x2CCBL;
    l_310[2][1][0]--;
    --p_1147->g_322;
    return p_43;
}


/* ------------------------------------------ */
/* 
 * reads : p_1147->g_129 p_1147->g_74 p_1147->g_113 p_1147->g_4 p_1147->g_111 p_1147->g_120 p_1147->g_8 p_1147->g_6 p_1147->g_184 p_1147->g_127 p_1147->g_181 p_1147->g_281 p_1147->g_298 p_1147->g_304
 * writes: p_1147->g_119 p_1147->g_74 p_1147->g_129 p_1147->g_4 p_1147->g_8 p_1147->g_184 p_1147->g_181 p_1147->g_111 p_1147->g_246 p_1147->g_113 p_1147->g_264 p_1147->g_269 p_1147->g_270 p_1147->g_281
 */
int16_t * func_46(uint8_t  p_47, int16_t * p_48, int16_t  p_49, uint64_t  p_50, struct S1 * p_1147)
{ /* block id: 32 */
    int16_t *l_118 = &p_1147->g_113[5][1];
    int16_t **l_117[5][7][4] = {{{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118}},{{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118}},{{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118}},{{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118}},{{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118},{&l_118,&l_118,&l_118,&l_118}}};
    int16_t ***l_116[6];
    int32_t l_142 = 0x18605C96L;
    int32_t **l_156[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    union U0 *l_231 = &p_1147->g_232;
    uint32_t l_247 = 0xD4049CAEL;
    union U0 **l_300 = &l_231;
    uint64_t l_302 = 18446744073709551610UL;
    uint64_t l_306 = 0x73B47B3EE37B53C0L;
    int16_t *l_309 = &p_1147->g_113[0][1];
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_116[i] = &l_117[0][4][3];
    p_1147->g_119 = &p_48;
    for (p_47 = 23; (p_47 <= 35); p_47++)
    { /* block id: 36 */
        int8_t *l_163 = (void*)0;
        int16_t l_178 = 0x75F0L;
        int32_t l_185 = (-10L);
        for (p_49 = 23; (p_49 > (-4)); p_49 = safe_sub_func_uint32_t_u_u(p_49, 2))
        { /* block id: 39 */
            int64_t l_143 = 0L;
            int32_t l_182[8] = {0x1306FF47L,0x1306FF47L,0x1306FF47L,0x1306FF47L,0x1306FF47L,0x1306FF47L,0x1306FF47L,0x1306FF47L};
            int i;
            for (p_1147->g_74 = 1; (p_1147->g_74 >= 0); p_1147->g_74 -= 1)
            { /* block id: 42 */
                uint32_t *l_128 = &p_1147->g_129;
                int16_t l_150 = 0x4A54L;
                int32_t **l_151[5][6] = {{&p_1147->g_8,(void*)0,&p_1147->g_8,&p_1147->g_8,(void*)0,&p_1147->g_8},{&p_1147->g_8,(void*)0,&p_1147->g_8,&p_1147->g_8,(void*)0,&p_1147->g_8},{&p_1147->g_8,(void*)0,&p_1147->g_8,&p_1147->g_8,(void*)0,&p_1147->g_8},{&p_1147->g_8,(void*)0,&p_1147->g_8,&p_1147->g_8,(void*)0,&p_1147->g_8},{&p_1147->g_8,(void*)0,&p_1147->g_8,&p_1147->g_8,(void*)0,&p_1147->g_8}};
                uint32_t *l_179 = (void*)0;
                uint32_t *l_180[5][8] = {{&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181},{&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181},{&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181},{&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181},{&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181,&p_1147->g_181}};
                int64_t *l_183 = &p_1147->g_184;
                int i, j;
                p_1147->g_4[p_1147->g_74] = (safe_sub_func_uint32_t_u_u((++(*l_128)), (safe_add_func_uint8_t_u_u(((((safe_add_func_uint8_t_u_u(p_1147->g_113[p_1147->g_74][p_1147->g_74], (safe_lshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1147->group_1_offset, get_group_id(1), 10), 5)), ((p_1147->g_4[(p_1147->g_74 + 2)] | (+p_1147->g_113[2][0])) , (safe_div_func_uint8_t_u_u((l_142 , l_143), (safe_sub_func_uint8_t_u_u((0xAFB31ACBL != (-6L)), (safe_rshift_func_int16_t_s_s((p_1147->g_113[p_1147->g_74][p_1147->g_74] == ((safe_mul_func_int8_t_s_s(p_47, p_47)) >= 65529UL)), 7))))))))))) == 255UL) > p_50) >= p_1147->g_111), l_150))));
                p_1147->g_8 = &p_1147->g_4[p_1147->g_74];
                if (((*p_1147->g_8) = (safe_add_func_int64_t_s_s(((p_50 || ((safe_mul_func_uint8_t_u_u((l_156[5] == (void*)0), (safe_rshift_func_int16_t_s_s((((safe_sub_func_int8_t_s_s((((safe_mul_func_uint8_t_u_u(p_49, (l_163 != (((*l_183) = (safe_rshift_func_int8_t_s_u((safe_div_func_uint32_t_u_u((l_182[1] = ((((safe_mod_func_uint32_t_u_u((p_1147->g_4[1] , ((*l_128) ^= ((safe_rshift_func_uint16_t_u_u((safe_sub_func_int16_t_s_s(p_47, (~(safe_lshift_func_uint8_t_u_u(((0UL >= (safe_mul_func_int16_t_s_s((-7L), (-8L)))) || p_47), p_49))))), 0)) ^ p_47))), l_178)) , (*p_1147->g_120)) <= 9UL) == p_50)), l_178)), l_178))) , &p_1147->g_74)))) > GROUP_DIVERGE(2, 1)) || l_182[1]), l_143)) == 0x398794C979CE0627L) <= p_47), 5)))) , l_178)) ^ p_1147->g_113[2][0]), 1UL))))
                { /* block id: 50 */
                    int64_t l_186 = 0x78241A347C53A199L;
                    uint32_t l_187 = 0UL;
                    l_187++;
                }
                else
                { /* block id: 52 */
                    uint32_t l_196 = 0x075437D3L;
                    int32_t l_207 = (-7L);
                    l_207 = ((((p_1147->g_6[4][7] , ((safe_rshift_func_uint8_t_u_u(((((*p_1147->g_8) = (65532UL || (-2L))) || ((safe_lshift_func_int8_t_s_s(((((safe_mul_func_uint16_t_u_u((0xFF11E01BE6A33768L && ((l_196 && (safe_add_func_uint32_t_u_u(p_50, (l_196 < (safe_sub_func_int64_t_s_s(1L, (((safe_rshift_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s(((safe_rshift_func_int8_t_s_u(p_49, p_47)) <= 0x05L), l_182[1])), p_47)) != 0x0AL) , 1L))))))) , l_143)), 65535UL)) == p_47) > 0x320F675BL) , p_1147->g_184), p_47)) <= (*p_1147->g_8))) , p_49), p_1147->g_127)) > 0x2B6AA6990C9B8F6FL)) <= l_143) < 0x463FL) == (-1L));
                    for (p_50 = 12; (p_50 <= 51); p_50 = safe_add_func_int16_t_s_s(p_50, 7))
                    { /* block id: 57 */
                        int32_t *l_210 = &p_1147->g_4[1];
                        if ((*p_1147->g_8))
                            break;
                        if (l_182[1])
                            continue;
                        l_210 = &l_182[1];
                    }
                    l_182[1] &= p_49;
                    for (p_1147->g_184 = 15; (p_1147->g_184 <= 12); p_1147->g_184 = safe_sub_func_int64_t_s_s(p_1147->g_184, 5))
                    { /* block id: 65 */
                        int16_t l_215[7][5] = {{(-10L),1L,(-10L),(-10L),1L},{(-10L),1L,(-10L),(-10L),1L},{(-10L),1L,(-10L),(-10L),1L},{(-10L),1L,(-10L),(-10L),1L},{(-10L),1L,(-10L),(-10L),1L},{(-10L),1L,(-10L),(-10L),1L},{(-10L),1L,(-10L),(-10L),1L}};
                        int32_t l_222 = 0x29113732L;
                        int i, j;
                        if ((*p_1147->g_8))
                            break;
                        l_215[1][4] ^= (safe_rshift_func_uint16_t_u_u(p_1147->g_111, 6));
                        p_1147->g_8 = (((safe_lshift_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(2UL, (safe_add_func_uint32_t_u_u(((l_222 = 0x6084F89FL) >= 1L), (safe_rshift_func_uint8_t_u_s(0UL, 2)))))), 0)) & p_49) , &l_207);
                    }
                }
            }
        }
    }
    p_1147->g_4[1] = (safe_add_func_int8_t_s_s((safe_mul_func_int8_t_s_s(0x53L, (safe_lshift_func_uint8_t_u_s(p_1147->g_4[1], 4)))), (l_231 != l_231)));
    for (p_1147->g_181 = 0; (p_1147->g_181 <= 5); p_1147->g_181 += 1)
    { /* block id: 78 */
        int32_t *l_233 = &p_1147->g_4[1];
        int64_t *l_240 = &p_1147->g_184;
        int32_t l_248 = 0x644A6914L;
        l_233 = l_233;
        for (p_1147->g_111 = 3; (p_1147->g_111 >= 0); p_1147->g_111 -= 1)
        { /* block id: 82 */
            uint32_t *l_243 = (void*)0;
            uint32_t *l_244 = &p_1147->g_129;
            uint32_t *l_245[8] = {&p_1147->g_246,&p_1147->g_246,&p_1147->g_246,&p_1147->g_246,&p_1147->g_246,&p_1147->g_246,&p_1147->g_246,&p_1147->g_246};
            int32_t l_249 = 0x3B3499E8L;
            uint64_t l_250[2];
            int32_t *l_268 = &l_248;
            int i;
            for (i = 0; i < 2; i++)
                l_250[i] = 1UL;
            p_1147->g_4[1] = (l_248 |= ((((safe_div_func_int16_t_s_s((safe_add_func_int8_t_s_s(((p_1147->g_113[2][0] == (-1L)) < ((((safe_sub_func_uint16_t_u_u(p_1147->g_113[0][1], (p_49 = ((((((p_1147->g_246 = ((*l_244) ^= ((((l_240 == &p_1147->g_184) | (*l_233)) & p_50) | (((p_1147->g_113[0][0] <= FAKE_DIVERGE(p_1147->group_2_offset, get_group_id(2), 10)) || ((safe_div_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), FAKE_DIVERGE(p_1147->group_1_offset, get_group_id(1), 10))) <= (l_233 == l_233))) , (*l_233))))) & 0xE71C2523L) > p_1147->g_111) == 0L) ^ l_247) > (-1L))))) ^ p_47) != 0x57C80C0894DA3E1DL) >= GROUP_DIVERGE(1, 1))), 0x68L)), (*l_233))) != 0x4C6C70B2367802F3L) == (*l_233)) < 0xC7C6L));
            l_250[0]--;
            for (p_49 = 3; (p_49 >= 0); p_49 -= 1)
            { /* block id: 91 */
                int32_t l_253[6][9][4] = {{{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L}},{{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L}},{{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L}},{{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L}},{{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L}},{{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L},{(-6L),0x7B546B69L,9L,7L}}};
                int32_t *l_267 = &p_1147->g_4[1];
                uint8_t l_305 = 246UL;
                int i, j, k;
                if (p_49)
                { /* block id: 92 */
                    int16_t l_259 = (-1L);
                    int32_t *l_265 = &p_1147->g_4[4];
                    for (l_249 = 0; (l_249 <= 3); l_249 += 1)
                    { /* block id: 95 */
                        int i, j, k;
                        (*l_233) = (l_253[4][0][0] ^ 65531UL);
                        p_1147->g_264 = (GROUP_DIVERGE(0, 1) > ((l_253[0][5][2] | (((safe_unary_minus_func_int32_t_s((0xC033L >= ((safe_mod_func_int32_t_s_s(((*l_233) = ((safe_sub_func_uint64_t_u_u(l_259, (((*l_118) = (safe_sub_func_int8_t_s_s(((safe_rshift_func_int16_t_s_u(1L, 4)) < ((void*)0 == &p_1147->g_119)), p_50))) , (p_1147->g_6[2][8] , (p_47 ^ (*l_233)))))) <= 0xE5L)), p_49)) || 0x2BD4F305L)))) ^ l_253[1][7][1]) && 5L)) ^ p_47));
                        l_265 = &l_249;
                    }
                    if (p_49)
                        break;
                }
                else
                { /* block id: 103 */
                    int32_t *l_266 = &p_1147->g_4[4];
                    l_267 = l_266;
                    p_1147->g_269 = (l_268 = (l_233 = (p_1147->g_8 = l_266)));
                    for (p_50 = 0; (p_50 <= 3); p_50 += 1)
                    { /* block id: 111 */
                        int32_t *l_271 = &p_1147->g_4[4];
                        int32_t *l_272 = (void*)0;
                        int32_t l_301 = 0x7C371AC0L;
                        uint32_t l_303 = 0x43EFEFC4L;
                        int i, j, k;
                        p_1147->g_270 = ((*l_267) = p_50);
                        (*l_233) = (((GROUP_DIVERGE(1, 1) , (((*l_118) = ((l_271 = (l_268 = &l_248)) == (l_272 = (void*)0))) > (((+(safe_sub_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((safe_add_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(p_49, 7)), (((p_1147->g_281 &= l_250[0]) , (safe_mul_func_uint16_t_u_u((p_47 == (safe_sub_func_uint32_t_u_u(0UL, (((safe_mod_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_s((((safe_mod_func_uint8_t_u_u(((l_249 &= (safe_mul_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u((&l_231 == (l_300 = p_1147->g_298)), (&p_1147->g_184 != (void*)0))) >= l_301), 9UL))) && 1UL), l_302)) || 252UL) <= (*l_266)), 7)) < 1UL), 65531UL)) > l_303), FAKE_DIVERGE(p_1147->global_1_offset, get_global_id(1), 10))) , p_1147->g_304) & p_50)))), p_50))) <= GROUP_DIVERGE(0, 1)))), p_49)), l_250[0]))) >= p_1147->g_129) != l_305))) , (*l_233)) >= p_47);
                    }
                    --l_306;
                }
            }
        }
    }
    return l_309;
}


/* ------------------------------------------ */
/* 
 * reads : p_1147->g_4
 * writes: p_1147->g_94 p_1147->g_111 p_1147->g_113 p_1147->g_4 p_1147->g_304
 */
uint8_t  func_53(int64_t  p_54, int32_t * p_55, int64_t  p_56, struct S1 * p_1147)
{ /* block id: 24 */
    union U0 *l_92 = &p_1147->g_93;
    union U0 **l_91[8] = {&l_92,&l_92,&l_92,&l_92,&l_92,&l_92,&l_92,&l_92};
    int32_t l_98 = (-1L);
    int16_t *l_112[5][9] = {{&p_1147->g_113[0][1],(void*)0,(void*)0,&p_1147->g_113[0][1],&p_1147->g_113[0][1],(void*)0,(void*)0,&p_1147->g_113[0][1],&p_1147->g_113[0][1]},{&p_1147->g_113[0][1],(void*)0,(void*)0,&p_1147->g_113[0][1],&p_1147->g_113[0][1],(void*)0,(void*)0,&p_1147->g_113[0][1],&p_1147->g_113[0][1]},{&p_1147->g_113[0][1],(void*)0,(void*)0,&p_1147->g_113[0][1],&p_1147->g_113[0][1],(void*)0,(void*)0,&p_1147->g_113[0][1],&p_1147->g_113[0][1]},{&p_1147->g_113[0][1],(void*)0,(void*)0,&p_1147->g_113[0][1],&p_1147->g_113[0][1],(void*)0,(void*)0,&p_1147->g_113[0][1],&p_1147->g_113[0][1]},{&p_1147->g_113[0][1],(void*)0,(void*)0,&p_1147->g_113[0][1],&p_1147->g_113[0][1],(void*)0,(void*)0,&p_1147->g_113[0][1],&p_1147->g_113[0][1]}};
    int32_t l_114 = 0x62ABC6E4L;
    int32_t l_115 = (-6L);
    int i, j;
    p_1147->g_94 = (void*)0;
    (*p_55) = (safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), ((l_98 , l_98) & ((l_98 | (((safe_rshift_func_uint8_t_u_u(p_1147->g_4[1], (safe_mul_func_int8_t_s_s((safe_add_func_int32_t_s_s(((l_115 = (p_1147->g_113[2][1] = (safe_rshift_func_int16_t_s_s(0x0D6EL, (l_114 = (safe_mod_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(l_98, (p_1147->g_111 = l_98))), (l_98 | l_98)))))))) >= 0x2854L), 4294967295UL)), l_98)))) != p_54) | 2UL)) || p_54))));
    return p_1147->g_4[0];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int64_t  func_57(uint64_t  p_58, int16_t * p_59, int16_t * p_60, struct S1 * p_1147)
{ /* block id: 20 */
    int32_t *l_75 = &p_1147->g_4[0];
    int32_t *l_76 = &p_1147->g_4[4];
    int32_t *l_77 = &p_1147->g_4[4];
    int32_t l_78 = 2L;
    int32_t *l_79 = &p_1147->g_4[1];
    int32_t *l_80 = &p_1147->g_4[3];
    int32_t *l_81 = &p_1147->g_4[4];
    int32_t *l_82 = &p_1147->g_4[1];
    int32_t *l_83 = &p_1147->g_4[1];
    int32_t *l_84 = &p_1147->g_4[4];
    int32_t *l_85 = &p_1147->g_4[0];
    int32_t l_86[8][9][3] = {{{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L}},{{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L}},{{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L}},{{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L}},{{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L}},{{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L}},{{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L}},{{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L},{0L,0L,0x6A5961B9L}}};
    uint64_t l_87[5] = {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL};
    uint64_t l_90 = 0x3606EC16123697E1L;
    int i, j, k;
    l_87[0]++;
    return l_90;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S1 c_1148;
    struct S1* p_1147 = &c_1148;
    struct S1 c_1149 = {
        {(-5L),(-5L),(-5L),(-5L),(-5L)}, // p_1147->g_4
        {{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L}}, // p_1147->g_6
        (void*)0, // p_1147->g_8
        0x39ABC19AL, // p_1147->g_10
        1L, // p_1147->g_11
        {{{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L}},{{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L}},{{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L}},{{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L}}}, // p_1147->g_12
        0x5CA7CEE7L, // p_1147->g_41
        0x5EL, // p_1147->g_74
        {0x8B84F8C03821FDCAL}, // p_1147->g_93
        {0xC0C2345427DA8976L}, // p_1147->g_95
        &p_1147->g_95, // p_1147->g_94
        1L, // p_1147->g_111
        {{1L,(-1L)},{1L,(-1L)},{1L,(-1L)},{1L,(-1L)},{1L,(-1L)},{1L,(-1L)}}, // p_1147->g_113
        &p_1147->g_113[2][0], // p_1147->g_120
        &p_1147->g_120, // p_1147->g_119
        0x709C141FE13ADAC6L, // p_1147->g_127
        1UL, // p_1147->g_129
        1UL, // p_1147->g_181
        0x48624F74BF3BD94EL, // p_1147->g_184
        {0UL}, // p_1147->g_232
        0x40E8074CL, // p_1147->g_246
        5UL, // p_1147->g_264
        &p_1147->g_4[1], // p_1147->g_269
        0x721F575689219BA9L, // p_1147->g_270
        0xAC4FL, // p_1147->g_281
        (void*)0, // p_1147->g_299
        &p_1147->g_299, // p_1147->g_298
        0x62669E41L, // p_1147->g_304
        0xA6F1L, // p_1147->g_322
        0x0CB86044L, // p_1147->g_327
        {1UL}, // p_1147->g_329
        (void*)0, // p_1147->g_336
        0x7DL, // p_1147->g_354
        0x1EL, // p_1147->g_373
        &p_1147->g_373, // p_1147->g_372
        0xEB87L, // p_1147->g_374
        {0x9037137A1798669FL}, // p_1147->g_384
        &p_1147->g_336, // p_1147->g_416
        0x518E6C9AA88BACEBL, // p_1147->g_421
        0UL, // p_1147->g_458
        {0x10BEFF45BC2F7AADL}, // p_1147->g_514
        9L, // p_1147->g_522
        &p_1147->g_74, // p_1147->g_547
        {&p_1147->g_547,&p_1147->g_547,&p_1147->g_547,&p_1147->g_547}, // p_1147->g_546
        {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}, // p_1147->g_607
        &p_1147->g_607[1][0], // p_1147->g_606
        {18446744073709551614UL,18446744073709551614UL,18446744073709551614UL}, // p_1147->g_613
        {0x71F0L,0x71F0L,0x71F0L,0x71F0L,0x71F0L}, // p_1147->g_627
        0x7E368407DC1F457EL, // p_1147->g_786
        &p_1147->g_374, // p_1147->g_787
        (void*)0, // p_1147->g_853
        0xD9L, // p_1147->g_881
        {{0x4172L,0x4172L,0x4172L,0x4172L,0x4172L,0x4172L,0x4172L,0x4172L,0x4172L}}, // p_1147->g_887
        {{{18446744073709551608UL},{18446744073709551608UL},{18446744073709551608UL}}}, // p_1147->g_932
        &p_1147->g_8, // p_1147->g_935
        &p_1147->g_281, // p_1147->g_957
        0x8B88C421L, // p_1147->g_978
        (-1L), // p_1147->g_982
        &p_1147->g_982, // p_1147->g_981
        &p_1147->g_981, // p_1147->g_980
        &p_1147->g_980, // p_1147->g_979
        {0x8D8E7BCC3230477CL}, // p_1147->g_988
        &p_1147->g_120, // p_1147->g_1011
        {{9L,(-1L),0x4B505AC8L,(-7L),0L,9L,(-7L)},{9L,(-1L),0x4B505AC8L,(-7L),0L,9L,(-7L)},{9L,(-1L),0x4B505AC8L,(-7L),0L,9L,(-7L)},{9L,(-1L),0x4B505AC8L,(-7L),0L,9L,(-7L)},{9L,(-1L),0x4B505AC8L,(-7L),0L,9L,(-7L)},{9L,(-1L),0x4B505AC8L,(-7L),0L,9L,(-7L)},{9L,(-1L),0x4B505AC8L,(-7L),0L,9L,(-7L)},{9L,(-1L),0x4B505AC8L,(-7L),0L,9L,(-7L)},{9L,(-1L),0x4B505AC8L,(-7L),0L,9L,(-7L)},{9L,(-1L),0x4B505AC8L,(-7L),0L,9L,(-7L)}}, // p_1147->g_1052
        {{0xF18E5C07L,0xF18E5C07L}}, // p_1147->g_1056
        {(void*)0}, // p_1147->g_1085
        &p_1147->g_1085[0], // p_1147->g_1084
        4294967295UL, // p_1147->g_1094
        {{18446744073709551609UL,18446744073709551609UL,18446744073709551609UL,18446744073709551609UL},{18446744073709551609UL,18446744073709551609UL,18446744073709551609UL,18446744073709551609UL},{18446744073709551609UL,18446744073709551609UL,18446744073709551609UL,18446744073709551609UL},{18446744073709551609UL,18446744073709551609UL,18446744073709551609UL,18446744073709551609UL},{18446744073709551609UL,18446744073709551609UL,18446744073709551609UL,18446744073709551609UL},{18446744073709551609UL,18446744073709551609UL,18446744073709551609UL,18446744073709551609UL}}, // p_1147->g_1125
        0, // p_1147->v_collective
        sequence_input[get_global_id(0)], // p_1147->global_0_offset
        sequence_input[get_global_id(1)], // p_1147->global_1_offset
        sequence_input[get_global_id(2)], // p_1147->global_2_offset
        sequence_input[get_local_id(0)], // p_1147->local_0_offset
        sequence_input[get_local_id(1)], // p_1147->local_1_offset
        sequence_input[get_local_id(2)], // p_1147->local_2_offset
        sequence_input[get_group_id(0)], // p_1147->group_0_offset
        sequence_input[get_group_id(1)], // p_1147->group_1_offset
        sequence_input[get_group_id(2)], // p_1147->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1148 = c_1149;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1147);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1147->g_4[i], "p_1147->g_4[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1147->g_6[i][j], "p_1147->g_6[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1147->g_10, "p_1147->g_10", print_hash_value);
    transparent_crc(p_1147->g_11, "p_1147->g_11", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1147->g_12[i][j][k], "p_1147->g_12[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1147->g_41, "p_1147->g_41", print_hash_value);
    transparent_crc(p_1147->g_74, "p_1147->g_74", print_hash_value);
    transparent_crc(p_1147->g_93.f0, "p_1147->g_93.f0", print_hash_value);
    transparent_crc(p_1147->g_95.f0, "p_1147->g_95.f0", print_hash_value);
    transparent_crc(p_1147->g_111, "p_1147->g_111", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1147->g_113[i][j], "p_1147->g_113[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1147->g_127, "p_1147->g_127", print_hash_value);
    transparent_crc(p_1147->g_129, "p_1147->g_129", print_hash_value);
    transparent_crc(p_1147->g_181, "p_1147->g_181", print_hash_value);
    transparent_crc(p_1147->g_184, "p_1147->g_184", print_hash_value);
    transparent_crc(p_1147->g_232.f0, "p_1147->g_232.f0", print_hash_value);
    transparent_crc(p_1147->g_246, "p_1147->g_246", print_hash_value);
    transparent_crc(p_1147->g_264, "p_1147->g_264", print_hash_value);
    transparent_crc(p_1147->g_270, "p_1147->g_270", print_hash_value);
    transparent_crc(p_1147->g_281, "p_1147->g_281", print_hash_value);
    transparent_crc(p_1147->g_304, "p_1147->g_304", print_hash_value);
    transparent_crc(p_1147->g_322, "p_1147->g_322", print_hash_value);
    transparent_crc(p_1147->g_327, "p_1147->g_327", print_hash_value);
    transparent_crc(p_1147->g_329.f0, "p_1147->g_329.f0", print_hash_value);
    transparent_crc(p_1147->g_354, "p_1147->g_354", print_hash_value);
    transparent_crc(p_1147->g_373, "p_1147->g_373", print_hash_value);
    transparent_crc(p_1147->g_374, "p_1147->g_374", print_hash_value);
    transparent_crc(p_1147->g_384.f0, "p_1147->g_384.f0", print_hash_value);
    transparent_crc(p_1147->g_421, "p_1147->g_421", print_hash_value);
    transparent_crc(p_1147->g_458, "p_1147->g_458", print_hash_value);
    transparent_crc(p_1147->g_514.f0, "p_1147->g_514.f0", print_hash_value);
    transparent_crc(p_1147->g_522, "p_1147->g_522", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1147->g_613[i], "p_1147->g_613[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1147->g_627[i], "p_1147->g_627[i]", print_hash_value);

    }
    transparent_crc(p_1147->g_786, "p_1147->g_786", print_hash_value);
    transparent_crc(p_1147->g_881, "p_1147->g_881", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1147->g_887[i][j], "p_1147->g_887[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1147->g_932[i][j].f0, "p_1147->g_932[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1147->g_978, "p_1147->g_978", print_hash_value);
    transparent_crc(p_1147->g_982, "p_1147->g_982", print_hash_value);
    transparent_crc(p_1147->g_988.f0, "p_1147->g_988.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1147->g_1052[i][j], "p_1147->g_1052[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1147->g_1056[i][j], "p_1147->g_1056[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1147->g_1094, "p_1147->g_1094", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1147->g_1125[i][j], "p_1147->g_1125[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1147->v_collective, "p_1147->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
