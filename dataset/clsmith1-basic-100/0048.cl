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
    uint8_t g_2[8][2][5];
    int32_t g_3;
    int8_t g_18;
    int64_t g_33;
    int64_t g_42[7][5];
    int64_t *g_41;
    int32_t g_48;
    int32_t g_50;
    int32_t g_59[3][8][6];
    union U3 g_67;
    struct S1 g_68;
    union U2 g_69;
    union U3 g_79;
    union U3 *g_78;
    volatile int32_t g_119;
    volatile uint16_t *g_159[8];
    uint32_t g_161;
    int32_t *g_171;
    int8_t g_211;
    struct S0 g_213;
    struct S0 * volatile g_214[8][7];
    struct S0 * volatile g_215;
    struct S0 * volatile g_216;
    union U3 g_220[9];
    volatile int32_t *g_227;
    volatile int32_t * volatile * volatile g_226;
    volatile int32_t * volatile * volatile * volatile g_225;
    volatile int32_t g_251;
    volatile int8_t g_300[3];
    volatile struct S0 g_320;
    union U3 g_330;
    int16_t g_355[8];
    volatile int32_t * volatile * volatile g_364;
    uint64_t g_375;
    struct S1 * volatile g_393;
    volatile int32_t * volatile * volatile g_394;
    volatile union U2 g_395;
    volatile union U3 g_414;
    struct S1 g_425;
    volatile struct S0 g_438;
    volatile struct S0 * volatile g_440[3][3][7];
    int32_t ** volatile g_443;
    int64_t g_467;
    volatile uint32_t g_480[7];
    union U3 ** volatile g_483;
    union U3 ** volatile g_484;
    union U3 g_503;
    int64_t g_506;
    volatile int32_t * volatile * volatile g_507;
    volatile int32_t * volatile * volatile g_508;
    int32_t *g_545;
    volatile struct S0 g_583;
    struct S1 g_595;
    struct S1 * volatile g_596;
    struct S1 g_597;
    int64_t g_620;
    struct S1 * volatile *g_627;
    volatile union U3 g_633[4][8];
    volatile struct S0 g_649;
    volatile struct S0 g_650;
    volatile struct S1 g_672;
    struct S1 g_675;
    struct S1 g_676;
    struct S1 g_677;
    struct S1 g_678;
    struct S1 g_679;
    struct S1 g_680;
    struct S1 g_681;
    struct S1 g_682[4][1][8];
    struct S1 g_683;
    struct S1 g_684;
    struct S1 g_685;
    struct S1 g_686;
    struct S1 g_687;
    struct S1 g_688;
    struct S1 g_689;
    struct S1 g_690;
    struct S1 g_691;
    struct S1 g_692;
    struct S1 g_693;
    struct S1 g_694;
    struct S1 g_695;
    struct S1 g_696;
    struct S1 g_697;
    struct S1 g_698;
    struct S1 g_699;
    struct S1 g_700;
    struct S1 g_701[6][4];
    struct S1 g_702;
    struct S1 g_703[2];
    struct S1 g_704;
    struct S1 g_717;
    struct S1 g_719;
    struct S1 *g_718;
    struct S0 g_752;
    int32_t ** volatile g_756[3][8][3];
    volatile union U2 g_762;
    volatile int16_t ** volatile g_770;
    volatile int16_t ** volatile *g_769;
    volatile union U3 g_771;
    int32_t ** volatile g_775;
    int32_t ** volatile g_792;
    int32_t ** volatile g_793;
    volatile int32_t g_799[8];
    struct S1 g_815;
    union U2 *g_830;
    union U2 ** volatile g_829;
    volatile struct S0 g_831;
    volatile int8_t g_861[7];
    struct S1 g_875;
    volatile struct S0 g_876;
    volatile struct S0 g_878[8];
    volatile union U2 g_897[10];
    volatile union U2 g_911;
    uint32_t g_914;
    union U3 g_960;
    volatile union U2 g_991;
    volatile int64_t g_1000;
    volatile int32_t * volatile * volatile g_1015[3];
    volatile struct S0 g_1019[8];
    union U2 g_1022;
    uint8_t *g_1042;
    uint8_t **g_1041[3];
    volatile int32_t * volatile * volatile g_1055[8];
    volatile int32_t * volatile * volatile g_1056;
    union U3 g_1082;
    volatile struct S0 g_1119;
    volatile struct S0 * volatile g_1120;
    volatile uint32_t g_1164;
    volatile struct S1 g_1167[6][7][6];
    struct S0 g_1168[4][3];
    struct S0 * volatile g_1169[6];
    uint32_t g_1184;
    volatile union U2 g_1217;
    uint32_t *g_1227;
    uint32_t **g_1226;
    struct S0 g_1251;
    struct S0 * volatile g_1252;
    int32_t g_1255;
    volatile union U3 g_1261;
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
int64_t  func_1(struct S4 * p_1275);
int32_t  func_4(int32_t  p_5, int32_t  p_6, struct S4 * p_1275);
int32_t  func_8(int8_t * p_9, int64_t  p_10, int8_t * p_11, struct S4 * p_1275);
int8_t * func_12(int8_t * p_13, int32_t  p_14, int64_t  p_15, uint32_t  p_16, struct S4 * p_1275);
int64_t  func_21(int8_t  p_22, int16_t  p_23, int32_t  p_24, int8_t * p_25, int8_t * p_26, struct S4 * p_1275);
uint64_t  func_36(int32_t  p_37, uint64_t  p_38, struct S4 * p_1275);
union U3  func_39(int64_t * p_40, struct S4 * p_1275);
union U3 * func_43(int16_t  p_44, int32_t  p_45, struct S4 * p_1275);
int16_t  func_70(int16_t  p_71, int8_t * p_72, struct S4 * p_1275);
int8_t  func_73(int64_t * p_74, int8_t  p_75, union U3 * p_76, struct S4 * p_1275);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1275->g_3 p_1275->g_33 p_1275->g_41 p_1275->g_50 p_1275->g_18 p_1275->g_480 p_1275->g_484 p_1275->g_443 p_1275->g_503 p_1275->g_467 p_1275->g_225 p_1275->g_226 p_1275->g_227 p_1275->g_507 p_1275->g_394 p_1275->g_508 p_1275->g_300 p_1275->g_330.f0 p_1275->g_42 p_1275->g_355 p_1275->g_119 p_1275->g_211 p_1275->g_67.f0 p_1275->g_213.f1 p_1275->g_2 p_1275->g_68.f1 p_1275->g_375 p_1275->g_59 p_1275->g_583 p_1275->g_213.f2 p_1275->g_213.f0 p_1275->g_595 p_1275->g_596 p_1275->g_597 p_1275->g_320.f4 p_1275->g_503.f0 p_1275->g_213.f3 p_1275->g_68.f3 p_1275->g_620 p_1275->g_633 p_1275->g_161 p_1275->g_69.f0 p_1275->g_649 p_1275->g_545 p_1275->g_672 p_1275->g_718 p_1275->g_364 p_1275->g_704.f0 p_1275->g_699.f0 p_1275->g_752 p_1275->g_762 p_1275->g_159 p_1275->g_769 p_1275->g_771 p_1275->g_171 p_1275->g_775 p_1275->g_68.f0 p_1275->g_691.f3 p_1275->g_425.f0 p_1275->g_793 p_1275->g_692.f0 p_1275->g_815 p_1275->g_693.f3 p_1275->g_330.f3 p_1275->g_681.f3 p_1275->g_829 p_1275->g_831 p_1275->g_78 p_1275->g_875 p_1275->g_876 p_1275->g_897 p_1275->g_692.f3 p_1275->g_911 p_1275->g_914 p_1275->g_897.f0 p_1275->g_79.f0 p_1275->g_676.f3 p_1275->g_425.f3 p_1275->g_687.f3 p_1275->g_830 p_1275->g_960 p_1275->g_690.f0 p_1275->g_698.f0 p_1275->g_960.f0 p_1275->g_991 p_1275->g_1000 p_1275->g_685.f3 p_1275->g_1019 p_1275->g_1042 p_1275->g_1056 p_1275->g_627 p_1275->g_393 p_1275->g_1082 p_1275->g_678.f3 p_1275->g_687.f0 p_1275->g_1119 p_1275->g_1120 p_1275->g_1164 p_1275->g_1167 p_1275->g_1168 p_1275->g_699.f2 p_1275->g_695.f0 p_1275->g_1184 p_1275->g_1217 p_1275->g_701.f0 p_1275->g_1251 p_1275->g_1252 p_1275->g_1255 p_1275->g_686.f0 p_1275->g_688.f0
 * writes: p_1275->g_3 p_1275->g_33 p_1275->g_48 p_1275->g_50 p_1275->g_18 p_1275->g_480 p_1275->g_78 p_1275->g_171 p_1275->g_506 p_1275->g_227 p_1275->g_119 p_1275->g_69.f0 p_1275->g_2 p_1275->g_545 p_1275->g_67.f0 p_1275->g_330.f3 p_1275->g_211 p_1275->g_59 p_1275->g_425 p_1275->g_213.f3 p_1275->g_627 p_1275->g_503.f1 p_1275->g_300 p_1275->g_650 p_1275->g_213.f0 p_1275->g_161 p_1275->g_687.f0 p_1275->g_704.f0 p_1275->g_355 p_1275->g_703.f3 p_1275->g_220.f4 p_1275->g_68.f0 p_1275->g_691.f3 p_1275->g_692.f0 p_1275->g_42 p_1275->g_693.f3 p_1275->g_681.f3 p_1275->g_830 p_1275->g_719 p_1275->g_878 p_1275->g_692.f3 p_1275->g_676.f3 p_1275->g_718 p_1275->g_687.f3 p_1275->g_960.f0 p_1275->g_752.f2 p_1275->g_620 p_1275->g_1041 p_1275->g_503.f4 p_1275->g_1022.f2.f0 p_1275->g_1019 p_1275->g_693.f0 p_1275->g_330.f4 p_1275->g_79.f4 p_1275->g_1168 p_1275->g_1184 p_1275->g_752.f0 p_1275->g_503.f0 p_1275->g_1226 p_1275->g_752 p_1275->g_1255 p_1275->g_686.f0 p_1275->g_695.f0
 */
int64_t  func_1(struct S4 * p_1275)
{ /* block id: 4 */
    uint32_t l_31 = 0UL;
    int8_t *l_1258 = &p_1275->g_684.f3;
    int32_t l_1263 = 0x176D8248L;
    for (p_1275->g_3 = 1; (p_1275->g_3 >= 0); p_1275->g_3 -= 1)
    { /* block id: 7 */
        int32_t l_7[10][5] = {{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L}};
        int8_t *l_17 = &p_1275->g_18;
        int64_t *l_32 = &p_1275->g_33;
        int32_t l_509 = (-8L);
        int32_t *l_1254 = &p_1275->g_1255;
        uint32_t l_1271 = 0x4CA65EA8L;
        int i, j;
        (*l_1254) = func_4(l_7[0][0], ((*l_1254) ^= func_8(func_12(l_17, (safe_add_func_int64_t_s_s(func_21((((0x28L || (safe_add_func_int8_t_s_s(((safe_mod_func_uint32_t_u_u((((*l_32) |= (l_31 > 0x7221EBC5L)) >= (safe_add_func_int64_t_s_s(((func_36((p_1275->g_506 = (p_1275->g_3 && ((func_39(p_1275->g_41, p_1275) , (safe_rshift_func_int8_t_s_u(l_31, l_7[0][0]))) , 0x3BEFACAC039FDACCL))), p_1275->g_467, p_1275) == p_1275->g_330.f0) , (*p_1275->g_41)), l_31))), 4294967295UL)) == p_1275->g_355[0]), p_1275->g_355[4]))) , (*p_1275->g_41)) > l_31), l_7[6][4], l_509, &p_1275->g_211, &p_1275->g_211, p_1275), p_1275->g_595.f3)), l_31, p_1275->g_620, p_1275), p_1275->g_3, l_17, p_1275)), p_1275);
        for (p_1275->g_686.f0 = 2; (p_1275->g_686.f0 <= 6); p_1275->g_686.f0 += 1)
        { /* block id: 622 */
            int8_t *l_1259 = (void*)0;
            int32_t l_1260 = (-1L);
            uint64_t *l_1262[8];
            int32_t *l_1272[2];
            int8_t **l_1273 = (void*)0;
            int8_t **l_1274 = &l_17;
            int i;
            for (i = 0; i < 8; i++)
                l_1262[i] = &p_1275->g_503.f0;
            for (i = 0; i < 2; i++)
                l_1272[i] = &l_7[0][0];
            (*l_1254) = ((l_1258 == ((*l_1274) = &p_1275->g_211)) || p_1275->g_701[0][0].f0);
            for (p_1275->g_695.f0 = 0; (p_1275->g_695.f0 <= 6); p_1275->g_695.f0 += 1)
            { /* block id: 629 */
                int i, j, k;
                return p_1275->g_2[(p_1275->g_3 + 2)][p_1275->g_3][(p_1275->g_3 + 2)];
            }
        }
        return p_1275->g_688.f0;
    }
    return l_31;
}


/* ------------------------------------------ */
/* 
 * reads : p_1275->g_227 p_1275->g_119 p_1275->g_394
 * writes: p_1275->g_119
 */
