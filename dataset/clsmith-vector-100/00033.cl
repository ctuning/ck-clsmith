// ---fake_divergence -g 13,1,160 -l 13,1,1
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


// Seed: 33

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
};

struct S1 {
    int32_t * volatile g_3;
    int32_t g_5;
    uint16_t g_39;
    uint16_t g_43;
    volatile VECTOR(uint64_t, 16) g_61;
    uint8_t g_66;
    uint32_t g_70;
    int16_t g_72;
    volatile int8_t g_74;
    VECTOR(uint8_t, 4) g_83;
    uint64_t g_91;
    int32_t g_107;
    VECTOR(int32_t, 8) g_111;
    struct S0 g_131;
    int8_t g_138;
    int32_t *g_145;
    int32_t ** volatile g_144;
    int64_t g_166;
    volatile uint32_t g_177;
    volatile uint32_t *g_176;
    volatile uint32_t * volatile * volatile g_175;
    VECTOR(int8_t, 4) g_198;
    volatile VECTOR(int8_t, 8) g_199;
    VECTOR(int32_t, 4) g_217;
    int64_t g_232;
    volatile uint64_t g_234;
    int32_t ** volatile g_255;
    struct S0 * volatile g_259;
    struct S0 * volatile g_268[1][7];
    volatile VECTOR(int32_t, 2) g_277;
    VECTOR(uint8_t, 8) g_313;
    VECTOR(int8_t, 2) g_316;
    VECTOR(int16_t, 8) g_338;
    VECTOR(int16_t, 16) g_339;
    volatile VECTOR(uint64_t, 4) g_356;
    VECTOR(uint64_t, 4) g_357;
    int8_t g_388[5];
    VECTOR(int32_t, 16) g_392;
    VECTOR(uint32_t, 4) g_403;
    int32_t g_411;
    volatile int64_t g_417;
    volatile VECTOR(int32_t, 4) g_432;
    VECTOR(int32_t, 4) g_443;
    volatile VECTOR(int8_t, 16) g_456;
    volatile VECTOR(int16_t, 4) g_470;
    VECTOR(int32_t, 4) g_479;
    VECTOR(int32_t, 2) g_492;
    uint16_t *g_525;
    uint16_t **g_524;
    uint64_t g_548;
    volatile uint32_t g_564;
    int32_t g_608;
    VECTOR(int16_t, 8) g_612;
    volatile VECTOR(int16_t, 4) g_653;
    VECTOR(uint16_t, 2) g_672;
    volatile uint32_t g_687[7];
    VECTOR(int16_t, 8) g_693;
    VECTOR(int16_t, 8) g_694;
    VECTOR(uint16_t, 2) g_697;
    int32_t *g_699;
    volatile VECTOR(int32_t, 8) g_712;
    volatile VECTOR(uint64_t, 16) g_766;
    VECTOR(uint64_t, 8) g_773;
    volatile VECTOR(uint16_t, 16) g_775;
    VECTOR(uint16_t, 8) g_776;
    int32_t g_795;
    int32_t *g_794;
    volatile VECTOR(int16_t, 2) g_816;
    uint32_t g_835;
    struct S0 *g_850;
    struct S0 **g_849;
    struct S0 *** volatile g_848;
    volatile uint8_t g_853[9];
    volatile uint8_t *g_852;
    volatile uint8_t * volatile *g_851;
    int8_t *g_877;
    int8_t **g_876[10][5];
    int32_t g_881;
    volatile uint64_t * volatile *g_909;
    volatile VECTOR(uint32_t, 16) g_914;
    VECTOR(uint32_t, 16) g_926;
    VECTOR(int16_t, 4) g_943;
    VECTOR(int64_t, 2) g_947;
    VECTOR(uint64_t, 4) g_959;
    volatile VECTOR(int16_t, 16) g_990;
    volatile VECTOR(uint16_t, 8) g_998;
    VECTOR(int64_t, 4) g_1013;
    VECTOR(int64_t, 2) g_1016;
    VECTOR(uint16_t, 8) g_1057;
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
int16_t  func_1(struct S1 * p_1084);
struct S0  func_10(int32_t * p_11, int32_t * p_12, uint32_t  p_13, int8_t  p_14, int8_t  p_15, struct S1 * p_1084);
int32_t * func_16(uint32_t  p_17, int32_t * p_18, int32_t * p_19, int8_t  p_20, struct S1 * p_1084);
int32_t * func_21(int32_t * p_22, int32_t * p_23, uint8_t  p_24, uint64_t  p_25, struct S1 * p_1084);
int32_t * func_26(int8_t  p_27, uint32_t  p_28, int32_t * p_29, int32_t * p_30, struct S1 * p_1084);
int8_t  func_35(uint16_t  p_36, uint32_t  p_37, struct S1 * p_1084);
int32_t  func_44(uint32_t  p_45, uint64_t  p_46, uint8_t  p_47, uint64_t  p_48, struct S1 * p_1084);
uint16_t * func_49(uint16_t  p_50, uint8_t  p_51, uint32_t  p_52, struct S1 * p_1084);
int8_t  func_54(int32_t * p_55, int64_t  p_56, int32_t  p_57, uint16_t * p_58, int32_t  p_59, struct S1 * p_1084);
uint16_t * func_62(int8_t  p_63, struct S1 * p_1084);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1084->g_5 p_1084->g_881
 * writes: p_1084->g_5 p_1084->g_881
 */
int16_t  func_1(struct S1 * p_1084)
{ /* block id: 4 */
    int32_t l_2 = 0x137B1891L;
    int32_t *l_4 = &p_1084->g_5;
    uint16_t *l_42 = &p_1084->g_43;
    VECTOR(uint16_t, 4) l_673 = (VECTOR(uint16_t, 4))(0x5F46L, (VECTOR(uint16_t, 2))(0x5F46L, 0x73D6L), 0x73D6L);
    int32_t l_700 = 0L;
    uint32_t l_1081[7] = {4294967289UL,4294967289UL,4294967289UL,4294967289UL,4294967289UL,4294967289UL,4294967289UL};
    int i;
    (*l_4) |= l_2;
    for (l_2 = 0; (l_2 >= (-5)); --l_2)
    { /* block id: 8 */
        int32_t *l_706 = (void*)0;
        for (p_1084->g_5 = 0; (p_1084->g_5 == (-27)); p_1084->g_5 = safe_sub_func_uint64_t_u_u(p_1084->g_5, 7))
        { /* block id: 11 */
            uint16_t *l_38 = &p_1084->g_39;
            int32_t l_674 = (-1L);
            VECTOR(uint32_t, 2) l_701 = (VECTOR(uint32_t, 2))(4294967294UL, 0xF7295B92L);
            int32_t **l_705 = &p_1084->g_145;
            int i;
            (1 + 1);
        }
        if (l_1081[1])
            continue;
        for (p_1084->g_881 = 26; (p_1084->g_881 > 18); p_1084->g_881 = safe_sub_func_uint16_t_u_u(p_1084->g_881, 7))
        { /* block id: 395 */
            return (*l_4);
        }
    }
    return (*l_4);
}


/* ------------------------------------------ */
/* 
 * reads : p_1084->g_5 p_1084->g_712 p_1084->g_43 p_1084->g_316 p_1084->g_313 p_1084->g_694 p_1084->g_107 p_1084->g_699 p_1084->g_72 p_1084->g_766 p_1084->g_773 p_1084->g_775 p_1084->g_776 p_1084->g_259 p_1084->g_131 p_1084->g_39 p_1084->g_411 p_1084->g_217 p_1084->g_835 p_1084->g_848 p_1084->g_851 p_1084->g_852 p_1084->g_876 p_1084->g_175 p_1084->g_176 p_1084->g_177 p_1084->g_849 p_1084->g_850 p_1084->g_877 p_1084->g_388 p_1084->g_234 p_1084->g_909 p_1084->g_914 p_1084->g_926 p_1084->g_943 p_1084->g_947 p_1084->g_83 p_1084->g_697 p_1084->g_853 p_1084->g_357 p_1084->g_959 p_1084->g_479 p_1084->g_198 p_1084->g_403 p_1084->g_564 p_1084->g_990 p_1084->g_998 p_1084->g_1013 p_1084->g_1016 p_1084->g_70 p_1084->g_443 p_1084->g_548 p_1084->g_693 p_1084->g_1057 p_1084->g_145 p_1084->g_492 p_1084->g_881
 * writes: p_1084->g_70 p_1084->g_43 p_1084->g_403 p_1084->g_107 p_1084->g_548 p_1084->g_411 p_1084->g_794 p_1084->g_217 p_1084->g_835 p_1084->g_849 p_1084->g_131 p_1084->g_145 p_1084->g_388 p_1084->g_83 p_1084->g_357 p_1084->g_338 p_1084->g_694
 */
struct S0  func_10(int32_t * p_11, int32_t * p_12, uint32_t  p_13, int8_t  p_14, int8_t  p_15, struct S1 * p_1084)
{ /* block id: 248 */
    VECTOR(int64_t, 4) l_709 = (VECTOR(int64_t, 4))(0x26DB184B2A753523L, (VECTOR(int64_t, 2))(0x26DB184B2A753523L, 0x045AF03F57E14419L), 0x045AF03F57E14419L);
    int16_t *l_710 = (void*)0;
    int8_t l_716 = 0x4FL;
    int32_t l_723[3][6] = {{(-3L),5L,0x6250357DL,5L,(-3L),(-3L)},{(-3L),5L,0x6250357DL,5L,(-3L),(-3L)},{(-3L),5L,0x6250357DL,5L,(-3L),(-3L)}};
    VECTOR(uint8_t, 8) l_735 = (VECTOR(uint8_t, 8))(0x03L, (VECTOR(uint8_t, 4))(0x03L, (VECTOR(uint8_t, 2))(0x03L, 0xBBL), 0xBBL), 0xBBL, 0x03L, 0xBBL);
    int8_t l_747 = 1L;
    int32_t l_752 = 0x68ADDCE4L;
    int32_t l_753 = 0x682435E6L;
    int64_t l_754[9] = {0x39D101C8E1F362E2L,0x39D101C8E1F362E2L,0x39D101C8E1F362E2L,0x39D101C8E1F362E2L,0x39D101C8E1F362E2L,0x39D101C8E1F362E2L,0x39D101C8E1F362E2L,0x39D101C8E1F362E2L,0x39D101C8E1F362E2L};
    uint8_t *l_755 = (void*)0;
    VECTOR(uint64_t, 8) l_769 = (VECTOR(uint64_t, 8))(0x18191FC865519C1BL, (VECTOR(uint64_t, 4))(0x18191FC865519C1BL, (VECTOR(uint64_t, 2))(0x18191FC865519C1BL, 2UL), 2UL), 2UL, 0x18191FC865519C1BL, 2UL);
    VECTOR(uint64_t, 16) l_771 = (VECTOR(uint64_t, 16))(0x850EB75317A23520L, (VECTOR(uint64_t, 4))(0x850EB75317A23520L, (VECTOR(uint64_t, 2))(0x850EB75317A23520L, 0UL), 0UL), 0UL, 0x850EB75317A23520L, 0UL, (VECTOR(uint64_t, 2))(0x850EB75317A23520L, 0UL), (VECTOR(uint64_t, 2))(0x850EB75317A23520L, 0UL), 0x850EB75317A23520L, 0UL, 0x850EB75317A23520L, 0UL);
    VECTOR(int32_t, 8) l_811 = (VECTOR(int32_t, 8))(0x3785A6D5L, (VECTOR(int32_t, 4))(0x3785A6D5L, (VECTOR(int32_t, 2))(0x3785A6D5L, 0x08771428L), 0x08771428L), 0x08771428L, 0x3785A6D5L, 0x08771428L);
    uint64_t l_843[7][6] = {{0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L},{0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L},{0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L},{0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L},{0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L},{0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L},{0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L,0x818B036EE132F193L}};
    struct S0 *l_847 = &p_1084->g_131;
    struct S0 **l_846 = &l_847;
    uint64_t *l_908 = (void*)0;
    uint64_t **l_907[4];
    VECTOR(uint32_t, 2) l_925 = (VECTOR(uint32_t, 2))(0UL, 1UL);
    VECTOR(uint16_t, 2) l_1007 = (VECTOR(uint16_t, 2))(0x5AAFL, 0UL);
    int8_t l_1042 = 0x12L;
    int8_t l_1043[2];
    uint8_t l_1044 = 0x19L;
    VECTOR(int8_t, 2) l_1051 = (VECTOR(int8_t, 2))((-4L), (-1L));
    VECTOR(int16_t, 2) l_1072 = (VECTOR(int16_t, 2))(0L, 0x5B56L);
    VECTOR(uint16_t, 16) l_1073 = (VECTOR(uint16_t, 16))(0x04A9L, (VECTOR(uint16_t, 4))(0x04A9L, (VECTOR(uint16_t, 2))(0x04A9L, 65534UL), 65534UL), 65534UL, 0x04A9L, 65534UL, (VECTOR(uint16_t, 2))(0x04A9L, 65534UL), (VECTOR(uint16_t, 2))(0x04A9L, 65534UL), 0x04A9L, 65534UL, 0x04A9L, 65534UL);
    uint16_t *l_1076 = (void*)0;
    uint32_t l_1077 = 0xC69FD7B7L;
    int i, j;
    for (i = 0; i < 4; i++)
        l_907[i] = &l_908;
    for (i = 0; i < 2; i++)
        l_1043[i] = 0x4AL;
    if ((*p_12))
    { /* block id: 249 */
        uint32_t *l_711 = &p_1084->g_70;
        VECTOR(int32_t, 2) l_713 = (VECTOR(int32_t, 2))((-1L), 0x0F0E137FL);
        VECTOR(uint8_t, 2) l_721 = (VECTOR(uint8_t, 2))(0x55L, 6UL);
        uint8_t *l_722[2][1][2];
        uint16_t *l_726 = &p_1084->g_43;
        VECTOR(uint8_t, 16) l_736 = (VECTOR(uint8_t, 16))(0x4EL, (VECTOR(uint8_t, 4))(0x4EL, (VECTOR(uint8_t, 2))(0x4EL, 0x16L), 0x16L), 0x16L, 0x4EL, 0x16L, (VECTOR(uint8_t, 2))(0x4EL, 0x16L), (VECTOR(uint8_t, 2))(0x4EL, 0x16L), 0x4EL, 0x16L, 0x4EL, 0x16L);
        uint32_t *l_748 = (void*)0;
        uint32_t *l_749[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int16_t *l_750[7];
        int32_t l_751 = 0x0C3E5C76L;
        VECTOR(uint64_t, 16) l_760 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xC236749FCCEB2D83L), 0xC236749FCCEB2D83L), 0xC236749FCCEB2D83L, 1UL, 0xC236749FCCEB2D83L, (VECTOR(uint64_t, 2))(1UL, 0xC236749FCCEB2D83L), (VECTOR(uint64_t, 2))(1UL, 0xC236749FCCEB2D83L), 1UL, 0xC236749FCCEB2D83L, 1UL, 0xC236749FCCEB2D83L);
        VECTOR(uint64_t, 2) l_770 = (VECTOR(uint64_t, 2))(0x1D7EEF5EE48E7C1FL, 0x16D10BE2CA35F359L);
        VECTOR(uint64_t, 4) l_772 = (VECTOR(uint64_t, 4))(0x785FA11303A17191L, (VECTOR(uint64_t, 2))(0x785FA11303A17191L, 1UL), 1UL);
        uint32_t l_787 = 0UL;
        int8_t l_806 = (-1L);
        int16_t l_840[6] = {0x2524L,0x5CBFL,0x2524L,0x2524L,0x5CBFL,0x2524L};
        int32_t **l_864 = &p_1084->g_145;
        int32_t *l_880[3];
        VECTOR(uint32_t, 4) l_931 = (VECTOR(uint32_t, 4))(0x51F01D8DL, (VECTOR(uint32_t, 2))(0x51F01D8DL, 0x0222E742L), 0x0222E742L);
        VECTOR(uint32_t, 8) l_934 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x5BFACFD8L), 0x5BFACFD8L), 0x5BFACFD8L, 0UL, 0x5BFACFD8L);
        uint8_t l_970[8] = {5UL,5UL,5UL,5UL,5UL,5UL,5UL,5UL};
        VECTOR(uint16_t, 8) l_997 = (VECTOR(uint16_t, 8))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 65532UL), 65532UL), 65532UL, 5UL, 65532UL);
        VECTOR(int32_t, 4) l_1008 = (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 1L), 1L);
        VECTOR(int64_t, 4) l_1014 = (VECTOR(int64_t, 4))(0x544CFB71152F4D11L, (VECTOR(int64_t, 2))(0x544CFB71152F4D11L, 0x0DB807ACC3037810L), 0x0DB807ACC3037810L);
        VECTOR(int64_t, 8) l_1015 = (VECTOR(int64_t, 8))(0x596DEB2498363B1DL, (VECTOR(int64_t, 4))(0x596DEB2498363B1DL, (VECTOR(int64_t, 2))(0x596DEB2498363B1DL, 0x63C1FE18F9100DC0L), 0x63C1FE18F9100DC0L), 0x63C1FE18F9100DC0L, 0x596DEB2498363B1DL, 0x63C1FE18F9100DC0L);
        VECTOR(int64_t, 4) l_1017 = (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 5L), 5L);
        VECTOR(int64_t, 2) l_1018 = (VECTOR(int64_t, 2))(0x5A5C47AA81DA3590L, 0x73B9FE4FA32D6C46L);
        uint64_t **l_1025 = &l_908;
        int32_t l_1031 = 5L;
        int16_t l_1036 = 3L;
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 2; k++)
                    l_722[i][j][k] = (void*)0;
            }
        }
        for (i = 0; i < 7; i++)
            l_750[i] = (void*)0;
        for (i = 0; i < 3; i++)
            l_880[i] = (void*)0;
        if (((safe_sub_func_int16_t_s_s(l_709.x, ((((VECTOR(int8_t, 2))((-6L), (-3L))).odd , (&p_1084->g_72 == l_710)) >= (((*l_711) = 8UL) < (l_753 = (l_752 = (~((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 8))(p_1084->g_712.s15141427)).s3326527326434353, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_713.xx)), (-1L), 2L)) && ((VECTOR(int32_t, 8))((-1L), ((p_14 , (l_751 = (safe_add_func_uint32_t_u_u(((l_716 && ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(l_721.yxyxxyyyyyxxyxyy)).odd >> ((VECTOR(uint8_t, 8))(8))))).odd << ((VECTOR(uint8_t, 4))(8))))).w) < (l_723[2][2] = l_709.x)), (p_1084->g_403.y = (l_713.y = ((((safe_rshift_func_uint16_t_u_u(((*l_726)--), ((((safe_rshift_func_uint8_t_u_s((((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(l_735.s7240165751076361)).s29eb + ((VECTOR(uint8_t, 4))(l_736.s3191))))).odd + ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))((safe_rshift_func_uint16_t_u_u(p_13, 12)), ((VECTOR(uint8_t, 2))(0UL, 0xC5L)), ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 2))(0xE5L, 250UL)).yyyy, (uint8_t)(((safe_add_func_int16_t_s_s(((((((safe_mul_func_uint8_t_u_u(l_747, l_735.s1)) | l_736.s6) ^ 0x70F551F301FCD253L) == p_13) == p_14) , 0x5817L), l_713.y)) == 0x001BDF7FL) | (-1L))))) + ((VECTOR(uint8_t, 4))(251UL))))), ((VECTOR(uint8_t, 2))(1UL)), GROUP_DIVERGE(2, 1), 1UL, ((VECTOR(uint8_t, 4))(251UL)), 255UL)).sfe11 + ((VECTOR(uint8_t, 4))(1UL))))).hi))).xxxxyyxyyyxxxyyy | ((VECTOR(uint8_t, 16))(1UL))))).s8c22, ((VECTOR(uint8_t, 4))(248UL))))).x & l_709.x), p_1084->g_316.y)) != (-5L)) , 0x1CL) > p_1084->g_313.s0))) || 0xBE01L) <= 0x26A2A1A2103AF1FFL) && 0x5DL))))))) <= p_1084->g_694.s2), 0x3493EED9L, 0x4E59BBE8L, (-1L), (-1L), (-4L), 7L)).hi))).yzwxxxwzyxxzxzzx))).odd, (int32_t)(*p_11), (int32_t)0L))).s34, ((VECTOR(int32_t, 2))(0x395AA9C6L))))).xxyx == ((VECTOR(int32_t, 4))(0x36B62602L))))).z))))))) > 0xF85A1EDEL))
        { /* block id: 258 */
            uint8_t **l_756 = &l_722[1][0][1];
            uint64_t *l_759 = &p_1084->g_548;
            VECTOR(uint64_t, 8) l_763 = (VECTOR(uint64_t, 8))(0xF87727009A0AC74CL, (VECTOR(uint64_t, 4))(0xF87727009A0AC74CL, (VECTOR(uint64_t, 2))(0xF87727009A0AC74CL, 4UL), 4UL), 4UL, 0xF87727009A0AC74CL, 4UL);
            int8_t l_774 = 0x74L;
            struct S0 l_777 = {0x579BL};
            int32_t l_780 = 0L;
            int32_t l_782 = 1L;
            int32_t l_783 = 0x63F61BEEL;
            int32_t l_784 = 0L;
            int32_t l_785 = (-1L);
            int32_t l_786 = 0x596E13E9L;
            VECTOR(int32_t, 4) l_797 = (VECTOR(int32_t, 4))(0x158060DAL, (VECTOR(int32_t, 2))(0x158060DAL, 0x0231E2BEL), 0x0231E2BEL);
            int8_t l_839 = 0x4BL;
            int64_t l_842 = 0x1EF5CDB1A668662DL;
            int i;
            (*p_1084->g_699) ^= (p_14 , l_754[8]);
            if ((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(((p_1084->g_72 , l_755) == ((*l_756) = l_755)), ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 8))(0x321BL, ((VECTOR(int16_t, 4))((safe_add_func_int32_t_s_s(((*p_1084->g_699) = (((*l_759) = 0xD4AFAF8C23159F63L) ^ ((VECTOR(uint64_t, 8))(l_760.saf8b44f7)).s1)), ((2UL && (((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),VECTOR(uint64_t, 4),((VECTOR(uint64_t, 4))(l_763.s1503)), ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(p_1084->g_766.sd9)).yxxxyxyy + ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 16))(l_769.s5265756773373356)).odd * ((VECTOR(uint64_t, 8))(l_770.yxxxxyyx)))))))).even, ((VECTOR(uint64_t, 4))(l_771.sb359))))).lo + ((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 4))(18446744073709551615UL, 18446744073709551612UL, 0x3DA63E426A69DF3BL, 0UL)).lo, ((VECTOR(uint64_t, 8))(l_772.xyxxyzxw)).s66))).xxxyyxyyxxxyyxyx, ((VECTOR(uint64_t, 2))(p_1084->g_773.s25)).yyxxyxyxyyyyxxyx))).s66))).odd , l_774)) , ((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 8))(p_1084->g_775.s8ed3d32e)).s42, ((VECTOR(uint16_t, 16))(p_1084->g_776.s5240552645517273)).sd3))).hi))), p_1084->g_72, (-7L), 0x38A1L)), (((*p_1084->g_259) , (*p_1084->g_699)) & p_1084->g_39), 4L, 0x5B14L)).hi, ((VECTOR(int16_t, 4))((-4L)))))).lo > ((VECTOR(int16_t, 2))(0x5044L))))).yxxy && ((VECTOR(int16_t, 4))(0L))))).xxxyxyxywzzyyxyz && ((VECTOR(int16_t, 16))((-1L)))))).sf, 0x0350L, 0x6717L)) | ((VECTOR(int16_t, 4))(0x6938L))))).z <= p_14))
            { /* block id: 263 */
                return l_777;
            }
            else
            { /* block id: 265 */
                int32_t *l_778 = (void*)0;
                int32_t *l_779[10][10][2] = {{{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753}},{{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753}},{{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753}},{{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753}},{{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753}},{{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753}},{{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753}},{{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753}},{{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753}},{{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753},{&l_723[1][4],&l_753}}};
                int64_t l_781[9][10] = {{(-1L),0x44066B23AF76D7F6L,1L,(-6L),(-1L),(-1L),(-6L),1L,0x44066B23AF76D7F6L,(-1L)},{(-1L),0x44066B23AF76D7F6L,1L,(-6L),(-1L),(-1L),(-6L),1L,0x44066B23AF76D7F6L,(-1L)},{(-1L),0x44066B23AF76D7F6L,1L,(-6L),(-1L),(-1L),(-6L),1L,0x44066B23AF76D7F6L,(-1L)},{(-1L),0x44066B23AF76D7F6L,1L,(-6L),(-1L),(-1L),(-6L),1L,0x44066B23AF76D7F6L,(-1L)},{(-1L),0x44066B23AF76D7F6L,1L,(-6L),(-1L),(-1L),(-6L),1L,0x44066B23AF76D7F6L,(-1L)},{(-1L),0x44066B23AF76D7F6L,1L,(-6L),(-1L),(-1L),(-6L),1L,0x44066B23AF76D7F6L,(-1L)},{(-1L),0x44066B23AF76D7F6L,1L,(-6L),(-1L),(-1L),(-6L),1L,0x44066B23AF76D7F6L,(-1L)},{(-1L),0x44066B23AF76D7F6L,1L,(-6L),(-1L),(-1L),(-6L),1L,0x44066B23AF76D7F6L,(-1L)},{(-1L),0x44066B23AF76D7F6L,1L,(-6L),(-1L),(-1L),(-6L),1L,0x44066B23AF76D7F6L,(-1L)}};
                int i, j, k;
                l_787--;
            }
            for (p_1084->g_411 = (-2); (p_1084->g_411 != 27); p_1084->g_411++)
            { /* block id: 270 */
                VECTOR(int32_t, 4) l_798 = (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x44677072L), 0x44677072L);
                int32_t *l_854 = &l_753;
                int32_t *l_855 = &l_780;
                int32_t *l_856 = &l_752;
                int32_t *l_857 = &l_780;
                int32_t *l_858[2][8][9] = {{{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785},{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785},{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785},{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785},{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785},{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785},{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785},{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785}},{{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785},{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785},{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785},{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785},{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785},{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785},{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785},{&l_785,&l_785,(void*)0,&p_1084->g_608,&l_784,&p_1084->g_608,(void*)0,&l_785,&l_785}}};
                uint16_t l_859 = 6UL;
                struct S0 l_862 = {0x3060L};
                int8_t **l_878 = (void*)0;
                uint32_t l_889 = 4294967295UL;
                VECTOR(uint8_t, 8) l_913 = (VECTOR(uint8_t, 8))(0x5DL, (VECTOR(uint8_t, 4))(0x5DL, (VECTOR(uint8_t, 2))(0x5DL, 0x70L), 0x70L), 0x70L, 0x5DL, 0x70L);
                int i, j, k;
                for (l_753 = (-24); (l_753 != (-17)); l_753 = safe_add_func_int16_t_s_s(l_753, 8))
                { /* block id: 273 */
                    int32_t *l_796 = &p_1084->g_411;
                    int32_t l_802 = 0x7166F7BCL;
                    int32_t l_803 = 0x0AAB1575L;
                    int32_t l_804[6] = {0x3BF6C618L,0x3BF6C618L,0x3BF6C618L,0x3BF6C618L,0x3BF6C618L,0x3BF6C618L};
                    int32_t l_805 = 0x694775EBL;
                    uint8_t *l_810 = (void*)0;
                    int32_t l_841 = 0x51AA7490L;
                    int i;
                    if (((((p_1084->g_794 = (void*)0) != l_796) & 5UL) || ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(l_797.zzyywxzy)).s63, ((VECTOR(int32_t, 4))(0x0F2001A7L, 0x26C8F326L, 0x5A432C8FL, 0x0DB5DE33L)).even, ((VECTOR(int32_t, 8))(l_798.wwwwwyyy)).s63))).lo))
                    { /* block id: 275 */
                        int32_t l_799 = 0x469487BEL;
                        (*p_1084->g_699) ^= l_799;
                        (*p_1084->g_699) &= 0x23DAA934L;
                    }
                    else
                    { /* block id: 278 */
                        int32_t *l_800 = (void*)0;
                        int32_t *l_801[8][3] = {{&l_783,&l_783,&l_783},{&l_783,&l_783,&l_783},{&l_783,&l_783,&l_783},{&l_783,&l_783,&l_783},{&l_783,&l_783,&l_783},{&l_783,&l_783,&l_783},{&l_783,&l_783,&l_783},{&l_783,&l_783,&l_783}};
                        uint32_t l_807 = 0xFC53E0D0L;
                        int i, j;
                        if (l_751)
                            break;
                        ++l_807;
                    }
                    if ((l_810 == ((*l_756) = (*l_756))))
                    { /* block id: 283 */
                        VECTOR(uint32_t, 4) l_824 = (VECTOR(uint32_t, 4))(0xB147728FL, (VECTOR(uint32_t, 2))(0xB147728FL, 0x6E1807DCL), 0x6E1807DCL);
                        int64_t l_831 = 3L;
                        int32_t *l_832 = &l_803;
                        int32_t l_833[6][7] = {{0x35DF3000L,0x35DF3000L,(-8L),(-5L),0x644D5B28L,(-5L),(-8L)},{0x35DF3000L,0x35DF3000L,(-8L),(-5L),0x644D5B28L,(-5L),(-8L)},{0x35DF3000L,0x35DF3000L,(-8L),(-5L),0x644D5B28L,(-5L),(-8L)},{0x35DF3000L,0x35DF3000L,(-8L),(-5L),0x644D5B28L,(-5L),(-8L)},{0x35DF3000L,0x35DF3000L,(-8L),(-5L),0x644D5B28L,(-5L),(-8L)},{0x35DF3000L,0x35DF3000L,(-8L),(-5L),0x644D5B28L,(-5L),(-8L)}};
                        int32_t *l_834[2][7][6] = {{{(void*)0,&l_803,&l_803,(void*)0,(void*)0,&l_803},{(void*)0,&l_803,&l_803,(void*)0,(void*)0,&l_803},{(void*)0,&l_803,&l_803,(void*)0,(void*)0,&l_803},{(void*)0,&l_803,&l_803,(void*)0,(void*)0,&l_803},{(void*)0,&l_803,&l_803,(void*)0,(void*)0,&l_803},{(void*)0,&l_803,&l_803,(void*)0,(void*)0,&l_803},{(void*)0,&l_803,&l_803,(void*)0,(void*)0,&l_803}},{{(void*)0,&l_803,&l_803,(void*)0,(void*)0,&l_803},{(void*)0,&l_803,&l_803,(void*)0,(void*)0,&l_803},{(void*)0,&l_803,&l_803,(void*)0,(void*)0,&l_803},{(void*)0,&l_803,&l_803,(void*)0,(void*)0,&l_803},{(void*)0,&l_803,&l_803,(void*)0,(void*)0,&l_803},{(void*)0,&l_803,&l_803,(void*)0,(void*)0,&l_803},{(void*)0,&l_803,&l_803,(void*)0,(void*)0,&l_803}}};
                        int i, j, k;
                        p_1084->g_217.y &= ((VECTOR(int32_t, 16))(0x26E7715AL, ((*p_1084->g_699) = (*p_1084->g_145)), ((VECTOR(int32_t, 4))(l_811.s2374)), (l_797.y = ((safe_mul_func_int16_t_s_s(p_1084->g_166, (l_780 = (safe_lshift_func_int16_t_s_u(((0x001E0C56CCE07015L & 1L) , ((VECTOR(int16_t, 16))(p_1084->g_816.xxxxyyyxxxxxyyyy)).s4), ((l_831 = (safe_mod_func_uint64_t_u_u(0x8A6D5F1EBC51A60DL, ((((safe_rshift_func_int8_t_s_s(p_15, 5)) | (safe_unary_minus_func_uint32_t_u(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(l_824.yw)).xxxxyyyxxyxyyyyx + ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(255UL, 5UL)).yxxyyxyx + ((VECTOR(uint8_t, 16))(251UL, 0UL, 255UL, ((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(((((p_14 < (((safe_lshift_func_int16_t_s_u(l_709.w, 10)) < ((0UL < 4294967295UL) >= p_1084->g_392.s0)) | FAKE_DIVERGE(p_1084->local_0_offset, get_local_id(0), 10))) <= 5L) < p_1084->g_111.s4) < (*p_11)), ((VECTOR(uint8_t, 2))(0xC7L)), p_15, 0xC2L, p_1084->g_693.s5, 0UL, 0x64L)).hi + ((VECTOR(uint8_t, 4))(0x4CL))))), 0x5CL, ((VECTOR(uint8_t, 4))(0x45L)), p_13, p_1084->g_776.s3, ((VECTOR(uint8_t, 4))(247UL)), 0x1EL)).s7e))), 0xBBL, 252UL, ((VECTOR(uint8_t, 8))(0x17L)), 0x5BL)).hi))).even ^ ((VECTOR(uint8_t, 4))(7UL))))).even, ((VECTOR(uint8_t, 2))(0UL))))).yyyyxxyyxyyyxyxx, ((VECTOR(uint16_t, 16))(0x883AL))))).sbd & ((VECTOR(uint32_t, 2))(4294967295UL))))).yyyx & ((VECTOR(uint32_t, 4))(1UL))))).xywzxyxwzwyxzyyw))).s3))) , l_798.x) , p_15)))) ^ p_14)))))) < 0x4EF4CFD0L)), ((VECTOR(int32_t, 4))(0x2046047DL)), 9L, 0L, 1L, 0L, 7L)).s9;
                        p_1084->g_835++;
                    }
                    else
                    { /* block id: 290 */
                        int32_t *l_838[2][2][3] = {{{&l_805,&l_723[1][3],&l_805},{&l_805,&l_723[1][3],&l_805}},{{&l_805,&l_723[1][3],&l_805},{&l_805,&l_723[1][3],&l_805}}};
                        int i, j, k;
                        l_843[4][3]--;
                        (*p_1084->g_699) = (*p_12);
                        (*p_1084->g_848) = l_846;
                        l_797.x |= ((*p_1084->g_699) &= ((p_1084->g_851 == (void*)0) & 0x50L));
                    }
                }
                --l_859;
                if (((*p_1084->g_851) != (*p_1084->g_851)))
                { /* block id: 299 */
                    int32_t *l_867 = &l_723[1][2];
                    struct S0 l_872 = {1UL};
                    int32_t l_879 = 1L;
                    if (((*l_856) = (*p_11)))
                    { /* block id: 301 */
                        struct S0 *l_863 = &l_862;
                        int32_t *l_868[6];
                        int16_t l_871[2][3][1];
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                            l_868[i] = &l_752;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 3; j++)
                            {
                                for (k = 0; k < 1; k++)
                                    l_871[i][j][k] = (-6L);
                            }
                        }
                        (*l_863) = ((**l_846) = l_862);
                        l_783 = ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 2))(0x5CD15C52L, 0x5EDC5962L)).xxyyxxyy, ((VECTOR(int32_t, 8))((((*l_856) &= (((-8L) ^ (((void*)0 != l_864) ^ (GROUP_DIVERGE(1, 1) >= 0x9CF8BC1D22D838FBL))) , ((safe_add_func_int8_t_s_s((((*l_864) = func_21(&l_723[2][2], func_21(l_867, l_868[2], (p_1084->g_66++), ((*l_759) |= (((*p_1084->g_259) , (void*)0) != l_755)), p_1084), (*l_867), l_871[1][2][0], p_1084)) != &p_1084->g_5), 9L)) , p_1084->g_548))) || p_14), 0x271D9C55L, 0L, (*p_11), (-1L), 0x28514198L, 0x6F3745A6L, 0x4AFF14C6L)), ((VECTOR(int32_t, 8))(0x51705316L))))).s3;
                        return l_872;
                    }
                    else
                    { /* block id: 310 */
                        int16_t l_875 = 0x3623L;
                        l_879 = (safe_lshift_func_int16_t_s_s((((*l_855) ^= (((l_875 != p_15) == (p_1084->g_876[8][0] != l_878)) > (p_1084->g_70 = (**p_1084->g_175)))) > 0x528704AAL), 7));
                    }
                }
                else
                { /* block id: 315 */
                    int32_t l_882 = 0L;
                    int32_t l_883 = 1L;
                    uint32_t l_884[6] = {0x2597CD18L,0x2597CD18L,0x2597CD18L,0x2597CD18L,0x2597CD18L,0x2597CD18L};
                    int i;
                    (*l_864) = l_880[2];
                    ++l_884[5];
                    if ((*p_11))
                    { /* block id: 318 */
                        (*p_1084->g_850) = (***p_1084->g_848);
                    }
                    else
                    { /* block id: 320 */
                        uint64_t l_892 = 0UL;
                        int8_t l_910[10][1] = {{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}};
                        int i, j;
                        (*p_1084->g_699) ^= (safe_rshift_func_int8_t_s_s(((*p_1084->g_877) ^= l_889), 4));
                        if (l_884[5])
                            continue;
                        if ((*p_1084->g_699))
                            continue;
                        (*l_857) ^= ((((*p_1084->g_877) = (((l_771.s7 ^ (safe_lshift_func_int16_t_s_s(l_892, 0))) ^ ((safe_mul_func_uint64_t_u_u(p_1084->g_234, (((((safe_div_func_uint32_t_u_u((((safe_sub_func_uint64_t_u_u(((((void*)0 != &l_840[1]) & p_15) != (l_785 >= (((safe_add_func_uint8_t_u_u(FAKE_DIVERGE(p_1084->local_2_offset, get_local_id(2), 10), (safe_sub_func_int8_t_s_s((*p_1084->g_877), GROUP_DIVERGE(1, 1))))) <= ((~(l_907[2] == p_1084->g_909)) , (*p_1084->g_699))) >= p_1084->g_776.s5))), p_14)) , 4294967293UL) && l_811.s1), l_910[3][0])) , l_892) & l_892) , &p_14) != (void*)0))) < l_771.se)) ^ p_14)) < p_1084->g_835) <= 0UL);
                    }
                }
                for (l_839 = 3; (l_839 < (-27)); --l_839)
                { /* block id: 331 */
                    int16_t l_937 = 0x1AEAL;
                    struct S0 ***l_942 = &l_846;
                    VECTOR(int64_t, 4) l_946 = (VECTOR(int64_t, 4))(0x732B92D26434F675L, (VECTOR(int64_t, 2))(0x732B92D26434F675L, 0x67D41CEBE9AE8926L), 0x67D41CEBE9AE8926L);
                    int i;
                    (*p_1084->g_699) = (((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 16))(l_913.s3207131721541465)).sb1))).lo || ((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(uint32_t, 8))(p_1084->g_914.s3fdccf44)).s73, ((VECTOR(uint32_t, 2))(0xECFDF08FL, 0x28F5F00EL))))), (uint32_t)0xD543E021L))).xxyxxxxy))) | ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))((+((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 8))(l_925.yyxxyyxy)).s0427623101010157, ((VECTOR(uint32_t, 16))(p_1084->g_926.sefb8d887cfcd5a2b))))).odd + ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(mad_sat(((VECTOR(uint32_t, 2))(l_931.wx)), ((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 16))(abs(((VECTOR(uint32_t, 2))((-((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 2))(l_934.s05)), (uint32_t)(safe_div_func_int32_t_s_s(((l_937 >= (0xB9L && ((*l_854) = ((*l_856) > (0L != (safe_lshift_func_uint8_t_u_s((safe_add_func_int8_t_s_s((((((void*)0 == l_942) != (FAKE_DIVERGE(p_1084->local_2_offset, get_local_id(2), 10) && ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(p_1084->g_943.yxwxzxxx)).s66 <= ((VECTOR(int16_t, 4))(0L, 7L, 0x275CL, (-1L))).odd))).lo)) | (safe_div_func_int16_t_s_s((((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(l_946.zz)).xxyyxyyyyyyxyyxy && ((VECTOR(int64_t, 16))(p_1084->g_947.yxxxyxyyxyyyyxyx))))).sa , p_15) , (GROUP_DIVERGE(0, 1) && ((p_1084->g_83.y ^= 0xD0L) || l_754[0]))) , 0x10E4L), p_1084->g_388[3]))) , (*p_1084->g_877)), p_1084->g_697.y)), p_14))))))) || l_786), (-1L)))))) + ((VECTOR(uint32_t, 2))(0x68F5C114L)))))))).xyxxxyyxxxyyyxxx))).odd, ((VECTOR(uint32_t, 8))(4294967293UL)), ((VECTOR(uint32_t, 8))(0x384FDE36L))))).s32, ((VECTOR(uint32_t, 2))(0UL))))).yyyx + ((VECTOR(uint32_t, 4))(3UL))))).lo, ((VECTOR(uint32_t, 2))(0xD988A608L))))).yxxyxxyx + ((VECTOR(uint32_t, 8))(0x692A50BBL)))))))).s5751235510274723 + ((VECTOR(uint32_t, 16))(4294967294UL)))))))).hi + ((VECTOR(uint32_t, 8))(1UL))))) + ((VECTOR(uint32_t, 8))(0xE07F1660L))))).odd + ((VECTOR(uint32_t, 4))(0x19110F3BL))))).lo | ((VECTOR(uint32_t, 2))(0x6FFE4D95L))))).xxxyxyxy))).s2 , GROUP_DIVERGE(0, 1)) , 0UL));
                }
            }
        }
        else
        { /* block id: 337 */
            uint32_t l_948 = 0x9A2A55A1L;
            VECTOR(uint64_t, 2) l_953 = (VECTOR(uint64_t, 2))(0UL, 1UL);
            VECTOR(uint64_t, 8) l_954 = (VECTOR(uint64_t, 8))(0x72DCDAA859BC8586L, (VECTOR(uint64_t, 4))(0x72DCDAA859BC8586L, (VECTOR(uint64_t, 2))(0x72DCDAA859BC8586L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x72DCDAA859BC8586L, 18446744073709551615UL);
            int32_t l_965[7] = {(-7L),0x5BC15855L,(-7L),(-7L),0x5BC15855L,(-7L),(-7L)};
            int32_t l_966 = (-1L);
            int64_t *l_969 = &l_754[0];
            int8_t l_971 = 1L;
            VECTOR(int32_t, 16) l_974 = (VECTOR(int32_t, 16))(0x079D2265L, (VECTOR(int32_t, 4))(0x079D2265L, (VECTOR(int32_t, 2))(0x079D2265L, 0x092AA89AL), 0x092AA89AL), 0x092AA89AL, 0x079D2265L, 0x092AA89AL, (VECTOR(int32_t, 2))(0x079D2265L, 0x092AA89AL), (VECTOR(int32_t, 2))(0x079D2265L, 0x092AA89AL), 0x079D2265L, 0x092AA89AL, 0x079D2265L, 0x092AA89AL);
            VECTOR(uint32_t, 2) l_979 = (VECTOR(uint32_t, 2))(0x8D7F11EEL, 4294967295UL);
            int i;
            (*l_864) = (void*)0;
            (*p_1084->g_699) = ((*p_1084->g_852) != ((l_948 , ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))(abs(((VECTOR(uint64_t, 4))(p_1084->g_5, (p_1084->g_357.y |= p_14), 0UL, 0x191ACF9E4766933CL)).xywwzzxyyxwywzzz))).s2a + ((VECTOR(uint64_t, 2))(l_953.yy))))), ((VECTOR(uint64_t, 4))(add_sat(((VECTOR(uint64_t, 16))(l_954.s2042265755165100)).sca49, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(18446744073709551613UL, ((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(uint64_t, 4))(18446744073709551608UL, ((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(p_1084->g_959.wwwzxxxwyzywxyww)) >> ((VECTOR(uint64_t, 16))(64))))).sd1, (uint64_t)(l_970[7] = (((((*l_969) ^= (safe_div_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), (safe_unary_minus_func_uint32_t_u((((l_723[1][4] <= (p_1084->g_694.s3 = (p_1084->g_338.s7 = (((l_965[4] = p_13) & (l_966 = l_811.s2)) < p_1084->g_479.y)))) > (((safe_sub_func_int16_t_s_s(p_13, FAKE_DIVERGE(p_1084->local_0_offset, get_local_id(0), 10))) < p_1084->g_198.z) && (*p_1084->g_877))) >= (*p_1084->g_877))))))) > (-9L)) , p_1084->g_403.w) > 1UL))))), 0x9C74DB6D7419EB4BL)), ((VECTOR(uint64_t, 4))(1UL))))), l_971, p_15, 9UL, p_1084->g_217.z, 6UL, 0x311D025C101CFB27L, 18446744073709551611UL, ((VECTOR(uint64_t, 2))(0x4F9412EF4CCFA4EBL)), 0UL, 0xE53729B5A77DBB2DL)) + ((VECTOR(uint64_t, 16))(5UL))))).sc7f7, ((VECTOR(uint64_t, 4))(1UL))))), ((VECTOR(uint64_t, 2))(18446744073709551615UL)), 9UL, l_769.s3, l_843[4][3], ((VECTOR(uint64_t, 4))(0x6A0DA460ABE83741L)), ((VECTOR(uint64_t, 2))(0xD03AF6DE7A115DE6L)), 0x274758CB39AA440BL)).sa7da))).lo))), 6UL, 0x21118619C392BA81L)).even - ((VECTOR(uint64_t, 2))(1UL))))).odd) || p_1084->g_943.w));
            for (l_751 = 22; (l_751 <= 17); l_751--)
            { /* block id: 349 */
                uint16_t l_1032 = 0xB483L;
                int32_t l_1034 = (-1L);
                if (((VECTOR(int32_t, 16))(l_974.s2b00770c8f4c8a13)).sd)
                { /* block id: 350 */
                    int16_t l_1028 = 0x492DL;
                    uint32_t l_1029[2];
                    uint32_t l_1030 = 0x58004C8EL;
                    int32_t l_1033 = 0x67782E7EL;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1029[i] = 4294967287UL;
                    if ((((*l_969) = ((safe_div_func_uint32_t_u_u((((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))(l_979.xxyyxyyyyxxxxxxx)).s3d << ((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 2))(0UL, 4UL)).xyyyyxyxxyyxyyyy, ((VECTOR(uint32_t, 8))(0x7CDD208BL, 0x180B04D9L, (p_1084->g_564 , (safe_div_func_uint64_t_u_u(((safe_sub_func_int64_t_s_s((safe_div_func_uint64_t_u_u(((safe_sub_func_uint64_t_u_u((l_1033 ^= ((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 8))(p_1084->g_990.sd7288723)).s20, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(l_997.s4016)) << ((VECTOR(uint16_t, 4))(16))))).wwwwzyyy - ((VECTOR(uint16_t, 2))(p_1084->g_998.s10)).yxxxxxyy))).even + ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_1007.yx)), 0xEAD6L, 0xB134L, (((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_1008.wz)), ((safe_rshift_func_uint8_t_u_s((~(((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),VECTOR(int64_t, 16),((VECTOR(int64_t, 8))(p_1084->g_1013.xzzxxyww)).s4667144417560340, ((VECTOR(int64_t, 2))(l_1014.xx)).xxxyxxxyyyyxyxxy, ((VECTOR(int64_t, 16))(l_1015.s7057242317257231))))).even, ((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 2))(p_1084->g_1016.xx)).xyxyxxyx, ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(l_1017.yw)).xxyyxyxxyxyxyyxy >= ((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 4))(l_1018.yyxy)), ((VECTOR(int64_t, 16))(0x7883CF5BC7088724L, (((((!(((safe_rshift_func_uint16_t_u_s((((*p_1084->g_877) = (p_1084->g_947.x != ((((safe_mod_func_uint32_t_u_u(((+(safe_div_func_int16_t_s_s((((FAKE_DIVERGE(p_1084->local_2_offset, get_local_id(2), 10) , l_1025) == (void*)0) != (!(((18446744073709551615UL && 1UL) & ((safe_add_func_uint8_t_u_u((l_1028 <= (((void*)0 != &p_1084->g_877) || p_14)), l_843[4][3])) < l_843[4][3])) , 0x3BL))), p_13))) < l_1029[1]), p_15)) , l_710) != (void*)0) >= 0x2AF984B8EBBA4D35L))) <= p_1084->g_411), 5)) <= 0x0E61D926L) || p_1084->g_70)) > (*p_1084->g_699)) == l_1029[1]) | 4UL) == 0x3843L), ((VECTOR(int64_t, 2))((-10L))), 0x750A52A443B59E40L, 0x68FA2201C2C6B3B2L, ((VECTOR(int64_t, 4))(0x3FA8CFB86B2642E6L)), ((VECTOR(int64_t, 4))(0x63A1982B504DA95AL)), 1L, 7L)).sb4d7))).ywzwwxyywwwxzwzz))).s48, ((VECTOR(int64_t, 2))((-9L)))))).yyyyxyyy))).s3300417150261706, ((VECTOR(int64_t, 16))(0x5945FA828E43B08DL))))).hi))).s62, ((VECTOR(int64_t, 2))(5L))))).hi, 7L)) >= 0x97D03717L) && p_15)), 3)) && l_1030), (*p_11), ((VECTOR(int32_t, 8))(0x04040214L)), ((VECTOR(int32_t, 4))(5L)))).sec && ((VECTOR(int32_t, 2))(1L))))), ((VECTOR(int32_t, 4))(0x1CF2B35DL)), 0x3F8AD894L, 0x1CFC3CDAL)), l_953.x, 0x7632D5D7L, 1L, l_948, ((VECTOR(int32_t, 4))(0x5483EC4DL)))).s37, ((VECTOR(int32_t, 2))(0x6BE40B53L))))).yxxy, ((VECTOR(int32_t, 4))(0x1ED5BA12L))))).wyzxwzwz && ((VECTOR(int32_t, 8))(0x0C99D286L))))).s04, ((VECTOR(int32_t, 2))(3L))))).yxyyyyxxyyxxxxxy >= ((VECTOR(int32_t, 16))((-1L)))))).s7 & l_1031), GROUP_DIVERGE(0, 1), 0xDE23L, 65535UL)), FAKE_DIVERGE(p_1084->group_2_offset, get_group_id(2), 10), 8UL, GROUP_DIVERGE(1, 1), GROUP_DIVERGE(1, 1), l_1032, ((VECTOR(uint16_t, 2))(0UL)), 65534UL)) * ((VECTOR(uint16_t, 16))(0x6F5EL))))).sb5 + ((VECTOR(uint16_t, 2))(0x78B9L))))), 1UL, 0x6126L)).wzxyywyywxyyyzyx ^ ((VECTOR(uint16_t, 16))(0xB98DL))))).s875a << ((VECTOR(uint16_t, 4))(0xFDAAL))))).odd + ((VECTOR(uint16_t, 2))(0x9A24L))))).yxxy))).odd))).odd, p_1084->g_107)) , l_1028)), l_979.y)) >= l_723[0][4]), (-1L))), p_1084->g_443.x)) && l_1030), l_954.s7))), 0UL, 4UL, ((VECTOR(uint32_t, 2))(0x83FD7B5EL)), 0x510D55D0L)).s0743646661304007))).sea))).yyxyyyyx, ((VECTOR(uint32_t, 8))(0UL))))).s6 >= 0x8C29679BL), (*p_11))) < l_1034)) <= p_14))
                    { /* block id: 354 */
                        return (*p_1084->g_259);
                    }
                    else
                    { /* block id: 356 */
                        struct S0 l_1035 = {0x4221L};
                        (*p_1084->g_699) = l_1028;
                        if ((*p_11))
                            break;
                        return l_1035;
                    }
                }
                else
                { /* block id: 361 */
                    uint32_t l_1037 = 4294967295UL;
                    l_1037--;
                    (*p_1084->g_699) &= 0L;
                }
                l_811.s2 = (safe_mod_func_uint16_t_u_u(((p_1084->g_548 | p_1084->g_313.s4) == (*p_1084->g_877)), p_1084->g_694.s4));
                if ((*p_11))
                    break;
                if (l_735.s5)
                    break;
            }
        }
        ++l_1044;
        (*l_864) = p_12;
    }
    else
    { /* block id: 372 */
        VECTOR(int8_t, 4) l_1060 = (VECTOR(int8_t, 4))(0x43L, (VECTOR(int8_t, 2))(0x43L, 0x40L), 0x40L);
        int8_t *l_1069[5][4][7] = {{{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0},{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0},{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0},{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0}},{{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0},{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0},{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0},{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0}},{{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0},{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0},{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0},{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0}},{{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0},{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0},{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0},{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0}},{{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0},{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0},{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0},{(void*)0,&p_1084->g_138,&l_716,&l_716,&l_716,&p_1084->g_138,(void*)0}}};
        int64_t l_1070 = 1L;
        int64_t l_1071 = 0x67BA47A4D76BA66EL;
        int i, j, k;
        l_752 = (((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 4))((-2L), (safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_1084->group_2_offset, get_group_id(2), 10), (*p_1084->g_176))), (-1L), 0x4BL)).hi, ((VECTOR(int8_t, 4))(l_1051.xxxx)).hi))).even, (0xF46AL ^ ((((l_811.s1 = ((p_1084->g_693.s1 , (+((safe_unary_minus_func_uint64_t_u((safe_sub_func_uint8_t_u_u(p_1084->g_217.y, (((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(p_1084->g_1057.s0773)), (safe_div_func_int8_t_s_s(((VECTOR(int8_t, 16))(l_1060.wwxwwzzxxyywyzyz)).sf, p_1084->g_693.s7)), (l_735.s4 > (safe_lshift_func_uint16_t_u_s(((((0x15L ^ ((l_723[2][2] = ((safe_div_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_s((((+((*p_1084->g_877) = (((*p_1084->g_699) = ((p_13 , ((safe_lshift_func_int8_t_s_s(p_14, 6)) && 0x1671B751119CB089L)) , (*p_1084->g_145))) > 0xD0685C0BL))) | 255UL) && (*p_11)), 3)), l_747)) | p_13)) , 0UL)) != p_1084->g_1057.s1) == 0UL) | 1L), p_1084->g_492.y))), 0xAF6EL, 0xB2BEL, ((VECTOR(uint16_t, 8))(0UL)))).even << ((VECTOR(uint16_t, 8))(0x0193L))))).even, ((VECTOR(uint16_t, 4))(6UL))))).x , p_14))))) , l_1060.z))) && 0x67L)) < p_1084->g_881) | l_709.x) & p_13)))) >= l_1070) > l_1071);
    }
    (*p_1084->g_699) = ((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(0x2F0E51D6L, (-1L), 0x4C349992L, 0x13673A7EL)).yyyxwyww, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 16))(l_1072.xxyxyyyyyyyyxyyy)).s427e, ((VECTOR(uint16_t, 8))(l_1073.sc406ee64)).even))).even))).xyyxxyyy, ((VECTOR(int32_t, 2))((-3L), 0x768DB79DL)).xxxyyxyy))).s2;
    l_811.s0 = (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(9UL, 0x1D64L)).even, (l_1077 |= p_13)));
    return (**l_846);
}


