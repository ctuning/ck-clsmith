// ---fake_divergence -g 5,2,645 -l 5,2,15
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


// Seed: 29

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   int8_t  f1;
   int64_t  f2;
};

struct S1 {
    uint16_t g_5[3][4];
    int32_t g_7;
    volatile struct S0 g_10;
    volatile int32_t g_12;
    int32_t g_13;
    int64_t g_17;
    volatile uint64_t g_22;
    int32_t g_48;
    uint16_t g_51[8];
    struct S0 g_55;
    uint64_t g_61;
    uint32_t g_93;
    uint64_t *g_97;
    int8_t g_137[8][5][1];
    int8_t *g_136[7];
    volatile int64_t g_144[3];
    volatile int64_t * volatile g_143;
    volatile int64_t * volatile *g_142;
    uint16_t g_207[9][9][3];
    int32_t g_210;
    uint16_t g_211;
    int32_t g_243;
    int64_t g_244;
    int16_t g_248[8][3];
    int64_t g_249;
    uint16_t g_250[3][2];
    int32_t g_255[5];
    int32_t g_256;
    uint32_t g_257[8][6][4];
    int64_t *g_270;
    int64_t **g_269[5][4][7];
    uint8_t g_272;
    uint32_t g_276;
    uint64_t * volatile *g_295;
    int32_t g_297;
    struct S0 g_314;
    struct S0 *g_313;
    int32_t *g_317;
    uint8_t g_373;
    int8_t **g_390;
    int8_t ***g_389;
    int8_t g_402;
    int32_t g_405;
    uint32_t g_407;
    int16_t g_448;
    struct S0 **g_484;
    uint64_t **g_610;
    int32_t *g_668;
    int32_t g_693[1];
    uint64_t g_694;
    int32_t ** volatile g_778;
    volatile uint8_t g_784[2][2][3];
    volatile int64_t g_804;
    volatile int16_t g_843[10][9];
    int32_t ** volatile g_845;
    struct S0 * volatile g_846;
    volatile int64_t g_855;
    volatile int8_t g_858;
    volatile uint32_t g_859;
    volatile struct S0 g_896;
    volatile int32_t g_916[9][8];
    volatile int32_t * volatile g_915;
    volatile int32_t * volatile * volatile g_914;
    volatile int32_t * volatile * volatile *g_913;
    volatile int32_t g_931;
    volatile int32_t *g_930;
    volatile int32_t ** volatile g_929;
    int32_t ** volatile g_935[3];
    int32_t ** volatile g_936;
    int32_t ** volatile g_937;
    int32_t ** volatile g_945;
    int32_t ** volatile g_949;
    int32_t ** volatile g_952;
    int32_t ** volatile g_953;
    int32_t ** volatile g_954;
    volatile uint32_t g_970;
    volatile uint32_t * volatile g_969[10];
    volatile uint32_t * volatile *g_968;
    volatile uint32_t * volatile **g_967;
    volatile uint32_t * volatile *** volatile g_966;
    volatile uint64_t ** volatile g_1036;
    volatile uint64_t ** volatile *g_1035;
    volatile uint64_t ** volatile ** volatile g_1034;
    int32_t ** volatile g_1070;
    int32_t g_1078[8];
    int32_t *g_1107;
    int32_t **g_1106;
    int32_t **g_1109[1][3];
    int64_t *g_1111;
    int32_t ** volatile g_1112;
    int8_t g_1147;
    int32_t ** volatile g_1183;
    uint64_t ***g_1189;
    int16_t g_1228;
    volatile uint32_t g_1245[6][4];
    volatile uint32_t *g_1244[1][6][2];
    volatile uint32_t ** volatile g_1243[7][5][7];
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
uint32_t  func_1(struct S1 * p_1302);
uint32_t  func_14(int8_t  p_15, struct S1 * p_1302);
struct S0  func_25(int32_t * p_26, int8_t  p_27, int32_t * p_28, uint64_t  p_29, struct S1 * p_1302);
uint64_t  func_34(uint8_t  p_35, int64_t  p_36, int32_t * p_37, uint32_t  p_38, int32_t  p_39, struct S1 * p_1302);
int32_t * func_40(struct S0 * p_41, struct S0 * p_42, int64_t  p_43, struct S0 * p_44, struct S1 * p_1302);
struct S0 * func_45(int32_t  p_46, struct S1 * p_1302);
int32_t  func_64(int64_t * p_65, int8_t  p_66, int32_t  p_67, struct S1 * p_1302);
int64_t * func_68(int32_t  p_69, int32_t * p_70, struct S1 * p_1302);
int32_t * func_79(int32_t  p_80, int64_t * p_81, int32_t * p_82, uint16_t  p_83, uint32_t  p_84, struct S1 * p_1302);
uint8_t  func_85(struct S0 * p_86, uint8_t  p_87, struct S1 * p_1302);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1302->g_5 p_1302->g_7 p_1302->g_10 p_1302->g_13 p_1302->g_484 p_1302->g_313 p_1302->g_211 p_1302->g_317 p_1302->g_915 p_1302->g_916 p_1302->g_143 p_1302->g_144 p_1302->g_270 p_1302->g_48 p_1302->g_945 p_1302->g_314.f0 p_1302->g_845 p_1302->g_668 p_1302->g_1070 p_1302->g_244 p_1302->g_1078 p_1302->g_784 p_1302->g_390 p_1302->g_136 p_1302->g_137 p_1302->g_314 p_1302->g_1112 p_1302->g_295 p_1302->g_97 p_1302->g_12 p_1302->g_55.f0 p_1302->g_896.f0 p_1302->g_389 p_1302->g_249 p_1302->g_448 p_1302->g_407 p_1302->g_1147 p_1302->g_859
 * writes: p_1302->g_7 p_1302->g_10 p_1302->g_13 p_1302->g_314 p_1302->g_211 p_1302->g_249 p_1302->g_17 p_1302->g_317 p_1302->g_244 p_1302->g_1078 p_1302->g_55.f0 p_1302->g_55.f2 p_1302->g_248 p_1302->g_48 p_1302->g_448 p_1302->g_1147
 */
uint32_t  func_1(struct S1 * p_1302)
{ /* block id: 4 */
    uint8_t l_4 = 0x61L;
    int32_t *l_6[1][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint16_t l_1088 = 0x251BL;
    struct S0 *l_1140 = &p_1302->g_55;
    int16_t *l_1173 = (void*)0;
    uint32_t l_1174 = 6UL;
    int64_t l_1227 = 1L;
    int64_t ****l_1278 = (void*)0;
    uint32_t l_1300 = 8UL;
    int i, j;
    if ((p_1302->g_7 = (safe_sub_func_uint64_t_u_u((l_4 , p_1302->g_5[0][1]), l_4))))
    { /* block id: 6 */
        uint32_t l_1022 = 0UL;
        int32_t l_1024 = 0x2CF2324BL;
        uint16_t *l_1031 = (void*)0;
        uint16_t **l_1030 = &l_1031;
        int32_t l_1044 = (-1L);
        struct S0 l_1045 = {0L,0L,0x577A380C60C57F37L};
        uint64_t l_1066 = 0x54C534CA6452F52BL;
        uint32_t ***l_1079 = (void*)0;
        struct S0 **l_1086 = (void*)0;
        uint64_t l_1089 = 0x8D56B8A99AAC3EABL;
        int64_t l_1127 = 0L;
        for (p_1302->g_7 = (-12); (p_1302->g_7 < 3); p_1302->g_7 = safe_add_func_uint16_t_u_u(p_1302->g_7, 3))
        { /* block id: 9 */
            uint32_t *l_1020[6][3] = {{&p_1302->g_93,&p_1302->g_93,&p_1302->g_93},{&p_1302->g_93,&p_1302->g_93,&p_1302->g_93},{&p_1302->g_93,&p_1302->g_93,&p_1302->g_93},{&p_1302->g_93,&p_1302->g_93,&p_1302->g_93},{&p_1302->g_93,&p_1302->g_93,&p_1302->g_93},{&p_1302->g_93,&p_1302->g_93,&p_1302->g_93}};
            int32_t l_1023[10] = {(-5L),0L,0x76C7AEE5L,0L,(-5L),(-5L),0L,0x76C7AEE5L,0L,(-5L)};
            int32_t l_1060 = (-1L);
            int64_t l_1061 = 0x1CE7AE955922F1A6L;
            uint16_t l_1063 = 0x3275L;
            int32_t l_1064[1];
            uint64_t l_1065 = 0x9D86B76777D26C3BL;
            uint32_t *l_1125 = &l_1022;
            uint32_t **l_1124 = &l_1125;
            int i, j;
            for (i = 0; i < 1; i++)
                l_1064[i] = 0x06825AACL;
            for (l_4 = 0; (l_4 <= 0); l_4 += 1)
            { /* block id: 12 */
                volatile struct S0 *l_11 = &p_1302->g_10;
                int8_t l_1028 = 0x18L;
                (*l_11) = p_1302->g_10;
                for (p_1302->g_13 = 0; (p_1302->g_13 <= 0); p_1302->g_13 += 1)
                { /* block id: 16 */
                    uint16_t l_1029[8] = {65533UL,65533UL,65533UL,65533UL,65533UL,65533UL,65533UL,65533UL};
                    int i, j;
                    (1 + 1);
                }
            }
            (**p_1302->g_484) = l_1045;
            for (p_1302->g_211 = 26; (p_1302->g_211 == 59); p_1302->g_211++)
            { /* block id: 576 */
                int32_t *l_1057 = &p_1302->g_48;
                int64_t *l_1062 = &p_1302->g_17;
                uint32_t **l_1101 = &l_1020[1][0];
                uint8_t l_1123 = 0x1EL;
                uint32_t l_1126[4][4] = {{0x6AB4F44FL,4294967291UL,4294967291UL,0x6AB4F44FL},{0x6AB4F44FL,4294967291UL,4294967291UL,0x6AB4F44FL},{0x6AB4F44FL,4294967291UL,4294967291UL,0x6AB4F44FL},{0x6AB4F44FL,4294967291UL,4294967291UL,0x6AB4F44FL}};
                int i, j;
                if (((*p_1302->g_317) = 0x24AC3DE3L))
                { /* block id: 578 */
                    uint16_t l_1048 = 1UL;
                    l_1048--;
                }
                else
                { /* block id: 580 */
                    if ((*p_1302->g_915))
                        break;
                }
                if (((safe_mul_func_int16_t_s_s(l_1022, (safe_div_func_int64_t_s_s((&l_1024 != l_1057), (*p_1302->g_143))))) ^ (18446744073709551615UL == ((((((*p_1302->g_270) = l_1023[2]) >= ((safe_lshift_func_int8_t_s_s(((*l_1057) & (l_1064[0] = (((*l_1062) = (1UL <= ((l_1060 = (l_6[0][8] != l_1020[5][1])) , l_1061))) > l_1063))), 3)) == 0x24L)) | 0xBAL) || 0x7EL) && l_1065))))
                { /* block id: 587 */
                    int8_t ***l_1076 = &p_1302->g_390;
                    (**p_1302->g_945) ^= ((*l_1057) < l_1066);
                    for (l_1066 = 0; (l_1066 == 21); l_1066 = safe_add_func_uint64_t_u_u(l_1066, 4))
                    { /* block id: 591 */
                        uint32_t l_1069 = 4294967293UL;
                        return l_1069;
                    }
                    (*p_1302->g_1070) = (*p_1302->g_845);
                    for (p_1302->g_244 = 0; (p_1302->g_244 != 24); p_1302->g_244 = safe_add_func_int16_t_s_s(p_1302->g_244, 7))
                    { /* block id: 597 */
                        int32_t *l_1077 = &p_1302->g_1078[1];
                        uint32_t ***l_1081 = (void*)0;
                        uint32_t ****l_1080 = &l_1081;
                        int32_t l_1087[6][8] = {{3L,0x25EC8348L,0x25EC8348L,3L,0x0BCA2B9FL,0x64541169L,0x64541169L,0x0BCA2B9FL},{3L,0x25EC8348L,0x25EC8348L,3L,0x0BCA2B9FL,0x64541169L,0x64541169L,0x0BCA2B9FL},{3L,0x25EC8348L,0x25EC8348L,3L,0x0BCA2B9FL,0x64541169L,0x64541169L,0x0BCA2B9FL},{3L,0x25EC8348L,0x25EC8348L,3L,0x0BCA2B9FL,0x64541169L,0x64541169L,0x0BCA2B9FL},{3L,0x25EC8348L,0x25EC8348L,3L,0x0BCA2B9FL,0x64541169L,0x64541169L,0x0BCA2B9FL},{3L,0x25EC8348L,0x25EC8348L,3L,0x0BCA2B9FL,0x64541169L,0x64541169L,0x0BCA2B9FL}};
                        int i, j;
                        (*p_1302->g_668) = (safe_rshift_func_int16_t_s_s(0x2D13L, (((((*l_1077) ^= ((safe_unary_minus_func_int64_t_s(((FAKE_DIVERGE(p_1302->global_1_offset, get_global_id(1), 10) , l_1020[5][1]) == &p_1302->g_257[1][3][2]))) > ((void*)0 == l_1076))) , l_1079) != ((*l_1080) = l_1079)) , (((((((((safe_sub_func_uint8_t_u_u((p_1302->g_784[0][1][2] > (&p_1302->g_313 == l_1086)), l_1087[3][0])) || l_1088) & 0UL) >= (**p_1302->g_390)) ^ 0x4433576EF724A8AAL) , (-1L)) != (*l_1057)) > FAKE_DIVERGE(p_1302->local_2_offset, get_local_id(2), 10)) || 0L))));
                    }
                }
                else
                { /* block id: 602 */
                    (*p_1302->g_317) |= l_1064[0];
                    if (l_1089)
                        continue;
                    (**p_1302->g_484) = (**p_1302->g_484);
                }
                for (l_1063 = (-19); (l_1063 == 31); l_1063 = safe_add_func_int32_t_s_s(l_1063, 7))
                { /* block id: 609 */
                    for (p_1302->g_55.f2 = (-2); (p_1302->g_55.f2 < (-11)); --p_1302->g_55.f2)
                    { /* block id: 612 */
                        int8_t l_1098 = 0x18L;
                        uint32_t *l_1102 = (void*)0;
                        uint32_t *l_1103 = &p_1302->g_257[5][5][1];
                        int32_t ***l_1108[4];
                        int16_t *l_1119[5];
                        int i;
                        for (i = 0; i < 4; i++)
                            l_1108[i] = &p_1302->g_1106;
                        for (i = 0; i < 5; i++)
                            l_1119[i] = (void*)0;
                        (*p_1302->g_1112) = l_6[0][5];
                        (*l_1057) = (l_1063 || (safe_rshift_func_uint8_t_u_s((safe_div_func_int64_t_s_s(((+(~(((l_1126[3][3] = (l_1024 , (255UL || ((FAKE_DIVERGE(p_1302->global_2_offset, get_global_id(2), 10) & ((safe_lshift_func_int16_t_s_s((p_1302->g_248[1][0] = (((void*)0 != (*p_1302->g_295)) | (p_1302->g_12 <= (&p_1302->g_5[0][2] == ((*l_1030) = &l_1063))))), 6)) || FAKE_DIVERGE(p_1302->group_1_offset, get_group_id(1), 10))) || (((safe_sub_func_int8_t_s_s((safe_unary_minus_func_int32_t_s((p_1302->g_784[0][1][2] ^ l_1123))), 0xC8L)) , l_1124) == (void*)0))))) | GROUP_DIVERGE(0, 1)) , 0xC70F8495265D0B66L))) && 0UL), l_1127)), l_1060)));
                        if ((*p_1302->g_915))
                            continue;
                    }
                    l_1064[0] &= 0L;
                    (*l_1057) ^= (*p_1302->g_668);
                }
                return (*l_1057);
            }
        }
        (*p_1302->g_668) = 0L;
        return l_1066;
    }
    else
    { /* block id: 630 */
        uint8_t l_1130 = 1UL;
        uint16_t l_1133 = 0UL;
        int16_t *l_1141 = &p_1302->g_248[6][2];
        int16_t *l_1146[5][5] = {{&p_1302->g_448,&p_1302->g_448,&p_1302->g_448,&p_1302->g_448,&p_1302->g_448},{&p_1302->g_448,&p_1302->g_448,&p_1302->g_448,&p_1302->g_448,&p_1302->g_448},{&p_1302->g_448,&p_1302->g_448,&p_1302->g_448,&p_1302->g_448,&p_1302->g_448},{&p_1302->g_448,&p_1302->g_448,&p_1302->g_448,&p_1302->g_448,&p_1302->g_448},{&p_1302->g_448,&p_1302->g_448,&p_1302->g_448,&p_1302->g_448,&p_1302->g_448}};
        uint8_t l_1148 = 0x19L;
        int32_t l_1196 = (-3L);
        uint32_t *l_1221 = (void*)0;
        uint32_t **l_1220 = &l_1221;
        uint32_t ***l_1219 = &l_1220;
        int64_t l_1273 = 8L;
        int64_t ***l_1277[7];
        int64_t ****l_1276 = &l_1277[1];
        uint8_t l_1299[6] = {9UL,9UL,9UL,9UL,9UL,9UL};
        int i, j;
        for (i = 0; i < 7; i++)
            l_1277[i] = &p_1302->g_269[0][2][2];
        if (((*p_1302->g_317) |= (safe_add_func_int8_t_s_s(l_1130, (3UL == ((p_1302->g_12 , (((p_1302->g_1147 |= (safe_mul_func_uint8_t_u_u(l_1133, (safe_add_func_int8_t_s_s((~((+(safe_add_func_int16_t_s_s((p_1302->g_896.f0 >= (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1302->global_0_offset, get_global_id(0), 10), (!0xD608L)))), (+(p_1302->g_448 |= (((*l_1141) = (FAKE_DIVERGE(p_1302->group_1_offset, get_group_id(1), 10) != ((*p_1302->g_668) |= (l_1140 == (*p_1302->g_484))))) , (((*p_1302->g_270) = ((safe_mul_func_int8_t_s_s((safe_mod_func_uint8_t_u_u(0UL, (***p_1302->g_389))), 0UL)) < (*p_1302->g_270))) != l_1133))))))) <= p_1302->g_407)), (**p_1302->g_390)))))) < l_1133) && l_1148)) >= l_1148))))))
        { /* block id: 637 */
            uint64_t l_1175 = 18446744073709551615UL;
            int32_t l_1239[7][10][3] = {{{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L}},{{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L}},{{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L}},{{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L}},{{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L}},{{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L}},{{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L},{(-4L),0L,0L}}};
            struct S0 *l_1240 = (void*)0;
            uint32_t ***l_1249 = &l_1220;
            int i, j, k;
            (1 + 1);
        }
        else
        { /* block id: 730 */
            uint16_t l_1301 = 0UL;
            return l_1301;
        }
    }
    return p_1302->g_859;
}


