// ---fake_divergence ---inter_thread_comm -g 98,79,1 -l 1,1,1
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

__constant uint32_t permutations[10][1] = {
{0}, // permutation 0
{0}, // permutation 1
{0}, // permutation 2
{0}, // permutation 3
{0}, // permutation 4
{0}, // permutation 5
{0}, // permutation 6
{0}, // permutation 7
{0}, // permutation 8
{0} // permutation 9
};

// Seed: 19

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint32_t g_3;
    int32_t g_5;
    int32_t * volatile g_4;
    int64_t g_54;
    int32_t g_55;
    int32_t * volatile g_68;
    int32_t *g_72;
    int32_t **g_71;
    int32_t g_81;
    uint32_t g_100;
    uint32_t g_110;
    int16_t g_122;
    uint16_t g_128;
    volatile uint32_t g_151;
    volatile int32_t g_159;
    volatile uint32_t g_164;
    uint8_t g_168[1][6][6];
    uint8_t g_171;
    uint32_t g_190;
    uint32_t g_191;
    int8_t g_233;
    volatile int32_t g_241;
    uint32_t g_244;
    uint32_t *g_265;
    uint64_t g_279;
    int8_t g_295;
    uint32_t g_296;
    int32_t ****g_360;
    volatile uint32_t g_380[9];
    uint32_t g_434;
    int16_t g_446;
    uint32_t *g_493;
    uint32_t **g_492;
    volatile uint16_t g_532;
    volatile int8_t *g_570;
    volatile int8_t **g_569;
    uint16_t g_594;
    volatile int8_t g_709;
    volatile int16_t g_715;
    int64_t g_716;
    volatile uint32_t g_717;
    int32_t g_720;
    uint16_t g_757;
    int32_t ***g_797;
    uint32_t g_828;
    uint32_t g_857;
    volatile uint32_t g_911;
    uint8_t *g_930;
    uint8_t * volatile *g_929[1][8];
    uint8_t * volatile ** volatile g_931;
    volatile int64_t g_934;
    volatile int16_t g_935;
    volatile uint32_t g_936;
    uint32_t g_970;
    uint32_t **g_982;
    uint32_t *** volatile g_981;
    uint16_t *g_1021[7][7];
    uint16_t **g_1020;
    int32_t *g_1025[6];
    int32_t **g_1024;
    uint64_t *g_1040;
    uint64_t **g_1039;
    volatile uint32_t g_1082;
    int64_t g_1087;
    uint64_t g_1088;
    int64_t g_1135;
    int64_t g_1137;
    volatile uint16_t g_1149;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    uint32_t tid;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S0 * p_1152);
uint8_t  func_10(int32_t * p_11, uint16_t  p_12, uint64_t  p_13, int32_t  p_14, int32_t * p_15, struct S0 * p_1152);
int32_t * func_16(int64_t  p_17, uint64_t  p_18, struct S0 * p_1152);
int64_t  func_21(uint16_t  p_22, int64_t  p_23, uint8_t  p_24, int8_t  p_25, int32_t  p_26, struct S0 * p_1152);
int32_t  func_29(uint32_t * p_30, int32_t * p_31, int32_t * p_32, struct S0 * p_1152);
uint32_t * func_33(uint32_t  p_34, uint64_t  p_35, struct S0 * p_1152);
uint64_t  func_38(uint16_t  p_39, uint32_t  p_40, uint64_t  p_41, struct S0 * p_1152);
int32_t ** func_59(int32_t * p_60, int32_t ** p_61, uint32_t * p_62, int32_t  p_63, int32_t ** p_64, struct S0 * p_1152);
int32_t ** func_65(int32_t  p_66, struct S0 * p_1152);
uint64_t  func_73(int32_t ** p_74, int32_t ** p_75, int32_t  p_76, struct S0 * p_1152);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1152->g_3 p_1152->l_comm_values p_1152->g_4 p_1152->g_5 p_1152->g_comm_values p_1152->g_151 p_1152->g_128 p_1152->g_171 p_1152->g_100 p_1152->g_72 p_1152->g_295 p_1152->g_81 p_1152->g_71 p_1152->g_296 p_1152->g_360 p_1152->g_55 p_1152->g_265 p_1152->g_190 p_1152->g_380 p_1152->g_168 p_1152->g_279 p_1152->g_241 p_1152->g_122 p_1152->g_68 p_1152->g_716 p_1152->g_857 p_1152->g_110 p_1152->g_244 p_1152->g_797 p_1152->g_446 p_1152->g_164 p_1152->g_720 p_1152->g_434 p_1152->g_594 p_1152->g_757 p_1152->g_911 p_1152->g_54 p_1152->g_159 p_1152->g_191 p_1152->g_929 p_1152->g_931 p_1152->g_936 p_1152->g_970 p_1152->g_981 p_1152->g_982 p_1152->g_1024 p_1152->g_1021 p_1152->g_1039 p_1152->g_492 p_1152->g_493 p_1152->g_930 p_1152->g_1082 p_1152->g_1088 p_1152->g_1149
 * writes: p_1152->g_3 p_1152->g_5 p_1152->g_128 p_1152->g_360 p_1152->g_244 p_1152->g_380 p_1152->g_279 p_1152->g_190 p_1152->g_55 p_1152->g_168 p_1152->g_233 p_1152->g_171 p_1152->g_434 p_1152->g_446 p_1152->g_122 p_1152->g_911 p_1152->g_100 p_1152->g_191 p_1152->g_929 p_1152->g_936 p_1152->l_comm_values p_1152->g_110 p_1152->g_970 p_1152->g_72 p_1152->g_982 p_1152->g_1020 p_1152->g_757 p_1152->g_295 p_1152->g_1082 p_1152->g_1088 p_1152->g_1135 p_1152->g_1137 p_1152->g_81 p_1152->g_1149
 */
int32_t  func_1(struct S0 * p_1152)
{ /* block id: 4 */
    uint32_t *l_2[6] = {&p_1152->g_3,&p_1152->g_3,&p_1152->g_3,&p_1152->g_3,&p_1152->g_3,&p_1152->g_3};
    int32_t l_28 = 5L;
    int32_t *l_1142 = &p_1152->g_81;
    int32_t *l_1143 = &p_1152->g_81;
    int32_t *l_1144 = &p_1152->g_5;
    int32_t *l_1145 = &p_1152->g_81;
    int32_t *l_1146 = &l_28;
    int32_t *l_1147[7];
    int32_t l_1148 = 0x3869889FL;
    int i, j;
    for (i = 0; i < 7; i++)
        l_1147[i] = &l_28;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_1152->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[(safe_mod_func_uint32_t_u_u((p_1152->g_3 |= 0x6E6BACD7L), 10))][(safe_mod_func_uint32_t_u_u(p_1152->tid, 1))]));
    for (p_1152->g_3 = 0; (p_1152->g_3 <= 5); p_1152->g_3 += 1)
    { /* block id: 11 */
        uint32_t l_27 = 0x2DE4BF74L;
        int64_t *l_1134 = &p_1152->g_1135;
        int64_t *l_1136 = &p_1152->g_1137;
        int i, j;
        (*p_1152->g_4) |= p_1152->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1152->tid, 1))];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_1152->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[(safe_mod_func_uint32_t_u_u(((!(safe_mul_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s(func_10(func_16(((*l_1136) = ((*l_1134) = ((safe_add_func_uint32_t_u_u(p_1152->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1152->tid, 1))], 0x1C2E9378L)) , func_21(l_27, ((l_28 > func_29(func_33((l_27 , (safe_sub_func_int64_t_s_s(l_28, (p_1152->g_3 , ((!(func_38(p_1152->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1152->tid, 1))], l_28, p_1152->g_5, p_1152) , p_1152->g_comm_values[p_1152->tid])) , p_1152->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1152->tid, 1))]))))), p_1152->g_comm_values[p_1152->tid], p_1152), (**p_1152->g_797), l_2[p_1152->g_3], p_1152)) , 0x27DE1888C883C4EDL), p_1152->g_720, l_28, p_1152->g_295, p_1152)))), l_28, p_1152), l_27, l_28, p_1152->g_594, &p_1152->g_81, p_1152), p_1152->g_720)), l_27))) <= l_27), 10))][(safe_mod_func_uint32_t_u_u(p_1152->tid, 1))]));
        return l_28;
    }
    --p_1152->g_1149;
    return (*l_1143);
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_5 p_1152->g_4 p_1152->g_81 p_1152->g_68 p_1152->g_55
 * writes: p_1152->g_5 p_1152->g_81
 */
