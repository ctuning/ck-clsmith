// ---fake_divergence -g 10,84,4 -l 1,12,2
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


// Seed: 22

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint8_t  f0;
   volatile uint32_t  f1;
   volatile int8_t * f2;
   int32_t  f3;
};

union U1 {
   volatile int64_t  f0;
};

struct S2 {
    int8_t g_7;
    volatile VECTOR(uint32_t, 4) g_24;
    volatile VECTOR(int8_t, 2) g_45;
    int32_t g_64;
    int8_t g_74;
    int64_t g_86;
    uint64_t g_88;
    uint8_t g_92;
    uint16_t g_94;
    int16_t g_96;
    uint64_t g_98;
    int32_t g_99[10];
    int16_t *g_106;
    int32_t *g_133;
    union U0 g_135;
    VECTOR(int8_t, 4) g_143;
    int32_t g_159;
    volatile VECTOR(int32_t, 16) g_160;
    int32_t ** volatile g_161[5];
    volatile int64_t g_172;
    int32_t g_174[9][8][3];
    volatile VECTOR(uint64_t, 4) g_201;
    VECTOR(int16_t, 2) g_212;
    uint64_t *g_224;
    uint64_t **g_223;
    uint64_t *** volatile g_222;
    VECTOR(int16_t, 4) g_246;
    VECTOR(int32_t, 2) g_267;
    VECTOR(int8_t, 2) g_271;
    VECTOR(int8_t, 8) g_273;
    union U0 g_280;
    int16_t g_285;
    VECTOR(int32_t, 8) g_297;
    VECTOR(int32_t, 8) g_299;
    int32_t g_313[2][7][1];
    int32_t g_318[6];
    int32_t g_319;
    int64_t g_321;
    uint8_t g_324;
    uint8_t *g_355;
    uint8_t **g_354;
    volatile union U1 g_393;
    VECTOR(uint32_t, 16) g_404;
    uint64_t *** volatile g_412;
    uint64_t *** volatile g_413[9];
    uint64_t *** volatile g_414;
    uint64_t *** volatile g_415;
    union U1 g_450;
    volatile uint64_t g_478;
    volatile VECTOR(int8_t, 16) g_500;
    volatile VECTOR(int8_t, 4) g_502;
    VECTOR(uint8_t, 8) g_535;
    VECTOR(int64_t, 4) g_561;
    uint32_t *g_582;
    VECTOR(uint64_t, 8) g_618;
    int32_t g_623;
    uint64_t *** volatile g_642[4];
    union U0 *g_655;
    union U0 ** volatile g_654;
    volatile uint32_t g_663;
    VECTOR(int16_t, 8) g_675;
    volatile VECTOR(int16_t, 4) g_695;
    VECTOR(int16_t, 16) g_717;
    volatile union U1 g_792;
    int8_t *g_796;
    int8_t **g_795;
    volatile int32_t g_805;
    int64_t *g_816[7];
    VECTOR(uint8_t, 4) g_830;
    union U1 *g_843;
    int32_t **g_847;
    int64_t **g_864[9][10];
    int64_t **g_866;
    int64_t *** volatile g_865;
    int8_t *** volatile g_880;
    int8_t *** volatile *g_879;
    volatile VECTOR(uint16_t, 4) g_942;
    int8_t g_977;
    VECTOR(uint8_t, 8) g_984;
    uint64_t g_996;
    volatile VECTOR(uint8_t, 16) g_1038;
    VECTOR(uint8_t, 2) g_1039;
    VECTOR(uint8_t, 4) g_1041;
    int32_t ** volatile g_1051;
    VECTOR(uint16_t, 2) g_1057;
    VECTOR(uint8_t, 2) g_1068;
    union U0 g_1077;
    volatile union U1 g_1091;
    VECTOR(int8_t, 8) g_1126;
    volatile VECTOR(int8_t, 4) g_1127;
    union U0 g_1136;
    volatile VECTOR(uint8_t, 8) g_1174;
    volatile VECTOR(uint64_t, 8) g_1175;
    int16_t **g_1182[3][8];
    int32_t * volatile g_1202[9][6][4];
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
uint32_t  func_1(struct S2 * p_1204);
int8_t * func_10(uint32_t  p_11, int8_t * p_12, int64_t  p_13, struct S2 * p_1204);
int8_t * func_14(int8_t  p_15, int16_t  p_16, uint32_t  p_17, int64_t  p_18, uint16_t  p_19, struct S2 * p_1204);
uint32_t  func_25(uint8_t  p_26, uint16_t  p_27, uint8_t  p_28, uint32_t  p_29, struct S2 * p_1204);
int64_t  func_34(int32_t * p_35, int32_t * p_36, int32_t * p_37, int16_t  p_38, struct S2 * p_1204);
int32_t * func_39(int8_t * p_40, uint64_t  p_41, int32_t * p_42, uint32_t  p_43, int32_t * p_44, struct S2 * p_1204);
uint8_t  func_48(uint8_t  p_49, int32_t * p_50, int32_t * p_51, int32_t * p_52, struct S2 * p_1204);
int32_t * func_53(uint16_t  p_54, struct S2 * p_1204);
int32_t  func_58(int32_t  p_59, int32_t * p_60, int8_t * p_61, int32_t  p_62, struct S2 * p_1204);
int32_t * func_66(int32_t * p_67, int8_t * p_68, struct S2 * p_1204);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1204->g_7 p_1204->g_24 p_1204->g_45 p_1204->g_64 p_1204->g_88 p_1204->g_92 p_1204->g_94 p_1204->g_96 p_1204->g_99 p_1204->g_74 p_1204->g_98 p_1204->g_86 p_1204->g_133 p_1204->g_106 p_1204->g_143 p_1204->g_159 p_1204->g_160 p_1204->g_174 p_1204->g_135.f0 p_1204->g_201 p_1204->g_212 p_1204->g_222 p_1204->g_246 p_1204->g_267 p_1204->g_271 p_1204->g_273 p_1204->g_393 p_1204->g_319 p_1204->g_415 p_1204->g_285 p_1204->g_478 p_1204->g_354 p_1204->g_355 p_1204->g_500 p_1204->g_502 p_1204->g_280 p_1204->g_321 p_1204->g_224 p_1204->g_535 p_1204->g_172 p_1204->g_297 p_1204->g_654 p_1204->g_404 p_1204->g_792 p_1204->g_795 p_1204->g_618 p_1204->g_830 p_1204->g_280.f0 p_1204->g_324 p_1204->g_318 p_1204->g_847 p_1204->g_865 p_1204->g_796 p_1204->g_623 p_1204->g_879 p_1204->g_880 p_1204->g_977 p_1204->g_816 p_1204->g_1051 p_1204->g_1057 p_1204->g_655 p_1204->g_1068 p_1204->g_866 p_1204->g_561 p_1204->g_1077 p_1204->g_1041 p_1204->g_1091
 * writes: p_1204->g_64 p_1204->g_74 p_1204->g_88 p_1204->g_94 p_1204->g_96 p_1204->g_98 p_1204->g_99 p_1204->g_106 p_1204->g_92 p_1204->g_133 p_1204->g_159 p_1204->g_135.f0 p_1204->g_223 p_1204->g_319 p_1204->g_324 p_1204->g_273 p_1204->g_321 p_1204->g_86 p_1204->g_655 p_1204->g_174 p_1204->g_795 p_1204->g_285 p_1204->g_843 p_1204->g_847 p_1204->g_864 p_1204->g_866 p_1204->g_623 p_1204->g_996 p_1204->g_7 p_1204->g_1057 p_1204->g_1182
 */
uint32_t  func_1(struct S2 * p_1204)
{ /* block id: 4 */
    uint32_t l_6 = 0x672D714FL;
    VECTOR(uint32_t, 16) l_22 = (VECTOR(uint32_t, 16))(0x93F6A083L, (VECTOR(uint32_t, 4))(0x93F6A083L, (VECTOR(uint32_t, 2))(0x93F6A083L, 0xFBFCC013L), 0xFBFCC013L), 0xFBFCC013L, 0x93F6A083L, 0xFBFCC013L, (VECTOR(uint32_t, 2))(0x93F6A083L, 0xFBFCC013L), (VECTOR(uint32_t, 2))(0x93F6A083L, 0xFBFCC013L), 0x93F6A083L, 0xFBFCC013L, 0x93F6A083L, 0xFBFCC013L);
    VECTOR(uint32_t, 4) l_23 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xB9A31C0AL), 0xB9A31C0AL);
    uint32_t l_456[5] = {0UL,0UL,0UL,0UL,0UL};
    uint64_t l_644[3];
    int8_t *l_1026 = &p_1204->g_74;
    int8_t *l_1027 = (void*)0;
    VECTOR(uint32_t, 2) l_1056 = (VECTOR(uint32_t, 2))(0xC6C77995L, 0x5B401BB8L);
    VECTOR(uint16_t, 8) l_1058 = (VECTOR(uint16_t, 8))(0xD171L, (VECTOR(uint16_t, 4))(0xD171L, (VECTOR(uint16_t, 2))(0xD171L, 0UL), 0UL), 0UL, 0xD171L, 0UL);
    int32_t l_1089 = 0x697E9091L;
    int32_t l_1097 = 0x07313B10L;
    int32_t l_1101 = (-10L);
    int32_t l_1106 = 0x4CD4E83DL;
    int32_t l_1108 = 0x337DBC85L;
    int32_t l_1109 = 7L;
    int32_t l_1110 = 0x3E51DDC0L;
    VECTOR(uint32_t, 8) l_1119 = (VECTOR(uint32_t, 8))(0x86B3F426L, (VECTOR(uint32_t, 4))(0x86B3F426L, (VECTOR(uint32_t, 2))(0x86B3F426L, 2UL), 2UL), 2UL, 0x86B3F426L, 2UL);
    int8_t l_1146 = 2L;
    int32_t l_1152 = (-1L);
    VECTOR(int32_t, 8) l_1167 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), 1L, 1L, 1L);
    int64_t l_1195 = (-1L);
    int i;
    for (i = 0; i < 3; i++)
        l_644[i] = 0xA6594D1C6E608CE9L;
    if ((((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 4))((safe_add_func_uint32_t_u_u((((((((((safe_add_func_uint16_t_u_u(l_6, (p_1204->g_7 , p_1204->g_7))) || l_6) | (safe_rshift_func_int8_t_s_s(2L, p_1204->g_7))) | ((l_1026 = func_10(p_1204->g_7, func_14((safe_lshift_func_uint8_t_u_u(((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(min(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 8))(l_22.scef33920)).s0271656662332655))).sd6, ((VECTOR(uint32_t, 2))(l_23.yx))))), ((VECTOR(uint32_t, 4))(p_1204->g_24.xyzy)).lo))), 0xEA3D8810L, 0xEDF47F28L, func_25(p_1204->g_24.z, l_23.z, l_23.x, l_23.y, p_1204), 8UL, 1UL, 4294967295UL)).odd, (uint32_t)0x3EB2F1B4L))).ywwzwyzw)).s4 , l_23.x) != p_1204->g_212.y), 4)), l_23.x, l_22.sd, l_456[0], l_22.s6, p_1204), l_644[2], p_1204)) == &p_1204->g_7)) | (-1L)) | FAKE_DIVERGE(p_1204->local_1_offset, get_local_id(1), 10)) || 255UL) , (*p_1204->g_795)) != l_1027), p_1204->g_318[0])), 9UL, 0x052A9FE8L, 0x69FCF483L)).wzxwyyxx, ((VECTOR(uint32_t, 8))(0x2E23C2D2L))))).s2 >= 18446744073709551615UL))
    { /* block id: 451 */
        uint32_t l_1048 = 0x437F6C1FL;
        uint32_t **l_1052 = &p_1204->g_582;
        int64_t ***l_1067 = &p_1204->g_866;
        int32_t *l_1093 = (void*)0;
        int32_t *l_1094 = &p_1204->g_174[4][6][0];
        int32_t *l_1095 = (void*)0;
        int32_t *l_1096 = (void*)0;
        int32_t *l_1098 = (void*)0;
        int32_t *l_1099 = &l_1089;
        int32_t *l_1100 = &p_1204->g_174[4][6][0];
        int32_t *l_1102 = &p_1204->g_319;
        int32_t *l_1103 = &p_1204->g_64;
        int32_t *l_1104 = (void*)0;
        int32_t *l_1105 = (void*)0;
        int32_t *l_1107[7][8][4] = {{{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101}},{{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101}},{{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101}},{{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101}},{{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101}},{{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101}},{{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101},{&l_1106,(void*)0,&p_1204->g_174[4][6][0],&l_1101}}};
        int32_t l_1111 = 0x7A587058L;
        uint64_t l_1112 = 0xBC18C3F0FABEC4D9L;
        int i, j, k;
        for (p_1204->g_321 = 0; (p_1204->g_321 == (-21)); --p_1204->g_321)
        { /* block id: 454 */
            int64_t l_1030[5];
            VECTOR(uint16_t, 8) l_1036 = (VECTOR(uint16_t, 8))(0x8969L, (VECTOR(uint16_t, 4))(0x8969L, (VECTOR(uint16_t, 2))(0x8969L, 3UL), 3UL), 3UL, 0x8969L, 3UL);
            int64_t *l_1044 = &l_1030[4];
            int32_t *l_1049[7][7] = {{&p_1204->g_64,(void*)0,(void*)0,(void*)0,&p_1204->g_64,&p_1204->g_64,(void*)0},{&p_1204->g_64,(void*)0,(void*)0,(void*)0,&p_1204->g_64,&p_1204->g_64,(void*)0},{&p_1204->g_64,(void*)0,(void*)0,(void*)0,&p_1204->g_64,&p_1204->g_64,(void*)0},{&p_1204->g_64,(void*)0,(void*)0,(void*)0,&p_1204->g_64,&p_1204->g_64,(void*)0},{&p_1204->g_64,(void*)0,(void*)0,(void*)0,&p_1204->g_64,&p_1204->g_64,(void*)0},{&p_1204->g_64,(void*)0,(void*)0,(void*)0,&p_1204->g_64,&p_1204->g_64,(void*)0},{&p_1204->g_64,(void*)0,(void*)0,(void*)0,&p_1204->g_64,&p_1204->g_64,(void*)0}};
            int i, j;
            for (i = 0; i < 5; i++)
                l_1030[i] = 1L;
            if (((VECTOR(int32_t, 2))(0x69248E54L, 6L)).even)
            { /* block id: 455 */
                int32_t *l_1035 = &p_1204->g_174[3][4][2];
                int16_t l_1047 = (-1L);
                int32_t *l_1050 = &p_1204->g_64;
                int64_t **l_1075 = &p_1204->g_816[4];
                VECTOR(int8_t, 2) l_1082 = (VECTOR(int8_t, 2))(0x1FL, 0x4CL);
                VECTOR(int8_t, 8) l_1083 = (VECTOR(int8_t, 8))(0x3CL, (VECTOR(int8_t, 4))(0x3CL, (VECTOR(int8_t, 2))(0x3CL, 1L), 1L), 1L, 0x3CL, 1L);
                VECTOR(int8_t, 8) l_1084 = (VECTOR(int8_t, 8))(0x01L, (VECTOR(int8_t, 4))(0x01L, (VECTOR(int8_t, 2))(0x01L, 0x75L), 0x75L), 0x75L, 0x01L, 0x75L);
                uint32_t l_1088 = 0xEA437B22L;
                int32_t l_1090 = (-6L);
                int i;
                if (l_1030[4])
                { /* block id: 456 */
                    int16_t **l_1032 = &p_1204->g_106;
                    int16_t ***l_1031 = &l_1032;
                    int64_t *l_1045 = &l_1030[2];
                    (*l_1031) = &p_1204->g_106;
                    for (p_1204->g_7 = 0; (p_1204->g_7 >= (-16)); p_1204->g_7 = safe_sub_func_int16_t_s_s(p_1204->g_7, 2))
                    { /* block id: 460 */
                        VECTOR(uint8_t, 16) l_1040 = (VECTOR(uint8_t, 16))(0xB3L, (VECTOR(uint8_t, 4))(0xB3L, (VECTOR(uint8_t, 2))(0xB3L, 0x95L), 0x95L), 0x95L, 0xB3L, 0x95L, (VECTOR(uint8_t, 2))(0xB3L, 0x95L), (VECTOR(uint8_t, 2))(0xB3L, 0x95L), 0xB3L, 0x95L, 0xB3L, 0x95L);
                        int64_t **l_1046 = &l_1045;
                        int i;
                        (*p_1204->g_1051) = l_1050;
                        (*p_1204->g_133) = (l_1052 == (void*)0);
                    }
                }
                else
                { /* block id: 467 */
                    VECTOR(uint32_t, 8) l_1055 = (VECTOR(uint32_t, 8))(0xF59AA7EDL, (VECTOR(uint32_t, 4))(0xF59AA7EDL, (VECTOR(uint32_t, 2))(0xF59AA7EDL, 0x66356D79L), 0x66356D79L), 0x66356D79L, 0xF59AA7EDL, 0x66356D79L);
                    int8_t *l_1072 = (void*)0;
                    int8_t *l_1073 = &p_1204->g_74;
                    uint16_t *l_1074 = &p_1204->g_94;
                    uint8_t *l_1087 = &p_1204->g_92;
                    int i;
                    (*l_1050) ^= (safe_lshift_func_int16_t_s_u((((*l_1035) >= ((((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 8))(l_1055.s14772307)).s70, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(l_1056.yxyyxyyxyxxxyxxy)).s6a)), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 16))(p_1204->g_1057.xyxxyxyyxxxyyyyy)).s8e, ((VECTOR(uint16_t, 16))(l_1058.s2124063254030450)).s93))).yxyxxyxxyyxxyxyx)).lo)).odd)).even))).yyyx)).y > ((p_1204->g_535.s1 ^ ((void*)0 == (*p_1204->g_654))) ^ ((safe_lshift_func_uint16_t_u_u(((*l_1074) |= (safe_sub_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u(l_22.sa, FAKE_DIVERGE(p_1204->local_0_offset, get_local_id(0), 10))) , (+(((VECTOR(uint32_t, 2))(1UL, 0xEA87CB7BL)).odd || l_1056.x))), (safe_mod_func_int32_t_s_s((&p_1204->g_864[6][1] == l_1067), (((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(p_1204->g_1068.yxyx)).yzzxxxzwzywzxyxy)).s7 | ((*l_1073) = (safe_unary_minus_func_uint8_t_u((safe_add_func_int8_t_s_s(0x1BL, l_23.x))))))))))), l_1056.y)) , l_1048))) , (*l_1067)) == l_1075) <= 0x64L)) == p_1204->g_561.y), 4));
                    (*l_1035) |= l_22.s8;
                    l_1090 |= ((((**p_1204->g_354) || (safe_unary_minus_func_int64_t_s(((((*p_1204->g_224) = (l_1055.s0 == 1UL)) , (((p_1204->g_1077 , (((((*l_1050) <= FAKE_DIVERGE(p_1204->local_1_offset, get_local_id(1), 10)) <= (((0x78769431C0259075L != (((VECTOR(uint16_t, 2))(65535UL, 0x4EC5L)).hi , (safe_mul_func_uint8_t_u_u(((*l_1087) ^= (0L != ((safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 8))(l_1082.yyyyxyyy)).s52, ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(l_1083.s4412521436267123)).s77)), ((VECTOR(int8_t, 4))(0x68L, (-7L), (-1L), 0x28L)).even)))))), 0x37L, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_1084.s41)).yxyy)), (-5L), ((!(**p_1204->g_354)) > (safe_div_func_uint16_t_u_u(0x5D77L, (*p_1204->g_106)))), 1L, 0x43L)), 0x4AL, (*l_1035), 0x74L, 0x64L, 1L)).even, ((VECTOR(int8_t, 8))(0x61L))))).s3642667600600477)).s8, 0x16L)) & p_1204->g_1041.y))), l_1088)))) && GROUP_DIVERGE(2, 1)) , (*l_1050))) < 0xFDL) <= p_1204->g_212.y)) >= l_1055.s0) >= 0L)) , l_1058.s4)))) || (*l_1050)) ^ l_1089);
                }
            }
            else
            { /* block id: 476 */
                int32_t **l_1092 = &l_1049[1][2];
                (*l_1092) = (p_1204->g_1091 , l_1049[5][3]);
            }
        }
        --l_1112;
    }
    else
    { /* block id: 481 */
        uint32_t l_1131 = 0xB4A23531L;
        int8_t ***l_1135 = &p_1204->g_795;
        int32_t l_1145 = 0x4D0D8073L;
        int32_t l_1165 = 7L;
        int32_t l_1166 = (-1L);
        int32_t l_1168[1];
        int8_t l_1172[3][5][5] = {{{0x00L,(-2L),(-2L),0x00L,1L},{0x00L,(-2L),(-2L),0x00L,1L},{0x00L,(-2L),(-2L),0x00L,1L},{0x00L,(-2L),(-2L),0x00L,1L},{0x00L,(-2L),(-2L),0x00L,1L}},{{0x00L,(-2L),(-2L),0x00L,1L},{0x00L,(-2L),(-2L),0x00L,1L},{0x00L,(-2L),(-2L),0x00L,1L},{0x00L,(-2L),(-2L),0x00L,1L},{0x00L,(-2L),(-2L),0x00L,1L}},{{0x00L,(-2L),(-2L),0x00L,1L},{0x00L,(-2L),(-2L),0x00L,1L},{0x00L,(-2L),(-2L),0x00L,1L},{0x00L,(-2L),(-2L),0x00L,1L},{0x00L,(-2L),(-2L),0x00L,1L}}};
        uint32_t l_1194 = 0x5453623BL;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1168[i] = 0L;
        for (l_1110 = (-24); (l_1110 >= 16); ++l_1110)
        { /* block id: 484 */
            int32_t l_1132 = (-3L);
            VECTOR(int32_t, 8) l_1155 = (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x7DA70115L), 0x7DA70115L), 0x7DA70115L, (-4L), 0x7DA70115L);
            int8_t *l_1173 = &p_1204->g_977;
            int16_t **l_1183 = &p_1204->g_106;
            int32_t *l_1196 = &l_1106;
            int32_t *l_1197 = &l_1152;
            int32_t *l_1203 = &l_1089;
            int i;
            for (p_1204->g_319 = 0; (p_1204->g_319 < 26); p_1204->g_319 = safe_add_func_uint32_t_u_u(p_1204->g_319, 5))
            { /* block id: 487 */
                int32_t l_1130 = 0x1D6B296EL;
                uint16_t *l_1133 = &p_1204->g_94;
                int8_t ***l_1134 = &p_1204->g_795;
                int32_t l_1147 = 0x2799A2FFL;
                uint8_t l_1148 = 1UL;
                uint16_t *l_1149 = (void*)0;
                uint16_t *l_1150 = (void*)0;
                uint16_t *l_1151[3];
                int32_t *l_1153 = (void*)0;
                int32_t *l_1154 = &l_1097;
                int i;
                for (i = 0; i < 3; i++)
                    l_1151[i] = (void*)0;
                (*l_1154) ^= (((VECTOR(uint32_t, 16))(l_1119.s6450737364475533)).s4 <= (((safe_lshift_func_uint16_t_u_u((p_1204->g_1057.x = (safe_add_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(((((FAKE_DIVERGE(p_1204->local_2_offset, get_local_id(2), 10) , ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(0x19L, 0x30L, ((VECTOR(int8_t, 2))(p_1204->g_1126.s62)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(p_1204->g_1127.zy)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))((-7L), 0x05L)).yyxyyyyy)), (-9L), ((l_1147 = ((*p_1204->g_355) ^= ((((safe_div_func_uint16_t_u_u(l_1130, (((l_1131 , ((*l_1133) |= (GROUP_DIVERGE(1, 1) < l_1132))) , (l_1134 == l_1135)) , (*p_1204->g_106)))) && ((((p_1204->g_1136 , (((((safe_rshift_func_int16_t_s_s(((l_1145 = (safe_mod_func_uint16_t_u_u(0x75EDL, (safe_sub_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(0x80L, l_1130)), l_1131))))) && 4294967294UL), l_1146)) == l_1132) , 0x22L) > 0L) & 0xBE572B17L)) ^ 0x5C6AFF49L) || 0x61F0F2D013AF3A7DL) <= l_1132)) , 0x4FB0L) > FAKE_DIVERGE(p_1204->global_1_offset, get_global_id(1), 10)))) , l_1148), ((VECTOR(int8_t, 4))(2L)))).s95)).xyyy)).xwwyyzxw, ((VECTOR(int8_t, 8))(0L)), ((VECTOR(int8_t, 8))(0x61L))))).even)))))).s6122646212505241)).s1c59, ((VECTOR(int8_t, 4))(5L))))))).y) | l_1148) <= 0x1CL) == l_1130), 5)), l_1130))), l_1130)) || l_1152) != p_1204->g_1041.x));
                (*l_1154) ^= ((VECTOR(int32_t, 8))(l_1155.s36433673)).s6;
                for (l_1097 = (-27); (l_1097 != (-23)); ++l_1097)
                { /* block id: 497 */
                    uint8_t l_1158 = 0x6BL;
                    return l_1158;
                }
            }
            if (l_1097)
            { /* block id: 501 */
                int32_t *l_1159 = &p_1204->g_64;
                int32_t *l_1160 = &p_1204->g_174[6][2][1];
                int32_t *l_1161 = &p_1204->g_319;
                int32_t *l_1162 = &l_1097;
                int32_t *l_1163 = (void*)0;
                int32_t *l_1164[7] = {(void*)0,&l_1101,(void*)0,(void*)0,&l_1101,(void*)0,(void*)0};
                uint32_t l_1169 = 9UL;
                int i;
                --l_1169;
                if (l_1172[0][3][2])
                    continue;
                l_1164[3] = l_1164[2];
            }
            else
            { /* block id: 505 */
                int8_t l_1176 = 0x0EL;
                int32_t *l_1177 = &p_1204->g_64;
                int32_t *l_1178 = &l_1097;
                (*l_1178) ^= ((*l_1177) = (((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(p_1204->g_1174.s20563410)).s04)).xxxxyxyy)))).s6 , (((VECTOR(uint64_t, 16))(p_1204->g_1175.s6251672140354461)).s9 , (!(!l_1176)))));
            }
            for (p_1204->g_996 = 0; (p_1204->g_996 >= 46); p_1204->g_996++)
            { /* block id: 511 */
                int16_t ***l_1181[1][1];
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_1181[i][j] = (void*)0;
                }
                l_1183 = (p_1204->g_1182[1][2] = (void*)0);
            }
            (*l_1203) = (((safe_sub_func_uint32_t_u_u((l_1101 = (safe_sub_func_int16_t_s_s(0L, l_1101))), ((((l_1172[0][3][2] , (safe_rshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((((*l_1197) = (0x1FFCL > ((safe_lshift_func_int8_t_s_s(l_1194, 5)) | ((*l_1196) &= l_1195)))) || (safe_mul_func_int8_t_s_s(((safe_mul_func_int8_t_s_s(l_1110, 0xADL)) < 65534UL), 6L))), (-6L))), l_1168[0]))) && 0x560FB65A8D362D46L) , l_1109) < l_1168[0]))) , (*l_1196)) | (*p_1204->g_355));
        }
        l_1167.s3 = (-7L);
    }
    return l_1167.s5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1204->g_297 p_1204->g_133 p_1204->g_64 p_1204->g_86 p_1204->g_654 p_1204->g_74 p_1204->g_92 p_1204->g_106 p_1204->g_96 p_1204->g_355 p_1204->g_135.f0 p_1204->g_246 p_1204->g_174 p_1204->g_354 p_1204->g_404 p_1204->g_792 p_1204->g_795 p_1204->g_618 p_1204->g_143 p_1204->g_830 p_1204->g_280.f0 p_1204->g_324 p_1204->g_318 p_1204->g_24 p_1204->g_7 p_1204->g_88 p_1204->g_94 p_1204->g_99 p_1204->g_45 p_1204->g_98 p_1204->g_159 p_1204->g_847 p_1204->g_865 p_1204->g_796 p_1204->g_623 p_1204->g_879 p_1204->g_321 p_1204->g_319 p_1204->g_880 p_1204->g_977 p_1204->g_816 p_1204->g_224
 * writes: p_1204->g_64 p_1204->g_86 p_1204->g_655 p_1204->g_74 p_1204->g_321 p_1204->g_92 p_1204->g_174 p_1204->g_135.f0 p_1204->g_795 p_1204->g_324 p_1204->g_285 p_1204->g_843 p_1204->g_847 p_1204->g_96 p_1204->g_88 p_1204->g_94 p_1204->g_98 p_1204->g_99 p_1204->g_106 p_1204->g_133 p_1204->g_159 p_1204->g_864 p_1204->g_866 p_1204->g_623 p_1204->g_319 p_1204->g_996
 */
