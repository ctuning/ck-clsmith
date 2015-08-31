// ---fake_divergence -g 1393,2,3 -l 1,1,1
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


// Seed: 101

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S1 {
    volatile VECTOR(int8_t, 2) g_4;
    VECTOR(uint8_t, 8) g_11;
    uint8_t g_43[9][6];
    VECTOR(int64_t, 16) g_78;
    VECTOR(int8_t, 4) g_84;
    VECTOR(int8_t, 2) g_85;
    uint8_t *g_87;
    uint8_t **g_86[5];
    uint8_t **g_91;
    uint8_t g_101;
    int16_t g_108;
    int32_t g_111;
    VECTOR(uint16_t, 2) g_114;
    VECTOR(int8_t, 16) g_126;
    int64_t g_146;
    VECTOR(int32_t, 4) g_167;
    volatile int16_t g_189;
    volatile int16_t *g_188;
    volatile int16_t **g_187[8][8];
    VECTOR(int16_t, 2) g_241;
    VECTOR(int16_t, 4) g_243;
    VECTOR(int8_t, 2) g_251;
    uint64_t g_289;
    int32_t *g_304;
    int32_t * volatile *g_303;
    VECTOR(int32_t, 16) g_305;
    VECTOR(int16_t, 4) g_336;
    VECTOR(int16_t, 8) g_337;
    VECTOR(int16_t, 4) g_338;
    uint16_t g_342;
    VECTOR(uint16_t, 16) g_398;
    uint64_t g_421;
    uint64_t *g_420;
    uint64_t **g_419;
    VECTOR(int16_t, 4) g_436;
    VECTOR(int32_t, 16) g_450;
    int64_t g_457;
    uint8_t ***g_474;
    uint8_t ****g_473;
    uint16_t *g_491;
    uint32_t g_526;
    int64_t g_545[10][8];
    VECTOR(int8_t, 4) g_560;
    VECTOR(int32_t, 8) g_565;
    VECTOR(int32_t, 2) g_699;
    VECTOR(int32_t, 4) g_708;
    VECTOR(int32_t, 8) g_743;
    VECTOR(int32_t, 2) g_744;
    VECTOR(int32_t, 8) g_745;
    uint64_t g_822;
    VECTOR(uint32_t, 16) g_846;
    uint16_t **g_887[6][8][5];
    uint8_t g_928;
    VECTOR(uint8_t, 4) g_949;
    VECTOR(uint16_t, 8) g_954;
    int8_t g_959;
    VECTOR(uint64_t, 2) g_987;
    VECTOR(uint64_t, 16) g_989;
    VECTOR(int64_t, 4) g_1008;
    VECTOR(uint64_t, 8) g_1031;
    int32_t g_1086;
    uint64_t g_1110;
    int32_t g_1124[2][1];
    int32_t g_1125;
    volatile int64_t g_1130;
    volatile int64_t *g_1129;
    volatile int64_t **g_1128;
    VECTOR(int64_t, 16) g_1151;
    uint32_t g_1178;
    VECTOR(uint64_t, 2) g_1190;
    volatile VECTOR(uint16_t, 8) g_1260;
    volatile VECTOR(uint16_t, 16) g_1266;
    volatile VECTOR(uint16_t, 4) g_1271;
    VECTOR(uint16_t, 8) g_1276;
    VECTOR(uint16_t, 16) g_1278;
    VECTOR(int8_t, 2) g_1287;
    VECTOR(int8_t, 2) g_1308;
    VECTOR(int16_t, 4) g_1314;
    int32_t g_1323;
    volatile int64_t g_1343;
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
uint64_t  func_1(struct S1 * p_1367);
VECTOR(uint8_t, 16)  func_12(uint32_t  p_13, int64_t  p_14, int64_t  p_15, uint8_t  p_16, struct S1 * p_1367);
int8_t  func_26(uint32_t  p_27, uint32_t  p_28, int64_t  p_29, struct S1 * p_1367);
uint32_t  func_36(int64_t  p_37, uint32_t  p_38, int32_t  p_39, struct S1 * p_1367);
int8_t  func_45(uint32_t  p_46, struct S1 * p_1367);
int64_t  func_50(uint8_t * p_51, uint8_t * p_52, int64_t  p_53, uint8_t * p_54, struct S1 * p_1367);
uint8_t * func_55(uint8_t * p_56, uint32_t  p_57, uint8_t * p_58, int16_t  p_59, int32_t  p_60, struct S1 * p_1367);
uint32_t  func_62(uint8_t * p_63, struct S1 * p_1367);
uint8_t * func_64(int64_t  p_65, uint8_t * p_66, uint64_t  p_67, uint64_t  p_68, struct S1 * p_1367);
uint8_t * func_69(int8_t  p_70, uint8_t * p_71, struct S1 * p_1367);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1367->g_1125 p_1367->g_114 p_1367->g_1124 p_1367->g_303 p_1367->g_304 p_1367->g_111 p_1367->g_1178 p_1367->g_545 p_1367->g_989 p_1367->g_1343 p_1367->g_108 p_1367->g_1260 p_1367->g_1031 p_1367->g_146 p_1367->g_342 p_1367->g_421 p_1367->g_419 p_1367->g_420
 * writes: p_1367->g_1125 p_1367->g_928 p_1367->g_959 p_1367->g_111 p_1367->g_146 p_1367->g_342 p_1367->g_421 p_1367->g_304
 */
uint64_t  func_1(struct S1 * p_1367)
{ /* block id: 4 */
    VECTOR(int8_t, 8) l_21 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
    uint32_t *l_1160 = &p_1367->g_526;
    int32_t l_1161[4][2] = {{0x63E1250EL,0x63E1250EL},{0x63E1250EL,0x63E1250EL},{0x63E1250EL,0x63E1250EL},{0x63E1250EL,0x63E1250EL}};
    uint32_t *l_1177 = &p_1367->g_1178;
    int32_t *l_1242[1][7] = {{&p_1367->g_1125,&p_1367->g_1125,&p_1367->g_1125,&p_1367->g_1125,&p_1367->g_1125,&p_1367->g_1125,&p_1367->g_1125}};
    uint16_t *l_1251 = &p_1367->g_342;
    int8_t *l_1265[2];
    int8_t **l_1264 = &l_1265[1];
    VECTOR(uint16_t, 4) l_1277 = (VECTOR(uint16_t, 4))(0x3118L, (VECTOR(uint16_t, 2))(0x3118L, 0x3516L), 0x3516L);
    uint8_t l_1317[1];
    int64_t l_1322[8][8];
    uint16_t **l_1334 = &l_1251;
    uint32_t l_1340 = 4294967291UL;
    uint32_t l_1364 = 0x92A20C70L;
    int i, j;
    for (i = 0; i < 2; i++)
        l_1265[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_1317[i] = 255UL;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
            l_1322[i][j] = 0x1EFDC4EB0F2D87CAL;
    }
lbl_1344:
    p_1367->g_1125 |= ((((!(safe_div_func_uint8_t_u_u((((VECTOR(int8_t, 2))(p_1367->g_4.yy)).even ^ (((+(safe_lshift_func_int16_t_s_u(1L, 9))) <= ((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(247UL, 7UL)).xyyxyyyxxxyxxyyy * ((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(p_1367->g_11.s46)).xyyx + ((VECTOR(uint8_t, 16))((+((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(func_12(((*l_1177) = (safe_div_func_int8_t_s_s(((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 2))(0L, 0L)).yyyx, ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 2))(l_21.s64)).yxxx, (int8_t)0x50L, (int8_t)(safe_lshift_func_int16_t_s_s(((65535UL > (!l_21.s2)) == (safe_mul_func_int8_t_s_s(func_26(p_1367->g_11.s5, p_1367->g_11.s1, ((-5L) & ((safe_rshift_func_int8_t_s_s(0x61L, 5)) >= (((*l_1160) = func_36((l_21.s6 , 0x5994AD4DB1D70F3FL), p_1367->g_11.s2, l_21.s2, p_1367)) < l_1161[1][1]))), p_1367), l_21.s3))), l_21.s4))))).wzywwyywyyyxxxzx | ((VECTOR(int8_t, 16))(0x48L))))).s38ee))).even, ((VECTOR(int8_t, 2))((-5L)))))).yyyyyxxx, ((VECTOR(int8_t, 8))(0L)), ((VECTOR(int8_t, 8))(0x17L))))).s0, 0)) > l_21.s0), 1UL))), p_1367->g_1031.s6, l_21.s6, l_21.s4, p_1367))).s82e4 | ((VECTOR(uint8_t, 4))(0x22L))))), ((VECTOR(uint8_t, 4))(255UL))))).odd, ((VECTOR(uint8_t, 2))(3UL))))), 0xE4L, 0xFDL)).xzwzzzzwzwxwxyyy))).s21fd))), ((VECTOR(uint8_t, 4))(5UL))))).zwxxyxwxxzyyxxzx))).s8 , l_1161[1][1]) <= 0x6E11C8D17ACB21EAL)) ^ l_1161[1][1])), l_21.s2))) & 0xA59FL) < 0x3DL) != l_1161[1][1]);
    for (p_1367->g_928 = (-8); (p_1367->g_928 == 47); p_1367->g_928 = safe_add_func_int64_t_s_s(p_1367->g_928, 9))
    { /* block id: 457 */
        VECTOR(int16_t, 8) l_1262 = (VECTOR(int16_t, 8))(0x5725L, (VECTOR(int16_t, 4))(0x5725L, (VECTOR(int16_t, 2))(0x5725L, 0x3410L), 0x3410L), 0x3410L, 0x5725L, 0x3410L);
        VECTOR(int16_t, 16) l_1263 = (VECTOR(int16_t, 16))(0x30B7L, (VECTOR(int16_t, 4))(0x30B7L, (VECTOR(int16_t, 2))(0x30B7L, 2L), 2L), 2L, 0x30B7L, 2L, (VECTOR(int16_t, 2))(0x30B7L, 2L), (VECTOR(int16_t, 2))(0x30B7L, 2L), 0x30B7L, 2L, 0x30B7L, 2L);
        int64_t *l_1316 = (void*)0;
        int64_t **l_1315 = &l_1316;
        int64_t l_1318 = 0x2A7DDF0F368172B3L;
        int32_t l_1325 = 1L;
        VECTOR(int16_t, 8) l_1326 = (VECTOR(int16_t, 8))(0x7E4AL, (VECTOR(int16_t, 4))(0x7E4AL, (VECTOR(int16_t, 2))(0x7E4AL, 0L), 0L), 0L, 0x7E4AL, 0L);
        uint16_t **l_1332 = &p_1367->g_491;
        int32_t l_1339 = 0x417C49E9L;
        int i;
        for (p_1367->g_959 = 0; (p_1367->g_959 != 15); p_1367->g_959 = safe_add_func_int16_t_s_s(p_1367->g_959, 3))
        { /* block id: 460 */
            VECTOR(int16_t, 2) l_1261 = (VECTOR(int16_t, 2))(0x6E8EL, (-6L));
            int64_t *l_1309 = (void*)0;
            int64_t *l_1310 = (void*)0;
            int64_t *l_1311 = &p_1367->g_146;
            uint32_t *l_1319 = (void*)0;
            uint32_t *l_1320 = (void*)0;
            uint32_t *l_1321 = (void*)0;
            int16_t *l_1324[10][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
            int32_t l_1335[1];
            int32_t l_1337 = (-8L);
            int32_t l_1338[6] = {1L,1L,1L,1L,1L,1L};
            int i, j;
            for (i = 0; i < 1; i++)
                l_1335[i] = 0L;
            if (((safe_lshift_func_int8_t_s_s((((((safe_mod_func_uint8_t_u_u(((void*)0 == l_1251), p_1367->g_114.x)) , (p_1367->g_1124[1][0] > (safe_div_func_int16_t_s_s((l_1325 = (safe_mul_func_int16_t_s_s((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),VECTOR(uint16_t, 2),((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(p_1367->g_1260.s2210)) + ((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(l_1261.xxyx)).zyzxwwwzzwzzxywz != ((VECTOR(int16_t, 2))(l_1262.s44)).xxxyxxxxxxxyyyyx))).hi, ((VECTOR(int16_t, 16))(l_1263.s71b55b0c080976b9)).hi))).even))).lo, ((VECTOR(uint16_t, 8))(1UL, ((void*)0 != l_1264), 4UL, ((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 4))(0x096AL, 1UL, 0x55ACL, 0x82B6L)).hi, ((VECTOR(uint16_t, 4))(p_1367->g_1266.s840e)).even))), ((VECTOR(uint16_t, 2))(65535UL, 0x8D3FL)), 65532UL)).s76, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(p_1367->g_1271.wywywxwz)) + ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 16))(p_1367->g_1276.s5716142451276465)).lo, ((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 16))(l_1277.wzwwzyzzzwzxyywz)).s31, ((VECTOR(uint16_t, 4))(0xF3BFL, ((VECTOR(uint16_t, 2))(p_1367->g_1278.s44)), 8UL)).even))).yxyyxyxx, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(rhadd(((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 4))(((p_1367->g_1323 = ((1UL | ((safe_lshift_func_uint16_t_u_u((((((*l_1160)++) < (p_1367->g_846.s8 &= (safe_lshift_func_uint8_t_u_s(((safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(0x02L, ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(p_1367->g_1287.xyxyyyyy)).s01, ((VECTOR(int8_t, 16))((safe_mul_func_int16_t_s_s((safe_div_func_int64_t_s_s(((safe_mul_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u((safe_sub_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((!(safe_lshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_s((safe_mod_func_uint64_t_u_u(FAKE_DIVERGE(p_1367->global_2_offset, get_global_id(2), 10), (p_1367->g_1008.x = ((*l_1311) = (safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 8))(p_1367->g_1308.yxyyyyyy)).s6626575551457706))).s6, 7)))))), (~(safe_div_func_int64_t_s_s((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))((-3L), 0x48L)).xyxyyxyyxyxxxyxy && ((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))((-1L), (-1L))).xyxxxyxxyxyxxxxy < ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(((((VECTOR(int16_t, 8))(p_1367->g_1314.wxxwxywz)).s2 > ((void*)0 != l_1315)) | 0x14L), 0x2CL, 0x52L, 0x35L)).zzwxyzxzxywxzxxz || ((VECTOR(int8_t, 16))(0x50L))))).sd9a9 == ((VECTOR(int8_t, 4))(0x71L))))).wyxywzzzzywwwyyx))), ((VECTOR(int8_t, 16))(1L))))).s2648, ((VECTOR(int8_t, 4))(0x27L))))).xyyxyxxxxxxyxxyz))).s5 >= l_1317[0]), 0x4C24EAC188CBCA9FL))))), 6))), 4)), 0x40L)), GROUP_DIVERGE(2, 1))), l_1262.s7)) != l_1262.s4), 0x06F374D0B68505FEL)), 65533UL)), 0x07L, 0x39L, p_1367->g_1008.z, p_1367->g_1190.x, 1L, p_1367->g_167.x, ((VECTOR(int8_t, 4))(2L)), (-1L), 0x7BL, 0x45L, 0x5BL, 0x25L)).s39))), ((VECTOR(int8_t, 2))((-1L)))))), 0x3FL)).lo && ((VECTOR(int8_t, 2))((-3L)))))) && ((VECTOR(int8_t, 2))(0x17L))))).hi, l_1318)) <= l_1263.se), p_1367->g_241.x)))) , l_1318) , GROUP_DIVERGE(1, 1)), l_1322[4][5])) >= 0x5F6BL)) | l_1261.x)) != (**p_1367->g_303)), 65527UL, 65532UL, 0xC769L))))), ((VECTOR(uint16_t, 4))(65527UL))))), ((VECTOR(uint16_t, 4))(0x8F0AL))))).xyxxzzwwyxyxyyzw, ((VECTOR(uint16_t, 16))(0x0F24L)), ((VECTOR(uint16_t, 16))(0xB2D0L))))).even, ((VECTOR(uint16_t, 8))(0xEE4DL))))), ((VECTOR(uint16_t, 8))(65529UL)))).lo))) << ((VECTOR(uint16_t, 8))(16))))).odd))) + ((VECTOR(uint16_t, 4))(3UL))))).xzxxxzyx))).s22 * ((VECTOR(uint16_t, 2))(65534UL)))))))).yxxy, ((VECTOR(uint16_t, 4))(0x5F53L))))).xzyyyywzywwyyzxw * ((VECTOR(uint16_t, 16))(0xCAD0L))))).s6 , 0x7A4FL), l_1261.x))), GROUP_DIVERGE(0, 1))))) <= (**p_1367->g_303)) != GROUP_DIVERGE(0, 1)) >= p_1367->g_1178), p_1367->g_545[7][5])) <= p_1367->g_989.sb))
            { /* block id: 467 */
                int8_t l_1328 = 3L;
                uint16_t ***l_1329 = &p_1367->g_887[5][3][1];
                uint16_t ***l_1330 = (void*)0;
                uint16_t ***l_1331 = &p_1367->g_887[5][3][1];
                uint16_t ***l_1333[8][10] = {{&p_1367->g_887[1][2][1],&p_1367->g_887[4][2][1],&p_1367->g_887[5][3][1],&p_1367->g_887[2][0][0],(void*)0,&p_1367->g_887[5][3][1],&p_1367->g_887[4][1][3],(void*)0,&p_1367->g_887[4][1][3],&p_1367->g_887[5][3][1]},{&p_1367->g_887[1][2][1],&p_1367->g_887[4][2][1],&p_1367->g_887[5][3][1],&p_1367->g_887[2][0][0],(void*)0,&p_1367->g_887[5][3][1],&p_1367->g_887[4][1][3],(void*)0,&p_1367->g_887[4][1][3],&p_1367->g_887[5][3][1]},{&p_1367->g_887[1][2][1],&p_1367->g_887[4][2][1],&p_1367->g_887[5][3][1],&p_1367->g_887[2][0][0],(void*)0,&p_1367->g_887[5][3][1],&p_1367->g_887[4][1][3],(void*)0,&p_1367->g_887[4][1][3],&p_1367->g_887[5][3][1]},{&p_1367->g_887[1][2][1],&p_1367->g_887[4][2][1],&p_1367->g_887[5][3][1],&p_1367->g_887[2][0][0],(void*)0,&p_1367->g_887[5][3][1],&p_1367->g_887[4][1][3],(void*)0,&p_1367->g_887[4][1][3],&p_1367->g_887[5][3][1]},{&p_1367->g_887[1][2][1],&p_1367->g_887[4][2][1],&p_1367->g_887[5][3][1],&p_1367->g_887[2][0][0],(void*)0,&p_1367->g_887[5][3][1],&p_1367->g_887[4][1][3],(void*)0,&p_1367->g_887[4][1][3],&p_1367->g_887[5][3][1]},{&p_1367->g_887[1][2][1],&p_1367->g_887[4][2][1],&p_1367->g_887[5][3][1],&p_1367->g_887[2][0][0],(void*)0,&p_1367->g_887[5][3][1],&p_1367->g_887[4][1][3],(void*)0,&p_1367->g_887[4][1][3],&p_1367->g_887[5][3][1]},{&p_1367->g_887[1][2][1],&p_1367->g_887[4][2][1],&p_1367->g_887[5][3][1],&p_1367->g_887[2][0][0],(void*)0,&p_1367->g_887[5][3][1],&p_1367->g_887[4][1][3],(void*)0,&p_1367->g_887[4][1][3],&p_1367->g_887[5][3][1]},{&p_1367->g_887[1][2][1],&p_1367->g_887[4][2][1],&p_1367->g_887[5][3][1],&p_1367->g_887[2][0][0],(void*)0,&p_1367->g_887[5][3][1],&p_1367->g_887[4][1][3],(void*)0,&p_1367->g_887[4][1][3],&p_1367->g_887[5][3][1]}};
                int32_t l_1336 = 0x4C3D92AFL;
                int i, j;
                l_1336 |= (&p_1367->g_491 == (((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(l_1326.s02170734)).s53 && ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(((safe_unary_minus_func_int16_t_s((*p_1367->g_188))) != ((l_1325 |= (((FAKE_DIVERGE(p_1367->local_1_offset, get_local_id(1), 10) && p_1367->g_85.x) , (*p_1367->g_419)) == (((((l_1328 , (l_1334 = (l_1332 = &p_1367->g_491))) != &l_1251) > (~((((((**p_1367->g_303) ^= (0x2BL < l_1263.s5)) || 0xD285CB47L) | l_1263.s8) >= GROUP_DIVERGE(2, 1)) , (*p_1367->g_87)))) == 0x9B4BCB58B1612D34L) , (void*)0))) ^ l_1335[0])), 0x454DL, (-1L), 0x51DCL)).xxwxyyyw > ((VECTOR(int16_t, 8))(0x14DDL))))).s64))).even , &p_1367->g_491));
            }
            else
            { /* block id: 473 */
                l_1340--;
                (**p_1367->g_303) ^= p_1367->g_1343;
                if (p_1367->g_108)
                    goto lbl_1344;
            }
        }
        for (l_1318 = (-25); (l_1318 != 11); l_1318++)
        { /* block id: 481 */
            int64_t *l_1351 = (void*)0;
            int64_t *l_1352 = (void*)0;
            int64_t *l_1353 = &l_1322[1][0];
            uint16_t ***l_1358[3];
            int64_t *l_1359 = (void*)0;
            int64_t *l_1360 = (void*)0;
            int64_t *l_1361 = &p_1367->g_146;
            int i;
            for (i = 0; i < 3; i++)
                l_1358[i] = &l_1332;
            if ((*p_1367->g_304))
                break;
            (**p_1367->g_303) = (safe_lshift_func_uint16_t_u_u(((*l_1251) &= ((safe_div_func_int64_t_s_s(((*l_1353) = 0x10D900F7EDA87997L), ((*l_1361) ^= (safe_mul_func_int8_t_s_s(p_1367->g_1260.s1, ((VECTOR(int8_t, 8))((safe_rshift_func_int16_t_s_s(p_1367->g_1031.s3, 6)), 0x7EL, ((VECTOR(int8_t, 2))(0x62L, 8L)), 0L, (l_1358[1] == l_1358[2]), 0x3CL, 8L)).s0))))) , 0x3F63L)), (l_1325 = l_1262.s5)));
        }
    }
    for (p_1367->g_421 = 1; (p_1367->g_421 <= 53); ++p_1367->g_421)
    { /* block id: 492 */
        (*p_1367->g_303) = l_1242[0][6];
    }
    l_1364--;
    return (**p_1367->g_419);
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_421 p_1367->g_1178 p_1367->g_419 p_1367->g_420 p_1367->g_1190 p_1367->g_545 p_1367->g_987 p_1367->g_708 p_1367->g_303 p_1367->g_304 p_1367->g_928 p_1367->g_111
 * writes: p_1367->g_421 p_1367->g_526 p_1367->g_111 p_1367->g_745 p_1367->g_928
 */