int32_t  func_4(int32_t  p_5, int32_t  p_6, struct S4 * p_1275)
{ /* block id: 615 */
    union U3 **l_1256 = (void*)0;
    union U3 **l_1257[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    (*p_1275->g_227) &= ((l_1256 = l_1256) != l_1257[1]);
    return (**p_1275->g_394);
}


/* ------------------------------------------ */
/* 
 * reads : p_1275->g_227 p_1275->g_119 p_1275->g_815 p_1275->g_41 p_1275->g_394 p_1275->g_213.f0 p_1275->g_693.f3 p_1275->g_330.f3 p_1275->g_681.f3 p_1275->g_829 p_1275->g_831 p_1275->g_484 p_1275->g_78 p_1275->g_875 p_1275->g_718 p_1275->g_876 p_1275->g_897 p_1275->g_211 p_1275->g_692.f3 p_1275->g_911 p_1275->g_914 p_1275->g_467 p_1275->g_18 p_1275->g_897.f0 p_1275->g_79.f0 p_1275->g_42 p_1275->g_676.f3 p_1275->g_59 p_1275->g_775 p_1275->g_68.f0 p_1275->g_161 p_1275->g_480 p_1275->g_425.f3 p_1275->g_692.f0 p_1275->g_3 p_1275->g_687.f3 p_1275->g_830 p_1275->g_960 p_1275->g_690.f0 p_1275->g_698.f0 p_1275->g_960.f0 p_1275->g_991 p_1275->g_1000 p_1275->g_685.f3 p_1275->g_2 p_1275->g_226 p_1275->g_1019 p_1275->g_583.f2 p_1275->g_649.f1 p_1275->g_425.f0 p_1275->g_1042 p_1275->g_507 p_1275->g_1056 p_1275->g_627 p_1275->g_393 p_1275->g_596 p_1275->g_33 p_1275->g_508 p_1275->g_1082 p_1275->g_699.f0 p_1275->g_69.f0 p_1275->g_678.f3 p_1275->g_687.f0 p_1275->g_1119 p_1275->g_1120 p_1275->g_1164 p_1275->g_1167 p_1275->g_1168 p_1275->g_699.f2 p_1275->g_695.f0 p_1275->g_1184 p_1275->g_752.f0 p_1275->g_1217 p_1275->g_701.f0 p_1275->g_1251 p_1275->g_1252
 * writes: p_1275->g_119 p_1275->g_69.f0 p_1275->g_42 p_1275->g_18 p_1275->g_213.f0 p_1275->g_693.f3 p_1275->g_330.f3 p_1275->g_681.f3 p_1275->g_830 p_1275->g_719 p_1275->g_878 p_1275->g_211 p_1275->g_692.f3 p_1275->g_2 p_1275->g_676.f3 p_1275->g_59 p_1275->g_171 p_1275->g_68.f0 p_1275->g_161 p_1275->g_718 p_1275->g_425.f3 p_1275->g_692.f0 p_1275->g_687.f3 p_1275->g_960.f0 p_1275->g_752.f2 p_1275->g_620 p_1275->g_227 p_1275->g_1041 p_1275->g_503.f4 p_1275->g_220.f4 p_1275->g_1022.f2.f0 p_1275->g_1019 p_1275->g_704.f0 p_1275->g_693.f0 p_1275->g_545 p_1275->g_355 p_1275->g_330.f4 p_1275->g_79.f4 p_1275->g_1168 p_1275->g_1184 p_1275->g_752.f0 p_1275->g_503.f0 p_1275->g_1226 p_1275->g_752
 */
int32_t  func_8(int8_t * p_9, int64_t  p_10, int8_t * p_11, struct S4 * p_1275)
{ /* block id: 385 */
    uint8_t l_810 = 0xC6L;
    uint16_t *l_819 = &p_1275->g_69.f0;
    uint32_t *l_824 = &p_1275->g_704.f0;
    uint32_t **l_825 = &l_824;
    union U2 *l_828 = &p_1275->g_69;
    int32_t l_843 = 0x4A1987EAL;
    int32_t l_857 = 0L;
    int32_t l_858 = 0x159627EAL;
    int32_t l_864 = 0x6294DAD6L;
    int32_t l_867 = (-8L);
    int32_t l_868 = 0x03BFDFDBL;
    int32_t l_869 = 0x1C733F2BL;
    int32_t l_889 = 0L;
    int32_t l_890 = 0L;
    int32_t l_891 = 0x3DBEB37BL;
    int32_t l_892[5] = {7L,7L,7L,7L,7L};
    uint64_t l_894 = 0UL;
    uint64_t l_931 = 0x50725B3E02E8EC39L;
    struct S1 *l_946 = &p_1275->g_595;
    uint8_t l_981 = 8UL;
    int32_t *l_988 = (void*)0;
    uint32_t l_1030 = 8UL;
    int32_t l_1065 = 0x6D2AA442L;
    int8_t l_1085 = (-1L);
    uint32_t l_1163 = 0x3CEB60B9L;
    int32_t l_1230[3][8] = {{(-1L),1L,0x2325E7ABL,(-10L),1L,(-10L),0x2325E7ABL,1L},{(-1L),1L,0x2325E7ABL,(-10L),1L,(-10L),0x2325E7ABL,1L},{(-1L),1L,0x2325E7ABL,(-10L),1L,(-10L),0x2325E7ABL,1L}};
    int32_t l_1231[9] = {0x7FB8FEB8L,9L,0x7FB8FEB8L,0x7FB8FEB8L,9L,0x7FB8FEB8L,0x7FB8FEB8L,9L,0x7FB8FEB8L};
    uint64_t *l_1248 = (void*)0;
    uint64_t **l_1247 = &l_1248;
    volatile int32_t * volatile *l_1253 = &p_1275->g_227;
    int i, j;
    (*p_1275->g_227) ^= l_810;
    if ((safe_mod_func_int16_t_s_s((p_10 < l_810), (p_1275->g_213.f0 |= (safe_add_func_int8_t_s_s(((*p_11) = (((p_1275->g_815 , (((safe_unary_minus_func_int8_t_s((safe_mod_func_uint16_t_u_u(((*l_819) = p_10), 65531UL)))) , (safe_add_func_uint32_t_u_u(0UL, (((*p_1275->g_41) = (safe_mod_func_int8_t_s_s(0x7FL, 0xF5L))) != (((*l_825) = l_824) != (void*)0))))) , (**p_1275->g_394))) < p_10) <= 0UL)), l_810))))))
    { /* block id: 392 */
        return l_810;
    }
    else
    { /* block id: 394 */
        int16_t l_847 = 0x3343L;
        int32_t l_859 = 0x2EAFEB4DL;
        int32_t l_860[10][3] = {{0x6ADF3DDDL,0x6ADF3DDDL,0x6ADF3DDDL},{0x6ADF3DDDL,0x6ADF3DDDL,0x6ADF3DDDL},{0x6ADF3DDDL,0x6ADF3DDDL,0x6ADF3DDDL},{0x6ADF3DDDL,0x6ADF3DDDL,0x6ADF3DDDL},{0x6ADF3DDDL,0x6ADF3DDDL,0x6ADF3DDDL},{0x6ADF3DDDL,0x6ADF3DDDL,0x6ADF3DDDL},{0x6ADF3DDDL,0x6ADF3DDDL,0x6ADF3DDDL},{0x6ADF3DDDL,0x6ADF3DDDL,0x6ADF3DDDL},{0x6ADF3DDDL,0x6ADF3DDDL,0x6ADF3DDDL},{0x6ADF3DDDL,0x6ADF3DDDL,0x6ADF3DDDL}};
        int8_t l_893 = 0x46L;
        int32_t **l_905[2][4] = {{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171}};
        int32_t ***l_904[10][1][9] = {{{&l_905[0][3],&l_905[0][3],&l_905[0][0],(void*)0,&l_905[0][3],(void*)0,&l_905[0][0],&l_905[0][3],&l_905[0][3]}},{{&l_905[0][3],&l_905[0][3],&l_905[0][0],(void*)0,&l_905[0][3],(void*)0,&l_905[0][0],&l_905[0][3],&l_905[0][3]}},{{&l_905[0][3],&l_905[0][3],&l_905[0][0],(void*)0,&l_905[0][3],(void*)0,&l_905[0][0],&l_905[0][3],&l_905[0][3]}},{{&l_905[0][3],&l_905[0][3],&l_905[0][0],(void*)0,&l_905[0][3],(void*)0,&l_905[0][0],&l_905[0][3],&l_905[0][3]}},{{&l_905[0][3],&l_905[0][3],&l_905[0][0],(void*)0,&l_905[0][3],(void*)0,&l_905[0][0],&l_905[0][3],&l_905[0][3]}},{{&l_905[0][3],&l_905[0][3],&l_905[0][0],(void*)0,&l_905[0][3],(void*)0,&l_905[0][0],&l_905[0][3],&l_905[0][3]}},{{&l_905[0][3],&l_905[0][3],&l_905[0][0],(void*)0,&l_905[0][3],(void*)0,&l_905[0][0],&l_905[0][3],&l_905[0][3]}},{{&l_905[0][3],&l_905[0][3],&l_905[0][0],(void*)0,&l_905[0][3],(void*)0,&l_905[0][0],&l_905[0][3],&l_905[0][3]}},{{&l_905[0][3],&l_905[0][3],&l_905[0][0],(void*)0,&l_905[0][3],(void*)0,&l_905[0][0],&l_905[0][3],&l_905[0][3]}},{{&l_905[0][3],&l_905[0][3],&l_905[0][0],(void*)0,&l_905[0][3],(void*)0,&l_905[0][0],&l_905[0][3],&l_905[0][3]}}};
        struct S1 *l_947 = &p_1275->g_700;
        uint32_t l_975[2];
        uint8_t **l_1043 = &p_1275->g_1042;
        union U3 **l_1121 = (void*)0;
        int64_t l_1186 = (-9L);
        int16_t *l_1209[10][4][6] = {{{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]}},{{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]}},{{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]}},{{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]}},{{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]}},{{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]}},{{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]}},{{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]}},{{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]}},{{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]},{&p_1275->g_355[0],&p_1275->g_355[2],&p_1275->g_355[2],&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0]}}};
        int16_t **l_1208 = &l_1209[4][2][4];
        int16_t ***l_1207[1];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_975[i] = 4294967290UL;
        for (i = 0; i < 1; i++)
            l_1207[i] = &l_1208;
        for (p_1275->g_693.f3 = 0; (p_1275->g_693.f3 <= 2); p_1275->g_693.f3 += 1)
        { /* block id: 397 */
            int32_t l_862 = 0x6E5FBD80L;
            int32_t l_863 = 0x65F4CD57L;
            int32_t l_865[8][9];
            uint32_t l_872[2];
            int32_t *l_899[4] = {&l_843,&l_843,&l_843,&l_843};
            int32_t l_924 = 0x2E131FEEL;
            int8_t *l_932 = &p_1275->g_676.f3;
            int i, j;
            for (i = 0; i < 8; i++)
            {
                for (j = 0; j < 9; j++)
                    l_865[i][j] = 0x4D746CA6L;
            }
            for (i = 0; i < 2; i++)
                l_872[i] = 0x653A3DD6L;
            for (p_1275->g_330.f3 = 6; (p_1275->g_330.f3 >= 0); p_1275->g_330.f3 -= 1)
            { /* block id: 400 */
                return p_10;
            }
            for (p_1275->g_681.f3 = 7; (p_1275->g_681.f3 >= 0); p_1275->g_681.f3 -= 1)
            { /* block id: 405 */
                int64_t l_844 = 0x2D3495517D517E78L;
                int32_t l_866 = (-3L);
                int32_t l_870 = 2L;
                int32_t l_871 = 0x16C3E1FCL;
                int32_t l_886 = 0x3F53A45DL;
                int32_t l_887 = (-6L);
                int32_t l_888[8][1][6] = {{{9L,0x3857523FL,9L,9L,0x3857523FL,9L}},{{9L,0x3857523FL,9L,9L,0x3857523FL,9L}},{{9L,0x3857523FL,9L,9L,0x3857523FL,9L}},{{9L,0x3857523FL,9L,9L,0x3857523FL,9L}},{{9L,0x3857523FL,9L,9L,0x3857523FL,9L}},{{9L,0x3857523FL,9L,9L,0x3857523FL,9L}},{{9L,0x3857523FL,9L,9L,0x3857523FL,9L}},{{9L,0x3857523FL,9L,9L,0x3857523FL,9L}}};
                int32_t **l_898[3];
                int i, j, k;
                for (i = 0; i < 3; i++)
                    l_898[i] = &p_1275->g_545;
                if (((safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), 12)) & p_10))
                { /* block id: 406 */
                    int8_t *l_839 = &p_1275->g_684.f3;
                    int8_t **l_838 = &l_839;
                    int16_t *l_842 = (void*)0;
                    int32_t l_853 = 0x4A23C949L;
                    int32_t l_854 = 0x65CFCF96L;
                    int32_t l_855 = 4L;
                    int32_t l_856[8][5][6] = {{{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L}},{{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L}},{{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L}},{{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L}},{{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L}},{{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L}},{{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L}},{{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L},{4L,0x303825E4L,4L,4L,0x303825E4L,4L}}};
                    int i, j, k;
                    (*p_1275->g_829) = l_828;
                    (*p_1275->g_227) = (p_1275->g_831 , ((safe_lshift_func_uint16_t_u_u((+((safe_mod_func_int64_t_s_s(((l_810 ^ ((((void*)0 != &p_1275->g_620) != (safe_add_func_int16_t_s_s(((void*)0 == l_838), (0x37BF71B4L < 0x2752BF40L)))) & (safe_lshift_func_uint8_t_u_u(p_10, p_10)))) <= p_10), 18446744073709551612UL)) < p_10)), 7)) || GROUP_DIVERGE(2, 1)));
                    if ((p_10 <= (l_843 |= ((void*)0 == (*p_1275->g_484)))))
                    { /* block id: 410 */
                        int32_t *l_845 = (void*)0;
                        int32_t *l_846 = &l_843;
                        int32_t *l_848 = (void*)0;
                        int32_t *l_849 = (void*)0;
                        int32_t *l_850 = &p_1275->g_59[0][7][0];
                        int32_t *l_851 = &p_1275->g_59[0][7][0];
                        int32_t *l_852[5][3][5] = {{{&p_1275->g_3,(void*)0,&p_1275->g_3,&p_1275->g_3,(void*)0},{&p_1275->g_3,(void*)0,&p_1275->g_3,&p_1275->g_3,(void*)0},{&p_1275->g_3,(void*)0,&p_1275->g_3,&p_1275->g_3,(void*)0}},{{&p_1275->g_3,(void*)0,&p_1275->g_3,&p_1275->g_3,(void*)0},{&p_1275->g_3,(void*)0,&p_1275->g_3,&p_1275->g_3,(void*)0},{&p_1275->g_3,(void*)0,&p_1275->g_3,&p_1275->g_3,(void*)0}},{{&p_1275->g_3,(void*)0,&p_1275->g_3,&p_1275->g_3,(void*)0},{&p_1275->g_3,(void*)0,&p_1275->g_3,&p_1275->g_3,(void*)0},{&p_1275->g_3,(void*)0,&p_1275->g_3,&p_1275->g_3,(void*)0}},{{&p_1275->g_3,(void*)0,&p_1275->g_3,&p_1275->g_3,(void*)0},{&p_1275->g_3,(void*)0,&p_1275->g_3,&p_1275->g_3,(void*)0},{&p_1275->g_3,(void*)0,&p_1275->g_3,&p_1275->g_3,(void*)0}},{{&p_1275->g_3,(void*)0,&p_1275->g_3,&p_1275->g_3,(void*)0},{&p_1275->g_3,(void*)0,&p_1275->g_3,&p_1275->g_3,(void*)0},{&p_1275->g_3,(void*)0,&p_1275->g_3,&p_1275->g_3,(void*)0}}};
                        int i, j, k;
                        l_872[0]++;
                    }
                    else
                    { /* block id: 412 */
                        volatile struct S0 *l_877[9] = {&p_1275->g_831,&p_1275->g_831,&p_1275->g_831,&p_1275->g_831,&p_1275->g_831,&p_1275->g_831,&p_1275->g_831,&p_1275->g_831,&p_1275->g_831};
                        int i;
                        (*p_1275->g_718) = p_1275->g_875;
                        if (l_810)
                            continue;
                        p_1275->g_878[3] = p_1275->g_876;
                        if (p_10)
                            continue;
                    }
                }
                else
                { /* block id: 418 */
                    int32_t *l_879 = &l_869;
                    int32_t *l_880 = &l_863;
                    int32_t *l_881 = &l_859;
                    int32_t *l_882 = &l_871;
                    int32_t *l_883 = (void*)0;
                    int32_t *l_884 = &l_860[0][0];
                    int32_t *l_885[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_885[i] = &l_865[3][1];
                    l_894--;
                    (*l_881) &= (p_1275->g_897[4] , p_10);
                }
                l_899[2] = (void*)0;
                for (p_1275->g_211 = 0; (p_1275->g_211 <= 1); p_1275->g_211 += 1)
                { /* block id: 425 */
                    for (l_858 = 2; (l_858 >= 0); l_858 -= 1)
                    { /* block id: 428 */
                        (**p_1275->g_394) = (l_892[1] > p_10);
                    }
                    for (p_1275->g_692.f3 = 1; (p_1275->g_692.f3 >= 0); p_1275->g_692.f3 -= 1)
                    { /* block id: 433 */
                        uint32_t *l_902 = (void*)0;
                        uint32_t *l_903 = &l_872[0];
                        union U3 *l_910 = (void*)0;
                        uint8_t *l_915 = &p_1275->g_2[1][0][0];
                        uint8_t *l_916 = &l_810;
                        int32_t l_917[7][6] = {{(-4L),0x4AE79690L,0x4A377CC5L,0x789CEE5AL,(-9L),0x789CEE5AL},{(-4L),0x4AE79690L,0x4A377CC5L,0x789CEE5AL,(-9L),0x789CEE5AL},{(-4L),0x4AE79690L,0x4A377CC5L,0x789CEE5AL,(-9L),0x789CEE5AL},{(-4L),0x4AE79690L,0x4A377CC5L,0x789CEE5AL,(-9L),0x789CEE5AL},{(-4L),0x4AE79690L,0x4A377CC5L,0x789CEE5AL,(-9L),0x789CEE5AL},{(-4L),0x4AE79690L,0x4A377CC5L,0x789CEE5AL,(-9L),0x789CEE5AL},{(-4L),0x4AE79690L,0x4A377CC5L,0x789CEE5AL,(-9L),0x789CEE5AL}};
                        int i, j;
                        l_917[0][5] ^= ((((*l_903) = (safe_lshift_func_int16_t_s_s(l_860[(p_1275->g_211 + 7)][(p_1275->g_692.f3 + 1)], l_860[(p_1275->g_693.f3 + 3)][(p_1275->g_211 + 1)]))) >= (l_904[9][0][8] != &p_1275->g_226)) || ((safe_rshift_func_uint16_t_u_u((2UL <= ((void*)0 == l_910)), 4)) , ((p_1275->g_911 , ((*l_916) = ((*l_915) = (safe_add_func_uint8_t_u_u((p_1275->g_914 && p_1275->g_467), (-1L)))))) ^ (*p_11))));
                    }
                    if (p_1275->g_875.f0)
                        goto lbl_1221;
                }
            }
            l_899[0] = &l_865[3][7];
            l_892[2] &= ((l_843 = (p_1275->g_59[0][7][0] &= ((((FAKE_DIVERGE(p_1275->local_2_offset, get_local_id(2), 10) < ((safe_lshift_func_uint16_t_u_u((((*l_932) &= (!((safe_lshift_func_int8_t_s_s(((p_10 | (((~(safe_add_func_int64_t_s_s(0L, ((((l_924 != (0x2371L > (safe_div_func_uint32_t_u_u((((safe_add_func_int32_t_s_s(0x0D1E00ABL, (safe_mul_func_int8_t_s_s(((+(1L | (0xEE133EBEL | p_10))) && (-1L)), p_1275->g_897[4].f0)))) >= l_931) , l_869), FAKE_DIVERGE(p_1275->local_0_offset, get_local_id(0), 10))))) | p_10) >= p_10) || p_10)))) != p_1275->g_79.f0) , (**p_1275->g_394))) && FAKE_DIVERGE(p_1275->group_1_offset, get_group_id(1), 10)), (*p_9))) < (*p_1275->g_41)))) , FAKE_DIVERGE(p_1275->group_0_offset, get_group_id(0), 10)), 3)) >= p_10)) , p_10) < p_10) , 0x7F78E71DL))) && l_891);
            for (p_1275->g_681.f3 = 4; (p_1275->g_681.f3 >= 1); p_1275->g_681.f3 -= 1)
            { /* block id: 448 */
                return (*p_1275->g_227);
            }
        }