int8_t * func_10(uint32_t  p_11, int8_t * p_12, int64_t  p_13, struct S2 * p_1204)
{ /* block id: 246 */
    uint32_t l_647[8][1];
    uint8_t **l_648 = (void*)0;
    int32_t *l_649 = &p_1204->g_174[4][6][0];
    uint32_t *l_659 = &l_647[5][0];
    VECTOR(int16_t, 16) l_674 = (VECTOR(int16_t, 16))(0x6C74L, (VECTOR(int16_t, 4))(0x6C74L, (VECTOR(int16_t, 2))(0x6C74L, 7L), 7L), 7L, 0x6C74L, 7L, (VECTOR(int16_t, 2))(0x6C74L, 7L), (VECTOR(int16_t, 2))(0x6C74L, 7L), 0x6C74L, 7L, 0x6C74L, 7L);
    VECTOR(int32_t, 2) l_705 = (VECTOR(int32_t, 2))(6L, 0x35F16551L);
    uint64_t *l_714 = (void*)0;
    int32_t *l_763 = (void*)0;
    VECTOR(uint8_t, 16) l_791 = (VECTOR(uint8_t, 16))(0xB0L, (VECTOR(uint8_t, 4))(0xB0L, (VECTOR(uint8_t, 2))(0xB0L, 0UL), 0UL), 0UL, 0xB0L, 0UL, (VECTOR(uint8_t, 2))(0xB0L, 0UL), (VECTOR(uint8_t, 2))(0xB0L, 0UL), 0xB0L, 0UL, 0xB0L, 0UL);
    uint32_t l_818 = 4294967295UL;
    int8_t ***l_826[7] = {&p_1204->g_795,&p_1204->g_795,&p_1204->g_795,&p_1204->g_795,&p_1204->g_795,&p_1204->g_795,&p_1204->g_795};
    uint16_t l_833 = 0x7C4BL;
    VECTOR(int8_t, 8) l_834 = (VECTOR(int8_t, 8))(0x59L, (VECTOR(int8_t, 4))(0x59L, (VECTOR(int8_t, 2))(0x59L, 0x77L), 0x77L), 0x77L, 0x59L, 0x77L);
    VECTOR(uint64_t, 16) l_941 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 18446744073709551615UL, 18446744073709551610UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551610UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551610UL), 18446744073709551615UL, 18446744073709551610UL, 18446744073709551615UL, 18446744073709551610UL);
    VECTOR(uint8_t, 16) l_990 = (VECTOR(uint8_t, 16))(0x9DL, (VECTOR(uint8_t, 4))(0x9DL, (VECTOR(uint8_t, 2))(0x9DL, 0xE3L), 0xE3L), 0xE3L, 0x9DL, 0xE3L, (VECTOR(uint8_t, 2))(0x9DL, 0xE3L), (VECTOR(uint8_t, 2))(0x9DL, 0xE3L), 0x9DL, 0xE3L, 0x9DL, 0xE3L);
    int32_t *l_999 = &p_1204->g_174[4][6][0];
    uint32_t **l_1013 = &l_659;
    uint32_t ***l_1012 = &l_1013;
    int32_t l_1016 = 6L;
    int32_t *l_1017 = (void*)0;
    int32_t *l_1018 = (void*)0;
    int32_t *l_1019 = (void*)0;
    int32_t *l_1020 = &p_1204->g_319;
    uint64_t l_1021 = 5UL;
    int32_t *l_1022 = (void*)0;
    int32_t *l_1023[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_1024 = 1L;
    int8_t l_1025[7] = {1L,1L,1L,1L,1L,1L,1L};
    int i, j;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
            l_647[i][j] = 4294967289UL;
    }