VECTOR(uint8_t, 16)  func_12(uint32_t  p_13, int64_t  p_14, int64_t  p_15, uint8_t  p_16, struct S1 * p_1367)
{ /* block id: 431 */
    int32_t l_1204[8];
    int8_t l_1216 = 1L;
    int32_t l_1224[1][9] = {{9L,9L,9L,9L,9L,9L,9L,9L,9L}};
    int8_t l_1234 = 0L;
    VECTOR(uint8_t, 2) l_1241 = (VECTOR(uint8_t, 2))(0x55L, 0xF1L);
    int i, j;
    for (i = 0; i < 8; i++)
        l_1204[i] = 0x54923B5DL;
    for (p_1367->g_421 = (-15); (p_1367->g_421 != 49); p_1367->g_421 = safe_add_func_uint32_t_u_u(p_1367->g_421, 2))
    { /* block id: 434 */
        int32_t *l_1183 = (void*)0;
        VECTOR(uint64_t, 8) l_1194 = (VECTOR(uint64_t, 8))(8UL, (VECTOR(uint64_t, 4))(8UL, (VECTOR(uint64_t, 2))(8UL, 9UL), 9UL), 9UL, 8UL, 9UL);
        int32_t l_1215 = 0x3DC12081L;
        int32_t l_1231 = 1L;
        int32_t l_1232 = 0L;
        int32_t l_1233[9] = {0x741E338EL,0x741E338EL,0x741E338EL,0x741E338EL,0x741E338EL,0x741E338EL,0x741E338EL,0x741E338EL,0x741E338EL};
        int16_t l_1235[7] = {0x17B8L,0x17B8L,0x17B8L,0x17B8L,0x17B8L,0x17B8L,0x17B8L};
        int32_t l_1236 = (-8L);
        VECTOR(uint32_t, 8) l_1237 = (VECTOR(uint32_t, 8))(4UL, (VECTOR(uint32_t, 4))(4UL, (VECTOR(uint32_t, 2))(4UL, 0UL), 0UL), 0UL, 4UL, 0UL);
        int i;
        if ((p_1367->g_1178 && FAKE_DIVERGE(p_1367->local_0_offset, get_local_id(0), 10)))
        { /* block id: 435 */
            int32_t **l_1181 = (void*)0;
            int32_t **l_1182[3];
            int i;
            for (i = 0; i < 3; i++)
                l_1182[i] = (void*)0;
            l_1183 = (void*)0;
        }
        else
        { /* block id: 437 */
            uint32_t l_1186 = 1UL;
            VECTOR(uint64_t, 16) l_1193 = (VECTOR(uint64_t, 16))(0xBA74BC5547F74E6BL, (VECTOR(uint64_t, 4))(0xBA74BC5547F74E6BL, (VECTOR(uint64_t, 2))(0xBA74BC5547F74E6BL, 0UL), 0UL), 0UL, 0xBA74BC5547F74E6BL, 0UL, (VECTOR(uint64_t, 2))(0xBA74BC5547F74E6BL, 0UL), (VECTOR(uint64_t, 2))(0xBA74BC5547F74E6BL, 0UL), 0xBA74BC5547F74E6BL, 0UL, 0xBA74BC5547F74E6BL, 0UL);
            VECTOR(uint32_t, 2) l_1197 = (VECTOR(uint32_t, 2))(0UL, 1UL);
            uint32_t *l_1198 = &p_1367->g_526;
            int8_t *l_1203[1];
            uint64_t *l_1217 = (void*)0;
            uint64_t *l_1218 = (void*)0;
            uint64_t *l_1219 = (void*)0;
            uint64_t *l_1220 = (void*)0;
            uint64_t *l_1221 = (void*)0;
            uint64_t *l_1222 = (void*)0;
            uint64_t *l_1223[2][1][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            int32_t l_1230[10] = {(-7L),0x4FDEE0A5L,1L,0x4FDEE0A5L,(-7L),(-7L),0x4FDEE0A5L,1L,0x4FDEE0A5L,(-7L)};
            int32_t **l_1240 = &l_1183;
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_1203[i] = (void*)0;
            p_1367->g_745.s0 = ((**p_1367->g_419) , ((**p_1367->g_303) = (safe_rshift_func_uint8_t_u_s((((l_1186 == (safe_lshift_func_uint8_t_u_s((((safe_unary_minus_func_uint64_t_u((p_15 != p_16))) && (l_1224[0][3] = ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_1367->g_1190.yy)).even, ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))(l_1193.s4100)).even << ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_1194.s01622135)), (safe_div_func_uint32_t_u_u((((((VECTOR(uint32_t, 4))(l_1197.xyxx)).z > ((*l_1198) = p_13)) & (safe_mod_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s((l_1204[6] = ((p_1367->g_545[7][5] != p_16) <= p_1367->g_987.y)), 0)), (safe_sub_func_int64_t_s_s((safe_lshift_func_uint16_t_u_s((safe_lshift_func_int16_t_s_s(((safe_lshift_func_int16_t_s_s((safe_add_func_int32_t_s_s(l_1215, p_16)), 13)) > l_1216), 14)), 12)), 0x4477309F61312C2AL))))) <= l_1197.y), FAKE_DIVERGE(p_1367->global_0_offset, get_global_id(0), 10))), p_1367->g_708.y, 18446744073709551608UL, 18446744073709551606UL, 18446744073709551606UL, ((VECTOR(uint64_t, 2))(0xD371ADDA41A058D4L)), 18446744073709551608UL)).s66))), 1UL)).z)) & 0L), 6))) < 18446744073709551610UL) && GROUP_DIVERGE(2, 1)), l_1216))));
            for (p_1367->g_928 = 2; (p_1367->g_928 >= 26); p_1367->g_928 = safe_add_func_int8_t_s_s(p_1367->g_928, 1))
            { /* block id: 445 */
                int32_t *l_1227 = &p_1367->g_1124[1][0];
                int32_t *l_1228 = (void*)0;
                int32_t *l_1229[4][10];
                int i, j;
                for (i = 0; i < 4; i++)
                {
                    for (j = 0; j < 10; j++)
                        l_1229[i][j] = (void*)0;
                }
                if (l_1224[0][6])
                    break;
                l_1237.s0++;
            }
            if ((**p_1367->g_303))
                continue;
            (*l_1240) = &l_1204[6];
        }
    }
    return l_1241.xxyyyxyxyyyyyyyx;
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_87 p_1367->g_43 p_1367->g_304 p_1367->g_111 p_1367->g_303
 * writes: p_1367->g_43 p_1367->g_111
 */
int8_t  func_26(uint32_t  p_27, uint32_t  p_28, int64_t  p_29, struct S1 * p_1367)
{ /* block id: 423 */
    uint64_t l_1164 = 18446744073709551615UL;
    uint8_t *l_1169 = (void*)0;
    uint8_t **l_1170[2][4][8] = {{{(void*)0,&l_1169,&p_1367->g_87,&p_1367->g_87,&l_1169,&l_1169,(void*)0,&p_1367->g_87},{(void*)0,&l_1169,&p_1367->g_87,&p_1367->g_87,&l_1169,&l_1169,(void*)0,&p_1367->g_87},{(void*)0,&l_1169,&p_1367->g_87,&p_1367->g_87,&l_1169,&l_1169,(void*)0,&p_1367->g_87},{(void*)0,&l_1169,&p_1367->g_87,&p_1367->g_87,&l_1169,&l_1169,(void*)0,&p_1367->g_87}},{{(void*)0,&l_1169,&p_1367->g_87,&p_1367->g_87,&l_1169,&l_1169,(void*)0,&p_1367->g_87},{(void*)0,&l_1169,&p_1367->g_87,&p_1367->g_87,&l_1169,&l_1169,(void*)0,&p_1367->g_87},{(void*)0,&l_1169,&p_1367->g_87,&p_1367->g_87,&l_1169,&l_1169,(void*)0,&p_1367->g_87},{(void*)0,&l_1169,&p_1367->g_87,&p_1367->g_87,&l_1169,&l_1169,(void*)0,&p_1367->g_87}}};
    uint8_t *l_1171 = &p_1367->g_928;
    int32_t l_1176 = 0x18F69C56L;
    int i, j, k;
    (*p_1367->g_304) &= (safe_mul_func_uint16_t_u_u(l_1164, (safe_rshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(p_29, (l_1164 ^ (0x05L >= ((VECTOR(uint8_t, 4))(((l_1169 == (l_1171 = (void*)0)) >= (l_1176 = (safe_lshift_func_uint8_t_u_s((--(*p_1367->g_87)), 5)))), 0UL, 0x37L, 0x86L)).y)))), 9))));
    (**p_1367->g_303) |= p_27;
    return p_27;
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_43 p_1367->g_11 p_1367->g_85 p_1367->g_111 p_1367->g_126 p_1367->g_108 p_1367->g_114 p_1367->g_84 p_1367->g_87 p_1367->g_146 p_1367->g_78 p_1367->g_187 p_1367->g_303 p_1367->g_251 p_1367->g_304 p_1367->g_241 p_1367->g_289 p_1367->g_337 p_1367->g_305 p_1367->g_473 p_1367->g_436 p_1367->g_243 p_1367->g_342 p_1367->g_526 p_1367->g_450 p_1367->g_565 p_1367->g_743 p_1367->g_928 p_1367->g_846 p_1367->g_744 p_1367->g_457 p_1367->g_421 p_1367->g_745 p_1367->g_949 p_1367->g_954 p_1367->g_959 p_1367->g_987 p_1367->g_989 p_1367->g_1008 p_1367->g_1031 p_1367->g_336 p_1367->g_699 p_1367->g_1086 p_1367->g_1110 p_1367->g_1124 p_1367->g_1128 p_1367->g_338 p_1367->g_1151
 * writes: p_1367->g_111 p_1367->g_146 p_1367->g_85 p_1367->g_114 p_1367->g_167 p_1367->g_101 p_1367->g_108 p_1367->g_187 p_1367->g_304 p_1367->g_457 p_1367->g_473 p_1367->g_491 p_1367->g_289 p_1367->g_43 p_1367->g_241 p_1367->g_545 p_1367->g_342 p_1367->g_305 p_1367->g_474 p_1367->g_526 p_1367->g_822 p_1367->g_887 p_1367->g_743 p_1367->g_450 p_1367->g_928 p_1367->g_846 p_1367->g_560 p_1367->g_1086 p_1367->g_959 p_1367->g_1110 p_1367->g_1124
 */
