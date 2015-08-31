// ---fake_divergence -g 1,5,1109 -l 1,1,1
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


// Seed: 46

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   int64_t  f1;
   int16_t  f2;
   volatile int32_t  f3;
   volatile uint64_t  f4;
   uint32_t  f5;
   volatile uint16_t  f6;
   volatile uint16_t  f7;
};

struct S1 {
   int32_t  f0;
   int16_t  f1;
};

struct S2 {
   int32_t  f0;
   uint64_t  f1;
   uint64_t  f2;
   int16_t  f3;
   volatile struct S0  f4;
};

struct S3 {
   int64_t  f0;
   volatile uint64_t  f1;
   volatile int8_t  f2;
   uint32_t  f3;
   volatile int32_t  f4;
};

struct S4 {
    uint8_t g_20;
    int32_t g_22;
    int32_t * volatile g_21;
    int32_t g_41;
    struct S0 g_48;
    struct S0 g_89;
    struct S0 *g_88;
    volatile VECTOR(int32_t, 16) g_91;
    int32_t *g_113;
    int32_t ** volatile g_112;
    volatile struct S0 g_115;
    int16_t *g_118[3];
    int16_t *g_119;
    VECTOR(int16_t, 16) g_125;
    VECTOR(int16_t, 16) g_126;
    VECTOR(int16_t, 4) g_127;
    uint32_t g_132;
    VECTOR(uint32_t, 16) g_134;
    struct S3 g_142;
    uint8_t g_165;
    int32_t * volatile g_168;
    int32_t ** volatile g_172;
    struct S1 g_180[6][6];
    VECTOR(int32_t, 16) g_182;
    volatile struct S2 g_184;
    int16_t *g_185;
    volatile VECTOR(int16_t, 4) g_186;
    struct S3 g_220;
    struct S0 g_253;
    struct S3 g_258[3][8][9];
    struct S3 *g_257;
    struct S3 **g_256;
    uint64_t g_264;
    uint64_t g_268;
    VECTOR(uint32_t, 8) g_293;
    VECTOR(uint32_t, 16) g_304;
    uint64_t g_318;
    VECTOR(int32_t, 2) g_320;
    VECTOR(int16_t, 8) g_325;
    VECTOR(int16_t, 16) g_326;
    VECTOR(int16_t, 16) g_327;
    VECTOR(uint16_t, 4) g_337;
    VECTOR(int32_t, 4) g_345;
    VECTOR(int32_t, 8) g_346;
    VECTOR(int32_t, 4) g_347;
    VECTOR(int32_t, 8) g_348;
    VECTOR(int64_t, 2) g_351;
    int8_t g_355;
    volatile uint16_t g_360;
    uint8_t g_364;
    volatile struct S3 g_380;
    volatile VECTOR(int16_t, 4) g_392;
    int32_t *g_410;
    int32_t ** volatile g_412;
    int32_t ** volatile g_413;
    int32_t ** volatile g_414;
    uint16_t g_416;
    int32_t ** volatile g_425;
    int64_t *g_461;
    VECTOR(int16_t, 4) g_513;
    VECTOR(uint32_t, 4) g_549;
    uint32_t g_561;
    int64_t **g_587;
    int64_t ***g_586;
    volatile VECTOR(uint8_t, 16) g_589;
    volatile VECTOR(int64_t, 8) g_631;
    VECTOR(uint8_t, 2) g_661;
    volatile VECTOR(uint8_t, 2) g_662;
    VECTOR(uint8_t, 16) g_688;
    int64_t g_700[7];
    VECTOR(int64_t, 2) g_701;
    volatile VECTOR(int16_t, 2) g_710;
    volatile VECTOR(int64_t, 8) g_711;
    volatile VECTOR(int64_t, 16) g_713;
    VECTOR(int64_t, 8) g_714;
    volatile VECTOR(int64_t, 8) g_715;
    VECTOR(int64_t, 2) g_717;
    VECTOR(int64_t, 4) g_718;
    volatile uint16_t *g_726;
    volatile uint16_t * volatile *g_725;
    uint32_t * volatile g_731;
    uint32_t * volatile * volatile g_730;
    uint32_t * volatile * volatile * volatile g_732;
    VECTOR(int32_t, 4) g_735;
    VECTOR(uint16_t, 4) g_751;
    VECTOR(uint16_t, 4) g_752;
    VECTOR(uint16_t, 16) g_757;
    int32_t g_762;
    VECTOR(uint64_t, 8) g_765;
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
int64_t  func_1(struct S4 * p_769);
uint8_t  func_17(int16_t  p_18, int16_t  p_19, struct S4 * p_769);
struct S0 * func_25(int32_t  p_26, struct S0 * p_27, int64_t  p_28, int8_t  p_29, int32_t  p_30, struct S4 * p_769);
struct S0 * func_31(int32_t  p_32, int32_t * p_33, struct S4 * p_769);
uint32_t  func_42(int16_t  p_43, int32_t * p_44, uint32_t  p_45, int32_t * p_46, struct S4 * p_769);
int16_t  func_55(struct S0 * p_56, uint32_t  p_57, int32_t  p_58, uint32_t  p_59, int16_t * p_60, struct S4 * p_769);
uint16_t  func_61(struct S1  p_62, int8_t  p_63, uint16_t  p_64, int64_t  p_65, int16_t  p_66, struct S4 * p_769);
struct S1  func_67(int16_t * p_68, int64_t  p_69, int32_t * p_70, int32_t  p_71, struct S4 * p_769);
struct S0 * func_74(uint32_t  p_75, int32_t * p_76, struct S0 * p_77, struct S4 * p_769);
uint32_t  func_82(int32_t * p_83, uint64_t  p_84, struct S0 * p_85, struct S4 * p_769);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_769->g_20 p_769->g_21 p_769->g_142.f4 p_769->g_364 p_769->g_185 p_769->g_661 p_769->g_662 p_769->g_142.f1 p_769->g_380.f1 p_769->g_258.f0 p_769->g_561 p_769->g_264 p_769->g_113 p_769->g_41 p_769->g_253.f5 p_769->g_180 p_769->g_182 p_769->g_172 p_769->g_345 p_769->g_351 p_769->g_700 p_769->g_168 p_769->g_725 p_769->g_711 p_769->g_730 p_769->g_732 p_769->g_89.f5 p_769->g_735 p_769->g_220.f2 p_769->g_751 p_769->g_752 p_769->g_220.f0 p_769->g_757 p_769->g_762 p_769->g_765 p_769->g_48.f5 p_769->g_293 p_769->g_318 p_769->g_549 p_769->g_127
 * writes: p_769->g_22 p_769->g_20 p_769->g_364 p_769->g_165 p_769->g_180.f1 p_769->g_118 p_769->g_264 p_769->g_41 p_769->g_253.f5 p_769->g_345 p_769->g_88 p_769->g_730 p_769->g_89.f5 p_769->g_549
 */
int64_t  func_1(struct S4 * p_769)
{ /* block id: 4 */
    VECTOR(uint8_t, 16) l_2 = (VECTOR(uint8_t, 16))(0x0AL, (VECTOR(uint8_t, 4))(0x0AL, (VECTOR(uint8_t, 2))(0x0AL, 6UL), 6UL), 6UL, 0x0AL, 6UL, (VECTOR(uint8_t, 2))(0x0AL, 6UL), (VECTOR(uint8_t, 2))(0x0AL, 6UL), 0x0AL, 6UL, 0x0AL, 6UL);
    VECTOR(uint8_t, 8) l_3 = (VECTOR(uint8_t, 8))(0xFEL, (VECTOR(uint8_t, 4))(0xFEL, (VECTOR(uint8_t, 2))(0xFEL, 246UL), 246UL), 246UL, 0xFEL, 246UL);
    VECTOR(uint8_t, 4) l_6 = (VECTOR(uint8_t, 4))(0xB6L, (VECTOR(uint8_t, 2))(0xB6L, 0UL), 0UL);
    VECTOR(uint8_t, 4) l_7 = (VECTOR(uint8_t, 4))(0x5AL, (VECTOR(uint8_t, 2))(0x5AL, 255UL), 255UL);
    VECTOR(uint8_t, 8) l_14 = (VECTOR(uint8_t, 8))(3UL, (VECTOR(uint8_t, 4))(3UL, (VECTOR(uint8_t, 2))(3UL, 255UL), 255UL), 255UL, 3UL, 255UL);
    int32_t l_638 = 0x5F49113EL;
    uint8_t *l_639 = (void*)0;
    uint8_t *l_640 = &p_769->g_364;
    uint8_t *l_643 = &p_769->g_165;
    VECTOR(uint32_t, 8) l_646 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x9C4539FBL), 0x9C4539FBL), 0x9C4539FBL, 4294967295UL, 0x9C4539FBL);
    VECTOR(int8_t, 4) l_649 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 2L), 2L);
    int16_t *l_654 = (void*)0;
    int16_t **l_655 = &p_769->g_118[1];
    VECTOR(uint8_t, 8) l_658 = (VECTOR(uint8_t, 8))(0x8DL, (VECTOR(uint8_t, 4))(0x8DL, (VECTOR(uint8_t, 2))(0x8DL, 0x5BL), 0x5BL), 0x5BL, 0x8DL, 0x5BL);
    VECTOR(uint8_t, 16) l_663 = (VECTOR(uint8_t, 16))(0x16L, (VECTOR(uint8_t, 4))(0x16L, (VECTOR(uint8_t, 2))(0x16L, 255UL), 255UL), 255UL, 0x16L, 255UL, (VECTOR(uint8_t, 2))(0x16L, 255UL), (VECTOR(uint8_t, 2))(0x16L, 255UL), 0x16L, 255UL, 0x16L, 255UL);
    VECTOR(uint8_t, 4) l_664 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 254UL), 254UL);
    VECTOR(uint8_t, 2) l_667 = (VECTOR(uint8_t, 2))(0UL, 0x57L);
    uint32_t l_670[9][4] = {{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL}};
    uint64_t *l_671 = &p_769->g_264;
    VECTOR(int64_t, 16) l_712 = (VECTOR(int64_t, 16))(0x3D00C541C30D2201L, (VECTOR(int64_t, 4))(0x3D00C541C30D2201L, (VECTOR(int64_t, 2))(0x3D00C541C30D2201L, 0x1A7ADFA8EA23A4C2L), 0x1A7ADFA8EA23A4C2L), 0x1A7ADFA8EA23A4C2L, 0x3D00C541C30D2201L, 0x1A7ADFA8EA23A4C2L, (VECTOR(int64_t, 2))(0x3D00C541C30D2201L, 0x1A7ADFA8EA23A4C2L), (VECTOR(int64_t, 2))(0x3D00C541C30D2201L, 0x1A7ADFA8EA23A4C2L), 0x3D00C541C30D2201L, 0x1A7ADFA8EA23A4C2L, 0x3D00C541C30D2201L, 0x1A7ADFA8EA23A4C2L);
    int64_t l_721[5];
    VECTOR(uint16_t, 4) l_753 = (VECTOR(uint16_t, 4))(0xA945L, (VECTOR(uint16_t, 2))(0xA945L, 0x4EF0L), 0x4EF0L);
    VECTOR(uint64_t, 4) l_763 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x2FC95F0FFEC1BF02L), 0x2FC95F0FFEC1BF02L);
    int i, j;
    for (i = 0; i < 5; i++)
        l_721[i] = 9L;
    if ((((((*l_671) = ((((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 16))(l_2.se2949f4ffcf33f23)), ((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(4UL, 0UL)).hi, 0UL, 0x52L, 0xEEL)).ywwxywzx, ((VECTOR(uint8_t, 16))(l_3.s7232167420426276)).hi, ((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 2))(0x8EL, 0xE5L)).xyyx))).yxzwxzxx))).s1102371264770574, ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(255UL, 0xB8L, ((VECTOR(uint8_t, 2))(l_6.xz)), ((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 8))(0UL, 0xA2L, 250UL, 0UL, 0xC4L, ((VECTOR(uint8_t, 2))(255UL, 9UL)), 0xBFL)), ((VECTOR(uint8_t, 16))(l_7.zwwzzyyyzxwzxyyw)).even))), ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 16))(add_sat(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(l_14.s03364655)).s2565145630642657 + ((VECTOR(uint8_t, 2))(0UL, 0xAEL)).xxxxyxxxxxxxyxyy))), ((VECTOR(uint8_t, 4))(0x5BL, 0x69L, 0x5CL, 249UL)).xxzzzyyyyxxzzxzz))).odd, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(246UL, 250UL, (l_638 = func_17(l_7.x, p_769->g_20, p_769)), ((*l_643) = (++(*l_640))), (safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(l_646.s74273501)).s7, (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 2))(l_649.yy)).xyyxyxyy, ((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),VECTOR(uint8_t, 8),((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))((safe_rshift_func_int16_t_s_u(((*p_769->g_185) = (-7L)), (l_654 != ((*l_655) = p_769->g_185)))), ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(l_658.s2403261750741655)).s9c + ((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(p_769->g_661.yx)) + ((VECTOR(uint8_t, 4))(p_769->g_662.xyxy)).even))).yxyyyyxx, ((VECTOR(uint8_t, 4))(l_663.s021b)).zzzywxxz, ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(l_664.xyxwyxxyzzywzxyy)) | ((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 16))(0UL, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 4))(l_667.yxxx)).odd, ((VECTOR(uint8_t, 2))(0x32L, 0x04L)), ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(0xBBL, 0xBEL)).xxyyyxxx + ((VECTOR(uint8_t, 16))(l_3.s6, 0x58L, (((l_638 = p_769->g_142.f1) == GROUP_DIVERGE(1, 1)) < (1L || l_670[2][2])), 0xA6L, l_2.s5, p_769->g_380.f1, 6UL, ((VECTOR(uint8_t, 8))(248UL)), 253UL)).hi))).s22))), 1UL, ((VECTOR(uint8_t, 8))(0x88L)), l_670[7][1], 0xBAL, 0x6DL, 0UL, 0x09L)).s8612 ^ ((VECTOR(uint8_t, 4))(246UL))))).even, ((VECTOR(uint8_t, 2))(1UL))))), ((VECTOR(uint8_t, 4))(255UL)), 0x39L, 253UL)).odd * ((VECTOR(uint8_t, 4))(255UL))))), ((VECTOR(uint8_t, 8))(0x7EL)), l_670[2][3], 4UL, 0xB1L)).hi, ((VECTOR(uint8_t, 8))(7UL))))).s4154511635525101))).lo))).s30))), 0x85L, ((VECTOR(uint8_t, 4))(1UL)), ((VECTOR(uint8_t, 8))(0xABL)))) + ((VECTOR(uint8_t, 16))(1UL))))).odd, ((VECTOR(uint8_t, 8))(247UL)), ((VECTOR(uint8_t, 8))(1UL)))))))) && ((VECTOR(int16_t, 8))((-7L)))))).s27, ((VECTOR(int16_t, 2))((-10L)))))), ((VECTOR(int16_t, 2))(0x640DL)), 0x780BL, 0x2CA7L, 0x1E74L, (-9L), 4L, l_663.s1, ((VECTOR(int16_t, 4))(1L)), 0x0F19L, 5L)).odd >= ((VECTOR(int16_t, 8))((-7L)))))).s7, 9L)))), ((VECTOR(uint8_t, 4))(247UL)), 1UL, 255UL, p_769->g_258[1][5][0].f0, 9UL, p_769->g_561, 254UL, 255UL)).s94 + ((VECTOR(uint8_t, 2))(0UL))))).yyyxxxxx, ((VECTOR(uint8_t, 8))(255UL))))).s27))) + ((VECTOR(uint8_t, 2))(255UL))))) + ((VECTOR(uint8_t, 2))(253UL))))), 0UL, 0UL)) + ((VECTOR(uint8_t, 16))(255UL)))))))).sa , 0xAC59CCBEL) && l_667.x)) > l_667.x) , l_7.x) != l_658.s3))
    { /* block id: 275 */
        uint64_t l_674[8][5] = {{0x1A55A5A9000C1E08L,0x1A55A5A9000C1E08L,0x1EF27CF6F55AF009L,0x6222016ECCE5127DL,0UL},{0x1A55A5A9000C1E08L,0x1A55A5A9000C1E08L,0x1EF27CF6F55AF009L,0x6222016ECCE5127DL,0UL},{0x1A55A5A9000C1E08L,0x1A55A5A9000C1E08L,0x1EF27CF6F55AF009L,0x6222016ECCE5127DL,0UL},{0x1A55A5A9000C1E08L,0x1A55A5A9000C1E08L,0x1EF27CF6F55AF009L,0x6222016ECCE5127DL,0UL},{0x1A55A5A9000C1E08L,0x1A55A5A9000C1E08L,0x1EF27CF6F55AF009L,0x6222016ECCE5127DL,0UL},{0x1A55A5A9000C1E08L,0x1A55A5A9000C1E08L,0x1EF27CF6F55AF009L,0x6222016ECCE5127DL,0UL},{0x1A55A5A9000C1E08L,0x1A55A5A9000C1E08L,0x1EF27CF6F55AF009L,0x6222016ECCE5127DL,0UL},{0x1A55A5A9000C1E08L,0x1A55A5A9000C1E08L,0x1EF27CF6F55AF009L,0x6222016ECCE5127DL,0UL}};
        int32_t *l_675[8][2] = {{(void*)0,&p_769->g_22},{(void*)0,&p_769->g_22},{(void*)0,&p_769->g_22},{(void*)0,&p_769->g_22},{(void*)0,&p_769->g_22},{(void*)0,&p_769->g_22},{(void*)0,&p_769->g_22},{(void*)0,&p_769->g_22}};
        int32_t **l_676 = &l_675[7][0];
        int i, j;
        for (p_769->g_264 = (-25); (p_769->g_264 <= 16); p_769->g_264 = safe_add_func_uint32_t_u_u(p_769->g_264, 7))
        { /* block id: 278 */
            (*p_769->g_113) &= l_674[7][0];
        }
        (*l_676) = l_675[2][0];
    }
    else
    { /* block id: 282 */
        uint8_t l_683 = 0x34L;
        uint16_t l_691 = 0x87F8L;
        VECTOR(int64_t, 16) l_716 = (VECTOR(int64_t, 16))((-8L), (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), 0x67EBBCA134B3EA1EL), 0x67EBBCA134B3EA1EL), 0x67EBBCA134B3EA1EL, (-8L), 0x67EBBCA134B3EA1EL, (VECTOR(int64_t, 2))((-8L), 0x67EBBCA134B3EA1EL), (VECTOR(int64_t, 2))((-8L), 0x67EBBCA134B3EA1EL), (-8L), 0x67EBBCA134B3EA1EL, (-8L), 0x67EBBCA134B3EA1EL);
        int32_t l_720 = 0x32D14429L;
        uint8_t l_722 = 4UL;
        VECTOR(uint16_t, 2) l_756 = (VECTOR(uint16_t, 2))(0UL, 0xB688L);
        int32_t l_766 = 0L;
        int i;
        for (p_769->g_253.f5 = 10; (p_769->g_253.f5 > 15); p_769->g_253.f5 = safe_add_func_uint64_t_u_u(p_769->g_253.f5, 8))
        { /* block id: 285 */
            uint8_t l_690 = 3UL;
            int64_t l_719 = (-2L);
            VECTOR(int32_t, 16) l_736 = (VECTOR(int32_t, 16))(0x16EFB49EL, (VECTOR(int32_t, 4))(0x16EFB49EL, (VECTOR(int32_t, 2))(0x16EFB49EL, (-3L)), (-3L)), (-3L), 0x16EFB49EL, (-3L), (VECTOR(int32_t, 2))(0x16EFB49EL, (-3L)), (VECTOR(int32_t, 2))(0x16EFB49EL, (-3L)), 0x16EFB49EL, (-3L), 0x16EFB49EL, (-3L));
            VECTOR(uint16_t, 4) l_750 = (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 1UL), 1UL);
            int i;
            for (p_769->g_364 = 0; (p_769->g_364 > 46); ++p_769->g_364)
            { /* block id: 288 */
                uint8_t **l_689 = &l_639;
                int32_t l_698 = 0x141E06F3L;
                int32_t **l_706 = &p_769->g_410;
                (*p_769->g_113) = (p_769->g_661.y & (p_769->g_180[5][4] , ((VECTOR(uint16_t, 16))(upsample(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))((((l_683 ^ p_769->g_589.s0) ^ l_683) , 0x33L), 0xF3L, ((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 16))(add_sat(((VECTOR(uint8_t, 4))(0x9DL, ((VECTOR(uint8_t, 2))((+((VECTOR(uint8_t, 2))(abs(((VECTOR(uint8_t, 2))(p_769->g_688.s45)))))))), 1UL)).xzwxxwyzzyxwxxxy, ((VECTOR(uint8_t, 16))((l_683 != ((((*l_689) = &p_769->g_165) != &p_769->g_364) || 1UL)), l_690, ((VECTOR(uint8_t, 8))(255UL)), ((VECTOR(uint8_t, 2))(0x96L)), ((VECTOR(uint8_t, 2))(0xB6L)), 0x1CL, 0UL))))).sa012, ((VECTOR(uint8_t, 4))(0x7CL))))).zwzwxyyzzxwxwwwz + ((VECTOR(uint8_t, 16))(5UL))))).lo + ((VECTOR(uint8_t, 8))(0xAEL))))).even))).even, ((VECTOR(uint8_t, 2))(254UL))))), p_769->g_662.y, l_691, 0x4AL, 0xDEL, ((VECTOR(uint8_t, 4))(0x66L)), ((VECTOR(uint8_t, 2))(0x2CL)), 0x4BL, 1UL)) - ((VECTOR(uint8_t, 16))(0x03L))))), ((VECTOR(uint8_t, 16))(0x45L))))).sa));
                if ((safe_rshift_func_int16_t_s_s(l_683, (p_769->g_182.s6 >= l_658.s7))))
                { /* block id: 291 */
                    int32_t *l_694 = (void*)0;
                    int32_t *l_695[9] = {&p_769->g_22,&p_769->g_22,&p_769->g_22,&p_769->g_22,&p_769->g_22,&p_769->g_22,&p_769->g_22,&p_769->g_22,&p_769->g_22};
                    int64_t *l_699[1][9][6] = {{{&p_769->g_700[1],&p_769->g_700[2],&p_769->g_700[5],&p_769->g_700[6],&p_769->g_700[5],&p_769->g_700[2]},{&p_769->g_700[1],&p_769->g_700[2],&p_769->g_700[5],&p_769->g_700[6],&p_769->g_700[5],&p_769->g_700[2]},{&p_769->g_700[1],&p_769->g_700[2],&p_769->g_700[5],&p_769->g_700[6],&p_769->g_700[5],&p_769->g_700[2]},{&p_769->g_700[1],&p_769->g_700[2],&p_769->g_700[5],&p_769->g_700[6],&p_769->g_700[5],&p_769->g_700[2]},{&p_769->g_700[1],&p_769->g_700[2],&p_769->g_700[5],&p_769->g_700[6],&p_769->g_700[5],&p_769->g_700[2]},{&p_769->g_700[1],&p_769->g_700[2],&p_769->g_700[5],&p_769->g_700[6],&p_769->g_700[5],&p_769->g_700[2]},{&p_769->g_700[1],&p_769->g_700[2],&p_769->g_700[5],&p_769->g_700[6],&p_769->g_700[5],&p_769->g_700[2]},{&p_769->g_700[1],&p_769->g_700[2],&p_769->g_700[5],&p_769->g_700[6],&p_769->g_700[5],&p_769->g_700[2]},{&p_769->g_700[1],&p_769->g_700[2],&p_769->g_700[5],&p_769->g_700[6],&p_769->g_700[5],&p_769->g_700[2]}}};
                    int32_t ***l_703 = (void*)0;
                    int32_t **l_705[1];
                    int32_t ***l_704 = &l_705[0];
                    int32_t ***l_707 = &l_706;
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_705[i] = &p_769->g_410;
                    p_769->g_345.y |= (**p_769->g_172);
                    (*p_769->g_113) = (safe_sub_func_int64_t_s_s(p_769->g_351.y, ((VECTOR(int64_t, 16))(l_690, (p_769->g_700[3] ^= (l_698 = 0x0B12BFC2C7113A64L)), l_691, 1L, ((VECTOR(int64_t, 2))(p_769->g_701.yy)), ((GROUP_DIVERGE(2, 1) | (safe_unary_minus_func_int8_t_s(((((*l_704) = (void*)0) != ((*l_707) = l_706)) > (safe_add_func_int16_t_s_s(((*p_769->g_119) = ((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(p_769->g_710.yy)).xyyy && ((VECTOR(int16_t, 4))(5L, (((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),VECTOR(int64_t, 16),((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 4))(p_769->g_711.s1273)).xzzzyyxw, ((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 8))((!((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))((-3L), 0x5CC6D62AA6A5924AL, 0x692691933F0915C4L, 0x62AEF48F1E864ECBL)).lo && ((VECTOR(int64_t, 4))(l_712.s4c8b)).lo))).xxyxyxyy))).s5257206346504200, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(p_769->g_713.s49a283fb)).hi > ((VECTOR(int64_t, 4))(p_769->g_714.s7257))))).xxzwxyxxyzxzyzzy, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(p_769->g_715.s7605)).even < ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(l_716.sba4e)).hi && ((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),int64_t,((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 4))(p_769->g_717.xyyy)).xzyyzwwz, ((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 8))(p_769->g_718.zyxxzwzw)).lo, ((VECTOR(int64_t, 8))(l_698, 0x687543FDF7DC0DD6L, 0x7DBD24EF2A261ECFL, 0x6CC8DDF3D639821CL, l_719, ((VECTOR(int64_t, 2))(0x50DF5FE150B710D1L)), (-1L))).even))).even))).yyxxxxxx))).s0102471613353400, (int64_t)l_719, (int64_t)l_690))).s90))) < ((VECTOR(int64_t, 2))(0x10AA8A1752FB424BL)))))))).yxxyyyxxxyxxxyxx))).hi, ((VECTOR(int64_t, 8))((-9L))))))))).s43 | ((VECTOR(int64_t, 2))(0x596B9DD79B8EF39AL))))), l_719, 0L, 0x32812E38E348EF24L, (-1L), (-4L), 0L)).s14, ((VECTOR(int64_t, 2))(0x23E73415735B3376L))))).yyxxyyyxyxxyxyyy != ((VECTOR(int64_t, 16))(0L))))), ((VECTOR(int64_t, 16))(0L)), ((VECTOR(int64_t, 16))(0x5B96F14F9F7197E8L))))).sa , l_690), 0x163EL, 0x0395L))))).zyxywywwyxwywwxz < ((VECTOR(int16_t, 16))(1L))))).s8a7e < ((VECTOR(int16_t, 4))(0L))))).wwxyxxyx, ((VECTOR(int16_t, 8))((-10L))), ((VECTOR(int16_t, 8))((-3L)))))).s3), l_663.sa)))))) <= 65534UL), 0x54B7C68FA07333DFL, 0x02AC076BDFE73C86L, ((VECTOR(int64_t, 2))(0x6607EB8F2DEF2CB1L)), l_3.s3, 1L, 0x660CECC54BE0FF29L, 0x39FF397841A36E2FL, 0x64E459791F8BBA25L)).s8));
                    l_722++;
                }
                else
                { /* block id: 300 */
                    return p_769->g_700[3];
                }
                (*p_769->g_113) = (*p_769->g_168);
            }
            if ((~(p_769->g_725 != (void*)0)))
            { /* block id: 305 */
                struct S0 **l_727 = &p_769->g_88;
                (*l_727) = &p_769->g_48;
                (*p_769->g_113) |= l_690;
                return p_769->g_711.s2;
            }
            else
            { /* block id: 309 */
                (*p_769->g_113) ^= 0L;
                for (l_722 = 0; (l_722 <= 50); ++l_722)
                { /* block id: 313 */
                    (*p_769->g_732) = p_769->g_730;
                }
            }
            for (p_769->g_89.f5 = 14; (p_769->g_89.f5 < 42); ++p_769->g_89.f5)
            { /* block id: 319 */
                VECTOR(uint32_t, 2) l_741 = (VECTOR(uint32_t, 2))(1UL, 0UL);
                VECTOR(uint64_t, 8) l_764 = (VECTOR(uint64_t, 8))(0xA8BC114ADAA566A8L, (VECTOR(uint64_t, 4))(0xA8BC114ADAA566A8L, (VECTOR(uint64_t, 2))(0xA8BC114ADAA566A8L, 0UL), 0UL), 0UL, 0xA8BC114ADAA566A8L, 0UL);
                uint16_t *l_767 = &l_691;
                int32_t l_768 = 0x2A4959D3L;
                int i;
                l_768 = (l_638 = ((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(p_769->g_735.yzzx)).hi, ((VECTOR(int32_t, 4))(l_736.s8d48)).hi))).yxyxyxxxyyyyyxxy, (int32_t)(((*l_640) &= (safe_add_func_uint32_t_u_u((p_769->g_549.z ^= (safe_mul_func_int16_t_s_s(l_690, (((VECTOR(uint32_t, 2))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 8))((~((VECTOR(uint32_t, 2))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 8))(0xA8943F37L, 0x8399FF03L, ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(l_741.xx)).yyyxyxyxyxyyyxyx ^ ((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),uint32_t,((VECTOR(uint32_t, 2))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 2))(0xCA026C13L, 5UL)), ((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 8))((0x5097CB0A677A32A6L | ((safe_div_func_int8_t_s_s(((safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(0x6F09B814L, ((p_769->g_220.f2 , l_741.x) == (safe_lshift_func_uint16_t_u_u((~((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(l_750.zyzzyyzywzywwxxz)).lo - ((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 16))(p_769->g_751.yxzzzxyyzyzzyyyw)).s054f, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x69BCL, 0x364CL)), 0x80C0L, 6UL))))).zwywwzwwyzwxzwzz & ((VECTOR(uint16_t, 16))(p_769->g_752.xwxwwwzzzzyxyzxz))))).sf6ac, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(l_753.zzxw)), 0UL, ((VECTOR(uint16_t, 8))((-((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(l_756.xyyxxxxyxxxyyyyy)).s5e23 + ((VECTOR(uint16_t, 4))(5UL, ((VECTOR(uint16_t, 2))(65532UL, 65535UL)), 3UL))))).zyzwwzwy))), p_769->g_220.f0, 65530UL, 65534UL)).s77b4))).xxxzwyyx))).s31, ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(3UL, 0x1678L)).xyxx & ((VECTOR(uint16_t, 2))(p_769->g_757.s29)).yxxx))).yzwxyzxxwzwyzywz | ((VECTOR(uint16_t, 8))((((((*l_767) = ((~(safe_mul_func_uint8_t_u_u(((((safe_div_func_int16_t_s_s(((*p_769->g_185) ^= (((*l_643) = 1UL) == p_769->g_762)), l_741.x)) , (((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_763.xy)), 0xCE3556EBB7D11393L, 18446744073709551615UL)).xwwxwzwx, ((VECTOR(uint64_t, 4))(min(((VECTOR(uint64_t, 16))(l_764.s1416055015663576)).sb70b, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(p_769->g_765.s03)), l_722, 4UL, 18446744073709551607UL, 0x98D56B39E95F8709L, FAKE_DIVERGE(p_769->group_1_offset, get_group_id(1), 10), 0x3969F40F27A6CF74L, l_766, l_716.s6, 0x52BD58410F2965FDL, ((VECTOR(uint64_t, 4))(0x691EED6E208E962BL)), 0x43963CDD1FA87F2BL)).sfa93))).wwywwyyx))).s4 , (*p_769->g_113))) | 4294967295UL) , FAKE_DIVERGE(p_769->global_2_offset, get_global_id(2), 10)), 0xC0L))) ^ 0x4A7CECA01B2A886DL)) && l_716.sb) , p_769->g_752.x) == 0x13B4L), l_750.w, p_769->g_48.f5, ((VECTOR(uint16_t, 4))(0x4943L)), 0x1CB3L)).s0155254353135077))).sc2))).hi), 14))), ((VECTOR(uint32_t, 8))(0x38509498L)), ((VECTOR(uint32_t, 4))(0UL)), 0x40307180L, 4294967295UL)).s5, l_690)) || l_683), l_750.y)) || p_769->g_293.s5)), ((VECTOR(uint32_t, 2))(0x74A1D095L)), GROUP_DIVERGE(0, 1), 0xF8D0961BL, ((VECTOR(uint32_t, 2))(0x445E7548L)), 0x8B79F43CL)), ((VECTOR(uint32_t, 8))(1UL))))).s4216150561375040))).sd1, ((VECTOR(uint32_t, 2))(1UL))))), (uint32_t)0x2BB24252L, (uint32_t)p_769->g_318))).yyxyyxxyxxxyyyyx))).s03ec & ((VECTOR(uint32_t, 4))(4294967294UL))))), 0x21B6ABA9L, 9UL)).s50, ((VECTOR(uint32_t, 2))(0x6050DC25L)), ((VECTOR(uint32_t, 2))(0x1D50C94CL))))).xxxxyyyy))).s22, ((VECTOR(uint32_t, 2))(0x8BA0D124L))))).lo == l_756.y)))), l_721[3]))) != l_756.x)))).s9);
                if ((**p_769->g_172))
                    continue;
            }
        }
    }
    return p_769->g_127.z;
}


