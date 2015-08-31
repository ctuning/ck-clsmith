// ---fake_divergence -g 2,1,3209 -l 1,1,1
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


// Seed: 104

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint64_t  f0;
   int16_t  f1;
   volatile uint8_t  f2;
   uint64_t  f3;
};

struct S1 {
   int16_t  f0;
   uint32_t  f1;
   uint16_t  f2;
   volatile uint32_t  f3;
   int32_t  f4;
};

struct S2 {
   struct S0  f0;
};

union U3 {
   uint16_t  f0;
};

struct S4 {
    uint8_t g_19[8];
    volatile VECTOR(uint32_t, 16) g_20;
    uint8_t g_34;
    volatile int64_t g_40[1];
    volatile int64_t *g_39;
    int8_t g_42[2];
    int64_t g_44;
    int64_t *g_43;
    volatile int64_t g_84;
    int64_t g_89[4][2][5];
    uint32_t g_95;
    int32_t g_97;
    int32_t * volatile g_96;
    struct S1 g_101;
    volatile VECTOR(int16_t, 2) g_102;
    struct S2 g_115;
    VECTOR(int32_t, 2) g_122;
    VECTOR(int32_t, 4) g_124;
    VECTOR(int32_t, 8) g_125;
    VECTOR(int32_t, 16) g_133;
    int32_t * volatile g_137;
    int32_t * volatile g_139[8];
    int32_t * volatile g_140;
    int32_t * volatile g_141;
    struct S2 g_176;
    struct S2 * volatile g_178;
    int32_t *g_183;
    int32_t ** volatile g_182[4];
    struct S0 g_189;
    int32_t ** volatile g_192;
    VECTOR(uint8_t, 16) g_200;
    VECTOR(uint64_t, 8) g_214;
    VECTOR(int32_t, 4) g_220;
    volatile VECTOR(int64_t, 2) g_226;
    VECTOR(int64_t, 16) g_228;
    volatile VECTOR(uint64_t, 16) g_234;
    VECTOR(uint64_t, 8) g_237;
    volatile VECTOR(int32_t, 8) g_246;
    VECTOR(int32_t, 2) g_247;
    int64_t *g_253;
    int64_t *g_254[1];
    volatile VECTOR(int16_t, 2) g_278;
    int8_t g_289;
    volatile struct S0 g_294;
    volatile struct S0 * volatile g_295;
    uint64_t g_311;
    VECTOR(int64_t, 16) g_319;
    int32_t ** volatile g_324;
    volatile VECTOR(int16_t, 16) g_331;
    VECTOR(uint32_t, 16) g_376;
    int32_t *g_390;
    int32_t **g_389;
    int32_t *** volatile g_388;
    volatile VECTOR(uint64_t, 2) g_394;
    int32_t * volatile g_417;
    volatile VECTOR(int16_t, 8) g_425;
    VECTOR(uint16_t, 4) g_428;
    volatile uint16_t g_434;
    volatile uint16_t * volatile g_433;
    volatile uint16_t g_436;
    volatile uint16_t *g_435;
    int16_t g_440;
    volatile VECTOR(uint16_t, 2) g_444;
    volatile VECTOR(uint8_t, 8) g_466;
    volatile VECTOR(uint32_t, 2) g_487;
    VECTOR(int8_t, 8) g_502;
    union U3 g_516;
    volatile uint64_t g_520[10][1][6];
    volatile uint64_t * volatile g_519;
    volatile uint64_t * volatile *g_518;
    volatile uint64_t * volatile **g_517;
    int32_t * volatile g_524;
    volatile VECTOR(int8_t, 8) g_525;
    volatile VECTOR(int32_t, 2) g_526;
    int32_t ** volatile g_528;
    volatile VECTOR(int16_t, 4) g_536;
    int32_t ** volatile g_553;
    int32_t ** volatile g_554;
    union U3 *g_571[1];
    struct S1 g_591[6];
    struct S1 g_593;
    uint16_t *g_608;
    VECTOR(int64_t, 8) g_618;
    volatile struct S0 g_622;
    int32_t ** volatile g_666;
    volatile struct S1 g_675;
    struct S2 ** volatile g_681[8];
    int32_t ** volatile g_684;
    volatile uint8_t ** volatile g_687;
    VECTOR(int32_t, 2) g_692;
    VECTOR(uint16_t, 2) g_723;
    volatile VECTOR(int16_t, 2) g_726;
    VECTOR(int16_t, 8) g_730;
    VECTOR(uint16_t, 4) g_734;
    int32_t ***g_756;
    int32_t ****g_755[8];
    int32_t ** volatile g_775;
    VECTOR(int16_t, 4) g_798;
    VECTOR(int16_t, 2) g_799;
    uint32_t g_809;
    struct S1 g_812;
    uint32_t g_813;
    volatile struct S0 g_816;
    struct S1 g_826;
    struct S1 g_827;
    struct S0 g_828[1];
    volatile int8_t g_858;
    VECTOR(int32_t, 2) g_877;
    struct S0 *g_887;
    struct S0 ** volatile g_886;
    volatile VECTOR(int16_t, 8) g_896;
    volatile VECTOR(int16_t, 4) g_900;
    VECTOR(int16_t, 16) g_903;
    int16_t *g_927;
    int16_t **g_926;
    int16_t *** volatile g_925[1][7];
    uint32_t g_946;
    VECTOR(int32_t, 16) g_947;
    volatile int8_t *g_950;
    uint32_t g_951;
    int32_t ** volatile g_977;
    volatile VECTOR(int32_t, 16) g_987;
    VECTOR(int32_t, 8) g_993;
    int64_t g_998[8];
    struct S1 * volatile g_1012;
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
int8_t  func_1(struct S4 * p_1014);
int32_t  func_2(int16_t  p_3, int32_t  p_4, struct S4 * p_1014);
int16_t  func_5(int64_t  p_6, uint8_t  p_7, struct S4 * p_1014);
struct S0  func_25(uint8_t  p_26, int64_t * p_27, struct S4 * p_1014);
struct S1  func_45(int64_t * p_46, int32_t  p_47, struct S4 * p_1014);
int32_t  func_54(int8_t * p_55, uint8_t  p_56, struct S4 * p_1014);
struct S2  func_58(uint8_t  p_59, int64_t * p_60, int16_t  p_61, int32_t  p_62, struct S4 * p_1014);
int16_t  func_66(int64_t  p_67, uint16_t  p_68, struct S4 * p_1014);
VECTOR(int8_t, 16)  func_71(int64_t  p_72, uint32_t  p_73, int32_t  p_74, uint64_t  p_75, uint32_t  p_76, struct S4 * p_1014);
uint64_t  func_77(int8_t * p_78, int8_t * p_79, struct S4 * p_1014);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1014->g_19 p_1014->g_20 p_1014->g_34 p_1014->g_39 p_1014->g_42 p_1014->g_43 p_1014->g_44 p_1014->g_444 p_1014->g_435 p_1014->g_436 p_1014->g_237 p_1014->g_466 p_1014->g_247 p_1014->g_220 p_1014->g_125 p_1014->g_101.f4 p_1014->g_101.f2 p_1014->g_554 p_1014->g_826 p_1014->g_828 p_1014->g_756 p_1014->g_97 p_1014->g_389 p_1014->g_858 p_1014->g_101.f3 p_1014->g_886 p_1014->g_101.f1 p_1014->g_809 p_1014->g_946 p_1014->g_950 p_1014->g_927 p_1014->g_827.f0 p_1014->g_253 p_1014->g_228 p_1014->g_977 p_1014->g_89 p_1014->g_593 p_1014->g_1012
 * writes: p_1014->g_19 p_1014->g_42 p_1014->g_34 p_1014->g_125 p_1014->g_101.f4 p_1014->g_101.f2 p_1014->g_183 p_1014->g_827 p_1014->g_389 p_1014->g_97 p_1014->g_390 p_1014->g_812.f4 p_1014->g_289 p_1014->g_887 p_1014->g_926 p_1014->g_946 p_1014->g_89 p_1014->g_812
 */
int8_t  func_1(struct S4 * p_1014)
{ /* block id: 4 */
    VECTOR(int64_t, 4) l_8 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x696B779C63C40785L), 0x696B779C63C40785L);
    int64_t *l_9 = (void*)0;
    int64_t *l_10 = (void*)0;
    int64_t *l_11 = (void*)0;
    int64_t *l_12 = (void*)0;
    int64_t *l_13 = (void*)0;
    int64_t *l_14 = (void*)0;
    int64_t *l_15 = (void*)0;
    int64_t *l_16 = (void*)0;
    int64_t *l_17[8][2][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t l_18 = (-9L);
    VECTOR(int32_t, 2) l_21 = (VECTOR(int32_t, 2))(0x16590181L, (-10L));
    VECTOR(uint32_t, 2) l_22 = (VECTOR(uint32_t, 2))(0x02D78BEAL, 0x4340421AL);
    int8_t *l_41 = &p_1014->g_42[1];
    int32_t *l_1003 = (void*)0;
    int32_t *l_1004 = (void*)0;
    int32_t *l_1005 = (void*)0;
    int32_t *l_1006 = (void*)0;
    int32_t *l_1007 = (void*)0;
    int32_t *l_1008 = (void*)0;
    int32_t *l_1009 = (void*)0;
    int32_t *l_1010 = (void*)0;
    VECTOR(uint64_t, 4) l_1011 = (VECTOR(uint64_t, 4))(0x99EBE26516363AD4L, (VECTOR(uint64_t, 2))(0x99EBE26516363AD4L, 5UL), 5UL);
    VECTOR(uint32_t, 8) l_1013 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL);
    int i, j, k;
    l_1011.w |= func_2(func_5((p_1014->g_19[6] ^= (l_18 = ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))(l_8.xwyxzywx)).s5453365601045440 && ((VECTOR(int64_t, 2))((-2L), 0L)).yyyxyxyxxyxxyyyy))).s3)), (((VECTOR(uint32_t, 16))(FAKE_DIVERGE(p_1014->group_2_offset, get_group_id(2), 10), ((VECTOR(uint32_t, 4))(4294967287UL, ((VECTOR(uint32_t, 2))(p_1014->g_20.sba)), 8UL)), 1UL, ((VECTOR(uint32_t, 2))(abs(((VECTOR(int32_t, 8))(l_21.xxxxxyxy)).s41))), 0x0AC77ACAL, ((VECTOR(uint32_t, 2))(l_22.yx)), 1UL, 2UL, (safe_rshift_func_uint16_t_u_u((func_25((safe_div_func_int8_t_s_s(((l_8.z != l_21.x) == p_1014->g_20.s5), (0x088327BC4A6B1F15L | (safe_lshift_func_uint16_t_u_u((((safe_lshift_func_int8_t_s_s(((0x1BL == p_1014->g_34) >= 0x1CFD24BDL), (safe_mul_func_int8_t_s_s(((*l_41) |= (safe_mod_func_uint16_t_u_u((l_12 == p_1014->g_39), p_1014->g_34))), 0x50L)))) | l_8.w) , GROUP_DIVERGE(0, 1)), l_22.x))))), p_1014->g_43, p_1014) , 0x6EB3L), l_21.y)), 0x03BD1DE2L, 0x2070A60BL)).se || 0xF2C874C6L), p_1014), l_22.y, p_1014);
    (*p_1014->g_1012) = p_1014->g_593;
    return l_1013.s2;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_2(int16_t  p_3, int32_t  p_4, struct S4 * p_1014)
{ /* block id: 407 */
    int32_t *l_1000 = (void*)0;
    int32_t **l_1001 = (void*)0;
    int32_t **l_1002 = &l_1000;
    (*l_1002) = l_1000;
    return p_4;
}


/* ------------------------------------------ */
/* 
 * reads : p_1014->g_756 p_1014->g_97 p_1014->g_389 p_1014->g_858 p_1014->g_101.f3 p_1014->g_886 p_1014->g_101.f1 p_1014->g_809 p_1014->g_946 p_1014->g_950 p_1014->g_927 p_1014->g_827.f0 p_1014->g_253 p_1014->g_826.f0 p_1014->g_435 p_1014->g_436 p_1014->g_228 p_1014->g_977 p_1014->g_101.f2 p_1014->g_89
 * writes: p_1014->g_389 p_1014->g_97 p_1014->g_390 p_1014->g_812.f4 p_1014->g_289 p_1014->g_887 p_1014->g_926 p_1014->g_946 p_1014->g_827.f0 p_1014->g_89 p_1014->g_19 p_1014->g_183
 */
int16_t  func_5(int64_t  p_6, uint8_t  p_7, struct S4 * p_1014)
{ /* block id: 340 */
    int32_t l_829 = (-8L);
    int32_t *l_830 = (void*)0;
    int32_t *l_831 = &p_1014->g_97;
    int32_t *l_832 = (void*)0;
    int32_t *l_833 = (void*)0;
    int32_t *l_834 = (void*)0;
    int32_t *l_835 = &p_1014->g_97;
    int32_t *l_836 = (void*)0;
    int32_t *l_837 = &p_1014->g_97;
    int32_t l_838 = 0x1CBD1B9CL;
    int32_t *l_839[7][6][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    int32_t l_840 = 0x5703470BL;
    int32_t l_841 = 1L;
    int16_t l_842 = 0x73F3L;
    uint64_t l_843 = 1UL;
    uint16_t l_846 = 9UL;
    int32_t **l_849[9];
    VECTOR(uint32_t, 16) l_862 = (VECTOR(uint32_t, 16))(4UL, (VECTOR(uint32_t, 4))(4UL, (VECTOR(uint32_t, 2))(4UL, 0x0C73808BL), 0x0C73808BL), 0x0C73808BL, 4UL, 0x0C73808BL, (VECTOR(uint32_t, 2))(4UL, 0x0C73808BL), (VECTOR(uint32_t, 2))(4UL, 0x0C73808BL), 4UL, 0x0C73808BL, 4UL, 0x0C73808BL);
    VECTOR(int32_t, 2) l_874 = (VECTOR(int32_t, 2))(1L, 0x60D5E387L);
    VECTOR(int16_t, 16) l_894 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x2E85L), 0x2E85L), 0x2E85L, (-1L), 0x2E85L, (VECTOR(int16_t, 2))((-1L), 0x2E85L), (VECTOR(int16_t, 2))((-1L), 0x2E85L), (-1L), 0x2E85L, (-1L), 0x2E85L);
    VECTOR(int8_t, 2) l_897 = (VECTOR(int8_t, 2))(0x5EL, 1L);
    int16_t **l_924 = (void*)0;
    VECTOR(uint64_t, 8) l_939 = (VECTOR(uint64_t, 8))(18446744073709551607UL, (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 0xF134DF18B0CFD76FL), 0xF134DF18B0CFD76FL), 0xF134DF18B0CFD76FL, 18446744073709551607UL, 0xF134DF18B0CFD76FL);
    VECTOR(uint64_t, 4) l_941 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL), 18446744073709551615UL);
    union U3 l_953 = {65535UL};
    VECTOR(int32_t, 4) l_988 = (VECTOR(int32_t, 4))(0x6D9A0EE1L, (VECTOR(int32_t, 2))(0x6D9A0EE1L, 0x1C463682L), 0x1C463682L);
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_849[i] = &p_1014->g_390;
lbl_982:
    l_843++;
lbl_891:
    l_846++;
