// --atomics 54 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 70,60,2 -l 1,15,2
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

__constant uint32_t permutations[10][30] = {
{1,26,12,15,13,29,16,10,25,23,22,7,19,17,3,6,9,24,5,21,27,11,28,8,2,18,4,0,20,14}, // permutation 0
{20,29,5,14,21,12,19,6,23,18,15,7,0,25,10,4,16,26,9,8,3,1,27,28,11,22,2,24,17,13}, // permutation 1
{1,16,29,15,19,8,27,3,14,22,2,11,5,18,12,24,13,10,0,21,9,23,28,4,25,20,6,26,7,17}, // permutation 2
{1,21,12,0,27,8,19,4,5,9,17,18,11,28,23,2,22,14,10,6,26,29,7,25,13,15,3,20,24,16}, // permutation 3
{13,7,10,11,2,15,26,21,27,5,19,17,6,18,12,3,1,24,23,22,9,20,28,8,25,4,16,29,0,14}, // permutation 4
{14,0,28,29,13,18,5,15,26,23,7,9,12,24,11,20,1,21,10,4,6,25,17,16,8,22,3,27,19,2}, // permutation 5
{11,3,18,22,16,8,14,9,19,10,24,29,21,1,15,12,25,17,4,7,13,6,23,27,0,26,20,5,28,2}, // permutation 6
{1,6,5,8,11,20,3,16,7,28,27,29,10,14,24,25,22,19,26,13,9,21,23,17,0,15,4,18,12,2}, // permutation 7
{18,22,24,10,27,4,1,2,9,12,11,26,16,15,23,21,6,0,7,28,14,19,29,13,25,3,8,20,5,17}, // permutation 8
{29,10,28,19,11,7,1,16,8,15,12,20,13,0,5,23,3,4,14,18,22,2,21,9,24,17,25,27,26,6} // permutation 9
};

// Seed: 62

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int64_t  f0;
   int32_t  f1;
};

struct S1 {
   uint32_t  f0;
   int32_t  f1;
   volatile int64_t  f2;
   uint32_t  f3;
   uint64_t  f4;
   uint8_t  f5;
   volatile int64_t  f6;
   uint64_t  f7;
   int32_t  f8;
   struct S0  f9;
};

union U2 {
   int16_t  f0;
   volatile int64_t  f1;
};

struct S3 {
    struct S1 g_6[2][10];
    struct S1 *g_5;
    int32_t * volatile g_9;
    uint8_t g_16;
    uint16_t g_24;
    int16_t g_48;
    int8_t g_58;
    int32_t *g_69;
    int32_t **g_68;
    VECTOR(uint64_t, 4) g_97;
    volatile VECTOR(uint8_t, 2) g_106;
    int32_t * volatile g_126[7][3];
    int16_t *g_134;
    int16_t **g_133;
    int16_t *** volatile g_132;
    struct S1 g_137;
    struct S0 * volatile g_141;
    volatile VECTOR(int8_t, 4) g_152;
    struct S1 g_166;
    struct S1 g_168;
    int64_t * volatile g_187;
    VECTOR(uint16_t, 8) g_205;
    volatile int64_t g_207;
    volatile int64_t *g_206;
    volatile struct S1 g_211;
    volatile struct S1 g_212[8];
    uint16_t *** volatile g_232;
    uint16_t *g_235;
    uint16_t **g_234[4];
    uint16_t *** volatile g_233[5];
    volatile VECTOR(int32_t, 16) g_237;
    VECTOR(uint8_t, 2) g_250;
    int32_t * volatile g_258;
    VECTOR(uint16_t, 2) g_260;
    int32_t * volatile g_261;
    int16_t ***g_263;
    volatile uint16_t g_295;
    int32_t * volatile g_347;
    int32_t * volatile g_348[9][5];
    int32_t * volatile g_349;
    volatile VECTOR(uint8_t, 8) g_352;
    volatile VECTOR(uint8_t, 8) g_366;
    volatile VECTOR(uint32_t, 16) g_396;
    VECTOR(uint64_t, 16) g_398;
    int16_t g_405;
    uint64_t g_406;
    volatile VECTOR(uint64_t, 2) g_412;
    VECTOR(uint8_t, 8) g_414;
    volatile VECTOR(uint8_t, 2) g_479;
    volatile VECTOR(int16_t, 8) g_509;
    VECTOR(int16_t, 4) g_525;
    VECTOR(uint16_t, 16) g_534;
    VECTOR(int16_t, 4) g_543;
    volatile VECTOR(int16_t, 8) g_550;
    volatile VECTOR(int64_t, 16) g_553;
    VECTOR(int16_t, 4) g_556;
    uint32_t g_570;
    volatile VECTOR(uint8_t, 8) g_591;
    volatile struct S1 g_621;
    VECTOR(uint64_t, 2) g_645;
    VECTOR(uint64_t, 16) g_646;
    VECTOR(int8_t, 4) g_659;
    volatile struct S1 g_711[9][5][5];
    VECTOR(uint16_t, 4) g_722;
    volatile struct S1 *g_730[2][5];
    volatile struct S1 ** volatile g_729[6][3][3];
    VECTOR(int32_t, 16) g_807;
    volatile VECTOR(uint8_t, 8) g_863;
    VECTOR(uint8_t, 4) g_866;
    VECTOR(uint64_t, 16) g_875;
    VECTOR(int16_t, 16) g_882;
    VECTOR(int16_t, 16) g_884;
    volatile VECTOR(int32_t, 4) g_947;
    union U2 g_955;
    volatile VECTOR(int64_t, 16) g_965;
    union U2 g_973[4][3];
    VECTOR(int64_t, 16) g_994;
    VECTOR(int32_t, 16) g_998;
    VECTOR(int32_t, 16) g_1379;
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
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint16_t  func_1(struct S3 * p_1408);
struct S1 * func_2(struct S1 * p_3, int64_t  p_4, struct S3 * p_1408);
int32_t  func_28(struct S1 * p_29, struct S3 * p_1408);
struct S1 * func_30(int32_t ** p_31, struct S1 * p_32, int32_t  p_33, int32_t  p_34, struct S3 * p_1408);
int32_t ** func_35(uint16_t  p_36, struct S3 * p_1408);
int32_t * func_72(struct S1 ** p_73, struct S3 * p_1408);
struct S1 ** func_74(int64_t * p_75, uint32_t  p_76, int32_t ** p_77, struct S3 * p_1408);
uint8_t  func_81(int32_t  p_82, int32_t  p_83, struct S3 * p_1408);
int64_t  func_89(int8_t  p_90, int32_t * p_91, struct S3 * p_1408);
struct S0  func_92(int32_t ** p_93, struct S3 * p_1408);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1408->g_5 p_1408->g_9 p_1408->g_6.f9.f1 p_1408->g_16 p_1408->g_24 p_1408->g_6.f2 p_1408->g_6.f9.f0 p_1408->g_comm_values p_1408->l_comm_values p_1408->g_48 p_1408->g_58 p_1408->g_68 p_1408->g_166.f8 p_1408->g_556 p_1408->g_168.f8 p_1408->g_947 p_1408->g_69 p_1408->g_137.f5 p_1408->g_955 p_1408->g_137.f8 p_1408->g_168.f3 p_1408->g_965 p_1408->g_168.f5 p_1408->g_295 p_1408->g_973 p_1408->g_994 p_1408->g_6 p_1408->g_263 p_1408->g_133 p_1408->g_998 p_1408->g_206 p_1408->g_207 p_1408->g_212.f1 p_1408->g_1379 p_1408->g_261 p_1408->g_973.f0 p_1408->g_166.f0 p_1408->g_258 p_1408->g_137.f9.f1 p_1408->g_168.f7
 * writes: p_1408->g_6.f9.f1 p_1408->g_9 p_1408->g_16 p_1408->g_5 p_1408->g_24 p_1408->g_48 p_1408->l_comm_values p_1408->g_58 p_1408->g_6.f8 p_1408->g_166.f8 p_1408->g_168.f8 p_1408->g_137.f5 p_1408->g_168.f3 p_1408->g_168.f5 p_1408->g_994 p_1408->g_955.f0 p_1408->g_168.f7
 */
uint16_t  func_1(struct S3 * p_1408)
{ /* block id: 4 */
    int32_t l_7 = 0x368B63C9L;
    struct S1 **l_20 = &p_1408->g_5;
    int32_t **l_21[3];
    uint32_t l_25 = 4UL;
    int16_t *l_47 = &p_1408->g_48;
    int64_t *l_49 = (void*)0;
    int64_t *l_50 = (void*)0;
    int64_t *l_51 = (void*)0;
    uint32_t l_1400 = 4294967291UL;
    uint64_t l_1407 = 8UL;
    int i;
    for (i = 0; i < 3; i++)
        l_21[i] = (void*)0;
    (*l_20) = func_2(p_1408->g_5, l_7, p_1408);
    p_1408->g_9 = (void*)0;
    if ((((VECTOR(int8_t, 8))(0x47L, (-3L), (safe_rshift_func_int16_t_s_s((p_1408->g_24 ^= 3L), 3)), ((p_1408->g_9 != (void*)0) && (p_1408->g_6[0][1].f2 , (l_25 & ((safe_mul_func_uint8_t_u_u(1UL, ((VECTOR(int8_t, 2))((-1L), 0x1AL)).even)) && 0x74D82229B2AB39D4L)))), (-8L), (func_28((p_1408->g_6[0][1].f9.f0 , func_30(func_35((safe_sub_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u((((VECTOR(int16_t, 4))((-1L), ((p_1408->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1408->tid, 30))] &= (safe_rshift_func_int16_t_s_s(((*l_47) = ((safe_lshift_func_uint8_t_u_u(((safe_add_func_int8_t_s_s(p_1408->g_6[0][1].f9.f0, 4UL)) || (-8L)), p_1408->g_comm_values[p_1408->tid])) | 8L)), 11))) && p_1408->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1408->tid, 30))]), 1L, 0x381DL)).w > p_1408->g_comm_values[p_1408->tid]), p_1408->g_6[0][1].f9.f0)), FAKE_DIVERGE(p_1408->global_2_offset, get_global_id(2), 10))), p_1408), (*l_20), p_1408->g_6[0][1].f2, p_1408->g_556.y, p_1408)), p_1408) | 0L), 0x29L, 0x54L)).s0 == l_1400))
    { /* block id: 676 */
        int64_t l_1403 = 5L;
        for (p_1408->g_168.f7 = 8; (p_1408->g_168.f7 <= 47); ++p_1408->g_168.f7)
        { /* block id: 679 */
            if (l_1403)
                break;
        }
        return l_1403;
    }
    else
    { /* block id: 683 */
        (*p_1408->g_69) = 0x0FB2DE81L;
        for (p_1408->g_166.f8 = 0; (p_1408->g_166.f8 > 24); p_1408->g_166.f8 = safe_add_func_uint16_t_u_u(p_1408->g_166.f8, 2))
        { /* block id: 687 */
            uint64_t l_1406[1];
            int i;
            for (i = 0; i < 1; i++)
                l_1406[i] = 0x8340B691556F71EFL;
            return l_1406[0];
        }
    }
    return l_1407;
}


/* ------------------------------------------ */
/* 
 * reads : p_1408->g_9 p_1408->g_6.f9.f1 p_1408->g_16
 * writes: p_1408->g_6.f9.f1 p_1408->g_9 p_1408->g_16
 */
struct S1 * func_2(struct S1 * p_3, int64_t  p_4, struct S3 * p_1408)
{ /* block id: 5 */
    int16_t l_8 = 0x0C81L;
    int32_t *l_10 = (void*)0;
    int32_t *l_11 = &p_1408->g_6[0][1].f9.f1;
    int32_t l_12 = 1L;
    int32_t *l_13 = &p_1408->g_6[0][1].f8;
    int32_t l_14 = 1L;
    int32_t *l_15[5][7] = {{&l_14,(void*)0,&l_14,(void*)0,&l_14,&l_14,(void*)0},{&l_14,(void*)0,&l_14,(void*)0,&l_14,&l_14,(void*)0},{&l_14,(void*)0,&l_14,(void*)0,&l_14,&l_14,(void*)0},{&l_14,(void*)0,&l_14,(void*)0,&l_14,&l_14,(void*)0},{&l_14,(void*)0,&l_14,(void*)0,&l_14,&l_14,(void*)0}};
    struct S1 *l_19 = &p_1408->g_6[0][1];
    int i, j;
    (*p_1408->g_9) |= l_8;
    p_1408->g_9 = l_10;
    ++p_1408->g_16;
    return l_19;
}


/* ------------------------------------------ */
/* 
 * reads : p_1408->g_955 p_1408->g_137.f8 p_1408->g_168.f3 p_1408->g_965 p_1408->g_168.f5 p_1408->g_295 p_1408->g_973 p_1408->g_556 p_1408->g_24 p_1408->g_994 p_1408->g_6 p_1408->g_263 p_1408->g_133 p_1408->g_998 p_1408->g_206 p_1408->g_207 p_1408->g_69 p_1408->g_16 p_1408->g_68 p_1408->g_212.f1 p_1408->g_1379 p_1408->g_261 p_1408->g_973.f0 p_1408->g_166.f0 p_1408->g_168.f8 p_1408->g_258 p_1408->g_137.f9.f1
 * writes: p_1408->g_168.f3 p_1408->g_168.f5 p_1408->g_24 p_1408->g_994 p_1408->g_6.f8 p_1408->g_16 p_1408->g_955.f0 p_1408->g_166.f8 p_1408->g_168.f8
 */