/* ------------------------------------------ */
/* 
 * reads : p_1084->g_5
 * writes:
 */
int32_t * func_16(uint32_t  p_17, int32_t * p_18, int32_t * p_19, int8_t  p_20, struct S1 * p_1084)
{ /* block id: 240 */
    int32_t *l_702 = (void*)0;
    int32_t **l_703 = &l_702;
    int16_t l_704 = 1L;
    (*l_703) = l_702;
    l_704 &= (*p_18);
    p_18 = ((*l_703) = (void*)0);
    return p_19;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_21(int32_t * p_22, int32_t * p_23, uint8_t  p_24, uint64_t  p_25, struct S1 * p_1084)
{ /* block id: 238 */
    return p_22;
}


/* ------------------------------------------ */
/* 
 * reads : p_1084->g_687 p_1084->g_693 p_1084->g_694 p_1084->g_608 p_1084->g_697 p_1084->g_699
 * writes: p_1084->g_687
 */
int32_t * func_26(int8_t  p_27, uint32_t  p_28, int32_t * p_29, int32_t * p_30, struct S1 * p_1084)
{ /* block id: 231 */
    int16_t l_675 = 0x5636L;
    int32_t l_676 = 7L;
    int32_t l_677 = 6L;
    int32_t *l_678 = &l_676;
    int32_t *l_679 = &p_1084->g_107;
    int32_t *l_680 = (void*)0;
    int32_t l_681 = (-6L);
    int32_t *l_682 = &p_1084->g_608;
    int32_t *l_683 = &l_676;
    int32_t l_684 = 0x009CD1EDL;
    int32_t l_685 = 0x1278E13BL;
    int32_t *l_686[2];
    VECTOR(int16_t, 16) l_692 = (VECTOR(int16_t, 16))((-2L), (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), (-7L)), (-7L)), (-7L), (-2L), (-7L), (VECTOR(int16_t, 2))((-2L), (-7L)), (VECTOR(int16_t, 2))((-2L), (-7L)), (-2L), (-7L), (-2L), (-7L));
    int i;
    for (i = 0; i < 2; i++)
        l_686[i] = (void*)0;
    p_1084->g_687[1]++;
    if (((safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(1L, 3L)).yyxy && ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))(l_692.s04)).xxyxxyxy && ((VECTOR(int16_t, 8))((!((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))(p_1084->g_693.s2123071240357125)).sfd, ((VECTOR(int16_t, 16))(p_1084->g_694.s0231453531655263)).s30))).yxyyxyxx)))))).hi))).z, 15)) < (safe_mul_func_int16_t_s_s((*l_682), ((VECTOR(uint16_t, 8))(p_1084->g_697.xyyxyyyx)).s0))))
    { /* block id: 233 */
        int32_t *l_698 = &l_685;
        return p_30;
    }
    else
    { /* block id: 235 */
        return p_1084->g_699;
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_1084->g_61 p_1084->g_66 p_1084->g_74 p_1084->g_83 p_1084->g_43 p_1084->g_91 p_1084->g_111 p_1084->g_70 p_1084->g_107 p_1084->g_72 p_1084->g_131 p_1084->g_39 p_1084->g_144 p_1084->g_145 p_1084->g_5 p_1084->g_175 p_1084->g_198 p_1084->g_199 p_1084->g_217 p_1084->g_166 p_1084->g_234 p_1084->g_259 p_1084->g_138 p_1084->g_277 p_1084->g_177 p_1084->g_313 p_1084->g_316 p_1084->g_232 p_1084->g_338 p_1084->g_339 p_1084->g_356 p_1084->g_357 p_1084->g_388 p_1084->g_392 p_1084->g_176 p_1084->g_403 p_1084->g_432 p_1084->g_443 p_1084->g_456 p_1084->g_470 p_1084->g_479 p_1084->g_492 p_1084->g_548 p_1084->g_564 p_1084->g_411 p_1084->g_608 p_1084->g_612 p_1084->g_653
 * writes: p_1084->g_70 p_1084->g_91 p_1084->g_107 p_1084->g_72 p_1084->g_138 p_1084->g_66 p_1084->g_145 p_1084->g_175 p_1084->g_111 p_1084->g_131.f0 p_1084->g_232 p_1084->g_131 p_1084->g_166 p_1084->g_83 p_1084->g_39 p_1084->g_411 p_1084->g_313 p_1084->g_524 p_1084->g_564 p_1084->g_43 p_1084->g_525 p_1084->g_608 p_1084->g_338
 */
int8_t  func_35(uint16_t  p_36, uint32_t  p_37, struct S1 * p_1084)
{ /* block id: 13 */
    int8_t l_53[10][7][1] = {{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L}}};
    int32_t *l_60 = (void*)0;
    uint32_t *l_69 = &p_1084->g_70;
    int16_t *l_71[5] = {&p_1084->g_72,&p_1084->g_72,&p_1084->g_72,&p_1084->g_72,&p_1084->g_72};
    int32_t l_73 = 8L;
    uint16_t **l_602 = (void*)0;
    uint16_t **l_603 = &p_1084->g_525;
    uint16_t l_604 = 0x3CD8L;
    int32_t *l_607 = &p_1084->g_608;
    VECTOR(int16_t, 16) l_611 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x617EL), 0x617EL), 0x617EL, (-1L), 0x617EL, (VECTOR(int16_t, 2))((-1L), 0x617EL), (VECTOR(int16_t, 2))((-1L), 0x617EL), (-1L), 0x617EL, (-1L), 0x617EL);
    VECTOR(int16_t, 2) l_613 = (VECTOR(int16_t, 2))(0x2806L, 0x4D28L);
    VECTOR(int8_t, 8) l_618 = (VECTOR(int8_t, 8))(0x47L, (VECTOR(int8_t, 4))(0x47L, (VECTOR(int8_t, 2))(0x47L, (-1L)), (-1L)), (-1L), 0x47L, (-1L));
    int64_t *l_629 = (void*)0;
    int8_t *l_630 = (void*)0;
    int8_t *l_631 = (void*)0;
    int8_t *l_632 = &l_53[9][3][0];
    uint16_t l_633[3];
    int32_t *l_634 = (void*)0;
    int32_t *l_635 = &l_73;
    VECTOR(uint32_t, 2) l_638 = (VECTOR(uint32_t, 2))(4294967288UL, 0UL);
    VECTOR(uint32_t, 16) l_639 = (VECTOR(uint32_t, 16))(7UL, (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 0x3447F8E6L), 0x3447F8E6L), 0x3447F8E6L, 7UL, 0x3447F8E6L, (VECTOR(uint32_t, 2))(7UL, 0x3447F8E6L), (VECTOR(uint32_t, 2))(7UL, 0x3447F8E6L), 7UL, 0x3447F8E6L, 7UL, 0x3447F8E6L);
    VECTOR(uint32_t, 16) l_640 = (VECTOR(uint32_t, 16))(0x17461954L, (VECTOR(uint32_t, 4))(0x17461954L, (VECTOR(uint32_t, 2))(0x17461954L, 0xA2CC6111L), 0xA2CC6111L), 0xA2CC6111L, 0x17461954L, 0xA2CC6111L, (VECTOR(uint32_t, 2))(0x17461954L, 0xA2CC6111L), (VECTOR(uint32_t, 2))(0x17461954L, 0xA2CC6111L), 0x17461954L, 0xA2CC6111L, 0x17461954L, 0xA2CC6111L);
    VECTOR(uint32_t, 2) l_649 = (VECTOR(uint32_t, 2))(0xF09854F8L, 0xE25D3598L);
    VECTOR(uint16_t, 16) l_650 = (VECTOR(uint16_t, 16))(0xEF6CL, (VECTOR(uint16_t, 4))(0xEF6CL, (VECTOR(uint16_t, 2))(0xEF6CL, 65535UL), 65535UL), 65535UL, 0xEF6CL, 65535UL, (VECTOR(uint16_t, 2))(0xEF6CL, 65535UL), (VECTOR(uint16_t, 2))(0xEF6CL, 65535UL), 0xEF6CL, 65535UL, 0xEF6CL, 65535UL);
    VECTOR(int8_t, 4) l_654 = (VECTOR(int8_t, 4))(0x0BL, (VECTOR(int8_t, 2))(0x0BL, 1L), 1L);
    VECTOR(uint64_t, 4) l_659 = (VECTOR(uint64_t, 4))(9UL, (VECTOR(uint64_t, 2))(9UL, 18446744073709551615UL), 18446744073709551615UL);
    VECTOR(int16_t, 4) l_664 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x1850L), 0x1850L);
    int64_t l_665 = 0x0947D24909D2D7D3L;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_633[i] = 0x74A9L;
    (*l_607) |= (((func_44((((*l_603) = func_49(((l_53[3][5][0] > ((VECTOR(int8_t, 8))(func_54(l_60, p_37, ((((VECTOR(uint64_t, 2))(p_1084->g_61.s02)).lo , func_62((((l_73 = (((l_60 != (((0x1275A805L || 2L) >= (5L >= ((safe_mul_func_uint16_t_u_u(p_1084->g_66, (safe_lshift_func_uint8_t_u_u(((((*l_69) = 1UL) | (-5L)) < 0L), p_37)))) != (-1L)))) , l_69)) == p_1084->g_66) > 65535UL)) <= p_1084->g_61.s4) || p_1084->g_74), p_1084)) != l_71[1]), &p_1084->g_43, l_53[3][5][0], p_1084), ((VECTOR(int8_t, 4))(0x12L)), 0L, (-5L), 0x5BL)).s4) && p_36), l_53[3][5][0], p_36, p_1084)) != (void*)0), p_37, p_37, l_604, p_1084) <= l_53[3][5][0]) && p_1084->g_74) & p_1084->g_316.x);
    (*l_635) |= ((((((l_602 != l_603) != (((*l_632) = (((safe_mod_func_uint16_t_u_u((*l_607), ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 2))(l_611.s48)).yyyx, ((VECTOR(int16_t, 2))((-9L), 0x6D3BL)).xyyy, ((VECTOR(int16_t, 2))(p_1084->g_612.s56)).yxxy))), 0x1F8FL, ((VECTOR(int16_t, 4))(l_613.xyxx)), 0x6263L, (-1L), ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(8L, ((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(0x2BL, (p_37 > ((+((VECTOR(uint16_t, 2))(0xA520L, 65526UL)).even) < (4294967286UL <= (--(*l_69))))), p_1084->g_316.x, ((VECTOR(int8_t, 4))(0L, ((VECTOR(int8_t, 2))(l_618.s56)), 0x7FL)), 0x5FL)).s3237504703457362 || ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))((((4294967290UL == (safe_div_func_uint64_t_u_u((((p_1084->g_432.w == (safe_sub_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_s(((safe_add_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(p_1084->g_403.x, (*l_607))), p_37)) <= p_37), p_36)) != p_36), 0x21B9L))) == 2UL) <= 0x77L), 18446744073709551611UL))) , l_629) != (void*)0), 1L, 0L, 0x45L)), ((VECTOR(int8_t, 4))(0x18L)))).s0544504773502622))).sa4d6 ^ ((VECTOR(int8_t, 4))(0x76L))))).hi, ((VECTOR(int8_t, 2))(0x3BL)), ((VECTOR(int8_t, 2))((-10L)))))).xxxyxyxyxyxyxxyy, ((VECTOR(int8_t, 16))(0x7CL))))) || ((VECTOR(int8_t, 16))((-5L)))))).hi, ((VECTOR(uint8_t, 8))(0x59L))))).s4141446515037771 && ((VECTOR(int16_t, 16))((-10L)))))).sa2, ((VECTOR(int16_t, 2))(0L))))), 5L)) && ((VECTOR(int16_t, 4))((-1L)))))), 0x24E9L)).lo & ((VECTOR(int16_t, 8))(0x4052L))))).s4)) , 0x6DAEL) & (*l_607))) < (-6L))) , l_633[0]) , (*l_607)) <= p_37) >= p_36);
    (*l_607) |= (((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0UL, 0xBBFEFB99L)), 0x7A8F7A11L, 0xA6055328L)) + ((VECTOR(uint32_t, 2))(4294967286UL, 0xF9CC441BL)).xyyx))) | ((VECTOR(uint32_t, 8))(0UL, ((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 2))(4UL, 4294967288UL)), (uint32_t)((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_638.yxxxyxyx)), ((VECTOR(uint32_t, 4))(l_639.sf890)), ((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 4))(hadd(((VECTOR(uint32_t, 8))(l_640.s204d1e27)).lo, ((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(1UL, 0xB92356A0L)), 4294967295UL, ((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),uint32_t,((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(mad_sat(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 2))(0xCCE22263L, 0UL)).xyxxxyyx, ((VECTOR(uint32_t, 16))(l_649.yxxyxxxxyxxyyxxx)).odd))).s54, ((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),uint16_t,((VECTOR(uint16_t, 4))(l_650.s0fbd)).wwywzxwx, (uint16_t)(p_36 && FAKE_DIVERGE(p_1084->group_1_offset, get_group_id(1), 10)), (uint16_t)(((((!(0UL | ((65535UL && (((safe_sub_func_int16_t_s_s((~((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),VECTOR(int16_t, 8),((VECTOR(int16_t, 8))(p_1084->g_653.yyyyxyxy)), ((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(l_654.xywxxzxx)), 0L, ((safe_sub_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(l_659.wz)).odd, (((safe_sub_func_uint8_t_u_u((p_36 >= (l_630 != &p_1084->g_66)), ((safe_rshift_func_uint8_t_u_u((((void*)0 == &l_602) >= (p_1084->g_338.s4 = ((VECTOR(int16_t, 4))(l_664.xzyx)).y)), 6)) != l_665))) > p_1084->g_313.s7) != (*l_635)))), p_37)) >= p_1084->g_548), p_36, ((VECTOR(int8_t, 4))(0x0AL)), 3L)).odd && ((VECTOR(int8_t, 8))(0x03L))))).s06, ((VECTOR(uint8_t, 2))(0x8AL))))).yxyy, ((VECTOR(int16_t, 4))(0x7BA4L))))).zzzzxyzxywxywyyz, ((VECTOR(int16_t, 16))(9L))))).odd, ((VECTOR(int16_t, 8))((-6L)))))) || ((VECTOR(int16_t, 8))(0x37A2L))))).s71, ((VECTOR(int16_t, 2))(8L))))).xyyxyxyy, ((VECTOR(int16_t, 8))(0x3647L))))).s5), p_1084->g_492.x)) | 65530UL) || (*p_1084->g_176))) > GROUP_DIVERGE(1, 1)))) , 0x69L) && FAKE_DIVERGE(p_1084->global_1_offset, get_global_id(1), 10)) | (-2L)) <= GROUP_DIVERGE(0, 1))))).s1311112274670402, ((VECTOR(uint16_t, 16))(0UL))))).s9b, ((VECTOR(uint32_t, 2))(0xF0B4864AL))))).yxyxyyxyyyyxyyxx + ((VECTOR(uint32_t, 16))(0x68066FB1L))))).s46 + ((VECTOR(uint32_t, 2))(2UL))))), ((VECTOR(uint32_t, 2))(0xDBAC3C11L)), ((VECTOR(uint32_t, 2))(9UL))))).yyxy + ((VECTOR(uint32_t, 4))(0UL))))).odd, (uint32_t)(*p_1084->g_176), (uint32_t)0x620F7786L))), (*p_1084->g_176), 0x1F6CD12EL, ((VECTOR(uint32_t, 2))(1UL)), ((VECTOR(uint32_t, 4))(0xA8CD8BFCL)), (*p_1084->g_176), 0x336AE48CL, 1UL)).s28 + ((VECTOR(uint32_t, 2))(0x8A40F9F6L))))).xyyyxyyx, ((VECTOR(uint32_t, 8))(3UL))))).lo))).odd, ((VECTOR(uint32_t, 2))(0x1971EA8CL))))), 3UL, 0xBEA9561FL)).sa))), 8UL, ((VECTOR(uint32_t, 4))(0UL)))).even))).w ^ p_36) <= p_37) & (*l_635));
    return p_36;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_44(uint32_t  p_45, uint64_t  p_46, uint8_t  p_47, uint64_t  p_48, struct S1 * p_1084)
{ /* block id: 221 */
    int32_t *l_605 = &p_1084->g_5;
    uint32_t l_606 = 0x324596F7L;
    l_605 = l_605;
    return l_606;
}