lbl_981:
    (*p_1014->g_756) = l_849[6];
    for (l_843 = 0; (l_843 > 24); l_843 = safe_add_func_uint64_t_u_u(l_843, 1))
    { /* block id: 346 */
        uint32_t l_852 = 0x07292157L;
        int32_t *l_853 = &l_841;
        VECTOR(int32_t, 8) l_856 = (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x02D3E525L), 0x02D3E525L), 0x02D3E525L, 6L, 0x02D3E525L);
        VECTOR(uint16_t, 4) l_859 = (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 0UL), 0UL);
        VECTOR(uint32_t, 8) l_873 = (VECTOR(uint32_t, 8))(0x0C1C4F43L, (VECTOR(uint32_t, 4))(0x0C1C4F43L, (VECTOR(uint32_t, 2))(0x0C1C4F43L, 0xA1E8A333L), 0xA1E8A333L), 0xA1E8A333L, 0x0C1C4F43L, 0xA1E8A333L);
        uint8_t *l_936 = (void*)0;
        uint16_t *l_943 = &p_1014->g_826.f2;
        int32_t ***l_963 = &l_849[6];
        int32_t l_968 = (-3L);
        VECTOR(int32_t, 16) l_989 = (VECTOR(int32_t, 16))(0x77AD9110L, (VECTOR(int32_t, 4))(0x77AD9110L, (VECTOR(int32_t, 2))(0x77AD9110L, 0x2BB51B02L), 0x2BB51B02L), 0x2BB51B02L, 0x77AD9110L, 0x2BB51B02L, (VECTOR(int32_t, 2))(0x77AD9110L, 0x2BB51B02L), (VECTOR(int32_t, 2))(0x77AD9110L, 0x2BB51B02L), 0x77AD9110L, 0x2BB51B02L, 0x77AD9110L, 0x2BB51B02L);
        VECTOR(int32_t, 2) l_990 = (VECTOR(int32_t, 2))(1L, 0x2025DC8EL);
        struct S0 **l_994 = &p_1014->g_887;
        struct S0 **l_996[2];
        struct S0 ***l_995 = &l_996[1];
        int64_t *l_997[9];
        int32_t l_999 = 0x7640C053L;
        int i;
        for (i = 0; i < 2; i++)
            l_996[i] = &p_1014->g_887;
        for (i = 0; i < 9; i++)
            l_997[i] = &p_1014->g_998[1];
        (*l_835) &= ((+65535UL) & FAKE_DIVERGE(p_1014->local_1_offset, get_local_id(1), 10));
        (*l_835) = l_852;
        if ((((*p_1014->g_389) = l_853) != l_853))
        { /* block id: 350 */
            uint32_t l_857 = 0x0BAA1806L;
            VECTOR(uint32_t, 16) l_867 = (VECTOR(uint32_t, 16))(0x18E04AE8L, (VECTOR(uint32_t, 4))(0x18E04AE8L, (VECTOR(uint32_t, 2))(0x18E04AE8L, 0xFC617613L), 0xFC617613L), 0xFC617613L, 0x18E04AE8L, 0xFC617613L, (VECTOR(uint32_t, 2))(0x18E04AE8L, 0xFC617613L), (VECTOR(uint32_t, 2))(0x18E04AE8L, 0xFC617613L), 0x18E04AE8L, 0xFC617613L, 0x18E04AE8L, 0xFC617613L);
            VECTOR(int32_t, 4) l_878 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-2L)), (-2L));
            VECTOR(int32_t, 2) l_879 = (VECTOR(int32_t, 2))(0x4B2ED663L, 0x573B87C6L);
            VECTOR(int32_t, 4) l_880 = (VECTOR(int32_t, 4))(0x4136895BL, (VECTOR(int32_t, 2))(0x4136895BL, 6L), 6L);
            VECTOR(int16_t, 2) l_895 = (VECTOR(int16_t, 2))(1L, 1L);
            uint32_t l_916 = 1UL;
            VECTOR(uint64_t, 16) l_940 = (VECTOR(uint64_t, 16))(2UL, (VECTOR(uint64_t, 4))(2UL, (VECTOR(uint64_t, 2))(2UL, 0UL), 0UL), 0UL, 2UL, 0UL, (VECTOR(uint64_t, 2))(2UL, 0UL), (VECTOR(uint64_t, 2))(2UL, 0UL), 2UL, 0UL, 2UL, 0UL);
            VECTOR(uint8_t, 2) l_959 = (VECTOR(uint8_t, 2))(0x1DL, 0x6DL);
            int16_t **l_971 = &p_1014->g_927;
            int i;
            for (p_1014->g_812.f4 = (-2); (p_1014->g_812.f4 > 24); p_1014->g_812.f4 = safe_add_func_uint64_t_u_u(p_1014->g_812.f4, 5))
            { /* block id: 353 */
                l_857 ^= ((VECTOR(int32_t, 2))(l_856.s53)).hi;
                if (p_1014->g_858)
                    break;
                return p_1014->g_101.f3;
            }
            if ((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(l_859.wxyxwwyy)), 4UL, 65535UL, ((((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(0xA580A2BCL, 0x2864DFCCL)), 3UL, ((VECTOR(uint32_t, 4))(abs(((VECTOR(uint32_t, 4))(l_862.sd2f7))))).x, ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0xFA255E5BL, 0x7C41AA80L)), 6UL, 0xE4F326C7L)) + ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_867.s952a)), ((VECTOR(uint32_t, 2))(0x902A7252L, 0x44A182CCL)), 0x656DB474L, p_1014->g_394.x, 4294967287UL, 4294967291UL, ((((l_857 || (GROUP_DIVERGE(1, 1) , 9UL)) ^ (*p_1014->g_433)) , (**p_1014->g_518)) ^ (safe_unary_minus_func_uint64_t_u(p_1014->g_591[2].f1))), 4294967295UL, ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))(l_873.s3317)).hi + ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 4))(abs(((VECTOR(int32_t, 2))(l_874.yy)).xxxy))).odd, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(4294967295UL, 0UL, 0x4BE6EA55L, 0UL)), 0x259037AEL, ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(p_1014->g_877.xy)).lo, (-9L), ((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 4))(l_878.yyzx)).hi, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(l_879.xxyyxxyxyyyyyxxy)).even >= ((VECTOR(int32_t, 2))(l_880.xy)).xyyxyyyx))).s36))).odd, (safe_rshift_func_int16_t_s_u(p_1014->g_101.f1, GROUP_DIVERGE(1, 1))), ((VECTOR(int32_t, 4))(0x2B07A862L)))).even, ((VECTOR(int32_t, 4))(0x52D2E5F5L))))).zxxzzxxyywyxzxwz))).s4174 & ((VECTOR(uint32_t, 4))(0UL))))).wzxwwyxw + ((VECTOR(uint32_t, 8))(0xAD0C8A84L))))), ((VECTOR(uint32_t, 2))(4294967295UL)), 0x396B9A36L)).sf2))), 4294967288UL, 0xB9B5C2CAL)).odd))), 4294967294UL, 4294967295UL)).wwyyzxyy))), ((VECTOR(uint32_t, 8))(0x1DEAE28FL))))), ((VECTOR(uint32_t, 8))(0x62FA86D9L)), ((VECTOR(uint32_t, 8))(4294967295UL))))).hi * ((VECTOR(uint32_t, 4))(0UL))))))).s36 + ((VECTOR(uint32_t, 2))(4294967294UL))))), 0x17DF1971L, p_1014->g_799.x, 0x75621EF5L, p_1014->g_101.f2, 3UL, 4294967295UL)).even))), 0xECE6596BL, p_1014->g_536.w, ((VECTOR(uint32_t, 2))(0x7E831584L)), 4294967295UL, l_867.s9, 5UL, 4294967294UL)).s1, l_859.z)) , l_879.x) != p_1014->g_502.s4) , 65535UL), 1UL, ((VECTOR(uint16_t, 4))(1UL)))).s5 != l_878.y))
            { /* block id: 358 */
                for (p_1014->g_289 = 0; (p_1014->g_289 == 6); p_1014->g_289++)
                { /* block id: 361 */
                    struct S0 *l_885 = &p_1014->g_828[0];
                    uint32_t l_888 = 1UL;
                    (*p_1014->g_886) = l_885;
                    ++l_888;
                }
                if (p_1014->g_101.f1)
                    goto lbl_891;
                return l_867.s2;
            }
            else
            { /* block id: 367 */
                uint16_t *l_942 = &p_1014->g_591[2].f2;
                int8_t l_952 = 1L;
                int32_t *l_954[7][4][7] = {{{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_838,(void*)0,(void*)0,(void*)0}}};
                VECTOR(int64_t, 16) l_960 = (VECTOR(int64_t, 16))(0x521CEC5E406DE85EL, (VECTOR(int64_t, 4))(0x521CEC5E406DE85EL, (VECTOR(int64_t, 2))(0x521CEC5E406DE85EL, (-1L)), (-1L)), (-1L), 0x521CEC5E406DE85EL, (-1L), (VECTOR(int64_t, 2))(0x521CEC5E406DE85EL, (-1L)), (VECTOR(int64_t, 2))(0x521CEC5E406DE85EL, (-1L)), 0x521CEC5E406DE85EL, (-1L), 0x521CEC5E406DE85EL, (-1L));
                int32_t ***l_962[4][6] = {{&l_849[6],(void*)0,&l_849[6],&l_849[6],(void*)0,&l_849[6]},{&l_849[6],(void*)0,&l_849[6],&l_849[6],(void*)0,&l_849[6]},{&l_849[6],(void*)0,&l_849[6],&l_849[6],(void*)0,&l_849[6]},{&l_849[6],(void*)0,&l_849[6],&l_849[6],(void*)0,&l_849[6]}};
                int16_t **l_969 = &p_1014->g_927;
                int64_t l_976 = (-1L);
                int i, j, k;
                for (l_841 = (-25); (l_841 >= (-15)); ++l_841)
                { /* block id: 370 */
                    int8_t l_912 = 0x4FL;
                    VECTOR(uint64_t, 2) l_917 = (VECTOR(uint64_t, 2))(0xD22FBC28BC4900F6L, 0UL);
                    uint64_t l_920[3];
                    int32_t l_921[2];
                    int16_t ***l_970[8];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_920[i] = 1UL;
                    for (i = 0; i < 2; i++)
                        l_921[i] = 0x6FE01943L;
                    for (i = 0; i < 8; i++)
                        l_970[i] = &p_1014->g_926;
                    if (l_856.s1)
                    { /* block id: 371 */
                        uint8_t *l_898 = (void*)0;
                        uint8_t *l_899[3];
                        VECTOR(int16_t, 16) l_904 = (VECTOR(int16_t, 16))(0x2830L, (VECTOR(int16_t, 4))(0x2830L, (VECTOR(int16_t, 2))(0x2830L, 0x6D76L), 0x6D76L), 0x6D76L, 0x2830L, 0x6D76L, (VECTOR(int16_t, 2))(0x2830L, 0x6D76L), (VECTOR(int16_t, 2))(0x2830L, 0x6D76L), 0x2830L, 0x6D76L, 0x2830L, 0x6D76L);
                        uint32_t *l_913 = &p_1014->g_593.f1;
                        uint64_t *l_918 = (void*)0;
                        uint64_t *l_919[9] = {&p_1014->g_311,&p_1014->g_311,&p_1014->g_311,&p_1014->g_311,&p_1014->g_311,&p_1014->g_311,&p_1014->g_311,&p_1014->g_311,&p_1014->g_311};
                        int8_t *l_923 = &p_1014->g_289;
                        int16_t ***l_928 = &p_1014->g_926;
                        uint16_t **l_944 = &l_943;
                        uint32_t *l_945 = &p_1014->g_946;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_899[i] = &p_1014->g_19[6];
                        l_878.y = ((p_1014->g_809 > l_859.w) || ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(l_894.s09)).xxxy && ((VECTOR(int16_t, 16))(l_895.xxxyxyyyxyxyxxxy)).s7417))), ((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 4))(p_1014->g_896.s0306)), ((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 2))(l_897.yx)), ((VECTOR(uint8_t, 4))((p_7 = 0xB8L), GROUP_DIVERGE(1, 1), 0UL, 0x7FL)).lo))).yyyy))))).hi && ((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))(p_1014->g_900.zyyzxxzw)).odd && ((VECTOR(int16_t, 8))((safe_lshift_func_int16_t_s_s(p_1014->g_877.y, ((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 8))(p_1014->g_903.s92f636cb)).even, ((VECTOR(int16_t, 8))(1L, ((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),int16_t,((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 16))(l_904.s7fb8d706e32ba9e6)).odd, ((VECTOR(int16_t, 2))((-1L), 0x207CL)).xxxxyxxx))).s00, (int16_t)(safe_lshift_func_uint8_t_u_s(p_7, ((*l_923) = (p_1014->g_502.s6 = (((*l_913) = (safe_rshift_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(abs(((VECTOR(uint8_t, 2))(0x0DL, 0xF9L))))).hi, (safe_unary_minus_func_int8_t_s(l_912)))), 2))) <= ((safe_mod_func_uint64_t_u_u(l_916, (l_921[0] ^= (l_920[1] = ((VECTOR(uint64_t, 8))(l_917.xyxyyyxy)).s2)))) & ((p_6 < (safe_unary_minus_func_uint32_t_u((p_6 | p_7)))) > p_1014->g_858))))))), (int16_t)p_6))), (-1L), (*l_837), ((VECTOR(int16_t, 2))(9L)), 0L)).even, ((VECTOR(int16_t, 4))(0L))))) && ((VECTOR(int16_t, 4))((-9L)))))).wwzxzyyxxzxxyxxx, ((VECTOR(int16_t, 16))(0L))))).sf)), l_873.s3, ((VECTOR(int16_t, 2))((-3L))), 0x7E47L, ((VECTOR(int16_t, 2))(0x1C67L)), 0L)).even))).hi))).yyxxxxxxyyxxyyxx))).s08be))).x);
                        (*l_928) = l_924;
                        (*l_837) &= ((safe_div_func_uint32_t_u_u((safe_unary_minus_func_uint16_t_u(FAKE_DIVERGE(p_1014->local_1_offset, get_local_id(1), 10))), (safe_lshift_func_int16_t_s_s((((safe_sub_func_int16_t_s_s(0x2C31L, l_904.s9)) , &p_7) == l_936), ((~((*p_1014->g_927) &= ((((*l_945) &= (((+((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(l_939.s72631715)).s72 | ((VECTOR(uint64_t, 2))(l_940.sdf))))) + ((VECTOR(uint64_t, 8))(l_941.zwzxwwxw)).s21))).even) , l_942) != ((*l_944) = l_943))) , (((VECTOR(int32_t, 2))(p_1014->g_947.s21)).hi , (safe_mul_func_int16_t_s_s((&p_1014->g_858 != p_1014->g_950), ((VECTOR(int16_t, 16))(4L, ((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),VECTOR(int8_t, 16),((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(1L, (-1L))).yxyyyyxx && ((VECTOR(int8_t, 8))((l_878.y || 4L), p_1014->g_951, l_952, ((VECTOR(int8_t, 2))(0x2FL)), p_6, (-1L), (-10L)))))).s43 && ((VECTOR(int8_t, 2))(0x04L))))), 0x67L, 0x3AL, ((VECTOR(int8_t, 4))(0x71L)))).s45))).yxxyyyyyyxxyyyyy, ((VECTOR(int8_t, 16))((-1L))), ((VECTOR(int8_t, 16))(0L))))), ((VECTOR(uint8_t, 16))(1UL))))).lo, ((VECTOR(int16_t, 8))((-6L)))))), l_873.s1, ((VECTOR(int16_t, 4))(0x2FD6L)), 0x1AA4L, (-1L))).s3)))) , p_6))) , l_904.s3))))) <= 5L);
                    }
                    else
                    { /* block id: 384 */
                        int32_t **l_955 = &l_833;
                        int32_t **l_956 = &l_839[6][5][0];
                        uint8_t *l_966 = &p_1014->g_19[6];
                        uint16_t *l_967 = &l_953.f0;
                        (*l_956) = ((*l_955) = (l_953 , l_954[1][1][2]));
                        l_968 = ((l_856.s1 = (safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 2))(l_959.yy)), (uint8_t)p_7))).xyxy, ((VECTOR(uint8_t, 2))(0x09L, 255UL)).yyyx))).y, 1))) <= (((((*p_1014->g_253) = ((VECTOR(int64_t, 16))(l_960.s3f5af8af508c7220)).s3) && (safe_unary_minus_func_int16_t_s(((void*)0 == &p_1014->g_524)))) , &p_1014->g_434) != (((l_962[0][3] != l_963) != (safe_sub_func_uint8_t_u_u(((*l_966) = p_6), 3UL))) , l_967)));
                    }
                    (*l_831) ^= ((p_1014->g_826.f0 >= (((l_971 = l_969) != l_969) | ((*p_1014->g_435) | (safe_lshift_func_uint16_t_u_s((0x2D07E97E4AB5B873L | (p_1014->g_228.s6 , ((l_959.x == 0xD30E080BL) <= (((((l_976 , p_6) || p_7) < p_6) || p_7) | 0x1E7AL)))), 12))))) == GROUP_DIVERGE(0, 1));
                    (*p_1014->g_977) = &l_838;
                }
            }
        }
        else
        { /* block id: 397 */
            uint32_t l_978 = 0xED3B850BL;
            ++l_978;
            if (p_1014->g_809)
                goto lbl_981;
            if (p_1014->g_101.f2)
                goto lbl_982;
        }
        l_999 &= (safe_mul_func_uint16_t_u_u(0UL, ((safe_sub_func_uint64_t_u_u(((l_856.s7 | p_7) > (*p_1014->g_253)), ((l_989.sc = (0x9C98E671L >= ((VECTOR(int32_t, 16))(2L, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(p_1014->g_987.s8ccd)).xzxwyzzxzzzzwwwy >= ((VECTOR(int32_t, 8))(l_988.wzwywyyy)).s4131027111275156))).sdd <= ((VECTOR(int32_t, 4))(1L, 0x407FBC4BL, (-1L), 0x79FC9423L)).hi))).yxxx && ((VECTOR(int32_t, 4))(l_989.sd8d9))))).wzwzyzzx ^ ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0L, (-7L))), 0x6C4A6F11L, 0x5D245960L)).lo, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(l_990.yxyxyyxx)).s6613507155756124 && ((VECTOR(int32_t, 4))(p_6, ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(0x5117EE2AL, 0x3F99CA09L)).xxxyxxyxxxxxxyxx || ((VECTOR(int32_t, 2))(0x7D6BD7DBL, 0x03BD8632L)).yxyyxyxyxyxyyyxx))).s8a == ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 16))((safe_mul_func_int8_t_s_s(((((((VECTOR(int32_t, 4))(p_1014->g_993.s6026)).z , l_994) == ((*l_995) = &p_1014->g_887)) > p_1014->g_440) < (*l_835)), 0x4CL)), 1L, l_968, ((VECTOR(int32_t, 8))((-1L))), ((VECTOR(int32_t, 4))(0x32553CB1L)), 0x04F8CD0FL)).even, ((VECTOR(int32_t, 8))(0x1C37D53EL)), ((VECTOR(int32_t, 8))(0x4AAFA4CFL))))).lo, ((VECTOR(int32_t, 4))(0x0FA9CD89L))))).lo))), ((VECTOR(int32_t, 2))(5L)), ((VECTOR(int32_t, 2))(0x40459B68L))))).hi, 1L, 0x7B261B00L)).zwxywxxwwzyywxyz))) && ((VECTOR(int32_t, 16))(0x51A1EB5BL))))).hi != ((VECTOR(int32_t, 8))(3L))))).s72))).yyyxyxyy))), ((VECTOR(int32_t, 8))(8L)), ((VECTOR(int32_t, 8))(0L))))).s26 > ((VECTOR(int32_t, 2))(0x350BB1CFL))))) && ((VECTOR(int32_t, 2))(0x328C7E7DL))))), ((VECTOR(int32_t, 2))(6L)), ((VECTOR(int32_t, 2))(0x415A720CL)), ((VECTOR(int32_t, 4))((-6L))), ((VECTOR(int32_t, 2))(1L)), 0L, 0x767A00D4L, 0x436DCCBBL)).s2)) , 5UL))) > 0x62016313F78F6ED4L)));
    }
    return p_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_1014->g_44 p_1014->g_444 p_1014->g_435 p_1014->g_436 p_1014->g_237 p_1014->g_466 p_1014->g_247 p_1014->g_220 p_1014->g_125 p_1014->g_101.f4 p_1014->g_101.f2 p_1014->g_554 p_1014->g_826 p_1014->g_828
 * writes: p_1014->g_34 p_1014->g_125 p_1014->g_101.f4 p_1014->g_101.f2 p_1014->g_183 p_1014->g_827
 */