int32_t  func_28(struct S1 * p_29, struct S3 * p_1408)
{ /* block id: 464 */
    union U2 *l_958[3][8][6] = {{{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955}},{{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955}},{{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955},{&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955,&p_1408->g_955}}};
    uint32_t *l_963 = &p_1408->g_168.f3;
    VECTOR(int64_t, 8) l_964 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-5L)), (-5L)), (-5L), 0L, (-5L));
    uint8_t *l_970 = &p_1408->g_168.f5;
    uint64_t *l_971[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_972 = 0x41B90597L;
    int32_t l_981 = 0x0B3F1A36L;
    VECTOR(int64_t, 8) l_990 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x354393E9804D7B64L), 0x354393E9804D7B64L), 0x354393E9804D7B64L, 1L, 0x354393E9804D7B64L);
    VECTOR(int64_t, 2) l_993 = (VECTOR(int64_t, 2))(0L, (-1L));
    VECTOR(int32_t, 16) l_996 = (VECTOR(int32_t, 16))(0x1C5DD77DL, (VECTOR(int32_t, 4))(0x1C5DD77DL, (VECTOR(int32_t, 2))(0x1C5DD77DL, 0x00DFA858L), 0x00DFA858L), 0x00DFA858L, 0x1C5DD77DL, 0x00DFA858L, (VECTOR(int32_t, 2))(0x1C5DD77DL, 0x00DFA858L), (VECTOR(int32_t, 2))(0x1C5DD77DL, 0x00DFA858L), 0x1C5DD77DL, 0x00DFA858L, 0x1C5DD77DL, 0x00DFA858L);
    VECTOR(uint32_t, 4) l_997 = (VECTOR(uint32_t, 4))(0x252CB0CBL, (VECTOR(uint32_t, 2))(0x252CB0CBL, 5UL), 5UL);
    int32_t l_1013 = (-1L);
    int32_t l_1014 = 0x53247897L;
    int32_t l_1015 = 2L;
    int32_t l_1016 = (-1L);
    int32_t l_1017[7][8] = {{7L,(-4L),0x29C4AFE3L,0x09A826EFL,0x3D1A973AL,0x3D1A973AL,0x09A826EFL,0x29C4AFE3L},{7L,(-4L),0x29C4AFE3L,0x09A826EFL,0x3D1A973AL,0x3D1A973AL,0x09A826EFL,0x29C4AFE3L},{7L,(-4L),0x29C4AFE3L,0x09A826EFL,0x3D1A973AL,0x3D1A973AL,0x09A826EFL,0x29C4AFE3L},{7L,(-4L),0x29C4AFE3L,0x09A826EFL,0x3D1A973AL,0x3D1A973AL,0x09A826EFL,0x29C4AFE3L},{7L,(-4L),0x29C4AFE3L,0x09A826EFL,0x3D1A973AL,0x3D1A973AL,0x09A826EFL,0x29C4AFE3L},{7L,(-4L),0x29C4AFE3L,0x09A826EFL,0x3D1A973AL,0x3D1A973AL,0x09A826EFL,0x29C4AFE3L},{7L,(-4L),0x29C4AFE3L,0x09A826EFL,0x3D1A973AL,0x3D1A973AL,0x09A826EFL,0x29C4AFE3L}};
    int i, j, k;
    if ((FAKE_DIVERGE(p_1408->global_1_offset, get_global_id(1), 10) < (safe_add_func_int32_t_s_s(3L, (p_1408->g_955 , (safe_mod_func_int8_t_s_s(((void*)0 == l_958[0][0][1]), ((safe_rshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x23966108L, 1L)))), 0x34222C1DL, 1L)).z ^ ((*l_963) |= p_1408->g_137.f8)), (((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 4))(l_964.s2200)), ((VECTOR(int64_t, 4))(p_1408->g_965.sb108))))), (((safe_add_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u(((l_972 |= ((l_964.s4 & ((*l_970) ^= 1UL)) | (-1L))) > p_1408->g_295), l_964.s2)), 0x33F6L)) < l_964.s6) , 0x1490D8B4DE2823B4L), ((VECTOR(int64_t, 8))(0x3189370D8A83DF77L)), l_964.s0, 0x00776325A41C88F9L, 0x400D25896AC1C127L)).s7 != l_964.s5))) || 0x09F2L), l_964.s7)) , l_964.s4))))))))
    { /* block id: 468 */
        uint16_t *l_982 = &p_1408->g_24;
        VECTOR(int64_t, 8) l_991 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
        VECTOR(int64_t, 8) l_992 = (VECTOR(int64_t, 8))(0x4E2059609BD4833EL, (VECTOR(int64_t, 4))(0x4E2059609BD4833EL, (VECTOR(int64_t, 2))(0x4E2059609BD4833EL, 2L), 2L), 2L, 0x4E2059609BD4833EL, 2L);
        VECTOR(int64_t, 8) l_995 = (VECTOR(int64_t, 8))((-8L), (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), 0x287C485999EB07BCL), 0x287C485999EB07BCL), 0x287C485999EB07BCL, (-8L), 0x287C485999EB07BCL);
        VECTOR(int32_t, 2) l_999 = (VECTOR(int32_t, 2))(8L, 0x0CD99438L);
        int64_t *l_1004 = (void*)0;
        int64_t *l_1005[1][8];
        uint16_t *l_1006 = (void*)0;
        uint16_t *l_1007 = (void*)0;
        uint16_t *l_1008 = (void*)0;
        uint16_t *l_1009 = (void*)0;
        uint16_t *l_1010[5];
        int32_t *l_1011 = &l_981;
        int32_t *l_1012[4];
        uint8_t l_1018 = 254UL;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 8; j++)
                l_1005[i][j] = (void*)0;
        }
        for (i = 0; i < 5; i++)
            l_1010[i] = (void*)0;
        for (i = 0; i < 4; i++)
            l_1012[i] = &l_981;
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_1408->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 30)), permutations[(safe_mod_func_uint32_t_u_u(2UL, 10))][(safe_mod_func_uint32_t_u_u(p_1408->tid, 30))]));
        (*p_1408->g_69) = ((p_1408->g_973[3][1] , (p_1408->g_556.w | ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x56L, 0x7AL)).xyyyxxxx)).s0)) , (safe_rshift_func_uint16_t_u_s((l_972 = ((safe_unary_minus_func_int16_t_s(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))(0x49FDL, 0x057AL)).yxxxyxxx))).s4136236700541530)).s0)) != (safe_mul_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), 2)) ^ (--(*l_982))), (safe_lshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 2))(0x7C4DEF95AE8EF2DAL, (-5L))).yxyxyxyy, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 16))(6L, (safe_unary_minus_func_int32_t_s(0x75E873BAL)), ((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(l_990.s47)))).xxxyyxyy, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(l_991.s1132615236504710)).hi))))))).s25)), ((VECTOR(int64_t, 4))(l_992.s2420)).hi))), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(0x2A52AF9F23B8C866L, 0x0C84313E98314189L)))), ((VECTOR(int64_t, 2))(l_993.xx)), ((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 2))(p_1408->g_994.s6f)).xxyx, ((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 2))(l_995.s76)).xyyxxyxyxxyyxyxx, ((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 8))(l_996.s96459d7d)).s65, ((VECTOR(uint32_t, 4))(5UL, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_997.zz)), 0xA7431DA2L, 0xA54B6102L)).y, 0x64EF22F2L, 0UL)).even))), (((((*p_29) , &p_1408->g_406) != l_971[3]) && ((void*)0 != (*p_1408->g_263))) >= (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(p_1408->g_998.sc90c0e16)).s27)).even < ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 2))(0x44195096L, 0x0B1DE178L)).yyxyxyxyxyyxyxxx, ((VECTOR(int32_t, 4))(l_999.yyxx)).wwzwwwzxyyzyxyzx))).s3)), (p_1408->g_994.s1 &= (safe_lshift_func_int8_t_s_u((safe_sub_func_int64_t_s_s((*p_1408->g_206), l_997.x)), p_1408->g_168.f5))), 0x5472C613000CBC6EL, ((VECTOR(int64_t, 2))(0x169ED401E9B08C34L)), (-1L))))), ((VECTOR(int64_t, 8))(0x27EAB0D3F58094C5L))))).odd, ((VECTOR(int64_t, 4))((-5L)))))).xzywzyxy, ((VECTOR(int64_t, 8))(0x1E292C7980A525B2L))))).s7044365660212714))).s8ab9))), 0x35A4F7B0B5FA4917L, ((VECTOR(int64_t, 2))(0x5EEAC9347485005FL)), (-2L))).hi, ((VECTOR(int64_t, 8))(0x739A17561EC60C4BL))))), ((VECTOR(int64_t, 2))((-5L))), 0x049A4CC9488CE419L, (-2L), 1L, ((VECTOR(int64_t, 2))(0x72F5FF5B20ABCBD2L)), 0x73584063E72E5CC8L)).scfe0)), ((VECTOR(int64_t, 2))(0x4CA398700E1E1899L)), (-1L), 0x10FEFB7EA2E4B13FL))))).s1164013045300174)).sd7, ((VECTOR(int64_t, 2))(7L))))).hi , l_992.s0), 7UL)), 7)))))), l_997.x)));
        --l_1018;
    }
    else
    { /* block id: 477 */
        uint64_t *l_1381 = (void*)0;
        VECTOR(uint32_t, 2) l_1382 = (VECTOR(uint32_t, 2))(1UL, 0xC70613E4L);
        int i;
        for (p_1408->g_16 = 0; (p_1408->g_16 != 45); p_1408->g_16++)
        { /* block id: 480 */
            (**p_1408->g_68) = l_996.sc;
            if ((*p_1408->g_69))
                continue;
            if ((atomic_inc(&p_1408->l_atomic_input[28]) == 9))
            { /* block id: 484 */
                uint64_t l_1023[1];
                uint16_t l_1024 = 65531UL;
                int32_t l_1026[6][2][3] = {{{0x3B1A367CL,(-1L),0x5D4A0BF1L},{0x3B1A367CL,(-1L),0x5D4A0BF1L}},{{0x3B1A367CL,(-1L),0x5D4A0BF1L},{0x3B1A367CL,(-1L),0x5D4A0BF1L}},{{0x3B1A367CL,(-1L),0x5D4A0BF1L},{0x3B1A367CL,(-1L),0x5D4A0BF1L}},{{0x3B1A367CL,(-1L),0x5D4A0BF1L},{0x3B1A367CL,(-1L),0x5D4A0BF1L}},{{0x3B1A367CL,(-1L),0x5D4A0BF1L},{0x3B1A367CL,(-1L),0x5D4A0BF1L}},{{0x3B1A367CL,(-1L),0x5D4A0BF1L},{0x3B1A367CL,(-1L),0x5D4A0BF1L}}};
                int32_t *l_1025 = &l_1026[4][0][2];
                int32_t *l_1027 = &l_1026[4][0][2];
                int32_t *l_1028 = &l_1026[4][0][2];
                int32_t *l_1029 = &l_1026[4][0][2];
                VECTOR(int32_t, 4) l_1030 = (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 0L), 0L);
                VECTOR(int16_t, 4) l_1031 = (VECTOR(int16_t, 4))(0x5903L, (VECTOR(int16_t, 2))(0x5903L, 0L), 0L);
                uint32_t l_1032 = 0xDC91D908L;
                int32_t l_1033 = 0x3BF56EA0L;
                int8_t l_1034 = 1L;
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_1023[i] = 2UL;
                l_1024 ^= l_1023[0];
                l_1027 = l_1025;
                l_1029 = l_1028;
                l_1034 = (l_1033 = ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_1030.zxxwzxyxzzxywyxy)).se77b)).xxxwzywx, ((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 16))(l_1031.wxxzwwwxwyzzzyyz)), ((VECTOR(uint16_t, 8))(l_1032, 0UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0xF161L, 65533UL)).yxxx)), 65535UL, 0x0E29L)).s3476472304064502))))))).sed)).xxxyyyxyyxxxyxyy))).even))).s6);
                unsigned int result = 0;
                int l_1023_i0;
                for (l_1023_i0 = 0; l_1023_i0 < 1; l_1023_i0++) {
                    result += l_1023[l_1023_i0];
                }
                result += l_1024;
                int l_1026_i0, l_1026_i1, l_1026_i2;
                for (l_1026_i0 = 0; l_1026_i0 < 6; l_1026_i0++) {
                    for (l_1026_i1 = 0; l_1026_i1 < 2; l_1026_i1++) {
                        for (l_1026_i2 = 0; l_1026_i2 < 3; l_1026_i2++) {
                            result += l_1026[l_1026_i0][l_1026_i1][l_1026_i2];
                        }
                    }
                }
                result += l_1030.w;
                result += l_1030.z;
                result += l_1030.y;
                result += l_1030.x;
                result += l_1031.w;
                result += l_1031.z;
                result += l_1031.y;
                result += l_1031.x;
                result += l_1032;
                result += l_1033;
                result += l_1034;
                atomic_add(&p_1408->l_special_values[28], result);
            }
            else
            { /* block id: 490 */
                (1 + 1);
            }
        }
        if ((atomic_inc(&p_1408->g_atomic_input[54 * get_linear_group_id() + 44]) == 3))
        { /* block id: 495 */
            uint8_t l_1035 = 0x0AL;
            uint32_t l_1036 = 0UL;
            int8_t l_1037 = 0x1DL;
            uint32_t l_1038 = 0xFADB1DC7L;
            int8_t l_1041 = 0x14L;
            VECTOR(uint64_t, 8) l_1042 = (VECTOR(uint64_t, 8))(0x24FCAE2AE3C5FD13L, (VECTOR(uint64_t, 4))(0x24FCAE2AE3C5FD13L, (VECTOR(uint64_t, 2))(0x24FCAE2AE3C5FD13L, 0xF283F45388E3040BL), 0xF283F45388E3040BL), 0xF283F45388E3040BL, 0x24FCAE2AE3C5FD13L, 0xF283F45388E3040BL);
            int16_t l_1043 = 0x7708L;
            VECTOR(uint64_t, 8) l_1044 = (VECTOR(uint64_t, 8))(0x3A40D7C7A5C0DFC7L, (VECTOR(uint64_t, 4))(0x3A40D7C7A5C0DFC7L, (VECTOR(uint64_t, 2))(0x3A40D7C7A5C0DFC7L, 0x54A2218238771E2AL), 0x54A2218238771E2AL), 0x54A2218238771E2AL, 0x3A40D7C7A5C0DFC7L, 0x54A2218238771E2AL);
            VECTOR(uint64_t, 16) l_1045 = (VECTOR(uint64_t, 16))(0xA429FCCCADD29CB4L, (VECTOR(uint64_t, 4))(0xA429FCCCADD29CB4L, (VECTOR(uint64_t, 2))(0xA429FCCCADD29CB4L, 0xAA5E88EEF498E3F0L), 0xAA5E88EEF498E3F0L), 0xAA5E88EEF498E3F0L, 0xA429FCCCADD29CB4L, 0xAA5E88EEF498E3F0L, (VECTOR(uint64_t, 2))(0xA429FCCCADD29CB4L, 0xAA5E88EEF498E3F0L), (VECTOR(uint64_t, 2))(0xA429FCCCADD29CB4L, 0xAA5E88EEF498E3F0L), 0xA429FCCCADD29CB4L, 0xAA5E88EEF498E3F0L, 0xA429FCCCADD29CB4L, 0xAA5E88EEF498E3F0L);
            VECTOR(int8_t, 8) l_1046 = (VECTOR(int8_t, 8))(0x0CL, (VECTOR(int8_t, 4))(0x0CL, (VECTOR(int8_t, 2))(0x0CL, 0x1EL), 0x1EL), 0x1EL, 0x0CL, 0x1EL);
            uint32_t l_1047 = 4294967291UL;
            VECTOR(uint64_t, 16) l_1048 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 0UL), 0UL, 18446744073709551615UL, 0UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 18446744073709551615UL, 0UL, 18446744073709551615UL, 0UL);
            VECTOR(uint64_t, 2) l_1049 = (VECTOR(uint64_t, 2))(0x2E19559A839172C1L, 0x9C93D494BCF8D8BFL);
            VECTOR(uint64_t, 2) l_1050 = (VECTOR(uint64_t, 2))(0x0399F54273717572L, 0xCCFDC5A2615C861EL);
            VECTOR(uint64_t, 2) l_1051 = (VECTOR(uint64_t, 2))(0x6C390F449C6156D8L, 0x616E03E249402618L);
            VECTOR(uint64_t, 2) l_1052 = (VECTOR(uint64_t, 2))(0x3BF16D8085CCFD30L, 0x19440ABD9DFDE3E0L);
            VECTOR(uint64_t, 16) l_1053 = (VECTOR(uint64_t, 16))(0x65DE10AFA5F52EAAL, (VECTOR(uint64_t, 4))(0x65DE10AFA5F52EAAL, (VECTOR(uint64_t, 2))(0x65DE10AFA5F52EAAL, 18446744073709551609UL), 18446744073709551609UL), 18446744073709551609UL, 0x65DE10AFA5F52EAAL, 18446744073709551609UL, (VECTOR(uint64_t, 2))(0x65DE10AFA5F52EAAL, 18446744073709551609UL), (VECTOR(uint64_t, 2))(0x65DE10AFA5F52EAAL, 18446744073709551609UL), 0x65DE10AFA5F52EAAL, 18446744073709551609UL, 0x65DE10AFA5F52EAAL, 18446744073709551609UL);
            int16_t l_1054[2];
            int32_t l_1057 = 0x6B3AB924L;
            uint64_t l_1058 = 0x9E537F73481A7032L;
            int64_t l_1061 = 1L;
            int32_t l_1062 = 1L;
            int16_t l_1063[9];
            VECTOR(uint64_t, 8) l_1064 = (VECTOR(uint64_t, 8))(0x7E77E24C0B32B334L, (VECTOR(uint64_t, 4))(0x7E77E24C0B32B334L, (VECTOR(uint64_t, 2))(0x7E77E24C0B32B334L, 7UL), 7UL), 7UL, 0x7E77E24C0B32B334L, 7UL);
            int32_t l_1065 = 0x1E9F0912L;
            int16_t l_1066 = (-2L);
            uint32_t l_1067 = 1UL;
            uint8_t l_1068 = 0UL;
            int32_t l_1069 = (-8L);
            struct S0 l_1070 = {0x5F7D87A1270D6CA2L,-3L};
            int i;
            for (i = 0; i < 2; i++)
                l_1054[i] = (-6L);
            for (i = 0; i < 9; i++)
                l_1063[i] = 0x4FF5L;
            l_1070 = ((((l_1036 = l_1035) , (l_1038--)) , l_1041) , (((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))((-4L), 1L, 1L, (-6L))).zwywxyxwzwwzxxyx)).sa , (((VECTOR(uint64_t, 4))(hadd(((VECTOR(uint64_t, 8))(0x13A260AC5DD935DEL, ((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_1042.s76)), 18446744073709551615UL, 18446744073709551612UL)).lo))), l_1043, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 2))(0x0BF4CC4379EA0D6FL, 1UL)).yxyxxxxx, ((VECTOR(uint64_t, 16))(l_1044.s4765742550525260)).even))).s74)).yyxxyxxyyxxyxyyx, ((VECTOR(uint64_t, 16))(l_1045.s10c8c8bf74a734d1))))).sb, (l_1046.s2 , l_1047), 0xC291F33990975904L, ((VECTOR(uint64_t, 4))(l_1048.s40ce)), 2UL, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0x75CCDDA46E15B16CL, 0xC0523B34A61251E4L)), 0x9C4450BD86B82B02L, 1UL)), 1UL, 0UL, 0xD6B456D535C0EB7FL, 0UL)).even, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(l_1049.yyyy)).lo)), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(0UL, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 2))(6UL, 0xB8341B0C96ED60DFL)), ((VECTOR(uint64_t, 4))(l_1050.xyyx)).lo))), 8UL, 0x22DBEAEA1907C267L)), 18446744073709551606UL, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(0x003C7FB73BC4AD8AL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_1051.yx)), 5UL, 18446744073709551611UL)), 0xCE2F7EB703CC69EFL, ((VECTOR(uint64_t, 2))(max(((VECTOR(uint64_t, 4))(l_1052.yxxy)).lo, ((VECTOR(uint64_t, 4))(l_1053.s996e)).even))), 0x720494321F14F33EL)).s6662371527303512)).s4d)), 6UL, (FAKE_DIVERGE(p_1408->global_2_offset, get_global_id(2), 10) , (l_1054[1] = GROUP_DIVERGE(2, 1))), FAKE_DIVERGE(p_1408->global_2_offset, get_global_id(2), 10), 18446744073709551607UL, 0x2230BD688B2453A5L)))), 5UL, 0xF4CCE230081001FCL)).s7cf3)).w, 0UL, 7UL, (l_1057 = (l_1044.s6--)), 18446744073709551614UL, 18446744073709551615UL, 0xD96C3FE262956096L, 6UL)).even)), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))((((((l_1061 = (++l_1058)) , l_1062) , l_1063[7]) , ((VECTOR(int64_t, 2))(0L, 0x3D5259585EAC80A6L)).hi) , ((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),uint64_t,((VECTOR(uint64_t, 8))(l_1064.s37324573)).hi, (uint64_t)l_1065, (uint64_t)l_1066))).w), 0x1C6D4839B1A06FA6L, 0UL, 0x5D5F82B62F368246L, ((VECTOR(uint64_t, 8))(9UL)), 1UL, 3UL, 4UL, 0xFC9C7BAB18D4E26AL)).s97)), 0x90C437DEC5D4BC84L, ((VECTOR(uint64_t, 2))(4UL)), l_1067, l_1068, l_1069, 18446744073709551615UL, 18446744073709551615UL)).s02)).xyxyyyyxxxxyyxxx, ((VECTOR(uint64_t, 16))(0xAE9854438A00C5B1L)), ((VECTOR(uint64_t, 16))(18446744073709551615UL))))))).odd))).lo)))).lo, ((VECTOR(uint64_t, 4))(8UL))))).x , l_1070)));
            for (l_1054[0] = 0; (l_1054[0] > (-4)); l_1054[0]--)
            { /* block id: 506 */
                int32_t l_1073 = (-10L);
                uint8_t l_1090 = 0x64L;
                uint16_t l_1093 = 9UL;
                VECTOR(int32_t, 16) l_1121 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int32_t, 2))((-1L), 0L), (VECTOR(int32_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
                int i;
                for (l_1073 = (-25); (l_1073 > (-15)); l_1073++)
                { /* block id: 509 */
                    int16_t *l_1077[5];
                    int16_t **l_1076 = &l_1077[3];
                    int16_t **l_1078 = &l_1077[3];
                    int32_t l_1079[8][3];
                    int i, j;
                    for (i = 0; i < 5; i++)
                        l_1077[i] = (void*)0;
                    for (i = 0; i < 8; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_1079[i][j] = 0x1EB382FBL;
                    }
                    l_1078 = l_1076;
                    for (l_1079[5][2] = 0; (l_1079[5][2] != 21); ++l_1079[5][2])
                    { /* block id: 513 */
                        union U2 l_1082 = {0x3340L};/* VOLATILE GLOBAL l_1082 */
                        struct S0 l_1083 = {0x4A44AEB2A48B1DEFL,0x38278186L};
                        int32_t *l_1084 = &l_1083.f1;
                        int32_t *l_1085 = &l_1083.f1;
                        int32_t *l_1086 = &l_1083.f1;
                        uint64_t l_1087 = 0xB45597D71DE56018L;
                        l_1086 = (l_1082 , (l_1085 = (l_1083 , (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(18446744073709551615UL, 0xB5815E9C3208E7B5L)).yyxyxxxyxyyyxyyy)).s1 , l_1084))));
                        --l_1087;
                    }
                }
                l_1090++;
                if (l_1093)
                { /* block id: 520 */
                    struct S1 *l_1094 = (void*)0;
                    int32_t l_1095 = 0x5D26BA00L;
                    l_1094 = (void*)0;
                    for (l_1095 = 0; (l_1095 > (-21)); l_1095--)
                    { /* block id: 524 */
                        int64_t l_1098 = 0x45A5F98CD1CB6BEBL;
                        uint32_t l_1099 = 0x32DD4EA7L;
                        int16_t l_1102 = (-8L);
                        int64_t l_1103 = 1L;
                        int32_t *l_1104 = (void*)0;
                        int32_t l_1106 = 0x586C8060L;
                        int32_t *l_1105[4] = {&l_1106,&l_1106,&l_1106,&l_1106};
                        int32_t *l_1107 = &l_1106;
                        int i;
                        l_1099++;
                        l_1062 = (l_1102 , ((VECTOR(int32_t, 2))(0x6FA81A38L, 0x075EC534L)).odd);
                        l_1105[3] = (l_1103 , l_1104);
                        l_1107 = (void*)0;
                    }
                }
                else
                { /* block id: 530 */
                    int32_t l_1108 = 3L;
                    int32_t l_1109 = (-8L);
                    int16_t l_1110 = 0x5F5BL;
                    uint8_t l_1111 = 1UL;
                    ++l_1111;
                    for (l_1109 = (-12); (l_1109 != 16); l_1109++)
                    { /* block id: 534 */
                        int32_t l_1116 = 0x31C861B4L;
                        int32_t l_1117 = 0x5542E8DCL;
                        uint32_t l_1118[6][4][1] = {{{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL}}};
                        int i, j, k;
                        --l_1118[3][1][0];
                    }
                }
                l_1057 = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_1121.s22)), (-1L), 0x067575A5L)))).yzxwyxzx)).odd)).z;
            }
            unsigned int result = 0;
            result += l_1035;
            result += l_1036;
            result += l_1037;
            result += l_1038;
            result += l_1041;
            result += l_1042.s7;
            result += l_1042.s6;
            result += l_1042.s5;
            result += l_1042.s4;
            result += l_1042.s3;
            result += l_1042.s2;
            result += l_1042.s1;
            result += l_1042.s0;
            result += l_1043;
            result += l_1044.s7;
            result += l_1044.s6;
            result += l_1044.s5;
            result += l_1044.s4;
            result += l_1044.s3;
            result += l_1044.s2;
            result += l_1044.s1;
            result += l_1044.s0;
            result += l_1045.sf;
            result += l_1045.se;
            result += l_1045.sd;
            result += l_1045.sc;
            result += l_1045.sb;
            result += l_1045.sa;
            result += l_1045.s9;
            result += l_1045.s8;
            result += l_1045.s7;
            result += l_1045.s6;
            result += l_1045.s5;
            result += l_1045.s4;
            result += l_1045.s3;
            result += l_1045.s2;
            result += l_1045.s1;
            result += l_1045.s0;
            result += l_1046.s7;
            result += l_1046.s6;
            result += l_1046.s5;
            result += l_1046.s4;
            result += l_1046.s3;
            result += l_1046.s2;
            result += l_1046.s1;
            result += l_1046.s0;
            result += l_1047;
            result += l_1048.sf;
            result += l_1048.se;
            result += l_1048.sd;
            result += l_1048.sc;
            result += l_1048.sb;
            result += l_1048.sa;
            result += l_1048.s9;
            result += l_1048.s8;
            result += l_1048.s7;
            result += l_1048.s6;
            result += l_1048.s5;
            result += l_1048.s4;
            result += l_1048.s3;
            result += l_1048.s2;
            result += l_1048.s1;
            result += l_1048.s0;
            result += l_1049.y;
            result += l_1049.x;
            result += l_1050.y;
            result += l_1050.x;
            result += l_1051.y;
            result += l_1051.x;
            result += l_1052.y;
            result += l_1052.x;
            result += l_1053.sf;
            result += l_1053.se;
            result += l_1053.sd;
            result += l_1053.sc;
            result += l_1053.sb;
            result += l_1053.sa;
            result += l_1053.s9;
            result += l_1053.s8;
            result += l_1053.s7;
            result += l_1053.s6;
            result += l_1053.s5;
            result += l_1053.s4;
            result += l_1053.s3;
            result += l_1053.s2;
            result += l_1053.s1;
            result += l_1053.s0;
            int l_1054_i0;
            for (l_1054_i0 = 0; l_1054_i0 < 2; l_1054_i0++) {
                result += l_1054[l_1054_i0];
            }
            result += l_1057;
            result += l_1058;
            result += l_1061;
            result += l_1062;
            int l_1063_i0;
            for (l_1063_i0 = 0; l_1063_i0 < 9; l_1063_i0++) {
                result += l_1063[l_1063_i0];
            }
            result += l_1064.s7;
            result += l_1064.s6;
            result += l_1064.s5;
            result += l_1064.s4;
            result += l_1064.s3;
            result += l_1064.s2;
            result += l_1064.s1;
            result += l_1064.s0;
            result += l_1065;
            result += l_1066;
            result += l_1067;
            result += l_1068;
            result += l_1069;
            result += l_1070.f0;
            result += l_1070.f1;
            atomic_add(&p_1408->g_special_values[54 * get_linear_group_id() + 44], result);
        }
        else
        { /* block id: 540 */
            (1 + 1);
        }
        if ((*p_1408->g_69))
        { /* block id: 543 */
            uint8_t l_1126 = 251UL;
            int16_t *l_1127 = &p_1408->g_955.f0;
            (**p_1408->g_68) = (safe_rshift_func_int16_t_s_s(((*l_1127) = (p_1408->g_212[4].f1 < (safe_div_func_uint32_t_u_u(((p_1408->g_6[0][1].f9.f0 | (~FAKE_DIVERGE(p_1408->local_0_offset, get_local_id(0), 10))) > l_1126), l_993.y)))), ((GROUP_DIVERGE(2, 1) < (l_1017[3][4] = ((~3L) , 0xE9CA2A4795584648L))) <= GROUP_DIVERGE(2, 1))));
        }
        else
        { /* block id: 547 */
            uint64_t l_1396[5];
            int i;
            for (i = 0; i < 5; i++)
                l_1396[i] = 0xE6534B1476556D88L;
            if ((atomic_inc(&p_1408->l_atomic_input[41]) == 3))
            { /* block id: 549 */
                VECTOR(int16_t, 4) l_1128 = (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x489EL), 0x489EL);
                uint16_t l_1129 = 0x3EDDL;
                int64_t l_1130 = 0x7390963EA81672F3L;
                uint64_t l_1131[6][4] = {{18446744073709551612UL,18446744073709551615UL,18446744073709551615UL,18446744073709551612UL},{18446744073709551612UL,18446744073709551615UL,18446744073709551615UL,18446744073709551612UL},{18446744073709551612UL,18446744073709551615UL,18446744073709551615UL,18446744073709551612UL},{18446744073709551612UL,18446744073709551615UL,18446744073709551615UL,18446744073709551612UL},{18446744073709551612UL,18446744073709551615UL,18446744073709551615UL,18446744073709551612UL},{18446744073709551612UL,18446744073709551615UL,18446744073709551615UL,18446744073709551612UL}};
                uint64_t l_1132 = 1UL;
                VECTOR(int16_t, 16) l_1133 = (VECTOR(int16_t, 16))((-3L), (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), (-1L)), (-1L)), (-1L), (-3L), (-1L), (VECTOR(int16_t, 2))((-3L), (-1L)), (VECTOR(int16_t, 2))((-3L), (-1L)), (-3L), (-1L), (-3L), (-1L));
                VECTOR(int16_t, 8) l_1134 = (VECTOR(int16_t, 8))(5L, (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, 0x0026L), 0x0026L), 0x0026L, 5L, 0x0026L);
                VECTOR(int16_t, 8) l_1135 = (VECTOR(int16_t, 8))((-6L), (VECTOR(int16_t, 4))((-6L), (VECTOR(int16_t, 2))((-6L), 1L), 1L), 1L, (-6L), 1L);
                VECTOR(int16_t, 4) l_1136 = (VECTOR(int16_t, 4))(0x0D8AL, (VECTOR(int16_t, 2))(0x0D8AL, 5L), 5L);
                VECTOR(int16_t, 8) l_1137 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
                int16_t l_1138 = 0x1D10L;
                uint64_t l_1139[4][1] = {{0xFD6CA55A5FBC1485L},{0xFD6CA55A5FBC1485L},{0xFD6CA55A5FBC1485L},{0xFD6CA55A5FBC1485L}};
                uint16_t l_1140 = 65531UL;
                uint16_t l_1141 = 0x0F94L;
                int16_t l_1142 = 0x3257L;
                int64_t l_1143 = 0x2E5C7FAA6A88AB0EL;
                int64_t l_1144 = 9L;
                VECTOR(int32_t, 16) l_1145 = (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), (-8L)), (-8L)), (-8L), (-8L), (-8L), (VECTOR(int32_t, 2))((-8L), (-8L)), (VECTOR(int32_t, 2))((-8L), (-8L)), (-8L), (-8L), (-8L), (-8L));
                int32_t l_1216 = 0x0AA0C868L;
                int8_t l_1217 = (-8L);
                int i, j;
                if (((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 16))(0x2491L, 8L, ((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(l_1128.wywzwyyzwxyxxwxy)).lo)).s1530653220045515, ((VECTOR(int16_t, 16))(l_1129, 0x49BDL, (l_1131[2][1] = l_1130), l_1132, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0L, 8L)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(l_1133.s97)).xyxxxxxx)).odd, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_1134.s3243356600272226)).s0b)), 0x0CD6L, 0x2EE0L))))))), 0x25EFL, (-9L))), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(l_1135.s04001015)).s70)), (-1L), (-1L)))))).s1, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(l_1136.yxwzyyxxwxwwzxyz)))).lo)).s72)), ((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 8))(l_1137.s30031624)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),int16_t,((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 2))(0x64BFL, (-4L))).yxyyxxyxyyxxxxyx, ((VECTOR(int16_t, 2))(0x68C4L, (-1L))).xxxyyxxxyyyxxxyx, ((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 2))((-6L), 0x06A2L)), ((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((l_1139[0][0] = (l_1138 , ((VECTOR(int16_t, 2))((-1L), 0x3C38L)).even)) , ((VECTOR(int16_t, 16))(1L, l_1140, (l_1136.y = (((VECTOR(int64_t, 4))((l_1141 = (-1L)), l_1142, 9L, (-1L))).w , (l_1143 &= 0x521FL))), 8L, ((VECTOR(int16_t, 8))(2L)), ((VECTOR(int16_t, 2))(0x76D3L)), 0x4754L, 0x658EL)).sc), 6L, (-3L), 1L)).yywzxwwy)).even, ((VECTOR(int16_t, 4))((-8L))), ((VECTOR(int16_t, 4))(0L))))).lo))).xxyxxyxxyxyyxxyx))), (int16_t)l_1144, (int16_t)l_1145.s9))).sfa)).xxxxyyxx, ((VECTOR(int16_t, 8))(0x22D4L))))).lo)).lo, ((VECTOR(int16_t, 2))(0L))))), ((VECTOR(int16_t, 2))(0x5351L)), ((VECTOR(int16_t, 2))(4L)), ((VECTOR(int16_t, 4))((-1L))), (-4L))).s9a, ((VECTOR(int16_t, 2))(0x6028L))))).xyyyyyyx, ((VECTOR(uint16_t, 8))(65535UL))))).s6)
                { /* block id: 555 */
                    uint64_t l_1146 = 5UL;
                    union U2 l_1147 = {-1L};/* VOLATILE GLOBAL l_1147 */
                    int16_t l_1148 = 0L;
                    struct S1 l_1149 = {0xFC857BC5L,0L,0x3299F37A2469A2A0L,0x8E7C9C07L,0UL,246UL,0L,1UL,0x699D23F3L,{0L,0x38B0086AL}};/* VOLATILE GLOBAL l_1149 */
                    struct S1 l_1150 = {0x73B4389BL,0x55226EA4L,-1L,0xDC60AB3DL,0xF9B5DC73A0EC2B41L,0x9EL,-5L,0x33562FF26C6FAD82L,-1L,{0L,0x246D2FADL}};/* VOLATILE GLOBAL l_1150 */
                    struct S1 l_1151 = {0xCFF0EC88L,-8L,-1L,0UL,0x4563D4790F96FFBCL,255UL,2L,18446744073709551607UL,-2L,{0x73DD92A8252A8B95L,-7L}};/* VOLATILE GLOBAL l_1151 */
                    l_1151 = (l_1146 , ((l_1147 , l_1148) , (l_1149 , l_1150)));
                }
                else
                { /* block id: 557 */
                    int16_t l_1152[3];
                    int32_t *l_1153 = (void*)0;
                    int32_t *l_1154 = (void*)0;
                    int8_t l_1155 = 0x48L;
                    struct S1 l_1156 = {1UL,9L,0x231FF0E97F0533ECL,0x6ED050DDL,8UL,0x77L,-1L,0xD07CDB6678996680L,8L,{0x3A0C17E8A85FFFF8L,1L}};/* VOLATILE GLOBAL l_1156 */
                    uint16_t l_1157 = 65531UL;
                    int32_t l_1158[9];
                    int16_t l_1159 = 0x6111L;
                    int32_t l_1160 = 0x1CE42673L;
                    int32_t l_1161 = 0x20468C52L;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1152[i] = (-5L);
                    for (i = 0; i < 9; i++)
                        l_1158[i] = (-7L);
                    l_1154 = (l_1152[1] , (l_1153 = (void*)0));
                    if ((l_1161 = (l_1160 &= ((l_1159 &= (l_1155 , (l_1156 , (l_1157 , (l_1145.s3 = l_1158[8]))))) , 0x098E8696L))))
                    { /* block id: 564 */
                        uint64_t l_1162[6][2] = {{18446744073709551615UL,0x7D7A65C843F81BFDL},{18446744073709551615UL,0x7D7A65C843F81BFDL},{18446744073709551615UL,0x7D7A65C843F81BFDL},{18446744073709551615UL,0x7D7A65C843F81BFDL},{18446744073709551615UL,0x7D7A65C843F81BFDL},{18446744073709551615UL,0x7D7A65C843F81BFDL}};
                        int64_t l_1163 = 0x6024C0CF55F1243DL;
                        uint32_t l_1164 = 4294967289UL;
                        int64_t l_1165 = 0x178ABE4F22B4594BL;
                        VECTOR(int32_t, 16) l_1166 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int32_t, 2))((-1L), 1L), (VECTOR(int32_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L);
                        struct S1 l_1168 = {0x355E778EL,-1L,0x551822ED48727BF4L,1UL,0x9EDE28CBE3F71165L,248UL,1L,0x024031317B5A9648L,-1L,{0x429F6A15C12AD6ECL,-1L}};/* VOLATILE GLOBAL l_1168 */
                        struct S1 *l_1167 = &l_1168;
                        struct S1 *l_1169 = (void*)0;
                        int32_t *l_1170[8][10][3] = {{{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8}},{{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8}},{{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8}},{{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8}},{{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8}},{{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8}},{{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8}},{{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8},{(void*)0,(void*)0,&l_1168.f8}}};
                        int i, j, k;
                        l_1145.s4 = l_1162[4][1];
                        l_1164 &= l_1163;
                        l_1169 = (((VECTOR(int32_t, 8))(l_1165, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_1166.sdcfa)))), (-1L), 0L, 0L)).s6 , l_1167);
                        l_1153 = l_1170[2][3][1];
                    }
                    else
                    { /* block id: 569 */
                        struct S0 l_1171 = {1L,-10L};
                        int64_t l_1172 = (-1L);
                        VECTOR(int32_t, 4) l_1173 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-7L)), (-7L));
                        int8_t l_1174 = 1L;
                        int i;
                        l_1145.s1 ^= (((l_1171 , GROUP_DIVERGE(1, 1)) , (l_1130 = l_1172)) , ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 4))(l_1173.zzxw)), (int32_t)(l_1156.f9.f1 = l_1174)))).z);
                    }
                }
                for (l_1136.y = 0; (l_1136.y <= 2); l_1136.y = safe_add_func_uint16_t_u_u(l_1136.y, 7))
                { /* block id: 577 */
                    int64_t l_1179 = 0x7173CAFCE3F28EA2L;
                    int64_t *l_1178 = &l_1179;
                    int64_t **l_1177 = &l_1178;
                    int64_t **l_1180[2];
                    int32_t l_1182 = 1L;
                    int32_t *l_1181 = &l_1182;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1180[i] = (void*)0;
                    l_1180[1] = l_1177;
                    l_1181 = (void*)0;
                    for (l_1182 = 0; (l_1182 > 18); l_1182 = safe_add_func_uint64_t_u_u(l_1182, 8))
                    { /* block id: 582 */
                        uint64_t l_1185 = 18446744073709551610UL;
                        VECTOR(int32_t, 16) l_1186 = (VECTOR(int32_t, 16))(0x1EC5CB3CL, (VECTOR(int32_t, 4))(0x1EC5CB3CL, (VECTOR(int32_t, 2))(0x1EC5CB3CL, 0x1F08E948L), 0x1F08E948L), 0x1F08E948L, 0x1EC5CB3CL, 0x1F08E948L, (VECTOR(int32_t, 2))(0x1EC5CB3CL, 0x1F08E948L), (VECTOR(int32_t, 2))(0x1EC5CB3CL, 0x1F08E948L), 0x1EC5CB3CL, 0x1F08E948L, 0x1EC5CB3CL, 0x1F08E948L);
                        VECTOR(int32_t, 4) l_1187 = (VECTOR(int32_t, 4))(0x56AA62B9L, (VECTOR(int32_t, 2))(0x56AA62B9L, (-7L)), (-7L));
                        VECTOR(int32_t, 2) l_1188 = (VECTOR(int32_t, 2))(2L, (-8L));
                        VECTOR(int32_t, 8) l_1189 = (VECTOR(int32_t, 8))(0x171D9DD6L, (VECTOR(int32_t, 4))(0x171D9DD6L, (VECTOR(int32_t, 2))(0x171D9DD6L, (-4L)), (-4L)), (-4L), 0x171D9DD6L, (-4L));
                        uint16_t l_1190 = 0xC42DL;
                        VECTOR(int32_t, 16) l_1191 = (VECTOR(int32_t, 16))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0L), 0L), 0L, (-6L), 0L, (VECTOR(int32_t, 2))((-6L), 0L), (VECTOR(int32_t, 2))((-6L), 0L), (-6L), 0L, (-6L), 0L);
                        int8_t l_1192 = (-4L);
                        uint32_t l_1193 = 0x5408A0DCL;
                        int64_t l_1194[2];
                        int32_t l_1195 = 0x640DA1A3L;
                        int8_t l_1196 = 6L;
                        VECTOR(int16_t, 4) l_1197 = (VECTOR(int16_t, 4))(0x58DAL, (VECTOR(int16_t, 2))(0x58DAL, 0L), 0L);
                        VECTOR(int16_t, 16) l_1198 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x7207L), 0x7207L), 0x7207L, 0L, 0x7207L, (VECTOR(int16_t, 2))(0L, 0x7207L), (VECTOR(int16_t, 2))(0L, 0x7207L), 0L, 0x7207L, 0L, 0x7207L);
                        VECTOR(int16_t, 4) l_1199 = (VECTOR(int16_t, 4))(0x0657L, (VECTOR(int16_t, 2))(0x0657L, 0x20E8L), 0x20E8L);
                        VECTOR(uint16_t, 16) l_1200 = (VECTOR(uint16_t, 16))(65528UL, (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 65531UL), 65531UL), 65531UL, 65528UL, 65531UL, (VECTOR(uint16_t, 2))(65528UL, 65531UL), (VECTOR(uint16_t, 2))(65528UL, 65531UL), 65528UL, 65531UL, 65528UL, 65531UL);
                        int8_t l_1201[6] = {0x55L,0x55L,0x55L,0x55L,0x55L,0x55L};
                        VECTOR(int32_t, 2) l_1202 = (VECTOR(int32_t, 2))((-1L), 0L);
                        VECTOR(int32_t, 16) l_1203 = (VECTOR(int32_t, 16))(0x6859F043L, (VECTOR(int32_t, 4))(0x6859F043L, (VECTOR(int32_t, 2))(0x6859F043L, 2L), 2L), 2L, 0x6859F043L, 2L, (VECTOR(int32_t, 2))(0x6859F043L, 2L), (VECTOR(int32_t, 2))(0x6859F043L, 2L), 0x6859F043L, 2L, 0x6859F043L, 2L);
                        VECTOR(int32_t, 16) l_1204 = (VECTOR(int32_t, 16))(0x0F14E4B0L, (VECTOR(int32_t, 4))(0x0F14E4B0L, (VECTOR(int32_t, 2))(0x0F14E4B0L, 0x04D852B5L), 0x04D852B5L), 0x04D852B5L, 0x0F14E4B0L, 0x04D852B5L, (VECTOR(int32_t, 2))(0x0F14E4B0L, 0x04D852B5L), (VECTOR(int32_t, 2))(0x0F14E4B0L, 0x04D852B5L), 0x0F14E4B0L, 0x04D852B5L, 0x0F14E4B0L, 0x04D852B5L);
                        VECTOR(int32_t, 8) l_1205 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x557E6074L), 0x557E6074L), 0x557E6074L, 1L, 0x557E6074L);
                        VECTOR(int32_t, 8) l_1206 = (VECTOR(int32_t, 8))(0x56A98016L, (VECTOR(int32_t, 4))(0x56A98016L, (VECTOR(int32_t, 2))(0x56A98016L, 0x2F4194D1L), 0x2F4194D1L), 0x2F4194D1L, 0x56A98016L, 0x2F4194D1L);
                        VECTOR(int32_t, 8) l_1207 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x48900FF1L), 0x48900FF1L), 0x48900FF1L, 0L, 0x48900FF1L);
                        VECTOR(int16_t, 8) l_1208 = (VECTOR(int16_t, 8))(0x5AAEL, (VECTOR(int16_t, 4))(0x5AAEL, (VECTOR(int16_t, 2))(0x5AAEL, 1L), 1L), 1L, 0x5AAEL, 1L);
                        VECTOR(uint16_t, 2) l_1209 = (VECTOR(uint16_t, 2))(0x1413L, 65535UL);
                        VECTOR(int32_t, 2) l_1210 = (VECTOR(int32_t, 2))((-3L), 0x331D0352L);
                        VECTOR(int32_t, 16) l_1211 = (VECTOR(int32_t, 16))(0x4E5C88D2L, (VECTOR(int32_t, 4))(0x4E5C88D2L, (VECTOR(int32_t, 2))(0x4E5C88D2L, 0x7BE9F023L), 0x7BE9F023L), 0x7BE9F023L, 0x4E5C88D2L, 0x7BE9F023L, (VECTOR(int32_t, 2))(0x4E5C88D2L, 0x7BE9F023L), (VECTOR(int32_t, 2))(0x4E5C88D2L, 0x7BE9F023L), 0x4E5C88D2L, 0x7BE9F023L, 0x4E5C88D2L, 0x7BE9F023L);
                        VECTOR(int32_t, 16) l_1212 = (VECTOR(int32_t, 16))(0x1F52B563L, (VECTOR(int32_t, 4))(0x1F52B563L, (VECTOR(int32_t, 2))(0x1F52B563L, 0x43A55046L), 0x43A55046L), 0x43A55046L, 0x1F52B563L, 0x43A55046L, (VECTOR(int32_t, 2))(0x1F52B563L, 0x43A55046L), (VECTOR(int32_t, 2))(0x1F52B563L, 0x43A55046L), 0x1F52B563L, 0x43A55046L, 0x1F52B563L, 0x43A55046L);
                        uint32_t l_1213 = 6UL;
                        int32_t l_1214 = 0x35D0E023L;
                        int16_t l_1215 = (-10L);
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1194[i] = (-9L);
                        l_1214 ^= (l_1185 , ((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 4))(l_1186.s5c37)).xyxwyyww, ((VECTOR(int32_t, 16))(l_1187.wxwwwyyzwzxzwxyy)).hi))).s63, ((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_1188.yy)).yyxxyyxyxxxyyxxy)).even, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_1189.s1731)).ywxwwzyw)).s23)).yyyyxyyy))).s64, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(1L, (l_1187.x ^= l_1190), (-1L), ((VECTOR(int32_t, 4))(l_1191.sc726)), ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(l_1192, (l_1193 , (l_1194[0] = 5L)), 0x5545325EL, l_1195, 0x62E39FF1L, (l_1196 , (l_1145.s9 &= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))((l_1137.s2 = ((VECTOR(int16_t, 16))(l_1197.xwzxwywxxzxyxywx)).s6), ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 2))(0x6625L, 0x53B6L)), ((VECTOR(int16_t, 4))(l_1198.sa854)).lo, ((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 2))(l_1199.wz)))))))), 0x3030L)).xxxxwyxxyyzzxzwx)).s857e, ((VECTOR(uint16_t, 4))(l_1200.sfc94))))).zwywxxzy)).s7)), l_1201[1], (-8L), ((VECTOR(int32_t, 2))(l_1202.yy)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_1203.sd172414e7a6cbdb6)).sb3)), (-9L), 0x767EC599L, 0x716990BBL, (-1L))), ((VECTOR(int32_t, 4))(l_1204.s19af)).yywzwzwzywzxwxyw, ((VECTOR(int32_t, 16))(l_1205.s4325544714644312))))).s4d64)))), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(0L, 2L, 0x40CA668DL, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_1206.s65241641)))), 0L, ((VECTOR(int32_t, 4))(l_1207.s1361)))).sac0d))))), 0x65718313L, 0x6934CF6DL, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(l_1208.s43)).yxxxyyyx)).s6307072513271313)), ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_1209.yx)).xxyyxyyyyyxxyxyx))))).lo, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_1210.yxxyxyxxyxyxyxxx)))).lo, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_1211.sbf96171b83f7b105)).sadaf)).wzyyzyyz))).odd)).zywzyzzx, ((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 4))(0x77AC54BDL, ((VECTOR(int32_t, 16))(l_1212.s6a605ad7d3ef206b)).s2, 0x03269EA5L, 0x2E99C5BBL)).wxwyyyyy, ((VECTOR(int32_t, 4))(l_1213, 9L, 0x7143FB63L, 0L)).zwwwyzzz)))))), ((VECTOR(int32_t, 8))(0x1CEFAAA4L))))), ((VECTOR(int32_t, 8))(1L)), ((VECTOR(int32_t, 8))((-7L)))))).s47)), 0x35FAF001L)))).sd3))).xxxyxxyyyyxxxxyy, ((VECTOR(int32_t, 16))((-6L)))))).s3);
                        l_1145.sd = l_1215;
                    }
                }
                l_1217 &= l_1216;
                for (l_1128.x = 0; (l_1128.x == 2); l_1128.x = safe_add_func_uint16_t_u_u(l_1128.x, 4))
                { /* block id: 594 */
                    uint32_t l_1220 = 0x30ADF68BL;
                    uint32_t l_1221 = 0xC5FD8660L;
                    l_1221 ^= l_1220;
                }
                unsigned int result = 0;
                result += l_1128.w;
                result += l_1128.z;
                result += l_1128.y;
                result += l_1128.x;
                result += l_1129;
                result += l_1130;
                int l_1131_i0, l_1131_i1;
                for (l_1131_i0 = 0; l_1131_i0 < 6; l_1131_i0++) {
                    for (l_1131_i1 = 0; l_1131_i1 < 4; l_1131_i1++) {
                        result += l_1131[l_1131_i0][l_1131_i1];
                    }
                }
                result += l_1132;
                result += l_1133.sf;
                result += l_1133.se;
                result += l_1133.sd;
                result += l_1133.sc;
                result += l_1133.sb;
                result += l_1133.sa;
                result += l_1133.s9;
                result += l_1133.s8;
                result += l_1133.s7;
                result += l_1133.s6;
                result += l_1133.s5;
                result += l_1133.s4;
                result += l_1133.s3;
                result += l_1133.s2;
                result += l_1133.s1;
                result += l_1133.s0;
                result += l_1134.s7;
                result += l_1134.s6;
                result += l_1134.s5;
                result += l_1134.s4;
                result += l_1134.s3;
                result += l_1134.s2;
                result += l_1134.s1;
                result += l_1134.s0;
                result += l_1135.s7;
                result += l_1135.s6;
                result += l_1135.s5;
                result += l_1135.s4;
                result += l_1135.s3;
                result += l_1135.s2;
                result += l_1135.s1;
                result += l_1135.s0;
                result += l_1136.w;
                result += l_1136.z;
                result += l_1136.y;
                result += l_1136.x;
                result += l_1137.s7;
                result += l_1137.s6;
                result += l_1137.s5;
                result += l_1137.s4;
                result += l_1137.s3;
                result += l_1137.s2;
                result += l_1137.s1;
                result += l_1137.s0;
                result += l_1138;
                int l_1139_i0, l_1139_i1;
                for (l_1139_i0 = 0; l_1139_i0 < 4; l_1139_i0++) {
                    for (l_1139_i1 = 0; l_1139_i1 < 1; l_1139_i1++) {
                        result += l_1139[l_1139_i0][l_1139_i1];
                    }
                }
                result += l_1140;
                result += l_1141;
                result += l_1142;
                result += l_1143;
                result += l_1144;
                result += l_1145.sf;
                result += l_1145.se;
                result += l_1145.sd;
                result += l_1145.sc;
                result += l_1145.sb;
                result += l_1145.sa;
                result += l_1145.s9;
                result += l_1145.s8;
                result += l_1145.s7;
                result += l_1145.s6;
                result += l_1145.s5;
                result += l_1145.s4;
                result += l_1145.s3;
                result += l_1145.s2;
                result += l_1145.s1;
                result += l_1145.s0;
                result += l_1216;
                result += l_1217;
                atomic_add(&p_1408->l_special_values[41], result);
            }
            else
            { /* block id: 597 */
                (1 + 1);
            }
            if ((atomic_inc(&p_1408->l_atomic_input[4]) == 1))
            { /* block id: 601 */
                VECTOR(uint32_t, 16) l_1222 = (VECTOR(uint32_t, 16))(0x4606BFB8L, (VECTOR(uint32_t, 4))(0x4606BFB8L, (VECTOR(uint32_t, 2))(0x4606BFB8L, 4294967294UL), 4294967294UL), 4294967294UL, 0x4606BFB8L, 4294967294UL, (VECTOR(uint32_t, 2))(0x4606BFB8L, 4294967294UL), (VECTOR(uint32_t, 2))(0x4606BFB8L, 4294967294UL), 0x4606BFB8L, 4294967294UL, 0x4606BFB8L, 4294967294UL);
                uint8_t l_1223 = 0xF2L;
                uint8_t l_1224 = 247UL;
                int i;
                l_1223 ^= l_1222.s8;
                if (l_1224)
                { /* block id: 603 */
                    VECTOR(uint32_t, 2) l_1225 = (VECTOR(uint32_t, 2))(4294967295UL, 4294967293UL);
                    uint32_t l_1226 = 4294967295UL;
                    uint8_t l_1227 = 0UL;
                    VECTOR(uint32_t, 4) l_1228 = (VECTOR(uint32_t, 4))(0x74CCA5ACL, (VECTOR(uint32_t, 2))(0x74CCA5ACL, 0x7AA4847EL), 0x7AA4847EL);
                    int8_t l_1229[7][1][4] = {{{0x12L,(-2L),0x12L,0x12L}},{{0x12L,(-2L),0x12L,0x12L}},{{0x12L,(-2L),0x12L,0x12L}},{{0x12L,(-2L),0x12L,0x12L}},{{0x12L,(-2L),0x12L,0x12L}},{{0x12L,(-2L),0x12L,0x12L}},{{0x12L,(-2L),0x12L,0x12L}}};
                    int16_t l_1230 = 0x2A51L;
                    VECTOR(int8_t, 8) l_1231 = (VECTOR(int8_t, 8))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 0x07L), 0x07L), 0x07L, (-4L), 0x07L);
                    uint64_t l_1232[1][2];
                    int32_t l_1233 = 0x664BAA29L;
                    int16_t l_1234 = (-1L);
                    uint8_t l_1235 = 1UL;
                    int8_t l_1236 = 6L;
                    uint32_t l_1237 = 0x47079B0FL;
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_1232[i][j] = 0xFC546040064FA4C3L;
                    }
                    if ((((VECTOR(uint32_t, 8))(((l_1226 = ((VECTOR(uint32_t, 2))(l_1225.yy)).even) , l_1227), ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(l_1228.zwzw)).odd)).lo, 0xA8142992L, ((VECTOR(uint32_t, 4))(0xCB1E08C2L, 0xCA2D1046L, 0xCA61B969L, 0x3E9F604BL)), 0x0C3D6493L)).s4 , (((((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 8))(l_1229[0][0][3], l_1230, ((VECTOR(int8_t, 16))(0x03L, ((VECTOR(int8_t, 2))(l_1231.s43)), 9L, 0x6AL, (l_1231.s3 &= ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 4))(0x2BL, (l_1232[0][0] , l_1233), 0L, 7L)).hi, ((VECTOR(int8_t, 2))(0L, 0L))))).yxxyyyxy)).s0352566775750027, (int8_t)(l_1234 , l_1235)))).hi)).s27, ((VECTOR(int8_t, 2))((-5L))), ((VECTOR(int8_t, 2))(4L))))).even), 0x54L, ((VECTOR(int8_t, 8))(8L)), 4L)).s8, ((VECTOR(int8_t, 2))((-1L))), (-9L), 0x08L, 0x7AL)).s35, ((VECTOR(uint8_t, 2))(1UL))))).hi , 255UL) , l_1236) , l_1237)))
                    { /* block id: 606 */
                        int32_t l_1238 = 0x03E975F1L;
                        uint8_t l_1239 = 0xD3L;
                        ++l_1239;
                        l_1233 = (-2L);
                        l_1233 |= 1L;
                    }
                    else
                    { /* block id: 610 */
                        int16_t l_1242 = 0x255BL;
                        uint16_t l_1243 = 65533UL;
                        VECTOR(int16_t, 8) l_1244 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-4L)), (-4L)), (-4L), 1L, (-4L));
                        VECTOR(int16_t, 2) l_1245 = (VECTOR(int16_t, 2))(0x657CL, (-2L));
                        VECTOR(int16_t, 8) l_1246 = (VECTOR(int16_t, 8))((-3L), (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 1L), 1L), 1L, (-3L), 1L);
                        VECTOR(uint16_t, 8) l_1247 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL);
                        VECTOR(uint16_t, 8) l_1248 = (VECTOR(uint16_t, 8))(0x5C5FL, (VECTOR(uint16_t, 4))(0x5C5FL, (VECTOR(uint16_t, 2))(0x5C5FL, 0x56F1L), 0x56F1L), 0x56F1L, 0x5C5FL, 0x56F1L);
                        VECTOR(uint16_t, 16) l_1249 = (VECTOR(uint16_t, 16))(0x8BBDL, (VECTOR(uint16_t, 4))(0x8BBDL, (VECTOR(uint16_t, 2))(0x8BBDL, 5UL), 5UL), 5UL, 0x8BBDL, 5UL, (VECTOR(uint16_t, 2))(0x8BBDL, 5UL), (VECTOR(uint16_t, 2))(0x8BBDL, 5UL), 0x8BBDL, 5UL, 0x8BBDL, 5UL);
                        VECTOR(uint16_t, 4) l_1250 = (VECTOR(uint16_t, 4))(0x5574L, (VECTOR(uint16_t, 2))(0x5574L, 0xFA6AL), 0xFA6AL);
                        VECTOR(int64_t, 4) l_1251 = (VECTOR(int64_t, 4))(0x0C64D563FAA245F1L, (VECTOR(int64_t, 2))(0x0C64D563FAA245F1L, 1L), 1L);
                        VECTOR(uint16_t, 2) l_1252 = (VECTOR(uint16_t, 2))(0x5D27L, 65530UL);
                        int32_t l_1253 = 0x1241C28EL;
                        uint32_t l_1254 = 0xF901B33EL;
                        uint32_t l_1255 = 7UL;
                        VECTOR(uint8_t, 2) l_1256 = (VECTOR(uint8_t, 2))(0x60L, 0x04L);
                        VECTOR(uint16_t, 16) l_1257 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x7DBEL), 0x7DBEL), 0x7DBEL, 1UL, 0x7DBEL, (VECTOR(uint16_t, 2))(1UL, 0x7DBEL), (VECTOR(uint16_t, 2))(1UL, 0x7DBEL), 1UL, 0x7DBEL, 1UL, 0x7DBEL);
                        int32_t l_1258 = 0x5C408E47L;
                        int16_t l_1259 = 0x0539L;
                        int64_t l_1260[8] = {0x30F40EA73645E433L,0x30F40EA73645E433L,0x30F40EA73645E433L,0x30F40EA73645E433L,0x30F40EA73645E433L,0x30F40EA73645E433L,0x30F40EA73645E433L,0x30F40EA73645E433L};
                        uint16_t l_1261 = 0xE3B6L;
                        uint32_t l_1262[6][1][9] = {{{0x328BF37FL,5UL,1UL,0x328BF37FL,1UL,1UL,1UL,1UL,0x328BF37FL}},{{0x328BF37FL,5UL,1UL,0x328BF37FL,1UL,1UL,1UL,1UL,0x328BF37FL}},{{0x328BF37FL,5UL,1UL,0x328BF37FL,1UL,1UL,1UL,1UL,0x328BF37FL}},{{0x328BF37FL,5UL,1UL,0x328BF37FL,1UL,1UL,1UL,1UL,0x328BF37FL}},{{0x328BF37FL,5UL,1UL,0x328BF37FL,1UL,1UL,1UL,1UL,0x328BF37FL}},{{0x328BF37FL,5UL,1UL,0x328BF37FL,1UL,1UL,1UL,1UL,0x328BF37FL}}};
                        int32_t l_1263 = 0x37FC4403L;
                        int i, j, k;
                        l_1263 ^= ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(l_1242, l_1243, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x5142L, 4L)), ((VECTOR(int16_t, 2))(l_1244.s22)), ((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 2))(l_1245.xx)).xyyy))))), ((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 2))(0x233EL, 5L)), ((VECTOR(int16_t, 8))(l_1246.s71051640)).s46))), ((VECTOR(int16_t, 2))(0x05CDL, 0x04C2L)), 0L, 0x0ED2L)))).s55, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 16))(0xC981L, ((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 8))(l_1247.s13016444)).s2510073667623176, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(l_1248.s5563)), ((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(l_1249.scff0940a7c3dbeff)).s6db3)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(l_1250.yzwwyyxz)))).s62)), (l_1251.y , GROUP_DIVERGE(2, 1)), ((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 2))(0UL, 0UL)).yyxyyxyx, ((VECTOR(uint16_t, 4))(l_1252.xxxx)).wwxzwxyz))).even, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x6013L, 0x39B9L)), 0x53BDL, 0xAB6BL)).xxxwxzwy)).lo, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(l_1253, ((VECTOR(uint16_t, 16))(1UL, (l_1254 , l_1255), ((VECTOR(uint16_t, 2))(0x6AF1L, 65528UL)), 0xC512L, ((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 2))(0xAAL, 0x83L)).yxxyxxyx, (uint8_t)0x92L))).s24, ((VECTOR(uint8_t, 2))(l_1256.yy))))), FAKE_DIVERGE(p_1408->group_2_offset, get_group_id(2), 10), ((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 8))(l_1257.sdb525935)).hi, ((VECTOR(uint16_t, 8))((l_1259 = l_1258), l_1260[0], 65535UL, 1UL, ((VECTOR(uint16_t, 4))(65528UL)))).hi))), 65535UL, ((VECTOR(uint16_t, 2))(0x5ED0L)), 1UL)).s7, 1UL, GROUP_DIVERGE(1, 1), 65529UL, 0xB94CL, 0x1E56L, 0x7AA3L)).odd)).zywzxyyw)).s11)).yyyx))), 0UL)), 65527UL, FAKE_DIVERGE(p_1408->global_1_offset, get_global_id(1), 10), 65531UL, 0UL)))).sf637, ((VECTOR(uint16_t, 4))(0x69FBL)), ((VECTOR(uint16_t, 4))(0x1522L))))), 0x7CEDL, 1UL, ((VECTOR(uint16_t, 4))(65533UL)), 65530UL, 65535UL))))).s91, ((VECTOR(uint16_t, 2))(65533UL))))), 0xA405L, ((VECTOR(uint16_t, 4))(0UL)), l_1261, ((VECTOR(uint16_t, 4))(0x91B6L)), l_1262[0][0][6], 65532UL, 0xB4D6L)), ((VECTOR(uint16_t, 16))(1UL))))))).s8d))).lo;
                    }
                    for (l_1236 = 0; (l_1236 < (-17)); --l_1236)
                    { /* block id: 616 */
                        int32_t l_1267 = (-10L);
                        int32_t *l_1266 = &l_1267;
                        int32_t *l_1268 = &l_1267;
                        int32_t *l_1269[4] = {&l_1267,&l_1267,&l_1267,&l_1267};
                        int32_t *l_1270 = &l_1267;
                        uint32_t l_1271 = 4294967288UL;
                        int i;
                        l_1268 = l_1266;
                        l_1270 = l_1269[2];
                        l_1233 = l_1271;
                    }
                }
                else
                { /* block id: 621 */
                    VECTOR(int32_t, 16) l_1272 = (VECTOR(int32_t, 16))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 1L), 1L), 1L, (-3L), 1L, (VECTOR(int32_t, 2))((-3L), 1L), (VECTOR(int32_t, 2))((-3L), 1L), (-3L), 1L, (-3L), 1L);
                    VECTOR(int32_t, 2) l_1273 = (VECTOR(int32_t, 2))((-1L), (-6L));
                    VECTOR(int16_t, 4) l_1274 = (VECTOR(int16_t, 4))(0x4887L, (VECTOR(int16_t, 2))(0x4887L, 0x1413L), 0x1413L);
                    int8_t l_1275[4][9][6] = {{{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L}},{{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L}},{{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L}},{{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L},{0x5FL,1L,(-7L),0x0AL,(-1L),0x18L}}};
                    VECTOR(uint16_t, 8) l_1276 = (VECTOR(uint16_t, 8))(0x76D1L, (VECTOR(uint16_t, 4))(0x76D1L, (VECTOR(uint16_t, 2))(0x76D1L, 0x64D9L), 0x64D9L), 0x64D9L, 0x76D1L, 0x64D9L);
                    VECTOR(int32_t, 2) l_1277 = (VECTOR(int32_t, 2))(1L, 7L);
                    int32_t l_1357 = 0x10F60444L;
                    uint16_t l_1358 = 0x192AL;
                    uint16_t l_1361[5];
                    int8_t l_1362 = 1L;
                    uint32_t l_1363 = 0UL;
                    struct S1 l_1364 = {0x08FB6C8EL,0x24776D3AL,0x05A6FB5A998182A1L,0x55DD333AL,18446744073709551615UL,0UL,-9L,0x9126CEBD0C35DC3DL,-6L,{-1L,1L}};/* VOLATILE GLOBAL l_1364 */
                    int32_t *l_1365 = &l_1364.f9.f1;
                    int i, j, k;
                    for (i = 0; i < 5; i++)
                        l_1361[i] = 65532UL;
                    if (((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_1272.s8db9f4e0)).even)).xxzyxyzy, ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(l_1273.yxxyxyxx)).s14, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(l_1274.xywxxxwxzzxxxxzw)).hi)).s77, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x6CA8L, 0x6213L)), 0x1286L, 1L)).odd))), ((VECTOR(int16_t, 2))((-4L), (-2L))), (GROUP_DIVERGE(0, 1) , l_1275[1][0][5]), ((VECTOR(int16_t, 2))(6L, 1L)), (-7L))).s74))).yxyy, ((VECTOR(uint16_t, 8))(l_1276.s77076574)).odd))), (int32_t)0x7C4D3969L))))).odd))))))).xyyyxxyy, ((VECTOR(int32_t, 4))(5L, ((VECTOR(int32_t, 8))(l_1277.yxyyyyyx)).s6, (-10L), (-5L))).wxzzyzxw))).s7)
                    { /* block id: 622 */
                        int16_t l_1278 = 0x36EBL;
                        int8_t l_1279 = 1L;
                        uint16_t l_1280 = 0UL;
                        l_1272.sd &= l_1278;
                        l_1280 = (l_1273.y = l_1279);
                    }
                    else
                    { /* block id: 626 */
                        VECTOR(int64_t, 16) l_1281 = (VECTOR(int64_t, 16))(0x4C468E0B2F467777L, (VECTOR(int64_t, 4))(0x4C468E0B2F467777L, (VECTOR(int64_t, 2))(0x4C468E0B2F467777L, 1L), 1L), 1L, 0x4C468E0B2F467777L, 1L, (VECTOR(int64_t, 2))(0x4C468E0B2F467777L, 1L), (VECTOR(int64_t, 2))(0x4C468E0B2F467777L, 1L), 0x4C468E0B2F467777L, 1L, 0x4C468E0B2F467777L, 1L);
                        int64_t l_1282 = (-7L);
                        VECTOR(int32_t, 4) l_1283 = (VECTOR(int32_t, 4))(0x34FEA92EL, (VECTOR(int32_t, 2))(0x34FEA92EL, (-10L)), (-10L));
                        VECTOR(int32_t, 2) l_1284 = (VECTOR(int32_t, 2))(0x46E9187BL, 0x551CF2C3L);
                        VECTOR(int32_t, 4) l_1285 = (VECTOR(int32_t, 4))(0x4E053F36L, (VECTOR(int32_t, 2))(0x4E053F36L, (-2L)), (-2L));
                        VECTOR(int32_t, 16) l_1286 = (VECTOR(int32_t, 16))(0x6EDB72DBL, (VECTOR(int32_t, 4))(0x6EDB72DBL, (VECTOR(int32_t, 2))(0x6EDB72DBL, 0x11051178L), 0x11051178L), 0x11051178L, 0x6EDB72DBL, 0x11051178L, (VECTOR(int32_t, 2))(0x6EDB72DBL, 0x11051178L), (VECTOR(int32_t, 2))(0x6EDB72DBL, 0x11051178L), 0x6EDB72DBL, 0x11051178L, 0x6EDB72DBL, 0x11051178L);
                        VECTOR(int32_t, 4) l_1287 = (VECTOR(int32_t, 4))(0x2FB6506DL, (VECTOR(int32_t, 2))(0x2FB6506DL, (-4L)), (-4L));
                        VECTOR(int32_t, 4) l_1288 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-9L)), (-9L));
                        union U2 l_1289 = {4L};/* VOLATILE GLOBAL l_1289 */
                        int32_t l_1290 = (-2L);
                        VECTOR(int16_t, 16) l_1291 = (VECTOR(int16_t, 16))((-6L), (VECTOR(int16_t, 4))((-6L), (VECTOR(int16_t, 2))((-6L), (-2L)), (-2L)), (-2L), (-6L), (-2L), (VECTOR(int16_t, 2))((-6L), (-2L)), (VECTOR(int16_t, 2))((-6L), (-2L)), (-6L), (-2L), (-6L), (-2L));
                        VECTOR(int16_t, 4) l_1292 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x1B93L), 0x1B93L);
                        VECTOR(int16_t, 4) l_1293 = (VECTOR(int16_t, 4))(0x0610L, (VECTOR(int16_t, 2))(0x0610L, 1L), 1L);
                        VECTOR(int16_t, 2) l_1294 = (VECTOR(int16_t, 2))((-10L), (-10L));
                        VECTOR(int16_t, 8) l_1295 = (VECTOR(int16_t, 8))(0x0E6BL, (VECTOR(int16_t, 4))(0x0E6BL, (VECTOR(int16_t, 2))(0x0E6BL, (-3L)), (-3L)), (-3L), 0x0E6BL, (-3L));
                        VECTOR(int16_t, 4) l_1296 = (VECTOR(int16_t, 4))(0x7992L, (VECTOR(int16_t, 2))(0x7992L, 0x026CL), 0x026CL);
                        VECTOR(int16_t, 2) l_1297 = (VECTOR(int16_t, 2))(0x4583L, 6L);
                        int16_t l_1298[9];
                        VECTOR(int16_t, 2) l_1299 = (VECTOR(int16_t, 2))(0x5FC8L, 0x60BEL);
                        VECTOR(int16_t, 4) l_1300 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x14A0L), 0x14A0L);
                        uint32_t l_1301 = 0UL;
                        VECTOR(int16_t, 16) l_1302 = (VECTOR(int16_t, 16))(0x01C5L, (VECTOR(int16_t, 4))(0x01C5L, (VECTOR(int16_t, 2))(0x01C5L, 5L), 5L), 5L, 0x01C5L, 5L, (VECTOR(int16_t, 2))(0x01C5L, 5L), (VECTOR(int16_t, 2))(0x01C5L, 5L), 0x01C5L, 5L, 0x01C5L, 5L);
                        VECTOR(int16_t, 4) l_1303 = (VECTOR(int16_t, 4))(0x0BB2L, (VECTOR(int16_t, 2))(0x0BB2L, 2L), 2L);
                        VECTOR(int16_t, 4) l_1304 = (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), (-9L)), (-9L));
                        VECTOR(int16_t, 8) l_1305 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x2AFCL), 0x2AFCL), 0x2AFCL, 0L, 0x2AFCL);
                        VECTOR(int16_t, 16) l_1306 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x450BL), 0x450BL), 0x450BL, 1L, 0x450BL, (VECTOR(int16_t, 2))(1L, 0x450BL), (VECTOR(int16_t, 2))(1L, 0x450BL), 1L, 0x450BL, 1L, 0x450BL);
                        int16_t l_1307 = 1L;
                        VECTOR(int16_t, 16) l_1308 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x1F36L), 0x1F36L), 0x1F36L, (-1L), 0x1F36L, (VECTOR(int16_t, 2))((-1L), 0x1F36L), (VECTOR(int16_t, 2))((-1L), 0x1F36L), (-1L), 0x1F36L, (-1L), 0x1F36L);
                        uint16_t l_1309 = 0xAD57L;
                        uint16_t l_1310 = 0xA158L;
                        uint16_t l_1311 = 0x6A19L;
                        int16_t l_1312[8][6][2] = {{{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL}},{{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL}},{{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL}},{{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL}},{{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL}},{{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL}},{{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL}},{{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL},{0x3EB6L,0x23CDL}}};
                        int64_t l_1313[6][4][7] = {{{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L}},{{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L}},{{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L}},{{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L}},{{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L}},{{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L},{0x6789D1FF63E275A1L,0x6789D1FF63E275A1L,0x2E5F337658436234L,0x5BB2E76ABB27B8D4L,0x47C44E048DA8EBDAL,(-1L),9L}}};
                        int32_t l_1314[7][5] = {{0x38BA1EE6L,0x38BA1EE6L,0x34C1E1D0L,2L,0x1919A32FL},{0x38BA1EE6L,0x38BA1EE6L,0x34C1E1D0L,2L,0x1919A32FL},{0x38BA1EE6L,0x38BA1EE6L,0x34C1E1D0L,2L,0x1919A32FL},{0x38BA1EE6L,0x38BA1EE6L,0x34C1E1D0L,2L,0x1919A32FL},{0x38BA1EE6L,0x38BA1EE6L,0x34C1E1D0L,2L,0x1919A32FL},{0x38BA1EE6L,0x38BA1EE6L,0x34C1E1D0L,2L,0x1919A32FL},{0x38BA1EE6L,0x38BA1EE6L,0x34C1E1D0L,2L,0x1919A32FL}};
                        VECTOR(uint8_t, 2) l_1315 = (VECTOR(uint8_t, 2))(0x9FL, 0xB4L);
                        int32_t l_1316 = 0x37E5BD96L;
                        int64_t l_1317 = (-1L);
                        uint16_t l_1318 = 65535UL;
                        uint16_t l_1319 = 1UL;
                        int32_t l_1320 = 0x438CF1BEL;
                        uint64_t l_1321 = 18446744073709551615UL;
                        VECTOR(int64_t, 16) l_1322 = (VECTOR(int64_t, 16))(0x59DCD1FB2F18E187L, (VECTOR(int64_t, 4))(0x59DCD1FB2F18E187L, (VECTOR(int64_t, 2))(0x59DCD1FB2F18E187L, (-8L)), (-8L)), (-8L), 0x59DCD1FB2F18E187L, (-8L), (VECTOR(int64_t, 2))(0x59DCD1FB2F18E187L, (-8L)), (VECTOR(int64_t, 2))(0x59DCD1FB2F18E187L, (-8L)), 0x59DCD1FB2F18E187L, (-8L), 0x59DCD1FB2F18E187L, (-8L));
                        VECTOR(int64_t, 2) l_1323 = (VECTOR(int64_t, 2))(1L, (-1L));
                        uint32_t l_1324 = 4294967295UL;
                        uint64_t l_1325[10][8][3] = {{{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL}},{{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL}},{{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL}},{{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL}},{{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL}},{{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL}},{{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL}},{{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL}},{{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL}},{{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL},{0x06FC0AECA00EF1CAL,0x4AAA5D7CA3ADDED3L,18446744073709551612UL}}};
                        VECTOR(int64_t, 16) l_1326 = (VECTOR(int64_t, 16))(3L, (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, 0x13D220617CF6B322L), 0x13D220617CF6B322L), 0x13D220617CF6B322L, 3L, 0x13D220617CF6B322L, (VECTOR(int64_t, 2))(3L, 0x13D220617CF6B322L), (VECTOR(int64_t, 2))(3L, 0x13D220617CF6B322L), 3L, 0x13D220617CF6B322L, 3L, 0x13D220617CF6B322L);
                        uint16_t l_1327 = 65533UL;
                        uint32_t l_1328 = 0xED40402CL;
                        VECTOR(int64_t, 4) l_1329 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 3L), 3L);
                        VECTOR(int64_t, 4) l_1330 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L));
                        VECTOR(int64_t, 8) l_1331 = (VECTOR(int64_t, 8))(0x4F323460773BF851L, (VECTOR(int64_t, 4))(0x4F323460773BF851L, (VECTOR(int64_t, 2))(0x4F323460773BF851L, 0x505DDD3ADE88C57BL), 0x505DDD3ADE88C57BL), 0x505DDD3ADE88C57BL, 0x4F323460773BF851L, 0x505DDD3ADE88C57BL);
                        uint32_t l_1332[3][4][10] = {{{0x0E769AFEL,4294967292UL,4294967295UL,3UL,0UL,3UL,4294967295UL,4294967292UL,0x0E769AFEL,1UL},{0x0E769AFEL,4294967292UL,4294967295UL,3UL,0UL,3UL,4294967295UL,4294967292UL,0x0E769AFEL,1UL},{0x0E769AFEL,4294967292UL,4294967295UL,3UL,0UL,3UL,4294967295UL,4294967292UL,0x0E769AFEL,1UL},{0x0E769AFEL,4294967292UL,4294967295UL,3UL,0UL,3UL,4294967295UL,4294967292UL,0x0E769AFEL,1UL}},{{0x0E769AFEL,4294967292UL,4294967295UL,3UL,0UL,3UL,4294967295UL,4294967292UL,0x0E769AFEL,1UL},{0x0E769AFEL,4294967292UL,4294967295UL,3UL,0UL,3UL,4294967295UL,4294967292UL,0x0E769AFEL,1UL},{0x0E769AFEL,4294967292UL,4294967295UL,3UL,0UL,3UL,4294967295UL,4294967292UL,0x0E769AFEL,1UL},{0x0E769AFEL,4294967292UL,4294967295UL,3UL,0UL,3UL,4294967295UL,4294967292UL,0x0E769AFEL,1UL}},{{0x0E769AFEL,4294967292UL,4294967295UL,3UL,0UL,3UL,4294967295UL,4294967292UL,0x0E769AFEL,1UL},{0x0E769AFEL,4294967292UL,4294967295UL,3UL,0UL,3UL,4294967295UL,4294967292UL,0x0E769AFEL,1UL},{0x0E769AFEL,4294967292UL,4294967295UL,3UL,0UL,3UL,4294967295UL,4294967292UL,0x0E769AFEL,1UL},{0x0E769AFEL,4294967292UL,4294967295UL,3UL,0UL,3UL,4294967295UL,4294967292UL,0x0E769AFEL,1UL}}};
                        uint8_t l_1333 = 0x38L;
                        int8_t l_1334 = 4L;
                        uint32_t l_1335 = 0UL;
                        int16_t l_1336 = 1L;
                        VECTOR(uint8_t, 4) l_1337 = (VECTOR(uint8_t, 4))(251UL, (VECTOR(uint8_t, 2))(251UL, 0x91L), 0x91L);
                        int32_t l_1338 = 0L;
                        int32_t l_1339 = 0L;
                        int32_t *l_1340[9][9][1];
                        int32_t *l_1341 = &l_1320;
                        int32_t *l_1342 = (void*)0;
                        int32_t *l_1343 = &l_1320;
                        int i, j, k;
                        for (i = 0; i < 9; i++)
                            l_1298[i] = (-1L);
                        for (i = 0; i < 9; i++)
                        {
                            for (j = 0; j < 9; j++)
                            {
                                for (k = 0; k < 1; k++)
                                    l_1340[i][j][k] = &l_1320;
                            }
                        }
                        l_1277.x &= ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(l_1281.sc1f2)).hi)).odd , l_1282), ((VECTOR(int32_t, 4))(l_1283.zwwx)), ((VECTOR(int32_t, 2))(9L, 0x430C5A7BL)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_1284.xxxyxyyyxyxxxyyy)).s92)), 0x10C09686L, ((VECTOR(int32_t, 4))(l_1285.zxyw)), 0x6828F679L, 0x5E0151E0L)).s7918, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_1286.sae)))).xyxx, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(1L, 0x317EBD87L)), 0x68D36FD2L, (-9L))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(0x629AFD09L, ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_1287.wy)).xyyyyyyxxxxxxxxy)).s8c, ((VECTOR(int32_t, 2))(l_1288.wz))))), 0x33698E63L)).xzxwwwxyxxzxyzyy, ((VECTOR(int32_t, 8))(0x1ADF1933L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x129A3BA2L, 1L)))), ((VECTOR(int32_t, 2))(0x6B1B758CL, 0x03F01B03L)).hi, 0L, (l_1289 , (l_1272.s3 = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(1L, 0x009CL)), 0L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(8L, (l_1274.w = l_1290), 0x1FBEL, 5L)))), (-3L))).s5757167727642643)).sdf, ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(l_1291.s952a24af)))).s7267666050650564, ((VECTOR(int16_t, 8))(0L, ((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_1292.zzywyyyz)).lo)), ((VECTOR(int16_t, 4))(l_1293.yxzw)), ((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 8))(l_1294.xxyyxyxy)).s31, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(l_1295.s3315702473344416)))).sdd))).yyxx))).even))).xxxy, ((VECTOR(int16_t, 2))(l_1296.zz)).xxyy))), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_1297.xx)))), l_1298[3], ((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 4))(0x36B3L, ((VECTOR(int16_t, 2))(l_1299.xx)), 0x4E9DL)), ((VECTOR(int16_t, 8))(l_1300.yxzyxzxy)).lo))), (-1L))).even))), ((VECTOR(int16_t, 4))(l_1301, ((VECTOR(int16_t, 2))(l_1302.s4d)), 0x09E7L))))), 0L, 0x2C42L, 0x602FL)).s3406246202112554, ((VECTOR(int16_t, 8))(l_1303.wxyzwywx)).s4611022553013713))).s6ce6)), ((VECTOR(int16_t, 16))(l_1304.wzxzzxzyyxwxyzww)).sa28a, ((VECTOR(int16_t, 8))(0x63DEL, ((VECTOR(int16_t, 2))((-1L), 0x18AFL)), 0L, ((VECTOR(int16_t, 2))(l_1305.s17)), 0x6DB9L, 0L)).even))).zzzxwzxy)).s1636512655035165, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 4))((-7L), ((VECTOR(int16_t, 2))(l_1306.s08)).even, 0x446CL, 0x7552L)).yyywwzxy, (int16_t)(l_1274.x = l_1307)))).s11, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_1308.s1b)))), ((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 4))(0x7579L, ((VECTOR(int16_t, 2))(0x2C74L, 5L)), (-1L)))))).even))))).xxxxyxyxyyyxxxxy))).s5f)).yyxyyxyxxxyxyyyx, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))((l_1309 , l_1310), l_1311, l_1312[3][5][1], ((VECTOR(int16_t, 2))(0x5612L)), 0x56DDL, (-1L), 0x32CDL, ((VECTOR(int16_t, 2))((-10L))), ((VECTOR(int16_t, 4))(0x28FAL)), 0x17D3L, 0x45ECL)).s79)).xyyxxxxy)).s6421750526711462)), ((VECTOR(int16_t, 16))(0L))))).s4ff3, (int16_t)l_1313[0][2][5]))).hi, (int16_t)l_1314[6][3])))))), 1L, (-8L))), (-1L), 0x60F9L, (-3L), (-10L))).s0563217507360400)).sbd9c)))).xzzxxwzw, ((VECTOR(uint16_t, 8))(0xE9BEL))))).s74)).xyxyyyyyxxxyyxxy)).s0)), 0x3B349060L, 4L)).s2612027723030477))).s9b23)).yyzzzzyxxxwywzyx)), ((VECTOR(int32_t, 16))(0x61860A36L))))).even)).s54)), 0x631F0C27L, l_1315.y, l_1316, ((VECTOR(int32_t, 2))(4L)), l_1317, l_1318, l_1319, 0x1B8F29F4L, 0x66B9F6ACL)).sbe32))).y;
                        l_1341 = (((VECTOR(int64_t, 8))(0x4BFB1804B69811CBL, 0x5513698DA0B25156L, l_1320, l_1321, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 2))(l_1322.sb1)), (int64_t)((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(l_1323.yy)).xyyyxxxx)), (-3L), ((l_1324 , l_1325[3][6][1]) , (l_1338 = (FAKE_DIVERGE(p_1408->local_2_offset, get_local_id(2), 10) , ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))((-5L), 4L, ((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(0x0DEA9E7A84633A13L, 0x557A4356590796AFL, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(l_1326.sb3f1c354)).s15)), (l_1328 = l_1327), ((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 8))(l_1329.ywwzwxww)).s53, ((VECTOR(int64_t, 8))(l_1330.yxyxywyx)).s25))), (-1L), ((VECTOR(int64_t, 8))(l_1331.s61164273)))).sa1ff)), ((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),int64_t,((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(l_1332[2][3][5], 8L, l_1333, (-1L), 0L, ((VECTOR(int64_t, 8))(0x6F394BBBB2E1F2C1L)), 0x221926D578556E7FL, 0x1744B21CB89F75A7L, 0x6EE8A111BE37CACEL)).sc0)), 0x5976F555B494C44BL, 0x6FB05C392594855DL, ((VECTOR(int64_t, 4))(6L)))).s4142603322503201, ((VECTOR(int64_t, 16))(0x2EFFD3D1DADB6BFEL))))).s2235)))).zwxyyzyy, ((VECTOR(int64_t, 8))(2L))))).s55, (int64_t)l_1334, (int64_t)l_1335))).yyyy)).even))), 0x76DBE4A301312291L, 0x1A8015553C90C041L)).hi, ((VECTOR(int64_t, 4))((-1L)))))), l_1336, l_1337.y, (-1L), ((VECTOR(int64_t, 4))(0x331F3E56AB1A86E7L)), 0x2E6C22EF40E228ACL, 3L, 0x21BB1DB9B7CE5628L)).sb3)).odd))), l_1339, 5L, 0x0026994AD27FE46FL, ((VECTOR(int64_t, 2))(5L)), (-10L))).odd, ((VECTOR(int64_t, 8))(1L)), ((VECTOR(int64_t, 8))(0x620A839088731EA6L))))).s00)).odd))).xyxy)).yxzywzwx, ((VECTOR(int64_t, 8))((-4L))), ((VECTOR(int64_t, 8))((-2L)))))).lo, ((VECTOR(int64_t, 4))(0x6A5D4E1AFC1D80F9L))))).yxxxyxxw)).lo)))).hi)), ((VECTOR(int64_t, 2))((-10L)))))), ((VECTOR(int64_t, 2))(9L))))), 3L, 0x256E6200182AA3ECL)).w, 0L, 0x17C24A852FDDA268L, 0x2CC58413418F3285L)).s7 , l_1340[7][4][0]);
                        l_1343 = l_1342;
                    }
                    for (l_1276.s3 = 11; (l_1276.s3 == 13); l_1276.s3 = safe_add_func_int32_t_s_s(l_1276.s3, 8))
                    { /* block id: 638 */
                        VECTOR(int32_t, 4) l_1346 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L));
                        int16_t l_1347[4];
                        int32_t *l_1348 = (void*)0;
                        int32_t *l_1349[10][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
                        int32_t *l_1350[8][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                        int32_t *l_1351 = (void*)0;
                        int64_t l_1352 = 0x23972A1B1C97D198L;
                        int32_t l_1353 = 0x49AEADAAL;
                        uint16_t l_1354[2];
                        int i, j;
                        for (i = 0; i < 4; i++)
                            l_1347[i] = 7L;
                        for (i = 0; i < 2; i++)
                            l_1354[i] = 0xF701L;
                        l_1349[6][2] = (((VECTOR(int32_t, 8))(l_1346.zxzwwxww)).s4 , (l_1347[2] , l_1348));
                        l_1351 = l_1350[0][3];
                        ++l_1354[0];
                    }
                    l_1358--;
                    l_1365 = (((l_1362 |= l_1361[2]) , (l_1363 , l_1364)) , (void*)0);
                }
                for (l_1222.s5 = 0; (l_1222.s5 < 4); l_1222.s5 = safe_add_func_uint8_t_u_u(l_1222.s5, 3))
                { /* block id: 649 */
                    uint8_t l_1368 = 0xA0L;
                    int32_t l_1369[6] = {0x443EA771L,0x443EA771L,0x443EA771L,0x443EA771L,0x443EA771L,0x443EA771L};
                    struct S1 l_1370 = {0x01C73DA8L,0x16B8B00AL,0x50CDB75F6CDC4E0EL,0xCAD211E4L,0x3B1640EA9FDE3187L,0UL,-2L,0x877F3F3BECC73DFBL,0x6768AF50L,{0L,0x214ED143L}};/* VOLATILE GLOBAL l_1370 */
                    struct S1 l_1371 = {3UL,0x59729DA0L,0x1828413CB47C16C5L,4294967293UL,18446744073709551610UL,5UL,1L,18446744073709551606UL,0x24A16318L,{-7L,0x503137DCL}};/* VOLATILE GLOBAL l_1371 */
                    int32_t *l_1372 = &l_1371.f8;
                    int32_t *l_1373 = &l_1369[3];
                    int32_t *l_1374 = (void*)0;
                    int i;
                    l_1371 = ((l_1368 = 1L) , (l_1369[0] , l_1370));
                    l_1374 = (l_1373 = l_1372);
                }
                unsigned int result = 0;
                result += l_1222.sf;
                result += l_1222.se;
                result += l_1222.sd;
                result += l_1222.sc;
                result += l_1222.sb;
                result += l_1222.sa;
                result += l_1222.s9;
                result += l_1222.s8;
                result += l_1222.s7;
                result += l_1222.s6;
                result += l_1222.s5;
                result += l_1222.s4;
                result += l_1222.s3;
                result += l_1222.s2;
                result += l_1222.s1;
                result += l_1222.s0;
                result += l_1223;
                result += l_1224;
                atomic_add(&p_1408->l_special_values[4], result);
            }
            else
            { /* block id: 655 */
                (1 + 1);
            }
            for (l_972 = (-10); (l_972 == 2); l_972++)
            { /* block id: 660 */
                uint64_t *l_1380 = &p_1408->g_406;
                uint16_t *l_1393 = &p_1408->g_24;
                int8_t l_1394 = 3L;
                int64_t *l_1395 = (void*)0;
                int32_t *l_1397 = &p_1408->g_168.f8;
                (*l_1397) = (safe_add_func_int32_t_s_s((~(1L && ((*p_1408->g_69) = ((VECTOR(int32_t, 16))(p_1408->g_1379.s47b79cc9d83eeb7f)).s4))), (((p_1408->g_973[1][2] , ((*p_1408->g_261) = (0x27587D1752C34BF7L <= (l_1380 != l_1381)))) | ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_1382.xy)).xyyxxyyxyyxyxyyx)).s2) ^ (((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 2))(0x2EL, 0x09L)).yyyyyxxxyyyyxyyy, ((VECTOR(int8_t, 8))(((l_1395 = (((VECTOR(uint32_t, 8))(0xD709E2CAL, 1UL, ((VECTOR(uint32_t, 2))(4294967294UL, 1UL)), l_1382.y, ((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 2))(0x7563CCC3L, 1UL)), ((VECTOR(uint32_t, 16))(1UL, 1UL, ((((safe_div_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u((l_997.w != ((((+(((safe_add_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((18446744073709551615UL && FAKE_DIVERGE(p_1408->local_2_offset, get_local_id(2), 10)) , GROUP_DIVERGE(0, 1)), FAKE_DIVERGE(p_1408->group_2_offset, get_group_id(2), 10))), (((safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 2))(0x79A6L, 0L)).odd, (((*l_1393) = l_996.sd) >= FAKE_DIVERGE(p_1408->group_2_offset, get_group_id(2), 10)))) != l_996.sc) , l_1015))) && 0xFBBFCCFEL) < l_1382.y)) != 1UL) < l_1382.x) >= p_1408->g_973[3][1].f0)), l_1394)) > l_1382.y), 4294967295UL)) | p_1408->g_166.f0) && l_1382.y) , l_1394), 0xA2CA69F9L, FAKE_DIVERGE(p_1408->global_1_offset, get_global_id(1), 10), 0xDAFB272AL, ((VECTOR(uint32_t, 4))(0x85F83432L)), 0x8E5F53B1L, FAKE_DIVERGE(p_1408->local_2_offset, get_local_id(2), 10), ((VECTOR(uint32_t, 2))(4294967290UL)), 4294967295UL, 1UL)).s7d))), 1UL)).s1 , (void*)0)) == p_1408->g_206), ((VECTOR(int8_t, 4))(0x75L)), ((VECTOR(int8_t, 2))(0x08L)), 0x00L)).s2767300040564414))).odd, ((VECTOR(uint8_t, 8))(0UL))))).s4 <= l_1396[4]))));
                for (p_1408->g_168.f8 = (-2); (p_1408->g_168.f8 != 7); ++p_1408->g_168.f8)
                { /* block id: 668 */
                    return l_1017[0][4];
                }
                return l_1382.y;
            }
        }
    }
    return (*p_1408->g_258);
}


