// ---fake_divergence ---inter_thread_comm -g 48,89,1 -l 3,1,1
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

__constant uint32_t permutations[10][3] = {
{1,2,0}, // permutation 0
{1,0,2}, // permutation 1
{1,2,0}, // permutation 2
{1,2,0}, // permutation 3
{1,2,0}, // permutation 4
{2,0,1}, // permutation 5
{2,0,1}, // permutation 6
{1,0,2}, // permutation 7
{2,0,1}, // permutation 8
{2,0,1} // permutation 9
};

// Seed: 103

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2;
    int32_t g_3[6][7];
    int32_t g_6;
    int32_t g_48;
    int32_t g_53;
    int64_t g_55;
    int16_t g_63;
    int32_t g_76;
    uint32_t g_86;
    uint16_t g_112;
    uint8_t g_113;
    uint16_t g_116;
    int32_t *g_124;
    int8_t g_150;
    int32_t g_153;
    uint64_t g_157;
    uint64_t g_159[6];
    uint64_t g_161[3][3][8];
    uint64_t g_165[7][2][3];
    uint32_t g_171;
    int64_t g_212;
    volatile int64_t * volatile g_217;
    volatile int64_t * volatile *g_216;
    uint32_t g_235;
    int32_t g_259;
    uint8_t g_260[2];
    uint32_t g_278[8][2][2];
    int32_t *g_279[4];
    int32_t **g_281;
    int32_t ***g_280[2];
    int16_t g_311;
    uint32_t g_322[8][7];
    uint32_t g_326;
    volatile int32_t *g_344;
    volatile int32_t **g_343;
    uint64_t g_401;
    uint32_t g_421;
    int32_t *g_468;
    int16_t g_483;
    int8_t *g_519;
    int32_t *g_584;
    int32_t **g_583[4][9];
    int32_t ***g_582[3];
    int8_t **g_595[5][6];
    int8_t ***g_594;
    int16_t *g_654;
    uint64_t g_827;
    uint16_t **g_857;
    int32_t ****g_884;
    int32_t ***g_963;
    int16_t *g_979;
    int16_t g_997;
    int8_t g_1043;
    int64_t g_1062[3][9][6];
    volatile uint32_t g_1123;
    volatile uint32_t *g_1122;
    volatile uint32_t ** volatile g_1121;
    int32_t g_1130[8];
    int32_t g_1147[1][4][7];
    uint16_t g_1174;
    uint32_t g_1175;
    volatile int32_t g_1177;
    uint64_t *g_1179[2];
    uint64_t ** volatile g_1178;
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
uint64_t  func_1(struct S0 * p_1197);
int32_t  func_9(int8_t  p_10, struct S0 * p_1197);
uint8_t  func_15(int16_t  p_16, int16_t  p_17, struct S0 * p_1197);
int16_t  func_18(int32_t  p_19, int64_t  p_20, struct S0 * p_1197);
int64_t  func_26(uint16_t  p_27, int64_t  p_28, uint16_t  p_29, uint8_t  p_30, uint16_t  p_31, struct S0 * p_1197);
int32_t  func_33(uint32_t  p_34, uint32_t  p_35, uint32_t  p_36, int64_t  p_37, uint64_t  p_38, struct S0 * p_1197);
uint32_t  func_39(int16_t  p_40, uint16_t  p_41, uint64_t  p_42, uint64_t  p_43, struct S0 * p_1197);
int16_t  func_44(int16_t  p_45, struct S0 * p_1197);
uint32_t  func_65(int16_t * p_66, int16_t * p_67, struct S0 * p_1197);
int32_t  func_70(int32_t * p_71, struct S0 * p_1197);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1197->g_3 p_1197->g_6 p_1197->g_2 p_1197->l_comm_values p_1197->g_654 p_1197->g_483 p_1197->g_55 p_1197->g_124 p_1197->g_53 p_1197->g_281 p_1197->g_150 p_1197->g_161 p_1197->g_86 p_1197->g_113 p_1197->g_76 p_1197->g_157 p_1197->g_884 p_1197->g_280 p_1197->g_165 p_1197->g_112 p_1197->g_171 p_1197->g_63 p_1197->g_278 p_1197->g_159 p_1197->g_235 p_1197->g_212 p_1197->g_401 p_1197->g_48 p_1197->g_116
 * writes: p_1197->g_3 p_1197->g_6 p_1197->g_48 p_1197->g_124 p_1197->g_150 p_1197->g_53 p_1197->g_113 p_1197->g_157 p_1197->g_279 p_1197->g_112 p_1197->g_171 p_1197->g_963 p_1197->g_654 p_1197->g_979 p_1197->g_401 p_1197->g_116
 */