struct S0  func_25(uint8_t  p_26, int64_t * p_27, struct S4 * p_1014)
{ /* block id: 8 */
    int8_t l_48 = 0x27L;
    p_1014->g_827 = func_45(p_27, l_48, p_1014);
    return p_1014->g_828[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1014->g_44 p_1014->g_444 p_1014->g_435 p_1014->g_436 p_1014->g_237 p_1014->g_466 p_1014->g_247 p_1014->g_220 p_1014->g_125 p_1014->g_101.f4 p_1014->g_101.f2 p_1014->g_554 p_1014->g_826
 * writes: p_1014->g_34 p_1014->g_125 p_1014->g_101.f4 p_1014->g_101.f2 p_1014->g_183
 */
struct S1  func_45(int64_t * p_46, int32_t  p_47, struct S4 * p_1014)
{ /* block id: 9 */
    uint64_t l_51[7][3] = {{0xB5195E1C378916A7L,0x69BA90DD0679804EL,0xB5195E1C378916A7L},{0xB5195E1C378916A7L,0x69BA90DD0679804EL,0xB5195E1C378916A7L},{0xB5195E1C378916A7L,0x69BA90DD0679804EL,0xB5195E1C378916A7L},{0xB5195E1C378916A7L,0x69BA90DD0679804EL,0xB5195E1C378916A7L},{0xB5195E1C378916A7L,0x69BA90DD0679804EL,0xB5195E1C378916A7L},{0xB5195E1C378916A7L,0x69BA90DD0679804EL,0xB5195E1C378916A7L},{0xB5195E1C378916A7L,0x69BA90DD0679804EL,0xB5195E1C378916A7L}};
    int8_t *l_57 = &p_1014->g_42[1];
    VECTOR(int32_t, 16) l_442 = (VECTOR(int32_t, 16))(0x227045DEL, (VECTOR(int32_t, 4))(0x227045DEL, (VECTOR(int32_t, 2))(0x227045DEL, 5L), 5L), 5L, 0x227045DEL, 5L, (VECTOR(int32_t, 2))(0x227045DEL, 5L), (VECTOR(int32_t, 2))(0x227045DEL, 5L), 0x227045DEL, 5L, 0x227045DEL, 5L);
    VECTOR(int32_t, 4) l_443 = (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x67680B05L), 0x67680B05L);
    int16_t *l_445[10][8] = {{&p_1014->g_440,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_440,(void*)0},{&p_1014->g_440,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_440,(void*)0},{&p_1014->g_440,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_440,(void*)0},{&p_1014->g_440,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_440,(void*)0},{&p_1014->g_440,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_440,(void*)0},{&p_1014->g_440,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_440,(void*)0},{&p_1014->g_440,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_440,(void*)0},{&p_1014->g_440,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_440,(void*)0},{&p_1014->g_440,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_440,(void*)0},{&p_1014->g_440,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_176.f0.f1,&p_1014->g_440,(void*)0}};
    uint8_t *l_446 = &p_1014->g_34;
    VECTOR(uint8_t, 16) l_460 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xBFL), 0xBFL), 0xBFL, 255UL, 0xBFL, (VECTOR(uint8_t, 2))(255UL, 0xBFL), (VECTOR(uint8_t, 2))(255UL, 0xBFL), 255UL, 0xBFL, 255UL, 0xBFL);
    VECTOR(uint8_t, 4) l_461 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 253UL), 253UL);
    VECTOR(int8_t, 2) l_465 = (VECTOR(int8_t, 2))((-1L), 7L);
    uint64_t *l_582 = (void*)0;
    uint64_t **l_581 = &l_582;
    uint64_t ***l_580 = &l_581;
    int32_t ***l_634 = (void*)0;
    VECTOR(uint64_t, 16) l_657 = (VECTOR(uint64_t, 16))(0xAC62C6BFD13F9EAEL, (VECTOR(uint64_t, 4))(0xAC62C6BFD13F9EAEL, (VECTOR(uint64_t, 2))(0xAC62C6BFD13F9EAEL, 1UL), 1UL), 1UL, 0xAC62C6BFD13F9EAEL, 1UL, (VECTOR(uint64_t, 2))(0xAC62C6BFD13F9EAEL, 1UL), (VECTOR(uint64_t, 2))(0xAC62C6BFD13F9EAEL, 1UL), 0xAC62C6BFD13F9EAEL, 1UL, 0xAC62C6BFD13F9EAEL, 1UL);
    VECTOR(uint64_t, 16) l_660 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xBE4CE77EC12BA71DL), 0xBE4CE77EC12BA71DL), 0xBE4CE77EC12BA71DL, 18446744073709551615UL, 0xBE4CE77EC12BA71DL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xBE4CE77EC12BA71DL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xBE4CE77EC12BA71DL), 18446744073709551615UL, 0xBE4CE77EC12BA71DL, 18446744073709551615UL, 0xBE4CE77EC12BA71DL);
    int64_t l_670[8][8][3] = {{{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L}},{{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L}},{{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L}},{{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L}},{{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L}},{{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L}},{{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L}},{{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L},{(-1L),0x3AC4E32082CC5096L,0x30553CBB9EE73368L}}};
    uint32_t *l_689 = &p_1014->g_101.f1;
    VECTOR(int16_t, 16) l_728 = (VECTOR(int16_t, 16))(4L, (VECTOR(int16_t, 4))(4L, (VECTOR(int16_t, 2))(4L, 0x65CFL), 0x65CFL), 0x65CFL, 4L, 0x65CFL, (VECTOR(int16_t, 2))(4L, 0x65CFL), (VECTOR(int16_t, 2))(4L, 0x65CFL), 4L, 0x65CFL, 4L, 0x65CFL);
    uint8_t l_747 = 0x57L;
    int16_t l_821 = (-1L);
    uint64_t l_823 = 0UL;
    int i, j, k;
    if ((p_1014->g_44 <= ((*l_446) = (p_47 < (safe_sub_func_int32_t_s_s(l_51[5][2], (safe_lshift_func_uint16_t_u_u((func_54(l_57, p_47, p_1014) && (((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 2))(l_442.s71)).xxyyyxxy, ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(l_443.zywwyzzwyxwzyyyw)).even < ((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 2))(0x3612L, 0x2137L)).yxyyyxxyyyyyyyxx, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),uint16_t,((VECTOR(uint16_t, 2))(p_1014->g_444.xx)).xxyxyxxx, (uint16_t)((p_47 , (void*)0) != l_445[4][4]), (uint16_t)1UL))), 1UL, (*p_1014->g_435), ((VECTOR(uint16_t, 2))(0x547BL)), ((VECTOR(uint16_t, 4))(65535UL))))))).hi))).hi, ((VECTOR(int32_t, 4))(0x3468B291L))))).wyzwwwwy))) != ((VECTOR(int32_t, 8))((-1L)))))).s5 || 1L)), p_1014->g_237.s6))))))))
    { /* block id: 181 */
        VECTOR(uint8_t, 8) l_459 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL), 255UL, 255UL, 255UL);
        VECTOR(uint8_t, 8) l_464 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL);
        int32_t *l_469 = (void*)0;
        int32_t *l_470[7][6] = {{(void*)0,&p_1014->g_97,&p_1014->g_97,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1014->g_97,&p_1014->g_97,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1014->g_97,&p_1014->g_97,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1014->g_97,&p_1014->g_97,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1014->g_97,&p_1014->g_97,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1014->g_97,&p_1014->g_97,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1014->g_97,&p_1014->g_97,(void*)0,(void*)0,(void*)0}};
        int i, j;
        p_1014->g_125.s2 |= (+(l_442.sd ^= (l_443.z , ((p_47 != (safe_sub_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(abs(((VECTOR(uint8_t, 8))(l_459.s24267142))))).s50 + ((VECTOR(uint8_t, 2))(253UL, 3UL))))).xyyx, ((VECTOR(uint8_t, 4))(l_460.s6745)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0UL, 0x19L)), 0xEEL, 1UL))))).lo + ((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 4))(l_461.yxzz)).yxywwxwwwzwzwxyx, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(250UL, 0x5FL)) >> ((VECTOR(uint8_t, 2))(8))))).yxxyxyyyxyxxxyyx))).s6e))), ((VECTOR(uint8_t, 2))(4UL, 0x5DL))))) + ((VECTOR(uint8_t, 16))(0x08L, ((VECTOR(uint8_t, 8))(l_464.s33675412)), ((void*)0 != l_446), ((VECTOR(uint8_t, 2))(abs(((VECTOR(int8_t, 16))(l_465.xxyxyxxyyxyxxxxx)).s81))), ((VECTOR(uint8_t, 4))(p_1014->g_466.s1323)))).s74))).xyxyxyyy + ((VECTOR(uint8_t, 2))(251UL, 0x4AL)).xxyyxxyy))).s2, (((safe_lshift_func_uint8_t_u_s(((0xA4L && p_1014->g_247.x) == (&p_1014->g_34 == l_446)), 2)) == p_1014->g_237.s1) , p_47))), p_1014->g_220.x))) <= p_47))));
    }
    else
    { /* block id: 184 */
        VECTOR(uint32_t, 8) l_482 = (VECTOR(uint32_t, 8))(0xE097D614L, (VECTOR(uint32_t, 4))(0xE097D614L, (VECTOR(uint32_t, 2))(0xE097D614L, 1UL), 1UL), 1UL, 0xE097D614L, 1UL);
        VECTOR(int16_t, 8) l_537 = (VECTOR(int16_t, 8))(0x724BL, (VECTOR(int16_t, 4))(0x724BL, (VECTOR(int16_t, 2))(0x724BL, 0x4704L), 0x4704L), 0x4704L, 0x724BL, 0x4704L);
        VECTOR(int8_t, 4) l_539 = (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), 0x58L), 0x58L);
        int32_t l_551[5][3][5] = {{{0x112A370EL,0L,0x2D2A3AC1L,5L,0x2D2A3AC1L},{0x112A370EL,0L,0x2D2A3AC1L,5L,0x2D2A3AC1L},{0x112A370EL,0L,0x2D2A3AC1L,5L,0x2D2A3AC1L}},{{0x112A370EL,0L,0x2D2A3AC1L,5L,0x2D2A3AC1L},{0x112A370EL,0L,0x2D2A3AC1L,5L,0x2D2A3AC1L},{0x112A370EL,0L,0x2D2A3AC1L,5L,0x2D2A3AC1L}},{{0x112A370EL,0L,0x2D2A3AC1L,5L,0x2D2A3AC1L},{0x112A370EL,0L,0x2D2A3AC1L,5L,0x2D2A3AC1L},{0x112A370EL,0L,0x2D2A3AC1L,5L,0x2D2A3AC1L}},{{0x112A370EL,0L,0x2D2A3AC1L,5L,0x2D2A3AC1L},{0x112A370EL,0L,0x2D2A3AC1L,5L,0x2D2A3AC1L},{0x112A370EL,0L,0x2D2A3AC1L,5L,0x2D2A3AC1L}},{{0x112A370EL,0L,0x2D2A3AC1L,5L,0x2D2A3AC1L},{0x112A370EL,0L,0x2D2A3AC1L,5L,0x2D2A3AC1L},{0x112A370EL,0L,0x2D2A3AC1L,5L,0x2D2A3AC1L}}};
        union U3 *l_569 = &p_1014->g_516;
        uint8_t *l_573 = &p_1014->g_34;
        uint64_t **l_579 = (void*)0;
        uint64_t ***l_578[1][2];
        uint16_t *l_605 = (void*)0;
        uint64_t l_624 = 18446744073709551615UL;
        VECTOR(uint64_t, 8) l_651 = (VECTOR(uint64_t, 8))(0xEEFEBF4ECA4C2347L, (VECTOR(uint64_t, 4))(0xEEFEBF4ECA4C2347L, (VECTOR(uint64_t, 2))(0xEEFEBF4ECA4C2347L, 0xA47451AD6AEDF42DL), 0xA47451AD6AEDF42DL), 0xA47451AD6AEDF42DL, 0xEEFEBF4ECA4C2347L, 0xA47451AD6AEDF42DL);
        VECTOR(uint64_t, 8) l_652 = (VECTOR(uint64_t, 8))(0x6EAA8EB49E4BB38AL, (VECTOR(uint64_t, 4))(0x6EAA8EB49E4BB38AL, (VECTOR(uint64_t, 2))(0x6EAA8EB49E4BB38AL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x6EAA8EB49E4BB38AL, 18446744073709551615UL);
        struct S1 *l_662 = &p_1014->g_591[1];
        int32_t *l_677 = (void*)0;
        struct S2 *l_680 = &p_1014->g_176;
        VECTOR(int32_t, 2) l_693 = (VECTOR(int32_t, 2))(7L, 1L);
        VECTOR(int16_t, 2) l_733 = (VECTOR(int16_t, 2))(0x2248L, 0x05E5L);
        int32_t ****l_754 = &l_634;
        uint32_t l_772 = 0UL;
        int32_t *l_822[8][8] = {{(void*)0,(void*)0,&p_1014->g_97,(void*)0,&l_551[3][2][3],(void*)0,&p_1014->g_97,(void*)0},{(void*)0,(void*)0,&p_1014->g_97,(void*)0,&l_551[3][2][3],(void*)0,&p_1014->g_97,(void*)0},{(void*)0,(void*)0,&p_1014->g_97,(void*)0,&l_551[3][2][3],(void*)0,&p_1014->g_97,(void*)0},{(void*)0,(void*)0,&p_1014->g_97,(void*)0,&l_551[3][2][3],(void*)0,&p_1014->g_97,(void*)0},{(void*)0,(void*)0,&p_1014->g_97,(void*)0,&l_551[3][2][3],(void*)0,&p_1014->g_97,(void*)0},{(void*)0,(void*)0,&p_1014->g_97,(void*)0,&l_551[3][2][3],(void*)0,&p_1014->g_97,(void*)0},{(void*)0,(void*)0,&p_1014->g_97,(void*)0,&l_551[3][2][3],(void*)0,&p_1014->g_97,(void*)0},{(void*)0,(void*)0,&p_1014->g_97,(void*)0,&l_551[3][2][3],(void*)0,&p_1014->g_97,(void*)0}};
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 2; j++)
                l_578[i][j] = &l_579;
        }
        for (p_1014->g_101.f4 = 0; (p_1014->g_101.f4 >= 20); ++p_1014->g_101.f4)
        { /* block id: 187 */
            VECTOR(uint32_t, 16) l_492 = (VECTOR(uint32_t, 16))(9UL, (VECTOR(uint32_t, 4))(9UL, (VECTOR(uint32_t, 2))(9UL, 0UL), 0UL), 0UL, 9UL, 0UL, (VECTOR(uint32_t, 2))(9UL, 0UL), (VECTOR(uint32_t, 2))(9UL, 0UL), 9UL, 0UL, 9UL, 0UL);
            VECTOR(uint32_t, 16) l_504 = (VECTOR(uint32_t, 16))(0xAA9F4502L, (VECTOR(uint32_t, 4))(0xAA9F4502L, (VECTOR(uint32_t, 2))(0xAA9F4502L, 4294967295UL), 4294967295UL), 4294967295UL, 0xAA9F4502L, 4294967295UL, (VECTOR(uint32_t, 2))(0xAA9F4502L, 4294967295UL), (VECTOR(uint32_t, 2))(0xAA9F4502L, 4294967295UL), 0xAA9F4502L, 4294967295UL, 0xAA9F4502L, 4294967295UL);
            uint32_t l_521 = 0x08A14C96L;
            int32_t *l_552 = (void*)0;
            int32_t l_563 = 0x06CDDBF3L;
            int32_t l_564 = 5L;
            int32_t l_565 = 0x5CC7BF68L;
            uint8_t l_566[6] = {0xEEL,0xEEL,0xEEL,0xEEL,0xEEL,0xEEL};
            int16_t *l_572 = (void*)0;
            uint8_t **l_574 = (void*)0;
            uint8_t **l_575 = &l_446;
            int32_t *l_583 = (void*)0;
            int32_t *l_584 = (void*)0;
            int32_t *l_585[10][8] = {{&l_565,&l_565,&p_1014->g_97,(void*)0,&p_1014->g_97,&l_565,&l_565,&l_565},{&l_565,&l_565,&p_1014->g_97,(void*)0,&p_1014->g_97,&l_565,&l_565,&l_565},{&l_565,&l_565,&p_1014->g_97,(void*)0,&p_1014->g_97,&l_565,&l_565,&l_565},{&l_565,&l_565,&p_1014->g_97,(void*)0,&p_1014->g_97,&l_565,&l_565,&l_565},{&l_565,&l_565,&p_1014->g_97,(void*)0,&p_1014->g_97,&l_565,&l_565,&l_565},{&l_565,&l_565,&p_1014->g_97,(void*)0,&p_1014->g_97,&l_565,&l_565,&l_565},{&l_565,&l_565,&p_1014->g_97,(void*)0,&p_1014->g_97,&l_565,&l_565,&l_565},{&l_565,&l_565,&p_1014->g_97,(void*)0,&p_1014->g_97,&l_565,&l_565,&l_565},{&l_565,&l_565,&p_1014->g_97,(void*)0,&p_1014->g_97,&l_565,&l_565,&l_565},{&l_565,&l_565,&p_1014->g_97,(void*)0,&p_1014->g_97,&l_565,&l_565,&l_565}};
            uint16_t *l_607 = (void*)0;
            VECTOR(int64_t, 2) l_619 = (VECTOR(int64_t, 2))(0x7EEC6D7E4C9B044CL, (-1L));
            uint8_t l_623 = 0x2CL;
            uint64_t *l_631 = &p_1014->g_115.f0.f3;
            int32_t ***l_636[4][10][6] = {{{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389}},{{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389}},{{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389}},{{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389},{(void*)0,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389,&p_1014->g_389}}};
            int32_t ****l_635 = &l_636[2][4][2];
            VECTOR(uint64_t, 2) l_650 = (VECTOR(uint64_t, 2))(7UL, 0x1BBAA0154EF18183L);
            VECTOR(uint64_t, 16) l_661 = (VECTOR(uint64_t, 16))(0x265F2BDEF2CAB4E1L, (VECTOR(uint64_t, 4))(0x265F2BDEF2CAB4E1L, (VECTOR(uint64_t, 2))(0x265F2BDEF2CAB4E1L, 0x80E5CEA8B5136E3CL), 0x80E5CEA8B5136E3CL), 0x80E5CEA8B5136E3CL, 0x265F2BDEF2CAB4E1L, 0x80E5CEA8B5136E3CL, (VECTOR(uint64_t, 2))(0x265F2BDEF2CAB4E1L, 0x80E5CEA8B5136E3CL), (VECTOR(uint64_t, 2))(0x265F2BDEF2CAB4E1L, 0x80E5CEA8B5136E3CL), 0x265F2BDEF2CAB4E1L, 0x80E5CEA8B5136E3CL, 0x265F2BDEF2CAB4E1L, 0x80E5CEA8B5136E3CL);
            uint16_t l_663 = 0xE479L;
            uint64_t l_712 = 18446744073709551613UL;
            VECTOR(uint16_t, 2) l_722 = (VECTOR(uint16_t, 2))(0UL, 65535UL);
            VECTOR(int16_t, 2) l_727 = (VECTOR(int16_t, 2))(0x40F8L, 0x0217L);
            VECTOR(int16_t, 2) l_729 = (VECTOR(int16_t, 2))(1L, (-1L));
            VECTOR(int16_t, 16) l_732 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x588CL), 0x588CL), 0x588CL, (-1L), 0x588CL, (VECTOR(int16_t, 2))((-1L), 0x588CL), (VECTOR(int16_t, 2))((-1L), 0x588CL), (-1L), 0x588CL, (-1L), 0x588CL);
            VECTOR(int8_t, 4) l_745 = (VECTOR(int8_t, 4))(0x5CL, (VECTOR(int8_t, 2))(0x5CL, 0x0AL), 0x0AL);
            union U3 l_748 = {0xB8B5L};
            int8_t l_749 = 8L;
            uint32_t l_818 = 4294967292UL;
            int i, j, k;
            (1 + 1);
        }
        for (p_1014->g_101.f2 = 3; (p_1014->g_101.f2 != 35); ++p_1014->g_101.f2)
        { /* block id: 327 */
            if (p_47)
            { /* block id: 328 */
                l_551[0][2][2] = (p_1014->g_220.y ^ GROUP_DIVERGE(2, 1));
                if (p_47)
                    continue;
            }
            else
            { /* block id: 331 */
                (*p_1014->g_554) = &l_551[1][2][3];
            }
        }
        ++l_823;
    }
    return p_1014->g_826;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_54(int8_t * p_55, uint8_t  p_56, struct S4 * p_1014)
{ /* block id: 10 */
    int64_t *l_63 = (void*)0;
    int8_t *l_80 = &p_1014->g_42[0];
    int8_t **l_81 = &l_80;
    uint64_t *l_117 = &p_1014->g_115.f0.f3;
    VECTOR(int32_t, 4) l_120 = (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x5062AD80L), 0x5062AD80L);
    VECTOR(int32_t, 4) l_121 = (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0x5A50500DL), 0x5A50500DL);
    VECTOR(int32_t, 2) l_123 = (VECTOR(int32_t, 2))((-1L), 0x14898B9DL);
    VECTOR(int32_t, 16) l_126 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x283A99FBL), 0x283A99FBL), 0x283A99FBL, 0L, 0x283A99FBL, (VECTOR(int32_t, 2))(0L, 0x283A99FBL), (VECTOR(int32_t, 2))(0L, 0x283A99FBL), 0L, 0x283A99FBL, 0L, 0x283A99FBL);
    VECTOR(int64_t, 4) l_129 = (VECTOR(int64_t, 4))((-9L), (VECTOR(int64_t, 2))((-9L), 0x66B95E14E436F85EL), 0x66B95E14E436F85EL);
    int32_t *l_130 = (void*)0;
    int32_t *l_131 = (void*)0;
    int32_t l_170 = 0L;
    int64_t l_194 = (-3L);
    VECTOR(int32_t, 2) l_222 = (VECTOR(int32_t, 2))(1L, 0x6CEDAAA3L);
    VECTOR(int64_t, 8) l_225 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 9L), 9L), 9L, 0L, 9L);
    int32_t *l_233 = (void*)0;
    VECTOR(int32_t, 2) l_245 = (VECTOR(int32_t, 2))(0x2C07887BL, 0x3ACC0A0DL);
    uint32_t l_261 = 0x66E13792L;
    VECTOR(int8_t, 2) l_269 = (VECTOR(int8_t, 2))(0x01L, (-9L));
    VECTOR(int16_t, 2) l_275 = (VECTOR(int16_t, 2))(0L, 0x6D19L);
    VECTOR(int32_t, 4) l_362 = (VECTOR(int32_t, 4))(0x7B559EE3L, (VECTOR(int32_t, 2))(0x7B559EE3L, 0x583C436AL), 0x583C436AL);
    VECTOR(int32_t, 16) l_364 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int32_t, 2))(1L, (-1L)), (VECTOR(int32_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L));
    VECTOR(uint64_t, 4) l_402 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x8E5669A18993F830L), 0x8E5669A18993F830L);
    int32_t l_408 = 0x21ED2DD8L;
    VECTOR(int32_t, 2) l_422 = (VECTOR(int32_t, 2))(0x3861C20BL, 1L);
    VECTOR(int16_t, 16) l_426 = (VECTOR(int16_t, 16))(0x2243L, (VECTOR(int16_t, 4))(0x2243L, (VECTOR(int16_t, 2))(0x2243L, 2L), 2L), 2L, 0x2243L, 2L, (VECTOR(int16_t, 2))(0x2243L, 2L), (VECTOR(int16_t, 2))(0x2243L, 2L), 0x2243L, 2L, 0x2243L, 2L);
    VECTOR(int64_t, 16) l_427 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 5L), 5L), 5L, 1L, 5L, (VECTOR(int64_t, 2))(1L, 5L), (VECTOR(int64_t, 2))(1L, 5L), 1L, 5L, 1L, 5L);
    int i;
    return p_56;
}


