// ---fake_divergence -g 88,2,20 -l 2,2,5
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


// Seed: 58

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int8_t  f0;
   volatile uint64_t  f1;
   uint64_t  f2;
   volatile uint32_t  f3;
};

struct S1 {
   uint8_t  f0;
   int8_t  f1;
   uint32_t  f2;
   volatile int64_t  f3;
   int32_t  f4;
   volatile uint64_t  f5;
   int32_t  f6;
   volatile uint64_t  f7;
   volatile uint32_t  f8;
   uint64_t  f9;
};

struct S2 {
    volatile int32_t g_2;
    int32_t g_3[3];
    int32_t g_6;
    struct S0 g_9;
    int32_t g_19;
    VECTOR(int64_t, 8) g_46;
    VECTOR(int8_t, 16) g_53;
    VECTOR(uint32_t, 8) g_69;
    struct S0 g_75[6];
    struct S0 g_76[7][8];
    int16_t g_78[2];
    int32_t g_80;
    int64_t g_91;
    uint8_t g_92;
    VECTOR(int16_t, 16) g_100;
    VECTOR(uint8_t, 2) g_110;
    uint8_t g_113;
    uint32_t *g_115[1];
    struct S0 g_117[4][4][7];
    struct S0 g_118[4];
    struct S0 g_119;
    struct S0 g_122;
    struct S0 *g_121;
    VECTOR(int8_t, 4) g_137;
    VECTOR(int32_t, 4) g_144;
    uint16_t g_164;
    volatile int32_t g_170;
    volatile int32_t *g_169;
    struct S1 g_180[2][2][7];
    VECTOR(uint8_t, 8) g_185;
    VECTOR(uint8_t, 16) g_186;
    VECTOR(int16_t, 2) g_191;
    VECTOR(int16_t, 16) g_192;
    VECTOR(int16_t, 2) g_193;
    int32_t g_211;
    VECTOR(int64_t, 2) g_214;
    VECTOR(int16_t, 2) g_227;
    VECTOR(uint16_t, 4) g_232;
    VECTOR(uint16_t, 4) g_233;
    VECTOR(int64_t, 16) g_295;
    VECTOR(int8_t, 8) g_339;
    struct S0 g_343;
    struct S0 g_373;
    VECTOR(uint8_t, 4) g_378;
    volatile uint64_t g_399[7][4];
    volatile uint64_t *g_398;
    volatile uint64_t **g_397;
    struct S0 g_410;
    VECTOR(int64_t, 2) g_413;
    int32_t *g_437;
    int8_t *g_443;
    int8_t *g_446;
    VECTOR(int8_t, 8) g_452;
    struct S1 * volatile g_460;
    struct S1 * volatile *g_459;
    struct S0 g_496;
    VECTOR(uint64_t, 16) g_563;
    int64_t g_586;
    VECTOR(int32_t, 8) g_593;
    volatile struct S1 g_613[5][2];
    volatile struct S1 g_614;
    volatile struct S1 *g_612[10][3];
    struct S1 g_616;
    int32_t *g_635;
    struct S0 g_646;
    VECTOR(int32_t, 2) g_729;
    VECTOR(uint32_t, 16) g_730;
    volatile VECTOR(int8_t, 2) g_738;
    VECTOR(uint8_t, 8) g_741;
    VECTOR(uint8_t, 2) g_749;
    volatile VECTOR(int32_t, 8) g_779;
    int16_t *g_797[2][1];
    int16_t **g_796;
    int16_t *** volatile g_795;
    volatile struct S0 g_801;
    int32_t ** volatile g_802;
    volatile struct S1 g_803;
    volatile struct S1 g_804;
    int32_t ** volatile g_811;
    VECTOR(int8_t, 4) g_823;
    volatile VECTOR(int16_t, 2) g_827;
    VECTOR(int32_t, 4) g_840;
    volatile VECTOR(int32_t, 8) g_843;
    volatile struct S1 g_844;
    VECTOR(uint8_t, 16) g_855;
    volatile VECTOR(int8_t, 2) g_856;
    volatile VECTOR(int8_t, 4) g_857;
    VECTOR(int8_t, 2) g_858;
    struct S0 g_884;
    int64_t g_901;
    int64_t *g_910;
    int64_t **g_909;
    int64_t *** volatile g_908[5][4][7];
    int64_t *** volatile g_911;
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
int32_t  func_1(struct S2 * p_914);
int32_t  func_13(int32_t  p_14, struct S0 * p_15, int32_t  p_16, int32_t  p_17, struct S2 * p_914);
struct S0 * func_20(uint64_t  p_21, int64_t  p_22, struct S2 * p_914);
uint32_t  func_24(int32_t * p_25, struct S0 * p_26, int64_t  p_27, int16_t  p_28, struct S2 * p_914);
int32_t * func_29(int32_t * p_30, int32_t  p_31, int32_t * p_32, struct S2 * p_914);
int32_t * func_33(int32_t  p_34, uint64_t  p_35, struct S0 * p_36, int32_t * p_37, struct S0 * p_38, struct S2 * p_914);
int32_t  func_39(uint8_t  p_40, uint32_t  p_41, int32_t * p_42, int32_t  p_43, int32_t  p_44, struct S2 * p_914);
int32_t * func_47(uint32_t  p_48, struct S2 * p_914);
int32_t * func_55(int16_t  p_56, uint8_t  p_57, struct S2 * p_914);
uint32_t  func_70(int32_t * p_71, struct S0 * p_72, struct S2 * p_914);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_914->g_3 p_914->g_6 p_914->g_9 p_914->g_19 p_914->g_46 p_914->g_53 p_914->g_69 p_914->g_92 p_914->g_80 p_914->g_100 p_914->g_110 p_914->g_113 p_914->g_121 p_914->g_115 p_914->g_137 p_914->g_144 p_914->g_75.f2 p_914->g_91 p_914->g_119.f0 p_914->g_185 p_914->g_186 p_914->g_191 p_914->g_192 p_914->g_193 p_914->g_180.f9 p_914->g_122.f2 p_914->g_117.f0 p_914->g_214 p_914->g_227 p_914->g_232 p_914->g_233 p_914->g_118.f0 p_914->g_164 p_914->g_122.f0 p_914->g_169 p_914->g_119.f2 p_914->g_339 p_914->g_118.f2 p_914->g_117.f2 p_914->g_378 p_914->g_397 p_914->g_398 p_914->g_413 p_914->g_211 p_914->g_75.f0 p_914->g_437 p_914->g_373.f2 p_914->g_180.f1 p_914->g_443 p_914->g_343.f2 p_914->g_452 p_914->g_459 p_914->g_446 p_914->g_373.f0 p_914->g_343.f0 p_914->g_410.f2 p_914->g_76.f0 p_914->g_410.f0 p_914->g_563 p_914->g_586 p_914->g_593 p_914->g_612 p_914->g_180.f6 p_914->g_613.f0 p_914->g_122 p_914->g_399 p_914->g_343.f3 p_914->g_616.f3 p_914->g_795 p_914->g_729 p_914->g_801 p_914->g_802 p_914->g_803 p_914->g_373.f3 p_914->g_646 p_914->g_811 p_914->g_823 p_914->g_827 p_914->g_840 p_914->g_843 p_914->g_844 p_914->g_855 p_914->g_856 p_914->g_857 p_914->g_858 p_914->g_635 p_914->g_78 p_914->g_884 p_914->g_616.f6 p_914->g_616.f2 p_914->g_911 p_914->g_496.f2 p_914->g_180.f4
 * writes: p_914->g_3 p_914->g_6 p_914->g_9 p_914->g_19 p_914->g_92 p_914->g_69 p_914->g_113 p_914->g_115 p_914->g_164 p_914->g_169 p_914->g_144 p_914->g_180.f9 p_914->g_211 p_914->g_100 p_914->g_78 p_914->g_122.f2 p_914->g_122.f0 p_914->g_180.f4 p_914->g_80 p_914->g_91 p_914->g_413 p_914->g_437 p_914->g_446 p_914->g_233 p_914->g_373.f0 p_914->g_343.f0 p_914->g_410.f0 p_914->g_586 p_914->g_75.f0 p_914->g_410.f2 p_914->g_121 p_914->g_635 p_914->g_180.f6 p_914->g_119.f0 p_914->g_122 p_914->g_185 p_914->g_646.f0 p_914->g_804 p_914->g_646 p_914->g_563 p_914->g_616.f6 p_914->g_884.f0 p_914->g_616.f2 p_914->g_909 p_914->g_496.f2 p_914->g_410
 */
int32_t  func_1(struct S2 * p_914)
{ /* block id: 4 */
    int32_t l_368 = 0x606CCB5CL;
    struct S0 *l_409 = &p_914->g_410;
    for (p_914->g_3[2] = (-22); (p_914->g_3[2] > 24); p_914->g_3[2] = safe_add_func_uint64_t_u_u(p_914->g_3[2], 5))
    { /* block id: 7 */
        int32_t l_23 = 7L;
        for (p_914->g_6 = (-7); (p_914->g_6 <= (-3)); p_914->g_6++)
        { /* block id: 10 */
            struct S0 *l_10[2];
            VECTOR(uint8_t, 16) l_51 = (VECTOR(uint8_t, 16))(0x05L, (VECTOR(uint8_t, 4))(0x05L, (VECTOR(uint8_t, 2))(0x05L, 252UL), 252UL), 252UL, 0x05L, 252UL, (VECTOR(uint8_t, 2))(0x05L, 252UL), (VECTOR(uint8_t, 2))(0x05L, 252UL), 0x05L, 252UL, 0x05L, 252UL);
            VECTOR(int8_t, 8) l_52 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x5FL), 0x5FL), 0x5FL, (-1L), 0x5FL);
            VECTOR(int8_t, 8) l_54 = (VECTOR(int8_t, 8))(0x22L, (VECTOR(int8_t, 4))(0x22L, (VECTOR(int8_t, 2))(0x22L, 1L), 1L), 1L, 0x22L, 1L);
            int i;
            for (i = 0; i < 2; i++)
                l_10[i] = &p_914->g_9;
            p_914->g_9 = p_914->g_9;
            for (p_914->g_9.f0 = (-21); (p_914->g_9.f0 >= 0); p_914->g_9.f0++)
            { /* block id: 14 */
                int32_t *l_18 = &p_914->g_19;
                VECTOR(int16_t, 16) l_45 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x5479L), 0x5479L), 0x5479L, 0L, 0x5479L, (VECTOR(int16_t, 2))(0L, 0x5479L), (VECTOR(int16_t, 2))(0L, 0x5479L), 0L, 0x5479L, 0L, 0x5479L);
                int32_t *l_369 = &p_914->g_180[0][1][5].f4;
                int32_t *l_447 = (void*)0;
                int i;
                if (p_914->g_9.f3)
                    break;
                if (func_13(((*l_18) &= p_914->g_9.f1), func_20((p_914->g_6 != (l_23 && ((func_24(func_29(func_33(((*l_369) = func_39(p_914->g_9.f0, (p_914->g_3[2] != (((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_45.sea40)), 0x3332L, ((VECTOR(int16_t, 2))(0L, 0x2DE4L)), 0x1172L)).lo)).z & (!(0L && (((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 8))(p_914->g_46.s45633466))))).s0 , p_914->g_9.f2))))), func_47((safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(l_51.sc1dea90c)).odd)).w, ((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 4))(l_52.s1021)).wyzwwwxzxwzyzxwz, ((VECTOR(int8_t, 4))(p_914->g_53.s08a6)).zyzwyzywxyxzyzyx, ((VECTOR(int8_t, 8))(l_54.s51755133)).s0026153305626236))).s6)), p_914), (FAKE_DIVERGE(p_914->global_2_offset, get_global_id(2), 10) || FAKE_DIVERGE(p_914->global_2_offset, get_global_id(2), 10)), ((*l_369) = ((((VECTOR(uint16_t, 2))(0x860CL, 0x64F2L)).hi & (((safe_mod_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((0UL > l_368), p_914->g_46.s6)), 0x4D673625L)) > l_52.s3) < p_914->g_137.w)) > 0x18L)), p_914)), p_914->g_137.y, p_914->g_121, &p_914->g_6, l_409, p_914), l_23, l_447, p_914), p_914->g_121, l_23, p_914->g_185.s6, p_914) == l_23) == 0x54L))), p_914->g_452.s0, p_914), l_368, p_914->g_9.f2, p_914))
                { /* block id: 335 */
                    for (p_914->g_496.f2 = (-8); (p_914->g_496.f2 < 38); p_914->g_496.f2++)
                    { /* block id: 338 */
                        (*l_18) &= (-9L);
                    }
                }
                else
                { /* block id: 341 */
                    (*l_409) = (*p_914->g_121);
                }
                return l_368;
            }
        }
    }
    return (*p_914->g_437);
}


/* ------------------------------------------ */
/* 
 * reads : p_914->g_80 p_914->g_180.f6 p_914->g_613.f0 p_914->g_121 p_914->g_122 p_914->g_185 p_914->g_437 p_914->g_92 p_914->g_397 p_914->g_398 p_914->g_399 p_914->g_19 p_914->g_119.f2 p_914->g_343.f3 p_914->g_616.f3 p_914->g_76.f0 p_914->g_91 p_914->g_211 p_914->g_795 p_914->g_729 p_914->g_801 p_914->g_802 p_914->g_803 p_914->g_373.f3 p_914->g_646 p_914->g_9.f2 p_914->g_53 p_914->g_69 p_914->g_3 p_914->g_9.f0 p_914->g_113 p_914->g_115 p_914->g_46 p_914->g_119.f0 p_914->g_110 p_914->g_117.f0 p_914->g_118.f0 p_914->g_169 p_914->g_811 p_914->g_823 p_914->g_827 p_914->g_452 p_914->g_586 p_914->g_840 p_914->g_843 p_914->g_844 p_914->g_855 p_914->g_856 p_914->g_857 p_914->g_858 p_914->g_6 p_914->g_635 p_914->g_78 p_914->g_884 p_914->g_563 p_914->g_616.f6 p_914->g_616.f2 p_914->g_911
 * writes: p_914->g_80 p_914->g_180.f6 p_914->g_19 p_914->g_119.f0 p_914->g_122 p_914->g_185 p_914->g_78 p_914->g_180.f4 p_914->g_164 p_914->g_169 p_914->g_646.f0 p_914->g_91 p_914->g_211 p_914->g_635 p_914->g_804 p_914->g_646 p_914->g_92 p_914->g_113 p_914->g_115 p_914->g_144 p_914->g_100 p_914->g_586 p_914->g_563 p_914->g_616.f6 p_914->g_884.f0 p_914->g_616.f2 p_914->g_909
 */