lbl_1221:
        if ((safe_div_func_uint16_t_u_u(p_10, p_10)))
        { /* block id: 452 */
            int32_t *l_935 = &l_868;
            int32_t l_945 = 0x13C7DA38L;
            struct S1 **l_948 = &p_1275->g_718;
            int16_t *l_972 = &p_1275->g_355[3];
            int16_t **l_971 = &l_972;
            (*p_1275->g_227) = 9L;
            (*p_1275->g_775) = l_935;
            for (p_1275->g_68.f0 = 0; (p_1275->g_68.f0 <= 9); p_1275->g_68.f0++)
            { /* block id: 457 */
                uint32_t *l_942 = &p_1275->g_161;
                l_945 &= (p_1275->g_875.f1 == (safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(253UL, 4)), ((*l_935) = (((*l_942)++) ^ p_10)))));
            }
            if (((l_946 == ((*l_948) = l_947)) || (~p_1275->g_480[4])))
            { /* block id: 463 */
                int32_t *l_951 = &p_1275->g_3;
                for (p_1275->g_425.f3 = 0; (p_1275->g_425.f3 < (-13)); p_1275->g_425.f3 = safe_sub_func_uint64_t_u_u(p_1275->g_425.f3, 4))
                { /* block id: 466 */
                    return p_10;
                }
                l_951 = l_951;
                for (p_1275->g_692.f0 = 0; (p_1275->g_692.f0 <= 2); p_1275->g_692.f0 += 1)
                { /* block id: 472 */
                    int8_t l_953[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_953[i] = 0L;
                    for (p_1275->g_330.f3 = 8; (p_1275->g_330.f3 >= 0); p_1275->g_330.f3 -= 1)
                    { /* block id: 475 */
                        int32_t l_952 = 3L;
                        if ((*l_951))
                            break;
                        l_953[0] = l_952;
                    }
                    for (p_1275->g_687.f3 = 7; (p_1275->g_687.f3 >= 1); p_1275->g_687.f3 -= 1)
                    { /* block id: 481 */
                        uint64_t l_954[3][4] = {{18446744073709551609UL,18446744073709551609UL,18446744073709551609UL,18446744073709551609UL},{18446744073709551609UL,18446744073709551609UL,18446744073709551609UL,18446744073709551609UL},{18446744073709551609UL,18446744073709551609UL,18446744073709551609UL,18446744073709551609UL}};
                        union U2 **l_957 = &p_1275->g_830;
                        int i, j;
                        l_954[2][3]--;
                        (*l_957) = (*p_1275->g_829);
                    }
                }
            }
            else
            { /* block id: 486 */
                uint32_t *l_973 = (void*)0;
                uint32_t *l_974 = &p_1275->g_161;
                l_975[1] |= (safe_sub_func_uint8_t_u_u(((((*l_974) = (((((0xF202E1BBL <= ((p_1275->g_960 , (((255UL ^ p_10) , (*p_1275->g_41)) | ((p_10 >= ((safe_lshift_func_int16_t_s_s((*l_935), 14)) , (safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(((0xA0C589E0L || (safe_mod_func_int16_t_s_s(((((*p_11) = (safe_sub_func_uint16_t_u_u((((l_971 == (void*)0) && p_1275->g_690.f0) != 0x1C6B3A5CL), 2L))) >= p_1275->g_42[6][3]) | l_864), 0x0A09L))) == p_10), (*l_935))), p_1275->g_698.f0)))) <= (*p_1275->g_41)))) || l_869)) ^ 1L) > (*l_935)) , (void*)0) != (void*)0)) && FAKE_DIVERGE(p_1275->global_0_offset, get_global_id(0), 10)) , 0x36L), (-5L)));
            }
        }
        else
        { /* block id: 491 */
            int64_t l_976 = 0x12EE1D8F3373D8CFL;
            int32_t l_977 = 0x72AAAB58L;
            int32_t l_978 = (-3L);
            int32_t l_979 = 0x491D14E4L;
            int32_t l_980 = 0x7D051AFEL;
            int32_t l_1011 = 0x5CFE8CEDL;
            uint8_t *l_1029 = (void*)0;
            union U3 *l_1053 = &p_1275->g_330;
            int64_t l_1096 = 0x141BE7EEDEBA8029L;
            int32_t **l_1108 = &p_1275->g_545;
            int32_t ***l_1116 = &l_905[0][3];
            uint32_t **l_1177[6][3][4] = {{{&l_824,&l_824,(void*)0,(void*)0},{&l_824,&l_824,(void*)0,(void*)0},{&l_824,&l_824,(void*)0,(void*)0}},{{&l_824,&l_824,(void*)0,(void*)0},{&l_824,&l_824,(void*)0,(void*)0},{&l_824,&l_824,(void*)0,(void*)0}},{{&l_824,&l_824,(void*)0,(void*)0},{&l_824,&l_824,(void*)0,(void*)0},{&l_824,&l_824,(void*)0,(void*)0}},{{&l_824,&l_824,(void*)0,(void*)0},{&l_824,&l_824,(void*)0,(void*)0},{&l_824,&l_824,(void*)0,(void*)0}},{{&l_824,&l_824,(void*)0,(void*)0},{&l_824,&l_824,(void*)0,(void*)0},{&l_824,&l_824,(void*)0,(void*)0}},{{&l_824,&l_824,(void*)0,(void*)0},{&l_824,&l_824,(void*)0,(void*)0},{&l_824,&l_824,(void*)0,(void*)0}}};
            int16_t ***l_1211[3][3][7] = {{{&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208},{&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208},{&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208}},{{&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208},{&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208},{&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208}},{{&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208},{&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208},{&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208,&l_1208}}};
            uint64_t l_1218 = 0UL;
            int i, j, k;
            l_981++;
            for (p_1275->g_960.f0 = 0; (p_1275->g_960.f0 < 45); p_1275->g_960.f0 = safe_add_func_uint16_t_u_u(p_1275->g_960.f0, 7))
            { /* block id: 495 */
                int32_t l_1020 = 0x0D1B7FCBL;
                union U2 *l_1021 = &p_1275->g_1022;
                int32_t l_1026 = 0x5B2C759CL;
                uint8_t **l_1039[7];
                uint32_t **l_1049 = (void*)0;
                int32_t **l_1066 = &p_1275->g_545;
                struct S1 *l_1067 = &p_1275->g_703[0];
                int32_t l_1123 = 0x39B87E78L;
                int32_t l_1127 = 0x4E6F3D2FL;
                int i;
                for (i = 0; i < 7; i++)
                    l_1039[i] = (void*)0;
                for (p_1275->g_752.f2 = 0; (p_1275->g_752.f2 <= 19); p_1275->g_752.f2 = safe_add_func_int64_t_s_s(p_1275->g_752.f2, 9))
                { /* block id: 498 */
                    uint16_t **l_1006 = &l_819;
                    int32_t l_1012 = 0x223F750AL;
                    int32_t l_1025 = (-1L);
                    l_988 = &l_977;
                    for (p_1275->g_620 = 0; (p_1275->g_620 > 25); p_1275->g_620++)
                    { /* block id: 502 */
                        uint64_t *l_1009[9][5] = {{&p_1275->g_213.f3,&l_931,&p_1275->g_752.f3,&l_931,&p_1275->g_213.f3},{&p_1275->g_213.f3,&l_931,&p_1275->g_752.f3,&l_931,&p_1275->g_213.f3},{&p_1275->g_213.f3,&l_931,&p_1275->g_752.f3,&l_931,&p_1275->g_213.f3},{&p_1275->g_213.f3,&l_931,&p_1275->g_752.f3,&l_931,&p_1275->g_213.f3},{&p_1275->g_213.f3,&l_931,&p_1275->g_752.f3,&l_931,&p_1275->g_213.f3},{&p_1275->g_213.f3,&l_931,&p_1275->g_752.f3,&l_931,&p_1275->g_213.f3},{&p_1275->g_213.f3,&l_931,&p_1275->g_752.f3,&l_931,&p_1275->g_213.f3},{&p_1275->g_213.f3,&l_931,&p_1275->g_752.f3,&l_931,&p_1275->g_213.f3},{&p_1275->g_213.f3,&l_931,&p_1275->g_752.f3,&l_931,&p_1275->g_213.f3}};
                        int32_t l_1010 = 0L;
                        int32_t l_1013 = 0x42317437L;
                        int32_t *l_1014 = (void*)0;
                        volatile int32_t * volatile *l_1016 = &p_1275->g_227;
                        int i, j;
                        p_1275->g_59[1][5][4] &= (p_1275->g_991 , (((((safe_sub_func_int8_t_s_s(((*p_9) = (safe_lshift_func_int8_t_s_u(((safe_mul_func_int16_t_s_s(((((safe_add_func_int16_t_s_s(p_1275->g_1000, ((p_1275->g_685.f3 , ((safe_lshift_func_int16_t_s_u(p_1275->g_2[0][0][3], 1)) | (safe_unary_minus_func_uint8_t_u(0xB3L)))) < (((safe_mod_func_int16_t_s_s((((void*)0 != l_1006) == (safe_add_func_int64_t_s_s(0x28F358090E5D8F42L, (l_1010 |= 0xFCF841BEC9C07F2BL)))), l_1011)) & l_1012) < p_10)))) == l_1013) <= p_10) , (*l_988)), 0x699FL)) , (*p_9)), 5))), l_980)) <= 0x0533L) && 0UL) == l_1013) , p_10));
                        l_1014 = &l_980;
                        (*l_1016) = (*p_1275->g_226);
                        if (p_10)
                            continue;
                    }
                    l_1026 |= (safe_add_func_int32_t_s_s((((l_1025 = ((1L && ((p_1275->g_1019[3] , (((&l_947 == &p_1275->g_718) , (l_1020 = ((FAKE_DIVERGE(p_1275->group_0_offset, get_group_id(0), 10) , 0xD5L) ^ p_1275->g_583.f2))) , l_828)) != l_1021)) || ((l_1012 &= (safe_lshift_func_int16_t_s_s(0x3072L, (*l_988)))) || 4294967295UL))) > 0L) , (-1L)), 0x2A9DAFB4L));
                }
                if ((safe_sub_func_int8_t_s_s((&p_1275->g_2[7][0][0] != l_1029), (*p_11))))
                { /* block id: 515 */
                    uint8_t ***l_1040[9] = {&l_1039[0],&l_1039[0],&l_1039[0],&l_1039[0],&l_1039[0],&l_1039[0],&l_1039[0],&l_1039[0],&l_1039[0]};
                    int32_t l_1046[3][8];
                    int16_t *l_1047 = &l_847;
                    int16_t *l_1048[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t l_1050 = 0x5ED90734L;
                    int i, j;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 8; j++)
                            l_1046[i][j] = (-1L);
                    }
                    l_977 ^= (l_1030 && ((*p_1275->g_1042) &= (p_10 > (((*p_9) = p_1275->g_649.f1) , (p_1275->g_503.f4 = ((-1L) > (safe_mod_func_int16_t_s_s((safe_sub_func_int64_t_s_s((safe_add_func_int8_t_s_s(p_1275->g_425.f0, (safe_add_func_int8_t_s_s(((*p_9) ^= 0L), ((p_1275->g_1041[1] = l_1039[2]) == l_1043))))), (safe_mul_func_int16_t_s_s(((*l_1047) &= (l_1046[0][6] ^= 0x7A8DL)), p_10)))), 65535UL))))))));
                    l_1050 = (l_1046[0][6] = ((void*)0 != l_1049));
                }
                else
                { /* block id: 526 */
                    union U3 *l_1054[7] = {&p_1275->g_67,&p_1275->g_67,&p_1275->g_67,&p_1275->g_67,&p_1275->g_67,&p_1275->g_67,&p_1275->g_67};
                    int32_t *l_1071 = (void*)0;
                    int32_t l_1097 = (-4L);
                    int32_t ***l_1115[6][7] = {{&l_1066,&l_905[0][3],(void*)0,&l_1066,&l_905[0][3],&l_1066,(void*)0},{&l_1066,&l_905[0][3],(void*)0,&l_1066,&l_905[0][3],&l_1066,(void*)0},{&l_1066,&l_905[0][3],(void*)0,&l_1066,&l_905[0][3],&l_1066,(void*)0},{&l_1066,&l_905[0][3],(void*)0,&l_1066,&l_905[0][3],&l_1066,(void*)0},{&l_1066,&l_905[0][3],(void*)0,&l_1066,&l_905[0][3],&l_1066,(void*)0},{&l_1066,&l_905[0][3],(void*)0,&l_1066,&l_905[0][3],&l_1066,(void*)0}};
                    uint32_t l_1117 = 4294967295UL;
                    uint16_t *l_1118 = &p_1275->g_1022.f2.f0;
                    int i, j;
                    (*p_1275->g_227) = (**p_1275->g_226);
                    for (l_810 = 0; (l_810 == 50); l_810 = safe_add_func_int8_t_s_s(l_810, 5))
                    { /* block id: 530 */
                        struct S1 **l_1068[6][8];
                        int i, j;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 8; j++)
                                l_1068[i][j] = &l_947;
                        }
                        l_1054[6] = l_1053;
                        (*p_1275->g_1056) = (*p_1275->g_507);
                        (**p_1275->g_508) = (p_1275->g_59[0][7][0] ^= ((((safe_sub_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s((safe_lshift_func_int8_t_s_s((safe_sub_func_int32_t_s_s(((l_1065 , (&l_988 == (l_1066 = &p_1275->g_545))) ^ ((*p_1275->g_41) |= p_10)), ((l_946 = l_1067) == (((safe_sub_func_int32_t_s_s(1L, ((void*)0 == l_1071))) < (safe_rshift_func_uint8_t_u_u(p_10, 2))) , (*p_1275->g_627))))), (*p_11))), l_1020)), p_10)) >= 0xA50F2B6C6E41FE2BL) & p_1275->g_33) == (-1L)));
                        p_1275->g_59[0][7][0] ^= (safe_div_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((+(((safe_lshift_func_int16_t_s_s((safe_div_func_uint32_t_u_u(((p_1275->g_1082 , (*p_1275->g_227)) <= (p_10 > ((safe_sub_func_int8_t_s_s(0x4AL, l_1085)) ^ p_10))), (safe_mul_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u((safe_div_func_int16_t_s_s(p_1275->g_699.f0, ((*l_819) &= (safe_mod_func_uint32_t_u_u((1L == ((p_1275->g_220[0].f4 = ((p_1275->g_685.f3 <= p_10) & p_1275->g_676.f3)) , (*p_1275->g_41))), l_1096))))), 0x0135L)), p_10)) <= p_1275->g_33), l_1097)))), p_10)) , p_10) >= p_10)), p_10)), GROUP_DIVERGE(2, 1)));
                    }
                    l_890 = (((*l_1118) = ((*l_819) ^= (safe_mod_func_int64_t_s_s((safe_sub_func_uint32_t_u_u(((safe_div_func_int32_t_s_s((*p_1275->g_227), p_10)) | ((safe_div_func_uint8_t_u_u((((*p_1275->g_1042) = ((0x6BA0E78AL && (safe_sub_func_int16_t_s_s((((l_1108 == (void*)0) , (safe_mod_func_uint8_t_u_u(((0x5BB9L ^ (safe_lshift_func_uint16_t_u_u((p_1275->g_678.f3 || ((l_1116 = l_1115[2][6]) == &l_1108)), p_1275->g_687.f0))) >= GROUP_DIVERGE(2, 1)), 0x85L))) <= 0x91L), 0x40B4L))) && (-4L))) < p_10), p_10)) | l_1117)), l_977)), 1UL)))) & 0UL);
                    (*p_1275->g_1120) = p_1275->g_1119;
                }
                if (((((**l_825) = p_10) , &p_1275->g_78) == (l_1121 = l_1121)))
                { /* block id: 551 */
                    int8_t l_1122 = 4L;
                    int32_t l_1124 = 0x11650209L;
                    int32_t l_1125 = (-1L);
                    int32_t l_1126 = 0x26701441L;
                    uint16_t l_1128 = 0xC32DL;
                    struct S0 *l_1158 = &p_1275->g_752;
                    ++l_1128;
                    for (p_1275->g_693.f0 = (-9); (p_1275->g_693.f0 <= 17); p_1275->g_693.f0 = safe_add_func_uint64_t_u_u(p_1275->g_693.f0, 3))
                    { /* block id: 555 */
                        (*l_1108) = &l_1125;
                    }
                    for (l_1128 = 2; (l_1128 < 12); l_1128++)
                    { /* block id: 560 */
                        uint64_t l_1153 = 0xDABDD04A8B221B67L;
                        uint32_t l_1161[7][8] = {{4294967286UL,4294967290UL,4294967286UL,4294967286UL,4294967290UL,4294967286UL,4294967286UL,4294967290UL},{4294967286UL,4294967290UL,4294967286UL,4294967286UL,4294967290UL,4294967286UL,4294967286UL,4294967290UL},{4294967286UL,4294967290UL,4294967286UL,4294967286UL,4294967290UL,4294967286UL,4294967286UL,4294967290UL},{4294967286UL,4294967290UL,4294967286UL,4294967286UL,4294967290UL,4294967286UL,4294967286UL,4294967290UL},{4294967286UL,4294967290UL,4294967286UL,4294967286UL,4294967290UL,4294967286UL,4294967286UL,4294967290UL},{4294967286UL,4294967290UL,4294967286UL,4294967286UL,4294967290UL,4294967286UL,4294967286UL,4294967290UL},{4294967286UL,4294967290UL,4294967286UL,4294967286UL,4294967290UL,4294967286UL,4294967286UL,4294967290UL}};
                        int16_t *l_1162[3][10] = {{&l_847,&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0],&l_847,&l_847,&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0],&l_847},{&l_847,&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0],&l_847,&l_847,&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0],&l_847},{&l_847,&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0],&l_847,&l_847,&p_1275->g_355[0],&p_1275->g_355[0],&p_1275->g_355[0],&l_847}};
                        int i, j;
                        (**p_1275->g_508) = (safe_div_func_uint64_t_u_u(((safe_lshift_func_int16_t_s_u((p_10 , ((safe_mod_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_s(((p_1275->g_330.f4 = (safe_div_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(0L, (p_1275->g_355[0] = (safe_lshift_func_int16_t_s_u((safe_mul_func_int16_t_s_s((safe_add_func_uint64_t_u_u((l_1153 != ((safe_lshift_func_int8_t_s_u(7L, (safe_sub_func_int64_t_s_s(((((((0x2AB5L || (+p_10)) , l_1158) == (void*)0) == ((((((safe_mul_func_uint8_t_u_u(((**l_1043) |= ((0x49811A1DE4225D7DL < p_10) || l_1161[6][0])), 0L)) != 0x54L) < 6L) ^ (*p_1275->g_41)) && FAKE_DIVERGE(p_1275->local_2_offset, get_local_id(2), 10)) , GROUP_DIVERGE(2, 1))) != l_1126) , (*p_1275->g_41)), l_1161[1][5])))) | p_10)), 1L)), p_10)), 8))))), FAKE_DIVERGE(p_1275->global_1_offset, get_global_id(1), 10)))) | p_10), p_10)), l_1163)) && p_10)), 12)) > 65531UL), 8UL));
                        if (p_1275->g_1164)
                            continue;
                    }
                }
                else
                { /* block id: 567 */
                    uint64_t l_1182 = 7UL;
                    int32_t l_1185 = 0L;
                    int32_t l_1187 = 0x52EE8A06L;
                    uint32_t l_1188 = 0xBABC1A70L;
                    int16_t *l_1206 = (void*)0;
                    int16_t **l_1205 = &l_1206;
                    int16_t ***l_1204 = &l_1205;
                    int16_t ****l_1210[4][5][8] = {{{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]}},{{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]}},{{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]}},{{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]},{(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0],(void*)0,(void*)0,&l_1207[0]}}};
                    int16_t ***l_1212 = (void*)0;
                    int i, j, k;
                    for (p_1275->g_79.f4 = 0; (p_1275->g_79.f4 != (-20)); --p_1275->g_79.f4)
                    { /* block id: 570 */
                        struct S0 *l_1170 = &p_1275->g_1168[3][0];
                        int32_t l_1183 = 0x19F50484L;
                        (*l_1108) = (p_1275->g_1167[1][0][2] , (void*)0);
                        (*l_1170) = p_1275->g_1168[1][0];
                        p_1275->g_1184 |= (((safe_mod_func_int8_t_s_s((p_10 || (safe_mul_func_uint8_t_u_u((*p_1275->g_1042), (((safe_lshift_func_uint16_t_u_u(((0x2EL < ((0x6B97B88B0CFFD118L ^ ((p_10 == p_1275->g_699.f2) , (l_1177[0][0][0] == &l_824))) | (safe_mod_func_int8_t_s_s((((l_1182 |= (safe_div_func_uint32_t_u_u(p_1275->g_59[0][7][0], 0x248BAD59L))) ^ p_10) == FAKE_DIVERGE(p_1275->local_2_offset, get_local_id(2), 10)), (*p_1275->g_1042))))) <= 0xCA80L), 3)) == p_10) > p_10)))), p_1275->g_695.f0)) || l_1183) , p_10);
                        return p_10;
                    }
                    l_1188--;
                    l_1123 &= ((((((((**l_1043) ^= (((*l_819) |= (safe_mul_func_uint16_t_u_u(p_10, p_10))) != (safe_div_func_uint64_t_u_u((safe_div_func_int64_t_s_s((*p_1275->g_41), (safe_rshift_func_int8_t_s_s((((safe_div_func_int8_t_s_s(((((safe_mod_func_uint16_t_u_u((safe_unary_minus_func_int16_t_s((p_1275->g_503.f4 = ((l_1185 == (((0x8D1FA93CL > ((((l_1204 != (l_1212 = (l_1211[2][1][0] = (l_1207[0] = l_1207[0])))) < (p_10 && (p_1275->g_752.f0++))) == ((safe_rshift_func_int16_t_s_s(((p_1275->g_1217 , 1L) , (-3L)), p_10)) != p_10)) == (-2L))) | FAKE_DIVERGE(p_1275->group_2_offset, get_group_id(2), 10)) || p_10)) >= 0x5D7EL)))), p_10)) | 1UL) != 65535UL) != p_1275->g_1184), 0x16L)) || (*p_1275->g_41)) != p_10), p_1275->g_701[0][0].f0)))), p_10)))) && p_10) < 0x432B4E9B6AAF3891L) != (*p_1275->g_41)) < p_10) <= p_10) ^ 18446744073709551615UL);
                }
                --l_1218;
            }
        }
        for (p_1275->g_330.f3 = (-12); (p_1275->g_330.f3 > 19); p_1275->g_330.f3 = safe_add_func_uint16_t_u_u(p_1275->g_330.f3, 6))
        { /* block id: 593 */
            int32_t l_1232 = 0x01FB6974L;
            int32_t l_1234 = 1L;
            int32_t l_1235 = 4L;
            int32_t l_1236 = 1L;
            int32_t l_1237[3][6] = {{3L,3L,3L,3L,3L,3L},{3L,3L,3L,3L,3L,3L},{3L,3L,3L,3L,3L,3L}};
            struct S1 *l_1245 = &p_1275->g_694;
            struct S1 *l_1246 = &p_1275->g_68;
            uint64_t ***l_1249 = &l_1247;
            int32_t *l_1250 = &p_1275->g_59[2][3][5];
            int i, j;
            for (p_1275->g_693.f3 = 0; (p_1275->g_693.f3 <= 1); p_1275->g_693.f3 += 1)
            { /* block id: 596 */
                int32_t l_1229 = 0x63063A76L;
                int32_t l_1238 = 0x37AFCFBAL;
                int32_t l_1239 = 1L;
                int32_t l_1240 = (-1L);
                int32_t l_1241[6];
                int i;
                for (i = 0; i < 6; i++)
                    l_1241[i] = 1L;
                for (p_1275->g_503.f0 = 0; (p_1275->g_503.f0 <= 1); p_1275->g_503.f0 += 1)
                { /* block id: 599 */
                    uint32_t *l_1225 = &l_1163;
                    uint32_t **l_1224[8] = {(void*)0,&l_1225,(void*)0,(void*)0,&l_1225,(void*)0,(void*)0,&l_1225};
                    int8_t l_1228 = 0x5FL;
                    int32_t l_1233[6][6][1] = {{{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL}},{{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL}},{{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL}},{{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL}},{{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL}},{{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL},{0x5BB5733EL}}};
                    uint64_t l_1242 = 0x9217CB350E8F0485L;
                    int i, j, k;
                    p_1275->g_1226 = l_1224[6];
                    ++l_1242;
                }
                l_1246 = l_1245;
                (*p_1275->g_227) = l_1238;
            }
            (*l_1249) = l_1247;
            l_1250 = &l_1237[2][2];
            if (p_10)
                continue;
        }
    }
    (*p_1275->g_1252) = p_1275->g_1251;
    (*l_1253) = (*p_1275->g_1056);
    return p_10;
}