/* ------------------------------------------ */
/* 
 * reads : p_1408->g_168.f8 p_1408->g_947 p_1408->g_69 p_1408->g_137.f5 p_1408->g_68
 * writes: p_1408->g_168.f8 p_1408->g_6.f8 p_1408->g_137.f5
 */
struct S1 * func_30(int32_t ** p_31, struct S1 * p_32, int32_t  p_33, int32_t  p_34, struct S3 * p_1408)
{ /* block id: 454 */
    for (p_1408->g_168.f8 = 0; (p_1408->g_168.f8 >= (-1)); p_1408->g_168.f8 = safe_sub_func_uint8_t_u_u(p_1408->g_168.f8, 4))
    { /* block id: 457 */
        uint8_t *l_948 = (void*)0;
        uint8_t *l_949 = &p_1408->g_137.f5;
        int32_t l_952[1];
        int i;
        for (i = 0; i < 1; i++)
            l_952[i] = 1L;
        (*p_1408->g_69) = ((VECTOR(int32_t, 8))(p_1408->g_947.xzywxyyx)).s3;
        (**p_1408->g_68) = ((++(*l_949)) != l_952[0]);
        return p_32;
    }
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_1408->g_48 p_1408->g_58 p_1408->g_68 p_1408->g_166.f8
 * writes: p_1408->g_48 p_1408->g_24 p_1408->g_16 p_1408->g_58 p_1408->g_6.f8 p_1408->g_166.f8
 */
int32_t ** func_35(uint16_t  p_36, struct S3 * p_1408)
{ /* block id: 15 */
    int32_t **l_70 = &p_1408->g_69;
    int32_t l_71[8][9][3] = {{{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L}},{{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L}},{{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L}},{{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L}},{{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L}},{{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L}},{{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L}},{{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L},{1L,3L,0x61F53DE9L}}};
    int64_t *l_78 = (void*)0;
    int32_t l_920[3][4] = {{(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L)}};
    int16_t l_921 = (-8L);
    int i, j, k;
    for (p_1408->g_48 = 7; (p_1408->g_48 > 2); --p_1408->g_48)
    { /* block id: 18 */
        int32_t *l_66 = (void*)0;
        int32_t **l_65 = &l_66;
        VECTOR(uint32_t, 8) l_88 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL);
        int32_t *l_922 = &p_1408->g_168.f9.f1;
        int32_t l_923 = 6L;
        int32_t *l_924 = &p_1408->g_166.f8;
        int32_t *l_925 = &p_1408->g_166.f9.f1;
        int32_t *l_926 = &p_1408->g_6[0][1].f8;
        int32_t *l_927 = &p_1408->g_166.f8;
        int32_t *l_928 = (void*)0;
        int32_t *l_929 = &p_1408->g_168.f9.f1;
        int32_t *l_930 = &l_920[0][2];
        int32_t *l_931 = &l_920[0][2];
        int32_t *l_932 = &p_1408->g_137.f9.f1;
        int32_t *l_933 = &p_1408->g_166.f8;
        int32_t l_934 = 5L;
        int32_t *l_935 = &l_934;
        int32_t *l_936[5];
        uint32_t l_937 = 0xB3C8B381L;
        int i;
        for (i = 0; i < 5; i++)
            l_936[i] = &p_1408->g_6[0][1].f8;
        for (p_1408->g_24 = 29; (p_1408->g_24 >= 9); --p_1408->g_24)
        { /* block id: 21 */
            int32_t *l_64[6];
            int32_t **l_63 = &l_64[3];
            int i;
            for (i = 0; i < 6; i++)
                l_64[i] = &p_1408->g_6[0][1].f8;
            for (p_1408->g_16 = 0; (p_1408->g_16 > 44); ++p_1408->g_16)
            { /* block id: 24 */
                int32_t *l_62 = &p_1408->g_6[0][1].f8;
                int32_t **l_61 = &l_62;
                if (p_1408->g_58)
                    break;
                for (p_1408->g_58 = 0; (p_1408->g_58 != (-27)); --p_1408->g_58)
                { /* block id: 28 */
                    int32_t **l_67 = &l_64[5];
                    return p_1408->g_68;
                }
                (**l_61) = ((l_70 == l_70) & p_36);
            }
            if (l_71[4][2][2])
                continue;
        }
    }
    for (p_1408->g_166.f8 = 1; (p_1408->g_166.f8 == (-13)); p_1408->g_166.f8 = safe_sub_func_uint32_t_u_u(p_1408->g_166.f8, 1))
    { /* block id: 450 */
        int32_t **l_944 = &p_1408->g_69;
        return l_944;
    }
    return l_70;
}