uint8_t  func_10(int32_t * p_11, uint16_t  p_12, uint64_t  p_13, int32_t  p_14, int32_t * p_15, struct S0 * p_1152)
{ /* block id: 541 */
    uint16_t l_1141 = 65527UL;
    for (p_1152->g_5 = 0; (p_1152->g_5 <= (-12)); p_1152->g_5--)
    { /* block id: 544 */
        (*p_15) ^= (*p_1152->g_4);
    }
    (*p_15) &= (*p_1152->g_68);
    return l_1141;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_16(int64_t  p_17, uint64_t  p_18, struct S0 * p_1152)
{ /* block id: 538 */
    int32_t *l_1138 = &p_1152->g_81;
    l_1138 = l_1138;
    return l_1138;
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_434 p_1152->g_265 p_1152->g_190 p_1152->g_594 p_1152->g_757 p_1152->g_797 p_1152->g_71 p_1152->g_72 p_1152->g_5 p_1152->g_911 p_1152->g_81 p_1152->g_128 p_1152->g_54 p_1152->g_100 p_1152->g_716 p_1152->g_720 p_1152->g_295 p_1152->g_159 p_1152->g_191 p_1152->g_929 p_1152->g_931 p_1152->g_936 p_1152->g_68 p_1152->g_110 p_1152->g_244 p_1152->g_comm_values p_1152->g_970 p_1152->g_981 p_1152->g_446 p_1152->g_151 p_1152->g_171 p_1152->g_296 p_1152->g_360 p_1152->g_4 p_1152->l_comm_values p_1152->g_55 p_1152->g_380 p_1152->g_168 p_1152->g_279 p_1152->g_241 p_1152->g_122 p_1152->g_857 p_1152->g_982 p_1152->g_1024 p_1152->g_1021 p_1152->g_1039 p_1152->g_492 p_1152->g_493 p_1152->g_930 p_1152->g_1082 p_1152->g_1088
 * writes: p_1152->g_434 p_1152->g_190 p_1152->g_446 p_1152->g_122 p_1152->g_5 p_1152->g_911 p_1152->g_100 p_1152->g_191 p_1152->g_929 p_1152->g_936 p_1152->g_171 p_1152->g_55 p_1152->l_comm_values p_1152->g_110 p_1152->g_128 p_1152->g_970 p_1152->g_72 p_1152->g_982 p_1152->g_360 p_1152->g_1020 p_1152->g_244 p_1152->g_380 p_1152->g_279 p_1152->g_757 p_1152->g_295 p_1152->g_1082 p_1152->g_1088
 */
int64_t  func_21(uint16_t  p_22, int64_t  p_23, uint8_t  p_24, int8_t  p_25, int32_t  p_26, struct S0 * p_1152)
{ /* block id: 408 */
    uint32_t l_899 = 0UL;
    int32_t l_900 = (-2L);
    int32_t l_903 = 0x45F05EA5L;
    int32_t l_910[2];
    int8_t *l_925 = &p_1152->g_295;
    int8_t **l_924 = &l_925;
    uint16_t *l_946[5][1];
    uint64_t *l_963 = &p_1152->g_279;
    uint32_t *l_1011 = &p_1152->g_434;
    int32_t **l_1027 = &p_1152->g_1025[0];
    uint8_t l_1034[3][1];
    int32_t *l_1048 = &l_900;
    int32_t ****l_1130 = &p_1152->g_797;
    int16_t *l_1131 = &p_1152->g_122;
    uint8_t *l_1132 = (void*)0;
    uint8_t *l_1133 = &l_1034[2][0];
    int i, j;
    for (i = 0; i < 2; i++)
        l_910[i] = 1L;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
            l_946[i][j] = &p_1152->g_594;
    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
            l_1034[i][j] = 251UL;
    }
    for (p_1152->g_434 = 0; (p_1152->g_434 < 56); p_1152->g_434++)
    { /* block id: 411 */
        uint16_t l_891 = 65534UL;
        int16_t *l_896 = &p_1152->g_446;
        int32_t *l_901 = &p_1152->g_81;
        int32_t *l_902 = &l_900;
        int32_t *l_904 = &l_900;
        int32_t *l_905 = &p_1152->g_81;
        int32_t *l_906 = &p_1152->g_81;
        int32_t *l_907 = (void*)0;
        int32_t *l_908[7][1][2] = {{{&p_1152->g_55,(void*)0}},{{&p_1152->g_55,(void*)0}},{{&p_1152->g_55,(void*)0}},{{&p_1152->g_55,(void*)0}},{{&p_1152->g_55,(void*)0}},{{&p_1152->g_55,(void*)0}},{{&p_1152->g_55,(void*)0}}};
        int64_t l_909[2];
        uint16_t *l_919 = &p_1152->g_594;
        uint16_t **l_918 = &l_919;
        int8_t *l_923 = &p_1152->g_233;
        int8_t **l_922[4][4][10] = {{{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923},{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923},{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923},{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923}},{{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923},{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923},{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923},{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923}},{{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923},{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923},{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923},{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923}},{{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923},{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923},{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923},{(void*)0,&l_923,&l_923,&l_923,(void*)0,&l_923,(void*)0,&l_923,&l_923,&l_923}}};
        int8_t ***l_926 = &l_924;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_909[i] = 0x77A20515EC8DD100L;
        (***p_1152->g_797) = ((safe_sub_func_int32_t_s_s((((*p_1152->g_265)--) <= ((p_1152->g_594 || (l_891 < (safe_sub_func_uint8_t_u_u((((((*l_896) = 0x66A2L) == ((-6L) <= (p_1152->g_122 = (safe_mul_func_int8_t_s_s(p_24, 0x73L))))) != (4294967293UL & (((((p_1152->g_757 , (**p_1152->g_797)) == (void*)0) | (-1L)) & l_891) ^ l_899))) == l_891), l_891)))) <= l_899)), p_23)) , (**p_1152->g_71));
        ++p_1152->g_911;
        (***p_1152->g_797) = (((!((((*l_905) < (((*l_902) = 3L) <= (((((safe_sub_func_int8_t_s_s((p_26 | (safe_rshift_func_uint16_t_u_u((p_1152->g_128 || (&p_22 != ((*l_918) = &p_22))), 13))), ((*l_905) > (safe_div_func_int32_t_s_s((l_922[1][0][5] == ((*l_926) = ((p_1152->g_100 ^= p_1152->g_54) , l_924))), p_23))))) || p_26) & p_1152->g_716) , p_1152->g_720) > p_1152->g_295))) < 1L) & p_1152->g_159)) > p_25) >= 0x6003L);
    }
    for (p_1152->g_191 = 0; (p_1152->g_191 >= 29); p_1152->g_191 = safe_add_func_int8_t_s_s(p_1152->g_191, 1))
    { /* block id: 425 */
        int32_t l_932 = 1L;
        int32_t *l_933[2][1][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        uint32_t *l_942 = &p_1152->g_434;
        uint32_t **l_941 = &l_942;
        uint32_t ***l_940[4];
        int16_t *l_983 = &p_1152->g_446;
        uint16_t **l_1022 = &p_1152->g_1021[6][3];
        uint64_t **l_1037[5][2][1] = {{{&l_963},{&l_963}},{{&l_963},{&l_963}},{{&l_963},{&l_963}},{{&l_963},{&l_963}},{{&l_963},{&l_963}}};
        int64_t *l_1052 = &p_1152->g_716;
        int64_t **l_1051 = &l_1052;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_940[i] = &l_941;
        (*p_1152->g_931) = p_1152->g_929[0][0];
        p_1152->g_936++;
        if (((((safe_unary_minus_func_int32_t_s((&l_924 != (void*)0))) , p_22) <= ((void*)0 == l_940[1])) <= 0UL))
        { /* block id: 428 */
            uint64_t l_945 = 3UL;
            uint16_t l_964 = 1UL;
            int32_t l_966 = 8L;
            int32_t l_969 = (-8L);
            for (p_1152->g_171 = 0; (p_1152->g_171 != 44); p_1152->g_171++)
            { /* block id: 431 */
                int8_t l_965 = 4L;
                int32_t l_967[4] = {3L,3L,3L,3L};
                int i;
                (***p_1152->g_797) = (l_945 && (!(((~(!((l_946[3][0] = &p_1152->g_594) == &p_22))) <= (((+((safe_add_func_int16_t_s_s((0xDCL < (safe_add_func_int32_t_s_s((((((((p_1152->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1152->tid, 1))] = (safe_mod_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u((safe_div_func_int16_t_s_s((l_945 != 0x1EL), FAKE_DIVERGE(p_1152->global_2_offset, get_global_id(2), 10))), 3)), ((p_22 , ((*p_1152->g_265) &= ((safe_rshift_func_uint8_t_u_u((safe_div_func_uint16_t_u_u(l_903, (((*p_1152->g_68) = (safe_mul_func_int16_t_s_s((((l_963 == (void*)0) != 0x561821722F51D41CL) , p_25), l_964))) , p_25))), 1)) < 0UL))) | p_24)))) ^ p_1152->g_191) , p_26) , (void*)0) != &p_1152->g_569) <= p_24) , (**p_1152->g_71)), 0x2DB41994L))), p_1152->g_244)) != p_1152->g_comm_values[p_1152->tid])) != p_25) != p_26)) != p_22)));
                for (p_1152->g_128 = 0; (p_1152->g_128 <= 0); p_1152->g_128 += 1)
                { /* block id: 439 */
                    int32_t l_968 = 0x6F108924L;
                    int i, j, k;
                    --p_1152->g_970;
                    l_900 = 1L;
                    if ((***p_1152->g_797))
                        continue;
                }
                for (p_1152->g_122 = 0; (p_1152->g_122 <= 5); p_1152->g_122 = safe_add_func_int8_t_s_s(p_1152->g_122, 3))
                { /* block id: 446 */
                    uint32_t l_979 = 1UL;
                    for (l_969 = (-27); (l_969 == 10); l_969++)
                    { /* block id: 449 */
                        uint32_t ***l_980 = (void*)0;
                        (**p_1152->g_797) = l_942;
                        (*p_1152->g_981) = (((safe_lshift_func_int8_t_s_s(l_979, 2)) , GROUP_DIVERGE(0, 1)) , &p_1152->g_265);
                    }
                }
            }
            l_910[1] ^= ((*p_1152->g_72) = 0L);
        }
        else
        { /* block id: 457 */
            int32_t l_1008[9][4][5] = {{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}},{{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L},{0x394A98C2L,0x1D779194L,0x394A98C2L,0x394A98C2L,0x1D779194L}}};
            uint16_t l_1009 = 0xC561L;
            int32_t l_1010 = 0x3750B8B9L;
            int32_t ****l_1014 = &p_1152->g_797;
            uint64_t **l_1042 = (void*)0;
            int32_t l_1043 = 0x4DACA881L;
            int32_t l_1044 = 1L;
            uint8_t **l_1071 = &p_1152->g_930;
            uint64_t l_1075 = 5UL;
            int i, j, k;
            if ((((void*)0 != l_983) < (safe_lshift_func_uint16_t_u_u(((safe_mod_func_int64_t_s_s((0x77BC8CDAL == (safe_div_func_int16_t_s_s(((*l_983) = p_23), p_24))), (safe_mul_func_int8_t_s_s((((((safe_rshift_func_int16_t_s_u(((safe_add_func_uint16_t_u_u((~(safe_mod_func_uint32_t_u_u(((safe_mul_func_int16_t_s_s(0L, (safe_mod_func_uint8_t_u_u((safe_sub_func_int8_t_s_s((p_26 , ((safe_mul_func_uint8_t_u_u(0xFCL, ((FAKE_DIVERGE(p_1152->group_2_offset, get_group_id(2), 10) < (+(safe_div_func_uint16_t_u_u((l_1008[7][3][3] <= p_1152->g_970), 0x63C9L)))) , 255UL))) != l_910[0])), 0x21L)), 1L)))) ^ p_23), p_24))), p_23)) >= (*p_1152->g_72)), 5)) < l_1008[7][3][3]) , (-6L)) < 0L) , l_1009), 0x3AL)))) == l_1010), 2))))
            { /* block id: 459 */
                uint32_t l_1023 = 0x764A2937L;
                int32_t l_1030 = 1L;
                uint8_t l_1045 = 0xA8L;
                (**p_1152->g_71) = (&p_1152->g_434 != l_1011);
                for (l_1009 = 0; (l_1009 <= 3); l_1009 += 1)
                { /* block id: 463 */
                    int32_t *****l_1015 = (void*)0;
                    uint16_t **l_1019 = (void*)0;
                    uint16_t ***l_1018[1];
                    int32_t **l_1026 = &p_1152->g_1025[5];
                    int32_t ***l_1028 = &l_1027;
                    int32_t l_1031 = 1L;
                    int32_t l_1033[10][10] = {{0x58771CF4L,1L,1L,(-1L),0x6D1FC437L,(-1L),1L,1L,0x58771CF4L,0x34BC6708L},{0x58771CF4L,1L,1L,(-1L),0x6D1FC437L,(-1L),1L,1L,0x58771CF4L,0x34BC6708L},{0x58771CF4L,1L,1L,(-1L),0x6D1FC437L,(-1L),1L,1L,0x58771CF4L,0x34BC6708L},{0x58771CF4L,1L,1L,(-1L),0x6D1FC437L,(-1L),1L,1L,0x58771CF4L,0x34BC6708L},{0x58771CF4L,1L,1L,(-1L),0x6D1FC437L,(-1L),1L,1L,0x58771CF4L,0x34BC6708L},{0x58771CF4L,1L,1L,(-1L),0x6D1FC437L,(-1L),1L,1L,0x58771CF4L,0x34BC6708L},{0x58771CF4L,1L,1L,(-1L),0x6D1FC437L,(-1L),1L,1L,0x58771CF4L,0x34BC6708L},{0x58771CF4L,1L,1L,(-1L),0x6D1FC437L,(-1L),1L,1L,0x58771CF4L,0x34BC6708L},{0x58771CF4L,1L,1L,(-1L),0x6D1FC437L,(-1L),1L,1L,0x58771CF4L,0x34BC6708L},{0x58771CF4L,1L,1L,(-1L),0x6D1FC437L,(-1L),1L,1L,0x58771CF4L,0x34BC6708L}};
                    int i, j;
                    for (i = 0; i < 1; i++)
                        l_1018[i] = &l_1019;
                    (***l_1014) = func_33((safe_div_func_int16_t_s_s(((&p_1152->g_797 == (p_1152->g_360 = l_1014)) , (((*l_983) |= p_1152->g_54) == (safe_div_func_uint64_t_u_u(((((((p_1152->g_1020 = (void*)0) == l_1022) <= l_910[0]) , p_1152->g_81) , 0UL) | p_1152->g_970), l_1023)))), l_899)), p_23, p_1152);
                    (****p_1152->g_360) |= ((l_900 != (((**p_1152->g_982) = FAKE_DIVERGE(p_1152->local_2_offset, get_local_id(2), 10)) != p_22)) , (-5L));
                    if (p_22)
                        continue;
                    (**p_1152->g_71) ^= ((l_1026 = p_1152->g_1024) != ((*l_1028) = l_1027));
                    for (l_899 = 0; (l_899 <= 3); l_899 += 1)
                    { /* block id: 476 */
                        int32_t l_1029 = 1L;
                        int32_t l_1032 = 0x23053BD1L;
                        uint64_t ***l_1038 = &l_1037[3][1][0];
                        uint64_t ***l_1041 = (void*)0;
                        int i, j, k;
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_1152->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[(safe_mod_func_uint32_t_u_u((((**l_1022) = 0xF2C5L) || l_1008[(l_899 + 1)][l_899][l_1009]), 10))][(safe_mod_func_uint32_t_u_u(p_1152->tid, 1))]));
                        l_1029 |= (***p_1152->g_797);
                        ++l_1034[2][0];
                        (**p_1152->g_71) = (((*l_1038) = l_1037[2][1][0]) != (l_1042 = p_1152->g_1039));
                    }
                }
                if ((****l_1014))
                    continue;
                l_1045--;
            }
            else
            { /* block id: 490 */
                uint32_t *l_1054 = &l_899;
                uint32_t **l_1053 = &l_1054;
                uint32_t *l_1056 = &l_899;
                uint32_t **l_1055 = &l_1056;
                uint8_t **l_1073 = &p_1152->g_930;
                uint8_t ***l_1072 = &l_1073;
                int32_t l_1074 = 0x358C0659L;
                (**p_1152->g_797) = l_1048;
                if (p_25)
                    break;
                l_1075 ^= (((****l_1014) &= (-1L)) , (safe_lshift_func_int8_t_s_s(((((***p_1152->g_981) = (l_1051 == (void*)0)) < (~(p_26 , ((*p_1152->g_492) != ((*l_1055) = ((*l_1053) = (*p_1152->g_492))))))) , ((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s(((p_24 || (safe_div_func_uint32_t_u_u((safe_rshift_func_int16_t_s_u(((*l_983) = (safe_sub_func_int16_t_s_s((safe_add_func_int32_t_s_s((safe_mod_func_int16_t_s_s(((l_1071 != ((*l_1072) = l_1071)) , p_24), FAKE_DIVERGE(p_1152->local_2_offset, get_local_id(2), 10))), p_23)), FAKE_DIVERGE(p_1152->group_0_offset, get_group_id(0), 10)))), 13)), p_25))) < 2UL), 6)), l_1074)) || p_22)), (****l_1014))));
                for (p_1152->g_100 = 0; (p_1152->g_100 > 49); p_1152->g_100++)
                { /* block id: 502 */
                    l_933[0][0][2] = &l_910[0];
                }
            }
            return p_23;
        }
        if ((18446744073709551609UL && (((**l_924) = p_23) == (*p_1152->g_930))))
        { /* block id: 509 */
            int32_t *l_1080 = &l_900;
            int32_t l_1081 = 0x5EE839F4L;
            for (p_1152->g_190 = 0; (p_1152->g_190 >= 51); p_1152->g_190 = safe_add_func_uint64_t_u_u(p_1152->g_190, 7))
            { /* block id: 512 */
                int8_t l_1085 = 0x0EL;
                int32_t l_1086[9][2][10] = {{{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L},{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L}},{{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L},{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L}},{{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L},{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L}},{{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L},{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L}},{{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L},{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L}},{{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L},{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L}},{{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L},{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L}},{{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L},{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L}},{{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L},{0x6195A152L,0x4754BA19L,0x45F2CF85L,7L,0x4754BA19L,7L,0x45F2CF85L,0x4754BA19L,0x6195A152L,0x6195A152L}}};
                int i, j, k;
                if ((**p_1152->g_71))
                    break;
                (**p_1152->g_797) = l_1080;
                --p_1152->g_1082;
                ++p_1152->g_1088;
            }
            return p_26;
        }
        else
        { /* block id: 519 */
            uint64_t l_1094 = 0UL;
            for (p_1152->g_110 = 0; (p_1152->g_110 == 41); ++p_1152->g_110)
            { /* block id: 522 */
                int32_t l_1093 = 0x16CA6475L;
                --l_1094;
                return p_1152->g_720;
            }
        }
    }
    (***l_1130) = func_33((((*l_1133) |= (safe_div_func_uint32_t_u_u((((****l_1130) = (((safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(((((p_24 == ((*l_1131) = ((safe_mul_func_int8_t_s_s((safe_mul_func_int8_t_s_s((safe_sub_func_int64_t_s_s(p_22, (safe_rshift_func_uint16_t_u_s(p_26, (safe_rshift_func_uint8_t_u_s((safe_add_func_int32_t_s_s(((5L < (*l_1048)) > (safe_div_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_u((((safe_rshift_func_int8_t_s_u((safe_unary_minus_func_int32_t_s((((+(safe_div_func_uint64_t_u_u(((*p_1152->g_4) == (1UL >= ((((safe_mod_func_int32_t_s_s((safe_sub_func_uint64_t_u_u((((*l_963)++) | ((l_910[1] = 7UL) <= p_1152->g_970)), 0x37EDBCEEDC594B14L)), (*l_1048))) & 7UL) , (void*)0) == l_1130))), p_25))) < 0x75B14AA9L) , (-7L)))), (*l_1048))) | p_24) , p_24), (*p_1152->g_930))) > p_1152->g_446), 0x2B3CL))), (***p_1152->g_797))), 6)))))), (-3L))), 0x61L)) != p_24))) , (****l_1130)) == p_1152->g_857) > 0L), p_1152->g_720)), 2)) , (*l_1048)) > p_23)) >= 65535UL), 0x36D678B6L))) & p_25), p_24, p_1152);
    (****l_1130) ^= (*l_1048);
    return p_26;
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_168 p_1152->g_446 p_1152->g_164 p_1152->g_265 p_1152->g_190 p_1152->g_72
 * writes: p_1152->g_168 p_1152->g_233 p_1152->g_171 p_1152->g_190 p_1152->g_434 p_1152->g_5
 */
