// --atomics 22 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 82,35,1 -l 2,1,1
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

__constant uint32_t permutations[10][2] = {
{1,0}, // permutation 0
{1,0}, // permutation 1
{1,0}, // permutation 2
{1,0}, // permutation 3
{1,0}, // permutation 4
{1,0}, // permutation 5
{1,0}, // permutation 6
{1,0}, // permutation 7
{1,0}, // permutation 8
{1,0} // permutation 9
};

// Seed: 75

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_5;
    uint16_t g_20;
    int32_t g_46;
    volatile int64_t g_57;
    uint32_t g_58;
    volatile VECTOR(uint32_t, 8) g_74;
    VECTOR(int64_t, 4) g_75;
    VECTOR(int64_t, 16) g_76;
    VECTOR(int64_t, 16) g_83;
    uint16_t g_91;
    uint16_t *g_90;
    int32_t *g_98[10];
    int32_t * volatile * volatile g_97;
    int32_t * volatile * volatile * volatile g_99;
    int32_t g_107;
    int32_t * volatile g_108[1];
    int32_t g_110;
    int8_t g_130;
    uint32_t g_143[6];
    int64_t *g_144;
    uint16_t **g_161;
    uint16_t *** volatile g_160;
    VECTOR(int16_t, 2) g_328;
    VECTOR(uint32_t, 16) g_338;
    uint32_t g_340;
    uint64_t g_342;
    volatile VECTOR(int32_t, 4) g_365;
    VECTOR(int64_t, 8) g_382;
    uint32_t g_396;
    uint8_t g_408;
    uint8_t *g_407;
    uint16_t g_424;
    volatile VECTOR(int32_t, 16) g_429;
    int32_t *g_447;
    int32_t ** volatile g_446;
    volatile VECTOR(int32_t, 2) g_448;
    volatile VECTOR(int32_t, 2) g_449;
    volatile VECTOR(int8_t, 4) g_457;
    VECTOR(int8_t, 8) g_458;
    int64_t g_460;
    int32_t g_472;
    uint16_t ***g_518[1];
    uint16_t *** volatile *g_517[6][4][2];
    volatile uint32_t g_537;
    volatile int8_t g_614[10];
    VECTOR(uint16_t, 16) g_642;
    int32_t ** volatile g_674;
    int32_t ** volatile g_675[10][7];
    volatile uint64_t g_680;
    uint32_t g_705;
    volatile uint64_t g_706;
    int32_t g_709;
    int32_t g_711;
    int8_t *g_752[9];
    int8_t **g_751;
    VECTOR(int8_t, 2) g_821;
    volatile VECTOR(uint64_t, 8) g_858;
    volatile VECTOR(uint32_t, 16) g_884;
    volatile VECTOR(int8_t, 4) g_902;
    volatile VECTOR(int8_t, 8) g_903;
    volatile VECTOR(int8_t, 4) g_904;
    int32_t ** volatile g_921[1];
    int32_t ** volatile g_923;
    volatile uint16_t g_1019[8][8];
    VECTOR(uint32_t, 16) g_1138;
    volatile VECTOR(uint32_t, 4) g_1139;
    VECTOR(uint32_t, 4) g_1140;
    volatile VECTOR(uint16_t, 4) g_1142;
    volatile VECTOR(uint32_t, 2) g_1143;
    VECTOR(int16_t, 16) g_1173;
    VECTOR(int32_t, 2) g_1176;
    VECTOR(int8_t, 8) g_1213;
    volatile VECTOR(int16_t, 16) g_1221;
    int32_t **g_1229;
    VECTOR(int32_t, 2) g_1236;
    VECTOR(int8_t, 16) g_1239;
    VECTOR(int8_t, 16) g_1240;
    VECTOR(uint16_t, 2) g_1262;
    VECTOR(int16_t, 4) g_1271;
    uint32_t v_collective;
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
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S0 * p_1312);
int16_t  func_8(int32_t * p_9, struct S0 * p_1312);
int32_t * func_10(int32_t  p_11, int32_t * p_12, struct S0 * p_1312);
int32_t * func_13(int32_t  p_14, int8_t  p_15, int64_t  p_16, int64_t  p_17, struct S0 * p_1312);
int16_t  func_23(int32_t  p_24, int32_t * p_25, uint16_t * p_26, struct S0 * p_1312);
uint16_t * func_29(uint8_t  p_30, uint64_t  p_31, int64_t  p_32, uint16_t * p_33, uint16_t * p_34, struct S0 * p_1312);
uint8_t  func_35(uint32_t  p_36, int32_t * p_37, int64_t  p_38, int32_t * p_39, uint16_t * p_40, struct S0 * p_1312);
int8_t  func_41(int32_t  p_42, int64_t  p_43, struct S0 * p_1312);
int32_t  func_61(int32_t * p_62, int32_t * p_63, int8_t  p_64, int8_t  p_65, struct S0 * p_1312);
int32_t * func_66(int32_t  p_67, uint16_t  p_68, uint8_t  p_69, struct S0 * p_1312);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1312->l_comm_values p_1312->g_5 p_1312->g_58 p_1312->g_74 p_1312->g_comm_values p_1312->g_75 p_1312->g_76 p_1312->g_83 p_1312->g_90 p_1312->g_91 p_1312->g_97 p_1312->g_99 p_1312->g_110 p_1312->g_107 p_1312->g_144 p_1312->g_46 p_1312->g_160 p_1312->g_328 p_1312->g_143 p_1312->g_338 p_1312->g_365 p_1312->g_161 p_1312->g_407 p_1312->g_382 p_1312->g_408 p_1312->g_446 p_1312->g_448 p_1312->g_449 p_1312->g_457 p_1312->g_458 p_1312->g_447 p_1312->g_98 p_1312->g_472 p_1312->g_342 p_1312->g_517 p_1312->g_537 p_1312->g_642 p_1312->g_130 p_1312->g_424 p_1312->g_680 p_1312->g_705 p_1312->g_706 p_1312->g_709 p_1312->g_460 p_1312->g_884 p_1312->g_902 p_1312->g_903 p_1312->g_904 p_1312->g_858 p_1312->g_923 p_1312->g_821 p_1312->g_1019 p_1312->g_396 p_1312->g_1138 p_1312->g_1139 p_1312->g_1140 p_1312->g_1142 p_1312->g_1143 p_1312->g_614 p_1312->g_1173 p_1312->g_1176 p_1312->g_340 p_1312->g_1213 p_1312->g_1221 p_1312->g_1236 p_1312->g_1239 p_1312->g_1240 p_1312->g_1262 p_1312->g_1229 p_1312->g_1271
 * writes: p_1312->g_5 p_1312->g_20 p_1312->g_46 p_1312->g_58 p_1312->g_comm_values p_1312->g_97 p_1312->g_107 p_1312->g_110 p_1312->g_130 p_1312->g_143 p_1312->g_91 p_1312->g_161 p_1312->g_340 p_1312->g_342 p_1312->g_396 p_1312->g_424 p_1312->g_447 p_1312->g_460 p_1312->g_328 p_1312->g_408 p_1312->g_472 p_1312->g_705 p_1312->g_709 p_1312->g_711 p_1312->g_76 p_1312->g_458 p_1312->g_751 p_1312->g_884 p_1312->g_90 p_1312->g_1019 p_1312->g_518 p_1312->g_752 p_1312->g_1229 p_1312->g_1173
 */
int32_t  func_1(struct S0 * p_1312)
{ /* block id: 4 */
    int32_t *l_4[8][9] = {{&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5},{&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5},{&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5},{&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5},{&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5},{&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5},{&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5},{&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5,&p_1312->g_5}};
    uint32_t l_18 = 0x34C266D8L;
    int32_t *l_471 = &p_1312->g_472;
    uint16_t *l_1002 = (void*)0;
    VECTOR(uint16_t, 8) l_1141 = (VECTOR(uint16_t, 8))(0xAA90L, (VECTOR(uint16_t, 4))(0xAA90L, (VECTOR(uint16_t, 2))(0xAA90L, 0x1DB3L), 0x1DB3L), 0x1DB3L, 0xAA90L, 0x1DB3L);
    int32_t l_1153 = 0x6C8C3DD5L;
    VECTOR(uint32_t, 2) l_1175 = (VECTOR(uint32_t, 2))(0xE7F1E718L, 0xA625F6A9L);
    uint8_t l_1188 = 0x31L;
    VECTOR(int16_t, 8) l_1226 = (VECTOR(int16_t, 8))(0x5D0EL, (VECTOR(int16_t, 4))(0x5D0EL, (VECTOR(int16_t, 2))(0x5D0EL, 0x2100L), 0x2100L), 0x2100L, 0x5D0EL, 0x2100L);
    int64_t l_1235 = 0x7C2F31ADDEB6E464L;
    int i, j;
    p_1312->g_5 |= ((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))(0x00L, p_1312->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1312->tid, 2))], 0x7BL, 9UL)).y, 0)) , (-1L));
    if (p_1312->g_5)
    { /* block id: 6 */
        uint16_t *l_19 = &p_1312->g_20;
        int32_t *l_44 = (void*)0;
        int32_t *l_45[3];
        VECTOR(int32_t, 16) l_49 = (VECTOR(int32_t, 16))(0x536C745DL, (VECTOR(int32_t, 4))(0x536C745DL, (VECTOR(int32_t, 2))(0x536C745DL, 0x051AAF19L), 0x051AAF19L), 0x051AAF19L, 0x536C745DL, 0x051AAF19L, (VECTOR(int32_t, 2))(0x536C745DL, 0x051AAF19L), (VECTOR(int32_t, 2))(0x536C745DL, 0x051AAF19L), 0x536C745DL, 0x051AAF19L, 0x536C745DL, 0x051AAF19L);
        uint16_t **l_1001 = &p_1312->g_90;
        int32_t **l_1131 = &l_4[3][7];
        int8_t *l_1134 = (void*)0;
        uint32_t l_1136 = 0x229BE995L;
        int64_t *l_1161 = (void*)0;
        VECTOR(uint32_t, 2) l_1258 = (VECTOR(uint32_t, 2))(0x46D9229EL, 4294967289UL);
        int16_t *l_1263 = (void*)0;
        int16_t *l_1264 = (void*)0;
        int16_t *l_1265 = (void*)0;
        int16_t *l_1266 = (void*)0;
        int16_t *l_1267 = (void*)0;
        int16_t *l_1268 = (void*)0;
        int16_t *l_1269[10][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        uint32_t l_1270 = 4294967288UL;
        VECTOR(int16_t, 16) l_1272 = (VECTOR(int16_t, 16))(0x2A87L, (VECTOR(int16_t, 4))(0x2A87L, (VECTOR(int16_t, 2))(0x2A87L, 0x78CAL), 0x78CAL), 0x78CAL, 0x2A87L, 0x78CAL, (VECTOR(int16_t, 2))(0x2A87L, 0x78CAL), (VECTOR(int16_t, 2))(0x2A87L, 0x78CAL), 0x2A87L, 0x78CAL, 0x2A87L, 0x78CAL);
        VECTOR(int16_t, 8) l_1273 = (VECTOR(int16_t, 8))(0x7493L, (VECTOR(int16_t, 4))(0x7493L, (VECTOR(int16_t, 2))(0x7493L, 3L), 3L), 3L, 0x7493L, 3L);
        int i, j;
        for (i = 0; i < 3; i++)
            l_45[i] = &p_1312->g_46;
        if (((((safe_rshift_func_int16_t_s_u(func_8(func_10(p_1312->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1312->tid, 2))], func_13((((~((*l_19) = l_18)) == (safe_rshift_func_int16_t_s_s(func_23(((((*l_1001) = func_29(((&p_1312->g_5 != &p_1312->g_5) ^ func_35((((func_41((p_1312->g_46 = p_1312->g_5), (safe_mul_func_int8_t_s_s(0x0AL, l_49.s1)), p_1312) , ((void*)0 == l_4[3][7])) || 1UL) , p_1312->g_5), p_1312->g_98[8], p_1312->g_382.s0, l_471, p_1312->g_90, p_1312)), p_1312->g_75.x, p_1312->g_472, p_1312->g_90, p_1312->g_90, p_1312)) == l_1002) & 0L), p_1312->g_98[1], l_1002, p_1312), p_1312->g_821.y))) , l_49.s0), l_49.s1, p_1312->g_382.s3, l_49.s1, p_1312), p_1312), p_1312), 1)) , l_45[0]) != l_44) && (*p_1312->g_407)))
        { /* block id: 532 */
            uint16_t ***l_1132[1];
            VECTOR(uint32_t, 16) l_1137 = (VECTOR(uint32_t, 16))(4294967294UL, (VECTOR(uint32_t, 4))(4294967294UL, (VECTOR(uint32_t, 2))(4294967294UL, 1UL), 1UL), 1UL, 4294967294UL, 1UL, (VECTOR(uint32_t, 2))(4294967294UL, 1UL), (VECTOR(uint32_t, 2))(4294967294UL, 1UL), 4294967294UL, 1UL, 4294967294UL, 1UL);
            int8_t ***l_1151 = (void*)0;
            int32_t l_1152 = (-1L);
            VECTOR(uint32_t, 16) l_1174 = (VECTOR(uint32_t, 16))(0xE0335E7DL, (VECTOR(uint32_t, 4))(0xE0335E7DL, (VECTOR(uint32_t, 2))(0xE0335E7DL, 0x74390092L), 0x74390092L), 0x74390092L, 0xE0335E7DL, 0x74390092L, (VECTOR(uint32_t, 2))(0xE0335E7DL, 0x74390092L), (VECTOR(uint32_t, 2))(0xE0335E7DL, 0x74390092L), 0xE0335E7DL, 0x74390092L, 0xE0335E7DL, 0x74390092L);
            uint32_t l_1220[4][6] = {{0x1081BCFFL,0xBC04700AL,0x1081BCFFL,0x1081BCFFL,0xBC04700AL,0x1081BCFFL},{0x1081BCFFL,0xBC04700AL,0x1081BCFFL,0x1081BCFFL,0xBC04700AL,0x1081BCFFL},{0x1081BCFFL,0xBC04700AL,0x1081BCFFL,0x1081BCFFL,0xBC04700AL,0x1081BCFFL},{0x1081BCFFL,0xBC04700AL,0x1081BCFFL,0x1081BCFFL,0xBC04700AL,0x1081BCFFL}};
            int i, j;
            for (i = 0; i < 1; i++)
                l_1132[i] = &l_1001;
            for (p_1312->g_396 = 22; (p_1312->g_396 <= 4); --p_1312->g_396)
            { /* block id: 535 */
                uint16_t ****l_1130 = &p_1312->g_518[0];
                int16_t *l_1133 = (void*)0;
                int8_t **l_1135 = (void*)0;
                uint16_t *l_1146 = &p_1312->g_20;
                int8_t ***l_1149 = &l_1135;
                int8_t ****l_1150 = &l_1149;
                uint32_t *l_1154 = &p_1312->g_143[0];
                int8_t *l_1156 = (void*)0;
                int8_t **l_1155 = &l_1156;
                VECTOR(int16_t, 2) l_1172 = (VECTOR(int16_t, 2))(0x5B14L, 0x5382L);
                uint8_t l_1183[1];
                int32_t l_1184[10][3] = {{1L,0x2A3CD22EL,0x69AA2B21L},{1L,0x2A3CD22EL,0x69AA2B21L},{1L,0x2A3CD22EL,0x69AA2B21L},{1L,0x2A3CD22EL,0x69AA2B21L},{1L,0x2A3CD22EL,0x69AA2B21L},{1L,0x2A3CD22EL,0x69AA2B21L},{1L,0x2A3CD22EL,0x69AA2B21L},{1L,0x2A3CD22EL,0x69AA2B21L},{1L,0x2A3CD22EL,0x69AA2B21L},{1L,0x2A3CD22EL,0x69AA2B21L}};
                int i, j;
                for (i = 0; i < 1; i++)
                    l_1183[i] = 0x77L;
                (*p_1312->g_447) = (((*l_1130) = &p_1312->g_161) != (((void*)0 != l_1131) , l_1132[0]));
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_1312->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[(safe_mod_func_uint32_t_u_u(((p_1312->g_752[2] = (((void*)0 == l_1133) , l_1134)) != ((*l_1155) = ((l_1136 , ((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(min(((VECTOR(uint32_t, 4))(l_1137.sdaff)).wwyyzzyzxzxzzwxx, ((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 8))(hadd(((VECTOR(uint32_t, 2))(0x64D21FF6L, 1UL)).xxxxxxyy, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(0UL, 0x133670D0L)).xxxxyxxyyxxyxyyy)))).odd))).s1102561214346251, ((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 16))(p_1312->g_1138.s3a6e8b26935d5214)).sc7, ((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(p_1312->g_1139.wx)).xxxy)).yxyzxywyzxxxwwyy, ((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 8))(min(((VECTOR(uint32_t, 4))(p_1312->g_1140.zzxx)).xyyxzwxw, ((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 2))(l_1141.s15)), ((VECTOR(uint16_t, 2))(p_1312->g_1142.zw))))).xxxxyyxy)))))).s0742253707131406, ((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 8))(p_1312->g_1143.xxyyyxyx)).s1477271645507125, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(4294967295UL, ((*l_1154) |= (((**l_1001) &= (safe_add_func_uint32_t_u_u((((((l_1137.se , (((void*)0 != l_1146) != 0x71L)) > ((safe_rshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1312->local_2_offset, get_local_id(2), 10), 11)) & ((l_1152 ^= (((*l_1150) = l_1149) != l_1151)) > (*p_1312->g_407)))) || 1UL) || 4294967295UL) | l_1137.s9), l_1153))) || l_1137.s8)), ((VECTOR(uint32_t, 2))(0UL)), 0x41EBEB13L, 0xCADED392L, p_1312->g_75.x, 6UL, p_1312->g_83.s2, ((VECTOR(uint32_t, 2))(0x123B32B2L)), ((VECTOR(uint32_t, 2))(9UL)), ((VECTOR(uint32_t, 2))(0UL)), 4294967295UL)).s95a9)).yyyxxzzx)).s6321310675722663)))))))).lo)).s05, ((VECTOR(uint32_t, 2))(3UL)))))))).xxyxxyxxyxyxyxyy, ((VECTOR(uint32_t, 16))(6UL)))))))).s4978)))).y != (*p_1312->g_447)) , FAKE_DIVERGE(p_1312->group_1_offset, get_group_id(1), 10))) , (void*)0))), 10))][(safe_mod_func_uint32_t_u_u(p_1312->tid, 2))]));
                l_1184[0][0] |= ((safe_rshift_func_int16_t_s_s(p_1312->g_614[5], (safe_sub_func_int64_t_s_s((((void*)0 != l_1161) || ((safe_rshift_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u((safe_add_func_uint16_t_u_u(((*p_1312->g_90)--), ((safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(abs_diff(((VECTOR(uint32_t, 16))((((l_1137.s3 & ((**l_1131) , ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 4))(l_1172.xxyy)).zyzyzyxx, ((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 16))(8L, 9L, ((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(p_1312->g_1173.s4ab4)), ((VECTOR(int16_t, 8))((p_1312->g_821.y & ((((*l_1154) ^= ((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 4))(l_1174.sd4ae)).yxwxwzwx, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(0x7BC54EDDL, ((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 16))(l_1175.xxyxyyxxxyyyxyyy)).s87, ((VECTOR(uint32_t, 8))(abs_diff(((VECTOR(int32_t, 4))(p_1312->g_1176.yxxy)).zzwzwzyx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((safe_div_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(0x4919L, l_1172.x)), 0)), (*p_1312->g_407))) > FAKE_DIVERGE(p_1312->global_1_offset, get_global_id(1), 10)), (*p_1312->g_447), 1L, (-1L))), 0x602B128CL, 0L, 1L, 0x48F8E4E5L))))).s51, ((VECTOR(uint32_t, 2))(0x57FC208FL))))), 0x1A4CFCABL, 0x2CECFAF3L, 2UL, 0xAF60F01EL, 0x59838259L)).s0116667473224132)).odd))).s6) != 0xC985263BL) > 65535UL)), l_1183[0], ((VECTOR(int16_t, 2))((-3L))), l_1174.sb, (-1L), 0L, 0L)), (**l_1131), 0x2228L, 0x09CDL, (-1L))).se9ed, ((VECTOR(int16_t, 4))(0x4665L))))), p_1312->g_709, ((VECTOR(int16_t, 2))(0x6780L)), ((VECTOR(int16_t, 2))(0x7AAEL)), 0x608DL, ((VECTOR(int16_t, 4))(1L)))), ((VECTOR(int16_t, 16))((-9L))), ((VECTOR(int16_t, 16))(0L))))).hi))).odd)).w)) ^ p_1312->g_408) && (*l_471)), 0xA8A12CF3L, ((VECTOR(uint32_t, 2))(0UL)), ((VECTOR(uint32_t, 8))(4294967292UL)), l_1172.y, FAKE_DIVERGE(p_1312->group_0_offset, get_group_id(0), 10), 1UL, 4294967289UL)).odd, ((VECTOR(uint32_t, 8))(4294967293UL))))).s7, 0x29571C17L)) , l_1172.x))), (*l_471))), 2)) , p_1312->g_58)), p_1312->g_76.s1)))) >= (*p_1312->g_447));
            }
            for (p_1312->g_709 = 0; (p_1312->g_709 >= (-29)); --p_1312->g_709)
            { /* block id: 553 */
                int64_t l_1187 = 0x348A231F8DE83258L;
                uint64_t l_1261 = 0x8FE18FB8C26D1072L;
                ++l_1188;
                for (p_1312->g_46 = 0; (p_1312->g_46 == 11); ++p_1312->g_46)
                { /* block id: 557 */
                    VECTOR(uint64_t, 16) l_1230 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x8B4F6AE40AB51726L), 0x8B4F6AE40AB51726L), 0x8B4F6AE40AB51726L, 1UL, 0x8B4F6AE40AB51726L, (VECTOR(uint64_t, 2))(1UL, 0x8B4F6AE40AB51726L), (VECTOR(uint64_t, 2))(1UL, 0x8B4F6AE40AB51726L), 1UL, 0x8B4F6AE40AB51726L, 1UL, 0x8B4F6AE40AB51726L);
                    int32_t l_1233 = 0x6023E24FL;
                    VECTOR(int8_t, 8) l_1241 = (VECTOR(int8_t, 8))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 1L), 1L), 1L, (-4L), 1L);
                    int8_t l_1244 = 0x68L;
                    int i;
                    for (l_1153 = 0; (l_1153 > 13); l_1153++)
                    { /* block id: 560 */
                        int16_t *l_1231 = (void*)0;
                        int16_t *l_1232 = (void*)0;
                        int32_t l_1234 = 0L;
                        int16_t *l_1247 = (void*)0;
                        int16_t *l_1248 = (void*)0;
                        int16_t *l_1249 = (void*)0;
                        int16_t *l_1250 = (void*)0;
                        int16_t *l_1251 = (void*)0;
                        (**l_1131) = ((!(safe_add_func_uint64_t_u_u((safe_add_func_uint64_t_u_u(p_1312->g_340, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(1L, 0L)))).odd)), (FAKE_DIVERGE(p_1312->local_1_offset, get_local_id(1), 10) != (safe_lshift_func_uint16_t_u_s((*p_1312->g_90), 11)))))) && ((safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 4))(65527UL, 0xC7EEL, 0x0628L, 0x4037L)).z, 10)) < (7UL != (safe_add_func_uint32_t_u_u((safe_mul_func_int8_t_s_s((((**p_1312->g_446) ^ 0UL) , (l_1234 = (safe_mod_func_int32_t_s_s((safe_mod_func_uint16_t_u_u((((safe_sub_func_int64_t_s_s((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(p_1312->g_1213.s1137666332737515)).lo)))).s5 || l_1174.sf), (safe_lshift_func_uint8_t_u_s(((((safe_lshift_func_int16_t_s_s((safe_mod_func_int16_t_s_s(l_1220[3][0], ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(0x039FL, 0L)), ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 2))(p_1312->g_1221.sf6)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))((p_1312->g_83.s9 , (l_1233 = (safe_rshift_func_uint16_t_u_u((((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_1226.s60444045)).s1073542421121430)).even)).s4, (safe_lshift_func_int16_t_s_s(((p_1312->g_1229 = &p_1312->g_447) != &p_1312->g_447), p_1312->g_449.y)))) > p_1312->g_110) | l_1230.s7), 8)))), 0x46B9L, (-7L), ((VECTOR(int16_t, 4))((-4L))), 0x5F5DL)))).s26, ((VECTOR(int16_t, 2))(0x618AL))))), (-1L), (**l_1131), p_1312->g_58, l_1187, (-1L), 1L, 0x02B1L, 0x1EE4L, l_1234, ((VECTOR(int16_t, 2))(0x3C2DL)), 0x02F5L)).hi))).s6033277435264220)).s1)), l_1235)) == FAKE_DIVERGE(p_1312->local_2_offset, get_local_id(2), 10)) < l_1230.s8) , 0x6CL), l_1137.s9)))) , &p_1312->g_57) == p_1312->g_144), l_1234)), p_1312->g_1176.y)))), l_1187)), l_1230.s1)))));
                        (**l_1131) = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(p_1312->g_1236.xxyxyxxyxxxxyyxy)).s4b53)).even)).hi;
                        l_1258.x = ((((((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(p_1312->g_1239.sa1de0420)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x5EL, 1L)).yxyxxxxx)).s03)))), 0x06L, 0L)), l_1152, ((VECTOR(int8_t, 2))(p_1312->g_1240.s1b)), 0x45L)), ((VECTOR(int8_t, 16))(l_1241.s0700074651236403))))).s2, (safe_lshift_func_int8_t_s_s(l_1244, 5)))) || l_1234) == (safe_sub_func_int16_t_s_s((p_1312->g_1173.sd = 0x61B5L), l_1230.s2))) != 0x3517L) && l_1187) , ((*l_471) = (safe_sub_func_int32_t_s_s((safe_lshift_func_uint16_t_u_u(0xC4EBL, ((**p_1312->g_161) &= (safe_div_func_uint16_t_u_u(l_1234, p_1312->g_1140.x))))), 0x2E954CF8L))));
                        if (l_1187)
                            continue;
                    }
                }
                (*l_471) |= (((((*p_1312->g_407)++) || ((+l_1261) | ((GROUP_DIVERGE(2, 1) <= p_1312->g_1143.y) > l_1220[3][0]))) < ((VECTOR(uint16_t, 8))(p_1312->g_1262.yyyyyyxx)).s5) , ((*p_1312->g_447) = (-6L)));
            }
            (*p_1312->g_447) |= (**l_1131);
        }
        else
        { /* block id: 578 */
            return (**p_1312->g_1229);
        }
        (**l_1131) = ((l_49.s3 &= (**l_1131)) && (((((1UL && (l_1270 != ((((**l_1131) , ((VECTOR(int16_t, 8))(0x3B0FL, 0x04AEL, ((VECTOR(int16_t, 2))(p_1312->g_1271.zx)), p_1312->g_1138.s7, ((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 16))(l_1272.se141a71539c7826e)).s8894, ((VECTOR(int16_t, 4))(l_1273.s5220))))).lo, ((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 4))((1UL <= p_1312->g_1236.x), (p_1312->g_328.y = 0x7DC0L), 0x61CBL, (-1L))).zxxzxxxwwwywxwwz, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0L, 0x5111L)).yxyx)).zwywyyxyyxzzwzww))))).s47))), 0L)).s3) ^ ((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 16))(p_1312->g_449.y, 0xC9121F82L, ((VECTOR(uint32_t, 2))(0x98E13F92L)), 2UL, ((VECTOR(uint32_t, 4))(0x7D308AA9L)), 5UL, 0xF90B379FL, 0x24718145L, ((VECTOR(uint32_t, 2))(3UL)), 1UL, 0x79F3ED09L)).s31a4, ((VECTOR(uint32_t, 4))(0x2E26B1C2L)), ((VECTOR(uint32_t, 4))(0x82CBF47DL))))), (*l_471), (**l_1131), 2UL, 2UL)).s5, GROUP_DIVERGE(0, 1))) > (**l_1131))) , (**l_1131)))) , 4294967289UL) || p_1312->g_75.w) >= (*p_1312->g_447)) ^ 0x0DF31BBC45D1F09AL));
    }
    else
    { /* block id: 584 */
        if ((atomic_inc(&p_1312->g_atomic_input[22 * get_linear_group_id() + 9]) == 1))
        { /* block id: 586 */
            uint64_t l_1276 = 18446744073709551615UL;
            uint64_t l_1279 = 0xF62EFD922B35F037L;
            VECTOR(int32_t, 2) l_1282 = (VECTOR(int32_t, 2))(0x209D6627L, 0x514A8BF2L);
            int i;
            l_1276--;
            l_1279++;
            if (((VECTOR(int32_t, 16))(l_1282.xyxxxyxyyyyyyyxx)).s6)
            { /* block id: 589 */
                VECTOR(int32_t, 8) l_1283 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 5L), 5L), 5L, (-1L), 5L);
                uint16_t l_1284 = 0x3896L;
                int i;
                l_1284 |= (l_1282.y |= ((VECTOR(int32_t, 2))(l_1283.s33)).even);
            }
            else
            { /* block id: 592 */
                uint64_t l_1285 = 0x4E85BB2495BB447FL;
                int64_t l_1286 = 0x78DCF85A64011E3DL;
                VECTOR(int16_t, 8) l_1287 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x27BAL), 0x27BAL), 0x27BAL, 1L, 0x27BAL);
                int32_t l_1288 = (-2L);
                uint32_t l_1289 = 0x929762BFL;
                int32_t l_1290 = (-9L);
                int32_t *l_1291 = &l_1288;
                int32_t *l_1292 = &l_1288;
                int16_t l_1293 = 0x676DL;
                uint32_t l_1294 = 0x825AE731L;
                int16_t l_1311 = 0x7DC0L;
                int i;
                l_1291 = ((l_1290 = (l_1289 = ((((l_1286 = (l_1285 = GROUP_DIVERGE(2, 1))) , ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_1287.s06)))).even) , l_1288) , ((VECTOR(uint32_t, 8))(4294967295UL, 4294967287UL, 0x6664EFF0L, 0UL, 9UL, 0x3FCE6B87L, 1UL, 0xAF78383BL)).s3))) , (l_1292 = l_1291));
                l_1282.y &= l_1293;
                if (l_1294)
                { /* block id: 600 */
                    uint32_t l_1295 = 0UL;
                    VECTOR(int32_t, 2) l_1298 = (VECTOR(int32_t, 2))(0x6FEF4713L, 0L);
                    uint8_t l_1299 = 0x91L;
                    int i;
                    l_1295++;
                    l_1299 &= ((*l_1292) = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_1298.yxxyxxxyyyxyyyxx)).s6ee6)).x);
                }
                else
                { /* block id: 604 */
                    uint32_t l_1300 = 0x6A1281CBL;
                    int64_t l_1301[2][3] = {{0x51D4FF92EAAB519EL,0L,0x51D4FF92EAAB519EL},{0x51D4FF92EAAB519EL,0L,0x51D4FF92EAAB519EL}};
                    uint32_t l_1302 = 4294967288UL;
                    uint64_t l_1303 = 2UL;
                    int16_t l_1309 = 1L;
                    uint16_t l_1310[5];
                    int i, j;
                    for (i = 0; i < 5; i++)
                        l_1310[i] = 65531UL;
                    l_1303 = (l_1300 , (l_1301[1][0] , l_1302));
                    for (l_1301[0][0] = 0; (l_1301[0][0] >= (-12)); --l_1301[0][0])
                    { /* block id: 608 */
                        int32_t l_1306 = 0x3DA27A0EL;
                        VECTOR(int32_t, 16) l_1307 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x3C16F272L), 0x3C16F272L), 0x3C16F272L, 1L, 0x3C16F272L, (VECTOR(int32_t, 2))(1L, 0x3C16F272L), (VECTOR(int32_t, 2))(1L, 0x3C16F272L), 1L, 0x3C16F272L, 1L, 0x3C16F272L);
                        VECTOR(int32_t, 16) l_1308 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x67B2B5D6L), 0x67B2B5D6L), 0x67B2B5D6L, (-1L), 0x67B2B5D6L, (VECTOR(int32_t, 2))((-1L), 0x67B2B5D6L), (VECTOR(int32_t, 2))((-1L), 0x67B2B5D6L), (-1L), 0x67B2B5D6L, (-1L), 0x67B2B5D6L);
                        int i;
                        (*l_1291) |= l_1306;
                        l_1308.s6 = ((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_1307.sf2)).xxxxyyxyyyyxxyyx)).s4 , GROUP_DIVERGE(0, 1)) , ((*l_1291) |= ((VECTOR(int32_t, 2))(l_1308.se4)).even));
                    }
                    (*l_1292) ^= ((l_1309 = 0x449DC217604D5441L) , l_1310[4]);
                }
                l_1311 &= (l_1282.x = 0x6686B08EL);
            }
            unsigned int result = 0;
            result += l_1276;
            result += l_1279;
            result += l_1282.y;
            result += l_1282.x;
            atomic_add(&p_1312->g_special_values[22 * get_linear_group_id() + 9], result);
        }
        else
        { /* block id: 619 */
            (1 + 1);
        }
    }
    return (*l_471);
}