int32_t  func_13(int32_t  p_14, struct S0 * p_15, int32_t  p_16, int32_t  p_17, struct S2 * p_914)
{ /* block id: 222 */
    int8_t l_650 = 9L;
    int32_t l_675 = 0x4236C940L;
    int32_t l_677 = 1L;
    struct S1 *l_695[2][4][7] = {{{&p_914->g_616,&p_914->g_616,(void*)0,&p_914->g_616,&p_914->g_616,&p_914->g_616,&p_914->g_616},{&p_914->g_616,&p_914->g_616,(void*)0,&p_914->g_616,&p_914->g_616,&p_914->g_616,&p_914->g_616},{&p_914->g_616,&p_914->g_616,(void*)0,&p_914->g_616,&p_914->g_616,&p_914->g_616,&p_914->g_616},{&p_914->g_616,&p_914->g_616,(void*)0,&p_914->g_616,&p_914->g_616,&p_914->g_616,&p_914->g_616}},{{&p_914->g_616,&p_914->g_616,(void*)0,&p_914->g_616,&p_914->g_616,&p_914->g_616,&p_914->g_616},{&p_914->g_616,&p_914->g_616,(void*)0,&p_914->g_616,&p_914->g_616,&p_914->g_616,&p_914->g_616},{&p_914->g_616,&p_914->g_616,(void*)0,&p_914->g_616,&p_914->g_616,&p_914->g_616,&p_914->g_616},{&p_914->g_616,&p_914->g_616,(void*)0,&p_914->g_616,&p_914->g_616,&p_914->g_616,&p_914->g_616}}};
    int32_t **l_697 = (void*)0;
    VECTOR(int32_t, 2) l_706 = (VECTOR(int32_t, 2))(0x42009FB4L, 0x456BB1DEL);
    VECTOR(int32_t, 8) l_707 = (VECTOR(int32_t, 8))(0x76B31AFEL, (VECTOR(int32_t, 4))(0x76B31AFEL, (VECTOR(int32_t, 2))(0x76B31AFEL, 0x7662CF3EL), 0x7662CF3EL), 0x7662CF3EL, 0x76B31AFEL, 0x7662CF3EL);
    VECTOR(int32_t, 4) l_708 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x7BCBE02EL), 0x7BCBE02EL);
    VECTOR(int8_t, 8) l_748 = (VECTOR(int8_t, 8))(0x25L, (VECTOR(int8_t, 4))(0x25L, (VECTOR(int8_t, 2))(0x25L, 9L), 9L), 9L, 0x25L, 9L);
    uint16_t *l_762 = &p_914->g_164;
    uint16_t **l_761 = &l_762;
    uint32_t **l_766 = &p_914->g_115[0];
    uint32_t ***l_765 = &l_766;
    uint32_t l_775 = 0xDEAB15B5L;
    int32_t l_815[7][8] = {{1L,0x20D1D1E6L,0x36DE7ED1L,0x2F2030D7L,0x20D1D1E6L,0x2F2030D7L,0x36DE7ED1L,0x20D1D1E6L},{1L,0x20D1D1E6L,0x36DE7ED1L,0x2F2030D7L,0x20D1D1E6L,0x2F2030D7L,0x36DE7ED1L,0x20D1D1E6L},{1L,0x20D1D1E6L,0x36DE7ED1L,0x2F2030D7L,0x20D1D1E6L,0x2F2030D7L,0x36DE7ED1L,0x20D1D1E6L},{1L,0x20D1D1E6L,0x36DE7ED1L,0x2F2030D7L,0x20D1D1E6L,0x2F2030D7L,0x36DE7ED1L,0x20D1D1E6L},{1L,0x20D1D1E6L,0x36DE7ED1L,0x2F2030D7L,0x20D1D1E6L,0x2F2030D7L,0x36DE7ED1L,0x20D1D1E6L},{1L,0x20D1D1E6L,0x36DE7ED1L,0x2F2030D7L,0x20D1D1E6L,0x2F2030D7L,0x36DE7ED1L,0x20D1D1E6L},{1L,0x20D1D1E6L,0x36DE7ED1L,0x2F2030D7L,0x20D1D1E6L,0x2F2030D7L,0x36DE7ED1L,0x20D1D1E6L}};
    int32_t **l_824 = &p_914->g_437;
    int32_t ***l_825 = &l_824;
    int8_t *l_826 = &p_914->g_119.f0;
    int32_t **l_828 = &p_914->g_635;
    int32_t *l_830 = &p_914->g_80;
    int32_t **l_829 = &l_830;
    VECTOR(int32_t, 8) l_838 = (VECTOR(int32_t, 8))(0x7C6A3884L, (VECTOR(int32_t, 4))(0x7C6A3884L, (VECTOR(int32_t, 2))(0x7C6A3884L, 0x469A8E39L), 0x469A8E39L), 0x469A8E39L, 0x7C6A3884L, 0x469A8E39L);
    VECTOR(int32_t, 16) l_847 = (VECTOR(int32_t, 16))(0x78F320E3L, (VECTOR(int32_t, 4))(0x78F320E3L, (VECTOR(int32_t, 2))(0x78F320E3L, 7L), 7L), 7L, 0x78F320E3L, 7L, (VECTOR(int32_t, 2))(0x78F320E3L, 7L), (VECTOR(int32_t, 2))(0x78F320E3L, 7L), 0x78F320E3L, 7L, 0x78F320E3L, 7L);
    VECTOR(int32_t, 8) l_848 = (VECTOR(int32_t, 8))(0x171F2314L, (VECTOR(int32_t, 4))(0x171F2314L, (VECTOR(int32_t, 2))(0x171F2314L, (-1L)), (-1L)), (-1L), 0x171F2314L, (-1L));
    int64_t *l_861 = &p_914->g_586;
    int32_t l_870 = 0x2A2FF453L;
    int64_t l_878 = 0x7526E32ED89A5F72L;
    int16_t l_900 = 0L;
    uint8_t l_903 = 255UL;
    int64_t *l_907 = &p_914->g_91;
    int64_t **l_906[1][1][6];
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 6; k++)
                l_906[i][j][k] = &l_907;
        }
    }
    for (p_914->g_80 = 0; (p_914->g_80 < (-22)); p_914->g_80 = safe_sub_func_uint64_t_u_u(p_914->g_80, 2))
    { /* block id: 225 */
        uint64_t l_649 = 0UL;
        int32_t *l_651 = &p_914->g_180[0][1][5].f6;
        int16_t *l_658 = &p_914->g_78[1];
        int16_t **l_657 = &l_658;
        int16_t ***l_656 = &l_657;
        struct S0 **l_661[8][5] = {{&p_914->g_121,&p_914->g_121,(void*)0,&p_914->g_121,(void*)0},{&p_914->g_121,&p_914->g_121,(void*)0,&p_914->g_121,(void*)0},{&p_914->g_121,&p_914->g_121,(void*)0,&p_914->g_121,(void*)0},{&p_914->g_121,&p_914->g_121,(void*)0,&p_914->g_121,(void*)0},{&p_914->g_121,&p_914->g_121,(void*)0,&p_914->g_121,(void*)0},{&p_914->g_121,&p_914->g_121,(void*)0,&p_914->g_121,(void*)0},{&p_914->g_121,&p_914->g_121,(void*)0,&p_914->g_121,(void*)0},{&p_914->g_121,&p_914->g_121,(void*)0,&p_914->g_121,(void*)0}};
        int32_t l_674 = 0x117868EAL;
        int32_t l_678 = 1L;
        int32_t l_680 = 0x3F57D187L;
        int32_t l_681[9][3][3] = {{{1L,1L,1L},{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L},{1L,1L,1L}}};
        VECTOR(int64_t, 2) l_731 = (VECTOR(int64_t, 2))(1L, (-2L));
        VECTOR(uint8_t, 16) l_745 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 253UL), 253UL), 253UL, 255UL, 253UL, (VECTOR(uint8_t, 2))(255UL, 253UL), (VECTOR(uint8_t, 2))(255UL, 253UL), 255UL, 253UL, 255UL, 253UL);
        VECTOR(uint8_t, 2) l_747 = (VECTOR(uint8_t, 2))(255UL, 1UL);
        int32_t l_778 = (-7L);
        int i, j, k;
        l_649 ^= p_17;
        if (((*l_651) = l_650))
        { /* block id: 228 */
            int16_t ***l_660 = &l_657;
            int32_t l_673[6] = {0x1FE07D8EL,0L,0x1FE07D8EL,0x1FE07D8EL,0L,0x1FE07D8EL};
            int64_t *l_709 = &p_914->g_91;
            uint16_t *l_713 = (void*)0;
            uint16_t *l_714 = (void*)0;
            uint16_t *l_715 = (void*)0;
            uint16_t *l_716 = &p_914->g_164;
            uint64_t *l_717 = (void*)0;
            uint64_t *l_718 = &p_914->g_180[0][1][5].f9;
            uint16_t **l_722 = &l_715;
            uint16_t ***l_721 = &l_722;
            int i;
            for (p_16 = 22; (p_16 != (-24)); p_16 = safe_sub_func_uint16_t_u_u(p_16, 2))
            { /* block id: 231 */
                uint64_t l_682 = 0x542D6268070F61E4L;
                uint8_t *l_687[1][7][10] = {{{&p_914->g_113,(void*)0,(void*)0,&p_914->g_616.f0,(void*)0,&p_914->g_616.f0,&p_914->g_616.f0,(void*)0,&p_914->g_616.f0,(void*)0},{&p_914->g_113,(void*)0,(void*)0,&p_914->g_616.f0,(void*)0,&p_914->g_616.f0,&p_914->g_616.f0,(void*)0,&p_914->g_616.f0,(void*)0},{&p_914->g_113,(void*)0,(void*)0,&p_914->g_616.f0,(void*)0,&p_914->g_616.f0,&p_914->g_616.f0,(void*)0,&p_914->g_616.f0,(void*)0},{&p_914->g_113,(void*)0,(void*)0,&p_914->g_616.f0,(void*)0,&p_914->g_616.f0,&p_914->g_616.f0,(void*)0,&p_914->g_616.f0,(void*)0},{&p_914->g_113,(void*)0,(void*)0,&p_914->g_616.f0,(void*)0,&p_914->g_616.f0,&p_914->g_616.f0,(void*)0,&p_914->g_616.f0,(void*)0},{&p_914->g_113,(void*)0,(void*)0,&p_914->g_616.f0,(void*)0,&p_914->g_616.f0,&p_914->g_616.f0,(void*)0,&p_914->g_616.f0,(void*)0},{&p_914->g_113,(void*)0,(void*)0,&p_914->g_616.f0,(void*)0,&p_914->g_616.f0,&p_914->g_616.f0,(void*)0,&p_914->g_616.f0,(void*)0}}};
                uint32_t l_690[6] = {0x3C6768F1L,0x3C6768F1L,0x3C6768F1L,0x3C6768F1L,0x3C6768F1L,0x3C6768F1L};
                struct S1 *l_693 = &p_914->g_616;
                struct S1 **l_694 = (void*)0;
                int8_t *l_696 = &l_650;
                int i, j, k;
                for (p_914->g_19 = 19; (p_914->g_19 == 29); p_914->g_19 = safe_add_func_uint8_t_u_u(p_914->g_19, 3))
                { /* block id: 234 */
                    int16_t ***l_659 = &l_657;
                    int32_t l_664 = 0x50FDD4A2L;
                    VECTOR(int32_t, 16) l_676 = (VECTOR(int32_t, 16))(0x4D849EB8L, (VECTOR(int32_t, 4))(0x4D849EB8L, (VECTOR(int32_t, 2))(0x4D849EB8L, 0x75785B4DL), 0x75785B4DL), 0x75785B4DL, 0x4D849EB8L, 0x75785B4DL, (VECTOR(int32_t, 2))(0x4D849EB8L, 0x75785B4DL), (VECTOR(int32_t, 2))(0x4D849EB8L, 0x75785B4DL), 0x4D849EB8L, 0x75785B4DL, 0x4D849EB8L, 0x75785B4DL);
                    int64_t l_679[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_679[i] = (-8L);
                    (*l_651) |= (((l_659 = l_656) == l_660) >= ((l_661[5][4] = &p_914->g_121) != (void*)0));
                    (*l_651) = p_914->g_613[0][0].f0;
                    for (p_914->g_119.f0 = 21; (p_914->g_119.f0 >= (-20)); p_914->g_119.f0--)
                    { /* block id: 241 */
                        int32_t *l_665 = (void*)0;
                        int32_t *l_666 = (void*)0;
                        int32_t *l_667 = &p_914->g_616.f6;
                        int32_t *l_668 = &p_914->g_616.f6;
                        int32_t *l_669 = &p_914->g_211;
                        int32_t *l_670 = &p_914->g_180[0][1][5].f6;
                        int32_t *l_671 = &p_914->g_616.f6;
                        int32_t *l_672[6][6] = {{&p_914->g_19,&p_914->g_3[0],(void*)0,&p_914->g_616.f6,&p_914->g_3[2],&p_914->g_19},{&p_914->g_19,&p_914->g_3[0],(void*)0,&p_914->g_616.f6,&p_914->g_3[2],&p_914->g_19},{&p_914->g_19,&p_914->g_3[0],(void*)0,&p_914->g_616.f6,&p_914->g_3[2],&p_914->g_19},{&p_914->g_19,&p_914->g_3[0],(void*)0,&p_914->g_616.f6,&p_914->g_3[2],&p_914->g_19},{&p_914->g_19,&p_914->g_3[0],(void*)0,&p_914->g_616.f6,&p_914->g_3[2],&p_914->g_19},{&p_914->g_19,&p_914->g_3[0],(void*)0,&p_914->g_616.f6,&p_914->g_3[2],&p_914->g_19}};
                        int i, j;
                        l_682--;
                        (*p_914->g_121) = (*p_914->g_121);
                        if (p_17)
                            continue;
                    }
                }
                p_914->g_19 ^= (((safe_lshift_func_uint16_t_u_u((((--p_914->g_185.s0) | 0x4BL) < (((***l_656) = 0x2E5AL) | 0UL)), ((((((p_14 , ((*p_914->g_437) = l_690[0])) , (*l_651)) != ((safe_mul_func_int8_t_s_s(((l_695[0][0][3] = l_693) != (void*)0), ((*l_696) = 8L))) < p_14)) , l_697) != &p_914->g_169) && p_16))) > p_914->g_92) && (**p_914->g_397));
            }
            if (((safe_rshift_func_int16_t_s_u((-8L), (safe_sub_func_int8_t_s_s((safe_sub_func_uint16_t_u_u(((*p_914->g_398) <= ((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))((-8L), 0x0478C78A8565063FL)).yyxy)).xzyywzyz, ((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 16))((-1L), (-1L), ((VECTOR(int64_t, 2))(3L, 1L)), (l_673[5] > (((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 2))(0x2097L, 0x3AD4L)).yxxyyyxx, ((VECTOR(uint16_t, 2))(0x36C8L, 6UL)).xyyyyxxx))).s7 <= (((*l_709) = ((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 8))(l_706.yyxyyxyy)).odd, ((VECTOR(uint32_t, 4))(abs(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_707.s2657550412621600)).s9817)), ((VECTOR(int32_t, 16))(l_708.zyzzwzxyzxywwyzz)).s07cb))))))))))).y) && (p_914->g_46.s1 = (((safe_unary_minus_func_uint64_t_u((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 2))(1L, 3L)).hi, ((*l_716) &= p_914->g_180[0][1][5].f4))))) || (((*l_718)--) & ((VECTOR(uint64_t, 8))(((void*)0 == l_721), (safe_lshift_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u(((*l_651) && ((((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 16))(0x6A226E97CA2F207BL, 1L, ((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 4))(p_914->g_729.yxyx)).odd, ((VECTOR(uint32_t, 2))(p_914->g_730.s6e))))), (-10L), 0x2245A7EC181BBA93L, 0x0F13BF33537776DEL, p_914->g_729.x, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(5L, 0L)).xyyy)), ((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(l_731.yxxy)), 1L, ((VECTOR(int64_t, 8))(0x5BAABBA8D5F499A8L, ((VECTOR(int64_t, 4))(2L)), ((VECTOR(int64_t, 2))(2L)), (-1L))), ((VECTOR(int64_t, 2))(1L)), (-3L))).even, ((VECTOR(int64_t, 8))(0x7FE845EE775FD65EL))))), ((VECTOR(int64_t, 8))(0x7FD8C74264AF8603L))))).s7457624663213130, ((VECTOR(int64_t, 16))(0x646D53F8A296BBC5L))))).sad69, ((VECTOR(int64_t, 4))(0L))))))), ((VECTOR(int64_t, 16))(0x7873CCFC77B20F93L))))).s80e9, ((VECTOR(int64_t, 4))(0x4653C5A45F5361AAL))))).z , l_673[4]) != (*l_651))), 4)), 0)), 5UL, ((VECTOR(uint64_t, 4))(1UL)), 0x258AE317C8D0FFF1L)).s5)) == p_914->g_373.f2))))), ((VECTOR(int64_t, 4))(0x119AC02662A52D79L)), ((VECTOR(int64_t, 2))(0x53C54EFA6DBF7D51L)), 1L, ((VECTOR(int64_t, 2))(0x3DED8063BECB9A81L)), 0L, 0L)).sa2, ((VECTOR(int64_t, 2))(0x336B46A84BA0A224L))))).yxxyyyyy, ((VECTOR(int64_t, 8))((-9L)))))).s1), 0xDF13L)), p_14)))) & p_914->g_119.f2))
            { /* block id: 258 */
                uint8_t *l_742 = &p_914->g_616.f0;
                VECTOR(uint8_t, 16) l_746 = (VECTOR(uint8_t, 16))(246UL, (VECTOR(uint8_t, 4))(246UL, (VECTOR(uint8_t, 2))(246UL, 1UL), 1UL), 1UL, 246UL, 1UL, (VECTOR(uint8_t, 2))(246UL, 1UL), (VECTOR(uint8_t, 2))(246UL, 1UL), 246UL, 1UL, 246UL, 1UL);
                VECTOR(int8_t, 2) l_750 = (VECTOR(int8_t, 2))(0x11L, 1L);
                uint32_t **l_764 = &p_914->g_115[0];
                uint32_t ***l_763[4][6][5] = {{{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764}},{{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764}},{{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764}},{{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764},{&l_764,&l_764,(void*)0,&l_764,&l_764}}};
                int32_t *l_767[10] = {&l_677,&l_677,&l_677,&l_677,&l_677,&l_677,&l_677,&l_677,&l_677,&l_677};
                int i, j, k;
                p_914->g_169 = (((*l_716) = ((VECTOR(uint16_t, 8))((safe_add_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 16))(p_914->g_738.yxxxxxxxxxxyxxyy)).sa, ((VECTOR(uint8_t, 16))(0x2BL, (safe_lshift_func_int16_t_s_s(0x1384L, 8)), ((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(p_914->g_741.s1631335473402437)).sbc)).xyxxxyxyxxyxxyxy, ((VECTOR(uint8_t, 8))(0xD0L, p_914->g_232.y, 0UL, ((*l_742)++), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(l_745.se1a85ec2)).s07)).yxxy, ((VECTOR(uint8_t, 2))(0xB4L, 5UL)).yxyx))).yxzyyxywywyyxxyy)))), ((VECTOR(uint8_t, 8))((0x228AL >= p_17), 0x8EL, ((VECTOR(uint8_t, 4))(l_746.sd882)), 0x83L, 6UL)).s1310740060440565, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_747.yx)), p_914->g_180[0][1][5].f1, 0x20L, p_914->g_144.w, 0x35L, 0x29L, 0x66L)).s0056365512361144))).s99, ((VECTOR(uint8_t, 4))(abs(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(l_748.s24435014)).s7317017755507703)).even)).hi))))).odd, ((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(uint8_t, 16))(p_914->g_749.yxyyyyyxxxyyyxxx)), ((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(1L, 6L)))).yxyyyyyyyyyyxyyy, ((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x34L, 0x35L)).xxxyyyxy)).odd)).xxzzxwywzzzzxxyx, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 2))(l_750.yy)).xyyx, ((VECTOR(int8_t, 16))(((p_914->g_729.y | p_16) == ((((safe_lshift_func_int8_t_s_u((*l_651), p_16)) < p_914->g_749.y) != p_914->g_646.f0) == 0x2DL)), ((VECTOR(int8_t, 8))((-1L))), 0x18L, 6L, ((VECTOR(int8_t, 4))(1L)), 0x04L)).sdfaf))).lo)), (-1L), 0x6DL)).yyyyxxzzyxzyxzyz))))))))).sdd))))).yyyx)))))))).s1413575357570714))).s213a, ((VECTOR(uint8_t, 4))(6UL)), ((VECTOR(uint8_t, 4))(0xEAL))))).odd, ((VECTOR(uint8_t, 2))(0x3FL))))).lo, 255UL, 0x1CL, ((VECTOR(uint8_t, 2))(0x76L)), 5UL, 1UL, l_673[0], 0UL, p_16, 0x78L, 0x88L, 0x0FL, 1UL)).s2)), p_14)), p_14)), ((VECTOR(uint16_t, 4))(1UL)), ((VECTOR(uint16_t, 2))(0x6B33L)), 0x7FC9L)).s5) , (void*)0);
                p_14 |= (safe_lshift_func_int8_t_s_u(l_673[4], (safe_div_func_int32_t_s_s(((safe_add_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s((((((*l_651) = 0x5CE465E5L) == (0x1804L == p_17)) != (((p_914->g_343.f3 != (1L >= (((*l_721) = l_761) != (void*)0))) != (!((l_765 = l_763[1][1][3]) != (void*)0))) ^ l_673[3])) , p_16), 7L)) <= GROUP_DIVERGE(0, 1)), p_17)) < 1UL), 0xED3C4A02L))));
                if (p_14)
                    break;
            }
            else
            { /* block id: 267 */
                int32_t l_770 = 0x0D5DB108L;
                int32_t l_807 = 0x15B515FCL;
                for (p_914->g_646.f0 = 0; (p_914->g_646.f0 >= 19); p_914->g_646.f0 = safe_add_func_int32_t_s_s(p_914->g_646.f0, 1))
                { /* block id: 270 */
                    int32_t *l_771 = (void*)0;
                    int32_t *l_772 = &p_914->g_211;
                    int32_t *l_773 = &l_673[5];
                    int32_t *l_774[1];
                    uint32_t *l_784 = (void*)0;
                    uint32_t *l_785 = (void*)0;
                    uint32_t *l_786[5];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_774[i] = &l_770;
                    for (i = 0; i < 5; i++)
                        l_786[i] = (void*)0;
                    ++l_775;
                    if ((((*l_772) ^= ((!(((*l_657) = (**l_660)) == (l_778 , (((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(p_914->g_779.s21456156)).s3442733446145717)).s3 , p_914->g_122.f2) == ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(0x7977L, 0x4B62L, 0x5423L, (-5L))).wyyzyzyw)).s5) , l_715)))) , ((safe_div_func_int64_t_s_s((safe_sub_func_uint32_t_u_u(((*l_651) &= (+1UL)), FAKE_DIVERGE(p_914->global_1_offset, get_global_id(1), 10))), (p_914->g_616.f3 , (+(((4UL >= (((*l_709) &= (safe_rshift_func_uint16_t_u_s(((safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), 2)) && (!((safe_rshift_func_int16_t_s_s(1L, p_914->g_122.f0)) && (*l_773)))), p_914->g_76[0][3].f0))) || p_14)) && p_17) && 0x5BL))))) , p_14))) || 0UL))
                    { /* block id: 276 */
                        struct S0 **l_800 = &p_914->g_121;
                        (*l_651) = (safe_mul_func_int16_t_s_s(((((((void*)0 == p_914->g_795) | p_914->g_729.x) , (safe_add_func_int32_t_s_s((l_800 == (((void*)0 != &p_914->g_437) , &p_914->g_121)), l_673[5]))) >= (l_770 ^= (0x305E56D6F8A4B32AL || p_17))) ^ 0x53E1L), (-10L)));
                        (**l_800) = p_914->g_801;
                        (**l_800) = (*p_914->g_121);
                        (*p_914->g_802) = &p_14;
                    }
                    else
                    { /* block id: 282 */
                        int32_t l_805 = 0x5D2F0330L;
                        int8_t l_806 = 0x57L;
                        uint8_t l_808 = 0x6BL;
                        p_914->g_804 = ((*p_914->g_121) , p_914->g_803);
                        --l_808;
                        if (p_914->g_373.f3)
                            break;
                    }
                    return p_14;
                }
            }
        }
        else
        { /* block id: 290 */
            int32_t *l_812 = &l_681[8][1][0];
            int32_t *l_813 = (void*)0;
            int32_t *l_814[6][4] = {{(void*)0,&l_678,(void*)0,(void*)0},{(void*)0,&l_678,(void*)0,(void*)0},{(void*)0,&l_678,(void*)0,(void*)0},{(void*)0,&l_678,(void*)0,(void*)0},{(void*)0,&l_678,(void*)0,(void*)0},{(void*)0,&l_678,(void*)0,(void*)0}};
            uint8_t l_816 = 247UL;
            int i, j;
            (*p_15) = (*p_15);
            (*p_914->g_811) = func_47((*l_651), p_914);
            --l_816;
            if (p_16)
                break;
        }
    }
    (*l_829) = ((*l_828) = func_55((+(safe_add_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 2))(p_914->g_823.wz)).even, 0)), ((*p_914->g_121) , ((0x19F4EFBFL <= p_16) < ((((*l_826) = ((((*l_825) = l_824) == &p_914->g_437) , (~(-4L)))) < (p_914->g_113 = (((VECTOR(int16_t, 8))(p_914->g_827.xyyxyyyx)).s2 == GROUP_DIVERGE(1, 1)))) >= (p_14 == p_914->g_119.f2))))))), (p_914->g_452.s5 , p_914->g_69.s4), p_914));
    for (p_914->g_586 = 0; (p_914->g_586 >= 11); p_914->g_586++)
    { /* block id: 304 */
        int32_t *l_833 = &p_914->g_180[0][1][5].f6;
        VECTOR(int32_t, 8) l_839 = (VECTOR(int32_t, 8))(0x4E75190FL, (VECTOR(int32_t, 4))(0x4E75190FL, (VECTOR(int32_t, 2))(0x4E75190FL, 1L), 1L), 1L, 0x4E75190FL, 1L);
        VECTOR(int32_t, 16) l_846 = (VECTOR(int32_t, 16))(0x30281A82L, (VECTOR(int32_t, 4))(0x30281A82L, (VECTOR(int32_t, 2))(0x30281A82L, 0x0DAF05F0L), 0x0DAF05F0L), 0x0DAF05F0L, 0x30281A82L, 0x0DAF05F0L, (VECTOR(int32_t, 2))(0x30281A82L, 0x0DAF05F0L), (VECTOR(int32_t, 2))(0x30281A82L, 0x0DAF05F0L), 0x30281A82L, 0x0DAF05F0L, 0x30281A82L, 0x0DAF05F0L);
        uint32_t *l_862 = (void*)0;
        uint32_t *l_863 = (void*)0;
        uint32_t *l_864 = (void*)0;
        uint32_t *l_865 = (void*)0;
        uint32_t *l_866 = (void*)0;
        uint32_t *l_867 = (void*)0;
        uint32_t *l_868 = (void*)0;
        uint32_t *l_869[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int64_t l_871 = 0x2EA4B46B0F1E7F0EL;
        int16_t *l_872 = (void*)0;
        int16_t *l_873 = (void*)0;
        int16_t *l_874 = (void*)0;
        int16_t *l_875 = (void*)0;
        int16_t *l_876 = (void*)0;
        int16_t *l_877 = &p_914->g_78[1];
        VECTOR(int32_t, 2) l_902 = (VECTOR(int32_t, 2))(0L, (-1L));
        int i;
        (*l_833) ^= 0x750CC55FL;
        if (((safe_mod_func_uint16_t_u_u(((l_878 = ((*l_877) |= (safe_mul_func_uint16_t_u_u(((((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(l_838.s34767354)).lo, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(l_839.s1271525431131041)).s3a, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(0L, ((VECTOR(int32_t, 2))(p_914->g_840.yw)).lo, (safe_sub_func_uint64_t_u_u((*l_833), (*l_833))), ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 2))(0x0EF28D51L, 0x7DAAD5AAL)).xxyyyyxxxyxyyxyx, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 16))(p_914->g_843.s7470751410134565)).sa4))).yxxxyxyxxxxxyyxx))).s6e06, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(0x14064F46L, (-10L), ((VECTOR(int32_t, 4))((((!0x220647E4L) & (p_914->g_844 , (safe_unary_minus_func_int32_t_s(((((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_846.safad)))).lo)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_847.s6013f579a2296e1c)))).se0)).xxxyxyyx)), ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_848.s63217170)))).s61, (int32_t)(((l_870 = (((*l_833) = (safe_add_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), ((safe_rshift_func_int8_t_s_u(0L, (((((VECTOR(uint8_t, 8))(p_914->g_855.sc2a2d55d)).s7 < ((*l_826) = ((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 4))(p_914->g_856.xyyy)), ((VECTOR(int8_t, 16))(p_914->g_857.zyzzyxzyzzzxwwwy)).s2e29, ((VECTOR(int8_t, 2))(p_914->g_858.xy)).yyxx))).xyzzxxwz, (int8_t)(safe_sub_func_int16_t_s_s(p_17, ((l_861 == l_861) < 0x41L))), (int8_t)p_16))).s0)) == 0UL) >= (-8L)))) , p_16)))) >= p_16)) , 0xAF70L) >= FAKE_DIVERGE(p_914->group_0_offset, get_group_id(0), 10)), (int32_t)p_16))).xyyy, ((VECTOR(int32_t, 4))(0x7C668695L)), ((VECTOR(int32_t, 4))(0x04CDF5E1L))))), ((VECTOR(int32_t, 4))(0x23723D81L)))).s19, ((VECTOR(int32_t, 2))(0L))))), ((VECTOR(int32_t, 2))(0x3B063E9AL)), 4L, 0x025E855BL, (-1L), ((VECTOR(int32_t, 2))((-1L))), (-1L), ((VECTOR(int32_t, 4))(0L)), 0x76205848L, 0x1C54AEFFL))))))).s6, ((VECTOR(int32_t, 2))(0L)), p_17, 0x7244FF65L, ((VECTOR(int32_t, 4))(4L)), 6L, (-6L), ((VECTOR(int32_t, 2))(0x12AEC949L)), 0x6D999B1DL, 1L, 1L)))).sb6, (int32_t)(*l_833)))).xxyx)).xwyzwxwyzxyxxzzx)).s7d))).xxyxxyxx)).s5233473314444507)).odd, ((VECTOR(int32_t, 8))(0x2CAF948FL)), ((VECTOR(int32_t, 8))((-1L)))))).s7 ^ (*l_830)) > l_871))))) & l_839.s6), 0x0F0B5D48L, 0x7A45BFA4L, (-2L))), 0x7B9BB052L, 0x144A8D4AL)).s2074175172145733)).sfa)).xyyy, ((VECTOR(int32_t, 4))(0x58FCAB3CL)), ((VECTOR(int32_t, 4))((-1L)))))).xxwwwxwy)).even))).z, (**p_914->g_811), 0x589AF088L, 0x27D286F0L, (-4L))))).s7107700635425755)).s1a))))))).xxyy)), ((VECTOR(int32_t, 2))(1L)), 0x72359D28L, 0x21ADEB71L, (*p_914->g_635), (-3L), 0x2167481CL, 4L, 0x429B714EL, ((VECTOR(int32_t, 2))(0x55E7705CL)), (-1L))).sdadb))).x , p_914->g_373.f3) , p_914->g_844.f6), 0x9025L)))) || 3L), p_17)) >= GROUP_DIVERGE(2, 1)))
        { /* block id: 311 */
            uint32_t l_879[9][2][10] = {{{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL},{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL}},{{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL},{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL}},{{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL},{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL}},{{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL},{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL}},{{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL},{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL}},{{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL},{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL}},{{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL},{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL}},{{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL},{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL}},{{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL},{0xD25CF8C3L,0xAB595B8AL,0UL,4294967295UL,0UL,0xAB595B8AL,0xD25CF8C3L,0x24287246L,1UL,4294967293UL}}};
            uint64_t *l_885[4][2][3] = {{{&p_914->g_616.f9,&p_914->g_180[0][1][5].f9,&p_914->g_616.f9},{&p_914->g_616.f9,&p_914->g_180[0][1][5].f9,&p_914->g_616.f9}},{{&p_914->g_616.f9,&p_914->g_180[0][1][5].f9,&p_914->g_616.f9},{&p_914->g_616.f9,&p_914->g_180[0][1][5].f9,&p_914->g_616.f9}},{{&p_914->g_616.f9,&p_914->g_180[0][1][5].f9,&p_914->g_616.f9},{&p_914->g_616.f9,&p_914->g_180[0][1][5].f9,&p_914->g_616.f9}},{{&p_914->g_616.f9,&p_914->g_180[0][1][5].f9,&p_914->g_616.f9},{&p_914->g_616.f9,&p_914->g_180[0][1][5].f9,&p_914->g_616.f9}}};
            int32_t l_886 = 0x689AB2FAL;
            int32_t l_887 = (-4L);
            int32_t *l_892[10][2];
            int i, j, k;
            for (i = 0; i < 10; i++)
            {
                for (j = 0; j < 2; j++)
                    l_892[i][j] = (void*)0;
            }
            if ((**l_828))
                break;
            p_914->g_616.f6 |= (p_914->g_78[0] , ((*l_833) = (((((l_879[2][0][2] != (l_762 == l_875)) && (safe_rshift_func_int16_t_s_s(((*l_833) ^ (safe_add_func_int64_t_s_s((p_914->g_884 , 0x68B9D25BDD6745A3L), (p_914->g_563.s4--)))), 15))) > ((safe_add_func_uint32_t_u_u((**l_828), (p_14 | FAKE_DIVERGE(p_914->global_0_offset, get_global_id(0), 10)))) | FAKE_DIVERGE(p_914->group_0_offset, get_group_id(0), 10))) & (*l_833)) > (**l_829))));
            (*l_829) = ((!p_17) , (*l_829));
            p_14 |= (**p_914->g_811);
        }
        else
        { /* block id: 318 */
            return p_16;
        }
        for (p_914->g_884.f0 = 29; (p_914->g_884.f0 != 6); p_914->g_884.f0 = safe_sub_func_int32_t_s_s(p_914->g_884.f0, 9))
        { /* block id: 323 */
            int32_t *l_897 = &l_675;
            int32_t *l_898[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int64_t l_899 = 1L;
            int i;
            for (p_914->g_616.f2 = 0; (p_914->g_616.f2 >= 56); p_914->g_616.f2 = safe_add_func_int16_t_s_s(p_914->g_616.f2, 3))
            { /* block id: 326 */
                return (**p_914->g_811);
            }
            l_903++;
            (*p_914->g_911) = l_906[0][0][5];
            return (**p_914->g_802);
        }
    }
    return (**p_914->g_811);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