/* ------------------------------------------ */
/* 
 * reads : p_1275->g_597.f0 p_1275->g_633 p_1275->g_161 p_1275->g_211 p_1275->g_2 p_1275->g_18 p_1275->g_69.f0 p_1275->g_41 p_1275->g_42 p_1275->g_649 p_1275->g_545 p_1275->g_597.f3 p_1275->g_672 p_1275->g_213.f0 p_1275->g_718 p_1275->g_364 p_1275->g_227 p_1275->g_119 p_1275->g_443 p_1275->g_480 p_1275->g_484 p_1275->g_503 p_1275->g_704.f0 p_1275->g_699.f0 p_1275->g_213.f1 p_1275->g_752 p_1275->g_762 p_1275->g_355 p_1275->g_159 p_1275->g_769 p_1275->g_771 p_1275->g_171 p_1275->g_775 p_1275->g_68.f0 p_1275->g_691.f3 p_1275->g_425.f0 p_1275->g_793 p_1275->g_394 p_1275->g_692.f0 p_1275->g_33
 * writes: p_1275->g_2 p_1275->g_425.f3 p_1275->g_18 p_1275->g_33 p_1275->g_503.f1 p_1275->g_300 p_1275->g_545 p_1275->g_650 p_1275->g_213.f0 p_1275->g_161 p_1275->g_687.f0 p_1275->g_171 p_1275->g_48 p_1275->g_50 p_1275->g_480 p_1275->g_78 p_1275->g_704.f0 p_1275->g_355 p_1275->g_119 p_1275->g_703.f3 p_1275->g_220.f4 p_1275->g_68.f0 p_1275->g_691.f3 p_1275->g_425.f0 p_1275->g_692.f0
 */
int8_t * func_12(int8_t * p_13, int32_t  p_14, int64_t  p_15, uint32_t  p_16, struct S4 * p_1275)
{ /* block id: 299 */
    uint64_t l_632 = 0xE7D1F7B0BD6536BDL;
    uint8_t *l_642 = &p_1275->g_2[3][1][1];
    int32_t l_643 = (-6L);
    int32_t l_663 = 3L;
    struct S1 *l_673 = (void*)0;
    uint16_t *l_708 = (void*)0;
    int32_t *l_755 = (void*)0;
    uint32_t l_773 = 0x61C93523L;
    int32_t l_782[9][2][10] = {{{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL},{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL}},{{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL},{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL}},{{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL},{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL}},{{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL},{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL}},{{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL},{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL}},{{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL},{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL}},{{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL},{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL}},{{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL},{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL}},{{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL},{0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL,0x7C159BADL,0x3A8DE1ECL,0x764C6009L,0x3A8DE1ECL,0x7C159BADL}}};
    int64_t l_788 = 1L;
    int32_t l_802 = 1L;
    int i, j, k;
lbl_776:
    if ((l_643 = (p_1275->g_597.f0 > ((*p_13) = (safe_sub_func_int64_t_s_s((((((((safe_sub_func_int16_t_s_s((l_632 >= ((p_1275->g_633[0][3] , l_632) <= (safe_mod_func_int8_t_s_s(((safe_mod_func_int8_t_s_s(((p_1275->g_161 ^ (((safe_div_func_int8_t_s_s((p_1275->g_425.f3 = ((((*l_642) ^= (safe_mod_func_int8_t_s_s((-8L), p_1275->g_211))) == (0x02L <= p_14)) , (*p_13))), p_15)) == l_632) , l_632)) || 0x9FL), p_1275->g_69.f0)) & l_632), 255UL)))), p_15)) ^ p_14) >= 0x4B967934L) != p_15) , 0UL) & p_15) , p_14), (*p_1275->g_41)))))))
    { /* block id: 304 */
        int32_t l_661 = 4L;
        int16_t *l_774 = &p_1275->g_220[0].f4;
        for (p_1275->g_33 = (-7); (p_1275->g_33 != 24); p_1275->g_33 = safe_add_func_int64_t_s_s(p_1275->g_33, 1))
        { /* block id: 307 */
            int32_t **l_646 = &p_1275->g_545;
            struct S1 *l_716 = &p_1275->g_717;
            int64_t *l_728 = &p_1275->g_33;
            for (p_1275->g_503.f1 = 0; p_1275->g_503.f1 < 3; p_1275->g_503.f1 += 1)
            {
                p_1275->g_300[p_1275->g_503.f1] = 0x04L;
            }
            (*l_646) = &l_643;
            for (p_14 = (-3); (p_14 != 1); p_14++)
            { /* block id: 312 */
                uint16_t *l_707[6];
                int32_t l_741 = (-6L);
                int32_t **l_757 = &p_1275->g_171;
                int8_t *l_772 = &p_1275->g_703[1].f3;
                int i;
                for (i = 0; i < 6; i++)
                    l_707[i] = &p_1275->g_69.f0;
                p_1275->g_650 = p_1275->g_649;
                if (((**l_646) < (-6L)))
                { /* block id: 314 */
                    uint32_t l_658 = 0xB8A368A4L;
                    uint16_t *l_662 = (void*)0;
                    struct S1 *l_674[9][5][5] = {{{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0}},{{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0}},{{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0}},{{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0}},{{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0}},{{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0}},{{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0}},{{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0}},{{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0},{&p_1275->g_703[1],&p_1275->g_690,&p_1275->g_695,&p_1275->g_682[3][0][0],(void*)0}}};
                    int i, j, k;
                    for (p_15 = 0; (p_15 <= 3); p_15 += 1)
                    { /* block id: 317 */
                        int32_t *l_651 = &p_1275->g_59[0][7][0];
                        int32_t *l_652 = &p_1275->g_59[0][6][4];
                        int32_t *l_653 = &l_643;
                        int32_t *l_654 = &l_643;
                        int32_t *l_655 = &l_643;
                        int32_t *l_656 = &p_1275->g_59[0][7][0];
                        int32_t *l_657[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        --l_658;
                    }
                    l_663 = ((((((*l_642) |= p_1275->g_597.f3) , l_632) <= (l_661 = l_661)) || (-9L)) ^ p_15);
                    for (p_15 = 0; (p_15 >= (-20)); --p_15)
                    { /* block id: 325 */
                        uint16_t **l_709 = (void*)0;
                        uint16_t **l_710 = &l_708;
                        uint32_t *l_715 = &p_1275->g_161;
                        l_661 = (safe_add_func_uint8_t_u_u(((safe_sub_func_uint32_t_u_u(((*l_715) = (safe_mod_func_int32_t_s_s((0x433D143F0DFC97C8L & (((p_1275->g_672 , l_673) == l_674[4][1][1]) == (safe_div_func_uint16_t_u_u((l_707[5] == ((*l_710) = l_708)), (p_1275->g_213.f0++))))), (safe_lshift_func_int16_t_s_u(0x16E4L, 12))))), 0x7EE45982L)) > ((FAKE_DIVERGE(p_1275->global_1_offset, get_global_id(1), 10) , l_716) == p_1275->g_718)), l_658));
                    }
                    for (p_1275->g_687.f0 = 23; (p_1275->g_687.f0 > 15); p_1275->g_687.f0 = safe_sub_func_int32_t_s_s(p_1275->g_687.f0, 3))
                    { /* block id: 333 */
                        uint32_t *l_735 = &p_1275->g_704.f0;
                        int16_t *l_738[6][2];
                        int16_t **l_737 = &l_738[4][0];
                        int16_t ***l_736 = &l_737;
                        int i, j;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_738[i][j] = &p_1275->g_355[0];
                        }
                        if ((**p_1275->g_364))
                            break;
                        (*p_1275->g_443) = ((*l_646) = &l_643);
                        (*p_1275->g_227) = (safe_lshift_func_uint16_t_u_s(((safe_mul_func_uint8_t_u_u(p_14, ((*l_642) = ((safe_sub_func_uint8_t_u_u(((p_15 & p_14) , ((func_39(l_728, p_1275) , (safe_sub_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u(((safe_mod_func_uint32_t_u_u(((-8L) && ((l_741 &= ((***l_736) = (((*l_735) ^= p_1275->g_480[4]) , (l_736 != ((safe_mul_func_int8_t_s_s((*p_13), p_1275->g_699.f0)) , (void*)0))))) >= p_1275->g_213.f1)), 0x7E08339DL)) == p_14), l_661)), 0xA4B7L))) > p_15)), p_15)) , p_16)))) || p_15), 4));
                    }
                }
                else
                { /* block id: 343 */
                    uint8_t l_746[5] = {0x1AL,0x1AL,0x1AL,0x1AL,0x1AL};
                    int i;
                    (*p_1275->g_227) |= l_643;
                    (*p_1275->g_545) = (0x2AL != (safe_div_func_uint16_t_u_u((safe_div_func_int8_t_s_s(l_746[2], 0x1AL)), (safe_lshift_func_uint8_t_u_u((safe_unary_minus_func_int64_t_s((*p_1275->g_41))), (~(safe_mul_func_int16_t_s_s(((p_1275->g_752 , p_14) == ((+(safe_mul_func_int16_t_s_s(0x46F4L, p_15))) <= p_1275->g_42[2][2])), (-9L)))))))));
                }
                (*l_757) = ((*l_646) = (l_755 = &l_661));
                (*l_755) = (((safe_lshift_func_int8_t_s_u(((safe_lshift_func_int8_t_s_u(((*l_772) = (p_1275->g_762 , (safe_rshift_func_int8_t_s_s(((*p_13) , (((safe_div_func_int64_t_s_s((p_1275->g_355[4] && 0x063B49BFL), (8L | ((void*)0 == p_1275->g_159[4])))) < 0x759DL) > ((((*p_13) &= ((void*)0 == p_1275->g_769)) , p_1275->g_771) , p_15))), 3)))), 3)) | 5L), (**l_757))) && (-1L)) == 0x30F25CA2D5CE6EA0L);
            }
            if (p_1275->g_752.f0)
                goto lbl_776;
        }
        (*p_1275->g_227) = ((((*l_774) = l_773) >= p_16) == l_661);
    }
    else
    { /* block id: 357 */
        (*p_1275->g_775) = &l_643;
    }
    (*p_1275->g_227) = l_773;
    for (p_1275->g_68.f0 = 0; (p_1275->g_68.f0 <= 3); p_1275->g_68.f0 += 1)
    { /* block id: 364 */
        int16_t l_781 = 1L;
        int32_t l_783 = 0x7E13B6B2L;
        int32_t l_784 = 0x49A881D7L;
        int32_t l_785[6][7] = {{4L,0L,1L,1L,3L,4L,1L},{4L,0L,1L,1L,3L,4L,1L},{4L,0L,1L,1L,3L,4L,1L},{4L,0L,1L,1L,3L,4L,1L},{4L,0L,1L,1L,3L,4L,1L},{4L,0L,1L,1L,3L,4L,1L}};
        int16_t l_787 = (-3L);
        uint8_t l_789 = 0x49L;
        uint16_t l_796 = 65526UL;
        int64_t l_801 = 0x170BED2741A93095L;
        int i, j;
        for (p_1275->g_691.f3 = 0; (p_1275->g_691.f3 <= 3); p_1275->g_691.f3 += 1)
        { /* block id: 367 */
            int32_t *l_777 = &p_1275->g_59[0][7][0];
            int32_t *l_778 = (void*)0;
            int32_t *l_779 = &p_1275->g_59[2][5][4];
            int32_t *l_780[1];
            int64_t l_786[1];
            int64_t l_800[2];
            int32_t l_803 = (-6L);
            uint64_t l_804 = 0xFD193BD6A2ABA334L;
            int i;
            for (i = 0; i < 1; i++)
                l_780[i] = &p_1275->g_59[0][7][0];
            for (i = 0; i < 1; i++)
                l_786[i] = 4L;
            for (i = 0; i < 2; i++)
                l_800[i] = 3L;
            l_789++;
            for (p_1275->g_425.f0 = 0; (p_1275->g_425.f0 <= 8); p_1275->g_425.f0 += 1)
            { /* block id: 371 */
                int64_t l_794 = 1L;
                int32_t l_795 = (-1L);
                (*p_1275->g_793) = l_780[0];
                l_796++;
                if ((**p_1275->g_394))
                    continue;
            }
            l_804++;
        }
        for (p_1275->g_692.f0 = 0; (p_1275->g_692.f0 <= 3); p_1275->g_692.f0 += 1)
        { /* block id: 380 */
            uint16_t l_807[1][3][2];
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                {
                    for (k = 0; k < 2; k++)
                        l_807[i][j][k] = 65535UL;
                }
            }
            l_807[0][0][0]++;
        }
    }
    return &p_1275->g_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_1275->g_226 p_1275->g_227 p_1275->g_119 p_1275->g_211 p_1275->g_394 p_1275->g_67.f0 p_1275->g_300 p_1275->g_355 p_1275->g_213.f1 p_1275->g_41 p_1275->g_42 p_1275->g_480 p_1275->g_484 p_1275->g_443 p_1275->g_503 p_1275->g_2 p_1275->g_68.f1 p_1275->g_375 p_1275->g_59 p_1275->g_225 p_1275->g_583 p_1275->g_213.f2 p_1275->g_213.f0 p_1275->g_18 p_1275->g_595 p_1275->g_596 p_1275->g_597 p_1275->g_320.f4 p_1275->g_503.f0 p_1275->g_213.f3 p_1275->g_68.f3
 * writes: p_1275->g_119 p_1275->g_69.f0 p_1275->g_2 p_1275->g_545 p_1275->g_67.f0 p_1275->g_330.f3 p_1275->g_48 p_1275->g_50 p_1275->g_18 p_1275->g_480 p_1275->g_78 p_1275->g_171 p_1275->g_211 p_1275->g_59 p_1275->g_425 p_1275->g_213.f3 p_1275->g_627
 */
