// ---atomic_reductions ---fake_divergence -g 51,37,1 -l 51,1,1
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


// Seed: 24

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2[3];
    int32_t g_3;
    volatile int32_t g_6;
    volatile int32_t g_7[8];
    int32_t g_8;
    int32_t * volatile g_12[2][7][8];
    int32_t g_14;
    int32_t * volatile g_13;
    int32_t * volatile g_21;
    int32_t * volatile * volatile g_27;
    int32_t * volatile * volatile g_74;
    int32_t * volatile * volatile g_75[2];
    int32_t g_79;
    volatile uint64_t g_88;
    volatile uint64_t *g_87;
    uint32_t g_90;
    int32_t g_92;
    uint64_t g_95;
    uint8_t g_104;
    uint16_t g_109;
    uint8_t g_111;
    int64_t g_113;
    uint64_t g_128;
    int16_t g_161;
    uint32_t g_162;
    int8_t g_163;
    int32_t *g_167[5];
    int32_t ** volatile g_166;
    volatile int32_t *g_169;
    volatile int32_t ** volatile g_168;
    volatile int8_t g_203;
    volatile int8_t * volatile g_202;
    volatile int8_t * volatile *g_201;
    int32_t g_210[2];
    int32_t g_212[5];
    int64_t *g_245;
    int32_t ** volatile g_264;
    volatile uint32_t g_302;
    int8_t **g_319;
    uint64_t g_325[4];
    uint16_t g_380;
    int64_t g_381;
    int16_t *g_390[7][8][3];
    uint8_t *g_468[3][4];
    uint8_t **g_467[8];
    int32_t ** volatile g_571;
    volatile int32_t ** volatile g_574;
    int16_t *g_586;
    int32_t g_588;
    uint16_t *g_591;
    int16_t **g_689;
    int16_t *** volatile g_688;
    volatile int32_t g_712;
    int32_t g_734;
    int64_t **g_755;
    int32_t * volatile * volatile g_771;
    int32_t * volatile * volatile g_772;
    int32_t ** volatile g_773;
    volatile uint64_t g_789;
    volatile uint64_t *g_788;
    volatile uint64_t ** volatile g_787;
    int32_t ** volatile g_837;
    volatile uint32_t g_852;
    int32_t g_952;
    int32_t g_974;
    uint32_t *g_1004;
    uint32_t **g_1003;
    volatile int32_t ** volatile g_1017;
    uint16_t g_1026;
    int8_t g_1036[4][8];
    volatile uint64_t **g_1051;
    volatile uint64_t ***g_1050;
    volatile uint32_t g_1107;
    int32_t ** volatile g_1133;
    uint32_t g_1173;
    int32_t ** volatile g_1174;
    int32_t ** volatile g_1177;
    int32_t * volatile g_1192;
    int16_t g_1194;
    uint64_t g_1197;
    int32_t ** volatile g_1249[10];
    int32_t ** volatile g_1250;
    uint8_t **g_1271;
    int32_t * volatile g_1278[10];
    uint64_t g_1320[3][8];
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
};


/* --- FORWARD DECLARATIONS --- */
int8_t  func_1(struct S0 * p_1338);
int32_t * func_28(int32_t  p_29, int32_t  p_30, uint64_t * p_31, int32_t * p_32, struct S0 * p_1338);
uint64_t  func_39(int32_t  p_40, uint64_t  p_41, uint32_t  p_42, uint32_t  p_43, struct S0 * p_1338);
int32_t * func_45(uint32_t  p_46, int32_t  p_47, struct S0 * p_1338);
int32_t  func_52(int32_t ** p_53, uint32_t  p_54, int64_t  p_55, uint32_t  p_56, uint32_t  p_57, struct S0 * p_1338);
int32_t ** func_58(int32_t * p_59, uint64_t * p_60, struct S0 * p_1338);
int32_t * func_61(uint8_t  p_62, struct S0 * p_1338);
uint8_t  func_63(uint64_t  p_64, uint32_t  p_65, struct S0 * p_1338);
uint64_t  func_66(int32_t * p_67, uint64_t * p_68, int64_t  p_69, uint32_t  p_70, struct S0 * p_1338);
uint64_t * func_71(int32_t ** p_72, struct S0 * p_1338);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1338->g_3 p_1338->g_8 p_1338->g_13 p_1338->g_14 p_1338->g_952 p_1338->g_163 p_1338->g_128 p_1338->g_201 p_1338->g_202 p_1338->g_203 p_1338->g_1026 p_1338->g_161
 * writes: p_1338->g_3 p_1338->g_8 p_1338->g_14 p_1338->g_952 p_1338->g_163 p_1338->g_128 p_1338->g_1026 p_1338->g_161
 */
int8_t  func_1(struct S0 * p_1338)
{ /* block id: 4 */
    int8_t l_15 = 0x64L;
    int32_t *l_44 = (void*)0;
    int32_t *l_1198 = &p_1338->g_3;
    uint64_t l_1290 = 0xD63E4ADEE0E2CDDAL;
    int32_t l_1317 = 4L;
    int16_t l_1322 = 1L;
    int8_t l_1329 = 0L;
    for (p_1338->g_3 = 0; (p_1338->g_3 != (-24)); p_1338->g_3 = safe_sub_func_int8_t_s_s(p_1338->g_3, 4))
    { /* block id: 7 */
        uint8_t l_16 = 251UL;
        uint64_t *l_838 = (void*)0;
        uint64_t *l_1196 = &p_1338->g_1197;
        uint64_t l_1251 = 18446744073709551615UL;
        uint32_t l_1321 = 0x35755689L;
        int32_t l_1326 = 4L;
        for (p_1338->g_8 = 0; (p_1338->g_8 == 7); p_1338->g_8 = safe_add_func_int8_t_s_s(p_1338->g_8, 7))
        { /* block id: 10 */
            int32_t l_11 = 0L;
            int32_t *l_17 = &p_1338->g_14;
            (*p_1338->g_13) = (0UL != (0x14AD38DC5336DE01L || l_11));
            if (l_15)
                continue;
            (*l_17) |= l_16;
            if ((*l_17))
                continue;
        }
        for (p_1338->g_8 = 1; (p_1338->g_8 >= 0); p_1338->g_8 -= 1)
        { /* block id: 18 */
            uint64_t l_18 = 0x5300CE3D97867A7BL;
            int32_t l_19 = 0x77A14A9CL;
            uint64_t *l_20 = &l_18;
            uint32_t l_25 = 0x4840C2C6L;
            int32_t **l_73[3][6] = {{&l_44,(void*)0,&l_44,(void*)0,(void*)0,(void*)0},{&l_44,(void*)0,&l_44,(void*)0,(void*)0,(void*)0},{&l_44,(void*)0,&l_44,(void*)0,(void*)0,(void*)0}};
            uint8_t *l_1193 = &p_1338->g_111;
            int16_t *l_1195 = &p_1338->g_161;
            int i, j;
            (1 + 1);
        }
        for (p_1338->g_952 = 0; (p_1338->g_952 <= 4); p_1338->g_952 += 1)
        { /* block id: 642 */
            int8_t l_1252 = 0x08L;
            int32_t l_1276 = 0L;
            int32_t *l_1324 = &p_1338->g_734;
            if (l_1252)
                break;
            for (p_1338->g_163 = 3; (p_1338->g_163 >= 0); p_1338->g_163 -= 1)
            { /* block id: 646 */
                uint16_t l_1272 = 1UL;
                int32_t l_1279 = 0x5629297EL;
                int8_t l_1316[7] = {7L,0x4CL,7L,7L,0x4CL,7L,7L};
                int32_t l_1327 = 0x60D951FEL;
                int32_t l_1328 = 0x15879A79L;
                int i;
                for (p_1338->g_128 = 1; (p_1338->g_128 <= 4); p_1338->g_128 += 1)
                { /* block id: 649 */
                    uint8_t **l_1267 = &p_1338->g_468[2][1];
                    uint8_t ***l_1268 = &p_1338->g_467[4];
                    uint8_t ***l_1269 = (void*)0;
                    uint8_t ***l_1270 = &l_1267;
                    int32_t *l_1285 = (void*)0;
                    int16_t l_1318 = 0x0937L;
                    int32_t l_1325 = 0x3A6674CCL;
                    (1 + 1);
                }
                return (**p_1338->g_201);
            }
        }
        if (l_16)
            break;
    }
    for (p_1338->g_1026 = 6; (p_1338->g_1026 < 55); p_1338->g_1026 = safe_add_func_int16_t_s_s(p_1338->g_1026, 8))
    { /* block id: 682 */
        int64_t l_1337 = (-1L);
        if ((*l_1198))
            break;
        for (p_1338->g_161 = 0; (p_1338->g_161 > (-16)); p_1338->g_161 = safe_sub_func_int64_t_s_s(p_1338->g_161, 9))
        { /* block id: 686 */
            return (**p_1338->g_201);
        }
        return l_1337;
    }
    return (*l_1198);
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_95 p_1338->g_1197 p_1338->g_109 p_1338->g_202 p_1338->g_203 p_1338->g_128 p_1338->g_1036 p_1338->g_161 p_1338->g_92 p_1338->g_162 p_1338->g_1250 p_1338->g_13 p_1338->g_14
 * writes: p_1338->g_95 p_1338->g_109 p_1338->g_1036 p_1338->g_162 p_1338->g_167
 */
int32_t * func_28(int32_t  p_29, int32_t  p_30, uint64_t * p_31, int32_t * p_32, struct S0 * p_1338)
{ /* block id: 619 */
    uint32_t l_1209 = 0x018EEB16L;
    int32_t l_1228[9][6] = {{6L,6L,3L,0x0C4116B4L,9L,0x1A5467A4L},{6L,6L,3L,0x0C4116B4L,9L,0x1A5467A4L},{6L,6L,3L,0x0C4116B4L,9L,0x1A5467A4L},{6L,6L,3L,0x0C4116B4L,9L,0x1A5467A4L},{6L,6L,3L,0x0C4116B4L,9L,0x1A5467A4L},{6L,6L,3L,0x0C4116B4L,9L,0x1A5467A4L},{6L,6L,3L,0x0C4116B4L,9L,0x1A5467A4L},{6L,6L,3L,0x0C4116B4L,9L,0x1A5467A4L},{6L,6L,3L,0x0C4116B4L,9L,0x1A5467A4L}};
    int8_t l_1243 = 0x4AL;
    int32_t l_1246 = 0x1CEAE2BFL;
    int i, j;
    for (p_1338->g_95 = (-2); (p_1338->g_95 == 37); p_1338->g_95 = safe_add_func_uint64_t_u_u(p_1338->g_95, 7))
    { /* block id: 622 */
        uint16_t *l_1226[1];
        int32_t l_1227 = 2L;
        int32_t **l_1231 = &p_1338->g_167[2];
        int32_t **l_1232 = (void*)0;
        int32_t **l_1233 = (void*)0;
        int32_t **l_1234 = &p_1338->g_167[2];
        int32_t **l_1235 = &p_1338->g_167[2];
        int32_t **l_1236 = &p_1338->g_167[4];
        int32_t **l_1237 = (void*)0;
        int32_t **l_1238 = &p_1338->g_167[0];
        int32_t **l_1239 = &p_1338->g_167[2];
        int32_t **l_1240 = &p_1338->g_167[3];
        int32_t **l_1241 = &p_1338->g_167[4];
        int32_t *l_1242[4][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
        int8_t *l_1244 = (void*)0;
        int8_t *l_1245 = &p_1338->g_1036[2][7];
        int i, j;
        for (i = 0; i < 1; i++)
            l_1226[i] = &p_1338->g_109;
        l_1246 = ((((l_1228[1][5] = (safe_lshift_func_int16_t_s_u((+((safe_rshift_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((safe_rshift_func_uint8_t_u_u((((l_1209 & ((*l_1245) &= (p_30 == (safe_mul_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s((safe_rshift_func_int8_t_s_u((safe_div_func_uint64_t_u_u((~((safe_sub_func_int16_t_s_s(((void*)0 == &p_32), ((safe_lshift_func_int16_t_s_s(((*p_31) == (4UL == FAKE_DIVERGE(p_1338->local_2_offset, get_local_id(2), 10))), ((safe_lshift_func_uint16_t_u_s((p_1338->g_109--), ((p_32 = ((l_1209 == (2L | ((l_1228[8][2] & (*p_1338->g_202)) == l_1227))) , (void*)0)) != l_1242[2][0]))) & 0x4FE19D88A716AD0DL))) | p_1338->g_128))) || l_1243)), (-10L))), l_1209)), p_30)) || p_30), 0x3E5CL))))) && l_1228[8][2]) < p_1338->g_161), 4)), p_30)), GROUP_DIVERGE(2, 1))) != p_1338->g_92)), 11))) < p_30) == GROUP_DIVERGE(1, 1)) ^ 0x6FL);
    }
    for (p_1338->g_162 = 26; (p_1338->g_162 != 54); p_1338->g_162 = safe_add_func_uint32_t_u_u(p_1338->g_162, 5))
    { /* block id: 631 */
        (*p_1338->g_1250) = p_32;
        if ((*p_1338->g_13))
            break;
    }
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_1192 p_1338->g_92
 * writes: p_1338->g_92
 */