/* ------------------------------------------ */
/* 
 * reads : p_1302->g_22 p_1302->g_10.f1 p_1302->g_51 p_1302->g_61 p_1302->g_13 p_1302->g_55.f2 p_1302->g_93 p_1302->g_5 p_1302->g_55.f0 p_1302->g_55.f1 p_1302->g_97 p_1302->g_136 p_1302->g_17 p_1302->g_142 p_1302->g_137 p_1302->g_207 p_1302->g_211 p_1302->g_55 p_1302->g_48 p_1302->g_250 p_1302->g_257 p_1302->g_248 p_1302->g_269 p_1302->g_276 p_1302->g_7 p_1302->g_295 p_1302->g_297 p_1302->g_272 p_1302->g_243 p_1302->g_270 p_1302->g_249 p_1302->g_210 p_1302->g_317 p_1302->g_314.f0 p_1302->g_314.f1 p_1302->g_389 p_1302->g_314.f2 p_1302->g_313 p_1302->g_314 p_1302->g_256 p_1302->g_407 p_1302->g_373 p_1302->g_390 p_1302->g_405 p_1302->g_448 p_1302->g_244 p_1302->g_610 p_1302->g_668 p_1302->g_693 p_1302->g_784 p_1302->g_804 p_1302->g_484 p_1302->g_843 p_1302->g_845 p_1302->g_846 p_1302->g_859
 * writes: p_1302->g_22 p_1302->g_51 p_1302->g_61 p_1302->g_55.f2 p_1302->g_93 p_1302->g_97 p_1302->g_48 p_1302->g_55.f0 p_1302->g_55.f1 p_1302->g_17 p_1302->g_5 p_1302->g_142 p_1302->g_136 p_1302->g_207 p_1302->g_211 p_1302->g_250 p_1302->g_257 p_1302->g_272 p_1302->g_276 p_1302->g_248 p_1302->g_297 p_1302->g_313 p_1302->g_317 p_1302->g_373 p_1302->g_314.f0 p_1302->g_389 p_1302->g_407 p_1302->g_137 p_1302->g_484 p_1302->g_405 p_1302->g_402 p_1302->g_256 p_1302->g_244 p_1302->g_249 p_1302->g_610 p_1302->g_448 p_1302->g_243 p_1302->g_314.f2 p_1302->g_668 p_1302->g_784 p_1302->g_210 p_1302->g_55 p_1302->g_314 p_1302->g_859
 */
uint32_t  func_14(int8_t  p_15, struct S1 * p_1302)
{ /* block id: 18 */
    int32_t l_16 = (-1L);
    int32_t l_18 = 0x65F4B3F4L;
    int32_t *l_19 = &l_16;
    int32_t *l_20 = &l_16;
    int32_t *l_21[7] = {&p_1302->g_13,(void*)0,&p_1302->g_13,&p_1302->g_13,(void*)0,&p_1302->g_13,&p_1302->g_13};
    struct S0 *l_56 = &p_1302->g_55;
    int32_t l_59 = 0x589F82A4L;
    uint64_t *l_60 = &p_1302->g_61;
    uint32_t l_62[3];
    int64_t *l_63 = &p_1302->g_55.f2;
    int16_t l_764 = (-1L);
    int32_t l_850 = 0x0FED4166L;
    int32_t l_873[10][7][3] = {{{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)}},{{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)}},{{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)}},{{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)}},{{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)}},{{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)}},{{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)}},{{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)}},{{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)}},{{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)},{0x7F336179L,(-1L),(-1L)}}};
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_62[i] = 3UL;
    --p_1302->g_22;
    (*p_1302->g_846) = ((*l_56) = func_25(((safe_lshift_func_uint16_t_u_s(((safe_add_func_int32_t_s_s(p_15, ((*l_20) = ((((~(func_34(p_1302->g_10.f1, p_15, func_40(func_45(p_15, p_1302), l_56, (((l_56 != (((*l_63) = ((((*l_60) ^= l_59) & ((l_62[2] || 255UL) >= p_15)) <= 0x35L)) , (void*)0)) , p_1302->g_13) >= FAKE_DIVERGE(p_1302->group_0_offset, get_group_id(0), 10)), l_56, p_1302), p_15, p_15, p_1302) ^ p_15)) > (*l_19)) || l_764) != p_15)))) <= p_1302->g_13), p_1302->g_693[0])) , &p_1302->g_48), p_15, &l_18, p_15, p_1302));
    for (p_1302->g_55.f0 = (-27); (p_1302->g_55.f0 > 23); ++p_1302->g_55.f0)
    { /* block id: 468 */
        int8_t l_849 = 0x2CL;
        int32_t l_851 = 1L;
        int32_t l_852 = 0x11B0B52CL;
        int32_t l_853 = 3L;
        int32_t l_854 = 0x205CCA21L;
        int32_t l_856 = (-9L);
        int32_t l_857[2][10] = {{0x12EAA0F5L,(-1L),0x1CDAC327L,3L,(-1L),3L,0x1CDAC327L,(-1L),0x12EAA0F5L,0x12EAA0F5L},{0x12EAA0F5L,(-1L),0x1CDAC327L,3L,(-1L),3L,0x1CDAC327L,(-1L),0x12EAA0F5L,0x12EAA0F5L}};
        int32_t l_888 = 0x1737747DL;
        int16_t *l_998 = &p_1302->g_248[2][1];
        int i, j;
        --p_1302->g_859;
    }
    return p_1302->g_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_1302->g_784 p_1302->g_405 p_1302->g_668 p_1302->g_243 p_1302->g_48 p_1302->g_244 p_1302->g_804 p_1302->g_270 p_1302->g_249 p_1302->g_55.f0 p_1302->g_248 p_1302->g_314.f0 p_1302->g_257 p_1302->g_297 p_1302->g_314.f2 p_1302->g_295 p_1302->g_97 p_1302->g_17 p_1302->g_484 p_1302->g_313 p_1302->g_314 p_1302->g_55 p_1302->g_250 p_1302->g_843 p_1302->g_845
 * writes: p_1302->g_668 p_1302->g_784 p_1302->g_210 p_1302->g_244 p_1302->g_407 p_1302->g_243 p_1302->g_297 p_1302->g_256 p_1302->g_314.f0 p_1302->g_249 p_1302->g_250 p_1302->g_48
 */