uint64_t  func_1(struct S0 * p_1197)
{ /* block id: 4 */
    int16_t l_684 = 0x2B84L;
    uint32_t l_899[2];
    int32_t l_953[5] = {0x62410DBDL,0x62410DBDL,0x62410DBDL,0x62410DBDL,0x62410DBDL};
    int32_t l_955 = 0x4729BF41L;
    uint8_t l_956[10][2][5] = {{{255UL,255UL,1UL,0x08L,0x08L},{255UL,255UL,1UL,0x08L,0x08L}},{{255UL,255UL,1UL,0x08L,0x08L},{255UL,255UL,1UL,0x08L,0x08L}},{{255UL,255UL,1UL,0x08L,0x08L},{255UL,255UL,1UL,0x08L,0x08L}},{{255UL,255UL,1UL,0x08L,0x08L},{255UL,255UL,1UL,0x08L,0x08L}},{{255UL,255UL,1UL,0x08L,0x08L},{255UL,255UL,1UL,0x08L,0x08L}},{{255UL,255UL,1UL,0x08L,0x08L},{255UL,255UL,1UL,0x08L,0x08L}},{{255UL,255UL,1UL,0x08L,0x08L},{255UL,255UL,1UL,0x08L,0x08L}},{{255UL,255UL,1UL,0x08L,0x08L},{255UL,255UL,1UL,0x08L,0x08L}},{{255UL,255UL,1UL,0x08L,0x08L},{255UL,255UL,1UL,0x08L,0x08L}},{{255UL,255UL,1UL,0x08L,0x08L},{255UL,255UL,1UL,0x08L,0x08L}}};
    int16_t l_1011[5][2] = {{0x5969L,0x5969L},{0x5969L,0x5969L},{0x5969L,0x5969L},{0x5969L,0x5969L},{0x5969L,0x5969L}};
    int16_t **l_1065 = &p_1197->g_654;
    int64_t l_1070 = (-1L);
    int16_t l_1104 = 1L;
    uint32_t *l_1111[3];
    uint32_t **l_1110[1][7] = {{(void*)0,&l_1111[2],(void*)0,(void*)0,&l_1111[2],(void*)0,(void*)0}};
    uint64_t l_1137 = 0x07F6AC14974EA1A1L;
    int16_t **l_1144 = (void*)0;
    int32_t l_1191 = (-8L);
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_899[i] = 0x79461278L;
    for (i = 0; i < 3; i++)
        l_1111[i] = &p_1197->g_421;
    for (p_1197->g_3[2][2] = 0; (p_1197->g_3[2][2] <= 0); p_1197->g_3[2][2]++)
    { /* block id: 7 */
        uint32_t l_21[7][6] = {{0xB994B748L,0x2A7E9F21L,0x9495E0E2L,0x2A7E9F21L,0xB994B748L,0xB994B748L},{0xB994B748L,0x2A7E9F21L,0x9495E0E2L,0x2A7E9F21L,0xB994B748L,0xB994B748L},{0xB994B748L,0x2A7E9F21L,0x9495E0E2L,0x2A7E9F21L,0xB994B748L,0xB994B748L},{0xB994B748L,0x2A7E9F21L,0x9495E0E2L,0x2A7E9F21L,0xB994B748L,0xB994B748L},{0xB994B748L,0x2A7E9F21L,0x9495E0E2L,0x2A7E9F21L,0xB994B748L,0xB994B748L},{0xB994B748L,0x2A7E9F21L,0x9495E0E2L,0x2A7E9F21L,0xB994B748L,0xB994B748L},{0xB994B748L,0x2A7E9F21L,0x9495E0E2L,0x2A7E9F21L,0xB994B748L,0xB994B748L}};
        int32_t l_984[7] = {4L,4L,4L,4L,4L,4L,4L};
        int16_t **l_985 = &p_1197->g_654;
        uint32_t l_1058 = 0x38D30368L;
        int32_t **l_1060 = &p_1197->g_279[3];
        int i, j;
        for (p_1197->g_6 = 29; (p_1197->g_6 != 13); p_1197->g_6 = safe_sub_func_int8_t_s_s(p_1197->g_6, 1))
        { /* block id: 10 */
            uint16_t l_32 = 0x00D3L;
            uint32_t l_691 = 4294967291UL;
            uint32_t l_692[9] = {0x139CD7D9L,0x139CD7D9L,0x139CD7D9L,0x139CD7D9L,0x139CD7D9L,0x139CD7D9L,0x139CD7D9L,0x139CD7D9L,0x139CD7D9L};
            uint8_t *l_693 = &p_1197->g_113;
            int32_t l_958 = (-1L);
            uint16_t *l_967 = &l_32;
            int16_t **l_978 = &p_1197->g_654;
            int i, j;
            if (func_9((p_1197->g_2 <= (safe_mul_func_uint16_t_u_u((((safe_add_func_uint8_t_u_u(func_15(func_18(l_21[3][1], ((safe_lshift_func_uint16_t_u_s((safe_mod_func_int64_t_s_s(func_26(p_1197->g_6, l_32, (p_1197->g_3[2][5] >= l_21[2][3]), ((*l_693) |= (func_33((func_39(func_44(p_1197->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1197->tid, 3))], p_1197), ((l_684 , (-7L)) == l_21[3][1]), l_21[3][1], p_1197->g_55, p_1197) ^ 0x66FEEF7BL), l_691, l_21[1][4], p_1197->g_161[2][2][0], p_1197->g_86, p_1197) > l_692[6])), p_1197->g_76, p_1197), GROUP_DIVERGE(1, 1))), 15)) > 0x5DF0A0DACEBE47CCL), p_1197), l_684, p_1197), l_899[0])) , l_21[5][5]) || l_899[0]), 0x7844L))), p_1197))
            { /* block id: 593 */
                return p_1197->g_63;
            }
            else
            { /* block id: 595 */
                uint32_t *l_954 = &l_691;
                int32_t l_957[6] = {0x20520EEBL,0x20520EEBL,0x20520EEBL,0x20520EEBL,0x20520EEBL,0x20520EEBL};
                int i;
                l_958 = ((((safe_rshift_func_int8_t_s_u((safe_mod_func_int32_t_s_s(3L, (safe_mul_func_uint16_t_u_u((safe_mod_func_int8_t_s_s((safe_div_func_int32_t_s_s((*p_1197->g_124), (safe_mod_func_int32_t_s_s((safe_mod_func_uint16_t_u_u(((safe_add_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u(l_899[0], ((0x5BL != (safe_sub_func_uint16_t_u_u(0UL, (l_899[0] , ((l_953[2] = l_21[1][3]) > (l_955 = ((*l_954) |= (&l_21[6][5] == &p_1197->g_278[5][1][1])))))))) , l_956[6][0][1]))) >= l_957[4]), 0x9CL)) < p_1197->g_278[2][0][0]), 0x7FFEL)), p_1197->g_3[3][2])))), l_692[3])), (*p_1197->g_654))))), l_21[1][5])) < (-7L)) != p_1197->g_53) ^ l_21[3][1]);
            }
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_1197->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 3)), permutations[(safe_mod_func_uint32_t_u_u(((safe_mod_func_uint8_t_u_u(((((*l_693) = (safe_add_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), ((l_953[1] |= (((+p_1197->g_159[5]) , ((*p_1197->g_884) != (p_1197->g_963 = (*p_1197->g_884)))) == 18446744073709551613UL)) != (safe_unary_minus_func_int16_t_s((*p_1197->g_654))))))) , ((safe_add_func_int8_t_s_s((0x0BEBL <= ((*l_967) |= p_1197->g_235)), (FAKE_DIVERGE(p_1197->group_2_offset, get_group_id(2), 10) , (safe_div_func_int16_t_s_s((((safe_lshift_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u(((safe_rshift_func_uint8_t_u_s((safe_rshift_func_uint8_t_u_s(l_21[3][1], (((p_1197->g_979 = ((*l_978) = l_967)) == &l_684) != l_21[0][5]))), 3)) , l_21[4][1]), l_21[0][2])), p_1197->g_212)) , l_958) > 0UL), p_1197->g_161[1][0][4]))))) | 0x39L)) || 1UL), l_21[4][1])) && l_21[5][1]), 10))][(safe_mod_func_uint32_t_u_u(p_1197->tid, 3))]));
            return l_692[6];
        }
        l_984[5] &= ((****p_1197->g_884) = (safe_add_func_int32_t_s_s(1L, (safe_sub_func_int8_t_s_s(1L, 0x27L)))));
        if ((l_985 == l_985))
        { /* block id: 614 */
            int16_t l_986 = 0x1094L;
            int32_t l_987 = 0x79D63828L;
            if (l_986)
                break;
            l_987 = (l_955 = 7L);
        }
        else
        { /* block id: 618 */
            int64_t l_992 = (-1L);
            uint64_t *l_1006 = &p_1197->g_159[5];
            int32_t *l_1047[6][4][1] = {{{&p_1197->g_153},{&p_1197->g_153},{&p_1197->g_153},{&p_1197->g_153}},{{&p_1197->g_153},{&p_1197->g_153},{&p_1197->g_153},{&p_1197->g_153}},{{&p_1197->g_153},{&p_1197->g_153},{&p_1197->g_153},{&p_1197->g_153}},{{&p_1197->g_153},{&p_1197->g_153},{&p_1197->g_153},{&p_1197->g_153}},{{&p_1197->g_153},{&p_1197->g_153},{&p_1197->g_153},{&p_1197->g_153}},{{&p_1197->g_153},{&p_1197->g_153},{&p_1197->g_153},{&p_1197->g_153}}};
            int32_t l_1145[1];
            int32_t l_1153 = 0x4F260FD4L;
            int32_t l_1185 = 0x6B40BB3DL;
            int32_t l_1190[7] = {1L,1L,1L,1L,1L,1L,1L};
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_1145[i] = 0L;
            for (p_1197->g_150 = 2; (p_1197->g_150 >= 0); p_1197->g_150 -= 1)
            { /* block id: 621 */
                uint32_t l_989 = 1UL;
                (****p_1197->g_884) |= l_21[0][1];
                if (l_984[5])
                    continue;
                for (p_1197->g_401 = 0; (p_1197->g_401 <= 2); p_1197->g_401 += 1)
                { /* block id: 626 */
                    for (p_1197->g_48 = 0; (p_1197->g_48 <= 2); p_1197->g_48 += 1)
                    { /* block id: 629 */
                        int32_t *l_988[7][2] = {{&p_1197->g_48,&l_984[1]},{&p_1197->g_48,&l_984[1]},{&p_1197->g_48,&l_984[1]},{&p_1197->g_48,&l_984[1]},{&p_1197->g_48,&l_984[1]},{&p_1197->g_48,&l_984[1]},{&p_1197->g_48,&l_984[1]}};
                        int i, j;
                        --l_989;
                    }
                }
            }
            if (l_992)
                break;
            for (p_1197->g_116 = (-14); (p_1197->g_116 <= 20); ++p_1197->g_116)
            { /* block id: 637 */
                uint32_t l_998 = 0x90F2C6F2L;
                uint64_t *l_1007 = &p_1197->g_165[0][0][0];
                uint32_t l_1016 = 0UL;
                int16_t l_1040 = (-1L);
                int32_t *l_1045 = &p_1197->g_153;
                int32_t **l_1046[6][8] = {{(void*)0,&p_1197->g_468,(void*)0,(void*)0,&p_1197->g_468,(void*)0,(void*)0,&p_1197->g_468},{(void*)0,&p_1197->g_468,(void*)0,(void*)0,&p_1197->g_468,(void*)0,(void*)0,&p_1197->g_468},{(void*)0,&p_1197->g_468,(void*)0,(void*)0,&p_1197->g_468,(void*)0,(void*)0,&p_1197->g_468},{(void*)0,&p_1197->g_468,(void*)0,(void*)0,&p_1197->g_468,(void*)0,(void*)0,&p_1197->g_468},{(void*)0,&p_1197->g_468,(void*)0,(void*)0,&p_1197->g_468,(void*)0,(void*)0,&p_1197->g_468},{(void*)0,&p_1197->g_468,(void*)0,(void*)0,&p_1197->g_468,(void*)0,(void*)0,&p_1197->g_468}};
                int32_t **l_1059 = &p_1197->g_279[2];
                int64_t *l_1061 = &p_1197->g_1062[0][1][5];
                int16_t **l_1064[6] = {&p_1197->g_654,&p_1197->g_654,&p_1197->g_654,&p_1197->g_654,&p_1197->g_654,&p_1197->g_654};
                uint32_t l_1100 = 4294967295UL;
                int32_t l_1106[7] = {0x31F973B1L,0L,0x31F973B1L,0x31F973B1L,0L,0x31F973B1L,0x31F973B1L};
                uint64_t l_1146[3][2][9] = {{{0x72025CF54D655A73L,0xF39BF6316C030D15L,0x60B707CAEE213F14L,0xF39BF6316C030D15L,0x72025CF54D655A73L,0x72025CF54D655A73L,0xF39BF6316C030D15L,0x60B707CAEE213F14L,0xF39BF6316C030D15L},{0x72025CF54D655A73L,0xF39BF6316C030D15L,0x60B707CAEE213F14L,0xF39BF6316C030D15L,0x72025CF54D655A73L,0x72025CF54D655A73L,0xF39BF6316C030D15L,0x60B707CAEE213F14L,0xF39BF6316C030D15L}},{{0x72025CF54D655A73L,0xF39BF6316C030D15L,0x60B707CAEE213F14L,0xF39BF6316C030D15L,0x72025CF54D655A73L,0x72025CF54D655A73L,0xF39BF6316C030D15L,0x60B707CAEE213F14L,0xF39BF6316C030D15L},{0x72025CF54D655A73L,0xF39BF6316C030D15L,0x60B707CAEE213F14L,0xF39BF6316C030D15L,0x72025CF54D655A73L,0x72025CF54D655A73L,0xF39BF6316C030D15L,0x60B707CAEE213F14L,0xF39BF6316C030D15L}},{{0x72025CF54D655A73L,0xF39BF6316C030D15L,0x60B707CAEE213F14L,0xF39BF6316C030D15L,0x72025CF54D655A73L,0x72025CF54D655A73L,0xF39BF6316C030D15L,0x60B707CAEE213F14L,0xF39BF6316C030D15L},{0x72025CF54D655A73L,0xF39BF6316C030D15L,0x60B707CAEE213F14L,0xF39BF6316C030D15L,0x72025CF54D655A73L,0x72025CF54D655A73L,0xF39BF6316C030D15L,0x60B707CAEE213F14L,0xF39BF6316C030D15L}}};
                int32_t *l_1149 = (void*)0;
                int64_t l_1164 = 1L;
                int i, j, k;
                (1 + 1);
            }
        }
    }
    return l_1011[2][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1197->g_281 p_1197->g_124 p_1197->g_3 p_1197->g_53 p_1197->g_884 p_1197->g_280 p_1197->g_171 p_1197->g_112
 * writes: p_1197->g_112 p_1197->g_124 p_1197->g_171 p_1197->g_53
 */
int32_t  func_9(int8_t  p_10, struct S0 * p_1197)
{ /* block id: 570 */
    int64_t l_900 = (-7L);
    uint8_t l_903[6][1][2] = {{{0UL,0x34L}},{{0UL,0x34L}},{{0UL,0x34L}},{{0UL,0x34L}},{{0UL,0x34L}},{{0UL,0x34L}}};
    int32_t ***l_907 = &p_1197->g_583[0][1];
    int32_t l_908 = 0x17721C76L;
    int32_t l_911 = 0x0775F557L;
    int32_t l_912 = 7L;
    int32_t l_913[8][10][3] = {{{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL}},{{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL}},{{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL}},{{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL}},{{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL}},{{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL}},{{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL}},{{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL},{(-1L),0x6CD4F300L,0x54F950FEL}}};
    int32_t l_914 = (-9L);
    int64_t l_915 = 0x3F06471C504CD876L;
    int16_t l_916 = 0x1937L;
    int i, j, k;
    if (l_900)
    { /* block id: 571 */
        int32_t *l_904 = &p_1197->g_3[2][2];
lbl_905:
        for (p_1197->g_112 = 25; (p_1197->g_112 >= 25); ++p_1197->g_112)
        { /* block id: 574 */
            if ((**p_1197->g_281))
                break;
            return l_903[1][0][0];
        }
        (***p_1197->g_884) = l_904;
        if (l_900)
            goto lbl_905;
    }
    else
    { /* block id: 580 */
        int32_t l_909 = 0x7EAD3CB7L;
        int32_t *l_910[10][4] = {{&l_908,&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908,&l_908}};
        uint16_t l_917 = 0xC93EL;
        uint32_t *l_924 = (void*)0;
        uint32_t *l_925 = (void*)0;
        uint32_t *l_926 = &p_1197->g_171;
        int64_t *l_932 = &l_900;
        int64_t **l_931 = &l_932;
        int i, j;
        for (p_10 = 0; (p_10 <= 3); p_10 += 1)
        { /* block id: 583 */
            uint16_t l_906 = 0UL;
            return l_906;
        }
        l_909 &= (l_908 ^= ((l_907 != l_907) & (p_1197->g_53 != p_10)));
        --l_917;
        (**p_1197->g_281) = ((safe_mul_func_uint8_t_u_u(((((*l_926)++) ^ (safe_rshift_func_int8_t_s_u(1L, 4))) < (l_931 != &l_932)), p_10)) > (0x492BL >= p_10));
    }
    return l_914;
}


/* ------------------------------------------ */
/* 
 * reads : p_1197->g_165
 * writes: p_1197->g_48 p_1197->g_279
 */
uint8_t  func_15(int16_t  p_16, int16_t  p_17, struct S0 * p_1197)
{ /* block id: 567 */
    for (p_1197->g_48 = 0; p_1197->g_48 < 4; p_1197->g_48 += 1)
    {
        p_1197->g_279[p_1197->g_48] = &p_1197->g_3[0][2];
    }
    return p_1197->g_165[0][0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1197->g_654 p_1197->g_483 p_1197->g_124 p_1197->g_157 p_1197->g_884 p_1197->g_280 p_1197->g_281
 * writes: p_1197->g_53 p_1197->g_157
 */
int16_t  func_18(int32_t  p_19, int64_t  p_20, struct S0 * p_1197)
{ /* block id: 441 */
    uint16_t l_700 = 0xEB18L;
    int32_t *l_701 = &p_1197->g_153;
    int32_t l_723[9][4];
    int16_t l_736 = (-1L);
    int64_t *l_759 = (void*)0;
    uint32_t l_762 = 0x23E35F19L;
    uint8_t *l_786 = &p_1197->g_113;
    int32_t l_828 = 6L;
    uint32_t *l_846 = &p_1197->g_421;
    int64_t **l_876[1][5][8] = {{{&l_759,&l_759,(void*)0,&l_759,&l_759,&l_759,&l_759,(void*)0},{&l_759,&l_759,(void*)0,&l_759,&l_759,&l_759,&l_759,(void*)0},{&l_759,&l_759,(void*)0,&l_759,&l_759,&l_759,&l_759,(void*)0},{&l_759,&l_759,(void*)0,&l_759,&l_759,&l_759,&l_759,(void*)0},{&l_759,&l_759,(void*)0,&l_759,&l_759,&l_759,&l_759,(void*)0}}};
    int64_t ***l_875 = &l_876[0][0][0];
    int32_t *****l_898 = &p_1197->g_884;
    int i, j, k;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 4; j++)
            l_723[i][j] = 0x62489004L;
    }
    (*p_1197->g_124) = ((safe_mod_func_int16_t_s_s(((l_700 != 0x232FL) && (l_701 == l_701)), (*p_1197->g_654))) , l_700);
    for (p_1197->g_157 = 0; (p_1197->g_157 <= 3); p_1197->g_157 += 1)
    { /* block id: 445 */
        int32_t l_702 = 0x698FD95BL;
        int32_t l_708[2];
        int32_t l_709 = 0x7AE4A742L;
        int64_t *l_744 = (void*)0;
        int64_t **l_743 = &l_744;
        uint32_t l_814 = 0x041A9970L;
        int32_t **l_852 = &p_1197->g_279[3];
        int32_t **l_859[1][10][3];
        int32_t ****l_885 = &p_1197->g_280[0];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_708[i] = 0x533A74C6L;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 10; j++)
            {
                for (k = 0; k < 3; k++)
                    l_859[i][j][k] = &p_1197->g_584;
            }
        }
        if (l_702)
            break;
        if (p_20)
            continue;
        for (l_702 = 3; (l_702 >= 0); l_702 -= 1)
        { /* block id: 450 */
            uint64_t l_710 = 0xC755758771976257L;
            int32_t l_729 = (-4L);
            int32_t l_735 = 1L;
            uint8_t *l_806 = (void*)0;
            int32_t *l_809 = (void*)0;
            int32_t l_843 = 0x43940547L;
            uint32_t *l_849 = &p_1197->g_421;
            int32_t **l_853 = &p_1197->g_279[0];
            int16_t *l_897 = &p_1197->g_63;
            (1 + 1);
        }
    }
    (****p_1197->g_884) = 1L;
    return p_19;
}