int32_t  func_29(uint32_t * p_30, int32_t * p_31, int32_t * p_32, struct S0 * p_1152)
{ /* block id: 398 */
    int16_t l_865 = 0x439DL;
    int32_t l_870 = 0x1E41818CL;
    uint8_t *l_871 = &p_1152->g_168[0][5][3];
    int8_t *l_872 = &p_1152->g_233;
    uint8_t *l_873 = &p_1152->g_171;
    int32_t l_884 = (-1L);
    (*p_1152->g_72) = (safe_mul_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1152->local_1_offset, get_local_id(1), 10), ((*l_873) = (l_865 != (safe_mod_func_int8_t_s_s(l_865, ((*l_872) = (safe_mul_func_uint8_t_u_u(((*l_871) ^= (l_870 = l_865)), (l_865 || (l_865 <= (p_1152->g_446 >= p_1152->g_164)))))))))))), ((p_1152->g_434 = (safe_lshift_func_uint8_t_u_s(((safe_mod_func_uint32_t_u_u(((((safe_lshift_func_uint8_t_u_s((((safe_rshift_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s((l_884 |= 1UL), 0)), 8)) & ((((((*p_1152->g_265) = (*p_1152->g_265)) || l_865) < 0xFF23CED2L) , l_865) && 0x0EF2F4EBL)) == 3L), 3)) < l_865) || l_865) | 0xDA924DA3L), l_865)) , 0x90L), l_865))) , l_884)));
    return l_884;
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_5 p_1152->g_151 p_1152->g_128 p_1152->g_171 p_1152->g_100 p_1152->g_72 p_1152->g_295 p_1152->g_81 p_1152->g_71 p_1152->g_296 p_1152->g_360 p_1152->g_4 p_1152->l_comm_values p_1152->g_55 p_1152->g_265 p_1152->g_190 p_1152->g_380 p_1152->g_168 p_1152->g_279 p_1152->g_241 p_1152->g_122 p_1152->g_68 p_1152->g_716 p_1152->g_857 p_1152->g_110 p_1152->g_244 p_1152->g_434
 * writes: p_1152->g_128 p_1152->g_5 p_1152->g_360 p_1152->g_244 p_1152->g_380 p_1152->g_279 p_1152->g_190 p_1152->g_55 p_1152->g_110 p_1152->g_100 p_1152->g_434
 */