/* ------------------------------------------ */
/* 
 * reads : p_1312->g_1019 p_1312->g_472 p_1312->g_396
 * writes: p_1312->g_1019 p_1312->g_472
 */
int16_t  func_8(int32_t * p_9, struct S0 * p_1312)
{ /* block id: 452 */
    int32_t *l_1018[2][8] = {{(void*)0,(void*)0,&p_1312->g_5,&p_1312->g_472,&p_1312->g_472,&p_1312->g_472,&p_1312->g_5,(void*)0},{(void*)0,(void*)0,&p_1312->g_5,&p_1312->g_472,&p_1312->g_472,&p_1312->g_472,&p_1312->g_5,(void*)0}};
    int64_t l_1022 = (-1L);
    uint32_t l_1023 = 0UL;
    uint32_t l_1125 = 0UL;
    int i, j;
    p_1312->g_1019[5][0]++;
    ++l_1023;
    for (p_1312->g_472 = 0; (p_1312->g_472 >= 8); p_1312->g_472 = safe_add_func_uint16_t_u_u(p_1312->g_472, 6))
    { /* block id: 457 */
        if ((atomic_inc(&p_1312->g_atomic_input[22 * get_linear_group_id() + 18]) == 8))
        { /* block id: 459 */
            int32_t *l_1028[1];
            int32_t l_1030 = 0x6A3A06CEL;
            int32_t *l_1029 = &l_1030;
            int i;
            for (i = 0; i < 1; i++)
                l_1028[i] = (void*)0;
            l_1029 = l_1028[0];
            for (l_1030 = (-3); (l_1030 > (-15)); l_1030 = safe_sub_func_uint32_t_u_u(l_1030, 1))
            { /* block id: 463 */
                int32_t l_1033[6][4][9] = {{{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L}},{{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L}},{{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L}},{{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L}},{{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L}},{{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L},{9L,0L,0x5CE3674CL,0x6530C4CCL,0x2D6C85F9L,0x2D6C85F9L,0x6530C4CCL,0x5CE3674CL,0L}}};
                int32_t *l_1042 = &l_1033[1][3][8];
                VECTOR(int32_t, 8) l_1043 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-9L)), (-9L)), (-9L), 1L, (-9L));
                uint32_t l_1111[10] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
                int i, j, k;
                for (l_1033[1][3][8] = 0; (l_1033[1][3][8] < 1); l_1033[1][3][8]++)
                { /* block id: 466 */
                    int32_t l_1036[8] = {0x1689D5BFL,(-10L),0x1689D5BFL,0x1689D5BFL,(-10L),0x1689D5BFL,0x1689D5BFL,(-10L)};
                    int32_t *l_1041 = &l_1036[1];
                    int i;
                    for (l_1036[1] = 7; (l_1036[1] >= (-11)); l_1036[1] = safe_sub_func_uint64_t_u_u(l_1036[1], 9))
                    { /* block id: 469 */
                        VECTOR(int32_t, 16) l_1040 = (VECTOR(int32_t, 16))(0x79CE406CL, (VECTOR(int32_t, 4))(0x79CE406CL, (VECTOR(int32_t, 2))(0x79CE406CL, 0L), 0L), 0L, 0x79CE406CL, 0L, (VECTOR(int32_t, 2))(0x79CE406CL, 0L), (VECTOR(int32_t, 2))(0x79CE406CL, 0L), 0x79CE406CL, 0L, 0x79CE406CL, 0L);
                        int32_t *l_1039 = (void*)0;
                        int i;
                        l_1029 = l_1039;
                    }
                    l_1041 = l_1041;
                }
                l_1029 = l_1042;
                if (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_1043.s2367)).even)).odd)
                { /* block id: 475 */
                    int16_t l_1044 = (-1L);
                    uint8_t l_1045 = 255UL;
                    int16_t l_1046 = (-1L);
                    int64_t l_1047 = 0x556516E8800FC18FL;
                    int16_t l_1048 = 0L;
                    VECTOR(int32_t, 16) l_1049 = (VECTOR(int32_t, 16))(0x58655B36L, (VECTOR(int32_t, 4))(0x58655B36L, (VECTOR(int32_t, 2))(0x58655B36L, 0L), 0L), 0L, 0x58655B36L, 0L, (VECTOR(int32_t, 2))(0x58655B36L, 0L), (VECTOR(int32_t, 2))(0x58655B36L, 0L), 0x58655B36L, 0L, 0x58655B36L, 0L);
                    uint64_t l_1050 = 18446744073709551607UL;
                    VECTOR(uint8_t, 16) l_1051 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint8_t, 2))(1UL, 0UL), (VECTOR(uint8_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL);
                    VECTOR(uint8_t, 16) l_1052 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0UL), 0UL), 0UL, 255UL, 0UL, (VECTOR(uint8_t, 2))(255UL, 0UL), (VECTOR(uint8_t, 2))(255UL, 0UL), 255UL, 0UL, 255UL, 0UL);
                    uint8_t l_1053[10];
                    uint32_t l_1054 = 0x13BAFA6EL;
                    uint8_t l_1055 = 0xA8L;
                    uint32_t l_1056 = 4294967295UL;
                    VECTOR(uint32_t, 4) l_1057 = (VECTOR(uint32_t, 4))(6UL, (VECTOR(uint32_t, 2))(6UL, 0UL), 0UL);
                    VECTOR(uint32_t, 8) l_1058 = (VECTOR(uint32_t, 8))(0x3F8096E4L, (VECTOR(uint32_t, 4))(0x3F8096E4L, (VECTOR(uint32_t, 2))(0x3F8096E4L, 0x42C2CC7CL), 0x42C2CC7CL), 0x42C2CC7CL, 0x3F8096E4L, 0x42C2CC7CL);
                    VECTOR(uint32_t, 8) l_1059 = (VECTOR(uint32_t, 8))(0x2C70ACEFL, (VECTOR(uint32_t, 4))(0x2C70ACEFL, (VECTOR(uint32_t, 2))(0x2C70ACEFL, 0x94029FE7L), 0x94029FE7L), 0x94029FE7L, 0x2C70ACEFL, 0x94029FE7L);
                    VECTOR(int16_t, 4) l_1060 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-1L)), (-1L));
                    uint8_t l_1061 = 4UL;
                    int32_t l_1064 = 9L;
                    int64_t l_1065 = 1L;
                    uint32_t l_1066 = 0UL;
                    uint32_t l_1067 = 4294967295UL;
                    int8_t l_1068 = 0x03L;
                    int32_t l_1069 = (-1L);
                    uint32_t l_1070 = 4294967292UL;
                    int i;
                    for (i = 0; i < 10; i++)
                        l_1053[i] = 0x2CL;
                    (*l_1042) = (l_1044 , ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))((-10L), (-8L))))).xxxyxxxy)).s5);
                    l_1048 = ((*l_1029) = (l_1045 , (l_1046 , l_1047)));
                    if (((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 4))(l_1049.s7e99)), ((VECTOR(int32_t, 4))(l_1050, (((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 2))(l_1051.s8d)), ((VECTOR(uint8_t, 16))(254UL, ((VECTOR(uint8_t, 2))(l_1052.sf4)), ((((VECTOR(uint64_t, 8))(rhadd(((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 4))(0UL, 0xC3D1B679C2C761F6L, 18446744073709551609UL, 0xD8B9711C6DDC05F9L)).wxwzwwzzwxwyxwxy, ((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(1UL, (l_1054 = l_1053[2]), (l_1055 = GROUP_DIVERGE(2, 1)), ((VECTOR(uint32_t, 8))(4294967295UL, 0xF8542205L, 0x94878609L, l_1056, 1UL, ((VECTOR(uint32_t, 8))(l_1057.xxwzxxxy)).s1, 4294967291UL, 0x95DD2AAAL)), ((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(mul_hi(((VECTOR(uint32_t, 16))(l_1058.s6516661666167556)).s3e9e, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(l_1059.s2501120431264623)))).hi)).lo))), ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 16))(4UL, (++l_1061), l_1064, (l_1065 , 1UL), l_1066, 4294967290UL, 0x5B4888B8L, ((VECTOR(uint32_t, 4))(0x1D508676L)), FAKE_DIVERGE(p_1312->global_1_offset, get_global_id(1), 10), 1UL, GROUP_DIVERGE(0, 1), 0x510E939FL, 1UL)).lo, ((VECTOR(uint32_t, 8))(4294967295UL))))).s07)), ((VECTOR(uint32_t, 8))(0x084A8186L)), 0xBA5CDD12L, 0x595C5C8EL)).s05)).xyxyyyxxxyyxxxyx)).se6, ((VECTOR(uint32_t, 2))(0UL))))), ((VECTOR(uint32_t, 2))(0x0D7CF2A8L)), 4294967295UL)).odd)).s45, ((VECTOR(uint32_t, 2))(4UL)), ((VECTOR(uint32_t, 2))(0x05AF447AL))))).yyyxxxxx, ((VECTOR(uint32_t, 8))(1UL))))).odd, ((VECTOR(uint64_t, 4))(1UL))))).zyyxzyzxzwwzyyxy))).even, ((VECTOR(uint64_t, 8))(0xD0FD394303B44884L))))).s5 , 251UL) , l_1067), ((VECTOR(uint8_t, 4))(0x12L)), 255UL, l_1068, FAKE_DIVERGE(p_1312->group_0_offset, get_group_id(0), 10), ((VECTOR(uint8_t, 4))(0xD5L)), 0x4FL)).s73))).yxxyxxyx, ((VECTOR(uint8_t, 8))(0UL))))).s4 , l_1069), 0x368064A6L, 0x606732AFL))))), l_1070, 0x02399384L, 1L, 0x096FBE06L)).s17, ((VECTOR(int32_t, 2))(8L))))).lo)
                    { /* block id: 482 */
                        int32_t l_1071 = 0x0925B7EDL;
                        uint32_t l_1072 = 0xD30A383CL;
                        l_1071 &= 0x69142394L;
                        (*l_1029) &= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))((-1L), 0x3EFF7298L)))).yyxxyxxxxyyxyyyy)).s9;
                        l_1071 = l_1072;
                    }
                    else
                    { /* block id: 486 */
                        VECTOR(int32_t, 8) l_1073 = (VECTOR(int32_t, 8))(0x72C6156BL, (VECTOR(int32_t, 4))(0x72C6156BL, (VECTOR(int32_t, 2))(0x72C6156BL, 3L), 3L), 3L, 0x72C6156BL, 3L);
                        int64_t l_1074[4][2][3];
                        int16_t l_1075 = 1L;
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                        {
                            for (j = 0; j < 2; j++)
                            {
                                for (k = 0; k < 3; k++)
                                    l_1074[i][j][k] = 0x64F3C09A8110B0EDL;
                            }
                        }
                        l_1074[3][1][1] &= ((VECTOR(int32_t, 4))(l_1073.s7541)).y;
                        (*l_1029) = l_1075;
                    }
                }
                else
                { /* block id: 490 */
                    uint16_t l_1076 = 1UL;
                    uint64_t l_1077 = 18446744073709551606UL;
                    int8_t l_1078 = 0x15L;
                    int8_t l_1079 = 0x79L;
                    int32_t l_1080[1];
                    uint16_t l_1081 = 4UL;
                    uint16_t l_1107 = 0xD832L;
                    uint32_t l_1110 = 1UL;
                    uint32_t *l_1109 = &l_1110;
                    uint32_t **l_1108 = &l_1109;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1080[i] = 0x6D4E6B3BL;
                    l_1077 = (((VECTOR(uint64_t, 4))(0xC312E13EDA0328ABL, 0x5EDE09FB0E4E85C9L, 18446744073709551615UL, 0x8BA42950C66B6211L)).w , (l_1076 |= ((*l_1029) &= 0x68D12B3AL)));
                    if ((l_1078 , ((*l_1042) ^= (l_1081 &= (l_1080[0] = (l_1079 , l_1080[0]))))))
                    { /* block id: 497 */
                        uint16_t l_1084 = 65535UL;
                        uint16_t *l_1083 = &l_1084;
                        uint16_t **l_1082 = &l_1083;
                        int32_t l_1086 = 0x65D9EC16L;
                        int32_t *l_1085[5][6][3] = {{{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086}},{{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086}},{{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086}},{{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086}},{{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086},{&l_1086,&l_1086,&l_1086}}};
                        int64_t l_1087 = 0L;
                        int64_t l_1088 = 9L;
                        uint32_t l_1089 = 4294967289UL;
                        VECTOR(int16_t, 4) l_1090 = (VECTOR(int16_t, 4))(0x1CA6L, (VECTOR(int16_t, 2))(0x1CA6L, (-4L)), (-4L));
                        VECTOR(uint16_t, 4) l_1091 = (VECTOR(uint16_t, 4))(0x6E6CL, (VECTOR(uint16_t, 2))(0x6E6CL, 0UL), 0UL);
                        int32_t l_1092 = 0x5970C9A9L;
                        VECTOR(int32_t, 16) l_1093 = (VECTOR(int32_t, 16))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x322CDAADL), 0x322CDAADL), 0x322CDAADL, 7L, 0x322CDAADL, (VECTOR(int32_t, 2))(7L, 0x322CDAADL), (VECTOR(int32_t, 2))(7L, 0x322CDAADL), 7L, 0x322CDAADL, 7L, 0x322CDAADL);
                        int32_t l_1094[9] = {1L,(-8L),1L,1L,(-8L),1L,1L,(-8L),1L};
                        uint32_t l_1095 = 7UL;
                        uint32_t l_1096 = 4294967295UL;
                        uint8_t l_1097 = 2UL;
                        uint8_t l_1098 = 252UL;
                        uint16_t l_1099[5][1];
                        uint8_t l_1100 = 0x00L;
                        int i, j, k;
                        for (i = 0; i < 5; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_1099[i][j] = 65535UL;
                        }
                        l_1082 = (void*)0;
                        l_1028[0] = l_1085[0][1][0];
                        l_1099[1][0] |= (l_1098 |= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 4))(l_1087, ((VECTOR(int32_t, 2))(0x36A3D911L, (-8L))), 0x401955E9L)).lo, ((VECTOR(int32_t, 4))((l_1088 , l_1089), (-1L), 0x262E87E2L, 9L)).lo))).yyxyyxxy, ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(0x57448232L, (-3L))).xxyy, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 2))(l_1090.xy)).xyyyxyyyxxyyyxyx, ((VECTOR(uint16_t, 8))(l_1091.wyzxzzyy)).s5465000026616203))).sb8)).yxyx))), (l_1092 ^= ((*l_1042) = 0x5E2E4C27L)), ((VECTOR(int32_t, 2))(6L, 0x7CF6436BL)), 3L)).lo, ((VECTOR(int32_t, 4))(0x69E842F8L, ((VECTOR(int32_t, 2))(l_1093.sa7)), 0x00422CD6L)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((l_1094[4] = 0x5D08L) , l_1095), 0x639F0D2AL, ((l_1097 ^= (l_1096 , 4294967295UL)) , 0x52BEE9B5L), 3L, 0L, ((VECTOR(int32_t, 2))(0x16C013A7L)), 8L)).odd)).ywwwwzwx, ((VECTOR(int32_t, 8))(0x71795D9EL))))))).even))).wwxzwwwy, ((VECTOR(int32_t, 8))(0x7F6B12CAL))))).s67)).hi);
                        (*l_1042) = l_1100;
                    }
                    else
                    { /* block id: 507 */
                        int16_t l_1101 = 0L;
                        int16_t l_1102 = 0x741BL;
                        int8_t l_1103 = 0x78L;
                        uint8_t l_1104 = 1UL;
                        uint64_t l_1105 = 1UL;
                        int32_t l_1106 = 0x1C5437E8L;
                        l_1103 = ((l_1101 , 0x2B734612F084071DL) , l_1102);
                        (*l_1029) &= (l_1105 = l_1104);
                        (*l_1029) = l_1106;
                        (*l_1029) |= 6L;
                    }
                    (*l_1029) |= l_1107;
                    l_1108 = (void*)0;
                }
                l_1111[3]++;
            }
            for (l_1030 = 0; (l_1030 <= (-14)); --l_1030)
            { /* block id: 521 */
                uint16_t l_1116 = 65535UL;
                uint32_t l_1117 = 4UL;
                uint16_t l_1118 = 1UL;
                uint32_t l_1119 = 0x36B475B5L;
                int32_t l_1120 = (-1L);
                uint64_t l_1121 = 0xDB801D3D6F3D6694L;
                uint64_t l_1122 = 0x85E99B4FFC6169E9L;
                l_1121 |= (l_1120 = (l_1116 , (l_1117 , (l_1118 , l_1119))));
                ++l_1122;
            }
            unsigned int result = 0;
            result += l_1030;
            atomic_add(&p_1312->g_special_values[22 * get_linear_group_id() + 18], result);
        }
        else
        { /* block id: 526 */
            (1 + 1);
        }
    }
    l_1125++;
    return p_1312->g_396;
}


/* ------------------------------------------ */
/* 
 * reads : p_1312->g_447
 * writes: p_1312->g_107 p_1312->g_110 p_1312->g_46
 */
int32_t * func_10(int32_t  p_11, int32_t * p_12, struct S0 * p_1312)
{ /* block id: 449 */
    int32_t *l_1017[9];
    int i;
    for (i = 0; i < 9; i++)
        l_1017[i] = &p_1312->g_5;
    (*p_1312->g_447) = p_11;
    return l_1017[0];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_13(int32_t  p_14, int8_t  p_15, int64_t  p_16, int64_t  p_17, struct S0 * p_1312)
{ /* block id: 446 */
    int32_t l_1012 = 2L;
    int32_t *l_1013[9] = {&p_1312->g_472,&p_1312->g_107,&p_1312->g_472,&p_1312->g_472,&p_1312->g_107,&p_1312->g_472,&p_1312->g_472,&p_1312->g_107,&p_1312->g_472};
    VECTOR(uint8_t, 8) l_1014 = (VECTOR(uint8_t, 8))(0x9DL, (VECTOR(uint8_t, 4))(0x9DL, (VECTOR(uint8_t, 2))(0x9DL, 0xFCL), 0xFCL), 0xFCL, 0x9DL, 0xFCL);
    int i;
    --l_1014.s7;
    return l_1013[8];
}


/* ------------------------------------------ */
/* 
 * reads : p_1312->g_46 p_1312->l_comm_values
 * writes: p_1312->g_46 p_1312->g_5
 */
int16_t  func_23(int32_t  p_24, int32_t * p_25, uint16_t * p_26, struct S0 * p_1312)
{ /* block id: 441 */
    VECTOR(int64_t, 2) l_1005 = (VECTOR(int64_t, 2))(6L, 0L);
    int32_t *l_1006 = (void*)0;
    int32_t *l_1007 = &p_1312->g_5;
    int32_t *l_1008[9] = {(void*)0,&p_1312->g_110,(void*)0,(void*)0,&p_1312->g_110,(void*)0,(void*)0,&p_1312->g_110,(void*)0};
    uint8_t l_1009 = 249UL;
    int i;
    (*p_25) ^= (safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(l_1005.yy)))).lo, l_1005.x));
    l_1009++;
    (*l_1007) = (*p_25);
    return p_1312->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1312->tid, 2))];
}