struct S0  func_25(int32_t * p_26, int8_t  p_27, int32_t * p_28, uint64_t  p_29, struct S1 * p_1302)
{ /* block id: 405 */
    uint16_t l_765 = 1UL;
    int64_t *l_776 = &p_1302->g_17;
    int32_t *l_777 = &p_1302->g_405;
    int32_t *l_779 = &p_1302->g_297;
    int32_t *l_780 = &p_1302->g_48;
    int32_t *l_781 = &p_1302->g_297;
    int32_t *l_782 = &p_1302->g_48;
    int32_t *l_783[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t *l_790 = &p_1302->g_210;
    uint64_t ***l_793 = &p_1302->g_610;
    uint64_t ****l_792 = &l_793;
    uint64_t *****l_791 = &l_792;
    struct S0 l_828 = {-6L,-10L,0L};
    int i;
    --l_765;
    p_1302->g_668 = &p_1302->g_243;
    if (l_765)
        goto lbl_787;
lbl_787:
    p_1302->g_784[0][1][2]++;
    if ((safe_mod_func_uint32_t_u_u((((((*l_790) = (*l_777)) , (void*)0) == ((*l_791) = (void*)0)) <= ((!p_29) , FAKE_DIVERGE(p_1302->global_1_offset, get_global_id(1), 10))), (safe_unary_minus_func_uint8_t_u(((*p_1302->g_668) || (*p_26)))))))
    { /* block id: 412 */
        uint32_t l_811 = 4294967295UL;
        struct S0 l_817 = {0x44C69A45L,-6L,1L};
        int32_t **l_844 = (void*)0;
        for (p_1302->g_244 = (-24); (p_1302->g_244 > 5); ++p_1302->g_244)
        { /* block id: 415 */
            uint8_t l_801 = 255UL;
            int32_t l_810 = 0x03C98305L;
            struct S0 l_816 = {0x36A0937FL,0x17L,0x7AF126B85C8864BDL};
            int64_t ***l_837[1];
            uint32_t l_841 = 0xCFA368EDL;
            int i;
            for (i = 0; i < 1; i++)
                l_837[i] = &p_1302->g_269[2][0][5];
            for (p_1302->g_407 = 0; (p_1302->g_407 == 10); p_1302->g_407 = safe_add_func_uint32_t_u_u(p_1302->g_407, 7))
            { /* block id: 418 */
                int16_t l_799 = 0x27C7L;
                struct S0 l_800 = {0x28C9D214L,0x7FL,-1L};
                if (l_799)
                    break;
                return l_800;
            }
            if (l_801)
                continue;
            (*l_781) = ((safe_add_func_uint8_t_u_u(((p_1302->g_804 >= 0x315CL) == 0x58L), p_27)) <= (safe_mod_func_uint64_t_u_u((((*p_28) |= ((*p_1302->g_668) = ((*p_1302->g_668) | (p_27 & 0x5015051709FC0CE2L)))) != 0x38651308L), ((((((((*p_26) ^ l_801) <= 4UL) == (*p_1302->g_270)) < (*l_782)) != 0x0A82L) , p_1302->g_55.f0) & p_1302->g_248[7][0]))));
            for (p_1302->g_256 = (-22); (p_1302->g_256 <= (-7)); p_1302->g_256++)
            { /* block id: 428 */
                int32_t **l_809 = &l_783[2];
                int64_t ***l_839 = (void*)0;
                struct S0 l_842 = {-1L,0x04L,6L};
                (*l_809) = (void*)0;
                ++l_811;
                for (l_811 = 0; (l_811 <= 35); l_811 = safe_add_func_int16_t_s_s(l_811, 8))
                { /* block id: 433 */
                    uint8_t l_831 = 248UL;
                    int64_t ****l_838 = &l_837[0];
                    uint64_t *l_840 = &p_1302->g_694;
                    for (p_1302->g_314.f0 = 3; (p_1302->g_314.f0 >= 0); p_1302->g_314.f0 -= 1)
                    { /* block id: 436 */
                        struct S0 *l_832 = &l_816;
                        int i, j, k;
                        l_817 = l_816;
                        (*l_779) ^= p_1302->g_257[(p_1302->g_314.f0 + 3)][p_1302->g_314.f0][p_1302->g_314.f0];
                        l_831 = (+(((safe_add_func_uint64_t_u_u((l_817.f1 < (safe_mod_func_int64_t_s_s((-4L), ((((*p_1302->g_270) ^= (safe_mul_func_uint8_t_u_u((((safe_add_func_int16_t_s_s((((0x536CL & p_27) && ((((*p_26) == ((((l_828 , l_811) == ((safe_sub_func_uint8_t_u_u(p_27, (p_27 == l_810))) >= 4294967295UL)) & p_29) ^ 0xBF1D7CAFL)) | GROUP_DIVERGE(1, 1)) < l_817.f1)) ^ p_27), (-1L))) , 18446744073709551615UL) & 9UL), p_1302->g_314.f2))) & (**p_1302->g_295)) , 5L)))), 1L)) == 0L) > GROUP_DIVERGE(2, 1)));
                        (*l_832) = l_816;
                    }
                    (*l_809) = &p_1302->g_297;
                    (*l_779) |= 0x68DBA17DL;
                    if ((safe_lshift_func_uint16_t_u_u((l_816.f2 , p_27), (safe_div_func_int32_t_s_s((((*l_838) = l_837[0]) != ((**p_1302->g_484) , (p_1302->g_249 , (l_831 , l_839)))), ((((void*)0 != l_840) , 1L) ^ p_1302->g_250[1][1]))))))
                    { /* block id: 446 */
                        if (l_841)
                            break;
                        (*p_1302->g_668) = 0x12CA4E31L;
                        return l_842;
                    }
                    else
                    { /* block id: 450 */
                        if ((*p_1302->g_668))
                            break;
                        (*l_781) |= p_1302->g_843[4][2];
                    }
                }
            }
        }
        l_779 = l_781;
        (*p_1302->g_845) = p_28;
    }
    else
    { /* block id: 459 */
        for (l_828.f2 = 0; l_828.f2 < 3; l_828.f2 += 1)
        {
            for (p_1302->g_314.f0 = 0; p_1302->g_314.f0 < 2; p_1302->g_314.f0 += 1)
            {
                p_1302->g_250[l_828.f2][p_1302->g_314.f0] = 0xB3B6L;
            }
        }
        (*l_782) ^= (0x904AL ^ (0x2150CC8DL == 0x83958F30L));
    }
    return (**p_1302->g_484);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_34(uint8_t  p_35, int64_t  p_36, int32_t * p_37, uint32_t  p_38, int32_t  p_39, struct S1 * p_1302)
{ /* block id: 402 */
    return p_35;
}


/* ------------------------------------------ */
/* 
 * reads : p_1302->g_55.f2 p_1302->g_93 p_1302->g_51 p_1302->g_5 p_1302->g_55.f0 p_1302->g_55.f1 p_1302->g_97 p_1302->g_61 p_1302->g_136 p_1302->g_17 p_1302->g_142 p_1302->g_137 p_1302->g_13 p_1302->g_207 p_1302->g_211 p_1302->g_55 p_1302->g_48 p_1302->g_250 p_1302->g_257 p_1302->g_248 p_1302->g_269 p_1302->g_276 p_1302->g_7 p_1302->g_295 p_1302->g_297 p_1302->g_272 p_1302->g_243 p_1302->g_270 p_1302->g_249 p_1302->g_210 p_1302->g_317 p_1302->g_314.f0 p_1302->g_314.f1 p_1302->g_389 p_1302->g_314.f2 p_1302->g_313 p_1302->g_314 p_1302->g_256 p_1302->g_407 p_1302->g_373 p_1302->g_390 p_1302->g_405 p_1302->g_448 p_1302->g_244 p_1302->g_610 p_1302->g_668
 * writes: p_1302->g_93 p_1302->g_97 p_1302->g_48 p_1302->g_51 p_1302->g_55.f0 p_1302->g_55.f1 p_1302->g_17 p_1302->g_5 p_1302->g_142 p_1302->g_61 p_1302->g_136 p_1302->g_207 p_1302->g_211 p_1302->g_250 p_1302->g_257 p_1302->g_272 p_1302->g_276 p_1302->g_248 p_1302->g_297 p_1302->g_313 p_1302->g_317 p_1302->g_373 p_1302->g_314.f0 p_1302->g_389 p_1302->g_407 p_1302->g_137 p_1302->g_484 p_1302->g_405 p_1302->g_402 p_1302->g_256 p_1302->g_244 p_1302->g_249 p_1302->g_610 p_1302->g_448 p_1302->g_243 p_1302->g_314.f2 p_1302->g_668
 */
int32_t * func_40(struct S0 * p_41, struct S0 * p_42, int64_t  p_43, struct S0 * p_44, struct S1 * p_1302)
{ /* block id: 25 */
    int8_t *l_75 = (void*)0;
    int8_t *l_76[7] = {(void*)0,&p_1302->g_55.f1,(void*)0,(void*)0,&p_1302->g_55.f1,(void*)0,(void*)0};
    uint8_t l_77 = 0UL;
    int32_t l_78 = 0x07F17E9BL;
    int64_t *l_90 = &p_1302->g_17;
    int32_t l_91 = 0x733C7506L;
    uint32_t *l_92 = &p_1302->g_93;
    uint64_t **l_96 = (void*)0;
    int32_t *l_100 = &p_1302->g_48;
    uint8_t *l_271 = &p_1302->g_272;
    int i;
    l_91 |= func_64(func_68((safe_mul_func_int16_t_s_s((safe_mul_func_int8_t_s_s((l_77 = p_1302->g_55.f2), p_43)), l_78)), func_79((((((*l_271) = func_85(func_45(((*l_100) = (((safe_rshift_func_uint8_t_u_u(1UL, (((&p_1302->g_17 != l_90) , ((((*l_92)++) , &p_1302->g_61) != (p_1302->g_97 = l_90))) != ((safe_mul_func_uint16_t_u_u((255UL >= p_1302->g_55.f2), p_1302->g_51[6])) <= (-4L))))) <= p_1302->g_5[0][1]) && 0x748DL)), p_1302), p_43, p_1302)) >= p_1302->g_13) | (-4L)) , 0x4DCFF7C2L), l_90, &l_78, p_1302->g_137[3][0][0], p_43, p_1302), p_1302), p_43, p_1302->g_55.f2, p_1302);
    return &p_1302->g_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_1302->g_51
 * writes: p_1302->g_51
 */
struct S0 * func_45(int32_t  p_46, struct S1 * p_1302)
{ /* block id: 20 */
    int32_t *l_47 = &p_1302->g_48;
    int32_t *l_49 = &p_1302->g_48;
    int32_t *l_50[7];
    struct S0 *l_54 = &p_1302->g_55;
    int i;
    for (i = 0; i < 7; i++)
        l_50[i] = &p_1302->g_48;
    p_1302->g_51[6]++;
    return l_54;
}


/* ------------------------------------------ */
/* 
 * reads : p_1302->g_55.f0 p_1302->g_314.f2 p_1302->g_243 p_1302->g_407 p_1302->g_297 p_1302->g_97 p_1302->g_17 p_1302->g_405 p_1302->g_256
 * writes: p_1302->g_55.f0 p_1302->g_314.f2 p_1302->g_243 p_1302->g_407 p_1302->g_448 p_1302->g_137 p_1302->g_249 p_1302->g_405 p_1302->g_256
 */
int32_t  func_64(int64_t * p_65, int8_t  p_66, int32_t  p_67, struct S1 * p_1302)
{ /* block id: 371 */
    uint8_t l_756[10][10][2] = {{{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL}},{{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL}},{{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL}},{{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL}},{{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL}},{{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL}},{{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL}},{{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL}},{{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL}},{{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL},{0x25L,1UL}}};
    uint32_t l_758[8] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
    int32_t l_763[6][10] = {{0L,0L,(-1L),5L,0x1E207EEDL,0x5545C334L,(-1L),(-1L),0L,0x44165575L},{0L,0L,(-1L),5L,0x1E207EEDL,0x5545C334L,(-1L),(-1L),0L,0x44165575L},{0L,0L,(-1L),5L,0x1E207EEDL,0x5545C334L,(-1L),(-1L),0L,0x44165575L},{0L,0L,(-1L),5L,0x1E207EEDL,0x5545C334L,(-1L),(-1L),0L,0x44165575L},{0L,0L,(-1L),5L,0x1E207EEDL,0x5545C334L,(-1L),(-1L),0L,0x44165575L},{0L,0L,(-1L),5L,0x1E207EEDL,0x5545C334L,(-1L),(-1L),0L,0x44165575L}};
    int i, j, k;
    for (p_1302->g_55.f0 = 0; (p_1302->g_55.f0 == 24); p_1302->g_55.f0++)
    { /* block id: 374 */
        uint8_t l_730 = 255UL;
        uint32_t **l_745 = (void*)0;
        uint32_t ***l_744 = &l_745;
        int64_t ***l_760 = &p_1302->g_269[0][0][6];
        for (p_1302->g_314.f2 = 0; (p_1302->g_314.f2 <= 0); p_1302->g_314.f2 += 1)
        { /* block id: 377 */
            int32_t *l_727 = (void*)0;
            int32_t *l_728 = (void*)0;
            int32_t *l_729 = &p_1302->g_243;
            int64_t ***l_759 = (void*)0;
            (*l_729) ^= (-6L);
            l_730--;
            for (p_1302->g_407 = 0; (p_1302->g_407 <= 0); p_1302->g_407 += 1)
            { /* block id: 382 */
                int32_t l_735 = (-9L);
                uint32_t ****l_746 = &l_744;
                uint32_t ***l_748 = &l_745;
                uint32_t ****l_747 = &l_748;
                int16_t *l_757 = &p_1302->g_448;
                int i, j, k;
                (*l_729) ^= p_67;
                p_1302->g_405 |= ((safe_div_func_uint16_t_u_u((0x13873AA4B3585F33L | ((*p_65) = (l_735 , (safe_lshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_s((-3L), ((((safe_rshift_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((((*l_746) = l_744) != ((*l_747) = &l_745)), 6)), (p_1302->g_137[(p_1302->g_314.f2 + 2)][p_1302->g_314.f2][p_1302->g_314.f2] = ((safe_unary_minus_func_int16_t_s((((((*l_757) = (((~0x38DD27C2L) , (p_66 <= ((safe_mod_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u(p_1302->g_297, l_756[6][6][0])), p_66)) | (*p_1302->g_97)))) < 0x0188237DL)) <= l_735) >= p_66) | 0UL))) , l_758[6])))) , 0x0FL) , l_759) == l_760))), 3))))), 0x57B6L)) , l_730);
                for (p_1302->g_256 = (-3); (p_1302->g_256 <= 12); p_1302->g_256 = safe_add_func_uint32_t_u_u(p_1302->g_256, 6))
                { /* block id: 392 */
                    if (l_763[4][3])
                        break;
                    return l_763[4][2];
                }
            }
        }
    }
    return l_758[7];
}


/* ------------------------------------------ */
/* 
 * reads : p_1302->g_276 p_1302->g_270 p_1302->g_668 p_1302->g_405 p_1302->g_55.f0
 * writes: p_1302->g_276 p_1302->g_249 p_1302->g_405 p_1302->g_55.f0 p_1302->g_668
 */