uint32_t * func_33(uint32_t  p_34, uint64_t  p_35, struct S0 * p_1152)
{ /* block id: 16 */
    int32_t *l_43 = &p_1152->g_5;
    int32_t *l_44 = &p_1152->g_5;
    int32_t *l_45 = &p_1152->g_5;
    int32_t *l_46 = (void*)0;
    int32_t *l_47 = &p_1152->g_5;
    int32_t *l_48 = &p_1152->g_5;
    int32_t *l_49 = &p_1152->g_5;
    int32_t *l_50 = &p_1152->g_5;
    int32_t *l_51 = &p_1152->g_5;
    int32_t l_52 = 0x495EE35DL;
    int32_t *l_53[10][6] = {{&l_52,(void*)0,&p_1152->g_5,&p_1152->g_5,&p_1152->g_5,(void*)0},{&l_52,(void*)0,&p_1152->g_5,&p_1152->g_5,&p_1152->g_5,(void*)0},{&l_52,(void*)0,&p_1152->g_5,&p_1152->g_5,&p_1152->g_5,(void*)0},{&l_52,(void*)0,&p_1152->g_5,&p_1152->g_5,&p_1152->g_5,(void*)0},{&l_52,(void*)0,&p_1152->g_5,&p_1152->g_5,&p_1152->g_5,(void*)0},{&l_52,(void*)0,&p_1152->g_5,&p_1152->g_5,&p_1152->g_5,(void*)0},{&l_52,(void*)0,&p_1152->g_5,&p_1152->g_5,&p_1152->g_5,(void*)0},{&l_52,(void*)0,&p_1152->g_5,&p_1152->g_5,&p_1152->g_5,(void*)0},{&l_52,(void*)0,&p_1152->g_5,&p_1152->g_5,&p_1152->g_5,(void*)0},{&l_52,(void*)0,&p_1152->g_5,&p_1152->g_5,&p_1152->g_5,(void*)0}};
    uint64_t l_56 = 0x8CD6C332E49D2A59L;
    int32_t ***l_332 = &p_1152->g_71;
    int32_t ****l_333 = &l_332;
    int32_t ***l_334 = &p_1152->g_71;
    uint16_t *l_337 = &p_1152->g_128;
    int32_t l_350 = 0L;
    int32_t ****l_357 = &l_332;
    int32_t l_404 = (-8L);
    uint32_t **l_561 = &p_1152->g_493;
    uint32_t **l_598 = (void*)0;
    uint8_t *l_636 = &p_1152->g_168[0][5][3];
    uint64_t l_677 = 0x35E96F9E32B71DE1L;
    uint64_t l_733 = 18446744073709551608UL;
    uint64_t l_762[5];
    int32_t l_805 = 0x61DED009L;
    int64_t *l_831 = (void*)0;
    int64_t **l_830 = &l_831;
    int32_t l_858 = 0x053D19DFL;
    int i, j;
    for (i = 0; i < 5; i++)
        l_762[i] = 0xF0A60E2699445B42L;
    --l_56;
    for (p_34 = 0; (p_34 <= 5); p_34 += 1)
    { /* block id: 20 */
        int64_t l_67 = 0x7E2BD63ADB0B63B5L;
        int32_t **l_78 = &l_53[3][0];
        int32_t ***l_77 = &l_78;
        uint32_t *l_109 = &p_1152->g_110;
        (1 + 1);
    }
    if (((*l_45) = (safe_sub_func_int16_t_s_s((*l_45), (safe_div_func_int32_t_s_s((safe_rshift_func_uint8_t_u_u((safe_div_func_int32_t_s_s(((((*l_333) = l_332) == l_334) < 0x4E9EL), (+(*l_48)))), (p_1152->g_151 ^ (((safe_lshift_func_uint16_t_u_s((--(*l_337)), (((safe_div_func_int64_t_s_s((((((safe_sub_func_int8_t_s_s((((((((((safe_add_func_uint32_t_u_u((*l_50), (safe_add_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((1UL > p_1152->g_171), p_1152->g_100)), (*l_44))))) == (*l_48)) & p_34) && p_35) && (*p_1152->g_72)) , p_34) || 0x4F1A770C07E0134CL) , p_35) ^ (-2L)), GROUP_DIVERGE(1, 1))) & p_1152->g_171) ^ 0x411644D02124D56FL) < p_1152->g_295) != p_1152->g_81), (-10L))) , (**p_1152->g_71)) , p_1152->g_296))) | l_350) || p_34)))), 0x019B9918L))))))
    { /* block id: 163 */
        int32_t ****l_358 = &l_332;
        int32_t *****l_359 = &l_333;
        int32_t l_361 = 0x4F0FD475L;
        int32_t l_378 = 1L;
        int32_t l_379 = 3L;
        uint32_t *l_491 = &p_1152->g_100;
        uint32_t **l_490 = &l_491;
        int32_t l_530 = 0x1C0EB1E7L;
        uint16_t *l_593 = &p_1152->g_594;
        uint8_t *l_635 = &p_1152->g_168[0][5][3];
        uint64_t *l_657 = &p_1152->g_279;
        int32_t l_710 = 0x12DC27ECL;
        int32_t l_711 = 0x7DD0373EL;
        int32_t l_712 = 5L;
        int32_t l_713 = (-1L);
        int32_t l_714 = 1L;
        (***l_332) = ((safe_mul_func_uint8_t_u_u(0x22L, ((0x03L < ((GROUP_DIVERGE(0, 1) & (safe_rshift_func_uint16_t_u_u((*l_45), 14))) , (safe_rshift_func_uint8_t_u_s(((l_357 != ((*l_359) = l_358)) , ((p_1152->g_360 = p_1152->g_360) != &l_332)), 7)))) != 1UL))) | (l_361 = (*p_1152->g_4)));
        if (p_1152->g_81)
            goto lbl_829;
lbl_829:
        for (l_56 = 0; (l_56 <= 0); l_56 += 1)
        { /* block id: 170 */
            int8_t l_374 = 0L;
            int32_t l_377[5][6] = {{6L,6L,1L,1L,0x00916BCFL,1L},{6L,6L,1L,1L,0x00916BCFL,1L},{6L,6L,1L,1L,0x00916BCFL,1L},{6L,6L,1L,1L,0x00916BCFL,1L},{6L,6L,1L,1L,0x00916BCFL,1L}};
            int32_t l_394 = 0x656A2D0BL;
            int32_t l_395[3][1];
            int32_t l_413 = 8L;
            uint32_t *l_432 = (void*)0;
            uint32_t *l_433 = &p_1152->g_434;
            int16_t *l_435[5][3][5] = {{{&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122},{&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122},{&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122}},{{&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122},{&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122},{&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122}},{{&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122},{&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122},{&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122}},{{&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122},{&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122},{&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122}},{{&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122},{&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122},{&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122,&p_1152->g_122}}};
            int32_t **l_469 = &l_47;
            uint64_t l_510 = 18446744073709551615UL;
            int32_t l_513 = (-8L);
            uint32_t l_564[1];
            uint16_t *l_595 = (void*)0;
            int64_t l_623 = 0x5F3DEA57FB35ECB3L;
            uint64_t *l_656 = &l_510;
            uint32_t **l_681 = &l_491;
            int32_t l_754 = 0x26AFEBC8L;
            uint64_t l_806 = 9UL;
            int i, j, k;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                    l_395[i][j] = 0x7C7A3348L;
            }
            for (i = 0; i < 1; i++)
                l_564[i] = 4UL;
            for (p_1152->g_244 = 0; (p_1152->g_244 <= 0); p_1152->g_244 += 1)
            { /* block id: 173 */
                uint32_t *l_373 = &p_1152->g_191;
                uint32_t **l_372 = &l_373;
                int32_t l_375 = (-1L);
                int32_t l_376[8];
                int i, j;
                for (i = 0; i < 8; i++)
                    l_376[i] = 0x11EB25D7L;
                l_375 = (~((l_49 != (void*)0) <= (p_1152->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1152->tid, 1))] | ((FAKE_DIVERGE(p_1152->group_0_offset, get_group_id(0), 10) != ((safe_add_func_uint64_t_u_u(p_1152->g_55, (FAKE_DIVERGE(p_1152->group_0_offset, get_group_id(0), 10) >= ((*l_50) = ((safe_rshift_func_uint8_t_u_u((((((safe_div_func_uint32_t_u_u(((((void*)0 != l_337) , (safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s(1UL, 10)), (&p_1152->g_164 == ((*l_372) = (void*)0))))) ^ l_374), (*p_1152->g_265))) < 0x6609B1DBF76F78F5L) && 0x14A2L) , 0UL) > GROUP_DIVERGE(1, 1)), 1)) >= 255UL))))) != (-1L))) & p_1152->g_100))));
                p_1152->g_380[3]--;
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_1152->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[(safe_mod_func_uint32_t_u_u(p_34, 10))][(safe_mod_func_uint32_t_u_u(p_1152->tid, 1))]));
                for (l_378 = 0; (l_378 <= 0); l_378 += 1)
                { /* block id: 183 */
                    uint32_t l_383[2][5] = {{0xFB90ED74L,0xFB90ED74L,0xFB90ED74L,0xFB90ED74L,0xFB90ED74L},{0xFB90ED74L,0xFB90ED74L,0xFB90ED74L,0xFB90ED74L,0xFB90ED74L}};
                    int32_t l_392 = 0x6C5B2D2DL;
                    uint64_t *l_393[10][4] = {{&p_1152->g_279,&l_56,&p_1152->g_279,&l_56},{&p_1152->g_279,&l_56,&p_1152->g_279,&l_56},{&p_1152->g_279,&l_56,&p_1152->g_279,&l_56},{&p_1152->g_279,&l_56,&p_1152->g_279,&l_56},{&p_1152->g_279,&l_56,&p_1152->g_279,&l_56},{&p_1152->g_279,&l_56,&p_1152->g_279,&l_56},{&p_1152->g_279,&l_56,&p_1152->g_279,&l_56},{&p_1152->g_279,&l_56,&p_1152->g_279,&l_56},{&p_1152->g_279,&l_56,&p_1152->g_279,&l_56},{&p_1152->g_279,&l_56,&p_1152->g_279,&l_56}};
                    int i, j, k;
                    ++l_383[0][1];
                    for (l_350 = 0; (l_350 >= 0); l_350 -= 1)
                    { /* block id: 187 */
                        return l_50;
                    }
                    l_404 |= (GROUP_DIVERGE(0, 1) & (((safe_mod_func_int8_t_s_s((safe_add_func_int16_t_s_s(((safe_mul_func_int8_t_s_s((((p_1152->g_168[l_378][l_56][(l_378 + 2)] != (((*l_359) = p_1152->g_360) == (l_358 = p_1152->g_360))) && (p_1152->g_279--)) , p_1152->g_128), p_1152->g_55)) != ((safe_sub_func_int16_t_s_s(p_35, 0L)) & (l_374 > (safe_add_func_int8_t_s_s((safe_div_func_uint8_t_u_u((*l_47), 5UL)), p_1152->g_241))))), p_35)), (-7L))) == (*l_49)) <= p_1152->g_122));
                }
            }
        }
        return l_491;
    }
    else
    { /* block id: 382 */
        l_830 = (void*)0;
    }
    for (l_677 = (-18); (l_677 <= 22); l_677++)
    { /* block id: 387 */
        uint64_t l_840 = 0UL;
        int32_t l_856 = (-10L);
        uint16_t l_859 = 65535UL;
        int32_t l_860 = 0x4AA14BF6L;
        l_860 = (safe_mod_func_int32_t_s_s((((*l_47) = 0L) < ((!p_34) > 0x1EL)), (((((safe_lshift_func_int16_t_s_s((safe_div_func_uint16_t_u_u(1UL, (-4L))), 8)) , (l_840 = 0x45C08C8AL)) , (safe_rshift_func_uint8_t_u_s(((p_1152->g_244 |= (p_35 , ((l_858 = ((*p_1152->g_68) = (((safe_unary_minus_func_uint64_t_u(((*p_1152->g_68) < ((safe_sub_func_int64_t_s_s((safe_mul_func_uint8_t_u_u(((l_856 = ((safe_mod_func_uint64_t_u_u((~(safe_mod_func_uint32_t_u_u(((*p_1152->g_265) |= (safe_add_func_uint16_t_u_u((((safe_add_func_uint32_t_u_u(0UL, p_34)) | p_1152->g_716) || p_35), p_1152->g_296))), (-5L)))), p_35)) || p_35)) , p_1152->g_857), p_1152->g_110)), p_34)) <= p_1152->g_100)))) >= 0x6694L) <= p_35))) || (-1L)))) > p_35), 3))) , 0x7C8FC42DL) || l_859)));
    }
    return &p_1152->g_110;
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_4 p_1152->g_5
 * writes: p_1152->g_5
 */
