// ---fake_divergence -g 70,19,1 -l 2,1,1
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


// Seed: 67

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int8_t  f0;
};

union U2 {
   volatile int8_t  f0;
   volatile int8_t * f1;
   volatile uint32_t  f2;
   uint64_t  f3;
};

union U3 {
   struct S0  f0;
   struct S0  f1;
   volatile int8_t  f2;
   volatile int64_t  f3;
   uint64_t  f4;
};

struct S4 {
    volatile int32_t g_2;
    int32_t g_3;
    volatile int32_t g_6;
    volatile int32_t g_7;
    volatile int32_t g_8[9][9][3];
    volatile VECTOR(int32_t, 8) g_9;
    int32_t g_10;
    int32_t g_13;
    int8_t g_36;
    uint32_t g_61[7];
    int32_t g_68[7][6];
    int32_t *g_67;
    uint32_t *g_111;
    uint32_t **g_110;
    int8_t g_114;
    VECTOR(int32_t, 4) g_120;
    VECTOR(uint64_t, 16) g_135;
    VECTOR(uint64_t, 8) g_136;
    uint16_t g_145;
    uint8_t g_155;
    VECTOR(int64_t, 2) g_164;
    union U2 g_171;
    union U2 g_174;
    uint32_t g_179;
    int16_t g_182;
    uint32_t g_184;
    VECTOR(int16_t, 8) g_199;
    union U2 g_216;
    union U2 g_229;
    VECTOR(int8_t, 8) g_250;
    union U2 g_275;
    union U2 *g_274;
    union U2 **g_273;
    union U2 ***g_272[8];
    uint8_t **g_317;
    union U2 **g_334;
    uint32_t *g_343;
    VECTOR(uint8_t, 2) g_352;
    VECTOR(int8_t, 8) g_353;
    VECTOR(int8_t, 16) g_354;
    uint32_t g_361;
    uint32_t g_365;
    int16_t g_372;
    volatile uint32_t *g_414;
    volatile uint32_t * volatile *g_413;
    int8_t *g_418;
    VECTOR(int16_t, 4) g_420;
    VECTOR(uint16_t, 8) g_423;
    VECTOR(int32_t, 16) g_430;
    uint32_t *g_439[2][2][9];
    VECTOR(uint64_t, 4) g_440;
    VECTOR(int64_t, 4) g_454;
    VECTOR(int64_t, 4) g_455;
    VECTOR(int32_t, 4) g_470;
    VECTOR(int32_t, 2) g_472;
    VECTOR(uint32_t, 16) g_482;
    VECTOR(uint64_t, 16) g_484;
    VECTOR(uint64_t, 4) g_485;
    volatile uint16_t *g_536;
    volatile uint16_t **g_535;
    uint8_t g_549;
    struct S0 g_592;
    VECTOR(int8_t, 16) g_599;
    int32_t ** volatile g_626;
    int32_t *g_627;
    union U3 g_636[7][7][5];
    struct S0 * volatile g_656;
    uint64_t *g_665;
    uint64_t *g_669;
    volatile VECTOR(int64_t, 16) g_671;
    union U2 g_708;
    union U2 g_709;
    union U2 g_710;
    union U2 g_711;
    union U2 g_712;
    union U2 g_713;
    union U3 g_735;
    volatile union U2 g_738[5][10];
    uint32_t *g_741;
    volatile VECTOR(uint32_t, 4) g_744;
    struct S0 * volatile g_755;
    int32_t ** volatile g_767;
    volatile VECTOR(uint16_t, 2) g_777;
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
uint64_t  func_1(struct S4 * p_801);
struct S0  func_16(int16_t  p_17, uint8_t  p_18, int8_t * p_19, struct S4 * p_801);
uint8_t  func_25(int8_t * p_26, uint64_t  p_27, int16_t  p_28, int8_t * p_29, struct S4 * p_801);
int8_t * func_30(int8_t * p_31, uint32_t  p_32, int64_t  p_33, int8_t  p_34, struct S4 * p_801);
int16_t  func_44(int8_t * p_45, int64_t  p_46, struct S4 * p_801);
int32_t * func_50(int64_t  p_51, int64_t  p_52, struct S4 * p_801);
uint64_t  func_54(uint32_t  p_55, uint64_t  p_56, int16_t  p_57, int16_t  p_58, int8_t * p_59, struct S4 * p_801);
struct S0  func_73(uint32_t  p_74, struct S4 * p_801);
int64_t  func_83(int32_t * p_84, struct S4 * p_801);
uint32_t ** func_92(int32_t  p_93, uint16_t  p_94, int64_t  p_95, int8_t * p_96, uint32_t  p_97, struct S4 * p_801);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_801->g_3 p_801->g_68 p_801->g_420 p_801->g_10 p_801->g_61 p_801->g_110 p_801->g_111 p_801->g_13 p_801->g_36 p_801->g_67 p_801->g_135 p_801->g_155 p_801->g_120 p_801->g_767 p_801->g_777 p_801->g_592 p_801->g_343 p_801->g_179 p_801->g_352 p_801->g_430 p_801->g_8
 * writes: p_801->g_3 p_801->g_10 p_801->g_13 p_801->g_114 p_801->g_111 p_801->g_67 p_801->g_68 p_801->g_155 p_801->g_182 p_801->g_184 p_801->g_61 p_801->g_179 p_801->g_164
 */
uint64_t  func_1(struct S4 * p_801)
{ /* block id: 4 */
    uint32_t l_41 = 0xB536E219L;
    uint32_t *l_364 = &p_801->g_365;
    VECTOR(uint8_t, 4) l_764 = (VECTOR(uint8_t, 4))(0x80L, (VECTOR(uint8_t, 2))(0x80L, 0xFBL), 0xFBL);
    uint32_t l_768 = 4294967295UL;
    VECTOR(int16_t, 2) l_778 = (VECTOR(int16_t, 2))(0x7B4AL, 1L);
    int64_t *l_789 = (void*)0;
    int64_t *l_790 = (void*)0;
    int64_t *l_791 = (void*)0;
    int64_t *l_792 = (void*)0;
    int64_t *l_793 = (void*)0;
    int64_t *l_794[4][7][9] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t *l_795 = (void*)0;
    int32_t *l_796 = &p_801->g_13;
    int32_t *l_797[3];
    uint8_t l_798 = 0xD5L;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_797[i] = (void*)0;
    for (p_801->g_3 = 28; (p_801->g_3 > 7); p_801->g_3 = safe_sub_func_int8_t_s_s(p_801->g_3, 7))
    { /* block id: 7 */
        int8_t l_756 = 0L;
        int16_t *l_765 = &p_801->g_372;
        for (p_801->g_10 = 29; (p_801->g_10 >= 27); p_801->g_10 = safe_sub_func_int16_t_s_s(p_801->g_10, 6))
        { /* block id: 10 */
            uint8_t l_22 = 0x9FL;
            uint32_t *l_368[2][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0}};
            int32_t l_373 = (-8L);
            int8_t *l_621 = (void*)0;
            int16_t *l_766 = &p_801->g_182;
            int i, j;
            for (p_801->g_13 = 22; (p_801->g_13 != 8); --p_801->g_13)
            { /* block id: 13 */
                int8_t *l_35 = &p_801->g_36;
                uint32_t **l_369 = &l_368[0][1];
                int32_t l_370 = 0x776F492CL;
                int16_t *l_371 = &p_801->g_372;
                int32_t l_374 = 1L;
                (1 + 1);
            }
            (*p_801->g_767) = func_50(((p_801->g_68[3][3] >= l_756) && (safe_add_func_int8_t_s_s(p_801->g_420.w, (safe_div_func_uint8_t_u_u((l_22 ^ (safe_unary_minus_func_int8_t_s((safe_mul_func_uint8_t_u_u(((2UL && ((VECTOR(uint8_t, 8))(l_764.zwzwxzxy)).s6) < (l_41 <= (l_765 == l_766))), (((&p_801->g_272[4] != &p_801->g_272[4]) | 4294967295UL) ^ l_22)))))), GROUP_DIVERGE(1, 1)))))), l_756, p_801);
        }
    }
    (*l_796) &= ((l_768 , 0x23L) == (safe_rshift_func_int8_t_s_u((safe_mod_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u(((l_764.y || l_764.y) < ((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(p_801->g_777.yyyyxxxyyxxxyyxy)))).s2, (p_801->g_592 , (0x5DFBC28FL < (((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 2))(l_778.yy)).yyyxyxxxxyyxyxxx, (int16_t)(safe_add_func_uint8_t_u_u((((*p_801->g_67) > ((safe_add_func_int8_t_s_s((safe_div_func_int16_t_s_s((GROUP_DIVERGE(0, 1) ^ (((p_801->g_164.y = (safe_mod_func_int8_t_s_s((safe_add_func_int32_t_s_s(0x43FE8E9CL, ((*p_801->g_343) = (*p_801->g_343)))), 0x4AL))) > l_41) || 65526UL)), p_801->g_352.y)), 0x54L)) , (*p_801->g_67))) , l_778.y), 247UL))))).hi, (int16_t)0L))))).s6 == l_764.w))))) | p_801->g_430.s9)), l_778.y)), 4UL)), 6)));
    (*p_801->g_67) |= (l_789 == l_793);
    l_798--;
    return p_801->g_8[4][8][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_801->g_68 p_801->g_10 p_801->g_61 p_801->g_110 p_801->g_111 p_801->g_13 p_801->g_36 p_801->g_3 p_801->g_67 p_801->g_135 p_801->g_155 p_801->g_120 p_801->g_636 p_801->g_472 p_801->g_164 p_801->g_114 p_801->g_145 p_801->g_656 p_801->g_343 p_801->g_179 p_801->g_549 p_801->g_6 p_801->g_334 p_801->g_482 p_801->g_413 p_801->g_414 p_801->g_744 p_801->g_735.f0.f0
 * writes: p_801->g_114 p_801->g_111 p_801->g_67 p_801->g_68 p_801->g_155 p_801->g_182 p_801->g_184 p_801->g_61 p_801->g_627 p_801->g_145 p_801->g_636.f1.f0 p_801->g_636.f0 p_801->g_274 p_801->g_741 p_801->g_744 p_801->g_735.f0.f0 p_801->g_472
 */
struct S0  func_16(int16_t  p_17, uint8_t  p_18, int8_t * p_19, struct S4 * p_801)
{ /* block id: 261 */
    uint8_t l_632 = 0x65L;
    int32_t *l_635 = &p_801->g_68[3][3];
    VECTOR(uint64_t, 16) l_637 = (VECTOR(uint64_t, 16))(7UL, (VECTOR(uint64_t, 4))(7UL, (VECTOR(uint64_t, 2))(7UL, 0x859C6750EE5B0BABL), 0x859C6750EE5B0BABL), 0x859C6750EE5B0BABL, 7UL, 0x859C6750EE5B0BABL, (VECTOR(uint64_t, 2))(7UL, 0x859C6750EE5B0BABL), (VECTOR(uint64_t, 2))(7UL, 0x859C6750EE5B0BABL), 7UL, 0x859C6750EE5B0BABL, 7UL, 0x859C6750EE5B0BABL);
    VECTOR(uint64_t, 16) l_638 = (VECTOR(uint64_t, 16))(0x64C30FFB14844B05L, (VECTOR(uint64_t, 4))(0x64C30FFB14844B05L, (VECTOR(uint64_t, 2))(0x64C30FFB14844B05L, 0xA972CA3AF8BBC7AFL), 0xA972CA3AF8BBC7AFL), 0xA972CA3AF8BBC7AFL, 0x64C30FFB14844B05L, 0xA972CA3AF8BBC7AFL, (VECTOR(uint64_t, 2))(0x64C30FFB14844B05L, 0xA972CA3AF8BBC7AFL), (VECTOR(uint64_t, 2))(0x64C30FFB14844B05L, 0xA972CA3AF8BBC7AFL), 0x64C30FFB14844B05L, 0xA972CA3AF8BBC7AFL, 0x64C30FFB14844B05L, 0xA972CA3AF8BBC7AFL);
    VECTOR(uint64_t, 16) l_639 = (VECTOR(uint64_t, 16))(0xE1D8439C50B83BAFL, (VECTOR(uint64_t, 4))(0xE1D8439C50B83BAFL, (VECTOR(uint64_t, 2))(0xE1D8439C50B83BAFL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0xE1D8439C50B83BAFL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0xE1D8439C50B83BAFL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0xE1D8439C50B83BAFL, 18446744073709551615UL), 0xE1D8439C50B83BAFL, 18446744073709551615UL, 0xE1D8439C50B83BAFL, 18446744073709551615UL);
    VECTOR(uint64_t, 16) l_640 = (VECTOR(uint64_t, 16))(0x53487A9EAEF116C2L, (VECTOR(uint64_t, 4))(0x53487A9EAEF116C2L, (VECTOR(uint64_t, 2))(0x53487A9EAEF116C2L, 0xE6EC06BAB4CB9B23L), 0xE6EC06BAB4CB9B23L), 0xE6EC06BAB4CB9B23L, 0x53487A9EAEF116C2L, 0xE6EC06BAB4CB9B23L, (VECTOR(uint64_t, 2))(0x53487A9EAEF116C2L, 0xE6EC06BAB4CB9B23L), (VECTOR(uint64_t, 2))(0x53487A9EAEF116C2L, 0xE6EC06BAB4CB9B23L), 0x53487A9EAEF116C2L, 0xE6EC06BAB4CB9B23L, 0x53487A9EAEF116C2L, 0xE6EC06BAB4CB9B23L);
    VECTOR(int64_t, 4) l_641 = (VECTOR(int64_t, 4))(0x4FC81BD0972DE4BDL, (VECTOR(int64_t, 2))(0x4FC81BD0972DE4BDL, 0x64B0CD21BF88E7E5L), 0x64B0CD21BF88E7E5L);
    VECTOR(uint8_t, 4) l_645 = (VECTOR(uint8_t, 4))(0xC2L, (VECTOR(uint8_t, 2))(0xC2L, 254UL), 254UL);
    int8_t *l_649 = &p_801->g_636[1][6][1].f1.f0;
    uint64_t l_650 = 18446744073709551614UL;
    int64_t l_651 = 1L;
    struct S0 l_655 = {0x59L};
    uint64_t *l_666 = (void*)0;
    uint64_t *l_667 = &l_650;
    uint64_t *l_670 = (void*)0;
    VECTOR(int64_t, 4) l_672 = (VECTOR(int64_t, 4))(0x70D49C6BB8F9A8F2L, (VECTOR(int64_t, 2))(0x70D49C6BB8F9A8F2L, 1L), 1L);
    uint32_t l_677 = 0x71077AB4L;
    int8_t l_681[1][8] = {{0x6BL,3L,0x6BL,0x6BL,3L,0x6BL,0x6BL,3L}};
    int32_t l_692 = 0x442F04F5L;
    int32_t l_693[2][2];
    int32_t *l_752 = &p_801->g_68[3][3];
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
            l_693[i][j] = 0x41958787L;
    }
    for (p_18 = 0; (p_18 != 3); p_18++)
    { /* block id: 264 */
        uint32_t l_624 = 9UL;
        int32_t **l_625 = (void*)0;
        p_801->g_627 = func_50(l_624, p_801->g_68[1][2], p_801);
        if (p_801->g_3)
            goto lbl_652;
    }
    if (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))((safe_rshift_func_uint8_t_u_u(((safe_lshift_func_int8_t_s_s(l_632, l_632)) ^ (((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))((safe_div_func_int16_t_s_s((((*l_635) = 1L) ^ p_18), ((p_801->g_636[1][6][1] , ((p_801->g_145 = FAKE_DIVERGE(p_801->global_2_offset, get_global_id(2), 10)) <= (p_17 && ((((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 4))(18446744073709551606UL, l_632, 18446744073709551609UL, 0xDB559565897FBFFAL)).xwxzxzyx, ((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 4))(l_637.s854c)).lo, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(l_638.s62056f3d11dd643e)).s4956)).hi))).xyxyxxxx))).s7, ((VECTOR(uint64_t, 2))(l_639.sa4)), 0x00C5DD17820EE1B1L, ((VECTOR(uint64_t, 8))(l_640.s51b7ec96)), 9UL, ((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(int64_t, 2))((-8L), (-6L))), ((VECTOR(int64_t, 4))(l_641.xxyx)).lo))), 7UL)).even)).even)).odd)), 0xC2E502B58AE295EDL, 0x5EBB4567380B5ED8L)))).yzwwzyzy, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(0x1E8F50EF0BEB066EL, ((VECTOR(uint64_t, 2))(0x78FEEFDA7A2B8408L, 0xF86D2AAA82ABCE3FL)), 6UL)).yzyyzyyz))))), ((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(18446744073709551607UL, 0x9859571920AA994DL)), 0x8B8FF31CB2CC0EB5L, 18446744073709551606UL)).xwxxyxzywwwzyxzx, ((VECTOR(uint64_t, 16))((((safe_unary_minus_func_int32_t_s((((safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(l_645.zy)).odd, ((*l_649) = (((p_17 != (safe_unary_minus_func_int32_t_s((((VECTOR(int64_t, 4))(0L, 0x2CA19B622B762A81L, 0x556A5F9BE0907646L, 0x6BEAB5C243B78E92L)).z | (safe_rshift_func_int8_t_s_s(0x5CL, p_801->g_13)))))) || 0UL) , 3L)))) , (-1L)) < p_17))) == p_17) < p_801->g_472.x), 0xCA10BF80A95D040AL, ((VECTOR(uint64_t, 2))(18446744073709551615UL)), 0xFFF71F84740178D3L, ((VECTOR(uint64_t, 2))(0x0A996760F574F5F3L)), ((VECTOR(uint64_t, 2))(0xBA918884BC436F00L)), ((VECTOR(uint64_t, 2))(18446744073709551615UL)), p_801->g_164.y, 0x7366947DB3AF95FDL, GROUP_DIVERGE(2, 1), 0x0B94B16644D48040L, 0x59A7A9411893FB3CL))))).odd))).s5115027777073110)).s02)).even == 0x2AF176D630BB90D4L) , l_650)))) || p_801->g_114))), l_651, 0xC3C43FC4122F3099L, 0xB40F4F663CA9AD77L)).xzwzzyyw)).s62)).xyxx)).z <= GROUP_DIVERGE(2, 1))), 1)), ((VECTOR(int32_t, 4))(0L)), 0x4B1060B2L, ((VECTOR(int32_t, 4))((-5L))), 0x7F34E1E9L, 1L, 0x2EF94E57L, p_17, 1L, 0x1FCBA27AL)).sf1)).yyxyyxyx)).s5)
    { /* block id: 270 */
lbl_652:
        (*l_635) = p_17;
lbl_682:
        for (p_801->g_145 = 0; (p_801->g_145 != 16); p_801->g_145 = safe_add_func_uint16_t_u_u(p_801->g_145, 3))
        { /* block id: 275 */
            uint64_t **l_668[4] = {&l_667,&l_667,&l_667,&l_667};
            int32_t **l_678 = &l_635;
            int i;
            (*p_801->g_656) = l_655;
            (*l_678) = func_50(((safe_lshift_func_int8_t_s_u((safe_mod_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u((safe_div_func_int32_t_s_s((FAKE_DIVERGE(p_801->group_2_offset, get_group_id(2), 10) < ((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 2))(1L, 1L)).xyxx, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(0x5FA9065DAFA221EFL, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((l_666 = p_801->g_665) != (p_801->g_669 = l_667)), (0x50994FC7L < (p_17 && ((p_801->g_669 = l_670) == (void*)0))), 0x772B023C51D9A6ACL, 0x59DACD51C38375A2L)).xxywxxwx)).even, ((VECTOR(int64_t, 8))(p_801->g_671.sda61f89a)).lo, ((VECTOR(int64_t, 2))(0L, 7L)).xyxx))).odd)))))), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(l_672.xyyyxzyx)).lo)), 0x2BD49C3EACB1533AL, 0L, (-5L), 0x2F3C9B163432BCA2L)), (-2L), (-10L), 0x516C90904E505FA5L, (-6L), 1L)).s87d5))))).yxzxyxyy, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(7L, 0x526AC0383E278871L)), 8L, 3L)).zyzwxwxy))))).s3), (((safe_add_func_int16_t_s_s(0x3737L, (safe_add_func_uint32_t_u_u(((*p_801->g_343) | 1UL), p_801->g_68[3][3])))) < p_18) , 0x1EB78148L))), p_801->g_549)), p_17)), 6)) | l_677), p_17, p_801);
            (*p_801->g_67) = (**l_678);
            for (p_17 = (-14); (p_17 >= (-28)); p_17 = safe_sub_func_uint8_t_u_u(p_17, 9))
            { /* block id: 284 */
                if (l_681[0][4])
                    break;
            }
        }
    }
    else
    { /* block id: 288 */
        int32_t *l_683 = &p_801->g_68[1][2];
        int32_t *l_684 = &p_801->g_68[3][3];
        int32_t *l_685 = (void*)0;
        int32_t *l_686 = (void*)0;
        int32_t *l_687 = (void*)0;
        int32_t *l_688 = (void*)0;
        int32_t *l_689 = (void*)0;
        int32_t l_690 = (-9L);
        int32_t *l_691[9];
        uint32_t l_694 = 4294967286UL;
        union U2 *l_707[4][6] = {{&p_801->g_709,&p_801->g_709,&p_801->g_711,&p_801->g_708,&p_801->g_713,&p_801->g_708},{&p_801->g_709,&p_801->g_709,&p_801->g_711,&p_801->g_708,&p_801->g_713,&p_801->g_708},{&p_801->g_709,&p_801->g_709,&p_801->g_711,&p_801->g_708,&p_801->g_713,&p_801->g_708},{&p_801->g_709,&p_801->g_709,&p_801->g_711,&p_801->g_708,&p_801->g_713,&p_801->g_708}};
        uint16_t *l_754[1][4][1];
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_691[i] = &p_801->g_68[3][5];
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 4; j++)
            {
                for (k = 0; k < 1; k++)
                    l_754[i][j][k] = &p_801->g_145;
            }
        }
        if (p_801->g_179)
            goto lbl_682;
        ++l_694;
        if (((4294967295UL && 0x14195607L) <= ((*l_683) = (((safe_lshift_func_uint8_t_u_u(((safe_add_func_int8_t_s_s(((1L || (!((p_801->g_6 | 65535UL) || (0x7B95DBE8L < (((!5UL) != (safe_div_func_int32_t_s_s(((((*p_801->g_334) = l_707[3][2]) != l_707[3][2]) & 0UL), 7UL))) > 0x11443AB3C2F7DD73L))))) == 65535UL), (*l_683))) == 1UL), 5)) < p_801->g_482.sb) < p_18))))
        { /* block id: 293 */
            struct S0 l_714 = {0L};
            return l_714;
        }
        else
        { /* block id: 295 */
            uint8_t l_739 = 1UL;
            int16_t *l_740[3][1][2] = {{{&p_801->g_182,&p_801->g_182}},{{&p_801->g_182,&p_801->g_182}},{{&p_801->g_182,&p_801->g_182}}};
            int64_t *l_742 = &l_651;
            int32_t l_743 = 0x38F8906DL;
            int i, j, k;
            (*l_684) = ((((safe_lshift_func_int16_t_s_u((safe_sub_func_int16_t_s_s((((((safe_div_func_uint8_t_u_u(p_17, ((VECTOR(uint8_t, 8))(((safe_sub_func_uint8_t_u_u((safe_add_func_uint64_t_u_u(18446744073709551613UL, ((*l_742) = ((*p_801->g_413) != (p_801->g_741 = &p_801->g_365))))), p_18)) , 254UL), 0x4DL, 0xEEL, p_801->g_13, ((VECTOR(uint8_t, 2))(0xE5L)), 0x97L, 0UL)).s2)) <= (*l_635)) , (*l_635)) || GROUP_DIVERGE(0, 1)) != 4UL), l_739)), p_17)) | GROUP_DIVERGE(1, 1)) && 0x318DB0F0FF1D9C16L) < 1L);
            p_801->g_744.z--;
            (*l_635) &= p_17;
        }
        for (p_801->g_735.f0.f0 = 0; (p_801->g_735.f0.f0 != (-9)); p_801->g_735.f0.f0 = safe_sub_func_uint16_t_u_u(p_801->g_735.f0.f0, 5))
        { /* block id: 305 */
            uint32_t l_749[6] = {0x205A092CL,4294967290UL,0x205A092CL,0x205A092CL,4294967290UL,0x205A092CL};
            int32_t **l_753 = &l_635;
            int i;
            l_749[1]++;
            (*l_753) = l_752;
            p_801->g_472.y ^= ((*l_635) = (l_754[0][3][0] != (void*)0));
            if ((**l_753))
                continue;
        }
    }
    return l_655;
}