lbl_922:
    (*p_1204->g_133) = (safe_add_func_int64_t_s_s(p_1204->g_297.s1, l_647[5][0]));
    (*p_1204->g_133) ^= (l_648 == &p_1204->g_355);
    if (((void*)0 == l_649))
    { /* block id: 249 */
        int64_t l_658 = (-1L);
        int32_t **l_669[6][5][2] = {{{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0}},{{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0}},{{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0}},{{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0}},{{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0}},{{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0},{&l_649,(void*)0}}};
        uint64_t ***l_697[4][5][6] = {{{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223}},{{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223}},{{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223}},{{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223},{&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223}}};
        VECTOR(int8_t, 2) l_720 = (VECTOR(int8_t, 2))((-7L), (-1L));
        int64_t l_721 = 0x3CE6F159A02D084FL;
        int64_t l_742 = (-3L);
        union U1 *l_765 = (void*)0;
        VECTOR(int16_t, 2) l_781 = (VECTOR(int16_t, 2))(0x0A60L, 0x08B0L);
        int64_t *l_813 = &l_721;
        int16_t l_817 = 0x5CD8L;
        int i, j, k;
        for (p_1204->g_86 = 9; (p_1204->g_86 <= (-1)); p_1204->g_86--)
        { /* block id: 252 */
            union U0 *l_652 = (void*)0;
            union U0 **l_653 = (void*)0;
            int32_t l_666 = 0x3E5CEEF0L;
            uint32_t *l_671 = &l_647[3][0];
            int32_t l_704 = 0x378B6467L;
            int32_t l_708 = 0x5F5D3D0BL;
            uint64_t *l_713 = (void*)0;
            int32_t *l_722 = (void*)0;
            (*p_1204->g_654) = l_652;
            for (p_1204->g_74 = 0; (p_1204->g_74 < 18); p_1204->g_74++)
            { /* block id: 256 */
                int64_t *l_662[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                int8_t l_670 = 0x6BL;
                uint8_t l_692 = 254UL;
                uint64_t ***l_696 = &p_1204->g_223;
                uint8_t *l_698 = &p_1204->g_324;
                int32_t *l_699 = (void*)0;
                int32_t l_706 = 0x0C8C2DE7L;
                int32_t l_707 = 4L;
                VECTOR(int16_t, 2) l_718 = (VECTOR(int16_t, 2))(0x262FL, 0x4D30L);
                VECTOR(int16_t, 4) l_719 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x5895L), 0x5895L);
                int i;
                (1 + 1);
            }
        }
        if (((*p_1204->g_133) = (-2L)))
        { /* block id: 281 */
            uint16_t l_723 = 0UL;
            int32_t l_759 = 0x0FF9C257L;
            l_723--;
            for (l_723 = 0; (l_723 >= 17); l_723 = safe_add_func_int64_t_s_s(l_723, 7))
            { /* block id: 285 */
                int32_t *l_732 = &p_1204->g_64;
                for (p_13 = (-5); (p_13 > 12); p_13++)
                { /* block id: 288 */
                    int32_t *l_733[2];
                    int32_t *l_734 = &p_1204->g_64;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_733[i] = &p_1204->g_174[4][6][0];
                    for (p_1204->g_321 = 0; (p_1204->g_321 >= (-29)); p_1204->g_321 = safe_sub_func_uint16_t_u_u(p_1204->g_321, 6))
                    { /* block id: 291 */
                        if ((*p_1204->g_133))
                            break;
                    }
                    l_649 = (l_734 = (l_733[1] = (l_732 = l_649)));
                    for (p_1204->g_92 = (-16); (p_1204->g_92 <= 46); p_1204->g_92 = safe_add_func_int64_t_s_s(p_1204->g_92, 8))
                    { /* block id: 300 */
                        uint32_t l_737 = 0x952EDA4EL;
                        int8_t *l_757 = (void*)0;
                        int8_t *l_758 = (void*)0;
                        int64_t *l_760 = &p_1204->g_321;
                        int32_t l_761 = 0x4961AA20L;
                        ++l_737;
                        l_761 &= (((*p_12) = ((void*)0 == &l_669[5][2][1])) ^ ((safe_sub_func_uint64_t_u_u(((l_742 , ((*l_760) = (((**p_1204->g_354) = (safe_mul_func_int8_t_s_s(((((*l_649) = (safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1204->local_0_offset, get_local_id(0), 10), (safe_sub_func_int64_t_s_s((GROUP_DIVERGE(0, 1) , (safe_sub_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(0x5E19L, ((l_759 = (((0L ^ ((*p_1204->g_106) <= p_13)) != 1L) , (safe_div_func_uint16_t_u_u(((((*p_1204->g_355) & l_737) , p_1204->g_246.x) , l_737), (*p_1204->g_106))))) <= 1L))), (*l_649)))), (*l_732)))))) >= 0L) && (-1L)), 0x32L))) || 247UL))) > p_11), 18446744073709551615UL)) <= (*p_1204->g_106)));
                        l_759 = (*p_1204->g_133);
                    }
                }
            }
        }
        else
        { /* block id: 312 */
            uint32_t l_762 = 0UL;
            int32_t *l_764 = &p_1204->g_174[4][2][1];
            (*p_1204->g_133) &= p_11;
            l_762 = p_11;
            l_764 = l_763;
        }
        if ((&p_1204->g_450 == l_765))
        { /* block id: 317 */
            VECTOR(uint16_t, 16) l_770 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x34BCL), 0x34BCL), 0x34BCL, 0UL, 0x34BCL, (VECTOR(uint16_t, 2))(0UL, 0x34BCL), (VECTOR(uint16_t, 2))(0UL, 0x34BCL), 0UL, 0x34BCL, 0UL, 0x34BCL);
            VECTOR(uint8_t, 2) l_790 = (VECTOR(uint8_t, 2))(0x22L, 0UL);
            uint32_t l_800 = 7UL;
            int i;
            for (p_11 = 0; (p_11 <= 46); p_11 = safe_add_func_uint8_t_u_u(p_11, 6))
            { /* block id: 320 */
                uint32_t l_773 = 0x0BC7E3DAL;
                int8_t ***l_797 = &p_1204->g_795;
                uint32_t **l_798 = &p_1204->g_582;
                uint32_t ***l_799 = &l_798;
                (*p_1204->g_133) |= (p_1204->g_404.s6 | (safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(l_770.sed5b)).z, ((safe_lshift_func_int16_t_s_u((((l_773 && (l_770.sf <= ((safe_mod_func_int16_t_s_s((8UL <= (*l_649)), (safe_sub_func_uint32_t_u_u(((((safe_lshift_func_uint16_t_u_u((safe_unary_minus_func_uint32_t_u((((VECTOR(int16_t, 16))(l_781.yyyxxyyyxyxxyxxy)).s1 & (safe_div_func_int32_t_s_s(((((safe_lshift_func_int8_t_s_u((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(1UL, 4294967290UL)).xyxx)).w , ((((safe_mod_func_uint16_t_u_u(((-1L) & ((++(**p_1204->g_354)) != ((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0x32L, 0xF9L)).xyxxyyxy)).s27, ((VECTOR(uint8_t, 4))(l_790.xxxx)).lo, ((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 2))(l_791.s90)), (uint8_t)(p_1204->g_792 , ((((*l_797) = p_1204->g_795) == (void*)0) | 0L))))), (uint8_t)255UL)))))).odd)), 0x25E1L)) , l_773) || (*p_1204->g_106)) == p_13)), p_13)) >= l_773) != (-1L)) , p_13), (*l_649)))))), 14)) > l_773) >= p_13) , GROUP_DIVERGE(0, 1)), p_13)))) ^ p_1204->g_618.s6))) , (void*)0) == &p_1204->g_7), p_11)) , p_11))));
                (*l_799) = l_798;
                l_800--;
            }
        }
        else
        { /* block id: 327 */
            int64_t *l_810[6][2] = {{&l_658,&l_721},{&l_658,&l_721},{&l_658,&l_721},{&l_658,&l_721},{&l_658,&l_721},{&l_658,&l_721}};
            int64_t *l_812 = (void*)0;
            int64_t **l_811[3];
            int32_t *l_819 = (void*)0;
            int i, j;
            for (i = 0; i < 3; i++)
                l_811[i] = &l_812;
            l_763 = l_819;
        }
    }
    else
    { /* block id: 332 */
        int8_t l_836 = 0x1BL;
        int32_t **l_846 = &l_649;
        int32_t l_859 = 0x19DEDFDCL;
        int64_t **l_863 = &p_1204->g_816[5];
        uint64_t *l_869 = (void*)0;
        union U1 *l_874 = &p_1204->g_450;
        int8_t l_921 = 0L;
        int32_t *l_947 = (void*)0;
        VECTOR(uint8_t, 16) l_983 = (VECTOR(uint8_t, 16))(0xF8L, (VECTOR(uint8_t, 4))(0xF8L, (VECTOR(uint8_t, 2))(0xF8L, 249UL), 249UL), 249UL, 0xF8L, 249UL, (VECTOR(uint8_t, 2))(0xF8L, 249UL), (VECTOR(uint8_t, 2))(0xF8L, 249UL), 0xF8L, 249UL, 0xF8L, 249UL);
        VECTOR(uint8_t, 8) l_985 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x74L), 0x74L), 0x74L, 0UL, 0x74L);
        VECTOR(int32_t, 8) l_986 = (VECTOR(int32_t, 8))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 9L), 9L), 9L, (-5L), 9L);
        VECTOR(uint8_t, 8) l_991 = (VECTOR(uint8_t, 8))(0xD9L, (VECTOR(uint8_t, 4))(0xD9L, (VECTOR(uint8_t, 2))(0xD9L, 6UL), 6UL), 6UL, 0xD9L, 6UL);
        int8_t ****l_994 = &l_826[0];
        int i;
        if (((&p_1204->g_86 == (p_1204->g_143.y , &p_1204->g_172)) , ((void*)0 != &p_1204->g_816[4])))
        { /* block id: 333 */
            int8_t ***l_827 = &p_1204->g_795;
            int8_t ****l_828 = &l_827;
            int32_t l_829 = 9L;
            int32_t l_835 = 0x5D146308L;
            if (((safe_rshift_func_int16_t_s_u((safe_mul_func_int16_t_s_s((((**p_1204->g_354) && (safe_mul_func_uint8_t_u_u(0x3DL, (l_826[0] == ((*l_828) = l_827))))) , ((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 4))((-7L), l_829, (-1L), 0x61L)).zzywzzxyxwyzyyyx, ((VECTOR(uint8_t, 4))(p_1204->g_830.xxxz)).zzwxxyzywxzxwzww))).s6), (safe_mul_func_uint16_t_u_u((p_11 ^ ((!(!(l_833 <= ((VECTOR(int8_t, 8))(l_834.s60735041)).s1))) > (p_13 || ((VECTOR(int64_t, 16))(((l_835 = p_1204->g_280.f0) > 7L), 0x06F344BAB8CFF4C5L, p_11, p_13, (*l_649), (-1L), ((VECTOR(int64_t, 4))((-3L))), 0x3E025481CCBB87A3L, 0x3C1AA8D19A2C7A35L, (*l_649), ((VECTOR(int64_t, 2))(0L)), 1L)).s9))), l_836)))), 10)) || 0x7D3244BBL))
            { /* block id: 336 */
                union U1 *l_841 = &p_1204->g_450;
                int32_t **l_848 = (void*)0;
                VECTOR(uint16_t, 2) l_849 = (VECTOR(uint16_t, 2))(0x7E0FL, 0UL);
                int i;
                for (p_1204->g_324 = 14; (p_1204->g_324 != 46); p_1204->g_324 = safe_add_func_int8_t_s_s(p_1204->g_324, 4))
                { /* block id: 339 */
                    VECTOR(uint32_t, 16) l_860 = (VECTOR(uint32_t, 16))(0x56021188L, (VECTOR(uint32_t, 4))(0x56021188L, (VECTOR(uint32_t, 2))(0x56021188L, 0xE2516A52L), 0xE2516A52L), 0xE2516A52L, 0x56021188L, 0xE2516A52L, (VECTOR(uint32_t, 2))(0x56021188L, 0xE2516A52L), (VECTOR(uint32_t, 2))(0x56021188L, 0xE2516A52L), 0x56021188L, 0xE2516A52L, 0x56021188L, 0xE2516A52L);
                    int i;
                    for (p_1204->g_285 = 0; (p_1204->g_285 == 10); ++p_1204->g_285)
                    { /* block id: 342 */
                        union U1 **l_842[3][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
                        int i, j;
                        p_1204->g_843 = l_841;
                    }
                    if ((safe_rshift_func_int16_t_s_u(((*p_1204->g_106) |= (((p_1204->g_847 = l_846) == l_848) ^ 0x7032L)), ((VECTOR(uint16_t, 16))(l_849.xxxyyyxyxxyxxxxx)).s7)))
                    { /* block id: 347 */
                        uint16_t *l_850[1][6][10] = {{{&p_1204->g_94,(void*)0,&p_1204->g_94,(void*)0,&p_1204->g_94,&p_1204->g_94,(void*)0,&l_833,(void*)0,&p_1204->g_94},{&p_1204->g_94,(void*)0,&p_1204->g_94,(void*)0,&p_1204->g_94,&p_1204->g_94,(void*)0,&l_833,(void*)0,&p_1204->g_94},{&p_1204->g_94,(void*)0,&p_1204->g_94,(void*)0,&p_1204->g_94,&p_1204->g_94,(void*)0,&l_833,(void*)0,&p_1204->g_94},{&p_1204->g_94,(void*)0,&p_1204->g_94,(void*)0,&p_1204->g_94,&p_1204->g_94,(void*)0,&l_833,(void*)0,&p_1204->g_94},{&p_1204->g_94,(void*)0,&p_1204->g_94,(void*)0,&p_1204->g_94,&p_1204->g_94,(void*)0,&l_833,(void*)0,&p_1204->g_94},{&p_1204->g_94,(void*)0,&p_1204->g_94,(void*)0,&p_1204->g_94,&p_1204->g_94,(void*)0,&l_833,(void*)0,&p_1204->g_94}}};
                        int64_t l_851 = 0x27BCE061D9F1ABA4L;
                        int i, j, k;
                        if (p_13)
                            break;
                        (*l_846) = func_53((l_851 = p_1204->g_318[0]), p_1204);
                        (*p_1204->g_847) = (*p_1204->g_847);
                    }
                    else
                    { /* block id: 352 */
                        int32_t *l_852 = &p_1204->g_174[4][6][0];
                        int32_t *l_853 = &p_1204->g_319;
                        int32_t *l_854 = &p_1204->g_174[4][6][0];
                        int32_t *l_855 = &p_1204->g_64;
                        int32_t *l_856 = (void*)0;
                        int32_t *l_857 = &p_1204->g_174[2][6][2];
                        int32_t *l_858[8] = {(void*)0,&p_1204->g_64,(void*)0,(void*)0,&p_1204->g_64,(void*)0,(void*)0,&p_1204->g_64};
                        int32_t l_875[6][2][9] = {{{0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L,0x75B35479L,0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L},{0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L,0x75B35479L,0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L}},{{0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L,0x75B35479L,0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L},{0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L,0x75B35479L,0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L}},{{0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L,0x75B35479L,0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L},{0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L,0x75B35479L,0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L}},{{0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L,0x75B35479L,0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L},{0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L,0x75B35479L,0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L}},{{0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L,0x75B35479L,0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L},{0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L,0x75B35479L,0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L}},{{0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L,0x75B35479L,0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L},{0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L,0x75B35479L,0x75B35479L,0x5FBD6E58L,0x2743EC21L,0x5FBD6E58L}}};
                        int i, j, k;
                        --l_860.sd;
                        (*p_1204->g_865) = (p_1204->g_864[6][1] = l_863);
                        (*l_846) = func_53((safe_sub_func_uint32_t_u_u(((void*)0 != l_869), ((p_13 , (safe_div_func_int16_t_s_s(1L, (safe_mul_func_uint8_t_u_u(((*p_12) == 247UL), ((((((((void*)0 == l_874) && l_829) != 1L) != l_860.s4) , p_13) , (-5L)) , 0x44L)))))) > l_875[3][0][2]))), p_1204);
                        (*l_854) ^= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x41CFF1BBL, 0x0D396016L)))).lo;
                    }
                    if ((**l_846))
                        continue;
                    return p_12;
                }
                return (*p_1204->g_795);
            }
            else
            { /* block id: 363 */
                for (p_1204->g_623 = 26; (p_1204->g_623 >= 20); --p_1204->g_623)
                { /* block id: 366 */
                    int8_t *l_878 = (void*)0;
                    return l_878;
                }
                return (*p_1204->g_795);
            }
        }
        else
        { /* block id: 371 */
            uint16_t l_881 = 65528UL;
            int16_t *l_929 = &p_1204->g_96;
            VECTOR(uint16_t, 4) l_956 = (VECTOR(uint16_t, 4))(0x27E7L, (VECTOR(uint16_t, 2))(0x27E7L, 65535UL), 65535UL);
            uint64_t **l_965 = &l_869;
            VECTOR(int32_t, 4) l_970 = (VECTOR(int32_t, 4))(0x6CACF57DL, (VECTOR(int32_t, 2))(0x6CACF57DL, (-1L)), (-1L));
            int i;
            l_881 ^= (p_1204->g_879 != &l_826[0]);
            for (p_1204->g_321 = 0; (p_1204->g_321 <= (-5)); --p_1204->g_321)
            { /* block id: 375 */
                for (p_1204->g_319 = 0; (p_1204->g_319 != (-18)); --p_1204->g_319)
                { /* block id: 378 */
                    for (p_1204->g_96 = 15; (p_1204->g_96 >= (-15)); p_1204->g_96 = safe_sub_func_uint8_t_u_u(p_1204->g_96, 7))
                    { /* block id: 381 */
                        if (p_13)
                            break;
                        (**l_846) ^= ((VECTOR(int32_t, 2))((-8L), 0x77545CE7L)).odd;
                        return p_12;
                    }
                }
            }
            if (p_13)
            { /* block id: 388 */
                int32_t *l_888 = &p_1204->g_64;
                (*p_1204->g_847) = (void*)0;
                (*l_846) = l_888;
            }
            else
            { /* block id: 391 */
                int64_t l_895 = 7L;
                VECTOR(uint64_t, 4) l_903 = (VECTOR(uint64_t, 4))(8UL, (VECTOR(uint64_t, 2))(8UL, 0x5DC07EA24ACE4C7DL), 0x5DC07EA24ACE4C7DL);
                uint32_t l_908 = 3UL;
                int8_t *l_926 = &p_1204->g_74;
                int16_t l_927 = 0x0BE6L;
                int32_t *l_928[2];
                int32_t l_969[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_928[i] = &p_1204->g_319;
                for (i = 0; i < 2; i++)
                    l_969[i] = 0L;
                if (p_11)
                { /* block id: 392 */
                    uint16_t l_896 = 0x5999L;
                    for (p_1204->g_74 = (-23); (p_1204->g_74 <= 9); p_1204->g_74 = safe_add_func_int16_t_s_s(p_1204->g_74, 2))
                    { /* block id: 395 */
                        if (p_11)
                            break;
                        (**l_846) = ((*p_1204->g_133) &= p_13);
                    }
                    if (((safe_rshift_func_int16_t_s_s((**l_846), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(0x3C1FL, 0x3184L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x00BFL, 0x31DDL)).xxyy)), 0x2C62L, 0x6C82L)))).s3)) || (l_895 < ((+(l_881 & (l_896 != (((safe_add_func_int64_t_s_s(l_896, (safe_rshift_func_int8_t_s_u(0x5FL, 6)))) & ((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(l_903.wzxw)))).z > (safe_add_func_int32_t_s_s((5L > ((safe_lshift_func_int8_t_s_u(0x6BL, 3)) ^ (-6L))), p_13))) != (*l_649))) && l_908)))) >= (**p_1204->g_847)))))
                    { /* block id: 400 */
                        int16_t l_915 = 0x06E7L;
                        uint16_t *l_916 = &p_1204->g_94;
                        (**p_1204->g_847) = ((safe_sub_func_int32_t_s_s((**l_846), ((0x488850616BD15709L && (safe_mul_func_uint16_t_u_u(((((safe_mul_func_uint8_t_u_u(l_915, 0x5BL)) < ((*l_916) ^= p_13)) <= (((safe_mul_func_uint16_t_u_u((((*l_659)--) == l_921), 65532UL)) || ((((*p_1204->g_106) |= p_13) || p_11) < p_13)) , l_903.w)) , p_13), p_13))) || p_11))) , 0x529E0786L);
                        return (**p_1204->g_880);
                    }
                    else
                    { /* block id: 406 */
                        uint16_t l_923 = 0UL;
                        int16_t **l_930 = &p_1204->g_106;
                        uint32_t **l_945 = &p_1204->g_582;
                        uint16_t *l_946 = &l_833;
                        if (p_1204->g_321)
                            goto lbl_922;
                        (*l_649) |= 0x403F847BL;
                        l_923++;
                        (*p_1204->g_847) = (*l_846);
                    }
                    return p_12;
                }
                else
                { /* block id: 417 */
                    int64_t l_966 = 1L;
                    int16_t *l_967 = &p_1204->g_285;
                    if ((safe_mod_func_uint8_t_u_u(((*p_1204->g_355) = p_13), (safe_add_func_uint32_t_u_u(((p_13 >= p_13) > ((**l_846) = (!(~(safe_lshift_func_uint8_t_u_s((p_11 < ((safe_rshift_func_int16_t_s_s(p_13, 14)) , ((VECTOR(uint16_t, 16))(0x5414L, ((VECTOR(uint16_t, 2))(l_956.wx)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(0xE66EL, 0xCACCL, 65535UL, 0xECE8L)).yzxyxwyx)))), 0x64ADL, 0x2B1AL, 3UL, 0xAC58L, 65529UL)).s7)), 6)))))), ((safe_mod_func_int16_t_s_s((safe_sub_func_int64_t_s_s((((*l_967) = ((*l_929) ^= (safe_mod_func_uint8_t_u_u(((safe_sub_func_uint8_t_u_u((p_13 == ((*l_926) = ((+((p_13 , l_965) == (void*)0)) || FAKE_DIVERGE(p_1204->local_0_offset, get_local_id(0), 10)))), l_966)) , 0x78L), l_966)))) > l_881), l_881)), 0xCCAEL)) , l_956.y))))))
                    { /* block id: 423 */
                        int8_t *l_968 = (void*)0;
                        return l_968;
                    }
                    else
                    { /* block id: 425 */
                        uint32_t l_971[2][2];
                        int i, j;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_971[i][j] = 1UL;
                        }
                        l_971[0][1]++;
                    }
                    return p_12;
                }
            }
        }
        for (l_836 = 17; (l_836 >= 10); l_836--)
        { /* block id: 434 */
            VECTOR(uint8_t, 8) l_982 = (VECTOR(uint8_t, 8))(0x34L, (VECTOR(uint8_t, 4))(0x34L, (VECTOR(uint8_t, 2))(0x34L, 0UL), 0UL), 0UL, 0x34L, 0UL);
            uint8_t *l_987 = (void*)0;
            uint8_t *l_988 = (void*)0;
            uint8_t *l_989 = &p_1204->g_324;
            uint64_t *l_995 = &p_1204->g_996;
            uint64_t l_997 = 0x2D48EB6A6A6FAB20L;
            int64_t l_998 = (-8L);
            int i;
            (*l_649) = (safe_unary_minus_func_int32_t_s((((VECTOR(int8_t, 4))(0x4CL, 0x20L, 0L, 0L)).z < p_1204->g_977)));
            l_998 = (((((l_714 != (((VECTOR(int32_t, 4))(0x0D15DBACL, p_1204->g_393.f0, 0x4F804A1DL, 0x0C87277BL)).w , (*l_863))) & ((*l_649) && (((*l_995) = (safe_mul_func_uint8_t_u_u(p_11, ((((**p_1204->g_354) || (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_982.s22)), 0UL, 249UL)), ((VECTOR(uint8_t, 4))(l_983.s29ea)), 250UL, ((VECTOR(uint8_t, 4))(p_1204->g_984.s3761)), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(l_985.s1243)), 0xD9L, 0xFDL, ((VECTOR(uint8_t, 8))(0x80L, 0xDDL, 0x28L, (((VECTOR(int32_t, 16))(l_986.s4202126662461004)).s5 || (((*l_989) = (*p_1204->g_355)) || FAKE_DIVERGE(p_1204->global_0_offset, get_global_id(0), 10))), ((VECTOR(uint8_t, 2))(l_990.s3d)), 0x71L, 1UL)), 0x9AL, 0x38L)))).odd)).s34, ((VECTOR(uint8_t, 16))(l_991.s3544240202716714)).s59))).yyyy)).lo)).xyyx)).even)), 0xF6L)).s4, (safe_mul_func_uint8_t_u_u((*l_649), FAKE_DIVERGE(p_1204->local_1_offset, get_local_id(1), 10)))))) , ((*p_1204->g_224) = ((void*)0 != l_994))) == p_11)))) , p_11))) , l_997) != l_982.s7) , p_13);
            (*p_1204->g_847) = l_999;
        }
    }
    (*l_649) = (safe_lshift_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s((*l_999), (((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 8))(0x5348L, 1L, 1L, ((VECTOR(int16_t, 4))(1L, (safe_add_func_uint64_t_u_u((safe_div_func_uint16_t_u_u(p_1204->g_143.x, (+(safe_div_func_int8_t_s_s((*p_12), ((l_1025[5] = ((VECTOR(int32_t, 4))((l_1024 = ((((((&l_659 == ((*l_1012) = &l_659)) , ((VECTOR(int64_t, 4))(((((*l_1020) = (safe_div_func_int32_t_s_s(p_13, l_1016))) , ((**p_1204->g_354) = ((((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(0x6F2DFFCFL, ((*l_1013) != (*l_1013)), ((VECTOR(int32_t, 4))((-5L))), ((VECTOR(int32_t, 2))(1L)), (-1L), 0x6837D2E1L, ((VECTOR(int32_t, 2))((-2L))), p_11, ((VECTOR(int32_t, 2))((-1L))), 0x0C7A436EL)), ((VECTOR(int32_t, 16))(0L)), ((VECTOR(int32_t, 16))(2L))))).hi)).even)).z > GROUP_DIVERGE(1, 1)) | p_13) >= (**p_1204->g_354)) | 7UL))) >= (*p_12)), 4L, 0x20090BBAD0862F4BL, 0x09DB5DA0183EFCABL)).y) < p_11) != p_11) > (*l_999)) <= l_1021)), p_13, (-1L), 0L)).y) , (-1L))))))), p_13)), 0x7107L, 0x589EL)), (-6L))), ((VECTOR(int16_t, 8))(0x1937L))))).s7 & (*p_1204->g_106)))), 14)), 9));
    return p_12;
}