/* ------------------------------------------ */
/* 
 * reads : p_769->g_20 p_769->g_21 p_769->g_142.f4
 * writes: p_769->g_22 p_769->g_20
 */
uint8_t  func_17(int16_t  p_18, int16_t  p_19, struct S4 * p_769)
{ /* block id: 5 */
    int32_t *l_40[6][2][4] = {{{&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41},{&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41}},{{&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41},{&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41}},{{&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41},{&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41}},{{&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41},{&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41}},{{&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41},{&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41}},{{&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41},{&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41}}};
    uint16_t *l_628 = &p_769->g_416;
    int i, j, k;
    (*p_769->g_21) = p_769->g_20;
    for (p_769->g_20 = (-26); (p_769->g_20 == 60); p_769->g_20 = safe_add_func_uint32_t_u_u(p_769->g_20, 8))
    { /* block id: 9 */
        int32_t l_37 = 1L;
        int32_t *l_38 = (void*)0;
        uint64_t l_39 = 0x404D083830386B9BL;
        struct S0 **l_618 = &p_769->g_88;
        uint32_t l_619 = 1UL;
        uint16_t *l_621[10] = {&p_769->g_416,&p_769->g_416,&p_769->g_416,&p_769->g_416,&p_769->g_416,&p_769->g_416,&p_769->g_416,&p_769->g_416,&p_769->g_416,&p_769->g_416};
        uint16_t **l_620 = &l_621[6];
        uint16_t *l_623 = (void*)0;
        uint16_t **l_622[10] = {&l_623,&l_623,&l_623,&l_623,&l_623,&l_623,&l_623,&l_623,&l_623,&l_623};
        uint16_t *l_624 = &p_769->g_416;
        int32_t l_625[5][8];
        uint32_t *l_632 = (void*)0;
        uint32_t *l_633[6][2][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}}};
        uint8_t *l_636 = (void*)0;
        uint8_t *l_637[10][3] = {{&p_769->g_165,&p_769->g_364,&p_769->g_364},{&p_769->g_165,&p_769->g_364,&p_769->g_364},{&p_769->g_165,&p_769->g_364,&p_769->g_364},{&p_769->g_165,&p_769->g_364,&p_769->g_364},{&p_769->g_165,&p_769->g_364,&p_769->g_364},{&p_769->g_165,&p_769->g_364,&p_769->g_364},{&p_769->g_165,&p_769->g_364,&p_769->g_364},{&p_769->g_165,&p_769->g_364,&p_769->g_364},{&p_769->g_165,&p_769->g_364,&p_769->g_364},{&p_769->g_165,&p_769->g_364,&p_769->g_364}};
        int i, j, k;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 8; j++)
                l_625[i][j] = 0x7627AEF4L;
        }
        (1 + 1);
    }
    return p_769->g_142.f4;
}


/* ------------------------------------------ */
/* 
 * reads : p_769->g_425 p_769->g_165 p_769->g_20 p_769->g_184.f4.f5 p_769->g_132 p_769->g_256 p_769->g_257 p_769->g_461 p_769->g_142.f0 p_769->g_351 p_769->g_41 p_769->g_134 p_769->g_258 p_769->g_414 p_769->g_410 p_769->g_586 p_769->g_589 p_769->g_113 p_769->g_184.f4.f1 p_769->g_293 p_769->g_172 p_769->g_89.f0
 * writes: p_769->g_410 p_769->g_165 p_769->g_132 p_769->g_293 p_769->g_89.f0 p_769->g_253.f0 p_769->g_113 p_769->g_88 p_769->g_142.f0 p_769->g_258 p_769->g_364
 */
