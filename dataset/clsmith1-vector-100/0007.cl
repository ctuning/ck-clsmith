// ---fake_divergence -g 56,5,9 -l 4,1,9
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


// Seed: 7

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int32_t  f0;
   int8_t  f1;
   volatile int8_t * f2;
   int8_t * f3;
   volatile int32_t  f4;
};

union U1 {
   uint16_t  f0;
   uint8_t  f1;
   uint32_t  f2;
   int32_t  f3;
};

union U2 {
   int16_t  f0;
   uint8_t  f1;
};

struct S3 {
    int32_t g_2;
    int8_t g_23;
    int8_t *g_22;
    int32_t g_35;
    uint64_t g_63[7];
    uint64_t g_68;
    union U1 g_69;
    volatile union U0 g_77;
    uint64_t g_94;
    union U2 g_101;
    int8_t g_109;
    uint8_t g_111;
    VECTOR(uint32_t, 16) g_121;
    uint16_t g_132;
    uint16_t g_135;
    int32_t *g_138[9][2][7];
    int32_t ** volatile g_137;
    int32_t * volatile g_141;
    int32_t * volatile * volatile g_142;
    uint16_t g_148;
    volatile int32_t g_161;
    volatile int32_t *g_160[3][1];
    volatile int32_t **g_159;
    volatile int32_t ** volatile *g_158;
    int32_t * volatile * volatile g_167;
    int32_t ** volatile g_170;
    int32_t * volatile * volatile g_188;
    VECTOR(uint32_t, 2) g_192;
    union U0 g_211;
    volatile VECTOR(int64_t, 2) g_233;
    volatile VECTOR(uint32_t, 8) g_254;
    int8_t **g_267;
    uint32_t g_297[2][4];
    volatile VECTOR(uint64_t, 16) g_316;
    VECTOR(int8_t, 16) g_319;
    uint8_t g_332;
    int32_t g_343;
    int32_t g_353;
    int32_t * volatile g_352;
    VECTOR(int16_t, 16) g_390;
    int16_t g_403[1][4];
    uint8_t g_454;
    VECTOR(int16_t, 16) g_471;
    union U2 *g_490;
    uint64_t *g_501[9];
    union U0 g_544;
    int32_t ** volatile g_569;
    VECTOR(uint64_t, 4) g_600;
    int64_t g_624;
    volatile VECTOR(int8_t, 16) g_641;
    VECTOR(int8_t, 8) g_642;
    volatile VECTOR(uint64_t, 8) g_658;
    volatile int16_t g_721;
    volatile VECTOR(int8_t, 2) g_733;
    volatile VECTOR(uint8_t, 2) g_764;
    volatile VECTOR(int8_t, 8) g_771;
    volatile VECTOR(int8_t, 8) g_773;
    VECTOR(int8_t, 4) g_774;
    VECTOR(int8_t, 4) g_775;
    VECTOR(uint8_t, 8) g_785;
    VECTOR(uint8_t, 8) g_786;
    uint16_t * volatile * volatile g_792;
    VECTOR(int16_t, 4) g_805;
    volatile VECTOR(int32_t, 8) g_845;
    VECTOR(uint64_t, 2) g_880;
    uint64_t *g_892[3];
    uint64_t ** volatile g_891;
    uint64_t ** volatile * volatile g_893;
    union U0 g_900;
    VECTOR(uint8_t, 8) g_932;
    int32_t ** volatile g_938[2];
    int32_t ** volatile g_940;
    int32_t ** volatile g_941;
    int32_t ** volatile g_942[7][3][6];
    int32_t ** volatile g_945;
    volatile VECTOR(int64_t, 8) g_946;
    uint32_t g_963;
    int16_t *g_1007;
    volatile VECTOR(int8_t, 8) g_1019;
    VECTOR(int64_t, 4) g_1032;
    VECTOR(uint64_t, 2) g_1034;
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
int16_t  func_1(struct S3 * p_1083);
uint16_t  func_3(uint32_t  p_4, struct S3 * p_1083);
int32_t  func_6(int32_t  p_7, uint64_t  p_8, int8_t  p_9, struct S3 * p_1083);
int8_t  func_16(int8_t * p_17, int8_t * p_18, int8_t * p_19, int16_t  p_20, uint32_t  p_21, struct S3 * p_1083);
int8_t * func_25(int8_t * p_26, int64_t  p_27, int8_t * p_28, uint32_t  p_29, uint32_t  p_30, struct S3 * p_1083);
int8_t  func_38(int8_t * p_39, int8_t * p_40, struct S3 * p_1083);
int8_t * func_42(int8_t * p_43, int16_t  p_44, int32_t  p_45, uint32_t  p_46, int8_t * p_47, struct S3 * p_1083);
int8_t * func_48(int32_t * p_49, int8_t * p_50, uint32_t  p_51, int8_t * p_52, struct S3 * p_1083);
int32_t * func_53(int8_t  p_54, int8_t * p_55, union U2  p_56, int64_t  p_57, int64_t  p_58, struct S3 * p_1083);
int8_t * func_59(int64_t  p_60, union U1  p_61, struct S3 * p_1083);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1083->g_2 p_1083->g_22 p_1083->g_35 p_1083->g_319 p_1083->g_158 p_1083->g_159 p_1083->g_160 p_1083->g_161 p_1083->g_69 p_1083->g_77.f0 p_1083->g_332 p_1083->g_23 p_1083->g_343 p_1083->g_63 p_1083->g_94 p_1083->g_141 p_1083->g_454 p_1083->g_792 p_1083->g_135 p_1083->g_786 p_1083->g_891 p_1083->g_893 p_1083->g_900 p_1083->g_192 p_1083->g_785 p_1083->g_932 p_1083->g_642 p_1083->g_940 p_1083->g_945 p_1083->g_946 p_1083->g_963 p_1083->g_774 p_1083->g_880 p_1083->g_403 p_1083->g_900.f0 p_1083->g_805 p_1083->g_775 p_1083->g_109 p_1083->g_69.f1 p_1083->g_1019 p_1083->g_101.f0 p_1083->g_1032 p_1083->g_1034 p_1083->g_353
 * writes: p_1083->g_35 p_1083->g_319 p_1083->g_161 p_1083->g_624 p_1083->g_23 p_1083->g_94 p_1083->g_69.f2 p_1083->g_332 p_1083->g_111 p_1083->g_891 p_1083->g_69.f0 p_1083->g_785 p_1083->g_490 p_1083->g_138 p_1083->g_963 p_1083->g_1007 p_1083->g_101.f1 p_1083->g_69.f1 p_1083->g_101.f0 p_1083->g_353
 */
int16_t  func_1(struct S3 * p_1083)
{ /* block id: 4 */
    int64_t l_5 = 0x74C38B6B0E1B1B55L;
    VECTOR(uint64_t, 2) l_955 = (VECTOR(uint64_t, 2))(6UL, 0UL);
    uint32_t *l_962 = &p_1083->g_963;
    int16_t *l_1030 = (void*)0;
    int16_t *l_1031 = &p_1083->g_403[0][2];
    VECTOR(uint64_t, 16) l_1033 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL, (VECTOR(uint64_t, 2))(0UL, 1UL), (VECTOR(uint64_t, 2))(0UL, 1UL), 0UL, 1UL, 0UL, 1UL);
    int32_t l_1037 = 0L;
    uint64_t **l_1045 = &p_1083->g_892[0];
    int32_t l_1062 = (-1L);
    union U0 *l_1069[3];
    union U0 **l_1068 = &l_1069[0];
    int i;
    for (i = 0; i < 3; i++)
        l_1069[i] = &p_1083->g_211;
    if ((p_1083->g_2 ^ ((func_3(l_5, p_1083) , ((VECTOR(int64_t, 8))(p_1083->g_946.s74443535)).s7) == ((safe_mul_func_int8_t_s_s((safe_div_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s(((safe_rshift_func_uint16_t_u_u((0x97A16112A6E2393EL >= ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(4UL, l_5, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(min(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(l_955.yxyyxxxyxyyyyyyx)))), (uint64_t)(safe_add_func_int32_t_s_s((((safe_mul_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s(p_1083->g_343, 5)), (((*l_962) = 0UL) || (safe_lshift_func_uint8_t_u_u((p_1083->g_786.s2 , ((++(*l_962)) < l_955.x)), p_1083->g_774.z))))) < 0xA5L) >= 0x4C7AC2C33C79F1FEL), p_1083->g_880.y))))).s5dcd)), 18446744073709551614UL, 0xAB9E01E12F9B4FBBL)).hi)).x), l_955.y)) <= 0xE1E4B9BF50AD7678L), p_1083->g_2)), 65528UL)), l_5)) > p_1083->g_403[0][0]))))
    { /* block id: 350 */
        VECTOR(int16_t, 4) l_972 = (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), 0x2E83L), 0x2E83L);
        int32_t *l_973 = &p_1083->g_35;
        int32_t l_983 = (-1L);
        union U2 l_997[9][10] = {{{9L},{-1L},{0L},{0x427DL},{3L},{9L},{0x427DL},{-3L},{0x427DL},{9L}},{{9L},{-1L},{0L},{0x427DL},{3L},{9L},{0x427DL},{-3L},{0x427DL},{9L}},{{9L},{-1L},{0L},{0x427DL},{3L},{9L},{0x427DL},{-3L},{0x427DL},{9L}},{{9L},{-1L},{0L},{0x427DL},{3L},{9L},{0x427DL},{-3L},{0x427DL},{9L}},{{9L},{-1L},{0L},{0x427DL},{3L},{9L},{0x427DL},{-3L},{0x427DL},{9L}},{{9L},{-1L},{0L},{0x427DL},{3L},{9L},{0x427DL},{-3L},{0x427DL},{9L}},{{9L},{-1L},{0L},{0x427DL},{3L},{9L},{0x427DL},{-3L},{0x427DL},{9L}},{{9L},{-1L},{0L},{0x427DL},{3L},{9L},{0x427DL},{-3L},{0x427DL},{9L}},{{9L},{-1L},{0L},{0x427DL},{3L},{9L},{0x427DL},{-3L},{0x427DL},{9L}}};
        uint16_t l_1024 = 0x87F3L;
        int i, j;
        (**p_1083->g_159) = ((*l_973) = ((5L ^ p_1083->g_946.s7) | ((safe_add_func_int16_t_s_s((safe_rshift_func_int16_t_s_s((((*l_962) = ((l_5 < ((void*)0 != &p_1083->g_403[0][0])) >= l_972.x)) >= ((l_955.y == (*p_1083->g_22)) > (l_955.x ^ l_972.y))), l_972.y)), 65535UL)) != (*p_1083->g_22))));
        for (l_5 = 0; (l_5 != (-15)); --l_5)
        { /* block id: 356 */
            int16_t l_984 = 4L;
            uint16_t l_985 = 0x6684L;
            int32_t l_1023 = 1L;
            for (p_1083->g_963 = 0; (p_1083->g_963 == 46); p_1083->g_963 = safe_add_func_uint64_t_u_u(p_1083->g_963, 4))
            { /* block id: 359 */
                int32_t *l_978 = &p_1083->g_353;
                int32_t *l_979 = &p_1083->g_35;
                int32_t *l_980 = &p_1083->g_35;
                int32_t *l_981 = &p_1083->g_35;
                int32_t *l_982[6][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
                VECTOR(uint32_t, 8) l_1020 = (VECTOR(uint32_t, 8))(8UL, (VECTOR(uint32_t, 4))(8UL, (VECTOR(uint32_t, 2))(8UL, 0UL), 0UL), 0UL, 8UL, 0UL);
                int i, j;
                l_985++;
                for (l_985 = (-17); (l_985 == 30); l_985 = safe_add_func_uint64_t_u_u(l_985, 4))
                { /* block id: 363 */
                    int16_t **l_1002 = (void*)0;
                    int16_t **l_1003 = (void*)0;
                    int16_t **l_1004 = (void*)0;
                    int16_t **l_1005 = (void*)0;
                    int16_t **l_1006[3];
                    uint8_t *l_1014 = &p_1083->g_101.f1;
                    int32_t l_1027 = 7L;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1006[i] = (void*)0;
                    (**p_1083->g_159) = ((((*l_1014) = (safe_unary_minus_func_uint16_t_u((((safe_mul_func_int16_t_s_s(0x07EDL, (((*l_981) | (+p_1083->g_900.f0)) || (safe_mul_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s((l_997[1][5] , (safe_div_func_int16_t_s_s(p_1083->g_642.s2, 65528UL))), 0)), ((safe_lshift_func_int8_t_s_u(((&p_1083->g_721 == (p_1083->g_1007 = &p_1083->g_403[0][1])) | ((safe_rshift_func_int16_t_s_s((safe_add_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 4))(0x5202L, ((VECTOR(uint16_t, 2))(0x6729L)), 1UL)).x, p_1083->g_805.z)), 0x419EL)), 9)) , l_984)), l_5)) >= p_1083->g_775.x)))))) | 0x5B4B4259L) | l_955.x)))) , 0xF4F5L) <= p_1083->g_109);
                    if ((*p_1083->g_141))
                        continue;
                    for (p_1083->g_69.f1 = (-23); (p_1083->g_69.f1 < 25); ++p_1083->g_69.f1)
                    { /* block id: 370 */
                        (**p_1083->g_159) = ((safe_add_func_uint16_t_u_u(((p_1083->g_642.s4 | ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(p_1083->g_1019.s1711101040632560)))).see1d)).z) == ((VECTOR(uint32_t, 2))(l_1020.s21)).even), l_985)) , (l_984 >= l_955.y));
                    }
                    for (p_1083->g_101.f0 = (-5); (p_1083->g_101.f0 <= 3); p_1083->g_101.f0 = safe_add_func_uint32_t_u_u(p_1083->g_101.f0, 4))
                    { /* block id: 375 */
                        ++l_1024;
                        if (l_1027)
                            break;
                    }
                }
                (*l_978) = (*l_973);
            }
        }
    }
    else
    { /* block id: 383 */
        uint64_t *l_1035 = (void*)0;
        uint64_t *l_1036 = &p_1083->g_94;
        int32_t l_1048 = 0x52410913L;
        int32_t *l_1053 = &p_1083->g_353;
        int32_t l_1054 = 0x768BCF8FL;
        uint64_t *l_1055 = (void*)0;
        uint64_t *l_1056 = (void*)0;
        uint64_t *l_1057 = (void*)0;
        uint64_t *l_1058 = (void*)0;
        uint64_t *l_1059 = (void*)0;
        uint64_t *l_1060 = (void*)0;
        uint64_t *l_1061[3][4][10] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int32_t l_1074 = 1L;
        int32_t l_1079 = 0x3C110C53L;
        int i, j, k;
        if ((safe_sub_func_uint32_t_u_u((l_1037 ^= ((l_1030 != (l_1031 = (void*)0)) ^ ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 4))(abs(((VECTOR(int64_t, 4))(p_1083->g_1032.wwyz))))).wxzxyxxxzwxxwxxy, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(min(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(l_1033.s829e)), 18446744073709551615UL, ((*l_1036) = ((VECTOR(uint64_t, 2))(p_1083->g_1034.yx)).odd), 0xEC57E05DDE232CF6L, 0x0EE054E9E09ED3E6L)).odd, (uint64_t)(((VECTOR(int16_t, 2))(0x3A86L, 1L)).odd || 0x3207L)))))).wywwzwyzxzzzzzyy))))).sab)).odd)), (+(safe_mod_func_int64_t_s_s(((~(safe_sub_func_int16_t_s_s((((safe_unary_minus_func_int64_t_s((safe_div_func_int16_t_s_s(((*p_1083->g_893) != l_1045), 5UL)))) > (safe_mod_func_int64_t_s_s(l_1048, l_1048))) == (l_1062 |= ((safe_sub_func_int16_t_s_s(((((*l_1053) |= (safe_div_func_uint8_t_u_u(l_1048, 2UL))) || l_1054) <= (*p_1083->g_22)), l_1033.se)) >= GROUP_DIVERGE(1, 1)))), l_1033.sa))) & 0x5E88F3D9L), (-2L)))))))
        { /* block id: 389 */
            VECTOR(int8_t, 4) l_1065 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-5L)), (-5L));
            union U2 *l_1066 = &p_1083->g_101;
            union U2 **l_1067 = &l_1066;
            int i;
            (*l_1053) = (safe_mul_func_int8_t_s_s(0x4BL, ((*p_1083->g_22) = ((VECTOR(int8_t, 8))(l_1065.zwzxwwzz)).s4)));
            (*l_1067) = l_1066;
        }
        else
        { /* block id: 393 */
            union U0 ***l_1070[7] = {&l_1068,&l_1068,&l_1068,&l_1068,&l_1068,&l_1068,&l_1068};
            int32_t *l_1071 = &p_1083->g_353;
            int32_t *l_1072 = &l_1054;
            int32_t *l_1073 = &p_1083->g_35;
            int32_t *l_1075 = &p_1083->g_353;
            int32_t *l_1076 = &l_1054;
            int32_t *l_1077 = &l_1037;
            int32_t *l_1078[2][10][3] = {{{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037}},{{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037},{&p_1083->g_2,(void*)0,&l_1037}}};
            uint32_t l_1080 = 0x303799B7L;
            int i, j, k;
            (**p_1083->g_159) &= ((((l_1068 = l_1068) != &l_1069[0]) , p_1083->g_69) , (*l_1053));
            l_1080--;
        }
    }
    return l_1033.sa;
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_2 p_1083->g_22 p_1083->g_35 p_1083->g_319 p_1083->g_158 p_1083->g_159 p_1083->g_160 p_1083->g_161 p_1083->g_69 p_1083->g_77.f0 p_1083->g_332 p_1083->g_23 p_1083->g_343 p_1083->g_63 p_1083->g_94 p_1083->g_141 p_1083->g_454 p_1083->g_792 p_1083->g_135 p_1083->g_786 p_1083->g_891 p_1083->g_893 p_1083->g_900 p_1083->g_192 p_1083->g_785 p_1083->g_932 p_1083->g_642 p_1083->g_940 p_1083->g_945
 * writes: p_1083->g_35 p_1083->g_319 p_1083->g_161 p_1083->g_624 p_1083->g_23 p_1083->g_94 p_1083->g_69.f2 p_1083->g_332 p_1083->g_111 p_1083->g_891 p_1083->g_69.f0 p_1083->g_785 p_1083->g_490 p_1083->g_138
 */