/* ------------------------------------------ */
/* 
 * reads : p_1204->g_133 p_1204->g_319 p_1204->g_478 p_1204->g_64 p_1204->g_354 p_1204->g_355 p_1204->g_135.f0 p_1204->g_500 p_1204->g_502 p_1204->g_280 p_1204->g_273 p_1204->g_159 p_1204->g_106 p_1204->g_96 p_1204->g_212 p_1204->g_321 p_1204->g_224 p_1204->g_88 p_1204->g_174 p_1204->g_535 p_1204->g_172 p_1204->g_143
 * writes: p_1204->g_64 p_1204->g_133 p_1204->g_324 p_1204->g_273 p_1204->g_321 p_1204->g_88 p_1204->g_86 p_1204->g_319
 */
int8_t * func_14(int8_t  p_15, int16_t  p_16, uint32_t  p_17, int64_t  p_18, uint16_t  p_19, struct S2 * p_1204)
{ /* block id: 186 */
    union U0 *l_457 = &p_1204->g_280;
    union U0 **l_458 = (void*)0;
    union U0 *l_460[3][2][3] = {{{(void*)0,&p_1204->g_280,(void*)0},{(void*)0,&p_1204->g_280,(void*)0}},{{(void*)0,&p_1204->g_280,(void*)0},{(void*)0,&p_1204->g_280,(void*)0}},{{(void*)0,&p_1204->g_280,(void*)0},{(void*)0,&p_1204->g_280,(void*)0}}};
    union U0 **l_459 = &l_460[1][1][0];
    int64_t *l_461[1];
    int32_t l_462 = 0L;
    uint8_t l_477 = 0x9DL;
    int32_t l_479 = 0x35CFBE9DL;
    int32_t **l_481 = &p_1204->g_133;
    int32_t ***l_480 = &l_481;
    VECTOR(int8_t, 2) l_501 = (VECTOR(int8_t, 2))((-7L), 0x07L);
    VECTOR(int16_t, 4) l_521 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-3L)), (-3L));
    VECTOR(int16_t, 4) l_523 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x4503L), 0x4503L);
    VECTOR(uint8_t, 2) l_526 = (VECTOR(uint8_t, 2))(1UL, 0x31L);
    VECTOR(int32_t, 8) l_554 = (VECTOR(int32_t, 8))(3L, (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 0x3107D690L), 0x3107D690L), 0x3107D690L, 3L, 0x3107D690L);
    VECTOR(int64_t, 8) l_562 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x6C485CF8D3EA68B9L), 0x6C485CF8D3EA68B9L), 0x6C485CF8D3EA68B9L, 0L, 0x6C485CF8D3EA68B9L);
    VECTOR(int64_t, 4) l_563 = (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, 0x0E03ACA83164EB20L), 0x0E03ACA83164EB20L);
    uint8_t *l_578 = &l_477;
    uint32_t *l_583[5][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
    uint32_t l_604 = 1UL;
    VECTOR(int64_t, 8) l_619 = (VECTOR(int64_t, 8))(6L, (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 1L), 1L), 1L, 6L, 1L);
    uint16_t l_628 = 1UL;
    uint64_t **l_641 = (void*)0;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_461[i] = &p_1204->g_86;
    (*p_1204->g_133) = (p_17 < (0x6BL & (l_457 == ((*l_459) = (void*)0))));
    if ((((((VECTOR(uint64_t, 16))(0UL, ((l_462 = ((+((*p_1204->g_133) = p_16)) >= FAKE_DIVERGE(p_1204->global_1_offset, get_global_id(1), 10))) && ((((safe_add_func_int32_t_s_s(((((safe_mul_func_uint8_t_u_u(0x20L, l_462)) | (&p_1204->g_135 == (*l_459))) > (l_479 = (p_1204->g_319 < (safe_sub_func_uint64_t_u_u((safe_add_func_uint64_t_u_u((safe_add_func_uint16_t_u_u(p_15, ((((((safe_mul_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s((l_477 | p_1204->g_478), l_462)), p_18)) || 65535UL) || 0L) , (*p_1204->g_133)) || p_17) | p_18))), p_17)), 0x619A722BDCB57637L))))) > (**p_1204->g_354)), (*p_1204->g_133))) ^ (*p_1204->g_355)) , GROUP_DIVERGE(2, 1)) , 1UL)), ((VECTOR(uint64_t, 8))(0xA9EA3C6F19C642F7L)), 18446744073709551612UL, 0xD22643D3D8808551L, 0UL, ((VECTOR(uint64_t, 2))(0x5A559F228DBDD4F2L)), 0xD71BF60D155E032CL)).sd , l_480) != (void*)0) >= p_16))
    { /* block id: 192 */
        int32_t l_488 = 0x3D6704BBL;
        uint8_t *l_499 = &p_1204->g_324;
        uint8_t *l_506 = &p_1204->g_92;
        uint8_t **l_505 = &l_506;
        int8_t *l_513[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
        int16_t l_514[4];
        VECTOR(int16_t, 16) l_522 = (VECTOR(int16_t, 16))(0x49DDL, (VECTOR(int16_t, 4))(0x49DDL, (VECTOR(int16_t, 2))(0x49DDL, 1L), 1L), 1L, 0x49DDL, 1L, (VECTOR(int16_t, 2))(0x49DDL, 1L), (VECTOR(int16_t, 2))(0x49DDL, 1L), 0x49DDL, 1L, 0x49DDL, 1L);
        int32_t l_552 = 0x0F06BFB6L;
        int i;
        for (i = 0; i < 4; i++)
            l_514[i] = 0x2143L;
        (**l_480) = (**l_480);
        if (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(0x0186645BL, (safe_lshift_func_uint8_t_u_s((safe_div_func_uint32_t_u_u((safe_sub_func_int32_t_s_s(((***l_480) = (**l_481)), (!((~l_488) ^ (safe_add_func_uint8_t_u_u((l_488 < (safe_div_func_int64_t_s_s(p_18, (safe_rshift_func_uint16_t_u_u(((((p_1204->g_321 = (((((((((safe_mul_func_int8_t_s_s(((safe_div_func_uint8_t_u_u(((*l_499) = (**p_1204->g_354)), ((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),VECTOR(int8_t, 16),((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(1L, 1L)).xyyyxyxx)), ((VECTOR(int8_t, 2))((-5L), 0x01L)).xyxxxxxx))).s7320441377650047, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(p_1204->g_500.s8ed021d886b3ae59)).hi)).s56, ((VECTOR(int8_t, 2))(l_501.xx))))).yxyyyxxy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(p_1204->g_502.xzyyyywz)), (p_1204->g_273.s4 = (safe_add_func_uint64_t_u_u((((*l_505) = (*p_1204->g_354)) == &l_477), ((p_1204->g_280 , (safe_add_func_int64_t_s_s((safe_lshift_func_int8_t_s_s((safe_sub_func_int8_t_s_s(p_1204->g_273.s4, (**p_1204->g_354))), 2)), p_1204->g_159))) > 0x2E14L)))), (-1L), ((VECTOR(int8_t, 2))(8L)), ((VECTOR(int8_t, 4))(0x4AL)))))).even))))).s5422040656257652)).s28)).xxyxyyyyxyxyxxxy, ((VECTOR(int8_t, 16))((-7L)))))).s4)) , l_488), 0x3AL)) < (*p_1204->g_106)) | 65534UL) <= 0x046629EDL) , 0L) , p_15) != p_1204->g_212.y) > p_1204->g_321) , (-3L))) == (*p_1204->g_224)) , l_514[2]) > 0x357DL), p_1204->g_174[4][5][1]))))), (**p_1204->g_354))))))), p_1204->g_174[5][4][2])), 0)), ((VECTOR(int32_t, 4))((-9L))), 1L, (-8L), ((VECTOR(int32_t, 4))(0x39E6B486L)), ((VECTOR(int32_t, 4))(0L)))).s58)), (-3L), 0x47EF3085L)))), 0x4BA2F5CCL, ((VECTOR(int32_t, 2))(0x218768E5L)), 1L)).s1)
        { /* block id: 199 */
            VECTOR(int16_t, 16) l_519 = (VECTOR(int16_t, 16))(0x5AD3L, (VECTOR(int16_t, 4))(0x5AD3L, (VECTOR(int16_t, 2))(0x5AD3L, 6L), 6L), 6L, 0x5AD3L, 6L, (VECTOR(int16_t, 2))(0x5AD3L, 6L), (VECTOR(int16_t, 2))(0x5AD3L, 6L), 0x5AD3L, 6L, 0x5AD3L, 6L);
            VECTOR(int16_t, 4) l_520 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L);
            VECTOR(int8_t, 2) l_546 = (VECTOR(int8_t, 2))(0x34L, 0L);
            int32_t *l_550 = (void*)0;
            int32_t *l_551[4][4] = {{&l_479,(void*)0,&l_479,&l_479},{&l_479,(void*)0,&l_479,&l_479},{&l_479,(void*)0,&l_479,&l_479},{&l_479,(void*)0,&l_479,&l_479}};
            int i, j;
            l_552 = (((((safe_add_func_int64_t_s_s((safe_sub_func_uint32_t_u_u(((*p_1204->g_106) ^ ((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 4))(l_519.s182a)).xyyzxwzy, ((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),int16_t,((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 4))(l_520.zzxw)).zzxwwzxxxzxxwwzy, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_521.wwzywywxwxywywwx)).s36)).xyyyxxxyyxyyyxyx, ((VECTOR(int16_t, 8))(1L, (-10L), 3L, ((VECTOR(int16_t, 2))(l_522.s3c)), ((VECTOR(int16_t, 2))(l_523.yw)), 0x1D02L)).s0203153166720322))).sd4, (int16_t)(safe_sub_func_uint64_t_u_u(p_18, ((((VECTOR(uint8_t, 8))(l_526.xyyyxyyx)).s1 || ((safe_rshift_func_uint16_t_u_s((((*p_1204->g_224) |= (~l_520.z)) > (p_1204->g_86 = ((safe_lshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 2))(0x143EL, 0L)).odd, ((-10L) >= (safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(p_1204->g_535.s53)).even, (((safe_div_func_int32_t_s_s(((***l_480) = (((safe_rshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s((safe_add_func_int8_t_s_s((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 4))(l_546.yyyx)).w, (((safe_unary_minus_func_int64_t_s((safe_mul_func_uint8_t_u_u((p_1204->g_172 , ((***l_480) || 0x1C57240283973C19L)), (0x2ED2L & ((p_1204->g_143.x < l_514[2]) > p_17)))))) || p_18) < (-9L)))), l_514[2])), 0UL)), 9)) , 18446744073709551615UL) != 0UL)), l_514[2])) | l_546.y) , p_16)))))), l_519.s5)) != (*p_1204->g_355)))), l_546.x)) , p_15)) || 2UL))), (int16_t)(**l_481)))).yxxyxyyy, ((VECTOR(int16_t, 8))(0x04A3L))))).s1201613104573054, ((VECTOR(int16_t, 16))(0x06F9L))))).sd), p_19)), l_522.s9)) >= p_19) , p_1204->g_174[0][2][1]) , p_15) , l_546.y);
        }
        else
        { /* block id: 204 */
            int32_t l_553[8][6] = {{(-1L),(-1L),0x48705620L,0x3C64D9E7L,1L,0x3C64D9E7L},{(-1L),(-1L),0x48705620L,0x3C64D9E7L,1L,0x3C64D9E7L},{(-1L),(-1L),0x48705620L,0x3C64D9E7L,1L,0x3C64D9E7L},{(-1L),(-1L),0x48705620L,0x3C64D9E7L,1L,0x3C64D9E7L},{(-1L),(-1L),0x48705620L,0x3C64D9E7L,1L,0x3C64D9E7L},{(-1L),(-1L),0x48705620L,0x3C64D9E7L,1L,0x3C64D9E7L},{(-1L),(-1L),0x48705620L,0x3C64D9E7L,1L,0x3C64D9E7L},{(-1L),(-1L),0x48705620L,0x3C64D9E7L,1L,0x3C64D9E7L}};
            int i, j;
            l_553[5][4] &= ((***l_480) <= p_1204->g_96);
            (**l_481) = ((VECTOR(int32_t, 4))(l_554.s0327)).z;
        }
    }
    else
    { /* block id: 208 */
        uint8_t *l_576[2][1][7] = {{{&p_1204->g_324,&p_1204->g_324,&p_1204->g_324,&p_1204->g_324,&p_1204->g_324,&p_1204->g_324,&p_1204->g_324}},{{&p_1204->g_324,&p_1204->g_324,&p_1204->g_324,&p_1204->g_324,&p_1204->g_324,&p_1204->g_324,&p_1204->g_324}}};
        int32_t *l_581[5] = {&p_1204->g_64,&p_1204->g_64,&p_1204->g_64,&p_1204->g_64,&p_1204->g_64};
        uint64_t **l_643 = &p_1204->g_224;
        int i, j, k;
        for (p_1204->g_88 = (-30); (p_1204->g_88 >= 26); p_1204->g_88++)
        { /* block id: 211 */
            uint8_t **l_577[9] = {&l_576[1][0][0],&l_576[1][0][0],&l_576[1][0][0],&l_576[1][0][0],&l_576[1][0][0],&l_576[1][0][0],&l_576[1][0][0],&l_576[1][0][0],&l_576[1][0][0]};
            int32_t l_579 = 0x6C89F60AL;
            int32_t *l_580 = &p_1204->g_319;
            int32_t l_602 = (-1L);
            int32_t l_603[2][10][7] = {{{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L}},{{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L},{(-1L),0x4E541294L,0x62907A76L,0x4E541294L,(-1L),(-1L),0x4E541294L}}};
            VECTOR(uint64_t, 2) l_617 = (VECTOR(uint64_t, 2))(0xA77316EE01B5681FL, 0x563FAC9F8720B0BDL);
            uint32_t l_632[9][7][4] = {{{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L}},{{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L}},{{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L}},{{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L}},{{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L}},{{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L}},{{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L}},{{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L}},{{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L},{3UL,1UL,0UL,0x60662743L}}};
            int8_t *l_636[6][8] = {{&p_1204->g_7,(void*)0,&p_1204->g_74,(void*)0,&p_1204->g_74,(void*)0,&p_1204->g_7,(void*)0},{&p_1204->g_7,(void*)0,&p_1204->g_74,(void*)0,&p_1204->g_74,(void*)0,&p_1204->g_7,(void*)0},{&p_1204->g_7,(void*)0,&p_1204->g_74,(void*)0,&p_1204->g_74,(void*)0,&p_1204->g_7,(void*)0},{&p_1204->g_7,(void*)0,&p_1204->g_74,(void*)0,&p_1204->g_74,(void*)0,&p_1204->g_7,(void*)0},{&p_1204->g_7,(void*)0,&p_1204->g_74,(void*)0,&p_1204->g_74,(void*)0,&p_1204->g_7,(void*)0},{&p_1204->g_7,(void*)0,&p_1204->g_74,(void*)0,&p_1204->g_74,(void*)0,&p_1204->g_7,(void*)0}};
            int8_t **l_635 = &l_636[5][4];
            int i, j, k;
            (*l_580) = ((&l_477 != (void*)0) <= (safe_lshift_func_int8_t_s_s((safe_add_func_uint8_t_u_u((((VECTOR(int64_t, 16))(0x2B688F6A7C823A98L, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(p_1204->g_561.zxxw)).even)))), 0x60BF424B646305BCL, (-5L))).wxxwxwyw)), 0x3A417460DC3D406DL, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 8))(l_562.s12605334)).s5755152604547123, ((VECTOR(int64_t, 2))(0x2B31162A220369FDL, (-10L))).xxyxyxyxyyyyxxyx, ((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 8))(l_563.zzzxxyxx)), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(0x7B5AC7C86226FB90L, 0x2B21BB7A6E4B497BL)))).xyxxyxxy))).s7604734514267343))).s8b)), (!(safe_mul_func_uint16_t_u_u((((safe_rshift_func_int8_t_s_s((((safe_sub_func_int8_t_s_s((-3L), (safe_div_func_uint16_t_u_u((safe_mod_func_int16_t_s_s(((~((FAKE_DIVERGE(p_1204->group_1_offset, get_group_id(1), 10) <= (safe_mod_func_int32_t_s_s(((p_1204->g_582 = l_580) == l_583[0][1]), p_17))) , p_16)) && 4294967295UL), p_15)), (*p_1204->g_106))))) || (-4L)) != p_19), p_1204->g_297.s5)) , (-1L)) == p_17), p_1204->g_174[4][4][2]))), 0x7E46DF40EB87C087L, 0x362FF199D4B0A54FL, 8L)).se <= 0x8423A1D455B0B863L), p_1204->g_88)), 6)));
            if ((*l_580))
                continue;
        }
    }
    return &p_1204->g_74;
}