struct S0 * func_25(int32_t  p_26, struct S0 * p_27, int64_t  p_28, int8_t  p_29, int32_t  p_30, struct S4 * p_769)
{ /* block id: 160 */
    int32_t l_417 = 0x27B6F02AL;
    int32_t *l_418 = (void*)0;
    int32_t *l_419[3][10][7] = {{{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41}},{{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41}},{{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41},{(void*)0,(void*)0,&p_769->g_22,(void*)0,(void*)0,(void*)0,&p_769->g_41}}};
    int32_t l_420 = (-1L);
    int32_t l_421[3];
    uint32_t l_422 = 0xD33B7F27L;
    int8_t *l_426[4][8] = {{&p_769->g_355,(void*)0,(void*)0,&p_769->g_355,&p_769->g_355,(void*)0,(void*)0,&p_769->g_355},{&p_769->g_355,(void*)0,(void*)0,&p_769->g_355,&p_769->g_355,(void*)0,(void*)0,&p_769->g_355},{&p_769->g_355,(void*)0,(void*)0,&p_769->g_355,&p_769->g_355,(void*)0,(void*)0,&p_769->g_355},{&p_769->g_355,(void*)0,(void*)0,&p_769->g_355,&p_769->g_355,(void*)0,(void*)0,&p_769->g_355}};
    VECTOR(int64_t, 8) l_429 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x1D282454B6711E79L), 0x1D282454B6711E79L), 0x1D282454B6711E79L, 1L, 0x1D282454B6711E79L);
    VECTOR(int64_t, 16) l_430 = (VECTOR(int64_t, 16))(0x50E36A8DC6A767AEL, (VECTOR(int64_t, 4))(0x50E36A8DC6A767AEL, (VECTOR(int64_t, 2))(0x50E36A8DC6A767AEL, 0x527DA971AFDEFB0CL), 0x527DA971AFDEFB0CL), 0x527DA971AFDEFB0CL, 0x50E36A8DC6A767AEL, 0x527DA971AFDEFB0CL, (VECTOR(int64_t, 2))(0x50E36A8DC6A767AEL, 0x527DA971AFDEFB0CL), (VECTOR(int64_t, 2))(0x50E36A8DC6A767AEL, 0x527DA971AFDEFB0CL), 0x50E36A8DC6A767AEL, 0x527DA971AFDEFB0CL, 0x50E36A8DC6A767AEL, 0x527DA971AFDEFB0CL);
    VECTOR(int64_t, 4) l_431 = (VECTOR(int64_t, 4))(0x4287ECA390CBC6C1L, (VECTOR(int64_t, 2))(0x4287ECA390CBC6C1L, (-9L)), (-9L));
    VECTOR(int64_t, 16) l_432 = (VECTOR(int64_t, 16))(0x51E9AE2735E2115DL, (VECTOR(int64_t, 4))(0x51E9AE2735E2115DL, (VECTOR(int64_t, 2))(0x51E9AE2735E2115DL, 0x4059B7C30A1024DFL), 0x4059B7C30A1024DFL), 0x4059B7C30A1024DFL, 0x51E9AE2735E2115DL, 0x4059B7C30A1024DFL, (VECTOR(int64_t, 2))(0x51E9AE2735E2115DL, 0x4059B7C30A1024DFL), (VECTOR(int64_t, 2))(0x51E9AE2735E2115DL, 0x4059B7C30A1024DFL), 0x51E9AE2735E2115DL, 0x4059B7C30A1024DFL, 0x51E9AE2735E2115DL, 0x4059B7C30A1024DFL);
    VECTOR(int64_t, 8) l_433 = (VECTOR(int64_t, 8))(4L, (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, (-1L)), (-1L)), (-1L), 4L, (-1L));
    VECTOR(int64_t, 8) l_434 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 1L), 1L), 1L, 0L, 1L);
    VECTOR(int64_t, 4) l_435 = (VECTOR(int64_t, 4))(0x08136173FCFED56BL, (VECTOR(int64_t, 2))(0x08136173FCFED56BL, 0x685767CD469FE93CL), 0x685767CD469FE93CL);
    uint8_t *l_440 = &p_769->g_165;
    struct S3 *l_446 = &p_769->g_258[1][5][0];
    struct S0 *l_449 = &p_769->g_48;
    int64_t *l_462 = (void*)0;
    VECTOR(uint32_t, 8) l_466 = (VECTOR(uint32_t, 8))(6UL, (VECTOR(uint32_t, 4))(6UL, (VECTOR(uint32_t, 2))(6UL, 4294967295UL), 4294967295UL), 4294967295UL, 6UL, 4294967295UL);
    VECTOR(uint64_t, 8) l_528 = (VECTOR(uint64_t, 8))(0x6BEF1027F16CE5F1L, (VECTOR(uint64_t, 4))(0x6BEF1027F16CE5F1L, (VECTOR(uint64_t, 2))(0x6BEF1027F16CE5F1L, 0xBB28A0B7675A1F07L), 0xBB28A0B7675A1F07L), 0xBB28A0B7675A1F07L, 0x6BEF1027F16CE5F1L, 0xBB28A0B7675A1F07L);
    int32_t l_531 = (-1L);
    VECTOR(int8_t, 8) l_536 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
    int32_t l_563 = 1L;
    VECTOR(int16_t, 8) l_578 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x7819L), 0x7819L), 0x7819L, (-1L), 0x7819L);
    int64_t **l_585 = &l_462;
    int64_t ***l_584[6];
    int16_t *l_591[5][6][2] = {{{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0}},{{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0}},{{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0}},{{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0}},{{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0},{&p_769->g_253.f2,(void*)0}}};
    uint16_t l_605 = 65535UL;
    VECTOR(int32_t, 4) l_611 = (VECTOR(int32_t, 4))(0x77560E6EL, (VECTOR(int32_t, 2))(0x77560E6EL, 0x7E7479E5L), 0x7E7479E5L);
    uint64_t l_615 = 0xCE75146AD8E1E1D3L;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_421[i] = 0x324575C3L;
    for (i = 0; i < 6; i++)
        l_584[i] = &l_585;
    l_422--;
    (*p_769->g_425) = &p_30;
    if ((((((((((void*)0 == l_426[0][3]) < ((safe_mod_func_uint32_t_u_u(4294967295UL, (1UL | p_29))) == ((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_429.s14233120)), ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 2))(l_430.sed)).xxxx, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(0x22BF2916555A771BL, ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 8))(l_431.xyzwxwzw)), ((VECTOR(int64_t, 4))(l_432.s3307)).wxyyyxyy))).s56, ((VECTOR(int64_t, 4))(l_433.s1252)).lo))), 0x0ACD705140E235D5L)) > ((VECTOR(int64_t, 8))(l_434.s77661503)).hi)))))).lo && ((VECTOR(int64_t, 4))(l_435.xzwz)).lo))), ((safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint8_t_u_s(((*l_440)++), 5)), ((safe_div_func_uint32_t_u_u(0UL, (safe_unary_minus_func_int64_t_s(((void*)0 != l_446))))) <= p_28))) | 0x537CL), ((VECTOR(int64_t, 4))((-1L))), 0x3EB64114AFFECCEAL)).odd, ((VECTOR(int64_t, 8))((-3L)))))).s0)) >= 0L) == 0x5092D3E1L) == 0UL) < p_29) >= p_769->g_20) >= p_769->g_184.f4.f5))
    { /* block id: 164 */
        struct S3 *l_456 = &p_769->g_142;
        uint32_t *l_463 = &l_422;
        int64_t **l_467 = &l_462;
        uint32_t *l_468 = (void*)0;
        uint32_t *l_469 = (void*)0;
        uint32_t *l_470[5];
        VECTOR(uint32_t, 16) l_471 = (VECTOR(uint32_t, 16))(4294967287UL, (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 0xF5681821L), 0xF5681821L), 0xF5681821L, 4294967287UL, 0xF5681821L, (VECTOR(uint32_t, 2))(4294967287UL, 0xF5681821L), (VECTOR(uint32_t, 2))(4294967287UL, 0xF5681821L), 4294967287UL, 0xF5681821L, 4294967287UL, 0xF5681821L);
        int32_t l_472 = 0L;
        uint8_t l_475 = 1UL;
        int32_t **l_484 = &p_769->g_113;
        int32_t l_496[5];
        VECTOR(uint64_t, 4) l_523 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 5UL), 5UL);
        VECTOR(uint64_t, 4) l_527 = (VECTOR(uint64_t, 4))(0x38BF59FF519583DDL, (VECTOR(uint64_t, 2))(0x38BF59FF519583DDL, 0xCB99EB14F63C0DE2L), 0xCB99EB14F63C0DE2L);
        struct S1 l_606 = {4L,0x4E88L};
        uint8_t l_607 = 2UL;
        struct S3 **l_608[5][10] = {{&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257},{&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257},{&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257},{&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257},{&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257,&p_769->g_257}};
        int i, j;
        for (i = 0; i < 5; i++)
            l_470[i] = (void*)0;
        for (i = 0; i < 5; i++)
            l_496[i] = 1L;
        for (p_769->g_132 = 0; (p_769->g_132 >= 28); p_769->g_132 = safe_add_func_int32_t_s_s(p_769->g_132, 1))
        { /* block id: 167 */
            return l_449;
        }
        if ((safe_lshift_func_uint16_t_u_s((safe_mul_func_int8_t_s_s(8L, ((safe_rshift_func_int16_t_s_s(((((l_456 == (*p_769->g_256)) , ((safe_add_func_uint64_t_u_u((((((safe_lshift_func_int16_t_s_u(p_26, 12)) & ((((((l_472 &= ((p_769->g_461 != l_462) <= ((p_769->g_293.s3 = ((((++(*l_463)) | ((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 8))(l_466.s02031714)), ((VECTOR(uint32_t, 2))(8UL, 0x69E8BD5BL)).yxyxyxyy))).s2) , l_467) == (void*)0)) || ((VECTOR(uint32_t, 4))(l_471.sbadf)).x))) || (((safe_lshift_func_int8_t_s_s((((p_29 , 5UL) | 0x1E8C6B6103AAA22CL) && 0x2DF6L), p_769->g_142.f0)) != p_29) == p_28)) | l_475) ^ (-5L)) , (void*)0) == &p_769->g_264)) , p_26) , l_462) == (void*)0), l_475)) , p_769->g_351.y)) & p_28) , p_30), l_471.s2)) ^ p_30))), p_28)))
        { /* block id: 173 */
            int8_t l_478[10][6] = {{0x4BL,0x06L,0x06L,0x4BL,1L,0x3BL},{0x4BL,0x06L,0x06L,0x4BL,1L,0x3BL},{0x4BL,0x06L,0x06L,0x4BL,1L,0x3BL},{0x4BL,0x06L,0x06L,0x4BL,1L,0x3BL},{0x4BL,0x06L,0x06L,0x4BL,1L,0x3BL},{0x4BL,0x06L,0x06L,0x4BL,1L,0x3BL},{0x4BL,0x06L,0x06L,0x4BL,1L,0x3BL},{0x4BL,0x06L,0x06L,0x4BL,1L,0x3BL},{0x4BL,0x06L,0x06L,0x4BL,1L,0x3BL},{0x4BL,0x06L,0x06L,0x4BL,1L,0x3BL}};
            int32_t l_494 = (-10L);
            int32_t l_498 = (-2L);
            int32_t l_499 = (-6L);
            int32_t l_500 = 0x4265CACCL;
            VECTOR(int64_t, 16) l_524 = (VECTOR(int64_t, 16))(0x546F3871E0382AD4L, (VECTOR(int64_t, 4))(0x546F3871E0382AD4L, (VECTOR(int64_t, 2))(0x546F3871E0382AD4L, 7L), 7L), 7L, 0x546F3871E0382AD4L, 7L, (VECTOR(int64_t, 2))(0x546F3871E0382AD4L, 7L), (VECTOR(int64_t, 2))(0x546F3871E0382AD4L, 7L), 0x546F3871E0382AD4L, 7L, 0x546F3871E0382AD4L, 7L);
            VECTOR(int32_t, 4) l_565 = (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x7693C8E2L), 0x7693C8E2L);
            uint32_t l_566 = 0UL;
            int i, j;
lbl_569:
            for (p_769->g_89.f0 = 0; (p_769->g_89.f0 != 40); p_769->g_89.f0 = safe_add_func_int32_t_s_s(p_769->g_89.f0, 3))
            { /* block id: 176 */
                uint32_t l_479 = 4294967290UL;
                int32_t l_492 = (-1L);
                int32_t l_497 = 0x64128A59L;
                uint64_t l_501 = 0x86421625CCB5FEDBL;
                struct S0 *l_504[5] = {&p_769->g_48,&p_769->g_48,&p_769->g_48,&p_769->g_48,&p_769->g_48};
                int i;
                l_479--;
                for (p_769->g_253.f0 = 0; (p_769->g_253.f0 > 25); p_769->g_253.f0++)
                { /* block id: 180 */
                    if (((l_484 != &p_769->g_410) >= p_769->g_41))
                    { /* block id: 181 */
                        return &p_769->g_89;
                    }
                    else
                    { /* block id: 183 */
                        uint32_t l_485 = 4UL;
                        (*l_484) = (void*)0;
                        l_485++;
                        p_30 |= 0x1852D66EL;
                    }
                }
                if (p_28)
                    break;
                for (p_769->g_165 = 0; (p_769->g_165 <= 14); ++p_769->g_165)
                { /* block id: 192 */
                    VECTOR(int16_t, 16) l_495 = (VECTOR(int16_t, 16))((-10L), (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), (-1L)), (-1L)), (-1L), (-10L), (-1L), (VECTOR(int16_t, 2))((-10L), (-1L)), (VECTOR(int16_t, 2))((-10L), (-1L)), (-10L), (-1L), (-10L), (-1L));
                    struct S0 **l_505 = (void*)0;
                    struct S0 **l_506 = &p_769->g_88;
                    int i;
                    for (p_769->g_253.f0 = 0; (p_769->g_253.f0 >= 56); p_769->g_253.f0++)
                    { /* block id: 195 */
                        int8_t l_493 = (-4L);
                        if (p_28)
                            break;
                        ++l_501;
                    }
                    p_30 ^= 8L;
                    (*l_506) = l_504[3];
                }
            }
            for (p_769->g_142.f0 = 0; (p_769->g_142.f0 >= (-25)); p_769->g_142.f0 = safe_sub_func_int32_t_s_s(p_769->g_142.f0, 4))
            { /* block id: 205 */
                VECTOR(uint64_t, 4) l_518 = (VECTOR(uint64_t, 4))(0x9137A24D1257D3E3L, (VECTOR(uint64_t, 2))(0x9137A24D1257D3E3L, 18446744073709551615UL), 18446744073709551615UL);
                uint16_t *l_543 = (void*)0;
                uint16_t *l_544 = &p_769->g_416;
                VECTOR(int32_t, 4) l_558 = (VECTOR(int32_t, 4))(0x160065DAL, (VECTOR(int32_t, 2))(0x160065DAL, 0x4AF05E10L), 0x4AF05E10L);
                int16_t *l_559 = (void*)0;
                int16_t *l_560[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t l_562 = 0L;
                uint8_t l_581[3][5];
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 5; j++)
                        l_581[i][j] = 2UL;
                }
                if ((safe_sub_func_int32_t_s_s(((safe_mul_func_int16_t_s_s((p_769->g_134.s4 , ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),VECTOR(int16_t, 2),((VECTOR(int16_t, 8))((!((VECTOR(int16_t, 2))(p_769->g_513.ww)).xxxxyyxx))).s43, ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))((!((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 16))((((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),uint64_t,((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(l_518.zzzxzzzzwxwxywxx)) & ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 2))(l_523.yx)).xxxyxyxy, ((VECTOR(uint64_t, 16))(abs(((VECTOR(int64_t, 16))(l_524.sdce6dfa3e1531ab9))))).even))).s7772112572153741 >> ((VECTOR(uint64_t, 16))(64))))).s0265 << ((VECTOR(uint64_t, 8))(0xBEB7FF5824D31C46L, ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))(l_527.zywzxxywyxywzzxx)).s25 + ((VECTOR(uint64_t, 16))(l_528.s2427340027611555)).s49))), ((p_769->g_380.f1 <= (safe_sub_func_uint8_t_u_u(l_531, (safe_div_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((((((VECTOR(uint8_t, 4))(252UL, ((VECTOR(uint8_t, 2))(abs(((VECTOR(int8_t, 8))(l_536.s21432674)).s20))), 0x69L)).w && (safe_sub_func_uint32_t_u_u(0x5E68F3B3L, (safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (safe_sub_func_int64_t_s_s((((*l_544) &= p_26) == 0L), p_30))))))) == (safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(1UL, 0x0D529020L, 0UL, 0x299A2E92L, ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))(p_769->g_549.xxyxwywz)).s54 >> ((VECTOR(uint32_t, 2))(32))))), 0xF343E200L, 0UL)).s6, (l_499 &= (p_769->g_348.s5 = (safe_div_func_uint32_t_u_u((safe_rshift_func_int16_t_s_s((l_562 |= (safe_mod_func_int32_t_s_s((((!(l_494 = ((*p_769->g_185) |= (((p_29 & ((VECTOR(uint64_t, 8))(0UL, (safe_lshift_func_uint8_t_u_u(((l_558.z |= p_769->g_125.s3) || 5UL), 4)), p_769->g_258[1][5][0].f3, FAKE_DIVERGE(p_769->local_0_offset, get_local_id(0), 10), 18446744073709551615UL, 0UL, 0xDCE01BD1E5752144L, 1UL)).s1) , l_518.w) , p_28)))) <= (-5L)) > p_769->g_182.se), p_769->g_561))), l_498)), (-8L)))))))) , 1UL), (-1L))), l_478[4][3]))))) != p_769->g_253.f5), ((VECTOR(uint64_t, 2))(0UL)), 0xA08D4E719D02FC49L, 18446744073709551615UL)).lo))).ywyxyxyxzwwxxwzw))).s48 + ((VECTOR(uint64_t, 2))(18446744073709551606UL))))) + ((VECTOR(uint64_t, 2))(0x1DED06134C351DD8L))))), (uint64_t)p_769->g_126.s2, (uint64_t)p_769->g_89.f2))), 6UL, ((VECTOR(uint64_t, 2))(0x436F8378D6649D56L)), p_26, 18446744073709551611UL, 0x94658C82FE4D4B27L, 18446744073709551610UL, p_769->g_115.f3, 18446744073709551606UL, ((VECTOR(uint64_t, 4))(0UL)), 0x88B02760FEC2CA74L))))).se & p_26), ((VECTOR(int8_t, 8))(0L)), 0x3EL, 0x02L, p_769->g_184.f3, l_518.y, ((VECTOR(int8_t, 2))(0x1CL)), (-10L))).sf637, ((VECTOR(int8_t, 4))(0L))))).ywyzxyyy && ((VECTOR(int8_t, 8))(0x47L))))).s64, (int8_t)p_28, (int8_t)p_769->g_364))).xxyyyyxy, (int8_t)p_28, (int8_t)p_30))), 0x20L, p_769->g_142.f4, ((VECTOR(int8_t, 4))((-1L))), (-6L), (-10L))).sfe1f && ((VECTOR(int8_t, 4))(1L))))).even && ((VECTOR(int8_t, 2))(0L))))).xyyy, ((VECTOR(int8_t, 4))(0x4BL))))), 0L, p_769->g_561, (-1L), (-10L), ((VECTOR(int8_t, 8))(0x06L)))).s513d))).yyzzzyzx && ((VECTOR(int8_t, 8))((-10L)))))).s5040732031471440, ((VECTOR(uint8_t, 16))(3UL))))), ((VECTOR(int16_t, 16))(1L)), ((VECTOR(int16_t, 16))(0x203CL))))) ^ ((VECTOR(int16_t, 16))(0x61FAL))))).sea, ((VECTOR(int16_t, 2))((-7L)))))).yxxy, ((VECTOR(int16_t, 4))(0x55BAL))))) && ((VECTOR(int16_t, 4))((-9L)))))).z), p_29)) > 0x52L), 0x44CB903FL)))
                { /* block id: 213 */
                    int32_t l_564 = 0x4D94BA7AL;
                    --l_566;
                    if (p_769->g_132)
                        goto lbl_569;
                }
                else
                { /* block id: 216 */
                    int32_t l_572 = (-1L);
                    int32_t l_573 = 3L;
                    int32_t l_574 = 0x6E068A08L;
                    int32_t l_575[10][4] = {{1L,0x35DD5ED0L,0x261FB68BL,(-1L)},{1L,0x35DD5ED0L,0x261FB68BL,(-1L)},{1L,0x35DD5ED0L,0x261FB68BL,(-1L)},{1L,0x35DD5ED0L,0x261FB68BL,(-1L)},{1L,0x35DD5ED0L,0x261FB68BL,(-1L)},{1L,0x35DD5ED0L,0x261FB68BL,(-1L)},{1L,0x35DD5ED0L,0x261FB68BL,(-1L)},{1L,0x35DD5ED0L,0x261FB68BL,(-1L)},{1L,0x35DD5ED0L,0x261FB68BL,(-1L)},{1L,0x35DD5ED0L,0x261FB68BL,(-1L)}};
                    int i, j;
                    (*p_769->g_257) = (*p_769->g_257);
                    for (p_769->g_364 = 0; (p_769->g_364 >= 15); p_769->g_364++)
                    { /* block id: 220 */
                        int16_t l_576 = 0x79D1L;
                        int32_t l_577 = (-1L);
                        int32_t l_579 = (-6L);
                        int32_t l_580[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_580[i] = 0x0AEF372EL;
                        --l_581[0][1];
                        if (p_29)
                            break;
                        (*l_484) = &p_30;
                    }
                }
            }
        }
        else
        { /* block id: 227 */
            int64_t ***l_588 = (void*)0;
            (*l_484) = (*p_769->g_414);
            (*p_769->g_410) |= (&p_769->g_364 == (void*)0);
            if (((l_584[2] == (l_588 = p_769->g_586)) >= ((VECTOR(uint8_t, 2))(p_769->g_589.se2)).hi))
            { /* block id: 231 */
                (*l_484) = (*p_769->g_425);
                (*p_769->g_113) = (**p_769->g_414);
                (*l_484) = &l_563;
            }
            else
            { /* block id: 235 */
                return p_27;
            }
            (*l_484) = (((**p_769->g_256) , (*l_446)) , &p_30);
        }
        if ((((*l_440) |= 0x70L) , ((*p_769->g_410) |= p_26)))
        { /* block id: 242 */
            int16_t **l_590[2][4][5] = {{{&p_769->g_118[1],&p_769->g_118[2],&p_769->g_185,&p_769->g_185,&p_769->g_185},{&p_769->g_118[1],&p_769->g_118[2],&p_769->g_185,&p_769->g_185,&p_769->g_185},{&p_769->g_118[1],&p_769->g_118[2],&p_769->g_185,&p_769->g_185,&p_769->g_185},{&p_769->g_118[1],&p_769->g_118[2],&p_769->g_185,&p_769->g_185,&p_769->g_185}},{{&p_769->g_118[1],&p_769->g_118[2],&p_769->g_185,&p_769->g_185,&p_769->g_185},{&p_769->g_118[1],&p_769->g_118[2],&p_769->g_185,&p_769->g_185,&p_769->g_185},{&p_769->g_118[1],&p_769->g_118[2],&p_769->g_185,&p_769->g_185,&p_769->g_185},{&p_769->g_118[1],&p_769->g_118[2],&p_769->g_185,&p_769->g_185,&p_769->g_185}}};
            VECTOR(int16_t, 4) l_598 = (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0x7F01L), 0x7F01L);
            VECTOR(int16_t, 2) l_599 = (VECTOR(int16_t, 2))(1L, 0x2D01L);
            struct S3 **l_604 = &l_446;
            int i, j, k;
            (*p_769->g_410) = (((+(((l_606 , p_769->g_184.f4.f1) | p_769->g_293.s4) <= (*p_769->g_410))) || (-7L)) < l_607);
        }
        else
        { /* block id: 245 */
            (*l_484) = &p_30;
            (**p_769->g_172) ^= ((l_608[4][8] = &p_769->g_257) != &p_769->g_257);
        }
    }
    else
    { /* block id: 250 */
        int32_t l_610 = 0x5D52058BL;
        int32_t l_612 = (-1L);
        int32_t l_613 = 0x09B50C0FL;
        int32_t l_614[1][1][2];
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 2; k++)
                    l_614[i][j][k] = (-2L);
            }
        }
        l_610 |= (+(safe_unary_minus_func_uint8_t_u(p_30)));
        (*p_769->g_410) |= ((VECTOR(int32_t, 2))(l_611.ww)).lo;
        ++l_615;
    }
    return p_27;
}