/* ------------------------------------------ */
/* 
 * reads : p_1197->g_124 p_1197->g_53
 * writes: p_1197->g_53
 */
int64_t  func_26(uint16_t  p_27, int64_t  p_28, uint16_t  p_29, uint8_t  p_30, uint16_t  p_31, struct S0 * p_1197)
{ /* block id: 438 */
    int8_t l_696[4][4] = {{0x52L,1L,0x52L,0x52L},{0x52L,1L,0x52L,0x52L},{0x52L,1L,0x52L,0x52L},{0x52L,1L,0x52L,0x52L}};
    int64_t *l_697 = &p_1197->g_55;
    int i, j;
    (*p_1197->g_124) &= (safe_lshift_func_uint8_t_u_s(l_696[1][3], ((void*)0 != l_697)));
    return l_696[1][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1197->g_281 p_1197->g_124 p_1197->g_53
 * writes:
 */
int32_t  func_33(uint32_t  p_34, uint32_t  p_35, uint32_t  p_36, int64_t  p_37, uint64_t  p_38, struct S0 * p_1197)
{ /* block id: 435 */
    return (**p_1197->g_281);
}


/* ------------------------------------------ */
/* 
 * reads : p_1197->g_124 p_1197->g_53 p_1197->g_281 p_1197->g_150
 * writes: p_1197->g_124 p_1197->g_150 p_1197->g_53
 */
uint32_t  func_39(int16_t  p_40, uint16_t  p_41, uint64_t  p_42, uint64_t  p_43, struct S0 * p_1197)
{ /* block id: 423 */
    int32_t *l_685[7];
    uint8_t l_688 = 0UL;
    int i;
    for (i = 0; i < 7; i++)
        l_685[i] = &p_1197->g_53;
    (*p_1197->g_281) = ((*p_1197->g_124) , l_685[3]);
    for (p_1197->g_150 = 1; (p_1197->g_150 >= 0); p_1197->g_150 -= 1)
    { /* block id: 427 */
        int32_t l_686 = 0x149E65BEL;
        int32_t *l_687[7][7][5] = {{{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6}},{{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6}},{{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6}},{{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6}},{{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6}},{{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6}},{{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6},{(void*)0,(void*)0,&p_1197->g_53,(void*)0,&p_1197->g_6}}};
        int i, j, k;
        if (l_686)
            break;
        (*p_1197->g_124) |= 8L;
        l_687[6][1][3] = l_685[3];
    }
    (*p_1197->g_281) = l_685[3];
    l_688--;
    return p_43;
}


/* ------------------------------------------ */
/* 
 * reads : p_1197->g_654 p_1197->g_483
 * writes: p_1197->g_48
 */
int16_t  func_44(int16_t  p_45, struct S0 * p_1197)
{ /* block id: 11 */
    uint8_t l_56 = 0xF9L;
    int8_t l_64 = 0x13L;
    int32_t l_442 = 0x3CA2B276L;
    int32_t *l_467 = &p_1197->g_153;
    int32_t l_485 = 0x0733122AL;
    int32_t l_494 = 0x0FAB8363L;
    int32_t l_496 = 0x31A77ABCL;
    int32_t l_498 = 0x4F20034DL;
    int32_t l_500 = (-8L);
    int32_t l_502 = 0L;
    int32_t l_503 = 8L;
    int32_t l_504 = 0x1C2D0E14L;
    int32_t l_505 = 0x2BEAE273L;
    int32_t l_507 = 0x3F6247D9L;
    int32_t l_508 = 1L;
    uint16_t *l_523 = &p_1197->g_112;
    uint16_t **l_522 = &l_523;
    int32_t *l_581 = &p_1197->g_76;
    int32_t **l_580 = &l_581;
    int32_t ***l_579[3];
    int32_t **l_600[7] = {&l_581,&l_581,&l_581,&l_581,&l_581,&l_581,&l_581};
    int32_t ****l_611[3][10];
    int i, j;
    for (i = 0; i < 3; i++)
        l_579[i] = &l_580;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 10; j++)
            l_611[i][j] = &p_1197->g_280[0];
    }
    for (p_45 = 0; (p_45 <= (-27)); --p_45)
    { /* block id: 14 */
        int8_t l_431 = 0x04L;
        int32_t l_471 = 0x4F44ED7FL;
        int32_t l_472 = 0x278B5A8DL;
        int32_t l_477 = 0x13066FB6L;
        int32_t l_480 = 0x29C0841AL;
        int32_t l_489 = (-4L);
        int32_t l_491 = 9L;
        int32_t l_493 = 0x4AC6367DL;
        int32_t l_497 = 8L;
        int32_t l_499[3][3] = {{9L,0L,9L},{9L,0L,9L},{9L,0L,9L}};
        int32_t l_506[6][8] = {{0x47FDF331L,0x1FB5597EL,(-7L),(-1L),0x54498698L,0x47FDF331L,(-1L),(-1L)},{0x47FDF331L,0x1FB5597EL,(-7L),(-1L),0x54498698L,0x47FDF331L,(-1L),(-1L)},{0x47FDF331L,0x1FB5597EL,(-7L),(-1L),0x54498698L,0x47FDF331L,(-1L),(-1L)},{0x47FDF331L,0x1FB5597EL,(-7L),(-1L),0x54498698L,0x47FDF331L,(-1L),(-1L)},{0x47FDF331L,0x1FB5597EL,(-7L),(-1L),0x54498698L,0x47FDF331L,(-1L),(-1L)},{0x47FDF331L,0x1FB5597EL,(-7L),(-1L),0x54498698L,0x47FDF331L,(-1L),(-1L)}};
        int32_t *l_577[9][6] = {{&l_506[3][4],&p_1197->g_76,&l_506[3][4],&p_1197->g_76,&l_506[3][4],&l_506[3][4]},{&l_506[3][4],&p_1197->g_76,&l_506[3][4],&p_1197->g_76,&l_506[3][4],&l_506[3][4]},{&l_506[3][4],&p_1197->g_76,&l_506[3][4],&p_1197->g_76,&l_506[3][4],&l_506[3][4]},{&l_506[3][4],&p_1197->g_76,&l_506[3][4],&p_1197->g_76,&l_506[3][4],&l_506[3][4]},{&l_506[3][4],&p_1197->g_76,&l_506[3][4],&p_1197->g_76,&l_506[3][4],&l_506[3][4]},{&l_506[3][4],&p_1197->g_76,&l_506[3][4],&p_1197->g_76,&l_506[3][4],&l_506[3][4]},{&l_506[3][4],&p_1197->g_76,&l_506[3][4],&p_1197->g_76,&l_506[3][4],&l_506[3][4]},{&l_506[3][4],&p_1197->g_76,&l_506[3][4],&p_1197->g_76,&l_506[3][4],&l_506[3][4]},{&l_506[3][4],&p_1197->g_76,&l_506[3][4],&p_1197->g_76,&l_506[3][4],&l_506[3][4]}};
        int32_t **l_576 = &l_577[7][5];
        int32_t ***l_575[10][8] = {{&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576},{&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576},{&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576},{&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576},{&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576},{&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576},{&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576},{&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576},{&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576},{&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576,&l_576}};
        int8_t **l_588 = &p_1197->g_519;
        int8_t ***l_589 = &l_588;
        int8_t l_601[4][4][3];
        int16_t l_625 = 0L;
        int i, j, k;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 4; j++)
            {
                for (k = 0; k < 3; k++)
                    l_601[i][j][k] = 0x44L;
            }
        }
        for (p_1197->g_48 = 0; (p_1197->g_48 != 4); ++p_1197->g_48)
        { /* block id: 17 */
            uint32_t l_51 = 2UL;
            int16_t l_434 = 0x2046L;
            int32_t l_481 = 1L;
            int32_t l_482[4];
            uint32_t *l_546 = &p_1197->g_235;
            uint32_t **l_545 = &l_546;
            int i;
            for (i = 0; i < 4; i++)
                l_482[i] = 0L;
            (1 + 1);
        }
    }
    return (*p_1197->g_654);
}


