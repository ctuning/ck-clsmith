// ---fake_divergence -g 35,33,3 -l 35,1,1
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


// Seed: 48

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   uint64_t  f1;
   uint32_t  f2;
   uint64_t  f3;
   volatile int16_t  f4;
   volatile uint16_t  f5;
};

struct S1 {
   uint32_t  f0;
   volatile int32_t  f1;
   volatile uint16_t  f2;
   int8_t  f3;
};

union U2 {
   uint16_t  f0;
   uint64_t  f1;
   struct S0  f2;
   volatile int8_t * f3;
   volatile uint32_t  f4;
};

union U3 {
   uint64_t  f0;
   uint32_t  f1;
   volatile uint8_t  f2;
   int32_t  f3;
   int16_t  f4;
};

struct S4 {
    uint32_t g_6;
    union U2 g_30[7][2][10];
    int16_t g_41;
    union U2 g_43;
    int32_t g_45;
    volatile int64_t g_51;
    int16_t g_52;
    int8_t g_54;
    volatile int8_t g_55;
    volatile int32_t g_56;
    volatile uint64_t g_57;
    int8_t *g_62;
    union U3 g_90;
    int8_t g_94;
    volatile uint32_t g_95;
    struct S1 g_102;
    struct S1 *g_101[10][8][3];
    uint8_t g_132;
    VECTOR(int32_t, 8) g_141;
    volatile VECTOR(int32_t, 4) g_142;
    VECTOR(int32_t, 4) g_143;
    uint16_t *g_155;
    uint16_t *g_158;
    uint16_t *g_159[6];
    int16_t *g_162[5];
    int64_t g_164;
    volatile struct S0 g_165;
    volatile union U3 g_173;
    int32_t * volatile g_190;
    struct S1 ** volatile g_191;
    volatile VECTOR(uint16_t, 16) g_198;
    VECTOR(uint32_t, 4) g_219;
    VECTOR(int64_t, 16) g_222;
    VECTOR(uint32_t, 4) g_239;
    VECTOR(int64_t, 16) g_246;
    VECTOR(int32_t, 2) g_248;
    int32_t * volatile g_257;
    volatile struct S0 g_258;
    struct S1 g_271;
    struct S1 * volatile g_272;
    int32_t *g_275;
    int32_t ** volatile g_274;
    union U3 g_287[9];
    int32_t * volatile g_292[10][8][3];
    int32_t * volatile g_293;
    volatile struct S0 g_295;
    int32_t ** volatile g_299;
    volatile int32_t g_313;
    int32_t ** volatile g_320;
    union U2 g_336;
    volatile union U3 g_372;
    struct S0 g_376[8][9];
    struct S0 *g_383;
    struct S1 g_384;
    VECTOR(uint8_t, 16) g_401;
    uint8_t * volatile g_400;
    struct S0 g_436[7];
    volatile uint64_t g_447;
    volatile VECTOR(uint8_t, 16) g_452;
    uint16_t g_457[9][6][3];
    int32_t ** volatile g_463;
    struct S0 g_467;
    volatile VECTOR(int32_t, 2) g_479;
    volatile uint32_t g_485;
    uint32_t g_497;
    volatile struct S1 g_498;
    struct S0 g_499[3];
    int32_t *g_500;
    volatile struct S1 g_502[2][2][4];
    volatile VECTOR(int32_t, 2) g_515;
    int16_t *g_520;
    volatile struct S1 ** volatile *g_525[1];
    int32_t g_568;
    int32_t ** volatile g_569;
    VECTOR(int64_t, 16) g_572;
    struct S1 g_588[3];
    volatile struct S1 g_590[4];
    union U3 g_619;
    volatile struct S1 g_632[2][3][3];
    volatile struct S1 g_633[7][7];
    volatile VECTOR(uint16_t, 16) g_699;
    union U2 *g_708;
    union U2 ** volatile g_707[1][9][1];
    VECTOR(int8_t, 4) g_742;
    VECTOR(int8_t, 8) g_743;
    VECTOR(uint8_t, 8) g_745;
    volatile VECTOR(int32_t, 2) g_767;
    VECTOR(int32_t, 8) g_785;
    uint64_t *g_791;
    VECTOR(uint8_t, 2) g_803;
    volatile VECTOR(uint8_t, 4) g_805;
    volatile struct S0 g_818;
    volatile union U3 g_821;
    VECTOR(int8_t, 16) g_822;
    volatile struct S1 g_826[9];
    volatile struct S1 g_828;
    int32_t ** volatile g_829;
    volatile union U3 g_852;
    VECTOR(int8_t, 2) g_855;
    volatile union U3 g_881;
    VECTOR(uint8_t, 2) g_892;
    VECTOR(uint8_t, 16) g_894;
    VECTOR(int8_t, 8) g_930;
    VECTOR(uint64_t, 2) g_936;
    volatile VECTOR(uint8_t, 2) g_956;
    VECTOR(uint16_t, 2) g_976;
    VECTOR(uint16_t, 2) g_977;
    VECTOR(uint8_t, 8) g_979;
    volatile VECTOR(uint8_t, 8) g_981;
    volatile struct S0 g_986[8];
    volatile int64_t * volatile g_999;
    volatile struct S0 *g_1003[4];
    volatile struct S0 ** volatile g_1002[1];
    volatile struct S0 ** volatile g_1004;
    VECTOR(int8_t, 4) g_1017;
    VECTOR(int64_t, 2) g_1033;
    VECTOR(int8_t, 4) g_1053;
    VECTOR(int64_t, 4) g_1062;
    VECTOR(uint16_t, 4) g_1067;
    volatile VECTOR(int8_t, 8) g_1084;
    volatile VECTOR(int16_t, 2) g_1105;
    union U3 *g_1128;
    union U3 ** volatile g_1127;
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
int64_t  func_1(struct S4 * p_1166);
union U2 * func_2(uint32_t  p_3, int8_t * p_4, int8_t  p_5, struct S4 * p_1166);
int8_t * func_7(uint32_t  p_8, int16_t  p_9, int32_t  p_10, union U2 * p_11, struct S4 * p_1166);
int64_t  func_21(union U2 * p_22, int64_t  p_23, struct S4 * p_1166);
union U2 * func_31(int32_t  p_32, uint16_t  p_33, int16_t  p_34, union U2 * p_35, struct S4 * p_1166);
int8_t * func_63(uint8_t  p_64, int32_t * p_65, int32_t * p_66, int32_t * p_67, struct S4 * p_1166);
struct S0  func_77(uint32_t  p_78, int32_t * p_79, union U2 * p_80, struct S4 * p_1166);
struct S1 * func_98(union U2 * p_99, struct S4 * p_1166);
struct S1 ** func_110(int64_t  p_111, int16_t * p_112, struct S4 * p_1166);
int64_t  func_113(struct S1 * p_114, int16_t  p_115, struct S4 * p_1166);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1166->g_6 p_1166->g_30.f0 p_1166->g_41 p_1166->g_43.f0 p_1166->g_45 p_1166->g_57 p_1166->g_55 p_1166->g_299 p_1166->g_275 p_1166->g_569 p_1166->g_467.f3 p_1166->g_222 p_1166->g_143 p_1166->g_155 p_1166->g_293 p_1166->g_588 p_1166->g_590 p_1166->g_62 p_1166->g_54 p_1166->g_619 p_1166->g_246 p_1166->g_479 p_1166->g_520 p_1166->g_632 p_1166->g_257 p_1166->g_158 p_1166->g_190 p_1166->g_90.f3 p_1166->g_785
 * writes: p_1166->g_30.f0 p_1166->g_41 p_1166->g_45 p_1166->g_57 p_1166->g_500 p_1166->g_222 p_1166->g_143 p_1166->g_102.f3 p_1166->g_271 p_1166->g_590 p_1166->g_90.f3 p_1166->g_588.f0 p_1166->g_568 p_1166->g_52 p_1166->g_633 p_1166->g_384.f3 p_1166->g_383
 */
int64_t  func_1(struct S4 * p_1166)
{ /* block id: 4 */
    int64_t l_18 = 0L;
    uint8_t l_28 = 0x47L;
    union U2 *l_29 = &p_1166->g_30[4][0][1];
    union U2 **l_709 = &l_29;
    int32_t *l_710 = (void*)0;
    int32_t *l_711 = &p_1166->g_45;
    int32_t *l_712 = &p_1166->g_568;
    int32_t *l_713 = &p_1166->g_45;
    int32_t *l_714 = (void*)0;
    int32_t *l_715 = &p_1166->g_45;
    int32_t *l_716[1][8] = {{&p_1166->g_568,&p_1166->g_568,&p_1166->g_568,&p_1166->g_568,&p_1166->g_568,&p_1166->g_568,&p_1166->g_568,&p_1166->g_568}};
    int64_t l_717 = 0x035373F25783BECCL;
    uint32_t l_718 = 0x6AD8D4B7L;
    VECTOR(uint8_t, 2) l_747 = (VECTOR(uint8_t, 2))(0xA0L, 1UL);
    VECTOR(int16_t, 16) l_786 = (VECTOR(int16_t, 16))(5L, (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, 0x74A6L), 0x74A6L), 0x74A6L, 5L, 0x74A6L, (VECTOR(int16_t, 2))(5L, 0x74A6L), (VECTOR(int16_t, 2))(5L, 0x74A6L), 5L, 0x74A6L, 5L, 0x74A6L);
    VECTOR(int8_t, 4) l_799 = (VECTOR(int8_t, 4))(0x2FL, (VECTOR(int8_t, 2))(0x2FL, 0x6EL), 0x6EL);
    int32_t l_816 = 0x57B29A99L;
    int32_t l_899 = (-8L);
    VECTOR(int8_t, 16) l_929 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x68L), 0x68L), 0x68L, 0L, 0x68L, (VECTOR(int8_t, 2))(0L, 0x68L), (VECTOR(int8_t, 2))(0L, 0x68L), 0L, 0x68L, 0L, 0x68L);
    struct S0 *l_933 = &p_1166->g_499[1];
    uint32_t l_967 = 0x44D53F94L;
    VECTOR(int16_t, 16) l_975 = (VECTOR(int16_t, 16))(0x4A16L, (VECTOR(int16_t, 4))(0x4A16L, (VECTOR(int16_t, 2))(0x4A16L, (-1L)), (-1L)), (-1L), 0x4A16L, (-1L), (VECTOR(int16_t, 2))(0x4A16L, (-1L)), (VECTOR(int16_t, 2))(0x4A16L, (-1L)), 0x4A16L, (-1L), 0x4A16L, (-1L));
    VECTOR(uint8_t, 16) l_980 = (VECTOR(uint8_t, 16))(0x82L, (VECTOR(uint8_t, 4))(0x82L, (VECTOR(uint8_t, 2))(0x82L, 0UL), 0UL), 0UL, 0x82L, 0UL, (VECTOR(uint8_t, 2))(0x82L, 0UL), (VECTOR(uint8_t, 2))(0x82L, 0UL), 0x82L, 0UL, 0x82L, 0UL);
    uint32_t l_993 = 0x13A75BD8L;
    int32_t l_1011 = 6L;
    int32_t l_1024 = 0x7ED2AA44L;
    uint8_t l_1092 = 0UL;
    VECTOR(int8_t, 4) l_1146 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 1L), 1L);
    VECTOR(int32_t, 16) l_1147 = (VECTOR(int32_t, 16))(0x7F7AA13FL, (VECTOR(int32_t, 4))(0x7F7AA13FL, (VECTOR(int32_t, 2))(0x7F7AA13FL, 1L), 1L), 1L, 0x7F7AA13FL, 1L, (VECTOR(int32_t, 2))(0x7F7AA13FL, 1L), (VECTOR(int32_t, 2))(0x7F7AA13FL, 1L), 0x7F7AA13FL, 1L, 0x7F7AA13FL, 1L);
    int i, j;
    (*l_709) = func_2(p_1166->g_6, func_7(p_1166->g_6, p_1166->g_6, (1UL && (safe_mul_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(l_18, 7)), (safe_add_func_int16_t_s_s(l_18, (l_18 , (func_21(((safe_sub_func_int64_t_s_s((safe_div_func_uint32_t_u_u(l_18, p_1166->g_6)), l_28)) , l_29), p_1166->g_30[4][0][1].f0, p_1166) & 0xAED5EBAE88B1495DL)))))), p_1166->g_6))), &p_1166->g_30[4][0][1], p_1166), (*p_1166->g_62), p_1166);
    if (p_1166->g_90.f3)
        goto lbl_721;
lbl_721:
    --l_718;
    return p_1166->g_785.s4;
}


/* ------------------------------------------ */
/* 
 * reads : p_1166->g_90.f3 p_1166->g_619 p_1166->g_246 p_1166->g_479 p_1166->g_588.f0 p_1166->g_520 p_1166->g_632 p_1166->g_54 p_1166->g_257 p_1166->g_45 p_1166->g_41 p_1166->g_158 p_1166->g_30.f0 p_1166->g_143 p_1166->g_190
 * writes: p_1166->g_90.f3 p_1166->g_588.f0 p_1166->g_41 p_1166->g_568 p_1166->g_52 p_1166->g_633 p_1166->g_384.f3 p_1166->g_383 p_1166->g_30.f0 p_1166->g_143 p_1166->g_45
 */
union U2 * func_2(uint32_t  p_3, int8_t * p_4, int8_t  p_5, struct S4 * p_1166)
{ /* block id: 243 */
    int8_t l_627 = 0x48L;
    int32_t l_672[2][10] = {{0x7C159BADL,0x48F89FECL,0x764C6009L,0x48F89FECL,0x7C159BADL,0x7C159BADL,0x48F89FECL,0x764C6009L,0x48F89FECL,0x7C159BADL},{0x7C159BADL,0x48F89FECL,0x764C6009L,0x48F89FECL,0x7C159BADL,0x7C159BADL,0x48F89FECL,0x764C6009L,0x48F89FECL,0x7C159BADL}};
    int64_t l_686 = (-1L);
    uint32_t l_703 = 5UL;
    union U2 *l_706 = &p_1166->g_30[4][0][1];
    int i, j;
    for (p_1166->g_90.f3 = 0; (p_1166->g_90.f3 <= 1); p_1166->g_90.f3 = safe_add_func_uint64_t_u_u(p_1166->g_90.f3, 7))
    { /* block id: 246 */
        uint32_t *l_624 = &p_1166->g_588[2].f0;
        uint64_t *l_625[1][6] = {{&p_1166->g_467.f3,&p_1166->g_619.f0,&p_1166->g_467.f3,&p_1166->g_467.f3,&p_1166->g_619.f0,&p_1166->g_467.f3}};
        int32_t l_626 = 8L;
        int32_t l_676 = 0x1AE26B30L;
        int32_t l_677 = 0x31BA3982L;
        int32_t l_679 = 0x70A8A45DL;
        int32_t l_680 = 0x3163DD14L;
        int32_t l_681 = 0x1BF2ADB5L;
        int i, j;
        if ((p_3 || (((p_5 & p_5) , p_1166->g_619) , ((*p_1166->g_520) = ((p_3 & (!p_1166->g_246.s7)) >= ((safe_rshift_func_uint8_t_u_s((1UL == (safe_add_func_uint64_t_u_u((l_626 = (((*l_624) ^= p_1166->g_479.y) , 6UL)), p_3))), 2)) == l_627))))))
        { /* block id: 250 */
            uint32_t l_636 = 0x7F193E22L;
            int32_t l_655 = 0x17643651L;
            int32_t l_674[3];
            int i;
            for (i = 0; i < 3; i++)
                l_674[i] = 5L;
            for (p_1166->g_568 = (-1); (p_1166->g_568 != (-14)); --p_1166->g_568)
            { /* block id: 253 */
                int16_t l_668 = 0x0FFDL;
                int32_t l_675 = 0x71760755L;
                int32_t l_678 = 0x0393AC07L;
                int32_t l_682 = 0L;
                uint16_t l_683 = 65535UL;
                int32_t *l_687 = &l_626;
                for (p_1166->g_52 = (-14); (p_1166->g_52 != 22); p_1166->g_52 = safe_add_func_uint32_t_u_u(p_1166->g_52, 7))
                { /* block id: 256 */
                    uint32_t l_669 = 0UL;
                    int32_t *l_673[7][6][6] = {{{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568}},{{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568}},{{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568}},{{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568}},{{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568}},{{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568}},{{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568},{&l_672[1][2],(void*)0,&p_1166->g_45,&l_626,&l_626,&p_1166->g_568}}};
                    int i, j, k;
                    p_1166->g_633[5][2] = p_1166->g_632[0][2][0];
                    l_636 &= (+(safe_mul_func_int16_t_s_s(0x46F4L, p_5)));
                    for (p_1166->g_384.f3 = (-7); (p_1166->g_384.f3 <= 26); p_1166->g_384.f3 = safe_add_func_int8_t_s_s(p_1166->g_384.f3, 7))
                    { /* block id: 261 */
                        struct S0 **l_641 = &p_1166->g_383;
                        int32_t *l_650 = (void*)0;
                        int32_t *l_651 = (void*)0;
                        int32_t *l_652 = (void*)0;
                        int32_t *l_653 = (void*)0;
                        int32_t *l_654 = (void*)0;
                        int32_t *l_656 = &l_655;
                        int32_t *l_657 = &l_655;
                        int32_t *l_658 = &p_1166->g_45;
                        int32_t *l_659 = &l_655;
                        int32_t *l_660 = &l_655;
                        int32_t *l_661 = &l_626;
                        int32_t *l_662 = (void*)0;
                        int32_t *l_663 = &l_626;
                        int32_t *l_664 = &p_1166->g_45;
                        int32_t *l_665 = (void*)0;
                        int32_t *l_666 = &l_626;
                        int32_t *l_667[5] = {&l_655,&l_655,&l_655,&l_655,&l_655};
                        int i;
                        if (p_3)
                            break;
                        l_655 ^= (safe_rshift_func_uint16_t_u_s(((((*l_641) = &p_1166->g_436[6]) != ((*p_4) , &p_1166->g_467)) & (((safe_sub_func_int16_t_s_s((safe_mod_func_uint32_t_u_u((+((8L | ((void*)0 == &p_1166->g_95)) & 0x759D127D2E4EA16BL)), (*p_1166->g_257))), (safe_add_func_int32_t_s_s((-2L), p_5)))) ^ l_626) & p_3)), 11));
                        --l_669;
                        if (p_3)
                            break;
                    }
                    --l_683;
                }
                (*l_687) ^= l_686;
            }
        }
        else
        { /* block id: 272 */
            union U2 *l_688[5];
            int32_t *l_689[2];
            int i;
            for (i = 0; i < 5; i++)
                l_688[i] = (void*)0;
            for (i = 0; i < 2; i++)
                l_689[i] = (void*)0;
            l_688[0] = l_688[0];
            l_677 = (-1L);
            if (l_676)
            { /* block id: 275 */
                p_1166->g_143.x &= (safe_div_func_int64_t_s_s(((((*l_624) = l_686) , ((safe_lshift_func_int16_t_s_s(p_3, 14)) && ((safe_lshift_func_int16_t_s_u((*p_1166->g_520), 6)) != ((safe_add_func_uint32_t_u_u((0x13L >= (safe_unary_minus_func_uint32_t_u((p_5 | (p_5 == ((*p_1166->g_158) ^= (((0x382FL < ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(p_1166->g_699.sb5660c1efd88e985)).s38)).odd) & 8L) < p_3))))))), 4294967293UL)) == 8UL)))) & 9L), 0x0582FF2017C1AFF1L));
                if (l_627)
                    continue;
                (*p_1166->g_257) = (*p_1166->g_190);
            }
            else
            { /* block id: 281 */
                return &p_1166->g_30[4][0][1];
            }
            for (p_1166->g_41 = 0; (p_1166->g_41 >= 6); p_1166->g_41 = safe_add_func_int64_t_s_s(p_1166->g_41, 1))
            { /* block id: 286 */
                VECTOR(int32_t, 2) l_702 = (VECTOR(int32_t, 2))(0x6DFECFF5L, (-9L));
                int i;
                ++l_703;
            }
        }
    }
    return l_706;
}