uint16_t  func_3(uint32_t  p_4, struct S3 * p_1083)
{ /* block id: 5 */
    VECTOR(int16_t, 4) l_14 = (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), 7L), 7L);
    VECTOR(int16_t, 8) l_15 = (VECTOR(int16_t, 8))(0x5411L, (VECTOR(int16_t, 4))(0x5411L, (VECTOR(int16_t, 2))(0x5411L, 0x04CBL), 0x04CBL), 0x04CBL, 0x5411L, 0x04CBL);
    int8_t *l_24 = &p_1083->g_23;
    int32_t *l_944 = &p_1083->g_35;
    int i;
    (***p_1083->g_158) = func_6((0x3CL <= (p_1083->g_2 ^ (safe_mod_func_int16_t_s_s((safe_rshift_func_int16_t_s_s(((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 8))(l_14.yxzwwyyw)).s5045370470651162, ((VECTOR(int16_t, 16))(l_15.s6556231143740233))))).s7, (l_14.y >= p_4))), p_1083->g_2)))), p_4, func_16(p_1083->g_22, l_24, func_25(l_24, l_15.s6, l_24, l_15.s2, p_4, p_1083), p_1083->g_785.s2, p_4, p_1083), p_1083);
    (*p_1083->g_945) = l_944;
    return (*l_944);
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_940 p_1083->g_159 p_1083->g_160 p_1083->g_161
 * writes: p_1083->g_138 p_1083->g_161
 */
int32_t  func_6(int32_t  p_7, uint64_t  p_8, int8_t  p_9, struct S3 * p_1083)
{ /* block id: 340 */
    int32_t *l_937[10] = {(void*)0,&p_1083->g_35,(void*)0,(void*)0,&p_1083->g_35,(void*)0,(void*)0,&p_1083->g_35,(void*)0,(void*)0};
    int32_t **l_939 = (void*)0;
    int32_t **l_943 = &l_937[8];
    int i;
    (*p_1083->g_940) = l_937[8];
    (*l_943) = l_937[2];
    (**p_1083->g_159) &= p_8;
    return p_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_69 p_1083->g_932 p_1083->g_23 p_1083->g_642 p_1083->g_159 p_1083->g_160 p_1083->g_22
 * writes: p_1083->g_23 p_1083->g_785 p_1083->g_161 p_1083->g_490
 */
int8_t  func_16(int8_t * p_17, int8_t * p_18, int8_t * p_19, int16_t  p_20, uint32_t  p_21, struct S3 * p_1083)
{ /* block id: 334 */
    VECTOR(uint32_t, 4) l_924 = (VECTOR(uint32_t, 4))(0x6B8ECC2EL, (VECTOR(uint32_t, 2))(0x6B8ECC2EL, 0x731DB901L), 0x731DB901L);
    int8_t *l_927 = (void*)0;
    int8_t l_933[6] = {0x39L,0L,0x39L,0x39L,0L,0x39L};
    uint16_t l_934 = 65535UL;
    int8_t l_935 = 1L;
    union U2 **l_936 = &p_1083->g_490;
    int i;
    (**p_1083->g_159) = ((p_1083->g_785.s2 = (p_1083->g_69 , ((safe_mul_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(((((VECTOR(uint32_t, 8))((safe_sub_func_uint8_t_u_u(246UL, ((((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), p_21)) , ((!((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(min(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(l_924.xwxy)), ((safe_mod_func_int32_t_s_s((((l_927 != l_927) == (((*p_17) = ((safe_mul_func_int8_t_s_s(((0x9FL & (safe_lshift_func_uint8_t_u_s(p_21, 5))) < ((((VECTOR(uint8_t, 16))(abs(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0x41L, 5UL)), ((VECTOR(uint8_t, 2))(0UL, 0x5DL)), ((VECTOR(uint8_t, 2))(p_1083->g_932.s06)), 0x0CL, 0xC1L)).s64)).xyyxyyxy)).s2356107762414174))).se < (*p_18)) > 3UL)), (-1L))) , (*p_19))) , p_20)) ^ l_924.x), l_933[5])) > p_20), p_1083->g_642.s7, 0x0C6E4C29L, 0xA93D8C0EL)).s3176346667411631, (uint32_t)p_20))).s62)).odd) , l_933[2])) <= l_934) != l_933[0]))), 0xA6357165L, ((VECTOR(uint32_t, 4))(0x40DA1BA9L)), 4294967293UL, 1UL)).s2 != l_935) == 0xBB025139A5505711L), 0x057D24ADL)), (-1L))) || (-9L)))) < p_20);
    (*l_936) = &p_1083->g_101;
    return (*p_1083->g_22);
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_35 p_1083->g_319 p_1083->g_158 p_1083->g_159 p_1083->g_160 p_1083->g_161 p_1083->g_69 p_1083->g_77.f0 p_1083->g_332 p_1083->g_22 p_1083->g_23 p_1083->g_343 p_1083->g_63 p_1083->g_94 p_1083->g_141 p_1083->g_2 p_1083->g_454 p_1083->g_792 p_1083->g_135 p_1083->g_786 p_1083->g_891 p_1083->g_893 p_1083->g_900 p_1083->g_192
 * writes: p_1083->g_35 p_1083->g_319 p_1083->g_161 p_1083->g_624 p_1083->g_23 p_1083->g_94 p_1083->g_69.f2 p_1083->g_332 p_1083->g_111 p_1083->g_891 p_1083->g_69.f0
 */
