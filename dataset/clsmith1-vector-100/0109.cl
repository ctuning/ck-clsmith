// ---fake_divergence -g 71,100,1 -l 1,5,1
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


// Seed: 109

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    volatile VECTOR(uint16_t, 4) g_20;
    volatile VECTOR(uint16_t, 16) g_21;
    volatile VECTOR(uint16_t, 4) g_22;
    VECTOR(uint16_t, 8) g_24;
    volatile VECTOR(uint16_t, 16) g_25;
    volatile VECTOR(int16_t, 16) g_50;
    volatile int32_t g_56;
    uint64_t g_57;
    int64_t g_96;
    int32_t *g_97[7][6][4];
    int8_t g_115;
    int32_t g_119;
    int32_t * volatile g_118;
    int32_t * volatile g_129;
    int16_t g_147;
    int16_t g_151;
    int16_t *g_150;
    int32_t g_155[8][5];
    int32_t * volatile g_154;
    VECTOR(int8_t, 4) g_183;
    volatile VECTOR(int16_t, 8) g_184;
    uint8_t g_185;
    int16_t *g_199;
    volatile VECTOR(int16_t, 16) g_202;
    volatile VECTOR(uint64_t, 4) g_205;
    VECTOR(int16_t, 16) g_210;
    int32_t g_216;
    VECTOR(int64_t, 8) g_245;
    VECTOR(int64_t, 2) g_269;
    uint32_t g_273;
    VECTOR(int8_t, 2) g_289;
    VECTOR(int8_t, 2) g_291;
    volatile int32_t g_321;
    volatile int64_t * volatile g_353;
    uint16_t * volatile g_358;
    uint16_t * volatile * volatile g_357;
    int8_t *g_373;
    volatile int64_t g_421[4];
    volatile int64_t *g_420;
    volatile VECTOR(int16_t, 16) g_425;
    volatile VECTOR(int8_t, 8) g_458;
    VECTOR(uint64_t, 2) g_492;
    volatile VECTOR(uint64_t, 16) g_493;
    VECTOR(int64_t, 4) g_494;
    VECTOR(int8_t, 16) g_497;
    uint32_t g_551;
    int32_t ** volatile g_563;
    int32_t * volatile g_565;
    int32_t ** volatile g_574;
    volatile VECTOR(uint8_t, 16) g_614;
    VECTOR(int8_t, 2) g_616;
    VECTOR(int8_t, 4) g_618;
    volatile int64_t * volatile * volatile g_625;
    uint8_t g_651;
    uint64_t g_652;
    volatile VECTOR(uint8_t, 16) g_669;
    int32_t ** volatile g_678;
    uint32_t g_682;
    int32_t ** volatile g_690[7];
    int32_t ** volatile g_691;
    int32_t * volatile g_701[6][10];
    int32_t * volatile g_702[4][5][1];
    uint8_t *g_712[8][5];
    uint8_t **g_711[7][10];
    uint64_t *g_727;
    VECTOR(int8_t, 8) g_754;
    volatile VECTOR(int32_t, 16) g_756;
    volatile VECTOR(uint8_t, 2) g_765;
    volatile VECTOR(uint8_t, 4) g_770;
    int64_t *g_785;
    int64_t ** volatile g_784;
    int64_t ** volatile *g_783;
    volatile VECTOR(int32_t, 2) g_792;
    volatile VECTOR(int32_t, 4) g_793;
    VECTOR(int8_t, 8) g_804;
    volatile VECTOR(int8_t, 16) g_805;
    VECTOR(int8_t, 16) g_806;
    VECTOR(int8_t, 16) g_807;
    volatile VECTOR(int64_t, 2) g_822;
    int32_t g_841;
    VECTOR(uint32_t, 2) g_842;
    VECTOR(int8_t, 16) g_859;
    VECTOR(int8_t, 2) g_860;
    VECTOR(int64_t, 16) g_867;
    uint8_t g_912;
    uint32_t g_919[5];
    VECTOR(uint32_t, 16) g_920;
    int16_t g_922;
    volatile uint8_t g_964;
    volatile VECTOR(uint64_t, 8) g_976;
    volatile VECTOR(uint64_t, 2) g_979;
    int32_t g_1002;
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
uint16_t  func_1(struct S0 * p_1014);
uint16_t  func_8(uint64_t  p_9, uint32_t  p_10, uint64_t  p_11, int64_t  p_12, int32_t  p_13, struct S0 * p_1014);
uint8_t  func_33(uint32_t  p_34, int32_t  p_35, int8_t  p_36, struct S0 * p_1014);
uint8_t  func_39(uint8_t  p_40, uint64_t  p_41, uint32_t  p_42, struct S0 * p_1014);
uint8_t  func_43(int32_t  p_44, uint32_t  p_45, struct S0 * p_1014);
uint64_t  func_62(int32_t * p_63, uint64_t  p_64, int8_t  p_65, int32_t * p_66, struct S0 * p_1014);
int8_t  func_68(int32_t * p_69, int32_t * p_70, int32_t * p_71, int8_t  p_72, struct S0 * p_1014);
int32_t * func_73(int32_t * p_74, struct S0 * p_1014);
int32_t  func_80(int64_t  p_81, int32_t  p_82, int32_t ** p_83, int32_t * p_84, uint64_t  p_85, struct S0 * p_1014);
int8_t  func_86(int64_t  p_87, uint32_t  p_88, int32_t * p_89, uint64_t  p_90, int32_t ** p_91, struct S0 * p_1014);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1014->g_2 p_1014->g_20 p_1014->g_21 p_1014->g_22 p_1014->g_24 p_1014->g_25 p_1014->g_50 p_1014->g_57 p_1014->g_563 p_1014->g_97 p_1014->g_574 p_1014->g_185 p_1014->g_420 p_1014->g_421 p_1014->g_155 p_1014->g_151 p_1014->g_119 p_1014->g_614 p_1014->g_616 p_1014->g_618 p_1014->g_115 p_1014->g_494 p_1014->g_184 p_1014->g_625 p_1014->g_210 p_1014->g_199 p_1014->g_129 p_1014->g_691 p_1014->g_96 p_1014->g_373 p_1014->g_711 p_1014->g_651 p_1014->g_150 p_1014->g_652 p_1014->g_754 p_1014->g_756 p_1014->g_765 p_1014->g_770 p_1014->g_783 p_1014->g_118 p_1014->g_425 p_1014->g_565 p_1014->g_792 p_1014->g_793 p_1014->g_804 p_1014->g_805 p_1014->g_806 p_1014->g_807 p_1014->g_727 p_1014->g_822 p_1014->g_245 p_1014->g_669 p_1014->g_841 p_1014->g_842 p_1014->g_357 p_1014->g_358 p_1014->g_216 p_1014->g_912 p_1014->g_919 p_1014->g_497 p_1014->g_920 p_1014->g_922 p_1014->g_859 p_1014->g_964 p_1014->g_154 p_1014->g_976 p_1014->g_979
 * writes: p_1014->g_2 p_1014->g_57 p_1014->g_97 p_1014->g_185 p_1014->g_119 p_1014->g_494 p_1014->g_625 p_1014->g_151 p_1014->g_147 p_1014->g_682 p_1014->g_96 p_1014->g_115 p_1014->g_727 p_1014->g_155 p_1014->g_652 p_1014->g_841 p_1014->g_651
 */
uint16_t  func_1(struct S0 * p_1014)
{ /* block id: 4 */
    uint32_t l_18 = 3UL;
    VECTOR(uint16_t, 16) l_23 = (VECTOR(uint16_t, 16))(0x90C6L, (VECTOR(uint16_t, 4))(0x90C6L, (VECTOR(uint16_t, 2))(0x90C6L, 0x8821L), 0x8821L), 0x8821L, 0x90C6L, 0x8821L, (VECTOR(uint16_t, 2))(0x90C6L, 0x8821L), (VECTOR(uint16_t, 2))(0x90C6L, 0x8821L), 0x90C6L, 0x8821L, 0x90C6L, 0x8821L);
    uint16_t l_53 = 0xC202L;
    int32_t l_852 = 0L;
    VECTOR(int32_t, 2) l_874 = (VECTOR(int32_t, 2))((-1L), 0x1DA3C34AL);
    int32_t l_880 = (-9L);
    int32_t *l_889 = &p_1014->g_155[6][2];
    int8_t **l_951 = &p_1014->g_373;
    int32_t l_959 = 0x48C73D99L;
    VECTOR(uint64_t, 16) l_974 = (VECTOR(uint64_t, 16))(0xE08D0DFC5F803ECDL, (VECTOR(uint64_t, 4))(0xE08D0DFC5F803ECDL, (VECTOR(uint64_t, 2))(0xE08D0DFC5F803ECDL, 0UL), 0UL), 0UL, 0xE08D0DFC5F803ECDL, 0UL, (VECTOR(uint64_t, 2))(0xE08D0DFC5F803ECDL, 0UL), (VECTOR(uint64_t, 2))(0xE08D0DFC5F803ECDL, 0UL), 0xE08D0DFC5F803ECDL, 0UL, 0xE08D0DFC5F803ECDL, 0UL);
    int32_t *l_1001 = (void*)0;
    int32_t *l_1003 = &p_1014->g_155[1][1];
    int32_t *l_1004[10][9][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
    int32_t l_1005 = 1L;
    uint32_t l_1006 = 4294967295UL;
    int64_t l_1010 = 0x0261D13D2B627027L;
    uint32_t l_1011 = 1UL;
    int i, j, k;
lbl_967:
    for (p_1014->g_2 = (-2); (p_1014->g_2 != 9); p_1014->g_2 = safe_add_func_uint8_t_u_u(p_1014->g_2, 8))
    { /* block id: 7 */
        int32_t l_5 = 0x6942A1E9L;
        VECTOR(uint16_t, 2) l_19 = (VECTOR(uint16_t, 2))(0x2668L, 65535UL);
        VECTOR(uint8_t, 4) l_29 = (VECTOR(uint8_t, 4))(0xE5L, (VECTOR(uint8_t, 2))(0xE5L, 4UL), 4UL);
        int32_t ***l_849 = (void*)0;
        uint16_t l_883 = 0x7B2FL;
        uint16_t l_888[10] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
        uint64_t *l_938 = &p_1014->g_652;
        int8_t **l_950 = (void*)0;
        int64_t *l_962[1][1];
        int64_t **l_961 = &l_962[0][0];
        int64_t ***l_960 = &l_961;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_962[i][j] = (void*)0;
        }
        if (l_5)
        { /* block id: 8 */
            VECTOR(uint16_t, 16) l_26 = (VECTOR(uint16_t, 16))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 0xF5E1L), 0xF5E1L), 0xF5E1L, 65534UL, 0xF5E1L, (VECTOR(uint16_t, 2))(65534UL, 0xF5E1L), (VECTOR(uint16_t, 2))(65534UL, 0xF5E1L), 65534UL, 0xF5E1L, 65534UL, 0xF5E1L);
            uint8_t l_836 = 0xC2L;
            int32_t *l_840 = &p_1014->g_841;
            int i;
            (*l_840) ^= (safe_add_func_uint16_t_u_u((p_1014->g_2 , p_1014->g_2), func_8((safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 8))((-1L), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 16))((safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 16))((~((FAKE_DIVERGE(p_1014->global_1_offset, get_global_id(1), 10) , l_5) && 1L)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(0xC9CAL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(65535UL, 0x8003L)).yxxx)).x, 65535UL, 65533UL, ((VECTOR(uint16_t, 8))(p_1014->g_2, ((VECTOR(uint16_t, 2))(65526UL, 65529UL)), l_18, ((VECTOR(uint16_t, 2))(l_19.yx)), 0x3D1FL, 5UL)), 0x3CC9L, ((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 8))(p_1014->g_20.xyyzyxzy)).s07, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(0x9C9DL, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(p_1014->g_21.s9209a488d514faf1)))).s41)), ((VECTOR(uint16_t, 8))(p_1014->g_22.yywywwyw)), GROUP_DIVERGE(1, 1), 65532UL, ((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 2))(l_23.s69)).xxxyxxxyyyxyyxyy, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(p_1014->g_24.s24)).yxyy)).xywxyxxwzwzyyyzw, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(p_1014->g_25.se879096a9cbde6b7)).s86ae)).zzyzyyyxzyxywyyw))).s43, ((VECTOR(uint16_t, 16))(l_26.s75309757a8360e56)).s97))), 1UL)).s4a)).xxyx)).hi))))), 1UL)).sea)), (l_26.sd ^ (safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(l_29.yxzyxxzw)).s0, (safe_unary_minus_func_int64_t_s((safe_add_func_int64_t_s_s((func_33((safe_sub_func_int8_t_s_s((func_39(func_43(l_5, ((safe_lshift_func_uint16_t_u_u(((((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(p_1014->g_50.sd35e)))).w, (((safe_div_func_uint32_t_u_u(p_1014->g_24.s0, l_23.s5)) == p_1014->g_2) > p_1014->g_24.s1))) < l_23.s4) || GROUP_DIVERGE(0, 1)) & l_53), p_1014->g_24.s5)) ^ 0xBDL), p_1014), l_18, l_53, p_1014) , l_26.s0), 1UL)), p_1014->g_155[6][2], l_19.y, p_1014) | 6L), p_1014->g_245.s3))))))), 0xE3BEL, l_836, 0x3E9FL, p_1014->g_669.sf, 0xB099L, 1UL, ((VECTOR(uint16_t, 2))(65534UL)), 65535UL, 0xF982L, 7UL, 0UL)).s8, 7)), (*p_1014->g_150), (*p_1014->g_150), 0x68CBL, ((VECTOR(int16_t, 8))(0x7168L)), 0x085DL, 1L, 0x7E6BL, (-8L))).even, ((VECTOR(int16_t, 8))(0x51B6L))))))).s04, ((VECTOR(int16_t, 2))(0x08ABL)), ((VECTOR(int16_t, 2))(0x4D42L))))).yyyyyxxx)))).odd)).lo)), 0x0F21L, 0L)), 1L, 0x2B7CL, 0L)).s2, 5L)), p_1014->g_210.s7, l_18, l_29.z, p_1014->g_807.s2, p_1014)));
        }
        else
        { /* block id: 343 */
            int32_t **l_848 = &p_1014->g_97[3][4][2];
            int32_t ***l_847[8][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
            int64_t l_853 = 0L;
            int64_t l_915 = 0x7A3784135EB8E063L;
            uint8_t l_916[7][9][3] = {{{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL}},{{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL}},{{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL}},{{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL}},{{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL}},{{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL}},{{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL},{0UL,255UL,0xCBL}}};
            VECTOR(int32_t, 2) l_927 = (VECTOR(int32_t, 2))(9L, (-1L));
            uint8_t l_943 = 0x0DL;
            uint16_t *l_945 = (void*)0;
            uint16_t **l_944 = &l_945;
            int64_t l_946[10] = {0L,0x7DE5D0DE670E0AD2L,0L,0L,0x7DE5D0DE670E0AD2L,0L,0L,0x7DE5D0DE670E0AD2L,0L,0L};
            int64_t *l_947[7];
            int8_t ***l_952 = &l_951;
            int64_t ***l_963 = &l_961;
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_947[i] = &l_946[8];
            if ((((((((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 2))(p_1014->g_842.xy)).yyyxxxyy, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(0xFDA70A2BL, 1UL, 0xFF284763L, 0xA8349286L)).odd)).yxxyxyxy))).s5 && 0x2F56D665EAAA56FAL) > (-1L)) , 0xB13C9E3BL) > p_1014->g_807.s0) != (safe_rshift_func_int16_t_s_u((((*p_1014->g_691) == (((safe_lshift_func_int16_t_s_u((l_847[6][0] != l_849), p_1014->g_804.s1)) < ((safe_mod_func_uint16_t_u_u(l_852, (*p_1014->g_150))) > l_853)) , &p_1014->g_155[6][2])) != (-2L)), FAKE_DIVERGE(p_1014->global_2_offset, get_global_id(2), 10)))))
            { /* block id: 344 */
                VECTOR(int8_t, 8) l_858 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
                uint32_t l_879 = 4294967295UL;
                int32_t *l_887 = &p_1014->g_2;
                VECTOR(int16_t, 2) l_906 = (VECTOR(int16_t, 2))(1L, 3L);
                int64_t ****l_907 = (void*)0;
                uint16_t *l_921 = &l_888[6];
                uint64_t l_923 = 8UL;
                int32_t l_924 = 0x3E2D6B9EL;
                int i;
                for (l_853 = (-13); (l_853 <= 7); l_853++)
                { /* block id: 347 */
                    uint32_t l_863 = 1UL;
                    int32_t l_864 = 0x67B98D81L;
                    int32_t l_881 = 0x267F1103L;
                    VECTOR(int32_t, 4) l_885 = (VECTOR(int32_t, 4))(0x31B5DA52L, (VECTOR(int32_t, 2))(0x31B5DA52L, 0L), 0L);
                    int16_t *l_905 = &p_1014->g_147;
                    int i;
                    l_881 &= ((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(l_858.s6274)), ((VECTOR(int8_t, 2))(p_1014->g_859.s85)).xxyy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(p_1014->g_860.yx)), 0x54L, 0x25L, 0x36L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))((0UL ^ ((*p_1014->g_420) | ((((safe_div_func_uint8_t_u_u(((l_864 = l_863) || l_864), (safe_rshift_func_uint8_t_u_u(((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(abs(((VECTOR(int64_t, 8))(p_1014->g_867.s6f8510e1)).s77))), 18446744073709551615UL, 18446744073709551615UL)).z , (+(*p_1014->g_727))) == (safe_sub_func_int64_t_s_s((safe_mul_func_int16_t_s_s(((*p_1014->g_199) |= (safe_mul_func_uint8_t_u_u(((((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_874.yyyxxyyx)).lo)), 7L, (l_879 = (safe_rshift_func_uint16_t_u_u((0x18B78D9EL > (safe_rshift_func_int8_t_s_u((((l_858.s7 ^ ((void*)0 == &p_1014->g_727)) || 5L) ^ 0x3531A188971BB441L), 0))), 13))), 0x06514BEEL, 6L)).lo)).odd)), (-2L), ((VECTOR(int32_t, 4))(0x692D9D14L)), 1L)))).s7117065042101216)).s8a, ((VECTOR(int32_t, 2))(0x26867ED2L))))).odd , 18446744073709551609UL) ^ l_863), 1UL))), l_858.s1)), (-4L)))), l_874.y)))) ^ (-1L)) , l_880) , l_858.s0))), 0x06L, 0x05L, (*p_1014->g_373), 0L, 0L, 0x6EL, (-10L), 0x26L, ((VECTOR(int8_t, 4))(8L)), (*p_1014->g_373), 0x57L, 0x69L)).sb9a9)).odd)), 1L)).even))).zwwwywxx, ((VECTOR(int8_t, 8))(0x26L))))).s5, 0xB4L)) < 4294967295UL);
                    if ((((((safe_unary_minus_func_uint8_t_u(l_883)) == ((*p_1014->g_373) >= ((*p_1014->g_357) == &l_883))) & ((*p_1014->g_727) = ((VECTOR(uint64_t, 2))(1UL, 0x4D9D46F976BDA43DL)).hi)) , 0x5062L) ^ (((*p_1014->g_373) ^ l_864) > (-1L))))
                    { /* block id: 353 */
                        int32_t *l_884 = &p_1014->g_841;
                        int32_t l_886 = 2L;
                        l_884 = (void*)0;
                        l_886 = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_885.wx)).xyyx)).y;
                        (*l_848) = l_887;
                        if (l_888[5])
                            break;
                    }
                    else
                    { /* block id: 358 */
                        (*l_848) = (l_889 = (void*)0);
                        if (p_1014->g_96)
                            goto lbl_1009;
                        if (l_881)
                            break;
                    }
                    (*p_1014->g_129) = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 2))(0x479F0A05L, 0x1738925EL)).xxxyxxyy, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(8L, ((((safe_sub_func_int8_t_s_s((safe_mul_func_int8_t_s_s((l_885.y <= (18446744073709551607UL >= l_29.y)), (((safe_lshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s(l_880, (safe_sub_func_int16_t_s_s(((*p_1014->g_199) = (safe_unary_minus_func_int64_t_s(l_863))), p_1014->g_22.y)))), 3)), 3)) && FAKE_DIVERGE(p_1014->local_0_offset, get_local_id(0), 10)) == (((p_1014->g_216 > (((VECTOR(int16_t, 16))((-10L), 0x1F0FL, ((*l_905) = l_881), 0L, ((VECTOR(int16_t, 2))(l_906.xy)), 1L, l_863, ((VECTOR(int16_t, 2))(0x7EB2L)), ((VECTOR(int16_t, 4))(0x3CE7L)), 0x3F36L, 1L)).s6 , 0x3124A43BL)) , l_907) != (void*)0)))), 0x2BL)) < 0xBCAB457C2331A843L) == l_885.y) <= (*l_887)), (-1L), (*l_887), ((VECTOR(int32_t, 4))(0x3349B44CL)), ((VECTOR(int32_t, 2))(0x601412B3L)), (*l_887), 0x0C89CC47L, l_885.w, 0x4116142EL, 0L, 0x53922E23L)))).lo))).s01)))).xyyx)).y;
                }
                l_924 ^= (safe_add_func_int32_t_s_s((*p_1014->g_129), (l_923 = (safe_add_func_uint16_t_u_u(((*l_921) &= ((p_1014->g_912 || ((safe_sub_func_int32_t_s_s((l_5 &= (l_915 >= (~0x46L))), l_916[3][3][2])) <= (safe_add_func_int32_t_s_s(p_1014->g_919[0], p_1014->g_497.s5)))) != ((VECTOR(uint32_t, 16))(p_1014->g_920.sa39db10150115b91)).sf)), (1L == p_1014->g_922))))));
            }
            else
            { /* block id: 371 */
                uint8_t l_934[3];
                int32_t *l_937[4][2][5] = {{{&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2}},{{&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2}},{{&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2}},{{&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2}}};
                int i, j, k;
                for (i = 0; i < 3; i++)
                    l_934[i] = 0x94L;
                (*l_889) = (GROUP_DIVERGE(1, 1) >= (safe_lshift_func_int16_t_s_s(((*l_889) >= ((VECTOR(int32_t, 8))(0x1A27A6F0L, ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 16))(l_927.xyxxyxxxxyyxxyyx)).s02, ((VECTOR(int32_t, 16))(((safe_lshift_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u(l_934[2], ((VECTOR(uint16_t, 4))(0x9ED9L, 1UL, 0UL, 1UL)).y)) , 0x40L), 5)), 1)) || ((safe_mul_func_uint8_t_u_u((&l_853 == (void*)0), (l_889 != l_937[3][1][0]))) < (-2L))), 0x684DF7BFL, (*l_889), (*p_1014->g_129), (*p_1014->g_129), 5L, ((VECTOR(int32_t, 8))(0x3C09388CL)), 0L, (-9L))).sd9))), 0x75973F6FL, ((VECTOR(int32_t, 2))(0x751C040CL)), 0x5F22EBDFL, 1L)).s6), (*p_1014->g_199))));
                return p_1014->g_859.s9;
            }
            (*p_1014->g_154) = (l_938 != (((safe_lshift_func_int8_t_s_s(((*p_1014->g_373) = (((VECTOR(int8_t, 16))(1L, 0x24L, (safe_sub_func_int32_t_s_s(l_943, ((*p_1014->g_118) = (((*l_944) = &l_883) != (*p_1014->g_357))))), ((l_874.y = (!l_946[8])) < ((l_950 == ((*l_952) = l_951)) < ((p_1014->g_494.z &= ((safe_div_func_uint32_t_u_u((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 4))((safe_rshift_func_uint16_t_u_u((safe_div_func_int32_t_s_s((l_959 |= (-5L)), ((l_960 != l_963) ^ l_18))), p_1014->g_964)), (*p_1014->g_420), 0x187825FB8AE3B04AL, (-1L))), ((VECTOR(int64_t, 4))(7L))))).wyzzwxzy)))))).s17)).even | 0x438F4C7C7EF5721AL), 0x51F4C93BL)) ^ p_1014->g_922)) < (*p_1014->g_727)))), (-9L), 0x40L, ((VECTOR(int8_t, 2))((-1L))), ((VECTOR(int8_t, 8))(0x39L)))).s2 < (*p_1014->g_373))), 0)) & l_888[5]) , &p_1014->g_652));
            return p_1014->g_184.s3;
        }
        return (*l_889);
    }
    for (p_1014->g_651 = 0; (p_1014->g_651 < 11); p_1014->g_651 = safe_add_func_int8_t_s_s(p_1014->g_651, 8))
    { /* block id: 389 */
        int32_t l_975 = 9L;
        VECTOR(uint64_t, 2) l_977 = (VECTOR(uint64_t, 2))(0x28917FEF184AB2CAL, 6UL);
        VECTOR(uint64_t, 16) l_978 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint64_t, 2))(0UL, 0UL), (VECTOR(uint64_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL);
        uint8_t *l_994[2];
        VECTOR(int8_t, 2) l_995 = (VECTOR(int8_t, 2))(0x1AL, 0L);
        int32_t **l_998 = (void*)0;
        int16_t l_999 = 0x0D14L;
        int32_t *l_1000 = &l_959;
        int i;
        for (i = 0; i < 2; i++)
            l_994[i] = &p_1014->g_185;
        if (l_959)
            goto lbl_967;
        (*l_1000) ^= (safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1014->local_1_offset, get_local_id(1), 10), (safe_lshift_func_uint16_t_u_s((+(safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(abs(((VECTOR(int32_t, 16))(0x7F95F206L, ((((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 2))(l_974.sac)).yxxy, ((VECTOR(uint64_t, 8))(0UL, 18446744073709551615UL, (&p_1014->g_712[7][3] == (void*)0), l_975, ((VECTOR(uint64_t, 4))(p_1014->g_976.s1271)))).hi))).xwzwzxxy)).lo, ((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 2))(l_977.yy)).yyxxxxxyxyyyyxyx, ((VECTOR(uint64_t, 2))(l_978.s32)).xyxxxyxxyyyxxyyy))).sa379))).even, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 4))(min(((VECTOR(uint64_t, 4))(clz(((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 2))(p_1014->g_979.xy)), (uint64_t)((safe_rshift_func_int16_t_s_s((safe_add_func_int8_t_s_s(((safe_rshift_func_int8_t_s_u((safe_rshift_func_int8_t_s_u((l_975 , (((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s((safe_div_func_uint8_t_u_u(((*l_889) = 0x09L), ((VECTOR(int8_t, 8))(l_995.xxxxyyxy)).s5)), 6)), (~((((safe_rshift_func_uint8_t_u_u((l_998 == &p_1014->g_129), (l_974.s8 , l_852))) , 0x20F49D4EL) || 2L) <= l_874.y)))) || 1L) <= (*p_1014->g_565))), FAKE_DIVERGE(p_1014->global_2_offset, get_global_id(2), 10))), 7)) & GROUP_DIVERGE(0, 1)), l_995.x)), l_999)) < 0x1F1F9793L)))).xxyy, ((VECTOR(uint64_t, 4))(0x7EF581AF9464BA09L)))))))), (uint64_t)GROUP_DIVERGE(0, 1)))), ((VECTOR(uint64_t, 4))(0xE701A85E2AF1AB95L))))).xzxxwzzzzzxyxwzy)).s0a, ((VECTOR(uint64_t, 2))(18446744073709551609UL))))).lo ^ (*p_1014->g_727)) || (*l_889)), 6L, ((VECTOR(int32_t, 8))(0x44EF975DL)), ((VECTOR(int32_t, 2))(0x7BE45FDBL)), 0x355BA9BBL, (-1L), 0x623C7CC7L)).even))).s0, 0xBA06BFBBL))), 0))));
    }