/* ------------------------------------------ */
/* 
 * reads : p_1166->g_41 p_1166->g_43.f0 p_1166->g_45 p_1166->g_57 p_1166->g_55 p_1166->g_299 p_1166->g_275 p_1166->g_569 p_1166->g_572 p_1166->g_376.f0 p_1166->g_164 p_1166->g_239 p_1166->g_467.f3 p_1166->g_222 p_1166->g_143 p_1166->g_155 p_1166->g_102.f3 p_1166->g_293 p_1166->g_588 p_1166->g_590
 * writes: p_1166->g_30.f0 p_1166->g_41 p_1166->g_45 p_1166->g_57 p_1166->g_500 p_1166->g_222 p_1166->g_143 p_1166->g_102.f3 p_1166->g_271 p_1166->g_590
 */
int8_t * func_7(uint32_t  p_8, int16_t  p_9, int32_t  p_10, union U2 * p_11, struct S4 * p_1166)
{ /* block id: 7 */
    int64_t l_36 = 0x6A44E0C42EF39980L;
    uint16_t *l_39 = &p_1166->g_30[4][0][1].f0;
    int16_t *l_40 = &p_1166->g_41;
    union U2 *l_42 = &p_1166->g_43;
    VECTOR(int64_t, 4) l_573 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x24819CC7BDD2FED0L), 0x24819CC7BDD2FED0L);
    VECTOR(int64_t, 4) l_574 = (VECTOR(int64_t, 4))(0x46057DB0A3094BC6L, (VECTOR(int64_t, 2))(0x46057DB0A3094BC6L, 0x7905D9EB7EF499CDL), 0x7905D9EB7EF499CDL);
    VECTOR(int64_t, 2) l_575 = (VECTOR(int64_t, 2))(0x0934E79A54B87B46L, 0x0BB7C71899CF0E18L);
    int64_t *l_576 = (void*)0;
    int64_t *l_577 = (void*)0;
    int64_t *l_578 = (void*)0;
    int64_t *l_579 = (void*)0;
    int64_t *l_580 = (void*)0;
    int64_t *l_581[8][3];
    int32_t *l_582[2][5] = {{&p_1166->g_568,&p_1166->g_568,&p_1166->g_568,&p_1166->g_568,&p_1166->g_568},{&p_1166->g_568,&p_1166->g_568,&p_1166->g_568,&p_1166->g_568,&p_1166->g_568}};
    uint64_t l_585[2][1][2];
    int32_t l_593 = 0x7AA56510L;
    int8_t *l_609 = &p_1166->g_54;
    uint16_t l_612 = 65527UL;
    VECTOR(int32_t, 4) l_615 = (VECTOR(int32_t, 4))(0x62F7EDDBL, (VECTOR(int32_t, 2))(0x62F7EDDBL, (-3L)), (-3L));
    VECTOR(int32_t, 4) l_616 = (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0x3E8B0B73L), 0x3E8B0B73L);
    int i, j, k;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 3; j++)
            l_581[i][j] = (void*)0;
    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 2; k++)
                l_585[i][j][k] = 0xE9EF38C6D9AAB957L;
        }
    }
    p_1166->g_143.x ^= ((p_1166->g_222.sa ^= func_21(func_31(l_36, p_10, ((*l_40) |= (safe_mod_func_uint16_t_u_u(0x0A86L, ((*l_39) = p_8)))), l_42, p_1166), (safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(abs_diff(((VECTOR(int64_t, 2))(0x7CA061B56D9C1552L, (-1L))).xxxyxxxxxxyxyxyy, ((VECTOR(int64_t, 16))(0x23E0155B13C9DD04L, ((VECTOR(int64_t, 2))((-1L), 0x6D1ACC7AB3608CC7L)), 0x5C33D143F0DFC97CL, ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 8))(p_1166->g_572.s09bb625e)).s72, ((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 16))(0x5473081BDC23E9D8L, (-10L), ((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(l_573.zwxy)).hi)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(l_574.xz)))).xyyyyyyx)).s22))), ((VECTOR(int64_t, 2))(l_575.yy))))), (-5L), (-2L), ((VECTOR(int64_t, 2))(7L, 1L)), (((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 2))(0x4D52C210L, 0x047E7DCCL)).xxyxxyxy, ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 16))((-8L), ((VECTOR(int32_t, 2))(4L, (-5L))), ((void*)0 != &p_1166->g_52), 1L, ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 2))(0x7F36240AL)), ((VECTOR(int32_t, 2))(7L)), ((VECTOR(int32_t, 2))(1L)), p_1166->g_376[0][8].f0, 0x0EFABEB7L, 0x0302B7C2L)).s2f67, ((VECTOR(int32_t, 4))(1L))))).wyywyzyy))).s0 , p_1166->g_164), 0x159407CA375D68F7L, 0x590C978D107DC8F2L, 1L, p_1166->g_239.y, ((VECTOR(int64_t, 2))(1L)), 0L)).s3a, ((VECTOR(int64_t, 2))((-1L))), ((VECTOR(int64_t, 2))(0x57EF90C40A65E290L)))))))), ((VECTOR(int64_t, 8))(0x6889A02459874A53L)), 0x346734966F47B661L, 9L))))).s9, p_1166->g_467.f3)), p_1166)) & p_9);
    if (p_8)
    { /* block id: 217 */
        int32_t l_584 = 0x2AB3FF7BL;
        if (p_9)
        { /* block id: 218 */
            uint8_t l_583 = 0x67L;
            p_10 = (((void*)0 == &p_1166->g_383) < l_583);
            l_585[1][0][0] |= (7UL <= (l_584 &= (*p_1166->g_155)));
            for (p_1166->g_102.f3 = 0; (p_1166->g_102.f3 <= 7); p_1166->g_102.f3 = safe_add_func_int16_t_s_s(p_1166->g_102.f3, 2))
            { /* block id: 224 */
                struct S1 *l_589 = &p_1166->g_271;
                (*p_1166->g_293) &= l_583;
                (*l_589) = (l_583 , p_1166->g_588[2]);
            }
        }
        else
        { /* block id: 228 */
            volatile struct S1 *l_591 = &p_1166->g_590[3];
            (*l_591) = p_1166->g_590[2];
        }
    }
    else
    { /* block id: 231 */
        uint32_t *l_592[3][3][7] = {{{(void*)0,&p_1166->g_497,(void*)0,&p_1166->g_497,(void*)0,(void*)0,&p_1166->g_497},{(void*)0,&p_1166->g_497,(void*)0,&p_1166->g_497,(void*)0,(void*)0,&p_1166->g_497},{(void*)0,&p_1166->g_497,(void*)0,&p_1166->g_497,(void*)0,(void*)0,&p_1166->g_497}},{{(void*)0,&p_1166->g_497,(void*)0,&p_1166->g_497,(void*)0,(void*)0,&p_1166->g_497},{(void*)0,&p_1166->g_497,(void*)0,&p_1166->g_497,(void*)0,(void*)0,&p_1166->g_497},{(void*)0,&p_1166->g_497,(void*)0,&p_1166->g_497,(void*)0,(void*)0,&p_1166->g_497}},{{(void*)0,&p_1166->g_497,(void*)0,&p_1166->g_497,(void*)0,(void*)0,&p_1166->g_497},{(void*)0,&p_1166->g_497,(void*)0,&p_1166->g_497,(void*)0,(void*)0,&p_1166->g_497},{(void*)0,&p_1166->g_497,(void*)0,&p_1166->g_497,(void*)0,(void*)0,&p_1166->g_497}}};
        int32_t l_600 = 0x42649AA2L;
        int32_t l_607 = 0x5F96935EL;
        uint16_t **l_608[5];
        int8_t **l_610 = (void*)0;
        int8_t **l_611 = &l_609;
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_608[i] = &l_39;
        p_10 ^= (&p_1166->g_55 != ((*l_611) = l_609));
        l_612--;
        return l_609;
    }
    p_10 &= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_615.zyxy)).even)), 1L, ((VECTOR(int32_t, 2))(l_616.xw)), 0x2C6E2D49L, 0x707E964CL, 0x28DD8A2EL)).s6;
    return &p_1166->g_54;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int64_t  func_21(union U2 * p_22, int64_t  p_23, struct S4 * p_1166)
{ /* block id: 5 */
    return p_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_1166->g_43.f0 p_1166->g_45 p_1166->g_57 p_1166->g_55 p_1166->g_299 p_1166->g_275 p_1166->g_569
 * writes: p_1166->g_45 p_1166->g_57 p_1166->g_500
 */
union U2 * func_31(int32_t  p_32, uint16_t  p_33, int16_t  p_34, union U2 * p_35, struct S4 * p_1166)
{ /* block id: 10 */
    int32_t *l_44 = &p_1166->g_45;
    int32_t l_46 = 0L;
    int32_t *l_47 = &l_46;
    int32_t *l_48 = &l_46;
    int32_t *l_49 = &p_1166->g_45;
    int32_t *l_50[3][5][2] = {{{&l_46,&l_46},{&l_46,&l_46},{&l_46,&l_46},{&l_46,&l_46},{&l_46,&l_46}},{{&l_46,&l_46},{&l_46,&l_46},{&l_46,&l_46},{&l_46,&l_46},{&l_46,&l_46}},{{&l_46,&l_46},{&l_46,&l_46},{&l_46,&l_46},{&l_46,&l_46},{&l_46,&l_46}}};
    int32_t l_53 = 0x65709715L;
    VECTOR(uint8_t, 2) l_85 = (VECTOR(uint8_t, 2))(0x9FL, 2UL);
    VECTOR(int64_t, 2) l_89 = (VECTOR(int64_t, 2))(0x272ABD0CEA35DC67L, 0x3BC662C87538C74BL);
    int8_t *l_539 = &p_1166->g_271.f3;
    VECTOR(int32_t, 2) l_558 = (VECTOR(int32_t, 2))(1L, (-1L));
    VECTOR(int32_t, 2) l_559 = (VECTOR(int32_t, 2))(0x1861F1EAL, 0x6974362CL);
    VECTOR(int32_t, 2) l_560 = (VECTOR(int32_t, 2))(0x3F81EA6BL, 4L);
    int i, j, k;
    (*l_44) ^= p_1166->g_43.f0;
    --p_1166->g_57;
    for (p_32 = 29; (p_32 > (-5)); --p_32)
    { /* block id: 15 */
        union U2 *l_76 = &p_1166->g_43;
        int8_t *l_88 = &p_1166->g_54;
        VECTOR(int32_t, 4) l_91 = (VECTOR(int32_t, 4))(0x01CF63C1L, (VECTOR(int32_t, 2))(0x01CF63C1L, 0x68FEE394L), 0x68FEE394L);
        int32_t *l_501[9] = {&l_46,&l_46,&l_46,&l_46,&l_46,&l_46,&l_46,&l_46,&l_46};
        int8_t **l_538[1][7] = {{&l_88,&l_88,&l_88,&l_88,&l_88,&l_88,&l_88}};
        VECTOR(int16_t, 16) l_550 = (VECTOR(int16_t, 16))(3L, (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, (-1L)), (-1L)), (-1L), 3L, (-1L), (VECTOR(int16_t, 2))(3L, (-1L)), (VECTOR(int16_t, 2))(3L, (-1L)), 3L, (-1L), 3L, (-1L));
        VECTOR(int32_t, 4) l_557 = (VECTOR(int32_t, 4))(0x7F10ED44L, (VECTOR(int32_t, 2))(0x7F10ED44L, 0x7FF6B5C7L), 0x7FF6B5C7L);
        VECTOR(int32_t, 16) l_565 = (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0x5317C140L), 0x5317C140L), 0x5317C140L, (-8L), 0x5317C140L, (VECTOR(int32_t, 2))((-8L), 0x5317C140L), (VECTOR(int32_t, 2))((-8L), 0x5317C140L), (-8L), 0x5317C140L, (-8L), 0x5317C140L);
        int i, j;
        (*l_48) = p_1166->g_55;
    }
    (*p_1166->g_569) = (*p_1166->g_299);
    return p_35;
}


/* ------------------------------------------ */
/* 
 * reads : p_1166->g_502 p_1166->g_90.f4 p_1166->g_515 p_1166->g_520 p_1166->g_41 p_1166->g_525 p_1166->g_158 p_1166->g_30.f0 p_1166->g_467.f1 p_1166->g_275 p_1166->g_173 p_1166->g_45
 * writes: p_1166->g_90.f4 p_1166->g_45 p_1166->g_384.f3
 */
int8_t * func_63(uint8_t  p_64, int32_t * p_65, int32_t * p_66, int32_t * p_67, struct S4 * p_1166)
{ /* block id: 190 */
    int32_t l_503 = 0x2475DCC1L;
    union U2 *l_504[2][10] = {{&p_1166->g_30[4][0][1],&p_1166->g_43,&p_1166->g_43,&p_1166->g_30[4][0][1],&p_1166->g_30[4][0][1],&p_1166->g_43,&p_1166->g_43,&p_1166->g_30[4][0][1],&p_1166->g_30[4][0][1],&p_1166->g_43},{&p_1166->g_30[4][0][1],&p_1166->g_43,&p_1166->g_43,&p_1166->g_30[4][0][1],&p_1166->g_30[4][0][1],&p_1166->g_43,&p_1166->g_43,&p_1166->g_30[4][0][1],&p_1166->g_30[4][0][1],&p_1166->g_43}};
    int32_t l_509 = 0x16AE0998L;
    int32_t l_510[4];
    uint64_t l_511 = 0x65F3A466596FA3E1L;
    int32_t l_523 = 0x49F5F37FL;
    int16_t *l_535 = &p_1166->g_52;
    struct S1 **l_536 = &p_1166->g_101[6][0][1];
    int8_t *l_537 = &p_1166->g_94;
    int i, j;
    for (i = 0; i < 4; i++)
        l_510[i] = 0L;
    if ((p_1166->g_502[1][1][3] , l_503))
    { /* block id: 191 */
        union U2 *l_505 = &p_1166->g_30[0][1][1];
        int32_t *l_508[7] = {&l_503,(void*)0,&l_503,&l_503,(void*)0,&l_503,&l_503};
        int i;
        l_505 = l_504[0][5];
        for (p_1166->g_90.f4 = 0; (p_1166->g_90.f4 <= (-21)); p_1166->g_90.f4 = safe_sub_func_int16_t_s_s(p_1166->g_90.f4, 3))
        { /* block id: 195 */
            (*p_67) = l_503;
        }
        ++l_511;
    }
    else
    { /* block id: 199 */
        uint8_t l_514 = 251UL;
        int16_t *l_519 = &p_1166->g_52;
        int16_t l_524[9][4][1] = {{{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L}}};
        uint32_t *l_526[9];
        int32_t l_527 = 0x556777AEL;
        uint32_t l_530 = 1UL;
        int8_t *l_533 = &p_1166->g_384.f3;
        struct S1 **l_534 = &p_1166->g_101[1][3][0];
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_526[i] = (void*)0;
        (*p_1166->g_275) = ((l_514 < ((VECTOR(int32_t, 4))(p_1166->g_515.xxxx)).x) > (((((p_64 , ((((safe_unary_minus_func_uint64_t_u((FAKE_DIVERGE(p_1166->group_0_offset, get_group_id(0), 10) || p_64))) , (safe_div_func_uint32_t_u_u((l_527 = ((((l_519 != p_1166->g_520) , (p_64 & (safe_mod_func_int16_t_s_s((*p_1166->g_520), ((VECTOR(int16_t, 16))(l_523, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(l_524[4][0][0], ((VECTOR(int16_t, 2))(3L)), 0x6665L)).even)), (-5L), 0L, l_514, ((VECTOR(int16_t, 8))(0x70B9L)), (-3L), (-1L))).s6)))) , p_1166->g_525[0]) != (void*)0)), 0xB6D5CF1BL))) & (*p_1166->g_158)) & l_510[1])) <= l_503) , p_1166->g_467.f1) , l_523) < 0x303EDFDBL));
        (*p_1166->g_275) ^= ((safe_mul_func_uint16_t_u_u(l_530, 0L)) && ((safe_div_func_int8_t_s_s((((((((*l_533) = 0x4CL) , 1UL) , (p_1166->g_173 , (((l_534 == (l_536 = l_536)) && 0x21L) || 0xD4791CC0L))) >= GROUP_DIVERGE(1, 1)) & p_64) > 0x72B76B38L), p_64)) || 0xA9F89BAAL));
    }
    return l_537;
}