int8_t * func_25(int8_t * p_26, int64_t  p_27, int8_t * p_28, uint32_t  p_29, uint32_t  p_30, struct S3 * p_1083)
{ /* block id: 6 */
    uint16_t l_102 = 5UL;
    int32_t l_589 = 4L;
    uint32_t l_612 = 5UL;
    int32_t l_614 = 0x27B0CA7EL;
    int8_t *l_659 = (void*)0;
    uint64_t *l_665 = (void*)0;
    int32_t l_692 = 0x5A7C7672L;
    int32_t l_695[8][7] = {{1L,0x39AB61BCL,7L,1L,0x704E06B8L,7L,7L},{1L,0x39AB61BCL,7L,1L,0x704E06B8L,7L,7L},{1L,0x39AB61BCL,7L,1L,0x704E06B8L,7L,7L},{1L,0x39AB61BCL,7L,1L,0x704E06B8L,7L,7L},{1L,0x39AB61BCL,7L,1L,0x704E06B8L,7L,7L},{1L,0x39AB61BCL,7L,1L,0x704E06B8L,7L,7L},{1L,0x39AB61BCL,7L,1L,0x704E06B8L,7L,7L},{1L,0x39AB61BCL,7L,1L,0x704E06B8L,7L,7L}};
    uint64_t l_749 = 0xA59E8593B52B46F4L;
    VECTOR(uint16_t, 4) l_778 = (VECTOR(uint16_t, 4))(0xA0FDL, (VECTOR(uint16_t, 2))(0xA0FDL, 0x1A81L), 0x1A81L);
    int32_t l_837 = (-1L);
    VECTOR(uint8_t, 4) l_898 = (VECTOR(uint8_t, 4))(254UL, (VECTOR(uint8_t, 2))(254UL, 1UL), 1UL);
    VECTOR(int16_t, 2) l_899 = (VECTOR(int16_t, 2))((-4L), 0x643BL);
    int i, j;
    for (p_27 = (-6); (p_27 >= (-1)); p_27++)
    { /* block id: 9 */
        int32_t *l_33 = (void*)0;
        int32_t *l_34 = &p_1083->g_35;
        int8_t *l_41 = &p_1083->g_23;
        uint64_t *l_62 = &p_1083->g_63[6];
        uint64_t *l_67 = &p_1083->g_68;
        int8_t *l_100[4];
        int8_t **l_99 = &l_100[0];
        int8_t *l_535[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint16_t l_580 = 65526UL;
        union U2 l_587 = {0x25E7L};
        VECTOR(uint16_t, 16) l_604 = (VECTOR(uint16_t, 16))(65528UL, (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 0UL), 0UL), 0UL, 65528UL, 0UL, (VECTOR(uint16_t, 2))(65528UL, 0UL), (VECTOR(uint16_t, 2))(65528UL, 0UL), 65528UL, 0UL, 65528UL, 0UL);
        VECTOR(uint32_t, 2) l_607 = (VECTOR(uint32_t, 2))(4294967295UL, 0x58E6CC30L);
        VECTOR(uint32_t, 2) l_631 = (VECTOR(uint32_t, 2))(0x4077FF9DL, 4294967295UL);
        VECTOR(int8_t, 8) l_640 = (VECTOR(int8_t, 8))(0x2AL, (VECTOR(int8_t, 4))(0x2AL, (VECTOR(int8_t, 2))(0x2AL, 0x5BL), 0x5BL), 0x5BL, 0x2AL, 0x5BL);
        VECTOR(int16_t, 16) l_662 = (VECTOR(int16_t, 16))(0x2DDEL, (VECTOR(int16_t, 4))(0x2DDEL, (VECTOR(int16_t, 2))(0x2DDEL, (-1L)), (-1L)), (-1L), 0x2DDEL, (-1L), (VECTOR(int16_t, 2))(0x2DDEL, (-1L)), (VECTOR(int16_t, 2))(0x2DDEL, (-1L)), 0x2DDEL, (-1L), 0x2DDEL, (-1L));
        int32_t l_684 = 0L;
        int32_t l_685 = 0x129E07B1L;
        int32_t l_686 = 0x39B04546L;
        int32_t l_690 = 0x46FD47F9L;
        int32_t l_693 = 0x5C88B2CDL;
        int32_t l_701 = 0x0A1D668AL;
        int32_t l_702 = (-1L);
        int32_t l_704 = 0x7DCF3FC3L;
        int32_t l_705 = 0x79A94AC4L;
        int32_t l_707[5][5] = {{0x5E92E83AL,0L,0L,0x5E92E83AL,0x5E92E83AL},{0x5E92E83AL,0L,0L,0x5E92E83AL,0x5E92E83AL},{0x5E92E83AL,0L,0L,0x5E92E83AL,0x5E92E83AL},{0x5E92E83AL,0L,0L,0x5E92E83AL,0x5E92E83AL},{0x5E92E83AL,0L,0L,0x5E92E83AL,0x5E92E83AL}};
        union U1 *l_736 = &p_1083->g_69;
        uint64_t l_752 = 3UL;
        uint32_t l_789 = 1UL;
        uint16_t *l_794 = &p_1083->g_135;
        uint16_t **l_793[2][4][7] = {{{&l_794,&l_794,&l_794,(void*)0,&l_794,(void*)0,&l_794},{&l_794,&l_794,&l_794,(void*)0,&l_794,(void*)0,&l_794},{&l_794,&l_794,&l_794,(void*)0,&l_794,(void*)0,&l_794},{&l_794,&l_794,&l_794,(void*)0,&l_794,(void*)0,&l_794}},{{&l_794,&l_794,&l_794,(void*)0,&l_794,(void*)0,&l_794},{&l_794,&l_794,&l_794,(void*)0,&l_794,(void*)0,&l_794},{&l_794,&l_794,&l_794,(void*)0,&l_794,(void*)0,&l_794},{&l_794,&l_794,&l_794,(void*)0,&l_794,(void*)0,&l_794}}};
        int8_t l_833 = 6L;
        int32_t l_857 = 0x12481DFEL;
        int8_t l_865 = 0L;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_100[i] = (void*)0;
        (*l_34) |= p_30;
        if (((*l_34) < (safe_add_func_int8_t_s_s(((void*)0 == l_33), (p_1083->g_319.sc |= ((VECTOR(int8_t, 16))(func_38(l_41, (p_28 = func_42(func_48(func_53((*l_34), ((*l_99) = func_59((((*l_62) = p_29) , ((safe_unary_minus_func_uint32_t_u(p_29)) == (((*l_67) = (++(*l_62))) , (*l_34)))), p_1083->g_69, p_1083)), p_1083->g_101, l_102, p_30, p_1083), l_41, (*l_34), l_535[3], p_1083), p_27, p_1083->g_390.s9, (*l_34), p_26, p_1083)), p_1083), (-1L), (*l_34), (*p_1083->g_22), (-1L), 0x76L, ((VECTOR(int8_t, 2))(0x1BL)), 0x18L, l_102, l_102, 0L, ((VECTOR(int8_t, 2))((-1L))), 0x0DL, 7L)).s1)))))
        { /* block id: 241 */
            int8_t l_588 = 0x18L;
            (***p_1083->g_158) |= ((safe_mul_func_int8_t_s_s((safe_rshift_func_int8_t_s_u(((!((2L | p_27) >= (((void*)0 != &p_1083->g_403[0][0]) >= 0x8E31D7A1L))) || l_580), 6)), (((safe_mul_func_int16_t_s_s((safe_add_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s(((((l_587 , (0xAFC6C5A67CB2AC8CL & 8UL)) == (-1L)) && l_588) <= 0x4F09L), l_102)), l_588)), 0x3B97L)) , 1L) > l_588))) ^ p_30);
        }
        else
        { /* block id: 243 */
            VECTOR(uint32_t, 2) l_601 = (VECTOR(uint32_t, 2))(1UL, 0xCC2D113CL);
            int16_t *l_610 = &l_587.f0;
            uint16_t l_611 = 0xD981L;
            int64_t l_626[10] = {0x60E4F6423E43C2D1L,(-3L),0x60E4F6423E43C2D1L,0x60E4F6423E43C2D1L,(-3L),0x60E4F6423E43C2D1L,0x60E4F6423E43C2D1L,(-3L),0x60E4F6423E43C2D1L,0x60E4F6423E43C2D1L};
            uint64_t *l_651 = &p_1083->g_68;
            int32_t l_653 = 0x37E011CCL;
            VECTOR(int16_t, 16) l_663 = (VECTOR(int16_t, 16))(0x04C4L, (VECTOR(int16_t, 4))(0x04C4L, (VECTOR(int16_t, 2))(0x04C4L, 0x0DCDL), 0x0DCDL), 0x0DCDL, 0x04C4L, 0x0DCDL, (VECTOR(int16_t, 2))(0x04C4L, 0x0DCDL), (VECTOR(int16_t, 2))(0x04C4L, 0x0DCDL), 0x04C4L, 0x0DCDL, 0x04C4L, 0x0DCDL);
            int32_t l_677 = 0x7267480EL;
            int32_t l_682 = 1L;
            int32_t l_683 = 0x7B089C43L;
            int32_t l_687 = 0x0D37CE51L;
            int32_t l_691 = 3L;
            int8_t l_698 = 0x28L;
            int32_t l_700 = 5L;
            int32_t l_703 = 0x6F3ADF68L;
            int32_t l_706[10] = {0L,0x3B0CBB07L,0L,0L,0x3B0CBB07L,0L,0L,0x3B0CBB07L,0L,0L};
            VECTOR(uint8_t, 8) l_763 = (VECTOR(uint8_t, 8))(0x76L, (VECTOR(uint8_t, 4))(0x76L, (VECTOR(uint8_t, 2))(0x76L, 255UL), 255UL), 255UL, 0x76L, 255UL);
            VECTOR(int8_t, 4) l_772 = (VECTOR(int8_t, 4))(0x1AL, (VECTOR(int8_t, 2))(0x1AL, 0x47L), 0x47L);
            uint32_t *l_777 = (void*)0;
            VECTOR(uint32_t, 8) l_804 = (VECTOR(uint32_t, 8))(0x063E7440L, (VECTOR(uint32_t, 4))(0x063E7440L, (VECTOR(uint32_t, 2))(0x063E7440L, 1UL), 1UL), 1UL, 0x063E7440L, 1UL);
            int16_t l_819 = (-5L);
            int64_t l_832 = 0x013604B674268B01L;
            int8_t ***l_840 = &l_99;
            union U0 *l_855 = &p_1083->g_211;
            VECTOR(uint16_t, 2) l_867 = (VECTOR(uint16_t, 2))(1UL, 0x77ACL);
            int i;
            if (((((((VECTOR(uint32_t, 16))(3UL, ((p_29 & ((l_589 |= (0xEEL | (*l_34))) > ((+(p_30 != (((((*l_610) = (((safe_lshift_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_s((((VECTOR(uint64_t, 2))(p_1083->g_600.zy)).hi && (0xF9F0B485L != ((VECTOR(uint32_t, 2))(l_601.yx)).hi)), (((*p_1083->g_22) = ((safe_mod_func_int16_t_s_s(0x436FL, ((VECTOR(uint16_t, 16))(l_604.s124435991d2cf210)).s3)) < 0UL)) , (safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_607.yy)).xxyx)).wyyywyxyzywyzyzw)).sa, (safe_mul_func_uint8_t_u_u(p_27, l_601.y))))))), 1)) == l_102), l_102)), p_1083->g_63[4])) , p_1083->g_471.sc) , p_29)) , l_601.x) , l_601.y) >= p_1083->g_94))) <= GROUP_DIVERGE(0, 1)))) >= l_611), 0UL, ((VECTOR(uint32_t, 2))(4294967295UL)), 0xF22E40B5L, p_30, 8UL, 0x3029512EL, l_612, ((VECTOR(uint32_t, 2))(0x71976257L)), ((VECTOR(uint32_t, 4))(0UL)))).sc <= 1L) <= l_612) != 1L) & l_611))
            { /* block id: 247 */
                int8_t ***l_613[6];
                int64_t *l_623 = &p_1083->g_624;
                int32_t l_625 = 0x693364ECL;
                VECTOR(int8_t, 16) l_643 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 4L), 4L), 4L, 1L, 4L, (VECTOR(int8_t, 2))(1L, 4L), (VECTOR(int8_t, 2))(1L, 4L), 1L, 4L, 1L, 4L);
                uint64_t l_648 = 0xAB1880D236786A66L;
                uint16_t *l_652 = (void*)0;
                int i;
                for (i = 0; i < 6; i++)
                    l_613[i] = (void*)0;
                (***p_1083->g_158) = (6UL <= ((((p_1083->g_69 , &p_1083->g_267) == l_613[5]) != (p_1083->g_77.f0 == (((+(((l_614 | (safe_div_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(0xA78BL, 65535UL)))).even, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))((l_611 , (p_30 < (((*l_623) = (safe_lshift_func_int16_t_s_s(((*l_610) &= (safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), 6))), 3))) || (l_625 && p_1083->g_35)))), 65528UL, 0UL, 0xA647L)).xzxzyzxxzxxyxwxz)).s2)) == 0x6171L), l_626[8]))) ^ p_30) && p_1083->g_332)) <= GROUP_DIVERGE(1, 1)) , l_626[3]))) || l_614));
                (***p_1083->g_158) = (((safe_mod_func_int32_t_s_s((((*l_623) = (safe_mul_func_uint8_t_u_u(248UL, l_631.x))) && (safe_sub_func_int8_t_s_s(l_626[8], ((*p_1083->g_22) &= (safe_mod_func_uint16_t_u_u(p_27, (safe_sub_func_int8_t_s_s((safe_add_func_uint32_t_u_u(((((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 2))(l_640.s64)).xyxxyyyy, ((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 8))(p_1083->g_641.sbaf12aa9)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 2))(p_1083->g_642.s14)), ((VECTOR(int8_t, 8))(l_643.se64ba3bd)).s74))))).xyyy)).zwyyzxxx))))))))).s2404623170230422, ((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(1L, (-3L))), (-1L), (-1L))), (((safe_mul_func_uint16_t_u_u(((*l_34) || (l_653 = ((l_611 > (l_589 = (safe_lshift_func_int16_t_s_u((l_648 < ((safe_lshift_func_int8_t_s_s((((((void*)0 != l_651) & 0x9EL) , p_27) == p_1083->g_63[6]), 2)) <= GROUP_DIVERGE(2, 1))), 7)))) != l_612))), p_29)) <= p_1083->g_471.s8) || 0x04CEL), ((VECTOR(int8_t, 2))(0L)), (-1L))).even, ((VECTOR(int8_t, 4))((-1L))), ((VECTOR(int8_t, 4))(1L))))).ywzzwzwxyyxwyyxz))).sff)), ((VECTOR(int8_t, 2))(0x08L))))).hi && 0xBEL) <= p_27), 0x72AF1C0EL)), (*l_34))))))))), 0x037AF60CL)) , p_1083->g_343) && p_1083->g_77.f0);
            }
            else
            { /* block id: 256 */
                int32_t l_680 = 0x35AA6D81L;
                int32_t l_681 = 0x11399415L;
                int32_t l_688 = 4L;
                int32_t l_689 = 0x6ABE5020L;
                int32_t l_694 = 7L;
                int32_t l_696 = 4L;
                int32_t l_697 = 0L;
                int32_t l_699[7][9][4] = {{{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL}},{{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL}},{{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL}},{{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL}},{{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL}},{{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL}},{{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL},{0L,5L,(-4L),0x4B79078AL}}};
                uint64_t l_708 = 18446744073709551615UL;
                uint16_t l_722 = 65535UL;
                int i, j, k;
                if ((~((safe_mod_func_int8_t_s_s((safe_lshift_func_int16_t_s_u(((*p_26) , (((((VECTOR(uint64_t, 4))(p_1083->g_658.s6150)).x != ((((-8L) < (*l_34)) , (!(l_659 == (void*)0))) , (~l_589))) < (safe_sub_func_int64_t_s_s((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_662.s2a)))).yyxxyxxx, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(1L, 0x59C9L)), ((VECTOR(int16_t, 8))((-1L), 0x0FDCL, 0x72CBL, 3L, 0x0EFDL, ((VECTOR(int16_t, 2))((-3L), 0x2DE4L)), (-1L))), ((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 16))((-1L), 1L, ((VECTOR(int16_t, 8))(l_663.sbb833560)), p_29, p_1083->g_403[0][3], l_626[4], 0x51E0L, 0x368AL, 0x63FBL)), ((VECTOR(int16_t, 16))(3L))))).saa, ((VECTOR(int16_t, 2))(1L))))), ((VECTOR(int16_t, 4))(0L)))).even))).s3351640431462564)).s8 | p_30), p_1083->g_343))) & p_1083->g_63[0])), 9)), 6L)) & p_30)))
                { /* block id: 257 */
                    uint64_t **l_664 = &l_67;
                    int32_t l_666 = 0x342E7AABL;
                    int32_t *l_667 = &l_666;
                    int32_t *l_668 = &l_653;
                    int32_t *l_669 = (void*)0;
                    int32_t *l_670 = &l_589;
                    int32_t *l_671 = &p_1083->g_353;
                    int32_t *l_672 = &l_666;
                    int32_t *l_673 = &l_653;
                    int32_t *l_674 = &l_666;
                    int32_t *l_675 = &p_1083->g_35;
                    int32_t *l_676 = &l_653;
                    int32_t *l_678 = &l_653;
                    int32_t *l_679[5][3][7] = {{{(void*)0,&l_589,&p_1083->g_353,&l_589,&l_666,&l_666,&p_1083->g_353},{(void*)0,&l_589,&p_1083->g_353,&l_589,&l_666,&l_666,&p_1083->g_353},{(void*)0,&l_589,&p_1083->g_353,&l_589,&l_666,&l_666,&p_1083->g_353}},{{(void*)0,&l_589,&p_1083->g_353,&l_589,&l_666,&l_666,&p_1083->g_353},{(void*)0,&l_589,&p_1083->g_353,&l_589,&l_666,&l_666,&p_1083->g_353},{(void*)0,&l_589,&p_1083->g_353,&l_589,&l_666,&l_666,&p_1083->g_353}},{{(void*)0,&l_589,&p_1083->g_353,&l_589,&l_666,&l_666,&p_1083->g_353},{(void*)0,&l_589,&p_1083->g_353,&l_589,&l_666,&l_666,&p_1083->g_353},{(void*)0,&l_589,&p_1083->g_353,&l_589,&l_666,&l_666,&p_1083->g_353}},{{(void*)0,&l_589,&p_1083->g_353,&l_589,&l_666,&l_666,&p_1083->g_353},{(void*)0,&l_589,&p_1083->g_353,&l_589,&l_666,&l_666,&p_1083->g_353},{(void*)0,&l_589,&p_1083->g_353,&l_589,&l_666,&l_666,&p_1083->g_353}},{{(void*)0,&l_589,&p_1083->g_353,&l_589,&l_666,&l_666,&p_1083->g_353},{(void*)0,&l_589,&p_1083->g_353,&l_589,&l_666,&l_666,&p_1083->g_353},{(void*)0,&l_589,&p_1083->g_353,&l_589,&l_666,&l_666,&p_1083->g_353}}};
                    int64_t *l_711 = &l_626[8];
                    uint16_t *l_718 = &l_611;
                    uint64_t *l_723 = &p_1083->g_94;
                    int i, j, k;
                    (**p_1083->g_159) &= ((((*l_664) = l_651) == l_665) & l_614);
                    l_708++;
                    (*l_674) &= ((((*l_711) = 0x6784D5F6938725C0L) == ((*l_723) = ((((p_27 == (safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((((((safe_add_func_uint16_t_u_u(((*l_718) = (safe_mul_func_int16_t_s_s((p_27 <= (0L || (0xC7L | l_697))), 0x63E5L))), (safe_sub_func_int32_t_s_s((0x7C006C2FL & (!((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(4294967286UL, p_1083->g_721, p_30, 0x74D8E88BL, 0xA98D8124L, 4294967295UL, 0xB9AD8124L, 1UL)))).s7107736272311731)).se)), l_612)))) >= 0x7772D85FL) ^ 0L) || p_1083->g_641.s0) > p_1083->g_192.x) > l_722), 0x6B8EL, ((VECTOR(int16_t, 2))(0x373BL)), 1L, ((VECTOR(int16_t, 8))(9L)), ((VECTOR(int16_t, 2))(0x0101L)), 0x72A4L)).lo)).s4, GROUP_DIVERGE(2, 1)))) || 0x6E11L) == p_29) , p_1083->g_94))) >= l_692);
                }
                else
                { /* block id: 265 */
                    int32_t *l_724 = &l_703;
                    int32_t *l_725 = (void*)0;
                    int32_t *l_726 = &l_700;
                    int32_t l_727 = (-1L);
                    int32_t *l_728 = &l_688;
                    int32_t *l_729[2];
                    uint32_t l_730 = 3UL;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_729[i] = &l_707[0][2];
                    l_730--;
                }
                (*l_34) &= ((*p_26) ^ ((VECTOR(int8_t, 4))(p_1083->g_733.xxxy)).y);
            }
            for (l_587.f1 = (-28); (l_587.f1 >= 37); ++l_587.f1)
            { /* block id: 272 */
                union U1 **l_737 = &l_736;
                int32_t l_738 = 0x4B3732DCL;
                int32_t *l_739 = (void*)0;
                int32_t l_740 = 0x22D9085EL;
                int32_t *l_741 = &l_682;
                int32_t *l_742 = &l_695[6][4];
                int32_t *l_743 = &l_706[3];
                int32_t *l_744 = &p_1083->g_353;
                int32_t *l_745 = &l_686;
                int32_t *l_746 = &l_682;
                int32_t *l_747 = &l_705;
                int32_t *l_748[8][1][10] = {{{&p_1083->g_35,&l_706[0],&p_1083->g_2,&l_740,&p_1083->g_2,&l_706[0],&p_1083->g_35,&l_677,&l_703,&l_693}},{{&p_1083->g_35,&l_706[0],&p_1083->g_2,&l_740,&p_1083->g_2,&l_706[0],&p_1083->g_35,&l_677,&l_703,&l_693}},{{&p_1083->g_35,&l_706[0],&p_1083->g_2,&l_740,&p_1083->g_2,&l_706[0],&p_1083->g_35,&l_677,&l_703,&l_693}},{{&p_1083->g_35,&l_706[0],&p_1083->g_2,&l_740,&p_1083->g_2,&l_706[0],&p_1083->g_35,&l_677,&l_703,&l_693}},{{&p_1083->g_35,&l_706[0],&p_1083->g_2,&l_740,&p_1083->g_2,&l_706[0],&p_1083->g_35,&l_677,&l_703,&l_693}},{{&p_1083->g_35,&l_706[0],&p_1083->g_2,&l_740,&p_1083->g_2,&l_706[0],&p_1083->g_35,&l_677,&l_703,&l_693}},{{&p_1083->g_35,&l_706[0],&p_1083->g_2,&l_740,&p_1083->g_2,&l_706[0],&p_1083->g_35,&l_677,&l_703,&l_693}},{{&p_1083->g_35,&l_706[0],&p_1083->g_2,&l_740,&p_1083->g_2,&l_706[0],&p_1083->g_35,&l_677,&l_703,&l_693}}};
                int i, j, k;
                (*l_737) = l_736;
                if ((*p_1083->g_141))
                    continue;
                l_749--;
                l_752++;
            }
            for (p_1083->g_69.f2 = 0; (p_1083->g_69.f2 < 21); p_1083->g_69.f2++)
            { /* block id: 280 */
                VECTOR(int8_t, 4) l_769 = (VECTOR(int8_t, 4))(0x38L, (VECTOR(int8_t, 2))(0x38L, (-1L)), (-1L));
                VECTOR(int8_t, 8) l_770 = (VECTOR(int8_t, 8))(0x64L, (VECTOR(int8_t, 4))(0x64L, (VECTOR(int8_t, 2))(0x64L, (-2L)), (-2L)), (-2L), 0x64L, (-2L));
                uint32_t *l_776[5][5][3] = {{{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]}},{{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]}},{{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]}},{{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]}},{{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]},{(void*)0,(void*)0,&p_1083->g_297[0][0]}}};
                uint8_t *l_790 = (void*)0;
                uint8_t *l_791 = (void*)0;
                int16_t *l_799[3];
                uint32_t *l_818 = &l_612;
                int32_t l_830 = (-7L);
                int32_t l_831[1][5][4] = {{{0x3E4FC2FDL,0x3E4FC2FDL,0x3E4FC2FDL,0x3E4FC2FDL},{0x3E4FC2FDL,0x3E4FC2FDL,0x3E4FC2FDL,0x3E4FC2FDL},{0x3E4FC2FDL,0x3E4FC2FDL,0x3E4FC2FDL,0x3E4FC2FDL},{0x3E4FC2FDL,0x3E4FC2FDL,0x3E4FC2FDL,0x3E4FC2FDL},{0x3E4FC2FDL,0x3E4FC2FDL,0x3E4FC2FDL,0x3E4FC2FDL}}};
                int8_t ***l_842 = &p_1083->g_267;
                int i, j, k;
                for (i = 0; i < 3; i++)
                    l_799[i] = (void*)0;
                l_703 &= (p_1083->g_454 < (0L >= (((p_1083->g_332 = (safe_lshift_func_uint16_t_u_s((((safe_rshift_func_int8_t_s_u((!(safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 8))(l_763.s32001770)).lo, ((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(p_1083->g_764.xxxxyxxy)).s50)).xyxx, ((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))((safe_mul_func_uint16_t_u_u((((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 8))(l_769.wwxwxwxz)).s51, ((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 4))(1L, ((VECTOR(int8_t, 2))(l_770.s23)), (-6L))).lo, ((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 16))(p_1083->g_771.s1337360673337115)).s0019, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(l_772.zzyz)))), ((VECTOR(int8_t, 16))(p_1083->g_773.s1101362046027317)).sbc65))).xyyxxzwz, ((VECTOR(int8_t, 4))(p_1083->g_774.xxyx)).wzzxzzwx))).s74, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_1083->g_775.wz)).yyyx)).odd)))))).hi || ((l_777 = l_776[0][1][2]) != &p_1083->g_297[1][3])), (((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 2))(l_778.zx)).yyxyyxxy, (uint16_t)(p_1083->g_390.s7 < ((safe_lshift_func_int8_t_s_u((((safe_div_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((p_30 , ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(p_1083->g_785.s4142)), ((VECTOR(uint8_t, 4))(p_1083->g_786.s3435)))).s5), (~((safe_add_func_int16_t_s_s((GROUP_DIVERGE(1, 1) > FAKE_DIVERGE(p_1083->global_1_offset, get_global_id(1), 10)), ((void*)0 == &p_1083->g_111))) , p_27)))), p_1083->g_111)) == GROUP_DIVERGE(1, 1)) == l_695[3][2]), p_27)) , 0x42L))))).s1 < (-10L)))), ((VECTOR(int8_t, 8))(6L)), l_611, l_749, 0x76L, l_789, l_692, 0L, 0x34L)).sc4b8)), ((VECTOR(int8_t, 4))(0L))))), p_1083->g_109, 0UL, 0x71L, 247UL)).s1541125430100334, ((VECTOR(uint8_t, 16))(0x11L))))).s65eb)))))).z, (*p_26)))), p_1083->g_63[1])) ^ (-1L)) == l_769.z), p_27))) == 0x44L) , 0x10ECFBB592D2D625L)));
                if (((p_1083->g_792 != l_793[0][2][0]) > ((-1L) | ((safe_add_func_int32_t_s_s(1L, (((safe_sub_func_uint16_t_u_u(0x8520L, (l_692 ^= 0x3F57L))) && (safe_sub_func_int8_t_s_s((*p_1083->g_22), (safe_mul_func_int16_t_s_s((((VECTOR(uint32_t, 4))(l_804.s1555)).x , ((VECTOR(int16_t, 8))(p_1083->g_805.xzxzzzwx)).s0), (safe_mod_func_int32_t_s_s((safe_add_func_uint8_t_u_u((l_769.y > (safe_mul_func_int16_t_s_s((safe_sub_func_int16_t_s_s((((safe_add_func_uint32_t_u_u(((*l_818) = ((safe_mod_func_uint16_t_u_u(p_30, p_1083->g_135)) && p_1083->g_786.s3)), l_819)) & 0x3B25EA2D6B5E5DDBL) & l_695[7][3]), l_749)), FAKE_DIVERGE(p_1083->global_2_offset, get_global_id(2), 10)))), 255UL)), p_27))))))) < l_770.s4))) || p_1083->g_2))))
                { /* block id: 286 */
                    uint16_t l_824 = 65535UL;
                    int32_t l_828 = 0x0DD7AF89L;
                    VECTOR(int32_t, 8) l_829 = (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, (-6L)), (-6L)), (-6L), 6L, (-6L));
                    uint32_t l_834[1];
                    int8_t ****l_841 = &l_840;
                    uint8_t *l_848 = &p_1083->g_111;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_834[i] = 4294967295UL;
                    for (l_705 = 18; (l_705 != 12); l_705--)
                    { /* block id: 289 */
                        int32_t *l_825 = &p_1083->g_35;
                        int32_t *l_826 = &l_706[0];
                        int32_t *l_827[4][1] = {{&l_707[0][2]},{&l_707[0][2]},{&l_707[0][2]},{&l_707[0][2]}};
                        int i, j;
                        (**p_1083->g_159) |= (safe_lshift_func_int8_t_s_u((*p_1083->g_22), 1));
                        (**p_1083->g_159) ^= l_824;
                        ++l_834[0];
                        l_687 = 0x2C8010BDL;
                    }
                    (***p_1083->g_158) = l_837;
                    if (((((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 4))(0x3DBAAC37DA5518BFL, 0x55749678077F1249L, 0x54C726FA75208654L, 0x622CAD0CED95C44AL)).x, (((*l_841) = l_840) == l_842))) == (65534UL <= GROUP_DIVERGE(1, 1))) | (1UL && (safe_mod_func_int32_t_s_s(l_770.s7, ((VECTOR(int32_t, 2))(p_1083->g_845.s22)).odd)))) ^ ((safe_rshift_func_uint8_t_u_s(((((*l_848) = p_29) && (~(4UL <= (*l_34)))) == (safe_mod_func_uint64_t_u_u((*l_34), p_1083->g_2))), 7)) && l_829.s4)))
                    { /* block id: 298 */
                        uint16_t l_851 = 0x3B8FL;
                        l_851++;
                    }
                    else
                    { /* block id: 300 */
                        int8_t l_854 = 7L;
                        union U0 **l_856 = &l_855;
                        int32_t *l_858 = &l_702;
                        int32_t *l_859 = &l_701;
                        int32_t *l_860 = &l_831[0][3][0];
                        int32_t *l_861 = &l_695[1][5];
                        int32_t *l_862 = &p_1083->g_35;
                        int32_t *l_863 = &l_705;
                        int32_t *l_864[8] = {&l_677,&l_677,&l_677,&l_677,&l_677,&l_677,&l_677,&l_677};
                        int64_t l_866[6][9] = {{0x2049064529EBC47AL,7L,(-7L),7L,0x2049064529EBC47AL,0x2049064529EBC47AL,7L,(-7L),7L},{0x2049064529EBC47AL,7L,(-7L),7L,0x2049064529EBC47AL,0x2049064529EBC47AL,7L,(-7L),7L},{0x2049064529EBC47AL,7L,(-7L),7L,0x2049064529EBC47AL,0x2049064529EBC47AL,7L,(-7L),7L},{0x2049064529EBC47AL,7L,(-7L),7L,0x2049064529EBC47AL,0x2049064529EBC47AL,7L,(-7L),7L},{0x2049064529EBC47AL,7L,(-7L),7L,0x2049064529EBC47AL,0x2049064529EBC47AL,7L,(-7L),7L},{0x2049064529EBC47AL,7L,(-7L),7L,0x2049064529EBC47AL,0x2049064529EBC47AL,7L,(-7L),7L}};
                        int i, j;
                        if (p_30)
                            break;
                        if (l_854)
                            continue;
                        (*l_856) = l_855;
                        l_867.y--;
                    }
                }
                else
                { /* block id: 306 */
                    uint64_t *l_879 = &l_752;
                    (***p_1083->g_158) |= (safe_unary_minus_func_uint32_t_u(((safe_div_func_int8_t_s_s(((GROUP_DIVERGE(0, 1) < p_27) >= (!((safe_rshift_func_int8_t_s_u(((safe_mod_func_uint8_t_u_u(p_30, (l_831[0][0][1] , (safe_sub_func_uint16_t_u_u(l_692, (0x8CL || (((((*l_879) |= p_27) , p_27) & ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(p_1083->g_880.yx)))).hi) == (safe_mod_func_uint64_t_u_u(((((safe_sub_func_uint64_t_u_u((safe_add_func_uint16_t_u_u(p_29, (l_831[0][2][3] , 4L))), p_29)) & p_29) , &l_614) != l_777), 1L))))))))) , (*l_34)), 6)) > p_1083->g_135))), 0x3BL)) > l_770.s3)));
                    for (l_830 = 0; (l_830 < 4); l_830++)
                    { /* block id: 311 */
                        (**p_1083->g_159) = 0L;
                    }
                    for (l_580 = (-6); (l_580 == 25); l_580 = safe_add_func_int64_t_s_s(l_580, 1))
                    { /* block id: 316 */
                        return p_26;
                    }
                }
                (*p_1083->g_893) = p_1083->g_891;
            }
            for (p_1083->g_69.f0 = 29; (p_1083->g_69.f0 != 13); p_1083->g_69.f0 = safe_sub_func_int8_t_s_s(p_1083->g_69.f0, 5))
            { /* block id: 324 */
                uint64_t **l_904 = &l_651;
                union U1 l_909 = {0x5CA0L};
                int64_t *l_910[5][3][2] = {{{&l_832,&l_832},{&l_832,&l_832},{&l_832,&l_832}},{{&l_832,&l_832},{&l_832,&l_832},{&l_832,&l_832}},{{&l_832,&l_832},{&l_832,&l_832},{&l_832,&l_832}},{{&l_832,&l_832},{&l_832,&l_832},{&l_832,&l_832}},{{&l_832,&l_832},{&l_832,&l_832},{&l_832,&l_832}}};
                uint32_t *l_913 = (void*)0;
                uint32_t *l_914 = &l_612;
                int8_t l_915[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
                int i, j, k;
                (*l_34) = ((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(l_898.wwxyywyxxzwzwxyy)))).s3eaa)).y, (((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 2))(l_899.xy)).xxxy, ((VECTOR(int16_t, 2))(0x3E66L, 7L)).yyyy))))).y, 0x49AEL, 0x4C15L, 0x73E4L)).x <= (p_1083->g_900 , l_683)))) != ((*l_610) = (((safe_unary_minus_func_int64_t_s((l_904 == &l_67))) | ((safe_div_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_s(p_1083->g_192.x, ((p_1083->g_624 = (l_589 |= (l_794 == (l_909 , &p_1083->g_403[0][0])))) | (((((*l_914) ^= (((((safe_sub_func_uint16_t_u_u(0x96FAL, l_763.s7)) , p_30) & (*l_34)) > p_29) && p_30)) , l_651) == (*l_904)) , 0L)))) > l_915[7]), p_27)) <= (-8L))) | p_30)));
            }
        }
    }
    return &p_1083->g_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_569 p_1083->g_22 p_1083->g_23
 * writes: p_1083->g_138
 */