/* ------------------------------------------ */
/* 
 * reads : p_1312->g_91 p_1312->g_342 p_1312->g_97 p_1312->g_98 p_1312->l_comm_values p_1312->g_58 p_1312->g_447 p_1312->g_107 p_1312->g_110 p_1312->g_457 p_1312->g_517 p_1312->g_407 p_1312->g_408 p_1312->g_537 p_1312->g_46 p_1312->g_642 p_1312->g_130 p_1312->g_424 p_1312->g_160 p_1312->g_161 p_1312->g_90 p_1312->g_99 p_1312->g_76 p_1312->g_comm_values p_1312->g_680 p_1312->g_472 p_1312->g_705 p_1312->g_706 p_1312->g_328 p_1312->g_709 p_1312->g_74 p_1312->g_458 p_1312->g_449 p_1312->g_460 p_1312->g_5 p_1312->g_884 p_1312->g_902 p_1312->g_903 p_1312->g_904 p_1312->g_858 p_1312->g_923
 * writes: p_1312->g_91 p_1312->g_342 p_1312->g_107 p_1312->g_110 p_1312->g_46 p_1312->g_97 p_1312->g_5 p_1312->g_408 p_1312->g_472 p_1312->g_328 p_1312->g_705 p_1312->g_709 p_1312->g_711 p_1312->g_447 p_1312->g_396 p_1312->g_130 p_1312->g_76 p_1312->g_458 p_1312->g_751 p_1312->g_460 p_1312->g_143 p_1312->g_884
 */