/* ------------------------------------------ */
/* 
 * reads : p_1166->g_95 p_1166->g_101 p_1166->g_6 p_1166->g_94 p_1166->g_51 p_1166->g_45 p_1166->g_102.f0 p_1166->g_52 p_1166->g_41 p_1166->g_30.f0 p_1166->g_43.f0 p_1166->g_141 p_1166->g_142 p_1166->g_143 p_1166->g_102.f1 p_1166->g_159 p_1166->g_164 p_1166->g_165 p_1166->g_90.f0 p_1166->g_190 p_1166->g_287 p_1166->g_293 p_1166->g_258.f1 p_1166->g_295 p_1166->g_274 p_1166->g_275 p_1166->g_299 p_1166->g_320 p_1166->g_239 p_1166->g_336 p_1166->g_102.f3 p_1166->g_219 p_1166->g_372 p_1166->g_258 p_1166->g_383 p_1166->g_102 p_1166->g_246 p_1166->g_376 p_1166->g_400 p_1166->g_158 p_1166->g_155 p_1166->g_132 p_1166->g_90.f4 p_1166->g_436 p_1166->g_447 p_1166->g_452 p_1166->g_457 p_1166->g_467 p_1166->g_479 p_1166->g_372.f0 p_1166->g_485 p_1166->g_497 p_1166->g_498 p_1166->g_272 p_1166->g_499
 * writes: p_1166->g_95 p_1166->g_101 p_1166->g_132 p_1166->g_45 p_1166->g_155 p_1166->g_158 p_1166->g_162 p_1166->g_164 p_1166->g_165 p_1166->g_102.f0 p_1166->g_90.f0 p_1166->g_52 p_1166->g_275 p_1166->g_41 p_1166->g_94 p_1166->g_384 p_1166->g_246 p_1166->g_90.f4 p_1166->g_30.f0 p_1166->g_376 p_1166->g_447 p_1166->g_457 p_1166->g_102.f3 p_1166->g_143 p_1166->g_485 p_1166->g_258 p_1166->g_497 p_1166->g_271
 */