uint64_t  func_39(int32_t  p_40, uint64_t  p_41, uint32_t  p_42, uint32_t  p_43, struct S0 * p_1338)
{ /* block id: 612 */
    uint8_t l_1191 = 255UL;
    (*p_1338->g_1192) |= l_1191;
    return l_1191;
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_109 p_1338->g_168 p_1338->g_169 p_1338->g_212 p_1338->g_14 p_1338->g_837 p_1338->g_1177
 * writes: p_1338->g_109 p_1338->g_14 p_1338->g_163 p_1338->g_380 p_1338->g_128 p_1338->g_167
 */
int32_t * func_45(uint32_t  p_46, int32_t  p_47, struct S0 * p_1338)
{ /* block id: 599 */
    uint32_t l_1178 = 4294967295UL;
    int32_t l_1185[2];
    uint32_t l_1186 = 0x4DEC1FA2L;
    int32_t *l_1190 = &p_1338->g_14;
    int i;
    for (i = 0; i < 2; i++)
        l_1185[i] = 1L;
lbl_1189:
    for (p_1338->g_109 = 0; (p_1338->g_109 >= 39); p_1338->g_109++)
    { /* block id: 602 */
        (*p_1338->g_1177) = func_61(p_46, p_1338);
    }
    if (l_1178)
    { /* block id: 605 */
        int32_t *l_1179 = (void*)0;
        int32_t **l_1180 = &l_1179;
        (*l_1180) = l_1179;
    }
    else
    { /* block id: 607 */
        int32_t *l_1181 = &p_1338->g_974;
        int32_t *l_1182 = &p_1338->g_974;
        int32_t *l_1183 = &p_1338->g_14;
        int32_t *l_1184[5] = {&p_1338->g_734,&p_1338->g_734,&p_1338->g_734,&p_1338->g_734,&p_1338->g_734};
        int i;
        l_1186++;
    }
    if (l_1186)
        goto lbl_1189;
    return l_1190;
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_1107 p_1338->g_27 p_1338->g_21 p_1338->g_14 p_1338->g_381 p_1338->g_168 p_1338->g_169 p_1338->g_212 p_1338->g_837 p_1338->g_166 p_1338->g_1003 p_1338->g_1004 p_1338->g_90 p_1338->g_201 p_1338->g_202 p_1338->g_203 p_1338->g_974 p_1338->g_787 p_1338->g_788 p_1338->g_1133 p_1338->g_245 p_1338->g_13 p_1338->g_755 p_1338->g_113 p_1338->g_325 p_1338->g_734 p_1338->g_689 p_1338->g_390 p_1338->g_109 p_1338->g_1174 p_1338->g_772
 * writes: p_1338->g_14 p_1338->g_163 p_1338->g_380 p_1338->g_128 p_1338->g_167 p_1338->g_90 p_1338->g_974 p_1338->g_113 p_1338->g_325 p_1338->g_109 p_1338->g_1173
 */
int32_t  func_52(int32_t ** p_53, uint32_t  p_54, int64_t  p_55, uint32_t  p_56, uint32_t  p_57, struct S0 * p_1338)
{ /* block id: 576 */
    uint32_t l_1101 = 7UL;
    int32_t l_1111 = 0x61BD0F15L;
    uint8_t *l_1130[3][9][7] = {{{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104}},{{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104}},{{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104},{&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,&p_1338->g_104,(void*)0,&p_1338->g_104,&p_1338->g_104}}};
    int8_t l_1135 = (-3L);
    int8_t *l_1150 = (void*)0;
    int8_t *l_1151 = (void*)0;
    int32_t l_1152 = (-10L);
    int32_t *l_1153[10];
    uint64_t l_1154 = 18446744073709551615UL;
    uint64_t *l_1157 = &p_1338->g_325[0];
    uint64_t **l_1163 = &l_1157;
    uint64_t ***l_1162 = &l_1163;
    int8_t *l_1164 = &p_1338->g_163;
    uint16_t *l_1169 = &p_1338->g_109;
    uint32_t *l_1172 = &p_1338->g_1173;
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_1153[i] = &p_1338->g_974;
lbl_1134:
    for (p_57 = 11; (p_57 > 56); p_57 = safe_add_func_int8_t_s_s(p_57, 6))
    { /* block id: 579 */
        int16_t l_1104 = 0x34C3L;
        uint16_t *l_1110[6][1][1] = {{{&p_1338->g_109}},{{&p_1338->g_109}},{{&p_1338->g_109}},{{&p_1338->g_109}},{{&p_1338->g_109}},{{&p_1338->g_109}}};
        uint32_t ***l_1112[10][2][6] = {{{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0},{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0}},{{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0},{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0}},{{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0},{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0}},{{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0},{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0}},{{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0},{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0}},{{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0},{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0}},{{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0},{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0}},{{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0},{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0}},{{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0},{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0}},{{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0},{&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,&p_1338->g_1003,(void*)0,(void*)0}}};
        int8_t *l_1117 = &p_1338->g_163;
        int32_t l_1118[9][1];
        uint8_t l_1121 = 0xADL;
        int32_t *l_1131 = &p_1338->g_974;
        int32_t *l_1132 = &p_1338->g_8;
        int i, j, k;
        for (i = 0; i < 9; i++)
        {
            for (j = 0; j < 1; j++)
                l_1118[i][j] = (-1L);
        }
        (*p_1338->g_166) = func_61(((safe_rshift_func_int8_t_s_s((((((safe_mul_func_int16_t_s_s(((l_1101 > (safe_mod_func_uint16_t_u_u(((void*)0 == &p_1338->g_787), l_1104))) , (-1L)), ((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1338->global_2_offset, get_global_id(2), 10), p_1338->g_1107)) , (safe_mod_func_uint16_t_u_u(p_57, (l_1111 = (0x08B3L && ((p_54 & p_57) < (**p_1338->g_27))))))))) != p_1338->g_381) , &p_1338->g_1003) == l_1112[9][1][2]) != 0UL), l_1104)) , l_1104), p_1338);
        (*l_1131) &= ((safe_mod_func_int8_t_s_s((safe_div_func_int16_t_s_s((l_1104 >= p_55), (((((**p_1338->g_1003) |= (((void*)0 == l_1117) , l_1111)) < l_1118[3][0]) || (safe_sub_func_int8_t_s_s((+l_1121), (safe_lshift_func_uint8_t_u_u((safe_sub_func_int32_t_s_s((-3L), (GROUP_DIVERGE(0, 1) , ((safe_sub_func_int32_t_s_s((((safe_add_func_uint64_t_u_u((0x7C52ED92963D3374L > l_1111), 0x3D8339473BA04F6FL)) , l_1130[1][3][0]) != &l_1121), p_57)) <= 0x5CCF7512L)))), 7))))) && l_1104))), l_1118[2][0])) || (**p_1338->g_201));
        (*l_1131) = ((*p_1338->g_787) != (void*)0);
        if (p_1338->g_14)
            goto lbl_1134;
        (*p_1338->g_1133) = l_1132;
    }
    (*p_1338->g_13) = (l_1135 , (0L > (l_1154 |= ((safe_mul_func_int16_t_s_s(l_1111, (safe_sub_func_int64_t_s_s((((*p_1338->g_245) = (safe_mod_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s((l_1152 = (5UL != (safe_rshift_func_uint16_t_u_s(p_55, (safe_mul_func_uint8_t_u_u((safe_add_func_uint16_t_u_u(((*p_1338->g_202) || p_55), p_54)), (((GROUP_DIVERGE(0, 1) | p_55) , l_1101) | FAKE_DIVERGE(p_1338->group_0_offset, get_group_id(0), 10)))))))), 3)), 0x3478D6A55E921516L))) != 1UL), FAKE_DIVERGE(p_1338->group_0_offset, get_group_id(0), 10))))) && l_1101))));
    (*p_1338->g_1174) = func_61(((**p_1338->g_755) && (safe_div_func_uint32_t_u_u((((*l_1157)--) , ((*l_1172) = ((*p_1338->g_1004) ^= (safe_div_func_int8_t_s_s((((*l_1164) = (l_1162 == (void*)0)) != ((safe_add_func_int64_t_s_s((-1L), (p_1338->g_734 , (safe_mul_func_uint16_t_u_u(((*l_1169) |= ((*p_1338->g_689) != (void*)0)), ((((safe_mod_func_uint16_t_u_u((0x39AD371E861A3844L && p_56), p_54)) , p_54) ^ p_54) <= 0xBCL)))))) ^ FAKE_DIVERGE(p_1338->global_2_offset, get_global_id(2), 10))), p_56))))), 0x70EF6C13L))), p_1338);
    return (**p_1338->g_772);
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_95 p_1338->g_852 p_1338->g_104 p_1338->g_87 p_1338->g_88 p_1338->g_380 p_1338->g_79 p_1338->g_734 p_1338->g_90 p_1338->g_2 p_1338->g_3 p_1338->g_773 p_1338->g_7 p_1338->g_201 p_1338->g_202 p_1338->g_245 p_1338->g_113 p_1338->g_111 p_1338->g_168 p_1338->g_169 p_1338->g_212 p_1338->g_14 p_1338->g_837 p_1338->g_203 p_1338->g_163 p_1338->g_755 p_1338->g_974 p_1338->g_588 p_1338->g_1003 p_1338->g_13 p_1338->g_574 p_1338->g_1026 p_1338->g_1036 p_1338->g_381 p_1338->g_1050 p_1338->g_1004 p_1338->g_772 p_1338->g_952 p_1338->g_21
 * writes: p_1338->g_95 p_1338->g_852 p_1338->g_104 p_1338->g_380 p_1338->g_163 p_1338->g_90 p_1338->g_167 p_1338->g_7 p_1338->g_2 p_1338->g_14 p_1338->g_128 p_1338->g_952 p_1338->g_974 p_1338->g_1003 p_1338->g_113 p_1338->g_169 p_1338->g_381 p_1338->g_325
 */