/* ------------------------------------------ */
/* 
 * reads : p_801->g_420 p_801->g_423 p_801->g_354 p_801->g_430 p_801->g_343 p_801->g_179 p_801->g_10 p_801->g_68 p_801->g_250 p_801->g_110 p_801->g_111 p_801->g_440 p_801->g_454 p_801->g_455 p_801->g_352 p_801->g_155 p_801->g_145 p_801->g_361 p_801->g_365 p_801->g_135 p_801->g_470 p_801->g_472 p_801->g_3 p_801->g_136 p_801->g_482 p_801->g_484 p_801->g_485 p_801->g_114 p_801->g_36
 * writes: p_801->g_439 p_801->g_145 p_801->g_272 p_801->g_182 p_801->g_418 p_801->g_67 p_801->g_114 p_801->g_472 p_801->g_68
 */
uint8_t  func_25(int8_t * p_26, uint64_t  p_27, int16_t  p_28, int8_t * p_29, struct S4 * p_801)
{ /* block id: 166 */
    VECTOR(int16_t, 8) l_419 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 8L), 8L), 8L, (-1L), 8L);
    VECTOR(int16_t, 4) l_421 = (VECTOR(int16_t, 4))(0x5F43L, (VECTOR(int16_t, 2))(0x5F43L, (-1L)), (-1L));
    VECTOR(uint16_t, 8) l_422 = (VECTOR(uint16_t, 8))(65533UL, (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0x3C02L), 0x3C02L), 0x3C02L, 65533UL, 0x3C02L);
    int32_t l_424 = 0x68A2873CL;
    VECTOR(int32_t, 4) l_429 = (VECTOR(int32_t, 4))(0x73E327C0L, (VECTOR(int32_t, 2))(0x73E327C0L, 0x540A995FL), 0x540A995FL);
    VECTOR(int32_t, 2) l_431 = (VECTOR(int32_t, 2))(0x32BABB83L, (-6L));
    int8_t l_444 = 0x2AL;
    union U2 **l_498[4][8][6] = {{{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274}},{{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274}},{{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274}},{{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274},{&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274,&p_801->g_274}}};
    VECTOR(int32_t, 8) l_509 = (VECTOR(int32_t, 8))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0L), 0L), 0L, 7L, 0L);
    uint8_t *l_513[9][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t *l_582 = &p_801->g_68[1][5];
    struct S0 l_619 = {0x3CL};
    int i, j, k;
lbl_571:
    l_424 ^= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 4))(l_419.s3347)), ((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(1L, 0x37A3L)), 1L, 0x6632L)).lo, ((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 2))(0x1125L, 1L)).xxyyyxyy, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x0903L, 0x0AC8L)).yyyy)).wywwzwxy))).s64))), 0x40DFL, 0x0B50L)).odd, ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 2))(1L, 0x4162L)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(0x0C32L, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(p_801->g_420.wx)).xxxyxxxx)), ((VECTOR(int16_t, 4))(l_421.yzyz)), 0x7753L, 0x3FEDL, (-7L))).even)).s57)))))).yxyy)).wyzzxwzzyyyyzwyz)))).s03, ((VECTOR(uint16_t, 8))(l_422.s32431764)).s64))).xxxy, ((VECTOR(uint16_t, 16))(p_801->g_423.s5004234645043354)).s069d)))))).hi)).even;
    if ((0x5FF315E9L < (((safe_mul_func_int16_t_s_s((((((safe_lshift_func_uint8_t_u_s(l_424, 5)) || p_27) >= (((((void*)0 == &p_801->g_317) && (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_429.xw)), 8L, 0L)), 0x2C06E539L, p_801->g_354.s1, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))((-1L), 0x6D14633AL, 0x4A4461D6L, 0x17AE839DL)).zxyzzwwy, ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(p_801->g_430.see)).yxyx, ((VECTOR(int32_t, 4))(l_431.yyxx))))).xyzywwww, ((VECTOR(int32_t, 8))(0x0370D91AL, 0x1A19D177L, 0x094B3C5DL, ((!(safe_mod_func_int8_t_s_s(1L, 0x15L))) || ((safe_add_func_int32_t_s_s(l_431.x, (*p_801->g_343))) != p_27)), ((VECTOR(int32_t, 4))(1L))))))).s31, ((VECTOR(int32_t, 2))(0x3E125C3CL))))).yyxx)), ((VECTOR(int32_t, 2))(0x77E6AF32L)), 0x644456E1L, ((VECTOR(int32_t, 2))((-4L))), (-1L))).s4 , (*p_801->g_343))) || (*p_801->g_343)) && GROUP_DIVERGE(1, 1))) <= l_422.s6) , (-1L)), l_419.s2)) ^ p_801->g_250.s0) != p_27)))
    { /* block id: 168 */
        VECTOR(uint64_t, 2) l_438 = (VECTOR(uint64_t, 2))(0x40703CBBC0675A4FL, 0x68C56288504A013AL);
        VECTOR(uint64_t, 16) l_441 = (VECTOR(uint64_t, 16))(18446744073709551611UL, (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 18446744073709551613UL), 18446744073709551613UL), 18446744073709551613UL, 18446744073709551611UL, 18446744073709551613UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 18446744073709551613UL), (VECTOR(uint64_t, 2))(18446744073709551611UL, 18446744073709551613UL), 18446744073709551611UL, 18446744073709551613UL, 18446744073709551611UL, 18446744073709551613UL);
        VECTOR(int8_t, 4) l_451 = (VECTOR(int8_t, 4))(0x4EL, (VECTOR(int8_t, 2))(0x4EL, 0x0BL), 0x0BL);
        uint16_t *l_456 = &p_801->g_145;
        union U2 ***l_457 = &p_801->g_334;
        int i;
        l_431.y = (safe_mul_func_int8_t_s_s((GROUP_DIVERGE(2, 1) <= ((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(uint64_t, 8))(l_438.yyxxxxxx)).s44, ((VECTOR(uint64_t, 16))(abs(((VECTOR(uint64_t, 16))(3UL, ((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0x29C44CCC50D73C41L, (-6L))), 0x2F7012B9F9C04248L, 0x65F02344725F220EL)).y , (*p_801->g_110)) == (p_801->g_439[0][0][8] = (*p_801->g_110))), ((VECTOR(uint64_t, 8))(p_801->g_440.yzwyxxxy)).s4, 18446744073709551615UL, 0x897D91EDEE00B204L, 0x008AC90700306936L, 0xAAE33EDC65C8E9C8L, 0x49B4E7FA2CBFC6F4L, ((VECTOR(uint64_t, 8))(l_441.s78e59418))))))).sdf))).even), ((safe_mod_func_uint32_t_u_u(((l_421.w , l_444) && (((((safe_sub_func_int8_t_s_s((((safe_mod_func_uint16_t_u_u(((*l_456) ^= ((((safe_add_func_int16_t_s_s(l_419.s1, l_431.y)) | p_27) < ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(l_451.yywzxzzyywwywyzz)).s2f20)).lo)).lo) , ((safe_mul_func_int8_t_s_s((p_801->g_354.s1 & (((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),int64_t,((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 4))(p_801->g_454.yzzy)).wwzzyzxx, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(p_801->g_455.yyzy)), l_438.y, p_27, ((VECTOR(int64_t, 4))(0x18366EB63C1EF731L)), 1L, (-6L), 0x6B54B42E02122767L, ((VECTOR(int64_t, 2))(0x01FCC08141940441L)), 3L)))).even))))).s0101653475106624, (int64_t)0L, (int64_t)p_801->g_352.y))).s9 != 1L)), p_801->g_155)) , l_438.x))), p_28)) , (void*)0) == l_457), l_431.x)) || p_28) & 0x20F8566BL) < p_801->g_361) , FAKE_DIVERGE(p_801->group_1_offset, get_group_id(1), 10))), l_421.w)) ^ p_801->g_354.se)));
    }
    else
    { /* block id: 172 */
        return p_28;
    }
    if (p_801->g_365)
    { /* block id: 175 */
        uint16_t l_466 = 3UL;
        int64_t *l_469[6][1][2];
        VECTOR(int32_t, 8) l_471 = (VECTOR(int32_t, 8))(0x295F0264L, (VECTOR(int32_t, 4))(0x295F0264L, (VECTOR(int32_t, 2))(0x295F0264L, 0x23B8312EL), 0x23B8312EL), 0x23B8312EL, 0x295F0264L, 0x23B8312EL);
        union U2 ****l_473 = (void*)0;
        union U2 ****l_474[3][5][8] = {{{(void*)0,&p_801->g_272[0],&p_801->g_272[7],(void*)0,(void*)0,&p_801->g_272[3],(void*)0,&p_801->g_272[0]},{(void*)0,&p_801->g_272[0],&p_801->g_272[7],(void*)0,(void*)0,&p_801->g_272[3],(void*)0,&p_801->g_272[0]},{(void*)0,&p_801->g_272[0],&p_801->g_272[7],(void*)0,(void*)0,&p_801->g_272[3],(void*)0,&p_801->g_272[0]},{(void*)0,&p_801->g_272[0],&p_801->g_272[7],(void*)0,(void*)0,&p_801->g_272[3],(void*)0,&p_801->g_272[0]},{(void*)0,&p_801->g_272[0],&p_801->g_272[7],(void*)0,(void*)0,&p_801->g_272[3],(void*)0,&p_801->g_272[0]}},{{(void*)0,&p_801->g_272[0],&p_801->g_272[7],(void*)0,(void*)0,&p_801->g_272[3],(void*)0,&p_801->g_272[0]},{(void*)0,&p_801->g_272[0],&p_801->g_272[7],(void*)0,(void*)0,&p_801->g_272[3],(void*)0,&p_801->g_272[0]},{(void*)0,&p_801->g_272[0],&p_801->g_272[7],(void*)0,(void*)0,&p_801->g_272[3],(void*)0,&p_801->g_272[0]},{(void*)0,&p_801->g_272[0],&p_801->g_272[7],(void*)0,(void*)0,&p_801->g_272[3],(void*)0,&p_801->g_272[0]},{(void*)0,&p_801->g_272[0],&p_801->g_272[7],(void*)0,(void*)0,&p_801->g_272[3],(void*)0,&p_801->g_272[0]}},{{(void*)0,&p_801->g_272[0],&p_801->g_272[7],(void*)0,(void*)0,&p_801->g_272[3],(void*)0,&p_801->g_272[0]},{(void*)0,&p_801->g_272[0],&p_801->g_272[7],(void*)0,(void*)0,&p_801->g_272[3],(void*)0,&p_801->g_272[0]},{(void*)0,&p_801->g_272[0],&p_801->g_272[7],(void*)0,(void*)0,&p_801->g_272[3],(void*)0,&p_801->g_272[0]},{(void*)0,&p_801->g_272[0],&p_801->g_272[7],(void*)0,(void*)0,&p_801->g_272[3],(void*)0,&p_801->g_272[0]},{(void*)0,&p_801->g_272[0],&p_801->g_272[7],(void*)0,(void*)0,&p_801->g_272[3],(void*)0,&p_801->g_272[0]}}};
        int32_t *l_475 = (void*)0;
        int32_t *l_476 = &l_424;
        int8_t **l_477 = &p_801->g_418;
        int32_t *l_478[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint16_t l_479 = 0x55FEL;
        VECTOR(uint64_t, 2) l_483 = (VECTOR(uint64_t, 2))(0x9EF0E12ACB2E8B69L, 5UL);
        int i, j, k;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 2; k++)
                    l_469[i][j][k] = (void*)0;
            }
        }
        l_479 ^= ((*l_476) = (safe_mod_func_uint32_t_u_u((((((((safe_mod_func_uint16_t_u_u(0xD442L, FAKE_DIVERGE(p_801->group_1_offset, get_group_id(1), 10))) & ((safe_rshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_801->global_1_offset, get_global_id(1), 10), 0)), ((((*l_477) = func_30(&l_444, l_466, p_801->g_361, (safe_mod_func_int64_t_s_s((l_429.z = p_801->g_68[3][3]), (((*l_476) = ((p_801->g_135.s6 , ((((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(p_801->g_470.wxzx)).even)), ((VECTOR(int32_t, 16))(l_471.s7054720043450442)).s6c, ((VECTOR(int32_t, 16))(p_801->g_472.yxyyxyyxxxxxyxyx)).s98))).hi == (((p_801->g_272[4] = &p_801->g_273) != (void*)0) ^ (-1L))) < l_421.z)) > (*p_801->g_343))) || p_801->g_3))), p_801)) == &l_444) != (-1L)))) > l_422.s2)) | GROUP_DIVERGE(0, 1)) , p_28) , l_419.s2) && GROUP_DIVERGE(0, 1)) > FAKE_DIVERGE(p_801->group_1_offset, get_group_id(1), 10)), 5L)));
        (*l_476) = (safe_mod_func_int64_t_s_s((((VECTOR(uint32_t, 4))(p_801->g_482.s6300)).w || 4294967295UL), ((VECTOR(uint64_t, 2))(max(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(l_483.xyyxyyyy)))).odd)).hi, ((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 8))(p_801->g_484.sd25988f0)).s4526433351346254, ((VECTOR(uint64_t, 16))(p_801->g_485.wwwxyyywywzyyyxy))))).s75))).even));
    }
    else
    { /* block id: 183 */
        uint64_t l_496 = 0xE1EB5D55F836574BL;
        union U2 **l_497 = &p_801->g_274;
        uint16_t *l_534 = (void*)0;
        uint16_t **l_533 = &l_534;
        int32_t l_556 = 1L;
        int32_t l_557 = 0x1E21DFAEL;
        int32_t l_560 = 5L;
        int32_t l_563 = 0x4A5D1FF4L;
        int32_t l_564[5] = {0x785588E2L,0x785588E2L,0x785588E2L,0x785588E2L,0x785588E2L};
        int32_t *l_570 = &l_424;
        uint32_t l_580 = 0xE53DCF29L;
        VECTOR(int8_t, 4) l_598 = (VECTOR(int8_t, 4))(0x55L, (VECTOR(int8_t, 2))(0x55L, 1L), 1L);
        int i;
        for (p_27 = (-16); (p_27 != 10); p_27 = safe_add_func_int8_t_s_s(p_27, 5))
        { /* block id: 186 */
            int32_t **l_488 = &p_801->g_67;
            int32_t l_489[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
            int i;
            (*l_488) = (void*)0;
            l_489[0] = (p_28 ^ l_421.w);
            (*l_488) = &p_801->g_10;
        }
        for (p_801->g_114 = (-6); (p_801->g_114 == 27); p_801->g_114 = safe_add_func_uint32_t_u_u(p_801->g_114, 3))
        { /* block id: 193 */
            uint8_t *l_511 = &p_801->g_155;
            union U2 ****l_548 = &p_801->g_272[3];
            int32_t l_553 = 1L;
            int32_t l_558 = 1L;
            int32_t l_559 = 0x4C560E43L;
            int32_t l_561 = 0x63F68DB8L;
            int32_t l_562 = 0L;
            uint32_t l_565 = 1UL;
            struct S0 *l_620 = &l_619;
            for (p_28 = 0; (p_28 == (-30)); p_28--)
            { /* block id: 196 */
                uint32_t l_500 = 0x0E4AB70DL;
                uint8_t *l_510 = (void*)0;
                int32_t l_547[3][7] = {{0x370DA98EL,0x370DA98EL,0x1E269B99L,(-1L),0x34CD9BF8L,(-1L),0x1E269B99L},{0x370DA98EL,0x370DA98EL,0x1E269B99L,(-1L),0x34CD9BF8L,(-1L),0x1E269B99L},{0x370DA98EL,0x370DA98EL,0x1E269B99L,(-1L),0x34CD9BF8L,(-1L),0x1E269B99L}};
                int32_t *l_568[3][8][4] = {{{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0}},{{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0}},{{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0},{(void*)0,(void*)0,&l_564[2],(void*)0}}};
                int32_t **l_569[6];
                int i, j, k;
                for (i = 0; i < 6; i++)
                    l_569[i] = &p_801->g_67;
                for (p_801->g_145 = 18; (p_801->g_145 == 31); ++p_801->g_145)
                { /* block id: 199 */
                    int16_t *l_499[7][5][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                    uint8_t **l_512 = (void*)0;
                    uint64_t *l_514 = &l_496;
                    int32_t l_555[1][6][10] = {{{0x440676F2L,0x440676F2L,(-1L),(-1L),0x276C99E4L,(-1L),(-1L),0x440676F2L,0x440676F2L,(-1L)},{0x440676F2L,0x440676F2L,(-1L),(-1L),0x276C99E4L,(-1L),(-1L),0x440676F2L,0x440676F2L,(-1L)},{0x440676F2L,0x440676F2L,(-1L),(-1L),0x276C99E4L,(-1L),(-1L),0x440676F2L,0x440676F2L,(-1L)},{0x440676F2L,0x440676F2L,(-1L),(-1L),0x276C99E4L,(-1L),(-1L),0x440676F2L,0x440676F2L,(-1L)},{0x440676F2L,0x440676F2L,(-1L),(-1L),0x276C99E4L,(-1L),(-1L),0x440676F2L,0x440676F2L,(-1L)},{0x440676F2L,0x440676F2L,(-1L),(-1L),0x276C99E4L,(-1L),(-1L),0x440676F2L,0x440676F2L,(-1L)}}};
                    int i, j, k;
                    if ((l_496 , ((l_500 = (l_497 == l_498[3][3][3])) >= (safe_rshift_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(l_429.y, 4)), ((safe_add_func_uint16_t_u_u((0x03L <= (0L | (safe_div_func_int32_t_s_s(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 2))(l_509.s45)).yxyxxxxxyxxyxyyx, ((VECTOR(int32_t, 4))(0x14DD92C4L, (GROUP_DIVERGE(2, 1) , (l_510 == (l_513[4][4] = l_511))), 0x5018E03DL, 0x721E9F16L)).xxyyxxxzyzwwwyyx))).sab)).even, (((*l_514)++) , (p_27 ^ l_421.y)))))), 0UL)) || FAKE_DIVERGE(p_801->local_2_offset, get_local_id(2), 10)))))))
                    { /* block id: 203 */
                        uint16_t *l_527 = (void*)0;
                        uint16_t *l_528 = (void*)0;
                        VECTOR(int32_t, 8) l_537 = (VECTOR(int32_t, 8))(0x43B1AA29L, (VECTOR(int32_t, 4))(0x43B1AA29L, (VECTOR(int32_t, 2))(0x43B1AA29L, 0x5A9E3DA8L), 0x5A9E3DA8L), 0x5A9E3DA8L, 0x43B1AA29L, 0x5A9E3DA8L);
                        uint16_t *l_538 = (void*)0;
                        uint16_t *l_539 = (void*)0;
                        uint16_t *l_540 = (void*)0;
                        uint16_t *l_541 = (void*)0;
                        uint16_t *l_542 = (void*)0;
                        uint16_t *l_543 = (void*)0;
                        uint16_t *l_544 = (void*)0;
                        uint16_t *l_545 = (void*)0;
                        uint16_t *l_546 = (void*)0;
                        int32_t *l_550 = (void*)0;
                        int16_t **l_552 = &l_499[4][0][3];
                        int16_t ***l_551 = &l_552;
                        int32_t *l_554[3][7][10] = {{{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0}},{{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0}},{{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0},{&l_424,(void*)0,&l_547[0][5],&p_801->g_3,&p_801->g_3,&l_547[0][5],(void*)0,&l_424,&p_801->g_68[6][3],(void*)0}}};
                        int i, j, k;
                        p_801->g_472.y &= (safe_sub_func_int64_t_s_s((((VECTOR(uint32_t, 8))((((VECTOR(uint8_t, 4))(255UL, 0xB7L, 0x19L, 0xF2L)).y | (l_537.s7 = ((safe_div_func_uint16_t_u_u((p_801->g_549 = (safe_mod_func_int16_t_s_s((safe_sub_func_int16_t_s_s(((p_801->g_423.s0 = 0xDE9FL) || (safe_add_func_int32_t_s_s((0x02EF5C48L && ((l_533 = &l_527) == p_801->g_535)), (l_500 , ((l_547[2][5] = l_537.s1) && ((l_548 != (void*)0) > l_496)))))), (-1L))), p_801->g_199.s0))), 0x7F87L)) <= 0x74DAL))), 4294967294UL, ((VECTOR(uint32_t, 2))(0UL)), 4294967286UL, (*p_801->g_343), 0xC8401241L, 0UL)).s6 , p_27), 0UL));
                        (*l_551) = (void*)0;
                        if (l_553)
                            continue;
                        --l_565;
                    }
                    else
                    { /* block id: 213 */
                        return p_28;
                    }
                }
                l_558 ^= ((0L <= p_801->g_36) , l_500);
                l_570 = &l_561;
            }
            if (p_27)
                goto lbl_571;
        }
        (*l_582) ^= 0x73A5789FL;
    }
    return (*l_582);
}