struct S0  func_77(uint32_t  p_78, int32_t * p_79, union U2 * p_80, struct S4 * p_1166)
{ /* block id: 19 */
    int32_t *l_92 = &p_1166->g_45;
    int32_t *l_93[1][5][10] = {{{&p_1166->g_45,&p_1166->g_45,&p_1166->g_45,&p_1166->g_45,(void*)0,(void*)0,&p_1166->g_45,&p_1166->g_45,&p_1166->g_45,&p_1166->g_45},{&p_1166->g_45,&p_1166->g_45,&p_1166->g_45,&p_1166->g_45,(void*)0,(void*)0,&p_1166->g_45,&p_1166->g_45,&p_1166->g_45,&p_1166->g_45},{&p_1166->g_45,&p_1166->g_45,&p_1166->g_45,&p_1166->g_45,(void*)0,(void*)0,&p_1166->g_45,&p_1166->g_45,&p_1166->g_45,&p_1166->g_45},{&p_1166->g_45,&p_1166->g_45,&p_1166->g_45,&p_1166->g_45,(void*)0,(void*)0,&p_1166->g_45,&p_1166->g_45,&p_1166->g_45,&p_1166->g_45},{&p_1166->g_45,&p_1166->g_45,&p_1166->g_45,&p_1166->g_45,(void*)0,(void*)0,&p_1166->g_45,&p_1166->g_45,&p_1166->g_45,&p_1166->g_45}}};
    union U2 *l_100 = &p_1166->g_30[4][0][1];
    struct S1 **l_103 = &p_1166->g_101[3][5][1];
    VECTOR(uint16_t, 16) l_116 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65535UL), 65535UL), 65535UL, 65535UL, 65535UL, (VECTOR(uint16_t, 2))(65535UL, 65535UL), (VECTOR(uint16_t, 2))(65535UL, 65535UL), 65535UL, 65535UL, 65535UL, 65535UL);
    uint8_t *l_131 = &p_1166->g_132;
    VECTOR(uint32_t, 16) l_133 = (VECTOR(uint32_t, 16))(0xADA64CFDL, (VECTOR(uint32_t, 4))(0xADA64CFDL, (VECTOR(uint32_t, 2))(0xADA64CFDL, 0xE952D19CL), 0xE952D19CL), 0xE952D19CL, 0xADA64CFDL, 0xE952D19CL, (VECTOR(uint32_t, 2))(0xADA64CFDL, 0xE952D19CL), (VECTOR(uint32_t, 2))(0xADA64CFDL, 0xE952D19CL), 0xADA64CFDL, 0xE952D19CL, 0xADA64CFDL, 0xE952D19CL);
    int16_t *l_138 = &p_1166->g_52;
    int64_t l_139[3][10][5] = {{{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L}},{{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L}},{{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L},{0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L,0x55FEEA2D5331A3B0L}}};
    struct S1 ***l_495 = &l_103;
    int64_t *l_496[7] = {&l_139[2][1][1],&l_139[2][2][3],&l_139[2][1][1],&l_139[2][1][1],&l_139[2][2][3],&l_139[2][1][1],&l_139[2][1][1]};
    int i, j, k;
    p_1166->g_95++;
    (*l_103) = func_98(l_100, p_1166);
    p_1166->g_497 |= func_21(&p_1166->g_43, (p_1166->g_246.s4 = (safe_add_func_int32_t_s_s(((safe_rshift_func_uint8_t_u_s(((*l_131) = (safe_mul_func_int16_t_s_s((((*l_495) = func_110((p_1166->g_6 < func_113((((((-1L) < p_1166->g_94) & (p_1166->g_51 || ((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_116.sc7)).xyyxyxxyxxxxyyxy)).hi))).s3)) ^ (4294967292UL <= (safe_rshift_func_uint8_t_u_s((safe_mod_func_int32_t_s_s(((safe_rshift_func_int16_t_s_u((((safe_mod_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u(((safe_mod_func_uint8_t_u_u(((*l_131) = (*l_92)), (((VECTOR(uint32_t, 2))(l_133.s51)).hi | p_1166->g_102.f0))) | (((((safe_mod_func_int64_t_s_s((((safe_div_func_int64_t_s_s(((((((p_1166->g_52 & 3UL) != (-8L)) > p_78) , p_79) == (void*)0) || p_1166->g_41), p_1166->g_30[4][0][1].f0)) , &p_1166->g_45) == p_79), FAKE_DIVERGE(p_1166->local_0_offset, get_local_id(0), 10))) == 0x47B8L) ^ p_1166->g_94) , l_138) != l_138)), p_1166->g_41)), p_1166->g_30[4][0][1].f0)) & p_1166->g_102.f0) == 0L), 1)) || p_1166->g_52), l_139[2][2][3])), p_78)))) , &p_1166->g_102), p_1166->g_43.f0, p_1166)), l_138, p_1166)) != &p_1166->g_101[1][3][0]), p_78))), 6)) , 0x2BB6F440L), p_1166->g_43.f0))), p_1166);
    (*p_1166->g_272) = p_1166->g_498;
    return p_1166->g_499[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1166->g_101
 * writes:
 */
struct S1 * func_98(union U2 * p_99, struct S4 * p_1166)
{ /* block id: 21 */
    return p_1166->g_101[1][3][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1166->g_45 p_1166->g_275 p_1166->g_101 p_1166->g_295.f2 p_1166->g_52 p_1166->g_336 p_1166->g_94 p_1166->g_102.f3 p_1166->g_102.f0 p_1166->g_41 p_1166->g_219 p_1166->g_320 p_1166->g_372 p_1166->g_258 p_1166->g_383 p_1166->g_43.f0 p_1166->g_102 p_1166->g_246 p_1166->g_376 p_1166->g_400 p_1166->g_158 p_1166->g_30.f0 p_1166->g_155 p_1166->g_143 p_1166->g_141 p_1166->g_132 p_1166->g_90.f4 p_1166->g_436 p_1166->g_447 p_1166->g_164 p_1166->g_452 p_1166->g_457 p_1166->g_299 p_1166->g_467 p_1166->g_479 p_1166->g_372.f0 p_1166->g_485 p_1166->g_274
 * writes: p_1166->g_275 p_1166->g_132 p_1166->g_45 p_1166->g_41 p_1166->g_94 p_1166->g_384 p_1166->g_246 p_1166->g_90.f4 p_1166->g_52 p_1166->g_30.f0 p_1166->g_376 p_1166->g_447 p_1166->g_164 p_1166->g_457 p_1166->g_102.f3 p_1166->g_143 p_1166->g_485 p_1166->g_258
 */
struct S1 ** func_110(int64_t  p_111, int16_t * p_112, struct S4 * p_1166)
{ /* block id: 108 */
    int32_t *l_321 = &p_1166->g_45;
    int32_t **l_322 = &p_1166->g_275;
    struct S1 *l_325 = &p_1166->g_102;
    union U2 **l_326 = (void*)0;
    union U2 *l_328 = &p_1166->g_30[6][0][0];
    union U2 **l_327 = &l_328;
    int8_t *l_329 = &p_1166->g_102.f3;
    int8_t *l_331 = (void*)0;
    int8_t **l_330 = &l_331;
    uint8_t *l_332 = &p_1166->g_132;
    int32_t l_355 = 0x143D29F5L;
    int32_t l_363[9][3][6] = {{{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L}},{{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L}},{{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L}},{{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L}},{{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L}},{{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L}},{{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L}},{{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L}},{{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L},{(-1L),0x5C6A7C08L,0x78C10EF6L,0x0DAA9E50L,(-1L),0x135E3F12L}}};
    VECTOR(int64_t, 16) l_371 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int64_t, 2))(1L, (-1L)), (VECTOR(int64_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L));
    VECTOR(int8_t, 2) l_392 = (VECTOR(int8_t, 2))(0x1EL, 0x3EL);
    volatile struct S0 *l_404 = &p_1166->g_258;
    struct S0 *l_433[6];
    VECTOR(int32_t, 16) l_478 = (VECTOR(int32_t, 16))(0x0D0ABAC4L, (VECTOR(int32_t, 4))(0x0D0ABAC4L, (VECTOR(int32_t, 2))(0x0D0ABAC4L, 0L), 0L), 0L, 0x0D0ABAC4L, 0L, (VECTOR(int32_t, 2))(0x0D0ABAC4L, 0L), (VECTOR(int32_t, 2))(0x0D0ABAC4L, 0L), 0x0D0ABAC4L, 0L, 0x0D0ABAC4L, 0L);
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_433[i] = &p_1166->g_376[7][0];
    (*l_322) = l_321;
    if ((safe_lshift_func_int8_t_s_u((*l_321), (((l_325 = l_325) != ((**l_322) , func_98(((*l_327) = &p_1166->g_43), p_1166))) , (((*l_332) = ((GROUP_DIVERGE(0, 1) , l_329) != ((*l_330) = &p_1166->g_94))) <= ((-7L) == ((void*)0 != l_332)))))))
    { /* block id: 114 */
        VECTOR(uint32_t, 16) l_333 = (VECTOR(uint32_t, 16))(0xAE47DCB6L, (VECTOR(uint32_t, 4))(0xAE47DCB6L, (VECTOR(uint32_t, 2))(0xAE47DCB6L, 0xFDC092EFL), 0xFDC092EFL), 0xFDC092EFL, 0xAE47DCB6L, 0xFDC092EFL, (VECTOR(uint32_t, 2))(0xAE47DCB6L, 0xFDC092EFL), (VECTOR(uint32_t, 2))(0xAE47DCB6L, 0xFDC092EFL), 0xAE47DCB6L, 0xFDC092EFL, 0xAE47DCB6L, 0xFDC092EFL);
        uint32_t *l_351 = (void*)0;
        uint32_t *l_352 = (void*)0;
        int32_t l_353 = 9L;
        uint32_t *l_354[1];
        int16_t *l_356 = &p_1166->g_90.f4;
        int16_t *l_357 = &p_1166->g_41;
        int32_t l_362 = 0x738F014CL;
        int32_t l_364 = 0L;
        int32_t l_365 = (-6L);
        int32_t l_366[1];
        struct S0 *l_375 = &p_1166->g_376[0][8];
        VECTOR(int32_t, 4) l_399 = (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0L), 0L);
        int8_t *l_430 = &p_1166->g_94;
        struct S1 **l_462 = (void*)0;
        int i;
        for (i = 0; i < 1; i++)
            l_354[i] = (void*)0;
        for (i = 0; i < 1; i++)
            l_366[i] = 1L;
        if ((((((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 8))(l_333.s3164f34e)).s5446421125417727, ((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 4))(4294967295UL, 0x81631843L, 0UL, 0xEA63802CL)).zxwywzxyyyzzzzxz, ((VECTOR(uint32_t, 16))(4294967295UL, 1UL, ((VECTOR(uint32_t, 4))(p_1166->g_295.f2, (safe_lshift_func_int16_t_s_u((*p_112), (0xBFB58081L ^ (((p_1166->g_336 , 6L) ^ (safe_add_func_uint32_t_u_u((safe_rshift_func_int16_t_s_s(((*l_357) ^= (((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(9L, 0x2490L)).yyxy)).z <= ((l_355 = ((FAKE_DIVERGE(p_1166->global_0_offset, get_global_id(0), 10) & ((safe_lshift_func_uint16_t_u_s((safe_add_func_uint32_t_u_u(((*l_321) = (l_353 ^= (safe_rshift_func_int8_t_s_s((((~(0x18DDC099L >= p_1166->g_94)) == ((safe_div_func_uint64_t_u_u(18446744073709551613UL, (safe_lshift_func_uint8_t_u_u((((*p_1166->g_275) , p_1166->g_102.f3) < p_111), 7)))) ^ 0xFEEDL)) <= 2L), (*l_321))))), p_111)), l_333.s1)) ^ p_1166->g_102.f0)) || 0x206EL)) || p_111))), (*p_112))), p_1166->g_219.y))) == l_333.s0)))), 4294967295UL, 0xD6CFD9D4L)), ((VECTOR(uint32_t, 2))(6UL)), ((VECTOR(uint32_t, 2))(0xEBEEA759L)), 0xF3FEBD9CL, 5UL, ((VECTOR(uint32_t, 2))(0UL)), 0x96B4E3A9L, 1UL)), ((VECTOR(uint32_t, 16))(4294967286UL))))).even)).s2635457176552721)))))))), ((VECTOR(uint32_t, 16))(5UL))))).s3 >= 0x48C8CCAE6502A305L) || 6L) > GROUP_DIVERGE(2, 1)))
        { /* block id: 119 */
            int8_t l_358 = 0x0BL;
            int32_t *l_359 = (void*)0;
            int32_t *l_360 = (void*)0;
            int32_t *l_361[4][3][10] = {{{(void*)0,&l_353,&l_355,&l_355,&l_353,(void*)0,&l_355,&l_353,&p_1166->g_45,&p_1166->g_45},{(void*)0,&l_353,&l_355,&l_355,&l_353,(void*)0,&l_355,&l_353,&p_1166->g_45,&p_1166->g_45},{(void*)0,&l_353,&l_355,&l_355,&l_353,(void*)0,&l_355,&l_353,&p_1166->g_45,&p_1166->g_45}},{{(void*)0,&l_353,&l_355,&l_355,&l_353,(void*)0,&l_355,&l_353,&p_1166->g_45,&p_1166->g_45},{(void*)0,&l_353,&l_355,&l_355,&l_353,(void*)0,&l_355,&l_353,&p_1166->g_45,&p_1166->g_45},{(void*)0,&l_353,&l_355,&l_355,&l_353,(void*)0,&l_355,&l_353,&p_1166->g_45,&p_1166->g_45}},{{(void*)0,&l_353,&l_355,&l_355,&l_353,(void*)0,&l_355,&l_353,&p_1166->g_45,&p_1166->g_45},{(void*)0,&l_353,&l_355,&l_355,&l_353,(void*)0,&l_355,&l_353,&p_1166->g_45,&p_1166->g_45},{(void*)0,&l_353,&l_355,&l_355,&l_353,(void*)0,&l_355,&l_353,&p_1166->g_45,&p_1166->g_45}},{{(void*)0,&l_353,&l_355,&l_355,&l_353,(void*)0,&l_355,&l_353,&p_1166->g_45,&p_1166->g_45},{(void*)0,&l_353,&l_355,&l_355,&l_353,(void*)0,&l_355,&l_353,&p_1166->g_45,&p_1166->g_45},{(void*)0,&l_353,&l_355,&l_355,&l_353,(void*)0,&l_355,&l_353,&p_1166->g_45,&p_1166->g_45}}};
            int8_t l_367 = 0L;
            uint64_t l_368[1];
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_368[i] = 18446744073709551615UL;
            l_368[0]--;
            (*l_322) = (*p_1166->g_320);
            (*l_321) |= (((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(l_371.sa8057006)).lo)).z ^ p_111);
        }
        else
        { /* block id: 123 */
            VECTOR(int16_t, 2) l_434 = (VECTOR(int16_t, 2))(0x6624L, (-1L));
            int32_t **l_435 = (void*)0;
            int32_t l_443 = 0x66CCA5B9L;
            int32_t l_446 = 0x3797CE3AL;
            int32_t l_456 = 0x3FC21E75L;
            int i;
            p_1166->g_384 = (p_1166->g_372 , ((((*l_331) = (safe_add_func_int16_t_s_s((0x9CL > (p_111 < (l_375 != (void*)0))), (safe_div_func_int8_t_s_s((safe_mod_func_int64_t_s_s((((*p_112) > ((p_1166->g_258 , l_375) == p_1166->g_383)) , 0x6C98CE44BD025288L), p_111)), p_1166->g_43.f0))))) < p_111) , (*l_325)));
            if (p_111)
            { /* block id: 126 */
                uint8_t l_391 = 0x87L;
                int64_t *l_393[7][9][4] = {{{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0}},{{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0}},{{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0}},{{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0}},{{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0}},{{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0}},{{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0},{(void*)0,(void*)0,&p_1166->g_164,(void*)0}}};
                int32_t *l_398 = &l_355;
                volatile struct S0 *l_403 = &p_1166->g_295;
                volatile struct S0 **l_402[4];
                int8_t *l_429 = &p_1166->g_54;
                struct S0 **l_431 = (void*)0;
                struct S0 **l_432[5];
                int32_t l_444 = 0x07182287L;
                int32_t l_445 = 0x1439AC81L;
                int i, j, k;
                for (i = 0; i < 4; i++)
                    l_402[i] = &l_403;
                for (i = 0; i < 5; i++)
                    l_432[i] = &p_1166->g_383;
                l_404 = (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))((safe_sub_func_uint8_t_u_u((((*l_398) = ((safe_add_func_int64_t_s_s((p_1166->g_246.sb ^= (safe_mul_func_int8_t_s_s(l_391, ((VECTOR(int8_t, 4))(l_392.xyyy)).w))), ((((*l_332) = (8L <= (*l_321))) == ((p_1166->g_376[0][8] , ((*p_112) = ((safe_sub_func_int16_t_s_s((*p_112), ((((safe_rshift_func_uint16_t_u_u((GROUP_DIVERGE(1, 1) , (((*l_356) = ((*l_357) = (l_398 != ((*l_322) = (*l_322))))) || ((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_399.zxzyyxzz)).lo)))).w , ((void*)0 != p_1166->g_400)) <= p_111))), 10)) & 0xE990D92BEB2506BEL) > p_111) >= (*p_1166->g_158)))) && FAKE_DIVERGE(p_1166->global_0_offset, get_global_id(0), 10)))) & (*l_398))) , (*l_398)))) < (*p_1166->g_155))) & p_1166->g_143.x), p_111)), (-8L), (-4L), (-10L), 0x6C20422FL, p_111, 0x474084C3L, ((VECTOR(int32_t, 8))(0x6F31D260L)), 0x176DBF24L)).s7d82)).x , &p_1166->g_295);
                if ((safe_mul_func_int16_t_s_s(((*l_356) ^= ((safe_mod_func_int8_t_s_s(((safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(abs(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(1L, 0x69FD627EL)), 1L, 0x4CF91CA3L)).lo))).even, (safe_lshift_func_uint8_t_u_u((((*l_321) >= 0x1CL) , ((safe_mod_func_int16_t_s_s((((safe_sub_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(((((((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 2))((-1L), (-10L))).xxyyxyyy, ((VECTOR(int64_t, 16))((((safe_rshift_func_uint8_t_u_u(((l_433[0] = ((safe_rshift_func_int8_t_s_u((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(abs(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 4))(((safe_mul_func_uint8_t_u_u((+(FAKE_DIVERGE(p_1166->global_0_offset, get_global_id(0), 10) <= (p_1166->g_102.f3 && p_1166->g_258.f0))), ((((**l_322) = (safe_div_func_int16_t_s_s(((*l_398) = 0L), ((*p_1166->g_158) ^= (safe_lshift_func_int8_t_s_u((p_1166->g_43.f0 , (((p_111 , l_429) == l_430) , p_1166->g_143.y)), p_1166->g_143.y)))))) , 0xB5D350F5L) , (-1L)))) , (*l_321)), 255UL, 0xECL, 0UL)).even))).xxyx))))).ywyyxwxyywywwzxw)))))).s4 || (**l_322)), 4)) , l_375)) != (void*)0), l_434.y)) >= l_399.z) == 0x00065254F4BB6D4EL), ((VECTOR(int64_t, 8))(1L)), 0x16C8F4A8BCFCF372L, 0x0007F8041A3404E0L, p_1166->g_141.s5, 0x474C59BA08C20A73L, 0L, 5L, (-1L))).odd))).s7 , 0xA56BL) != 65534UL) , l_435) == (void*)0), 3)), (-6L))) , (*l_398)) < p_1166->g_132), (*p_112))) > 0x72F429F9B49B6521L)), p_111)))) >= GROUP_DIVERGE(1, 1)), p_111)) && 0x2B3AL)), 0x2B7AL)))
                { /* block id: 140 */
                    (*l_398) = 0L;
                }
                else
                { /* block id: 142 */
                    int32_t *l_437 = &l_365;
                    int32_t *l_438 = &l_353;
                    int32_t *l_439 = &l_355;
                    int32_t *l_440 = &l_353;
                    int32_t *l_441 = &l_365;
                    int32_t *l_442[2][2][6] = {{{&l_366[0],&l_362,&l_355,&l_362,&l_362,&l_362},{&l_366[0],&l_362,&l_355,&l_362,&l_362,&l_362}},{{&l_366[0],&l_362,&l_355,&l_362,&l_362,&l_362},{&l_366[0],&l_362,&l_355,&l_362,&l_362,&l_362}}};
                    VECTOR(uint8_t, 8) l_453 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL);
                    int i, j, k;
                    (*l_375) = p_1166->g_436[4];
                    p_1166->g_447++;
                    for (p_1166->g_164 = 10; (p_1166->g_164 != (-15)); p_1166->g_164 = safe_sub_func_uint64_t_u_u(p_1166->g_164, 6))
                    { /* block id: 147 */
                        return &p_1166->g_101[8][5][2];
                    }
                    (*p_1166->g_275) |= ((*l_398) <= ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 8))(p_1166->g_452.s78be427f)).even, ((VECTOR(uint8_t, 4))(l_453.s6043))))))).y);
                }
                (*l_322) = (*p_1166->g_320);
            }
            else
            { /* block id: 153 */
                int32_t *l_454 = &l_366[0];
                int32_t *l_455[9] = {&l_366[0],&l_363[4][1][3],&l_366[0],&l_366[0],&l_363[4][1][3],&l_366[0],&l_366[0],&l_363[4][1][3],&l_366[0]};
                int i;
                p_1166->g_457[7][2][1]++;
                for (p_1166->g_102.f3 = (-28); (p_1166->g_102.f3 == 0); p_1166->g_102.f3 = safe_add_func_uint16_t_u_u(p_1166->g_102.f3, 7))
                { /* block id: 157 */
                    return &p_1166->g_101[8][4][2];
                }
            }
            return l_462;
        }
    }
    else
    { /* block id: 163 */
        int32_t **l_464 = &l_321;
        VECTOR(uint16_t, 16) l_476 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x8DBEL), 0x8DBEL), 0x8DBEL, 65535UL, 0x8DBEL, (VECTOR(uint16_t, 2))(65535UL, 0x8DBEL), (VECTOR(uint16_t, 2))(65535UL, 0x8DBEL), 65535UL, 0x8DBEL, 65535UL, 0x8DBEL);
        VECTOR(int32_t, 2) l_477 = (VECTOR(int32_t, 2))(0x4757A3A4L, 0L);
        int64_t l_490 = 0x385AE5AB5975FD72L;
        int i;
        (*l_464) = ((*l_322) = (*p_1166->g_299));
        p_1166->g_143.z ^= (((safe_div_func_int64_t_s_s(((((&p_1166->g_132 == l_332) | (0L || (((**l_464) , p_1166->g_467) , p_111))) || (safe_mul_func_int16_t_s_s(((*p_112) = (safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 8))((safe_mod_func_uint64_t_u_u((safe_mod_func_int32_t_s_s((((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),VECTOR(uint16_t, 2),((VECTOR(uint16_t, 8))(l_476.sebae8cd4)).s45, ((VECTOR(uint16_t, 8))(((*p_1166->g_155) |= (((VECTOR(uint64_t, 2))(1UL, 0UL)).even & 0xCC27B372FA4EF349L)), ((VECTOR(uint16_t, 4))(((((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 4))(l_477.xxxx)).hi, ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 8))(0L, ((VECTOR(int32_t, 4))(p_111, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(0x5445B7A2L, 0x621A8494L)).yxxy, ((VECTOR(int32_t, 16))(l_478.s9f31a67d4ba11930)).sf560, ((VECTOR(int32_t, 2))(p_1166->g_479.xx)).yyyy))).even))), 0x087ADEC8L)), ((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))(0x20189A8AL, (-10L))).yyxxxyyy, ((VECTOR(int32_t, 2))(2L, 1L)).yxyyxxyy))).s5737205331416566, ((VECTOR(int32_t, 8))(0x7C1B5245L, 0x082EF529L, (((0xCFF8L > (**l_322)) || p_1166->g_372.f0) > (*p_112)), 0L, ((VECTOR(int32_t, 4))(0x6BCCC982L)))).s1262527124740025))).se, 0x4540E671L, 6L)).lo, ((VECTOR(int32_t, 4))(0x0AA1FBCCL))))).lo))), ((VECTOR(int32_t, 2))(0x58CE2368L)), ((VECTOR(int32_t, 2))(0x13503782L))))).even == p_111) || (*p_112)), ((VECTOR(uint16_t, 2))(0UL)), 0xC442L)).y, 0xE061L, p_111, 6UL, 0x4092L, 0x960EL, 0x58E1L)).s40, ((VECTOR(uint16_t, 2))(0x93F7L))))).hi <= (**l_322)), (**l_322))), 1L)), 0x45L, p_111, 0x06L, ((VECTOR(int8_t, 2))((-1L))), 0x38L, 0x13L)).s5120303316364437, ((VECTOR(int8_t, 16))((-8L)))))).s4, 0UL))), (**l_322)))) <= 0x72390DE402C11603L), (**l_322))) && GROUP_DIVERGE(1, 1)) ^ (**l_322));
        for (p_1166->g_94 = 0; (p_1166->g_94 <= 17); ++p_1166->g_94)
        { /* block id: 171 */
            int32_t *l_482 = (void*)0;
            int32_t *l_483 = (void*)0;
            int32_t *l_484 = (void*)0;
            p_1166->g_485--;
            (*l_322) = (*p_1166->g_299);
            (**l_464) = (safe_mul_func_uint16_t_u_u(l_490, ((safe_rshift_func_int8_t_s_s((**l_464), 1)) | ((void*)0 != &p_1166->g_162[4]))));
            for (p_1166->g_45 = 0; (p_1166->g_45 >= 3); p_1166->g_45++)
            { /* block id: 177 */
                (*l_404) = (*l_404);
            }
        }
        (*l_464) = (*p_1166->g_274);
    }
    return &p_1166->g_101[2][1][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1166->g_45 p_1166->g_102.f0 p_1166->g_159 p_1166->g_164 p_1166->g_165 p_1166->g_90.f0 p_1166->g_52 p_1166->g_190 p_1166->g_143 p_1166->g_287 p_1166->g_293 p_1166->g_258.f1 p_1166->g_295 p_1166->g_274 p_1166->g_275 p_1166->g_299 p_1166->g_320 p_1166->g_239 p_1166->g_141 p_1166->g_142 p_1166->g_102.f1 p_1166->g_6
 * writes: p_1166->g_45 p_1166->g_155 p_1166->g_158 p_1166->g_162 p_1166->g_164 p_1166->g_165 p_1166->g_102.f0 p_1166->g_90.f0 p_1166->g_52 p_1166->g_275
 */
int64_t  func_113(struct S1 * p_114, int16_t  p_115, struct S4 * p_1166)
{ /* block id: 25 */
    VECTOR(int32_t, 8) l_140 = (VECTOR(int32_t, 8))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, (-2L)), (-2L)), (-2L), 9L, (-2L));
    VECTOR(int32_t, 8) l_144 = (VECTOR(int32_t, 8))(0x47174225L, (VECTOR(int32_t, 4))(0x47174225L, (VECTOR(int32_t, 2))(0x47174225L, 0x6551692FL), 0x6551692FL), 0x6551692FL, 0x47174225L, 0x6551692FL);
    VECTOR(int32_t, 8) l_145 = (VECTOR(int32_t, 8))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, (-8L)), (-8L)), (-8L), 9L, (-8L));
    VECTOR(int32_t, 16) l_146 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x7BAD67FFL), 0x7BAD67FFL), 0x7BAD67FFL, (-1L), 0x7BAD67FFL, (VECTOR(int32_t, 2))((-1L), 0x7BAD67FFL), (VECTOR(int32_t, 2))((-1L), 0x7BAD67FFL), (-1L), 0x7BAD67FFL, (-1L), 0x7BAD67FFL);
    VECTOR(int32_t, 8) l_147 = (VECTOR(int32_t, 8))(0x2588FA3BL, (VECTOR(int32_t, 4))(0x2588FA3BL, (VECTOR(int32_t, 2))(0x2588FA3BL, 0x08CE9429L), 0x08CE9429L), 0x08CE9429L, 0x2588FA3BL, 0x08CE9429L);
    uint16_t *l_154 = &p_1166->g_30[4][0][1].f0;
    uint16_t **l_156 = (void*)0;
    uint16_t **l_157[1][4][9] = {{{&l_154,&l_154,&l_154,&l_154,&l_154,&l_154,&l_154,&l_154,&l_154},{&l_154,&l_154,&l_154,&l_154,&l_154,&l_154,&l_154,&l_154,&l_154},{&l_154,&l_154,&l_154,&l_154,&l_154,&l_154,&l_154,&l_154,&l_154},{&l_154,&l_154,&l_154,&l_154,&l_154,&l_154,&l_154,&l_154,&l_154}}};
    int64_t *l_163 = &p_1166->g_164;
    VECTOR(int16_t, 8) l_200 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
    int32_t *l_273 = (void*)0;
    union U2 *l_276 = &p_1166->g_30[1][0][6];
    int16_t l_302 = 0x0001L;
    uint8_t l_316[9];
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_316[i] = 0x32L;
lbl_170:
    p_1166->g_45 &= ((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(l_140.s16141441)), ((VECTOR(int32_t, 4))(p_1166->g_141.s5400)).yxxwzxyz, ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(p_1166->g_142.yyxxyzzyyxxxyxyx)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_1166->g_143.zzww)).xwxyxywzzyxzzywy)), ((VECTOR(int32_t, 8))(l_144.s62201304)).s5442027664200121))).lo, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_145.s5537)))).yzxzwxwx)))))).s1113310450004221, ((VECTOR(int32_t, 16))(l_146.sfd43eb6ffe17f827)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_147.s5606531334257202)).sf15e)).zzwyyzyxzxwzwxyz))))).s8;
    if ((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(0x18L, ((VECTOR(int8_t, 2))(0x00L, (-6L))), 0x32L, p_1166->g_102.f1, p_1166->g_6, 0L, 0x5EL)).lo)).odd)).yyyy)).y, ((l_147.s2 , (((*l_163) ^= (safe_mod_func_int16_t_s_s((p_1166->g_102.f0 != (((p_1166->g_158 = (p_1166->g_155 = l_154)) == p_1166->g_159[1]) && ((safe_mod_func_uint8_t_u_u(((p_1166->g_162[4] = (void*)0) == &p_115), 0x74L)) < l_144.s0))), (-3L)))) > l_145.s2)) , 0x63L))))
    { /* block id: 31 */
        int64_t l_189 = 1L;
        VECTOR(int32_t, 4) l_284 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L);
        int i;
        p_1166->g_165 = p_1166->g_165;
        for (p_1166->g_102.f0 = (-3); (p_1166->g_102.f0 < 26); ++p_1166->g_102.f0)
        { /* block id: 35 */
            VECTOR(int16_t, 16) l_199 = (VECTOR(int16_t, 16))(0x6405L, (VECTOR(int16_t, 4))(0x6405L, (VECTOR(int16_t, 2))(0x6405L, 0L), 0L), 0L, 0x6405L, 0L, (VECTOR(int16_t, 2))(0x6405L, 0L), (VECTOR(int16_t, 2))(0x6405L, 0L), 0x6405L, 0L, 0x6405L, 0L);
            int16_t l_241 = 0x229BL;
            int64_t *l_269 = &l_189;
            int i;
            for (p_1166->g_90.f0 = 0; (p_1166->g_90.f0 <= 36); ++p_1166->g_90.f0)
            { /* block id: 38 */
                VECTOR(uint16_t, 16) l_196 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x6518L), 0x6518L), 0x6518L, 1UL, 0x6518L, (VECTOR(uint16_t, 2))(1UL, 0x6518L), (VECTOR(uint16_t, 2))(1UL, 0x6518L), 1UL, 0x6518L, 1UL, 0x6518L);
                int32_t l_227[4][8] = {{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L}};
                uint8_t *l_234[10][5] = {{&p_1166->g_132,(void*)0,(void*)0,&p_1166->g_132,&p_1166->g_132},{&p_1166->g_132,(void*)0,(void*)0,&p_1166->g_132,&p_1166->g_132},{&p_1166->g_132,(void*)0,(void*)0,&p_1166->g_132,&p_1166->g_132},{&p_1166->g_132,(void*)0,(void*)0,&p_1166->g_132,&p_1166->g_132},{&p_1166->g_132,(void*)0,(void*)0,&p_1166->g_132,&p_1166->g_132},{&p_1166->g_132,(void*)0,(void*)0,&p_1166->g_132,&p_1166->g_132},{&p_1166->g_132,(void*)0,(void*)0,&p_1166->g_132,&p_1166->g_132},{&p_1166->g_132,(void*)0,(void*)0,&p_1166->g_132,&p_1166->g_132},{&p_1166->g_132,(void*)0,(void*)0,&p_1166->g_132,&p_1166->g_132},{&p_1166->g_132,(void*)0,(void*)0,&p_1166->g_132,&p_1166->g_132}};
                int i, j;
                if (p_1166->g_6)
                    goto lbl_170;
                if (l_147.s6)
                    break;
                if (l_144.s1)
                    break;
                for (p_1166->g_52 = 24; (p_1166->g_52 > (-29)); p_1166->g_52 = safe_sub_func_int64_t_s_s(p_1166->g_52, 7))
                { /* block id: 44 */
                    int8_t *l_182 = (void*)0;
                    int8_t **l_183 = &l_182;
                    int32_t l_188 = 4L;
                    VECTOR(uint16_t, 4) l_197 = (VECTOR(uint16_t, 4))(0x8DEDL, (VECTOR(uint16_t, 2))(0x8DEDL, 65530UL), 65530UL);
                    uint8_t l_207 = 0x6FL;
                    int16_t *l_242[4];
                    int32_t l_243[6];
                    VECTOR(int32_t, 8) l_247 = (VECTOR(int32_t, 8))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0x58348DC1L), 0x58348DC1L), 0x58348DC1L, (-5L), 0x58348DC1L);
                    int i;
                    for (i = 0; i < 4; i++)
                        l_242[i] = (void*)0;
                    for (i = 0; i < 6; i++)
                        l_243[i] = 0x45B5DB38L;
                    (1 + 1);
                }
            }
            if ((*p_1166->g_190))
                break;
            if ((*p_1166->g_190))
                continue;
            if (l_241)
                continue;
        }
        (*p_1166->g_293) = ((safe_sub_func_int8_t_s_s(((0L | (safe_unary_minus_func_int16_t_s((((VECTOR(int32_t, 8))(l_284.xzxyywxy)).s6 , p_115)))) || p_1166->g_90.f0), p_1166->g_143.x)) , (safe_mod_func_int32_t_s_s((0x7FF8A4D8716988ADL || (p_1166->g_287[0] , 0x5EE3D4D1B9F42056L)), (safe_add_func_uint32_t_u_u(p_115, (safe_div_func_int16_t_s_s(0x6ECEL, 0x6284L)))))));
        return p_1166->g_258.f1;
    }
    else
    { /* block id: 89 */
        int16_t **l_294 = &p_1166->g_162[4];
        volatile struct S0 *l_296 = &p_1166->g_165;
        int32_t l_297 = 0x50D279C5L;
        int32_t l_304 = 0x435C911FL;
        int32_t l_308 = 0x449A1E4AL;
        int32_t l_309 = 0x77FC4C11L;
        int32_t l_310 = 0x27565D6AL;
        int32_t l_315 = 0x080C3669L;
        (*l_296) = ((((*l_294) = &p_115) == (void*)0) , p_1166->g_295);
lbl_298:
        (*p_1166->g_274) = (*p_1166->g_274);
        if (l_297)
        { /* block id: 93 */
            if (p_1166->g_45)
                goto lbl_298;
        }
        else
        { /* block id: 95 */
            int16_t l_305 = 0x5D7CL;
            int32_t l_306 = 0x12FD4C52L;
            int32_t l_307 = 8L;
            int32_t l_311 = 0x739512A2L;
            int32_t l_312 = 0L;
            int32_t l_314 = (-1L);
            (*p_1166->g_299) = (*p_1166->g_274);
            if (((1L >= p_115) & ((l_302 > p_115) <= p_115)))
            { /* block id: 97 */
                int32_t *l_303[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_303[i] = (void*)0;
                l_316[0]++;
                l_309 &= (l_140.s6 = (*p_1166->g_293));
            }
            else
            { /* block id: 101 */
                int32_t *l_319[4][7][9] = {{{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310}},{{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310}},{{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310}},{{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310},{&l_310,&l_311,&l_306,&l_306,&l_311,&l_310,&l_307,&l_308,&l_310}}};
                int i, j, k;
                l_273 = l_319[3][5][2];
            }
        }
        (*p_1166->g_320) = &l_315;
    }
    return p_1166->g_239.x;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_1167;
    struct S4* p_1166 = &c_1167;
    struct S4 c_1168 = {
        0xC3D069F4L, // p_1166->g_6
        {{{{0xAB5BL},{0x9534L},{4UL},{1UL},{0xC19CL},{1UL},{0xB962L},{9UL},{65530UL},{65532UL}},{{0xAB5BL},{0x9534L},{4UL},{1UL},{0xC19CL},{1UL},{0xB962L},{9UL},{65530UL},{65532UL}}},{{{0xAB5BL},{0x9534L},{4UL},{1UL},{0xC19CL},{1UL},{0xB962L},{9UL},{65530UL},{65532UL}},{{0xAB5BL},{0x9534L},{4UL},{1UL},{0xC19CL},{1UL},{0xB962L},{9UL},{65530UL},{65532UL}}},{{{0xAB5BL},{0x9534L},{4UL},{1UL},{0xC19CL},{1UL},{0xB962L},{9UL},{65530UL},{65532UL}},{{0xAB5BL},{0x9534L},{4UL},{1UL},{0xC19CL},{1UL},{0xB962L},{9UL},{65530UL},{65532UL}}},{{{0xAB5BL},{0x9534L},{4UL},{1UL},{0xC19CL},{1UL},{0xB962L},{9UL},{65530UL},{65532UL}},{{0xAB5BL},{0x9534L},{4UL},{1UL},{0xC19CL},{1UL},{0xB962L},{9UL},{65530UL},{65532UL}}},{{{0xAB5BL},{0x9534L},{4UL},{1UL},{0xC19CL},{1UL},{0xB962L},{9UL},{65530UL},{65532UL}},{{0xAB5BL},{0x9534L},{4UL},{1UL},{0xC19CL},{1UL},{0xB962L},{9UL},{65530UL},{65532UL}}},{{{0xAB5BL},{0x9534L},{4UL},{1UL},{0xC19CL},{1UL},{0xB962L},{9UL},{65530UL},{65532UL}},{{0xAB5BL},{0x9534L},{4UL},{1UL},{0xC19CL},{1UL},{0xB962L},{9UL},{65530UL},{65532UL}}},{{{0xAB5BL},{0x9534L},{4UL},{1UL},{0xC19CL},{1UL},{0xB962L},{9UL},{65530UL},{65532UL}},{{0xAB5BL},{0x9534L},{4UL},{1UL},{0xC19CL},{1UL},{0xB962L},{9UL},{65530UL},{65532UL}}}}, // p_1166->g_30
        (-2L), // p_1166->g_41
        {0x61BCL}, // p_1166->g_43
        1L, // p_1166->g_45
        (-1L), // p_1166->g_51
        0x0915L, // p_1166->g_52
        6L, // p_1166->g_54
        8L, // p_1166->g_55
        0x36FF5786L, // p_1166->g_56
        0xA127326B30262A88L, // p_1166->g_57
        &p_1166->g_54, // p_1166->g_62
        {1UL}, // p_1166->g_90
        (-1L), // p_1166->g_94
        0x7E195E04L, // p_1166->g_95
        {0xE9565209L,0x4AA3E211L,65535UL,-5L}, // p_1166->g_102
        {{{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0}},{{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0}},{{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0}},{{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0}},{{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0}},{{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0}},{{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0}},{{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0}},{{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0}},{{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0},{&p_1166->g_102,&p_1166->g_102,(void*)0}}}, // p_1166->g_101
        0x6AL, // p_1166->g_132
        (VECTOR(int32_t, 8))(0x1D29D4CFL, (VECTOR(int32_t, 4))(0x1D29D4CFL, (VECTOR(int32_t, 2))(0x1D29D4CFL, 0x647BCEAFL), 0x647BCEAFL), 0x647BCEAFL, 0x1D29D4CFL, 0x647BCEAFL), // p_1166->g_141
        (VECTOR(int32_t, 4))(0x16941D4DL, (VECTOR(int32_t, 2))(0x16941D4DL, 0x058CDCFDL), 0x058CDCFDL), // p_1166->g_142
        (VECTOR(int32_t, 4))(0x4974F601L, (VECTOR(int32_t, 2))(0x4974F601L, 0x6A6A2F96L), 0x6A6A2F96L), // p_1166->g_143
        &p_1166->g_43.f0, // p_1166->g_155
        &p_1166->g_30[4][0][1].f0, // p_1166->g_158
        {&p_1166->g_43.f0,&p_1166->g_43.f0,&p_1166->g_43.f0,&p_1166->g_43.f0,&p_1166->g_43.f0,&p_1166->g_43.f0}, // p_1166->g_159
        {&p_1166->g_90.f4,&p_1166->g_90.f4,&p_1166->g_90.f4,&p_1166->g_90.f4,&p_1166->g_90.f4}, // p_1166->g_162
        2L, // p_1166->g_164
        {0x0B97L,0x996908100F8154E2L,0x14E94468L,18446744073709551615UL,-6L,3UL}, // p_1166->g_165
        {18446744073709551613UL}, // p_1166->g_173
        &p_1166->g_45, // p_1166->g_190
        &p_1166->g_101[5][1][2], // p_1166->g_191
        (VECTOR(uint16_t, 16))(0x00BEL, (VECTOR(uint16_t, 4))(0x00BEL, (VECTOR(uint16_t, 2))(0x00BEL, 0UL), 0UL), 0UL, 0x00BEL, 0UL, (VECTOR(uint16_t, 2))(0x00BEL, 0UL), (VECTOR(uint16_t, 2))(0x00BEL, 0UL), 0x00BEL, 0UL, 0x00BEL, 0UL), // p_1166->g_198
        (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xBD8925AEL), 0xBD8925AEL), // p_1166->g_219
        (VECTOR(int64_t, 16))(0x2D63D6F2558EA937L, (VECTOR(int64_t, 4))(0x2D63D6F2558EA937L, (VECTOR(int64_t, 2))(0x2D63D6F2558EA937L, 8L), 8L), 8L, 0x2D63D6F2558EA937L, 8L, (VECTOR(int64_t, 2))(0x2D63D6F2558EA937L, 8L), (VECTOR(int64_t, 2))(0x2D63D6F2558EA937L, 8L), 0x2D63D6F2558EA937L, 8L, 0x2D63D6F2558EA937L, 8L), // p_1166->g_222
        (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 4294967295UL), // p_1166->g_239
        (VECTOR(int64_t, 16))(0x77952CBC31E6BA40L, (VECTOR(int64_t, 4))(0x77952CBC31E6BA40L, (VECTOR(int64_t, 2))(0x77952CBC31E6BA40L, 7L), 7L), 7L, 0x77952CBC31E6BA40L, 7L, (VECTOR(int64_t, 2))(0x77952CBC31E6BA40L, 7L), (VECTOR(int64_t, 2))(0x77952CBC31E6BA40L, 7L), 0x77952CBC31E6BA40L, 7L, 0x77952CBC31E6BA40L, 7L), // p_1166->g_246
        (VECTOR(int32_t, 2))((-1L), 7L), // p_1166->g_248
        &p_1166->g_45, // p_1166->g_257
        {0xCF62L,0xB8A31F7803BE8F81L,1UL,0UL,-1L,9UL}, // p_1166->g_258
        {0x9F7C61B3L,-4L,65535UL,1L}, // p_1166->g_271
        &p_1166->g_271, // p_1166->g_272
        (void*)0, // p_1166->g_275
        &p_1166->g_275, // p_1166->g_274
        {{18446744073709551608UL},{18446744073709551608UL},{18446744073709551608UL},{18446744073709551608UL},{18446744073709551608UL},{18446744073709551608UL},{18446744073709551608UL},{18446744073709551608UL},{18446744073709551608UL}}, // p_1166->g_287
        {{{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45}},{{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45}},{{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45}},{{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45}},{{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45}},{{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45}},{{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45}},{{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45}},{{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45}},{{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45},{(void*)0,&p_1166->g_45,&p_1166->g_45}}}, // p_1166->g_292
        &p_1166->g_45, // p_1166->g_293
        {0x80F7L,0x21165C56F8913ACFL,0UL,18446744073709551613UL,-1L,0UL}, // p_1166->g_295
        &p_1166->g_275, // p_1166->g_299
        0L, // p_1166->g_313
        &p_1166->g_275, // p_1166->g_320
        {0xBF01L}, // p_1166->g_336
        {3UL}, // p_1166->g_372
        {{{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{9UL,18446744073709551612UL,0x56753B81L,0UL,8L,0x2D8AL},{0xF84BL,0x4EBB8BE3853B71CAL,0x13D644DEL,0UL,-1L,0x5063L},{1UL,0x02E538EF27D77C0FL,4294967295UL,9UL,-1L,65535UL},{1UL,0UL,4294967295UL,0x30EF634E4AA5A9EBL,0L,0x2D4BL},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L},{0x0F00L,18446744073709551612UL,0x8AA8F1E1L,0x36187401E0DF8CB7L,0x59A8L,0xCF26L},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L}},{{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{9UL,18446744073709551612UL,0x56753B81L,0UL,8L,0x2D8AL},{0xF84BL,0x4EBB8BE3853B71CAL,0x13D644DEL,0UL,-1L,0x5063L},{1UL,0x02E538EF27D77C0FL,4294967295UL,9UL,-1L,65535UL},{1UL,0UL,4294967295UL,0x30EF634E4AA5A9EBL,0L,0x2D4BL},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L},{0x0F00L,18446744073709551612UL,0x8AA8F1E1L,0x36187401E0DF8CB7L,0x59A8L,0xCF26L},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L}},{{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{9UL,18446744073709551612UL,0x56753B81L,0UL,8L,0x2D8AL},{0xF84BL,0x4EBB8BE3853B71CAL,0x13D644DEL,0UL,-1L,0x5063L},{1UL,0x02E538EF27D77C0FL,4294967295UL,9UL,-1L,65535UL},{1UL,0UL,4294967295UL,0x30EF634E4AA5A9EBL,0L,0x2D4BL},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L},{0x0F00L,18446744073709551612UL,0x8AA8F1E1L,0x36187401E0DF8CB7L,0x59A8L,0xCF26L},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L}},{{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{9UL,18446744073709551612UL,0x56753B81L,0UL,8L,0x2D8AL},{0xF84BL,0x4EBB8BE3853B71CAL,0x13D644DEL,0UL,-1L,0x5063L},{1UL,0x02E538EF27D77C0FL,4294967295UL,9UL,-1L,65535UL},{1UL,0UL,4294967295UL,0x30EF634E4AA5A9EBL,0L,0x2D4BL},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L},{0x0F00L,18446744073709551612UL,0x8AA8F1E1L,0x36187401E0DF8CB7L,0x59A8L,0xCF26L},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L}},{{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{9UL,18446744073709551612UL,0x56753B81L,0UL,8L,0x2D8AL},{0xF84BL,0x4EBB8BE3853B71CAL,0x13D644DEL,0UL,-1L,0x5063L},{1UL,0x02E538EF27D77C0FL,4294967295UL,9UL,-1L,65535UL},{1UL,0UL,4294967295UL,0x30EF634E4AA5A9EBL,0L,0x2D4BL},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L},{0x0F00L,18446744073709551612UL,0x8AA8F1E1L,0x36187401E0DF8CB7L,0x59A8L,0xCF26L},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L}},{{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{9UL,18446744073709551612UL,0x56753B81L,0UL,8L,0x2D8AL},{0xF84BL,0x4EBB8BE3853B71CAL,0x13D644DEL,0UL,-1L,0x5063L},{1UL,0x02E538EF27D77C0FL,4294967295UL,9UL,-1L,65535UL},{1UL,0UL,4294967295UL,0x30EF634E4AA5A9EBL,0L,0x2D4BL},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L},{0x0F00L,18446744073709551612UL,0x8AA8F1E1L,0x36187401E0DF8CB7L,0x59A8L,0xCF26L},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L}},{{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{9UL,18446744073709551612UL,0x56753B81L,0UL,8L,0x2D8AL},{0xF84BL,0x4EBB8BE3853B71CAL,0x13D644DEL,0UL,-1L,0x5063L},{1UL,0x02E538EF27D77C0FL,4294967295UL,9UL,-1L,65535UL},{1UL,0UL,4294967295UL,0x30EF634E4AA5A9EBL,0L,0x2D4BL},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L},{0x0F00L,18446744073709551612UL,0x8AA8F1E1L,0x36187401E0DF8CB7L,0x59A8L,0xCF26L},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L}},{{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{65535UL,0xF86DA8D548A9DC16L,0x3E06B286L,0xBA7BF2785EC50F43L,5L,0x7A36L},{9UL,18446744073709551612UL,0x56753B81L,0UL,8L,0x2D8AL},{0xF84BL,0x4EBB8BE3853B71CAL,0x13D644DEL,0UL,-1L,0x5063L},{1UL,0x02E538EF27D77C0FL,4294967295UL,9UL,-1L,65535UL},{1UL,0UL,4294967295UL,0x30EF634E4AA5A9EBL,0L,0x2D4BL},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L},{0x0F00L,18446744073709551612UL,0x8AA8F1E1L,0x36187401E0DF8CB7L,0x59A8L,0xCF26L},{7UL,0x61CF256A8053555FL,0xD58B3E97L,18446744073709551615UL,-8L,0xF268L}}}, // p_1166->g_376
        (void*)0, // p_1166->g_383
        {0x4EF3593BL,0x4DB37981L,0xCEC0L,8L}, // p_1166->g_384
        (VECTOR(uint8_t, 16))(0x46L, (VECTOR(uint8_t, 4))(0x46L, (VECTOR(uint8_t, 2))(0x46L, 251UL), 251UL), 251UL, 0x46L, 251UL, (VECTOR(uint8_t, 2))(0x46L, 251UL), (VECTOR(uint8_t, 2))(0x46L, 251UL), 0x46L, 251UL, 0x46L, 251UL), // p_1166->g_401
        (void*)0, // p_1166->g_400
        {{0x994AL,18446744073709551610UL,4294967295UL,0xAE2CF603419834FEL,-4L,65528UL},{0x994AL,18446744073709551610UL,4294967295UL,0xAE2CF603419834FEL,-4L,65528UL},{0x994AL,18446744073709551610UL,4294967295UL,0xAE2CF603419834FEL,-4L,65528UL},{0x994AL,18446744073709551610UL,4294967295UL,0xAE2CF603419834FEL,-4L,65528UL},{0x994AL,18446744073709551610UL,4294967295UL,0xAE2CF603419834FEL,-4L,65528UL},{0x994AL,18446744073709551610UL,4294967295UL,0xAE2CF603419834FEL,-4L,65528UL},{0x994AL,18446744073709551610UL,4294967295UL,0xAE2CF603419834FEL,-4L,65528UL}}, // p_1166->g_436
        18446744073709551606UL, // p_1166->g_447
        (VECTOR(uint8_t, 16))(0x68L, (VECTOR(uint8_t, 4))(0x68L, (VECTOR(uint8_t, 2))(0x68L, 0xDEL), 0xDEL), 0xDEL, 0x68L, 0xDEL, (VECTOR(uint8_t, 2))(0x68L, 0xDEL), (VECTOR(uint8_t, 2))(0x68L, 0xDEL), 0x68L, 0xDEL, 0x68L, 0xDEL), // p_1166->g_452
        {{{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L}},{{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L}},{{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L}},{{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L}},{{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L}},{{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L}},{{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L}},{{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L}},{{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L},{6UL,0xD803L,0x4452L}}}, // p_1166->g_457
        (void*)0, // p_1166->g_463
        {0xFACAL,1UL,3UL,18446744073709551614UL,0x4815L,0xE4E7L}, // p_1166->g_467
        (VECTOR(int32_t, 2))(0x6EFE57B5L, (-5L)), // p_1166->g_479
        0x8DF64A70L, // p_1166->g_485
        4294967295UL, // p_1166->g_497
        {0xC6671AA8L,0x72646D18L,0x8033L,0L}, // p_1166->g_498
        {{0xD21AL,0x548B3A6A92AC8658L,4294967295UL,18446744073709551609UL,1L,0x3E27L},{0xD21AL,0x548B3A6A92AC8658L,4294967295UL,18446744073709551609UL,1L,0x3E27L},{0xD21AL,0x548B3A6A92AC8658L,4294967295UL,18446744073709551609UL,1L,0x3E27L}}, // p_1166->g_499
        (void*)0, // p_1166->g_500
        {{{{0UL,0x3ACD7547L,0xF90AL,5L},{0UL,0x3ACD7547L,0xF90AL,5L},{0UL,0x3ACD7547L,0xF90AL,5L},{0UL,0x3ACD7547L,0xF90AL,5L}},{{0UL,0x3ACD7547L,0xF90AL,5L},{0UL,0x3ACD7547L,0xF90AL,5L},{0UL,0x3ACD7547L,0xF90AL,5L},{0UL,0x3ACD7547L,0xF90AL,5L}}},{{{0UL,0x3ACD7547L,0xF90AL,5L},{0UL,0x3ACD7547L,0xF90AL,5L},{0UL,0x3ACD7547L,0xF90AL,5L},{0UL,0x3ACD7547L,0xF90AL,5L}},{{0UL,0x3ACD7547L,0xF90AL,5L},{0UL,0x3ACD7547L,0xF90AL,5L},{0UL,0x3ACD7547L,0xF90AL,5L},{0UL,0x3ACD7547L,0xF90AL,5L}}}}, // p_1166->g_502
        (VECTOR(int32_t, 2))((-1L), (-3L)), // p_1166->g_515
        &p_1166->g_41, // p_1166->g_520
        {(void*)0}, // p_1166->g_525
        0x7E05F239L, // p_1166->g_568
        &p_1166->g_500, // p_1166->g_569
        (VECTOR(int64_t, 16))((-2L), (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 0L), 0L), 0L, (-2L), 0L, (VECTOR(int64_t, 2))((-2L), 0L), (VECTOR(int64_t, 2))((-2L), 0L), (-2L), 0L, (-2L), 0L), // p_1166->g_572
        {{0x21AE2946L,5L,0xC0BFL,0x59L},{0x21AE2946L,5L,0xC0BFL,0x59L},{0x21AE2946L,5L,0xC0BFL,0x59L}}, // p_1166->g_588
        {{5UL,0L,65527UL,0x48L},{5UL,0L,65527UL,0x48L},{5UL,0L,65527UL,0x48L},{5UL,0L,65527UL,0x48L}}, // p_1166->g_590
        {18446744073709551611UL}, // p_1166->g_619
        {{{{4294967292UL,0L,0UL,-10L},{4294967292UL,0L,0UL,-10L},{0x402F54C9L,0x2ABE95FFL,0x1D49L,0x5CL}},{{4294967292UL,0L,0UL,-10L},{4294967292UL,0L,0UL,-10L},{0x402F54C9L,0x2ABE95FFL,0x1D49L,0x5CL}},{{4294967292UL,0L,0UL,-10L},{4294967292UL,0L,0UL,-10L},{0x402F54C9L,0x2ABE95FFL,0x1D49L,0x5CL}}},{{{4294967292UL,0L,0UL,-10L},{4294967292UL,0L,0UL,-10L},{0x402F54C9L,0x2ABE95FFL,0x1D49L,0x5CL}},{{4294967292UL,0L,0UL,-10L},{4294967292UL,0L,0UL,-10L},{0x402F54C9L,0x2ABE95FFL,0x1D49L,0x5CL}},{{4294967292UL,0L,0UL,-10L},{4294967292UL,0L,0UL,-10L},{0x402F54C9L,0x2ABE95FFL,0x1D49L,0x5CL}}}}, // p_1166->g_632
        {{{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L}},{{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L}},{{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L}},{{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L}},{{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L}},{{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L}},{{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L},{0UL,0x5FC2EDC8L,0x91A4L,0x74L}}}, // p_1166->g_633
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), 1UL), 1UL, 65535UL, 1UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), (VECTOR(uint16_t, 2))(65535UL, 1UL), 65535UL, 1UL, 65535UL, 1UL), // p_1166->g_699
        (void*)0, // p_1166->g_708
        {{{&p_1166->g_708},{&p_1166->g_708},{&p_1166->g_708},{&p_1166->g_708},{&p_1166->g_708},{&p_1166->g_708},{&p_1166->g_708},{&p_1166->g_708},{&p_1166->g_708}}}, // p_1166->g_707
        (VECTOR(int8_t, 4))(0x47L, (VECTOR(int8_t, 2))(0x47L, 1L), 1L), // p_1166->g_742
        (VECTOR(int8_t, 8))(7L, (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, 0x2DL), 0x2DL), 0x2DL, 7L, 0x2DL), // p_1166->g_743
        (VECTOR(uint8_t, 8))(0x41L, (VECTOR(uint8_t, 4))(0x41L, (VECTOR(uint8_t, 2))(0x41L, 0x30L), 0x30L), 0x30L, 0x41L, 0x30L), // p_1166->g_745
        (VECTOR(int32_t, 2))(0x360ABAF9L, 0x7F970757L), // p_1166->g_767
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x5E540E40L), 0x5E540E40L), 0x5E540E40L, (-1L), 0x5E540E40L), // p_1166->g_785
        &p_1166->g_499[0].f3, // p_1166->g_791
        (VECTOR(uint8_t, 2))(7UL, 255UL), // p_1166->g_803
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x3AL), 0x3AL), // p_1166->g_805
        {8UL,0xCDBCDC61983B4924L,0x77444B35L,0x0C1C29AB91E7BB50L,-10L,0xB5E8L}, // p_1166->g_818
        {18446744073709551614UL}, // p_1166->g_821
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x0AL), 0x0AL), 0x0AL, (-1L), 0x0AL, (VECTOR(int8_t, 2))((-1L), 0x0AL), (VECTOR(int8_t, 2))((-1L), 0x0AL), (-1L), 0x0AL, (-1L), 0x0AL), // p_1166->g_822
        {{0x73E60C3FL,0L,0x5DDBL,7L},{0x73E60C3FL,0L,0x5DDBL,7L},{0x73E60C3FL,0L,0x5DDBL,7L},{0x73E60C3FL,0L,0x5DDBL,7L},{0x73E60C3FL,0L,0x5DDBL,7L},{0x73E60C3FL,0L,0x5DDBL,7L},{0x73E60C3FL,0L,0x5DDBL,7L},{0x73E60C3FL,0L,0x5DDBL,7L},{0x73E60C3FL,0L,0x5DDBL,7L}}, // p_1166->g_826
        {0xC23B6DD2L,0L,1UL,0x1CL}, // p_1166->g_828
        &p_1166->g_500, // p_1166->g_829
        {0x749D746E267DEEE2L}, // p_1166->g_852
        (VECTOR(int8_t, 2))(0x55L, 2L), // p_1166->g_855
        {0xAF435DA83EAF35E4L}, // p_1166->g_881
        (VECTOR(uint8_t, 2))(247UL, 255UL), // p_1166->g_892
        (VECTOR(uint8_t, 16))(0x78L, (VECTOR(uint8_t, 4))(0x78L, (VECTOR(uint8_t, 2))(0x78L, 0xF0L), 0xF0L), 0xF0L, 0x78L, 0xF0L, (VECTOR(uint8_t, 2))(0x78L, 0xF0L), (VECTOR(uint8_t, 2))(0x78L, 0xF0L), 0x78L, 0xF0L, 0x78L, 0xF0L), // p_1166->g_894
        (VECTOR(int8_t, 8))(0x23L, (VECTOR(int8_t, 4))(0x23L, (VECTOR(int8_t, 2))(0x23L, 0x5AL), 0x5AL), 0x5AL, 0x23L, 0x5AL), // p_1166->g_930
        (VECTOR(uint64_t, 2))(18446744073709551609UL, 18446744073709551615UL), // p_1166->g_936
        (VECTOR(uint8_t, 2))(255UL, 0x4CL), // p_1166->g_956
        (VECTOR(uint16_t, 2))(0xCFE8L, 0xDEEDL), // p_1166->g_976
        (VECTOR(uint16_t, 2))(0UL, 0x2046L), // p_1166->g_977
        (VECTOR(uint8_t, 8))(252UL, (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 0x53L), 0x53L), 0x53L, 252UL, 0x53L), // p_1166->g_979
        (VECTOR(uint8_t, 8))(0x0AL, (VECTOR(uint8_t, 4))(0x0AL, (VECTOR(uint8_t, 2))(0x0AL, 0xCAL), 0xCAL), 0xCAL, 0x0AL, 0xCAL), // p_1166->g_981
        {{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL},{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL},{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL},{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL},{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL},{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL},{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL},{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL}}, // p_1166->g_986
        &p_1166->g_51, // p_1166->g_999
        {&p_1166->g_986[6],&p_1166->g_986[6],&p_1166->g_986[6],&p_1166->g_986[6]}, // p_1166->g_1003
        {&p_1166->g_1003[1]}, // p_1166->g_1002
        &p_1166->g_1003[0], // p_1166->g_1004
        (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x16L), 0x16L), // p_1166->g_1017
        (VECTOR(int64_t, 2))(0x6910498741256EB0L, 1L), // p_1166->g_1033
        (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), (-9L)), (-9L)), // p_1166->g_1053
        (VECTOR(int64_t, 4))((-7L), (VECTOR(int64_t, 2))((-7L), 0x379D646CC72D8869L), 0x379D646CC72D8869L), // p_1166->g_1062
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x441DL), 0x441DL), // p_1166->g_1067
        (VECTOR(int8_t, 8))(0x3CL, (VECTOR(int8_t, 4))(0x3CL, (VECTOR(int8_t, 2))(0x3CL, 0x11L), 0x11L), 0x11L, 0x3CL, 0x11L), // p_1166->g_1084
        (VECTOR(int16_t, 2))(1L, 1L), // p_1166->g_1105
        &p_1166->g_619, // p_1166->g_1128
        &p_1166->g_1128, // p_1166->g_1127
        sequence_input[get_global_id(0)], // p_1166->global_0_offset
        sequence_input[get_global_id(1)], // p_1166->global_1_offset
        sequence_input[get_global_id(2)], // p_1166->global_2_offset
        sequence_input[get_local_id(0)], // p_1166->local_0_offset
        sequence_input[get_local_id(1)], // p_1166->local_1_offset
        sequence_input[get_local_id(2)], // p_1166->local_2_offset
        sequence_input[get_group_id(0)], // p_1166->group_0_offset
        sequence_input[get_group_id(1)], // p_1166->group_1_offset
        sequence_input[get_group_id(2)], // p_1166->group_2_offset
    };
    c_1167 = c_1168;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1166);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1166->g_6, "p_1166->g_6", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_1166->g_30[i][j][k].f0, "p_1166->g_30[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1166->g_41, "p_1166->g_41", print_hash_value);
    transparent_crc(p_1166->g_43.f0, "p_1166->g_43.f0", print_hash_value);
    transparent_crc(p_1166->g_45, "p_1166->g_45", print_hash_value);
    transparent_crc(p_1166->g_51, "p_1166->g_51", print_hash_value);
    transparent_crc(p_1166->g_52, "p_1166->g_52", print_hash_value);
    transparent_crc(p_1166->g_54, "p_1166->g_54", print_hash_value);
    transparent_crc(p_1166->g_55, "p_1166->g_55", print_hash_value);
    transparent_crc(p_1166->g_56, "p_1166->g_56", print_hash_value);
    transparent_crc(p_1166->g_57, "p_1166->g_57", print_hash_value);
    transparent_crc(p_1166->g_90.f3, "p_1166->g_90.f3", print_hash_value);
    transparent_crc(p_1166->g_94, "p_1166->g_94", print_hash_value);
    transparent_crc(p_1166->g_95, "p_1166->g_95", print_hash_value);
    transparent_crc(p_1166->g_102.f0, "p_1166->g_102.f0", print_hash_value);
    transparent_crc(p_1166->g_102.f1, "p_1166->g_102.f1", print_hash_value);
    transparent_crc(p_1166->g_102.f2, "p_1166->g_102.f2", print_hash_value);
    transparent_crc(p_1166->g_102.f3, "p_1166->g_102.f3", print_hash_value);
    transparent_crc(p_1166->g_132, "p_1166->g_132", print_hash_value);
    transparent_crc(p_1166->g_141.s0, "p_1166->g_141.s0", print_hash_value);
    transparent_crc(p_1166->g_141.s1, "p_1166->g_141.s1", print_hash_value);
    transparent_crc(p_1166->g_141.s2, "p_1166->g_141.s2", print_hash_value);
    transparent_crc(p_1166->g_141.s3, "p_1166->g_141.s3", print_hash_value);
    transparent_crc(p_1166->g_141.s4, "p_1166->g_141.s4", print_hash_value);
    transparent_crc(p_1166->g_141.s5, "p_1166->g_141.s5", print_hash_value);
    transparent_crc(p_1166->g_141.s6, "p_1166->g_141.s6", print_hash_value);
    transparent_crc(p_1166->g_141.s7, "p_1166->g_141.s7", print_hash_value);
    transparent_crc(p_1166->g_142.x, "p_1166->g_142.x", print_hash_value);
    transparent_crc(p_1166->g_142.y, "p_1166->g_142.y", print_hash_value);
    transparent_crc(p_1166->g_142.z, "p_1166->g_142.z", print_hash_value);
    transparent_crc(p_1166->g_142.w, "p_1166->g_142.w", print_hash_value);
    transparent_crc(p_1166->g_143.x, "p_1166->g_143.x", print_hash_value);
    transparent_crc(p_1166->g_143.y, "p_1166->g_143.y", print_hash_value);
    transparent_crc(p_1166->g_143.z, "p_1166->g_143.z", print_hash_value);
    transparent_crc(p_1166->g_143.w, "p_1166->g_143.w", print_hash_value);
    transparent_crc(p_1166->g_164, "p_1166->g_164", print_hash_value);
    transparent_crc(p_1166->g_165.f0, "p_1166->g_165.f0", print_hash_value);
    transparent_crc(p_1166->g_165.f1, "p_1166->g_165.f1", print_hash_value);
    transparent_crc(p_1166->g_165.f2, "p_1166->g_165.f2", print_hash_value);
    transparent_crc(p_1166->g_165.f3, "p_1166->g_165.f3", print_hash_value);
    transparent_crc(p_1166->g_165.f4, "p_1166->g_165.f4", print_hash_value);
    transparent_crc(p_1166->g_165.f5, "p_1166->g_165.f5", print_hash_value);
    transparent_crc(p_1166->g_173.f0, "p_1166->g_173.f0", print_hash_value);
    transparent_crc(p_1166->g_198.s0, "p_1166->g_198.s0", print_hash_value);
    transparent_crc(p_1166->g_198.s1, "p_1166->g_198.s1", print_hash_value);
    transparent_crc(p_1166->g_198.s2, "p_1166->g_198.s2", print_hash_value);
    transparent_crc(p_1166->g_198.s3, "p_1166->g_198.s3", print_hash_value);
    transparent_crc(p_1166->g_198.s4, "p_1166->g_198.s4", print_hash_value);
    transparent_crc(p_1166->g_198.s5, "p_1166->g_198.s5", print_hash_value);
    transparent_crc(p_1166->g_198.s6, "p_1166->g_198.s6", print_hash_value);
    transparent_crc(p_1166->g_198.s7, "p_1166->g_198.s7", print_hash_value);
    transparent_crc(p_1166->g_198.s8, "p_1166->g_198.s8", print_hash_value);
    transparent_crc(p_1166->g_198.s9, "p_1166->g_198.s9", print_hash_value);
    transparent_crc(p_1166->g_198.sa, "p_1166->g_198.sa", print_hash_value);
    transparent_crc(p_1166->g_198.sb, "p_1166->g_198.sb", print_hash_value);
    transparent_crc(p_1166->g_198.sc, "p_1166->g_198.sc", print_hash_value);
    transparent_crc(p_1166->g_198.sd, "p_1166->g_198.sd", print_hash_value);
    transparent_crc(p_1166->g_198.se, "p_1166->g_198.se", print_hash_value);
    transparent_crc(p_1166->g_198.sf, "p_1166->g_198.sf", print_hash_value);
    transparent_crc(p_1166->g_219.x, "p_1166->g_219.x", print_hash_value);
    transparent_crc(p_1166->g_219.y, "p_1166->g_219.y", print_hash_value);
    transparent_crc(p_1166->g_219.z, "p_1166->g_219.z", print_hash_value);
    transparent_crc(p_1166->g_219.w, "p_1166->g_219.w", print_hash_value);
    transparent_crc(p_1166->g_222.s0, "p_1166->g_222.s0", print_hash_value);
    transparent_crc(p_1166->g_222.s1, "p_1166->g_222.s1", print_hash_value);
    transparent_crc(p_1166->g_222.s2, "p_1166->g_222.s2", print_hash_value);
    transparent_crc(p_1166->g_222.s3, "p_1166->g_222.s3", print_hash_value);
    transparent_crc(p_1166->g_222.s4, "p_1166->g_222.s4", print_hash_value);
    transparent_crc(p_1166->g_222.s5, "p_1166->g_222.s5", print_hash_value);
    transparent_crc(p_1166->g_222.s6, "p_1166->g_222.s6", print_hash_value);
    transparent_crc(p_1166->g_222.s7, "p_1166->g_222.s7", print_hash_value);
    transparent_crc(p_1166->g_222.s8, "p_1166->g_222.s8", print_hash_value);
    transparent_crc(p_1166->g_222.s9, "p_1166->g_222.s9", print_hash_value);
    transparent_crc(p_1166->g_222.sa, "p_1166->g_222.sa", print_hash_value);
    transparent_crc(p_1166->g_222.sb, "p_1166->g_222.sb", print_hash_value);
    transparent_crc(p_1166->g_222.sc, "p_1166->g_222.sc", print_hash_value);
    transparent_crc(p_1166->g_222.sd, "p_1166->g_222.sd", print_hash_value);
    transparent_crc(p_1166->g_222.se, "p_1166->g_222.se", print_hash_value);
    transparent_crc(p_1166->g_222.sf, "p_1166->g_222.sf", print_hash_value);
    transparent_crc(p_1166->g_239.x, "p_1166->g_239.x", print_hash_value);
    transparent_crc(p_1166->g_239.y, "p_1166->g_239.y", print_hash_value);
    transparent_crc(p_1166->g_239.z, "p_1166->g_239.z", print_hash_value);
    transparent_crc(p_1166->g_239.w, "p_1166->g_239.w", print_hash_value);
    transparent_crc(p_1166->g_246.s0, "p_1166->g_246.s0", print_hash_value);
    transparent_crc(p_1166->g_246.s1, "p_1166->g_246.s1", print_hash_value);
    transparent_crc(p_1166->g_246.s2, "p_1166->g_246.s2", print_hash_value);
    transparent_crc(p_1166->g_246.s3, "p_1166->g_246.s3", print_hash_value);
    transparent_crc(p_1166->g_246.s4, "p_1166->g_246.s4", print_hash_value);
    transparent_crc(p_1166->g_246.s5, "p_1166->g_246.s5", print_hash_value);
    transparent_crc(p_1166->g_246.s6, "p_1166->g_246.s6", print_hash_value);
    transparent_crc(p_1166->g_246.s7, "p_1166->g_246.s7", print_hash_value);
    transparent_crc(p_1166->g_246.s8, "p_1166->g_246.s8", print_hash_value);
    transparent_crc(p_1166->g_246.s9, "p_1166->g_246.s9", print_hash_value);
    transparent_crc(p_1166->g_246.sa, "p_1166->g_246.sa", print_hash_value);
    transparent_crc(p_1166->g_246.sb, "p_1166->g_246.sb", print_hash_value);
    transparent_crc(p_1166->g_246.sc, "p_1166->g_246.sc", print_hash_value);
    transparent_crc(p_1166->g_246.sd, "p_1166->g_246.sd", print_hash_value);
    transparent_crc(p_1166->g_246.se, "p_1166->g_246.se", print_hash_value);
    transparent_crc(p_1166->g_246.sf, "p_1166->g_246.sf", print_hash_value);
    transparent_crc(p_1166->g_248.x, "p_1166->g_248.x", print_hash_value);
    transparent_crc(p_1166->g_248.y, "p_1166->g_248.y", print_hash_value);
    transparent_crc(p_1166->g_258.f0, "p_1166->g_258.f0", print_hash_value);
    transparent_crc(p_1166->g_258.f1, "p_1166->g_258.f1", print_hash_value);
    transparent_crc(p_1166->g_258.f2, "p_1166->g_258.f2", print_hash_value);
    transparent_crc(p_1166->g_258.f3, "p_1166->g_258.f3", print_hash_value);
    transparent_crc(p_1166->g_258.f4, "p_1166->g_258.f4", print_hash_value);
    transparent_crc(p_1166->g_258.f5, "p_1166->g_258.f5", print_hash_value);
    transparent_crc(p_1166->g_271.f0, "p_1166->g_271.f0", print_hash_value);
    transparent_crc(p_1166->g_271.f1, "p_1166->g_271.f1", print_hash_value);
    transparent_crc(p_1166->g_271.f2, "p_1166->g_271.f2", print_hash_value);
    transparent_crc(p_1166->g_271.f3, "p_1166->g_271.f3", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1166->g_287[i].f0, "p_1166->g_287[i].f0", print_hash_value);

    }
    transparent_crc(p_1166->g_295.f0, "p_1166->g_295.f0", print_hash_value);
    transparent_crc(p_1166->g_295.f1, "p_1166->g_295.f1", print_hash_value);
    transparent_crc(p_1166->g_295.f2, "p_1166->g_295.f2", print_hash_value);
    transparent_crc(p_1166->g_295.f3, "p_1166->g_295.f3", print_hash_value);
    transparent_crc(p_1166->g_295.f4, "p_1166->g_295.f4", print_hash_value);
    transparent_crc(p_1166->g_295.f5, "p_1166->g_295.f5", print_hash_value);
    transparent_crc(p_1166->g_313, "p_1166->g_313", print_hash_value);
    transparent_crc(p_1166->g_336.f0, "p_1166->g_336.f0", print_hash_value);
    transparent_crc(p_1166->g_372.f0, "p_1166->g_372.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1166->g_376[i][j].f0, "p_1166->g_376[i][j].f0", print_hash_value);
            transparent_crc(p_1166->g_376[i][j].f1, "p_1166->g_376[i][j].f1", print_hash_value);
            transparent_crc(p_1166->g_376[i][j].f2, "p_1166->g_376[i][j].f2", print_hash_value);
            transparent_crc(p_1166->g_376[i][j].f3, "p_1166->g_376[i][j].f3", print_hash_value);
            transparent_crc(p_1166->g_376[i][j].f4, "p_1166->g_376[i][j].f4", print_hash_value);
            transparent_crc(p_1166->g_376[i][j].f5, "p_1166->g_376[i][j].f5", print_hash_value);

        }
    }
    transparent_crc(p_1166->g_384.f0, "p_1166->g_384.f0", print_hash_value);
    transparent_crc(p_1166->g_384.f1, "p_1166->g_384.f1", print_hash_value);
    transparent_crc(p_1166->g_384.f2, "p_1166->g_384.f2", print_hash_value);
    transparent_crc(p_1166->g_384.f3, "p_1166->g_384.f3", print_hash_value);
    transparent_crc(p_1166->g_401.s0, "p_1166->g_401.s0", print_hash_value);
    transparent_crc(p_1166->g_401.s1, "p_1166->g_401.s1", print_hash_value);
    transparent_crc(p_1166->g_401.s2, "p_1166->g_401.s2", print_hash_value);
    transparent_crc(p_1166->g_401.s3, "p_1166->g_401.s3", print_hash_value);
    transparent_crc(p_1166->g_401.s4, "p_1166->g_401.s4", print_hash_value);
    transparent_crc(p_1166->g_401.s5, "p_1166->g_401.s5", print_hash_value);
    transparent_crc(p_1166->g_401.s6, "p_1166->g_401.s6", print_hash_value);
    transparent_crc(p_1166->g_401.s7, "p_1166->g_401.s7", print_hash_value);
    transparent_crc(p_1166->g_401.s8, "p_1166->g_401.s8", print_hash_value);
    transparent_crc(p_1166->g_401.s9, "p_1166->g_401.s9", print_hash_value);
    transparent_crc(p_1166->g_401.sa, "p_1166->g_401.sa", print_hash_value);
    transparent_crc(p_1166->g_401.sb, "p_1166->g_401.sb", print_hash_value);
    transparent_crc(p_1166->g_401.sc, "p_1166->g_401.sc", print_hash_value);
    transparent_crc(p_1166->g_401.sd, "p_1166->g_401.sd", print_hash_value);
    transparent_crc(p_1166->g_401.se, "p_1166->g_401.se", print_hash_value);
    transparent_crc(p_1166->g_401.sf, "p_1166->g_401.sf", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1166->g_436[i].f0, "p_1166->g_436[i].f0", print_hash_value);
        transparent_crc(p_1166->g_436[i].f1, "p_1166->g_436[i].f1", print_hash_value);
        transparent_crc(p_1166->g_436[i].f2, "p_1166->g_436[i].f2", print_hash_value);
        transparent_crc(p_1166->g_436[i].f3, "p_1166->g_436[i].f3", print_hash_value);
        transparent_crc(p_1166->g_436[i].f4, "p_1166->g_436[i].f4", print_hash_value);
        transparent_crc(p_1166->g_436[i].f5, "p_1166->g_436[i].f5", print_hash_value);

    }
    transparent_crc(p_1166->g_447, "p_1166->g_447", print_hash_value);
    transparent_crc(p_1166->g_452.s0, "p_1166->g_452.s0", print_hash_value);
    transparent_crc(p_1166->g_452.s1, "p_1166->g_452.s1", print_hash_value);
    transparent_crc(p_1166->g_452.s2, "p_1166->g_452.s2", print_hash_value);
    transparent_crc(p_1166->g_452.s3, "p_1166->g_452.s3", print_hash_value);
    transparent_crc(p_1166->g_452.s4, "p_1166->g_452.s4", print_hash_value);
    transparent_crc(p_1166->g_452.s5, "p_1166->g_452.s5", print_hash_value);
    transparent_crc(p_1166->g_452.s6, "p_1166->g_452.s6", print_hash_value);
    transparent_crc(p_1166->g_452.s7, "p_1166->g_452.s7", print_hash_value);
    transparent_crc(p_1166->g_452.s8, "p_1166->g_452.s8", print_hash_value);
    transparent_crc(p_1166->g_452.s9, "p_1166->g_452.s9", print_hash_value);
    transparent_crc(p_1166->g_452.sa, "p_1166->g_452.sa", print_hash_value);
    transparent_crc(p_1166->g_452.sb, "p_1166->g_452.sb", print_hash_value);
    transparent_crc(p_1166->g_452.sc, "p_1166->g_452.sc", print_hash_value);
    transparent_crc(p_1166->g_452.sd, "p_1166->g_452.sd", print_hash_value);
    transparent_crc(p_1166->g_452.se, "p_1166->g_452.se", print_hash_value);
    transparent_crc(p_1166->g_452.sf, "p_1166->g_452.sf", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1166->g_457[i][j][k], "p_1166->g_457[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1166->g_467.f0, "p_1166->g_467.f0", print_hash_value);
    transparent_crc(p_1166->g_467.f1, "p_1166->g_467.f1", print_hash_value);
    transparent_crc(p_1166->g_467.f2, "p_1166->g_467.f2", print_hash_value);
    transparent_crc(p_1166->g_467.f3, "p_1166->g_467.f3", print_hash_value);
    transparent_crc(p_1166->g_467.f4, "p_1166->g_467.f4", print_hash_value);
    transparent_crc(p_1166->g_467.f5, "p_1166->g_467.f5", print_hash_value);
    transparent_crc(p_1166->g_479.x, "p_1166->g_479.x", print_hash_value);
    transparent_crc(p_1166->g_479.y, "p_1166->g_479.y", print_hash_value);
    transparent_crc(p_1166->g_485, "p_1166->g_485", print_hash_value);
    transparent_crc(p_1166->g_497, "p_1166->g_497", print_hash_value);
    transparent_crc(p_1166->g_498.f0, "p_1166->g_498.f0", print_hash_value);
    transparent_crc(p_1166->g_498.f1, "p_1166->g_498.f1", print_hash_value);
    transparent_crc(p_1166->g_498.f2, "p_1166->g_498.f2", print_hash_value);
    transparent_crc(p_1166->g_498.f3, "p_1166->g_498.f3", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1166->g_499[i].f0, "p_1166->g_499[i].f0", print_hash_value);
        transparent_crc(p_1166->g_499[i].f1, "p_1166->g_499[i].f1", print_hash_value);
        transparent_crc(p_1166->g_499[i].f2, "p_1166->g_499[i].f2", print_hash_value);
        transparent_crc(p_1166->g_499[i].f3, "p_1166->g_499[i].f3", print_hash_value);
        transparent_crc(p_1166->g_499[i].f4, "p_1166->g_499[i].f4", print_hash_value);
        transparent_crc(p_1166->g_499[i].f5, "p_1166->g_499[i].f5", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1166->g_502[i][j][k].f0, "p_1166->g_502[i][j][k].f0", print_hash_value);
                transparent_crc(p_1166->g_502[i][j][k].f1, "p_1166->g_502[i][j][k].f1", print_hash_value);
                transparent_crc(p_1166->g_502[i][j][k].f2, "p_1166->g_502[i][j][k].f2", print_hash_value);
                transparent_crc(p_1166->g_502[i][j][k].f3, "p_1166->g_502[i][j][k].f3", print_hash_value);

            }
        }
    }
    transparent_crc(p_1166->g_515.x, "p_1166->g_515.x", print_hash_value);
    transparent_crc(p_1166->g_515.y, "p_1166->g_515.y", print_hash_value);
    transparent_crc(p_1166->g_568, "p_1166->g_568", print_hash_value);
    transparent_crc(p_1166->g_572.s0, "p_1166->g_572.s0", print_hash_value);
    transparent_crc(p_1166->g_572.s1, "p_1166->g_572.s1", print_hash_value);
    transparent_crc(p_1166->g_572.s2, "p_1166->g_572.s2", print_hash_value);
    transparent_crc(p_1166->g_572.s3, "p_1166->g_572.s3", print_hash_value);
    transparent_crc(p_1166->g_572.s4, "p_1166->g_572.s4", print_hash_value);
    transparent_crc(p_1166->g_572.s5, "p_1166->g_572.s5", print_hash_value);
    transparent_crc(p_1166->g_572.s6, "p_1166->g_572.s6", print_hash_value);
    transparent_crc(p_1166->g_572.s7, "p_1166->g_572.s7", print_hash_value);
    transparent_crc(p_1166->g_572.s8, "p_1166->g_572.s8", print_hash_value);
    transparent_crc(p_1166->g_572.s9, "p_1166->g_572.s9", print_hash_value);
    transparent_crc(p_1166->g_572.sa, "p_1166->g_572.sa", print_hash_value);
    transparent_crc(p_1166->g_572.sb, "p_1166->g_572.sb", print_hash_value);
    transparent_crc(p_1166->g_572.sc, "p_1166->g_572.sc", print_hash_value);
    transparent_crc(p_1166->g_572.sd, "p_1166->g_572.sd", print_hash_value);
    transparent_crc(p_1166->g_572.se, "p_1166->g_572.se", print_hash_value);
    transparent_crc(p_1166->g_572.sf, "p_1166->g_572.sf", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1166->g_588[i].f0, "p_1166->g_588[i].f0", print_hash_value);
        transparent_crc(p_1166->g_588[i].f1, "p_1166->g_588[i].f1", print_hash_value);
        transparent_crc(p_1166->g_588[i].f2, "p_1166->g_588[i].f2", print_hash_value);
        transparent_crc(p_1166->g_588[i].f3, "p_1166->g_588[i].f3", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1166->g_590[i].f0, "p_1166->g_590[i].f0", print_hash_value);
        transparent_crc(p_1166->g_590[i].f1, "p_1166->g_590[i].f1", print_hash_value);
        transparent_crc(p_1166->g_590[i].f2, "p_1166->g_590[i].f2", print_hash_value);
        transparent_crc(p_1166->g_590[i].f3, "p_1166->g_590[i].f3", print_hash_value);

    }
    transparent_crc(p_1166->g_619.f0, "p_1166->g_619.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1166->g_632[i][j][k].f0, "p_1166->g_632[i][j][k].f0", print_hash_value);
                transparent_crc(p_1166->g_632[i][j][k].f1, "p_1166->g_632[i][j][k].f1", print_hash_value);
                transparent_crc(p_1166->g_632[i][j][k].f2, "p_1166->g_632[i][j][k].f2", print_hash_value);
                transparent_crc(p_1166->g_632[i][j][k].f3, "p_1166->g_632[i][j][k].f3", print_hash_value);

            }
        }
    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1166->g_633[i][j].f0, "p_1166->g_633[i][j].f0", print_hash_value);
            transparent_crc(p_1166->g_633[i][j].f1, "p_1166->g_633[i][j].f1", print_hash_value);
            transparent_crc(p_1166->g_633[i][j].f2, "p_1166->g_633[i][j].f2", print_hash_value);
            transparent_crc(p_1166->g_633[i][j].f3, "p_1166->g_633[i][j].f3", print_hash_value);

        }
    }
    transparent_crc(p_1166->g_699.s0, "p_1166->g_699.s0", print_hash_value);
    transparent_crc(p_1166->g_699.s1, "p_1166->g_699.s1", print_hash_value);
    transparent_crc(p_1166->g_699.s2, "p_1166->g_699.s2", print_hash_value);
    transparent_crc(p_1166->g_699.s3, "p_1166->g_699.s3", print_hash_value);
    transparent_crc(p_1166->g_699.s4, "p_1166->g_699.s4", print_hash_value);
    transparent_crc(p_1166->g_699.s5, "p_1166->g_699.s5", print_hash_value);
    transparent_crc(p_1166->g_699.s6, "p_1166->g_699.s6", print_hash_value);
    transparent_crc(p_1166->g_699.s7, "p_1166->g_699.s7", print_hash_value);
    transparent_crc(p_1166->g_699.s8, "p_1166->g_699.s8", print_hash_value);
    transparent_crc(p_1166->g_699.s9, "p_1166->g_699.s9", print_hash_value);
    transparent_crc(p_1166->g_699.sa, "p_1166->g_699.sa", print_hash_value);
    transparent_crc(p_1166->g_699.sb, "p_1166->g_699.sb", print_hash_value);
    transparent_crc(p_1166->g_699.sc, "p_1166->g_699.sc", print_hash_value);
    transparent_crc(p_1166->g_699.sd, "p_1166->g_699.sd", print_hash_value);
    transparent_crc(p_1166->g_699.se, "p_1166->g_699.se", print_hash_value);
    transparent_crc(p_1166->g_699.sf, "p_1166->g_699.sf", print_hash_value);
    transparent_crc(p_1166->g_742.x, "p_1166->g_742.x", print_hash_value);
    transparent_crc(p_1166->g_742.y, "p_1166->g_742.y", print_hash_value);
    transparent_crc(p_1166->g_742.z, "p_1166->g_742.z", print_hash_value);
    transparent_crc(p_1166->g_742.w, "p_1166->g_742.w", print_hash_value);
    transparent_crc(p_1166->g_743.s0, "p_1166->g_743.s0", print_hash_value);
    transparent_crc(p_1166->g_743.s1, "p_1166->g_743.s1", print_hash_value);
    transparent_crc(p_1166->g_743.s2, "p_1166->g_743.s2", print_hash_value);
    transparent_crc(p_1166->g_743.s3, "p_1166->g_743.s3", print_hash_value);
    transparent_crc(p_1166->g_743.s4, "p_1166->g_743.s4", print_hash_value);
    transparent_crc(p_1166->g_743.s5, "p_1166->g_743.s5", print_hash_value);
    transparent_crc(p_1166->g_743.s6, "p_1166->g_743.s6", print_hash_value);
    transparent_crc(p_1166->g_743.s7, "p_1166->g_743.s7", print_hash_value);
    transparent_crc(p_1166->g_745.s0, "p_1166->g_745.s0", print_hash_value);
    transparent_crc(p_1166->g_745.s1, "p_1166->g_745.s1", print_hash_value);
    transparent_crc(p_1166->g_745.s2, "p_1166->g_745.s2", print_hash_value);
    transparent_crc(p_1166->g_745.s3, "p_1166->g_745.s3", print_hash_value);
    transparent_crc(p_1166->g_745.s4, "p_1166->g_745.s4", print_hash_value);
    transparent_crc(p_1166->g_745.s5, "p_1166->g_745.s5", print_hash_value);
    transparent_crc(p_1166->g_745.s6, "p_1166->g_745.s6", print_hash_value);
    transparent_crc(p_1166->g_745.s7, "p_1166->g_745.s7", print_hash_value);
    transparent_crc(p_1166->g_767.x, "p_1166->g_767.x", print_hash_value);
    transparent_crc(p_1166->g_767.y, "p_1166->g_767.y", print_hash_value);
    transparent_crc(p_1166->g_785.s0, "p_1166->g_785.s0", print_hash_value);
    transparent_crc(p_1166->g_785.s1, "p_1166->g_785.s1", print_hash_value);
    transparent_crc(p_1166->g_785.s2, "p_1166->g_785.s2", print_hash_value);
    transparent_crc(p_1166->g_785.s3, "p_1166->g_785.s3", print_hash_value);
    transparent_crc(p_1166->g_785.s4, "p_1166->g_785.s4", print_hash_value);
    transparent_crc(p_1166->g_785.s5, "p_1166->g_785.s5", print_hash_value);
    transparent_crc(p_1166->g_785.s6, "p_1166->g_785.s6", print_hash_value);
    transparent_crc(p_1166->g_785.s7, "p_1166->g_785.s7", print_hash_value);
    transparent_crc(p_1166->g_803.x, "p_1166->g_803.x", print_hash_value);
    transparent_crc(p_1166->g_803.y, "p_1166->g_803.y", print_hash_value);
    transparent_crc(p_1166->g_805.x, "p_1166->g_805.x", print_hash_value);
    transparent_crc(p_1166->g_805.y, "p_1166->g_805.y", print_hash_value);
    transparent_crc(p_1166->g_805.z, "p_1166->g_805.z", print_hash_value);
    transparent_crc(p_1166->g_805.w, "p_1166->g_805.w", print_hash_value);
    transparent_crc(p_1166->g_818.f0, "p_1166->g_818.f0", print_hash_value);
    transparent_crc(p_1166->g_818.f1, "p_1166->g_818.f1", print_hash_value);
    transparent_crc(p_1166->g_818.f2, "p_1166->g_818.f2", print_hash_value);
    transparent_crc(p_1166->g_818.f3, "p_1166->g_818.f3", print_hash_value);
    transparent_crc(p_1166->g_818.f4, "p_1166->g_818.f4", print_hash_value);
    transparent_crc(p_1166->g_818.f5, "p_1166->g_818.f5", print_hash_value);
    transparent_crc(p_1166->g_821.f0, "p_1166->g_821.f0", print_hash_value);
    transparent_crc(p_1166->g_822.s0, "p_1166->g_822.s0", print_hash_value);
    transparent_crc(p_1166->g_822.s1, "p_1166->g_822.s1", print_hash_value);
    transparent_crc(p_1166->g_822.s2, "p_1166->g_822.s2", print_hash_value);
    transparent_crc(p_1166->g_822.s3, "p_1166->g_822.s3", print_hash_value);
    transparent_crc(p_1166->g_822.s4, "p_1166->g_822.s4", print_hash_value);
    transparent_crc(p_1166->g_822.s5, "p_1166->g_822.s5", print_hash_value);
    transparent_crc(p_1166->g_822.s6, "p_1166->g_822.s6", print_hash_value);
    transparent_crc(p_1166->g_822.s7, "p_1166->g_822.s7", print_hash_value);
    transparent_crc(p_1166->g_822.s8, "p_1166->g_822.s8", print_hash_value);
    transparent_crc(p_1166->g_822.s9, "p_1166->g_822.s9", print_hash_value);
    transparent_crc(p_1166->g_822.sa, "p_1166->g_822.sa", print_hash_value);
    transparent_crc(p_1166->g_822.sb, "p_1166->g_822.sb", print_hash_value);
    transparent_crc(p_1166->g_822.sc, "p_1166->g_822.sc", print_hash_value);
    transparent_crc(p_1166->g_822.sd, "p_1166->g_822.sd", print_hash_value);
    transparent_crc(p_1166->g_822.se, "p_1166->g_822.se", print_hash_value);
    transparent_crc(p_1166->g_822.sf, "p_1166->g_822.sf", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1166->g_826[i].f0, "p_1166->g_826[i].f0", print_hash_value);
        transparent_crc(p_1166->g_826[i].f1, "p_1166->g_826[i].f1", print_hash_value);
        transparent_crc(p_1166->g_826[i].f2, "p_1166->g_826[i].f2", print_hash_value);
        transparent_crc(p_1166->g_826[i].f3, "p_1166->g_826[i].f3", print_hash_value);

    }
    transparent_crc(p_1166->g_828.f0, "p_1166->g_828.f0", print_hash_value);
    transparent_crc(p_1166->g_828.f1, "p_1166->g_828.f1", print_hash_value);
    transparent_crc(p_1166->g_828.f2, "p_1166->g_828.f2", print_hash_value);
    transparent_crc(p_1166->g_828.f3, "p_1166->g_828.f3", print_hash_value);
    transparent_crc(p_1166->g_852.f0, "p_1166->g_852.f0", print_hash_value);
    transparent_crc(p_1166->g_855.x, "p_1166->g_855.x", print_hash_value);
    transparent_crc(p_1166->g_855.y, "p_1166->g_855.y", print_hash_value);
    transparent_crc(p_1166->g_881.f0, "p_1166->g_881.f0", print_hash_value);
    transparent_crc(p_1166->g_892.x, "p_1166->g_892.x", print_hash_value);
    transparent_crc(p_1166->g_892.y, "p_1166->g_892.y", print_hash_value);
    transparent_crc(p_1166->g_894.s0, "p_1166->g_894.s0", print_hash_value);
    transparent_crc(p_1166->g_894.s1, "p_1166->g_894.s1", print_hash_value);
    transparent_crc(p_1166->g_894.s2, "p_1166->g_894.s2", print_hash_value);
    transparent_crc(p_1166->g_894.s3, "p_1166->g_894.s3", print_hash_value);
    transparent_crc(p_1166->g_894.s4, "p_1166->g_894.s4", print_hash_value);
    transparent_crc(p_1166->g_894.s5, "p_1166->g_894.s5", print_hash_value);
    transparent_crc(p_1166->g_894.s6, "p_1166->g_894.s6", print_hash_value);
    transparent_crc(p_1166->g_894.s7, "p_1166->g_894.s7", print_hash_value);
    transparent_crc(p_1166->g_894.s8, "p_1166->g_894.s8", print_hash_value);
    transparent_crc(p_1166->g_894.s9, "p_1166->g_894.s9", print_hash_value);
    transparent_crc(p_1166->g_894.sa, "p_1166->g_894.sa", print_hash_value);
    transparent_crc(p_1166->g_894.sb, "p_1166->g_894.sb", print_hash_value);
    transparent_crc(p_1166->g_894.sc, "p_1166->g_894.sc", print_hash_value);
    transparent_crc(p_1166->g_894.sd, "p_1166->g_894.sd", print_hash_value);
    transparent_crc(p_1166->g_894.se, "p_1166->g_894.se", print_hash_value);
    transparent_crc(p_1166->g_894.sf, "p_1166->g_894.sf", print_hash_value);
    transparent_crc(p_1166->g_930.s0, "p_1166->g_930.s0", print_hash_value);
    transparent_crc(p_1166->g_930.s1, "p_1166->g_930.s1", print_hash_value);
    transparent_crc(p_1166->g_930.s2, "p_1166->g_930.s2", print_hash_value);
    transparent_crc(p_1166->g_930.s3, "p_1166->g_930.s3", print_hash_value);
    transparent_crc(p_1166->g_930.s4, "p_1166->g_930.s4", print_hash_value);
    transparent_crc(p_1166->g_930.s5, "p_1166->g_930.s5", print_hash_value);
    transparent_crc(p_1166->g_930.s6, "p_1166->g_930.s6", print_hash_value);
    transparent_crc(p_1166->g_930.s7, "p_1166->g_930.s7", print_hash_value);
    transparent_crc(p_1166->g_936.x, "p_1166->g_936.x", print_hash_value);
    transparent_crc(p_1166->g_936.y, "p_1166->g_936.y", print_hash_value);
    transparent_crc(p_1166->g_956.x, "p_1166->g_956.x", print_hash_value);
    transparent_crc(p_1166->g_956.y, "p_1166->g_956.y", print_hash_value);
    transparent_crc(p_1166->g_976.x, "p_1166->g_976.x", print_hash_value);
    transparent_crc(p_1166->g_976.y, "p_1166->g_976.y", print_hash_value);
    transparent_crc(p_1166->g_977.x, "p_1166->g_977.x", print_hash_value);
    transparent_crc(p_1166->g_977.y, "p_1166->g_977.y", print_hash_value);
    transparent_crc(p_1166->g_979.s0, "p_1166->g_979.s0", print_hash_value);
    transparent_crc(p_1166->g_979.s1, "p_1166->g_979.s1", print_hash_value);
    transparent_crc(p_1166->g_979.s2, "p_1166->g_979.s2", print_hash_value);
    transparent_crc(p_1166->g_979.s3, "p_1166->g_979.s3", print_hash_value);
    transparent_crc(p_1166->g_979.s4, "p_1166->g_979.s4", print_hash_value);
    transparent_crc(p_1166->g_979.s5, "p_1166->g_979.s5", print_hash_value);
    transparent_crc(p_1166->g_979.s6, "p_1166->g_979.s6", print_hash_value);
    transparent_crc(p_1166->g_979.s7, "p_1166->g_979.s7", print_hash_value);
    transparent_crc(p_1166->g_981.s0, "p_1166->g_981.s0", print_hash_value);
    transparent_crc(p_1166->g_981.s1, "p_1166->g_981.s1", print_hash_value);
    transparent_crc(p_1166->g_981.s2, "p_1166->g_981.s2", print_hash_value);
    transparent_crc(p_1166->g_981.s3, "p_1166->g_981.s3", print_hash_value);
    transparent_crc(p_1166->g_981.s4, "p_1166->g_981.s4", print_hash_value);
    transparent_crc(p_1166->g_981.s5, "p_1166->g_981.s5", print_hash_value);
    transparent_crc(p_1166->g_981.s6, "p_1166->g_981.s6", print_hash_value);
    transparent_crc(p_1166->g_981.s7, "p_1166->g_981.s7", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1166->g_986[i].f0, "p_1166->g_986[i].f0", print_hash_value);
        transparent_crc(p_1166->g_986[i].f1, "p_1166->g_986[i].f1", print_hash_value);
        transparent_crc(p_1166->g_986[i].f2, "p_1166->g_986[i].f2", print_hash_value);
        transparent_crc(p_1166->g_986[i].f3, "p_1166->g_986[i].f3", print_hash_value);
        transparent_crc(p_1166->g_986[i].f4, "p_1166->g_986[i].f4", print_hash_value);
        transparent_crc(p_1166->g_986[i].f5, "p_1166->g_986[i].f5", print_hash_value);

    }
    transparent_crc(p_1166->g_1017.x, "p_1166->g_1017.x", print_hash_value);
    transparent_crc(p_1166->g_1017.y, "p_1166->g_1017.y", print_hash_value);
    transparent_crc(p_1166->g_1017.z, "p_1166->g_1017.z", print_hash_value);
    transparent_crc(p_1166->g_1017.w, "p_1166->g_1017.w", print_hash_value);
    transparent_crc(p_1166->g_1033.x, "p_1166->g_1033.x", print_hash_value);
    transparent_crc(p_1166->g_1033.y, "p_1166->g_1033.y", print_hash_value);
    transparent_crc(p_1166->g_1053.x, "p_1166->g_1053.x", print_hash_value);
    transparent_crc(p_1166->g_1053.y, "p_1166->g_1053.y", print_hash_value);
    transparent_crc(p_1166->g_1053.z, "p_1166->g_1053.z", print_hash_value);
    transparent_crc(p_1166->g_1053.w, "p_1166->g_1053.w", print_hash_value);
    transparent_crc(p_1166->g_1062.x, "p_1166->g_1062.x", print_hash_value);
    transparent_crc(p_1166->g_1062.y, "p_1166->g_1062.y", print_hash_value);
    transparent_crc(p_1166->g_1062.z, "p_1166->g_1062.z", print_hash_value);
    transparent_crc(p_1166->g_1062.w, "p_1166->g_1062.w", print_hash_value);
    transparent_crc(p_1166->g_1067.x, "p_1166->g_1067.x", print_hash_value);
    transparent_crc(p_1166->g_1067.y, "p_1166->g_1067.y", print_hash_value);
    transparent_crc(p_1166->g_1067.z, "p_1166->g_1067.z", print_hash_value);
    transparent_crc(p_1166->g_1067.w, "p_1166->g_1067.w", print_hash_value);
    transparent_crc(p_1166->g_1084.s0, "p_1166->g_1084.s0", print_hash_value);
    transparent_crc(p_1166->g_1084.s1, "p_1166->g_1084.s1", print_hash_value);
    transparent_crc(p_1166->g_1084.s2, "p_1166->g_1084.s2", print_hash_value);
    transparent_crc(p_1166->g_1084.s3, "p_1166->g_1084.s3", print_hash_value);
    transparent_crc(p_1166->g_1084.s4, "p_1166->g_1084.s4", print_hash_value);
    transparent_crc(p_1166->g_1084.s5, "p_1166->g_1084.s5", print_hash_value);
    transparent_crc(p_1166->g_1084.s6, "p_1166->g_1084.s6", print_hash_value);
    transparent_crc(p_1166->g_1084.s7, "p_1166->g_1084.s7", print_hash_value);
    transparent_crc(p_1166->g_1105.x, "p_1166->g_1105.x", print_hash_value);
    transparent_crc(p_1166->g_1105.y, "p_1166->g_1105.y", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
