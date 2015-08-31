// ---fake_divergence -g 1,5,1337 -l 1,1,7
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


// Seed: 6

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   int32_t  f1;
   volatile uint32_t  f2;
};

union U1 {
   int32_t  f0;
   int64_t  f1;
};

union U2 {
   int16_t  f0;
   int32_t  f1;
   uint16_t  f2;
};

union U3 {
   int64_t  f0;
};

union U4 {
   int32_t  f0;
   volatile uint8_t  f1;
   uint64_t  f2;
   volatile uint64_t  f3;
   uint32_t  f4;
};

struct S5 {
    union U3 g_15;
    union U3 *g_14;
    uint64_t g_45[2];
    int32_t g_57;
    volatile VECTOR(int16_t, 8) g_60;
    volatile VECTOR(uint16_t, 16) g_61;
    int32_t *g_64[1][7][1];
    int32_t ** volatile g_63;
    int32_t g_66;
    int8_t g_70[6][9][4];
    int8_t g_72;
    int16_t g_87;
    int32_t * volatile g_90;
    union U1 g_91;
    uint32_t g_93;
    uint32_t g_99;
    uint8_t g_116;
    uint32_t g_117;
    uint64_t g_127[3];
    VECTOR(int64_t, 16) g_128;
    volatile VECTOR(int64_t, 4) g_129;
    volatile VECTOR(int64_t, 2) g_130;
    volatile VECTOR(int64_t, 16) g_141;
    union U2 g_154;
    union U2 *g_156;
    union U2 ** volatile g_155;
    union U4 g_169;
    VECTOR(int16_t, 16) g_176;
    VECTOR(int8_t, 16) g_181;
    uint32_t g_200;
    VECTOR(uint8_t, 4) g_207;
    volatile VECTOR(uint16_t, 8) g_215;
    union U4 g_223;
    int32_t g_260;
    VECTOR(uint64_t, 4) g_265;
    volatile int32_t g_298;
    volatile int32_t *g_297;
    volatile VECTOR(int8_t, 8) g_302;
    VECTOR(int8_t, 4) g_303;
    VECTOR(int8_t, 16) g_307;
    VECTOR(int8_t, 8) g_309;
    VECTOR(int8_t, 8) g_310;
    volatile VECTOR(uint64_t, 2) g_363;
    volatile VECTOR(uint64_t, 8) g_377;
    volatile VECTOR(int16_t, 8) g_386;
    VECTOR(int32_t, 4) g_389;
    VECTOR(int32_t, 16) g_400;
    VECTOR(uint16_t, 2) g_424;
    int64_t *g_425;
    int64_t g_428;
    volatile VECTOR(int8_t, 4) g_441;
    uint32_t g_456;
    int32_t *g_469[1];
    int32_t **g_468;
    int32_t *** volatile g_467[2];
    volatile VECTOR(int8_t, 16) g_481;
    volatile VECTOR(int64_t, 8) g_496;
    VECTOR(int64_t, 2) g_500;
    volatile VECTOR(int64_t, 2) g_501;
    VECTOR(int16_t, 4) g_535;
    union U4 g_567;
    volatile int8_t g_589;
    VECTOR(int32_t, 4) g_606;
    VECTOR(int8_t, 8) g_616;
    volatile VECTOR(int8_t, 16) g_638;
    VECTOR(int8_t, 2) g_640;
    VECTOR(int32_t, 16) g_641;
    uint32_t g_661[7][5];
    volatile VECTOR(uint16_t, 16) g_715;
    VECTOR(int16_t, 2) g_721;
    uint32_t *g_725;
    VECTOR(int32_t, 16) g_729;
    VECTOR(uint16_t, 4) g_733;
    int32_t ** volatile g_758;
    VECTOR(int8_t, 4) g_783;
    uint32_t * volatile * volatile g_809;
    VECTOR(int16_t, 8) g_810;
    uint16_t g_825;
    union U1 g_841;
    union U3 g_845;
    volatile union U0 g_850;
    int32_t ** volatile g_870;
    uint32_t g_874;
    volatile VECTOR(int32_t, 16) g_875;
    VECTOR(int32_t, 4) g_876;
    uint64_t *g_891;
    volatile VECTOR(uint16_t, 8) g_914;
    volatile VECTOR(int16_t, 2) g_936;
    volatile VECTOR(int16_t, 2) g_943;
    VECTOR(int16_t, 4) g_944;
    VECTOR(int16_t, 8) g_945;
    volatile VECTOR(int16_t, 4) g_946;
    uint32_t g_965;
    VECTOR(uint8_t, 4) g_983;
    VECTOR(int32_t, 8) g_989;
    VECTOR(int32_t, 16) g_996;
    volatile int16_t g_1006;
    uint32_t *g_1025[7][10][3];
    uint32_t **g_1024[4][1][3];
    uint32_t *** volatile g_1027;
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
uint8_t  func_1(struct S5 * p_1066);
union U3 * func_2(int32_t  p_3, uint64_t  p_4, uint64_t  p_5, uint32_t  p_6, struct S5 * p_1066);
union U3  func_8(union U3 * p_9, union U3 * p_10, uint64_t  p_11, union U1  p_12, union U3 * p_13, struct S5 * p_1066);
union U3 * func_16(uint64_t  p_17, struct S5 * p_1066);
union U3 * func_21(int8_t  p_22, union U3 * p_23, struct S5 * p_1066);
VECTOR(int32_t, 8)  func_28(int8_t  p_29, union U3 * p_30, uint64_t  p_31, union U3 * p_32, int64_t  p_33, struct S5 * p_1066);
int8_t  func_34(union U3  p_35, union U3 * p_36, struct S5 * p_1066);
union U3  func_37(uint64_t  p_38, union U3 * p_39, union U3 * p_40, struct S5 * p_1066);
union U1  func_48(uint32_t  p_49, uint64_t * p_50, int16_t  p_51, union U3 * p_52, uint16_t  p_53, struct S5 * p_1066);
int32_t  func_58(union U3  p_59, struct S5 * p_1066);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1066->g_14 p_1066->g_15.f0 p_1066->g_45 p_1066->g_15 p_1066->g_60 p_1066->g_61 p_1066->g_57 p_1066->g_63 p_1066->g_66 p_1066->g_64 p_1066->g_91 p_1066->g_91.f0 p_1066->g_117 p_1066->g_70 p_1066->g_93 p_1066->g_128 p_1066->g_129 p_1066->g_130 p_1066->g_141 p_1066->g_72 p_1066->g_116 p_1066->g_99 p_1066->g_87 p_1066->g_155 p_1066->g_169 p_1066->g_169.f0 p_1066->g_176 p_1066->g_181 p_1066->g_156 p_1066->g_200 p_1066->g_207 p_1066->g_215 p_1066->g_303 p_1066->g_297 p_1066->g_363 p_1066->g_265 p_1066->g_154.f1 p_1066->g_377 p_1066->g_386 p_1066->g_389 p_1066->g_400 p_1066->g_298 p_1066->g_154.f0 p_1066->g_425 p_1066->g_309 p_1066->g_456 p_1066->g_481 p_1066->g_496 p_1066->g_500 p_1066->g_501 p_1066->g_535 p_1066->g_310 p_1066->g_428 p_1066->g_424 p_1066->g_127 p_1066->g_567 p_1066->g_223.f0 p_1066->g_606 p_1066->g_468 p_1066->g_469 p_1066->g_616 p_1066->g_169.f2 p_1066->g_638 p_1066->g_640 p_1066->g_641 p_1066->g_661 p_1066->g_567.f0 p_1066->g_260 p_1066->g_729 p_1066->g_733 p_1066->g_758 p_1066->g_783 p_1066->g_809 p_1066->g_810 p_1066->g_825 p_1066->g_841 p_1066->g_850 p_1066->g_725 p_1066->g_870 p_1066->g_874 p_1066->g_875 p_1066->g_876 p_1066->g_891 p_1066->g_965 p_1066->g_983 p_1066->g_989 p_1066->g_996 p_1066->g_1006 p_1066->g_223.f2 p_1066->g_1024 p_1066->g_1027
 * writes: p_1066->g_45 p_1066->g_57 p_1066->g_64 p_1066->g_66 p_1066->g_70 p_1066->g_72 p_1066->g_87 p_1066->g_93 p_1066->g_99 p_1066->g_116 p_1066->g_127 p_1066->g_15.f0 p_1066->g_128 p_1066->g_156 p_1066->g_200 p_1066->g_91.f1 p_1066->g_298 p_1066->g_154.f1 p_1066->g_377 p_1066->g_154.f0 p_1066->g_428 p_1066->g_456 p_1066->g_265 p_1066->g_424 p_1066->g_154.f2 p_1066->g_223.f0 p_1066->g_310 p_1066->g_169.f2 p_1066->g_567.f0 p_1066->g_260 p_1066->g_223.f2 p_1066->g_91.f0 p_1066->g_169.f0 p_1066->g_303 p_1066->g_733 p_1066->g_825 p_1066->g_783 p_1066->g_841 p_1066->g_891 p_1066->g_965 p_1066->g_307 p_1066->g_1024 p_1066->g_983 p_1066->g_207
 */
uint8_t  func_1(struct S5 * p_1066)
{ /* block id: 4 */
    int32_t l_7 = 0x5C6F8B8AL;
    uint32_t l_18 = 0x64BAE0FCL;
    union U1 *l_842 = (void*)0;
    union U1 *l_843 = &p_1066->g_841;
    union U3 *l_844[2][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
    union U3 *l_847 = &p_1066->g_845;
    union U3 **l_846 = &l_847;
    int i, j;
    (*l_846) = func_2(((l_7 , func_8(p_1066->g_14, func_16(l_18, p_1066), p_1066->g_309.s7, ((*l_843) = p_1066->g_841), ((*l_846) = (l_844[1][0] = p_1066->g_14)), p_1066)) , (l_7 &= 0x6C8D2D1DL)), p_1066->g_874, l_18, p_1066->g_500.x, p_1066);
    return p_1066->g_176.sb;
}


/* ------------------------------------------ */
/* 
 * reads : p_1066->g_875 p_1066->g_876 p_1066->g_130 p_1066->g_535 p_1066->g_891 p_1066->g_616 p_1066->g_850 p_1066->g_57 p_1066->g_606 p_1066->g_965 p_1066->g_66 p_1066->g_425 p_1066->g_983 p_1066->g_989 p_1066->g_996 p_1066->g_1006 p_1066->g_45 p_1066->g_223.f2 p_1066->g_297 p_1066->g_298 p_1066->g_1024 p_1066->g_1027 p_1066->g_825 p_1066->g_661 p_1066->g_641 p_1066->g_567.f0 p_1066->g_207 p_1066->g_87
 * writes: p_1066->g_87 p_1066->g_891 p_1066->g_116 p_1066->g_825 p_1066->g_57 p_1066->g_154.f1 p_1066->g_965 p_1066->g_66 p_1066->g_200 p_1066->g_307 p_1066->g_223.f2 p_1066->g_298 p_1066->g_1024 p_1066->g_45 p_1066->g_983 p_1066->g_154.f2 p_1066->g_567.f0 p_1066->g_207
 */
union U3 * func_2(int32_t  p_3, uint64_t  p_4, uint64_t  p_5, uint32_t  p_6, struct S5 * p_1066)
{ /* block id: 341 */
    VECTOR(uint16_t, 4) l_915 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), 1UL);
    VECTOR(uint8_t, 4) l_916 = (VECTOR(uint8_t, 4))(0x0AL, (VECTOR(uint8_t, 2))(0x0AL, 0UL), 0UL);
    VECTOR(int16_t, 16) l_949 = (VECTOR(int16_t, 16))(0x5BDEL, (VECTOR(int16_t, 4))(0x5BDEL, (VECTOR(int16_t, 2))(0x5BDEL, (-8L)), (-8L)), (-8L), 0x5BDEL, (-8L), (VECTOR(int16_t, 2))(0x5BDEL, (-8L)), (VECTOR(int16_t, 2))(0x5BDEL, (-8L)), 0x5BDEL, (-8L), 0x5BDEL, (-8L));
    int32_t l_959 = (-1L);
    int32_t l_963[4][5] = {{0x53BA7D74L,0x53BA7D74L,0x754461F1L,0x2CF96C72L,0x3EC8F093L},{0x53BA7D74L,0x53BA7D74L,0x754461F1L,0x2CF96C72L,0x3EC8F093L},{0x53BA7D74L,0x53BA7D74L,0x754461F1L,0x2CF96C72L,0x3EC8F093L},{0x53BA7D74L,0x53BA7D74L,0x754461F1L,0x2CF96C72L,0x3EC8F093L}};
    VECTOR(int32_t, 2) l_991 = (VECTOR(int32_t, 2))(0L, (-1L));
    VECTOR(int32_t, 16) l_995 = (VECTOR(int32_t, 16))(0x541738F1L, (VECTOR(int32_t, 4))(0x541738F1L, (VECTOR(int32_t, 2))(0x541738F1L, (-1L)), (-1L)), (-1L), 0x541738F1L, (-1L), (VECTOR(int32_t, 2))(0x541738F1L, (-1L)), (VECTOR(int32_t, 2))(0x541738F1L, (-1L)), 0x541738F1L, (-1L), 0x541738F1L, (-1L));
    VECTOR(int8_t, 2) l_1019 = (VECTOR(int8_t, 2))(0L, 0x64L);
    int64_t l_1020 = 0x1258D2C994D12271L;
    int32_t *l_1028 = &l_963[1][4];
    uint16_t *l_1039 = &p_1066->g_825;
    uint8_t *l_1044 = (void*)0;
    uint8_t *l_1045 = (void*)0;
    uint8_t *l_1046 = (void*)0;
    uint8_t *l_1047[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int16_t l_1048 = 1L;
    uint16_t *l_1049 = &p_1066->g_154.f2;
    uint8_t l_1050[5][8][5] = {{{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L}},{{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L}},{{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L}},{{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L}},{{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L},{0x72L,0x72L,0x72L,0x72L,0x72L}}};
    int32_t *l_1051 = (void*)0;
    int32_t *l_1052 = (void*)0;
    int32_t *l_1053 = &p_1066->g_567.f0;
    int32_t l_1057 = 0x56392CB7L;
    int64_t l_1062 = 1L;
    int16_t *l_1063 = (void*)0;
    int16_t *l_1064 = &l_1048;
    union U3 *l_1065 = &p_1066->g_845;
    int i, j, k;
    if (((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(p_1066->g_875.s6da7)).even | ((VECTOR(int32_t, 16))(p_1066->g_876.xxwywywzyzxyyzzz)).saa))).lo)
    { /* block id: 342 */
        int16_t l_883 = 6L;
        uint64_t *l_888 = &p_1066->g_127[1];
        VECTOR(uint16_t, 2) l_895 = (VECTOR(uint16_t, 2))(5UL, 65535UL);
        int32_t **l_926 = &p_1066->g_469[0];
        int64_t l_955 = 0x6DBC51544C49F9C2L;
        int32_t l_957 = 0x4FF11D8FL;
        int32_t *l_960 = (void*)0;
        int32_t *l_961 = (void*)0;
        int32_t *l_962[10][1] = {{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57}};
        int8_t l_964 = (-1L);
        int i, j;
lbl_958:
        for (p_1066->g_87 = (-29); (p_1066->g_87 <= 29); p_1066->g_87 = safe_add_func_uint32_t_u_u(p_1066->g_87, 5))
        { /* block id: 345 */
            uint64_t *l_887 = &p_1066->g_45[0];
            uint64_t **l_886 = &l_887;
            uint64_t *l_890[1][4] = {{&p_1066->g_127[0],&p_1066->g_127[0],&p_1066->g_127[0],&p_1066->g_127[0]}};
            uint64_t **l_889 = &l_890[0][2];
            uint8_t *l_892 = &p_1066->g_116;
            int32_t l_922 = 1L;
            union U2 *l_923 = &p_1066->g_154;
            VECTOR(int16_t, 4) l_937 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x00FAL), 0x00FAL);
            VECTOR(int16_t, 4) l_939 = (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), 8L), 8L);
            int i, j;
            if ((safe_mod_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u(p_3, ((((p_6 == l_883) , (+((*l_892) = (safe_div_func_uint64_t_u_u(((p_1066->g_891 = ((*l_889) = (l_888 = ((*l_886) = &p_5)))) == (void*)0), 0x11E8D090E625D147L))))) ^ 253UL) > ((safe_lshift_func_int16_t_s_u((-10L), ((VECTOR(uint16_t, 2))(l_895.xy)).odd)) , p_1066->g_130.x)))), FAKE_DIVERGE(p_1066->group_1_offset, get_group_id(1), 10))))
            { /* block id: 351 */
                VECTOR(uint16_t, 4) l_919 = (VECTOR(uint16_t, 4))(0x1B34L, (VECTOR(uint16_t, 2))(0x1B34L, 65535UL), 65535UL);
                union U2 **l_924 = (void*)0;
                union U2 **l_925 = &p_1066->g_156;
                int32_t *l_927 = (void*)0;
                int32_t *l_928 = &p_1066->g_57;
                int i;
                (*l_928) |= (safe_rshift_func_int16_t_s_u(p_1066->g_876.x, (((p_1066->g_535.y , (~(*p_1066->g_891))) , (((~(-6L)) , (safe_lshift_func_uint8_t_u_s((p_1066->g_616.s0 && ((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((((p_1066->g_850 , (p_1066->g_825 = ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),uint16_t,((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(0x19ABL, 65532UL)).xxxx + ((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(p_1066->g_914.s2557)) - ((VECTOR(uint16_t, 8))(l_915.yzxxwywx)).odd))).lo))).xyyy))) * ((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 2))(l_916.xw)).xyyx, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0x25L, 255UL)), 251UL, 0x2FL)))))))).zzyxwxxwywxyzzxx + ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(l_919.yxxzxywx)) + ((VECTOR(uint16_t, 4))((safe_div_func_int64_t_s_s((l_922 <= (p_1066->g_200 = ((l_923 == ((*l_925) = (void*)0)) ^ 0x84A1B487L))), 1UL)), ((VECTOR(uint16_t, 2))(65530UL)), 0x89F3L)).yzzxxwwz))).s4670105035043523))), (uint16_t)1UL, (uint16_t)p_6))).lo, ((VECTOR(uint16_t, 8))(65535UL))))).s0345152510621210, ((VECTOR(uint16_t, 16))(0xB05DL))))).hi << ((VECTOR(uint16_t, 8))(9UL))))).s1)) , l_926) != (void*)0), 1)), 65535UL)) <= l_919.w)), l_883))) || 0x5383BF4BL)) < 0x4D222EAC2ED6CBE6L)));
            }
            else
            { /* block id: 356 */
                VECTOR(int16_t, 8) l_935 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x68F4L), 0x68F4L), 0x68F4L, 0L, 0x68F4L);
                VECTOR(int16_t, 2) l_938 = (VECTOR(int16_t, 2))(1L, 0L);
                VECTOR(int16_t, 8) l_940 = (VECTOR(int16_t, 8))((-4L), (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0L), 0L), 0L, (-4L), 0L);
                int32_t *l_947 = (void*)0;
                VECTOR(int16_t, 2) l_950 = (VECTOR(int16_t, 2))(1L, 0x1407L);
                uint16_t l_956 = 0xADC3L;
                int i;
                for (p_1066->g_154.f1 = 0; (p_1066->g_154.f1 > (-13)); p_1066->g_154.f1 = safe_sub_func_uint16_t_u_u(p_1066->g_154.f1, 1))
                { /* block id: 359 */
                    int8_t *l_942 = (void*)0;
                    int8_t **l_941 = &l_942;
                    VECTOR(int16_t, 2) l_948 = (VECTOR(int16_t, 2))(0x1FC6L, 0x292AL);
                    int i;
                    l_957 ^= ((((safe_mod_func_uint16_t_u_u((safe_add_func_int16_t_s_s((((VECTOR(int16_t, 2))((!((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 2))(l_935.s13)).yyxx, ((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 2))(1L, 0x56FDL)), ((VECTOR(int16_t, 2))(0x081AL, 0L))))).yyyxyyyyxxyxyxyy, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(p_1066->g_936.xxxyxyxyyxxyxyyy)).s5298 && ((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 4))((-4L), ((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 2))(l_937.zz)).yxxyxxyy, ((VECTOR(int16_t, 4))(l_938.xyyx)).xyxyxxxw))).s1, 0x6465L, 1L)).wzyzxxzyxwxxxxxw))).sfb, ((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 4))(l_939.yyzz)).xxywxyyy, (int16_t)(-1L)))).s2620501254272263, ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 2))(l_940.s45)).yyxyxyxyyyyyxyxx, ((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 8))(0L, (l_941 == (void*)0), ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(p_1066->g_943.xyyy)) && ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(p_1066->g_944.xzwx)) && ((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 4))(p_1066->g_945.s3221)))))))), 0x5FF7L, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),int16_t,((VECTOR(int16_t, 16))(p_1066->g_946.wyyzyyxyxwxywxww)).hi, (int16_t)(((void*)0 != l_947) , ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(l_948.yyxyxyyxxxxyyxyy)).s30 == ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 16))(l_949.sf39e74a3687057b1))))).s0f, (int16_t)p_3)))))).xxyxxxyy == ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 8))(l_950.yxxxyxyy)).s42, (int16_t)(safe_add_func_uint8_t_u_u((p_6 || (safe_rshift_func_uint16_t_u_s((p_1066->g_875.sa < (((0x4EL < p_1066->g_874) <= l_883) && GROUP_DIVERGE(0, 1))), l_955))), p_5))))).yyyxyxxx))).s7), (int16_t)l_948.x))).s37 && ((VECTOR(int16_t, 2))(0x6497L))))) && ((VECTOR(int16_t, 2))(0x790CL))))), 4L)).hi))), (-1L), 0x008BL)), ((VECTOR(int16_t, 8))(0x3CE9L))))).s6632252640276230))).hi, (int16_t)l_956))) && ((VECTOR(int16_t, 8))(0x17ADL))))).s7325377671334523 && ((VECTOR(int16_t, 16))(0L)))))))).sb2b1, (int16_t)0x1ED6L))).odd, (int16_t)p_1066->g_606.z))), ((VECTOR(int16_t, 2))(0L))))).yyyyxxxxxyyyyyyy, ((VECTOR(int16_t, 16))(0x5DB2L))))), ((VECTOR(int16_t, 16))(0L))))).s18))).xxyx))).yzxwyyzyyxyxwzxy))).s8964))) & ((VECTOR(int16_t, 4))(2L))))).wxwxyxyy < ((VECTOR(int16_t, 8))(0x7724L))))).hi, ((VECTOR(int16_t, 4))(0x644EL)), ((VECTOR(int16_t, 4))(0x282BL))))) && ((VECTOR(int16_t, 4))((-1L)))))).odd))).hi , 0x769AL), 0UL)), p_1066->g_606.w)) != 4294967295UL) | p_5) || 0x2767L);
                    if (l_955)
                        break;
                    if (p_1066->g_87)
                        goto lbl_958;
                }
            }
        }
        --p_1066->g_965;
    }
    else
    { /* block id: 367 */
        uint32_t l_970[5];
        int64_t *l_977 = &p_1066->g_15.f0;
        union U2 *l_980 = &p_1066->g_154;
        VECTOR(int32_t, 2) l_988 = (VECTOR(int32_t, 2))(0x7C17CFF9L, 9L);
        VECTOR(int32_t, 2) l_999 = (VECTOR(int32_t, 2))(0x4F7C10C1L, 0x4C85F7D8L);
        uint8_t l_1021 = 0UL;
        uint32_t **l_1026 = &p_1066->g_1025[0][9][2];
        int i;
        for (i = 0; i < 5; i++)
            l_970[i] = 0xA5B0CCB1L;
        for (p_1066->g_66 = 0; (p_1066->g_66 <= (-21)); p_1066->g_66 = safe_sub_func_uint8_t_u_u(p_1066->g_66, 3))
        { /* block id: 370 */
            uint32_t l_986 = 0xE4FB759CL;
            uint32_t *l_987 = &p_1066->g_200;
            VECTOR(int32_t, 16) l_990 = (VECTOR(int32_t, 16))(0x2BD36395L, (VECTOR(int32_t, 4))(0x2BD36395L, (VECTOR(int32_t, 2))(0x2BD36395L, 2L), 2L), 2L, 0x2BD36395L, 2L, (VECTOR(int32_t, 2))(0x2BD36395L, 2L), (VECTOR(int32_t, 2))(0x2BD36395L, 2L), 0x2BD36395L, 2L, 0x2BD36395L, 2L);
            VECTOR(int32_t, 8) l_992 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), 1L, 1L, 1L);
            VECTOR(int32_t, 4) l_993 = (VECTOR(int32_t, 4))(0x5B3C9EADL, (VECTOR(int32_t, 2))(0x5B3C9EADL, 0x6624310FL), 0x6624310FL);
            VECTOR(int32_t, 2) l_994 = (VECTOR(int32_t, 2))(0x531EB70EL, (-8L));
            VECTOR(int32_t, 16) l_997 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x2D5FE960L), 0x2D5FE960L), 0x2D5FE960L, (-1L), 0x2D5FE960L, (VECTOR(int32_t, 2))((-1L), 0x2D5FE960L), (VECTOR(int32_t, 2))((-1L), 0x2D5FE960L), (-1L), 0x2D5FE960L, (-1L), 0x2D5FE960L);
            VECTOR(int32_t, 4) l_998 = (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x6106001DL), 0x6106001DL);
            union U1 l_1004[1] = {{0x2C3A74BEL}};
            int8_t *l_1005[10] = {&p_1066->g_70[4][4][1],&p_1066->g_72,&p_1066->g_70[4][4][1],&p_1066->g_70[4][4][1],&p_1066->g_72,&p_1066->g_70[4][4][1],&p_1066->g_70[4][4][1],&p_1066->g_72,&p_1066->g_70[4][4][1],&p_1066->g_70[4][4][1]};
            uint64_t l_1007 = 9UL;
            int32_t *l_1030 = (void*)0;
            int i;
            if ((((l_970[3] & (safe_lshift_func_uint8_t_u_s((((FAKE_DIVERGE(p_1066->global_1_offset, get_global_id(1), 10) , (safe_lshift_func_int16_t_s_s(((((((VECTOR(int16_t, 16))(0x6ADDL, (safe_lshift_func_int16_t_s_u(((l_977 == p_1066->g_425) != (p_3 < (p_1066->g_307.s9 = ((l_980 == ((~((safe_mod_func_int32_t_s_s(((l_970[3] > (((VECTOR(uint8_t, 8))(p_1066->g_983.xyxwwxxz)).s6 != p_3)) | ((safe_add_func_uint32_t_u_u(((*l_987) = l_986), ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(l_988.yx)) <= ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 8))(p_1066->g_989.s50062617)).s61, ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(l_990.s23a7786df07fa6da)).s760a | ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(l_991.xy)).yxxyyyxxyyxyyxxx, ((VECTOR(int32_t, 4))(l_992.s4426)).yxxzwzwwzyxyxwzy, ((VECTOR(int32_t, 16))(l_993.wywwyxxyyzxyxxwy))))).s79e0))).lo && ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(0L, 0x2EDA9C37L)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(l_994.xyyyxxxy)).s20, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 8))(l_995.s360c05af)).lo, ((VECTOR(int32_t, 16))(p_1066->g_996.s0e8ea95c0d826fa3)).sf0d1))) | ((VECTOR(int32_t, 16))(l_997.sd2f111696ed49752)).sbd0b))).odd > ((VECTOR(int32_t, 16))(l_998.zwzxzxwyyzyxywyw)).sb5))), 1L, (-1L), ((VECTOR(int32_t, 4))(l_999.xxyx)))).s56, ((VECTOR(int32_t, 8))((safe_add_func_uint32_t_u_u((l_992.s0 ^= ((FAKE_DIVERGE(p_1066->group_2_offset, get_group_id(2), 10) , (safe_lshift_func_uint16_t_u_u((l_1004[0] , 0UL), 8))) <= 0x92L)), 0UL)), (-10L), 0x1CDB1E26L, ((VECTOR(int32_t, 2))(0x22C8A881L)), ((VECTOR(int32_t, 2))(5L)), 0x5CEF5BBFL)).s53))), (int32_t)l_994.y))).xxxxyyyyyyxyyxxy && ((VECTOR(int32_t, 16))(0x36D95548L))))).lo, (int32_t)(-4L)))).s21 && ((VECTOR(int32_t, 2))(1L))))).xxxx < ((VECTOR(int32_t, 4))(0x6D446917L))))), ((VECTOR(int32_t, 2))((-8L))), 5L, 0x3FAF2068L)).s57 <= ((VECTOR(int32_t, 2))(1L))))).yxyx && ((VECTOR(int32_t, 4))(0x51F89E27L))))).odd > ((VECTOR(int32_t, 2))(0x500E59C5L))))) && ((VECTOR(int32_t, 2))((-4L)))))), 0L, 5L)), l_992.s5, ((VECTOR(int32_t, 2))(0x5D0D12F0L)), (-4L), 4L, 0x403C2770L, ((VECTOR(int32_t, 4))(0x08285FF7L)), 0x6C986AB6L, 0x0466933EL)).s10, ((VECTOR(int32_t, 2))(1L))))).xxxxyxxx, ((VECTOR(int32_t, 8))(0x16FA1355L)), ((VECTOR(int32_t, 8))(1L))))).even, ((VECTOR(int32_t, 4))(0x5D860D7BL))))).yywwxxzxwywzywxz & ((VECTOR(int32_t, 16))(0x0E56DBEEL))))) && ((VECTOR(int32_t, 16))(0L))))).s19))), ((VECTOR(int32_t, 2))(0x777DFF79L)), ((VECTOR(int32_t, 2))(0x0AE1E892L))))))))))).odd)) || p_6)), 6UL)) ^ p_3)) , (void*)0)) <= 0x700BL)))), 13)), ((VECTOR(int16_t, 2))((-1L))), p_5, p_4, (-1L), 0x05AFL, 4L, p_1066->g_1006, 0x30E3L, 0x2B32L, (-1L), p_5, 0x2A29L, (-1L))).s8 & p_1066->g_996.sc) , l_999.x) , GROUP_DIVERGE(0, 1)) ^ (*p_1066->g_891)), 5))) ^ (-7L)) , GROUP_DIVERGE(1, 1)), l_1007))) , l_963[3][3]) >= p_6))
            { /* block id: 374 */
                int32_t *l_1010 = (void*)0;
                int32_t l_1018 = (-5L);
                for (p_1066->g_223.f2 = (-26); (p_1066->g_223.f2 == 31); ++p_1066->g_223.f2)
                { /* block id: 377 */
                    int32_t **l_1011[7][6][6] = {{{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0}},{{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0}},{{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0}},{{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0}},{{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0}},{{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0}},{{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0},{(void*)0,&l_1010,&p_1066->g_64[0][0][0],&l_1010,&p_1066->g_64[0][5][0],(void*)0}}};
                    int i, j, k;
                    l_1010 = l_1010;
                    (*p_1066->g_297) = l_997.s1;
                    (*p_1066->g_297) = (safe_mod_func_int32_t_s_s((l_999.x < (safe_rshift_func_int16_t_s_u(((safe_div_func_uint16_t_u_u(l_970[2], p_5)) ^ p_3), 10))), (*p_1066->g_297)));
                    l_1021--;
                }
            }
            else
            { /* block id: 383 */
                int32_t **l_1029[10][8] = {{&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0]},{&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0]},{&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0]},{&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0]},{&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0]},{&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0]},{&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0]},{&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0]},{&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0]},{&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][4][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][3][0],&p_1066->g_64[0][4][0]}};
                int i, j;
                (*p_1066->g_1027) = (l_1026 = p_1066->g_1024[2][0][1]);
                l_1030 = l_1028;
            }
        }
    }
    (*p_1066->g_297) = (safe_sub_func_int32_t_s_s(((*l_1053) = (safe_mul_func_uint16_t_u_u((((safe_mod_func_int16_t_s_s(p_6, (safe_rshift_func_int8_t_s_u((FAKE_DIVERGE(p_1066->group_1_offset, get_group_id(1), 10) == ((*l_1049) = ((VECTOR(uint16_t, 16))(65535UL, 0x71FEL, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0x0E1AL, 65528UL)), 0UL, ((VECTOR(uint16_t, 4))(65535UL, 65535UL, 0x363BL, 0x8848L)), 0x8808L)), ((*l_1039)--), ((p_6 <= (l_991.y = (p_6 != ((!(((safe_add_func_uint16_t_u_u((l_1028 != l_1028), ((p_4 , (((VECTOR(int16_t, 8))((p_4 , ((((*l_1028) = (*l_1028)) && (p_1066->g_983.z = (((*p_1066->g_891) = (*p_1066->g_891)) >= (*l_1028)))) | GROUP_DIVERGE(1, 1))), l_1048, 0x43BFL, ((VECTOR(int16_t, 2))(0x7EF4L)), ((VECTOR(int16_t, 2))(0x0FE9L)), 0L)).s5 || (*l_1028))) && GROUP_DIVERGE(1, 1)))) == p_1066->g_661[0][2]) | p_4)) != l_915.w)))) == (-1L)), ((VECTOR(uint16_t, 4))(0x0D31L)))).sf)), 0)))) < l_1050[2][0][4]) >= GROUP_DIVERGE(1, 1)), p_1066->g_641.sf))), p_1066->g_606.w));
    (*l_1028) = ((((l_1051 != &p_3) <= (p_6 == (safe_sub_func_int8_t_s_s((*l_1053), (safe_unary_minus_func_int16_t_s(l_1057)))))) == ((*l_1064) |= (((p_1066->g_207.z |= (*l_1028)) || (safe_rshift_func_uint8_t_u_s(p_5, (safe_mod_func_int16_t_s_s((0x114CL <= (((p_1066->g_983.z = GROUP_DIVERGE(0, 1)) > ((void*)0 != &p_1066->g_63)) & 0UL)), 65535UL))))) | l_1062))) < (*l_1028));
    return l_1065;
}


