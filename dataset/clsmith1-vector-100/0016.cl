// ---fake_divergence -g 39,73,3 -l 39,1,1
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


// Seed: 16

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int64_t  f0;
   volatile int64_t  f1;
   volatile uint64_t  f2;
};

union U1 {
   volatile int64_t  f0;
   volatile int64_t  f1;
   int32_t  f2;
};

union U2 {
   volatile int64_t  f0;
   int64_t  f1;
   uint32_t  f2;
   uint64_t  f3;
   int32_t  f4;
};

struct S3 {
    volatile int32_t g_2;
    int32_t g_3;
    int32_t g_7;
    uint16_t g_10;
    uint32_t g_21;
    VECTOR(int32_t, 2) g_22;
    volatile int64_t * volatile g_74;
    int8_t g_85;
    uint64_t g_95;
    int64_t g_105;
    uint8_t g_114[1][8];
    uint8_t g_122;
    uint32_t g_132;
    VECTOR(uint16_t, 8) g_146;
    int32_t * volatile g_174;
    int16_t g_182;
    int8_t g_194;
    volatile union U1 g_220;
    VECTOR(int8_t, 16) g_221;
    uint32_t g_238;
    int32_t * volatile g_240;
    volatile uint16_t g_246;
    int32_t * volatile g_269;
    int32_t g_272;
    uint8_t g_273;
    VECTOR(int64_t, 16) g_281;
    int8_t *g_306[1];
    uint8_t g_318[2];
    uint32_t g_328[3][9][3];
    VECTOR(uint64_t, 16) g_331;
    int64_t **g_375;
    int64_t *** volatile g_374;
    volatile union U2 g_403;
    int32_t g_404;
    volatile VECTOR(uint32_t, 4) g_409;
    uint32_t *g_455;
    VECTOR(int32_t, 16) g_474;
    VECTOR(uint32_t, 2) g_475;
    uint32_t g_489;
    VECTOR(uint64_t, 8) g_492;
    volatile VECTOR(uint8_t, 4) g_498;
    volatile VECTOR(uint8_t, 2) g_499;
    volatile union U2 g_502[4];
    uint32_t *g_503;
    int32_t g_505;
    union U1 g_510;
    union U1 *g_509;
    union U1 ** volatile g_508[6];
    union U1 ** volatile g_511;
    union U1 ** volatile g_512;
    volatile uint32_t g_535;
    volatile uint32_t *g_534;
    volatile VECTOR(int32_t, 2) g_558;
    VECTOR(int64_t, 4) g_559;
    VECTOR(int16_t, 8) g_567;
    volatile VECTOR(int16_t, 8) g_568;
    union U0 g_570;
    int32_t *g_580;
    VECTOR(uint8_t, 16) g_608;
    VECTOR(int64_t, 4) g_633;
    volatile VECTOR(int64_t, 8) g_634;
    volatile VECTOR(uint8_t, 4) g_635;
    uint32_t g_652;
    volatile VECTOR(int8_t, 8) g_666;
    union U2 g_692;
    volatile VECTOR(int32_t, 16) g_694;
    volatile union U1 g_699[2][4][1];
    VECTOR(uint8_t, 8) g_748;
    uint64_t *g_756;
    uint64_t **g_755;
    uint64_t *** volatile g_754;
    union U1 **g_765;
    union U1 *** volatile g_764;
    union U0 g_769;
    int32_t ** volatile g_780[5][1];
    volatile VECTOR(int8_t, 2) g_811;
    int16_t g_842;
    VECTOR(int64_t, 4) g_866;
    volatile VECTOR(int32_t, 4) g_886;
    uint32_t **g_892;
    VECTOR(int32_t, 4) g_895;
    union U0 g_896;
    VECTOR(int32_t, 8) g_897;
    volatile VECTOR(int32_t, 16) g_899;
    VECTOR(uint64_t, 16) g_901;
    volatile VECTOR(int64_t, 4) g_912;
    volatile VECTOR(int64_t, 4) g_914;
    volatile VECTOR(int64_t, 4) g_917;
    union U2 *g_944;
    VECTOR(int8_t, 2) g_962;
    VECTOR(int16_t, 4) g_1013;
    VECTOR(int16_t, 2) g_1020;
    volatile VECTOR(int16_t, 8) g_1021;
    union U2 g_1061;
    VECTOR(uint16_t, 2) g_1071;
    volatile VECTOR(uint16_t, 4) g_1074;
    int8_t g_1078;
    VECTOR(int16_t, 4) g_1079;
    volatile VECTOR(int8_t, 4) g_1080;
    VECTOR(uint8_t, 4) g_1081;
    int32_t g_1101[8];
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
uint32_t  func_1(struct S3 * p_1107);
int16_t  func_25(int8_t  p_26, int32_t  p_27, int16_t  p_28, int32_t  p_29, int32_t  p_30, struct S3 * p_1107);
int32_t  func_31(int32_t * p_32, uint8_t  p_33, uint32_t  p_34, int64_t * p_35, int32_t * p_36, struct S3 * p_1107);
int32_t * func_37(int64_t * p_38, int64_t * p_39, int64_t * p_40, uint32_t  p_41, struct S3 * p_1107);
int64_t * func_42(int64_t * p_43, int32_t * p_44, uint32_t  p_45, struct S3 * p_1107);
int64_t * func_46(int32_t  p_47, int32_t * p_48, int8_t  p_49, int64_t * p_50, struct S3 * p_1107);
int16_t  func_58(int32_t  p_59, int64_t  p_60, int64_t  p_61, struct S3 * p_1107);
int64_t * func_66(int32_t  p_67, int32_t * p_68, struct S3 * p_1107);
int32_t * func_70(int64_t  p_71, uint64_t  p_72, int64_t * p_73, struct S3 * p_1107);
int32_t * func_98(int64_t * p_99, int8_t  p_100, uint32_t  p_101, int32_t * p_102, uint64_t  p_103, struct S3 * p_1107);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1107->g_3 p_1107->g_10 p_1107->g_1101 p_1107->g_892 p_1107->g_455 p_1107->g_238
 * writes: p_1107->g_3 p_1107->g_10 p_1107->g_21 p_1107->g_1101 p_1107->g_272
 */
uint32_t  func_1(struct S3 * p_1107)
{ /* block id: 4 */
    VECTOR(int64_t, 2) l_8 = (VECTOR(int64_t, 2))((-1L), 0L);
    int32_t l_9[10][7] = {{9L,9L,1L,(-1L),(-1L),(-1L),1L},{9L,9L,1L,(-1L),(-1L),(-1L),1L},{9L,9L,1L,(-1L),(-1L),(-1L),1L},{9L,9L,1L,(-1L),(-1L),(-1L),1L},{9L,9L,1L,(-1L),(-1L),(-1L),1L},{9L,9L,1L,(-1L),(-1L),(-1L),1L},{9L,9L,1L,(-1L),(-1L),(-1L),1L},{9L,9L,1L,(-1L),(-1L),(-1L),1L},{9L,9L,1L,(-1L),(-1L),(-1L),1L},{9L,9L,1L,(-1L),(-1L),(-1L),1L}};
    int64_t *l_205[4][5][2] = {{{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0}},{{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0}},{{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0}},{{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0},{&p_1107->g_105,(void*)0}}};
    int32_t **l_1105[2];
    int32_t *l_1106 = &p_1107->g_505;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1105[i] = &p_1107->g_580;
    for (p_1107->g_3 = 0; (p_1107->g_3 >= 14); p_1107->g_3 = safe_add_func_int32_t_s_s(p_1107->g_3, 1))
    { /* block id: 7 */
        int32_t *l_6[5];
        int64_t *l_17 = (void*)0;
        int64_t *l_18 = (void*)0;
        int64_t *l_19 = (void*)0;
        int64_t *l_20 = (void*)0;
        VECTOR(uint32_t, 4) l_23 = (VECTOR(uint32_t, 4))(0x01AFEC1EL, (VECTOR(uint32_t, 2))(0x01AFEC1EL, 0x3A099773L), 0x3A099773L);
        VECTOR(uint32_t, 4) l_24 = (VECTOR(uint32_t, 4))(0x2CD0AB83L, (VECTOR(uint32_t, 2))(0x2CD0AB83L, 4294967286UL), 4294967286UL);
        int32_t l_51 = 0x6B35ED35L;
        uint64_t l_69 = 1UL;
        int32_t **l_203 = (void*)0;
        int32_t **l_204 = &l_6[1];
        uint16_t l_249[10][2] = {{65535UL,65527UL},{65535UL,65527UL},{65535UL,65527UL},{65535UL,65527UL},{65535UL,65527UL},{65535UL,65527UL},{65535UL,65527UL},{65535UL,65527UL},{65535UL,65527UL},{65535UL,65527UL}};
        int8_t l_989[3];
        int32_t *l_1100 = &p_1107->g_1101[1];
        int i, j;
        for (i = 0; i < 5; i++)
            l_6[i] = &p_1107->g_7;
        for (i = 0; i < 3; i++)
            l_989[i] = (-1L);
        ++p_1107->g_10;
        (*l_1100) |= (safe_sub_func_uint32_t_u_u((safe_add_func_int64_t_s_s((p_1107->g_21 = (l_9[9][1] = l_9[9][1])), ((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_1107->g_22.xyxx)).wywzzwzwzzyzwxyw)).s93be, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(0xBB1BB30BL, ((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 4))(l_23.zzzz)).yywwywwxyzyxywxy, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(1UL, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(7UL, 4294967293UL, 4294967295UL, 0x8D1D9D65L)).even)), 0x6F77D900L)), ((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 2))(4294967295UL, 0x890F6DAEL)), ((VECTOR(uint32_t, 4))(p_1107->g_22.y, ((VECTOR(uint32_t, 2))(4294967295UL, 0UL)), 4294967294UL)).odd))), 0xB3F54C3DL, 4294967289UL)).s63)).xxyyyyxxyyxyyxxy, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(1UL, ((VECTOR(uint32_t, 8))(4294967295UL, ((void*)0 != &p_1107->g_2), ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(4294967288UL, 0UL)))), ((VECTOR(uint32_t, 4))(l_24.wyyw)))), 0xB95DFEA4L, 0x0C42EF39L, ((VECTOR(uint32_t, 2))(0xF85D55A9L, 6UL)), (((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(0x0BBEL, 0x206FL, 0x4374L, (-2L))).odd)).hi <= func_25(p_1107->g_10, func_31(((*l_204) = func_37(func_42(func_46(l_51, ((*l_204) = ((safe_mul_func_int16_t_s_s((safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (safe_rshift_func_int16_t_s_s(func_58((safe_mul_func_uint8_t_u_u(p_1107->g_10, (safe_mul_func_int8_t_s_s(((GROUP_DIVERGE(2, 1) , func_66(l_69, func_70(p_1107->g_22.y, p_1107->g_7, l_20, p_1107), p_1107)) != (void*)0), p_1107->g_146.s7)))), l_8.x, l_8.x, p_1107), p_1107->g_146.s1)))), p_1107->g_105)) , (void*)0)), l_8.y, l_205[3][3][0], p_1107), &p_1107->g_3, l_249[4][1], p_1107), p_1107->g_756, l_17, l_8.x, p_1107)), p_1107->g_331.s5, l_989[1], p_1107->g_756, &p_1107->g_3, p_1107), p_1107->g_748.s2, p_1107->g_331.sc, p_1107->g_22.x, p_1107)), 0x898B02EFL, 4294967292UL)).s66e7)).zwzzwzwzyyyyzwyy))).s6304))), 2UL, 0UL, 0x5B555288L)), ((VECTOR(uint32_t, 8))(4294967292UL)))).se2)).xyxx))).z)), l_8.x));
        for (p_1107->g_272 = 14; (p_1107->g_272 <= 21); p_1107->g_272 = safe_add_func_uint64_t_u_u(p_1107->g_272, 3))
        { /* block id: 446 */
            int32_t l_1104 = (-1L);
            l_1104 = ((void*)0 == &p_1107->g_652);
            (*l_204) = &l_9[4][5];
        }
    }
    l_1106 = &l_9[9][2];
    return (**p_1107->g_892);
}


/* ------------------------------------------ */
/* 
 * reads : p_1107->g_182 p_1107->g_221 p_1107->g_74 p_1107->g_7 p_1107->g_10 p_1107->g_85 p_1107->g_95 p_1107->g_756 p_1107->g_505 p_1107->g_892 p_1107->g_455 p_1107->g_238 p_1107->g_962 p_1107->g_914 p_1107->g_132 p_1107->g_1061 p_1107->g_1071 p_1107->g_1074 p_1107->g_1078 p_1107->g_1079 p_1107->g_1080 p_1107->g_1081 p_1107->g_105 p_1107->g_374 p_1107->g_375 p_1107->g_240 p_1107->g_842
 * writes: p_1107->g_842 p_1107->g_182 p_1107->g_7 p_1107->g_85 p_1107->g_95 p_1107->g_505 p_1107->g_132 p_1107->g_238
 */
int16_t  func_25(int8_t  p_26, int32_t  p_27, int16_t  p_28, int32_t  p_29, int32_t  p_30, struct S3 * p_1107)
{ /* block id: 410 */
    VECTOR(int32_t, 2) l_997 = (VECTOR(int32_t, 2))((-1L), 0x24A05150L);
    VECTOR(uint16_t, 2) l_1019 = (VECTOR(uint16_t, 2))(0xBA65L, 0x9A0AL);
    int32_t *l_1024 = &p_1107->g_7;
    VECTOR(uint16_t, 2) l_1070 = (VECTOR(uint16_t, 2))(0x4E11L, 0xD67EL);
    VECTOR(uint16_t, 4) l_1072 = (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 65530UL), 65530UL);
    VECTOR(uint32_t, 2) l_1084 = (VECTOR(uint32_t, 2))(4294967287UL, 4294967295UL);
    union U1 **l_1092 = (void*)0;
    uint8_t *l_1097 = (void*)0;
    int32_t **l_1098 = &p_1107->g_580;
    int32_t *l_1099[5][8][6] = {{{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7}},{{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7}},{{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7}},{{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7}},{{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7},{(void*)0,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_7}}};
    int i, j, k;