struct S0 * func_20(uint64_t  p_21, int64_t  p_22, struct S2 * p_914)
{ /* block id: 217 */
    int16_t *l_639 = (void*)0;
    int16_t **l_638 = &l_639;
    int16_t ***l_640 = (void*)0;
    int16_t ***l_641 = &l_638;
    int16_t **l_643 = &l_639;
    int16_t ***l_642 = &l_643;
    int32_t *l_644 = &p_914->g_616.f6;
    struct S0 *l_645 = &p_914->g_646;
    (*l_642) = ((*l_641) = l_638);
    l_644 = l_644;
    return l_645;
}


/* ------------------------------------------ */
/* 
 * reads : p_914->g_92 p_914->g_563 p_914->g_586 p_914->g_69 p_914->g_75.f2 p_914->g_3 p_914->g_593 p_914->g_410.f0 p_914->g_612 p_914->g_446 p_914->g_413 p_914->g_121 p_914->g_180.f9 p_914->g_211 p_914->g_80 p_914->g_191 p_914->g_75.f0 p_914->g_115 p_914->g_437 p_914->g_373.f2 p_914->g_180.f1 p_914->g_443 p_914->g_410.f2
 * writes: p_914->g_92 p_914->g_586 p_914->g_80 p_914->g_75.f0 p_914->g_180.f9 p_914->g_211 p_914->g_91 p_914->g_413 p_914->g_437 p_914->g_446 p_914->g_144 p_914->g_169 p_914->g_410.f2 p_914->g_121 p_914->g_635
 */
uint32_t  func_24(int32_t * p_25, struct S0 * p_26, int64_t  p_27, int16_t  p_28, struct S2 * p_914)
{ /* block id: 189 */
    uint8_t l_566 = 0xA5L;
    int64_t *l_578 = (void*)0;
    int64_t *l_579[7] = {&p_914->g_91,(void*)0,&p_914->g_91,&p_914->g_91,(void*)0,&p_914->g_91,&p_914->g_91};
    int32_t l_580 = 1L;
    VECTOR(int64_t, 16) l_583 = (VECTOR(int64_t, 16))(0x72E9624121A998ACL, (VECTOR(int64_t, 4))(0x72E9624121A998ACL, (VECTOR(int64_t, 2))(0x72E9624121A998ACL, 1L), 1L), 1L, 0x72E9624121A998ACL, 1L, (VECTOR(int64_t, 2))(0x72E9624121A998ACL, 1L), (VECTOR(int64_t, 2))(0x72E9624121A998ACL, 1L), 0x72E9624121A998ACL, 1L, 0x72E9624121A998ACL, 1L);
    int64_t *l_584 = (void*)0;
    int64_t *l_585 = &p_914->g_586;
    int32_t l_628[8][8][4] = {{{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L}},{{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L}},{{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L}},{{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L}},{{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L}},{{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L}},{{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L}},{{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L},{0x79612A39L,(-8L),0L,0x22E583C8L}}};
    VECTOR(int32_t, 8) l_629 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
    int32_t *l_634 = (void*)0;
    int32_t **l_633 = &l_634;
    int32_t *l_637 = &p_914->g_3[0];
    int32_t **l_636 = &l_637;
    int i, j, k;
    for (p_914->g_92 = (-6); (p_914->g_92 > 40); p_914->g_92 = safe_add_func_int32_t_s_s(p_914->g_92, 1))
    { /* block id: 192 */
        return p_27;
    }
    if ((((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 2))(9UL, 1UL)), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(18446744073709551615UL, 0x15A0E9B8F66D046DL))))))).xxyx)).even, ((VECTOR(uint64_t, 16))(safe_clamp_func(VECTOR(uint64_t, 16),VECTOR(uint64_t, 16),((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),VECTOR(uint64_t, 2),((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(p_914->g_563.sf4d29c9fa64256a2)).even)), (uint64_t)(((safe_sub_func_uint16_t_u_u(l_566, (safe_sub_func_int64_t_s_s((safe_sub_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s(4L, 3)), (safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), ((safe_rshift_func_uint16_t_u_u(0x3E5DL, 15)) || (safe_unary_minus_func_int64_t_s((-1L)))))))), (GROUP_DIVERGE(2, 1) , (l_580 &= 0x3B6A1B2FE42E95CBL)))))) != (safe_add_func_int8_t_s_s(l_566, 0x01L))) && (((*l_585) &= ((VECTOR(int64_t, 2))(l_583.s6d)).odd) , (((safe_rshift_func_int8_t_s_u(((((VECTOR(uint16_t, 8))(((safe_add_func_uint64_t_u_u(p_914->g_69.s5, (((((safe_mul_func_uint8_t_u_u(1UL, 0x62L)) < l_580) , (void*)0) == (void*)0) >= p_28))) >= p_914->g_75[0].f2), 65532UL, ((VECTOR(uint16_t, 2))(3UL)), ((VECTOR(uint16_t, 4))(65535UL)))).s4 != p_914->g_3[2]) ^ 4294967295UL), 0)) || FAKE_DIVERGE(p_914->group_0_offset, get_group_id(0), 10)) & 1L)))))).s42, ((VECTOR(uint64_t, 2))(0xDDB5F81D65A9AD75L)), ((VECTOR(uint64_t, 2))(0xF1D50BC12726041DL))))).yyxyxyyyyyxxxxxx, ((VECTOR(uint64_t, 16))(4UL)), ((VECTOR(uint64_t, 16))(0xE0AEDA1F781BDC39L))))).sab, ((VECTOR(uint64_t, 2))(18446744073709551610UL))))).yxyy, ((VECTOR(uint64_t, 4))(18446744073709551608UL)), ((VECTOR(uint64_t, 4))(18446744073709551608UL))))).zxxywzyxywwxwywx)).sf || l_580))
    { /* block id: 197 */
        return p_27;
    }
    else
    { /* block id: 199 */
        int32_t *l_594 = &p_914->g_80;
        uint32_t **l_611 = (void*)0;
        uint32_t ***l_610 = &l_611;
        struct S1 *l_615 = &p_914->g_616;
        int32_t **l_617 = &l_594;
        uint16_t *l_621[10];
        uint16_t **l_620[2];
        int32_t *l_625 = (void*)0;
        int32_t *l_626 = &l_580;
        int32_t *l_627[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint8_t l_630 = 0xEDL;
        int i;
        for (i = 0; i < 10; i++)
            l_621[i] = (void*)0;
        for (i = 0; i < 2; i++)
            l_620[i] = &l_621[7];
        (*l_617) = func_33(p_27, (((((*l_594) = ((VECTOR(int32_t, 2))(p_914->g_593.s27)).lo) ^ ((safe_rshift_func_int16_t_s_s((p_27 == (safe_lshift_func_uint16_t_u_u((0x3FL > ((*p_914->g_446) = ((((safe_rshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (safe_add_func_int32_t_s_s(p_914->g_410.f0, (safe_lshift_func_uint16_t_u_s((safe_unary_minus_func_int32_t_s((safe_lshift_func_uint8_t_u_s(p_27, 2)))), p_27)))))), ((void*)0 == l_610))) , p_914->g_612[6][2]) == l_615) && 0x3026L))), p_914->g_413.y))), 4)) <= l_583.s3)) > 0xB5F009C2B9A66D08L) ^ 18446744073709551615UL), p_914->g_121, l_594, p_26, p_914);
        for (p_914->g_410.f2 = (-14); (p_914->g_410.f2 > 50); p_914->g_410.f2 = safe_add_func_int8_t_s_s(p_914->g_410.f2, 6))
        { /* block id: 205 */
            uint16_t ***l_622 = (void*)0;
            uint16_t ***l_623 = &l_620[1];
            struct S0 **l_624 = &p_914->g_121;
            (*l_594) = (p_914->g_211 ^= (*l_594));
            (*l_623) = l_620[0];
            (*l_624) = p_26;
        }
        --l_630;
    }
    (*l_636) = (p_914->g_635 = ((*l_633) = (void*)0));
    return p_27;
}


/* ------------------------------------------ */
/* 
 * reads : p_914->g_343.f2 p_914->g_452 p_914->g_459 p_914->g_227 p_914->g_446 p_914->g_75.f0 p_914->g_164 p_914->g_373.f0 p_914->g_343.f0 p_914->g_80 p_914->g_193 p_914->g_410.f2 p_914->g_437 p_914->g_76.f0 p_914->g_186 p_914->g_410.f0 p_914->g_122.f2 p_914->g_137
 * writes: p_914->g_78 p_914->g_233 p_914->g_373.f0 p_914->g_343.f0 p_914->g_80 p_914->g_115 p_914->g_410.f0 p_914->g_164 p_914->g_180.f9 p_914->g_211
 */
int32_t * func_29(int32_t * p_30, int32_t  p_31, int32_t * p_32, struct S2 * p_914)
{ /* block id: 138 */
    int8_t l_450 = 0x44L;
    int16_t *l_451 = &p_914->g_78[1];
    VECTOR(uint8_t, 4) l_463 = (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x4CL), 0x4CL);
    uint8_t l_468 = 5UL;
    uint32_t l_477[9][7][4] = {{{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL}},{{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL}},{{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL}},{{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL}},{{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL}},{{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL}},{{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL}},{{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL}},{{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL},{0x1FB2663AL,0xD3C6989DL,3UL,0x048A6CFAL}}};
    int32_t *l_480 = (void*)0;
    uint32_t l_488 = 0xD809C89AL;
    struct S0 *l_495 = &p_914->g_496;
    int64_t *l_504[1][1];
    int32_t l_508 = 0x1CB39B8EL;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_504[i][j] = (void*)0;
    }
    if (((safe_rshift_func_int16_t_s_u((!((*l_451) = l_450)), ((p_914->g_343.f2 < l_450) != ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(p_914->g_452.s6676)), 0x0EL, ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(1L, (-1L))), (safe_lshift_func_int8_t_s_s(((void*)0 != l_451), (safe_mod_func_uint16_t_u_u((((p_914->g_459 == (void*)0) || (((p_914->g_233.y = p_914->g_227.x) , (safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(l_463.yzyyyxxx)).s3, (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 2))(1L, 0x41B9L)).hi, (((safe_lshift_func_int16_t_s_s(l_468, 0)) ^ l_450) ^ l_468)))))) != (*p_914->g_446))) > (*p_914->g_446)), l_450)))), ((VECTOR(int8_t, 2))(0x7EL)), ((VECTOR(int8_t, 2))(5L)), 0x1BL)).s25, ((VECTOR(int8_t, 2))(0x01L))))).xxyx)).lo, ((VECTOR(int8_t, 2))(1L))))), 0x58L)).s4))) | p_914->g_164))
    { /* block id: 141 */
        int32_t l_473 = 0x423F6AA3L;
        int32_t l_476 = 0x68D2972BL;
        int32_t *l_483 = &p_914->g_80;
        VECTOR(int32_t, 2) l_497 = (VECTOR(int32_t, 2))(0x67D855E2L, 0x6F0DEB82L);
        int64_t *l_505 = &p_914->g_91;
        uint32_t *l_511 = &l_477[6][4][0];
        uint32_t *l_524[5];
        int i;
        for (i = 0; i < 5; i++)
            l_524[i] = (void*)0;
        for (p_914->g_373.f0 = 0; (p_914->g_373.f0 > 10); p_914->g_373.f0 = safe_add_func_uint16_t_u_u(p_914->g_373.f0, 6))
        { /* block id: 144 */
            uint8_t l_493 = 0x2FL;
            uint32_t **l_494 = &p_914->g_115[0];
            for (p_914->g_343.f0 = 0; (p_914->g_343.f0 == 10); p_914->g_343.f0 = safe_add_func_int8_t_s_s(p_914->g_343.f0, 3))
            { /* block id: 147 */
                int32_t *l_474 = (void*)0;
                int32_t *l_475[5][2][8] = {{{(void*)0,&p_914->g_3[2],&p_914->g_80,(void*)0,&p_914->g_3[2],(void*)0,&p_914->g_80,&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_80,(void*)0,&p_914->g_3[2],(void*)0,&p_914->g_80,&p_914->g_3[2]}},{{(void*)0,&p_914->g_3[2],&p_914->g_80,(void*)0,&p_914->g_3[2],(void*)0,&p_914->g_80,&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_80,(void*)0,&p_914->g_3[2],(void*)0,&p_914->g_80,&p_914->g_3[2]}},{{(void*)0,&p_914->g_3[2],&p_914->g_80,(void*)0,&p_914->g_3[2],(void*)0,&p_914->g_80,&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_80,(void*)0,&p_914->g_3[2],(void*)0,&p_914->g_80,&p_914->g_3[2]}},{{(void*)0,&p_914->g_3[2],&p_914->g_80,(void*)0,&p_914->g_3[2],(void*)0,&p_914->g_80,&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_80,(void*)0,&p_914->g_3[2],(void*)0,&p_914->g_80,&p_914->g_3[2]}},{{(void*)0,&p_914->g_3[2],&p_914->g_80,(void*)0,&p_914->g_3[2],(void*)0,&p_914->g_80,&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_80,(void*)0,&p_914->g_3[2],(void*)0,&p_914->g_80,&p_914->g_3[2]}}};
                int i, j, k;
                (*p_30) = (*p_30);
                (*p_30) = 1L;
                l_477[6][4][0]--;
            }
            l_480 = p_32;
            (*p_30) = (safe_add_func_uint16_t_u_u((l_483 != (void*)0), ((((safe_lshift_func_uint8_t_u_u((!(((((safe_lshift_func_uint8_t_u_u(0x63L, 6)) , ((l_488 <= ((VECTOR(int32_t, 8))((safe_add_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(l_493, 0x8F8A3137A539AE09L)), ((void*)0 != l_494))), ((l_493 || 0x80460F77A0A881B3L) , (-1L)), 1L, 1L, ((VECTOR(int32_t, 4))(1L)))).s1) , (void*)0)) != l_495) , p_914->g_193.x) >= (*l_483))), 6)) , 0x5B1F2067L) , p_914->g_410.f2) || 1UL)));
            l_508 = ((((*p_30) = ((VECTOR(int32_t, 8))((-1L), ((VECTOR(int32_t, 4))(l_497.yxxx)), ((safe_lshift_func_uint16_t_u_u(((safe_div_func_uint16_t_u_u(p_31, ((*l_451) = p_31))) & p_31), (*l_483))) >= (safe_rshift_func_uint16_t_u_s((((*l_483) , l_504[0][0]) != l_505), 1))), 0x3D31B911L, 0x15619501L)).s3) & (safe_mul_func_int8_t_s_s((p_914->g_437 != ((*l_494) = (void*)0)), FAKE_DIVERGE(p_914->global_0_offset, get_global_id(0), 10)))) , 1L);
        }
        (*p_30) = (safe_div_func_int16_t_s_s((((((*l_511) = GROUP_DIVERGE(1, 1)) > (safe_rshift_func_int8_t_s_u((*l_483), (safe_add_func_int32_t_s_s(0x4D0F8688L, (l_476 = (safe_mod_func_uint16_t_u_u((l_508 , ((p_31 <= ((safe_mul_func_int8_t_s_s(((*l_483) != ((((*l_483) || (safe_mod_func_uint32_t_u_u(p_31, (safe_sub_func_int32_t_s_s((((2UL & 0x965EF1511349E2B0L) >= p_31) < (*l_483)), 0x4441C859L))))) , GROUP_DIVERGE(0, 1)) > GROUP_DIVERGE(2, 1))), 4L)) | p_914->g_76[0][3].f0)) , p_914->g_186.s9)), 0xADADL)))))))) & p_31) >= 0L), (-5L)));
        (*p_30) = (*p_30);
    }
    else
    { /* block id: 163 */
        for (p_914->g_410.f0 = (-17); (p_914->g_410.f0 == (-13)); p_914->g_410.f0 = safe_add_func_int32_t_s_s(p_914->g_410.f0, 4))
        { /* block id: 166 */
            uint32_t **l_552 = (void*)0;
            int32_t l_557 = 0x7D89CC83L;
            int32_t l_560 = (-1L);
            for (p_914->g_164 = 0; (p_914->g_164 <= 48); p_914->g_164 = safe_add_func_int32_t_s_s(p_914->g_164, 9))
            { /* block id: 169 */
                int16_t l_529 = 6L;
                l_529 ^= (p_914->g_80 = p_914->g_410.f0);
                for (p_914->g_343.f0 = 27; (p_914->g_343.f0 <= (-26)); --p_914->g_343.f0)
                { /* block id: 174 */
                    uint32_t *l_542 = &l_477[8][0][1];
                    uint32_t ***l_553 = &l_552;
                    int32_t l_556 = 0x7A22DB10L;
                    uint64_t *l_558 = &p_914->g_180[0][1][5].f9;
                    uint32_t *l_559 = (void*)0;
                    (*p_30) = (safe_sub_func_uint16_t_u_u((safe_add_func_int32_t_s_s(((((((((safe_add_func_uint16_t_u_u(((safe_div_func_uint8_t_u_u(p_31, GROUP_DIVERGE(1, 1))) || l_529), p_914->g_122.f2)) == p_31) , 8UL) >= p_914->g_410.f0) != ((++(*l_542)) == ((l_560 &= (GROUP_DIVERGE(0, 1) , (safe_rshift_func_int16_t_s_u((safe_mul_func_int16_t_s_s(((*l_451) = (safe_rshift_func_int8_t_s_s(((!((safe_unary_minus_func_int64_t_s(0x5E262EC21A535033L)) >= (((*l_553) = l_552) != ((((*l_558) = (((safe_mod_func_uint16_t_u_u(0x4A57L, GROUP_DIVERGE(1, 1))) , l_556) < l_557)) , l_557) , &p_914->g_115[0])))) == (*p_914->g_446)), p_31))), p_31)), p_31)))) != p_914->g_75[0].f0))) == 65526UL) >= 1UL) != p_31), 0x357E4A7AL)), p_914->g_137.z));
                    return p_32;
                }
                p_914->g_211 = ((*p_30) = (*p_30));
            }
        }
    }
    return &p_914->g_6;
}