/* ------------------------------------------ */
/* 
 * reads : p_1408->g_863 p_1408->g_866 p_1408->g_875 p_1408->g_882 p_1408->g_884 p_1408->g_166.f3 p_1408->g_68 p_1408->g_69 p_1408->g_168.f3 p_1408->g_206 p_1408->g_166.f9.f1 p_1408->g_525 p_1408->g_16
 * writes: p_1408->g_166.f3 p_1408->g_6.f8 p_1408->g_659 p_1408->g_6.f3 p_1408->g_16 p_1408->g_69
 */
int32_t * func_72(struct S1 ** p_73, struct S3 * p_1408)
{ /* block id: 427 */
    uint32_t l_864 = 4294967286UL;
    VECTOR(uint8_t, 2) l_865 = (VECTOR(uint8_t, 2))(0xEBL, 0xF6L);
    struct S0 *l_867 = &p_1408->g_137.f9;
    VECTOR(uint64_t, 2) l_874 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL);
    VECTOR(int16_t, 2) l_878 = (VECTOR(int16_t, 2))(0x338DL, 0x54B0L);
    VECTOR(int16_t, 2) l_879 = (VECTOR(int16_t, 2))(0x292AL, 0x3C20L);
    VECTOR(int16_t, 16) l_880 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int16_t, 2))((-1L), 0L), (VECTOR(int16_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
    VECTOR(int16_t, 2) l_881 = (VECTOR(int16_t, 2))(0x567AL, (-1L));
    uint8_t *l_883 = (void*)0;
    uint32_t *l_885[1];
    int32_t l_886 = (-1L);
    int32_t l_890[7][10] = {{0x42672104L,2L,0x1F308A07L,0x3C29F44EL,(-1L),0x2B9BB0A3L,0L,0x1F308A07L,0x3339BB35L,(-8L)},{0x42672104L,2L,0x1F308A07L,0x3C29F44EL,(-1L),0x2B9BB0A3L,0L,0x1F308A07L,0x3339BB35L,(-8L)},{0x42672104L,2L,0x1F308A07L,0x3C29F44EL,(-1L),0x2B9BB0A3L,0L,0x1F308A07L,0x3339BB35L,(-8L)},{0x42672104L,2L,0x1F308A07L,0x3C29F44EL,(-1L),0x2B9BB0A3L,0L,0x1F308A07L,0x3339BB35L,(-8L)},{0x42672104L,2L,0x1F308A07L,0x3C29F44EL,(-1L),0x2B9BB0A3L,0L,0x1F308A07L,0x3339BB35L,(-8L)},{0x42672104L,2L,0x1F308A07L,0x3C29F44EL,(-1L),0x2B9BB0A3L,0L,0x1F308A07L,0x3339BB35L,(-8L)},{0x42672104L,2L,0x1F308A07L,0x3C29F44EL,(-1L),0x2B9BB0A3L,0L,0x1F308A07L,0x3339BB35L,(-8L)}};
    int64_t l_891[2];
    int32_t *l_894 = &l_890[6][8];
    int8_t *l_895 = (void*)0;
    int32_t l_896 = 0x5F514CD6L;
    uint64_t *l_897 = (void*)0;
    uint64_t *l_898 = (void*)0;
    uint64_t *l_899 = (void*)0;
    int32_t l_900 = 0x61BEDF78L;
    uint8_t *l_901 = &p_1408->g_16;
    int32_t l_902 = 0x6247D56FL;
    int64_t *l_915 = (void*)0;
    int64_t *l_916 = &l_891[0];
    int64_t *l_917 = (void*)0;
    int64_t *l_918 = (void*)0;
    int64_t *l_919[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i, j;
    for (i = 0; i < 1; i++)
        l_885[i] = &p_1408->g_6[0][1].f3;
    for (i = 0; i < 2; i++)
        l_891[i] = 1L;
    l_902 ^= ((safe_sub_func_int64_t_s_s((safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(p_1408->g_863.s32)).even, l_864)), (((VECTOR(uint8_t, 8))(0x30L, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(l_865.yyxxyyxyyxxyxyxx)))).s63, ((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(p_1408->g_866.wyxzywwxzyyzwwzx)).sa912)).yzzxwwzyxyxxzzyx, ((VECTOR(uint8_t, 2))(1UL, 3UL)).xyxyyyyxyyxyyyxy))).sa6, ((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))((GROUP_DIVERGE(1, 1) == FAKE_DIVERGE(p_1408->group_2_offset, get_group_id(2), 10)), 8UL, 0x96L, ((*l_901) = ((l_900 = ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 8))((l_867 == (void*)0), 1UL, 0x0080182CL, (((((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(0xCAC3L, 10)), ((((safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_874.xx)).xxyxyyyxxyyyxxyx)).odd)).s3063406724071424, ((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_1408->g_875.sdf)).yyyy)).wwzywzzy, ((VECTOR(uint64_t, 4))(18446744073709551615UL, ((p_1408->g_6[0][1].f3 = (((l_886 = (safe_rshift_func_int16_t_s_s(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))((l_874.y < ((VECTOR(uint16_t, 2))(abs(((VECTOR(int16_t, 2))(l_878.xx))))).lo), ((VECTOR(int16_t, 4))(l_879.xxyx)), ((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 8))(0L, 9L, ((VECTOR(int16_t, 2))(l_880.s40)), 0x47EEL, ((VECTOR(int16_t, 2))(l_881.xy)), 0L)), ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(p_1408->g_882.s8ecc125b)).s3437672135017526)).even))), ((l_881.x , l_883) != &p_1408->g_16), ((VECTOR(int16_t, 4))(p_1408->g_884.s32ad)), 0x2951L, 4L, 0x27BDL)).s4c))), 0L)))).s5, 7))) == (safe_unary_minus_func_uint64_t_u((safe_add_func_int8_t_s_s((p_1408->g_659.z = (((*l_894) = ((**p_1408->g_68) = ((++p_1408->g_166.f3) ^ 0x4606C8A8L))) | 2UL)), l_874.x))))) >= l_896)) || (*l_894)), 5UL, 0x666E5B4464C9E0F7L)).yzxxxwxz))).s7730622110201437))).sb, p_1408->g_168.f3)) == (-2L)) , &l_891[1]) != p_1408->g_206))) < 1UL) || 0L) != 0x1BL) == p_1408->g_166.f9.f1), 0xBABE95D8L, ((VECTOR(uint32_t, 2))(2UL)), 9UL)).odd, ((VECTOR(uint32_t, 4))(0xA2E99D2EL))))).lo)).yxyy)), (*l_894), (*l_894), 0x81309C99FCD3B770L, 18446744073709551607UL)).s0) >= l_879.y)), ((VECTOR(uint8_t, 2))(1UL)), 247UL, 0xAAL, ((VECTOR(uint8_t, 2))(0x69L)), 255UL, ((VECTOR(uint8_t, 4))(0xDCL)), 0x12L)).s49)).xyxy)), ((VECTOR(uint8_t, 2))(255UL)), 9UL, 0UL)).lo, (uint8_t)FAKE_DIVERGE(p_1408->group_1_offset, get_group_id(1), 10)))).even))).yyyx)), ((VECTOR(uint8_t, 2))(0x63L)), 0UL)).s6 != p_1408->g_525.y))) , (*l_894));
    (*p_1408->g_68) = (void*)0;
    (*l_894) = ((void*)0 == &p_1408->g_68);
    l_902 &= (((*l_901) ^= ((0x2BF2F9DD8A9B1216L > 0x1633A7DAC552EE64L) != (((safe_mul_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u(((safe_add_func_int8_t_s_s(((*l_894) | (l_886 = ((safe_sub_func_int16_t_s_s((-5L), (((*l_894) | ((*l_916) |= (safe_mul_func_int8_t_s_s((*l_894), (*l_894))))) & (-1L)))) >= ((*l_894) > 0xB6F5L)))), (*l_894))) && (*l_894)), 1)), 0L)), (*l_894))) , (*l_894)) , (*l_894)))) && (*l_894));
    return (*p_1408->g_68);
}


/* ------------------------------------------ */
/* 
 * reads : p_1408->g_69 p_1408->g_166.f9.f1 p_1408->g_141 p_1408->g_556 p_1408->g_591 p_1408->g_6.f2 p_1408->g_206 p_1408->g_207 p_1408->g_6.f9.f1 p_1408->g_24 p_1408->g_137.f5 p_1408->g_621 p_1408->g_68 p_1408->g_6.f8 p_1408->g_137.f8 p_1408->g_645 p_1408->g_646 p_1408->g_398 p_1408->g_58 p_1408->g_168.f8 p_1408->g_525 p_1408->g_659 p_1408->g_166.f9.f0 p_1408->g_211.f7 p_1408->g_5 p_1408->g_168 p_1408->g_6 p_1408->g_137.f9.f1 p_1408->g_347 p_1408->g_405 p_1408->g_711 p_1408->g_722 p_1408->g_137.f4 p_1408->g_807
 * writes: p_1408->g_6.f8 p_1408->g_166.f9.f1 p_1408->g_137.f7 p_1408->g_398 p_1408->g_166.f0 p_1408->g_137.f8 p_1408->g_166.f5 p_1408->g_406 p_1408->g_24 p_1408->g_58 p_1408->g_645 p_1408->g_730 p_1408->g_168.f3 p_1408->g_168.f5 p_1408->g_69 p_1408->g_168.f1
 */