lbl_1029:
    for (p_1107->g_842 = 0; (p_1107->g_842 != 11); ++p_1107->g_842)
    { /* block id: 413 */
        uint8_t l_1000[8] = {1UL,251UL,1UL,1UL,251UL,1UL,1UL,251UL};
        VECTOR(int16_t, 8) l_1001 = (VECTOR(int16_t, 8))(9L, (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, 8L), 8L), 8L, 9L, 8L);
        VECTOR(uint16_t, 4) l_1002 = (VECTOR(uint16_t, 4))(0x079CL, (VECTOR(uint16_t, 2))(0x079CL, 1UL), 1UL);
        int32_t l_1003 = 0x3D954040L;
        VECTOR(int32_t, 8) l_1014 = (VECTOR(int32_t, 8))(0x4F44373CL, (VECTOR(int32_t, 4))(0x4F44373CL, (VECTOR(int32_t, 2))(0x4F44373CL, 0x058408BEL), 0x058408BEL), 0x058408BEL, 0x4F44373CL, 0x058408BEL);
        int32_t l_1015 = (-1L);
        int16_t *l_1016 = (void*)0;
        int16_t *l_1017 = (void*)0;
        int16_t *l_1018[9][3] = {{&p_1107->g_842,&p_1107->g_842,(void*)0},{&p_1107->g_842,&p_1107->g_842,(void*)0},{&p_1107->g_842,&p_1107->g_842,(void*)0},{&p_1107->g_842,&p_1107->g_842,(void*)0},{&p_1107->g_842,&p_1107->g_842,(void*)0},{&p_1107->g_842,&p_1107->g_842,(void*)0},{&p_1107->g_842,&p_1107->g_842,(void*)0},{&p_1107->g_842,&p_1107->g_842,(void*)0},{&p_1107->g_842,&p_1107->g_842,(void*)0}};
        int64_t *l_1022 = (void*)0;
        int32_t **l_1023[5][5] = {{&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580},{&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580},{&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580},{&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580},{&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580}};
        int i, j;
        l_1024 = func_70((l_1003 = (safe_add_func_int32_t_s_s(((VECTOR(int32_t, 16))(l_997.yyxyyyyyyxyxxyxx)).s6, ((p_26 | (safe_rshift_func_int16_t_s_s((l_1000[6] && (((VECTOR(int16_t, 16))(l_1001.s3525532165515135)).sc > l_997.y)), 7))) >= ((VECTOR(uint16_t, 2))(l_1002.wy)).lo)))), (safe_lshift_func_int16_t_s_u((((p_28 | 0x2C755905L) ^ (safe_mul_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s((safe_sub_func_uint16_t_u_u(l_1002.y, ((p_1107->g_182 &= (safe_unary_minus_func_int8_t_s((l_1015 = (l_1014.s7 = (((VECTOR(int16_t, 2))(9L, 0x1DCFL)).hi > ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(p_1107->g_1013.wyxxzxyxyyxxwxxy)))).sb)))))) > (((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 2))(0x2CB2L, 0x1DBCL)), ((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),VECTOR(uint16_t, 4),((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(l_1019.xyxxxyyxxxxxxxyy)).hi)).s76, ((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(p_1107->g_1020.yyyx)), 0x1B99L, ((VECTOR(int16_t, 2))(p_1107->g_1021.s77)), 0x1DE2L)).hi, ((VECTOR(int16_t, 16))(0x3B50L, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 4))(0x6F46L, p_1107->g_567.s7, 1L, 0x0CB8L)).xzwxzyzxyywzzzxz, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),int8_t,((VECTOR(int8_t, 2))(0L, 0x65L)).xxyxxxyxxyyxxxyy, (int8_t)p_30, (int8_t)(l_997.x >= 0x3098L)))).s67, ((VECTOR(uint8_t, 2))(0x88L))))).yyyx, ((VECTOR(int16_t, 4))(0x1B4BL))))).wwwwxwxwyyzzyyxx)), ((VECTOR(int16_t, 16))(0x2378L))))).even)), 0L, p_1107->g_666.s3, p_30, 0x629EL, ((VECTOR(int16_t, 2))(0x1DC1L)), 1L)).s703c))).odd))).xxxx, ((VECTOR(uint16_t, 4))(0xCCF4L)), ((VECTOR(uint16_t, 4))(0UL))))).even))), ((VECTOR(uint16_t, 8))(65528UL)), 0xF24DL, ((VECTOR(uint16_t, 2))(3UL)), l_1001.s3, 8UL, 1UL)).s24bf)))).w & p_1107->g_221.s0)))), 13)), l_1001.s1))) <= p_30), 0)), l_1022, p_1107);
        for (p_1107->g_95 = 12; (p_1107->g_95 < 48); p_1107->g_95 = safe_add_func_uint64_t_u_u(p_1107->g_95, 6))
        { /* block id: 421 */
            l_997.y = 0x1BA32AC2L;
        }
    }
    if ((18446744073709551615UL & (-6L)))
    { /* block id: 425 */
        uint32_t l_1056 = 0UL;
        uint8_t *l_1064[4][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        uint8_t *l_1067[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i, j;
        if ((safe_div_func_int64_t_s_s(p_27, (*p_1107->g_756))))
        { /* block id: 426 */
            int32_t *l_1030 = &p_1107->g_505;
            uint32_t *l_1043 = &p_1107->g_132;
            if (p_1107->g_182)
                goto lbl_1029;
            (*l_1030) ^= p_30;
            (*l_1030) = ((safe_div_func_int32_t_s_s(((safe_rshift_func_uint8_t_u_s((safe_add_func_uint8_t_u_u(1UL, ((**p_1107->g_892) , (safe_div_func_uint8_t_u_u(p_1107->g_962.y, 2UL))))), 7)) || (safe_lshift_func_int8_t_s_u(p_29, (safe_mod_func_uint8_t_u_u(p_1107->g_914.x, 0xF4L))))), ((*l_1043)++))) == (-1L));
        }
        else
        { /* block id: 431 */
            int32_t *l_1046 = (void*)0;
            int32_t *l_1047 = &p_1107->g_505;
            int32_t *l_1048 = &p_1107->g_7;
            int32_t *l_1049 = (void*)0;
            int32_t *l_1050 = &p_1107->g_505;
            int32_t l_1051 = 0x63C4E245L;
            int32_t *l_1052 = &p_1107->g_505;
            int32_t *l_1053 = &p_1107->g_692.f4;
            int32_t *l_1054 = &p_1107->g_692.f4;
            int32_t *l_1055[9];
            uint8_t **l_1065 = (void*)0;
            uint8_t **l_1066 = (void*)0;
            VECTOR(uint16_t, 8) l_1073 = (VECTOR(uint16_t, 8))(0x67FCL, (VECTOR(uint16_t, 4))(0x67FCL, (VECTOR(uint16_t, 2))(0x67FCL, 1UL), 1UL), 1UL, 0x67FCL, 1UL);
            int i;
            for (i = 0; i < 9; i++)
                l_1055[i] = &p_1107->g_692.f4;
            l_1056++;
            (*l_1048) = (safe_add_func_uint16_t_u_u((p_1107->g_1061 , ((+(safe_div_func_uint32_t_u_u((l_1064[2][4] == (l_1067[2] = l_1064[2][4])), (((((safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 8))(l_1070.yxyyyxxx)).s1343424672546173, ((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 8))(0x625BL, ((VECTOR(uint16_t, 2))(p_1107->g_1071.yx)), 0x55BAL, ((VECTOR(uint16_t, 2))(l_1072.xy)), 3UL, 65529UL)), ((VECTOR(uint16_t, 4))(l_1073.s1336)).ywwwzxww))), ((VECTOR(uint16_t, 8))(p_1107->g_1074.zywwwzxy))))).s75))))).yyxxyxxx)).lo, (uint16_t)(safe_rshift_func_uint16_t_u_s((safe_unary_minus_func_int16_t_s(p_27)), ((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))((p_1107->g_1078 < p_26), (-1L), 0x3B95L, 0x3538L)).yzyzyxzy)).s1423004073330701, ((VECTOR(int16_t, 4))(0L, p_27, (-8L), 0x3EBEL)).yzxyzzzxwxxzxyyw))).sb8e2, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_1107->g_1079.zx)).yxxx)), ((VECTOR(int16_t, 4))(0x1507L, ((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(p_1107->g_1080.zyzx)))).zzyywwzw, (int8_t)0x77L))).s57, ((VECTOR(uint8_t, 4))(p_1107->g_1081.wxwz)).odd))), 9L))))).w))))).wwywwzwyxwwzzzyw, ((VECTOR(uint16_t, 8))(0UL, 0x60ECL, 1UL, 0xD639L, p_1107->g_105, 0xEF07L, 0UL, 0x2E4EL)).s7576437217770671))).even, ((VECTOR(uint16_t, 8))(0xED64L)), ((VECTOR(uint16_t, 8))(0x022FL))))).s0, p_27)) && (*p_1107->g_455)) || l_1056) ^ GROUP_DIVERGE(0, 1)) & 0x436DE957L)))) >= p_1107->g_1071.y)), p_29));
        }
        return p_29;
    }
    else
    { /* block id: 437 */
        int32_t l_1085 = (-2L);
        int64_t *l_1086 = (void*)0;
        int32_t **l_1087 = &l_1024;
        (*l_1087) = func_70((~0x5DF035905434C9B0L), (safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(0x512BFAC7L, ((VECTOR(uint32_t, 2))(0x09899087L, 0x2E9507FFL)), ((**p_1107->g_892) |= ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(l_1084.yy)))).odd), 7UL, GROUP_DIVERGE(1, 1), 0x1FA55EA0L, 4294967287UL)).s5, l_1085)), l_1086, p_1107);
    }
    (*p_1107->g_240) = ((safe_lshift_func_int16_t_s_u((((safe_div_func_uint64_t_u_u(((((void*)0 != l_1092) & (safe_mul_func_uint8_t_u_u((((safe_add_func_int64_t_s_s(0x67DF5163301AE136L, (&p_1107->g_318[1] == l_1097))) | ((l_1098 != (void*)0) && (0x4DCEC964L && (&l_1097 != &l_1097)))) && 0x77C67FF7L), p_29))) == p_30), p_30)) , (*p_1107->g_374)) != (void*)0), 1)) && 0x8D18A239L);
    return p_27;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_31(int32_t * p_32, uint8_t  p_33, uint32_t  p_34, int64_t * p_35, int32_t * p_36, struct S3 * p_1107)
{ /* block id: 406 */
    int32_t *l_990[10] = {&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7,&p_1107->g_505,&p_1107->g_7,&p_1107->g_7};
    uint64_t l_991[9];
    int32_t **l_992 = &l_990[0];
    int i;
    for (i = 0; i < 9; i++)
        l_991[i] = 1UL;
    l_991[3] &= (-9L);
    (*l_992) = (void*)0;
    return p_33;
}


/* ------------------------------------------ */
/* 
 * reads : p_1107->g_580 p_1107->g_769 p_1107->g_764 p_1107->g_765 p_1107->g_74 p_1107->g_7 p_1107->g_10 p_1107->g_85 p_1107->g_95 p_1107->g_455 p_1107->g_238 p_1107->g_269 p_1107->g_499 p_1107->g_328 p_1107->g_509 p_1107->g_842 p_1107->g_633 p_1107->g_331 p_1107->g_534 p_1107->g_535 p_1107->g_505 p_1107->g_492 p_1107->g_866 p_1107->g_886 p_1107->g_895 p_1107->g_896 p_1107->g_897 p_1107->g_899 p_1107->g_901 p_1107->g_114 p_1107->g_652 p_1107->g_962 p_1107->g_122 p_1107->g_132 p_1107->g_3 p_1107->g_2 p_1107->g_146 p_1107->g_489 p_1107->g_811 p_1107->g_756 p_1107->g_694 p_1107->g_912 p_1107->g_914 p_1107->g_917 p_1107->g_409 p_1107->g_892
 * writes: p_1107->g_505 p_1107->g_7 p_1107->g_85 p_1107->g_95 p_1107->g_489 p_1107->g_692.f1 p_1107->g_509 p_1107->g_652 p_1107->g_892 p_1107->g_608 p_1107->g_944 p_1107->g_580 p_1107->g_842 p_1107->g_114 p_1107->g_122 p_1107->g_132 p_1107->g_2 p_1107->g_182 p_1107->g_194
 */
int32_t * func_37(int64_t * p_38, int64_t * p_39, int64_t * p_40, uint32_t  p_41, struct S3 * p_1107)
{ /* block id: 320 */
    uint16_t l_766 = 65535UL;
    int64_t *l_779 = (void*)0;
    int32_t *l_782 = (void*)0;
    VECTOR(int64_t, 16) l_791 = (VECTOR(int64_t, 16))((-2L), (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 2L), 2L), 2L, (-2L), 2L, (VECTOR(int64_t, 2))((-2L), 2L), (VECTOR(int64_t, 2))((-2L), 2L), (-2L), 2L, (-2L), 2L);
    VECTOR(int32_t, 2) l_796 = (VECTOR(int32_t, 2))(0x725A0865L, 0x52C210EDL);
    VECTOR(uint16_t, 16) l_798 = (VECTOR(uint16_t, 16))(0xC719L, (VECTOR(uint16_t, 4))(0xC719L, (VECTOR(uint16_t, 2))(0xC719L, 0xA998L), 0xA998L), 0xA998L, 0xC719L, 0xA998L, (VECTOR(uint16_t, 2))(0xC719L, 0xA998L), (VECTOR(uint16_t, 2))(0xC719L, 0xA998L), 0xC719L, 0xA998L, 0xC719L, 0xA998L);
    VECTOR(int32_t, 2) l_799 = (VECTOR(int32_t, 2))((-6L), 5L);
    VECTOR(int32_t, 16) l_801 = (VECTOR(int32_t, 16))(0x7B6616DDL, (VECTOR(int32_t, 4))(0x7B6616DDL, (VECTOR(int32_t, 2))(0x7B6616DDL, 0L), 0L), 0L, 0x7B6616DDL, 0L, (VECTOR(int32_t, 2))(0x7B6616DDL, 0L), (VECTOR(int32_t, 2))(0x7B6616DDL, 0L), 0x7B6616DDL, 0L, 0x7B6616DDL, 0L);
    uint32_t l_802 = 0xECA768F9L;
    VECTOR(int32_t, 16) l_804 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 3L), 3L), 3L, 1L, 3L, (VECTOR(int32_t, 2))(1L, 3L), (VECTOR(int32_t, 2))(1L, 3L), 1L, 3L, 1L, 3L);
    VECTOR(uint16_t, 8) l_806 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65533UL), 65533UL), 65533UL, 0UL, 65533UL);
    uint64_t ***l_807 = &p_1107->g_755;
    int16_t l_846 = 0x779FL;
    int8_t l_873[4][6] = {{0x6EL,0x6EL,0x6EL,0x6EL,0x6EL,0x6EL},{0x6EL,0x6EL,0x6EL,0x6EL,0x6EL,0x6EL},{0x6EL,0x6EL,0x6EL,0x6EL,0x6EL,0x6EL},{0x6EL,0x6EL,0x6EL,0x6EL,0x6EL,0x6EL}};
    int8_t l_876 = (-3L);
    uint32_t **l_891 = &p_1107->g_455;
    VECTOR(int64_t, 2) l_915 = (VECTOR(int64_t, 2))(0x43A5D77828F753A2L, 6L);
    uint16_t l_934 = 65530UL;
    int64_t l_935 = 0L;
    VECTOR(uint16_t, 2) l_959 = (VECTOR(uint16_t, 2))(0UL, 0UL);
    VECTOR(uint16_t, 8) l_960 = (VECTOR(uint16_t, 8))(65531UL, (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 65535UL), 65535UL), 65535UL, 65531UL, 65535UL);
    VECTOR(uint8_t, 8) l_978 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xADL), 0xADL), 0xADL, 0UL, 0xADL);
    int i, j;