lbl_1009:
    l_1006--;
    l_1011++;
    return p_1014->g_651;
}


/* ------------------------------------------ */
/* 
 * reads : p_1014->g_155
 * writes: p_1014->g_155
 */
uint16_t  func_8(uint64_t  p_9, uint32_t  p_10, uint64_t  p_11, int64_t  p_12, int32_t  p_13, struct S0 * p_1014)
{ /* block id: 333 */
    uint8_t l_837 = 0UL;
    int32_t *l_838 = &p_1014->g_155[6][0];
    int32_t l_839 = 0x3E981F33L;
    if (((*l_838) |= l_837))
    { /* block id: 335 */
        l_839 = ((*l_838) ^= p_10);
    }
    else
    { /* block id: 338 */
        return p_9;
    }
    return p_10;
}


/* ------------------------------------------ */
/* 
 * reads : p_1014->g_373 p_1014->g_115 p_1014->g_711 p_1014->g_651 p_1014->g_420 p_1014->g_421 p_1014->g_150 p_1014->g_151 p_1014->g_155 p_1014->g_652 p_1014->g_199 p_1014->g_754 p_1014->g_756 p_1014->g_765 p_1014->g_614 p_1014->g_770 p_1014->g_783 p_1014->g_118 p_1014->g_119 p_1014->g_425 p_1014->g_565 p_1014->g_792 p_1014->g_793 p_1014->g_804 p_1014->g_805 p_1014->g_806 p_1014->g_807 p_1014->g_129 p_1014->g_727 p_1014->g_57 p_1014->g_822
 * writes: p_1014->g_727 p_1014->g_151 p_1014->g_155 p_1014->g_652 p_1014->g_119 p_1014->g_185
 */
uint8_t  func_33(uint32_t  p_34, int32_t  p_35, int8_t  p_36, struct S0 * p_1014)
{ /* block id: 284 */
    VECTOR(int32_t, 16) l_700 = (VECTOR(int32_t, 16))(0x5E05D890L, (VECTOR(int32_t, 4))(0x5E05D890L, (VECTOR(int32_t, 2))(0x5E05D890L, 0x572FE409L), 0x572FE409L), 0x572FE409L, 0x5E05D890L, 0x572FE409L, (VECTOR(int32_t, 2))(0x5E05D890L, 0x572FE409L), (VECTOR(int32_t, 2))(0x5E05D890L, 0x572FE409L), 0x5E05D890L, 0x572FE409L, 0x5E05D890L, 0x572FE409L);
    int32_t *l_703[10] = {(void*)0,&p_1014->g_155[6][2],&p_1014->g_2,&p_1014->g_155[6][2],(void*)0,(void*)0,&p_1014->g_155[6][2],&p_1014->g_2,&p_1014->g_155[6][2],(void*)0};
    uint32_t l_704 = 2UL;
    uint8_t **l_713 = &p_1014->g_712[7][3];
    VECTOR(uint16_t, 16) l_721 = (VECTOR(uint16_t, 16))(0x35E8L, (VECTOR(uint16_t, 4))(0x35E8L, (VECTOR(uint16_t, 2))(0x35E8L, 0xC0EAL), 0xC0EAL), 0xC0EAL, 0x35E8L, 0xC0EAL, (VECTOR(uint16_t, 2))(0x35E8L, 0xC0EAL), (VECTOR(uint16_t, 2))(0x35E8L, 0xC0EAL), 0x35E8L, 0xC0EAL, 0x35E8L, 0xC0EAL);
    uint64_t *l_726[4];
    VECTOR(uint8_t, 2) l_795 = (VECTOR(uint8_t, 2))(0x4BL, 0x4DL);
    uint32_t l_815 = 0x8E36701CL;
    int i;
    for (i = 0; i < 4; i++)
        l_726[i] = (void*)0;
    l_704 ^= l_700.sb;
    if ((safe_add_func_uint16_t_u_u(((*p_1014->g_373) != p_36), (p_35 == 0xA56066AA84B01FC1L))))
    { /* block id: 286 */
        uint32_t l_718[10] = {0UL,0x6F6A3A3EL,0x8D41AC2EL,0x6F6A3A3EL,0UL,0UL,0x6F6A3A3EL,0x8D41AC2EL,0x6F6A3A3EL,0UL};
        int32_t *l_741[8];
        VECTOR(int8_t, 16) l_753 = (VECTOR(int8_t, 16))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), (-5L)), (-5L)), (-5L), (-2L), (-5L), (VECTOR(int8_t, 2))((-2L), (-5L)), (VECTOR(int8_t, 2))((-2L), (-5L)), (-2L), (-5L), (-2L), (-5L));
        VECTOR(uint8_t, 4) l_767 = (VECTOR(uint8_t, 4))(0x93L, (VECTOR(uint8_t, 2))(0x93L, 0xCAL), 0xCAL);
        int64_t *l_782 = (void*)0;
        int64_t **l_781[2][9] = {{&l_782,&l_782,&l_782,&l_782,(void*)0,&l_782,&l_782,&l_782,&l_782},{&l_782,&l_782,&l_782,&l_782,(void*)0,&l_782,&l_782,&l_782,&l_782}};
        int64_t ***l_780[8][5][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
        int i, j, k;
        for (i = 0; i < 8; i++)
            l_741[i] = &p_1014->g_155[6][2];
        if (p_36)
        { /* block id: 287 */
            uint8_t **l_714 = &p_1014->g_712[7][3];
            int32_t l_717 = 4L;
            int16_t l_730 = 0x4236L;
            uint16_t l_745 = 0x2FD6L;
            uint8_t l_755 = 254UL;
            VECTOR(uint8_t, 8) l_766 = (VECTOR(uint8_t, 8))(0x67L, (VECTOR(uint8_t, 4))(0x67L, (VECTOR(uint8_t, 2))(0x67L, 0x20L), 0x20L), 0x20L, 0x67L, 0x20L);
            uint16_t *l_772 = &l_745;
            uint16_t **l_771 = &l_772;
            int64_t *l_778[1];
            int64_t **l_777 = &l_778[0];
            int64_t ***l_779 = &l_777;
            int i;
            for (i = 0; i < 1; i++)
                l_778[i] = (void*)0;
            if (((safe_rshift_func_int16_t_s_u((safe_div_func_uint16_t_u_u((p_1014->g_711[2][9] != (l_714 = l_713)), (safe_mod_func_int32_t_s_s((l_718[5] &= l_717), (safe_rshift_func_int8_t_s_s((*p_1014->g_373), 2)))))), ((VECTOR(uint16_t, 2))(l_721.s97)).lo)) == p_1014->g_651))
            { /* block id: 290 */
                uint64_t *l_729[1];
                uint64_t **l_728 = &l_729[0];
                int32_t l_731 = 0x284CA640L;
                int8_t l_740[7][1];
                int i, j;
                for (i = 0; i < 1; i++)
                    l_729[i] = &p_1014->g_57;
                for (i = 0; i < 7; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_740[i][j] = 0x71L;
                }
                if ((safe_lshift_func_uint8_t_u_s((safe_sub_func_uint32_t_u_u(((p_1014->g_727 = l_726[0]) == ((*l_728) = l_726[0])), (((VECTOR(int32_t, 2))((-8L), (-6L))).even < l_730))), (l_731 ^ ((((*p_1014->g_150) = (safe_sub_func_int8_t_s_s((((*p_1014->g_420) <= l_718[5]) != l_718[5]), 1UL))) && (safe_lshift_func_uint16_t_u_s(((safe_lshift_func_int8_t_s_u((safe_add_func_int8_t_s_s(((VECTOR(int8_t, 8))((-7L), ((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(0x61L, ((VECTOR(int8_t, 2))(0x3CL)), 0x2DL)).yyyyyxyy)), (int8_t)l_718[5], (int8_t)0x3CL))), ((VECTOR(int8_t, 8))(0x00L)), ((VECTOR(int8_t, 8))(0L))))).s27)), ((VECTOR(int8_t, 2))(0x1BL)), ((VECTOR(int8_t, 2))(0x11L))))), 0x02L, (-4L), ((VECTOR(int8_t, 2))(6L)), (-1L))).s5, 255UL)), l_740[0][0])) & p_36), (*p_1014->g_150)))) , 0x4545F499BEA9A7D0L)))))
                { /* block id: 294 */
                    int32_t **l_742 = &l_741[5];
                    l_731 ^= (-2L);
                    (*l_742) = l_741[5];
                    (**l_742) |= ((VECTOR(int32_t, 2))(0x686B8911L, (-1L))).lo;
                }
                else
                { /* block id: 298 */
                    return l_740[0][0];
                }
            }
            else
            { /* block id: 301 */
                uint32_t l_748 = 4294967288UL;
                for (p_1014->g_652 = 0; (p_1014->g_652 >= 22); p_1014->g_652++)
                { /* block id: 304 */
                    uint16_t *l_749 = &l_745;
                    VECTOR(int32_t, 2) l_750 = (VECTOR(int32_t, 2))(2L, 0x29E531C1L);
                    int i;
                    l_755 = ((l_745 && (safe_sub_func_int8_t_s_s(((GROUP_DIVERGE(0, 1) || ((((*l_749) = l_748) && l_750.y) < (*p_1014->g_199))) , (safe_mul_func_uint16_t_u_u(((-4L) ^ ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 8))(l_753.s6e282f72)).even, ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 2))((-8L), (-10L))), ((VECTOR(int8_t, 8))(p_1014->g_754.s30315761)).s50))).xxxx))), 0x5FL, 0x18L, 0L, 0L)).s1), p_34))), l_750.x))) || 0x0FDFL);
                }
            }
            l_717 = ((VECTOR(int32_t, 16))(p_1014->g_756.sc021522302574cd8)).s5;
            l_717 = (safe_mul_func_int16_t_s_s(p_34, ((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x35FFL, 0x7ECCL)), 65531UL, 0UL)).zwxzwxyyxxzyywxw, ((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(249UL, (safe_div_func_int8_t_s_s((safe_div_func_uint8_t_u_u(p_34, (safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(1, 1), 1)))), l_745)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),VECTOR(uint8_t, 4),((VECTOR(uint8_t, 4))(p_1014->g_765.xxyx)), ((VECTOR(uint8_t, 2))(0x8EL, 252UL)).xxxx, ((VECTOR(uint8_t, 2))(l_766.s17)).yyxy))))), 0xB0L, 0xDBL)))), ((VECTOR(uint8_t, 8))(l_767.wxwzyzww))))).lo)).odd, ((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(0x3EL, p_35, (safe_mod_func_uint32_t_u_u(p_1014->g_614.sd, p_34)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(p_1014->g_770.zxwzzxzw)).s07)), 7UL, 8UL)), 4UL)).s00)).yyyxyyyxyxyyyxyx, (uint8_t)p_34))).sdf)), 1UL, 0x89L)).yxyywxyw, ((VECTOR(uint8_t, 2))(0xAEL, 0x05L)).yyxyxxyy))).s30))))), ((VECTOR(uint16_t, 2))(1UL, 5UL)), 65535UL, 65535UL, 0UL, 0xE111L)))).even, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(0x75FCL, (l_771 == (((safe_mod_func_uint8_t_u_u(((safe_mod_func_uint16_t_u_u((((((((((*l_779) = l_777) != (void*)0) < p_36) , l_780[7][0][0]) == p_1014->g_783) && p_36) || p_34) > (*p_1014->g_118)), (*p_1014->g_199))) >= FAKE_DIVERGE(p_1014->global_0_offset, get_global_id(0), 10)), p_36)) >= l_730) , (void*)0)), ((VECTOR(uint16_t, 2))(5UL)), ((VECTOR(uint16_t, 4))(0x60A2L)), 0xA38CL, ((VECTOR(uint16_t, 2))(1UL)), p_36, 0xD256L, ((VECTOR(uint16_t, 2))(7UL)), 65534UL)).s8c88)), 0x6D03L, ((VECTOR(uint16_t, 2))(1UL)), ((VECTOR(uint16_t, 8))(65535UL)), 0x3CA2L)).s2, p_1014->g_425.s3, 0UL, ((VECTOR(uint16_t, 4))(5UL)), 0x00A8L)).s34)).yxxx))).yxyzywzxxyzwzzwx))), ((VECTOR(uint16_t, 16))(0x568FL)), ((VECTOR(uint16_t, 16))(0xC061L))))).s8));
            return p_34;
        }
        else
        { /* block id: 313 */
            return p_36;
        }
    }
    else
    { /* block id: 316 */
        int16_t l_786 = 0x41C7L;
        VECTOR(int16_t, 4) l_787 = (VECTOR(int16_t, 4))(0x4E23L, (VECTOR(int16_t, 2))(0x4E23L, 0L), 0L);
        uint32_t *l_788 = &p_1014->g_682;
        int32_t l_789 = (-7L);
        VECTOR(int32_t, 16) l_794 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x2CD78F73L), 0x2CD78F73L), 0x2CD78F73L, 0L, 0x2CD78F73L, (VECTOR(int32_t, 2))(0L, 0x2CD78F73L), (VECTOR(int32_t, 2))(0L, 0x2CD78F73L), 0L, 0x2CD78F73L, 0L, 0x2CD78F73L);
        uint16_t l_825 = 0x2C1AL;
        int32_t l_834 = 1L;
        int i;
        (*p_1014->g_565) |= (((-1L) == (l_786 | ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(5L, 0x08B29F4FL)))).odd)) || l_787.z);
        l_789 = ((FAKE_DIVERGE(p_1014->local_2_offset, get_local_id(2), 10) , l_788) == l_703[4]);
        for (l_786 = (-12); (l_786 == (-17)); l_786 = safe_sub_func_uint8_t_u_u(l_786, 6))
        { /* block id: 321 */
            uint16_t l_796 = 0x3F96L;
            uint32_t *l_798 = &p_1014->g_551;
            uint32_t **l_797 = &l_798;
            VECTOR(int8_t, 4) l_803 = (VECTOR(int8_t, 4))(0x32L, (VECTOR(int8_t, 2))(0x32L, (-8L)), (-8L));
            uint8_t *l_814 = &p_1014->g_185;
            int32_t l_835 = 1L;
            int i;
            l_789 ^= ((*p_1014->g_129) = ((&p_1014->g_712[7][3] == ((0x1B119972L | ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 4))(p_1014->g_792.yyyx)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))((-1L), (-1L))))), ((VECTOR(int32_t, 8))(p_1014->g_793.yyxyywyw)).s75))), 0x30EDC346L, (-8L)))))), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_794.sb3)), ((VECTOR(int32_t, 4))(1L, ((~(((VECTOR(uint8_t, 8))(l_795.yyxyxyxx)).s5 >= l_796)) == (p_36 ^ (((*l_797) = &p_1014->g_551) == &p_1014->g_551))), (-6L), 0L)), (-2L), 6L)).hi, ((VECTOR(int32_t, 16))(p_35, ((VECTOR(int32_t, 2))(0x6D980C15L, 0x47D557EBL)), ((safe_div_func_int8_t_s_s(((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(l_803.ywzwyxxwxzwwwwzz)))).sf6bc, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(p_1014->g_804.s6526)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(p_1014->g_805.sa620)), ((VECTOR(int8_t, 8))(p_1014->g_806.s89f0c2a8)), ((VECTOR(int8_t, 4))(0x59L, (!((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(p_1014->g_807.s484ad9bd)))).s7 > ((*l_814) = (safe_sub_func_int16_t_s_s(((((0x50A1F58BA73FF3B3L ^ (safe_mul_func_int16_t_s_s(((((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(p_34, (-4L), (-9L), ((VECTOR(int16_t, 2))((-1L))), ((VECTOR(int16_t, 2))(0x747AL)), 0x5083L)).hi)).even, ((VECTOR(int16_t, 2))(0L))))).odd, p_35)) & (-1L)) , l_796) , l_787.w), p_35))) > p_35) || p_36) ^ l_794.s6), GROUP_DIVERGE(0, 1))))) >= p_36)), 0x2AL, (-1L))))).even, ((VECTOR(int8_t, 8))(0L))))).hi)), 0x04L, 0x0CL, (-7L), (-1L), ((VECTOR(int8_t, 2))(0x2DL)), 0x45L, 0x2AL)).s2531))).wxyzxwww)).s4, l_794.sd)) != l_815), p_35)) == 1UL), p_35, l_786, ((VECTOR(int32_t, 4))(0x58C4D568L)), (-1L), 0x5122BE9EL, ((VECTOR(int32_t, 4))((-8L))))).sdf27))).wzyxwwwy, ((VECTOR(int32_t, 8))(1L)), ((VECTOR(int32_t, 8))((-1L)))))).s2442363076703011)).s2) , (void*)0)) != p_36));
            l_835 = (safe_sub_func_int32_t_s_s((((-1L) >= ((safe_sub_func_uint8_t_u_u(0x2AL, ((~(*p_1014->g_727)) < (l_796 < p_36)))) || (((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(p_1014->g_822.xyyxxxxx)).s75)), 1L, 0x2B77E2C14524BAF2L)).w , (((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))((-2L), 0x78162C8FL, (safe_sub_func_uint16_t_u_u((+l_825), p_34)), ((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))((-1L), (safe_mul_func_uint16_t_u_u(((safe_mod_func_uint16_t_u_u(p_34, (((safe_rshift_func_uint8_t_u_u((safe_add_func_uint64_t_u_u(((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(0x29L, 0x7AL)).yxyxyyxxxyyxxxxy)).sf == p_34) != (*p_1014->g_420)), (*p_1014->g_727))), l_803.w)) && l_834) ^ 0UL))) <= 0x1B29F5E6DEEEEA4DL), p_35)), 0x5777ACB9L, (-1L), 0x3E8A1938L, ((VECTOR(int32_t, 2))(0x3CB0E9DAL)), 0x6D2A9719L, 4L, 1L, 5L, p_34, (-4L), ((VECTOR(int32_t, 2))(7L)), 0x36D09B82L)).odd, ((VECTOR(int32_t, 8))(0x24786DA1L)), ((VECTOR(int32_t, 8))(0L))))).lo, ((VECTOR(int32_t, 4))(1L)), ((VECTOR(int32_t, 4))(0x2BA8D58DL))))).wxzywxwy)).s7010203530122617, (int32_t)p_1014->g_421[0]))).s0, ((VECTOR(int32_t, 2))(8L)), 0x29A5718BL, 0x3DDA15ADL)), 5L, 0x5156A439L, (-1L), ((VECTOR(int32_t, 4))(2L)), 1L)).lo, ((VECTOR(uint32_t, 8))(1UL))))).s50)).hi , p_34)) > 1UL) , GROUP_DIVERGE(0, 1)))) < 1L), l_803.z));
            l_835 &= (p_36 >= (l_794.s3 = 0x63843BB3L));
            if (p_36)
                continue;
        }
    }
    return p_34;
}