uint16_t * func_29(uint8_t  p_30, uint64_t  p_31, int64_t  p_32, uint16_t * p_33, uint16_t * p_34, struct S0 * p_1312)
{ /* block id: 185 */
    VECTOR(uint8_t, 8) l_489 = (VECTOR(uint8_t, 8))(0x9EL, (VECTOR(uint8_t, 4))(0x9EL, (VECTOR(uint8_t, 2))(0x9EL, 2UL), 2UL), 2UL, 0x9EL, 2UL);
    uint64_t *l_496[9];
    VECTOR(int32_t, 16) l_497 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 3L), 3L), 3L, 1L, 3L, (VECTOR(int32_t, 2))(1L, 3L), (VECTOR(int32_t, 2))(1L, 3L), 1L, 3L, 1L, 3L);
    int64_t l_504 = 0x5201F806F128F3A2L;
    uint16_t *l_505[5][8] = {{(void*)0,&p_1312->g_424,(void*)0,(void*)0,&p_1312->g_424,(void*)0,(void*)0,&p_1312->g_424},{(void*)0,&p_1312->g_424,(void*)0,(void*)0,&p_1312->g_424,(void*)0,(void*)0,&p_1312->g_424},{(void*)0,&p_1312->g_424,(void*)0,(void*)0,&p_1312->g_424,(void*)0,(void*)0,&p_1312->g_424},{(void*)0,&p_1312->g_424,(void*)0,(void*)0,&p_1312->g_424,(void*)0,(void*)0,&p_1312->g_424},{(void*)0,&p_1312->g_424,(void*)0,(void*)0,&p_1312->g_424,(void*)0,(void*)0,&p_1312->g_424}};
    int8_t *l_527 = (void*)0;
    int8_t **l_526 = &l_527;
    int32_t **l_534[10][1][6] = {{{&p_1312->g_98[8],&p_1312->g_98[1],&p_1312->g_98[8],(void*)0,&p_1312->g_98[1],(void*)0}},{{&p_1312->g_98[8],&p_1312->g_98[1],&p_1312->g_98[8],(void*)0,&p_1312->g_98[1],(void*)0}},{{&p_1312->g_98[8],&p_1312->g_98[1],&p_1312->g_98[8],(void*)0,&p_1312->g_98[1],(void*)0}},{{&p_1312->g_98[8],&p_1312->g_98[1],&p_1312->g_98[8],(void*)0,&p_1312->g_98[1],(void*)0}},{{&p_1312->g_98[8],&p_1312->g_98[1],&p_1312->g_98[8],(void*)0,&p_1312->g_98[1],(void*)0}},{{&p_1312->g_98[8],&p_1312->g_98[1],&p_1312->g_98[8],(void*)0,&p_1312->g_98[1],(void*)0}},{{&p_1312->g_98[8],&p_1312->g_98[1],&p_1312->g_98[8],(void*)0,&p_1312->g_98[1],(void*)0}},{{&p_1312->g_98[8],&p_1312->g_98[1],&p_1312->g_98[8],(void*)0,&p_1312->g_98[1],(void*)0}},{{&p_1312->g_98[8],&p_1312->g_98[1],&p_1312->g_98[8],(void*)0,&p_1312->g_98[1],(void*)0}},{{&p_1312->g_98[8],&p_1312->g_98[1],&p_1312->g_98[8],(void*)0,&p_1312->g_98[1],(void*)0}}};
    int32_t *l_535 = &p_1312->g_107;
    int32_t l_628 = 0x17D9439DL;
    int16_t l_644 = 8L;
    VECTOR(uint8_t, 4) l_664 = (VECTOR(uint8_t, 4))(0x31L, (VECTOR(uint8_t, 2))(0x31L, 0UL), 0UL);
    uint32_t l_673 = 0xDCE0BEEBL;
    VECTOR(int32_t, 8) l_686 = (VECTOR(int32_t, 8))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 5L), 5L), 5L, (-6L), 5L);
    VECTOR(int16_t, 8) l_695 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x3496L), 0x3496L), 0x3496L, (-1L), 0x3496L);
    VECTOR(uint16_t, 16) l_696 = (VECTOR(uint16_t, 16))(0x24D8L, (VECTOR(uint16_t, 4))(0x24D8L, (VECTOR(uint16_t, 2))(0x24D8L, 1UL), 1UL), 1UL, 0x24D8L, 1UL, (VECTOR(uint16_t, 2))(0x24D8L, 1UL), (VECTOR(uint16_t, 2))(0x24D8L, 1UL), 0x24D8L, 1UL, 0x24D8L, 1UL);
    int16_t l_769[2];
    int32_t l_794 = 8L;
    int16_t l_850 = 7L;
    int64_t l_851[2][10][1] = {{{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L}},{{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L},{0x396A17FF37AF3E98L}}};
    uint8_t l_852 = 0xA9L;
    int32_t l_878[1][2];
    int16_t l_920 = 0x24EDL;
    uint32_t l_998 = 4294967295UL;
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_496[i] = &p_1312->g_342;
    for (i = 0; i < 2; i++)
        l_769[i] = 8L;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
            l_878[i][j] = 0x540BFC65L;
    }
    if ((safe_add_func_uint16_t_u_u((l_497.sd &= (safe_mod_func_uint8_t_u_u(((0UL == (((VECTOR(int16_t, 16))(((safe_rshift_func_uint8_t_u_u((((safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(l_489.s1265)).z, (-1L))) , (~((safe_sub_func_uint16_t_u_u((++(*p_33)), ((safe_sub_func_int32_t_s_s(p_32, ((--p_1312->g_342) < (safe_mod_func_uint8_t_u_u(((((((safe_lshift_func_uint16_t_u_s(p_30, 8)) , ((((*p_1312->g_97) == (p_31 , &p_1312->g_46)) | l_489.s0) & ((0x59F636BC524C2F9FL | p_32) && 0L))) < GROUP_DIVERGE(0, 1)) | l_504) < GROUP_DIVERGE(1, 1)) == p_30), 0x33L))))) == l_489.s3))) , 0x17DFEC08L))) | 0x50D4D9ADL), 5)) == p_1312->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1312->tid, 2))]), ((VECTOR(int16_t, 4))(6L)), 1L, ((VECTOR(int16_t, 4))((-1L))), (-6L), 0x2571L, p_1312->g_58, ((VECTOR(int16_t, 2))(0x6173L)), 0x4AD2L)).s8 < l_504)) != p_31), 255UL))), l_489.s5)))
    { /* block id: 189 */
        int8_t *l_525 = (void*)0;
        int8_t **l_524 = &l_525;
        int8_t ***l_523[10][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
        uint32_t *l_533[3];
        uint32_t **l_532 = &l_533[2];
        VECTOR(int32_t, 4) l_624 = (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0L), 0L);
        int64_t l_625[3];
        int8_t l_626[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        int32_t l_627 = 2L;
        uint32_t l_630 = 1UL;
        int i, j;
        for (i = 0; i < 3; i++)
            l_533[i] = &p_1312->g_340;
        for (i = 0; i < 3; i++)
            l_625[i] = 0x76F0E654B0B55928L;
        for (p_32 = 4; (p_32 != (-7)); p_32--)
        { /* block id: 192 */
            uint16_t l_508 = 1UL;
            (*p_1312->g_447) |= l_508;
        }
        if ((safe_mul_func_int8_t_s_s(p_1312->g_457.y, (safe_mul_func_int8_t_s_s(p_31, (safe_rshift_func_int16_t_s_u((safe_add_func_int8_t_s_s((p_1312->g_517[4][3][1] == &p_1312->g_518[0]), (safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(18446744073709551610UL, 18446744073709551612UL, 0UL, 0xE3B90CAC0A2179E3L)).zxxxzxxz)))).s4, (((safe_mul_func_int16_t_s_s(((l_526 = (((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 4))(0x544956E5L, 4UL, 0xC8E9A5AFL, 0xDDA81103L)).yzzzwzwx))).s7 , (void*)0)) != &l_527), (safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 2))(0x2BDA2C52L, 0x3F2593D2L)).even, (safe_div_func_uint8_t_u_u((l_532 == (void*)0), (-1L))))))) || l_489.s5) == (*p_1312->g_407)))))), 8)))))))
        { /* block id: 196 */
            int8_t ***l_536 = &l_526;
            (*p_1312->g_447) &= (l_534[2][0][5] != (void*)0);
            l_535 = l_535;
            atomic_xor(&p_1312->l_atomic_reduction[0], ((&l_524 == l_536) != p_1312->g_537));
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_1312->v_collective += p_1312->l_atomic_reduction[0];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        }
        else
        { /* block id: 200 */
            int32_t *l_613 = &p_1312->g_472;
            int32_t *l_615 = &p_1312->g_107;
            int32_t *l_616 = &p_1312->g_5;
            int32_t *l_617 = (void*)0;
            int32_t *l_618 = (void*)0;
            int32_t *l_619 = (void*)0;
            int32_t *l_620 = &p_1312->g_472;
            int32_t *l_621 = &p_1312->g_472;
            int32_t l_622 = 0x270EDE1BL;
            int32_t *l_623[9];
            int32_t l_629 = 0x558B1EDEL;
            uint64_t l_646 = 18446744073709551615UL;
            int i;
            for (i = 0; i < 9; i++)
                l_623[i] = &l_622;
            if ((atomic_inc(&p_1312->l_atomic_input[1]) == 4))
            { /* block id: 202 */
                int32_t l_539[6][3][4] = {{{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L},{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L},{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L}},{{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L},{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L},{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L}},{{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L},{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L},{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L}},{{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L},{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L},{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L}},{{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L},{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L},{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L}},{{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L},{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L},{0x41D5385BL,0x6959F5B8L,0x0BEB173CL,0x6959F5B8L}}};
                int32_t *l_538 = &l_539[3][1][0];
                int32_t *l_540 = (void*)0;
                uint16_t l_541 = 0UL;
                uint32_t l_542[7][5][7] = {{{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL}},{{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL}},{{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL}},{{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL}},{{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL}},{{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL}},{{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL},{0x292C88CDL,0xAF824CAEL,2UL,4294967295UL,0xEBCB11C5L,0x1B4F37E2L,0x2971036DL}}};
                int32_t *l_543 = (void*)0;
                VECTOR(int32_t, 16) l_544 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x2CD03D10L), 0x2CD03D10L), 0x2CD03D10L, (-1L), 0x2CD03D10L, (VECTOR(int32_t, 2))((-1L), 0x2CD03D10L), (VECTOR(int32_t, 2))((-1L), 0x2CD03D10L), (-1L), 0x2CD03D10L, (-1L), 0x2CD03D10L);
                int i, j, k;
                l_540 = l_538;
                l_542[4][3][1] = l_541;
                l_543 = (void*)0;
                if (((VECTOR(int32_t, 16))(l_544.s4c008d75c69fa3d2)).s8)
                { /* block id: 206 */
                    uint32_t l_545 = 4294967295UL;
                    int32_t l_549 = 0x291EB39BL;
                    int32_t *l_548 = &l_549;
                    uint16_t l_550 = 0x7EF8L;
                    VECTOR(int32_t, 8) l_551 = (VECTOR(int32_t, 8))(0x09BE172AL, (VECTOR(int32_t, 4))(0x09BE172AL, (VECTOR(int32_t, 2))(0x09BE172AL, 0x3D3EA1F8L), 0x3D3EA1F8L), 0x3D3EA1F8L, 0x09BE172AL, 0x3D3EA1F8L);
                    uint32_t l_552 = 4294967295UL;
                    uint32_t l_553 = 1UL;
                    uint32_t l_554 = 8UL;
                    uint32_t l_555[3];
                    int16_t l_556 = 0x59B7L;
                    int64_t l_557[1];
                    uint32_t l_558 = 0xFA6EFCD1L;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_555[i] = 0xB0A62335L;
                    for (i = 0; i < 1; i++)
                        l_557[i] = 0x7D384EE7BF84B6CDL;
                    l_545--;
                    l_548 = l_548;
                    if (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))((l_550 , ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_551.s5511)).ywywwwxx)).s5), (-7L), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(((*l_540) = l_552), ((*l_538) ^= (l_553 , (l_554 , 0x594C5751L))), 0x239D7525L, ((*l_540) |= l_555[2]), 0x33D277D5L, (l_556 , l_557[0]), ((VECTOR(int32_t, 8))(1L)), 1L, (-1L))).s87, (int32_t)l_558))).xxyx)), 3L, 0x3186E2C7L)).s72)).xyxyxxyy)))).s4)
                    { /* block id: 212 */
                        VECTOR(uint16_t, 8) l_559 = (VECTOR(uint16_t, 8))(0x142FL, (VECTOR(uint16_t, 4))(0x142FL, (VECTOR(uint16_t, 2))(0x142FL, 0x564EL), 0x564EL), 0x564EL, 0x142FL, 0x564EL);
                        uint8_t l_560 = 0x12L;
                        VECTOR(int32_t, 2) l_561 = (VECTOR(int32_t, 2))(1L, 0x040E3108L);
                        VECTOR(int32_t, 8) l_562 = (VECTOR(int32_t, 8))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), (-7L)), (-7L)), (-7L), (-3L), (-7L));
                        VECTOR(int32_t, 16) l_563 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
                        uint8_t l_564 = 0x6DL;
                        uint16_t l_565 = 0x618EL;
                        uint8_t l_566[9];
                        uint32_t l_567[5] = {0UL,0UL,0UL,0UL,0UL};
                        int64_t l_568 = 0x6D8C8D3D7506B92FL;
                        int32_t l_569[10] = {6L,0x06E1C25EL,6L,6L,0x06E1C25EL,6L,6L,0x06E1C25EL,6L,6L};
                        int16_t l_570 = 0x6593L;
                        uint16_t l_571 = 9UL;
                        VECTOR(uint32_t, 2) l_572 = (VECTOR(uint32_t, 2))(1UL, 0UL);
                        VECTOR(int16_t, 16) l_573 = (VECTOR(int16_t, 16))(0x77B2L, (VECTOR(int16_t, 4))(0x77B2L, (VECTOR(int16_t, 2))(0x77B2L, 0x4F83L), 0x4F83L), 0x4F83L, 0x77B2L, 0x4F83L, (VECTOR(int16_t, 2))(0x77B2L, 0x4F83L), (VECTOR(int16_t, 2))(0x77B2L, 0x4F83L), 0x77B2L, 0x4F83L, 0x77B2L, 0x4F83L);
                        VECTOR(uint16_t, 16) l_574 = (VECTOR(uint16_t, 16))(0x43AAL, (VECTOR(uint16_t, 4))(0x43AAL, (VECTOR(uint16_t, 2))(0x43AAL, 0xAD08L), 0xAD08L), 0xAD08L, 0x43AAL, 0xAD08L, (VECTOR(uint16_t, 2))(0x43AAL, 0xAD08L), (VECTOR(uint16_t, 2))(0x43AAL, 0xAD08L), 0x43AAL, 0xAD08L, 0x43AAL, 0xAD08L);
                        int64_t l_575[2];
                        VECTOR(int32_t, 4) l_576 = (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0x4E88D1E1L), 0x4E88D1E1L);
                        uint32_t l_577 = 2UL;
                        uint16_t l_578 = 0x24B4L;
                        int i;
                        for (i = 0; i < 9; i++)
                            l_566[i] = 0x57L;
                        for (i = 0; i < 2; i++)
                            l_575[i] = 0x35017217645EE6A1L;
                        l_544.sa = ((*l_548) = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 2))(1L, 0x626EL)).yxxx, ((VECTOR(uint16_t, 8))(l_559.s04025476)).even))), (l_560 , ((VECTOR(int32_t, 8))(l_561.xyxxxyyy)).s7), ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 16))(0x06083AAAL, 0L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_562.s5523)), 0x31A7CB83L, ((VECTOR(int32_t, 2))(l_563.s5a)), 0x6129F7EBL)).s00)), (-10L), 0L)), 0x50D74D96L, (-1L), 0x0D470AD2L, 0x47D7AD85L, l_564, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 4))(l_565, l_566[7], 0x17085EA1L, 1L)).ywxxwzwwzzwyxwyy, ((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0x7B99CD1EL, l_567[2], (-2L), 0L)).zxzzwzyw)), ((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x4FD22343L, 0x4B72F697L)))).xxyyxyyy, (int32_t)((*l_538) = (((VECTOR(uint32_t, 16))((l_555[2] &= (l_568 , (GROUP_DIVERGE(0, 1) , (GROUP_DIVERGE(1, 1) , (l_571 = (l_569[5] , l_570)))))), 4UL, ((VECTOR(uint32_t, 4))(l_572.yyxx)), 0x9E80A9F5L, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(4294967295UL, 5UL)), 4294967295UL, 4294967293UL)).yzyyyzww)), 1UL)).sd , ((VECTOR(int32_t, 8))(1L, ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 4))(l_573.s818c)).lo, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_574.s5a)), ((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 16))(65533UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x2CD7L, 1UL)), 0x7B83L, 65531UL)), 0UL, 6UL, 65530UL, l_575[0], ((VECTOR(uint16_t, 4))(0xDA5BL)), ((VECTOR(uint16_t, 2))(0x8B4EL)), 0xAE3FL)).sf43b, ((VECTOR(uint16_t, 4))(0x08A6L))))).wxxxyywz)).s25, ((VECTOR(uint16_t, 2))(0x9355L))))), 65534UL, l_576.x, ((VECTOR(uint16_t, 4))(0x372DL)), 0x464AL, ((VECTOR(uint16_t, 2))(1UL)), 0UL, 7UL, 0x753FL)).s1f))), l_577, 0x64E4D43EL, 0x7EE0ABC0L, 3L, (-2L))).s5)), (int32_t)0x061AA55BL))), ((VECTOR(int32_t, 8))(0x51E4484FL))))).s2317523666744662))).sf474)), 0x7ABEBB50L)).sef, ((VECTOR(int32_t, 2))(0x4EEF98A8L)), ((VECTOR(int32_t, 2))(0x47223308L))))).lo, 0x07613968L, ((VECTOR(int32_t, 8))(3L)), 0L)).odd)).s3443145755353327)).s9);
                        l_578--;
                        l_563.s9 = 0x5419FB1AL;
                        (*l_538) ^= 0x7AAF151DL;
                    }
                    else
                    { /* block id: 221 */
                        int32_t l_582 = 0x6972602CL;
                        int32_t *l_581 = &l_582;
                        l_540 = (void*)0;
                        l_538 = l_581;
                    }
                    for (l_552 = (-29); (l_552 >= 3); l_552++)
                    { /* block id: 227 */
                        uint64_t l_585 = 1UL;
                        int32_t l_586 = 0x184328EFL;
                        int32_t l_587 = 0x2594505EL;
                        (*l_548) = l_585;
                        l_587 ^= l_586;
                    }
                }
                else
                { /* block id: 231 */
                    uint32_t l_588 = 0xE72B6333L;
                    uint16_t l_589 = 0x7701L;
                    int32_t l_590 = 1L;
                    l_590 |= (l_589 = (l_544.s3 = ((*l_540) &= l_588)));
                    for (l_588 = 0; (l_588 >= 24); l_588 = safe_add_func_int32_t_s_s(l_588, 5))
                    { /* block id: 238 */
                        uint32_t l_593 = 0x0AB94229L;
                        int32_t l_594[8][3][1] = {{{0x433F58C8L},{0x433F58C8L},{0x433F58C8L}},{{0x433F58C8L},{0x433F58C8L},{0x433F58C8L}},{{0x433F58C8L},{0x433F58C8L},{0x433F58C8L}},{{0x433F58C8L},{0x433F58C8L},{0x433F58C8L}},{{0x433F58C8L},{0x433F58C8L},{0x433F58C8L}},{{0x433F58C8L},{0x433F58C8L},{0x433F58C8L}},{{0x433F58C8L},{0x433F58C8L},{0x433F58C8L}},{{0x433F58C8L},{0x433F58C8L},{0x433F58C8L}}};
                        int32_t l_595[10][10] = {{0x142B8BE0L,0x0C5F14DBL,(-1L),0x0C5F14DBL,0x142B8BE0L,(-10L),0L,0x4AFEF80FL,0x12E12F45L,0x315E8A76L},{0x142B8BE0L,0x0C5F14DBL,(-1L),0x0C5F14DBL,0x142B8BE0L,(-10L),0L,0x4AFEF80FL,0x12E12F45L,0x315E8A76L},{0x142B8BE0L,0x0C5F14DBL,(-1L),0x0C5F14DBL,0x142B8BE0L,(-10L),0L,0x4AFEF80FL,0x12E12F45L,0x315E8A76L},{0x142B8BE0L,0x0C5F14DBL,(-1L),0x0C5F14DBL,0x142B8BE0L,(-10L),0L,0x4AFEF80FL,0x12E12F45L,0x315E8A76L},{0x142B8BE0L,0x0C5F14DBL,(-1L),0x0C5F14DBL,0x142B8BE0L,(-10L),0L,0x4AFEF80FL,0x12E12F45L,0x315E8A76L},{0x142B8BE0L,0x0C5F14DBL,(-1L),0x0C5F14DBL,0x142B8BE0L,(-10L),0L,0x4AFEF80FL,0x12E12F45L,0x315E8A76L},{0x142B8BE0L,0x0C5F14DBL,(-1L),0x0C5F14DBL,0x142B8BE0L,(-10L),0L,0x4AFEF80FL,0x12E12F45L,0x315E8A76L},{0x142B8BE0L,0x0C5F14DBL,(-1L),0x0C5F14DBL,0x142B8BE0L,(-10L),0L,0x4AFEF80FL,0x12E12F45L,0x315E8A76L},{0x142B8BE0L,0x0C5F14DBL,(-1L),0x0C5F14DBL,0x142B8BE0L,(-10L),0L,0x4AFEF80FL,0x12E12F45L,0x315E8A76L},{0x142B8BE0L,0x0C5F14DBL,(-1L),0x0C5F14DBL,0x142B8BE0L,(-10L),0L,0x4AFEF80FL,0x12E12F45L,0x315E8A76L}};
                        int32_t l_596 = 0x22C3109BL;
                        uint32_t l_597[6][2];
                        int32_t l_598 = (-8L);
                        int32_t l_599 = 1L;
                        int16_t l_600 = 0L;
                        int32_t l_601 = 0x4B13BE25L;
                        uint32_t l_602 = 0UL;
                        VECTOR(int16_t, 4) l_603 = (VECTOR(int16_t, 4))(0x369FL, (VECTOR(int16_t, 2))(0x369FL, 0L), 0L);
                        VECTOR(int16_t, 2) l_604 = (VECTOR(int16_t, 2))((-1L), 0x5DFAL);
                        VECTOR(uint16_t, 4) l_605 = (VECTOR(uint16_t, 4))(0xF2EFL, (VECTOR(uint16_t, 2))(0xF2EFL, 0x687FL), 0x687FL);
                        VECTOR(int32_t, 8) l_606 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-8L)), (-8L)), (-8L), 1L, (-8L));
                        VECTOR(int32_t, 8) l_607 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x45069768L), 0x45069768L), 0x45069768L, 0L, 0x45069768L);
                        uint16_t l_608 = 9UL;
                        uint64_t l_609 = 0UL;
                        uint16_t l_610 = 0x447CL;
                        int64_t l_611 = 1L;
                        uint16_t l_612 = 0xFFAEL;
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_597[i][j] = 0x6EEEC6EFL;
                        }
                        l_594[6][2][0] |= ((*l_540) = l_593);
                        l_612 |= ((l_596 = l_595[1][4]) , ((l_599 = (l_598 = l_597[0][1])) , (l_600 , ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 4))(0x1CFC3375L, ((*l_538) ^= (l_601 , l_602)), (-1L), (-1L))).wxywwzzw, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(0x2EC8065CL, 0x2DD061B0L, ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 2))(l_603.yy)).yyxxxxyxyyxyyyyx, ((VECTOR(int16_t, 16))(l_604.xxyyxxxxyxxyyxxy))))).lo)).even)).odd, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_605.wx)).xyxxyxyxxyxyxyxx)).s9056)).yyxyyzzx)).s30))), (((*l_538) = 0x587E09B6L) , ((VECTOR(int32_t, 2))(l_606.s33)).even), (-3L), 0x6706E670L, 0x66ED69D6L)).even, ((VECTOR(int32_t, 2))(l_607.s41)).yyxy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(0x654F3C4EL, l_608, (l_598 ^= 0x12453333L), 0x3845BC17L, 6L, (l_594[6][2][0] = l_609), l_610, l_611, (-1L), 0x6A6BF248L, ((VECTOR(int32_t, 2))((-3L))), 0x0FB7AAD8L, 0x77E3D931L, 0x7140DE24L, 0x0F5AA881L)).s8c48))))))).xzxyyzwz))))).s5055457377051551, ((VECTOR(int32_t, 16))(0x63B33C3FL))))).sddc4)).z)));
                    }
                }
                unsigned int result = 0;
                int l_539_i0, l_539_i1, l_539_i2;
                for (l_539_i0 = 0; l_539_i0 < 6; l_539_i0++) {
                    for (l_539_i1 = 0; l_539_i1 < 3; l_539_i1++) {
                        for (l_539_i2 = 0; l_539_i2 < 4; l_539_i2++) {
                            result += l_539[l_539_i0][l_539_i1][l_539_i2];
                        }
                    }
                }
                result += l_541;
                int l_542_i0, l_542_i1, l_542_i2;
                for (l_542_i0 = 0; l_542_i0 < 7; l_542_i0++) {
                    for (l_542_i1 = 0; l_542_i1 < 5; l_542_i1++) {
                        for (l_542_i2 = 0; l_542_i2 < 7; l_542_i2++) {
                            result += l_542[l_542_i0][l_542_i1][l_542_i2];
                        }
                    }
                }
                result += l_544.sf;
                result += l_544.se;
                result += l_544.sd;
                result += l_544.sc;
                result += l_544.sb;
                result += l_544.sa;
                result += l_544.s9;
                result += l_544.s8;
                result += l_544.s7;
                result += l_544.s6;
                result += l_544.s5;
                result += l_544.s4;
                result += l_544.s3;
                result += l_544.s2;
                result += l_544.s1;
                result += l_544.s0;
                atomic_add(&p_1312->l_special_values[1], result);
            }
            else
            { /* block id: 251 */
                (1 + 1);
            }
            l_630--;
            for (l_628 = (-30); (l_628 != 24); ++l_628)
            { /* block id: 257 */
                int32_t *l_641[4];
                int32_t l_651 = 0L;
                int32_t l_652 = 0x3351D05AL;
                int32_t l_653 = 1L;
                int i;
                for (i = 0; i < 4; i++)
                    l_641[i] = &p_1312->g_46;
                for (p_1312->g_46 = 0; (p_1312->g_46 > (-5)); p_1312->g_46 = safe_sub_func_uint32_t_u_u(p_1312->g_46, 4))
                { /* block id: 260 */
                    int8_t l_643 = 0x31L;
                    int32_t l_645 = 2L;
                    l_643 = (safe_mod_func_int8_t_s_s(p_1312->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1312->tid, 2))], (safe_add_func_int32_t_s_s((l_641[0] == (void*)0), ((VECTOR(uint32_t, 4))(upsample(((VECTOR(uint16_t, 16))(p_1312->g_642.s3ea157c793e2c286)).sda5e, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(65527UL, 0UL)), 65535UL, 0x3F25L))))).z))));
                    ++l_646;
                    for (l_646 = 0; (l_646 == 45); l_646 = safe_add_func_uint64_t_u_u(l_646, 3))
                    { /* block id: 265 */
                        uint32_t l_654 = 0xC4D49A40L;
                        ++l_654;
                        return p_34;
                    }
                }
                return p_34;
            }
        }
    }
    else
    { /* block id: 273 */
        uint32_t l_657 = 0xB95BEB65L;
        int8_t *l_662 = &p_1312->g_130;
        VECTOR(int16_t, 16) l_663 = (VECTOR(int16_t, 16))(0x5FA6L, (VECTOR(int16_t, 4))(0x5FA6L, (VECTOR(int16_t, 2))(0x5FA6L, 1L), 1L), 1L, 0x5FA6L, 1L, (VECTOR(int16_t, 2))(0x5FA6L, 1L), (VECTOR(int16_t, 2))(0x5FA6L, 1L), 0x5FA6L, 1L, 0x5FA6L, 1L);
        VECTOR(int8_t, 2) l_665 = (VECTOR(int8_t, 2))(6L, 0x79L);
        VECTOR(uint16_t, 2) l_672 = (VECTOR(uint16_t, 2))(5UL, 0x68BEL);
        int32_t **l_676 = &l_535;
        int i;
        (*l_676) = func_66(((p_1312->g_130 == (++l_657)) > (safe_mul_func_int16_t_s_s((((((*l_526) = l_662) == (void*)0) | (*p_1312->g_407)) >= ((VECTOR(int16_t, 16))(l_663.s553f9f0def84cc6a)).s1), ((((VECTOR(uint8_t, 16))(l_664.zzywzwwwwzzyywwz)).s5 | (*l_535)) != ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 8))(l_665.xxyyyxyx)), ((VECTOR(int8_t, 8))(0x49L, 3L, ((VECTOR(int8_t, 2))(0x7AL, 1L)), ((l_663.s3 == (safe_div_func_uint8_t_u_u((safe_add_func_uint8_t_u_u(0x9EL, (safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(0x6D2CL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_672.yx)).yyyy)), 0x9133L, 0x4F98L, 0x1EE2L)).s0, l_673)))), (((p_1312->g_424 & p_30) >= GROUP_DIVERGE(2, 1)) , 0x10L)))) , (*l_535)), ((VECTOR(int8_t, 2))(0x00L)), 1L))))).s2322630147600446)).s1)))), (***p_1312->g_160), p_32, p_1312);
    }
    if ((*l_535))
    { /* block id: 278 */
        VECTOR(uint8_t, 4) l_681 = (VECTOR(uint8_t, 4))(0x52L, (VECTOR(uint8_t, 2))(0x52L, 255UL), 255UL);
        int32_t l_697 = 0x7B1DEB00L;
        int32_t *l_698 = &p_1312->g_472;
        int16_t *l_701 = (void*)0;
        int16_t *l_702 = (void*)0;
        int16_t *l_703[3][4] = {{&l_644,&l_644,&l_644,&l_644},{&l_644,&l_644,&l_644,&l_644},{&l_644,&l_644,&l_644,&l_644}};
        uint8_t *l_704[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t *l_707 = &l_628;
        int32_t *l_708 = &p_1312->g_709;
        int32_t *l_710 = &p_1312->g_711;
        int32_t **l_712 = &p_1312->g_447;
        VECTOR(uint16_t, 4) l_776 = (VECTOR(uint16_t, 4))(0x7955L, (VECTOR(uint16_t, 2))(0x7955L, 0xC58BL), 0xC58BL);
        uint32_t l_804[6][4] = {{1UL,8UL,0x75391C24L,8UL},{1UL,8UL,0x75391C24L,8UL},{1UL,8UL,0x75391C24L,8UL},{1UL,8UL,0x75391C24L,8UL},{1UL,8UL,0x75391C24L,8UL},{1UL,8UL,0x75391C24L,8UL}};
        VECTOR(int8_t, 4) l_818 = (VECTOR(int8_t, 4))(0x69L, (VECTOR(int8_t, 2))(0x69L, 0x6DL), 0x6DL);
        VECTOR(int8_t, 2) l_819 = (VECTOR(int8_t, 2))(0x15L, 0x20L);
        VECTOR(int8_t, 2) l_820 = (VECTOR(int8_t, 2))(1L, 0L);
        VECTOR(uint16_t, 8) l_826 = (VECTOR(uint16_t, 8))(0xF96BL, (VECTOR(uint16_t, 4))(0xF96BL, (VECTOR(uint16_t, 2))(0xF96BL, 0x913DL), 0x913DL), 0x913DL, 0xF96BL, 0x913DL);
        int32_t l_849[1][1][7];
        uint16_t l_915 = 1UL;
        VECTOR(uint32_t, 4) l_918 = (VECTOR(uint32_t, 4))(0xB3B036F9L, (VECTOR(uint32_t, 2))(0xB3B036F9L, 0UL), 0UL);
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 7; k++)
                    l_849[i][j][k] = 0x1E802CF4L;
            }
        }
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_1312->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[(safe_mod_func_uint32_t_u_u((safe_mul_func_int8_t_s_s(0L, ((*p_1312->g_407) = 0x91L))), 10))][(safe_mod_func_uint32_t_u_u(p_1312->tid, 2))]));
        (*l_712) = func_66(((*l_710) = ((*l_708) = (((safe_unary_minus_func_int16_t_s(p_32)) || ((p_31 , p_1312->g_680) || ((VECTOR(uint8_t, 16))(l_681.yxxywxwxywywyzxz)).sc)) , ((*l_707) = ((safe_mul_func_int8_t_s_s((((65535UL & GROUP_DIVERGE(1, 1)) , (safe_mul_func_uint8_t_u_u((((((*l_535) | ((((VECTOR(int32_t, 4))(l_686.s6602)).x ^ ((safe_div_func_uint16_t_u_u(((((safe_rshift_func_int16_t_s_u((safe_add_func_uint16_t_u_u(0x1AABL, (((safe_add_func_int32_t_s_s((l_697 ^= ((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 4))(l_695.s4616)).xyxyzwyyxxywzzyy, ((VECTOR(uint16_t, 4))(l_696.s88e4)).zzxywwxzyxzxxxzw))).sf), ((*l_698) |= p_31))) , (p_1312->g_705 |= (((safe_rshift_func_uint8_t_u_u(((p_1312->g_328.x = p_30) >= p_1312->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1312->tid, 2))]), 3)) & p_32) != (*l_535)))) , 0x483BL))), 3)) != 65531UL) | (*p_34)) >= p_31), 1UL)) <= p_31)) , (*l_698))) <= p_1312->g_706) != 0x55FD78B5L) , GROUP_DIVERGE(0, 1)), 246UL))) , p_1312->g_328.y), 0x50L)) < l_681.y))))), (*p_1312->g_90), p_32, p_1312);
        for (p_1312->g_709 = (-16); (p_1312->g_709 == (-19)); p_1312->g_709 = safe_sub_func_uint64_t_u_u(p_1312->g_709, 6))
        { /* block id: 293 */
            uint32_t l_728 = 4UL;
            int64_t *l_737[5];
            VECTOR(int8_t, 8) l_745 = (VECTOR(int8_t, 8))(0x51L, (VECTOR(int8_t, 4))(0x51L, (VECTOR(int8_t, 2))(0x51L, 0x00L), 0x00L), 0x00L, 0x51L, 0x00L);
            int8_t **l_749 = &l_527;
            int32_t l_783 = 0x40465086L;
            uint32_t *l_793 = &l_728;
            int32_t *l_799[9][5] = {{(void*)0,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,(void*)0},{(void*)0,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,(void*)0},{(void*)0,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,(void*)0},{(void*)0,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,(void*)0},{(void*)0,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,(void*)0},{(void*)0,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,(void*)0},{(void*)0,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,(void*)0},{(void*)0,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,(void*)0},{(void*)0,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,(void*)0}};
            int32_t l_800 = 0x57E1CE9FL;
            VECTOR(uint16_t, 4) l_825 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x87B0L), 0x87B0L);
            int32_t l_844 = 0x15399251L;
            int32_t *l_847 = &l_794;
            int32_t *l_848[8][3] = {{&l_697,&p_1312->g_5,&l_697},{&l_697,&p_1312->g_5,&l_697},{&l_697,&p_1312->g_5,&l_697},{&l_697,&p_1312->g_5,&l_697},{&l_697,&p_1312->g_5,&l_697},{&l_697,&p_1312->g_5,&l_697},{&l_697,&p_1312->g_5,&l_697},{&l_697,&p_1312->g_5,&l_697}};
            int i, j;
            for (i = 0; i < 5; i++)
                l_737[i] = &l_504;
            for (p_1312->g_110 = (-7); (p_1312->g_110 > (-10)); p_1312->g_110 = safe_sub_func_uint32_t_u_u(p_1312->g_110, 2))
            { /* block id: 296 */
                int32_t l_738 = 0x4CD2A245L;
                for (p_1312->g_396 = 0; (p_1312->g_396 < 49); p_1312->g_396 = safe_add_func_int16_t_s_s(p_1312->g_396, 6))
                { /* block id: 299 */
                    int32_t *l_719 = &p_1312->g_107;
                    if (p_31)
                        break;
                    if ((*l_698))
                        continue;
                    (*l_712) = l_719;
                }
                for (p_1312->g_130 = 21; (p_1312->g_130 <= 29); p_1312->g_130 = safe_add_func_uint8_t_u_u(p_1312->g_130, 5))
                { /* block id: 306 */
                    int8_t **l_750 = &l_527;
                    for (p_1312->g_91 = (-28); (p_1312->g_91 > 35); p_1312->g_91 = safe_add_func_int8_t_s_s(p_1312->g_91, 1))
                    { /* block id: 309 */
                        VECTOR(uint64_t, 2) l_732 = (VECTOR(uint64_t, 2))(0xE970D55062CEE765L, 18446744073709551615UL);
                        int32_t l_739 = 0x6FC9D54EL;
                        uint32_t l_740 = 0x599C4EA0L;
                        int8_t *l_746 = (void*)0;
                        int8_t *l_747[8][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
                        int64_t *l_748[5][2] = {{&l_504,(void*)0},{&l_504,(void*)0},{&l_504,(void*)0},{&l_504,(void*)0},{&l_504,(void*)0}};
                        int i, j;
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_1312->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[(safe_mod_func_uint32_t_u_u((((safe_mod_func_int16_t_s_s(((p_32 , (safe_lshift_func_uint8_t_u_s(l_728, ((0xCC783A1A951D06BEL & (safe_lshift_func_int16_t_s_s((p_1312->g_90 != (void*)0), (((l_738 = (p_1312->g_76.s4 ^= (safe_unary_minus_func_uint64_t_u(((VECTOR(uint64_t, 8))(0xB647CA4414872074L, ((VECTOR(uint64_t, 4))(l_732.xxyy)), (safe_rshift_func_int16_t_s_u((((VECTOR(int32_t, 16))(0x7251D434L, (p_1312->g_74.s6 && (((VECTOR(int64_t, 16))((l_737[4] != (void*)0), 6L, (-4L), ((VECTOR(int64_t, 4))(0L)), ((VECTOR(int64_t, 8))((-2L))), 0x770D6BF5121A06B0L)).sc == 0x147DA666D72F6F5DL)), (-8L), ((VECTOR(int32_t, 4))(0x19DD23ECL)), 3L, 1L, 0L, (-10L), ((VECTOR(int32_t, 2))(0L)), 0x3ACF1168L, 5L, 0x6AE5BE04L)).sf && (*l_698)), l_728)), 0x0581D020CBBF9DFDL, 0x679927D65B33C0AAL)).s3)))) > p_31) | (*p_1312->g_447))))) ^ l_739)))) && 0x61559D8DC20B2B5EL), (-1L))) ^ 2L) && l_740), 10))][(safe_mod_func_uint32_t_u_u(p_1312->tid, 2))]));
                        (*l_698) = (+(safe_lshift_func_uint8_t_u_u((safe_add_func_int8_t_s_s((p_1312->g_458.s0 &= ((VECTOR(int8_t, 16))(l_745.s1723006140162205)).sf), p_31)), ((p_1312->g_449.x , l_748[2][1]) != &l_504))));
                    }
                    (*l_535) &= (l_749 != (p_1312->g_751 = l_750));
                }
                (*l_712) = l_535;
                for (p_1312->g_460 = (-20); (p_1312->g_460 > (-28)); --p_1312->g_460)
                { /* block id: 324 */
                    int32_t l_759 = 1L;
                    int16_t *l_762 = (void*)0;
                    for (p_1312->g_5 = 11; (p_1312->g_5 <= (-19)); p_1312->g_5 = safe_sub_func_int64_t_s_s(p_1312->g_5, 9))
                    { /* block id: 327 */
                        uint32_t *l_784 = &p_1312->g_143[4];
                        (*p_1312->g_447) = (((*p_1312->g_407) <= (safe_add_func_uint32_t_u_u((l_759 > (safe_mul_func_uint8_t_u_u(((void*)0 != l_762), l_738))), (safe_mod_func_uint16_t_u_u(((&p_1312->g_447 != &p_1312->g_447) == (l_702 == ((safe_sub_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((p_30 = (((((-8L) == p_30) <= (**p_1312->g_161)) & (-7L)) , (*l_698))), (*p_1312->g_407))), p_32)) , l_701))), l_769[0]))))) ^ 0x0BL);
                        (**l_712) = (p_32 || ((*l_784) = (((safe_rshift_func_int16_t_s_u(0x3A4FL, ((((safe_lshift_func_uint16_t_u_u((~((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(uint16_t, 4))(1UL, 6UL, 0x37C1L, 0x8145L)).wxzzzwyz, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))((p_30 & (safe_mul_func_uint16_t_u_u((*l_698), p_1312->g_328.y))), 0xC8E8L, 0x0696L, ((VECTOR(uint16_t, 4))(l_776.yzzx)), ((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 8))((safe_add_func_int8_t_s_s(p_30, p_32)), (safe_div_func_uint64_t_u_u(l_759, ((l_783 &= (+((safe_mod_func_int32_t_s_s((*p_1312->g_447), (**l_712))) , p_30))) | 0x5C93C07852BA2571L))), ((VECTOR(uint16_t, 2))(0x2A95L)), 0x5B55L, 1UL, 65531UL, 0x8DBCL)).odd, ((VECTOR(uint16_t, 4))(0x818FL)), ((VECTOR(uint16_t, 4))(0x3206L))))), 0UL, (*p_1312->g_90), ((VECTOR(uint16_t, 2))(0x642DL)), 65535UL)).s64f9)).yzxwyxwy))).s1), l_759)) ^ p_32) < 0xADF626FC674AE5A0L) == (-9L)))) <= l_745.s2) , GROUP_DIVERGE(1, 1))));
                    }
                }
            }
            if (p_31)
                continue;
            for (l_783 = 0; (l_783 >= 19); l_783 = safe_add_func_uint16_t_u_u(l_783, 7))
            { /* block id: 339 */
                int16_t l_803[2];
                VECTOR(uint16_t, 16) l_824 = (VECTOR(uint16_t, 16))(0x577DL, (VECTOR(uint16_t, 4))(0x577DL, (VECTOR(uint16_t, 2))(0x577DL, 1UL), 1UL), 1UL, 0x577DL, 1UL, (VECTOR(uint16_t, 2))(0x577DL, 1UL), (VECTOR(uint16_t, 2))(0x577DL, 1UL), 0x577DL, 1UL, 0x577DL, 1UL);
                int32_t l_834[3][10][2] = {{{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L}},{{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L}},{{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L},{3L,0L}}};
                int32_t l_840 = 0L;
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_803[i] = 6L;
                (1 + 1);
            }
            l_852--;
        }
        if ((**l_712))
        { /* block id: 372 */
            VECTOR(uint8_t, 8) l_859 = (VECTOR(uint8_t, 8))(246UL, (VECTOR(uint8_t, 4))(246UL, (VECTOR(uint8_t, 2))(246UL, 0x8FL), 0x8FL), 0x8FL, 246UL, 0x8FL);
            VECTOR(uint8_t, 8) l_860 = (VECTOR(uint8_t, 8))(9UL, (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 246UL), 246UL), 246UL, 9UL, 246UL);
            int32_t *l_880 = &p_1312->g_110;
            int32_t *l_881 = &p_1312->g_110;
            int32_t *l_882 = &l_697;
            int32_t *l_883[2][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int i, j;
            for (p_1312->g_342 = 0; (p_1312->g_342 == 35); p_1312->g_342 = safe_add_func_uint64_t_u_u(p_1312->g_342, 2))
            { /* block id: 375 */
                int16_t l_857 = 0x7F53L;
                int32_t l_863 = 0x06F47286L;
                int32_t **l_879[10] = {&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535,&l_535};
                int i;
                l_698 = ((*l_712) = func_66((l_857 > ((VECTOR(uint64_t, 4))(add_sat(((VECTOR(uint64_t, 4))(p_1312->g_858.s4237)), ((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 4))(((-1L) != ((((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 16))(l_859.s7526764474275270)).se8f3, ((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(l_860.s71)))), (safe_mul_func_int8_t_s_s(((*l_698) |= (((l_863 = 1UL) ^ (4UL > 1UL)) ^ (0x5F078DDFL > l_859.s3))), ((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),VECTOR(uint8_t, 8),((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))((safe_div_func_uint8_t_u_u((safe_div_func_int8_t_s_s((safe_mod_func_uint64_t_u_u((l_707 != ((safe_div_func_int16_t_s_s((((safe_add_func_uint8_t_u_u((((((safe_lshift_func_int16_t_s_s(((safe_mul_func_int16_t_s_s(p_1312->g_642.s8, p_1312->g_342)) > (-8L)), p_1312->g_46)) < 252UL) | l_859.s1) >= l_857) , GROUP_DIVERGE(0, 1)), 9UL)) , p_30) >= l_859.s7), 0x1C80L)) , (void*)0)), 0x5494EC68B908E7F8L)), l_859.s0)), GROUP_DIVERGE(1, 1))), ((VECTOR(uint8_t, 4))(0x02L)), 0UL, 0xE5L, ((VECTOR(uint8_t, 4))(250UL)), ((VECTOR(uint8_t, 4))(5UL)), 0x16L)).lo)), ((VECTOR(uint8_t, 8))(249UL)), ((VECTOR(uint8_t, 8))(0x09L))))).s2)), 8UL, 1UL, 0x26L, 0xECL, 0UL)).s6766041723373053)).se9, (uint8_t)p_30))).xxyx)).hi, ((VECTOR(uint8_t, 2))(0x7FL))))), 0x23L, 247UL)).hi, ((VECTOR(uint8_t, 2))(254UL)), ((VECTOR(uint8_t, 2))(0x4FL))))).yyyx))).even))))).lo, 0x7AL, p_32, ((VECTOR(uint8_t, 8))(0UL)), 0x34L, 0xC5L, 1UL, 255UL, 250UL)).odd, ((VECTOR(uint8_t, 8))(0xA6L))))).even, ((VECTOR(uint8_t, 4))(0x05L)), ((VECTOR(uint8_t, 4))(1UL))))).w == FAKE_DIVERGE(p_1312->global_2_offset, get_global_id(2), 10)) , l_878[0][1])), 0xDD96DE5AC7B62D63L, 18446744073709551615UL, 0UL)).zyyzwxzxwwzxywwz, ((VECTOR(uint64_t, 16))(0UL))))).s7488))).w), (*p_34), l_860.s4, p_1312));
                if ((*p_1312->g_447))
                    break;
            }
            --p_1312->g_884.sa;
        }
        else
        { /* block id: 383 */
            int8_t l_887 = 0x77L;
            int8_t *l_916 = (void*)0;
            int8_t *l_917 = &p_1312->g_130;
            uint8_t l_919 = 0xA9L;
            (*p_1312->g_447) = (l_887 > ((safe_add_func_int8_t_s_s(((safe_lshift_func_int16_t_s_s((safe_div_func_int8_t_s_s(((safe_mod_func_int16_t_s_s(0L, (+((((safe_sub_func_int64_t_s_s(((safe_rshift_func_int16_t_s_s(((0x34L >= (safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 16))(p_1312->g_902.wzyywxzwwxwwzxyx)).s8727, ((VECTOR(int8_t, 4))(p_1312->g_903.s4615)), ((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 8))(p_1312->g_904.zxwwwwzw)).s3476523225567330, (int8_t)((*l_917) = ((!(l_697 ^= ((*l_535) , (safe_mul_func_int16_t_s_s((!(safe_mul_func_int8_t_s_s(((l_887 || ((*l_698) = ((((*l_698) && (safe_sub_func_int32_t_s_s((+0L), (0x75805D6BL < (safe_mul_func_int16_t_s_s((((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(safe_clamp_func(VECTOR(uint8_t, 16),uint8_t,((VECTOR(uint8_t, 8))((safe_div_func_int8_t_s_s(((p_1312->g_858.s1 , (*l_698)) < (*p_33)), p_30)), ((VECTOR(uint8_t, 2))(0x16L)), p_31, 0xB2L, 0x0CL, 0x6DL, 0x30L)).s0721746011616271, (uint8_t)l_915, (uint8_t)0x4CL))).sfa)).odd != GROUP_DIVERGE(1, 1)), (**l_712))))))) , p_1312->g_903.s4) > 0xE42B5EA8E9E8FC92L))) != p_1312->g_46), 0x55L))), 0L))))) && (-3L)))))).s404d))).z, 0x13L, 0L, 0L)).w, l_918.z))) || l_919), 10)) != (**l_712)), 0x57766EE448F1C214L)) < p_30) ^ 0L) != l_919)))) == p_30), (**l_712))), 14)) , (**l_712)), p_31)) && p_31));
        }
    }
    else
    { /* block id: 389 */
        int32_t **l_922 = (void*)0;
        (*p_1312->g_923) = func_66(p_1312->g_472, l_920, p_32, p_1312);
        if ((atomic_inc(&p_1312->l_atomic_input[2]) == 9))
        { /* block id: 392 */
            int32_t l_924 = 0x750FAC07L;
            uint64_t l_925 = 0xBCE1F0EE512ABB08L;
            int16_t l_926 = 0x2B16L;
            uint32_t l_927[6];
            int i;
            for (i = 0; i < 6; i++)
                l_927[i] = 0x7444CB77L;
            l_925 |= l_924;
            l_927[3] = l_926;
            for (l_925 = 0; (l_925 > 16); ++l_925)
            { /* block id: 397 */
                int8_t l_930 = 0x08L;
                uint64_t l_931 = 18446744073709551606UL;
                uint16_t l_932 = 0UL;
                uint8_t l_933 = 0x76L;
                int64_t l_934 = 0x62315D03036E245EL;
                uint16_t l_935 = 0x71FEL;
                l_933 ^= (l_932 = (l_930 , (l_931 , (-1L))));
                l_934 = (-1L);
                if (l_935)
                { /* block id: 401 */
                    int64_t l_936 = (-5L);
                    int32_t l_937 = 5L;
                    uint32_t l_938[3][10][1] = {{{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L}},{{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L}},{{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L},{0x9472FC84L}}};
                    uint8_t l_941 = 0xBFL;
                    uint32_t l_963 = 0xDC796CA0L;
                    uint16_t l_966 = 4UL;
                    int i, j, k;
                    --l_938[2][2][0];
                    if (l_941)
                    { /* block id: 403 */
                        int8_t l_942 = (-5L);
                        VECTOR(int8_t, 8) l_943 = (VECTOR(int8_t, 8))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 6L), 6L), 6L, (-2L), 6L);
                        VECTOR(int8_t, 16) l_944 = (VECTOR(int8_t, 16))(0x79L, (VECTOR(int8_t, 4))(0x79L, (VECTOR(int8_t, 2))(0x79L, 0x35L), 0x35L), 0x35L, 0x79L, 0x35L, (VECTOR(int8_t, 2))(0x79L, 0x35L), (VECTOR(int8_t, 2))(0x79L, 0x35L), 0x79L, 0x35L, 0x79L, 0x35L);
                        int16_t l_945[7] = {0x3C20L,0x3C20L,0x3C20L,0x3C20L,0x3C20L,0x3C20L,0x3C20L};
                        int64_t l_946 = 0x4FDF1C87EB62813CL;
                        VECTOR(uint16_t, 2) l_947 = (VECTOR(uint16_t, 2))(0xBBBCL, 0x8752L);
                        uint32_t l_948 = 0x6E46CDE1L;
                        uint8_t l_949 = 255UL;
                        uint32_t l_950 = 4294967293UL;
                        uint32_t l_951 = 0x7CAA74BBL;
                        uint16_t l_952[5][4] = {{65530UL,65530UL,0x7FDEL,5UL},{65530UL,65530UL,0x7FDEL,5UL},{65530UL,65530UL,0x7FDEL,5UL},{65530UL,65530UL,0x7FDEL,5UL},{65530UL,65530UL,0x7FDEL,5UL}};
                        uint64_t l_953 = 0xE475162DB1013A6EL;
                        uint32_t l_954 = 0xA0752232L;
                        int32_t l_955[6][9] = {{(-2L),0x39BC3FFBL,0x167441BAL,(-5L),0x39BC3FFBL,(-5L),0x167441BAL,0x39BC3FFBL,(-2L)},{(-2L),0x39BC3FFBL,0x167441BAL,(-5L),0x39BC3FFBL,(-5L),0x167441BAL,0x39BC3FFBL,(-2L)},{(-2L),0x39BC3FFBL,0x167441BAL,(-5L),0x39BC3FFBL,(-5L),0x167441BAL,0x39BC3FFBL,(-2L)},{(-2L),0x39BC3FFBL,0x167441BAL,(-5L),0x39BC3FFBL,(-5L),0x167441BAL,0x39BC3FFBL,(-2L)},{(-2L),0x39BC3FFBL,0x167441BAL,(-5L),0x39BC3FFBL,(-5L),0x167441BAL,0x39BC3FFBL,(-2L)},{(-2L),0x39BC3FFBL,0x167441BAL,(-5L),0x39BC3FFBL,(-5L),0x167441BAL,0x39BC3FFBL,(-2L)}};
                        int64_t l_956 = 1L;
                        int i, j;
                        l_937 &= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 4))(l_942, (-1L), 8L, (-8L))).even, ((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 2))(l_943.s57)), ((VECTOR(int8_t, 8))(l_944.s02ed09e4)).s02)))))))), 0x3BL, 0L)).even)), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_945[5], l_946, 0UL, 0x85L)).odd))))), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(FAKE_DIVERGE(p_1312->global_0_offset, get_global_id(0), 10), ((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 16))(l_947.xyyyxyyxxxxxyyyx)), ((VECTOR(uint16_t, 4))((((l_948 , 1UL) , ((VECTOR(uint64_t, 8))(18446744073709551615UL, (l_931 = 0x5F670EDA6143D96BL), ((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 16))(l_949, (l_931 = l_950), ((VECTOR(uint64_t, 8))(0x3000C0E2EBC0E49DL)), ((VECTOR(uint64_t, 4))(0UL)), 18446744073709551610UL, 0xF54DBA11CCB2E82EL)).s0b, ((VECTOR(uint64_t, 2))(0x874A3FA0DB6E6DF5L))))).hi, 0x4358F63E25EFFAB6L, l_951, ((VECTOR(uint64_t, 2))(0x2C5616EF44D6251BL)), 9UL)).s4) , l_952[2][2]), 6UL, 1UL, 0x0AFEL)).zzxxwyyyyxxxxwyw, ((VECTOR(uint16_t, 16))(0xD33CL))))).s56, ((VECTOR(uint16_t, 2))(65535UL))))), l_953, l_954, FAKE_DIVERGE(p_1312->local_0_offset, get_local_id(0), 10), 0x22D7L, 65535UL)).s5, ((VECTOR(uint16_t, 4))(65530UL)), ((VECTOR(uint16_t, 2))(2UL)), 0xA914L)).s60)).xyyyxyyx)).s1542056146713341)).s81d3)).wzyywxyz)).s75))))).yxxxxxyx)).s5;
                        l_937 ^= l_955[4][0];
                        l_937 &= l_956;
                    }
                    else
                    { /* block id: 409 */
                        VECTOR(uint64_t, 8) l_957 = (VECTOR(uint64_t, 8))(0xD07D34DEAD8D17EEL, (VECTOR(uint64_t, 4))(0xD07D34DEAD8D17EEL, (VECTOR(uint64_t, 2))(0xD07D34DEAD8D17EEL, 0xBB1D4B9D07581AECL), 0xBB1D4B9D07581AECL), 0xBB1D4B9D07581AECL, 0xD07D34DEAD8D17EEL, 0xBB1D4B9D07581AECL);
                        int32_t *l_958 = (void*)0;
                        int32_t *l_959 = (void*)0;
                        VECTOR(int32_t, 4) l_960 = (VECTOR(int32_t, 4))(0x1C6C20A4L, (VECTOR(int32_t, 2))(0x1C6C20A4L, (-1L)), (-1L));
                        uint32_t l_961 = 1UL;
                        VECTOR(uint32_t, 8) l_962 = (VECTOR(uint32_t, 8))(0xA805C8D7L, (VECTOR(uint32_t, 4))(0xA805C8D7L, (VECTOR(uint32_t, 2))(0xA805C8D7L, 5UL), 5UL), 5UL, 0xA805C8D7L, 5UL);
                        int i;
                        l_937 &= l_957.s6;
                        l_959 = l_958;
                        l_962.s7 |= (((VECTOR(int32_t, 4))(l_960.yzzx)).w , l_961);
                    }
                    l_963++;
                    l_966 = 6L;
                }
                else
                { /* block id: 416 */
                    int8_t l_967 = 0x23L;
                    uint32_t l_968[2][10] = {{0x719DFC39L,0x719DFC39L,0x719DFC39L,0x719DFC39L,0x719DFC39L,0x719DFC39L,0x719DFC39L,0x719DFC39L,0x719DFC39L,0x719DFC39L},{0x719DFC39L,0x719DFC39L,0x719DFC39L,0x719DFC39L,0x719DFC39L,0x719DFC39L,0x719DFC39L,0x719DFC39L,0x719DFC39L,0x719DFC39L}};
                    int64_t l_985 = 0x3ABEE13D7E787EE6L;
                    int16_t l_986 = 0L;
                    int32_t l_987 = 0x378DACA4L;
                    int16_t l_988 = 0L;
                    int8_t l_989 = 0x76L;
                    uint8_t l_990 = 255UL;
                    uint8_t l_993 = 0x04L;
                    int32_t l_994[4][4][10] = {{{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L},{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L},{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L},{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L}},{{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L},{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L},{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L},{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L}},{{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L},{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L},{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L},{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L}},{{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L},{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L},{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L},{0L,0x50B00A6FL,2L,(-3L),2L,0x50B00A6FL,0L,0L,9L,9L}}};
                    int i, j, k;
                    l_968[0][5]--;
                    for (l_968[0][5] = 0; (l_968[0][5] != 33); l_968[0][5]++)
                    { /* block id: 420 */
                        uint32_t l_973[6][1][4] = {{{0x8C0398D1L,0x439C07DDL,4294967290UL,0xEB397F1EL}},{{0x8C0398D1L,0x439C07DDL,4294967290UL,0xEB397F1EL}},{{0x8C0398D1L,0x439C07DDL,4294967290UL,0xEB397F1EL}},{{0x8C0398D1L,0x439C07DDL,4294967290UL,0xEB397F1EL}},{{0x8C0398D1L,0x439C07DDL,4294967290UL,0xEB397F1EL}},{{0x8C0398D1L,0x439C07DDL,4294967290UL,0xEB397F1EL}}};
                        int32_t l_977 = (-1L);
                        int32_t *l_976[1];
                        int32_t *l_978 = &l_977;
                        uint64_t l_979 = 0UL;
                        int32_t *l_980 = &l_977;
                        int32_t l_981 = (-1L);
                        uint32_t l_982 = 4294967295UL;
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_976[i] = &l_977;
                        ++l_973[0][0][0];
                        l_978 = l_976[0];
                        l_976[0] = (l_979 , (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(1L, (-1L))).xxxy)))))).w , l_980));
                        l_982--;
                    }
                    ++l_990;
                    l_994[1][2][0] ^= (FAKE_DIVERGE(p_1312->global_1_offset, get_global_id(1), 10) , l_993);
                }
            }
            unsigned int result = 0;
            result += l_924;
            result += l_925;
            result += l_926;
            int l_927_i0;
            for (l_927_i0 = 0; l_927_i0 < 6; l_927_i0++) {
                result += l_927[l_927_i0];
            }
            atomic_add(&p_1312->l_special_values[2], result);
        }
        else
        { /* block id: 430 */
            (1 + 1);
        }
        for (p_1312->g_46 = 0; (p_1312->g_46 != 0); p_1312->g_46 = safe_add_func_uint32_t_u_u(p_1312->g_46, 2))
        { /* block id: 435 */
            int32_t *l_997[2][8];
            int i, j;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 8; j++)
                    l_997[i][j] = &p_1312->g_107;
            }
            l_998--;
        }
    }
    return (**p_1312->g_160);
}