lbl_965:
    if (p_41)
    { /* block id: 321 */
        uint32_t l_774[3][5][4] = {{{0x05A633C2L,0x703A50F3L,0xC2FC08B4L,0xDDDF9C98L},{0x05A633C2L,0x703A50F3L,0xC2FC08B4L,0xDDDF9C98L},{0x05A633C2L,0x703A50F3L,0xC2FC08B4L,0xDDDF9C98L},{0x05A633C2L,0x703A50F3L,0xC2FC08B4L,0xDDDF9C98L},{0x05A633C2L,0x703A50F3L,0xC2FC08B4L,0xDDDF9C98L}},{{0x05A633C2L,0x703A50F3L,0xC2FC08B4L,0xDDDF9C98L},{0x05A633C2L,0x703A50F3L,0xC2FC08B4L,0xDDDF9C98L},{0x05A633C2L,0x703A50F3L,0xC2FC08B4L,0xDDDF9C98L},{0x05A633C2L,0x703A50F3L,0xC2FC08B4L,0xDDDF9C98L},{0x05A633C2L,0x703A50F3L,0xC2FC08B4L,0xDDDF9C98L}},{{0x05A633C2L,0x703A50F3L,0xC2FC08B4L,0xDDDF9C98L},{0x05A633C2L,0x703A50F3L,0xC2FC08B4L,0xDDDF9C98L},{0x05A633C2L,0x703A50F3L,0xC2FC08B4L,0xDDDF9C98L},{0x05A633C2L,0x703A50F3L,0xC2FC08B4L,0xDDDF9C98L},{0x05A633C2L,0x703A50F3L,0xC2FC08B4L,0xDDDF9C98L}}};
        int32_t **l_781[2];
        int16_t l_790 = 0x143FL;
        VECTOR(int32_t, 8) l_794 = (VECTOR(int32_t, 8))(0x68934E79L, (VECTOR(int32_t, 4))(0x68934E79L, (VECTOR(int32_t, 2))(0x68934E79L, 0x4B87B468L), 0x4B87B468L), 0x4B87B468L, 0x68934E79L, 0x4B87B468L);
        VECTOR(int32_t, 2) l_795 = (VECTOR(int32_t, 2))(0x7C115EDCL, 0L);
        VECTOR(int16_t, 16) l_797 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x6240L), 0x6240L), 0x6240L, 1L, 0x6240L, (VECTOR(int16_t, 2))(1L, 0x6240L), (VECTOR(int16_t, 2))(1L, 0x6240L), 1L, 0x6240L, 1L, 0x6240L);
        VECTOR(int32_t, 8) l_803 = (VECTOR(int32_t, 8))(0x5268C5D7L, (VECTOR(int32_t, 4))(0x5268C5D7L, (VECTOR(int32_t, 2))(0x5268C5D7L, (-7L)), (-7L)), (-7L), 0x5268C5D7L, (-7L));
        int16_t l_821 = 0x5E70L;
        uint64_t l_823 = 0x779E2196E44C7DCEL;
        uint32_t l_826 = 1UL;
        int32_t l_845 = 0x5F27E083L;
        VECTOR(int32_t, 16) l_865 = (VECTOR(int32_t, 16))(0x4EA16B91L, (VECTOR(int32_t, 4))(0x4EA16B91L, (VECTOR(int32_t, 2))(0x4EA16B91L, (-5L)), (-5L)), (-5L), 0x4EA16B91L, (-5L), (VECTOR(int32_t, 2))(0x4EA16B91L, (-5L)), (VECTOR(int32_t, 2))(0x4EA16B91L, (-5L)), 0x4EA16B91L, (-5L), 0x4EA16B91L, (-5L));
        int8_t l_868 = (-1L);
        int16_t l_880 = 0L;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_781[i] = &p_1107->g_580;
        (*p_1107->g_580) = l_766;
        l_782 = func_70(p_41, (safe_add_func_uint32_t_u_u((p_1107->g_769 , ((p_41 >= ((safe_lshift_func_uint8_t_u_u(0x4BL, FAKE_DIVERGE(p_1107->global_1_offset, get_global_id(1), 10))) ^ ((safe_div_func_int32_t_s_s(((l_774[1][4][2] && ((void*)0 != (*p_1107->g_764))) <= ((l_766 , (safe_mul_func_uint16_t_u_u((safe_add_func_uint32_t_u_u(l_766, p_41)), 0x0EBFL))) & l_774[1][4][2])), p_41)) | GROUP_DIVERGE(2, 1)))) , 0UL)), 0x3C5730D3L)), l_779, p_1107);
        for (p_1107->g_489 = 0; (p_1107->g_489 < 51); ++p_1107->g_489)
        { /* block id: 326 */
            int32_t l_789[7] = {0x14DFF13BL,0x14DFF13BL,0x14DFF13BL,0x14DFF13BL,0x14DFF13BL,0x14DFF13BL,0x14DFF13BL};
            VECTOR(int32_t, 2) l_800 = (VECTOR(int32_t, 2))(3L, (-4L));
            VECTOR(int16_t, 8) l_805 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x7F7DL), 0x7F7DL), 0x7F7DL, 0L, 0x7F7DL);
            VECTOR(uint8_t, 8) l_808 = (VECTOR(uint8_t, 8))(8UL, (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 0UL), 0UL), 0UL, 8UL, 0UL);
            uint16_t *l_814 = &l_766;
            int32_t l_815 = 0x27BB117AL;
            int i;
            (*p_1107->g_580) = (GROUP_DIVERGE(0, 1) && ((*l_814) = (((safe_div_func_uint64_t_u_u(((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))((-1L), l_789[3], 0x49DD0474D6E2CF46L, (-2L))))), l_790, ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))((-1L), ((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 16))(rhadd(((VECTOR(int64_t, 8))((-10L), ((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(l_791.s95e1069405b7f91a)).se3)).yxxxxyyxxyyyyxyx, ((VECTOR(int64_t, 4))((safe_mod_func_uint32_t_u_u((l_789[6] != (p_41 < l_789[3])), ((VECTOR(int32_t, 4))(0L, ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_794.s20)), ((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 2))(l_795.yx)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_796.xxyxyyxxxxyxxyxy)).s188b)).wxywxzyxzzyyxzyz)).s1b))).yyxxyxxyyxyxyyyx)).s0bd4, ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_797.sa9)))).xxxy)).lo, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(4UL, 0xB875L)), 0UL, 9UL, 0UL, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(l_798.s99f05858)).s4753261514074237)).s5d)), 65529UL)).s21))).yyxx, ((VECTOR(int32_t, 4))(l_799.yxyx))))), ((VECTOR(int32_t, 2))((-2L), 0x7E6D17B9L)), ((VECTOR(int32_t, 4))(l_800.xxxx)), 9L, (-6L), 0x65E290B2L, 0x089A0245L)).s98, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_801.s21196f4c5148fdd9)).lo)).s1675256672312006, (int32_t)l_802))).sa, ((VECTOR(int32_t, 2))((-1L), 0x149A19C7L)), ((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_803.s66)).xyyy)).wxywwxwz, ((VECTOR(int32_t, 4))(l_804.sc58d)).xzxyzxxx))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 2))(l_805.s73)).yxyxyyyyxyxxxyxx, ((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 8))(0x3C61L, ((VECTOR(uint16_t, 4))(l_806.s4401)), (l_807 == &p_1107->g_755), 65530UL, 0UL)).s55, ((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 4))(l_808.s6712)).zxwzwyzwzxyxzxyw, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 4))(0UL, ((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(p_1107->g_811.xyxyyxxxyyxxyyyy)).s2, ((++(*p_1107->g_756)) > 0x10B25E65D43BF055L))) || l_800.y), 250UL, 252UL)), ((VECTOR(uint8_t, 4))(4UL))))))).zzwwzxwwyzyzzzyx))).s6c, ((VECTOR(uint8_t, 2))(0x3BL))))), ((VECTOR(uint8_t, 2))(0x0BL)))))))), 0x59C0L, ((VECTOR(uint16_t, 4))(65527UL)), ((VECTOR(uint16_t, 8))(65534UL)), 0x1F36L)).s3fce, (uint16_t)p_1107->g_505))).even, ((VECTOR(uint16_t, 2))(1UL))))), ((VECTOR(uint16_t, 2))(65535UL))))).xyyxxxxxxxyxxxxy))).s3a7c)).hi, ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 2))(0x425F5CE8L))))))), ((VECTOR(int32_t, 2))(0x5469DC85L)), 0x40F3F580L)).sfc))), 0x2B331C30L)).w)), ((VECTOR(int64_t, 2))(0x6CAA8F28303F75FDL)), 0x53369FCA9457B3CBL)).zxzxwwzywywzwzyx))).sc90a)), ((VECTOR(int64_t, 2))(0L)), (-8L), 0L, ((VECTOR(int64_t, 4))(0x4C7F70555E6BC014L)), 1L, 0x5601ECFB69E1C391L, 1L, 0x770B66626816A348L)).sd35d, ((VECTOR(int64_t, 4))(1L))))), l_789[3], 1L, (-1L))).s2217375117664145, ((VECTOR(int64_t, 16))(5L))))).s5fd7, ((VECTOR(int64_t, 4))(2L))))), ((VECTOR(int64_t, 2))(1L)), (-3L))).s5425070743125163)).odd, ((VECTOR(int64_t, 8))((-3L))), ((VECTOR(int64_t, 8))(0x404C1C3AD6AFA2EEL))))).even, ((VECTOR(int64_t, 4))(0x53FB908E9641ACC5L)), ((VECTOR(int64_t, 4))(0L))))).odd, ((VECTOR(int64_t, 2))(1L))))), (-6L))).s2, l_789[3])) <= 1L), FAKE_DIVERGE(p_1107->group_0_offset, get_group_id(0), 10))) || (*p_1107->g_455)) == 1L)));
            (*p_1107->g_269) &= ((*p_1107->g_580) = l_815);
        }
        for (p_41 = 0; (p_41 >= 34); ++p_41)
        { /* block id: 335 */
            int32_t l_818 = 0L;
            int32_t l_819 = (-6L);
            int32_t l_820 = 0x3072923BL;
            int32_t l_822 = 7L;
            int64_t ***l_839 = (void*)0;
            int32_t l_874 = 1L;
            int32_t l_875 = 0x36C13454L;
            int32_t l_877 = 9L;
            int32_t l_878 = (-5L);
            int32_t l_879 = 0x21340B51L;
            int32_t l_881[6][5][6] = {{{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L}},{{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L}},{{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L}},{{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L}},{{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L}},{{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L},{0x0E964D08L,0L,2L,0x0E964D08L,(-10L),2L}}};
            uint32_t **l_894 = &p_1107->g_455;
            VECTOR(int32_t, 16) l_898 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), 1L, 1L, 1L, (VECTOR(int32_t, 2))(1L, 1L), (VECTOR(int32_t, 2))(1L, 1L), 1L, 1L, 1L, 1L);
            int i, j, k;
            ++l_823;
            l_826--;
            for (p_1107->g_692.f1 = 20; (p_1107->g_692.f1 >= 7); p_1107->g_692.f1--)
            { /* block id: 340 */
                int64_t ****l_840 = &l_839;
                uint32_t *l_841 = &p_1107->g_652;
                int32_t l_857 = 0L;
                int8_t l_858 = (-9L);
                VECTOR(int32_t, 4) l_859 = (VECTOR(int32_t, 4))(0x571377BDL, (VECTOR(int32_t, 2))(0x571377BDL, (-4L)), (-4L));
                int32_t l_882 = 0x0ACCC628L;
                uint64_t l_883 = 0xD413413D7249327BL;
                int i;
                l_818 = (((p_1107->g_499.x > l_822) & (((((safe_mul_func_int16_t_s_s(p_1107->g_328[0][2][2], GROUP_DIVERGE(0, 1))) ^ (safe_mul_func_uint16_t_u_u(((safe_rshift_func_uint16_t_u_u((((*p_1107->g_765) = (*p_1107->g_765)) != (void*)0), (safe_sub_func_int64_t_s_s((((*l_840) = l_839) != (((*l_841) = FAKE_DIVERGE(p_1107->global_0_offset, get_global_id(0), 10)) , (void*)0)), (p_1107->g_842 != ((safe_lshift_func_int16_t_s_u((0x51F1L >= p_1107->g_633.x), GROUP_DIVERGE(1, 1))) >= 0x05CC52B3L)))))) | p_1107->g_331.s4), 6L))) , (void*)0) == (void*)0) != l_845)) | l_846);
                p_1107->g_7 &= (l_858 = (l_822 |= (((((safe_rshift_func_uint8_t_u_s(0xC3L, 5)) < (safe_mul_func_uint8_t_u_u(7UL, (safe_sub_func_uint8_t_u_u((((5UL && ((*p_1107->g_534) >= ((*p_1107->g_580) &= p_41))) == (1L == (safe_add_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u(0x46L, l_857)), l_857)))) != 0xCA5FC2EDL), l_857))))) ^ p_41) & p_1107->g_492.s4) , p_41)));
                (*p_1107->g_580) = ((VECTOR(int32_t, 2))(l_859.wx)).even;
                if (((safe_mul_func_uint16_t_u_u((((safe_div_func_int16_t_s_s(((safe_unary_minus_func_uint32_t_u((((void*)0 == (*p_1107->g_764)) | (((((0x2CL & l_858) != ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_865.s39e4)))).w) , ((((VECTOR(int64_t, 2))(p_1107->g_866.yz)).even == p_1107->g_85) < (-1L))) == (((void*)0 == &p_1107->g_580) && (((p_41 || l_818) , p_41) < p_1107->g_95))) & 0x64L)))) , 0x66EFL), p_41)) & p_41) | 0UL), FAKE_DIVERGE(p_1107->group_1_offset, get_group_id(1), 10))) & FAKE_DIVERGE(p_1107->group_1_offset, get_group_id(1), 10)))
                { /* block id: 350 */
                    int64_t l_867 = 0L;
                    int32_t l_869 = (-1L);
                    int32_t l_870 = 0x08AF4958L;
                    int32_t l_871[2];
                    int32_t l_872 = 0L;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_871[i] = 0x7A4AF0A7L;
                    ++l_883;
                    if ((*p_1107->g_269))
                        continue;
                    l_857 = 0x44F0E4A0L;
                }
                else
                { /* block id: 354 */
                    uint32_t ***l_893[8][10][3] = {{{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891}},{{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891}},{{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891}},{{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891}},{{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891}},{{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891}},{{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891}},{{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891},{(void*)0,&l_891,&l_891}}};
                    VECTOR(uint64_t, 2) l_900 = (VECTOR(uint64_t, 2))(0x750347D7D0D864C0L, 0xE088F08C73B19904L);
                    uint8_t *l_908[10];
                    int32_t l_909 = (-1L);
                    int i, j, k;
                    for (i = 0; i < 10; i++)
                        l_908[i] = &p_1107->g_318[1];
                    (*p_1107->g_580) &= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x7B9EEBA8L, 0x342C723BL)), ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x19AC330DL, (-4L))))).xyyyyyxyxyyxxyxy)).even, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_1107->g_886.yz)), 2L, 1L)).xwwxxxzy, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))((~(safe_lshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((p_1107->g_892 = l_891) != (l_894 = l_891)), 0L)), p_1107->g_331.s6))), 0x649CD09CL, 0x377E6E94L, 0x214721E9L)), ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(p_1107->g_895.wzxy)))).odd)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((p_1107->g_896 , 0x0420L) & 0xB420L), (-1L), ((VECTOR(int32_t, 2))(p_1107->g_897.s66)), ((VECTOR(int32_t, 2))(0x130F4B9AL, 9L)), 0x17696E68L, (-6L))).s1211371357501621)).sae, ((VECTOR(int32_t, 16))(l_898.sa7b3af2d39d91a00)).s7c))).xyyyxyxy)).s2243112146436177)).s4441, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(p_1107->g_899.s1ab0e892)).s36)).yxyyyxxy))).even)).even, ((VECTOR(int32_t, 8))(0x1AFC13DCL, ((VECTOR(int32_t, 2))(0x3BFFD90AL, (-1L))), ((l_909 = ((VECTOR(uint64_t, 16))(0UL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_900.xx)), 18446744073709551615UL, 0UL)).lo)), 18446744073709551615UL, 18446744073709551612UL, ((VECTOR(uint64_t, 2))(p_1107->g_901.s6f)), ((safe_sub_func_uint16_t_u_u(((p_1107->g_608.se = ((safe_mul_func_uint16_t_u_u((((safe_rshift_func_int16_t_s_s((l_898.sa > (-7L)), l_900.x)) || l_898.sc) == 2L), l_859.z)) < 0xE3ADL)) == l_818), p_1107->g_114[0][1])) , l_900.y), 18446744073709551615UL, ((VECTOR(uint64_t, 4))(0xAE93C3A24C1EA6F8L)), 0x2CFB068A048847A8L, 18446744073709551613UL, 0xCFF565C2B2AA5E2BL)).se) && 18446744073709551615UL), l_900.x, 0x05AA9B77L, 0x754023AFL, 1L)).s57))).xyyy))), (-9L), ((VECTOR(int32_t, 4))(0x70A583F2L)), ((VECTOR(int32_t, 2))((-2L))), (-1L))).lo))), 0L, ((VECTOR(int32_t, 2))(6L)), ((VECTOR(int32_t, 2))(0x08E5DE2DL)), 1L)).sb5)).xyyxxxxx, (int32_t)l_900.y))).s7440616503671561, ((VECTOR(int32_t, 16))(0L)), ((VECTOR(int32_t, 16))(7L))))).s3c, ((VECTOR(int32_t, 2))(0L)), ((VECTOR(int32_t, 2))(0x5F042CA1L))))))).xyxy)).w;
                    (*p_1107->g_580) |= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(1L, 0x3A859CA2L)).xxyx)).even)).hi;
                }
            }
        }
    }
    else
    { /* block id: 364 */
        VECTOR(int64_t, 16) l_913 = (VECTOR(int64_t, 16))(0x169CF0204941C6C8L, (VECTOR(int64_t, 4))(0x169CF0204941C6C8L, (VECTOR(int64_t, 2))(0x169CF0204941C6C8L, (-2L)), (-2L)), (-2L), 0x169CF0204941C6C8L, (-2L), (VECTOR(int64_t, 2))(0x169CF0204941C6C8L, (-2L)), (VECTOR(int64_t, 2))(0x169CF0204941C6C8L, (-2L)), 0x169CF0204941C6C8L, (-2L), 0x169CF0204941C6C8L, (-2L));
        int8_t l_916 = 5L;
        VECTOR(int32_t, 4) l_930 = (VECTOR(int32_t, 4))(0x1466B448L, (VECTOR(int32_t, 2))(0x1466B448L, 0x2C4079DAL), 0x2C4079DAL);
        int16_t *l_931 = &l_846;
        uint32_t l_932[7][1];
        int8_t *l_933 = &l_876;
        int64_t l_936 = (-1L);
        int32_t **l_937[7][10] = {{(void*)0,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,(void*)0,(void*)0,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,(void*)0},{(void*)0,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,(void*)0,(void*)0,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,(void*)0},{(void*)0,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,(void*)0,(void*)0,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,(void*)0},{(void*)0,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,(void*)0,(void*)0,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,(void*)0},{(void*)0,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,(void*)0,(void*)0,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,(void*)0},{(void*)0,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,(void*)0,(void*)0,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,(void*)0},{(void*)0,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,(void*)0,(void*)0,&p_1107->g_580,&p_1107->g_580,&p_1107->g_580,(void*)0}};
        int32_t *l_939 = (void*)0;
        int i, j;
        for (i = 0; i < 7; i++)
        {
            for (j = 0; j < 1; j++)
                l_932[i][j] = 1UL;
        }
        (*p_1107->g_580) &= (+(((((VECTOR(int64_t, 4))(p_1107->g_694.s9, ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 16))(p_1107->g_912.zxzzzxzyxzyyxxzy)).sec, ((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 8))(l_913.s1e590ce0)).s3150401223126451, (int64_t)(p_41 | ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(p_1107->g_914.zzyy)))).x)))).lo, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))((-1L), 0x6229547959549B20L)))).xyyxyxyx, ((VECTOR(int64_t, 2))(l_915.xx)).xyyyyyyy))).s34))), 1L)).w , ((*p_39) = l_916)) || ((void*)0 != &l_802)) , ((((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 4))(p_1107->g_917.zzyz)), ((VECTOR(int64_t, 16))(0x5FE8FF7A44A1987EL, ((*p_39) |= ((((((safe_mod_func_int64_t_s_s((safe_div_func_uint32_t_u_u(((safe_lshift_func_int8_t_s_u(((*l_933) &= (safe_rshift_func_uint8_t_u_u(p_1107->g_409.z, (safe_lshift_func_int16_t_s_u(((*l_931) = ((((safe_mul_func_uint8_t_u_u((p_41 <= (((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 2))(l_930.yx)).xxyyyxxy, ((VECTOR(int32_t, 8))(0x1BD5BC3EL, 0x42663EC6L, ((((((void*)0 != &l_766) || l_916) | 1L) >= 0L) <= 1UL), ((VECTOR(int32_t, 2))(0x75E8BB7AL)), (-4L), 0x0CA45A29L, 0x0F2D2681L))))).s5327364674564231, ((VECTOR(int32_t, 16))(0x7ED8C954L))))).sa2, ((VECTOR(int32_t, 2))(0x20BD801BL))))), 0x226CC6FBL, 0L)), ((VECTOR(int32_t, 4))(2L))))), ((VECTOR(int32_t, 4))(0L))))).x | (-1L))), p_41)) != 0x7CA33F71L) , (**p_1107->g_892)) & (**p_1107->g_892))), l_932[3][0]))))), FAKE_DIVERGE(p_1107->local_2_offset, get_local_id(2), 10))) || p_1107->g_633.z), (*p_1107->g_455))), l_934)) >= 0xEBEFL) || FAKE_DIVERGE(p_1107->global_0_offset, get_global_id(0), 10)) | l_935) ^ 0x6AFEB4D8F9B6FF64L) <= 0x256CL)), 3L, (*p_39), l_913.s6, (*p_39), 0L, 0x0E40C21246F52355L, 0L, (*p_39), l_913.sf, ((VECTOR(int64_t, 4))(0x718DFE17C54C3EE5L)), 0L)).s0a86))), (-1L), ((VECTOR(int64_t, 4))((-4L))), (*p_39), ((VECTOR(int64_t, 2))(0x65F4CD57D2FBE274L)), ((VECTOR(int64_t, 2))(0x6294DAD65DD72024L)), 0x3CC5CEDF91F14E4AL, 1L)), (int64_t)l_936))).s4 , l_937[3][8]) != &l_782)));
        (*p_1107->g_580) ^= (-1L);
        if (p_41)
        { /* block id: 371 */
            return l_782;
        }
        else
        { /* block id: 373 */
            int32_t l_938 = 0x7FE93448L;
            (*p_1107->g_580) |= 0x0A5C5257L;
            (*p_1107->g_580) &= (p_41 , l_938);
            return l_939;
        }
    }
    for (p_1107->g_652 = 0; (p_1107->g_652 < 5); p_1107->g_652++)
    { /* block id: 381 */
        union U2 *l_943[7];
        union U2 **l_942[8][3][9] = {{{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]}},{{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]}},{{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]}},{{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]}},{{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]}},{{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]}},{{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]}},{{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]},{&l_943[6],&l_943[4],&l_943[3],&l_943[6],&l_943[4],&l_943[4],(void*)0,&l_943[1],&l_943[1]}}};
        VECTOR(uint64_t, 4) l_953 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xDF67866649EB79FFL), 0xDF67866649EB79FFL);
        VECTOR(uint32_t, 4) l_954 = (VECTOR(uint32_t, 4))(0x24CEAE71L, (VECTOR(uint32_t, 2))(0x24CEAE71L, 0xB00FBE0FL), 0xB00FBE0FL);
        int32_t l_961 = 0x53B565FEL;
        int32_t l_963 = (-1L);
        int32_t **l_964 = &p_1107->g_580;
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_943[i] = &p_1107->g_692;
        (*l_964) = (((((&p_1107->g_502[0] != (p_1107->g_944 = &p_1107->g_692)) , (safe_mod_func_int32_t_s_s(((*p_1107->g_269) | (safe_add_func_int8_t_s_s((safe_rshift_func_int16_t_s_s(p_1107->g_633.x, 12)), p_41))), (safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(l_953.ww)).hi, (((*p_1107->g_580) = (((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 8))(l_954.yyzzwyzx)), ((VECTOR(uint32_t, 16))((((safe_div_func_uint16_t_u_u(((((safe_lshift_func_uint8_t_u_s((l_961 = ((-1L) == ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 8))(0x390FL, 0xB16FL, ((VECTOR(uint16_t, 4))(l_959.yyyy)), 1UL, 65530UL)).s0260531517246575, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_960.s60)).yxxxyxyy)).s0136723141331206))))).sc)), 1)) || ((VECTOR(int8_t, 4))(p_1107->g_962.xyyx)).w) < ((*p_39) = 0x516F029653A3DD6CL)) , p_1107->g_866.x), p_1107->g_866.x)) < l_963) | l_804.s3), 4294967293UL, ((VECTOR(uint32_t, 8))(1UL)), 1UL, 1UL, ((VECTOR(uint32_t, 4))(0x1F955DACL)))).odd))).s2 < 0x1AB970AEE57B29A9L)) == p_41)))))) && 255UL) > 0x046FC40063CE3E7EL) , l_782);
        return (*l_964);
    }
    if (l_766)
        goto lbl_965;
    for (p_1107->g_95 = 0; (p_1107->g_95 <= 23); p_1107->g_95++)
    { /* block id: 392 */
        int64_t ***l_973[7][10][3] = {{{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375}},{{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375}},{{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375}},{{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375}},{{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375}},{{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375}},{{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375},{&p_1107->g_375,&p_1107->g_375,&p_1107->g_375}}};
        int32_t l_985 = 4L;
        int i, j, k;
        for (p_1107->g_842 = 18; (p_1107->g_842 > (-13)); p_1107->g_842--)
        { /* block id: 395 */
            int32_t *l_970 = (void*)0;
            int8_t *l_986 = &l_876;
            int32_t **l_987 = &p_1107->g_580;
            int32_t **l_988 = &l_782;
            (*l_988) = ((*l_987) = func_98(func_66(p_41, l_970, p_1107), p_41, (GROUP_DIVERGE(1, 1) <= ((safe_add_func_int16_t_s_s((l_873[0][0] > ((*l_986) |= (((l_973[1][5][2] = (void*)0) != (void*)0) >= ((safe_mul_func_uint16_t_u_u(((((VECTOR(int32_t, 8))((safe_mul_func_uint16_t_u_u(0xAD40L, GROUP_DIVERGE(2, 1))), 0x4C836D68L, ((*p_1107->g_580) ^= (((VECTOR(uint8_t, 16))(l_978.s3270570674146153)).sf >= (safe_rshift_func_int16_t_s_s((safe_div_func_int8_t_s_s((safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(0L, p_41, 0x58L, (-1L), 0x51L, ((VECTOR(int8_t, 4))(1L)), 0x24L, 0L, ((VECTOR(int8_t, 4))(0x4BL)), 6L)).s8a95)), ((VECTOR(int8_t, 2))(1L)), 2L, 0x56L)))).s5, 0xF0L)), p_41)), l_985)))), (-5L), ((VECTOR(int32_t, 2))(0x0FF9BA39L)), 0x2FE60A21L, (-5L))).s1 != 9UL) >= 0x02FEL), p_1107->g_866.w)) && (-10L))))), p_1107->g_866.x)) | (*p_1107->g_455))), &p_1107->g_3, l_985, p_1107));
            (*l_987) = (*l_987);
        }
    }
    return l_782;
}