int8_t  func_38(int8_t * p_39, int8_t * p_40, struct S3 * p_1083)
{ /* block id: 235 */
    int32_t *l_561 = (void*)0;
    int32_t *l_562 = (void*)0;
    int32_t *l_563 = &p_1083->g_353;
    int32_t *l_564[3][3] = {{&p_1083->g_353,&p_1083->g_353,&p_1083->g_353},{&p_1083->g_353,&p_1083->g_353,&p_1083->g_353},{&p_1083->g_353,&p_1083->g_353,&p_1083->g_353}};
    int64_t l_565 = 0x312B40E4CB651077L;
    uint8_t l_566 = 0xA9L;
    int64_t l_570 = (-10L);
    uint8_t l_571[10] = {2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL};
    int i, j;
    ++l_566;
    (*p_1083->g_569) = l_561;
    ++l_571[8];
    return (*p_1083->g_22);
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_158 p_1083->g_159 p_1083->g_160 p_1083->g_161
 * writes: p_1083->g_161
 */
int8_t * func_42(int8_t * p_43, int16_t  p_44, int32_t  p_45, uint32_t  p_46, int8_t * p_47, struct S3 * p_1083)
{ /* block id: 231 */
    VECTOR(int32_t, 8) l_559 = (VECTOR(int32_t, 8))(0x28A8DFB0L, (VECTOR(int32_t, 4))(0x28A8DFB0L, (VECTOR(int32_t, 2))(0x28A8DFB0L, 0x0A5B2DE1L), 0x0A5B2DE1L), 0x0A5B2DE1L, 0x28A8DFB0L, 0x0A5B2DE1L);
    int8_t *l_560[2];
    int i;
    for (i = 0; i < 2; i++)
        l_560[i] = (void*)0;
    (**p_1083->g_159) = (safe_div_func_int32_t_s_s((***p_1083->g_158), ((VECTOR(int32_t, 16))(l_559.s3737603356365271)).s0));
    return l_560[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_167 p_1083->g_68 p_1083->g_158 p_1083->g_159 p_1083->g_160
 * writes: p_1083->g_138 p_1083->g_68 p_1083->g_161
 */
int8_t * func_48(int32_t * p_49, int8_t * p_50, uint32_t  p_51, int8_t * p_52, struct S3 * p_1083)
{ /* block id: 219 */
    int32_t **l_536[3];
    uint32_t *l_537 = (void*)0;
    uint32_t *l_538 = (void*)0;
    uint32_t *l_539 = (void*)0;
    uint32_t *l_542 = (void*)0;
    uint32_t *l_543[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint32_t *l_550 = (void*)0;
    uint32_t *l_551[2];
    union U2 l_552 = {7L};
    int32_t *l_553[9][2][7] = {{{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0},{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0}},{{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0},{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0}},{{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0},{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0}},{{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0},{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0}},{{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0},{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0}},{{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0},{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0}},{{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0},{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0}},{{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0},{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0}},{{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0},{(void*)0,&p_1083->g_353,&p_1083->g_2,&p_1083->g_2,&p_1083->g_2,&p_1083->g_353,(void*)0}}};
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_536[i] = &p_1083->g_138[6][0][2];
    for (i = 0; i < 2; i++)
        l_551[i] = (void*)0;
    (*p_1083->g_167) = l_553[6][0][4];
    for (p_1083->g_68 = 1; (p_1083->g_68 <= 23); ++p_1083->g_68)
    { /* block id: 226 */
        uint32_t l_556 = 1UL;
        (***p_1083->g_158) = (-10L);
        if (l_556)
            break;
    }
    return p_50;
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_2 p_1083->g_111 p_1083->g_101 p_1083->g_69.f0 p_1083->g_121 p_1083->g_22 p_1083->g_23 p_1083->g_35 p_1083->g_137 p_1083->g_101.f0 p_1083->g_141 p_1083->g_142 p_1083->g_77.f0 p_1083->g_148 p_1083->g_68 p_1083->g_135 p_1083->g_158 p_1083->g_159 p_1083->g_160 p_1083->g_138 p_1083->g_167 p_1083->g_101.f1 p_1083->g_69 p_1083->g_161 p_1083->g_188 p_1083->g_192 p_1083->g_94 p_1083->g_63 p_1083->g_332 p_1083->g_390 p_1083->g_233 p_1083->g_343 p_1083->g_69.f1 p_1083->g_353
 * writes: p_1083->g_111 p_1083->g_121 p_1083->g_132 p_1083->g_94 p_1083->g_135 p_1083->g_138 p_1083->g_101.f0 p_1083->g_148 p_1083->g_161 p_1083->g_23 p_1083->g_101.f1 p_1083->g_69 p_1083->g_160 p_1083->g_403 p_1083->g_343 p_1083->g_332 p_1083->g_501
 */
int32_t * func_53(int8_t  p_54, int8_t * p_55, union U2  p_56, int64_t  p_57, int64_t  p_58, struct S3 * p_1083)
{ /* block id: 22 */
    union U2 l_103 = {-1L};
    union U2 *l_104 = (void*)0;
    union U2 *l_105[8];
    uint8_t *l_106[1];
    int32_t l_107[1];
    int64_t l_108 = 0x1DD90CDDE2BA1CD2L;
    int32_t l_110 = 1L;
    uint32_t *l_120 = (void*)0;
    uint32_t *l_122[2][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint16_t *l_131 = &p_1083->g_132;
    uint64_t *l_133 = &p_1083->g_94;
    uint16_t *l_134 = &p_1083->g_135;
    uint64_t l_163[9][7][1] = {{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}}};
    VECTOR(uint32_t, 16) l_198 = (VECTOR(uint32_t, 16))(4294967294UL, (VECTOR(uint32_t, 4))(4294967294UL, (VECTOR(uint32_t, 2))(4294967294UL, 0x52AAD255L), 0x52AAD255L), 0x52AAD255L, 4294967294UL, 0x52AAD255L, (VECTOR(uint32_t, 2))(4294967294UL, 0x52AAD255L), (VECTOR(uint32_t, 2))(4294967294UL, 0x52AAD255L), 4294967294UL, 0x52AAD255L, 4294967294UL, 0x52AAD255L);
    VECTOR(uint32_t, 4) l_231 = (VECTOR(uint32_t, 4))(0x69AB182FL, (VECTOR(uint32_t, 2))(0x69AB182FL, 4294967288UL), 4294967288UL);
    VECTOR(uint32_t, 8) l_255 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xCEFE5D31L), 0xCEFE5D31L), 0xCEFE5D31L, 4294967295UL, 0xCEFE5D31L);
    VECTOR(uint32_t, 16) l_256 = (VECTOR(uint32_t, 16))(0x32A05A1AL, (VECTOR(uint32_t, 4))(0x32A05A1AL, (VECTOR(uint32_t, 2))(0x32A05A1AL, 0x3CC2DD6AL), 0x3CC2DD6AL), 0x3CC2DD6AL, 0x32A05A1AL, 0x3CC2DD6AL, (VECTOR(uint32_t, 2))(0x32A05A1AL, 0x3CC2DD6AL), (VECTOR(uint32_t, 2))(0x32A05A1AL, 0x3CC2DD6AL), 0x32A05A1AL, 0x3CC2DD6AL, 0x32A05A1AL, 0x3CC2DD6AL);
    VECTOR(uint32_t, 16) l_261 = (VECTOR(uint32_t, 16))(0xC9CEE740L, (VECTOR(uint32_t, 4))(0xC9CEE740L, (VECTOR(uint32_t, 2))(0xC9CEE740L, 0xB250DB7EL), 0xB250DB7EL), 0xB250DB7EL, 0xC9CEE740L, 0xB250DB7EL, (VECTOR(uint32_t, 2))(0xC9CEE740L, 0xB250DB7EL), (VECTOR(uint32_t, 2))(0xC9CEE740L, 0xB250DB7EL), 0xC9CEE740L, 0xB250DB7EL, 0xC9CEE740L, 0xB250DB7EL);
    int8_t *l_269[2];
    int8_t **l_268[3][8] = {{&l_269[0],&l_269[0],&l_269[0],&l_269[0],&l_269[0],&l_269[0],&l_269[0],&l_269[0]},{&l_269[0],&l_269[0],&l_269[0],&l_269[0],&l_269[0],&l_269[0],&l_269[0],&l_269[0]},{&l_269[0],&l_269[0],&l_269[0],&l_269[0],&l_269[0],&l_269[0],&l_269[0],&l_269[0]}};
    VECTOR(uint32_t, 4) l_270 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x8ADA6E78L), 0x8ADA6E78L);
    VECTOR(uint8_t, 16) l_283 = (VECTOR(uint8_t, 16))(0x5FL, (VECTOR(uint8_t, 4))(0x5FL, (VECTOR(uint8_t, 2))(0x5FL, 6UL), 6UL), 6UL, 0x5FL, 6UL, (VECTOR(uint8_t, 2))(0x5FL, 6UL), (VECTOR(uint8_t, 2))(0x5FL, 6UL), 0x5FL, 6UL, 0x5FL, 6UL);
    int16_t l_327 = 0x0E65L;
    uint64_t l_402 = 0xD0ECF267CD515E7FL;
    int32_t * volatile l_433 = &l_107[0];/* VOLATILE GLOBAL l_433 */
    uint32_t l_441[10][1];
    uint16_t l_447 = 0x7A01L;
    int32_t **l_497[3][2] = {{&p_1083->g_138[1][1][0],&p_1083->g_138[1][1][0]},{&p_1083->g_138[1][1][0],&p_1083->g_138[1][1][0]},{&p_1083->g_138[1][1][0],&p_1083->g_138[1][1][0]}};
    uint64_t **l_500 = (void*)0;
    uint64_t *l_502 = &p_1083->g_63[2];
    uint32_t l_508 = 0x6EB4B523L;
    int8_t l_511 = 1L;
    int32_t *l_512 = &l_107[0];
    int32_t *l_513 = &p_1083->g_353;
    int32_t l_518 = (-9L);
    uint64_t l_522 = 3UL;
    union U1 *l_531 = &p_1083->g_69;
    VECTOR(int32_t, 16) l_533 = (VECTOR(int32_t, 16))(0x7B0D9E63L, (VECTOR(int32_t, 4))(0x7B0D9E63L, (VECTOR(int32_t, 2))(0x7B0D9E63L, 9L), 9L), 9L, 0x7B0D9E63L, 9L, (VECTOR(int32_t, 2))(0x7B0D9E63L, 9L), (VECTOR(int32_t, 2))(0x7B0D9E63L, 9L), 0x7B0D9E63L, 9L, 0x7B0D9E63L, 9L);
    int32_t *l_534 = &p_1083->g_2;
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_105[i] = &l_103;
    for (i = 0; i < 1; i++)
        l_106[i] = &p_1083->g_69.f1;
    for (i = 0; i < 1; i++)
        l_107[i] = (-1L);
    for (i = 0; i < 2; i++)
        l_269[i] = &p_1083->g_109;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
            l_441[i][j] = 1UL;
    }
    if ((((p_1083->g_2 , ((p_56 = l_103) , (((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 16))(0x70L, (((((p_1083->g_111++) == ((safe_rshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s((p_1083->g_101 , (p_1083->g_69.f0 < (safe_rshift_func_int8_t_s_u((((--p_1083->g_121.s1) , &l_103) == (((*l_134) = (((*l_133) = (safe_div_func_uint8_t_u_u((l_107[0] & (safe_mul_func_uint16_t_u_u(((*l_131) = (((void*)0 == &p_55) , (safe_mul_func_int8_t_s_s((*p_1083->g_22), 3L)))), 3UL))), p_57))) | l_110)) , (void*)0)), 4)))), 0x28L)), 7)) > FAKE_DIVERGE(p_1083->group_0_offset, get_group_id(0), 10))) == p_1083->g_35) || p_1083->g_23) || (-2L)), ((VECTOR(int8_t, 2))(0x7BL)), (-1L), 0x5DL, ((VECTOR(int8_t, 2))((-1L))), 0x4BL, ((VECTOR(int8_t, 2))(0x27L)), ((VECTOR(int8_t, 2))(0x49L)), ((VECTOR(int8_t, 2))(1L)), 0x1CL)).lo))).s2 , l_108))) | l_107[0]) & 0x76L))
    { /* block id: 29 */
        int32_t *l_136 = &p_1083->g_2;
        uint16_t *l_185 = &p_1083->g_148;
        (*p_1083->g_137) = l_136;
        if (p_57)
        { /* block id: 31 */
            int16_t l_147 = (-8L);
            uint16_t l_162[3];
            int32_t **l_168 = &p_1083->g_138[8][0][2];
            int32_t **l_169 = &l_136;
            int i;
            for (i = 0; i < 3; i++)
                l_162[i] = 0x2D6EL;
            for (p_1083->g_101.f0 = (-17); (p_1083->g_101.f0 <= (-14)); p_1083->g_101.f0 = safe_add_func_uint32_t_u_u(p_1083->g_101.f0, 4))
            { /* block id: 34 */
                uint32_t l_157[8][8] = {{0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL},{0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL},{0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL},{0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL},{0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL},{0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL},{0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL},{0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL,0xF277EB8EL,0xF277EB8EL,1UL}};
                int16_t *l_164[8] = {&l_147,&l_147,&l_147,&l_147,&l_147,&l_147,&l_147,&l_147};
                int i, j;
                (*p_1083->g_142) = p_1083->g_141;
                (**p_1083->g_159) = (safe_div_func_int16_t_s_s(((VECTOR(int16_t, 4))((-6L), 4L, (-5L), (-1L))).y, (safe_mul_func_uint8_t_u_u(p_1083->g_77.f0, ((p_1083->g_148 &= l_147) || (p_56.f0 = (GROUP_DIVERGE(1, 1) & (p_1083->g_68 , (p_56 , (safe_mod_func_int8_t_s_s(((safe_mod_func_uint8_t_u_u(((p_1083->g_135 == ((safe_add_func_uint64_t_u_u(l_147, ((1L == (((((safe_div_func_uint64_t_u_u(((l_157[5][1] , p_1083->g_158) == &p_1083->g_159), p_56.f0)) & (*p_1083->g_22)) == 0xFEL) <= l_147) < 0xBC1CL)) != p_58))) && p_57)) >= l_162[0]), 1L)) < l_163[0][6][0]), p_1083->g_121.s0)))))))))));
            }
            for (p_1083->g_23 = 24; (p_1083->g_23 > (-13)); p_1083->g_23 = safe_sub_func_int64_t_s_s(p_1083->g_23, 2))
            { /* block id: 42 */
                (*p_1083->g_167) = (*p_1083->g_142);
            }
            (*l_169) = ((*l_168) = l_136);
        }
        else
        { /* block id: 47 */
            int32_t *l_171 = (void*)0;
            l_171 = &l_107[0];
            for (p_1083->g_101.f1 = 12; (p_1083->g_101.f1 > 27); ++p_1083->g_101.f1)
            { /* block id: 51 */
                uint16_t **l_179 = &l_134;
                uint16_t *l_180 = &p_1083->g_148;
                uint16_t **l_181 = &l_131;
                union U1 *l_182 = &p_1083->g_69;
                int32_t **l_184 = &l_171;
                int32_t ***l_183 = &l_184;
                for (l_110 = 0; (l_110 != 5); l_110 = safe_add_func_int8_t_s_s(l_110, 6))
                { /* block id: 54 */
                    int32_t **l_176 = &l_136;
                    (*l_176) = (*p_1083->g_137);
                }
                (***p_1083->g_158) &= (safe_sub_func_uint16_t_u_u(((((*l_179) = &p_1083->g_148) != ((*l_181) = l_180)) , (((*l_183) = (((*l_182) = p_1083->g_69) , (void*)0)) == (void*)0)), ((void*)0 != l_185)));
            }
            for (p_57 = 0; (p_57 == (-23)); p_57--)
            { /* block id: 65 */
                (*p_1083->g_188) = (*p_1083->g_167);
            }
            l_107[0] = (safe_mod_func_uint64_t_u_u(p_56.f0, 0x4B672E1157108DF2L));
        }
    }
    else
    { /* block id: 70 */
        int32_t **l_191 = &p_1083->g_138[8][0][2];
        int32_t *l_195 = &p_1083->g_69.f3;
        int32_t *l_196 = (void*)0;
        int32_t *l_197[3];
        int16_t *l_203[7][9][4] = {{{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0}},{{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0}},{{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0}},{{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0}},{{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0}},{{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0}},{{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0},{&p_1083->g_101.f0,&l_103.f0,&l_103.f0,&l_103.f0}}};
        VECTOR(int16_t, 2) l_204 = (VECTOR(int16_t, 2))((-1L), 1L);
        VECTOR(int16_t, 2) l_205 = (VECTOR(int16_t, 2))(0x02F8L, 5L);
        uint64_t *l_208[2];
        int32_t l_249 = 0x4082160DL;
        VECTOR(int32_t, 16) l_264 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x2B52BFD1L), 0x2B52BFD1L), 0x2B52BFD1L, (-1L), 0x2B52BFD1L, (VECTOR(int32_t, 2))((-1L), 0x2B52BFD1L), (VECTOR(int32_t, 2))((-1L), 0x2B52BFD1L), (-1L), 0x2B52BFD1L, (-1L), 0x2B52BFD1L);
        uint64_t *l_318 = &p_1083->g_63[3];
        uint64_t l_350[9][3][8] = {{{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL}},{{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL}},{{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL}},{{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL}},{{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL}},{{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL}},{{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL}},{{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL}},{{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL},{0xCC9BA006DCF6D202L,1UL,0UL,0UL,1UL,0xCC9BA006DCF6D202L,0UL,0x791C91372984827FL}}};
        uint32_t l_429 = 0xC7AB5B5FL;
        int16_t l_440 = 1L;
        VECTOR(int16_t, 8) l_463 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x2A97L), 0x2A97L), 0x2A97L, 0L, 0x2A97L);
        VECTOR(uint32_t, 2) l_468 = (VECTOR(uint32_t, 2))(0xB4B16973L, 0x8FC42AFBL);
        int32_t *l_473 = &p_1083->g_353;
        VECTOR(int32_t, 8) l_493 = (VECTOR(int32_t, 8))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x49759AFAL), 0x49759AFAL), 0x49759AFAL, (-2L), 0x49759AFAL);
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_197[i] = &p_1083->g_69.f3;
        for (i = 0; i < 2; i++)
            l_208[i] = &p_1083->g_63[6];
        (*l_191) = &l_107[0];
        if ((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 2))(mad_sat(((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 8))(p_1083->g_192.yxxyxyxx)), ((VECTOR(uint32_t, 8))((p_56.f0 && (safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), p_58))), (0x96F6L >= ((l_107[0] &= ((*p_1083->g_158) != (*p_1083->g_158))) , ((l_107[0] = p_1083->g_161) > ((VECTOR(int16_t, 2))((-7L), 0x1EFDL)).hi))), ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(l_198.sa8a4)).lo)), ((safe_mul_func_int16_t_s_s((p_56.f0 |= (safe_mod_func_int8_t_s_s((*p_1083->g_22), p_1083->g_148))), (((((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 2))(0L, 0L)), ((VECTOR(int16_t, 16))(l_204.xyyxxyxyyyyxxxyy)).s03, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(l_205.yyxx)).xwyxzyzwwwxzzxyx)).sdc))).hi , (p_1083->g_69 , p_1083->g_138[2][1][5])) == l_122[1][4]) | p_1083->g_148))) | p_58), p_58, 0xFBC1C675L, 4294967295UL))))).s11, ((VECTOR(uint32_t, 2))(4294967295UL)), ((VECTOR(uint32_t, 2))(0x187E54C4L))))).xxyxyxyx, ((VECTOR(uint32_t, 8))(0UL))))).s54, ((VECTOR(uint32_t, 2))(4294967288UL))))), ((VECTOR(uint32_t, 2))(0UL))))), ((VECTOR(uint32_t, 2))(0x7F4103FCL))))).even, p_56.f0, 1UL, 3UL)), ((VECTOR(uint32_t, 8))(4294967295UL)), 4294967294UL, 1UL, 4294967291UL, 0x687C1ADAL)).sd ^ (-8L)))
        { /* block id: 75 */
            (**p_1083->g_158) = (*p_1083->g_159);
        }
        else
        { /* block id: 77 */
            int8_t l_210 = 0x12L;
            union U2 *l_216[9] = {&p_1083->g_101,&p_1083->g_101,&p_1083->g_101,&p_1083->g_101,&p_1083->g_101,&p_1083->g_101,&p_1083->g_101,&p_1083->g_101,&p_1083->g_101};
            int32_t l_237 = (-1L);
            VECTOR(int64_t, 16) l_238 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x4D2CC1E2D72D9811L), 0x4D2CC1E2D72D9811L), 0x4D2CC1E2D72D9811L, 1L, 0x4D2CC1E2D72D9811L, (VECTOR(int64_t, 2))(1L, 0x4D2CC1E2D72D9811L), (VECTOR(int64_t, 2))(1L, 0x4D2CC1E2D72D9811L), 1L, 0x4D2CC1E2D72D9811L, 1L, 0x4D2CC1E2D72D9811L);
            int32_t l_239[7][4][3] = {{{7L,(-7L),(-5L)},{7L,(-7L),(-5L)},{7L,(-7L),(-5L)},{7L,(-7L),(-5L)}},{{7L,(-7L),(-5L)},{7L,(-7L),(-5L)},{7L,(-7L),(-5L)},{7L,(-7L),(-5L)}},{{7L,(-7L),(-5L)},{7L,(-7L),(-5L)},{7L,(-7L),(-5L)},{7L,(-7L),(-5L)}},{{7L,(-7L),(-5L)},{7L,(-7L),(-5L)},{7L,(-7L),(-5L)},{7L,(-7L),(-5L)}},{{7L,(-7L),(-5L)},{7L,(-7L),(-5L)},{7L,(-7L),(-5L)},{7L,(-7L),(-5L)}},{{7L,(-7L),(-5L)},{7L,(-7L),(-5L)},{7L,(-7L),(-5L)},{7L,(-7L),(-5L)}},{{7L,(-7L),(-5L)},{7L,(-7L),(-5L)},{7L,(-7L),(-5L)},{7L,(-7L),(-5L)}}};
            VECTOR(int32_t, 4) l_242 = (VECTOR(int32_t, 4))(0x276325E5L, (VECTOR(int32_t, 2))(0x276325E5L, 0x543575AFL), 0x543575AFL);
            uint16_t l_247 = 3UL;
            VECTOR(uint32_t, 16) l_257 = (VECTOR(uint32_t, 16))(0x2DE78825L, (VECTOR(uint32_t, 4))(0x2DE78825L, (VECTOR(uint32_t, 2))(0x2DE78825L, 7UL), 7UL), 7UL, 0x2DE78825L, 7UL, (VECTOR(uint32_t, 2))(0x2DE78825L, 7UL), (VECTOR(uint32_t, 2))(0x2DE78825L, 7UL), 0x2DE78825L, 7UL, 0x2DE78825L, 7UL);
            int8_t **l_265 = &p_1083->g_22;
            int32_t l_367 = 0x16E05F31L;
            VECTOR(int16_t, 2) l_389 = (VECTOR(int16_t, 2))(0x7F28L, 0L);
            int64_t *l_393 = &l_108;
            VECTOR(uint8_t, 4) l_450 = (VECTOR(uint8_t, 4))(253UL, (VECTOR(uint8_t, 2))(253UL, 1UL), 1UL);
            int32_t *l_496[9] = {&l_249,&p_1083->g_2,&l_249,&l_249,&p_1083->g_2,&l_249,&l_249,&p_1083->g_2,&l_249};
            int i, j, k;
            for (p_1083->g_94 = 22; (p_1083->g_94 != 41); p_1083->g_94 = safe_add_func_uint64_t_u_u(p_1083->g_94, 1))
            { /* block id: 80 */
                uint64_t **l_209 = &l_208[1];
                int32_t l_224 = 0x76BA62BEL;
                int32_t l_248 = 0L;
                VECTOR(uint32_t, 2) l_258 = (VECTOR(uint32_t, 2))(0xFB5A596CL, 4294967293UL);
                VECTOR(uint32_t, 16) l_259 = (VECTOR(uint32_t, 16))(4294967294UL, (VECTOR(uint32_t, 4))(4294967294UL, (VECTOR(uint32_t, 2))(4294967294UL, 0x0414E6D3L), 0x0414E6D3L), 0x0414E6D3L, 4294967294UL, 0x0414E6D3L, (VECTOR(uint32_t, 2))(4294967294UL, 0x0414E6D3L), (VECTOR(uint32_t, 2))(4294967294UL, 0x0414E6D3L), 4294967294UL, 0x0414E6D3L, 4294967294UL, 0x0414E6D3L);
                union U1 l_273 = {65530UL};
                VECTOR(int64_t, 16) l_279 = (VECTOR(int64_t, 16))(0x667E9CEAA5A37EBBL, (VECTOR(int64_t, 4))(0x667E9CEAA5A37EBBL, (VECTOR(int64_t, 2))(0x667E9CEAA5A37EBBL, (-1L)), (-1L)), (-1L), 0x667E9CEAA5A37EBBL, (-1L), (VECTOR(int64_t, 2))(0x667E9CEAA5A37EBBL, (-1L)), (VECTOR(int64_t, 2))(0x667E9CEAA5A37EBBL, (-1L)), 0x667E9CEAA5A37EBBL, (-1L), 0x667E9CEAA5A37EBBL, (-1L));
                int8_t l_328 = (-1L);
                int32_t l_329 = 0x54AC13DEL;
                int32_t l_330 = (-8L);
                int32_t l_331 = 0x7F92105EL;
                uint32_t l_344 = 4UL;
                uint16_t l_374 = 0UL;
                int i;
                l_210 ^= (p_1083->g_63[6] , (((*l_209) = l_208[0]) == ((l_107[0] = 4294967295UL) , &p_1083->g_68)));
            }
            if ((safe_div_func_uint64_t_u_u(((*l_133) = GROUP_DIVERGE(2, 1)), (safe_rshift_func_uint16_t_u_s((+(p_1083->g_332 == (l_257.s1 ^ (p_1083->g_403[0][0] = (safe_rshift_func_int8_t_s_s(((safe_mod_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 4))(l_389.xyyx)), ((VECTOR(int16_t, 2))(p_1083->g_390.s93)).xyyx))))).z, (++(*l_134)))), (p_56.f1 = ((p_1083->g_233.x , 1UL) != (p_54 = (l_393 == (void*)0)))))), 0x3AL)) , ((((safe_mul_func_uint8_t_u_u((p_54 | (((safe_sub_func_int64_t_s_s(((*l_393) = (safe_rshift_func_int16_t_s_s((safe_sub_func_int16_t_s_s(((((&l_247 == &l_247) != 7UL) | p_1083->g_68) & (**p_1083->g_159)), p_1083->g_63[6])), 14))), l_255.s6)) , l_283.sf) && l_402)), 255UL)) <= p_54) , 0x47L) , l_239[3][3][0])), l_107[0])))))), 13)))))
            { /* block id: 149 */
                int32_t *l_407 = &l_107[0];
                for (p_1083->g_343 = 0; (p_1083->g_343 > (-23)); --p_1083->g_343)
                { /* block id: 152 */
                    int32_t *l_406 = &l_107[0];
                    int32_t *l_408 = (void*)0;
                    return l_408;
                }
            }
            else
            { /* block id: 155 */
                int32_t l_411 = 0x1867ACA5L;
                VECTOR(int32_t, 8) l_412 = (VECTOR(int32_t, 8))(0x41DF2252L, (VECTOR(int32_t, 4))(0x41DF2252L, (VECTOR(int32_t, 2))(0x41DF2252L, 5L), 5L), 5L, 0x41DF2252L, 5L);
                int64_t l_432 = 0x008CA34DF009315BL;
                int i;
                (**p_1083->g_159) ^= l_238.s9;
                for (p_1083->g_69.f1 = 0; (p_1083->g_69.f1 <= 32); p_1083->g_69.f1 = safe_add_func_int16_t_s_s(p_1083->g_69.f1, 1))
                { /* block id: 159 */
                    int32_t *l_413 = &l_239[3][0][1];
                    int32_t *l_414 = (void*)0;
                    int32_t l_415 = 0L;
                    int32_t *l_416 = &l_249;
                    int32_t *l_417 = &l_237;
                    int32_t *l_418 = (void*)0;
                    int32_t *l_419 = &l_237;
                    int32_t *l_420 = &l_239[5][1][0];
                    int32_t *l_421 = &l_107[0];
                    int32_t *l_422 = &p_1083->g_353;
                    int32_t *l_423 = &l_107[0];
                    int32_t *l_424 = (void*)0;
                    int32_t *l_425 = &l_107[0];
                    int32_t *l_426 = &l_239[2][3][2];
                    int32_t *l_427 = &l_107[0];
                    int32_t *l_428[5][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                    int i, j;
                    l_429++;
                    if (p_56.f1)
                        continue;
                }
                l_432 ^= p_56.f1;
                l_433 = (*p_1083->g_142);
            }
            for (p_56.f0 = 0; (p_56.f0 > (-19)); --p_56.f0)
            { /* block id: 168 */
                int32_t *l_436 = &l_107[0];
                int32_t *l_437 = (void*)0;
                int32_t *l_438 = (void*)0;
                int32_t *l_439[8][10][3] = {{{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]}},{{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]}},{{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]}},{{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]}},{{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]}},{{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]}},{{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]}},{{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]},{(void*)0,(void*)0,&l_107[0]}}};
                VECTOR(int32_t, 4) l_480 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L);
                union U2 *l_487 = &p_1083->g_101;
                int i, j, k;
                if (p_57)
                    break;
                (**p_1083->g_159) = p_58;
                --l_441[6][0];
                for (p_1083->g_332 = 6; (p_1083->g_332 > 28); p_1083->g_332 = safe_add_func_uint16_t_u_u(p_1083->g_332, 1))
                { /* block id: 174 */
                    int8_t l_446[6][5][7] = {{{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L}},{{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L}},{{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L}},{{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L}},{{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L}},{{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L},{0x52L,(-6L),0x07L,(-1L),5L,9L,0x28L}}};
                    int8_t ***l_451 = (void*)0;
                    int8_t ***l_472[10] = {&l_268[0][0],&l_268[0][0],&l_268[0][0],&l_268[0][0],&l_268[0][0],&l_268[0][0],&l_268[0][0],&l_268[0][0],&l_268[0][0],&l_268[0][0]};
                    int i, j, k;
                    (1 + 1);
                }
            }
            (*p_1083->g_167) = l_496[6];
        }
    }