int64_t * func_68(int32_t  p_69, int32_t * p_70, struct S1 * p_1302)
{ /* block id: 354 */
    uint64_t ***l_708 = &p_1302->g_610;
    uint64_t ***l_709 = (void*)0;
    int32_t l_720 = (-10L);
    int16_t l_721[5];
    int32_t **l_723 = &p_1302->g_668;
    int64_t *l_724 = &p_1302->g_249;
    int i;
    for (i = 0; i < 5; i++)
        l_721[i] = 0L;
    for (p_1302->g_276 = 0; (p_1302->g_276 != 32); ++p_1302->g_276)
    { /* block id: 357 */
        int64_t *l_705 = &p_1302->g_55.f2;
        uint64_t ****l_710 = &l_709;
        uint64_t ***l_712[5][9] = {{&p_1302->g_610,(void*)0,&p_1302->g_610,&p_1302->g_610,(void*)0,&p_1302->g_610,&p_1302->g_610,(void*)0,&p_1302->g_610},{&p_1302->g_610,(void*)0,&p_1302->g_610,&p_1302->g_610,(void*)0,&p_1302->g_610,&p_1302->g_610,(void*)0,&p_1302->g_610},{&p_1302->g_610,(void*)0,&p_1302->g_610,&p_1302->g_610,(void*)0,&p_1302->g_610,&p_1302->g_610,(void*)0,&p_1302->g_610},{&p_1302->g_610,(void*)0,&p_1302->g_610,&p_1302->g_610,(void*)0,&p_1302->g_610,&p_1302->g_610,(void*)0,&p_1302->g_610},{&p_1302->g_610,(void*)0,&p_1302->g_610,&p_1302->g_610,(void*)0,&p_1302->g_610,&p_1302->g_610,(void*)0,&p_1302->g_610}};
        uint64_t ****l_711 = &l_712[3][8];
        int8_t l_719[9][10] = {{0x6EL,1L,(-1L),0L,1L,(-9L),0x38L,0L,0x0EL,0x38L},{0x6EL,1L,(-1L),0L,1L,(-9L),0x38L,0L,0x0EL,0x38L},{0x6EL,1L,(-1L),0L,1L,(-9L),0x38L,0L,0x0EL,0x38L},{0x6EL,1L,(-1L),0L,1L,(-9L),0x38L,0L,0x0EL,0x38L},{0x6EL,1L,(-1L),0L,1L,(-9L),0x38L,0L,0x0EL,0x38L},{0x6EL,1L,(-1L),0L,1L,(-9L),0x38L,0L,0x0EL,0x38L},{0x6EL,1L,(-1L),0L,1L,(-9L),0x38L,0L,0x0EL,0x38L},{0x6EL,1L,(-1L),0L,1L,(-9L),0x38L,0L,0x0EL,0x38L},{0x6EL,1L,(-1L),0L,1L,(-9L),0x38L,0L,0x0EL,0x38L}};
        int32_t l_722 = 0L;
        int i, j;
        (*p_1302->g_668) = (safe_rshift_func_int8_t_s_u((((l_721[1] = (((*p_1302->g_270) = (safe_add_func_uint64_t_u_u(0x2A344D9AE672E6B2L, (safe_mul_func_int8_t_s_s(((void*)0 == l_705), (safe_sub_func_uint8_t_u_u(((l_708 = &p_1302->g_610) != ((*l_711) = ((*l_710) = l_709))), 0x3EL))))))) | ((safe_rshift_func_int8_t_s_s(((safe_lshift_func_int16_t_s_u((1UL <= (safe_div_func_int32_t_s_s((p_69 , (*p_1302->g_668)), (*p_1302->g_668)))), 1)) > l_719[4][9]), p_69)) > l_720))) , FAKE_DIVERGE(p_1302->global_1_offset, get_global_id(1), 10)) | l_720), 7));
        (*p_1302->g_668) &= (p_69 > (5UL == (l_722 |= 0L)));
    }
    (*p_1302->g_668) |= (~(~(+0x2102C034L)));
    (*l_723) = &p_1302->g_405;
    (*l_723) = (void*)0;
    return l_724;
}


/* ------------------------------------------ */
/* 
 * reads : p_1302->g_276 p_1302->g_7 p_1302->g_250 p_1302->g_257 p_1302->g_93 p_1302->g_295 p_1302->g_97 p_1302->g_17 p_1302->g_297 p_1302->g_207 p_1302->g_272 p_1302->g_51 p_1302->g_243 p_1302->g_270 p_1302->g_249 p_1302->g_137 p_1302->g_211 p_1302->g_210 p_1302->g_317 p_1302->g_55.f1 p_1302->g_314.f0 p_1302->g_5 p_1302->g_314.f1 p_1302->g_389 p_1302->g_314.f2 p_1302->g_313 p_1302->g_314 p_1302->g_55 p_1302->g_256 p_1302->g_407 p_1302->g_373 p_1302->g_390 p_1302->g_136 p_1302->g_248 p_1302->g_13 p_1302->g_405 p_1302->g_448 p_1302->g_48 p_1302->g_244 p_1302->g_610
 * writes: p_1302->g_276 p_1302->g_48 p_1302->g_248 p_1302->g_297 p_1302->g_51 p_1302->g_313 p_1302->g_317 p_1302->g_17 p_1302->g_272 p_1302->g_373 p_1302->g_55.f1 p_1302->g_314.f0 p_1302->g_389 p_1302->g_407 p_1302->g_93 p_1302->g_137 p_1302->g_484 p_1302->g_405 p_1302->g_257 p_1302->g_402 p_1302->g_256 p_1302->g_244 p_1302->g_207 p_1302->g_249 p_1302->g_55.f0 p_1302->g_610 p_1302->g_448 p_1302->g_243 p_1302->g_314.f2 p_1302->g_668
 */