/* ------------------------------------------ */
/* 
 * reads : p_1107->g_221 p_1107->g_3 p_1107->g_269 p_1107->g_7 p_1107->g_273 p_1107->g_409 p_1107->g_281 p_1107->g_492 p_1107->g_455 p_1107->g_238 p_1107->g_114 p_1107->g_146 p_1107->g_475 p_1107->g_10 p_1107->g_85 p_1107->g_652 p_1107->g_580 p_1107->g_505 p_1107->g_318 p_1107->g_568 p_1107->g_699 p_1107->g_105 p_1107->g_220.f0 p_1107->g_502.f0 p_1107->g_754 p_1107->g_764 p_1107->g_194 p_1107->g_132
 * writes: p_1107->g_7 p_1107->g_273 p_1107->g_194 p_1107->g_132 p_1107->g_85 p_1107->g_146 p_1107->g_105 p_1107->g_559 p_1107->g_652 p_1107->g_505 p_1107->g_509 p_1107->g_455 p_1107->g_755 p_1107->g_272 p_1107->g_510.f2 p_1107->g_765
 */
int64_t * func_42(int64_t * p_43, int32_t * p_44, uint32_t  p_45, struct S3 * p_1107)
{ /* block id: 114 */
    uint8_t *l_252 = &p_1107->g_114[0][1];
    uint8_t *l_253 = &p_1107->g_122;
    uint8_t *l_254[5] = {&p_1107->g_122,&p_1107->g_122,&p_1107->g_122,&p_1107->g_122,&p_1107->g_122};
    int32_t l_255 = 0L;
    int8_t l_259 = 1L;
    int8_t *l_260[7];
    int16_t *l_267[5] = {&p_1107->g_182,&p_1107->g_182,&p_1107->g_182,&p_1107->g_182,&p_1107->g_182};
    int32_t l_268 = 1L;
    int32_t *l_270 = &p_1107->g_7;
    int32_t *l_271[2];
    int32_t l_310 = 0L;
    uint8_t l_376 = 0x6CL;
    VECTOR(int32_t, 16) l_381 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x0E64C920L), 0x0E64C920L), 0x0E64C920L, 1L, 0x0E64C920L, (VECTOR(int32_t, 2))(1L, 0x0E64C920L), (VECTOR(int32_t, 2))(1L, 0x0E64C920L), 1L, 0x0E64C920L, 1L, 0x0E64C920L);
    VECTOR(int16_t, 2) l_504 = (VECTOR(int16_t, 2))(1L, 0x55C7L);
    uint32_t **l_525 = &p_1107->g_455;
    union U1 **l_536 = &p_1107->g_509;
    VECTOR(int32_t, 8) l_562 = (VECTOR(int32_t, 8))(0x3CEA7A1CL, (VECTOR(int32_t, 4))(0x3CEA7A1CL, (VECTOR(int32_t, 2))(0x3CEA7A1CL, 0x567B4B7BL), 0x567B4B7BL), 0x567B4B7BL, 0x3CEA7A1CL, 0x567B4B7BL);
    VECTOR(uint16_t, 2) l_569 = (VECTOR(uint16_t, 2))(0xFC76L, 6UL);
    VECTOR(int32_t, 4) l_591 = (VECTOR(int32_t, 4))(0x30285C02L, (VECTOR(int32_t, 2))(0x30285C02L, 1L), 1L);
    VECTOR(int64_t, 2) l_601 = (VECTOR(int64_t, 2))(0x6EB0BD366DE2BC61L, 0x07B26FD2F073DC0FL);
    VECTOR(uint32_t, 2) l_655 = (VECTOR(uint32_t, 2))(0UL, 4294967286UL);
    VECTOR(uint16_t, 8) l_674 = (VECTOR(uint16_t, 8))(0x1881L, (VECTOR(uint16_t, 4))(0x1881L, (VECTOR(uint16_t, 2))(0x1881L, 0x75FFL), 0x75FFL), 0x75FFL, 0x1881L, 0x75FFL);
    union U2 *l_693[2];
    VECTOR(int16_t, 16) l_703 = (VECTOR(int16_t, 16))(0x1BEBL, (VECTOR(int16_t, 4))(0x1BEBL, (VECTOR(int16_t, 2))(0x1BEBL, 0x1781L), 0x1781L), 0x1781L, 0x1BEBL, 0x1781L, (VECTOR(int16_t, 2))(0x1BEBL, 0x1781L), (VECTOR(int16_t, 2))(0x1BEBL, 0x1781L), 0x1BEBL, 0x1781L, 0x1BEBL, 0x1781L);
    int64_t *l_708 = (void*)0;
    VECTOR(int64_t, 16) l_713 = (VECTOR(int64_t, 16))(0x4AE1B049357667DEL, (VECTOR(int64_t, 4))(0x4AE1B049357667DEL, (VECTOR(int64_t, 2))(0x4AE1B049357667DEL, (-1L)), (-1L)), (-1L), 0x4AE1B049357667DEL, (-1L), (VECTOR(int64_t, 2))(0x4AE1B049357667DEL, (-1L)), (VECTOR(int64_t, 2))(0x4AE1B049357667DEL, (-1L)), 0x4AE1B049357667DEL, (-1L), 0x4AE1B049357667DEL, (-1L));
    int i;
    for (i = 0; i < 7; i++)
        l_260[i] = &p_1107->g_85;
    for (i = 0; i < 2; i++)
        l_271[i] = &l_255;
    for (i = 0; i < 2; i++)
        l_693[i] = &p_1107->g_692;
    (*p_1107->g_269) ^= ((safe_add_func_uint16_t_u_u(((((l_253 = (l_252 = &p_1107->g_114[0][5])) != l_254[3]) , (l_268 = (l_255 , (safe_rshift_func_int8_t_s_s((~(p_1107->g_221.s1 , (l_255 = ((safe_unary_minus_func_int16_t_s((GROUP_DIVERGE(2, 1) & p_45))) | l_259)))), (safe_sub_func_int8_t_s_s((safe_add_func_uint64_t_u_u((p_45 , (safe_div_func_int32_t_s_s((*p_44), 0x368CCABFL))), l_259)), 1L))))))) || p_45), p_45)) <= p_45);
lbl_280:
    --p_1107->g_273;