/* ------------------------------------------ */
/* 
 * reads : p_1197->g_326 p_1197->g_55 p_1197->g_159 p_1197->g_116
 * writes: p_1197->g_311 p_1197->g_55 p_1197->g_116
 */
uint32_t  func_65(int16_t * p_66, int16_t * p_67, struct S0 * p_1197)
{ /* block id: 224 */
    int32_t l_346 = 0x6C34155DL;
    int64_t *l_348 = (void*)0;
    int64_t **l_347 = &l_348;
    uint64_t *l_350[9][2][1] = {{{&p_1197->g_161[0][1][6]},{&p_1197->g_161[0][1][6]}},{{&p_1197->g_161[0][1][6]},{&p_1197->g_161[0][1][6]}},{{&p_1197->g_161[0][1][6]},{&p_1197->g_161[0][1][6]}},{{&p_1197->g_161[0][1][6]},{&p_1197->g_161[0][1][6]}},{{&p_1197->g_161[0][1][6]},{&p_1197->g_161[0][1][6]}},{{&p_1197->g_161[0][1][6]},{&p_1197->g_161[0][1][6]}},{{&p_1197->g_161[0][1][6]},{&p_1197->g_161[0][1][6]}},{{&p_1197->g_161[0][1][6]},{&p_1197->g_161[0][1][6]}},{{&p_1197->g_161[0][1][6]},{&p_1197->g_161[0][1][6]}}};
    uint64_t **l_349 = &l_350[3][1][0];
    int32_t l_351 = 0x7E238D1FL;
    int32_t l_362 = 0x5170DFD6L;
    uint64_t l_363 = 0UL;
    int32_t *l_389[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int16_t *l_392 = &p_1197->g_63;
    int16_t **l_391 = &l_392;
    int32_t l_395 = 0L;
    int32_t l_400[6][2] = {{0x100F0AE0L,5L},{0x100F0AE0L,5L},{0x100F0AE0L,5L},{0x100F0AE0L,5L},{0x100F0AE0L,5L},{0x100F0AE0L,5L}};
    int i, j, k;
    l_351 |= ((safe_unary_minus_func_uint32_t_u(l_346)) <= ((((l_346 <= l_346) | ((*p_67) = (l_347 != (void*)0))) != (((4L && (((*l_349) = l_348) != (void*)0)) == (0UL < l_346)) | l_346)) , p_1197->g_326));
    for (p_1197->g_55 = 5; (p_1197->g_55 >= 0); p_1197->g_55 -= 1)
    { /* block id: 230 */
        int i;
        return p_1197->g_159[p_1197->g_55];
    }
    for (p_1197->g_116 = 0; (p_1197->g_116 <= 5); p_1197->g_116 += 1)
    { /* block id: 235 */
        int64_t **l_386 = (void*)0;
        int32_t l_399[2][1][7] = {{{(-7L),0x3CD313EAL,8L,0x3CD313EAL,(-7L),(-7L),0x3CD313EAL}},{{(-7L),0x3CD313EAL,8L,0x3CD313EAL,(-7L),(-7L),0x3CD313EAL}}};
        int32_t l_418 = 0x7BEA43B7L;
        int i, j, k;
        (1 + 1);
    }
    return l_400[3][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1197->g_76 p_1197->g_55 p_1197->g_6 p_1197->g_86 p_1197->g_53 p_1197->g_3 p_1197->g_63 p_1197->g_161 p_1197->g_281 p_1197->g_124 p_1197->g_116 p_1197->g_171 p_1197->g_157 p_1197->g_278 p_1197->g_343 p_1197->g_260
 * writes: p_1197->g_86 p_1197->g_63 p_1197->g_53 p_1197->g_260 p_1197->g_113
 */
int32_t  func_70(int32_t * p_71, struct S0 * p_1197)
{ /* block id: 29 */
    uint32_t l_75 = 6UL;
    int32_t l_81 = 0x2A6657A9L;
    uint32_t *l_84 = (void*)0;
    uint32_t *l_85 = &p_1197->g_86;
    int16_t *l_87 = (void*)0;
    int16_t *l_88 = &p_1197->g_63;
    uint8_t l_90[10][8][3] = {{{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL}},{{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL}},{{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL}},{{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL}},{{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL}},{{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL}},{{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL}},{{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL}},{{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL}},{{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL},{255UL,0x62L,0UL}}};
    int32_t l_122[4];
    int16_t **l_138[9][3] = {{(void*)0,&l_87,&l_87},{(void*)0,&l_87,&l_87},{(void*)0,&l_87,&l_87},{(void*)0,&l_87,&l_87},{(void*)0,&l_87,&l_87},{(void*)0,&l_87,&l_87},{(void*)0,&l_87,&l_87},{(void*)0,&l_87,&l_87},{(void*)0,&l_87,&l_87}};
    int8_t l_174 = 4L;
    int32_t l_196 = 0x176E7A2AL;
    int64_t *l_201[7][5][3] = {{{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55}},{{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55}},{{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55}},{{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55}},{{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55}},{{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55}},{{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55},{&p_1197->g_55,(void*)0,&p_1197->g_55}}};
    int32_t **l_293 = (void*)0;
    uint8_t *l_340 = &p_1197->g_260[0];
    int32_t ****l_341[5][3] = {{&p_1197->g_280[0],(void*)0,&p_1197->g_280[0]},{&p_1197->g_280[0],(void*)0,&p_1197->g_280[0]},{&p_1197->g_280[0],(void*)0,&p_1197->g_280[0]},{&p_1197->g_280[0],(void*)0,&p_1197->g_280[0]},{&p_1197->g_280[0],(void*)0,&p_1197->g_280[0]}};
    int32_t ***l_342 = &l_293;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_122[i] = 0x5F41299DL;
    if (((safe_sub_func_int16_t_s_s((l_75 | ((p_1197->g_76 > ((*l_88) = ((safe_lshift_func_int16_t_s_u(p_1197->g_55, ((l_81 != (l_75 , 0x19AB5AA9L)) ^ ((safe_sub_func_int32_t_s_s(l_81, ((*l_85) &= (&p_1197->g_6 == (p_1197->g_6 , &p_1197->g_3[2][2]))))) <= p_1197->g_53)))) ^ l_75))) || 0x40L)), p_1197->g_3[2][2])) , l_81))
    { /* block id: 32 */
        uint16_t l_89 = 0x5258L;
        (*p_71) = l_89;
    }
    else
    { /* block id: 34 */
        int32_t l_118 = 0x52F63B64L;
        int32_t l_162 = (-1L);
        int16_t *l_182 = &p_1197->g_63;
        uint8_t l_223[2][6] = {{0x15L,0x72L,0x15L,0x15L,0x72L,0x15L},{0x15L,0x72L,0x15L,0x15L,0x72L,0x15L}};
        int64_t *l_233[4][4][2] = {{{&p_1197->g_212,&p_1197->g_212},{&p_1197->g_212,&p_1197->g_212},{&p_1197->g_212,&p_1197->g_212},{&p_1197->g_212,&p_1197->g_212}},{{&p_1197->g_212,&p_1197->g_212},{&p_1197->g_212,&p_1197->g_212},{&p_1197->g_212,&p_1197->g_212},{&p_1197->g_212,&p_1197->g_212}},{{&p_1197->g_212,&p_1197->g_212},{&p_1197->g_212,&p_1197->g_212},{&p_1197->g_212,&p_1197->g_212},{&p_1197->g_212,&p_1197->g_212}},{{&p_1197->g_212,&p_1197->g_212},{&p_1197->g_212,&p_1197->g_212},{&p_1197->g_212,&p_1197->g_212},{&p_1197->g_212,&p_1197->g_212}}};
        int64_t l_240 = 1L;
        uint64_t l_247[3][2][6] = {{{0UL,0x74D67DD478301716L,0UL,0UL,0x74D67DD478301716L,0UL},{0UL,0x74D67DD478301716L,0UL,0UL,0x74D67DD478301716L,0UL}},{{0UL,0x74D67DD478301716L,0UL,0UL,0x74D67DD478301716L,0UL},{0UL,0x74D67DD478301716L,0UL,0UL,0x74D67DD478301716L,0UL}},{{0UL,0x74D67DD478301716L,0UL,0UL,0x74D67DD478301716L,0UL},{0UL,0x74D67DD478301716L,0UL,0UL,0x74D67DD478301716L,0UL}}};
        int32_t **l_252 = &p_1197->g_124;
        int32_t **l_254 = &p_1197->g_124;
        int32_t *l_285 = (void*)0;
        uint16_t *l_325 = &p_1197->g_112;
        uint16_t **l_324[9][4][6] = {{{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0}},{{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0}},{{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0}},{{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0}},{{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0}},{{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0}},{{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0}},{{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0}},{{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0},{&l_325,&l_325,&l_325,&l_325,(void*)0,(void*)0}}};
        int32_t **l_328 = (void*)0;
        int i, j, k;
        p_71 = &l_81;
        for (l_75 = 0; (l_75 <= 2); l_75 += 1)
        { /* block id: 38 */
            uint16_t l_117 = 65530UL;
            int16_t **l_137 = &l_87;
            int32_t l_170 = 1L;
            int32_t **l_221 = (void*)0;
            int32_t **l_222 = &p_1197->g_124;
            int64_t **l_226 = &l_201[5][0][2];
            int64_t *l_227 = &p_1197->g_55;
            int32_t *l_232 = &p_1197->g_76;
            int32_t l_257 = 0x74DC901EL;
            uint16_t l_309 = 0xAF18L;
            (1 + 1);
        }
    }
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_1197->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 3)), permutations[(safe_mod_func_uint32_t_u_u(((+l_90[7][4][2]) < (safe_rshift_func_int16_t_s_s((safe_mod_func_int32_t_s_s((l_81 , (((safe_div_func_int16_t_s_s((((GROUP_DIVERGE(0, 1) <= (p_1197->g_63 , (((safe_sub_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u((p_1197->g_161[2][2][0] == (**p_1197->g_281)), ((((p_1197->g_113 = ((*l_340) = p_1197->g_116)) | ((l_342 = &p_1197->g_281) == &p_1197->g_281)) ^ ((p_1197->g_3[4][3] | p_1197->g_53) > p_1197->g_171)) ^ p_1197->g_157))), p_1197->g_278[0][0][1])) , p_1197->g_343) == &p_1197->g_344))) < 0UL) , p_1197->g_260[0]), p_1197->g_63)) != GROUP_DIVERGE(0, 1)) >= 0x855FC3CB22CCB5AFL)), (*p_71))), 12))), 10))][(safe_mod_func_uint32_t_u_u(p_1197->tid, 3))]));
    return (***l_342);
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[3];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 3; i++)
            l_comm_values[i] = 1;
    struct S0 c_1198;
    struct S0* p_1197 = &c_1198;
    struct S0 c_1199 = {
        3L, // p_1197->g_2
        {{0L,0x38462751L,0x434678DCL,(-2L),0x282A10AAL,0L,(-2L)},{0L,0x38462751L,0x434678DCL,(-2L),0x282A10AAL,0L,(-2L)},{0L,0x38462751L,0x434678DCL,(-2L),0x282A10AAL,0L,(-2L)},{0L,0x38462751L,0x434678DCL,(-2L),0x282A10AAL,0L,(-2L)},{0L,0x38462751L,0x434678DCL,(-2L),0x282A10AAL,0L,(-2L)},{0L,0x38462751L,0x434678DCL,(-2L),0x282A10AAL,0L,(-2L)}}, // p_1197->g_3
        (-1L), // p_1197->g_6
        0x46E4944CL, // p_1197->g_48
        (-1L), // p_1197->g_53
        0x552276C1F5E2D0B1L, // p_1197->g_55
        0x71F3L, // p_1197->g_63
        (-9L), // p_1197->g_76
        5UL, // p_1197->g_86
        0UL, // p_1197->g_112
        255UL, // p_1197->g_113
        0x6C81L, // p_1197->g_116
        &p_1197->g_53, // p_1197->g_124
        0x27L, // p_1197->g_150
        0L, // p_1197->g_153
        2UL, // p_1197->g_157
        {0x9C4B1219C124D095L,18446744073709551610UL,0x9C4B1219C124D095L,0x9C4B1219C124D095L,18446744073709551610UL,0x9C4B1219C124D095L}, // p_1197->g_159
        {{{0x9F913A683201E628L,18446744073709551607UL,0xF56CD8495A274832L,0xD782E0D5DEA33776L,18446744073709551615UL,0x9F913A683201E628L,0xD782E0D5DEA33776L,0xD1CA076940D3DB07L},{0x9F913A683201E628L,18446744073709551607UL,0xF56CD8495A274832L,0xD782E0D5DEA33776L,18446744073709551615UL,0x9F913A683201E628L,0xD782E0D5DEA33776L,0xD1CA076940D3DB07L},{0x9F913A683201E628L,18446744073709551607UL,0xF56CD8495A274832L,0xD782E0D5DEA33776L,18446744073709551615UL,0x9F913A683201E628L,0xD782E0D5DEA33776L,0xD1CA076940D3DB07L}},{{0x9F913A683201E628L,18446744073709551607UL,0xF56CD8495A274832L,0xD782E0D5DEA33776L,18446744073709551615UL,0x9F913A683201E628L,0xD782E0D5DEA33776L,0xD1CA076940D3DB07L},{0x9F913A683201E628L,18446744073709551607UL,0xF56CD8495A274832L,0xD782E0D5DEA33776L,18446744073709551615UL,0x9F913A683201E628L,0xD782E0D5DEA33776L,0xD1CA076940D3DB07L},{0x9F913A683201E628L,18446744073709551607UL,0xF56CD8495A274832L,0xD782E0D5DEA33776L,18446744073709551615UL,0x9F913A683201E628L,0xD782E0D5DEA33776L,0xD1CA076940D3DB07L}},{{0x9F913A683201E628L,18446744073709551607UL,0xF56CD8495A274832L,0xD782E0D5DEA33776L,18446744073709551615UL,0x9F913A683201E628L,0xD782E0D5DEA33776L,0xD1CA076940D3DB07L},{0x9F913A683201E628L,18446744073709551607UL,0xF56CD8495A274832L,0xD782E0D5DEA33776L,18446744073709551615UL,0x9F913A683201E628L,0xD782E0D5DEA33776L,0xD1CA076940D3DB07L},{0x9F913A683201E628L,18446744073709551607UL,0xF56CD8495A274832L,0xD782E0D5DEA33776L,18446744073709551615UL,0x9F913A683201E628L,0xD782E0D5DEA33776L,0xD1CA076940D3DB07L}}}, // p_1197->g_161
        {{{3UL,0xFEFF4B0332E89E7AL,3UL},{3UL,0xFEFF4B0332E89E7AL,3UL}},{{3UL,0xFEFF4B0332E89E7AL,3UL},{3UL,0xFEFF4B0332E89E7AL,3UL}},{{3UL,0xFEFF4B0332E89E7AL,3UL},{3UL,0xFEFF4B0332E89E7AL,3UL}},{{3UL,0xFEFF4B0332E89E7AL,3UL},{3UL,0xFEFF4B0332E89E7AL,3UL}},{{3UL,0xFEFF4B0332E89E7AL,3UL},{3UL,0xFEFF4B0332E89E7AL,3UL}},{{3UL,0xFEFF4B0332E89E7AL,3UL},{3UL,0xFEFF4B0332E89E7AL,3UL}},{{3UL,0xFEFF4B0332E89E7AL,3UL},{3UL,0xFEFF4B0332E89E7AL,3UL}}}, // p_1197->g_165
        0x71088D65L, // p_1197->g_171
        0x1F65896F18D49564L, // p_1197->g_212
        (void*)0, // p_1197->g_217
        &p_1197->g_217, // p_1197->g_216
        1UL, // p_1197->g_235
        0x607A46C0L, // p_1197->g_259
        {0xB3L,0xB3L}, // p_1197->g_260
        {{{0xE5E1F7BDL,0UL},{0xE5E1F7BDL,0UL}},{{0xE5E1F7BDL,0UL},{0xE5E1F7BDL,0UL}},{{0xE5E1F7BDL,0UL},{0xE5E1F7BDL,0UL}},{{0xE5E1F7BDL,0UL},{0xE5E1F7BDL,0UL}},{{0xE5E1F7BDL,0UL},{0xE5E1F7BDL,0UL}},{{0xE5E1F7BDL,0UL},{0xE5E1F7BDL,0UL}},{{0xE5E1F7BDL,0UL},{0xE5E1F7BDL,0UL}},{{0xE5E1F7BDL,0UL},{0xE5E1F7BDL,0UL}}}, // p_1197->g_278
        {&p_1197->g_53,&p_1197->g_53,&p_1197->g_53,&p_1197->g_53}, // p_1197->g_279
        &p_1197->g_124, // p_1197->g_281
        {&p_1197->g_281,&p_1197->g_281}, // p_1197->g_280
        0x2CD6L, // p_1197->g_311
        {{0x7CF57214L,0x7CF57214L,0xB6A639E3L,8UL,0x4D02FFBDL,8UL,0xB6A639E3L},{0x7CF57214L,0x7CF57214L,0xB6A639E3L,8UL,0x4D02FFBDL,8UL,0xB6A639E3L},{0x7CF57214L,0x7CF57214L,0xB6A639E3L,8UL,0x4D02FFBDL,8UL,0xB6A639E3L},{0x7CF57214L,0x7CF57214L,0xB6A639E3L,8UL,0x4D02FFBDL,8UL,0xB6A639E3L},{0x7CF57214L,0x7CF57214L,0xB6A639E3L,8UL,0x4D02FFBDL,8UL,0xB6A639E3L},{0x7CF57214L,0x7CF57214L,0xB6A639E3L,8UL,0x4D02FFBDL,8UL,0xB6A639E3L},{0x7CF57214L,0x7CF57214L,0xB6A639E3L,8UL,0x4D02FFBDL,8UL,0xB6A639E3L},{0x7CF57214L,0x7CF57214L,0xB6A639E3L,8UL,0x4D02FFBDL,8UL,0xB6A639E3L}}, // p_1197->g_322
        1UL, // p_1197->g_326
        (void*)0, // p_1197->g_344
        &p_1197->g_344, // p_1197->g_343
        0x80463DD543BEA053L, // p_1197->g_401
        0x2D957EADL, // p_1197->g_421
        (void*)0, // p_1197->g_468
        (-1L), // p_1197->g_483
        &p_1197->g_150, // p_1197->g_519
        (void*)0, // p_1197->g_584
        {{&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584},{&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584},{&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584},{&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584,&p_1197->g_584}}, // p_1197->g_583
        {&p_1197->g_583[3][3],&p_1197->g_583[3][3],&p_1197->g_583[3][3]}, // p_1197->g_582
        {{(void*)0,&p_1197->g_519,(void*)0,(void*)0,&p_1197->g_519,(void*)0},{(void*)0,&p_1197->g_519,(void*)0,(void*)0,&p_1197->g_519,(void*)0},{(void*)0,&p_1197->g_519,(void*)0,(void*)0,&p_1197->g_519,(void*)0},{(void*)0,&p_1197->g_519,(void*)0,(void*)0,&p_1197->g_519,(void*)0},{(void*)0,&p_1197->g_519,(void*)0,(void*)0,&p_1197->g_519,(void*)0}}, // p_1197->g_595
        &p_1197->g_595[3][2], // p_1197->g_594
        &p_1197->g_483, // p_1197->g_654
        0xDF6A5007BB7E91B9L, // p_1197->g_827
        (void*)0, // p_1197->g_857
        &p_1197->g_280[0], // p_1197->g_884
        (void*)0, // p_1197->g_963
        (void*)0, // p_1197->g_979
        (-7L), // p_1197->g_997
        0x2FL, // p_1197->g_1043
        {{{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)}},{{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)}},{{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)},{1L,1L,0L,0x416B5530F9E03D8AL,0x365D9590747E5079L,(-1L)}}}, // p_1197->g_1062
        4294967295UL, // p_1197->g_1123
        &p_1197->g_1123, // p_1197->g_1122
        &p_1197->g_1122, // p_1197->g_1121
        {0x474BA82CL,0x474BA82CL,0x474BA82CL,0x474BA82CL,0x474BA82CL,0x474BA82CL,0x474BA82CL,0x474BA82CL}, // p_1197->g_1130
        {{{(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)}}}, // p_1197->g_1147
        0x9BCCL, // p_1197->g_1174
        4294967295UL, // p_1197->g_1175
        0L, // p_1197->g_1177
        {&p_1197->g_161[0][2][2],&p_1197->g_161[0][2][2]}, // p_1197->g_1179
        &p_1197->g_1179[1], // p_1197->g_1178
        sequence_input[get_global_id(0)], // p_1197->global_0_offset
        sequence_input[get_global_id(1)], // p_1197->global_1_offset
        sequence_input[get_global_id(2)], // p_1197->global_2_offset
        sequence_input[get_local_id(0)], // p_1197->local_0_offset
        sequence_input[get_local_id(1)], // p_1197->local_1_offset
        sequence_input[get_local_id(2)], // p_1197->local_2_offset
        sequence_input[get_group_id(0)], // p_1197->group_0_offset
        sequence_input[get_group_id(1)], // p_1197->group_1_offset
        sequence_input[get_group_id(2)], // p_1197->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 3)), permutations[0][get_linear_local_id()])), // p_1197->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1198 = c_1199;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1197);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1197->g_2, "p_1197->g_2", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1197->g_3[i][j], "p_1197->g_3[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1197->g_6, "p_1197->g_6", print_hash_value);
    transparent_crc(p_1197->g_48, "p_1197->g_48", print_hash_value);
    transparent_crc(p_1197->g_53, "p_1197->g_53", print_hash_value);
    transparent_crc(p_1197->g_55, "p_1197->g_55", print_hash_value);
    transparent_crc(p_1197->g_63, "p_1197->g_63", print_hash_value);
    transparent_crc(p_1197->g_76, "p_1197->g_76", print_hash_value);
    transparent_crc(p_1197->g_86, "p_1197->g_86", print_hash_value);
    transparent_crc(p_1197->g_112, "p_1197->g_112", print_hash_value);
    transparent_crc(p_1197->g_113, "p_1197->g_113", print_hash_value);
    transparent_crc(p_1197->g_116, "p_1197->g_116", print_hash_value);
    transparent_crc(p_1197->g_150, "p_1197->g_150", print_hash_value);
    transparent_crc(p_1197->g_153, "p_1197->g_153", print_hash_value);
    transparent_crc(p_1197->g_157, "p_1197->g_157", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1197->g_159[i], "p_1197->g_159[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1197->g_161[i][j][k], "p_1197->g_161[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1197->g_165[i][j][k], "p_1197->g_165[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1197->g_171, "p_1197->g_171", print_hash_value);
    transparent_crc(p_1197->g_212, "p_1197->g_212", print_hash_value);
    transparent_crc(p_1197->g_235, "p_1197->g_235", print_hash_value);
    transparent_crc(p_1197->g_259, "p_1197->g_259", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1197->g_260[i], "p_1197->g_260[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1197->g_278[i][j][k], "p_1197->g_278[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1197->g_311, "p_1197->g_311", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1197->g_322[i][j], "p_1197->g_322[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1197->g_326, "p_1197->g_326", print_hash_value);
    transparent_crc(p_1197->g_401, "p_1197->g_401", print_hash_value);
    transparent_crc(p_1197->g_421, "p_1197->g_421", print_hash_value);
    transparent_crc(p_1197->g_483, "p_1197->g_483", print_hash_value);
    transparent_crc(p_1197->g_827, "p_1197->g_827", print_hash_value);
    transparent_crc(p_1197->g_997, "p_1197->g_997", print_hash_value);
    transparent_crc(p_1197->g_1043, "p_1197->g_1043", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1197->g_1062[i][j][k], "p_1197->g_1062[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1197->g_1123, "p_1197->g_1123", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1197->g_1130[i], "p_1197->g_1130[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1197->g_1147[i][j][k], "p_1197->g_1147[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1197->g_1174, "p_1197->g_1174", print_hash_value);
    transparent_crc(p_1197->g_1175, "p_1197->g_1175", print_hash_value);
    transparent_crc(p_1197->g_1177, "p_1197->g_1177", print_hash_value);
    transparent_crc(p_1197->l_comm_values[get_linear_local_id()], "p_1197->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1197->g_comm_values[get_linear_group_id() * 3 + get_linear_local_id()], "p_1197->g_comm_values[get_linear_group_id() * 3 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