/* ------------------------------------------ */
/* 
 * reads : p_1204->g_45 p_1204->g_7 p_1204->g_24 p_1204->g_64 p_1204->g_88 p_1204->g_92 p_1204->g_94 p_1204->g_96 p_1204->g_99 p_1204->g_74 p_1204->g_98 p_1204->g_86 p_1204->g_133 p_1204->g_106 p_1204->g_143 p_1204->g_159 p_1204->g_160 p_1204->g_174 p_1204->g_135.f0 p_1204->g_201 p_1204->g_212 p_1204->g_222 p_1204->g_246 p_1204->g_267 p_1204->g_271 p_1204->g_273 p_1204->g_393 p_1204->g_319 p_1204->g_415 p_1204->g_285
 * writes: p_1204->g_64 p_1204->g_74 p_1204->g_88 p_1204->g_94 p_1204->g_96 p_1204->g_98 p_1204->g_99 p_1204->g_106 p_1204->g_92 p_1204->g_133 p_1204->g_159 p_1204->g_135.f0 p_1204->g_223 p_1204->g_319
 */
uint32_t  func_25(uint8_t  p_26, uint16_t  p_27, uint8_t  p_28, uint32_t  p_29, struct S2 * p_1204)
{ /* block id: 5 */
    int32_t *l_30 = (void*)0;
    int32_t l_31[1][5][8] = {{{0x50E101EAL,0x0B42B8FFL,(-8L),0x31234912L,(-8L),0x0B42B8FFL,0x50E101EAL,(-10L)},{0x50E101EAL,0x0B42B8FFL,(-8L),0x31234912L,(-8L),0x0B42B8FFL,0x50E101EAL,(-10L)},{0x50E101EAL,0x0B42B8FFL,(-8L),0x31234912L,(-8L),0x0B42B8FFL,0x50E101EAL,(-10L)},{0x50E101EAL,0x0B42B8FFL,(-8L),0x31234912L,(-8L),0x0B42B8FFL,0x50E101EAL,(-10L)},{0x50E101EAL,0x0B42B8FFL,(-8L),0x31234912L,(-8L),0x0B42B8FFL,0x50E101EAL,(-10L)}}};
    VECTOR(int8_t, 8) l_46 = (VECTOR(int8_t, 8))(8L, (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 0x10L), 0x10L), 0x10L, 8L, 0x10L);
    VECTOR(uint8_t, 8) l_47 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x07L), 0x07L), 0x07L, 1UL, 0x07L);
    VECTOR(uint16_t, 4) l_180 = (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 65535UL), 65535UL);
    int32_t *l_394 = (void*)0;
    int32_t *l_395 = (void*)0;
    int32_t *l_396 = &p_1204->g_319;
    union U1 *l_451 = (void*)0;
    int8_t *l_453[2][7][5] = {{{&p_1204->g_74,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1204->g_74,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1204->g_74,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1204->g_74,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1204->g_74,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1204->g_74,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1204->g_74,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_1204->g_74,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1204->g_74,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1204->g_74,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1204->g_74,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1204->g_74,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1204->g_74,(void*)0,(void*)0,(void*)0,(void*)0},{&p_1204->g_74,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t *l_454 = (void*)0;
    int32_t **l_455 = &l_395;
    int i, j, k;
    l_31[0][2][7] = (-1L);
    (*l_396) ^= ((((safe_lshift_func_int8_t_s_s(0x34L, 7)) > func_34(&l_31[0][4][5], func_39(((((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 8))(p_1204->g_45.xyxxyyyy)).s1545634477532653, ((VECTOR(int8_t, 4))(l_46.s6321)).ywywzwwwyxyxyzwz))).s2c)), 0x70L, 0xE5L)).hi)), 252UL, 9UL)), (uint8_t)FAKE_DIVERGE(p_1204->group_1_offset, get_group_id(1), 10)))).odd, ((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(l_47.s64)))).yyyyyxxyyxyxyxyx, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(0x6AL, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(abs(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 16))(0UL, 1UL, 0xA1L, func_48(p_28, func_53(p_1204->g_7, p_1204), &l_31[0][4][4], &l_31[0][2][7], p_1204), 255UL, (safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(l_180.zwwzxxxxzxzxyyyz)).hi)).s0, p_1204->g_96)), ((VECTOR(uint8_t, 8))(0xA8L)), 0xB3L, 0x8EL))))).hi)).lo))).hi)), 8UL)).lo)).xxyxxxxxxyyyyxyx))).sbc))).hi || l_180.w) , &p_1204->g_74), p_1204->g_174[1][4][1], &l_31[0][3][4], p_1204->g_143.x, &l_31[0][0][5], p_1204), l_30, p_26, p_1204)) , p_1204->g_393) , l_180.y);
    for (p_1204->g_319 = 16; (p_1204->g_319 >= (-27)); --p_1204->g_319)
    { /* block id: 159 */
        uint8_t l_422[7][4][8] = {{{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L}},{{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L}},{{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L}},{{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L}},{{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L}},{{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L}},{{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L},{0xE6L,6UL,0x3DL,1UL,1UL,0x3DL,6UL,0xE6L}}};
        VECTOR(uint8_t, 2) l_439 = (VECTOR(uint8_t, 2))(0x85L, 0x48L);
        uint16_t *l_445 = (void*)0;
        union U1 *l_449 = &p_1204->g_450;
        int i, j, k;
        if ((safe_mul_func_int8_t_s_s((safe_unary_minus_func_uint32_t_u((safe_mul_func_int16_t_s_s((*p_1204->g_106), (8L >= ((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 2))(p_1204->g_404.sf0)).xxxxxxxy, ((VECTOR(uint32_t, 8))(4294967293UL, 0x0D8C35D4L, ((VECTOR(uint32_t, 2))(0xC1C5B0A9L, 4294967289UL)), 1UL, ((&l_31[0][2][7] == ((((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 4))((18446744073709551607UL > (((FAKE_DIVERGE(p_1204->global_2_offset, get_global_id(2), 10) , (p_26 || p_1204->g_160.s0)) , ((((((p_27 && 0x73FE1AAD8187688DL) == (((safe_sub_func_int32_t_s_s((safe_mod_func_uint8_t_u_u((safe_add_func_int16_t_s_s(0x2A48L, 1UL)), 0x2FL)), 0x31FD94D9L)) != 0L) ^ (-1L))) , FAKE_DIVERGE(p_1204->global_2_offset, get_global_id(2), 10)) >= (*p_1204->g_106)) ^ 0x4BL) != 0UL)) <= (-6L))), 7L, (-3L), 8L)).lo, ((VECTOR(int8_t, 2))(0x78L)), ((VECTOR(int8_t, 2))((-4L)))))).xyxy, ((VECTOR(int8_t, 4))(0L)), ((VECTOR(int8_t, 4))(0L))))).z ^ (-10L)) , (void*)0)) || p_26), 0x46A42FF9L, 4UL))))).s5))))), FAKE_DIVERGE(p_1204->group_1_offset, get_group_id(1), 10))))
        { /* block id: 160 */
            uint64_t **l_411 = &p_1204->g_224;
            int32_t *l_416 = (void*)0;
            int32_t **l_417 = &l_416;
            int32_t *l_418 = &p_1204->g_64;
            int32_t *l_419 = &l_31[0][2][6];
            int32_t *l_420 = &l_31[0][2][7];
            int32_t *l_421[5][7][2] = {{{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0}},{{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0}},{{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0}},{{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0}},{{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0},{&p_1204->g_174[4][6][0],(void*)0}}};
            int32_t l_448 = 1L;
            int32_t *l_452[3];
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_452[i] = &p_1204->g_64;
            (*p_1204->g_415) = l_411;
            (*l_417) = l_416;
            --l_422[3][0][3];
            for (p_1204->g_159 = 20; (p_1204->g_159 == (-1)); p_1204->g_159--)
            { /* block id: 166 */
                VECTOR(uint8_t, 2) l_437 = (VECTOR(uint8_t, 2))(246UL, 0x44L);
                VECTOR(uint8_t, 4) l_438 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL);
                int32_t l_444 = (-1L);
                int i;
                (*l_418) = ((((safe_lshift_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((p_27 = p_1204->g_160.sd), ((void*)0 == l_30))), 7)) , l_422[4][1][2]) ^ (((l_444 |= (safe_lshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(p_26, ((safe_add_func_int16_t_s_s(l_422[5][2][1], ((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 4))(7UL, ((VECTOR(uint8_t, 2))(abs(((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 2))(l_437.xx)).xxyyyyxy))).s76, ((VECTOR(uint8_t, 2))(l_438.wy)), ((VECTOR(uint8_t, 2))(l_439.yx))))).yxxx)).lo, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(0x4AL, (safe_add_func_int32_t_s_s(((safe_add_func_int64_t_s_s((p_1204->g_143.x | 6L), (*p_1204->g_224))) != p_1204->g_88), l_439.y)), 255UL, 0x50L)).xyxzywyz)).s37, ((VECTOR(uint8_t, 2))(1UL))))), (uint8_t)p_28))), 0x21L, 4UL)).odd)))), ((VECTOR(uint8_t, 2))(247UL))))).xxxyyyyx, (uint8_t)(*p_1204->g_355)))).odd))).even))), 0x1DL)).lo, ((VECTOR(uint8_t, 2))(0x0EL))))).even)) , l_437.x))), 8))) , (void*)0) == l_445)) >= 0x17L);
                for (p_29 = 0; (p_29 > 8); p_29 = safe_add_func_uint16_t_u_u(p_29, 7))
                { /* block id: 172 */
                    if (l_448)
                        break;
                    l_451 = l_449;
                }
                (*l_417) = &l_444;
                (*l_417) = l_452[1];
            }
        }
        else
        { /* block id: 179 */
            return p_1204->g_285;
        }
    }
    (*l_455) = &l_31[0][4][3];
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int64_t  func_34(int32_t * p_35, int32_t * p_36, int32_t * p_37, int16_t  p_38, struct S2 * p_1204)
{ /* block id: 154 */
    return p_38;
}


/* ------------------------------------------ */
/* 
 * reads : p_1204->g_106 p_1204->g_96 p_1204->g_135.f0 p_1204->g_201 p_1204->g_74 p_1204->g_86 p_1204->g_133 p_1204->g_64 p_1204->g_99 p_1204->g_98 p_1204->g_212 p_1204->g_160 p_1204->g_222 p_1204->g_246 p_1204->g_159 p_1204->g_94 p_1204->g_24 p_1204->g_267 p_1204->g_271 p_1204->g_273
 * writes: p_1204->g_135.f0 p_1204->g_223 p_1204->g_94 p_1204->g_64 p_1204->g_74 p_1204->g_159
 */