/* ------------------------------------------ */
/* 
 * reads : p_801->g_136 p_801->g_179 p_801->g_182 p_801->g_250 p_801->g_36 p_801->g_343 p_801->g_10 p_801->g_68 p_801->g_413
 * writes: p_801->g_182 p_801->g_114
 */
int8_t * func_30(int8_t * p_31, uint32_t  p_32, int64_t  p_33, int8_t  p_34, struct S4 * p_801)
{ /* block id: 148 */
    uint64_t l_377[7];
    int32_t l_378 = 0x196CDF55L;
    union U2 **l_400 = &p_801->g_274;
    int32_t l_415 = 0x1B255A05L;
    int8_t *l_416 = &p_801->g_36;
    int8_t *l_417 = (void*)0;
    int i;
    for (i = 0; i < 7; i++)
        l_377[i] = 18446744073709551608UL;
    l_378 &= (safe_mul_func_uint16_t_u_u(p_801->g_136.s0, (p_801->g_179 > l_377[1])));
    for (p_801->g_182 = 2; (p_801->g_182 >= (-29)); p_801->g_182--)
    { /* block id: 152 */
        VECTOR(int16_t, 16) l_395 = (VECTOR(int16_t, 16))((-3L), (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 1L), 1L), 1L, (-3L), 1L, (VECTOR(int16_t, 2))((-3L), 1L), (VECTOR(int16_t, 2))((-3L), 1L), (-3L), 1L, (-3L), 1L);
        int32_t l_401[3][10] = {{0x4118406DL,0x24EBED14L,0x4118406DL,0x4118406DL,0x24EBED14L,0x4118406DL,0x4118406DL,0x24EBED14L,0x4118406DL,0x4118406DL},{0x4118406DL,0x24EBED14L,0x4118406DL,0x4118406DL,0x24EBED14L,0x4118406DL,0x4118406DL,0x24EBED14L,0x4118406DL,0x4118406DL},{0x4118406DL,0x24EBED14L,0x4118406DL,0x4118406DL,0x24EBED14L,0x4118406DL,0x4118406DL,0x24EBED14L,0x4118406DL,0x4118406DL}};
        int8_t *l_404 = &p_801->g_114;
        int64_t *l_405 = (void*)0;
        int64_t *l_406 = (void*)0;
        int32_t l_407 = 0L;
        int32_t *l_408 = (void*)0;
        int32_t *l_409 = (void*)0;
        int32_t *l_410 = (void*)0;
        int32_t l_411 = 0x1BA3C1E8L;
        int32_t l_412[8] = {(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L)};
        int i, j;
        if ((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))((((safe_sub_func_int64_t_s_s(p_801->g_250.s1, (safe_add_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s(((safe_rshift_func_int16_t_s_u((((((safe_sub_func_int64_t_s_s(((l_412[6] = (l_411 ^= ((safe_div_func_int16_t_s_s(((safe_mod_func_int16_t_s_s(p_801->g_36, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 4))(l_395.s9564)).wzzxyzyy, (int16_t)p_32))).s56)).lo)) >= (((((l_407 |= (p_33 = (((l_378 >= ((safe_div_func_uint32_t_u_u((*p_801->g_343), ((VECTOR(int32_t, 4))((-3L), (-2L), 0x5CFD4EE8L, 0x11C3A0EAL)).w)) < l_395.s1)) == ((*l_404) = (((safe_mod_func_int64_t_s_s((l_401[2][9] = ((void*)0 == l_400)), (safe_mod_func_uint8_t_u_u(0x35L, FAKE_DIVERGE(p_801->group_0_offset, get_group_id(0), 10))))) , 5L) | p_34))) ^ p_801->g_179))) || p_32) ^ 0x5517274AL) < p_34) , p_34)), GROUP_DIVERGE(2, 1))) < l_395.s1))) ^ (*p_801->g_343)), p_801->g_250.s0)) , p_801->g_413) == (void*)0) != 0x2516L) & p_32), 7)) != l_378), l_377[6])), p_32)))) ^ p_34) > p_34), 0xB3C09FD7L, 2UL, 0xAB417EADL)).wzyyzwyyxxyywyyy)).sc , l_415))
        { /* block id: 159 */
            return l_416;
        }
        else
        { /* block id: 161 */
            return l_417;
        }
    }
    return l_417;
}