struct S1 ** func_74(int64_t * p_75, uint32_t  p_76, int32_t ** p_77, struct S3 * p_1408)
{ /* block id: 228 */
    struct S0 * volatile l_563 = &p_1408->g_6[0][1].f9;/* VOLATILE GLOBAL l_563 */
    uint32_t *l_569 = &p_1408->g_570;
    struct S0 *l_581 = &p_1408->g_168.f9;
    struct S1 *l_589[7] = {&p_1408->g_168,&p_1408->g_168,&p_1408->g_168,&p_1408->g_168,&p_1408->g_168,&p_1408->g_168,&p_1408->g_168};
    int32_t l_611 = 0x031FAA2CL;
    int32_t l_652 = 0x79D6153CL;
    VECTOR(int64_t, 4) l_667 = (VECTOR(int64_t, 4))(7L, (VECTOR(int64_t, 2))(7L, (-1L)), (-1L));
    int16_t **l_683[3][1];
    int16_t ****l_858 = &p_1408->g_263;
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
            l_683[i][j] = (void*)0;
    }
    (*p_1408->g_69) = p_76;
    for (p_1408->g_166.f9.f1 = 5; (p_1408->g_166.f9.f1 == 26); p_1408->g_166.f9.f1 = safe_add_func_int8_t_s_s(p_1408->g_166.f9.f1, 6))
    { /* block id: 232 */
        int32_t l_573 = (-1L);
        uint64_t *l_606 = &p_1408->g_406;
        int16_t *l_610 = &p_1408->g_48;
        int32_t l_623[1];
        int32_t l_632 = 0x495D05DDL;
        VECTOR(uint64_t, 2) l_644 = (VECTOR(uint64_t, 2))(0xAF8FA790E8397AA3L, 18446744073709551614UL);
        VECTOR(uint64_t, 8) l_648 = (VECTOR(uint64_t, 8))(0x2C39CEF380E1113BL, (VECTOR(uint64_t, 4))(0x2C39CEF380E1113BL, (VECTOR(uint64_t, 2))(0x2C39CEF380E1113BL, 0xCFB4FDCEFECBB4EDL), 0xCFB4FDCEFECBB4EDL), 0xCFB4FDCEFECBB4EDL, 0x2C39CEF380E1113BL, 0xCFB4FDCEFECBB4EDL);
        int16_t l_724 = 8L;
        struct S1 *l_726 = &p_1408->g_6[0][1];
        int i;
        for (i = 0; i < 1; i++)
            l_623[i] = 0x74C2DCB4L;
        for (p_1408->g_137.f7 = 0; (p_1408->g_137.f7 <= 16); ++p_1408->g_137.f7)
        { /* block id: 235 */
            struct S0 * volatile *l_562[1];
            uint32_t *l_568 = (void*)0;
            int32_t l_580 = (-5L);
            VECTOR(uint8_t, 16) l_590 = (VECTOR(uint8_t, 16))(0x2DL, (VECTOR(uint8_t, 4))(0x2DL, (VECTOR(uint8_t, 2))(0x2DL, 1UL), 1UL), 1UL, 0x2DL, 1UL, (VECTOR(uint8_t, 2))(0x2DL, 1UL), (VECTOR(uint8_t, 2))(0x2DL, 1UL), 0x2DL, 1UL, 0x2DL, 1UL);
            VECTOR(uint32_t, 2) l_642 = (VECTOR(uint32_t, 2))(0x7EEB3C60L, 5UL);
            VECTOR(uint64_t, 2) l_702 = (VECTOR(uint64_t, 2))(18446744073709551614UL, 0x0612BD21BC5A23E7L);
            VECTOR(uint64_t, 4) l_704 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 1UL), 1UL);
            VECTOR(uint32_t, 16) l_728 = (VECTOR(uint32_t, 16))(0x1D9A9F14L, (VECTOR(uint32_t, 4))(0x1D9A9F14L, (VECTOR(uint32_t, 2))(0x1D9A9F14L, 3UL), 3UL), 3UL, 0x1D9A9F14L, 3UL, (VECTOR(uint32_t, 2))(0x1D9A9F14L, 3UL), (VECTOR(uint32_t, 2))(0x1D9A9F14L, 3UL), 0x1D9A9F14L, 3UL, 0x1D9A9F14L, 3UL);
            int i;
            for (i = 0; i < 1; i++)
                l_562[i] = &p_1408->g_141;
            l_563 = p_1408->g_141;
            if ((safe_mul_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(p_1408->g_556.y, (l_568 != l_569))), (p_1408->g_141 != ((safe_sub_func_int16_t_s_s(l_573, ((4294967290UL <= ((safe_add_func_int8_t_s_s((safe_add_func_int32_t_s_s((0x1F4E2AACC8D6409BL ^ ((-6L) ^ (safe_add_func_int32_t_s_s(l_573, 0x7151903AL)))), 0x3F63CAA8L)), FAKE_DIVERGE(p_1408->local_0_offset, get_local_id(0), 10))) , 0L)) && l_580))) , l_581)))))
            { /* block id: 237 */
                struct S1 *l_588 = &p_1408->g_168;
                struct S0 l_592 = {0x1F2FFCDD252F028AL,8L};
                VECTOR(int8_t, 8) l_605 = (VECTOR(int8_t, 8))(0x05L, (VECTOR(int8_t, 4))(0x05L, (VECTOR(int8_t, 2))(0x05L, 0x1AL), 0x1AL), 0x1AL, 0x05L, 0x1AL);
                uint64_t **l_607 = &l_606;
                uint16_t *l_612 = (void*)0;
                uint16_t *l_613 = (void*)0;
                uint16_t *l_614 = (void*)0;
                uint16_t *l_615 = (void*)0;
                uint16_t *l_616 = (void*)0;
                uint16_t *l_617 = (void*)0;
                uint16_t *l_618 = (void*)0;
                uint16_t l_619 = 65527UL;
                uint32_t *l_620 = &p_1408->g_166.f0;
                uint8_t *l_622[4] = {&p_1408->g_168.f5,&p_1408->g_168.f5,&p_1408->g_168.f5,&p_1408->g_168.f5};
                int i;
                (**p_1408->g_68) ^= (safe_div_func_uint8_t_u_u((((l_623[0] = ((((*l_620) = (safe_add_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u(((l_588 = (void*)0) == l_589[3]), 7)), (l_619 = (((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(rotate(((VECTOR(uint8_t, 8))(l_590.s6b8eef0a)), ((VECTOR(uint8_t, 4))(p_1408->g_591.s3515)).zwwzzwxz))), ((VECTOR(uint8_t, 8))(((p_1408->g_6[0][1].f2 , l_592) , (+p_1408->g_556.y)), (safe_mod_func_uint16_t_u_u(((safe_mod_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u((safe_add_func_int64_t_s_s((((((safe_rshift_func_int16_t_s_u((0x3230D91F6F5085BFL ^ (p_1408->g_398.s0 = ((+GROUP_DIVERGE(1, 1)) < ((VECTOR(int8_t, 8))(l_605.s63275630)).s6))), 9)) , &p_1408->g_406) == ((*l_607) = l_606)) ^ ((l_611 |= ((safe_lshift_func_uint8_t_u_s((l_610 != (void*)0), 0)) & l_573)) , p_76)) || p_76), (*p_1408->g_206))), GROUP_DIVERGE(1, 1))) | p_1408->g_6[0][1].f9.f1), l_605.s0)) & l_592.f1), p_76)), p_76, 0x83L, 0UL, ((VECTOR(uint8_t, 2))(0x58L)), 255UL)))).s6 > p_1408->g_24) , p_76) <= p_1408->g_137.f5))))) , p_1408->g_621) , 1UL)) <= 1UL) != p_76), 0x14L));
                if ((**p_1408->g_68))
                    continue;
            }
            else
            { /* block id: 247 */
                VECTOR(uint32_t, 8) l_643 = (VECTOR(uint32_t, 8))(0x5D50F5FDL, (VECTOR(uint32_t, 4))(0x5D50F5FDL, (VECTOR(uint32_t, 2))(0x5D50F5FDL, 0xF76E3C4BL), 0xF76E3C4BL), 0xF76E3C4BL, 0x5D50F5FDL, 0xF76E3C4BL);
                VECTOR(uint64_t, 4) l_647 = (VECTOR(uint64_t, 4))(0xC1447C75A919B255L, (VECTOR(uint64_t, 2))(0xC1447C75A919B255L, 0x1482B09C8DAC6258L), 0x1482B09C8DAC6258L);
                int16_t l_649 = (-1L);
                int32_t l_651 = 0L;
                VECTOR(uint64_t, 4) l_703 = (VECTOR(uint64_t, 4))(0xFCD4EAFA9E5B62BDL, (VECTOR(uint64_t, 2))(0xFCD4EAFA9E5B62BDL, 0x4A0114DBB638257CL), 0x4A0114DBB638257CL);
                volatile struct S1 **l_731 = &p_1408->g_730[1][2];
                int i;
                for (p_1408->g_137.f8 = 17; (p_1408->g_137.f8 != (-9)); p_1408->g_137.f8 = safe_sub_func_int8_t_s_s(p_1408->g_137.f8, 1))
                { /* block id: 250 */
                    uint8_t l_626 = 0x3EL;
                    struct S0 *l_629 = &p_1408->g_137.f9;
                    uint8_t *l_633 = &p_1408->g_166.f5;
                    uint16_t *l_650 = &p_1408->g_24;
                    struct S1 **l_653 = &p_1408->g_5;
                    VECTOR(uint16_t, 16) l_662 = (VECTOR(uint16_t, 16))(65526UL, (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 0x01EAL), 0x01EAL), 0x01EAL, 65526UL, 0x01EAL, (VECTOR(uint16_t, 2))(65526UL, 0x01EAL), (VECTOR(uint16_t, 2))(65526UL, 0x01EAL), 65526UL, 0x01EAL, 65526UL, 0x01EAL);
                    int16_t ***l_668 = (void*)0;
                    int32_t l_671 = 0x4FE21C2AL;
                    int8_t *l_723 = &p_1408->g_58;
                    uint32_t *l_725[9] = {(void*)0,&p_1408->g_166.f3,(void*)0,(void*)0,&p_1408->g_166.f3,(void*)0,(void*)0,&p_1408->g_166.f3,(void*)0};
                    int i;
                    if (l_623[0])
                        break;
                    if (((((l_652 ^= ((l_626 == (safe_mod_func_uint8_t_u_u(((*l_633) = ((l_629 != ((l_611 = (l_632 = (safe_rshift_func_int16_t_s_u(0x2338L, p_76)))) , p_1408->g_141)) | p_76)), (safe_sub_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u((p_76 | (l_651 = ((*l_650) = (((~((safe_add_func_uint16_t_u_u((safe_mod_func_int32_t_s_s((**p_1408->g_68), (((VECTOR(uint8_t, 2))(6UL, 2UL)).even , ((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 8))(l_642.yxxyxyyy)).s16, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(l_643.s3040606227367022)).even)).s22))).lo))), ((((*l_606) = ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 16))(l_644.xyyxxyyyxxxxyyxy)).s2b, ((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 8))(p_1408->g_645.xyyyyxxy)).hi, ((VECTOR(uint64_t, 8))(mad_sat(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0xBB894470EBF3B3A3L, 0UL)).yxxx)).hi)).yxyyxyyyxyxxyxyx)).sf240)))).xwyxywxy, ((VECTOR(uint64_t, 16))(p_1408->g_646.s174d527f82840792)).lo, ((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),VECTOR(uint64_t, 2),((VECTOR(uint64_t, 4))(abs(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0x2A4C02D13430FA20L, 5UL)), 0x4F74CED0A03D4B6BL, 0xA41089A15BEF33B7L))))).hi, ((VECTOR(uint64_t, 16))(0x91A9559B6CEEE0B7L, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 16))(l_647.yyzzwywxxzwwzzwy)).s97, ((VECTOR(uint64_t, 4))(mul_hi(((VECTOR(uint64_t, 8))(l_648.s35100132)).hi, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0xD3BD6E2C0A1F9BD6L, 0x3DB2F5D99488F648L)).yyxyyxyyyyxxyyyx)).s1193))).even))), 0UL, 0UL)), 6UL, ((p_76 | p_76) >= FAKE_DIVERGE(p_1408->local_2_offset, get_local_id(2), 10)), 1UL, 1UL, ((VECTOR(uint64_t, 2))(4UL)), 18446744073709551615UL, p_1408->g_398.s2, 18446744073709551615UL, 18446744073709551607UL, 6UL)).sf5, ((VECTOR(uint64_t, 2))(1UL))))), ((VECTOR(uint64_t, 2))(0UL))))).yyyxxxyy))).odd))).lo))), ((VECTOR(uint64_t, 4))(0xA94162D9E25FA778L)), p_1408->g_58, l_649, ((VECTOR(uint64_t, 4))(18446744073709551614UL)), l_623[0], 18446744073709551608UL, 0xB5AF020B30955A02L, 1UL)))).sb) == l_648.s6) ^ 4L))) ^ FAKE_DIVERGE(p_1408->group_2_offset, get_group_id(2), 10))) > 0x40L) && 0x383251EAL)))), p_76)) < p_1408->g_168.f8), p_76))))) >= FAKE_DIVERGE(p_1408->local_1_offset, get_local_id(1), 10))) > l_642.x) , l_643.s1) != p_1408->g_525.w))
                    { /* block id: 259 */
                        return l_653;
                    }
                    else
                    { /* block id: 261 */
                        int16_t *l_654 = &p_1408->g_48;
                        int16_t ****l_669 = &l_668;
                        int64_t *l_670[10][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                        int32_t l_672 = 0x00ADFB1EL;
                        int i, j;
                        (**p_1408->g_68) = (l_610 != l_654);
                        (**p_1408->g_68) &= ((safe_mul_func_int16_t_s_s(((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(p_1408->g_659.zxxzzxyy)).s5, 3)) , (safe_mul_func_int8_t_s_s((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))((l_626 == 65535UL), (p_76 >= (l_651 = ((-9L) ^ ((((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0x005C340A43D46D0BL, 1UL)).xxxyxyxyxxyyxyxx)).s6 || (((VECTOR(uint16_t, 4))(l_662.s9d90)).z || (65530UL ^ (safe_sub_func_int64_t_s_s((l_671 = (l_643.s3 == ((safe_rshift_func_int16_t_s_s((p_76 < ((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(l_667.wzywwzyz)).s15)).odd , &p_1408->g_133) == ((*l_669) = l_668))), 12)) && p_1408->g_621.f5))), GROUP_DIVERGE(0, 1)))))) & p_1408->g_166.f9.f0)))), p_76, 1UL, p_1408->g_211.f7, ((VECTOR(uint64_t, 2))(18446744073709551615UL)), 1UL)).s6, ((VECTOR(uint64_t, 2))(4UL)), ((VECTOR(uint64_t, 2))(18446744073709551615UL)), p_76, 0xFF841FD2BCB5683BL, 18446744073709551615UL)).s0 || (-1L)), p_76))), l_672)) && l_626);
                        (*p_1408->g_69) = (((((0x33C5L & (l_580 = p_76)) & (safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(0x249D773E5E1D366FL, 0x47D50EBF2E01810CL)).lo, (safe_lshift_func_uint16_t_u_s(65526UL, ((*p_1408->g_5) , (&l_589[4] != &p_1408->g_5))))))) ^ (((safe_lshift_func_int16_t_s_u((0L <= p_1408->g_166.f9.f0), 5)) == ((*l_633) = (safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((((((l_683[1][0] == &p_1408->g_134) , 4294967293UL) , 65531UL) < 0x055BL) , l_662.s6) ^ p_1408->g_137.f9.f1), 0x65L)), l_642.x)))) != 0x86L)) != (-4L)) || p_76);
                        if (l_623[0])
                            continue;
                    }
                    if ((*p_1408->g_347))
                        continue;
                    if ((l_671 = (((safe_lshift_func_int8_t_s_s((safe_div_func_uint32_t_u_u((l_651 = (safe_add_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s(((p_1408->g_405 , (((safe_sub_func_int64_t_s_s(((safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 16))(l_702.xxxyxxxyyxxxyyyy)), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(l_703.zyzzwxxx)).hi)).yxwwwwwzywwyzyww, ((VECTOR(uint64_t, 4))(l_704.zxyw)).zyxzywxyxywzzwxx))).s5, ((VECTOR(int64_t, 2))((-1L), 9L)).lo)) >= 1L), l_667.z)) || (l_724 = ((safe_sub_func_int64_t_s_s((safe_mod_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u(((p_1408->g_645.x ^= (p_1408->g_711[8][0][1] , (safe_rshift_func_uint8_t_u_s((l_662.s2 , ((((((*l_606) = 0UL) == 0x3F687D76F3E38788L) || (((((((safe_div_func_int8_t_s_s((p_76 < (((safe_lshift_func_int8_t_s_s(((*l_723) ^= (safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(p_1408->g_722.wx)).odd, ((l_704.y , 4294967295UL) < 5UL)))), p_76)) , l_642.y) <= 0x113AL)), l_667.z)) , (void*)0) == (void*)0) , l_647.w) < l_704.w) , l_643.s3) , p_1408->g_6[0][1].f6)) > p_76) ^ p_1408->g_137.f4)), p_1408->g_398.s8)))) <= 18446744073709551615UL), 5UL)), l_623[0])), 0L)) <= 0x11L))) >= GROUP_DIVERGE(1, 1))) <= 8UL), 0)), l_671)), 11)), (-1L))), 0xF9L))), (**p_1408->g_68))), 4)) == l_626) | GROUP_DIVERGE(1, 1))))
                    { /* block id: 279 */
                        if (p_76)
                            break;
                    }
                    else
                    { /* block id: 281 */
                        return l_653;
                    }
                }
                (*l_731) = &p_1408->g_621;
                atomic_sub(&p_1408->g_atomic_reduction[get_linear_group_id()], l_648.s5);
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_1408->v_collective += p_1408->g_atomic_reduction[get_linear_group_id()];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            }
        }
        if (p_76)
            break;
    }
    if (l_611)
    { /* block id: 291 */
        int8_t l_808 = 0x3DL;
        struct S1 **l_844 = &l_589[4];
        if ((atomic_inc(&p_1408->l_atomic_input[35]) == 3))
        { /* block id: 293 */
            int32_t l_732 = 0L;
            VECTOR(int32_t, 8) l_775 = (VECTOR(int32_t, 8))(0x0178EC1FL, (VECTOR(int32_t, 4))(0x0178EC1FL, (VECTOR(int32_t, 2))(0x0178EC1FL, (-7L)), (-7L)), (-7L), 0x0178EC1FL, (-7L));
            uint32_t l_805 = 4294967295UL;
            int32_t l_806 = 0x5E3746DFL;
            int i;
            if (l_732)
            { /* block id: 294 */
                int16_t l_733[10][5];
                int64_t l_734[10];
                uint32_t l_735[8][1] = {{0xF96E2BFCL},{0xF96E2BFCL},{0xF96E2BFCL},{0xF96E2BFCL},{0xF96E2BFCL},{0xF96E2BFCL},{0xF96E2BFCL},{0xF96E2BFCL}};
                struct S0 l_738 = {-1L,6L};
                struct S0 l_739 = {0x1173984B30B4D10DL,0x2BC57375L};
                struct S0 l_740 = {-6L,0x3519FC76L};
                int32_t l_741[8][2] = {{4L,1L},{4L,1L},{4L,1L},{4L,1L},{4L,1L},{4L,1L},{4L,1L},{4L,1L}};
                uint32_t l_742 = 0xC557FDE6L;
                uint32_t l_743[3][6][8] = {{{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL}},{{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL}},{{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL}}};
                union U2 l_745 = {-4L};/* VOLATILE GLOBAL l_745 */
                union U2 *l_744 = &l_745;
                union U2 *l_746 = (void*)0;
                union U2 *l_747 = &l_745;
                union U2 *l_748 = &l_745;
                int i, j, k;
                for (i = 0; i < 10; i++)
                {
                    for (j = 0; j < 5; j++)
                        l_733[i][j] = 0x25CAL;
                }
                for (i = 0; i < 10; i++)
                    l_734[i] = 0x14CA638F594D1F91L;
                l_748 = (l_747 = (l_746 = ((l_740 = ((++l_735[3][0]) , (l_739 = l_738))) , (((l_741[7][1] = 0x77364130L) , (l_743[1][1][0] = l_742)) , l_744))));
                for (l_739.f1 = 0; (l_739.f1 <= 13); l_739.f1++)
                { /* block id: 305 */
                    VECTOR(int32_t, 4) l_751 = (VECTOR(int32_t, 4))(0x3942F426L, (VECTOR(int32_t, 2))(0x3942F426L, 0x222DFAA1L), 0x222DFAA1L);
                    VECTOR(int32_t, 16) l_752 = (VECTOR(int32_t, 16))(0x4914AA2DL, (VECTOR(int32_t, 4))(0x4914AA2DL, (VECTOR(int32_t, 2))(0x4914AA2DL, 2L), 2L), 2L, 0x4914AA2DL, 2L, (VECTOR(int32_t, 2))(0x4914AA2DL, 2L), (VECTOR(int32_t, 2))(0x4914AA2DL, 2L), 0x4914AA2DL, 2L, 0x4914AA2DL, 2L);
                    int i;
                    if (((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 4))(l_751.zwyy)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_752.saa1f491b2aada326)).s0e)).yyxx))).x)
                    { /* block id: 306 */
                        VECTOR(int32_t, 4) l_753 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x0B7406D7L), 0x0B7406D7L);
                        uint16_t l_754 = 0xE62EL;
                        int8_t l_755[7][5] = {{0L,0x04L,0L,0L,0x04L},{0L,0x04L,0L,0L,0x04L},{0L,0x04L,0L,0L,0x04L},{0L,0x04L,0L,0L,0x04L},{0L,0x04L,0L,0L,0x04L},{0L,0x04L,0L,0L,0x04L},{0L,0x04L,0L,0L,0x04L}};
                        int i, j;
                        l_738.f1 = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_753.xxwx)).xwzxxzywzxyxwyyy)).s83)).lo;
                        l_752.sd |= ((FAKE_DIVERGE(p_1408->group_2_offset, get_group_id(2), 10) , l_754) , 0x435B2147L);
                        l_752.sa &= l_755[3][4];
                    }
                    else
                    { /* block id: 310 */
                        struct S1 l_757 = {4294967287UL,0x5FA414CDL,0x1737C273501F558CL,7UL,3UL,0xEAL,0L,1UL,0x77B0743AL,{0x6DA89EEEA68EA928L,0x22D55861L}};/* VOLATILE GLOBAL l_757 */
                        struct S1 *l_756 = &l_757;
                        struct S1 *l_758[3];
                        struct S0 l_759 = {9L,0x5F7300F2L};
                        uint64_t l_760 = 6UL;
                        uint16_t l_761 = 1UL;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_758[i] = &l_757;
                        l_758[2] = l_756;
                        l_761 &= (l_759 , l_760);
                    }
                }
                for (l_733[4][4] = (-21); (l_733[4][4] == (-27)); --l_733[4][4])
                { /* block id: 317 */
                    uint8_t l_764[2];
                    uint32_t l_767 = 0x1E548D8FL;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_764[i] = 0xF8L;
                    l_764[0]++;
                    l_732 = l_767;
                }
            }
            else
            { /* block id: 321 */
                VECTOR(int32_t, 2) l_768 = (VECTOR(int32_t, 2))(0x532C91ADL, (-2L));
                int i;
                for (l_768.y = (-8); (l_768.y <= (-10)); l_768.y--)
                { /* block id: 324 */
                    l_732 ^= 1L;
                }
            }
            for (l_732 = 0; (l_732 == (-27)); l_732 = safe_sub_func_int16_t_s_s(l_732, 1))
            { /* block id: 330 */
                struct S1 l_773 = {4294967295UL,-5L,0x2D68C29830C884FBL,4294967295UL,0UL,0UL,0L,0x20B51EA731E3BD0DL,0x228224C5L,{0x2AD5E68853051DC5L,-1L}};/* VOLATILE GLOBAL l_773 */
                struct S1 l_774 = {0x69E6945AL,0x244DE238L,2L,4294967292UL,0xD494C3A3EABBF6AAL,0x27L,0x3140045E896441C9L,0xC32847D52FE30339L,1L,{-8L,0x77810E9AL}};/* VOLATILE GLOBAL l_774 */
                l_774 = l_773;
            }
            if (((VECTOR(int32_t, 16))(l_775.s0152640501700315)).sa)
            { /* block id: 333 */
                l_732 |= (l_775.s5 = 0x20165E69L);
            }
            else
            { /* block id: 336 */
                uint32_t l_786 = 4294967295UL;
                VECTOR(int32_t, 2) l_787 = (VECTOR(int32_t, 2))(0x264E7AC8L, 0x6078E68CL);
                struct S0 l_788 = {0x6B21ACAA79A1BDD0L,0x3E74B3C0L};
                uint32_t l_789 = 7UL;
                int32_t *l_803[7];
                int32_t *l_804 = (void*)0;
                int i;
                for (i = 0; i < 7; i++)
                    l_803[i] = (void*)0;
                if (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x4CE8D973L, 0x7E507917L)).yxyy)).y)
                { /* block id: 337 */
                    VECTOR(int32_t, 8) l_777 = (VECTOR(int32_t, 8))(3L, (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 0x4B0E50C3L), 0x4B0E50C3L), 0x4B0E50C3L, 3L, 0x4B0E50C3L);
                    int32_t *l_776 = (void*)0;
                    int32_t *l_778 = (void*)0;
                    int32_t *l_779[1];
                    int32_t *l_780 = (void*)0;
                    int32_t l_781[9][9][3] = {{{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L}},{{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L}},{{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L}},{{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L}},{{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L}},{{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L}},{{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L}},{{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L}},{{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L},{(-5L),0x4360A5CEL,0x3D19EAC8L}}};
                    VECTOR(int32_t, 16) l_782 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x25A2F669L), 0x25A2F669L), 0x25A2F669L, 1L, 0x25A2F669L, (VECTOR(int32_t, 2))(1L, 0x25A2F669L), (VECTOR(int32_t, 2))(1L, 0x25A2F669L), 1L, 0x25A2F669L, 1L, 0x25A2F669L);
                    VECTOR(int32_t, 2) l_783 = (VECTOR(int32_t, 2))((-1L), 1L);
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_779[i] = (void*)0;
                    l_780 = (l_779[0] = (l_778 = l_776));
                    l_775.s0 = l_781[1][1][0];
                    l_732 = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 16))(l_782.s6a8c6b267c49ce4a)), ((VECTOR(int32_t, 4))(l_783.yxxx)).zxyzzxxzyyzwyyzz, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x1BFE9F3BL, 0x5778967AL)), 1L, (-1L))).wxxyyyyzyzyyzyzy))).odd)).s00)).lo;
                }
                else
                { /* block id: 343 */
                    uint32_t l_784 = 0UL;
                    int8_t l_785[1][5][10];
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 5; j++)
                        {
                            for (k = 0; k < 10; k++)
                                l_785[i][j][k] = 0x7DL;
                        }
                    }
                    l_775.s1 = (l_784 , l_785[0][4][0]);
                }
                if (((l_786 , ((VECTOR(int32_t, 16))(l_787.yyxyxyyxyxyyyxxx)).s5) , (l_788 , l_789)))
                { /* block id: 346 */
                    uint8_t l_790 = 255UL;
                    --l_790;
                    l_732 = 0x3AE98243L;
                }
                else
                { /* block id: 349 */
                    uint16_t l_793 = 65535UL;
                    if (l_793)
                    { /* block id: 350 */
                        uint32_t l_794[9] = {3UL,0x36115B56L,3UL,3UL,0x36115B56L,3UL,3UL,0x36115B56L,3UL};
                        int i;
                        ++l_794[2];
                    }
                    else
                    { /* block id: 352 */
                        int32_t *l_797 = (void*)0;
                        int8_t l_798 = 0x14L;
                        int64_t l_799 = (-5L);
                        int16_t l_800 = 0x4310L;
                        uint8_t l_801 = 0xD6L;
                        int64_t l_802 = (-1L);
                        l_797 = (void*)0;
                        l_787.x = l_798;
                        l_775.s0 &= (l_799 , (l_787.y = ((l_801 |= l_800) , l_802)));
                    }
                }
                l_804 = l_803[2];
                l_732 ^= 1L;
            }
            l_806 = (l_805 = 0x4B0FBFACL);
            unsigned int result = 0;
            result += l_732;
            result += l_775.s7;
            result += l_775.s6;
            result += l_775.s5;
            result += l_775.s4;
            result += l_775.s3;
            result += l_775.s2;
            result += l_775.s1;
            result += l_775.s0;
            result += l_805;
            result += l_806;
            atomic_add(&p_1408->l_special_values[35], result);
        }
        else
        { /* block id: 365 */
            (1 + 1);
        }
        (*p_1408->g_69) &= ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(p_1408->g_807.sc22556e4)).s06, ((VECTOR(int32_t, 8))((+l_808), ((void*)0 != &l_581), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(9L, 0x3BC99D44L)), 0x6A220F7EL, 0L)), (-10L), 0L)).s54))).lo;
        if ((atomic_inc(&p_1408->l_atomic_input[3]) == 4))
        { /* block id: 370 */
            int32_t l_809 = 0x1DBB64A7L;
            for (l_809 = 0; (l_809 >= 20); l_809++)
            { /* block id: 373 */
                int8_t l_812 = 6L;
                uint32_t l_813 = 0x6453869EL;
                if (((l_812 ^= 0L) , l_813))
                { /* block id: 375 */
                    VECTOR(int32_t, 2) l_814 = (VECTOR(int32_t, 2))(0x64BEBC4DL, 4L);
                    uint32_t l_815[10][1] = {{0x8E7B6364L},{0x8E7B6364L},{0x8E7B6364L},{0x8E7B6364L},{0x8E7B6364L},{0x8E7B6364L},{0x8E7B6364L},{0x8E7B6364L},{0x8E7B6364L},{0x8E7B6364L}};
                    int i, j;
                    l_814.x = (-1L);
                    l_815[4][0] = (-9L);
                }
                else
                { /* block id: 378 */
                    int16_t l_816 = 1L;
                    int64_t l_817 = 1L;
                    uint32_t l_818 = 7UL;
                    int32_t l_821 = 0x4959B2A6L;
                    int8_t l_822 = 0x34L;
                    struct S0 l_835 = {-6L,-1L};
                    struct S0 l_836 = {0L,0x209A6E3FL};
                    l_818++;
                    l_822 ^= (l_821 ^= ((VECTOR(int32_t, 2))(0x42627A0AL, 6L)).lo);
                    for (l_821 = 0; (l_821 != (-28)); l_821--)
                    { /* block id: 384 */
                        int16_t l_825 = 0L;
                        int8_t l_826[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
                        uint32_t l_827 = 0xA3713BAEL;
                        uint32_t l_830 = 0xFD007BEAL;
                        uint16_t l_833[2][1];
                        int64_t l_834 = 0x44D32AEA45A87B10L;
                        int i, j;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_833[i][j] = 1UL;
                        }
                        l_826[1] = l_825;
                        l_827++;
                        --l_830;
                        l_834 &= l_833[0][0];
                    }
                    l_836 = l_835;
                }
                for (l_812 = 27; (l_812 > (-25)); l_812--)
                { /* block id: 394 */
                    int8_t l_839 = (-1L);
                    uint16_t l_840[10][4] = {{65527UL,0xD3C8L,0xD3C8L,65527UL},{65527UL,0xD3C8L,0xD3C8L,65527UL},{65527UL,0xD3C8L,0xD3C8L,65527UL},{65527UL,0xD3C8L,0xD3C8L,65527UL},{65527UL,0xD3C8L,0xD3C8L,65527UL},{65527UL,0xD3C8L,0xD3C8L,65527UL},{65527UL,0xD3C8L,0xD3C8L,65527UL},{65527UL,0xD3C8L,0xD3C8L,65527UL},{65527UL,0xD3C8L,0xD3C8L,65527UL},{65527UL,0xD3C8L,0xD3C8L,65527UL}};
                    int64_t l_843 = 0L;
                    int i, j;
                    l_840[4][0]--;
                    l_843 = 2L;
                }
            }
            unsigned int result = 0;
            result += l_809;
            atomic_add(&p_1408->l_special_values[3], result);
        }
        else
        { /* block id: 399 */
            (1 + 1);
        }
        return &p_1408->g_5;
    }
    else
    { /* block id: 403 */
        struct S0 * volatile *l_857 = &l_581;
        for (p_1408->g_168.f3 = 5; (p_1408->g_168.f3 != 49); p_1408->g_168.f3 = safe_add_func_uint32_t_u_u(p_1408->g_168.f3, 7))
        { /* block id: 406 */
            uint64_t l_854[4] = {0x5FA0EBC6D0C20852L,0x5FA0EBC6D0C20852L,0x5FA0EBC6D0C20852L,0x5FA0EBC6D0C20852L};
            int i;
            (*p_77) = (*p_1408->g_68);
            for (p_1408->g_168.f5 = (-25); (p_1408->g_168.f5 != 4); p_1408->g_168.f5 = safe_add_func_uint64_t_u_u(p_1408->g_168.f5, 4))
            { /* block id: 410 */
                (*p_1408->g_68) = ((*p_77) = (*p_1408->g_68));
                return &p_1408->g_5;
            }
            for (p_1408->g_168.f1 = 0; (p_1408->g_168.f1 <= (-30)); p_1408->g_168.f1--)
            { /* block id: 417 */
                uint16_t l_851 = 0x062AL;
                l_851++;
                l_854[1]--;
            }
        }
        (*l_857) = l_563;
        l_611 = ((p_1408->g_621.f2 , l_858) == l_858);
    }
    (*p_1408->g_68) = (*p_1408->g_68);
    return &p_1408->g_5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1408->g_543 p_1408->g_550 p_1408->g_553 p_1408->g_556 p_1408->g_525 p_1408->g_137.f8 p_1408->g_68 p_1408->g_69
 * writes: p_1408->l_comm_values p_1408->g_6.f8
 */
uint8_t  func_81(int32_t  p_82, int32_t  p_83, struct S3 * p_1408)
{ /* block id: 223 */
    VECTOR(int16_t, 8) l_548 = (VECTOR(int16_t, 8))(0x383BL, (VECTOR(int16_t, 4))(0x383BL, (VECTOR(int16_t, 2))(0x383BL, (-5L)), (-5L)), (-5L), 0x383BL, (-5L));
    VECTOR(int16_t, 2) l_549 = (VECTOR(int16_t, 2))(0L, 0x4DB5L);
    VECTOR(uint64_t, 4) l_551 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x0526DCEA7BEF41B4L), 0x0526DCEA7BEF41B4L);
    VECTOR(uint64_t, 2) l_552 = (VECTOR(uint64_t, 2))(0x0EBE5B65932F7B62L, 1UL);
    int16_t **l_557 = &p_1408->g_134;
    int i;
    atomic_max(&p_1408->g_atomic_reduction[get_linear_group_id()], (p_83 , ((**p_1408->g_68) = (((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 2))((-1L), (-9L))).yyyx, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 8))(p_1408->g_543.yyzzzyzz)).s3460310632146151, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(3L, (((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(1UL, 1UL)).xxyyyxyxyyxxxxyx)).s8 & (safe_rshift_func_uint16_t_u_u(p_83, (~(safe_div_func_int16_t_s_s((+0x4633L), 1L)))))), ((VECTOR(int16_t, 8))(l_548.s70337575)).s1, ((VECTOR(int16_t, 2))(l_549.yx)), ((VECTOR(int16_t, 2))(p_1408->g_550.s56)), (-10L))).lo)).odd, ((VECTOR(int16_t, 2))((-9L), (-7L)))))), (((VECTOR(uint64_t, 16))(3UL, 2UL, ((VECTOR(uint64_t, 2))(l_551.yx)).odd, ((VECTOR(uint64_t, 2))(0x6988C268733D9B30L, 0xAF7846C01AF8D241L)), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(1UL, 1UL)), 5UL, 0UL)), 18446744073709551614UL, ((VECTOR(uint64_t, 2))(l_552.xy)), ((VECTOR(uint64_t, 2))(abs(((VECTOR(int64_t, 16))(p_1408->g_553.s471dfb285c861f46)).s5b))), 0x653D47435FDFD35BL, 0x9F370337A3595B05L)).sb == ((safe_div_func_int64_t_s_s(((p_1408->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1408->tid, 30))] = (3L != (((VECTOR(int8_t, 8))((-1L), (((VECTOR(int16_t, 4))(p_1408->g_556.xxwx)).z || (((-4L) != (p_1408->g_525.y && ((l_557 != &p_1408->g_134) & p_82))) == p_83)), 0x0EL, 0x54L, ((VECTOR(int8_t, 2))(1L)), (-1L), 0x44L)).s6 <= p_82))) <= 0x0ECF29B50C7779CDL), p_1408->g_137.f8)) == 4294967290UL)), 0x30CDL, l_549.y, ((VECTOR(int16_t, 2))(1L)), (-8L))).s1266175315407770))))).sc379))), ((VECTOR(int16_t, 4))(0x2DD2L)), ((VECTOR(int16_t, 4))(9L))))).z != (-1L)))));
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_1408->v_collective += p_1408->g_atomic_reduction[get_linear_group_id()];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    return l_549.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_1408->g_68 p_1408->g_69 p_1408->g_97 p_1408->g_6.f8 p_1408->g_106 p_1408->g_6.f0 p_1408->g_6.f7 p_1408->g_16 p_1408->g_6.f4 p_1408->g_6.f9.f1 p_1408->g_132 p_1408->g_5 p_1408->g_6 p_1408->g_137.f1 p_1408->g_141 p_1408->g_152 p_1408->g_137.f9.f0 p_1408->g_137.f5 p_1408->g_137.f0 p_1408->g_166 p_1408->g_187 p_1408->g_168.f3 p_1408->g_206 p_1408->g_137.f3 p_1408->g_133 p_1408->g_211 p_1408->g_207 p_1408->g_237 p_1408->g_250 p_1408->g_58 p_1408->g_258 p_1408->g_260 p_1408->g_261 p_1408->g_137.f8 p_1408->g_168.f5 p_1408->g_137.f7 p_1408->g_168.f4 p_1408->g_295 p_1408->g_137.f9 p_1408->g_24 p_1408->g_48 p_1408->g_347 p_1408->g_349 p_1408->g_352 p_1408->g_168.f9.f0 p_1408->g_366 p_1408->g_396 p_1408->g_398 p_1408->g_406 p_1408->g_412 p_1408->g_414 p_1408->g_168.f2 p_1408->g_525 p_1408->g_534
 * writes: p_1408->g_97 p_1408->g_24 p_1408->g_16 p_1408->g_6.f9.f1 p_1408->g_133 p_1408->g_137 p_1408->g_58 p_1408->g_168 p_1408->g_6.f3 p_1408->g_212 p_1408->g_234 p_1408->g_166.f8 p_1408->g_263 p_1408->g_295 p_1408->g_406 p_1408->g_398 p_1408->g_166.f9.f1 p_1408->g_166.f4 p_1408->g_166.f3 p_1408->g_5 p_1408->g_166.f9 p_1408->g_405 p_1408->g_126
 */
int64_t  func_89(int8_t  p_90, int32_t * p_91, struct S3 * p_1408)
{ /* block id: 35 */
    struct S0 *l_541 = &p_1408->g_137.f9;
    int32_t *l_542 = (void*)0;
    (*l_541) = func_92(&p_1408->g_69, p_1408);
    p_1408->g_126[5][0] = l_542;
    return (*p_1408->g_206);
}


/* ------------------------------------------ */
/* 
 * reads : p_1408->g_68 p_1408->g_69 p_1408->g_97 p_1408->g_6.f8 p_1408->g_106 p_1408->g_6.f0 p_1408->g_6.f7 p_1408->g_16 p_1408->g_6.f4 p_1408->g_6.f9.f1 p_1408->g_132 p_1408->g_5 p_1408->g_6 p_1408->g_137.f1 p_1408->g_141 p_1408->g_152 p_1408->g_137.f9.f0 p_1408->g_137.f5 p_1408->g_137.f0 p_1408->g_133 p_1408->g_166 p_1408->g_187 p_1408->g_168.f3 p_1408->g_206 p_1408->g_137.f3 p_1408->g_211 p_1408->g_207 p_1408->g_237 p_1408->g_250 p_1408->g_58 p_1408->g_258 p_1408->g_260 p_1408->g_261 p_1408->g_137.f8 p_1408->g_168.f5 p_1408->g_137.f7 p_1408->g_168.f4 p_1408->g_295 p_1408->g_137.f9 p_1408->g_24 p_1408->g_48 p_1408->g_347 p_1408->g_349 p_1408->g_352 p_1408->g_168.f9.f0 p_1408->g_366 p_1408->g_396 p_1408->g_398 p_1408->g_406 p_1408->g_412 p_1408->g_414 p_1408->g_168.f2 p_1408->g_525 p_1408->g_534
 * writes: p_1408->g_97 p_1408->g_24 p_1408->g_16 p_1408->g_6.f9.f1 p_1408->g_133 p_1408->g_137 p_1408->g_6.f3 p_1408->g_58 p_1408->g_168 p_1408->g_212 p_1408->g_234 p_1408->g_166.f8 p_1408->g_263 p_1408->g_295 p_1408->g_406 p_1408->g_398 p_1408->g_166.f9.f1 p_1408->g_166.f4 p_1408->g_166.f3 p_1408->g_5 p_1408->g_166.f9 p_1408->g_405
 */