uint32_t  func_36(int64_t  p_37, uint32_t  p_38, int32_t  p_39, struct S1 * p_1367)
{ /* block id: 5 */
    uint8_t *l_42[3];
    int32_t l_44[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    int32_t l_47 = 0x66FA41D4L;
    uint32_t *l_935[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(uint8_t, 16) l_940 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 254UL), 254UL), 254UL, 0UL, 254UL, (VECTOR(uint8_t, 2))(0UL, 254UL), (VECTOR(uint8_t, 2))(0UL, 254UL), 0UL, 254UL, 0UL, 254UL);
    uint64_t **l_942 = &p_1367->g_420;
    int64_t l_960 = 0x18232ADC5F11417BL;
    int8_t l_963 = 0x21L;
    uint64_t *l_969 = &p_1367->g_289;
    uint16_t *l_971 = (void*)0;
    VECTOR(int32_t, 4) l_972 = (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 0x100DA5A1L), 0x100DA5A1L);
    VECTOR(int32_t, 16) l_973 = (VECTOR(int32_t, 16))(0x4F55794EL, (VECTOR(int32_t, 4))(0x4F55794EL, (VECTOR(int32_t, 2))(0x4F55794EL, (-1L)), (-1L)), (-1L), 0x4F55794EL, (-1L), (VECTOR(int32_t, 2))(0x4F55794EL, (-1L)), (VECTOR(int32_t, 2))(0x4F55794EL, (-1L)), 0x4F55794EL, (-1L), 0x4F55794EL, (-1L));
    VECTOR(uint64_t, 4) l_979 = (VECTOR(uint64_t, 4))(0x4778F48AA019298FL, (VECTOR(uint64_t, 2))(0x4778F48AA019298FL, 18446744073709551609UL), 18446744073709551609UL);
    VECTOR(uint64_t, 8) l_986 = (VECTOR(uint64_t, 8))(4UL, (VECTOR(uint64_t, 4))(4UL, (VECTOR(uint64_t, 2))(4UL, 1UL), 1UL), 1UL, 4UL, 1UL);
    VECTOR(uint64_t, 2) l_988 = (VECTOR(uint64_t, 2))(0x28B40D81381D4454L, 0x596A7F32779E776EL);
    VECTOR(uint64_t, 4) l_1024 = (VECTOR(uint64_t, 4))(0xA314A86A1A844194L, (VECTOR(uint64_t, 2))(0xA314A86A1A844194L, 0xA2D7E4687662D75CL), 0xA2D7E4687662D75CL);
    VECTOR(uint8_t, 2) l_1040 = (VECTOR(uint8_t, 2))(0x8EL, 255UL);
    VECTOR(uint32_t, 8) l_1064 = (VECTOR(uint32_t, 8))(0x5C7396FBL, (VECTOR(uint32_t, 4))(0x5C7396FBL, (VECTOR(uint32_t, 2))(0x5C7396FBL, 0xC5B955FBL), 0xC5B955FBL), 0xC5B955FBL, 0x5C7396FBL, 0xC5B955FBL);
    int32_t l_1100 = 1L;
    VECTOR(int8_t, 4) l_1113 = (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 2L), 2L);
    int32_t **l_1158 = (void*)0;
    int32_t **l_1159 = &p_1367->g_304;
    int i;
    for (i = 0; i < 3; i++)
        l_42[i] = &p_1367->g_43[2][4];
    if (((safe_mod_func_uint16_t_u_u(((l_44[1] = (p_39 & GROUP_DIVERGE(1, 1))) & func_45((0x16L <= (l_47 = (p_37 ^ ((l_47 ^ p_37) ^ GROUP_DIVERGE(2, 1))))), p_1367)), ((safe_sub_func_uint8_t_u_u(p_39, 0x79L)) | ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))(abs_diff(((VECTOR(uint32_t, 16))((p_1367->g_846.sa |= p_39), 0xCA1FA7D4L, ((VECTOR(uint32_t, 8))(0x051D23AAL)), 0xB0F41C3BL, ((VECTOR(uint32_t, 4))(3UL)), 0xB7E11805L)), ((VECTOR(uint32_t, 16))(9UL))))).s4889 * ((VECTOR(uint32_t, 4))(1UL))))).x))) ^ p_1367->g_744.x))
    { /* block id: 361 */
        VECTOR(uint8_t, 16) l_941 = (VECTOR(uint8_t, 16))(7UL, (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 1UL), 1UL), 1UL, 7UL, 1UL, (VECTOR(uint8_t, 2))(7UL, 1UL), (VECTOR(uint8_t, 2))(7UL, 1UL), 7UL, 1UL, 7UL, 1UL);
        int16_t *l_945 = &p_1367->g_108;
        int32_t l_946 = 0x752167AAL;
        VECTOR(uint8_t, 8) l_950 = (VECTOR(uint8_t, 8))(7UL, (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 0UL), 0UL), 0UL, 7UL, 0UL);
        VECTOR(uint16_t, 16) l_951 = (VECTOR(uint16_t, 16))(0x17ECL, (VECTOR(uint16_t, 4))(0x17ECL, (VECTOR(uint16_t, 2))(0x17ECL, 1UL), 1UL), 1UL, 0x17ECL, 1UL, (VECTOR(uint16_t, 2))(0x17ECL, 1UL), (VECTOR(uint16_t, 2))(0x17ECL, 1UL), 0x17ECL, 1UL, 0x17ECL, 1UL);
        int32_t l_957 = 0x061CDD26L;
        int8_t l_958 = (-8L);
        uint32_t l_961[7][10] = {{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}};
        int32_t **l_962 = &p_1367->g_304;
        int64_t *l_968 = &l_960;
        uint16_t **l_970 = (void*)0;
        int i, j;
        (*p_1367->g_304) ^= (safe_sub_func_uint64_t_u_u(((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 2))(l_940.s4b)), ((VECTOR(uint8_t, 4))(l_941.sacd7)).odd))).odd, GROUP_DIVERGE(2, 1))) <= (((void*)0 != l_942) == (((safe_lshift_func_int16_t_s_u(((*l_945) = p_1367->g_457), ((VECTOR(uint16_t, 8))((p_1367->g_421 ^ p_1367->g_745.s4), ((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 16))(l_940.s2, 1UL, ((VECTOR(uint16_t, 4))((l_946 = p_39), 0x4FB4L, 65535UL, 0x4890L)), 0x1554L, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),VECTOR(uint16_t, 4),((VECTOR(uint16_t, 2))(0xAE98L, 9UL)).xyxy, ((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 8))(p_1367->g_949.xzzxxwxy)).lo, ((VECTOR(uint8_t, 16))(l_950.s6354457431560732)).sf092))), ((VECTOR(uint16_t, 2))(l_951.sc7)).yyxy))).hi ^ ((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 4))(p_1367->g_954.s5261)).wwywyzywxxyxzzyy, ((VECTOR(uint16_t, 8))((safe_add_func_uint8_t_u_u(l_957, ((void*)0 != &p_1367->g_474))), ((VECTOR(uint16_t, 2))(0xF52BL)), p_38, GROUP_DIVERGE(0, 1), 1UL, 0x0C78L, 65535UL)).s4613364034526667))).s2b + ((VECTOR(uint16_t, 2))(0xECADL))))).yxxyyyxx & ((VECTOR(uint16_t, 8))(0UL))))).lo))).odd))), ((VECTOR(uint16_t, 4))(2UL)), l_958, l_941.s5, 0x7104L, 0UL, 0UL, p_1367->g_959, l_960, l_961[5][8], 0x77C0L, 1UL)).sffcd << ((VECTOR(uint16_t, 4))(16))))), 0xA3EBL, 0x366FL, 65534UL, 65535UL, 0xA39CL)).s2e8a, ((VECTOR(uint16_t, 4))(0UL)), ((VECTOR(uint16_t, 4))(0x47DEL))))), ((VECTOR(uint16_t, 2))(4UL)), 0x176FL)).s3)) || l_44[3]) , p_37))), l_44[1]));
        (*l_962) = &l_47;
        (*p_1367->g_304) = ((!(((*l_968) = ((p_1367->g_526--) | (safe_lshift_func_uint8_t_u_s((l_44[7] = l_940.s9), 7)))) > ((l_971 = (((void*)0 == l_969) , l_945)) != (void*)0))) || 0x53D43B7BA9595FA0L);
    }
    else
    { /* block id: 371 */
        VECTOR(uint64_t, 8) l_978 = (VECTOR(uint64_t, 8))(9UL, (VECTOR(uint64_t, 4))(9UL, (VECTOR(uint64_t, 2))(9UL, 4UL), 4UL), 4UL, 9UL, 4UL);
        VECTOR(int8_t, 16) l_1012 = (VECTOR(int8_t, 16))(0x31L, (VECTOR(int8_t, 4))(0x31L, (VECTOR(int8_t, 2))(0x31L, 0x7BL), 0x7BL), 0x7BL, 0x31L, 0x7BL, (VECTOR(int8_t, 2))(0x31L, 0x7BL), (VECTOR(int8_t, 2))(0x31L, 0x7BL), 0x31L, 0x7BL, 0x31L, 0x7BL);
        VECTOR(uint32_t, 4) l_1059 = (VECTOR(uint32_t, 4))(0x48F761AFL, (VECTOR(uint32_t, 2))(0x48F761AFL, 0xB493EC0BL), 0xB493EC0BL);
        VECTOR(uint32_t, 8) l_1072 = (VECTOR(uint32_t, 8))(0x216BE849L, (VECTOR(uint32_t, 4))(0x216BE849L, (VECTOR(uint32_t, 2))(0x216BE849L, 0x0ADBC455L), 0x0ADBC455L), 0x0ADBC455L, 0x216BE849L, 0x0ADBC455L);
        int32_t l_1077 = 0x4DF59239L;
        int32_t l_1098 = 0x124C27BDL;
        int32_t l_1099[2][9] = {{1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L},{1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L}};
        uint16_t l_1102 = 6UL;
        VECTOR(int8_t, 2) l_1114 = (VECTOR(int8_t, 2))(0x77L, (-1L));
        VECTOR(int64_t, 2) l_1152 = (VECTOR(int64_t, 2))(6L, 0x125771080D833F9DL);
        int i, j;
lbl_1157:
        (**p_1367->g_303) = ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 8))((-3L), ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(l_972.xz)) == ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(7L, 0x42573BF5L)).xyyyyxxy, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x46B84877L, 0x5256BF50L)), 1L, 1L)).even, ((VECTOR(int32_t, 2))((-1L), 0x6D1E5198L)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_973.s80d1)), (safe_add_func_int8_t_s_s(((((*l_969) = ((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))(mul_hi(((VECTOR(uint64_t, 2))(l_978.s25)).yyyy, ((VECTOR(uint64_t, 4))(l_979.xxyx))))).xxzxywxx + ((VECTOR(uint64_t, 4))(p_1367->g_565.s3, 18446744073709551611UL, 0x05CB10A55FB0FF7BL, 3UL)).yxxyzyyy))), ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(l_986.s4027521073576224)) + ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_1367->g_987.yx)), 1UL, 0x4D265E33FBACE4B9L)).wzyyxwxywywwwxxy))).s63 + ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 2))(max(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))(mad_hi(((VECTOR(uint64_t, 2))(l_988.xy)).yyyyyyxy, ((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 4))(p_1367->g_989.sb5cf)).odd, ((VECTOR(uint64_t, 4))(((&p_1367->g_304 == &p_1367->g_304) | (((0xDCL == ((safe_rshift_func_int8_t_s_s(p_38, (l_978.s5 == ((l_969 != (void*)0) <= (safe_rshift_func_uint8_t_u_u(251UL, (*p_1367->g_87))))))) == p_37)) || p_38) , l_47)), l_978.s6, 0xC340E2421F19BDD8L, 6UL)).odd))).yyyxyxyy, ((VECTOR(uint64_t, 8))(18446744073709551610UL))))).even | ((VECTOR(uint64_t, 4))(18446744073709551615UL))))).odd, ((VECTOR(uint64_t, 2))(18446744073709551607UL))))).yxxy, (uint64_t)0xDE38177E704A38FCL))), 0xB7C504FF5378BD12L, 2UL, 0xBA52D880B5C1BBD1L, 0x1B566B4EB45A8D4FL)).s26))).yyyxyxxyyyxyxxxy + ((VECTOR(uint64_t, 16))(18446744073709551610UL))))).lo))).s7) != p_1367->g_84.y) , p_1367->g_987.y), 0x80L)), ((VECTOR(int32_t, 2))((-1L))), 0x67B1D1D8L)).s12))), p_37, 0L, l_978.s4, 1L, 0x06823AA1L, 2L)), ((VECTOR(int32_t, 8))(2L))))).s50))).yxyxxxyxxxyyyxxx && ((VECTOR(int32_t, 16))(0x0AF0FAAFL))))).s2f && ((VECTOR(int32_t, 2))((-5L)))))).xyyy || ((VECTOR(int32_t, 4))(5L))))), 0x69AFD95AL, 1L, 0x185013DDL)).s7166066124577670, ((VECTOR(int32_t, 16))(0x0F1FEEB6L))))).sf19d ^ ((VECTOR(int32_t, 4))((-4L)))))).z;
        for (p_37 = 25; (p_37 < 23); p_37 = safe_sub_func_int16_t_s_s(p_37, 2))
        { /* block id: 376 */
            int32_t l_1013 = 0x6BBDB38AL;
            int16_t l_1048 = (-1L);
            VECTOR(uint32_t, 16) l_1065 = (VECTOR(uint32_t, 16))(0x9FEE4A9EL, (VECTOR(uint32_t, 4))(0x9FEE4A9EL, (VECTOR(uint32_t, 2))(0x9FEE4A9EL, 0x8E11175EL), 0x8E11175EL), 0x8E11175EL, 0x9FEE4A9EL, 0x8E11175EL, (VECTOR(uint32_t, 2))(0x9FEE4A9EL, 0x8E11175EL), (VECTOR(uint32_t, 2))(0x9FEE4A9EL, 0x8E11175EL), 0x9FEE4A9EL, 0x8E11175EL, 0x9FEE4A9EL, 0x8E11175EL);
            int32_t *l_1087 = (void*)0;
            int32_t *l_1088 = (void*)0;
            int32_t *l_1089 = (void*)0;
            int32_t *l_1090 = &p_1367->g_111;
            int32_t *l_1091 = (void*)0;
            int32_t *l_1092 = &l_44[8];
            int32_t *l_1093 = (void*)0;
            int32_t *l_1094 = (void*)0;
            int32_t *l_1095 = &p_1367->g_111;
            int32_t *l_1096 = &l_1077;
            int32_t *l_1097[8] = {(void*)0,&p_1367->g_111,(void*)0,(void*)0,&p_1367->g_111,(void*)0,(void*)0,&p_1367->g_111};
            int64_t l_1101 = 1L;
            int i;
            for (p_1367->g_108 = 0; (p_1367->g_108 == 10); p_1367->g_108 = safe_add_func_uint8_t_u_u(p_1367->g_108, 3))
            { /* block id: 379 */
                VECTOR(int64_t, 8) l_1009 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
                VECTOR(uint64_t, 4) l_1016 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xD9CA98CA36247713L), 0xD9CA98CA36247713L);
                VECTOR(uint64_t, 4) l_1017 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0UL), 0UL);
                uint32_t *l_1047[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t *l_1049 = (void*)0;
                int32_t *l_1050 = &l_44[1];
                uint8_t *****l_1084 = (void*)0;
                int32_t *l_1085 = &p_1367->g_1086;
                int i;
                (*l_1050) = (p_39 = ((**p_1367->g_303) = ((safe_mod_func_uint64_t_u_u(((p_1367->g_560.z = ((safe_add_func_uint8_t_u_u(252UL, (safe_mod_func_uint16_t_u_u(l_47, ((safe_rshift_func_int16_t_s_s((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(p_37, ((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))(p_1367->g_1008.zzyx)).wxwzzyxw < ((VECTOR(int64_t, 2))(0x3A816C1AD90F55D2L, 0x632A42AEABFB73D6L)).xyxyyxxx))).hi, ((VECTOR(int64_t, 16))(l_1009.s1673572131315453)).s6ef3))).even, ((VECTOR(uint64_t, 8))(((safe_add_func_int8_t_s_s(((VECTOR(int8_t, 2))(l_1012.sa1)).lo, 0x4BL)) < l_1013), ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))(l_1016.ywyw)).even + ((VECTOR(uint64_t, 8))(0UL, ((VECTOR(uint64_t, 4))(l_1017.xzzw)).z, 18446744073709551606UL, ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))(0x95E3382E455D144CL, 18446744073709551615UL)) + ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))(mul_hi(((VECTOR(uint64_t, 2))(l_1024.yx)).yxxy, ((VECTOR(uint64_t, 4))(18446744073709551615UL, ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(abs(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))(p_1367->g_1031.s2712)).lo * ((VECTOR(uint64_t, 4))(0x508D0596157BDEF0L, (safe_mul_func_int16_t_s_s((((((((((*p_1367->g_87)++) & (safe_mod_func_uint64_t_u_u(((safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(l_1040.xxyyxxxx)).s7, p_1367->g_450.sa)) , ((safe_sub_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(p_1367->g_336.x, ((p_38 = ((-8L) >= (((((safe_lshift_func_int16_t_s_s(p_1367->g_85.y, p_1367->g_111)) , (void*)0) != (void*)0) , p_37) , p_37))) != 0L), ((VECTOR(int8_t, 2))(5L)), ((VECTOR(int8_t, 4))((-1L))), l_1016.y, 1L, p_1367->g_85.y, l_978.s5, l_1012.s6, p_1367->g_337.s3, 0x59L, (-9L))) ^ ((VECTOR(int8_t, 16))(0x27L))))).s58))).xyxx && ((VECTOR(int8_t, 4))((-1L)))))), (-2L), ((VECTOR(int8_t, 2))(0x71L)), 0x54L, ((VECTOR(int8_t, 8))(0x42L)))).sa, 3)), 9UL)) , p_38)), 0x6DAFDE80E835582FL))) ^ 0x6BL) , &p_38) == l_1047[9]) > l_1048) > l_1016.y) < l_1013), 65531UL)), 0UL, 0x978099C8175A122FL)).odd))).xyxy + ((VECTOR(uint64_t, 4))(0x80302AFA5754C997L)))))))), l_1013, l_978.s3, 0x112FFE2EC56D6EB7L, 18446744073709551614UL)).s42 + ((VECTOR(uint64_t, 2))(0x30F0F46911BB26E6L))))), 0x5DA99523AB060579L))))).even + ((VECTOR(uint64_t, 2))(18446744073709551615UL))))) + ((VECTOR(uint64_t, 2))(0x9F348C577C02034AL)))))))), 0x1E8EA19B8607C612L, 0xD1FE874F5DB7DE70L, 0UL)).s03))), p_37, p_37, ((VECTOR(uint64_t, 2))(18446744073709551615UL)), 0x3DEFD385C8C96732L)).s77))), 0xBC2A11FFB4E99753L)).y, l_1017.x)), 13)) | p_1367->g_699.x))))) , l_1009.s2)) | l_1048), p_1367->g_243.w)) , l_1009.s7)));
                (*p_1367->g_304) = (safe_rshift_func_int16_t_s_s((((safe_add_func_uint64_t_u_u(((~0UL) ^ ((safe_sub_func_int32_t_s_s(((((*l_1085) ^= (((((VECTOR(uint32_t, 16))(min(((VECTOR(uint32_t, 8))(4294967295UL, ((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 16))(l_1059.zzxyyzwzyxywyzyw)).s94, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))((p_1367->g_846.s5++), ((VECTOR(uint32_t, 2))(hadd(((VECTOR(uint32_t, 4))(l_1064.s1633)).lo, ((VECTOR(uint32_t, 16))(l_1065.seb5e8872ed102866)).s0d))), GROUP_DIVERGE(2, 1), ((*l_1050) ^= ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),VECTOR(uint32_t, 4),((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(l_1072.s61)) >> ((VECTOR(uint32_t, 2))(32))))), 1UL, 0UL)), ((VECTOR(uint32_t, 8))((p_38 , (safe_sub_func_uint64_t_u_u(((((2L ^ ((((safe_rshift_func_int8_t_s_u((l_1077 = p_1367->g_126.s8), (safe_lshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_s((l_940.s1 & 1L), ((safe_mul_func_int16_t_s_s(0x56F7L, ((void*)0 != l_1084))) & p_1367->g_436.z))), 4)))) , 0x4EB5L) , (void*)0) == &p_1367->g_959)) ^ 0x78BB7CA5L) != 0x2D4DB5045DD60988L) || l_1059.w), p_38))), 0xEA753121L, 0UL, 0xF7712D49L, p_1367->g_1008.w, ((VECTOR(uint32_t, 2))(0x41F651E4L)), 0UL)).lo, ((VECTOR(uint32_t, 4))(6UL))))).yyxzyzzz + ((VECTOR(uint32_t, 8))(0xE2D8F540L))))).even + ((VECTOR(uint32_t, 4))(0xFC3BB123L))))).x), 4294967295UL, 0xA70D1914L, 4294967295UL)).s75 + ((VECTOR(uint32_t, 2))(0x37190309L))))), 0UL, 0UL)).hi))), p_1367->g_744.x, ((VECTOR(uint32_t, 2))(4294967292UL)), 0UL, 0x7A03FC92L)).s3050444372201260, ((VECTOR(uint32_t, 16))(4294967295UL))))).se > p_1367->g_526) && 0xEEB9E246L) <= GROUP_DIVERGE(1, 1))) , 65535UL) , 0x7FFC0125L), p_1367->g_251.y)) ^ p_38)), 0UL)) & 0L) == p_37), p_39));
                if (p_37)
                    continue;
            }
            l_1102--;
            for (p_1367->g_959 = 0; (p_1367->g_959 > (-24)); p_1367->g_959--)
            { /* block id: 396 */
                int16_t l_1107 = 0x5095L;
                int32_t l_1108 = (-5L);
                VECTOR(int32_t, 8) l_1109 = (VECTOR(int32_t, 8))(0x021306F1L, (VECTOR(int32_t, 4))(0x021306F1L, (VECTOR(int32_t, 2))(0x021306F1L, (-10L)), (-10L)), (-10L), 0x021306F1L, (-10L));
                uint16_t *l_1119 = &l_1102;
                int8_t *l_1120 = (void*)0;
                int8_t *l_1121[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint32_t l_1122 = 0xC5722A66L;
                int i;
                p_1367->g_1110--;
                if ((((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 2))(l_1113.xx)).yxyxyxyyxxyyxyyx, ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(l_1114.xyyyxxxx)), (l_1108 = (safe_div_func_uint32_t_u_u(((*p_1367->g_304) || ((((**p_1367->g_303) < (safe_div_func_int8_t_s_s((((*l_1119) = ((void*)0 != &p_1367->g_1086)) <= (l_988.x || 0x62B90A9CL)), p_39))) & (**p_1367->g_303)) > 0x95B59C2E9D285406L)), 0x285433ACL))), 2L, p_1367->g_450.s8, 1L, ((VECTOR(int8_t, 2))(0x67L)), (-3L), 0x47L)).s46, ((VECTOR(int8_t, 2))(0L))))), ((VECTOR(int8_t, 2))(0x2EL)), ((VECTOR(int8_t, 2))(9L))))), ((VECTOR(int8_t, 2))(0L))))).yyyyyyyyyxxyxxxy))).sf || l_1122))
                { /* block id: 400 */
                    uint64_t l_1123 = 18446744073709551610UL;
                    p_1367->g_1124[1][0] |= l_1123;
                    (*l_1090) &= ((--(*l_969)) && (p_1367->g_1128 != &p_1367->g_1129));
                    if (p_37)
                        break;
                }
                else
                { /* block id: 405 */
                    uint8_t *l_1135 = (void*)0;
                    uint8_t **l_1136 = &l_1135;
                    int64_t *l_1153 = (void*)0;
                    int64_t *l_1154 = (void*)0;
                    int64_t *l_1155 = &p_1367->g_457;
                    uint16_t l_1156 = 0x8E2DL;
                    l_1156 ^= ((safe_sub_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_u((l_42[2] != ((*l_1136) = l_1135)), 4)) == (l_1099[0][7] = FAKE_DIVERGE(p_1367->global_1_offset, get_global_id(1), 10))), ((FAKE_DIVERGE(p_1367->local_0_offset, get_local_id(0), 10) == (p_1367->g_560.x = (~(safe_mul_func_int16_t_s_s((0x6AL != ((safe_mul_func_uint16_t_u_u(((**p_1367->g_303) <= (((*l_1155) = (((++(*l_969)) != p_1367->g_338.y) > (safe_lshift_func_uint16_t_u_u(((*l_1119) &= ((safe_lshift_func_uint8_t_u_u(p_38, 0)) == ((safe_mod_func_int8_t_s_s((p_37 , (safe_add_func_int32_t_s_s(0x51669F7AL, (((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(p_1367->g_1151.s277ffaa9)) != ((VECTOR(int64_t, 8))((-1L), ((VECTOR(int64_t, 4))(l_1152.yxyx)), 0L, 0x42C4BA64381B55F1L, 0x4CD44C7324AE68F6L))))).s1 > l_1108)))), p_39)) ^ 0x13E5L))), FAKE_DIVERGE(p_1367->local_1_offset, get_local_id(1), 10))))) && 6L)), GROUP_DIVERGE(1, 1))) | p_1367->g_85.x)), p_38))))) == l_1152.y))) & 0L);
                    return l_988.y;
                }
                if (p_1367->g_421)
                    goto lbl_1157;
            }
        }
        l_1099[0][8] |= p_39;
    }
    (*l_1159) = &p_1367->g_111;
    return p_37;
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_43 p_1367->g_11 p_1367->g_85 p_1367->g_111 p_1367->g_126 p_1367->g_108 p_1367->g_114 p_1367->g_84 p_1367->g_87 p_1367->g_146 p_1367->g_78 p_1367->g_187 p_1367->g_303 p_1367->g_251 p_1367->g_304 p_1367->g_241 p_1367->g_289 p_1367->g_337 p_1367->g_305 p_1367->g_473 p_1367->g_436 p_1367->g_243 p_1367->g_342 p_1367->g_526 p_1367->g_450 p_1367->g_565 p_1367->g_743 p_1367->g_928
 * writes: p_1367->g_111 p_1367->g_146 p_1367->g_85 p_1367->g_114 p_1367->g_167 p_1367->g_101 p_1367->g_108 p_1367->g_187 p_1367->g_304 p_1367->g_457 p_1367->g_473 p_1367->g_491 p_1367->g_289 p_1367->g_43 p_1367->g_241 p_1367->g_545 p_1367->g_342 p_1367->g_305 p_1367->g_474 p_1367->g_526 p_1367->g_822 p_1367->g_887 p_1367->g_743 p_1367->g_450 p_1367->g_928
 */