int32_t * func_39(int8_t * p_40, uint64_t  p_41, int32_t * p_42, uint32_t  p_43, int32_t * p_44, struct S2 * p_1204)
{ /* block id: 74 */
    VECTOR(int8_t, 4) l_185 = (VECTOR(int8_t, 4))(0x46L, (VECTOR(int8_t, 2))(0x46L, 1L), 1L);
    uint8_t *l_196 = &p_1204->g_135.f0;
    VECTOR(uint64_t, 4) l_202 = (VECTOR(uint64_t, 4))(0xEDDB29E4BBC024C7L, (VECTOR(uint64_t, 2))(0xEDDB29E4BBC024C7L, 18446744073709551608UL), 18446744073709551608UL);
    uint64_t *l_203[9][9][3] = {{{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98}},{{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98}},{{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98}},{{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98}},{{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98}},{{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98}},{{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98}},{{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98}},{{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98},{(void*)0,&p_1204->g_88,&p_1204->g_98}}};
    int32_t l_204 = 0x59C6D22BL;
    int32_t l_209 = 0x7A331CB6L;
    int32_t l_213 = 0x7B3CF3B6L;
    VECTOR(uint16_t, 2) l_216 = (VECTOR(uint16_t, 2))(0x8B1BL, 0xAB81L);
    VECTOR(uint32_t, 16) l_217 = (VECTOR(uint32_t, 16))(0x74364D47L, (VECTOR(uint32_t, 4))(0x74364D47L, (VECTOR(uint32_t, 2))(0x74364D47L, 0UL), 0UL), 0UL, 0x74364D47L, 0UL, (VECTOR(uint32_t, 2))(0x74364D47L, 0UL), (VECTOR(uint32_t, 2))(0x74364D47L, 0UL), 0x74364D47L, 0UL, 0x74364D47L, 0UL);
    union U0 *l_229 = &p_1204->g_135;
    union U0 *l_230 = &p_1204->g_135;
    int32_t **l_254 = &p_1204->g_133;
    VECTOR(int8_t, 8) l_269 = (VECTOR(int8_t, 8))(0x26L, (VECTOR(int8_t, 4))(0x26L, (VECTOR(int8_t, 2))(0x26L, 0x05L), 0x05L), 0x05L, 0x26L, 0x05L);
    VECTOR(int8_t, 16) l_270 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int8_t, 2))((-1L), 1L), (VECTOR(int8_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L);
    uint64_t l_296 = 1UL;
    int32_t l_305 = 0x1FD8AE5CL;
    int32_t l_306 = 9L;
    int32_t l_311 = 0x75CD4B9FL;
    int32_t l_312 = 0x6BF1DFBCL;
    int32_t l_315 = 0L;
    int32_t l_317 = 0L;
    int32_t l_322 = 0L;
    int16_t l_362 = 0x459DL;
    int32_t l_363[10];
    VECTOR(uint8_t, 2) l_372 = (VECTOR(uint8_t, 2))(0x35L, 255UL);
    int32_t l_375 = 0x03288781L;
    uint64_t l_377[4] = {4UL,4UL,4UL,4UL};
    VECTOR(int32_t, 4) l_392 = (VECTOR(int32_t, 4))(0x0B350600L, (VECTOR(int32_t, 2))(0x0B350600L, (-1L)), (-1L));
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_363[i] = 0x4F1F9B53L;
    if ((safe_add_func_uint32_t_u_u((((safe_rshift_func_int16_t_s_s(((*p_1204->g_106) ^ (((((VECTOR(int8_t, 8))(l_185.zxwwzywy)).s7 , (((((safe_lshift_func_int16_t_s_s((((safe_mod_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(((((safe_mod_func_uint8_t_u_u((safe_add_func_uint64_t_u_u((l_204 = ((~p_43) <= (((++(*l_196)) || ((safe_lshift_func_int8_t_s_u((&p_1204->g_7 != p_40), (&p_1204->g_106 != &p_1204->g_106))) & (((VECTOR(uint64_t, 2))(p_1204->g_201.zw)).hi >= ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(l_202.xwzwyyzz)).s01)))).xxyyyxyxxyxxyyxx)).sc))) , 8L))), FAKE_DIVERGE(p_1204->global_2_offset, get_global_id(2), 10))), 0x1CL)) || ((safe_div_func_int16_t_s_s((safe_div_func_int32_t_s_s(((*p_40) , l_202.y), l_202.w)), 0xA065L)) ^ 0x663DB50818E70DCBL)) , 0x0D4BL) < p_43), 0xFFL)), p_1204->g_86)) ^ GROUP_DIVERGE(0, 1)) , l_209), 6)) ^ 65535UL) >= (*p_42)) > (*p_1204->g_133)) != p_1204->g_99[5])) > p_1204->g_98) , (*p_1204->g_106))), 2)) != 0x2CL) , p_41), 0x2F049FA6L)))
    { /* block id: 77 */
        int64_t l_218[9] = {0x4C61FBE054320CC7L,(-1L),0x4C61FBE054320CC7L,0x4C61FBE054320CC7L,(-1L),0x4C61FBE054320CC7L,0x4C61FBE054320CC7L,(-1L),0x4C61FBE054320CC7L};
        uint64_t l_242[5] = {7UL,7UL,7UL,7UL,7UL};
        VECTOR(uint32_t, 8) l_266 = (VECTOR(uint32_t, 8))(4294967292UL, (VECTOR(uint32_t, 4))(4294967292UL, (VECTOR(uint32_t, 2))(4294967292UL, 0xAF59B802L), 0xAF59B802L), 0xAF59B802L, 4294967292UL, 0xAF59B802L);
        VECTOR(int8_t, 16) l_272 = (VECTOR(int8_t, 16))(0x28L, (VECTOR(int8_t, 4))(0x28L, (VECTOR(int8_t, 2))(0x28L, 0x08L), 0x08L), 0x08L, 0x28L, 0x08L, (VECTOR(int8_t, 2))(0x28L, 0x08L), (VECTOR(int8_t, 2))(0x28L, 0x08L), 0x28L, 0x08L, 0x28L, 0x08L);
        int i;
        if ((safe_mul_func_int8_t_s_s(((((((VECTOR(int16_t, 2))(p_1204->g_212.xy)).hi > l_213) == (safe_lshift_func_int8_t_s_s(((p_1204->g_99[2] <= p_1204->g_160.s3) , (0L < (p_41 ^ ((((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),uint16_t,((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(l_216.xyyy)), 0x5DD2L, (p_1204->g_135.f0 && (((VECTOR(uint32_t, 2))(l_217.sc6)).hi >= (65535UL >= ((p_1204->g_99[8] < 0x49D6L) || 1L)))), 0x74D5L, 7UL, ((VECTOR(uint16_t, 8))(65535UL)))), ((VECTOR(uint16_t, 16))(65535UL)), ((VECTOR(uint16_t, 16))(0xF295L))))), (uint16_t)p_41, (uint16_t)p_43))).odd, ((VECTOR(uint16_t, 8))(65528UL))))).s5 , l_202.w) != l_218[4])))), 6))) ^ (*p_40)) <= p_43), l_202.z)))
        { /* block id: 78 */
            (*p_44) |= (safe_lshift_func_int8_t_s_u((-1L), 6));
            return p_44;
        }
        else
        { /* block id: 81 */
            uint64_t **l_221 = &l_203[3][1][1];
            union U0 *l_232 = &p_1204->g_135;
            union U0 **l_231 = &l_232;
            uint64_t ***l_233[3];
            uint16_t *l_243 = &p_1204->g_94;
            int32_t ***l_253 = (void*)0;
            uint16_t *l_255 = (void*)0;
            VECTOR(uint8_t, 8) l_268 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x65L), 0x65L), 0x65L, 255UL, 0x65L);
            int i;
            for (i = 0; i < 3; i++)
                l_233[i] = &p_1204->g_223;
            (*p_1204->g_222) = l_221;
            (*p_44) &= ((p_41 & (safe_sub_func_uint64_t_u_u((l_218[4] && (l_229 == ((*l_231) = (l_230 = &p_1204->g_135)))), (((*p_1204->g_222) = &l_203[1][8][1]) != &l_203[1][8][1])))) && (((((((l_243 = ((safe_lshift_func_uint16_t_u_s((1UL <= (safe_rshift_func_uint16_t_u_s(0x5B61L, (safe_div_func_int32_t_s_s((safe_div_func_int16_t_s_s(((p_1204->g_135.f0 , l_230) == (void*)0), 65535UL)), l_242[4]))))), (*p_1204->g_106))) , (void*)0)) != (void*)0) , (void*)0) == p_42) >= p_43) , (void*)0) != (void*)0));
            (*p_1204->g_133) = (((VECTOR(int64_t, 2))(0x3DD194FD1D8052F2L, 0L)).hi || ((safe_mod_func_uint8_t_u_u(248UL, p_1204->g_201.z)) , ((((+(l_242[4] ^ ((VECTOR(int16_t, 2))(p_1204->g_246.wx)).odd)) , (safe_sub_func_uint32_t_u_u(((safe_add_func_int16_t_s_s(1L, (p_1204->g_94 ^= (safe_div_func_int32_t_s_s(((((*p_42) = l_218[4]) , (&p_44 == (l_254 = &p_1204->g_133))) & (((p_41 || 65532UL) != 0x79L) ^ p_1204->g_159)), p_41))))) < p_43), l_202.y))) > (*p_1204->g_133)) <= (-4L))));
            (*p_42) = (safe_mul_func_int16_t_s_s(p_43, (safe_sub_func_int32_t_s_s((safe_sub_func_int8_t_s_s(((((*p_40) = (safe_lshift_func_uint8_t_u_s(p_1204->g_24.z, 1))) < (safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(l_266.s35)).even, (+(~((VECTOR(int32_t, 8))(p_1204->g_267.xxyxyyyy)).s2))))) > ((**l_254) |= 5L)), (((VECTOR(uint8_t, 2))(l_268.s54)).lo >= (+((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_269.s0675)).wzzzyxwx)).s27, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 2))(0x66L, 0L)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_270.s1c)).xyyy)).even))).yyyyxyxyyxyyyyyy, ((VECTOR(int8_t, 16))(p_1204->g_271.yxyxxyxyxyxyyyyx))))).s48ed, ((VECTOR(int8_t, 2))(l_272.s1c)).xxyx))).yzyxxzzx)).s26, ((VECTOR(int8_t, 2))(p_1204->g_273.s16))))), 0L, 0x73L)).xxzxwxww)).s7)))), 8L))));
        }
    }
    else
    { /* block id: 96 */
        int32_t *l_287 = &l_209;
        uint32_t l_290 = 0x212999A3L;
        VECTOR(int32_t, 16) l_298 = (VECTOR(int32_t, 16))(0x065009F6L, (VECTOR(int32_t, 4))(0x065009F6L, (VECTOR(int32_t, 2))(0x065009F6L, (-2L)), (-2L)), (-2L), 0x065009F6L, (-2L), (VECTOR(int32_t, 2))(0x065009F6L, (-2L)), (VECTOR(int32_t, 2))(0x065009F6L, (-2L)), 0x065009F6L, (-2L), 0x065009F6L, (-2L));
        int8_t l_300 = 2L;
        int32_t l_302 = 0x35B0CBCCL;
        int32_t l_303 = 0x089AC569L;
        int32_t l_304 = 1L;
        int32_t l_307 = 0x1BF29F10L;
        int32_t l_308 = 0x77C6BC45L;
        int32_t l_309 = 0x0F3F1F6CL;
        VECTOR(int32_t, 8) l_310 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-3L)), (-3L)), (-3L), (-1L), (-3L));
        VECTOR(int32_t, 8) l_336 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x71B6C5BEL), 0x71B6C5BEL), 0x71B6C5BEL, (-1L), 0x71B6C5BEL);
        int64_t l_374[7];
        int i;
        for (i = 0; i < 7; i++)
            l_374[i] = 0L;
        for (p_1204->g_159 = 13; (p_1204->g_159 >= 8); --p_1204->g_159)
        { /* block id: 99 */
            uint8_t l_283 = 1UL;
            uint32_t *l_284 = (void*)0;
            int32_t l_286 = 0x2AFAB89DL;
            uint32_t *l_301[3];
            int32_t l_314 = 0x602B7456L;
            int32_t l_316 = 0x2BDCE529L;
            int32_t l_320 = 0x2B4E5C12L;
            int32_t l_323 = 1L;
            int32_t l_337 = 0x30300A99L;
            int32_t l_341 = (-1L);
            int32_t l_342 = (-10L);
            int32_t l_343 = 0x5AAC76E4L;
            int32_t l_345 = 8L;
            int32_t l_346 = 0x10C78C45L;
            uint32_t l_348 = 0x9AF58B07L;
            int32_t l_366 = 2L;
            int32_t l_376[2];
            int i;
            for (i = 0; i < 3; i++)
                l_301[i] = (void*)0;
            for (i = 0; i < 2; i++)
                l_376[i] = 0x15089A55L;
            (1 + 1);
        }
    }
    for (l_311 = 0; (l_311 == 19); l_311++)
    { /* block id: 149 */
        return p_42;
    }
    (*p_1204->g_133) = ((VECTOR(int32_t, 2))(l_392.zz)).odd;
    return (*l_254);
}


/* ------------------------------------------ */
/* 
 * reads : p_1204->g_106 p_1204->g_96 p_1204->g_133 p_1204->g_174
 * writes: p_1204->g_64
 */