/* ------------------------------------------ */
/* 
 * reads : p_801->g_36 p_801->g_10 p_801->g_61 p_801->g_110 p_801->g_111 p_801->g_13 p_801->g_3 p_801->g_120 p_801->g_67 p_801->g_68 p_801->g_135 p_801->g_155 p_801->g_199 p_801->g_250 p_801->g_164 p_801->g_136 p_801->g_272 p_801->g_114 p_801->g_184 p_801->g_182 p_801->g_179 p_801->g_317 p_801->g_334 p_801->g_352 p_801->g_353 p_801->g_354 p_801->g_361
 * writes: p_801->g_36 p_801->g_61 p_801->g_67 p_801->g_114 p_801->g_111 p_801->g_68 p_801->g_155 p_801->g_182 p_801->g_184 p_801->g_250 p_801->g_272 p_801->g_136 p_801->g_179 p_801->g_273 p_801->g_343 p_801->g_361
 */
int16_t  func_44(int8_t * p_45, int64_t  p_46, struct S4 * p_801)
{ /* block id: 15 */
    uint8_t l_47 = 5UL;
    int8_t *l_69 = &p_801->g_36;
    int32_t *l_262 = &p_801->g_68[0][2];
    VECTOR(int64_t, 2) l_265 = (VECTOR(int64_t, 2))(1L, 0x196939902668FCE3L);
    union U2 ***l_279 = &p_801->g_273;
    uint16_t *l_283 = &p_801->g_145;
    int32_t l_301[5][3][9] = {{{0x72C08B89L,0x72C08B89L,0x1FD7EBF0L,0x45B1799FL,0x21A6010EL,0x45B1799FL,0x1FD7EBF0L,0x72C08B89L,0x72C08B89L},{0x72C08B89L,0x72C08B89L,0x1FD7EBF0L,0x45B1799FL,0x21A6010EL,0x45B1799FL,0x1FD7EBF0L,0x72C08B89L,0x72C08B89L},{0x72C08B89L,0x72C08B89L,0x1FD7EBF0L,0x45B1799FL,0x21A6010EL,0x45B1799FL,0x1FD7EBF0L,0x72C08B89L,0x72C08B89L}},{{0x72C08B89L,0x72C08B89L,0x1FD7EBF0L,0x45B1799FL,0x21A6010EL,0x45B1799FL,0x1FD7EBF0L,0x72C08B89L,0x72C08B89L},{0x72C08B89L,0x72C08B89L,0x1FD7EBF0L,0x45B1799FL,0x21A6010EL,0x45B1799FL,0x1FD7EBF0L,0x72C08B89L,0x72C08B89L},{0x72C08B89L,0x72C08B89L,0x1FD7EBF0L,0x45B1799FL,0x21A6010EL,0x45B1799FL,0x1FD7EBF0L,0x72C08B89L,0x72C08B89L}},{{0x72C08B89L,0x72C08B89L,0x1FD7EBF0L,0x45B1799FL,0x21A6010EL,0x45B1799FL,0x1FD7EBF0L,0x72C08B89L,0x72C08B89L},{0x72C08B89L,0x72C08B89L,0x1FD7EBF0L,0x45B1799FL,0x21A6010EL,0x45B1799FL,0x1FD7EBF0L,0x72C08B89L,0x72C08B89L},{0x72C08B89L,0x72C08B89L,0x1FD7EBF0L,0x45B1799FL,0x21A6010EL,0x45B1799FL,0x1FD7EBF0L,0x72C08B89L,0x72C08B89L}},{{0x72C08B89L,0x72C08B89L,0x1FD7EBF0L,0x45B1799FL,0x21A6010EL,0x45B1799FL,0x1FD7EBF0L,0x72C08B89L,0x72C08B89L},{0x72C08B89L,0x72C08B89L,0x1FD7EBF0L,0x45B1799FL,0x21A6010EL,0x45B1799FL,0x1FD7EBF0L,0x72C08B89L,0x72C08B89L},{0x72C08B89L,0x72C08B89L,0x1FD7EBF0L,0x45B1799FL,0x21A6010EL,0x45B1799FL,0x1FD7EBF0L,0x72C08B89L,0x72C08B89L}},{{0x72C08B89L,0x72C08B89L,0x1FD7EBF0L,0x45B1799FL,0x21A6010EL,0x45B1799FL,0x1FD7EBF0L,0x72C08B89L,0x72C08B89L},{0x72C08B89L,0x72C08B89L,0x1FD7EBF0L,0x45B1799FL,0x21A6010EL,0x45B1799FL,0x1FD7EBF0L,0x72C08B89L,0x72C08B89L},{0x72C08B89L,0x72C08B89L,0x1FD7EBF0L,0x45B1799FL,0x21A6010EL,0x45B1799FL,0x1FD7EBF0L,0x72C08B89L,0x72C08B89L}}};
    VECTOR(uint32_t, 8) l_332 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x4CB8C2E7L), 0x4CB8C2E7L), 0x4CB8C2E7L, 1UL, 0x4CB8C2E7L);
    VECTOR(int8_t, 16) l_355 = (VECTOR(int8_t, 16))(0x06L, (VECTOR(int8_t, 4))(0x06L, (VECTOR(int8_t, 2))(0x06L, 0L), 0L), 0L, 0x06L, 0L, (VECTOR(int8_t, 2))(0x06L, 0L), (VECTOR(int8_t, 2))(0x06L, 0L), 0x06L, 0L, 0x06L, 0L);
    VECTOR(int8_t, 4) l_356 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 9L), 9L);
    VECTOR(int8_t, 4) l_357 = (VECTOR(int8_t, 4))(0x2EL, (VECTOR(int8_t, 2))(0x2EL, 0L), 0L);
    uint32_t **l_360 = &p_801->g_111;
    int i, j, k;
    if (l_47)
    { /* block id: 16 */
        return p_46;
    }
    else
    { /* block id: 18 */
        int16_t l_53[10] = {0x730AL,0x4A8FL,0x730AL,0x730AL,0x4A8FL,0x730AL,0x730AL,0x4A8FL,0x730AL,0x730AL};
        int32_t l_64 = 5L;
        int32_t **l_294 = &p_801->g_67;
        int32_t ***l_293 = &l_294;
        int32_t l_306 = 0x48686A52L;
        int32_t l_308 = 3L;
        uint32_t l_309[10] = {0xB18FD823L,0x66BD2A75L,0xB18FD823L,0xB18FD823L,0x66BD2A75L,0xB18FD823L,0xB18FD823L,0x66BD2A75L,0xB18FD823L,0xB18FD823L};
        int32_t l_323 = (-6L);
        int32_t l_324 = (-1L);
        int32_t l_325 = 0x36B452FFL;
        int i;
        for (p_801->g_36 = 0; (p_801->g_36 <= 15); p_801->g_36 = safe_add_func_uint8_t_u_u(p_801->g_36, 6))
        { /* block id: 21 */
            uint32_t *l_60 = &p_801->g_61[3];
            int32_t *l_66 = &p_801->g_13;
            int32_t **l_65[9][9][3] = {{{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66}},{{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66}},{{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66}},{{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66}},{{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66}},{{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66}},{{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66}},{{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66}},{{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66},{&l_66,&l_66,&l_66}}};
            int i, j, k;
            l_262 = func_50(l_53[5], (func_54((p_801->g_10 , ((*l_60)--)), p_46, (~((l_64 = p_46) , ((p_801->g_67 = (void*)0) != &p_801->g_13))), p_46, l_69, p_801) , p_46), p_801);
        }
        if ((safe_sub_func_uint16_t_u_u(p_801->g_250.s1, (((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(l_265.yyyy)).zwzzzzywzwwwzzyy)).sc , (p_46 , (~p_46))))))
        { /* block id: 84 */
            int32_t **l_267 = &p_801->g_67;
            int32_t ***l_266 = &l_267;
            union U2 ****l_276 = &p_801->g_272[6];
            union U2 ***l_278 = (void*)0;
            union U2 ****l_277[3];
            int16_t *l_280 = &l_53[1];
            int32_t l_284 = 0x54FB761EL;
            int i;
            for (i = 0; i < 3; i++)
                l_277[i] = &l_278;
            l_284 ^= ((((void*)0 != l_266) || (safe_div_func_int8_t_s_s(((0x5388L && ((*l_280) = (safe_mod_func_int8_t_s_s(((l_279 = ((*l_276) = p_801->g_272[0])) == &p_801->g_273), 0x78L)))) >= ((safe_add_func_uint64_t_u_u((p_801->g_136.s0 = ((*l_262) && (p_801->g_114 = ((*p_45) = (GROUP_DIVERGE(1, 1) <= ((*l_262) , ((void*)0 == l_283))))))), p_801->g_61[3])) | (**l_267))), 6L))) && l_64);
            for (p_801->g_114 = 0; (p_801->g_114 < (-28)); p_801->g_114 = safe_sub_func_int32_t_s_s(p_801->g_114, 1))
            { /* block id: 94 */
                return p_801->g_10;
            }
            for (p_801->g_155 = (-7); (p_801->g_155 > 51); p_801->g_155++)
            { /* block id: 99 */
                for (p_801->g_184 = 21; (p_801->g_184 <= 23); ++p_801->g_184)
                { /* block id: 102 */
                    if (p_46)
                        break;
                }
                for (p_801->g_182 = 3; (p_801->g_182 != 0); p_801->g_182 = safe_sub_func_int16_t_s_s(p_801->g_182, 1))
                { /* block id: 107 */
                    uint32_t l_295 = 0x6502CA6FL;
                    l_295 &= ((void*)0 != l_293);
                    (**l_267) = p_46;
                    return (**l_294);
                }
            }
        }
        else
        { /* block id: 113 */
            int8_t l_302 = 0x14L;
            int32_t l_304 = 0x24B7C976L;
            int32_t l_305 = 0x18C4556BL;
            int32_t l_307[2];
            uint8_t *l_320 = &p_801->g_155;
            uint8_t **l_319 = &l_320;
            int32_t *l_321 = &l_307[0];
            int32_t *l_322[6][9][2] = {{{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]}},{{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]}},{{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]}},{{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]}},{{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]}},{{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]},{(void*)0,&l_307[1]}}};
            uint32_t l_326 = 4294967295UL;
            union U2 **l_333 = (void*)0;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_307[i] = (-10L);
            if ((&p_801->g_114 != p_45))
            { /* block id: 114 */
                int16_t l_300 = 0L;
                int32_t l_303[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_303[i] = 0L;
                if ((safe_sub_func_uint8_t_u_u(p_46, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0x3BL, 0xFDL)), 0xF2L, 255UL)).z)))
                { /* block id: 115 */
                    int32_t *l_298 = &p_801->g_68[3][1];
                    int32_t *l_299[6];
                    int i;
                    for (i = 0; i < 6; i++)
                        l_299[i] = &l_64;
                    l_309[2]++;
                    for (p_801->g_179 = 0; (p_801->g_179 == 36); p_801->g_179 = safe_add_func_uint16_t_u_u(p_801->g_179, 3))
                    { /* block id: 119 */
                        (**l_293) = &l_301[0][2][4];
                    }
                }
                else
                { /* block id: 122 */
                    uint32_t l_314 = 0xD588FBE8L;
                    uint8_t ***l_318[6][4] = {{&p_801->g_317,&p_801->g_317,&p_801->g_317,(void*)0},{&p_801->g_317,&p_801->g_317,&p_801->g_317,(void*)0},{&p_801->g_317,&p_801->g_317,&p_801->g_317,(void*)0},{&p_801->g_317,&p_801->g_317,&p_801->g_317,(void*)0},{&p_801->g_317,&p_801->g_317,&p_801->g_317,(void*)0},{&p_801->g_317,&p_801->g_317,&p_801->g_317,(void*)0}};
                    int i, j;
                    --l_314;
                    l_319 = p_801->g_317;
                }
            }
            else
            { /* block id: 126 */
                (*l_294) = &p_801->g_10;
            }
            l_326--;
            if (((*l_321) = p_46))
            { /* block id: 131 */
                uint64_t l_329 = 0xBF5FC1C788502F33L;
                int32_t l_335 = 0x256026EDL;
                (*l_321) = ((((l_329++) & ((VECTOR(uint32_t, 16))(l_332.s5101537162110622)).s3) & (l_335 = (l_333 != ((*l_279) = p_801->g_334)))) >= (-1L));
                return p_801->g_135.sc;
            }
            else
            { /* block id: 137 */
                uint32_t l_336 = 4294967293UL;
                return l_336;
            }
        }
    }
    p_801->g_361 |= ((safe_mul_func_int8_t_s_s(((p_46 >= ((safe_rshift_func_int16_t_s_s((((safe_rshift_func_int8_t_s_s(p_801->g_61[3], ((p_801->g_343 = l_262) != &p_801->g_179))) , ((((safe_mul_func_int16_t_s_s(((0xCAL != ((((safe_mul_func_int16_t_s_s((&p_801->g_182 == l_283), (((safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(p_801->g_352.yyxx)).y, ((VECTOR(int8_t, 8))((p_46 != (((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 2))(p_801->g_353.s13)).yxyyyxxxyyxxxxyx, ((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 2))(0x4AL, 1L)).yxyy, ((VECTOR(int8_t, 2))(p_801->g_354.sb5)).yxyx))).xxyzyzyzzzxzyxxw))).sa45f)).yzwyzyzwwzyxxwxw, ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 8))(l_355.sc31de040)).s16, ((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 16))(l_356.zzxwxxywxxyxxzxx)).s4f, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(l_357.xxwxxwxwxxwwyxzw)).even)).s16)))))).xyyxyyxyyyyyxyyx))).sf < (safe_mod_func_uint8_t_u_u(p_46, p_801->g_13)))), (-9L), ((VECTOR(int8_t, 2))((-1L))), p_801->g_120.y, ((VECTOR(int8_t, 2))((-5L))), 0x21L)).s3)) , (*l_262)) , (-9L)))) , l_360) != l_360) < 0L)) != (*l_262)), p_46)) | (*l_262)) < (*l_262)) & p_801->g_354.s5)) > p_46), 8)) ^ 0x17CDL)) == (*l_262)), 0x3BL)) < p_801->g_120.y);
    return p_46;
}