/* ------------------------------------------ */
/* 
 * reads : p_1084->g_66 p_1084->g_144 p_1084->g_145 p_1084->g_5 p_1084->g_107 p_1084->g_175 p_1084->g_70 p_1084->g_198 p_1084->g_199 p_1084->g_43 p_1084->g_131.f0 p_1084->g_83 p_1084->g_217 p_1084->g_166 p_1084->g_111 p_1084->g_234 p_1084->g_259 p_1084->g_138 p_1084->g_277 p_1084->g_177 p_1084->g_313 p_1084->g_316 p_1084->g_72 p_1084->g_232 p_1084->g_338 p_1084->g_339 p_1084->g_91 p_1084->g_61 p_1084->g_39 p_1084->g_356 p_1084->g_357 p_1084->g_388 p_1084->g_392 p_1084->g_176 p_1084->g_403 p_1084->g_432 p_1084->g_443 p_1084->g_456 p_1084->g_470 p_1084->g_479 p_1084->g_492 p_1084->g_548 p_1084->g_131 p_1084->g_564 p_1084->g_411
 * writes: p_1084->g_145 p_1084->g_66 p_1084->g_107 p_1084->g_175 p_1084->g_70 p_1084->g_111 p_1084->g_72 p_1084->g_131.f0 p_1084->g_232 p_1084->g_131 p_1084->g_166 p_1084->g_83 p_1084->g_91 p_1084->g_39 p_1084->g_138 p_1084->g_411 p_1084->g_313 p_1084->g_524 p_1084->g_564 p_1084->g_43
 */