uint8_t  func_48(uint8_t  p_49, int32_t * p_50, int32_t * p_51, int32_t * p_52, struct S2 * p_1204)
{ /* block id: 70 */
    uint16_t l_165[10][5][2] = {{{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L}},{{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L}},{{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L}},{{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L}},{{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L}},{{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L}},{{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L}},{{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L}},{{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L}},{{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L},{0x5341L,0x8FC4L}}};
    int32_t *l_166 = &p_1204->g_64;
    int32_t *l_167 = (void*)0;
    int32_t *l_168 = &p_1204->g_64;
    int32_t *l_169 = &p_1204->g_64;
    int32_t *l_170[3];
    int8_t l_171[9] = {0x72L,0x1EL,0x72L,0x72L,0x1EL,0x72L,0x72L,0x1EL,0x72L};
    int64_t l_173 = 0x4A0E0B1545FFFB89L;
    uint64_t l_175 = 0xB5091CF3017F13B5L;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_170[i] = &p_1204->g_64;
    (*p_1204->g_133) = (l_165[6][1][1] && (p_49 < (*p_1204->g_106)));
    l_175--;
    return p_1204->g_174[4][6][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1204->g_24 p_1204->g_64 p_1204->g_7 p_1204->g_88 p_1204->g_92 p_1204->g_94 p_1204->g_96 p_1204->g_99 p_1204->g_74 p_1204->g_45 p_1204->g_98 p_1204->g_86 p_1204->g_133 p_1204->g_106 p_1204->g_143 p_1204->g_159 p_1204->g_160
 * writes: p_1204->g_64 p_1204->g_74 p_1204->g_88 p_1204->g_94 p_1204->g_96 p_1204->g_98 p_1204->g_99 p_1204->g_106 p_1204->g_92 p_1204->g_133 p_1204->g_159
 */
int32_t * func_53(uint16_t  p_54, struct S2 * p_1204)
{ /* block id: 7 */
    uint32_t l_55 = 1UL;
    int32_t *l_63 = &p_1204->g_64;
    int8_t *l_65[7][4] = {{&p_1204->g_7,&p_1204->g_7,(void*)0,(void*)0},{&p_1204->g_7,&p_1204->g_7,(void*)0,(void*)0},{&p_1204->g_7,&p_1204->g_7,(void*)0,(void*)0},{&p_1204->g_7,&p_1204->g_7,(void*)0,(void*)0},{&p_1204->g_7,&p_1204->g_7,(void*)0,(void*)0},{&p_1204->g_7,&p_1204->g_7,(void*)0,(void*)0},{&p_1204->g_7,&p_1204->g_7,(void*)0,(void*)0}};
    int i, j;
    l_55--;
    (*l_63) = func_58(p_1204->g_24.y, l_63, l_65[4][1], (*l_63), p_1204);
    return l_63;
}


/* ------------------------------------------ */
/* 
 * reads : p_1204->g_7 p_1204->g_64 p_1204->g_24 p_1204->g_88 p_1204->g_92 p_1204->g_94 p_1204->g_96 p_1204->g_99 p_1204->g_74 p_1204->g_45 p_1204->g_98 p_1204->g_86 p_1204->g_133 p_1204->g_106 p_1204->g_143 p_1204->g_159 p_1204->g_160
 * writes: p_1204->g_64 p_1204->g_74 p_1204->g_88 p_1204->g_94 p_1204->g_96 p_1204->g_98 p_1204->g_99 p_1204->g_106 p_1204->g_92 p_1204->g_133 p_1204->g_159
 */
int32_t  func_58(int32_t  p_59, int32_t * p_60, int8_t * p_61, int32_t  p_62, struct S2 * p_1204)
{ /* block id: 9 */
    int32_t *l_69 = &p_1204->g_64;
    int32_t **l_162 = &p_1204->g_133;
    (*l_162) = func_66(l_69, p_61, p_1204);
    return (*p_60);
}


/* ------------------------------------------ */
/* 
 * reads : p_1204->g_7 p_1204->g_64 p_1204->g_24 p_1204->g_88 p_1204->g_92 p_1204->g_94 p_1204->g_96 p_1204->g_99 p_1204->g_74 p_1204->g_45 p_1204->g_98 p_1204->g_86 p_1204->g_133 p_1204->g_106 p_1204->g_143 p_1204->g_159 p_1204->g_160 p_1204->g_319
 * writes: p_1204->g_64 p_1204->g_74 p_1204->g_88 p_1204->g_94 p_1204->g_96 p_1204->g_98 p_1204->g_99 p_1204->g_106 p_1204->g_92 p_1204->g_133 p_1204->g_159 p_1204->g_319
 */
int32_t * func_66(int32_t * p_67, int8_t * p_68, struct S2 * p_1204)
{ /* block id: 10 */
    int32_t **l_70 = (void*)0;
    int32_t ***l_71[10];
    int32_t *l_73 = &p_1204->g_64;
    int32_t **l_72 = &l_73;
    VECTOR(uint8_t, 8) l_85 = (VECTOR(uint8_t, 8))(0x2BL, (VECTOR(uint8_t, 4))(0x2BL, (VECTOR(uint8_t, 2))(0x2BL, 246UL), 246UL), 246UL, 0x2BL, 246UL);
    uint64_t *l_87 = &p_1204->g_88;
    uint8_t *l_91[10][9] = {{(void*)0,(void*)0,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92},{(void*)0,(void*)0,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92},{(void*)0,(void*)0,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92},{(void*)0,(void*)0,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92},{(void*)0,(void*)0,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92},{(void*)0,(void*)0,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92},{(void*)0,(void*)0,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92},{(void*)0,(void*)0,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92},{(void*)0,(void*)0,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92},{(void*)0,(void*)0,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92,&p_1204->g_92}};
    int32_t l_93 = 0L;
    int16_t *l_95[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint64_t *l_97 = &p_1204->g_98;
    int64_t l_102 = 0x7399A04901E3F2B5L;
    int16_t **l_105[3];
    int32_t l_111 = 0x0EE5A8B3L;
    union U0 *l_134 = &p_1204->g_135;
    int16_t l_140 = (-1L);
    int32_t l_154 = 0x3D44B8B3L;
    uint8_t l_158[3];
    int i, j;
    for (i = 0; i < 10; i++)
        l_71[i] = &l_70;
    for (i = 0; i < 3; i++)
        l_105[i] = (void*)0;
    for (i = 0; i < 3; i++)
        l_158[i] = 0xF7L;
    (*p_67) ^= p_1204->g_7;
    l_72 = l_70;
    p_1204->g_99[6] |= (((p_1204->g_74 = p_1204->g_24.w) == (((p_1204->g_64 | ((*l_97) = (safe_lshift_func_int16_t_s_s((((safe_mul_func_uint16_t_u_u((p_1204->g_7 | (+(65527UL < (safe_sub_func_int16_t_s_s(p_1204->g_7, (p_1204->g_96 |= (safe_lshift_func_uint16_t_u_s((*l_73), ((p_1204->g_7 & ((safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(l_85.s34)).lo, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(0UL, 0x3EL)))).lo)) , (p_1204->g_64 , ((*l_87)--)))) <= (p_1204->g_94 &= ((l_93 ^= 0x1BL) | p_1204->g_92))))))))))), p_1204->g_64)) < (-5L)) && 65528UL), (*l_73))))) , FAKE_DIVERGE(p_1204->group_0_offset, get_group_id(0), 10)) != 0x32L)) == (*p_67));
    if ((((0x91L ^ (((safe_mul_func_int8_t_s_s((l_102 , p_1204->g_74), ((safe_mul_func_uint16_t_u_u(0xAA4DL, (((*l_73) &= (&p_1204->g_96 == (p_1204->g_106 = &p_1204->g_96))) >= (safe_div_func_int16_t_s_s((((((void*)0 != &p_1204->g_96) && (((safe_mul_func_int8_t_s_s((p_68 == &p_1204->g_74), 0xE0L)) > p_1204->g_45.y) , p_1204->g_94)) == p_1204->g_92) | p_1204->g_98), (-2L)))))) || l_111))) == p_1204->g_99[1]) && p_1204->g_7)) < p_1204->g_86) , 1L))
    { /* block id: 22 */
        int32_t *l_121 = &p_1204->g_64;
        uint16_t *l_139 = &p_1204->g_94;
        VECTOR(int16_t, 16) l_144 = (VECTOR(int16_t, 16))(0x33F8L, (VECTOR(int16_t, 4))(0x33F8L, (VECTOR(int16_t, 2))(0x33F8L, 0x61F0L), 0x61F0L), 0x61F0L, 0x33F8L, 0x61F0L, (VECTOR(int16_t, 2))(0x33F8L, 0x61F0L), (VECTOR(int16_t, 2))(0x33F8L, 0x61F0L), 0x33F8L, 0x61F0L, 0x33F8L, 0x61F0L);
        int32_t l_147 = 0x4559AEF2L;
        uint64_t *l_155 = (void*)0;
        int8_t *l_156 = (void*)0;
        int8_t *l_157[9][5] = {{&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74},{&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74},{&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74},{&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74},{&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74},{&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74},{&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74},{&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74},{&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74,&p_1204->g_74}};
        int i, j;
        for (l_102 = (-11); (l_102 != 25); l_102++)
        { /* block id: 25 */
            return &p_1204->g_64;
        }
        for (l_111 = 0; (l_111 != (-5)); l_111--)
        { /* block id: 30 */
            if (p_1204->g_7)
                break;
            p_67 = &p_1204->g_64;
            if ((safe_rshift_func_uint8_t_u_s((safe_mul_func_uint8_t_u_u((safe_unary_minus_func_int32_t_s((-1L))), GROUP_DIVERGE(1, 1))), 7)))
            { /* block id: 33 */
                return p_67;
            }
            else
            { /* block id: 35 */
                int16_t l_137 = 0x0E4FL;
                l_121 = l_121;
                (*l_73) = (-5L);
                for (p_1204->g_92 = 5; (p_1204->g_92 < 14); p_1204->g_92 = safe_add_func_uint64_t_u_u(p_1204->g_92, 1))
                { /* block id: 40 */
                    uint16_t l_130 = 0x7F6BL;
                    uint32_t l_131 = 7UL;
                    int32_t l_132 = 0L;
                    l_132 &= (safe_sub_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s((((p_1204->g_74 & 1L) & (((*l_121) >= (*l_121)) <= (0x98L <= 248UL))) != 65535UL), 4)), (safe_sub_func_int8_t_s_s(((*l_121) == (p_1204->g_99[6] , l_130)), l_131))));
                    if (p_1204->g_74)
                    { /* block id: 42 */
                        p_1204->g_133 = l_121;
                    }
                    else
                    { /* block id: 44 */
                        union U0 *l_136 = &p_1204->g_135;
                        if ((*p_67))
                            break;
                        l_136 = l_134;
                        (*l_121) = (*p_67);
                        l_137 |= (*p_1204->g_133);
                    }
                }
            }
        }
        (*l_121) = ((((*l_139) = ((18446744073709551610UL & p_1204->g_96) < ((*l_97) = (safe_unary_minus_func_uint32_t_u(GROUP_DIVERGE(0, 1)))))) , ((*p_67) , (l_140 ^= (*l_121)))) ^ ((safe_div_func_int16_t_s_s((*p_1204->g_106), ((*l_121) , p_1204->g_88))) <= ((p_1204->g_24.y >= ((VECTOR(int8_t, 4))(0x6CL, ((VECTOR(int8_t, 2))(p_1204->g_143.ww)).odd, 0L, (-10L))).y) , ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_144.sd97da6e2)).even)).zwyyxyxw)), 6L, ((((safe_div_func_uint64_t_u_u((l_147 = FAKE_DIVERGE(p_1204->group_2_offset, get_group_id(2), 10)), (safe_mod_func_int8_t_s_s(p_1204->g_99[6], 0x43L)))) ^ p_1204->g_7) ^ FAKE_DIVERGE(p_1204->local_1_offset, get_local_id(1), 10)) | 2L), ((VECTOR(int16_t, 4))(0x7DE9L)), 1L, (-1L))).sa)));
        l_147 &= (p_1204->g_159 |= (l_158[2] ^= (((((*l_121) ^ (safe_sub_func_uint16_t_u_u(p_1204->g_99[6], (safe_lshift_func_uint16_t_u_s(((((*l_121) ^ (0x68EAL == ((0x93L == ((l_154 >= (+(p_1204->g_74 &= (&p_67 == ((l_155 == (void*)0) , (void*)0))))) ^ 0x16A62810L)) ^ (*l_121)))) | (*p_1204->g_133)) | (*l_121)), (*p_1204->g_106)))))) || (*l_121)) , 1UL) < 65535UL)));
    }
    else
    { /* block id: 62 */
        (*p_1204->g_133) = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))((-4L), 2L)))), 0x6863B5C2L, 0x5A1FB4F7L)).odd, ((VECTOR(int32_t, 16))(p_1204->g_160.s396262b8e9e02a2b)).s83))).xxxyxyyx)).s5;
    }
    return p_67;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_1205;
    struct S2* p_1204 = &c_1205;
    struct S2 c_1206 = {
        0x1AL, // p_1204->g_7
        (VECTOR(uint32_t, 4))(0xB4B26D8FL, (VECTOR(uint32_t, 2))(0xB4B26D8FL, 4294967295UL), 4294967295UL), // p_1204->g_24
        (VECTOR(int8_t, 2))(6L, 0x47L), // p_1204->g_45
        0L, // p_1204->g_64
        0x06L, // p_1204->g_74
        1L, // p_1204->g_86
        0x8FC8FA0D6341D34DL, // p_1204->g_88
        1UL, // p_1204->g_92
        0x84ABL, // p_1204->g_94
        1L, // p_1204->g_96
        0x886BE4B2277CB2DEL, // p_1204->g_98
        {0L,0x598D8379L,0L,0L,0x598D8379L,0L,0L,0x598D8379L,0L,0L}, // p_1204->g_99
        &p_1204->g_96, // p_1204->g_106
        &p_1204->g_64, // p_1204->g_133
        {1UL}, // p_1204->g_135
        (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 0x3CL), 0x3CL), // p_1204->g_143
        1L, // p_1204->g_159
        (VECTOR(int32_t, 16))(0x59717F0BL, (VECTOR(int32_t, 4))(0x59717F0BL, (VECTOR(int32_t, 2))(0x59717F0BL, 0x1119F7A4L), 0x1119F7A4L), 0x1119F7A4L, 0x59717F0BL, 0x1119F7A4L, (VECTOR(int32_t, 2))(0x59717F0BL, 0x1119F7A4L), (VECTOR(int32_t, 2))(0x59717F0BL, 0x1119F7A4L), 0x59717F0BL, 0x1119F7A4L, 0x59717F0BL, 0x1119F7A4L), // p_1204->g_160
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1204->g_161
        0x41D09C81770C5B0BL, // p_1204->g_172
        {{{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)}},{{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)}},{{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)}},{{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)}},{{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)}},{{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)}},{{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)}},{{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)}},{{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)},{0L,(-2L),(-2L)}}}, // p_1204->g_174
        (VECTOR(uint64_t, 4))(18446744073709551613UL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 0xC9C83B8C2FFF6BB7L), 0xC9C83B8C2FFF6BB7L), // p_1204->g_201
        (VECTOR(int16_t, 2))(0x331BL, 0x032EL), // p_1204->g_212
        &p_1204->g_88, // p_1204->g_224
        &p_1204->g_224, // p_1204->g_223
        &p_1204->g_223, // p_1204->g_222
        (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0x5505L), 0x5505L), // p_1204->g_246
        (VECTOR(int32_t, 2))(9L, 0x362D3828L), // p_1204->g_267
        (VECTOR(int8_t, 2))((-9L), 0x2DL), // p_1204->g_271
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L)), // p_1204->g_273
        {0x83L}, // p_1204->g_280
        (-1L), // p_1204->g_285
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L), // p_1204->g_297
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-8L)), (-8L)), (-8L), 1L, (-8L)), // p_1204->g_299
        {{{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)}},{{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)}}}, // p_1204->g_313
        {0L,0L,0L,0L,0L,0L}, // p_1204->g_318
        (-1L), // p_1204->g_319
        (-6L), // p_1204->g_321
        1UL, // p_1204->g_324
        &p_1204->g_135.f0, // p_1204->g_355
        &p_1204->g_355, // p_1204->g_354
        {0L}, // p_1204->g_393
        (VECTOR(uint32_t, 16))(3UL, (VECTOR(uint32_t, 4))(3UL, (VECTOR(uint32_t, 2))(3UL, 0x07B805DFL), 0x07B805DFL), 0x07B805DFL, 3UL, 0x07B805DFL, (VECTOR(uint32_t, 2))(3UL, 0x07B805DFL), (VECTOR(uint32_t, 2))(3UL, 0x07B805DFL), 3UL, 0x07B805DFL, 3UL, 0x07B805DFL), // p_1204->g_404
        (void*)0, // p_1204->g_412
        {&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223}, // p_1204->g_413
        (void*)0, // p_1204->g_414
        &p_1204->g_223, // p_1204->g_415
        {-4L}, // p_1204->g_450
        1UL, // p_1204->g_478
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-9L)), (-9L)), (-9L), 0L, (-9L), (VECTOR(int8_t, 2))(0L, (-9L)), (VECTOR(int8_t, 2))(0L, (-9L)), 0L, (-9L), 0L, (-9L)), // p_1204->g_500
        (VECTOR(int8_t, 4))(0x2FL, (VECTOR(int8_t, 2))(0x2FL, 0x25L), 0x25L), // p_1204->g_502
        (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 250UL), 250UL), 250UL, 1UL, 250UL), // p_1204->g_535
        (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x6BC3FE0A5BC04C2CL), 0x6BC3FE0A5BC04C2CL), // p_1204->g_561
        (void*)0, // p_1204->g_582
        (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 6UL), 6UL), 6UL, 1UL, 6UL), // p_1204->g_618
        (-1L), // p_1204->g_623
        {&p_1204->g_223,&p_1204->g_223,&p_1204->g_223,&p_1204->g_223}, // p_1204->g_642
        &p_1204->g_280, // p_1204->g_655
        &p_1204->g_655, // p_1204->g_654
        4294967295UL, // p_1204->g_663
        (VECTOR(int16_t, 8))(0x6A91L, (VECTOR(int16_t, 4))(0x6A91L, (VECTOR(int16_t, 2))(0x6A91L, 0x1C02L), 0x1C02L), 0x1C02L, 0x6A91L, 0x1C02L), // p_1204->g_675
        (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, 0x14BEL), 0x14BEL), // p_1204->g_695
        (VECTOR(int16_t, 16))(0x31EDL, (VECTOR(int16_t, 4))(0x31EDL, (VECTOR(int16_t, 2))(0x31EDL, 1L), 1L), 1L, 0x31EDL, 1L, (VECTOR(int16_t, 2))(0x31EDL, 1L), (VECTOR(int16_t, 2))(0x31EDL, 1L), 0x31EDL, 1L, 0x31EDL, 1L), // p_1204->g_717
        {0x609FBBC9D3A8D80AL}, // p_1204->g_792
        (void*)0, // p_1204->g_796
        &p_1204->g_796, // p_1204->g_795
        0x025A8B9CL, // p_1204->g_805
        {&p_1204->g_321,&p_1204->g_321,&p_1204->g_321,&p_1204->g_321,&p_1204->g_321,&p_1204->g_321,&p_1204->g_321}, // p_1204->g_816
        (VECTOR(uint8_t, 4))(0x53L, (VECTOR(uint8_t, 2))(0x53L, 1UL), 1UL), // p_1204->g_830
        &p_1204->g_450, // p_1204->g_843
        &p_1204->g_133, // p_1204->g_847
        {{(void*)0,&p_1204->g_816[4],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[4],(void*)0,&p_1204->g_816[4]},{(void*)0,&p_1204->g_816[4],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[4],(void*)0,&p_1204->g_816[4]},{(void*)0,&p_1204->g_816[4],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[4],(void*)0,&p_1204->g_816[4]},{(void*)0,&p_1204->g_816[4],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[4],(void*)0,&p_1204->g_816[4]},{(void*)0,&p_1204->g_816[4],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[4],(void*)0,&p_1204->g_816[4]},{(void*)0,&p_1204->g_816[4],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[4],(void*)0,&p_1204->g_816[4]},{(void*)0,&p_1204->g_816[4],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[4],(void*)0,&p_1204->g_816[4]},{(void*)0,&p_1204->g_816[4],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[4],(void*)0,&p_1204->g_816[4]},{(void*)0,&p_1204->g_816[4],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[3],&p_1204->g_816[4],&p_1204->g_816[4],(void*)0,&p_1204->g_816[4]}}, // p_1204->g_864
        &p_1204->g_816[4], // p_1204->g_866
        &p_1204->g_866, // p_1204->g_865
        &p_1204->g_795, // p_1204->g_880
        &p_1204->g_880, // p_1204->g_879
        (VECTOR(uint16_t, 4))(0xC7E7L, (VECTOR(uint16_t, 2))(0xC7E7L, 2UL), 2UL), // p_1204->g_942
        0L, // p_1204->g_977
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x58L), 0x58L), 0x58L, 0UL, 0x58L), // p_1204->g_984
        1UL, // p_1204->g_996
        (VECTOR(uint8_t, 16))(0x08L, (VECTOR(uint8_t, 4))(0x08L, (VECTOR(uint8_t, 2))(0x08L, 255UL), 255UL), 255UL, 0x08L, 255UL, (VECTOR(uint8_t, 2))(0x08L, 255UL), (VECTOR(uint8_t, 2))(0x08L, 255UL), 0x08L, 255UL, 0x08L, 255UL), // p_1204->g_1038
        (VECTOR(uint8_t, 2))(3UL, 1UL), // p_1204->g_1039
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x62L), 0x62L), // p_1204->g_1041
        &p_1204->g_133, // p_1204->g_1051
        (VECTOR(uint16_t, 2))(0xDA30L, 0x476CL), // p_1204->g_1057
        (VECTOR(uint8_t, 2))(0x79L, 0xE0L), // p_1204->g_1068
        {0x2AL}, // p_1204->g_1077
        {0L}, // p_1204->g_1091
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-5L)), (-5L)), (-5L), 1L, (-5L)), // p_1204->g_1126
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x5EL), 0x5EL), // p_1204->g_1127
        {0x2BL}, // p_1204->g_1136
        (VECTOR(uint8_t, 8))(0xF7L, (VECTOR(uint8_t, 4))(0xF7L, (VECTOR(uint8_t, 2))(0xF7L, 1UL), 1UL), 1UL, 0xF7L, 1UL), // p_1204->g_1174
        (VECTOR(uint64_t, 8))(0x372003EE875235AEL, (VECTOR(uint64_t, 4))(0x372003EE875235AEL, (VECTOR(uint64_t, 2))(0x372003EE875235AEL, 0x760DA4EFD6AF355FL), 0x760DA4EFD6AF355FL), 0x760DA4EFD6AF355FL, 0x372003EE875235AEL, 0x760DA4EFD6AF355FL), // p_1204->g_1175
        {{&p_1204->g_106,&p_1204->g_106,&p_1204->g_106,&p_1204->g_106,&p_1204->g_106,&p_1204->g_106,&p_1204->g_106,&p_1204->g_106},{&p_1204->g_106,&p_1204->g_106,&p_1204->g_106,&p_1204->g_106,&p_1204->g_106,&p_1204->g_106,&p_1204->g_106,&p_1204->g_106},{&p_1204->g_106,&p_1204->g_106,&p_1204->g_106,&p_1204->g_106,&p_1204->g_106,&p_1204->g_106,&p_1204->g_106,&p_1204->g_106}}, // p_1204->g_1182
        {{{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]}},{{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]}},{{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]}},{{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]}},{{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]}},{{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]}},{{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]}},{{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]}},{{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]},{(void*)0,&p_1204->g_174[4][6][0],(void*)0,&p_1204->g_174[4][6][0]}}}, // p_1204->g_1202
        sequence_input[get_global_id(0)], // p_1204->global_0_offset
        sequence_input[get_global_id(1)], // p_1204->global_1_offset
        sequence_input[get_global_id(2)], // p_1204->global_2_offset
        sequence_input[get_local_id(0)], // p_1204->local_0_offset
        sequence_input[get_local_id(1)], // p_1204->local_1_offset
        sequence_input[get_local_id(2)], // p_1204->local_2_offset
        sequence_input[get_group_id(0)], // p_1204->group_0_offset
        sequence_input[get_group_id(1)], // p_1204->group_1_offset
        sequence_input[get_group_id(2)], // p_1204->group_2_offset
    };
    c_1205 = c_1206;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1204);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1204->g_7, "p_1204->g_7", print_hash_value);
    transparent_crc(p_1204->g_24.x, "p_1204->g_24.x", print_hash_value);
    transparent_crc(p_1204->g_24.y, "p_1204->g_24.y", print_hash_value);
    transparent_crc(p_1204->g_24.z, "p_1204->g_24.z", print_hash_value);
    transparent_crc(p_1204->g_24.w, "p_1204->g_24.w", print_hash_value);
    transparent_crc(p_1204->g_45.x, "p_1204->g_45.x", print_hash_value);
    transparent_crc(p_1204->g_45.y, "p_1204->g_45.y", print_hash_value);
    transparent_crc(p_1204->g_64, "p_1204->g_64", print_hash_value);
    transparent_crc(p_1204->g_74, "p_1204->g_74", print_hash_value);
    transparent_crc(p_1204->g_86, "p_1204->g_86", print_hash_value);
    transparent_crc(p_1204->g_88, "p_1204->g_88", print_hash_value);
    transparent_crc(p_1204->g_92, "p_1204->g_92", print_hash_value);
    transparent_crc(p_1204->g_94, "p_1204->g_94", print_hash_value);
    transparent_crc(p_1204->g_96, "p_1204->g_96", print_hash_value);
    transparent_crc(p_1204->g_98, "p_1204->g_98", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1204->g_99[i], "p_1204->g_99[i]", print_hash_value);

    }
    transparent_crc(p_1204->g_135.f0, "p_1204->g_135.f0", print_hash_value);
    transparent_crc(p_1204->g_143.x, "p_1204->g_143.x", print_hash_value);
    transparent_crc(p_1204->g_143.y, "p_1204->g_143.y", print_hash_value);
    transparent_crc(p_1204->g_143.z, "p_1204->g_143.z", print_hash_value);
    transparent_crc(p_1204->g_143.w, "p_1204->g_143.w", print_hash_value);
    transparent_crc(p_1204->g_159, "p_1204->g_159", print_hash_value);
    transparent_crc(p_1204->g_160.s0, "p_1204->g_160.s0", print_hash_value);
    transparent_crc(p_1204->g_160.s1, "p_1204->g_160.s1", print_hash_value);
    transparent_crc(p_1204->g_160.s2, "p_1204->g_160.s2", print_hash_value);
    transparent_crc(p_1204->g_160.s3, "p_1204->g_160.s3", print_hash_value);
    transparent_crc(p_1204->g_160.s4, "p_1204->g_160.s4", print_hash_value);
    transparent_crc(p_1204->g_160.s5, "p_1204->g_160.s5", print_hash_value);
    transparent_crc(p_1204->g_160.s6, "p_1204->g_160.s6", print_hash_value);
    transparent_crc(p_1204->g_160.s7, "p_1204->g_160.s7", print_hash_value);
    transparent_crc(p_1204->g_160.s8, "p_1204->g_160.s8", print_hash_value);
    transparent_crc(p_1204->g_160.s9, "p_1204->g_160.s9", print_hash_value);
    transparent_crc(p_1204->g_160.sa, "p_1204->g_160.sa", print_hash_value);
    transparent_crc(p_1204->g_160.sb, "p_1204->g_160.sb", print_hash_value);
    transparent_crc(p_1204->g_160.sc, "p_1204->g_160.sc", print_hash_value);
    transparent_crc(p_1204->g_160.sd, "p_1204->g_160.sd", print_hash_value);
    transparent_crc(p_1204->g_160.se, "p_1204->g_160.se", print_hash_value);
    transparent_crc(p_1204->g_160.sf, "p_1204->g_160.sf", print_hash_value);
    transparent_crc(p_1204->g_172, "p_1204->g_172", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1204->g_174[i][j][k], "p_1204->g_174[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1204->g_201.x, "p_1204->g_201.x", print_hash_value);
    transparent_crc(p_1204->g_201.y, "p_1204->g_201.y", print_hash_value);
    transparent_crc(p_1204->g_201.z, "p_1204->g_201.z", print_hash_value);
    transparent_crc(p_1204->g_201.w, "p_1204->g_201.w", print_hash_value);
    transparent_crc(p_1204->g_212.x, "p_1204->g_212.x", print_hash_value);
    transparent_crc(p_1204->g_212.y, "p_1204->g_212.y", print_hash_value);
    transparent_crc(p_1204->g_246.x, "p_1204->g_246.x", print_hash_value);
    transparent_crc(p_1204->g_246.y, "p_1204->g_246.y", print_hash_value);
    transparent_crc(p_1204->g_246.z, "p_1204->g_246.z", print_hash_value);
    transparent_crc(p_1204->g_246.w, "p_1204->g_246.w", print_hash_value);
    transparent_crc(p_1204->g_267.x, "p_1204->g_267.x", print_hash_value);
    transparent_crc(p_1204->g_267.y, "p_1204->g_267.y", print_hash_value);
    transparent_crc(p_1204->g_271.x, "p_1204->g_271.x", print_hash_value);
    transparent_crc(p_1204->g_271.y, "p_1204->g_271.y", print_hash_value);
    transparent_crc(p_1204->g_273.s0, "p_1204->g_273.s0", print_hash_value);
    transparent_crc(p_1204->g_273.s1, "p_1204->g_273.s1", print_hash_value);
    transparent_crc(p_1204->g_273.s2, "p_1204->g_273.s2", print_hash_value);
    transparent_crc(p_1204->g_273.s3, "p_1204->g_273.s3", print_hash_value);
    transparent_crc(p_1204->g_273.s4, "p_1204->g_273.s4", print_hash_value);
    transparent_crc(p_1204->g_273.s5, "p_1204->g_273.s5", print_hash_value);
    transparent_crc(p_1204->g_273.s6, "p_1204->g_273.s6", print_hash_value);
    transparent_crc(p_1204->g_273.s7, "p_1204->g_273.s7", print_hash_value);
    transparent_crc(p_1204->g_280.f0, "p_1204->g_280.f0", print_hash_value);
    transparent_crc(p_1204->g_285, "p_1204->g_285", print_hash_value);
    transparent_crc(p_1204->g_297.s0, "p_1204->g_297.s0", print_hash_value);
    transparent_crc(p_1204->g_297.s1, "p_1204->g_297.s1", print_hash_value);
    transparent_crc(p_1204->g_297.s2, "p_1204->g_297.s2", print_hash_value);
    transparent_crc(p_1204->g_297.s3, "p_1204->g_297.s3", print_hash_value);
    transparent_crc(p_1204->g_297.s4, "p_1204->g_297.s4", print_hash_value);
    transparent_crc(p_1204->g_297.s5, "p_1204->g_297.s5", print_hash_value);
    transparent_crc(p_1204->g_297.s6, "p_1204->g_297.s6", print_hash_value);
    transparent_crc(p_1204->g_297.s7, "p_1204->g_297.s7", print_hash_value);
    transparent_crc(p_1204->g_299.s0, "p_1204->g_299.s0", print_hash_value);
    transparent_crc(p_1204->g_299.s1, "p_1204->g_299.s1", print_hash_value);
    transparent_crc(p_1204->g_299.s2, "p_1204->g_299.s2", print_hash_value);
    transparent_crc(p_1204->g_299.s3, "p_1204->g_299.s3", print_hash_value);
    transparent_crc(p_1204->g_299.s4, "p_1204->g_299.s4", print_hash_value);
    transparent_crc(p_1204->g_299.s5, "p_1204->g_299.s5", print_hash_value);
    transparent_crc(p_1204->g_299.s6, "p_1204->g_299.s6", print_hash_value);
    transparent_crc(p_1204->g_299.s7, "p_1204->g_299.s7", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1204->g_313[i][j][k], "p_1204->g_313[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1204->g_318[i], "p_1204->g_318[i]", print_hash_value);

    }
    transparent_crc(p_1204->g_319, "p_1204->g_319", print_hash_value);
    transparent_crc(p_1204->g_321, "p_1204->g_321", print_hash_value);
    transparent_crc(p_1204->g_324, "p_1204->g_324", print_hash_value);
    transparent_crc(p_1204->g_393.f0, "p_1204->g_393.f0", print_hash_value);
    transparent_crc(p_1204->g_404.s0, "p_1204->g_404.s0", print_hash_value);
    transparent_crc(p_1204->g_404.s1, "p_1204->g_404.s1", print_hash_value);
    transparent_crc(p_1204->g_404.s2, "p_1204->g_404.s2", print_hash_value);
    transparent_crc(p_1204->g_404.s3, "p_1204->g_404.s3", print_hash_value);
    transparent_crc(p_1204->g_404.s4, "p_1204->g_404.s4", print_hash_value);
    transparent_crc(p_1204->g_404.s5, "p_1204->g_404.s5", print_hash_value);
    transparent_crc(p_1204->g_404.s6, "p_1204->g_404.s6", print_hash_value);
    transparent_crc(p_1204->g_404.s7, "p_1204->g_404.s7", print_hash_value);
    transparent_crc(p_1204->g_404.s8, "p_1204->g_404.s8", print_hash_value);
    transparent_crc(p_1204->g_404.s9, "p_1204->g_404.s9", print_hash_value);
    transparent_crc(p_1204->g_404.sa, "p_1204->g_404.sa", print_hash_value);
    transparent_crc(p_1204->g_404.sb, "p_1204->g_404.sb", print_hash_value);
    transparent_crc(p_1204->g_404.sc, "p_1204->g_404.sc", print_hash_value);
    transparent_crc(p_1204->g_404.sd, "p_1204->g_404.sd", print_hash_value);
    transparent_crc(p_1204->g_404.se, "p_1204->g_404.se", print_hash_value);
    transparent_crc(p_1204->g_404.sf, "p_1204->g_404.sf", print_hash_value);
    transparent_crc(p_1204->g_450.f0, "p_1204->g_450.f0", print_hash_value);
    transparent_crc(p_1204->g_478, "p_1204->g_478", print_hash_value);
    transparent_crc(p_1204->g_500.s0, "p_1204->g_500.s0", print_hash_value);
    transparent_crc(p_1204->g_500.s1, "p_1204->g_500.s1", print_hash_value);
    transparent_crc(p_1204->g_500.s2, "p_1204->g_500.s2", print_hash_value);
    transparent_crc(p_1204->g_500.s3, "p_1204->g_500.s3", print_hash_value);
    transparent_crc(p_1204->g_500.s4, "p_1204->g_500.s4", print_hash_value);
    transparent_crc(p_1204->g_500.s5, "p_1204->g_500.s5", print_hash_value);
    transparent_crc(p_1204->g_500.s6, "p_1204->g_500.s6", print_hash_value);
    transparent_crc(p_1204->g_500.s7, "p_1204->g_500.s7", print_hash_value);
    transparent_crc(p_1204->g_500.s8, "p_1204->g_500.s8", print_hash_value);
    transparent_crc(p_1204->g_500.s9, "p_1204->g_500.s9", print_hash_value);
    transparent_crc(p_1204->g_500.sa, "p_1204->g_500.sa", print_hash_value);
    transparent_crc(p_1204->g_500.sb, "p_1204->g_500.sb", print_hash_value);
    transparent_crc(p_1204->g_500.sc, "p_1204->g_500.sc", print_hash_value);
    transparent_crc(p_1204->g_500.sd, "p_1204->g_500.sd", print_hash_value);
    transparent_crc(p_1204->g_500.se, "p_1204->g_500.se", print_hash_value);
    transparent_crc(p_1204->g_500.sf, "p_1204->g_500.sf", print_hash_value);
    transparent_crc(p_1204->g_502.x, "p_1204->g_502.x", print_hash_value);
    transparent_crc(p_1204->g_502.y, "p_1204->g_502.y", print_hash_value);
    transparent_crc(p_1204->g_502.z, "p_1204->g_502.z", print_hash_value);
    transparent_crc(p_1204->g_502.w, "p_1204->g_502.w", print_hash_value);
    transparent_crc(p_1204->g_535.s0, "p_1204->g_535.s0", print_hash_value);
    transparent_crc(p_1204->g_535.s1, "p_1204->g_535.s1", print_hash_value);
    transparent_crc(p_1204->g_535.s2, "p_1204->g_535.s2", print_hash_value);
    transparent_crc(p_1204->g_535.s3, "p_1204->g_535.s3", print_hash_value);
    transparent_crc(p_1204->g_535.s4, "p_1204->g_535.s4", print_hash_value);
    transparent_crc(p_1204->g_535.s5, "p_1204->g_535.s5", print_hash_value);
    transparent_crc(p_1204->g_535.s6, "p_1204->g_535.s6", print_hash_value);
    transparent_crc(p_1204->g_535.s7, "p_1204->g_535.s7", print_hash_value);
    transparent_crc(p_1204->g_561.x, "p_1204->g_561.x", print_hash_value);
    transparent_crc(p_1204->g_561.y, "p_1204->g_561.y", print_hash_value);
    transparent_crc(p_1204->g_561.z, "p_1204->g_561.z", print_hash_value);
    transparent_crc(p_1204->g_561.w, "p_1204->g_561.w", print_hash_value);
    transparent_crc(p_1204->g_618.s0, "p_1204->g_618.s0", print_hash_value);
    transparent_crc(p_1204->g_618.s1, "p_1204->g_618.s1", print_hash_value);
    transparent_crc(p_1204->g_618.s2, "p_1204->g_618.s2", print_hash_value);
    transparent_crc(p_1204->g_618.s3, "p_1204->g_618.s3", print_hash_value);
    transparent_crc(p_1204->g_618.s4, "p_1204->g_618.s4", print_hash_value);
    transparent_crc(p_1204->g_618.s5, "p_1204->g_618.s5", print_hash_value);
    transparent_crc(p_1204->g_618.s6, "p_1204->g_618.s6", print_hash_value);
    transparent_crc(p_1204->g_618.s7, "p_1204->g_618.s7", print_hash_value);
    transparent_crc(p_1204->g_623, "p_1204->g_623", print_hash_value);
    transparent_crc(p_1204->g_663, "p_1204->g_663", print_hash_value);
    transparent_crc(p_1204->g_675.s0, "p_1204->g_675.s0", print_hash_value);
    transparent_crc(p_1204->g_675.s1, "p_1204->g_675.s1", print_hash_value);
    transparent_crc(p_1204->g_675.s2, "p_1204->g_675.s2", print_hash_value);
    transparent_crc(p_1204->g_675.s3, "p_1204->g_675.s3", print_hash_value);
    transparent_crc(p_1204->g_675.s4, "p_1204->g_675.s4", print_hash_value);
    transparent_crc(p_1204->g_675.s5, "p_1204->g_675.s5", print_hash_value);
    transparent_crc(p_1204->g_675.s6, "p_1204->g_675.s6", print_hash_value);
    transparent_crc(p_1204->g_675.s7, "p_1204->g_675.s7", print_hash_value);
    transparent_crc(p_1204->g_695.x, "p_1204->g_695.x", print_hash_value);
    transparent_crc(p_1204->g_695.y, "p_1204->g_695.y", print_hash_value);
    transparent_crc(p_1204->g_695.z, "p_1204->g_695.z", print_hash_value);
    transparent_crc(p_1204->g_695.w, "p_1204->g_695.w", print_hash_value);
    transparent_crc(p_1204->g_717.s0, "p_1204->g_717.s0", print_hash_value);
    transparent_crc(p_1204->g_717.s1, "p_1204->g_717.s1", print_hash_value);
    transparent_crc(p_1204->g_717.s2, "p_1204->g_717.s2", print_hash_value);
    transparent_crc(p_1204->g_717.s3, "p_1204->g_717.s3", print_hash_value);
    transparent_crc(p_1204->g_717.s4, "p_1204->g_717.s4", print_hash_value);
    transparent_crc(p_1204->g_717.s5, "p_1204->g_717.s5", print_hash_value);
    transparent_crc(p_1204->g_717.s6, "p_1204->g_717.s6", print_hash_value);
    transparent_crc(p_1204->g_717.s7, "p_1204->g_717.s7", print_hash_value);
    transparent_crc(p_1204->g_717.s8, "p_1204->g_717.s8", print_hash_value);
    transparent_crc(p_1204->g_717.s9, "p_1204->g_717.s9", print_hash_value);
    transparent_crc(p_1204->g_717.sa, "p_1204->g_717.sa", print_hash_value);
    transparent_crc(p_1204->g_717.sb, "p_1204->g_717.sb", print_hash_value);
    transparent_crc(p_1204->g_717.sc, "p_1204->g_717.sc", print_hash_value);
    transparent_crc(p_1204->g_717.sd, "p_1204->g_717.sd", print_hash_value);
    transparent_crc(p_1204->g_717.se, "p_1204->g_717.se", print_hash_value);
    transparent_crc(p_1204->g_717.sf, "p_1204->g_717.sf", print_hash_value);
    transparent_crc(p_1204->g_792.f0, "p_1204->g_792.f0", print_hash_value);
    transparent_crc(p_1204->g_805, "p_1204->g_805", print_hash_value);
    transparent_crc(p_1204->g_830.x, "p_1204->g_830.x", print_hash_value);
    transparent_crc(p_1204->g_830.y, "p_1204->g_830.y", print_hash_value);
    transparent_crc(p_1204->g_830.z, "p_1204->g_830.z", print_hash_value);
    transparent_crc(p_1204->g_830.w, "p_1204->g_830.w", print_hash_value);
    transparent_crc(p_1204->g_942.x, "p_1204->g_942.x", print_hash_value);
    transparent_crc(p_1204->g_942.y, "p_1204->g_942.y", print_hash_value);
    transparent_crc(p_1204->g_942.z, "p_1204->g_942.z", print_hash_value);
    transparent_crc(p_1204->g_942.w, "p_1204->g_942.w", print_hash_value);
    transparent_crc(p_1204->g_977, "p_1204->g_977", print_hash_value);
    transparent_crc(p_1204->g_984.s0, "p_1204->g_984.s0", print_hash_value);
    transparent_crc(p_1204->g_984.s1, "p_1204->g_984.s1", print_hash_value);
    transparent_crc(p_1204->g_984.s2, "p_1204->g_984.s2", print_hash_value);
    transparent_crc(p_1204->g_984.s3, "p_1204->g_984.s3", print_hash_value);
    transparent_crc(p_1204->g_984.s4, "p_1204->g_984.s4", print_hash_value);
    transparent_crc(p_1204->g_984.s5, "p_1204->g_984.s5", print_hash_value);
    transparent_crc(p_1204->g_984.s6, "p_1204->g_984.s6", print_hash_value);
    transparent_crc(p_1204->g_984.s7, "p_1204->g_984.s7", print_hash_value);
    transparent_crc(p_1204->g_996, "p_1204->g_996", print_hash_value);
    transparent_crc(p_1204->g_1038.s0, "p_1204->g_1038.s0", print_hash_value);
    transparent_crc(p_1204->g_1038.s1, "p_1204->g_1038.s1", print_hash_value);
    transparent_crc(p_1204->g_1038.s2, "p_1204->g_1038.s2", print_hash_value);
    transparent_crc(p_1204->g_1038.s3, "p_1204->g_1038.s3", print_hash_value);
    transparent_crc(p_1204->g_1038.s4, "p_1204->g_1038.s4", print_hash_value);
    transparent_crc(p_1204->g_1038.s5, "p_1204->g_1038.s5", print_hash_value);
    transparent_crc(p_1204->g_1038.s6, "p_1204->g_1038.s6", print_hash_value);
    transparent_crc(p_1204->g_1038.s7, "p_1204->g_1038.s7", print_hash_value);
    transparent_crc(p_1204->g_1038.s8, "p_1204->g_1038.s8", print_hash_value);
    transparent_crc(p_1204->g_1038.s9, "p_1204->g_1038.s9", print_hash_value);
    transparent_crc(p_1204->g_1038.sa, "p_1204->g_1038.sa", print_hash_value);
    transparent_crc(p_1204->g_1038.sb, "p_1204->g_1038.sb", print_hash_value);
    transparent_crc(p_1204->g_1038.sc, "p_1204->g_1038.sc", print_hash_value);
    transparent_crc(p_1204->g_1038.sd, "p_1204->g_1038.sd", print_hash_value);
    transparent_crc(p_1204->g_1038.se, "p_1204->g_1038.se", print_hash_value);
    transparent_crc(p_1204->g_1038.sf, "p_1204->g_1038.sf", print_hash_value);
    transparent_crc(p_1204->g_1039.x, "p_1204->g_1039.x", print_hash_value);
    transparent_crc(p_1204->g_1039.y, "p_1204->g_1039.y", print_hash_value);
    transparent_crc(p_1204->g_1041.x, "p_1204->g_1041.x", print_hash_value);
    transparent_crc(p_1204->g_1041.y, "p_1204->g_1041.y", print_hash_value);
    transparent_crc(p_1204->g_1041.z, "p_1204->g_1041.z", print_hash_value);
    transparent_crc(p_1204->g_1041.w, "p_1204->g_1041.w", print_hash_value);
    transparent_crc(p_1204->g_1057.x, "p_1204->g_1057.x", print_hash_value);
    transparent_crc(p_1204->g_1057.y, "p_1204->g_1057.y", print_hash_value);
    transparent_crc(p_1204->g_1068.x, "p_1204->g_1068.x", print_hash_value);
    transparent_crc(p_1204->g_1068.y, "p_1204->g_1068.y", print_hash_value);
    transparent_crc(p_1204->g_1077.f0, "p_1204->g_1077.f0", print_hash_value);
    transparent_crc(p_1204->g_1091.f0, "p_1204->g_1091.f0", print_hash_value);
    transparent_crc(p_1204->g_1126.s0, "p_1204->g_1126.s0", print_hash_value);
    transparent_crc(p_1204->g_1126.s1, "p_1204->g_1126.s1", print_hash_value);
    transparent_crc(p_1204->g_1126.s2, "p_1204->g_1126.s2", print_hash_value);
    transparent_crc(p_1204->g_1126.s3, "p_1204->g_1126.s3", print_hash_value);
    transparent_crc(p_1204->g_1126.s4, "p_1204->g_1126.s4", print_hash_value);
    transparent_crc(p_1204->g_1126.s5, "p_1204->g_1126.s5", print_hash_value);
    transparent_crc(p_1204->g_1126.s6, "p_1204->g_1126.s6", print_hash_value);
    transparent_crc(p_1204->g_1126.s7, "p_1204->g_1126.s7", print_hash_value);
    transparent_crc(p_1204->g_1127.x, "p_1204->g_1127.x", print_hash_value);
    transparent_crc(p_1204->g_1127.y, "p_1204->g_1127.y", print_hash_value);
    transparent_crc(p_1204->g_1127.z, "p_1204->g_1127.z", print_hash_value);
    transparent_crc(p_1204->g_1127.w, "p_1204->g_1127.w", print_hash_value);
    transparent_crc(p_1204->g_1136.f0, "p_1204->g_1136.f0", print_hash_value);
    transparent_crc(p_1204->g_1174.s0, "p_1204->g_1174.s0", print_hash_value);
    transparent_crc(p_1204->g_1174.s1, "p_1204->g_1174.s1", print_hash_value);
    transparent_crc(p_1204->g_1174.s2, "p_1204->g_1174.s2", print_hash_value);
    transparent_crc(p_1204->g_1174.s3, "p_1204->g_1174.s3", print_hash_value);
    transparent_crc(p_1204->g_1174.s4, "p_1204->g_1174.s4", print_hash_value);
    transparent_crc(p_1204->g_1174.s5, "p_1204->g_1174.s5", print_hash_value);
    transparent_crc(p_1204->g_1174.s6, "p_1204->g_1174.s6", print_hash_value);
    transparent_crc(p_1204->g_1174.s7, "p_1204->g_1174.s7", print_hash_value);
    transparent_crc(p_1204->g_1175.s0, "p_1204->g_1175.s0", print_hash_value);
    transparent_crc(p_1204->g_1175.s1, "p_1204->g_1175.s1", print_hash_value);
    transparent_crc(p_1204->g_1175.s2, "p_1204->g_1175.s2", print_hash_value);
    transparent_crc(p_1204->g_1175.s3, "p_1204->g_1175.s3", print_hash_value);
    transparent_crc(p_1204->g_1175.s4, "p_1204->g_1175.s4", print_hash_value);
    transparent_crc(p_1204->g_1175.s5, "p_1204->g_1175.s5", print_hash_value);
    transparent_crc(p_1204->g_1175.s6, "p_1204->g_1175.s6", print_hash_value);
    transparent_crc(p_1204->g_1175.s7, "p_1204->g_1175.s7", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