/* ------------------------------------------ */
/* 
 * reads : p_1312->g_107 p_1312->g_5
 * writes: p_1312->g_107
 */
uint8_t  func_35(uint32_t  p_36, int32_t * p_37, int64_t  p_38, int32_t * p_39, uint16_t * p_40, struct S0 * p_1312)
{ /* block id: 177 */
    int32_t *l_473 = &p_1312->g_5;
    int32_t *l_474[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_475 = (-7L);
    uint8_t l_476 = 0xA7L;
    int i;
    ++l_476;
    for (p_1312->g_107 = 0; (p_1312->g_107 > 18); p_1312->g_107++)
    { /* block id: 181 */
        return (*l_473);
    }
    return (*l_473);
}


/* ------------------------------------------ */
/* 
 * reads : p_1312->g_58 p_1312->g_74 p_1312->g_comm_values p_1312->g_75 p_1312->g_76 p_1312->g_83 p_1312->g_90 p_1312->g_5 p_1312->g_91 p_1312->g_97 p_1312->g_99 p_1312->g_110 p_1312->g_107 p_1312->g_144 p_1312->g_46 p_1312->g_160 p_1312->g_328 p_1312->g_143 p_1312->g_338 p_1312->g_365 p_1312->g_161 p_1312->g_407 p_1312->g_382 p_1312->g_408 p_1312->g_446 p_1312->g_448 p_1312->g_449 p_1312->g_457 p_1312->g_458 p_1312->g_447
 * writes: p_1312->g_58 p_1312->g_comm_values p_1312->g_97 p_1312->g_5 p_1312->g_107 p_1312->g_110 p_1312->g_130 p_1312->g_143 p_1312->g_91 p_1312->g_161 p_1312->g_340 p_1312->g_342 p_1312->g_396 p_1312->g_424 p_1312->g_447 p_1312->g_460 p_1312->g_328
 */
int8_t  func_41(int32_t  p_42, int64_t  p_43, struct S0 * p_1312)
{ /* block id: 9 */
    int32_t *l_50 = &p_1312->g_5;
    int32_t *l_51 = &p_1312->g_5;
    int32_t *l_52 = &p_1312->g_5;
    int32_t *l_53 = &p_1312->g_5;
    int32_t *l_54 = (void*)0;
    int32_t *l_55 = &p_1312->g_5;
    int32_t *l_56[1];
    VECTOR(int64_t, 4) l_77 = (VECTOR(int64_t, 4))(0x088BC06FE6C8CEE6L, (VECTOR(int64_t, 2))(0x088BC06FE6C8CEE6L, (-1L)), (-1L));
    int64_t *l_78 = (void*)0;
    int64_t *l_79 = (void*)0;
    int64_t *l_80 = (void*)0;
    int64_t *l_81[1];
    VECTOR(int64_t, 8) l_82 = (VECTOR(int64_t, 8))((-2L), (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 0x63243D007C168B3AL), 0x63243D007C168B3AL), 0x63243D007C168B3AL, (-2L), 0x63243D007C168B3AL);
    VECTOR(int64_t, 8) l_84 = (VECTOR(int64_t, 8))(0x0DC3605A4DEA9255L, (VECTOR(int64_t, 4))(0x0DC3605A4DEA9255L, (VECTOR(int64_t, 2))(0x0DC3605A4DEA9255L, 0x3E81B992811E285AL), 0x3E81B992811E285AL), 0x3E81B992811E285AL, 0x0DC3605A4DEA9255L, 0x3E81B992811E285AL);
    VECTOR(int32_t, 16) l_85 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 8L), 8L), 8L, 0L, 8L, (VECTOR(int32_t, 2))(0L, 8L), (VECTOR(int32_t, 2))(0L, 8L), 0L, 8L, 0L, 8L);
    uint16_t *l_92 = (void*)0;
    uint16_t **l_93 = (void*)0;
    uint16_t **l_94 = &l_92;
    int64_t l_470 = 3L;
    int i;
    for (i = 0; i < 1; i++)
        l_56[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_81[i] = (void*)0;
    --p_1312->g_58;
    l_470 = ((*l_55) = func_61(l_50, func_66((safe_add_func_int64_t_s_s(0x176A90D2634D7F48L, (safe_div_func_int64_t_s_s((((VECTOR(uint32_t, 4))(p_1312->g_74.s7143)).w != (((p_1312->g_comm_values[p_1312->tid] , ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))((-9L), ((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 2))(0x3DD0C5DF97F74892L, 0x7EA059E6156CF859L)).xxxxyxxx, ((VECTOR(int64_t, 8))(p_1312->g_75.xzzxxwxy))))), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 2))(p_1312->g_76.sa6)), ((VECTOR(int64_t, 16))(l_77.ywzzwyzwzywxwzww)).s14, ((VECTOR(int64_t, 4))((+(p_1312->g_comm_values[p_1312->tid] = ((VECTOR(int64_t, 4))(0L, 0L, (-7L), 0L)).z)), (p_1312->g_comm_values[p_1312->tid] = p_1312->g_75.x), 9L, 0L)).odd))).yxxxyyxy, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 8))(l_82.s57501332)).s52, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0x57882416071ECC2DL, (-3L))).yyxx)).even))), 0x5D4612A8C3F75B29L, 0x242BEB92859F9615L)).zxxwwxxy))).s07, ((VECTOR(int64_t, 2))(p_1312->g_83.s00))))))), ((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 8))(l_84.s41345116)).s04, ((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_85.sb36b)).yzxxxxxx)).hi, ((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 4))((safe_add_func_int64_t_s_s((0x84L <= (safe_lshift_func_int16_t_s_s((p_1312->g_90 != ((*l_94) = l_92)), (*l_55)))), (*l_55))), p_42, 0xCA390A41L, 4294967294UL)).xzxxxyyz, ((VECTOR(uint32_t, 8))(4294967295UL))))).even))).odd))), ((VECTOR(int64_t, 2))((-1L))), 0x27223651BE0E570CL)).even)).s15)).even) < 0UL) , p_1312->g_76.s2)), p_1312->g_91)))), (*l_53), p_1312->g_75.x, p_1312), p_42, p_1312->g_58, p_1312));
    return p_1312->g_comm_values[p_1312->tid];
}


/* ------------------------------------------ */
/* 
 * reads : p_1312->g_74 p_1312->g_76 p_1312->g_110 p_1312->g_107 p_1312->g_comm_values p_1312->g_90 p_1312->g_144 p_1312->g_46 p_1312->g_5 p_1312->g_160 p_1312->g_91 p_1312->g_328 p_1312->g_143 p_1312->g_338 p_1312->g_83 p_1312->g_365 p_1312->g_97 p_1312->g_99 p_1312->g_161 p_1312->g_407 p_1312->g_382 p_1312->g_408 p_1312->g_446 p_1312->g_448 p_1312->g_449 p_1312->g_457 p_1312->g_458 p_1312->g_447
 * writes: p_1312->g_130 p_1312->g_143 p_1312->g_91 p_1312->g_comm_values p_1312->g_5 p_1312->g_161 p_1312->g_340 p_1312->g_342 p_1312->g_97 p_1312->g_107 p_1312->g_110 p_1312->g_396 p_1312->g_424 p_1312->g_447 p_1312->g_460 p_1312->g_328
 */