lbl_707:
    for (p_1107->g_194 = 0; (p_1107->g_194 <= 28); ++p_1107->g_194)
    { /* block id: 123 */
        uint64_t l_309 = 0UL;
        VECTOR(int8_t, 16) l_311 = (VECTOR(int8_t, 16))(0x69L, (VECTOR(int8_t, 4))(0x69L, (VECTOR(int8_t, 2))(0x69L, 1L), 1L), 1L, 0x69L, 1L, (VECTOR(int8_t, 2))(0x69L, 1L), (VECTOR(int8_t, 2))(0x69L, 1L), 0x69L, 1L, 0x69L, 1L);
        int32_t l_316[8] = {0x27B511B0L,0x27B511B0L,0x27B511B0L,0x27B511B0L,0x27B511B0L,0x27B511B0L,0x27B511B0L,0x27B511B0L};
        VECTOR(uint16_t, 4) l_405 = (VECTOR(uint16_t, 4))(0x92D3L, (VECTOR(uint16_t, 2))(0x92D3L, 1UL), 1UL);
        VECTOR(int32_t, 8) l_436 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x22CE9A02L), 0x22CE9A02L), 0x22CE9A02L, 0L, 0x22CE9A02L);
        int8_t **l_478 = &p_1107->g_306[0];
        VECTOR(uint16_t, 16) l_537 = (VECTOR(uint16_t, 16))(0xCC63L, (VECTOR(uint16_t, 4))(0xCC63L, (VECTOR(uint16_t, 2))(0xCC63L, 65526UL), 65526UL), 65526UL, 0xCC63L, 65526UL, (VECTOR(uint16_t, 2))(0xCC63L, 65526UL), (VECTOR(uint16_t, 2))(0xCC63L, 65526UL), 0xCC63L, 65526UL, 0xCC63L, 65526UL);
        int64_t ***l_553 = &p_1107->g_375;
        int64_t *l_557 = (void*)0;
        VECTOR(int32_t, 2) l_560 = (VECTOR(int32_t, 2))(0x70EFC127L, 0L);
        int i;
        for (p_1107->g_132 = (-23); (p_1107->g_132 != 7); p_1107->g_132++)
        { /* block id: 126 */
            uint16_t l_287 = 65535UL;
            int64_t *l_295 = (void*)0;
            int64_t **l_294 = &l_295;
            uint64_t *l_296 = &p_1107->g_95;
            int32_t l_313 = 0x515E3640L;
            int16_t l_373 = 0x3676L;
            VECTOR(uint16_t, 4) l_423 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65526UL), 65526UL);
            int8_t **l_432 = &p_1107->g_306[0];
            int32_t l_456 = 0x2F8BA208L;
            VECTOR(uint8_t, 2) l_497 = (VECTOR(uint8_t, 2))(0xF1L, 0x25L);
            int32_t l_506 = 0x5B643D52L;
            uint32_t *l_517[10][1] = {{&p_1107->g_489},{&p_1107->g_489},{&p_1107->g_489},{&p_1107->g_489},{&p_1107->g_489},{&p_1107->g_489},{&p_1107->g_489},{&p_1107->g_489},{&p_1107->g_489},{&p_1107->g_489}};
            uint32_t l_538 = 0xC19B957FL;
            int i, j;
            if (l_255)
                goto lbl_280;
        }
        return p_43;
    }
    for (p_1107->g_132 = (-12); (p_1107->g_132 < 19); ++p_1107->g_132)
    { /* block id: 237 */
        uint64_t l_602 = 0x8EECDED7C7988611L;
        int32_t l_615 = 0x54F0161AL;
        VECTOR(int8_t, 4) l_644 = (VECTOR(int8_t, 4))(0x02L, (VECTOR(int8_t, 2))(0x02L, (-9L)), (-9L));
        int64_t *l_653[4] = {&p_1107->g_105,&p_1107->g_105,&p_1107->g_105,&p_1107->g_105};
        VECTOR(uint32_t, 4) l_654 = (VECTOR(uint32_t, 4))(0x1B5F7846L, (VECTOR(uint32_t, 2))(0x1B5F7846L, 0xDA441E21L), 0xDA441E21L);
        VECTOR(int8_t, 4) l_667 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x16L), 0x16L);
        VECTOR(uint16_t, 4) l_675 = (VECTOR(uint16_t, 4))(0x3924L, (VECTOR(uint16_t, 2))(0x3924L, 0UL), 0UL);
        uint32_t *l_688 = &p_1107->g_238;
        union U2 *l_691 = &p_1107->g_692;
        VECTOR(int64_t, 8) l_714 = (VECTOR(int64_t, 8))(0x2AEDA50343FC338DL, (VECTOR(int64_t, 4))(0x2AEDA50343FC338DL, (VECTOR(int64_t, 2))(0x2AEDA50343FC338DL, 1L), 1L), 1L, 0x2AEDA50343FC338DL, 1L);
        uint32_t l_735 = 0UL;
        uint16_t l_749 = 0xFE8EL;
        uint64_t *l_753 = &p_1107->g_95;
        uint64_t **l_752[2][10] = {{&l_753,&l_753,&l_753,&l_753,&l_753,&l_753,&l_753,&l_753,&l_753,&l_753},{&l_753,&l_753,&l_753,&l_753,&l_753,&l_753,&l_753,&l_753,&l_753,&l_753}};
        int i, j;
        for (p_1107->g_85 = 7; (p_1107->g_85 <= 15); p_1107->g_85 = safe_add_func_int64_t_s_s(p_1107->g_85, 4))
        { /* block id: 240 */
            int32_t **l_590 = &l_271[0];
            uint32_t l_612 = 4294967295UL;
            VECTOR(uint8_t, 16) l_636 = (VECTOR(uint8_t, 16))(0x25L, (VECTOR(uint8_t, 4))(0x25L, (VECTOR(uint8_t, 2))(0x25L, 9UL), 9UL), 9UL, 0x25L, 9UL, (VECTOR(uint8_t, 2))(0x25L, 9UL), (VECTOR(uint8_t, 2))(0x25L, 9UL), 0x25L, 9UL, 0x25L, 9UL);
            uint32_t l_637 = 4294967291UL;
            int32_t l_672 = (-1L);
            uint32_t l_750 = 0xEAD361A7L;
            int32_t l_751 = 1L;
            int64_t *l_759[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
            int i;
            (*l_590) = (void*)0;
            if (((VECTOR(int32_t, 16))(l_591.xxxwwxzyxxxxxyzz)).sb)
            { /* block id: 242 */
                VECTOR(uint8_t, 8) l_607 = (VECTOR(uint8_t, 8))(250UL, (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 0x7FL), 0x7FL), 0x7FL, 250UL, 0x7FL);
                int32_t l_609 = 1L;
                int32_t l_648[3][10] = {{0x2B891ADDL,(-3L),0x2B891ADDL,0x2B891ADDL,(-3L),0x2B891ADDL,0x2B891ADDL,(-3L),0x2B891ADDL,0x2B891ADDL},{0x2B891ADDL,(-3L),0x2B891ADDL,0x2B891ADDL,(-3L),0x2B891ADDL,0x2B891ADDL,(-3L),0x2B891ADDL,0x2B891ADDL},{0x2B891ADDL,(-3L),0x2B891ADDL,0x2B891ADDL,(-3L),0x2B891ADDL,0x2B891ADDL,(-3L),0x2B891ADDL,0x2B891ADDL}};
                int32_t l_651 = 2L;
                int i, j;
                for (l_259 = 0; (l_259 != (-30)); l_259 = safe_sub_func_uint8_t_u_u(l_259, 8))
                { /* block id: 245 */
                    uint64_t l_596 = 18446744073709551606UL;
                    uint16_t *l_613 = (void*)0;
                    uint16_t *l_614[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_614[i] = (void*)0;
                    for (p_1107->g_194 = 0; (p_1107->g_194 == (-28)); p_1107->g_194 = safe_sub_func_uint16_t_u_u(p_1107->g_194, 1))
                    { /* block id: 248 */
                        (*l_590) = p_44;
                        if (l_596)
                            break;
                    }
                    l_615 = (safe_mul_func_uint16_t_u_u((p_1107->g_146.s7 = (safe_lshift_func_int16_t_s_s(p_1107->g_409.w, (((p_1107->g_281.s0 >= (0x049B1D10BFD98CBBL & ((VECTOR(int64_t, 2))(l_601.xx)).odd)) <= ((((p_45 & (p_1107->g_492.s4 != (((((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 4))(l_602, (-10L), 0L, 0x24L)).xzxyyyzxzxzwxwxw, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))((((VECTOR(uint8_t, 4))((((VECTOR(uint32_t, 8))(0x3D127BB8L, (safe_lshift_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((((((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_607.s56)), 255UL, 0UL)).hi, ((VECTOR(uint8_t, 16))(p_1107->g_608.s79afc043797ce3a9)).s79))).even && l_609) || 4294967291UL) < (safe_add_func_uint32_t_u_u((p_45 ^ FAKE_DIVERGE(p_1107->local_2_offset, get_local_id(2), 10)), (*p_44)))), l_602)), FAKE_DIVERGE(p_1107->global_0_offset, get_global_id(0), 10))), l_612, ((VECTOR(uint32_t, 2))(0x8BE427F4L)), 4294967290UL, 1UL, 0xBAAE843DL)).s4 == (*p_1107->g_455)), 1UL, 0x95L, 254UL)).w | l_607.s3), 0x34L, p_45, 2L, (-1L), 0x22L, 0x29L, 0x0DL)).hi)).xxwzyyxyzyyzxxxx))).s5191)).hi, ((VECTOR(int8_t, 2))(0x0AL))))).xyyyxyyy, ((VECTOR(int8_t, 8))(7L))))).s5 <= 0x25L) & 0L) == (*p_1107->g_455)))) , (void*)0) == &p_1107->g_95) & l_607.s6)) , p_45)))), p_1107->g_114[0][7]));
                    for (l_268 = 0; (l_268 > 18); l_268++)
                    { /* block id: 256 */
                        VECTOR(int64_t, 4) l_632 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L));
                        int64_t *l_645 = (void*)0;
                        int64_t *l_646 = (void*)0;
                        int64_t *l_647[7][1][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                        uint16_t l_649 = 65531UL;
                        int16_t l_650 = 8L;
                        int i, j, k;
                        p_1107->g_652 |= ((l_651 = (!(safe_rshift_func_uint8_t_u_s((safe_sub_func_int8_t_s_s(((safe_rshift_func_int16_t_s_u((l_648[2][1] ^= (safe_lshift_func_int8_t_s_u(((safe_mul_func_uint16_t_u_u(((safe_mod_func_int8_t_s_s(((safe_unary_minus_func_uint32_t_u(((safe_unary_minus_func_int64_t_s(((*p_43) = ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(l_632.xzzx)), (*p_43), ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(p_1107->g_633.zzwzxwwy)).s57)).xyxy)).xyyzzwww, ((VECTOR(int64_t, 2))(0L, (-1L))).yyyxyxxx))), ((VECTOR(int64_t, 4))(p_1107->g_634.s4031)).zyxywwyw))).s63, ((VECTOR(int64_t, 2))((-7L), 1L))))), 0x3DA605AFD95703ADL)).s0))) >= l_615))) && (((VECTOR(uint8_t, 8))(p_1107->g_635.xyxxwzxy)).s7 >= ((VECTOR(uint8_t, 16))(l_636.sa295f0477aa763d0)).s6)), (+((p_45 , l_637) > (--p_1107->g_146.s4))))) != (safe_sub_func_uint64_t_u_u(((p_1107->g_559.x = ((p_45 <= (((((VECTOR(int16_t, 16))(0x3BCEL, (-3L), 0x5B81L, ((VECTOR(int16_t, 2))(0L, 0x120CL)), p_45, p_1107->g_114[0][5], ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 16))(l_644.yywzwwzxwzwwyywx)), ((VECTOR(uint8_t, 4))(p_45, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0xDDL, 0x2DL)), 0xD7L, 0UL)).z, 248UL, 0xE6L)).zzwwzxwxxzwwxzwx))).s96dd)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 16))((((((((*p_1107->g_580) = (*p_1107->g_580)) | (*p_1107->g_455)) | l_632.y) , 18446744073709551615UL) != 0x0C721C440735ACC6L) ^ l_602), ((VECTOR(int16_t, 2))(0x6EBAL)), 1L, 0x52D5L, 0x627AL, 0L, 0L, p_1107->g_114[0][5], p_1107->g_492.s2, l_644.w, ((VECTOR(int16_t, 2))(0x5A9CL)), (-10L), 0x0B88L, (-1L))).sb94f, ((VECTOR(int16_t, 4))(0x4E1DL))))).even)), p_1107->g_505, 0x244AL, 0L)).se ^ p_1107->g_475.x) , (void*)0) == (void*)0)) != p_45)) != (-1L)), l_632.y))), p_45)) | (*p_44)), p_1107->g_10))), p_1107->g_85)) | l_649), l_649)), l_650)))) , (*p_1107->g_269));
                        (*l_270) = l_650;
                        return l_653[3];
                    }
                }
            }
            else
            { /* block id: 268 */
                VECTOR(uint16_t, 4) l_673 = (VECTOR(uint16_t, 4))(65527UL, (VECTOR(uint16_t, 2))(65527UL, 4UL), 4UL);
                uint64_t *l_682 = &l_602;
                uint64_t *l_683 = (void*)0;
                uint64_t *l_684 = (void*)0;
                uint64_t *l_685[2];
                union U1 *l_687 = &p_1107->g_510;
                VECTOR(uint32_t, 2) l_700 = (VECTOR(uint32_t, 2))(4294967295UL, 0x8BFE896DL);
                int i;
                for (i = 0; i < 2; i++)
                    l_685[i] = &p_1107->g_95;
                (*p_1107->g_580) ^= (-9L);
                if ((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(l_654.yyxy)), ((VECTOR(uint32_t, 2))(l_655.yx)), 0UL, 0xE3DDF463L)).s5 , (((safe_lshift_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_u((safe_add_func_int8_t_s_s((safe_mul_func_int8_t_s_s((+((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 2))(p_1107->g_666.s17)).xyxyxxxxxxyxyxyx, ((VECTOR(int8_t, 2))(0x78L, 1L)).yyyxyxyxxyxxyyxy))).s1), ((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 2))(6L, 0x44L)).xyxyyyyx, ((VECTOR(int8_t, 16))(l_667.yzwxywywzwzwyxwy)).even))).s6)), (safe_sub_func_int64_t_s_s((safe_mod_func_int16_t_s_s(((l_672 , ((l_615 = ((((VECTOR(uint16_t, 16))(l_636.s5, ((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 8))(0xC865L, ((VECTOR(uint16_t, 2))(65533UL, 65528UL)), ((VECTOR(uint16_t, 2))(0x4614L, 65527UL)), ((VECTOR(uint16_t, 2))(l_673.xy)), 0x53B9L)).s4035362703313126, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(l_674.s0045)))))).zxxwyxzxzzyzxyxz))).s9, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(3UL, ((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 4))((((p_1107->g_492.s0 = ((((l_644.y > 6UL) && (*p_44)) , (((VECTOR(uint16_t, 2))(l_675.yx)).odd < FAKE_DIVERGE(p_1107->group_1_offset, get_group_id(1), 10))) <= (safe_lshift_func_uint8_t_u_s(0x15L, (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0x7D6049ECEA22B319L, 0x0E3891B8304EAB37L)).yyyxyxxxyyxyyyxy)))).s6 , (((((safe_rshift_func_int16_t_s_s(((safe_lshift_func_int8_t_s_s(p_45, 1)) && ((0xCB379C12CCD6D36DL && ((*l_682) ^= 1UL)) ^ p_45)), p_45)) | GROUP_DIVERGE(0, 1)) , (*p_43)) <= 18446744073709551615UL) <= (-1L))))))) ^ 0x7B34248356DAC873L) >= l_672), ((VECTOR(uint16_t, 2))(0x14D0L)), 65535UL)).even, (uint16_t)GROUP_DIVERGE(2, 1)))), 0x36DBL)).even)), 0UL, ((VECTOR(uint16_t, 2))(65535UL)), ((VECTOR(uint16_t, 2))(0x65AEL)), ((VECTOR(uint16_t, 4))(65533UL)), p_1107->g_489, 65534UL, 0x8AB0L)).sd >= l_673.z) > p_45)) > p_1107->g_318[0])) , 6L), l_673.w)), 0xEAF07AD88097E1E7L)))), 1)) || 9UL), p_45)) , p_1107->g_568.s6), 7)) < p_1107->g_114[0][1]) , 0x7BE43A84L)))
                { /* block id: 273 */
                    uint32_t l_686 = 0UL;
                    (*p_1107->g_580) &= (((l_686 , ((*l_536) = l_687)) != (void*)0) ^ (((*l_525) = (p_45 , l_688)) != (void*)0));
                    if ((safe_rshift_func_uint8_t_u_u(p_45, 0)))
                    { /* block id: 277 */
                        (*p_1107->g_580) ^= ((VECTOR(int32_t, 4))((l_691 == (((void*)0 == (*p_1107->g_374)) , l_693[1])), (((p_45 , ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(p_1107->g_694.sc2)).xxxxyyyyxyxyyyyx)).s9) , l_673.x) , ((*l_270) = (*p_44))), 0x3CD3F2B6L, (-1L))).w;
                    }
                    else
                    { /* block id: 280 */
                        int16_t l_706 = 0L;
                        (*l_270) = (safe_div_func_uint64_t_u_u(((safe_mod_func_int32_t_s_s(l_673.x, (((void*)0 == &p_1107->g_95) , ((p_1107->g_699[1][1][0] , 0xAE71FC07L) , ((VECTOR(uint32_t, 16))(safe_clamp_func(VECTOR(uint32_t, 16),uint32_t,((VECTOR(uint32_t, 2))(l_700.xy)).yxyyxyyxyxyxxyyx, (uint32_t)1UL, (uint32_t)FAKE_DIVERGE(p_1107->global_0_offset, get_global_id(0), 10)))).s1)))) , ((65531UL ^ (safe_div_func_int8_t_s_s(l_654.y, (((VECTOR(int16_t, 2))(l_703.s0f)).even || (safe_div_func_uint16_t_u_u((l_706 ^ l_686), p_45)))))) > (*p_43))), 18446744073709551615UL));
                        (*p_1107->g_580) = (l_644.x <= ((void*)0 != &p_1107->g_502[0]));
                        (*l_590) = &l_615;
                    }
                    if (l_672)
                        goto lbl_707;
                }
                else
                { /* block id: 286 */
                    if ((p_1107->g_220.f0 ^ (-1L)))
                    { /* block id: 287 */
                        return l_708;
                    }
                    else
                    { /* block id: 289 */
                        union U1 ***l_719 = &l_536;
                        int32_t l_724 = (-5L);
                        int32_t l_729 = 0x1197E703L;
                        (*p_1107->g_580) = (+(safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 16))(0x15692D5D4791CC0AL, ((VECTOR(int64_t, 8))((safe_sub_func_uint64_t_u_u(p_45, 8L)), (-10L), ((VECTOR(int64_t, 2))(l_713.sf9)), ((VECTOR(int64_t, 4))(l_714.s3733)))), (safe_sub_func_uint64_t_u_u((((safe_add_func_uint32_t_u_u((((*l_719) = (p_45 , &p_1107->g_509)) == (void*)0), (*p_44))) || ((*l_252)++)) , (safe_div_func_int64_t_s_s(l_724, (safe_add_func_int16_t_s_s((p_1107->g_182 = ((safe_rshift_func_uint16_t_u_u(l_729, GROUP_DIVERGE(0, 1))) , (safe_sub_func_int16_t_s_s(((safe_mul_func_int8_t_s_s(((safe_unary_minus_func_int64_t_s((((*l_525) = (void*)0) != p_44))) != p_1107->g_608.sd), l_735)) ^ p_45), p_45)))), l_700.y))))), 0x2BBE97F88745E496L)), l_729, 0x42A8C5A43485DBDDL, 0x12FA962B7F10ED44L, ((VECTOR(int64_t, 2))(0x7F6B5C7D88D4A1B4L)), (-1L))).sa, p_45)));
                        return l_653[3];
                    }
                }
                (*l_270) &= (safe_mul_func_int8_t_s_s((((p_45 || (+(p_45 <= (*p_44)))) | 18446744073709551615UL) == (safe_add_func_uint8_t_u_u(p_1107->g_502[0].f0, (&p_1107->g_114[0][1] != &p_1107->g_273)))), (safe_rshift_func_uint16_t_u_s(((safe_lshift_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u((*p_1107->g_455), (safe_unary_minus_func_int16_t_s((((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 2))(0x87B050DCL, 0x5199C0B3L)), ((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((safe_unary_minus_func_uint8_t_u(((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(p_1107->g_748.s55015200)).lo)), ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 16))(p_1107->g_182, 0xF0L, ((VECTOR(uint8_t, 2))(248UL)), l_749, l_750, ((VECTOR(uint8_t, 8))(0x75L)), 0UL, 0x76L)), ((VECTOR(uint8_t, 16))(0x77L))))))))).s7e1d))).y)) >= (*p_43)), ((VECTOR(uint32_t, 4))(4294967290UL)), (*p_1107->g_503), 0xD1F7B0BDL, 4294967292UL)).s35)).yyyy, ((VECTOR(uint32_t, 4))(4294967290UL))))).hi))), ((VECTOR(uint32_t, 4))(4294967293UL)), 7UL, 0x40EDA9A4L)).s2250645434631367, ((VECTOR(uint32_t, 16))(0x003DE8CDL))))).s0d28, ((VECTOR(uint32_t, 4))(4294967294UL))))).z , l_751))))), 7)) & (*p_1107->g_580)), 13))));
            }
            (*p_1107->g_754) = l_752[0][2];
            for (p_1107->g_272 = (-2); (p_1107->g_272 == (-21)); p_1107->g_272 = safe_sub_func_uint16_t_u_u(p_1107->g_272, 5))
            { /* block id: 303 */
                return l_759[0];
            }
        }
        for (p_1107->g_510.f2 = 0; (p_1107->g_510.f2 <= 18); ++p_1107->g_510.f2)
        { /* block id: 309 */
            return p_43;
        }
        for (l_310 = 26; (l_310 >= (-23)); l_310--)
        { /* block id: 314 */
            return l_708;
        }
        (*p_1107->g_764) = l_536;
    }
    return l_708;
}


/* ------------------------------------------ */
/* 
 * reads : p_1107->g_2 p_1107->g_7 p_1107->g_220 p_1107->g_221 p_1107->g_114 p_1107->g_238 p_1107->g_220.f0 p_1107->g_240 p_1107->g_246
 * writes: p_1107->g_7 p_1107->g_221 p_1107->g_182 p_1107->g_132 p_1107->g_238 p_1107->g_246
 */
int64_t * func_46(int32_t  p_47, int32_t * p_48, int8_t  p_49, int64_t * p_50, struct S3 * p_1107)
{ /* block id: 100 */
    int16_t l_210 = (-7L);
    VECTOR(int64_t, 4) l_211 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x7809E6970BE373B6L), 0x7809E6970BE373B6L);
    int64_t *l_212 = &p_1107->g_105;
    int32_t *l_213 = &p_1107->g_7;
    VECTOR(int8_t, 4) l_222 = (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), 0x5AL), 0x5AL);
    VECTOR(int8_t, 4) l_223 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x44L), 0x44L);
    VECTOR(int8_t, 16) l_228 = (VECTOR(int8_t, 16))(0x14L, (VECTOR(int8_t, 4))(0x14L, (VECTOR(int8_t, 2))(0x14L, 0x24L), 0x24L), 0x24L, 0x14L, 0x24L, (VECTOR(int8_t, 2))(0x14L, 0x24L), (VECTOR(int8_t, 2))(0x14L, 0x24L), 0x14L, 0x24L, 0x14L, 0x24L);
    int16_t *l_229 = (void*)0;
    uint32_t l_230 = 0xC164ED75L;
    int32_t l_243 = 0x1E0E9AD6L;
    int32_t l_244 = 0x5399AF9CL;
    int32_t l_245[1];
    int i;
    for (i = 0; i < 1; i++)
        l_245[i] = 0x006B9A27L;
    (*l_213) = (p_1107->g_2 >= (safe_add_func_uint8_t_u_u(((!p_47) , 0xFFL), (safe_mod_func_uint64_t_u_u((((~(7UL >= ((0xD5EC58B0227ADE13L < l_210) , ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(l_211.xzyw)).wxwzywyx)).s3))) & 0x5D964B4B9CE0AD08L) & (((0x72CDL >= FAKE_DIVERGE(p_1107->local_2_offset, get_local_id(2), 10)) , l_212) != (void*)0)), l_211.z)))));
    if (((safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((*l_213) || (safe_mod_func_uint32_t_u_u(0x8B384F36L, (p_1107->g_220 , (0x2C8DL && 1L))))), ((VECTOR(int8_t, 8))(0x2EL, 0L, ((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 4))(p_1107->g_221.s926d)).hi, (int8_t)((VECTOR(int8_t, 4))(l_222.xxxy)).x))), (p_1107->g_221.sb = ((VECTOR(int8_t, 8))(l_223.wzwwxxxw)).s5), 1L, 0L, (-10L))).s1)), ((((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 16))(((p_1107->g_182 = (safe_div_func_int8_t_s_s(((VECTOR(int8_t, 8))(l_228.se930141a)).s7, (((VECTOR(uint8_t, 4))(0xEEL, 0xA7L, 0x27L, 251UL)).w | (0x6BL > (((void*)0 == &p_1107->g_7) != p_49)))))) == p_47), p_49, 6L, 0x78C9L, p_1107->g_114[0][0], ((VECTOR(int16_t, 8))(4L)), ((VECTOR(int16_t, 2))(0x68F2L)), 0x085BL)).sb, p_47)) <= FAKE_DIVERGE(p_1107->group_1_offset, get_group_id(1), 10)) , p_47) ^ l_230))) != 1L))
    { /* block id: 104 */
        uint32_t *l_233 = (void*)0;
        uint32_t *l_234 = &p_1107->g_132;
        uint32_t *l_235 = (void*)0;
        uint32_t *l_236 = (void*)0;
        uint32_t *l_237 = &p_1107->g_238;
        int32_t l_239 = 0x62D552EAL;
        l_213 = (void*)0;
        p_1107->g_7 |= (((*l_237) &= ((*l_234) = (safe_add_func_int32_t_s_s(0x7C8D7184L, p_49)))) , ((255UL | p_1107->g_114[0][7]) != p_1107->g_220.f0));
        (*p_1107->g_240) = l_239;
    }
    else
    { /* block id: 110 */
        int32_t *l_241 = (void*)0;
        int32_t *l_242[1];
        int i;
        for (i = 0; i < 1; i++)
            l_242[i] = &p_1107->g_7;
        p_1107->g_246++;
    }
    return l_212;
}


/* ------------------------------------------ */
/* 
 * reads : p_1107->g_7
 * writes: p_1107->g_7
 */
int16_t  func_58(int32_t  p_59, int64_t  p_60, int64_t  p_61, struct S3 * p_1107)
{ /* block id: 96 */
    int32_t l_201 = 0L;
    int32_t *l_202 = &p_1107->g_7;
    (*l_202) ^= l_201;
    return (*l_202);
}