/* ------------------------------------------ */
/* 
 * reads : p_1066->g_850 p_1066->g_725 p_1066->g_606 p_1066->g_297 p_1066->g_298 p_1066->g_155 p_1066->g_156 p_1066->g_870 p_1066->g_456 p_1066->g_15
 * writes: p_1066->g_200 p_1066->g_298 p_1066->g_64 p_1066->g_456
 */
union U3  func_8(union U3 * p_9, union U3 * p_10, uint64_t  p_11, union U1  p_12, union U3 * p_13, struct S5 * p_1066)
{ /* block id: 320 */
    int32_t **l_851 = (void*)0;
    int32_t **l_853 = &p_1066->g_64[0][0][0];
    int32_t ***l_852 = &l_853;
    int64_t *l_854 = (void*)0;
    int64_t *l_855[7][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint32_t *l_856 = &p_1066->g_200;
    uint32_t l_859[1];
    uint32_t *l_861[7] = {(void*)0,&p_1066->g_661[0][2],(void*)0,(void*)0,&p_1066->g_661[0][2],(void*)0,(void*)0};
    uint32_t **l_860 = &l_861[4];
    int32_t *l_862 = (void*)0;
    int32_t l_863 = 0x7582AD54L;
    union U3 l_873 = {0x60D047BDF30C0212L};
    int i, j;
    for (i = 0; i < 1; i++)
        l_859[i] = 0xD24C6C7BL;
    l_863 ^= (((p_12.f1 = ((p_1066->g_850 , l_851) != ((*l_852) = l_851))) == (p_11 > ((*l_856) = 0x4AC0282FL))) <= ((VECTOR(int64_t, 4))(((((void*)0 == p_1066->g_725) & ((safe_lshift_func_uint16_t_u_u(l_859[0], 5)) != (((*l_860) = l_856) == l_856))) && p_1066->g_606.w), 0x035A13768A5C063EL, (-4L), 1L)).x);
    for (p_12.f0 = 6; (p_12.f0 < (-8)); p_12.f0--)
    { /* block id: 328 */
        int32_t l_868 = (-1L);
        union U2 l_869 = {0x72AAL};
        (*p_1066->g_297) |= (safe_mul_func_int8_t_s_s(1L, p_12.f0));
        (*p_1066->g_297) = ((void*)0 != (*p_1066->g_155));
        if (l_868)
            continue;
        (*p_1066->g_870) = (l_869 , &l_868);
    }
    for (p_1066->g_456 = (-7); (p_1066->g_456 == 20); p_1066->g_456 = safe_add_func_int64_t_s_s(p_1066->g_456, 9))
    { /* block id: 336 */
        return l_873;
    }
    return (*p_9);
}


/* ------------------------------------------ */
/* 
 * reads : p_1066->g_15.f0 p_1066->g_45 p_1066->g_14 p_1066->g_15 p_1066->g_60 p_1066->g_61 p_1066->g_57 p_1066->g_63 p_1066->g_66 p_1066->g_64 p_1066->g_91 p_1066->g_91.f0 p_1066->g_117 p_1066->g_70 p_1066->g_93 p_1066->g_128 p_1066->g_129 p_1066->g_130 p_1066->g_141 p_1066->g_72 p_1066->g_116 p_1066->g_99 p_1066->g_87 p_1066->g_155 p_1066->g_169 p_1066->g_169.f0 p_1066->g_176 p_1066->g_181 p_1066->g_156 p_1066->g_200 p_1066->g_207 p_1066->g_215 p_1066->g_303 p_1066->g_297 p_1066->g_363 p_1066->g_265 p_1066->g_154.f1 p_1066->g_377 p_1066->g_386 p_1066->g_389 p_1066->g_400 p_1066->g_298 p_1066->g_154.f0 p_1066->g_425 p_1066->g_309 p_1066->g_456 p_1066->g_481 p_1066->g_496 p_1066->g_500 p_1066->g_501 p_1066->g_535 p_1066->g_310 p_1066->g_428 p_1066->g_424 p_1066->g_127 p_1066->g_567 p_1066->g_223.f0 p_1066->g_606 p_1066->g_468 p_1066->g_469 p_1066->g_616 p_1066->g_169.f2 p_1066->g_638 p_1066->g_640 p_1066->g_641 p_1066->g_661 p_1066->g_567.f0 p_1066->g_260 p_1066->g_729 p_1066->g_733 p_1066->g_758 p_1066->g_783 p_1066->g_809 p_1066->g_810 p_1066->g_825
 * writes: p_1066->g_45 p_1066->g_57 p_1066->g_64 p_1066->g_66 p_1066->g_70 p_1066->g_72 p_1066->g_87 p_1066->g_93 p_1066->g_99 p_1066->g_116 p_1066->g_127 p_1066->g_15.f0 p_1066->g_128 p_1066->g_156 p_1066->g_200 p_1066->g_91.f1 p_1066->g_298 p_1066->g_154.f1 p_1066->g_377 p_1066->g_154.f0 p_1066->g_428 p_1066->g_456 p_1066->g_265 p_1066->g_424 p_1066->g_154.f2 p_1066->g_223.f0 p_1066->g_310 p_1066->g_169.f2 p_1066->g_567.f0 p_1066->g_260 p_1066->g_223.f2 p_1066->g_91.f0 p_1066->g_169.f0 p_1066->g_303 p_1066->g_733 p_1066->g_825 p_1066->g_783
 */
union U3 * func_16(uint64_t  p_17, struct S5 * p_1066)
{ /* block id: 5 */
    union U2 l_19 = {-2L};
    union U3 *l_20 = (void*)0;
    int32_t l_54 = 0x4983CA30L;
    union U3 *l_55 = (void*)0;
    int32_t l_790 = 0x43CDC3FDL;
    int32_t l_791 = 1L;
    VECTOR(uint32_t, 2) l_814 = (VECTOR(uint32_t, 2))(0x33CB505AL, 4UL);
    uint32_t *l_816 = (void*)0;
    uint32_t **l_815 = &l_816;
    uint8_t l_836 = 0UL;
    int32_t l_837 = 0x13CE7153L;
    int i;
    if ((&p_1066->g_15 == (void*)0))
    { /* block id: 6 */
        uint64_t *l_43 = (void*)0;
        uint64_t *l_44 = &p_1066->g_45[0];
        uint32_t *l_92 = &p_1066->g_93;
        union U3 **l_757[2];
        int32_t l_785 = (-5L);
        int32_t l_789 = 0L;
        uint32_t l_792 = 4294967293UL;
        int i;
        for (i = 0; i < 2; i++)
            l_757[i] = (void*)0;
        if (((l_19 , (l_20 = l_20)) != (l_55 = func_21((safe_div_func_int32_t_s_s((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 8))(func_28(func_34(func_37((safe_lshift_func_int8_t_s_s((p_1066->g_15.f0 & l_19.f0), (((*l_92) = (((*l_44) = p_1066->g_15.f0) && ((safe_rshift_func_int8_t_s_u((func_48(l_54, l_43, p_1066->g_45[0], l_55, p_1066->g_15.f0, p_1066) , 2L), GROUP_DIVERGE(1, 1))) ^ p_17))) , p_1066->g_91.f0))), &p_1066->g_15, l_55, p_1066), l_55, p_1066), l_55, p_1066->g_661[0][2], p_1066->g_14, l_19.f0, p_1066))).s5, p_17)), p_17)), p_1066->g_14, p_1066))))
        { /* block id: 269 */
            (*p_1066->g_758) = &l_54;
        }
        else
        { /* block id: 271 */
            int8_t l_784 = (-10L);
            int32_t *l_788[7];
            int i;
            for (i = 0; i < 7; i++)
                l_788[i] = &l_54;
            for (p_1066->g_169.f0 = (-19); (p_1066->g_169.f0 <= (-19)); p_1066->g_169.f0 = safe_add_func_int8_t_s_s(p_1066->g_169.f0, 4))
            { /* block id: 274 */
                uint32_t l_763 = 0x5E6D0841L;
                int8_t *l_774 = (void*)0;
                int8_t *l_775 = (void*)0;
                int8_t *l_776 = (void*)0;
                int8_t *l_777 = (void*)0;
                int8_t *l_778 = &p_1066->g_72;
                int8_t *l_779 = (void*)0;
                int8_t *l_780 = &p_1066->g_70[4][4][1];
                int32_t *l_781 = &l_54;
                int8_t *l_782[10][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                int i, j;
                (*p_1066->g_297) = (p_17 ^ (p_1066->g_45[0] > (safe_mod_func_int16_t_s_s(l_763, (p_1066->g_733.x = (safe_mod_func_uint8_t_u_u((safe_div_func_int32_t_s_s(((((safe_add_func_int8_t_s_s((FAKE_DIVERGE(p_1066->local_2_offset, get_local_id(2), 10) ^ (p_1066->g_303.x = ((safe_lshift_func_int16_t_s_u((((*l_780) ^= ((*l_778) = (safe_mul_func_int8_t_s_s(p_17, FAKE_DIVERGE(p_1066->group_0_offset, get_group_id(0), 10))))) != ((void*)0 != &p_1066->g_87)), 8)) > ((*l_781) = 0x463867D7L)))), ((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 8))(p_1066->g_783.ywwxwxyw)), (int8_t)p_1066->g_535.y, (int8_t)(l_784 ^ l_785)))), ((VECTOR(int8_t, 8))(0x6AL))))).s1)) | p_1066->g_481.s3) , (*l_781)) && l_784), l_784)), l_19.f0)))))));
                if ((*l_781))
                    break;
                (*l_781) |= (0UL | (safe_lshift_func_uint8_t_u_u(((void*)0 != l_788[2]), p_17)));
                --l_792;
            }
        }
    }
    else
    { /* block id: 286 */
        int16_t l_803 = 1L;
        int32_t *l_828 = &p_1066->g_57;
        int32_t **l_829 = &p_1066->g_64[0][0][0];
        int8_t *l_838[1][5][7] = {{{(void*)0,&p_1066->g_70[1][0][2],(void*)0,(void*)0,&p_1066->g_70[1][0][2],(void*)0,(void*)0},{(void*)0,&p_1066->g_70[1][0][2],(void*)0,(void*)0,&p_1066->g_70[1][0][2],(void*)0,(void*)0},{(void*)0,&p_1066->g_70[1][0][2],(void*)0,(void*)0,&p_1066->g_70[1][0][2],(void*)0,(void*)0},{(void*)0,&p_1066->g_70[1][0][2],(void*)0,(void*)0,&p_1066->g_70[1][0][2],(void*)0,(void*)0},{(void*)0,&p_1066->g_70[1][0][2],(void*)0,(void*)0,&p_1066->g_70[1][0][2],(void*)0,(void*)0}}};
        int i, j, k;
        for (p_1066->g_87 = 0; (p_1066->g_87 >= 26); p_1066->g_87 = safe_add_func_int32_t_s_s(p_1066->g_87, 2))
        { /* block id: 289 */
            int32_t **l_797 = (void*)0;
            int32_t **l_798 = &p_1066->g_64[0][0][0];
            uint32_t *l_799 = &p_1066->g_200;
            int32_t *l_800 = (void*)0;
            int32_t *l_801 = (void*)0;
            int32_t *l_802[1][7][7] = {{{&p_1066->g_223.f0,&p_1066->g_169.f0,&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_169.f0,&p_1066->g_223.f0},{&p_1066->g_223.f0,&p_1066->g_169.f0,&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_169.f0,&p_1066->g_223.f0},{&p_1066->g_223.f0,&p_1066->g_169.f0,&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_169.f0,&p_1066->g_223.f0},{&p_1066->g_223.f0,&p_1066->g_169.f0,&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_169.f0,&p_1066->g_223.f0},{&p_1066->g_223.f0,&p_1066->g_169.f0,&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_169.f0,&p_1066->g_223.f0},{&p_1066->g_223.f0,&p_1066->g_169.f0,&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_169.f0,&p_1066->g_223.f0},{&p_1066->g_223.f0,&p_1066->g_169.f0,&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_169.f0,&p_1066->g_223.f0}}};
            uint32_t **l_808 = (void*)0;
            int16_t *l_811[2];
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_811[i] = (void*)0;
            l_791 ^= ((VECTOR(int32_t, 2))(0x026E6C13L, 0x4F79013EL)).hi;
            (*l_798) = &l_54;
            (*p_1066->g_297) ^= (l_803 = (p_17 >= ((void*)0 == l_799)));
            if ((((safe_lshift_func_int8_t_s_s((l_808 != (((VECTOR(uint64_t, 16))(min(((VECTOR(uint64_t, 2))(18446744073709551612UL, 18446744073709551615UL)).yyxyyxyyxxxyxxxx, (uint64_t)p_1066->g_141.s8))).s1 , p_1066->g_809)), 1)) | ((((VECTOR(int16_t, 8))(p_1066->g_810.s46262077)).s4 != (p_1066->g_154.f0 = p_1066->g_45[0])) && (((l_803 < ((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 16))(l_814.xxxyxxyxxxyyyxyx)).even, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(4294967288UL, 0UL)), 0UL, 5UL)).zxywwwzy))).s0) == (l_815 == (void*)0)) && 0UL))) == (safe_rshift_func_int8_t_s_u(((safe_add_func_uint16_t_u_u((((p_1066->g_783.x & 4294967293UL) == l_803) & p_1066->g_66), p_1066->g_181.sb)) & 0UL), 0))))
            { /* block id: 295 */
                for (p_1066->g_99 = 28; (p_1066->g_99 > 55); p_1066->g_99 = safe_add_func_int32_t_s_s(p_1066->g_99, 6))
                { /* block id: 298 */
                    p_1066->g_825++;
                }
                if ((*p_1066->g_297))
                    break;
                (*l_798) = (void*)0;
            }
            else
            { /* block id: 303 */
                return &p_1066->g_15;
            }
        }
        (*l_829) = l_828;
        (*p_1066->g_297) ^= ((((+((safe_mod_func_int8_t_s_s((safe_add_func_uint16_t_u_u(((p_1066->g_93 > ((((*l_828) , (!(p_1066->g_93 <= ((((VECTOR(int16_t, 8))((~((VECTOR(int16_t, 2))(0x1A8DL, 0x02CFL)).yyxxyxyx))).s1 ^ 0xF068L) , (-6L))))) , (*l_828)) ^ ((p_1066->g_265.y | ((safe_mul_func_uint8_t_u_u(l_836, (p_1066->g_783.y &= l_837))) > p_17)) , (-4L)))) ^ l_54), p_17)), p_1066->g_72)) & 0UL)) , l_828) == &p_1066->g_200) != 0x048837368E7882A1L);
    }
    for (p_1066->g_93 = 0; (p_1066->g_93 < 58); p_1066->g_93 = safe_add_func_int16_t_s_s(p_1066->g_93, 4))
    { /* block id: 313 */
        (*p_1066->g_297) &= p_17;
    }
    return l_20;
}