uint16_t * func_49(uint16_t  p_50, uint8_t  p_51, uint32_t  p_52, struct S1 * p_1084)
{ /* block id: 47 */
    int32_t l_146 = 0x1ACA1152L;
    int32_t *l_150 = (void*)0;
    uint32_t l_167[1][5] = {{4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL}};
    int32_t l_169 = 0x378DA62DL;
    VECTOR(int32_t, 2) l_170 = (VECTOR(int32_t, 2))(0x2E09CB0AL, 0x4E084E3BL);
    VECTOR(int64_t, 8) l_251 = (VECTOR(int64_t, 8))((-9L), (VECTOR(int64_t, 4))((-9L), (VECTOR(int64_t, 2))((-9L), 8L), 8L), 8L, (-9L), 8L);
    int8_t l_257 = 0x51L;
    VECTOR(uint8_t, 2) l_308 = (VECTOR(uint8_t, 2))(1UL, 0x8FL);
    VECTOR(int8_t, 16) l_315 = (VECTOR(int8_t, 16))((-5L), (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 0x71L), 0x71L), 0x71L, (-5L), 0x71L, (VECTOR(int8_t, 2))((-5L), 0x71L), (VECTOR(int8_t, 2))((-5L), 0x71L), (-5L), 0x71L, (-5L), 0x71L);
    uint32_t l_321 = 0x209F11ECL;
    int8_t l_349 = 0x5DL;
    uint64_t *l_406 = &p_1084->g_91;
    uint64_t **l_405 = &l_406;
    uint64_t ***l_404[2][7] = {{&l_405,&l_405,&l_405,&l_405,&l_405,&l_405,&l_405},{&l_405,&l_405,&l_405,&l_405,&l_405,&l_405,&l_405}};
    struct S0 *l_425 = &p_1084->g_131;
    VECTOR(int32_t, 2) l_442 = (VECTOR(int32_t, 2))(0x43FA3B65L, 0x30A7A2D7L);
    int8_t *l_553 = (void*)0;
    uint8_t l_585[9] = {247UL,0xCBL,247UL,247UL,0xCBL,247UL,247UL,0xCBL,247UL};
    int8_t *l_590 = &l_257;
    int8_t l_591[10] = {5L,0x32L,5L,5L,0x32L,5L,5L,0x32L,5L,5L};
    int32_t *l_592 = (void*)0;
    uint32_t l_593 = 8UL;
    uint16_t *l_601[10] = {&p_1084->g_43,&p_1084->g_43,&p_1084->g_43,&p_1084->g_43,&p_1084->g_43,&p_1084->g_43,&p_1084->g_43,&p_1084->g_43,&p_1084->g_43,&p_1084->g_43};
    int i, j;
    if (l_146)
    { /* block id: 48 */
        int32_t *l_147 = &p_1084->g_5;
        int32_t **l_148 = &p_1084->g_145;
        int32_t **l_149[2][6][1];
        int16_t l_171 = 0x4BF7L;
        uint16_t l_172 = 0UL;
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 6; j++)
            {
                for (k = 0; k < 1; k++)
                    l_149[i][j][k] = &l_147;
            }
        }
        l_150 = ((*l_148) = l_147);
        for (p_1084->g_66 = 3; (p_1084->g_66 == 47); ++p_1084->g_66)
        { /* block id: 53 */
            uint64_t *l_162 = &p_1084->g_91;
            uint64_t **l_161[7][9][4] = {{{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0}},{{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0}},{{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0}},{{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0}},{{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0}},{{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0}},{{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0},{&l_162,&l_162,&l_162,(void*)0}}};
            uint64_t ***l_160 = &l_161[0][5][1];
            int16_t *l_163[5];
            uint64_t **l_164[10][2][7] = {{{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0},{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0}},{{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0},{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0}},{{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0},{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0}},{{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0},{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0}},{{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0},{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0}},{{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0},{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0}},{{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0},{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0}},{{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0},{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0}},{{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0},{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0}},{{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0},{(void*)0,&l_162,&l_162,(void*)0,&l_162,(void*)0,(void*)0}}};
            int64_t *l_165 = &p_1084->g_166;
            int32_t *l_168[2];
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_163[i] = &p_1084->g_72;
            for (i = 0; i < 2; i++)
                l_168[i] = &p_1084->g_107;
            (*l_148) = (*p_1084->g_144);
            l_167[0][3] &= (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(1L, 5L)).lo, ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))(0x03F3C918L, ((VECTOR(int32_t, 4))(((safe_sub_func_int16_t_s_s(0x04CDL, (safe_unary_minus_func_int64_t_s(p_50)))) , (((safe_sub_func_int16_t_s_s((safe_mul_func_int16_t_s_s(p_50, 0x27F2L)), 1UL)) == ((void*)0 == l_160)) , (((*l_165) &= (((l_163[1] != (void*)0) , (*l_160)) == l_164[0][0][2])) | p_51))), 0x19C71661L, 0L, 8L)), (*l_150), (-1L), 8L)), (int32_t)0L))), 0x0D4CFF4AL, ((VECTOR(int32_t, 4))(0x27F8D447L)), 0x1A1B8C43L, 0x38D2D0EFL)) && ((VECTOR(int32_t, 16))(0x05FA8ED5L))))).scd == ((VECTOR(int32_t, 2))(0L))))), ((VECTOR(int32_t, 4))(0L)), ((VECTOR(int32_t, 8))(0x2662B469L)), 0L, (-1L))).s3 , (*p_1084->g_145));
            l_150 = l_168[1];
            (*l_150) &= (-10L);
        }
        ++l_172;
    }
    else
    { /* block id: 61 */
        int32_t l_182 = 1L;
        VECTOR(uint8_t, 16) l_189 = (VECTOR(uint8_t, 16))(252UL, (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 0x3DL), 0x3DL), 0x3DL, 252UL, 0x3DL, (VECTOR(uint8_t, 2))(252UL, 0x3DL), (VECTOR(uint8_t, 2))(252UL, 0x3DL), 252UL, 0x3DL, 252UL, 0x3DL);
        VECTOR(uint8_t, 16) l_190 = (VECTOR(uint8_t, 16))(0x9CL, (VECTOR(uint8_t, 4))(0x9CL, (VECTOR(uint8_t, 2))(0x9CL, 5UL), 5UL), 5UL, 0x9CL, 5UL, (VECTOR(uint8_t, 2))(0x9CL, 5UL), (VECTOR(uint8_t, 2))(0x9CL, 5UL), 0x9CL, 5UL, 0x9CL, 5UL);
        int8_t l_218 = 0x20L;
        uint8_t l_230 = 8UL;
        int32_t l_236 = 0x1647D06EL;
        int32_t l_237 = (-1L);
        int32_t l_238[1];
        uint8_t l_248 = 4UL;
        uint32_t l_282 = 0xEC2FF4E7L;
        uint64_t *l_325 = &p_1084->g_91;
        uint64_t **l_324[10][3] = {{&l_325,&l_325,&l_325},{&l_325,&l_325,&l_325},{&l_325,&l_325,&l_325},{&l_325,&l_325,&l_325},{&l_325,&l_325,&l_325},{&l_325,&l_325,&l_325},{&l_325,&l_325,&l_325},{&l_325,&l_325,&l_325},{&l_325,&l_325,&l_325},{&l_325,&l_325,&l_325}};
        VECTOR(int16_t, 4) l_344 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x5701L), 0x5701L);
        VECTOR(int8_t, 4) l_396 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x6BL), 0x6BL);
        uint32_t l_409 = 4294967291UL;
        struct S0 *l_426[9][3][3] = {{{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131}},{{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131}},{{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131}},{{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131}},{{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131}},{{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131}},{{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131}},{{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131}},{{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131},{&p_1084->g_131,(void*)0,&p_1084->g_131}}};
        int32_t l_428 = 0x6718FBC5L;
        int64_t l_447 = (-6L);
        int16_t *l_493 = (void*)0;
        VECTOR(uint32_t, 2) l_494 = (VECTOR(uint32_t, 2))(0x8610ACB0L, 4294967288UL);
        uint16_t *l_523[6] = {&p_1084->g_131.f0,&p_1084->g_39,&p_1084->g_131.f0,&p_1084->g_131.f0,&p_1084->g_39,&p_1084->g_131.f0};
        uint16_t **l_522 = &l_523[5];
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_238[i] = (-1L);
lbl_211:
        p_1084->g_175 = p_1084->g_175;
        if (l_167[0][3])
        { /* block id: 63 */
            VECTOR(uint32_t, 4) l_195 = (VECTOR(uint32_t, 4))(0x2D263616L, (VECTOR(uint32_t, 2))(0x2D263616L, 0x3BC1D7A0L), 0x3BC1D7A0L);
            int32_t *l_205[3][2][7] = {{{(void*)0,&p_1084->g_5,(void*)0,&p_1084->g_5,(void*)0,(void*)0,&p_1084->g_5},{(void*)0,&p_1084->g_5,(void*)0,&p_1084->g_5,(void*)0,(void*)0,&p_1084->g_5}},{{(void*)0,&p_1084->g_5,(void*)0,&p_1084->g_5,(void*)0,(void*)0,&p_1084->g_5},{(void*)0,&p_1084->g_5,(void*)0,&p_1084->g_5,(void*)0,(void*)0,&p_1084->g_5}},{{(void*)0,&p_1084->g_5,(void*)0,&p_1084->g_5,(void*)0,(void*)0,&p_1084->g_5},{(void*)0,&p_1084->g_5,(void*)0,&p_1084->g_5,(void*)0,(void*)0,&p_1084->g_5}}};
            int16_t *l_210 = &p_1084->g_72;
            int32_t **l_298 = &l_205[2][1][3];
            VECTOR(int8_t, 16) l_314 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x1BL), 0x1BL), 0x1BL, (-1L), 0x1BL, (VECTOR(int8_t, 2))((-1L), 0x1BL), (VECTOR(int8_t, 2))((-1L), 0x1BL), (-1L), 0x1BL, (-1L), 0x1BL);
            VECTOR(int16_t, 4) l_343 = (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), (-8L)), (-8L));
            int64_t l_369 = 0x4C3E3F015E4CC733L;
            int16_t l_418[10][2] = {{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}};
            uint32_t l_441 = 4294967295UL;
            VECTOR(int8_t, 4) l_454 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-1L)), (-1L));
            VECTOR(int8_t, 8) l_455 = (VECTOR(int8_t, 8))(0x4CL, (VECTOR(int8_t, 4))(0x4CL, (VECTOR(int8_t, 2))(0x4CL, 0x57L), 0x57L), 0x57L, 0x4CL, 0x57L);
            int64_t l_513 = 0L;
            uint16_t *l_520 = &p_1084->g_131.f0;
            uint16_t **l_519 = &l_520;
            int16_t l_554 = 1L;
            int i, j, k;
            if ((safe_mod_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(l_182, ((-1L) & p_50))), (((p_1084->g_70--) & (((p_51 < ((((0x0EL < ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(l_189.s1015a7e6397b18e9)) + ((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 16))(safe_clamp_func(VECTOR(uint8_t, 16),uint8_t,((VECTOR(uint8_t, 4))(l_190.sb0e9)).wyxxwwzwxzyyxwzw, (uint8_t)((safe_mod_func_int8_t_s_s((safe_mul_func_int16_t_s_s((l_195.w , (safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 16))(p_1084->g_198.yxzywwzxwzxzyxyw)).s773c, ((VECTOR(int8_t, 16))(p_1084->g_199.s2212424047747154)).s8250))).z, 3))), ((!((((*l_210) = (safe_rshift_func_int8_t_s_s((-1L), (safe_sub_func_int8_t_s_s((safe_unary_minus_func_int32_t_s((p_1084->g_111.s1 = l_195.y))), (safe_sub_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u(p_51, 0UL)), (-1L)))))))) != p_1084->g_43) >= 0UL)) == l_189.sc))), p_1084->g_131.f0)) & FAKE_DIVERGE(p_1084->global_2_offset, get_global_id(2), 10)), (uint8_t)GROUP_DIVERGE(0, 1)))).odd, ((VECTOR(uint8_t, 8))(0xB0L))))).s6025176167773207, ((VECTOR(uint8_t, 16))(7UL)))))))).sc626, ((VECTOR(uint8_t, 4))(0xC9L))))).xzzyyyxy >> ((VECTOR(uint8_t, 8))(8))))).s7) , 5L) >= 0x14E0829EL) | p_1084->g_83.x)) < GROUP_DIVERGE(0, 1)) >= p_50)) , p_50))))
            { /* block id: 67 */
                uint32_t l_216 = 1UL;
                int32_t l_235 = (-1L);
                int32_t l_241 = 0x2539353AL;
                int32_t l_243 = 0x5D263AD6L;
                if (p_1084->g_43)
                    goto lbl_211;
lbl_266:
                for (p_1084->g_107 = 0; (p_1084->g_107 <= (-19)); p_1084->g_107 = safe_sub_func_uint8_t_u_u(p_1084->g_107, 1))
                { /* block id: 71 */
                    uint16_t *l_225 = &p_1084->g_131.f0;
                    int64_t *l_231 = &p_1084->g_232;
                    int32_t l_233 = 5L;
                    int32_t l_239 = 4L;
                    int32_t l_240 = 0x694800F8L;
                    int32_t l_244 = 0x5974BC64L;
                    int32_t l_247 = 0L;
                    struct S0 l_254 = {0xF19AL};
                    if (((safe_div_func_int16_t_s_s(l_216, ((((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 16))(0x6434A542L, ((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(0x338789EFL, 0x3DAD2427L)) <= ((VECTOR(int32_t, 2))(1L, 3L))))).xxxxxyxy, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_1084->g_217.wyyw)), (~((l_218 , (1UL != (((*l_231) = (safe_mul_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s(((*l_225) |= (p_50 , (safe_mul_func_uint8_t_u_u(l_190.sd, p_50)))), p_1084->g_166)) & (safe_lshift_func_int8_t_s_u(p_1084->g_111.s6, 1))), (((((safe_lshift_func_int16_t_s_u(((l_230 || p_1084->g_5) , 0x3D17L), l_216)) == p_51) & p_52) && (-1L)) && 0x268215B2L)))) , l_216))) , l_233)), 0x064F3567L, p_52, ((VECTOR(int32_t, 8))(0x6C95E625L)), 0x20DA13A7L)).sc95b, ((VECTOR(int32_t, 4))((-5L)))))) < ((VECTOR(int32_t, 4))(0x29A48CD2L))))), ((VECTOR(int32_t, 4))(0x62A7034FL))))).ywwzxwzwwxyyxxxy > ((VECTOR(int32_t, 16))(0x3E708EF6L))))).s6f19, ((VECTOR(int32_t, 4))(1L))))), ((VECTOR(int32_t, 4))(1L)), ((VECTOR(int32_t, 4))(0x70D8ED36L))))), ((VECTOR(int32_t, 4))(0x1061F160L))))).odd, ((VECTOR(int32_t, 2))(0x1ADA33E1L))))).yxyxxyxx))), 0x7432023EL, 7L, 0x65BF24F8L, (-3L), 0L, 0x2ADCDAF2L, 1L)).sf73b, ((VECTOR(int32_t, 4))((-1L))), ((VECTOR(int32_t, 4))(0x0FC48C96L))))).y != p_1084->g_234) ^ l_235))) < p_52))
                    { /* block id: 74 */
                        int16_t l_242 = 0x4757L;
                        int32_t l_245 = 0x48DD4A24L;
                        int32_t l_246 = (-10L);
                        struct S0 l_252[8] = {{0xD6EAL},{0xD147L},{0xD6EAL},{0xD6EAL},{0xD147L},{0xD6EAL},{0xD6EAL},{0xD147L}};
                        struct S0 *l_253[10][8][3] = {{{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131}},{{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131}},{{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131}},{{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131}},{{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131}},{{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131}},{{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131}},{{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131}},{{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131}},{{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131},{&l_252[7],&l_252[7],&p_1084->g_131}}};
                        int i, j, k;
                        l_248++;
                        l_254 = (((VECTOR(int64_t, 8))(l_251.s46313366)).s7 , l_252[7]);
                    }
                    else
                    { /* block id: 77 */
                        int32_t **l_256[1][5];
                        struct S0 l_258[7][10][2] = {{{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}}},{{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}}},{{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}}},{{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}}},{{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}}},{{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}}},{{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}},{{0xAE82L},{0xAE82L}}}};
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 5; j++)
                                l_256[i][j] = &l_205[0][1][4];
                        }
                        (*p_1084->g_144) = (*p_1084->g_144);
                        if (p_51)
                            break;
                        if (l_257)
                            break;
                        (*p_1084->g_259) = l_258[3][7][0];
                    }
                }
                l_236 = (safe_lshift_func_uint16_t_u_s((safe_add_func_int16_t_s_s((p_50 != 4294967295UL), p_52)), 1));
                for (p_51 = 27; (p_51 > 53); p_51 = safe_add_func_int32_t_s_s(p_51, 6))
                { /* block id: 87 */
                    if (p_51)
                        break;
                    if (p_52)
                        goto lbl_266;
                }
            }
            else
            { /* block id: 91 */
                struct S0 l_267 = {0x3C78L};
                struct S0 *l_269 = (void*)0;
                struct S0 *l_270 = &p_1084->g_131;
                int32_t l_281 = 1L;
                int64_t *l_291 = (void*)0;
                int32_t **l_297[7];
                int32_t ***l_296 = &l_297[6];
                int64_t *l_301[8] = {&p_1084->g_232,&p_1084->g_232,&p_1084->g_232,&p_1084->g_232,&p_1084->g_232,&p_1084->g_232,&p_1084->g_232,&p_1084->g_232};
                int8_t *l_302 = (void*)0;
                int8_t *l_303[2];
                uint64_t *l_323[4][6][6] = {{{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0}},{{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0}},{{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0}},{{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0},{&p_1084->g_91,&p_1084->g_91,&p_1084->g_91,(void*)0,&p_1084->g_91,(void*)0}}};
                uint64_t **l_322 = &l_323[1][5][0];
                uint16_t *l_337 = &p_1084->g_39;
                VECTOR(uint64_t, 16) l_347 = (VECTOR(uint64_t, 16))(0x5624AA6655DB0BA4L, (VECTOR(uint64_t, 4))(0x5624AA6655DB0BA4L, (VECTOR(uint64_t, 2))(0x5624AA6655DB0BA4L, 0xA037DA4EEEC51C66L), 0xA037DA4EEEC51C66L), 0xA037DA4EEEC51C66L, 0x5624AA6655DB0BA4L, 0xA037DA4EEEC51C66L, (VECTOR(uint64_t, 2))(0x5624AA6655DB0BA4L, 0xA037DA4EEEC51C66L), (VECTOR(uint64_t, 2))(0x5624AA6655DB0BA4L, 0xA037DA4EEEC51C66L), 0x5624AA6655DB0BA4L, 0xA037DA4EEEC51C66L, 0x5624AA6655DB0BA4L, 0xA037DA4EEEC51C66L);
                uint64_t l_350[5][10] = {{0xE8465106F4654C78L,0xDD45EE45CEBF87E6L,0x9E07232B5D3AB3F1L,1UL,18446744073709551615UL,1UL,0x9E07232B5D3AB3F1L,0xDD45EE45CEBF87E6L,0xE8465106F4654C78L,0x9E07232B5D3AB3F1L},{0xE8465106F4654C78L,0xDD45EE45CEBF87E6L,0x9E07232B5D3AB3F1L,1UL,18446744073709551615UL,1UL,0x9E07232B5D3AB3F1L,0xDD45EE45CEBF87E6L,0xE8465106F4654C78L,0x9E07232B5D3AB3F1L},{0xE8465106F4654C78L,0xDD45EE45CEBF87E6L,0x9E07232B5D3AB3F1L,1UL,18446744073709551615UL,1UL,0x9E07232B5D3AB3F1L,0xDD45EE45CEBF87E6L,0xE8465106F4654C78L,0x9E07232B5D3AB3F1L},{0xE8465106F4654C78L,0xDD45EE45CEBF87E6L,0x9E07232B5D3AB3F1L,1UL,18446744073709551615UL,1UL,0x9E07232B5D3AB3F1L,0xDD45EE45CEBF87E6L,0xE8465106F4654C78L,0x9E07232B5D3AB3F1L},{0xE8465106F4654C78L,0xDD45EE45CEBF87E6L,0x9E07232B5D3AB3F1L,1UL,18446744073709551615UL,1UL,0x9E07232B5D3AB3F1L,0xDD45EE45CEBF87E6L,0xE8465106F4654C78L,0x9E07232B5D3AB3F1L}};
                uint8_t l_374 = 9UL;
                uint32_t l_419 = 0xCFB5A11DL;
                VECTOR(uint32_t, 2) l_497 = (VECTOR(uint32_t, 2))(4294967294UL, 0xEFE96A45L);
                uint32_t l_556 = 9UL;
                int i, j, k;
                for (i = 0; i < 7; i++)
                    l_297[i] = &p_1084->g_145;
                for (i = 0; i < 2; i++)
                    l_303[i] = &p_1084->g_138;
                (*l_270) = l_267;
                l_281 ^= (~(((((+(l_167[0][3] >= ((safe_sub_func_int64_t_s_s((((safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((0xD41AL == p_1084->g_138), 6)), 11)) != 0x43CAL) >= ((VECTOR(int32_t, 8))(p_1084->g_277.yxyxyxxy)).s3), p_1084->g_138)) > 0x7B642941L))) < ((safe_mod_func_int32_t_s_s((+(safe_unary_minus_func_int16_t_s(p_1084->g_5))), l_267.f0)) || p_50)) == 0x30L) & p_1084->g_111.s5) == l_267.f0));
                l_282--;
                if ((GROUP_DIVERGE(0, 1) ^ ((safe_sub_func_uint8_t_u_u(((p_52 & (((l_237 ^= (((safe_rshift_func_uint16_t_u_u((safe_div_func_uint8_t_u_u(p_50, ((p_1084->g_166 = 2L) & (((p_1084->g_107 == ((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(0x143DL, 0x5C59L)).xxyxxyxyyxxxxyxy * ((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 2))(0x0570L, 65535UL)), ((VECTOR(uint16_t, 8))(p_1084->g_177, 2UL, 0x509AL, ((l_238[0] = (safe_mul_func_int16_t_s_s((((*l_296) = &p_1084->g_145) != ((((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))((&p_1084->g_3 != l_298), (((~(safe_sub_func_uint64_t_u_u((p_52 | 0UL), p_1084->g_5))) && FAKE_DIVERGE(p_1084->local_1_offset, get_local_id(1), 10)) == p_50), 3L, 0x0C7A3BD8L)), ((VECTOR(int32_t, 4))(0x618F9549L)), l_236, ((VECTOR(int32_t, 4))(4L)), l_218, 0x6BE9E742L, 8L)).s26, (int32_t)p_51))).yxxy, ((VECTOR(int32_t, 4))(0x58D4C2E3L))))).yxywyzwxzyxyyxzw <= ((VECTOR(int32_t, 16))(0x728D3CC1L))))).saa, ((VECTOR(int32_t, 2))(0x0B857579L))))), (-1L), 0x6C910B19L)).zzwzxxxywzyywxyx, (int32_t)l_230))).hi && ((VECTOR(int32_t, 8))(0x0AEF2F99L))))).lo, ((VECTOR(int32_t, 4))(0L)), ((VECTOR(int32_t, 4))(0x6EAB57C6L))))).z == p_52) , (void*)0)), 0UL))) , 0x0ED7L), ((VECTOR(uint16_t, 4))(0x983AL)))).s47))).yyyxyxxyxyyyyxyy))), ((VECTOR(uint16_t, 16))(0x4B4AL))))).s6) ^ p_51) , 0xEDF18A018B13D0D6L)))), 2)) | 2L) && p_52)) != p_50) >= p_52)) , p_1084->g_199.s2), p_1084->g_198.x)) > l_182)))
                { /* block id: 99 */
                    uint64_t l_317 = 0x3DCB07F7AD1E2821L;
                    int64_t l_318 = (-4L);
                    int32_t l_328 = 0x5A911D0BL;
                    int32_t l_329 = 6L;
                    uint8_t *l_330 = (void*)0;
                    VECTOR(int64_t, 2) l_342 = (VECTOR(int64_t, 2))(0x591AED0314FF98FFL, 0x70631EA9536EFDA3L);
                    int64_t *l_348 = &p_1084->g_232;
                    int32_t l_371 = 0x2662857AL;
                    int32_t l_372 = 0x7CCF454EL;
                    int32_t l_373 = 0x5859497FL;
                    int i;
                    p_1084->g_107 ^= (safe_sub_func_int64_t_s_s(l_190.s2, (p_51 && (p_1084->g_199.s0 == ((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(l_308.yx)).yyyxyyyx + ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(p_1084->g_313.s7456604260675227)).s4334 + ((VECTOR(uint8_t, 2))(abs(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(0x4FL, ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(l_314.s6947c06b)).s63 & ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 4))(l_315.sc231)).zxxyyzwz, ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 16))(p_1084->g_316.yxxxxxxxyxxxxxyx)).hi, ((VECTOR(int8_t, 2))((-8L), 0x06L)).xxyxxyyx))).odd, (int8_t)(l_317 | (l_318 > (safe_sub_func_int16_t_s_s(p_51, ((p_1084->g_111.s0 == l_317) <= 0x67712A5DED12DA6BL)))))))) == ((VECTOR(int8_t, 4))(0x65L))))), ((VECTOR(int8_t, 4))(0x3AL))))).zxyxxzzz && ((VECTOR(int8_t, 8))(0x7CL)))))))).hi != ((VECTOR(int8_t, 4))((-2L)))))).hi))) && ((VECTOR(int8_t, 2))(0x3FL)))))))) && ((VECTOR(int8_t, 2))(1L))))), ((VECTOR(int8_t, 2))(0x02L)), ((VECTOR(int8_t, 2))(0x54L))))), ((VECTOR(int8_t, 4))((-1L))), 1L)), ((VECTOR(int8_t, 4))(2L)), ((VECTOR(int8_t, 2))(0x67L)), 0x0BL, 8L)).se1))).yyyx))).hi, (uint8_t)l_318))), 8UL, 0x61L)) + ((VECTOR(uint8_t, 4))(0x7FL))))).yyxzwzzx))).s6563030360325047, ((VECTOR(uint8_t, 16))(1UL))))).s4))));
                    if (l_321)
                    { /* block id: 101 */
                        l_236 = (-4L);
                    }
                    else
                    { /* block id: 103 */
                        return &p_1084->g_43;
                    }
                    if ((((l_322 != l_324[8][2]) != (((safe_add_func_uint32_t_u_u(0xF908808EL, ((*p_1084->g_144) == (*l_298)))) > GROUP_DIVERGE(2, 1)) ^ (((p_1084->g_83.x = (l_248 < ((l_329 = (l_328 = ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 2))(1L, 1L)).yxxyyxyy))).s0)) | p_1084->g_72))) , ((safe_mul_func_int8_t_s_s((safe_sub_func_int8_t_s_s((safe_add_func_int32_t_s_s(((((p_1084->g_70 &= 4294967289UL) | ((p_1084->g_198.y && GROUP_DIVERGE(2, 1)) & p_1084->g_111.s7)) || GROUP_DIVERGE(1, 1)) >= l_248), 0x1D6F7E63L)), p_50)), p_51)) & 0xE2D47731L)) || (-7L)))) ^ p_1084->g_232))
                    { /* block id: 110 */
                        return l_337;
                    }
                    else
                    { /* block id: 112 */
                        (**l_296) = (*l_298);
                    }
                    if ((((((*l_337) |= (((l_248 & ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(p_1084->g_338.s33)), ((VECTOR(int16_t, 4))(2L, ((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 4))(p_1084->g_339.s939f)).lo, ((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(0x2D91L, 0x3893L)) & ((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 16))(1L, (safe_div_func_uint64_t_u_u(p_1084->g_111.s6, ((p_1084->g_277.y , p_52) | ((((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),int64_t,((VECTOR(int64_t, 8))((&p_52 != &p_1084->g_70), (-8L), 0x6B0524EC3B35B350L, ((VECTOR(int64_t, 2))(0x637ED429DF1C3F2AL, 0x4F89BD38C1FD13DDL)), ((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 4))(1L, 6L, 1L, 0x6AF324222B34C746L)).wyyxzyzx))).s1247330335037230 || ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))(l_342.yxyy)).zyxxxzxxzzwyxxwx >= ((VECTOR(int64_t, 16))(5L, 0L, p_1084->g_70, (-9L), 0x74A6846648F4F1D2L, 0x35B268ED9DB83B3FL, 0x1D95F65124DAFD87L, ((l_349 = (p_1084->g_91 = (p_1084->g_217.y != (+(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(l_343.xx)).yxxyxxyyyyyxxxyx > ((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 2))(l_344.yx)), (int16_t)((safe_lshift_func_uint8_t_u_u(((((VECTOR(uint64_t, 16))(l_347.s950d331825ab7781)).sd && ((void*)0 == l_348)) > p_1084->g_313.s7), l_230)) <= 0x9AL)))).yxyx))).zzxyzxxw, (int16_t)p_50))).s6472711750512526))).s95 && ((VECTOR(int16_t, 2))(0x0237L))))).hi && p_1084->g_91))))) > (-10L)), 0L, p_50, p_1084->g_131.f0, 6L, p_1084->g_217.x, 0x74CF104DE0521181L, 0x001585EEB956FE72L, 5L))))) | ((VECTOR(int64_t, 16))(1L))))), ((VECTOR(int64_t, 16))(0x6E8C3C60510EBAF8L)), ((VECTOR(int64_t, 16))(0x4D4D109494381467L))))).odd && ((VECTOR(int64_t, 8))(0x72F05929FF10FA94L))))).s4157520217654403))).sc8, ((VECTOR(int64_t, 2))(1L))))), 0x0B7D6654D06873BDL)), (int64_t)p_50, (int64_t)p_50))).s30 | ((VECTOR(int64_t, 2))(2L))))).hi < p_1084->g_66) & 0x64819F47L) >= (-1L)) && p_51)))), (-6L), l_350[0][7], ((VECTOR(int16_t, 8))(8L)), ((VECTOR(int16_t, 4))(0x5663L)))), (int16_t)p_1084->g_83.x))).sef))), 0x3D19L, 0x1E70L, ((VECTOR(int16_t, 4))(1L)), ((VECTOR(int16_t, 2))((-2L))), 0x0CABL, 0x46FDL, 0x1B3BL, (-1L), 0x2B7FL, 5L)).s12b2, ((VECTOR(int16_t, 4))(7L)), ((VECTOR(int16_t, 4))((-1L)))))).even))), 1L)), 8L, (-1L))).s7) && p_1084->g_61.sc) <= 9L)) >= p_52) < l_342.y) != p_50))
                    { /* block id: 118 */
                        uint16_t l_364[1];
                        int32_t l_370[9][6] = {{0x4C573E84L,1L,1L,0x4C573E84L,5L,0x4DC82D79L},{0x4C573E84L,1L,1L,0x4C573E84L,5L,0x4DC82D79L},{0x4C573E84L,1L,1L,0x4C573E84L,5L,0x4DC82D79L},{0x4C573E84L,1L,1L,0x4C573E84L,5L,0x4DC82D79L},{0x4C573E84L,1L,1L,0x4C573E84L,5L,0x4DC82D79L},{0x4C573E84L,1L,1L,0x4C573E84L,5L,0x4DC82D79L},{0x4C573E84L,1L,1L,0x4C573E84L,5L,0x4DC82D79L},{0x4C573E84L,1L,1L,0x4C573E84L,5L,0x4DC82D79L},{0x4C573E84L,1L,1L,0x4C573E84L,5L,0x4DC82D79L}};
                        int64_t *l_383 = &l_318;
                        int i, j;
                        for (i = 0; i < 1; i++)
                            l_364[i] = 6UL;
                        p_1084->g_111.s5 |= (safe_div_func_uint16_t_u_u((safe_unary_minus_func_uint8_t_u(((((p_1084->g_91 , ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(clz(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))(p_1084->g_356.yy)).yxyx ^ ((VECTOR(uint64_t, 4))(p_1084->g_357.xzyz)))))))) + ((VECTOR(uint64_t, 2))(max(((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 8))(((0xC17AL == 6L) , ((safe_rshift_func_int16_t_s_u((safe_div_func_int64_t_s_s(p_1084->g_338.s1, (safe_mod_func_uint8_t_u_u(l_364[0], p_1084->g_83.x)))), (safe_mul_func_int16_t_s_s((p_1084->g_198.z | (((*l_337) ^= ((p_1084->g_138 |= ((((l_364[0] , (((l_169 = (safe_mul_func_int16_t_s_s((p_1084->g_316.x <= p_52), p_52))) >= 8UL) | p_52)) || 65532UL) & p_52) & 9UL)) ^ p_1084->g_5)) | p_52)), l_230)))) == p_52)), 0xF3DB75509BC937CFL, p_1084->g_66, p_1084->g_357.y, 0x48E31009AE36D952L, 3UL, 18446744073709551610UL, 0UL)).s1434441775624236, ((VECTOR(uint64_t, 16))(18446744073709551610UL))))).sde, (uint64_t)0x329C23E226CC590DL))).xxyy))).x) >= 0x56C58548DE643FE7L) ^ p_1084->g_91) >= (-1L)))), 1UL));
                        l_374--;
                        l_373 &= (safe_mul_func_uint8_t_u_u(p_1084->g_357.x, 0x53L));
                        l_237 &= (safe_sub_func_int8_t_s_s((((l_373 = (((VECTOR(uint16_t, 4))((safe_div_func_int64_t_s_s((l_328 = ((*l_383) ^= p_1084->g_83.z)), (safe_div_func_uint64_t_u_u((((l_373 , GROUP_DIVERGE(0, 1)) && (p_1084->g_388[2] < 0x5A4F7A90L)) , ((*l_325) = p_51)), (((void*)0 == &p_50) | ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))((p_1084->g_277.x , ((!(2UL < 0x8DB4CEBCL)) , p_52)), ((VECTOR(int16_t, 2))(0x3550L)), 0x2644L, p_52, 0x46D3L, ((VECTOR(int16_t, 2))(0x38AFL)), (-2L), ((VECTOR(int16_t, 4))(8L)), (-1L), 0x2A12L, (-3L))).s90db && ((VECTOR(int16_t, 4))(0x3CA8L))))).x))))), p_50, 65526UL, 0x5D4EL)).x > p_1084->g_43)) & 1UL) == (-2L)), p_51));
                    }
                    else
                    { /* block id: 130 */
                        int16_t l_389 = 0L;
                        l_169 = l_389;
                        (**l_296) = &l_169;
                        return l_337;
                    }
                }
                else
                { /* block id: 135 */
                    VECTOR(int32_t, 8) l_407 = (VECTOR(int32_t, 8))(0x1DC20D17L, (VECTOR(int32_t, 4))(0x1DC20D17L, (VECTOR(int32_t, 2))(0x1DC20D17L, 0L), 0L), 0L, 0x1DC20D17L, 0L);
                    VECTOR(int32_t, 8) l_429 = (VECTOR(int32_t, 8))(0x6655BAEDL, (VECTOR(int32_t, 4))(0x6655BAEDL, (VECTOR(int32_t, 2))(0x6655BAEDL, 0x1F6C5386L), 0x1F6C5386L), 0x1F6C5386L, 0x6655BAEDL, 0x1F6C5386L);
                    VECTOR(int32_t, 2) l_430 = (VECTOR(int32_t, 2))(0x1B0D1D50L, 5L);
                    uint8_t *l_446[9] = {(void*)0,&l_248,(void*)0,(void*)0,&l_248,(void*)0,(void*)0,&l_248,(void*)0};
                    VECTOR(int8_t, 4) l_457 = (VECTOR(int8_t, 4))(0x40L, (VECTOR(int8_t, 2))(0x40L, 1L), 1L);
                    uint8_t l_508[8] = {0x6DL,0xB7L,0x6DL,0x6DL,0xB7L,0x6DL,0x6DL,0xB7L};
                    uint8_t l_518 = 0UL;
                    int16_t l_555 = 8L;
                    int i;
                    if (l_344.x)
                    { /* block id: 136 */
                        VECTOR(int8_t, 4) l_395 = (VECTOR(int8_t, 4))(0x06L, (VECTOR(int8_t, 2))(0x06L, 0x15L), 0x15L);
                        VECTOR(int32_t, 4) l_397 = (VECTOR(int32_t, 4))(0x2B512822L, (VECTOR(int32_t, 2))(0x2B512822L, 0x52C5FB5CL), 0x52C5FB5CL);
                        uint8_t *l_398 = &l_230;
                        int32_t *l_408 = (void*)0;
                        int32_t *l_410 = &p_1084->g_411;
                        int16_t *l_412 = (void*)0;
                        int16_t *l_413[9];
                        int8_t l_414 = 0x1CL;
                        int32_t l_415 = 0x3DC10927L;
                        struct S0 l_422 = {0x8E53L};
                        int i;
                        for (i = 0; i < 9; i++)
                            l_413[i] = (void*)0;
                        if (l_182)
                            goto lbl_211;
                        if (p_52)
                            goto lbl_416;
lbl_416:
                        l_415 = (l_407.s3 = ((((safe_rshift_func_uint16_t_u_s((((VECTOR(int32_t, 8))(p_1084->g_392.s04ddf6d4)).s1 & (**p_1084->g_175)), (l_238[0] = (+((p_52 = (+GROUP_DIVERGE(2, 1))) || (((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 16))(l_395.yywzwwwzzxxzzxzw)), ((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 4))(l_396.zxwz)).zzyxxzww, ((VECTOR(int8_t, 4))((l_397.x = ((p_1084->g_131.f0 | (~p_50)) , 0x58L)), (((*l_410) = (((*l_398) = 255UL) > (((*l_210) &= ((VECTOR(int16_t, 16))((((safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1084->group_0_offset, get_group_id(0), 10), 6)) && 0x4C763C09L) && (((((safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(p_1084->g_403.yxzx)).z, ((l_404[0][1] == (void*)0) , ((VECTOR(int32_t, 8))(l_407.s07255466)).s7))) , ((FAKE_DIVERGE(p_1084->local_1_offset, get_local_id(1), 10) | l_397.w) == GROUP_DIVERGE(1, 1))) , &l_169) != l_408) , l_409)), p_50, p_1084->g_39, ((VECTOR(int16_t, 2))((-1L))), ((VECTOR(int16_t, 2))(0x0622L)), ((VECTOR(int16_t, 8))(0x40ACL)), 0x29D1L)).s8) || p_51))) , p_1084->g_198.y), 1L, 2L)).yzzwzyyw))).s7477006402310525))).s12, ((VECTOR(int8_t, 2))((-8L)))))).hi < p_50)))))) & 251UL) & l_414) , p_51));
                        l_419++;
                        (*l_270) = l_422;
                    }
                    else
                    { /* block id: 149 */
                        uint16_t l_423[4][6][8] = {{{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L}},{{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L}},{{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L}},{{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L},{65535UL,1UL,8UL,0UL,1UL,0UL,1UL,0xDC71L}}};
                        struct S0 **l_424 = &l_269;
                        struct S0 **l_427 = &l_270;
                        VECTOR(int32_t, 16) l_431 = (VECTOR(int32_t, 16))(0x226F2EBBL, (VECTOR(int32_t, 4))(0x226F2EBBL, (VECTOR(int32_t, 2))(0x226F2EBBL, 0x563B70C2L), 0x563B70C2L), 0x563B70C2L, 0x226F2EBBL, 0x563B70C2L, (VECTOR(int32_t, 2))(0x226F2EBBL, 0x563B70C2L), (VECTOR(int32_t, 2))(0x226F2EBBL, 0x563B70C2L), 0x226F2EBBL, 0x563B70C2L, 0x226F2EBBL, 0x563B70C2L);
                        int i, j, k;
                        l_407.s2 ^= p_50;
                        l_431.s1 = ((VECTOR(int32_t, 16))(l_423[3][5][6], 0x7B303A41L, (((((*l_424) = (void*)0) == ((*l_427) = (l_426[1][0][1] = (p_51 , l_425)))) ^ (FAKE_DIVERGE(p_1084->local_2_offset, get_local_id(2), 10) != 0L)) , 0x34A4540CL), 0x254AF4E5L, (FAKE_DIVERGE(p_1084->local_2_offset, get_local_id(2), 10) && (+l_428)), ((VECTOR(int32_t, 8))(l_429.s11425222)).s3, 0x1FC5461BL, 7L, ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 2))(l_430.yx)), ((VECTOR(int32_t, 2))((!((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 8))(l_431.s554d0e48)).s2353063572754374, ((VECTOR(int32_t, 4))(p_1084->g_432.xzzw)).ywyxwwzxywzxyzxx))).sde, ((VECTOR(int32_t, 8))(0x0AEEAC53L, 0x5A8AF4C8L, (-7L), ((safe_lshift_func_uint16_t_u_u(p_1084->g_277.y, 1)) > 0x48798598C6088937L), ((VECTOR(int32_t, 4))(0x5ACE01E5L)))).s15))))))))).xyyyyyxy && ((VECTOR(int32_t, 8))(0x329A9E56L))))).s2071653152031347, ((VECTOR(int32_t, 16))(3L))))).se2, ((VECTOR(int32_t, 2))((-3L)))))), (-8L), ((VECTOR(int32_t, 2))((-5L))), ((VECTOR(int32_t, 2))(0x4087F01EL)), 0x360FC2C0L)).sa;
                    }
                    if ((l_238[0] ^= (l_428 = (((safe_add_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u(p_50, 15)), (l_441 & (((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(l_442.yxxyyxxyxxyyyyyx)).s3a && ((VECTOR(int32_t, 8))(p_1084->g_443.ywxwyzzw)).s31))).lo < (&p_1084->g_66 == &p_51))))) , l_189.sf) != ((safe_div_func_int8_t_s_s(p_51, (--p_1084->g_313.s5))) | (((safe_add_func_uint32_t_u_u(((((*l_210) = (safe_add_func_int8_t_s_s(((p_51 >= ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 2))((-1L), 0x3AL)).xxyxyxyxyxxyyxxy, ((VECTOR(int8_t, 2))(l_454.wy)).xyyyxxxxxyyyyyxx))).sc6 && ((VECTOR(int8_t, 2))(0x1AL, (-3L)))))), 0x50L, (-8L))).xxywyzyyyywwyzyz > ((VECTOR(int8_t, 16))(l_455.s0101565123277344))))) && ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(p_1084->g_456.s8d72)).lo ^ ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 2))(l_457.wy)).yxyy, ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))((l_237 = p_1084->g_388[2]), 0x5CL, (((safe_lshift_func_int16_t_s_s((safe_unary_minus_func_int32_t_s((safe_mul_func_int16_t_s_s(p_1084->g_339.s1, l_189.s5)))), 4)) == l_457.z) == l_430.x), ((VECTOR(int8_t, 4))(0x34L)), 1L, 0L, ((VECTOR(int8_t, 2))((-1L))), ((VECTOR(int8_t, 2))(0x6FL)), ((VECTOR(int8_t, 2))(1L)), 0x37L)).sf120 || ((VECTOR(int8_t, 4))(0x27L))))).wwzwwxwy >= ((VECTOR(int8_t, 8))(0x22L))))).lo))).yxwywzxz))).s2110142310320156 != ((VECTOR(int8_t, 16))((-1L)))))).s4c, ((VECTOR(int8_t, 2))((-2L))))))))), 1L, 0x27L)).xzzyyzxxxwwywzzy))).s5) < l_282), 0x47L))) , l_457.x) < p_52), p_50)) >= p_1084->g_357.y) , 6L))))))
                    { /* block id: 161 */
                        uint16_t l_463 = 0x4ABAL;
                        struct S0 *l_471 = &p_1084->g_131;
                        int64_t *l_472 = (void*)0;
                        int64_t *l_473[1][6] = {{&p_1084->g_166,(void*)0,&p_1084->g_166,&p_1084->g_166,(void*)0,&p_1084->g_166}};
                        int32_t l_474[7][3] = {{1L,0x67AD9292L,1L},{1L,0x67AD9292L,1L},{1L,0x67AD9292L,1L},{1L,0x67AD9292L,1L},{1L,0x67AD9292L,1L},{1L,0x67AD9292L,1L},{1L,0x67AD9292L,1L}};
                        uint32_t *l_509 = (void*)0;
                        uint32_t *l_510[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int i, j;
                        ++l_463;
                        l_407.s7 = (l_429.s6 &= 0x736DAF3AL);
                        l_150 = &l_236;
                        l_428 ^= ((safe_add_func_uint64_t_u_u((p_50 >= (l_430.y = (((safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 8))(p_1084->g_470.yywxyzwx)).s3, p_51)) | ((l_474[2][0] = (l_471 != (void*)0)) > (++(**l_405)))) >= (safe_rshift_func_uint8_t_u_s((((VECTOR(int32_t, 8))(p_1084->g_479.xwyzwzxy)).s5 , (safe_sub_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(((((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0xBE9D5FDAL, 3UL)), 0x5D804C7BL, 4294967289UL)).lo + ((VECTOR(uint32_t, 2))(4294967294UL, 0x0F2342CAL))))), ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))(0x38A99E40L, ((VECTOR(uint32_t, 2))(abs(((VECTOR(int32_t, 8))(p_1084->g_492.xxxxxyxx)).s16))), (l_493 == (void*)0), ((VECTOR(uint32_t, 4))(l_494.yxyx)), ((VECTOR(uint32_t, 2))(4294967286UL, 4294967295UL)), ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(l_497.yx)) + ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((((safe_rshift_func_int8_t_s_u((safe_sub_func_uint64_t_u_u((safe_sub_func_int64_t_s_s((p_1084->g_338.s4 , ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(5L, 1L)), 0x37989F800EEF5FCDL, ((VECTOR(int64_t, 2))(0x5D79D8FA2D0C7093L, 1L)), ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),int64_t,((VECTOR(int64_t, 2))(0x1F2C46A50D53B58CL, (-8L))).xyxx, (int64_t)p_52, (int64_t)(safe_div_func_int64_t_s_s(0x4085F8F7D44D7830L, 18446744073709551609UL))))).wzxxxwywxwxxyyxy, ((VECTOR(int64_t, 16))(0x1083988A0919F7E7L))))) && ((VECTOR(int64_t, 16))(7L))))).s6b && ((VECTOR(int64_t, 2))(0x20908984545892FEL))))).yxxxxxyx, ((VECTOR(int64_t, 8))(1L))))).odd | ((VECTOR(int64_t, 4))((-6L)))))) && ((VECTOR(int64_t, 4))(7L))))), ((VECTOR(int64_t, 4))(0x4124AAA25755F02DL)), ((VECTOR(int64_t, 2))((-6L))), 0x5D96B6C5674B84A9L)).s8), p_50)), l_508[0])), p_52)) & p_1084->g_43) != 0UL) < FAKE_DIVERGE(p_1084->group_0_offset, get_group_id(0), 10)), 1UL, 0x8F251F16L, 0x756DCBFFL)), 8UL, p_1084->g_111.s2, p_1084->g_198.z, 0xB6107E31L, GROUP_DIVERGE(1, 1), 0x693FBDE2L, 0xFCD0D301L, 0x4122DB01L, 4294967295UL, 1UL, 4294967295UL, 0xCC7B2D2EL)).s75 + ((VECTOR(uint32_t, 2))(0xDC219C44L)))))))), p_52, 4294967295UL, 0xB1833E6DL, 4294967290UL)).s7bf7 - ((VECTOR(uint32_t, 4))(0xBA731439L))))) + ((VECTOR(uint32_t, 4))(0xC6BFEFD4L))))).hi))) + ((VECTOR(uint32_t, 2))(0x9D652239L))))).yxyyyyxyyxxxxyxx, ((VECTOR(uint32_t, 16))(4294967295UL))))).sd == l_463) != p_1084->g_313.s7), p_1084->g_83.z)), l_463))), 6))))), 7UL)) >= (-4L));
                    }
                    else
                    { /* block id: 170 */
                        uint16_t ***l_521[9] = {&l_519,&l_519,&l_519,&l_519,&l_519,&l_519,&l_519,&l_519,&l_519};
                        VECTOR(uint16_t, 4) l_534 = (VECTOR(uint16_t, 4))(0xF149L, (VECTOR(uint16_t, 2))(0xF149L, 2UL), 2UL);
                        uint64_t ***l_541[1][7][1];
                        int8_t **l_551 = &l_303[0];
                        int8_t **l_552[8];
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 7; j++)
                            {
                                for (k = 0; k < 1; k++)
                                    l_541[i][j][k] = &l_324[9][0];
                            }
                        }
                        for (i = 0; i < 8; i++)
                            l_552[i] = (void*)0;
                        (*l_298) = (void*)0;
                        (**l_296) = (((5UL > (safe_add_func_uint32_t_u_u((p_1084->g_66 != l_513), (safe_lshift_func_int8_t_s_u(((safe_lshift_func_uint8_t_u_s(0x54L, 7)) & (&l_426[0][0][0] == &p_1084->g_268[0][6])), 1))))) <= (l_429.s7 = l_518)) , &l_237);
                        p_1084->g_524 = (l_522 = l_519);
                        l_169 &= (!(safe_lshift_func_uint16_t_u_s((safe_rshift_func_uint16_t_u_s((safe_rshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 2))(l_534.zz)).lo, 12)), 4)), 2)), ((l_189.sa , (safe_sub_func_int16_t_s_s(((((safe_mul_func_int16_t_s_s((((p_50 || (safe_add_func_int8_t_s_s(p_1084->g_492.x, ((void*)0 == l_541[0][3][0])))) & 0x74ABD1C52B8A8ADAL) && (safe_mod_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_s((((safe_mod_func_uint32_t_u_u(((((FAKE_DIVERGE(p_1084->local_1_offset, get_local_id(1), 10) || (p_1084->g_548 , (safe_rshift_func_int8_t_s_s(0x57L, ((((l_553 = ((*l_551) = l_303[0])) != &p_1084->g_138) & p_51) && (**p_1084->g_144)))))) ^ p_1084->g_316.x) <= p_51) , 5UL), p_51)) , (-3L)) && p_50), 1)) != p_51), 0x5D00L))), 1L)) , &p_1084->g_411) != (void*)0) ^ p_50), l_430.y))) && l_237))));
                    }
                    l_150 = (*l_298);
                    --l_556;
                }
            }
        }
        else
        { /* block id: 184 */
            uint16_t *l_559 = &p_1084->g_131.f0;
            (*p_1084->g_144) = &l_237;
            return l_559;
        }
        (*l_425) = (*l_425);
        l_238[0] = p_50;
    }
    for (l_321 = 0; (l_321 < 45); l_321 = safe_add_func_int16_t_s_s(l_321, 3))
    { /* block id: 193 */
        uint8_t l_562[7] = {249UL,251UL,249UL,249UL,251UL,249UL,249UL};
        int32_t *l_563[2];
        int i;
        for (i = 0; i < 2; i++)
            l_563[i] = (void*)0;
        if (l_562[0])
            break;
        --p_1084->g_564;
        for (p_1084->g_131.f0 = 0; (p_1084->g_131.f0 <= 8); p_1084->g_131.f0 = safe_add_func_uint64_t_u_u(p_1084->g_131.f0, 7))
        { /* block id: 198 */
            uint8_t l_572 = 0x9DL;
            for (p_1084->g_138 = (-10); (p_1084->g_138 >= 3); p_1084->g_138 = safe_add_func_int16_t_s_s(p_1084->g_138, 8))
            { /* block id: 201 */
                int32_t *l_571 = (void*)0;
                l_150 = l_571;
            }
            --l_572;
        }
    }
    l_593 &= (safe_add_func_int32_t_s_s((((safe_lshift_func_int8_t_s_u(((*l_590) ^= ((safe_sub_func_int64_t_s_s(p_1084->g_470.w, (safe_mod_func_uint16_t_u_u((((p_1084->g_232 |= (0xAAFAFD972D13347AL & 0L)) , (l_585[2] <= (safe_div_func_uint8_t_u_u(((p_52 , ((l_170.y |= ((safe_mul_func_int16_t_s_s(((p_1084->g_403.x ^ 0x26L) , p_1084->g_111.s7), (0x053091BF218FE308L > FAKE_DIVERGE(p_1084->global_0_offset, get_global_id(0), 10)))) || p_1084->g_403.x)) < p_51)) < p_1084->g_313.s2), p_50)))) ^ 0x0B60BCC3L), 0x0377L)))) & l_167[0][0])), 2)) ^ (-9L)) <= l_591[6]), 6L));
    for (p_1084->g_43 = (-10); (p_1084->g_43 < 29); p_1084->g_43 = safe_add_func_int16_t_s_s(p_1084->g_43, 1))
    { /* block id: 213 */
        int32_t *l_598[8][1][4] = {{{(void*)0,(void*)0,(void*)0,&p_1084->g_107}},{{(void*)0,(void*)0,(void*)0,&p_1084->g_107}},{{(void*)0,(void*)0,(void*)0,&p_1084->g_107}},{{(void*)0,(void*)0,(void*)0,&p_1084->g_107}},{{(void*)0,(void*)0,(void*)0,&p_1084->g_107}},{{(void*)0,(void*)0,(void*)0,&p_1084->g_107}},{{(void*)0,(void*)0,(void*)0,&p_1084->g_107}},{{(void*)0,(void*)0,(void*)0,&p_1084->g_107}}};
        int32_t **l_599 = &l_592;
        uint16_t *l_600 = &p_1084->g_43;
        int i, j, k;
        l_169 |= ((p_1084->g_411 , (safe_rshift_func_int8_t_s_u(p_1084->g_339.sc, 1))) <= ((VECTOR(int64_t, 4))(0x55D7B35257CE6CD0L, ((VECTOR(int64_t, 2))(0x2D23B488B9629562L, 0L)), 0x6E9DDEBD5F51307AL)).x);
        (*l_599) = l_598[4][0][3];
        if (p_50)
            break;
        return l_600;
    }
    return l_601[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1084->g_107 p_1084->g_72 p_1084->g_131 p_1084->g_39 p_1084->g_66 p_1084->g_144 p_1084->g_83 p_1084->g_43 p_1084->g_74 p_1084->g_91 p_1084->g_111 p_1084->g_70
 * writes: p_1084->g_107 p_1084->g_72 p_1084->g_138 p_1084->g_66 p_1084->g_145 p_1084->g_91
 */
int8_t  func_54(int32_t * p_55, int64_t  p_56, int32_t  p_57, uint16_t * p_58, int32_t  p_59, struct S1 * p_1084)
{ /* block id: 18 */
    uint16_t *l_78 = &p_1084->g_43;
    uint64_t *l_90 = &p_1084->g_91;
    VECTOR(int16_t, 4) l_105 = (VECTOR(int16_t, 4))(0x454CL, (VECTOR(int16_t, 2))(0x454CL, 0L), 0L);
    int32_t *l_106 = &p_1084->g_107;
    VECTOR(int32_t, 16) l_110 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x019B780AL), 0x019B780AL), 0x019B780AL, 1L, 0x019B780AL, (VECTOR(int32_t, 2))(1L, 0x019B780AL), (VECTOR(int32_t, 2))(1L, 0x019B780AL), 1L, 0x019B780AL, 1L, 0x019B780AL);
    VECTOR(int32_t, 8) l_112 = (VECTOR(int32_t, 8))(0x4EEC12BCL, (VECTOR(int32_t, 4))(0x4EEC12BCL, (VECTOR(int32_t, 2))(0x4EEC12BCL, 0x7DE0D86AL), 0x7DE0D86AL), 0x7DE0D86AL, 0x4EEC12BCL, 0x7DE0D86AL);
    VECTOR(int32_t, 2) l_113 = (VECTOR(int32_t, 2))(0x21B11E67L, 6L);
    uint64_t **l_114 = &l_90;
    uint64_t *l_116 = &p_1084->g_91;
    uint64_t **l_115 = &l_116;
    uint64_t ***l_117 = &l_114;
    VECTOR(uint8_t, 8) l_118 = (VECTOR(uint8_t, 8))(0x7DL, (VECTOR(uint8_t, 4))(0x7DL, (VECTOR(uint8_t, 2))(0x7DL, 1UL), 1UL), 1UL, 0x7DL, 1UL);
    int i;