/* ------------------------------------------ */
/* 
 * reads : p_1107->g_7 p_1107->g_85 p_1107->g_114 p_1107->g_122 p_1107->g_3 p_1107->g_105 p_1107->g_132 p_1107->g_10 p_1107->g_146 p_1107->g_22 p_1107->g_2 p_1107->g_182
 * writes: p_1107->g_114 p_1107->g_122 p_1107->g_132 p_1107->g_85 p_1107->g_7 p_1107->g_2 p_1107->g_182 p_1107->g_194
 */
int64_t * func_66(int32_t  p_67, int32_t * p_68, struct S3 * p_1107)
{ /* block id: 32 */
    int64_t *l_104 = &p_1107->g_105;
    uint32_t l_108 = 4294967295UL;
    int32_t *l_109 = &p_1107->g_3;
    int32_t **l_196 = &l_109;
    uint64_t l_197 = 0xFF400B9759969081L;
    volatile int32_t **l_198 = (void*)0;
    volatile int32_t *l_200 = &p_1107->g_2;
    volatile int32_t **l_199 = &l_200;
    (*l_196) = func_98(l_104, p_67, p_1107->g_7, &p_1107->g_3, (safe_sub_func_int16_t_s_s(l_108, (l_109 != l_109))), p_1107);
    l_197 = 0x2813CE37L;
    (*l_199) = &p_1107->g_2;
    return l_104;
}


/* ------------------------------------------ */
/* 
 * reads : p_1107->g_74 p_1107->g_7 p_1107->g_10 p_1107->g_85 p_1107->g_95
 * writes: p_1107->g_7 p_1107->g_85 p_1107->g_95
 */