/* ------------------------------------------ */
/* 
 * reads : p_1014->g_185 p_1014->g_420 p_1014->g_421 p_1014->g_155 p_1014->g_151 p_1014->g_119 p_1014->g_614 p_1014->g_616 p_1014->g_618 p_1014->g_115 p_1014->g_494 p_1014->g_184 p_1014->g_625 p_1014->g_210 p_1014->g_199 p_1014->g_563 p_1014->g_97 p_1014->g_129 p_1014->g_691 p_1014->g_96 p_1014->g_373
 * writes: p_1014->g_185 p_1014->g_119 p_1014->g_494 p_1014->g_625 p_1014->g_151 p_1014->g_147 p_1014->g_682 p_1014->g_97 p_1014->g_96 p_1014->g_115
 */
uint8_t  func_39(uint8_t  p_40, uint64_t  p_41, uint32_t  p_42, struct S0 * p_1014)
{ /* block id: 229 */
    uint32_t l_589[7][8] = {{0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL},{0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL},{0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL},{0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL},{0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL},{0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL},{0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL,0xFDC70D8AL}};
    VECTOR(int32_t, 4) l_594 = (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0x5F4A88A7L), 0x5F4A88A7L);
    VECTOR(uint32_t, 2) l_601 = (VECTOR(uint32_t, 2))(0x8AF6DB52L, 0xE07B390EL);
    VECTOR(int64_t, 2) l_613 = (VECTOR(int64_t, 2))(0x66CDB6CDEE7D192FL, 0x314CC8675C2F4D29L);
    int32_t *l_623 = &p_1014->g_119;
    uint32_t l_698 = 0x49C4EA59L;
    int i, j;
    if (p_40)
    { /* block id: 230 */
        uint8_t *l_578 = &p_1014->g_185;
        int64_t *l_585 = (void*)0;
        int64_t *l_586 = (void*)0;
        int64_t *l_587 = (void*)0;
        int64_t *l_588 = (void*)0;
        int64_t l_590 = 1L;
        int32_t *l_591 = &p_1014->g_119;
        VECTOR(int16_t, 16) l_593 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 5L), 5L), 5L, 0L, 5L, (VECTOR(int16_t, 2))(0L, 5L), (VECTOR(int16_t, 2))(0L, 5L), 0L, 5L, 0L, 5L);
        VECTOR(int8_t, 4) l_617 = (VECTOR(int8_t, 4))(0x5CL, (VECTOR(int8_t, 2))(0x5CL, 1L), 1L);
        VECTOR(int16_t, 2) l_631 = (VECTOR(int16_t, 2))(0L, (-4L));
        int i;
        if (((safe_mul_func_uint8_t_u_u(((*l_578)++), ((safe_sub_func_int32_t_s_s(((*l_591) |= (safe_lshift_func_int8_t_s_u(((&p_1014->g_574 != ((*p_1014->g_420) , &p_1014->g_574)) ^ ((l_589[5][0] = p_1014->g_155[0][3]) , l_590)), p_1014->g_151))), p_40)) && (safe_unary_minus_func_int16_t_s(((VECTOR(int16_t, 2))(l_593.s6e)).even))))) , ((VECTOR(int32_t, 8))(l_594.wyyywwxx)).s6))
        { /* block id: 234 */
            VECTOR(uint32_t, 2) l_602 = (VECTOR(uint32_t, 2))(0x948CA937L, 0UL);
            int64_t *l_607[6] = {&l_590,(void*)0,&l_590,&l_590,(void*)0,&l_590};
            uint32_t *l_610 = &l_589[1][3];
            VECTOR(int8_t, 8) l_615 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 4L), 4L), 4L, (-1L), 4L);
            int32_t l_624 = (-1L);
            volatile int64_t * volatile * volatile *l_626 = &p_1014->g_625;
            int64_t l_649 = (-6L);
            int32_t *l_679 = &p_1014->g_119;
            int i;
            l_624 = (safe_add_func_int32_t_s_s((safe_div_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_u((((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),uint32_t,((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_601.xy)).yxxyxxxx)), (uint32_t)((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(l_602.xyxx)).hi)), 0UL, 4294967295UL, (((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 4))((safe_add_func_int64_t_s_s((p_1014->g_494.x = (*p_1014->g_420)), (-4L))), ((*l_591) = (((p_40 || ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(0UL, 7UL)).yyyxyxxxxxxxyxyy)).se) ^ ((VECTOR(int64_t, 2))(0x30005D079621B183L, 8L)).lo) > (safe_mod_func_uint32_t_u_u(((*l_610)++), (((((VECTOR(int64_t, 8))(l_613.yyyyxyyy)).s7 != (l_610 != &p_1014->g_273)) | (((VECTOR(uint8_t, 8))(p_1014->g_614.s4493d5d7)).s0 > ((VECTOR(int8_t, 4))(0x7BL, ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x47L, (-10L))), 0x39L, 0x73L)).wxwzywzz)).s36, ((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 2))(l_615.s23)).xxxx, ((VECTOR(int8_t, 8))(0x09L, 0x2BL, (-2L), 0L, ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 4))(p_1014->g_616.xyxx)), ((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(l_617.wxyx)))), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 4))(p_1014->g_618.zwyz)).odd, (int8_t)(safe_mod_func_uint64_t_u_u(p_1014->g_115, (safe_rshift_func_int8_t_s_s((0x0592L & p_42), 3))))))), 0x05L, (((l_623 == l_610) > p_1014->g_494.y) ^ p_40), 0x0DL, ((VECTOR(int8_t, 4))(0x50L)), 1L, 1L, 0x7AL, ((VECTOR(int8_t, 2))(2L)), 0x3AL, 0x58L)).odd)).hi, ((VECTOR(int8_t, 4))(0x13L)))))))), 4L, (-1L), 0x1FL, 9L)).s0261357211124202, ((VECTOR(int8_t, 16))(0x3CL))))).s6b, ((VECTOR(int8_t, 2))(0L))))), 0L, 7L)).even))).hi))), (-8L))).w)) | 0xF1C370D0L))))), 0x2BA98EB6L, 0x0AF60E4EL)).y, 0x132724D3L)) == FAKE_DIVERGE(p_1014->global_0_offset, get_global_id(0), 10)) & 18446744073709551610UL), ((VECTOR(uint32_t, 2))(0x8112A85DL)), 8UL)).s4, (uint32_t)p_1014->g_184.s2))), ((VECTOR(uint32_t, 8))(4294967295UL))))))).s77)).lo != p_40), 2)), p_40)), p_41));
            (*l_626) = p_1014->g_625;
            for (p_1014->g_185 = 0; (p_1014->g_185 != 42); p_1014->g_185 = safe_add_func_int8_t_s_s(p_1014->g_185, 9))
            { /* block id: 242 */
                VECTOR(int16_t, 2) l_632 = (VECTOR(int16_t, 2))((-1L), 0x1954L);
                VECTOR(int64_t, 8) l_633 = (VECTOR(int64_t, 8))(0x50D3A15ABE253956L, (VECTOR(int64_t, 4))(0x50D3A15ABE253956L, (VECTOR(int64_t, 2))(0x50D3A15ABE253956L, 1L), 1L), 1L, 0x50D3A15ABE253956L, 1L);
                int8_t l_653 = 0x6BL;
                uint8_t l_673 = 0xAAL;
                int64_t **l_686 = &l_586;
                int64_t ***l_685 = &l_686;
                int i;
                for (p_42 = 21; (p_42 < 29); p_42 = safe_add_func_uint8_t_u_u(p_42, 8))
                { /* block id: 245 */
                    int32_t *l_640[8] = {&p_1014->g_119,&p_1014->g_119,&p_1014->g_119,&p_1014->g_119,&p_1014->g_119,&p_1014->g_119,&p_1014->g_119,&p_1014->g_119};
                    uint8_t *l_650 = &p_1014->g_651;
                    uint64_t *l_654[2][2][1];
                    VECTOR(int32_t, 16) l_680 = (VECTOR(int32_t, 16))(0x5C58AA86L, (VECTOR(int32_t, 4))(0x5C58AA86L, (VECTOR(int32_t, 2))(0x5C58AA86L, 0x6B04836EL), 0x6B04836EL), 0x6B04836EL, 0x5C58AA86L, 0x6B04836EL, (VECTOR(int32_t, 2))(0x5C58AA86L, 0x6B04836EL), (VECTOR(int32_t, 2))(0x5C58AA86L, 0x6B04836EL), 0x5C58AA86L, 0x6B04836EL, 0x5C58AA86L, 0x6B04836EL);
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 2; j++)
                        {
                            for (k = 0; k < 1; k++)
                                l_654[i][j][k] = &p_1014->g_57;
                        }
                    }
                    if (((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 16))(l_631.yyyyxxxyyyxyxyxy)).sca1e, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(l_632.yy)).yxyyxxxy)).s0411533411562033, (int16_t)(((VECTOR(int64_t, 4))(l_633.s1234)).x , (0x4E3982B8EAB4C608L ^ (p_1014->g_492.x = ((safe_mod_func_int16_t_s_s((safe_rshift_func_int16_t_s_s(((*p_1014->g_574) != ((safe_add_func_uint8_t_u_u((*l_623), ((void*)0 == l_607[1]))) , func_73(l_640[0], p_1014))), (((p_40 ^= (((safe_rshift_func_uint16_t_u_s((safe_add_func_int8_t_s_s(((*p_1014->g_373) || (((safe_mul_func_uint8_t_u_u(((*l_650) = ((l_649 = ((safe_sub_func_uint64_t_u_u(1UL, 0x0E025C5DB59A5E24L)) != p_41)) , p_41)), p_1014->g_652)) >= 0x3B31171470725F80L) == (*l_623))), p_1014->g_616.x)), l_624)) >= l_653) && 0UL)) ^ l_615.s0) | (*l_591)))), 8UL)) , FAKE_DIVERGE(p_1014->local_0_offset, get_local_id(0), 10)))))))).s9dea)), 0x6B59L, p_40, 0x38BCL, (-1L))).s07)).xyyy))).odd, ((VECTOR(uint16_t, 2))(65534UL))))))).xxxxxyyx, (int32_t)(*p_1014->g_118)))).s7)
                    { /* block id: 250 */
                        uint8_t **l_655 = (void*)0;
                        uint8_t **l_656 = &l_578;
                        int32_t l_670[1];
                        int16_t *l_674 = (void*)0;
                        int16_t *l_675 = (void*)0;
                        int16_t *l_676 = &p_1014->g_147;
                        int32_t l_677 = 0x37CDED12L;
                        uint32_t *l_681[4];
                        int64_t **l_684 = (void*)0;
                        int64_t ***l_683 = &l_684;
                        int64_t ****l_687 = &l_685;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_670[i] = 0x3A2BCC51L;
                        for (i = 0; i < 4; i++)
                            l_681[i] = &p_1014->g_682;
                        l_677 ^= ((p_40 , func_73(func_73(func_73((((p_41 != (((l_650 == ((*l_656) = &p_40)) == p_1014->g_210.s4) >= ((safe_rshift_func_int8_t_s_s((safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1014->local_0_offset, get_local_id(0), 10), (safe_rshift_func_int16_t_s_u(((*l_676) = ((*p_1014->g_199) = (l_633.s6 & ((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(0x3E53L, (-7L))).yyxxyxxyxyxxyxyx)).even)).s1, (safe_mod_func_int64_t_s_s((((((safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(p_1014->g_669.s0919d2f8)).s5, 1UL)) , (l_670[0] <= ((safe_mod_func_uint32_t_u_u(4294967295UL, p_42)) , p_41))) < l_673) , GROUP_DIVERGE(1, 1)) && 18446744073709551608UL), p_42)))) | 0x9BL)))), (*l_591))))), 7)) , p_42))) , p_40) , (*p_1014->g_563)), p_1014), p_1014), p_1014)) != l_591);
                        l_679 = l_591;
                        (*p_1014->g_129) = (((p_1014->g_682 = l_680.s8) , l_683) == ((*l_687) = l_685));
                    }
                    else
                    { /* block id: 259 */
                        int32_t **l_688 = (void*)0;
                        int32_t **l_689 = &l_640[6];
                        (*l_689) = (void*)0;
                        (*l_689) = &l_624;
                    }
                }
            }
            (*p_1014->g_691) = &l_624;
        }
        else
        { /* block id: 266 */
            (*l_591) = ((void*)0 != p_1014->g_625);
        }
        for (p_1014->g_96 = (-19); (p_1014->g_96 > 14); p_1014->g_96++)
        { /* block id: 271 */
            return p_41;
        }
    }
    else
    { /* block id: 274 */
        (*l_623) = (p_42 <= (safe_mul_func_int8_t_s_s(((*p_1014->g_373) = (*p_1014->g_373)), (p_41 || (safe_rshift_func_int16_t_s_s(l_698, 13))))));
    }
    if ((*l_623))
    { /* block id: 278 */
        int32_t *l_699 = &p_1014->g_155[6][3];
        l_623 = l_699;
        return p_40;
    }
    else
    { /* block id: 281 */
        return p_40;
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_1014->g_57 p_1014->g_563 p_1014->g_97 p_1014->g_574
 * writes: p_1014->g_57 p_1014->g_97
 */
uint8_t  func_43(int32_t  p_44, uint32_t  p_45, struct S0 * p_1014)
{ /* block id: 9 */
    int32_t *l_54 = (void*)0;
    int32_t *l_55[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint32_t l_94[9] = {0xBD2E7792L,0x9A852A6FL,0xBD2E7792L,0xBD2E7792L,0x9A852A6FL,0xBD2E7792L,0xBD2E7792L,0x9A852A6FL,0xBD2E7792L};
    int32_t l_575 = 0L;
    int i;
    ++p_1014->g_57;
    for (p_45 = 26; (p_45 >= 51); ++p_45)
    { /* block id: 13 */
        int32_t l_67[10] = {1L,1L,1L,1L,1L,1L,1L,1L,1L,1L};
        int32_t **l_75 = &l_55[0];
        int64_t *l_95 = &p_1014->g_96;
        int32_t l_120[7] = {0L,0L,0L,0L,0L,0L,0L};
        int i;
        (1 + 1);
    }
    (*p_1014->g_574) = func_73((*p_1014->g_563), p_1014);
    return l_575;
}


/* ------------------------------------------ */
/* 
 * reads : p_1014->g_115 p_1014->g_2 p_1014->g_118 p_1014->g_563 p_1014->g_565 p_1014->g_119 p_1014->g_50
 * writes: p_1014->g_115 p_1014->g_551 p_1014->g_97 p_1014->g_119 p_1014->g_96
 */
uint64_t  func_62(int32_t * p_63, uint64_t  p_64, int8_t  p_65, int32_t * p_66, struct S0 * p_1014)
{ /* block id: 193 */
    uint32_t l_560 = 0x6660C0FAL;
    VECTOR(int32_t, 2) l_564 = (VECTOR(int32_t, 2))((-7L), 0x747BF3ADL);
    int32_t *l_573 = (void*)0;
    int i;
    for (p_1014->g_115 = 1; (p_1014->g_115 != (-20)); p_1014->g_115--)
    { /* block id: 196 */
        int32_t l_557 = 0x754090FCL;
        int32_t l_558 = 4L;
        int32_t l_559 = 0x4D68C35CL;
        int32_t **l_572[1][6];
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 6; j++)
                l_572[i][j] = &p_1014->g_97[4][3][0];
        }
        if ((*p_63))
            break;
        for (p_1014->g_551 = 0; (p_1014->g_551 >= 17); ++p_1014->g_551)
        { /* block id: 200 */
            int32_t *l_556[2][6] = {{&p_1014->g_155[6][2],&p_1014->g_155[6][2],&p_1014->g_155[6][2],&p_1014->g_155[6][2],&p_1014->g_155[6][2],&p_1014->g_155[6][2]},{&p_1014->g_155[6][2],&p_1014->g_155[6][2],&p_1014->g_155[6][2],&p_1014->g_155[6][2],&p_1014->g_155[6][2],&p_1014->g_155[6][2]}};
            int i, j;
            if ((*p_1014->g_118))
                break;
            l_560++;
            (*p_1014->g_563) = &p_1014->g_119;
        }
        if (((VECTOR(int32_t, 2))(l_564.xy)).lo)
        { /* block id: 205 */
            int32_t **l_568 = &p_1014->g_97[4][3][0];
            int32_t *l_570 = &p_1014->g_2;
            int32_t **l_569 = &l_570;
            (*p_1014->g_565) &= (*p_63);
            for (p_1014->g_96 = 0; (p_1014->g_96 > 22); p_1014->g_96 = safe_add_func_uint16_t_u_u(p_1014->g_96, 1))
            { /* block id: 209 */
                l_559 = (*p_63);
            }
            (*l_569) = ((*l_568) = (void*)0);
        }
        else
        { /* block id: 214 */
            int32_t **l_571 = &p_1014->g_97[1][2][3];
            if ((*p_63))
                break;
            (*l_571) = (void*)0;
        }
        l_573 = ((*p_1014->g_563) = func_73((p_63 = p_66), p_1014));
    }
    return p_1014->g_50.s5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1014->g_2 p_1014->g_129 p_1014->g_24 p_1014->g_21 p_1014->g_150 p_1014->g_115 p_1014->g_96 p_1014->g_50 p_1014->g_119 p_1014->g_154 p_1014->g_56 p_1014->g_147 p_1014->g_155 p_1014->g_151 p_1014->g_183 p_1014->g_199 p_1014->g_20 p_1014->g_273 p_1014->g_245 p_1014->g_210 p_1014->g_353 p_1014->g_357 p_1014->g_22 p_1014->g_420 p_1014->g_373 p_1014->g_425 p_1014->g_291 p_1014->g_492 p_1014->g_493 p_1014->g_494 p_1014->g_497 p_1014->g_185 p_1014->g_57 p_1014->g_421
 * writes: p_1014->g_118 p_1014->g_115 p_1014->g_119 p_1014->g_24 p_1014->g_147 p_1014->g_151 p_1014->g_155 p_1014->g_96 p_1014->g_185 p_1014->g_150 p_1014->g_199 p_1014->g_183 p_1014->g_273 p_1014->g_373 p_1014->g_57 p_1014->g_97 p_1014->g_494
 */
int8_t  func_68(int32_t * p_69, int32_t * p_70, int32_t * p_71, int8_t  p_72, struct S0 * p_1014)
{ /* block id: 28 */
    int32_t *l_121 = &p_1014->g_119;
    int32_t **l_122 = &l_121;
    int32_t **l_123 = (void*)0;
    int8_t *l_124 = &p_1014->g_115;
    VECTOR(int8_t, 8) l_125 = (VECTOR(int8_t, 8))(0x33L, (VECTOR(int8_t, 4))(0x33L, (VECTOR(int8_t, 2))(0x33L, 1L), 1L), 1L, 0x33L, 1L);
    int8_t *l_128 = (void*)0;
    VECTOR(uint32_t, 4) l_130 = (VECTOR(uint32_t, 4))(0x1660C04CL, (VECTOR(uint32_t, 2))(0x1660C04CL, 4294967290UL), 4294967290UL);
    uint32_t l_152 = 4294967295UL;
    VECTOR(int64_t, 4) l_181 = (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 0x024EE24118919003L), 0x024EE24118919003L);
    VECTOR(uint16_t, 4) l_255 = (VECTOR(uint16_t, 4))(0x0FFEL, (VECTOR(uint16_t, 2))(0x0FFEL, 0x10FDL), 0x10FDL);
    int32_t l_272 = 0x45C9C01FL;
    int32_t l_298 = 0x66DEFC8FL;
    int32_t l_299[10][9][2] = {{{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L}},{{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L}},{{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L}},{{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L}},{{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L}},{{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L}},{{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L}},{{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L}},{{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L}},{{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L},{2L,0x386616D0L}}};
    int16_t *l_350 = &p_1014->g_147;
    int64_t l_352 = 0x49954C03015EFFD0L;
    uint16_t *l_360 = (void*)0;
    uint16_t **l_359 = &l_360;
    int32_t l_369[5][3] = {{(-8L),(-8L),0x1DBB44F5L},{(-8L),(-8L),0x1DBB44F5L},{(-8L),(-8L),0x1DBB44F5L},{(-8L),(-8L),0x1DBB44F5L},{(-8L),(-8L),0x1DBB44F5L}};
    VECTOR(uint8_t, 4) l_374 = (VECTOR(uint8_t, 4))(0x98L, (VECTOR(uint8_t, 2))(0x98L, 1UL), 1UL);
    uint8_t l_387 = 0xEFL;
    int16_t l_400 = 0L;
    int64_t l_401 = (-2L);
    uint16_t l_411 = 0x2F94L;
    int32_t l_422 = 0x37AF20F4L;
    uint64_t l_432[4];
    int64_t *l_439[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int64_t *l_503 = &p_1014->g_96;
    int64_t **l_502 = &l_503;
    int64_t **l_510 = (void*)0;
    int64_t l_517 = 0x145FE399928EEF64L;
    uint32_t l_518 = 0x4B875F45L;
    uint64_t *l_521 = &p_1014->g_57;
    int64_t *l_524 = (void*)0;
    int64_t *l_525 = (void*)0;
    int64_t *l_526 = (void*)0;
    int64_t *l_527[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(int16_t, 2) l_537 = (VECTOR(int16_t, 2))(7L, 0x5998L);
    VECTOR(int32_t, 4) l_544 = (VECTOR(int32_t, 4))(0x176FC607L, (VECTOR(int32_t, 2))(0x176FC607L, 1L), 1L);
    VECTOR(int64_t, 8) l_545 = (VECTOR(int64_t, 8))(0x23FE99F2464F99D8L, (VECTOR(int64_t, 4))(0x23FE99F2464F99D8L, (VECTOR(int64_t, 2))(0x23FE99F2464F99D8L, 0L), 0L), 0L, 0x23FE99F2464F99D8L, 0L);
    VECTOR(int64_t, 16) l_548 = (VECTOR(int64_t, 16))(0x5C0E0E5033AC4D49L, (VECTOR(int64_t, 4))(0x5C0E0E5033AC4D49L, (VECTOR(int64_t, 2))(0x5C0E0E5033AC4D49L, 0x3DDF76E0343E425DL), 0x3DDF76E0343E425DL), 0x3DDF76E0343E425DL, 0x5C0E0E5033AC4D49L, 0x3DDF76E0343E425DL, (VECTOR(int64_t, 2))(0x5C0E0E5033AC4D49L, 0x3DDF76E0343E425DL), (VECTOR(int64_t, 2))(0x5C0E0E5033AC4D49L, 0x3DDF76E0343E425DL), 0x5C0E0E5033AC4D49L, 0x3DDF76E0343E425DL, 0x5C0E0E5033AC4D49L, 0x3DDF76E0343E425DL);
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_432[i] = 18446744073709551608UL;
    p_1014->g_118 = ((*l_122) = func_73(l_121, p_1014));
    if ((((*l_124) = (*l_121)) & ((VECTOR(int8_t, 16))(l_125.s5344571266703563)).se))
    { /* block id: 32 */
        int32_t ***l_135 = &l_123;
        uint16_t *l_136[9][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
        int8_t *l_143[8][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
        int16_t *l_146 = &p_1014->g_147;
        int32_t *l_153 = &p_1014->g_119;
        int i, j;
        (*p_1014->g_129) = (safe_mul_func_int8_t_s_s(0x54L, (l_128 == (void*)0)));
        (*p_1014->g_154) = ((*l_153) ^= (((VECTOR(uint32_t, 8))(0x5330BC39L, ((VECTOR(uint32_t, 2))(l_130.ww)), ((VECTOR(uint32_t, 2))(1UL, 0x759B8980L)), ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(4294967286UL, 0x50C123E8L, ((VECTOR(uint32_t, 2))(4294967288UL, 4294967289UL)), ((safe_div_func_uint32_t_u_u((((safe_mul_func_uint16_t_u_u((&p_1014->g_97[3][2][0] != ((*l_135) = (void*)0)), (p_1014->g_24.s7++))) < ((safe_rshift_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u(p_1014->g_21.sf, (l_143[2][0] != ((l_135 != ((safe_sub_func_int32_t_s_s((((*l_146) = p_72) != (safe_add_func_int16_t_s_s(((*p_1014->g_150) = ((void*)0 == p_1014->g_150)), (((((((VECTOR(uint8_t, 2))(0x21L, 0xE8L)).odd & 0x06L) || p_72) , (void*)0) == l_124) , 0x32A5L)))), p_1014->g_115)) , l_135)) , &p_72)))), p_1014->g_96)) , 18446744073709551615UL)) || p_1014->g_24.s5), (*p_69))) == l_152), p_1014->g_50.s6, 0x73D79CAFL, 0x340C11E2L)).s26)), 1UL)).s7 , (-1L)));
        return p_1014->g_56;
    }
    else
    { /* block id: 41 */
        uint32_t l_232 = 1UL;
        VECTOR(int32_t, 8) l_235 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x4B60F8D7L), 0x4B60F8D7L), 0x4B60F8D7L, 0L, 0x4B60F8D7L);
        int32_t l_266 = 0x54F4D559L;
        int32_t l_267 = 0x4D27E44BL;
        int32_t l_270[9][5] = {{0x5D48B0E2L,0x1691744EL,0x76CBA468L,0x1691744EL,0x5D48B0E2L},{0x5D48B0E2L,0x1691744EL,0x76CBA468L,0x1691744EL,0x5D48B0E2L},{0x5D48B0E2L,0x1691744EL,0x76CBA468L,0x1691744EL,0x5D48B0E2L},{0x5D48B0E2L,0x1691744EL,0x76CBA468L,0x1691744EL,0x5D48B0E2L},{0x5D48B0E2L,0x1691744EL,0x76CBA468L,0x1691744EL,0x5D48B0E2L},{0x5D48B0E2L,0x1691744EL,0x76CBA468L,0x1691744EL,0x5D48B0E2L},{0x5D48B0E2L,0x1691744EL,0x76CBA468L,0x1691744EL,0x5D48B0E2L},{0x5D48B0E2L,0x1691744EL,0x76CBA468L,0x1691744EL,0x5D48B0E2L},{0x5D48B0E2L,0x1691744EL,0x76CBA468L,0x1691744EL,0x5D48B0E2L}};
        int16_t **l_288 = &p_1014->g_199;
        VECTOR(int8_t, 4) l_290 = (VECTOR(int8_t, 4))(0x2BL, (VECTOR(int8_t, 2))(0x2BL, 0x7CL), 0x7CL);
        uint64_t l_304 = 0x7FDFB0D7E6843E88L;
        uint32_t l_323 = 1UL;
        int32_t ***l_363 = &l_123;
        int8_t **l_440 = &l_124;
        uint8_t *l_443 = &l_387;
        uint32_t l_507 = 4294967295UL;
        int i, j;
        for (p_1014->g_147 = (-25); (p_1014->g_147 > (-21)); p_1014->g_147 = safe_add_func_int16_t_s_s(p_1014->g_147, 3))
        { /* block id: 44 */
            VECTOR(uint8_t, 16) l_164 = (VECTOR(uint8_t, 16))(0x1FL, (VECTOR(uint8_t, 4))(0x1FL, (VECTOR(uint8_t, 2))(0x1FL, 9UL), 9UL), 9UL, 0x1FL, 9UL, (VECTOR(uint8_t, 2))(0x1FL, 9UL), (VECTOR(uint8_t, 2))(0x1FL, 9UL), 0x1FL, 9UL, 0x1FL, 9UL);
            int32_t l_167 = 0x0A1B9E14L;
            int16_t l_169 = 0x15DEL;
            VECTOR(uint64_t, 4) l_175 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xF101BA2FB8516656L), 0xF101BA2FB8516656L);
            VECTOR(uint64_t, 16) l_182 = (VECTOR(uint64_t, 16))(18446744073709551607UL, (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 18446744073709551607UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(18446744073709551607UL, 18446744073709551615UL), 18446744073709551607UL, 18446744073709551615UL, 18446744073709551607UL, 18446744073709551615UL);
            uint32_t l_214 = 1UL;
            uint32_t l_215 = 0xFCBC6C6EL;
            int32_t l_247 = 1L;
            int32_t l_249 = 1L;
            VECTOR(uint16_t, 8) l_254 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x6801L), 0x6801L), 0x6801L, 1UL, 0x6801L);
            VECTOR(uint16_t, 8) l_256 = (VECTOR(uint16_t, 8))(0xA875L, (VECTOR(uint16_t, 4))(0xA875L, (VECTOR(uint16_t, 2))(0xA875L, 1UL), 1UL), 1UL, 0xA875L, 1UL);
            uint32_t *l_265[4][6] = {{(void*)0,(void*)0,&l_215,(void*)0,&l_215,(void*)0},{(void*)0,(void*)0,&l_215,(void*)0,&l_215,(void*)0},{(void*)0,(void*)0,&l_215,(void*)0,&l_215,(void*)0},{(void*)0,(void*)0,&l_215,(void*)0,&l_215,(void*)0}};
            int32_t l_268 = 0x73B193B9L;
            int32_t l_271 = 1L;
            int8_t l_292[5] = {0x7BL,0x7BL,0x7BL,0x7BL,0x7BL};
            int32_t l_300 = 0x11A97A59L;
            int32_t l_301 = 0L;
            int32_t l_302 = 0x1350BEF6L;
            int32_t l_303 = 0x71FA50CEL;
            uint8_t *l_345 = &p_1014->g_185;
            int i, j;
            for (p_1014->g_96 = 0; (p_1014->g_96 > (-16)); p_1014->g_96 = safe_sub_func_int64_t_s_s(p_1014->g_96, 9))
            { /* block id: 47 */
                uint8_t *l_165[3][10];
                int32_t l_166 = 0x3078386DL;
                int64_t *l_212 = &p_1014->g_96;
                VECTOR(uint8_t, 16) l_219 = (VECTOR(uint8_t, 16))(0x05L, (VECTOR(uint8_t, 4))(0x05L, (VECTOR(uint8_t, 2))(0x05L, 249UL), 249UL), 249UL, 0x05L, 249UL, (VECTOR(uint8_t, 2))(0x05L, 249UL), (VECTOR(uint8_t, 2))(0x05L, 249UL), 0x05L, 249UL, 0x05L, 249UL);
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 10; j++)
                        l_165[i][j] = (void*)0;
                }
                l_169 = ((safe_add_func_uint32_t_u_u((!GROUP_DIVERGE(1, 1)), (l_167 = (safe_lshift_func_int8_t_s_u((p_1014->g_115 ^= 0x3CL), (l_166 = ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(l_164.sfef2)))).w)))))) || (safe_unary_minus_func_int64_t_s(((l_167 ^= p_1014->g_119) == p_72))));
                if ((*p_1014->g_154))
                    continue;
                for (p_1014->g_115 = 0; (p_1014->g_115 > 2); ++p_1014->g_115)
                { /* block id: 56 */
                    VECTOR(int64_t, 8) l_180 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
                    int64_t *l_213 = (void*)0;
                    uint16_t *l_222 = (void*)0;
                    uint16_t *l_223 = (void*)0;
                    uint16_t *l_224 = (void*)0;
                    uint16_t *l_225 = (void*)0;
                    uint16_t *l_226 = (void*)0;
                    uint16_t *l_227 = (void*)0;
                    uint16_t *l_228 = (void*)0;
                    uint16_t *l_229 = (void*)0;
                    uint16_t *l_230 = (void*)0;
                    uint16_t *l_231[8][4];
                    int64_t *l_244 = (void*)0;
                    int32_t *l_246[7] = {&p_1014->g_216,&p_1014->g_216,&p_1014->g_216,&p_1014->g_216,&p_1014->g_216,&p_1014->g_216,&p_1014->g_216};
                    uint16_t **l_248 = &l_225;
                    int i, j;
                    for (i = 0; i < 8; i++)
                    {
                        for (j = 0; j < 4; j++)
                            l_231[i][j] = (void*)0;
                    }
                    for (p_72 = 15; (p_72 != 4); p_72--)
                    { /* block id: 59 */
                        uint64_t l_189 = 0x0F546469023DF189L;
                        int64_t l_190 = 0x4CFC64E1DA1D933AL;
                        int16_t *l_195 = &l_169;
                        int16_t **l_196 = &l_195;
                        int16_t **l_197 = (void*)0;
                        int16_t **l_198 = &p_1014->g_150;
                        int16_t *l_211 = &p_1014->g_151;
                        (*l_122) = (((p_1014->g_185 = (safe_unary_minus_func_uint8_t_u((((VECTOR(uint64_t, 8))(l_175.wyzzywzw)).s2 , ((safe_sub_func_uint64_t_u_u((safe_add_func_int16_t_s_s(((0x0AC53F83550C489AL < ((VECTOR(int64_t, 4))(0x22471E60DA4F5882L, ((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 8))(2L, 1L, 0x286CDD36E1F2821DL, 0x64AC731D9B203F3CL, 1L, 0x21A335962A1803D1L, 0x4EEAD068D1301E1DL, 0x197CB8FBB2B88A4EL)).s77, ((VECTOR(int64_t, 16))(l_180.s6557344425345262)).sd1))), 0x3048B0955FA615A5L)).z) != p_1014->g_151), p_72)), (((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(l_181.xx)).yxxxyyyyxyyxyxxy)).se , ((VECTOR(uint64_t, 16))(min(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(l_182.s9407d1ea)).s66)).yyxxxxxyxyxyyxxx, (uint64_t)((*l_121) <= ((VECTOR(int8_t, 8))(p_1014->g_183.wzyzxyxw)).s3)))).s6))) >= ((VECTOR(int16_t, 4))(p_1014->g_184.s3361)).y))))) < (255UL == (((safe_unary_minus_func_int16_t_s((p_69 == &p_1014->g_155[6][2]))) != ((l_189 ^= p_1014->g_155[6][2]) ^ l_190)) < p_1014->g_155[0][3]))) , &p_1014->g_119);
                        (*l_121) = (safe_mul_func_uint8_t_u_u((((safe_mod_func_int16_t_s_s((((((*l_196) = l_195) != (p_1014->g_199 = ((*l_198) = &p_1014->g_151))) | (~(((safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(p_1014->g_202.s14af)))), (safe_add_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), (0UL == (((p_72 , ((((VECTOR(uint64_t, 8))(p_1014->g_205.wwyzwzzw)).s4 >= l_169) < ((VECTOR(int64_t, 2))((-1L), (-5L))).even)) != 0x9509L) ^ (l_167 &= (safe_rshift_func_int8_t_s_s(((((safe_mul_func_int16_t_s_s(((*l_211) = ((VECTOR(int16_t, 16))(p_1014->g_210.sfcdeb692a35ed498)).s4), ((0x6F2CL | ((((l_212 != l_213) || l_180.s0) , l_166) <= l_214)) <= l_215))) && 0x49L) , l_189) ^ p_1014->g_155[0][4]), p_1014->g_216))))))), ((VECTOR(int16_t, 8))((-1L))), 0x0250L, 0x089FL, 0L)), ((VECTOR(int16_t, 16))(9L))))).s8, GROUP_DIVERGE(2, 1))) <= l_180.s5) ^ l_180.s4))) == (*p_70)), l_166)) ^ l_175.z) <= p_1014->g_2), FAKE_DIVERGE(p_1014->local_0_offset, get_local_id(0), 10)));
                        (*l_121) &= (safe_mul_func_int8_t_s_s((l_182.s5 , (p_1014->g_183.x &= 0L)), ((VECTOR(uint8_t, 16))(l_219.sa5fc61f8f8ee2ca6)).sd));
                    }
                    l_249 = ((safe_mul_func_uint16_t_u_u((l_232 = 65529UL), 0L)) < (safe_sub_func_uint16_t_u_u((((*l_248) = (((VECTOR(int32_t, 4))(0x3F40911AL, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(1L, 2L)).xxyy)).hi)).xyxxxxyx)))))).odd)))), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_235.s16424315)).hi)).wyxwxwzw, (int32_t)((safe_add_func_int16_t_s_s(p_72, ((!p_1014->g_184.s3) || p_1014->g_147))) , p_72), (int32_t)(l_247 = (safe_mul_func_int8_t_s_s(((l_167 &= (p_1014->g_22.w , (p_1014->g_245.s3 &= (((0x04L && ((safe_rshift_func_uint8_t_u_u((0x72L || 0x36L), p_72)) < 0x46L)) & 0x52FA5CC4L) , 0x400D427A97B437FCL)))) , l_235.s0), p_72)))))).s3337407107501655)).s88e9))))).odd)), 0x522ABE01L)).x , p_1014->g_199)) != (void*)0), l_180.s0)));
                }
            }
            (*l_122) = &l_247;
            if ((safe_mod_func_uint64_t_u_u((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 2))(l_254.s72)).yyxy, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 8))(l_255.wxyzwyxx)).s51))).xxyx))))).even)).yyxx, ((VECTOR(uint16_t, 16))(l_256.s2503041474176112)).sf350))).z, (((safe_rshift_func_int16_t_s_u(((p_70 != (p_71 = p_70)) | (!((~((safe_div_func_uint8_t_u_u(((p_1014->g_20.w != (safe_mul_func_uint8_t_u_u(255UL, (safe_sub_func_int32_t_s_s((~(((p_1014->g_273--) >= ((**l_122) &= (safe_sub_func_uint32_t_u_u((safe_rshift_func_int8_t_s_s(p_1014->g_151, (safe_div_func_int32_t_s_s(l_232, (l_249 &= (safe_mod_func_int64_t_s_s((safe_mul_func_uint16_t_u_u((safe_add_func_int8_t_s_s((l_288 == (((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),int8_t,((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 4))(0x51L, ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 8))(p_1014->g_289.xyyyxxyx)).s73, ((VECTOR(int8_t, 2))(l_290.zy))))), (-1L))), ((VECTOR(int8_t, 8))((-1L), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(p_1014->g_291.yyxx)))), ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(0x52L, 0x51L, 0x7DL, ((void*)0 == p_1014->g_150), (-5L), 0x5AL, 0x54L, (-1L))), 0x4AL, ((VECTOR(int8_t, 4))((-10L))), l_292[0], 5L, 1L)).s8d, ((VECTOR(int8_t, 2))(0x12L))))), 0x59L)).odd))).zyxyyzwwzzzwxyxy, (int8_t)p_1014->g_24.s7, (int8_t)p_1014->g_291.y))).even, ((VECTOR(int8_t, 8))(0x6BL)), ((VECTOR(int8_t, 8))(0x43L))))).hi)).xywzxwywxzwxwxwx, ((VECTOR(int8_t, 16))(0x14L)), ((VECTOR(int8_t, 16))(0x16L))))).s5 , &p_1014->g_150)), 255UL)), 0xBC31L)), 0x4B5C4F618083A385L))))))), p_72)))) != p_1014->g_245.s3)), 0x4363F34BL))))) ^ p_1014->g_210.s5), p_1014->g_210.sb)) | p_72)) < l_266))), 14)) >= l_254.s2) , (*p_1014->g_199)))), l_270[6][1])))
            { /* block id: 85 */
                int32_t *l_293 = &p_1014->g_155[5][1];
                int32_t *l_294 = &p_1014->g_119;
                int32_t *l_295 = (void*)0;
                int32_t *l_296 = (void*)0;
                int32_t *l_297[9][7] = {{(void*)0,&l_247,(void*)0,&l_247,(void*)0,(void*)0,&l_247},{(void*)0,&l_247,(void*)0,&l_247,(void*)0,(void*)0,&l_247},{(void*)0,&l_247,(void*)0,&l_247,(void*)0,(void*)0,&l_247},{(void*)0,&l_247,(void*)0,&l_247,(void*)0,(void*)0,&l_247},{(void*)0,&l_247,(void*)0,&l_247,(void*)0,(void*)0,&l_247},{(void*)0,&l_247,(void*)0,&l_247,(void*)0,(void*)0,&l_247},{(void*)0,&l_247,(void*)0,&l_247,(void*)0,(void*)0,&l_247},{(void*)0,&l_247,(void*)0,&l_247,(void*)0,(void*)0,&l_247},{(void*)0,&l_247,(void*)0,&l_247,(void*)0,(void*)0,&l_247}};
                int i, j;
                (*l_122) = func_73(p_69, p_1014);
                --l_304;
            }
            else
            { /* block id: 88 */
                if ((*p_1014->g_129))
                    break;
            }
            if ((*p_1014->g_154))
            { /* block id: 91 */
                int32_t *l_307[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                l_247 = 0x7BE2FB69L;
                if ((*p_69))
                    continue;
            }
            else
            { /* block id: 94 */
                int32_t *l_308 = &l_298;
                int32_t *l_309 = (void*)0;
                int32_t *l_310 = &l_300;
                int32_t *l_311 = (void*)0;
                int32_t *l_312 = (void*)0;
                int32_t *l_313 = &l_270[6][1];
                int32_t *l_314 = &l_167;
                int32_t *l_315 = &p_1014->g_119;
                int32_t *l_316 = &l_249;
                int32_t *l_317 = &l_299[8][3][0];
                int32_t *l_318 = &l_270[1][3];
                int32_t *l_319 = &l_270[6][1];
                int32_t *l_320[10] = {&l_300,&l_272,&l_300,&l_300,&l_272,&l_300,&l_300,&l_272,&l_300,&l_300};
                int32_t l_322 = (-7L);
                int i;
                --l_323;
                for (p_1014->g_151 = 0; (p_1014->g_151 == (-8)); --p_1014->g_151)
                { /* block id: 98 */
                    uint16_t *l_340 = (void*)0;
                    uint16_t *l_341 = (void*)0;
                    uint16_t *l_342 = (void*)0;
                    int64_t *l_343 = (void*)0;
                    int64_t *l_344 = &p_1014->g_96;
                    int32_t l_351 = (-8L);
                    int32_t l_354 = 1L;
                    l_354 = ((*p_1014->g_154) = (FAKE_DIVERGE(p_1014->global_1_offset, get_global_id(1), 10) == ((safe_rshift_func_uint16_t_u_s((safe_lshift_func_uint8_t_u_s(((*l_345) = (((((*l_344) = ((safe_add_func_uint32_t_u_u(p_1014->g_183.z, (safe_lshift_func_uint8_t_u_s((+(safe_rshift_func_uint16_t_u_u(l_290.w, (p_1014->g_24.s7 = (+(safe_sub_func_int8_t_s_s(0x75L, 1UL))))))), 3)))) && FAKE_DIVERGE(p_1014->group_1_offset, get_group_id(1), 10))) , (l_345 == (void*)0)) > (((((safe_lshift_func_int8_t_s_u(0x2FL, (safe_add_func_uint64_t_u_u((((l_351 &= ((l_270[1][2] = (p_72 == (((l_350 != &l_169) < FAKE_DIVERGE(p_1014->global_0_offset, get_global_id(0), 10)) <= (*p_69)))) && p_72)) || p_1014->g_245.s7) ^ 0x21CFF75EAE98639FL), 0x6685625D57A68ADCL)))) > GROUP_DIVERGE(0, 1)) < l_352) , l_344) != p_1014->g_353)) && (*l_121))), l_267)), l_354)) < GROUP_DIVERGE(2, 1))));
                    (*l_122) = (p_1014->g_210.sd , func_73(&l_271, p_1014));
                    l_270[6][1] = l_164.s4;
                }
            }
        }
        if ((((l_323 || (l_267 = (safe_rshift_func_uint16_t_u_s((((p_1014->g_357 != l_359) , &p_1014->g_96) == (p_1014->g_245.s6 , &l_352)), 7)))) < (safe_add_func_uint64_t_u_u(p_72, FAKE_DIVERGE(p_1014->local_0_offset, get_local_id(0), 10)))) <= (~(&l_122 != l_363))))
        { /* block id: 112 */
            uint32_t l_386 = 0UL;
            int32_t l_393 = 0x6222405DL;
            int32_t l_395 = 0x2CF93027L;
            int32_t l_396 = 0x07220A08L;
            int32_t l_397[9];
            int32_t l_403 = 0x22266E28L;
            int i;
            for (i = 0; i < 9; i++)
                l_397[i] = (-8L);
            for (l_352 = (-12); (l_352 <= 24); ++l_352)
            { /* block id: 115 */
                int64_t *l_366[6] = {(void*)0,&p_1014->g_96,(void*)0,(void*)0,&p_1014->g_96,(void*)0};
                int64_t *l_368 = &p_1014->g_96;
                int64_t **l_367 = &l_368;
                int8_t **l_372[4];
                int32_t l_385 = 0x628D1145L;
                int32_t l_394 = 9L;
                int32_t l_398 = 0x22A0ABE1L;
                int32_t l_399 = (-1L);
                int32_t l_402 = 0x559ED6A1L;
                int32_t l_404 = 0L;
                int32_t l_405 = 0x1672C573L;
                int32_t l_406 = 0x3D30E075L;
                int32_t l_407 = 0x353283B9L;
                int32_t l_408 = 0x1C7FD876L;
                int32_t l_409 = (-5L);
                int32_t l_410 = 0x66C9771FL;
                int16_t *l_414 = &p_1014->g_147;
                int i;
                for (i = 0; i < 4; i++)
                    l_372[i] = &l_128;
                l_369[0][1] &= (l_366[5] == ((*l_367) = l_366[0]));
                if (((safe_rshift_func_int8_t_s_u(((p_1014->g_373 = &p_1014->g_115) != (l_124 = &p_1014->g_115)), ((VECTOR(uint8_t, 16))(l_374.wxwywxxywyzzzwzz)).sd)) & (safe_add_func_uint16_t_u_u((&p_1014->g_119 == (void*)0), (((safe_rshift_func_int16_t_s_u((*p_1014->g_150), 12)) , ((!(safe_rshift_func_uint16_t_u_s(p_72, 3))) > (((((((((p_1014->g_22.w , (((safe_div_func_uint64_t_u_u((((safe_sub_func_uint8_t_u_u(p_72, (l_266 < 1UL))) == p_1014->g_20.y) == 0x20CCL), p_72)) ^ p_72) | l_385)) | (*p_70)) != p_72) ^ p_1014->g_2) < (*p_69)) != 0UL) && 0x3165692BF848020BL) != 0UL) || (*p_70)))) & l_386)))))
                { /* block id: 120 */
                    int32_t *l_388 = &l_369[4][1];
                    int32_t *l_389 = &l_270[5][4];
                    int32_t *l_390 = &l_299[9][5][1];
                    int32_t *l_391 = &l_270[1][1];
                    int32_t *l_392[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_392[i] = &p_1014->g_119;
                    l_385 ^= l_387;
                    l_411--;
                }
                else
                { /* block id: 123 */
                    return l_396;
                }
                l_266 &= ((void*)0 != l_414);
                if ((*p_69))
                    continue;
            }
            for (l_387 = 18; (l_387 >= 49); l_387 = safe_add_func_int16_t_s_s(l_387, 3))
            { /* block id: 131 */
                uint64_t l_417 = 18446744073709551615UL;
                l_417 = l_386;
            }
            l_432[0] &= (safe_mod_func_int16_t_s_s(((l_422 &= ((void*)0 == p_1014->g_420)) == ((*p_1014->g_373) >= (safe_lshift_func_int8_t_s_u((p_72 && (((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(p_1014->g_425.sc56bdeb9)))).s5 & (safe_add_func_int64_t_s_s((safe_rshift_func_int16_t_s_u(((void*)0 != p_70), 0)), (safe_sub_func_int8_t_s_s(p_72, ((((&p_1014->g_97[4][3][0] != (void*)0) , 0x5CE82AB1L) , p_1014->g_291.y) <= 255UL))))))), 0)))), 65535UL));
        }
        else
        { /* block id: 136 */
            uint8_t *l_444 = &p_1014->g_185;
            int32_t l_445[2][5][5] = {{{0x6FAC7432L,0x15F1648DL,(-7L),0x15F1648DL,0x6FAC7432L},{0x6FAC7432L,0x15F1648DL,(-7L),0x15F1648DL,0x6FAC7432L},{0x6FAC7432L,0x15F1648DL,(-7L),0x15F1648DL,0x6FAC7432L},{0x6FAC7432L,0x15F1648DL,(-7L),0x15F1648DL,0x6FAC7432L},{0x6FAC7432L,0x15F1648DL,(-7L),0x15F1648DL,0x6FAC7432L}},{{0x6FAC7432L,0x15F1648DL,(-7L),0x15F1648DL,0x6FAC7432L},{0x6FAC7432L,0x15F1648DL,(-7L),0x15F1648DL,0x6FAC7432L},{0x6FAC7432L,0x15F1648DL,(-7L),0x15F1648DL,0x6FAC7432L},{0x6FAC7432L,0x15F1648DL,(-7L),0x15F1648DL,0x6FAC7432L},{0x6FAC7432L,0x15F1648DL,(-7L),0x15F1648DL,0x6FAC7432L}}};
            int i, j, k;
            l_445[1][3][1] = (p_1014->g_24.s7 > (safe_mod_func_int16_t_s_s((((((safe_lshift_func_uint8_t_u_s(((((void*)0 != l_439[4]) < ((((*p_1014->g_373) >= ((VECTOR(int8_t, 8))(1L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(9L, (&p_1014->g_150 == &p_1014->g_150), ((l_440 != (void*)0) , (safe_div_func_uint64_t_u_u(p_72, 1L))), (*p_1014->g_373), 3L, ((VECTOR(int8_t, 2))(6L)), 0x09L)).s76)), (-3L), ((VECTOR(int8_t, 2))((-3L))), 0x2AL, 0L)).s2) , l_443) != l_444)) <= p_72), 0)) , 0x67L) , p_72) != p_72) , p_72), (*p_1014->g_150))));
        }
        for (l_422 = 0; (l_422 <= (-22)); l_422--)
        { /* block id: 141 */
            int64_t l_459[3];
            uint32_t l_460 = 0xB1437AB8L;
            uint32_t l_491 = 9UL;
            int i;
            for (i = 0; i < 3; i++)
                l_459[i] = 5L;
            for (p_1014->g_57 = 24; (p_1014->g_57 != 18); p_1014->g_57 = safe_sub_func_int64_t_s_s(p_1014->g_57, 1))
            { /* block id: 144 */
                uint64_t l_450 = 18446744073709551615UL;
                uint32_t *l_455 = &l_323;
                int64_t **l_505[7][1] = {{&l_503},{&l_503},{&l_503},{&l_503},{&l_503},{&l_503},{&l_503}};
                int64_t **l_506 = &l_503;
                int i, j;
                if ((l_450 , ((safe_lshift_func_uint16_t_u_s(1UL, (p_72 > 0UL))) , (((*l_455) ^= p_72) , ((void*)0 == &p_1014->g_373)))))
                { /* block id: 146 */
                    int32_t *l_461 = (void*)0;
                    int32_t *l_462 = (void*)0;
                    int32_t *l_463 = &l_298;
                    (*l_463) ^= ((*p_1014->g_129) = (l_460 = (l_459[1] = ((safe_lshift_func_int8_t_s_s((!((VECTOR(int8_t, 16))(p_1014->g_458.s6731426514261276)).sc), 7)) || 0x04L))));
                    (*l_463) &= (safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 2))(0x3B00L, 0x26B8L)).even, 3));
                }
                else
                { /* block id: 152 */
                    uint64_t l_472 = 0UL;
                    int64_t ***l_504[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_504[i] = &l_502;
                    for (l_304 = 27; (l_304 >= 34); l_304 = safe_add_func_uint64_t_u_u(l_304, 8))
                    { /* block id: 155 */
                        int32_t l_468 = (-3L);
                        int32_t *l_469 = (void*)0;
                        int32_t *l_470 = &l_270[6][1];
                        int32_t *l_471[5] = {&p_1014->g_155[6][2],&p_1014->g_155[6][2],&p_1014->g_155[6][2],&p_1014->g_155[6][2],&p_1014->g_155[6][2]};
                        int i;
                        (*l_122) = func_73((p_71 = ((*l_122) = p_70)), p_1014);
                        --l_472;
                        (*l_470) ^= 0x5DF6788CL;
                        (*l_122) = (p_1014->g_97[1][0][3] = p_71);
                    }
                    (*l_122) = &p_1014->g_119;
                    (**l_122) = ((((safe_sub_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s((safe_lshift_func_int16_t_s_s(((safe_add_func_uint64_t_u_u(((safe_rshift_func_int8_t_s_s((safe_div_func_int32_t_s_s(0x3FA430EAL, (safe_sub_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u(l_491, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),VECTOR(uint64_t, 2),((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(p_1014->g_492.yy)))), ((VECTOR(uint64_t, 4))(p_1014->g_493.s119c)).hi, ((VECTOR(uint64_t, 4))(abs(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 16))(p_1014->g_494.xzxyzwzzxwwyzwxz)).sb9, (int64_t)(p_72 >= ((void*)0 == &p_1014->g_185))))).yxxx))))).lo))), 0xEA9F71B3A6316550L, 0x86FEB07550F8A0F2L)).y)), 4294967292UL)))), ((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 4))(p_1014->g_497.s6cc1)).zyxyzxyz, (int8_t)((((((VECTOR(int8_t, 8))(0x2CL, (safe_lshift_func_uint16_t_u_s((((((safe_add_func_uint64_t_u_u(((p_72 , (l_505[4][0] = l_502)) != (l_506 = &l_503)), GROUP_DIVERGE(1, 1))) , p_1014->g_183.x) , 4UL) >= l_459[0]) >= p_1014->g_185), (*p_1014->g_150))), ((VECTOR(int8_t, 4))((-4L))), 5L, (-1L))).s0 < l_450) <= l_507) , p_72) ^ 0UL), (int8_t)p_72))).s4)) >= FAKE_DIVERGE(p_1014->global_1_offset, get_global_id(1), 10)), p_1014->g_155[6][2])) <= (*p_69)), 4)), l_472)), 0xD7D9L)) >= (*p_1014->g_373)) , l_472) , (*p_70));
                }
                (*p_1014->g_129) &= l_450;
            }
        }
    }
    for (p_1014->g_273 = (-18); (p_1014->g_273 == 12); p_1014->g_273 = safe_add_func_uint16_t_u_u(p_1014->g_273, 5))
    { /* block id: 175 */
        int32_t l_511 = 1L;
        int32_t *l_512 = &p_1014->g_155[7][1];
        int32_t *l_513 = &p_1014->g_119;
        int32_t *l_514 = &l_298;
        int32_t *l_515[4] = {&p_1014->g_119,&p_1014->g_119,&p_1014->g_119,&p_1014->g_119};
        int8_t l_516 = 0x52L;
        int i;
        l_510 = &l_503;
        --l_518;
    }
    if ((((*l_503) = p_72) >= ((((*l_521)--) & (p_1014->g_494.y = (*p_1014->g_420))) , (FAKE_DIVERGE(p_1014->global_2_offset, get_global_id(2), 10) <= (p_72 , ((*l_521)++))))))
    { /* block id: 183 */
        uint32_t l_530 = 0xD6357AC9L;
        l_530--;
    }
    else
    { /* block id: 185 */
        uint8_t *l_533 = (void*)0;
        int32_t l_536 = 0x08B9A4D7L;
        uint32_t l_549 = 0x308F3C69L;
        int32_t *l_550[1];
        int i;
        for (i = 0; i < 1; i++)
            l_550[i] = &p_1014->g_119;
        (*p_1014->g_154) = ((((*l_350) |= ((void*)0 != l_533)) != ((*p_1014->g_150) = ((p_72 , 0x65B48709L) , (~((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(9L, 0x7D85L)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 2))(0x4A0FL, 0x1D2FL)), (int16_t)(safe_div_func_uint16_t_u_u(l_536, (((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))((-4L), ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 16))(l_537.xyxxxxyxxxyyyxyx)).see, ((VECTOR(int16_t, 8))(0x6E81L, (safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), (safe_add_func_int8_t_s_s(((safe_mod_func_int32_t_s_s(((((~((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 16))(l_544.xwzwwwzwxxzzxzzy)), ((VECTOR(uint32_t, 2))(4294967295UL, 7UL)).yxxyyxxyyxxyyxxx))).lo, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 4))(l_545.s3634)).zyzyzzwzwzzxyyyw, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))((-1L), (((safe_rshift_func_uint8_t_u_u((((VECTOR(int64_t, 16))(l_548.s3f216dd5d6677543)).s5 , (l_536 != l_536)), ((l_536 == (((((((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 16))(clz(((VECTOR(uint16_t, 16))(l_536, ((VECTOR(uint16_t, 4))(0xEFCFL)), 0x1B2BL, ((VECTOR(uint16_t, 8))(9UL)), 65532UL, 0x66C2L))))), ((VECTOR(uint16_t, 16))(0x89F6L))))).s38, ((VECTOR(uint16_t, 2))(0x7035L))))).odd , (-1L)) || p_72) | 0x55BD0DEFL) <= p_1014->g_497.s6) , (*p_1014->g_199))) & 7UL))) , (*p_1014->g_420)) < 5L), 0L, 0L)).lo)).xxxyxyxxyxxxxyyy))))).s22)), ((VECTOR(int64_t, 2))(0L))))), 0x658399C1A534825DL, 5L)).wzxzwxwy))).s1) , (void*)0) == p_1014->g_199) && (*p_70)), p_72)) , p_72), l_549)))), (-1L), ((VECTOR(int16_t, 2))(0L)), ((VECTOR(int16_t, 2))(1L)), 0x3431L)).s33, ((VECTOR(int16_t, 2))((-1L)))))), 6L, 0x26F9L, 0x546BL, (-3L), 0L, ((VECTOR(int16_t, 2))(0x7F00L)), 0L, 0x11E8L, 0x1A57L, (*p_1014->g_199), 1L, (-1L))).s9a)).even | l_549)))))).yxxy)), 0x0EF8L, 0x536EL)).hi, ((VECTOR(int16_t, 4))(0x1C71L))))).wwyzwxyyxxyxwzwz))).scb16)).z)))) <= 0x1AB7AE47L);
        (*p_1014->g_154) = 0x434E658EL;
    }
    return (*p_1014->g_373);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_73(int32_t * p_74, struct S0 * p_1014)
{ /* block id: 14 */
    return &p_1014->g_2;
}