/* ------------------------------------------ */
/* 
 * reads : p_769->g_48.f0 p_769->g_48.f4 p_769->g_21 p_769->g_22 p_769->g_88 p_769->g_91 p_769->g_41 p_769->g_112 p_769->g_115 p_769->g_125 p_769->g_126 p_769->g_127 p_769->g_89.f2 p_769->g_89.f5 p_769->g_134 p_769->g_48.f5 p_769->g_89.f1 p_769->g_142 p_769->g_48.f1 p_769->g_118 p_769->g_168 p_769->g_113 p_769->g_172 p_769->g_180 p_769->g_165 p_769->g_182 p_769->g_184 p_769->g_89.f0 p_769->g_185 p_769->g_186 p_769->g_220 p_769->g_253 p_769->g_256 p_769->g_264 p_769->g_48.f7 p_769->g_293 p_769->g_304 p_769->g_258.f2 p_769->g_320 p_769->g_325 p_769->g_326 p_769->g_327 p_769->g_337 p_769->g_345 p_769->g_346 p_769->g_347 p_769->g_348 p_769->g_351 p_769->g_360 p_769->g_364 p_769->g_318 p_769->g_257 p_769->g_258 p_769->g_410 p_769->g_414 p_769->g_416 p_769->g_89
 * writes: p_769->g_48.f2 p_769->g_41 p_769->g_22 p_769->g_113 p_769->g_118 p_769->g_119 p_769->g_132 p_769->g_48.f5 p_769->g_89.f1 p_769->g_142 p_769->g_48.f1 p_769->g_89.f2 p_769->g_88 p_769->g_264 p_769->g_268 p_769->g_318 p_769->g_355 p_769->g_182 p_769->g_360 p_769->g_364 p_769->g_258 p_769->g_410 p_769->g_416 p_769->g_89
 */
struct S0 * func_31(int32_t  p_32, int32_t * p_33, struct S4 * p_769)
{ /* block id: 12 */
    struct S0 *l_47[3][10] = {{(void*)0,(void*)0,&p_769->g_48,&p_769->g_48,(void*)0,&p_769->g_48,&p_769->g_48,(void*)0,(void*)0,&p_769->g_48},{(void*)0,(void*)0,&p_769->g_48,&p_769->g_48,(void*)0,&p_769->g_48,&p_769->g_48,(void*)0,(void*)0,&p_769->g_48},{(void*)0,(void*)0,&p_769->g_48,&p_769->g_48,(void*)0,&p_769->g_48,&p_769->g_48,(void*)0,(void*)0,&p_769->g_48}};
    int16_t *l_49 = &p_769->g_48.f2;
    int32_t *l_50[2][4][8] = {{{(void*)0,&p_769->g_22,&p_769->g_41,(void*)0,&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41},{(void*)0,&p_769->g_22,&p_769->g_41,(void*)0,&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41},{(void*)0,&p_769->g_22,&p_769->g_41,(void*)0,&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41},{(void*)0,&p_769->g_22,&p_769->g_41,(void*)0,&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41}},{{(void*)0,&p_769->g_22,&p_769->g_41,(void*)0,&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41},{(void*)0,&p_769->g_22,&p_769->g_41,(void*)0,&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41},{(void*)0,&p_769->g_22,&p_769->g_41,(void*)0,&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41},{(void*)0,&p_769->g_22,&p_769->g_41,(void*)0,&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41}}};
    int i, j, k;
    p_769->g_416 &= (((p_32 & p_32) >= ((func_42(((*l_49) = ((void*)0 != l_47[1][9])), l_50[0][1][1], (safe_lshift_func_int8_t_s_s(p_32, (p_32 == ((safe_sub_func_uint32_t_u_u((func_55(((func_61(func_67(((safe_div_func_uint8_t_u_u((p_769->g_48.f0 < p_769->g_48.f4), p_32)) , (void*)0), p_32, l_50[1][2][0], p_32, p_769), p_32, p_32, p_769->g_127.x, p_769->g_165, p_769) , p_769->g_184) , l_47[0][7]), p_769->g_89.f0, p_769->g_180[5][4].f1, p_769->g_182.s5, p_769->g_185, p_769) || 0x032BL), p_32)) >= p_769->g_325.s4)))), p_769->g_410, p_769) , 0x64965703L) , (*p_769->g_185))) || p_769->g_347.w);
    (*p_769->g_88) = (*p_769->g_88);
    return &p_769->g_253;
}


/* ------------------------------------------ */
/* 
 * reads : p_769->g_414 p_769->g_21 p_769->g_89.f0
 * writes: p_769->g_410 p_769->g_22
 */
uint32_t  func_42(int16_t  p_43, int32_t * p_44, uint32_t  p_45, int32_t * p_46, struct S4 * p_769)
{ /* block id: 153 */
    int32_t *l_411 = (void*)0;
    int32_t l_415 = (-2L);
    (*p_769->g_414) = l_411;
    (*p_769->g_21) = l_415;
    return p_769->g_89.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_769->g_186 p_769->g_21 p_769->g_22 p_769->g_41 p_769->g_48.f1 p_769->g_220 p_769->g_172 p_769->g_113 p_769->g_253 p_769->g_115.f6 p_769->g_256 p_769->g_264 p_769->g_91 p_769->g_180.f1 p_769->g_48.f7 p_769->g_293 p_769->g_180 p_769->g_304 p_769->g_125 p_769->g_182 p_769->g_89.f2 p_769->g_127 p_769->g_258.f2 p_769->g_48.f5 p_769->g_320 p_769->g_325 p_769->g_326 p_769->g_327 p_769->g_337 p_769->g_345 p_769->g_346 p_769->g_347 p_769->g_348 p_769->g_351 p_769->g_89.f5 p_769->g_360 p_769->g_364 p_769->g_88 p_769->g_142 p_769->g_118 p_769->g_168 p_769->g_112 p_769->g_89.f0 p_769->g_318 p_769->g_257 p_769->g_258
 * writes: p_769->g_41 p_769->g_48.f1 p_769->g_22 p_769->g_264 p_769->g_268 p_769->g_113 p_769->g_318 p_769->g_355 p_769->g_182 p_769->g_360 p_769->g_364 p_769->g_48.f5 p_769->g_89.f1 p_769->g_142 p_769->g_89.f2 p_769->g_88 p_769->g_258
 */
int16_t  func_55(struct S0 * p_56, uint32_t  p_57, int32_t  p_58, uint32_t  p_59, int16_t * p_60, struct S4 * p_769)
{ /* block id: 79 */
    int32_t *l_188 = &p_769->g_22;
    int32_t l_193 = (-1L);
    int32_t l_197 = 4L;
    int32_t l_198 = (-5L);
    int32_t l_199 = 5L;
    int32_t l_200 = 1L;
    int32_t l_201 = (-2L);
    int32_t l_202[7];
    uint8_t l_215 = 0xDFL;
    int16_t *l_229[1][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_230 = 0x2D2DAEC1L;
    uint16_t l_275 = 0x6C55L;
    VECTOR(uint32_t, 2) l_309 = (VECTOR(uint32_t, 2))(1UL, 5UL);
    VECTOR(uint32_t, 4) l_316 = (VECTOR(uint32_t, 4))(0x7CEC9176L, (VECTOR(uint32_t, 2))(0x7CEC9176L, 0x99F3969AL), 0x99F3969AL);
    VECTOR(int32_t, 8) l_319 = (VECTOR(int32_t, 8))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0x5DE87172L), 0x5DE87172L), 0x5DE87172L, (-6L), 0x5DE87172L);
    VECTOR(uint16_t, 16) l_334 = (VECTOR(uint16_t, 16))(7UL, (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 6UL), 6UL), 6UL, 7UL, 6UL, (VECTOR(uint16_t, 2))(7UL, 6UL), (VECTOR(uint16_t, 2))(7UL, 6UL), 7UL, 6UL, 7UL, 6UL);
    VECTOR(int64_t, 16) l_381 = (VECTOR(int64_t, 16))(3L, (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, 7L), 7L), 7L, 3L, 7L, (VECTOR(int64_t, 2))(3L, 7L), (VECTOR(int64_t, 2))(3L, 7L), 3L, 7L, 3L, 7L);
    int32_t l_396 = 9L;
    uint16_t l_399 = 1UL;
    int32_t l_406[10] = {0x5DAA5C4AL,0L,0x5DAA5C4AL,0x5DAA5C4AL,0L,0x5DAA5C4AL,0x5DAA5C4AL,0L,0x5DAA5C4AL,0x5DAA5C4AL};
    uint8_t l_407[2][5][3] = {{{0x74L,0x79L,0x74L},{0x74L,0x79L,0x74L},{0x74L,0x79L,0x74L},{0x74L,0x79L,0x74L},{0x74L,0x79L,0x74L}},{{0x74L,0x79L,0x74L},{0x74L,0x79L,0x74L},{0x74L,0x79L,0x74L},{0x74L,0x79L,0x74L},{0x74L,0x79L,0x74L}}};
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_202[i] = 0x53BDF714L;
    if ((FAKE_DIVERGE(p_769->global_2_offset, get_global_id(2), 10) != ((VECTOR(int16_t, 16))(p_769->g_186.wyxywyzwzywwwyzz)).sf))
    { /* block id: 80 */
        int32_t *l_187 = &p_769->g_41;
        int32_t **l_189 = &l_187;
        int32_t *l_190 = (void*)0;
        int32_t *l_191 = &p_769->g_22;
        int32_t *l_192 = (void*)0;
        int32_t *l_194 = &p_769->g_41;
        int32_t *l_195 = (void*)0;
        int32_t *l_196[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint32_t l_203 = 0x2DE7F64FL;
        int i;
        (*l_187) |= (*p_769->g_21);
        (*l_189) = l_188;
        --l_203;
        for (p_769->g_48.f1 = 25; (p_769->g_48.f1 > (-29)); --p_769->g_48.f1)
        { /* block id: 86 */
            uint16_t l_208 = 0UL;
            --l_208;
        }
    }
    else
    { /* block id: 89 */
        int32_t *l_211 = (void*)0;
        int32_t *l_212 = (void*)0;
        int32_t *l_213 = (void*)0;
        int32_t *l_214[7][8][4] = {{{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]}},{{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]}},{{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]}},{{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]}},{{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]}},{{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]}},{{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]},{&l_200,&l_193,&p_769->g_22,&l_202[2]}}};
        uint32_t *l_219 = &p_769->g_89.f0;
        uint32_t **l_218 = &l_219;
        uint32_t l_224[8];
        VECTOR(int32_t, 8) l_321 = (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x786785A2L), 0x786785A2L), 0x786785A2L, 6L, 0x786785A2L);
        VECTOR(int32_t, 4) l_358 = (VECTOR(int32_t, 4))(0x693D7B2CL, (VECTOR(int32_t, 2))(0x693D7B2CL, (-8L)), (-8L));
        int64_t l_359 = (-3L);
        int8_t *l_377 = &p_769->g_355;
        int i, j, k;
        for (i = 0; i < 8; i++)
            l_224[i] = 0UL;