int32_t ** func_58(int32_t * p_59, uint64_t * p_60, struct S0 * p_1338)
{ /* block id: 461 */
    int32_t l_842[6][8][5] = {{{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL}},{{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL}},{{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL}},{{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL}},{{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL}},{{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL},{(-1L),0x21DA81D4L,(-1L),0x69F74A14L,0x232B949FL}}};
    int16_t l_849 = 0x1A18L;
    int64_t l_850 = 0x171D984842CDF781L;
    int32_t l_851 = 0x466ED35FL;
    uint32_t l_865 = 0x02313B5DL;
    uint16_t l_882 = 0x1620L;
    int64_t **l_889[6] = {&p_1338->g_245,&p_1338->g_245,&p_1338->g_245,&p_1338->g_245,&p_1338->g_245,&p_1338->g_245};
    int16_t **l_892 = &p_1338->g_390[6][6][1];
    int8_t *l_898 = &p_1338->g_163;
    uint8_t l_901 = 7UL;
    int16_t ****l_902 = (void*)0;
    int16_t ***l_903 = &l_892;
    int32_t **l_904 = (void*)0;
    int32_t **l_905 = &p_1338->g_167[1];
    int32_t **l_906 = (void*)0;
    int32_t **l_907 = &p_1338->g_167[2];
    int32_t **l_908 = (void*)0;
    int32_t **l_909[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t *l_910[10];
    uint16_t l_911[2];
    uint32_t l_919[9];
    uint16_t l_933 = 65532UL;
    uint8_t l_936[2];
    int8_t l_955 = 0x53L;
    uint32_t l_956 = 1UL;
    int16_t *l_963 = &l_849;
    uint64_t l_972 = 0xFFA3ED000A920283L;
    int32_t l_973 = 0x4175AF9BL;
    int32_t l_975 = 0L;
    int8_t l_976 = 0L;
    uint64_t *l_991 = &p_1338->g_128;
    uint16_t l_1038 = 65531UL;
    uint64_t *l_1048 = &p_1338->g_325[1];
    uint64_t **l_1047 = &l_1048;
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_910[i] = &p_1338->g_92;
    for (i = 0; i < 2; i++)
        l_911[i] = 0x0C2CL;
    for (i = 0; i < 9; i++)
        l_919[i] = 0x7275FB42L;
    for (i = 0; i < 2; i++)
        l_936[i] = 0xF8L;
    for (p_1338->g_95 = 0; (p_1338->g_95 < 7); p_1338->g_95 = safe_add_func_int16_t_s_s(p_1338->g_95, 4))
    { /* block id: 464 */
        int32_t l_841[2][3] = {{1L,0x581E1A91L,1L},{1L,0x581E1A91L,1L}};
        int32_t *l_843 = &l_842[1][5][2];
        int32_t *l_844 = &p_1338->g_79;
        int32_t *l_845 = &p_1338->g_79;
        int32_t *l_846 = &p_1338->g_734;
        int32_t *l_847[5] = {&p_1338->g_92,&p_1338->g_92,&p_1338->g_92,&p_1338->g_92,&p_1338->g_92};
        int16_t l_848 = 0x49F7L;
        int i, j;
        l_842[1][5][2] = l_841[1][1];
        --p_1338->g_852;
        for (p_1338->g_104 = 0; (p_1338->g_104 >= 14); p_1338->g_104 = safe_add_func_int32_t_s_s(p_1338->g_104, 8))
        { /* block id: 469 */
            int16_t l_870 = 0x2BADL;
            uint64_t **l_879 = (void*)0;
            uint16_t *l_880 = &p_1338->g_380;
            uint32_t *l_881[6][9] = {{&p_1338->g_90,&p_1338->g_90,(void*)0,(void*)0,&p_1338->g_90,(void*)0,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,&p_1338->g_90,(void*)0,(void*)0,&p_1338->g_90,(void*)0,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,&p_1338->g_90,(void*)0,(void*)0,&p_1338->g_90,(void*)0,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,&p_1338->g_90,(void*)0,(void*)0,&p_1338->g_90,(void*)0,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,&p_1338->g_90,(void*)0,(void*)0,&p_1338->g_90,(void*)0,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,&p_1338->g_90,(void*)0,(void*)0,&p_1338->g_90,(void*)0,(void*)0,&p_1338->g_90,&p_1338->g_90}};
            int8_t ***l_883[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_884[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            int i, j;
            (*l_843) = (GROUP_DIVERGE(1, 1) | (l_884[2] = (p_1338->g_163 = (FAKE_DIVERGE(p_1338->local_2_offset, get_local_id(2), 10) , (l_842[1][5][2] <= (((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(l_849, 2)), ((safe_lshift_func_uint16_t_u_u((((safe_lshift_func_int16_t_s_u(l_865, 3)) , ((l_851 = ((safe_lshift_func_uint16_t_u_u(((safe_mod_func_uint64_t_u_u((l_870 == GROUP_DIVERGE(1, 1)), (safe_lshift_func_uint16_t_u_s(((*l_880) |= (((l_849 | (safe_div_func_int16_t_s_s(((safe_add_func_uint64_t_u_u(l_849, (*p_1338->g_87))) ^ (safe_rshift_func_uint16_t_u_s(l_842[3][6][4], (l_850 >= l_850)))), l_870))) , &p_1338->g_788) != l_879)), 14)))) != 1L), l_849)) | (*l_844))) || l_870)) <= l_882), 14)) | (*l_846)))) , (void*)0) == l_883[1]))))));
        }
    }
    for (p_1338->g_90 = 0; (p_1338->g_90 <= 2); p_1338->g_90 += 1)
    { /* block id: 479 */
        int16_t **l_890 = &p_1338->g_390[6][6][1];
        uint16_t *l_891 = &l_882;
        int32_t **l_895[6][1] = {{&p_1338->g_167[2]},{&p_1338->g_167[2]},{&p_1338->g_167[2]},{&p_1338->g_167[2]},{&p_1338->g_167[2]},{&p_1338->g_167[2]}};
        int i, j;
        if (p_1338->g_2[p_1338->g_90])
            break;
        (*p_1338->g_773) = (((4294967293UL & (safe_sub_func_uint32_t_u_u((safe_sub_func_int32_t_s_s(((l_889[5] != (((p_1338->g_2[p_1338->g_90] , l_890) == ((&l_882 != l_891) , l_892)) , &p_1338->g_245)) <= (((safe_lshift_func_uint8_t_u_s(247UL, 4)) | 0x4CCDF086DA462117L) , l_882)), 0UL)), (*p_59)))) ^ 1UL) , (void*)0);
        p_1338->g_7[(p_1338->g_90 + 1)] |= (l_851 = 0x2E0AE234L);
        p_1338->g_2[p_1338->g_90] = 0x01629678L;
    }
    if ((((((safe_sub_func_int64_t_s_s((l_898 == (*p_1338->g_201)), ((safe_rshift_func_uint8_t_u_u(l_901, ((((l_903 = &l_892) != &p_1338->g_689) , (((((void*)0 != &l_892) | ((p_59 = &l_842[1][5][2]) == (l_910[7] = &p_1338->g_79))) || GROUP_DIVERGE(1, 1)) , (-3L))) || (*p_1338->g_245)))) == 0x6AL))) , (*p_59)) > 0x46060679L) >= p_1338->g_111) < l_911[1]))
    { /* block id: 489 */
        return &p_1338->g_167[2];
    }
    else
    { /* block id: 491 */
        int8_t l_912 = 0x61L;
        uint64_t *l_932 = (void*)0;
        int32_t l_934 = (-10L);
        uint16_t **l_935 = &p_1338->g_591;
        int32_t *l_951[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int16_t l_953 = (-1L);
        int32_t l_954 = 0x5E32BE58L;
        int i;
        p_59 = func_61(l_912, p_1338);
        l_934 ^= (safe_rshift_func_int16_t_s_u((((((safe_mul_func_int8_t_s_s(((safe_div_func_uint16_t_u_u(l_919[0], (safe_mod_func_uint8_t_u_u((((safe_add_func_int16_t_s_s(((safe_div_func_uint16_t_u_u((safe_add_func_uint32_t_u_u((((l_912 | (0x466E87EAL || (0L || ((safe_mod_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((l_912 && (((void*)0 == l_932) , (*p_1338->g_202))), GROUP_DIVERGE(2, 1))), l_912)) >= 0x376BL)))) & 0L) < l_912), l_912)), (-1L))) == l_933), 6L)) ^ 0x7FL) && 8L), l_912)))) , (*p_1338->g_202)), 0x1EL)) > 0xCFC0D62251C377B7L) , l_912) | l_912) != 0x2CL), l_912));
        l_956 = (l_934 = (((l_935 == (l_936[1] , &p_1338->g_591)) , (safe_rshift_func_int8_t_s_u(((safe_mul_func_uint16_t_u_u((0L | ((*p_1338->g_87) , (0x7DL >= (safe_div_func_int32_t_s_s((l_954 |= ((safe_add_func_uint8_t_u_u((l_912 >= (((safe_lshift_func_uint16_t_u_u((l_934 & (FAKE_DIVERGE(p_1338->group_0_offset, get_group_id(0), 10) == (safe_rshift_func_uint16_t_u_s((safe_mul_func_uint8_t_u_u((((p_1338->g_952 = l_934) , l_934) , l_934), 5UL)), l_912)))), GROUP_DIVERGE(2, 1))) <= l_953) == (*p_59))), l_912)) > l_953)), l_912))))), GROUP_DIVERGE(2, 1))) & (*p_59)), l_955))) == 0xB2L));
    }
    if ((safe_div_func_uint8_t_u_u((((((safe_mul_func_uint16_t_u_u((!(safe_rshift_func_uint8_t_u_s(0x3DL, 6))), ((*l_963) = (p_59 != p_59)))) ^ (0xB0561DEBL && (safe_lshift_func_uint16_t_u_s((safe_mod_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((p_1338->g_2[2] == ((!(&p_1338->g_325[1] == ((safe_lshift_func_uint8_t_u_s((((p_1338->g_79 != p_1338->g_163) < l_972) < 0x0E922F28L), 4)) , &p_1338->g_325[1]))) & (*p_59))), (**p_1338->g_755))), l_973)), p_1338->g_974)))) || (*p_1338->g_87)) && l_975) >= l_976), FAKE_DIVERGE(p_1338->group_1_offset, get_group_id(1), 10))))
    { /* block id: 500 */
        uint32_t l_997[2];
        int32_t l_1065 = 0L;
        int8_t *l_1066 = &l_976;
        int32_t *l_1068 = &p_1338->g_952;
        int32_t **l_1067 = &l_1068;
        uint64_t l_1075 = 0xE7BC24304DD5FBFEL;
        int32_t l_1076[4] = {(-1L),(-1L),(-1L),(-1L)};
        int i;
        for (i = 0; i < 2; i++)
            l_997[i] = 4294967295UL;
        for (l_933 = 0; (l_933 >= 42); l_933 = safe_add_func_int32_t_s_s(l_933, 5))
        { /* block id: 503 */
            int8_t ***l_996 = &p_1338->g_319;
            int32_t l_999 = 0x7AE882F6L;
            uint32_t *l_1000 = &l_919[7];
            int32_t l_1009[6][2][10] = {{{0x3F8828FAL,(-2L),0x33256B93L,0x715C7591L,0x1A5C2EB9L,0x715C7591L,0x33256B93L,(-2L),0x3F8828FAL,0x41613FB9L},{0x3F8828FAL,(-2L),0x33256B93L,0x715C7591L,0x1A5C2EB9L,0x715C7591L,0x33256B93L,(-2L),0x3F8828FAL,0x41613FB9L}},{{0x3F8828FAL,(-2L),0x33256B93L,0x715C7591L,0x1A5C2EB9L,0x715C7591L,0x33256B93L,(-2L),0x3F8828FAL,0x41613FB9L},{0x3F8828FAL,(-2L),0x33256B93L,0x715C7591L,0x1A5C2EB9L,0x715C7591L,0x33256B93L,(-2L),0x3F8828FAL,0x41613FB9L}},{{0x3F8828FAL,(-2L),0x33256B93L,0x715C7591L,0x1A5C2EB9L,0x715C7591L,0x33256B93L,(-2L),0x3F8828FAL,0x41613FB9L},{0x3F8828FAL,(-2L),0x33256B93L,0x715C7591L,0x1A5C2EB9L,0x715C7591L,0x33256B93L,(-2L),0x3F8828FAL,0x41613FB9L}},{{0x3F8828FAL,(-2L),0x33256B93L,0x715C7591L,0x1A5C2EB9L,0x715C7591L,0x33256B93L,(-2L),0x3F8828FAL,0x41613FB9L},{0x3F8828FAL,(-2L),0x33256B93L,0x715C7591L,0x1A5C2EB9L,0x715C7591L,0x33256B93L,(-2L),0x3F8828FAL,0x41613FB9L}},{{0x3F8828FAL,(-2L),0x33256B93L,0x715C7591L,0x1A5C2EB9L,0x715C7591L,0x33256B93L,(-2L),0x3F8828FAL,0x41613FB9L},{0x3F8828FAL,(-2L),0x33256B93L,0x715C7591L,0x1A5C2EB9L,0x715C7591L,0x33256B93L,(-2L),0x3F8828FAL,0x41613FB9L}},{{0x3F8828FAL,(-2L),0x33256B93L,0x715C7591L,0x1A5C2EB9L,0x715C7591L,0x33256B93L,(-2L),0x3F8828FAL,0x41613FB9L},{0x3F8828FAL,(-2L),0x33256B93L,0x715C7591L,0x1A5C2EB9L,0x715C7591L,0x33256B93L,(-2L),0x3F8828FAL,0x41613FB9L}}};
            uint64_t *l_1046 = (void*)0;
            uint64_t **l_1045 = &l_1046;
            uint64_t l_1058 = 1UL;
            int i, j, k;
            for (l_849 = 2; (l_849 >= 0); l_849 -= 1)
            { /* block id: 506 */
                uint64_t *l_998 = &p_1338->g_128;
                uint32_t **l_1001 = &l_1000;
                int64_t **l_1029 = (void*)0;
                int32_t l_1034 = 0x32A0505AL;
                int32_t l_1035 = 0x71C0F44BL;
                uint64_t ***l_1049 = &l_1047;
                int i;
                if ((((safe_mul_func_int8_t_s_s((p_59 == ((*l_1001) = ((!(safe_add_func_int16_t_s_s((((safe_sub_func_int16_t_s_s((l_999 = (safe_lshift_func_int8_t_s_s((safe_sub_func_int16_t_s_s((safe_mod_func_int32_t_s_s(p_1338->g_2[l_849], 0x23347EEDL)), (l_991 == (void*)0))), (safe_add_func_int32_t_s_s(((((void*)0 == l_996) <= l_997[1]) ^ (((p_1338->g_588 , l_997[1]) , p_60) != l_998)), (*p_59)))))), l_997[0])) <= FAKE_DIVERGE(p_1338->group_0_offset, get_group_id(0), 10)) < 0x0E51L), l_997[1]))) , l_1000))), 255UL)) , l_997[1]) ^ (-9L)))
                { /* block id: 509 */
                    int8_t l_1008 = 1L;
                    int32_t l_1037 = 1L;
                    int i;
                    for (p_1338->g_974 = 0; (p_1338->g_974 <= 2); p_1338->g_974 += 1)
                    { /* block id: 512 */
                        int32_t l_1002 = (-7L);
                        uint32_t ***l_1005 = (void*)0;
                        uint32_t ***l_1006 = &p_1338->g_1003;
                        uint8_t *l_1014 = &l_901;
                        uint64_t **l_1016[1];
                        uint64_t ***l_1015 = &l_1016[0];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1016[i] = (void*)0;
                        (*l_907) = &l_999;
                        l_1009[5][1][8] ^= (((&p_1338->g_755 != (void*)0) == ((p_1338->g_2[l_849] >= l_1002) < ((+(((*l_1006) = p_1338->g_1003) == &p_1338->g_1004)) , (safe_unary_minus_func_uint8_t_u((((((**p_1338->g_755) = l_1008) != ((((*p_59) , (l_997[0] != l_1008)) >= l_1002) , 18446744073709551615UL)) | p_1338->g_104) != l_999)))))) >= 1L);
                        (*p_1338->g_13) |= ((safe_sub_func_uint8_t_u_u(((*l_1014) = (l_997[1] , (safe_lshift_func_uint8_t_u_u(l_997[1], 5)))), (+(((*l_1015) = (void*)0) == (l_1008 , &p_1338->g_87))))) <= l_1008);
                        (*p_1338->g_574) = &p_1338->g_2[l_849];
                    }
                    p_1338->g_2[l_849] = ((!(safe_mod_func_int16_t_s_s((safe_add_func_int8_t_s_s((((**p_1338->g_755) = (p_1338->g_2[l_849] ^ ((*p_59) < ((safe_div_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u((l_1009[5][1][8] = FAKE_DIVERGE(p_1338->local_0_offset, get_local_id(0), 10)), p_1338->g_1026)) != (((((safe_sub_func_uint8_t_u_u((((l_1029 != (void*)0) <= (0x392E5AA734A034C1L == (safe_add_func_int8_t_s_s((safe_sub_func_uint32_t_u_u((1L >= 0x16BAE457F228E456L), l_1034)), FAKE_DIVERGE(p_1338->global_0_offset, get_global_id(0), 10))))) <= 18446744073709551612UL), 0x3CL)) != (-1L)) == l_1008) || 1L) , l_997[1])), l_1035)) , l_1034)))) < p_1338->g_1036[0][5]), l_997[1])), (-7L)))) != l_1008);
                    for (p_1338->g_381 = 0; (p_1338->g_381 <= 7); p_1338->g_381 += 1)
                    { /* block id: 527 */
                        ++l_1038;
                    }
                }
                else
                { /* block id: 530 */
                    return &p_1338->g_167[2];
                }
                if ((*p_59))
                    continue;
                l_1058 = ((p_1338->g_325[3] = ((safe_add_func_uint32_t_u_u(((**p_1338->g_1003) = ((safe_lshift_func_uint16_t_u_s((l_1045 == ((*l_1049) = l_1047)), 9)) & (l_997[0] || (!(((*p_1338->g_87) , (void*)0) != p_1338->g_1050))))), ((safe_add_func_int64_t_s_s((safe_mod_func_int16_t_s_s(0x06F4L, 0x43B7L)), (safe_mul_func_uint16_t_u_u(l_1009[5][1][8], l_997[1])))) , (-2L)))) != (**p_1338->g_755))) < 0UL);
            }
            atomic_add(&p_1338->l_atomic_reduction[0], (safe_lshift_func_int8_t_s_u(((*p_59) <= ((((((l_1009[0][0][5] , (**p_1338->g_1003)) | ((safe_lshift_func_int16_t_s_u((l_1065 = ((((void*)0 == p_60) <= 1L) && (safe_rshift_func_int16_t_s_u((0x4DBDL && (0xB164L <= (0x0A58L < l_997[1]))), l_997[1])))), FAKE_DIVERGE(p_1338->global_2_offset, get_global_id(2), 10))) && 1UL)) , 65532UL) , (void*)0) == (*p_1338->g_772)) >= l_1009[2][0][5])), 4)));
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_1338->v_collective += p_1338->l_atomic_reduction[0];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        }
        l_1076[2] ^= ((~(65535UL <= (((l_1066 != &l_976) ^ (&p_1338->g_952 != ((*l_1067) = l_910[7]))) , p_1338->g_952))) > ((l_1065 || ((safe_mul_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s((safe_div_func_uint8_t_u_u(0x8FL, ((l_889[2] == &p_1338->g_245) | 0x3E554A59FEA9D83BL))), 5)), l_1065)) < l_1075)) < (**p_1338->g_755)));
    }
    else
    { /* block id: 544 */
        int16_t l_1079[1];
        int32_t l_1094[8] = {2L,2L,2L,2L,2L,2L,2L,2L};
        int i;
        for (i = 0; i < 1; i++)
            l_1079[i] = 1L;
lbl_1091:
        if ((safe_mod_func_int16_t_s_s((((*p_1338->g_245) = (l_1079[0] , (**p_1338->g_755))) != l_1079[0]), l_1079[0])))
        { /* block id: 546 */
            return &p_1338->g_167[2];
        }
        else
        { /* block id: 548 */
            int8_t ***l_1084 = &p_1338->g_319;
            int8_t ****l_1085 = &l_1084;
            int32_t l_1086 = 0x626D2E7FL;
            for (l_955 = (-9); (l_955 < 5); l_955 = safe_add_func_int8_t_s_s(l_955, 8))
            { /* block id: 551 */
                int32_t **l_1082 = (void*)0;
                return l_1082;
            }
            for (p_1338->g_974 = 0; (p_1338->g_974 <= 1); p_1338->g_974 += 1)
            { /* block id: 556 */
                int32_t **l_1083 = &l_910[8];
                return &p_1338->g_167[2];
            }
            (*p_1338->g_21) = (-5L);
            l_1086 = (l_1079[0] , (((*l_1085) = l_1084) == &p_1338->g_201));
        }
        for (l_956 = 0; (l_956 > 50); ++l_956)
        { /* block id: 565 */
            if ((*p_59))
                break;
            for (p_1338->g_104 = (-29); (p_1338->g_104 >= 59); p_1338->g_104 = safe_add_func_uint8_t_u_u(p_1338->g_104, 2))
            { /* block id: 569 */
                if (l_956)
                    goto lbl_1091;
            }
        }
        l_1094[3] = (safe_lshift_func_uint8_t_u_u((p_1338->g_163 ^ FAKE_DIVERGE(p_1338->group_1_offset, get_group_id(1), 10)), 5));
    }
    return &p_1338->g_167[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_168 p_1338->g_169 p_1338->g_212 p_1338->g_14 p_1338->g_837
 * writes: p_1338->g_14 p_1338->g_163 p_1338->g_380 p_1338->g_128 p_1338->g_167
 */
int32_t * func_61(uint8_t  p_62, struct S0 * p_1338)
{ /* block id: 453 */
    int32_t *l_815 = &p_1338->g_14;
    int8_t *l_819 = &p_1338->g_163;
    uint8_t **l_824 = &p_1338->g_468[2][1];
    uint16_t *l_829 = &p_1338->g_380;
    uint16_t l_830 = 0xD195L;
    uint64_t *l_831 = &p_1338->g_128;
    int32_t l_832 = 0x0876A086L;
    uint64_t l_833[7];
    int32_t *l_834 = &p_1338->g_3;
    int32_t **l_835 = (void*)0;
    int32_t **l_836 = (void*)0;
    int i;
    for (i = 0; i < 7; i++)
        l_833[i] = 0xDCA9419552992984L;
    (*l_815) = ((*p_1338->g_168) == &p_1338->g_3);
    (*l_815) = (((safe_unary_minus_func_uint32_t_u(((void*)0 != l_815))) , p_1338->g_212[1]) != ((safe_add_func_int8_t_s_s(((*l_819) = p_62), (((safe_rshift_func_uint8_t_u_u(((safe_mul_func_int8_t_s_s((l_824 == ((safe_mul_func_int8_t_s_s(((((*l_831) = (0x75L >= ((((*l_829) = (safe_lshift_func_int16_t_s_u(p_62, p_62))) <= (*l_815)) < l_830))) , (void*)0) != &l_815), (*l_815))) , (void*)0)), (*l_815))) || l_832), (*l_815))) , p_62) >= l_833[5]))) <= 7L));
    (*p_1338->g_837) = l_834;
    return l_834;
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_734 p_1338->g_163 p_1338->g_21 p_1338->g_14
 * writes: p_1338->g_167 p_1338->g_734 p_1338->g_163
 */
uint8_t  func_63(uint64_t  p_64, uint32_t  p_65, struct S0 * p_1338)
{ /* block id: 437 */
    int32_t *l_795 = (void*)0;
    int32_t **l_796 = &p_1338->g_167[4];
    int8_t l_797 = 0x4DL;
    int32_t *l_804[6][7][3] = {{{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79}},{{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79}},{{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79}},{{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79}},{{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79}},{{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79},{&p_1338->g_79,(void*)0,&p_1338->g_79}}};
    uint8_t l_805[7];
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_805[i] = 0x72L;
lbl_814:
    (*l_796) = l_795;
    l_805[4] ^= (((l_797 , l_795) != (void*)0) != (safe_lshift_func_uint8_t_u_s(((p_64 >= (0x06F6EE926F2C6606L >= (safe_lshift_func_int8_t_s_s(0x72L, 1)))) < p_64), (safe_sub_func_uint64_t_u_u(18446744073709551610UL, (((((((l_795 == (void*)0) < l_797) >= (-1L)) , l_795) != &p_1338->g_210[1]) > p_65) >= 0x0110L))))));
    for (p_1338->g_734 = (-22); (p_1338->g_734 != 18); p_1338->g_734 = safe_add_func_int64_t_s_s(p_1338->g_734, 1))
    { /* block id: 442 */
        uint8_t l_808 = 0xA8L;
        l_808++;
    }
    for (p_1338->g_163 = (-7); (p_1338->g_163 >= (-20)); p_1338->g_163 = safe_sub_func_uint64_t_u_u(p_1338->g_163, 9))
    { /* block id: 447 */
        int32_t l_813 = 0x677E7E8DL;
        l_813 &= (*p_1338->g_21);
        if (p_64)
            goto lbl_814;
        (*l_796) = (void*)0;
    }
    return p_65;
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_79 p_1338->g_111 p_1338->g_87 p_1338->g_88 p_1338->g_245 p_1338->g_113 p_1338->g_212 p_1338->g_21 p_1338->g_381 p_1338->g_13 p_1338->g_14 p_1338->g_95 p_1338->g_163 p_1338->g_788 p_1338->g_789
 * writes: p_1338->g_79 p_1338->g_111 p_1338->g_14 p_1338->g_381 p_1338->g_95 p_1338->g_113 p_1338->g_104 p_1338->g_163 p_1338->g_167
 */
uint64_t  func_66(int32_t * p_67, uint64_t * p_68, int64_t  p_69, uint32_t  p_70, struct S0 * p_1338)
{ /* block id: 322 */
    int8_t l_671 = (-4L);
    int32_t l_672 = 0x76D75767L;
    int32_t l_674[1][9];
    uint64_t *l_681 = &p_1338->g_325[1];
    uint8_t *l_682 = &p_1338->g_104;
    int32_t *l_687 = &l_672;
    int16_t **l_692 = &p_1338->g_390[2][4][0];
    uint64_t *l_709 = &p_1338->g_95;
    uint8_t l_713 = 0xF8L;
    uint8_t l_762 = 0x45L;
    uint32_t l_763 = 0x8D8D2CDDL;
    int32_t l_764 = 0x17CCD8E7L;
    int16_t l_766 = 0x4E59L;
    uint64_t *l_786 = &p_1338->g_128;
    uint64_t **l_785 = &l_786;
    int32_t **l_794 = &p_1338->g_167[0];
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
            l_674[i][j] = 0x69DA7AACL;
    }
    for (p_1338->g_79 = 0; (p_1338->g_79 < 28); p_1338->g_79 = safe_add_func_int16_t_s_s(p_1338->g_79, 6))
    { /* block id: 325 */
        int8_t l_652[10][2] = {{0x22L,0x22L},{0x22L,0x22L},{0x22L,0x22L},{0x22L,0x22L},{0x22L,0x22L},{0x22L,0x22L},{0x22L,0x22L},{0x22L,0x22L},{0x22L,0x22L},{0x22L,0x22L}};
        int32_t l_657[9];
        uint8_t *l_658 = &p_1338->g_111;
        int32_t *l_673[2][4][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_657[i] = 0x0A5CB82EL;
        l_674[0][5] |= ((*p_1338->g_21) = (safe_sub_func_uint16_t_u_u(l_652[3][1], (l_672 = (safe_mul_func_uint8_t_u_u(2UL, ((safe_add_func_int32_t_s_s(l_652[3][1], 0x4FCECA6BL)) , (((((++(*l_658)) >= ((safe_lshift_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(252UL, (safe_mul_func_int16_t_s_s(((((GROUP_DIVERGE(2, 1) & (safe_sub_func_uint16_t_u_u(((((l_657[2] = l_652[4][1]) == p_69) >= (safe_div_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), l_671))) , (((((((void*)0 != &l_657[7]) ^ 0xA58E2237L) == 1UL) && l_652[0][0]) == (*p_1338->g_87)) > (*p_1338->g_245))), l_652[6][0]))) , FAKE_DIVERGE(p_1338->global_1_offset, get_global_id(1), 10)) | p_69) < (*p_1338->g_245)), (-2L))))), p_70)) == p_1338->g_212[0])) != p_69) && 0x473B9316B177AD30L) , 0x3FL))))))));
        for (p_1338->g_381 = 0; (p_1338->g_381 >= (-4)); p_1338->g_381 = safe_sub_func_uint64_t_u_u(p_1338->g_381, 8))
        { /* block id: 333 */
            l_674[0][5] &= (*p_1338->g_13);
            for (p_1338->g_95 = 0; (p_1338->g_95 <= 7); p_1338->g_95 += 1)
            { /* block id: 337 */
                return p_69;
            }
        }
        if (p_69)
            break;
    }
    l_674[0][5] = (safe_lshift_func_uint8_t_u_u((+((~(safe_add_func_int64_t_s_s(((*p_1338->g_245) = 0L), GROUP_DIVERGE(1, 1)))) < ((*l_682) = ((void*)0 == l_681)))), 5));
    for (p_1338->g_163 = 7; (p_1338->g_163 >= 1); p_1338->g_163 -= 1)
    { /* block id: 348 */
        uint32_t l_693[5] = {9UL,9UL,9UL,9UL,9UL};
        int32_t l_696[7][2][9] = {{{0x433B02E1L,0x433B02E1L,(-1L),1L,(-1L),1L,(-1L),0x433B02E1L,0x433B02E1L},{0x433B02E1L,0x433B02E1L,(-1L),1L,(-1L),1L,(-1L),0x433B02E1L,0x433B02E1L}},{{0x433B02E1L,0x433B02E1L,(-1L),1L,(-1L),1L,(-1L),0x433B02E1L,0x433B02E1L},{0x433B02E1L,0x433B02E1L,(-1L),1L,(-1L),1L,(-1L),0x433B02E1L,0x433B02E1L}},{{0x433B02E1L,0x433B02E1L,(-1L),1L,(-1L),1L,(-1L),0x433B02E1L,0x433B02E1L},{0x433B02E1L,0x433B02E1L,(-1L),1L,(-1L),1L,(-1L),0x433B02E1L,0x433B02E1L}},{{0x433B02E1L,0x433B02E1L,(-1L),1L,(-1L),1L,(-1L),0x433B02E1L,0x433B02E1L},{0x433B02E1L,0x433B02E1L,(-1L),1L,(-1L),1L,(-1L),0x433B02E1L,0x433B02E1L}},{{0x433B02E1L,0x433B02E1L,(-1L),1L,(-1L),1L,(-1L),0x433B02E1L,0x433B02E1L},{0x433B02E1L,0x433B02E1L,(-1L),1L,(-1L),1L,(-1L),0x433B02E1L,0x433B02E1L}},{{0x433B02E1L,0x433B02E1L,(-1L),1L,(-1L),1L,(-1L),0x433B02E1L,0x433B02E1L},{0x433B02E1L,0x433B02E1L,(-1L),1L,(-1L),1L,(-1L),0x433B02E1L,0x433B02E1L}},{{0x433B02E1L,0x433B02E1L,(-1L),1L,(-1L),1L,(-1L),0x433B02E1L,0x433B02E1L},{0x433B02E1L,0x433B02E1L,(-1L),1L,(-1L),1L,(-1L),0x433B02E1L,0x433B02E1L}}};
        uint16_t *l_701 = &p_1338->g_380;
        int16_t ***l_707 = &p_1338->g_689;
        uint64_t *l_732 = &p_1338->g_128;
        uint64_t **l_731 = &l_732;
        uint32_t l_739 = 1UL;
        int32_t l_761 = 0L;
        uint64_t l_767 = 5UL;
        int8_t *l_792 = &l_671;
        int i, j, k;
        (1 + 1);
    }
    (*l_794) = &l_672;
    return (*p_1338->g_788);
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_27 p_1338->g_21 p_1338->g_14 p_1338->g_7 p_1338->g_3 p_1338->g_87 p_1338->g_79 p_1338->g_8 p_1338->g_95 p_1338->g_109 p_1338->g_111 p_1338->g_92 p_1338->g_245 p_1338->g_113 p_1338->g_202 p_1338->g_203 p_1338->g_104 p_1338->g_380 p_1338->g_88 p_1338->g_128 p_1338->g_325 p_1338->g_571 p_1338->g_168 p_1338->g_169 p_1338->g_574 p_1338->g_201 p_1338->g_264 p_1338->g_167
 * writes: p_1338->g_14 p_1338->g_79 p_1338->g_90 p_1338->g_92 p_1338->g_95 p_1338->g_104 p_1338->g_113 p_1338->g_163 p_1338->g_380 p_1338->g_128 p_1338->g_167 p_1338->g_169 p_1338->g_390 p_1338->g_586 p_1338->g_588 p_1338->g_591
 */