/* ------------------------------------------ */
/* 
 * reads : p_1066->g_297 p_1066->g_127 p_1066->g_310
 * writes: p_1066->g_298
 */
union U3 * func_21(int8_t  p_22, union U3 * p_23, struct S5 * p_1066)
{ /* block id: 262 */
    VECTOR(int8_t, 8) l_741 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x42L), 0x42L), 0x42L, 1L, 0x42L);
    union U1 l_742[2] = {{0x4BB0B873L},{0x4BB0B873L}};
    uint32_t *l_743 = &p_1066->g_93;
    int64_t *l_754 = &l_742[1].f1;
    union U3 *l_756[7][7] = {{(void*)0,(void*)0,&p_1066->g_15,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1066->g_15,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1066->g_15,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1066->g_15,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1066->g_15,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1066->g_15,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1066->g_15,(void*)0,(void*)0,(void*)0,(void*)0}};
    int i, j;
lbl_755:
    (*p_1066->g_297) = l_741.s2;
    (*p_1066->g_297) = ((((~(((((~(&p_1066->g_93 != (l_742[1] , l_743))) && ((safe_sub_func_int32_t_s_s(l_741.s0, ((safe_div_func_int16_t_s_s((safe_mod_func_int16_t_s_s((safe_add_func_int16_t_s_s((safe_div_func_int32_t_s_s((((*l_754) = (((((0xD7899413L < ((l_742[1] , (l_741.s0 <= GROUP_DIVERGE(2, 1))) ^ ((-8L) == 255UL))) == p_22) < p_22) == p_22) & l_741.s2)) <= 0UL), p_22)), p_22)), p_1066->g_127[1])), 0x130AL)) | 0x2618001655B34511L))) ^ p_1066->g_310.s2)) > FAKE_DIVERGE(p_1066->global_1_offset, get_global_id(1), 10)) && GROUP_DIVERGE(2, 1)) || l_741.s5)) == p_22) <= l_741.s7) , (-1L));
    if (p_22)
        goto lbl_755;
    return l_756[1][4];
}


/* ------------------------------------------ */
/* 
 * reads : p_1066->g_169.f0 p_1066->g_733
 * writes: p_1066->g_169.f0
 */
VECTOR(int32_t, 8)  func_28(int8_t  p_29, union U3 * p_30, uint64_t  p_31, union U3 * p_32, int64_t  p_33, struct S5 * p_1066)
{ /* block id: 254 */
    uint8_t l_735 = 0UL;
    int32_t *l_736 = (void*)0;
    int32_t l_739 = 0L;
    VECTOR(int32_t, 2) l_740 = (VECTOR(int32_t, 2))(0L, (-1L));
    int i;
    for (p_1066->g_169.f0 = (-23); (p_1066->g_169.f0 < (-20)); p_1066->g_169.f0 = safe_add_func_uint32_t_u_u(p_1066->g_169.f0, 6))
    { /* block id: 257 */
        int32_t *l_734 = (void*)0;
        uint16_t *l_737[4][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t l_738 = 0x15662D68L;
        int i, j;
        l_739 = (((VECTOR(uint16_t, 2))(p_1066->g_733.xy)).hi | (~(l_738 ^= (l_734 != (l_735 , l_736)))));
    }
    return l_740.xxxxyyyx;
}


/* ------------------------------------------ */
/* 
 * reads : p_1066->g_223.f0 p_1066->g_60 p_1066->g_297 p_1066->g_87 p_1066->g_638 p_1066->g_640 p_1066->g_641 p_1066->g_66 p_1066->g_661 p_1066->g_57 p_1066->g_567.f0 p_1066->g_260 p_1066->g_116 p_1066->g_389 p_1066->g_14 p_1066->g_15 p_1066->g_424 p_1066->g_606 p_1066->g_729 p_1066->g_64 p_1066->g_127 p_1066->g_428 p_1066->g_468 p_1066->g_469 p_1066->g_616 p_1066->g_169.f2
 * writes: p_1066->g_428 p_1066->g_223.f0 p_1066->g_200 p_1066->g_298 p_1066->g_169.f2 p_1066->g_87 p_1066->g_567.f0 p_1066->g_57 p_1066->g_260 p_1066->g_223.f2 p_1066->g_91.f1 p_1066->g_91.f0 p_1066->g_424 p_1066->g_64 p_1066->g_310
 */
int8_t  func_34(union U3  p_35, union U3 * p_36, struct S5 * p_1066)
{ /* block id: 187 */
    uint32_t *l_599 = &p_1066->g_200;
    int32_t l_603 = 0x74AE3365L;
    union U3 l_611 = {3L};
    VECTOR(int8_t, 8) l_614 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x3FL), 0x3FL), 0x3FL, 1L, 0x3FL);
    int32_t **l_662 = &p_1066->g_64[0][1][0];
    VECTOR(int32_t, 4) l_671 = (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), (-1L)), (-1L));
    int16_t *l_700 = &p_1066->g_87;
    int8_t *l_706[6] = {(void*)0,&p_1066->g_72,(void*)0,(void*)0,&p_1066->g_72,(void*)0};
    VECTOR(int32_t, 4) l_709 = (VECTOR(int32_t, 4))(0x183C2648L, (VECTOR(int32_t, 2))(0x183C2648L, (-5L)), (-5L));
    uint32_t *l_726 = &p_1066->g_661[0][2];
    VECTOR(int32_t, 8) l_730 = (VECTOR(int32_t, 8))(0x01C4FF5BL, (VECTOR(int32_t, 4))(0x01C4FF5BL, (VECTOR(int32_t, 2))(0x01C4FF5BL, (-1L)), (-1L)), (-1L), 0x01C4FF5BL, (-1L));
    int i;