/* ------------------------------------------ */
/* 
 * reads : p_801->g_10 p_801->g_61 p_801->g_110 p_801->g_111 p_801->g_13 p_801->g_36 p_801->g_3 p_801->g_120 p_801->g_67 p_801->g_68 p_801->g_135 p_801->g_155 p_801->g_199 p_801->g_250 p_801->g_164 p_801->g_136
 * writes: p_801->g_114 p_801->g_111 p_801->g_67 p_801->g_68 p_801->g_155 p_801->g_182 p_801->g_184 p_801->g_61 p_801->g_250
 */
int32_t * func_50(int64_t  p_51, int64_t  p_52, struct S4 * p_801)
{ /* block id: 32 */
    int32_t *l_85 = &p_801->g_13;
    uint16_t *l_175 = &p_801->g_145;
    uint8_t *l_176 = &p_801->g_155;
    uint32_t *l_177 = (void*)0;
    uint32_t *l_178[2][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_180 = 0L;
    int16_t *l_181 = &p_801->g_182;
    uint32_t *l_183 = &p_801->g_184;
    int32_t **l_218 = &l_85;
    int32_t ***l_219 = &l_218;
    int32_t ***l_220 = (void*)0;
    int32_t **l_222[5][2];
    int32_t ***l_221 = &l_222[0][1];
    uint32_t *l_223 = &p_801->g_61[3];
    union U2 *l_228 = &p_801->g_229;
    union U2 **l_227 = &l_228;
    VECTOR(uint8_t, 4) l_251 = (VECTOR(uint8_t, 4))(0x4CL, (VECTOR(uint8_t, 2))(0x4CL, 0xA0L), 0xA0L);
    VECTOR(int64_t, 16) l_256 = (VECTOR(int64_t, 16))(2L, (VECTOR(int64_t, 4))(2L, (VECTOR(int64_t, 2))(2L, (-1L)), (-1L)), (-1L), 2L, (-1L), (VECTOR(int64_t, 2))(2L, (-1L)), (VECTOR(int64_t, 2))(2L, (-1L)), 2L, (-1L), 2L, (-1L));
    int i, j;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 2; j++)
            l_222[i][j] = &l_85;
    }
    if (func_54(((*l_223) = ((((*l_221) = ((*l_219) = (((func_73(((*l_183) = (safe_sub_func_uint8_t_u_u((safe_add_func_uint64_t_u_u((p_801->g_10 | (safe_mul_func_int16_t_s_s((safe_div_func_int16_t_s_s((func_83(l_85, p_801) , ((*l_181) = (((((l_175 != (void*)0) > (l_180 = (((*l_176) &= FAKE_DIVERGE(p_801->group_0_offset, get_group_id(0), 10)) && p_51))) ^ (*l_85)) != 0x3CFF375C898DBEBFL) ^ p_51))), p_801->g_120.y)), 1UL))), p_52)), 255UL))), p_801) , p_52) && p_51) , l_218))) != (void*)0) == 2L)), p_52, p_51, p_801->g_135.s6, l_176, p_801))
    { /* block id: 69 */
        union U2 *l_225 = (void*)0;
        union U2 **l_224 = &l_225;
        union U2 ***l_226 = &l_224;
        (*p_801->g_67) |= (((*l_226) = l_224) != l_227);
    }
    else
    { /* block id: 72 */
        uint16_t **l_246[7][9] = {{&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175},{&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175},{&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175},{&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175},{&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175},{&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175},{&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175,&l_175}};
        int32_t l_247 = 0L;
        int8_t *l_257 = (void*)0;
        int16_t l_258 = 0x4AB5L;
        uint32_t l_259 = 4294967293UL;
        int8_t *l_260 = &p_801->g_114;
        int32_t l_261[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        int i, j;
        l_261[2] = (((VECTOR(int32_t, 16))((*p_801->g_67), ((*p_801->g_67) = (safe_sub_func_int16_t_s_s((((*l_260) = (safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 4))(((safe_sub_func_uint16_t_u_u((((safe_add_func_int8_t_s_s((p_801->g_120.x ^ (safe_add_func_int8_t_s_s((l_247 = ((safe_lshift_func_int8_t_s_s(((GROUP_DIVERGE(1, 1) <= ((((*l_181) = (safe_add_func_int64_t_s_s((((safe_lshift_func_int16_t_s_s((p_52 , ((&p_801->g_145 == (l_175 = l_175)) <= (((p_801->g_250.s2 = ((l_247 >= ((safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(p_801->g_250.s17)))).xxxyyxyy, ((VECTOR(uint8_t, 16))(l_251.zxyyywxzywwzwywy)).lo))).s5, (((safe_div_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_u(p_51, 2)), (0xE16FDFC689779EABL ^ ((-1L) && (-1L))))) || p_801->g_199.s6) && p_52))) ^ l_256.sa)) | p_801->g_199.s3)) & 0x38L) || 0x1DF32BE280712D52L))), p_51)) >= l_258) != p_801->g_68[3][3]), p_801->g_164.x))) == 0x44F9L) && p_801->g_136.s4)) , 1L), 4)) != p_51)), 5L))), l_259)) ^ 0x9B4DB9409CFE1C9FL) , FAKE_DIVERGE(p_801->global_2_offset, get_global_id(2), 10)), 0x8E90L)) & 255UL), 0x0B1AL, 3UL, 0xCF02L)), ((VECTOR(uint16_t, 4))(0UL))))).w, p_52))) && 0x59L), 0x3F65L))), ((VECTOR(int32_t, 4))(0x0DF61B39L)), (-10L), (-1L), 0x1CF70450L, ((VECTOR(int32_t, 2))(0x04D86FEFL)), ((VECTOR(int32_t, 4))(0x5AFD29CBL)), 1L)).s7 || l_247);
    }
    return &p_801->g_10;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_54(uint32_t  p_55, uint64_t  p_56, int16_t  p_57, int16_t  p_58, int8_t * p_59, struct S4 * p_801)
{ /* block id: 25 */
    int32_t l_72[5];
    int i;
    for (i = 0; i < 5; i++)
        l_72[i] = (-4L);
    for (p_58 = (-25); (p_58 <= (-23)); ++p_58)
    { /* block id: 28 */
        return l_72[1];
    }
    return l_72[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_801->g_199 p_801->g_61 p_801->g_67 p_801->g_68
 * writes: p_801->g_114 p_801->g_68
 */
struct S0  func_73(uint32_t  p_74, struct S4 * p_801)
{ /* block id: 61 */
    int32_t *l_185 = (void*)0;
    int32_t *l_186 = &p_801->g_68[1][3];
    int32_t *l_187 = &p_801->g_68[3][3];
    int32_t l_188 = 0x5C53A74DL;
    int32_t *l_189 = &l_188;
    int32_t *l_190 = &p_801->g_68[1][2];
    int32_t l_191 = (-3L);
    int32_t *l_192[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int16_t l_193 = (-1L);
    uint16_t l_194[8][1][9] = {{{1UL,0xA46FL,0UL,0x6CCCL,0xA46FL,0x6CCCL,0UL,0xA46FL,1UL}},{{1UL,0xA46FL,0UL,0x6CCCL,0xA46FL,0x6CCCL,0UL,0xA46FL,1UL}},{{1UL,0xA46FL,0UL,0x6CCCL,0xA46FL,0x6CCCL,0UL,0xA46FL,1UL}},{{1UL,0xA46FL,0UL,0x6CCCL,0xA46FL,0x6CCCL,0UL,0xA46FL,1UL}},{{1UL,0xA46FL,0UL,0x6CCCL,0xA46FL,0x6CCCL,0UL,0xA46FL,1UL}},{{1UL,0xA46FL,0UL,0x6CCCL,0xA46FL,0x6CCCL,0UL,0xA46FL,1UL}},{{1UL,0xA46FL,0UL,0x6CCCL,0xA46FL,0x6CCCL,0UL,0xA46FL,1UL}},{{1UL,0xA46FL,0UL,0x6CCCL,0xA46FL,0x6CCCL,0UL,0xA46FL,1UL}}};
    int8_t *l_212 = &p_801->g_114;
    VECTOR(int32_t, 4) l_213 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x35500DB5L), 0x35500DB5L);
    union U2 *l_215 = &p_801->g_216;
    union U2 **l_214 = &l_215;
    struct S0 l_217[8][3][9] = {{{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}}},{{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}}},{{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}}},{{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}}},{{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}}},{{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}}},{{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}}},{{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}},{{0x2DL},{0x58L},{0x2FL},{1L},{0x2FL},{0x58L},{0x2DL},{0x5BL},{0x3AL}}}};
    int i, j, k;
    l_194[5][0][0]--;
    (*p_801->g_67) = (safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))((-1L), ((VECTOR(int16_t, 4))(p_801->g_199.s3674)), 0x632FL, ((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 8))((safe_sub_func_uint8_t_u_u((((((GROUP_DIVERGE(2, 1) >= ((safe_rshift_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((p_801->g_61[3] && (p_74 , p_74)), 7)), (safe_sub_func_uint16_t_u_u((((((((safe_sub_func_uint8_t_u_u(255UL, ((*l_212) = (safe_lshift_func_int16_t_s_u(p_74, 11))))) > ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_213.yyxxzyyw)).hi)).z) & p_74) && (+0x444CFCF2L)) | ((VECTOR(int64_t, 2))(5L, 0x76B23AD1BBFE586EL)).even) , ((p_74 || p_74) , l_212)) != l_212), p_74)))) | (*p_801->g_67))) | p_74) , (*l_190)) , l_214) == (void*)0), p_801->g_68[4][4])), ((VECTOR(int16_t, 2))(0x4319L)), 0x5E7CL, 0x4513L, ((VECTOR(int16_t, 2))(0x343BL)), 0x1F7CL)).s40, ((VECTOR(int16_t, 2))((-6L)))))), 0x65A5L, 0x08A3L, ((VECTOR(int16_t, 2))(0x3CEDL)), ((VECTOR(int16_t, 4))(0x0EF0L)))).sc6)).yxyxxyyyxxyyxxxx))).s0, 13));
    return l_217[1][1][5];
}