int8_t  func_45(uint32_t  p_46, struct S1 * p_1367)
{ /* block id: 8 */
    int32_t l_72 = (-1L);
    uint8_t *l_73 = (void*)0;
    int32_t *l_922 = (void*)0;
    int32_t l_925 = 0x44790EADL;
    int32_t l_926[3];
    int32_t l_927 = (-1L);
    int i;
    for (i = 0; i < 3; i++)
        l_926[i] = 0x56E74B47L;
    for (p_46 = 0; (p_46 >= 5); ++p_46)
    { /* block id: 11 */
        int8_t l_61 = 0L;
        uint8_t *l_464 = &p_1367->g_43[4][5];
        int32_t *l_918 = (void*)0;
        int32_t *l_919 = (void*)0;
        int32_t *l_920 = (void*)0;
        int32_t *l_921[10][4][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int32_t **l_923 = &l_919;
        int32_t **l_924[3];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_924[i] = &l_921[4][3][1];
        p_1367->g_450.sf = (p_1367->g_743.s0 = ((func_50(func_55((((((l_61 <= l_61) , p_1367->g_43[2][4]) <= (p_1367->g_11.s0 == func_62(func_64(p_1367->g_11.s2, func_69(l_72, l_73, p_1367), ((!p_46) | l_61), l_61, p_1367), p_1367))) == 1L) , (void*)0), p_1367->g_337.s3, l_73, p_46, p_1367->g_337.s4, p_1367), &p_1367->g_43[2][4], p_1367->g_305.s9, l_464, p_1367) , (void*)0) == l_464));
        (**p_1367->g_303) = (**p_1367->g_303);
        l_922 = ((*l_923) = l_922);
        --p_1367->g_928;
    }
    return l_926[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_457 p_1367->g_304 p_1367->g_111 p_1367->g_473 p_1367->g_303 p_1367->g_289 p_1367->g_43 p_1367->g_114 p_1367->g_241 p_1367->g_436 p_1367->g_84 p_1367->g_243 p_1367->g_342 p_1367->g_560 p_1367->g_78 p_1367->g_305 p_1367->g_146 p_1367->g_565 p_1367->g_11 p_1367->g_251 p_1367->g_85 p_1367->g_87 p_1367->g_526 p_1367->g_450 p_1367->g_743
 * writes: p_1367->g_304 p_1367->g_457 p_1367->g_473 p_1367->g_85 p_1367->g_491 p_1367->g_289 p_1367->g_43 p_1367->g_111 p_1367->g_526 p_1367->g_108 p_1367->g_241 p_1367->g_545 p_1367->g_342 p_1367->g_146 p_1367->g_305 p_1367->g_474 p_1367->g_822 p_1367->g_887 p_1367->g_743
 */
int64_t  func_50(uint8_t * p_51, uint8_t * p_52, int64_t  p_53, uint8_t * p_54, struct S1 * p_1367)
{ /* block id: 146 */
    int32_t *l_465 = &p_1367->g_111;
    int32_t **l_466 = &p_1367->g_304;
    int8_t *l_482 = (void*)0;
    int8_t **l_481 = &l_482;
    int32_t l_502 = 0x594B91FFL;
    VECTOR(int64_t, 4) l_503 = (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), 0L), 0L);
    VECTOR(uint8_t, 16) l_524 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x98L), 0x98L), 0x98L, 255UL, 0x98L, (VECTOR(uint8_t, 2))(255UL, 0x98L), (VECTOR(uint8_t, 2))(255UL, 0x98L), 255UL, 0x98L, 255UL, 0x98L);
    uint16_t *l_534 = &p_1367->g_342;
    int32_t l_546[7] = {0x32667654L,0x726D46B2L,0x32667654L,0x32667654L,0x726D46B2L,0x32667654L,0x32667654L};
    uint32_t l_577 = 4294967291UL;
    VECTOR(int32_t, 8) l_583 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
    uint8_t ***l_598 = &p_1367->g_86[1];
    VECTOR(uint64_t, 8) l_612 = (VECTOR(uint64_t, 8))(0x45CC67B1160914D1L, (VECTOR(uint64_t, 4))(0x45CC67B1160914D1L, (VECTOR(uint64_t, 2))(0x45CC67B1160914D1L, 0UL), 0UL), 0UL, 0x45CC67B1160914D1L, 0UL);
    VECTOR(int32_t, 4) l_615 = (VECTOR(int32_t, 4))(0x4FAE1235L, (VECTOR(int32_t, 2))(0x4FAE1235L, 0x322EC3CAL), 0x322EC3CAL);
    int16_t l_633[8][5] = {{0x4506L,0x58E9L,0x156CL,0x23DDL,0x58E9L},{0x4506L,0x58E9L,0x156CL,0x23DDL,0x58E9L},{0x4506L,0x58E9L,0x156CL,0x23DDL,0x58E9L},{0x4506L,0x58E9L,0x156CL,0x23DDL,0x58E9L},{0x4506L,0x58E9L,0x156CL,0x23DDL,0x58E9L},{0x4506L,0x58E9L,0x156CL,0x23DDL,0x58E9L},{0x4506L,0x58E9L,0x156CL,0x23DDL,0x58E9L},{0x4506L,0x58E9L,0x156CL,0x23DDL,0x58E9L}};
    int16_t *l_639[3];
    int16_t **l_638[8] = {&l_639[0],&l_639[0],&l_639[0],&l_639[0],&l_639[0],&l_639[0],&l_639[0],&l_639[0]};
    uint32_t l_647 = 2UL;
    VECTOR(int32_t, 16) l_707 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x61A05158L), 0x61A05158L), 0x61A05158L, (-1L), 0x61A05158L, (VECTOR(int32_t, 2))((-1L), 0x61A05158L), (VECTOR(int32_t, 2))((-1L), 0x61A05158L), (-1L), 0x61A05158L, (-1L), 0x61A05158L);
    uint32_t l_739 = 2UL;
    int16_t **l_770 = &l_639[0];
    VECTOR(int16_t, 2) l_834 = (VECTOR(int16_t, 2))(0x7F95L, (-4L));
    int32_t l_915 = (-1L);
    int32_t *l_916 = (void*)0;
    int32_t *l_917[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i, j;
    for (i = 0; i < 3; i++)
        l_639[i] = &l_633[7][0];
lbl_566:
    (*l_466) = (l_465 = &p_1367->g_111);
    for (p_1367->g_457 = (-23); (p_1367->g_457 == 17); ++p_1367->g_457)
    { /* block id: 151 */
        uint8_t *****l_475 = &p_1367->g_473;
        int8_t *l_477 = (void*)0;
        int8_t **l_476 = &l_477;
        uint8_t ****l_478 = (void*)0;
        int32_t l_483 = 1L;
        VECTOR(uint16_t, 2) l_490 = (VECTOR(uint16_t, 2))(0x7F5EL, 0x5673L);
        VECTOR(uint64_t, 2) l_582 = (VECTOR(uint64_t, 2))(0x89AC03E8F5F478DCL, 0xCBCF712F44AA6EAFL);
        int32_t *l_611[8][1] = {{&l_546[6]},{&l_546[6]},{&l_546[6]},{&l_546[6]},{&l_546[6]},{&l_546[6]},{&l_546[6]},{&l_546[6]}};
        int i, j;
        if (((**l_466) <= (safe_add_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s((((*l_475) = p_1367->g_473) == ((((*l_476) = p_52) != p_54) , l_478)), (~(FAKE_DIVERGE(p_1367->local_1_offset, get_local_id(1), 10) , (p_1367->g_85.y = ((safe_lshift_func_uint16_t_u_u((*l_465), 0)) && ((void*)0 == l_481))))))), (((l_483 , (*p_1367->g_304)) == (**p_1367->g_303)) & 0x0D756775L)))))
        { /* block id: 155 */
            uint8_t l_492 = 6UL;
            uint8_t ***l_493[7] = {&p_1367->g_86[3],&p_1367->g_86[3],&p_1367->g_86[3],&p_1367->g_86[3],&p_1367->g_86[3],&p_1367->g_86[3],&p_1367->g_86[3]};
            uint64_t *l_496 = (void*)0;
            uint64_t *l_497 = &p_1367->g_289;
            uint16_t l_498 = 0xAE89L;
            int i;
            (**p_1367->g_303) = ((*p_1367->g_304) >= (((**l_476) = (safe_sub_func_int16_t_s_s((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 4))((+((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))(l_490.xxxyyxyxyxyxxxyy)) << ((VECTOR(uint16_t, 16))(16))))).sbe9d))).y, ((((p_1367->g_491 = (void*)0) == &p_1367->g_342) && ((*l_497) |= (l_492 ^ (((void*)0 != l_493[0]) <= (safe_sub_func_int8_t_s_s((((l_483 ^ (l_492 || p_53)) , l_483) <= 0x47FFL), p_53)))))) > 7UL))), (-1L)))) <= 0L));
            if ((*p_1367->g_304))
                break;
            return l_498;
        }
        else
        { /* block id: 162 */
            int32_t *l_501[6][4][9] = {{{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483}},{{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483}},{{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483}},{{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483}},{{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483}},{{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483},{&l_483,&p_1367->g_111,&l_483,(void*)0,&l_483,(void*)0,(void*)0,(void*)0,&l_483}}};
            uint32_t *l_525 = &p_1367->g_526;
            int64_t l_531 = 0x0EF73C2DC727CCB5L;
            uint16_t *l_535 = &p_1367->g_342;
            uint64_t *l_536 = &p_1367->g_289;
            int16_t *l_537 = (void*)0;
            int16_t *l_538 = &p_1367->g_108;
            int16_t *l_539 = (void*)0;
            int16_t *l_540 = (void*)0;
            int16_t *l_541 = (void*)0;
            int16_t *l_542 = (void*)0;
            int16_t *l_543[5][9][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            int64_t *l_544 = &p_1367->g_545[7][5];
            int i, j, k;
            l_502 |= (safe_rshift_func_uint16_t_u_u((*l_465), 12));
            if ((((((((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_503.ww)), 0x63DBA0E6A0AB16DCL, 0x07AE7F1EB7A26DC4L)).z , func_55((((*l_544) = (safe_add_func_int16_t_s_s((p_1367->g_241.x ^= (safe_mod_func_int16_t_s_s((safe_add_func_int32_t_s_s((p_53 || (!(safe_sub_func_uint64_t_u_u((1L || (p_53 , (safe_div_func_uint16_t_u_u(((((safe_lshift_func_int16_t_s_s(((*l_538) = (safe_rshift_func_int8_t_s_u((((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 8))(0x3CL, 0xDCL, ((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(1UL, 0xDDL)) ^ ((VECTOR(uint8_t, 4))(((p_1367->g_43[7][4] != FAKE_DIVERGE(p_1367->local_0_offset, get_local_id(0), 10)) == ((*l_536) = (safe_add_func_int64_t_s_s(((((((*l_525) = (safe_lshift_func_uint8_t_u_u(0x61L, (l_483 ^= ((VECTOR(uint8_t, 8))(l_524.s8b46b297)).s1)))) | (((safe_sub_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((p_53 , (l_531 , (safe_mul_func_uint16_t_u_u((p_53 > (l_534 == l_535)), 0x6B49L)))), 0x4BL)), (**l_466))) <= 2UL) & 0x02540678L)) & l_490.y) , GROUP_DIVERGE(1, 1)) | 0x43L), l_490.x)))), 246UL, 0xF9L, 0UL)).hi))).xyyy + ((VECTOR(uint8_t, 4))(1UL))))), 255UL, 0x37L, 0x40L, 1UL)).s21, ((VECTOR(uint8_t, 2))(255UL)), ((VECTOR(uint8_t, 2))(1UL))))), ((VECTOR(uint8_t, 2))(0x72L)), 0xAAL, 0xD5L)), ((VECTOR(uint8_t, 8))(0UL))))).s2 > 0x0EL), 0))), p_53)) | l_490.x) , l_490.x) >= 7UL), p_1367->g_114.x)))), FAKE_DIVERGE(p_1367->group_2_offset, get_group_id(2), 10))))), GROUP_DIVERGE(2, 1))), 0x5FA6L))), (-1L)))) , (void*)0), p_53, p_51, l_546[6], p_1367->g_436.y, p_1367)) == p_52) | FAKE_DIVERGE(p_1367->group_2_offset, get_group_id(2), 10)) , (*l_465)) , (-2L)) ^ p_1367->g_84.w) <= p_1367->g_243.z))
            { /* block id: 170 */
                uint8_t l_547 = 250UL;
                l_547 ^= ((**p_1367->g_303) = (**p_1367->g_303));
            }
            else
            { /* block id: 173 */
                int32_t l_553 = 1L;
                int32_t l_554[4] = {0x1F78DD12L,0x1F78DD12L,0x1F78DD12L,0x1F78DD12L};
                uint8_t ***l_561 = &p_1367->g_91;
                int64_t *l_586 = &p_1367->g_146;
                int64_t *l_587 = (void*)0;
                int64_t *l_588 = (void*)0;
                int64_t *l_589 = (void*)0;
                int64_t *l_590 = &l_531;
                uint32_t l_608 = 4294967295UL;
                int i;
                for (p_1367->g_342 = 0; (p_1367->g_342 == 26); ++p_1367->g_342)
                { /* block id: 176 */
                    uint32_t l_550[9][8] = {{0xBD5497A5L,1UL,4294967295UL,4294967295UL,4294967295UL,1UL,0xBD5497A5L,0xB54C8193L},{0xBD5497A5L,1UL,4294967295UL,4294967295UL,4294967295UL,1UL,0xBD5497A5L,0xB54C8193L},{0xBD5497A5L,1UL,4294967295UL,4294967295UL,4294967295UL,1UL,0xBD5497A5L,0xB54C8193L},{0xBD5497A5L,1UL,4294967295UL,4294967295UL,4294967295UL,1UL,0xBD5497A5L,0xB54C8193L},{0xBD5497A5L,1UL,4294967295UL,4294967295UL,4294967295UL,1UL,0xBD5497A5L,0xB54C8193L},{0xBD5497A5L,1UL,4294967295UL,4294967295UL,4294967295UL,1UL,0xBD5497A5L,0xB54C8193L},{0xBD5497A5L,1UL,4294967295UL,4294967295UL,4294967295UL,1UL,0xBD5497A5L,0xB54C8193L},{0xBD5497A5L,1UL,4294967295UL,4294967295UL,4294967295UL,1UL,0xBD5497A5L,0xB54C8193L},{0xBD5497A5L,1UL,4294967295UL,4294967295UL,4294967295UL,1UL,0xBD5497A5L,0xB54C8193L}};
                    int64_t *l_562 = &p_1367->g_146;
                    int i, j;
                    ++l_550[3][1];
                    p_1367->g_305.se = ((l_554[1] = l_553) , (((*l_562) &= (safe_unary_minus_func_int16_t_s(((safe_rshift_func_int16_t_s_u(((safe_lshift_func_int8_t_s_u((((&p_53 == (((VECTOR(int8_t, 2))(p_1367->g_560.yy)).odd , &p_1367->g_457)) , (((((**l_466) = (~(p_53 & l_554[2]))) >= 65526UL) | ((l_483 , (void*)0) != l_561)) , p_1367->g_78.s9)) , (*l_465)), FAKE_DIVERGE(p_1367->group_1_offset, get_group_id(1), 10))) && l_490.x), 14)) & p_1367->g_305.sa)))) ^ p_1367->g_342));
                }
                for (p_1367->g_342 = 0; (p_1367->g_342 != 51); ++p_1367->g_342)
                { /* block id: 185 */
                    (**p_1367->g_303) = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_1367->g_565.s47)), 0x690A43F0L, 0x6E537AD6L)).y;
                }
                if (l_553)
                    goto lbl_566;
                if ((l_554[1] = ((safe_div_func_int16_t_s_s((safe_mod_func_int64_t_s_s(0L, ((((((GROUP_DIVERGE(1, 1) == (((*l_536) = p_1367->g_11.s3) , (safe_div_func_int8_t_s_s((!(safe_div_func_int32_t_s_s((safe_rshift_func_int8_t_s_s(((l_577 || (0x1604CC8FL & ((*p_1367->g_304) = ((((safe_mod_func_int64_t_s_s(((((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 2))(l_582.yx))))).lo && ((*l_590) &= ((*l_586) ^= ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 16))(l_583.s1713764602275347)).odd, ((VECTOR(uint32_t, 2))(0UL, 0xB8623574L)).yyyyyyyx))), (safe_add_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), p_53)), (((p_1367->g_251.y , (*l_466)) != &p_1367->g_111) ^ (p_53 > 0x4957CF21L)), ((VECTOR(int64_t, 2))(0x0164EA73C9DF7A1FL)), p_53, 1L, 1L, 0x4CD18E3E52B807A7L)).hi && ((VECTOR(int64_t, 8))(0x7EB452B146D74187L))))), (int64_t)1L))).s4555163413673735 && ((VECTOR(int64_t, 16))(6L))))).hi && ((VECTOR(int64_t, 8))(0x08F7ED2326F6E788L))))).s1))) >= GROUP_DIVERGE(0, 1)), p_1367->g_85.x)) >= 0xC2370FABL) ^ p_53) >= 1UL)))) >= GROUP_DIVERGE(1, 1)), l_553)), p_1367->g_241.x))), FAKE_DIVERGE(p_1367->local_1_offset, get_local_id(1), 10))))) ^ (*p_54)) | p_53) ^ 0xF7380B3716156A77L) ^ p_1367->g_436.w) , p_53))), l_553)) >= 9L)))
                { /* block id: 194 */
                    int8_t l_607 = (-1L);
                    if ((p_53 || (safe_lshift_func_int16_t_s_s(0x4D29L, 9))))
                    { /* block id: 195 */
                        return l_582.y;
                    }
                    else
                    { /* block id: 197 */
                        int8_t l_606 = 1L;
                        (**l_466) = (safe_unary_minus_func_int64_t_s((safe_mul_func_uint8_t_u_u((((*l_535) = p_53) , (p_53 ^ (((((((safe_lshift_func_int8_t_s_s((((*l_525) |= (l_598 == (((*l_586) &= (safe_add_func_int8_t_s_s(p_53, ((*l_477) &= p_53)))) , ((safe_lshift_func_int8_t_s_u(p_1367->g_342, (*p_1367->g_87))) , ((*p_1367->g_473) = (void*)0))))) , (((((((safe_rshift_func_int16_t_s_u(((safe_unary_minus_func_int16_t_s(0x340CL)) < 0x5CL), 2)) | (*p_1367->g_304)) , l_483) == l_606) , 0x45A61AC1945CFB49L) , (*l_465)) < l_606)), p_53)) == 0x0D32B218L) > l_607) >= p_1367->g_305.sd) , GROUP_DIVERGE(1, 1)) < GROUP_DIVERGE(0, 1)) < p_1367->g_114.x))), (**l_466)))));
                    }
                    return p_1367->g_78.s7;
                }
                else
                { /* block id: 206 */
                    if (l_490.y)
                        break;
                    (**l_466) = (l_608 <= ((safe_add_func_int64_t_s_s(p_1367->g_289, (+(p_1367->g_526 , (&l_482 != &l_477))))) < FAKE_DIVERGE(p_1367->group_2_offset, get_group_id(2), 10)));
                }
            }
            l_483 |= ((**l_466) = p_53);
        }
        if (l_577)
            goto lbl_566;
        ++l_612.s2;
        if (p_1367->g_111)
            goto lbl_566;
    }
    if (((VECTOR(int32_t, 4))(l_615.zyyw)).x)
    { /* block id: 218 */
        uint64_t l_622 = 0xBFA589062279A997L;
        int16_t *l_636 = (void*)0;
        uint32_t *l_637 = &l_577;
        int32_t l_640 = (-10L);
        int32_t l_641 = 1L;
        int32_t l_646[3];
        int i;
        for (i = 0; i < 3; i++)
            l_646[i] = (-2L);
        l_641 &= (safe_mul_func_uint16_t_u_u((l_640 = (((*l_534) = 0x3869L) & (safe_rshift_func_int8_t_s_u(((safe_rshift_func_uint8_t_u_u(l_622, 6)) , p_53), (((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 16))((l_622 == (safe_rshift_func_uint16_t_u_s(((((*l_637) = (((p_53 , ((safe_sub_func_int8_t_s_s((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(((p_1367->g_85.x , (safe_mod_func_int64_t_s_s((+(l_633[5][0] == (safe_mod_func_uint64_t_u_u((**l_466), (~(0x0862L >= GROUP_DIVERGE(2, 1))))))), p_53))) > l_622), 0xC9A10BD15F84D39EL, 18446744073709551611UL, 0x81E3C47DA3E652E5L, 0xFF56CE69547489F6L, ((VECTOR(uint64_t, 2))(18446744073709551609UL)), 18446744073709551615UL)).s04 + ((VECTOR(uint64_t, 2))(18446744073709551610UL))))).xxyyxxxy + ((VECTOR(uint64_t, 8))(8UL))))).s5 , p_53), 7L)) , (void*)0)) == l_636) || p_53)) , (void*)0) != l_638[1]), p_1367->g_457))), ((VECTOR(int64_t, 2))(0x4F64BDDC88F86AB2L)), ((VECTOR(int64_t, 8))((-1L))), ((VECTOR(int64_t, 4))(0x0FE781C1BEC0101BL)), 1L)).sa6, ((VECTOR(int64_t, 2))((-3L)))))).yxxxxxxy ^ ((VECTOR(int64_t, 8))(0L))))).s7 && p_53))))), p_1367->g_450.s5));
        for (p_1367->g_526 = 0; (p_1367->g_526 == 43); ++p_1367->g_526)
        { /* block id: 225 */
            uint16_t **l_644 = &p_1367->g_491;
            int32_t *l_645[10][8] = {{&l_546[6],&l_641,(void*)0,(void*)0,(void*)0,&l_641,&l_546[6],&p_1367->g_111},{&l_546[6],&l_641,(void*)0,(void*)0,(void*)0,&l_641,&l_546[6],&p_1367->g_111},{&l_546[6],&l_641,(void*)0,(void*)0,(void*)0,&l_641,&l_546[6],&p_1367->g_111},{&l_546[6],&l_641,(void*)0,(void*)0,(void*)0,&l_641,&l_546[6],&p_1367->g_111},{&l_546[6],&l_641,(void*)0,(void*)0,(void*)0,&l_641,&l_546[6],&p_1367->g_111},{&l_546[6],&l_641,(void*)0,(void*)0,(void*)0,&l_641,&l_546[6],&p_1367->g_111},{&l_546[6],&l_641,(void*)0,(void*)0,(void*)0,&l_641,&l_546[6],&p_1367->g_111},{&l_546[6],&l_641,(void*)0,(void*)0,(void*)0,&l_641,&l_546[6],&p_1367->g_111},{&l_546[6],&l_641,(void*)0,(void*)0,(void*)0,&l_641,&l_546[6],&p_1367->g_111},{&l_546[6],&l_641,(void*)0,(void*)0,(void*)0,&l_641,&l_546[6],&p_1367->g_111}};
            int i, j;
            (**l_466) &= (((*l_644) = &p_1367->g_342) == (void*)0);
            --l_647;
            if (l_641)
                break;
        }
    }
    else
    { /* block id: 231 */
        int8_t l_652[7] = {0x34L,0x34L,0x34L,0x34L,0x34L,0x34L,0x34L};
        int32_t l_655 = 0x41F23E2EL;
        int32_t l_656 = 0x516583B3L;
        int32_t l_657 = 1L;
        int32_t l_658 = 0L;
        int32_t l_659 = 0x26A0FC1DL;
        VECTOR(int32_t, 8) l_705 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
        int16_t l_728[8][4] = {{0x4B4DL,0x4B4DL,(-1L),8L},{0x4B4DL,0x4B4DL,(-1L),8L},{0x4B4DL,0x4B4DL,(-1L),8L},{0x4B4DL,0x4B4DL,(-1L),8L},{0x4B4DL,0x4B4DL,(-1L),8L},{0x4B4DL,0x4B4DL,(-1L),8L},{0x4B4DL,0x4B4DL,(-1L),8L},{0x4B4DL,0x4B4DL,(-1L),8L}};
        VECTOR(int32_t, 16) l_769 = (VECTOR(int32_t, 16))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x1B6EE6BDL), 0x1B6EE6BDL), 0x1B6EE6BDL, 4L, 0x1B6EE6BDL, (VECTOR(int32_t, 2))(4L, 0x1B6EE6BDL), (VECTOR(int32_t, 2))(4L, 0x1B6EE6BDL), 4L, 0x1B6EE6BDL, 4L, 0x1B6EE6BDL);
        uint8_t l_783 = 1UL;
        uint64_t l_786[8][7] = {{0xF474A2958C9F16C7L,8UL,0x78AED4FC451507E8L,0xF474A2958C9F16C7L,1UL,0x78AED4FC451507E8L,0x78AED4FC451507E8L},{0xF474A2958C9F16C7L,8UL,0x78AED4FC451507E8L,0xF474A2958C9F16C7L,1UL,0x78AED4FC451507E8L,0x78AED4FC451507E8L},{0xF474A2958C9F16C7L,8UL,0x78AED4FC451507E8L,0xF474A2958C9F16C7L,1UL,0x78AED4FC451507E8L,0x78AED4FC451507E8L},{0xF474A2958C9F16C7L,8UL,0x78AED4FC451507E8L,0xF474A2958C9F16C7L,1UL,0x78AED4FC451507E8L,0x78AED4FC451507E8L},{0xF474A2958C9F16C7L,8UL,0x78AED4FC451507E8L,0xF474A2958C9F16C7L,1UL,0x78AED4FC451507E8L,0x78AED4FC451507E8L},{0xF474A2958C9F16C7L,8UL,0x78AED4FC451507E8L,0xF474A2958C9F16C7L,1UL,0x78AED4FC451507E8L,0x78AED4FC451507E8L},{0xF474A2958C9F16C7L,8UL,0x78AED4FC451507E8L,0xF474A2958C9F16C7L,1UL,0x78AED4FC451507E8L,0x78AED4FC451507E8L},{0xF474A2958C9F16C7L,8UL,0x78AED4FC451507E8L,0xF474A2958C9F16C7L,1UL,0x78AED4FC451507E8L,0x78AED4FC451507E8L}};
        VECTOR(uint32_t, 4) l_839 = (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 0x2D0BE28FL), 0x2D0BE28FL);
        uint32_t l_847[6][6][2] = {{{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L}},{{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L}},{{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L}},{{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L}},{{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L}},{{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L},{4294967286UL,0xBF7705B1L}}};
        uint32_t l_864[4][7] = {{4294967290UL,0x51D1C400L,0xD192A297L,1UL,0xD192A297L,0x51D1C400L,4294967290UL},{4294967290UL,0x51D1C400L,0xD192A297L,1UL,0xD192A297L,0x51D1C400L,4294967290UL},{4294967290UL,0x51D1C400L,0xD192A297L,1UL,0xD192A297L,0x51D1C400L,4294967290UL},{4294967290UL,0x51D1C400L,0xD192A297L,1UL,0xD192A297L,0x51D1C400L,4294967290UL}};
        uint8_t ***l_871[4][5] = {{&p_1367->g_91,&p_1367->g_86[1],&p_1367->g_86[1],&p_1367->g_91,&p_1367->g_91},{&p_1367->g_91,&p_1367->g_86[1],&p_1367->g_86[1],&p_1367->g_91,&p_1367->g_91},{&p_1367->g_91,&p_1367->g_86[1],&p_1367->g_86[1],&p_1367->g_91,&p_1367->g_91},{&p_1367->g_91,&p_1367->g_86[1],&p_1367->g_86[1],&p_1367->g_91,&p_1367->g_91}};
        uint32_t *l_872 = &l_847[4][5][1];
        uint32_t *l_873 = (void*)0;
        uint32_t *l_874 = (void*)0;
        uint32_t *l_875 = &l_577;
        uint16_t **l_886 = &l_534;
        int16_t l_913 = 0x20DAL;
        VECTOR(int32_t, 16) l_914 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x358A9AEBL), 0x358A9AEBL), 0x358A9AEBL, 1L, 0x358A9AEBL, (VECTOR(int32_t, 2))(1L, 0x358A9AEBL), (VECTOR(int32_t, 2))(1L, 0x358A9AEBL), 1L, 0x358A9AEBL, 1L, 0x358A9AEBL);
        int i, j, k;
        for (p_1367->g_111 = 25; (p_1367->g_111 <= (-10)); p_1367->g_111--)
        { /* block id: 234 */
            int32_t *l_653 = (void*)0;
            int32_t *l_654[1][9] = {{&l_502,&p_1367->g_111,&l_502,&l_502,&p_1367->g_111,&l_502,&l_502,&p_1367->g_111,&l_502}};
            uint16_t l_660 = 0x3D93L;
            VECTOR(int8_t, 16) l_685 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int8_t, 2))(0L, 0L), (VECTOR(int8_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
            int64_t *l_686 = &p_1367->g_545[7][5];
            VECTOR(int32_t, 8) l_700 = (VECTOR(int32_t, 8))(0x1E3FC462L, (VECTOR(int32_t, 4))(0x1E3FC462L, (VECTOR(int32_t, 2))(0x1E3FC462L, 0x548174FBL), 0x548174FBL), 0x548174FBL, 0x1E3FC462L, 0x548174FBL);
            uint64_t l_718 = 0xBEDBC074EC607B80L;
            VECTOR(int32_t, 16) l_742 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x5E4D823AL), 0x5E4D823AL), 0x5E4D823AL, 1L, 0x5E4D823AL, (VECTOR(int32_t, 2))(1L, 0x5E4D823AL), (VECTOR(int32_t, 2))(1L, 0x5E4D823AL), 1L, 0x5E4D823AL, 1L, 0x5E4D823AL);
            VECTOR(int32_t, 16) l_767 = (VECTOR(int32_t, 16))(0x419EAD0EL, (VECTOR(int32_t, 4))(0x419EAD0EL, (VECTOR(int32_t, 2))(0x419EAD0EL, 0L), 0L), 0L, 0x419EAD0EL, 0L, (VECTOR(int32_t, 2))(0x419EAD0EL, 0L), (VECTOR(int32_t, 2))(0x419EAD0EL, 0L), 0x419EAD0EL, 0L, 0x419EAD0EL, 0L);
            int64_t l_821[8][9][3] = {{{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL}},{{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL}},{{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL}},{{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL}},{{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL}},{{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL}},{{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL}},{{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL},{(-5L),1L,0x09758317734FF03FL}}};
            int32_t ***l_850 = &l_466;
            int i, j, k;
            ++l_660;
        }
        for (l_657 = (-14); (l_657 <= 1); l_657 = safe_add_func_int64_t_s_s(l_657, 1))
        { /* block id: 314 */
            int32_t *l_858 = &l_656;
            int32_t *l_859 = &l_546[4];
            int32_t *l_860 = &l_655;
            int32_t *l_861 = &l_546[6];
            int32_t *l_862 = &l_546[4];
            int32_t *l_863[7][2][1] = {{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}}};
            int i, j, k;
            ++l_864[3][6];
        }
        (**l_466) = (safe_mod_func_int16_t_s_s(((p_1367->g_305.s1 & p_53) && (safe_div_func_int32_t_s_s(p_53, ((*l_875) ^= ((*l_872) = (((*p_1367->g_473) = l_871[3][3]) == (void*)0)))))), ((p_53 || 6L) | 7L)));
        for (l_657 = (-28); (l_657 >= (-7)); ++l_657)
        { /* block id: 323 */
            for (l_656 = 0; (l_656 == (-23)); l_656 = safe_sub_func_int32_t_s_s(l_656, 2))
            { /* block id: 326 */
                int8_t l_880 = 0L;
                return l_880;
            }
            for (p_1367->g_822 = 22; (p_1367->g_822 >= 34); p_1367->g_822 = safe_add_func_uint64_t_u_u(p_1367->g_822, 1))
            { /* block id: 331 */
                int16_t l_888 = 1L;
                int32_t *l_889 = (void*)0;
                int32_t *l_890 = &l_502;
                uint8_t *****l_906 = &p_1367->g_473;
                uint8_t ******l_905 = &l_906;
                uint8_t *****l_908 = &p_1367->g_473;
                uint8_t ******l_907 = &l_908;
                VECTOR(int8_t, 8) l_911 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x2DL), 0x2DL), 0x2DL, 1L, 0x2DL);
                int64_t l_912 = 0x0F0BFEEB48BF3E42L;
                int i;
                (*l_890) = ((l_888 = ((safe_mul_func_int16_t_s_s(((+4294967293UL) , (p_1367->g_241.y = (p_53 , (safe_unary_minus_func_int64_t_s(((p_53 || ((void*)0 != &l_871[3][1])) | ((*p_1367->g_304) = ((((((**l_770) = l_728[4][1]) , &p_1367->g_491) != (p_1367->g_887[5][3][1] = l_886)) != 0x14L) > 0x0313L)))))))), p_1367->g_78.s9)) , p_53)) & l_658);
                l_913 ^= (1L ^ ((**l_770) = ((safe_rshift_func_uint8_t_u_s((((safe_add_func_uint32_t_u_u(p_1367->g_84.w, ((&p_1367->g_420 == ((((((**l_886) = (safe_sub_func_int16_t_s_s((l_656 = (safe_mul_func_uint8_t_u_u(((p_1367->g_565.s4 & (safe_rshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((safe_mod_func_uint16_t_u_u((((*l_907) = ((*l_905) = &p_1367->g_473)) != (((safe_sub_func_uint32_t_u_u((((VECTOR(int8_t, 16))(p_53, ((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(l_911.s55106032)), 8L, 0x3BL, (-1L), 0x20L, 9L, (-4L), (-1L), 9L)).sdc6e, (int8_t)(9UL || (**l_466))))), (*l_890), ((VECTOR(int8_t, 2))(0x23L)), ((VECTOR(int8_t, 8))((-1L))))).sa | (*l_465)), 0x6985B9FAL)) <= p_1367->g_565.s3) , (void*)0)), p_1367->g_450.s2)) >= FAKE_DIVERGE(p_1367->group_0_offset, get_group_id(0), 10)), p_1367->g_85.y)), 1))) >= FAKE_DIVERGE(p_1367->local_2_offset, get_local_id(2), 10)), (*l_465)))), p_53))) ^ p_1367->g_43[7][0]) >= p_53) , 0xE7C37C3C3BB9A2F2L) , (void*)0)) != p_1367->g_11.s4))) , p_1367->g_436.z) > 246UL), l_912)) | 0xDA30L)));
                if ((*l_890))
                    break;
                l_915 = (((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_914.s80)), 0L, (-2L))).wxwyxxzx, (int32_t)l_783))).s70))).odd , 0x6AA81464L);
            }
            l_655 ^= (+(**l_466));
        }
    }
    p_1367->g_743.s5 ^= (*p_1367->g_304);
    return (**l_466);
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_303 p_1367->g_304 p_1367->g_111
 * writes: p_1367->g_304 p_1367->g_111
 */