uint64_t  func_38(uint16_t  p_39, uint32_t  p_40, uint64_t  p_41, struct S0 * p_1152)
{ /* block id: 13 */
    int32_t *l_42[7] = {&p_1152->g_5,&p_1152->g_5,&p_1152->g_5,&p_1152->g_5,&p_1152->g_5,&p_1152->g_5,&p_1152->g_5};
    int i;
    (*p_1152->g_4) ^= 6L;
    return p_1152->g_5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_110 p_1152->g_100 p_1152->g_122 p_1152->g_72 p_1152->g_5 p_1152->g_151 p_1152->g_164 p_1152->g_71 p_1152->g_comm_values p_1152->l_comm_values p_1152->g_159 p_1152->g_68 p_1152->g_55 p_1152->g_190 p_1152->g_54 p_1152->g_244 p_1152->g_279 p_1152->g_171 p_1152->g_81 p_1152->g_191 p_1152->g_168 p_1152->g_296 p_1152->g_3
 * writes: p_1152->g_110 p_1152->g_81 p_1152->g_122 p_1152->g_128 p_1152->g_151 p_1152->g_164 p_1152->g_72 p_1152->g_168 p_1152->g_171 p_1152->g_190 p_1152->g_191 p_1152->g_5 p_1152->g_233 p_1152->g_55 p_1152->g_244 p_1152->g_265 p_1152->g_279 p_1152->g_295 p_1152->g_296
 */
int32_t ** func_59(int32_t * p_60, int32_t ** p_61, uint32_t * p_62, int32_t  p_63, int32_t ** p_64, struct S0 * p_1152)
{ /* block id: 30 */
    int32_t l_120 = 0x69FA02E7L;
    int32_t l_154 = 0x72F4C186L;
    int32_t l_156 = 0L;
    int32_t l_158[8] = {0L,(-1L),0L,0L,(-1L),0L,0L,(-1L)};
    uint32_t l_169 = 0xE3779D11L;
    uint32_t l_207 = 2UL;
    int32_t l_275 = 1L;
    int16_t *l_276 = &p_1152->g_122;
    int8_t *l_315 = &p_1152->g_295;
    int8_t *l_317 = &p_1152->g_233;
    int8_t **l_316 = &l_317;
    int32_t ***l_318 = &p_1152->g_71;
    int i;
    for (p_1152->g_110 = (-25); (p_1152->g_110 == 13); p_1152->g_110 = safe_add_func_int16_t_s_s(p_1152->g_110, 4))
    { /* block id: 33 */
        uint32_t *l_119 = &p_1152->g_110;
        int32_t l_130 = 0x0FA5C3DAL;
        int32_t l_155[4][7];
        int16_t *l_189 = &p_1152->g_122;
        int32_t **l_268 = &p_1152->g_72;
        uint32_t l_272[3];
        int i, j;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 7; j++)
                l_155[i][j] = 0x732A4288L;
        }
        for (i = 0; i < 3; i++)
            l_272[i] = 0x0BF55125L;
        for (p_1152->g_81 = 0; (p_1152->g_81 > 8); p_1152->g_81 = safe_add_func_uint16_t_u_u(p_1152->g_81, 9))
        { /* block id: 36 */
            int16_t *l_121 = &p_1152->g_122;
            uint16_t *l_127 = &p_1152->g_128;
            uint32_t l_129 = 0UL;
            int32_t l_157 = 0x7A08BB58L;
            int32_t l_242 = 1L;
            int32_t l_243 = 0x37AFEDB2L;
            if (((safe_rshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_u(p_1152->g_100, 7)), 1)) < ((((&p_1152->g_71 != (void*)0) < (((*l_121) &= (65535UL == (l_120 = (&p_1152->g_110 == l_119)))) ^ ((safe_div_func_int64_t_s_s(((((*l_127) = (safe_rshift_func_int16_t_s_s(p_63, 2))) , ((((void*)0 != p_60) && (*p_1152->g_72)) | 0x264474F4L)) < 0x187919BBL), p_63)) , l_129))) >= l_130) , (*p_1152->g_72))))
            { /* block id: 40 */
                int8_t l_161 = 1L;
                int32_t l_162 = (-2L);
                (*p_60) |= ((void*)0 != &p_1152->g_110);
                for (p_1152->g_128 = (-5); (p_1152->g_128 < 4); p_1152->g_128 = safe_add_func_int16_t_s_s(p_1152->g_128, 6))
                { /* block id: 44 */
                    int32_t l_160 = 1L;
                    int32_t l_163 = 0L;
                    for (p_63 = 25; (p_63 <= 27); p_63 = safe_add_func_int8_t_s_s(p_63, 1))
                    { /* block id: 47 */
                        int32_t *l_135 = (void*)0;
                        int32_t *l_136 = &l_130;
                        int32_t *l_137 = &p_1152->g_55;
                        int32_t *l_138 = (void*)0;
                        int32_t *l_139 = &p_1152->g_5;
                        int32_t *l_140 = &p_1152->g_55;
                        int32_t *l_141 = &p_1152->g_5;
                        int32_t *l_142 = (void*)0;
                        int32_t *l_143 = &l_130;
                        int32_t *l_144 = &p_1152->g_5;
                        int32_t *l_145 = &l_130;
                        int32_t *l_146 = &p_1152->g_5;
                        int32_t *l_147 = &p_1152->g_55;
                        int32_t *l_148 = (void*)0;
                        int32_t *l_149 = &p_1152->g_5;
                        int32_t *l_150[8][9] = {{&p_1152->g_5,&p_1152->g_5,(void*)0,&p_1152->g_55,(void*)0,&p_1152->g_55,&p_1152->g_55,&l_130,&p_1152->g_55},{&p_1152->g_5,&p_1152->g_5,(void*)0,&p_1152->g_55,(void*)0,&p_1152->g_55,&p_1152->g_55,&l_130,&p_1152->g_55},{&p_1152->g_5,&p_1152->g_5,(void*)0,&p_1152->g_55,(void*)0,&p_1152->g_55,&p_1152->g_55,&l_130,&p_1152->g_55},{&p_1152->g_5,&p_1152->g_5,(void*)0,&p_1152->g_55,(void*)0,&p_1152->g_55,&p_1152->g_55,&l_130,&p_1152->g_55},{&p_1152->g_5,&p_1152->g_5,(void*)0,&p_1152->g_55,(void*)0,&p_1152->g_55,&p_1152->g_55,&l_130,&p_1152->g_55},{&p_1152->g_5,&p_1152->g_5,(void*)0,&p_1152->g_55,(void*)0,&p_1152->g_55,&p_1152->g_55,&l_130,&p_1152->g_55},{&p_1152->g_5,&p_1152->g_5,(void*)0,&p_1152->g_55,(void*)0,&p_1152->g_55,&p_1152->g_55,&l_130,&p_1152->g_55},{&p_1152->g_5,&p_1152->g_5,(void*)0,&p_1152->g_55,(void*)0,&p_1152->g_55,&p_1152->g_55,&l_130,&p_1152->g_55}};
                        int i, j;
                        ++p_1152->g_151;
                        p_1152->g_164++;
                        (*p_1152->g_71) = (p_1152->g_110 , &l_158[0]);
                        if (l_156)
                            break;
                    }
                }
            }
            else
            { /* block id: 54 */
                uint8_t *l_167 = &p_1152->g_168[0][5][3];
                uint8_t *l_170[5] = {&p_1152->g_171,&p_1152->g_171,&p_1152->g_171,&p_1152->g_171,&p_1152->g_171};
                int32_t l_228 = 0x2797FBBEL;
                int64_t *l_229 = (void*)0;
                int64_t *l_230 = (void*)0;
                int64_t *l_231[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int8_t *l_232 = &p_1152->g_233;
                int32_t *l_234 = &p_1152->g_55;
                int i;
                l_158[7] = (((((l_157 ^= (l_130 |= (((((*p_61) = (*p_61)) == (void*)0) ^ ((*l_167) = 0x62L)) != l_169))) | (safe_add_func_int32_t_s_s(((*p_60) = (FAKE_DIVERGE(p_1152->local_0_offset, get_local_id(0), 10) , (safe_mul_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1152->global_0_offset, get_global_id(0), 10), (0x32BD85DC1642A789L ^ p_1152->g_100))) , l_129), (0x06818F9B38B2FA42L & (((p_1152->g_comm_values[p_1152->tid] , p_1152->g_151) , 0x355E81BF0A7C6E3EL) && l_155[2][0])))))), p_1152->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1152->tid, 1))]))) <= l_158[0]) >= 0x51EDEC69L) < p_1152->g_comm_values[p_1152->tid]);
                for (p_1152->g_171 = 0; (p_1152->g_171 < 45); ++p_1152->g_171)
                { /* block id: 63 */
                    int32_t *l_192 = &l_156;
                    int8_t l_199[8] = {0x60L,0x17L,0x60L,0x60L,0x17L,0x60L,0x60L,0x17L};
                    int i;
                    for (p_1152->g_122 = 0; (p_1152->g_122 < 22); p_1152->g_122 = safe_add_func_int16_t_s_s(p_1152->g_122, 2))
                    { /* block id: 66 */
                        (*p_1152->g_71) = (*p_1152->g_71);
                    }
                    for (p_1152->g_128 = (-14); (p_1152->g_128 != 25); p_1152->g_128++)
                    { /* block id: 71 */
                        int32_t *l_184 = &l_158[0];
                        int32_t *l_193 = (void*)0;
                        int32_t *l_194 = (void*)0;
                        int32_t *l_195 = &l_130;
                        int32_t *l_196 = &l_156;
                        int32_t *l_197 = (void*)0;
                        int32_t *l_198[10][10][2] = {{{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0}},{{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0}},{{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0}},{{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0}},{{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0}},{{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0}},{{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0}},{{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0}},{{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0}},{{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0},{&l_155[2][0],(void*)0}}};
                        uint8_t l_200 = 0xDAL;
                        int i, j, k;
                        (*p_1152->g_71) = l_184;
                        (*p_61) = ((((p_1152->g_191 = ((p_1152->g_190 = ((safe_rshift_func_int8_t_s_u((((0x22FE48773B0532C7L >= p_63) , 0x9534532C3757FDF3L) | 18446744073709551615UL), p_1152->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1152->tid, 1))])) || (safe_rshift_func_int16_t_s_u(((l_189 != (void*)0) > p_1152->g_159), ((-5L) && p_63))))) & p_63)) == l_158[0]) <= (*l_184)) , l_192);
                        (*p_60) ^= (*l_192);
                        --l_200;
                    }
                    for (p_1152->g_191 = 23; (p_1152->g_191 <= 22); p_1152->g_191--)
                    { /* block id: 81 */
                        (*p_60) |= l_155[3][5];
                    }
                    for (l_120 = (-8); (l_120 == (-26)); --l_120)
                    { /* block id: 86 */
                        (*p_1152->g_72) = (*p_1152->g_68);
                        if ((**p_61))
                            continue;
                        (*p_61) = (*p_1152->g_71);
                        --l_207;
                    }
                }
                (*l_234) = ((*p_60) = ((safe_rshift_func_int16_t_s_u((safe_div_func_uint64_t_u_u((safe_add_func_int64_t_s_s(((0x76459BDCL >= (((*l_232) = (safe_lshift_func_int8_t_s_s((safe_add_func_int32_t_s_s((((((((*p_62) != l_155[2][0]) & p_1152->g_190) && (!(*p_62))) , ((*p_62) = ((safe_rshift_func_int16_t_s_u((safe_div_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(((*l_167) = 254UL), (p_63 || GROUP_DIVERGE(2, 1)))), ((*l_127) = (((l_155[1][0] &= (p_63 <= (l_154 = ((*p_1152->g_72) , l_228)))) , 0x7C10FBB080F592F2L) == 0x37576DCB222EA5A7L)))), 0x5DAF615AE1F95EBBL)), 8)) , GROUP_DIVERGE(2, 1)))) <= l_228) != p_1152->g_54), p_1152->g_54)), l_169))) | p_1152->g_190)) && l_228), 0x19D36E7CB702D6E2L)), l_130)), 2)) ^ p_1152->g_54));
            }
            if (l_155[2][0])
                continue;
            for (p_1152->g_233 = 0; (p_1152->g_233 < 19); p_1152->g_233 = safe_add_func_uint16_t_u_u(p_1152->g_233, 1))
            { /* block id: 105 */
                int32_t *l_237 = &l_155[2][0];
                int32_t *l_238 = &l_155[1][3];
                int32_t *l_239 = &l_155[0][3];
                int32_t *l_240[3];
                int64_t l_273[2];
                uint8_t *l_314 = (void*)0;
                int i;
                for (i = 0; i < 3; i++)
                    l_240[i] = (void*)0;
                for (i = 0; i < 2; i++)
                    l_273[i] = 0x6CD3ABC8045654F3L;
                p_1152->g_244--;
                for (p_1152->g_244 = 9; (p_1152->g_244 < 56); p_1152->g_244 = safe_add_func_int8_t_s_s(p_1152->g_244, 9))
                { /* block id: 109 */
                    uint32_t **l_263 = &l_119;
                    uint32_t *l_264 = &p_1152->g_244;
                    int32_t **l_269 = (void*)0;
                    int32_t ***l_270 = (void*)0;
                    int32_t ***l_271 = &l_269;
                    uint32_t *l_274 = &p_1152->g_191;
                    int32_t l_277 = 0x470AE17FL;
                    int32_t l_278 = 0x52073C47L;
                    for (p_1152->g_171 = 0; (p_1152->g_171 >= 18); p_1152->g_171++)
                    { /* block id: 112 */
                        (*p_60) &= (safe_sub_func_int8_t_s_s(p_63, (p_1152->g_244 || FAKE_DIVERGE(p_1152->global_0_offset, get_global_id(0), 10))));
                        return &p_1152->g_72;
                    }
                    if ((safe_rshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s((65535UL <= (((((((*l_274) = (safe_mod_func_int64_t_s_s(((((safe_mul_func_uint8_t_u_u((((safe_mul_func_uint16_t_u_u((((*l_263) = &p_1152->g_244) == (p_1152->g_265 = l_264)), l_155[2][0])) & ((*l_127) = (safe_rshift_func_int8_t_s_s(((l_268 == ((*l_271) = l_269)) & p_1152->g_244), (l_272[1] = 0x0DL))))) >= l_207), 0UL)) , p_62) != (void*)0) < p_63), l_273[0]))) , 0x77BCL) , (*p_62)) | (*p_1152->g_72)) != l_242) & l_243)), l_275)) > p_63), (*l_237))))
                    { /* block id: 122 */
                        (*l_237) = (l_276 != (void*)0);
                        --p_1152->g_279;
                        (*p_61) = (*p_1152->g_71);
                        (*p_60) &= (**p_61);
                    }
                    else
                    { /* block id: 127 */
                        int32_t **l_292 = &l_237;
                        int64_t *l_293 = &l_273[0];
                        int8_t *l_294 = &p_1152->g_295;
                        (*p_1152->g_72) &= ((p_1152->g_171 <= (p_1152->g_279 && p_1152->g_159)) < ((0L && ((((safe_div_func_uint32_t_u_u(((safe_mod_func_int64_t_s_s(((((((*l_294) = ((FAKE_DIVERGE(p_1152->global_1_offset, get_global_id(1), 10) , p_63) , (p_1152->g_110 ^ ((*l_293) &= (safe_lshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((18446744073709551615UL < (((((void*)0 == l_292) < p_63) , p_1152->g_81) <= p_1152->g_191)), 4)), p_1152->g_190)))))) | p_1152->g_168[0][1][2]) && p_1152->g_190) && p_63) && (*l_237)), p_63)) == 4294967295UL), 0x0878E13CL)) , (**l_292)) , p_63) & p_1152->g_168[0][5][3])) >= p_63));
                        return &p_1152->g_72;
                    }
                    p_1152->g_296--;
                }
                if ((safe_lshift_func_uint16_t_u_u(9UL, 10)))
                { /* block id: 135 */
                    int32_t l_303 = 7L;
                    (*l_238) |= ((((safe_mul_func_uint16_t_u_u(((*l_127) = ((+(p_63 < p_63)) || l_303)), (safe_lshift_func_uint16_t_u_s(p_1152->g_296, (safe_rshift_func_uint16_t_u_u(l_129, 2)))))) , ((safe_rshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s((0L != (!p_63)), (((~(p_1152->g_191 != l_156)) > 0x32L) ^ p_1152->g_3))), l_207)) && 0x007D0744L)) || (-2L)) , (*p_1152->g_68));
                    if ((**p_64))
                        break;
                }
                else
                { /* block id: 139 */
                    return &p_1152->g_72;
                }
                (**l_268) = (l_157 ^ ((void*)0 != l_314));
            }
            if ((*p_1152->g_68))
                continue;
        }
    }
    (**p_61) ^= (((l_315 == ((*l_316) = l_315)) | (p_1152->g_171 != (((void*)0 == l_318) , (&p_1152->g_164 != (void*)0)))) , (0x54L <= ((void*)0 != &p_64)));
    return &p_1152->g_72;
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_4 p_1152->g_5 p_1152->g_68 p_1152->g_71
 * writes: p_1152->g_55
 */