/* ------------------------------------------ */
/* 
 * reads : p_801->g_61 p_801->g_110 p_801->g_10 p_801->g_111 p_801->g_13 p_801->g_36 p_801->g_3 p_801->g_120 p_801->g_67 p_801->g_68 p_801->g_135
 * writes: p_801->g_114 p_801->g_111 p_801->g_67 p_801->g_68
 */
int64_t  func_83(int32_t * p_84, struct S4 * p_801)
{ /* block id: 33 */
    int16_t l_86 = 0x1F95L;
    int32_t l_87 = (-6L);
    int32_t *l_88[6] = {&p_801->g_3,&p_801->g_68[3][3],&p_801->g_3,&p_801->g_3,&p_801->g_68[3][3],&p_801->g_3};
    uint32_t l_89 = 4294967293UL;
    VECTOR(int16_t, 8) l_106 = (VECTOR(int16_t, 8))(0x1C00L, (VECTOR(int16_t, 4))(0x1C00L, (VECTOR(int16_t, 2))(0x1C00L, 9L), 9L), 9L, 0x1C00L, 9L);
    uint32_t *l_108 = &p_801->g_61[3];
    uint32_t **l_107 = &l_108;
    uint32_t ***l_109 = &l_107;
    int8_t *l_112 = (void*)0;
    int8_t *l_113 = &p_801->g_114;
    VECTOR(int32_t, 8) l_117 = (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0L), 0L), 0L, (-4L), 0L);
    int32_t l_125 = 0x67F4868DL;
    int16_t l_126 = 0x2B73L;
    uint32_t ***l_127 = &l_107;
    struct S0 l_130 = {0x49L};
    VECTOR(int32_t, 16) l_140 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 7L), 7L), 7L, 1L, 7L, (VECTOR(int32_t, 2))(1L, 7L), (VECTOR(int32_t, 2))(1L, 7L), 1L, 7L, 1L, 7L);
    VECTOR(int32_t, 8) l_148 = (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x43F99B11L), 0x43F99B11L), 0x43F99B11L, (-4L), 0x43F99B11L);
    uint16_t l_169 = 65530UL;
    union U2 *l_173[3][1];
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
            l_173[i][j] = &p_801->g_174;
    }
    --l_89;
    (*l_109) = func_92(p_801->g_61[3], ((safe_add_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(((safe_div_func_int16_t_s_s((FAKE_DIVERGE(p_801->global_2_offset, get_global_id(2), 10) <= (safe_lshift_func_int16_t_s_s(0x5D42L, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(l_106.s1173563053546312)).even)).s3))), p_801->g_61[3])) , ((*l_113) = (((*l_109) = l_107) == p_801->g_110))), 0)), (p_801->g_10 & ((((safe_sub_func_uint8_t_u_u(((((((void*)0 != &p_801->g_111) == (((*p_801->g_110) = (*p_801->g_110)) == p_84)) ^ p_801->g_13) == p_801->g_13) | p_801->g_36), p_801->g_10)) || 0x15E26FEE090EC5A9L) ^ (*p_84)) ^ 0L)))) == p_801->g_61[3]), l_117.s0, &p_801->g_36, p_801->g_3, p_801);
    (*p_801->g_67) ^= (safe_lshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_s((((-8L) == ((l_125 , l_126) > (p_801->g_61[3] <= 0xD857L))) ^ p_801->g_61[1]), ((void*)0 != l_127))), 2));
    for (l_126 = 0; (l_126 <= (-17)); --l_126)
    { /* block id: 46 */
        struct S0 *l_131 = (void*)0;
        struct S0 *l_132 = &l_130;
        VECTOR(int64_t, 2) l_137 = (VECTOR(int64_t, 2))((-10L), (-2L));
        int32_t l_143 = 0L;
        uint16_t *l_144 = &p_801->g_145;
        VECTOR(int32_t, 2) l_149 = (VECTOR(int32_t, 2))(0L, (-5L));
        int8_t *l_154 = &l_130.f0;
        int32_t l_156[7][5][3] = {{{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL}},{{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL}},{{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL}},{{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL}},{{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL}},{{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL}},{{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL},{(-9L),0x4501BE72L,0x21E918CEL}}};
        VECTOR(int8_t, 16) l_159 = (VECTOR(int8_t, 16))(0x44L, (VECTOR(int8_t, 4))(0x44L, (VECTOR(int8_t, 2))(0x44L, 0L), 0L), 0L, 0x44L, 0L, (VECTOR(int8_t, 2))(0x44L, 0L), (VECTOR(int8_t, 2))(0x44L, 0L), 0x44L, 0L, 0x44L, 0L);
        union U2 *l_170 = &p_801->g_171;
        union U2 **l_172[7][5][2] = {{{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170}},{{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170}},{{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170}},{{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170}},{{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170}},{{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170}},{{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170},{&l_170,&l_170}}};
        int i, j, k;
        (*l_132) = ((*p_84) , l_130);
        l_156[3][2][1] ^= (safe_mod_func_int8_t_s_s(((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(sub_sat(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(p_801->g_135.sd7ba2ca0)))).s06, ((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 8))(p_801->g_136.s57112126)).hi, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(0x735042E9F28033D0L, 0x8AE0A268B7F09DA1L)))).xyyy))).lo, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(abs(((VECTOR(int64_t, 4))(l_137.yxxx)).zzxxyzxy))).s05))))).xxxy)).even, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(18446744073709551611UL, ((VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551612UL)), 0xB39733121430DB7CL)).wxwyxwxx)).s27))).yyyy)).z , p_84) == (**l_127)), (safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_140.sf8)), 0x270AB67BL, 0x2B8C6AB6L, 0L, 0x38209D23L, ((VECTOR(int32_t, 4))(0x2C957D00L, (p_801->g_10 ^ ((*p_801->g_110) != (void*)0)), (-7L), 0x6AA374F6L)), (safe_rshift_func_uint16_t_u_s((--(*l_144)), 15)), ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_148.s1646534236273005)).even)).s6106705763560335, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_149.xxxyyyyx)).s4116010253124503)).odd)), (safe_sub_func_int16_t_s_s((p_801->g_155 = ((p_801->g_68[0][4] != ((*l_154) ^= ((p_801->g_36 && (safe_add_func_int8_t_s_s(p_801->g_68[3][3], p_801->g_114))) == 0x792124FAL))) , p_801->g_114)), l_137.x)), (*p_801->g_67), 0x7C10F7CFL, ((VECTOR(int32_t, 2))(0x102277C6L)), l_143, (-1L), (-1L)))))).s2f, ((VECTOR(int32_t, 2))(1L))))), ((VECTOR(int32_t, 2))(0x6CCD4FD1L)), 0x1C701984L)).sf, (*p_801->g_67)))));
        (*p_801->g_67) ^= (((p_801->g_3 <= p_801->g_13) ^ ((safe_rshift_func_int8_t_s_s((((l_137.x || ((VECTOR(int8_t, 16))(l_159.sb21b83128f9b6ada)).s3) >= p_801->g_10) | (safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s(p_801->g_10, p_801->g_13)), ((*l_113) = ((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(p_801->g_164.xyyx)))).z < (((safe_rshift_func_uint16_t_u_u(p_801->g_3, 8)) & l_169) != ((-4L) <= l_149.x))) == l_137.x))))), 4)) < 1UL)) >= l_149.y);
        l_173[0][0] = l_170;
    }
    return p_801->g_135.s1;
}


/* ------------------------------------------ */
/* 
 * reads : p_801->g_120 p_801->g_67
 * writes: p_801->g_67 p_801->g_68
 */