uint8_t * func_55(uint8_t * p_56, uint32_t  p_57, uint8_t * p_58, int16_t  p_59, int32_t  p_60, struct S1 * p_1367)
{ /* block id: 141 */
    int32_t l_451 = 0x0B7AC933L;
    int32_t **l_452 = &p_1367->g_304;
    int32_t *l_453 = (void*)0;
    int32_t *l_454 = &p_1367->g_111;
    int32_t *l_455[3];
    int64_t l_456[9][4][7] = {{{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L}},{{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L}},{{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L}},{{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L}},{{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L}},{{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L}},{{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L}},{{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L}},{{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L},{1L,0x51BD2049CB8E6715L,0x51BD2049CB8E6715L,1L,(-4L),0x2B3C352F68489E27L,0x62AE1B2BFD0EA1D8L}}};
    int64_t l_458[9][4][3] = {{{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L}},{{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L}},{{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L}},{{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L}},{{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L}},{{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L}},{{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L}},{{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L}},{{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L},{(-7L),0x4D97F23F979191EBL,0x782A035249E7C4A5L}}};
    int8_t l_459 = 0x62L;
    int32_t l_460 = 0L;
    VECTOR(uint32_t, 4) l_461 = (VECTOR(uint32_t, 4))(0xDFBF64AFL, (VECTOR(uint32_t, 2))(0xDFBF64AFL, 0UL), 0UL);
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_455[i] = (void*)0;
    (*l_452) = (l_451 , &p_1367->g_111);
    l_461.x++;
    (**p_1367->g_303) &= (-6L);
    return p_58;
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_101 p_1367->g_85 p_1367->g_108 p_1367->g_146 p_1367->g_187 p_1367->g_84 p_1367->g_87 p_1367->g_43 p_1367->g_111 p_1367->g_241 p_1367->g_243 p_1367->g_251 p_1367->g_114 p_1367->g_167 p_1367->g_11 p_1367->g_303 p_1367->g_305 p_1367->g_304 p_1367->g_78 p_1367->g_336 p_1367->g_337 p_1367->g_338 p_1367->g_289
 * writes: p_1367->g_101 p_1367->g_108 p_1367->g_111 p_1367->g_146 p_1367->g_167 p_1367->g_187 p_1367->g_114 p_1367->g_289 p_1367->g_84 p_1367->g_241 p_1367->g_342
 */
uint32_t  func_62(uint8_t * p_63, struct S1 * p_1367)
{ /* block id: 42 */
    VECTOR(uint32_t, 8) l_194 = (VECTOR(uint32_t, 8))(7UL, (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 1UL), 1UL), 1UL, 7UL, 1UL);
    int32_t l_200 = 1L;
    int32_t l_203[4][5] = {{0x1CFB4EE8L,0x1CFB4EE8L,0x1CFB4EE8L,0x1CFB4EE8L,0x1CFB4EE8L},{0x1CFB4EE8L,0x1CFB4EE8L,0x1CFB4EE8L,0x1CFB4EE8L,0x1CFB4EE8L},{0x1CFB4EE8L,0x1CFB4EE8L,0x1CFB4EE8L,0x1CFB4EE8L,0x1CFB4EE8L},{0x1CFB4EE8L,0x1CFB4EE8L,0x1CFB4EE8L,0x1CFB4EE8L,0x1CFB4EE8L}};
    VECTOR(uint16_t, 16) l_257 = (VECTOR(uint16_t, 16))(0xFF09L, (VECTOR(uint16_t, 4))(0xFF09L, (VECTOR(uint16_t, 2))(0xFF09L, 4UL), 4UL), 4UL, 0xFF09L, 4UL, (VECTOR(uint16_t, 2))(0xFF09L, 4UL), (VECTOR(uint16_t, 2))(0xFF09L, 4UL), 0xFF09L, 4UL, 0xFF09L, 4UL);
    VECTOR(int16_t, 8) l_335 = (VECTOR(int16_t, 8))((-8L), (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), (-9L)), (-9L)), (-9L), (-8L), (-9L));
    int16_t l_345 = 0x1DDCL;
    uint8_t ***l_395 = &p_1367->g_91;
    VECTOR(uint16_t, 4) l_409 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x6E25L), 0x6E25L);
    VECTOR(uint64_t, 16) l_435 = (VECTOR(uint64_t, 16))(0xF2020C8A78B807FEL, (VECTOR(uint64_t, 4))(0xF2020C8A78B807FEL, (VECTOR(uint64_t, 2))(0xF2020C8A78B807FEL, 8UL), 8UL), 8UL, 0xF2020C8A78B807FEL, 8UL, (VECTOR(uint64_t, 2))(0xF2020C8A78B807FEL, 8UL), (VECTOR(uint64_t, 2))(0xF2020C8A78B807FEL, 8UL), 0xF2020C8A78B807FEL, 8UL, 0xF2020C8A78B807FEL, 8UL);
    int i, j;
    for (p_1367->g_101 = 0; (p_1367->g_101 <= 47); ++p_1367->g_101)
    { /* block id: 45 */
        int32_t *l_199 = (void*)0;
        int32_t l_205 = 0x1F603D10L;
        int32_t l_208 = 0x68EBB756L;
        int32_t l_209[8][3] = {{1L,1L,1L},{1L,1L,1L},{1L,1L,1L},{1L,1L,1L},{1L,1L,1L},{1L,1L,1L},{1L,1L,1L},{1L,1L,1L}};
        int64_t *l_230 = (void*)0;
        uint8_t *l_231 = &p_1367->g_101;
        VECTOR(uint32_t, 2) l_256 = (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL);
        uint8_t l_278 = 5UL;
        int16_t l_334 = 0x5F28L;
        uint64_t *l_341[5];
        VECTOR(int8_t, 8) l_343 = (VECTOR(int8_t, 8))(0x32L, (VECTOR(int8_t, 4))(0x32L, (VECTOR(int8_t, 2))(0x32L, 0x2AL), 0x2AL), 0x2AL, 0x32L, 0x2AL);
        int64_t *l_344 = &p_1367->g_146;
        uint64_t l_346 = 18446744073709551608UL;
        uint8_t ***l_382 = &p_1367->g_91;
        uint8_t ****l_381 = &l_382;
        int i, j;
        for (i = 0; i < 5; i++)
            l_341[i] = (void*)0;
        if (p_1367->g_85.x)
        { /* block id: 46 */
            int32_t *l_180 = &p_1367->g_111;
            int32_t **l_181 = &l_180;
            int32_t l_206[5];
            int8_t l_221 = 0x41L;
            int8_t *l_222 = (void*)0;
            int8_t *l_223 = (void*)0;
            int8_t *l_224 = &l_221;
            int16_t *l_225 = &p_1367->g_108;
            int64_t *l_232 = (void*)0;
            int64_t *l_233 = &p_1367->g_146;
            uint8_t *l_234[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
            int i;
            for (i = 0; i < 5; i++)
                l_206[i] = (-10L);
            (*l_181) = l_180;
            for (p_1367->g_108 = 0; (p_1367->g_108 < 21); p_1367->g_108 = safe_add_func_uint16_t_u_u(p_1367->g_108, 3))
            { /* block id: 50 */
                uint32_t l_191 = 1UL;
                int32_t l_201 = 0L;
                int32_t l_204[7];
                int32_t l_207 = (-2L);
                int i;
                for (i = 0; i < 7; i++)
                    l_204[i] = 0x669D01ECL;
                (*l_180) = (~1L);
                for (p_1367->g_146 = 26; (p_1367->g_146 < 4); p_1367->g_146 = safe_sub_func_int64_t_s_s(p_1367->g_146, 9))
                { /* block id: 54 */
                    uint32_t l_186[2][2][1];
                    volatile int16_t ***l_190 = &p_1367->g_187[2][0];
                    int32_t l_202[9][3][3] = {{{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)}},{{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)}},{{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)}},{{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)}},{{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)}},{{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)}},{{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)}},{{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)}},{{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)},{0x43111986L,0x3E141900L,(-10L)}}};
                    uint32_t l_210 = 4294967294UL;
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 2; j++)
                        {
                            for (k = 0; k < 1; k++)
                                l_186[i][j][k] = 0x154DCB41L;
                        }
                    }
                    p_1367->g_167.x = l_186[1][0][0];
                    (*l_190) = p_1367->g_187[5][0];
                    if (l_191)
                    { /* block id: 57 */
                        int32_t *l_192 = (void*)0;
                        int32_t *l_193[1][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                        int i, j;
                        l_194.s6++;
                    }
                    else
                    { /* block id: 59 */
                        int32_t *l_197[8] = {&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111};
                        int32_t **l_198[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_198[i] = &l_197[0];
                        l_199 = ((*l_181) = l_197[0]);
                        l_210--;
                        if (l_203[3][3])
                            continue;
                    }
                }
                return l_203[1][3];
            }
            (*l_180) = ((safe_mul_func_uint8_t_u_u((safe_add_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((void*)0 == &l_208), (l_208 = (p_1367->g_85.y >= (((((*l_225) = (safe_mul_func_uint8_t_u_u(0UL, (l_203[1][1] && (l_203[0][4] = ((*l_224) = l_221)))))) , (((*l_233) = (safe_mod_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(l_203[0][4], (l_230 == (((void*)0 != l_231) , l_232)))), p_1367->g_84.y))) , (*p_1367->g_87))) < (*l_180)) , p_1367->g_85.x))))), 0x36B1L)), (*p_1367->g_87))) && 0x7F47FDB5AEA7E32FL);
        }
        else
        { /* block id: 74 */
            VECTOR(int16_t, 2) l_242 = (VECTOR(int16_t, 2))(5L, 0x5D48L);
            VECTOR(int16_t, 8) l_244 = (VECTOR(int16_t, 8))(0x5D1EL, (VECTOR(int16_t, 4))(0x5D1EL, (VECTOR(int16_t, 2))(0x5D1EL, 0x06ABL), 0x06ABL), 0x06ABL, 0x5D1EL, 0x06ABL);
            uint16_t *l_260 = (void*)0;
            uint16_t *l_261 = (void*)0;
            uint16_t *l_262 = (void*)0;
            uint16_t *l_263 = (void*)0;
            uint16_t *l_264 = (void*)0;
            uint16_t *l_265 = (void*)0;
            uint16_t *l_266 = (void*)0;
            uint16_t *l_267 = (void*)0;
            uint16_t *l_268 = (void*)0;
            uint16_t *l_269 = (void*)0;
            uint16_t *l_270 = (void*)0;
            uint16_t *l_271 = (void*)0;
            uint16_t *l_272 = (void*)0;
            uint16_t *l_273 = (void*)0;
            uint16_t *l_274 = (void*)0;
            uint16_t *l_275[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int16_t *l_279 = (void*)0;
            int16_t *l_280 = (void*)0;
            int16_t *l_281 = (void*)0;
            int16_t *l_282 = (void*)0;
            int16_t *l_283 = (void*)0;
            int32_t l_284[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            uint8_t l_285 = 0x54L;
            uint32_t l_286 = 1UL;
            uint32_t *l_287 = (void*)0;
            uint32_t *l_288 = (void*)0;
            int8_t *l_290 = (void*)0;
            int8_t *l_291 = (void*)0;
            int8_t *l_292 = (void*)0;
            int8_t *l_293 = (void*)0;
            int8_t *l_294 = (void*)0;
            int8_t *l_295[3];
            int32_t l_296 = 1L;
            uint64_t l_297 = 0x992D6179AE9CC793L;
            int i;
            for (i = 0; i < 3; i++)
                l_295[i] = (void*)0;
            if ((safe_lshift_func_uint8_t_u_s((safe_sub_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((p_1367->g_108 == (&p_1367->g_86[3] == &p_1367->g_86[3])), ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 2))(p_1367->g_241.xx)).xyyyyxyx, ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(l_242.yyxy)).wzwwyzywxwzyxyxx && ((VECTOR(int16_t, 2))(0x229AL, 0x4BE0L)).xyxxyxyxyxxyyyxx))).hi, ((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),VECTOR(int16_t, 2),((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(p_1367->g_243.xxyzxwzw)).s52 && ((VECTOR(int16_t, 8))(l_244.s07564547)).s00))), ((VECTOR(int16_t, 4))(1L, (((((((((safe_mul_func_int8_t_s_s((((safe_unary_minus_func_uint16_t_u(((safe_unary_minus_func_int32_t_s(((p_1367->g_43[2][4] >= (p_1367->g_241.y &= (((p_1367->g_84.x = ((safe_mod_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x14L, 0x4AL)), ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(p_1367->g_251.yx)) && ((VECTOR(int8_t, 2))(0L, 1L))))), ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((safe_mod_func_uint32_t_u_u((p_1367->g_289 = (((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 4))(((((VECTOR(uint32_t, 8))(4294967294UL, 0UL, GROUP_DIVERGE(2, 1), ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(l_256.yy)).yxyx + ((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),VECTOR(uint16_t, 8),((VECTOR(uint16_t, 4))(l_257.s5fe3)).xyxzwwzy, ((VECTOR(uint16_t, 8))(((((l_244.s4 ^ ((((safe_sub_func_int8_t_s_s(((--p_1367->g_114.y) <= (l_284[0] = l_278)), 0xE0L)) || (p_1367->g_146 < l_244.s5)) | 1L) && 0x23L)) & l_285) >= p_1367->g_84.z) < p_1367->g_167.x), GROUP_DIVERGE(2, 1), ((VECTOR(uint16_t, 4))(0x4DF0L)), 0xBEBAL, 0x89BEL)), ((VECTOR(uint16_t, 8))(0xDDDFL))))).s14, ((VECTOR(uint16_t, 2))(65529UL))))).xyxx))), 1UL)).s6 , l_286) < l_194.s0), ((VECTOR(int32_t, 2))(2L)), (-1L))).yyyzyxzxywwwyyxz, ((VECTOR(int32_t, 16))(0x40E1AA0AL))))) & ((VECTOR(int32_t, 16))(0x0B29161AL))))).sc , 1UL)), FAKE_DIVERGE(p_1367->global_2_offset, get_global_id(2), 10))) || FAKE_DIVERGE(p_1367->global_1_offset, get_global_id(1), 10)), ((VECTOR(int8_t, 2))(0x78L)), 0L, ((VECTOR(int8_t, 2))(0x68L)), 0x5DL, (-1L))).s7, ((VECTOR(int8_t, 4))(1L)), ((VECTOR(int8_t, 2))(6L)), (-5L))).s54, (int8_t)l_242.y))), (-8L), 0x4FL)).s0)) , l_257.sf)) , 0x46E1EE88E772E9BBL) ^ p_1367->g_43[1][0]))) ^ 252UL))) & p_1367->g_11.s6))) ^ l_244.s7) && l_296), 1UL)) > 0x2B2F5332A938F1B1L) == l_244.s6) , l_244.s5) , l_194.s5) && p_1367->g_243.x) > 0x9BL) != l_208) == l_209[4][1]), 0x4443L, 0x4200L)).lo, ((VECTOR(int16_t, 2))(0x2DD9L))))).yyyxxyyy))).s26 && ((VECTOR(int16_t, 2))(0x7259L))))).lo)), 255UL)), l_296)))
            { /* block id: 80 */
                uint64_t l_302 = 9UL;
                ++l_297;
                if ((((safe_mul_func_uint16_t_u_u(l_302, 0xBE6DL)) , (p_1367->g_303 == (void*)0)) , ((0L > ((4294967295UL | ((VECTOR(int32_t, 2))(p_1367->g_305.sce)).even) != ((safe_mod_func_uint8_t_u_u(((-1L) || (safe_lshift_func_int8_t_s_u((safe_rshift_func_uint16_t_u_s((18446744073709551615UL == ((safe_rshift_func_int16_t_s_u((p_1367->g_251.x >= (*p_1367->g_87)), 7)) <= p_1367->g_146)), p_1367->g_111)), 1))), (*p_1367->g_87))) == (*p_1367->g_304)))) , l_194.s1)))
                { /* block id: 82 */
                    return l_302;
                }
                else
                { /* block id: 84 */
                    return l_297;
                }
            }
            else
            { /* block id: 87 */
                return p_1367->g_84.x;
            }
        }
        if ((safe_mul_func_uint16_t_u_u(p_1367->g_114.x, ((**p_1367->g_303) < ((safe_add_func_uint8_t_u_u(((safe_sub_func_int64_t_s_s((safe_add_func_uint16_t_u_u((4294967293UL != (safe_mod_func_int8_t_s_s((safe_rshift_func_int8_t_s_u(p_1367->g_241.x, 5)), p_1367->g_78.sb))), ((l_194.s4 < (safe_sub_func_int64_t_s_s(((((safe_mod_func_int32_t_s_s((safe_sub_func_int8_t_s_s((FAKE_DIVERGE(p_1367->group_2_offset, get_group_id(2), 10) >= ((*l_344) = (safe_div_func_int16_t_s_s(l_334, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(l_335.s02)), 0x2AAAL, ((VECTOR(int16_t, 2))(p_1367->g_336.zz)), ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 8))(p_1367->g_337.s66461252)).odd, ((VECTOR(int16_t, 4))(p_1367->g_338.wwzz))))).lo, ((VECTOR(int16_t, 8))(0x6B6BL, (safe_lshift_func_int8_t_s_u(((p_1367->g_342 = ((VECTOR(uint64_t, 2))(18446744073709551612UL, 0xDB6DF4DFEFB0E1C0L)).even) , ((VECTOR(int8_t, 2))(l_343.s40)).even), 4)), p_1367->g_85.y, 0L, (-8L), 0x48B4L, (-9L), 0x73DFL)).s05))).yxyyxyyyyxxxyyyy || ((VECTOR(int16_t, 16))(0x6748L))))).sd0, ((VECTOR(int16_t, 2))(0x786EL)), ((VECTOR(int16_t, 2))(0x5CB5L))))), 0x788EL)).s3)))), (-6L))), l_205)) < l_335.s2) | l_345) != l_345), p_1367->g_289))) , 65526UL))), l_200)) <= l_346), 0x50L)) || l_257.s9)))))
        { /* block id: 93 */
            int32_t *l_354[3];
            int32_t l_417 = 0x02AF4597L;
            VECTOR(int8_t, 4) l_427 = (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 0x23L), 0x23L);
            int i;
            for (i = 0; i < 3; i++)
                l_354[i] = (void*)0;
            for (l_346 = 4; (l_346 < 36); ++l_346)
            { /* block id: 96 */
                uint8_t l_355 = 0x13L;
                uint8_t **l_360 = &p_1367->g_87;
                uint8_t ***l_361 = &p_1367->g_86[3];
                int64_t *l_372 = (void*)0;
                int64_t *l_373 = (void*)0;
                int64_t *l_374 = (void*)0;
                int64_t *l_375 = (void*)0;
                int64_t *l_376[4];
                int64_t l_412 = (-1L);
                VECTOR(int8_t, 4) l_426 = (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 0x70L), 0x70L);
                VECTOR(int8_t, 8) l_430 = (VECTOR(int8_t, 8))(0x63L, (VECTOR(int8_t, 4))(0x63L, (VECTOR(int8_t, 2))(0x63L, 0L), 0L), 0L, 0x63L, 0L);
                int32_t l_448 = (-1L);
                int i;
                for (i = 0; i < 4; i++)
                    l_376[i] = (void*)0;
                for (l_205 = 0; (l_205 != (-7)); l_205 = safe_sub_func_int64_t_s_s(l_205, 4))
                { /* block id: 99 */
                    for (l_208 = 0; (l_208 >= 15); ++l_208)
                    { /* block id: 102 */
                        int32_t **l_353[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_353[i] = &p_1367->g_304;
                        l_354[2] = &l_205;
                    }
                }
                l_355--;
                for (l_208 = (-28); (l_208 != 4); l_208 = safe_add_func_uint64_t_u_u(l_208, 2))
                { /* block id: 109 */
                    return l_355;
                }
            }
        }
        else
        { /* block id: 136 */
            l_199 = &p_1367->g_111;
        }
    }
    return p_1367->g_84.x;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t * func_64(int64_t  p_65, uint8_t * p_66, uint64_t  p_67, uint64_t  p_68, struct S1 * p_1367)
{ /* block id: 35 */
    int64_t l_176[5][8] = {{0x1AC27F1593416808L,0x22D3A84F11E0C926L,0x00A88BD345C0E92FL,0x22D3A84F11E0C926L,0x1AC27F1593416808L,0x1AC27F1593416808L,0x22D3A84F11E0C926L,0x00A88BD345C0E92FL},{0x1AC27F1593416808L,0x22D3A84F11E0C926L,0x00A88BD345C0E92FL,0x22D3A84F11E0C926L,0x1AC27F1593416808L,0x1AC27F1593416808L,0x22D3A84F11E0C926L,0x00A88BD345C0E92FL},{0x1AC27F1593416808L,0x22D3A84F11E0C926L,0x00A88BD345C0E92FL,0x22D3A84F11E0C926L,0x1AC27F1593416808L,0x1AC27F1593416808L,0x22D3A84F11E0C926L,0x00A88BD345C0E92FL},{0x1AC27F1593416808L,0x22D3A84F11E0C926L,0x00A88BD345C0E92FL,0x22D3A84F11E0C926L,0x1AC27F1593416808L,0x1AC27F1593416808L,0x22D3A84F11E0C926L,0x00A88BD345C0E92FL},{0x1AC27F1593416808L,0x22D3A84F11E0C926L,0x00A88BD345C0E92FL,0x22D3A84F11E0C926L,0x1AC27F1593416808L,0x1AC27F1593416808L,0x22D3A84F11E0C926L,0x00A88BD345C0E92FL}};
    uint8_t *l_177[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i, j;
    for (p_65 = (-1); (p_65 == 4); p_65 = safe_add_func_uint16_t_u_u(p_65, 8))
    { /* block id: 38 */
        if (l_176[1][6])
            break;
    }
    return l_177[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_78 p_1367->g_84 p_1367->g_85 p_1367->g_86 p_1367->g_111 p_1367->g_114 p_1367->g_43 p_1367->g_126 p_1367->g_108 p_1367->g_87 p_1367->g_146 p_1367->g_167
 * writes: p_1367->g_86 p_1367->g_91 p_1367->g_101 p_1367->g_111 p_1367->g_146 p_1367->g_85 p_1367->g_114 p_1367->g_167
 */
uint8_t * func_69(int8_t  p_70, uint8_t * p_71, struct S1 * p_1367)
{ /* block id: 12 */
    uint8_t *l_77 = (void*)0;
    uint8_t **l_76 = &l_77;
    VECTOR(int64_t, 4) l_79 = (VECTOR(int64_t, 4))(0x4112691D145C15DCL, (VECTOR(int64_t, 2))(0x4112691D145C15DCL, 0L), 0L);
    VECTOR(int64_t, 8) l_80 = (VECTOR(int64_t, 8))(0x1B762B02D3770B94L, (VECTOR(int64_t, 4))(0x1B762B02D3770B94L, (VECTOR(int64_t, 2))(0x1B762B02D3770B94L, 0x589AB98CFE46DA04L), 0x589AB98CFE46DA04L), 0x589AB98CFE46DA04L, 0x1B762B02D3770B94L, 0x589AB98CFE46DA04L);
    VECTOR(int64_t, 4) l_81 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x6631D611CF5FC6D3L), 0x6631D611CF5FC6D3L);
    uint8_t ***l_88 = &p_1367->g_86[3];
    uint8_t **l_90 = (void*)0;
    uint8_t ***l_89 = &l_90;
    int64_t *l_92 = (void*)0;
    int64_t *l_93 = (void*)0;
    int64_t *l_94 = (void*)0;
    int64_t *l_95[6][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_96[1][6][2] = {{{(-9L),1L},{(-9L),1L},{(-9L),1L},{(-9L),1L},{(-9L),1L},{(-9L),1L}}};
    uint8_t *l_99 = (void*)0;
    uint8_t *l_100 = &p_1367->g_101;
    int16_t *l_107[10][8][3] = {{{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108}},{{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108}},{{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108}},{{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108}},{{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108}},{{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108}},{{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108}},{{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108}},{{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108}},{{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108},{(void*)0,&p_1367->g_108,&p_1367->g_108}}};
    int32_t l_109[10][2] = {{0x12514AF1L,0x12514AF1L},{0x12514AF1L,0x12514AF1L},{0x12514AF1L,0x12514AF1L},{0x12514AF1L,0x12514AF1L},{0x12514AF1L,0x12514AF1L},{0x12514AF1L,0x12514AF1L},{0x12514AF1L,0x12514AF1L},{0x12514AF1L,0x12514AF1L},{0x12514AF1L,0x12514AF1L},{0x12514AF1L,0x12514AF1L}};
    int32_t *l_110[8][2][9] = {{{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111},{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111}},{{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111},{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111}},{{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111},{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111}},{{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111},{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111}},{{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111},{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111}},{{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111},{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111}},{{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111},{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111}},{{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111},{&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111,&p_1367->g_111}}};
    VECTOR(int8_t, 8) l_125 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L), 1L, 0L, 1L);
    VECTOR(int64_t, 8) l_142 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-7L)), (-7L)), (-7L), (-1L), (-7L));
    uint16_t *l_168[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_171[8] = {0x5E94C89DL,0x4EE3CB9EL,0x5E94C89DL,0x5E94C89DL,0x4EE3CB9EL,0x5E94C89DL,0x5E94C89DL,0x4EE3CB9EL};
    int32_t **l_172 = (void*)0;
    int32_t **l_173 = &l_110[1][0][3];
    int i, j, k;
    p_1367->g_111 |= (safe_div_func_int8_t_s_s((((*l_76) = &p_1367->g_43[6][0]) != (void*)0), (((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 8))(p_1367->g_78.s588cb35b)).s25, ((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 2))((-8L), 1L)).xyxxyyyyyxxyxyxy, ((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))(1L, 0x7089E30C926164A3L)).xxxyyxyx >= ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(l_79.wyzwzwzzwzwxwxyy)) && ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 16))(l_80.s7672216576415312)), ((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0L, 0x5D98AE1F637114C0L)), 1L, 1L)).wxwxzwyzzxzwzzwy, ((VECTOR(int64_t, 4))(l_81.xxyx)).wyxzyyyzzzywyzwy)))))).s89, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))(l_79.z, 0x7567D2F72762B6CBL, ((VECTOR(int64_t, 8))(0x6A335EF5641E62B9L, 0x5C1F9A20850DA4A2L, 0x0F0EF91DD11AFF0EL, (((*l_100) = ((l_96[0][2][0] = (safe_add_func_int8_t_s_s(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 8))(p_1367->g_84.yxxyzxxy)).s01, ((VECTOR(int8_t, 16))(p_1367->g_85.yxyyxyxyyyxxyyyx)).s1a))).odd, (((*l_88) = p_1367->g_86[3]) == (p_1367->g_91 = ((*l_89) = &p_71)))))) && ((safe_rshift_func_int16_t_s_s(p_70, 12)) && l_79.z))) == (safe_unary_minus_func_uint32_t_u((safe_lshift_func_uint8_t_u_s((0x4A5129FF954D451FL || (safe_sub_func_int16_t_s_s((l_109[9][0] = 0x266AL), 6UL))), 7))))), p_70, 0x69E55FE406C9851BL, 0L, (-10L))).s1, 0L, 0x36ABE4C4CDA38E98L, 0x6697889B5E22BCF9L, (-1L), 0x0277B54E5BA6927BL, ((VECTOR(int64_t, 8))(0L)))).sb5b9 == ((VECTOR(int64_t, 4))(1L))))).odd))), ((VECTOR(int64_t, 4))(0x261D411996AC18B0L)), 0x0E0B9DA256C2D0C8L, (-7L))).s5765671774707562))).hi))).odd ^ ((VECTOR(int64_t, 4))(0x2CFD22C8C0895B47L))))).wxxyywyzzzwyywxy >= ((VECTOR(int64_t, 16))(0x4DD2EE47C4C41C8DL))))).hi))).s7247673236611721, ((VECTOR(int64_t, 16))(1L)), ((VECTOR(int64_t, 16))(1L)))))))).sd7))).odd , p_1367->g_85.x)));
    if ((((l_95[0][5] == (void*)0) , (safe_div_func_uint16_t_u_u(FAKE_DIVERGE(p_1367->global_2_offset, get_global_id(2), 10), ((VECTOR(uint16_t, 8))(p_1367->g_114.xxxyxyyx)).s1))) != (p_1367->g_85.x > p_1367->g_43[2][4])))
    { /* block id: 21 */
        VECTOR(int16_t, 4) l_119 = (VECTOR(int16_t, 4))(0x2352L, (VECTOR(int16_t, 2))(0x2352L, 0x1BBCL), 0x1BBCL);
        uint8_t ***l_120 = (void*)0;
        uint8_t ****l_121 = &l_88;
        VECTOR(int8_t, 16) l_124 = (VECTOR(int8_t, 16))(0x41L, (VECTOR(int8_t, 4))(0x41L, (VECTOR(int8_t, 2))(0x41L, 0x6EL), 0x6EL), 0x6EL, 0x41L, 0x6EL, (VECTOR(int8_t, 2))(0x41L, 0x6EL), (VECTOR(int8_t, 2))(0x41L, 0x6EL), 0x41L, 0x6EL, 0x41L, 0x6EL);
        VECTOR(int8_t, 16) l_127 = (VECTOR(int8_t, 16))(0x64L, (VECTOR(int8_t, 4))(0x64L, (VECTOR(int8_t, 2))(0x64L, 1L), 1L), 1L, 0x64L, 1L, (VECTOR(int8_t, 2))(0x64L, 1L), (VECTOR(int8_t, 2))(0x64L, 1L), 0x64L, 1L, 0x64L, 1L);
        int8_t *l_143 = (void*)0;
        int8_t *l_144 = (void*)0;
        int8_t *l_145 = (void*)0;
        int i;
        p_1367->g_146 |= (safe_sub_func_uint64_t_u_u((((safe_mod_func_int32_t_s_s((((VECTOR(int16_t, 16))(l_119.ywyzxxyzzxxzxwyx)).s0 | ((l_120 == ((*l_121) = &p_1367->g_91)) , ((safe_lshift_func_int16_t_s_u(p_70, ((&p_1367->g_111 == (void*)0) | (FAKE_DIVERGE(p_1367->local_1_offset, get_local_id(1), 10) < ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(l_124.sced94f1b)).even && ((VECTOR(int8_t, 8))((-7L), ((VECTOR(int8_t, 4))(l_125.s2574)), ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(0x03L, 0x23L)).yyyyxxyyyyxxxyyx && ((VECTOR(int8_t, 8))(p_1367->g_126.sd4334ece)).s7250731433127137))).sf, 0x42L, (-8L))).lo))).wywzxywxwwxxyyzw && ((VECTOR(int8_t, 16))(l_127.s18c2080768efdd03))))).sb)))) , (safe_mod_func_uint16_t_u_u((+(((p_70 = (safe_rshift_func_uint16_t_u_u((~((~(p_70 > ((((GROUP_DIVERGE(1, 1) != ((safe_mod_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s((((((((safe_sub_func_int16_t_s_s(((p_70 || (safe_mod_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(((l_127.s5 , p_1367->g_85.x) | p_70), 0x62L)), l_127.s3))) || l_142.s7), p_1367->g_126.s1)) && 0xB0AAL) || 0x0182948BL) <= 0x3AL) || p_1367->g_108) , (*l_89)) == (*l_89)), 6)), p_1367->g_114.y)) <= p_1367->g_84.y)) >= 4294967295UL) != p_1367->g_111) , p_1367->g_85.y))) | p_70)), 15))) >= (*p_1367->g_87)) | 0x9DBCL)), p_1367->g_85.y))))), 0x683FD957L)) & p_1367->g_43[2][4]) > l_127.se), 0x40AA69C249DFCDADL));
    }
    else
    { /* block id: 25 */
        int8_t l_149[2];
        uint16_t *l_160 = (void*)0;
        uint16_t *l_161 = (void*)0;
        uint16_t *l_162[5][2][1] = {{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}}};
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_149[i] = 0x28L;
        p_1367->g_111 ^= ((((-2L) == ((safe_mod_func_int8_t_s_s((p_1367->g_85.x = l_149[0]), (safe_sub_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s(p_1367->g_78.sa, ((p_1367->g_114.x = (safe_mul_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_u(p_70, (safe_lshift_func_uint16_t_u_s(p_1367->g_43[2][4], p_1367->g_78.s1)))) || 0x51L), 251UL))) != ((safe_sub_func_int64_t_s_s((safe_sub_func_uint16_t_u_u((p_1367->g_43[2][3] <= 0x168FEBB8D3784CA3L), p_70)), (-6L))) , (-1L))))), p_70)))) || p_70)) || p_70) <= 1L);
    }
    p_1367->g_167.x = (((p_70 <= (((*p_1367->g_87) <= (p_1367->g_84.z > p_70)) , p_70)) > ((p_1367->g_114.x &= (p_70 < ((VECTOR(int32_t, 8))(p_1367->g_167.zyxwwyzw)).s2)) || (safe_sub_func_int32_t_s_s((p_1367->g_111 = l_171[0]), p_70)))) == 4UL);
    (*l_173) = &p_1367->g_111;
    return p_71;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1368;
    struct S1* p_1367 = &c_1368;
    struct S1 c_1369 = {
        (VECTOR(int8_t, 2))(0x27L, 0x59L), // p_1367->g_4
        (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x7FL), 0x7FL), 0x7FL, 1UL, 0x7FL), // p_1367->g_11
        {{0x9BL,0x9BL,4UL,0xDCL,3UL,0xEAL},{0x9BL,0x9BL,4UL,0xDCL,3UL,0xEAL},{0x9BL,0x9BL,4UL,0xDCL,3UL,0xEAL},{0x9BL,0x9BL,4UL,0xDCL,3UL,0xEAL},{0x9BL,0x9BL,4UL,0xDCL,3UL,0xEAL},{0x9BL,0x9BL,4UL,0xDCL,3UL,0xEAL},{0x9BL,0x9BL,4UL,0xDCL,3UL,0xEAL},{0x9BL,0x9BL,4UL,0xDCL,3UL,0xEAL},{0x9BL,0x9BL,4UL,0xDCL,3UL,0xEAL}}, // p_1367->g_43
        (VECTOR(int64_t, 16))((-5L), (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), 0x170EAE3254C1C085L), 0x170EAE3254C1C085L), 0x170EAE3254C1C085L, (-5L), 0x170EAE3254C1C085L, (VECTOR(int64_t, 2))((-5L), 0x170EAE3254C1C085L), (VECTOR(int64_t, 2))((-5L), 0x170EAE3254C1C085L), (-5L), 0x170EAE3254C1C085L, (-5L), 0x170EAE3254C1C085L), // p_1367->g_78
        (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 5L), 5L), // p_1367->g_84
        (VECTOR(int8_t, 2))(0x46L, 0x35L), // p_1367->g_85
        &p_1367->g_43[2][4], // p_1367->g_87
        {&p_1367->g_87,&p_1367->g_87,&p_1367->g_87,&p_1367->g_87,&p_1367->g_87}, // p_1367->g_86
        (void*)0, // p_1367->g_91
        1UL, // p_1367->g_101
        0x4069L, // p_1367->g_108
        0x372A2668L, // p_1367->g_111
        (VECTOR(uint16_t, 2))(65530UL, 0x4EE2L), // p_1367->g_114
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x7AL), 0x7AL), 0x7AL, 1L, 0x7AL, (VECTOR(int8_t, 2))(1L, 0x7AL), (VECTOR(int8_t, 2))(1L, 0x7AL), 1L, 0x7AL, 1L, 0x7AL), // p_1367->g_126
        0x5161A44FB7190DC9L, // p_1367->g_146
        (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0x1C58A5EDL), 0x1C58A5EDL), // p_1367->g_167
        0x7D4EL, // p_1367->g_189
        &p_1367->g_189, // p_1367->g_188
        {{&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188},{&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188},{&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188},{&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188},{&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188},{&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188},{&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188},{&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188,&p_1367->g_188}}, // p_1367->g_187
        (VECTOR(int16_t, 2))((-4L), (-1L)), // p_1367->g_241
        (VECTOR(int16_t, 4))(0x6F8EL, (VECTOR(int16_t, 2))(0x6F8EL, 0x0BFDL), 0x0BFDL), // p_1367->g_243
        (VECTOR(int8_t, 2))(1L, 0x17L), // p_1367->g_251
        0x2BB00D93FB0A9CF2L, // p_1367->g_289
        &p_1367->g_111, // p_1367->g_304
        &p_1367->g_304, // p_1367->g_303
        (VECTOR(int32_t, 16))(0x7E344216L, (VECTOR(int32_t, 4))(0x7E344216L, (VECTOR(int32_t, 2))(0x7E344216L, 0x05C36656L), 0x05C36656L), 0x05C36656L, 0x7E344216L, 0x05C36656L, (VECTOR(int32_t, 2))(0x7E344216L, 0x05C36656L), (VECTOR(int32_t, 2))(0x7E344216L, 0x05C36656L), 0x7E344216L, 0x05C36656L, 0x7E344216L, 0x05C36656L), // p_1367->g_305
        (VECTOR(int16_t, 4))(0x4199L, (VECTOR(int16_t, 2))(0x4199L, 0x207EL), 0x207EL), // p_1367->g_336
        (VECTOR(int16_t, 8))(0x2EF3L, (VECTOR(int16_t, 4))(0x2EF3L, (VECTOR(int16_t, 2))(0x2EF3L, 0L), 0L), 0L, 0x2EF3L, 0L), // p_1367->g_337
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x7585L), 0x7585L), // p_1367->g_338
        0x2F9AL, // p_1367->g_342
        (VECTOR(uint16_t, 16))(65533UL, (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0xFB47L), 0xFB47L), 0xFB47L, 65533UL, 0xFB47L, (VECTOR(uint16_t, 2))(65533UL, 0xFB47L), (VECTOR(uint16_t, 2))(65533UL, 0xFB47L), 65533UL, 0xFB47L, 65533UL, 0xFB47L), // p_1367->g_398
        0x4A5CC6EE22AE4E9DL, // p_1367->g_421
        &p_1367->g_421, // p_1367->g_420
        &p_1367->g_420, // p_1367->g_419
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x349AL), 0x349AL), // p_1367->g_436
        (VECTOR(int32_t, 16))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, (-4L)), (-4L)), (-4L), 2L, (-4L), (VECTOR(int32_t, 2))(2L, (-4L)), (VECTOR(int32_t, 2))(2L, (-4L)), 2L, (-4L), 2L, (-4L)), // p_1367->g_450
        1L, // p_1367->g_457
        &p_1367->g_91, // p_1367->g_474
        &p_1367->g_474, // p_1367->g_473
        (void*)0, // p_1367->g_491
        6UL, // p_1367->g_526
        {{0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L),0x60392CB646BB0727L,0x4FE75F887E6FA9C4L,0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L)},{0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L),0x60392CB646BB0727L,0x4FE75F887E6FA9C4L,0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L)},{0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L),0x60392CB646BB0727L,0x4FE75F887E6FA9C4L,0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L)},{0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L),0x60392CB646BB0727L,0x4FE75F887E6FA9C4L,0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L)},{0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L),0x60392CB646BB0727L,0x4FE75F887E6FA9C4L,0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L)},{0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L),0x60392CB646BB0727L,0x4FE75F887E6FA9C4L,0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L)},{0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L),0x60392CB646BB0727L,0x4FE75F887E6FA9C4L,0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L)},{0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L),0x60392CB646BB0727L,0x4FE75F887E6FA9C4L,0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L)},{0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L),0x60392CB646BB0727L,0x4FE75F887E6FA9C4L,0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L)},{0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L),0x60392CB646BB0727L,0x4FE75F887E6FA9C4L,0x4FE75F887E6FA9C4L,0x60392CB646BB0727L,(-9L)}}, // p_1367->g_545
        (VECTOR(int8_t, 4))(0x52L, (VECTOR(int8_t, 2))(0x52L, 0x78L), 0x78L), // p_1367->g_560
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x0AF426EFL), 0x0AF426EFL), 0x0AF426EFL, 0L, 0x0AF426EFL), // p_1367->g_565
        (VECTOR(int32_t, 2))((-9L), (-10L)), // p_1367->g_699
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x252E4ABDL), 0x252E4ABDL), // p_1367->g_708
        (VECTOR(int32_t, 8))(0x3266753BL, (VECTOR(int32_t, 4))(0x3266753BL, (VECTOR(int32_t, 2))(0x3266753BL, 0x4695342FL), 0x4695342FL), 0x4695342FL, 0x3266753BL, 0x4695342FL), // p_1367->g_743
        (VECTOR(int32_t, 2))(0x66D23FB5L, (-1L)), // p_1367->g_744
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x16EF37DFL), 0x16EF37DFL), 0x16EF37DFL, 0L, 0x16EF37DFL), // p_1367->g_745
        0x1858B4305B53105BL, // p_1367->g_822
        (VECTOR(uint32_t, 16))(0x4A04AD66L, (VECTOR(uint32_t, 4))(0x4A04AD66L, (VECTOR(uint32_t, 2))(0x4A04AD66L, 0UL), 0UL), 0UL, 0x4A04AD66L, 0UL, (VECTOR(uint32_t, 2))(0x4A04AD66L, 0UL), (VECTOR(uint32_t, 2))(0x4A04AD66L, 0UL), 0x4A04AD66L, 0UL, 0x4A04AD66L, 0UL), // p_1367->g_846
        {{{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491}},{{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491}},{{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491}},{{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491}},{{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491}},{{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491},{&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491,&p_1367->g_491}}}, // p_1367->g_887
        0x2AL, // p_1367->g_928
        (VECTOR(uint8_t, 4))(0x88L, (VECTOR(uint8_t, 2))(0x88L, 0UL), 0UL), // p_1367->g_949
        (VECTOR(uint16_t, 8))(0x806CL, (VECTOR(uint16_t, 4))(0x806CL, (VECTOR(uint16_t, 2))(0x806CL, 0UL), 0UL), 0UL, 0x806CL, 0UL), // p_1367->g_954
        0L, // p_1367->g_959
        (VECTOR(uint64_t, 2))(0xF400BE819D1DD61FL, 0xC59E6DAD59675F12L), // p_1367->g_987
        (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 0UL), 0UL, 18446744073709551615UL, 0UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 18446744073709551615UL, 0UL, 18446744073709551615UL, 0UL), // p_1367->g_989
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x5AEBDD157AE61EC7L), 0x5AEBDD157AE61EC7L), // p_1367->g_1008
        (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL), // p_1367->g_1031
        0L, // p_1367->g_1086
        0xB762DF793491007FL, // p_1367->g_1110
        {{(-10L)},{(-10L)}}, // p_1367->g_1124
        0L, // p_1367->g_1125
        (-4L), // p_1367->g_1130
        &p_1367->g_1130, // p_1367->g_1129
        &p_1367->g_1129, // p_1367->g_1128
        (VECTOR(int64_t, 16))(0x62DFD82E9B1A22C8L, (VECTOR(int64_t, 4))(0x62DFD82E9B1A22C8L, (VECTOR(int64_t, 2))(0x62DFD82E9B1A22C8L, 0x00BCAD179578F07BL), 0x00BCAD179578F07BL), 0x00BCAD179578F07BL, 0x62DFD82E9B1A22C8L, 0x00BCAD179578F07BL, (VECTOR(int64_t, 2))(0x62DFD82E9B1A22C8L, 0x00BCAD179578F07BL), (VECTOR(int64_t, 2))(0x62DFD82E9B1A22C8L, 0x00BCAD179578F07BL), 0x62DFD82E9B1A22C8L, 0x00BCAD179578F07BL, 0x62DFD82E9B1A22C8L, 0x00BCAD179578F07BL), // p_1367->g_1151
        0UL, // p_1367->g_1178
        (VECTOR(uint64_t, 2))(0x817A7D88B1B5644EL, 0xD1E22C9EBFE0737DL), // p_1367->g_1190
        (VECTOR(uint16_t, 8))(0x71F1L, (VECTOR(uint16_t, 4))(0x71F1L, (VECTOR(uint16_t, 2))(0x71F1L, 0x9BBDL), 0x9BBDL), 0x9BBDL, 0x71F1L, 0x9BBDL), // p_1367->g_1260
        (VECTOR(uint16_t, 16))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 1UL), 1UL), 1UL, 9UL, 1UL, (VECTOR(uint16_t, 2))(9UL, 1UL), (VECTOR(uint16_t, 2))(9UL, 1UL), 9UL, 1UL, 9UL, 1UL), // p_1367->g_1266
        (VECTOR(uint16_t, 4))(0xB03AL, (VECTOR(uint16_t, 2))(0xB03AL, 1UL), 1UL), // p_1367->g_1271
        (VECTOR(uint16_t, 8))(65529UL, (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 0xAA63L), 0xAA63L), 0xAA63L, 65529UL, 0xAA63L), // p_1367->g_1276
        (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint16_t, 2))(1UL, 0UL), (VECTOR(uint16_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL), // p_1367->g_1278
        (VECTOR(int8_t, 2))((-4L), (-7L)), // p_1367->g_1287
        (VECTOR(int8_t, 2))(1L, 0x52L), // p_1367->g_1308
        (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0x5EF2L), 0x5EF2L), // p_1367->g_1314
        1L, // p_1367->g_1323
        (-4L), // p_1367->g_1343
        sequence_input[get_global_id(0)], // p_1367->global_0_offset
        sequence_input[get_global_id(1)], // p_1367->global_1_offset
        sequence_input[get_global_id(2)], // p_1367->global_2_offset
        sequence_input[get_local_id(0)], // p_1367->local_0_offset
        sequence_input[get_local_id(1)], // p_1367->local_1_offset
        sequence_input[get_local_id(2)], // p_1367->local_2_offset
        sequence_input[get_group_id(0)], // p_1367->group_0_offset
        sequence_input[get_group_id(1)], // p_1367->group_1_offset
        sequence_input[get_group_id(2)], // p_1367->group_2_offset
    };
    c_1368 = c_1369;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1367);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1367->g_4.x, "p_1367->g_4.x", print_hash_value);
    transparent_crc(p_1367->g_4.y, "p_1367->g_4.y", print_hash_value);
    transparent_crc(p_1367->g_11.s0, "p_1367->g_11.s0", print_hash_value);
    transparent_crc(p_1367->g_11.s1, "p_1367->g_11.s1", print_hash_value);
    transparent_crc(p_1367->g_11.s2, "p_1367->g_11.s2", print_hash_value);
    transparent_crc(p_1367->g_11.s3, "p_1367->g_11.s3", print_hash_value);
    transparent_crc(p_1367->g_11.s4, "p_1367->g_11.s4", print_hash_value);
    transparent_crc(p_1367->g_11.s5, "p_1367->g_11.s5", print_hash_value);
    transparent_crc(p_1367->g_11.s6, "p_1367->g_11.s6", print_hash_value);
    transparent_crc(p_1367->g_11.s7, "p_1367->g_11.s7", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1367->g_43[i][j], "p_1367->g_43[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1367->g_78.s0, "p_1367->g_78.s0", print_hash_value);
    transparent_crc(p_1367->g_78.s1, "p_1367->g_78.s1", print_hash_value);
    transparent_crc(p_1367->g_78.s2, "p_1367->g_78.s2", print_hash_value);
    transparent_crc(p_1367->g_78.s3, "p_1367->g_78.s3", print_hash_value);
    transparent_crc(p_1367->g_78.s4, "p_1367->g_78.s4", print_hash_value);
    transparent_crc(p_1367->g_78.s5, "p_1367->g_78.s5", print_hash_value);
    transparent_crc(p_1367->g_78.s6, "p_1367->g_78.s6", print_hash_value);
    transparent_crc(p_1367->g_78.s7, "p_1367->g_78.s7", print_hash_value);
    transparent_crc(p_1367->g_78.s8, "p_1367->g_78.s8", print_hash_value);
    transparent_crc(p_1367->g_78.s9, "p_1367->g_78.s9", print_hash_value);
    transparent_crc(p_1367->g_78.sa, "p_1367->g_78.sa", print_hash_value);
    transparent_crc(p_1367->g_78.sb, "p_1367->g_78.sb", print_hash_value);
    transparent_crc(p_1367->g_78.sc, "p_1367->g_78.sc", print_hash_value);
    transparent_crc(p_1367->g_78.sd, "p_1367->g_78.sd", print_hash_value);
    transparent_crc(p_1367->g_78.se, "p_1367->g_78.se", print_hash_value);
    transparent_crc(p_1367->g_78.sf, "p_1367->g_78.sf", print_hash_value);
    transparent_crc(p_1367->g_84.x, "p_1367->g_84.x", print_hash_value);
    transparent_crc(p_1367->g_84.y, "p_1367->g_84.y", print_hash_value);
    transparent_crc(p_1367->g_84.z, "p_1367->g_84.z", print_hash_value);
    transparent_crc(p_1367->g_84.w, "p_1367->g_84.w", print_hash_value);
    transparent_crc(p_1367->g_85.x, "p_1367->g_85.x", print_hash_value);
    transparent_crc(p_1367->g_85.y, "p_1367->g_85.y", print_hash_value);
    transparent_crc(p_1367->g_101, "p_1367->g_101", print_hash_value);
    transparent_crc(p_1367->g_108, "p_1367->g_108", print_hash_value);
    transparent_crc(p_1367->g_111, "p_1367->g_111", print_hash_value);
    transparent_crc(p_1367->g_114.x, "p_1367->g_114.x", print_hash_value);
    transparent_crc(p_1367->g_114.y, "p_1367->g_114.y", print_hash_value);
    transparent_crc(p_1367->g_126.s0, "p_1367->g_126.s0", print_hash_value);
    transparent_crc(p_1367->g_126.s1, "p_1367->g_126.s1", print_hash_value);
    transparent_crc(p_1367->g_126.s2, "p_1367->g_126.s2", print_hash_value);
    transparent_crc(p_1367->g_126.s3, "p_1367->g_126.s3", print_hash_value);
    transparent_crc(p_1367->g_126.s4, "p_1367->g_126.s4", print_hash_value);
    transparent_crc(p_1367->g_126.s5, "p_1367->g_126.s5", print_hash_value);
    transparent_crc(p_1367->g_126.s6, "p_1367->g_126.s6", print_hash_value);
    transparent_crc(p_1367->g_126.s7, "p_1367->g_126.s7", print_hash_value);
    transparent_crc(p_1367->g_126.s8, "p_1367->g_126.s8", print_hash_value);
    transparent_crc(p_1367->g_126.s9, "p_1367->g_126.s9", print_hash_value);
    transparent_crc(p_1367->g_126.sa, "p_1367->g_126.sa", print_hash_value);
    transparent_crc(p_1367->g_126.sb, "p_1367->g_126.sb", print_hash_value);
    transparent_crc(p_1367->g_126.sc, "p_1367->g_126.sc", print_hash_value);
    transparent_crc(p_1367->g_126.sd, "p_1367->g_126.sd", print_hash_value);
    transparent_crc(p_1367->g_126.se, "p_1367->g_126.se", print_hash_value);
    transparent_crc(p_1367->g_126.sf, "p_1367->g_126.sf", print_hash_value);
    transparent_crc(p_1367->g_146, "p_1367->g_146", print_hash_value);
    transparent_crc(p_1367->g_167.x, "p_1367->g_167.x", print_hash_value);
    transparent_crc(p_1367->g_167.y, "p_1367->g_167.y", print_hash_value);
    transparent_crc(p_1367->g_167.z, "p_1367->g_167.z", print_hash_value);
    transparent_crc(p_1367->g_167.w, "p_1367->g_167.w", print_hash_value);
    transparent_crc(p_1367->g_189, "p_1367->g_189", print_hash_value);
    transparent_crc(p_1367->g_241.x, "p_1367->g_241.x", print_hash_value);
    transparent_crc(p_1367->g_241.y, "p_1367->g_241.y", print_hash_value);
    transparent_crc(p_1367->g_243.x, "p_1367->g_243.x", print_hash_value);
    transparent_crc(p_1367->g_243.y, "p_1367->g_243.y", print_hash_value);
    transparent_crc(p_1367->g_243.z, "p_1367->g_243.z", print_hash_value);
    transparent_crc(p_1367->g_243.w, "p_1367->g_243.w", print_hash_value);
    transparent_crc(p_1367->g_251.x, "p_1367->g_251.x", print_hash_value);
    transparent_crc(p_1367->g_251.y, "p_1367->g_251.y", print_hash_value);
    transparent_crc(p_1367->g_289, "p_1367->g_289", print_hash_value);
    transparent_crc(p_1367->g_305.s0, "p_1367->g_305.s0", print_hash_value);
    transparent_crc(p_1367->g_305.s1, "p_1367->g_305.s1", print_hash_value);
    transparent_crc(p_1367->g_305.s2, "p_1367->g_305.s2", print_hash_value);
    transparent_crc(p_1367->g_305.s3, "p_1367->g_305.s3", print_hash_value);
    transparent_crc(p_1367->g_305.s4, "p_1367->g_305.s4", print_hash_value);
    transparent_crc(p_1367->g_305.s5, "p_1367->g_305.s5", print_hash_value);
    transparent_crc(p_1367->g_305.s6, "p_1367->g_305.s6", print_hash_value);
    transparent_crc(p_1367->g_305.s7, "p_1367->g_305.s7", print_hash_value);
    transparent_crc(p_1367->g_305.s8, "p_1367->g_305.s8", print_hash_value);
    transparent_crc(p_1367->g_305.s9, "p_1367->g_305.s9", print_hash_value);
    transparent_crc(p_1367->g_305.sa, "p_1367->g_305.sa", print_hash_value);
    transparent_crc(p_1367->g_305.sb, "p_1367->g_305.sb", print_hash_value);
    transparent_crc(p_1367->g_305.sc, "p_1367->g_305.sc", print_hash_value);
    transparent_crc(p_1367->g_305.sd, "p_1367->g_305.sd", print_hash_value);
    transparent_crc(p_1367->g_305.se, "p_1367->g_305.se", print_hash_value);
    transparent_crc(p_1367->g_305.sf, "p_1367->g_305.sf", print_hash_value);
    transparent_crc(p_1367->g_336.x, "p_1367->g_336.x", print_hash_value);
    transparent_crc(p_1367->g_336.y, "p_1367->g_336.y", print_hash_value);
    transparent_crc(p_1367->g_336.z, "p_1367->g_336.z", print_hash_value);
    transparent_crc(p_1367->g_336.w, "p_1367->g_336.w", print_hash_value);
    transparent_crc(p_1367->g_337.s0, "p_1367->g_337.s0", print_hash_value);
    transparent_crc(p_1367->g_337.s1, "p_1367->g_337.s1", print_hash_value);
    transparent_crc(p_1367->g_337.s2, "p_1367->g_337.s2", print_hash_value);
    transparent_crc(p_1367->g_337.s3, "p_1367->g_337.s3", print_hash_value);
    transparent_crc(p_1367->g_337.s4, "p_1367->g_337.s4", print_hash_value);
    transparent_crc(p_1367->g_337.s5, "p_1367->g_337.s5", print_hash_value);
    transparent_crc(p_1367->g_337.s6, "p_1367->g_337.s6", print_hash_value);
    transparent_crc(p_1367->g_337.s7, "p_1367->g_337.s7", print_hash_value);
    transparent_crc(p_1367->g_338.x, "p_1367->g_338.x", print_hash_value);
    transparent_crc(p_1367->g_338.y, "p_1367->g_338.y", print_hash_value);
    transparent_crc(p_1367->g_338.z, "p_1367->g_338.z", print_hash_value);
    transparent_crc(p_1367->g_338.w, "p_1367->g_338.w", print_hash_value);
    transparent_crc(p_1367->g_342, "p_1367->g_342", print_hash_value);
    transparent_crc(p_1367->g_398.s0, "p_1367->g_398.s0", print_hash_value);
    transparent_crc(p_1367->g_398.s1, "p_1367->g_398.s1", print_hash_value);
    transparent_crc(p_1367->g_398.s2, "p_1367->g_398.s2", print_hash_value);
    transparent_crc(p_1367->g_398.s3, "p_1367->g_398.s3", print_hash_value);
    transparent_crc(p_1367->g_398.s4, "p_1367->g_398.s4", print_hash_value);
    transparent_crc(p_1367->g_398.s5, "p_1367->g_398.s5", print_hash_value);
    transparent_crc(p_1367->g_398.s6, "p_1367->g_398.s6", print_hash_value);
    transparent_crc(p_1367->g_398.s7, "p_1367->g_398.s7", print_hash_value);
    transparent_crc(p_1367->g_398.s8, "p_1367->g_398.s8", print_hash_value);
    transparent_crc(p_1367->g_398.s9, "p_1367->g_398.s9", print_hash_value);
    transparent_crc(p_1367->g_398.sa, "p_1367->g_398.sa", print_hash_value);
    transparent_crc(p_1367->g_398.sb, "p_1367->g_398.sb", print_hash_value);
    transparent_crc(p_1367->g_398.sc, "p_1367->g_398.sc", print_hash_value);
    transparent_crc(p_1367->g_398.sd, "p_1367->g_398.sd", print_hash_value);
    transparent_crc(p_1367->g_398.se, "p_1367->g_398.se", print_hash_value);
    transparent_crc(p_1367->g_398.sf, "p_1367->g_398.sf", print_hash_value);
    transparent_crc(p_1367->g_421, "p_1367->g_421", print_hash_value);
    transparent_crc(p_1367->g_436.x, "p_1367->g_436.x", print_hash_value);
    transparent_crc(p_1367->g_436.y, "p_1367->g_436.y", print_hash_value);
    transparent_crc(p_1367->g_436.z, "p_1367->g_436.z", print_hash_value);
    transparent_crc(p_1367->g_436.w, "p_1367->g_436.w", print_hash_value);
    transparent_crc(p_1367->g_450.s0, "p_1367->g_450.s0", print_hash_value);
    transparent_crc(p_1367->g_450.s1, "p_1367->g_450.s1", print_hash_value);
    transparent_crc(p_1367->g_450.s2, "p_1367->g_450.s2", print_hash_value);
    transparent_crc(p_1367->g_450.s3, "p_1367->g_450.s3", print_hash_value);
    transparent_crc(p_1367->g_450.s4, "p_1367->g_450.s4", print_hash_value);
    transparent_crc(p_1367->g_450.s5, "p_1367->g_450.s5", print_hash_value);
    transparent_crc(p_1367->g_450.s6, "p_1367->g_450.s6", print_hash_value);
    transparent_crc(p_1367->g_450.s7, "p_1367->g_450.s7", print_hash_value);
    transparent_crc(p_1367->g_450.s8, "p_1367->g_450.s8", print_hash_value);
    transparent_crc(p_1367->g_450.s9, "p_1367->g_450.s9", print_hash_value);
    transparent_crc(p_1367->g_450.sa, "p_1367->g_450.sa", print_hash_value);
    transparent_crc(p_1367->g_450.sb, "p_1367->g_450.sb", print_hash_value);
    transparent_crc(p_1367->g_450.sc, "p_1367->g_450.sc", print_hash_value);
    transparent_crc(p_1367->g_450.sd, "p_1367->g_450.sd", print_hash_value);
    transparent_crc(p_1367->g_450.se, "p_1367->g_450.se", print_hash_value);
    transparent_crc(p_1367->g_450.sf, "p_1367->g_450.sf", print_hash_value);
    transparent_crc(p_1367->g_457, "p_1367->g_457", print_hash_value);
    transparent_crc(p_1367->g_526, "p_1367->g_526", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1367->g_545[i][j], "p_1367->g_545[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1367->g_560.x, "p_1367->g_560.x", print_hash_value);
    transparent_crc(p_1367->g_560.y, "p_1367->g_560.y", print_hash_value);
    transparent_crc(p_1367->g_560.z, "p_1367->g_560.z", print_hash_value);
    transparent_crc(p_1367->g_560.w, "p_1367->g_560.w", print_hash_value);
    transparent_crc(p_1367->g_565.s0, "p_1367->g_565.s0", print_hash_value);
    transparent_crc(p_1367->g_565.s1, "p_1367->g_565.s1", print_hash_value);
    transparent_crc(p_1367->g_565.s2, "p_1367->g_565.s2", print_hash_value);
    transparent_crc(p_1367->g_565.s3, "p_1367->g_565.s3", print_hash_value);
    transparent_crc(p_1367->g_565.s4, "p_1367->g_565.s4", print_hash_value);
    transparent_crc(p_1367->g_565.s5, "p_1367->g_565.s5", print_hash_value);
    transparent_crc(p_1367->g_565.s6, "p_1367->g_565.s6", print_hash_value);
    transparent_crc(p_1367->g_565.s7, "p_1367->g_565.s7", print_hash_value);
    transparent_crc(p_1367->g_699.x, "p_1367->g_699.x", print_hash_value);
    transparent_crc(p_1367->g_699.y, "p_1367->g_699.y", print_hash_value);
    transparent_crc(p_1367->g_708.x, "p_1367->g_708.x", print_hash_value);
    transparent_crc(p_1367->g_708.y, "p_1367->g_708.y", print_hash_value);
    transparent_crc(p_1367->g_708.z, "p_1367->g_708.z", print_hash_value);
    transparent_crc(p_1367->g_708.w, "p_1367->g_708.w", print_hash_value);
    transparent_crc(p_1367->g_743.s0, "p_1367->g_743.s0", print_hash_value);
    transparent_crc(p_1367->g_743.s1, "p_1367->g_743.s1", print_hash_value);
    transparent_crc(p_1367->g_743.s2, "p_1367->g_743.s2", print_hash_value);
    transparent_crc(p_1367->g_743.s3, "p_1367->g_743.s3", print_hash_value);
    transparent_crc(p_1367->g_743.s4, "p_1367->g_743.s4", print_hash_value);
    transparent_crc(p_1367->g_743.s5, "p_1367->g_743.s5", print_hash_value);
    transparent_crc(p_1367->g_743.s6, "p_1367->g_743.s6", print_hash_value);
    transparent_crc(p_1367->g_743.s7, "p_1367->g_743.s7", print_hash_value);
    transparent_crc(p_1367->g_744.x, "p_1367->g_744.x", print_hash_value);
    transparent_crc(p_1367->g_744.y, "p_1367->g_744.y", print_hash_value);
    transparent_crc(p_1367->g_745.s0, "p_1367->g_745.s0", print_hash_value);
    transparent_crc(p_1367->g_745.s1, "p_1367->g_745.s1", print_hash_value);
    transparent_crc(p_1367->g_745.s2, "p_1367->g_745.s2", print_hash_value);
    transparent_crc(p_1367->g_745.s3, "p_1367->g_745.s3", print_hash_value);
    transparent_crc(p_1367->g_745.s4, "p_1367->g_745.s4", print_hash_value);
    transparent_crc(p_1367->g_745.s5, "p_1367->g_745.s5", print_hash_value);
    transparent_crc(p_1367->g_745.s6, "p_1367->g_745.s6", print_hash_value);
    transparent_crc(p_1367->g_745.s7, "p_1367->g_745.s7", print_hash_value);
    transparent_crc(p_1367->g_822, "p_1367->g_822", print_hash_value);
    transparent_crc(p_1367->g_846.s0, "p_1367->g_846.s0", print_hash_value);
    transparent_crc(p_1367->g_846.s1, "p_1367->g_846.s1", print_hash_value);
    transparent_crc(p_1367->g_846.s2, "p_1367->g_846.s2", print_hash_value);
    transparent_crc(p_1367->g_846.s3, "p_1367->g_846.s3", print_hash_value);
    transparent_crc(p_1367->g_846.s4, "p_1367->g_846.s4", print_hash_value);
    transparent_crc(p_1367->g_846.s5, "p_1367->g_846.s5", print_hash_value);
    transparent_crc(p_1367->g_846.s6, "p_1367->g_846.s6", print_hash_value);
    transparent_crc(p_1367->g_846.s7, "p_1367->g_846.s7", print_hash_value);
    transparent_crc(p_1367->g_846.s8, "p_1367->g_846.s8", print_hash_value);
    transparent_crc(p_1367->g_846.s9, "p_1367->g_846.s9", print_hash_value);
    transparent_crc(p_1367->g_846.sa, "p_1367->g_846.sa", print_hash_value);
    transparent_crc(p_1367->g_846.sb, "p_1367->g_846.sb", print_hash_value);
    transparent_crc(p_1367->g_846.sc, "p_1367->g_846.sc", print_hash_value);
    transparent_crc(p_1367->g_846.sd, "p_1367->g_846.sd", print_hash_value);
    transparent_crc(p_1367->g_846.se, "p_1367->g_846.se", print_hash_value);
    transparent_crc(p_1367->g_846.sf, "p_1367->g_846.sf", print_hash_value);
    transparent_crc(p_1367->g_928, "p_1367->g_928", print_hash_value);
    transparent_crc(p_1367->g_949.x, "p_1367->g_949.x", print_hash_value);
    transparent_crc(p_1367->g_949.y, "p_1367->g_949.y", print_hash_value);
    transparent_crc(p_1367->g_949.z, "p_1367->g_949.z", print_hash_value);
    transparent_crc(p_1367->g_949.w, "p_1367->g_949.w", print_hash_value);
    transparent_crc(p_1367->g_954.s0, "p_1367->g_954.s0", print_hash_value);
    transparent_crc(p_1367->g_954.s1, "p_1367->g_954.s1", print_hash_value);
    transparent_crc(p_1367->g_954.s2, "p_1367->g_954.s2", print_hash_value);
    transparent_crc(p_1367->g_954.s3, "p_1367->g_954.s3", print_hash_value);
    transparent_crc(p_1367->g_954.s4, "p_1367->g_954.s4", print_hash_value);
    transparent_crc(p_1367->g_954.s5, "p_1367->g_954.s5", print_hash_value);
    transparent_crc(p_1367->g_954.s6, "p_1367->g_954.s6", print_hash_value);
    transparent_crc(p_1367->g_954.s7, "p_1367->g_954.s7", print_hash_value);
    transparent_crc(p_1367->g_959, "p_1367->g_959", print_hash_value);
    transparent_crc(p_1367->g_987.x, "p_1367->g_987.x", print_hash_value);
    transparent_crc(p_1367->g_987.y, "p_1367->g_987.y", print_hash_value);
    transparent_crc(p_1367->g_989.s0, "p_1367->g_989.s0", print_hash_value);
    transparent_crc(p_1367->g_989.s1, "p_1367->g_989.s1", print_hash_value);
    transparent_crc(p_1367->g_989.s2, "p_1367->g_989.s2", print_hash_value);
    transparent_crc(p_1367->g_989.s3, "p_1367->g_989.s3", print_hash_value);
    transparent_crc(p_1367->g_989.s4, "p_1367->g_989.s4", print_hash_value);
    transparent_crc(p_1367->g_989.s5, "p_1367->g_989.s5", print_hash_value);
    transparent_crc(p_1367->g_989.s6, "p_1367->g_989.s6", print_hash_value);
    transparent_crc(p_1367->g_989.s7, "p_1367->g_989.s7", print_hash_value);
    transparent_crc(p_1367->g_989.s8, "p_1367->g_989.s8", print_hash_value);
    transparent_crc(p_1367->g_989.s9, "p_1367->g_989.s9", print_hash_value);
    transparent_crc(p_1367->g_989.sa, "p_1367->g_989.sa", print_hash_value);
    transparent_crc(p_1367->g_989.sb, "p_1367->g_989.sb", print_hash_value);
    transparent_crc(p_1367->g_989.sc, "p_1367->g_989.sc", print_hash_value);
    transparent_crc(p_1367->g_989.sd, "p_1367->g_989.sd", print_hash_value);
    transparent_crc(p_1367->g_989.se, "p_1367->g_989.se", print_hash_value);
    transparent_crc(p_1367->g_989.sf, "p_1367->g_989.sf", print_hash_value);
    transparent_crc(p_1367->g_1008.x, "p_1367->g_1008.x", print_hash_value);
    transparent_crc(p_1367->g_1008.y, "p_1367->g_1008.y", print_hash_value);
    transparent_crc(p_1367->g_1008.z, "p_1367->g_1008.z", print_hash_value);
    transparent_crc(p_1367->g_1008.w, "p_1367->g_1008.w", print_hash_value);
    transparent_crc(p_1367->g_1031.s0, "p_1367->g_1031.s0", print_hash_value);
    transparent_crc(p_1367->g_1031.s1, "p_1367->g_1031.s1", print_hash_value);
    transparent_crc(p_1367->g_1031.s2, "p_1367->g_1031.s2", print_hash_value);
    transparent_crc(p_1367->g_1031.s3, "p_1367->g_1031.s3", print_hash_value);
    transparent_crc(p_1367->g_1031.s4, "p_1367->g_1031.s4", print_hash_value);
    transparent_crc(p_1367->g_1031.s5, "p_1367->g_1031.s5", print_hash_value);
    transparent_crc(p_1367->g_1031.s6, "p_1367->g_1031.s6", print_hash_value);
    transparent_crc(p_1367->g_1031.s7, "p_1367->g_1031.s7", print_hash_value);
    transparent_crc(p_1367->g_1086, "p_1367->g_1086", print_hash_value);
    transparent_crc(p_1367->g_1110, "p_1367->g_1110", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1367->g_1124[i][j], "p_1367->g_1124[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1367->g_1125, "p_1367->g_1125", print_hash_value);
    transparent_crc(p_1367->g_1130, "p_1367->g_1130", print_hash_value);
    transparent_crc(p_1367->g_1151.s0, "p_1367->g_1151.s0", print_hash_value);
    transparent_crc(p_1367->g_1151.s1, "p_1367->g_1151.s1", print_hash_value);
    transparent_crc(p_1367->g_1151.s2, "p_1367->g_1151.s2", print_hash_value);
    transparent_crc(p_1367->g_1151.s3, "p_1367->g_1151.s3", print_hash_value);
    transparent_crc(p_1367->g_1151.s4, "p_1367->g_1151.s4", print_hash_value);
    transparent_crc(p_1367->g_1151.s5, "p_1367->g_1151.s5", print_hash_value);
    transparent_crc(p_1367->g_1151.s6, "p_1367->g_1151.s6", print_hash_value);
    transparent_crc(p_1367->g_1151.s7, "p_1367->g_1151.s7", print_hash_value);
    transparent_crc(p_1367->g_1151.s8, "p_1367->g_1151.s8", print_hash_value);
    transparent_crc(p_1367->g_1151.s9, "p_1367->g_1151.s9", print_hash_value);
    transparent_crc(p_1367->g_1151.sa, "p_1367->g_1151.sa", print_hash_value);
    transparent_crc(p_1367->g_1151.sb, "p_1367->g_1151.sb", print_hash_value);
    transparent_crc(p_1367->g_1151.sc, "p_1367->g_1151.sc", print_hash_value);
    transparent_crc(p_1367->g_1151.sd, "p_1367->g_1151.sd", print_hash_value);
    transparent_crc(p_1367->g_1151.se, "p_1367->g_1151.se", print_hash_value);
    transparent_crc(p_1367->g_1151.sf, "p_1367->g_1151.sf", print_hash_value);
    transparent_crc(p_1367->g_1178, "p_1367->g_1178", print_hash_value);
    transparent_crc(p_1367->g_1190.x, "p_1367->g_1190.x", print_hash_value);
    transparent_crc(p_1367->g_1190.y, "p_1367->g_1190.y", print_hash_value);
    transparent_crc(p_1367->g_1260.s0, "p_1367->g_1260.s0", print_hash_value);
    transparent_crc(p_1367->g_1260.s1, "p_1367->g_1260.s1", print_hash_value);
    transparent_crc(p_1367->g_1260.s2, "p_1367->g_1260.s2", print_hash_value);
    transparent_crc(p_1367->g_1260.s3, "p_1367->g_1260.s3", print_hash_value);
    transparent_crc(p_1367->g_1260.s4, "p_1367->g_1260.s4", print_hash_value);
    transparent_crc(p_1367->g_1260.s5, "p_1367->g_1260.s5", print_hash_value);
    transparent_crc(p_1367->g_1260.s6, "p_1367->g_1260.s6", print_hash_value);
    transparent_crc(p_1367->g_1260.s7, "p_1367->g_1260.s7", print_hash_value);
    transparent_crc(p_1367->g_1266.s0, "p_1367->g_1266.s0", print_hash_value);
    transparent_crc(p_1367->g_1266.s1, "p_1367->g_1266.s1", print_hash_value);
    transparent_crc(p_1367->g_1266.s2, "p_1367->g_1266.s2", print_hash_value);
    transparent_crc(p_1367->g_1266.s3, "p_1367->g_1266.s3", print_hash_value);
    transparent_crc(p_1367->g_1266.s4, "p_1367->g_1266.s4", print_hash_value);
    transparent_crc(p_1367->g_1266.s5, "p_1367->g_1266.s5", print_hash_value);
    transparent_crc(p_1367->g_1266.s6, "p_1367->g_1266.s6", print_hash_value);
    transparent_crc(p_1367->g_1266.s7, "p_1367->g_1266.s7", print_hash_value);
    transparent_crc(p_1367->g_1266.s8, "p_1367->g_1266.s8", print_hash_value);
    transparent_crc(p_1367->g_1266.s9, "p_1367->g_1266.s9", print_hash_value);
    transparent_crc(p_1367->g_1266.sa, "p_1367->g_1266.sa", print_hash_value);
    transparent_crc(p_1367->g_1266.sb, "p_1367->g_1266.sb", print_hash_value);
    transparent_crc(p_1367->g_1266.sc, "p_1367->g_1266.sc", print_hash_value);
    transparent_crc(p_1367->g_1266.sd, "p_1367->g_1266.sd", print_hash_value);
    transparent_crc(p_1367->g_1266.se, "p_1367->g_1266.se", print_hash_value);
    transparent_crc(p_1367->g_1266.sf, "p_1367->g_1266.sf", print_hash_value);
    transparent_crc(p_1367->g_1271.x, "p_1367->g_1271.x", print_hash_value);
    transparent_crc(p_1367->g_1271.y, "p_1367->g_1271.y", print_hash_value);
    transparent_crc(p_1367->g_1271.z, "p_1367->g_1271.z", print_hash_value);
    transparent_crc(p_1367->g_1271.w, "p_1367->g_1271.w", print_hash_value);
    transparent_crc(p_1367->g_1276.s0, "p_1367->g_1276.s0", print_hash_value);
    transparent_crc(p_1367->g_1276.s1, "p_1367->g_1276.s1", print_hash_value);
    transparent_crc(p_1367->g_1276.s2, "p_1367->g_1276.s2", print_hash_value);
    transparent_crc(p_1367->g_1276.s3, "p_1367->g_1276.s3", print_hash_value);
    transparent_crc(p_1367->g_1276.s4, "p_1367->g_1276.s4", print_hash_value);
    transparent_crc(p_1367->g_1276.s5, "p_1367->g_1276.s5", print_hash_value);
    transparent_crc(p_1367->g_1276.s6, "p_1367->g_1276.s6", print_hash_value);
    transparent_crc(p_1367->g_1276.s7, "p_1367->g_1276.s7", print_hash_value);
    transparent_crc(p_1367->g_1278.s0, "p_1367->g_1278.s0", print_hash_value);
    transparent_crc(p_1367->g_1278.s1, "p_1367->g_1278.s1", print_hash_value);
    transparent_crc(p_1367->g_1278.s2, "p_1367->g_1278.s2", print_hash_value);
    transparent_crc(p_1367->g_1278.s3, "p_1367->g_1278.s3", print_hash_value);
    transparent_crc(p_1367->g_1278.s4, "p_1367->g_1278.s4", print_hash_value);
    transparent_crc(p_1367->g_1278.s5, "p_1367->g_1278.s5", print_hash_value);
    transparent_crc(p_1367->g_1278.s6, "p_1367->g_1278.s6", print_hash_value);
    transparent_crc(p_1367->g_1278.s7, "p_1367->g_1278.s7", print_hash_value);
    transparent_crc(p_1367->g_1278.s8, "p_1367->g_1278.s8", print_hash_value);
    transparent_crc(p_1367->g_1278.s9, "p_1367->g_1278.s9", print_hash_value);
    transparent_crc(p_1367->g_1278.sa, "p_1367->g_1278.sa", print_hash_value);
    transparent_crc(p_1367->g_1278.sb, "p_1367->g_1278.sb", print_hash_value);
    transparent_crc(p_1367->g_1278.sc, "p_1367->g_1278.sc", print_hash_value);
    transparent_crc(p_1367->g_1278.sd, "p_1367->g_1278.sd", print_hash_value);
    transparent_crc(p_1367->g_1278.se, "p_1367->g_1278.se", print_hash_value);
    transparent_crc(p_1367->g_1278.sf, "p_1367->g_1278.sf", print_hash_value);
    transparent_crc(p_1367->g_1287.x, "p_1367->g_1287.x", print_hash_value);
    transparent_crc(p_1367->g_1287.y, "p_1367->g_1287.y", print_hash_value);
    transparent_crc(p_1367->g_1308.x, "p_1367->g_1308.x", print_hash_value);
    transparent_crc(p_1367->g_1308.y, "p_1367->g_1308.y", print_hash_value);
    transparent_crc(p_1367->g_1314.x, "p_1367->g_1314.x", print_hash_value);
    transparent_crc(p_1367->g_1314.y, "p_1367->g_1314.y", print_hash_value);
    transparent_crc(p_1367->g_1314.z, "p_1367->g_1314.z", print_hash_value);
    transparent_crc(p_1367->g_1314.w, "p_1367->g_1314.w", print_hash_value);
    transparent_crc(p_1367->g_1323, "p_1367->g_1323", print_hash_value);
    transparent_crc(p_1367->g_1343, "p_1367->g_1343", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