struct S0  func_92(int32_t ** p_93, struct S3 * p_1408)
{ /* block id: 36 */
    int32_t *l_95 = (void*)0;
    int32_t **l_94 = &l_95;
    uint64_t *l_96 = (void*)0;
    uint64_t *l_98 = (void*)0;
    uint64_t *l_99[9][9][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    uint16_t *l_109 = (void*)0;
    uint16_t *l_110 = &p_1408->g_24;
    int32_t l_170 = 0x64D99E5CL;
    struct S1 **l_223 = &p_1408->g_5;
    struct S0 l_229[10] = {{0x17C6CCAD6F9B7640L,0x14B7FE14L},{0x17C6CCAD6F9B7640L,0x14B7FE14L},{0x17C6CCAD6F9B7640L,0x14B7FE14L},{0x17C6CCAD6F9B7640L,0x14B7FE14L},{0x17C6CCAD6F9B7640L,0x14B7FE14L},{0x17C6CCAD6F9B7640L,0x14B7FE14L},{0x17C6CCAD6F9B7640L,0x14B7FE14L},{0x17C6CCAD6F9B7640L,0x14B7FE14L},{0x17C6CCAD6F9B7640L,0x14B7FE14L},{0x17C6CCAD6F9B7640L,0x14B7FE14L}};
    uint64_t l_231 = 0x84C50C4B61ED80AEL;
    int64_t l_243 = 0x580E91001C77E65CL;
    uint8_t l_257 = 255UL;
    int16_t ***l_262 = &p_1408->g_133;
    int32_t l_328[6];
    int32_t l_331 = 0x31D8BF52L;
    uint32_t l_385 = 0UL;
    VECTOR(uint32_t, 8) l_399 = (VECTOR(uint32_t, 8))(7UL, (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 0UL), 0UL), 0UL, 7UL, 0UL);
    int8_t l_423 = (-8L);
    uint8_t l_424 = 0UL;
    uint32_t l_492 = 8UL;
    uint16_t ***l_498 = &p_1408->g_234[0];
    VECTOR(int16_t, 8) l_526 = (VECTOR(int16_t, 8))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 1L), 1L), 1L, (-5L), 1L);
    int32_t *l_529 = &p_1408->g_137.f9.f1;
    struct S0 *l_536 = (void*)0;
    struct S0 **l_535 = &l_536;
    int16_t *l_537[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    uint32_t l_538 = 2UL;
    int32_t *l_539 = (void*)0;
    int32_t *l_540 = &l_170;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_328[i] = 0L;
    (*l_94) = (*p_1408->g_68);
    if ((((*l_110) = (((((p_1408->g_97.z++) ^ (safe_mul_func_uint16_t_u_u(0xFAA0L, (safe_rshift_func_uint16_t_u_u(65533UL, (*l_95)))))) == ((VECTOR(int8_t, 8))(0x67L, (-10L), ((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),int8_t,((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((-4L), 0x7AL)), 0x7FL, 8L)).xxxyxwwxwwzwxxwy, (int8_t)((0x7FL >= ((VECTOR(uint8_t, 8))(p_1408->g_106.yxyyxxyy)).s3) || (p_1408->g_6[0][1].f0 && (safe_sub_func_int32_t_s_s(((**l_94) | ((VECTOR(int32_t, 2))((-1L), 0x4A764965L)).odd), ((*p_1408->g_68) == (void*)0))))), (int8_t)(-1L)))).s8cc1)), ((VECTOR(int8_t, 4))(0x62L)), ((VECTOR(int8_t, 4))(2L))))).yxwyzxyzwwxzyxxz)).sbf, ((VECTOR(int8_t, 2))(0L))))), 0x30L, p_1408->g_6[0][1].f7, 0x48L, 0x0EL)).s3) , (-8L)) || FAKE_DIVERGE(p_1408->group_2_offset, get_group_id(2), 10))) | (**l_94)))
    { /* block id: 40 */
        uint32_t l_121 = 0x72FAC39FL;
        int16_t *l_131 = &p_1408->g_48;
        int16_t **l_130 = &l_131;
        VECTOR(uint16_t, 8) l_144 = (VECTOR(uint16_t, 8))(0x0AEFL, (VECTOR(uint16_t, 4))(0x0AEFL, (VECTOR(uint16_t, 2))(0x0AEFL, 65527UL), 65527UL), 65527UL, 0x0AEFL, 65527UL);
        int32_t l_158 = 0x2DCBA3D8L;
        int32_t l_159 = 0x43430D16L;
        uint8_t l_172 = 0x7AL;
        int32_t *l_208 = &p_1408->g_137.f8;
        uint32_t l_215[2];
        int i;
        for (i = 0; i < 2; i++)
            l_215[i] = 0x93898DC6L;
        for (p_1408->g_16 = (-11); (p_1408->g_16 >= 14); p_1408->g_16++)
        { /* block id: 43 */
            uint64_t l_113 = 1UL;
            int32_t l_116[2][5] = {{1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L}};
            uint16_t *l_122 = (void*)0;
            uint16_t **l_123 = &l_110;
            int32_t *l_127 = &p_1408->g_6[0][1].f9.f1;
            int i, j;
            (*l_127) |= ((((p_1408->g_97.y = (p_1408->g_6[0][1].f4 , (l_116[1][0] ^= (l_113--)))) <= 7L) == (safe_lshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s(l_121, (l_122 != ((*l_123) = &p_1408->g_24)))), (safe_rshift_func_int16_t_s_u(l_121, 5))))) ^ 0L);
        }
        for (l_121 = 0; (l_121 <= 29); l_121 = safe_add_func_uint8_t_u_u(l_121, 6))
        { /* block id: 52 */
            struct S0 l_140 = {1L,-1L};
            int32_t *l_160[8] = {&p_1408->g_137.f8,&p_1408->g_137.f8,&p_1408->g_137.f8,&p_1408->g_137.f8,&p_1408->g_137.f8,&p_1408->g_137.f8,&p_1408->g_137.f8,&p_1408->g_137.f8};
            int i;
            (*p_1408->g_132) = l_130;
            for (p_1408->g_16 = (-3); (p_1408->g_16 <= 4); p_1408->g_16 = safe_add_func_int8_t_s_s(p_1408->g_16, 8))
            { /* block id: 56 */
                p_1408->g_137 = (*p_1408->g_5);
                for (p_1408->g_137.f1 = 0; (p_1408->g_137.f1 == 18); p_1408->g_137.f1 = safe_add_func_uint32_t_u_u(p_1408->g_137.f1, 6))
                { /* block id: 60 */
                    int32_t l_149 = 0x6D249FA4L;
                    VECTOR(int16_t, 8) l_157 = (VECTOR(int16_t, 8))((-6L), (VECTOR(int16_t, 4))((-6L), (VECTOR(int16_t, 2))((-6L), 0x62B0L), 0x62B0L), 0x62B0L, (-6L), 0x62B0L);
                    int i;
                    (*p_1408->g_141) = l_140;
                    l_159 ^= (safe_rshift_func_uint16_t_u_s((((VECTOR(uint16_t, 16))(l_144.s0421500036355462)).s0 <= (((((FAKE_DIVERGE(p_1408->local_1_offset, get_local_id(1), 10) || ((safe_add_func_int32_t_s_s(((((p_1408->g_97.x = ((p_1408->g_6[0][1].f3 < 0xD58FL) & 0L)) , (safe_rshift_func_uint8_t_u_s(l_149, (safe_add_func_uint8_t_u_u((((VECTOR(int8_t, 2))(p_1408->g_152.yx)).lo && 0x1CL), (safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1408->global_1_offset, get_global_id(1), 10), (safe_div_func_uint32_t_u_u(l_140.f1, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_157.s30)))).xyyy, ((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),VECTOR(uint16_t, 2),((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 2))(0xD0E6L, 65527UL)).xxxx, ((VECTOR(uint16_t, 16))(0UL, p_1408->g_137.f9.f0, 0UL, (FAKE_DIVERGE(p_1408->local_1_offset, get_local_id(1), 10) == ((l_158 = (**l_94)) && (p_1408->g_137.f5 , l_157.s6))), 0x5038L, l_158, l_149, 1UL, ((VECTOR(uint16_t, 4))(0xCEF9L)), l_157.s5, 0x7D2DL, 0x8F50L, 0xB201L)).s384c, ((VECTOR(uint16_t, 4))(65535UL))))).lo, ((VECTOR(uint16_t, 2))(0x96FAL)), ((VECTOR(uint16_t, 2))(0x9A2AL))))).xxyy))))), ((VECTOR(int32_t, 4))(0x4A4212A5L)), ((VECTOR(int32_t, 4))(0x2129FB94L))))).wyzxxzxyxxzxwxwz)).sf))))))))) && l_140.f0) || p_1408->g_97.w), 0xF17F3DB0L)) || p_1408->g_137.f0)) >= p_1408->g_6[0][1].f3) || 0x573CB27EL) > l_157.s2) >= l_140.f0)), 12));
                }
            }
            l_158 ^= (*l_95);
        }
        for (p_1408->g_137.f5 = (-26); (p_1408->g_137.f5 != 52); ++p_1408->g_137.f5)
        { /* block id: 71 */
            int32_t l_163 = 0x6D3C6D8BL;
            int32_t l_171[7][10] = {{0x7D9BFF02L,0x157A6225L,0x224BADE5L,(-1L),5L,(-1L),0x224BADE5L,0x157A6225L,0x7D9BFF02L,0x224BADE5L},{0x7D9BFF02L,0x157A6225L,0x224BADE5L,(-1L),5L,(-1L),0x224BADE5L,0x157A6225L,0x7D9BFF02L,0x224BADE5L},{0x7D9BFF02L,0x157A6225L,0x224BADE5L,(-1L),5L,(-1L),0x224BADE5L,0x157A6225L,0x7D9BFF02L,0x224BADE5L},{0x7D9BFF02L,0x157A6225L,0x224BADE5L,(-1L),5L,(-1L),0x224BADE5L,0x157A6225L,0x7D9BFF02L,0x224BADE5L},{0x7D9BFF02L,0x157A6225L,0x224BADE5L,(-1L),5L,(-1L),0x224BADE5L,0x157A6225L,0x7D9BFF02L,0x224BADE5L},{0x7D9BFF02L,0x157A6225L,0x224BADE5L,(-1L),5L,(-1L),0x224BADE5L,0x157A6225L,0x7D9BFF02L,0x224BADE5L},{0x7D9BFF02L,0x157A6225L,0x224BADE5L,(-1L),5L,(-1L),0x224BADE5L,0x157A6225L,0x7D9BFF02L,0x224BADE5L}};
            int32_t *l_213 = &p_1408->g_137.f8;
            int32_t *l_214[1];
            int i, j;
            for (i = 0; i < 1; i++)
                l_214[i] = (void*)0;
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_1408->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 30)), permutations[(safe_mod_func_uint32_t_u_u((p_1408->g_6[0][1].f3 = ((l_163 , (*p_1408->g_132)) != &p_1408->g_134)), 10))][(safe_mod_func_uint32_t_u_u(p_1408->tid, 30))]));
            for (p_1408->g_58 = (-30); (p_1408->g_58 > 26); ++p_1408->g_58)
            { /* block id: 78 */
                struct S1 *l_167 = (void*)0;
                int32_t *l_169[10][4] = {{&p_1408->g_166.f9.f1,&l_159,&p_1408->g_6[0][1].f8,&p_1408->g_137.f8},{&p_1408->g_166.f9.f1,&l_159,&p_1408->g_6[0][1].f8,&p_1408->g_137.f8},{&p_1408->g_166.f9.f1,&l_159,&p_1408->g_6[0][1].f8,&p_1408->g_137.f8},{&p_1408->g_166.f9.f1,&l_159,&p_1408->g_6[0][1].f8,&p_1408->g_137.f8},{&p_1408->g_166.f9.f1,&l_159,&p_1408->g_6[0][1].f8,&p_1408->g_137.f8},{&p_1408->g_166.f9.f1,&l_159,&p_1408->g_6[0][1].f8,&p_1408->g_137.f8},{&p_1408->g_166.f9.f1,&l_159,&p_1408->g_6[0][1].f8,&p_1408->g_137.f8},{&p_1408->g_166.f9.f1,&l_159,&p_1408->g_6[0][1].f8,&p_1408->g_137.f8},{&p_1408->g_166.f9.f1,&l_159,&p_1408->g_6[0][1].f8,&p_1408->g_137.f8},{&p_1408->g_166.f9.f1,&l_159,&p_1408->g_6[0][1].f8,&p_1408->g_137.f8}};
                VECTOR(int16_t, 2) l_177 = (VECTOR(int16_t, 2))(1L, 0x19AFL);
                VECTOR(uint32_t, 16) l_178 = (VECTOR(uint32_t, 16))(0x28FF0468L, (VECTOR(uint32_t, 4))(0x28FF0468L, (VECTOR(uint32_t, 2))(0x28FF0468L, 1UL), 1UL), 1UL, 0x28FF0468L, 1UL, (VECTOR(uint32_t, 2))(0x28FF0468L, 1UL), (VECTOR(uint32_t, 2))(0x28FF0468L, 1UL), 0x28FF0468L, 1UL, 0x28FF0468L, 1UL);
                uint16_t l_202 = 65530UL;
                int i, j;
                p_1408->g_168 = p_1408->g_166;
                l_172--;
                for (p_1408->g_137.f4 = 27; (p_1408->g_137.f4 > 51); p_1408->g_137.f4 = safe_add_func_int32_t_s_s(p_1408->g_137.f4, 7))
                { /* block id: 83 */
                    VECTOR(int8_t, 16) l_195 = (VECTOR(int8_t, 16))(0x38L, (VECTOR(int8_t, 4))(0x38L, (VECTOR(int8_t, 2))(0x38L, 0x68L), 0x68L), 0x68L, 0x38L, 0x68L, (VECTOR(int8_t, 2))(0x38L, 0x68L), (VECTOR(int8_t, 2))(0x38L, 0x68L), 0x38L, 0x68L, 0x38L, 0x68L);
                    int i;
                    l_178.sa &= ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 2))(l_177.xx)), ((VECTOR(uint16_t, 2))(0x7473L, 1UL))))).hi;
                    l_208 = (p_1408->g_166.f9.f1 , ((safe_mul_func_int16_t_s_s((+(safe_add_func_uint32_t_u_u((safe_sub_func_int32_t_s_s(((safe_add_func_int8_t_s_s((p_1408->g_187 == ((((safe_rshift_func_uint8_t_u_u((l_172 ^ ((+(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(248UL, ((safe_unary_minus_func_uint32_t_u(l_158)) != (((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(0x6AL, 0x01L)))).lo , ((safe_div_func_uint16_t_u_u(((safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(l_195.sc, (safe_sub_func_int64_t_s_s(((safe_mod_func_int64_t_s_s((safe_mul_func_int8_t_s_s((l_202 ^ ((((safe_mod_func_int16_t_s_s(1L, (**l_94))) && ((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 16))(p_1408->g_205.s6347407100440150)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(abs_diff(((VECTOR(uint16_t, 16))(l_171[6][5], ((VECTOR(uint16_t, 4))(4UL)), 0xF2F2L, ((VECTOR(uint16_t, 8))(65532UL)), 65535UL, 0x6226L)), ((VECTOR(uint16_t, 16))(65526UL))))).s5e)).xyyxxxxxyyyxxxxy, ((VECTOR(uint16_t, 16))(0xE562L))))).s1) != (*l_95)) ^ (**l_94))), (-3L))), l_144.s0)) <= p_1408->g_168.f3), 0xF33F7037FAAF371FL)), l_195.sf, p_1408->g_168.f3, GROUP_DIVERGE(1, 1), ((VECTOR(uint32_t, 2))(4294967291UL)), 0xB98514CCL)).s6, l_171[5][8])) , l_195.s7), l_195.sf)) , 0x23B0L))), 0x7DL, 0UL)).ywxzwwxx)).s2 >= p_1408->g_168.f3)) | l_171[6][5])), (*l_95))) <= 0x7CL) && p_1408->g_6[0][1].f9.f1) , p_1408->g_206)), l_172)) & 1UL), (**p_1408->g_68))), (*l_95)))), p_1408->g_137.f3)) , (void*)0));
                    if (l_195.s8)
                        break;
                    l_163 = ((safe_rshift_func_int8_t_s_u(6L, 2)) || l_171[6][5]);
                }
                p_1408->g_212[4] = p_1408->g_211;
            }
            l_215[1]++;
        }
    }
    else
    { /* block id: 93 */
        uint8_t l_218 = 248UL;
        struct S1 *l_224[5];
        int32_t l_230 = 0L;
        uint16_t ***l_236 = &p_1408->g_234[3];
        int16_t *l_240[8] = {&p_1408->g_48,&p_1408->g_48,&p_1408->g_48,&p_1408->g_48,&p_1408->g_48,&p_1408->g_48,&p_1408->g_48,&p_1408->g_48};
        struct S0 *l_245 = &p_1408->g_137.f9;
        struct S0 **l_244 = &l_245;
        int32_t l_255[5][1][8] = {{{0x7D02AF47L,0L,0L,0x7D02AF47L,0x3525AA44L,0x69E664B7L,0x69E664B7L,0x3525AA44L}},{{0x7D02AF47L,0L,0L,0x7D02AF47L,0x3525AA44L,0x69E664B7L,0x69E664B7L,0x3525AA44L}},{{0x7D02AF47L,0L,0L,0x7D02AF47L,0x3525AA44L,0x69E664B7L,0x69E664B7L,0x3525AA44L}},{{0x7D02AF47L,0L,0L,0x7D02AF47L,0x3525AA44L,0x69E664B7L,0x69E664B7L,0x3525AA44L}},{{0x7D02AF47L,0L,0L,0x7D02AF47L,0x3525AA44L,0x69E664B7L,0x69E664B7L,0x3525AA44L}}};
        int32_t l_256 = 0x1800B016L;
        VECTOR(uint16_t, 2) l_259 = (VECTOR(uint16_t, 2))(3UL, 1UL);
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_224[i] = (void*)0;
        l_231 &= (l_218 , (safe_mul_func_int8_t_s_s((((safe_lshift_func_int16_t_s_u(0x5929L, ((void*)0 == l_223))) >= l_218) <= (&p_1408->g_137 == l_224[0])), (p_1408->g_58 = ((safe_add_func_int32_t_s_s(((safe_add_func_int32_t_s_s((l_230 = (((l_229[2] , (l_218 || (*p_1408->g_206))) < l_218) < l_218)), p_1408->g_16)) & l_218), 9L)) < l_218)))));
        (*l_236) = &l_109;
        (*p_1408->g_258) = ((((VECTOR(int32_t, 16))(p_1408->g_237.s6ae76be3bd6451cc)).s2 != (((safe_mod_func_int16_t_s_s((l_230 ^= (**l_94)), ((((safe_add_func_uint64_t_u_u(l_243, ((l_256 = (((((*l_244) = (void*)0) != &l_229[2]) == (*l_95)) , (((safe_mod_func_uint64_t_u_u((((**l_94) > ((safe_add_func_int64_t_s_s((((((l_218 ^ ((VECTOR(uint8_t, 8))(p_1408->g_250.xxxxxyxy)).s2) <= (l_255[0][0][6] = ((safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(0xE31CL, 0x9BD0L)).even, (&l_109 != &l_109))), FAKE_DIVERGE(p_1408->local_2_offset, get_local_id(2), 10))) || (**l_94)))) ^ 0x2A0234A3B4D32A01L) , &l_240[7]) == &p_1408->g_134), (-8L))) , 1L)) < l_218), 5UL)) | l_218) & p_1408->g_58))) > l_257))) || 0UL) , FAKE_DIVERGE(p_1408->global_0_offset, get_global_id(0), 10)) , (**l_94)))) || p_1408->g_166.f8) > 0xC66EDA78L)) != 1UL);
        (*p_1408->g_261) = (p_1408->g_207 & (((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 2))(l_259.yy)).xxyxyxxxyyyyxxxy, ((VECTOR(uint16_t, 4))(p_1408->g_260.yxyy)).ywwzywyxzzywzxyy))).s1 != GROUP_DIVERGE(0, 1)));
    }
    if ((l_262 == (p_1408->g_263 = l_262)))
    { /* block id: 106 */
        VECTOR(int16_t, 2) l_283 = (VECTOR(int16_t, 2))(1L, 0x3837L);
        int32_t l_284 = 0x0EE5D6FAL;
        int32_t l_327 = 0x3B6E0478L;
        int32_t l_329 = 0x22A8774DL;
        int32_t l_334 = (-10L);
        int32_t l_335 = 0x39A6DD8DL;
        int32_t l_338 = (-1L);
        int32_t l_339 = (-1L);
        int32_t l_382 = 1L;
        int32_t l_383[5] = {0x45C7B759L,0x45C7B759L,0x45C7B759L,0x45C7B759L,0x45C7B759L};
        int16_t **l_392 = &p_1408->g_134;
        VECTOR(uint64_t, 4) l_395 = (VECTOR(uint64_t, 4))(0xB1039C0E08F3CAAFL, (VECTOR(uint64_t, 2))(0xB1039C0E08F3CAAFL, 0UL), 0UL);
        VECTOR(uint32_t, 2) l_397 = (VECTOR(uint32_t, 2))(0x0BCE2E60L, 0xC40B52E1L);
        VECTOR(uint32_t, 8) l_400 = (VECTOR(uint32_t, 8))(0x99D77180L, (VECTOR(uint32_t, 4))(0x99D77180L, (VECTOR(uint32_t, 2))(0x99D77180L, 0x44A54088L), 0x44A54088L), 0x44A54088L, 0x99D77180L, 0x44A54088L);
        uint32_t *l_401 = (void*)0;
        uint32_t *l_402 = (void*)0;
        uint32_t *l_403 = (void*)0;
        uint32_t *l_404[9][3][9] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int16_t l_409 = 0x362FL;
        uint8_t *l_413 = (void*)0;
        VECTOR(int16_t, 16) l_415 = (VECTOR(int16_t, 16))(0x48BAL, (VECTOR(int16_t, 4))(0x48BAL, (VECTOR(int16_t, 2))(0x48BAL, 0x1D65L), 0x1D65L), 0x1D65L, 0x48BAL, 0x1D65L, (VECTOR(int16_t, 2))(0x48BAL, 0x1D65L), (VECTOR(int16_t, 2))(0x48BAL, 0x1D65L), 0x48BAL, 0x1D65L, 0x48BAL, 0x1D65L);
        uint16_t ***l_418 = &p_1408->g_234[0];
        int16_t *l_419 = &l_409;
        int32_t *l_420[5] = {&p_1408->g_166.f8,&p_1408->g_166.f8,&p_1408->g_166.f8,&p_1408->g_166.f8,&p_1408->g_166.f8};
        int64_t l_421 = 0x2B1A58A0DAAA67EFL;
        int64_t l_422 = (-1L);
        int i, j, k;
        for (p_1408->g_137.f8 = 0; (p_1408->g_137.f8 >= 29); ++p_1408->g_137.f8)
        { /* block id: 109 */
            uint32_t *l_266 = &p_1408->g_6[0][1].f3;
            int32_t l_285 = 0x523C2434L;
            int32_t l_287 = 0x54CEB2A3L;
            VECTOR(uint8_t, 8) l_309 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xA6L), 0xA6L), 0xA6L, 1UL, 0xA6L);
            VECTOR(int32_t, 2) l_333 = (VECTOR(int32_t, 2))((-1L), 0x5680E212L);
            VECTOR(uint8_t, 8) l_353 = (VECTOR(uint8_t, 8))(0x72L, (VECTOR(uint8_t, 4))(0x72L, (VECTOR(uint8_t, 2))(0x72L, 255UL), 255UL), 255UL, 0x72L, 255UL);
            int i, j;
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_1408->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 30)), permutations[(safe_mod_func_uint32_t_u_u(((*l_266) = (**l_94)), 10))][(safe_mod_func_uint32_t_u_u(p_1408->tid, 30))]));
            for (p_1408->g_168.f5 = 27; (p_1408->g_168.f5 > 11); --p_1408->g_168.f5)
            { /* block id: 116 */
                int32_t l_282 = 0x650A85A7L;
                int32_t l_286[5][1][3] = {{{0x5E48FC27L,(-7L),0x5E48FC27L}},{{0x5E48FC27L,(-7L),0x5E48FC27L}},{{0x5E48FC27L,(-7L),0x5E48FC27L}},{{0x5E48FC27L,(-7L),0x5E48FC27L}},{{0x5E48FC27L,(-7L),0x5E48FC27L}}};
                VECTOR(uint8_t, 8) l_308 = (VECTOR(uint8_t, 8))(0x8CL, (VECTOR(uint8_t, 4))(0x8CL, (VECTOR(uint8_t, 2))(0x8CL, 6UL), 6UL), 6UL, 0x8CL, 6UL);
                int32_t l_330 = 0x77AEBA9AL;
                VECTOR(uint8_t, 8) l_356 = (VECTOR(uint8_t, 8))(0x7AL, (VECTOR(uint8_t, 4))(0x7AL, (VECTOR(uint8_t, 2))(0x7AL, 0x9AL), 0x9AL), 0x9AL, 0x7AL, 0x9AL);
                int64_t l_359 = 1L;
                struct S1 **l_376 = &p_1408->g_5;
                int32_t l_381 = 0L;
                int i, j, k;
                for (p_1408->g_137.f7 = 0; (p_1408->g_137.f7 <= 38); ++p_1408->g_137.f7)
                { /* block id: 119 */
                    int8_t l_278 = 0L;
                    uint16_t l_281 = 0xFBB4L;
                    if (((((safe_div_func_uint8_t_u_u(0x71L, 0x26L)) , (p_1408->g_168.f4 >= (((*l_110) = (**l_94)) && (((((safe_unary_minus_func_int16_t_s((safe_mul_func_uint8_t_u_u(((*l_95) | 0L), ((safe_mul_func_uint16_t_u_u(l_278, (((--p_1408->g_168.f3) <= ((*l_266) |= l_278)) != (l_281 > 4294967289UL)))) ^ 0x2693D1BC77AE552DL))))) <= l_282) != p_1408->g_211.f3) >= l_283.x) , 65527UL)))) , l_278) >= l_282))
                    { /* block id: 123 */
                        int32_t *l_288 = &l_284;
                        int32_t *l_289 = &p_1408->g_166.f9.f1;
                        int32_t *l_290 = &p_1408->g_168.f9.f1;
                        int32_t *l_291 = &l_285;
                        int32_t *l_292 = (void*)0;
                        int32_t *l_293 = (void*)0;
                        int32_t *l_294 = &l_287;
                        p_1408->g_295--;
                    }
                    else
                    { /* block id: 125 */
                        (*l_94) = (*p_1408->g_68);
                        return (*p_1408->g_141);
                    }
                    if ((**p_93))
                        break;
                    if ((atomic_inc(&p_1408->l_atomic_input[29]) == 6))
                    { /* block id: 131 */
                        uint16_t l_298 = 5UL;
                        int32_t l_299 = 0L;
                        uint32_t l_300 = 4294967292UL;
                        int32_t *l_303 = &l_299;
                        int32_t *l_304 = (void*)0;
                        int32_t *l_305 = &l_299;
                        l_299 ^= l_298;
                        --l_300;
                        l_304 = l_303;
                        l_305 = (void*)0;
                        unsigned int result = 0;
                        result += l_298;
                        result += l_299;
                        result += l_300;
                        atomic_add(&p_1408->l_special_values[29], result);
                    }
                    else
                    { /* block id: 136 */
                        (1 + 1);
                    }
                }
                for (p_1408->g_24 = (-24); (p_1408->g_24 == 42); p_1408->g_24 = safe_add_func_int32_t_s_s(p_1408->g_24, 8))
                { /* block id: 142 */
                    VECTOR(int64_t, 4) l_313 = (VECTOR(int64_t, 4))(0x33517161496DCF6CL, (VECTOR(int64_t, 2))(0x33517161496DCF6CL, 0x209F26B18DD72A36L), 0x209F26B18DD72A36L);
                    int32_t l_332 = (-4L);
                    int32_t l_336 = 3L;
                    int32_t l_337 = (-1L);
                    int32_t l_340 = (-1L);
                    int32_t l_341 = 1L;
                    uint32_t l_342 = 0xEE16E1ACL;
                    VECTOR(uint8_t, 4) l_354 = (VECTOR(uint8_t, 4))(0x40L, (VECTOR(uint8_t, 2))(0x40L, 0x03L), 0x03L);
                    VECTOR(uint8_t, 16) l_367 = (VECTOR(uint8_t, 16))(0x5AL, (VECTOR(uint8_t, 4))(0x5AL, (VECTOR(uint8_t, 2))(0x5AL, 251UL), 251UL), 251UL, 0x5AL, 251UL, (VECTOR(uint8_t, 2))(0x5AL, 251UL), (VECTOR(uint8_t, 2))(0x5AL, 251UL), 0x5AL, 251UL, 0x5AL, 251UL);
                    VECTOR(uint8_t, 16) l_368 = (VECTOR(uint8_t, 16))(251UL, (VECTOR(uint8_t, 4))(251UL, (VECTOR(uint8_t, 2))(251UL, 0x94L), 0x94L), 0x94L, 251UL, 0x94L, (VECTOR(uint8_t, 2))(251UL, 0x94L), (VECTOR(uint8_t, 2))(251UL, 0x94L), 251UL, 0x94L, 251UL, 0x94L);
                    int32_t *l_377 = (void*)0;
                    int32_t *l_378 = &l_328[0];
                    int32_t *l_379 = (void*)0;
                    int32_t *l_380[7];
                    int64_t l_384 = 0x36EBE300F2AA4A1FL;
                    int i;
                    for (i = 0; i < 7; i++)
                        l_380[i] = (void*)0;
                    if ((((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(uint8_t, 8))(GROUP_DIVERGE(1, 1), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 8))(l_308.s17412054))))).s13)).yxyy)), 0UL, 0UL, 0x7AL)), ((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 16))(l_309.s1653643555033777)).se684, (uint8_t)(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(int32_t, 16))(((*p_1408->g_258) = ((*p_1408->g_258) != (safe_add_func_uint64_t_u_u((l_284 ^ (safe_unary_minus_func_uint8_t_u((l_313.w , ((safe_unary_minus_func_int16_t_s(l_284)) > (safe_mul_func_int8_t_s_s(l_313.x, p_1408->g_168.f4))))))), 0x6C14887EBCF771EEL)))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))((-1L), (l_284 = (safe_rshift_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 2))(1L, (-5L))).odd, l_309.s5)), (safe_mul_func_uint16_t_u_u((safe_sub_func_int32_t_s_s((l_308.s3 | 0xF81BAC97L), 0x64395F24L)), l_283.x))))), 0x79C41B6CL, ((VECTOR(int32_t, 8))(0x4CB8D17BL)), 1L, 0x091ECEF2L, 0x054B6378L, 1L, (-3L))).s8bc2)).lo)), ((VECTOR(int32_t, 8))(0L)), 0x6176D4EBL, 0x78D0564FL, 0x6C56A0ECL, 1L, 7L)).s0afc, ((VECTOR(int32_t, 4))(1L))))).even)).xxyxyxxyyxxxyxyx)).s9 ^ (**p_93))))).wwzyxxxw))).s33)), ((VECTOR(uint8_t, 2))(0xD3L))))).odd ^ l_309.s0))
                    { /* block id: 145 */
                        int32_t *l_325 = &p_1408->g_168.f9.f1;
                        int32_t *l_326[5];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_326[i] = &l_170;
                        l_342--;
                    }
                    else
                    { /* block id: 147 */
                        VECTOR(uint8_t, 2) l_355 = (VECTOR(uint8_t, 2))(252UL, 255UL);
                        int64_t l_362 = 0x10803A24010F6D49L;
                        uint8_t *l_363 = (void*)0;
                        uint8_t *l_364 = (void*)0;
                        uint8_t *l_365[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        (*p_1408->g_347) = (safe_sub_func_uint8_t_u_u(p_1408->g_48, (*l_95)));
                        (*p_1408->g_349) = l_330;
                        (*l_94) = ((safe_sub_func_uint32_t_u_u((((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 8))(1UL, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0xA7L, 1UL)), ((VECTOR(uint8_t, 4))(0UL, 0x5CL, 0UL, 1UL)), 0x0EL, 252UL)).s6663675610207073, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0UL, 252UL)).yyxxyxxx)), ((VECTOR(uint8_t, 2))(p_1408->g_352.s03)).yyyyyyxx, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_353.s36)), 0xDFL, 0UL)).wyzwxwzw))), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 2))(l_354.zw)).xyxxyxyx, ((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_355.xyyxxxyxyxyxxxyy)).s49)), 0xAFL, 255UL)).hi, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(l_356.s5101)).wyzxyywzwxyxywwy)).scb, ((VECTOR(uint8_t, 8))(0x12L, 0x1AL, ((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 4))(l_339, l_308.s5, 0xAFL, 7UL)).even, (uint8_t)(GROUP_DIVERGE(2, 1) == ((safe_mul_func_int8_t_s_s((p_1408->g_6[0][1].f0 , l_335), p_1408->g_168.f9.f0)) >= l_359)), (uint8_t)(l_329 = (safe_sub_func_int32_t_s_s(l_362, l_287)))))), 0x83L, 255UL, 0UL, 0xCEL)).s23))).xyxyxyyy))).s35)), ((VECTOR(uint8_t, 4))(p_1408->g_366.s3241)), 1UL, 249UL)), ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(l_367.s70cf7d08b4d52171))))))).sa5f1, ((VECTOR(uint8_t, 8))(0xA2L, ((VECTOR(uint8_t, 2))(246UL, 0xF2L)), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_368.s6f9e5e86a3bef1c3)).s1e)), 0xE7L, 0UL, 8UL)).even))), (((safe_unary_minus_func_int8_t_s((safe_mul_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_u((safe_div_func_uint32_t_u_u((((VECTOR(uint64_t, 4))(((((void*)0 != l_376) <= 0L) , l_329), 0x4B189373DFA65281L, 1UL, 0UL)).x == l_359), l_309.s7)), l_362)) < (*l_95)), l_355.x)))) | 0x478A6357C4981903L) >= l_355.y), 7UL, 0x38L, 0UL)))).lo, ((VECTOR(uint8_t, 4))(0xF3L))))).zzzwywwy, ((VECTOR(uint8_t, 8))(0UL))))))).s64)), p_1408->g_6[0][1].f9.f0, 248UL, (*l_95), 1UL, 0xF9L)).even, ((VECTOR(uint8_t, 4))(0x15L))))).x & 0x70L), 0x70E85511L)) , (*p_93));
                        if ((*p_1408->g_258))
                            break;
                    }
                    if ((**p_93))
                        break;
                    ++l_385;
                    l_287 = (**p_93);
                }
            }
        }
        p_1408->g_166.f9.f1 &= ((*l_95) < (safe_mul_func_int8_t_s_s((((void*)0 == &l_383[3]) > (safe_sub_func_int64_t_s_s((l_392 == (void*)0), (((*l_419) &= ((safe_rshift_func_int16_t_s_s(0x2411L, (((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_395.xwyxxyzz)), 18446744073709551615UL, 18446744073709551612UL, 1UL, 0xDD87A6FCF836E034L, ((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 16))(p_1408->g_396.se2163cdfedb5c036)).sf068, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(l_397.yxxyxxyy)))).hi))))))).even)).s37, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(p_1408->g_398.s154011a1)).lo)).lo, ((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 16))(l_399.s4545553454567217)), ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 2))(l_400.s12)).xxyyxyxy, ((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),uint32_t,((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 4))(0UL, (p_1408->g_406--), 1UL, 4294967295UL))))).ywzyyxzz, (uint32_t)((p_1408->g_398.sc++) || ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(p_1408->g_412.xx)).yxxyxyxxxxxyyyxy)).s1), (uint32_t)(((((void*)0 == l_413) < ((VECTOR(uint8_t, 16))(p_1408->g_414.s6531374455051122)).sd) > ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(0x51C0L, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 4))(l_415.s7ad4)).wzxxzwyw, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(0L, 0x3543L)), (safe_div_func_int16_t_s_s(((((void*)0 == l_418) && 2UL) > 255UL), (**l_94))), ((VECTOR(int16_t, 8))(0L)), ((VECTOR(int16_t, 4))(0L)), 1L)).s45)).yxxyyxxx))).s4652132074335270))).s1bb4)).even)), ((VECTOR(int16_t, 2))(0x7E68L)), ((VECTOR(int16_t, 2))(0x6A30L)), 0L)).s7515676465141163)).s1) & 1UL))))))).s3365164322570771))))).s38))).hi <= 0x1B1A1DE38B374B2AL))) , 1L)) && 1L)))), (-1L))));
        (*p_1408->g_141) = (*p_1408->g_141);
        l_424--;
    }
    else
    { /* block id: 166 */
        int32_t *l_427 = &p_1408->g_166.f9.f1;
        int32_t l_478 = 3L;
        uint16_t *l_480 = (void*)0;
        int32_t l_490 = 0x6B0C67EDL;
        (*l_94) = l_427;
        for (l_423 = 0; (l_423 == 21); l_423 = safe_add_func_int32_t_s_s(l_423, 6))
        { /* block id: 170 */
            int32_t *l_449 = &l_328[3];
            struct S0 *l_468 = &p_1408->g_166.f9;
            uint32_t l_476 = 0x4F4C3294L;
            uint16_t *l_481[5][5][5] = {{{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0}},{{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0}},{{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0}},{{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0}},{{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0},{(void*)0,&p_1408->g_24,&p_1408->g_24,(void*)0,(void*)0}}};
            int32_t l_485 = 0x3244CA45L;
            uint16_t ***l_497 = (void*)0;
            uint64_t *l_520[5] = {&l_231,&l_231,&l_231,&l_231,&l_231};
            uint8_t l_522 = 255UL;
            int i, j, k;
            for (p_1408->g_16 = 0; (p_1408->g_16 <= 46); p_1408->g_16 = safe_add_func_int16_t_s_s(p_1408->g_16, 1))
            { /* block id: 173 */
                uint16_t l_446 = 0x0F34L;
                struct S0 l_471 = {0x223DADAB48CF3369L,-2L};
                int32_t **l_475 = (void*)0;
                int32_t l_491 = (-1L);
                for (p_1408->g_137.f3 = 0; (p_1408->g_137.f3 > 34); p_1408->g_137.f3++)
                { /* block id: 176 */
                    int8_t l_463 = 0x2CL;
                    uint16_t **l_482 = &l_110;
                    for (p_1408->g_166.f4 = 0; (p_1408->g_166.f4 > 23); p_1408->g_166.f4++)
                    { /* block id: 179 */
                        int32_t *l_436 = &l_328[3];
                        int32_t *l_437 = &p_1408->g_166.f8;
                        int32_t *l_438 = (void*)0;
                        int32_t *l_439 = &p_1408->g_166.f8;
                        int32_t *l_440 = &p_1408->g_168.f9.f1;
                        int32_t *l_441 = (void*)0;
                        int32_t *l_442 = (void*)0;
                        int32_t *l_443 = &p_1408->g_168.f9.f1;
                        int32_t *l_444 = &l_229[2].f1;
                        int32_t *l_445 = &l_229[2].f1;
                        ++l_446;
                    }
                    (*l_94) = l_449;
                    for (p_1408->g_137.f1 = (-12); (p_1408->g_137.f1 >= (-23)); p_1408->g_137.f1 = safe_sub_func_uint16_t_u_u(p_1408->g_137.f1, 1))
                    { /* block id: 185 */
                        int32_t ***l_460 = (void*)0;
                        int32_t ***l_461 = (void*)0;
                        int32_t **l_462 = &l_95;
                        uint32_t *l_472 = (void*)0;
                        uint32_t *l_473 = &p_1408->g_6[0][1].f3;
                        uint32_t *l_474 = &p_1408->g_166.f3;
                        int64_t *l_477 = &l_243;
                        (*l_94) = (*p_93);
                        l_478 |= (safe_div_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((safe_div_func_int32_t_s_s(((0x8F907F7866216343L <= ((*l_477) ^= (safe_lshift_func_int8_t_s_u((((**l_94) , (p_93 = (l_462 = &l_427))) == (((l_463 <= ((safe_lshift_func_int16_t_s_u(((*l_427) >= (((*l_474) |= ((*l_473) |= (l_468 != ((((((safe_lshift_func_int16_t_s_u(0x74A4L, (*l_449))) , l_471) , (void*)0) != &l_446) >= (**l_94)) , (void*)0)))) != FAKE_DIVERGE(p_1408->local_1_offset, get_local_id(1), 10))), 4)) > (*l_427))) > 18446744073709551610UL) , l_475)), l_476)))) != (*p_1408->g_206)), (*l_449))), (**l_94))), 0x1E21L));
                    }
                    (*l_427) &= (((VECTOR(uint8_t, 4))(p_1408->g_479.xyyx)).y , (!(l_480 == ((*l_482) = l_481[2][0][0]))));
                }
                for (l_471.f1 = 22; (l_471.f1 <= 7); l_471.f1 = safe_sub_func_uint32_t_u_u(l_471.f1, 1))
                { /* block id: 199 */
                    int32_t *l_486 = &l_229[2].f1;
                    int32_t *l_487 = &l_485;
                    int32_t *l_488 = &l_485;
                    int32_t *l_489[9] = {&p_1408->g_137.f9.f1,&p_1408->g_137.f9.f1,&p_1408->g_137.f9.f1,&p_1408->g_137.f9.f1,&p_1408->g_137.f9.f1,&p_1408->g_137.f9.f1,&p_1408->g_137.f9.f1,&p_1408->g_137.f9.f1,&p_1408->g_137.f9.f1};
                    uint16_t *l_512 = (void*)0;
                    int i;
                    l_492--;
                    if ((safe_mod_func_int64_t_s_s(((&p_1408->g_211 != ((((l_497 = &p_1408->g_234[2]) == l_498) , 0xD269F424L) , &p_1408->g_212[4])) & (*l_449)), (((safe_rshift_func_int16_t_s_s(((safe_rshift_func_int16_t_s_s((0x19L || 0x46L), 15)) ^ (*l_488)), 5)) | p_1408->g_168.f2) ^ 18446744073709551615UL))))
                    { /* block id: 202 */
                        struct S1 *l_519[7] = {&p_1408->g_168,&p_1408->g_6[0][1],&p_1408->g_168,&p_1408->g_168,&p_1408->g_6[0][1],&p_1408->g_168,&p_1408->g_168};
                        uint8_t *l_521 = &p_1408->g_168.f5;
                        int i;
                        (*l_486) &= (safe_mul_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(0x686DL, (safe_div_func_uint16_t_u_u((**l_94), ((VECTOR(int16_t, 4))(p_1408->g_509.s5214)).z)))), FAKE_DIVERGE(p_1408->group_0_offset, get_group_id(0), 10)));
                        (*p_1408->g_258) ^= ((*l_449) < (safe_mod_func_int8_t_s_s((l_512 == l_512), (safe_sub_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_u(((*l_521) |= (((safe_mul_func_uint8_t_u_u(((((void*)0 == &l_488) & ((**l_94) > (((((*l_449) > (((*l_223) = l_519[1]) == ((~(((void*)0 != l_520[0]) , (*l_449))) , &p_1408->g_211))) , 0x7B51L) > (**l_94)) > 6L))) , (*l_488)), (*l_95))) ^ (*l_427)) , FAKE_DIVERGE(p_1408->local_0_offset, get_local_id(0), 10))), l_522)), (**p_93))))));
                        (*l_94) = (*p_93);
                    }
                    else
                    { /* block id: 208 */
                        (*l_468) = (*p_1408->g_141);
                    }
                }
            }
        }
    }
    (*l_540) ^= ((((safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 2))(p_1408->g_525.wz)).xyyxyxxy, ((VECTOR(int16_t, 16))(l_526.s7253214032066751)).even))).even)).xwzzywxy)).s41)))).lo, (p_1408->g_405 = ((((*l_529) = ((*l_95) <= ((safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1408->group_2_offset, get_group_id(2), 10), p_1408->g_237.sf)) || ((**l_94) | ((VECTOR(int8_t, 2))(0x5AL, (-1L))).even)))) || (*l_95)) & (safe_mul_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(p_1408->g_534.s0b2ff928)).s4, 1)), ((**l_94) <= (((*l_535) = &l_229[2]) == &l_229[4])))))))) & (l_538 > (GROUP_DIVERGE(2, 1) , (**l_94)))) >= (**l_94)) || 0L);
    return (*p_1408->g_141);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[54];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 54; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[54];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 54; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[30];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 30; i++)
            l_comm_values[i] = 1;
    struct S3 c_1409;
    struct S3* p_1408 = &c_1409;
    struct S3 c_1410 = {
        {{{0x15D3E997L,0x063D62A0L,5L,0x722ABAC8L,0xD73AE4C7BA3F3004L,0x70L,5L,18446744073709551608UL,0x46BD29A2L,{0x67F6A191A83ACDD7L,0x1A53FDE7L}},{0x0A256013L,1L,0x3333DB9622CFB647L,0x0E92F9E8L,9UL,6UL,0x2619C85691F3A4B4L,2UL,3L,{0x2C3978D11E8E103CL,0x543565E1L}},{0x57461D0EL,9L,1L,4UL,18446744073709551615UL,255UL,0x4CC41425452E2CC7L,0xC50133ECB407CB0BL,1L,{1L,0x75678D56L}},{4294967295UL,1L,-6L,0xA7003B9FL,0x29F19B52D9B6EF54L,0x7EL,0x571BE33BD0D8167EL,0x007B4AD293D0AE44L,3L,{-4L,0x3B350B83L}},{0x0A256013L,1L,0x3333DB9622CFB647L,0x0E92F9E8L,9UL,6UL,0x2619C85691F3A4B4L,2UL,3L,{0x2C3978D11E8E103CL,0x543565E1L}},{4294967295UL,1L,-6L,0xA7003B9FL,0x29F19B52D9B6EF54L,0x7EL,0x571BE33BD0D8167EL,0x007B4AD293D0AE44L,3L,{-4L,0x3B350B83L}},{0x57461D0EL,9L,1L,4UL,18446744073709551615UL,255UL,0x4CC41425452E2CC7L,0xC50133ECB407CB0BL,1L,{1L,0x75678D56L}},{0x0A256013L,1L,0x3333DB9622CFB647L,0x0E92F9E8L,9UL,6UL,0x2619C85691F3A4B4L,2UL,3L,{0x2C3978D11E8E103CL,0x543565E1L}},{0x15D3E997L,0x063D62A0L,5L,0x722ABAC8L,0xD73AE4C7BA3F3004L,0x70L,5L,18446744073709551608UL,0x46BD29A2L,{0x67F6A191A83ACDD7L,0x1A53FDE7L}},{0x15D3E997L,0x063D62A0L,5L,0x722ABAC8L,0xD73AE4C7BA3F3004L,0x70L,5L,18446744073709551608UL,0x46BD29A2L,{0x67F6A191A83ACDD7L,0x1A53FDE7L}}},{{0x15D3E997L,0x063D62A0L,5L,0x722ABAC8L,0xD73AE4C7BA3F3004L,0x70L,5L,18446744073709551608UL,0x46BD29A2L,{0x67F6A191A83ACDD7L,0x1A53FDE7L}},{0x0A256013L,1L,0x3333DB9622CFB647L,0x0E92F9E8L,9UL,6UL,0x2619C85691F3A4B4L,2UL,3L,{0x2C3978D11E8E103CL,0x543565E1L}},{0x57461D0EL,9L,1L,4UL,18446744073709551615UL,255UL,0x4CC41425452E2CC7L,0xC50133ECB407CB0BL,1L,{1L,0x75678D56L}},{4294967295UL,1L,-6L,0xA7003B9FL,0x29F19B52D9B6EF54L,0x7EL,0x571BE33BD0D8167EL,0x007B4AD293D0AE44L,3L,{-4L,0x3B350B83L}},{0x0A256013L,1L,0x3333DB9622CFB647L,0x0E92F9E8L,9UL,6UL,0x2619C85691F3A4B4L,2UL,3L,{0x2C3978D11E8E103CL,0x543565E1L}},{4294967295UL,1L,-6L,0xA7003B9FL,0x29F19B52D9B6EF54L,0x7EL,0x571BE33BD0D8167EL,0x007B4AD293D0AE44L,3L,{-4L,0x3B350B83L}},{0x57461D0EL,9L,1L,4UL,18446744073709551615UL,255UL,0x4CC41425452E2CC7L,0xC50133ECB407CB0BL,1L,{1L,0x75678D56L}},{0x0A256013L,1L,0x3333DB9622CFB647L,0x0E92F9E8L,9UL,6UL,0x2619C85691F3A4B4L,2UL,3L,{0x2C3978D11E8E103CL,0x543565E1L}},{0x15D3E997L,0x063D62A0L,5L,0x722ABAC8L,0xD73AE4C7BA3F3004L,0x70L,5L,18446744073709551608UL,0x46BD29A2L,{0x67F6A191A83ACDD7L,0x1A53FDE7L}},{0x15D3E997L,0x063D62A0L,5L,0x722ABAC8L,0xD73AE4C7BA3F3004L,0x70L,5L,18446744073709551608UL,0x46BD29A2L,{0x67F6A191A83ACDD7L,0x1A53FDE7L}}}}, // p_1408->g_6
        &p_1408->g_6[0][1], // p_1408->g_5
        &p_1408->g_6[0][1].f9.f1, // p_1408->g_9
        0x5DL, // p_1408->g_16
        1UL, // p_1408->g_24
        (-2L), // p_1408->g_48
        7L, // p_1408->g_58
        &p_1408->g_6[0][1].f8, // p_1408->g_69
        &p_1408->g_69, // p_1408->g_68
        (VECTOR(uint64_t, 4))(3UL, (VECTOR(uint64_t, 2))(3UL, 0xA095ECA5D8F89870L), 0xA095ECA5D8F89870L), // p_1408->g_97
        (VECTOR(uint8_t, 2))(0x3FL, 0xBDL), // p_1408->g_106
        {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}, // p_1408->g_126
        (void*)0, // p_1408->g_134
        &p_1408->g_134, // p_1408->g_133
        &p_1408->g_133, // p_1408->g_132
        {0xDD7041B7L,-7L,-1L,0xF25E2EDCL,0x1CA63CD1322C40B4L,0xB7L,0x47D3EE5DDF3FE31CL,18446744073709551609UL,1L,{0x7FFE4C292AF6BC73L,0L}}, // p_1408->g_137
        &p_1408->g_137.f9, // p_1408->g_141
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-9L)), (-9L)), // p_1408->g_152
        {1UL,0x4F8C334BL,0x2F350A2B0F9EBF11L,0x6F79C2ECL,0x86F70DEFB85FCF2FL,252UL,-1L,0x1C2E1E14408ACB9DL,0x7FB23710L,{1L,0x7F4A1B50L}}, // p_1408->g_166
        {4294967294UL,0x494271DEL,-6L,0x9B9C9F9EL,1UL,255UL,5L,18446744073709551613UL,0x27AE3811L,{-9L,1L}}, // p_1408->g_168
        (void*)0, // p_1408->g_187
        (VECTOR(uint16_t, 8))(0x8078L, (VECTOR(uint16_t, 4))(0x8078L, (VECTOR(uint16_t, 2))(0x8078L, 7UL), 7UL), 7UL, 0x8078L, 7UL), // p_1408->g_205
        (-4L), // p_1408->g_207
        &p_1408->g_207, // p_1408->g_206
        {4294967295UL,-1L,0L,4294967287UL,1UL,0x47L,4L,0UL,0x3EE72BB2L,{0x1187358BB86A017DL,0x6861AB3FL}}, // p_1408->g_211
        {{0UL,0x330C4BFCL,-1L,0x8A265451L,0x2AEF53CF7D211742L,0xD1L,0x559FA5CE1FE78B6BL,0xF650D52797EF6E7BL,0L,{0x0C49F85F08096EF4L,0x2B9B9B5CL}},{0UL,0x330C4BFCL,-1L,0x8A265451L,0x2AEF53CF7D211742L,0xD1L,0x559FA5CE1FE78B6BL,0xF650D52797EF6E7BL,0L,{0x0C49F85F08096EF4L,0x2B9B9B5CL}},{0UL,0x330C4BFCL,-1L,0x8A265451L,0x2AEF53CF7D211742L,0xD1L,0x559FA5CE1FE78B6BL,0xF650D52797EF6E7BL,0L,{0x0C49F85F08096EF4L,0x2B9B9B5CL}},{0UL,0x330C4BFCL,-1L,0x8A265451L,0x2AEF53CF7D211742L,0xD1L,0x559FA5CE1FE78B6BL,0xF650D52797EF6E7BL,0L,{0x0C49F85F08096EF4L,0x2B9B9B5CL}},{0UL,0x330C4BFCL,-1L,0x8A265451L,0x2AEF53CF7D211742L,0xD1L,0x559FA5CE1FE78B6BL,0xF650D52797EF6E7BL,0L,{0x0C49F85F08096EF4L,0x2B9B9B5CL}},{0UL,0x330C4BFCL,-1L,0x8A265451L,0x2AEF53CF7D211742L,0xD1L,0x559FA5CE1FE78B6BL,0xF650D52797EF6E7BL,0L,{0x0C49F85F08096EF4L,0x2B9B9B5CL}},{0UL,0x330C4BFCL,-1L,0x8A265451L,0x2AEF53CF7D211742L,0xD1L,0x559FA5CE1FE78B6BL,0xF650D52797EF6E7BL,0L,{0x0C49F85F08096EF4L,0x2B9B9B5CL}},{0UL,0x330C4BFCL,-1L,0x8A265451L,0x2AEF53CF7D211742L,0xD1L,0x559FA5CE1FE78B6BL,0xF650D52797EF6E7BL,0L,{0x0C49F85F08096EF4L,0x2B9B9B5CL}}}, // p_1408->g_212
        (void*)0, // p_1408->g_232
        (void*)0, // p_1408->g_235
        {&p_1408->g_235,&p_1408->g_235,&p_1408->g_235,&p_1408->g_235}, // p_1408->g_234
        {&p_1408->g_234[0],&p_1408->g_234[0],&p_1408->g_234[0],&p_1408->g_234[0],&p_1408->g_234[0]}, // p_1408->g_233
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x403E42DCL), 0x403E42DCL), 0x403E42DCL, 0L, 0x403E42DCL, (VECTOR(int32_t, 2))(0L, 0x403E42DCL), (VECTOR(int32_t, 2))(0L, 0x403E42DCL), 0L, 0x403E42DCL, 0L, 0x403E42DCL), // p_1408->g_237
        (VECTOR(uint8_t, 2))(255UL, 1UL), // p_1408->g_250
        &p_1408->g_137.f9.f1, // p_1408->g_258
        (VECTOR(uint16_t, 2))(0UL, 0UL), // p_1408->g_260
        &p_1408->g_166.f8, // p_1408->g_261
        &p_1408->g_133, // p_1408->g_263
        0x54E0L, // p_1408->g_295
        &p_1408->g_168.f9.f1, // p_1408->g_347
        {{&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1},{&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1},{&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1},{&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1},{&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1},{&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1},{&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1},{&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1},{&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_6[0][1].f9.f1,&p_1408->g_166.f9.f1}}, // p_1408->g_348
        &p_1408->g_166.f8, // p_1408->g_349
        (VECTOR(uint8_t, 8))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 246UL), 246UL), 246UL, 4UL, 246UL), // p_1408->g_352
        (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL), // p_1408->g_366
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xBC1D3AE5L), 0xBC1D3AE5L), 0xBC1D3AE5L, 4294967295UL, 0xBC1D3AE5L, (VECTOR(uint32_t, 2))(4294967295UL, 0xBC1D3AE5L), (VECTOR(uint32_t, 2))(4294967295UL, 0xBC1D3AE5L), 4294967295UL, 0xBC1D3AE5L, 4294967295UL, 0xBC1D3AE5L), // p_1408->g_396
        (VECTOR(uint64_t, 16))(18446744073709551609UL, (VECTOR(uint64_t, 4))(18446744073709551609UL, (VECTOR(uint64_t, 2))(18446744073709551609UL, 0xFAE77A61D2C1A187L), 0xFAE77A61D2C1A187L), 0xFAE77A61D2C1A187L, 18446744073709551609UL, 0xFAE77A61D2C1A187L, (VECTOR(uint64_t, 2))(18446744073709551609UL, 0xFAE77A61D2C1A187L), (VECTOR(uint64_t, 2))(18446744073709551609UL, 0xFAE77A61D2C1A187L), 18446744073709551609UL, 0xFAE77A61D2C1A187L, 18446744073709551609UL, 0xFAE77A61D2C1A187L), // p_1408->g_398
        (-1L), // p_1408->g_405
        0xC82E948946935AF3L, // p_1408->g_406
        (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x828743EB6E56F1C6L), // p_1408->g_412
        (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x1EL), 0x1EL), 0x1EL, 1UL, 0x1EL), // p_1408->g_414
        (VECTOR(uint8_t, 2))(0x5FL, 253UL), // p_1408->g_479
        (VECTOR(int16_t, 8))(7L, (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x117AL), 0x117AL), 0x117AL, 7L, 0x117AL), // p_1408->g_509
        (VECTOR(int16_t, 4))(0x5937L, (VECTOR(int16_t, 2))(0x5937L, 0x09E1L), 0x09E1L), // p_1408->g_525
        (VECTOR(uint16_t, 16))(0x25F2L, (VECTOR(uint16_t, 4))(0x25F2L, (VECTOR(uint16_t, 2))(0x25F2L, 0xC2C8L), 0xC2C8L), 0xC2C8L, 0x25F2L, 0xC2C8L, (VECTOR(uint16_t, 2))(0x25F2L, 0xC2C8L), (VECTOR(uint16_t, 2))(0x25F2L, 0xC2C8L), 0x25F2L, 0xC2C8L, 0x25F2L, 0xC2C8L), // p_1408->g_534
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0L), 0L), // p_1408->g_543
        (VECTOR(int16_t, 8))(0x2A28L, (VECTOR(int16_t, 4))(0x2A28L, (VECTOR(int16_t, 2))(0x2A28L, 0L), 0L), 0L, 0x2A28L, 0L), // p_1408->g_550
        (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x6006351BBEDE67A4L), 0x6006351BBEDE67A4L), 0x6006351BBEDE67A4L, 1L, 0x6006351BBEDE67A4L, (VECTOR(int64_t, 2))(1L, 0x6006351BBEDE67A4L), (VECTOR(int64_t, 2))(1L, 0x6006351BBEDE67A4L), 1L, 0x6006351BBEDE67A4L, 1L, 0x6006351BBEDE67A4L), // p_1408->g_553
        (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x5A8BL), 0x5A8BL), // p_1408->g_556
        0x9E427FE5L, // p_1408->g_570
        (VECTOR(uint8_t, 8))(0x82L, (VECTOR(uint8_t, 4))(0x82L, (VECTOR(uint8_t, 2))(0x82L, 0x20L), 0x20L), 0x20L, 0x82L, 0x20L), // p_1408->g_591
        {1UL,-2L,0x6B4BC3B2C6118087L,0UL,0xA240D3EA9C4C778AL,6UL,0x68BB6D26F893BA43L,0UL,3L,{0x082ACFF4D25CD283L,7L}}, // p_1408->g_621
        (VECTOR(uint64_t, 2))(0xDD79DFA1BAB22E0EL, 0x2C6A1823587C2A63L), // p_1408->g_645
        (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x402B8664A6321599L), 0x402B8664A6321599L), 0x402B8664A6321599L, 1UL, 0x402B8664A6321599L, (VECTOR(uint64_t, 2))(1UL, 0x402B8664A6321599L), (VECTOR(uint64_t, 2))(1UL, 0x402B8664A6321599L), 1UL, 0x402B8664A6321599L, 1UL, 0x402B8664A6321599L), // p_1408->g_646
        (VECTOR(int8_t, 4))(0x31L, (VECTOR(int8_t, 2))(0x31L, 0x56L), 0x56L), // p_1408->g_659
        {{{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}}},{{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}}},{{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}}},{{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}}},{{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}}},{{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}}},{{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}}},{{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}}},{{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}},{{0x87389CE7L,0x0F93E978L,4L,0xFBB06CAEL,0xAF9778F2DDC7BD55L,0x65L,0x31FC8728A4AE973EL,18446744073709551611UL,0x15B951D3L,{1L,0x40DBD0F8L}},{4294967295UL,0x119BB73BL,0L,4294967291UL,0x2CBFE4D5ABBB66F6L,0x25L,0x24EBA14D67858674L,1UL,0x07E95798L,{0x4AF0642170E1A23EL,0x6D3C9F0BL}},{0xC325EECAL,-1L,0x103EF265ABD61DD9L,0xE804FA40L,0x31E2FA191B7DEA4CL,255UL,-5L,5UL,-9L,{-1L,-8L}},{0x1E239B2CL,0L,-1L,0x62AA90FDL,1UL,1UL,1L,0xEB06853AEE543216L,-7L,{0x7C51C32F29819FC4L,0x1AA9B16FL}},{7UL,9L,0x225CF0D1546E572BL,0x9DB92311L,0UL,0x91L,0L,18446744073709551615UL,0x7C928AEDL,{0x205B363F77D0AC5BL,-2L}}}}}, // p_1408->g_711
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x6002L), 0x6002L), // p_1408->g_722
        {{&p_1408->g_621,&p_1408->g_621,&p_1408->g_621,&p_1408->g_621,&p_1408->g_621},{&p_1408->g_621,&p_1408->g_621,&p_1408->g_621,&p_1408->g_621,&p_1408->g_621}}, // p_1408->g_730
        {{{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]},{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]},{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]}},{{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]},{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]},{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]}},{{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]},{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]},{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]}},{{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]},{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]},{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]}},{{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]},{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]},{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]}},{{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]},{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]},{(void*)0,&p_1408->g_730[1][4],&p_1408->g_730[1][4]}}}, // p_1408->g_729
        (VECTOR(int32_t, 16))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0L), 0L), 0L, 9L, 0L, (VECTOR(int32_t, 2))(9L, 0L), (VECTOR(int32_t, 2))(9L, 0L), 9L, 0L, 9L, 0L), // p_1408->g_807
        (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x2DL), 0x2DL), 0x2DL, 1UL, 0x2DL), // p_1408->g_863
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 254UL), 254UL), // p_1408->g_866
        (VECTOR(uint64_t, 16))(18446744073709551608UL, (VECTOR(uint64_t, 4))(18446744073709551608UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 1UL), 1UL), 1UL, 18446744073709551608UL, 1UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 1UL), (VECTOR(uint64_t, 2))(18446744073709551608UL, 1UL), 18446744073709551608UL, 1UL, 18446744073709551608UL, 1UL), // p_1408->g_875
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x17F9L), 0x17F9L), 0x17F9L, 0L, 0x17F9L, (VECTOR(int16_t, 2))(0L, 0x17F9L), (VECTOR(int16_t, 2))(0L, 0x17F9L), 0L, 0x17F9L, 0L, 0x17F9L), // p_1408->g_882
        (VECTOR(int16_t, 16))(0x6CD1L, (VECTOR(int16_t, 4))(0x6CD1L, (VECTOR(int16_t, 2))(0x6CD1L, 0x1703L), 0x1703L), 0x1703L, 0x6CD1L, 0x1703L, (VECTOR(int16_t, 2))(0x6CD1L, 0x1703L), (VECTOR(int16_t, 2))(0x6CD1L, 0x1703L), 0x6CD1L, 0x1703L, 0x6CD1L, 0x1703L), // p_1408->g_884
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x13E83806L), 0x13E83806L), // p_1408->g_947
        {-1L}, // p_1408->g_955
        (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L)), // p_1408->g_965
        {{{-1L},{-1L},{-1L}},{{-1L},{-1L},{-1L}},{{-1L},{-1L},{-1L}},{{-1L},{-1L},{-1L}}}, // p_1408->g_973
        (VECTOR(int64_t, 16))((-10L), (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 4L), 4L), 4L, (-10L), 4L, (VECTOR(int64_t, 2))((-10L), 4L), (VECTOR(int64_t, 2))((-10L), 4L), (-10L), 4L, (-10L), 4L), // p_1408->g_994
        (VECTOR(int32_t, 16))(0x5C5130C9L, (VECTOR(int32_t, 4))(0x5C5130C9L, (VECTOR(int32_t, 2))(0x5C5130C9L, (-1L)), (-1L)), (-1L), 0x5C5130C9L, (-1L), (VECTOR(int32_t, 2))(0x5C5130C9L, (-1L)), (VECTOR(int32_t, 2))(0x5C5130C9L, (-1L)), 0x5C5130C9L, (-1L), 0x5C5130C9L, (-1L)), // p_1408->g_998
        (VECTOR(int32_t, 16))(0x01709D4BL, (VECTOR(int32_t, 4))(0x01709D4BL, (VECTOR(int32_t, 2))(0x01709D4BL, 0x4DC7C9A5L), 0x4DC7C9A5L), 0x4DC7C9A5L, 0x01709D4BL, 0x4DC7C9A5L, (VECTOR(int32_t, 2))(0x01709D4BL, 0x4DC7C9A5L), (VECTOR(int32_t, 2))(0x01709D4BL, 0x4DC7C9A5L), 0x01709D4BL, 0x4DC7C9A5L, 0x01709D4BL, 0x4DC7C9A5L), // p_1408->g_1379
        0, // p_1408->v_collective
        sequence_input[get_global_id(0)], // p_1408->global_0_offset
        sequence_input[get_global_id(1)], // p_1408->global_1_offset
        sequence_input[get_global_id(2)], // p_1408->global_2_offset
        sequence_input[get_local_id(0)], // p_1408->local_0_offset
        sequence_input[get_local_id(1)], // p_1408->local_1_offset
        sequence_input[get_local_id(2)], // p_1408->local_2_offset
        sequence_input[get_group_id(0)], // p_1408->group_0_offset
        sequence_input[get_group_id(1)], // p_1408->group_1_offset
        sequence_input[get_group_id(2)], // p_1408->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 30)), permutations[0][get_linear_local_id()])), // p_1408->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1409 = c_1410;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1408);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1408->g_6[i][j].f0, "p_1408->g_6[i][j].f0", print_hash_value);
            transparent_crc(p_1408->g_6[i][j].f1, "p_1408->g_6[i][j].f1", print_hash_value);
            transparent_crc(p_1408->g_6[i][j].f2, "p_1408->g_6[i][j].f2", print_hash_value);
            transparent_crc(p_1408->g_6[i][j].f3, "p_1408->g_6[i][j].f3", print_hash_value);
            transparent_crc(p_1408->g_6[i][j].f4, "p_1408->g_6[i][j].f4", print_hash_value);
            transparent_crc(p_1408->g_6[i][j].f5, "p_1408->g_6[i][j].f5", print_hash_value);
            transparent_crc(p_1408->g_6[i][j].f6, "p_1408->g_6[i][j].f6", print_hash_value);
            transparent_crc(p_1408->g_6[i][j].f7, "p_1408->g_6[i][j].f7", print_hash_value);
            transparent_crc(p_1408->g_6[i][j].f8, "p_1408->g_6[i][j].f8", print_hash_value);
            transparent_crc(p_1408->g_6[i][j].f9.f0, "p_1408->g_6[i][j].f9.f0", print_hash_value);
            transparent_crc(p_1408->g_6[i][j].f9.f1, "p_1408->g_6[i][j].f9.f1", print_hash_value);

        }
    }
    transparent_crc(p_1408->g_16, "p_1408->g_16", print_hash_value);
    transparent_crc(p_1408->g_24, "p_1408->g_24", print_hash_value);
    transparent_crc(p_1408->g_48, "p_1408->g_48", print_hash_value);
    transparent_crc(p_1408->g_58, "p_1408->g_58", print_hash_value);
    transparent_crc(p_1408->g_97.x, "p_1408->g_97.x", print_hash_value);
    transparent_crc(p_1408->g_97.y, "p_1408->g_97.y", print_hash_value);
    transparent_crc(p_1408->g_97.z, "p_1408->g_97.z", print_hash_value);
    transparent_crc(p_1408->g_97.w, "p_1408->g_97.w", print_hash_value);
    transparent_crc(p_1408->g_106.x, "p_1408->g_106.x", print_hash_value);
    transparent_crc(p_1408->g_106.y, "p_1408->g_106.y", print_hash_value);
    transparent_crc(p_1408->g_137.f0, "p_1408->g_137.f0", print_hash_value);
    transparent_crc(p_1408->g_137.f1, "p_1408->g_137.f1", print_hash_value);
    transparent_crc(p_1408->g_137.f2, "p_1408->g_137.f2", print_hash_value);
    transparent_crc(p_1408->g_137.f3, "p_1408->g_137.f3", print_hash_value);
    transparent_crc(p_1408->g_137.f4, "p_1408->g_137.f4", print_hash_value);
    transparent_crc(p_1408->g_137.f5, "p_1408->g_137.f5", print_hash_value);
    transparent_crc(p_1408->g_137.f6, "p_1408->g_137.f6", print_hash_value);
    transparent_crc(p_1408->g_137.f7, "p_1408->g_137.f7", print_hash_value);
    transparent_crc(p_1408->g_137.f8, "p_1408->g_137.f8", print_hash_value);
    transparent_crc(p_1408->g_137.f9.f0, "p_1408->g_137.f9.f0", print_hash_value);
    transparent_crc(p_1408->g_137.f9.f1, "p_1408->g_137.f9.f1", print_hash_value);
    transparent_crc(p_1408->g_152.x, "p_1408->g_152.x", print_hash_value);
    transparent_crc(p_1408->g_152.y, "p_1408->g_152.y", print_hash_value);
    transparent_crc(p_1408->g_152.z, "p_1408->g_152.z", print_hash_value);
    transparent_crc(p_1408->g_152.w, "p_1408->g_152.w", print_hash_value);
    transparent_crc(p_1408->g_166.f0, "p_1408->g_166.f0", print_hash_value);
    transparent_crc(p_1408->g_166.f1, "p_1408->g_166.f1", print_hash_value);
    transparent_crc(p_1408->g_166.f2, "p_1408->g_166.f2", print_hash_value);
    transparent_crc(p_1408->g_166.f3, "p_1408->g_166.f3", print_hash_value);
    transparent_crc(p_1408->g_166.f4, "p_1408->g_166.f4", print_hash_value);
    transparent_crc(p_1408->g_166.f5, "p_1408->g_166.f5", print_hash_value);
    transparent_crc(p_1408->g_166.f6, "p_1408->g_166.f6", print_hash_value);
    transparent_crc(p_1408->g_166.f7, "p_1408->g_166.f7", print_hash_value);
    transparent_crc(p_1408->g_166.f8, "p_1408->g_166.f8", print_hash_value);
    transparent_crc(p_1408->g_166.f9.f0, "p_1408->g_166.f9.f0", print_hash_value);
    transparent_crc(p_1408->g_166.f9.f1, "p_1408->g_166.f9.f1", print_hash_value);
    transparent_crc(p_1408->g_168.f0, "p_1408->g_168.f0", print_hash_value);
    transparent_crc(p_1408->g_168.f1, "p_1408->g_168.f1", print_hash_value);
    transparent_crc(p_1408->g_168.f2, "p_1408->g_168.f2", print_hash_value);
    transparent_crc(p_1408->g_168.f3, "p_1408->g_168.f3", print_hash_value);
    transparent_crc(p_1408->g_168.f4, "p_1408->g_168.f4", print_hash_value);
    transparent_crc(p_1408->g_168.f5, "p_1408->g_168.f5", print_hash_value);
    transparent_crc(p_1408->g_168.f6, "p_1408->g_168.f6", print_hash_value);
    transparent_crc(p_1408->g_168.f7, "p_1408->g_168.f7", print_hash_value);
    transparent_crc(p_1408->g_168.f8, "p_1408->g_168.f8", print_hash_value);
    transparent_crc(p_1408->g_168.f9.f0, "p_1408->g_168.f9.f0", print_hash_value);
    transparent_crc(p_1408->g_168.f9.f1, "p_1408->g_168.f9.f1", print_hash_value);
    transparent_crc(p_1408->g_205.s0, "p_1408->g_205.s0", print_hash_value);
    transparent_crc(p_1408->g_205.s1, "p_1408->g_205.s1", print_hash_value);
    transparent_crc(p_1408->g_205.s2, "p_1408->g_205.s2", print_hash_value);
    transparent_crc(p_1408->g_205.s3, "p_1408->g_205.s3", print_hash_value);
    transparent_crc(p_1408->g_205.s4, "p_1408->g_205.s4", print_hash_value);
    transparent_crc(p_1408->g_205.s5, "p_1408->g_205.s5", print_hash_value);
    transparent_crc(p_1408->g_205.s6, "p_1408->g_205.s6", print_hash_value);
    transparent_crc(p_1408->g_205.s7, "p_1408->g_205.s7", print_hash_value);
    transparent_crc(p_1408->g_207, "p_1408->g_207", print_hash_value);
    transparent_crc(p_1408->g_211.f0, "p_1408->g_211.f0", print_hash_value);
    transparent_crc(p_1408->g_211.f1, "p_1408->g_211.f1", print_hash_value);
    transparent_crc(p_1408->g_211.f2, "p_1408->g_211.f2", print_hash_value);
    transparent_crc(p_1408->g_211.f3, "p_1408->g_211.f3", print_hash_value);
    transparent_crc(p_1408->g_211.f4, "p_1408->g_211.f4", print_hash_value);
    transparent_crc(p_1408->g_211.f5, "p_1408->g_211.f5", print_hash_value);
    transparent_crc(p_1408->g_211.f6, "p_1408->g_211.f6", print_hash_value);
    transparent_crc(p_1408->g_211.f7, "p_1408->g_211.f7", print_hash_value);
    transparent_crc(p_1408->g_211.f8, "p_1408->g_211.f8", print_hash_value);
    transparent_crc(p_1408->g_211.f9.f0, "p_1408->g_211.f9.f0", print_hash_value);
    transparent_crc(p_1408->g_211.f9.f1, "p_1408->g_211.f9.f1", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1408->g_212[i].f0, "p_1408->g_212[i].f0", print_hash_value);
        transparent_crc(p_1408->g_212[i].f1, "p_1408->g_212[i].f1", print_hash_value);
        transparent_crc(p_1408->g_212[i].f2, "p_1408->g_212[i].f2", print_hash_value);
        transparent_crc(p_1408->g_212[i].f3, "p_1408->g_212[i].f3", print_hash_value);
        transparent_crc(p_1408->g_212[i].f4, "p_1408->g_212[i].f4", print_hash_value);
        transparent_crc(p_1408->g_212[i].f5, "p_1408->g_212[i].f5", print_hash_value);
        transparent_crc(p_1408->g_212[i].f6, "p_1408->g_212[i].f6", print_hash_value);
        transparent_crc(p_1408->g_212[i].f7, "p_1408->g_212[i].f7", print_hash_value);
        transparent_crc(p_1408->g_212[i].f8, "p_1408->g_212[i].f8", print_hash_value);
        transparent_crc(p_1408->g_212[i].f9.f0, "p_1408->g_212[i].f9.f0", print_hash_value);
        transparent_crc(p_1408->g_212[i].f9.f1, "p_1408->g_212[i].f9.f1", print_hash_value);

    }
    transparent_crc(p_1408->g_237.s0, "p_1408->g_237.s0", print_hash_value);
    transparent_crc(p_1408->g_237.s1, "p_1408->g_237.s1", print_hash_value);
    transparent_crc(p_1408->g_237.s2, "p_1408->g_237.s2", print_hash_value);
    transparent_crc(p_1408->g_237.s3, "p_1408->g_237.s3", print_hash_value);
    transparent_crc(p_1408->g_237.s4, "p_1408->g_237.s4", print_hash_value);
    transparent_crc(p_1408->g_237.s5, "p_1408->g_237.s5", print_hash_value);
    transparent_crc(p_1408->g_237.s6, "p_1408->g_237.s6", print_hash_value);
    transparent_crc(p_1408->g_237.s7, "p_1408->g_237.s7", print_hash_value);
    transparent_crc(p_1408->g_237.s8, "p_1408->g_237.s8", print_hash_value);
    transparent_crc(p_1408->g_237.s9, "p_1408->g_237.s9", print_hash_value);
    transparent_crc(p_1408->g_237.sa, "p_1408->g_237.sa", print_hash_value);
    transparent_crc(p_1408->g_237.sb, "p_1408->g_237.sb", print_hash_value);
    transparent_crc(p_1408->g_237.sc, "p_1408->g_237.sc", print_hash_value);
    transparent_crc(p_1408->g_237.sd, "p_1408->g_237.sd", print_hash_value);
    transparent_crc(p_1408->g_237.se, "p_1408->g_237.se", print_hash_value);
    transparent_crc(p_1408->g_237.sf, "p_1408->g_237.sf", print_hash_value);
    transparent_crc(p_1408->g_250.x, "p_1408->g_250.x", print_hash_value);
    transparent_crc(p_1408->g_250.y, "p_1408->g_250.y", print_hash_value);
    transparent_crc(p_1408->g_260.x, "p_1408->g_260.x", print_hash_value);
    transparent_crc(p_1408->g_260.y, "p_1408->g_260.y", print_hash_value);
    transparent_crc(p_1408->g_295, "p_1408->g_295", print_hash_value);
    transparent_crc(p_1408->g_352.s0, "p_1408->g_352.s0", print_hash_value);
    transparent_crc(p_1408->g_352.s1, "p_1408->g_352.s1", print_hash_value);
    transparent_crc(p_1408->g_352.s2, "p_1408->g_352.s2", print_hash_value);
    transparent_crc(p_1408->g_352.s3, "p_1408->g_352.s3", print_hash_value);
    transparent_crc(p_1408->g_352.s4, "p_1408->g_352.s4", print_hash_value);
    transparent_crc(p_1408->g_352.s5, "p_1408->g_352.s5", print_hash_value);
    transparent_crc(p_1408->g_352.s6, "p_1408->g_352.s6", print_hash_value);
    transparent_crc(p_1408->g_352.s7, "p_1408->g_352.s7", print_hash_value);
    transparent_crc(p_1408->g_366.s0, "p_1408->g_366.s0", print_hash_value);
    transparent_crc(p_1408->g_366.s1, "p_1408->g_366.s1", print_hash_value);
    transparent_crc(p_1408->g_366.s2, "p_1408->g_366.s2", print_hash_value);
    transparent_crc(p_1408->g_366.s3, "p_1408->g_366.s3", print_hash_value);
    transparent_crc(p_1408->g_366.s4, "p_1408->g_366.s4", print_hash_value);
    transparent_crc(p_1408->g_366.s5, "p_1408->g_366.s5", print_hash_value);
    transparent_crc(p_1408->g_366.s6, "p_1408->g_366.s6", print_hash_value);
    transparent_crc(p_1408->g_366.s7, "p_1408->g_366.s7", print_hash_value);
    transparent_crc(p_1408->g_396.s0, "p_1408->g_396.s0", print_hash_value);
    transparent_crc(p_1408->g_396.s1, "p_1408->g_396.s1", print_hash_value);
    transparent_crc(p_1408->g_396.s2, "p_1408->g_396.s2", print_hash_value);
    transparent_crc(p_1408->g_396.s3, "p_1408->g_396.s3", print_hash_value);
    transparent_crc(p_1408->g_396.s4, "p_1408->g_396.s4", print_hash_value);
    transparent_crc(p_1408->g_396.s5, "p_1408->g_396.s5", print_hash_value);
    transparent_crc(p_1408->g_396.s6, "p_1408->g_396.s6", print_hash_value);
    transparent_crc(p_1408->g_396.s7, "p_1408->g_396.s7", print_hash_value);
    transparent_crc(p_1408->g_396.s8, "p_1408->g_396.s8", print_hash_value);
    transparent_crc(p_1408->g_396.s9, "p_1408->g_396.s9", print_hash_value);
    transparent_crc(p_1408->g_396.sa, "p_1408->g_396.sa", print_hash_value);
    transparent_crc(p_1408->g_396.sb, "p_1408->g_396.sb", print_hash_value);
    transparent_crc(p_1408->g_396.sc, "p_1408->g_396.sc", print_hash_value);
    transparent_crc(p_1408->g_396.sd, "p_1408->g_396.sd", print_hash_value);
    transparent_crc(p_1408->g_396.se, "p_1408->g_396.se", print_hash_value);
    transparent_crc(p_1408->g_396.sf, "p_1408->g_396.sf", print_hash_value);
    transparent_crc(p_1408->g_398.s0, "p_1408->g_398.s0", print_hash_value);
    transparent_crc(p_1408->g_398.s1, "p_1408->g_398.s1", print_hash_value);
    transparent_crc(p_1408->g_398.s2, "p_1408->g_398.s2", print_hash_value);
    transparent_crc(p_1408->g_398.s3, "p_1408->g_398.s3", print_hash_value);
    transparent_crc(p_1408->g_398.s4, "p_1408->g_398.s4", print_hash_value);
    transparent_crc(p_1408->g_398.s5, "p_1408->g_398.s5", print_hash_value);
    transparent_crc(p_1408->g_398.s6, "p_1408->g_398.s6", print_hash_value);
    transparent_crc(p_1408->g_398.s7, "p_1408->g_398.s7", print_hash_value);
    transparent_crc(p_1408->g_398.s8, "p_1408->g_398.s8", print_hash_value);
    transparent_crc(p_1408->g_398.s9, "p_1408->g_398.s9", print_hash_value);
    transparent_crc(p_1408->g_398.sa, "p_1408->g_398.sa", print_hash_value);
    transparent_crc(p_1408->g_398.sb, "p_1408->g_398.sb", print_hash_value);
    transparent_crc(p_1408->g_398.sc, "p_1408->g_398.sc", print_hash_value);
    transparent_crc(p_1408->g_398.sd, "p_1408->g_398.sd", print_hash_value);
    transparent_crc(p_1408->g_398.se, "p_1408->g_398.se", print_hash_value);
    transparent_crc(p_1408->g_398.sf, "p_1408->g_398.sf", print_hash_value);
    transparent_crc(p_1408->g_405, "p_1408->g_405", print_hash_value);
    transparent_crc(p_1408->g_406, "p_1408->g_406", print_hash_value);
    transparent_crc(p_1408->g_412.x, "p_1408->g_412.x", print_hash_value);
    transparent_crc(p_1408->g_412.y, "p_1408->g_412.y", print_hash_value);
    transparent_crc(p_1408->g_414.s0, "p_1408->g_414.s0", print_hash_value);
    transparent_crc(p_1408->g_414.s1, "p_1408->g_414.s1", print_hash_value);
    transparent_crc(p_1408->g_414.s2, "p_1408->g_414.s2", print_hash_value);
    transparent_crc(p_1408->g_414.s3, "p_1408->g_414.s3", print_hash_value);
    transparent_crc(p_1408->g_414.s4, "p_1408->g_414.s4", print_hash_value);
    transparent_crc(p_1408->g_414.s5, "p_1408->g_414.s5", print_hash_value);
    transparent_crc(p_1408->g_414.s6, "p_1408->g_414.s6", print_hash_value);
    transparent_crc(p_1408->g_414.s7, "p_1408->g_414.s7", print_hash_value);
    transparent_crc(p_1408->g_479.x, "p_1408->g_479.x", print_hash_value);
    transparent_crc(p_1408->g_479.y, "p_1408->g_479.y", print_hash_value);
    transparent_crc(p_1408->g_509.s0, "p_1408->g_509.s0", print_hash_value);
    transparent_crc(p_1408->g_509.s1, "p_1408->g_509.s1", print_hash_value);
    transparent_crc(p_1408->g_509.s2, "p_1408->g_509.s2", print_hash_value);
    transparent_crc(p_1408->g_509.s3, "p_1408->g_509.s3", print_hash_value);
    transparent_crc(p_1408->g_509.s4, "p_1408->g_509.s4", print_hash_value);
    transparent_crc(p_1408->g_509.s5, "p_1408->g_509.s5", print_hash_value);
    transparent_crc(p_1408->g_509.s6, "p_1408->g_509.s6", print_hash_value);
    transparent_crc(p_1408->g_509.s7, "p_1408->g_509.s7", print_hash_value);
    transparent_crc(p_1408->g_525.x, "p_1408->g_525.x", print_hash_value);
    transparent_crc(p_1408->g_525.y, "p_1408->g_525.y", print_hash_value);
    transparent_crc(p_1408->g_525.z, "p_1408->g_525.z", print_hash_value);
    transparent_crc(p_1408->g_525.w, "p_1408->g_525.w", print_hash_value);
    transparent_crc(p_1408->g_534.s0, "p_1408->g_534.s0", print_hash_value);
    transparent_crc(p_1408->g_534.s1, "p_1408->g_534.s1", print_hash_value);
    transparent_crc(p_1408->g_534.s2, "p_1408->g_534.s2", print_hash_value);
    transparent_crc(p_1408->g_534.s3, "p_1408->g_534.s3", print_hash_value);
    transparent_crc(p_1408->g_534.s4, "p_1408->g_534.s4", print_hash_value);
    transparent_crc(p_1408->g_534.s5, "p_1408->g_534.s5", print_hash_value);
    transparent_crc(p_1408->g_534.s6, "p_1408->g_534.s6", print_hash_value);
    transparent_crc(p_1408->g_534.s7, "p_1408->g_534.s7", print_hash_value);
    transparent_crc(p_1408->g_534.s8, "p_1408->g_534.s8", print_hash_value);
    transparent_crc(p_1408->g_534.s9, "p_1408->g_534.s9", print_hash_value);
    transparent_crc(p_1408->g_534.sa, "p_1408->g_534.sa", print_hash_value);
    transparent_crc(p_1408->g_534.sb, "p_1408->g_534.sb", print_hash_value);
    transparent_crc(p_1408->g_534.sc, "p_1408->g_534.sc", print_hash_value);
    transparent_crc(p_1408->g_534.sd, "p_1408->g_534.sd", print_hash_value);
    transparent_crc(p_1408->g_534.se, "p_1408->g_534.se", print_hash_value);
    transparent_crc(p_1408->g_534.sf, "p_1408->g_534.sf", print_hash_value);
    transparent_crc(p_1408->g_543.x, "p_1408->g_543.x", print_hash_value);
    transparent_crc(p_1408->g_543.y, "p_1408->g_543.y", print_hash_value);
    transparent_crc(p_1408->g_543.z, "p_1408->g_543.z", print_hash_value);
    transparent_crc(p_1408->g_543.w, "p_1408->g_543.w", print_hash_value);
    transparent_crc(p_1408->g_550.s0, "p_1408->g_550.s0", print_hash_value);
    transparent_crc(p_1408->g_550.s1, "p_1408->g_550.s1", print_hash_value);
    transparent_crc(p_1408->g_550.s2, "p_1408->g_550.s2", print_hash_value);
    transparent_crc(p_1408->g_550.s3, "p_1408->g_550.s3", print_hash_value);
    transparent_crc(p_1408->g_550.s4, "p_1408->g_550.s4", print_hash_value);
    transparent_crc(p_1408->g_550.s5, "p_1408->g_550.s5", print_hash_value);
    transparent_crc(p_1408->g_550.s6, "p_1408->g_550.s6", print_hash_value);
    transparent_crc(p_1408->g_550.s7, "p_1408->g_550.s7", print_hash_value);
    transparent_crc(p_1408->g_553.s0, "p_1408->g_553.s0", print_hash_value);
    transparent_crc(p_1408->g_553.s1, "p_1408->g_553.s1", print_hash_value);
    transparent_crc(p_1408->g_553.s2, "p_1408->g_553.s2", print_hash_value);
    transparent_crc(p_1408->g_553.s3, "p_1408->g_553.s3", print_hash_value);
    transparent_crc(p_1408->g_553.s4, "p_1408->g_553.s4", print_hash_value);
    transparent_crc(p_1408->g_553.s5, "p_1408->g_553.s5", print_hash_value);
    transparent_crc(p_1408->g_553.s6, "p_1408->g_553.s6", print_hash_value);
    transparent_crc(p_1408->g_553.s7, "p_1408->g_553.s7", print_hash_value);
    transparent_crc(p_1408->g_553.s8, "p_1408->g_553.s8", print_hash_value);
    transparent_crc(p_1408->g_553.s9, "p_1408->g_553.s9", print_hash_value);
    transparent_crc(p_1408->g_553.sa, "p_1408->g_553.sa", print_hash_value);
    transparent_crc(p_1408->g_553.sb, "p_1408->g_553.sb", print_hash_value);
    transparent_crc(p_1408->g_553.sc, "p_1408->g_553.sc", print_hash_value);
    transparent_crc(p_1408->g_553.sd, "p_1408->g_553.sd", print_hash_value);
    transparent_crc(p_1408->g_553.se, "p_1408->g_553.se", print_hash_value);
    transparent_crc(p_1408->g_553.sf, "p_1408->g_553.sf", print_hash_value);
    transparent_crc(p_1408->g_556.x, "p_1408->g_556.x", print_hash_value);
    transparent_crc(p_1408->g_556.y, "p_1408->g_556.y", print_hash_value);
    transparent_crc(p_1408->g_556.z, "p_1408->g_556.z", print_hash_value);
    transparent_crc(p_1408->g_556.w, "p_1408->g_556.w", print_hash_value);
    transparent_crc(p_1408->g_570, "p_1408->g_570", print_hash_value);
    transparent_crc(p_1408->g_591.s0, "p_1408->g_591.s0", print_hash_value);
    transparent_crc(p_1408->g_591.s1, "p_1408->g_591.s1", print_hash_value);
    transparent_crc(p_1408->g_591.s2, "p_1408->g_591.s2", print_hash_value);
    transparent_crc(p_1408->g_591.s3, "p_1408->g_591.s3", print_hash_value);
    transparent_crc(p_1408->g_591.s4, "p_1408->g_591.s4", print_hash_value);
    transparent_crc(p_1408->g_591.s5, "p_1408->g_591.s5", print_hash_value);
    transparent_crc(p_1408->g_591.s6, "p_1408->g_591.s6", print_hash_value);
    transparent_crc(p_1408->g_591.s7, "p_1408->g_591.s7", print_hash_value);
    transparent_crc(p_1408->g_621.f0, "p_1408->g_621.f0", print_hash_value);
    transparent_crc(p_1408->g_621.f1, "p_1408->g_621.f1", print_hash_value);
    transparent_crc(p_1408->g_621.f2, "p_1408->g_621.f2", print_hash_value);
    transparent_crc(p_1408->g_621.f3, "p_1408->g_621.f3", print_hash_value);
    transparent_crc(p_1408->g_621.f4, "p_1408->g_621.f4", print_hash_value);
    transparent_crc(p_1408->g_621.f5, "p_1408->g_621.f5", print_hash_value);
    transparent_crc(p_1408->g_621.f6, "p_1408->g_621.f6", print_hash_value);
    transparent_crc(p_1408->g_621.f7, "p_1408->g_621.f7", print_hash_value);
    transparent_crc(p_1408->g_621.f8, "p_1408->g_621.f8", print_hash_value);
    transparent_crc(p_1408->g_621.f9.f0, "p_1408->g_621.f9.f0", print_hash_value);
    transparent_crc(p_1408->g_621.f9.f1, "p_1408->g_621.f9.f1", print_hash_value);
    transparent_crc(p_1408->g_645.x, "p_1408->g_645.x", print_hash_value);
    transparent_crc(p_1408->g_645.y, "p_1408->g_645.y", print_hash_value);
    transparent_crc(p_1408->g_646.s0, "p_1408->g_646.s0", print_hash_value);
    transparent_crc(p_1408->g_646.s1, "p_1408->g_646.s1", print_hash_value);
    transparent_crc(p_1408->g_646.s2, "p_1408->g_646.s2", print_hash_value);
    transparent_crc(p_1408->g_646.s3, "p_1408->g_646.s3", print_hash_value);
    transparent_crc(p_1408->g_646.s4, "p_1408->g_646.s4", print_hash_value);
    transparent_crc(p_1408->g_646.s5, "p_1408->g_646.s5", print_hash_value);
    transparent_crc(p_1408->g_646.s6, "p_1408->g_646.s6", print_hash_value);
    transparent_crc(p_1408->g_646.s7, "p_1408->g_646.s7", print_hash_value);
    transparent_crc(p_1408->g_646.s8, "p_1408->g_646.s8", print_hash_value);
    transparent_crc(p_1408->g_646.s9, "p_1408->g_646.s9", print_hash_value);
    transparent_crc(p_1408->g_646.sa, "p_1408->g_646.sa", print_hash_value);
    transparent_crc(p_1408->g_646.sb, "p_1408->g_646.sb", print_hash_value);
    transparent_crc(p_1408->g_646.sc, "p_1408->g_646.sc", print_hash_value);
    transparent_crc(p_1408->g_646.sd, "p_1408->g_646.sd", print_hash_value);
    transparent_crc(p_1408->g_646.se, "p_1408->g_646.se", print_hash_value);
    transparent_crc(p_1408->g_646.sf, "p_1408->g_646.sf", print_hash_value);
    transparent_crc(p_1408->g_659.x, "p_1408->g_659.x", print_hash_value);
    transparent_crc(p_1408->g_659.y, "p_1408->g_659.y", print_hash_value);
    transparent_crc(p_1408->g_659.z, "p_1408->g_659.z", print_hash_value);
    transparent_crc(p_1408->g_659.w, "p_1408->g_659.w", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1408->g_711[i][j][k].f0, "p_1408->g_711[i][j][k].f0", print_hash_value);
                transparent_crc(p_1408->g_711[i][j][k].f1, "p_1408->g_711[i][j][k].f1", print_hash_value);
                transparent_crc(p_1408->g_711[i][j][k].f2, "p_1408->g_711[i][j][k].f2", print_hash_value);
                transparent_crc(p_1408->g_711[i][j][k].f3, "p_1408->g_711[i][j][k].f3", print_hash_value);
                transparent_crc(p_1408->g_711[i][j][k].f4, "p_1408->g_711[i][j][k].f4", print_hash_value);
                transparent_crc(p_1408->g_711[i][j][k].f5, "p_1408->g_711[i][j][k].f5", print_hash_value);
                transparent_crc(p_1408->g_711[i][j][k].f6, "p_1408->g_711[i][j][k].f6", print_hash_value);
                transparent_crc(p_1408->g_711[i][j][k].f7, "p_1408->g_711[i][j][k].f7", print_hash_value);
                transparent_crc(p_1408->g_711[i][j][k].f8, "p_1408->g_711[i][j][k].f8", print_hash_value);
                transparent_crc(p_1408->g_711[i][j][k].f9.f0, "p_1408->g_711[i][j][k].f9.f0", print_hash_value);
                transparent_crc(p_1408->g_711[i][j][k].f9.f1, "p_1408->g_711[i][j][k].f9.f1", print_hash_value);

            }
        }
    }
    transparent_crc(p_1408->g_722.x, "p_1408->g_722.x", print_hash_value);
    transparent_crc(p_1408->g_722.y, "p_1408->g_722.y", print_hash_value);
    transparent_crc(p_1408->g_722.z, "p_1408->g_722.z", print_hash_value);
    transparent_crc(p_1408->g_722.w, "p_1408->g_722.w", print_hash_value);
    transparent_crc(p_1408->g_807.s0, "p_1408->g_807.s0", print_hash_value);
    transparent_crc(p_1408->g_807.s1, "p_1408->g_807.s1", print_hash_value);
    transparent_crc(p_1408->g_807.s2, "p_1408->g_807.s2", print_hash_value);
    transparent_crc(p_1408->g_807.s3, "p_1408->g_807.s3", print_hash_value);
    transparent_crc(p_1408->g_807.s4, "p_1408->g_807.s4", print_hash_value);
    transparent_crc(p_1408->g_807.s5, "p_1408->g_807.s5", print_hash_value);
    transparent_crc(p_1408->g_807.s6, "p_1408->g_807.s6", print_hash_value);
    transparent_crc(p_1408->g_807.s7, "p_1408->g_807.s7", print_hash_value);
    transparent_crc(p_1408->g_807.s8, "p_1408->g_807.s8", print_hash_value);
    transparent_crc(p_1408->g_807.s9, "p_1408->g_807.s9", print_hash_value);
    transparent_crc(p_1408->g_807.sa, "p_1408->g_807.sa", print_hash_value);
    transparent_crc(p_1408->g_807.sb, "p_1408->g_807.sb", print_hash_value);
    transparent_crc(p_1408->g_807.sc, "p_1408->g_807.sc", print_hash_value);
    transparent_crc(p_1408->g_807.sd, "p_1408->g_807.sd", print_hash_value);
    transparent_crc(p_1408->g_807.se, "p_1408->g_807.se", print_hash_value);
    transparent_crc(p_1408->g_807.sf, "p_1408->g_807.sf", print_hash_value);
    transparent_crc(p_1408->g_863.s0, "p_1408->g_863.s0", print_hash_value);
    transparent_crc(p_1408->g_863.s1, "p_1408->g_863.s1", print_hash_value);
    transparent_crc(p_1408->g_863.s2, "p_1408->g_863.s2", print_hash_value);
    transparent_crc(p_1408->g_863.s3, "p_1408->g_863.s3", print_hash_value);
    transparent_crc(p_1408->g_863.s4, "p_1408->g_863.s4", print_hash_value);
    transparent_crc(p_1408->g_863.s5, "p_1408->g_863.s5", print_hash_value);
    transparent_crc(p_1408->g_863.s6, "p_1408->g_863.s6", print_hash_value);
    transparent_crc(p_1408->g_863.s7, "p_1408->g_863.s7", print_hash_value);
    transparent_crc(p_1408->g_866.x, "p_1408->g_866.x", print_hash_value);
    transparent_crc(p_1408->g_866.y, "p_1408->g_866.y", print_hash_value);
    transparent_crc(p_1408->g_866.z, "p_1408->g_866.z", print_hash_value);
    transparent_crc(p_1408->g_866.w, "p_1408->g_866.w", print_hash_value);
    transparent_crc(p_1408->g_875.s0, "p_1408->g_875.s0", print_hash_value);
    transparent_crc(p_1408->g_875.s1, "p_1408->g_875.s1", print_hash_value);
    transparent_crc(p_1408->g_875.s2, "p_1408->g_875.s2", print_hash_value);
    transparent_crc(p_1408->g_875.s3, "p_1408->g_875.s3", print_hash_value);
    transparent_crc(p_1408->g_875.s4, "p_1408->g_875.s4", print_hash_value);
    transparent_crc(p_1408->g_875.s5, "p_1408->g_875.s5", print_hash_value);
    transparent_crc(p_1408->g_875.s6, "p_1408->g_875.s6", print_hash_value);
    transparent_crc(p_1408->g_875.s7, "p_1408->g_875.s7", print_hash_value);
    transparent_crc(p_1408->g_875.s8, "p_1408->g_875.s8", print_hash_value);
    transparent_crc(p_1408->g_875.s9, "p_1408->g_875.s9", print_hash_value);
    transparent_crc(p_1408->g_875.sa, "p_1408->g_875.sa", print_hash_value);
    transparent_crc(p_1408->g_875.sb, "p_1408->g_875.sb", print_hash_value);
    transparent_crc(p_1408->g_875.sc, "p_1408->g_875.sc", print_hash_value);
    transparent_crc(p_1408->g_875.sd, "p_1408->g_875.sd", print_hash_value);
    transparent_crc(p_1408->g_875.se, "p_1408->g_875.se", print_hash_value);
    transparent_crc(p_1408->g_875.sf, "p_1408->g_875.sf", print_hash_value);
    transparent_crc(p_1408->g_882.s0, "p_1408->g_882.s0", print_hash_value);
    transparent_crc(p_1408->g_882.s1, "p_1408->g_882.s1", print_hash_value);
    transparent_crc(p_1408->g_882.s2, "p_1408->g_882.s2", print_hash_value);
    transparent_crc(p_1408->g_882.s3, "p_1408->g_882.s3", print_hash_value);
    transparent_crc(p_1408->g_882.s4, "p_1408->g_882.s4", print_hash_value);
    transparent_crc(p_1408->g_882.s5, "p_1408->g_882.s5", print_hash_value);
    transparent_crc(p_1408->g_882.s6, "p_1408->g_882.s6", print_hash_value);
    transparent_crc(p_1408->g_882.s7, "p_1408->g_882.s7", print_hash_value);
    transparent_crc(p_1408->g_882.s8, "p_1408->g_882.s8", print_hash_value);
    transparent_crc(p_1408->g_882.s9, "p_1408->g_882.s9", print_hash_value);
    transparent_crc(p_1408->g_882.sa, "p_1408->g_882.sa", print_hash_value);
    transparent_crc(p_1408->g_882.sb, "p_1408->g_882.sb", print_hash_value);
    transparent_crc(p_1408->g_882.sc, "p_1408->g_882.sc", print_hash_value);
    transparent_crc(p_1408->g_882.sd, "p_1408->g_882.sd", print_hash_value);
    transparent_crc(p_1408->g_882.se, "p_1408->g_882.se", print_hash_value);
    transparent_crc(p_1408->g_882.sf, "p_1408->g_882.sf", print_hash_value);
    transparent_crc(p_1408->g_884.s0, "p_1408->g_884.s0", print_hash_value);
    transparent_crc(p_1408->g_884.s1, "p_1408->g_884.s1", print_hash_value);
    transparent_crc(p_1408->g_884.s2, "p_1408->g_884.s2", print_hash_value);
    transparent_crc(p_1408->g_884.s3, "p_1408->g_884.s3", print_hash_value);
    transparent_crc(p_1408->g_884.s4, "p_1408->g_884.s4", print_hash_value);
    transparent_crc(p_1408->g_884.s5, "p_1408->g_884.s5", print_hash_value);
    transparent_crc(p_1408->g_884.s6, "p_1408->g_884.s6", print_hash_value);
    transparent_crc(p_1408->g_884.s7, "p_1408->g_884.s7", print_hash_value);
    transparent_crc(p_1408->g_884.s8, "p_1408->g_884.s8", print_hash_value);
    transparent_crc(p_1408->g_884.s9, "p_1408->g_884.s9", print_hash_value);
    transparent_crc(p_1408->g_884.sa, "p_1408->g_884.sa", print_hash_value);
    transparent_crc(p_1408->g_884.sb, "p_1408->g_884.sb", print_hash_value);
    transparent_crc(p_1408->g_884.sc, "p_1408->g_884.sc", print_hash_value);
    transparent_crc(p_1408->g_884.sd, "p_1408->g_884.sd", print_hash_value);
    transparent_crc(p_1408->g_884.se, "p_1408->g_884.se", print_hash_value);
    transparent_crc(p_1408->g_884.sf, "p_1408->g_884.sf", print_hash_value);
    transparent_crc(p_1408->g_947.x, "p_1408->g_947.x", print_hash_value);
    transparent_crc(p_1408->g_947.y, "p_1408->g_947.y", print_hash_value);
    transparent_crc(p_1408->g_947.z, "p_1408->g_947.z", print_hash_value);
    transparent_crc(p_1408->g_947.w, "p_1408->g_947.w", print_hash_value);
    transparent_crc(p_1408->g_955.f0, "p_1408->g_955.f0", print_hash_value);
    transparent_crc(p_1408->g_965.s0, "p_1408->g_965.s0", print_hash_value);
    transparent_crc(p_1408->g_965.s1, "p_1408->g_965.s1", print_hash_value);
    transparent_crc(p_1408->g_965.s2, "p_1408->g_965.s2", print_hash_value);
    transparent_crc(p_1408->g_965.s3, "p_1408->g_965.s3", print_hash_value);
    transparent_crc(p_1408->g_965.s4, "p_1408->g_965.s4", print_hash_value);
    transparent_crc(p_1408->g_965.s5, "p_1408->g_965.s5", print_hash_value);
    transparent_crc(p_1408->g_965.s6, "p_1408->g_965.s6", print_hash_value);
    transparent_crc(p_1408->g_965.s7, "p_1408->g_965.s7", print_hash_value);
    transparent_crc(p_1408->g_965.s8, "p_1408->g_965.s8", print_hash_value);
    transparent_crc(p_1408->g_965.s9, "p_1408->g_965.s9", print_hash_value);
    transparent_crc(p_1408->g_965.sa, "p_1408->g_965.sa", print_hash_value);
    transparent_crc(p_1408->g_965.sb, "p_1408->g_965.sb", print_hash_value);
    transparent_crc(p_1408->g_965.sc, "p_1408->g_965.sc", print_hash_value);
    transparent_crc(p_1408->g_965.sd, "p_1408->g_965.sd", print_hash_value);
    transparent_crc(p_1408->g_965.se, "p_1408->g_965.se", print_hash_value);
    transparent_crc(p_1408->g_965.sf, "p_1408->g_965.sf", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1408->g_973[i][j].f0, "p_1408->g_973[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1408->g_994.s0, "p_1408->g_994.s0", print_hash_value);
    transparent_crc(p_1408->g_994.s1, "p_1408->g_994.s1", print_hash_value);
    transparent_crc(p_1408->g_994.s2, "p_1408->g_994.s2", print_hash_value);
    transparent_crc(p_1408->g_994.s3, "p_1408->g_994.s3", print_hash_value);
    transparent_crc(p_1408->g_994.s4, "p_1408->g_994.s4", print_hash_value);
    transparent_crc(p_1408->g_994.s5, "p_1408->g_994.s5", print_hash_value);
    transparent_crc(p_1408->g_994.s6, "p_1408->g_994.s6", print_hash_value);
    transparent_crc(p_1408->g_994.s7, "p_1408->g_994.s7", print_hash_value);
    transparent_crc(p_1408->g_994.s8, "p_1408->g_994.s8", print_hash_value);
    transparent_crc(p_1408->g_994.s9, "p_1408->g_994.s9", print_hash_value);
    transparent_crc(p_1408->g_994.sa, "p_1408->g_994.sa", print_hash_value);
    transparent_crc(p_1408->g_994.sb, "p_1408->g_994.sb", print_hash_value);
    transparent_crc(p_1408->g_994.sc, "p_1408->g_994.sc", print_hash_value);
    transparent_crc(p_1408->g_994.sd, "p_1408->g_994.sd", print_hash_value);
    transparent_crc(p_1408->g_994.se, "p_1408->g_994.se", print_hash_value);
    transparent_crc(p_1408->g_994.sf, "p_1408->g_994.sf", print_hash_value);
    transparent_crc(p_1408->g_998.s0, "p_1408->g_998.s0", print_hash_value);
    transparent_crc(p_1408->g_998.s1, "p_1408->g_998.s1", print_hash_value);
    transparent_crc(p_1408->g_998.s2, "p_1408->g_998.s2", print_hash_value);
    transparent_crc(p_1408->g_998.s3, "p_1408->g_998.s3", print_hash_value);
    transparent_crc(p_1408->g_998.s4, "p_1408->g_998.s4", print_hash_value);
    transparent_crc(p_1408->g_998.s5, "p_1408->g_998.s5", print_hash_value);
    transparent_crc(p_1408->g_998.s6, "p_1408->g_998.s6", print_hash_value);
    transparent_crc(p_1408->g_998.s7, "p_1408->g_998.s7", print_hash_value);
    transparent_crc(p_1408->g_998.s8, "p_1408->g_998.s8", print_hash_value);
    transparent_crc(p_1408->g_998.s9, "p_1408->g_998.s9", print_hash_value);
    transparent_crc(p_1408->g_998.sa, "p_1408->g_998.sa", print_hash_value);
    transparent_crc(p_1408->g_998.sb, "p_1408->g_998.sb", print_hash_value);
    transparent_crc(p_1408->g_998.sc, "p_1408->g_998.sc", print_hash_value);
    transparent_crc(p_1408->g_998.sd, "p_1408->g_998.sd", print_hash_value);
    transparent_crc(p_1408->g_998.se, "p_1408->g_998.se", print_hash_value);
    transparent_crc(p_1408->g_998.sf, "p_1408->g_998.sf", print_hash_value);
    transparent_crc(p_1408->g_1379.s0, "p_1408->g_1379.s0", print_hash_value);
    transparent_crc(p_1408->g_1379.s1, "p_1408->g_1379.s1", print_hash_value);
    transparent_crc(p_1408->g_1379.s2, "p_1408->g_1379.s2", print_hash_value);
    transparent_crc(p_1408->g_1379.s3, "p_1408->g_1379.s3", print_hash_value);
    transparent_crc(p_1408->g_1379.s4, "p_1408->g_1379.s4", print_hash_value);
    transparent_crc(p_1408->g_1379.s5, "p_1408->g_1379.s5", print_hash_value);
    transparent_crc(p_1408->g_1379.s6, "p_1408->g_1379.s6", print_hash_value);
    transparent_crc(p_1408->g_1379.s7, "p_1408->g_1379.s7", print_hash_value);
    transparent_crc(p_1408->g_1379.s8, "p_1408->g_1379.s8", print_hash_value);
    transparent_crc(p_1408->g_1379.s9, "p_1408->g_1379.s9", print_hash_value);
    transparent_crc(p_1408->g_1379.sa, "p_1408->g_1379.sa", print_hash_value);
    transparent_crc(p_1408->g_1379.sb, "p_1408->g_1379.sb", print_hash_value);
    transparent_crc(p_1408->g_1379.sc, "p_1408->g_1379.sc", print_hash_value);
    transparent_crc(p_1408->g_1379.sd, "p_1408->g_1379.sd", print_hash_value);
    transparent_crc(p_1408->g_1379.se, "p_1408->g_1379.se", print_hash_value);
    transparent_crc(p_1408->g_1379.sf, "p_1408->g_1379.sf", print_hash_value);
    transparent_crc(p_1408->v_collective, "p_1408->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 54; i++)
            transparent_crc(p_1408->g_special_values[i + 54 * get_linear_group_id()], "p_1408->g_special_values[i + 54 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 54; i++)
            transparent_crc(p_1408->l_special_values[i], "p_1408->l_special_values[i]", print_hash_value);
    transparent_crc(p_1408->l_comm_values[get_linear_local_id()], "p_1408->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1408->g_comm_values[get_linear_group_id() * 30 + get_linear_local_id()], "p_1408->g_comm_values[get_linear_group_id() * 30 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