lbl_728:
    for (p_1066->g_428 = 3; (p_1066->g_428 > 13); p_1066->g_428 = safe_add_func_int32_t_s_s(p_1066->g_428, 2))
    { /* block id: 190 */
        uint32_t *l_601[10];
        uint32_t **l_600 = &l_601[6];
        int32_t *l_602 = &p_1066->g_223.f0;
        VECTOR(int8_t, 8) l_615 = (VECTOR(int8_t, 8))(2L, (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 0x56L), 0x56L), 0x56L, 2L, 0x56L);
        int8_t *l_617 = (void*)0;
        int8_t *l_618 = (void*)0;
        int8_t *l_619[6][2] = {{&p_1066->g_70[2][3][1],&p_1066->g_70[2][3][1]},{&p_1066->g_70[2][3][1],&p_1066->g_70[2][3][1]},{&p_1066->g_70[2][3][1],&p_1066->g_70[2][3][1]},{&p_1066->g_70[2][3][1],&p_1066->g_70[2][3][1]},{&p_1066->g_70[2][3][1],&p_1066->g_70[2][3][1]},{&p_1066->g_70[2][3][1],&p_1066->g_70[2][3][1]}};
        int32_t **l_620 = &l_602;
        int i, j;
        for (i = 0; i < 10; i++)
            l_601[i] = (void*)0;
        (*l_620) = (((+(safe_mul_func_uint8_t_u_u(((l_603 = ((*l_602) &= (l_599 == ((*l_600) = l_599)))) < ((safe_lshift_func_uint8_t_u_u((0x2CD4E9D5L | ((*l_599) = p_1066->g_60.s5)), ((VECTOR(uint8_t, 2))(247UL, 255UL)).even)) | ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(p_1066->g_606.wyxyxzyyyyzzyxyw)).s8844 >= ((VECTOR(int32_t, 4))(((safe_mul_func_uint16_t_u_u(((safe_div_func_int8_t_s_s((l_611 , (p_1066->g_310.s5 = (((*p_1066->g_468) != (void*)0) || (safe_rshift_func_uint8_t_u_s((0UL >= ((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 16))(l_614.s5026433200162057)), ((VECTOR(int8_t, 2))(l_615.s07)).xxxyyxxyxxxyxyyx))).s5), ((VECTOR(int8_t, 2))(p_1066->g_616.s65)).even))))), p_1066->g_87)) || p_1066->g_127[1]), 0x0348L)) < 0x23E2DE3EL), ((VECTOR(int32_t, 2))(0x20E44FFBL)), 3L))))).y)), GROUP_DIVERGE(1, 1)))) | GROUP_DIVERGE(2, 1)) , l_601[6]);
        (*p_1066->g_297) = 0x5BA42D3BL;
    }
    for (p_1066->g_169.f2 = (-4); (p_1066->g_169.f2 <= 39); p_1066->g_169.f2 = safe_add_func_uint16_t_u_u(p_1066->g_169.f2, 5))
    { /* block id: 201 */
        int16_t l_623 = 0x4456L;
        uint64_t l_660 = 18446744073709551615UL;
        int32_t l_663 = 0x593F11DCL;
        int32_t l_673 = (-1L);
        VECTOR(int16_t, 8) l_716 = (VECTOR(int16_t, 8))(0x03F1L, (VECTOR(int16_t, 4))(0x03F1L, (VECTOR(int16_t, 2))(0x03F1L, 0x52A7L), 0x52A7L), 0x52A7L, 0x03F1L, 0x52A7L);
        int i;
        l_623 = (~p_35.f0);
        if (l_614.s6)
            break;
        if (l_623)
            continue;
        for (p_1066->g_87 = 0; (p_1066->g_87 != (-18)); p_1066->g_87 = safe_sub_func_uint64_t_u_u(p_1066->g_87, 5))
        { /* block id: 207 */
            uint32_t l_631 = 0x769B866DL;
            uint32_t l_664 = 0xE46E5814L;
            int32_t l_665 = 0x0F14AED7L;
            int32_t l_672[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
            uint32_t l_674 = 0x4210AF4DL;
            VECTOR(uint64_t, 2) l_689 = (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x338C645DD713FAA5L);
            VECTOR(uint64_t, 8) l_690 = (VECTOR(uint64_t, 8))(8UL, (VECTOR(uint64_t, 4))(8UL, (VECTOR(uint64_t, 2))(8UL, 0xCB4DB049FAEF06EAL), 0xCB4DB049FAEF06EAL), 0xCB4DB049FAEF06EAL, 8UL, 0xCB4DB049FAEF06EAL);
            int i;
            if (p_35.f0)
            { /* block id: 208 */
                int32_t *l_626 = &p_1066->g_57;
                int32_t *l_627 = &p_1066->g_567.f0;
                int32_t *l_628 = (void*)0;
                int32_t *l_629 = &p_1066->g_223.f0;
                int32_t *l_630[4][3][3] = {{{&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0},{&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0},{&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0}},{{&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0},{&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0},{&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0}},{{&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0},{&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0},{&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0}},{{&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0},{&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0},{&p_1066->g_223.f0,&p_1066->g_223.f0,&p_1066->g_223.f0}}};
                VECTOR(int8_t, 4) l_639 = (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 0x63L), 0x63L);
                int i, j, k;
                if (p_35.f0)
                    break;
                ++l_631;
                (*l_629) = (((safe_div_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 4))(p_1066->g_638.s63b6)).odd, ((VECTOR(int8_t, 2))(l_639.zz))))).even, ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(0x1EL, 0x2EL)).yyyx != ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(p_1066->g_640.yxyy)).zxyzyzwx != ((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 4))((0x26568A91DA652C63L < ((((l_663 |= ((*l_626) |= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(p_1066->g_641.s63)), ((*l_627) = (safe_rshift_func_uint8_t_u_s(((safe_mul_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_u(l_623, 3)) >= (safe_mul_func_uint8_t_u_u((safe_add_func_int32_t_s_s(0x3B78FDE2L, 9UL)), (p_35.f0 , (((safe_add_func_int32_t_s_s((safe_lshift_func_int8_t_s_u(((safe_lshift_func_int8_t_s_u(((p_35.f0 , (safe_sub_func_int16_t_s_s(7L, l_660))) > p_1066->g_66), l_614.s5)) | p_1066->g_661[0][2]), 0)), l_614.s7)) , l_662) == (void*)0))))), 65535UL)) , 0x93L), 5))), l_631, ((VECTOR(int32_t, 2))(0x56370171L)), (-1L), 0x143EA4E6L)).s4)) >= 0x842A54B7L) != 18446744073709551615UL) != 0xCE1CL)), l_664, 0L, 6L)).yzzyxxxxxxwyzxxy, (int8_t)0x3EL))).lo))).hi))), (-1L), (-10L), 0x2AL, 0x63L)) && ((VECTOR(int8_t, 8))(0x65L))))).s7)), l_631)) || p_35.f0) | 0x4ACCL);
            }
            else
            { /* block id: 215 */
                int8_t l_666[5];
                int32_t *l_667 = (void*)0;
                int32_t *l_668 = (void*)0;
                int32_t *l_669 = (void*)0;
                int32_t *l_670[9] = {&l_663,&l_663,&l_663,&l_663,&l_663,&l_663,&l_663,&l_663,&l_663};
                int i;
                for (i = 0; i < 5; i++)
                    l_666[i] = 0x43L;
                ++l_674;
            }
            for (p_1066->g_567.f0 = (-8); (p_1066->g_567.f0 < 27); ++p_1066->g_567.f0)
            { /* block id: 220 */
                VECTOR(uint32_t, 16) l_692 = (VECTOR(uint32_t, 16))(0xFD6755B3L, (VECTOR(uint32_t, 4))(0xFD6755B3L, (VECTOR(uint32_t, 2))(0xFD6755B3L, 4294967287UL), 4294967287UL), 4294967287UL, 0xFD6755B3L, 4294967287UL, (VECTOR(uint32_t, 2))(0xFD6755B3L, 4294967287UL), (VECTOR(uint32_t, 2))(0xFD6755B3L, 4294967287UL), 0xFD6755B3L, 4294967287UL, 0xFD6755B3L, 4294967287UL);
                VECTOR(uint32_t, 2) l_693 = (VECTOR(uint32_t, 2))(4UL, 0xFD802927L);
                int16_t *l_701 = &p_1066->g_154.f0;
                VECTOR(int8_t, 8) l_705 = (VECTOR(int8_t, 8))(0x07L, (VECTOR(int8_t, 4))(0x07L, (VECTOR(int8_t, 2))(0x07L, 0L), 0L), 0L, 0x07L, 0L);
                VECTOR(int16_t, 4) l_722 = (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, (-1L)), (-1L));
                uint32_t *l_723 = (void*)0;
                int i;
                for (p_1066->g_260 = 0; (p_1066->g_260 > (-9)); p_1066->g_260 = safe_sub_func_int32_t_s_s(p_1066->g_260, 2))
                { /* block id: 223 */
                    uint32_t *l_698 = &p_1066->g_93;
                    int32_t *l_710 = &p_1066->g_91.f0;
                    uint8_t *l_719 = (void*)0;
                    uint8_t *l_720[9];
                    uint32_t **l_724[3];
                    int32_t l_727 = 0L;
                    int i;
                    for (i = 0; i < 9; i++)
                        l_720[i] = &p_1066->g_116;
                    for (i = 0; i < 3; i++)
                        l_724[i] = &l_723;
                    for (p_1066->g_223.f2 = 4; (p_1066->g_223.f2 > 60); ++p_1066->g_223.f2)
                    { /* block id: 226 */
                        return p_1066->g_116;
                    }
                    if (l_623)
                        break;
                    for (p_1066->g_91.f1 = 0; (p_1066->g_91.f1 >= (-10)); p_1066->g_91.f1 = safe_sub_func_int16_t_s_s(p_1066->g_91.f1, 1))
                    { /* block id: 232 */
                        VECTOR(uint64_t, 4) l_691 = (VECTOR(uint64_t, 4))(18446744073709551609UL, (VECTOR(uint64_t, 2))(18446744073709551609UL, 0UL), 0UL);
                        uint32_t *l_696 = &p_1066->g_93;
                        uint32_t **l_697 = &l_696;
                        uint32_t *l_699[4][6] = {{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93,&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93,&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93,&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93,&p_1066->g_93,&p_1066->g_93,&p_1066->g_93}};
                        uint64_t l_702 = 7UL;
                        int i, j;
                        (*p_1066->g_297) = ((safe_lshift_func_uint8_t_u_s(((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 16))(l_689.yyyyxxxyyxyyyyxy)).s1f, ((VECTOR(uint64_t, 8))(l_690.s57400601)).s67))).xxyyxyxy * ((VECTOR(uint64_t, 2))(l_691.zw)).xyxyyyxy))).s4 && GROUP_DIVERGE(2, 1)) & ((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 4))(l_692.se9be)).yywwxyzxzzyxzxyw ^ ((VECTOR(uint32_t, 16))(l_693.xxxxxxyyxyyyxyxy))))).sb , (((safe_lshift_func_uint16_t_u_s((((*l_697) = l_696) != (l_699[3][3] = l_698)), (l_700 != (l_701 = &l_623)))) | (l_702 & (safe_sub_func_uint32_t_u_u((~p_1066->g_389.y), (0xEEL ^ ((VECTOR(int8_t, 4))(l_705.s0542)).z))))) , &p_1066->g_70[4][4][1])) == l_706[0])), 4)) | p_35.f0);
                    }
                    l_665 = (((l_673 = (safe_div_func_int16_t_s_s((((*l_710) = ((VECTOR(int32_t, 4))(l_709.xyzz)).x) , 0x6E10L), ((((*l_599) = ((*p_1066->g_14) , ((((*p_1066->g_14) , (safe_div_func_int32_t_s_s((l_705.s4 < (((((p_1066->g_424.y &= ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(0UL, 3UL, 65529UL, ((VECTOR(uint16_t, 4))(p_1066->g_715.sb4a8)), (((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 2))(l_716.s52)), ((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))((((safe_lshift_func_uint8_t_u_u((p_1066->g_207.y = 0x78L), 5)) > p_1066->g_303.x) || p_1066->g_302.s2), ((VECTOR(int16_t, 2))(0x6CD9L, 1L)), ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(p_1066->g_721.yyyxxxyyyyxyxxyy)).sdb && ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_722.zywyzyxx)), ((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 16))((l_664 > FAKE_DIVERGE(p_1066->group_1_offset, get_group_id(1), 10)), (((p_1066->g_725 = l_723) != l_726) < 0x57F72D3688D6F4BFL), ((VECTOR(int16_t, 4))(0x47E4L)), p_35.f0, ((VECTOR(int16_t, 2))(0x53F8L)), 0x1633L, ((VECTOR(int16_t, 4))(0x6E71L)), 0x7F7BL, (-7L))).lo, ((VECTOR(int16_t, 8))((-1L))), ((VECTOR(int16_t, 8))(1L))))))).s26))), 0x03DAL, 0x5419L, (-1L))).s5, (-4L), 0x4416L, (-1L))).xwzwwzxw, ((VECTOR(int16_t, 8))(0x22C3L)), ((VECTOR(int16_t, 8))(0x2E18L))))).s63))).xyyx, ((VECTOR(uint16_t, 4))(0xAEF4L))))).lo, ((VECTOR(int32_t, 2))(0x7F5A5E7BL))))).hi | 4294967295UL), 8UL, ((VECTOR(uint16_t, 4))(4UL)), ((VECTOR(uint16_t, 2))(0xFEE5L)), 0x4C3FL)).odd + ((VECTOR(uint16_t, 8))(65531UL))))).s0) > 65530UL) , l_603) | l_727) | p_35.f0)), l_673))) , 0x33535058D8E7BCC3L) <= p_35.f0))) == 0x0FDC3775L) | p_1066->g_606.y)))) & (-7L)) == FAKE_DIVERGE(p_1066->local_1_offset, get_local_id(1), 10));
                }
                return l_623;
            }
            if (p_1066->g_223.f0)
                goto lbl_728;
        }
    }
    (*p_1066->g_297) = ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 4))(p_1066->g_729.s3cbc)).hi, ((VECTOR(int32_t, 4))(l_730.s3305)).odd))).hi;
    (*l_662) = (*l_662);
    return p_1066->g_127[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1066->g_45 p_1066->g_60 p_1066->g_66 p_1066->g_117 p_1066->g_70 p_1066->g_93 p_1066->g_91.f0 p_1066->g_128 p_1066->g_129 p_1066->g_130 p_1066->g_141 p_1066->g_57 p_1066->g_72 p_1066->g_116 p_1066->g_15.f0 p_1066->g_99 p_1066->g_87 p_1066->g_155 p_1066->g_169 p_1066->g_169.f0 p_1066->g_176 p_1066->g_181 p_1066->g_156 p_1066->g_200 p_1066->g_207 p_1066->g_215 p_1066->g_303 p_1066->g_297 p_1066->g_363 p_1066->g_265 p_1066->g_154.f1 p_1066->g_377 p_1066->g_386 p_1066->g_389 p_1066->g_400 p_1066->g_298 p_1066->g_154.f0 p_1066->g_64 p_1066->g_425 p_1066->g_309 p_1066->g_456 p_1066->g_15 p_1066->g_481 p_1066->g_63 p_1066->g_14 p_1066->g_496 p_1066->g_500 p_1066->g_501 p_1066->g_535 p_1066->g_310 p_1066->g_428 p_1066->g_424 p_1066->g_127 p_1066->g_567
 * writes: p_1066->g_99 p_1066->g_87 p_1066->g_116 p_1066->g_66 p_1066->g_45 p_1066->g_127 p_1066->g_57 p_1066->g_72 p_1066->g_15.f0 p_1066->g_128 p_1066->g_156 p_1066->g_200 p_1066->g_91.f1 p_1066->g_70 p_1066->g_298 p_1066->g_64 p_1066->g_154.f1 p_1066->g_377 p_1066->g_154.f0 p_1066->g_428 p_1066->g_456 p_1066->g_265 p_1066->g_424 p_1066->g_154.f2
 */
union U3  func_37(uint64_t  p_38, union U3 * p_39, union U3 * p_40, struct S5 * p_1066)
{ /* block id: 26 */
    uint32_t l_100 = 4294967291UL;
    VECTOR(int32_t, 2) l_101 = (VECTOR(int32_t, 2))(0x5B61D130L, 1L);
    VECTOR(int32_t, 4) l_102 = (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x268510E3L), 0x268510E3L);
    int16_t *l_113 = &p_1066->g_87;
    uint8_t *l_114 = (void*)0;
    uint8_t *l_115 = &p_1066->g_116;
    int32_t *l_118 = &p_1066->g_66;
    VECTOR(int16_t, 8) l_133 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
    VECTOR(uint8_t, 2) l_146 = (VECTOR(uint8_t, 2))(0xEBL, 3UL);
    int16_t l_152 = 0x1C0FL;
    union U2 *l_153 = &p_1066->g_154;
    VECTOR(int8_t, 2) l_195 = (VECTOR(int8_t, 2))(0x07L, 0x41L);
    union U2 *l_206 = &p_1066->g_154;
    VECTOR(int16_t, 8) l_254 = (VECTOR(int16_t, 8))(0x1BB8L, (VECTOR(int16_t, 4))(0x1BB8L, (VECTOR(int16_t, 2))(0x1BB8L, 0x4783L), 0x4783L), 0x4783L, 0x1BB8L, 0x4783L);
    VECTOR(int8_t, 2) l_294 = (VECTOR(int8_t, 2))((-3L), 0x14L);
    VECTOR(int8_t, 4) l_305 = (VECTOR(int8_t, 4))(0x71L, (VECTOR(int8_t, 2))(0x71L, 0x58L), 0x58L);
    VECTOR(int8_t, 16) l_306 = (VECTOR(int8_t, 16))(0x73L, (VECTOR(int8_t, 4))(0x73L, (VECTOR(int8_t, 2))(0x73L, 0L), 0L), 0L, 0x73L, 0L, (VECTOR(int8_t, 2))(0x73L, 0L), (VECTOR(int8_t, 2))(0x73L, 0L), 0x73L, 0L, 0x73L, 0L);
    int32_t *l_340[1][3][2];
    int8_t l_370 = (-3L);
    VECTOR(int8_t, 4) l_373 = (VECTOR(int8_t, 4))(0x6BL, (VECTOR(int8_t, 2))(0x6BL, 5L), 5L);
    int64_t l_376 = 0x1553FD1352B8D526L;
    VECTOR(int32_t, 4) l_380 = (VECTOR(int32_t, 4))(0x329DD61BL, (VECTOR(int32_t, 2))(0x329DD61BL, 0x790AEDD2L), 0x790AEDD2L);
    VECTOR(int32_t, 16) l_381 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x08E211B6L), 0x08E211B6L), 0x08E211B6L, (-1L), 0x08E211B6L, (VECTOR(int32_t, 2))((-1L), 0x08E211B6L), (VECTOR(int32_t, 2))((-1L), 0x08E211B6L), (-1L), 0x08E211B6L, (-1L), 0x08E211B6L);
    VECTOR(int32_t, 16) l_382 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x0BA00F09L), 0x0BA00F09L), 0x0BA00F09L, 1L, 0x0BA00F09L, (VECTOR(int32_t, 2))(1L, 0x0BA00F09L), (VECTOR(int32_t, 2))(1L, 0x0BA00F09L), 1L, 0x0BA00F09L, 1L, 0x0BA00F09L);
    VECTOR(uint16_t, 16) l_387 = (VECTOR(uint16_t, 16))(0xF8A0L, (VECTOR(uint16_t, 4))(0xF8A0L, (VECTOR(uint16_t, 2))(0xF8A0L, 65534UL), 65534UL), 65534UL, 0xF8A0L, 65534UL, (VECTOR(uint16_t, 2))(0xF8A0L, 65534UL), (VECTOR(uint16_t, 2))(0xF8A0L, 65534UL), 0xF8A0L, 65534UL, 0xF8A0L, 65534UL);
    VECTOR(int32_t, 8) l_388 = (VECTOR(int32_t, 8))(0x23C9F880L, (VECTOR(int32_t, 4))(0x23C9F880L, (VECTOR(int32_t, 2))(0x23C9F880L, 0x62C6A5E0L), 0x62C6A5E0L), 0x62C6A5E0L, 0x23C9F880L, 0x62C6A5E0L);
    VECTOR(int32_t, 16) l_390 = (VECTOR(int32_t, 16))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), (-1L)), (-1L)), (-1L), (-4L), (-1L), (VECTOR(int32_t, 2))((-4L), (-1L)), (VECTOR(int32_t, 2))((-4L), (-1L)), (-4L), (-1L), (-4L), (-1L));
    uint8_t l_393 = 8UL;
    VECTOR(int32_t, 16) l_394 = (VECTOR(int32_t, 16))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x111B1FB0L), 0x111B1FB0L), 0x111B1FB0L, (-3L), 0x111B1FB0L, (VECTOR(int32_t, 2))((-3L), 0x111B1FB0L), (VECTOR(int32_t, 2))((-3L), 0x111B1FB0L), (-3L), 0x111B1FB0L, (-3L), 0x111B1FB0L);
    VECTOR(int32_t, 16) l_397 = (VECTOR(int32_t, 16))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0x7E6FB769L), 0x7E6FB769L), 0x7E6FB769L, (-5L), 0x7E6FB769L, (VECTOR(int32_t, 2))((-5L), 0x7E6FB769L), (VECTOR(int32_t, 2))((-5L), 0x7E6FB769L), (-5L), 0x7E6FB769L, (-5L), 0x7E6FB769L);
    int32_t l_415 = 2L;
    int32_t *l_466 = &p_1066->g_260;
    int32_t **l_465[4] = {&l_466,&l_466,&l_466,&l_466};
    VECTOR(int8_t, 2) l_490 = (VECTOR(int8_t, 2))(0x44L, 0x44L);
    int64_t l_492[2][6][8] = {{{(-3L),0x72504CA6F6CE57C8L,0L,0L,0x72504CA6F6CE57C8L,(-3L),(-3L),1L},{(-3L),0x72504CA6F6CE57C8L,0L,0L,0x72504CA6F6CE57C8L,(-3L),(-3L),1L},{(-3L),0x72504CA6F6CE57C8L,0L,0L,0x72504CA6F6CE57C8L,(-3L),(-3L),1L},{(-3L),0x72504CA6F6CE57C8L,0L,0L,0x72504CA6F6CE57C8L,(-3L),(-3L),1L},{(-3L),0x72504CA6F6CE57C8L,0L,0L,0x72504CA6F6CE57C8L,(-3L),(-3L),1L},{(-3L),0x72504CA6F6CE57C8L,0L,0L,0x72504CA6F6CE57C8L,(-3L),(-3L),1L}},{{(-3L),0x72504CA6F6CE57C8L,0L,0L,0x72504CA6F6CE57C8L,(-3L),(-3L),1L},{(-3L),0x72504CA6F6CE57C8L,0L,0L,0x72504CA6F6CE57C8L,(-3L),(-3L),1L},{(-3L),0x72504CA6F6CE57C8L,0L,0L,0x72504CA6F6CE57C8L,(-3L),(-3L),1L},{(-3L),0x72504CA6F6CE57C8L,0L,0L,0x72504CA6F6CE57C8L,(-3L),(-3L),1L},{(-3L),0x72504CA6F6CE57C8L,0L,0L,0x72504CA6F6CE57C8L,(-3L),(-3L),1L},{(-3L),0x72504CA6F6CE57C8L,0L,0L,0x72504CA6F6CE57C8L,(-3L),(-3L),1L}}};
    VECTOR(int64_t, 16) l_497 = (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int64_t, 2))(0L, 0L), (VECTOR(int64_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
    VECTOR(int64_t, 8) l_498 = (VECTOR(int64_t, 8))(0x2EB46B8BE94D2981L, (VECTOR(int64_t, 4))(0x2EB46B8BE94D2981L, (VECTOR(int64_t, 2))(0x2EB46B8BE94D2981L, 0x58A1C25C4CD36662L), 0x58A1C25C4CD36662L), 0x58A1C25C4CD36662L, 0x2EB46B8BE94D2981L, 0x58A1C25C4CD36662L);
    VECTOR(int64_t, 8) l_499 = (VECTOR(int64_t, 8))(0x633D6C0F59BB7C7FL, (VECTOR(int64_t, 4))(0x633D6C0F59BB7C7FL, (VECTOR(int64_t, 2))(0x633D6C0F59BB7C7FL, 0x73EF4AB7D8FBCDBCL), 0x73EF4AB7D8FBCDBCL), 0x73EF4AB7D8FBCDBCL, 0x633D6C0F59BB7C7FL, 0x73EF4AB7D8FBCDBCL);
    uint64_t *l_512 = (void*)0;
    uint64_t *l_513 = &p_1066->g_45[0];
    VECTOR(uint64_t, 16) l_516 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 3UL), 3UL), 3UL, 1UL, 3UL, (VECTOR(uint64_t, 2))(1UL, 3UL), (VECTOR(uint64_t, 2))(1UL, 3UL), 1UL, 3UL, 1UL, 3UL);
    VECTOR(int8_t, 2) l_521 = (VECTOR(int8_t, 2))(0x5BL, 3L);
    VECTOR(int8_t, 16) l_522 = (VECTOR(int8_t, 16))(2L, (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 0L), 0L), 0L, 2L, 0L, (VECTOR(int8_t, 2))(2L, 0L), (VECTOR(int8_t, 2))(2L, 0L), 2L, 0L, 2L, 0L);
    union U2 **l_529[6][10] = {{&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156},{&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156},{&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156},{&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156},{&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156},{&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156,&p_1066->g_156}};
    VECTOR(int16_t, 4) l_534 = (VECTOR(int16_t, 4))(0x6F30L, (VECTOR(int16_t, 2))(0x6F30L, 0x6F8DL), 0x6F8DL);
    uint64_t *l_540[2][6][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    uint32_t *l_541 = &p_1066->g_200;
    uint16_t *l_542 = &p_1066->g_154.f2;
    uint16_t *l_543 = (void*)0;
    uint16_t *l_544 = (void*)0;
    int8_t l_545 = 0x2BL;
    uint16_t l_556 = 1UL;
    int32_t **l_564 = (void*)0;
    int32_t ***l_563 = &l_564;
    int64_t *l_565 = &p_1066->g_91.f1;
    VECTOR(int16_t, 4) l_571 = (VECTOR(int16_t, 4))(0x2E61L, (VECTOR(int16_t, 2))(0x2E61L, (-10L)), (-10L));
    VECTOR(int64_t, 16) l_582 = (VECTOR(int64_t, 16))((-10L), (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 2L), 2L), 2L, (-10L), 2L, (VECTOR(int64_t, 2))((-10L), 2L), (VECTOR(int64_t, 2))((-10L), 2L), (-10L), 2L, (-10L), 2L);
    int32_t l_587 = 0x054CDE59L;
    int8_t l_588 = 0L;
    uint16_t l_591 = 65535UL;
    union U3 l_594 = {0x56B9AB7C8A90C60DL};
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 2; k++)
                l_340[i][j][k] = (void*)0;
        }
    }
    if ((safe_mod_func_int64_t_s_s((((safe_add_func_uint32_t_u_u(0xD400D3BCL, ((*l_118) = (&p_1066->g_64[0][5][0] != (((safe_unary_minus_func_uint16_t_u((p_1066->g_99 = 65535UL))) != (l_100 <= ((((GROUP_DIVERGE(0, 1) < (((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(l_101.xyyxxxyy)).hi && ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(l_102.yzyzwxzywxwwxzyx)).hi, ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 2))((-6L), 0x0E1B1DC0L)).xxxxxyyx))), ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))((-1L), 7L)), (safe_mul_func_int8_t_s_s((safe_unary_minus_func_int16_t_s(((safe_rshift_func_int16_t_s_s((p_1066->g_45[1] < (safe_lshift_func_int8_t_s_s(((safe_sub_func_int8_t_s_s(0L, ((*l_115) = ((safe_unary_minus_func_int32_t_s((((*l_113) = (l_102.x || 0x1860L)) & ((VECTOR(int16_t, 4))(0x46CDL, (l_101.y < p_38), 0x331AL, 4L)).y))) == l_101.x)))) , p_38), p_1066->g_60.s5))), p_1066->g_66)) || p_38))), 1L)), 0x468D3B5AL, p_38, ((VECTOR(int32_t, 2))(0x49E589B7L)), 1L, p_38, ((VECTOR(int32_t, 2))(0x1A719620L)), ((VECTOR(int32_t, 2))(0x0056FDF2L)), ((VECTOR(int32_t, 2))(0x598B098BL)), (-1L))).se4c4 >= ((VECTOR(int32_t, 4))(0L))))).xwwwzwwx && ((VECTOR(int32_t, 8))(0x0C7137E7L))))).hi, ((VECTOR(int32_t, 4))((-3L)))))).yzyzxwyx, (int32_t)l_102.y))), ((VECTOR(int32_t, 8))(1L)))).s20 && ((VECTOR(int32_t, 2))(0x2C86F730L))))).xyyyxxxy))).s00, ((VECTOR(int32_t, 2))(0x78944229L))))).xyyy))).wzzwwxxz, ((VECTOR(int32_t, 8))(0x5D69AD93L))))).s0 & l_102.y)) , p_1066->g_117) == p_1066->g_70[4][4][1]) ^ GROUP_DIVERGE(0, 1)))) , (void*)0))))) == 0x7CL) == p_1066->g_93), p_1066->g_91.f0)))
    { /* block id: 31 */
        uint64_t *l_123 = &p_1066->g_45[0];
        uint64_t *l_126 = &p_1066->g_127[1];
        uint32_t *l_134 = &p_1066->g_93;
        int32_t l_139 = 9L;
        VECTOR(int64_t, 2) l_140 = (VECTOR(int64_t, 2))((-1L), 3L);
        int32_t *l_142 = (void*)0;
        int32_t *l_143 = (void*)0;
        int32_t *l_144 = (void*)0;
        int32_t *l_145 = &p_1066->g_57;
        int8_t *l_147 = &p_1066->g_72;
        int64_t *l_150 = &p_1066->g_91.f1;
        int64_t *l_151[2][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        VECTOR(uint64_t, 16) l_159 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x806D6E3AF0B7D57CL), 0x806D6E3AF0B7D57CL), 0x806D6E3AF0B7D57CL, 1UL, 0x806D6E3AF0B7D57CL, (VECTOR(uint64_t, 2))(1UL, 0x806D6E3AF0B7D57CL), (VECTOR(uint64_t, 2))(1UL, 0x806D6E3AF0B7D57CL), 1UL, 0x806D6E3AF0B7D57CL, 1UL, 0x806D6E3AF0B7D57CL);
        uint8_t l_172 = 251UL;
        union U2 l_192 = {0x4636L};
        int32_t **l_203 = &p_1066->g_64[0][4][0];
        VECTOR(int8_t, 16) l_293 = (VECTOR(int8_t, 16))(5L, (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0x65L), 0x65L), 0x65L, 5L, 0x65L, (VECTOR(int8_t, 2))(5L, 0x65L), (VECTOR(int8_t, 2))(5L, 0x65L), 5L, 0x65L, 5L, 0x65L);
        VECTOR(int8_t, 16) l_300 = (VECTOR(int8_t, 16))(0x5EL, (VECTOR(int8_t, 4))(0x5EL, (VECTOR(int8_t, 2))(0x5EL, 0x0CL), 0x0CL), 0x0CL, 0x5EL, 0x0CL, (VECTOR(int8_t, 2))(0x5EL, 0x0CL), (VECTOR(int8_t, 2))(0x5EL, 0x0CL), 0x5EL, 0x0CL, 0x5EL, 0x0CL);
        int32_t l_321 = (-1L);
        int32_t l_323 = 0x3468A3FCL;
        int32_t l_324[4] = {5L,5L,5L,5L};
        uint32_t l_337 = 0x38A26472L;
        VECTOR(int32_t, 2) l_392 = (VECTOR(int32_t, 2))((-3L), (-1L));
        VECTOR(int32_t, 8) l_395 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-3L)), (-3L)), (-3L), 0L, (-3L));
        VECTOR(int32_t, 2) l_396 = (VECTOR(int32_t, 2))(0x107B8975L, 0x731F3841L);
        VECTOR(int32_t, 2) l_398 = (VECTOR(int32_t, 2))(0x388F3010L, 0x00DA12D4L);
        VECTOR(int32_t, 16) l_399 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x2F274436L), 0x2F274436L), 0x2F274436L, (-1L), 0x2F274436L, (VECTOR(int32_t, 2))((-1L), 0x2F274436L), (VECTOR(int32_t, 2))((-1L), 0x2F274436L), (-1L), 0x2F274436L, (-1L), 0x2F274436L);
        VECTOR(int32_t, 4) l_475 = (VECTOR(int32_t, 4))(0x43CDF57EL, (VECTOR(int32_t, 2))(0x43CDF57EL, (-1L)), (-1L));
        int16_t l_491[1][7][9] = {{{(-9L),0x51E8L,1L,0x51E8L,(-9L),(-9L),0x51E8L,1L,0x51E8L},{(-9L),0x51E8L,1L,0x51E8L,(-9L),(-9L),0x51E8L,1L,0x51E8L},{(-9L),0x51E8L,1L,0x51E8L,(-9L),(-9L),0x51E8L,1L,0x51E8L},{(-9L),0x51E8L,1L,0x51E8L,(-9L),(-9L),0x51E8L,1L,0x51E8L},{(-9L),0x51E8L,1L,0x51E8L,(-9L),(-9L),0x51E8L,1L,0x51E8L},{(-9L),0x51E8L,1L,0x51E8L,(-9L),(-9L),0x51E8L,1L,0x51E8L},{(-9L),0x51E8L,1L,0x51E8L,(-9L),(-9L),0x51E8L,1L,0x51E8L}}};
        uint32_t l_493 = 0x368DB39BL;
        int i, j, k;
        if ((safe_sub_func_uint32_t_u_u(p_1066->g_117, ((VECTOR(uint32_t, 8))(((safe_mod_func_int16_t_s_s((((*l_126) = ((*l_123)++)) > ((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),int64_t,((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),int64_t,((VECTOR(int64_t, 2))(0x580B7E5A13A27DD6L, 0x37073E97851F52E6L)), (int64_t)((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(p_1066->g_128.s1decdd1267a7cb42)).s11 && ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 4))(p_1066->g_129.yyxx)).xyxyzyyywxzwwxww, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))(p_1066->g_130.yyyxyxyxxxxxxyyx)).sbf3b >= ((VECTOR(int64_t, 4))(0x624373CAA1AAD416L, (((*l_118) = (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 2))(l_133.s73)).even, 0x5DFBL))) , (l_134 != (p_38 , (void*)0))), (-8L), 0L))))).yzxxwwyxxzwzxwyx, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(0x6B7B0691E2C18053L, 0x08D450DD38C2C0AFL)) && ((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 4))(0x3CA4C7201BE58EEBL, (safe_div_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(l_139, ((((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 2))(0L, 0L)).xxxxyxyy, ((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 8))(l_140.yyxxyyxy)).s75, ((VECTOR(int64_t, 16))(p_1066->g_141.s4cfaa4016f25517f)).sa6))).xyyxxyyx))).s3 < (p_1066->g_128.se &= ((((*l_145) &= (*l_118)) , (((VECTOR(uint8_t, 2))(l_146.yx)).odd < ((*l_147) ^= (*l_118)))) & (safe_add_func_int16_t_s_s(((((p_1066->g_15.f0 &= ((p_1066->g_116 , 0L) > 7L)) >= p_38) > (*l_118)) & 4UL), 0x78A1L))))) , (*l_118)))), p_1066->g_91.f0)), 9L, 0x3EAE7582C1F30112L)).odd, ((VECTOR(int64_t, 2))((-10L))), ((VECTOR(int64_t, 2))(0x0967B42B6AA6990CL))))), 0x0F6F592905C28BADL, 0x5824EB29F0F0CF30L)).lo, ((VECTOR(int64_t, 2))(0L)))))))).yyxyyxxyxyxxxxyy))).s94 && ((VECTOR(int64_t, 2))((-3L))))))))).xyxx && ((VECTOR(int64_t, 4))(0x7281CC889B63E07DL))))).wyxwwyzz, ((VECTOR(int64_t, 8))((-4L)))))).s3, (int64_t)p_1066->g_99))) || ((VECTOR(int64_t, 2))(1L))))).yxxx == ((VECTOR(int64_t, 4))(0x088A21F489C56091L))))).xwwzxxwz, (int64_t)p_1066->g_129.z, (int64_t)p_1066->g_87))).s4), l_152)) , p_1066->g_117), 8UL, ((VECTOR(uint32_t, 4))(0x2A91C8B0L)), 4294967295UL, 0xB7A19678L)).s1)))
        { /* block id: 39 */
            uint8_t l_173 = 0x70L;
            VECTOR(int8_t, 8) l_182 = (VECTOR(int8_t, 8))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 0L), 0L), 0L, (-4L), 0L);
            union U2 **l_185 = &l_153;
            int32_t l_212 = 1L;
            int i;
            (*p_1066->g_155) = l_153;
            (*l_118) ^= ((*l_145) , ((((void*)0 == &l_139) > ((((safe_sub_func_int32_t_s_s((((VECTOR(uint64_t, 8))(l_159.sf09790a8)).s5 && (safe_mul_func_int8_t_s_s((safe_unary_minus_func_uint8_t_u((GROUP_DIVERGE(1, 1) == ((safe_div_func_uint8_t_u_u((((-9L) | ((*l_126) = (+(p_38 < (((((p_1066->g_169 , (safe_rshift_func_int16_t_s_s((&p_1066->g_93 != &p_1066->g_93), 11))) & ((0x727F0100L >= p_1066->g_72) ^ (*l_145))) != 0UL) , p_1066->g_116) > p_38))))) != l_172), p_1066->g_70[4][4][1])) != (*l_145))))), p_38))), p_1066->g_169.f0)) == p_1066->g_72) ^ (-5L)) , (*l_145))) ^ l_173));
            (*l_145) = (safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(0L, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(p_1066->g_176.s68d3e813)) != ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))((-9L), (safe_add_func_uint32_t_u_u(l_173, (safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(p_1066->g_181.s9a31c922)).hi, ((VECTOR(int8_t, 2))((-1L), 0x6CL)).yxyx, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(l_182.s47)).xxyy && ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(0x1DL, (l_153 == l_153), 0x74L, (safe_mul_func_int16_t_s_s(((p_1066->g_141.s2 , ((*l_123) = (~(p_1066->g_129.x == ((*l_118) != p_38))))) , (((*l_185) = (*p_1066->g_155)) == (void*)0)), 4UL)), 0x5FL, 0x60L, (-3L), (-1L))) | ((VECTOR(int8_t, 8))(0x06L))))).even ^ ((VECTOR(int8_t, 4))(0x1CL))))))))))).y, l_182.s1)))), 0x4394L, 0x7645L)).lo < ((VECTOR(int16_t, 2))(0x00C0L))))).xyxyxyxy))), ((VECTOR(int16_t, 2))(4L)), 0x358EL, p_1066->g_60.s5, 1L, 0x2C02L, (-1L))).s6, p_38));
            for (p_1066->g_66 = 0; (p_1066->g_66 > (-30)); p_1066->g_66 = safe_sub_func_uint64_t_u_u(p_1066->g_66, 8))
            { /* block id: 48 */
                union U2 *l_196 = &p_1066->g_154;
                uint32_t *l_199 = &p_1066->g_200;
                VECTOR(int32_t, 4) l_205 = (VECTOR(int32_t, 4))(0x3794E6F4L, (VECTOR(int32_t, 2))(0x3794E6F4L, 0x73559A3BL), 0x73559A3BL);
                union U3 l_216 = {-1L};
                int i;
                l_212 |= ((safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s((l_192 , (safe_div_func_int8_t_s_s(((VECTOR(int8_t, 8))(l_195.yxyyxyxy)).s6, ((VECTOR(uint8_t, 8))((((*l_185) = l_196) == (((((safe_mod_func_uint32_t_u_u((((*l_199)--) <= (((*l_113) = l_182.s7) != p_38)), ((VECTOR(int32_t, 2))(1L, 0L)).hi)) , &l_118) != (l_203 = &p_1066->g_64[0][4][0])) > (safe_unary_minus_func_uint64_t_u(l_205.y))) , (l_206 = l_206))), 0x03L, ((VECTOR(uint8_t, 4))(p_1066->g_207.yzyx)), 0xCEL, 0xD1L)).s6))), 3)), (safe_sub_func_int64_t_s_s(((*l_150) = (safe_mod_func_uint64_t_u_u(l_173, 0x39C095ABA828A994L))), l_205.y)))) < 0UL);
                (*l_145) = 0x7E27C906L;
                l_102.x &= (safe_mul_func_int16_t_s_s(p_1066->g_117, ((VECTOR(uint16_t, 8))(p_1066->g_215.s51200425)).s7));
                return l_216;
            }
        }
        else
        { /* block id: 60 */
            int32_t l_245 = 0x01E4ACEDL;
            union U3 l_273[6][7] = {{{-5L},{1L},{6L},{1L},{-5L},{-5L},{1L}},{{-5L},{1L},{6L},{1L},{-5L},{-5L},{1L}},{{-5L},{1L},{6L},{1L},{-5L},{-5L},{1L}},{{-5L},{1L},{6L},{1L},{-5L},{-5L},{1L}},{{-5L},{1L},{6L},{1L},{-5L},{-5L},{1L}},{{-5L},{1L},{6L},{1L},{-5L},{-5L},{1L}}};
            int32_t **l_277 = &l_144;
            VECTOR(int8_t, 2) l_292 = (VECTOR(int8_t, 2))(1L, 0x23L);
            VECTOR(int8_t, 2) l_304 = (VECTOR(int8_t, 2))(0x11L, 3L);
            uint32_t *l_316 = (void*)0;
            int32_t l_325 = (-10L);
            VECTOR(int32_t, 2) l_329 = (VECTOR(int32_t, 2))(0L, (-1L));
            uint64_t l_330 = 18446744073709551615UL;
            int8_t *l_356 = &p_1066->g_70[4][8][2];
            int i, j;
            for (p_1066->g_72 = 0; (p_1066->g_72 > (-16)); p_1066->g_72 = safe_sub_func_uint32_t_u_u(p_1066->g_72, 1))
            { /* block id: 63 */
                union U3 *l_229 = &p_1066->g_15;
                union U3 **l_228 = &l_229;
                int32_t l_234 = 1L;
                uint32_t *l_235 = &p_1066->g_200;
                int8_t **l_244 = &l_147;
                int32_t **l_276 = (void*)0;
                union U2 *l_281 = &l_192;
                VECTOR(int8_t, 2) l_295 = (VECTOR(int8_t, 2))(0x36L, 1L);
                VECTOR(int8_t, 8) l_308 = (VECTOR(int8_t, 8))((-5L), (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 0x74L), 0x74L), 0x74L, (-5L), 0x74L);
                union U1 l_317 = {5L};
                int32_t l_326 = 0x1108C7AFL;
                int32_t l_327 = 0x7D56FE25L;
                int32_t l_328 = 0x68348EAAL;
                int32_t l_333 = 5L;
                int32_t l_334 = 0x617E25F3L;
                int32_t l_335 = 0x4E7516D5L;
                VECTOR(int32_t, 16) l_336 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x4102175CL), 0x4102175CL), 0x4102175CL, (-1L), 0x4102175CL, (VECTOR(int32_t, 2))((-1L), 0x4102175CL), (VECTOR(int32_t, 2))((-1L), 0x4102175CL), (-1L), 0x4102175CL, (-1L), 0x4102175CL);
                int i;
                (1 + 1);
            }
            (*l_118) |= ((void*)0 != l_340[0][0][0]);
            (*l_118) = (safe_rshift_func_uint8_t_u_u(((safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_1066->local_0_offset, get_local_id(0), 10), ((VECTOR(uint16_t, 4))((~((safe_mod_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((p_1066->g_15.f0 , (*l_118)), (safe_mod_func_uint8_t_u_u(p_1066->g_303.y, p_38)))), (safe_add_func_uint32_t_u_u(((p_1066->g_72 >= (safe_div_func_uint16_t_u_u((safe_unary_minus_func_int8_t_s(((*l_356) &= p_1066->g_45[1]))), (+(0x40AD110CAFEE9071L != p_38))))) > 0xB925C6C34BFBC738L), GROUP_DIVERGE(2, 1))))) == p_38)), ((VECTOR(uint16_t, 2))(0x3A6FL)), 0UL)).z)) ^ p_1066->g_176.s7), 7));
            for (l_245 = (-24); (l_245 > (-25)); l_245 = safe_sub_func_uint64_t_u_u(l_245, 7))
            { /* block id: 105 */
                uint8_t l_359[8][5] = {{249UL,0UL,249UL,249UL,0UL},{249UL,0UL,249UL,249UL,0UL},{249UL,0UL,249UL,249UL,0UL},{249UL,0UL,249UL,249UL,0UL},{249UL,0UL,249UL,249UL,0UL},{249UL,0UL,249UL,249UL,0UL},{249UL,0UL,249UL,249UL,0UL},{249UL,0UL,249UL,249UL,0UL}};
                int32_t *l_360 = (void*)0;
                int i, j;
                (*p_1066->g_297) = l_359[1][1];
                (*l_203) = (l_340[0][0][0] = l_360);
                if ((*l_145))
                    continue;
            }
        }
        (*l_118) = (safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(0xE2FDE95CDB92091FL, 0x8D0D7F90F2415567L, ((VECTOR(uint64_t, 8))(18446744073709551615UL, ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(0xDE3718983E9A7722L, ((VECTOR(uint64_t, 2))(p_1066->g_363.xx)), 18446744073709551606UL)) | ((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 4))(FAKE_DIVERGE(p_1066->group_0_offset, get_group_id(0), 10), p_38, 18446744073709551610UL, 5UL)).yyxzzwxwxwwzyxyy, ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))(((((p_1066->g_265.w == (safe_rshift_func_int16_t_s_u((l_370 == 0x91B26C7D905ACEABL), (((safe_div_func_uint64_t_u_u(((((VECTOR(int8_t, 4))(l_373.xxww)).y > 0x19L) <= (((((*l_203) = &p_1066->g_57) != (void*)0) & ((1UL & 0UL) < 1L)) || 0UL)), p_38)) | FAKE_DIVERGE(p_1066->local_0_offset, get_local_id(0), 10)) ^ p_38)))) , l_143) != l_340[0][0][0]) <= p_38), 0UL, 0UL, ((VECTOR(uint64_t, 2))(18446744073709551615UL)), ((VECTOR(uint64_t, 8))(18446744073709551606UL)), ((VECTOR(uint64_t, 2))(18446744073709551609UL)), 0xE0D388D18FD78B39L)).s3728 + ((VECTOR(uint64_t, 4))(0UL))))).odd + ((VECTOR(uint64_t, 2))(1UL))))).yyxxyxxyyxyyyxyy))).s0c13))), ((VECTOR(uint64_t, 2))(1UL)), 18446744073709551614UL)).s5, ((VECTOR(uint64_t, 4))(0x8890F02136401061L)), GROUP_DIVERGE(0, 1), 18446744073709551610UL, ((VECTOR(uint64_t, 2))(0x47427DF7E95D466DL)), 0UL, 0UL, 1UL, 4UL, 0x88BCEA79B08DC5D4L)).s7, GROUP_DIVERGE(0, 1)));
        for (p_1066->g_154.f1 = (-19); (p_1066->g_154.f1 < 14); p_1066->g_154.f1 = safe_add_func_int8_t_s_s(p_1066->g_154.f1, 4))
        { /* block id: 116 */
            VECTOR(int32_t, 2) l_383 = (VECTOR(int32_t, 2))(0L, 0x2BE1116DL);
            VECTOR(int32_t, 2) l_384 = (VECTOR(int32_t, 2))(0x713DF84AL, (-1L));
            VECTOR(int16_t, 16) l_385 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x07D5L), 0x07D5L), 0x07D5L, (-1L), 0x07D5L, (VECTOR(int16_t, 2))((-1L), 0x07D5L), (VECTOR(int16_t, 2))((-1L), 0x07D5L), (-1L), 0x07D5L, (-1L), 0x07D5L);
            VECTOR(int32_t, 4) l_391 = (VECTOR(int32_t, 4))(0x7395B717L, (VECTOR(int32_t, 2))(0x7395B717L, 0x3CF3777CL), 0x3CF3777CL);
            VECTOR(int16_t, 2) l_405 = (VECTOR(int16_t, 2))(0x73AFL, 0x72AAL);
            int i;
            p_1066->g_377.s6--;
            (*l_118) = ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(l_380.wxzxywzxzwxzzzww)).lo, ((VECTOR(int32_t, 4))((+0x65613BDCL), 0L, (-9L), (-2L))).yzzzzzyw, ((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(l_381.s551e6eef)) <= ((VECTOR(int32_t, 16))(l_382.s966e42aa6da91d80)).even))), ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(l_383.xy)).xyxy, ((VECTOR(int32_t, 4))((!((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 2))(0x1A43D3ECL, 0x60F401BFL)).yxyyyyyyyyyxxyxy, (int32_t)0x2ECBFDEEL))).s6731)))))).zxwxwxwz == ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 2))(l_384.xx)), ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(l_385.sffef3958f571cfc4)).s21ae ^ ((VECTOR(int16_t, 8))(p_1066->g_386.s71743504)).odd))), ((VECTOR(uint16_t, 8))(l_387.s37ecb489)).hi))).odd))).xxxyyyyyxxxxxyyx && ((VECTOR(int32_t, 8))(l_388.s37027672)).s0410716033506005))) ^ ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(p_1066->g_389.zyxzwzxz)).s1637027674316723 < ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(l_390.sc2c8)).even > ((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(l_391.zyzxxyyyxzzzzyzz)).sb1 && ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 4))(l_392.xyxx)).wxzywwxw))).lo < ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))((l_393 || 0x4A8FA260312A204CL), ((VECTOR(int32_t, 2))(l_394.s4e)), 0x1FDBB580L)) ^ ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))((-1L), 0x1A0FDAE1L)).xyyxxyxy && ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((!((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(l_395.s05)) < ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 2))(l_396.yx))))), 6L, ((VECTOR(int32_t, 4))(l_397.s2250)), 1L)).s00))), 0x25BD23C3L, 0x5ECFF41DL))))).zwzwzwww <= ((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(0x0A2C06CCL, 1L)).yxxyyyyxyyxyyyxy && ((VECTOR(int32_t, 2))(3L, 1L)).xxyyyyyyyxxyyxxy))).hi, ((VECTOR(int32_t, 8))(l_398.yyxyxyyx))))))))))).hi))).hi & ((VECTOR(int32_t, 16))(0x76FB81D8L, (-1L), (-1L), 0x3C84A8FFL, 0x0EE92921L, 0x6EE95873L, ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 4))(l_399.see8e)), ((VECTOR(int32_t, 4))(p_1066->g_400.s4ce9))))), (-6L), (safe_lshift_func_int16_t_s_u(((&l_203 != (void*)0) >= (safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 4))(l_405.xyyy)).yzwyxxzw, ((VECTOR(int16_t, 8))(((*l_113) = (~(safe_unary_minus_func_int64_t_s((safe_lshift_func_int8_t_s_s(p_38, ((safe_mul_func_uint8_t_u_u((*l_145), (safe_sub_func_uint32_t_u_u(((safe_rshift_func_uint8_t_u_s(p_1066->g_70[4][4][1], l_415)) , 4294967291UL), 0L)))) == 0x6E399A1CBDC85A2FL))))))), ((VECTOR(int16_t, 2))((-1L))), p_38, 0x03C7L, 1L, 0L, 0x750FL))))).s13 ^ ((VECTOR(int16_t, 2))(0x573FL))))).hi, 1))), 14)), ((VECTOR(int32_t, 4))(1L)))).sa7))) && ((VECTOR(int32_t, 2))((-1L)))))).xyyy))).hi))).xyxyxxxx, ((VECTOR(int32_t, 8))((-7L)))))).s13))).yyxxyxxx >= ((VECTOR(int32_t, 8))((-2L)))))).s4000471625360744))).s79e8 && ((VECTOR(int32_t, 4))(0x31023B57L))))).ywwwxwzzwwzzyyzx))).even)))))) | ((VECTOR(int32_t, 8))(0L))))), ((VECTOR(int32_t, 2))((-2L))), (*p_1066->g_297), 0x01AB6D3FL, 0L, ((VECTOR(int32_t, 2))(0x51BB5C42L)), 0x0E984CCDL)).s6e, ((VECTOR(int32_t, 2))(9L)), ((VECTOR(int32_t, 2))((-1L)))))).yxyx, ((VECTOR(int32_t, 4))(3L)), ((VECTOR(int32_t, 4))((-1L)))))).ywwwzyzx, (int32_t)l_383.x, (int32_t)p_38)))))).s3;
            (*l_118) = p_38;
        }
        for (p_1066->g_154.f0 = 0; (p_1066->g_154.f0 <= (-23)); p_1066->g_154.f0 = safe_sub_func_int64_t_s_s(p_1066->g_154.f0, 4))
        { /* block id: 124 */
            uint8_t l_460 = 0x2BL;
            uint32_t *l_483 = &p_1066->g_200;
            int32_t l_484 = (-1L);
            int32_t l_486 = (-9L);
            int32_t l_487 = 0x694A203EL;
            int32_t l_488[9] = {0x203A25C4L,0x24B2639FL,0x203A25C4L,0x203A25C4L,0x24B2639FL,0x203A25C4L,0x203A25C4L,0x24B2639FL,0x203A25C4L};
            int16_t l_489[4];
            int i;
            for (i = 0; i < 4; i++)
                l_489[i] = 1L;
            for (p_1066->g_99 = 0; (p_1066->g_99 == 17); p_1066->g_99++)
            { /* block id: 127 */
                int64_t **l_426 = &l_151[1][2];
                int64_t *l_427[6] = {&p_1066->g_428,&p_1066->g_428,&p_1066->g_428,&p_1066->g_428,&p_1066->g_428,&p_1066->g_428};
                int32_t l_433 = 1L;
                uint32_t *l_434 = &p_1066->g_200;
                VECTOR(int8_t, 4) l_442 = (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 0x04L), 0x04L);
                int32_t *l_485 = &l_324[1];
                int i;
                (*l_203) = (*l_203);
                if ((p_38 == (((*l_147) |= p_1066->g_303.x) != ((0x4CL <= (safe_rshift_func_int16_t_s_s((safe_rshift_func_int8_t_s_s((((VECTOR(uint16_t, 2))(p_1066->g_424.yx)).lo > ((-1L) >= (((p_1066->g_428 = (((*l_426) = p_1066->g_425) == (void*)0)) , ((((*l_115) = p_38) < FAKE_DIVERGE(p_1066->local_1_offset, get_local_id(1), 10)) , 255UL)) ^ (((*l_434) = (safe_div_func_int16_t_s_s((GROUP_DIVERGE(0, 1) > (safe_sub_func_int32_t_s_s((l_433 , p_38), p_1066->g_215.s6))), p_1066->g_207.z))) , p_1066->g_389.x)))), 3)), p_38))) > p_38))))
                { /* block id: 134 */
                    int64_t l_445 = 0x75274DF136A097B8L;
                    int32_t l_457[4] = {0x467F0B24L,0x467F0B24L,0x467F0B24L,0x467F0B24L};
                    uint32_t **l_471 = &l_434;
                    VECTOR(uint32_t, 8) l_474 = (VECTOR(uint32_t, 8))(0xABB548EEL, (VECTOR(uint32_t, 4))(0xABB548EEL, (VECTOR(uint32_t, 2))(0xABB548EEL, 4294967287UL), 4294967287UL), 4294967287UL, 0xABB548EEL, 4294967287UL);
                    union U3 **l_477 = &p_1066->g_14;
                    union U3 ***l_476 = &l_477;
                    VECTOR(int8_t, 4) l_480 = (VECTOR(int8_t, 4))(0x32L, (VECTOR(int8_t, 2))(0x32L, (-2L)), (-2L));
                    VECTOR(int8_t, 4) l_482 = (VECTOR(int8_t, 4))(0x5BL, (VECTOR(int8_t, 2))(0x5BL, 2L), 2L);
                    int i;
                    for (p_1066->g_15.f0 = 0; (p_1066->g_15.f0 == 16); p_1066->g_15.f0 = safe_add_func_uint8_t_u_u(p_1066->g_15.f0, 5))
                    { /* block id: 137 */
                        int32_t ***l_452 = &l_203;
                        int16_t l_453[2][8][9] = {{{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L},{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L},{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L},{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L},{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L},{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L},{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L},{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L}},{{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L},{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L},{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L},{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L},{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L},{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L},{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L},{0x04E3L,0x04E3L,0x0844L,(-1L),0x5138L,(-1L),0x0844L,0x04E3L,0x04E3L}}};
                        uint16_t *l_454 = &l_192.f2;
                        uint16_t *l_455[2];
                        int32_t l_458 = 0x543DFEBFL;
                        int32_t l_459 = 0x4B07DBA6L;
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_455[i] = (void*)0;
                        (*p_1066->g_297) |= p_38;
                        (*l_145) &= ((((*l_118) = (safe_div_func_uint16_t_u_u((p_1066->g_456 |= (safe_div_func_uint32_t_u_u(p_1066->g_309.s1, ((VECTOR(uint32_t, 4))(0xBE89035BL, (((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 2))((!((VECTOR(int8_t, 2))(0x2EL, 0x16L))))).xyyy, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 4))(p_1066->g_441.wxxy)), ((VECTOR(int8_t, 4))(4L, ((VECTOR(int8_t, 2))(l_442.xx)), 0x07L))))).w, 0L, 0x53L, 0x3AL))))).w < ((safe_div_func_uint64_t_u_u(((FAKE_DIVERGE(p_1066->group_2_offset, get_group_id(2), 10) == (((l_445 > (safe_add_func_int32_t_s_s((-1L), ((safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1066->group_2_offset, get_group_id(2), 10), 6)) != (l_452 == (void*)0))))) ^ 1L) , ((*l_147) = ((((l_442.w != (l_445 > 0xFA2D524DL)) , p_1066->g_424.y) , p_1066->g_45[0]) > l_442.y)))) < p_1066->g_117), p_38)) , l_453[1][0][4])), 0UL, 4294967295UL)).y))), 0x4541L))) || 4294967295UL) , p_38);
                        (*p_1066->g_297) ^= (-7L);
                        l_460++;
                    }
                    for (l_192.f1 = 0; (l_192.f1 > 22); l_192.f1 = safe_add_func_int8_t_s_s(l_192.f1, 8))
                    { /* block id: 148 */
                        int32_t ***l_470 = &l_465[2];
                        (*l_470) = l_465[2];
                    }
                    l_484 &= (((*l_471) = (void*)0) != ((((p_38 ^ (safe_sub_func_int8_t_s_s((0xD890L || ((((VECTOR(uint32_t, 2))(l_474.s21)).lo < ((*l_118) ^= ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(l_475.zxwyzwxxwwyxzwxw)).s9c < ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 2))((-5L), 0x22027F27L)))))))).lo)) | ((((l_457[1] = ((*p_39) , p_38)) >= (FAKE_DIVERGE(p_1066->group_1_offset, get_group_id(1), 10) == (&p_39 == ((*l_476) = &p_40)))) >= (8UL == (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 2))(l_480.yx)), ((VECTOR(int8_t, 4))(p_1066->g_481.sc1bf)).odd))).xyxxxyxx && ((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 16))(l_482.zyxzyyxxzwwzzyyz)), ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))((*l_145), ((VECTOR(int8_t, 2))((-9L))), 0x31L)).wywxxwyywzwyzzyx && ((VECTOR(int8_t, 16))(7L))))).s1936, ((VECTOR(int8_t, 4))(0x15L))))).xxywwyzzywzzzwzy, ((VECTOR(int8_t, 16))(0x0EL))))), ((VECTOR(int8_t, 16))(0x1FL))))).odd))).s7, p_38)))) , GROUP_DIVERGE(1, 1)))), 9UL))) <= l_445) != p_38) , l_483));
                }
                else
                { /* block id: 156 */
                    l_485 = (*p_1066->g_63);
                    return (*p_39);
                }
            }
            --l_493;
        }
    }
    else
    { /* block id: 163 */
        return (*p_1066->g_14);
    }
    l_545 ^= (((*l_542) = (p_1066->g_424.y ^= ((((((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),VECTOR(uint64_t, 4),((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 8))(0x5CF4F6E1F450D483L, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(p_1066->g_496.s3552606401370402)).se0 && ((VECTOR(int64_t, 4))(l_497.sf658)).hi))), ((VECTOR(int64_t, 2))(0L, 0L)), ((VECTOR(int64_t, 2))(l_498.s13)), 1L)).s77, ((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 4))(l_499.s1601)).yywxywwz, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(p_1066->g_500.yy)), ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(p_1066->g_501.yy)).yyyx == ((VECTOR(int64_t, 16))(p_38, ((*l_118) = (safe_sub_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((((safe_add_func_int64_t_s_s((*l_118), ((safe_rshift_func_int8_t_s_s(((((safe_div_func_int32_t_s_s((((((VECTOR(uint64_t, 4))(((*l_513)--), ((VECTOR(uint64_t, 2))(l_516.s96)), 1UL)).z | ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))(0x74CDE662CE55D868L, 18446744073709551615UL, ((VECTOR(uint64_t, 2))(0x792AA433764D75CDL, 6UL)), ((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(uint64_t, 2))(0UL, 8UL)).xyxy, ((VECTOR(uint64_t, 2))(0x68CB4128F1E53627L, 0x178A777F6F04B8EEL)).xyyy))), 0xC7F6C2DB4FF31395L, 0x7E96ED7D0881F9D2L, 0x661806E6C2D0A12AL, (p_1066->g_389.y || (~((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(l_521.yy)).yxyx ^ ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_522.sadcc)), ((VECTOR(int8_t, 2))(0x77L, (-3L))), 8L, 0L, (safe_div_func_int32_t_s_s(((((safe_div_func_int64_t_s_s((((*l_541) &= (((p_1066->g_456 | (((((p_1066->g_156 = l_206) == ((0x1E007195EB1FE6BAL != (p_1066->g_265.z &= ((safe_mul_func_int8_t_s_s(((safe_sub_func_int16_t_s_s(((void*)0 != &l_370), ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(l_534.wx)).xyxyyxxyyyyxyyxx != ((VECTOR(int16_t, 16))(p_1066->g_535.zxzxxwxxywwwzwzy))))).s6)) < (safe_mod_func_int64_t_s_s((safe_mul_func_uint8_t_u_u(p_1066->g_181.se, 0x27L)), 7L))), (*l_118))) , 18446744073709551608UL))) , &p_1066->g_154)) | 0x6B98BDA7L) ^ 0L) <= 8UL)) < GROUP_DIVERGE(1, 1)) , 5UL)) < p_38), (*l_118))) & (-8L)) & p_38) != p_1066->g_310.s0), p_38)), 0L, ((VECTOR(int8_t, 2))((-7L))), 1L, 0L, 0x59L, 0x3DL)).s54, ((VECTOR(int8_t, 2))(6L))))), 9L, 0L, 1L, 0x2CL, (-3L), 0x0CL)).odd))).w)), ((VECTOR(uint64_t, 2))(0x83F1B9903CA798CDL)), 2UL, 0UL)).s7e70 + ((VECTOR(uint64_t, 4))(0x5E1833CE11357ACDL))))).zxzwwzyz + ((VECTOR(uint64_t, 8))(0x7B06AF87A97FCC59L))))).s7) < p_38) <= p_1066->g_181.s0), 4294967295UL)) >= p_1066->g_456) ^ p_1066->g_428) || 0x3E253826L), 6)) == 0xA84DFFE3E162EA9FL))) || p_1066->g_310.s6) ^ p_38), 14)), 0UL))), ((VECTOR(int64_t, 8))(0x3E6F4553DEF73A70L)), ((VECTOR(int64_t, 2))(1L)), 0L, ((VECTOR(int64_t, 2))(0x2B7131C17ECCBD3BL)), 0x11263D65DE0376E6L)).s175c))), (-6L), 0x3BBF4B3D9E3BC848L)).even <= ((VECTOR(int64_t, 4))(0L))))).xwywzyyz))).s75, ((VECTOR(int64_t, 2))(0x115BE0B592A1550EL))))), (-1L), (-1L))).even != ((VECTOR(int64_t, 2))(0x55F6615FE9B7AA81L))))).yxxyxyyx, ((VECTOR(int64_t, 8))((-1L)))))).odd, ((VECTOR(uint64_t, 4))(0x0A8B52F98FAB7BDEL)), ((VECTOR(uint64_t, 4))(0xE906C5008B1F6CE7L))))), ((VECTOR(uint64_t, 4))(0x185BFB536FA269E0L)), ((VECTOR(uint64_t, 4))(4UL))))).y ^ p_1066->g_169.f0) , GROUP_DIVERGE(2, 1)) > 0L) & p_1066->g_303.w))) & p_1066->g_127[1]);
    if ((safe_add_func_int32_t_s_s((safe_sub_func_uint8_t_u_u(((void*)0 == &p_1066->g_425), (((*l_565) = (safe_rshift_func_uint8_t_u_s(p_1066->g_91.f0, (((*l_115) = p_38) == (1UL == ((safe_div_func_uint64_t_u_u(((safe_mul_func_int8_t_s_s(((*l_118) = p_38), l_556)) == (safe_sub_func_uint64_t_u_u(p_38, (safe_rshift_func_uint16_t_u_u((safe_mod_func_int8_t_s_s((l_563 != &p_1066->g_63), 0xA1L)), p_1066->g_60.s1))))), FAKE_DIVERGE(p_1066->global_0_offset, get_global_id(0), 10))) , p_38)))))) < p_38))), GROUP_DIVERGE(0, 1))))
    { /* block id: 177 */
        uint16_t l_566 = 0xD34DL;
        uint32_t **l_568 = &l_541;
        VECTOR(int32_t, 4) l_570 = (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), (-1L)), (-1L));
        int32_t l_590[2];
        int i;
        for (i = 0; i < 2; i++)
            l_590[i] = 0x687037F8L;
        (*p_1066->g_297) = l_566;
        (*l_118) = ((p_1066->g_567 , l_568) != (void*)0);
        l_570.z = (((GROUP_DIVERGE(0, 1) == ((l_566 <= (safe_unary_minus_func_uint8_t_u(p_1066->g_215.s1))) <= (((VECTOR(int32_t, 16))(l_570.yxzzyzxwxxwzwzxw)).s2 , (~((VECTOR(int16_t, 8))(l_571.zywwxzww)).s3)))) && (safe_mul_func_int16_t_s_s(((((safe_mod_func_uint32_t_u_u(p_1066->g_501.x, 4294967295UL)) == ((((safe_rshift_func_uint16_t_u_u((((((VECTOR(uint32_t, 2))(0x04242E63L, 0xBCE6DEEFL)).even >= (safe_div_func_uint16_t_u_u((p_38 > ((safe_mul_func_int8_t_s_s((((VECTOR(int64_t, 8))(l_582.sd7f2aa4b)).s7 < (*l_118)), 0x76L)) < (((safe_mul_func_uint16_t_u_u(((p_38 && (!p_38)) & (-1L)), p_1066->g_66)) | p_38) >= (-1L)))), p_38))) >= 5L) ^ 5UL), 14)) < p_38) != GROUP_DIVERGE(1, 1)) , p_38)) || p_38) & (*l_118)), p_38))) != p_38);
        l_591--;
    }
    else
    { /* block id: 182 */
        (*p_1066->g_297) &= (*l_118);
    }
    (*p_1066->g_297) |= (&l_393 != &l_393);
    return l_594;
}