lbl_525:
    (*p_1083->g_137) = &l_107[0];
    if ((((&l_441[6][0] == &l_441[0][0]) & p_58) || (((void*)0 == &l_110) | ((safe_add_func_uint8_t_u_u((((p_1083->g_501[5] = l_133) == l_502) ^ ((*p_1083->g_22) = (safe_rshift_func_uint16_t_u_s((((+(safe_unary_minus_func_uint64_t_u(((safe_add_func_uint8_t_u_u(0x00L, ((void*)0 != &l_497[1][0]))) , 0UL)))) != GROUP_DIVERGE(2, 1)) && p_1083->g_353), l_508)))), 0xB2L)) & 0x8DD2L))))
    { /* block id: 204 */
        (***p_1083->g_158) = (safe_lshift_func_uint16_t_u_s(l_511, p_1083->g_353));
        return l_513;
    }
    else
    { /* block id: 207 */
        int16_t l_516 = 0x2B6EL;
        int32_t l_517[3][9][9] = {{{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L}},{{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L}},{{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L},{0x4F36BD23L,0x5F946CEEL,0x5F946CEEL,0x4F36BD23L,(-3L),0L,0L,(-3L),0x4F36BD23L}}};
        int16_t l_520 = 0x4873L;
        int32_t *l_527 = &p_1083->g_2;
        uint32_t l_528[6][1] = {{0x7A092505L},{0x7A092505L},{0x7A092505L},{0x7A092505L},{0x7A092505L},{0x7A092505L}};
        union U1 **l_532 = &l_531;
        int i, j, k;
        if (p_58)
        { /* block id: 208 */
            int32_t l_514 = 0L;
            int32_t l_515[1];
            int32_t l_519[6] = {0x08D20B66L,0x08D20B66L,0x08D20B66L,0x08D20B66L,0x08D20B66L,0x08D20B66L};
            int32_t l_521 = 0x1C10D210L;
            int i;
            for (i = 0; i < 1; i++)
                l_515[i] = 0L;
            --l_522;
            if (p_57)
                goto lbl_525;
        }
        else
        { /* block id: 211 */
            int32_t *l_526 = &l_517[0][8][6];
            return l_527;
        }
        l_528[3][0]++;
        (*l_532) = l_531;
        (*p_1083->g_188) = (((VECTOR(int32_t, 16))(l_533.s378b08b27371334a)).sc , &l_517[2][8][5]);
    }
    return l_534;
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_68 p_1083->g_77 p_1083->g_35 p_1083->g_22 p_1083->g_23 p_1083->g_77.f0
 * writes:
 */