int32_t  func_61(int32_t * p_62, int32_t * p_63, int8_t  p_64, int8_t  p_65, struct S0 * p_1312)
{ /* block id: 22 */
    VECTOR(int32_t, 4) l_111 = (VECTOR(int32_t, 4))(0x14109486L, (VECTOR(int32_t, 2))(0x14109486L, 0x3D78BCCAL), 0x3D78BCCAL);
    int32_t *l_112[2];
    int32_t l_113 = 4L;
    int8_t *l_128 = (void*)0;
    int8_t *l_129 = &p_1312->g_130;
    uint32_t l_137 = 0x43006B11L;
    uint32_t *l_142 = &p_1312->g_143[0];
    int64_t *l_145 = (void*)0;
    int64_t *l_146[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint32_t l_154 = 0x55C3D3C4L;
    VECTOR(uint8_t, 4) l_307 = (VECTOR(uint8_t, 4))(0xB1L, (VECTOR(uint8_t, 2))(0xB1L, 0xB4L), 0xB4L);
    uint8_t *l_308[6][4][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    uint64_t l_309 = 18446744073709551610UL;
    uint16_t *l_310 = (void*)0;
    VECTOR(int64_t, 8) l_313 = (VECTOR(int64_t, 8))(0x638BD5961F9C3E5FL, (VECTOR(int64_t, 4))(0x638BD5961F9C3E5FL, (VECTOR(int64_t, 2))(0x638BD5961F9C3E5FL, 5L), 5L), 5L, 0x638BD5961F9C3E5FL, 5L);
    uint8_t *l_320 = (void*)0;
    uint8_t l_335 = 3UL;
    uint32_t *l_339 = &p_1312->g_340;
    uint64_t *l_341[7][9][4] = {{{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342}},{{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342}},{{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342}},{{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342}},{{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342}},{{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342}},{{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342},{&p_1312->g_342,(void*)0,&p_1312->g_342,&p_1312->g_342}}};
    uint64_t l_343 = 0x3ED7E5C0EE97CBFDL;
    uint64_t l_346 = 0x1F7F5B7E7C520808L;
    int16_t l_349 = 0x5708L;
    VECTOR(uint8_t, 2) l_352 = (VECTOR(uint8_t, 2))(0x13L, 247UL);
    VECTOR(uint32_t, 8) l_361 = (VECTOR(uint32_t, 8))(0x9E3E1153L, (VECTOR(uint32_t, 4))(0x9E3E1153L, (VECTOR(uint32_t, 2))(0x9E3E1153L, 1UL), 1UL), 1UL, 0x9E3E1153L, 1UL);
    VECTOR(uint8_t, 4) l_364 = (VECTOR(uint8_t, 4))(0xD0L, (VECTOR(uint8_t, 2))(0xD0L, 0x96L), 0x96L);
    VECTOR(int32_t, 4) l_366 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L);
    uint8_t l_371[1];
    VECTOR(uint64_t, 8) l_391 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x202885546D3699B9L), 0x202885546D3699B9L), 0x202885546D3699B9L, 1UL, 0x202885546D3699B9L);
    uint16_t ***l_463[7][6][4] = {{{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161}},{{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161}},{{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161}},{{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161}},{{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161}},{{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161}},{{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161}}};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_112[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_371[i] = 0UL;
    if (((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_111.yxwwwzywxwwyywwz)))).odd)).s1 , (((&p_1312->g_107 != p_62) & (l_113 = 0x74F060B1L)) ^ ((VECTOR(uint32_t, 4))((safe_add_func_uint32_t_u_u(((safe_lshift_func_uint8_t_u_s((((p_1312->g_comm_values[p_1312->tid] = (((safe_add_func_uint8_t_u_u((((VECTOR(uint8_t, 2))(0UL, 250UL)).odd , ((((((*p_1312->g_90) = (((safe_sub_func_int16_t_s_s((safe_mod_func_uint32_t_u_u(((*l_142) = (p_65 > (safe_mod_func_uint8_t_u_u((safe_sub_func_int8_t_s_s(((*l_129) = p_1312->g_74.s4), (safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(0, 1), p_1312->g_76.s7)))), (safe_div_func_int16_t_s_s(((safe_sub_func_int64_t_s_s(p_1312->g_110, (~l_137))) ^ ((safe_div_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(9L, (-7L))).xxyyxyyxyxxyxyyx)).even)).even)).w | 0x7A70L), p_1312->g_107)), 65535UL)) > p_64)), p_64)))))), GROUP_DIVERGE(0, 1))), p_1312->g_comm_values[p_1312->tid])) && p_64) , 0x866AL)) , &p_1312->g_57) != p_1312->g_144) < p_1312->g_76.s9) > FAKE_DIVERGE(p_1312->global_2_offset, get_global_id(2), 10))), (-1L))) && p_65) > p_65)) && 0xD61C39D5F78CBBD6L) , p_1312->g_107), 4)) > p_65), p_1312->g_46)), ((VECTOR(uint32_t, 2))(1UL)), 4UL)).w)) <= 1L))
    { /* block id: 28 */
        int32_t l_147 = 0L;
        int8_t l_148 = (-1L);
        int32_t l_149 = 0x50F7EA90L;
        int32_t l_150 = 0x48CA7A09L;
        int32_t l_151 = 3L;
        int32_t l_152 = 0x3A0433F7L;
        int32_t l_153 = (-10L);
        l_154++;
    }
    else
    { /* block id: 30 */
        uint16_t **l_159 = &p_1312->g_90;
        int32_t l_162 = 3L;
        for (p_1312->g_5 = 0; (p_1312->g_5 > 0); ++p_1312->g_5)
        { /* block id: 33 */
            (*p_1312->g_160) = l_159;
            l_162 = 0x0199080DL;
        }
    }
    if ((atomic_inc(&p_1312->l_atomic_input[10]) == 7))
    { /* block id: 39 */
        int8_t l_163 = 2L;
        uint16_t l_164[2];
        VECTOR(int16_t, 2) l_291 = (VECTOR(int16_t, 2))(0L, 0x4D55L);
        int16_t l_292 = 1L;
        uint8_t l_293[2];
        uint32_t l_294 = 0x073F6DD1L;
        int8_t l_295 = (-1L);
        uint16_t l_296 = 0xE6B7L;
        int16_t l_297 = 5L;
        uint32_t l_298 = 1UL;
        uint32_t l_299 = 0x35F22786L;
        int8_t l_300 = 8L;
        int32_t l_301[4][10] = {{5L,0x4B9031B1L,0x783995F0L,0x4B9031B1L,5L,5L,0x4B9031B1L,0x783995F0L,0x4B9031B1L,5L},{5L,0x4B9031B1L,0x783995F0L,0x4B9031B1L,5L,5L,0x4B9031B1L,0x783995F0L,0x4B9031B1L,5L},{5L,0x4B9031B1L,0x783995F0L,0x4B9031B1L,5L,5L,0x4B9031B1L,0x783995F0L,0x4B9031B1L,5L},{5L,0x4B9031B1L,0x783995F0L,0x4B9031B1L,5L,5L,0x4B9031B1L,0x783995F0L,0x4B9031B1L,5L}};
        int8_t l_302 = 0x7EL;
        uint32_t l_303[8][3] = {{0x0DBBB141L,4294967295UL,0x38D3C8C1L},{0x0DBBB141L,4294967295UL,0x38D3C8C1L},{0x0DBBB141L,4294967295UL,0x38D3C8C1L},{0x0DBBB141L,4294967295UL,0x38D3C8C1L},{0x0DBBB141L,4294967295UL,0x38D3C8C1L},{0x0DBBB141L,4294967295UL,0x38D3C8C1L},{0x0DBBB141L,4294967295UL,0x38D3C8C1L},{0x0DBBB141L,4294967295UL,0x38D3C8C1L}};
        int i, j;
        for (i = 0; i < 2; i++)
            l_164[i] = 0xA945L;
        for (i = 0; i < 2; i++)
            l_293[i] = 0x55L;
        l_164[1] |= l_163;
        for (l_164[1] = (-7); (l_164[1] > 49); l_164[1]++)
        { /* block id: 43 */
            VECTOR(int32_t, 16) l_167 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
            uint16_t l_168 = 0xFD85L;
            int8_t l_169[6] = {0x21L,(-1L),0x21L,0x21L,(-1L),0x21L};
            int32_t l_170 = 0x1B0C17D9L;
            int16_t l_171[7] = {0x78C7L,0x4787L,0x78C7L,0x78C7L,0x4787L,0x78C7L,0x78C7L};
            int i;
            l_169[0] = (l_168 = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(1L, ((VECTOR(int32_t, 4))(l_167.sdf08)), 0x51EC5715L, 6L, 0x0B3F9B22L)).s71)).odd);
            l_171[3] &= l_170;
            for (l_170 = 0; (l_170 > 13); l_170 = safe_add_func_uint16_t_u_u(l_170, 6))
            { /* block id: 49 */
                int32_t l_174 = 2L;
                int32_t *l_191[3][9][7] = {{{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0}},{{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0}},{{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0},{&l_174,&l_174,&l_174,&l_174,(void*)0,&l_174,(void*)0}}};
                int32_t *l_192 = &l_174;
                uint16_t l_193 = 0UL;
                VECTOR(int32_t, 8) l_194 = (VECTOR(int32_t, 8))(0x74329A42L, (VECTOR(int32_t, 4))(0x74329A42L, (VECTOR(int32_t, 2))(0x74329A42L, 8L), 8L), 8L, 0x74329A42L, 8L);
                int32_t l_195 = 1L;
                VECTOR(int32_t, 2) l_196 = (VECTOR(int32_t, 2))(0x68AD4973L, 0x29E9F99AL);
                VECTOR(int32_t, 4) l_197 = (VECTOR(int32_t, 4))(0x176ACA0DL, (VECTOR(int32_t, 2))(0x176ACA0DL, 1L), 1L);
                uint64_t l_198 = 0xED101AC126E95B7EL;
                int i, j, k;
                for (l_174 = 10; (l_174 > 13); l_174 = safe_add_func_uint16_t_u_u(l_174, 3))
                { /* block id: 52 */
                    int32_t l_177 = 6L;
                    int16_t l_189 = 1L;
                    int32_t *l_190 = &l_177;
                    for (l_177 = 0; (l_177 < 29); ++l_177)
                    { /* block id: 55 */
                        VECTOR(uint64_t, 4) l_180 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL), 1UL);
                        uint64_t l_181 = 0xA53BE8B1390B164AL;
                        uint16_t l_184 = 65535UL;
                        int32_t l_188 = 0x5248D46CL;
                        int32_t *l_187 = &l_188;
                        int i;
                        l_167.s8 ^= l_180.x;
                        ++l_181;
                        ++l_184;
                        l_187 = l_187;
                    }
                    l_167.s0 ^= l_189;
                    l_190 = (void*)0;
                }
                l_192 = l_191[0][8][5];
                l_167.sb ^= ((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(0x0C450E8BL, l_193, ((VECTOR(int32_t, 2))(l_194.s01)).odd, l_195, ((VECTOR(int32_t, 4))(l_196.yyxx)))), ((VECTOR(int32_t, 2))(1L, 0x50903AECL)).yxyyxyxy, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_197.xwwy)), l_198, 0L, 0x3C1152C8L, 1L)).s63)).yyyyyxxx))).s6;
            }
        }
        for (l_163 = 0; (l_163 < (-29)); l_163 = safe_sub_func_int64_t_s_s(l_163, 7))
        { /* block id: 70 */
            uint8_t l_201 = 251UL;
            VECTOR(int16_t, 4) l_202 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x24DFL), 0x24DFL);
            uint64_t l_203[7][9][1] = {{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}};
            int16_t l_261[10];
            int32_t l_262 = 0L;
            int64_t l_263 = 1L;
            int16_t l_264[2];
            VECTOR(int64_t, 16) l_265 = (VECTOR(int64_t, 16))(0x79CF3AB30EF95768L, (VECTOR(int64_t, 4))(0x79CF3AB30EF95768L, (VECTOR(int64_t, 2))(0x79CF3AB30EF95768L, 0x3EF9C9ED5B9B7089L), 0x3EF9C9ED5B9B7089L), 0x3EF9C9ED5B9B7089L, 0x79CF3AB30EF95768L, 0x3EF9C9ED5B9B7089L, (VECTOR(int64_t, 2))(0x79CF3AB30EF95768L, 0x3EF9C9ED5B9B7089L), (VECTOR(int64_t, 2))(0x79CF3AB30EF95768L, 0x3EF9C9ED5B9B7089L), 0x79CF3AB30EF95768L, 0x3EF9C9ED5B9B7089L, 0x79CF3AB30EF95768L, 0x3EF9C9ED5B9B7089L);
            int32_t l_266 = 0x0BA30C08L;
            int64_t l_267 = 0x65B3381A5F3E66D6L;
            VECTOR(uint8_t, 8) l_270 = (VECTOR(uint8_t, 8))(0x85L, (VECTOR(uint8_t, 4))(0x85L, (VECTOR(uint8_t, 2))(0x85L, 0x77L), 0x77L), 0x77L, 0x85L, 0x77L);
            VECTOR(uint8_t, 8) l_271 = (VECTOR(uint8_t, 8))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 1UL), 1UL), 1UL, 6UL, 1UL);
            int8_t l_272 = 2L;
            uint32_t l_273 = 0UL;
            VECTOR(uint8_t, 8) l_274 = (VECTOR(uint8_t, 8))(0x2FL, (VECTOR(uint8_t, 4))(0x2FL, (VECTOR(uint8_t, 2))(0x2FL, 0x3AL), 0x3AL), 0x3AL, 0x2FL, 0x3AL);
            int32_t l_275 = 0x03B48941L;
            uint16_t l_276 = 0x1BC1L;
            VECTOR(uint8_t, 16) l_277 = (VECTOR(uint8_t, 16))(7UL, (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 0x10L), 0x10L), 0x10L, 7UL, 0x10L, (VECTOR(uint8_t, 2))(7UL, 0x10L), (VECTOR(uint8_t, 2))(7UL, 0x10L), 7UL, 0x10L, 7UL, 0x10L);
            VECTOR(uint8_t, 2) l_278 = (VECTOR(uint8_t, 2))(246UL, 0UL);
            uint32_t l_279 = 0x741A30BCL;
            uint32_t l_280 = 0UL;
            uint32_t l_281 = 0xFE6FD873L;
            uint32_t l_282[4][9][7] = {{{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L}},{{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L}},{{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L}},{{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L},{0UL,1UL,9UL,0x75B668B1L,0UL,0UL,0xE681E818L}}};
            int64_t l_283 = 0x25A2E3E00FD4907AL;
            int16_t l_284 = 0L;
            int64_t l_285 = 0L;
            int32_t *l_286[10][7][3] = {{{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266}},{{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266}},{{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266}},{{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266}},{{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266}},{{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266}},{{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266}},{{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266}},{{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266}},{{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266},{&l_266,&l_262,&l_266}}};
            int32_t l_287 = 0L;
            uint16_t l_288 = 0UL;
            int i, j, k;
            for (i = 0; i < 10; i++)
                l_261[i] = (-1L);
            for (i = 0; i < 2; i++)
                l_264[i] = 1L;
            if (((l_201 , (((l_202.z = 8L) , 0UL) , l_203[1][6][0])) , 5L))
            { /* block id: 72 */
                int32_t l_204[5][9] = {{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L}};
                uint32_t l_246 = 5UL;
                uint16_t l_247[7] = {0x65F4L,7UL,0x65F4L,0x65F4L,7UL,0x65F4L,0x65F4L};
                uint8_t l_248[9] = {0x2DL,0x2DL,0x2DL,0x2DL,0x2DL,0x2DL,0x2DL,0x2DL,0x2DL};
                int32_t l_249 = 8L;
                int32_t l_252 = 0L;
                uint16_t l_253[9];
                int32_t l_254 = 0x7CA57BEBL;
                uint64_t l_255 = 0UL;
                int i, j;
                for (i = 0; i < 9; i++)
                    l_253[i] = 65535UL;
                for (l_204[2][1] = 6; (l_204[2][1] >= 27); l_204[2][1]++)
                { /* block id: 75 */
                    int32_t l_207 = 0x5982DFFEL;
                    uint8_t l_219 = 254UL;
                    int16_t l_220[3][8] = {{0L,0L,(-8L),0x3E73L,0x379AL,0x3E73L,(-8L),0L},{0L,0L,(-8L),0x3E73L,0x379AL,0x3E73L,(-8L),0L},{0L,0L,(-8L),0x3E73L,0x379AL,0x3E73L,(-8L),0L}};
                    int32_t *l_245 = &l_207;
                    int i, j;
                    for (l_207 = (-14); (l_207 != 23); l_207 = safe_add_func_int64_t_s_s(l_207, 8))
                    { /* block id: 78 */
                        uint64_t l_210 = 0x14ADF549FE1CA12BL;
                        int64_t l_211 = 0x2966AEB5C9B73928L;
                        int16_t l_212 = (-2L);
                        uint16_t l_213 = 0UL;
                        int32_t l_216 = 0L;
                        int16_t l_217[6][4][2];
                        int32_t l_218 = 0L;
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 4; j++)
                            {
                                for (k = 0; k < 2; k++)
                                    l_217[i][j][k] = 0x1944L;
                            }
                        }
                        l_210 |= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x49F92E4CL, (-10L))).yyyyyyxyyyxyyxyx)).s1;
                        --l_213;
                        l_216 = 0x2506B0F8L;
                        l_218 &= l_217[4][2][1];
                    }
                    if ((l_220[0][7] ^= l_219))
                    { /* block id: 85 */
                        uint16_t l_221 = 4UL;
                        VECTOR(int32_t, 16) l_222 = (VECTOR(int32_t, 16))(0x6A14317BL, (VECTOR(int32_t, 4))(0x6A14317BL, (VECTOR(int32_t, 2))(0x6A14317BL, 7L), 7L), 7L, 0x6A14317BL, 7L, (VECTOR(int32_t, 2))(0x6A14317BL, 7L), (VECTOR(int32_t, 2))(0x6A14317BL, 7L), 0x6A14317BL, 7L, 0x6A14317BL, 7L);
                        VECTOR(int32_t, 4) l_223 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x56D3DB75L), 0x56D3DB75L);
                        uint16_t l_224 = 0x5D3EL;
                        int8_t l_225[8] = {0x6FL,0x6FL,0x6FL,0x6FL,0x6FL,0x6FL,0x6FL,0x6FL};
                        int64_t l_226 = (-9L);
                        VECTOR(int32_t, 2) l_227 = (VECTOR(int32_t, 2))(0x2340A125L, (-7L));
                        int64_t l_228 = 9L;
                        uint64_t l_229 = 5UL;
                        VECTOR(int32_t, 8) l_230 = (VECTOR(int32_t, 8))(0x3CA09B53L, (VECTOR(int32_t, 4))(0x3CA09B53L, (VECTOR(int32_t, 2))(0x3CA09B53L, 0x02EC767EL), 0x02EC767EL), 0x02EC767EL, 0x3CA09B53L, 0x02EC767EL);
                        VECTOR(int32_t, 4) l_231 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 5L), 5L);
                        VECTOR(int32_t, 8) l_232 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L);
                        uint32_t l_233 = 8UL;
                        uint8_t l_234 = 0x4FL;
                        int32_t l_235 = 0L;
                        VECTOR(int64_t, 16) l_236 = (VECTOR(int64_t, 16))(0x4E02B9B188DA3728L, (VECTOR(int64_t, 4))(0x4E02B9B188DA3728L, (VECTOR(int64_t, 2))(0x4E02B9B188DA3728L, 0x784C01210BFB33CCL), 0x784C01210BFB33CCL), 0x784C01210BFB33CCL, 0x4E02B9B188DA3728L, 0x784C01210BFB33CCL, (VECTOR(int64_t, 2))(0x4E02B9B188DA3728L, 0x784C01210BFB33CCL), (VECTOR(int64_t, 2))(0x4E02B9B188DA3728L, 0x784C01210BFB33CCL), 0x4E02B9B188DA3728L, 0x784C01210BFB33CCL, 0x4E02B9B188DA3728L, 0x784C01210BFB33CCL);
                        VECTOR(int32_t, 16) l_237 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int32_t, 2))(0L, 1L), (VECTOR(int32_t, 2))(0L, 1L), 0L, 1L, 0L, 1L);
                        VECTOR(int8_t, 4) l_238 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x4DL), 0x4DL);
                        int32_t *l_239 = &l_235;
                        int32_t *l_240 = (void*)0;
                        int i;
                        l_207 |= l_221;
                        l_240 = (((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 8))(l_222.sb407f302)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 8))(l_223.zxzywywy)).even))), l_224, l_225[5], l_226, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 4))(l_227.yxxy)).lo, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(6L, 0x77404176L))))))), l_228, ((VECTOR(int32_t, 16))(l_229, 0x4E9E399FL, 0x7E894985L, (-5L), ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 16))(l_230.s1232263142521026)), ((VECTOR(int32_t, 2))(l_231.xy)).yxyxxxxyxyyxyxxx))))).s6a, ((VECTOR(int32_t, 16))(l_232.s5512310327302373)).s54))), 0x6FD341B8L, 0L, 3L, 0x283C5324L, 7L, ((VECTOR(int32_t, 2))(9L, 0L)), (l_234 = l_233), 0L, 0L)).s4, l_235, l_236.s2, (-1L), 0x08337835L, 0x0A2F2A67L, ((VECTOR(int32_t, 8))(l_237.sba451dfc)).s1, l_238.x, (-1L), ((VECTOR(int32_t, 2))(0L)), 1L, 5L)).hi)), 0x3DF23967L)))).hi))).s4 , l_239);
                    }
                    else
                    { /* block id: 89 */
                        uint8_t l_241[10] = {6UL,6UL,6UL,6UL,6UL,6UL,6UL,6UL,6UL,6UL};
                        int32_t l_242 = 0x747116D0L;
                        uint8_t l_243 = 0x31L;
                        uint16_t l_244 = 5UL;
                        int i;
                        l_207 &= (-3L);
                        l_207 |= l_241[2];
                        l_207 ^= l_242;
                        l_244 = (l_207 = l_243);
                    }
                    l_245 = l_245;
                }
                l_255 |= ((((l_164[0] |= l_246) , (l_249 = ((l_248[1] = l_247[0]) , 0x3234E90412A0F187L))) , (--l_203[1][6][0])) , (l_254 |= (l_253[0] |= l_252)));
            }
            else
            { /* block id: 105 */
                int32_t l_258 = 0L;
                int32_t *l_257 = &l_258;
                int32_t **l_256[3][7] = {{&l_257,&l_257,&l_257,&l_257,&l_257,&l_257,&l_257},{&l_257,&l_257,&l_257,&l_257,&l_257,&l_257,&l_257},{&l_257,&l_257,&l_257,&l_257,&l_257,&l_257,&l_257}};
                int32_t **l_259[4][5][4] = {{{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257}},{{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257}},{{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257}},{{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257},{&l_257,(void*)0,&l_257,&l_257}}};
                int32_t **l_260 = (void*)0;
                int i, j, k;
                l_260 = (l_259[1][3][0] = (l_256[0][1] = (void*)0));
            }
            l_262 |= l_261[6];
            l_286[6][0][2] = (l_263 , (((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(0x89L, 0xE6L)), 0UL, l_264[0], ((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 16))(abs(((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 16))(0x51L, (l_201++), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_270.s12)).xyyyyyxy)).s1, 9UL, ((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 2))(l_271.s42)).yyxyyyxx, ((VECTOR(uint8_t, 4))(l_272, ((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),uint8_t,((VECTOR(uint8_t, 16))(0xF5L, l_273, ((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),VECTOR(uint8_t, 8),((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0xAFL, 2UL)), ((VECTOR(uint8_t, 8))(l_274.s12320260)).s7, (l_275 , l_276), ((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(l_277.s9cd27e3e0d2d2167)).s50b1)), ((VECTOR(uint8_t, 4))(abs(((VECTOR(uint8_t, 16))(safe_clamp_func(VECTOR(uint8_t, 16),VECTOR(uint8_t, 16),((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(l_278.yyxyyxxx)).hi)).yxxzzxyz, ((VECTOR(uint8_t, 8))(255UL, 1UL, l_279, 255UL, l_280, 0x7BL, 0x9AL, 0x3DL))))).s1035542206146107, ((VECTOR(uint8_t, 16))(1UL)), ((VECTOR(uint8_t, 16))(0x29L))))).sa4d2)))))))).s73, ((VECTOR(uint8_t, 2))(0xDFL))))).xyyyxyxyxxxyyxyy)).lo, ((VECTOR(uint8_t, 8))(255UL)), ((VECTOR(uint8_t, 8))(0xACL))))), 1UL, l_281, ((VECTOR(uint8_t, 2))(4UL)), 0x8BL, 0x5CL)).hi, (uint8_t)0x47L, (uint8_t)l_282[3][0][4]))).s45, (uint8_t)l_283, (uint8_t)l_284))), 0xE7L)).yxyyyyzw))), GROUP_DIVERGE(2, 1), 0x48L, 0x94L, 1UL)).s9a, ((VECTOR(uint8_t, 2))(1UL))))).xyxy, ((VECTOR(uint8_t, 4))(0UL))))).wwzzxxwyxwwxwyzy))).odd, ((VECTOR(uint8_t, 8))(1UL))))))).s5346172766475137)).s6b60))), 255UL, 0UL, ((VECTOR(uint8_t, 2))(3UL)), l_285, GROUP_DIVERGE(2, 1), 0xF6L, 0x61L)).s4 , l_286[3][2][2]));
            l_288++;
        }
        l_303[3][1] &= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 2))(l_291.xy)).xyxyyyyyxxyxxxyx, ((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 8))(0x4EC5L, 65533UL, ((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))((l_299 |= ((l_295 |= (l_292 , ((VECTOR(int16_t, 4))(((l_293[1] , (l_294 = 0x4542L)) , (-4L)), (-4L), 0x2109L, 0x3C42L)).y)) , (((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(0xC0899AF19E7241B8L, 0xFB84948AC97224E8L)).even , l_296), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0xEF38B845C3CAEEFDL, 0x540CACAE96CF2EFEL)), 18446744073709551608UL, 0xD633C8C3ACDF0841L)), ((l_297 , ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(1L, 0x2BL, (-5L), 0L)), 0x50L, 0x61L, 0L, 0x73L)).even)).hi)), ((VECTOR(int8_t, 2))(0x43L))))))).even) , GROUP_DIVERGE(1, 1)), FAKE_DIVERGE(p_1312->local_1_offset, get_local_id(1), 10), ((VECTOR(uint64_t, 2))(0x22FB55635CD5755DL)), l_298, ((VECTOR(uint64_t, 4))(18446744073709551609UL)), 18446744073709551611UL, 0xC6B085F6703680E1L)).lo, ((VECTOR(uint64_t, 8))(0UL))))).s43)), 18446744073709551606UL, 0x6338A6609C9F9A18L)), ((VECTOR(uint64_t, 4))(0x46AE77EAE3068350L)))).odd)).y , 0x45F2L))), l_300, l_301[0][8], 65535UL, l_302, 65534UL, 65535UL, 0x4417L)))).hi, ((VECTOR(uint16_t, 4))(0xB6F4L))))), 65535UL, 1UL)).s76))).yyyxyxxy, (uint16_t)FAKE_DIVERGE(p_1312->local_2_offset, get_local_id(2), 10)))).s2747372242246725))).even)).s0426166377343014)).s5;
        unsigned int result = 0;
        result += l_163;
        int l_164_i0;
        for (l_164_i0 = 0; l_164_i0 < 2; l_164_i0++) {
            result += l_164[l_164_i0];
        }
        result += l_291.y;
        result += l_291.x;
        result += l_292;
        int l_293_i0;
        for (l_293_i0 = 0; l_293_i0 < 2; l_293_i0++) {
            result += l_293[l_293_i0];
        }
        result += l_294;
        result += l_295;
        result += l_296;
        result += l_297;
        result += l_298;
        result += l_299;
        result += l_300;
        int l_301_i0, l_301_i1;
        for (l_301_i0 = 0; l_301_i0 < 4; l_301_i0++) {
            for (l_301_i1 = 0; l_301_i1 < 10; l_301_i1++) {
                result += l_301[l_301_i0][l_301_i1];
            }
        }
        result += l_302;
        int l_303_i0, l_303_i1;
        for (l_303_i0 = 0; l_303_i0 < 8; l_303_i0++) {
            for (l_303_i1 = 0; l_303_i1 < 3; l_303_i1++) {
                result += l_303[l_303_i0][l_303_i1];
            }
        }
        atomic_add(&p_1312->l_special_values[10], result);
    }
    else
    { /* block id: 119 */
        (1 + 1);
    }
    if ((l_343 = ((((((safe_rshift_func_int16_t_s_s((safe_unary_minus_func_int64_t_s(p_1312->g_74.s2)), 1)) & (l_309 = ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(248UL, 251UL)), 0UL, 255UL)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(l_307.xzwxzwyxzzzxwxxy)).s5f8a)))).s2)) | (((void*)0 == l_310) > ((safe_div_func_int32_t_s_s((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(l_313.s17375773)).odd)).y < (p_1312->g_342 = (safe_add_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s((((safe_sub_func_uint32_t_u_u((((l_308[4][3][4] = l_320) == (void*)0) , (safe_add_func_int64_t_s_s(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 4))(4L, ((safe_sub_func_int8_t_s_s((&p_1312->g_90 != &l_310), (((((((safe_unary_minus_func_uint16_t_u(((*p_1312->g_90)--))) > ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(p_1312->g_328.xxyy)))).zxyzwzyxywzyyzzy)).sf) < (((((safe_mod_func_int8_t_s_s(((*l_129) = (FAKE_DIVERGE(p_1312->local_2_offset, get_local_id(2), 10) >= (safe_lshift_func_uint8_t_u_u(((++(*l_142)) & GROUP_DIVERGE(0, 1)), (l_335--))))), GROUP_DIVERGE(2, 1))) ^ ((VECTOR(uint32_t, 2))(p_1312->g_338.s77)).lo) < ((*l_339) = (((0x0EBD9503L & p_65) <= p_64) < p_1312->g_83.sd))) && 7UL) >= p_65)) , p_64) , p_1312->g_328.x) == p_1312->g_338.sd) > p_64))) && GROUP_DIVERGE(1, 1)), 4L, (-4L))).wyyzxywy, (int64_t)p_64))))))).s0, p_65))), p_64)) ^ p_65) & 0x6347E4C8L), 6)), 0x08A8L)))), p_64)) != (-9L)))) > p_1312->g_83.s9) >= p_65) , p_65)))
    { /* block id: 131 */
        int8_t l_344[10] = {0x6AL,(-4L),0x6AL,0x6AL,(-4L),0x6AL,0x6AL,(-4L),0x6AL,0x6AL};
        int32_t l_345 = 0x66555CF7L;
        int32_t **l_356 = &p_1312->g_98[8];
        int32_t ***l_355 = &l_356;
        VECTOR(int32_t, 8) l_383 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x1A6743CEL), 0x1A6743CEL), 0x1A6743CEL, (-9L), 0x1A6743CEL);
        int32_t **l_406 = &l_112[0];
        uint32_t *l_436 = &p_1312->g_340;
        int i;
        l_346--;
        l_112[0] = func_66(l_349, ((((VECTOR(uint8_t, 8))(253UL, 0x91L, 249UL, 0x6FL, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_352.yyyxyxxyyyyyyxyy)).s21)).hi, 0xF9L, 0x38L, 0x31L)).s2 != ((safe_add_func_uint32_t_u_u((l_355 == (void*)0), (((safe_sub_func_int8_t_s_s((safe_div_func_int8_t_s_s((p_1312->g_130 = l_344[0]), ((((((((((VECTOR(uint32_t, 16))(l_361.s7616350630617075)).s1 != (safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 16))(l_364.zwwwwywzxxywwyzy)).s8f, (uint8_t)(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_1312->g_365.zyyy)), ((VECTOR(int32_t, 4))(8L, 0x74C796D2L, 0x0A77E300L, 0x0A51A105L)), l_344[0], ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_366.zzzwxyzyzxzxwwzw)).se, (safe_add_func_int16_t_s_s(((((safe_lshift_func_uint8_t_u_u(((-2L) ^ 0UL), p_65)) , p_64) ^ 0x644BDA8C91D94965L) , p_65), (-7L))), 2L, 0x6E7D6725L, 0x070D5EA6L, 0x3B2AE376L, ((VECTOR(int32_t, 2))(0x0889A252L)), 0x76BE4188L, (-9L), ((VECTOR(int32_t, 4))(0x57B1A14CL)), 0x5440D284L, 0x55C66E6FL)).s554c)).lo, ((VECTOR(int32_t, 2))((-2L)))))), 0x5E468F2BL, 0x438B039CL)).hi)), ((VECTOR(int32_t, 4))(5L)), 0x2E9CC528L)).s46)), 0x0DFF30C6L, 1L)).lo, ((VECTOR(int32_t, 2))(0x02F1D378L)), ((VECTOR(int32_t, 2))(0x3470FF04L))))), 0x1E8304ACL, (-8L))))).xxyxxzxywzywzzzx, ((VECTOR(int32_t, 16))(0x400371E7L)), ((VECTOR(int32_t, 16))((-5L)))))).s7 && l_344[6])))), ((VECTOR(uint8_t, 2))(0xD0L))))).xxxx))).odd)).yxyyyxxyxyyxxyxy)).sb, l_371[0]))) >= l_344[0]) , p_1312->g_comm_values[p_1312->tid]) <= p_64) , p_65) >= l_344[0]) , 0L) , l_344[7]))), 0x21L)) == 250UL) | 1UL))) <= 1L)) , 0xD7A4L), p_1312->g_comm_values[p_1312->tid], p_1312);
        for (l_335 = 13; (l_335 <= 21); l_335 = safe_add_func_uint64_t_u_u(l_335, 6))
        { /* block id: 137 */
            uint64_t l_388 = 0xDCCE7D3FB5A29FBAL;
            int32_t l_397 = 1L;
            VECTOR(int32_t, 2) l_398 = (VECTOR(int32_t, 2))(0x1AA8235BL, 0x615D419CL);
            int32_t l_399 = 0x5ED1D407L;
            uint16_t *l_423 = &p_1312->g_424;
            VECTOR(int32_t, 2) l_428 = (VECTOR(int32_t, 2))(1L, 1L);
            int64_t *l_431 = (void*)0;
            uint32_t *l_434 = (void*)0;
            int i;
            l_399 = (!((((*p_1312->g_160) == (void*)0) > (safe_div_func_int64_t_s_s(((safe_rshift_func_uint16_t_u_u((l_398.y = ((l_397 = ((((safe_lshift_func_uint16_t_u_s((++(*p_1312->g_90)), ((1UL && ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(p_1312->g_382.s37417200)))).s2) >= p_64))) | ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(abs(((VECTOR(int32_t, 4))(l_383.s1500))))).yxxxywxx)).s1) <= (safe_mul_func_uint16_t_u_u((p_1312->g_396 = (safe_mul_func_int8_t_s_s((l_388 >= (safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(l_391.s20)).odd, (0xE5L || (((void*)0 == (*l_355)) == (safe_mod_func_uint64_t_u_u((safe_sub_func_int8_t_s_s((p_65 = (((((((p_1312->g_328.y ^ p_1312->g_328.x) , l_344[0]) < l_388) > 0x4BL) | (-4L)) >= GROUP_DIVERGE(1, 1)) < 0x91L)), p_64)), FAKE_DIVERGE(p_1312->global_2_offset, get_global_id(2), 10)))))))), p_1312->g_46))), 0x69EEL))) , p_65)) , FAKE_DIVERGE(p_1312->local_1_offset, get_local_id(1), 10))), FAKE_DIVERGE(p_1312->global_2_offset, get_global_id(2), 10))) > 0x4A025FEAL), 18446744073709551614UL))) , l_397));
            if ((safe_mod_func_uint32_t_u_u((((safe_div_func_int16_t_s_s(((((&p_1312->g_108[0] != l_406) == (((VECTOR(int32_t, 4))(0x3E997629L, 0L, 0x2F673EADL, 0x3DADB449L)).x >= ((void*)0 != p_1312->g_407))) >= (safe_mul_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u((***p_1312->g_160), p_1312->g_382.s1)) & (!(!(safe_div_func_uint16_t_u_u(((*l_423) = (safe_sub_func_int16_t_s_s(p_65, ((safe_sub_func_uint32_t_u_u((safe_mul_func_int8_t_s_s((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(0x47L, 0x2BL)))).hi ^ ((safe_add_func_int8_t_s_s(p_1312->g_328.x, (*p_1312->g_407))) != 1L)), l_398.y)), p_64)) > p_65)))), p_1312->g_408))))), 0xFCL))) > 0xC64B106DL), 0xD2CAL)) && (*p_1312->g_407)) == 0x9F52B307L), p_1312->g_76.sd)))
            { /* block id: 145 */
                VECTOR(int32_t, 2) l_425 = (VECTOR(int32_t, 2))(0x7A892EF5L, 0L);
                int i;
                return l_425.y;
            }
            else
            { /* block id: 147 */
                int8_t **l_430 = &l_129;
                uint32_t **l_435[6];
                int i;
                for (i = 0; i < 6; i++)
                    l_435[i] = &l_434;
                l_397 &= (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(0x1CL, 0L, 0x17L, 0x6DL)).yzzxyyxzxwyzyyzx)).s5, ((((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 2))(l_428.xy)).yxxx, ((VECTOR(int32_t, 4))(p_1312->g_429.sc446))))).w , 0xF22400E71A12E568L) , p_1312->g_143[0])));
                if (p_64)
                    continue;
                (*l_406) = func_66((((*l_430) = &p_64) != ((l_431 == ((!(safe_add_func_uint8_t_u_u((p_63 == (l_436 = l_434)), (*p_1312->g_407)))) , l_431)) , (void*)0)), (safe_mul_func_uint8_t_u_u(((void*)0 == &l_356), p_65)), (*p_1312->g_407), p_1312);
            }
            l_399 ^= 0x7BDE3D1FL;
            (*l_406) = l_112[0];
        }
        l_112[0] = l_339;
    }
    else
    { /* block id: 158 */
        int8_t l_439 = 1L;
        int32_t l_440 = 0L;
        int32_t l_441 = 0x50928F53L;
        int32_t l_442[6][4] = {{0x1E2B5A86L,0x5A85E445L,0x1E2B5A86L,0x1E2B5A86L},{0x1E2B5A86L,0x5A85E445L,0x1E2B5A86L,0x1E2B5A86L},{0x1E2B5A86L,0x5A85E445L,0x1E2B5A86L,0x1E2B5A86L},{0x1E2B5A86L,0x5A85E445L,0x1E2B5A86L,0x1E2B5A86L},{0x1E2B5A86L,0x5A85E445L,0x1E2B5A86L,0x1E2B5A86L},{0x1E2B5A86L,0x5A85E445L,0x1E2B5A86L,0x1E2B5A86L}};
        uint32_t l_443 = 0x3E183BDCL;
        VECTOR(int8_t, 4) l_456 = (VECTOR(int8_t, 4))(0x67L, (VECTOR(int8_t, 2))(0x67L, 0x20L), 0x20L);
        int i, j;
        --l_443;
        (*p_1312->g_446) = &p_1312->g_107;
        if (((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(p_1312->g_448.yyxxxxxyxxxyyxxx)))))).even, ((VECTOR(int32_t, 4))(p_1312->g_449.xyyx)).xyyxxyxw))).s3)
        { /* block id: 161 */
            int64_t *l_459 = &p_1312->g_460;
            uint16_t ***l_462[6][5][6] = {{{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161}},{{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161}},{{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161}},{{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161}},{{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161}},{{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161},{&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161,&p_1312->g_161}}};
            uint16_t ****l_461[2];
            int32_t l_464 = 0x2CEF2153L;
            int32_t **l_465 = &l_112[1];
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_461[i] = &l_462[5][3][2];
            (*l_465) = func_66((l_464 = (safe_div_func_int8_t_s_s(((safe_mod_func_int16_t_s_s(((safe_add_func_int8_t_s_s(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_456.xw)), 0x0DL, 0x42L)).zyzzwzxyzywwwxyy, ((VECTOR(int8_t, 8))(p_1312->g_457.wxwyzzyw)).s3547627106265525, ((VECTOR(int8_t, 4))(p_1312->g_458.s6210)).zxywyxyzywzxxyyz))).se, (0xBE3EL && (6L > (((*l_459) = (((void*)0 == &l_346) && ((p_1312->g_76.s5 < 18446744073709551610UL) , 65535UL))) , ((VECTOR(uint8_t, 2))(250UL, 0xDFL)).odd))))) , ((l_463[3][1][2] = &p_1312->g_161) == ((p_65 < l_464) , &p_1312->g_161))), 0x2466L)) != p_65), p_64))), p_65, p_64, p_1312);
            (*p_1312->g_447) = (safe_mod_func_uint16_t_u_u((**p_1312->g_161), ((safe_unary_minus_func_int64_t_s((!(-1L)))) | (p_1312->g_328.y = 1L))));
            (*p_1312->g_447) &= 0x77CA0F56L;
        }
        else
        { /* block id: 169 */
            uint8_t l_469 = 0x58L;
            return l_469;
        }
    }
    return (**p_1312->g_446);
}