int64_t  func_21(int8_t  p_22, int16_t  p_23, int32_t  p_24, int8_t * p_25, int8_t * p_26, struct S4 * p_1275)
{ /* block id: 247 */
    int32_t l_521 = 0x20189A8AL;
    uint32_t *l_550[10][10] = {{&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161},{&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161},{&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161},{&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161},{&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161},{&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161},{&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161},{&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161},{&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161},{&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161,&p_1275->g_161}};
    int16_t *l_559[1];
    int32_t l_560[4][2] = {{0x5C5850B3L,0x5C5850B3L},{0x5C5850B3L,0x5C5850B3L},{0x5C5850B3L,0x5C5850B3L},{0x5C5850B3L,0x5C5850B3L}};
    int64_t **l_584 = &p_1275->g_41;
    struct S1 *l_598 = &p_1275->g_425;
    int64_t *l_619[7][5][3] = {{{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0}},{{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0}},{{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0}},{{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0}},{{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0}},{{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0}},{{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0},{&p_1275->g_620,(void*)0,(void*)0}}};
    int32_t l_621 = 0x37F10ED4L;
    uint64_t *l_622 = &p_1275->g_213.f3;
    uint8_t l_623 = 0x27L;
    struct S1 * volatile **l_624 = (void*)0;
    struct S1 * volatile *l_626 = &l_598;
    struct S1 * volatile **l_625[2];
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_559[i] = &p_1275->g_355[1];
    for (i = 0; i < 2; i++)
        l_625[i] = &l_626;
    for (p_22 = 0; (p_22 <= 6); p_22 += 1)
    { /* block id: 250 */
        int32_t l_510 = 0x4AD962ECL;
        int16_t *l_541 = &p_1275->g_355[1];
        int16_t **l_540 = &l_541;
        uint16_t *l_542 = &p_1275->g_69.f0;
        uint8_t *l_543[7] = {&p_1275->g_2[1][1][0],&p_1275->g_2[1][1][0],&p_1275->g_2[1][1][0],&p_1275->g_2[1][1][0],&p_1275->g_2[1][1][0],&p_1275->g_2[1][1][0],&p_1275->g_2[1][1][0]};
        int32_t **l_544[10][10] = {{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,(void*)0,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,(void*)0,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,(void*)0,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,(void*)0,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,(void*)0,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,(void*)0,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,(void*)0,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,(void*)0,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,(void*)0,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,(void*)0,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171,&p_1275->g_171}};
        int i, j;
        for (p_24 = 6; (p_24 >= 0); p_24 -= 1)
        { /* block id: 253 */
            int32_t *l_511 = (void*)0;
            int32_t **l_512 = &l_511;
            if ((**p_1275->g_226))
                break;
            if (p_23)
                continue;
            (*p_1275->g_227) = l_510;
            (*l_512) = l_511;
        }
        (**p_1275->g_394) = (((safe_lshift_func_uint8_t_u_s((0x40L != (((safe_add_func_int8_t_s_s(((safe_lshift_func_int16_t_s_s((safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_1275->local_0_offset, get_local_id(0), 10), FAKE_DIVERGE(p_1275->group_1_offset, get_group_id(1), 10))), ((l_521 == ((p_1275->g_545 = (((safe_lshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((+(p_1275->g_2[0][0][2] = ((((0xCFF8L > (((safe_mul_func_int16_t_s_s(((0UL <= (safe_mul_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((0x0AA1L | (safe_div_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_u(((-1L) > (safe_lshift_func_uint16_t_u_u(((*l_542) = (&p_1275->g_355[2] == ((*l_540) = &p_1275->g_355[3]))), (p_22 , l_521)))), l_521)) & 1UL), 0x45L))), p_24)), 0x28L))) ^ (*p_26)), p_23)) != 0x11F1L) | 0x4B76L)) || 0x72L) > 1L) | l_521))), 0x47L)), 1L)), 5)) > p_24) , (void*)0)) != &p_24)) == p_24))) > 4UL), (*p_26))) == FAKE_DIVERGE(p_1275->global_2_offset, get_global_id(2), 10)) , l_521)), 3)) , p_22) , p_23);
        (*p_1275->g_227) = (**p_1275->g_226);
        for (p_1275->g_67.f0 = 0; (p_1275->g_67.f0 <= 2); p_1275->g_67.f0 += 1)
        { /* block id: 267 */
            for (p_1275->g_330.f3 = 0; (p_1275->g_330.f3 <= 2); p_1275->g_330.f3 += 1)
            { /* block id: 270 */
                int i;
                return p_1275->g_300[p_1275->g_67.f0];
            }
            if (p_23)
                break;
            if (p_22)
                break;
        }
    }
    if ((p_24 & ((safe_div_func_int8_t_s_s(l_521, (*p_25))) & (safe_rshift_func_uint8_t_u_u((((l_550[7][1] == (void*)0) || ((((+(GROUP_DIVERGE(1, 1) < (safe_rshift_func_int8_t_s_s((safe_rshift_func_int16_t_s_u((0xBBBDL > (l_560[2][1] = (p_23 , (safe_sub_func_uint32_t_u_u(1UL, ((safe_add_func_int32_t_s_s(p_22, l_521)) > (-1L))))))), 5)), p_1275->g_355[1])))) & 0x55L) && GROUP_DIVERGE(1, 1)) >= p_1275->g_213.f1)) ^ 0x3DL), l_521)))))
    { /* block id: 278 */
        int64_t *l_561 = &p_1275->g_33;
        uint8_t *l_572 = &p_1275->g_2[4][0][2];
        int32_t l_573 = 1L;
        union U3 *l_580 = (void*)0;
        int16_t **l_589 = (void*)0;
        int16_t ***l_590 = &l_589;
        int32_t *l_591 = &p_1275->g_59[1][2][2];
        (**p_1275->g_394) = ((((*p_1275->g_41) , ((void*)0 != l_561)) >= 0x5B03L) , ((safe_sub_func_uint16_t_u_u((((l_573 |= (safe_div_func_int32_t_s_s((func_39(&p_1275->g_42[1][1], p_1275) , (((0xB3L >= ((*p_26) = (safe_mod_func_int8_t_s_s((safe_sub_func_uint8_t_u_u(((*l_572) ^= ((safe_mul_func_int8_t_s_s((*p_26), ((~p_23) != p_22))) | 0x33L)), p_1275->g_68.f1)), (*p_25))))) | p_1275->g_375) & 5L)), 0x391FEA46L))) & 0xD78C5D1CE8DF31F3L) == p_1275->g_59[1][4][0]), l_560[2][1])) , (***p_1275->g_225)));
        (*p_1275->g_227) &= (l_560[0][0] &= p_23);
        (*l_591) &= (((safe_sub_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(((*l_572) = ((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1275->global_1_offset, get_global_id(1), 10), 2)) >= ((((((l_580 != l_580) || (((&l_561 != (void*)0) > (&l_561 == (p_1275->g_583 , l_584))) , ((((GROUP_DIVERGE(1, 1) | (safe_div_func_int16_t_s_s(((*p_26) || ((((((*l_590) = l_589) != (void*)0) , (-3L)) , p_23) <= p_22)), l_573))) > 4294967287UL) <= l_573) ^ 0x72968CB50BDD9D49L))) && (**p_1275->g_394)) , p_1275->g_213.f2) , 0x2B68L) || p_1275->g_213.f0))), p_1275->g_18)), 0x7AL)) , 0L) < FAKE_DIVERGE(p_1275->global_2_offset, get_global_id(2), 10));
    }
    else
    { /* block id: 288 */
        int64_t l_592 = 0x4620E8F94FF3F0B9L;
        int32_t *l_593 = &l_560[3][1];
        int32_t **l_594[4][10][1] = {{{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593}},{{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593}},{{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593}},{{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593},{&l_593}}};
        int i, j, k;
        l_560[2][1] &= l_592;
        p_1275->g_545 = ((*p_1275->g_443) = l_593);
        (*p_1275->g_596) = p_1275->g_595;
    }
    (*l_598) = p_1275->g_597;
    p_1275->g_627 = (((safe_mod_func_int8_t_s_s((((safe_div_func_uint32_t_u_u((safe_unary_minus_func_uint32_t_u(l_560[0][1])), p_24)) ^ ((!((((safe_lshift_func_int16_t_s_u(((safe_add_func_uint64_t_u_u(8UL, (!(l_560[2][1] <= 0xE1BCFA97EE63E898L)))) >= (((safe_add_func_uint8_t_u_u((((FAKE_DIVERGE(p_1275->group_0_offset, get_group_id(0), 10) & (((*l_622) ^= (safe_sub_func_uint8_t_u_u(1UL, (safe_sub_func_int16_t_s_s((p_1275->g_320.f4 <= ((safe_rshift_func_uint8_t_u_u(p_24, (((l_621 = (safe_unary_minus_func_uint32_t_u(((~(safe_add_func_int32_t_s_s(l_521, GROUP_DIVERGE(1, 1)))) <= 18446744073709551607UL)))) , l_560[0][0]) , 9UL))) > p_1275->g_503.f0)), 5L))))) || l_560[0][0])) && p_23) | 65530UL), p_1275->g_375)) != 18446744073709551613UL) & 0x142820ACAC8CE000L)), 4)) , 0x5E03L) == p_1275->g_595.f3) != p_24)) , l_560[2][1])) ^ 65535UL), p_1275->g_68.f3)) ^ l_623) , &p_1275->g_596);
    return p_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_1275->g_225 p_1275->g_226 p_1275->g_227 p_1275->g_507 p_1275->g_394 p_1275->g_508 p_1275->g_300
 * writes: p_1275->g_227
 */
uint64_t  func_36(int32_t  p_37, uint64_t  p_38, struct S4 * p_1275)
{ /* block id: 243 */
    (*p_1275->g_507) = (**p_1275->g_225);
    (*p_1275->g_508) = (*p_1275->g_394);
    return p_1275->g_300[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1275->g_50 p_1275->g_18 p_1275->g_480 p_1275->g_484 p_1275->g_443 p_1275->g_503
 * writes: p_1275->g_48 p_1275->g_50 p_1275->g_18 p_1275->g_480 p_1275->g_78 p_1275->g_171
 */
union U3  func_39(int64_t * p_40, struct S4 * p_1275)
{ /* block id: 9 */
    int32_t l_46 = 8L;
    int32_t *l_47 = &p_1275->g_48;
    int32_t *l_49[2][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_51[6] = {1L,1L,1L,1L,1L,1L};
    int32_t *l_485 = (void*)0;
    int32_t *l_486 = &p_1275->g_59[0][4][3];
    int32_t *l_487 = &p_1275->g_59[0][7][0];
    int32_t *l_488 = &l_51[0];
    int32_t *l_489 = &l_46;
    int32_t *l_490 = (void*)0;
    int32_t *l_491 = &l_51[3];
    int32_t *l_492 = &l_51[3];
    int32_t *l_493 = (void*)0;
    int32_t *l_494[3];
    uint8_t l_495 = 0x76L;
    int64_t l_498[7];
    uint32_t l_499 = 0x121F9973L;
    int32_t **l_502[2][6] = {{&l_494[2],&l_493,&l_494[2],&l_494[2],&l_493,&l_494[2]},{&l_494[2],&l_493,&l_494[2],&l_494[2],&l_493,&l_494[2]}};
    int i, j;
    for (i = 0; i < 3; i++)
        l_494[i] = &p_1275->g_59[0][7][0];
    for (i = 0; i < 7; i++)
        l_498[i] = 0x684AFBA4F378FAC1L;
    (*p_1275->g_484) = func_43(l_46, (l_51[0] &= ((*l_47) = l_46)), p_1275);
    --l_495;
    l_499--;
    (*p_1275->g_443) = &l_51[5];
    return p_1275->g_503;
}


/* ------------------------------------------ */
/* 
 * reads : p_1275->g_50 p_1275->g_18 p_1275->g_480
 * writes: p_1275->g_50 p_1275->g_18 p_1275->g_480
 */
union U3 * func_43(int16_t  p_44, int32_t  p_45, struct S4 * p_1275)
{ /* block id: 12 */
    union U3 *l_66[10] = {&p_1275->g_67,&p_1275->g_67,&p_1275->g_67,&p_1275->g_67,&p_1275->g_67,&p_1275->g_67,&p_1275->g_67,&p_1275->g_67,&p_1275->g_67,&p_1275->g_67};
    int32_t *l_402 = &p_1275->g_59[0][7][0];
    int32_t l_476 = 0x3E02D0E5L;
    int32_t l_479[2];
    int i;
    for (i = 0; i < 2; i++)
        l_479[i] = (-1L);
    for (p_44 = 11; (p_44 <= (-4)); p_44--)
    { /* block id: 15 */
        int32_t l_392[5] = {0L,0L,0L,0L,0L};
        uint64_t *l_426 = (void*)0;
        int8_t *l_463 = (void*)0;
        int32_t l_477 = 0x35C72214L;
        int32_t *l_478[8][9][3] = {{{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477}},{{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477}},{{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477}},{{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477}},{{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477}},{{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477}},{{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477}},{{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477},{&p_1275->g_59[0][7][0],(void*)0,&l_477}}};
        int i, j, k;
        for (p_1275->g_50 = (-22); (p_1275->g_50 <= 20); p_1275->g_50 = safe_add_func_uint64_t_u_u(p_1275->g_50, 2))
        { /* block id: 18 */
            uint16_t l_62 = 4UL;
            int64_t *l_65 = (void*)0;
            int32_t l_413 = 0x36627E46L;
            int32_t *l_442[5];
            int32_t *l_447 = &l_413;
            int i;
            for (i = 0; i < 5; i++)
                l_442[i] = &l_413;
            for (p_1275->g_18 = 22; (p_1275->g_18 < (-8)); --p_1275->g_18)
            { /* block id: 21 */
                int32_t *l_58 = &p_1275->g_59[0][7][0];
                int32_t *l_60 = &p_1275->g_59[0][3][4];
                int32_t *l_61 = (void*)0;
                int64_t *l_77 = &p_1275->g_42[1][1];
                int32_t *l_415 = &l_413;
                struct S1 *l_475 = &p_1275->g_425;
                --l_62;
            }
        }
        p_1275->g_480[4]--;
        if (p_44)
            break;
    }
    return &p_1275->g_67;
}


/* ------------------------------------------ */
/* 
 * reads : p_1275->g_48 p_1275->g_69.f0 p_1275->g_68.f3 p_1275->g_18 p_1275->g_159 p_1275->g_41 p_1275->g_42 p_1275->g_67.f0 p_1275->g_68.f0 p_1275->g_68.f2 p_1275->g_59
 * writes: p_1275->g_48 p_1275->g_69.f0 p_1275->g_42 p_1275->g_161 p_1275->g_59 p_1275->g_171 p_1275->g_79.f1
 */
int16_t  func_70(int16_t  p_71, int8_t * p_72, struct S4 * p_1275)
{ /* block id: 45 */
    int32_t *l_148 = &p_1275->g_59[1][3][2];
    int32_t l_166[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
    uint32_t l_167 = 0xBA0CDF28L;
    int32_t l_172 = 1L;
    uint32_t l_173 = 4294967295UL;
    int64_t l_240[1][10][5] = {{{(-7L),0x769E6BECDB6F072EL,(-7L),(-7L),0x769E6BECDB6F072EL},{(-7L),0x769E6BECDB6F072EL,(-7L),(-7L),0x769E6BECDB6F072EL},{(-7L),0x769E6BECDB6F072EL,(-7L),(-7L),0x769E6BECDB6F072EL},{(-7L),0x769E6BECDB6F072EL,(-7L),(-7L),0x769E6BECDB6F072EL},{(-7L),0x769E6BECDB6F072EL,(-7L),(-7L),0x769E6BECDB6F072EL},{(-7L),0x769E6BECDB6F072EL,(-7L),(-7L),0x769E6BECDB6F072EL},{(-7L),0x769E6BECDB6F072EL,(-7L),(-7L),0x769E6BECDB6F072EL},{(-7L),0x769E6BECDB6F072EL,(-7L),(-7L),0x769E6BECDB6F072EL},{(-7L),0x769E6BECDB6F072EL,(-7L),(-7L),0x769E6BECDB6F072EL},{(-7L),0x769E6BECDB6F072EL,(-7L),(-7L),0x769E6BECDB6F072EL}}};
    int32_t l_298 = 0L;
    uint16_t l_308 = 0UL;
    int32_t *l_378 = &l_298;
    int32_t *l_379 = &l_298;
    int32_t *l_380 = (void*)0;
    int32_t *l_381 = &l_166[6];
    int32_t *l_382 = &l_298;
    int32_t *l_383 = (void*)0;
    int32_t *l_384 = &p_1275->g_59[2][0][5];
    int32_t *l_385 = &l_166[4];
    int32_t *l_386 = &p_1275->g_59[0][7][0];
    int32_t *l_387 = &l_166[4];
    int32_t *l_388[8][2];
    uint64_t l_389 = 0x61B9C6BC016521D1L;
    int i, j, k;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
            l_388[i][j] = &p_1275->g_59[0][7][0];
    }
    for (p_1275->g_48 = (-20); (p_1275->g_48 <= 26); p_1275->g_48++)
    { /* block id: 48 */
        uint16_t *l_131 = &p_1275->g_69.f0;
        int32_t *l_149 = (void*)0;
        int32_t l_158[10][10];
        uint32_t *l_160 = &p_1275->g_161;
        int32_t *l_162 = &l_158[0][0];
        int32_t *l_163 = &p_1275->g_59[0][7][0];
        int32_t *l_164 = &l_158[9][0];
        int32_t *l_165[9] = {&p_1275->g_59[1][5][2],&p_1275->g_59[1][5][2],&p_1275->g_59[1][5][2],&p_1275->g_59[1][5][2],&p_1275->g_59[1][5][2],&p_1275->g_59[1][5][2],&p_1275->g_59[1][5][2],&p_1275->g_59[1][5][2],&p_1275->g_59[1][5][2]};
        int32_t **l_170[1][2][3] = {{{&l_162,&l_163,&l_162},{&l_162,&l_163,&l_162}}};
        int i, j, k;
        for (i = 0; i < 10; i++)
        {
            for (j = 0; j < 10; j++)
                l_158[i][j] = 0x375BE74CL;
        }
        (*l_148) |= ((safe_mul_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u((++(*l_131)), (1L != (((safe_add_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_s((((*l_160) = (((safe_lshift_func_int8_t_s_u((safe_rshift_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((((safe_add_func_uint32_t_u_u(p_1275->g_68.f3, (0x5AE9L ^ ((safe_sub_func_int64_t_s_s(((l_149 = l_148) == l_148), ((safe_sub_func_int64_t_s_s(((*p_1275->g_41) ^= (((safe_add_func_uint16_t_u_u((!p_1275->g_18), (l_148 != ((safe_lshift_func_uint16_t_u_s((safe_div_func_uint64_t_u_u(p_71, l_158[3][0])), 13)) , &l_158[6][6])))) , l_131) == p_1275->g_159[2])), p_1275->g_67.f0)) , 0UL))) | p_1275->g_67.f0)))) == 0xA3L) != 65530UL) , p_1275->g_68.f0), (*p_72))), l_158[9][2])), 4)) < p_71) == FAKE_DIVERGE(p_1275->global_2_offset, get_global_id(2), 10))) || 0x15CD3094L), 10)), 1L)) & p_1275->g_68.f2) || 0x5FD2DB43169765F1L)))), 0x8509L)) , p_71);
        l_167++;
        p_1275->g_171 = &l_158[3][0];
        l_173++;
    }
    for (l_173 = 0; (l_173 > 50); l_173 = safe_add_func_uint64_t_u_u(l_173, 5))
    { /* block id: 60 */
        int32_t **l_192 = &p_1275->g_171;
        int32_t **l_194[6][2][8] = {{{(void*)0,&l_148,&l_148,&l_148,&p_1275->g_171,&l_148,(void*)0,&p_1275->g_171},{(void*)0,&l_148,&l_148,&l_148,&p_1275->g_171,&l_148,(void*)0,&p_1275->g_171}},{{(void*)0,&l_148,&l_148,&l_148,&p_1275->g_171,&l_148,(void*)0,&p_1275->g_171},{(void*)0,&l_148,&l_148,&l_148,&p_1275->g_171,&l_148,(void*)0,&p_1275->g_171}},{{(void*)0,&l_148,&l_148,&l_148,&p_1275->g_171,&l_148,(void*)0,&p_1275->g_171},{(void*)0,&l_148,&l_148,&l_148,&p_1275->g_171,&l_148,(void*)0,&p_1275->g_171}},{{(void*)0,&l_148,&l_148,&l_148,&p_1275->g_171,&l_148,(void*)0,&p_1275->g_171},{(void*)0,&l_148,&l_148,&l_148,&p_1275->g_171,&l_148,(void*)0,&p_1275->g_171}},{{(void*)0,&l_148,&l_148,&l_148,&p_1275->g_171,&l_148,(void*)0,&p_1275->g_171},{(void*)0,&l_148,&l_148,&l_148,&p_1275->g_171,&l_148,(void*)0,&p_1275->g_171}},{{(void*)0,&l_148,&l_148,&l_148,&p_1275->g_171,&l_148,(void*)0,&p_1275->g_171},{(void*)0,&l_148,&l_148,&l_148,&p_1275->g_171,&l_148,(void*)0,&p_1275->g_171}}};
        uint16_t l_261[4] = {4UL,4UL,4UL,4UL};
        int64_t *l_372 = &l_240[0][1][2];
        int i, j, k;
        for (p_1275->g_79.f1 = 0; (p_1275->g_79.f1 <= 9); p_1275->g_79.f1 += 1)
        { /* block id: 63 */
            uint8_t *l_184 = &p_1275->g_2[7][1][4];
            int32_t ***l_193 = &l_192;
            int32_t *l_237 = &l_166[p_1275->g_79.f1];
            uint64_t l_260[3][2][1] = {{{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL}}};
            int16_t *l_262 = &p_1275->g_67.f4;
            int16_t *l_263 = (void*)0;
            int16_t *l_264 = &p_1275->g_220[0].f4;
            uint8_t *l_277 = &p_1275->g_2[1][0][3];
            int32_t l_303[1];
            uint8_t l_317 = 0x60L;
            int64_t *l_331[7];
            uint32_t *l_369 = &p_1275->g_161;
            int32_t l_373 = 0x18107CF9L;
            int8_t l_374 = 0L;
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_303[i] = 0x10BBA5B3L;
            for (i = 0; i < 7; i++)
                l_331[i] = &l_240[0][2][3];
            (1 + 1);
        }
    }
    l_389++;
    return (*l_384);
}