uint64_t * func_71(int32_t ** p_72, struct S0 * p_1338)
{ /* block id: 39 */
    int32_t * volatile l_76[3];
    uint64_t *l_94 = &p_1338->g_95;
    int32_t l_108 = 0x51DBEEE9L;
    uint16_t l_114 = 0x0FB8L;
    int32_t *l_165[1][10] = {{&p_1338->g_14,&p_1338->g_79,(void*)0,&p_1338->g_79,&p_1338->g_14,&p_1338->g_14,&p_1338->g_79,(void*)0,&p_1338->g_79,&p_1338->g_14}};
    int8_t *l_205 = (void*)0;
    int8_t **l_204 = &l_205;
    int16_t *l_417 = &p_1338->g_161;
    uint64_t l_442 = 0xF2BE4794D042BC16L;
    uint16_t l_456 = 0x88ACL;
    int8_t l_512 = (-2L);
    uint64_t l_516 = 18446744073709551614UL;
    int32_t l_528 = 1L;
    int i, j;
    for (i = 0; i < 3; i++)
        l_76[i] = &p_1338->g_14;
    l_76[1] = (*p_1338->g_27);
    for (p_1338->g_14 = 0; (p_1338->g_14 > (-16)); p_1338->g_14--)
    { /* block id: 43 */
        int16_t l_93 = 0x2AC9L;
        uint64_t *l_96 = &p_1338->g_95;
        int32_t l_97 = (-4L);
        uint32_t *l_110[10][1] = {{&p_1338->g_90},{&p_1338->g_90},{&p_1338->g_90},{&p_1338->g_90},{&p_1338->g_90},{&p_1338->g_90},{&p_1338->g_90},{&p_1338->g_90},{&p_1338->g_90},{&p_1338->g_90}};
        int8_t l_135 = (-4L);
        int32_t l_223 = (-1L);
        int32_t l_249[2];
        int32_t *l_267 = &l_223;
        int16_t l_290 = 0L;
        uint64_t l_307 = 0xBB5579D358C5A75CL;
        uint8_t *l_361 = &p_1338->g_104;
        int32_t *l_400 = &l_249[1];
        int32_t l_438 = 1L;
        int32_t *l_445 = &l_438;
        int8_t ***l_509 = &l_204;
        uint64_t *l_577 = (void*)0;
        uint16_t *l_592 = &p_1338->g_380;
        uint8_t l_605 = 0x30L;
        int i, j;
        for (i = 0; i < 2; i++)
            l_249[i] = (-2L);
        for (p_1338->g_79 = 23; (p_1338->g_79 > 16); p_1338->g_79 = safe_sub_func_int8_t_s_s(p_1338->g_79, 1))
        { /* block id: 46 */
            uint32_t l_86 = 3UL;
            uint32_t *l_89 = &p_1338->g_90;
            int32_t *l_91[4] = {&p_1338->g_92,&p_1338->g_92,&p_1338->g_92,&p_1338->g_92};
            uint64_t *l_98 = (void*)0;
            int i;
            l_97 = ((safe_mod_func_int32_t_s_s((((((9L ^ ((safe_mul_func_int16_t_s_s(((p_1338->g_7[4] < (l_86 >= ((+p_1338->g_3) | (((*l_89) = ((void*)0 != p_1338->g_87)) >= (p_1338->g_92 = (-8L)))))) & p_1338->g_79), (((0x5BB7EAB3286B0011L && l_93) && 0x49AAE810F1DDE4E4L) || 0UL))) < 0x586993EBL)) | 0x33D8L) <= 0x609E5B73647B8CEEL) , l_94) == l_96), p_1338->g_3)) | 1UL);
            return l_98;
        }
        for (p_1338->g_95 = 19; (p_1338->g_95 < 56); p_1338->g_95++)
        { /* block id: 54 */
            uint8_t *l_103[6][2] = {{(void*)0,&p_1338->g_104},{(void*)0,&p_1338->g_104},{(void*)0,&p_1338->g_104},{(void*)0,&p_1338->g_104},{(void*)0,&p_1338->g_104},{(void*)0,&p_1338->g_104}};
            uint32_t *l_107[8][3][4] = {{{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90}},{{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90}},{{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90}},{{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90}},{{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90}},{{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90}},{{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90}},{{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90},{&p_1338->g_90,(void*)0,&p_1338->g_90,&p_1338->g_90}}};
            int64_t *l_112 = &p_1338->g_113;
            int32_t l_115 = 1L;
            int8_t l_175 = 0L;
            int8_t *l_200 = &l_135;
            int8_t **l_199 = &l_200;
            int8_t l_211 = 1L;
            uint64_t *l_246 = &p_1338->g_128;
            int32_t **l_266[2];
            uint64_t l_382 = 0UL;
            int64_t l_435[7][5][6] = {{{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L}},{{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L}},{{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L}},{{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L}},{{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L}},{{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L}},{{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L},{0x1F368B1C64CF0D9CL,6L,(-1L),0x5B8B0816E5A81251L,0x30582363DC892A78L,0x30582363DC892A78L}}};
            int32_t l_436 = 0x23CB1FA3L;
            int16_t l_487 = 0x118CL;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_266[i] = &l_165[0][7];
            l_115 = (0x64F1A1E6L >= ((p_1338->g_8 | (l_114 &= ((*l_112) = ((safe_lshift_func_uint8_t_u_u((p_1338->g_104 = 246UL), (l_76[1] != ((p_1338->g_95 , (safe_sub_func_int8_t_s_s(p_1338->g_14, (l_107[3][0][3] != (((l_108 , (p_1338->g_109 , &p_1338->g_14)) == (void*)0) , l_110[4][0]))))) , &p_1338->g_92)))) , p_1338->g_111)))) ^ p_1338->g_92));
            for (p_1338->g_90 = 0; (p_1338->g_90 != 2); p_1338->g_90 = safe_add_func_uint32_t_u_u(p_1338->g_90, 6))
            { /* block id: 61 */
                int32_t l_122 = 0x0FF22B77L;
                uint64_t l_123 = 0x649878E731B53E36L;
                uint32_t l_218 = 0xD302FA1FL;
                uint8_t l_244[1][8];
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 8; j++)
                        l_244[i][j] = 0UL;
                }
                (1 + 1);
            }
            l_267 = &l_108;
        }
        (*l_445) &= (*l_267);
        if ((((safe_add_func_int32_t_s_s(((*l_267) , (((safe_sub_func_int8_t_s_s(((safe_add_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_u((((*l_400) = ((*p_1338->g_245) ^= (safe_rshift_func_uint16_t_u_u(1UL, 0)))) , ((p_1338->g_7[4] , p_1338->g_95) && (safe_mul_func_uint8_t_u_u(255UL, (safe_sub_func_uint16_t_u_u(((safe_div_func_uint8_t_u_u(((safe_div_func_int8_t_s_s(((((*l_509) = (void*)0) == &p_1338->g_202) > (safe_rshift_func_uint16_t_u_s((((((&l_267 != (void*)0) || (*l_400)) , (*l_445)) <= (*l_400)) && (*l_400)), (*l_400)))), (*l_400))) == (*l_400)), (*p_1338->g_202))) | 0x19CB3A10L), (*l_445))))))), FAKE_DIVERGE(p_1338->local_1_offset, get_local_id(1), 10))) == (*l_445)), 0x12L)) | 0x842AB500L), 0x3FL)) ^ p_1338->g_104) >= (*l_267))), (*l_267))) , l_512) != (*l_445)))
        { /* block id: 246 */
            uint32_t l_513 = 4294967295UL;
            int32_t l_514 = 1L;
            int32_t l_515 = (-6L);
            l_513 = (-6L);
            l_516--;
        }
        else
        { /* block id: 249 */
            int8_t l_535 = 0x69L;
            uint64_t *l_573 = &l_442;
            uint64_t *l_575 = &l_442;
            int32_t l_595 = 3L;
            int32_t l_596 = 0x74D23959L;
            int32_t l_597 = 0x0BDBF91EL;
            int32_t l_599[9][2][8] = {{{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L},{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L}},{{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L},{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L}},{{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L},{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L}},{{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L},{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L}},{{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L},{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L}},{{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L},{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L}},{{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L},{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L}},{{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L},{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L}},{{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L},{(-1L),0x7B7F5362L,(-1L),(-7L),(-2L),0x7EE21E94L,(-7L),1L}}};
            int i, j, k;
            for (l_438 = (-9); (l_438 < (-28)); --l_438)
            { /* block id: 252 */
                uint8_t l_536 = 0x63L;
                int32_t l_541 = 0x64434585L;
                for (p_1338->g_163 = 0; (p_1338->g_163 <= 29); ++p_1338->g_163)
                { /* block id: 255 */
                    int32_t l_523 = 8L;
                    uint16_t *l_526 = (void*)0;
                    uint16_t *l_527[6];
                    int i;
                    for (i = 0; i < 6; i++)
                        l_527[i] = (void*)0;
                    (*l_267) = ((+l_523) || 0x4889L);
                    if (((*p_1338->g_21) , (safe_sub_func_int64_t_s_s(((p_1338->g_380 &= l_523) , (l_528 == (*l_400))), (safe_rshift_func_int16_t_s_u(((safe_div_func_int16_t_s_s((((safe_mul_func_int16_t_s_s(l_535, ((l_536 < ((0UL > (l_541 = (((safe_rshift_func_int16_t_s_s((-1L), 1)) & (safe_add_func_uint64_t_u_u((*p_1338->g_87), l_535))) , 0x797455B4L))) ^ p_1338->g_128)) == l_536))) , 0x5353L) > (*l_400)), 0x2B0BL)) > l_536), l_535))))))
                    { /* block id: 259 */
                        int8_t l_558 = (-4L);
                        uint64_t *l_563 = &p_1338->g_128;
                        (*l_267) = ((void*)0 != &l_361);
                        (*l_267) |= (safe_sub_func_int64_t_s_s(l_536, l_535));
                        (*l_400) = (((safe_add_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_u((((l_536 && ((safe_add_func_int16_t_s_s(0x3D4EL, (((void*)0 == &l_536) & GROUP_DIVERGE(0, 1)))) <= p_1338->g_325[1])) <= (((0xC4FD3AC9L | (safe_lshift_func_int16_t_s_s(((((((*l_563) = ((safe_add_func_uint64_t_u_u(l_536, (safe_lshift_func_uint8_t_u_u(l_558, 3)))) | ((safe_sub_func_int32_t_s_s((((+(safe_lshift_func_uint16_t_u_s(65532UL, l_541))) & 1L) > (*l_267)), p_1338->g_113)) < (*p_1338->g_245)))) , l_558) , p_72) != &l_76[2]) ^ GROUP_DIVERGE(1, 1)), 11))) ^ 0xD532L) > 1UL)) || p_1338->g_88), 3)) , (*l_400)), 0x179408B1BF8A3C5CL)) <= GROUP_DIVERGE(1, 1)) , l_541);
                    }
                    else
                    { /* block id: 264 */
                        return &p_1338->g_325[2];
                    }
                }
            }
            for (p_1338->g_92 = 11; (p_1338->g_92 < 21); p_1338->g_92 = safe_add_func_uint16_t_u_u(p_1338->g_92, 1))
            { /* block id: 271 */
                (*l_267) = 6L;
                for (l_97 = 20; (l_97 == 22); l_97 = safe_add_func_int8_t_s_s(l_97, 4))
                { /* block id: 275 */
                    int32_t *l_570 = &p_1338->g_8;
                    uint64_t *l_572 = &p_1338->g_325[0];
                    for (l_307 = 0; (l_307 < 48); l_307 = safe_add_func_int64_t_s_s(l_307, 6))
                    { /* block id: 278 */
                        (*p_1338->g_571) = l_570;
                        return l_572;
                    }
                    return &p_1338->g_325[2];
                }
                return &p_1338->g_95;
            }
            if (((void*)0 != l_205))
            { /* block id: 286 */
                (*p_1338->g_574) = (*p_1338->g_168);
            }
            else
            { /* block id: 288 */
                uint64_t *l_576 = &l_516;
                int32_t l_582 = 2L;
                int16_t *l_583 = (void*)0;
                int16_t **l_584 = (void*)0;
                int16_t **l_585 = &p_1338->g_390[3][2][2];
                int8_t *l_587 = &p_1338->g_163;
                uint16_t *l_590 = &l_456;
                uint16_t **l_589[3][10][8] = {{{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590}},{{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590}},{{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590},{&l_590,&l_590,&l_590,(void*)0,&l_590,&l_590,&l_590,&l_590}}};
                int32_t l_598 = (-1L);
                int32_t l_600 = (-1L);
                int32_t l_601 = (-1L);
                int32_t l_602 = (-10L);
                int16_t l_603 = (-9L);
                int32_t l_604[6][6] = {{9L,9L,9L,9L,9L,9L},{9L,9L,9L,9L,9L,9L},{9L,9L,9L,9L,9L,9L},{9L,9L,9L,9L,9L,9L},{9L,9L,9L,9L,9L,9L},{9L,9L,9L,9L,9L,9L}};
                int i, j, k;
                for (l_93 = 0; (l_93 >= 0); l_93 -= 1)
                { /* block id: 291 */
                    return l_577;
                }
                (*l_267) |= ((safe_add_func_uint32_t_u_u(((safe_add_func_uint64_t_u_u(((((p_1338->g_586 = ((*l_585) = (l_582 , l_583))) != &l_93) | (((*l_587) = l_582) <= (((p_1338->g_588 = (**p_1338->g_201)) == ((((p_1338->g_591 = (void*)0) == l_592) || (l_582 && ((+((((safe_sub_func_uint64_t_u_u((*l_445), 0xA682D99AFC633191L)) >= 254UL) == (*l_400)) < l_582)) , l_582))) >= (*p_1338->g_245))) >= (-3L)))) , (*p_1338->g_87)), (*l_400))) != GROUP_DIVERGE(1, 1)), 0x07D2B5CFL)) <= l_535);
                ++l_605;
                if (((*l_445) &= l_595))
                { /* block id: 302 */
                    int32_t l_615 = 0x57C3EABFL;
                    for (p_1338->g_95 = 0; (p_1338->g_95 != 25); p_1338->g_95 = safe_add_func_int32_t_s_s(p_1338->g_95, 9))
                    { /* block id: 305 */
                        int32_t **l_610 = &l_445;
                        int8_t *l_647 = &p_1338->g_163;
                        (*l_610) = &l_528;
                        atomic_min(&p_1338->l_atomic_reduction[0], ((safe_lshift_func_uint16_t_u_s(1UL, (l_582 &= (safe_rshift_func_uint16_t_u_u((l_615 < GROUP_DIVERGE(1, 1)), ((((0UL & ((safe_lshift_func_uint8_t_u_s((l_604[5][1] = ((safe_lshift_func_uint16_t_u_s((safe_sub_func_int64_t_s_s((safe_div_func_int64_t_s_s(l_597, (safe_lshift_func_int8_t_s_s((**p_1338->g_201), 4)))), (safe_mul_func_int16_t_s_s((*l_267), ((safe_rshift_func_uint16_t_u_u(((((*l_585) = &p_1338->g_161) == (void*)0) && GROUP_DIVERGE(2, 1)), (((((~(l_597 & p_1338->g_325[1])) , (*l_400)) , &p_1338->g_380) != (void*)0) | FAKE_DIVERGE(p_1338->group_2_offset, get_group_id(2), 10)))) ^ 0UL))))), l_602)) || (**l_610))), 1)) <= l_603)) || p_1338->g_128) == (-1L)) , 0UL)))))) <= (**l_610)) + get_linear_global_id());
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1338->v_collective += p_1338->l_atomic_reduction[0];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        l_97 |= ((**l_610) = (safe_add_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_s((safe_add_func_uint8_t_u_u(l_599[5][1][0], ((!(((void*)0 == l_587) , (safe_mul_func_uint8_t_u_u((safe_unary_minus_func_uint64_t_u(((safe_add_func_uint32_t_u_u(0x96065421L, ((void*)0 == &p_1338->g_468[1][1]))) != ((((((*l_509) = &l_587) != &p_1338->g_202) , ((safe_div_func_int32_t_s_s((safe_mod_func_int32_t_s_s((safe_div_func_int16_t_s_s(((*l_445) >= (*l_400)), l_615)), 1L)), (**p_1338->g_264))) && l_602)) , (**l_509)) == l_647)))), (*l_400))))) , l_615))), l_535)), (*l_267))));
                    }
                }
                else
                { /* block id: 315 */
                    (*l_445) = l_595;
                }
            }
        }
    }
    return &p_1338->g_325[2];
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S0 c_1339;
    struct S0* p_1338 = &c_1339;
    struct S0 c_1340 = {
        {0x60F57A7CL,0x60F57A7CL,0x60F57A7CL}, // p_1338->g_2
        0x0ADE2167L, // p_1338->g_3
        0L, // p_1338->g_6
        {(-2L),0x011151C3L,(-2L),(-2L),0x011151C3L,(-2L),(-2L),0x011151C3L}, // p_1338->g_7
        (-10L), // p_1338->g_8
        {{{&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,(void*)0,&p_1338->g_8,&p_1338->g_3},{&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,(void*)0,&p_1338->g_8,&p_1338->g_3},{&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,(void*)0,&p_1338->g_8,&p_1338->g_3},{&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,(void*)0,&p_1338->g_8,&p_1338->g_3},{&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,(void*)0,&p_1338->g_8,&p_1338->g_3},{&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,(void*)0,&p_1338->g_8,&p_1338->g_3},{&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,(void*)0,&p_1338->g_8,&p_1338->g_3}},{{&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,(void*)0,&p_1338->g_8,&p_1338->g_3},{&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,(void*)0,&p_1338->g_8,&p_1338->g_3},{&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,(void*)0,&p_1338->g_8,&p_1338->g_3},{&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,(void*)0,&p_1338->g_8,&p_1338->g_3},{&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,(void*)0,&p_1338->g_8,&p_1338->g_3},{&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,(void*)0,&p_1338->g_8,&p_1338->g_3},{&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,&p_1338->g_3,&p_1338->g_8,(void*)0,&p_1338->g_8,&p_1338->g_3}}}, // p_1338->g_12
        1L, // p_1338->g_14
        &p_1338->g_14, // p_1338->g_13
        &p_1338->g_14, // p_1338->g_21
        &p_1338->g_21, // p_1338->g_27
        (void*)0, // p_1338->g_74
        {&p_1338->g_12[1][4][5],&p_1338->g_12[1][4][5]}, // p_1338->g_75
        1L, // p_1338->g_79
        0UL, // p_1338->g_88
        &p_1338->g_88, // p_1338->g_87
        4294967291UL, // p_1338->g_90
        0L, // p_1338->g_92
        18446744073709551614UL, // p_1338->g_95
        0x34L, // p_1338->g_104
        0x7C3EL, // p_1338->g_109
        1UL, // p_1338->g_111
        0x4321B6B7D2F2FD22L, // p_1338->g_113
        18446744073709551608UL, // p_1338->g_128
        4L, // p_1338->g_161
        0UL, // p_1338->g_162
        0L, // p_1338->g_163
        {&p_1338->g_79,&p_1338->g_79,&p_1338->g_79,&p_1338->g_79,&p_1338->g_79}, // p_1338->g_167
        &p_1338->g_167[2], // p_1338->g_166
        (void*)0, // p_1338->g_169
        &p_1338->g_169, // p_1338->g_168
        (-5L), // p_1338->g_203
        &p_1338->g_203, // p_1338->g_202
        &p_1338->g_202, // p_1338->g_201
        {0L,0L}, // p_1338->g_210
        {0x44D081FCL,0x44D081FCL,0x44D081FCL,0x44D081FCL,0x44D081FCL}, // p_1338->g_212
        &p_1338->g_113, // p_1338->g_245
        &p_1338->g_167[2], // p_1338->g_264
        0xD9C06BD8L, // p_1338->g_302
        (void*)0, // p_1338->g_319
        {18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL}, // p_1338->g_325
        0xDC64L, // p_1338->g_380
        0x01F49E84E6DCCE72L, // p_1338->g_381
        {{{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161}},{{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161}},{{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161}},{{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161}},{{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161}},{{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161}},{{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161},{&p_1338->g_161,&p_1338->g_161,&p_1338->g_161}}}, // p_1338->g_390
        {{(void*)0,&p_1338->g_104,(void*)0,(void*)0},{(void*)0,&p_1338->g_104,(void*)0,(void*)0},{(void*)0,&p_1338->g_104,(void*)0,(void*)0}}, // p_1338->g_468
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1338->g_467
        &p_1338->g_167[2], // p_1338->g_571
        &p_1338->g_169, // p_1338->g_574
        &p_1338->g_161, // p_1338->g_586
        0x669CD3A5L, // p_1338->g_588
        &p_1338->g_109, // p_1338->g_591
        &p_1338->g_390[6][6][1], // p_1338->g_689
        &p_1338->g_689, // p_1338->g_688
        3L, // p_1338->g_712
        (-1L), // p_1338->g_734
        &p_1338->g_245, // p_1338->g_755
        (void*)0, // p_1338->g_771
        &p_1338->g_13, // p_1338->g_772
        &p_1338->g_167[2], // p_1338->g_773
        0UL, // p_1338->g_789
        &p_1338->g_789, // p_1338->g_788
        &p_1338->g_788, // p_1338->g_787
        &p_1338->g_167[3], // p_1338->g_837
        1UL, // p_1338->g_852
        6L, // p_1338->g_952
        0x08035A7FL, // p_1338->g_974
        &p_1338->g_90, // p_1338->g_1004
        &p_1338->g_1004, // p_1338->g_1003
        (void*)0, // p_1338->g_1017
        1UL, // p_1338->g_1026
        {{0x31L,0x4FL,0x31L,0x31L,0x4FL,0x31L,0x31L,0x4FL},{0x31L,0x4FL,0x31L,0x31L,0x4FL,0x31L,0x31L,0x4FL},{0x31L,0x4FL,0x31L,0x31L,0x4FL,0x31L,0x31L,0x4FL},{0x31L,0x4FL,0x31L,0x31L,0x4FL,0x31L,0x31L,0x4FL}}, // p_1338->g_1036
        (void*)0, // p_1338->g_1051
        &p_1338->g_1051, // p_1338->g_1050
        0x99831A33L, // p_1338->g_1107
        &p_1338->g_167[2], // p_1338->g_1133
        4294967295UL, // p_1338->g_1173
        &p_1338->g_167[2], // p_1338->g_1174
        &p_1338->g_167[2], // p_1338->g_1177
        &p_1338->g_92, // p_1338->g_1192
        1L, // p_1338->g_1194
        0x7EEBE5937EF31077L, // p_1338->g_1197
        {&p_1338->g_167[2],&p_1338->g_167[2],&p_1338->g_167[2],&p_1338->g_167[2],&p_1338->g_167[2],&p_1338->g_167[2],&p_1338->g_167[2],&p_1338->g_167[2],&p_1338->g_167[2],&p_1338->g_167[2]}, // p_1338->g_1249
        &p_1338->g_167[0], // p_1338->g_1250
        &p_1338->g_468[2][1], // p_1338->g_1271
        {&p_1338->g_3,(void*)0,&p_1338->g_3,&p_1338->g_3,(void*)0,&p_1338->g_3,&p_1338->g_3,(void*)0,&p_1338->g_3,&p_1338->g_3}, // p_1338->g_1278
        {{0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL},{0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL},{0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL,0x4A7EBA57C1404EDAL}}, // p_1338->g_1320
        0, // p_1338->v_collective
        sequence_input[get_global_id(0)], // p_1338->global_0_offset
        sequence_input[get_global_id(1)], // p_1338->global_1_offset
        sequence_input[get_global_id(2)], // p_1338->global_2_offset
        sequence_input[get_local_id(0)], // p_1338->local_0_offset
        sequence_input[get_local_id(1)], // p_1338->local_1_offset
        sequence_input[get_local_id(2)], // p_1338->local_2_offset
        sequence_input[get_group_id(0)], // p_1338->group_0_offset
        sequence_input[get_group_id(1)], // p_1338->group_1_offset
        sequence_input[get_group_id(2)], // p_1338->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1339 = c_1340;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1338);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1338->g_2[i], "p_1338->g_2[i]", print_hash_value);

    }
    transparent_crc(p_1338->g_3, "p_1338->g_3", print_hash_value);
    transparent_crc(p_1338->g_6, "p_1338->g_6", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1338->g_7[i], "p_1338->g_7[i]", print_hash_value);

    }
    transparent_crc(p_1338->g_8, "p_1338->g_8", print_hash_value);
    transparent_crc(p_1338->g_14, "p_1338->g_14", print_hash_value);
    transparent_crc(p_1338->g_79, "p_1338->g_79", print_hash_value);
    transparent_crc(p_1338->g_88, "p_1338->g_88", print_hash_value);
    transparent_crc(p_1338->g_90, "p_1338->g_90", print_hash_value);
    transparent_crc(p_1338->g_92, "p_1338->g_92", print_hash_value);
    transparent_crc(p_1338->g_95, "p_1338->g_95", print_hash_value);
    transparent_crc(p_1338->g_104, "p_1338->g_104", print_hash_value);
    transparent_crc(p_1338->g_109, "p_1338->g_109", print_hash_value);
    transparent_crc(p_1338->g_111, "p_1338->g_111", print_hash_value);
    transparent_crc(p_1338->g_113, "p_1338->g_113", print_hash_value);
    transparent_crc(p_1338->g_128, "p_1338->g_128", print_hash_value);
    transparent_crc(p_1338->g_161, "p_1338->g_161", print_hash_value);
    transparent_crc(p_1338->g_162, "p_1338->g_162", print_hash_value);
    transparent_crc(p_1338->g_163, "p_1338->g_163", print_hash_value);
    transparent_crc(p_1338->g_203, "p_1338->g_203", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1338->g_210[i], "p_1338->g_210[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1338->g_212[i], "p_1338->g_212[i]", print_hash_value);

    }
    transparent_crc(p_1338->g_302, "p_1338->g_302", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1338->g_325[i], "p_1338->g_325[i]", print_hash_value);

    }
    transparent_crc(p_1338->g_380, "p_1338->g_380", print_hash_value);
    transparent_crc(p_1338->g_381, "p_1338->g_381", print_hash_value);
    transparent_crc(p_1338->g_588, "p_1338->g_588", print_hash_value);
    transparent_crc(p_1338->g_712, "p_1338->g_712", print_hash_value);
    transparent_crc(p_1338->g_734, "p_1338->g_734", print_hash_value);
    transparent_crc(p_1338->g_789, "p_1338->g_789", print_hash_value);
    transparent_crc(p_1338->g_852, "p_1338->g_852", print_hash_value);
    transparent_crc(p_1338->g_952, "p_1338->g_952", print_hash_value);
    transparent_crc(p_1338->g_974, "p_1338->g_974", print_hash_value);
    transparent_crc(p_1338->g_1026, "p_1338->g_1026", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1338->g_1036[i][j], "p_1338->g_1036[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1338->g_1107, "p_1338->g_1107", print_hash_value);
    transparent_crc(p_1338->g_1173, "p_1338->g_1173", print_hash_value);
    transparent_crc(p_1338->g_1194, "p_1338->g_1194", print_hash_value);
    transparent_crc(p_1338->g_1197, "p_1338->g_1197", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1338->g_1320[i][j], "p_1338->g_1320[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1338->v_collective, "p_1338->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