/* ------------------------------------------ */
/* 
 * reads : p_914->g_413 p_914->g_180.f9 p_914->g_211 p_914->g_80 p_914->g_191 p_914->g_75.f0 p_914->g_115 p_914->g_437 p_914->g_373.f2 p_914->g_180.f1 p_914->g_443
 * writes: p_914->g_180.f9 p_914->g_211 p_914->g_80 p_914->g_91 p_914->g_413 p_914->g_437 p_914->g_446 p_914->g_144 p_914->g_169
 */
int32_t * func_33(int32_t  p_34, uint64_t  p_35, struct S0 * p_36, int32_t * p_37, struct S0 * p_38, struct S2 * p_914)
{ /* block id: 124 */
    uint64_t *l_414[9][4] = {{(void*)0,&p_914->g_180[0][1][5].f9,(void*)0,(void*)0},{(void*)0,&p_914->g_180[0][1][5].f9,(void*)0,(void*)0},{(void*)0,&p_914->g_180[0][1][5].f9,(void*)0,(void*)0},{(void*)0,&p_914->g_180[0][1][5].f9,(void*)0,(void*)0},{(void*)0,&p_914->g_180[0][1][5].f9,(void*)0,(void*)0},{(void*)0,&p_914->g_180[0][1][5].f9,(void*)0,(void*)0},{(void*)0,&p_914->g_180[0][1][5].f9,(void*)0,(void*)0},{(void*)0,&p_914->g_180[0][1][5].f9,(void*)0,(void*)0},{(void*)0,&p_914->g_180[0][1][5].f9,(void*)0,(void*)0}};
    int32_t l_415[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    int32_t *l_418[5];
    int64_t *l_419 = (void*)0;
    int64_t *l_420 = &p_914->g_91;
    int64_t *l_421 = (void*)0;
    int64_t *l_422 = (void*)0;
    int64_t *l_423 = (void*)0;
    int64_t *l_424 = (void*)0;
    int64_t *l_425 = (void*)0;
    int64_t *l_426[2][1];
    uint64_t **l_432[5];
    uint64_t ***l_431 = &l_432[0];
    int32_t **l_438 = &p_914->g_437;
    uint32_t *l_439 = (void*)0;
    uint32_t *l_440[10][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint16_t l_441 = 1UL;
    uint32_t l_442 = 0UL;
    int8_t *l_444 = &p_914->g_75[0].f0;
    int8_t **l_445[6];
    int i, j;
    for (i = 0; i < 5; i++)
        l_418[i] = &l_415[4];
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_426[i][j] = (void*)0;
    }
    for (i = 0; i < 5; i++)
        l_432[i] = &l_414[6][1];
    for (i = 0; i < 6; i++)
        l_445[i] = &l_444;
    p_914->g_80 ^= (p_914->g_211 ^= (safe_add_func_int64_t_s_s(((VECTOR(int64_t, 2))(p_914->g_413.xx)).lo, (p_914->g_180[0][1][5].f9--))));
    p_914->g_211 = ((((p_914->g_191.y , p_914->g_75[0].f0) <= p_35) == (p_914->g_413.y = ((*l_420) = 0L))) ^ (l_442 ^= (safe_add_func_uint64_t_u_u(((((void*)0 == l_431) >= (l_441 = (!((safe_sub_func_int64_t_s_s((safe_mul_func_uint16_t_u_u((p_914->g_191.x , (GROUP_DIVERGE(2, 1) > (p_914->g_115[0] == ((*l_438) = p_914->g_437)))), p_914->g_373.f2)), 0UL)) | 0x3B92L)))) > p_914->g_180[0][1][5].f1), 0xB0C8675FD028CCEAL))));
    p_914->g_144.x = (p_914->g_443 != (p_914->g_446 = l_444));
    p_914->g_169 = (void*)0;
    return &p_914->g_80;
}


/* ------------------------------------------ */
/* 
 * reads : p_914->g_115 p_914->g_378 p_914->g_185 p_914->g_397 p_914->g_113 p_914->g_80 p_914->g_118.f2 p_914->g_398 p_914->g_192
 * writes: p_914->g_180.f9 p_914->g_80
 */
int32_t  func_39(uint8_t  p_40, uint32_t  p_41, int32_t * p_42, int32_t  p_43, int32_t  p_44, struct S2 * p_914)
{ /* block id: 116 */
    VECTOR(uint64_t, 8) l_370 = (VECTOR(uint64_t, 8))(0xA799656BD4BF2005L, (VECTOR(uint64_t, 4))(0xA799656BD4BF2005L, (VECTOR(uint64_t, 2))(0xA799656BD4BF2005L, 0UL), 0UL), 0UL, 0xA799656BD4BF2005L, 0UL);
    uint64_t *l_371 = &p_914->g_180[0][1][5].f9;
    struct S0 *l_372 = &p_914->g_373;
    uint32_t *l_376 = (void*)0;
    int32_t l_377[6] = {0L,0x57A3EF62L,0L,0L,0x57A3EF62L,0L};
    int32_t l_381 = 3L;
    int32_t *l_382 = &l_377[1];
    int32_t **l_383 = &l_382;
    VECTOR(int8_t, 4) l_392 = (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 0x12L), 0x12L);
    int16_t *l_400 = (void*)0;
    int16_t *l_401[10][5][5] = {{{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0}},{{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0}},{{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0}},{{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0}},{{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0}},{{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0}},{{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0}},{{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0}},{{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0}},{{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0},{&p_914->g_78[0],(void*)0,(void*)0,&p_914->g_78[0],(void*)0}}};
    VECTOR(int16_t, 8) l_402 = (VECTOR(int16_t, 8))((-10L), (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 0x2C5AL), 0x2C5AL), 0x2C5AL, (-10L), 0x2C5AL);
    VECTOR(int16_t, 2) l_403 = (VECTOR(int16_t, 2))(0x24A6L, 0x506CL);
    int16_t l_408 = 9L;
    int i, j, k;
    l_382 = (((((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(l_370.s2653)), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),VECTOR(uint32_t, 2),((VECTOR(uint32_t, 2))(9UL, 0xA0F46BCDL)), ((VECTOR(uint32_t, 4))((((*l_371) = l_370.s2) > ((void*)0 != l_372)), ((((safe_add_func_int32_t_s_s((p_914->g_115[0] != l_376), l_377[1])) | ((VECTOR(uint8_t, 16))(p_914->g_378.xyxwxxwyywwxyyww)).s2) && (((p_41 && (((safe_mod_func_int64_t_s_s(p_41, ((l_381 , 1L) || (-3L)))) & l_370.s7) ^ (-1L))) >= p_914->g_185.s4) , 4294967288UL)) && 2L), 4294967295UL, 9UL)).odd, ((VECTOR(uint32_t, 2))(0xC1F96761L))))), ((VECTOR(uint32_t, 2))(4294967295UL))))), 0x82244F225368335AL, 9UL)), 0x0B8752B9E8D76CCAL, ((VECTOR(uint64_t, 4))(18446744073709551615UL)), ((VECTOR(uint64_t, 2))(18446744073709551607UL)), 18446744073709551615UL)).se | 0x22D44E611C89E5F5L) , p_40) , &p_43);
    (*l_383) = &p_43;
    (*p_42) = ((safe_rshift_func_uint16_t_u_s((safe_sub_func_uint32_t_u_u(((safe_sub_func_uint32_t_u_u((safe_sub_func_int8_t_s_s((((VECTOR(int8_t, 8))(l_392.zwwwyxxx)).s2 && (safe_rshift_func_uint16_t_u_u(((safe_add_func_int32_t_s_s((p_914->g_397 == (((((**l_383) = ((**l_383) != 251UL)) >= ((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_402.s6360403662711744)).sb2)), 0x27EDL, 1L, ((VECTOR(int16_t, 4))(l_403.yyxx)))), (int16_t)p_914->g_113))).s1, 0x4422L, ((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 16))(0x018CL, 0x415EL, 0x2553L, ((safe_rshift_func_int8_t_s_u(0x45L, (safe_sub_func_int32_t_s_s((*p_42), p_914->g_118[1].f2)))) ^ ((void*)0 != (*p_914->g_397))), 0x15F5L, ((VECTOR(int16_t, 4))(5L)), ((VECTOR(int16_t, 4))((-1L))), (-7L), (-3L), (-1L))).s6d, ((VECTOR(int16_t, 2))(4L))))), 0x4016L, 0x2DF1L, 0x0052L, ((VECTOR(int16_t, 4))((-1L))), p_41, 1L, ((VECTOR(int16_t, 2))(3L)), 0L)).sd1)).yyxx, ((VECTOR(int16_t, 4))(0x7D9FL))))).z) & l_381) , (void*)0)), l_408)) | 0x1AD34F684ADCEB38L), 1))), p_44)), 4294967286UL)) > 1L), p_44)), 8)) <= p_914->g_192.sc);
    return p_43;
}


/* ------------------------------------------ */
/* 
 * reads : p_914->g_69 p_914->g_92 p_914->g_9.f2 p_914->g_53 p_914->g_3 p_914->g_9.f0 p_914->g_80 p_914->g_100 p_914->g_110 p_914->g_113 p_914->g_121 p_914->g_115 p_914->g_46 p_914->g_137 p_914->g_144 p_914->g_75.f2 p_914->g_91 p_914->g_119.f0 p_914->g_185 p_914->g_186 p_914->g_191 p_914->g_192 p_914->g_193 p_914->g_180.f9 p_914->g_122.f2 p_914->g_117.f0 p_914->g_214 p_914->g_227 p_914->g_232 p_914->g_233 p_914->g_118.f0 p_914->g_164 p_914->g_122.f0 p_914->g_169 p_914->g_119.f2 p_914->g_339 p_914->g_118.f2 p_914->g_117.f2
 * writes: p_914->g_92 p_914->g_69 p_914->g_113 p_914->g_115 p_914->g_164 p_914->g_169 p_914->g_144 p_914->g_180.f9 p_914->g_211 p_914->g_100 p_914->g_78 p_914->g_122.f2 p_914->g_122.f0
 */
int32_t * func_47(uint32_t  p_48, struct S2 * p_914)
{ /* block id: 17 */
    int32_t l_58 = 1L;
    int32_t *l_73 = (void*)0;
    struct S0 *l_74[10] = {&p_914->g_75[0],&p_914->g_75[0],&p_914->g_75[0],&p_914->g_75[0],&p_914->g_75[0],&p_914->g_75[0],&p_914->g_75[0],&p_914->g_75[0],&p_914->g_75[0],&p_914->g_75[0]};
    int32_t *l_95 = &p_914->g_3[0];
    uint32_t l_96 = 9UL;
    int64_t l_97 = 0L;
    int32_t **l_361 = &l_95;
    int i;
    (*l_361) = func_55((l_58 , (+((-1L) >= (safe_mod_func_int16_t_s_s((safe_div_func_int32_t_s_s((safe_lshift_func_uint8_t_u_u((l_58 < ((((VECTOR(uint32_t, 2))(0xCFE74D02L, 1UL)).even , (((safe_sub_func_uint16_t_u_u((((18446744073709551615UL != (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(p_914->g_69.s5521)))).x, func_70(l_73, l_74[3], p_914)))) == (((!((l_96 = (((void*)0 != l_95) != p_914->g_53.sb)) && p_48)) , (-1L)) <= p_914->g_69.s3)) && l_97), (-7L))) , (void*)0) != (void*)0)) || 4294967295UL)), (*l_95))), 0xD7427E88L)), p_914->g_9.f0))))), p_914->g_80, p_914);
    return &p_914->g_80;
}


/* ------------------------------------------ */
/* 
 * reads : p_914->g_53 p_914->g_100 p_914->g_80 p_914->g_69 p_914->g_92 p_914->g_110 p_914->g_113 p_914->g_121 p_914->g_115 p_914->g_46 p_914->g_137 p_914->g_144 p_914->g_75.f2 p_914->g_91 p_914->g_119.f0 p_914->g_185 p_914->g_186 p_914->g_191 p_914->g_192 p_914->g_193 p_914->g_180.f9 p_914->g_122.f2 p_914->g_117.f0 p_914->g_214 p_914->g_227 p_914->g_232 p_914->g_233 p_914->g_3 p_914->g_118.f0 p_914->g_164 p_914->g_122.f0 p_914->g_9.f2 p_914->g_169 p_914->g_119.f2 p_914->g_339 p_914->g_118.f2 p_914->g_117.f2
 * writes: p_914->g_69 p_914->g_92 p_914->g_113 p_914->g_115 p_914->g_164 p_914->g_169 p_914->g_144 p_914->g_180.f9 p_914->g_211 p_914->g_100 p_914->g_78 p_914->g_122.f2 p_914->g_122.f0
 */
int32_t * func_55(int16_t  p_56, uint8_t  p_57, struct S2 * p_914)
{ /* block id: 23 */
    VECTOR(int16_t, 16) l_98 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x2E86L), 0x2E86L), 0x2E86L, 1L, 0x2E86L, (VECTOR(int16_t, 2))(1L, 0x2E86L), (VECTOR(int16_t, 2))(1L, 0x2E86L), 1L, 0x2E86L, 1L, 0x2E86L);
    VECTOR(int16_t, 2) l_99 = (VECTOR(int16_t, 2))(0L, (-1L));
    VECTOR(int16_t, 2) l_101 = (VECTOR(int16_t, 2))(1L, 0x7B5AL);
    VECTOR(int16_t, 16) l_102 = (VECTOR(int16_t, 16))(0x1B6CL, (VECTOR(int16_t, 4))(0x1B6CL, (VECTOR(int16_t, 2))(0x1B6CL, 0x0314L), 0x0314L), 0x0314L, 0x1B6CL, 0x0314L, (VECTOR(int16_t, 2))(0x1B6CL, 0x0314L), (VECTOR(int16_t, 2))(0x1B6CL, 0x0314L), 0x1B6CL, 0x0314L, 0x1B6CL, 0x0314L);
    VECTOR(uint64_t, 8) l_103 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL);
    uint32_t *l_104 = (void*)0;
    uint32_t *l_105[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t *l_106 = &p_914->g_92;
    VECTOR(uint8_t, 2) l_109 = (VECTOR(uint8_t, 2))(0xC5L, 0xACL);
    VECTOR(uint8_t, 16) l_111 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xAEL), 0xAEL), 0xAEL, 255UL, 0xAEL, (VECTOR(uint8_t, 2))(255UL, 0xAEL), (VECTOR(uint8_t, 2))(255UL, 0xAEL), 255UL, 0xAEL, 255UL, 0xAEL);
    uint8_t *l_112 = &p_914->g_113;
    uint32_t *l_114 = (void*)0;
    struct S0 *l_116[8][4] = {{&p_914->g_118[1],&p_914->g_119,&p_914->g_118[1],&p_914->g_118[1]},{&p_914->g_118[1],&p_914->g_119,&p_914->g_118[1],&p_914->g_118[1]},{&p_914->g_118[1],&p_914->g_119,&p_914->g_118[1],&p_914->g_118[1]},{&p_914->g_118[1],&p_914->g_119,&p_914->g_118[1],&p_914->g_118[1]},{&p_914->g_118[1],&p_914->g_119,&p_914->g_118[1],&p_914->g_118[1]},{&p_914->g_118[1],&p_914->g_119,&p_914->g_118[1],&p_914->g_118[1]},{&p_914->g_118[1],&p_914->g_119,&p_914->g_118[1],&p_914->g_118[1]},{&p_914->g_118[1],&p_914->g_119,&p_914->g_118[1],&p_914->g_118[1]}};
    struct S0 **l_120 = &l_116[2][1];
    int32_t l_123 = 0x244DB36FL;
    int32_t l_124 = 7L;
    VECTOR(int16_t, 4) l_127 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x2BFBL), 0x2BFBL);
    VECTOR(int8_t, 8) l_136 = (VECTOR(int8_t, 8))((-10L), (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), 0x0FL), 0x0FL), 0x0FL, (-10L), 0x0FL);
    VECTOR(uint16_t, 4) l_153 = (VECTOR(uint16_t, 4))(0x33E0L, (VECTOR(uint16_t, 2))(0x33E0L, 0x2929L), 0x2929L);
    VECTOR(int8_t, 16) l_156 = (VECTOR(int8_t, 16))(8L, (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 0x01L), 0x01L), 0x01L, 8L, 0x01L, (VECTOR(int8_t, 2))(8L, 0x01L), (VECTOR(int8_t, 2))(8L, 0x01L), 8L, 0x01L, 8L, 0x01L);
    VECTOR(uint64_t, 16) l_157 = (VECTOR(uint64_t, 16))(18446744073709551608UL, (VECTOR(uint64_t, 4))(18446744073709551608UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 4UL), 4UL), 4UL, 18446744073709551608UL, 4UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 4UL), (VECTOR(uint64_t, 2))(18446744073709551608UL, 4UL), 18446744073709551608UL, 4UL, 18446744073709551608UL, 4UL);
    uint32_t l_257 = 0x1BBCE7E7L;
    int32_t l_261 = 0x4112D747L;
    int32_t l_263 = (-1L);
    int32_t l_264 = (-9L);
    int32_t l_266 = 0x73E98AA1L;
    int32_t l_267 = (-1L);
    uint64_t l_269[7] = {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL};
    VECTOR(int32_t, 2) l_277 = (VECTOR(int32_t, 2))(0x52346786L, (-8L));
    int16_t *l_296[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(uint64_t, 4) l_315 = (VECTOR(uint64_t, 4))(18446744073709551614UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 18446744073709551612UL), 18446744073709551612UL);
    uint16_t l_354 = 0xCE8FL;
    uint64_t *l_358 = &l_269[4];
    uint64_t **l_357 = &l_358;
    int i, j;