/* ------------------------------------------ */
/* 
 * reads : p_1066->g_15.f0 p_1066->g_14 p_1066->g_15 p_1066->g_60 p_1066->g_61 p_1066->g_45 p_1066->g_57 p_1066->g_63 p_1066->g_66 p_1066->g_64 p_1066->g_91
 * writes: p_1066->g_57 p_1066->g_64 p_1066->g_66 p_1066->g_70 p_1066->g_72 p_1066->g_87
 */
union U1  func_48(uint32_t  p_49, uint64_t * p_50, int16_t  p_51, union U3 * p_52, uint16_t  p_53, struct S5 * p_1066)
{ /* block id: 9 */
    int32_t *l_56 = &p_1066->g_57;
    int32_t *l_65 = &p_1066->g_66;
    int8_t *l_69 = &p_1066->g_70[4][4][1];
    int8_t *l_71 = &p_1066->g_72;
    VECTOR(int32_t, 8) l_75 = (VECTOR(int32_t, 8))(0x01B91F40L, (VECTOR(int32_t, 4))(0x01B91F40L, (VECTOR(int32_t, 2))(0x01B91F40L, (-1L)), (-1L)), (-1L), 0x01B91F40L, (-1L));
    int32_t **l_76 = &l_56;
    int32_t *l_77 = &p_1066->g_57;
    union U3 l_82 = {0x58F18CA9A6AE6C26L};
    int32_t l_85 = 0L;
    int16_t *l_86 = &p_1066->g_87;
    int8_t l_88 = 0x17L;
    int32_t *l_89 = (void*)0;
    int i;
    (*l_56) = p_1066->g_15.f0;
    (*l_65) &= func_58((*p_1066->g_14), p_1066);
    (*l_65) = (safe_rshift_func_uint8_t_u_s(255UL, 7));
    l_75.s4 = (((void*)0 == p_52) , (((((*l_71) = ((*l_69) = 0x71L)) != (((*l_65) ^= (((safe_div_func_int16_t_s_s((((((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_75.s42)), 0L, (-1L))).hi && ((VECTOR(int32_t, 16))(0x571DA884L, ((*l_77) ^= (+(((*l_76) = (*p_1066->g_63)) == l_77))), ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))((safe_mul_func_uint16_t_u_u(p_51, ((*l_86) = ((safe_add_func_int16_t_s_s((-1L), (l_82 , ((safe_sub_func_uint8_t_u_u(0xDCL, (*l_77))) == l_85)))) | p_1066->g_60.s1)))), 1L, 0x52146605L, ((VECTOR(int32_t, 4))(0x6D82068EL)), ((VECTOR(int32_t, 4))(0x1CB01B09L)), ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))(4L)), 1L)).s5dea != ((VECTOR(int32_t, 4))(0x5AB18E11L))))).even, ((VECTOR(int32_t, 2))(0x175C8F0AL))))) && ((VECTOR(int32_t, 2))(0L))))), 0x748E3606L, 0x16123697L)).zywywzxy && ((VECTOR(int32_t, 8))((-9L)))))) & ((VECTOR(int32_t, 8))(3L))))).s5047606124726130 == ((VECTOR(int32_t, 16))(0x0B84F8C0L))))).s3821, ((VECTOR(int32_t, 4))(0x5CAA3977L))))), ((VECTOR(int32_t, 4))(1L)), ((VECTOR(int32_t, 4))(0x41C0C234L)), 9L, (-9L))).s76))), ((VECTOR(int32_t, 8))(1L)), ((VECTOR(int32_t, 4))(7L)), (-1L), (-5L))), (int32_t)p_51))) && ((VECTOR(int32_t, 16))((-3L)))))) >= ((VECTOR(int32_t, 16))(0x62759977L))))).sace7, ((VECTOR(int32_t, 4))(9L))))).zxxxywwwzzwywxwz, ((VECTOR(int32_t, 16))(0x600E36C3L))))).sa > l_88) != 0x064248A5L) , 0x6EC4L), 0x17DDL)) >= p_1066->g_45[0]) >= 2L)) > 0x1C69F0B4L)) > p_53) <= (-1L)));
    return p_1066->g_91;
}