/* ------------------------------------------ */
/* 
 * reads : p_1014->g_176
 * writes:
 */
struct S2  func_58(uint8_t  p_59, int64_t * p_60, int16_t  p_61, int32_t  p_62, struct S4 * p_1014)
{ /* block id: 62 */
    int32_t *l_171 = (void*)0;
    int32_t *l_172[10] = {(void*)0,&p_1014->g_97,(void*)0,(void*)0,&p_1014->g_97,(void*)0,(void*)0,&p_1014->g_97,(void*)0,(void*)0};
    uint8_t l_173 = 1UL;
    int i;
    l_173--;
    return p_1014->g_176;
}


/* ------------------------------------------ */
/* 
 * reads : p_1014->g_101.f2 p_1014->g_89 p_1014->g_34 p_1014->g_96 p_1014->g_125 p_1014->g_97 p_1014->g_115.f0.f1
 * writes: p_1014->g_101.f2 p_1014->g_137 p_1014->g_34 p_1014->g_115.f0.f1
 */
int16_t  func_66(int64_t  p_67, uint16_t  p_68, struct S4 * p_1014)
{ /* block id: 36 */
    int32_t *l_150 = &p_1014->g_97;
    int32_t **l_151[1][9];
    int32_t *l_152[7];
    VECTOR(uint32_t, 8) l_160 = (VECTOR(uint32_t, 8))(0x63CAE3F3L, (VECTOR(uint32_t, 4))(0x63CAE3F3L, (VECTOR(uint32_t, 2))(0x63CAE3F3L, 0x76B04D15L), 0x76B04D15L), 0x76B04D15L, 0x63CAE3F3L, 0x76B04D15L);
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
            l_151[i][j] = (void*)0;
    }
    for (i = 0; i < 7; i++)
        l_152[i] = (void*)0;
    for (p_68 = 0; (p_68 <= 42); ++p_68)
    { /* block id: 39 */
        uint32_t l_149 = 0x5079E519L;
        for (p_1014->g_101.f2 = (-2); (p_1014->g_101.f2 <= 25); ++p_1014->g_101.f2)
        { /* block id: 42 */
            return p_1014->g_89[2][0][3];
        }
        if (l_149)
            break;
    }
    p_1014->g_137 = (l_152[2] = l_150);
    for (p_1014->g_34 = (-20); (p_1014->g_34 > 52); p_1014->g_34 = safe_add_func_uint8_t_u_u(p_1014->g_34, 4))
    { /* block id: 51 */
        uint64_t l_157 = 0UL;
        int32_t *l_161 = (void*)0;
        int32_t *l_162 = (void*)0;
        int32_t l_167 = 2L;
        l_167 ^= (safe_div_func_int8_t_s_s((((l_157 = p_67) > ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_160.s00)), ((((l_161 = l_161) == l_162) & 0xA24BL) , (safe_rshift_func_int8_t_s_u((l_152[2] != ((safe_div_func_int8_t_s_s(0x2DL, (~p_1014->g_89[3][0][0]))) , p_1014->g_96)), 2))), ((VECTOR(uint32_t, 2))(4294967287UL, 1UL)), p_1014->g_125.s5, 5UL, 0UL)) << ((VECTOR(uint32_t, 8))(0x198E80C9L))))).s3) | p_1014->g_97), 255UL));
        for (p_1014->g_115.f0.f1 = (-6); (p_1014->g_115.f0.f1 == 17); ++p_1014->g_115.f0.f1)
        { /* block id: 57 */
            return p_1014->g_89[2][0][4];
        }
    }
    return (*l_150);
}


/* ------------------------------------------ */
/* 
 * reads : p_1014->g_133
 * writes: p_1014->g_97
 */