int32_t * func_70(int64_t  p_71, uint64_t  p_72, int64_t * p_73, struct S3 * p_1107)
{ /* block id: 11 */
    int32_t *l_75[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int16_t l_91 = 6L;
    int i;
    if ((p_1107->g_7 = (p_73 != p_1107->g_74)))
    { /* block id: 13 */
        p_1107->g_7 ^= (safe_lshift_func_uint8_t_u_s(0xFFL, (safe_lshift_func_uint8_t_u_s(250UL, 4))));
    }
    else
    { /* block id: 15 */
        uint32_t l_86 = 1UL;
        int32_t l_90 = 0x58F1AF85L;
        int32_t l_92 = 1L;
        int32_t l_93 = 1L;
        int32_t l_94 = 3L;
        for (p_1107->g_7 = 18; (p_1107->g_7 <= (-28)); p_1107->g_7--)
        { /* block id: 18 */
            int8_t *l_84 = &p_1107->g_85;
            int32_t *l_89 = (void*)0;
            if ((safe_add_func_int8_t_s_s(p_72, ((*l_84) &= p_1107->g_10))))
            { /* block id: 20 */
                ++l_86;
                return l_89;
            }
            else
            { /* block id: 23 */
                l_90 = p_71;
                return &p_1107->g_3;
            }
        }
        p_1107->g_95--;
        l_92 = 0L;
    }
    return l_75[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1107->g_85 p_1107->g_114 p_1107->g_122 p_1107->g_3 p_1107->g_105 p_1107->g_7 p_1107->g_132 p_1107->g_10 p_1107->g_146 p_1107->g_22 p_1107->g_2 p_1107->g_182
 * writes: p_1107->g_114 p_1107->g_122 p_1107->g_132 p_1107->g_85 p_1107->g_7 p_1107->g_2 p_1107->g_182 p_1107->g_194
 */
int32_t * func_98(int64_t * p_99, int8_t  p_100, uint32_t  p_101, int32_t * p_102, uint64_t  p_103, struct S3 * p_1107)
{ /* block id: 33 */
    int8_t l_110 = 0x48L;
    uint8_t *l_113 = &p_1107->g_114[0][1];
    int64_t *l_119[7];
    uint8_t *l_120 = (void*)0;
    uint8_t *l_121 = &p_1107->g_122;
    uint32_t *l_131 = &p_1107->g_132;
    int32_t l_133 = (-8L);
    VECTOR(int64_t, 8) l_157 = (VECTOR(int64_t, 8))(0x4055586372135583L, (VECTOR(int64_t, 4))(0x4055586372135583L, (VECTOR(int64_t, 2))(0x4055586372135583L, 0L), 0L), 0L, 0x4055586372135583L, 0L);
    VECTOR(int32_t, 2) l_169 = (VECTOR(int32_t, 2))(0x691350E2L, (-1L));
    int32_t *l_195 = &l_133;
    int i;
    for (i = 0; i < 7; i++)
        l_119[i] = (void*)0;
lbl_168:
    if (((((p_1107->g_85 & l_110) || ((safe_mul_func_uint8_t_u_u((++(*l_113)), ((*l_121) &= (safe_rshift_func_uint16_t_u_s((~l_110), (l_119[3] == &p_1107->g_105)))))) & 1L)) | 0x18DFL) >= (((safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1107->local_0_offset, get_local_id(0), 10), 3)) && (safe_rshift_func_int8_t_s_s((safe_sub_func_uint32_t_u_u((l_133 = ((*l_131) |= (((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 8))(((l_110 ^ (safe_div_func_int32_t_s_s(((-8L) <= (*p_102)), p_1107->g_105))) , l_110), (-1L), (*p_99), ((VECTOR(int64_t, 2))(3L)), ((VECTOR(int64_t, 2))(2L)), 0x195E0419DFFB93C3L)).s5634620763163557, ((VECTOR(int64_t, 16))((-10L)))))).sb , p_1107->g_7))), 0x35970AEDL)), 7))) != l_110)))
    { /* block id: 38 */
        uint32_t l_136 = 4294967290UL;
        VECTOR(uint16_t, 8) l_145 = (VECTOR(uint16_t, 8))(7UL, (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 65526UL), 65526UL), 65526UL, 7UL, 65526UL);
        VECTOR(uint8_t, 2) l_151 = (VECTOR(uint8_t, 2))(247UL, 0xCDL);
        uint8_t l_154 = 0x6BL;
        int32_t *l_160[10][5] = {{&p_1107->g_3,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7},{&p_1107->g_3,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7},{&p_1107->g_3,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7},{&p_1107->g_3,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7},{&p_1107->g_3,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7},{&p_1107->g_3,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7},{&p_1107->g_3,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7},{&p_1107->g_3,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7},{&p_1107->g_3,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7},{&p_1107->g_3,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7}};
        int i, j;
        p_1107->g_7 |= (safe_mul_func_int8_t_s_s((p_1107->g_85 |= (l_136 < ((*l_131) = (safe_lshift_func_uint16_t_u_u((p_1107->g_3 < ((0xE453FC63L != ((safe_mul_func_uint8_t_u_u(p_1107->g_10, ((*l_121) = ((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 16))(0x9328L, 0UL, ((VECTOR(uint16_t, 4))(l_145.s6354)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(p_1107->g_146.s4165656032032317)).s63)), (safe_lshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(l_151.yxxyxxxy)).s7, 5)), l_136)), ((VECTOR(uint16_t, 4))((safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), l_154)), ((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(2UL, (safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 8))(l_157.s25671652)).s3, p_1107->g_22.x)), ((safe_rshift_func_uint8_t_u_s(((void*)0 == &p_1107->g_132), l_157.s4)) >= (*p_102)), ((VECTOR(uint16_t, 4))(65535UL)), 0xDF4EL)))).s15, ((VECTOR(uint16_t, 2))(7UL))))), 65531UL)), ((VECTOR(uint16_t, 2))(5UL)), 65534UL)).s2e, ((VECTOR(uint16_t, 2))(1UL))))).odd, p_101)) > FAKE_DIVERGE(p_1107->global_0_offset, get_global_id(0), 10))))) || l_151.y)) == p_101)), 1))))), 5L));
        p_1107->g_2 &= l_145.s7;
        p_1107->g_7 = (GROUP_DIVERGE(0, 1) != (-6L));
    }
    else
    { /* block id: 45 */
        return p_102;
    }
    for (p_1107->g_7 = (-22); (p_1107->g_7 > (-22)); p_1107->g_7 = safe_add_func_uint8_t_u_u(p_1107->g_7, 5))
    { /* block id: 50 */
        int64_t l_191 = (-1L);
        for (p_1107->g_122 = (-5); (p_1107->g_122 != 3); p_1107->g_122 = safe_add_func_uint8_t_u_u(p_1107->g_122, 9))
        { /* block id: 53 */
            int32_t l_192 = 0x2D123397L;
            int32_t *l_193[6] = {(void*)0,&p_1107->g_7,(void*)0,(void*)0,&p_1107->g_7,(void*)0};
            int i;
            for (p_1107->g_132 = (-12); (p_1107->g_132 < 60); p_1107->g_132 = safe_add_func_uint64_t_u_u(p_1107->g_132, 6))
            { /* block id: 56 */
                int8_t l_167 = 0x17L;
                int32_t *l_170 = &l_133;
                l_133 &= l_167;
                p_1107->g_2 = ((void*)0 != &p_1107->g_2);
                if (p_1107->g_122)
                    goto lbl_168;
                (*l_170) = ((VECTOR(int32_t, 2))(l_169.xy)).even;
            }
            for (p_103 = 0; (p_103 < 1); ++p_103)
            { /* block id: 64 */
                int32_t *l_173 = (void*)0;
                int32_t *l_175 = (void*)0;
                int32_t *l_176 = (void*)0;
                int32_t *l_177[6][3][10] = {{{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0},{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0},{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0}},{{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0},{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0},{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0}},{{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0},{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0},{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0}},{{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0},{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0},{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0}},{{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0},{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0},{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0}},{{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0},{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0},{&p_1107->g_7,(void*)0,&l_133,&p_1107->g_7,&p_1107->g_3,&p_1107->g_7,(void*)0,&p_1107->g_7,&p_1107->g_7,(void*)0}}};
                VECTOR(int8_t, 16) l_180 = (VECTOR(int8_t, 16))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), 0x7FL), 0x7FL), 0x7FL, (-3L), 0x7FL, (VECTOR(int8_t, 2))((-3L), 0x7FL), (VECTOR(int8_t, 2))((-3L), 0x7FL), (-3L), 0x7FL, (-3L), 0x7FL);
                int i, j, k;
                p_1107->g_2 ^= (&p_1107->g_132 == l_131);
                for (p_101 = (-20); (p_101 != 3); ++p_101)
                { /* block id: 68 */
                    uint32_t l_184 = 7UL;
                    if (l_180.se)
                    { /* block id: 69 */
                        uint32_t l_181 = 6UL;
                        int32_t l_183 = 0x258287A3L;
                        if ((*p_102))
                            break;
                        l_183 |= (p_1107->g_182 = l_181);
                    }
                    else
                    { /* block id: 73 */
                        l_184++;
                    }
                    for (p_1107->g_182 = 0; (p_1107->g_182 <= 17); p_1107->g_182 = safe_add_func_uint16_t_u_u(p_1107->g_182, 5))
                    { /* block id: 78 */
                        l_191 ^= (safe_mod_func_int16_t_s_s((-4L), p_1107->g_146.s7));
                    }
                    p_1107->g_2 = l_192;
                    p_1107->g_2 &= (*p_102);
                }
            }
            if (p_1107->g_146.s6)
                continue;
            p_1107->g_2 = (p_1107->g_194 = l_192);
        }
        return p_102;
    }
    return &p_1107->g_7;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_1108;
    struct S3* p_1107 = &c_1108;
    struct S3 c_1109 = {
        0x65E08CCCL, // p_1107->g_2
        0x1D8F8F57L, // p_1107->g_3
        3L, // p_1107->g_7
        65529UL, // p_1107->g_10
        8UL, // p_1107->g_21
        (VECTOR(int32_t, 2))(0x27AB5BF7L, 0x15A52772L), // p_1107->g_22
        (void*)0, // p_1107->g_74
        0x59L, // p_1107->g_85
        18446744073709551613UL, // p_1107->g_95
        (-10L), // p_1107->g_105
        {{254UL,254UL,254UL,254UL,254UL,254UL,254UL,254UL}}, // p_1107->g_114
        0xA3L, // p_1107->g_122
        4294967294UL, // p_1107->g_132
        (VECTOR(uint16_t, 8))(65533UL, (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0xE9FDL), 0xE9FDL), 0xE9FDL, 65533UL, 0xE9FDL), // p_1107->g_146
        (void*)0, // p_1107->g_174
        0x2DFAL, // p_1107->g_182
        0x66L, // p_1107->g_194
        {6L}, // p_1107->g_220
        (VECTOR(int8_t, 16))(0x76L, (VECTOR(int8_t, 4))(0x76L, (VECTOR(int8_t, 2))(0x76L, 0x3EL), 0x3EL), 0x3EL, 0x76L, 0x3EL, (VECTOR(int8_t, 2))(0x76L, 0x3EL), (VECTOR(int8_t, 2))(0x76L, 0x3EL), 0x76L, 0x3EL, 0x76L, 0x3EL), // p_1107->g_221
        0UL, // p_1107->g_238
        &p_1107->g_7, // p_1107->g_240
        0xE8F5L, // p_1107->g_246
        &p_1107->g_7, // p_1107->g_269
        8L, // p_1107->g_272
        0xB5L, // p_1107->g_273
        (VECTOR(int64_t, 16))(0x0ABBFA448F8A4C05L, (VECTOR(int64_t, 4))(0x0ABBFA448F8A4C05L, (VECTOR(int64_t, 2))(0x0ABBFA448F8A4C05L, 0x76E99181E83345E1L), 0x76E99181E83345E1L), 0x76E99181E83345E1L, 0x0ABBFA448F8A4C05L, 0x76E99181E83345E1L, (VECTOR(int64_t, 2))(0x0ABBFA448F8A4C05L, 0x76E99181E83345E1L), (VECTOR(int64_t, 2))(0x0ABBFA448F8A4C05L, 0x76E99181E83345E1L), 0x0ABBFA448F8A4C05L, 0x76E99181E83345E1L, 0x0ABBFA448F8A4C05L, 0x76E99181E83345E1L), // p_1107->g_281
        {&p_1107->g_85}, // p_1107->g_306
        {0xB1L,0xB1L}, // p_1107->g_318
        {{{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L}},{{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L}},{{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L},{0x64ED354CL,0x3812A125L,0x33DE2EC5L}}}, // p_1107->g_328
        (VECTOR(uint64_t, 16))(4UL, (VECTOR(uint64_t, 4))(4UL, (VECTOR(uint64_t, 2))(4UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 4UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(4UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(4UL, 18446744073709551615UL), 4UL, 18446744073709551615UL, 4UL, 18446744073709551615UL), // p_1107->g_331
        (void*)0, // p_1107->g_375
        &p_1107->g_375, // p_1107->g_374
        {0x49FEDD757BACD342L}, // p_1107->g_403
        0x2F6792E3L, // p_1107->g_404
        (VECTOR(uint32_t, 4))(6UL, (VECTOR(uint32_t, 2))(6UL, 1UL), 1UL), // p_1107->g_409
        &p_1107->g_238, // p_1107->g_455
        (VECTOR(int32_t, 16))(0x54720638L, (VECTOR(int32_t, 4))(0x54720638L, (VECTOR(int32_t, 2))(0x54720638L, 1L), 1L), 1L, 0x54720638L, 1L, (VECTOR(int32_t, 2))(0x54720638L, 1L), (VECTOR(int32_t, 2))(0x54720638L, 1L), 0x54720638L, 1L, 0x54720638L, 1L), // p_1107->g_474
        (VECTOR(uint32_t, 2))(0xDC1C526BL, 1UL), // p_1107->g_475
        0x4E4AA5A9L, // p_1107->g_489
        (VECTOR(uint64_t, 8))(8UL, (VECTOR(uint64_t, 4))(8UL, (VECTOR(uint64_t, 2))(8UL, 0x24DED77D4290EE5FL), 0x24DED77D4290EE5FL), 0x24DED77D4290EE5FL, 8UL, 0x24DED77D4290EE5FL), // p_1107->g_492
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 246UL), 246UL), // p_1107->g_498
        (VECTOR(uint8_t, 2))(0x40L, 2UL), // p_1107->g_499
        {{0x77CB0488DA91FBFDL},{0x77CB0488DA91FBFDL},{0x77CB0488DA91FBFDL},{0x77CB0488DA91FBFDL}}, // p_1107->g_502
        &p_1107->g_328[0][0][2], // p_1107->g_503
        (-1L), // p_1107->g_505
        {8L}, // p_1107->g_510
        &p_1107->g_510, // p_1107->g_509
        {&p_1107->g_509,&p_1107->g_509,&p_1107->g_509,&p_1107->g_509,&p_1107->g_509,&p_1107->g_509}, // p_1107->g_508
        (void*)0, // p_1107->g_511
        &p_1107->g_509, // p_1107->g_512
        1UL, // p_1107->g_535
        &p_1107->g_535, // p_1107->g_534
        (VECTOR(int32_t, 2))((-4L), 0x4976DBF2L), // p_1107->g_558
        (VECTOR(int64_t, 4))(0x069578FEB4CBCF08L, (VECTOR(int64_t, 2))(0x069578FEB4CBCF08L, 0L), 0L), // p_1107->g_559
        (VECTOR(int16_t, 8))(0x25DAL, (VECTOR(int16_t, 4))(0x25DAL, (VECTOR(int16_t, 2))(0x25DAL, 0x630CL), 0x630CL), 0x630CL, 0x25DAL, 0x630CL), // p_1107->g_567
        (VECTOR(int16_t, 8))(0x07A7L, (VECTOR(int16_t, 4))(0x07A7L, (VECTOR(int16_t, 2))(0x07A7L, (-3L)), (-3L)), (-3L), 0x07A7L, (-3L)), // p_1107->g_568
        {0x65419767EAAB5C72L}, // p_1107->g_570
        &p_1107->g_505, // p_1107->g_580
        (VECTOR(uint8_t, 16))(2UL, (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 0x1BL), 0x1BL), 0x1BL, 2UL, 0x1BL, (VECTOR(uint8_t, 2))(2UL, 0x1BL), (VECTOR(uint8_t, 2))(2UL, 0x1BL), 2UL, 0x1BL, 2UL, 0x1BL), // p_1107->g_608
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 1L), 1L), // p_1107->g_633
        (VECTOR(int64_t, 8))(0x5FDC7472D0E3FC21L, (VECTOR(int64_t, 4))(0x5FDC7472D0E3FC21L, (VECTOR(int64_t, 2))(0x5FDC7472D0E3FC21L, (-1L)), (-1L)), (-1L), 0x5FDC7472D0E3FC21L, (-1L)), // p_1107->g_634
        (VECTOR(uint8_t, 4))(0xB4L, (VECTOR(uint8_t, 2))(0xB4L, 1UL), 1UL), // p_1107->g_635
        1UL, // p_1107->g_652
        (VECTOR(int8_t, 8))(0x60L, (VECTOR(int8_t, 4))(0x60L, (VECTOR(int8_t, 2))(0x60L, (-2L)), (-2L)), (-2L), 0x60L, (-2L)), // p_1107->g_666
        {0x099D83587F842622L}, // p_1107->g_692
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int32_t, 2))(0L, 1L), (VECTOR(int32_t, 2))(0L, 1L), 0L, 1L, 0L, 1L), // p_1107->g_694
        {{{{0x73F0B92987560464L}},{{0x73F0B92987560464L}},{{0x73F0B92987560464L}},{{0x73F0B92987560464L}}},{{{0x73F0B92987560464L}},{{0x73F0B92987560464L}},{{0x73F0B92987560464L}},{{0x73F0B92987560464L}}}}, // p_1107->g_699
        (VECTOR(uint8_t, 8))(252UL, (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 1UL), 1UL), 1UL, 252UL, 1UL), // p_1107->g_748
        &p_1107->g_95, // p_1107->g_756
        &p_1107->g_756, // p_1107->g_755
        &p_1107->g_755, // p_1107->g_754
        &p_1107->g_509, // p_1107->g_765
        &p_1107->g_765, // p_1107->g_764
        {0x6CB15F39CA0C61FEL}, // p_1107->g_769
        {{&p_1107->g_580},{&p_1107->g_580},{&p_1107->g_580},{&p_1107->g_580},{&p_1107->g_580}}, // p_1107->g_780
        (VECTOR(int8_t, 2))(1L, 0x0FL), // p_1107->g_811
        0L, // p_1107->g_842
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x05FBE1A9A333A6BDL), 0x05FBE1A9A333A6BDL), // p_1107->g_866
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), // p_1107->g_886
        &p_1107->g_455, // p_1107->g_892
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x77CD7183L), 0x77CD7183L), // p_1107->g_895
        {-1L}, // p_1107->g_896
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x0DFF99A0L), 0x0DFF99A0L), 0x0DFF99A0L, 1L, 0x0DFF99A0L), // p_1107->g_897
        (VECTOR(int32_t, 16))(0x4A36AF13L, (VECTOR(int32_t, 4))(0x4A36AF13L, (VECTOR(int32_t, 2))(0x4A36AF13L, (-10L)), (-10L)), (-10L), 0x4A36AF13L, (-10L), (VECTOR(int32_t, 2))(0x4A36AF13L, (-10L)), (VECTOR(int32_t, 2))(0x4A36AF13L, (-10L)), 0x4A36AF13L, (-10L), 0x4A36AF13L, (-10L)), // p_1107->g_899
        (VECTOR(uint64_t, 16))(18446744073709551614UL, (VECTOR(uint64_t, 4))(18446744073709551614UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 0x84EA60ED189104BCL), 0x84EA60ED189104BCL), 0x84EA60ED189104BCL, 18446744073709551614UL, 0x84EA60ED189104BCL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 0x84EA60ED189104BCL), (VECTOR(uint64_t, 2))(18446744073709551614UL, 0x84EA60ED189104BCL), 18446744073709551614UL, 0x84EA60ED189104BCL, 18446744073709551614UL, 0x84EA60ED189104BCL), // p_1107->g_901
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-10L)), (-10L)), // p_1107->g_912
        (VECTOR(int64_t, 4))(0x532D2F4943D91781L, (VECTOR(int64_t, 2))(0x532D2F4943D91781L, 0x6356D45089289EA1L), 0x6356D45089289EA1L), // p_1107->g_914
        (VECTOR(int64_t, 4))(0x2A8E22FB3AFDA1D6L, (VECTOR(int64_t, 2))(0x2A8E22FB3AFDA1D6L, 0x588B5C65C29D53F6L), 0x588B5C65C29D53F6L), // p_1107->g_917
        &p_1107->g_692, // p_1107->g_944
        (VECTOR(int8_t, 2))((-6L), (-6L)), // p_1107->g_962
        (VECTOR(int16_t, 4))(0x4F7EL, (VECTOR(int16_t, 2))(0x4F7EL, 0L), 0L), // p_1107->g_1013
        (VECTOR(int16_t, 2))(0L, 0L), // p_1107->g_1020
        (VECTOR(int16_t, 8))(3L, (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, 0x04A2L), 0x04A2L), 0x04A2L, 3L, 0x04A2L), // p_1107->g_1021
        {4L}, // p_1107->g_1061
        (VECTOR(uint16_t, 2))(1UL, 0x1060L), // p_1107->g_1071
        (VECTOR(uint16_t, 4))(0x1848L, (VECTOR(uint16_t, 2))(0x1848L, 4UL), 4UL), // p_1107->g_1074
        4L, // p_1107->g_1078
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x7B0BL), 0x7B0BL), // p_1107->g_1079
        (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0x44L), 0x44L), // p_1107->g_1080
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xD8L), 0xD8L), // p_1107->g_1081
        {0x2E548FD4L,1L,0x2E548FD4L,0x2E548FD4L,1L,0x2E548FD4L,0x2E548FD4L,1L}, // p_1107->g_1101
        sequence_input[get_global_id(0)], // p_1107->global_0_offset
        sequence_input[get_global_id(1)], // p_1107->global_1_offset
        sequence_input[get_global_id(2)], // p_1107->global_2_offset
        sequence_input[get_local_id(0)], // p_1107->local_0_offset
        sequence_input[get_local_id(1)], // p_1107->local_1_offset
        sequence_input[get_local_id(2)], // p_1107->local_2_offset
        sequence_input[get_group_id(0)], // p_1107->group_0_offset
        sequence_input[get_group_id(1)], // p_1107->group_1_offset
        sequence_input[get_group_id(2)], // p_1107->group_2_offset
    };
    c_1108 = c_1109;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1107);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1107->g_2, "p_1107->g_2", print_hash_value);
    transparent_crc(p_1107->g_3, "p_1107->g_3", print_hash_value);
    transparent_crc(p_1107->g_7, "p_1107->g_7", print_hash_value);
    transparent_crc(p_1107->g_10, "p_1107->g_10", print_hash_value);
    transparent_crc(p_1107->g_21, "p_1107->g_21", print_hash_value);
    transparent_crc(p_1107->g_22.x, "p_1107->g_22.x", print_hash_value);
    transparent_crc(p_1107->g_22.y, "p_1107->g_22.y", print_hash_value);
    transparent_crc(p_1107->g_85, "p_1107->g_85", print_hash_value);
    transparent_crc(p_1107->g_95, "p_1107->g_95", print_hash_value);
    transparent_crc(p_1107->g_105, "p_1107->g_105", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1107->g_114[i][j], "p_1107->g_114[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1107->g_122, "p_1107->g_122", print_hash_value);
    transparent_crc(p_1107->g_132, "p_1107->g_132", print_hash_value);
    transparent_crc(p_1107->g_146.s0, "p_1107->g_146.s0", print_hash_value);
    transparent_crc(p_1107->g_146.s1, "p_1107->g_146.s1", print_hash_value);
    transparent_crc(p_1107->g_146.s2, "p_1107->g_146.s2", print_hash_value);
    transparent_crc(p_1107->g_146.s3, "p_1107->g_146.s3", print_hash_value);
    transparent_crc(p_1107->g_146.s4, "p_1107->g_146.s4", print_hash_value);
    transparent_crc(p_1107->g_146.s5, "p_1107->g_146.s5", print_hash_value);
    transparent_crc(p_1107->g_146.s6, "p_1107->g_146.s6", print_hash_value);
    transparent_crc(p_1107->g_146.s7, "p_1107->g_146.s7", print_hash_value);
    transparent_crc(p_1107->g_182, "p_1107->g_182", print_hash_value);
    transparent_crc(p_1107->g_194, "p_1107->g_194", print_hash_value);
    transparent_crc(p_1107->g_220.f0, "p_1107->g_220.f0", print_hash_value);
    transparent_crc(p_1107->g_221.s0, "p_1107->g_221.s0", print_hash_value);
    transparent_crc(p_1107->g_221.s1, "p_1107->g_221.s1", print_hash_value);
    transparent_crc(p_1107->g_221.s2, "p_1107->g_221.s2", print_hash_value);
    transparent_crc(p_1107->g_221.s3, "p_1107->g_221.s3", print_hash_value);
    transparent_crc(p_1107->g_221.s4, "p_1107->g_221.s4", print_hash_value);
    transparent_crc(p_1107->g_221.s5, "p_1107->g_221.s5", print_hash_value);
    transparent_crc(p_1107->g_221.s6, "p_1107->g_221.s6", print_hash_value);
    transparent_crc(p_1107->g_221.s7, "p_1107->g_221.s7", print_hash_value);
    transparent_crc(p_1107->g_221.s8, "p_1107->g_221.s8", print_hash_value);
    transparent_crc(p_1107->g_221.s9, "p_1107->g_221.s9", print_hash_value);
    transparent_crc(p_1107->g_221.sa, "p_1107->g_221.sa", print_hash_value);
    transparent_crc(p_1107->g_221.sb, "p_1107->g_221.sb", print_hash_value);
    transparent_crc(p_1107->g_221.sc, "p_1107->g_221.sc", print_hash_value);
    transparent_crc(p_1107->g_221.sd, "p_1107->g_221.sd", print_hash_value);
    transparent_crc(p_1107->g_221.se, "p_1107->g_221.se", print_hash_value);
    transparent_crc(p_1107->g_221.sf, "p_1107->g_221.sf", print_hash_value);
    transparent_crc(p_1107->g_238, "p_1107->g_238", print_hash_value);
    transparent_crc(p_1107->g_246, "p_1107->g_246", print_hash_value);
    transparent_crc(p_1107->g_272, "p_1107->g_272", print_hash_value);
    transparent_crc(p_1107->g_273, "p_1107->g_273", print_hash_value);
    transparent_crc(p_1107->g_281.s0, "p_1107->g_281.s0", print_hash_value);
    transparent_crc(p_1107->g_281.s1, "p_1107->g_281.s1", print_hash_value);
    transparent_crc(p_1107->g_281.s2, "p_1107->g_281.s2", print_hash_value);
    transparent_crc(p_1107->g_281.s3, "p_1107->g_281.s3", print_hash_value);
    transparent_crc(p_1107->g_281.s4, "p_1107->g_281.s4", print_hash_value);
    transparent_crc(p_1107->g_281.s5, "p_1107->g_281.s5", print_hash_value);
    transparent_crc(p_1107->g_281.s6, "p_1107->g_281.s6", print_hash_value);
    transparent_crc(p_1107->g_281.s7, "p_1107->g_281.s7", print_hash_value);
    transparent_crc(p_1107->g_281.s8, "p_1107->g_281.s8", print_hash_value);
    transparent_crc(p_1107->g_281.s9, "p_1107->g_281.s9", print_hash_value);
    transparent_crc(p_1107->g_281.sa, "p_1107->g_281.sa", print_hash_value);
    transparent_crc(p_1107->g_281.sb, "p_1107->g_281.sb", print_hash_value);
    transparent_crc(p_1107->g_281.sc, "p_1107->g_281.sc", print_hash_value);
    transparent_crc(p_1107->g_281.sd, "p_1107->g_281.sd", print_hash_value);
    transparent_crc(p_1107->g_281.se, "p_1107->g_281.se", print_hash_value);
    transparent_crc(p_1107->g_281.sf, "p_1107->g_281.sf", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1107->g_318[i], "p_1107->g_318[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1107->g_328[i][j][k], "p_1107->g_328[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1107->g_331.s0, "p_1107->g_331.s0", print_hash_value);
    transparent_crc(p_1107->g_331.s1, "p_1107->g_331.s1", print_hash_value);
    transparent_crc(p_1107->g_331.s2, "p_1107->g_331.s2", print_hash_value);
    transparent_crc(p_1107->g_331.s3, "p_1107->g_331.s3", print_hash_value);
    transparent_crc(p_1107->g_331.s4, "p_1107->g_331.s4", print_hash_value);
    transparent_crc(p_1107->g_331.s5, "p_1107->g_331.s5", print_hash_value);
    transparent_crc(p_1107->g_331.s6, "p_1107->g_331.s6", print_hash_value);
    transparent_crc(p_1107->g_331.s7, "p_1107->g_331.s7", print_hash_value);
    transparent_crc(p_1107->g_331.s8, "p_1107->g_331.s8", print_hash_value);
    transparent_crc(p_1107->g_331.s9, "p_1107->g_331.s9", print_hash_value);
    transparent_crc(p_1107->g_331.sa, "p_1107->g_331.sa", print_hash_value);
    transparent_crc(p_1107->g_331.sb, "p_1107->g_331.sb", print_hash_value);
    transparent_crc(p_1107->g_331.sc, "p_1107->g_331.sc", print_hash_value);
    transparent_crc(p_1107->g_331.sd, "p_1107->g_331.sd", print_hash_value);
    transparent_crc(p_1107->g_331.se, "p_1107->g_331.se", print_hash_value);
    transparent_crc(p_1107->g_331.sf, "p_1107->g_331.sf", print_hash_value);
    transparent_crc(p_1107->g_403.f0, "p_1107->g_403.f0", print_hash_value);
    transparent_crc(p_1107->g_404, "p_1107->g_404", print_hash_value);
    transparent_crc(p_1107->g_409.x, "p_1107->g_409.x", print_hash_value);
    transparent_crc(p_1107->g_409.y, "p_1107->g_409.y", print_hash_value);
    transparent_crc(p_1107->g_409.z, "p_1107->g_409.z", print_hash_value);
    transparent_crc(p_1107->g_409.w, "p_1107->g_409.w", print_hash_value);
    transparent_crc(p_1107->g_474.s0, "p_1107->g_474.s0", print_hash_value);
    transparent_crc(p_1107->g_474.s1, "p_1107->g_474.s1", print_hash_value);
    transparent_crc(p_1107->g_474.s2, "p_1107->g_474.s2", print_hash_value);
    transparent_crc(p_1107->g_474.s3, "p_1107->g_474.s3", print_hash_value);
    transparent_crc(p_1107->g_474.s4, "p_1107->g_474.s4", print_hash_value);
    transparent_crc(p_1107->g_474.s5, "p_1107->g_474.s5", print_hash_value);
    transparent_crc(p_1107->g_474.s6, "p_1107->g_474.s6", print_hash_value);
    transparent_crc(p_1107->g_474.s7, "p_1107->g_474.s7", print_hash_value);
    transparent_crc(p_1107->g_474.s8, "p_1107->g_474.s8", print_hash_value);
    transparent_crc(p_1107->g_474.s9, "p_1107->g_474.s9", print_hash_value);
    transparent_crc(p_1107->g_474.sa, "p_1107->g_474.sa", print_hash_value);
    transparent_crc(p_1107->g_474.sb, "p_1107->g_474.sb", print_hash_value);
    transparent_crc(p_1107->g_474.sc, "p_1107->g_474.sc", print_hash_value);
    transparent_crc(p_1107->g_474.sd, "p_1107->g_474.sd", print_hash_value);
    transparent_crc(p_1107->g_474.se, "p_1107->g_474.se", print_hash_value);
    transparent_crc(p_1107->g_474.sf, "p_1107->g_474.sf", print_hash_value);
    transparent_crc(p_1107->g_475.x, "p_1107->g_475.x", print_hash_value);
    transparent_crc(p_1107->g_475.y, "p_1107->g_475.y", print_hash_value);
    transparent_crc(p_1107->g_489, "p_1107->g_489", print_hash_value);
    transparent_crc(p_1107->g_492.s0, "p_1107->g_492.s0", print_hash_value);
    transparent_crc(p_1107->g_492.s1, "p_1107->g_492.s1", print_hash_value);
    transparent_crc(p_1107->g_492.s2, "p_1107->g_492.s2", print_hash_value);
    transparent_crc(p_1107->g_492.s3, "p_1107->g_492.s3", print_hash_value);
    transparent_crc(p_1107->g_492.s4, "p_1107->g_492.s4", print_hash_value);
    transparent_crc(p_1107->g_492.s5, "p_1107->g_492.s5", print_hash_value);
    transparent_crc(p_1107->g_492.s6, "p_1107->g_492.s6", print_hash_value);
    transparent_crc(p_1107->g_492.s7, "p_1107->g_492.s7", print_hash_value);
    transparent_crc(p_1107->g_498.x, "p_1107->g_498.x", print_hash_value);
    transparent_crc(p_1107->g_498.y, "p_1107->g_498.y", print_hash_value);
    transparent_crc(p_1107->g_498.z, "p_1107->g_498.z", print_hash_value);
    transparent_crc(p_1107->g_498.w, "p_1107->g_498.w", print_hash_value);
    transparent_crc(p_1107->g_499.x, "p_1107->g_499.x", print_hash_value);
    transparent_crc(p_1107->g_499.y, "p_1107->g_499.y", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1107->g_502[i].f0, "p_1107->g_502[i].f0", print_hash_value);

    }
    transparent_crc(p_1107->g_505, "p_1107->g_505", print_hash_value);
    transparent_crc(p_1107->g_535, "p_1107->g_535", print_hash_value);
    transparent_crc(p_1107->g_558.x, "p_1107->g_558.x", print_hash_value);
    transparent_crc(p_1107->g_558.y, "p_1107->g_558.y", print_hash_value);
    transparent_crc(p_1107->g_559.x, "p_1107->g_559.x", print_hash_value);
    transparent_crc(p_1107->g_559.y, "p_1107->g_559.y", print_hash_value);
    transparent_crc(p_1107->g_559.z, "p_1107->g_559.z", print_hash_value);
    transparent_crc(p_1107->g_559.w, "p_1107->g_559.w", print_hash_value);
    transparent_crc(p_1107->g_567.s0, "p_1107->g_567.s0", print_hash_value);
    transparent_crc(p_1107->g_567.s1, "p_1107->g_567.s1", print_hash_value);
    transparent_crc(p_1107->g_567.s2, "p_1107->g_567.s2", print_hash_value);
    transparent_crc(p_1107->g_567.s3, "p_1107->g_567.s3", print_hash_value);
    transparent_crc(p_1107->g_567.s4, "p_1107->g_567.s4", print_hash_value);
    transparent_crc(p_1107->g_567.s5, "p_1107->g_567.s5", print_hash_value);
    transparent_crc(p_1107->g_567.s6, "p_1107->g_567.s6", print_hash_value);
    transparent_crc(p_1107->g_567.s7, "p_1107->g_567.s7", print_hash_value);
    transparent_crc(p_1107->g_568.s0, "p_1107->g_568.s0", print_hash_value);
    transparent_crc(p_1107->g_568.s1, "p_1107->g_568.s1", print_hash_value);
    transparent_crc(p_1107->g_568.s2, "p_1107->g_568.s2", print_hash_value);
    transparent_crc(p_1107->g_568.s3, "p_1107->g_568.s3", print_hash_value);
    transparent_crc(p_1107->g_568.s4, "p_1107->g_568.s4", print_hash_value);
    transparent_crc(p_1107->g_568.s5, "p_1107->g_568.s5", print_hash_value);
    transparent_crc(p_1107->g_568.s6, "p_1107->g_568.s6", print_hash_value);
    transparent_crc(p_1107->g_568.s7, "p_1107->g_568.s7", print_hash_value);
    transparent_crc(p_1107->g_570.f0, "p_1107->g_570.f0", print_hash_value);
    transparent_crc(p_1107->g_608.s0, "p_1107->g_608.s0", print_hash_value);
    transparent_crc(p_1107->g_608.s1, "p_1107->g_608.s1", print_hash_value);
    transparent_crc(p_1107->g_608.s2, "p_1107->g_608.s2", print_hash_value);
    transparent_crc(p_1107->g_608.s3, "p_1107->g_608.s3", print_hash_value);
    transparent_crc(p_1107->g_608.s4, "p_1107->g_608.s4", print_hash_value);
    transparent_crc(p_1107->g_608.s5, "p_1107->g_608.s5", print_hash_value);
    transparent_crc(p_1107->g_608.s6, "p_1107->g_608.s6", print_hash_value);
    transparent_crc(p_1107->g_608.s7, "p_1107->g_608.s7", print_hash_value);
    transparent_crc(p_1107->g_608.s8, "p_1107->g_608.s8", print_hash_value);
    transparent_crc(p_1107->g_608.s9, "p_1107->g_608.s9", print_hash_value);
    transparent_crc(p_1107->g_608.sa, "p_1107->g_608.sa", print_hash_value);
    transparent_crc(p_1107->g_608.sb, "p_1107->g_608.sb", print_hash_value);
    transparent_crc(p_1107->g_608.sc, "p_1107->g_608.sc", print_hash_value);
    transparent_crc(p_1107->g_608.sd, "p_1107->g_608.sd", print_hash_value);
    transparent_crc(p_1107->g_608.se, "p_1107->g_608.se", print_hash_value);
    transparent_crc(p_1107->g_608.sf, "p_1107->g_608.sf", print_hash_value);
    transparent_crc(p_1107->g_633.x, "p_1107->g_633.x", print_hash_value);
    transparent_crc(p_1107->g_633.y, "p_1107->g_633.y", print_hash_value);
    transparent_crc(p_1107->g_633.z, "p_1107->g_633.z", print_hash_value);
    transparent_crc(p_1107->g_633.w, "p_1107->g_633.w", print_hash_value);
    transparent_crc(p_1107->g_634.s0, "p_1107->g_634.s0", print_hash_value);
    transparent_crc(p_1107->g_634.s1, "p_1107->g_634.s1", print_hash_value);
    transparent_crc(p_1107->g_634.s2, "p_1107->g_634.s2", print_hash_value);
    transparent_crc(p_1107->g_634.s3, "p_1107->g_634.s3", print_hash_value);
    transparent_crc(p_1107->g_634.s4, "p_1107->g_634.s4", print_hash_value);
    transparent_crc(p_1107->g_634.s5, "p_1107->g_634.s5", print_hash_value);
    transparent_crc(p_1107->g_634.s6, "p_1107->g_634.s6", print_hash_value);
    transparent_crc(p_1107->g_634.s7, "p_1107->g_634.s7", print_hash_value);
    transparent_crc(p_1107->g_635.x, "p_1107->g_635.x", print_hash_value);
    transparent_crc(p_1107->g_635.y, "p_1107->g_635.y", print_hash_value);
    transparent_crc(p_1107->g_635.z, "p_1107->g_635.z", print_hash_value);
    transparent_crc(p_1107->g_635.w, "p_1107->g_635.w", print_hash_value);
    transparent_crc(p_1107->g_652, "p_1107->g_652", print_hash_value);
    transparent_crc(p_1107->g_666.s0, "p_1107->g_666.s0", print_hash_value);
    transparent_crc(p_1107->g_666.s1, "p_1107->g_666.s1", print_hash_value);
    transparent_crc(p_1107->g_666.s2, "p_1107->g_666.s2", print_hash_value);
    transparent_crc(p_1107->g_666.s3, "p_1107->g_666.s3", print_hash_value);
    transparent_crc(p_1107->g_666.s4, "p_1107->g_666.s4", print_hash_value);
    transparent_crc(p_1107->g_666.s5, "p_1107->g_666.s5", print_hash_value);
    transparent_crc(p_1107->g_666.s6, "p_1107->g_666.s6", print_hash_value);
    transparent_crc(p_1107->g_666.s7, "p_1107->g_666.s7", print_hash_value);
    transparent_crc(p_1107->g_694.s0, "p_1107->g_694.s0", print_hash_value);
    transparent_crc(p_1107->g_694.s1, "p_1107->g_694.s1", print_hash_value);
    transparent_crc(p_1107->g_694.s2, "p_1107->g_694.s2", print_hash_value);
    transparent_crc(p_1107->g_694.s3, "p_1107->g_694.s3", print_hash_value);
    transparent_crc(p_1107->g_694.s4, "p_1107->g_694.s4", print_hash_value);
    transparent_crc(p_1107->g_694.s5, "p_1107->g_694.s5", print_hash_value);
    transparent_crc(p_1107->g_694.s6, "p_1107->g_694.s6", print_hash_value);
    transparent_crc(p_1107->g_694.s7, "p_1107->g_694.s7", print_hash_value);
    transparent_crc(p_1107->g_694.s8, "p_1107->g_694.s8", print_hash_value);
    transparent_crc(p_1107->g_694.s9, "p_1107->g_694.s9", print_hash_value);
    transparent_crc(p_1107->g_694.sa, "p_1107->g_694.sa", print_hash_value);
    transparent_crc(p_1107->g_694.sb, "p_1107->g_694.sb", print_hash_value);
    transparent_crc(p_1107->g_694.sc, "p_1107->g_694.sc", print_hash_value);
    transparent_crc(p_1107->g_694.sd, "p_1107->g_694.sd", print_hash_value);
    transparent_crc(p_1107->g_694.se, "p_1107->g_694.se", print_hash_value);
    transparent_crc(p_1107->g_694.sf, "p_1107->g_694.sf", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1107->g_699[i][j][k].f0, "p_1107->g_699[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1107->g_748.s0, "p_1107->g_748.s0", print_hash_value);
    transparent_crc(p_1107->g_748.s1, "p_1107->g_748.s1", print_hash_value);
    transparent_crc(p_1107->g_748.s2, "p_1107->g_748.s2", print_hash_value);
    transparent_crc(p_1107->g_748.s3, "p_1107->g_748.s3", print_hash_value);
    transparent_crc(p_1107->g_748.s4, "p_1107->g_748.s4", print_hash_value);
    transparent_crc(p_1107->g_748.s5, "p_1107->g_748.s5", print_hash_value);
    transparent_crc(p_1107->g_748.s6, "p_1107->g_748.s6", print_hash_value);
    transparent_crc(p_1107->g_748.s7, "p_1107->g_748.s7", print_hash_value);
    transparent_crc(p_1107->g_769.f0, "p_1107->g_769.f0", print_hash_value);
    transparent_crc(p_1107->g_811.x, "p_1107->g_811.x", print_hash_value);
    transparent_crc(p_1107->g_811.y, "p_1107->g_811.y", print_hash_value);
    transparent_crc(p_1107->g_842, "p_1107->g_842", print_hash_value);
    transparent_crc(p_1107->g_866.x, "p_1107->g_866.x", print_hash_value);
    transparent_crc(p_1107->g_866.y, "p_1107->g_866.y", print_hash_value);
    transparent_crc(p_1107->g_866.z, "p_1107->g_866.z", print_hash_value);
    transparent_crc(p_1107->g_866.w, "p_1107->g_866.w", print_hash_value);
    transparent_crc(p_1107->g_886.x, "p_1107->g_886.x", print_hash_value);
    transparent_crc(p_1107->g_886.y, "p_1107->g_886.y", print_hash_value);
    transparent_crc(p_1107->g_886.z, "p_1107->g_886.z", print_hash_value);
    transparent_crc(p_1107->g_886.w, "p_1107->g_886.w", print_hash_value);
    transparent_crc(p_1107->g_895.x, "p_1107->g_895.x", print_hash_value);
    transparent_crc(p_1107->g_895.y, "p_1107->g_895.y", print_hash_value);
    transparent_crc(p_1107->g_895.z, "p_1107->g_895.z", print_hash_value);
    transparent_crc(p_1107->g_895.w, "p_1107->g_895.w", print_hash_value);
    transparent_crc(p_1107->g_896.f0, "p_1107->g_896.f0", print_hash_value);
    transparent_crc(p_1107->g_897.s0, "p_1107->g_897.s0", print_hash_value);
    transparent_crc(p_1107->g_897.s1, "p_1107->g_897.s1", print_hash_value);
    transparent_crc(p_1107->g_897.s2, "p_1107->g_897.s2", print_hash_value);
    transparent_crc(p_1107->g_897.s3, "p_1107->g_897.s3", print_hash_value);
    transparent_crc(p_1107->g_897.s4, "p_1107->g_897.s4", print_hash_value);
    transparent_crc(p_1107->g_897.s5, "p_1107->g_897.s5", print_hash_value);
    transparent_crc(p_1107->g_897.s6, "p_1107->g_897.s6", print_hash_value);
    transparent_crc(p_1107->g_897.s7, "p_1107->g_897.s7", print_hash_value);
    transparent_crc(p_1107->g_899.s0, "p_1107->g_899.s0", print_hash_value);
    transparent_crc(p_1107->g_899.s1, "p_1107->g_899.s1", print_hash_value);
    transparent_crc(p_1107->g_899.s2, "p_1107->g_899.s2", print_hash_value);
    transparent_crc(p_1107->g_899.s3, "p_1107->g_899.s3", print_hash_value);
    transparent_crc(p_1107->g_899.s4, "p_1107->g_899.s4", print_hash_value);
    transparent_crc(p_1107->g_899.s5, "p_1107->g_899.s5", print_hash_value);
    transparent_crc(p_1107->g_899.s6, "p_1107->g_899.s6", print_hash_value);
    transparent_crc(p_1107->g_899.s7, "p_1107->g_899.s7", print_hash_value);
    transparent_crc(p_1107->g_899.s8, "p_1107->g_899.s8", print_hash_value);
    transparent_crc(p_1107->g_899.s9, "p_1107->g_899.s9", print_hash_value);
    transparent_crc(p_1107->g_899.sa, "p_1107->g_899.sa", print_hash_value);
    transparent_crc(p_1107->g_899.sb, "p_1107->g_899.sb", print_hash_value);
    transparent_crc(p_1107->g_899.sc, "p_1107->g_899.sc", print_hash_value);
    transparent_crc(p_1107->g_899.sd, "p_1107->g_899.sd", print_hash_value);
    transparent_crc(p_1107->g_899.se, "p_1107->g_899.se", print_hash_value);
    transparent_crc(p_1107->g_899.sf, "p_1107->g_899.sf", print_hash_value);
    transparent_crc(p_1107->g_901.s0, "p_1107->g_901.s0", print_hash_value);
    transparent_crc(p_1107->g_901.s1, "p_1107->g_901.s1", print_hash_value);
    transparent_crc(p_1107->g_901.s2, "p_1107->g_901.s2", print_hash_value);
    transparent_crc(p_1107->g_901.s3, "p_1107->g_901.s3", print_hash_value);
    transparent_crc(p_1107->g_901.s4, "p_1107->g_901.s4", print_hash_value);
    transparent_crc(p_1107->g_901.s5, "p_1107->g_901.s5", print_hash_value);
    transparent_crc(p_1107->g_901.s6, "p_1107->g_901.s6", print_hash_value);
    transparent_crc(p_1107->g_901.s7, "p_1107->g_901.s7", print_hash_value);
    transparent_crc(p_1107->g_901.s8, "p_1107->g_901.s8", print_hash_value);
    transparent_crc(p_1107->g_901.s9, "p_1107->g_901.s9", print_hash_value);
    transparent_crc(p_1107->g_901.sa, "p_1107->g_901.sa", print_hash_value);
    transparent_crc(p_1107->g_901.sb, "p_1107->g_901.sb", print_hash_value);
    transparent_crc(p_1107->g_901.sc, "p_1107->g_901.sc", print_hash_value);
    transparent_crc(p_1107->g_901.sd, "p_1107->g_901.sd", print_hash_value);
    transparent_crc(p_1107->g_901.se, "p_1107->g_901.se", print_hash_value);
    transparent_crc(p_1107->g_901.sf, "p_1107->g_901.sf", print_hash_value);
    transparent_crc(p_1107->g_912.x, "p_1107->g_912.x", print_hash_value);
    transparent_crc(p_1107->g_912.y, "p_1107->g_912.y", print_hash_value);
    transparent_crc(p_1107->g_912.z, "p_1107->g_912.z", print_hash_value);
    transparent_crc(p_1107->g_912.w, "p_1107->g_912.w", print_hash_value);
    transparent_crc(p_1107->g_914.x, "p_1107->g_914.x", print_hash_value);
    transparent_crc(p_1107->g_914.y, "p_1107->g_914.y", print_hash_value);
    transparent_crc(p_1107->g_914.z, "p_1107->g_914.z", print_hash_value);
    transparent_crc(p_1107->g_914.w, "p_1107->g_914.w", print_hash_value);
    transparent_crc(p_1107->g_917.x, "p_1107->g_917.x", print_hash_value);
    transparent_crc(p_1107->g_917.y, "p_1107->g_917.y", print_hash_value);
    transparent_crc(p_1107->g_917.z, "p_1107->g_917.z", print_hash_value);
    transparent_crc(p_1107->g_917.w, "p_1107->g_917.w", print_hash_value);
    transparent_crc(p_1107->g_962.x, "p_1107->g_962.x", print_hash_value);
    transparent_crc(p_1107->g_962.y, "p_1107->g_962.y", print_hash_value);
    transparent_crc(p_1107->g_1013.x, "p_1107->g_1013.x", print_hash_value);
    transparent_crc(p_1107->g_1013.y, "p_1107->g_1013.y", print_hash_value);
    transparent_crc(p_1107->g_1013.z, "p_1107->g_1013.z", print_hash_value);
    transparent_crc(p_1107->g_1013.w, "p_1107->g_1013.w", print_hash_value);
    transparent_crc(p_1107->g_1020.x, "p_1107->g_1020.x", print_hash_value);
    transparent_crc(p_1107->g_1020.y, "p_1107->g_1020.y", print_hash_value);
    transparent_crc(p_1107->g_1021.s0, "p_1107->g_1021.s0", print_hash_value);
    transparent_crc(p_1107->g_1021.s1, "p_1107->g_1021.s1", print_hash_value);
    transparent_crc(p_1107->g_1021.s2, "p_1107->g_1021.s2", print_hash_value);
    transparent_crc(p_1107->g_1021.s3, "p_1107->g_1021.s3", print_hash_value);
    transparent_crc(p_1107->g_1021.s4, "p_1107->g_1021.s4", print_hash_value);
    transparent_crc(p_1107->g_1021.s5, "p_1107->g_1021.s5", print_hash_value);
    transparent_crc(p_1107->g_1021.s6, "p_1107->g_1021.s6", print_hash_value);
    transparent_crc(p_1107->g_1021.s7, "p_1107->g_1021.s7", print_hash_value);
    transparent_crc(p_1107->g_1061.f0, "p_1107->g_1061.f0", print_hash_value);
    transparent_crc(p_1107->g_1071.x, "p_1107->g_1071.x", print_hash_value);
    transparent_crc(p_1107->g_1071.y, "p_1107->g_1071.y", print_hash_value);
    transparent_crc(p_1107->g_1074.x, "p_1107->g_1074.x", print_hash_value);
    transparent_crc(p_1107->g_1074.y, "p_1107->g_1074.y", print_hash_value);
    transparent_crc(p_1107->g_1074.z, "p_1107->g_1074.z", print_hash_value);
    transparent_crc(p_1107->g_1074.w, "p_1107->g_1074.w", print_hash_value);
    transparent_crc(p_1107->g_1078, "p_1107->g_1078", print_hash_value);
    transparent_crc(p_1107->g_1079.x, "p_1107->g_1079.x", print_hash_value);
    transparent_crc(p_1107->g_1079.y, "p_1107->g_1079.y", print_hash_value);
    transparent_crc(p_1107->g_1079.z, "p_1107->g_1079.z", print_hash_value);
    transparent_crc(p_1107->g_1079.w, "p_1107->g_1079.w", print_hash_value);
    transparent_crc(p_1107->g_1080.x, "p_1107->g_1080.x", print_hash_value);
    transparent_crc(p_1107->g_1080.y, "p_1107->g_1080.y", print_hash_value);
    transparent_crc(p_1107->g_1080.z, "p_1107->g_1080.z", print_hash_value);
    transparent_crc(p_1107->g_1080.w, "p_1107->g_1080.w", print_hash_value);
    transparent_crc(p_1107->g_1081.x, "p_1107->g_1081.x", print_hash_value);
    transparent_crc(p_1107->g_1081.y, "p_1107->g_1081.y", print_hash_value);
    transparent_crc(p_1107->g_1081.z, "p_1107->g_1081.z", print_hash_value);
    transparent_crc(p_1107->g_1081.w, "p_1107->g_1081.w", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1107->g_1101[i], "p_1107->g_1101[i]", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