lbl_141:
    (*l_106) = (safe_lshift_func_int8_t_s_u((l_78 == (void*)0), ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))((safe_sub_func_uint8_t_u_u(((+0UL) , ((VECTOR(uint8_t, 4))(p_1084->g_83.yywy)).z), (safe_mul_func_int16_t_s_s(p_56, (safe_rshift_func_int16_t_s_s((p_1084->g_43 != (safe_add_func_uint16_t_u_u((0xA102A83C5EE7416AL <= (~((*l_90) = GROUP_DIVERGE(1, 1)))), p_56))), 7)))))), (safe_mod_func_uint16_t_u_u((((VECTOR(int16_t, 2))(0x7E16L, (-1L))).hi , ((safe_sub_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s((safe_unary_minus_func_int16_t_s((safe_lshift_func_int16_t_s_u((((safe_mod_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(((0x5CL >= ((((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 8))(l_105.zwwxwzwz)).even, ((VECTOR(int16_t, 2))(1L, 0x535AL)).xyyx))).even && ((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 8))(p_1084->g_74, 0x76F3L, ((VECTOR(int16_t, 4))((-3L))), 0x502AL, 0x7F03L)).s6534530550540142, ((VECTOR(int16_t, 16))(2L))))).s24))), 0x7C01L, ((VECTOR(int16_t, 4))(0x5B4AL)), 0L)).s1 && 2UL) > p_56) && 4UL) && 0x73B7F0D5E47109BDL)) && p_57), l_105.z)), l_105.y)) & p_1084->g_91) != FAKE_DIVERGE(p_1084->local_1_offset, get_local_id(1), 10)), 2)))), l_105.x)), 0xCEB4B622C3304EDDL)) | p_59)), p_1084->g_91)), 0x00L, 0x59L)).zyxxzywyxzwwwxxx + ((VECTOR(uint8_t, 16))(0UL))))).s8));
    if ((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 2))(l_110.s7c)).even, ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(p_1084->g_111.s1132204430060644)).s24, ((VECTOR(int32_t, 2))((-1L), 0x429F2DD6L))))).yyxy, ((VECTOR(int32_t, 16))(l_112.s7607730625711615)).s6dd9))), ((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(l_113.yxyyyyyyxxyxxyxy)).sfd, ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(0x37DDF4F0L, 0L)).xxxxxxyxxyxyxxyy && ((VECTOR(int32_t, 8))((~((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))(0x1C4289D3L, (-1L), ((VECTOR(int32_t, 2))(0x0BF875DFL, 0x3A37D4A0L)), ((*l_106) = (((!(((0x2D71L | (((+p_1084->g_91) , &p_1084->g_5) == (FAKE_DIVERGE(p_1084->group_0_offset, get_group_id(0), 10) , p_55))) < (!(((*l_115) = ((*l_114) = l_90)) == &p_1084->g_91))) , (((*l_117) = &l_90) != (void*)0))) || p_1084->g_70) , (*l_106))), (*l_106), 0x4A95BEA9L, (-4L))), ((VECTOR(int32_t, 8))((-1L)))))).lo, ((VECTOR(int32_t, 4))(0x54BCFCB3L))))).yxzzxzwz || ((VECTOR(int32_t, 8))(0x7143A669L)))))))).s4672640261401422))).s22))).yxyxxyxyyyyxyxxy, ((VECTOR(int32_t, 16))(0x66F9BC80L))))).s1a57))).x)))
    { /* block id: 25 */
        int16_t *l_127 = &p_1084->g_72;
        uint32_t *l_130[1][5];
        int32_t l_134 = 0x2347B796L;
        int8_t *l_137[3];
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 5; j++)
                l_130[i][j] = &p_1084->g_70;
        }
        for (i = 0; i < 3; i++)
            l_137[i] = &p_1084->g_138;
        (*l_106) = (*l_106);
        (*l_106) = ((p_57 != ((VECTOR(uint8_t, 4))(l_118.s7304)).w) | (safe_sub_func_int8_t_s_s((safe_mul_func_int8_t_s_s(((safe_mod_func_uint32_t_u_u((0UL <= ((*l_127) ^= (safe_rshift_func_int8_t_s_u((*l_106), 6)))), (safe_lshift_func_int8_t_s_u((p_1084->g_138 = (((((void*)0 == l_130[0][4]) , p_1084->g_131) , (safe_rshift_func_int16_t_s_u((l_134 || p_1084->g_131.f0), 9))) == (((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(0x240B61D6L, 0x73C79434L)).xxxx && ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(((safe_add_func_int64_t_s_s(((((VECTOR(int16_t, 2))(0x67D2L, (-10L))).hi || p_1084->g_83.w) < p_1084->g_91), p_1084->g_111.s3)) , l_134), ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 4))((-4L))), 0x3EE2624CL)), ((VECTOR(int32_t, 8))(6L)), ((VECTOR(int32_t, 8))(1L))))).s55, ((VECTOR(int32_t, 2))(0L)), ((VECTOR(int32_t, 2))(0x19566CB3L))))).yyxx))).y != 4294967293UL))), p_1084->g_39)))) < 0x1BL), 255UL)), (-2L))));
    }
    else
    { /* block id: 30 */
        return (*l_106);
    }
    for (p_1084->g_66 = 0; (p_1084->g_66 < 49); ++p_1084->g_66)
    { /* block id: 35 */
        if (p_56)
            goto lbl_141;
        if (p_1084->g_66)
            break;
        for (p_59 = 2; (p_59 > 16); p_59 = safe_add_func_uint16_t_u_u(p_59, 4))
        { /* block id: 40 */
            return p_59;
        }
        (*p_1084->g_144) = l_106;
    }
    l_112.s6 |= (*l_106);
    return p_57;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t * func_62(int8_t  p_63, struct S1 * p_1084)
{ /* block id: 16 */
    uint16_t *l_75 = &p_1084->g_43;
    return l_75;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j;
    struct S1 c_1085;
    struct S1* p_1084 = &c_1085;
    struct S1 c_1086 = {
        (void*)0, // p_1084->g_3
        0x3629AA81L, // p_1084->g_5
        2UL, // p_1084->g_39
        0xE2E4L, // p_1084->g_43
        (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x30AE734F12CE33A9L), 0x30AE734F12CE33A9L), 0x30AE734F12CE33A9L, 1UL, 0x30AE734F12CE33A9L, (VECTOR(uint64_t, 2))(1UL, 0x30AE734F12CE33A9L), (VECTOR(uint64_t, 2))(1UL, 0x30AE734F12CE33A9L), 1UL, 0x30AE734F12CE33A9L, 1UL, 0x30AE734F12CE33A9L), // p_1084->g_61
        0x52L, // p_1084->g_66
        0x7B20295DL, // p_1084->g_70
        0x73B7L, // p_1084->g_72
        8L, // p_1084->g_74
        (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 255UL), 255UL), // p_1084->g_83
        18446744073709551606UL, // p_1084->g_91
        0x7FCB947DL, // p_1084->g_107
        (VECTOR(int32_t, 8))(0x55B1586BL, (VECTOR(int32_t, 4))(0x55B1586BL, (VECTOR(int32_t, 2))(0x55B1586BL, 0x0488F66FL), 0x0488F66FL), 0x0488F66FL, 0x55B1586BL, 0x0488F66FL), // p_1084->g_111
        {0x1342L}, // p_1084->g_131
        0L, // p_1084->g_138
        (void*)0, // p_1084->g_145
        &p_1084->g_145, // p_1084->g_144
        1L, // p_1084->g_166
        0x601B7634L, // p_1084->g_177
        &p_1084->g_177, // p_1084->g_176
        &p_1084->g_176, // p_1084->g_175
        (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 0x3FL), 0x3FL), // p_1084->g_198
        (VECTOR(int8_t, 8))(2L, (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 2L), 2L), 2L, 2L, 2L), // p_1084->g_199
        (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 9L), 9L), // p_1084->g_217
        1L, // p_1084->g_232
        4UL, // p_1084->g_234
        (void*)0, // p_1084->g_255
        &p_1084->g_131, // p_1084->g_259
        {{&p_1084->g_131,&p_1084->g_131,&p_1084->g_131,&p_1084->g_131,&p_1084->g_131,&p_1084->g_131,&p_1084->g_131}}, // p_1084->g_268
        (VECTOR(int32_t, 2))(0x28355B21L, 0x27C0235CL), // p_1084->g_277
        (VECTOR(uint8_t, 8))(250UL, (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 1UL), 1UL), 1UL, 250UL, 1UL), // p_1084->g_313
        (VECTOR(int8_t, 2))(0L, 0L), // p_1084->g_316
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 1L), 1L), 1L, 1L, 1L), // p_1084->g_338
        (VECTOR(int16_t, 16))(0x7A7EL, (VECTOR(int16_t, 4))(0x7A7EL, (VECTOR(int16_t, 2))(0x7A7EL, 6L), 6L), 6L, 0x7A7EL, 6L, (VECTOR(int16_t, 2))(0x7A7EL, 6L), (VECTOR(int16_t, 2))(0x7A7EL, 6L), 0x7A7EL, 6L, 0x7A7EL, 6L), // p_1084->g_339
        (VECTOR(uint64_t, 4))(18446744073709551609UL, (VECTOR(uint64_t, 2))(18446744073709551609UL, 0x0E59D4314F7B553DL), 0x0E59D4314F7B553DL), // p_1084->g_356
        (VECTOR(uint64_t, 4))(2UL, (VECTOR(uint64_t, 2))(2UL, 18446744073709551615UL), 18446744073709551615UL), // p_1084->g_357
        {0L,0L,0L,0L,0L}, // p_1084->g_388
        (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0x0ED83842L), 0x0ED83842L), 0x0ED83842L, (-8L), 0x0ED83842L, (VECTOR(int32_t, 2))((-8L), 0x0ED83842L), (VECTOR(int32_t, 2))((-8L), 0x0ED83842L), (-8L), 0x0ED83842L, (-8L), 0x0ED83842L), // p_1084->g_392
        (VECTOR(uint32_t, 4))(0xA4CF6BCDL, (VECTOR(uint32_t, 2))(0xA4CF6BCDL, 1UL), 1UL), // p_1084->g_403
        4L, // p_1084->g_411
        (-2L), // p_1084->g_417
        (VECTOR(int32_t, 4))(0x70890B34L, (VECTOR(int32_t, 2))(0x70890B34L, 0L), 0L), // p_1084->g_432
        (VECTOR(int32_t, 4))(0x469B45DDL, (VECTOR(int32_t, 2))(0x469B45DDL, (-1L)), (-1L)), // p_1084->g_443
        (VECTOR(int8_t, 16))(2L, (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 0x29L), 0x29L), 0x29L, 2L, 0x29L, (VECTOR(int8_t, 2))(2L, 0x29L), (VECTOR(int8_t, 2))(2L, 0x29L), 2L, 0x29L, 2L, 0x29L), // p_1084->g_456
        (VECTOR(int16_t, 4))(0x6113L, (VECTOR(int16_t, 2))(0x6113L, 0x6D44L), 0x6D44L), // p_1084->g_470
        (VECTOR(int32_t, 4))(0x0722F69FL, (VECTOR(int32_t, 2))(0x0722F69FL, 0x6986A5F9L), 0x6986A5F9L), // p_1084->g_479
        (VECTOR(int32_t, 2))(0x39F38C01L, 0x72D0489DL), // p_1084->g_492
        &p_1084->g_39, // p_1084->g_525
        &p_1084->g_525, // p_1084->g_524
        1UL, // p_1084->g_548
        0x9E1C0634L, // p_1084->g_564
        0x2500CB1CL, // p_1084->g_608
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L)), // p_1084->g_612
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-3L)), (-3L)), // p_1084->g_653
        (VECTOR(uint16_t, 2))(0xF295L, 4UL), // p_1084->g_672
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_1084->g_687
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L)), // p_1084->g_693
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L), 0L, 1L, 0L), // p_1084->g_694
        (VECTOR(uint16_t, 2))(0x9A23L, 65527UL), // p_1084->g_697
        &p_1084->g_107, // p_1084->g_699
        (VECTOR(int32_t, 8))(0x18A5D4D7L, (VECTOR(int32_t, 4))(0x18A5D4D7L, (VECTOR(int32_t, 2))(0x18A5D4D7L, 0x7EAD6477L), 0x7EAD6477L), 0x7EAD6477L, 0x18A5D4D7L, 0x7EAD6477L), // p_1084->g_712
        (VECTOR(uint64_t, 16))(18446744073709551609UL, (VECTOR(uint64_t, 4))(18446744073709551609UL, (VECTOR(uint64_t, 2))(18446744073709551609UL, 18446744073709551609UL), 18446744073709551609UL), 18446744073709551609UL, 18446744073709551609UL, 18446744073709551609UL, (VECTOR(uint64_t, 2))(18446744073709551609UL, 18446744073709551609UL), (VECTOR(uint64_t, 2))(18446744073709551609UL, 18446744073709551609UL), 18446744073709551609UL, 18446744073709551609UL, 18446744073709551609UL, 18446744073709551609UL), // p_1084->g_766
        (VECTOR(uint64_t, 8))(9UL, (VECTOR(uint64_t, 4))(9UL, (VECTOR(uint64_t, 2))(9UL, 1UL), 1UL), 1UL, 9UL, 1UL), // p_1084->g_773
        (VECTOR(uint16_t, 16))(0xD85AL, (VECTOR(uint16_t, 4))(0xD85AL, (VECTOR(uint16_t, 2))(0xD85AL, 65530UL), 65530UL), 65530UL, 0xD85AL, 65530UL, (VECTOR(uint16_t, 2))(0xD85AL, 65530UL), (VECTOR(uint16_t, 2))(0xD85AL, 65530UL), 0xD85AL, 65530UL, 0xD85AL, 65530UL), // p_1084->g_775
        (VECTOR(uint16_t, 8))(0x50BBL, (VECTOR(uint16_t, 4))(0x50BBL, (VECTOR(uint16_t, 2))(0x50BBL, 0x24F1L), 0x24F1L), 0x24F1L, 0x50BBL, 0x24F1L), // p_1084->g_776
        0x561583B9L, // p_1084->g_795
        &p_1084->g_795, // p_1084->g_794
        (VECTOR(int16_t, 2))(0x3956L, 2L), // p_1084->g_816
        0x208F1961L, // p_1084->g_835
        &p_1084->g_131, // p_1084->g_850
        &p_1084->g_850, // p_1084->g_849
        &p_1084->g_849, // p_1084->g_848
        {0UL,0xEAL,0UL,0UL,0xEAL,0UL,0UL,0xEAL,0UL}, // p_1084->g_853
        &p_1084->g_853[1], // p_1084->g_852
        &p_1084->g_852, // p_1084->g_851
        &p_1084->g_388[3], // p_1084->g_877
        {{&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877},{&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877},{&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877},{&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877},{&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877},{&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877},{&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877},{&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877},{&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877},{&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877,&p_1084->g_877}}, // p_1084->g_876
        0L, // p_1084->g_881
        (void*)0, // p_1084->g_909
        (VECTOR(uint32_t, 16))(0x49708CE3L, (VECTOR(uint32_t, 4))(0x49708CE3L, (VECTOR(uint32_t, 2))(0x49708CE3L, 0xA0505C01L), 0xA0505C01L), 0xA0505C01L, 0x49708CE3L, 0xA0505C01L, (VECTOR(uint32_t, 2))(0x49708CE3L, 0xA0505C01L), (VECTOR(uint32_t, 2))(0x49708CE3L, 0xA0505C01L), 0x49708CE3L, 0xA0505C01L, 0x49708CE3L, 0xA0505C01L), // p_1084->g_914
        (VECTOR(uint32_t, 16))(0x89FEF026L, (VECTOR(uint32_t, 4))(0x89FEF026L, (VECTOR(uint32_t, 2))(0x89FEF026L, 8UL), 8UL), 8UL, 0x89FEF026L, 8UL, (VECTOR(uint32_t, 2))(0x89FEF026L, 8UL), (VECTOR(uint32_t, 2))(0x89FEF026L, 8UL), 0x89FEF026L, 8UL, 0x89FEF026L, 8UL), // p_1084->g_926
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-1L)), (-1L)), // p_1084->g_943
        (VECTOR(int64_t, 2))(3L, 0x38146A5E2951FBF7L), // p_1084->g_947
        (VECTOR(uint64_t, 4))(18446744073709551614UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 0xC36E7F06EBB99EFDL), 0xC36E7F06EBB99EFDL), // p_1084->g_959
        (VECTOR(int16_t, 16))(0x4744L, (VECTOR(int16_t, 4))(0x4744L, (VECTOR(int16_t, 2))(0x4744L, 0x2D06L), 0x2D06L), 0x2D06L, 0x4744L, 0x2D06L, (VECTOR(int16_t, 2))(0x4744L, 0x2D06L), (VECTOR(int16_t, 2))(0x4744L, 0x2D06L), 0x4744L, 0x2D06L, 0x4744L, 0x2D06L), // p_1084->g_990
        (VECTOR(uint16_t, 8))(0xE2C2L, (VECTOR(uint16_t, 4))(0xE2C2L, (VECTOR(uint16_t, 2))(0xE2C2L, 0x1CC8L), 0x1CC8L), 0x1CC8L, 0xE2C2L, 0x1CC8L), // p_1084->g_998
        (VECTOR(int64_t, 4))(0x6ED631C2BE173905L, (VECTOR(int64_t, 2))(0x6ED631C2BE173905L, 3L), 3L), // p_1084->g_1013
        (VECTOR(int64_t, 2))(0x4B5E09749B253D69L, 6L), // p_1084->g_1016
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65527UL), 65527UL), 65527UL, 0UL, 65527UL), // p_1084->g_1057
        sequence_input[get_global_id(0)], // p_1084->global_0_offset
        sequence_input[get_global_id(1)], // p_1084->global_1_offset
        sequence_input[get_global_id(2)], // p_1084->global_2_offset
        sequence_input[get_local_id(0)], // p_1084->local_0_offset
        sequence_input[get_local_id(1)], // p_1084->local_1_offset
        sequence_input[get_local_id(2)], // p_1084->local_2_offset
        sequence_input[get_group_id(0)], // p_1084->group_0_offset
        sequence_input[get_group_id(1)], // p_1084->group_1_offset
        sequence_input[get_group_id(2)], // p_1084->group_2_offset
    };
    c_1085 = c_1086;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1084);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1084->g_5, "p_1084->g_5", print_hash_value);
    transparent_crc(p_1084->g_39, "p_1084->g_39", print_hash_value);
    transparent_crc(p_1084->g_43, "p_1084->g_43", print_hash_value);
    transparent_crc(p_1084->g_61.s0, "p_1084->g_61.s0", print_hash_value);
    transparent_crc(p_1084->g_61.s1, "p_1084->g_61.s1", print_hash_value);
    transparent_crc(p_1084->g_61.s2, "p_1084->g_61.s2", print_hash_value);
    transparent_crc(p_1084->g_61.s3, "p_1084->g_61.s3", print_hash_value);
    transparent_crc(p_1084->g_61.s4, "p_1084->g_61.s4", print_hash_value);
    transparent_crc(p_1084->g_61.s5, "p_1084->g_61.s5", print_hash_value);
    transparent_crc(p_1084->g_61.s6, "p_1084->g_61.s6", print_hash_value);
    transparent_crc(p_1084->g_61.s7, "p_1084->g_61.s7", print_hash_value);
    transparent_crc(p_1084->g_61.s8, "p_1084->g_61.s8", print_hash_value);
    transparent_crc(p_1084->g_61.s9, "p_1084->g_61.s9", print_hash_value);
    transparent_crc(p_1084->g_61.sa, "p_1084->g_61.sa", print_hash_value);
    transparent_crc(p_1084->g_61.sb, "p_1084->g_61.sb", print_hash_value);
    transparent_crc(p_1084->g_61.sc, "p_1084->g_61.sc", print_hash_value);
    transparent_crc(p_1084->g_61.sd, "p_1084->g_61.sd", print_hash_value);
    transparent_crc(p_1084->g_61.se, "p_1084->g_61.se", print_hash_value);
    transparent_crc(p_1084->g_61.sf, "p_1084->g_61.sf", print_hash_value);
    transparent_crc(p_1084->g_66, "p_1084->g_66", print_hash_value);
    transparent_crc(p_1084->g_70, "p_1084->g_70", print_hash_value);
    transparent_crc(p_1084->g_72, "p_1084->g_72", print_hash_value);
    transparent_crc(p_1084->g_74, "p_1084->g_74", print_hash_value);
    transparent_crc(p_1084->g_83.x, "p_1084->g_83.x", print_hash_value);
    transparent_crc(p_1084->g_83.y, "p_1084->g_83.y", print_hash_value);
    transparent_crc(p_1084->g_83.z, "p_1084->g_83.z", print_hash_value);
    transparent_crc(p_1084->g_83.w, "p_1084->g_83.w", print_hash_value);
    transparent_crc(p_1084->g_91, "p_1084->g_91", print_hash_value);
    transparent_crc(p_1084->g_107, "p_1084->g_107", print_hash_value);
    transparent_crc(p_1084->g_111.s0, "p_1084->g_111.s0", print_hash_value);
    transparent_crc(p_1084->g_111.s1, "p_1084->g_111.s1", print_hash_value);
    transparent_crc(p_1084->g_111.s2, "p_1084->g_111.s2", print_hash_value);
    transparent_crc(p_1084->g_111.s3, "p_1084->g_111.s3", print_hash_value);
    transparent_crc(p_1084->g_111.s4, "p_1084->g_111.s4", print_hash_value);
    transparent_crc(p_1084->g_111.s5, "p_1084->g_111.s5", print_hash_value);
    transparent_crc(p_1084->g_111.s6, "p_1084->g_111.s6", print_hash_value);
    transparent_crc(p_1084->g_111.s7, "p_1084->g_111.s7", print_hash_value);
    transparent_crc(p_1084->g_131.f0, "p_1084->g_131.f0", print_hash_value);
    transparent_crc(p_1084->g_138, "p_1084->g_138", print_hash_value);
    transparent_crc(p_1084->g_166, "p_1084->g_166", print_hash_value);
    transparent_crc(p_1084->g_177, "p_1084->g_177", print_hash_value);
    transparent_crc(p_1084->g_198.x, "p_1084->g_198.x", print_hash_value);
    transparent_crc(p_1084->g_198.y, "p_1084->g_198.y", print_hash_value);
    transparent_crc(p_1084->g_198.z, "p_1084->g_198.z", print_hash_value);
    transparent_crc(p_1084->g_198.w, "p_1084->g_198.w", print_hash_value);
    transparent_crc(p_1084->g_199.s0, "p_1084->g_199.s0", print_hash_value);
    transparent_crc(p_1084->g_199.s1, "p_1084->g_199.s1", print_hash_value);
    transparent_crc(p_1084->g_199.s2, "p_1084->g_199.s2", print_hash_value);
    transparent_crc(p_1084->g_199.s3, "p_1084->g_199.s3", print_hash_value);
    transparent_crc(p_1084->g_199.s4, "p_1084->g_199.s4", print_hash_value);
    transparent_crc(p_1084->g_199.s5, "p_1084->g_199.s5", print_hash_value);
    transparent_crc(p_1084->g_199.s6, "p_1084->g_199.s6", print_hash_value);
    transparent_crc(p_1084->g_199.s7, "p_1084->g_199.s7", print_hash_value);
    transparent_crc(p_1084->g_217.x, "p_1084->g_217.x", print_hash_value);
    transparent_crc(p_1084->g_217.y, "p_1084->g_217.y", print_hash_value);
    transparent_crc(p_1084->g_217.z, "p_1084->g_217.z", print_hash_value);
    transparent_crc(p_1084->g_217.w, "p_1084->g_217.w", print_hash_value);
    transparent_crc(p_1084->g_232, "p_1084->g_232", print_hash_value);
    transparent_crc(p_1084->g_234, "p_1084->g_234", print_hash_value);
    transparent_crc(p_1084->g_277.x, "p_1084->g_277.x", print_hash_value);
    transparent_crc(p_1084->g_277.y, "p_1084->g_277.y", print_hash_value);
    transparent_crc(p_1084->g_313.s0, "p_1084->g_313.s0", print_hash_value);
    transparent_crc(p_1084->g_313.s1, "p_1084->g_313.s1", print_hash_value);
    transparent_crc(p_1084->g_313.s2, "p_1084->g_313.s2", print_hash_value);
    transparent_crc(p_1084->g_313.s3, "p_1084->g_313.s3", print_hash_value);
    transparent_crc(p_1084->g_313.s4, "p_1084->g_313.s4", print_hash_value);
    transparent_crc(p_1084->g_313.s5, "p_1084->g_313.s5", print_hash_value);
    transparent_crc(p_1084->g_313.s6, "p_1084->g_313.s6", print_hash_value);
    transparent_crc(p_1084->g_313.s7, "p_1084->g_313.s7", print_hash_value);
    transparent_crc(p_1084->g_316.x, "p_1084->g_316.x", print_hash_value);
    transparent_crc(p_1084->g_316.y, "p_1084->g_316.y", print_hash_value);
    transparent_crc(p_1084->g_338.s0, "p_1084->g_338.s0", print_hash_value);
    transparent_crc(p_1084->g_338.s1, "p_1084->g_338.s1", print_hash_value);
    transparent_crc(p_1084->g_338.s2, "p_1084->g_338.s2", print_hash_value);
    transparent_crc(p_1084->g_338.s3, "p_1084->g_338.s3", print_hash_value);
    transparent_crc(p_1084->g_338.s4, "p_1084->g_338.s4", print_hash_value);
    transparent_crc(p_1084->g_338.s5, "p_1084->g_338.s5", print_hash_value);
    transparent_crc(p_1084->g_338.s6, "p_1084->g_338.s6", print_hash_value);
    transparent_crc(p_1084->g_338.s7, "p_1084->g_338.s7", print_hash_value);
    transparent_crc(p_1084->g_339.s0, "p_1084->g_339.s0", print_hash_value);
    transparent_crc(p_1084->g_339.s1, "p_1084->g_339.s1", print_hash_value);
    transparent_crc(p_1084->g_339.s2, "p_1084->g_339.s2", print_hash_value);
    transparent_crc(p_1084->g_339.s3, "p_1084->g_339.s3", print_hash_value);
    transparent_crc(p_1084->g_339.s4, "p_1084->g_339.s4", print_hash_value);
    transparent_crc(p_1084->g_339.s5, "p_1084->g_339.s5", print_hash_value);
    transparent_crc(p_1084->g_339.s6, "p_1084->g_339.s6", print_hash_value);
    transparent_crc(p_1084->g_339.s7, "p_1084->g_339.s7", print_hash_value);
    transparent_crc(p_1084->g_339.s8, "p_1084->g_339.s8", print_hash_value);
    transparent_crc(p_1084->g_339.s9, "p_1084->g_339.s9", print_hash_value);
    transparent_crc(p_1084->g_339.sa, "p_1084->g_339.sa", print_hash_value);
    transparent_crc(p_1084->g_339.sb, "p_1084->g_339.sb", print_hash_value);
    transparent_crc(p_1084->g_339.sc, "p_1084->g_339.sc", print_hash_value);
    transparent_crc(p_1084->g_339.sd, "p_1084->g_339.sd", print_hash_value);
    transparent_crc(p_1084->g_339.se, "p_1084->g_339.se", print_hash_value);
    transparent_crc(p_1084->g_339.sf, "p_1084->g_339.sf", print_hash_value);
    transparent_crc(p_1084->g_356.x, "p_1084->g_356.x", print_hash_value);
    transparent_crc(p_1084->g_356.y, "p_1084->g_356.y", print_hash_value);
    transparent_crc(p_1084->g_356.z, "p_1084->g_356.z", print_hash_value);
    transparent_crc(p_1084->g_356.w, "p_1084->g_356.w", print_hash_value);
    transparent_crc(p_1084->g_357.x, "p_1084->g_357.x", print_hash_value);
    transparent_crc(p_1084->g_357.y, "p_1084->g_357.y", print_hash_value);
    transparent_crc(p_1084->g_357.z, "p_1084->g_357.z", print_hash_value);
    transparent_crc(p_1084->g_357.w, "p_1084->g_357.w", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1084->g_388[i], "p_1084->g_388[i]", print_hash_value);

    }
    transparent_crc(p_1084->g_392.s0, "p_1084->g_392.s0", print_hash_value);
    transparent_crc(p_1084->g_392.s1, "p_1084->g_392.s1", print_hash_value);
    transparent_crc(p_1084->g_392.s2, "p_1084->g_392.s2", print_hash_value);
    transparent_crc(p_1084->g_392.s3, "p_1084->g_392.s3", print_hash_value);
    transparent_crc(p_1084->g_392.s4, "p_1084->g_392.s4", print_hash_value);
    transparent_crc(p_1084->g_392.s5, "p_1084->g_392.s5", print_hash_value);
    transparent_crc(p_1084->g_392.s6, "p_1084->g_392.s6", print_hash_value);
    transparent_crc(p_1084->g_392.s7, "p_1084->g_392.s7", print_hash_value);
    transparent_crc(p_1084->g_392.s8, "p_1084->g_392.s8", print_hash_value);
    transparent_crc(p_1084->g_392.s9, "p_1084->g_392.s9", print_hash_value);
    transparent_crc(p_1084->g_392.sa, "p_1084->g_392.sa", print_hash_value);
    transparent_crc(p_1084->g_392.sb, "p_1084->g_392.sb", print_hash_value);
    transparent_crc(p_1084->g_392.sc, "p_1084->g_392.sc", print_hash_value);
    transparent_crc(p_1084->g_392.sd, "p_1084->g_392.sd", print_hash_value);
    transparent_crc(p_1084->g_392.se, "p_1084->g_392.se", print_hash_value);
    transparent_crc(p_1084->g_392.sf, "p_1084->g_392.sf", print_hash_value);
    transparent_crc(p_1084->g_403.x, "p_1084->g_403.x", print_hash_value);
    transparent_crc(p_1084->g_403.y, "p_1084->g_403.y", print_hash_value);
    transparent_crc(p_1084->g_403.z, "p_1084->g_403.z", print_hash_value);
    transparent_crc(p_1084->g_403.w, "p_1084->g_403.w", print_hash_value);
    transparent_crc(p_1084->g_411, "p_1084->g_411", print_hash_value);
    transparent_crc(p_1084->g_417, "p_1084->g_417", print_hash_value);
    transparent_crc(p_1084->g_432.x, "p_1084->g_432.x", print_hash_value);
    transparent_crc(p_1084->g_432.y, "p_1084->g_432.y", print_hash_value);
    transparent_crc(p_1084->g_432.z, "p_1084->g_432.z", print_hash_value);
    transparent_crc(p_1084->g_432.w, "p_1084->g_432.w", print_hash_value);
    transparent_crc(p_1084->g_443.x, "p_1084->g_443.x", print_hash_value);
    transparent_crc(p_1084->g_443.y, "p_1084->g_443.y", print_hash_value);
    transparent_crc(p_1084->g_443.z, "p_1084->g_443.z", print_hash_value);
    transparent_crc(p_1084->g_443.w, "p_1084->g_443.w", print_hash_value);
    transparent_crc(p_1084->g_456.s0, "p_1084->g_456.s0", print_hash_value);
    transparent_crc(p_1084->g_456.s1, "p_1084->g_456.s1", print_hash_value);
    transparent_crc(p_1084->g_456.s2, "p_1084->g_456.s2", print_hash_value);
    transparent_crc(p_1084->g_456.s3, "p_1084->g_456.s3", print_hash_value);
    transparent_crc(p_1084->g_456.s4, "p_1084->g_456.s4", print_hash_value);
    transparent_crc(p_1084->g_456.s5, "p_1084->g_456.s5", print_hash_value);
    transparent_crc(p_1084->g_456.s6, "p_1084->g_456.s6", print_hash_value);
    transparent_crc(p_1084->g_456.s7, "p_1084->g_456.s7", print_hash_value);
    transparent_crc(p_1084->g_456.s8, "p_1084->g_456.s8", print_hash_value);
    transparent_crc(p_1084->g_456.s9, "p_1084->g_456.s9", print_hash_value);
    transparent_crc(p_1084->g_456.sa, "p_1084->g_456.sa", print_hash_value);
    transparent_crc(p_1084->g_456.sb, "p_1084->g_456.sb", print_hash_value);
    transparent_crc(p_1084->g_456.sc, "p_1084->g_456.sc", print_hash_value);
    transparent_crc(p_1084->g_456.sd, "p_1084->g_456.sd", print_hash_value);
    transparent_crc(p_1084->g_456.se, "p_1084->g_456.se", print_hash_value);
    transparent_crc(p_1084->g_456.sf, "p_1084->g_456.sf", print_hash_value);
    transparent_crc(p_1084->g_470.x, "p_1084->g_470.x", print_hash_value);
    transparent_crc(p_1084->g_470.y, "p_1084->g_470.y", print_hash_value);
    transparent_crc(p_1084->g_470.z, "p_1084->g_470.z", print_hash_value);
    transparent_crc(p_1084->g_470.w, "p_1084->g_470.w", print_hash_value);
    transparent_crc(p_1084->g_479.x, "p_1084->g_479.x", print_hash_value);
    transparent_crc(p_1084->g_479.y, "p_1084->g_479.y", print_hash_value);
    transparent_crc(p_1084->g_479.z, "p_1084->g_479.z", print_hash_value);
    transparent_crc(p_1084->g_479.w, "p_1084->g_479.w", print_hash_value);
    transparent_crc(p_1084->g_492.x, "p_1084->g_492.x", print_hash_value);
    transparent_crc(p_1084->g_492.y, "p_1084->g_492.y", print_hash_value);
    transparent_crc(p_1084->g_548, "p_1084->g_548", print_hash_value);
    transparent_crc(p_1084->g_564, "p_1084->g_564", print_hash_value);
    transparent_crc(p_1084->g_608, "p_1084->g_608", print_hash_value);
    transparent_crc(p_1084->g_612.s0, "p_1084->g_612.s0", print_hash_value);
    transparent_crc(p_1084->g_612.s1, "p_1084->g_612.s1", print_hash_value);
    transparent_crc(p_1084->g_612.s2, "p_1084->g_612.s2", print_hash_value);
    transparent_crc(p_1084->g_612.s3, "p_1084->g_612.s3", print_hash_value);
    transparent_crc(p_1084->g_612.s4, "p_1084->g_612.s4", print_hash_value);
    transparent_crc(p_1084->g_612.s5, "p_1084->g_612.s5", print_hash_value);
    transparent_crc(p_1084->g_612.s6, "p_1084->g_612.s6", print_hash_value);
    transparent_crc(p_1084->g_612.s7, "p_1084->g_612.s7", print_hash_value);
    transparent_crc(p_1084->g_653.x, "p_1084->g_653.x", print_hash_value);
    transparent_crc(p_1084->g_653.y, "p_1084->g_653.y", print_hash_value);
    transparent_crc(p_1084->g_653.z, "p_1084->g_653.z", print_hash_value);
    transparent_crc(p_1084->g_653.w, "p_1084->g_653.w", print_hash_value);
    transparent_crc(p_1084->g_672.x, "p_1084->g_672.x", print_hash_value);
    transparent_crc(p_1084->g_672.y, "p_1084->g_672.y", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1084->g_687[i], "p_1084->g_687[i]", print_hash_value);

    }
    transparent_crc(p_1084->g_693.s0, "p_1084->g_693.s0", print_hash_value);
    transparent_crc(p_1084->g_693.s1, "p_1084->g_693.s1", print_hash_value);
    transparent_crc(p_1084->g_693.s2, "p_1084->g_693.s2", print_hash_value);
    transparent_crc(p_1084->g_693.s3, "p_1084->g_693.s3", print_hash_value);
    transparent_crc(p_1084->g_693.s4, "p_1084->g_693.s4", print_hash_value);
    transparent_crc(p_1084->g_693.s5, "p_1084->g_693.s5", print_hash_value);
    transparent_crc(p_1084->g_693.s6, "p_1084->g_693.s6", print_hash_value);
    transparent_crc(p_1084->g_693.s7, "p_1084->g_693.s7", print_hash_value);
    transparent_crc(p_1084->g_694.s0, "p_1084->g_694.s0", print_hash_value);
    transparent_crc(p_1084->g_694.s1, "p_1084->g_694.s1", print_hash_value);
    transparent_crc(p_1084->g_694.s2, "p_1084->g_694.s2", print_hash_value);
    transparent_crc(p_1084->g_694.s3, "p_1084->g_694.s3", print_hash_value);
    transparent_crc(p_1084->g_694.s4, "p_1084->g_694.s4", print_hash_value);
    transparent_crc(p_1084->g_694.s5, "p_1084->g_694.s5", print_hash_value);
    transparent_crc(p_1084->g_694.s6, "p_1084->g_694.s6", print_hash_value);
    transparent_crc(p_1084->g_694.s7, "p_1084->g_694.s7", print_hash_value);
    transparent_crc(p_1084->g_697.x, "p_1084->g_697.x", print_hash_value);
    transparent_crc(p_1084->g_697.y, "p_1084->g_697.y", print_hash_value);
    transparent_crc(p_1084->g_712.s0, "p_1084->g_712.s0", print_hash_value);
    transparent_crc(p_1084->g_712.s1, "p_1084->g_712.s1", print_hash_value);
    transparent_crc(p_1084->g_712.s2, "p_1084->g_712.s2", print_hash_value);
    transparent_crc(p_1084->g_712.s3, "p_1084->g_712.s3", print_hash_value);
    transparent_crc(p_1084->g_712.s4, "p_1084->g_712.s4", print_hash_value);
    transparent_crc(p_1084->g_712.s5, "p_1084->g_712.s5", print_hash_value);
    transparent_crc(p_1084->g_712.s6, "p_1084->g_712.s6", print_hash_value);
    transparent_crc(p_1084->g_712.s7, "p_1084->g_712.s7", print_hash_value);
    transparent_crc(p_1084->g_766.s0, "p_1084->g_766.s0", print_hash_value);
    transparent_crc(p_1084->g_766.s1, "p_1084->g_766.s1", print_hash_value);
    transparent_crc(p_1084->g_766.s2, "p_1084->g_766.s2", print_hash_value);
    transparent_crc(p_1084->g_766.s3, "p_1084->g_766.s3", print_hash_value);
    transparent_crc(p_1084->g_766.s4, "p_1084->g_766.s4", print_hash_value);
    transparent_crc(p_1084->g_766.s5, "p_1084->g_766.s5", print_hash_value);
    transparent_crc(p_1084->g_766.s6, "p_1084->g_766.s6", print_hash_value);
    transparent_crc(p_1084->g_766.s7, "p_1084->g_766.s7", print_hash_value);
    transparent_crc(p_1084->g_766.s8, "p_1084->g_766.s8", print_hash_value);
    transparent_crc(p_1084->g_766.s9, "p_1084->g_766.s9", print_hash_value);
    transparent_crc(p_1084->g_766.sa, "p_1084->g_766.sa", print_hash_value);
    transparent_crc(p_1084->g_766.sb, "p_1084->g_766.sb", print_hash_value);
    transparent_crc(p_1084->g_766.sc, "p_1084->g_766.sc", print_hash_value);
    transparent_crc(p_1084->g_766.sd, "p_1084->g_766.sd", print_hash_value);
    transparent_crc(p_1084->g_766.se, "p_1084->g_766.se", print_hash_value);
    transparent_crc(p_1084->g_766.sf, "p_1084->g_766.sf", print_hash_value);
    transparent_crc(p_1084->g_773.s0, "p_1084->g_773.s0", print_hash_value);
    transparent_crc(p_1084->g_773.s1, "p_1084->g_773.s1", print_hash_value);
    transparent_crc(p_1084->g_773.s2, "p_1084->g_773.s2", print_hash_value);
    transparent_crc(p_1084->g_773.s3, "p_1084->g_773.s3", print_hash_value);
    transparent_crc(p_1084->g_773.s4, "p_1084->g_773.s4", print_hash_value);
    transparent_crc(p_1084->g_773.s5, "p_1084->g_773.s5", print_hash_value);
    transparent_crc(p_1084->g_773.s6, "p_1084->g_773.s6", print_hash_value);
    transparent_crc(p_1084->g_773.s7, "p_1084->g_773.s7", print_hash_value);
    transparent_crc(p_1084->g_775.s0, "p_1084->g_775.s0", print_hash_value);
    transparent_crc(p_1084->g_775.s1, "p_1084->g_775.s1", print_hash_value);
    transparent_crc(p_1084->g_775.s2, "p_1084->g_775.s2", print_hash_value);
    transparent_crc(p_1084->g_775.s3, "p_1084->g_775.s3", print_hash_value);
    transparent_crc(p_1084->g_775.s4, "p_1084->g_775.s4", print_hash_value);
    transparent_crc(p_1084->g_775.s5, "p_1084->g_775.s5", print_hash_value);
    transparent_crc(p_1084->g_775.s6, "p_1084->g_775.s6", print_hash_value);
    transparent_crc(p_1084->g_775.s7, "p_1084->g_775.s7", print_hash_value);
    transparent_crc(p_1084->g_775.s8, "p_1084->g_775.s8", print_hash_value);
    transparent_crc(p_1084->g_775.s9, "p_1084->g_775.s9", print_hash_value);
    transparent_crc(p_1084->g_775.sa, "p_1084->g_775.sa", print_hash_value);
    transparent_crc(p_1084->g_775.sb, "p_1084->g_775.sb", print_hash_value);
    transparent_crc(p_1084->g_775.sc, "p_1084->g_775.sc", print_hash_value);
    transparent_crc(p_1084->g_775.sd, "p_1084->g_775.sd", print_hash_value);
    transparent_crc(p_1084->g_775.se, "p_1084->g_775.se", print_hash_value);
    transparent_crc(p_1084->g_775.sf, "p_1084->g_775.sf", print_hash_value);
    transparent_crc(p_1084->g_776.s0, "p_1084->g_776.s0", print_hash_value);
    transparent_crc(p_1084->g_776.s1, "p_1084->g_776.s1", print_hash_value);
    transparent_crc(p_1084->g_776.s2, "p_1084->g_776.s2", print_hash_value);
    transparent_crc(p_1084->g_776.s3, "p_1084->g_776.s3", print_hash_value);
    transparent_crc(p_1084->g_776.s4, "p_1084->g_776.s4", print_hash_value);
    transparent_crc(p_1084->g_776.s5, "p_1084->g_776.s5", print_hash_value);
    transparent_crc(p_1084->g_776.s6, "p_1084->g_776.s6", print_hash_value);
    transparent_crc(p_1084->g_776.s7, "p_1084->g_776.s7", print_hash_value);
    transparent_crc(p_1084->g_795, "p_1084->g_795", print_hash_value);
    transparent_crc(p_1084->g_816.x, "p_1084->g_816.x", print_hash_value);
    transparent_crc(p_1084->g_816.y, "p_1084->g_816.y", print_hash_value);
    transparent_crc(p_1084->g_835, "p_1084->g_835", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1084->g_853[i], "p_1084->g_853[i]", print_hash_value);

    }
    transparent_crc(p_1084->g_881, "p_1084->g_881", print_hash_value);
    transparent_crc(p_1084->g_914.s0, "p_1084->g_914.s0", print_hash_value);
    transparent_crc(p_1084->g_914.s1, "p_1084->g_914.s1", print_hash_value);
    transparent_crc(p_1084->g_914.s2, "p_1084->g_914.s2", print_hash_value);
    transparent_crc(p_1084->g_914.s3, "p_1084->g_914.s3", print_hash_value);
    transparent_crc(p_1084->g_914.s4, "p_1084->g_914.s4", print_hash_value);
    transparent_crc(p_1084->g_914.s5, "p_1084->g_914.s5", print_hash_value);
    transparent_crc(p_1084->g_914.s6, "p_1084->g_914.s6", print_hash_value);
    transparent_crc(p_1084->g_914.s7, "p_1084->g_914.s7", print_hash_value);
    transparent_crc(p_1084->g_914.s8, "p_1084->g_914.s8", print_hash_value);
    transparent_crc(p_1084->g_914.s9, "p_1084->g_914.s9", print_hash_value);
    transparent_crc(p_1084->g_914.sa, "p_1084->g_914.sa", print_hash_value);
    transparent_crc(p_1084->g_914.sb, "p_1084->g_914.sb", print_hash_value);
    transparent_crc(p_1084->g_914.sc, "p_1084->g_914.sc", print_hash_value);
    transparent_crc(p_1084->g_914.sd, "p_1084->g_914.sd", print_hash_value);
    transparent_crc(p_1084->g_914.se, "p_1084->g_914.se", print_hash_value);
    transparent_crc(p_1084->g_914.sf, "p_1084->g_914.sf", print_hash_value);
    transparent_crc(p_1084->g_926.s0, "p_1084->g_926.s0", print_hash_value);
    transparent_crc(p_1084->g_926.s1, "p_1084->g_926.s1", print_hash_value);
    transparent_crc(p_1084->g_926.s2, "p_1084->g_926.s2", print_hash_value);
    transparent_crc(p_1084->g_926.s3, "p_1084->g_926.s3", print_hash_value);
    transparent_crc(p_1084->g_926.s4, "p_1084->g_926.s4", print_hash_value);
    transparent_crc(p_1084->g_926.s5, "p_1084->g_926.s5", print_hash_value);
    transparent_crc(p_1084->g_926.s6, "p_1084->g_926.s6", print_hash_value);
    transparent_crc(p_1084->g_926.s7, "p_1084->g_926.s7", print_hash_value);
    transparent_crc(p_1084->g_926.s8, "p_1084->g_926.s8", print_hash_value);
    transparent_crc(p_1084->g_926.s9, "p_1084->g_926.s9", print_hash_value);
    transparent_crc(p_1084->g_926.sa, "p_1084->g_926.sa", print_hash_value);
    transparent_crc(p_1084->g_926.sb, "p_1084->g_926.sb", print_hash_value);
    transparent_crc(p_1084->g_926.sc, "p_1084->g_926.sc", print_hash_value);
    transparent_crc(p_1084->g_926.sd, "p_1084->g_926.sd", print_hash_value);
    transparent_crc(p_1084->g_926.se, "p_1084->g_926.se", print_hash_value);
    transparent_crc(p_1084->g_926.sf, "p_1084->g_926.sf", print_hash_value);
    transparent_crc(p_1084->g_943.x, "p_1084->g_943.x", print_hash_value);
    transparent_crc(p_1084->g_943.y, "p_1084->g_943.y", print_hash_value);
    transparent_crc(p_1084->g_943.z, "p_1084->g_943.z", print_hash_value);
    transparent_crc(p_1084->g_943.w, "p_1084->g_943.w", print_hash_value);
    transparent_crc(p_1084->g_947.x, "p_1084->g_947.x", print_hash_value);
    transparent_crc(p_1084->g_947.y, "p_1084->g_947.y", print_hash_value);
    transparent_crc(p_1084->g_959.x, "p_1084->g_959.x", print_hash_value);
    transparent_crc(p_1084->g_959.y, "p_1084->g_959.y", print_hash_value);
    transparent_crc(p_1084->g_959.z, "p_1084->g_959.z", print_hash_value);
    transparent_crc(p_1084->g_959.w, "p_1084->g_959.w", print_hash_value);
    transparent_crc(p_1084->g_990.s0, "p_1084->g_990.s0", print_hash_value);
    transparent_crc(p_1084->g_990.s1, "p_1084->g_990.s1", print_hash_value);
    transparent_crc(p_1084->g_990.s2, "p_1084->g_990.s2", print_hash_value);
    transparent_crc(p_1084->g_990.s3, "p_1084->g_990.s3", print_hash_value);
    transparent_crc(p_1084->g_990.s4, "p_1084->g_990.s4", print_hash_value);
    transparent_crc(p_1084->g_990.s5, "p_1084->g_990.s5", print_hash_value);
    transparent_crc(p_1084->g_990.s6, "p_1084->g_990.s6", print_hash_value);
    transparent_crc(p_1084->g_990.s7, "p_1084->g_990.s7", print_hash_value);
    transparent_crc(p_1084->g_990.s8, "p_1084->g_990.s8", print_hash_value);
    transparent_crc(p_1084->g_990.s9, "p_1084->g_990.s9", print_hash_value);
    transparent_crc(p_1084->g_990.sa, "p_1084->g_990.sa", print_hash_value);
    transparent_crc(p_1084->g_990.sb, "p_1084->g_990.sb", print_hash_value);
    transparent_crc(p_1084->g_990.sc, "p_1084->g_990.sc", print_hash_value);
    transparent_crc(p_1084->g_990.sd, "p_1084->g_990.sd", print_hash_value);
    transparent_crc(p_1084->g_990.se, "p_1084->g_990.se", print_hash_value);
    transparent_crc(p_1084->g_990.sf, "p_1084->g_990.sf", print_hash_value);
    transparent_crc(p_1084->g_998.s0, "p_1084->g_998.s0", print_hash_value);
    transparent_crc(p_1084->g_998.s1, "p_1084->g_998.s1", print_hash_value);
    transparent_crc(p_1084->g_998.s2, "p_1084->g_998.s2", print_hash_value);
    transparent_crc(p_1084->g_998.s3, "p_1084->g_998.s3", print_hash_value);
    transparent_crc(p_1084->g_998.s4, "p_1084->g_998.s4", print_hash_value);
    transparent_crc(p_1084->g_998.s5, "p_1084->g_998.s5", print_hash_value);
    transparent_crc(p_1084->g_998.s6, "p_1084->g_998.s6", print_hash_value);
    transparent_crc(p_1084->g_998.s7, "p_1084->g_998.s7", print_hash_value);
    transparent_crc(p_1084->g_1013.x, "p_1084->g_1013.x", print_hash_value);
    transparent_crc(p_1084->g_1013.y, "p_1084->g_1013.y", print_hash_value);
    transparent_crc(p_1084->g_1013.z, "p_1084->g_1013.z", print_hash_value);
    transparent_crc(p_1084->g_1013.w, "p_1084->g_1013.w", print_hash_value);
    transparent_crc(p_1084->g_1016.x, "p_1084->g_1016.x", print_hash_value);
    transparent_crc(p_1084->g_1016.y, "p_1084->g_1016.y", print_hash_value);
    transparent_crc(p_1084->g_1057.s0, "p_1084->g_1057.s0", print_hash_value);
    transparent_crc(p_1084->g_1057.s1, "p_1084->g_1057.s1", print_hash_value);
    transparent_crc(p_1084->g_1057.s2, "p_1084->g_1057.s2", print_hash_value);
    transparent_crc(p_1084->g_1057.s3, "p_1084->g_1057.s3", print_hash_value);
    transparent_crc(p_1084->g_1057.s4, "p_1084->g_1057.s4", print_hash_value);
    transparent_crc(p_1084->g_1057.s5, "p_1084->g_1057.s5", print_hash_value);
    transparent_crc(p_1084->g_1057.s6, "p_1084->g_1057.s6", print_hash_value);
    transparent_crc(p_1084->g_1057.s7, "p_1084->g_1057.s7", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