/* ------------------------------------------ */
/* 
 * reads : p_1066->g_60 p_1066->g_61 p_1066->g_45 p_1066->g_57 p_1066->g_63
 * writes: p_1066->g_57 p_1066->g_64
 */
int32_t  func_58(union U3  p_59, struct S5 * p_1066)
{ /* block id: 11 */
    int32_t *l_62[6][1] = {{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57}};
    int i, j;
    p_1066->g_57 &= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x09188B9AL, 0x19AC4E69L)), (-3L), (-1L), (-7L), ((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 2))(p_1066->g_60.s40)).xyyxxyxx, ((VECTOR(uint16_t, 4))(p_1066->g_61.sf884)).xywywzxw))).s5, 0x1552C254L, 0x69879A92L)), (p_1066->g_45[1] ^ p_59.f0), ((VECTOR(int32_t, 2))(2L, 0x40E81688L)), (-1L), 0x533F116EL, 5L, 0x6340C09CL, 0x4FCF4275L)).s7;
    (*p_1066->g_63) = &p_1066->g_57;
    return p_59.f0;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S5 c_1067;
    struct S5* p_1066 = &c_1067;
    struct S5 c_1068 = {
        {-4L}, // p_1066->g_15
        &p_1066->g_15, // p_1066->g_14
        {1UL,1UL}, // p_1066->g_45
        2L, // p_1066->g_57
        (VECTOR(int16_t, 8))(0x742DL, (VECTOR(int16_t, 4))(0x742DL, (VECTOR(int16_t, 2))(0x742DL, 0L), 0L), 0L, 0x742DL, 0L), // p_1066->g_60
        (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint16_t, 2))(1UL, 0UL), (VECTOR(uint16_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL), // p_1066->g_61
        {{{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57},{&p_1066->g_57}}}, // p_1066->g_64
        &p_1066->g_64[0][0][0], // p_1066->g_63
        (-5L), // p_1066->g_66
        {{{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L}},{{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L}},{{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L}},{{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L}},{{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L}},{{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L},{3L,0x56L,0x73L,0x08L}}}, // p_1066->g_70
        0x6AL, // p_1066->g_72
        0L, // p_1066->g_87
        (void*)0, // p_1066->g_90
        {0x09151F0AL}, // p_1066->g_91
        0UL, // p_1066->g_93
        0xCE46C463L, // p_1066->g_99
        0xB2L, // p_1066->g_116
        0x248B132FL, // p_1066->g_117
        {0x4E8F995CB7F88A73L,0x4E8F995CB7F88A73L,0x4E8F995CB7F88A73L}, // p_1066->g_127
        (VECTOR(int64_t, 16))(0x385DC8BF38B4BADCL, (VECTOR(int64_t, 4))(0x385DC8BF38B4BADCL, (VECTOR(int64_t, 2))(0x385DC8BF38B4BADCL, 0x1F5F0232DB0CE199L), 0x1F5F0232DB0CE199L), 0x1F5F0232DB0CE199L, 0x385DC8BF38B4BADCL, 0x1F5F0232DB0CE199L, (VECTOR(int64_t, 2))(0x385DC8BF38B4BADCL, 0x1F5F0232DB0CE199L), (VECTOR(int64_t, 2))(0x385DC8BF38B4BADCL, 0x1F5F0232DB0CE199L), 0x385DC8BF38B4BADCL, 0x1F5F0232DB0CE199L, 0x385DC8BF38B4BADCL, 0x1F5F0232DB0CE199L), // p_1066->g_128
        (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 3L), 3L), // p_1066->g_129
        (VECTOR(int64_t, 2))(0x0149EDFFE6EDFE9CL, (-2L)), // p_1066->g_130
        (VECTOR(int64_t, 16))(0x6C2FE16E7D2BA4BAL, (VECTOR(int64_t, 4))(0x6C2FE16E7D2BA4BAL, (VECTOR(int64_t, 2))(0x6C2FE16E7D2BA4BAL, 0x25CBB4F55AC2ACB6L), 0x25CBB4F55AC2ACB6L), 0x25CBB4F55AC2ACB6L, 0x6C2FE16E7D2BA4BAL, 0x25CBB4F55AC2ACB6L, (VECTOR(int64_t, 2))(0x6C2FE16E7D2BA4BAL, 0x25CBB4F55AC2ACB6L), (VECTOR(int64_t, 2))(0x6C2FE16E7D2BA4BAL, 0x25CBB4F55AC2ACB6L), 0x6C2FE16E7D2BA4BAL, 0x25CBB4F55AC2ACB6L, 0x6C2FE16E7D2BA4BAL, 0x25CBB4F55AC2ACB6L), // p_1066->g_141
        {0x3F3FL}, // p_1066->g_154
        &p_1066->g_154, // p_1066->g_156
        &p_1066->g_156, // p_1066->g_155
        {6L}, // p_1066->g_169
        (VECTOR(int16_t, 16))(0x3654L, (VECTOR(int16_t, 4))(0x3654L, (VECTOR(int16_t, 2))(0x3654L, 0x6421L), 0x6421L), 0x6421L, 0x3654L, 0x6421L, (VECTOR(int16_t, 2))(0x3654L, 0x6421L), (VECTOR(int16_t, 2))(0x3654L, 0x6421L), 0x3654L, 0x6421L, 0x3654L, 0x6421L), // p_1066->g_176
        (VECTOR(int8_t, 16))(0x72L, (VECTOR(int8_t, 4))(0x72L, (VECTOR(int8_t, 2))(0x72L, 0x79L), 0x79L), 0x79L, 0x72L, 0x79L, (VECTOR(int8_t, 2))(0x72L, 0x79L), (VECTOR(int8_t, 2))(0x72L, 0x79L), 0x72L, 0x79L, 0x72L, 0x79L), // p_1066->g_181
        0UL, // p_1066->g_200
        (VECTOR(uint8_t, 4))(0x8AL, (VECTOR(uint8_t, 2))(0x8AL, 0UL), 0UL), // p_1066->g_207
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xD86BL), 0xD86BL), 0xD86BL, 0UL, 0xD86BL), // p_1066->g_215
        {0x0F7C6402L}, // p_1066->g_223
        6L, // p_1066->g_260
        (VECTOR(uint64_t, 4))(0x71501072548CC669L, (VECTOR(uint64_t, 2))(0x71501072548CC669L, 0xFF364518C668514EL), 0xFF364518C668514EL), // p_1066->g_265
        (-7L), // p_1066->g_298
        &p_1066->g_298, // p_1066->g_297
        (VECTOR(int8_t, 8))(0x12L, (VECTOR(int8_t, 4))(0x12L, (VECTOR(int8_t, 2))(0x12L, 0L), 0L), 0L, 0x12L, 0L), // p_1066->g_302
        (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), (-2L)), (-2L)), // p_1066->g_303
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-10L)), (-10L)), (-10L), 1L, (-10L), (VECTOR(int8_t, 2))(1L, (-10L)), (VECTOR(int8_t, 2))(1L, (-10L)), 1L, (-10L), 1L, (-10L)), // p_1066->g_307
        (VECTOR(int8_t, 8))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), (-1L)), (-1L)), (-1L), (-3L), (-1L)), // p_1066->g_309
        (VECTOR(int8_t, 8))(0x29L, (VECTOR(int8_t, 4))(0x29L, (VECTOR(int8_t, 2))(0x29L, 0x02L), 0x02L), 0x02L, 0x29L, 0x02L), // p_1066->g_310
        (VECTOR(uint64_t, 2))(9UL, 0x6643504A857B8DB2L), // p_1066->g_363
        (VECTOR(uint64_t, 8))(5UL, (VECTOR(uint64_t, 4))(5UL, (VECTOR(uint64_t, 2))(5UL, 0UL), 0UL), 0UL, 5UL, 0UL), // p_1066->g_377
        (VECTOR(int16_t, 8))(0x7FF1L, (VECTOR(int16_t, 4))(0x7FF1L, (VECTOR(int16_t, 2))(0x7FF1L, 6L), 6L), 6L, 0x7FF1L, 6L), // p_1066->g_386
        (VECTOR(int32_t, 4))(0x46B851FFL, (VECTOR(int32_t, 2))(0x46B851FFL, 0x0DF1E9CBL), 0x0DF1E9CBL), // p_1066->g_389
        (VECTOR(int32_t, 16))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x06694103L), 0x06694103L), 0x06694103L, (-9L), 0x06694103L, (VECTOR(int32_t, 2))((-9L), 0x06694103L), (VECTOR(int32_t, 2))((-9L), 0x06694103L), (-9L), 0x06694103L, (-9L), 0x06694103L), // p_1066->g_400
        (VECTOR(uint16_t, 2))(65535UL, 65535UL), // p_1066->g_424
        (void*)0, // p_1066->g_425
        (-5L), // p_1066->g_428
        (VECTOR(int8_t, 4))(0x22L, (VECTOR(int8_t, 2))(0x22L, 0x5FL), 0x5FL), // p_1066->g_441
        0x7B970581L, // p_1066->g_456
        {(void*)0}, // p_1066->g_469
        &p_1066->g_469[0], // p_1066->g_468
        {&p_1066->g_468,&p_1066->g_468}, // p_1066->g_467
        (VECTOR(int8_t, 16))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, (-1L)), (-1L)), (-1L), 9L, (-1L), (VECTOR(int8_t, 2))(9L, (-1L)), (VECTOR(int8_t, 2))(9L, (-1L)), 9L, (-1L), 9L, (-1L)), // p_1066->g_481
        (VECTOR(int64_t, 8))(0x4F6497DEFACEA604L, (VECTOR(int64_t, 4))(0x4F6497DEFACEA604L, (VECTOR(int64_t, 2))(0x4F6497DEFACEA604L, 0L), 0L), 0L, 0x4F6497DEFACEA604L, 0L), // p_1066->g_496
        (VECTOR(int64_t, 2))(0L, 0x5F5984C10897EC88L), // p_1066->g_500
        (VECTOR(int64_t, 2))(0x768DC594B6C206ABL, 0x4D530674D2CC41B0L), // p_1066->g_501
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 3L), 3L), // p_1066->g_535
        {1L}, // p_1066->g_567
        (-1L), // p_1066->g_589
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x25F8423EL), 0x25F8423EL), // p_1066->g_606
        (VECTOR(int8_t, 8))(0x5BL, (VECTOR(int8_t, 4))(0x5BL, (VECTOR(int8_t, 2))(0x5BL, 8L), 8L), 8L, 0x5BL, 8L), // p_1066->g_616
        (VECTOR(int8_t, 16))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0x40L), 0x40L), 0x40L, 6L, 0x40L, (VECTOR(int8_t, 2))(6L, 0x40L), (VECTOR(int8_t, 2))(6L, 0x40L), 6L, 0x40L, 6L, 0x40L), // p_1066->g_638
        (VECTOR(int8_t, 2))((-1L), (-3L)), // p_1066->g_640
        (VECTOR(int32_t, 16))(0x59262154L, (VECTOR(int32_t, 4))(0x59262154L, (VECTOR(int32_t, 2))(0x59262154L, 0x5CD32675L), 0x5CD32675L), 0x5CD32675L, 0x59262154L, 0x5CD32675L, (VECTOR(int32_t, 2))(0x59262154L, 0x5CD32675L), (VECTOR(int32_t, 2))(0x59262154L, 0x5CD32675L), 0x59262154L, 0x5CD32675L, 0x59262154L, 0x5CD32675L), // p_1066->g_641
        {{4294967289UL,1UL,1UL,4294967295UL,1UL},{4294967289UL,1UL,1UL,4294967295UL,1UL},{4294967289UL,1UL,1UL,4294967295UL,1UL},{4294967289UL,1UL,1UL,4294967295UL,1UL},{4294967289UL,1UL,1UL,4294967295UL,1UL},{4294967289UL,1UL,1UL,4294967295UL,1UL},{4294967289UL,1UL,1UL,4294967295UL,1UL}}, // p_1066->g_661
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xFC1AL), 0xFC1AL), 0xFC1AL, 65535UL, 0xFC1AL, (VECTOR(uint16_t, 2))(65535UL, 0xFC1AL), (VECTOR(uint16_t, 2))(65535UL, 0xFC1AL), 65535UL, 0xFC1AL, 65535UL, 0xFC1AL), // p_1066->g_715
        (VECTOR(int16_t, 2))(0x1964L, 0L), // p_1066->g_721
        &p_1066->g_223.f4, // p_1066->g_725
        (VECTOR(int32_t, 16))(0x5021484EL, (VECTOR(int32_t, 4))(0x5021484EL, (VECTOR(int32_t, 2))(0x5021484EL, 0x0907E39BL), 0x0907E39BL), 0x0907E39BL, 0x5021484EL, 0x0907E39BL, (VECTOR(int32_t, 2))(0x5021484EL, 0x0907E39BL), (VECTOR(int32_t, 2))(0x5021484EL, 0x0907E39BL), 0x5021484EL, 0x0907E39BL, 0x5021484EL, 0x0907E39BL), // p_1066->g_729
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), 65535UL), // p_1066->g_733
        &p_1066->g_64[0][6][0], // p_1066->g_758
        (VECTOR(int8_t, 4))(0x37L, (VECTOR(int8_t, 2))(0x37L, 0x4CL), 0x4CL), // p_1066->g_783
        (void*)0, // p_1066->g_809
        (VECTOR(int16_t, 8))(0x4944L, (VECTOR(int16_t, 4))(0x4944L, (VECTOR(int16_t, 2))(0x4944L, (-1L)), (-1L)), (-1L), 0x4944L, (-1L)), // p_1066->g_810
        0x58A8L, // p_1066->g_825
        {0x3F62D421L}, // p_1066->g_841
        {0x2A8263FE7BE66375L}, // p_1066->g_845
        {1UL}, // p_1066->g_850
        &p_1066->g_64[0][4][0], // p_1066->g_870
        0xDC5672CCL, // p_1066->g_874
        (VECTOR(int32_t, 16))(0x1F91EB07L, (VECTOR(int32_t, 4))(0x1F91EB07L, (VECTOR(int32_t, 2))(0x1F91EB07L, 0x2A8EBA88L), 0x2A8EBA88L), 0x2A8EBA88L, 0x1F91EB07L, 0x2A8EBA88L, (VECTOR(int32_t, 2))(0x1F91EB07L, 0x2A8EBA88L), (VECTOR(int32_t, 2))(0x1F91EB07L, 0x2A8EBA88L), 0x1F91EB07L, 0x2A8EBA88L, 0x1F91EB07L, 0x2A8EBA88L), // p_1066->g_875
        (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0L), 0L), // p_1066->g_876
        &p_1066->g_45[0], // p_1066->g_891
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x5D91L), 0x5D91L), 0x5D91L, 0UL, 0x5D91L), // p_1066->g_914
        (VECTOR(int16_t, 2))(0x6A93L, 1L), // p_1066->g_936
        (VECTOR(int16_t, 2))((-4L), 0L), // p_1066->g_943
        (VECTOR(int16_t, 4))(0x4542L, (VECTOR(int16_t, 2))(0x4542L, 0x5BC7L), 0x5BC7L), // p_1066->g_944
        (VECTOR(int16_t, 8))(0x09B6L, (VECTOR(int16_t, 4))(0x09B6L, (VECTOR(int16_t, 2))(0x09B6L, 0x4E24L), 0x4E24L), 0x4E24L, 0x09B6L, 0x4E24L), // p_1066->g_945
        (VECTOR(int16_t, 4))(0x0510L, (VECTOR(int16_t, 2))(0x0510L, (-8L)), (-8L)), // p_1066->g_946
        0UL, // p_1066->g_965
        (VECTOR(uint8_t, 4))(0xE1L, (VECTOR(uint8_t, 2))(0xE1L, 0x20L), 0x20L), // p_1066->g_983
        (VECTOR(int32_t, 8))(0x34988DECL, (VECTOR(int32_t, 4))(0x34988DECL, (VECTOR(int32_t, 2))(0x34988DECL, 8L), 8L), 8L, 0x34988DECL, 8L), // p_1066->g_989
        (VECTOR(int32_t, 16))(0x64DEAF4AL, (VECTOR(int32_t, 4))(0x64DEAF4AL, (VECTOR(int32_t, 2))(0x64DEAF4AL, 0x4ABE0435L), 0x4ABE0435L), 0x4ABE0435L, 0x64DEAF4AL, 0x4ABE0435L, (VECTOR(int32_t, 2))(0x64DEAF4AL, 0x4ABE0435L), (VECTOR(int32_t, 2))(0x64DEAF4AL, 0x4ABE0435L), 0x64DEAF4AL, 0x4ABE0435L, 0x64DEAF4AL, 0x4ABE0435L), // p_1066->g_996
        (-1L), // p_1066->g_1006
        {{{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93}},{{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93}},{{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93}},{{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93}},{{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93}},{{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93}},{{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93},{&p_1066->g_93,&p_1066->g_93,&p_1066->g_93}}}, // p_1066->g_1025
        {{{&p_1066->g_1025[1][3][1],&p_1066->g_1025[6][2][2],&p_1066->g_1025[1][3][1]}},{{&p_1066->g_1025[1][3][1],&p_1066->g_1025[6][2][2],&p_1066->g_1025[1][3][1]}},{{&p_1066->g_1025[1][3][1],&p_1066->g_1025[6][2][2],&p_1066->g_1025[1][3][1]}},{{&p_1066->g_1025[1][3][1],&p_1066->g_1025[6][2][2],&p_1066->g_1025[1][3][1]}}}, // p_1066->g_1024
        &p_1066->g_1024[2][0][1], // p_1066->g_1027
        sequence_input[get_global_id(0)], // p_1066->global_0_offset
        sequence_input[get_global_id(1)], // p_1066->global_1_offset
        sequence_input[get_global_id(2)], // p_1066->global_2_offset
        sequence_input[get_local_id(0)], // p_1066->local_0_offset
        sequence_input[get_local_id(1)], // p_1066->local_1_offset
        sequence_input[get_local_id(2)], // p_1066->local_2_offset
        sequence_input[get_group_id(0)], // p_1066->group_0_offset
        sequence_input[get_group_id(1)], // p_1066->group_1_offset
        sequence_input[get_group_id(2)], // p_1066->group_2_offset
    };
    c_1067 = c_1068;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1066);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1066->g_15.f0, "p_1066->g_15.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1066->g_45[i], "p_1066->g_45[i]", print_hash_value);

    }
    transparent_crc(p_1066->g_57, "p_1066->g_57", print_hash_value);
    transparent_crc(p_1066->g_60.s0, "p_1066->g_60.s0", print_hash_value);
    transparent_crc(p_1066->g_60.s1, "p_1066->g_60.s1", print_hash_value);
    transparent_crc(p_1066->g_60.s2, "p_1066->g_60.s2", print_hash_value);
    transparent_crc(p_1066->g_60.s3, "p_1066->g_60.s3", print_hash_value);
    transparent_crc(p_1066->g_60.s4, "p_1066->g_60.s4", print_hash_value);
    transparent_crc(p_1066->g_60.s5, "p_1066->g_60.s5", print_hash_value);
    transparent_crc(p_1066->g_60.s6, "p_1066->g_60.s6", print_hash_value);
    transparent_crc(p_1066->g_60.s7, "p_1066->g_60.s7", print_hash_value);
    transparent_crc(p_1066->g_61.s0, "p_1066->g_61.s0", print_hash_value);
    transparent_crc(p_1066->g_61.s1, "p_1066->g_61.s1", print_hash_value);
    transparent_crc(p_1066->g_61.s2, "p_1066->g_61.s2", print_hash_value);
    transparent_crc(p_1066->g_61.s3, "p_1066->g_61.s3", print_hash_value);
    transparent_crc(p_1066->g_61.s4, "p_1066->g_61.s4", print_hash_value);
    transparent_crc(p_1066->g_61.s5, "p_1066->g_61.s5", print_hash_value);
    transparent_crc(p_1066->g_61.s6, "p_1066->g_61.s6", print_hash_value);
    transparent_crc(p_1066->g_61.s7, "p_1066->g_61.s7", print_hash_value);
    transparent_crc(p_1066->g_61.s8, "p_1066->g_61.s8", print_hash_value);
    transparent_crc(p_1066->g_61.s9, "p_1066->g_61.s9", print_hash_value);
    transparent_crc(p_1066->g_61.sa, "p_1066->g_61.sa", print_hash_value);
    transparent_crc(p_1066->g_61.sb, "p_1066->g_61.sb", print_hash_value);
    transparent_crc(p_1066->g_61.sc, "p_1066->g_61.sc", print_hash_value);
    transparent_crc(p_1066->g_61.sd, "p_1066->g_61.sd", print_hash_value);
    transparent_crc(p_1066->g_61.se, "p_1066->g_61.se", print_hash_value);
    transparent_crc(p_1066->g_61.sf, "p_1066->g_61.sf", print_hash_value);
    transparent_crc(p_1066->g_66, "p_1066->g_66", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1066->g_70[i][j][k], "p_1066->g_70[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1066->g_72, "p_1066->g_72", print_hash_value);
    transparent_crc(p_1066->g_87, "p_1066->g_87", print_hash_value);
    transparent_crc(p_1066->g_93, "p_1066->g_93", print_hash_value);
    transparent_crc(p_1066->g_99, "p_1066->g_99", print_hash_value);
    transparent_crc(p_1066->g_116, "p_1066->g_116", print_hash_value);
    transparent_crc(p_1066->g_117, "p_1066->g_117", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1066->g_127[i], "p_1066->g_127[i]", print_hash_value);

    }
    transparent_crc(p_1066->g_128.s0, "p_1066->g_128.s0", print_hash_value);
    transparent_crc(p_1066->g_128.s1, "p_1066->g_128.s1", print_hash_value);
    transparent_crc(p_1066->g_128.s2, "p_1066->g_128.s2", print_hash_value);
    transparent_crc(p_1066->g_128.s3, "p_1066->g_128.s3", print_hash_value);
    transparent_crc(p_1066->g_128.s4, "p_1066->g_128.s4", print_hash_value);
    transparent_crc(p_1066->g_128.s5, "p_1066->g_128.s5", print_hash_value);
    transparent_crc(p_1066->g_128.s6, "p_1066->g_128.s6", print_hash_value);
    transparent_crc(p_1066->g_128.s7, "p_1066->g_128.s7", print_hash_value);
    transparent_crc(p_1066->g_128.s8, "p_1066->g_128.s8", print_hash_value);
    transparent_crc(p_1066->g_128.s9, "p_1066->g_128.s9", print_hash_value);
    transparent_crc(p_1066->g_128.sa, "p_1066->g_128.sa", print_hash_value);
    transparent_crc(p_1066->g_128.sb, "p_1066->g_128.sb", print_hash_value);
    transparent_crc(p_1066->g_128.sc, "p_1066->g_128.sc", print_hash_value);
    transparent_crc(p_1066->g_128.sd, "p_1066->g_128.sd", print_hash_value);
    transparent_crc(p_1066->g_128.se, "p_1066->g_128.se", print_hash_value);
    transparent_crc(p_1066->g_128.sf, "p_1066->g_128.sf", print_hash_value);
    transparent_crc(p_1066->g_129.x, "p_1066->g_129.x", print_hash_value);
    transparent_crc(p_1066->g_129.y, "p_1066->g_129.y", print_hash_value);
    transparent_crc(p_1066->g_129.z, "p_1066->g_129.z", print_hash_value);
    transparent_crc(p_1066->g_129.w, "p_1066->g_129.w", print_hash_value);
    transparent_crc(p_1066->g_130.x, "p_1066->g_130.x", print_hash_value);
    transparent_crc(p_1066->g_130.y, "p_1066->g_130.y", print_hash_value);
    transparent_crc(p_1066->g_141.s0, "p_1066->g_141.s0", print_hash_value);
    transparent_crc(p_1066->g_141.s1, "p_1066->g_141.s1", print_hash_value);
    transparent_crc(p_1066->g_141.s2, "p_1066->g_141.s2", print_hash_value);
    transparent_crc(p_1066->g_141.s3, "p_1066->g_141.s3", print_hash_value);
    transparent_crc(p_1066->g_141.s4, "p_1066->g_141.s4", print_hash_value);
    transparent_crc(p_1066->g_141.s5, "p_1066->g_141.s5", print_hash_value);
    transparent_crc(p_1066->g_141.s6, "p_1066->g_141.s6", print_hash_value);
    transparent_crc(p_1066->g_141.s7, "p_1066->g_141.s7", print_hash_value);
    transparent_crc(p_1066->g_141.s8, "p_1066->g_141.s8", print_hash_value);
    transparent_crc(p_1066->g_141.s9, "p_1066->g_141.s9", print_hash_value);
    transparent_crc(p_1066->g_141.sa, "p_1066->g_141.sa", print_hash_value);
    transparent_crc(p_1066->g_141.sb, "p_1066->g_141.sb", print_hash_value);
    transparent_crc(p_1066->g_141.sc, "p_1066->g_141.sc", print_hash_value);
    transparent_crc(p_1066->g_141.sd, "p_1066->g_141.sd", print_hash_value);
    transparent_crc(p_1066->g_141.se, "p_1066->g_141.se", print_hash_value);
    transparent_crc(p_1066->g_141.sf, "p_1066->g_141.sf", print_hash_value);
    transparent_crc(p_1066->g_154.f2, "p_1066->g_154.f2", print_hash_value);
    transparent_crc(p_1066->g_169.f0, "p_1066->g_169.f0", print_hash_value);
    transparent_crc(p_1066->g_176.s0, "p_1066->g_176.s0", print_hash_value);
    transparent_crc(p_1066->g_176.s1, "p_1066->g_176.s1", print_hash_value);
    transparent_crc(p_1066->g_176.s2, "p_1066->g_176.s2", print_hash_value);
    transparent_crc(p_1066->g_176.s3, "p_1066->g_176.s3", print_hash_value);
    transparent_crc(p_1066->g_176.s4, "p_1066->g_176.s4", print_hash_value);
    transparent_crc(p_1066->g_176.s5, "p_1066->g_176.s5", print_hash_value);
    transparent_crc(p_1066->g_176.s6, "p_1066->g_176.s6", print_hash_value);
    transparent_crc(p_1066->g_176.s7, "p_1066->g_176.s7", print_hash_value);
    transparent_crc(p_1066->g_176.s8, "p_1066->g_176.s8", print_hash_value);
    transparent_crc(p_1066->g_176.s9, "p_1066->g_176.s9", print_hash_value);
    transparent_crc(p_1066->g_176.sa, "p_1066->g_176.sa", print_hash_value);
    transparent_crc(p_1066->g_176.sb, "p_1066->g_176.sb", print_hash_value);
    transparent_crc(p_1066->g_176.sc, "p_1066->g_176.sc", print_hash_value);
    transparent_crc(p_1066->g_176.sd, "p_1066->g_176.sd", print_hash_value);
    transparent_crc(p_1066->g_176.se, "p_1066->g_176.se", print_hash_value);
    transparent_crc(p_1066->g_176.sf, "p_1066->g_176.sf", print_hash_value);
    transparent_crc(p_1066->g_181.s0, "p_1066->g_181.s0", print_hash_value);
    transparent_crc(p_1066->g_181.s1, "p_1066->g_181.s1", print_hash_value);
    transparent_crc(p_1066->g_181.s2, "p_1066->g_181.s2", print_hash_value);
    transparent_crc(p_1066->g_181.s3, "p_1066->g_181.s3", print_hash_value);
    transparent_crc(p_1066->g_181.s4, "p_1066->g_181.s4", print_hash_value);
    transparent_crc(p_1066->g_181.s5, "p_1066->g_181.s5", print_hash_value);
    transparent_crc(p_1066->g_181.s6, "p_1066->g_181.s6", print_hash_value);
    transparent_crc(p_1066->g_181.s7, "p_1066->g_181.s7", print_hash_value);
    transparent_crc(p_1066->g_181.s8, "p_1066->g_181.s8", print_hash_value);
    transparent_crc(p_1066->g_181.s9, "p_1066->g_181.s9", print_hash_value);
    transparent_crc(p_1066->g_181.sa, "p_1066->g_181.sa", print_hash_value);
    transparent_crc(p_1066->g_181.sb, "p_1066->g_181.sb", print_hash_value);
    transparent_crc(p_1066->g_181.sc, "p_1066->g_181.sc", print_hash_value);
    transparent_crc(p_1066->g_181.sd, "p_1066->g_181.sd", print_hash_value);
    transparent_crc(p_1066->g_181.se, "p_1066->g_181.se", print_hash_value);
    transparent_crc(p_1066->g_181.sf, "p_1066->g_181.sf", print_hash_value);
    transparent_crc(p_1066->g_200, "p_1066->g_200", print_hash_value);
    transparent_crc(p_1066->g_207.x, "p_1066->g_207.x", print_hash_value);
    transparent_crc(p_1066->g_207.y, "p_1066->g_207.y", print_hash_value);
    transparent_crc(p_1066->g_207.z, "p_1066->g_207.z", print_hash_value);
    transparent_crc(p_1066->g_207.w, "p_1066->g_207.w", print_hash_value);
    transparent_crc(p_1066->g_215.s0, "p_1066->g_215.s0", print_hash_value);
    transparent_crc(p_1066->g_215.s1, "p_1066->g_215.s1", print_hash_value);
    transparent_crc(p_1066->g_215.s2, "p_1066->g_215.s2", print_hash_value);
    transparent_crc(p_1066->g_215.s3, "p_1066->g_215.s3", print_hash_value);
    transparent_crc(p_1066->g_215.s4, "p_1066->g_215.s4", print_hash_value);
    transparent_crc(p_1066->g_215.s5, "p_1066->g_215.s5", print_hash_value);
    transparent_crc(p_1066->g_215.s6, "p_1066->g_215.s6", print_hash_value);
    transparent_crc(p_1066->g_215.s7, "p_1066->g_215.s7", print_hash_value);
    transparent_crc(p_1066->g_260, "p_1066->g_260", print_hash_value);
    transparent_crc(p_1066->g_265.x, "p_1066->g_265.x", print_hash_value);
    transparent_crc(p_1066->g_265.y, "p_1066->g_265.y", print_hash_value);
    transparent_crc(p_1066->g_265.z, "p_1066->g_265.z", print_hash_value);
    transparent_crc(p_1066->g_265.w, "p_1066->g_265.w", print_hash_value);
    transparent_crc(p_1066->g_298, "p_1066->g_298", print_hash_value);
    transparent_crc(p_1066->g_302.s0, "p_1066->g_302.s0", print_hash_value);
    transparent_crc(p_1066->g_302.s1, "p_1066->g_302.s1", print_hash_value);
    transparent_crc(p_1066->g_302.s2, "p_1066->g_302.s2", print_hash_value);
    transparent_crc(p_1066->g_302.s3, "p_1066->g_302.s3", print_hash_value);
    transparent_crc(p_1066->g_302.s4, "p_1066->g_302.s4", print_hash_value);
    transparent_crc(p_1066->g_302.s5, "p_1066->g_302.s5", print_hash_value);
    transparent_crc(p_1066->g_302.s6, "p_1066->g_302.s6", print_hash_value);
    transparent_crc(p_1066->g_302.s7, "p_1066->g_302.s7", print_hash_value);
    transparent_crc(p_1066->g_303.x, "p_1066->g_303.x", print_hash_value);
    transparent_crc(p_1066->g_303.y, "p_1066->g_303.y", print_hash_value);
    transparent_crc(p_1066->g_303.z, "p_1066->g_303.z", print_hash_value);
    transparent_crc(p_1066->g_303.w, "p_1066->g_303.w", print_hash_value);
    transparent_crc(p_1066->g_307.s0, "p_1066->g_307.s0", print_hash_value);
    transparent_crc(p_1066->g_307.s1, "p_1066->g_307.s1", print_hash_value);
    transparent_crc(p_1066->g_307.s2, "p_1066->g_307.s2", print_hash_value);
    transparent_crc(p_1066->g_307.s3, "p_1066->g_307.s3", print_hash_value);
    transparent_crc(p_1066->g_307.s4, "p_1066->g_307.s4", print_hash_value);
    transparent_crc(p_1066->g_307.s5, "p_1066->g_307.s5", print_hash_value);
    transparent_crc(p_1066->g_307.s6, "p_1066->g_307.s6", print_hash_value);
    transparent_crc(p_1066->g_307.s7, "p_1066->g_307.s7", print_hash_value);
    transparent_crc(p_1066->g_307.s8, "p_1066->g_307.s8", print_hash_value);
    transparent_crc(p_1066->g_307.s9, "p_1066->g_307.s9", print_hash_value);
    transparent_crc(p_1066->g_307.sa, "p_1066->g_307.sa", print_hash_value);
    transparent_crc(p_1066->g_307.sb, "p_1066->g_307.sb", print_hash_value);
    transparent_crc(p_1066->g_307.sc, "p_1066->g_307.sc", print_hash_value);
    transparent_crc(p_1066->g_307.sd, "p_1066->g_307.sd", print_hash_value);
    transparent_crc(p_1066->g_307.se, "p_1066->g_307.se", print_hash_value);
    transparent_crc(p_1066->g_307.sf, "p_1066->g_307.sf", print_hash_value);
    transparent_crc(p_1066->g_309.s0, "p_1066->g_309.s0", print_hash_value);
    transparent_crc(p_1066->g_309.s1, "p_1066->g_309.s1", print_hash_value);
    transparent_crc(p_1066->g_309.s2, "p_1066->g_309.s2", print_hash_value);
    transparent_crc(p_1066->g_309.s3, "p_1066->g_309.s3", print_hash_value);
    transparent_crc(p_1066->g_309.s4, "p_1066->g_309.s4", print_hash_value);
    transparent_crc(p_1066->g_309.s5, "p_1066->g_309.s5", print_hash_value);
    transparent_crc(p_1066->g_309.s6, "p_1066->g_309.s6", print_hash_value);
    transparent_crc(p_1066->g_309.s7, "p_1066->g_309.s7", print_hash_value);
    transparent_crc(p_1066->g_310.s0, "p_1066->g_310.s0", print_hash_value);
    transparent_crc(p_1066->g_310.s1, "p_1066->g_310.s1", print_hash_value);
    transparent_crc(p_1066->g_310.s2, "p_1066->g_310.s2", print_hash_value);
    transparent_crc(p_1066->g_310.s3, "p_1066->g_310.s3", print_hash_value);
    transparent_crc(p_1066->g_310.s4, "p_1066->g_310.s4", print_hash_value);
    transparent_crc(p_1066->g_310.s5, "p_1066->g_310.s5", print_hash_value);
    transparent_crc(p_1066->g_310.s6, "p_1066->g_310.s6", print_hash_value);
    transparent_crc(p_1066->g_310.s7, "p_1066->g_310.s7", print_hash_value);
    transparent_crc(p_1066->g_363.x, "p_1066->g_363.x", print_hash_value);
    transparent_crc(p_1066->g_363.y, "p_1066->g_363.y", print_hash_value);
    transparent_crc(p_1066->g_377.s0, "p_1066->g_377.s0", print_hash_value);
    transparent_crc(p_1066->g_377.s1, "p_1066->g_377.s1", print_hash_value);
    transparent_crc(p_1066->g_377.s2, "p_1066->g_377.s2", print_hash_value);
    transparent_crc(p_1066->g_377.s3, "p_1066->g_377.s3", print_hash_value);
    transparent_crc(p_1066->g_377.s4, "p_1066->g_377.s4", print_hash_value);
    transparent_crc(p_1066->g_377.s5, "p_1066->g_377.s5", print_hash_value);
    transparent_crc(p_1066->g_377.s6, "p_1066->g_377.s6", print_hash_value);
    transparent_crc(p_1066->g_377.s7, "p_1066->g_377.s7", print_hash_value);
    transparent_crc(p_1066->g_386.s0, "p_1066->g_386.s0", print_hash_value);
    transparent_crc(p_1066->g_386.s1, "p_1066->g_386.s1", print_hash_value);
    transparent_crc(p_1066->g_386.s2, "p_1066->g_386.s2", print_hash_value);
    transparent_crc(p_1066->g_386.s3, "p_1066->g_386.s3", print_hash_value);
    transparent_crc(p_1066->g_386.s4, "p_1066->g_386.s4", print_hash_value);
    transparent_crc(p_1066->g_386.s5, "p_1066->g_386.s5", print_hash_value);
    transparent_crc(p_1066->g_386.s6, "p_1066->g_386.s6", print_hash_value);
    transparent_crc(p_1066->g_386.s7, "p_1066->g_386.s7", print_hash_value);
    transparent_crc(p_1066->g_389.x, "p_1066->g_389.x", print_hash_value);
    transparent_crc(p_1066->g_389.y, "p_1066->g_389.y", print_hash_value);
    transparent_crc(p_1066->g_389.z, "p_1066->g_389.z", print_hash_value);
    transparent_crc(p_1066->g_389.w, "p_1066->g_389.w", print_hash_value);
    transparent_crc(p_1066->g_400.s0, "p_1066->g_400.s0", print_hash_value);
    transparent_crc(p_1066->g_400.s1, "p_1066->g_400.s1", print_hash_value);
    transparent_crc(p_1066->g_400.s2, "p_1066->g_400.s2", print_hash_value);
    transparent_crc(p_1066->g_400.s3, "p_1066->g_400.s3", print_hash_value);
    transparent_crc(p_1066->g_400.s4, "p_1066->g_400.s4", print_hash_value);
    transparent_crc(p_1066->g_400.s5, "p_1066->g_400.s5", print_hash_value);
    transparent_crc(p_1066->g_400.s6, "p_1066->g_400.s6", print_hash_value);
    transparent_crc(p_1066->g_400.s7, "p_1066->g_400.s7", print_hash_value);
    transparent_crc(p_1066->g_400.s8, "p_1066->g_400.s8", print_hash_value);
    transparent_crc(p_1066->g_400.s9, "p_1066->g_400.s9", print_hash_value);
    transparent_crc(p_1066->g_400.sa, "p_1066->g_400.sa", print_hash_value);
    transparent_crc(p_1066->g_400.sb, "p_1066->g_400.sb", print_hash_value);
    transparent_crc(p_1066->g_400.sc, "p_1066->g_400.sc", print_hash_value);
    transparent_crc(p_1066->g_400.sd, "p_1066->g_400.sd", print_hash_value);
    transparent_crc(p_1066->g_400.se, "p_1066->g_400.se", print_hash_value);
    transparent_crc(p_1066->g_400.sf, "p_1066->g_400.sf", print_hash_value);
    transparent_crc(p_1066->g_424.x, "p_1066->g_424.x", print_hash_value);
    transparent_crc(p_1066->g_424.y, "p_1066->g_424.y", print_hash_value);
    transparent_crc(p_1066->g_428, "p_1066->g_428", print_hash_value);
    transparent_crc(p_1066->g_441.x, "p_1066->g_441.x", print_hash_value);
    transparent_crc(p_1066->g_441.y, "p_1066->g_441.y", print_hash_value);
    transparent_crc(p_1066->g_441.z, "p_1066->g_441.z", print_hash_value);
    transparent_crc(p_1066->g_441.w, "p_1066->g_441.w", print_hash_value);
    transparent_crc(p_1066->g_456, "p_1066->g_456", print_hash_value);
    transparent_crc(p_1066->g_481.s0, "p_1066->g_481.s0", print_hash_value);
    transparent_crc(p_1066->g_481.s1, "p_1066->g_481.s1", print_hash_value);
    transparent_crc(p_1066->g_481.s2, "p_1066->g_481.s2", print_hash_value);
    transparent_crc(p_1066->g_481.s3, "p_1066->g_481.s3", print_hash_value);
    transparent_crc(p_1066->g_481.s4, "p_1066->g_481.s4", print_hash_value);
    transparent_crc(p_1066->g_481.s5, "p_1066->g_481.s5", print_hash_value);
    transparent_crc(p_1066->g_481.s6, "p_1066->g_481.s6", print_hash_value);
    transparent_crc(p_1066->g_481.s7, "p_1066->g_481.s7", print_hash_value);
    transparent_crc(p_1066->g_481.s8, "p_1066->g_481.s8", print_hash_value);
    transparent_crc(p_1066->g_481.s9, "p_1066->g_481.s9", print_hash_value);
    transparent_crc(p_1066->g_481.sa, "p_1066->g_481.sa", print_hash_value);
    transparent_crc(p_1066->g_481.sb, "p_1066->g_481.sb", print_hash_value);
    transparent_crc(p_1066->g_481.sc, "p_1066->g_481.sc", print_hash_value);
    transparent_crc(p_1066->g_481.sd, "p_1066->g_481.sd", print_hash_value);
    transparent_crc(p_1066->g_481.se, "p_1066->g_481.se", print_hash_value);
    transparent_crc(p_1066->g_481.sf, "p_1066->g_481.sf", print_hash_value);
    transparent_crc(p_1066->g_496.s0, "p_1066->g_496.s0", print_hash_value);
    transparent_crc(p_1066->g_496.s1, "p_1066->g_496.s1", print_hash_value);
    transparent_crc(p_1066->g_496.s2, "p_1066->g_496.s2", print_hash_value);
    transparent_crc(p_1066->g_496.s3, "p_1066->g_496.s3", print_hash_value);
    transparent_crc(p_1066->g_496.s4, "p_1066->g_496.s4", print_hash_value);
    transparent_crc(p_1066->g_496.s5, "p_1066->g_496.s5", print_hash_value);
    transparent_crc(p_1066->g_496.s6, "p_1066->g_496.s6", print_hash_value);
    transparent_crc(p_1066->g_496.s7, "p_1066->g_496.s7", print_hash_value);
    transparent_crc(p_1066->g_500.x, "p_1066->g_500.x", print_hash_value);
    transparent_crc(p_1066->g_500.y, "p_1066->g_500.y", print_hash_value);
    transparent_crc(p_1066->g_501.x, "p_1066->g_501.x", print_hash_value);
    transparent_crc(p_1066->g_501.y, "p_1066->g_501.y", print_hash_value);
    transparent_crc(p_1066->g_535.x, "p_1066->g_535.x", print_hash_value);
    transparent_crc(p_1066->g_535.y, "p_1066->g_535.y", print_hash_value);
    transparent_crc(p_1066->g_535.z, "p_1066->g_535.z", print_hash_value);
    transparent_crc(p_1066->g_535.w, "p_1066->g_535.w", print_hash_value);
    transparent_crc(p_1066->g_567.f0, "p_1066->g_567.f0", print_hash_value);
    transparent_crc(p_1066->g_589, "p_1066->g_589", print_hash_value);
    transparent_crc(p_1066->g_606.x, "p_1066->g_606.x", print_hash_value);
    transparent_crc(p_1066->g_606.y, "p_1066->g_606.y", print_hash_value);
    transparent_crc(p_1066->g_606.z, "p_1066->g_606.z", print_hash_value);
    transparent_crc(p_1066->g_606.w, "p_1066->g_606.w", print_hash_value);
    transparent_crc(p_1066->g_616.s0, "p_1066->g_616.s0", print_hash_value);
    transparent_crc(p_1066->g_616.s1, "p_1066->g_616.s1", print_hash_value);
    transparent_crc(p_1066->g_616.s2, "p_1066->g_616.s2", print_hash_value);
    transparent_crc(p_1066->g_616.s3, "p_1066->g_616.s3", print_hash_value);
    transparent_crc(p_1066->g_616.s4, "p_1066->g_616.s4", print_hash_value);
    transparent_crc(p_1066->g_616.s5, "p_1066->g_616.s5", print_hash_value);
    transparent_crc(p_1066->g_616.s6, "p_1066->g_616.s6", print_hash_value);
    transparent_crc(p_1066->g_616.s7, "p_1066->g_616.s7", print_hash_value);
    transparent_crc(p_1066->g_638.s0, "p_1066->g_638.s0", print_hash_value);
    transparent_crc(p_1066->g_638.s1, "p_1066->g_638.s1", print_hash_value);
    transparent_crc(p_1066->g_638.s2, "p_1066->g_638.s2", print_hash_value);
    transparent_crc(p_1066->g_638.s3, "p_1066->g_638.s3", print_hash_value);
    transparent_crc(p_1066->g_638.s4, "p_1066->g_638.s4", print_hash_value);
    transparent_crc(p_1066->g_638.s5, "p_1066->g_638.s5", print_hash_value);
    transparent_crc(p_1066->g_638.s6, "p_1066->g_638.s6", print_hash_value);
    transparent_crc(p_1066->g_638.s7, "p_1066->g_638.s7", print_hash_value);
    transparent_crc(p_1066->g_638.s8, "p_1066->g_638.s8", print_hash_value);
    transparent_crc(p_1066->g_638.s9, "p_1066->g_638.s9", print_hash_value);
    transparent_crc(p_1066->g_638.sa, "p_1066->g_638.sa", print_hash_value);
    transparent_crc(p_1066->g_638.sb, "p_1066->g_638.sb", print_hash_value);
    transparent_crc(p_1066->g_638.sc, "p_1066->g_638.sc", print_hash_value);
    transparent_crc(p_1066->g_638.sd, "p_1066->g_638.sd", print_hash_value);
    transparent_crc(p_1066->g_638.se, "p_1066->g_638.se", print_hash_value);
    transparent_crc(p_1066->g_638.sf, "p_1066->g_638.sf", print_hash_value);
    transparent_crc(p_1066->g_640.x, "p_1066->g_640.x", print_hash_value);
    transparent_crc(p_1066->g_640.y, "p_1066->g_640.y", print_hash_value);
    transparent_crc(p_1066->g_641.s0, "p_1066->g_641.s0", print_hash_value);
    transparent_crc(p_1066->g_641.s1, "p_1066->g_641.s1", print_hash_value);
    transparent_crc(p_1066->g_641.s2, "p_1066->g_641.s2", print_hash_value);
    transparent_crc(p_1066->g_641.s3, "p_1066->g_641.s3", print_hash_value);
    transparent_crc(p_1066->g_641.s4, "p_1066->g_641.s4", print_hash_value);
    transparent_crc(p_1066->g_641.s5, "p_1066->g_641.s5", print_hash_value);
    transparent_crc(p_1066->g_641.s6, "p_1066->g_641.s6", print_hash_value);
    transparent_crc(p_1066->g_641.s7, "p_1066->g_641.s7", print_hash_value);
    transparent_crc(p_1066->g_641.s8, "p_1066->g_641.s8", print_hash_value);
    transparent_crc(p_1066->g_641.s9, "p_1066->g_641.s9", print_hash_value);
    transparent_crc(p_1066->g_641.sa, "p_1066->g_641.sa", print_hash_value);
    transparent_crc(p_1066->g_641.sb, "p_1066->g_641.sb", print_hash_value);
    transparent_crc(p_1066->g_641.sc, "p_1066->g_641.sc", print_hash_value);
    transparent_crc(p_1066->g_641.sd, "p_1066->g_641.sd", print_hash_value);
    transparent_crc(p_1066->g_641.se, "p_1066->g_641.se", print_hash_value);
    transparent_crc(p_1066->g_641.sf, "p_1066->g_641.sf", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1066->g_661[i][j], "p_1066->g_661[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1066->g_715.s0, "p_1066->g_715.s0", print_hash_value);
    transparent_crc(p_1066->g_715.s1, "p_1066->g_715.s1", print_hash_value);
    transparent_crc(p_1066->g_715.s2, "p_1066->g_715.s2", print_hash_value);
    transparent_crc(p_1066->g_715.s3, "p_1066->g_715.s3", print_hash_value);
    transparent_crc(p_1066->g_715.s4, "p_1066->g_715.s4", print_hash_value);
    transparent_crc(p_1066->g_715.s5, "p_1066->g_715.s5", print_hash_value);
    transparent_crc(p_1066->g_715.s6, "p_1066->g_715.s6", print_hash_value);
    transparent_crc(p_1066->g_715.s7, "p_1066->g_715.s7", print_hash_value);
    transparent_crc(p_1066->g_715.s8, "p_1066->g_715.s8", print_hash_value);
    transparent_crc(p_1066->g_715.s9, "p_1066->g_715.s9", print_hash_value);
    transparent_crc(p_1066->g_715.sa, "p_1066->g_715.sa", print_hash_value);
    transparent_crc(p_1066->g_715.sb, "p_1066->g_715.sb", print_hash_value);
    transparent_crc(p_1066->g_715.sc, "p_1066->g_715.sc", print_hash_value);
    transparent_crc(p_1066->g_715.sd, "p_1066->g_715.sd", print_hash_value);
    transparent_crc(p_1066->g_715.se, "p_1066->g_715.se", print_hash_value);
    transparent_crc(p_1066->g_715.sf, "p_1066->g_715.sf", print_hash_value);
    transparent_crc(p_1066->g_721.x, "p_1066->g_721.x", print_hash_value);
    transparent_crc(p_1066->g_721.y, "p_1066->g_721.y", print_hash_value);
    transparent_crc(p_1066->g_729.s0, "p_1066->g_729.s0", print_hash_value);
    transparent_crc(p_1066->g_729.s1, "p_1066->g_729.s1", print_hash_value);
    transparent_crc(p_1066->g_729.s2, "p_1066->g_729.s2", print_hash_value);
    transparent_crc(p_1066->g_729.s3, "p_1066->g_729.s3", print_hash_value);
    transparent_crc(p_1066->g_729.s4, "p_1066->g_729.s4", print_hash_value);
    transparent_crc(p_1066->g_729.s5, "p_1066->g_729.s5", print_hash_value);
    transparent_crc(p_1066->g_729.s6, "p_1066->g_729.s6", print_hash_value);
    transparent_crc(p_1066->g_729.s7, "p_1066->g_729.s7", print_hash_value);
    transparent_crc(p_1066->g_729.s8, "p_1066->g_729.s8", print_hash_value);
    transparent_crc(p_1066->g_729.s9, "p_1066->g_729.s9", print_hash_value);
    transparent_crc(p_1066->g_729.sa, "p_1066->g_729.sa", print_hash_value);
    transparent_crc(p_1066->g_729.sb, "p_1066->g_729.sb", print_hash_value);
    transparent_crc(p_1066->g_729.sc, "p_1066->g_729.sc", print_hash_value);
    transparent_crc(p_1066->g_729.sd, "p_1066->g_729.sd", print_hash_value);
    transparent_crc(p_1066->g_729.se, "p_1066->g_729.se", print_hash_value);
    transparent_crc(p_1066->g_729.sf, "p_1066->g_729.sf", print_hash_value);
    transparent_crc(p_1066->g_733.x, "p_1066->g_733.x", print_hash_value);
    transparent_crc(p_1066->g_733.y, "p_1066->g_733.y", print_hash_value);
    transparent_crc(p_1066->g_733.z, "p_1066->g_733.z", print_hash_value);
    transparent_crc(p_1066->g_733.w, "p_1066->g_733.w", print_hash_value);
    transparent_crc(p_1066->g_783.x, "p_1066->g_783.x", print_hash_value);
    transparent_crc(p_1066->g_783.y, "p_1066->g_783.y", print_hash_value);
    transparent_crc(p_1066->g_783.z, "p_1066->g_783.z", print_hash_value);
    transparent_crc(p_1066->g_783.w, "p_1066->g_783.w", print_hash_value);
    transparent_crc(p_1066->g_810.s0, "p_1066->g_810.s0", print_hash_value);
    transparent_crc(p_1066->g_810.s1, "p_1066->g_810.s1", print_hash_value);
    transparent_crc(p_1066->g_810.s2, "p_1066->g_810.s2", print_hash_value);
    transparent_crc(p_1066->g_810.s3, "p_1066->g_810.s3", print_hash_value);
    transparent_crc(p_1066->g_810.s4, "p_1066->g_810.s4", print_hash_value);
    transparent_crc(p_1066->g_810.s5, "p_1066->g_810.s5", print_hash_value);
    transparent_crc(p_1066->g_810.s6, "p_1066->g_810.s6", print_hash_value);
    transparent_crc(p_1066->g_810.s7, "p_1066->g_810.s7", print_hash_value);
    transparent_crc(p_1066->g_825, "p_1066->g_825", print_hash_value);
    transparent_crc(p_1066->g_841.f0, "p_1066->g_841.f0", print_hash_value);
    transparent_crc(p_1066->g_845.f0, "p_1066->g_845.f0", print_hash_value);
    transparent_crc(p_1066->g_850.f0, "p_1066->g_850.f0", print_hash_value);
    transparent_crc(p_1066->g_874, "p_1066->g_874", print_hash_value);
    transparent_crc(p_1066->g_875.s0, "p_1066->g_875.s0", print_hash_value);
    transparent_crc(p_1066->g_875.s1, "p_1066->g_875.s1", print_hash_value);
    transparent_crc(p_1066->g_875.s2, "p_1066->g_875.s2", print_hash_value);
    transparent_crc(p_1066->g_875.s3, "p_1066->g_875.s3", print_hash_value);
    transparent_crc(p_1066->g_875.s4, "p_1066->g_875.s4", print_hash_value);
    transparent_crc(p_1066->g_875.s5, "p_1066->g_875.s5", print_hash_value);
    transparent_crc(p_1066->g_875.s6, "p_1066->g_875.s6", print_hash_value);
    transparent_crc(p_1066->g_875.s7, "p_1066->g_875.s7", print_hash_value);
    transparent_crc(p_1066->g_875.s8, "p_1066->g_875.s8", print_hash_value);
    transparent_crc(p_1066->g_875.s9, "p_1066->g_875.s9", print_hash_value);
    transparent_crc(p_1066->g_875.sa, "p_1066->g_875.sa", print_hash_value);
    transparent_crc(p_1066->g_875.sb, "p_1066->g_875.sb", print_hash_value);
    transparent_crc(p_1066->g_875.sc, "p_1066->g_875.sc", print_hash_value);
    transparent_crc(p_1066->g_875.sd, "p_1066->g_875.sd", print_hash_value);
    transparent_crc(p_1066->g_875.se, "p_1066->g_875.se", print_hash_value);
    transparent_crc(p_1066->g_875.sf, "p_1066->g_875.sf", print_hash_value);
    transparent_crc(p_1066->g_876.x, "p_1066->g_876.x", print_hash_value);
    transparent_crc(p_1066->g_876.y, "p_1066->g_876.y", print_hash_value);
    transparent_crc(p_1066->g_876.z, "p_1066->g_876.z", print_hash_value);
    transparent_crc(p_1066->g_876.w, "p_1066->g_876.w", print_hash_value);
    transparent_crc(p_1066->g_914.s0, "p_1066->g_914.s0", print_hash_value);
    transparent_crc(p_1066->g_914.s1, "p_1066->g_914.s1", print_hash_value);
    transparent_crc(p_1066->g_914.s2, "p_1066->g_914.s2", print_hash_value);
    transparent_crc(p_1066->g_914.s3, "p_1066->g_914.s3", print_hash_value);
    transparent_crc(p_1066->g_914.s4, "p_1066->g_914.s4", print_hash_value);
    transparent_crc(p_1066->g_914.s5, "p_1066->g_914.s5", print_hash_value);
    transparent_crc(p_1066->g_914.s6, "p_1066->g_914.s6", print_hash_value);
    transparent_crc(p_1066->g_914.s7, "p_1066->g_914.s7", print_hash_value);
    transparent_crc(p_1066->g_936.x, "p_1066->g_936.x", print_hash_value);
    transparent_crc(p_1066->g_936.y, "p_1066->g_936.y", print_hash_value);
    transparent_crc(p_1066->g_943.x, "p_1066->g_943.x", print_hash_value);
    transparent_crc(p_1066->g_943.y, "p_1066->g_943.y", print_hash_value);
    transparent_crc(p_1066->g_944.x, "p_1066->g_944.x", print_hash_value);
    transparent_crc(p_1066->g_944.y, "p_1066->g_944.y", print_hash_value);
    transparent_crc(p_1066->g_944.z, "p_1066->g_944.z", print_hash_value);
    transparent_crc(p_1066->g_944.w, "p_1066->g_944.w", print_hash_value);
    transparent_crc(p_1066->g_945.s0, "p_1066->g_945.s0", print_hash_value);
    transparent_crc(p_1066->g_945.s1, "p_1066->g_945.s1", print_hash_value);
    transparent_crc(p_1066->g_945.s2, "p_1066->g_945.s2", print_hash_value);
    transparent_crc(p_1066->g_945.s3, "p_1066->g_945.s3", print_hash_value);
    transparent_crc(p_1066->g_945.s4, "p_1066->g_945.s4", print_hash_value);
    transparent_crc(p_1066->g_945.s5, "p_1066->g_945.s5", print_hash_value);
    transparent_crc(p_1066->g_945.s6, "p_1066->g_945.s6", print_hash_value);
    transparent_crc(p_1066->g_945.s7, "p_1066->g_945.s7", print_hash_value);
    transparent_crc(p_1066->g_946.x, "p_1066->g_946.x", print_hash_value);
    transparent_crc(p_1066->g_946.y, "p_1066->g_946.y", print_hash_value);
    transparent_crc(p_1066->g_946.z, "p_1066->g_946.z", print_hash_value);
    transparent_crc(p_1066->g_946.w, "p_1066->g_946.w", print_hash_value);
    transparent_crc(p_1066->g_965, "p_1066->g_965", print_hash_value);
    transparent_crc(p_1066->g_983.x, "p_1066->g_983.x", print_hash_value);
    transparent_crc(p_1066->g_983.y, "p_1066->g_983.y", print_hash_value);
    transparent_crc(p_1066->g_983.z, "p_1066->g_983.z", print_hash_value);
    transparent_crc(p_1066->g_983.w, "p_1066->g_983.w", print_hash_value);
    transparent_crc(p_1066->g_989.s0, "p_1066->g_989.s0", print_hash_value);
    transparent_crc(p_1066->g_989.s1, "p_1066->g_989.s1", print_hash_value);
    transparent_crc(p_1066->g_989.s2, "p_1066->g_989.s2", print_hash_value);
    transparent_crc(p_1066->g_989.s3, "p_1066->g_989.s3", print_hash_value);
    transparent_crc(p_1066->g_989.s4, "p_1066->g_989.s4", print_hash_value);
    transparent_crc(p_1066->g_989.s5, "p_1066->g_989.s5", print_hash_value);
    transparent_crc(p_1066->g_989.s6, "p_1066->g_989.s6", print_hash_value);
    transparent_crc(p_1066->g_989.s7, "p_1066->g_989.s7", print_hash_value);
    transparent_crc(p_1066->g_996.s0, "p_1066->g_996.s0", print_hash_value);
    transparent_crc(p_1066->g_996.s1, "p_1066->g_996.s1", print_hash_value);
    transparent_crc(p_1066->g_996.s2, "p_1066->g_996.s2", print_hash_value);
    transparent_crc(p_1066->g_996.s3, "p_1066->g_996.s3", print_hash_value);
    transparent_crc(p_1066->g_996.s4, "p_1066->g_996.s4", print_hash_value);
    transparent_crc(p_1066->g_996.s5, "p_1066->g_996.s5", print_hash_value);
    transparent_crc(p_1066->g_996.s6, "p_1066->g_996.s6", print_hash_value);
    transparent_crc(p_1066->g_996.s7, "p_1066->g_996.s7", print_hash_value);
    transparent_crc(p_1066->g_996.s8, "p_1066->g_996.s8", print_hash_value);
    transparent_crc(p_1066->g_996.s9, "p_1066->g_996.s9", print_hash_value);
    transparent_crc(p_1066->g_996.sa, "p_1066->g_996.sa", print_hash_value);
    transparent_crc(p_1066->g_996.sb, "p_1066->g_996.sb", print_hash_value);
    transparent_crc(p_1066->g_996.sc, "p_1066->g_996.sc", print_hash_value);
    transparent_crc(p_1066->g_996.sd, "p_1066->g_996.sd", print_hash_value);
    transparent_crc(p_1066->g_996.se, "p_1066->g_996.se", print_hash_value);
    transparent_crc(p_1066->g_996.sf, "p_1066->g_996.sf", print_hash_value);
    transparent_crc(p_1066->g_1006, "p_1066->g_1006", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