lbl_360:
    l_124 = ((l_123 = (((p_914->g_53.sc != ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(int16_t, 8))(l_98.s0ee8d33e)), ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(l_99.xxxx)).wyyxxwwxxxzyzxxx)).odd, ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 8))(p_914->g_100.s0787b121)).s04, ((VECTOR(int16_t, 8))(l_101.xyxxxyyx)).s44, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_102.s0a)))), 1L, 0L)).even))).yxxyyxyy))).s6432342561350654)).even))))).s0353762662661722)).se) , ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(l_103.s2363631035474603)).sc3)).yyxyxxyx, (uint64_t)p_914->g_80))).s0240537775200742)))).s5) , ((((*l_112) &= ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((*l_106) ^= ((p_914->g_69.s6 ^= p_56) >= l_98.sb)), (safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(l_109.xxyyxxyy)).s53)).xxyy, ((VECTOR(uint8_t, 2))(p_914->g_110.yy)).yyyy))).w, l_98.s4)), 0UL, 1UL)))).hi, ((VECTOR(uint8_t, 4))(l_111.sd2a5)).lo))).yxxx)).x) || ((l_114 == (p_914->g_115[0] = (void*)0)) & 0x5DL)) ^ (((*l_120) = l_116[0][3]) != p_914->g_121)))) <= p_57);
    if ((((l_102.s8 <= (safe_mul_func_uint8_t_u_u(((void*)0 != p_914->g_115[0]), (((VECTOR(int32_t, 2))(0x2E247ED1L, 1L)).hi ^ l_123)))) , p_56) | (&p_914->g_121 == ((((VECTOR(int16_t, 4))(l_127.zxxy)).y >= ((-10L) > p_914->g_80)) , &p_914->g_121))))
    { /* block id: 31 */
        VECTOR(int8_t, 8) l_138 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 8L), 8L), 8L, 1L, 8L);
        VECTOR(int8_t, 8) l_139 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
        VECTOR(uint32_t, 16) l_158 = (VECTOR(uint32_t, 16))(4294967286UL, (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 4294967294UL), 4294967294UL), 4294967294UL, 4294967286UL, 4294967294UL, (VECTOR(uint32_t, 2))(4294967286UL, 4294967294UL), (VECTOR(uint32_t, 2))(4294967286UL, 4294967294UL), 4294967286UL, 4294967294UL, 4294967286UL, 4294967294UL);
        uint16_t *l_163 = &p_914->g_164;
        int8_t *l_167[4];
        int32_t l_168[9][7][2] = {{{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L}},{{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L}},{{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L}},{{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L}},{{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L}},{{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L}},{{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L}},{{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L}},{{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L},{0x6D334360L,0x28462778L}}};
        struct S1 *l_179 = &p_914->g_180[0][1][5];
        VECTOR(int16_t, 4) l_190 = (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 2L), 2L);
        VECTOR(uint16_t, 4) l_230 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL);
        uint32_t l_244 = 3UL;
        int64_t l_268 = 8L;
        struct S1 **l_306 = &l_179;
        int32_t *l_326 = &l_267;
        int32_t **l_325 = &l_326;
        struct S0 *l_342 = &p_914->g_343;
        int32_t *l_344 = &l_266;
        int32_t *l_345 = &l_124;
        int32_t *l_346 = &l_168[7][0][1];
        int32_t *l_347 = &p_914->g_180[0][1][5].f6;
        int32_t *l_348 = &l_168[6][1][0];
        int32_t *l_349 = (void*)0;
        int32_t *l_350 = &l_168[6][1][0];
        int32_t *l_351 = (void*)0;
        int32_t *l_352 = &p_914->g_180[0][1][5].f6;
        int32_t *l_353[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
        uint64_t ***l_359 = &l_357;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_167[i] = &p_914->g_119.f0;
        if (((safe_sub_func_uint8_t_u_u((safe_add_func_uint16_t_u_u(p_914->g_46.s4, ((((((VECTOR(int64_t, 8))(0x393FF6A6F7F2E4BEL, ((VECTOR(int64_t, 4))(8L, (-6L), 5L, 0L)), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 16))((GROUP_DIVERGE(1, 1) || ((2UL && (l_168[6][1][0] = (((safe_sub_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((((l_124 = ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 16))(0x3CL, p_914->g_69.s2, ((VECTOR(int8_t, 8))(l_136.s52032101)), ((VECTOR(int8_t, 2))(p_914->g_137.xz)), (-2L), ((VECTOR(int8_t, 2))((-1L), 0L)), 0L)).s6428, ((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 16))((-1L), (-7L), (-4L), 0x64L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 2))(3L, 0x0FL)), ((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_138.s53036265)))).even, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_139.s74)).yxyyxxxx)))).odd, ((VECTOR(int8_t, 4))(((safe_sub_func_int64_t_s_s((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 8))(0x2DC50922L, ((VECTOR(int32_t, 4))(p_914->g_144.yzxx)), (safe_mul_func_int16_t_s_s((safe_div_func_uint32_t_u_u(((safe_div_func_int16_t_s_s((safe_div_func_int16_t_s_s(((VECTOR(int16_t, 2))(0L, 0x7605L)).lo, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(l_153.zwwxywzwxyxywxwz)).odd)).s3)), l_139.s2)) != l_127.x), (safe_div_func_uint16_t_u_u((((VECTOR(int8_t, 16))(l_156.sc63e1a4289dd2a3b)).s7 , (((VECTOR(uint64_t, 4))(l_157.s34b8)).z ^ (((VECTOR(uint32_t, 8))(l_158.s3610a6f7)).s5 , (safe_sub_func_uint16_t_u_u(((*l_163) = (safe_lshift_func_uint8_t_u_s(0x56L, p_56))), (safe_lshift_func_uint16_t_u_u(p_914->g_69.s0, 1))))))), p_56)))), l_111.s6)), 4L, 0x59E35A50L)).s5, FAKE_DIVERGE(p_914->group_0_offset, get_group_id(0), 10))), 0x6E829FB855981DF6L)) == 9L), 4L, 1L, 0x4BL))))).even))))).hi, 1L, ((VECTOR(int8_t, 2))((-1L))), 0x3BL, ((VECTOR(int8_t, 2))((-4L))), p_914->g_75[0].f2, 0x5DL, p_57, 0x18L, 0L)).hi, ((VECTOR(int8_t, 8))((-5L)))))).even))).z) > p_914->g_137.w) && l_136.s7), l_153.x)), l_111.s5)) < GROUP_DIVERGE(1, 1)) <= p_914->g_53.se))) || 65535UL)), l_158.s2, 0x667F5B4925EA1032L, ((VECTOR(int64_t, 4))((-1L))), (-8L), p_57, ((VECTOR(int64_t, 4))((-5L))), 0x6848DC6E2A525CEAL, (-5L), 0x048F8E37A3864E8FL)).lo, ((VECTOR(int64_t, 8))(0x3D8C083AD0E80A90L))))).s3, 0x4E509765A480C905L, 0x64CF668605452BFEL, ((VECTOR(int64_t, 4))(0x5DC259C397170A34L)), 0x5C3AA3BE4C5A7F0FL)).s41)), 0L)).s5 < p_56) > 65528UL) < l_158.s0) || p_56))), 0x29L)) , l_136.s4))
        { /* block id: 35 */
            int32_t **l_171 = (void*)0;
            int32_t *l_173 = &l_124;
            int32_t **l_172 = &l_173;
            int32_t *l_174[6];
            VECTOR(int16_t, 16) l_189 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x4F5CL), 0x4F5CL), 0x4F5CL, (-1L), 0x4F5CL, (VECTOR(int16_t, 2))((-1L), 0x4F5CL), (VECTOR(int16_t, 2))((-1L), 0x4F5CL), (-1L), 0x4F5CL, (-1L), 0x4F5CL);
            int16_t l_209 = 0x43BCL;
            int i;
            for (i = 0; i < 6; i++)
                l_174[i] = &l_123;
            p_914->g_169 = (void*)0;
            (*l_172) = (void*)0;
            p_914->g_144.w = p_56;
            if (p_914->g_91)
            { /* block id: 39 */
                uint32_t l_175[2][9] = {{0xD2EC1910L,0xD2EC1910L,0xD2EC1910L,0xD2EC1910L,0xD2EC1910L,0xD2EC1910L,0xD2EC1910L,0xD2EC1910L,0xD2EC1910L},{0xD2EC1910L,0xD2EC1910L,0xD2EC1910L,0xD2EC1910L,0xD2EC1910L,0xD2EC1910L,0xD2EC1910L,0xD2EC1910L,0xD2EC1910L}};
                int32_t l_178 = (-10L);
                struct S1 **l_181 = &l_179;
                int32_t **l_182 = &l_174[1];
                VECTOR(uint16_t, 16) l_231 = (VECTOR(uint16_t, 16))(0x8F53L, (VECTOR(uint16_t, 4))(0x8F53L, (VECTOR(uint16_t, 2))(0x8F53L, 0x5ECBL), 0x5ECBL), 0x5ECBL, 0x8F53L, 0x5ECBL, (VECTOR(uint16_t, 2))(0x8F53L, 0x5ECBL), (VECTOR(uint16_t, 2))(0x8F53L, 0x5ECBL), 0x8F53L, 0x5ECBL, 0x8F53L, 0x5ECBL);
                struct S0 **l_243 = &p_914->g_121;
                int32_t l_250 = 0L;
                VECTOR(int32_t, 16) l_251 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-3L)), (-3L)), (-3L), 1L, (-3L), (VECTOR(int32_t, 2))(1L, (-3L)), (VECTOR(int32_t, 2))(1L, (-3L)), 1L, (-3L), 1L, (-3L));
                int64_t l_265[2];
                int i, j;
                for (i = 0; i < 2; i++)
                    l_265[i] = 0x19D9DADBE6AA72EEL;
                --l_175[1][4];
                (*l_181) = ((l_178 &= p_914->g_119.f0) , l_179);
                if (((void*)0 != l_182))
                { /* block id: 43 */
                    int8_t l_206 = 0x22L;
                    uint64_t *l_207 = (void*)0;
                    uint64_t *l_208[5][4];
                    int16_t l_210[8][5] = {{(-4L),0x6E83L,0x3C1AL,1L,0x3C1AL},{(-4L),0x6E83L,0x3C1AL,1L,0x3C1AL},{(-4L),0x6E83L,0x3C1AL,1L,0x3C1AL},{(-4L),0x6E83L,0x3C1AL,1L,0x3C1AL},{(-4L),0x6E83L,0x3C1AL,1L,0x3C1AL},{(-4L),0x6E83L,0x3C1AL,1L,0x3C1AL},{(-4L),0x6E83L,0x3C1AL,1L,0x3C1AL},{(-4L),0x6E83L,0x3C1AL,1L,0x3C1AL}};
                    int16_t *l_212 = (void*)0;
                    VECTOR(uint16_t, 4) l_235 = (VECTOR(uint16_t, 4))(2UL, (VECTOR(uint16_t, 2))(2UL, 1UL), 1UL);
                    int8_t l_245 = 1L;
                    int32_t l_247 = 0x6CA4F2E7L;
                    int32_t l_256 = 0x4F7B3AA6L;
                    int i, j;
                    for (i = 0; i < 5; i++)
                    {
                        for (j = 0; j < 4; j++)
                            l_208[i][j] = (void*)0;
                    }
                    (*l_172) = (void*)0;
                    (**l_182) = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x7168CD2FL, 1L)).yxxxyxyyxyyyyyxy)))).s2;
                    if (((p_914->g_110.y < (safe_div_func_int16_t_s_s((65535UL <= ((p_914->g_100.sd = (6UL | (l_139.s7 | ((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_914->g_185.s16)), 0x70L, 0x61L)).zzxwxzyw, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 8))(p_914->g_186.s2cfd8280)).s5754010460442110, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(0x11L, 0xD1L)))), 0x9DL, 0x19L)), ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 8))(((0x2FA024A1485916AAL ^ (p_914->g_211 = ((safe_rshift_func_int8_t_s_s((((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_189.sd614)), ((VECTOR(int16_t, 2))(l_190.yx)), (-8L), 1L)).s2275635666744524, ((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 2))(p_914->g_191.xy)).yyxy, ((VECTOR(int16_t, 8))(0x0D92L, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 2))(0x077CL, (-3L))), ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(0L, ((VECTOR(int16_t, 2))((-2L), 9L)), 0x527BL)).even, (int16_t)l_190.w)))))))), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(p_914->g_192.s13)).xyyxyxxxxxyyyyxx)).s05e8)), 0x5BE2L)).lo))).odd)))))).xyyyyyxyyyyxxyxy)))).s4f, ((VECTOR(int16_t, 16))(p_914->g_193.xyxxxyxxyxxyyxyx)).s4a))).xyxyxyyyyxxxxyyy))).s6 | (safe_rshift_func_int16_t_s_u((((safe_add_func_uint64_t_u_u(FAKE_DIVERGE(p_914->local_2_offset, get_local_id(2), 10), ((p_56 &= (safe_rshift_func_int8_t_s_u((((((-1L) == (safe_add_func_uint16_t_u_u(((FAKE_DIVERGE(p_914->group_1_offset, get_group_id(1), 10) > (p_914->g_180[0][1][5].f9 &= (safe_mul_func_int8_t_s_s(p_57, (safe_div_func_int32_t_s_s((l_206 ^ l_190.w), p_57)))))) != (**l_182)), l_209))) == p_914->g_122.f2) | 7UL) & l_210[4][4]), p_57))) ^ 65529UL))) >= 0UL) , p_57), 15))), 7)) , 0xE8EA88972A5828DFL))) , (-1L)), (-3L), ((VECTOR(int8_t, 4))(0x60L)), 0x52L, 0x5BL)).s25, ((VECTOR(int8_t, 2))(0L))))).xyyyyyyyyyxyxyxy)).sc794))).wxzyxyzw)))).s6553106207670760, ((VECTOR(uint8_t, 16))(0x21L))))).se223)).zzzyxwxw))).s6))) && p_914->g_117[2][2][1].f0)), p_57))) != p_57))
                    { /* block id: 50 */
                        VECTOR(uint16_t, 4) l_234 = (VECTOR(uint16_t, 4))(0x6C1BL, (VECTOR(uint16_t, 2))(0x6C1BL, 5UL), 5UL);
                        struct S0 **l_242 = &l_116[0][3];
                        int32_t l_246 = 1L;
                        int i;
                        l_247 = (safe_unary_minus_func_int16_t_s(((((0x61428B240CD41C99L | ((VECTOR(int64_t, 8))(p_914->g_214.yxxxyxyx)).s0) , (safe_rshift_func_uint8_t_u_s(l_210[4][4], (0x30258029L >= (l_123 = (((safe_add_func_uint32_t_u_u((~(l_246 &= (safe_add_func_uint64_t_u_u((0x1E2DCA83L <= (safe_mod_func_uint32_t_u_u((safe_div_func_uint8_t_u_u((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((!0x5BC3FD21L) ^ (((safe_add_func_int32_t_s_s(((p_914->g_75[0].f2 , ((VECTOR(int16_t, 4))(p_914->g_227.xyyy)).x) < (FAKE_DIVERGE(p_914->local_2_offset, get_local_id(2), 10) >= p_914->g_69.s7)), (p_914->g_75[0].f2 == (safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(9UL, 0UL, ((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 4))(l_230.wxzw)).wzxwzzxy, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_231.s83)))).yyyxxyxy))), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 8))(p_914->g_232.zzwzyzxx)).s7002074040620660, ((VECTOR(uint16_t, 8))(p_914->g_233.yyxwxwww)).s4517531464752223))).odd, ((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(l_234.xxzzxzzyzwxxzwxx)).hi)).s5223622744744421)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 4))(l_235.ywyw)), ((VECTOR(uint16_t, 4))(65535UL, ((((safe_add_func_uint32_t_u_u(((safe_mul_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s(((**l_182) >= 0x53L), p_914->g_53.sc)), p_57)) , 0x94CD77A0L), p_56)) > p_57) , l_242) == l_243), 0xCE8EL, 65527UL))))).odd)), 65532UL, 1UL)).wwxzxwwzxxwzzzyx))).lo))).even)), 1UL, 0UL)).s7, l_111.s5))))) , (void*)0) == l_167[3])), ((VECTOR(int64_t, 4))(0x758F1523639F2C87L)), p_914->g_110.x, (**l_182), (-1L), (**l_182), 1L, p_56, 0x7FDF4EE6EE54F2F0L, ((VECTOR(int64_t, 4))(0x36B28D34F5B111E0L)))).sd6)).xyyx)).hi)), p_57, 0L, (**l_182), ((VECTOR(int64_t, 2))((-1L))), l_244, p_914->g_3[2], ((VECTOR(int64_t, 2))(0x724E54BFEFC73CEEL)), ((VECTOR(int64_t, 4))(1L)), 0x5D3DF3510C8457E0L)).s2 , 2UL), p_57)), l_245))), p_56)))), (-2L))) , GROUP_DIVERGE(1, 1)) , FAKE_DIVERGE(p_914->global_1_offset, get_global_id(1), 10))))))) == GROUP_DIVERGE(0, 1)) && l_230.y)));
                    }
                    else
                    { /* block id: 54 */
                        return &p_914->g_80;
                    }
                    for (l_206 = 0; (l_206 >= (-18)); l_206--)
                    { /* block id: 59 */
                        uint64_t l_252 = 0UL;
                        VECTOR(int32_t, 4) l_255 = (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 1L), 1L);
                        int i;
                        ++l_252;
                        ++l_257;
                    }
                }
                else
                { /* block id: 63 */
                    int16_t l_260 = 0x1F35L;
                    int32_t l_262[8] = {0x328C3567L,0x328C3567L,0x328C3567L,0x328C3567L,0x328C3567L,0x328C3567L,0x328C3567L,0x328C3567L};
                    int i;
                    l_269[6]++;
                }
            }
            else
            { /* block id: 66 */
                return &p_914->g_6;
            }
        }
        else
        { /* block id: 69 */
            VECTOR(int32_t, 16) l_276 = (VECTOR(int32_t, 16))(0x22BF89ACL, (VECTOR(int32_t, 4))(0x22BF89ACL, (VECTOR(int32_t, 2))(0x22BF89ACL, 6L), 6L), 6L, 0x22BF89ACL, 6L, (VECTOR(int32_t, 2))(0x22BF89ACL, 6L), (VECTOR(int32_t, 2))(0x22BF89ACL, 6L), 0x22BF89ACL, 6L, 0x22BF89ACL, 6L);
            int16_t *l_286 = (void*)0;
            int16_t *l_287 = &p_914->g_78[1];
            int32_t *l_288 = &l_124;
            int32_t *l_289 = &l_264;
            struct S1 **l_305 = &l_179;
            int i;
            (*l_289) = (((safe_sub_func_int64_t_s_s(0x2E75CA7B0420B984L, ((p_914->g_122.f2 &= ((((((((p_914->g_118[1].f0 , ((void*)0 != &p_914->g_169)) == (((*l_288) = ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(l_276.s1cdb)).zxzyxyxyyzyzywxz, ((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(7L, (-3L))).yyyxxxxx, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_277.yyyyxxyxyxxxxxyx)).lo)).s12)), 0x76F8B31BL, 0x4ED61521L)).yyzxyyyw)).s55)).yxxyyyyx))).s1563306430571604, ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 16))((p_56 , (safe_mod_func_int16_t_s_s(((*l_287) = (safe_add_func_uint64_t_u_u(((((*l_163)++) & ((safe_mod_func_uint16_t_u_u(p_914->g_144.w, p_56)) < p_57)) <= ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0x08B05C5E7CFC8E23L, 0x650F9D88742B6D26L)), 1L, ((VECTOR(int64_t, 4))(1L, ((0x4B9FL | p_914->g_227.y) < 18446744073709551608UL), (-5L), 0x09A18B914C5DABB0L)).x, 0x1981376CFE3939D3L, ((VECTOR(int64_t, 2))(9L)), 0x5EDC669B84B6786FL)).s3), p_914->g_214.y))), p_56))), 0x754F43DAL, ((VECTOR(int32_t, 4))(0x4E8F9D4DL)), l_103.s1, 1L, ((VECTOR(int32_t, 8))(0x7C7A67DBL)))).s92, ((VECTOR(int32_t, 2))(3L))))).xxxyxyyyxyxyyxyx))).s6) < p_56)) >= 0x32L) ^ 0xBC197952L) != p_57) == p_914->g_122.f0) , 0xE9CDL) >= 0UL)) , p_57))) ^ p_57) ^ p_56);
            if (l_123)
                goto lbl_290;
lbl_290:
            (*l_288) = (p_914->g_9.f2 , 0x2EE65999L);
            for (l_244 = 0; (l_244 == 36); l_244 = safe_add_func_int16_t_s_s(l_244, 2))
            { /* block id: 79 */
                int16_t *l_297 = (void*)0;
                int32_t **l_298 = &l_289;
                if (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))((-9L), 0x3F345ED3L, 1L, (safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 8))(7L, ((((p_57 <= GROUP_DIVERGE(1, 1)) == ((((((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 16))(p_914->g_295.scc21d054e24fb3ae)).s41, ((VECTOR(int64_t, 2))(0x13D62D1CF9E49D2CL, 7L))))).even & p_914->g_232.z) < (((l_296[1] != l_297) & ((((*l_298) = &p_914->g_3[2]) != &p_914->g_3[0]) ^ ((*l_288) || ((+p_56) < (safe_add_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(0xBCL, p_914->g_227.y)), l_269[6])))))) >= p_57)) , p_57) == 0L)) && (*l_289)) | 65530UL), p_56, (*l_289), (*l_289), 1L, 0x4ED3L, (-1L))).s0, 2)), ((VECTOR(int32_t, 4))(0x7303163EL)), p_57, ((VECTOR(int32_t, 4))(0x03E7F666L)), 0x0AE7E543L, 7L, (-8L))).s2e)).xxxxyxxy, ((VECTOR(int32_t, 8))(1L))))).s10, ((VECTOR(int32_t, 2))(1L))))))).xxyy))).yxyxyyxx)).s3753714232443250)).hi)).s16, ((VECTOR(int32_t, 2))(0x5EC11C4FL)), ((VECTOR(int32_t, 2))((-1L)))))), ((VECTOR(int32_t, 2))(0x4BBDC869L)), ((VECTOR(int32_t, 4))(0x74E8C5AAL)))).s4)
                { /* block id: 81 */
                    uint16_t l_307 = 1UL;
                    for (p_914->g_122.f0 = 1; (p_914->g_122.f0 != 24); p_914->g_122.f0 = safe_add_func_int32_t_s_s(p_914->g_122.f0, 9))
                    { /* block id: 84 */
                        if ((**l_298))
                            break;
                        if (p_914->g_122.f0)
                            break;
                        l_307 = ((l_306 = l_305) == (void*)0);
                    }
                }
                else
                { /* block id: 90 */
                    uint32_t **l_314 = &p_914->g_115[0];
                    int32_t l_318 = (-5L);
                    (*l_288) &= ((p_57 ^ (p_56 || (p_914->g_9.f2 > 0x17L))) < ((*l_287) = ((safe_sub_func_int16_t_s_s(((safe_div_func_uint32_t_u_u(((((*l_314) = (void*)0) != p_914->g_169) ^ (((VECTOR(uint64_t, 16))(l_315.xzxxzwxxzyzxwxxy)).s9 <= ((safe_div_func_int16_t_s_s((0x1F1A5535L > l_318), (GROUP_DIVERGE(0, 1) & p_57))) , 0x7EF13FA2BA1A4B50L))), p_914->g_119.f2)) || 0x4228CE52C00E9E41L), 0x9DCAL)) < FAKE_DIVERGE(p_914->global_0_offset, get_global_id(0), 10))));
                    for (l_257 = (-11); (l_257 <= 59); l_257 = safe_add_func_uint8_t_u_u(l_257, 1))
                    { /* block id: 96 */
                        return &p_914->g_80;
                    }
                }
            }
        }
        p_914->g_144.x = ((safe_div_func_int16_t_s_s(0x1645L, (l_124 ^= (safe_mod_func_uint32_t_u_u((l_268 & (((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(p_914->g_3[0], ((VECTOR(int8_t, 2))(0x79L, 3L)), 0x3AL)).odd)).hi | 0x88L) > ((&p_914->g_169 == l_325) && ((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))((l_277.y = l_315.y), 0UL, 7UL, 0xC9F7C0B4L)), ((((((safe_add_func_int32_t_s_s((safe_lshift_func_uint8_t_u_u(((+(((**l_325) = ((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(0x2C8F741AL, 3L, (((safe_rshift_func_int16_t_s_s(((((((((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 16))((safe_mul_func_int16_t_s_s(((safe_div_func_uint64_t_u_u((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 4))(4L, 0x08L, 0L, 6L)).wwwzzwxw, ((VECTOR(int8_t, 16))(p_914->g_339.s6613116726450333)).odd))).s7, (safe_add_func_int64_t_s_s((((((**l_325) , (((*l_120) = (((void*)0 == l_163) , l_342)) == (void*)0)) , (void*)0) == (void*)0) < 1UL), 1UL)))), (-2L))) , p_57), p_57)), 1L, 0x5E31L, p_914->g_137.z, ((VECTOR(int16_t, 4))((-1L))), ((VECTOR(int16_t, 8))(0x4989L)))), ((VECTOR(uint16_t, 16))(0xA632L))))).s9b, ((VECTOR(int32_t, 2))((-1L)))))), ((VECTOR(int32_t, 2))(8L))))).lo , p_914->g_115[0]) != p_914->g_169) | GROUP_DIVERGE(0, 1)) , p_56) >= 0x11L) >= p_57), 8)) | GROUP_DIVERGE(2, 1)) < p_914->g_118[1].f2), ((VECTOR(int32_t, 8))((-1L))), p_57, 0L, l_123, (-1L), 6L)), ((VECTOR(int32_t, 16))(4L))))).s5) == p_57)) != (-5L)), p_914->g_117[2][2][1].f2)), 0UL)) | p_56) > l_101.x) , &p_914->g_78[1]) == &p_56) > (-1L)), 0xEC600478L, 0x7DDB4AF2L, 0UL)))).s6 ^ p_56) ^ 0UL))) <= p_57)), p_57))))) , 0x4EBA0DE8L);
        l_354++;
        (*l_359) = l_357;
    }
    else
    { /* block id: 109 */
        if (p_914->g_119.f2)
            goto lbl_360;
    }
    return &p_914->g_211;
}