/* ------------------------------------------ */
/* 
 * reads : p_1312->g_97 p_1312->g_99 p_1312->g_76 p_1312->g_comm_values
 * writes: p_1312->g_97 p_1312->g_5 p_1312->g_107 p_1312->g_110
 */
int32_t * func_66(int32_t  p_67, uint16_t  p_68, uint8_t  p_69, struct S0 * p_1312)
{ /* block id: 14 */
    int32_t *l_95 = &p_1312->g_5;
    int32_t **l_96 = &l_95;
    int64_t l_100 = 0x5E5FF039C001B320L;
    uint64_t l_101 = 18446744073709551615UL;
    int32_t **l_106 = &p_1312->g_98[8];
    int32_t ***l_105[3][7] = {{&l_106,&l_106,(void*)0,&l_106,&l_106,&l_106,&l_106},{&l_106,&l_106,(void*)0,&l_106,&l_106,&l_106,&l_106},{&l_106,&l_106,(void*)0,&l_106,&l_106,&l_106,&l_106}};
    int32_t *l_109 = &p_1312->g_110;
    int i, j;
    (*l_96) = l_95;
    (*p_1312->g_99) = p_1312->g_97;
    (*l_109) = (p_1312->g_107 = (((p_1312->g_76.se , ((l_100 >= ((p_1312->g_comm_values[p_1312->tid] | l_101) < ((*l_95) = 6L))) == ((VECTOR(int8_t, 8))(0x10L, ((safe_lshift_func_uint8_t_u_s((((safe_unary_minus_func_uint8_t_u((((void*)0 == l_105[1][0]) < (((*l_96) == (*l_96)) != FAKE_DIVERGE(p_1312->group_0_offset, get_group_id(0), 10))))) , FAKE_DIVERGE(p_1312->local_0_offset, get_local_id(0), 10)) ^ GROUP_DIVERGE(2, 1)), 4)) | 0x7E4AC2E1L), 0x29L, p_67, 0x37L, ((VECTOR(int8_t, 2))(0x18L)), 3L)).s6)) , &l_95) != (void*)0));
    (*l_96) = (void*)0;
    return &p_1312->g_46;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[22];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 22; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[22];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 22; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[2];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 2; i++)
            l_comm_values[i] = 1;
    struct S0 c_1313;
    struct S0* p_1312 = &c_1313;
    struct S0 c_1314 = {
        (-2L), // p_1312->g_5
        1UL, // p_1312->g_20
        0x18BA70A1L, // p_1312->g_46
        0x70CFADBACD6BCE8DL, // p_1312->g_57
        0x1F9DA978L, // p_1312->g_58
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x7CEC4480L), 0x7CEC4480L), 0x7CEC4480L, 0UL, 0x7CEC4480L), // p_1312->g_74
        (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), (-1L)), (-1L)), // p_1312->g_75
        (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int64_t, 2))((-1L), 0L), (VECTOR(int64_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L), // p_1312->g_76
        (VECTOR(int64_t, 16))(0x00DC0F60EFD82B3CL, (VECTOR(int64_t, 4))(0x00DC0F60EFD82B3CL, (VECTOR(int64_t, 2))(0x00DC0F60EFD82B3CL, 0x4F1CC41D5C681E8BL), 0x4F1CC41D5C681E8BL), 0x4F1CC41D5C681E8BL, 0x00DC0F60EFD82B3CL, 0x4F1CC41D5C681E8BL, (VECTOR(int64_t, 2))(0x00DC0F60EFD82B3CL, 0x4F1CC41D5C681E8BL), (VECTOR(int64_t, 2))(0x00DC0F60EFD82B3CL, 0x4F1CC41D5C681E8BL), 0x00DC0F60EFD82B3CL, 0x4F1CC41D5C681E8BL, 0x00DC0F60EFD82B3CL, 0x4F1CC41D5C681E8BL), // p_1312->g_83
        0x753CL, // p_1312->g_91
        &p_1312->g_91, // p_1312->g_90
        {&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46,&p_1312->g_46}, // p_1312->g_98
        &p_1312->g_98[8], // p_1312->g_97
        &p_1312->g_97, // p_1312->g_99
        0x4D0EF1DBL, // p_1312->g_107
        {(void*)0}, // p_1312->g_108
        (-1L), // p_1312->g_110
        (-8L), // p_1312->g_130
        {4294967288UL,3UL,4294967288UL,4294967288UL,3UL,4294967288UL}, // p_1312->g_143
        (void*)0, // p_1312->g_144
        &p_1312->g_90, // p_1312->g_161
        &p_1312->g_161, // p_1312->g_160
        (VECTOR(int16_t, 2))(1L, (-1L)), // p_1312->g_328
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967293UL), 4294967293UL), 4294967293UL, 4294967295UL, 4294967293UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967293UL), (VECTOR(uint32_t, 2))(4294967295UL, 4294967293UL), 4294967295UL, 4294967293UL, 4294967295UL, 4294967293UL), // p_1312->g_338
        0xE7C6FAA3L, // p_1312->g_340
        18446744073709551607UL, // p_1312->g_342
        (VECTOR(int32_t, 4))(0x604A297DL, (VECTOR(int32_t, 2))(0x604A297DL, (-1L)), (-1L)), // p_1312->g_365
        (VECTOR(int64_t, 8))(0x459AA4C556F8DAEDL, (VECTOR(int64_t, 4))(0x459AA4C556F8DAEDL, (VECTOR(int64_t, 2))(0x459AA4C556F8DAEDL, 0x5B91A9FCB1AECCEDL), 0x5B91A9FCB1AECCEDL), 0x5B91A9FCB1AECCEDL, 0x459AA4C556F8DAEDL, 0x5B91A9FCB1AECCEDL), // p_1312->g_382
        0xFB1149F5L, // p_1312->g_396
        0x23L, // p_1312->g_408
        &p_1312->g_408, // p_1312->g_407
        2UL, // p_1312->g_424
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 8L), 8L), 8L, (-1L), 8L, (VECTOR(int32_t, 2))((-1L), 8L), (VECTOR(int32_t, 2))((-1L), 8L), (-1L), 8L, (-1L), 8L), // p_1312->g_429
        &p_1312->g_110, // p_1312->g_447
        &p_1312->g_447, // p_1312->g_446
        (VECTOR(int32_t, 2))((-9L), (-1L)), // p_1312->g_448
        (VECTOR(int32_t, 2))((-1L), 0x4FA778C1L), // p_1312->g_449
        (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 0x02L), 0x02L), // p_1312->g_457
        (VECTOR(int8_t, 8))((-5L), (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 0L), 0L), 0L, (-5L), 0L), // p_1312->g_458
        0x1DE65D5190E96E07L, // p_1312->g_460
        (-1L), // p_1312->g_472
        {&p_1312->g_161}, // p_1312->g_518
        {{{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]}},{{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]}},{{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]}},{{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]}},{{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]}},{{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]},{(void*)0,&p_1312->g_518[0]}}}, // p_1312->g_517
        0UL, // p_1312->g_537
        {0x75L,0x75L,0x75L,0x75L,0x75L,0x75L,0x75L,0x75L,0x75L,0x75L}, // p_1312->g_614
        (VECTOR(uint16_t, 16))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 0x31D0L), 0x31D0L), 0x31D0L, 9UL, 0x31D0L, (VECTOR(uint16_t, 2))(9UL, 0x31D0L), (VECTOR(uint16_t, 2))(9UL, 0x31D0L), 9UL, 0x31D0L, 9UL, 0x31D0L), // p_1312->g_642
        (void*)0, // p_1312->g_674
        {{&p_1312->g_447,&p_1312->g_447,&p_1312->g_447,(void*)0,&p_1312->g_447,(void*)0,&p_1312->g_447},{&p_1312->g_447,&p_1312->g_447,&p_1312->g_447,(void*)0,&p_1312->g_447,(void*)0,&p_1312->g_447},{&p_1312->g_447,&p_1312->g_447,&p_1312->g_447,(void*)0,&p_1312->g_447,(void*)0,&p_1312->g_447},{&p_1312->g_447,&p_1312->g_447,&p_1312->g_447,(void*)0,&p_1312->g_447,(void*)0,&p_1312->g_447},{&p_1312->g_447,&p_1312->g_447,&p_1312->g_447,(void*)0,&p_1312->g_447,(void*)0,&p_1312->g_447},{&p_1312->g_447,&p_1312->g_447,&p_1312->g_447,(void*)0,&p_1312->g_447,(void*)0,&p_1312->g_447},{&p_1312->g_447,&p_1312->g_447,&p_1312->g_447,(void*)0,&p_1312->g_447,(void*)0,&p_1312->g_447},{&p_1312->g_447,&p_1312->g_447,&p_1312->g_447,(void*)0,&p_1312->g_447,(void*)0,&p_1312->g_447},{&p_1312->g_447,&p_1312->g_447,&p_1312->g_447,(void*)0,&p_1312->g_447,(void*)0,&p_1312->g_447},{&p_1312->g_447,&p_1312->g_447,&p_1312->g_447,(void*)0,&p_1312->g_447,(void*)0,&p_1312->g_447}}, // p_1312->g_675
        2UL, // p_1312->g_680
        0x2BD4B185L, // p_1312->g_705
        0x0C08803582A9AA49L, // p_1312->g_706
        1L, // p_1312->g_709
        0x669CB6AEL, // p_1312->g_711
        {&p_1312->g_130,&p_1312->g_130,&p_1312->g_130,&p_1312->g_130,&p_1312->g_130,&p_1312->g_130,&p_1312->g_130,&p_1312->g_130,&p_1312->g_130}, // p_1312->g_752
        &p_1312->g_752[2], // p_1312->g_751
        (VECTOR(int8_t, 2))(5L, 0x75L), // p_1312->g_821
        (VECTOR(uint64_t, 8))(0xBA61F149BC639FD8L, (VECTOR(uint64_t, 4))(0xBA61F149BC639FD8L, (VECTOR(uint64_t, 2))(0xBA61F149BC639FD8L, 0xFED3D3EC1ABE72F7L), 0xFED3D3EC1ABE72F7L), 0xFED3D3EC1ABE72F7L, 0xBA61F149BC639FD8L, 0xFED3D3EC1ABE72F7L), // p_1312->g_858
        (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint32_t, 2))(1UL, 1UL), (VECTOR(uint32_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL), // p_1312->g_884
        (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 0x79L), 0x79L), // p_1312->g_902
        (VECTOR(int8_t, 8))(0x37L, (VECTOR(int8_t, 4))(0x37L, (VECTOR(int8_t, 2))(0x37L, 0x5AL), 0x5AL), 0x5AL, 0x37L, 0x5AL), // p_1312->g_903
        (VECTOR(int8_t, 4))(0x25L, (VECTOR(int8_t, 2))(0x25L, (-1L)), (-1L)), // p_1312->g_904
        {&p_1312->g_447}, // p_1312->g_921
        &p_1312->g_447, // p_1312->g_923
        {{0x62E8L,65532UL,0x7C98L,8UL,65532UL,8UL,0x7C98L,65532UL},{0x62E8L,65532UL,0x7C98L,8UL,65532UL,8UL,0x7C98L,65532UL},{0x62E8L,65532UL,0x7C98L,8UL,65532UL,8UL,0x7C98L,65532UL},{0x62E8L,65532UL,0x7C98L,8UL,65532UL,8UL,0x7C98L,65532UL},{0x62E8L,65532UL,0x7C98L,8UL,65532UL,8UL,0x7C98L,65532UL},{0x62E8L,65532UL,0x7C98L,8UL,65532UL,8UL,0x7C98L,65532UL},{0x62E8L,65532UL,0x7C98L,8UL,65532UL,8UL,0x7C98L,65532UL},{0x62E8L,65532UL,0x7C98L,8UL,65532UL,8UL,0x7C98L,65532UL}}, // p_1312->g_1019
        (VECTOR(uint32_t, 16))(4294967289UL, (VECTOR(uint32_t, 4))(4294967289UL, (VECTOR(uint32_t, 2))(4294967289UL, 4294967292UL), 4294967292UL), 4294967292UL, 4294967289UL, 4294967292UL, (VECTOR(uint32_t, 2))(4294967289UL, 4294967292UL), (VECTOR(uint32_t, 2))(4294967289UL, 4294967292UL), 4294967289UL, 4294967292UL, 4294967289UL, 4294967292UL), // p_1312->g_1138
        (VECTOR(uint32_t, 4))(0x6AA74850L, (VECTOR(uint32_t, 2))(0x6AA74850L, 0x63BFA5D7L), 0x63BFA5D7L), // p_1312->g_1139
        (VECTOR(uint32_t, 4))(0x5B09DB0CL, (VECTOR(uint32_t, 2))(0x5B09DB0CL, 0xF446FD74L), 0xF446FD74L), // p_1312->g_1140
        (VECTOR(uint16_t, 4))(0x27B2L, (VECTOR(uint16_t, 2))(0x27B2L, 0xCA8AL), 0xCA8AL), // p_1312->g_1142
        (VECTOR(uint32_t, 2))(2UL, 0x72384F16L), // p_1312->g_1143
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x4C36L), 0x4C36L), 0x4C36L, 1L, 0x4C36L, (VECTOR(int16_t, 2))(1L, 0x4C36L), (VECTOR(int16_t, 2))(1L, 0x4C36L), 1L, 0x4C36L, 1L, 0x4C36L), // p_1312->g_1173
        (VECTOR(int32_t, 2))(0x7EF494A1L, 0x5BF14C45L), // p_1312->g_1176
        (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L), // p_1312->g_1213
        (VECTOR(int16_t, 16))(0x0538L, (VECTOR(int16_t, 4))(0x0538L, (VECTOR(int16_t, 2))(0x0538L, (-9L)), (-9L)), (-9L), 0x0538L, (-9L), (VECTOR(int16_t, 2))(0x0538L, (-9L)), (VECTOR(int16_t, 2))(0x0538L, (-9L)), 0x0538L, (-9L), 0x0538L, (-9L)), // p_1312->g_1221
        &p_1312->g_447, // p_1312->g_1229
        (VECTOR(int32_t, 2))((-1L), 0L), // p_1312->g_1236
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int8_t, 2))(0L, 1L), (VECTOR(int8_t, 2))(0L, 1L), 0L, 1L, 0L, 1L), // p_1312->g_1239
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x55L), 0x55L), 0x55L, (-1L), 0x55L, (VECTOR(int8_t, 2))((-1L), 0x55L), (VECTOR(int8_t, 2))((-1L), 0x55L), (-1L), 0x55L, (-1L), 0x55L), // p_1312->g_1240
        (VECTOR(uint16_t, 2))(0UL, 0x32D6L), // p_1312->g_1262
        (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x26D0L), 0x26D0L), // p_1312->g_1271
        0, // p_1312->v_collective
        sequence_input[get_global_id(0)], // p_1312->global_0_offset
        sequence_input[get_global_id(1)], // p_1312->global_1_offset
        sequence_input[get_global_id(2)], // p_1312->global_2_offset
        sequence_input[get_local_id(0)], // p_1312->local_0_offset
        sequence_input[get_local_id(1)], // p_1312->local_1_offset
        sequence_input[get_local_id(2)], // p_1312->local_2_offset
        sequence_input[get_group_id(0)], // p_1312->group_0_offset
        sequence_input[get_group_id(1)], // p_1312->group_1_offset
        sequence_input[get_group_id(2)], // p_1312->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[0][get_linear_local_id()])), // p_1312->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1313 = c_1314;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1312);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1312->g_5, "p_1312->g_5", print_hash_value);
    transparent_crc(p_1312->g_20, "p_1312->g_20", print_hash_value);
    transparent_crc(p_1312->g_46, "p_1312->g_46", print_hash_value);
    transparent_crc(p_1312->g_57, "p_1312->g_57", print_hash_value);
    transparent_crc(p_1312->g_58, "p_1312->g_58", print_hash_value);
    transparent_crc(p_1312->g_74.s0, "p_1312->g_74.s0", print_hash_value);
    transparent_crc(p_1312->g_74.s1, "p_1312->g_74.s1", print_hash_value);
    transparent_crc(p_1312->g_74.s2, "p_1312->g_74.s2", print_hash_value);
    transparent_crc(p_1312->g_74.s3, "p_1312->g_74.s3", print_hash_value);
    transparent_crc(p_1312->g_74.s4, "p_1312->g_74.s4", print_hash_value);
    transparent_crc(p_1312->g_74.s5, "p_1312->g_74.s5", print_hash_value);
    transparent_crc(p_1312->g_74.s6, "p_1312->g_74.s6", print_hash_value);
    transparent_crc(p_1312->g_74.s7, "p_1312->g_74.s7", print_hash_value);
    transparent_crc(p_1312->g_75.x, "p_1312->g_75.x", print_hash_value);
    transparent_crc(p_1312->g_75.y, "p_1312->g_75.y", print_hash_value);
    transparent_crc(p_1312->g_75.z, "p_1312->g_75.z", print_hash_value);
    transparent_crc(p_1312->g_75.w, "p_1312->g_75.w", print_hash_value);
    transparent_crc(p_1312->g_76.s0, "p_1312->g_76.s0", print_hash_value);
    transparent_crc(p_1312->g_76.s1, "p_1312->g_76.s1", print_hash_value);
    transparent_crc(p_1312->g_76.s2, "p_1312->g_76.s2", print_hash_value);
    transparent_crc(p_1312->g_76.s3, "p_1312->g_76.s3", print_hash_value);
    transparent_crc(p_1312->g_76.s4, "p_1312->g_76.s4", print_hash_value);
    transparent_crc(p_1312->g_76.s5, "p_1312->g_76.s5", print_hash_value);
    transparent_crc(p_1312->g_76.s6, "p_1312->g_76.s6", print_hash_value);
    transparent_crc(p_1312->g_76.s7, "p_1312->g_76.s7", print_hash_value);
    transparent_crc(p_1312->g_76.s8, "p_1312->g_76.s8", print_hash_value);
    transparent_crc(p_1312->g_76.s9, "p_1312->g_76.s9", print_hash_value);
    transparent_crc(p_1312->g_76.sa, "p_1312->g_76.sa", print_hash_value);
    transparent_crc(p_1312->g_76.sb, "p_1312->g_76.sb", print_hash_value);
    transparent_crc(p_1312->g_76.sc, "p_1312->g_76.sc", print_hash_value);
    transparent_crc(p_1312->g_76.sd, "p_1312->g_76.sd", print_hash_value);
    transparent_crc(p_1312->g_76.se, "p_1312->g_76.se", print_hash_value);
    transparent_crc(p_1312->g_76.sf, "p_1312->g_76.sf", print_hash_value);
    transparent_crc(p_1312->g_83.s0, "p_1312->g_83.s0", print_hash_value);
    transparent_crc(p_1312->g_83.s1, "p_1312->g_83.s1", print_hash_value);
    transparent_crc(p_1312->g_83.s2, "p_1312->g_83.s2", print_hash_value);
    transparent_crc(p_1312->g_83.s3, "p_1312->g_83.s3", print_hash_value);
    transparent_crc(p_1312->g_83.s4, "p_1312->g_83.s4", print_hash_value);
    transparent_crc(p_1312->g_83.s5, "p_1312->g_83.s5", print_hash_value);
    transparent_crc(p_1312->g_83.s6, "p_1312->g_83.s6", print_hash_value);
    transparent_crc(p_1312->g_83.s7, "p_1312->g_83.s7", print_hash_value);
    transparent_crc(p_1312->g_83.s8, "p_1312->g_83.s8", print_hash_value);
    transparent_crc(p_1312->g_83.s9, "p_1312->g_83.s9", print_hash_value);
    transparent_crc(p_1312->g_83.sa, "p_1312->g_83.sa", print_hash_value);
    transparent_crc(p_1312->g_83.sb, "p_1312->g_83.sb", print_hash_value);
    transparent_crc(p_1312->g_83.sc, "p_1312->g_83.sc", print_hash_value);
    transparent_crc(p_1312->g_83.sd, "p_1312->g_83.sd", print_hash_value);
    transparent_crc(p_1312->g_83.se, "p_1312->g_83.se", print_hash_value);
    transparent_crc(p_1312->g_83.sf, "p_1312->g_83.sf", print_hash_value);
    transparent_crc(p_1312->g_91, "p_1312->g_91", print_hash_value);
    transparent_crc(p_1312->g_107, "p_1312->g_107", print_hash_value);
    transparent_crc(p_1312->g_110, "p_1312->g_110", print_hash_value);
    transparent_crc(p_1312->g_130, "p_1312->g_130", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1312->g_143[i], "p_1312->g_143[i]", print_hash_value);

    }
    transparent_crc(p_1312->g_328.x, "p_1312->g_328.x", print_hash_value);
    transparent_crc(p_1312->g_328.y, "p_1312->g_328.y", print_hash_value);
    transparent_crc(p_1312->g_338.s0, "p_1312->g_338.s0", print_hash_value);
    transparent_crc(p_1312->g_338.s1, "p_1312->g_338.s1", print_hash_value);
    transparent_crc(p_1312->g_338.s2, "p_1312->g_338.s2", print_hash_value);
    transparent_crc(p_1312->g_338.s3, "p_1312->g_338.s3", print_hash_value);
    transparent_crc(p_1312->g_338.s4, "p_1312->g_338.s4", print_hash_value);
    transparent_crc(p_1312->g_338.s5, "p_1312->g_338.s5", print_hash_value);
    transparent_crc(p_1312->g_338.s6, "p_1312->g_338.s6", print_hash_value);
    transparent_crc(p_1312->g_338.s7, "p_1312->g_338.s7", print_hash_value);
    transparent_crc(p_1312->g_338.s8, "p_1312->g_338.s8", print_hash_value);
    transparent_crc(p_1312->g_338.s9, "p_1312->g_338.s9", print_hash_value);
    transparent_crc(p_1312->g_338.sa, "p_1312->g_338.sa", print_hash_value);
    transparent_crc(p_1312->g_338.sb, "p_1312->g_338.sb", print_hash_value);
    transparent_crc(p_1312->g_338.sc, "p_1312->g_338.sc", print_hash_value);
    transparent_crc(p_1312->g_338.sd, "p_1312->g_338.sd", print_hash_value);
    transparent_crc(p_1312->g_338.se, "p_1312->g_338.se", print_hash_value);
    transparent_crc(p_1312->g_338.sf, "p_1312->g_338.sf", print_hash_value);
    transparent_crc(p_1312->g_340, "p_1312->g_340", print_hash_value);
    transparent_crc(p_1312->g_342, "p_1312->g_342", print_hash_value);
    transparent_crc(p_1312->g_365.x, "p_1312->g_365.x", print_hash_value);
    transparent_crc(p_1312->g_365.y, "p_1312->g_365.y", print_hash_value);
    transparent_crc(p_1312->g_365.z, "p_1312->g_365.z", print_hash_value);
    transparent_crc(p_1312->g_365.w, "p_1312->g_365.w", print_hash_value);
    transparent_crc(p_1312->g_382.s0, "p_1312->g_382.s0", print_hash_value);
    transparent_crc(p_1312->g_382.s1, "p_1312->g_382.s1", print_hash_value);
    transparent_crc(p_1312->g_382.s2, "p_1312->g_382.s2", print_hash_value);
    transparent_crc(p_1312->g_382.s3, "p_1312->g_382.s3", print_hash_value);
    transparent_crc(p_1312->g_382.s4, "p_1312->g_382.s4", print_hash_value);
    transparent_crc(p_1312->g_382.s5, "p_1312->g_382.s5", print_hash_value);
    transparent_crc(p_1312->g_382.s6, "p_1312->g_382.s6", print_hash_value);
    transparent_crc(p_1312->g_382.s7, "p_1312->g_382.s7", print_hash_value);
    transparent_crc(p_1312->g_396, "p_1312->g_396", print_hash_value);
    transparent_crc(p_1312->g_408, "p_1312->g_408", print_hash_value);
    transparent_crc(p_1312->g_424, "p_1312->g_424", print_hash_value);
    transparent_crc(p_1312->g_429.s0, "p_1312->g_429.s0", print_hash_value);
    transparent_crc(p_1312->g_429.s1, "p_1312->g_429.s1", print_hash_value);
    transparent_crc(p_1312->g_429.s2, "p_1312->g_429.s2", print_hash_value);
    transparent_crc(p_1312->g_429.s3, "p_1312->g_429.s3", print_hash_value);
    transparent_crc(p_1312->g_429.s4, "p_1312->g_429.s4", print_hash_value);
    transparent_crc(p_1312->g_429.s5, "p_1312->g_429.s5", print_hash_value);
    transparent_crc(p_1312->g_429.s6, "p_1312->g_429.s6", print_hash_value);
    transparent_crc(p_1312->g_429.s7, "p_1312->g_429.s7", print_hash_value);
    transparent_crc(p_1312->g_429.s8, "p_1312->g_429.s8", print_hash_value);
    transparent_crc(p_1312->g_429.s9, "p_1312->g_429.s9", print_hash_value);
    transparent_crc(p_1312->g_429.sa, "p_1312->g_429.sa", print_hash_value);
    transparent_crc(p_1312->g_429.sb, "p_1312->g_429.sb", print_hash_value);
    transparent_crc(p_1312->g_429.sc, "p_1312->g_429.sc", print_hash_value);
    transparent_crc(p_1312->g_429.sd, "p_1312->g_429.sd", print_hash_value);
    transparent_crc(p_1312->g_429.se, "p_1312->g_429.se", print_hash_value);
    transparent_crc(p_1312->g_429.sf, "p_1312->g_429.sf", print_hash_value);
    transparent_crc(p_1312->g_448.x, "p_1312->g_448.x", print_hash_value);
    transparent_crc(p_1312->g_448.y, "p_1312->g_448.y", print_hash_value);
    transparent_crc(p_1312->g_449.x, "p_1312->g_449.x", print_hash_value);
    transparent_crc(p_1312->g_449.y, "p_1312->g_449.y", print_hash_value);
    transparent_crc(p_1312->g_457.x, "p_1312->g_457.x", print_hash_value);
    transparent_crc(p_1312->g_457.y, "p_1312->g_457.y", print_hash_value);
    transparent_crc(p_1312->g_457.z, "p_1312->g_457.z", print_hash_value);
    transparent_crc(p_1312->g_457.w, "p_1312->g_457.w", print_hash_value);
    transparent_crc(p_1312->g_458.s0, "p_1312->g_458.s0", print_hash_value);
    transparent_crc(p_1312->g_458.s1, "p_1312->g_458.s1", print_hash_value);
    transparent_crc(p_1312->g_458.s2, "p_1312->g_458.s2", print_hash_value);
    transparent_crc(p_1312->g_458.s3, "p_1312->g_458.s3", print_hash_value);
    transparent_crc(p_1312->g_458.s4, "p_1312->g_458.s4", print_hash_value);
    transparent_crc(p_1312->g_458.s5, "p_1312->g_458.s5", print_hash_value);
    transparent_crc(p_1312->g_458.s6, "p_1312->g_458.s6", print_hash_value);
    transparent_crc(p_1312->g_458.s7, "p_1312->g_458.s7", print_hash_value);
    transparent_crc(p_1312->g_460, "p_1312->g_460", print_hash_value);
    transparent_crc(p_1312->g_472, "p_1312->g_472", print_hash_value);
    transparent_crc(p_1312->g_537, "p_1312->g_537", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1312->g_614[i], "p_1312->g_614[i]", print_hash_value);

    }
    transparent_crc(p_1312->g_642.s0, "p_1312->g_642.s0", print_hash_value);
    transparent_crc(p_1312->g_642.s1, "p_1312->g_642.s1", print_hash_value);
    transparent_crc(p_1312->g_642.s2, "p_1312->g_642.s2", print_hash_value);
    transparent_crc(p_1312->g_642.s3, "p_1312->g_642.s3", print_hash_value);
    transparent_crc(p_1312->g_642.s4, "p_1312->g_642.s4", print_hash_value);
    transparent_crc(p_1312->g_642.s5, "p_1312->g_642.s5", print_hash_value);
    transparent_crc(p_1312->g_642.s6, "p_1312->g_642.s6", print_hash_value);
    transparent_crc(p_1312->g_642.s7, "p_1312->g_642.s7", print_hash_value);
    transparent_crc(p_1312->g_642.s8, "p_1312->g_642.s8", print_hash_value);
    transparent_crc(p_1312->g_642.s9, "p_1312->g_642.s9", print_hash_value);
    transparent_crc(p_1312->g_642.sa, "p_1312->g_642.sa", print_hash_value);
    transparent_crc(p_1312->g_642.sb, "p_1312->g_642.sb", print_hash_value);
    transparent_crc(p_1312->g_642.sc, "p_1312->g_642.sc", print_hash_value);
    transparent_crc(p_1312->g_642.sd, "p_1312->g_642.sd", print_hash_value);
    transparent_crc(p_1312->g_642.se, "p_1312->g_642.se", print_hash_value);
    transparent_crc(p_1312->g_642.sf, "p_1312->g_642.sf", print_hash_value);
    transparent_crc(p_1312->g_680, "p_1312->g_680", print_hash_value);
    transparent_crc(p_1312->g_705, "p_1312->g_705", print_hash_value);
    transparent_crc(p_1312->g_706, "p_1312->g_706", print_hash_value);
    transparent_crc(p_1312->g_709, "p_1312->g_709", print_hash_value);
    transparent_crc(p_1312->g_711, "p_1312->g_711", print_hash_value);
    transparent_crc(p_1312->g_821.x, "p_1312->g_821.x", print_hash_value);
    transparent_crc(p_1312->g_821.y, "p_1312->g_821.y", print_hash_value);
    transparent_crc(p_1312->g_858.s0, "p_1312->g_858.s0", print_hash_value);
    transparent_crc(p_1312->g_858.s1, "p_1312->g_858.s1", print_hash_value);
    transparent_crc(p_1312->g_858.s2, "p_1312->g_858.s2", print_hash_value);
    transparent_crc(p_1312->g_858.s3, "p_1312->g_858.s3", print_hash_value);
    transparent_crc(p_1312->g_858.s4, "p_1312->g_858.s4", print_hash_value);
    transparent_crc(p_1312->g_858.s5, "p_1312->g_858.s5", print_hash_value);
    transparent_crc(p_1312->g_858.s6, "p_1312->g_858.s6", print_hash_value);
    transparent_crc(p_1312->g_858.s7, "p_1312->g_858.s7", print_hash_value);
    transparent_crc(p_1312->g_884.s0, "p_1312->g_884.s0", print_hash_value);
    transparent_crc(p_1312->g_884.s1, "p_1312->g_884.s1", print_hash_value);
    transparent_crc(p_1312->g_884.s2, "p_1312->g_884.s2", print_hash_value);
    transparent_crc(p_1312->g_884.s3, "p_1312->g_884.s3", print_hash_value);
    transparent_crc(p_1312->g_884.s4, "p_1312->g_884.s4", print_hash_value);
    transparent_crc(p_1312->g_884.s5, "p_1312->g_884.s5", print_hash_value);
    transparent_crc(p_1312->g_884.s6, "p_1312->g_884.s6", print_hash_value);
    transparent_crc(p_1312->g_884.s7, "p_1312->g_884.s7", print_hash_value);
    transparent_crc(p_1312->g_884.s8, "p_1312->g_884.s8", print_hash_value);
    transparent_crc(p_1312->g_884.s9, "p_1312->g_884.s9", print_hash_value);
    transparent_crc(p_1312->g_884.sa, "p_1312->g_884.sa", print_hash_value);
    transparent_crc(p_1312->g_884.sb, "p_1312->g_884.sb", print_hash_value);
    transparent_crc(p_1312->g_884.sc, "p_1312->g_884.sc", print_hash_value);
    transparent_crc(p_1312->g_884.sd, "p_1312->g_884.sd", print_hash_value);
    transparent_crc(p_1312->g_884.se, "p_1312->g_884.se", print_hash_value);
    transparent_crc(p_1312->g_884.sf, "p_1312->g_884.sf", print_hash_value);
    transparent_crc(p_1312->g_902.x, "p_1312->g_902.x", print_hash_value);
    transparent_crc(p_1312->g_902.y, "p_1312->g_902.y", print_hash_value);
    transparent_crc(p_1312->g_902.z, "p_1312->g_902.z", print_hash_value);
    transparent_crc(p_1312->g_902.w, "p_1312->g_902.w", print_hash_value);
    transparent_crc(p_1312->g_903.s0, "p_1312->g_903.s0", print_hash_value);
    transparent_crc(p_1312->g_903.s1, "p_1312->g_903.s1", print_hash_value);
    transparent_crc(p_1312->g_903.s2, "p_1312->g_903.s2", print_hash_value);
    transparent_crc(p_1312->g_903.s3, "p_1312->g_903.s3", print_hash_value);
    transparent_crc(p_1312->g_903.s4, "p_1312->g_903.s4", print_hash_value);
    transparent_crc(p_1312->g_903.s5, "p_1312->g_903.s5", print_hash_value);
    transparent_crc(p_1312->g_903.s6, "p_1312->g_903.s6", print_hash_value);
    transparent_crc(p_1312->g_903.s7, "p_1312->g_903.s7", print_hash_value);
    transparent_crc(p_1312->g_904.x, "p_1312->g_904.x", print_hash_value);
    transparent_crc(p_1312->g_904.y, "p_1312->g_904.y", print_hash_value);
    transparent_crc(p_1312->g_904.z, "p_1312->g_904.z", print_hash_value);
    transparent_crc(p_1312->g_904.w, "p_1312->g_904.w", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1312->g_1019[i][j], "p_1312->g_1019[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1312->g_1138.s0, "p_1312->g_1138.s0", print_hash_value);
    transparent_crc(p_1312->g_1138.s1, "p_1312->g_1138.s1", print_hash_value);
    transparent_crc(p_1312->g_1138.s2, "p_1312->g_1138.s2", print_hash_value);
    transparent_crc(p_1312->g_1138.s3, "p_1312->g_1138.s3", print_hash_value);
    transparent_crc(p_1312->g_1138.s4, "p_1312->g_1138.s4", print_hash_value);
    transparent_crc(p_1312->g_1138.s5, "p_1312->g_1138.s5", print_hash_value);
    transparent_crc(p_1312->g_1138.s6, "p_1312->g_1138.s6", print_hash_value);
    transparent_crc(p_1312->g_1138.s7, "p_1312->g_1138.s7", print_hash_value);
    transparent_crc(p_1312->g_1138.s8, "p_1312->g_1138.s8", print_hash_value);
    transparent_crc(p_1312->g_1138.s9, "p_1312->g_1138.s9", print_hash_value);
    transparent_crc(p_1312->g_1138.sa, "p_1312->g_1138.sa", print_hash_value);
    transparent_crc(p_1312->g_1138.sb, "p_1312->g_1138.sb", print_hash_value);
    transparent_crc(p_1312->g_1138.sc, "p_1312->g_1138.sc", print_hash_value);
    transparent_crc(p_1312->g_1138.sd, "p_1312->g_1138.sd", print_hash_value);
    transparent_crc(p_1312->g_1138.se, "p_1312->g_1138.se", print_hash_value);
    transparent_crc(p_1312->g_1138.sf, "p_1312->g_1138.sf", print_hash_value);
    transparent_crc(p_1312->g_1139.x, "p_1312->g_1139.x", print_hash_value);
    transparent_crc(p_1312->g_1139.y, "p_1312->g_1139.y", print_hash_value);
    transparent_crc(p_1312->g_1139.z, "p_1312->g_1139.z", print_hash_value);
    transparent_crc(p_1312->g_1139.w, "p_1312->g_1139.w", print_hash_value);
    transparent_crc(p_1312->g_1140.x, "p_1312->g_1140.x", print_hash_value);
    transparent_crc(p_1312->g_1140.y, "p_1312->g_1140.y", print_hash_value);
    transparent_crc(p_1312->g_1140.z, "p_1312->g_1140.z", print_hash_value);
    transparent_crc(p_1312->g_1140.w, "p_1312->g_1140.w", print_hash_value);
    transparent_crc(p_1312->g_1142.x, "p_1312->g_1142.x", print_hash_value);
    transparent_crc(p_1312->g_1142.y, "p_1312->g_1142.y", print_hash_value);
    transparent_crc(p_1312->g_1142.z, "p_1312->g_1142.z", print_hash_value);
    transparent_crc(p_1312->g_1142.w, "p_1312->g_1142.w", print_hash_value);
    transparent_crc(p_1312->g_1143.x, "p_1312->g_1143.x", print_hash_value);
    transparent_crc(p_1312->g_1143.y, "p_1312->g_1143.y", print_hash_value);
    transparent_crc(p_1312->g_1173.s0, "p_1312->g_1173.s0", print_hash_value);
    transparent_crc(p_1312->g_1173.s1, "p_1312->g_1173.s1", print_hash_value);
    transparent_crc(p_1312->g_1173.s2, "p_1312->g_1173.s2", print_hash_value);
    transparent_crc(p_1312->g_1173.s3, "p_1312->g_1173.s3", print_hash_value);
    transparent_crc(p_1312->g_1173.s4, "p_1312->g_1173.s4", print_hash_value);
    transparent_crc(p_1312->g_1173.s5, "p_1312->g_1173.s5", print_hash_value);
    transparent_crc(p_1312->g_1173.s6, "p_1312->g_1173.s6", print_hash_value);
    transparent_crc(p_1312->g_1173.s7, "p_1312->g_1173.s7", print_hash_value);
    transparent_crc(p_1312->g_1173.s8, "p_1312->g_1173.s8", print_hash_value);
    transparent_crc(p_1312->g_1173.s9, "p_1312->g_1173.s9", print_hash_value);
    transparent_crc(p_1312->g_1173.sa, "p_1312->g_1173.sa", print_hash_value);
    transparent_crc(p_1312->g_1173.sb, "p_1312->g_1173.sb", print_hash_value);
    transparent_crc(p_1312->g_1173.sc, "p_1312->g_1173.sc", print_hash_value);
    transparent_crc(p_1312->g_1173.sd, "p_1312->g_1173.sd", print_hash_value);
    transparent_crc(p_1312->g_1173.se, "p_1312->g_1173.se", print_hash_value);
    transparent_crc(p_1312->g_1173.sf, "p_1312->g_1173.sf", print_hash_value);
    transparent_crc(p_1312->g_1176.x, "p_1312->g_1176.x", print_hash_value);
    transparent_crc(p_1312->g_1176.y, "p_1312->g_1176.y", print_hash_value);
    transparent_crc(p_1312->g_1213.s0, "p_1312->g_1213.s0", print_hash_value);
    transparent_crc(p_1312->g_1213.s1, "p_1312->g_1213.s1", print_hash_value);
    transparent_crc(p_1312->g_1213.s2, "p_1312->g_1213.s2", print_hash_value);
    transparent_crc(p_1312->g_1213.s3, "p_1312->g_1213.s3", print_hash_value);
    transparent_crc(p_1312->g_1213.s4, "p_1312->g_1213.s4", print_hash_value);
    transparent_crc(p_1312->g_1213.s5, "p_1312->g_1213.s5", print_hash_value);
    transparent_crc(p_1312->g_1213.s6, "p_1312->g_1213.s6", print_hash_value);
    transparent_crc(p_1312->g_1213.s7, "p_1312->g_1213.s7", print_hash_value);
    transparent_crc(p_1312->g_1221.s0, "p_1312->g_1221.s0", print_hash_value);
    transparent_crc(p_1312->g_1221.s1, "p_1312->g_1221.s1", print_hash_value);
    transparent_crc(p_1312->g_1221.s2, "p_1312->g_1221.s2", print_hash_value);
    transparent_crc(p_1312->g_1221.s3, "p_1312->g_1221.s3", print_hash_value);
    transparent_crc(p_1312->g_1221.s4, "p_1312->g_1221.s4", print_hash_value);
    transparent_crc(p_1312->g_1221.s5, "p_1312->g_1221.s5", print_hash_value);
    transparent_crc(p_1312->g_1221.s6, "p_1312->g_1221.s6", print_hash_value);
    transparent_crc(p_1312->g_1221.s7, "p_1312->g_1221.s7", print_hash_value);
    transparent_crc(p_1312->g_1221.s8, "p_1312->g_1221.s8", print_hash_value);
    transparent_crc(p_1312->g_1221.s9, "p_1312->g_1221.s9", print_hash_value);
    transparent_crc(p_1312->g_1221.sa, "p_1312->g_1221.sa", print_hash_value);
    transparent_crc(p_1312->g_1221.sb, "p_1312->g_1221.sb", print_hash_value);
    transparent_crc(p_1312->g_1221.sc, "p_1312->g_1221.sc", print_hash_value);
    transparent_crc(p_1312->g_1221.sd, "p_1312->g_1221.sd", print_hash_value);
    transparent_crc(p_1312->g_1221.se, "p_1312->g_1221.se", print_hash_value);
    transparent_crc(p_1312->g_1221.sf, "p_1312->g_1221.sf", print_hash_value);
    transparent_crc(p_1312->g_1236.x, "p_1312->g_1236.x", print_hash_value);
    transparent_crc(p_1312->g_1236.y, "p_1312->g_1236.y", print_hash_value);
    transparent_crc(p_1312->g_1239.s0, "p_1312->g_1239.s0", print_hash_value);
    transparent_crc(p_1312->g_1239.s1, "p_1312->g_1239.s1", print_hash_value);
    transparent_crc(p_1312->g_1239.s2, "p_1312->g_1239.s2", print_hash_value);
    transparent_crc(p_1312->g_1239.s3, "p_1312->g_1239.s3", print_hash_value);
    transparent_crc(p_1312->g_1239.s4, "p_1312->g_1239.s4", print_hash_value);
    transparent_crc(p_1312->g_1239.s5, "p_1312->g_1239.s5", print_hash_value);
    transparent_crc(p_1312->g_1239.s6, "p_1312->g_1239.s6", print_hash_value);
    transparent_crc(p_1312->g_1239.s7, "p_1312->g_1239.s7", print_hash_value);
    transparent_crc(p_1312->g_1239.s8, "p_1312->g_1239.s8", print_hash_value);
    transparent_crc(p_1312->g_1239.s9, "p_1312->g_1239.s9", print_hash_value);
    transparent_crc(p_1312->g_1239.sa, "p_1312->g_1239.sa", print_hash_value);
    transparent_crc(p_1312->g_1239.sb, "p_1312->g_1239.sb", print_hash_value);
    transparent_crc(p_1312->g_1239.sc, "p_1312->g_1239.sc", print_hash_value);
    transparent_crc(p_1312->g_1239.sd, "p_1312->g_1239.sd", print_hash_value);
    transparent_crc(p_1312->g_1239.se, "p_1312->g_1239.se", print_hash_value);
    transparent_crc(p_1312->g_1239.sf, "p_1312->g_1239.sf", print_hash_value);
    transparent_crc(p_1312->g_1240.s0, "p_1312->g_1240.s0", print_hash_value);
    transparent_crc(p_1312->g_1240.s1, "p_1312->g_1240.s1", print_hash_value);
    transparent_crc(p_1312->g_1240.s2, "p_1312->g_1240.s2", print_hash_value);
    transparent_crc(p_1312->g_1240.s3, "p_1312->g_1240.s3", print_hash_value);
    transparent_crc(p_1312->g_1240.s4, "p_1312->g_1240.s4", print_hash_value);
    transparent_crc(p_1312->g_1240.s5, "p_1312->g_1240.s5", print_hash_value);
    transparent_crc(p_1312->g_1240.s6, "p_1312->g_1240.s6", print_hash_value);
    transparent_crc(p_1312->g_1240.s7, "p_1312->g_1240.s7", print_hash_value);
    transparent_crc(p_1312->g_1240.s8, "p_1312->g_1240.s8", print_hash_value);
    transparent_crc(p_1312->g_1240.s9, "p_1312->g_1240.s9", print_hash_value);
    transparent_crc(p_1312->g_1240.sa, "p_1312->g_1240.sa", print_hash_value);
    transparent_crc(p_1312->g_1240.sb, "p_1312->g_1240.sb", print_hash_value);
    transparent_crc(p_1312->g_1240.sc, "p_1312->g_1240.sc", print_hash_value);
    transparent_crc(p_1312->g_1240.sd, "p_1312->g_1240.sd", print_hash_value);
    transparent_crc(p_1312->g_1240.se, "p_1312->g_1240.se", print_hash_value);
    transparent_crc(p_1312->g_1240.sf, "p_1312->g_1240.sf", print_hash_value);
    transparent_crc(p_1312->g_1262.x, "p_1312->g_1262.x", print_hash_value);
    transparent_crc(p_1312->g_1262.y, "p_1312->g_1262.y", print_hash_value);
    transparent_crc(p_1312->g_1271.x, "p_1312->g_1271.x", print_hash_value);
    transparent_crc(p_1312->g_1271.y, "p_1312->g_1271.y", print_hash_value);
    transparent_crc(p_1312->g_1271.z, "p_1312->g_1271.z", print_hash_value);
    transparent_crc(p_1312->g_1271.w, "p_1312->g_1271.w", print_hash_value);
    transparent_crc(p_1312->v_collective, "p_1312->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 22; i++)
            transparent_crc(p_1312->g_special_values[i + 22 * get_linear_group_id()], "p_1312->g_special_values[i + 22 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 22; i++)
            transparent_crc(p_1312->l_special_values[i], "p_1312->l_special_values[i]", print_hash_value);
    transparent_crc(p_1312->l_comm_values[get_linear_local_id()], "p_1312->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1312->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()], "p_1312->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