uint32_t ** func_92(int32_t  p_93, uint16_t  p_94, int64_t  p_95, int8_t * p_96, uint32_t  p_97, struct S4 * p_801)
{ /* block id: 38 */
    int32_t *l_118[1];
    int32_t **l_119[10][7][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_118[i] = &p_801->g_68[3][3];
    p_801->g_67 = l_118[0];
    (*p_801->g_67) = ((VECTOR(int32_t, 2))(p_801->g_120.zz)).odd;
    return &p_801->g_111;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_802;
    struct S4* p_801 = &c_802;
    struct S4 c_803 = {
        0x3C781CEDL, // p_801->g_2
        5L, // p_801->g_3
        0L, // p_801->g_6
        0x5221E9C9L, // p_801->g_7
        {{{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)}},{{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)}},{{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)}},{{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)}},{{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)}},{{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)}},{{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)}},{{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)}},{{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)},{6L,0x3664FB7DL,(-3L)}}}, // p_801->g_8
        (VECTOR(int32_t, 8))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), (-9L)), (-9L)), (-9L), (-7L), (-9L)), // p_801->g_9
        0x14902820L, // p_801->g_10
        0x45C5BB08L, // p_801->g_13
        0x06L, // p_801->g_36
        {0UL,0xA66BE80DL,0UL,0UL,0xA66BE80DL,0UL,0UL}, // p_801->g_61
        {{9L,(-6L),(-1L),0x15D318EEL,(-1L),(-6L)},{9L,(-6L),(-1L),0x15D318EEL,(-1L),(-6L)},{9L,(-6L),(-1L),0x15D318EEL,(-1L),(-6L)},{9L,(-6L),(-1L),0x15D318EEL,(-1L),(-6L)},{9L,(-6L),(-1L),0x15D318EEL,(-1L),(-6L)},{9L,(-6L),(-1L),0x15D318EEL,(-1L),(-6L)},{9L,(-6L),(-1L),0x15D318EEL,(-1L),(-6L)}}, // p_801->g_68
        &p_801->g_68[3][3], // p_801->g_67
        (void*)0, // p_801->g_111
        &p_801->g_111, // p_801->g_110
        0x4EL, // p_801->g_114
        (VECTOR(int32_t, 4))(0x6A2031C6L, (VECTOR(int32_t, 2))(0x6A2031C6L, 3L), 3L), // p_801->g_120
        (VECTOR(uint64_t, 16))(7UL, (VECTOR(uint64_t, 4))(7UL, (VECTOR(uint64_t, 2))(7UL, 0x8655DCCE30238D5DL), 0x8655DCCE30238D5DL), 0x8655DCCE30238D5DL, 7UL, 0x8655DCCE30238D5DL, (VECTOR(uint64_t, 2))(7UL, 0x8655DCCE30238D5DL), (VECTOR(uint64_t, 2))(7UL, 0x8655DCCE30238D5DL), 7UL, 0x8655DCCE30238D5DL, 7UL, 0x8655DCCE30238D5DL), // p_801->g_135
        (VECTOR(uint64_t, 8))(0xC7B78FF20E808E4DL, (VECTOR(uint64_t, 4))(0xC7B78FF20E808E4DL, (VECTOR(uint64_t, 2))(0xC7B78FF20E808E4DL, 0xF1251F2307333B9DL), 0xF1251F2307333B9DL), 0xF1251F2307333B9DL, 0xC7B78FF20E808E4DL, 0xF1251F2307333B9DL), // p_801->g_136
        0xB7A0L, // p_801->g_145
        0x13L, // p_801->g_155
        (VECTOR(int64_t, 2))(1L, 0x1B9CCF313D322444L), // p_801->g_164
        {0x31L}, // p_801->g_171
        {0x69L}, // p_801->g_174
        1UL, // p_801->g_179
        (-9L), // p_801->g_182
        0x0E2D96BEL, // p_801->g_184
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-6L)), (-6L)), (-6L), 1L, (-6L)), // p_801->g_199
        {0x61L}, // p_801->g_216
        {0x40L}, // p_801->g_229
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-4L)), (-4L)), (-4L), 1L, (-4L)), // p_801->g_250
        {0x1BL}, // p_801->g_275
        &p_801->g_275, // p_801->g_274
        &p_801->g_274, // p_801->g_273
        {&p_801->g_273,&p_801->g_273,&p_801->g_273,&p_801->g_273,&p_801->g_273,&p_801->g_273,&p_801->g_273,&p_801->g_273}, // p_801->g_272
        (void*)0, // p_801->g_317
        &p_801->g_274, // p_801->g_334
        &p_801->g_179, // p_801->g_343
        (VECTOR(uint8_t, 2))(0xBAL, 0xD7L), // p_801->g_352
        (VECTOR(int8_t, 8))(0x0BL, (VECTOR(int8_t, 4))(0x0BL, (VECTOR(int8_t, 2))(0x0BL, 0x14L), 0x14L), 0x14L, 0x0BL, 0x14L), // p_801->g_353
        (VECTOR(int8_t, 16))(0x1FL, (VECTOR(int8_t, 4))(0x1FL, (VECTOR(int8_t, 2))(0x1FL, (-1L)), (-1L)), (-1L), 0x1FL, (-1L), (VECTOR(int8_t, 2))(0x1FL, (-1L)), (VECTOR(int8_t, 2))(0x1FL, (-1L)), 0x1FL, (-1L), 0x1FL, (-1L)), // p_801->g_354
        0x4F3BCDFEL, // p_801->g_361
        0x99C7239AL, // p_801->g_365
        0x3866L, // p_801->g_372
        (void*)0, // p_801->g_414
        &p_801->g_414, // p_801->g_413
        (void*)0, // p_801->g_418
        (VECTOR(int16_t, 4))(0x1885L, (VECTOR(int16_t, 2))(0x1885L, 0x5C5BL), 0x5C5BL), // p_801->g_420
        (VECTOR(uint16_t, 8))(0x141FL, (VECTOR(uint16_t, 4))(0x141FL, (VECTOR(uint16_t, 2))(0x141FL, 1UL), 1UL), 1UL, 0x141FL, 1UL), // p_801->g_423
        (VECTOR(int32_t, 16))(0x74115925L, (VECTOR(int32_t, 4))(0x74115925L, (VECTOR(int32_t, 2))(0x74115925L, 0L), 0L), 0L, 0x74115925L, 0L, (VECTOR(int32_t, 2))(0x74115925L, 0L), (VECTOR(int32_t, 2))(0x74115925L, 0L), 0x74115925L, 0L, 0x74115925L, 0L), // p_801->g_430
        {{{&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361},{&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361}},{{&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361},{&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361,&p_801->g_361}}}, // p_801->g_439
        (VECTOR(uint64_t, 4))(0xF0A251046F83344FL, (VECTOR(uint64_t, 2))(0xF0A251046F83344FL, 0x3F48590970E6DB23L), 0x3F48590970E6DB23L), // p_801->g_440
        (VECTOR(int64_t, 4))(0x26A45C7D867988A3L, (VECTOR(int64_t, 2))(0x26A45C7D867988A3L, 1L), 1L), // p_801->g_454
        (VECTOR(int64_t, 4))(0x0ECECE4411029F25L, (VECTOR(int64_t, 2))(0x0ECECE4411029F25L, 0x5E4686938188E0EAL), 0x5E4686938188E0EAL), // p_801->g_455
        (VECTOR(int32_t, 4))(0x4E3C15ABL, (VECTOR(int32_t, 2))(0x4E3C15ABL, 0x5AB23A53L), 0x5AB23A53L), // p_801->g_470
        (VECTOR(int32_t, 2))(9L, (-5L)), // p_801->g_472
        (VECTOR(uint32_t, 16))(0xA3CD5C0CL, (VECTOR(uint32_t, 4))(0xA3CD5C0CL, (VECTOR(uint32_t, 2))(0xA3CD5C0CL, 1UL), 1UL), 1UL, 0xA3CD5C0CL, 1UL, (VECTOR(uint32_t, 2))(0xA3CD5C0CL, 1UL), (VECTOR(uint32_t, 2))(0xA3CD5C0CL, 1UL), 0xA3CD5C0CL, 1UL, 0xA3CD5C0CL, 1UL), // p_801->g_482
        (VECTOR(uint64_t, 16))(18446744073709551608UL, (VECTOR(uint64_t, 4))(18446744073709551608UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 1UL), 1UL), 1UL, 18446744073709551608UL, 1UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 1UL), (VECTOR(uint64_t, 2))(18446744073709551608UL, 1UL), 18446744073709551608UL, 1UL, 18446744073709551608UL, 1UL), // p_801->g_484
        (VECTOR(uint64_t, 4))(0xC7A6836BA5C379AFL, (VECTOR(uint64_t, 2))(0xC7A6836BA5C379AFL, 0xB01452B6C2D84DA3L), 0xB01452B6C2D84DA3L), // p_801->g_485
        (void*)0, // p_801->g_536
        &p_801->g_536, // p_801->g_535
        0xB2L, // p_801->g_549
        {-4L}, // p_801->g_592
        (VECTOR(int8_t, 16))(0x4FL, (VECTOR(int8_t, 4))(0x4FL, (VECTOR(int8_t, 2))(0x4FL, (-1L)), (-1L)), (-1L), 0x4FL, (-1L), (VECTOR(int8_t, 2))(0x4FL, (-1L)), (VECTOR(int8_t, 2))(0x4FL, (-1L)), 0x4FL, (-1L), 0x4FL, (-1L)), // p_801->g_599
        (void*)0, // p_801->g_626
        (void*)0, // p_801->g_627
        {{{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}}},{{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}}},{{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}}},{{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}}},{{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}}},{{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}}},{{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}},{{{0x04L}},{{0x43L}},{{5L}},{{0x5AL}},{{0L}}}}}, // p_801->g_636
        &p_801->g_636[1][6][1].f0, // p_801->g_656
        (void*)0, // p_801->g_665
        (void*)0, // p_801->g_669
        (VECTOR(int64_t, 16))(9L, (VECTOR(int64_t, 4))(9L, (VECTOR(int64_t, 2))(9L, (-1L)), (-1L)), (-1L), 9L, (-1L), (VECTOR(int64_t, 2))(9L, (-1L)), (VECTOR(int64_t, 2))(9L, (-1L)), 9L, (-1L), 9L, (-1L)), // p_801->g_671
        {0x12L}, // p_801->g_708
        {0x21L}, // p_801->g_709
        {0x03L}, // p_801->g_710
        {9L}, // p_801->g_711
        {0x16L}, // p_801->g_712
        {-7L}, // p_801->g_713
        {{1L}}, // p_801->g_735
        {{{0x27L},{0x57L},{-5L},{0L},{-5L},{0x57L},{0x27L},{0x30L},{0x33L},{0x33L}},{{0x27L},{0x57L},{-5L},{0L},{-5L},{0x57L},{0x27L},{0x30L},{0x33L},{0x33L}},{{0x27L},{0x57L},{-5L},{0L},{-5L},{0x57L},{0x27L},{0x30L},{0x33L},{0x33L}},{{0x27L},{0x57L},{-5L},{0L},{-5L},{0x57L},{0x27L},{0x30L},{0x33L},{0x33L}},{{0x27L},{0x57L},{-5L},{0L},{-5L},{0x57L},{0x27L},{0x30L},{0x33L},{0x33L}}}, // p_801->g_738
        &p_801->g_184, // p_801->g_741
        (VECTOR(uint32_t, 4))(0xAB408826L, (VECTOR(uint32_t, 2))(0xAB408826L, 0x5428F4FBL), 0x5428F4FBL), // p_801->g_744
        &p_801->g_636[1][6][1].f0, // p_801->g_755
        &p_801->g_67, // p_801->g_767
        (VECTOR(uint16_t, 2))(0xAAE9L, 0xB0AFL), // p_801->g_777
        sequence_input[get_global_id(0)], // p_801->global_0_offset
        sequence_input[get_global_id(1)], // p_801->global_1_offset
        sequence_input[get_global_id(2)], // p_801->global_2_offset
        sequence_input[get_local_id(0)], // p_801->local_0_offset
        sequence_input[get_local_id(1)], // p_801->local_1_offset
        sequence_input[get_local_id(2)], // p_801->local_2_offset
        sequence_input[get_group_id(0)], // p_801->group_0_offset
        sequence_input[get_group_id(1)], // p_801->group_1_offset
        sequence_input[get_group_id(2)], // p_801->group_2_offset
    };
    c_802 = c_803;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_801);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_801->g_2, "p_801->g_2", print_hash_value);
    transparent_crc(p_801->g_3, "p_801->g_3", print_hash_value);
    transparent_crc(p_801->g_6, "p_801->g_6", print_hash_value);
    transparent_crc(p_801->g_7, "p_801->g_7", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_801->g_8[i][j][k], "p_801->g_8[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_801->g_9.s0, "p_801->g_9.s0", print_hash_value);
    transparent_crc(p_801->g_9.s1, "p_801->g_9.s1", print_hash_value);
    transparent_crc(p_801->g_9.s2, "p_801->g_9.s2", print_hash_value);
    transparent_crc(p_801->g_9.s3, "p_801->g_9.s3", print_hash_value);
    transparent_crc(p_801->g_9.s4, "p_801->g_9.s4", print_hash_value);
    transparent_crc(p_801->g_9.s5, "p_801->g_9.s5", print_hash_value);
    transparent_crc(p_801->g_9.s6, "p_801->g_9.s6", print_hash_value);
    transparent_crc(p_801->g_9.s7, "p_801->g_9.s7", print_hash_value);
    transparent_crc(p_801->g_10, "p_801->g_10", print_hash_value);
    transparent_crc(p_801->g_13, "p_801->g_13", print_hash_value);
    transparent_crc(p_801->g_36, "p_801->g_36", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_801->g_61[i], "p_801->g_61[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_801->g_68[i][j], "p_801->g_68[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_801->g_114, "p_801->g_114", print_hash_value);
    transparent_crc(p_801->g_120.x, "p_801->g_120.x", print_hash_value);
    transparent_crc(p_801->g_120.y, "p_801->g_120.y", print_hash_value);
    transparent_crc(p_801->g_120.z, "p_801->g_120.z", print_hash_value);
    transparent_crc(p_801->g_120.w, "p_801->g_120.w", print_hash_value);
    transparent_crc(p_801->g_135.s0, "p_801->g_135.s0", print_hash_value);
    transparent_crc(p_801->g_135.s1, "p_801->g_135.s1", print_hash_value);
    transparent_crc(p_801->g_135.s2, "p_801->g_135.s2", print_hash_value);
    transparent_crc(p_801->g_135.s3, "p_801->g_135.s3", print_hash_value);
    transparent_crc(p_801->g_135.s4, "p_801->g_135.s4", print_hash_value);
    transparent_crc(p_801->g_135.s5, "p_801->g_135.s5", print_hash_value);
    transparent_crc(p_801->g_135.s6, "p_801->g_135.s6", print_hash_value);
    transparent_crc(p_801->g_135.s7, "p_801->g_135.s7", print_hash_value);
    transparent_crc(p_801->g_135.s8, "p_801->g_135.s8", print_hash_value);
    transparent_crc(p_801->g_135.s9, "p_801->g_135.s9", print_hash_value);
    transparent_crc(p_801->g_135.sa, "p_801->g_135.sa", print_hash_value);
    transparent_crc(p_801->g_135.sb, "p_801->g_135.sb", print_hash_value);
    transparent_crc(p_801->g_135.sc, "p_801->g_135.sc", print_hash_value);
    transparent_crc(p_801->g_135.sd, "p_801->g_135.sd", print_hash_value);
    transparent_crc(p_801->g_135.se, "p_801->g_135.se", print_hash_value);
    transparent_crc(p_801->g_135.sf, "p_801->g_135.sf", print_hash_value);
    transparent_crc(p_801->g_136.s0, "p_801->g_136.s0", print_hash_value);
    transparent_crc(p_801->g_136.s1, "p_801->g_136.s1", print_hash_value);
    transparent_crc(p_801->g_136.s2, "p_801->g_136.s2", print_hash_value);
    transparent_crc(p_801->g_136.s3, "p_801->g_136.s3", print_hash_value);
    transparent_crc(p_801->g_136.s4, "p_801->g_136.s4", print_hash_value);
    transparent_crc(p_801->g_136.s5, "p_801->g_136.s5", print_hash_value);
    transparent_crc(p_801->g_136.s6, "p_801->g_136.s6", print_hash_value);
    transparent_crc(p_801->g_136.s7, "p_801->g_136.s7", print_hash_value);
    transparent_crc(p_801->g_145, "p_801->g_145", print_hash_value);
    transparent_crc(p_801->g_155, "p_801->g_155", print_hash_value);
    transparent_crc(p_801->g_164.x, "p_801->g_164.x", print_hash_value);
    transparent_crc(p_801->g_164.y, "p_801->g_164.y", print_hash_value);
    transparent_crc(p_801->g_171.f0, "p_801->g_171.f0", print_hash_value);
    transparent_crc(p_801->g_174.f0, "p_801->g_174.f0", print_hash_value);
    transparent_crc(p_801->g_179, "p_801->g_179", print_hash_value);
    transparent_crc(p_801->g_182, "p_801->g_182", print_hash_value);
    transparent_crc(p_801->g_184, "p_801->g_184", print_hash_value);
    transparent_crc(p_801->g_199.s0, "p_801->g_199.s0", print_hash_value);
    transparent_crc(p_801->g_199.s1, "p_801->g_199.s1", print_hash_value);
    transparent_crc(p_801->g_199.s2, "p_801->g_199.s2", print_hash_value);
    transparent_crc(p_801->g_199.s3, "p_801->g_199.s3", print_hash_value);
    transparent_crc(p_801->g_199.s4, "p_801->g_199.s4", print_hash_value);
    transparent_crc(p_801->g_199.s5, "p_801->g_199.s5", print_hash_value);
    transparent_crc(p_801->g_199.s6, "p_801->g_199.s6", print_hash_value);
    transparent_crc(p_801->g_199.s7, "p_801->g_199.s7", print_hash_value);
    transparent_crc(p_801->g_216.f0, "p_801->g_216.f0", print_hash_value);
    transparent_crc(p_801->g_229.f0, "p_801->g_229.f0", print_hash_value);
    transparent_crc(p_801->g_250.s0, "p_801->g_250.s0", print_hash_value);
    transparent_crc(p_801->g_250.s1, "p_801->g_250.s1", print_hash_value);
    transparent_crc(p_801->g_250.s2, "p_801->g_250.s2", print_hash_value);
    transparent_crc(p_801->g_250.s3, "p_801->g_250.s3", print_hash_value);
    transparent_crc(p_801->g_250.s4, "p_801->g_250.s4", print_hash_value);
    transparent_crc(p_801->g_250.s5, "p_801->g_250.s5", print_hash_value);
    transparent_crc(p_801->g_250.s6, "p_801->g_250.s6", print_hash_value);
    transparent_crc(p_801->g_250.s7, "p_801->g_250.s7", print_hash_value);
    transparent_crc(p_801->g_275.f0, "p_801->g_275.f0", print_hash_value);
    transparent_crc(p_801->g_352.x, "p_801->g_352.x", print_hash_value);
    transparent_crc(p_801->g_352.y, "p_801->g_352.y", print_hash_value);
    transparent_crc(p_801->g_353.s0, "p_801->g_353.s0", print_hash_value);
    transparent_crc(p_801->g_353.s1, "p_801->g_353.s1", print_hash_value);
    transparent_crc(p_801->g_353.s2, "p_801->g_353.s2", print_hash_value);
    transparent_crc(p_801->g_353.s3, "p_801->g_353.s3", print_hash_value);
    transparent_crc(p_801->g_353.s4, "p_801->g_353.s4", print_hash_value);
    transparent_crc(p_801->g_353.s5, "p_801->g_353.s5", print_hash_value);
    transparent_crc(p_801->g_353.s6, "p_801->g_353.s6", print_hash_value);
    transparent_crc(p_801->g_353.s7, "p_801->g_353.s7", print_hash_value);
    transparent_crc(p_801->g_354.s0, "p_801->g_354.s0", print_hash_value);
    transparent_crc(p_801->g_354.s1, "p_801->g_354.s1", print_hash_value);
    transparent_crc(p_801->g_354.s2, "p_801->g_354.s2", print_hash_value);
    transparent_crc(p_801->g_354.s3, "p_801->g_354.s3", print_hash_value);
    transparent_crc(p_801->g_354.s4, "p_801->g_354.s4", print_hash_value);
    transparent_crc(p_801->g_354.s5, "p_801->g_354.s5", print_hash_value);
    transparent_crc(p_801->g_354.s6, "p_801->g_354.s6", print_hash_value);
    transparent_crc(p_801->g_354.s7, "p_801->g_354.s7", print_hash_value);
    transparent_crc(p_801->g_354.s8, "p_801->g_354.s8", print_hash_value);
    transparent_crc(p_801->g_354.s9, "p_801->g_354.s9", print_hash_value);
    transparent_crc(p_801->g_354.sa, "p_801->g_354.sa", print_hash_value);
    transparent_crc(p_801->g_354.sb, "p_801->g_354.sb", print_hash_value);
    transparent_crc(p_801->g_354.sc, "p_801->g_354.sc", print_hash_value);
    transparent_crc(p_801->g_354.sd, "p_801->g_354.sd", print_hash_value);
    transparent_crc(p_801->g_354.se, "p_801->g_354.se", print_hash_value);
    transparent_crc(p_801->g_354.sf, "p_801->g_354.sf", print_hash_value);
    transparent_crc(p_801->g_361, "p_801->g_361", print_hash_value);
    transparent_crc(p_801->g_365, "p_801->g_365", print_hash_value);
    transparent_crc(p_801->g_372, "p_801->g_372", print_hash_value);
    transparent_crc(p_801->g_420.x, "p_801->g_420.x", print_hash_value);
    transparent_crc(p_801->g_420.y, "p_801->g_420.y", print_hash_value);
    transparent_crc(p_801->g_420.z, "p_801->g_420.z", print_hash_value);
    transparent_crc(p_801->g_420.w, "p_801->g_420.w", print_hash_value);
    transparent_crc(p_801->g_423.s0, "p_801->g_423.s0", print_hash_value);
    transparent_crc(p_801->g_423.s1, "p_801->g_423.s1", print_hash_value);
    transparent_crc(p_801->g_423.s2, "p_801->g_423.s2", print_hash_value);
    transparent_crc(p_801->g_423.s3, "p_801->g_423.s3", print_hash_value);
    transparent_crc(p_801->g_423.s4, "p_801->g_423.s4", print_hash_value);
    transparent_crc(p_801->g_423.s5, "p_801->g_423.s5", print_hash_value);
    transparent_crc(p_801->g_423.s6, "p_801->g_423.s6", print_hash_value);
    transparent_crc(p_801->g_423.s7, "p_801->g_423.s7", print_hash_value);
    transparent_crc(p_801->g_430.s0, "p_801->g_430.s0", print_hash_value);
    transparent_crc(p_801->g_430.s1, "p_801->g_430.s1", print_hash_value);
    transparent_crc(p_801->g_430.s2, "p_801->g_430.s2", print_hash_value);
    transparent_crc(p_801->g_430.s3, "p_801->g_430.s3", print_hash_value);
    transparent_crc(p_801->g_430.s4, "p_801->g_430.s4", print_hash_value);
    transparent_crc(p_801->g_430.s5, "p_801->g_430.s5", print_hash_value);
    transparent_crc(p_801->g_430.s6, "p_801->g_430.s6", print_hash_value);
    transparent_crc(p_801->g_430.s7, "p_801->g_430.s7", print_hash_value);
    transparent_crc(p_801->g_430.s8, "p_801->g_430.s8", print_hash_value);
    transparent_crc(p_801->g_430.s9, "p_801->g_430.s9", print_hash_value);
    transparent_crc(p_801->g_430.sa, "p_801->g_430.sa", print_hash_value);
    transparent_crc(p_801->g_430.sb, "p_801->g_430.sb", print_hash_value);
    transparent_crc(p_801->g_430.sc, "p_801->g_430.sc", print_hash_value);
    transparent_crc(p_801->g_430.sd, "p_801->g_430.sd", print_hash_value);
    transparent_crc(p_801->g_430.se, "p_801->g_430.se", print_hash_value);
    transparent_crc(p_801->g_430.sf, "p_801->g_430.sf", print_hash_value);
    transparent_crc(p_801->g_440.x, "p_801->g_440.x", print_hash_value);
    transparent_crc(p_801->g_440.y, "p_801->g_440.y", print_hash_value);
    transparent_crc(p_801->g_440.z, "p_801->g_440.z", print_hash_value);
    transparent_crc(p_801->g_440.w, "p_801->g_440.w", print_hash_value);
    transparent_crc(p_801->g_454.x, "p_801->g_454.x", print_hash_value);
    transparent_crc(p_801->g_454.y, "p_801->g_454.y", print_hash_value);
    transparent_crc(p_801->g_454.z, "p_801->g_454.z", print_hash_value);
    transparent_crc(p_801->g_454.w, "p_801->g_454.w", print_hash_value);
    transparent_crc(p_801->g_455.x, "p_801->g_455.x", print_hash_value);
    transparent_crc(p_801->g_455.y, "p_801->g_455.y", print_hash_value);
    transparent_crc(p_801->g_455.z, "p_801->g_455.z", print_hash_value);
    transparent_crc(p_801->g_455.w, "p_801->g_455.w", print_hash_value);
    transparent_crc(p_801->g_470.x, "p_801->g_470.x", print_hash_value);
    transparent_crc(p_801->g_470.y, "p_801->g_470.y", print_hash_value);
    transparent_crc(p_801->g_470.z, "p_801->g_470.z", print_hash_value);
    transparent_crc(p_801->g_470.w, "p_801->g_470.w", print_hash_value);
    transparent_crc(p_801->g_472.x, "p_801->g_472.x", print_hash_value);
    transparent_crc(p_801->g_472.y, "p_801->g_472.y", print_hash_value);
    transparent_crc(p_801->g_482.s0, "p_801->g_482.s0", print_hash_value);
    transparent_crc(p_801->g_482.s1, "p_801->g_482.s1", print_hash_value);
    transparent_crc(p_801->g_482.s2, "p_801->g_482.s2", print_hash_value);
    transparent_crc(p_801->g_482.s3, "p_801->g_482.s3", print_hash_value);
    transparent_crc(p_801->g_482.s4, "p_801->g_482.s4", print_hash_value);
    transparent_crc(p_801->g_482.s5, "p_801->g_482.s5", print_hash_value);
    transparent_crc(p_801->g_482.s6, "p_801->g_482.s6", print_hash_value);
    transparent_crc(p_801->g_482.s7, "p_801->g_482.s7", print_hash_value);
    transparent_crc(p_801->g_482.s8, "p_801->g_482.s8", print_hash_value);
    transparent_crc(p_801->g_482.s9, "p_801->g_482.s9", print_hash_value);
    transparent_crc(p_801->g_482.sa, "p_801->g_482.sa", print_hash_value);
    transparent_crc(p_801->g_482.sb, "p_801->g_482.sb", print_hash_value);
    transparent_crc(p_801->g_482.sc, "p_801->g_482.sc", print_hash_value);
    transparent_crc(p_801->g_482.sd, "p_801->g_482.sd", print_hash_value);
    transparent_crc(p_801->g_482.se, "p_801->g_482.se", print_hash_value);
    transparent_crc(p_801->g_482.sf, "p_801->g_482.sf", print_hash_value);
    transparent_crc(p_801->g_484.s0, "p_801->g_484.s0", print_hash_value);
    transparent_crc(p_801->g_484.s1, "p_801->g_484.s1", print_hash_value);
    transparent_crc(p_801->g_484.s2, "p_801->g_484.s2", print_hash_value);
    transparent_crc(p_801->g_484.s3, "p_801->g_484.s3", print_hash_value);
    transparent_crc(p_801->g_484.s4, "p_801->g_484.s4", print_hash_value);
    transparent_crc(p_801->g_484.s5, "p_801->g_484.s5", print_hash_value);
    transparent_crc(p_801->g_484.s6, "p_801->g_484.s6", print_hash_value);
    transparent_crc(p_801->g_484.s7, "p_801->g_484.s7", print_hash_value);
    transparent_crc(p_801->g_484.s8, "p_801->g_484.s8", print_hash_value);
    transparent_crc(p_801->g_484.s9, "p_801->g_484.s9", print_hash_value);
    transparent_crc(p_801->g_484.sa, "p_801->g_484.sa", print_hash_value);
    transparent_crc(p_801->g_484.sb, "p_801->g_484.sb", print_hash_value);
    transparent_crc(p_801->g_484.sc, "p_801->g_484.sc", print_hash_value);
    transparent_crc(p_801->g_484.sd, "p_801->g_484.sd", print_hash_value);
    transparent_crc(p_801->g_484.se, "p_801->g_484.se", print_hash_value);
    transparent_crc(p_801->g_484.sf, "p_801->g_484.sf", print_hash_value);
    transparent_crc(p_801->g_485.x, "p_801->g_485.x", print_hash_value);
    transparent_crc(p_801->g_485.y, "p_801->g_485.y", print_hash_value);
    transparent_crc(p_801->g_485.z, "p_801->g_485.z", print_hash_value);
    transparent_crc(p_801->g_485.w, "p_801->g_485.w", print_hash_value);
    transparent_crc(p_801->g_549, "p_801->g_549", print_hash_value);
    transparent_crc(p_801->g_592.f0, "p_801->g_592.f0", print_hash_value);
    transparent_crc(p_801->g_599.s0, "p_801->g_599.s0", print_hash_value);
    transparent_crc(p_801->g_599.s1, "p_801->g_599.s1", print_hash_value);
    transparent_crc(p_801->g_599.s2, "p_801->g_599.s2", print_hash_value);
    transparent_crc(p_801->g_599.s3, "p_801->g_599.s3", print_hash_value);
    transparent_crc(p_801->g_599.s4, "p_801->g_599.s4", print_hash_value);
    transparent_crc(p_801->g_599.s5, "p_801->g_599.s5", print_hash_value);
    transparent_crc(p_801->g_599.s6, "p_801->g_599.s6", print_hash_value);
    transparent_crc(p_801->g_599.s7, "p_801->g_599.s7", print_hash_value);
    transparent_crc(p_801->g_599.s8, "p_801->g_599.s8", print_hash_value);
    transparent_crc(p_801->g_599.s9, "p_801->g_599.s9", print_hash_value);
    transparent_crc(p_801->g_599.sa, "p_801->g_599.sa", print_hash_value);
    transparent_crc(p_801->g_599.sb, "p_801->g_599.sb", print_hash_value);
    transparent_crc(p_801->g_599.sc, "p_801->g_599.sc", print_hash_value);
    transparent_crc(p_801->g_599.sd, "p_801->g_599.sd", print_hash_value);
    transparent_crc(p_801->g_599.se, "p_801->g_599.se", print_hash_value);
    transparent_crc(p_801->g_599.sf, "p_801->g_599.sf", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_801->g_636[i][j][k].f0.f0, "p_801->g_636[i][j][k].f0.f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_801->g_671.s0, "p_801->g_671.s0", print_hash_value);
    transparent_crc(p_801->g_671.s1, "p_801->g_671.s1", print_hash_value);
    transparent_crc(p_801->g_671.s2, "p_801->g_671.s2", print_hash_value);
    transparent_crc(p_801->g_671.s3, "p_801->g_671.s3", print_hash_value);
    transparent_crc(p_801->g_671.s4, "p_801->g_671.s4", print_hash_value);
    transparent_crc(p_801->g_671.s5, "p_801->g_671.s5", print_hash_value);
    transparent_crc(p_801->g_671.s6, "p_801->g_671.s6", print_hash_value);
    transparent_crc(p_801->g_671.s7, "p_801->g_671.s7", print_hash_value);
    transparent_crc(p_801->g_671.s8, "p_801->g_671.s8", print_hash_value);
    transparent_crc(p_801->g_671.s9, "p_801->g_671.s9", print_hash_value);
    transparent_crc(p_801->g_671.sa, "p_801->g_671.sa", print_hash_value);
    transparent_crc(p_801->g_671.sb, "p_801->g_671.sb", print_hash_value);
    transparent_crc(p_801->g_671.sc, "p_801->g_671.sc", print_hash_value);
    transparent_crc(p_801->g_671.sd, "p_801->g_671.sd", print_hash_value);
    transparent_crc(p_801->g_671.se, "p_801->g_671.se", print_hash_value);
    transparent_crc(p_801->g_671.sf, "p_801->g_671.sf", print_hash_value);
    transparent_crc(p_801->g_708.f0, "p_801->g_708.f0", print_hash_value);
    transparent_crc(p_801->g_709.f0, "p_801->g_709.f0", print_hash_value);
    transparent_crc(p_801->g_710.f0, "p_801->g_710.f0", print_hash_value);
    transparent_crc(p_801->g_711.f0, "p_801->g_711.f0", print_hash_value);
    transparent_crc(p_801->g_712.f0, "p_801->g_712.f0", print_hash_value);
    transparent_crc(p_801->g_713.f0, "p_801->g_713.f0", print_hash_value);
    transparent_crc(p_801->g_735.f0.f0, "p_801->g_735.f0.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_801->g_738[i][j].f0, "p_801->g_738[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_801->g_744.x, "p_801->g_744.x", print_hash_value);
    transparent_crc(p_801->g_744.y, "p_801->g_744.y", print_hash_value);
    transparent_crc(p_801->g_744.z, "p_801->g_744.z", print_hash_value);
    transparent_crc(p_801->g_744.w, "p_801->g_744.w", print_hash_value);
    transparent_crc(p_801->g_777.x, "p_801->g_777.x", print_hash_value);
    transparent_crc(p_801->g_777.y, "p_801->g_777.y", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