int32_t * func_79(int32_t  p_80, int64_t * p_81, int32_t * p_82, uint16_t  p_83, uint32_t  p_84, struct S1 * p_1302)
{ /* block id: 99 */
    uint64_t l_274 = 0xD4C7E9080B2B0D8BL;
    int32_t l_275 = 0L;
    struct S0 *l_292 = &p_1302->g_55;
    uint64_t **l_294 = &p_1302->g_97;
    int32_t l_383 = (-10L);
    int32_t l_400[4][6] = {{8L,8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L,8L}};
    uint64_t l_472[8] = {0x72235E695EDC034FL,0x72235E695EDC034FL,0x72235E695EDC034FL,0x72235E695EDC034FL,0x72235E695EDC034FL,0x72235E695EDC034FL,0x72235E695EDC034FL,0x72235E695EDC034FL};
    uint8_t *l_485 = &p_1302->g_373;
    int64_t l_492 = 0x74884F53389296F2L;
    uint32_t l_538 = 0x3DBB0F63L;
    uint8_t l_553 = 0x76L;
    int8_t **l_575 = &p_1302->g_136[5];
    uint32_t l_597 = 0x7F625805L;
    uint8_t l_644 = 255UL;
    int i, j;
    if ((*p_82))
    { /* block id: 100 */
        return &p_1302->g_7;
    }
    else
    { /* block id: 102 */
        int32_t *l_273[4][9][7] = {{{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7}},{{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7}},{{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7}},{{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7},{&p_1302->g_7,&p_1302->g_7,&p_1302->g_13,&p_1302->g_13,&p_1302->g_55.f0,&p_1302->g_7,&p_1302->g_7}}};
        int32_t l_298 = 1L;
        int32_t *l_318 = (void*)0;
        struct S0 l_331[3][8][9] = {{{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}}},{{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}}},{{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}},{{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x48ECC7EEL,0x15L,9L},{0L,0x19L,0L},{1L,5L,0x38693B98F24852E8L},{0L,0x19L,0L},{0x48ECC7EEL,0x15L,9L},{0x2E4AFD01L,8L,0x1230249B7F168B23L},{0x67EB1FFEL,0x5FL,0x3D7D847DFCE12450L},{-1L,0x79L,0L}}}};
        int16_t *l_381 = (void*)0;
        int32_t l_384 = 0x1A63ED74L;
        uint64_t **l_503 = &p_1302->g_97;
        int16_t l_527[4] = {0x72B3L,0x72B3L,0x72B3L,0x72B3L};
        int i, j, k;
        l_273[3][0][4] = &p_1302->g_7;
        if (l_274)
        { /* block id: 104 */
            int8_t **l_283 = &p_1302->g_136[5];
            int8_t ***l_284 = &l_283;
            int32_t l_291[10] = {0x52468624L,0x48E5519FL,0x23FB4920L,0x48E5519FL,0x52468624L,0x52468624L,0x48E5519FL,0x23FB4920L,0x48E5519FL,0x52468624L};
            int32_t **l_293 = &l_273[3][0][4];
            int16_t *l_296 = &p_1302->g_248[2][1];
            int8_t **l_300 = &p_1302->g_136[5];
            int8_t ***l_299 = &l_300;
            int32_t *l_301 = &p_1302->g_297;
            struct S0 **l_312[10] = {&l_292,(void*)0,&l_292,&l_292,(void*)0,&l_292,&l_292,(void*)0,&l_292,&l_292};
            int i;
            p_1302->g_276--;
            p_1302->g_48 = p_1302->g_7;
            (*l_301) = (((safe_lshift_func_int16_t_s_u((((p_1302->g_250[0][1] || ((((*l_284) = l_283) == ((*l_299) = ((((+(safe_mod_func_int64_t_s_s(((!(safe_mod_func_int8_t_s_s((-1L), ((l_298 = (p_1302->g_257[6][3][1] , (safe_sub_func_uint8_t_u_u((l_274 != ((((l_291[2] | ((((*l_296) = ((((((((l_292 != (void*)0) , ((((((*l_293) = (void*)0) == &l_275) , (void*)0) != l_294) , p_1302->g_93)) & p_84) | 0x0E91931BB2BDCB30L) || p_1302->g_250[1][1]) != 0x7EF2L) , l_294) == p_1302->g_295)) == (-3L)) <= (**p_1302->g_295))) <= p_80) | 0x64215C9AL) & p_1302->g_297)), l_275)))) , GROUP_DIVERGE(2, 1))))) , 0x08EA70E1E20A6ADBL), (*p_81)))) | p_80) < l_291[3]) , &p_1302->g_136[1]))) != p_83)) & p_1302->g_207[5][8][1]) == GROUP_DIVERGE(0, 1)), FAKE_DIVERGE(p_1302->local_0_offset, get_local_id(0), 10))) || l_274) & FAKE_DIVERGE(p_1302->local_1_offset, get_local_id(1), 10));
            (*l_301) = ((p_1302->g_207[5][8][1] , (((safe_lshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s(p_80, p_80)), (safe_mul_func_int16_t_s_s(1L, ((safe_rshift_func_int16_t_s_s((((safe_div_func_uint16_t_u_u((((*l_301) , func_45(p_1302->g_272, p_1302)) == (p_1302->g_313 = l_292)), p_1302->g_243)) , (void*)0) == &p_1302->g_314), p_80)) ^ 0x6B84C78CCBEB7C3EL))))) != (-10L)) , 0x11L)) & p_83);
        }
        else
        { /* block id: 115 */
            int32_t **l_315 = (void*)0;
            int32_t **l_316[6] = {&l_273[0][0][4],&l_273[0][0][4],&l_273[0][0][4],&l_273[0][0][4],&l_273[0][0][4],&l_273[0][0][4]};
            uint64_t **l_328[10] = {&p_1302->g_97,&p_1302->g_97,&p_1302->g_97,&p_1302->g_97,&p_1302->g_97,&p_1302->g_97,&p_1302->g_97,&p_1302->g_97,&p_1302->g_97,&p_1302->g_97};
            int i;
            p_1302->g_317 = &l_298;
            for (l_274 = 0; (l_274 <= 0); l_274 += 1)
            { /* block id: 119 */
                uint32_t l_323 = 0x9537BCFEL;
                uint8_t l_358 = 0x7CL;
                for (l_298 = 0; (l_298 >= 0); l_298 -= 1)
                { /* block id: 122 */
                    return p_82;
                }
                l_318 = &p_1302->g_297;
                for (p_83 = 0; (p_83 <= 0); p_83 += 1)
                { /* block id: 128 */
                    uint64_t l_340[10][3] = {{0xAA3A4A9C36CF7B42L,0xA6D736AA3F65DDE7L,18446744073709551615UL},{0xAA3A4A9C36CF7B42L,0xA6D736AA3F65DDE7L,18446744073709551615UL},{0xAA3A4A9C36CF7B42L,0xA6D736AA3F65DDE7L,18446744073709551615UL},{0xAA3A4A9C36CF7B42L,0xA6D736AA3F65DDE7L,18446744073709551615UL},{0xAA3A4A9C36CF7B42L,0xA6D736AA3F65DDE7L,18446744073709551615UL},{0xAA3A4A9C36CF7B42L,0xA6D736AA3F65DDE7L,18446744073709551615UL},{0xAA3A4A9C36CF7B42L,0xA6D736AA3F65DDE7L,18446744073709551615UL},{0xAA3A4A9C36CF7B42L,0xA6D736AA3F65DDE7L,18446744073709551615UL},{0xAA3A4A9C36CF7B42L,0xA6D736AA3F65DDE7L,18446744073709551615UL},{0xAA3A4A9C36CF7B42L,0xA6D736AA3F65DDE7L,18446744073709551615UL}};
                    uint8_t l_357 = 255UL;
                    uint16_t *l_359 = &p_1302->g_207[5][8][1];
                    int32_t l_360 = 0x7D1EF398L;
                    int i, j;
                    (*p_1302->g_317) = ((*p_1302->g_270) | (((*p_1302->g_97) = 0x690E307C46F60585L) < (((((((safe_sub_func_int16_t_s_s(p_1302->g_137[0][4][0], (safe_add_func_uint64_t_u_u(l_323, (-9L))))) <= p_1302->g_211) , ((p_84 == (safe_add_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), (((p_84 <= ((void*)0 == l_328[3])) < p_80) , p_84)))) == 0x0A2C6E8D11DA5C2CL)) & p_80) || p_1302->g_210) , (void*)0) == &p_1302->g_248[2][1])));
                }
            }
        }
        if (l_274)
        { /* block id: 151 */
            uint64_t *l_363 = &l_274;
            int32_t l_370 = (-1L);
            uint8_t *l_371 = &p_1302->g_272;
            uint8_t *l_372 = &p_1302->g_373;
            int8_t *l_374 = &p_1302->g_55.f1;
            int16_t *l_382 = &p_1302->g_248[2][1];
            int64_t ***l_393 = &p_1302->g_269[0][0][6];
            int32_t l_394 = (-1L);
            int32_t l_401 = 1L;
            int32_t l_404[2];
            int32_t l_430[2][1];
            int32_t *l_432 = &p_1302->g_55.f0;
            int32_t l_447 = 0x39C165C9L;
            int32_t **l_459[4][5];
            int32_t ***l_458 = &l_459[3][1];
            int i, j;
            for (i = 0; i < 2; i++)
                l_404[i] = 0x5738AFC3L;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 1; j++)
                    l_430[i][j] = 0x22823697L;
            }
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 5; j++)
                    l_459[i][j] = (void*)0;
            }
            if (((safe_add_func_uint64_t_u_u(((*l_363) &= (**p_1302->g_295)), ((((safe_sub_func_uint8_t_u_u((safe_mod_func_int16_t_s_s(((((*l_374) |= (safe_mod_func_uint8_t_u_u(((*l_371) = l_370), ((*l_372) = p_80)))) > p_83) , (safe_add_func_int32_t_s_s(((l_370 = ((*p_1302->g_317) &= (l_275 = (0UL == ((safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((((l_381 != (l_331[1][3][7] , l_382)) , (*p_82)) <= (*p_82)), p_83)), p_84)) < (*p_81)))))) | l_383), 4294967286UL))), l_384)), p_1302->g_5[0][3])) == l_383) , l_370) , (*p_1302->g_270)))) > 0x78L))
            { /* block id: 159 */
                l_275 = (p_1302->g_314.f1 , l_383);
            }
            else
            { /* block id: 161 */
                int8_t ****l_391 = (void*)0;
                int8_t ****l_392 = &p_1302->g_389;
                struct S0 l_395 = {0x7ABF0C10L,-8L,0x4FE88EC8EFD7F4A6L};
                int32_t l_396 = 0x1CEAAAEFL;
                int32_t l_397 = 0x7067BCB3L;
                int32_t l_399[1][10][4] = {{{0x2A84FFC9L,(-1L),0x2A84FFC9L,0x2A84FFC9L},{0x2A84FFC9L,(-1L),0x2A84FFC9L,0x2A84FFC9L},{0x2A84FFC9L,(-1L),0x2A84FFC9L,0x2A84FFC9L},{0x2A84FFC9L,(-1L),0x2A84FFC9L,0x2A84FFC9L},{0x2A84FFC9L,(-1L),0x2A84FFC9L,0x2A84FFC9L},{0x2A84FFC9L,(-1L),0x2A84FFC9L,0x2A84FFC9L},{0x2A84FFC9L,(-1L),0x2A84FFC9L,0x2A84FFC9L},{0x2A84FFC9L,(-1L),0x2A84FFC9L,0x2A84FFC9L},{0x2A84FFC9L,(-1L),0x2A84FFC9L,0x2A84FFC9L},{0x2A84FFC9L,(-1L),0x2A84FFC9L,0x2A84FFC9L}}};
                uint32_t l_454 = 0xEA884D46L;
                int32_t **l_457[6][8] = {{&l_273[3][0][4],&l_273[3][0][4],&p_1302->g_317,&l_318,&p_1302->g_317,&l_273[3][0][4],&l_273[3][0][4],&l_273[2][7][1]},{&l_273[3][0][4],&l_273[3][0][4],&p_1302->g_317,&l_318,&p_1302->g_317,&l_273[3][0][4],&l_273[3][0][4],&l_273[2][7][1]},{&l_273[3][0][4],&l_273[3][0][4],&p_1302->g_317,&l_318,&p_1302->g_317,&l_273[3][0][4],&l_273[3][0][4],&l_273[2][7][1]},{&l_273[3][0][4],&l_273[3][0][4],&p_1302->g_317,&l_318,&p_1302->g_317,&l_273[3][0][4],&l_273[3][0][4],&l_273[2][7][1]},{&l_273[3][0][4],&l_273[3][0][4],&p_1302->g_317,&l_318,&p_1302->g_317,&l_273[3][0][4],&l_273[3][0][4],&l_273[2][7][1]},{&l_273[3][0][4],&l_273[3][0][4],&p_1302->g_317,&l_318,&p_1302->g_317,&l_273[3][0][4],&l_273[3][0][4],&l_273[2][7][1]}};
                int i, j, k;
                if (((((((!(~((((+((safe_sub_func_uint8_t_u_u(((((*l_392) = p_1302->g_389) == &p_1302->g_390) & ((p_1302->g_314.f2 , l_393) == (void*)0)), (~p_80))) , (((*p_1302->g_313) , (((!((*l_372) = ((*l_371) |= 1UL))) >= 0UL) & (*p_81))) != 0x06F2L))) < p_1302->g_210) == p_1302->g_256) && l_394))) < 0xCDE66153L) > p_84) ^ 7L) & l_370) ^ p_80))
                { /* block id: 165 */
                    int32_t l_398 = 0L;
                    int32_t l_403 = 7L;
                    int32_t l_406 = 0x1DEC8819L;
                    l_395 = l_395;
                    p_1302->g_407++;
                }
                else
                { /* block id: 168 */
                    (*p_1302->g_317) = (safe_mul_func_uint8_t_u_u(((--(*l_371)) & l_397), ((p_1302->g_5[2][1] , (void*)0) == (void*)0)));
                }
                for (p_1302->g_373 = 12; (p_1302->g_373 > 10); p_1302->g_373--)
                { /* block id: 174 */
                    int8_t ***l_429 = (void*)0;
                    int8_t ****l_428 = &l_429;
                    int32_t l_431 = (-7L);
                    int32_t l_443 = 0L;
                    uint64_t l_449 = 2UL;
                    if (((((void*)0 == (*p_1302->g_390)) || (safe_div_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((safe_mod_func_int64_t_s_s(((((((((safe_mod_func_uint16_t_u_u(p_1302->g_5[0][2], ((*l_382) |= (0x0960L ^ 5L)))) ^ (l_331[1][3][7] , (((safe_mod_func_uint32_t_u_u((safe_div_func_uint16_t_u_u(((((*l_392) = (void*)0) == ((*l_428) = &p_1302->g_390)) || 8L), l_397)), 4294967295UL)) ^ (*p_81)) | 0x7361L))) > l_274) & l_430[0][0]) | (**p_1302->g_295)) == l_431) && 1UL) ^ l_404[1]), (*p_81))), p_80)), p_84))) , (*p_82)))
                    { /* block id: 178 */
                        uint16_t *l_442 = &p_1302->g_51[6];
                        p_82 = l_432;
                        l_399[0][8][3] &= (safe_div_func_uint32_t_u_u((p_1302->g_137[0][4][0] > ((((~(((safe_unary_minus_func_uint64_t_u((l_395 , (**p_1302->g_295)))) < (((*l_442) = (((p_83 , (p_1302->g_93 = 0UL)) , ((*p_1302->g_313) , (safe_add_func_int16_t_s_s(0x00A7L, 0x1A59L)))) & (safe_rshift_func_int16_t_s_s((!(((((safe_lshift_func_int16_t_s_u((l_381 != &p_1302->g_248[2][1]), p_83)) == p_83) && GROUP_DIVERGE(0, 1)) && 0UL) != (**p_1302->g_295))), 15)))) >= 65535UL)) , (*p_81))) , p_1302->g_249) , (*p_1302->g_317)) && p_83)), 1UL));
                        p_82 = p_82;
                        (*p_1302->g_317) = 0x35B868FDL;
                    }
                    else
                    { /* block id: 185 */
                        uint32_t l_444 = 0xE2C37ECDL;
                        l_444--;
                        if ((*p_1302->g_317))
                            continue;
                    }
                    l_449--;
                    (*p_1302->g_317) &= (p_83 != (safe_rshift_func_int8_t_s_s(((**p_1302->g_390) = (l_454 ^ (safe_div_func_uint8_t_u_u(((*p_81) > ((((((l_400[0][4] , ((p_1302->g_314.f1 != ((void*)0 != l_292)) >= ((((*l_392) = (void*)0) != ((*l_428) = (void*)0)) && l_431))) & p_1302->g_51[6]) , p_80) , p_84) < 1L) , (*p_81))), 0x61L)))), 3)));
                }
                l_432 = (l_273[0][0][4] = &p_1302->g_405);
            }
            (*l_458) = &p_82;
        }
        else
        { /* block id: 199 */
            int8_t l_473 = 0x57L;
            int16_t l_481 = 0x1596L;
            struct S0 **l_483 = &p_1302->g_313;
            uint8_t *l_486[10][2][6];
            int32_t l_490 = 0x28C5E349L;
            int32_t l_491 = 0x00C46BBEL;
            uint64_t **l_529 = (void*)0;
            uint32_t **l_530[3];
            int i, j, k;
            for (i = 0; i < 10; i++)
            {
                for (j = 0; j < 2; j++)
                {
                    for (k = 0; k < 6; k++)
                        l_486[i][j][k] = &p_1302->g_272;
                }
            }
            for (i = 0; i < 3; i++)
                l_530[i] = (void*)0;
            if (((p_1302->g_243 != ((**p_1302->g_390) = ((p_84 ^ 255UL) , (safe_add_func_uint16_t_u_u((safe_unary_minus_func_int64_t_s((safe_lshift_func_int16_t_s_u((l_400[0][4] , (safe_rshift_func_int16_t_s_u((p_84 , ((safe_rshift_func_int16_t_s_u((0L || (*p_1302->g_97)), 5)) <= (safe_unary_minus_func_int16_t_s((FAKE_DIVERGE(p_1302->global_0_offset, get_global_id(0), 10) ^ (safe_mod_func_int8_t_s_s((***p_1302->g_389), l_472[6]))))))), 0))), l_473)))), p_80))))) == 3UL))
            { /* block id: 201 */
                int64_t l_476 = 1L;
                int16_t *l_482 = &p_1302->g_248[2][1];
                int32_t **l_487 = &l_273[3][0][4];
                int16_t l_493 = 1L;
                int32_t l_494 = 0x415B7305L;
                int32_t l_495 = 0x79AB8201L;
                int32_t l_496 = 0x520063B2L;
                int32_t l_497[8] = {4L,0x164277D6L,4L,4L,0x164277D6L,4L,4L,0x164277D6L};
                uint16_t l_498 = 0x0287L;
                int i;
                (*p_1302->g_317) = (safe_sub_func_int16_t_s_s((l_476 != ((safe_add_func_int16_t_s_s(((*p_1302->g_270) == p_80), ((*l_482) |= l_481))) != (p_1302->g_272 <= (((l_481 , (((((l_483 != (p_1302->g_484 = &p_1302->g_313)) , ((((l_485 != l_486[8][0][4]) ^ 8L) && p_83) , 0x55C8L)) || p_80) & p_1302->g_13) , p_84)) || 0x31564275L) || p_80)))), p_80));
                (*l_487) = p_82;
                for (p_1302->g_297 = 8; (p_1302->g_297 != (-3)); p_1302->g_297 = safe_sub_func_int32_t_s_s(p_1302->g_297, 1))
                { /* block id: 208 */
                    p_1302->g_405 ^= (*p_1302->g_317);
                }
                l_498--;
            }
            else
            { /* block id: 212 */
                int16_t *l_506 = &l_481;
                uint32_t *l_525[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int8_t *l_526 = &p_1302->g_402;
                int32_t l_535 = 0x6F7C6BEAL;
                int32_t l_549 = 7L;
                int32_t l_550 = (-4L);
                int32_t l_551 = (-2L);
                int32_t l_552 = (-4L);
                int32_t **l_570 = &l_273[3][0][4];
                int i;
                (*p_1302->g_317) = (safe_rshift_func_uint8_t_u_s((p_1302->g_272 = ((0x36L < ((p_1302->g_373 |= ((l_503 == (void*)0) , FAKE_DIVERGE(p_1302->global_2_offset, get_global_id(2), 10))) , (((1L ^ ((safe_rshift_func_int8_t_s_u(((+((*l_506) = ((void*)0 != p_82))) , (safe_mul_func_uint8_t_u_u(((((safe_sub_func_int32_t_s_s(((safe_rshift_func_uint8_t_u_u((safe_div_func_uint8_t_u_u((safe_add_func_uint8_t_u_u(p_1302->g_272, ((*l_526) = ((***p_1302->g_389) = ((p_1302->g_257[6][3][1] = (((safe_lshift_func_uint16_t_u_s(((*p_81) == (safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_add_func_int64_t_s_s(((-6L) < (*p_82)), (*p_1302->g_97))), p_80)), 0xB0L))), p_83)) & 4L) , p_1302->g_448)) != 0x09743C3BL))))), p_83)), p_84)) , (*p_82)), l_275)) > p_1302->g_55.f1) <= l_491) && l_275), p_83))), 4)) ^ p_83)) > l_527[0]) ^ (*p_1302->g_317)))) ^ p_1302->g_48)), 3));
                if (((void*)0 != p_82))
                { /* block id: 220 */
                    uint64_t ***l_528[2];
                    uint32_t ***l_531 = &l_530[1];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_528[i] = &l_503;
                    l_529 = &p_1302->g_97;
                    (*l_531) = l_530[1];
                    for (p_1302->g_55.f1 = 0; (p_1302->g_55.f1 == (-28)); p_1302->g_55.f1--)
                    { /* block id: 225 */
                        int32_t l_534 = 0x6D7270BDL;
                        int32_t l_536 = 0x5347B035L;
                        int32_t l_537 = 0L;
                        int32_t **l_541 = &l_318;
                        l_538--;
                        (*l_541) = &p_1302->g_297;
                    }
                }
                else
                { /* block id: 229 */
                    return &p_1302->g_405;
                }
                for (p_1302->g_256 = 4; (p_1302->g_256 >= 8); p_1302->g_256++)
                { /* block id: 234 */
                    for (p_1302->g_244 = 0; (p_1302->g_244 <= 17); p_1302->g_244 = safe_add_func_uint16_t_u_u(p_1302->g_244, 5))
                    { /* block id: 237 */
                        uint8_t l_546 = 0UL;
                        if ((*p_82))
                            break;
                        l_546--;
                    }
                    l_553--;
                }
                for (l_550 = 0; (l_550 == (-1)); --l_550)
                { /* block id: 245 */
                    uint16_t *l_565 = &p_1302->g_207[0][4][1];
                    int32_t **l_569[2][10][9] = {{{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317}},{{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317},{&p_1302->g_317,&l_318,(void*)0,(void*)0,&l_273[3][0][4],(void*)0,(void*)0,&l_318,&p_1302->g_317}}};
                    int32_t ***l_568 = &l_569[1][2][6];
                    int i, j, k;
                    p_1302->g_297 ^= ((((1UL != p_84) ^ (*p_1302->g_317)) ^ (safe_sub_func_int32_t_s_s((l_490 = 0x4FC3E09FL), (safe_div_func_uint64_t_u_u(((safe_mul_func_uint16_t_u_u((safe_unary_minus_func_uint8_t_u(l_549)), ((*l_565) ^= p_1302->g_249))) <= ((p_80 ^ ((safe_div_func_uint16_t_u_u((((*l_568) = &p_1302->g_317) != (l_570 = &p_82)), p_84)) | 0xFFDCL)) , p_83)), p_83))))) <= l_535);
                }
            }
        }
        l_331[1][3][7] = (((safe_sub_func_int8_t_s_s(((-1L) > (*p_1302->g_317)), l_472[6])) && (safe_lshift_func_int8_t_s_u(((void*)0 == l_575), 2))) , l_331[0][6][7]);
    }
    for (l_275 = 0; (l_275 <= 2); l_275 += 1)
    { /* block id: 258 */
        int8_t l_594[1][1][7] = {{{1L,(-1L),1L,1L,(-1L),1L,1L}}};
        int32_t l_595 = 1L;
        int64_t *l_596[2][9] = {{(void*)0,&p_1302->g_314.f2,&p_1302->g_244,&p_1302->g_314.f2,(void*)0,(void*)0,&p_1302->g_314.f2,&p_1302->g_244,&p_1302->g_314.f2},{(void*)0,&p_1302->g_314.f2,&p_1302->g_244,&p_1302->g_314.f2,(void*)0,(void*)0,&p_1302->g_314.f2,&p_1302->g_244,&p_1302->g_314.f2}};
        uint64_t **l_608 = &p_1302->g_97;
        uint64_t ***l_609[4];
        uint8_t l_632 = 0x0BL;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_609[i] = &l_294;
        p_1302->g_55.f0 |= (l_597 = ((l_400[0][4] &= ((*p_81) = ((safe_sub_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_s(p_1302->g_405, (safe_lshift_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u((p_1302->g_244 == (4294967295UL & (((*p_1302->g_270) = (*p_81)) > (safe_div_func_int32_t_s_s((((void*)0 == l_292) ^ ((((safe_mul_func_int8_t_s_s((safe_mul_func_int16_t_s_s((((safe_mod_func_uint32_t_u_u(((GROUP_DIVERGE(1, 1) || 0x3CB670C03157A591L) ^ (((&l_492 != &l_492) && l_594[0][0][2]) && (-3L))), 0x47FC3E3AL)) != 255UL) == 0x544C3E2AL), 0L)), l_595)) ^ l_492) && (**p_1302->g_390)) , p_84)), 0xB0D63EB7L))))), l_594[0][0][2])), p_80)))) && GROUP_DIVERGE(2, 1)), (-2L))), p_1302->g_137[0][4][0])) != GROUP_DIVERGE(0, 1)))) & 0UL));
        if ((safe_sub_func_uint32_t_u_u(0x32833D95L, (((l_275 <= (safe_div_func_int32_t_s_s(((l_400[2][2] = (safe_mul_func_int16_t_s_s(((p_83++) | 1UL), (safe_add_func_int64_t_s_s(((*p_81) , (((l_608 == (p_1302->g_610 = l_608)) == l_594[0][0][2]) & l_594[0][0][5])), ((((safe_rshift_func_uint16_t_u_u((1UL && GROUP_DIVERGE(2, 1)), p_1302->g_55.f1)) | p_1302->g_297) != 0x2356L) , 0x065DD8DD1DB00F7DL)))))) < (-8L)), 0xBDA736E2L))) > p_80) >= p_1302->g_207[8][2][0]))))
        { /* block id: 267 */
            int32_t **l_613[9][5][5] = {{{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317}},{{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317}},{{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317}},{{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317}},{{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317}},{{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317}},{{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317}},{{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317}},{{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317},{&p_1302->g_317,(void*)0,(void*)0,(void*)0,&p_1302->g_317}}};
            struct S0 l_614 = {0x4FA1559EL,0x21L,-1L};
            int i, j, k;
            p_1302->g_317 = p_82;
            l_614 = (*l_292);
        }
        else
        { /* block id: 270 */
            int16_t *l_629 = &p_1302->g_448;
            uint32_t *l_630 = (void*)0;
            uint32_t l_631 = 1UL;
            int32_t l_633 = 0L;
            int32_t *l_634 = &p_1302->g_243;
            int32_t *l_635 = &l_633;
            int32_t *l_636 = &p_1302->g_314.f0;
            int32_t *l_637 = &p_1302->g_314.f0;
            int32_t *l_638 = &p_1302->g_314.f0;
            int32_t *l_639 = &l_633;
            int32_t *l_640 = &l_383;
            int32_t *l_641 = &l_633;
            int32_t *l_642 = &l_400[2][3];
            int32_t *l_643[6][10][4] = {{{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405}},{{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405}},{{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405}},{{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405}},{{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405}},{{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405},{&p_1302->g_405,&p_1302->g_7,&p_1302->g_7,&p_1302->g_405}}};
            int i, j, k;
            if (l_472[4])
                break;
            (*l_634) = (safe_mod_func_uint8_t_u_u((&p_1302->g_250[1][0] != &p_83), (l_633 |= (l_400[0][4] = (safe_lshift_func_int16_t_s_s((p_80 , ((l_631 = ((safe_div_func_int64_t_s_s((FAKE_DIVERGE(p_1302->local_0_offset, get_local_id(0), 10) && ((((safe_add_func_uint32_t_u_u(l_472[6], 0UL)) , (l_595 ^ (((-1L) > (safe_mod_func_int16_t_s_s(((*l_629) = (p_1302->g_210 <= (((safe_mul_func_int8_t_s_s((~((**l_575) = p_83)), FAKE_DIVERGE(p_1302->local_2_offset, get_local_id(2), 10))) >= FAKE_DIVERGE(p_1302->global_0_offset, get_global_id(0), 10)) ^ GROUP_DIVERGE(1, 1)))), p_1302->g_17))) , (*p_1302->g_97)))) , (*p_81)) > (**p_1302->g_610))), 1UL)) , l_594[0][0][2])) & l_632)), 1))))));
            ++l_644;
            if (p_1302->g_48)
                break;
        }
        return &p_1302->g_7;
    }
    for (p_1302->g_243 = 0; (p_1302->g_243 <= 2); p_1302->g_243 += 1)
    { /* block id: 285 */
        int32_t **l_647 = &p_1302->g_317;
        int32_t l_692 = 0x0BED9294L;
        (*l_647) = p_82;
        if ((*p_1302->g_317))
            break;
        for (p_1302->g_314.f2 = 0; (p_1302->g_314.f2 <= 2); p_1302->g_314.f2 += 1)
        { /* block id: 290 */
            uint32_t l_650 = 0UL;
            int8_t ***l_673 = &l_575;
            int32_t l_682 = 0x6C534D6AL;
            for (l_383 = 0; (l_383 <= 2); l_383 += 1)
            { /* block id: 293 */
                struct S0 *l_648[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t l_681 = 0x79CF8FADL;
                int32_t *l_688 = &l_681;
                int32_t *l_689 = &l_275;
                int32_t *l_690 = &p_1302->g_314.f0;
                int32_t *l_691[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_691[i] = &p_1302->g_55.f0;
                for (l_644 = 0; (l_644 <= 2); l_644 += 1)
                { /* block id: 296 */
                    int8_t ****l_649 = &p_1302->g_389;
                    int16_t *l_661[7][1][10] = {{{&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2]}},{{&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2]}},{{&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2]}},{{&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2]}},{{&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2]}},{{&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2]}},{{&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],(void*)0,&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2],&p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2]}}};
                    int32_t l_662 = 0x0FAC71E3L;
                    int i, j, k;
                    if ((((((l_648[9] == l_648[6]) ^ (p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2] = (((*l_649) = &l_575) == (l_650 , &p_1302->g_390)))) | FAKE_DIVERGE(p_1302->global_1_offset, get_global_id(1), 10)) && (-8L)) && (l_662 |= ((safe_div_func_int32_t_s_s(l_650, (FAKE_DIVERGE(p_1302->global_1_offset, get_global_id(1), 10) , (safe_add_func_uint8_t_u_u((safe_div_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u(((*p_1302->g_270) || ((((safe_lshift_func_int16_t_s_u(p_1302->g_248[2][1], p_1302->g_7)) | 0x8A3AL) , &p_81) != &p_1302->g_270)), 6)), (*p_81))), GROUP_DIVERGE(1, 1)))))) == p_1302->g_248[(p_1302->g_243 + 4)][p_1302->g_314.f2]))))
                    { /* block id: 300 */
                        int32_t *l_663 = &p_1302->g_243;
                        return l_663;
                    }
                    else
                    { /* block id: 302 */
                        return &p_1302->g_48;
                    }
                }
                for (p_1302->g_48 = (-5); (p_1302->g_48 > (-25)); p_1302->g_48 = safe_sub_func_uint8_t_u_u(p_1302->g_48, 7))
                { /* block id: 308 */
                    uint8_t l_669 = 0x28L;
                    (*l_647) = &p_1302->g_243;
                    for (l_492 = 4; (l_492 == (-19)); --l_492)
                    { /* block id: 312 */
                        p_1302->g_668 = ((*l_647) = &p_1302->g_405);
                        if (l_669)
                            break;
                    }
                }
            }
        }
    }
    return p_82;
}