int32_t ** func_65(int32_t  p_66, struct S0 * p_1152)
{ /* block id: 21 */
    int32_t *l_70[6][8][2] = {{{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5}},{{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5}},{{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5}},{{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5}},{{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5}},{{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5},{&p_1152->g_55,&p_1152->g_5}}};
    int32_t **l_69 = &l_70[0][3][1];
    int i, j, k;
    (*p_1152->g_68) = (*p_1152->g_4);
    return p_1152->g_71;
}


/* ------------------------------------------ */
/* 
 * reads : p_1152->g_100
 * writes: p_1152->g_100
 */
uint64_t  func_73(int32_t ** p_74, int32_t ** p_75, int32_t  p_76, struct S0 * p_1152)
{ /* block id: 25 */
    int8_t l_79 = 1L;
    int32_t *l_80 = &p_1152->g_81;
    int32_t *l_82 = &p_1152->g_81;
    int32_t *l_83 = &p_1152->g_81;
    int32_t l_84 = 0x696D9C50L;
    int32_t *l_85 = &p_1152->g_81;
    int32_t *l_86 = (void*)0;
    int32_t *l_87 = (void*)0;
    int32_t *l_88 = &p_1152->g_81;
    int32_t *l_89 = &l_84;
    int32_t *l_90 = &p_1152->g_81;
    int32_t l_91 = 0x54B686F2L;
    int32_t *l_92 = &p_1152->g_81;
    int32_t *l_93 = &l_84;
    int32_t *l_94 = &l_84;
    int32_t *l_95 = &l_84;
    int32_t *l_96 = &l_84;
    int32_t *l_97 = &p_1152->g_81;
    int32_t *l_98 = &l_84;
    int32_t *l_99[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    p_1152->g_100++;
    (*p_74) = &l_84;
    return p_76;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_comm_values[i] = 1;
    struct S0 c_1153;
    struct S0* p_1152 = &c_1153;
    struct S0 c_1154 = {
        4294967295UL, // p_1152->g_3
        1L, // p_1152->g_5
        &p_1152->g_5, // p_1152->g_4
        (-1L), // p_1152->g_54
        (-6L), // p_1152->g_55
        &p_1152->g_55, // p_1152->g_68
        &p_1152->g_5, // p_1152->g_72
        &p_1152->g_72, // p_1152->g_71
        0x27687144L, // p_1152->g_81
        8UL, // p_1152->g_100
        0xE912FB0EL, // p_1152->g_110
        (-10L), // p_1152->g_122
        0x5949L, // p_1152->g_128
        0x50DF9A62L, // p_1152->g_151
        0x1FBB9A9CL, // p_1152->g_159
        0x450DFDFFL, // p_1152->g_164
        {{{0x1CL,0x1CL,0x1CL,0x1CL,0x1CL,0x1CL},{0x1CL,0x1CL,0x1CL,0x1CL,0x1CL,0x1CL},{0x1CL,0x1CL,0x1CL,0x1CL,0x1CL,0x1CL},{0x1CL,0x1CL,0x1CL,0x1CL,0x1CL,0x1CL},{0x1CL,0x1CL,0x1CL,0x1CL,0x1CL,0x1CL},{0x1CL,0x1CL,0x1CL,0x1CL,0x1CL,0x1CL}}}, // p_1152->g_168
        0xDFL, // p_1152->g_171
        0x708EF45CL, // p_1152->g_190
        4294967295UL, // p_1152->g_191
        (-1L), // p_1152->g_233
        0x784966DFL, // p_1152->g_241
        0x967A072EL, // p_1152->g_244
        &p_1152->g_190, // p_1152->g_265
        0x50F69613689FBD98L, // p_1152->g_279
        8L, // p_1152->g_295
        0x18AEE074L, // p_1152->g_296
        (void*)0, // p_1152->g_360
        {0x41E15819L,0x41E15819L,0x41E15819L,0x41E15819L,0x41E15819L,0x41E15819L,0x41E15819L,0x41E15819L,0x41E15819L}, // p_1152->g_380
        0x2012BC01L, // p_1152->g_434
        0x4625L, // p_1152->g_446
        (void*)0, // p_1152->g_493
        &p_1152->g_493, // p_1152->g_492
        65535UL, // p_1152->g_532
        (void*)0, // p_1152->g_570
        &p_1152->g_570, // p_1152->g_569
        0x536BL, // p_1152->g_594
        0L, // p_1152->g_709
        (-1L), // p_1152->g_715
        0x4DA35EF6E6E9056AL, // p_1152->g_716
        0x7AB3BDDBL, // p_1152->g_717
        (-1L), // p_1152->g_720
        0UL, // p_1152->g_757
        &p_1152->g_71, // p_1152->g_797
        0x85FBAD99L, // p_1152->g_828
        0xFD1BAB71L, // p_1152->g_857
        0xE16D071FL, // p_1152->g_911
        &p_1152->g_168[0][5][3], // p_1152->g_930
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1152->g_929
        &p_1152->g_929[0][5], // p_1152->g_931
        0L, // p_1152->g_934
        0L, // p_1152->g_935
        3UL, // p_1152->g_936
        1UL, // p_1152->g_970
        &p_1152->g_265, // p_1152->g_982
        &p_1152->g_982, // p_1152->g_981
        {{&p_1152->g_128,&p_1152->g_757,&p_1152->g_128,&p_1152->g_128,&p_1152->g_757,&p_1152->g_128,&p_1152->g_128},{&p_1152->g_128,&p_1152->g_757,&p_1152->g_128,&p_1152->g_128,&p_1152->g_757,&p_1152->g_128,&p_1152->g_128},{&p_1152->g_128,&p_1152->g_757,&p_1152->g_128,&p_1152->g_128,&p_1152->g_757,&p_1152->g_128,&p_1152->g_128},{&p_1152->g_128,&p_1152->g_757,&p_1152->g_128,&p_1152->g_128,&p_1152->g_757,&p_1152->g_128,&p_1152->g_128},{&p_1152->g_128,&p_1152->g_757,&p_1152->g_128,&p_1152->g_128,&p_1152->g_757,&p_1152->g_128,&p_1152->g_128},{&p_1152->g_128,&p_1152->g_757,&p_1152->g_128,&p_1152->g_128,&p_1152->g_757,&p_1152->g_128,&p_1152->g_128},{&p_1152->g_128,&p_1152->g_757,&p_1152->g_128,&p_1152->g_128,&p_1152->g_757,&p_1152->g_128,&p_1152->g_128}}, // p_1152->g_1021
        &p_1152->g_1021[6][3], // p_1152->g_1020
        {&p_1152->g_720,&p_1152->g_720,&p_1152->g_720,&p_1152->g_720,&p_1152->g_720,&p_1152->g_720}, // p_1152->g_1025
        &p_1152->g_1025[5], // p_1152->g_1024
        &p_1152->g_279, // p_1152->g_1040
        &p_1152->g_1040, // p_1152->g_1039
        0x64C081D2L, // p_1152->g_1082
        0x5981AFBDC727B6F3L, // p_1152->g_1087
        0x185C1622F47FA468L, // p_1152->g_1088
        0L, // p_1152->g_1135
        0x29249F80FA3E732BL, // p_1152->g_1137
        0x0398L, // p_1152->g_1149
        sequence_input[get_global_id(0)], // p_1152->global_0_offset
        sequence_input[get_global_id(1)], // p_1152->global_1_offset
        sequence_input[get_global_id(2)], // p_1152->global_2_offset
        sequence_input[get_local_id(0)], // p_1152->local_0_offset
        sequence_input[get_local_id(1)], // p_1152->local_1_offset
        sequence_input[get_local_id(2)], // p_1152->local_2_offset
        sequence_input[get_group_id(0)], // p_1152->group_0_offset
        sequence_input[get_group_id(1)], // p_1152->group_1_offset
        sequence_input[get_group_id(2)], // p_1152->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[0][get_linear_local_id()])), // p_1152->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1153 = c_1154;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1152);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1152->g_3, "p_1152->g_3", print_hash_value);
    transparent_crc(p_1152->g_5, "p_1152->g_5", print_hash_value);
    transparent_crc(p_1152->g_54, "p_1152->g_54", print_hash_value);
    transparent_crc(p_1152->g_55, "p_1152->g_55", print_hash_value);
    transparent_crc(p_1152->g_81, "p_1152->g_81", print_hash_value);
    transparent_crc(p_1152->g_100, "p_1152->g_100", print_hash_value);
    transparent_crc(p_1152->g_110, "p_1152->g_110", print_hash_value);
    transparent_crc(p_1152->g_122, "p_1152->g_122", print_hash_value);
    transparent_crc(p_1152->g_128, "p_1152->g_128", print_hash_value);
    transparent_crc(p_1152->g_151, "p_1152->g_151", print_hash_value);
    transparent_crc(p_1152->g_159, "p_1152->g_159", print_hash_value);
    transparent_crc(p_1152->g_164, "p_1152->g_164", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1152->g_168[i][j][k], "p_1152->g_168[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1152->g_171, "p_1152->g_171", print_hash_value);
    transparent_crc(p_1152->g_190, "p_1152->g_190", print_hash_value);
    transparent_crc(p_1152->g_191, "p_1152->g_191", print_hash_value);
    transparent_crc(p_1152->g_233, "p_1152->g_233", print_hash_value);
    transparent_crc(p_1152->g_241, "p_1152->g_241", print_hash_value);
    transparent_crc(p_1152->g_244, "p_1152->g_244", print_hash_value);
    transparent_crc(p_1152->g_279, "p_1152->g_279", print_hash_value);
    transparent_crc(p_1152->g_295, "p_1152->g_295", print_hash_value);
    transparent_crc(p_1152->g_296, "p_1152->g_296", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1152->g_380[i], "p_1152->g_380[i]", print_hash_value);

    }
    transparent_crc(p_1152->g_434, "p_1152->g_434", print_hash_value);
    transparent_crc(p_1152->g_446, "p_1152->g_446", print_hash_value);
    transparent_crc(p_1152->g_532, "p_1152->g_532", print_hash_value);
    transparent_crc(p_1152->g_594, "p_1152->g_594", print_hash_value);
    transparent_crc(p_1152->g_709, "p_1152->g_709", print_hash_value);
    transparent_crc(p_1152->g_715, "p_1152->g_715", print_hash_value);
    transparent_crc(p_1152->g_716, "p_1152->g_716", print_hash_value);
    transparent_crc(p_1152->g_717, "p_1152->g_717", print_hash_value);
    transparent_crc(p_1152->g_720, "p_1152->g_720", print_hash_value);
    transparent_crc(p_1152->g_757, "p_1152->g_757", print_hash_value);
    transparent_crc(p_1152->g_828, "p_1152->g_828", print_hash_value);
    transparent_crc(p_1152->g_857, "p_1152->g_857", print_hash_value);
    transparent_crc(p_1152->g_911, "p_1152->g_911", print_hash_value);
    transparent_crc(p_1152->g_934, "p_1152->g_934", print_hash_value);
    transparent_crc(p_1152->g_935, "p_1152->g_935", print_hash_value);
    transparent_crc(p_1152->g_936, "p_1152->g_936", print_hash_value);
    transparent_crc(p_1152->g_970, "p_1152->g_970", print_hash_value);
    transparent_crc(p_1152->g_1082, "p_1152->g_1082", print_hash_value);
    transparent_crc(p_1152->g_1087, "p_1152->g_1087", print_hash_value);
    transparent_crc(p_1152->g_1088, "p_1152->g_1088", print_hash_value);
    transparent_crc(p_1152->g_1135, "p_1152->g_1135", print_hash_value);
    transparent_crc(p_1152->g_1137, "p_1152->g_1137", print_hash_value);
    transparent_crc(p_1152->g_1149, "p_1152->g_1149", print_hash_value);
    transparent_crc(p_1152->l_comm_values[get_linear_local_id()], "p_1152->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1152->g_comm_values[get_linear_group_id() * 1 + get_linear_local_id()], "p_1152->g_comm_values[get_linear_group_id() * 1 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