int8_t * func_59(int64_t  p_60, union U1  p_61, struct S3 * p_1083)
{ /* block id: 14 */
    int32_t l_76 = 9L;
    union U2 l_78 = {-2L};
    union U2 *l_79 = &l_78;
    VECTOR(int32_t, 8) l_84 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x3B6ABB57L), 0x3B6ABB57L), 0x3B6ABB57L, 1L, 0x3B6ABB57L);
    VECTOR(int8_t, 8) l_87 = (VECTOR(int8_t, 8))((-10L), (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), 0x04L), 0x04L), 0x04L, (-10L), 0x04L);
    int8_t *l_88[7][5][7] = {{{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23}},{{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23}},{{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23}},{{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23}},{{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23}},{{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23}},{{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23},{&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23,&p_1083->g_23}}};
    int32_t l_89 = 0x3775BA80L;
    uint16_t l_90[8][3] = {{1UL,0xBAC6L,9UL},{1UL,0xBAC6L,9UL},{1UL,0xBAC6L,9UL},{1UL,0xBAC6L,9UL},{1UL,0xBAC6L,9UL},{1UL,0xBAC6L,9UL},{1UL,0xBAC6L,9UL},{1UL,0xBAC6L,9UL}};
    uint64_t l_91 = 1UL;
    uint16_t *l_92 = &l_90[0][1];
    uint64_t *l_93[2][6][6] = {{{&l_91,&p_1083->g_94,&l_91,&l_91,&p_1083->g_94,&l_91},{&l_91,&p_1083->g_94,&l_91,&l_91,&p_1083->g_94,&l_91},{&l_91,&p_1083->g_94,&l_91,&l_91,&p_1083->g_94,&l_91},{&l_91,&p_1083->g_94,&l_91,&l_91,&p_1083->g_94,&l_91},{&l_91,&p_1083->g_94,&l_91,&l_91,&p_1083->g_94,&l_91},{&l_91,&p_1083->g_94,&l_91,&l_91,&p_1083->g_94,&l_91}},{{&l_91,&p_1083->g_94,&l_91,&l_91,&p_1083->g_94,&l_91},{&l_91,&p_1083->g_94,&l_91,&l_91,&p_1083->g_94,&l_91},{&l_91,&p_1083->g_94,&l_91,&l_91,&p_1083->g_94,&l_91},{&l_91,&p_1083->g_94,&l_91,&l_91,&p_1083->g_94,&l_91},{&l_91,&p_1083->g_94,&l_91,&l_91,&p_1083->g_94,&l_91},{&l_91,&p_1083->g_94,&l_91,&l_91,&p_1083->g_94,&l_91}}};
    int32_t l_95 = 0x3B49DA01L;
    int32_t *l_97 = (void*)0;
    int32_t **l_96 = &l_97;
    int32_t ***l_98 = &l_96;
    int i, j, k;
    (*l_98) = ((safe_rshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_s((safe_lshift_func_uint8_t_u_s((p_1083->g_68 , (~l_76)), 6)), (((p_1083->g_77 , ((*l_79) = l_78)) , ((safe_lshift_func_int8_t_s_u((((l_76 | (l_78.f0 <= p_1083->g_35)) <= (l_95 ^= ((((*l_92) = ((!(safe_add_func_int32_t_s_s(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_84.s55526706)).lo)).y, (~((((((((FAKE_DIVERGE(p_1083->local_2_offset, get_local_id(2), 10) ^ (+((safe_sub_func_int8_t_s_s((*p_1083->g_22), (((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))((l_89 = ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(l_87.s6057770325121156)).sa955)).x), l_87.s0, 2L, ((VECTOR(int8_t, 2))(0x6EL)), l_76, 0x10L, ((VECTOR(int8_t, 8))((-8L))), 0x0BL)).even)), l_87.s2, (*p_1083->g_22), 3L, ((VECTOR(int8_t, 4))(0L)), (-8L))))))).s9d)).yyyxyxyx, ((VECTOR(int8_t, 8))(0L)), ((VECTOR(int8_t, 8))(5L))))).s0 < p_1083->g_77.f0))) , l_90[0][1]))) , l_76) , p_1083->g_77.f0) == (*p_1083->g_22)) <= (-1L)) , p_1083->g_77.f0) , 4L) ^ l_84.s3))))) != l_91)) > 0x1A37L) <= 0L))) && 0UL), p_60)) != (*p_1083->g_22))) && l_90[3][1]))), 1)) , l_96);
    return l_88[5][1][6];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_1084;
    struct S3* p_1083 = &c_1084;
    struct S3 c_1085 = {
        (-10L), // p_1083->g_2
        0x22L, // p_1083->g_23
        &p_1083->g_23, // p_1083->g_22
        (-1L), // p_1083->g_35
        {0xE1DB4DBDF9020C5AL,0UL,0xE1DB4DBDF9020C5AL,0xE1DB4DBDF9020C5AL,0UL,0xE1DB4DBDF9020C5AL,0xE1DB4DBDF9020C5AL}, // p_1083->g_63
        1UL, // p_1083->g_68
        {0xF8C5L}, // p_1083->g_69
        {-1L}, // p_1083->g_77
        1UL, // p_1083->g_94
        {0x2FB9L}, // p_1083->g_101
        0L, // p_1083->g_109
        0xBAL, // p_1083->g_111
        (VECTOR(uint32_t, 16))(4294967286UL, (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 1UL), 1UL), 1UL, 4294967286UL, 1UL, (VECTOR(uint32_t, 2))(4294967286UL, 1UL), (VECTOR(uint32_t, 2))(4294967286UL, 1UL), 4294967286UL, 1UL, 4294967286UL, 1UL), // p_1083->g_121
        0x02B9L, // p_1083->g_132
        1UL, // p_1083->g_135
        {{{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2},{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2}},{{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2},{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2}},{{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2},{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2}},{{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2},{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2}},{{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2},{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2}},{{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2},{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2}},{{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2},{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2}},{{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2},{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2}},{{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2},{&p_1083->g_2,&p_1083->g_35,&p_1083->g_2,&p_1083->g_2,&p_1083->g_35,&p_1083->g_35,&p_1083->g_2}}}, // p_1083->g_138
        &p_1083->g_138[8][0][2], // p_1083->g_137
        &p_1083->g_2, // p_1083->g_141
        &p_1083->g_138[1][1][2], // p_1083->g_142
        0UL, // p_1083->g_148
        0x1961D603L, // p_1083->g_161
        {{&p_1083->g_161},{&p_1083->g_161},{&p_1083->g_161}}, // p_1083->g_160
        &p_1083->g_160[1][0], // p_1083->g_159
        &p_1083->g_159, // p_1083->g_158
        &p_1083->g_138[4][1][0], // p_1083->g_167
        (void*)0, // p_1083->g_170
        &p_1083->g_138[8][0][2], // p_1083->g_188
        (VECTOR(uint32_t, 2))(0xBA9EA097L, 1UL), // p_1083->g_192
        {5L}, // p_1083->g_211
        (VECTOR(int64_t, 2))(1L, 0L), // p_1083->g_233
        (VECTOR(uint32_t, 8))(0x42FC2654L, (VECTOR(uint32_t, 4))(0x42FC2654L, (VECTOR(uint32_t, 2))(0x42FC2654L, 0x4C6CD30EL), 0x4C6CD30EL), 0x4C6CD30EL, 0x42FC2654L, 0x4C6CD30EL), // p_1083->g_254
        (void*)0, // p_1083->g_267
        {{8UL,8UL,8UL,8UL},{8UL,8UL,8UL,8UL}}, // p_1083->g_297
        (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint64_t, 2))(1UL, 0UL), (VECTOR(uint64_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL), // p_1083->g_316
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L)), // p_1083->g_319
        248UL, // p_1083->g_332
        0x2A0CC205L, // p_1083->g_343
        1L, // p_1083->g_353
        &p_1083->g_353, // p_1083->g_352
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int16_t, 2))(1L, 0L), (VECTOR(int16_t, 2))(1L, 0L), 1L, 0L, 1L, 0L), // p_1083->g_390
        {{(-1L),(-1L),(-1L),(-1L)}}, // p_1083->g_403
        1UL, // p_1083->g_454
        (VECTOR(int16_t, 16))(0x7579L, (VECTOR(int16_t, 4))(0x7579L, (VECTOR(int16_t, 2))(0x7579L, (-1L)), (-1L)), (-1L), 0x7579L, (-1L), (VECTOR(int16_t, 2))(0x7579L, (-1L)), (VECTOR(int16_t, 2))(0x7579L, (-1L)), 0x7579L, (-1L), 0x7579L, (-1L)), // p_1083->g_471
        &p_1083->g_101, // p_1083->g_490
        {&p_1083->g_63[5],&p_1083->g_68,&p_1083->g_63[5],&p_1083->g_63[5],&p_1083->g_68,&p_1083->g_63[5],&p_1083->g_63[5],&p_1083->g_68,&p_1083->g_63[5]}, // p_1083->g_501
        {0x6C7D4E27L}, // p_1083->g_544
        &p_1083->g_138[0][0][6], // p_1083->g_569
        (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xE60FEC3259DFD787L), 0xE60FEC3259DFD787L), // p_1083->g_600
        (-9L), // p_1083->g_624
        (VECTOR(int8_t, 16))(5L, (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, (-1L)), (-1L)), (-1L), 5L, (-1L), (VECTOR(int8_t, 2))(5L, (-1L)), (VECTOR(int8_t, 2))(5L, (-1L)), 5L, (-1L), 5L, (-1L)), // p_1083->g_641
        (VECTOR(int8_t, 8))((-7L), (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), (-1L)), (-1L)), (-1L), (-7L), (-1L)), // p_1083->g_642
        (VECTOR(uint64_t, 8))(0x0F8A6F7E96BEB44DL, (VECTOR(uint64_t, 4))(0x0F8A6F7E96BEB44DL, (VECTOR(uint64_t, 2))(0x0F8A6F7E96BEB44DL, 9UL), 9UL), 9UL, 0x0F8A6F7E96BEB44DL, 9UL), // p_1083->g_658
        1L, // p_1083->g_721
        (VECTOR(int8_t, 2))((-1L), 0x79L), // p_1083->g_733
        (VECTOR(uint8_t, 2))(1UL, 1UL), // p_1083->g_764
        (VECTOR(int8_t, 8))(0x44L, (VECTOR(int8_t, 4))(0x44L, (VECTOR(int8_t, 2))(0x44L, 7L), 7L), 7L, 0x44L, 7L), // p_1083->g_771
        (VECTOR(int8_t, 8))(0x2DL, (VECTOR(int8_t, 4))(0x2DL, (VECTOR(int8_t, 2))(0x2DL, 0x32L), 0x32L), 0x32L, 0x2DL, 0x32L), // p_1083->g_773
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L), // p_1083->g_774
        (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 1L), 1L), // p_1083->g_775
        (VECTOR(uint8_t, 8))(0xBBL, (VECTOR(uint8_t, 4))(0xBBL, (VECTOR(uint8_t, 2))(0xBBL, 0xA0L), 0xA0L), 0xA0L, 0xBBL, 0xA0L), // p_1083->g_785
        (VECTOR(uint8_t, 8))(0x3CL, (VECTOR(uint8_t, 4))(0x3CL, (VECTOR(uint8_t, 2))(0x3CL, 0x58L), 0x58L), 0x58L, 0x3CL, 0x58L), // p_1083->g_786
        (void*)0, // p_1083->g_792
        (VECTOR(int16_t, 4))(0x23C9L, (VECTOR(int16_t, 2))(0x23C9L, 0x115BL), 0x115BL), // p_1083->g_805
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L), // p_1083->g_845
        (VECTOR(uint64_t, 2))(0x1BC329E8798CAA0EL, 0x6FA80EE9312872F7L), // p_1083->g_880
        {(void*)0,(void*)0,(void*)0}, // p_1083->g_892
        &p_1083->g_892[2], // p_1083->g_891
        &p_1083->g_891, // p_1083->g_893
        {0x5EA3857CL}, // p_1083->g_900
        (VECTOR(uint8_t, 8))(0x2BL, (VECTOR(uint8_t, 4))(0x2BL, (VECTOR(uint8_t, 2))(0x2BL, 0x59L), 0x59L), 0x59L, 0x2BL, 0x59L), // p_1083->g_932
        {&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2]}, // p_1083->g_938
        &p_1083->g_138[8][0][2], // p_1083->g_940
        (void*)0, // p_1083->g_941
        {{{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]},{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]},{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]}},{{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]},{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]},{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]}},{{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]},{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]},{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]}},{{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]},{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]},{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]}},{{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]},{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]},{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]}},{{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]},{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]},{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]}},{{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]},{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]},{&p_1083->g_138[8][0][2],&p_1083->g_138[3][0][4],&p_1083->g_138[5][1][2],&p_1083->g_138[8][0][2],&p_1083->g_138[8][0][2],&p_1083->g_138[1][1][6]}}}, // p_1083->g_942
        &p_1083->g_138[8][0][2], // p_1083->g_945
        (VECTOR(int64_t, 8))(4L, (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, 0x63010571E843DE88L), 0x63010571E843DE88L), 0x63010571E843DE88L, 4L, 0x63010571E843DE88L), // p_1083->g_946
        1UL, // p_1083->g_963
        &p_1083->g_101.f0, // p_1083->g_1007
        (VECTOR(int8_t, 8))(0x6BL, (VECTOR(int8_t, 4))(0x6BL, (VECTOR(int8_t, 2))(0x6BL, (-5L)), (-5L)), (-5L), 0x6BL, (-5L)), // p_1083->g_1019
        (VECTOR(int64_t, 4))(0x6F87BE7EF409522DL, (VECTOR(int64_t, 2))(0x6F87BE7EF409522DL, 0x640AD725682DBFE0L), 0x640AD725682DBFE0L), // p_1083->g_1032
        (VECTOR(uint64_t, 2))(18446744073709551613UL, 18446744073709551615UL), // p_1083->g_1034
        sequence_input[get_global_id(0)], // p_1083->global_0_offset
        sequence_input[get_global_id(1)], // p_1083->global_1_offset
        sequence_input[get_global_id(2)], // p_1083->global_2_offset
        sequence_input[get_local_id(0)], // p_1083->local_0_offset
        sequence_input[get_local_id(1)], // p_1083->local_1_offset
        sequence_input[get_local_id(2)], // p_1083->local_2_offset
        sequence_input[get_group_id(0)], // p_1083->group_0_offset
        sequence_input[get_group_id(1)], // p_1083->group_1_offset
        sequence_input[get_group_id(2)], // p_1083->group_2_offset
    };
    c_1084 = c_1085;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1083);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1083->g_2, "p_1083->g_2", print_hash_value);
    transparent_crc(p_1083->g_23, "p_1083->g_23", print_hash_value);
    transparent_crc(p_1083->g_35, "p_1083->g_35", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1083->g_63[i], "p_1083->g_63[i]", print_hash_value);

    }
    transparent_crc(p_1083->g_68, "p_1083->g_68", print_hash_value);
    transparent_crc(p_1083->g_77.f0, "p_1083->g_77.f0", print_hash_value);
    transparent_crc(p_1083->g_94, "p_1083->g_94", print_hash_value);
    transparent_crc(p_1083->g_109, "p_1083->g_109", print_hash_value);
    transparent_crc(p_1083->g_111, "p_1083->g_111", print_hash_value);
    transparent_crc(p_1083->g_121.s0, "p_1083->g_121.s0", print_hash_value);
    transparent_crc(p_1083->g_121.s1, "p_1083->g_121.s1", print_hash_value);
    transparent_crc(p_1083->g_121.s2, "p_1083->g_121.s2", print_hash_value);
    transparent_crc(p_1083->g_121.s3, "p_1083->g_121.s3", print_hash_value);
    transparent_crc(p_1083->g_121.s4, "p_1083->g_121.s4", print_hash_value);
    transparent_crc(p_1083->g_121.s5, "p_1083->g_121.s5", print_hash_value);
    transparent_crc(p_1083->g_121.s6, "p_1083->g_121.s6", print_hash_value);
    transparent_crc(p_1083->g_121.s7, "p_1083->g_121.s7", print_hash_value);
    transparent_crc(p_1083->g_121.s8, "p_1083->g_121.s8", print_hash_value);
    transparent_crc(p_1083->g_121.s9, "p_1083->g_121.s9", print_hash_value);
    transparent_crc(p_1083->g_121.sa, "p_1083->g_121.sa", print_hash_value);
    transparent_crc(p_1083->g_121.sb, "p_1083->g_121.sb", print_hash_value);
    transparent_crc(p_1083->g_121.sc, "p_1083->g_121.sc", print_hash_value);
    transparent_crc(p_1083->g_121.sd, "p_1083->g_121.sd", print_hash_value);
    transparent_crc(p_1083->g_121.se, "p_1083->g_121.se", print_hash_value);
    transparent_crc(p_1083->g_121.sf, "p_1083->g_121.sf", print_hash_value);
    transparent_crc(p_1083->g_132, "p_1083->g_132", print_hash_value);
    transparent_crc(p_1083->g_135, "p_1083->g_135", print_hash_value);
    transparent_crc(p_1083->g_148, "p_1083->g_148", print_hash_value);
    transparent_crc(p_1083->g_161, "p_1083->g_161", print_hash_value);
    transparent_crc(p_1083->g_192.x, "p_1083->g_192.x", print_hash_value);
    transparent_crc(p_1083->g_192.y, "p_1083->g_192.y", print_hash_value);
    transparent_crc(p_1083->g_211.f0, "p_1083->g_211.f0", print_hash_value);
    transparent_crc(p_1083->g_233.x, "p_1083->g_233.x", print_hash_value);
    transparent_crc(p_1083->g_233.y, "p_1083->g_233.y", print_hash_value);
    transparent_crc(p_1083->g_254.s0, "p_1083->g_254.s0", print_hash_value);
    transparent_crc(p_1083->g_254.s1, "p_1083->g_254.s1", print_hash_value);
    transparent_crc(p_1083->g_254.s2, "p_1083->g_254.s2", print_hash_value);
    transparent_crc(p_1083->g_254.s3, "p_1083->g_254.s3", print_hash_value);
    transparent_crc(p_1083->g_254.s4, "p_1083->g_254.s4", print_hash_value);
    transparent_crc(p_1083->g_254.s5, "p_1083->g_254.s5", print_hash_value);
    transparent_crc(p_1083->g_254.s6, "p_1083->g_254.s6", print_hash_value);
    transparent_crc(p_1083->g_254.s7, "p_1083->g_254.s7", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1083->g_297[i][j], "p_1083->g_297[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1083->g_316.s0, "p_1083->g_316.s0", print_hash_value);
    transparent_crc(p_1083->g_316.s1, "p_1083->g_316.s1", print_hash_value);
    transparent_crc(p_1083->g_316.s2, "p_1083->g_316.s2", print_hash_value);
    transparent_crc(p_1083->g_316.s3, "p_1083->g_316.s3", print_hash_value);
    transparent_crc(p_1083->g_316.s4, "p_1083->g_316.s4", print_hash_value);
    transparent_crc(p_1083->g_316.s5, "p_1083->g_316.s5", print_hash_value);
    transparent_crc(p_1083->g_316.s6, "p_1083->g_316.s6", print_hash_value);
    transparent_crc(p_1083->g_316.s7, "p_1083->g_316.s7", print_hash_value);
    transparent_crc(p_1083->g_316.s8, "p_1083->g_316.s8", print_hash_value);
    transparent_crc(p_1083->g_316.s9, "p_1083->g_316.s9", print_hash_value);
    transparent_crc(p_1083->g_316.sa, "p_1083->g_316.sa", print_hash_value);
    transparent_crc(p_1083->g_316.sb, "p_1083->g_316.sb", print_hash_value);
    transparent_crc(p_1083->g_316.sc, "p_1083->g_316.sc", print_hash_value);
    transparent_crc(p_1083->g_316.sd, "p_1083->g_316.sd", print_hash_value);
    transparent_crc(p_1083->g_316.se, "p_1083->g_316.se", print_hash_value);
    transparent_crc(p_1083->g_316.sf, "p_1083->g_316.sf", print_hash_value);
    transparent_crc(p_1083->g_319.s0, "p_1083->g_319.s0", print_hash_value);
    transparent_crc(p_1083->g_319.s1, "p_1083->g_319.s1", print_hash_value);
    transparent_crc(p_1083->g_319.s2, "p_1083->g_319.s2", print_hash_value);
    transparent_crc(p_1083->g_319.s3, "p_1083->g_319.s3", print_hash_value);
    transparent_crc(p_1083->g_319.s4, "p_1083->g_319.s4", print_hash_value);
    transparent_crc(p_1083->g_319.s5, "p_1083->g_319.s5", print_hash_value);
    transparent_crc(p_1083->g_319.s6, "p_1083->g_319.s6", print_hash_value);
    transparent_crc(p_1083->g_319.s7, "p_1083->g_319.s7", print_hash_value);
    transparent_crc(p_1083->g_319.s8, "p_1083->g_319.s8", print_hash_value);
    transparent_crc(p_1083->g_319.s9, "p_1083->g_319.s9", print_hash_value);
    transparent_crc(p_1083->g_319.sa, "p_1083->g_319.sa", print_hash_value);
    transparent_crc(p_1083->g_319.sb, "p_1083->g_319.sb", print_hash_value);
    transparent_crc(p_1083->g_319.sc, "p_1083->g_319.sc", print_hash_value);
    transparent_crc(p_1083->g_319.sd, "p_1083->g_319.sd", print_hash_value);
    transparent_crc(p_1083->g_319.se, "p_1083->g_319.se", print_hash_value);
    transparent_crc(p_1083->g_319.sf, "p_1083->g_319.sf", print_hash_value);
    transparent_crc(p_1083->g_332, "p_1083->g_332", print_hash_value);
    transparent_crc(p_1083->g_343, "p_1083->g_343", print_hash_value);
    transparent_crc(p_1083->g_353, "p_1083->g_353", print_hash_value);
    transparent_crc(p_1083->g_390.s0, "p_1083->g_390.s0", print_hash_value);
    transparent_crc(p_1083->g_390.s1, "p_1083->g_390.s1", print_hash_value);
    transparent_crc(p_1083->g_390.s2, "p_1083->g_390.s2", print_hash_value);
    transparent_crc(p_1083->g_390.s3, "p_1083->g_390.s3", print_hash_value);
    transparent_crc(p_1083->g_390.s4, "p_1083->g_390.s4", print_hash_value);
    transparent_crc(p_1083->g_390.s5, "p_1083->g_390.s5", print_hash_value);
    transparent_crc(p_1083->g_390.s6, "p_1083->g_390.s6", print_hash_value);
    transparent_crc(p_1083->g_390.s7, "p_1083->g_390.s7", print_hash_value);
    transparent_crc(p_1083->g_390.s8, "p_1083->g_390.s8", print_hash_value);
    transparent_crc(p_1083->g_390.s9, "p_1083->g_390.s9", print_hash_value);
    transparent_crc(p_1083->g_390.sa, "p_1083->g_390.sa", print_hash_value);
    transparent_crc(p_1083->g_390.sb, "p_1083->g_390.sb", print_hash_value);
    transparent_crc(p_1083->g_390.sc, "p_1083->g_390.sc", print_hash_value);
    transparent_crc(p_1083->g_390.sd, "p_1083->g_390.sd", print_hash_value);
    transparent_crc(p_1083->g_390.se, "p_1083->g_390.se", print_hash_value);
    transparent_crc(p_1083->g_390.sf, "p_1083->g_390.sf", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1083->g_403[i][j], "p_1083->g_403[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1083->g_454, "p_1083->g_454", print_hash_value);
    transparent_crc(p_1083->g_471.s0, "p_1083->g_471.s0", print_hash_value);
    transparent_crc(p_1083->g_471.s1, "p_1083->g_471.s1", print_hash_value);
    transparent_crc(p_1083->g_471.s2, "p_1083->g_471.s2", print_hash_value);
    transparent_crc(p_1083->g_471.s3, "p_1083->g_471.s3", print_hash_value);
    transparent_crc(p_1083->g_471.s4, "p_1083->g_471.s4", print_hash_value);
    transparent_crc(p_1083->g_471.s5, "p_1083->g_471.s5", print_hash_value);
    transparent_crc(p_1083->g_471.s6, "p_1083->g_471.s6", print_hash_value);
    transparent_crc(p_1083->g_471.s7, "p_1083->g_471.s7", print_hash_value);
    transparent_crc(p_1083->g_471.s8, "p_1083->g_471.s8", print_hash_value);
    transparent_crc(p_1083->g_471.s9, "p_1083->g_471.s9", print_hash_value);
    transparent_crc(p_1083->g_471.sa, "p_1083->g_471.sa", print_hash_value);
    transparent_crc(p_1083->g_471.sb, "p_1083->g_471.sb", print_hash_value);
    transparent_crc(p_1083->g_471.sc, "p_1083->g_471.sc", print_hash_value);
    transparent_crc(p_1083->g_471.sd, "p_1083->g_471.sd", print_hash_value);
    transparent_crc(p_1083->g_471.se, "p_1083->g_471.se", print_hash_value);
    transparent_crc(p_1083->g_471.sf, "p_1083->g_471.sf", print_hash_value);
    transparent_crc(p_1083->g_544.f0, "p_1083->g_544.f0", print_hash_value);
    transparent_crc(p_1083->g_600.x, "p_1083->g_600.x", print_hash_value);
    transparent_crc(p_1083->g_600.y, "p_1083->g_600.y", print_hash_value);
    transparent_crc(p_1083->g_600.z, "p_1083->g_600.z", print_hash_value);
    transparent_crc(p_1083->g_600.w, "p_1083->g_600.w", print_hash_value);
    transparent_crc(p_1083->g_624, "p_1083->g_624", print_hash_value);
    transparent_crc(p_1083->g_641.s0, "p_1083->g_641.s0", print_hash_value);
    transparent_crc(p_1083->g_641.s1, "p_1083->g_641.s1", print_hash_value);
    transparent_crc(p_1083->g_641.s2, "p_1083->g_641.s2", print_hash_value);
    transparent_crc(p_1083->g_641.s3, "p_1083->g_641.s3", print_hash_value);
    transparent_crc(p_1083->g_641.s4, "p_1083->g_641.s4", print_hash_value);
    transparent_crc(p_1083->g_641.s5, "p_1083->g_641.s5", print_hash_value);
    transparent_crc(p_1083->g_641.s6, "p_1083->g_641.s6", print_hash_value);
    transparent_crc(p_1083->g_641.s7, "p_1083->g_641.s7", print_hash_value);
    transparent_crc(p_1083->g_641.s8, "p_1083->g_641.s8", print_hash_value);
    transparent_crc(p_1083->g_641.s9, "p_1083->g_641.s9", print_hash_value);
    transparent_crc(p_1083->g_641.sa, "p_1083->g_641.sa", print_hash_value);
    transparent_crc(p_1083->g_641.sb, "p_1083->g_641.sb", print_hash_value);
    transparent_crc(p_1083->g_641.sc, "p_1083->g_641.sc", print_hash_value);
    transparent_crc(p_1083->g_641.sd, "p_1083->g_641.sd", print_hash_value);
    transparent_crc(p_1083->g_641.se, "p_1083->g_641.se", print_hash_value);
    transparent_crc(p_1083->g_641.sf, "p_1083->g_641.sf", print_hash_value);
    transparent_crc(p_1083->g_642.s0, "p_1083->g_642.s0", print_hash_value);
    transparent_crc(p_1083->g_642.s1, "p_1083->g_642.s1", print_hash_value);
    transparent_crc(p_1083->g_642.s2, "p_1083->g_642.s2", print_hash_value);
    transparent_crc(p_1083->g_642.s3, "p_1083->g_642.s3", print_hash_value);
    transparent_crc(p_1083->g_642.s4, "p_1083->g_642.s4", print_hash_value);
    transparent_crc(p_1083->g_642.s5, "p_1083->g_642.s5", print_hash_value);
    transparent_crc(p_1083->g_642.s6, "p_1083->g_642.s6", print_hash_value);
    transparent_crc(p_1083->g_642.s7, "p_1083->g_642.s7", print_hash_value);
    transparent_crc(p_1083->g_658.s0, "p_1083->g_658.s0", print_hash_value);
    transparent_crc(p_1083->g_658.s1, "p_1083->g_658.s1", print_hash_value);
    transparent_crc(p_1083->g_658.s2, "p_1083->g_658.s2", print_hash_value);
    transparent_crc(p_1083->g_658.s3, "p_1083->g_658.s3", print_hash_value);
    transparent_crc(p_1083->g_658.s4, "p_1083->g_658.s4", print_hash_value);
    transparent_crc(p_1083->g_658.s5, "p_1083->g_658.s5", print_hash_value);
    transparent_crc(p_1083->g_658.s6, "p_1083->g_658.s6", print_hash_value);
    transparent_crc(p_1083->g_658.s7, "p_1083->g_658.s7", print_hash_value);
    transparent_crc(p_1083->g_721, "p_1083->g_721", print_hash_value);
    transparent_crc(p_1083->g_733.x, "p_1083->g_733.x", print_hash_value);
    transparent_crc(p_1083->g_733.y, "p_1083->g_733.y", print_hash_value);
    transparent_crc(p_1083->g_764.x, "p_1083->g_764.x", print_hash_value);
    transparent_crc(p_1083->g_764.y, "p_1083->g_764.y", print_hash_value);
    transparent_crc(p_1083->g_771.s0, "p_1083->g_771.s0", print_hash_value);
    transparent_crc(p_1083->g_771.s1, "p_1083->g_771.s1", print_hash_value);
    transparent_crc(p_1083->g_771.s2, "p_1083->g_771.s2", print_hash_value);
    transparent_crc(p_1083->g_771.s3, "p_1083->g_771.s3", print_hash_value);
    transparent_crc(p_1083->g_771.s4, "p_1083->g_771.s4", print_hash_value);
    transparent_crc(p_1083->g_771.s5, "p_1083->g_771.s5", print_hash_value);
    transparent_crc(p_1083->g_771.s6, "p_1083->g_771.s6", print_hash_value);
    transparent_crc(p_1083->g_771.s7, "p_1083->g_771.s7", print_hash_value);
    transparent_crc(p_1083->g_773.s0, "p_1083->g_773.s0", print_hash_value);
    transparent_crc(p_1083->g_773.s1, "p_1083->g_773.s1", print_hash_value);
    transparent_crc(p_1083->g_773.s2, "p_1083->g_773.s2", print_hash_value);
    transparent_crc(p_1083->g_773.s3, "p_1083->g_773.s3", print_hash_value);
    transparent_crc(p_1083->g_773.s4, "p_1083->g_773.s4", print_hash_value);
    transparent_crc(p_1083->g_773.s5, "p_1083->g_773.s5", print_hash_value);
    transparent_crc(p_1083->g_773.s6, "p_1083->g_773.s6", print_hash_value);
    transparent_crc(p_1083->g_773.s7, "p_1083->g_773.s7", print_hash_value);
    transparent_crc(p_1083->g_774.x, "p_1083->g_774.x", print_hash_value);
    transparent_crc(p_1083->g_774.y, "p_1083->g_774.y", print_hash_value);
    transparent_crc(p_1083->g_774.z, "p_1083->g_774.z", print_hash_value);
    transparent_crc(p_1083->g_774.w, "p_1083->g_774.w", print_hash_value);
    transparent_crc(p_1083->g_775.x, "p_1083->g_775.x", print_hash_value);
    transparent_crc(p_1083->g_775.y, "p_1083->g_775.y", print_hash_value);
    transparent_crc(p_1083->g_775.z, "p_1083->g_775.z", print_hash_value);
    transparent_crc(p_1083->g_775.w, "p_1083->g_775.w", print_hash_value);
    transparent_crc(p_1083->g_785.s0, "p_1083->g_785.s0", print_hash_value);
    transparent_crc(p_1083->g_785.s1, "p_1083->g_785.s1", print_hash_value);
    transparent_crc(p_1083->g_785.s2, "p_1083->g_785.s2", print_hash_value);
    transparent_crc(p_1083->g_785.s3, "p_1083->g_785.s3", print_hash_value);
    transparent_crc(p_1083->g_785.s4, "p_1083->g_785.s4", print_hash_value);
    transparent_crc(p_1083->g_785.s5, "p_1083->g_785.s5", print_hash_value);
    transparent_crc(p_1083->g_785.s6, "p_1083->g_785.s6", print_hash_value);
    transparent_crc(p_1083->g_785.s7, "p_1083->g_785.s7", print_hash_value);
    transparent_crc(p_1083->g_786.s0, "p_1083->g_786.s0", print_hash_value);
    transparent_crc(p_1083->g_786.s1, "p_1083->g_786.s1", print_hash_value);
    transparent_crc(p_1083->g_786.s2, "p_1083->g_786.s2", print_hash_value);
    transparent_crc(p_1083->g_786.s3, "p_1083->g_786.s3", print_hash_value);
    transparent_crc(p_1083->g_786.s4, "p_1083->g_786.s4", print_hash_value);
    transparent_crc(p_1083->g_786.s5, "p_1083->g_786.s5", print_hash_value);
    transparent_crc(p_1083->g_786.s6, "p_1083->g_786.s6", print_hash_value);
    transparent_crc(p_1083->g_786.s7, "p_1083->g_786.s7", print_hash_value);
    transparent_crc(p_1083->g_805.x, "p_1083->g_805.x", print_hash_value);
    transparent_crc(p_1083->g_805.y, "p_1083->g_805.y", print_hash_value);
    transparent_crc(p_1083->g_805.z, "p_1083->g_805.z", print_hash_value);
    transparent_crc(p_1083->g_805.w, "p_1083->g_805.w", print_hash_value);
    transparent_crc(p_1083->g_845.s0, "p_1083->g_845.s0", print_hash_value);
    transparent_crc(p_1083->g_845.s1, "p_1083->g_845.s1", print_hash_value);
    transparent_crc(p_1083->g_845.s2, "p_1083->g_845.s2", print_hash_value);
    transparent_crc(p_1083->g_845.s3, "p_1083->g_845.s3", print_hash_value);
    transparent_crc(p_1083->g_845.s4, "p_1083->g_845.s4", print_hash_value);
    transparent_crc(p_1083->g_845.s5, "p_1083->g_845.s5", print_hash_value);
    transparent_crc(p_1083->g_845.s6, "p_1083->g_845.s6", print_hash_value);
    transparent_crc(p_1083->g_845.s7, "p_1083->g_845.s7", print_hash_value);
    transparent_crc(p_1083->g_880.x, "p_1083->g_880.x", print_hash_value);
    transparent_crc(p_1083->g_880.y, "p_1083->g_880.y", print_hash_value);
    transparent_crc(p_1083->g_900.f0, "p_1083->g_900.f0", print_hash_value);
    transparent_crc(p_1083->g_932.s0, "p_1083->g_932.s0", print_hash_value);
    transparent_crc(p_1083->g_932.s1, "p_1083->g_932.s1", print_hash_value);
    transparent_crc(p_1083->g_932.s2, "p_1083->g_932.s2", print_hash_value);
    transparent_crc(p_1083->g_932.s3, "p_1083->g_932.s3", print_hash_value);
    transparent_crc(p_1083->g_932.s4, "p_1083->g_932.s4", print_hash_value);
    transparent_crc(p_1083->g_932.s5, "p_1083->g_932.s5", print_hash_value);
    transparent_crc(p_1083->g_932.s6, "p_1083->g_932.s6", print_hash_value);
    transparent_crc(p_1083->g_932.s7, "p_1083->g_932.s7", print_hash_value);
    transparent_crc(p_1083->g_946.s0, "p_1083->g_946.s0", print_hash_value);
    transparent_crc(p_1083->g_946.s1, "p_1083->g_946.s1", print_hash_value);
    transparent_crc(p_1083->g_946.s2, "p_1083->g_946.s2", print_hash_value);
    transparent_crc(p_1083->g_946.s3, "p_1083->g_946.s3", print_hash_value);
    transparent_crc(p_1083->g_946.s4, "p_1083->g_946.s4", print_hash_value);
    transparent_crc(p_1083->g_946.s5, "p_1083->g_946.s5", print_hash_value);
    transparent_crc(p_1083->g_946.s6, "p_1083->g_946.s6", print_hash_value);
    transparent_crc(p_1083->g_946.s7, "p_1083->g_946.s7", print_hash_value);
    transparent_crc(p_1083->g_963, "p_1083->g_963", print_hash_value);
    transparent_crc(p_1083->g_1019.s0, "p_1083->g_1019.s0", print_hash_value);
    transparent_crc(p_1083->g_1019.s1, "p_1083->g_1019.s1", print_hash_value);
    transparent_crc(p_1083->g_1019.s2, "p_1083->g_1019.s2", print_hash_value);
    transparent_crc(p_1083->g_1019.s3, "p_1083->g_1019.s3", print_hash_value);
    transparent_crc(p_1083->g_1019.s4, "p_1083->g_1019.s4", print_hash_value);
    transparent_crc(p_1083->g_1019.s5, "p_1083->g_1019.s5", print_hash_value);
    transparent_crc(p_1083->g_1019.s6, "p_1083->g_1019.s6", print_hash_value);
    transparent_crc(p_1083->g_1019.s7, "p_1083->g_1019.s7", print_hash_value);
    transparent_crc(p_1083->g_1032.x, "p_1083->g_1032.x", print_hash_value);
    transparent_crc(p_1083->g_1032.y, "p_1083->g_1032.y", print_hash_value);
    transparent_crc(p_1083->g_1032.z, "p_1083->g_1032.z", print_hash_value);
    transparent_crc(p_1083->g_1032.w, "p_1083->g_1032.w", print_hash_value);
    transparent_crc(p_1083->g_1034.x, "p_1083->g_1034.x", print_hash_value);
    transparent_crc(p_1083->g_1034.y, "p_1083->g_1034.y", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