lbl_271:
        l_215--;
        if ((((*l_218) = l_214[3][6][3]) != (p_769->g_220 , &p_769->g_132)))
        { /* block id: 92 */
            int8_t l_223 = 1L;
            (*l_188) |= ((*p_769->g_172) == ((safe_rshift_func_int8_t_s_s(0x5CL, (&l_188 == (void*)0))) , l_213));
            --l_224[6];
            l_230 = ((*l_188) = (safe_sub_func_int8_t_s_s(((!(l_229[0][3] == p_60)) ^ ((p_59 | 4L) == (*l_188))), p_59)));
        }
        else
        { /* block id: 97 */
            uint32_t l_231 = 0xC7496384L;
            VECTOR(int32_t, 4) l_272 = (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), (-6L)), (-6L));
            int16_t l_312 = 0x511AL;
            VECTOR(int16_t, 8) l_324 = (VECTOR(int16_t, 8))(0x3EEFL, (VECTOR(int16_t, 4))(0x3EEFL, (VECTOR(int16_t, 2))(0x3EEFL, (-1L)), (-1L)), (-1L), 0x3EEFL, (-1L));
            VECTOR(uint16_t, 4) l_342 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x9D6AL), 0x9D6AL);
            int64_t *l_401 = &l_359;
            int64_t **l_400 = &l_401;
            int i;
            --l_231;
            if (((*l_188) = (&l_219 == &l_219)))
            { /* block id: 100 */
                int32_t *l_270[7] = {&p_769->g_22,&p_769->g_22,&p_769->g_22,&p_769->g_22,&p_769->g_22,&p_769->g_22,&p_769->g_22};
                VECTOR(uint32_t, 8) l_295 = (VECTOR(uint32_t, 8))(0x9B7028C0L, (VECTOR(uint32_t, 4))(0x9B7028C0L, (VECTOR(uint32_t, 2))(0x9B7028C0L, 0x407EA98AL), 0x407EA98AL), 0x407EA98AL, 0x9B7028C0L, 0x407EA98AL);
                uint32_t l_313 = 0x10DDAC33L;
                int16_t l_356 = 7L;
                int16_t l_357 = 0x25A1L;
                int i;
                for (l_200 = 0; (l_200 != (-15)); l_200--)
                { /* block id: 103 */
                    uint32_t l_236[5][10][4] = {{{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L}},{{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L}},{{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L}},{{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L}},{{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L},{0x31C4C9FAL,0x82D893DDL,7UL,0xD78081E6L}}};
                    uint16_t *l_259[3];
                    int16_t l_260 = 0x60C4L;
                    uint64_t *l_263 = &p_769->g_264;
                    uint64_t *l_267[6][1] = {{&p_769->g_268},{&p_769->g_268},{&p_769->g_268},{&p_769->g_268},{&p_769->g_268},{&p_769->g_268}};
                    int32_t l_273[2][7][4] = {{{7L,0L,7L,(-8L)},{7L,0L,7L,(-8L)},{7L,0L,7L,(-8L)},{7L,0L,7L,(-8L)},{7L,0L,7L,(-8L)},{7L,0L,7L,(-8L)},{7L,0L,7L,(-8L)}},{{7L,0L,7L,(-8L)},{7L,0L,7L,(-8L)},{7L,0L,7L,(-8L)},{7L,0L,7L,(-8L)},{7L,0L,7L,(-8L)},{7L,0L,7L,(-8L)},{7L,0L,7L,(-8L)}}};
                    int32_t l_274 = 9L;
                    VECTOR(uint32_t, 8) l_294 = (VECTOR(uint32_t, 8))(0xC9BFC1F6L, (VECTOR(uint32_t, 4))(0xC9BFC1F6L, (VECTOR(uint32_t, 2))(0xC9BFC1F6L, 0x75987125L), 0x75987125L), 0x75987125L, 0xC9BFC1F6L, 0x75987125L);
                    VECTOR(uint16_t, 4) l_340 = (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 0x6454L), 0x6454L);
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_259[i] = (void*)0;
                    if (l_236[1][1][0])
                        break;
                    if ((safe_div_func_int16_t_s_s((safe_add_func_uint64_t_u_u((safe_lshift_func_int16_t_s_s((-5L), 5)), (safe_mod_func_int16_t_s_s(((((safe_mul_func_int8_t_s_s(((p_57 , ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(18446744073709551615UL, 0x488AD1CA65634AEDL)), 0UL, 0UL)).z) >= (((*l_188) = ((safe_rshift_func_uint8_t_u_u((safe_add_func_int64_t_s_s(((p_769->g_253 , (l_260 = (p_769->g_115.f6 != (p_769->g_256 == (void*)0)))) ^ ((safe_add_func_uint64_t_u_u(p_57, (++(*l_263)))) != (p_769->g_268 = p_769->g_253.f2))), ((VECTOR(int64_t, 16))(0x5110DE3B479E97CFL, ((VECTOR(int64_t, 2))(0x55CAC514285EE49CL)), 4L, 0x7FF966CC3914C09DL, p_769->g_142.f0, ((VECTOR(int64_t, 4))(0x7471809871574A50L)), ((VECTOR(int64_t, 2))(6L)), (-1L), ((VECTOR(int64_t, 2))(0x0DEECCFE02F5DE10L)), 1L)).s6)), 1)) , p_769->g_91.s3)) == FAKE_DIVERGE(p_769->local_1_offset, get_local_id(1), 10))), 0xCBL)) & p_769->g_253.f2) & p_58) , l_231), l_231)))), 0x7C43L)))
                    { /* block id: 109 */
                        int32_t **l_269 = &p_769->g_113;
                        l_270[3] = ((*l_269) = l_214[4][0][1]);
                    }
                    else
                    { /* block id: 112 */
                        if (p_769->g_41)
                            goto lbl_271;
                        return (*p_60);
                    }
                    l_275--;
                    for (p_58 = 0; (p_58 != 8); ++p_58)
                    { /* block id: 119 */
                        VECTOR(uint32_t, 16) l_288 = (VECTOR(uint32_t, 16))(7UL, (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 0xFC141B3DL), 0xFC141B3DL), 0xFC141B3DL, 7UL, 0xFC141B3DL, (VECTOR(uint32_t, 2))(7UL, 0xFC141B3DL), (VECTOR(uint32_t, 2))(7UL, 0xFC141B3DL), 7UL, 0xFC141B3DL, 7UL, 0xFC141B3DL);
                        uint32_t l_310 = 0x4D4AED37L;
                        VECTOR(int32_t, 2) l_311 = (VECTOR(int32_t, 2))(8L, 0x25D134C1L);
                        uint64_t *l_317 = &p_769->g_318;
                        VECTOR(int32_t, 4) l_322 = (VECTOR(int32_t, 4))(0x1C057FAEL, (VECTOR(int32_t, 2))(0x1C057FAEL, 0x54C7C4B1L), 0x54C7C4B1L);
                        VECTOR(int32_t, 16) l_323 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x03DB8F9CL), 0x03DB8F9CL), 0x03DB8F9CL, (-1L), 0x03DB8F9CL, (VECTOR(int32_t, 2))((-1L), 0x03DB8F9CL), (VECTOR(int32_t, 2))((-1L), 0x03DB8F9CL), (-1L), 0x03DB8F9CL, (-1L), 0x03DB8F9CL);
                        VECTOR(uint16_t, 2) l_341 = (VECTOR(uint16_t, 2))(0x9C4AL, 0x8597L);
                        int8_t *l_354[5] = {&p_769->g_355,&p_769->g_355,&p_769->g_355,&p_769->g_355,&p_769->g_355};
                        int i;
                        (*l_188) ^= (((safe_mul_func_int8_t_s_s(p_769->g_48.f7, ((safe_mod_func_uint64_t_u_u((p_59 ^ ((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 2))(l_288.s43)).xxyyyxyx, ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))(p_769->g_293.s3667)).hi + ((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 4))(4294967292UL, ((VECTOR(uint32_t, 2))(l_294.s42)), 3UL)).zywxyxzz, ((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 16))(l_288.sf, 1UL, 4294967291UL, 9UL, 4294967286UL, ((VECTOR(uint32_t, 8))(l_295.s63257542)), (p_769->g_180[0][1] , p_58), 0x23389F06L, 0xEE14C134L)).sf6, ((VECTOR(uint32_t, 4))(1UL, 4294967295UL, 0x02EFC462L, 4294967290UL)).even))).xyyyyyyy))).s55))), 1UL, 0x7E7B2C11L)) + ((VECTOR(uint32_t, 16))((+((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))(abs_diff(((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(uint32_t, 8))(p_769->g_304.sd8661b11)).hi, ((VECTOR(uint32_t, 8))(abs(((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 8))(p_57, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(mad_sat(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(p_769->g_125.s7, ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))(max(((VECTOR(uint32_t, 2))(l_309.yx)).yyxxyxxyxyxyyyyy, (uint32_t)(((p_769->g_182.sd && p_59) , p_59) , p_769->g_180[5][4].f1)))).s6f24 + ((VECTOR(uint32_t, 4))(0x7CC15C31L))))), p_57, 1UL, 0x1BFB572EL)).s5201307772314057 >> ((VECTOR(uint32_t, 16))(7UL))))).sb2, ((VECTOR(uint32_t, 2))(0x981B59CCL)), ((VECTOR(uint32_t, 2))(0x434657A8L))))), 0x4A53B9E6L, 1UL)), GROUP_DIVERGE(0, 1), 0x6B13B2D9L, 1UL)).odd))).zwwzxzzz))).lo))).wzwyxxxxyxywwzzw, ((VECTOR(uint32_t, 16))(0x8D058AEBL))))).sccf0 + ((VECTOR(uint32_t, 4))(0xEBDF4C10L))))).hi << ((VECTOR(uint32_t, 2))(32)))))))).xyyxxxyy + ((VECTOR(uint32_t, 8))(0xB0F938E7L))))).s6735425023056256 * ((VECTOR(uint32_t, 16))(0x7BEEA317L)))))))).sf9be))).yzxyzwxw))).s4017721702622263 * ((VECTOR(uint32_t, 16))(4294967294UL))))).hi - ((VECTOR(uint32_t, 8))(1UL))))), ((VECTOR(uint32_t, 8))(0UL)), ((VECTOR(uint32_t, 8))(7UL))))).s32, (uint32_t)p_769->g_89.f2))).even), p_769->g_127.y)) | 0x31L))) , (*p_60)) <= l_310);
                        if ((*p_769->g_21))
                            continue;
                        p_769->g_182.s2 |= (((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(l_311.yxxx)).xxzxzyzzwwxwxwzy && ((VECTOR(int32_t, 8))(0L, ((((l_312 || (p_769->g_258[1][5][0].f2 > ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(l_313, ((VECTOR(int32_t, 8))((((VECTOR(uint32_t, 8))(l_316.yyzyxyxy)).s1 || ((((*l_317) = p_769->g_48.f5) , p_59) < FAKE_DIVERGE(p_769->group_1_offset, get_group_id(1), 10))), 0x64434DDAL, ((void*)0 == &p_769->g_257), (-1L), ((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 2))((-3L), 0x1C8EF255L)).yxyx, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(l_319.s07)).xxxy ^ ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(0L, ((VECTOR(int32_t, 8))(p_769->g_320.xxxyyyxx)), ((VECTOR(int32_t, 2))(l_321.s42)).odd, 0x342619A3L, 0L, ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 8))(l_322.ywwzwwyy)), ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(l_323.s0ae2bf1e73ce476f)).s07 & ((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(l_324.s66)) | ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 2))(p_769->g_325.s64)).xyxyyxxyyyxxxxyy, ((VECTOR(int16_t, 2))(p_769->g_326.s2e)).yxxxxyxyyyyyyxyy))) != ((VECTOR(int16_t, 4))(p_769->g_327.s7bce)).wzwxwyzwzwzwwyww))).s82))).xyxyyyyx, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(0xCD64L, 65532UL)), 1UL, 0xD1EDL, p_59, ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_334.sa3)), 0xAE1BL, 0x8323L)).even + ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(0xBC37L, 0x19BBL)).xxxxxxxx + ((VECTOR(uint16_t, 4))(p_769->g_337.xxwy)).yxyxyxwx))).s50))).yyxxyyyx + ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))(l_340.wzwwzyyywywwxxzz)) * ((VECTOR(uint16_t, 8))(l_341.xxyyyxxy)).s1564316254770054))).lo))), ((VECTOR(uint16_t, 2))(l_342.yw)), 0xC07DL)).s8d0a + ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(1UL, 0xD0F0L)).xyxy + ((VECTOR(uint16_t, 2))(0UL, 0x9375L)).yyxx)))))).yyxwwzxw))), ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))(p_769->g_345.xy)).yxyyyxyx, ((VECTOR(int32_t, 16))(p_769->g_346.s7724230723464017)).hi))))), ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(p_769->g_347.xywywyyxyyxxyywy)).sb3 && ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(p_769->g_348.s51457410)).s01 && ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(1L, 0x422D6D65L)).yxxx, (int32_t)(safe_sub_func_int8_t_s_s((p_769->g_355 = ((((((VECTOR(int64_t, 8))(p_769->g_351.xxxxxyyy)).s7 <= (safe_lshift_func_int16_t_s_s(4L, 12))) <= 0x34B8B33CL) <= 0x0ACB233FFB6A3B96L) , p_769->g_89.f5)), 0x4BL))))).even))).xxxyyyyxyyxxxyxy && ((VECTOR(int32_t, 16))(0x3F27E3FCL))))).hi != ((VECTOR(int32_t, 8))(0L))))).s74, ((VECTOR(int32_t, 2))(4L)), ((VECTOR(int32_t, 2))(0x7C4CF91EL))))).yyxy))), ((VECTOR(int32_t, 4))(0x5F371472L))))).lo))), ((VECTOR(int32_t, 2))(0x047E7917L))))).yyyyyxxxyxyyxxyy, ((VECTOR(int32_t, 16))(0x351A79EFL))))).s8d))) && ((VECTOR(int32_t, 2))(9L))))).yxyyyxyx, ((VECTOR(int32_t, 8))(0x4992D6F1L))))).s60, ((VECTOR(int32_t, 2))((-3L)))))), ((VECTOR(int32_t, 2))(1L))))), 4L, 0x3A7A2216L)), ((VECTOR(int32_t, 16))(0L))))).s98 && ((VECTOR(int32_t, 2))(0x1486807BL))))).xxxy))), ((VECTOR(int32_t, 4))((-4L)))))))), 0x710C9E63L, 0x61796905L, 9L, 1L, (-7L), (-1L), 0x394357F9L)).lo | ((VECTOR(int32_t, 8))(0L))))) && ((VECTOR(int32_t, 8))((-1L)))))).s2)) | 0x653D48BEL) == 6UL) , l_312), p_59, ((VECTOR(int32_t, 4))(5L)), (-1L))).s6772615241210715))).sc != p_58);
                    }
                }
                ++p_769->g_360;
                return (*p_60);
            }
            else
            { /* block id: 129 */
                int16_t l_363[7];
                int32_t l_393[4];
                int64_t *l_397[5] = {&l_359,&l_359,&l_359,&l_359,&l_359};
                int32_t l_398 = 1L;
                int i;
                for (i = 0; i < 7; i++)
                    l_363[i] = (-1L);
                for (i = 0; i < 4; i++)
                    l_393[i] = 0x1D9E2B50L;
                p_769->g_364++;
                if (((safe_mul_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_s(((safe_add_func_int8_t_s_s((((safe_add_func_uint8_t_u_u((func_67(l_229[0][5], (((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 8))((safe_sub_func_int16_t_s_s((l_272.x = ((*p_769->g_185) &= (0x6C6EE809L || (((l_377 != (((safe_sub_func_uint16_t_u_u(((p_769->g_380 , ((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(0x12A6BD3BA050177AL, 1L)) && ((VECTOR(int64_t, 16))(l_381.s7dcd104b8fb2d226)).s59))).yyxx, (int64_t)((safe_mul_func_int16_t_s_s((safe_div_func_int64_t_s_s((l_398 = ((+0x75A34094D5D3047AL) | ((safe_rshift_func_int8_t_s_u((*l_188), ((l_393[0] = (safe_mul_func_int16_t_s_s((safe_lshift_func_int8_t_s_s(p_769->g_48.f5, 3)), ((VECTOR(int16_t, 2))(p_769->g_392.xy)).hi))) & (safe_mul_func_uint16_t_u_u(0x9285L, p_769->g_165))))) && l_396))), 0x03C4133D63D847CBL)), 0x51FEL)) > 255UL)))).xyxxwwwzyxxxzzwz != ((VECTOR(int64_t, 16))((-1L)))))).odd != ((VECTOR(int64_t, 8))(4L))))).hi, ((VECTOR(int64_t, 4))(0x38C4328F2EBBD559L)), ((VECTOR(int64_t, 4))(0L))))).z) >= 0xAA026A40EF6D9011L), l_272.x)) == FAKE_DIVERGE(p_769->group_0_offset, get_group_id(0), 10)) , l_377)) <= p_769->g_125.s1) || l_342.z)))), 1UL)), l_393[3], 0x74EAL, 8L, ((VECTOR(int16_t, 2))(1L)), 8L, 2L)).s21, ((VECTOR(int16_t, 2))((-1L))), ((VECTOR(int16_t, 2))(0x5E38L))))).even > l_312), &l_200, p_58, p_769) , p_769->g_89.f0), p_769->g_293.s6)) , l_399) <= l_363[3]), p_769->g_318)) && 65527UL), p_769->g_293.s1)) | p_769->g_325.s2), GROUP_DIVERGE(1, 1))) || 0x3A940B286EF59038L))
                { /* block id: 135 */
                    int64_t ***l_402 = &l_400;
                    int32_t l_403[7];
                    int i;
                    for (i = 0; i < 7; i++)
                        l_403[i] = 1L;
                    (*l_402) = l_400;
                    return l_403[0];
                }
                else
                { /* block id: 138 */
                    for (l_197 = 4; (l_197 > 14); ++l_197)
                    { /* block id: 141 */
                        (*p_769->g_257) = (**p_769->g_256);
                        if ((*p_769->g_168))
                            continue;
                    }
                    (*p_769->g_21) = l_393[2];
                }
            }
        }
        --l_407[1][1][0];
        (*l_188) = ((~GROUP_DIVERGE(2, 1)) <= (p_59 < 0x2CL));
    }
    return (*l_188);
}


/* ------------------------------------------ */
/* 
 * reads : p_769->g_22 p_769->g_182 p_769->g_168 p_769->g_115.f5
 * writes: p_769->g_22 p_769->g_41
 */
uint16_t  func_61(struct S1  p_62, int8_t  p_63, uint16_t  p_64, int64_t  p_65, int16_t  p_66, struct S4 * p_769)
{ /* block id: 73 */
    int32_t *l_181 = &p_769->g_22;
    int32_t l_183 = 0x2C1D6843L;
    (*l_181) |= 0x052904B5L;
    l_183 = ((*l_181) |= ((*p_769->g_168) = ((VECTOR(int32_t, 8))(p_769->g_182.s1117703b)).s3));
    return p_769->g_115.f5;
}


/* ------------------------------------------ */
/* 
 * reads : p_769->g_21 p_769->g_22 p_769->g_88 p_769->g_91 p_769->g_41 p_769->g_112 p_769->g_115 p_769->g_125 p_769->g_126 p_769->g_127 p_769->g_89.f2 p_769->g_89.f5 p_769->g_134 p_769->g_48.f5 p_769->g_89.f1 p_769->g_142 p_769->g_48.f1 p_769->g_118 p_769->g_168 p_769->g_113 p_769->g_172 p_769->g_180
 * writes: p_769->g_41 p_769->g_22 p_769->g_113 p_769->g_118 p_769->g_119 p_769->g_132 p_769->g_48.f5 p_769->g_89.f1 p_769->g_142 p_769->g_48.f1 p_769->g_89.f2 p_769->g_88
 */
struct S1  func_67(int16_t * p_68, int64_t  p_69, int32_t * p_70, int32_t  p_71, struct S4 * p_769)
{ /* block id: 14 */
    VECTOR(uint32_t, 16) l_78 = (VECTOR(uint32_t, 16))(7UL, (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 0xFCFB248FL), 0xFCFB248FL), 0xFCFB248FL, 7UL, 0xFCFB248FL, (VECTOR(uint32_t, 2))(7UL, 0xFCFB248FL), (VECTOR(uint32_t, 2))(7UL, 0xFCFB248FL), 7UL, 0xFCFB248FL, 7UL, 0xFCFB248FL);
    VECTOR(uint32_t, 2) l_81 = (VECTOR(uint32_t, 2))(4294967295UL, 6UL);
    VECTOR(uint32_t, 2) l_137 = (VECTOR(uint32_t, 2))(0x6995D41FL, 0x64EE2F41L);
    VECTOR(uint32_t, 4) l_138 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x9AE0601FL), 0x9AE0601FL);
    uint32_t *l_139 = &p_769->g_48.f5;
    int i;
    p_769->g_88 = func_74(((*l_139) &= ((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 2))(0x1712D94BL, 0xB6C92F0DL)).yyxyyyxyyxyxyyyy, ((VECTOR(uint32_t, 2))(l_78.s24)).yyxxxyxyyxyyxxxy, ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(l_81.yxyyxxyxxyxxyyxy)).lo >> ((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),VECTOR(uint32_t, 2),((VECTOR(uint32_t, 2))(0xAA13A23BL, 0xC07A264EL)), ((VECTOR(uint32_t, 4))(mad_sat(((VECTOR(uint32_t, 4))(max(((VECTOR(uint32_t, 4))(FAKE_DIVERGE(p_769->global_2_offset, get_global_id(2), 10), func_82(&p_769->g_22, ((((void*)0 == p_70) <= (safe_mul_func_int8_t_s_s(0x11L, l_81.y))) && (*p_769->g_21)), p_769->g_88, p_769), 1UL, 0x416FBCE5L)), ((VECTOR(uint32_t, 2))(p_769->g_134.s52)).xxyy))), ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))(l_137.xxyxxxxyxxyxyyyy)).sb9 + ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_138.zz)).even, l_81.x, ((VECTOR(uint32_t, 4))(0xC6053745L)), 0xD828C4DAL, 0x86FAEEADL)).s54))).xyyx, ((VECTOR(uint32_t, 4))(0xA39D6D49L))))).hi, ((VECTOR(uint32_t, 2))(0xCFE17A9CL))))).xxxyxyyx))).s3403743002730154))).se), p_70, p_769->g_88, p_769);
    for (p_769->g_48.f5 = 0; (p_769->g_48.f5 <= 28); p_769->g_48.f5 = safe_add_func_int16_t_s_s(p_769->g_48.f5, 9))
    { /* block id: 67 */
        uint32_t **l_176 = &l_139;
        int32_t *l_177[8] = {&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41,&p_769->g_41};
        int32_t **l_178 = (void*)0;
        int32_t **l_179 = &l_177[1];
        int i;
        (*p_769->g_21) |= (((*l_176) = &p_769->g_132) == (void*)0);
        (*l_179) = l_177[4];
    }
    return p_769->g_180[5][4];
}


/* ------------------------------------------ */
/* 
 * reads : p_769->g_89.f1 p_769->g_142 p_769->g_48.f5 p_769->g_48.f1 p_769->g_118 p_769->g_89.f2 p_769->g_22 p_769->g_168 p_769->g_41 p_769->g_112 p_769->g_113 p_769->g_172
 * writes: p_769->g_89.f1 p_769->g_142 p_769->g_48.f5 p_769->g_48.f1 p_769->g_89.f2 p_769->g_41 p_769->g_113
 */
struct S0 * func_74(uint32_t  p_75, int32_t * p_76, struct S0 * p_77, struct S4 * p_769)
{ /* block id: 36 */
    uint32_t l_151 = 4294967295UL;
    struct S3 *l_171 = &p_769->g_142;
    struct S0 *l_173 = &p_769->g_89;
    for (p_769->g_89.f1 = (-26); (p_769->g_89.f1 == 9); p_769->g_89.f1++)
    { /* block id: 39 */
        struct S3 *l_143 = &p_769->g_142;
        int32_t l_146 = 0x16A6714CL;
        (*l_143) = p_769->g_142;
        if (p_75)
            continue;
        for (p_769->g_48.f5 = (-20); (p_769->g_48.f5 <= 15); p_769->g_48.f5 = safe_add_func_int16_t_s_s(p_769->g_48.f5, 2))
        { /* block id: 44 */
            l_146 = 2L;
        }
        for (p_769->g_48.f1 = 0; (p_769->g_48.f1 < 11); p_769->g_48.f1 = safe_add_func_uint16_t_u_u(p_769->g_48.f1, 8))
        { /* block id: 49 */
            int32_t l_152 = 0x76C4A1A2L;
            struct S3 *l_169 = &p_769->g_142;
            struct S3 **l_170[3];
            int i;
            for (i = 0; i < 3; i++)
                l_170[i] = &l_143;
            for (l_146 = 24; (l_146 != (-25)); l_146 = safe_sub_func_int64_t_s_s(l_146, 2))
            { /* block id: 52 */
                uint8_t *l_163 = (void*)0;
                uint8_t *l_164[6] = {&p_769->g_165,&p_769->g_165,&p_769->g_165,&p_769->g_165,&p_769->g_165,&p_769->g_165};
                int32_t l_166 = 8L;
                int16_t *l_167 = &p_769->g_89.f2;
                int i;
                (*p_769->g_168) &= ((0x3459L >= l_151) , ((l_152 < (((l_151 & FAKE_DIVERGE(p_769->local_0_offset, get_local_id(0), 10)) >= (safe_lshift_func_int16_t_s_u((18446744073709551615UL & (safe_rshift_func_int16_t_s_u((((*l_167) ^= (safe_add_func_int8_t_s_s((((void*)0 != p_769->g_118[2]) ^ (safe_mul_func_uint8_t_u_u((l_166 &= ((safe_lshift_func_int8_t_s_u(0x06L, GROUP_DIVERGE(1, 1))) , 0x6DL)), FAKE_DIVERGE(p_769->group_2_offset, get_group_id(2), 10)))), (-4L)))) < p_75), 7))), p_75))) && p_769->g_142.f0)) < p_769->g_22));
            }
            l_171 = l_169;
            return &p_769->g_89;
        }
    }
    (*p_769->g_172) = (*p_769->g_112);
    (*l_171) = p_769->g_142;
    return l_173;
}


/* ------------------------------------------ */
/* 
 * reads : p_769->g_22 p_769->g_91 p_769->g_41 p_769->g_112 p_769->g_115 p_769->g_125 p_769->g_126 p_769->g_127 p_769->g_89.f2 p_769->g_89.f5
 * writes: p_769->g_41 p_769->g_22 p_769->g_113 p_769->g_118 p_769->g_119 p_769->g_132
 */