/* ------------------------------------------ */
/* 
 * reads : p_1014->g_50 p_1014->g_115 p_1014->g_118 p_1014->g_2
 * writes: p_1014->g_115 p_1014->g_96 p_1014->g_119
 */
int32_t  func_80(int64_t  p_81, int32_t  p_82, int32_t ** p_83, int32_t * p_84, uint64_t  p_85, struct S0 * p_1014)
{ /* block id: 21 */
    uint64_t l_100[7] = {8UL,8UL,8UL,8UL,8UL,8UL,8UL};
    int32_t *l_101 = (void*)0;
    int32_t l_102 = 6L;
    int32_t l_103 = (-1L);
    VECTOR(uint8_t, 16) l_106 = (VECTOR(uint8_t, 16))(0xB5L, (VECTOR(uint8_t, 4))(0xB5L, (VECTOR(uint8_t, 2))(0xB5L, 255UL), 255UL), 255UL, 0xB5L, 255UL, (VECTOR(uint8_t, 2))(0xB5L, 255UL), (VECTOR(uint8_t, 2))(0xB5L, 255UL), 0xB5L, 255UL, 0xB5L, 255UL);
    VECTOR(uint8_t, 2) l_109 = (VECTOR(uint8_t, 2))(0xF4L, 255UL);
    int8_t *l_114 = &p_1014->g_115;
    uint32_t l_116[1][1][3];
    int64_t *l_117[9] = {&p_1014->g_96,&p_1014->g_96,&p_1014->g_96,&p_1014->g_96,&p_1014->g_96,&p_1014->g_96,&p_1014->g_96,&p_1014->g_96,&p_1014->g_96};
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 3; k++)
                l_116[i][j][k] = 0x5B7D993EL;
        }
    }
    l_103 = ((safe_add_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), l_100[2])) , (l_102 = l_100[4]));
    (*p_1014->g_118) = (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(l_106.sb4)).hi, ((safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(l_109.yxyxyyyyyyxxyxxy)).s6, 5)) , ((safe_add_func_int64_t_s_s(((((safe_lshift_func_uint16_t_u_u((~p_1014->g_50.s0), 13)) | l_102) | ((*l_114) |= 0x28L)) , p_82), (p_1014->g_96 = l_116[0][0][2]))) != 9L))));
    return (*p_84);
}