VECTOR(int8_t, 16)  func_71(int64_t  p_72, uint32_t  p_73, int32_t  p_74, uint64_t  p_75, uint32_t  p_76, struct S4 * p_1014)
{ /* block id: 32 */
    union U3 l_132 = {65535UL};
    VECTOR(int32_t, 2) l_134 = (VECTOR(int32_t, 2))(0x2DF1167AL, 0L);
    int32_t *l_135 = &p_1014->g_97;
    int32_t *l_136 = (void*)0;
    int32_t *l_138 = (void*)0;
    int32_t *l_142 = (void*)0;
    int32_t l_143 = 0x4D160633L;
    VECTOR(int8_t, 16) l_144 = (VECTOR(int8_t, 16))(0x60L, (VECTOR(int8_t, 4))(0x60L, (VECTOR(int8_t, 2))(0x60L, 0x62L), 0x62L), 0x62L, 0x60L, 0x62L, (VECTOR(int8_t, 2))(0x60L, 0x62L), (VECTOR(int8_t, 2))(0x60L, 0x62L), 0x60L, 0x62L, 0x60L, 0x62L);
    int i;
    l_143 |= ((*l_135) = (l_132 , ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(p_1014->g_133.sdccb4d10)).s2615025002476525 && ((VECTOR(int32_t, 2))(l_134.xx)).xyxxyyxxxxxxyxxy))).s6));
    return l_144.scb60f77c65b12cc5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1014->g_34 p_1014->g_84 p_1014->g_43 p_1014->g_44 p_1014->g_40 p_1014->g_96 p_1014->g_101 p_1014->g_102 p_1014->g_97 p_1014->g_95 p_1014->g_42 p_1014->g_115
 * writes: p_1014->g_34 p_1014->g_84 p_1014->g_89 p_1014->g_95 p_1014->g_96 p_1014->g_115
 */