uint32_t  func_82(int32_t * p_83, uint64_t  p_84, struct S0 * p_85, struct S4 * p_769)
{ /* block id: 15 */
    VECTOR(int32_t, 16) l_90 = (VECTOR(int32_t, 16))(0x2BD6516CL, (VECTOR(int32_t, 4))(0x2BD6516CL, (VECTOR(int32_t, 2))(0x2BD6516CL, (-1L)), (-1L)), (-1L), 0x2BD6516CL, (-1L), (VECTOR(int32_t, 2))(0x2BD6516CL, (-1L)), (VECTOR(int32_t, 2))(0x2BD6516CL, (-1L)), 0x2BD6516CL, (-1L), 0x2BD6516CL, (-1L));
    VECTOR(int32_t, 16) l_92 = (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x3095B69DL), 0x3095B69DL), 0x3095B69DL, 8L, 0x3095B69DL, (VECTOR(int32_t, 2))(8L, 0x3095B69DL), (VECTOR(int32_t, 2))(8L, 0x3095B69DL), 8L, 0x3095B69DL, 8L, 0x3095B69DL);
    VECTOR(int32_t, 4) l_93 = (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x14F356F3L), 0x14F356F3L);
    VECTOR(int32_t, 8) l_94 = (VECTOR(int32_t, 8))(0x45DF5A5DL, (VECTOR(int32_t, 4))(0x45DF5A5DL, (VECTOR(int32_t, 2))(0x45DF5A5DL, (-1L)), (-1L)), (-1L), 0x45DF5A5DL, (-1L));
    int32_t *l_95 = (void*)0;
    int32_t *l_96 = &p_769->g_41;
    int16_t *l_116[7];
    VECTOR(int16_t, 4) l_122 = (VECTOR(int16_t, 4))(0x6458L, (VECTOR(int16_t, 2))(0x6458L, 0x1332L), 0x1332L);
    VECTOR(int16_t, 16) l_123 = (VECTOR(int16_t, 16))(0x5B16L, (VECTOR(int16_t, 4))(0x5B16L, (VECTOR(int16_t, 2))(0x5B16L, 0x7C8CL), 0x7C8CL), 0x7C8CL, 0x5B16L, 0x7C8CL, (VECTOR(int16_t, 2))(0x5B16L, 0x7C8CL), (VECTOR(int16_t, 2))(0x5B16L, 0x7C8CL), 0x5B16L, 0x7C8CL, 0x5B16L, 0x7C8CL);
    VECTOR(int16_t, 4) l_124 = (VECTOR(int16_t, 4))(0x3EDEL, (VECTOR(int16_t, 2))(0x3EDEL, (-5L)), (-5L));
    int i;
    for (i = 0; i < 7; i++)
        l_116[i] = &p_769->g_89.f2;
    (*l_96) &= ((VECTOR(int32_t, 16))((*p_83), ((VECTOR(int32_t, 4))(l_90.s6c8b)), ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_769->g_91.s75)), (-1L), 0x4427A07EL)) & ((VECTOR(int32_t, 8))(l_92.s60f7e9ac)).odd))), 6L, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 2))(0L, 1L)), ((VECTOR(int32_t, 8))(l_93.xyzzwzyz)).s01))).xyxx && ((VECTOR(int32_t, 4))(l_94.s1111))))), 1L, 0x5A42CED7L)).s5;
    for (p_769->g_22 = (-6); (p_769->g_22 > 23); p_769->g_22 = safe_add_func_uint32_t_u_u(p_769->g_22, 7))
    { /* block id: 19 */
        int32_t *l_99 = (void*)0;
        int32_t *l_100 = (void*)0;
        int32_t l_101 = 0x6F0A2812L;
        int32_t *l_102 = (void*)0;
        int32_t *l_103 = &l_101;
        int32_t *l_104 = (void*)0;
        int32_t *l_105 = (void*)0;
        int32_t *l_106 = &p_769->g_41;
        int32_t *l_107 = &p_769->g_41;
        int32_t *l_108[3][9] = {{(void*)0,&l_101,&p_769->g_41,&l_101,(void*)0,(void*)0,&l_101,&p_769->g_41,&l_101},{(void*)0,&l_101,&p_769->g_41,&l_101,(void*)0,(void*)0,&l_101,&p_769->g_41,&l_101},{(void*)0,&l_101,&p_769->g_41,&l_101,(void*)0,(void*)0,&l_101,&p_769->g_41,&l_101}};
        uint8_t l_109 = 0xB8L;
        int i, j;
        if ((*p_83))
            break;
        l_109++;
        (*p_769->g_112) = l_95;
    }
    (*p_83) &= (&p_769->g_89 == (void*)0);
    if (((*p_83) = (*p_83)))
    { /* block id: 26 */
        struct S0 *l_114[4][2] = {{&p_769->g_89,&p_769->g_89},{&p_769->g_89,&p_769->g_89},{&p_769->g_89,&p_769->g_89},{&p_769->g_89,&p_769->g_89}};
        int16_t **l_117[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_128 = (-3L);
        int16_t **l_131 = &l_116[0];
        int i, j;
        (*p_83) &= ((l_114[3][0] != (p_769->g_115 , &p_769->g_115)) <= (0x44L > ((((p_769->g_118[1] = l_116[0]) == (p_769->g_119 = (void*)0)) & (safe_div_func_int16_t_s_s(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_122.zzyw)), ((VECTOR(int16_t, 4))(l_123.sa683)))), ((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 4))(5L, ((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 4))(l_124.xzzw)).yzzxxxzz, ((VECTOR(int16_t, 4))(p_769->g_125.s6291)).wwwyxwyx))).s05, ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))(p_769->g_126.s8a32cf90)).hi && ((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),int16_t,((VECTOR(int16_t, 16))(p_769->g_127.xzxxzwxwwyzxwwyy)).sd11f, (int16_t)(p_769->g_132 = ((l_128 > (safe_mul_func_uint8_t_u_u((l_131 != &l_116[3]), p_84))) | p_769->g_89.f2)), (int16_t)p_769->g_125.s2))).zzxzwzyzzwyzwzxw && ((VECTOR(int16_t, 16))(0x7869L))))).s0f >= ((VECTOR(int16_t, 2))(0x0399L))))).xxxxxyxxxyxxxxyx))), ((VECTOR(int16_t, 16))(0x6995L))))).sb3ea))), 0x21DEL, 0x25FEL, 0x228BL, 0x309CL)).odd, ((VECTOR(int16_t, 4))(1L))))).wwwwwwzz > ((VECTOR(int16_t, 8))((-8L)))))), 0x5FC2L, 0L, p_84, ((VECTOR(int16_t, 4))(0x2CE0L)), (-2L))).sfb8b, ((VECTOR(int16_t, 4))(0x2FC4L))))).wyyxxwyxwwywzyxy <= ((VECTOR(int16_t, 16))(0x3CA4L))))).s2f))), 1L)).xxyzywwxwwywzyyz, ((VECTOR(int16_t, 16))(0x153DL))))).s3bc7, ((VECTOR(int16_t, 4))(0x25DDL))))), ((VECTOR(int16_t, 4))(1L)))).sf5 & ((VECTOR(int16_t, 2))(8L))))).hi, p_769->g_89.f2))) & p_769->g_89.f5)));
    }
    else
    { /* block id: 31 */
        int32_t *l_133 = (void*)0;
        (*l_96) ^= (p_83 != l_133);
    }
    return (*l_96);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_770;
    struct S4* p_769 = &c_770;
    struct S4 c_771 = {
        246UL, // p_769->g_20
        (-1L), // p_769->g_22
        &p_769->g_22, // p_769->g_21
        0x67DCAF6DL, // p_769->g_41
        {0x9BB5F37DL,0x16E9900F1D91A4ACL,7L,0x20D0A060L,0x7BAD6E3F992CE4CAL,8UL,65535UL,65529UL}, // p_769->g_48
        {0xC34EF3EFL,0L,0x27A4L,0x205A567AL,0xB25B5FE41CD94991L,1UL,4UL,0xE0B6L}, // p_769->g_89
        &p_769->g_89, // p_769->g_88
        (VECTOR(int32_t, 16))(0x23EC0817L, (VECTOR(int32_t, 4))(0x23EC0817L, (VECTOR(int32_t, 2))(0x23EC0817L, (-8L)), (-8L)), (-8L), 0x23EC0817L, (-8L), (VECTOR(int32_t, 2))(0x23EC0817L, (-8L)), (VECTOR(int32_t, 2))(0x23EC0817L, (-8L)), 0x23EC0817L, (-8L), 0x23EC0817L, (-8L)), // p_769->g_91
        &p_769->g_41, // p_769->g_113
        &p_769->g_113, // p_769->g_112
        {4294967295UL,-1L,-9L,1L,0x9A3B3DE1EFC347C8L,4294967295UL,65530UL,4UL}, // p_769->g_115
        {&p_769->g_89.f2,&p_769->g_89.f2,&p_769->g_89.f2}, // p_769->g_118
        &p_769->g_89.f2, // p_769->g_119
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-5L)), (-5L)), (-5L), 0L, (-5L), (VECTOR(int16_t, 2))(0L, (-5L)), (VECTOR(int16_t, 2))(0L, (-5L)), 0L, (-5L), 0L, (-5L)), // p_769->g_125
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-10L)), (-10L)), (-10L), 1L, (-10L), (VECTOR(int16_t, 2))(1L, (-10L)), (VECTOR(int16_t, 2))(1L, (-10L)), 1L, (-10L), 1L, (-10L)), // p_769->g_126
        (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), 0x117CL), 0x117CL), // p_769->g_127
        1UL, // p_769->g_132
        (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL, (VECTOR(uint32_t, 2))(0UL, 1UL), (VECTOR(uint32_t, 2))(0UL, 1UL), 0UL, 1UL, 0UL, 1UL), // p_769->g_134
        {0x674C3FBF1EE3AC00L,0xCCE6538CD09A4D5CL,0x76L,4294967295UL,0x57C546D1L}, // p_769->g_142
        0x28L, // p_769->g_165
        &p_769->g_41, // p_769->g_168
        &p_769->g_113, // p_769->g_172
        {{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}}}, // p_769->g_180
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 5L), 5L), 5L, 0L, 5L, (VECTOR(int32_t, 2))(0L, 5L), (VECTOR(int32_t, 2))(0L, 5L), 0L, 5L, 0L, 5L), // p_769->g_182
        {-1L,0x7E034972C2B5224EL,0x23F6A8D8B0006CACL,-5L,{1UL,-3L,0x5841L,0L,1UL,0UL,65528UL,0x6046L}}, // p_769->g_184
        &p_769->g_180[5][4].f1, // p_769->g_185
        (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), (-1L)), (-1L)), // p_769->g_186
        {0x42BB811BF82B2137L,18446744073709551609UL,0x66L,7UL,0x36FFD872L}, // p_769->g_220
        {1UL,-1L,-9L,4L,4UL,9UL,65535UL,1UL}, // p_769->g_253
        {{{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}}},{{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}}},{{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}},{{0x5086198894FF6ED4L,0UL,1L,1UL,9L},{0x1554C0BE30A5FB24L,0xD56F73BD5E898998L,-1L,0x18352B95L,0L},{0x25238D1B57934608L,1UL,0x27L,4294967295UL,0x2345CDD0L},{0x7620321E013252CBL,0xBF0B189075B70FD3L,1L,0x9B785762L,0x0E72DA09L},{0x7BDD8542FD69753BL,0x827801B87AFCBFBDL,0x28L,9UL,9L},{0x5FE6B94FB1358498L,0xCE21AACA16AE204AL,0L,4294967295UL,0x5E0BBEE7L},{0x0BF8AFA24CBD5D16L,0x3CD704922381BD11L,0x08L,1UL,1L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L},{0x4D84C3E9650826CEL,0x4F6FBCFE45B5A84DL,0x1AL,0xF886CF4FL,0L}}}}, // p_769->g_258
        &p_769->g_258[1][5][0], // p_769->g_257
        &p_769->g_257, // p_769->g_256
        18446744073709551611UL, // p_769->g_264
        0x9E9C1E547E43D728L, // p_769->g_268
        (VECTOR(uint32_t, 8))(0x27B5CDC7L, (VECTOR(uint32_t, 4))(0x27B5CDC7L, (VECTOR(uint32_t, 2))(0x27B5CDC7L, 1UL), 1UL), 1UL, 0x27B5CDC7L, 1UL), // p_769->g_293
        (VECTOR(uint32_t, 16))(0xCBE7A38EL, (VECTOR(uint32_t, 4))(0xCBE7A38EL, (VECTOR(uint32_t, 2))(0xCBE7A38EL, 0UL), 0UL), 0UL, 0xCBE7A38EL, 0UL, (VECTOR(uint32_t, 2))(0xCBE7A38EL, 0UL), (VECTOR(uint32_t, 2))(0xCBE7A38EL, 0UL), 0xCBE7A38EL, 0UL, 0xCBE7A38EL, 0UL), // p_769->g_304
        0UL, // p_769->g_318
        (VECTOR(int32_t, 2))(1L, 0L), // p_769->g_320
        (VECTOR(int16_t, 8))(0x4FB4L, (VECTOR(int16_t, 4))(0x4FB4L, (VECTOR(int16_t, 2))(0x4FB4L, 1L), 1L), 1L, 0x4FB4L, 1L), // p_769->g_325
        (VECTOR(int16_t, 16))(0x5C30L, (VECTOR(int16_t, 4))(0x5C30L, (VECTOR(int16_t, 2))(0x5C30L, 0x4471L), 0x4471L), 0x4471L, 0x5C30L, 0x4471L, (VECTOR(int16_t, 2))(0x5C30L, 0x4471L), (VECTOR(int16_t, 2))(0x5C30L, 0x4471L), 0x5C30L, 0x4471L, 0x5C30L, 0x4471L), // p_769->g_326
        (VECTOR(int16_t, 16))(0x2D0AL, (VECTOR(int16_t, 4))(0x2D0AL, (VECTOR(int16_t, 2))(0x2D0AL, 0x46D2L), 0x46D2L), 0x46D2L, 0x2D0AL, 0x46D2L, (VECTOR(int16_t, 2))(0x2D0AL, 0x46D2L), (VECTOR(int16_t, 2))(0x2D0AL, 0x46D2L), 0x2D0AL, 0x46D2L, 0x2D0AL, 0x46D2L), // p_769->g_327
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL), // p_769->g_337
        (VECTOR(int32_t, 4))(0x5B2A3FBAL, (VECTOR(int32_t, 2))(0x5B2A3FBAL, 0x694D4324L), 0x694D4324L), // p_769->g_345
        (VECTOR(int32_t, 8))(0x03385127L, (VECTOR(int32_t, 4))(0x03385127L, (VECTOR(int32_t, 2))(0x03385127L, 1L), 1L), 1L, 0x03385127L, 1L), // p_769->g_346
        (VECTOR(int32_t, 4))(0x5D7EB925L, (VECTOR(int32_t, 2))(0x5D7EB925L, 1L), 1L), // p_769->g_347
        (VECTOR(int32_t, 8))(0x4E07C823L, (VECTOR(int32_t, 4))(0x4E07C823L, (VECTOR(int32_t, 2))(0x4E07C823L, 2L), 2L), 2L, 0x4E07C823L, 2L), // p_769->g_348
        (VECTOR(int64_t, 2))(9L, 1L), // p_769->g_351
        0x14L, // p_769->g_355
        0xF7EAL, // p_769->g_360
        6UL, // p_769->g_364
        {0x0255399903979E4CL,4UL,-8L,6UL,5L}, // p_769->g_380
        (VECTOR(int16_t, 4))(0x1FC3L, (VECTOR(int16_t, 2))(0x1FC3L, 0L), 0L), // p_769->g_392
        (void*)0, // p_769->g_410
        (void*)0, // p_769->g_412
        (void*)0, // p_769->g_413
        &p_769->g_410, // p_769->g_414
        0x8BA5L, // p_769->g_416
        &p_769->g_410, // p_769->g_425
        (void*)0, // p_769->g_461
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x133FL), 0x133FL), // p_769->g_513
        (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 1UL), 1UL), // p_769->g_549
        3UL, // p_769->g_561
        &p_769->g_461, // p_769->g_587
        &p_769->g_587, // p_769->g_586
        (VECTOR(uint8_t, 16))(0x94L, (VECTOR(uint8_t, 4))(0x94L, (VECTOR(uint8_t, 2))(0x94L, 249UL), 249UL), 249UL, 0x94L, 249UL, (VECTOR(uint8_t, 2))(0x94L, 249UL), (VECTOR(uint8_t, 2))(0x94L, 249UL), 0x94L, 249UL, 0x94L, 249UL), // p_769->g_589
        (VECTOR(int64_t, 8))((-7L), (VECTOR(int64_t, 4))((-7L), (VECTOR(int64_t, 2))((-7L), 0L), 0L), 0L, (-7L), 0L), // p_769->g_631
        (VECTOR(uint8_t, 2))(0x06L, 253UL), // p_769->g_661
        (VECTOR(uint8_t, 2))(0x24L, 1UL), // p_769->g_662
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x09L), 0x09L), 0x09L, 255UL, 0x09L, (VECTOR(uint8_t, 2))(255UL, 0x09L), (VECTOR(uint8_t, 2))(255UL, 0x09L), 255UL, 0x09L, 255UL, 0x09L), // p_769->g_688
        {1L,0L,1L,1L,0L,1L,1L}, // p_769->g_700
        (VECTOR(int64_t, 2))(0x2C57588F36204F83L, (-8L)), // p_769->g_701
        (VECTOR(int16_t, 2))((-2L), (-9L)), // p_769->g_710
        (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 7L), 7L), 7L, (-1L), 7L), // p_769->g_711
        (VECTOR(int64_t, 16))(0x3740220F94B9DA60L, (VECTOR(int64_t, 4))(0x3740220F94B9DA60L, (VECTOR(int64_t, 2))(0x3740220F94B9DA60L, 0x7EE06ECE28EC18DBL), 0x7EE06ECE28EC18DBL), 0x7EE06ECE28EC18DBL, 0x3740220F94B9DA60L, 0x7EE06ECE28EC18DBL, (VECTOR(int64_t, 2))(0x3740220F94B9DA60L, 0x7EE06ECE28EC18DBL), (VECTOR(int64_t, 2))(0x3740220F94B9DA60L, 0x7EE06ECE28EC18DBL), 0x3740220F94B9DA60L, 0x7EE06ECE28EC18DBL, 0x3740220F94B9DA60L, 0x7EE06ECE28EC18DBL), // p_769->g_713
        (VECTOR(int64_t, 8))(0x07FCF62E1444AD4FL, (VECTOR(int64_t, 4))(0x07FCF62E1444AD4FL, (VECTOR(int64_t, 2))(0x07FCF62E1444AD4FL, 0x305B033D85675404L), 0x305B033D85675404L), 0x305B033D85675404L, 0x07FCF62E1444AD4FL, 0x305B033D85675404L), // p_769->g_714
        (VECTOR(int64_t, 8))((-4L), (VECTOR(int64_t, 4))((-4L), (VECTOR(int64_t, 2))((-4L), (-1L)), (-1L)), (-1L), (-4L), (-1L)), // p_769->g_715
        (VECTOR(int64_t, 2))((-1L), 1L), // p_769->g_717
        (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 1L), 1L), // p_769->g_718
        &p_769->g_253.f6, // p_769->g_726
        &p_769->g_726, // p_769->g_725
        &p_769->g_89.f5, // p_769->g_731
        &p_769->g_731, // p_769->g_730
        &p_769->g_730, // p_769->g_732
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), // p_769->g_735
        (VECTOR(uint16_t, 4))(0x5426L, (VECTOR(uint16_t, 2))(0x5426L, 1UL), 1UL), // p_769->g_751
        (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 65529UL), 65529UL), // p_769->g_752
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x2FA2L), 0x2FA2L), 0x2FA2L, 65535UL, 0x2FA2L, (VECTOR(uint16_t, 2))(65535UL, 0x2FA2L), (VECTOR(uint16_t, 2))(65535UL, 0x2FA2L), 65535UL, 0x2FA2L, 65535UL, 0x2FA2L), // p_769->g_757
        0x4BE9CDF6L, // p_769->g_762
        (VECTOR(uint64_t, 8))(18446744073709551606UL, (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x36D4178E14AF8E37L), 0x36D4178E14AF8E37L), 0x36D4178E14AF8E37L, 18446744073709551606UL, 0x36D4178E14AF8E37L), // p_769->g_765
        sequence_input[get_global_id(0)], // p_769->global_0_offset
        sequence_input[get_global_id(1)], // p_769->global_1_offset
        sequence_input[get_global_id(2)], // p_769->global_2_offset
        sequence_input[get_local_id(0)], // p_769->local_0_offset
        sequence_input[get_local_id(1)], // p_769->local_1_offset
        sequence_input[get_local_id(2)], // p_769->local_2_offset
        sequence_input[get_group_id(0)], // p_769->group_0_offset
        sequence_input[get_group_id(1)], // p_769->group_1_offset
        sequence_input[get_group_id(2)], // p_769->group_2_offset
    };
    c_770 = c_771;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_769);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_769->g_20, "p_769->g_20", print_hash_value);
    transparent_crc(p_769->g_22, "p_769->g_22", print_hash_value);
    transparent_crc(p_769->g_41, "p_769->g_41", print_hash_value);
    transparent_crc(p_769->g_48.f0, "p_769->g_48.f0", print_hash_value);
    transparent_crc(p_769->g_48.f1, "p_769->g_48.f1", print_hash_value);
    transparent_crc(p_769->g_48.f2, "p_769->g_48.f2", print_hash_value);
    transparent_crc(p_769->g_48.f3, "p_769->g_48.f3", print_hash_value);
    transparent_crc(p_769->g_48.f4, "p_769->g_48.f4", print_hash_value);
    transparent_crc(p_769->g_48.f5, "p_769->g_48.f5", print_hash_value);
    transparent_crc(p_769->g_48.f6, "p_769->g_48.f6", print_hash_value);
    transparent_crc(p_769->g_48.f7, "p_769->g_48.f7", print_hash_value);
    transparent_crc(p_769->g_89.f0, "p_769->g_89.f0", print_hash_value);
    transparent_crc(p_769->g_89.f1, "p_769->g_89.f1", print_hash_value);
    transparent_crc(p_769->g_89.f2, "p_769->g_89.f2", print_hash_value);
    transparent_crc(p_769->g_89.f3, "p_769->g_89.f3", print_hash_value);
    transparent_crc(p_769->g_89.f4, "p_769->g_89.f4", print_hash_value);
    transparent_crc(p_769->g_89.f5, "p_769->g_89.f5", print_hash_value);
    transparent_crc(p_769->g_89.f6, "p_769->g_89.f6", print_hash_value);
    transparent_crc(p_769->g_89.f7, "p_769->g_89.f7", print_hash_value);
    transparent_crc(p_769->g_91.s0, "p_769->g_91.s0", print_hash_value);
    transparent_crc(p_769->g_91.s1, "p_769->g_91.s1", print_hash_value);
    transparent_crc(p_769->g_91.s2, "p_769->g_91.s2", print_hash_value);
    transparent_crc(p_769->g_91.s3, "p_769->g_91.s3", print_hash_value);
    transparent_crc(p_769->g_91.s4, "p_769->g_91.s4", print_hash_value);
    transparent_crc(p_769->g_91.s5, "p_769->g_91.s5", print_hash_value);
    transparent_crc(p_769->g_91.s6, "p_769->g_91.s6", print_hash_value);
    transparent_crc(p_769->g_91.s7, "p_769->g_91.s7", print_hash_value);
    transparent_crc(p_769->g_91.s8, "p_769->g_91.s8", print_hash_value);
    transparent_crc(p_769->g_91.s9, "p_769->g_91.s9", print_hash_value);
    transparent_crc(p_769->g_91.sa, "p_769->g_91.sa", print_hash_value);
    transparent_crc(p_769->g_91.sb, "p_769->g_91.sb", print_hash_value);
    transparent_crc(p_769->g_91.sc, "p_769->g_91.sc", print_hash_value);
    transparent_crc(p_769->g_91.sd, "p_769->g_91.sd", print_hash_value);
    transparent_crc(p_769->g_91.se, "p_769->g_91.se", print_hash_value);
    transparent_crc(p_769->g_91.sf, "p_769->g_91.sf", print_hash_value);
    transparent_crc(p_769->g_115.f0, "p_769->g_115.f0", print_hash_value);
    transparent_crc(p_769->g_115.f1, "p_769->g_115.f1", print_hash_value);
    transparent_crc(p_769->g_115.f2, "p_769->g_115.f2", print_hash_value);
    transparent_crc(p_769->g_115.f3, "p_769->g_115.f3", print_hash_value);
    transparent_crc(p_769->g_115.f4, "p_769->g_115.f4", print_hash_value);
    transparent_crc(p_769->g_115.f5, "p_769->g_115.f5", print_hash_value);
    transparent_crc(p_769->g_115.f6, "p_769->g_115.f6", print_hash_value);
    transparent_crc(p_769->g_115.f7, "p_769->g_115.f7", print_hash_value);
    transparent_crc(p_769->g_125.s0, "p_769->g_125.s0", print_hash_value);
    transparent_crc(p_769->g_125.s1, "p_769->g_125.s1", print_hash_value);
    transparent_crc(p_769->g_125.s2, "p_769->g_125.s2", print_hash_value);
    transparent_crc(p_769->g_125.s3, "p_769->g_125.s3", print_hash_value);
    transparent_crc(p_769->g_125.s4, "p_769->g_125.s4", print_hash_value);
    transparent_crc(p_769->g_125.s5, "p_769->g_125.s5", print_hash_value);
    transparent_crc(p_769->g_125.s6, "p_769->g_125.s6", print_hash_value);
    transparent_crc(p_769->g_125.s7, "p_769->g_125.s7", print_hash_value);
    transparent_crc(p_769->g_125.s8, "p_769->g_125.s8", print_hash_value);
    transparent_crc(p_769->g_125.s9, "p_769->g_125.s9", print_hash_value);
    transparent_crc(p_769->g_125.sa, "p_769->g_125.sa", print_hash_value);
    transparent_crc(p_769->g_125.sb, "p_769->g_125.sb", print_hash_value);
    transparent_crc(p_769->g_125.sc, "p_769->g_125.sc", print_hash_value);
    transparent_crc(p_769->g_125.sd, "p_769->g_125.sd", print_hash_value);
    transparent_crc(p_769->g_125.se, "p_769->g_125.se", print_hash_value);
    transparent_crc(p_769->g_125.sf, "p_769->g_125.sf", print_hash_value);
    transparent_crc(p_769->g_126.s0, "p_769->g_126.s0", print_hash_value);
    transparent_crc(p_769->g_126.s1, "p_769->g_126.s1", print_hash_value);
    transparent_crc(p_769->g_126.s2, "p_769->g_126.s2", print_hash_value);
    transparent_crc(p_769->g_126.s3, "p_769->g_126.s3", print_hash_value);
    transparent_crc(p_769->g_126.s4, "p_769->g_126.s4", print_hash_value);
    transparent_crc(p_769->g_126.s5, "p_769->g_126.s5", print_hash_value);
    transparent_crc(p_769->g_126.s6, "p_769->g_126.s6", print_hash_value);
    transparent_crc(p_769->g_126.s7, "p_769->g_126.s7", print_hash_value);
    transparent_crc(p_769->g_126.s8, "p_769->g_126.s8", print_hash_value);
    transparent_crc(p_769->g_126.s9, "p_769->g_126.s9", print_hash_value);
    transparent_crc(p_769->g_126.sa, "p_769->g_126.sa", print_hash_value);
    transparent_crc(p_769->g_126.sb, "p_769->g_126.sb", print_hash_value);
    transparent_crc(p_769->g_126.sc, "p_769->g_126.sc", print_hash_value);
    transparent_crc(p_769->g_126.sd, "p_769->g_126.sd", print_hash_value);
    transparent_crc(p_769->g_126.se, "p_769->g_126.se", print_hash_value);
    transparent_crc(p_769->g_126.sf, "p_769->g_126.sf", print_hash_value);
    transparent_crc(p_769->g_127.x, "p_769->g_127.x", print_hash_value);
    transparent_crc(p_769->g_127.y, "p_769->g_127.y", print_hash_value);
    transparent_crc(p_769->g_127.z, "p_769->g_127.z", print_hash_value);
    transparent_crc(p_769->g_127.w, "p_769->g_127.w", print_hash_value);
    transparent_crc(p_769->g_132, "p_769->g_132", print_hash_value);
    transparent_crc(p_769->g_134.s0, "p_769->g_134.s0", print_hash_value);
    transparent_crc(p_769->g_134.s1, "p_769->g_134.s1", print_hash_value);
    transparent_crc(p_769->g_134.s2, "p_769->g_134.s2", print_hash_value);
    transparent_crc(p_769->g_134.s3, "p_769->g_134.s3", print_hash_value);
    transparent_crc(p_769->g_134.s4, "p_769->g_134.s4", print_hash_value);
    transparent_crc(p_769->g_134.s5, "p_769->g_134.s5", print_hash_value);
    transparent_crc(p_769->g_134.s6, "p_769->g_134.s6", print_hash_value);
    transparent_crc(p_769->g_134.s7, "p_769->g_134.s7", print_hash_value);
    transparent_crc(p_769->g_134.s8, "p_769->g_134.s8", print_hash_value);
    transparent_crc(p_769->g_134.s9, "p_769->g_134.s9", print_hash_value);
    transparent_crc(p_769->g_134.sa, "p_769->g_134.sa", print_hash_value);
    transparent_crc(p_769->g_134.sb, "p_769->g_134.sb", print_hash_value);
    transparent_crc(p_769->g_134.sc, "p_769->g_134.sc", print_hash_value);
    transparent_crc(p_769->g_134.sd, "p_769->g_134.sd", print_hash_value);
    transparent_crc(p_769->g_134.se, "p_769->g_134.se", print_hash_value);
    transparent_crc(p_769->g_134.sf, "p_769->g_134.sf", print_hash_value);
    transparent_crc(p_769->g_142.f0, "p_769->g_142.f0", print_hash_value);
    transparent_crc(p_769->g_142.f1, "p_769->g_142.f1", print_hash_value);
    transparent_crc(p_769->g_142.f2, "p_769->g_142.f2", print_hash_value);
    transparent_crc(p_769->g_142.f3, "p_769->g_142.f3", print_hash_value);
    transparent_crc(p_769->g_142.f4, "p_769->g_142.f4", print_hash_value);
    transparent_crc(p_769->g_165, "p_769->g_165", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_769->g_180[i][j].f0, "p_769->g_180[i][j].f0", print_hash_value);
            transparent_crc(p_769->g_180[i][j].f1, "p_769->g_180[i][j].f1", print_hash_value);

        }
    }
    transparent_crc(p_769->g_182.s0, "p_769->g_182.s0", print_hash_value);
    transparent_crc(p_769->g_182.s1, "p_769->g_182.s1", print_hash_value);
    transparent_crc(p_769->g_182.s2, "p_769->g_182.s2", print_hash_value);
    transparent_crc(p_769->g_182.s3, "p_769->g_182.s3", print_hash_value);
    transparent_crc(p_769->g_182.s4, "p_769->g_182.s4", print_hash_value);
    transparent_crc(p_769->g_182.s5, "p_769->g_182.s5", print_hash_value);
    transparent_crc(p_769->g_182.s6, "p_769->g_182.s6", print_hash_value);
    transparent_crc(p_769->g_182.s7, "p_769->g_182.s7", print_hash_value);
    transparent_crc(p_769->g_182.s8, "p_769->g_182.s8", print_hash_value);
    transparent_crc(p_769->g_182.s9, "p_769->g_182.s9", print_hash_value);
    transparent_crc(p_769->g_182.sa, "p_769->g_182.sa", print_hash_value);
    transparent_crc(p_769->g_182.sb, "p_769->g_182.sb", print_hash_value);
    transparent_crc(p_769->g_182.sc, "p_769->g_182.sc", print_hash_value);
    transparent_crc(p_769->g_182.sd, "p_769->g_182.sd", print_hash_value);
    transparent_crc(p_769->g_182.se, "p_769->g_182.se", print_hash_value);
    transparent_crc(p_769->g_182.sf, "p_769->g_182.sf", print_hash_value);
    transparent_crc(p_769->g_184.f0, "p_769->g_184.f0", print_hash_value);
    transparent_crc(p_769->g_184.f1, "p_769->g_184.f1", print_hash_value);
    transparent_crc(p_769->g_184.f2, "p_769->g_184.f2", print_hash_value);
    transparent_crc(p_769->g_184.f3, "p_769->g_184.f3", print_hash_value);
    transparent_crc(p_769->g_184.f4.f0, "p_769->g_184.f4.f0", print_hash_value);
    transparent_crc(p_769->g_184.f4.f1, "p_769->g_184.f4.f1", print_hash_value);
    transparent_crc(p_769->g_184.f4.f2, "p_769->g_184.f4.f2", print_hash_value);
    transparent_crc(p_769->g_184.f4.f3, "p_769->g_184.f4.f3", print_hash_value);
    transparent_crc(p_769->g_184.f4.f4, "p_769->g_184.f4.f4", print_hash_value);
    transparent_crc(p_769->g_184.f4.f5, "p_769->g_184.f4.f5", print_hash_value);
    transparent_crc(p_769->g_184.f4.f6, "p_769->g_184.f4.f6", print_hash_value);
    transparent_crc(p_769->g_184.f4.f7, "p_769->g_184.f4.f7", print_hash_value);
    transparent_crc(p_769->g_186.x, "p_769->g_186.x", print_hash_value);
    transparent_crc(p_769->g_186.y, "p_769->g_186.y", print_hash_value);
    transparent_crc(p_769->g_186.z, "p_769->g_186.z", print_hash_value);
    transparent_crc(p_769->g_186.w, "p_769->g_186.w", print_hash_value);
    transparent_crc(p_769->g_220.f0, "p_769->g_220.f0", print_hash_value);
    transparent_crc(p_769->g_220.f1, "p_769->g_220.f1", print_hash_value);
    transparent_crc(p_769->g_220.f2, "p_769->g_220.f2", print_hash_value);
    transparent_crc(p_769->g_220.f3, "p_769->g_220.f3", print_hash_value);
    transparent_crc(p_769->g_220.f4, "p_769->g_220.f4", print_hash_value);
    transparent_crc(p_769->g_253.f0, "p_769->g_253.f0", print_hash_value);
    transparent_crc(p_769->g_253.f1, "p_769->g_253.f1", print_hash_value);
    transparent_crc(p_769->g_253.f2, "p_769->g_253.f2", print_hash_value);
    transparent_crc(p_769->g_253.f3, "p_769->g_253.f3", print_hash_value);
    transparent_crc(p_769->g_253.f4, "p_769->g_253.f4", print_hash_value);
    transparent_crc(p_769->g_253.f5, "p_769->g_253.f5", print_hash_value);
    transparent_crc(p_769->g_253.f6, "p_769->g_253.f6", print_hash_value);
    transparent_crc(p_769->g_253.f7, "p_769->g_253.f7", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_769->g_258[i][j][k].f0, "p_769->g_258[i][j][k].f0", print_hash_value);
                transparent_crc(p_769->g_258[i][j][k].f1, "p_769->g_258[i][j][k].f1", print_hash_value);
                transparent_crc(p_769->g_258[i][j][k].f2, "p_769->g_258[i][j][k].f2", print_hash_value);
                transparent_crc(p_769->g_258[i][j][k].f3, "p_769->g_258[i][j][k].f3", print_hash_value);
                transparent_crc(p_769->g_258[i][j][k].f4, "p_769->g_258[i][j][k].f4", print_hash_value);

            }
        }
    }
    transparent_crc(p_769->g_264, "p_769->g_264", print_hash_value);
    transparent_crc(p_769->g_268, "p_769->g_268", print_hash_value);
    transparent_crc(p_769->g_293.s0, "p_769->g_293.s0", print_hash_value);
    transparent_crc(p_769->g_293.s1, "p_769->g_293.s1", print_hash_value);
    transparent_crc(p_769->g_293.s2, "p_769->g_293.s2", print_hash_value);
    transparent_crc(p_769->g_293.s3, "p_769->g_293.s3", print_hash_value);
    transparent_crc(p_769->g_293.s4, "p_769->g_293.s4", print_hash_value);
    transparent_crc(p_769->g_293.s5, "p_769->g_293.s5", print_hash_value);
    transparent_crc(p_769->g_293.s6, "p_769->g_293.s6", print_hash_value);
    transparent_crc(p_769->g_293.s7, "p_769->g_293.s7", print_hash_value);
    transparent_crc(p_769->g_304.s0, "p_769->g_304.s0", print_hash_value);
    transparent_crc(p_769->g_304.s1, "p_769->g_304.s1", print_hash_value);
    transparent_crc(p_769->g_304.s2, "p_769->g_304.s2", print_hash_value);
    transparent_crc(p_769->g_304.s3, "p_769->g_304.s3", print_hash_value);
    transparent_crc(p_769->g_304.s4, "p_769->g_304.s4", print_hash_value);
    transparent_crc(p_769->g_304.s5, "p_769->g_304.s5", print_hash_value);
    transparent_crc(p_769->g_304.s6, "p_769->g_304.s6", print_hash_value);
    transparent_crc(p_769->g_304.s7, "p_769->g_304.s7", print_hash_value);
    transparent_crc(p_769->g_304.s8, "p_769->g_304.s8", print_hash_value);
    transparent_crc(p_769->g_304.s9, "p_769->g_304.s9", print_hash_value);
    transparent_crc(p_769->g_304.sa, "p_769->g_304.sa", print_hash_value);
    transparent_crc(p_769->g_304.sb, "p_769->g_304.sb", print_hash_value);
    transparent_crc(p_769->g_304.sc, "p_769->g_304.sc", print_hash_value);
    transparent_crc(p_769->g_304.sd, "p_769->g_304.sd", print_hash_value);
    transparent_crc(p_769->g_304.se, "p_769->g_304.se", print_hash_value);
    transparent_crc(p_769->g_304.sf, "p_769->g_304.sf", print_hash_value);
    transparent_crc(p_769->g_318, "p_769->g_318", print_hash_value);
    transparent_crc(p_769->g_320.x, "p_769->g_320.x", print_hash_value);
    transparent_crc(p_769->g_320.y, "p_769->g_320.y", print_hash_value);
    transparent_crc(p_769->g_325.s0, "p_769->g_325.s0", print_hash_value);
    transparent_crc(p_769->g_325.s1, "p_769->g_325.s1", print_hash_value);
    transparent_crc(p_769->g_325.s2, "p_769->g_325.s2", print_hash_value);
    transparent_crc(p_769->g_325.s3, "p_769->g_325.s3", print_hash_value);
    transparent_crc(p_769->g_325.s4, "p_769->g_325.s4", print_hash_value);
    transparent_crc(p_769->g_325.s5, "p_769->g_325.s5", print_hash_value);
    transparent_crc(p_769->g_325.s6, "p_769->g_325.s6", print_hash_value);
    transparent_crc(p_769->g_325.s7, "p_769->g_325.s7", print_hash_value);
    transparent_crc(p_769->g_326.s0, "p_769->g_326.s0", print_hash_value);
    transparent_crc(p_769->g_326.s1, "p_769->g_326.s1", print_hash_value);
    transparent_crc(p_769->g_326.s2, "p_769->g_326.s2", print_hash_value);
    transparent_crc(p_769->g_326.s3, "p_769->g_326.s3", print_hash_value);
    transparent_crc(p_769->g_326.s4, "p_769->g_326.s4", print_hash_value);
    transparent_crc(p_769->g_326.s5, "p_769->g_326.s5", print_hash_value);
    transparent_crc(p_769->g_326.s6, "p_769->g_326.s6", print_hash_value);
    transparent_crc(p_769->g_326.s7, "p_769->g_326.s7", print_hash_value);
    transparent_crc(p_769->g_326.s8, "p_769->g_326.s8", print_hash_value);
    transparent_crc(p_769->g_326.s9, "p_769->g_326.s9", print_hash_value);
    transparent_crc(p_769->g_326.sa, "p_769->g_326.sa", print_hash_value);
    transparent_crc(p_769->g_326.sb, "p_769->g_326.sb", print_hash_value);
    transparent_crc(p_769->g_326.sc, "p_769->g_326.sc", print_hash_value);
    transparent_crc(p_769->g_326.sd, "p_769->g_326.sd", print_hash_value);
    transparent_crc(p_769->g_326.se, "p_769->g_326.se", print_hash_value);
    transparent_crc(p_769->g_326.sf, "p_769->g_326.sf", print_hash_value);
    transparent_crc(p_769->g_327.s0, "p_769->g_327.s0", print_hash_value);
    transparent_crc(p_769->g_327.s1, "p_769->g_327.s1", print_hash_value);
    transparent_crc(p_769->g_327.s2, "p_769->g_327.s2", print_hash_value);
    transparent_crc(p_769->g_327.s3, "p_769->g_327.s3", print_hash_value);
    transparent_crc(p_769->g_327.s4, "p_769->g_327.s4", print_hash_value);
    transparent_crc(p_769->g_327.s5, "p_769->g_327.s5", print_hash_value);
    transparent_crc(p_769->g_327.s6, "p_769->g_327.s6", print_hash_value);
    transparent_crc(p_769->g_327.s7, "p_769->g_327.s7", print_hash_value);
    transparent_crc(p_769->g_327.s8, "p_769->g_327.s8", print_hash_value);
    transparent_crc(p_769->g_327.s9, "p_769->g_327.s9", print_hash_value);
    transparent_crc(p_769->g_327.sa, "p_769->g_327.sa", print_hash_value);
    transparent_crc(p_769->g_327.sb, "p_769->g_327.sb", print_hash_value);
    transparent_crc(p_769->g_327.sc, "p_769->g_327.sc", print_hash_value);
    transparent_crc(p_769->g_327.sd, "p_769->g_327.sd", print_hash_value);
    transparent_crc(p_769->g_327.se, "p_769->g_327.se", print_hash_value);
    transparent_crc(p_769->g_327.sf, "p_769->g_327.sf", print_hash_value);
    transparent_crc(p_769->g_337.x, "p_769->g_337.x", print_hash_value);
    transparent_crc(p_769->g_337.y, "p_769->g_337.y", print_hash_value);
    transparent_crc(p_769->g_337.z, "p_769->g_337.z", print_hash_value);
    transparent_crc(p_769->g_337.w, "p_769->g_337.w", print_hash_value);
    transparent_crc(p_769->g_345.x, "p_769->g_345.x", print_hash_value);
    transparent_crc(p_769->g_345.y, "p_769->g_345.y", print_hash_value);
    transparent_crc(p_769->g_345.z, "p_769->g_345.z", print_hash_value);
    transparent_crc(p_769->g_345.w, "p_769->g_345.w", print_hash_value);
    transparent_crc(p_769->g_346.s0, "p_769->g_346.s0", print_hash_value);
    transparent_crc(p_769->g_346.s1, "p_769->g_346.s1", print_hash_value);
    transparent_crc(p_769->g_346.s2, "p_769->g_346.s2", print_hash_value);
    transparent_crc(p_769->g_346.s3, "p_769->g_346.s3", print_hash_value);
    transparent_crc(p_769->g_346.s4, "p_769->g_346.s4", print_hash_value);
    transparent_crc(p_769->g_346.s5, "p_769->g_346.s5", print_hash_value);
    transparent_crc(p_769->g_346.s6, "p_769->g_346.s6", print_hash_value);
    transparent_crc(p_769->g_346.s7, "p_769->g_346.s7", print_hash_value);
    transparent_crc(p_769->g_347.x, "p_769->g_347.x", print_hash_value);
    transparent_crc(p_769->g_347.y, "p_769->g_347.y", print_hash_value);
    transparent_crc(p_769->g_347.z, "p_769->g_347.z", print_hash_value);
    transparent_crc(p_769->g_347.w, "p_769->g_347.w", print_hash_value);
    transparent_crc(p_769->g_348.s0, "p_769->g_348.s0", print_hash_value);
    transparent_crc(p_769->g_348.s1, "p_769->g_348.s1", print_hash_value);
    transparent_crc(p_769->g_348.s2, "p_769->g_348.s2", print_hash_value);
    transparent_crc(p_769->g_348.s3, "p_769->g_348.s3", print_hash_value);
    transparent_crc(p_769->g_348.s4, "p_769->g_348.s4", print_hash_value);
    transparent_crc(p_769->g_348.s5, "p_769->g_348.s5", print_hash_value);
    transparent_crc(p_769->g_348.s6, "p_769->g_348.s6", print_hash_value);
    transparent_crc(p_769->g_348.s7, "p_769->g_348.s7", print_hash_value);
    transparent_crc(p_769->g_351.x, "p_769->g_351.x", print_hash_value);
    transparent_crc(p_769->g_351.y, "p_769->g_351.y", print_hash_value);
    transparent_crc(p_769->g_355, "p_769->g_355", print_hash_value);
    transparent_crc(p_769->g_360, "p_769->g_360", print_hash_value);
    transparent_crc(p_769->g_364, "p_769->g_364", print_hash_value);
    transparent_crc(p_769->g_380.f0, "p_769->g_380.f0", print_hash_value);
    transparent_crc(p_769->g_380.f1, "p_769->g_380.f1", print_hash_value);
    transparent_crc(p_769->g_380.f2, "p_769->g_380.f2", print_hash_value);
    transparent_crc(p_769->g_380.f3, "p_769->g_380.f3", print_hash_value);
    transparent_crc(p_769->g_380.f4, "p_769->g_380.f4", print_hash_value);
    transparent_crc(p_769->g_392.x, "p_769->g_392.x", print_hash_value);
    transparent_crc(p_769->g_392.y, "p_769->g_392.y", print_hash_value);
    transparent_crc(p_769->g_392.z, "p_769->g_392.z", print_hash_value);
    transparent_crc(p_769->g_392.w, "p_769->g_392.w", print_hash_value);
    transparent_crc(p_769->g_416, "p_769->g_416", print_hash_value);
    transparent_crc(p_769->g_513.x, "p_769->g_513.x", print_hash_value);
    transparent_crc(p_769->g_513.y, "p_769->g_513.y", print_hash_value);
    transparent_crc(p_769->g_513.z, "p_769->g_513.z", print_hash_value);
    transparent_crc(p_769->g_513.w, "p_769->g_513.w", print_hash_value);
    transparent_crc(p_769->g_549.x, "p_769->g_549.x", print_hash_value);
    transparent_crc(p_769->g_549.y, "p_769->g_549.y", print_hash_value);
    transparent_crc(p_769->g_549.z, "p_769->g_549.z", print_hash_value);
    transparent_crc(p_769->g_549.w, "p_769->g_549.w", print_hash_value);
    transparent_crc(p_769->g_561, "p_769->g_561", print_hash_value);
    transparent_crc(p_769->g_589.s0, "p_769->g_589.s0", print_hash_value);
    transparent_crc(p_769->g_589.s1, "p_769->g_589.s1", print_hash_value);
    transparent_crc(p_769->g_589.s2, "p_769->g_589.s2", print_hash_value);
    transparent_crc(p_769->g_589.s3, "p_769->g_589.s3", print_hash_value);
    transparent_crc(p_769->g_589.s4, "p_769->g_589.s4", print_hash_value);
    transparent_crc(p_769->g_589.s5, "p_769->g_589.s5", print_hash_value);
    transparent_crc(p_769->g_589.s6, "p_769->g_589.s6", print_hash_value);
    transparent_crc(p_769->g_589.s7, "p_769->g_589.s7", print_hash_value);
    transparent_crc(p_769->g_589.s8, "p_769->g_589.s8", print_hash_value);
    transparent_crc(p_769->g_589.s9, "p_769->g_589.s9", print_hash_value);
    transparent_crc(p_769->g_589.sa, "p_769->g_589.sa", print_hash_value);
    transparent_crc(p_769->g_589.sb, "p_769->g_589.sb", print_hash_value);
    transparent_crc(p_769->g_589.sc, "p_769->g_589.sc", print_hash_value);
    transparent_crc(p_769->g_589.sd, "p_769->g_589.sd", print_hash_value);
    transparent_crc(p_769->g_589.se, "p_769->g_589.se", print_hash_value);
    transparent_crc(p_769->g_589.sf, "p_769->g_589.sf", print_hash_value);
    transparent_crc(p_769->g_631.s0, "p_769->g_631.s0", print_hash_value);
    transparent_crc(p_769->g_631.s1, "p_769->g_631.s1", print_hash_value);
    transparent_crc(p_769->g_631.s2, "p_769->g_631.s2", print_hash_value);
    transparent_crc(p_769->g_631.s3, "p_769->g_631.s3", print_hash_value);
    transparent_crc(p_769->g_631.s4, "p_769->g_631.s4", print_hash_value);
    transparent_crc(p_769->g_631.s5, "p_769->g_631.s5", print_hash_value);
    transparent_crc(p_769->g_631.s6, "p_769->g_631.s6", print_hash_value);
    transparent_crc(p_769->g_631.s7, "p_769->g_631.s7", print_hash_value);
    transparent_crc(p_769->g_661.x, "p_769->g_661.x", print_hash_value);
    transparent_crc(p_769->g_661.y, "p_769->g_661.y", print_hash_value);
    transparent_crc(p_769->g_662.x, "p_769->g_662.x", print_hash_value);
    transparent_crc(p_769->g_662.y, "p_769->g_662.y", print_hash_value);
    transparent_crc(p_769->g_688.s0, "p_769->g_688.s0", print_hash_value);
    transparent_crc(p_769->g_688.s1, "p_769->g_688.s1", print_hash_value);
    transparent_crc(p_769->g_688.s2, "p_769->g_688.s2", print_hash_value);
    transparent_crc(p_769->g_688.s3, "p_769->g_688.s3", print_hash_value);
    transparent_crc(p_769->g_688.s4, "p_769->g_688.s4", print_hash_value);
    transparent_crc(p_769->g_688.s5, "p_769->g_688.s5", print_hash_value);
    transparent_crc(p_769->g_688.s6, "p_769->g_688.s6", print_hash_value);
    transparent_crc(p_769->g_688.s7, "p_769->g_688.s7", print_hash_value);
    transparent_crc(p_769->g_688.s8, "p_769->g_688.s8", print_hash_value);
    transparent_crc(p_769->g_688.s9, "p_769->g_688.s9", print_hash_value);
    transparent_crc(p_769->g_688.sa, "p_769->g_688.sa", print_hash_value);
    transparent_crc(p_769->g_688.sb, "p_769->g_688.sb", print_hash_value);
    transparent_crc(p_769->g_688.sc, "p_769->g_688.sc", print_hash_value);
    transparent_crc(p_769->g_688.sd, "p_769->g_688.sd", print_hash_value);
    transparent_crc(p_769->g_688.se, "p_769->g_688.se", print_hash_value);
    transparent_crc(p_769->g_688.sf, "p_769->g_688.sf", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_769->g_700[i], "p_769->g_700[i]", print_hash_value);

    }
    transparent_crc(p_769->g_701.x, "p_769->g_701.x", print_hash_value);
    transparent_crc(p_769->g_701.y, "p_769->g_701.y", print_hash_value);
    transparent_crc(p_769->g_710.x, "p_769->g_710.x", print_hash_value);
    transparent_crc(p_769->g_710.y, "p_769->g_710.y", print_hash_value);
    transparent_crc(p_769->g_711.s0, "p_769->g_711.s0", print_hash_value);
    transparent_crc(p_769->g_711.s1, "p_769->g_711.s1", print_hash_value);
    transparent_crc(p_769->g_711.s2, "p_769->g_711.s2", print_hash_value);
    transparent_crc(p_769->g_711.s3, "p_769->g_711.s3", print_hash_value);
    transparent_crc(p_769->g_711.s4, "p_769->g_711.s4", print_hash_value);
    transparent_crc(p_769->g_711.s5, "p_769->g_711.s5", print_hash_value);
    transparent_crc(p_769->g_711.s6, "p_769->g_711.s6", print_hash_value);
    transparent_crc(p_769->g_711.s7, "p_769->g_711.s7", print_hash_value);
    transparent_crc(p_769->g_713.s0, "p_769->g_713.s0", print_hash_value);
    transparent_crc(p_769->g_713.s1, "p_769->g_713.s1", print_hash_value);
    transparent_crc(p_769->g_713.s2, "p_769->g_713.s2", print_hash_value);
    transparent_crc(p_769->g_713.s3, "p_769->g_713.s3", print_hash_value);
    transparent_crc(p_769->g_713.s4, "p_769->g_713.s4", print_hash_value);
    transparent_crc(p_769->g_713.s5, "p_769->g_713.s5", print_hash_value);
    transparent_crc(p_769->g_713.s6, "p_769->g_713.s6", print_hash_value);
    transparent_crc(p_769->g_713.s7, "p_769->g_713.s7", print_hash_value);
    transparent_crc(p_769->g_713.s8, "p_769->g_713.s8", print_hash_value);
    transparent_crc(p_769->g_713.s9, "p_769->g_713.s9", print_hash_value);
    transparent_crc(p_769->g_713.sa, "p_769->g_713.sa", print_hash_value);
    transparent_crc(p_769->g_713.sb, "p_769->g_713.sb", print_hash_value);
    transparent_crc(p_769->g_713.sc, "p_769->g_713.sc", print_hash_value);
    transparent_crc(p_769->g_713.sd, "p_769->g_713.sd", print_hash_value);
    transparent_crc(p_769->g_713.se, "p_769->g_713.se", print_hash_value);
    transparent_crc(p_769->g_713.sf, "p_769->g_713.sf", print_hash_value);
    transparent_crc(p_769->g_714.s0, "p_769->g_714.s0", print_hash_value);
    transparent_crc(p_769->g_714.s1, "p_769->g_714.s1", print_hash_value);
    transparent_crc(p_769->g_714.s2, "p_769->g_714.s2", print_hash_value);
    transparent_crc(p_769->g_714.s3, "p_769->g_714.s3", print_hash_value);
    transparent_crc(p_769->g_714.s4, "p_769->g_714.s4", print_hash_value);
    transparent_crc(p_769->g_714.s5, "p_769->g_714.s5", print_hash_value);
    transparent_crc(p_769->g_714.s6, "p_769->g_714.s6", print_hash_value);
    transparent_crc(p_769->g_714.s7, "p_769->g_714.s7", print_hash_value);
    transparent_crc(p_769->g_715.s0, "p_769->g_715.s0", print_hash_value);
    transparent_crc(p_769->g_715.s1, "p_769->g_715.s1", print_hash_value);
    transparent_crc(p_769->g_715.s2, "p_769->g_715.s2", print_hash_value);
    transparent_crc(p_769->g_715.s3, "p_769->g_715.s3", print_hash_value);
    transparent_crc(p_769->g_715.s4, "p_769->g_715.s4", print_hash_value);
    transparent_crc(p_769->g_715.s5, "p_769->g_715.s5", print_hash_value);
    transparent_crc(p_769->g_715.s6, "p_769->g_715.s6", print_hash_value);
    transparent_crc(p_769->g_715.s7, "p_769->g_715.s7", print_hash_value);
    transparent_crc(p_769->g_717.x, "p_769->g_717.x", print_hash_value);
    transparent_crc(p_769->g_717.y, "p_769->g_717.y", print_hash_value);
    transparent_crc(p_769->g_718.x, "p_769->g_718.x", print_hash_value);
    transparent_crc(p_769->g_718.y, "p_769->g_718.y", print_hash_value);
    transparent_crc(p_769->g_718.z, "p_769->g_718.z", print_hash_value);
    transparent_crc(p_769->g_718.w, "p_769->g_718.w", print_hash_value);
    transparent_crc(p_769->g_735.x, "p_769->g_735.x", print_hash_value);
    transparent_crc(p_769->g_735.y, "p_769->g_735.y", print_hash_value);
    transparent_crc(p_769->g_735.z, "p_769->g_735.z", print_hash_value);
    transparent_crc(p_769->g_735.w, "p_769->g_735.w", print_hash_value);
    transparent_crc(p_769->g_751.x, "p_769->g_751.x", print_hash_value);
    transparent_crc(p_769->g_751.y, "p_769->g_751.y", print_hash_value);
    transparent_crc(p_769->g_751.z, "p_769->g_751.z", print_hash_value);
    transparent_crc(p_769->g_751.w, "p_769->g_751.w", print_hash_value);
    transparent_crc(p_769->g_752.x, "p_769->g_752.x", print_hash_value);
    transparent_crc(p_769->g_752.y, "p_769->g_752.y", print_hash_value);
    transparent_crc(p_769->g_752.z, "p_769->g_752.z", print_hash_value);
    transparent_crc(p_769->g_752.w, "p_769->g_752.w", print_hash_value);
    transparent_crc(p_769->g_757.s0, "p_769->g_757.s0", print_hash_value);
    transparent_crc(p_769->g_757.s1, "p_769->g_757.s1", print_hash_value);
    transparent_crc(p_769->g_757.s2, "p_769->g_757.s2", print_hash_value);
    transparent_crc(p_769->g_757.s3, "p_769->g_757.s3", print_hash_value);
    transparent_crc(p_769->g_757.s4, "p_769->g_757.s4", print_hash_value);
    transparent_crc(p_769->g_757.s5, "p_769->g_757.s5", print_hash_value);
    transparent_crc(p_769->g_757.s6, "p_769->g_757.s6", print_hash_value);
    transparent_crc(p_769->g_757.s7, "p_769->g_757.s7", print_hash_value);
    transparent_crc(p_769->g_757.s8, "p_769->g_757.s8", print_hash_value);
    transparent_crc(p_769->g_757.s9, "p_769->g_757.s9", print_hash_value);
    transparent_crc(p_769->g_757.sa, "p_769->g_757.sa", print_hash_value);
    transparent_crc(p_769->g_757.sb, "p_769->g_757.sb", print_hash_value);
    transparent_crc(p_769->g_757.sc, "p_769->g_757.sc", print_hash_value);
    transparent_crc(p_769->g_757.sd, "p_769->g_757.sd", print_hash_value);
    transparent_crc(p_769->g_757.se, "p_769->g_757.se", print_hash_value);
    transparent_crc(p_769->g_757.sf, "p_769->g_757.sf", print_hash_value);
    transparent_crc(p_769->g_762, "p_769->g_762", print_hash_value);
    transparent_crc(p_769->g_765.s0, "p_769->g_765.s0", print_hash_value);
    transparent_crc(p_769->g_765.s1, "p_769->g_765.s1", print_hash_value);
    transparent_crc(p_769->g_765.s2, "p_769->g_765.s2", print_hash_value);
    transparent_crc(p_769->g_765.s3, "p_769->g_765.s3", print_hash_value);
    transparent_crc(p_769->g_765.s4, "p_769->g_765.s4", print_hash_value);
    transparent_crc(p_769->g_765.s5, "p_769->g_765.s5", print_hash_value);
    transparent_crc(p_769->g_765.s6, "p_769->g_765.s6", print_hash_value);
    transparent_crc(p_769->g_765.s7, "p_769->g_765.s7", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