/* ------------------------------------------ */
/* 
 * reads : p_1014->g_25
 * writes:
 */
int8_t  func_86(int64_t  p_87, uint32_t  p_88, int32_t * p_89, uint64_t  p_90, int32_t ** p_91, struct S0 * p_1014)
{ /* block id: 19 */
    return p_1014->g_25.s5;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1015;
    struct S0* p_1014 = &c_1015;
    struct S0 c_1016 = {
        1L, // p_1014->g_2
        (VECTOR(uint16_t, 4))(0xC31EL, (VECTOR(uint16_t, 2))(0xC31EL, 1UL), 1UL), // p_1014->g_20
        (VECTOR(uint16_t, 16))(0x7EF2L, (VECTOR(uint16_t, 4))(0x7EF2L, (VECTOR(uint16_t, 2))(0x7EF2L, 0UL), 0UL), 0UL, 0x7EF2L, 0UL, (VECTOR(uint16_t, 2))(0x7EF2L, 0UL), (VECTOR(uint16_t, 2))(0x7EF2L, 0UL), 0x7EF2L, 0UL, 0x7EF2L, 0UL), // p_1014->g_21
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xDBA1L), 0xDBA1L), // p_1014->g_22
        (VECTOR(uint16_t, 8))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 0xF0AEL), 0xF0AEL), 0xF0AEL, 9UL, 0xF0AEL), // p_1014->g_24
        (VECTOR(uint16_t, 16))(0x0B56L, (VECTOR(uint16_t, 4))(0x0B56L, (VECTOR(uint16_t, 2))(0x0B56L, 65528UL), 65528UL), 65528UL, 0x0B56L, 65528UL, (VECTOR(uint16_t, 2))(0x0B56L, 65528UL), (VECTOR(uint16_t, 2))(0x0B56L, 65528UL), 0x0B56L, 65528UL, 0x0B56L, 65528UL), // p_1014->g_25
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x36ABL), 0x36ABL), 0x36ABL, 0L, 0x36ABL, (VECTOR(int16_t, 2))(0L, 0x36ABL), (VECTOR(int16_t, 2))(0L, 0x36ABL), 0L, 0x36ABL, 0L, 0x36ABL), // p_1014->g_50
        0x38BA7019L, // p_1014->g_56
        0xB7BAF68603386B47L, // p_1014->g_57
        0x45F50B00A4979765L, // p_1014->g_96
        {{{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2}},{{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2}},{{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2}},{{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2}},{{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2}},{{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2}},{{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2},{(void*)0,&p_1014->g_2,&p_1014->g_2,&p_1014->g_2}}}, // p_1014->g_97
        0L, // p_1014->g_115
        0L, // p_1014->g_119
        &p_1014->g_119, // p_1014->g_118
        &p_1014->g_119, // p_1014->g_129
        0L, // p_1014->g_147
        0x13DFL, // p_1014->g_151
        &p_1014->g_151, // p_1014->g_150
        {{6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L}}, // p_1014->g_155
        &p_1014->g_155[6][2], // p_1014->g_154
        (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), (-10L)), (-10L)), // p_1014->g_183
        (VECTOR(int16_t, 8))(0x1246L, (VECTOR(int16_t, 4))(0x1246L, (VECTOR(int16_t, 2))(0x1246L, 0x1F7EL), 0x1F7EL), 0x1F7EL, 0x1246L, 0x1F7EL), // p_1014->g_184
        0x46L, // p_1014->g_185
        &p_1014->g_151, // p_1014->g_199
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 2L), 2L), 2L, 0L, 2L, (VECTOR(int16_t, 2))(0L, 2L), (VECTOR(int16_t, 2))(0L, 2L), 0L, 2L, 0L, 2L), // p_1014->g_202
        (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 2UL), 2UL), // p_1014->g_205
        (VECTOR(int16_t, 16))(0x0843L, (VECTOR(int16_t, 4))(0x0843L, (VECTOR(int16_t, 2))(0x0843L, 4L), 4L), 4L, 0x0843L, 4L, (VECTOR(int16_t, 2))(0x0843L, 4L), (VECTOR(int16_t, 2))(0x0843L, 4L), 0x0843L, 4L, 0x0843L, 4L), // p_1014->g_210
        0x561E63C6L, // p_1014->g_216
        (VECTOR(int64_t, 8))(0x438CE79D49268396L, (VECTOR(int64_t, 4))(0x438CE79D49268396L, (VECTOR(int64_t, 2))(0x438CE79D49268396L, 0L), 0L), 0L, 0x438CE79D49268396L, 0L), // p_1014->g_245
        (VECTOR(int64_t, 2))(0L, 0x1AED80D39D857649L), // p_1014->g_269
        9UL, // p_1014->g_273
        (VECTOR(int8_t, 2))(2L, 0x45L), // p_1014->g_289
        (VECTOR(int8_t, 2))(0x58L, (-3L)), // p_1014->g_291
        (-7L), // p_1014->g_321
        (void*)0, // p_1014->g_353
        (void*)0, // p_1014->g_358
        &p_1014->g_358, // p_1014->g_357
        &p_1014->g_115, // p_1014->g_373
        {0x776CB7329FADD9B3L,0x776CB7329FADD9B3L,0x776CB7329FADD9B3L,0x776CB7329FADD9B3L}, // p_1014->g_421
        &p_1014->g_421[0], // p_1014->g_420
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int16_t, 2))(1L, 0L), (VECTOR(int16_t, 2))(1L, 0L), 1L, 0L, 1L, 0L), // p_1014->g_425
        (VECTOR(int8_t, 8))(0x26L, (VECTOR(int8_t, 4))(0x26L, (VECTOR(int8_t, 2))(0x26L, (-7L)), (-7L)), (-7L), 0x26L, (-7L)), // p_1014->g_458
        (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), // p_1014->g_492
        (VECTOR(uint64_t, 16))(0xB83A6C9D3FB8D053L, (VECTOR(uint64_t, 4))(0xB83A6C9D3FB8D053L, (VECTOR(uint64_t, 2))(0xB83A6C9D3FB8D053L, 18446744073709551611UL), 18446744073709551611UL), 18446744073709551611UL, 0xB83A6C9D3FB8D053L, 18446744073709551611UL, (VECTOR(uint64_t, 2))(0xB83A6C9D3FB8D053L, 18446744073709551611UL), (VECTOR(uint64_t, 2))(0xB83A6C9D3FB8D053L, 18446744073709551611UL), 0xB83A6C9D3FB8D053L, 18446744073709551611UL, 0xB83A6C9D3FB8D053L, 18446744073709551611UL), // p_1014->g_493
        (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 0x1CD64F70A7E7F123L), 0x1CD64F70A7E7F123L), // p_1014->g_494
        (VECTOR(int8_t, 16))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x73L), 0x73L), 0x73L, (-2L), 0x73L, (VECTOR(int8_t, 2))((-2L), 0x73L), (VECTOR(int8_t, 2))((-2L), 0x73L), (-2L), 0x73L, (-2L), 0x73L), // p_1014->g_497
        4294967287UL, // p_1014->g_551
        &p_1014->g_97[0][1][2], // p_1014->g_563
        &p_1014->g_119, // p_1014->g_565
        &p_1014->g_97[4][3][0], // p_1014->g_574
        (VECTOR(uint8_t, 16))(0xFFL, (VECTOR(uint8_t, 4))(0xFFL, (VECTOR(uint8_t, 2))(0xFFL, 0xC3L), 0xC3L), 0xC3L, 0xFFL, 0xC3L, (VECTOR(uint8_t, 2))(0xFFL, 0xC3L), (VECTOR(uint8_t, 2))(0xFFL, 0xC3L), 0xFFL, 0xC3L, 0xFFL, 0xC3L), // p_1014->g_614
        (VECTOR(int8_t, 2))(0x46L, 0x76L), // p_1014->g_616
        (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 2L), 2L), // p_1014->g_618
        (void*)0, // p_1014->g_625
        0x53L, // p_1014->g_651
        0xC712BB3FA2FBD65FL, // p_1014->g_652
        (VECTOR(uint8_t, 16))(8UL, (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 0x7BL), 0x7BL), 0x7BL, 8UL, 0x7BL, (VECTOR(uint8_t, 2))(8UL, 0x7BL), (VECTOR(uint8_t, 2))(8UL, 0x7BL), 8UL, 0x7BL, 8UL, 0x7BL), // p_1014->g_669
        (void*)0, // p_1014->g_678
        0x37B8DA57L, // p_1014->g_682
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1014->g_690
        &p_1014->g_97[4][3][0], // p_1014->g_691
        {{&p_1014->g_155[4][4],&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_155[4][4],&p_1014->g_155[4][4],&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_155[4][4]},{&p_1014->g_155[4][4],&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_155[4][4],&p_1014->g_155[4][4],&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_155[4][4]},{&p_1014->g_155[4][4],&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_155[4][4],&p_1014->g_155[4][4],&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_155[4][4]},{&p_1014->g_155[4][4],&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_155[4][4],&p_1014->g_155[4][4],&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_155[4][4]},{&p_1014->g_155[4][4],&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_155[4][4],&p_1014->g_155[4][4],&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_155[4][4]},{&p_1014->g_155[4][4],&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_155[4][4],&p_1014->g_155[4][4],&p_1014->g_2,&p_1014->g_2,&p_1014->g_2,&p_1014->g_155[4][4]}}, // p_1014->g_701
        {{{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]}},{{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]}},{{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]}},{{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]},{&p_1014->g_155[4][4]}}}, // p_1014->g_702
        {{(void*)0,&p_1014->g_185,&p_1014->g_651,&p_1014->g_185,&p_1014->g_185},{(void*)0,&p_1014->g_185,&p_1014->g_651,&p_1014->g_185,&p_1014->g_185},{(void*)0,&p_1014->g_185,&p_1014->g_651,&p_1014->g_185,&p_1014->g_185},{(void*)0,&p_1014->g_185,&p_1014->g_651,&p_1014->g_185,&p_1014->g_185},{(void*)0,&p_1014->g_185,&p_1014->g_651,&p_1014->g_185,&p_1014->g_185},{(void*)0,&p_1014->g_185,&p_1014->g_651,&p_1014->g_185,&p_1014->g_185},{(void*)0,&p_1014->g_185,&p_1014->g_651,&p_1014->g_185,&p_1014->g_185},{(void*)0,&p_1014->g_185,&p_1014->g_651,&p_1014->g_185,&p_1014->g_185}}, // p_1014->g_712
        {{&p_1014->g_712[2][4],&p_1014->g_712[7][4],&p_1014->g_712[7][3],(void*)0,&p_1014->g_712[4][2],&p_1014->g_712[4][2],(void*)0,&p_1014->g_712[7][3],&p_1014->g_712[7][4],&p_1014->g_712[2][4]},{&p_1014->g_712[2][4],&p_1014->g_712[7][4],&p_1014->g_712[7][3],(void*)0,&p_1014->g_712[4][2],&p_1014->g_712[4][2],(void*)0,&p_1014->g_712[7][3],&p_1014->g_712[7][4],&p_1014->g_712[2][4]},{&p_1014->g_712[2][4],&p_1014->g_712[7][4],&p_1014->g_712[7][3],(void*)0,&p_1014->g_712[4][2],&p_1014->g_712[4][2],(void*)0,&p_1014->g_712[7][3],&p_1014->g_712[7][4],&p_1014->g_712[2][4]},{&p_1014->g_712[2][4],&p_1014->g_712[7][4],&p_1014->g_712[7][3],(void*)0,&p_1014->g_712[4][2],&p_1014->g_712[4][2],(void*)0,&p_1014->g_712[7][3],&p_1014->g_712[7][4],&p_1014->g_712[2][4]},{&p_1014->g_712[2][4],&p_1014->g_712[7][4],&p_1014->g_712[7][3],(void*)0,&p_1014->g_712[4][2],&p_1014->g_712[4][2],(void*)0,&p_1014->g_712[7][3],&p_1014->g_712[7][4],&p_1014->g_712[2][4]},{&p_1014->g_712[2][4],&p_1014->g_712[7][4],&p_1014->g_712[7][3],(void*)0,&p_1014->g_712[4][2],&p_1014->g_712[4][2],(void*)0,&p_1014->g_712[7][3],&p_1014->g_712[7][4],&p_1014->g_712[2][4]},{&p_1014->g_712[2][4],&p_1014->g_712[7][4],&p_1014->g_712[7][3],(void*)0,&p_1014->g_712[4][2],&p_1014->g_712[4][2],(void*)0,&p_1014->g_712[7][3],&p_1014->g_712[7][4],&p_1014->g_712[2][4]}}, // p_1014->g_711
        &p_1014->g_57, // p_1014->g_727
        (VECTOR(int8_t, 8))(0x05L, (VECTOR(int8_t, 4))(0x05L, (VECTOR(int8_t, 2))(0x05L, (-10L)), (-10L)), (-10L), 0x05L, (-10L)), // p_1014->g_754
        (VECTOR(int32_t, 16))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x258DC786L), 0x258DC786L), 0x258DC786L, 4L, 0x258DC786L, (VECTOR(int32_t, 2))(4L, 0x258DC786L), (VECTOR(int32_t, 2))(4L, 0x258DC786L), 4L, 0x258DC786L, 4L, 0x258DC786L), // p_1014->g_756
        (VECTOR(uint8_t, 2))(255UL, 0xE8L), // p_1014->g_765
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0UL), 0UL), // p_1014->g_770
        (void*)0, // p_1014->g_785
        &p_1014->g_785, // p_1014->g_784
        &p_1014->g_784, // p_1014->g_783
        (VECTOR(int32_t, 2))(0x47B3CD29L, 0L), // p_1014->g_792
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), // p_1014->g_793
        (VECTOR(int8_t, 8))(0x11L, (VECTOR(int8_t, 4))(0x11L, (VECTOR(int8_t, 2))(0x11L, 0x13L), 0x13L), 0x13L, 0x11L, 0x13L), // p_1014->g_804
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x08L), 0x08L), 0x08L, 0L, 0x08L, (VECTOR(int8_t, 2))(0L, 0x08L), (VECTOR(int8_t, 2))(0L, 0x08L), 0L, 0x08L, 0L, 0x08L), // p_1014->g_805
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int8_t, 2))(0L, (-1L)), (VECTOR(int8_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L)), // p_1014->g_806
        (VECTOR(int8_t, 16))((-10L), (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), (-9L)), (-9L)), (-9L), (-10L), (-9L), (VECTOR(int8_t, 2))((-10L), (-9L)), (VECTOR(int8_t, 2))((-10L), (-9L)), (-10L), (-9L), (-10L), (-9L)), // p_1014->g_807
        (VECTOR(int64_t, 2))(0L, 1L), // p_1014->g_822
        1L, // p_1014->g_841
        (VECTOR(uint32_t, 2))(1UL, 9UL), // p_1014->g_842
        (VECTOR(int8_t, 16))((-10L), (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), 0x20L), 0x20L), 0x20L, (-10L), 0x20L, (VECTOR(int8_t, 2))((-10L), 0x20L), (VECTOR(int8_t, 2))((-10L), 0x20L), (-10L), 0x20L, (-10L), 0x20L), // p_1014->g_859
        (VECTOR(int8_t, 2))(0x41L, 5L), // p_1014->g_860
        (VECTOR(int64_t, 16))(8L, (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, 0x78FCFAB9B45696BEL), 0x78FCFAB9B45696BEL), 0x78FCFAB9B45696BEL, 8L, 0x78FCFAB9B45696BEL, (VECTOR(int64_t, 2))(8L, 0x78FCFAB9B45696BEL), (VECTOR(int64_t, 2))(8L, 0x78FCFAB9B45696BEL), 8L, 0x78FCFAB9B45696BEL, 8L, 0x78FCFAB9B45696BEL), // p_1014->g_867
        0xCBL, // p_1014->g_912
        {0xEDB2B7C9L,0xEDB2B7C9L,0xEDB2B7C9L,0xEDB2B7C9L,0xEDB2B7C9L}, // p_1014->g_919
        (VECTOR(uint32_t, 16))(0xFB48C657L, (VECTOR(uint32_t, 4))(0xFB48C657L, (VECTOR(uint32_t, 2))(0xFB48C657L, 0xE22189EBL), 0xE22189EBL), 0xE22189EBL, 0xFB48C657L, 0xE22189EBL, (VECTOR(uint32_t, 2))(0xFB48C657L, 0xE22189EBL), (VECTOR(uint32_t, 2))(0xFB48C657L, 0xE22189EBL), 0xFB48C657L, 0xE22189EBL, 0xFB48C657L, 0xE22189EBL), // p_1014->g_920
        1L, // p_1014->g_922
        6UL, // p_1014->g_964
        (VECTOR(uint64_t, 8))(0xBEC75E522EEDBE85L, (VECTOR(uint64_t, 4))(0xBEC75E522EEDBE85L, (VECTOR(uint64_t, 2))(0xBEC75E522EEDBE85L, 0xB26501B3C35461ADL), 0xB26501B3C35461ADL), 0xB26501B3C35461ADL, 0xBEC75E522EEDBE85L, 0xB26501B3C35461ADL), // p_1014->g_976
        (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), // p_1014->g_979
        0x4D4A0C73L, // p_1014->g_1002
        sequence_input[get_global_id(0)], // p_1014->global_0_offset
        sequence_input[get_global_id(1)], // p_1014->global_1_offset
        sequence_input[get_global_id(2)], // p_1014->global_2_offset
        sequence_input[get_local_id(0)], // p_1014->local_0_offset
        sequence_input[get_local_id(1)], // p_1014->local_1_offset
        sequence_input[get_local_id(2)], // p_1014->local_2_offset
        sequence_input[get_group_id(0)], // p_1014->group_0_offset
        sequence_input[get_group_id(1)], // p_1014->group_1_offset
        sequence_input[get_group_id(2)], // p_1014->group_2_offset
    };
    c_1015 = c_1016;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1014);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1014->g_2, "p_1014->g_2", print_hash_value);
    transparent_crc(p_1014->g_20.x, "p_1014->g_20.x", print_hash_value);
    transparent_crc(p_1014->g_20.y, "p_1014->g_20.y", print_hash_value);
    transparent_crc(p_1014->g_20.z, "p_1014->g_20.z", print_hash_value);
    transparent_crc(p_1014->g_20.w, "p_1014->g_20.w", print_hash_value);
    transparent_crc(p_1014->g_21.s0, "p_1014->g_21.s0", print_hash_value);
    transparent_crc(p_1014->g_21.s1, "p_1014->g_21.s1", print_hash_value);
    transparent_crc(p_1014->g_21.s2, "p_1014->g_21.s2", print_hash_value);
    transparent_crc(p_1014->g_21.s3, "p_1014->g_21.s3", print_hash_value);
    transparent_crc(p_1014->g_21.s4, "p_1014->g_21.s4", print_hash_value);
    transparent_crc(p_1014->g_21.s5, "p_1014->g_21.s5", print_hash_value);
    transparent_crc(p_1014->g_21.s6, "p_1014->g_21.s6", print_hash_value);
    transparent_crc(p_1014->g_21.s7, "p_1014->g_21.s7", print_hash_value);
    transparent_crc(p_1014->g_21.s8, "p_1014->g_21.s8", print_hash_value);
    transparent_crc(p_1014->g_21.s9, "p_1014->g_21.s9", print_hash_value);
    transparent_crc(p_1014->g_21.sa, "p_1014->g_21.sa", print_hash_value);
    transparent_crc(p_1014->g_21.sb, "p_1014->g_21.sb", print_hash_value);
    transparent_crc(p_1014->g_21.sc, "p_1014->g_21.sc", print_hash_value);
    transparent_crc(p_1014->g_21.sd, "p_1014->g_21.sd", print_hash_value);
    transparent_crc(p_1014->g_21.se, "p_1014->g_21.se", print_hash_value);
    transparent_crc(p_1014->g_21.sf, "p_1014->g_21.sf", print_hash_value);
    transparent_crc(p_1014->g_22.x, "p_1014->g_22.x", print_hash_value);
    transparent_crc(p_1014->g_22.y, "p_1014->g_22.y", print_hash_value);
    transparent_crc(p_1014->g_22.z, "p_1014->g_22.z", print_hash_value);
    transparent_crc(p_1014->g_22.w, "p_1014->g_22.w", print_hash_value);
    transparent_crc(p_1014->g_24.s0, "p_1014->g_24.s0", print_hash_value);
    transparent_crc(p_1014->g_24.s1, "p_1014->g_24.s1", print_hash_value);
    transparent_crc(p_1014->g_24.s2, "p_1014->g_24.s2", print_hash_value);
    transparent_crc(p_1014->g_24.s3, "p_1014->g_24.s3", print_hash_value);
    transparent_crc(p_1014->g_24.s4, "p_1014->g_24.s4", print_hash_value);
    transparent_crc(p_1014->g_24.s5, "p_1014->g_24.s5", print_hash_value);
    transparent_crc(p_1014->g_24.s6, "p_1014->g_24.s6", print_hash_value);
    transparent_crc(p_1014->g_24.s7, "p_1014->g_24.s7", print_hash_value);
    transparent_crc(p_1014->g_25.s0, "p_1014->g_25.s0", print_hash_value);
    transparent_crc(p_1014->g_25.s1, "p_1014->g_25.s1", print_hash_value);
    transparent_crc(p_1014->g_25.s2, "p_1014->g_25.s2", print_hash_value);
    transparent_crc(p_1014->g_25.s3, "p_1014->g_25.s3", print_hash_value);
    transparent_crc(p_1014->g_25.s4, "p_1014->g_25.s4", print_hash_value);
    transparent_crc(p_1014->g_25.s5, "p_1014->g_25.s5", print_hash_value);
    transparent_crc(p_1014->g_25.s6, "p_1014->g_25.s6", print_hash_value);
    transparent_crc(p_1014->g_25.s7, "p_1014->g_25.s7", print_hash_value);
    transparent_crc(p_1014->g_25.s8, "p_1014->g_25.s8", print_hash_value);
    transparent_crc(p_1014->g_25.s9, "p_1014->g_25.s9", print_hash_value);
    transparent_crc(p_1014->g_25.sa, "p_1014->g_25.sa", print_hash_value);
    transparent_crc(p_1014->g_25.sb, "p_1014->g_25.sb", print_hash_value);
    transparent_crc(p_1014->g_25.sc, "p_1014->g_25.sc", print_hash_value);
    transparent_crc(p_1014->g_25.sd, "p_1014->g_25.sd", print_hash_value);
    transparent_crc(p_1014->g_25.se, "p_1014->g_25.se", print_hash_value);
    transparent_crc(p_1014->g_25.sf, "p_1014->g_25.sf", print_hash_value);
    transparent_crc(p_1014->g_50.s0, "p_1014->g_50.s0", print_hash_value);
    transparent_crc(p_1014->g_50.s1, "p_1014->g_50.s1", print_hash_value);
    transparent_crc(p_1014->g_50.s2, "p_1014->g_50.s2", print_hash_value);
    transparent_crc(p_1014->g_50.s3, "p_1014->g_50.s3", print_hash_value);
    transparent_crc(p_1014->g_50.s4, "p_1014->g_50.s4", print_hash_value);
    transparent_crc(p_1014->g_50.s5, "p_1014->g_50.s5", print_hash_value);
    transparent_crc(p_1014->g_50.s6, "p_1014->g_50.s6", print_hash_value);
    transparent_crc(p_1014->g_50.s7, "p_1014->g_50.s7", print_hash_value);
    transparent_crc(p_1014->g_50.s8, "p_1014->g_50.s8", print_hash_value);
    transparent_crc(p_1014->g_50.s9, "p_1014->g_50.s9", print_hash_value);
    transparent_crc(p_1014->g_50.sa, "p_1014->g_50.sa", print_hash_value);
    transparent_crc(p_1014->g_50.sb, "p_1014->g_50.sb", print_hash_value);
    transparent_crc(p_1014->g_50.sc, "p_1014->g_50.sc", print_hash_value);
    transparent_crc(p_1014->g_50.sd, "p_1014->g_50.sd", print_hash_value);
    transparent_crc(p_1014->g_50.se, "p_1014->g_50.se", print_hash_value);
    transparent_crc(p_1014->g_50.sf, "p_1014->g_50.sf", print_hash_value);
    transparent_crc(p_1014->g_56, "p_1014->g_56", print_hash_value);
    transparent_crc(p_1014->g_57, "p_1014->g_57", print_hash_value);
    transparent_crc(p_1014->g_96, "p_1014->g_96", print_hash_value);
    transparent_crc(p_1014->g_115, "p_1014->g_115", print_hash_value);
    transparent_crc(p_1014->g_119, "p_1014->g_119", print_hash_value);
    transparent_crc(p_1014->g_147, "p_1014->g_147", print_hash_value);
    transparent_crc(p_1014->g_151, "p_1014->g_151", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1014->g_155[i][j], "p_1014->g_155[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1014->g_183.x, "p_1014->g_183.x", print_hash_value);
    transparent_crc(p_1014->g_183.y, "p_1014->g_183.y", print_hash_value);
    transparent_crc(p_1014->g_183.z, "p_1014->g_183.z", print_hash_value);
    transparent_crc(p_1014->g_183.w, "p_1014->g_183.w", print_hash_value);
    transparent_crc(p_1014->g_184.s0, "p_1014->g_184.s0", print_hash_value);
    transparent_crc(p_1014->g_184.s1, "p_1014->g_184.s1", print_hash_value);
    transparent_crc(p_1014->g_184.s2, "p_1014->g_184.s2", print_hash_value);
    transparent_crc(p_1014->g_184.s3, "p_1014->g_184.s3", print_hash_value);
    transparent_crc(p_1014->g_184.s4, "p_1014->g_184.s4", print_hash_value);
    transparent_crc(p_1014->g_184.s5, "p_1014->g_184.s5", print_hash_value);
    transparent_crc(p_1014->g_184.s6, "p_1014->g_184.s6", print_hash_value);
    transparent_crc(p_1014->g_184.s7, "p_1014->g_184.s7", print_hash_value);
    transparent_crc(p_1014->g_185, "p_1014->g_185", print_hash_value);
    transparent_crc(p_1014->g_202.s0, "p_1014->g_202.s0", print_hash_value);
    transparent_crc(p_1014->g_202.s1, "p_1014->g_202.s1", print_hash_value);
    transparent_crc(p_1014->g_202.s2, "p_1014->g_202.s2", print_hash_value);
    transparent_crc(p_1014->g_202.s3, "p_1014->g_202.s3", print_hash_value);
    transparent_crc(p_1014->g_202.s4, "p_1014->g_202.s4", print_hash_value);
    transparent_crc(p_1014->g_202.s5, "p_1014->g_202.s5", print_hash_value);
    transparent_crc(p_1014->g_202.s6, "p_1014->g_202.s6", print_hash_value);
    transparent_crc(p_1014->g_202.s7, "p_1014->g_202.s7", print_hash_value);
    transparent_crc(p_1014->g_202.s8, "p_1014->g_202.s8", print_hash_value);
    transparent_crc(p_1014->g_202.s9, "p_1014->g_202.s9", print_hash_value);
    transparent_crc(p_1014->g_202.sa, "p_1014->g_202.sa", print_hash_value);
    transparent_crc(p_1014->g_202.sb, "p_1014->g_202.sb", print_hash_value);
    transparent_crc(p_1014->g_202.sc, "p_1014->g_202.sc", print_hash_value);
    transparent_crc(p_1014->g_202.sd, "p_1014->g_202.sd", print_hash_value);
    transparent_crc(p_1014->g_202.se, "p_1014->g_202.se", print_hash_value);
    transparent_crc(p_1014->g_202.sf, "p_1014->g_202.sf", print_hash_value);
    transparent_crc(p_1014->g_205.x, "p_1014->g_205.x", print_hash_value);
    transparent_crc(p_1014->g_205.y, "p_1014->g_205.y", print_hash_value);
    transparent_crc(p_1014->g_205.z, "p_1014->g_205.z", print_hash_value);
    transparent_crc(p_1014->g_205.w, "p_1014->g_205.w", print_hash_value);
    transparent_crc(p_1014->g_210.s0, "p_1014->g_210.s0", print_hash_value);
    transparent_crc(p_1014->g_210.s1, "p_1014->g_210.s1", print_hash_value);
    transparent_crc(p_1014->g_210.s2, "p_1014->g_210.s2", print_hash_value);
    transparent_crc(p_1014->g_210.s3, "p_1014->g_210.s3", print_hash_value);
    transparent_crc(p_1014->g_210.s4, "p_1014->g_210.s4", print_hash_value);
    transparent_crc(p_1014->g_210.s5, "p_1014->g_210.s5", print_hash_value);
    transparent_crc(p_1014->g_210.s6, "p_1014->g_210.s6", print_hash_value);
    transparent_crc(p_1014->g_210.s7, "p_1014->g_210.s7", print_hash_value);
    transparent_crc(p_1014->g_210.s8, "p_1014->g_210.s8", print_hash_value);
    transparent_crc(p_1014->g_210.s9, "p_1014->g_210.s9", print_hash_value);
    transparent_crc(p_1014->g_210.sa, "p_1014->g_210.sa", print_hash_value);
    transparent_crc(p_1014->g_210.sb, "p_1014->g_210.sb", print_hash_value);
    transparent_crc(p_1014->g_210.sc, "p_1014->g_210.sc", print_hash_value);
    transparent_crc(p_1014->g_210.sd, "p_1014->g_210.sd", print_hash_value);
    transparent_crc(p_1014->g_210.se, "p_1014->g_210.se", print_hash_value);
    transparent_crc(p_1014->g_210.sf, "p_1014->g_210.sf", print_hash_value);
    transparent_crc(p_1014->g_216, "p_1014->g_216", print_hash_value);
    transparent_crc(p_1014->g_245.s0, "p_1014->g_245.s0", print_hash_value);
    transparent_crc(p_1014->g_245.s1, "p_1014->g_245.s1", print_hash_value);
    transparent_crc(p_1014->g_245.s2, "p_1014->g_245.s2", print_hash_value);
    transparent_crc(p_1014->g_245.s3, "p_1014->g_245.s3", print_hash_value);
    transparent_crc(p_1014->g_245.s4, "p_1014->g_245.s4", print_hash_value);
    transparent_crc(p_1014->g_245.s5, "p_1014->g_245.s5", print_hash_value);
    transparent_crc(p_1014->g_245.s6, "p_1014->g_245.s6", print_hash_value);
    transparent_crc(p_1014->g_245.s7, "p_1014->g_245.s7", print_hash_value);
    transparent_crc(p_1014->g_269.x, "p_1014->g_269.x", print_hash_value);
    transparent_crc(p_1014->g_269.y, "p_1014->g_269.y", print_hash_value);
    transparent_crc(p_1014->g_273, "p_1014->g_273", print_hash_value);
    transparent_crc(p_1014->g_289.x, "p_1014->g_289.x", print_hash_value);
    transparent_crc(p_1014->g_289.y, "p_1014->g_289.y", print_hash_value);
    transparent_crc(p_1014->g_291.x, "p_1014->g_291.x", print_hash_value);
    transparent_crc(p_1014->g_291.y, "p_1014->g_291.y", print_hash_value);
    transparent_crc(p_1014->g_321, "p_1014->g_321", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1014->g_421[i], "p_1014->g_421[i]", print_hash_value);

    }
    transparent_crc(p_1014->g_425.s0, "p_1014->g_425.s0", print_hash_value);
    transparent_crc(p_1014->g_425.s1, "p_1014->g_425.s1", print_hash_value);
    transparent_crc(p_1014->g_425.s2, "p_1014->g_425.s2", print_hash_value);
    transparent_crc(p_1014->g_425.s3, "p_1014->g_425.s3", print_hash_value);
    transparent_crc(p_1014->g_425.s4, "p_1014->g_425.s4", print_hash_value);
    transparent_crc(p_1014->g_425.s5, "p_1014->g_425.s5", print_hash_value);
    transparent_crc(p_1014->g_425.s6, "p_1014->g_425.s6", print_hash_value);
    transparent_crc(p_1014->g_425.s7, "p_1014->g_425.s7", print_hash_value);
    transparent_crc(p_1014->g_425.s8, "p_1014->g_425.s8", print_hash_value);
    transparent_crc(p_1014->g_425.s9, "p_1014->g_425.s9", print_hash_value);
    transparent_crc(p_1014->g_425.sa, "p_1014->g_425.sa", print_hash_value);
    transparent_crc(p_1014->g_425.sb, "p_1014->g_425.sb", print_hash_value);
    transparent_crc(p_1014->g_425.sc, "p_1014->g_425.sc", print_hash_value);
    transparent_crc(p_1014->g_425.sd, "p_1014->g_425.sd", print_hash_value);
    transparent_crc(p_1014->g_425.se, "p_1014->g_425.se", print_hash_value);
    transparent_crc(p_1014->g_425.sf, "p_1014->g_425.sf", print_hash_value);
    transparent_crc(p_1014->g_458.s0, "p_1014->g_458.s0", print_hash_value);
    transparent_crc(p_1014->g_458.s1, "p_1014->g_458.s1", print_hash_value);
    transparent_crc(p_1014->g_458.s2, "p_1014->g_458.s2", print_hash_value);
    transparent_crc(p_1014->g_458.s3, "p_1014->g_458.s3", print_hash_value);
    transparent_crc(p_1014->g_458.s4, "p_1014->g_458.s4", print_hash_value);
    transparent_crc(p_1014->g_458.s5, "p_1014->g_458.s5", print_hash_value);
    transparent_crc(p_1014->g_458.s6, "p_1014->g_458.s6", print_hash_value);
    transparent_crc(p_1014->g_458.s7, "p_1014->g_458.s7", print_hash_value);
    transparent_crc(p_1014->g_492.x, "p_1014->g_492.x", print_hash_value);
    transparent_crc(p_1014->g_492.y, "p_1014->g_492.y", print_hash_value);
    transparent_crc(p_1014->g_493.s0, "p_1014->g_493.s0", print_hash_value);
    transparent_crc(p_1014->g_493.s1, "p_1014->g_493.s1", print_hash_value);
    transparent_crc(p_1014->g_493.s2, "p_1014->g_493.s2", print_hash_value);
    transparent_crc(p_1014->g_493.s3, "p_1014->g_493.s3", print_hash_value);
    transparent_crc(p_1014->g_493.s4, "p_1014->g_493.s4", print_hash_value);
    transparent_crc(p_1014->g_493.s5, "p_1014->g_493.s5", print_hash_value);
    transparent_crc(p_1014->g_493.s6, "p_1014->g_493.s6", print_hash_value);
    transparent_crc(p_1014->g_493.s7, "p_1014->g_493.s7", print_hash_value);
    transparent_crc(p_1014->g_493.s8, "p_1014->g_493.s8", print_hash_value);
    transparent_crc(p_1014->g_493.s9, "p_1014->g_493.s9", print_hash_value);
    transparent_crc(p_1014->g_493.sa, "p_1014->g_493.sa", print_hash_value);
    transparent_crc(p_1014->g_493.sb, "p_1014->g_493.sb", print_hash_value);
    transparent_crc(p_1014->g_493.sc, "p_1014->g_493.sc", print_hash_value);
    transparent_crc(p_1014->g_493.sd, "p_1014->g_493.sd", print_hash_value);
    transparent_crc(p_1014->g_493.se, "p_1014->g_493.se", print_hash_value);
    transparent_crc(p_1014->g_493.sf, "p_1014->g_493.sf", print_hash_value);
    transparent_crc(p_1014->g_494.x, "p_1014->g_494.x", print_hash_value);
    transparent_crc(p_1014->g_494.y, "p_1014->g_494.y", print_hash_value);
    transparent_crc(p_1014->g_494.z, "p_1014->g_494.z", print_hash_value);
    transparent_crc(p_1014->g_494.w, "p_1014->g_494.w", print_hash_value);
    transparent_crc(p_1014->g_497.s0, "p_1014->g_497.s0", print_hash_value);
    transparent_crc(p_1014->g_497.s1, "p_1014->g_497.s1", print_hash_value);
    transparent_crc(p_1014->g_497.s2, "p_1014->g_497.s2", print_hash_value);
    transparent_crc(p_1014->g_497.s3, "p_1014->g_497.s3", print_hash_value);
    transparent_crc(p_1014->g_497.s4, "p_1014->g_497.s4", print_hash_value);
    transparent_crc(p_1014->g_497.s5, "p_1014->g_497.s5", print_hash_value);
    transparent_crc(p_1014->g_497.s6, "p_1014->g_497.s6", print_hash_value);
    transparent_crc(p_1014->g_497.s7, "p_1014->g_497.s7", print_hash_value);
    transparent_crc(p_1014->g_497.s8, "p_1014->g_497.s8", print_hash_value);
    transparent_crc(p_1014->g_497.s9, "p_1014->g_497.s9", print_hash_value);
    transparent_crc(p_1014->g_497.sa, "p_1014->g_497.sa", print_hash_value);
    transparent_crc(p_1014->g_497.sb, "p_1014->g_497.sb", print_hash_value);
    transparent_crc(p_1014->g_497.sc, "p_1014->g_497.sc", print_hash_value);
    transparent_crc(p_1014->g_497.sd, "p_1014->g_497.sd", print_hash_value);
    transparent_crc(p_1014->g_497.se, "p_1014->g_497.se", print_hash_value);
    transparent_crc(p_1014->g_497.sf, "p_1014->g_497.sf", print_hash_value);
    transparent_crc(p_1014->g_551, "p_1014->g_551", print_hash_value);
    transparent_crc(p_1014->g_614.s0, "p_1014->g_614.s0", print_hash_value);
    transparent_crc(p_1014->g_614.s1, "p_1014->g_614.s1", print_hash_value);
    transparent_crc(p_1014->g_614.s2, "p_1014->g_614.s2", print_hash_value);
    transparent_crc(p_1014->g_614.s3, "p_1014->g_614.s3", print_hash_value);
    transparent_crc(p_1014->g_614.s4, "p_1014->g_614.s4", print_hash_value);
    transparent_crc(p_1014->g_614.s5, "p_1014->g_614.s5", print_hash_value);
    transparent_crc(p_1014->g_614.s6, "p_1014->g_614.s6", print_hash_value);
    transparent_crc(p_1014->g_614.s7, "p_1014->g_614.s7", print_hash_value);
    transparent_crc(p_1014->g_614.s8, "p_1014->g_614.s8", print_hash_value);
    transparent_crc(p_1014->g_614.s9, "p_1014->g_614.s9", print_hash_value);
    transparent_crc(p_1014->g_614.sa, "p_1014->g_614.sa", print_hash_value);
    transparent_crc(p_1014->g_614.sb, "p_1014->g_614.sb", print_hash_value);
    transparent_crc(p_1014->g_614.sc, "p_1014->g_614.sc", print_hash_value);
    transparent_crc(p_1014->g_614.sd, "p_1014->g_614.sd", print_hash_value);
    transparent_crc(p_1014->g_614.se, "p_1014->g_614.se", print_hash_value);
    transparent_crc(p_1014->g_614.sf, "p_1014->g_614.sf", print_hash_value);
    transparent_crc(p_1014->g_616.x, "p_1014->g_616.x", print_hash_value);
    transparent_crc(p_1014->g_616.y, "p_1014->g_616.y", print_hash_value);
    transparent_crc(p_1014->g_618.x, "p_1014->g_618.x", print_hash_value);
    transparent_crc(p_1014->g_618.y, "p_1014->g_618.y", print_hash_value);
    transparent_crc(p_1014->g_618.z, "p_1014->g_618.z", print_hash_value);
    transparent_crc(p_1014->g_618.w, "p_1014->g_618.w", print_hash_value);
    transparent_crc(p_1014->g_651, "p_1014->g_651", print_hash_value);
    transparent_crc(p_1014->g_652, "p_1014->g_652", print_hash_value);
    transparent_crc(p_1014->g_669.s0, "p_1014->g_669.s0", print_hash_value);
    transparent_crc(p_1014->g_669.s1, "p_1014->g_669.s1", print_hash_value);
    transparent_crc(p_1014->g_669.s2, "p_1014->g_669.s2", print_hash_value);
    transparent_crc(p_1014->g_669.s3, "p_1014->g_669.s3", print_hash_value);
    transparent_crc(p_1014->g_669.s4, "p_1014->g_669.s4", print_hash_value);
    transparent_crc(p_1014->g_669.s5, "p_1014->g_669.s5", print_hash_value);
    transparent_crc(p_1014->g_669.s6, "p_1014->g_669.s6", print_hash_value);
    transparent_crc(p_1014->g_669.s7, "p_1014->g_669.s7", print_hash_value);
    transparent_crc(p_1014->g_669.s8, "p_1014->g_669.s8", print_hash_value);
    transparent_crc(p_1014->g_669.s9, "p_1014->g_669.s9", print_hash_value);
    transparent_crc(p_1014->g_669.sa, "p_1014->g_669.sa", print_hash_value);
    transparent_crc(p_1014->g_669.sb, "p_1014->g_669.sb", print_hash_value);
    transparent_crc(p_1014->g_669.sc, "p_1014->g_669.sc", print_hash_value);
    transparent_crc(p_1014->g_669.sd, "p_1014->g_669.sd", print_hash_value);
    transparent_crc(p_1014->g_669.se, "p_1014->g_669.se", print_hash_value);
    transparent_crc(p_1014->g_669.sf, "p_1014->g_669.sf", print_hash_value);
    transparent_crc(p_1014->g_682, "p_1014->g_682", print_hash_value);
    transparent_crc(p_1014->g_754.s0, "p_1014->g_754.s0", print_hash_value);
    transparent_crc(p_1014->g_754.s1, "p_1014->g_754.s1", print_hash_value);
    transparent_crc(p_1014->g_754.s2, "p_1014->g_754.s2", print_hash_value);
    transparent_crc(p_1014->g_754.s3, "p_1014->g_754.s3", print_hash_value);
    transparent_crc(p_1014->g_754.s4, "p_1014->g_754.s4", print_hash_value);
    transparent_crc(p_1014->g_754.s5, "p_1014->g_754.s5", print_hash_value);
    transparent_crc(p_1014->g_754.s6, "p_1014->g_754.s6", print_hash_value);
    transparent_crc(p_1014->g_754.s7, "p_1014->g_754.s7", print_hash_value);
    transparent_crc(p_1014->g_756.s0, "p_1014->g_756.s0", print_hash_value);
    transparent_crc(p_1014->g_756.s1, "p_1014->g_756.s1", print_hash_value);
    transparent_crc(p_1014->g_756.s2, "p_1014->g_756.s2", print_hash_value);
    transparent_crc(p_1014->g_756.s3, "p_1014->g_756.s3", print_hash_value);
    transparent_crc(p_1014->g_756.s4, "p_1014->g_756.s4", print_hash_value);
    transparent_crc(p_1014->g_756.s5, "p_1014->g_756.s5", print_hash_value);
    transparent_crc(p_1014->g_756.s6, "p_1014->g_756.s6", print_hash_value);
    transparent_crc(p_1014->g_756.s7, "p_1014->g_756.s7", print_hash_value);
    transparent_crc(p_1014->g_756.s8, "p_1014->g_756.s8", print_hash_value);
    transparent_crc(p_1014->g_756.s9, "p_1014->g_756.s9", print_hash_value);
    transparent_crc(p_1014->g_756.sa, "p_1014->g_756.sa", print_hash_value);
    transparent_crc(p_1014->g_756.sb, "p_1014->g_756.sb", print_hash_value);
    transparent_crc(p_1014->g_756.sc, "p_1014->g_756.sc", print_hash_value);
    transparent_crc(p_1014->g_756.sd, "p_1014->g_756.sd", print_hash_value);
    transparent_crc(p_1014->g_756.se, "p_1014->g_756.se", print_hash_value);
    transparent_crc(p_1014->g_756.sf, "p_1014->g_756.sf", print_hash_value);
    transparent_crc(p_1014->g_765.x, "p_1014->g_765.x", print_hash_value);
    transparent_crc(p_1014->g_765.y, "p_1014->g_765.y", print_hash_value);
    transparent_crc(p_1014->g_770.x, "p_1014->g_770.x", print_hash_value);
    transparent_crc(p_1014->g_770.y, "p_1014->g_770.y", print_hash_value);
    transparent_crc(p_1014->g_770.z, "p_1014->g_770.z", print_hash_value);
    transparent_crc(p_1014->g_770.w, "p_1014->g_770.w", print_hash_value);
    transparent_crc(p_1014->g_792.x, "p_1014->g_792.x", print_hash_value);
    transparent_crc(p_1014->g_792.y, "p_1014->g_792.y", print_hash_value);
    transparent_crc(p_1014->g_793.x, "p_1014->g_793.x", print_hash_value);
    transparent_crc(p_1014->g_793.y, "p_1014->g_793.y", print_hash_value);
    transparent_crc(p_1014->g_793.z, "p_1014->g_793.z", print_hash_value);
    transparent_crc(p_1014->g_793.w, "p_1014->g_793.w", print_hash_value);
    transparent_crc(p_1014->g_804.s0, "p_1014->g_804.s0", print_hash_value);
    transparent_crc(p_1014->g_804.s1, "p_1014->g_804.s1", print_hash_value);
    transparent_crc(p_1014->g_804.s2, "p_1014->g_804.s2", print_hash_value);
    transparent_crc(p_1014->g_804.s3, "p_1014->g_804.s3", print_hash_value);
    transparent_crc(p_1014->g_804.s4, "p_1014->g_804.s4", print_hash_value);
    transparent_crc(p_1014->g_804.s5, "p_1014->g_804.s5", print_hash_value);
    transparent_crc(p_1014->g_804.s6, "p_1014->g_804.s6", print_hash_value);
    transparent_crc(p_1014->g_804.s7, "p_1014->g_804.s7", print_hash_value);
    transparent_crc(p_1014->g_805.s0, "p_1014->g_805.s0", print_hash_value);
    transparent_crc(p_1014->g_805.s1, "p_1014->g_805.s1", print_hash_value);
    transparent_crc(p_1014->g_805.s2, "p_1014->g_805.s2", print_hash_value);
    transparent_crc(p_1014->g_805.s3, "p_1014->g_805.s3", print_hash_value);
    transparent_crc(p_1014->g_805.s4, "p_1014->g_805.s4", print_hash_value);
    transparent_crc(p_1014->g_805.s5, "p_1014->g_805.s5", print_hash_value);
    transparent_crc(p_1014->g_805.s6, "p_1014->g_805.s6", print_hash_value);
    transparent_crc(p_1014->g_805.s7, "p_1014->g_805.s7", print_hash_value);
    transparent_crc(p_1014->g_805.s8, "p_1014->g_805.s8", print_hash_value);
    transparent_crc(p_1014->g_805.s9, "p_1014->g_805.s9", print_hash_value);
    transparent_crc(p_1014->g_805.sa, "p_1014->g_805.sa", print_hash_value);
    transparent_crc(p_1014->g_805.sb, "p_1014->g_805.sb", print_hash_value);
    transparent_crc(p_1014->g_805.sc, "p_1014->g_805.sc", print_hash_value);
    transparent_crc(p_1014->g_805.sd, "p_1014->g_805.sd", print_hash_value);
    transparent_crc(p_1014->g_805.se, "p_1014->g_805.se", print_hash_value);
    transparent_crc(p_1014->g_805.sf, "p_1014->g_805.sf", print_hash_value);
    transparent_crc(p_1014->g_806.s0, "p_1014->g_806.s0", print_hash_value);
    transparent_crc(p_1014->g_806.s1, "p_1014->g_806.s1", print_hash_value);
    transparent_crc(p_1014->g_806.s2, "p_1014->g_806.s2", print_hash_value);
    transparent_crc(p_1014->g_806.s3, "p_1014->g_806.s3", print_hash_value);
    transparent_crc(p_1014->g_806.s4, "p_1014->g_806.s4", print_hash_value);
    transparent_crc(p_1014->g_806.s5, "p_1014->g_806.s5", print_hash_value);
    transparent_crc(p_1014->g_806.s6, "p_1014->g_806.s6", print_hash_value);
    transparent_crc(p_1014->g_806.s7, "p_1014->g_806.s7", print_hash_value);
    transparent_crc(p_1014->g_806.s8, "p_1014->g_806.s8", print_hash_value);
    transparent_crc(p_1014->g_806.s9, "p_1014->g_806.s9", print_hash_value);
    transparent_crc(p_1014->g_806.sa, "p_1014->g_806.sa", print_hash_value);
    transparent_crc(p_1014->g_806.sb, "p_1014->g_806.sb", print_hash_value);
    transparent_crc(p_1014->g_806.sc, "p_1014->g_806.sc", print_hash_value);
    transparent_crc(p_1014->g_806.sd, "p_1014->g_806.sd", print_hash_value);
    transparent_crc(p_1014->g_806.se, "p_1014->g_806.se", print_hash_value);
    transparent_crc(p_1014->g_806.sf, "p_1014->g_806.sf", print_hash_value);
    transparent_crc(p_1014->g_807.s0, "p_1014->g_807.s0", print_hash_value);
    transparent_crc(p_1014->g_807.s1, "p_1014->g_807.s1", print_hash_value);
    transparent_crc(p_1014->g_807.s2, "p_1014->g_807.s2", print_hash_value);
    transparent_crc(p_1014->g_807.s3, "p_1014->g_807.s3", print_hash_value);
    transparent_crc(p_1014->g_807.s4, "p_1014->g_807.s4", print_hash_value);
    transparent_crc(p_1014->g_807.s5, "p_1014->g_807.s5", print_hash_value);
    transparent_crc(p_1014->g_807.s6, "p_1014->g_807.s6", print_hash_value);
    transparent_crc(p_1014->g_807.s7, "p_1014->g_807.s7", print_hash_value);
    transparent_crc(p_1014->g_807.s8, "p_1014->g_807.s8", print_hash_value);
    transparent_crc(p_1014->g_807.s9, "p_1014->g_807.s9", print_hash_value);
    transparent_crc(p_1014->g_807.sa, "p_1014->g_807.sa", print_hash_value);
    transparent_crc(p_1014->g_807.sb, "p_1014->g_807.sb", print_hash_value);
    transparent_crc(p_1014->g_807.sc, "p_1014->g_807.sc", print_hash_value);
    transparent_crc(p_1014->g_807.sd, "p_1014->g_807.sd", print_hash_value);
    transparent_crc(p_1014->g_807.se, "p_1014->g_807.se", print_hash_value);
    transparent_crc(p_1014->g_807.sf, "p_1014->g_807.sf", print_hash_value);
    transparent_crc(p_1014->g_822.x, "p_1014->g_822.x", print_hash_value);
    transparent_crc(p_1014->g_822.y, "p_1014->g_822.y", print_hash_value);
    transparent_crc(p_1014->g_841, "p_1014->g_841", print_hash_value);
    transparent_crc(p_1014->g_842.x, "p_1014->g_842.x", print_hash_value);
    transparent_crc(p_1014->g_842.y, "p_1014->g_842.y", print_hash_value);
    transparent_crc(p_1014->g_859.s0, "p_1014->g_859.s0", print_hash_value);
    transparent_crc(p_1014->g_859.s1, "p_1014->g_859.s1", print_hash_value);
    transparent_crc(p_1014->g_859.s2, "p_1014->g_859.s2", print_hash_value);
    transparent_crc(p_1014->g_859.s3, "p_1014->g_859.s3", print_hash_value);
    transparent_crc(p_1014->g_859.s4, "p_1014->g_859.s4", print_hash_value);
    transparent_crc(p_1014->g_859.s5, "p_1014->g_859.s5", print_hash_value);
    transparent_crc(p_1014->g_859.s6, "p_1014->g_859.s6", print_hash_value);
    transparent_crc(p_1014->g_859.s7, "p_1014->g_859.s7", print_hash_value);
    transparent_crc(p_1014->g_859.s8, "p_1014->g_859.s8", print_hash_value);
    transparent_crc(p_1014->g_859.s9, "p_1014->g_859.s9", print_hash_value);
    transparent_crc(p_1014->g_859.sa, "p_1014->g_859.sa", print_hash_value);
    transparent_crc(p_1014->g_859.sb, "p_1014->g_859.sb", print_hash_value);
    transparent_crc(p_1014->g_859.sc, "p_1014->g_859.sc", print_hash_value);
    transparent_crc(p_1014->g_859.sd, "p_1014->g_859.sd", print_hash_value);
    transparent_crc(p_1014->g_859.se, "p_1014->g_859.se", print_hash_value);
    transparent_crc(p_1014->g_859.sf, "p_1014->g_859.sf", print_hash_value);
    transparent_crc(p_1014->g_860.x, "p_1014->g_860.x", print_hash_value);
    transparent_crc(p_1014->g_860.y, "p_1014->g_860.y", print_hash_value);
    transparent_crc(p_1014->g_867.s0, "p_1014->g_867.s0", print_hash_value);
    transparent_crc(p_1014->g_867.s1, "p_1014->g_867.s1", print_hash_value);
    transparent_crc(p_1014->g_867.s2, "p_1014->g_867.s2", print_hash_value);
    transparent_crc(p_1014->g_867.s3, "p_1014->g_867.s3", print_hash_value);
    transparent_crc(p_1014->g_867.s4, "p_1014->g_867.s4", print_hash_value);
    transparent_crc(p_1014->g_867.s5, "p_1014->g_867.s5", print_hash_value);
    transparent_crc(p_1014->g_867.s6, "p_1014->g_867.s6", print_hash_value);
    transparent_crc(p_1014->g_867.s7, "p_1014->g_867.s7", print_hash_value);
    transparent_crc(p_1014->g_867.s8, "p_1014->g_867.s8", print_hash_value);
    transparent_crc(p_1014->g_867.s9, "p_1014->g_867.s9", print_hash_value);
    transparent_crc(p_1014->g_867.sa, "p_1014->g_867.sa", print_hash_value);
    transparent_crc(p_1014->g_867.sb, "p_1014->g_867.sb", print_hash_value);
    transparent_crc(p_1014->g_867.sc, "p_1014->g_867.sc", print_hash_value);
    transparent_crc(p_1014->g_867.sd, "p_1014->g_867.sd", print_hash_value);
    transparent_crc(p_1014->g_867.se, "p_1014->g_867.se", print_hash_value);
    transparent_crc(p_1014->g_867.sf, "p_1014->g_867.sf", print_hash_value);
    transparent_crc(p_1014->g_912, "p_1014->g_912", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1014->g_919[i], "p_1014->g_919[i]", print_hash_value);

    }
    transparent_crc(p_1014->g_920.s0, "p_1014->g_920.s0", print_hash_value);
    transparent_crc(p_1014->g_920.s1, "p_1014->g_920.s1", print_hash_value);
    transparent_crc(p_1014->g_920.s2, "p_1014->g_920.s2", print_hash_value);
    transparent_crc(p_1014->g_920.s3, "p_1014->g_920.s3", print_hash_value);
    transparent_crc(p_1014->g_920.s4, "p_1014->g_920.s4", print_hash_value);
    transparent_crc(p_1014->g_920.s5, "p_1014->g_920.s5", print_hash_value);
    transparent_crc(p_1014->g_920.s6, "p_1014->g_920.s6", print_hash_value);
    transparent_crc(p_1014->g_920.s7, "p_1014->g_920.s7", print_hash_value);
    transparent_crc(p_1014->g_920.s8, "p_1014->g_920.s8", print_hash_value);
    transparent_crc(p_1014->g_920.s9, "p_1014->g_920.s9", print_hash_value);
    transparent_crc(p_1014->g_920.sa, "p_1014->g_920.sa", print_hash_value);
    transparent_crc(p_1014->g_920.sb, "p_1014->g_920.sb", print_hash_value);
    transparent_crc(p_1014->g_920.sc, "p_1014->g_920.sc", print_hash_value);
    transparent_crc(p_1014->g_920.sd, "p_1014->g_920.sd", print_hash_value);
    transparent_crc(p_1014->g_920.se, "p_1014->g_920.se", print_hash_value);
    transparent_crc(p_1014->g_920.sf, "p_1014->g_920.sf", print_hash_value);
    transparent_crc(p_1014->g_922, "p_1014->g_922", print_hash_value);
    transparent_crc(p_1014->g_964, "p_1014->g_964", print_hash_value);
    transparent_crc(p_1014->g_976.s0, "p_1014->g_976.s0", print_hash_value);
    transparent_crc(p_1014->g_976.s1, "p_1014->g_976.s1", print_hash_value);
    transparent_crc(p_1014->g_976.s2, "p_1014->g_976.s2", print_hash_value);
    transparent_crc(p_1014->g_976.s3, "p_1014->g_976.s3", print_hash_value);
    transparent_crc(p_1014->g_976.s4, "p_1014->g_976.s4", print_hash_value);
    transparent_crc(p_1014->g_976.s5, "p_1014->g_976.s5", print_hash_value);
    transparent_crc(p_1014->g_976.s6, "p_1014->g_976.s6", print_hash_value);
    transparent_crc(p_1014->g_976.s7, "p_1014->g_976.s7", print_hash_value);
    transparent_crc(p_1014->g_979.x, "p_1014->g_979.x", print_hash_value);
    transparent_crc(p_1014->g_979.y, "p_1014->g_979.y", print_hash_value);
    transparent_crc(p_1014->g_1002, "p_1014->g_1002", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