/* ------------------------------------------ */
/* 
 * reads : p_914->g_92 p_914->g_9.f2
 * writes: p_914->g_92
 */
uint32_t  func_70(int32_t * p_71, struct S0 * p_72, struct S2 * p_914)
{ /* block id: 18 */
    int32_t *l_77 = &p_914->g_6;
    int32_t *l_79 = &p_914->g_80;
    int32_t *l_81 = &p_914->g_80;
    int32_t *l_82 = (void*)0;
    int32_t *l_83 = &p_914->g_80;
    int32_t *l_84 = &p_914->g_80;
    int32_t *l_85 = &p_914->g_80;
    int32_t *l_86 = &p_914->g_80;
    int32_t *l_87 = (void*)0;
    int32_t *l_88 = (void*)0;
    int32_t *l_89 = &p_914->g_80;
    int32_t *l_90[9][9][3] = {{{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]}},{{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]}},{{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]}},{{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]}},{{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]}},{{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]}},{{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]}},{{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]}},{{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]},{(void*)0,&p_914->g_3[2],&p_914->g_3[2]}}};
    int i, j, k;
    p_71 = l_77;
    p_914->g_92++;
    return p_914->g_9.f2;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_915;
    struct S2* p_914 = &c_915;
    struct S2 c_916 = {
        (-8L), // p_914->g_2
        {0x39DD952EL,0x39DD952EL,0x39DD952EL}, // p_914->g_3
        0L, // p_914->g_6
        {-2L,1UL,7UL,0x689A5A40L}, // p_914->g_9
        8L, // p_914->g_19
        (VECTOR(int64_t, 8))(0x238C8A251ABE719CL, (VECTOR(int64_t, 4))(0x238C8A251ABE719CL, (VECTOR(int64_t, 2))(0x238C8A251ABE719CL, 0x2EDA1E1CF2BBA2D3L), 0x2EDA1E1CF2BBA2D3L), 0x2EDA1E1CF2BBA2D3L, 0x238C8A251ABE719CL, 0x2EDA1E1CF2BBA2D3L), // p_914->g_46
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int8_t, 2))(0L, 0L), (VECTOR(int8_t, 2))(0L, 0L), 0L, 0L, 0L, 0L), // p_914->g_53
        (VECTOR(uint32_t, 8))(0x157F02CAL, (VECTOR(uint32_t, 4))(0x157F02CAL, (VECTOR(uint32_t, 2))(0x157F02CAL, 0xE685266AL), 0xE685266AL), 0xE685266AL, 0x157F02CAL, 0xE685266AL), // p_914->g_69
        {{0x14L,0xD5900A0D1F898AFBL,1UL,4294967290UL},{0x14L,0xD5900A0D1F898AFBL,1UL,4294967290UL},{0x14L,0xD5900A0D1F898AFBL,1UL,4294967290UL},{0x14L,0xD5900A0D1F898AFBL,1UL,4294967290UL},{0x14L,0xD5900A0D1F898AFBL,1UL,4294967290UL},{0x14L,0xD5900A0D1F898AFBL,1UL,4294967290UL}}, // p_914->g_75
        {{{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL}},{{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL}},{{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL}},{{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL}},{{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL}},{{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL}},{{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,0x9783D71515025B92L,0UL,4294967294UL},{0L,18446744073709551607UL,18446744073709551615UL,0UL}}}, // p_914->g_76
        {3L,3L}, // p_914->g_78
        0L, // p_914->g_80
        7L, // p_914->g_91
        0x56L, // p_914->g_92
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x0A06L), 0x0A06L), 0x0A06L, 1L, 0x0A06L, (VECTOR(int16_t, 2))(1L, 0x0A06L), (VECTOR(int16_t, 2))(1L, 0x0A06L), 1L, 0x0A06L, 1L, 0x0A06L), // p_914->g_100
        (VECTOR(uint8_t, 2))(0xBCL, 1UL), // p_914->g_110
        0xCAL, // p_914->g_113
        {(void*)0}, // p_914->g_115
        {{{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}},{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}},{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}},{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}}},{{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}},{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}},{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}},{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}}},{{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}},{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}},{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}},{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}}},{{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}},{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}},{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}},{{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL},{-1L,8UL,0UL,4294967295UL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{0L,2UL,0x84385FFE76D6E16AL,0x5EDDA54EL},{-1L,18446744073709551615UL,0xBA7642D4FD8FAC68L,0xCB929261L},{-1L,8UL,0UL,4294967295UL},{-4L,0xAA2CC3962B670233L,18446744073709551615UL,1UL}}}}, // p_914->g_117
        {{0x58L,18446744073709551606UL,0xB277A049A3F908AAL,0x12B9D125L},{0x58L,18446744073709551606UL,0xB277A049A3F908AAL,0x12B9D125L},{0x58L,18446744073709551606UL,0xB277A049A3F908AAL,0x12B9D125L},{0x58L,18446744073709551606UL,0xB277A049A3F908AAL,0x12B9D125L}}, // p_914->g_118
        {0x43L,18446744073709551613UL,0x1EDEDEB66DA5D0A9L,4294967295UL}, // p_914->g_119
        {0x00L,18446744073709551615UL,0x3455AAA9526B4DC7L,1UL}, // p_914->g_122
        &p_914->g_122, // p_914->g_121
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 7L), 7L), // p_914->g_137
        (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), (-9L)), (-9L)), // p_914->g_144
        0UL, // p_914->g_164
        0x61323BCEL, // p_914->g_170
        &p_914->g_170, // p_914->g_169
        {{{{1UL,-5L,6UL,0x1E8C80B86B9388DDL,2L,0xAFD82489F6C0847AL,0x340B1CC6L,0xA533A6A4DE43C07BL,0xACC92EB9L,0x0AF9B30A4D827149L},{255UL,0L,0xA958541DL,0x164D0CA8F3B588DFL,-8L,8UL,0x1AF6DF75L,5UL,0x049AFED3L,0x6B623827983931C9L},{1UL,-1L,0x6761DBAFL,0x0297E4177E30253AL,0x6248DD52L,0x20E3F7F697AC61EBL,0L,0x66C6893DEB19EFFCL,9UL,0x931D93221E11CBF9L},{255UL,0L,0xA958541DL,0x164D0CA8F3B588DFL,-8L,8UL,0x1AF6DF75L,5UL,0x049AFED3L,0x6B623827983931C9L},{1UL,-5L,6UL,0x1E8C80B86B9388DDL,2L,0xAFD82489F6C0847AL,0x340B1CC6L,0xA533A6A4DE43C07BL,0xACC92EB9L,0x0AF9B30A4D827149L},{1UL,-5L,6UL,0x1E8C80B86B9388DDL,2L,0xAFD82489F6C0847AL,0x340B1CC6L,0xA533A6A4DE43C07BL,0xACC92EB9L,0x0AF9B30A4D827149L},{255UL,0L,0xA958541DL,0x164D0CA8F3B588DFL,-8L,8UL,0x1AF6DF75L,5UL,0x049AFED3L,0x6B623827983931C9L}},{{1UL,-5L,6UL,0x1E8C80B86B9388DDL,2L,0xAFD82489F6C0847AL,0x340B1CC6L,0xA533A6A4DE43C07BL,0xACC92EB9L,0x0AF9B30A4D827149L},{255UL,0L,0xA958541DL,0x164D0CA8F3B588DFL,-8L,8UL,0x1AF6DF75L,5UL,0x049AFED3L,0x6B623827983931C9L},{1UL,-1L,0x6761DBAFL,0x0297E4177E30253AL,0x6248DD52L,0x20E3F7F697AC61EBL,0L,0x66C6893DEB19EFFCL,9UL,0x931D93221E11CBF9L},{255UL,0L,0xA958541DL,0x164D0CA8F3B588DFL,-8L,8UL,0x1AF6DF75L,5UL,0x049AFED3L,0x6B623827983931C9L},{1UL,-5L,6UL,0x1E8C80B86B9388DDL,2L,0xAFD82489F6C0847AL,0x340B1CC6L,0xA533A6A4DE43C07BL,0xACC92EB9L,0x0AF9B30A4D827149L},{1UL,-5L,6UL,0x1E8C80B86B9388DDL,2L,0xAFD82489F6C0847AL,0x340B1CC6L,0xA533A6A4DE43C07BL,0xACC92EB9L,0x0AF9B30A4D827149L},{255UL,0L,0xA958541DL,0x164D0CA8F3B588DFL,-8L,8UL,0x1AF6DF75L,5UL,0x049AFED3L,0x6B623827983931C9L}}},{{{1UL,-5L,6UL,0x1E8C80B86B9388DDL,2L,0xAFD82489F6C0847AL,0x340B1CC6L,0xA533A6A4DE43C07BL,0xACC92EB9L,0x0AF9B30A4D827149L},{255UL,0L,0xA958541DL,0x164D0CA8F3B588DFL,-8L,8UL,0x1AF6DF75L,5UL,0x049AFED3L,0x6B623827983931C9L},{1UL,-1L,0x6761DBAFL,0x0297E4177E30253AL,0x6248DD52L,0x20E3F7F697AC61EBL,0L,0x66C6893DEB19EFFCL,9UL,0x931D93221E11CBF9L},{255UL,0L,0xA958541DL,0x164D0CA8F3B588DFL,-8L,8UL,0x1AF6DF75L,5UL,0x049AFED3L,0x6B623827983931C9L},{1UL,-5L,6UL,0x1E8C80B86B9388DDL,2L,0xAFD82489F6C0847AL,0x340B1CC6L,0xA533A6A4DE43C07BL,0xACC92EB9L,0x0AF9B30A4D827149L},{1UL,-5L,6UL,0x1E8C80B86B9388DDL,2L,0xAFD82489F6C0847AL,0x340B1CC6L,0xA533A6A4DE43C07BL,0xACC92EB9L,0x0AF9B30A4D827149L},{255UL,0L,0xA958541DL,0x164D0CA8F3B588DFL,-8L,8UL,0x1AF6DF75L,5UL,0x049AFED3L,0x6B623827983931C9L}},{{1UL,-5L,6UL,0x1E8C80B86B9388DDL,2L,0xAFD82489F6C0847AL,0x340B1CC6L,0xA533A6A4DE43C07BL,0xACC92EB9L,0x0AF9B30A4D827149L},{255UL,0L,0xA958541DL,0x164D0CA8F3B588DFL,-8L,8UL,0x1AF6DF75L,5UL,0x049AFED3L,0x6B623827983931C9L},{1UL,-1L,0x6761DBAFL,0x0297E4177E30253AL,0x6248DD52L,0x20E3F7F697AC61EBL,0L,0x66C6893DEB19EFFCL,9UL,0x931D93221E11CBF9L},{255UL,0L,0xA958541DL,0x164D0CA8F3B588DFL,-8L,8UL,0x1AF6DF75L,5UL,0x049AFED3L,0x6B623827983931C9L},{1UL,-5L,6UL,0x1E8C80B86B9388DDL,2L,0xAFD82489F6C0847AL,0x340B1CC6L,0xA533A6A4DE43C07BL,0xACC92EB9L,0x0AF9B30A4D827149L},{1UL,-5L,6UL,0x1E8C80B86B9388DDL,2L,0xAFD82489F6C0847AL,0x340B1CC6L,0xA533A6A4DE43C07BL,0xACC92EB9L,0x0AF9B30A4D827149L},{255UL,0L,0xA958541DL,0x164D0CA8F3B588DFL,-8L,8UL,0x1AF6DF75L,5UL,0x049AFED3L,0x6B623827983931C9L}}}}, // p_914->g_180
        (VECTOR(uint8_t, 8))(0xA1L, (VECTOR(uint8_t, 4))(0xA1L, (VECTOR(uint8_t, 2))(0xA1L, 0xCAL), 0xCAL), 0xCAL, 0xA1L, 0xCAL), // p_914->g_185
        (VECTOR(uint8_t, 16))(2UL, (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 1UL), 1UL), 1UL, 2UL, 1UL, (VECTOR(uint8_t, 2))(2UL, 1UL), (VECTOR(uint8_t, 2))(2UL, 1UL), 2UL, 1UL, 2UL, 1UL), // p_914->g_186
        (VECTOR(int16_t, 2))(0x36A2L, 0x052CL), // p_914->g_191
        (VECTOR(int16_t, 16))(0x679BL, (VECTOR(int16_t, 4))(0x679BL, (VECTOR(int16_t, 2))(0x679BL, 3L), 3L), 3L, 0x679BL, 3L, (VECTOR(int16_t, 2))(0x679BL, 3L), (VECTOR(int16_t, 2))(0x679BL, 3L), 0x679BL, 3L, 0x679BL, 3L), // p_914->g_192
        (VECTOR(int16_t, 2))(0x553DL, 0L), // p_914->g_193
        8L, // p_914->g_211
        (VECTOR(int64_t, 2))(3L, 0L), // p_914->g_214
        (VECTOR(int16_t, 2))((-9L), (-1L)), // p_914->g_227
        (VECTOR(uint16_t, 4))(0x17ADL, (VECTOR(uint16_t, 2))(0x17ADL, 65535UL), 65535UL), // p_914->g_232
        (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 65530UL), 65530UL), // p_914->g_233
        (VECTOR(int64_t, 16))(0x761073AF742B0DC1L, (VECTOR(int64_t, 4))(0x761073AF742B0DC1L, (VECTOR(int64_t, 2))(0x761073AF742B0DC1L, 0x2A024681C1142506L), 0x2A024681C1142506L), 0x2A024681C1142506L, 0x761073AF742B0DC1L, 0x2A024681C1142506L, (VECTOR(int64_t, 2))(0x761073AF742B0DC1L, 0x2A024681C1142506L), (VECTOR(int64_t, 2))(0x761073AF742B0DC1L, 0x2A024681C1142506L), 0x761073AF742B0DC1L, 0x2A024681C1142506L, 0x761073AF742B0DC1L, 0x2A024681C1142506L), // p_914->g_295
        (VECTOR(int8_t, 8))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0x46L), 0x46L), 0x46L, 9L, 0x46L), // p_914->g_339
        {5L,0x0A042E9A0CFF893DL,0x9AEC6EC00230EF70L,0xF2EB5584L}, // p_914->g_343
        {0x11L,0xF4199FD6A50E4DF2L,0xBA7ADA6C4909D220L,0xD113D3C4L}, // p_914->g_373
        (VECTOR(uint8_t, 4))(0x46L, (VECTOR(uint8_t, 2))(0x46L, 0x2CL), 0x2CL), // p_914->g_378
        {{0x9FBD8BCDC9219522L,0xDC28095B12FAB08EL,0x9FBD8BCDC9219522L,0x9FBD8BCDC9219522L},{0x9FBD8BCDC9219522L,0xDC28095B12FAB08EL,0x9FBD8BCDC9219522L,0x9FBD8BCDC9219522L},{0x9FBD8BCDC9219522L,0xDC28095B12FAB08EL,0x9FBD8BCDC9219522L,0x9FBD8BCDC9219522L},{0x9FBD8BCDC9219522L,0xDC28095B12FAB08EL,0x9FBD8BCDC9219522L,0x9FBD8BCDC9219522L},{0x9FBD8BCDC9219522L,0xDC28095B12FAB08EL,0x9FBD8BCDC9219522L,0x9FBD8BCDC9219522L},{0x9FBD8BCDC9219522L,0xDC28095B12FAB08EL,0x9FBD8BCDC9219522L,0x9FBD8BCDC9219522L},{0x9FBD8BCDC9219522L,0xDC28095B12FAB08EL,0x9FBD8BCDC9219522L,0x9FBD8BCDC9219522L}}, // p_914->g_399
        &p_914->g_399[0][3], // p_914->g_398
        &p_914->g_398, // p_914->g_397
        {0x68L,9UL,0UL,4294967293UL}, // p_914->g_410
        (VECTOR(int64_t, 2))(0x2D0BEAE4D8A7D58FL, 0x27B83644A580AD90L), // p_914->g_413
        &p_914->g_180[0][1][5].f4, // p_914->g_437
        (void*)0, // p_914->g_443
        (void*)0, // p_914->g_446
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-6L)), (-6L)), (-6L), 1L, (-6L)), // p_914->g_452
        (void*)0, // p_914->g_460
        &p_914->g_460, // p_914->g_459
        {9L,0x9E3920A6DE3CA938L,0xD8C96DB92C191101L,0x65A80851L}, // p_914->g_496
        (VECTOR(uint64_t, 16))(0x95CCA670B65781A9L, (VECTOR(uint64_t, 4))(0x95CCA670B65781A9L, (VECTOR(uint64_t, 2))(0x95CCA670B65781A9L, 0xDB55DAFC17DECE89L), 0xDB55DAFC17DECE89L), 0xDB55DAFC17DECE89L, 0x95CCA670B65781A9L, 0xDB55DAFC17DECE89L, (VECTOR(uint64_t, 2))(0x95CCA670B65781A9L, 0xDB55DAFC17DECE89L), (VECTOR(uint64_t, 2))(0x95CCA670B65781A9L, 0xDB55DAFC17DECE89L), 0x95CCA670B65781A9L, 0xDB55DAFC17DECE89L, 0x95CCA670B65781A9L, 0xDB55DAFC17DECE89L), // p_914->g_563
        0x4072225D60DEE9CEL, // p_914->g_586
        (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0L), 0L), 0L, 6L, 0L), // p_914->g_593
        {{{0x6DL,-1L,0x1C71F9CCL,0L,0x030F2992L,0UL,0x4CA19E7AL,18446744073709551615UL,0x95111015L,0x049A627BC9965192L},{2UL,0x21L,6UL,0x6A97EB1E7108FEFEL,1L,0x89E4C2049073F775L,-7L,0UL,0x0E265F0EL,18446744073709551615UL}},{{0x6DL,-1L,0x1C71F9CCL,0L,0x030F2992L,0UL,0x4CA19E7AL,18446744073709551615UL,0x95111015L,0x049A627BC9965192L},{2UL,0x21L,6UL,0x6A97EB1E7108FEFEL,1L,0x89E4C2049073F775L,-7L,0UL,0x0E265F0EL,18446744073709551615UL}},{{0x6DL,-1L,0x1C71F9CCL,0L,0x030F2992L,0UL,0x4CA19E7AL,18446744073709551615UL,0x95111015L,0x049A627BC9965192L},{2UL,0x21L,6UL,0x6A97EB1E7108FEFEL,1L,0x89E4C2049073F775L,-7L,0UL,0x0E265F0EL,18446744073709551615UL}},{{0x6DL,-1L,0x1C71F9CCL,0L,0x030F2992L,0UL,0x4CA19E7AL,18446744073709551615UL,0x95111015L,0x049A627BC9965192L},{2UL,0x21L,6UL,0x6A97EB1E7108FEFEL,1L,0x89E4C2049073F775L,-7L,0UL,0x0E265F0EL,18446744073709551615UL}},{{0x6DL,-1L,0x1C71F9CCL,0L,0x030F2992L,0UL,0x4CA19E7AL,18446744073709551615UL,0x95111015L,0x049A627BC9965192L},{2UL,0x21L,6UL,0x6A97EB1E7108FEFEL,1L,0x89E4C2049073F775L,-7L,0UL,0x0E265F0EL,18446744073709551615UL}}}, // p_914->g_613
        {0x31L,-5L,0x9DE58BAFL,1L,-3L,0UL,0x44E157E7L,0xAFD9EF073A72A525L,0UL,0xF983B3CFA6896726L}, // p_914->g_614
        {{&p_914->g_613[0][0],&p_914->g_613[0][0],&p_914->g_613[0][0]},{&p_914->g_613[0][0],&p_914->g_613[0][0],&p_914->g_613[0][0]},{&p_914->g_613[0][0],&p_914->g_613[0][0],&p_914->g_613[0][0]},{&p_914->g_613[0][0],&p_914->g_613[0][0],&p_914->g_613[0][0]},{&p_914->g_613[0][0],&p_914->g_613[0][0],&p_914->g_613[0][0]},{&p_914->g_613[0][0],&p_914->g_613[0][0],&p_914->g_613[0][0]},{&p_914->g_613[0][0],&p_914->g_613[0][0],&p_914->g_613[0][0]},{&p_914->g_613[0][0],&p_914->g_613[0][0],&p_914->g_613[0][0]},{&p_914->g_613[0][0],&p_914->g_613[0][0],&p_914->g_613[0][0]},{&p_914->g_613[0][0],&p_914->g_613[0][0],&p_914->g_613[0][0]}}, // p_914->g_612
        {0x3BL,7L,0x4402E0F5L,0x1BCCD1398DBBF7A6L,0x5C2EB50FL,0x4BD95A27318F779EL,0x35E40FC6L,0x56ABA3C71D548ADFL,4294967292UL,0x379CC183F3D60F78L}, // p_914->g_616
        (void*)0, // p_914->g_635
        {0x67L,1UL,0UL,4294967295UL}, // p_914->g_646
        (VECTOR(int32_t, 2))((-2L), 0x20D4871DL), // p_914->g_729
        (VECTOR(uint32_t, 16))(0x77E78AEBL, (VECTOR(uint32_t, 4))(0x77E78AEBL, (VECTOR(uint32_t, 2))(0x77E78AEBL, 6UL), 6UL), 6UL, 0x77E78AEBL, 6UL, (VECTOR(uint32_t, 2))(0x77E78AEBL, 6UL), (VECTOR(uint32_t, 2))(0x77E78AEBL, 6UL), 0x77E78AEBL, 6UL, 0x77E78AEBL, 6UL), // p_914->g_730
        (VECTOR(int8_t, 2))(0x52L, 2L), // p_914->g_738
        (VECTOR(uint8_t, 8))(0x6BL, (VECTOR(uint8_t, 4))(0x6BL, (VECTOR(uint8_t, 2))(0x6BL, 0UL), 0UL), 0UL, 0x6BL, 0UL), // p_914->g_741
        (VECTOR(uint8_t, 2))(8UL, 0x31L), // p_914->g_749
        (VECTOR(int32_t, 8))(0x5F896CD8L, (VECTOR(int32_t, 4))(0x5F896CD8L, (VECTOR(int32_t, 2))(0x5F896CD8L, 0x7EABE6D5L), 0x7EABE6D5L), 0x7EABE6D5L, 0x5F896CD8L, 0x7EABE6D5L), // p_914->g_779
        {{(void*)0},{(void*)0}}, // p_914->g_797
        &p_914->g_797[1][0], // p_914->g_796
        &p_914->g_796, // p_914->g_795
        {0x22L,18446744073709551615UL,0x3B4964E3984CB290L,0x4BDD7DABL}, // p_914->g_801
        &p_914->g_635, // p_914->g_802
        {0UL,0x48L,0UL,-1L,0L,18446744073709551607UL,0L,0xC0322A307FDD6F3BL,5UL,0x4ACA0B215AC80980L}, // p_914->g_803
        {7UL,0x6AL,4294967295UL,2L,0x7B4300B8L,0xFC54F126403195ECL,1L,9UL,0x1BFA4E18L,0x0FBFF7F0B49E58ECL}, // p_914->g_804
        &p_914->g_635, // p_914->g_811
        (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 0x08L), 0x08L), // p_914->g_823
        (VECTOR(int16_t, 2))((-1L), 0L), // p_914->g_827
        (VECTOR(int32_t, 4))(0x6006F751L, (VECTOR(int32_t, 2))(0x6006F751L, 0x2AED42ECL), 0x2AED42ECL), // p_914->g_840
        (VECTOR(int32_t, 8))(0x043DB907L, (VECTOR(int32_t, 4))(0x043DB907L, (VECTOR(int32_t, 2))(0x043DB907L, (-2L)), (-2L)), (-2L), 0x043DB907L, (-2L)), // p_914->g_843
        {0x1FL,-5L,0UL,0L,8L,0x7E5D69128D56AB70L,7L,0x6C4BF5D08A47DAEAL,0x5FA3B6CCL,0x5D7C06AE1B706E25L}, // p_914->g_844
        (VECTOR(uint8_t, 16))(0xD4L, (VECTOR(uint8_t, 4))(0xD4L, (VECTOR(uint8_t, 2))(0xD4L, 252UL), 252UL), 252UL, 0xD4L, 252UL, (VECTOR(uint8_t, 2))(0xD4L, 252UL), (VECTOR(uint8_t, 2))(0xD4L, 252UL), 0xD4L, 252UL, 0xD4L, 252UL), // p_914->g_855
        (VECTOR(int8_t, 2))(0L, 0L), // p_914->g_856
        (VECTOR(int8_t, 4))(0x7FL, (VECTOR(int8_t, 2))(0x7FL, 0L), 0L), // p_914->g_857
        (VECTOR(int8_t, 2))(0x65L, (-1L)), // p_914->g_858
        {0x3CL,1UL,0UL,1UL}, // p_914->g_884
        5L, // p_914->g_901
        (void*)0, // p_914->g_910
        &p_914->g_910, // p_914->g_909
        {{{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0},{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0},{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0},{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0}},{{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0},{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0},{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0},{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0}},{{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0},{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0},{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0},{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0}},{{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0},{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0},{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0},{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0}},{{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0},{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0},{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0},{&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,&p_914->g_909,(void*)0,(void*)0}}}, // p_914->g_908
        &p_914->g_909, // p_914->g_911
        sequence_input[get_global_id(0)], // p_914->global_0_offset
        sequence_input[get_global_id(1)], // p_914->global_1_offset
        sequence_input[get_global_id(2)], // p_914->global_2_offset
        sequence_input[get_local_id(0)], // p_914->local_0_offset
        sequence_input[get_local_id(1)], // p_914->local_1_offset
        sequence_input[get_local_id(2)], // p_914->local_2_offset
        sequence_input[get_group_id(0)], // p_914->group_0_offset
        sequence_input[get_group_id(1)], // p_914->group_1_offset
        sequence_input[get_group_id(2)], // p_914->group_2_offset
    };
    c_915 = c_916;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_914);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_914->g_2, "p_914->g_2", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_914->g_3[i], "p_914->g_3[i]", print_hash_value);

    }
    transparent_crc(p_914->g_6, "p_914->g_6", print_hash_value);
    transparent_crc(p_914->g_9.f0, "p_914->g_9.f0", print_hash_value);
    transparent_crc(p_914->g_9.f1, "p_914->g_9.f1", print_hash_value);
    transparent_crc(p_914->g_9.f2, "p_914->g_9.f2", print_hash_value);
    transparent_crc(p_914->g_9.f3, "p_914->g_9.f3", print_hash_value);
    transparent_crc(p_914->g_19, "p_914->g_19", print_hash_value);
    transparent_crc(p_914->g_46.s0, "p_914->g_46.s0", print_hash_value);
    transparent_crc(p_914->g_46.s1, "p_914->g_46.s1", print_hash_value);
    transparent_crc(p_914->g_46.s2, "p_914->g_46.s2", print_hash_value);
    transparent_crc(p_914->g_46.s3, "p_914->g_46.s3", print_hash_value);
    transparent_crc(p_914->g_46.s4, "p_914->g_46.s4", print_hash_value);
    transparent_crc(p_914->g_46.s5, "p_914->g_46.s5", print_hash_value);
    transparent_crc(p_914->g_46.s6, "p_914->g_46.s6", print_hash_value);
    transparent_crc(p_914->g_46.s7, "p_914->g_46.s7", print_hash_value);
    transparent_crc(p_914->g_53.s0, "p_914->g_53.s0", print_hash_value);
    transparent_crc(p_914->g_53.s1, "p_914->g_53.s1", print_hash_value);
    transparent_crc(p_914->g_53.s2, "p_914->g_53.s2", print_hash_value);
    transparent_crc(p_914->g_53.s3, "p_914->g_53.s3", print_hash_value);
    transparent_crc(p_914->g_53.s4, "p_914->g_53.s4", print_hash_value);
    transparent_crc(p_914->g_53.s5, "p_914->g_53.s5", print_hash_value);
    transparent_crc(p_914->g_53.s6, "p_914->g_53.s6", print_hash_value);
    transparent_crc(p_914->g_53.s7, "p_914->g_53.s7", print_hash_value);
    transparent_crc(p_914->g_53.s8, "p_914->g_53.s8", print_hash_value);
    transparent_crc(p_914->g_53.s9, "p_914->g_53.s9", print_hash_value);
    transparent_crc(p_914->g_53.sa, "p_914->g_53.sa", print_hash_value);
    transparent_crc(p_914->g_53.sb, "p_914->g_53.sb", print_hash_value);
    transparent_crc(p_914->g_53.sc, "p_914->g_53.sc", print_hash_value);
    transparent_crc(p_914->g_53.sd, "p_914->g_53.sd", print_hash_value);
    transparent_crc(p_914->g_53.se, "p_914->g_53.se", print_hash_value);
    transparent_crc(p_914->g_53.sf, "p_914->g_53.sf", print_hash_value);
    transparent_crc(p_914->g_69.s0, "p_914->g_69.s0", print_hash_value);
    transparent_crc(p_914->g_69.s1, "p_914->g_69.s1", print_hash_value);
    transparent_crc(p_914->g_69.s2, "p_914->g_69.s2", print_hash_value);
    transparent_crc(p_914->g_69.s3, "p_914->g_69.s3", print_hash_value);
    transparent_crc(p_914->g_69.s4, "p_914->g_69.s4", print_hash_value);
    transparent_crc(p_914->g_69.s5, "p_914->g_69.s5", print_hash_value);
    transparent_crc(p_914->g_69.s6, "p_914->g_69.s6", print_hash_value);
    transparent_crc(p_914->g_69.s7, "p_914->g_69.s7", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_914->g_75[i].f0, "p_914->g_75[i].f0", print_hash_value);
        transparent_crc(p_914->g_75[i].f1, "p_914->g_75[i].f1", print_hash_value);
        transparent_crc(p_914->g_75[i].f2, "p_914->g_75[i].f2", print_hash_value);
        transparent_crc(p_914->g_75[i].f3, "p_914->g_75[i].f3", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_914->g_76[i][j].f0, "p_914->g_76[i][j].f0", print_hash_value);
            transparent_crc(p_914->g_76[i][j].f1, "p_914->g_76[i][j].f1", print_hash_value);
            transparent_crc(p_914->g_76[i][j].f2, "p_914->g_76[i][j].f2", print_hash_value);
            transparent_crc(p_914->g_76[i][j].f3, "p_914->g_76[i][j].f3", print_hash_value);

        }
    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_914->g_78[i], "p_914->g_78[i]", print_hash_value);

    }
    transparent_crc(p_914->g_80, "p_914->g_80", print_hash_value);
    transparent_crc(p_914->g_91, "p_914->g_91", print_hash_value);
    transparent_crc(p_914->g_92, "p_914->g_92", print_hash_value);
    transparent_crc(p_914->g_100.s0, "p_914->g_100.s0", print_hash_value);
    transparent_crc(p_914->g_100.s1, "p_914->g_100.s1", print_hash_value);
    transparent_crc(p_914->g_100.s2, "p_914->g_100.s2", print_hash_value);
    transparent_crc(p_914->g_100.s3, "p_914->g_100.s3", print_hash_value);
    transparent_crc(p_914->g_100.s4, "p_914->g_100.s4", print_hash_value);
    transparent_crc(p_914->g_100.s5, "p_914->g_100.s5", print_hash_value);
    transparent_crc(p_914->g_100.s6, "p_914->g_100.s6", print_hash_value);
    transparent_crc(p_914->g_100.s7, "p_914->g_100.s7", print_hash_value);
    transparent_crc(p_914->g_100.s8, "p_914->g_100.s8", print_hash_value);
    transparent_crc(p_914->g_100.s9, "p_914->g_100.s9", print_hash_value);
    transparent_crc(p_914->g_100.sa, "p_914->g_100.sa", print_hash_value);
    transparent_crc(p_914->g_100.sb, "p_914->g_100.sb", print_hash_value);
    transparent_crc(p_914->g_100.sc, "p_914->g_100.sc", print_hash_value);
    transparent_crc(p_914->g_100.sd, "p_914->g_100.sd", print_hash_value);
    transparent_crc(p_914->g_100.se, "p_914->g_100.se", print_hash_value);
    transparent_crc(p_914->g_100.sf, "p_914->g_100.sf", print_hash_value);
    transparent_crc(p_914->g_110.x, "p_914->g_110.x", print_hash_value);
    transparent_crc(p_914->g_110.y, "p_914->g_110.y", print_hash_value);
    transparent_crc(p_914->g_113, "p_914->g_113", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_914->g_117[i][j][k].f0, "p_914->g_117[i][j][k].f0", print_hash_value);
                transparent_crc(p_914->g_117[i][j][k].f1, "p_914->g_117[i][j][k].f1", print_hash_value);
                transparent_crc(p_914->g_117[i][j][k].f2, "p_914->g_117[i][j][k].f2", print_hash_value);
                transparent_crc(p_914->g_117[i][j][k].f3, "p_914->g_117[i][j][k].f3", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_914->g_118[i].f0, "p_914->g_118[i].f0", print_hash_value);
        transparent_crc(p_914->g_118[i].f1, "p_914->g_118[i].f1", print_hash_value);
        transparent_crc(p_914->g_118[i].f2, "p_914->g_118[i].f2", print_hash_value);
        transparent_crc(p_914->g_118[i].f3, "p_914->g_118[i].f3", print_hash_value);

    }
    transparent_crc(p_914->g_119.f0, "p_914->g_119.f0", print_hash_value);
    transparent_crc(p_914->g_119.f1, "p_914->g_119.f1", print_hash_value);
    transparent_crc(p_914->g_119.f2, "p_914->g_119.f2", print_hash_value);
    transparent_crc(p_914->g_119.f3, "p_914->g_119.f3", print_hash_value);
    transparent_crc(p_914->g_122.f0, "p_914->g_122.f0", print_hash_value);
    transparent_crc(p_914->g_122.f1, "p_914->g_122.f1", print_hash_value);
    transparent_crc(p_914->g_122.f2, "p_914->g_122.f2", print_hash_value);
    transparent_crc(p_914->g_122.f3, "p_914->g_122.f3", print_hash_value);
    transparent_crc(p_914->g_137.x, "p_914->g_137.x", print_hash_value);
    transparent_crc(p_914->g_137.y, "p_914->g_137.y", print_hash_value);
    transparent_crc(p_914->g_137.z, "p_914->g_137.z", print_hash_value);
    transparent_crc(p_914->g_137.w, "p_914->g_137.w", print_hash_value);
    transparent_crc(p_914->g_144.x, "p_914->g_144.x", print_hash_value);
    transparent_crc(p_914->g_144.y, "p_914->g_144.y", print_hash_value);
    transparent_crc(p_914->g_144.z, "p_914->g_144.z", print_hash_value);
    transparent_crc(p_914->g_144.w, "p_914->g_144.w", print_hash_value);
    transparent_crc(p_914->g_164, "p_914->g_164", print_hash_value);
    transparent_crc(p_914->g_170, "p_914->g_170", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_914->g_180[i][j][k].f0, "p_914->g_180[i][j][k].f0", print_hash_value);
                transparent_crc(p_914->g_180[i][j][k].f1, "p_914->g_180[i][j][k].f1", print_hash_value);
                transparent_crc(p_914->g_180[i][j][k].f2, "p_914->g_180[i][j][k].f2", print_hash_value);
                transparent_crc(p_914->g_180[i][j][k].f3, "p_914->g_180[i][j][k].f3", print_hash_value);
                transparent_crc(p_914->g_180[i][j][k].f4, "p_914->g_180[i][j][k].f4", print_hash_value);
                transparent_crc(p_914->g_180[i][j][k].f5, "p_914->g_180[i][j][k].f5", print_hash_value);
                transparent_crc(p_914->g_180[i][j][k].f6, "p_914->g_180[i][j][k].f6", print_hash_value);
                transparent_crc(p_914->g_180[i][j][k].f7, "p_914->g_180[i][j][k].f7", print_hash_value);
                transparent_crc(p_914->g_180[i][j][k].f8, "p_914->g_180[i][j][k].f8", print_hash_value);
                transparent_crc(p_914->g_180[i][j][k].f9, "p_914->g_180[i][j][k].f9", print_hash_value);

            }
        }
    }
    transparent_crc(p_914->g_185.s0, "p_914->g_185.s0", print_hash_value);
    transparent_crc(p_914->g_185.s1, "p_914->g_185.s1", print_hash_value);
    transparent_crc(p_914->g_185.s2, "p_914->g_185.s2", print_hash_value);
    transparent_crc(p_914->g_185.s3, "p_914->g_185.s3", print_hash_value);
    transparent_crc(p_914->g_185.s4, "p_914->g_185.s4", print_hash_value);
    transparent_crc(p_914->g_185.s5, "p_914->g_185.s5", print_hash_value);
    transparent_crc(p_914->g_185.s6, "p_914->g_185.s6", print_hash_value);
    transparent_crc(p_914->g_185.s7, "p_914->g_185.s7", print_hash_value);
    transparent_crc(p_914->g_186.s0, "p_914->g_186.s0", print_hash_value);
    transparent_crc(p_914->g_186.s1, "p_914->g_186.s1", print_hash_value);
    transparent_crc(p_914->g_186.s2, "p_914->g_186.s2", print_hash_value);
    transparent_crc(p_914->g_186.s3, "p_914->g_186.s3", print_hash_value);
    transparent_crc(p_914->g_186.s4, "p_914->g_186.s4", print_hash_value);
    transparent_crc(p_914->g_186.s5, "p_914->g_186.s5", print_hash_value);
    transparent_crc(p_914->g_186.s6, "p_914->g_186.s6", print_hash_value);
    transparent_crc(p_914->g_186.s7, "p_914->g_186.s7", print_hash_value);
    transparent_crc(p_914->g_186.s8, "p_914->g_186.s8", print_hash_value);
    transparent_crc(p_914->g_186.s9, "p_914->g_186.s9", print_hash_value);
    transparent_crc(p_914->g_186.sa, "p_914->g_186.sa", print_hash_value);
    transparent_crc(p_914->g_186.sb, "p_914->g_186.sb", print_hash_value);
    transparent_crc(p_914->g_186.sc, "p_914->g_186.sc", print_hash_value);
    transparent_crc(p_914->g_186.sd, "p_914->g_186.sd", print_hash_value);
    transparent_crc(p_914->g_186.se, "p_914->g_186.se", print_hash_value);
    transparent_crc(p_914->g_186.sf, "p_914->g_186.sf", print_hash_value);
    transparent_crc(p_914->g_191.x, "p_914->g_191.x", print_hash_value);
    transparent_crc(p_914->g_191.y, "p_914->g_191.y", print_hash_value);
    transparent_crc(p_914->g_192.s0, "p_914->g_192.s0", print_hash_value);
    transparent_crc(p_914->g_192.s1, "p_914->g_192.s1", print_hash_value);
    transparent_crc(p_914->g_192.s2, "p_914->g_192.s2", print_hash_value);
    transparent_crc(p_914->g_192.s3, "p_914->g_192.s3", print_hash_value);
    transparent_crc(p_914->g_192.s4, "p_914->g_192.s4", print_hash_value);
    transparent_crc(p_914->g_192.s5, "p_914->g_192.s5", print_hash_value);
    transparent_crc(p_914->g_192.s6, "p_914->g_192.s6", print_hash_value);
    transparent_crc(p_914->g_192.s7, "p_914->g_192.s7", print_hash_value);
    transparent_crc(p_914->g_192.s8, "p_914->g_192.s8", print_hash_value);
    transparent_crc(p_914->g_192.s9, "p_914->g_192.s9", print_hash_value);
    transparent_crc(p_914->g_192.sa, "p_914->g_192.sa", print_hash_value);
    transparent_crc(p_914->g_192.sb, "p_914->g_192.sb", print_hash_value);
    transparent_crc(p_914->g_192.sc, "p_914->g_192.sc", print_hash_value);
    transparent_crc(p_914->g_192.sd, "p_914->g_192.sd", print_hash_value);
    transparent_crc(p_914->g_192.se, "p_914->g_192.se", print_hash_value);
    transparent_crc(p_914->g_192.sf, "p_914->g_192.sf", print_hash_value);
    transparent_crc(p_914->g_193.x, "p_914->g_193.x", print_hash_value);
    transparent_crc(p_914->g_193.y, "p_914->g_193.y", print_hash_value);
    transparent_crc(p_914->g_211, "p_914->g_211", print_hash_value);
    transparent_crc(p_914->g_214.x, "p_914->g_214.x", print_hash_value);
    transparent_crc(p_914->g_214.y, "p_914->g_214.y", print_hash_value);
    transparent_crc(p_914->g_227.x, "p_914->g_227.x", print_hash_value);
    transparent_crc(p_914->g_227.y, "p_914->g_227.y", print_hash_value);
    transparent_crc(p_914->g_232.x, "p_914->g_232.x", print_hash_value);
    transparent_crc(p_914->g_232.y, "p_914->g_232.y", print_hash_value);
    transparent_crc(p_914->g_232.z, "p_914->g_232.z", print_hash_value);
    transparent_crc(p_914->g_232.w, "p_914->g_232.w", print_hash_value);
    transparent_crc(p_914->g_233.x, "p_914->g_233.x", print_hash_value);
    transparent_crc(p_914->g_233.y, "p_914->g_233.y", print_hash_value);
    transparent_crc(p_914->g_233.z, "p_914->g_233.z", print_hash_value);
    transparent_crc(p_914->g_233.w, "p_914->g_233.w", print_hash_value);
    transparent_crc(p_914->g_295.s0, "p_914->g_295.s0", print_hash_value);
    transparent_crc(p_914->g_295.s1, "p_914->g_295.s1", print_hash_value);
    transparent_crc(p_914->g_295.s2, "p_914->g_295.s2", print_hash_value);
    transparent_crc(p_914->g_295.s3, "p_914->g_295.s3", print_hash_value);
    transparent_crc(p_914->g_295.s4, "p_914->g_295.s4", print_hash_value);
    transparent_crc(p_914->g_295.s5, "p_914->g_295.s5", print_hash_value);
    transparent_crc(p_914->g_295.s6, "p_914->g_295.s6", print_hash_value);
    transparent_crc(p_914->g_295.s7, "p_914->g_295.s7", print_hash_value);
    transparent_crc(p_914->g_295.s8, "p_914->g_295.s8", print_hash_value);
    transparent_crc(p_914->g_295.s9, "p_914->g_295.s9", print_hash_value);
    transparent_crc(p_914->g_295.sa, "p_914->g_295.sa", print_hash_value);
    transparent_crc(p_914->g_295.sb, "p_914->g_295.sb", print_hash_value);
    transparent_crc(p_914->g_295.sc, "p_914->g_295.sc", print_hash_value);
    transparent_crc(p_914->g_295.sd, "p_914->g_295.sd", print_hash_value);
    transparent_crc(p_914->g_295.se, "p_914->g_295.se", print_hash_value);
    transparent_crc(p_914->g_295.sf, "p_914->g_295.sf", print_hash_value);
    transparent_crc(p_914->g_339.s0, "p_914->g_339.s0", print_hash_value);
    transparent_crc(p_914->g_339.s1, "p_914->g_339.s1", print_hash_value);
    transparent_crc(p_914->g_339.s2, "p_914->g_339.s2", print_hash_value);
    transparent_crc(p_914->g_339.s3, "p_914->g_339.s3", print_hash_value);
    transparent_crc(p_914->g_339.s4, "p_914->g_339.s4", print_hash_value);
    transparent_crc(p_914->g_339.s5, "p_914->g_339.s5", print_hash_value);
    transparent_crc(p_914->g_339.s6, "p_914->g_339.s6", print_hash_value);
    transparent_crc(p_914->g_339.s7, "p_914->g_339.s7", print_hash_value);
    transparent_crc(p_914->g_343.f0, "p_914->g_343.f0", print_hash_value);
    transparent_crc(p_914->g_343.f1, "p_914->g_343.f1", print_hash_value);
    transparent_crc(p_914->g_343.f2, "p_914->g_343.f2", print_hash_value);
    transparent_crc(p_914->g_343.f3, "p_914->g_343.f3", print_hash_value);
    transparent_crc(p_914->g_373.f0, "p_914->g_373.f0", print_hash_value);
    transparent_crc(p_914->g_373.f1, "p_914->g_373.f1", print_hash_value);
    transparent_crc(p_914->g_373.f2, "p_914->g_373.f2", print_hash_value);
    transparent_crc(p_914->g_373.f3, "p_914->g_373.f3", print_hash_value);
    transparent_crc(p_914->g_378.x, "p_914->g_378.x", print_hash_value);
    transparent_crc(p_914->g_378.y, "p_914->g_378.y", print_hash_value);
    transparent_crc(p_914->g_378.z, "p_914->g_378.z", print_hash_value);
    transparent_crc(p_914->g_378.w, "p_914->g_378.w", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_914->g_399[i][j], "p_914->g_399[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_914->g_410.f0, "p_914->g_410.f0", print_hash_value);
    transparent_crc(p_914->g_410.f1, "p_914->g_410.f1", print_hash_value);
    transparent_crc(p_914->g_410.f2, "p_914->g_410.f2", print_hash_value);
    transparent_crc(p_914->g_410.f3, "p_914->g_410.f3", print_hash_value);
    transparent_crc(p_914->g_413.x, "p_914->g_413.x", print_hash_value);
    transparent_crc(p_914->g_413.y, "p_914->g_413.y", print_hash_value);
    transparent_crc(p_914->g_452.s0, "p_914->g_452.s0", print_hash_value);
    transparent_crc(p_914->g_452.s1, "p_914->g_452.s1", print_hash_value);
    transparent_crc(p_914->g_452.s2, "p_914->g_452.s2", print_hash_value);
    transparent_crc(p_914->g_452.s3, "p_914->g_452.s3", print_hash_value);
    transparent_crc(p_914->g_452.s4, "p_914->g_452.s4", print_hash_value);
    transparent_crc(p_914->g_452.s5, "p_914->g_452.s5", print_hash_value);
    transparent_crc(p_914->g_452.s6, "p_914->g_452.s6", print_hash_value);
    transparent_crc(p_914->g_452.s7, "p_914->g_452.s7", print_hash_value);
    transparent_crc(p_914->g_496.f0, "p_914->g_496.f0", print_hash_value);
    transparent_crc(p_914->g_496.f1, "p_914->g_496.f1", print_hash_value);
    transparent_crc(p_914->g_496.f2, "p_914->g_496.f2", print_hash_value);
    transparent_crc(p_914->g_496.f3, "p_914->g_496.f3", print_hash_value);
    transparent_crc(p_914->g_563.s0, "p_914->g_563.s0", print_hash_value);
    transparent_crc(p_914->g_563.s1, "p_914->g_563.s1", print_hash_value);
    transparent_crc(p_914->g_563.s2, "p_914->g_563.s2", print_hash_value);
    transparent_crc(p_914->g_563.s3, "p_914->g_563.s3", print_hash_value);
    transparent_crc(p_914->g_563.s4, "p_914->g_563.s4", print_hash_value);
    transparent_crc(p_914->g_563.s5, "p_914->g_563.s5", print_hash_value);
    transparent_crc(p_914->g_563.s6, "p_914->g_563.s6", print_hash_value);
    transparent_crc(p_914->g_563.s7, "p_914->g_563.s7", print_hash_value);
    transparent_crc(p_914->g_563.s8, "p_914->g_563.s8", print_hash_value);
    transparent_crc(p_914->g_563.s9, "p_914->g_563.s9", print_hash_value);
    transparent_crc(p_914->g_563.sa, "p_914->g_563.sa", print_hash_value);
    transparent_crc(p_914->g_563.sb, "p_914->g_563.sb", print_hash_value);
    transparent_crc(p_914->g_563.sc, "p_914->g_563.sc", print_hash_value);
    transparent_crc(p_914->g_563.sd, "p_914->g_563.sd", print_hash_value);
    transparent_crc(p_914->g_563.se, "p_914->g_563.se", print_hash_value);
    transparent_crc(p_914->g_563.sf, "p_914->g_563.sf", print_hash_value);
    transparent_crc(p_914->g_586, "p_914->g_586", print_hash_value);
    transparent_crc(p_914->g_593.s0, "p_914->g_593.s0", print_hash_value);
    transparent_crc(p_914->g_593.s1, "p_914->g_593.s1", print_hash_value);
    transparent_crc(p_914->g_593.s2, "p_914->g_593.s2", print_hash_value);
    transparent_crc(p_914->g_593.s3, "p_914->g_593.s3", print_hash_value);
    transparent_crc(p_914->g_593.s4, "p_914->g_593.s4", print_hash_value);
    transparent_crc(p_914->g_593.s5, "p_914->g_593.s5", print_hash_value);
    transparent_crc(p_914->g_593.s6, "p_914->g_593.s6", print_hash_value);
    transparent_crc(p_914->g_593.s7, "p_914->g_593.s7", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_914->g_613[i][j].f0, "p_914->g_613[i][j].f0", print_hash_value);
            transparent_crc(p_914->g_613[i][j].f1, "p_914->g_613[i][j].f1", print_hash_value);
            transparent_crc(p_914->g_613[i][j].f2, "p_914->g_613[i][j].f2", print_hash_value);
            transparent_crc(p_914->g_613[i][j].f3, "p_914->g_613[i][j].f3", print_hash_value);
            transparent_crc(p_914->g_613[i][j].f4, "p_914->g_613[i][j].f4", print_hash_value);
            transparent_crc(p_914->g_613[i][j].f5, "p_914->g_613[i][j].f5", print_hash_value);
            transparent_crc(p_914->g_613[i][j].f6, "p_914->g_613[i][j].f6", print_hash_value);
            transparent_crc(p_914->g_613[i][j].f7, "p_914->g_613[i][j].f7", print_hash_value);
            transparent_crc(p_914->g_613[i][j].f8, "p_914->g_613[i][j].f8", print_hash_value);
            transparent_crc(p_914->g_613[i][j].f9, "p_914->g_613[i][j].f9", print_hash_value);

        }
    }
    transparent_crc(p_914->g_614.f0, "p_914->g_614.f0", print_hash_value);
    transparent_crc(p_914->g_614.f1, "p_914->g_614.f1", print_hash_value);
    transparent_crc(p_914->g_614.f2, "p_914->g_614.f2", print_hash_value);
    transparent_crc(p_914->g_614.f3, "p_914->g_614.f3", print_hash_value);
    transparent_crc(p_914->g_614.f4, "p_914->g_614.f4", print_hash_value);
    transparent_crc(p_914->g_614.f5, "p_914->g_614.f5", print_hash_value);
    transparent_crc(p_914->g_614.f6, "p_914->g_614.f6", print_hash_value);
    transparent_crc(p_914->g_614.f7, "p_914->g_614.f7", print_hash_value);
    transparent_crc(p_914->g_614.f8, "p_914->g_614.f8", print_hash_value);
    transparent_crc(p_914->g_614.f9, "p_914->g_614.f9", print_hash_value);
    transparent_crc(p_914->g_616.f0, "p_914->g_616.f0", print_hash_value);
    transparent_crc(p_914->g_616.f1, "p_914->g_616.f1", print_hash_value);
    transparent_crc(p_914->g_616.f2, "p_914->g_616.f2", print_hash_value);
    transparent_crc(p_914->g_616.f3, "p_914->g_616.f3", print_hash_value);
    transparent_crc(p_914->g_616.f4, "p_914->g_616.f4", print_hash_value);
    transparent_crc(p_914->g_616.f5, "p_914->g_616.f5", print_hash_value);
    transparent_crc(p_914->g_616.f6, "p_914->g_616.f6", print_hash_value);
    transparent_crc(p_914->g_616.f7, "p_914->g_616.f7", print_hash_value);
    transparent_crc(p_914->g_616.f8, "p_914->g_616.f8", print_hash_value);
    transparent_crc(p_914->g_616.f9, "p_914->g_616.f9", print_hash_value);
    transparent_crc(p_914->g_646.f0, "p_914->g_646.f0", print_hash_value);
    transparent_crc(p_914->g_646.f1, "p_914->g_646.f1", print_hash_value);
    transparent_crc(p_914->g_646.f2, "p_914->g_646.f2", print_hash_value);
    transparent_crc(p_914->g_646.f3, "p_914->g_646.f3", print_hash_value);
    transparent_crc(p_914->g_729.x, "p_914->g_729.x", print_hash_value);
    transparent_crc(p_914->g_729.y, "p_914->g_729.y", print_hash_value);
    transparent_crc(p_914->g_730.s0, "p_914->g_730.s0", print_hash_value);
    transparent_crc(p_914->g_730.s1, "p_914->g_730.s1", print_hash_value);
    transparent_crc(p_914->g_730.s2, "p_914->g_730.s2", print_hash_value);
    transparent_crc(p_914->g_730.s3, "p_914->g_730.s3", print_hash_value);
    transparent_crc(p_914->g_730.s4, "p_914->g_730.s4", print_hash_value);
    transparent_crc(p_914->g_730.s5, "p_914->g_730.s5", print_hash_value);
    transparent_crc(p_914->g_730.s6, "p_914->g_730.s6", print_hash_value);
    transparent_crc(p_914->g_730.s7, "p_914->g_730.s7", print_hash_value);
    transparent_crc(p_914->g_730.s8, "p_914->g_730.s8", print_hash_value);
    transparent_crc(p_914->g_730.s9, "p_914->g_730.s9", print_hash_value);
    transparent_crc(p_914->g_730.sa, "p_914->g_730.sa", print_hash_value);
    transparent_crc(p_914->g_730.sb, "p_914->g_730.sb", print_hash_value);
    transparent_crc(p_914->g_730.sc, "p_914->g_730.sc", print_hash_value);
    transparent_crc(p_914->g_730.sd, "p_914->g_730.sd", print_hash_value);
    transparent_crc(p_914->g_730.se, "p_914->g_730.se", print_hash_value);
    transparent_crc(p_914->g_730.sf, "p_914->g_730.sf", print_hash_value);
    transparent_crc(p_914->g_738.x, "p_914->g_738.x", print_hash_value);
    transparent_crc(p_914->g_738.y, "p_914->g_738.y", print_hash_value);
    transparent_crc(p_914->g_741.s0, "p_914->g_741.s0", print_hash_value);
    transparent_crc(p_914->g_741.s1, "p_914->g_741.s1", print_hash_value);
    transparent_crc(p_914->g_741.s2, "p_914->g_741.s2", print_hash_value);
    transparent_crc(p_914->g_741.s3, "p_914->g_741.s3", print_hash_value);
    transparent_crc(p_914->g_741.s4, "p_914->g_741.s4", print_hash_value);
    transparent_crc(p_914->g_741.s5, "p_914->g_741.s5", print_hash_value);
    transparent_crc(p_914->g_741.s6, "p_914->g_741.s6", print_hash_value);
    transparent_crc(p_914->g_741.s7, "p_914->g_741.s7", print_hash_value);
    transparent_crc(p_914->g_749.x, "p_914->g_749.x", print_hash_value);
    transparent_crc(p_914->g_749.y, "p_914->g_749.y", print_hash_value);
    transparent_crc(p_914->g_779.s0, "p_914->g_779.s0", print_hash_value);
    transparent_crc(p_914->g_779.s1, "p_914->g_779.s1", print_hash_value);
    transparent_crc(p_914->g_779.s2, "p_914->g_779.s2", print_hash_value);
    transparent_crc(p_914->g_779.s3, "p_914->g_779.s3", print_hash_value);
    transparent_crc(p_914->g_779.s4, "p_914->g_779.s4", print_hash_value);
    transparent_crc(p_914->g_779.s5, "p_914->g_779.s5", print_hash_value);
    transparent_crc(p_914->g_779.s6, "p_914->g_779.s6", print_hash_value);
    transparent_crc(p_914->g_779.s7, "p_914->g_779.s7", print_hash_value);
    transparent_crc(p_914->g_801.f0, "p_914->g_801.f0", print_hash_value);
    transparent_crc(p_914->g_801.f1, "p_914->g_801.f1", print_hash_value);
    transparent_crc(p_914->g_801.f2, "p_914->g_801.f2", print_hash_value);
    transparent_crc(p_914->g_801.f3, "p_914->g_801.f3", print_hash_value);
    transparent_crc(p_914->g_803.f0, "p_914->g_803.f0", print_hash_value);
    transparent_crc(p_914->g_803.f1, "p_914->g_803.f1", print_hash_value);
    transparent_crc(p_914->g_803.f2, "p_914->g_803.f2", print_hash_value);
    transparent_crc(p_914->g_803.f3, "p_914->g_803.f3", print_hash_value);
    transparent_crc(p_914->g_803.f4, "p_914->g_803.f4", print_hash_value);
    transparent_crc(p_914->g_803.f5, "p_914->g_803.f5", print_hash_value);
    transparent_crc(p_914->g_803.f6, "p_914->g_803.f6", print_hash_value);
    transparent_crc(p_914->g_803.f7, "p_914->g_803.f7", print_hash_value);
    transparent_crc(p_914->g_803.f8, "p_914->g_803.f8", print_hash_value);
    transparent_crc(p_914->g_803.f9, "p_914->g_803.f9", print_hash_value);
    transparent_crc(p_914->g_804.f0, "p_914->g_804.f0", print_hash_value);
    transparent_crc(p_914->g_804.f1, "p_914->g_804.f1", print_hash_value);
    transparent_crc(p_914->g_804.f2, "p_914->g_804.f2", print_hash_value);
    transparent_crc(p_914->g_804.f3, "p_914->g_804.f3", print_hash_value);
    transparent_crc(p_914->g_804.f4, "p_914->g_804.f4", print_hash_value);
    transparent_crc(p_914->g_804.f5, "p_914->g_804.f5", print_hash_value);
    transparent_crc(p_914->g_804.f6, "p_914->g_804.f6", print_hash_value);
    transparent_crc(p_914->g_804.f7, "p_914->g_804.f7", print_hash_value);
    transparent_crc(p_914->g_804.f8, "p_914->g_804.f8", print_hash_value);
    transparent_crc(p_914->g_804.f9, "p_914->g_804.f9", print_hash_value);
    transparent_crc(p_914->g_823.x, "p_914->g_823.x", print_hash_value);
    transparent_crc(p_914->g_823.y, "p_914->g_823.y", print_hash_value);
    transparent_crc(p_914->g_823.z, "p_914->g_823.z", print_hash_value);
    transparent_crc(p_914->g_823.w, "p_914->g_823.w", print_hash_value);
    transparent_crc(p_914->g_827.x, "p_914->g_827.x", print_hash_value);
    transparent_crc(p_914->g_827.y, "p_914->g_827.y", print_hash_value);
    transparent_crc(p_914->g_840.x, "p_914->g_840.x", print_hash_value);
    transparent_crc(p_914->g_840.y, "p_914->g_840.y", print_hash_value);
    transparent_crc(p_914->g_840.z, "p_914->g_840.z", print_hash_value);
    transparent_crc(p_914->g_840.w, "p_914->g_840.w", print_hash_value);
    transparent_crc(p_914->g_843.s0, "p_914->g_843.s0", print_hash_value);
    transparent_crc(p_914->g_843.s1, "p_914->g_843.s1", print_hash_value);
    transparent_crc(p_914->g_843.s2, "p_914->g_843.s2", print_hash_value);
    transparent_crc(p_914->g_843.s3, "p_914->g_843.s3", print_hash_value);
    transparent_crc(p_914->g_843.s4, "p_914->g_843.s4", print_hash_value);
    transparent_crc(p_914->g_843.s5, "p_914->g_843.s5", print_hash_value);
    transparent_crc(p_914->g_843.s6, "p_914->g_843.s6", print_hash_value);
    transparent_crc(p_914->g_843.s7, "p_914->g_843.s7", print_hash_value);
    transparent_crc(p_914->g_844.f0, "p_914->g_844.f0", print_hash_value);
    transparent_crc(p_914->g_844.f1, "p_914->g_844.f1", print_hash_value);
    transparent_crc(p_914->g_844.f2, "p_914->g_844.f2", print_hash_value);
    transparent_crc(p_914->g_844.f3, "p_914->g_844.f3", print_hash_value);
    transparent_crc(p_914->g_844.f4, "p_914->g_844.f4", print_hash_value);
    transparent_crc(p_914->g_844.f5, "p_914->g_844.f5", print_hash_value);
    transparent_crc(p_914->g_844.f6, "p_914->g_844.f6", print_hash_value);
    transparent_crc(p_914->g_844.f7, "p_914->g_844.f7", print_hash_value);
    transparent_crc(p_914->g_844.f8, "p_914->g_844.f8", print_hash_value);
    transparent_crc(p_914->g_844.f9, "p_914->g_844.f9", print_hash_value);
    transparent_crc(p_914->g_855.s0, "p_914->g_855.s0", print_hash_value);
    transparent_crc(p_914->g_855.s1, "p_914->g_855.s1", print_hash_value);
    transparent_crc(p_914->g_855.s2, "p_914->g_855.s2", print_hash_value);
    transparent_crc(p_914->g_855.s3, "p_914->g_855.s3", print_hash_value);
    transparent_crc(p_914->g_855.s4, "p_914->g_855.s4", print_hash_value);
    transparent_crc(p_914->g_855.s5, "p_914->g_855.s5", print_hash_value);
    transparent_crc(p_914->g_855.s6, "p_914->g_855.s6", print_hash_value);
    transparent_crc(p_914->g_855.s7, "p_914->g_855.s7", print_hash_value);
    transparent_crc(p_914->g_855.s8, "p_914->g_855.s8", print_hash_value);
    transparent_crc(p_914->g_855.s9, "p_914->g_855.s9", print_hash_value);
    transparent_crc(p_914->g_855.sa, "p_914->g_855.sa", print_hash_value);
    transparent_crc(p_914->g_855.sb, "p_914->g_855.sb", print_hash_value);
    transparent_crc(p_914->g_855.sc, "p_914->g_855.sc", print_hash_value);
    transparent_crc(p_914->g_855.sd, "p_914->g_855.sd", print_hash_value);
    transparent_crc(p_914->g_855.se, "p_914->g_855.se", print_hash_value);
    transparent_crc(p_914->g_855.sf, "p_914->g_855.sf", print_hash_value);
    transparent_crc(p_914->g_856.x, "p_914->g_856.x", print_hash_value);
    transparent_crc(p_914->g_856.y, "p_914->g_856.y", print_hash_value);
    transparent_crc(p_914->g_857.x, "p_914->g_857.x", print_hash_value);
    transparent_crc(p_914->g_857.y, "p_914->g_857.y", print_hash_value);
    transparent_crc(p_914->g_857.z, "p_914->g_857.z", print_hash_value);
    transparent_crc(p_914->g_857.w, "p_914->g_857.w", print_hash_value);
    transparent_crc(p_914->g_858.x, "p_914->g_858.x", print_hash_value);
    transparent_crc(p_914->g_858.y, "p_914->g_858.y", print_hash_value);
    transparent_crc(p_914->g_884.f0, "p_914->g_884.f0", print_hash_value);
    transparent_crc(p_914->g_884.f1, "p_914->g_884.f1", print_hash_value);
    transparent_crc(p_914->g_884.f2, "p_914->g_884.f2", print_hash_value);
    transparent_crc(p_914->g_884.f3, "p_914->g_884.f3", print_hash_value);
    transparent_crc(p_914->g_901, "p_914->g_901", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