uint64_t  func_77(int8_t * p_78, int8_t * p_79, struct S4 * p_1014)
{ /* block id: 12 */
    int16_t l_94[7][7][5] = {{{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL}},{{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL}},{{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL}},{{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL}},{{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL}},{{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL}},{{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL},{0x27A7L,0L,0x111AL,(-8L),0x111AL}}};
    int32_t l_113 = 0x7804E31CL;
    uint32_t l_114 = 0x7D319CEEL;
    int i, j, k;
    for (p_1014->g_34 = 20; (p_1014->g_34 < 29); ++p_1014->g_34)
    { /* block id: 15 */
        p_1014->g_84 &= ((VECTOR(int32_t, 4))(0x3137123AL, 0L, 0x606C7929L, 8L)).z;
    }
    for (p_1014->g_34 = 0; (p_1014->g_34 >= 16); p_1014->g_34++)
    { /* block id: 20 */
        int64_t *l_87 = (void*)0;
        int64_t *l_88 = &p_1014->g_89[2][0][3];
        int32_t * volatile *l_98 = &p_1014->g_96;
        int32_t *l_110[2][5][3] = {{{&p_1014->g_97,&p_1014->g_97,&p_1014->g_97},{&p_1014->g_97,&p_1014->g_97,&p_1014->g_97},{&p_1014->g_97,&p_1014->g_97,&p_1014->g_97},{&p_1014->g_97,&p_1014->g_97,&p_1014->g_97},{&p_1014->g_97,&p_1014->g_97,&p_1014->g_97}},{{&p_1014->g_97,&p_1014->g_97,&p_1014->g_97},{&p_1014->g_97,&p_1014->g_97,&p_1014->g_97},{&p_1014->g_97,&p_1014->g_97,&p_1014->g_97},{&p_1014->g_97,&p_1014->g_97,&p_1014->g_97},{&p_1014->g_97,&p_1014->g_97,&p_1014->g_97}}};
        uint32_t *l_111 = (void*)0;
        uint32_t *l_112 = (void*)0;
        struct S2 *l_116 = &p_1014->g_115;
        int i, j, k;
        (*l_98) = ((((*l_88) = (*p_1014->g_43)) != (p_1014->g_95 = (safe_rshift_func_uint16_t_u_u(((safe_add_func_uint8_t_u_u(0x63L, (!4UL))) <= l_94[3][6][1]), p_1014->g_40[0])))) , p_1014->g_96);
        (*l_116) = (((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(0xD487E53E2A5121ECL, 0x866FAEDDA491F1F1L, 0xC6A96B581468E88EL, ((VECTOR(uint64_t, 4))(((((((((p_1014->g_101 , &p_1014->g_40[0]) == l_87) , (((VECTOR(int16_t, 2))(p_1014->g_102.yy)).hi > ((safe_sub_func_int8_t_s_s(((-1L) <= 18446744073709551612UL), ((VECTOR(uint8_t, 4))(255UL, 0UL, 0xA6L, 0x17L)).z)) > FAKE_DIVERGE(p_1014->global_2_offset, get_global_id(2), 10)))) , ((safe_mul_func_int16_t_s_s((safe_unary_minus_func_uint32_t_u(((**l_98) , 4294967295UL))), (safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x48L, 0x35L)), 0x1FL, 4L)).x, (((((l_113 &= ((void*)0 != l_110[1][1][1])) >= l_94[2][4][4]) < l_94[3][6][1]) == l_94[4][6][4]) && p_1014->g_101.f0))))) , l_94[3][6][1])) >= l_114) , 2L) && (*p_1014->g_96)) , 3UL), ((VECTOR(uint64_t, 2))(0x8CC70086F9DF61D7L)), 0xA506553B8602F127L)), ((VECTOR(uint64_t, 2))(0x3B5EBD512F4ECBCEL)), 0xE989E982BA979D12L, 0x1848BC0DD118ECCFL, p_1014->g_34, p_1014->g_102.y, p_1014->g_95, 6UL, 0UL)).s0, p_1014->g_42[0])) & 0x73C8D9F3L) , p_1014->g_115);
    }
    return p_1014->g_97;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_1015;
    struct S4* p_1014 = &c_1015;
    struct S4 c_1016 = {
        {0xC1L,0xC1L,0xC1L,0xC1L,0xC1L,0xC1L,0xC1L,0xC1L}, // p_1014->g_19
        (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967295UL), 4294967295UL), 4294967295UL, 1UL, 4294967295UL, (VECTOR(uint32_t, 2))(1UL, 4294967295UL), (VECTOR(uint32_t, 2))(1UL, 4294967295UL), 1UL, 4294967295UL, 1UL, 4294967295UL), // p_1014->g_20
        0xAAL, // p_1014->g_34
        {(-1L)}, // p_1014->g_40
        &p_1014->g_40[0], // p_1014->g_39
        {0x69L,0x69L}, // p_1014->g_42
        (-7L), // p_1014->g_44
        &p_1014->g_44, // p_1014->g_43
        1L, // p_1014->g_84
        {{{0x74B6F1E529FE0D49L,0x74B6F1E529FE0D49L,0x7CD1832462667C2DL,0x77F51BCBD03F0CD8L,1L},{0x74B6F1E529FE0D49L,0x74B6F1E529FE0D49L,0x7CD1832462667C2DL,0x77F51BCBD03F0CD8L,1L}},{{0x74B6F1E529FE0D49L,0x74B6F1E529FE0D49L,0x7CD1832462667C2DL,0x77F51BCBD03F0CD8L,1L},{0x74B6F1E529FE0D49L,0x74B6F1E529FE0D49L,0x7CD1832462667C2DL,0x77F51BCBD03F0CD8L,1L}},{{0x74B6F1E529FE0D49L,0x74B6F1E529FE0D49L,0x7CD1832462667C2DL,0x77F51BCBD03F0CD8L,1L},{0x74B6F1E529FE0D49L,0x74B6F1E529FE0D49L,0x7CD1832462667C2DL,0x77F51BCBD03F0CD8L,1L}},{{0x74B6F1E529FE0D49L,0x74B6F1E529FE0D49L,0x7CD1832462667C2DL,0x77F51BCBD03F0CD8L,1L},{0x74B6F1E529FE0D49L,0x74B6F1E529FE0D49L,0x7CD1832462667C2DL,0x77F51BCBD03F0CD8L,1L}}}, // p_1014->g_89
        0xC9F35A7BL, // p_1014->g_95
        0L, // p_1014->g_97
        &p_1014->g_97, // p_1014->g_96
        {5L,5UL,65535UL,0xA4B2AA81L,9L}, // p_1014->g_101
        (VECTOR(int16_t, 2))(0x35FEL, 0x6999L), // p_1014->g_102
        {{0UL,0x45A3L,1UL,0x9C5361ACFDDCEC70L}}, // p_1014->g_115
        (VECTOR(int32_t, 2))(0x0378A6B1L, 0L), // p_1014->g_122
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), // p_1014->g_124
        (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), (-1L)), (-1L)), (-1L), (-9L), (-1L)), // p_1014->g_125
        (VECTOR(int32_t, 16))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 0x315525C4L), 0x315525C4L), 0x315525C4L, (-10L), 0x315525C4L, (VECTOR(int32_t, 2))((-10L), 0x315525C4L), (VECTOR(int32_t, 2))((-10L), 0x315525C4L), (-10L), 0x315525C4L, (-10L), 0x315525C4L), // p_1014->g_133
        (void*)0, // p_1014->g_137
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1014->g_139
        (void*)0, // p_1014->g_140
        (void*)0, // p_1014->g_141
        {{0x579318AA5284081EL,0L,0x69L,0UL}}, // p_1014->g_176
        &p_1014->g_176, // p_1014->g_178
        (void*)0, // p_1014->g_183
        {&p_1014->g_183,&p_1014->g_183,&p_1014->g_183,&p_1014->g_183}, // p_1014->g_182
        {0x6B0A57D7B11FA8A9L,4L,0x4FL,1UL}, // p_1014->g_189
        &p_1014->g_183, // p_1014->g_192
        (VECTOR(uint8_t, 16))(5UL, (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 255UL), 255UL), 255UL, 5UL, 255UL, (VECTOR(uint8_t, 2))(5UL, 255UL), (VECTOR(uint8_t, 2))(5UL, 255UL), 5UL, 255UL, 5UL, 255UL), // p_1014->g_200
        (VECTOR(uint64_t, 8))(0x0E0F07E7360DF409L, (VECTOR(uint64_t, 4))(0x0E0F07E7360DF409L, (VECTOR(uint64_t, 2))(0x0E0F07E7360DF409L, 18446744073709551606UL), 18446744073709551606UL), 18446744073709551606UL, 0x0E0F07E7360DF409L, 18446744073709551606UL), // p_1014->g_214
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x1AF20C6CL), 0x1AF20C6CL), // p_1014->g_220
        (VECTOR(int64_t, 2))(8L, 0L), // p_1014->g_226
        (VECTOR(int64_t, 16))((-8L), (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), (-2L)), (-2L)), (-2L), (-8L), (-2L), (VECTOR(int64_t, 2))((-8L), (-2L)), (VECTOR(int64_t, 2))((-8L), (-2L)), (-8L), (-2L), (-8L), (-2L)), // p_1014->g_228
        (VECTOR(uint64_t, 16))(0xD08A484613669113L, (VECTOR(uint64_t, 4))(0xD08A484613669113L, (VECTOR(uint64_t, 2))(0xD08A484613669113L, 0xE6EE9C396952F921L), 0xE6EE9C396952F921L), 0xE6EE9C396952F921L, 0xD08A484613669113L, 0xE6EE9C396952F921L, (VECTOR(uint64_t, 2))(0xD08A484613669113L, 0xE6EE9C396952F921L), (VECTOR(uint64_t, 2))(0xD08A484613669113L, 0xE6EE9C396952F921L), 0xD08A484613669113L, 0xE6EE9C396952F921L, 0xD08A484613669113L, 0xE6EE9C396952F921L), // p_1014->g_234
        (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x2E093A6662EE07E1L), 0x2E093A6662EE07E1L), 0x2E093A6662EE07E1L, 0UL, 0x2E093A6662EE07E1L), // p_1014->g_237
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x1217C3E0L), 0x1217C3E0L), 0x1217C3E0L, (-1L), 0x1217C3E0L), // p_1014->g_246
        (VECTOR(int32_t, 2))(9L, 0L), // p_1014->g_247
        &p_1014->g_89[2][1][1], // p_1014->g_253
        {&p_1014->g_89[2][0][3]}, // p_1014->g_254
        (VECTOR(int16_t, 2))(8L, 0x76DDL), // p_1014->g_278
        (-1L), // p_1014->g_289
        {0xEB40730A7747AF41L,0x73D8L,0xDDL,0UL}, // p_1014->g_294
        (void*)0, // p_1014->g_295
        6UL, // p_1014->g_311
        (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x043AF719016231C7L), 0x043AF719016231C7L), 0x043AF719016231C7L, 0L, 0x043AF719016231C7L, (VECTOR(int64_t, 2))(0L, 0x043AF719016231C7L), (VECTOR(int64_t, 2))(0L, 0x043AF719016231C7L), 0L, 0x043AF719016231C7L, 0L, 0x043AF719016231C7L), // p_1014->g_319
        &p_1014->g_183, // p_1014->g_324
        (VECTOR(int16_t, 16))(0x10F2L, (VECTOR(int16_t, 4))(0x10F2L, (VECTOR(int16_t, 2))(0x10F2L, 1L), 1L), 1L, 0x10F2L, 1L, (VECTOR(int16_t, 2))(0x10F2L, 1L), (VECTOR(int16_t, 2))(0x10F2L, 1L), 0x10F2L, 1L, 0x10F2L, 1L), // p_1014->g_331
        (VECTOR(uint32_t, 16))(0x0C929B7EL, (VECTOR(uint32_t, 4))(0x0C929B7EL, (VECTOR(uint32_t, 2))(0x0C929B7EL, 0xB687F3F6L), 0xB687F3F6L), 0xB687F3F6L, 0x0C929B7EL, 0xB687F3F6L, (VECTOR(uint32_t, 2))(0x0C929B7EL, 0xB687F3F6L), (VECTOR(uint32_t, 2))(0x0C929B7EL, 0xB687F3F6L), 0x0C929B7EL, 0xB687F3F6L, 0x0C929B7EL, 0xB687F3F6L), // p_1014->g_376
        (void*)0, // p_1014->g_390
        &p_1014->g_390, // p_1014->g_389
        &p_1014->g_389, // p_1014->g_388
        (VECTOR(uint64_t, 2))(0xD76E74166DD4B017L, 0x584D8BA2D4EA37EDL), // p_1014->g_394
        (void*)0, // p_1014->g_417
        (VECTOR(int16_t, 8))(0x1BCAL, (VECTOR(int16_t, 4))(0x1BCAL, (VECTOR(int16_t, 2))(0x1BCAL, 0x31B2L), 0x31B2L), 0x31B2L, 0x1BCAL, 0x31B2L), // p_1014->g_425
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65531UL), 65531UL), // p_1014->g_428
        1UL, // p_1014->g_434
        &p_1014->g_434, // p_1014->g_433
        65535UL, // p_1014->g_436
        &p_1014->g_436, // p_1014->g_435
        0x6B60L, // p_1014->g_440
        (VECTOR(uint16_t, 2))(65535UL, 65533UL), // p_1014->g_444
        (VECTOR(uint8_t, 8))(246UL, (VECTOR(uint8_t, 4))(246UL, (VECTOR(uint8_t, 2))(246UL, 1UL), 1UL), 1UL, 246UL, 1UL), // p_1014->g_466
        (VECTOR(uint32_t, 2))(0x8263392CL, 0xA8A6EE7FL), // p_1014->g_487
        (VECTOR(int8_t, 8))(0x25L, (VECTOR(int8_t, 4))(0x25L, (VECTOR(int8_t, 2))(0x25L, (-1L)), (-1L)), (-1L), 0x25L, (-1L)), // p_1014->g_502
        {0xC8BBL}, // p_1014->g_516
        {{{0xE82ECA4B50BBFBC7L,0x524871C7995905B1L,1UL,0xA58EACA6D1716123L,1UL,0x524871C7995905B1L}},{{0xE82ECA4B50BBFBC7L,0x524871C7995905B1L,1UL,0xA58EACA6D1716123L,1UL,0x524871C7995905B1L}},{{0xE82ECA4B50BBFBC7L,0x524871C7995905B1L,1UL,0xA58EACA6D1716123L,1UL,0x524871C7995905B1L}},{{0xE82ECA4B50BBFBC7L,0x524871C7995905B1L,1UL,0xA58EACA6D1716123L,1UL,0x524871C7995905B1L}},{{0xE82ECA4B50BBFBC7L,0x524871C7995905B1L,1UL,0xA58EACA6D1716123L,1UL,0x524871C7995905B1L}},{{0xE82ECA4B50BBFBC7L,0x524871C7995905B1L,1UL,0xA58EACA6D1716123L,1UL,0x524871C7995905B1L}},{{0xE82ECA4B50BBFBC7L,0x524871C7995905B1L,1UL,0xA58EACA6D1716123L,1UL,0x524871C7995905B1L}},{{0xE82ECA4B50BBFBC7L,0x524871C7995905B1L,1UL,0xA58EACA6D1716123L,1UL,0x524871C7995905B1L}},{{0xE82ECA4B50BBFBC7L,0x524871C7995905B1L,1UL,0xA58EACA6D1716123L,1UL,0x524871C7995905B1L}},{{0xE82ECA4B50BBFBC7L,0x524871C7995905B1L,1UL,0xA58EACA6D1716123L,1UL,0x524871C7995905B1L}}}, // p_1014->g_520
        &p_1014->g_520[7][0][2], // p_1014->g_519
        &p_1014->g_519, // p_1014->g_518
        &p_1014->g_518, // p_1014->g_517
        &p_1014->g_97, // p_1014->g_524
        (VECTOR(int8_t, 8))((-5L), (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 1L), 1L), 1L, (-5L), 1L), // p_1014->g_525
        (VECTOR(int32_t, 2))(9L, 0x653AA2FAL), // p_1014->g_526
        &p_1014->g_183, // p_1014->g_528
        (VECTOR(int16_t, 4))(0x1A33L, (VECTOR(int16_t, 2))(0x1A33L, 0L), 0L), // p_1014->g_536
        (void*)0, // p_1014->g_553
        &p_1014->g_183, // p_1014->g_554
        {&p_1014->g_516}, // p_1014->g_571
        {{0L,0x98882BC8L,0x29D4L,0x770DB421L,0x2ED50E9AL},{0L,0x98882BC8L,0x29D4L,0x770DB421L,0x2ED50E9AL},{0L,0x98882BC8L,0x29D4L,0x770DB421L,0x2ED50E9AL},{0L,0x98882BC8L,0x29D4L,0x770DB421L,0x2ED50E9AL},{0L,0x98882BC8L,0x29D4L,0x770DB421L,0x2ED50E9AL},{0L,0x98882BC8L,0x29D4L,0x770DB421L,0x2ED50E9AL}}, // p_1014->g_591
        {0x5C39L,0x4BEFF496L,5UL,3UL,1L}, // p_1014->g_593
        (void*)0, // p_1014->g_608
        (VECTOR(int64_t, 8))(0x5E72054E093DA527L, (VECTOR(int64_t, 4))(0x5E72054E093DA527L, (VECTOR(int64_t, 2))(0x5E72054E093DA527L, (-1L)), (-1L)), (-1L), 0x5E72054E093DA527L, (-1L)), // p_1014->g_618
        {0x72D06AABFA4FF1EDL,-1L,8UL,9UL}, // p_1014->g_622
        &p_1014->g_183, // p_1014->g_666
        {0x2170L,4294967295UL,65532UL,9UL,0x7BADF727L}, // p_1014->g_675
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1014->g_681
        &p_1014->g_183, // p_1014->g_684
        (void*)0, // p_1014->g_687
        (VECTOR(int32_t, 2))(0L, (-6L)), // p_1014->g_692
        (VECTOR(uint16_t, 2))(0x468FL, 0UL), // p_1014->g_723
        (VECTOR(int16_t, 2))((-1L), 0x1F44L), // p_1014->g_726
        (VECTOR(int16_t, 8))(0x21B3L, (VECTOR(int16_t, 4))(0x21B3L, (VECTOR(int16_t, 2))(0x21B3L, 0L), 0L), 0L, 0x21B3L, 0L), // p_1014->g_730
        (VECTOR(uint16_t, 4))(0xE875L, (VECTOR(uint16_t, 2))(0xE875L, 65535UL), 65535UL), // p_1014->g_734
        &p_1014->g_389, // p_1014->g_756
        {&p_1014->g_756,&p_1014->g_756,&p_1014->g_756,&p_1014->g_756,&p_1014->g_756,&p_1014->g_756,&p_1014->g_756,&p_1014->g_756}, // p_1014->g_755
        &p_1014->g_183, // p_1014->g_775
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 1L), 1L), // p_1014->g_798
        (VECTOR(int16_t, 2))(0x5899L, 0x7E43L), // p_1014->g_799
        0x68978982L, // p_1014->g_809
        {0x3000L,0xF15C8D8EL,0x675DL,0x3771CB90L,0x71A4AF69L}, // p_1014->g_812
        0x248603BCL, // p_1014->g_813
        {0xD4BB576F5F46BA2CL,0x6DFDL,0x15L,18446744073709551610UL}, // p_1014->g_816
        {0x36FBL,4294967295UL,0xA6EFL,1UL,1L}, // p_1014->g_826
        {0x1C90L,0UL,65533UL,4294967295UL,0L}, // p_1014->g_827
        {{0x4F5A76218A56C645L,-1L,250UL,18446744073709551608UL}}, // p_1014->g_828
        0x51L, // p_1014->g_858
        (VECTOR(int32_t, 2))(0L, (-1L)), // p_1014->g_877
        &p_1014->g_189, // p_1014->g_887
        &p_1014->g_887, // p_1014->g_886
        (VECTOR(int16_t, 8))(0x0EA9L, (VECTOR(int16_t, 4))(0x0EA9L, (VECTOR(int16_t, 2))(0x0EA9L, 0x5C3FL), 0x5C3FL), 0x5C3FL, 0x0EA9L, 0x5C3FL), // p_1014->g_896
        (VECTOR(int16_t, 4))(0x26EAL, (VECTOR(int16_t, 2))(0x26EAL, 0x0BEDL), 0x0BEDL), // p_1014->g_900
        (VECTOR(int16_t, 16))(0x63B9L, (VECTOR(int16_t, 4))(0x63B9L, (VECTOR(int16_t, 2))(0x63B9L, 0x2388L), 0x2388L), 0x2388L, 0x63B9L, 0x2388L, (VECTOR(int16_t, 2))(0x63B9L, 0x2388L), (VECTOR(int16_t, 2))(0x63B9L, 0x2388L), 0x63B9L, 0x2388L, 0x63B9L, 0x2388L), // p_1014->g_903
        &p_1014->g_827.f0, // p_1014->g_927
        &p_1014->g_927, // p_1014->g_926
        {{&p_1014->g_926,&p_1014->g_926,&p_1014->g_926,&p_1014->g_926,&p_1014->g_926,&p_1014->g_926,&p_1014->g_926}}, // p_1014->g_925
        0x5EEB9A7AL, // p_1014->g_946
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L)), // p_1014->g_947
        &p_1014->g_858, // p_1014->g_950
        4294967294UL, // p_1014->g_951
        &p_1014->g_183, // p_1014->g_977
        (VECTOR(int32_t, 16))(0x06FA6A6CL, (VECTOR(int32_t, 4))(0x06FA6A6CL, (VECTOR(int32_t, 2))(0x06FA6A6CL, 0x7A634AB1L), 0x7A634AB1L), 0x7A634AB1L, 0x06FA6A6CL, 0x7A634AB1L, (VECTOR(int32_t, 2))(0x06FA6A6CL, 0x7A634AB1L), (VECTOR(int32_t, 2))(0x06FA6A6CL, 0x7A634AB1L), 0x06FA6A6CL, 0x7A634AB1L, 0x06FA6A6CL, 0x7A634AB1L), // p_1014->g_987
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L)), // p_1014->g_993
        {0x5D03727239CB6A5BL,0x5D03727239CB6A5BL,0x5D03727239CB6A5BL,0x5D03727239CB6A5BL,0x5D03727239CB6A5BL,0x5D03727239CB6A5BL,0x5D03727239CB6A5BL,0x5D03727239CB6A5BL}, // p_1014->g_998
        &p_1014->g_812, // p_1014->g_1012
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
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1014->g_19[i], "p_1014->g_19[i]", print_hash_value);

    }
    transparent_crc(p_1014->g_20.s0, "p_1014->g_20.s0", print_hash_value);
    transparent_crc(p_1014->g_20.s1, "p_1014->g_20.s1", print_hash_value);
    transparent_crc(p_1014->g_20.s2, "p_1014->g_20.s2", print_hash_value);
    transparent_crc(p_1014->g_20.s3, "p_1014->g_20.s3", print_hash_value);
    transparent_crc(p_1014->g_20.s4, "p_1014->g_20.s4", print_hash_value);
    transparent_crc(p_1014->g_20.s5, "p_1014->g_20.s5", print_hash_value);
    transparent_crc(p_1014->g_20.s6, "p_1014->g_20.s6", print_hash_value);
    transparent_crc(p_1014->g_20.s7, "p_1014->g_20.s7", print_hash_value);
    transparent_crc(p_1014->g_20.s8, "p_1014->g_20.s8", print_hash_value);
    transparent_crc(p_1014->g_20.s9, "p_1014->g_20.s9", print_hash_value);
    transparent_crc(p_1014->g_20.sa, "p_1014->g_20.sa", print_hash_value);
    transparent_crc(p_1014->g_20.sb, "p_1014->g_20.sb", print_hash_value);
    transparent_crc(p_1014->g_20.sc, "p_1014->g_20.sc", print_hash_value);
    transparent_crc(p_1014->g_20.sd, "p_1014->g_20.sd", print_hash_value);
    transparent_crc(p_1014->g_20.se, "p_1014->g_20.se", print_hash_value);
    transparent_crc(p_1014->g_20.sf, "p_1014->g_20.sf", print_hash_value);
    transparent_crc(p_1014->g_34, "p_1014->g_34", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1014->g_40[i], "p_1014->g_40[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1014->g_42[i], "p_1014->g_42[i]", print_hash_value);

    }
    transparent_crc(p_1014->g_44, "p_1014->g_44", print_hash_value);
    transparent_crc(p_1014->g_84, "p_1014->g_84", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1014->g_89[i][j][k], "p_1014->g_89[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1014->g_95, "p_1014->g_95", print_hash_value);
    transparent_crc(p_1014->g_97, "p_1014->g_97", print_hash_value);
    transparent_crc(p_1014->g_101.f0, "p_1014->g_101.f0", print_hash_value);
    transparent_crc(p_1014->g_101.f1, "p_1014->g_101.f1", print_hash_value);
    transparent_crc(p_1014->g_101.f2, "p_1014->g_101.f2", print_hash_value);
    transparent_crc(p_1014->g_101.f3, "p_1014->g_101.f3", print_hash_value);
    transparent_crc(p_1014->g_101.f4, "p_1014->g_101.f4", print_hash_value);
    transparent_crc(p_1014->g_102.x, "p_1014->g_102.x", print_hash_value);
    transparent_crc(p_1014->g_102.y, "p_1014->g_102.y", print_hash_value);
    transparent_crc(p_1014->g_115.f0.f0, "p_1014->g_115.f0.f0", print_hash_value);
    transparent_crc(p_1014->g_115.f0.f1, "p_1014->g_115.f0.f1", print_hash_value);
    transparent_crc(p_1014->g_115.f0.f2, "p_1014->g_115.f0.f2", print_hash_value);
    transparent_crc(p_1014->g_115.f0.f3, "p_1014->g_115.f0.f3", print_hash_value);
    transparent_crc(p_1014->g_122.x, "p_1014->g_122.x", print_hash_value);
    transparent_crc(p_1014->g_122.y, "p_1014->g_122.y", print_hash_value);
    transparent_crc(p_1014->g_124.x, "p_1014->g_124.x", print_hash_value);
    transparent_crc(p_1014->g_124.y, "p_1014->g_124.y", print_hash_value);
    transparent_crc(p_1014->g_124.z, "p_1014->g_124.z", print_hash_value);
    transparent_crc(p_1014->g_124.w, "p_1014->g_124.w", print_hash_value);
    transparent_crc(p_1014->g_125.s0, "p_1014->g_125.s0", print_hash_value);
    transparent_crc(p_1014->g_125.s1, "p_1014->g_125.s1", print_hash_value);
    transparent_crc(p_1014->g_125.s2, "p_1014->g_125.s2", print_hash_value);
    transparent_crc(p_1014->g_125.s3, "p_1014->g_125.s3", print_hash_value);
    transparent_crc(p_1014->g_125.s4, "p_1014->g_125.s4", print_hash_value);
    transparent_crc(p_1014->g_125.s5, "p_1014->g_125.s5", print_hash_value);
    transparent_crc(p_1014->g_125.s6, "p_1014->g_125.s6", print_hash_value);
    transparent_crc(p_1014->g_125.s7, "p_1014->g_125.s7", print_hash_value);
    transparent_crc(p_1014->g_133.s0, "p_1014->g_133.s0", print_hash_value);
    transparent_crc(p_1014->g_133.s1, "p_1014->g_133.s1", print_hash_value);
    transparent_crc(p_1014->g_133.s2, "p_1014->g_133.s2", print_hash_value);
    transparent_crc(p_1014->g_133.s3, "p_1014->g_133.s3", print_hash_value);
    transparent_crc(p_1014->g_133.s4, "p_1014->g_133.s4", print_hash_value);
    transparent_crc(p_1014->g_133.s5, "p_1014->g_133.s5", print_hash_value);
    transparent_crc(p_1014->g_133.s6, "p_1014->g_133.s6", print_hash_value);
    transparent_crc(p_1014->g_133.s7, "p_1014->g_133.s7", print_hash_value);
    transparent_crc(p_1014->g_133.s8, "p_1014->g_133.s8", print_hash_value);
    transparent_crc(p_1014->g_133.s9, "p_1014->g_133.s9", print_hash_value);
    transparent_crc(p_1014->g_133.sa, "p_1014->g_133.sa", print_hash_value);
    transparent_crc(p_1014->g_133.sb, "p_1014->g_133.sb", print_hash_value);
    transparent_crc(p_1014->g_133.sc, "p_1014->g_133.sc", print_hash_value);
    transparent_crc(p_1014->g_133.sd, "p_1014->g_133.sd", print_hash_value);
    transparent_crc(p_1014->g_133.se, "p_1014->g_133.se", print_hash_value);
    transparent_crc(p_1014->g_133.sf, "p_1014->g_133.sf", print_hash_value);
    transparent_crc(p_1014->g_176.f0.f0, "p_1014->g_176.f0.f0", print_hash_value);
    transparent_crc(p_1014->g_176.f0.f1, "p_1014->g_176.f0.f1", print_hash_value);
    transparent_crc(p_1014->g_176.f0.f2, "p_1014->g_176.f0.f2", print_hash_value);
    transparent_crc(p_1014->g_176.f0.f3, "p_1014->g_176.f0.f3", print_hash_value);
    transparent_crc(p_1014->g_189.f0, "p_1014->g_189.f0", print_hash_value);
    transparent_crc(p_1014->g_189.f1, "p_1014->g_189.f1", print_hash_value);
    transparent_crc(p_1014->g_189.f2, "p_1014->g_189.f2", print_hash_value);
    transparent_crc(p_1014->g_189.f3, "p_1014->g_189.f3", print_hash_value);
    transparent_crc(p_1014->g_200.s0, "p_1014->g_200.s0", print_hash_value);
    transparent_crc(p_1014->g_200.s1, "p_1014->g_200.s1", print_hash_value);
    transparent_crc(p_1014->g_200.s2, "p_1014->g_200.s2", print_hash_value);
    transparent_crc(p_1014->g_200.s3, "p_1014->g_200.s3", print_hash_value);
    transparent_crc(p_1014->g_200.s4, "p_1014->g_200.s4", print_hash_value);
    transparent_crc(p_1014->g_200.s5, "p_1014->g_200.s5", print_hash_value);
    transparent_crc(p_1014->g_200.s6, "p_1014->g_200.s6", print_hash_value);
    transparent_crc(p_1014->g_200.s7, "p_1014->g_200.s7", print_hash_value);
    transparent_crc(p_1014->g_200.s8, "p_1014->g_200.s8", print_hash_value);
    transparent_crc(p_1014->g_200.s9, "p_1014->g_200.s9", print_hash_value);
    transparent_crc(p_1014->g_200.sa, "p_1014->g_200.sa", print_hash_value);
    transparent_crc(p_1014->g_200.sb, "p_1014->g_200.sb", print_hash_value);
    transparent_crc(p_1014->g_200.sc, "p_1014->g_200.sc", print_hash_value);
    transparent_crc(p_1014->g_200.sd, "p_1014->g_200.sd", print_hash_value);
    transparent_crc(p_1014->g_200.se, "p_1014->g_200.se", print_hash_value);
    transparent_crc(p_1014->g_200.sf, "p_1014->g_200.sf", print_hash_value);
    transparent_crc(p_1014->g_214.s0, "p_1014->g_214.s0", print_hash_value);
    transparent_crc(p_1014->g_214.s1, "p_1014->g_214.s1", print_hash_value);
    transparent_crc(p_1014->g_214.s2, "p_1014->g_214.s2", print_hash_value);
    transparent_crc(p_1014->g_214.s3, "p_1014->g_214.s3", print_hash_value);
    transparent_crc(p_1014->g_214.s4, "p_1014->g_214.s4", print_hash_value);
    transparent_crc(p_1014->g_214.s5, "p_1014->g_214.s5", print_hash_value);
    transparent_crc(p_1014->g_214.s6, "p_1014->g_214.s6", print_hash_value);
    transparent_crc(p_1014->g_214.s7, "p_1014->g_214.s7", print_hash_value);
    transparent_crc(p_1014->g_220.x, "p_1014->g_220.x", print_hash_value);
    transparent_crc(p_1014->g_220.y, "p_1014->g_220.y", print_hash_value);
    transparent_crc(p_1014->g_220.z, "p_1014->g_220.z", print_hash_value);
    transparent_crc(p_1014->g_220.w, "p_1014->g_220.w", print_hash_value);
    transparent_crc(p_1014->g_226.x, "p_1014->g_226.x", print_hash_value);
    transparent_crc(p_1014->g_226.y, "p_1014->g_226.y", print_hash_value);
    transparent_crc(p_1014->g_228.s0, "p_1014->g_228.s0", print_hash_value);
    transparent_crc(p_1014->g_228.s1, "p_1014->g_228.s1", print_hash_value);
    transparent_crc(p_1014->g_228.s2, "p_1014->g_228.s2", print_hash_value);
    transparent_crc(p_1014->g_228.s3, "p_1014->g_228.s3", print_hash_value);
    transparent_crc(p_1014->g_228.s4, "p_1014->g_228.s4", print_hash_value);
    transparent_crc(p_1014->g_228.s5, "p_1014->g_228.s5", print_hash_value);
    transparent_crc(p_1014->g_228.s6, "p_1014->g_228.s6", print_hash_value);
    transparent_crc(p_1014->g_228.s7, "p_1014->g_228.s7", print_hash_value);
    transparent_crc(p_1014->g_228.s8, "p_1014->g_228.s8", print_hash_value);
    transparent_crc(p_1014->g_228.s9, "p_1014->g_228.s9", print_hash_value);
    transparent_crc(p_1014->g_228.sa, "p_1014->g_228.sa", print_hash_value);
    transparent_crc(p_1014->g_228.sb, "p_1014->g_228.sb", print_hash_value);
    transparent_crc(p_1014->g_228.sc, "p_1014->g_228.sc", print_hash_value);
    transparent_crc(p_1014->g_228.sd, "p_1014->g_228.sd", print_hash_value);
    transparent_crc(p_1014->g_228.se, "p_1014->g_228.se", print_hash_value);
    transparent_crc(p_1014->g_228.sf, "p_1014->g_228.sf", print_hash_value);
    transparent_crc(p_1014->g_234.s0, "p_1014->g_234.s0", print_hash_value);
    transparent_crc(p_1014->g_234.s1, "p_1014->g_234.s1", print_hash_value);
    transparent_crc(p_1014->g_234.s2, "p_1014->g_234.s2", print_hash_value);
    transparent_crc(p_1014->g_234.s3, "p_1014->g_234.s3", print_hash_value);
    transparent_crc(p_1014->g_234.s4, "p_1014->g_234.s4", print_hash_value);
    transparent_crc(p_1014->g_234.s5, "p_1014->g_234.s5", print_hash_value);
    transparent_crc(p_1014->g_234.s6, "p_1014->g_234.s6", print_hash_value);
    transparent_crc(p_1014->g_234.s7, "p_1014->g_234.s7", print_hash_value);
    transparent_crc(p_1014->g_234.s8, "p_1014->g_234.s8", print_hash_value);
    transparent_crc(p_1014->g_234.s9, "p_1014->g_234.s9", print_hash_value);
    transparent_crc(p_1014->g_234.sa, "p_1014->g_234.sa", print_hash_value);
    transparent_crc(p_1014->g_234.sb, "p_1014->g_234.sb", print_hash_value);
    transparent_crc(p_1014->g_234.sc, "p_1014->g_234.sc", print_hash_value);
    transparent_crc(p_1014->g_234.sd, "p_1014->g_234.sd", print_hash_value);
    transparent_crc(p_1014->g_234.se, "p_1014->g_234.se", print_hash_value);
    transparent_crc(p_1014->g_234.sf, "p_1014->g_234.sf", print_hash_value);
    transparent_crc(p_1014->g_237.s0, "p_1014->g_237.s0", print_hash_value);
    transparent_crc(p_1014->g_237.s1, "p_1014->g_237.s1", print_hash_value);
    transparent_crc(p_1014->g_237.s2, "p_1014->g_237.s2", print_hash_value);
    transparent_crc(p_1014->g_237.s3, "p_1014->g_237.s3", print_hash_value);
    transparent_crc(p_1014->g_237.s4, "p_1014->g_237.s4", print_hash_value);
    transparent_crc(p_1014->g_237.s5, "p_1014->g_237.s5", print_hash_value);
    transparent_crc(p_1014->g_237.s6, "p_1014->g_237.s6", print_hash_value);
    transparent_crc(p_1014->g_237.s7, "p_1014->g_237.s7", print_hash_value);
    transparent_crc(p_1014->g_246.s0, "p_1014->g_246.s0", print_hash_value);
    transparent_crc(p_1014->g_246.s1, "p_1014->g_246.s1", print_hash_value);
    transparent_crc(p_1014->g_246.s2, "p_1014->g_246.s2", print_hash_value);
    transparent_crc(p_1014->g_246.s3, "p_1014->g_246.s3", print_hash_value);
    transparent_crc(p_1014->g_246.s4, "p_1014->g_246.s4", print_hash_value);
    transparent_crc(p_1014->g_246.s5, "p_1014->g_246.s5", print_hash_value);
    transparent_crc(p_1014->g_246.s6, "p_1014->g_246.s6", print_hash_value);
    transparent_crc(p_1014->g_246.s7, "p_1014->g_246.s7", print_hash_value);
    transparent_crc(p_1014->g_247.x, "p_1014->g_247.x", print_hash_value);
    transparent_crc(p_1014->g_247.y, "p_1014->g_247.y", print_hash_value);
    transparent_crc(p_1014->g_278.x, "p_1014->g_278.x", print_hash_value);
    transparent_crc(p_1014->g_278.y, "p_1014->g_278.y", print_hash_value);
    transparent_crc(p_1014->g_289, "p_1014->g_289", print_hash_value);
    transparent_crc(p_1014->g_294.f0, "p_1014->g_294.f0", print_hash_value);
    transparent_crc(p_1014->g_294.f1, "p_1014->g_294.f1", print_hash_value);
    transparent_crc(p_1014->g_294.f2, "p_1014->g_294.f2", print_hash_value);
    transparent_crc(p_1014->g_294.f3, "p_1014->g_294.f3", print_hash_value);
    transparent_crc(p_1014->g_311, "p_1014->g_311", print_hash_value);
    transparent_crc(p_1014->g_319.s0, "p_1014->g_319.s0", print_hash_value);
    transparent_crc(p_1014->g_319.s1, "p_1014->g_319.s1", print_hash_value);
    transparent_crc(p_1014->g_319.s2, "p_1014->g_319.s2", print_hash_value);
    transparent_crc(p_1014->g_319.s3, "p_1014->g_319.s3", print_hash_value);
    transparent_crc(p_1014->g_319.s4, "p_1014->g_319.s4", print_hash_value);
    transparent_crc(p_1014->g_319.s5, "p_1014->g_319.s5", print_hash_value);
    transparent_crc(p_1014->g_319.s6, "p_1014->g_319.s6", print_hash_value);
    transparent_crc(p_1014->g_319.s7, "p_1014->g_319.s7", print_hash_value);
    transparent_crc(p_1014->g_319.s8, "p_1014->g_319.s8", print_hash_value);
    transparent_crc(p_1014->g_319.s9, "p_1014->g_319.s9", print_hash_value);
    transparent_crc(p_1014->g_319.sa, "p_1014->g_319.sa", print_hash_value);
    transparent_crc(p_1014->g_319.sb, "p_1014->g_319.sb", print_hash_value);
    transparent_crc(p_1014->g_319.sc, "p_1014->g_319.sc", print_hash_value);
    transparent_crc(p_1014->g_319.sd, "p_1014->g_319.sd", print_hash_value);
    transparent_crc(p_1014->g_319.se, "p_1014->g_319.se", print_hash_value);
    transparent_crc(p_1014->g_319.sf, "p_1014->g_319.sf", print_hash_value);
    transparent_crc(p_1014->g_331.s0, "p_1014->g_331.s0", print_hash_value);
    transparent_crc(p_1014->g_331.s1, "p_1014->g_331.s1", print_hash_value);
    transparent_crc(p_1014->g_331.s2, "p_1014->g_331.s2", print_hash_value);
    transparent_crc(p_1014->g_331.s3, "p_1014->g_331.s3", print_hash_value);
    transparent_crc(p_1014->g_331.s4, "p_1014->g_331.s4", print_hash_value);
    transparent_crc(p_1014->g_331.s5, "p_1014->g_331.s5", print_hash_value);
    transparent_crc(p_1014->g_331.s6, "p_1014->g_331.s6", print_hash_value);
    transparent_crc(p_1014->g_331.s7, "p_1014->g_331.s7", print_hash_value);
    transparent_crc(p_1014->g_331.s8, "p_1014->g_331.s8", print_hash_value);
    transparent_crc(p_1014->g_331.s9, "p_1014->g_331.s9", print_hash_value);
    transparent_crc(p_1014->g_331.sa, "p_1014->g_331.sa", print_hash_value);
    transparent_crc(p_1014->g_331.sb, "p_1014->g_331.sb", print_hash_value);
    transparent_crc(p_1014->g_331.sc, "p_1014->g_331.sc", print_hash_value);
    transparent_crc(p_1014->g_331.sd, "p_1014->g_331.sd", print_hash_value);
    transparent_crc(p_1014->g_331.se, "p_1014->g_331.se", print_hash_value);
    transparent_crc(p_1014->g_331.sf, "p_1014->g_331.sf", print_hash_value);
    transparent_crc(p_1014->g_376.s0, "p_1014->g_376.s0", print_hash_value);
    transparent_crc(p_1014->g_376.s1, "p_1014->g_376.s1", print_hash_value);
    transparent_crc(p_1014->g_376.s2, "p_1014->g_376.s2", print_hash_value);
    transparent_crc(p_1014->g_376.s3, "p_1014->g_376.s3", print_hash_value);
    transparent_crc(p_1014->g_376.s4, "p_1014->g_376.s4", print_hash_value);
    transparent_crc(p_1014->g_376.s5, "p_1014->g_376.s5", print_hash_value);
    transparent_crc(p_1014->g_376.s6, "p_1014->g_376.s6", print_hash_value);
    transparent_crc(p_1014->g_376.s7, "p_1014->g_376.s7", print_hash_value);
    transparent_crc(p_1014->g_376.s8, "p_1014->g_376.s8", print_hash_value);
    transparent_crc(p_1014->g_376.s9, "p_1014->g_376.s9", print_hash_value);
    transparent_crc(p_1014->g_376.sa, "p_1014->g_376.sa", print_hash_value);
    transparent_crc(p_1014->g_376.sb, "p_1014->g_376.sb", print_hash_value);
    transparent_crc(p_1014->g_376.sc, "p_1014->g_376.sc", print_hash_value);
    transparent_crc(p_1014->g_376.sd, "p_1014->g_376.sd", print_hash_value);
    transparent_crc(p_1014->g_376.se, "p_1014->g_376.se", print_hash_value);
    transparent_crc(p_1014->g_376.sf, "p_1014->g_376.sf", print_hash_value);
    transparent_crc(p_1014->g_394.x, "p_1014->g_394.x", print_hash_value);
    transparent_crc(p_1014->g_394.y, "p_1014->g_394.y", print_hash_value);
    transparent_crc(p_1014->g_425.s0, "p_1014->g_425.s0", print_hash_value);
    transparent_crc(p_1014->g_425.s1, "p_1014->g_425.s1", print_hash_value);
    transparent_crc(p_1014->g_425.s2, "p_1014->g_425.s2", print_hash_value);
    transparent_crc(p_1014->g_425.s3, "p_1014->g_425.s3", print_hash_value);
    transparent_crc(p_1014->g_425.s4, "p_1014->g_425.s4", print_hash_value);
    transparent_crc(p_1014->g_425.s5, "p_1014->g_425.s5", print_hash_value);
    transparent_crc(p_1014->g_425.s6, "p_1014->g_425.s6", print_hash_value);
    transparent_crc(p_1014->g_425.s7, "p_1014->g_425.s7", print_hash_value);
    transparent_crc(p_1014->g_428.x, "p_1014->g_428.x", print_hash_value);
    transparent_crc(p_1014->g_428.y, "p_1014->g_428.y", print_hash_value);
    transparent_crc(p_1014->g_428.z, "p_1014->g_428.z", print_hash_value);
    transparent_crc(p_1014->g_428.w, "p_1014->g_428.w", print_hash_value);
    transparent_crc(p_1014->g_434, "p_1014->g_434", print_hash_value);
    transparent_crc(p_1014->g_436, "p_1014->g_436", print_hash_value);
    transparent_crc(p_1014->g_440, "p_1014->g_440", print_hash_value);
    transparent_crc(p_1014->g_444.x, "p_1014->g_444.x", print_hash_value);
    transparent_crc(p_1014->g_444.y, "p_1014->g_444.y", print_hash_value);
    transparent_crc(p_1014->g_466.s0, "p_1014->g_466.s0", print_hash_value);
    transparent_crc(p_1014->g_466.s1, "p_1014->g_466.s1", print_hash_value);
    transparent_crc(p_1014->g_466.s2, "p_1014->g_466.s2", print_hash_value);
    transparent_crc(p_1014->g_466.s3, "p_1014->g_466.s3", print_hash_value);
    transparent_crc(p_1014->g_466.s4, "p_1014->g_466.s4", print_hash_value);
    transparent_crc(p_1014->g_466.s5, "p_1014->g_466.s5", print_hash_value);
    transparent_crc(p_1014->g_466.s6, "p_1014->g_466.s6", print_hash_value);
    transparent_crc(p_1014->g_466.s7, "p_1014->g_466.s7", print_hash_value);
    transparent_crc(p_1014->g_487.x, "p_1014->g_487.x", print_hash_value);
    transparent_crc(p_1014->g_487.y, "p_1014->g_487.y", print_hash_value);
    transparent_crc(p_1014->g_502.s0, "p_1014->g_502.s0", print_hash_value);
    transparent_crc(p_1014->g_502.s1, "p_1014->g_502.s1", print_hash_value);
    transparent_crc(p_1014->g_502.s2, "p_1014->g_502.s2", print_hash_value);
    transparent_crc(p_1014->g_502.s3, "p_1014->g_502.s3", print_hash_value);
    transparent_crc(p_1014->g_502.s4, "p_1014->g_502.s4", print_hash_value);
    transparent_crc(p_1014->g_502.s5, "p_1014->g_502.s5", print_hash_value);
    transparent_crc(p_1014->g_502.s6, "p_1014->g_502.s6", print_hash_value);
    transparent_crc(p_1014->g_502.s7, "p_1014->g_502.s7", print_hash_value);
    transparent_crc(p_1014->g_516.f0, "p_1014->g_516.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1014->g_520[i][j][k], "p_1014->g_520[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1014->g_525.s0, "p_1014->g_525.s0", print_hash_value);
    transparent_crc(p_1014->g_525.s1, "p_1014->g_525.s1", print_hash_value);
    transparent_crc(p_1014->g_525.s2, "p_1014->g_525.s2", print_hash_value);
    transparent_crc(p_1014->g_525.s3, "p_1014->g_525.s3", print_hash_value);
    transparent_crc(p_1014->g_525.s4, "p_1014->g_525.s4", print_hash_value);
    transparent_crc(p_1014->g_525.s5, "p_1014->g_525.s5", print_hash_value);
    transparent_crc(p_1014->g_525.s6, "p_1014->g_525.s6", print_hash_value);
    transparent_crc(p_1014->g_525.s7, "p_1014->g_525.s7", print_hash_value);
    transparent_crc(p_1014->g_526.x, "p_1014->g_526.x", print_hash_value);
    transparent_crc(p_1014->g_526.y, "p_1014->g_526.y", print_hash_value);
    transparent_crc(p_1014->g_536.x, "p_1014->g_536.x", print_hash_value);
    transparent_crc(p_1014->g_536.y, "p_1014->g_536.y", print_hash_value);
    transparent_crc(p_1014->g_536.z, "p_1014->g_536.z", print_hash_value);
    transparent_crc(p_1014->g_536.w, "p_1014->g_536.w", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1014->g_591[i].f0, "p_1014->g_591[i].f0", print_hash_value);
        transparent_crc(p_1014->g_591[i].f1, "p_1014->g_591[i].f1", print_hash_value);
        transparent_crc(p_1014->g_591[i].f2, "p_1014->g_591[i].f2", print_hash_value);
        transparent_crc(p_1014->g_591[i].f3, "p_1014->g_591[i].f3", print_hash_value);
        transparent_crc(p_1014->g_591[i].f4, "p_1014->g_591[i].f4", print_hash_value);

    }
    transparent_crc(p_1014->g_593.f0, "p_1014->g_593.f0", print_hash_value);
    transparent_crc(p_1014->g_593.f1, "p_1014->g_593.f1", print_hash_value);
    transparent_crc(p_1014->g_593.f2, "p_1014->g_593.f2", print_hash_value);
    transparent_crc(p_1014->g_593.f3, "p_1014->g_593.f3", print_hash_value);
    transparent_crc(p_1014->g_593.f4, "p_1014->g_593.f4", print_hash_value);
    transparent_crc(p_1014->g_618.s0, "p_1014->g_618.s0", print_hash_value);
    transparent_crc(p_1014->g_618.s1, "p_1014->g_618.s1", print_hash_value);
    transparent_crc(p_1014->g_618.s2, "p_1014->g_618.s2", print_hash_value);
    transparent_crc(p_1014->g_618.s3, "p_1014->g_618.s3", print_hash_value);
    transparent_crc(p_1014->g_618.s4, "p_1014->g_618.s4", print_hash_value);
    transparent_crc(p_1014->g_618.s5, "p_1014->g_618.s5", print_hash_value);
    transparent_crc(p_1014->g_618.s6, "p_1014->g_618.s6", print_hash_value);
    transparent_crc(p_1014->g_618.s7, "p_1014->g_618.s7", print_hash_value);
    transparent_crc(p_1014->g_622.f0, "p_1014->g_622.f0", print_hash_value);
    transparent_crc(p_1014->g_622.f1, "p_1014->g_622.f1", print_hash_value);
    transparent_crc(p_1014->g_622.f2, "p_1014->g_622.f2", print_hash_value);
    transparent_crc(p_1014->g_622.f3, "p_1014->g_622.f3", print_hash_value);
    transparent_crc(p_1014->g_675.f0, "p_1014->g_675.f0", print_hash_value);
    transparent_crc(p_1014->g_675.f1, "p_1014->g_675.f1", print_hash_value);
    transparent_crc(p_1014->g_675.f2, "p_1014->g_675.f2", print_hash_value);
    transparent_crc(p_1014->g_675.f3, "p_1014->g_675.f3", print_hash_value);
    transparent_crc(p_1014->g_675.f4, "p_1014->g_675.f4", print_hash_value);
    transparent_crc(p_1014->g_692.x, "p_1014->g_692.x", print_hash_value);
    transparent_crc(p_1014->g_692.y, "p_1014->g_692.y", print_hash_value);
    transparent_crc(p_1014->g_723.x, "p_1014->g_723.x", print_hash_value);
    transparent_crc(p_1014->g_723.y, "p_1014->g_723.y", print_hash_value);
    transparent_crc(p_1014->g_726.x, "p_1014->g_726.x", print_hash_value);
    transparent_crc(p_1014->g_726.y, "p_1014->g_726.y", print_hash_value);
    transparent_crc(p_1014->g_730.s0, "p_1014->g_730.s0", print_hash_value);
    transparent_crc(p_1014->g_730.s1, "p_1014->g_730.s1", print_hash_value);
    transparent_crc(p_1014->g_730.s2, "p_1014->g_730.s2", print_hash_value);
    transparent_crc(p_1014->g_730.s3, "p_1014->g_730.s3", print_hash_value);
    transparent_crc(p_1014->g_730.s4, "p_1014->g_730.s4", print_hash_value);
    transparent_crc(p_1014->g_730.s5, "p_1014->g_730.s5", print_hash_value);
    transparent_crc(p_1014->g_730.s6, "p_1014->g_730.s6", print_hash_value);
    transparent_crc(p_1014->g_730.s7, "p_1014->g_730.s7", print_hash_value);
    transparent_crc(p_1014->g_734.x, "p_1014->g_734.x", print_hash_value);
    transparent_crc(p_1014->g_734.y, "p_1014->g_734.y", print_hash_value);
    transparent_crc(p_1014->g_734.z, "p_1014->g_734.z", print_hash_value);
    transparent_crc(p_1014->g_734.w, "p_1014->g_734.w", print_hash_value);
    transparent_crc(p_1014->g_798.x, "p_1014->g_798.x", print_hash_value);
    transparent_crc(p_1014->g_798.y, "p_1014->g_798.y", print_hash_value);
    transparent_crc(p_1014->g_798.z, "p_1014->g_798.z", print_hash_value);
    transparent_crc(p_1014->g_798.w, "p_1014->g_798.w", print_hash_value);
    transparent_crc(p_1014->g_799.x, "p_1014->g_799.x", print_hash_value);
    transparent_crc(p_1014->g_799.y, "p_1014->g_799.y", print_hash_value);
    transparent_crc(p_1014->g_809, "p_1014->g_809", print_hash_value);
    transparent_crc(p_1014->g_812.f0, "p_1014->g_812.f0", print_hash_value);
    transparent_crc(p_1014->g_812.f1, "p_1014->g_812.f1", print_hash_value);
    transparent_crc(p_1014->g_812.f2, "p_1014->g_812.f2", print_hash_value);
    transparent_crc(p_1014->g_812.f3, "p_1014->g_812.f3", print_hash_value);
    transparent_crc(p_1014->g_812.f4, "p_1014->g_812.f4", print_hash_value);
    transparent_crc(p_1014->g_813, "p_1014->g_813", print_hash_value);
    transparent_crc(p_1014->g_816.f0, "p_1014->g_816.f0", print_hash_value);
    transparent_crc(p_1014->g_816.f1, "p_1014->g_816.f1", print_hash_value);
    transparent_crc(p_1014->g_816.f2, "p_1014->g_816.f2", print_hash_value);
    transparent_crc(p_1014->g_816.f3, "p_1014->g_816.f3", print_hash_value);
    transparent_crc(p_1014->g_826.f0, "p_1014->g_826.f0", print_hash_value);
    transparent_crc(p_1014->g_826.f1, "p_1014->g_826.f1", print_hash_value);
    transparent_crc(p_1014->g_826.f2, "p_1014->g_826.f2", print_hash_value);
    transparent_crc(p_1014->g_826.f3, "p_1014->g_826.f3", print_hash_value);
    transparent_crc(p_1014->g_826.f4, "p_1014->g_826.f4", print_hash_value);
    transparent_crc(p_1014->g_827.f0, "p_1014->g_827.f0", print_hash_value);
    transparent_crc(p_1014->g_827.f1, "p_1014->g_827.f1", print_hash_value);
    transparent_crc(p_1014->g_827.f2, "p_1014->g_827.f2", print_hash_value);
    transparent_crc(p_1014->g_827.f3, "p_1014->g_827.f3", print_hash_value);
    transparent_crc(p_1014->g_827.f4, "p_1014->g_827.f4", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1014->g_828[i].f0, "p_1014->g_828[i].f0", print_hash_value);
        transparent_crc(p_1014->g_828[i].f1, "p_1014->g_828[i].f1", print_hash_value);
        transparent_crc(p_1014->g_828[i].f2, "p_1014->g_828[i].f2", print_hash_value);
        transparent_crc(p_1014->g_828[i].f3, "p_1014->g_828[i].f3", print_hash_value);

    }
    transparent_crc(p_1014->g_858, "p_1014->g_858", print_hash_value);
    transparent_crc(p_1014->g_877.x, "p_1014->g_877.x", print_hash_value);
    transparent_crc(p_1014->g_877.y, "p_1014->g_877.y", print_hash_value);
    transparent_crc(p_1014->g_896.s0, "p_1014->g_896.s0", print_hash_value);
    transparent_crc(p_1014->g_896.s1, "p_1014->g_896.s1", print_hash_value);
    transparent_crc(p_1014->g_896.s2, "p_1014->g_896.s2", print_hash_value);
    transparent_crc(p_1014->g_896.s3, "p_1014->g_896.s3", print_hash_value);
    transparent_crc(p_1014->g_896.s4, "p_1014->g_896.s4", print_hash_value);
    transparent_crc(p_1014->g_896.s5, "p_1014->g_896.s5", print_hash_value);
    transparent_crc(p_1014->g_896.s6, "p_1014->g_896.s6", print_hash_value);
    transparent_crc(p_1014->g_896.s7, "p_1014->g_896.s7", print_hash_value);
    transparent_crc(p_1014->g_900.x, "p_1014->g_900.x", print_hash_value);
    transparent_crc(p_1014->g_900.y, "p_1014->g_900.y", print_hash_value);
    transparent_crc(p_1014->g_900.z, "p_1014->g_900.z", print_hash_value);
    transparent_crc(p_1014->g_900.w, "p_1014->g_900.w", print_hash_value);
    transparent_crc(p_1014->g_903.s0, "p_1014->g_903.s0", print_hash_value);
    transparent_crc(p_1014->g_903.s1, "p_1014->g_903.s1", print_hash_value);
    transparent_crc(p_1014->g_903.s2, "p_1014->g_903.s2", print_hash_value);
    transparent_crc(p_1014->g_903.s3, "p_1014->g_903.s3", print_hash_value);
    transparent_crc(p_1014->g_903.s4, "p_1014->g_903.s4", print_hash_value);
    transparent_crc(p_1014->g_903.s5, "p_1014->g_903.s5", print_hash_value);
    transparent_crc(p_1014->g_903.s6, "p_1014->g_903.s6", print_hash_value);
    transparent_crc(p_1014->g_903.s7, "p_1014->g_903.s7", print_hash_value);
    transparent_crc(p_1014->g_903.s8, "p_1014->g_903.s8", print_hash_value);
    transparent_crc(p_1014->g_903.s9, "p_1014->g_903.s9", print_hash_value);
    transparent_crc(p_1014->g_903.sa, "p_1014->g_903.sa", print_hash_value);
    transparent_crc(p_1014->g_903.sb, "p_1014->g_903.sb", print_hash_value);
    transparent_crc(p_1014->g_903.sc, "p_1014->g_903.sc", print_hash_value);
    transparent_crc(p_1014->g_903.sd, "p_1014->g_903.sd", print_hash_value);
    transparent_crc(p_1014->g_903.se, "p_1014->g_903.se", print_hash_value);
    transparent_crc(p_1014->g_903.sf, "p_1014->g_903.sf", print_hash_value);
    transparent_crc(p_1014->g_946, "p_1014->g_946", print_hash_value);
    transparent_crc(p_1014->g_947.s0, "p_1014->g_947.s0", print_hash_value);
    transparent_crc(p_1014->g_947.s1, "p_1014->g_947.s1", print_hash_value);
    transparent_crc(p_1014->g_947.s2, "p_1014->g_947.s2", print_hash_value);
    transparent_crc(p_1014->g_947.s3, "p_1014->g_947.s3", print_hash_value);
    transparent_crc(p_1014->g_947.s4, "p_1014->g_947.s4", print_hash_value);
    transparent_crc(p_1014->g_947.s5, "p_1014->g_947.s5", print_hash_value);
    transparent_crc(p_1014->g_947.s6, "p_1014->g_947.s6", print_hash_value);
    transparent_crc(p_1014->g_947.s7, "p_1014->g_947.s7", print_hash_value);
    transparent_crc(p_1014->g_947.s8, "p_1014->g_947.s8", print_hash_value);
    transparent_crc(p_1014->g_947.s9, "p_1014->g_947.s9", print_hash_value);
    transparent_crc(p_1014->g_947.sa, "p_1014->g_947.sa", print_hash_value);
    transparent_crc(p_1014->g_947.sb, "p_1014->g_947.sb", print_hash_value);
    transparent_crc(p_1014->g_947.sc, "p_1014->g_947.sc", print_hash_value);
    transparent_crc(p_1014->g_947.sd, "p_1014->g_947.sd", print_hash_value);
    transparent_crc(p_1014->g_947.se, "p_1014->g_947.se", print_hash_value);
    transparent_crc(p_1014->g_947.sf, "p_1014->g_947.sf", print_hash_value);
    transparent_crc(p_1014->g_951, "p_1014->g_951", print_hash_value);
    transparent_crc(p_1014->g_987.s0, "p_1014->g_987.s0", print_hash_value);
    transparent_crc(p_1014->g_987.s1, "p_1014->g_987.s1", print_hash_value);
    transparent_crc(p_1014->g_987.s2, "p_1014->g_987.s2", print_hash_value);
    transparent_crc(p_1014->g_987.s3, "p_1014->g_987.s3", print_hash_value);
    transparent_crc(p_1014->g_987.s4, "p_1014->g_987.s4", print_hash_value);
    transparent_crc(p_1014->g_987.s5, "p_1014->g_987.s5", print_hash_value);
    transparent_crc(p_1014->g_987.s6, "p_1014->g_987.s6", print_hash_value);
    transparent_crc(p_1014->g_987.s7, "p_1014->g_987.s7", print_hash_value);
    transparent_crc(p_1014->g_987.s8, "p_1014->g_987.s8", print_hash_value);
    transparent_crc(p_1014->g_987.s9, "p_1014->g_987.s9", print_hash_value);
    transparent_crc(p_1014->g_987.sa, "p_1014->g_987.sa", print_hash_value);
    transparent_crc(p_1014->g_987.sb, "p_1014->g_987.sb", print_hash_value);
    transparent_crc(p_1014->g_987.sc, "p_1014->g_987.sc", print_hash_value);
    transparent_crc(p_1014->g_987.sd, "p_1014->g_987.sd", print_hash_value);
    transparent_crc(p_1014->g_987.se, "p_1014->g_987.se", print_hash_value);
    transparent_crc(p_1014->g_987.sf, "p_1014->g_987.sf", print_hash_value);
    transparent_crc(p_1014->g_993.s0, "p_1014->g_993.s0", print_hash_value);
    transparent_crc(p_1014->g_993.s1, "p_1014->g_993.s1", print_hash_value);
    transparent_crc(p_1014->g_993.s2, "p_1014->g_993.s2", print_hash_value);
    transparent_crc(p_1014->g_993.s3, "p_1014->g_993.s3", print_hash_value);
    transparent_crc(p_1014->g_993.s4, "p_1014->g_993.s4", print_hash_value);
    transparent_crc(p_1014->g_993.s5, "p_1014->g_993.s5", print_hash_value);
    transparent_crc(p_1014->g_993.s6, "p_1014->g_993.s6", print_hash_value);
    transparent_crc(p_1014->g_993.s7, "p_1014->g_993.s7", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1014->g_998[i], "p_1014->g_998[i]", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