/* ------------------------------------------ */
/* 
 * reads : p_1302->g_55.f0 p_1302->g_55.f1 p_1302->g_97 p_1302->g_61 p_1302->g_93 p_1302->g_5 p_1302->g_136 p_1302->g_17 p_1302->g_142 p_1302->g_51 p_1302->g_137 p_1302->g_13 p_1302->g_207 p_1302->g_211 p_1302->g_55 p_1302->g_48 p_1302->g_250 p_1302->g_257 p_1302->g_248 p_1302->g_269
 * writes: p_1302->g_55.f0 p_1302->g_55.f1 p_1302->g_17 p_1302->g_5 p_1302->g_142 p_1302->g_61 p_1302->g_136 p_1302->g_93 p_1302->g_207 p_1302->g_211 p_1302->g_48 p_1302->g_250 p_1302->g_257
 */
uint8_t  func_85(struct S0 * p_86, uint8_t  p_87, struct S1 * p_1302)
{ /* block id: 30 */
    int64_t l_122[9][10] = {{1L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,1L,1L},{1L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,1L,1L},{1L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,1L,1L},{1L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,1L,1L},{1L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,1L,1L},{1L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,1L,1L},{1L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,1L,1L},{1L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,1L,1L},{1L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,0L,0L,0x6DC4577908E2A1EEL,1L,1L}};
    int32_t l_139 = 0x2C7596E1L;
    struct S0 *l_170 = &p_1302->g_55;
    int64_t *l_190 = &p_1302->g_17;
    int64_t **l_189 = &l_190;
    int64_t ***l_188 = &l_189;
    int32_t l_239 = 0x007DB234L;
    int32_t l_240 = 9L;
    int32_t l_241 = 0x60AECF41L;
    int32_t l_245 = 1L;
    int32_t l_246 = (-1L);
    int32_t l_247 = (-1L);
    int8_t *l_267 = &p_1302->g_55.f1;
    int8_t **l_268 = &p_1302->g_136[5];
    int i, j;
lbl_253:
    for (p_1302->g_55.f0 = 27; (p_1302->g_55.f0 <= 19); p_1302->g_55.f0--)
    { /* block id: 33 */
        int32_t l_114[8] = {0L,0L,0L,0L,0L,0L,0L,0L};
        int8_t *l_115 = &p_1302->g_55.f1;
        uint16_t *l_127 = &p_1302->g_5[0][1];
        int32_t *l_138[2];
        int i;
        for (i = 0; i < 2; i++)
            l_138[i] = (void*)0;
        l_139 ^= (safe_sub_func_uint64_t_u_u((safe_lshift_func_int8_t_s_u(((*l_115) &= (safe_unary_minus_func_int32_t_s((safe_div_func_int8_t_s_s(p_87, (safe_add_func_int16_t_s_s((safe_add_func_int8_t_s_s((-1L), p_1302->g_55.f0)), l_114[5]))))))), 5)), (((safe_rshift_func_int16_t_s_u((safe_add_func_uint32_t_u_u((((safe_sub_func_int32_t_s_s((l_114[5] && ((((*p_1302->g_97) = l_122[4][7]) <= ((safe_sub_func_uint16_t_u_u(((((((((safe_lshift_func_uint16_t_u_s(((*l_127) = FAKE_DIVERGE(p_1302->local_2_offset, get_local_id(2), 10)), (((safe_sub_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((l_114[5] >= (safe_lshift_func_uint8_t_u_s(p_1302->g_61, 5))), (((p_87 | 0xCAE2L) && 0x7CE9L) | 0x5C9BE968035757FEL))), 6)), 0x0807L)) && l_114[3]) , l_122[5][4]))) ^ p_87) , p_1302->g_93) || p_1302->g_5[2][0]) <= p_87) >= p_1302->g_55.f0) , 0L) ^ l_114[5]), l_114[5])) ^ l_122[1][9])) <= l_114[5])), 1L)) , l_115) != p_1302->g_136[5]), p_87)), l_114[6])) , (void*)0) == &l_114[2])));
    }
    for (p_1302->g_17 = 0; (p_1302->g_17 > 27); ++p_1302->g_17)
    { /* block id: 41 */
        volatile int64_t * volatile **l_145 = &p_1302->g_142;
        int32_t l_146 = (-7L);
        int32_t l_157 = 1L;
        uint64_t *l_158 = &p_1302->g_61;
        uint16_t *l_165 = (void*)0;
        uint16_t *l_166[10][7] = {{&p_1302->g_51[6],&p_1302->g_5[0][1],&p_1302->g_51[4],&p_1302->g_51[6],&p_1302->g_51[4],&p_1302->g_5[0][1],&p_1302->g_51[6]},{&p_1302->g_51[6],&p_1302->g_5[0][1],&p_1302->g_51[4],&p_1302->g_51[6],&p_1302->g_51[4],&p_1302->g_5[0][1],&p_1302->g_51[6]},{&p_1302->g_51[6],&p_1302->g_5[0][1],&p_1302->g_51[4],&p_1302->g_51[6],&p_1302->g_51[4],&p_1302->g_5[0][1],&p_1302->g_51[6]},{&p_1302->g_51[6],&p_1302->g_5[0][1],&p_1302->g_51[4],&p_1302->g_51[6],&p_1302->g_51[4],&p_1302->g_5[0][1],&p_1302->g_51[6]},{&p_1302->g_51[6],&p_1302->g_5[0][1],&p_1302->g_51[4],&p_1302->g_51[6],&p_1302->g_51[4],&p_1302->g_5[0][1],&p_1302->g_51[6]},{&p_1302->g_51[6],&p_1302->g_5[0][1],&p_1302->g_51[4],&p_1302->g_51[6],&p_1302->g_51[4],&p_1302->g_5[0][1],&p_1302->g_51[6]},{&p_1302->g_51[6],&p_1302->g_5[0][1],&p_1302->g_51[4],&p_1302->g_51[6],&p_1302->g_51[4],&p_1302->g_5[0][1],&p_1302->g_51[6]},{&p_1302->g_51[6],&p_1302->g_5[0][1],&p_1302->g_51[4],&p_1302->g_51[6],&p_1302->g_51[4],&p_1302->g_5[0][1],&p_1302->g_51[6]},{&p_1302->g_51[6],&p_1302->g_5[0][1],&p_1302->g_51[4],&p_1302->g_51[6],&p_1302->g_51[4],&p_1302->g_5[0][1],&p_1302->g_51[6]},{&p_1302->g_51[6],&p_1302->g_5[0][1],&p_1302->g_51[4],&p_1302->g_51[6],&p_1302->g_51[4],&p_1302->g_5[0][1],&p_1302->g_51[6]}};
        int i, j;
        (*l_145) = p_1302->g_142;
        if (((l_146 <= 1L) != (+(((safe_div_func_uint8_t_u_u((+(((safe_div_func_int8_t_s_s((&p_1302->g_17 != &p_1302->g_17), (safe_lshift_func_int8_t_s_s(((p_87 || (safe_add_func_uint64_t_u_u(((safe_lshift_func_uint16_t_u_u(p_1302->g_51[6], (&p_1302->g_17 != &p_1302->g_17))) ^ ((*l_158)++)), ((safe_rshift_func_uint16_t_u_u((l_139 ^= (safe_sub_func_int32_t_s_s(p_1302->g_55.f1, 0x0C0AAE42L))), l_122[4][7])) , p_87)))) , p_87), 0)))) | l_122[7][4]) || l_122[3][6])), p_87)) & l_122[4][7]) ^ p_1302->g_55.f0))))
        { /* block id: 45 */
            uint32_t l_192 = 0x18DAE918L;
            int32_t l_196[6] = {0x6303E4D4L,0x3D064BBAL,0x6303E4D4L,0x6303E4D4L,0x3D064BBAL,0x6303E4D4L};
            int i;
            for (l_139 = 0; (l_139 < 20); l_139 = safe_add_func_int16_t_s_s(l_139, 5))
            { /* block id: 48 */
                int64_t *l_169 = &l_122[4][3];
                int32_t l_187 = 0x5BAA0382L;
                uint64_t l_191 = 18446744073709551606UL;
                int16_t l_193 = 0x6104L;
                uint64_t *l_194 = (void*)0;
                uint64_t *l_195 = &l_191;
                int32_t l_205 = 0x0825DA56L;
                l_196[1] = ((((*l_195) = (l_146 = (l_157 , ((((((((*l_169) = p_1302->g_51[6]) , l_170) == p_86) <= (safe_div_func_int16_t_s_s((safe_lshift_func_int8_t_s_s((safe_mul_func_int16_t_s_s(((l_187 = (safe_mod_func_uint64_t_u_u((~(GROUP_DIVERGE(1, 1) >= ((~(p_1302->g_93 , ((safe_add_func_int8_t_s_s((((safe_rshift_func_int16_t_s_s(((++(*l_158)) , ((((-3L) == p_87) && (((((&p_1302->g_137[2][2][0] != (p_1302->g_136[5] = &p_1302->g_137[7][3][0])) & p_1302->g_137[7][1][0]) | l_187) , &p_1302->g_142) != l_188)) , p_1302->g_61)), l_191)) ^ l_192) > p_1302->g_13), l_193)) || 8UL))) > 0x11F4DA1EL))), p_1302->g_55.f0))) && p_1302->g_5[0][1]), 1L)), 6)), p_87))) < l_139) , p_1302->g_93) > l_157)))) ^ 1UL) | l_192);
                for (l_187 = 6; (l_187 <= (-1)); l_187 = safe_sub_func_uint8_t_u_u(l_187, 6))
                { /* block id: 58 */
                    int32_t l_201[2][10][9] = {{{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L}},{{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L},{3L,0x424FB951L,0x605A8AC6L,0L,(-1L),0x57B44CA5L,(-1L),(-1L),1L}}};
                    int32_t l_206[5][9] = {{(-8L),0x53F469E8L,0x6CE18AB5L,9L,0x53F469E8L,9L,0x6CE18AB5L,0x53F469E8L,(-8L)},{(-8L),0x53F469E8L,0x6CE18AB5L,9L,0x53F469E8L,9L,0x6CE18AB5L,0x53F469E8L,(-8L)},{(-8L),0x53F469E8L,0x6CE18AB5L,9L,0x53F469E8L,9L,0x6CE18AB5L,0x53F469E8L,(-8L)},{(-8L),0x53F469E8L,0x6CE18AB5L,9L,0x53F469E8L,9L,0x6CE18AB5L,0x53F469E8L,(-8L)},{(-8L),0x53F469E8L,0x6CE18AB5L,9L,0x53F469E8L,9L,0x6CE18AB5L,0x53F469E8L,(-8L)}};
                    int8_t l_231[6][3] = {{0x4AL,0L,0L},{0x4AL,0L,0L},{0x4AL,0L,0L},{0x4AL,0L,0L},{0x4AL,0L,0L},{0x4AL,0L,0L}};
                    int32_t *l_232[5];
                    int i, j, k;
                    for (i = 0; i < 5; i++)
                        l_232[i] = &l_157;
                    for (p_1302->g_93 = 1; (p_1302->g_93 <= 6); p_1302->g_93 += 1)
                    { /* block id: 61 */
                        int32_t *l_199 = &p_1302->g_55.f0;
                        int32_t *l_200 = &l_196[2];
                        int32_t *l_202 = (void*)0;
                        int32_t *l_203 = &p_1302->g_48;
                        int32_t *l_204[8];
                        int i;
                        for (i = 0; i < 8; i++)
                            l_204[i] = (void*)0;
                        p_1302->g_207[5][8][1]++;
                        --p_1302->g_211;
                        return p_1302->g_51[p_1302->g_93];
                    }
                    l_205 &= ((safe_lshift_func_int8_t_s_s((safe_unary_minus_func_int64_t_s(((safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u((0xF471AA7DB8A58F45L < (0x134AL > ((GROUP_DIVERGE(2, 1) > l_187) <= p_1302->g_211))), (safe_rshift_func_int8_t_s_s((safe_add_func_uint64_t_u_u(((p_1302->g_93 = (p_87 && (safe_rshift_func_uint16_t_u_s((0x68E3BD15L <= (safe_rshift_func_int8_t_s_u((safe_rshift_func_uint8_t_u_s((((*p_86) , p_87) , (GROUP_DIVERGE(0, 1) ^ (0xB6FBBB4AD64C46BDL != p_1302->g_51[6]))), l_231[3][1])), 1))), 13)))) , l_122[1][8]), p_1302->g_61)), 6)))), l_146)) || FAKE_DIVERGE(p_1302->local_1_offset, get_local_id(1), 10)))), 4)) != l_122[4][7]);
                }
                return p_87;
            }
            for (l_146 = 6; (l_146 >= 0); l_146 -= 1)
            { /* block id: 73 */
                return p_1302->g_13;
            }
        }
        else
        { /* block id: 76 */
            int32_t *l_233 = &p_1302->g_48;
            int32_t l_242[1];
            int32_t **l_260 = &l_233;
            int i;
            for (i = 0; i < 1; i++)
                l_242[i] = 1L;
            (*l_233) ^= l_146;
            for (p_1302->g_55.f1 = 0; (p_1302->g_55.f1 >= 0); p_1302->g_55.f1 -= 1)
            { /* block id: 80 */
                int32_t *l_234 = &l_139;
                int32_t *l_235 = (void*)0;
                int32_t *l_236 = &l_157;
                int32_t *l_237 = &l_146;
                int32_t *l_238[5][10] = {{&l_157,&l_146,&p_1302->g_55.f0,(void*)0,&p_1302->g_55.f0,&l_146,&l_157,&p_1302->g_55.f0,&p_1302->g_48,&p_1302->g_48},{&l_157,&l_146,&p_1302->g_55.f0,(void*)0,&p_1302->g_55.f0,&l_146,&l_157,&p_1302->g_55.f0,&p_1302->g_48,&p_1302->g_48},{&l_157,&l_146,&p_1302->g_55.f0,(void*)0,&p_1302->g_55.f0,&l_146,&l_157,&p_1302->g_55.f0,&p_1302->g_48,&p_1302->g_48},{&l_157,&l_146,&p_1302->g_55.f0,(void*)0,&p_1302->g_55.f0,&l_146,&l_157,&p_1302->g_55.f0,&p_1302->g_48,&p_1302->g_48},{&l_157,&l_146,&p_1302->g_55.f0,(void*)0,&p_1302->g_55.f0,&l_146,&l_157,&p_1302->g_55.f0,&p_1302->g_48,&p_1302->g_48}};
                int i, j;
                p_1302->g_250[1][1]++;
                if (l_139)
                    goto lbl_253;
                for (l_239 = 2; (l_239 >= 0); l_239 -= 1)
                { /* block id: 85 */
                    int32_t l_254 = (-7L);
                    if (p_1302->g_55.f0)
                        goto lbl_253;
                    p_1302->g_257[6][3][1]--;
                    (*l_236) |= (-8L);
                }
            }
            (*l_260) = &p_1302->g_48;
        }
    }
    l_139 = ((p_1302->g_142 != ((*l_188) = ((safe_lshift_func_uint8_t_u_s(((safe_lshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_s((l_267 == ((*l_268) = &p_1302->g_137[2][4][0])), 15)), p_1302->g_248[2][1])) | p_87), 6)) , p_1302->g_269[0][0][6]))) >= 0x102A2020L);
    return l_247;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1303;
    struct S1* p_1302 = &c_1303;
    struct S1 c_1304 = {
        {{0x07B5L,0x07B5L,0x07B5L,0x07B5L},{0x07B5L,0x07B5L,0x07B5L,0x07B5L},{0x07B5L,0x07B5L,0x07B5L,0x07B5L}}, // p_1302->g_5
        (-6L), // p_1302->g_7
        {3L,-1L,-8L}, // p_1302->g_10
        (-10L), // p_1302->g_12
        0x193C1DE6L, // p_1302->g_13
        0x0424B969B42C512DL, // p_1302->g_17
        18446744073709551614UL, // p_1302->g_22
        1L, // p_1302->g_48
        {0xD40FL,0xD40FL,0xD40FL,0xD40FL,0xD40FL,0xD40FL,0xD40FL,0xD40FL}, // p_1302->g_51
        {1L,0x06L,-5L}, // p_1302->g_55
        0x717E5ED535453F20L, // p_1302->g_61
        0x7548BA02L, // p_1302->g_93
        (void*)0, // p_1302->g_97
        {{{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L}}}, // p_1302->g_137
        {&p_1302->g_137[0][4][0],&p_1302->g_137[0][4][0],&p_1302->g_137[0][4][0],&p_1302->g_137[0][4][0],&p_1302->g_137[0][4][0],&p_1302->g_137[0][4][0],&p_1302->g_137[0][4][0]}, // p_1302->g_136
        {0x0C45170374899312L,0x0C45170374899312L,0x0C45170374899312L}, // p_1302->g_144
        &p_1302->g_144[0], // p_1302->g_143
        &p_1302->g_143, // p_1302->g_142
        {{{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L}},{{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L}},{{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L}},{{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L}},{{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L}},{{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L}},{{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L}},{{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L}},{{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L},{0UL,0UL,0xE220L}}}, // p_1302->g_207
        (-10L), // p_1302->g_210
        9UL, // p_1302->g_211
        (-1L), // p_1302->g_243
        2L, // p_1302->g_244
        {{0x418DL,0x751FL,0x0DCCL},{0x418DL,0x751FL,0x0DCCL},{0x418DL,0x751FL,0x0DCCL},{0x418DL,0x751FL,0x0DCCL},{0x418DL,0x751FL,0x0DCCL},{0x418DL,0x751FL,0x0DCCL},{0x418DL,0x751FL,0x0DCCL},{0x418DL,0x751FL,0x0DCCL}}, // p_1302->g_248
        0L, // p_1302->g_249
        {{0x5CF7L,0x5CF7L},{0x5CF7L,0x5CF7L},{0x5CF7L,0x5CF7L}}, // p_1302->g_250
        {0x01986E9DL,0x01986E9DL,0x01986E9DL,0x01986E9DL,0x01986E9DL}, // p_1302->g_255
        0x7AE0A805L, // p_1302->g_256
        {{{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL}},{{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL}},{{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL}},{{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL}},{{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL}},{{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL}},{{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL}},{{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL},{0x70F88B6BL,0UL,0x82609BD2L,4294967295UL}}}, // p_1302->g_257
        &p_1302->g_249, // p_1302->g_270
        {{{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270},{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270},{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270},{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270}},{{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270},{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270},{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270},{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270}},{{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270},{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270},{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270},{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270}},{{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270},{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270},{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270},{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270}},{{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270},{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270},{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270},{&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270,(void*)0,&p_1302->g_270,&p_1302->g_270}}}, // p_1302->g_269
        0xC3L, // p_1302->g_272
        4294967286UL, // p_1302->g_276
        &p_1302->g_97, // p_1302->g_295
        (-1L), // p_1302->g_297
        {2L,-1L,0x1AD9B4CE710D7219L}, // p_1302->g_314
        &p_1302->g_314, // p_1302->g_313
        &p_1302->g_314.f0, // p_1302->g_317
        9UL, // p_1302->g_373
        &p_1302->g_136[2], // p_1302->g_390
        &p_1302->g_390, // p_1302->g_389
        3L, // p_1302->g_402
        0x3E6C7879L, // p_1302->g_405
        1UL, // p_1302->g_407
        0x7FDEL, // p_1302->g_448
        &p_1302->g_313, // p_1302->g_484
        &p_1302->g_97, // p_1302->g_610
        &p_1302->g_55.f0, // p_1302->g_668
        {0x059B36DBL}, // p_1302->g_693
        0x3E07AF84963089D4L, // p_1302->g_694
        (void*)0, // p_1302->g_778
        {{{249UL,249UL,249UL},{249UL,249UL,249UL}},{{249UL,249UL,249UL},{249UL,249UL,249UL}}}, // p_1302->g_784
        (-9L), // p_1302->g_804
        {{0x2053L,(-6L),(-3L),(-10L),(-3L),(-6L),0x2053L,1L,3L},{0x2053L,(-6L),(-3L),(-10L),(-3L),(-6L),0x2053L,1L,3L},{0x2053L,(-6L),(-3L),(-10L),(-3L),(-6L),0x2053L,1L,3L},{0x2053L,(-6L),(-3L),(-10L),(-3L),(-6L),0x2053L,1L,3L},{0x2053L,(-6L),(-3L),(-10L),(-3L),(-6L),0x2053L,1L,3L},{0x2053L,(-6L),(-3L),(-10L),(-3L),(-6L),0x2053L,1L,3L},{0x2053L,(-6L),(-3L),(-10L),(-3L),(-6L),0x2053L,1L,3L},{0x2053L,(-6L),(-3L),(-10L),(-3L),(-6L),0x2053L,1L,3L},{0x2053L,(-6L),(-3L),(-10L),(-3L),(-6L),0x2053L,1L,3L},{0x2053L,(-6L),(-3L),(-10L),(-3L),(-6L),0x2053L,1L,3L}}, // p_1302->g_843
        &p_1302->g_668, // p_1302->g_845
        &p_1302->g_314, // p_1302->g_846
        0x4CC5DCE3AD3E073CL, // p_1302->g_855
        0x44L, // p_1302->g_858
        0x494873E7L, // p_1302->g_859
        {0x1B416B3EL,0x56L,-7L}, // p_1302->g_896
        {{0L,0x03764A5DL,0L,0L,0x03764A5DL,0L,0L,0x03764A5DL},{0L,0x03764A5DL,0L,0L,0x03764A5DL,0L,0L,0x03764A5DL},{0L,0x03764A5DL,0L,0L,0x03764A5DL,0L,0L,0x03764A5DL},{0L,0x03764A5DL,0L,0L,0x03764A5DL,0L,0L,0x03764A5DL},{0L,0x03764A5DL,0L,0L,0x03764A5DL,0L,0L,0x03764A5DL},{0L,0x03764A5DL,0L,0L,0x03764A5DL,0L,0L,0x03764A5DL},{0L,0x03764A5DL,0L,0L,0x03764A5DL,0L,0L,0x03764A5DL},{0L,0x03764A5DL,0L,0L,0x03764A5DL,0L,0L,0x03764A5DL},{0L,0x03764A5DL,0L,0L,0x03764A5DL,0L,0L,0x03764A5DL}}, // p_1302->g_916
        &p_1302->g_916[3][5], // p_1302->g_915
        &p_1302->g_915, // p_1302->g_914
        &p_1302->g_914, // p_1302->g_913
        0x75FF8ED9L, // p_1302->g_931
        &p_1302->g_931, // p_1302->g_930
        &p_1302->g_930, // p_1302->g_929
        {&p_1302->g_668,&p_1302->g_668,&p_1302->g_668}, // p_1302->g_935
        (void*)0, // p_1302->g_936
        &p_1302->g_317, // p_1302->g_937
        &p_1302->g_317, // p_1302->g_945
        &p_1302->g_668, // p_1302->g_949
        (void*)0, // p_1302->g_952
        (void*)0, // p_1302->g_953
        &p_1302->g_317, // p_1302->g_954
        7UL, // p_1302->g_970
        {(void*)0,&p_1302->g_970,(void*)0,(void*)0,&p_1302->g_970,(void*)0,(void*)0,&p_1302->g_970,(void*)0,(void*)0}, // p_1302->g_969
        &p_1302->g_969[5], // p_1302->g_968
        &p_1302->g_968, // p_1302->g_967
        &p_1302->g_967, // p_1302->g_966
        (void*)0, // p_1302->g_1036
        &p_1302->g_1036, // p_1302->g_1035
        &p_1302->g_1035, // p_1302->g_1034
        &p_1302->g_317, // p_1302->g_1070
        {0x5E07ECF8L,0x5E07ECF8L,0x5E07ECF8L,0x5E07ECF8L,0x5E07ECF8L,0x5E07ECF8L,0x5E07ECF8L,0x5E07ECF8L}, // p_1302->g_1078
        &p_1302->g_255[3], // p_1302->g_1107
        &p_1302->g_1107, // p_1302->g_1106
        {{(void*)0,(void*)0,(void*)0}}, // p_1302->g_1109
        &p_1302->g_314.f2, // p_1302->g_1111
        &p_1302->g_317, // p_1302->g_1112
        0x51L, // p_1302->g_1147
        &p_1302->g_668, // p_1302->g_1183
        &p_1302->g_610, // p_1302->g_1189
        0x129FL, // p_1302->g_1228
        {{8UL,1UL,8UL,8UL},{8UL,1UL,8UL,8UL},{8UL,1UL,8UL,8UL},{8UL,1UL,8UL,8UL},{8UL,1UL,8UL,8UL},{8UL,1UL,8UL,8UL}}, // p_1302->g_1245
        {{{&p_1302->g_1245[0][2],&p_1302->g_1245[2][3]},{&p_1302->g_1245[0][2],&p_1302->g_1245[2][3]},{&p_1302->g_1245[0][2],&p_1302->g_1245[2][3]},{&p_1302->g_1245[0][2],&p_1302->g_1245[2][3]},{&p_1302->g_1245[0][2],&p_1302->g_1245[2][3]},{&p_1302->g_1245[0][2],&p_1302->g_1245[2][3]}}}, // p_1302->g_1244
        {{{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]}},{{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]}},{{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]}},{{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]}},{{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]}},{{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]}},{{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]},{&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][3][0],&p_1302->g_1244[0][1][0],&p_1302->g_1244[0][4][1],&p_1302->g_1244[0][4][1]}}}, // p_1302->g_1243
        sequence_input[get_global_id(0)], // p_1302->global_0_offset
        sequence_input[get_global_id(1)], // p_1302->global_1_offset
        sequence_input[get_global_id(2)], // p_1302->global_2_offset
        sequence_input[get_local_id(0)], // p_1302->local_0_offset
        sequence_input[get_local_id(1)], // p_1302->local_1_offset
        sequence_input[get_local_id(2)], // p_1302->local_2_offset
        sequence_input[get_group_id(0)], // p_1302->group_0_offset
        sequence_input[get_group_id(1)], // p_1302->group_1_offset
        sequence_input[get_group_id(2)], // p_1302->group_2_offset
    };
    c_1303 = c_1304;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1302);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1302->g_5[i][j], "p_1302->g_5[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1302->g_7, "p_1302->g_7", print_hash_value);
    transparent_crc(p_1302->g_10.f0, "p_1302->g_10.f0", print_hash_value);
    transparent_crc(p_1302->g_10.f1, "p_1302->g_10.f1", print_hash_value);
    transparent_crc(p_1302->g_10.f2, "p_1302->g_10.f2", print_hash_value);
    transparent_crc(p_1302->g_12, "p_1302->g_12", print_hash_value);
    transparent_crc(p_1302->g_13, "p_1302->g_13", print_hash_value);
    transparent_crc(p_1302->g_17, "p_1302->g_17", print_hash_value);
    transparent_crc(p_1302->g_22, "p_1302->g_22", print_hash_value);
    transparent_crc(p_1302->g_48, "p_1302->g_48", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1302->g_51[i], "p_1302->g_51[i]", print_hash_value);

    }
    transparent_crc(p_1302->g_55.f0, "p_1302->g_55.f0", print_hash_value);
    transparent_crc(p_1302->g_55.f1, "p_1302->g_55.f1", print_hash_value);
    transparent_crc(p_1302->g_55.f2, "p_1302->g_55.f2", print_hash_value);
    transparent_crc(p_1302->g_61, "p_1302->g_61", print_hash_value);
    transparent_crc(p_1302->g_93, "p_1302->g_93", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1302->g_137[i][j][k], "p_1302->g_137[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1302->g_144[i], "p_1302->g_144[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1302->g_207[i][j][k], "p_1302->g_207[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1302->g_210, "p_1302->g_210", print_hash_value);
    transparent_crc(p_1302->g_211, "p_1302->g_211", print_hash_value);
    transparent_crc(p_1302->g_243, "p_1302->g_243", print_hash_value);
    transparent_crc(p_1302->g_244, "p_1302->g_244", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1302->g_248[i][j], "p_1302->g_248[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1302->g_249, "p_1302->g_249", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1302->g_250[i][j], "p_1302->g_250[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1302->g_255[i], "p_1302->g_255[i]", print_hash_value);

    }
    transparent_crc(p_1302->g_256, "p_1302->g_256", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1302->g_257[i][j][k], "p_1302->g_257[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1302->g_272, "p_1302->g_272", print_hash_value);
    transparent_crc(p_1302->g_276, "p_1302->g_276", print_hash_value);
    transparent_crc(p_1302->g_297, "p_1302->g_297", print_hash_value);
    transparent_crc(p_1302->g_314.f0, "p_1302->g_314.f0", print_hash_value);
    transparent_crc(p_1302->g_314.f1, "p_1302->g_314.f1", print_hash_value);
    transparent_crc(p_1302->g_314.f2, "p_1302->g_314.f2", print_hash_value);
    transparent_crc(p_1302->g_373, "p_1302->g_373", print_hash_value);
    transparent_crc(p_1302->g_402, "p_1302->g_402", print_hash_value);
    transparent_crc(p_1302->g_405, "p_1302->g_405", print_hash_value);
    transparent_crc(p_1302->g_407, "p_1302->g_407", print_hash_value);
    transparent_crc(p_1302->g_448, "p_1302->g_448", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1302->g_693[i], "p_1302->g_693[i]", print_hash_value);

    }
    transparent_crc(p_1302->g_694, "p_1302->g_694", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1302->g_784[i][j][k], "p_1302->g_784[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1302->g_804, "p_1302->g_804", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1302->g_843[i][j], "p_1302->g_843[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1302->g_855, "p_1302->g_855", print_hash_value);
    transparent_crc(p_1302->g_858, "p_1302->g_858", print_hash_value);
    transparent_crc(p_1302->g_859, "p_1302->g_859", print_hash_value);
    transparent_crc(p_1302->g_896.f0, "p_1302->g_896.f0", print_hash_value);
    transparent_crc(p_1302->g_896.f1, "p_1302->g_896.f1", print_hash_value);
    transparent_crc(p_1302->g_896.f2, "p_1302->g_896.f2", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1302->g_916[i][j], "p_1302->g_916[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1302->g_931, "p_1302->g_931", print_hash_value);
    transparent_crc(p_1302->g_970, "p_1302->g_970", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1302->g_1078[i], "p_1302->g_1078[i]", print_hash_value);

    }
    transparent_crc(p_1302->g_1147, "p_1302->g_1147", print_hash_value);
    transparent_crc(p_1302->g_1228, "p_1302->g_1228", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1302->g_1245[i][j], "p_1302->g_1245[i][j]", print_hash_value);

        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