/* ------------------------------------------ */
/* 
 * reads : p_1275->g_42 p_1275->g_50 p_1275->g_79 p_1275->g_41 p_1275->g_3 p_1275->g_68.f0 p_1275->g_59
 * writes: p_1275->g_68.f3 p_1275->g_59
 */
int8_t  func_73(int64_t * p_74, int8_t  p_75, union U3 * p_76, struct S4 * p_1275)
{ /* block id: 34 */
    int32_t *l_96 = &p_1275->g_3;
    uint32_t l_99 = 0x82D738A4L;
    int8_t *l_100 = &p_1275->g_68.f3;
    int64_t l_101 = 4L;
    int32_t l_104 = 0L;
    int32_t l_107 = 0x67D7DB6CL;
    int32_t l_108 = 0L;
    int32_t l_109 = (-1L);
    int32_t l_110 = 0L;
    int32_t l_111 = 1L;
    int32_t l_112 = 2L;
    int32_t l_113 = 0x0794F932L;
    int32_t l_114 = 0x266A3BB2L;
    int32_t l_115[10][10] = {{9L,1L,(-2L),0x72135583L,(-10L),0L,9L,0x1B9F6C78L,8L,8L},{9L,1L,(-2L),0x72135583L,(-10L),0L,9L,0x1B9F6C78L,8L,8L},{9L,1L,(-2L),0x72135583L,(-10L),0L,9L,0x1B9F6C78L,8L,8L},{9L,1L,(-2L),0x72135583L,(-10L),0L,9L,0x1B9F6C78L,8L,8L},{9L,1L,(-2L),0x72135583L,(-10L),0L,9L,0x1B9F6C78L,8L,8L},{9L,1L,(-2L),0x72135583L,(-10L),0L,9L,0x1B9F6C78L,8L,8L},{9L,1L,(-2L),0x72135583L,(-10L),0L,9L,0x1B9F6C78L,8L,8L},{9L,1L,(-2L),0x72135583L,(-10L),0L,9L,0x1B9F6C78L,8L,8L},{9L,1L,(-2L),0x72135583L,(-10L),0L,9L,0x1B9F6C78L,8L,8L},{9L,1L,(-2L),0x72135583L,(-10L),0L,9L,0x1B9F6C78L,8L,8L}};
    int32_t l_118 = 0L;
    int i, j;
    if ((safe_rshift_func_uint16_t_u_s((safe_sub_func_int16_t_s_s((safe_div_func_int8_t_s_s(((FAKE_DIVERGE(p_1275->group_2_offset, get_group_id(2), 10) , p_1275->g_42[1][1]) | ((safe_add_func_uint32_t_u_u(((safe_lshift_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u(0xD3L, ((1UL != 0x3B7CL) != (safe_mul_func_int8_t_s_s(((*l_100) = ((((safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), (((GROUP_DIVERGE(2, 1) , l_96) == (void*)0) > ((safe_add_func_int8_t_s_s(0x5AL, p_1275->g_50)) >= p_75)))) , (*p_76)) , l_99) > (*p_1275->g_41))), l_101))))) ^ (*p_1275->g_41)), 12)) ^ (*p_74)), p_75)) >= p_75)), 0x64L)), (*l_96))), p_1275->g_68.f0)))
    { /* block id: 36 */
        int32_t *l_102 = &p_1275->g_59[1][3][3];
        int32_t l_103 = 0x71B997E3L;
        int32_t *l_105 = (void*)0;
        int32_t *l_106[2];
        int32_t l_116 = 1L;
        int32_t l_117 = 4L;
        uint16_t l_120 = 0x9640L;
        int32_t **l_123 = &l_105;
        int i;
        for (i = 0; i < 2; i++)
            l_106[i] = &p_1275->g_59[0][7][0];
        --l_120;
        (*l_102) ^= (GROUP_DIVERGE(2, 1) >= p_75);
        (*l_123) = &l_108;
    }
    else
    { /* block id: 40 */
        int32_t *l_124 = &l_115[8][2];
        l_124 = l_124;
    }
    p_1275->g_59[0][7][0] = (*l_96);
    return p_1275->g_50;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_1276;
    struct S4* p_1275 = &c_1276;
    struct S4 c_1277 = {
        {{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}},{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}},{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}},{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}},{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}},{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}},{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}},{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}}}, // p_1275->g_2
        0x0D68F985L, // p_1275->g_3
        9L, // p_1275->g_18
        7L, // p_1275->g_33
        {{0x27DA828C040C8E82L,0x2964071C19CD890FL,0x5AE1DC630DE2FD17L,0x2964071C19CD890FL,0x27DA828C040C8E82L},{0x27DA828C040C8E82L,0x2964071C19CD890FL,0x5AE1DC630DE2FD17L,0x2964071C19CD890FL,0x27DA828C040C8E82L},{0x27DA828C040C8E82L,0x2964071C19CD890FL,0x5AE1DC630DE2FD17L,0x2964071C19CD890FL,0x27DA828C040C8E82L},{0x27DA828C040C8E82L,0x2964071C19CD890FL,0x5AE1DC630DE2FD17L,0x2964071C19CD890FL,0x27DA828C040C8E82L},{0x27DA828C040C8E82L,0x2964071C19CD890FL,0x5AE1DC630DE2FD17L,0x2964071C19CD890FL,0x27DA828C040C8E82L},{0x27DA828C040C8E82L,0x2964071C19CD890FL,0x5AE1DC630DE2FD17L,0x2964071C19CD890FL,0x27DA828C040C8E82L},{0x27DA828C040C8E82L,0x2964071C19CD890FL,0x5AE1DC630DE2FD17L,0x2964071C19CD890FL,0x27DA828C040C8E82L}}, // p_1275->g_42
        &p_1275->g_42[1][1], // p_1275->g_41
        0x7D02C9AAL, // p_1275->g_48
        0x05F61CA7L, // p_1275->g_50
        {{{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)}},{{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)}},{{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)},{(-1L),0L,0x639B9AA6L,0x78915D48L,0x3AC46406L,(-1L)}}}, // p_1275->g_59
        {18446744073709551615UL}, // p_1275->g_67
        {0xD96A1273L,0x6B30262AL,0x89E4L,0x2CL}, // p_1275->g_68
        {0x95D9L}, // p_1275->g_69
        {18446744073709551606UL}, // p_1275->g_79
        &p_1275->g_79, // p_1275->g_78
        (-4L), // p_1275->g_119
        {&p_1275->g_68.f2,&p_1275->g_68.f2,&p_1275->g_68.f2,&p_1275->g_68.f2,&p_1275->g_68.f2,&p_1275->g_68.f2,&p_1275->g_68.f2,&p_1275->g_68.f2}, // p_1275->g_159
        0x9ADD518CL, // p_1275->g_161
        (void*)0, // p_1275->g_171
        (-5L), // p_1275->g_211
        {0x59CEL,18446744073709551614UL,4294967295UL,0x48FBCCC2C11AEEA1L,-7L,0x7C4EL}, // p_1275->g_213
        {{(void*)0,(void*)0,(void*)0,&p_1275->g_69.f2,&p_1275->g_213,&p_1275->g_69.f2,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1275->g_69.f2,&p_1275->g_213,&p_1275->g_69.f2,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1275->g_69.f2,&p_1275->g_213,&p_1275->g_69.f2,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1275->g_69.f2,&p_1275->g_213,&p_1275->g_69.f2,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1275->g_69.f2,&p_1275->g_213,&p_1275->g_69.f2,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1275->g_69.f2,&p_1275->g_213,&p_1275->g_69.f2,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1275->g_69.f2,&p_1275->g_213,&p_1275->g_69.f2,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1275->g_69.f2,&p_1275->g_213,&p_1275->g_69.f2,(void*)0}}, // p_1275->g_214
        (void*)0, // p_1275->g_215
        (void*)0, // p_1275->g_216
        {{18446744073709551608UL},{18446744073709551608UL},{18446744073709551608UL},{18446744073709551608UL},{18446744073709551608UL},{18446744073709551608UL},{18446744073709551608UL},{18446744073709551608UL},{18446744073709551608UL}}, // p_1275->g_220
        &p_1275->g_119, // p_1275->g_227
        &p_1275->g_227, // p_1275->g_226
        &p_1275->g_226, // p_1275->g_225
        3L, // p_1275->g_251
        {(-1L),(-1L),(-1L)}, // p_1275->g_300
        {0UL,0x65C96C0E560B90DDL,0x73C832D1L,7UL,0x27D1L,0x8EBCL}, // p_1275->g_320
        {0xB410406FBD9CE215L}, // p_1275->g_330
        {0x32BEL,0x78EAL,0x32BEL,0x32BEL,0x78EAL,0x32BEL,0x32BEL,0x78EAL}, // p_1275->g_355
        &p_1275->g_227, // p_1275->g_364
        1UL, // p_1275->g_375
        (void*)0, // p_1275->g_393
        &p_1275->g_227, // p_1275->g_394
        {0xE4AAL}, // p_1275->g_395
        {1UL}, // p_1275->g_414
        {0xC63F3082L,-10L,0x458BL,0L}, // p_1275->g_425
        {0x8E02L,0x854440CDB6751E6EL,0x77B36FF8L,0UL,-9L,1UL}, // p_1275->g_438
        {{{&p_1275->g_320,(void*)0,&p_1275->g_320,&p_1275->g_438,&p_1275->g_438,&p_1275->g_320,&p_1275->g_438},{&p_1275->g_320,(void*)0,&p_1275->g_320,&p_1275->g_438,&p_1275->g_438,&p_1275->g_320,&p_1275->g_438},{&p_1275->g_320,(void*)0,&p_1275->g_320,&p_1275->g_438,&p_1275->g_438,&p_1275->g_320,&p_1275->g_438}},{{&p_1275->g_320,(void*)0,&p_1275->g_320,&p_1275->g_438,&p_1275->g_438,&p_1275->g_320,&p_1275->g_438},{&p_1275->g_320,(void*)0,&p_1275->g_320,&p_1275->g_438,&p_1275->g_438,&p_1275->g_320,&p_1275->g_438},{&p_1275->g_320,(void*)0,&p_1275->g_320,&p_1275->g_438,&p_1275->g_438,&p_1275->g_320,&p_1275->g_438}},{{&p_1275->g_320,(void*)0,&p_1275->g_320,&p_1275->g_438,&p_1275->g_438,&p_1275->g_320,&p_1275->g_438},{&p_1275->g_320,(void*)0,&p_1275->g_320,&p_1275->g_438,&p_1275->g_438,&p_1275->g_320,&p_1275->g_438},{&p_1275->g_320,(void*)0,&p_1275->g_320,&p_1275->g_438,&p_1275->g_438,&p_1275->g_320,&p_1275->g_438}}}, // p_1275->g_440
        &p_1275->g_171, // p_1275->g_443
        0x49B0A1CA8C2080DEL, // p_1275->g_467
        {4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL,4294967287UL}, // p_1275->g_480
        (void*)0, // p_1275->g_483
        &p_1275->g_78, // p_1275->g_484
        {18446744073709551615UL}, // p_1275->g_503
        4L, // p_1275->g_506
        &p_1275->g_227, // p_1275->g_507
        &p_1275->g_227, // p_1275->g_508
        &p_1275->g_59[0][7][0], // p_1275->g_545
        {0UL,0xECC8CE6EFF4A19E4L,0x9A8E7BE4L,6UL,1L,0x925BL}, // p_1275->g_583
        {0x6E6C6542L,0x2A5D12D1L,0x8B5DL,-1L}, // p_1275->g_595
        &p_1275->g_425, // p_1275->g_596
        {0x09EF515EL,0x5E488CB8L,0x63EEL,5L}, // p_1275->g_597
        0x6A56D7501CE81E92L, // p_1275->g_620
        &p_1275->g_393, // p_1275->g_627
        {{{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L}},{{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L}},{{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L}},{{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L},{0xA4A2D0645434E313L}}}, // p_1275->g_633
        {4UL,5UL,4294967293UL,0x50F38962C2FC08B4L,0x3F93L,0x9C6BL}, // p_1275->g_649
        {0UL,18446744073709551615UL,0xC69DF690L,0xC84458C2ABC0D5DDL,-1L,1UL}, // p_1275->g_650
        {1UL,1L,0xBDC2L,0x69L}, // p_1275->g_672
        {4294967295UL,-2L,0x057DL,0x0AL}, // p_1275->g_675
        {0x8FBF5B36L,0x24E22CE8L,0x34E7L,0x25L}, // p_1275->g_676
        {8UL,1L,0xC115L,-1L}, // p_1275->g_677
        {0UL,0x4210ED84L,1UL,6L}, // p_1275->g_678
        {0xF8658E21L,0x42DE1BDDL,0UL,-3L}, // p_1275->g_679
        {0x7F36240AL,-1L,0x1D6AL,-1L}, // p_1275->g_680
        {1UL,1L,0x19B9L,0L}, // p_1275->g_681
        {{{{0x34673496L,0L,65535UL,4L},{2UL,8L,0x590CL,0x78L},{2UL,8L,0x590CL,0x78L},{0x34673496L,0L,65535UL,4L},{0x34673496L,0L,65535UL,4L},{2UL,8L,0x590CL,0x78L},{2UL,8L,0x590CL,0x78L},{0x34673496L,0L,65535UL,4L}}},{{{0x34673496L,0L,65535UL,4L},{2UL,8L,0x590CL,0x78L},{2UL,8L,0x590CL,0x78L},{0x34673496L,0L,65535UL,4L},{0x34673496L,0L,65535UL,4L},{2UL,8L,0x590CL,0x78L},{2UL,8L,0x590CL,0x78L},{0x34673496L,0L,65535UL,4L}}},{{{0x34673496L,0L,65535UL,4L},{2UL,8L,0x590CL,0x78L},{2UL,8L,0x590CL,0x78L},{0x34673496L,0L,65535UL,4L},{0x34673496L,0L,65535UL,4L},{2UL,8L,0x590CL,0x78L},{2UL,8L,0x590CL,0x78L},{0x34673496L,0L,65535UL,4L}}},{{{0x34673496L,0L,65535UL,4L},{2UL,8L,0x590CL,0x78L},{2UL,8L,0x590CL,0x78L},{0x34673496L,0L,65535UL,4L},{0x34673496L,0L,65535UL,4L},{2UL,8L,0x590CL,0x78L},{2UL,8L,0x590CL,0x78L},{0x34673496L,0L,65535UL,4L}}}}, // p_1275->g_682
        {1UL,0x4746039BL,65535UL,-1L}, // p_1275->g_683
        {0xBCB653DEL,1L,0x2FCCL,0x45L}, // p_1275->g_684
        {0x038B8A86L,0x7F7DFB34L,7UL,0x11L}, // p_1275->g_685
        {8UL,0x6A9973C6L,0x874EL,0x3EL}, // p_1275->g_686
        {0x2FA6E86CL,8L,65527UL,0L}, // p_1275->g_687
        {0xF15201A2L,0x56A6792EL,0x3A71L,0x36L}, // p_1275->g_688
        {4294967286UL,0x14327047L,0x3AABL,0x7FL}, // p_1275->g_689
        {0x38C6D9AAL,0x15725B63L,0UL,0L}, // p_1275->g_690
        {0UL,0x25E65D43L,0xF055L,0x47L}, // p_1275->g_691
        {0x33521AE2L,-1L,5UL,0x40L}, // p_1275->g_692
        {0x363FCEA8L,0x42A02718L,0x8C47L,0x06L}, // p_1275->g_693
        {0x385469DCL,-1L,0xC0F3L,0L}, // p_1275->g_694
        {4294967295UL,8L,0x8F28L,0L}, // p_1275->g_695
        {4294967286UL,0x0F329313L,65535UL,0x0CL}, // p_1275->g_696
        {0UL,0x7F70555EL,0xBC01L,0x40L}, // p_1275->g_697
        {0UL,0x74D73DF7L,4UL,-8L}, // p_1275->g_698
        {1UL,-1L,0xB66DL,0L}, // p_1275->g_699
        {0x8D48153EL,7L,65535UL,0x78L}, // p_1275->g_700
        {{{1UL,-10L,1UL,0x4DL},{4294967287UL,0L,0xFEDAL,0x3FL},{0UL,1L,65526UL,1L},{4294967287UL,0L,0xFEDAL,0x3FL}},{{1UL,-10L,1UL,0x4DL},{4294967287UL,0L,0xFEDAL,0x3FL},{0UL,1L,65526UL,1L},{4294967287UL,0L,0xFEDAL,0x3FL}},{{1UL,-10L,1UL,0x4DL},{4294967287UL,0L,0xFEDAL,0x3FL},{0UL,1L,65526UL,1L},{4294967287UL,0L,0xFEDAL,0x3FL}},{{1UL,-10L,1UL,0x4DL},{4294967287UL,0L,0xFEDAL,0x3FL},{0UL,1L,65526UL,1L},{4294967287UL,0L,0xFEDAL,0x3FL}},{{1UL,-10L,1UL,0x4DL},{4294967287UL,0L,0xFEDAL,0x3FL},{0UL,1L,65526UL,1L},{4294967287UL,0L,0xFEDAL,0x3FL}},{{1UL,-10L,1UL,0x4DL},{4294967287UL,0L,0xFEDAL,0x3FL},{0UL,1L,65526UL,1L},{4294967287UL,0L,0xFEDAL,0x3FL}}}, // p_1275->g_701
        {0xBA8847F5L,0x2649AA28L,0x3C76L,0L}, // p_1275->g_702
        {{0x96935EC4L,0x769FF307L,0xAF95L,0L},{0x96935EC4L,0x769FF307L,0xAF95L,0L}}, // p_1275->g_703
        {0x3B2ABBA0L,0L,2UL,0L}, // p_1275->g_704
        {4294967291UL,0x2232F382L,0xE806L,5L}, // p_1275->g_717
        {4294967289UL,0x62F7EDDBL,1UL,3L}, // p_1275->g_719
        &p_1275->g_719, // p_1275->g_718
        {6UL,0UL,0x0B75F531L,8UL,0L,0x5FC2L}, // p_1275->g_752
        {{{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171}},{{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171}},{{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171},{&p_1275->g_171,&p_1275->g_171,&p_1275->g_171}}}, // p_1275->g_756
        {7UL}, // p_1275->g_762
        (void*)0, // p_1275->g_770
        &p_1275->g_770, // p_1275->g_769
        {7UL}, // p_1275->g_771
        &p_1275->g_171, // p_1275->g_775
        (void*)0, // p_1275->g_792
        &p_1275->g_545, // p_1275->g_793
        {0L,0L,0L,0L,0L,0L,0L,0L}, // p_1275->g_799
        {1UL,0x63AD0A73L,65535UL,-6L}, // p_1275->g_815
        &p_1275->g_69, // p_1275->g_830
        &p_1275->g_830, // p_1275->g_829
        {0x50F4L,18446744073709551615UL,4294967293UL,0x9AAEBF5CB0E46EECL,0x10E5L,65534UL}, // p_1275->g_831
        {0x3FL,8L,0x3FL,0x3FL,8L,0x3FL,0x3FL}, // p_1275->g_861
        {2UL,0x441621A6L,0x768EL,0x1BL}, // p_1275->g_875
        {0x81D3L,0x1F955DAC82B9EE64L,4294967295UL,0x970AEE57B29A9929L,7L,0x5932L}, // p_1275->g_876
        {{0xD6EBL,18446744073709551609UL,0xBE32B8E1L,18446744073709551615UL,2L,0x18B0L},{0xD6EBL,18446744073709551609UL,0xBE32B8E1L,18446744073709551615UL,2L,0x18B0L},{0xD6EBL,18446744073709551609UL,0xBE32B8E1L,18446744073709551615UL,2L,0x18B0L},{0xD6EBL,18446744073709551609UL,0xBE32B8E1L,18446744073709551615UL,2L,0x18B0L},{0xD6EBL,18446744073709551609UL,0xBE32B8E1L,18446744073709551615UL,2L,0x18B0L},{0xD6EBL,18446744073709551609UL,0xBE32B8E1L,18446744073709551615UL,2L,0x18B0L},{0xD6EBL,18446744073709551609UL,0xBE32B8E1L,18446744073709551615UL,2L,0x18B0L},{0xD6EBL,18446744073709551609UL,0xBE32B8E1L,18446744073709551615UL,2L,0x18B0L}}, // p_1275->g_878
        {{0x65BFL},{65527UL},{0x65BFL},{0x65BFL},{65527UL},{0x65BFL},{0x65BFL},{65527UL},{0x65BFL},{0x65BFL}}, // p_1275->g_897
        {0x3BAEL}, // p_1275->g_911
        1UL, // p_1275->g_914
        {0xD44D898565AE548FL}, // p_1275->g_960
        {0x3774L}, // p_1275->g_991
        1L, // p_1275->g_1000
        {&p_1275->g_227,&p_1275->g_227,&p_1275->g_227}, // p_1275->g_1015
        {{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL},{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL},{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL},{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL},{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL},{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL},{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL},{0x05FAL,0xA1F8B801045619ADL,1UL,0x6C0297707AF31C05L,7L,5UL}}, // p_1275->g_1019
        {0x845DL}, // p_1275->g_1022
        &p_1275->g_2[5][1][4], // p_1275->g_1042
        {&p_1275->g_1042,&p_1275->g_1042,&p_1275->g_1042}, // p_1275->g_1041
        {&p_1275->g_227,(void*)0,&p_1275->g_227,&p_1275->g_227,(void*)0,&p_1275->g_227,&p_1275->g_227,(void*)0}, // p_1275->g_1055
        &p_1275->g_227, // p_1275->g_1056
        {0xB5F4967932284287L}, // p_1275->g_1082
        {65535UL,0x60425A4B0B305294L,1UL,0x0A4F920FA1F94BDFL,6L,2UL}, // p_1275->g_1119
        &p_1275->g_1019[3], // p_1275->g_1120
        0x017F9074L, // p_1275->g_1164
        {{{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}}},{{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}}},{{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}}},{{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}}},{{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}}},{{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}},{{0UL,0x4988208EL,1UL,0x61L},{0x0C0BC482L,0x4D6C53D1L,8UL,0x42L},{0xED1D2AC7L,0x51AE74DDL,65528UL,-1L},{9UL,0x5B04647DL,0UL,0x0DL},{0UL,0x65E7E7F5L,0UL,1L},{4294967287UL,0x3F76C0B2L,0x113CL,0x47L}}}}, // p_1275->g_1167
        {{{4UL,0x6A25D82EC2B74D42L,0UL,0x31E8B2B1687C0151L,0x7C51L,0xA51EL},{4UL,0x6A25D82EC2B74D42L,0UL,0x31E8B2B1687C0151L,0x7C51L,0xA51EL},{4UL,0x6A25D82EC2B74D42L,0UL,0x31E8B2B1687C0151L,0x7C51L,0xA51EL}},{{4UL,0x6A25D82EC2B74D42L,0UL,0x31E8B2B1687C0151L,0x7C51L,0xA51EL},{4UL,0x6A25D82EC2B74D42L,0UL,0x31E8B2B1687C0151L,0x7C51L,0xA51EL},{4UL,0x6A25D82EC2B74D42L,0UL,0x31E8B2B1687C0151L,0x7C51L,0xA51EL}},{{4UL,0x6A25D82EC2B74D42L,0UL,0x31E8B2B1687C0151L,0x7C51L,0xA51EL},{4UL,0x6A25D82EC2B74D42L,0UL,0x31E8B2B1687C0151L,0x7C51L,0xA51EL},{4UL,0x6A25D82EC2B74D42L,0UL,0x31E8B2B1687C0151L,0x7C51L,0xA51EL}},{{4UL,0x6A25D82EC2B74D42L,0UL,0x31E8B2B1687C0151L,0x7C51L,0xA51EL},{4UL,0x6A25D82EC2B74D42L,0UL,0x31E8B2B1687C0151L,0x7C51L,0xA51EL},{4UL,0x6A25D82EC2B74D42L,0UL,0x31E8B2B1687C0151L,0x7C51L,0xA51EL}}}, // p_1275->g_1168
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1275->g_1169
        4294967295UL, // p_1275->g_1184
        {0x4494L}, // p_1275->g_1217
        &p_1275->g_1184, // p_1275->g_1227
        &p_1275->g_1227, // p_1275->g_1226
        {1UL,0x926D223EFDEF1208L,0x608A0E98L,0xFE196950CA6CB2FDL,0L,1UL}, // p_1275->g_1251
        &p_1275->g_752, // p_1275->g_1252
        0x64F86C64L, // p_1275->g_1255
        {0x2328AC30F9BCF611L}, // p_1275->g_1261
        sequence_input[get_global_id(0)], // p_1275->global_0_offset
        sequence_input[get_global_id(1)], // p_1275->global_1_offset
        sequence_input[get_global_id(2)], // p_1275->global_2_offset
        sequence_input[get_local_id(0)], // p_1275->local_0_offset
        sequence_input[get_local_id(1)], // p_1275->local_1_offset
        sequence_input[get_local_id(2)], // p_1275->local_2_offset
        sequence_input[get_group_id(0)], // p_1275->group_0_offset
        sequence_input[get_group_id(1)], // p_1275->group_1_offset
        sequence_input[get_group_id(2)], // p_1275->group_2_offset
    };
    c_1276 = c_1277;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1275);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1275->g_2[i][j][k], "p_1275->g_2[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1275->g_3, "p_1275->g_3", print_hash_value);
    transparent_crc(p_1275->g_18, "p_1275->g_18", print_hash_value);
    transparent_crc(p_1275->g_33, "p_1275->g_33", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1275->g_42[i][j], "p_1275->g_42[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1275->g_48, "p_1275->g_48", print_hash_value);
    transparent_crc(p_1275->g_50, "p_1275->g_50", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1275->g_59[i][j][k], "p_1275->g_59[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1275->g_67.f0, "p_1275->g_67.f0", print_hash_value);
    transparent_crc(p_1275->g_68.f0, "p_1275->g_68.f0", print_hash_value);
    transparent_crc(p_1275->g_68.f1, "p_1275->g_68.f1", print_hash_value);
    transparent_crc(p_1275->g_68.f2, "p_1275->g_68.f2", print_hash_value);
    transparent_crc(p_1275->g_68.f3, "p_1275->g_68.f3", print_hash_value);
    transparent_crc(p_1275->g_69.f0, "p_1275->g_69.f0", print_hash_value);
    transparent_crc(p_1275->g_119, "p_1275->g_119", print_hash_value);
    transparent_crc(p_1275->g_161, "p_1275->g_161", print_hash_value);
    transparent_crc(p_1275->g_211, "p_1275->g_211", print_hash_value);
    transparent_crc(p_1275->g_213.f0, "p_1275->g_213.f0", print_hash_value);
    transparent_crc(p_1275->g_213.f1, "p_1275->g_213.f1", print_hash_value);
    transparent_crc(p_1275->g_213.f2, "p_1275->g_213.f2", print_hash_value);
    transparent_crc(p_1275->g_213.f3, "p_1275->g_213.f3", print_hash_value);
    transparent_crc(p_1275->g_213.f4, "p_1275->g_213.f4", print_hash_value);
    transparent_crc(p_1275->g_213.f5, "p_1275->g_213.f5", print_hash_value);
    transparent_crc(p_1275->g_251, "p_1275->g_251", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1275->g_300[i], "p_1275->g_300[i]", print_hash_value);

    }
    transparent_crc(p_1275->g_320.f0, "p_1275->g_320.f0", print_hash_value);
    transparent_crc(p_1275->g_320.f1, "p_1275->g_320.f1", print_hash_value);
    transparent_crc(p_1275->g_320.f2, "p_1275->g_320.f2", print_hash_value);
    transparent_crc(p_1275->g_320.f3, "p_1275->g_320.f3", print_hash_value);
    transparent_crc(p_1275->g_320.f4, "p_1275->g_320.f4", print_hash_value);
    transparent_crc(p_1275->g_320.f5, "p_1275->g_320.f5", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1275->g_355[i], "p_1275->g_355[i]", print_hash_value);

    }
    transparent_crc(p_1275->g_375, "p_1275->g_375", print_hash_value);
    transparent_crc(p_1275->g_395.f0, "p_1275->g_395.f0", print_hash_value);
    transparent_crc(p_1275->g_414.f0, "p_1275->g_414.f0", print_hash_value);
    transparent_crc(p_1275->g_425.f0, "p_1275->g_425.f0", print_hash_value);
    transparent_crc(p_1275->g_425.f1, "p_1275->g_425.f1", print_hash_value);
    transparent_crc(p_1275->g_425.f2, "p_1275->g_425.f2", print_hash_value);
    transparent_crc(p_1275->g_425.f3, "p_1275->g_425.f3", print_hash_value);
    transparent_crc(p_1275->g_438.f0, "p_1275->g_438.f0", print_hash_value);
    transparent_crc(p_1275->g_438.f1, "p_1275->g_438.f1", print_hash_value);
    transparent_crc(p_1275->g_438.f2, "p_1275->g_438.f2", print_hash_value);
    transparent_crc(p_1275->g_438.f3, "p_1275->g_438.f3", print_hash_value);
    transparent_crc(p_1275->g_438.f4, "p_1275->g_438.f4", print_hash_value);
    transparent_crc(p_1275->g_438.f5, "p_1275->g_438.f5", print_hash_value);
    transparent_crc(p_1275->g_467, "p_1275->g_467", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1275->g_480[i], "p_1275->g_480[i]", print_hash_value);

    }
    transparent_crc(p_1275->g_506, "p_1275->g_506", print_hash_value);
    transparent_crc(p_1275->g_583.f0, "p_1275->g_583.f0", print_hash_value);
    transparent_crc(p_1275->g_583.f1, "p_1275->g_583.f1", print_hash_value);
    transparent_crc(p_1275->g_583.f2, "p_1275->g_583.f2", print_hash_value);
    transparent_crc(p_1275->g_583.f3, "p_1275->g_583.f3", print_hash_value);
    transparent_crc(p_1275->g_583.f4, "p_1275->g_583.f4", print_hash_value);
    transparent_crc(p_1275->g_583.f5, "p_1275->g_583.f5", print_hash_value);
    transparent_crc(p_1275->g_595.f0, "p_1275->g_595.f0", print_hash_value);
    transparent_crc(p_1275->g_595.f1, "p_1275->g_595.f1", print_hash_value);
    transparent_crc(p_1275->g_595.f2, "p_1275->g_595.f2", print_hash_value);
    transparent_crc(p_1275->g_595.f3, "p_1275->g_595.f3", print_hash_value);
    transparent_crc(p_1275->g_597.f0, "p_1275->g_597.f0", print_hash_value);
    transparent_crc(p_1275->g_597.f1, "p_1275->g_597.f1", print_hash_value);
    transparent_crc(p_1275->g_597.f2, "p_1275->g_597.f2", print_hash_value);
    transparent_crc(p_1275->g_597.f3, "p_1275->g_597.f3", print_hash_value);
    transparent_crc(p_1275->g_620, "p_1275->g_620", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1275->g_633[i][j].f0, "p_1275->g_633[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1275->g_649.f0, "p_1275->g_649.f0", print_hash_value);
    transparent_crc(p_1275->g_649.f1, "p_1275->g_649.f1", print_hash_value);
    transparent_crc(p_1275->g_649.f2, "p_1275->g_649.f2", print_hash_value);
    transparent_crc(p_1275->g_649.f3, "p_1275->g_649.f3", print_hash_value);
    transparent_crc(p_1275->g_649.f4, "p_1275->g_649.f4", print_hash_value);
    transparent_crc(p_1275->g_649.f5, "p_1275->g_649.f5", print_hash_value);
    transparent_crc(p_1275->g_650.f0, "p_1275->g_650.f0", print_hash_value);
    transparent_crc(p_1275->g_650.f1, "p_1275->g_650.f1", print_hash_value);
    transparent_crc(p_1275->g_650.f2, "p_1275->g_650.f2", print_hash_value);
    transparent_crc(p_1275->g_650.f3, "p_1275->g_650.f3", print_hash_value);
    transparent_crc(p_1275->g_650.f4, "p_1275->g_650.f4", print_hash_value);
    transparent_crc(p_1275->g_650.f5, "p_1275->g_650.f5", print_hash_value);
    transparent_crc(p_1275->g_672.f0, "p_1275->g_672.f0", print_hash_value);
    transparent_crc(p_1275->g_672.f1, "p_1275->g_672.f1", print_hash_value);
    transparent_crc(p_1275->g_672.f2, "p_1275->g_672.f2", print_hash_value);
    transparent_crc(p_1275->g_672.f3, "p_1275->g_672.f3", print_hash_value);
    transparent_crc(p_1275->g_675.f0, "p_1275->g_675.f0", print_hash_value);
    transparent_crc(p_1275->g_675.f1, "p_1275->g_675.f1", print_hash_value);
    transparent_crc(p_1275->g_675.f2, "p_1275->g_675.f2", print_hash_value);
    transparent_crc(p_1275->g_675.f3, "p_1275->g_675.f3", print_hash_value);
    transparent_crc(p_1275->g_676.f0, "p_1275->g_676.f0", print_hash_value);
    transparent_crc(p_1275->g_676.f1, "p_1275->g_676.f1", print_hash_value);
    transparent_crc(p_1275->g_676.f2, "p_1275->g_676.f2", print_hash_value);
    transparent_crc(p_1275->g_676.f3, "p_1275->g_676.f3", print_hash_value);
    transparent_crc(p_1275->g_677.f0, "p_1275->g_677.f0", print_hash_value);
    transparent_crc(p_1275->g_677.f1, "p_1275->g_677.f1", print_hash_value);
    transparent_crc(p_1275->g_677.f2, "p_1275->g_677.f2", print_hash_value);
    transparent_crc(p_1275->g_677.f3, "p_1275->g_677.f3", print_hash_value);
    transparent_crc(p_1275->g_678.f0, "p_1275->g_678.f0", print_hash_value);
    transparent_crc(p_1275->g_678.f1, "p_1275->g_678.f1", print_hash_value);
    transparent_crc(p_1275->g_678.f2, "p_1275->g_678.f2", print_hash_value);
    transparent_crc(p_1275->g_678.f3, "p_1275->g_678.f3", print_hash_value);
    transparent_crc(p_1275->g_679.f0, "p_1275->g_679.f0", print_hash_value);
    transparent_crc(p_1275->g_679.f1, "p_1275->g_679.f1", print_hash_value);
    transparent_crc(p_1275->g_679.f2, "p_1275->g_679.f2", print_hash_value);
    transparent_crc(p_1275->g_679.f3, "p_1275->g_679.f3", print_hash_value);
    transparent_crc(p_1275->g_680.f0, "p_1275->g_680.f0", print_hash_value);
    transparent_crc(p_1275->g_680.f1, "p_1275->g_680.f1", print_hash_value);
    transparent_crc(p_1275->g_680.f2, "p_1275->g_680.f2", print_hash_value);
    transparent_crc(p_1275->g_680.f3, "p_1275->g_680.f3", print_hash_value);
    transparent_crc(p_1275->g_681.f0, "p_1275->g_681.f0", print_hash_value);
    transparent_crc(p_1275->g_681.f1, "p_1275->g_681.f1", print_hash_value);
    transparent_crc(p_1275->g_681.f2, "p_1275->g_681.f2", print_hash_value);
    transparent_crc(p_1275->g_681.f3, "p_1275->g_681.f3", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1275->g_682[i][j][k].f0, "p_1275->g_682[i][j][k].f0", print_hash_value);
                transparent_crc(p_1275->g_682[i][j][k].f1, "p_1275->g_682[i][j][k].f1", print_hash_value);
                transparent_crc(p_1275->g_682[i][j][k].f2, "p_1275->g_682[i][j][k].f2", print_hash_value);
                transparent_crc(p_1275->g_682[i][j][k].f3, "p_1275->g_682[i][j][k].f3", print_hash_value);

            }
        }
    }
    transparent_crc(p_1275->g_683.f0, "p_1275->g_683.f0", print_hash_value);
    transparent_crc(p_1275->g_683.f1, "p_1275->g_683.f1", print_hash_value);
    transparent_crc(p_1275->g_683.f2, "p_1275->g_683.f2", print_hash_value);
    transparent_crc(p_1275->g_683.f3, "p_1275->g_683.f3", print_hash_value);
    transparent_crc(p_1275->g_684.f0, "p_1275->g_684.f0", print_hash_value);
    transparent_crc(p_1275->g_684.f1, "p_1275->g_684.f1", print_hash_value);
    transparent_crc(p_1275->g_684.f2, "p_1275->g_684.f2", print_hash_value);
    transparent_crc(p_1275->g_684.f3, "p_1275->g_684.f3", print_hash_value);
    transparent_crc(p_1275->g_685.f0, "p_1275->g_685.f0", print_hash_value);
    transparent_crc(p_1275->g_685.f1, "p_1275->g_685.f1", print_hash_value);
    transparent_crc(p_1275->g_685.f2, "p_1275->g_685.f2", print_hash_value);
    transparent_crc(p_1275->g_685.f3, "p_1275->g_685.f3", print_hash_value);
    transparent_crc(p_1275->g_686.f0, "p_1275->g_686.f0", print_hash_value);
    transparent_crc(p_1275->g_686.f1, "p_1275->g_686.f1", print_hash_value);
    transparent_crc(p_1275->g_686.f2, "p_1275->g_686.f2", print_hash_value);
    transparent_crc(p_1275->g_686.f3, "p_1275->g_686.f3", print_hash_value);
    transparent_crc(p_1275->g_687.f0, "p_1275->g_687.f0", print_hash_value);
    transparent_crc(p_1275->g_687.f1, "p_1275->g_687.f1", print_hash_value);
    transparent_crc(p_1275->g_687.f2, "p_1275->g_687.f2", print_hash_value);
    transparent_crc(p_1275->g_687.f3, "p_1275->g_687.f3", print_hash_value);
    transparent_crc(p_1275->g_688.f0, "p_1275->g_688.f0", print_hash_value);
    transparent_crc(p_1275->g_688.f1, "p_1275->g_688.f1", print_hash_value);
    transparent_crc(p_1275->g_688.f2, "p_1275->g_688.f2", print_hash_value);
    transparent_crc(p_1275->g_688.f3, "p_1275->g_688.f3", print_hash_value);
    transparent_crc(p_1275->g_689.f0, "p_1275->g_689.f0", print_hash_value);
    transparent_crc(p_1275->g_689.f1, "p_1275->g_689.f1", print_hash_value);
    transparent_crc(p_1275->g_689.f2, "p_1275->g_689.f2", print_hash_value);
    transparent_crc(p_1275->g_689.f3, "p_1275->g_689.f3", print_hash_value);
    transparent_crc(p_1275->g_690.f0, "p_1275->g_690.f0", print_hash_value);
    transparent_crc(p_1275->g_690.f1, "p_1275->g_690.f1", print_hash_value);
    transparent_crc(p_1275->g_690.f2, "p_1275->g_690.f2", print_hash_value);
    transparent_crc(p_1275->g_690.f3, "p_1275->g_690.f3", print_hash_value);
    transparent_crc(p_1275->g_691.f0, "p_1275->g_691.f0", print_hash_value);
    transparent_crc(p_1275->g_691.f1, "p_1275->g_691.f1", print_hash_value);
    transparent_crc(p_1275->g_691.f2, "p_1275->g_691.f2", print_hash_value);
    transparent_crc(p_1275->g_691.f3, "p_1275->g_691.f3", print_hash_value);
    transparent_crc(p_1275->g_692.f0, "p_1275->g_692.f0", print_hash_value);
    transparent_crc(p_1275->g_692.f1, "p_1275->g_692.f1", print_hash_value);
    transparent_crc(p_1275->g_692.f2, "p_1275->g_692.f2", print_hash_value);
    transparent_crc(p_1275->g_692.f3, "p_1275->g_692.f3", print_hash_value);
    transparent_crc(p_1275->g_693.f0, "p_1275->g_693.f0", print_hash_value);
    transparent_crc(p_1275->g_693.f1, "p_1275->g_693.f1", print_hash_value);
    transparent_crc(p_1275->g_693.f2, "p_1275->g_693.f2", print_hash_value);
    transparent_crc(p_1275->g_693.f3, "p_1275->g_693.f3", print_hash_value);
    transparent_crc(p_1275->g_694.f0, "p_1275->g_694.f0", print_hash_value);
    transparent_crc(p_1275->g_694.f1, "p_1275->g_694.f1", print_hash_value);
    transparent_crc(p_1275->g_694.f2, "p_1275->g_694.f2", print_hash_value);
    transparent_crc(p_1275->g_694.f3, "p_1275->g_694.f3", print_hash_value);
    transparent_crc(p_1275->g_695.f0, "p_1275->g_695.f0", print_hash_value);
    transparent_crc(p_1275->g_695.f1, "p_1275->g_695.f1", print_hash_value);
    transparent_crc(p_1275->g_695.f2, "p_1275->g_695.f2", print_hash_value);
    transparent_crc(p_1275->g_695.f3, "p_1275->g_695.f3", print_hash_value);
    transparent_crc(p_1275->g_696.f0, "p_1275->g_696.f0", print_hash_value);
    transparent_crc(p_1275->g_696.f1, "p_1275->g_696.f1", print_hash_value);
    transparent_crc(p_1275->g_696.f2, "p_1275->g_696.f2", print_hash_value);
    transparent_crc(p_1275->g_696.f3, "p_1275->g_696.f3", print_hash_value);
    transparent_crc(p_1275->g_697.f0, "p_1275->g_697.f0", print_hash_value);
    transparent_crc(p_1275->g_697.f1, "p_1275->g_697.f1", print_hash_value);
    transparent_crc(p_1275->g_697.f2, "p_1275->g_697.f2", print_hash_value);
    transparent_crc(p_1275->g_697.f3, "p_1275->g_697.f3", print_hash_value);
    transparent_crc(p_1275->g_698.f0, "p_1275->g_698.f0", print_hash_value);
    transparent_crc(p_1275->g_698.f1, "p_1275->g_698.f1", print_hash_value);
    transparent_crc(p_1275->g_698.f2, "p_1275->g_698.f2", print_hash_value);
    transparent_crc(p_1275->g_698.f3, "p_1275->g_698.f3", print_hash_value);
    transparent_crc(p_1275->g_699.f0, "p_1275->g_699.f0", print_hash_value);
    transparent_crc(p_1275->g_699.f1, "p_1275->g_699.f1", print_hash_value);
    transparent_crc(p_1275->g_699.f2, "p_1275->g_699.f2", print_hash_value);
    transparent_crc(p_1275->g_699.f3, "p_1275->g_699.f3", print_hash_value);
    transparent_crc(p_1275->g_700.f0, "p_1275->g_700.f0", print_hash_value);
    transparent_crc(p_1275->g_700.f1, "p_1275->g_700.f1", print_hash_value);
    transparent_crc(p_1275->g_700.f2, "p_1275->g_700.f2", print_hash_value);
    transparent_crc(p_1275->g_700.f3, "p_1275->g_700.f3", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1275->g_701[i][j].f0, "p_1275->g_701[i][j].f0", print_hash_value);
            transparent_crc(p_1275->g_701[i][j].f1, "p_1275->g_701[i][j].f1", print_hash_value);
            transparent_crc(p_1275->g_701[i][j].f2, "p_1275->g_701[i][j].f2", print_hash_value);
            transparent_crc(p_1275->g_701[i][j].f3, "p_1275->g_701[i][j].f3", print_hash_value);

        }
    }
    transparent_crc(p_1275->g_702.f0, "p_1275->g_702.f0", print_hash_value);
    transparent_crc(p_1275->g_702.f1, "p_1275->g_702.f1", print_hash_value);
    transparent_crc(p_1275->g_702.f2, "p_1275->g_702.f2", print_hash_value);
    transparent_crc(p_1275->g_702.f3, "p_1275->g_702.f3", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1275->g_703[i].f0, "p_1275->g_703[i].f0", print_hash_value);
        transparent_crc(p_1275->g_703[i].f1, "p_1275->g_703[i].f1", print_hash_value);
        transparent_crc(p_1275->g_703[i].f2, "p_1275->g_703[i].f2", print_hash_value);
        transparent_crc(p_1275->g_703[i].f3, "p_1275->g_703[i].f3", print_hash_value);

    }
    transparent_crc(p_1275->g_704.f0, "p_1275->g_704.f0", print_hash_value);
    transparent_crc(p_1275->g_704.f1, "p_1275->g_704.f1", print_hash_value);
    transparent_crc(p_1275->g_704.f2, "p_1275->g_704.f2", print_hash_value);
    transparent_crc(p_1275->g_704.f3, "p_1275->g_704.f3", print_hash_value);
    transparent_crc(p_1275->g_717.f0, "p_1275->g_717.f0", print_hash_value);
    transparent_crc(p_1275->g_717.f1, "p_1275->g_717.f1", print_hash_value);
    transparent_crc(p_1275->g_717.f2, "p_1275->g_717.f2", print_hash_value);
    transparent_crc(p_1275->g_717.f3, "p_1275->g_717.f3", print_hash_value);
    transparent_crc(p_1275->g_719.f0, "p_1275->g_719.f0", print_hash_value);
    transparent_crc(p_1275->g_719.f1, "p_1275->g_719.f1", print_hash_value);
    transparent_crc(p_1275->g_719.f2, "p_1275->g_719.f2", print_hash_value);
    transparent_crc(p_1275->g_719.f3, "p_1275->g_719.f3", print_hash_value);
    transparent_crc(p_1275->g_752.f0, "p_1275->g_752.f0", print_hash_value);
    transparent_crc(p_1275->g_752.f1, "p_1275->g_752.f1", print_hash_value);
    transparent_crc(p_1275->g_752.f2, "p_1275->g_752.f2", print_hash_value);
    transparent_crc(p_1275->g_752.f3, "p_1275->g_752.f3", print_hash_value);
    transparent_crc(p_1275->g_752.f4, "p_1275->g_752.f4", print_hash_value);
    transparent_crc(p_1275->g_752.f5, "p_1275->g_752.f5", print_hash_value);
    transparent_crc(p_1275->g_762.f0, "p_1275->g_762.f0", print_hash_value);
    transparent_crc(p_1275->g_771.f0, "p_1275->g_771.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1275->g_799[i], "p_1275->g_799[i]", print_hash_value);

    }
    transparent_crc(p_1275->g_815.f0, "p_1275->g_815.f0", print_hash_value);
    transparent_crc(p_1275->g_815.f1, "p_1275->g_815.f1", print_hash_value);
    transparent_crc(p_1275->g_815.f2, "p_1275->g_815.f2", print_hash_value);
    transparent_crc(p_1275->g_815.f3, "p_1275->g_815.f3", print_hash_value);
    transparent_crc(p_1275->g_831.f0, "p_1275->g_831.f0", print_hash_value);
    transparent_crc(p_1275->g_831.f1, "p_1275->g_831.f1", print_hash_value);
    transparent_crc(p_1275->g_831.f2, "p_1275->g_831.f2", print_hash_value);
    transparent_crc(p_1275->g_831.f3, "p_1275->g_831.f3", print_hash_value);
    transparent_crc(p_1275->g_831.f4, "p_1275->g_831.f4", print_hash_value);
    transparent_crc(p_1275->g_831.f5, "p_1275->g_831.f5", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1275->g_861[i], "p_1275->g_861[i]", print_hash_value);

    }
    transparent_crc(p_1275->g_875.f0, "p_1275->g_875.f0", print_hash_value);
    transparent_crc(p_1275->g_875.f1, "p_1275->g_875.f1", print_hash_value);
    transparent_crc(p_1275->g_875.f2, "p_1275->g_875.f2", print_hash_value);
    transparent_crc(p_1275->g_875.f3, "p_1275->g_875.f3", print_hash_value);
    transparent_crc(p_1275->g_876.f0, "p_1275->g_876.f0", print_hash_value);
    transparent_crc(p_1275->g_876.f1, "p_1275->g_876.f1", print_hash_value);
    transparent_crc(p_1275->g_876.f2, "p_1275->g_876.f2", print_hash_value);
    transparent_crc(p_1275->g_876.f3, "p_1275->g_876.f3", print_hash_value);
    transparent_crc(p_1275->g_876.f4, "p_1275->g_876.f4", print_hash_value);
    transparent_crc(p_1275->g_876.f5, "p_1275->g_876.f5", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1275->g_878[i].f0, "p_1275->g_878[i].f0", print_hash_value);
        transparent_crc(p_1275->g_878[i].f1, "p_1275->g_878[i].f1", print_hash_value);
        transparent_crc(p_1275->g_878[i].f2, "p_1275->g_878[i].f2", print_hash_value);
        transparent_crc(p_1275->g_878[i].f3, "p_1275->g_878[i].f3", print_hash_value);
        transparent_crc(p_1275->g_878[i].f4, "p_1275->g_878[i].f4", print_hash_value);
        transparent_crc(p_1275->g_878[i].f5, "p_1275->g_878[i].f5", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1275->g_897[i].f0, "p_1275->g_897[i].f0", print_hash_value);

    }
    transparent_crc(p_1275->g_911.f0, "p_1275->g_911.f0", print_hash_value);
    transparent_crc(p_1275->g_914, "p_1275->g_914", print_hash_value);
    transparent_crc(p_1275->g_960.f0, "p_1275->g_960.f0", print_hash_value);
    transparent_crc(p_1275->g_991.f0, "p_1275->g_991.f0", print_hash_value);
    transparent_crc(p_1275->g_1000, "p_1275->g_1000", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1275->g_1019[i].f0, "p_1275->g_1019[i].f0", print_hash_value);
        transparent_crc(p_1275->g_1019[i].f1, "p_1275->g_1019[i].f1", print_hash_value);
        transparent_crc(p_1275->g_1019[i].f2, "p_1275->g_1019[i].f2", print_hash_value);
        transparent_crc(p_1275->g_1019[i].f3, "p_1275->g_1019[i].f3", print_hash_value);
        transparent_crc(p_1275->g_1019[i].f4, "p_1275->g_1019[i].f4", print_hash_value);
        transparent_crc(p_1275->g_1019[i].f5, "p_1275->g_1019[i].f5", print_hash_value);

    }
    transparent_crc(p_1275->g_1022.f0, "p_1275->g_1022.f0", print_hash_value);
    transparent_crc(p_1275->g_1082.f0, "p_1275->g_1082.f0", print_hash_value);
    transparent_crc(p_1275->g_1119.f0, "p_1275->g_1119.f0", print_hash_value);
    transparent_crc(p_1275->g_1119.f1, "p_1275->g_1119.f1", print_hash_value);
    transparent_crc(p_1275->g_1119.f2, "p_1275->g_1119.f2", print_hash_value);
    transparent_crc(p_1275->g_1119.f3, "p_1275->g_1119.f3", print_hash_value);
    transparent_crc(p_1275->g_1119.f4, "p_1275->g_1119.f4", print_hash_value);
    transparent_crc(p_1275->g_1119.f5, "p_1275->g_1119.f5", print_hash_value);
    transparent_crc(p_1275->g_1164, "p_1275->g_1164", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1275->g_1167[i][j][k].f0, "p_1275->g_1167[i][j][k].f0", print_hash_value);
                transparent_crc(p_1275->g_1167[i][j][k].f1, "p_1275->g_1167[i][j][k].f1", print_hash_value);
                transparent_crc(p_1275->g_1167[i][j][k].f2, "p_1275->g_1167[i][j][k].f2", print_hash_value);
                transparent_crc(p_1275->g_1167[i][j][k].f3, "p_1275->g_1167[i][j][k].f3", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1275->g_1168[i][j].f0, "p_1275->g_1168[i][j].f0", print_hash_value);
            transparent_crc(p_1275->g_1168[i][j].f1, "p_1275->g_1168[i][j].f1", print_hash_value);
            transparent_crc(p_1275->g_1168[i][j].f2, "p_1275->g_1168[i][j].f2", print_hash_value);
            transparent_crc(p_1275->g_1168[i][j].f3, "p_1275->g_1168[i][j].f3", print_hash_value);
            transparent_crc(p_1275->g_1168[i][j].f4, "p_1275->g_1168[i][j].f4", print_hash_value);
            transparent_crc(p_1275->g_1168[i][j].f5, "p_1275->g_1168[i][j].f5", print_hash_value);

        }
    }
    transparent_crc(p_1275->g_1184, "p_1275->g_1184", print_hash_value);
    transparent_crc(p_1275->g_1217.f0, "p_1275->g_1217.f0", print_hash_value);
    transparent_crc(p_1275->g_1251.f0, "p_1275->g_1251.f0", print_hash_value);
    transparent_crc(p_1275->g_1251.f1, "p_1275->g_1251.f1", print_hash_value);
    transparent_crc(p_1275->g_1251.f2, "p_1275->g_1251.f2", print_hash_value);
    transparent_crc(p_1275->g_1251.f3, "p_1275->g_1251.f3", print_hash_value);
    transparent_crc(p_1275->g_1251.f4, "p_1275->g_1251.f4", print_hash_value);
    transparent_crc(p_1275->g_1251.f5, "p_1275->g_1251.f5", print_hash_value);
    transparent_crc(p_1275->g_1255, "p_1275->g_1255", print_hash_value);
    transparent_crc(p_1275->g_1261.f0, "p_1275->g_1261.f0", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
