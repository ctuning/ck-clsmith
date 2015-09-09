// ---fake_divergence -g 55,85,1 -l 55,1,1
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


// Seed: 128

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint64_t  f0;
   volatile uint16_t  f1;
   int8_t * f2;
   int64_t  f3;
   uint64_t  f4;
};

union U1 {
   volatile uint16_t  f0;
   volatile int32_t  f1;
   volatile int32_t  f2;
};

union U2 {
   uint32_t  f0;
};

union U3 {
   volatile uint64_t  f0;
};

union U4 {
   uint32_t  f0;
};

struct S5 {
    int32_t g_4;
    int32_t * volatile g_3;
    int8_t g_7[4][3][1];
    volatile VECTOR(uint8_t, 4) g_15;
    volatile VECTOR(uint8_t, 8) g_16;
    volatile VECTOR(int64_t, 2) g_23;
    union U4 g_59;
    uint8_t g_67;
    int16_t g_85;
    int16_t g_86;
    VECTOR(uint16_t, 16) g_88;
    int8_t g_99[8][1][4];
    VECTOR(int8_t, 8) g_100;
    int8_t g_102[6];
    uint8_t g_111;
    VECTOR(uint8_t, 8) g_113;
    int64_t g_116;
    int16_t g_117;
    VECTOR(int32_t, 4) g_118;
    VECTOR(int32_t, 16) g_124;
    VECTOR(int32_t, 16) g_128;
    union U2 g_163;
    uint64_t g_171;
    int64_t g_188;
    VECTOR(uint64_t, 4) g_192;
    VECTOR(int8_t, 4) g_201;
    union U0 g_216;
    uint32_t g_234;
    VECTOR(uint8_t, 8) g_244;
    VECTOR(uint16_t, 4) g_249;
    VECTOR(int16_t, 4) g_252;
    int32_t *g_262[4];
    VECTOR(int32_t, 16) g_263;
    VECTOR(int32_t, 2) g_302;
    VECTOR(int32_t, 4) g_303;
    volatile int32_t ***g_309;
    int64_t g_319;
    int8_t g_353;
    int8_t **g_403;
    int16_t *g_405;
    int16_t **g_404;
    volatile union U0 g_407;
    volatile union U0 *g_406;
    VECTOR(int64_t, 4) g_412;
    union U0 g_415[1][7];
    union U0 g_416;
    union U0 g_417;
    VECTOR(uint16_t, 4) g_420;
    VECTOR(uint64_t, 4) g_447;
    VECTOR(int16_t, 4) g_477;
    VECTOR(int8_t, 4) g_496;
    int16_t **g_504;
    VECTOR(int8_t, 16) g_531;
    VECTOR(uint64_t, 16) g_543;
    VECTOR(uint64_t, 2) g_544;
    VECTOR(uint64_t, 8) g_548;
    uint32_t g_586;
    volatile union U0 **g_610[10];
    VECTOR(uint32_t, 2) g_619;
    VECTOR(int32_t, 4) g_620;
    VECTOR(uint32_t, 8) g_621;
    VECTOR(int32_t, 2) g_622;
    VECTOR(int32_t, 16) g_623;
    uint32_t *g_637;
    uint32_t **g_636;
    uint32_t ***g_635;
    VECTOR(int32_t, 16) g_650;
    uint64_t *g_667;
    union U3 g_681;
    VECTOR(int8_t, 2) g_752;
    VECTOR(int64_t, 8) g_769;
    VECTOR(uint64_t, 4) g_776;
    VECTOR(uint64_t, 2) g_795;
    VECTOR(uint64_t, 8) g_816;
    VECTOR(int32_t, 8) g_840;
    VECTOR(uint16_t, 2) g_855;
    VECTOR(uint16_t, 16) g_856;
    VECTOR(int8_t, 8) g_873;
    union U4 *g_880[8];
    VECTOR(int64_t, 4) g_881;
    VECTOR(uint16_t, 2) g_916;
    VECTOR(uint16_t, 4) g_917;
    union U3 g_989;
    union U3 g_990;
    VECTOR(int32_t, 4) g_994;
    VECTOR(int64_t, 4) g_996;
    VECTOR(uint64_t, 2) g_997;
    union U0 g_1010;
    VECTOR(uint16_t, 8) g_1045;
    VECTOR(int32_t, 8) g_1090;
    uint64_t g_1111;
    VECTOR(int32_t, 8) g_1158;
    VECTOR(int8_t, 16) g_1167;
    VECTOR(int64_t, 2) g_1195;
    VECTOR(uint8_t, 8) g_1250;
    union U0 *g_1278;
    union U0 **g_1277;
    volatile VECTOR(int32_t, 4) g_1280;
    uint64_t g_1300[1];
    volatile union U1 g_1333;
    VECTOR(int8_t, 16) g_1358;
    int8_t g_1415;
    volatile VECTOR(uint16_t, 8) g_1421;
    int32_t g_1465;
    int32_t * volatile g_1489[9];
    int32_t * volatile g_1490;
    volatile VECTOR(int8_t, 4) g_1516;
    volatile VECTOR(int8_t, 2) g_1517;
    int32_t * volatile g_1543;
    VECTOR(uint8_t, 2) g_1564;
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
uint8_t  func_1(struct S5 * p_1584);
int32_t  func_8(int32_t * p_9, struct S5 * p_1584);
union U4  func_10(int32_t * p_11, int32_t  p_12, int8_t  p_13, struct S5 * p_1584);
int32_t  func_19(uint32_t  p_20, struct S5 * p_1584);
int8_t  func_25(uint64_t  p_26, int8_t * p_27, uint64_t  p_28, struct S5 * p_1584);
union U2  func_33(uint16_t  p_34, int32_t  p_35, int16_t  p_36, int32_t * p_37, struct S5 * p_1584);
int32_t * func_39(int32_t * p_40, int32_t * p_41, int8_t * p_42, uint32_t  p_43, int8_t * p_44, struct S5 * p_1584);
int32_t * func_45(int32_t * p_46, int32_t * p_47, int32_t  p_48, uint16_t  p_49, struct S5 * p_1584);
int32_t * func_50(int64_t  p_51, int32_t  p_52, int8_t * p_53, struct S5 * p_1584);
int32_t * func_55(union U4  p_56, int32_t * p_57, uint8_t  p_58, struct S5 * p_1584);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1584->g_3 p_1584->g_4 p_1584->g_855 p_1584->g_994 p_1584->g_997 p_1584->g_117 p_1584->g_412 p_1584->g_67 p_1584->g_1333 p_1584->g_916 p_1584->g_417.f0 p_1584->g_622 p_1584->g_776 p_1584->g_302 p_1584->g_856 p_1584->g_650 p_1584->g_544 p_1584->g_118 p_1584->g_840 p_1584->g_171 p_1584->g_586 p_1584->g_59.f0 p_1584->g_543 p_1584->g_1280 p_1584->g_623 p_1584->g_88 p_1584->g_420 p_1584->g_1415 p_1584->g_795 p_1584->g_1465 p_1584->g_7 p_1584->g_252 p_1584->g_635 p_1584->g_636 p_1584->g_477 p_1584->g_1010.f0 p_1584->g_1195 p_1584->g_1516 p_1584->g_1517 p_1584->g_1250 p_1584->g_15 p_1584->g_201 p_1584->g_667 p_1584->g_99 p_1584->g_1277 p_1584->g_262 p_1584->g_244 p_1584->g_1045 p_1584->g_1564 p_1584->g_163 p_1584->g_752
 * writes: p_1584->g_4 p_1584->g_7 p_1584->g_855 p_1584->g_244 p_1584->g_67 p_1584->g_586 p_1584->g_840 p_1584->g_171 p_1584->g_59.f0 p_1584->g_188 p_1584->g_116 p_1584->g_262 p_1584->g_916 p_1584->g_636 p_1584->g_1250 p_1584->g_1278 p_1584->g_117 p_1584->g_85 p_1584->g_163 p_1584->g_996 p_1584->g_412 p_1584->g_404
 */
uint8_t  func_1(struct S5 * p_1584)
{ /* block id: 4 */
    uint32_t l_2[10] = {4294967295UL,0x4FD9E2A8L,4294967295UL,4294967295UL,0x4FD9E2A8L,4294967295UL,4294967295UL,0x4FD9E2A8L,4294967295UL,4294967295UL};
    int32_t l_1368 = 0x73F4B5FAL;
    union U3 *l_1383 = (void*)0;
    int8_t *l_1405 = &p_1584->g_7[0][1][0];
    uint8_t *l_1426[2][3][6] = {{{&p_1584->g_67,&p_1584->g_111,&p_1584->g_67,&p_1584->g_67,&p_1584->g_111,&p_1584->g_67},{&p_1584->g_67,&p_1584->g_111,&p_1584->g_67,&p_1584->g_67,&p_1584->g_111,&p_1584->g_67},{&p_1584->g_67,&p_1584->g_111,&p_1584->g_67,&p_1584->g_67,&p_1584->g_111,&p_1584->g_67}},{{&p_1584->g_67,&p_1584->g_111,&p_1584->g_67,&p_1584->g_67,&p_1584->g_111,&p_1584->g_67},{&p_1584->g_67,&p_1584->g_111,&p_1584->g_67,&p_1584->g_67,&p_1584->g_111,&p_1584->g_67},{&p_1584->g_67,&p_1584->g_111,&p_1584->g_67,&p_1584->g_67,&p_1584->g_111,&p_1584->g_67}}};
    int32_t **l_1429 = &p_1584->g_262[1];
    uint64_t l_1475 = 18446744073709551611UL;
    int8_t l_1480 = 1L;
    union U0 ***l_1486 = &p_1584->g_1277;
    uint32_t l_1508 = 0x916C1677L;
    int32_t l_1559[4][4][10] = {{{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L},{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L},{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L},{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L}},{{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L},{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L},{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L},{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L}},{{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L},{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L},{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L},{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L}},{{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L},{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L},{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L},{(-8L),(-1L),(-4L),0x43AC915EL,0x38A728CCL,0x61B8B605L,0x293BFF50L,0x4794DC00L,(-1L),2L}}};
    int32_t l_1566 = 0x5B2D9CB5L;
    int64_t l_1574[7];
    int32_t **l_1578 = &p_1584->g_262[0];
    union U2 l_1583 = {0x2FC9B46CL};
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_1574[i] = 0L;
lbl_1549:
    (*p_1584->g_3) ^= l_2[5];
    if ((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 2))(7L, 0x77A1245C8100C430L))))).hi, (p_1584->g_7[0][1][0] = l_2[3]))))
    { /* block id: 7 */
        int8_t *l_14 = &p_1584->g_7[0][1][0];
        int32_t l_1279 = 0x68028610L;
        int32_t *l_1367 = (void*)0;
        int8_t l_1393 = 5L;
        int32_t l_1403 = 1L;
        uint64_t l_1416 = 18446744073709551607UL;
        uint16_t l_1456 = 65535UL;
        int32_t l_1457 = 0L;
        union U2 *l_1481 = &p_1584->g_163;
        union U0 ***l_1487 = &p_1584->g_1277;
        uint32_t l_1488 = 0x93C9323EL;
lbl_1372:
        l_1368 = (p_1584->g_840.s4 &= func_8((func_10(&p_1584->g_4, (((*l_14) = p_1584->g_4) || ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(253UL, ((VECTOR(uint8_t, 16))(0xBFL, ((VECTOR(uint8_t, 4))(p_1584->g_15.wwwy)), 0UL, ((VECTOR(uint8_t, 4))(0UL, (((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 2))(p_1584->g_16.s73)).yxxy, ((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 2))(abs(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 8))(0x5DL, ((*l_14) = (-9L)), 0x65L, 0x50L, ((safe_mod_func_int32_t_s_s(func_19(((void*)0 != &p_1584->g_4), p_1584), (safe_sub_func_uint32_t_u_u((safe_div_func_uint64_t_u_u(((+((p_1584->g_1277 != (void*)0) && p_1584->g_1045.s4)) & 0x58L), p_1584->g_619.x)), 4294967295UL)))) == GROUP_DIVERGE(2, 1)), 0L, 0x43L, 0x56L)), ((VECTOR(int8_t, 8))(0L))))).s00))).yyyyyxxx, (uint8_t)p_1584->g_1158.s5))), ((VECTOR(uint8_t, 8))(1UL)))), ((VECTOR(uint8_t, 16))(248UL))))).s3dea))), ((VECTOR(uint8_t, 4))(3UL))))).odd, ((VECTOR(uint8_t, 2))(255UL))))).lo ^ 249UL), 0xE0L, 1UL)), p_1584->g_7[0][1][0], 9UL, l_1279, 255UL, 0x1DL, 0x2EL)).s4, 0x75L, 0xA2L, ((VECTOR(uint8_t, 4))(0xADL)), p_1584->g_4, 246UL, ((VECTOR(uint8_t, 2))(255UL)), 1UL, ((VECTOR(uint8_t, 2))(1UL)), 0x7FL)).s8ab7)).w), l_2[5], p_1584) , (void*)0), p_1584));
        if (l_2[1])
        { /* block id: 518 */
            int8_t l_1371 = 0x27L;
            int32_t l_1459[9] = {0x4419BCF9L,0x4419BCF9L,0x4419BCF9L,0x4419BCF9L,0x4419BCF9L,0x4419BCF9L,0x4419BCF9L,0x4419BCF9L,0x4419BCF9L};
            int16_t *l_1479[5][6] = {{&p_1584->g_85,(void*)0,&p_1584->g_85,(void*)0,(void*)0,(void*)0},{&p_1584->g_85,(void*)0,&p_1584->g_85,(void*)0,(void*)0,(void*)0},{&p_1584->g_85,(void*)0,&p_1584->g_85,(void*)0,(void*)0,(void*)0},{&p_1584->g_85,(void*)0,&p_1584->g_85,(void*)0,(void*)0,(void*)0},{&p_1584->g_85,(void*)0,&p_1584->g_85,(void*)0,(void*)0,(void*)0}};
            int32_t *l_1491 = &l_1459[0];
            int i, j;
lbl_1376:
            for (p_1584->g_171 = 2; (p_1584->g_171 < 45); p_1584->g_171++)
            { /* block id: 521 */
                if (l_1371)
                    break;
                if (l_1279)
                    goto lbl_1376;
                if (p_1584->g_216.f0)
                    goto lbl_1372;
                for (p_1584->g_586 = (-6); (p_1584->g_586 > 50); p_1584->g_586 = safe_add_func_int64_t_s_s(p_1584->g_586, 2))
                { /* block id: 526 */
                    int8_t l_1375 = 0x27L;
                    return l_1375;
                }
            }
            for (p_1584->g_59.f0 = (-30); (p_1584->g_59.f0 == 26); p_1584->g_59.f0 = safe_add_func_uint16_t_u_u(p_1584->g_59.f0, 5))
            { /* block id: 533 */
                int16_t l_1392 = 0x7643L;
                union U0 ***l_1436 = &p_1584->g_1277;
                for (p_1584->g_188 = 22; (p_1584->g_188 > 14); p_1584->g_188 = safe_sub_func_int8_t_s_s(p_1584->g_188, 5))
                { /* block id: 536 */
                    union U3 *l_1384[5][9] = {{&p_1584->g_989,&p_1584->g_989,&p_1584->g_990,&p_1584->g_989,&p_1584->g_989,&p_1584->g_989,&p_1584->g_990,&p_1584->g_989,&p_1584->g_989},{&p_1584->g_989,&p_1584->g_989,&p_1584->g_990,&p_1584->g_989,&p_1584->g_989,&p_1584->g_989,&p_1584->g_990,&p_1584->g_989,&p_1584->g_989},{&p_1584->g_989,&p_1584->g_989,&p_1584->g_990,&p_1584->g_989,&p_1584->g_989,&p_1584->g_989,&p_1584->g_990,&p_1584->g_989,&p_1584->g_989},{&p_1584->g_989,&p_1584->g_989,&p_1584->g_990,&p_1584->g_989,&p_1584->g_989,&p_1584->g_989,&p_1584->g_990,&p_1584->g_989,&p_1584->g_989},{&p_1584->g_989,&p_1584->g_989,&p_1584->g_990,&p_1584->g_989,&p_1584->g_989,&p_1584->g_989,&p_1584->g_990,&p_1584->g_989,&p_1584->g_989}};
                    int32_t l_1391 = (-1L);
                    uint64_t l_1402 = 0xB78FD595AD4A3370L;
                    uint16_t *l_1439 = (void*)0;
                    uint16_t *l_1440 = (void*)0;
                    uint16_t *l_1441 = (void*)0;
                    uint16_t *l_1442 = (void*)0;
                    uint16_t *l_1443 = (void*)0;
                    uint16_t *l_1444 = (void*)0;
                    uint16_t *l_1445[2][3];
                    int32_t *l_1458[10][10] = {{&l_1368,&l_1279,(void*)0,&l_1368,(void*)0,&l_1368,(void*)0,&l_1279,&l_1368,(void*)0},{&l_1368,&l_1279,(void*)0,&l_1368,(void*)0,&l_1368,(void*)0,&l_1279,&l_1368,(void*)0},{&l_1368,&l_1279,(void*)0,&l_1368,(void*)0,&l_1368,(void*)0,&l_1279,&l_1368,(void*)0},{&l_1368,&l_1279,(void*)0,&l_1368,(void*)0,&l_1368,(void*)0,&l_1279,&l_1368,(void*)0},{&l_1368,&l_1279,(void*)0,&l_1368,(void*)0,&l_1368,(void*)0,&l_1279,&l_1368,(void*)0},{&l_1368,&l_1279,(void*)0,&l_1368,(void*)0,&l_1368,(void*)0,&l_1279,&l_1368,(void*)0},{&l_1368,&l_1279,(void*)0,&l_1368,(void*)0,&l_1368,(void*)0,&l_1279,&l_1368,(void*)0},{&l_1368,&l_1279,(void*)0,&l_1368,(void*)0,&l_1368,(void*)0,&l_1279,&l_1368,(void*)0},{&l_1368,&l_1279,(void*)0,&l_1368,(void*)0,&l_1368,(void*)0,&l_1279,&l_1368,(void*)0},{&l_1368,&l_1279,(void*)0,&l_1368,(void*)0,&l_1368,(void*)0,&l_1279,&l_1368,(void*)0}};
                    VECTOR(uint64_t, 16) l_1473 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL);
                    uint8_t *l_1478 = (void*)0;
                    int i, j;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_1445[i][j] = (void*)0;
                    }
                    for (l_1371 = 0; (l_1371 > (-28)); l_1371 = safe_sub_func_int64_t_s_s(l_1371, 2))
                    { /* block id: 539 */
                        int64_t *l_1385 = (void*)0;
                        int64_t *l_1386 = &p_1584->g_116;
                        uint32_t *l_1404[8] = {&l_2[5],(void*)0,&l_2[5],&l_2[5],(void*)0,&l_2[5],&l_2[5],(void*)0};
                        int32_t **l_1406[6];
                        uint16_t *l_1422 = (void*)0;
                        uint16_t *l_1423[5][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                        uint8_t *l_1425 = (void*)0;
                        uint8_t **l_1424 = &l_1425;
                        int i, j;
                        for (i = 0; i < 6; i++)
                            l_1406[i] = &p_1584->g_262[2];
                        p_1584->g_262[2] = func_50(((*l_1386) = (l_1383 != l_1384[3][4])), ((p_1584->g_586 = (safe_sub_func_int32_t_s_s(((((safe_add_func_uint32_t_u_u(l_1391, l_1392)) ^ p_1584->g_543.sa) | ((l_1393 == ((VECTOR(uint8_t, 2))(1UL, 250UL)).lo) || p_1584->g_1280.w)) || p_1584->g_1280.y), ((safe_lshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_u(((safe_div_func_int32_t_s_s((safe_rshift_func_int16_t_s_s((0xD6L == 0x5AL), l_2[3])), l_1402)) ^ l_1403), p_1584->g_623.sc)), p_1584->g_88.sc)) == 0xDFL)))) != 1L), l_1405, p_1584);
                        l_1368 = (safe_mul_func_uint8_t_u_u((p_1584->g_420.w || (safe_div_func_int64_t_s_s((l_1371 || (safe_lshift_func_uint16_t_u_u(l_1391, (safe_sub_func_int8_t_s_s(p_1584->g_1415, l_1416))))), l_1392))), ((safe_div_func_int16_t_s_s((-5L), (0x08463D394D8C31E9L & (safe_sub_func_uint16_t_u_u(((p_1584->g_855.x ^= ((VECTOR(uint16_t, 16))(clz(((VECTOR(uint16_t, 16))(p_1584->g_1421.s1035745533571574))))).sa) && ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x5D9DL, 1UL)).xyxx)).w), (&p_1584->g_504 != (void*)0)))))) >= l_1416)));
                        (*p_1584->g_3) = (((*l_1424) = &p_1584->g_111) == l_1426[0][2][0]);
                    }
                    if ((4294967295UL == (l_1459[2] = (safe_mod_func_uint8_t_u_u(((void*)0 == l_1429), (((safe_lshift_func_uint16_t_u_s((p_1584->g_916.y = (((VECTOR(int32_t, 8))((((safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(0x0143L, 0UL)).odd, (safe_mod_func_int32_t_s_s(((&p_1584->g_610[8] == l_1436) & ((safe_mul_func_uint16_t_u_u((++p_1584->g_1045.s4), (l_1391 |= ((((((l_1392 || ((((l_1392 | 1UL) > (l_1456 &= (safe_add_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((safe_mul_func_int16_t_s_s(1L, p_1584->g_7[0][1][0])), l_1392)), l_1392)))) && l_1371) >= 0x46E838A6249A1595L)) , p_1584->g_100.s2) | p_1584->g_856.se) & (-1L)) > 18446744073709551609UL) >= (-4L))))) <= l_1457)), l_1371)))) <= l_1457) && 0x01L), (*p_1584->g_3), (-2L), ((VECTOR(int32_t, 2))(0x39A1A4A8L)), 0x65DAEFC7L, 0x6FAE2772L, 0x58D594A0L)).s6 == FAKE_DIVERGE(p_1584->local_0_offset, get_local_id(0), 10))), 14)) <= p_1584->g_622.y) & 0xFA791C17L))))))
                    { /* block id: 553 */
                        int64_t l_1462 = 1L;
                        uint32_t *l_1470 = &p_1584->g_586;
                        int32_t l_1474 = 0x49B07CCCL;
                        l_1474 &= (l_1371 < ((safe_sub_func_int16_t_s_s(l_1462, (safe_lshift_func_int8_t_s_u(0L, p_1584->g_795.x)))) ^ (((-1L) | ((*l_1405) &= p_1584->g_1465)) , (safe_mul_func_uint16_t_u_u(l_1462, ((safe_sub_func_int64_t_s_s(((((*l_1470) ^= ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0x2482C7C5L, 0xF561362DL)).xxxx)).even)).hi) >= (((((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(l_1473.s386436e46de363c3)).s7, p_1584->g_252.w)) < (-10L)) <= l_1371) | l_2[3]) != l_1371)) >= 0xBF55L), 1L)) , l_1459[2]))))));
                        l_1475++;
                    }
                    else
                    { /* block id: 558 */
                        l_1459[2] = (l_1478 != (void*)0);
                        (*p_1584->g_635) = (*p_1584->g_635);
                    }
                }
                (*l_1429) = &l_1403;
            }
            (*l_1429) = &l_1459[3];
            (*l_1491) = (((l_1488 = (((((((*p_1584->g_3) && ((l_1480 = l_1459[2]) != ((((l_1459[6] && ((l_1481 == &p_1584->g_163) && 1L)) && (safe_mul_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_s((((VECTOR(uint32_t, 2))(1UL, 0x5B13720CL)).odd , l_1459[1]), (l_1486 != l_1487))) == p_1584->g_477.x), 0xF696L))) == 18446744073709551615UL) || p_1584->g_1010.f0))) | p_1584->g_840.s7) < (-4L)) < 0x7DA5496DL) <= GROUP_DIVERGE(2, 1)) != p_1584->g_622.y)) == 4294967295UL) && l_1459[8]);
        }
        else
        { /* block id: 569 */
            int16_t l_1494 = 0L;
            if (p_1584->g_4)
                goto lbl_1372;
            (*l_1429) = &l_1403;
            l_1494 = (safe_mul_func_uint16_t_u_u(p_1584->g_856.s2, p_1584->g_1195.x));
        }
    }
    else
    { /* block id: 574 */
        uint64_t l_1495[8][10][2] = {{{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL}},{{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL}},{{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL}},{{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL}},{{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL}},{{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL}},{{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL}},{{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL},{0xA7226E1182BE0869L,18446744073709551614UL}}};
        int16_t l_1496 = 1L;
        int32_t l_1515 = 1L;
        union U0 *l_1536 = &p_1584->g_416;
        VECTOR(uint8_t, 16) l_1563 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 7UL), 7UL), 7UL, 255UL, 7UL, (VECTOR(uint8_t, 2))(255UL, 7UL), (VECTOR(uint8_t, 2))(255UL, 7UL), 255UL, 7UL, 255UL, 7UL);
        int i, j, k;
        l_1496 = l_1495[5][0][1];
        for (l_1368 = 0; (l_1368 != (-26)); --l_1368)
        { /* block id: 578 */
            uint8_t l_1501[10][6] = {{248UL,9UL,0x58L,255UL,0x10L,248UL},{248UL,9UL,0x58L,255UL,0x10L,248UL},{248UL,9UL,0x58L,255UL,0x10L,248UL},{248UL,9UL,0x58L,255UL,0x10L,248UL},{248UL,9UL,0x58L,255UL,0x10L,248UL},{248UL,9UL,0x58L,255UL,0x10L,248UL},{248UL,9UL,0x58L,255UL,0x10L,248UL},{248UL,9UL,0x58L,255UL,0x10L,248UL},{248UL,9UL,0x58L,255UL,0x10L,248UL},{248UL,9UL,0x58L,255UL,0x10L,248UL}};
            int32_t *l_1550 = &p_1584->g_4;
            VECTOR(uint8_t, 16) l_1562 = (VECTOR(uint8_t, 16))(5UL, (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 6UL), 6UL), 6UL, 5UL, 6UL, (VECTOR(uint8_t, 2))(5UL, 6UL), (VECTOR(uint8_t, 2))(5UL, 6UL), 5UL, 6UL, 5UL, 6UL);
            union U2 *l_1565 = &p_1584->g_163;
            int64_t *l_1567[7] = {&p_1584->g_319,&p_1584->g_319,&p_1584->g_319,&p_1584->g_319,&p_1584->g_319,&p_1584->g_319,&p_1584->g_319};
            uint32_t *l_1570 = (void*)0;
            uint32_t *l_1571 = &l_2[4];
            uint8_t l_1575 = 0xB5L;
            int16_t *l_1576 = (void*)0;
            int16_t *l_1577 = &p_1584->g_85;
            int8_t *l_1582 = &p_1584->g_99[1][0][2];
            int i, j;
            for (l_1480 = 0; (l_1480 != 2); ++l_1480)
            { /* block id: 581 */
                union U0 ***l_1522 = &p_1584->g_1277;
                int32_t l_1523 = 0x05FFDA34L;
                l_1501[0][2] = ((void*)0 != &p_1584->g_116);
                if ((l_1523 = (((VECTOR(uint64_t, 8))(7UL, (safe_sub_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((((((safe_div_func_int8_t_s_s(l_1501[0][2], (l_1501[3][0] || l_1508))) ^ (safe_rshift_func_uint16_t_u_s((l_1496 , (safe_add_func_int8_t_s_s((l_1515 = ((*l_1405) &= (safe_div_func_uint16_t_u_u(0xD56CL, l_1496)))), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(p_1584->g_1516.yy)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 8))(p_1584->g_1517.xxyyxxyy)).s06, (int8_t)((((p_1584->g_1250.s7--) | (p_1584->g_15.z >= (((safe_sub_func_int32_t_s_s(l_1475, (((void*)0 == l_1522) >= l_1496))) == 0x2FA8CECF1DB75B53L) ^ p_1584->g_1465))) , &p_1584->g_67) != &p_1584->g_67)))).xyxx, (int8_t)7L, (int8_t)p_1584->g_201.z))).xxxxzzzy)), (-2L), 0x3DL, 0x4AL, (-1L), 0x11L, 0x74L)).sa))), l_1523))) , l_1523) , l_1495[5][0][1]) <= p_1584->g_412.z), l_1523)), 0x26L)), 0x119CEFF0C6A81274L, ((VECTOR(uint64_t, 2))(0x2A0588EAD37F3B88L)), (*p_1584->g_667), 0x474C5155DEBD9A96L, 0xAD5C68F7D87F3E85L)).s0 == 0x3EA7A1D11FF8CE24L)))
                { /* block id: 587 */
                    return p_1584->g_99[2][0][2];
                }
                else
                { /* block id: 589 */
                    int16_t *l_1539 = &p_1584->g_117;
                    int16_t *l_1540 = &p_1584->g_85;
                    int32_t *l_1541 = (void*)0;
                    int32_t *l_1542 = (void*)0;
                    int32_t *l_1544 = &p_1584->g_4;
                    (*l_1544) |= (safe_add_func_uint16_t_u_u(1UL, (safe_rshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_s((safe_div_func_int16_t_s_s((l_1501[1][2] , ((*l_1540) = (safe_mul_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((l_1536 != ((*p_1584->g_1277) = (void*)0)), (((((void*)0 != p_1584->g_262[3]) ^ l_1523) ^ ((((l_1515 ^ (safe_div_func_uint16_t_u_u(FAKE_DIVERGE(p_1584->group_2_offset, get_group_id(2), 10), ((*l_1539) &= l_1501[0][2])))) || l_1501[8][3]) & l_1495[7][7][1]) || p_1584->g_244.s5)) != l_1523))), 0x76A6L)))), l_2[8])), l_1523)), FAKE_DIVERGE(p_1584->group_2_offset, get_group_id(2), 10)))));
                    for (l_1515 = 0; (l_1515 > 28); l_1515++)
                    { /* block id: 596 */
                        (*l_1544) = (safe_div_func_uint8_t_u_u(0xB7L, (0xB57EL && l_1495[5][0][1])));
                        if (p_1584->g_59.f0)
                            goto lbl_1549;
                        if (l_1501[0][2])
                            break;
                        if ((*p_1584->g_3))
                            continue;
                    }
                }
                if (l_1515)
                    break;
            }
            (*l_1550) = l_1495[5][1][1];
            if ((safe_rshift_func_int16_t_s_s(0x0738L, ((*l_1577) = ((((safe_add_func_uint64_t_u_u(l_1495[1][1][1], (((*p_1584->g_667) = (safe_mod_func_int8_t_s_s(1L, 0x56L))) , (GROUP_DIVERGE(1, 1) || (((safe_sub_func_uint64_t_u_u(((p_1584->g_1250.s4--) >= (((p_1584->g_412.x |= (p_1584->g_996.x = ((p_1584->g_1045.s7 && ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(l_1562.sfcdbc8abc9d2d53d)))).s1c, ((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 8))(l_1563.s5749a217)).hi, ((VECTOR(uint8_t, 2))(p_1584->g_1564.xx)).xyyy))).hi))).xxyxxxxxyyxxxyyx)).s3) > (((*l_1565) = p_1584->g_163) , l_1566)))) | p_1584->g_752.y) != (((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0x42E97AAA825A0DE3L, 0x34F24951768283E3L)).xyxxxyxy)).s6 | (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(65535UL, 65532UL)), ((((((++(*l_1571)) > (l_1575 = (l_1495[4][2][1] | l_1574[0]))) || (*l_1550)) & 0x18L) == 0L) || GROUP_DIVERGE(0, 1)), ((VECTOR(uint16_t, 4))(0x6B5CL)), ((VECTOR(uint16_t, 8))(0x567FL)), 0x076EL)).s2, (*l_1550)))))), 2L)) <= l_1563.s5) || p_1584->g_420.w))))) <= 0x1B08F5C0B4EA0499L) == 0x378F3223L) >= 4294967295UL)))))
            { /* block id: 614 */
                int32_t ***l_1579 = &l_1429;
                int32_t ***l_1580 = (void*)0;
                int32_t ***l_1581 = &l_1578;
                (*l_1581) = ((*l_1579) = l_1578);
                (**l_1579) = func_50(l_1563.s3, (*l_1550), l_1582, p_1584);
            }
            else
            { /* block id: 618 */
                l_1515 &= (l_1583 , (~(*l_1550)));
            }
            return (*l_1550);
        }
        p_1584->g_404 = &p_1584->g_405;
    }
    return p_1584->g_1564.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_1584->g_855 p_1584->g_994 p_1584->g_997 p_1584->g_3 p_1584->g_4 p_1584->g_117 p_1584->g_412 p_1584->g_67 p_1584->g_1333 p_1584->g_916 p_1584->g_417.f0 p_1584->g_88 p_1584->g_1358 p_1584->g_622 p_1584->g_776 p_1584->g_302 p_1584->g_856 p_1584->g_650 p_1584->g_544 p_1584->g_118
 * writes: p_1584->g_855 p_1584->g_244 p_1584->g_67 p_1584->g_88 p_1584->g_586
 */
int32_t  func_8(int32_t * p_9, struct S5 * p_1584)
{ /* block id: 491 */
    uint8_t l_1288 = 7UL;
    uint16_t *l_1291 = (void*)0;
    uint16_t *l_1292 = (void*)0;
    uint16_t *l_1293[5];
    uint64_t *l_1296 = (void*)0;
    int32_t l_1297[2][8] = {{0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L}};
    uint64_t *l_1298 = (void*)0;
    uint64_t *l_1299[1][8] = {{&p_1584->g_415[0][1].f4,&p_1584->g_415[0][1].f4,&p_1584->g_415[0][1].f4,&p_1584->g_415[0][1].f4,&p_1584->g_415[0][1].f4,&p_1584->g_415[0][1].f4,&p_1584->g_415[0][1].f4,&p_1584->g_415[0][1].f4}};
    int32_t l_1301 = (-1L);
    int16_t l_1308 = 1L;
    int8_t *l_1309[2][3][5] = {{{&p_1584->g_102[4],&p_1584->g_7[1][2][0],&p_1584->g_102[5],&p_1584->g_99[7][0][2],(void*)0},{&p_1584->g_102[4],&p_1584->g_7[1][2][0],&p_1584->g_102[5],&p_1584->g_99[7][0][2],(void*)0},{&p_1584->g_102[4],&p_1584->g_7[1][2][0],&p_1584->g_102[5],&p_1584->g_99[7][0][2],(void*)0}},{{&p_1584->g_102[4],&p_1584->g_7[1][2][0],&p_1584->g_102[5],&p_1584->g_99[7][0][2],(void*)0},{&p_1584->g_102[4],&p_1584->g_7[1][2][0],&p_1584->g_102[5],&p_1584->g_99[7][0][2],(void*)0},{&p_1584->g_102[4],&p_1584->g_7[1][2][0],&p_1584->g_102[5],&p_1584->g_99[7][0][2],(void*)0}}};
    int8_t **l_1310 = &l_1309[0][2][0];
    uint32_t *l_1311 = &p_1584->g_59.f0;
    uint32_t l_1320 = 0x04B8ED88L;
    int8_t l_1321 = 0x5CL;
    int32_t *l_1322 = (void*)0;
    uint64_t l_1323 = 0xB6762C90963C3DFDL;
    union U2 l_1324[3] = {{0x71D1BAADL},{0x71D1BAADL},{0x71D1BAADL}};
    uint8_t l_1325 = 9UL;
    int8_t l_1326 = 0x51L;
    uint8_t *l_1327 = &p_1584->g_67;
    int32_t *l_1328[7][6][5] = {{{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0}},{{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0}},{{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0}},{{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0}},{{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0}},{{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0}},{{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0},{&p_1584->g_4,(void*)0,(void*)0,&p_1584->g_4,(void*)0}}};
    int8_t l_1329[7][4] = {{0L,(-1L),(-9L),(-1L)},{0L,(-1L),(-9L),(-1L)},{0L,(-1L),(-9L),(-1L)},{0L,(-1L),(-9L),(-1L)},{0L,(-1L),(-9L),(-1L)},{0L,(-1L),(-9L),(-1L)},{0L,(-1L),(-9L),(-1L)}};
    int32_t **l_1330[4];
    union U2 *l_1336[2][9] = {{&l_1324[0],&l_1324[2],&l_1324[0],&l_1324[0],&l_1324[2],&l_1324[0],&l_1324[0],&l_1324[2],&l_1324[0]},{&l_1324[0],&l_1324[2],&l_1324[0],&l_1324[0],&l_1324[2],&l_1324[0],&l_1324[0],&l_1324[2],&l_1324[0]}};
    union U2 **l_1335 = &l_1336[1][1];
    union U2 ***l_1334 = &l_1335;
    uint16_t l_1345 = 65535UL;
    VECTOR(uint16_t, 2) l_1352 = (VECTOR(uint16_t, 2))(0UL, 0x7BDAL);
    VECTOR(uint16_t, 4) l_1353 = (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 0x5A08L), 0x5A08L);
    int16_t *l_1359 = (void*)0;
    int16_t *l_1360[1];
    int32_t l_1361 = 0L;
    uint32_t *l_1362 = (void*)0;
    uint32_t *l_1363 = &p_1584->g_586;
    VECTOR(int32_t, 4) l_1365 = (VECTOR(int32_t, 4))(0x25A9F628L, (VECTOR(int32_t, 2))(0x25A9F628L, 0L), 0L);
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_1293[i] = (void*)0;
    for (i = 0; i < 4; i++)
        l_1330[i] = &p_1584->g_262[2];
    for (i = 0; i < 1; i++)
        l_1360[i] = &l_1308;
    l_1329[3][3] |= (safe_mul_func_uint8_t_u_u(((*l_1327) &= (p_1584->g_244.s0 = (safe_mod_func_int64_t_s_s((0UL || (((((l_1301 = (l_1297[1][3] = (+(((--l_1288) , (p_1584->g_855.y--)) >= GROUP_DIVERGE(2, 1))))) , ((l_1326 |= (safe_mod_func_uint8_t_u_u(0UL, (safe_lshift_func_uint16_t_u_s((((l_1325 &= (+((((l_1301 &= (l_1324[2] , l_1308)) || p_1584->g_994.x) != l_1320) < p_1584->g_997.x))) == p_1584->g_855.y) ^ (*p_1584->g_3)), l_1308))))) != 0UL)) >= p_1584->g_117) ^ l_1320) | 0x67E01E5676B485E0L)), p_1584->g_412.z)))), l_1308));
    p_9 = p_9;
    if ((safe_lshift_func_uint8_t_u_u(((p_1584->g_1333 , l_1334) == ((safe_sub_func_uint16_t_u_u(p_1584->g_994.w, ((safe_mul_func_int8_t_s_s(((p_1584->g_916.x < (safe_lshift_func_int8_t_s_s((((~(((((*l_1363) = ((safe_mod_func_uint32_t_u_u(l_1345, (safe_mul_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s(p_1584->g_417.f0, 4)), ((0x5DADF521L == (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(l_1352.yxyy)), 0x1911L, (p_1584->g_88.s9 ^= p_1584->g_4), 0x953AL, 0x02DFL, ((VECTOR(uint16_t, 2))(0x579EL, 0UL)), ((VECTOR(uint16_t, 4))(0xAC2DL, (((VECTOR(uint16_t, 8))(l_1353.xxyzzyyz)).s7 | (safe_mul_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 4))(p_1584->g_1358.s2e9f)).x, GROUP_DIVERGE(0, 1))), (l_1361 ^= 0x54DEL)))), 4UL, 0UL)), 0xCBF1L, 0x622FL)).s063d)).w, p_1584->g_622.y))) && p_1584->g_776.z))))) == p_1584->g_302.y)) , (void*)0) == &l_1360[0]) , GROUP_DIVERGE(2, 1))) <= p_1584->g_856.se) | 0x7E4A626C528A8618L), p_1584->g_622.x))) == 4L), p_1584->g_650.sc)) != p_1584->g_544.y))) , &l_1335)), p_1584->g_118.w)))
    { /* block id: 510 */
        int64_t l_1364 = 0x2C1065D03697B313L;
        return l_1364;
    }
    else
    { /* block id: 512 */
        int32_t l_1366[1][5][8] = {{{1L,0x68837A77L,1L,1L,0x68837A77L,1L,1L,0x68837A77L},{1L,0x68837A77L,1L,1L,0x68837A77L,1L,1L,0x68837A77L},{1L,0x68837A77L,1L,1L,0x68837A77L,1L,1L,0x68837A77L},{1L,0x68837A77L,1L,1L,0x68837A77L,1L,1L,0x68837A77L},{1L,0x68837A77L,1L,1L,0x68837A77L,1L,1L,0x68837A77L}}};
        int i, j, k;
        l_1366[0][1][2] |= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_1365.yzxyxwxwyxywxxzw)))).odd)).lo)).w, 0x7D28D674L, (-1L), (-10L))).y;
        return l_1366[0][1][2];
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_1584->g_4 p_1584->g_1280
 * writes: p_1584->g_4
 */
union U4  func_10(int32_t * p_11, int32_t  p_12, int8_t  p_13, struct S5 * p_1584)
{ /* block id: 487 */
    uint32_t *l_1281 = &p_1584->g_59.f0;
    int32_t l_1282 = 0L;
    union U4 l_1283 = {0x4A0908CCL};
    (*p_11) &= 0x613C5858L;
    l_1282 = ((((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))(p_1584->g_1280.xyxywyzz)).s45, ((VECTOR(int32_t, 2))(0x2986F2D5L, 0x499298BAL))))).even , p_11) != l_1281);
    return l_1283;
}


/* ------------------------------------------ */
/* 
 * reads : p_1584->g_23 p_1584->g_7 p_1584->g_4 p_1584->g_59 p_1584->g_67 p_1584->g_88 p_1584->g_86 p_1584->g_99 p_1584->g_100 p_1584->g_102 p_1584->g_117 p_1584->g_118 p_1584->g_124 p_1584->g_128 p_1584->g_59.f0 p_1584->g_192 p_1584->g_201 p_1584->g_188 p_1584->g_116 p_1584->g_234 p_1584->g_244 p_1584->g_249 p_1584->g_252 p_1584->g_263 p_1584->g_171 p_1584->g_113 p_1584->g_302 p_1584->g_303 p_1584->g_309 p_1584->g_406 p_1584->g_412 p_1584->g_420 p_1584->g_447 p_1584->g_163 p_1584->g_416.f0 p_1584->g_531 p_1584->g_544 p_1584->g_216.f0 p_1584->g_637 p_1584->g_85 p_1584->g_752 p_1584->g_769 p_1584->g_776 p_1584->g_417.f0 p_1584->g_667 p_1584->g_795 p_1584->g_622 p_1584->g_619 p_1584->g_543 p_1584->g_816 p_1584->g_477 p_1584->g_650 p_1584->g_586 p_1584->g_881 p_1584->g_623 p_1584->g_994 p_1584->g_996 p_1584->g_997 p_1584->g_415.f0 p_1584->g_1045 p_1584->g_621 p_1584->g_1090 p_1584->g_319 p_1584->g_1111 p_1584->g_496 p_1584->g_1158 p_1584->g_1167 p_1584->g_1195 p_1584->g_635 p_1584->g_636 p_1584->g_1250 p_1584->g_916 p_1584->g_3
 * writes: p_1584->g_67 p_1584->g_4 p_1584->g_88 p_1584->g_102 p_1584->g_111 p_1584->g_116 p_1584->g_117 p_1584->g_171 p_1584->g_188 p_1584->g_244 p_1584->g_262 p_1584->g_319 p_1584->g_353 p_1584->g_403 p_1584->g_404 p_1584->g_406 p_1584->g_59 p_1584->g_86 p_1584->g_99 p_1584->g_85 p_1584->g_216.f0 p_1584->g_163.f0 p_1584->g_610 p_1584->g_234 p_1584->g_667 p_1584->g_7 p_1584->g_880 p_1584->g_420 p_1584->g_415.f0 p_1584->g_769 p_1584->g_621 p_1584->g_996 p_1584->g_1111 p_1584->g_477
 */
int32_t  func_19(uint32_t  p_20, struct S5 * p_1584)
{ /* block id: 10 */
    VECTOR(int64_t, 4) l_21 = (VECTOR(int64_t, 4))(0x1690B2811FFBE626L, (VECTOR(int64_t, 2))(0x1690B2811FFBE626L, 1L), 1L);
    VECTOR(int64_t, 8) l_22 = (VECTOR(int64_t, 8))(0x65FBC01D4C3F121FL, (VECTOR(int64_t, 4))(0x65FBC01D4C3F121FL, (VECTOR(int64_t, 2))(0x65FBC01D4C3F121FL, 0x59515ED761E7FF51L), 0x59515ED761E7FF51L), 0x59515ED761E7FF51L, 0x65FBC01D4C3F121FL, 0x59515ED761E7FF51L);
    VECTOR(int64_t, 4) l_24 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0L), 0L);
    int32_t *l_38[10] = {&p_1584->g_4,&p_1584->g_4,&p_1584->g_4,&p_1584->g_4,&p_1584->g_4,&p_1584->g_4,&p_1584->g_4,&p_1584->g_4,&p_1584->g_4,&p_1584->g_4};
    uint64_t l_54 = 18446744073709551606UL;
    int8_t *l_653[6] = {(void*)0,&p_1584->g_7[0][1][0],(void*)0,(void*)0,&p_1584->g_7[0][1][0],(void*)0};
    int32_t l_806 = 9L;
    uint64_t l_1269[5][3] = {{9UL,0UL,9UL},{9UL,0UL,9UL},{9UL,0UL,9UL},{9UL,0UL,9UL},{9UL,0UL,9UL}};
    uint8_t l_1272[6] = {0x2DL,0x2DL,0x2DL,0x2DL,0x2DL,0x2DL};
    int i, j;
    (*p_1584->g_3) = (((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 8))(l_21.ywwxyzyx)), ((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(l_22.s0052)).yzxxwyxyyxyxyxwz)).s5, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(p_1584->g_23.xxxy)).odd)), (-1L)))))).wyxxywzw))).s4231170055033265, ((VECTOR(int64_t, 4))(l_24.zxzx)).wyxzxyzzzwywzyxy))).s7 || (p_1584->g_23.y <= func_25(((safe_rshift_func_uint16_t_u_u(((safe_mod_func_uint16_t_u_u(((func_33(p_20, l_21.x, (((void*)0 != l_38[9]) , p_1584->g_7[0][1][0]), func_39(func_45(func_50((p_1584->g_7[3][1][0] != p_20), p_1584->g_4, &p_1584->g_7[0][1][0], p_1584), &p_1584->g_4, p_1584->g_7[0][0][0], l_54, p_1584), p_1584->g_637, l_653[1], p_20, l_653[1], p_1584), p_1584) , p_20) & l_806), 0x4E2FL)) && p_20), p_20)) ^ p_1584->g_619.x), l_653[4], p_1584->g_543.s6, p_1584)));
    l_1269[2][0]--;
    l_1272[4] = p_20;
    return p_20;
}


/* ------------------------------------------ */
/* 
 * reads : p_1584->g_4 p_1584->g_816 p_1584->g_447 p_1584->g_477 p_1584->g_650 p_1584->g_234 p_1584->g_586 p_1584->g_881 p_1584->g_623 p_1584->g_171 p_1584->g_303 p_1584->g_531 p_1584->g_188 p_1584->g_994 p_1584->g_996 p_1584->g_997 p_1584->g_415.f0 p_1584->g_163 p_1584->g_769 p_1584->g_88 p_1584->g_1045 p_1584->g_621 p_1584->g_1090 p_1584->g_319 p_1584->g_416.f0 p_1584->g_1111 p_1584->g_252 p_1584->g_496 p_1584->g_244 p_1584->g_85 p_1584->g_1158 p_1584->g_1167 p_1584->g_102 p_1584->g_302 p_1584->g_1195 p_1584->g_635 p_1584->g_636 p_1584->g_124 p_1584->g_113 p_1584->g_1250 p_1584->g_916 p_1584->g_118
 * writes: p_1584->g_4 p_1584->g_59.f0 p_1584->g_7 p_1584->g_880 p_1584->g_171 p_1584->g_420 p_1584->g_353 p_1584->g_188 p_1584->g_59 p_1584->g_415.f0 p_1584->g_769 p_1584->g_262 p_1584->g_244 p_1584->g_621 p_1584->g_996 p_1584->g_1111 p_1584->g_477 p_1584->g_88
 */
int8_t  func_25(uint64_t  p_26, int8_t * p_27, uint64_t  p_28, struct S5 * p_1584)
{ /* block id: 303 */
    VECTOR(int8_t, 2) l_811 = (VECTOR(int8_t, 2))((-7L), 0x65L);
    VECTOR(int16_t, 2) l_825 = (VECTOR(int16_t, 2))((-9L), 0x14C2L);
    union U2 *l_827 = &p_1584->g_163;
    union U2 **l_826[8][8][3] = {{{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827}},{{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827}},{{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827}},{{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827}},{{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827}},{{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827}},{{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827}},{{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827},{&l_827,&l_827,&l_827}}};
    int32_t l_832 = 2L;
    uint64_t *l_859 = &p_1584->g_415[0][1].f0;
    uint32_t ***l_868 = (void*)0;
    int32_t l_885 = 0x5E41DC34L;
    uint8_t l_904[9][2];
    VECTOR(uint16_t, 4) l_915 = (VECTOR(uint16_t, 4))(0x4476L, (VECTOR(uint16_t, 2))(0x4476L, 65532UL), 65532UL);
    uint64_t l_950 = 18446744073709551615UL;
    int32_t l_958 = 0x0B55BE8BL;
    int8_t l_961 = 0x4FL;
    int32_t l_966 = 0x561DF5DCL;
    int32_t l_969[8] = {0x40ED623FL,0x40ED623FL,0x40ED623FL,0x40ED623FL,0x40ED623FL,0x40ED623FL,0x40ED623FL,0x40ED623FL};
    uint16_t l_970 = 1UL;
    union U4 *l_980 = &p_1584->g_59;
    VECTOR(uint64_t, 2) l_1041 = (VECTOR(uint64_t, 2))(1UL, 0UL);
    VECTOR(uint16_t, 2) l_1046 = (VECTOR(uint16_t, 2))(0xF83FL, 0x73A5L);
    int16_t l_1048 = 1L;
    int16_t l_1049 = (-1L);
    int8_t l_1149 = 0x4FL;
    VECTOR(int32_t, 2) l_1153 = (VECTOR(int32_t, 2))(5L, 0x6CCE99E7L);
    VECTOR(int8_t, 16) l_1166 = (VECTOR(int8_t, 16))((-5L), (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 0x08L), 0x08L), 0x08L, (-5L), 0x08L, (VECTOR(int8_t, 2))((-5L), 0x08L), (VECTOR(int8_t, 2))((-5L), 0x08L), (-5L), 0x08L, (-5L), 0x08L);
    int32_t **l_1170[8][6];
    uint32_t l_1218 = 0UL;
    uint32_t l_1219 = 4294967295UL;
    uint32_t l_1268 = 0xBCBD2899L;
    int i, j, k;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
            l_904[i][j] = 0xE3L;
    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 6; j++)
            l_1170[i][j] = &p_1584->g_262[1];
    }
    for (p_1584->g_4 = 0; (p_1584->g_4 == (-8)); p_1584->g_4 = safe_sub_func_int32_t_s_s(p_1584->g_4, 8))
    { /* block id: 306 */
        union U2 **l_828 = &l_827;
        int32_t l_829 = 0x301B0FDBL;
        uint8_t *l_830 = (void*)0;
        uint8_t *l_831[7][5][7] = {{{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0}},{{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0}},{{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0}},{{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0}},{{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0}},{{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0}},{{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0},{&p_1584->g_111,&p_1584->g_111,&p_1584->g_67,(void*)0,&p_1584->g_67,(void*)0,(void*)0}}};
        uint64_t l_833 = 1UL;
        VECTOR(int32_t, 16) l_841 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int32_t, 2))((-1L), 1L), (VECTOR(int32_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L);
        VECTOR(int32_t, 2) l_842 = (VECTOR(int32_t, 2))(8L, (-1L));
        uint32_t l_889 = 1UL;
        uint8_t l_949[1];
        union U4 l_984 = {1UL};
        union U3 *l_988[7] = {&p_1584->g_989,&p_1584->g_989,&p_1584->g_989,&p_1584->g_989,&p_1584->g_989,&p_1584->g_989,&p_1584->g_989};
        union U3 **l_987 = &l_988[1];
        VECTOR(uint8_t, 4) l_1047 = (VECTOR(uint8_t, 4))(0x20L, (VECTOR(uint8_t, 2))(0x20L, 7UL), 7UL);
        uint32_t l_1058 = 9UL;
        int16_t ***l_1071[8][2] = {{&p_1584->g_504,&p_1584->g_504},{&p_1584->g_504,&p_1584->g_504},{&p_1584->g_504,&p_1584->g_504},{&p_1584->g_504,&p_1584->g_504},{&p_1584->g_504,&p_1584->g_504},{&p_1584->g_504,&p_1584->g_504},{&p_1584->g_504,&p_1584->g_504},{&p_1584->g_504,&p_1584->g_504}};
        VECTOR(int32_t, 16) l_1083 = (VECTOR(int32_t, 16))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 4L), 4L), 4L, 2L, 4L, (VECTOR(int32_t, 2))(2L, 4L), (VECTOR(int32_t, 2))(2L, 4L), 2L, 4L, 2L, 4L);
        int64_t l_1092 = (-1L);
        VECTOR(uint16_t, 2) l_1133 = (VECTOR(uint16_t, 2))(65535UL, 0x124DL);
        uint8_t l_1147 = 1UL;
        VECTOR(int32_t, 4) l_1151 = (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0L), 0L);
        VECTOR(int32_t, 4) l_1157 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x177772C0L), 0x177772C0L);
        VECTOR(int32_t, 8) l_1159 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
        int32_t *l_1181 = &l_829;
        union U0 **l_1185 = (void*)0;
        VECTOR(uint32_t, 2) l_1196 = (VECTOR(uint32_t, 2))(0x1DA5148EL, 0xFDB09080L);
        int16_t l_1197[1];
        int64_t l_1200[6];
        uint32_t **l_1206 = &p_1584->g_637;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_949[i] = 0x09L;
        for (i = 0; i < 1; i++)
            l_1197[i] = 0x15D0L;
        for (i = 0; i < 6; i++)
            l_1200[i] = 1L;
        if ((FAKE_DIVERGE(p_1584->global_1_offset, get_global_id(1), 10) > (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(l_811.yxyxyxxx)).s3, (safe_div_func_int32_t_s_s(((safe_mod_func_int16_t_s_s(0x15D3L, GROUP_DIVERGE(1, 1))) ^ ((VECTOR(uint64_t, 16))(p_1584->g_816.s1103531526134322)).sc), (safe_add_func_uint8_t_u_u((l_832 ^= (safe_rshift_func_int8_t_s_s(0L, (safe_rshift_func_int16_t_s_u((4294967292UL == (+(safe_sub_func_int64_t_s_s((((1UL > 9L) < 0UL) , (((p_28 >= ((VECTOR(int16_t, 2))(l_825.yx)).even) <= (l_826[4][2][0] != l_828)) == l_829)), 9L)))), FAKE_DIVERGE(p_1584->global_0_offset, get_global_id(0), 10)))))), l_833))))))))
        { /* block id: 308 */
            int32_t *l_834 = &l_832;
            int32_t l_901 = (-3L);
            int32_t l_952 = 0x26E27E28L;
            int32_t l_953 = 0x6587EC5AL;
            int32_t l_954 = 0L;
            int32_t l_955 = 1L;
            int32_t l_957 = 0x2BF9AB18L;
            int32_t l_959 = 0x69BB6369L;
            int8_t l_960 = 0x26L;
            int32_t l_962 = 0L;
            int32_t l_963 = 0x78FE4226L;
            int32_t l_964 = (-4L);
            int32_t l_967 = 0x2305C097L;
            int32_t l_968[9] = {0x5A521910L,0x5A521910L,0x5A521910L,0x5A521910L,0x5A521910L,0x5A521910L,0x5A521910L,0x5A521910L,0x5A521910L};
            int i;
            (*l_834) |= (&p_1584->g_4 == (void*)0);
            for (l_832 = 0; (l_832 < (-13)); l_832 = safe_sub_func_uint8_t_u_u(l_832, 2))
            { /* block id: 312 */
                uint32_t *l_839 = &p_1584->g_59.f0;
                VECTOR(uint16_t, 4) l_853 = (VECTOR(uint16_t, 4))(0x6713L, (VECTOR(uint16_t, 2))(0x6713L, 0x34B6L), 0x34B6L);
                uint16_t *l_854 = (void*)0;
                int32_t *l_860 = (void*)0;
                int32_t *l_861[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint32_t *l_862[2];
                union U2 l_867 = {0xBCEB5D30L};
                int16_t **l_871 = &p_1584->g_405;
                int32_t l_875 = 0x781BF080L;
                union U4 *l_878 = (void*)0;
                VECTOR(int32_t, 4) l_894 = (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 9L), 9L);
                VECTOR(int32_t, 16) l_956 = (VECTOR(int32_t, 16))(0x7C77D726L, (VECTOR(int32_t, 4))(0x7C77D726L, (VECTOR(int32_t, 2))(0x7C77D726L, 0x766A99CDL), 0x766A99CDL), 0x766A99CDL, 0x7C77D726L, 0x766A99CDL, (VECTOR(int32_t, 2))(0x7C77D726L, 0x766A99CDL), (VECTOR(int32_t, 2))(0x7C77D726L, 0x766A99CDL), 0x7C77D726L, 0x766A99CDL, 0x7C77D726L, 0x766A99CDL);
                int32_t l_965 = 0x5AC75D4FL;
                int i;
                for (i = 0; i < 2; i++)
                    l_862[i] = (void*)0;
                if (((safe_sub_func_int32_t_s_s(0x271C3771L, ((((p_1584->g_447.x , (((*l_839) = 0xA9AF98D5L) , ((VECTOR(uint32_t, 16))(abs_diff(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(p_1584->g_840.s5712)).odd, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_841.s57b7)).zyyyxzyxxzzxxwww)).saa, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_842.xx)).yyyyxxxxxyxyyxyy)).sa6))).xxxyxxxxxxxxyxyy, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))((safe_add_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s((safe_sub_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(p_26, 4)), ((VECTOR(uint16_t, 8))(0xE3CCL, (p_1584->g_249.y = p_28), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(l_853.wxxz)).zzwzxzyxzzwxyxyx)).s96)), ((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))((p_1584->g_420.x = (0x4ED47471L & l_853.z)), 0UL, ((VECTOR(uint16_t, 2))(p_1584->g_855.yx)), 0xCDFDL, ((VECTOR(uint16_t, 2))(p_1584->g_856.sd2)), ((l_841.s5 = ((VECTOR(uint32_t, 8))(mad_sat(((VECTOR(uint32_t, 4))(p_26, 0x4D6CA39DL, 0x5041DC2AL, 0x83508937L)).yzzzxxzw, ((VECTOR(uint32_t, 16))((((safe_mul_func_uint8_t_u_u(((l_829 = ((void*)0 == l_859)) < 0x063A6195L), p_28)) || (*l_834)) || l_825.x), p_28, p_26, 4294967295UL, 0xB8BA05DFL, 1UL, ((VECTOR(uint32_t, 4))(1UL)), p_28, 0xEDB90B0BL, ((VECTOR(uint32_t, 2))(0xA62763C5L)), 1UL, 0x7EC387C0L)).hi, ((VECTOR(uint32_t, 8))(0xE4CBAE4CL))))).s2) , 65527UL), ((VECTOR(uint16_t, 2))(0x015AL)), 0x910EL, 0x5D99L, l_825.x, 65528UL, 0xCE7DL, 1UL)).s1, p_28, ((VECTOR(uint16_t, 4))(65528UL)), 7UL, 0x3937L)).s17))).xxxxxxyx, ((VECTOR(uint16_t, 8))(1UL))))).lo, ((VECTOR(uint16_t, 4))(1UL))))))).s4)), p_28)), 4)), p_26)), p_28, ((VECTOR(int32_t, 2))(0x696D7C45L)), ((VECTOR(int32_t, 4))(0x2736AFC2L)))))).s2062145256555720, ((VECTOR(int32_t, 16))((-1L)))))).lo, ((VECTOR(int32_t, 8))(0L))))), ((VECTOR(int32_t, 8))(0x46571979L))))), ((VECTOR(int32_t, 8))(0x6C210F7BL))))).s46)), ((VECTOR(int32_t, 4))(1L)), 0x642E712CL, 0x714C82DAL)))).s5302616267306426))).sf2d4)).xzyxxzyx)).s0020006741043626, ((VECTOR(int32_t, 16))(0L))))).s1)) || 1UL) != p_26) , 0x51F9817BL))) != p_1584->g_477.w))
                { /* block id: 318 */
                    int8_t *l_872 = &p_1584->g_7[0][1][0];
                    int32_t l_874[9] = {3L,3L,3L,3L,3L,3L,3L,3L,3L};
                    VECTOR(int8_t, 8) l_892 = (VECTOR(int8_t, 8))(0x69L, (VECTOR(int8_t, 4))(0x69L, (VECTOR(int8_t, 2))(0x69L, (-1L)), (-1L)), (-1L), 0x69L, (-1L));
                    int i;
                    if ((l_875 = (safe_mul_func_uint8_t_u_u(((((safe_add_func_int16_t_s_s((((l_867 , l_868) != (void*)0) || ((((*l_872) = ((p_28 != (safe_div_func_int16_t_s_s(4L, p_1584->g_650.s0))) , (l_871 == (void*)0))) >= ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(p_1584->g_873.s7636)).lo)).yyxyyyyy)).s5) ^ p_26)), p_26)) <= l_874[4]) < l_842.y) , 0UL), p_1584->g_234))))
                    { /* block id: 321 */
                        return p_1584->g_586;
                    }
                    else
                    { /* block id: 323 */
                        uint32_t l_876 = 0xBF120175L;
                        int32_t l_877 = 1L;
                        union U4 **l_879[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_879[i] = &l_878;
                        l_877 = (l_874[4] = (l_876 < p_26));
                        l_874[4] |= 0L;
                        p_1584->g_880[3] = l_878;
                        l_885 = ((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(p_1584->g_881.wwwzyxyxzwxxzzxy)).lo)).s1 > (safe_mul_func_uint16_t_u_u(p_1584->g_623.s1, (safe_unary_minus_func_int16_t_s((l_874[4] = (~0L))))))) >= l_842.y);
                    }
                    (*l_828) = &p_1584->g_163;
                    l_874[3] ^= 1L;
                    for (p_1584->g_171 = 0; (p_1584->g_171 >= 53); p_1584->g_171++)
                    { /* block id: 335 */
                        VECTOR(uint32_t, 4) l_888 = (VECTOR(uint32_t, 4))(0x1A1C25BDL, (VECTOR(uint32_t, 2))(0x1A1C25BDL, 1UL), 1UL);
                        uint16_t *l_893 = (void*)0;
                        int32_t l_902 = 0x27DFF331L;
                        int32_t l_903 = (-1L);
                        int i;
                        l_903 ^= ((((((((VECTOR(uint32_t, 16))(l_888.yxwwwwzwwzzxxxww)).se && (p_1584->g_303.w , (l_874[4] = (*l_834)))) <= FAKE_DIVERGE(p_1584->local_0_offset, get_local_id(0), 10)) == (l_889 >= l_833)) , (safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_892.s7044)), ((VECTOR(int8_t, 2))(0x01L, 0x1DL)), (-9L), 5L)).s0, p_28))) , ((p_1584->g_420.w = l_832) && (((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 4))(1L, (l_902 = ((VECTOR(int32_t, 16))(0x0D3BC0A1L, (-9L), 6L, 0x4F1E1072L, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_894.xyzx)).hi)), (l_901 = (((p_26 == (safe_div_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((((safe_mul_func_uint8_t_u_u((((((VECTOR(uint8_t, 2))(0x1DL, 0x1EL)).even || ((1L || (*l_834)) > l_874[3])) < 1L) || 1UL), l_832)) < 0L) , p_1584->g_4), 1UL)) , (-1L)), l_888.y))) , &p_1584->g_188) == &p_1584->g_188)), 0x446F88EDL, 1L, p_26, 5L, 0x04B7DB2CL)), ((VECTOR(int32_t, 4))(0x38652ED7L)))).sb), 1L, (-10L))), ((VECTOR(int32_t, 4))((-10L))), ((VECTOR(int32_t, 4))(0x3BE54527L))))).w , p_28))) <= p_26);
                        l_904[1][0]--;
                    }
                }
                else
                { /* block id: 343 */
                    VECTOR(int64_t, 16) l_924 = (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 7L), 7L), 7L, 0L, 7L, (VECTOR(int64_t, 2))(0L, 7L), (VECTOR(int64_t, 2))(0L, 7L), 0L, 7L, 0L, 7L);
                    union U2 **l_947 = &l_827;
                    int32_t l_948 = 5L;
                    int i;
                    for (p_1584->g_353 = (-16); (p_1584->g_353 == (-20)); p_1584->g_353--)
                    { /* block id: 346 */
                        VECTOR(int64_t, 4) l_937 = (VECTOR(int64_t, 4))(0x00A3B7C2C901A616L, (VECTOR(int64_t, 2))(0x00A3B7C2C901A616L, 0x0FC0C920796AE712L), 0x0FC0C920796AE712L);
                        union U2 **l_946 = &l_827;
                        int32_t l_951[9][6][4] = {{{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL}},{{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL}},{{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL}},{{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL}},{{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL}},{{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL}},{{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL}},{{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL}},{{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL},{0x6417CBEAL,0x6B13CF03L,0x6417CBEAL,0x6417CBEAL}}};
                        int i, j, k;
                        l_885 |= (((safe_rshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(GROUP_DIVERGE(1, 1), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(1UL, ((VECTOR(uint16_t, 2))(65533UL, 3UL)), 0xF48FL, 0xDDB6L, ((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 16))((+(p_28 | (p_1584->g_192.x < 0x480367FA7F5D2F71L))), ((VECTOR(uint16_t, 8))(l_915.xywzwyyx)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(p_1584->g_916.xy)).xxyx)), ((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 8))(0UL, 0x715DL, p_28, ((VECTOR(uint16_t, 2))(p_1584->g_917.xz)), (safe_rshift_func_int8_t_s_s((safe_add_func_int64_t_s_s(((((safe_add_func_uint16_t_u_u((p_1584->g_420.x , (((VECTOR(int64_t, 2))(l_924.s46)).even , ((safe_mod_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(((0x311FL | ((safe_div_func_int8_t_s_s((safe_sub_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s((safe_sub_func_int64_t_s_s((0UL != (((l_937.y > (safe_rshift_func_int16_t_s_u(((l_948 = (((safe_mod_func_int64_t_s_s(((safe_mul_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s(((l_946 != l_947) && 0x9F7C2887L), 6)) < (*l_834)), p_26)) , p_1584->g_916.y), p_28)) <= p_1584->g_623.s4) , l_841.sb)) ^ p_26), 14))) & 0x6E5C2DB2L) <= 0x9EB8F51CL)), p_28)), p_28)), p_1584->g_302.x)), p_26)) , p_28)) < p_26), p_1584->g_117)), 0x4210AA21L)) || 0L))), l_949[0])) >= 255UL) >= p_26) < l_950), l_832)), 6)), 65535UL, 1UL)).s15, ((VECTOR(uint16_t, 2))(2UL))))), 0xE563L)), ((VECTOR(uint16_t, 16))(2UL))))).sa, 65531UL, 0xFCB2L)).odd)), ((VECTOR(uint16_t, 2))(0x4F1CL)), 0x0756L)).s7, 0x7787L)), l_825.x)), l_937.z)) ^ l_937.w) && l_842.y);
                        l_951[6][2][2] ^= l_937.w;
                    }
                }
                ++l_970;
                l_829 = ((safe_rshift_func_int16_t_s_u(0x038FL, 4)) && p_1584->g_531.sf);
                for (l_952 = 13; (l_952 >= (-25)); l_952--)
                { /* block id: 356 */
                    return l_842.y;
                }
            }
            for (p_1584->g_188 = 0; (p_1584->g_188 >= (-8)); p_1584->g_188--)
            { /* block id: 362 */
                union U2 ***l_979 = &l_826[3][1][2];
                (*l_979) = &l_827;
                if ((*l_834))
                    continue;
                if (p_26)
                    break;
                (*l_834) = 0x5A140ADFL;
            }
        }
        else
        { /* block id: 368 */
            int32_t *l_981[5][6][7] = {{{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829}},{{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829}},{{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829}},{{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829}},{{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829},{&l_969[5],&l_829,&l_969[6],&l_829,&l_885,&l_885,&l_829}}};
            union U0 *l_1009 = &p_1584->g_1010;
            union U0 **l_1008 = &l_1009;
            int32_t l_1033 = 0L;
            uint8_t l_1034 = 255UL;
            union U4 l_1044 = {0UL};
            uint32_t l_1050 = 0x4259C83CL;
            VECTOR(uint32_t, 4) l_1055 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x19DFD0D5L), 0x19DFD0D5L);
            VECTOR(int32_t, 2) l_1091 = (VECTOR(int32_t, 2))(4L, 0L);
            int32_t l_1109 = 0x47400A54L;
            VECTOR(uint16_t, 4) l_1124 = (VECTOR(uint16_t, 4))(0x408EL, (VECTOR(uint16_t, 2))(0x408EL, 0xE10FL), 0xE10FL);
            union U4 **l_1146 = &p_1584->g_880[3];
            uint8_t l_1173 = 0UL;
            int i, j, k;
            l_842.y &= (l_980 == &p_1584->g_59);
            if (l_915.z)
            { /* block id: 370 */
                uint16_t *l_991 = (void*)0;
                VECTOR(int32_t, 16) l_995 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x5DD7D0DFL), 0x5DD7D0DFL), 0x5DD7D0DFL, 1L, 0x5DD7D0DFL, (VECTOR(int32_t, 2))(1L, 0x5DD7D0DFL), (VECTOR(int32_t, 2))(1L, 0x5DD7D0DFL), 1L, 0x5DD7D0DFL, 1L, 0x5DD7D0DFL);
                int8_t l_1027 = 0x57L;
                int8_t l_1031[1][1];
                int32_t l_1032 = 0x28FF3585L;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_1031[i][j] = 0x0FL;
                }
                if ((safe_mod_func_uint32_t_u_u((((*l_980) = l_984) , (1L && ((safe_mul_func_int16_t_s_s(((void*)0 != l_987), (((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 8))(8L, 3L, (((l_829 = 2UL) ^ (safe_div_func_uint32_t_u_u(p_28, (l_966 = ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(p_1584->g_994.yxxw)))), ((VECTOR(int32_t, 4))(l_995.s3110))))).x)))) , ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(p_1584->g_996.ywxwwzywyxzyyxxx)))).scc88)).z), (-1L), 1L, (-5L), 0x10ED7566A2ADF8AAL, (-8L))).hi, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 8))(0x116DA007L, (((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 8))(p_1584->g_997.xxyyxyyy)).s15, ((VECTOR(uint64_t, 16))(abs(((VECTOR(uint64_t, 2))(18446744073709551609UL, 0xCF9868C70281D80DL)).xxyyyxxxyyyxyxxy))).sba))), 0UL, 0x1416C2EDBAB4336FL)))).x >= ((((*l_859)--) ^ ((l_842.y = ((!0x6344DBECB32C1263L) , (p_1584->g_163 , l_995.s5))) || 0x16L)) && FAKE_DIVERGE(p_1584->local_2_offset, get_local_id(2), 10))), (-1L), (-2L), 1L, 0x20FC7561L, 1L, 0x35B7EC22L)).odd, ((VECTOR(uint32_t, 4))(4294967289UL))))), ((VECTOR(int64_t, 8))(0L)), (-1L), 0x3F81887A8A82A6D8L, 0x78AE5B606D6D6755L, (-2L))).s56, ((VECTOR(int64_t, 2))(0x22B52CD767EE54C2L))))), 6L, (-3L))), p_26, ((VECTOR(int64_t, 2))(1L)), 0L)).hi))).lo, ((VECTOR(int64_t, 2))((-1L)))))), ((VECTOR(int64_t, 8))((-7L))), ((VECTOR(int64_t, 2))(0x75C2ECF719568265L)), ((VECTOR(int64_t, 4))(0x7CC3CB51331505D8L)))).s92))).lo != p_28))) , (-1L)))), p_28)))
                { /* block id: 376 */
                    int64_t *l_1002[4][4] = {{&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,(void*)0},{&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,(void*)0},{&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,(void*)0},{&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,(void*)0}};
                    int32_t l_1003 = (-1L);
                    union U4 l_1011 = {0xF80D7BBAL};
                    int32_t **l_1023 = &l_981[4][2][4];
                    int32_t **l_1024 = (void*)0;
                    int32_t **l_1025 = &p_1584->g_262[2];
                    int32_t l_1026 = 0x1025E089L;
                    int32_t l_1028 = 0x54E88D72L;
                    int32_t l_1029 = 9L;
                    int32_t l_1030[10] = {0x5AA42605L,0x5AA42605L,0x5AA42605L,0x5AA42605L,0x5AA42605L,0x5AA42605L,0x5AA42605L,0x5AA42605L,0x5AA42605L,0x5AA42605L};
                    int i, j;
                    if ((safe_lshift_func_int16_t_s_s((l_841.sb ^ p_28), ((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 8))(((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((GROUP_DIVERGE(2, 1) && ((l_1003 |= (p_1584->g_769.s1 ^= l_904[1][0])) < ((FAKE_DIVERGE(p_1584->global_0_offset, get_global_id(0), 10) || (safe_add_func_uint32_t_u_u((safe_mod_func_int32_t_s_s((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x03BDL, 0x62D7L)), 0L, 0x1FE3L)).x , ((0L != ((l_1008 == (l_1011 , &p_1584->g_406)) || (((safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((safe_add_func_uint32_t_u_u(0x80D2669DL, ((safe_sub_func_int64_t_s_s(0x2085AD1EC21D5A5EL, 18446744073709551614UL)) >= l_1011.f0))), 7)), l_995.s0)) > 0UL) ^ 0x17A913D1L))) , 0x59FEEF3DL)), p_28)), l_969[7]))) == p_28))) != p_1584->g_88.s9), ((VECTOR(int8_t, 4))(0x2AL)), 0x2EL, 1L, ((VECTOR(int8_t, 8))(0x3AL)), 0L)).s25cf)).w || p_26) > p_28), ((VECTOR(int16_t, 4))(1L)), ((VECTOR(int16_t, 2))(1L)), 0x7F6DL)).odd, ((VECTOR(int16_t, 4))(0x3B2CL))))).w)))
                    { /* block id: 379 */
                        uint16_t l_1020 = 65535UL;
                        int32_t **l_1021 = (void*)0;
                        int32_t **l_1022 = &p_1584->g_262[2];
                        if (l_1020)
                            break;
                        l_969[5] &= l_1011.f0;
                        (*l_1022) = func_50((&p_27 == (p_1584->g_163 , (void*)0)), (l_842.x = 0x0A6CC9E0L), l_831[3][0][5], p_1584);
                    }
                    else
                    { /* block id: 384 */
                        return p_1584->g_88.s5;
                    }
                    (*l_1025) = ((*l_1023) = &l_969[7]);
                    ++l_1034;
                }
                else
                { /* block id: 390 */
                    uint32_t l_1042 = 4294967291UL;
                    int32_t l_1043 = 0x0B6D83CEL;
                    l_842.y = ((safe_rshift_func_uint16_t_u_s(((0x5B21327AE8FD2AF9L <= (p_26 != (safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (p_1584->g_163 , ((p_28 < ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(l_1041.xyyxyxxyxyxxxxyy)).s9aab)).y) <= (((l_1042 = l_842.x) & l_1043) && (l_1044 , ((l_885 = ((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 2))(p_1584->g_1045.s43)).yyxxxyyxyyxyxyyy, ((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 8))(l_1046.yyyxxxyx)).s5737566660674703, ((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 2))(l_1047.ww)), ((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 8))(252UL, 255UL, 250UL, (p_1584->g_244.s0 = (p_28 && 0x0EL)), ((VECTOR(uint8_t, 4))(0UL)))).odd, ((VECTOR(uint8_t, 4))(0UL))))).hi))).xyxyyyyxxxyyxyxx))).s6f02, ((VECTOR(uint16_t, 4))(6UL))))).xxwyyxyzxxyxxwxx))).sf) >= 0xD826L))))))))) <= 4294967295UL), p_28)) == 0x67687FBD899E0533L);
                }
                l_1050--;
            }
            else
            { /* block id: 397 */
                uint32_t *l_1061[2];
                int32_t l_1062 = 0x56122459L;
                int16_t ***l_1070 = &p_1584->g_504;
                int32_t l_1106 = (-1L);
                int32_t l_1107 = 0x1905D47FL;
                VECTOR(uint16_t, 16) l_1154 = (VECTOR(uint16_t, 16))(7UL, (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 0x7959L), 0x7959L), 0x7959L, 7UL, 0x7959L, (VECTOR(uint16_t, 2))(7UL, 0x7959L), (VECTOR(uint16_t, 2))(7UL, 0x7959L), 7UL, 0x7959L, 7UL, 0x7959L);
                VECTOR(int32_t, 16) l_1156 = (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0L), 0L), 0L, 8L, 0L, (VECTOR(int32_t, 2))(8L, 0L), (VECTOR(int32_t, 2))(8L, 0L), 8L, 0L, 8L, 0L);
                union U4 *l_1176 = (void*)0;
                int i;
                for (i = 0; i < 2; i++)
                    l_1061[i] = &l_889;
                if (((p_26 == (l_966 = ((((safe_div_func_uint32_t_u_u(l_1047.x, ((VECTOR(uint32_t, 8))(l_1055.wzxywyyz)).s4)) , p_26) && (safe_mul_func_uint16_t_u_u(0x0580L, (255UL | l_829)))) , (l_1058 >= ((safe_lshift_func_uint16_t_u_s(65530UL, (((--p_1584->g_621.s5) >= ((&p_1584->g_4 == &l_829) > l_949[0])) , p_28))) , p_28))))) & l_949[0]))
                { /* block id: 400 */
                    uint32_t l_1065 = 0x85E95D39L;
                    int16_t ****l_1072 = &l_1071[6][1];
                    int64_t *l_1093 = (void*)0;
                    int64_t *l_1094[7];
                    int32_t l_1095 = (-7L);
                    uint16_t *l_1096 = (void*)0;
                    VECTOR(uint16_t, 16) l_1097 = (VECTOR(uint16_t, 16))(65529UL, (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 65535UL), 65535UL), 65535UL, 65529UL, 65535UL, (VECTOR(uint16_t, 2))(65529UL, 65535UL), (VECTOR(uint16_t, 2))(65529UL, 65535UL), 65529UL, 65535UL, 65529UL, 65535UL);
                    int32_t *l_1102 = (void*)0;
                    union U4 **l_1103 = &p_1584->g_880[3];
                    int32_t l_1108 = 0L;
                    int32_t l_1110[1];
                    int8_t *l_1148[10][10][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
                    int i, j, k;
                    for (i = 0; i < 7; i++)
                        l_1094[i] = (void*)0;
                    for (i = 0; i < 1; i++)
                        l_1110[i] = 1L;
                    l_1065++;
                    if ((l_842.x |= (safe_mul_func_uint16_t_u_u(((((~(((((l_949[0] ^ FAKE_DIVERGE(p_1584->global_1_offset, get_global_id(1), 10)) | (0x7571FE0B11227B2BL & (((l_1070 != ((*l_1072) = l_1071[6][1])) | p_28) > (safe_rshift_func_uint16_t_u_u((p_1584->g_420.z = ((safe_mod_func_uint32_t_u_u((safe_rshift_func_int8_t_s_s((safe_div_func_uint16_t_u_u(((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 4))(l_1083.s071a)).y, (safe_mul_func_int16_t_s_s((!(((p_1584->g_996.z = (safe_mul_func_int8_t_s_s((safe_mod_func_int64_t_s_s((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 16))(p_1584->g_1090.s6045323661333752)), ((VECTOR(int32_t, 2))(l_1091.yx)).yyyxxyxxyyxxxxxy, ((VECTOR(int32_t, 2))((-9L), (-1L))).xyyxxyxxyyyyxyxx))).lo, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((0x65A3L <= p_26) <= (-6L)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x46F61D92L, 0x485E3959L)), 0x62945263L, (-1L))).hi)), 0x7526B29EL)))).hi, (int32_t)0x3671243BL))).xyyy, ((VECTOR(int32_t, 4))(0x6A162B30L))))).zxwxyxzw, ((VECTOR(int32_t, 8))((-4L)))))).s17))).yxyxyxxy, ((VECTOR(int32_t, 8))(0L))))))).s1 && l_1092), l_1065)), l_969[7]))) ^ p_1584->g_650.sa) && l_1065)), l_1095)))) , p_28), p_26)), l_969[7])), FAKE_DIVERGE(p_1584->local_0_offset, get_local_id(0), 10))) < 0L)), 10))))) == l_841.sf) ^ l_833) ^ p_28)) , 0xD9299553L) , p_1584->g_319) & l_1062), l_1062))))
                    { /* block id: 406 */
                        l_1062 |= ((((VECTOR(uint16_t, 16))(l_1097.s6c5202d28f284ec4)).s5 | (safe_mul_func_uint16_t_u_u(p_1584->g_416.f0, (l_1095 != p_26)))) >= (safe_lshift_func_int16_t_s_s(l_1065, 6)));
                        l_1102 = (void*)0;
                    }
                    else
                    { /* block id: 409 */
                        union U4 ***l_1104 = &l_1103;
                        int32_t l_1105[1][1];
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_1105[i][j] = 1L;
                        }
                        (*l_1104) = l_1103;
                        p_1584->g_1111--;
                    }
                    for (l_1050 = 0; (l_1050 < 15); l_1050 = safe_add_func_int32_t_s_s(l_1050, 1))
                    { /* block id: 415 */
                        int32_t *l_1117 = &l_1095;
                        l_969[6] = p_28;
                        l_969[7] = (safe_unary_minus_func_int8_t_s(((p_28 , (((*l_1117) |= p_28) , (void*)0)) == (*l_828))));
                    }
                    l_841.sc = ((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(0x2AC824C6L, 0x3A89F2FBL)).xxyxyyyy, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x76ECBB7BL, (-2L))), ((VECTOR(int32_t, 2))(0x508437CAL, (-1L))), (safe_mod_func_int32_t_s_s(((safe_sub_func_int16_t_s_s((p_28 >= (safe_lshift_func_int8_t_s_s(l_984.f0, (((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_1124.zz)), 65533UL, 1UL)))).w == ((safe_rshift_func_int16_t_s_u(((l_1107 ^= l_811.x) | (safe_add_func_int8_t_s_s((+((safe_sub_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(l_1133.xyyxyxyyyyxxxxyy)))).sfe, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))((safe_div_func_uint32_t_u_u((l_842.y = (safe_div_func_uint16_t_u_u((safe_div_func_int16_t_s_s((((((p_26 < (p_1584->g_252.w && 0xC6L)) & ((((0x20L & (l_1083.sf = (l_1147 &= (((safe_div_func_uint64_t_u_u((++(*l_859)), GROUP_DIVERGE(0, 1))) | (safe_sub_func_int32_t_s_s((((p_1584->g_496.w , (l_1146 == (void*)0)) == GROUP_DIVERGE(0, 1)) || p_1584->g_4), p_28))) >= p_26)))) & 18446744073709551615UL) , 0x55DCL) >= 0x4C9EL)) == p_28) < p_28) , p_1584->g_303.x), 1UL)), FAKE_DIVERGE(p_1584->group_2_offset, get_group_id(2), 10)))), p_28)), 0xDE6EL, ((VECTOR(uint16_t, 4))(0x053EL)), 0xBC1EL, 1UL)).s25)), p_1584->g_244.s5, 0x1E0AL, ((VECTOR(uint16_t, 2))(65535UL)), 0x3F76L, GROUP_DIVERGE(0, 1), ((VECTOR(uint16_t, 2))(65534UL)), ((VECTOR(uint16_t, 4))(0x56EDL)), 65535UL, 0x0DC1L)).s29))), 0xA44CL, 0x72B9L)).z, p_28)), FAKE_DIVERGE(p_1584->local_0_offset, get_local_id(0), 10))) , 0x21L)), 0L))), l_915.x)) , 2UL))))), p_1584->g_85)) , 6L), p_28)), ((VECTOR(int32_t, 2))(0x37E87FF7L)), 0x145774DDL)).lo, ((VECTOR(int32_t, 4))(0x710FE8ADL))))), ((VECTOR(int32_t, 2))(0L)), ((VECTOR(int32_t, 2))(0L)), l_1149, 0x58AD8956L, 0x22F29D7BL, (-1L), 0x0AA81FF8L, ((VECTOR(int32_t, 2))(0x05495BABL)), 1L)).s0f, ((VECTOR(int32_t, 2))(1L))))), p_28, 0x386EEC63L, 0L, l_842.y, 0x3E2FE9F0L, 1L)), ((VECTOR(int32_t, 8))(0x7FB0C846L))))).s2373700711214724)).sa9, ((VECTOR(int32_t, 2))(6L))))).odd;
                }
                else
                { /* block id: 426 */
                    VECTOR(int32_t, 8) l_1150 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L);
                    VECTOR(int32_t, 8) l_1152 = (VECTOR(int32_t, 8))(0x514A3FCAL, (VECTOR(int32_t, 4))(0x514A3FCAL, (VECTOR(int32_t, 2))(0x514A3FCAL, 7L), 7L), 7L, 0x514A3FCAL, 7L);
                    VECTOR(int32_t, 2) l_1155 = (VECTOR(int32_t, 2))((-1L), 0x1C7D8B54L);
                    int32_t **l_1172 = (void*)0;
                    int32_t ***l_1171 = &l_1172;
                    int i;
                    l_1157.z = ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(l_1150.s02642374)).odd, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x3A39E0F4L, 0x59774D9DL)), 0L, (-1L))).hi))).xxyx, ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(l_1151.wzyzwxywyxyyzyyw)), ((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(l_1152.s44)).yyyyxxyyxyxxyyxx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_1153.yxyx)).hi)).yyxxyxyxxyxyxxyx, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 2))(0x4B4CL, 0x0356L)).xxyx, ((VECTOR(uint16_t, 2))(l_1154.sec)).xyyy))).lo, (int32_t)((VECTOR(int32_t, 2))(l_1155.xx)).odd, (int32_t)8L))))).yyyyyyyyxyxyxxyy))).sf300)).wxxwwyyy)).s04)).yxxx)).ywwxzxxxwyzxxzzz, ((VECTOR(int32_t, 2))(0x1F69DA3AL, 0x62FB88BCL)).yxyxyxxxyxyxyxyx))).s56e5, ((VECTOR(int32_t, 16))(l_1156.sf76c88ebae28d38f)).s700f))).ywywywzyxyywyyxz, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_1157.wzyy)).yxxzwyzzyxyyyzwz)).s8be1, ((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(p_1584->g_1158.s4170622446626742)).s08)).xyyx, ((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),int32_t,((VECTOR(int32_t, 16))(l_1159.s0053374035707761)), (int32_t)((p_1584->g_477.x |= (p_26 >= ((safe_mod_func_uint16_t_u_u((((((l_841.s2 = (safe_mul_func_uint8_t_u_u(l_1062, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(l_1166.s8f191dfd)).s23)), 2L, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_1584->g_1167.s23)), 2L, (-1L))), 1L)).s3))) <= ((safe_mul_func_int8_t_s_s((l_1107 = ((p_26 & (l_1170[1][0] == ((*l_1171) = (void*)0))) , ((void*)0 == &p_1584->g_163))), p_1584->g_102[4])) || GROUP_DIVERGE(1, 1))) | 0L) > 0xEAA4L) == 3L), GROUP_DIVERGE(0, 1))) > 1L))) ^ 7UL), (int32_t)p_26))).sce09, ((VECTOR(int32_t, 4))(3L))))), ((VECTOR(int32_t, 4))(9L))))), 0L, 8L, 2L, 0L)).s0611665070707447))), ((VECTOR(int32_t, 16))(0x03A69F70L))))).s8ed1))).z;
                    return p_1584->g_302.y;
                }
                ++l_1173;
                l_1176 = &l_984;
                l_1106 = p_26;
            }
            return p_1584->g_302.x;
        }
        if ((p_28 != ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0xA5L, 253UL)), 248UL, 251UL)).z))
        { /* block id: 440 */
            union U0 *l_1183 = (void*)0;
            union U0 **l_1182 = &l_1183;
            union U0 ***l_1184[4][5][5] = {{{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1182,(void*)0,(void*)0}}};
            uint16_t *l_1186 = (void*)0;
            uint16_t *l_1187 = (void*)0;
            uint16_t *l_1188 = (void*)0;
            uint16_t *l_1189 = &l_970;
            uint16_t *l_1192[8][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
            int32_t l_1193 = 0x0004C26DL;
            VECTOR(int64_t, 4) l_1194 = (VECTOR(int64_t, 4))(0x0B48C5D651407144L, (VECTOR(int64_t, 2))(0x0B48C5D651407144L, 0x3BA38EDB69267B53L), 0x3BA38EDB69267B53L);
            int32_t l_1201 = (-1L);
            int i, j, k;
            for (l_1149 = 0; (l_1149 == 13); ++l_1149)
            { /* block id: 443 */
                for (p_26 = (-6); (p_26 < 59); p_26 = safe_add_func_uint8_t_u_u(p_26, 1))
                { /* block id: 446 */
                    l_1181 = &l_829;
                    if (p_26)
                        break;
                }
            }
            (*l_1181) = (GROUP_DIVERGE(0, 1) ^ ((l_1185 = l_1182) != &p_1584->g_406));
            l_1201 = ((!(p_1584->g_1045.s0 && (l_1193 = (++(*l_1189))))) == (((((*l_1181) = ((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 8))(l_1194.xwyyxzwy)).even, ((VECTOR(int64_t, 4))((-7L), ((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 16))(p_1584->g_1195.yxxxyyxxxyyxxxxx)).sa8))), 0x459987562A167DAAL))))).zyxxzzyz)).s0 && (-1L)) || p_26)) && (((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 2))(l_1196.xx)).yxyyxyxxxxyxxxyx, ((VECTOR(uint32_t, 4))(6UL, ((VECTOR(uint32_t, 2))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(4294967295UL, l_1197[0], ((*l_1181) = 0xDB323E01L), (*l_1181), ((p_28 == (l_1194.x >= ((*l_1181) || 65533UL))) , GROUP_DIVERGE(2, 1)), 0UL, 5UL, 0x5439454AL)), l_1200[5], 0UL, 1UL, ((VECTOR(uint32_t, 2))(0xD32F3ADDL)), p_28, 4294967288UL, 0UL)).s30, ((VECTOR(uint32_t, 2))(0x630FDBD9L))))), 4294967292UL)).zzwyyzwyzwzwzyzz))).s2 , l_1194.y)) <= p_26) <= p_1584->g_769.s5));
        }
        else
        { /* block id: 458 */
            uint8_t l_1204 = 0x31L;
            int8_t l_1205[9] = {0x53L,0x5FL,0x53L,0x53L,0x5FL,0x53L,0x53L,0x5FL,0x53L};
            uint16_t *l_1211 = (void*)0;
            uint32_t l_1212 = 0xBA57BF0BL;
            uint64_t *l_1220 = &p_1584->g_416.f4;
            uint64_t *l_1221 = (void*)0;
            uint64_t *l_1222 = &p_1584->g_216.f4;
            uint64_t *l_1223 = &p_1584->g_417.f4;
            uint64_t *l_1224 = &p_1584->g_216.f4;
            uint64_t *l_1225 = &p_1584->g_417.f4;
            uint64_t *l_1226 = &p_1584->g_417.f4;
            int32_t l_1227 = 0x25398CFBL;
            uint16_t *l_1228 = (void*)0;
            uint16_t *l_1229 = (void*)0;
            uint16_t *l_1230 = (void*)0;
            uint16_t *l_1231 = (void*)0;
            uint16_t *l_1232 = (void*)0;
            uint16_t *l_1233 = (void*)0;
            uint16_t *l_1234[3][10][7] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            int i, j, k;
            l_1159.s1 |= ((safe_add_func_int64_t_s_s((((l_1205[7] = l_1204) ^ (((l_1206 != (*p_1584->g_635)) & (safe_mod_func_uint64_t_u_u((p_1584->g_124.s2 != ((safe_mul_func_uint16_t_u_u((--l_1212), (((safe_div_func_int64_t_s_s(((FAKE_DIVERGE(p_1584->global_2_offset, get_global_id(2), 10) > (~((safe_unary_minus_func_int8_t_s(((*l_1181) = l_1218))) != l_1219))) & ((l_1227 &= 0xEBC8B097A41D9532L) , (((p_1584->g_88.s2--) == p_26) & ((safe_sub_func_int32_t_s_s(((p_26 & p_28) , (-9L)), l_1227)) && l_1204)))), 8L)) > p_26) < 0x5C3EAE57L))) & p_28)), p_1584->g_113.s1))) | 1L)) , (*l_1181)), p_26)) > (-7L));
        }
        return p_26;
    }
    for (l_1219 = 23; (l_1219 < 31); ++l_1219)
    { /* block id: 470 */
        int32_t l_1258[8] = {0x5B2CBA13L,0x5B2CBA13L,0x5B2CBA13L,0x5B2CBA13L,0x5B2CBA13L,0x5B2CBA13L,0x5B2CBA13L,0x5B2CBA13L};
        int32_t l_1265 = (-6L);
        int i;
        if (p_28)
            break;
        for (p_28 = (-20); (p_28 >= 39); p_28 = safe_add_func_uint32_t_u_u(p_28, 7))
        { /* block id: 474 */
            uint32_t l_1243 = 4294967295UL;
            union U2 l_1255[1][4] = {{{0x1736BD7DL},{0x1736BD7DL},{0x1736BD7DL},{0x1736BD7DL}}};
            uint16_t *l_1260 = (void*)0;
            uint16_t *l_1261 = &l_970;
            int16_t *l_1262 = (void*)0;
            int16_t *l_1263 = (void*)0;
            int16_t *l_1264[6];
            uint16_t l_1266 = 0UL;
            int64_t *l_1267 = &p_1584->g_188;
            int i, j;
            for (i = 0; i < 6; i++)
                l_1264[i] = (void*)0;
            l_1243 = 0x4AFFF908L;
            l_1258[4] = (safe_rshift_func_int16_t_s_u((l_1243 <= (safe_mul_func_uint8_t_u_u(p_28, ((safe_add_func_int16_t_s_s((p_28 <= ((VECTOR(uint8_t, 8))(p_1584->g_1250.s37777316)).s7), (l_1265 ^= (safe_div_func_uint16_t_u_u(p_1584->g_994.y, ((*l_1261) = ((safe_mod_func_uint8_t_u_u((l_1255[0][3] , (l_1243 > (((((safe_mul_func_uint16_t_u_u((l_1258[6] || ((safe_unary_minus_func_uint16_t_u(p_1584->g_1195.x)) == (p_26 || p_1584->g_916.x))), p_26)) < 0x13167F4F6137577AL) && p_1584->g_118.y) > 1L) || 0x236272083E035664L))), l_1255[0][3].f0)) || 0x02C2L))))))) , l_1266)))), 15));
            l_1268 ^= (&p_1584->g_188 != (p_26 , l_1267));
        }
    }
    return p_26;
}


/* ------------------------------------------ */
/* 
 * reads : p_1584->g_234 p_1584->g_163 p_1584->g_67 p_1584->g_416.f0 p_1584->g_4 p_1584->g_85 p_1584->g_752 p_1584->g_769 p_1584->g_776 p_1584->g_417.f0 p_1584->g_667 p_1584->g_171 p_1584->g_544 p_1584->g_795 p_1584->g_622 p_1584->g_7 p_1584->g_100
 * writes: p_1584->g_234 p_1584->g_667 p_1584->g_67 p_1584->g_319 p_1584->g_4 p_1584->g_116
 */
union U2  func_33(uint16_t  p_34, int32_t  p_35, int16_t  p_36, int32_t * p_37, struct S5 * p_1584)
{ /* block id: 245 */
    uint8_t l_657 = 0x22L;
    int32_t *l_658 = (void*)0;
    VECTOR(int32_t, 8) l_659 = (VECTOR(int32_t, 8))(0x19267D00L, (VECTOR(int32_t, 4))(0x19267D00L, (VECTOR(int32_t, 2))(0x19267D00L, 0x7ADE2DDDL), 0x7ADE2DDDL), 0x7ADE2DDDL, 0x19267D00L, 0x7ADE2DDDL);
    union U2 l_660 = {1UL};
    VECTOR(int32_t, 4) l_673 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x06541AEAL), 0x06541AEAL);
    uint64_t l_709 = 18446744073709551611UL;
    uint16_t l_731 = 0x65C9L;
    VECTOR(uint16_t, 16) l_739 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL, (VECTOR(uint16_t, 2))(0UL, 1UL), (VECTOR(uint16_t, 2))(0UL, 1UL), 0UL, 1UL, 0UL, 1UL);
    VECTOR(int8_t, 8) l_753 = (VECTOR(int8_t, 8))(0x12L, (VECTOR(int8_t, 4))(0x12L, (VECTOR(int8_t, 2))(0x12L, (-1L)), (-1L)), (-1L), 0x12L, (-1L));
    VECTOR(int32_t, 4) l_754 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x0A35129BL), 0x0A35129BL);
    VECTOR(int8_t, 8) l_757 = (VECTOR(int8_t, 8))(0x33L, (VECTOR(int8_t, 4))(0x33L, (VECTOR(int8_t, 2))(0x33L, 0x26L), 0x26L), 0x26L, 0x33L, 0x26L);
    VECTOR(int8_t, 16) l_759 = (VECTOR(int8_t, 16))(0x09L, (VECTOR(int8_t, 4))(0x09L, (VECTOR(int8_t, 2))(0x09L, 0x33L), 0x33L), 0x33L, 0x09L, 0x33L, (VECTOR(int8_t, 2))(0x09L, 0x33L), (VECTOR(int8_t, 2))(0x09L, 0x33L), 0x09L, 0x33L, 0x09L, 0x33L);
    VECTOR(int8_t, 2) l_760 = (VECTOR(int8_t, 2))(0x75L, 0x51L);
    VECTOR(int8_t, 2) l_763 = (VECTOR(int8_t, 2))((-1L), 0x58L);
    int8_t *l_768 = (void*)0;
    uint32_t l_771 = 0x02233797L;
    int8_t l_777 = 0x40L;
    union U4 *l_788 = &p_1584->g_59;
    union U4 **l_787[1][3];
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_787[i][j] = &l_788;
    }
    if ((p_35 = l_657))
    { /* block id: 247 */
        int16_t l_668 = 0x6628L;
        int32_t l_672 = 0x1BED998EL;
        int32_t *l_677 = &p_1584->g_4;
        VECTOR(int8_t, 2) l_703 = (VECTOR(int8_t, 2))(0x78L, 0x52L);
        uint16_t l_720 = 0UL;
        int32_t l_721 = 0x72DCD76FL;
        int32_t l_728 = 0x6E33B661L;
        union U4 *l_734 = &p_1584->g_59;
        VECTOR(int8_t, 4) l_758 = (VECTOR(int8_t, 4))(0x7DL, (VECTOR(int8_t, 2))(0x7DL, 0x32L), 0x32L);
        VECTOR(int8_t, 8) l_761 = (VECTOR(int8_t, 8))((-5L), (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), (-1L)), (-1L)), (-1L), (-5L), (-1L));
        VECTOR(int8_t, 2) l_762 = (VECTOR(int8_t, 2))(0x2BL, 0x19L);
        int32_t **l_766 = &l_658;
        int8_t *l_767 = (void*)0;
        int64_t *l_770[8] = {&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116};
        int i;
        if (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_659.s41)).yyxxyxxyyxyyyyyy)).s3)
        { /* block id: 248 */
            return l_660;
        }
        else
        { /* block id: 250 */
            int32_t *l_670 = (void*)0;
            int32_t *l_671[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int64_t l_688 = 0x33CDD276D5F88ECEL;
            int32_t *l_710 = (void*)0;
            int i;
            for (p_1584->g_234 = 0; (p_1584->g_234 == 19); p_1584->g_234 = safe_add_func_int16_t_s_s(p_1584->g_234, 8))
            { /* block id: 253 */
                uint64_t *l_664 = (void*)0;
                uint64_t **l_663 = &l_664;
                uint64_t *l_666 = &p_1584->g_417.f0;
                uint64_t **l_665[10][9] = {{&l_666,&l_666,&l_666,(void*)0,(void*)0,(void*)0,&l_666,&l_666,(void*)0},{&l_666,&l_666,&l_666,(void*)0,(void*)0,(void*)0,&l_666,&l_666,(void*)0},{&l_666,&l_666,&l_666,(void*)0,(void*)0,(void*)0,&l_666,&l_666,(void*)0},{&l_666,&l_666,&l_666,(void*)0,(void*)0,(void*)0,&l_666,&l_666,(void*)0},{&l_666,&l_666,&l_666,(void*)0,(void*)0,(void*)0,&l_666,&l_666,(void*)0},{&l_666,&l_666,&l_666,(void*)0,(void*)0,(void*)0,&l_666,&l_666,(void*)0},{&l_666,&l_666,&l_666,(void*)0,(void*)0,(void*)0,&l_666,&l_666,(void*)0},{&l_666,&l_666,&l_666,(void*)0,(void*)0,(void*)0,&l_666,&l_666,(void*)0},{&l_666,&l_666,&l_666,(void*)0,(void*)0,(void*)0,&l_666,&l_666,(void*)0},{&l_666,&l_666,&l_666,(void*)0,(void*)0,(void*)0,&l_666,&l_666,(void*)0}};
                int i, j;
                l_668 = (&p_1584->g_171 == (p_1584->g_667 = ((*l_663) = (void*)0)));
                return p_1584->g_163;
            }
            l_672 ^= (safe_unary_minus_func_int32_t_s(0x721DA218L));
            if ((((VECTOR(int32_t, 16))(l_673.wxwxxyyxywwyzxwy)).sf & l_668))
            { /* block id: 260 */
                uint64_t l_674 = 0x52F58E02B5AF39FEL;
                --l_674;
                l_677 = &p_35;
            }
            else
            { /* block id: 263 */
                uint32_t l_692 = 0x27C1D08EL;
                uint8_t l_708 = 0x17L;
                int32_t *l_712 = (void*)0;
                int32_t l_724 = 4L;
                int32_t l_726 = 0x5E336D0FL;
                int32_t l_727 = 0x205D4B91L;
                int32_t l_730 = 0L;
                for (l_668 = 21; (l_668 < (-5)); l_668--)
                { /* block id: 266 */
                    union U3 *l_680 = &p_1584->g_681;
                    union U3 **l_682 = (void*)0;
                    union U3 **l_683 = &l_680;
                    uint8_t *l_689 = &p_1584->g_67;
                    int64_t *l_704 = (void*)0;
                    int64_t *l_705 = (void*)0;
                    int64_t *l_706 = &p_1584->g_319;
                    int32_t l_707 = 0x6AF1F438L;
                    int32_t **l_711[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int i;
                    (*l_683) = l_680;
                    p_35 = (safe_sub_func_int8_t_s_s(0x77L, (safe_div_func_int8_t_s_s((((*l_689) |= (65535UL & l_688)) >= ((safe_lshift_func_uint8_t_u_u((l_692 && ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 16))(0x4AC6L, (safe_sub_func_uint16_t_u_u((safe_add_func_int8_t_s_s(p_34, (safe_mul_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(((safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(abs(((VECTOR(int8_t, 16))(0x70L, ((VECTOR(int8_t, 2))(l_703.xy)), (((*l_706) = (((void*)0 != &p_34) || 0x2639L)) , (l_707 && l_708)), p_36, p_1584->g_416.f0, l_708, l_709, ((VECTOR(int8_t, 2))((-3L))), p_36, 0x6DL, p_36, (-4L), 9L, 0x4AL)).odd))).s7, p_36)) <= p_36), 0)), l_692)))), 0x2BF0L)), ((VECTOR(int16_t, 8))((-8L))), (-4L), 0x7FCAL, 0L, ((VECTOR(int16_t, 2))((-1L))), 1L)).hi, ((VECTOR(int16_t, 8))(0x54FEL))))).odd, ((VECTOR(int16_t, 4))(0L))))), ((VECTOR(uint16_t, 4))(0xDC15L))))).z), 7)) > GROUP_DIVERGE(0, 1))), 4L))));
                    l_712 = l_710;
                }
                for (l_672 = 0; (l_672 < (-8)); --l_672)
                { /* block id: 275 */
                    int32_t l_723 = 0x36DD5CCDL;
                    int32_t l_725 = 0x16CB8672L;
                    int32_t l_729 = (-1L);
                    union U4 **l_735 = (void*)0;
                    union U4 **l_736 = &l_734;
                    uint16_t *l_740[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_740[i] = (void*)0;
                    (*l_677) = 0x06083668L;
                    for (l_709 = 1; (l_709 <= 5); l_709 = safe_add_func_uint64_t_u_u(l_709, 1))
                    { /* block id: 279 */
                        uint32_t l_717 = 0UL;
                        int32_t l_722[3][3][3] = {{{(-6L),(-6L),(-6L)},{(-6L),(-6L),(-6L)},{(-6L),(-6L),(-6L)}},{{(-6L),(-6L),(-6L)},{(-6L),(-6L),(-6L)},{(-6L),(-6L),(-6L)}},{{(-6L),(-6L),(-6L)},{(-6L),(-6L),(-6L)},{(-6L),(-6L),(-6L)}}};
                        int i, j, k;
                        ++l_717;
                        (*l_677) &= (l_720 = (((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(18446744073709551608UL, 0x12856FE30B5722FDL)).xyyyxxyyxyyyxyxx)).sf2c2)).hi)).lo == p_34));
                        l_731++;
                    }
                    (*l_736) = l_734;
                    p_35 ^= (safe_rshift_func_int16_t_s_u((-10L), (p_34 = ((VECTOR(uint16_t, 16))(l_739.s76a1bb4b175ac465)).sd)));
                }
            }
            l_672 ^= p_35;
        }
        l_777 = ((p_1584->g_85 , (-9L)) < (safe_sub_func_int64_t_s_s(((safe_div_func_uint8_t_u_u((((safe_unary_minus_func_int64_t_s(((safe_mod_func_int64_t_s_s((safe_add_func_int32_t_s_s((-4L), (((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 4))(p_1584->g_752.xxyx)).yxwwzyxwwywwyzxy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(l_753.s0062255065365573)).s2d08)), ((VECTOR(int8_t, 2))((-9L), 0x4BL)).yxyy))), (-1L), 0x0AL, 1L, 4L)))).s7573343074171736))).sd2)).even, (((VECTOR(int32_t, 4))(l_754.zzxw)).x , (((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 4))(0x79L, 0x55L, 1L, (-1L))).xyzywxwx, ((VECTOR(int8_t, 8))(l_757.s66202262))))).even, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(l_758.xz)))).yxxx))).wzyzxzyxywwyzxyy)).s5a96, ((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 8))(l_759.sefd4f772)), ((VECTOR(int8_t, 8))(l_760.xxyyxxxy)), ((VECTOR(int8_t, 2))(0x26L, (-5L))).xxyyxxyx))).even, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 8))(l_761.s41417260)), ((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(l_762.yyyxyxxxxyxyyyxx)).seeb1)).yxyzzwxyxyxwxzwz))).hi))), ((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 16))((-8L), ((VECTOR(int8_t, 2))(l_763.xy)), (safe_rshift_func_int8_t_s_s((((*l_766) = &p_1584->g_4) == (void*)0), 3)), ((((p_35 != (l_767 == l_768)) , (l_771 = ((VECTOR(int64_t, 2))(p_1584->g_769.s06)).lo)) != (safe_mul_func_int8_t_s_s(((*l_658) = (((safe_add_func_uint32_t_u_u(((((VECTOR(uint64_t, 2))(p_1584->g_776.yz)).hi >= ((((p_36 ^= 0x2CF9L) && p_1584->g_417.f0) || (*l_658)) , (*l_677))) & p_35), 0UL)) , 2UL) >= p_34)), 0xB5L))) ^ 0L), p_34, 0x41L, 6L, p_34, ((VECTOR(int8_t, 2))((-1L))), (**l_766), 0x75L, 2L, 0x79L, 0x6CL)).lo, ((VECTOR(int8_t, 8))(0x0FL)), ((VECTOR(int8_t, 8))(0x2EL)))))))), ((VECTOR(int8_t, 4))(0L)), (**l_766), 1L, 2L, 0x01L)).s124b, ((VECTOR(int8_t, 4))(0x05L))))), ((VECTOR(int8_t, 4))(0x33L))))).z, 251UL)) , (*p_1584->g_667)) == FAKE_DIVERGE(p_1584->global_1_offset, get_global_id(1), 10))))) == 0UL) , p_34))), p_34)) && p_34))) , p_1584->g_544.x) <= 0UL), l_731)) >= p_35), l_739.s5)));
    }
    else
    { /* block id: 297 */
        uint64_t l_780 = 0x421AE4F454466846L;
        int64_t *l_798 = (void*)0;
        int64_t *l_799 = &p_1584->g_116;
        int32_t l_802 = (-10L);
        uint32_t l_803 = 0xC2634176L;
        int32_t *l_804 = (void*)0;
        int32_t *l_805 = &p_1584->g_4;
        (*l_805) |= (safe_div_func_int32_t_s_s(l_780, (safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((FAKE_DIVERGE(p_1584->group_2_offset, get_group_id(2), 10) != ((void*)0 == l_787[0][1])), (safe_rshift_func_uint8_t_u_u(p_36, (safe_div_func_uint64_t_u_u((((VECTOR(int16_t, 2))((-1L), 8L)).hi & (FAKE_DIVERGE(p_1584->global_2_offset, get_global_id(2), 10) ^ ((-3L) <= FAKE_DIVERGE(p_1584->local_2_offset, get_local_id(2), 10)))), ((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(0UL, 0xA961AD7FABB665CFL, 1UL, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(p_1584->g_795.yyyxyyxxyyyxxyxy)).sc0ca)), 18446744073709551610UL)).s4, (p_1584->g_622.y > (((*l_799) = (safe_rshift_func_uint8_t_u_s(p_1584->g_7[0][1][0], 0))) <= (l_802 ^= ((((((((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(1L, ((safe_sub_func_uint32_t_u_u(l_780, 1L)) >= l_780), 0x7FCCL, 1L)), 0L, l_780, 0x042BL, 0x79BFL)), ((VECTOR(uint16_t, 8))(65535UL))))).s1 >= 0xA3EFC91DL) ^ p_35) || l_780) > p_1584->g_100.s0) <= p_34) , 0x33EF3CE7F2523110L)))))) & 0x0EC4L))))))), GROUP_DIVERGE(2, 1))), l_803))));
    }
    return p_1584->g_163;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_39(int32_t * p_40, int32_t * p_41, int8_t * p_42, uint32_t  p_43, int8_t * p_44, struct S5 * p_1584)
{ /* block id: 242 */
    uint32_t l_654 = 5UL;
    l_654--;
    return p_41;
}


/* ------------------------------------------ */
/* 
 * reads : p_1584->g_59 p_1584->g_4 p_1584->g_7 p_1584->g_67 p_1584->g_88 p_1584->g_86 p_1584->g_99 p_1584->g_100 p_1584->g_102 p_1584->g_117 p_1584->g_118 p_1584->g_124 p_1584->g_128 p_1584->g_59.f0 p_1584->g_192 p_1584->g_201 p_1584->g_188 p_1584->g_116 p_1584->g_234 p_1584->g_244 p_1584->g_249 p_1584->g_252 p_1584->g_263 p_1584->g_171 p_1584->g_113 p_1584->g_302 p_1584->g_303 p_1584->g_309 p_1584->g_406 p_1584->g_412 p_1584->g_420 p_1584->g_447 p_1584->g_163 p_1584->g_416.f0 p_1584->g_531 p_1584->g_544 p_1584->g_216.f0
 * writes: p_1584->g_67 p_1584->g_4 p_1584->g_88 p_1584->g_102 p_1584->g_111 p_1584->g_116 p_1584->g_117 p_1584->g_171 p_1584->g_188 p_1584->g_244 p_1584->g_262 p_1584->g_319 p_1584->g_353 p_1584->g_403 p_1584->g_404 p_1584->g_406 p_1584->g_59 p_1584->g_86 p_1584->g_99 p_1584->g_85 p_1584->g_216.f0 p_1584->g_163.f0 p_1584->g_610
 */
int32_t * func_45(int32_t * p_46, int32_t * p_47, int32_t  p_48, uint16_t  p_49, struct S5 * p_1584)
{ /* block id: 13 */
    int32_t **l_463 = (void*)0;
    int32_t **l_464 = &p_1584->g_262[0];
    VECTOR(int8_t, 4) l_472 = (VECTOR(int8_t, 4))(0x2AL, (VECTOR(int8_t, 2))(0x2AL, 1L), 1L);
    int8_t *l_473 = &p_1584->g_99[1][0][2];
    union U0 *l_476[1][10];
    union U0 **l_475[4];
    VECTOR(int32_t, 8) l_480 = (VECTOR(int32_t, 8))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0x7C8FE974L), 0x7C8FE974L), 0x7C8FE974L, (-6L), 0x7C8FE974L);
    VECTOR(int32_t, 16) l_493 = (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x00B2B2B6L), 0x00B2B2B6L), 0x00B2B2B6L, 8L, 0x00B2B2B6L, (VECTOR(int32_t, 2))(8L, 0x00B2B2B6L), (VECTOR(int32_t, 2))(8L, 0x00B2B2B6L), 8L, 0x00B2B2B6L, 8L, 0x00B2B2B6L);
    int16_t **l_503 = &p_1584->g_405;
    int8_t l_521 = 0x7AL;
    VECTOR(uint64_t, 2) l_542 = (VECTOR(uint64_t, 2))(0x8B068C49FED736DEL, 18446744073709551615UL);
    VECTOR(uint64_t, 2) l_546 = (VECTOR(uint64_t, 2))(1UL, 0UL);
    VECTOR(uint64_t, 4) l_547 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 8UL), 8UL);
    int16_t l_576 = (-3L);
    int64_t *l_608 = (void*)0;
    int16_t l_609 = 1L;
    uint32_t ***l_638 = &p_1584->g_636;
    VECTOR(int32_t, 2) l_652 = (VECTOR(int32_t, 2))(0x6E545324L, 0x10A03517L);
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
            l_476[i][j] = (void*)0;
    }
    for (i = 0; i < 4; i++)
        l_475[i] = &l_476[0][1];
    (*l_464) = func_55(p_1584->g_59, &p_1584->g_4, p_1584->g_4, p_1584);
    for (p_1584->g_86 = (-9); (p_1584->g_86 <= (-25)); p_1584->g_86 = safe_sub_func_int16_t_s_s(p_1584->g_86, 8))
    { /* block id: 169 */
        VECTOR(int8_t, 8) l_471 = (VECTOR(int8_t, 8))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 5L), 5L), 5L, (-8L), 5L);
        int8_t *l_474 = &p_1584->g_353;
        union U4 l_482 = {0x9D6406B4L};
        int32_t *l_487 = (void*)0;
        int32_t *l_488 = (void*)0;
        int32_t *l_489 = (void*)0;
        int32_t *l_490 = (void*)0;
        int32_t *l_491 = (void*)0;
        int32_t l_492 = (-7L);
        VECTOR(int32_t, 16) l_494 = (VECTOR(int32_t, 16))(0x317146FDL, (VECTOR(int32_t, 4))(0x317146FDL, (VECTOR(int32_t, 2))(0x317146FDL, 0L), 0L), 0L, 0x317146FDL, 0L, (VECTOR(int32_t, 2))(0x317146FDL, 0L), (VECTOR(int32_t, 2))(0x317146FDL, 0L), 0x317146FDL, 0L, 0x317146FDL, 0L);
        VECTOR(int8_t, 16) l_495 = (VECTOR(int8_t, 16))((-7L), (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), (-5L)), (-5L)), (-5L), (-7L), (-5L), (VECTOR(int8_t, 2))((-7L), (-5L)), (VECTOR(int8_t, 2))((-7L), (-5L)), (-7L), (-5L), (-7L), (-5L));
        int16_t ***l_497 = &p_1584->g_404;
        int16_t ***l_498 = (void*)0;
        int16_t ***l_499 = (void*)0;
        int16_t ***l_500 = &p_1584->g_404;
        int16_t ***l_501 = &p_1584->g_404;
        int16_t ***l_502 = &p_1584->g_404;
        uint8_t *l_515 = &p_1584->g_111;
        uint64_t l_534 = 0x9A721EA3F79865CCL;
        uint32_t l_537 = 0x534B053AL;
        uint32_t l_577 = 4294967293UL;
        VECTOR(uint32_t, 8) l_605 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL);
        VECTOR(uint16_t, 8) l_615 = (VECTOR(uint16_t, 8))(0x62C2L, (VECTOR(uint16_t, 4))(0x62C2L, (VECTOR(uint16_t, 2))(0x62C2L, 65535UL), 65535UL), 65535UL, 0x62C2L, 65535UL);
        VECTOR(int32_t, 8) l_651 = (VECTOR(int32_t, 8))(0x6F71196CL, (VECTOR(int32_t, 4))(0x6F71196CL, (VECTOR(int32_t, 2))(0x6F71196CL, 0x4FDA8258L), 0x4FDA8258L), 0x4FDA8258L, 0x6F71196CL, 0x4FDA8258L);
        int i;
        l_492 |= (safe_mod_func_uint16_t_u_u(((safe_add_func_uint64_t_u_u((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 2))(l_471.s62)).xyxy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(l_472.xyyxzyzzwwwwwzyx)).lo)).even))).xzywxzyx)).s2 && (((l_474 = l_473) != (void*)0) , ((((void*)0 == l_475[0]) , 0L) != ((VECTOR(int16_t, 8))(p_1584->g_477.xzzzwwxz)).s1))), p_1584->g_113.s1)) || (GROUP_DIVERGE(1, 1) && (safe_div_func_int64_t_s_s((((((VECTOR(int32_t, 4))(l_480.s0406)).z == ((p_1584->g_163 , (safe_unary_minus_func_int64_t_s((l_482 , ((safe_rshift_func_int8_t_s_s(((*l_474) = (safe_lshift_func_int16_t_s_u(0L, 11))), 4)) > FAKE_DIVERGE(p_1584->local_2_offset, get_local_id(2), 10)))))) ^ (*p_46))) ^ GROUP_DIVERGE(0, 1)) < p_1584->g_416.f0), l_482.f0)))), p_1584->g_102[4]));
        if (((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(l_493.sc4)).xxxx, ((VECTOR(int32_t, 4))(l_494.sd172)), ((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 8))(0L, 0x12FEEED0L, (((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 8))(l_495.sa10fde8c)), ((VECTOR(int8_t, 8))(0x18L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 16))(p_1584->g_496.xzwwyyyyxzxyzzxx)), ((VECTOR(int8_t, 8))((((l_503 = (void*)0) != (p_1584->g_504 = (void*)0)) == 0L), (safe_sub_func_int32_t_s_s(0x62BB9355L, ((safe_add_func_uint32_t_u_u((safe_rshift_func_int8_t_s_s(7L, (safe_rshift_func_int16_t_s_s((safe_div_func_uint16_t_u_u((((*l_515) &= 0UL) & (safe_div_func_uint16_t_u_u(((0xB0L & (safe_unary_minus_func_uint16_t_u((safe_add_func_int16_t_s_s(p_48, (p_49 , p_48)))))) | p_1584->g_216.f0), 1UL))), p_49)), p_49)))), p_48)) , p_1584->g_415[0][1].f0))), ((VECTOR(int8_t, 2))((-7L))), 1L, 0L, 8L, 0x5DL)).s5471144026026361))).scf)), (-1L), ((VECTOR(int8_t, 2))(0x43L)), 0L, 0x26L))))).s1304135766756314)).hi)).s7 ^ 0x24L), (-7L), 0x71B75DD8L, (*p_47), 0x403EB1E0L, (-1L))).hi, (int32_t)(*p_46), (int32_t)(*p_46))))))).w)
        { /* block id: 176 */
            int8_t l_522 = 0x53L;
            (*l_464) = p_46;
            l_522 = ((*p_46) ^= ((0x7394L >= (p_1584->g_309 != (void*)0)) >= l_521));
            if ((*p_46))
                break;
        }
        else
        { /* block id: 181 */
            uint32_t l_523 = 0xD890479BL;
            l_523++;
        }
        for (p_1584->g_85 = 22; (p_1584->g_85 < 16); --p_1584->g_85)
        { /* block id: 186 */
            VECTOR(int8_t, 16) l_530 = (VECTOR(int8_t, 16))(3L, (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 0x09L), 0x09L), 0x09L, 3L, 0x09L, (VECTOR(int8_t, 2))(3L, 0x09L), (VECTOR(int8_t, 2))(3L, 0x09L), 3L, 0x09L, 3L, 0x09L);
            union U2 *l_532 = &p_1584->g_163;
            union U2 **l_533 = &l_532;
            int i;
            (*p_47) &= (safe_mod_func_int64_t_s_s((0x3217A7B131641BF9L || p_1584->g_128.sf), (((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 4))(l_530.s4609)).even, ((VECTOR(int8_t, 4))(p_1584->g_531.sf700)).odd, ((VECTOR(int8_t, 2))(1L, 0x50L))))).odd ^ (-1L))));
            (*l_533) = l_532;
            if (l_534)
                break;
        }
        if ((safe_lshift_func_int8_t_s_s((0x283C007FL && l_537), 0)))
        { /* block id: 191 */
            uint8_t l_563 = 0UL;
            int8_t *l_575 = &l_521;
            for (p_1584->g_111 = (-1); (p_1584->g_111 == 32); ++p_1584->g_111)
            { /* block id: 194 */
                VECTOR(uint64_t, 4) l_545 = (VECTOR(uint64_t, 4))(0x62E30A3A6BD7DD89L, (VECTOR(uint64_t, 2))(0x62E30A3A6BD7DD89L, 0x000B07A79F39E5F5L), 0x000B07A79F39E5F5L);
                uint64_t *l_561 = &p_1584->g_216.f0;
                int32_t l_562 = 5L;
                int32_t *l_574 = (void*)0;
                uint32_t *l_585 = &p_1584->g_586;
                uint32_t **l_584 = &l_585;
                uint32_t **l_589 = &l_585;
                int i;
                l_562 ^= ((((safe_div_func_uint8_t_u_u(p_1584->g_531.s2, p_1584->g_420.x)) < (((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_542.yyyxxyxy)).s4523150622702473)).s4f, ((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 16))(p_1584->g_543.s4ae1fcbea4ab54d5)), ((VECTOR(uint64_t, 2))(p_1584->g_544.xy)).xxyxyxxyyxyxxyyx))).s0a, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(l_545.xw))))))).yyyx)).yyxyzwwwwwxwyzyz, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(l_546.xxyxxyyxyxyxyxyy)).odd)).s6176376477761514, ((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 16))(l_547.zwyywwwxwyzywzwy)).s5b, ((VECTOR(uint64_t, 4))(p_1584->g_548.s6730)).odd))).yyxxxyxyxxxxxxyx))).s91, ((VECTOR(uint64_t, 8))(18446744073709551614UL, 0x86F8E9F378778056L, ((VECTOR(uint64_t, 4))(0x3AFFBA4E8AA55048L, 0x886B7EAB73470C4EL, 7UL, 18446744073709551613UL)), 0x0DDA708FD68D8F90L, 18446744073709551606UL)).s51))).odd , (safe_sub_func_uint32_t_u_u(((safe_lshift_func_int8_t_s_s(((*l_474) = p_49), l_545.x)) | (*p_46)), p_1584->g_544.y)))) , ((safe_add_func_int8_t_s_s((GROUP_DIVERGE(2, 1) >= (((safe_lshift_func_int16_t_s_s(p_49, 11)) || ((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint8_t_u_u((((*l_561) ^= p_1584->g_244.s6) <= (-1L)), FAKE_DIVERGE(p_1584->group_1_offset, get_group_id(1), 10))), 1)) == p_1584->g_124.sd)) > p_1584->g_420.x)), (-1L))) & p_1584->g_116)) != FAKE_DIVERGE(p_1584->local_1_offset, get_local_id(1), 10));
                (*l_464) = func_50(l_563, (*p_47), ((0UL ^ (safe_add_func_uint32_t_u_u((safe_add_func_uint64_t_u_u(((*l_561) ^= ((void*)0 != p_46)), (safe_sub_func_int16_t_s_s(l_562, 65535UL)))), (safe_rshift_func_int16_t_s_s(p_48, ((safe_add_func_int32_t_s_s((l_480.s3 = (l_493.sf = l_545.w)), l_563)) && (*p_46))))))) , l_575), p_1584);
                l_577++;
                for (p_1584->g_163.f0 = (-9); (p_1584->g_163.f0 != 56); p_1584->g_163.f0++)
                { /* block id: 205 */
                    for (p_1584->g_171 = 14; (p_1584->g_171 != 15); p_1584->g_171++)
                    { /* block id: 208 */
                        uint32_t ***l_587 = (void*)0;
                        uint32_t ***l_588[7] = {&l_584,&l_584,&l_584,&l_584,&l_584,&l_584,&l_584};
                        int i;
                        l_589 = l_584;
                    }
                    if ((*p_47))
                        break;
                    (*p_47) = (*p_46);
                }
            }
        }
        else
        { /* block id: 215 */
            VECTOR(uint64_t, 16) l_596 = (VECTOR(uint64_t, 16))(0x99D654C9CC943519L, (VECTOR(uint64_t, 4))(0x99D654C9CC943519L, (VECTOR(uint64_t, 2))(0x99D654C9CC943519L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x99D654C9CC943519L, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0x99D654C9CC943519L, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0x99D654C9CC943519L, 18446744073709551615UL), 0x99D654C9CC943519L, 18446744073709551615UL, 0x99D654C9CC943519L, 18446744073709551615UL);
            uint32_t *l_634 = (void*)0;
            uint32_t **l_633 = &l_634;
            uint32_t ***l_632 = &l_633;
            int8_t *l_645[10];
            int i;
            for (i = 0; i < 10; i++)
                l_645[i] = &p_1584->g_7[0][1][0];
            (*p_47) = ((((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 2))(0x4AL, 0x15L)), ((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 8))(0L, 0x26L, ((safe_div_func_int8_t_s_s((safe_mod_func_int8_t_s_s((p_49 && (((safe_mul_func_uint16_t_u_u(((((!p_1584->g_192.y) == ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_596.s983fad28)).s0654552421065047)).s6) ^ (safe_mod_func_int8_t_s_s(2L, p_1584->g_118.z))) <= ((((safe_div_func_int64_t_s_s((((((safe_lshift_func_uint16_t_u_s(1UL, 3)) <= ((VECTOR(uint32_t, 16))(l_605.s7154711312110117)).s8) != (&p_1584->g_116 != (((p_1584->g_128.s5 ^ (safe_sub_func_uint8_t_u_u(0UL, p_1584->g_543.sc))) > p_49) , l_608))) , &p_1584->g_404) != &p_1584->g_504), p_1584->g_124.s1)) > 0xEEL) > p_1584->g_263.s7) > 0x1E7C4D9C07551116L)), GROUP_DIVERGE(2, 1))) , &p_1584->g_171) != (void*)0)), 0x28L)), 246UL)) | p_1584->g_201.z), (-1L), 8L, ((VECTOR(int8_t, 2))(0x5FL)), 0x63L)).lo, (int8_t)0x6DL))).hi)), ((VECTOR(int8_t, 2))((-6L)))))), ((VECTOR(int8_t, 2))(0x6CL))))).lo == 252UL) , l_609);
            p_1584->g_610[8] = &p_1584->g_406;
            if (l_596.s0)
                break;
            if ((p_49 && (safe_add_func_uint64_t_u_u((safe_mul_func_int16_t_s_s(p_48, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(l_615.s2660)).zxzyzzwyzzxywzzy)).s5)), p_48))))
            { /* block id: 219 */
                int8_t l_642 = 0x4FL;
                int8_t *l_648 = &p_1584->g_99[1][0][2];
                int32_t l_649 = (-2L);
                for (p_1584->g_188 = 0; (p_1584->g_188 != 19); p_1584->g_188 = safe_add_func_uint32_t_u_u(p_1584->g_188, 1))
                { /* block id: 222 */
                    int32_t l_618 = 0x2C5F961EL;
                    uint16_t *l_626 = (void*)0;
                    uint16_t *l_627 = (void*)0;
                    uint16_t *l_639[5][9][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                    int i, j, k;
                    (*p_46) = (l_618 & ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(1UL, ((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 16))(0xB77F3AA8L, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(p_1584->g_619.xyyxxyyy)).s72)), ((VECTOR(uint32_t, 2))(abs(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(p_1584->g_620.yzzyyxww)), 0x5D6CFB48L, ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x69C2667BL, (-1L))).yxyxxxyx)).lo))), ((VECTOR(int32_t, 2))(0x0378D148L, 5L)), 0x37007C97L)).sbe))), 0x4620A4A2L, 4294967287UL, ((VECTOR(uint32_t, 8))(p_1584->g_621.s07327434)), 0x3CAD7D46L)).hi, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x6487B7D0L, (-7L))).xxyy)).lo, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 16))(p_1584->g_622.yxyyyyyyxyyyyxyy)), ((VECTOR(int32_t, 2))(p_1584->g_623.s02)).xyyxyyyyxyxyxxyx))).s2e57)).hi))).yxxyxyyxyyxxxxxy)).even, ((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(uint32_t, 2))(0x349CF0FDL, 0x02DE8964L)), ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))((safe_sub_func_uint16_t_u_u((++p_1584->g_420.y), (0xF5997EECL & l_618))), ((p_1584->g_420.w , (((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))((-1L), (-1L))))), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0x4BDB7318061EC924L, 0x2722DED9890AB6AEL)), ((p_49 = (l_632 == (l_638 = p_1584->g_635))) == ((safe_div_func_int32_t_s_s((0UL | l_642), GROUP_DIVERGE(1, 1))) < l_596.sd)), ((VECTOR(int64_t, 2))(0x54D4FE6F710497A0L)), 0x690EEB0FD0381EAAL, (-7L), 0L)).s00))), 0x03A460301D6926A9L, (-9L))))).z < 0x52453A7E3B6A7F65L)) > p_48), ((VECTOR(uint32_t, 4))(7UL)), 1UL, 0xC5C94360L)).s3037307422466254)).s14))).xyxyxyxx, (uint32_t)0UL))).lo, ((VECTOR(uint32_t, 4))(0x05A077F4L))))).hi, ((VECTOR(uint32_t, 2))(0UL))))).xyxxxyyy))), 0x210472ABL, 0xA1FBD456L, l_596.sb, ((VECTOR(uint32_t, 2))(0xAB8B68A3L)), 0UL, 0x231450B0L)))).sbd, ((VECTOR(uint32_t, 2))(0x3A7A08A3L))))).yxxyxyxyyyxyyyyy)))).se1da)).y);
                }
                if ((*p_46))
                    continue;
            }
            else
            { /* block id: 234 */
                (*l_464) = (void*)0;
                (*l_464) = p_46;
                (*p_47) |= ((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(p_1584->g_650.s942d74a6540c192c)).s67c9, ((VECTOR(int32_t, 2))(l_651.s71)).yxxx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_652.xxxx)).wxxywyzy)).lo))).wwzyywyxwwyywzzz))).s1;
            }
        }
    }
    return &p_1584->g_4;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_50(int64_t  p_51, int32_t  p_52, int8_t * p_53, struct S5 * p_1584)
{ /* block id: 11 */
    return &p_1584->g_4;
}


/* ------------------------------------------ */
/* 
 * reads : p_1584->g_7 p_1584->g_67 p_1584->g_4 p_1584->g_88 p_1584->g_86 p_1584->g_99 p_1584->g_100 p_1584->g_102 p_1584->g_117 p_1584->g_118 p_1584->g_124 p_1584->g_128 p_1584->g_59.f0 p_1584->g_192 p_1584->g_201 p_1584->g_188 p_1584->g_116 p_1584->g_234 p_1584->g_244 p_1584->g_249 p_1584->g_252 p_1584->g_263 p_1584->g_171 p_1584->g_113 p_1584->g_302 p_1584->g_303 p_1584->g_309 p_1584->g_59 p_1584->g_406 p_1584->g_412 p_1584->g_420 p_1584->g_447
 * writes: p_1584->g_67 p_1584->g_4 p_1584->g_88 p_1584->g_102 p_1584->g_111 p_1584->g_116 p_1584->g_117 p_1584->g_171 p_1584->g_188 p_1584->g_244 p_1584->g_262 p_1584->g_319 p_1584->g_353 p_1584->g_403 p_1584->g_404 p_1584->g_406 p_1584->g_59
 */
int32_t * func_55(union U4  p_56, int32_t * p_57, uint8_t  p_58, struct S5 * p_1584)
{ /* block id: 14 */
    uint32_t l_73[10] = {0x6224F168L,0x6224F168L,0x6224F168L,0x6224F168L,0x6224F168L,0x6224F168L,0x6224F168L,0x6224F168L,0x6224F168L,0x6224F168L};
    int32_t l_83 = (-5L);
    int32_t l_84 = 0L;
    VECTOR(int32_t, 4) l_87 = (VECTOR(int32_t, 4))(0x45D07927L, (VECTOR(int32_t, 2))(0x45D07927L, 2L), 2L);
    uint32_t l_103 = 7UL;
    VECTOR(int32_t, 8) l_119 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x11FBA64AL), 0x11FBA64AL), 0x11FBA64AL, (-1L), 0x11FBA64AL);
    VECTOR(int32_t, 2) l_120 = (VECTOR(int32_t, 2))(0L, 0x4A0F1C71L);
    VECTOR(int32_t, 16) l_121 = (VECTOR(int32_t, 16))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x36175416L), 0x36175416L), 0x36175416L, (-7L), 0x36175416L, (VECTOR(int32_t, 2))((-7L), 0x36175416L), (VECTOR(int32_t, 2))((-7L), 0x36175416L), (-7L), 0x36175416L, (-7L), 0x36175416L);
    VECTOR(int32_t, 2) l_122 = (VECTOR(int32_t, 2))(1L, 8L);
    VECTOR(int32_t, 4) l_123 = (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, (-1L)), (-1L));
    VECTOR(int32_t, 8) l_125 = (VECTOR(int32_t, 8))(0x1BFB87D1L, (VECTOR(int32_t, 4))(0x1BFB87D1L, (VECTOR(int32_t, 2))(0x1BFB87D1L, 0x1FD58AA2L), 0x1FD58AA2L), 0x1FD58AA2L, 0x1BFB87D1L, 0x1FD58AA2L);
    VECTOR(int32_t, 2) l_126 = (VECTOR(int32_t, 2))(0x6B0A878AL, 3L);
    VECTOR(int32_t, 16) l_127 = (VECTOR(int32_t, 16))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x1A5CC0B3L), 0x1A5CC0B3L), 0x1A5CC0B3L, (-2L), 0x1A5CC0B3L, (VECTOR(int32_t, 2))((-2L), 0x1A5CC0B3L), (VECTOR(int32_t, 2))((-2L), 0x1A5CC0B3L), (-2L), 0x1A5CC0B3L, (-2L), 0x1A5CC0B3L);
    VECTOR(int32_t, 8) l_129 = (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), (-3L)), (-3L)), (-3L), (-4L), (-3L));
    VECTOR(int32_t, 8) l_130 = (VECTOR(int32_t, 8))(0x735A7C04L, (VECTOR(int32_t, 4))(0x735A7C04L, (VECTOR(int32_t, 2))(0x735A7C04L, 0x6FC58545L), 0x6FC58545L), 0x6FC58545L, 0x735A7C04L, 0x6FC58545L);
    VECTOR(int32_t, 4) l_131 = (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0L), 0L);
    int32_t *l_133 = (void*)0;
    int32_t **l_132 = &l_133;
    uint32_t l_177 = 1UL;
    int16_t *l_209 = &p_1584->g_86;
    union U0 *l_215 = &p_1584->g_216;
    VECTOR(uint8_t, 4) l_243 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 250UL), 250UL);
    VECTOR(int16_t, 2) l_295 = (VECTOR(int16_t, 2))((-1L), 7L);
    VECTOR(uint16_t, 16) l_296 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x55FDL), 0x55FDL), 0x55FDL, 65535UL, 0x55FDL, (VECTOR(uint16_t, 2))(65535UL, 0x55FDL), (VECTOR(uint16_t, 2))(65535UL, 0x55FDL), 65535UL, 0x55FDL, 65535UL, 0x55FDL);
    VECTOR(int32_t, 4) l_304 = (VECTOR(int32_t, 4))(0x5C8848BFL, (VECTOR(int32_t, 2))(0x5C8848BFL, 5L), 5L);
    VECTOR(uint16_t, 4) l_339 = (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0x87CEL), 0x87CEL);
    int16_t l_378 = 0x3067L;
    int8_t *l_418 = &p_1584->g_99[1][0][2];
    int16_t l_438 = (-1L);
    VECTOR(uint64_t, 8) l_446 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xEC3197902C49AEC3L), 0xEC3197902C49AEC3L), 0xEC3197902C49AEC3L, 18446744073709551615UL, 0xEC3197902C49AEC3L);
    uint8_t l_460 = 1UL;
    int32_t *l_461[5];
    uint16_t l_462[4][10][6] = {{{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL}},{{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL}},{{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL}},{{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL},{1UL,0UL,0x551EL,65530UL,0UL,65535UL}}};
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_461[i] = (void*)0;
    for (p_58 = 0; (p_58 < 25); p_58 = safe_add_func_uint8_t_u_u(p_58, 7))
    { /* block id: 17 */
        uint8_t *l_66 = &p_1584->g_67;
        int32_t *l_70 = (void*)0;
        (*p_57) ^= ((safe_rshift_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((-2L), ((*l_66) |= p_1584->g_7[0][1][0]))), 5)) == 0x43C1A33FE8F1E0EFL);
        for (p_1584->g_67 = (-4); (p_1584->g_67 != 3); ++p_1584->g_67)
        { /* block id: 22 */
            return l_70;
        }
        (*p_57) = (p_1584->g_7[0][1][0] >= 0L);
        for (p_56.f0 = 0; (p_56.f0 < 13); ++p_56.f0)
        { /* block id: 28 */
            int32_t **l_76 = (void*)0;
            int32_t **l_77 = (void*)0;
            int32_t **l_78[5];
            int i;
            for (i = 0; i < 5; i++)
                l_78[i] = &l_70;
            l_73[9]--;
            l_70 = l_70;
        }
    }
    for (p_1584->g_67 = 0; (p_1584->g_67 > 1); ++p_1584->g_67)
    { /* block id: 35 */
        int32_t *l_81 = &p_1584->g_4;
        int32_t *l_82[9] = {&p_1584->g_4,&p_1584->g_4,&p_1584->g_4,&p_1584->g_4,&p_1584->g_4,&p_1584->g_4,&p_1584->g_4,&p_1584->g_4,&p_1584->g_4};
        int8_t *l_101 = &p_1584->g_102[4];
        int32_t **l_109[6][10] = {{(void*)0,&l_82[2],&l_81,(void*)0,&l_81,&l_81,&l_81,&l_81,(void*)0,&l_81},{(void*)0,&l_82[2],&l_81,(void*)0,&l_81,&l_81,&l_81,&l_81,(void*)0,&l_81},{(void*)0,&l_82[2],&l_81,(void*)0,&l_81,&l_81,&l_81,&l_81,(void*)0,&l_81},{(void*)0,&l_82[2],&l_81,(void*)0,&l_81,&l_81,&l_81,&l_81,(void*)0,&l_81},{(void*)0,&l_82[2],&l_81,(void*)0,&l_81,&l_81,&l_81,&l_81,(void*)0,&l_81},{(void*)0,&l_82[2],&l_81,(void*)0,&l_81,&l_81,&l_81,&l_81,(void*)0,&l_81}};
        int32_t ***l_108 = &l_109[2][1];
        uint8_t *l_110 = &p_1584->g_111;
        uint8_t *l_112 = (void*)0;
        uint8_t *l_114[3][3] = {{&p_1584->g_67,&p_1584->g_67,&p_1584->g_67},{&p_1584->g_67,&p_1584->g_67,&p_1584->g_67},{&p_1584->g_67,&p_1584->g_67,&p_1584->g_67}};
        int64_t *l_115 = &p_1584->g_116;
        int i, j;
        p_1584->g_88.s3--;
        for (l_83 = (-5); (l_83 != 23); l_83 = safe_add_func_uint64_t_u_u(l_83, 5))
        { /* block id: 39 */
            p_1584->g_4 = p_1584->g_86;
            if (l_87.z)
                break;
        }
        p_1584->g_117 ^= (safe_add_func_uint32_t_u_u((((safe_sub_func_int64_t_s_s(((safe_mod_func_int16_t_s_s((((((*l_101) |= ((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 4))((p_1584->g_99[1][0][2] == p_58), p_1584->g_7[1][1][0], 0x05L, 0L)).xwywwyzwzwxwzxwz, ((VECTOR(int8_t, 2))(p_1584->g_100.s62)).yyxyyyxyyxyyxxyy))).s9) < (l_103 < (((*l_115) = (safe_lshift_func_uint8_t_u_u((l_73[9] > (((void*)0 != &p_57) && (((*l_81) = ((*l_110) = (~(safe_mod_func_int8_t_s_s((((*l_108) = (void*)0) != (void*)0), 0x57L))))) ^ 1UL))), 7))) == p_56.f0))) , 4294967291UL) && p_1584->g_100.s3), p_56.f0)) == 0xDF9043A1L), p_58)) < 0x1422B6A9L) , 0xDBD1F826L), 0L));
    }
    if (((VECTOR(int32_t, 16))(0x3BB0F311L, ((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(p_1584->g_118.wywyxywzxwzzzxyy)).odd, ((VECTOR(int32_t, 16))(l_119.s4213673243312257)).even, ((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 2))(l_120.yx)), ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_121.s565e832032b9feb6)).odd)).lo)).odd, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 4))(l_122.xxyy)).wzwyxxxyyxzwxzzy))).odd)).s75, ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_123.xzwxxxzw)), 0x75BEE32CL, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(p_1584->g_124.sa9bdd0b6939ad6f1)).s6d)))))).xyyy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 2))(8L, 0x4B05BB3EL)), ((VECTOR(int32_t, 2))((-6L), 0L))))).xyxx))))).yyzwwyzzxzzzzxzw)).s3, 1L, 0x15252EC4L, 0x7C61DA59L, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))((-3L), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_125.s4753124067374115)).sf0)).lo, ((VECTOR(int32_t, 4))(4L, ((VECTOR(int32_t, 2))(0x54284883L, 1L)), 0x1B2D93A8L)), (-8L), (-1L))).s42))))), 0L)).se3)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_126.xyxy)), 0x765359DEL, 0x78C99DD4L, (-1L), 0L)).s46)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_127.sd1fd)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((-1L), 0L)).xyyy)), ((VECTOR(int32_t, 2))(p_1584->g_128.s5b)), ((*p_57) = 0x6CD9D43CL), ((VECTOR(int32_t, 2))(1L, (-1L))), (-5L), 0x568B998AL, 0x45579058L)).s00)))))).yxxx, ((VECTOR(int32_t, 8))(l_129.s04072447)).hi))), 0x1BD86A01L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 16))(l_130.s5766225533123305)).sc65e, ((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 8))(l_131.yzywwwzw)).s4224476335314266, ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((-4L), 1L)).yyxx)).lo)).yyxx, ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))(l_121.s5, 0x15A15C47L, 6L, (((void*)0 != l_132) , ((safe_div_func_uint16_t_u_u((((VECTOR(int16_t, 4))(p_56.f0, 0x2CE4L, (-7L), (-1L))).w | p_1584->g_59.f0), p_1584->g_118.z)) <= p_1584->g_128.se)), 0x4641CF9FL, ((VECTOR(int32_t, 2))((-1L))), 0x5D9E1A7EL)).hi, ((VECTOR(int32_t, 4))(0x09B0CDC4L)))))))).zxzwzzxzxxyzywyz))).s123e, ((VECTOR(int32_t, 4))(0x037B64F6L))))).yywwyzxzwxwxyyyw, ((VECTOR(int32_t, 16))(6L))))).s4d00)).x, 0x217331CCL, (-1L))).s27)), 4L, (-3L))).even, (int32_t)(*p_57))))))).yxxyyyyyyyxyyyxx)).sd0)).xyxyyxxx, (int32_t)0x065313BCL)))))), ((VECTOR(int32_t, 4))(0x20279D62L)), ((VECTOR(int32_t, 2))(0x1AD0A0F2L)), 1L)).s0)
    { /* block id: 51 */
        int8_t l_164[3][2][9] = {{{9L,0x3CL,9L,9L,0x3CL,9L,9L,0x3CL,9L},{9L,0x3CL,9L,9L,0x3CL,9L,9L,0x3CL,9L}},{{9L,0x3CL,9L,9L,0x3CL,9L,9L,0x3CL,9L},{9L,0x3CL,9L,9L,0x3CL,9L,9L,0x3CL,9L}},{{9L,0x3CL,9L,9L,0x3CL,9L,9L,0x3CL,9L},{9L,0x3CL,9L,9L,0x3CL,9L,9L,0x3CL,9L}}};
        int32_t l_174 = (-4L);
        int32_t l_175 = 0x5D630324L;
        VECTOR(int32_t, 8) l_176 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x533D034BL), 0x533D034BL), 0x533D034BL, 1L, 0x533D034BL);
        VECTOR(uint16_t, 16) l_180 = (VECTOR(uint16_t, 16))(0x1591L, (VECTOR(uint16_t, 4))(0x1591L, (VECTOR(uint16_t, 2))(0x1591L, 0UL), 0UL), 0UL, 0x1591L, 0UL, (VECTOR(uint16_t, 2))(0x1591L, 0UL), (VECTOR(uint16_t, 2))(0x1591L, 0UL), 0x1591L, 0UL, 0x1591L, 0UL);
        int16_t *l_189 = (void*)0;
        union U0 *l_212 = (void*)0;
        VECTOR(uint16_t, 4) l_254 = (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 5UL), 5UL);
        uint64_t l_289 = 0x6D3D67096F6385F0L;
        int i, j, k;
        if ((*p_57))
        { /* block id: 52 */
            (*l_132) = (void*)0;
        }
        else
        { /* block id: 54 */
            int16_t l_168 = 0x3338L;
            int32_t l_173[5][10][4] = {{{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)}},{{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)}},{{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)}},{{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)}},{{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)},{0x014C5301L,0x014C5301L,0x5F705220L,(-1L)}}};
            int32_t **l_205 = &l_133;
            int16_t l_226[5][3] = {{0x35E0L,1L,0x35E0L},{0x35E0L,1L,0x35E0L},{0x35E0L,1L,0x35E0L},{0x35E0L,1L,0x35E0L},{0x35E0L,1L,0x35E0L}};
            uint16_t l_229 = 0UL;
            VECTOR(uint8_t, 2) l_247 = (VECTOR(uint8_t, 2))(1UL, 0x53L);
            VECTOR(uint16_t, 16) l_251 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL);
            int i, j, k;
            for (p_1584->g_4 = 0; (p_1584->g_4 == 15); p_1584->g_4++)
            { /* block id: 57 */
                uint8_t *l_158 = &p_1584->g_111;
                int8_t *l_167 = &p_1584->g_102[3];
                int32_t *l_169 = (void*)0;
                uint64_t *l_170 = &p_1584->g_171;
                int32_t *l_172[9];
                int i;
                for (i = 0; i < 9; i++)
                    l_172[i] = (void*)0;
                (*l_132) = ((safe_lshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_s((FAKE_DIVERGE(p_1584->group_1_offset, get_group_id(1), 10) < ((*l_170) = (safe_add_func_int8_t_s_s(0x10L, (p_1584->g_117 ^ ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 8))((((p_56 , (safe_sub_func_int16_t_s_s(((safe_add_func_int8_t_s_s((safe_mod_func_int16_t_s_s((safe_mod_func_uint64_t_u_u(((((safe_add_func_int32_t_s_s((((*l_167) = ((VECTOR(int8_t, 16))(0x59L, (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))((safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_1584->group_0_offset, get_group_id(0), 10), p_56.f0)), (((*l_158) ^= p_1584->g_128.s7) & (safe_rshift_func_uint8_t_u_s((safe_sub_func_uint8_t_u_u((p_1584->g_163 , (0L < l_164[2][0][0])), ((((safe_mod_func_int32_t_s_s(((~1UL) & 7UL), 0x21B4F9A3L)) > (-1L)) , 0x45L) && 2UL))), 5))), 0x2CL, 0x28L)).yzyxzwyz)).s7441725170023745)).sc, p_56.f0)), 0x53L, ((VECTOR(int8_t, 2))(0x79L)), ((VECTOR(int8_t, 2))(0x61L)), ((VECTOR(int8_t, 4))((-3L))), 0x17L, ((VECTOR(int8_t, 4))(1L)))).s3) , 0x2D141778L), GROUP_DIVERGE(0, 1))) & 5UL) && l_168) < l_168), l_168)), p_56.f0)), p_1584->g_67)) | 0UL), p_1584->g_4))) , l_169) != (void*)0), 18446744073709551609UL, ((VECTOR(uint64_t, 2))(18446744073709551611UL)), ((VECTOR(uint64_t, 4))(18446744073709551611UL)))).hi, ((VECTOR(uint64_t, 4))(0xD51EC3C314682580L))))).zwwwxwxyyxxxxzww)).s0311)).y))))), 12)), p_1584->g_100.s6)) , &p_1584->g_4);
                --l_177;
            }
            if (p_1584->g_118.z)
            { /* block id: 64 */
                (*p_57) = l_174;
                (*p_57) &= ((+((VECTOR(uint16_t, 4))(l_180.s2917)).w) == (-6L));
            }
            else
            { /* block id: 67 */
                int64_t l_181 = 0x5D0621BF3EA2FF55L;
                int16_t *l_186[10][6] = {{&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86},{&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86},{&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86},{&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86},{&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86},{&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86},{&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86},{&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86},{&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86},{&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86,&p_1584->g_86}};
                int64_t *l_187 = &p_1584->g_188;
                uint16_t l_211 = 0xFA56L;
                int32_t l_223 = 0x1711FA60L;
                int32_t l_224 = 6L;
                int32_t l_225[4][6][6] = {{{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L}},{{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L}},{{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L}},{{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L},{0x1B6EA8F3L,0L,(-10L),(-6L),4L,4L}}};
                VECTOR(uint16_t, 4) l_253 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xD59CL), 0xD59CL);
                int i, j, k;
                l_173[3][0][1] &= l_181;
                if (((((*l_187) = (safe_mul_func_uint16_t_u_u((((void*)0 == (*l_132)) != ((l_176.s2 = (safe_sub_func_int8_t_s_s((p_58 > p_58), 9UL))) <= l_181)), 0x57A5L))) , p_1584->g_7[0][1][0]) > ((void*)0 == l_189)))
                { /* block id: 71 */
                    VECTOR(int64_t, 16) l_204 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x63EF1A15CE6520A0L), 0x63EF1A15CE6520A0L), 0x63EF1A15CE6520A0L, 1L, 0x63EF1A15CE6520A0L, (VECTOR(int64_t, 2))(1L, 0x63EF1A15CE6520A0L), (VECTOR(int64_t, 2))(1L, 0x63EF1A15CE6520A0L), 1L, 0x63EF1A15CE6520A0L, 1L, 0x63EF1A15CE6520A0L);
                    int32_t ***l_206 = &l_132;
                    int64_t *l_210[6][7] = {{&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116},{&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116},{&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116},{&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116},{&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116},{&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116,&p_1584->g_116}};
                    int32_t l_221 = 3L;
                    int32_t l_227 = 3L;
                    int32_t l_228 = 0x2EAAC3ADL;
                    VECTOR(uint16_t, 8) l_250 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65534UL), 65534UL), 65534UL, 1UL, 65534UL);
                    uint8_t l_286 = 1UL;
                    int i, j;
                    if (((VECTOR(int32_t, 16))(0L, (p_58 ^ (((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(p_1584->g_192.yyzy)).y, (safe_rshift_func_int8_t_s_u((safe_rshift_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(((safe_add_func_int8_t_s_s(((VECTOR(int8_t, 16))(p_1584->g_201.xwyzywzywyywwzzy)).s7, (((((((((*l_132) = &p_1584->g_4) == (void*)0) , (safe_mod_func_int16_t_s_s((((VECTOR(int64_t, 16))(l_204.s5f7ac17a10311ea4)).s6 || (l_205 != ((*l_206) = &l_133))), p_1584->g_128.s5))) < (safe_add_func_uint8_t_u_u((l_189 == l_209), (((p_1584->g_116 ^= p_1584->g_188) | p_1584->g_128.s5) & p_1584->g_192.y)))) < l_164[2][0][0]) || p_1584->g_201.x) && p_1584->g_59.f0) ^ p_1584->g_192.z))) , p_56.f0), 4)), p_58)), p_58)))) | FAKE_DIVERGE(p_1584->group_1_offset, get_group_id(1), 10)) , l_211)), 0x106815FFL, ((VECTOR(int32_t, 8))(0L)), ((VECTOR(int32_t, 4))(1L)), 0x26C8DEDFL)).s7)
                    { /* block id: 75 */
                        union U0 **l_213 = (void*)0;
                        union U0 **l_214 = (void*)0;
                        int32_t *l_217 = (void*)0;
                        int32_t *l_218 = &l_175;
                        int32_t *l_219 = (void*)0;
                        int32_t *l_220[3][7][2] = {{{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4}},{{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4}},{{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4},{(void*)0,&p_1584->g_4}}};
                        int16_t l_222[1];
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_222[i] = 0L;
                        l_215 = l_212;
                        --l_229;
                    }
                    else
                    { /* block id: 78 */
                        uint8_t *l_235 = (void*)0;
                        uint8_t *l_236 = (void*)0;
                        uint8_t *l_237 = (void*)0;
                        uint8_t *l_238 = (void*)0;
                        uint8_t *l_239 = (void*)0;
                        uint8_t *l_240[10] = {&p_1584->g_67,&p_1584->g_67,&p_1584->g_67,&p_1584->g_67,&p_1584->g_67,&p_1584->g_67,&p_1584->g_67,&p_1584->g_67,&p_1584->g_67,&p_1584->g_67};
                        VECTOR(uint8_t, 4) l_248 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 1UL), 1UL);
                        int8_t *l_257 = (void*)0;
                        int8_t *l_258[8] = {&p_1584->g_102[2],&p_1584->g_102[2],&p_1584->g_102[2],&p_1584->g_102[2],&p_1584->g_102[2],&p_1584->g_102[2],&p_1584->g_102[2],&p_1584->g_102[2]};
                        VECTOR(int16_t, 2) l_261 = (VECTOR(int16_t, 2))(0x1DA1L, 0x7B69L);
                        int32_t *l_283 = (void*)0;
                        int32_t *l_284 = &l_175;
                        int i;
                        (***l_206) = (safe_add_func_int32_t_s_s(((p_1584->g_67 |= p_1584->g_234) < ((VECTOR(uint8_t, 4))((l_176.s2 = (safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 8))(0UL, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))((p_1584->g_244.s0 = ((((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_243.zw)), 0x73L, 253UL)).wyzxxyyy)).even)).xzyzwxzxzyzwxyww)).s8b))), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(0x6EL, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(p_1584->g_244.s5365)).odd)), (safe_rshift_func_uint8_t_u_u(p_1584->g_201.x, 2)), 255UL, 8UL, 1UL, 255UL)).s7665772705772135)).s4d)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(l_247.xy)).xxyxyxyyxxyyyxyy)).sdbce)))).odd, ((VECTOR(uint8_t, 2))(l_248.yx)).xxxy))))).zzyzxxyy, ((VECTOR(uint16_t, 2))(p_1584->g_249.wx)).xxxyyyxx, ((VECTOR(uint16_t, 4))(l_250.s2120)).yzwxywwz))).s77)).yxxyyyyyyyyyxxyy, ((VECTOR(uint16_t, 2))(4UL, 0x0F4AL)).yyyyyxyyxxxyyyxy))).s4970, ((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 8))(l_251.s619c6f29)).s27, ((VECTOR(uint16_t, 2))(abs(((VECTOR(int16_t, 16))(p_1584->g_252.zyxxxxzzxxzyxwzy)).s27)))))).xxyx)).wyxwxyzyxxzxwyyw)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(l_253.wzwzyyww)))))).s1775474410352423))).sd5a6))).z < (((VECTOR(uint16_t, 16))(l_254.xwwyyywxwxwxwwww)).s6 , 0x3748L)) , ((l_224 ^= (safe_rshift_func_uint16_t_u_s(0UL, 7))) >= ((p_1584->g_116 = (p_1584->g_4 | ((**l_132) ^ (safe_rshift_func_uint16_t_u_s(((0x15D709CCL | l_248.w) || ((VECTOR(int16_t, 8))(l_261.xyxxyxyx)).s0), 3))))) != 1L)))), 247UL, FAKE_DIVERGE(p_1584->local_2_offset, get_local_id(2), 10), ((VECTOR(uint8_t, 4))(9UL)), ((VECTOR(uint8_t, 2))(1UL)), ((VECTOR(uint8_t, 2))(0xF5L)), (***l_206), 0xDEL, 0x3EL, 253UL, 0x84L)).s4e)), ((VECTOR(uint8_t, 2))(0x0AL)), p_1584->g_117, 0x74L, 255UL)).even, ((VECTOR(uint8_t, 4))(0x27L))))).y, 0x1BL))), 255UL, 0xE3L, 254UL)).x), FAKE_DIVERGE(p_1584->local_1_offset, get_local_id(1), 10)));
                        if (l_181)
                            goto lbl_285;
                        p_1584->g_262[2] = ((l_225[2][0][3] ^= ((0L | 0x6B90L) && p_1584->g_100.s0)) , (*l_205));
lbl_285:
                        (*l_284) = ((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(p_1584->g_263.s1d)).xyxy, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(0x299D67B2L, (-9L), ((**l_205) = (((p_1584->g_116 &= (safe_add_func_int16_t_s_s(l_175, (((safe_lshift_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u(((***l_206) , (p_1584->g_244.s7 ^= p_58)), (safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((l_261.x < 2L), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))((((0x1F90554811B1D729L >= ((safe_unary_minus_func_uint8_t_u((safe_lshift_func_uint16_t_u_s(5UL, (((VECTOR(int8_t, 2))((-2L), 0x33L)).even != (safe_div_func_int8_t_s_s(l_176.s5, ((safe_rshift_func_uint8_t_u_u(p_56.f0, p_1584->g_171)) ^ p_56.f0)))))))) >= p_58)) && 0x42L) || FAKE_DIVERGE(p_1584->global_2_offset, get_global_id(2), 10)), ((VECTOR(int8_t, 2))(0x6DL)), 0x4CL)).zzyzywxzwzxzxxxy)), ((VECTOR(int8_t, 16))(7L))))).even, ((VECTOR(int8_t, 8))(0x4DL))))).s0701444247147057)).s4)), p_56.f0)))), p_1584->g_128.s8)), l_248.x)) & p_1584->g_192.w) || p_1584->g_113.s4)))) && GROUP_DIVERGE(2, 1)) , (*p_57))), 0L, 0x11A79A1DL, 0x4F0B8B54L, 2L, 1L)).s6, ((VECTOR(int32_t, 4))(0x0470653CL)), 0x15C299F0L, ((VECTOR(int32_t, 4))(0x63662FD1L)), 0x7B763514L, ((VECTOR(int32_t, 4))(0x32458DE1L)), 0x3C6B21A7L)).s5e04, ((VECTOR(int32_t, 4))(0x4A63DC5FL))))).y;
                        ++l_286;
                    }
                    return &p_1584->g_4;
                }
                else
                { /* block id: 95 */
                    (*l_205) = p_57;
                }
                (*p_57) = l_289;
            }
        }
        return p_57;
    }
    else
    { /* block id: 102 */
        uint8_t l_290 = 0xF5L;
        VECTOR(uint16_t, 8) l_297 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xEF1AL), 0xEF1AL), 0xEF1AL, 1UL, 0xEF1AL);
        uint8_t *l_298 = &l_290;
        VECTOR(uint8_t, 4) l_299 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xAEL), 0xAEL);
        VECTOR(int32_t, 2) l_305 = (VECTOR(int32_t, 2))((-5L), 0x03915363L);
        int8_t *l_306[5][5][8] = {{{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]}},{{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]}},{{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]}},{{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]}},{{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]},{&p_1584->g_7[1][1][0],&p_1584->g_7[2][0][0],(void*)0,&p_1584->g_99[1][0][2],&p_1584->g_99[4][0][0],&p_1584->g_7[1][1][0],&p_1584->g_99[1][0][2],&p_1584->g_102[4]}}};
        uint32_t *l_318[6][7] = {{&l_177,&l_177,&l_177,(void*)0,&l_177,&l_177,&l_177},{&l_177,&l_177,&l_177,(void*)0,&l_177,&l_177,&l_177},{&l_177,&l_177,&l_177,(void*)0,&l_177,&l_177,&l_177},{&l_177,&l_177,&l_177,(void*)0,&l_177,&l_177,&l_177},{&l_177,&l_177,&l_177,(void*)0,&l_177,&l_177,&l_177},{&l_177,&l_177,&l_177,(void*)0,&l_177,&l_177,&l_177}};
        int32_t l_354 = (-3L);
        uint32_t l_377 = 4294967293UL;
        int8_t l_388 = 0x2DL;
        VECTOR(int64_t, 8) l_411 = (VECTOR(int64_t, 8))(0x705971BF20BC572AL, (VECTOR(int64_t, 4))(0x705971BF20BC572AL, (VECTOR(int64_t, 2))(0x705971BF20BC572AL, 0x132A30D229907CD3L), 0x132A30D229907CD3L), 0x132A30D229907CD3L, 0x705971BF20BC572AL, 0x132A30D229907CD3L);
        int8_t **l_413[10] = {&l_306[2][0][7],&l_306[2][4][6],&l_306[2][4][6],&l_306[2][4][6],&l_306[2][0][7],&l_306[2][0][7],&l_306[2][4][6],&l_306[2][4][6],&l_306[2][4][6],&l_306[2][0][7]};
        VECTOR(uint16_t, 16) l_419 = (VECTOR(uint16_t, 16))(0x5C35L, (VECTOR(uint16_t, 4))(0x5C35L, (VECTOR(uint16_t, 2))(0x5C35L, 0x3969L), 0x3969L), 0x3969L, 0x5C35L, 0x3969L, (VECTOR(uint16_t, 2))(0x5C35L, 0x3969L), (VECTOR(uint16_t, 2))(0x5C35L, 0x3969L), 0x5C35L, 0x3969L, 0x5C35L, 0x3969L);
        int16_t l_426 = 0L;
        int64_t l_429 = 5L;
        VECTOR(uint8_t, 2) l_439 = (VECTOR(uint8_t, 2))(0xC9L, 0x03L);
        int i, j, k;
        if ((l_290 , ((safe_mod_func_int32_t_s_s((safe_sub_func_uint16_t_u_u(((l_305.x = (((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),VECTOR(uint16_t, 4),((VECTOR(uint16_t, 8))(abs(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_295.yy)).yxyyyxyyxyxxyyxx)).s6d)).xyyxyyyx))).odd, ((VECTOR(uint16_t, 16))(l_296.sf3245bcaae95312a)).sad0b, ((VECTOR(uint16_t, 16))(l_297.s6316647726123412)).s5b93))).zzxyyzzw, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(65533UL, 1UL)), (p_58 || ((*l_298) ^= p_1584->g_100.s2)), 0x2A8CL, 7UL, ((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_299.zw)).yxyxxyxx)).s17, ((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 16))(0x69L, ((safe_mod_func_int8_t_s_s((p_1584->g_102[4] = ((*p_57) < ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(p_1584->g_302.xyxyyxyxxxyxxxxx)).sa, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 8))(p_1584->g_303.xwwwwwzw)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_304.xwzyzwzyxzyyzwzy)).even))))).s13, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_305.yyxxxxyyxyyyxyxx)).se6))))), 0x63DF97D4L)).z)), ((safe_div_func_int8_t_s_s((((void*)0 == p_1584->g_309) & ((p_1584->g_319 = (!(safe_sub_func_uint64_t_u_u((safe_sub_func_int32_t_s_s(((safe_mul_func_uint8_t_u_u((p_1584->g_59 , (safe_mod_func_uint8_t_u_u((p_56 , FAKE_DIVERGE(p_1584->global_2_offset, get_global_id(2), 10)), p_1584->g_100.s4))), p_1584->g_7[2][1][0])) <= 0x24678CE95AAB2A08L), 0x264594DEL)), p_1584->g_113.s1)))) >= p_1584->g_7[0][1][0])), l_305.y)) && (*p_57)))) == p_1584->g_116), ((VECTOR(uint8_t, 4))(0x5CL)), 0x1AL, ((VECTOR(uint8_t, 4))(0x7DL)), ((VECTOR(uint8_t, 4))(0UL)), 250UL)), ((VECTOR(uint8_t, 16))(0xDEL))))))).odd)))).s0550030647142460)), ((VECTOR(uint8_t, 16))(0x44L))))).scd))), 0xD915L))))).s6, 2UL, 0x4612L, 0x7D53L)).zxzyxxwy)).s5 == 65527UL) || p_1584->g_244.s7) < p_1584->g_252.y)) , p_1584->g_86), p_1584->g_201.y)), l_297.s4)) <= p_1584->g_192.x)))
        { /* block id: 107 */
            int64_t *l_325[8][7][2] = {{{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116}},{{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116}},{{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116}},{{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116}},{{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116}},{{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116}},{{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116}},{{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116},{&p_1584->g_319,&p_1584->g_116}}};
            int32_t l_348 = 1L;
            VECTOR(int32_t, 4) l_385 = (VECTOR(int32_t, 4))(0x402156A1L, (VECTOR(int32_t, 2))(0x402156A1L, 0x36885F81L), 0x36885F81L);
            int64_t l_394 = 0x78E1DF0763C43478L;
            int8_t **l_402[6][3] = {{&l_306[0][2][1],&l_306[2][4][6],&l_306[0][2][1]},{&l_306[0][2][1],&l_306[2][4][6],&l_306[0][2][1]},{&l_306[0][2][1],&l_306[2][4][6],&l_306[0][2][1]},{&l_306[0][2][1],&l_306[2][4][6],&l_306[0][2][1]},{&l_306[0][2][1],&l_306[2][4][6],&l_306[0][2][1]},{&l_306[0][2][1],&l_306[2][4][6],&l_306[0][2][1]}};
            union U0 *l_414[3][7] = {{&p_1584->g_416,&p_1584->g_417,&p_1584->g_416,&p_1584->g_416,&p_1584->g_417,&p_1584->g_416,&p_1584->g_416},{&p_1584->g_416,&p_1584->g_417,&p_1584->g_416,&p_1584->g_416,&p_1584->g_417,&p_1584->g_416,&p_1584->g_416},{&p_1584->g_416,&p_1584->g_417,&p_1584->g_416,&p_1584->g_416,&p_1584->g_417,&p_1584->g_416,&p_1584->g_416}};
            union U2 l_421 = {4294967295UL};
            int32_t *l_431 = (void*)0;
            int32_t *l_432 = (void*)0;
            int32_t *l_433 = (void*)0;
            int32_t *l_434 = &l_83;
            int32_t *l_435[1][1];
            int16_t l_436 = 0x28BEL;
            int8_t l_437 = 0x7FL;
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                    l_435[i][j] = (void*)0;
            }
            for (p_58 = 0; (p_58 <= 39); p_58 = safe_add_func_uint64_t_u_u(p_58, 5))
            { /* block id: 110 */
                int64_t *l_324 = (void*)0;
                VECTOR(uint16_t, 2) l_338 = (VECTOR(uint16_t, 2))(65534UL, 1UL);
                uint64_t *l_351 = &p_1584->g_216.f0;
                uint64_t *l_352 = &p_1584->g_171;
                VECTOR(int8_t, 8) l_374 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x51L), 0x51L), 0x51L, 1L, 0x51L);
                int32_t l_380 = 1L;
                int32_t l_384 = 0x68C20FEFL;
                int32_t l_389 = 0x60860E16L;
                int32_t l_391 = 0x324E84A9L;
                int32_t l_392 = 0x1E1C7512L;
                VECTOR(int32_t, 16) l_393 = (VECTOR(int32_t, 16))(0x2E8B41FEL, (VECTOR(int32_t, 4))(0x2E8B41FEL, (VECTOR(int32_t, 2))(0x2E8B41FEL, 1L), 1L), 1L, 0x2E8B41FEL, 1L, (VECTOR(int32_t, 2))(0x2E8B41FEL, 1L), (VECTOR(int32_t, 2))(0x2E8B41FEL, 1L), 0x2E8B41FEL, 1L, 0x2E8B41FEL, 1L);
                volatile union U0 **l_408[2][5][9] = {{{&p_1584->g_406,&p_1584->g_406,(void*)0,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406},{&p_1584->g_406,&p_1584->g_406,(void*)0,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406},{&p_1584->g_406,&p_1584->g_406,(void*)0,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406},{&p_1584->g_406,&p_1584->g_406,(void*)0,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406},{&p_1584->g_406,&p_1584->g_406,(void*)0,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406}},{{&p_1584->g_406,&p_1584->g_406,(void*)0,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406},{&p_1584->g_406,&p_1584->g_406,(void*)0,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406},{&p_1584->g_406,&p_1584->g_406,(void*)0,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406},{&p_1584->g_406,&p_1584->g_406,(void*)0,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406},{&p_1584->g_406,&p_1584->g_406,(void*)0,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406}}};
                int i, j, k;
                for (l_84 = 0; (l_84 <= (-10)); l_84 = safe_sub_func_int64_t_s_s(l_84, 5))
                { /* block id: 113 */
                    p_1584->g_262[2] = ((*l_132) = p_57);
                }
                if (((((p_1584->g_128.sb ^ (l_324 == l_325[2][2][0])) != (safe_div_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_u(((safe_mod_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s((safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_1584->global_2_offset, get_global_id(2), 10), (safe_add_func_uint32_t_u_u((((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 2))(l_338.xy)).yyxxyxxxxxyyxxyy, ((VECTOR(uint16_t, 8))(l_339.ywyxwxwx)).s0105463157727323))).s64, ((VECTOR(uint32_t, 16))((safe_div_func_int64_t_s_s(l_299.x, ((*l_352) &= (((l_338.y & (p_56.f0 <= (safe_add_func_uint16_t_u_u(0UL, ((((*l_351) = (((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(hadd(((VECTOR(uint64_t, 16))((safe_sub_func_int32_t_s_s(((p_1584->g_102[0] = (safe_rshift_func_int8_t_s_u((l_348 >= (safe_rshift_func_int16_t_s_u((18446744073709551606UL == l_348), l_348))), p_1584->g_249.z))) || (-1L)), (*p_57))), 0xAE044D6DA284B800L, p_1584->g_4, ((VECTOR(uint64_t, 4))(0xE1541A47F7494F68L)), ((VECTOR(uint64_t, 4))(0x4016A3F41C0306E1L)), ((VECTOR(uint64_t, 2))(1UL)), l_348, 0x4147590677216BDAL, 8UL)).s2b72, ((VECTOR(uint64_t, 4))(0UL))))).yxwywxyx)).s0 , GROUP_DIVERGE(0, 1))) , (*p_57)) < 0xE5470AFFL))))) != p_1584->g_252.w) & l_297.s6)))), ((VECTOR(uint32_t, 4))(4294967295UL)), 0x829BFE54L, p_1584->g_353, GROUP_DIVERGE(2, 1), 0x85B260B9L, ((VECTOR(uint32_t, 2))(4294967290UL)), 4294967295UL, 4294967295UL, 0x75A97890L, 0x33DC35E9L, 2UL)).sf9))).yyxx)).xxyzywzy)).s5 , 0x355F846FE51E9565L) || 0x205DFC3F0EC19EDEL) != p_1584->g_244.s4), p_56.f0)))), l_348)), p_1584->g_117)) & l_338.x), 5)) != FAKE_DIVERGE(p_1584->group_2_offset, get_group_id(2), 10)), p_1584->g_201.w))) && l_354) , 0L))
                { /* block id: 120 */
                    return &p_1584->g_4;
                }
                else
                { /* block id: 122 */
                    int32_t l_365[10][1][6] = {{{0x4098387DL,0L,7L,0x4CBD2ECEL,0x43B90167L,2L}},{{0x4098387DL,0L,7L,0x4CBD2ECEL,0x43B90167L,2L}},{{0x4098387DL,0L,7L,0x4CBD2ECEL,0x43B90167L,2L}},{{0x4098387DL,0L,7L,0x4CBD2ECEL,0x43B90167L,2L}},{{0x4098387DL,0L,7L,0x4CBD2ECEL,0x43B90167L,2L}},{{0x4098387DL,0L,7L,0x4CBD2ECEL,0x43B90167L,2L}},{{0x4098387DL,0L,7L,0x4CBD2ECEL,0x43B90167L,2L}},{{0x4098387DL,0L,7L,0x4CBD2ECEL,0x43B90167L,2L}},{{0x4098387DL,0L,7L,0x4CBD2ECEL,0x43B90167L,2L}},{{0x4098387DL,0L,7L,0x4CBD2ECEL,0x43B90167L,2L}}};
                    int32_t *l_379[6];
                    int i, j, k;
                    for (i = 0; i < 6; i++)
                        l_379[i] = (void*)0;
                    l_305.x = (((safe_add_func_int16_t_s_s(((4294967295UL && ((VECTOR(int32_t, 8))(5L, (l_380 = ((safe_div_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(((p_1584->g_234 == (safe_div_func_int16_t_s_s(((((safe_sub_func_int8_t_s_s(l_365[6][0][3], ((safe_sub_func_uint8_t_u_u(((safe_sub_func_int32_t_s_s(((*p_57) ^= ((VECTOR(int32_t, 2))(0x3C6C22D2L, (-1L))).hi), (((safe_div_func_uint8_t_u_u(0x58L, (safe_mod_func_uint16_t_u_u((p_1584->g_113.s7 || ((VECTOR(int8_t, 8))(0x6DL, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(l_374.s5473)))), ((VECTOR(int8_t, 2))((-4L), (-2L))), (-1L))).s5), 0x5D03L)))) ^ (safe_div_func_uint32_t_u_u(p_56.f0, (p_1584->g_302.x , l_297.s6)))) >= l_377))) > 0x2ADEFDB3L), 0x5AL)) | GROUP_DIVERGE(2, 1)))) != p_58) && 0UL) <= p_56.f0), p_56.f0))) != p_58), p_1584->g_234)), 7L)) ^ l_378)), l_348, 1L, (*p_57), 0x36AC42B4L, 0x6B83DD4FL, 0x74EAA836L)).s0) != l_377), p_1584->g_128.s7)) == 4UL) || p_1584->g_118.x);
                    (*l_132) = p_57;
                    for (p_1584->g_353 = 0; (p_1584->g_353 == 7); ++p_1584->g_353)
                    { /* block id: 129 */
                        int16_t l_383[6] = {5L,5L,5L,5L,5L,5L};
                        int32_t l_386 = 0x5B7E52BFL;
                        int32_t l_387 = (-1L);
                        int32_t l_390[1];
                        uint32_t l_395 = 0x9D1906F7L;
                        union U0 **l_398 = &l_215;
                        union U0 ***l_399 = &l_398;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_390[i] = (-8L);
                        l_395--;
                        (*l_399) = l_398;
                    }
                    for (l_83 = 18; (l_83 != (-7)); --l_83)
                    { /* block id: 135 */
                        p_1584->g_403 = l_402[2][2];
                        p_1584->g_404 = &l_209;
                        (*p_57) |= l_394;
                        if ((*p_57))
                            break;
                    }
                }
                p_1584->g_406 = p_1584->g_406;
                (*p_57) = (safe_sub_func_uint64_t_u_u(((((*l_298) = 0x87L) >= p_1584->g_252.y) >= (((VECTOR(int64_t, 16))((l_377 < p_58), ((VECTOR(int64_t, 2))(l_411.s41)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(p_1584->g_412.zxwy)).xwwzzxxx)), (((void*)0 != l_413[0]) & ((void*)0 == l_414[1][6])), 0L, 0x4BD74A12256D455FL, (-2L), 0L)).s2 != 0x282FB0978FC63D3AL)), 3L));
            }
            if ((((VECTOR(uint16_t, 8))(65535UL, 0xB5E0L, 65535UL, (l_418 != l_418), ((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(65527UL, ((VECTOR(uint16_t, 2))(l_419.s86)), ((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(p_1584->g_420.wwzx)), p_1584->g_252.z, p_58, 65530UL, 0xCD96L)).s21)).xxxy, ((VECTOR(uint16_t, 16))(0xC632L, ((p_1584->g_59 , l_421) , 0xC910L), p_58, 1UL, ((VECTOR(uint16_t, 2))(7UL)), 0x8A0DL, 0xA566L, ((VECTOR(uint16_t, 4))(1UL)), 0x2D84L, 3UL, 2UL, 0x703CL)).sa05e))))).hi, ((VECTOR(uint16_t, 2))(65534UL))))), 0x8779L, 0UL, 0x94DDL)), 0xE09FL, ((VECTOR(uint16_t, 4))(0x8BDCL)), p_58, 0x9E10L, 65527UL)).s8fd1, ((VECTOR(uint16_t, 4))(0xBA15L))))).xzywzzxywxzzxzwz, ((VECTOR(uint16_t, 16))(65530UL)), ((VECTOR(uint16_t, 16))(6UL))))).sdb42, ((VECTOR(uint16_t, 4))(0xF353L))))))).s6 == p_58))
            { /* block id: 146 */
                uint32_t l_422 = 0x043381CAL;
                union U4 *l_423 = &p_1584->g_59;
                (*l_132) = func_50(p_1584->g_244.s5, l_422, l_418, p_1584);
                (*l_133) = ((((*l_423) = p_1584->g_59) , ((p_58 != 9UL) , p_56)) , (safe_mod_func_uint8_t_u_u((FAKE_DIVERGE(p_1584->global_2_offset, get_global_id(2), 10) & ((((((((*l_298) = p_56.f0) <= p_56.f0) & ((((l_426 ^= l_377) != (safe_add_func_int8_t_s_s((l_325[2][2][0] != &p_1584->g_188), p_58))) | l_419.s0) >= GROUP_DIVERGE(0, 1))) , l_422) && p_58) <= l_429) != (*l_133))), (**l_132))));
            }
            else
            { /* block id: 152 */
                int32_t *l_430 = (void*)0;
                (*l_132) = l_430;
                (*l_132) = &p_1584->g_4;
            }
            ++l_439.x;
            return p_57;
        }
        else
        { /* block id: 158 */
            (*l_132) = p_57;
        }
        (*l_133) = (-5L);
    }
    l_462[0][8][5] = (safe_lshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((((p_1584->g_7[0][1][0] || ((**l_132) = (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 2))(l_446.s43)).yxyxyxyy, ((VECTOR(uint64_t, 16))(p_1584->g_447.wzwxwzxzzxxyyzxw)).odd))).s1203727624224575)).s3 > (safe_mul_func_uint8_t_u_u(((((p_56.f0 > ((*l_133) | ((((&l_209 == (void*)0) > ((safe_div_func_uint16_t_u_u((safe_add_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s((safe_sub_func_int64_t_s_s((safe_lshift_func_uint8_t_u_u((7L == 0xBBL), p_56.f0)), (0x7CEB5A32L >= l_460))), (*l_133))), 8L)), 4L)) == (**l_132))) & (*l_133)) | p_56.f0))) >= (*l_133)) , &l_209) == &p_1584->g_405), p_58))))) >= 0x32L) , (*l_133)) && (*p_57)), p_1584->g_7[0][1][0])), 0));
    return p_57;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S5 c_1585;
    struct S5* p_1584 = &c_1585;
    struct S5 c_1586 = {
        1L, // p_1584->g_4
        &p_1584->g_4, // p_1584->g_3
        {{{0L},{0L},{0L}},{{0L},{0L},{0L}},{{0L},{0L},{0L}},{{0L},{0L},{0L}}}, // p_1584->g_7
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 248UL), 248UL), // p_1584->g_15
        (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL), // p_1584->g_16
        (VECTOR(int64_t, 2))(0x6A759F32F520A048L, 0L), // p_1584->g_23
        {0xE56F6324L}, // p_1584->g_59
        0UL, // p_1584->g_67
        1L, // p_1584->g_85
        0x1E45L, // p_1584->g_86
        (VECTOR(uint16_t, 16))(0xCB9CL, (VECTOR(uint16_t, 4))(0xCB9CL, (VECTOR(uint16_t, 2))(0xCB9CL, 65530UL), 65530UL), 65530UL, 0xCB9CL, 65530UL, (VECTOR(uint16_t, 2))(0xCB9CL, 65530UL), (VECTOR(uint16_t, 2))(0xCB9CL, 65530UL), 0xCB9CL, 65530UL, 0xCB9CL, 65530UL), // p_1584->g_88
        {{{0x09L,0x09L,1L,7L}},{{0x09L,0x09L,1L,7L}},{{0x09L,0x09L,1L,7L}},{{0x09L,0x09L,1L,7L}},{{0x09L,0x09L,1L,7L}},{{0x09L,0x09L,1L,7L}},{{0x09L,0x09L,1L,7L}},{{0x09L,0x09L,1L,7L}}}, // p_1584->g_99
        (VECTOR(int8_t, 8))(0x65L, (VECTOR(int8_t, 4))(0x65L, (VECTOR(int8_t, 2))(0x65L, 0L), 0L), 0L, 0x65L, 0L), // p_1584->g_100
        {0x55L,0x55L,0x55L,0x55L,0x55L,0x55L}, // p_1584->g_102
        0x67L, // p_1584->g_111
        (VECTOR(uint8_t, 8))(0x26L, (VECTOR(uint8_t, 4))(0x26L, (VECTOR(uint8_t, 2))(0x26L, 2UL), 2UL), 2UL, 0x26L, 2UL), // p_1584->g_113
        0x256DA865B3CABD61L, // p_1584->g_116
        (-1L), // p_1584->g_117
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x27A2C147L), 0x27A2C147L), // p_1584->g_118
        (VECTOR(int32_t, 16))(0x11EE9290L, (VECTOR(int32_t, 4))(0x11EE9290L, (VECTOR(int32_t, 2))(0x11EE9290L, 0x0DDD0EBFL), 0x0DDD0EBFL), 0x0DDD0EBFL, 0x11EE9290L, 0x0DDD0EBFL, (VECTOR(int32_t, 2))(0x11EE9290L, 0x0DDD0EBFL), (VECTOR(int32_t, 2))(0x11EE9290L, 0x0DDD0EBFL), 0x11EE9290L, 0x0DDD0EBFL, 0x11EE9290L, 0x0DDD0EBFL), // p_1584->g_124
        (VECTOR(int32_t, 16))(0x36160A43L, (VECTOR(int32_t, 4))(0x36160A43L, (VECTOR(int32_t, 2))(0x36160A43L, 0L), 0L), 0L, 0x36160A43L, 0L, (VECTOR(int32_t, 2))(0x36160A43L, 0L), (VECTOR(int32_t, 2))(0x36160A43L, 0L), 0x36160A43L, 0L, 0x36160A43L, 0L), // p_1584->g_128
        {0xC8831FD1L}, // p_1584->g_163
        0xA45521639E250035L, // p_1584->g_171
        0L, // p_1584->g_188
        (VECTOR(uint64_t, 4))(0x859700A65A28AB48L, (VECTOR(uint64_t, 2))(0x859700A65A28AB48L, 0UL), 0UL), // p_1584->g_192
        (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x53L), 0x53L), // p_1584->g_201
        {18446744073709551615UL}, // p_1584->g_216
        1UL, // p_1584->g_234
        (VECTOR(uint8_t, 8))(0xFAL, (VECTOR(uint8_t, 4))(0xFAL, (VECTOR(uint8_t, 2))(0xFAL, 0UL), 0UL), 0UL, 0xFAL, 0UL), // p_1584->g_244
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), 0UL), // p_1584->g_249
        (VECTOR(int16_t, 4))(0x2A4EL, (VECTOR(int16_t, 2))(0x2A4EL, (-2L)), (-2L)), // p_1584->g_252
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_1584->g_262
        (VECTOR(int32_t, 16))(0x78686FEFL, (VECTOR(int32_t, 4))(0x78686FEFL, (VECTOR(int32_t, 2))(0x78686FEFL, (-3L)), (-3L)), (-3L), 0x78686FEFL, (-3L), (VECTOR(int32_t, 2))(0x78686FEFL, (-3L)), (VECTOR(int32_t, 2))(0x78686FEFL, (-3L)), 0x78686FEFL, (-3L), 0x78686FEFL, (-3L)), // p_1584->g_263
        (VECTOR(int32_t, 2))(4L, 0x199B1512L), // p_1584->g_302
        (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, (-2L)), (-2L)), // p_1584->g_303
        (void*)0, // p_1584->g_309
        0x47E0BE1705295536L, // p_1584->g_319
        0x08L, // p_1584->g_353
        (void*)0, // p_1584->g_403
        (void*)0, // p_1584->g_405
        &p_1584->g_405, // p_1584->g_404
        {0x7A79DDECCE4382FEL}, // p_1584->g_407
        &p_1584->g_407, // p_1584->g_406
        (VECTOR(int64_t, 4))(0x10A6F3A9C3C25CABL, (VECTOR(int64_t, 2))(0x10A6F3A9C3C25CABL, 0x607CB69E34FEFF9AL), 0x607CB69E34FEFF9AL), // p_1584->g_412
        {{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}}, // p_1584->g_415
        {0x034747BFA24088F7L}, // p_1584->g_416
        {18446744073709551608UL}, // p_1584->g_417
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xB032L), 0xB032L), // p_1584->g_420
        (VECTOR(uint64_t, 4))(0x56C8A499E8B9C85BL, (VECTOR(uint64_t, 2))(0x56C8A499E8B9C85BL, 0xEA16113010B4AC55L), 0xEA16113010B4AC55L), // p_1584->g_447
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x6440L), 0x6440L), // p_1584->g_477
        (VECTOR(int8_t, 4))(0x61L, (VECTOR(int8_t, 2))(0x61L, 1L), 1L), // p_1584->g_496
        &p_1584->g_405, // p_1584->g_504
        (VECTOR(int8_t, 16))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 0x61L), 0x61L), 0x61L, (-8L), 0x61L, (VECTOR(int8_t, 2))((-8L), 0x61L), (VECTOR(int8_t, 2))((-8L), 0x61L), (-8L), 0x61L, (-8L), 0x61L), // p_1584->g_531
        (VECTOR(uint64_t, 16))(18446744073709551607UL, (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 18446744073709551608UL), 18446744073709551608UL), 18446744073709551608UL, 18446744073709551607UL, 18446744073709551608UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 18446744073709551608UL), (VECTOR(uint64_t, 2))(18446744073709551607UL, 18446744073709551608UL), 18446744073709551607UL, 18446744073709551608UL, 18446744073709551607UL, 18446744073709551608UL), // p_1584->g_543
        (VECTOR(uint64_t, 2))(1UL, 0x8546BD911483B5B8L), // p_1584->g_544
        (VECTOR(uint64_t, 8))(0x89B54364A190C865L, (VECTOR(uint64_t, 4))(0x89B54364A190C865L, (VECTOR(uint64_t, 2))(0x89B54364A190C865L, 0x2C2A58ECDCBC6B9BL), 0x2C2A58ECDCBC6B9BL), 0x2C2A58ECDCBC6B9BL, 0x89B54364A190C865L, 0x2C2A58ECDCBC6B9BL), // p_1584->g_548
        1UL, // p_1584->g_586
        {&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406,&p_1584->g_406}, // p_1584->g_610
        (VECTOR(uint32_t, 2))(0UL, 0x76167B04L), // p_1584->g_619
        (VECTOR(int32_t, 4))(0x003EB376L, (VECTOR(int32_t, 2))(0x003EB376L, 0x2F2A983AL), 0x2F2A983AL), // p_1584->g_620
        (VECTOR(uint32_t, 8))(4294967290UL, (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0x0684FE8EL), 0x0684FE8EL), 0x0684FE8EL, 4294967290UL, 0x0684FE8EL), // p_1584->g_621
        (VECTOR(int32_t, 2))((-8L), 0L), // p_1584->g_622
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-8L)), (-8L)), (-8L), 1L, (-8L), (VECTOR(int32_t, 2))(1L, (-8L)), (VECTOR(int32_t, 2))(1L, (-8L)), 1L, (-8L), 1L, (-8L)), // p_1584->g_623
        (void*)0, // p_1584->g_637
        &p_1584->g_637, // p_1584->g_636
        &p_1584->g_636, // p_1584->g_635
        (VECTOR(int32_t, 16))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), (-4L)), (-4L)), (-4L), (-5L), (-4L), (VECTOR(int32_t, 2))((-5L), (-4L)), (VECTOR(int32_t, 2))((-5L), (-4L)), (-5L), (-4L), (-5L), (-4L)), // p_1584->g_650
        &p_1584->g_171, // p_1584->g_667
        {0UL}, // p_1584->g_681
        (VECTOR(int8_t, 2))(0x2FL, 0x5AL), // p_1584->g_752
        (VECTOR(int64_t, 8))((-5L), (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), 0x36C143F9A6DF249BL), 0x36C143F9A6DF249BL), 0x36C143F9A6DF249BL, (-5L), 0x36C143F9A6DF249BL), // p_1584->g_769
        (VECTOR(uint64_t, 4))(0xB4F07357D53F3F45L, (VECTOR(uint64_t, 2))(0xB4F07357D53F3F45L, 0x291E2566DAB48942L), 0x291E2566DAB48942L), // p_1584->g_776
        (VECTOR(uint64_t, 2))(0UL, 18446744073709551606UL), // p_1584->g_795
        (VECTOR(uint64_t, 8))(0xC2CA8381B89D6509L, (VECTOR(uint64_t, 4))(0xC2CA8381B89D6509L, (VECTOR(uint64_t, 2))(0xC2CA8381B89D6509L, 0x8C3ACB956B0144AAL), 0x8C3ACB956B0144AAL), 0x8C3ACB956B0144AAL, 0xC2CA8381B89D6509L, 0x8C3ACB956B0144AAL), // p_1584->g_816
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 8L), 8L), 8L, (-1L), 8L), // p_1584->g_840
        (VECTOR(uint16_t, 2))(65535UL, 0x5704L), // p_1584->g_855
        (VECTOR(uint16_t, 16))(0xD83EL, (VECTOR(uint16_t, 4))(0xD83EL, (VECTOR(uint16_t, 2))(0xD83EL, 0x042CL), 0x042CL), 0x042CL, 0xD83EL, 0x042CL, (VECTOR(uint16_t, 2))(0xD83EL, 0x042CL), (VECTOR(uint16_t, 2))(0xD83EL, 0x042CL), 0xD83EL, 0x042CL, 0xD83EL, 0x042CL), // p_1584->g_856
        (VECTOR(int8_t, 8))(0x07L, (VECTOR(int8_t, 4))(0x07L, (VECTOR(int8_t, 2))(0x07L, 0x47L), 0x47L), 0x47L, 0x07L, 0x47L), // p_1584->g_873
        {&p_1584->g_59,&p_1584->g_59,&p_1584->g_59,&p_1584->g_59,&p_1584->g_59,&p_1584->g_59,&p_1584->g_59,&p_1584->g_59}, // p_1584->g_880
        (VECTOR(int64_t, 4))((-6L), (VECTOR(int64_t, 2))((-6L), 0L), 0L), // p_1584->g_881
        (VECTOR(uint16_t, 2))(0UL, 0x41D6L), // p_1584->g_916
        (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 1UL), 1UL), // p_1584->g_917
        {0x1F2A78AE7FE9C824L}, // p_1584->g_989
        {18446744073709551615UL}, // p_1584->g_990
        (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0L), 0L), // p_1584->g_994
        (VECTOR(int64_t, 4))(0x6775BD40EA29C68DL, (VECTOR(int64_t, 2))(0x6775BD40EA29C68DL, 0x04D016814E5C3918L), 0x04D016814E5C3918L), // p_1584->g_996
        (VECTOR(uint64_t, 2))(18446744073709551609UL, 18446744073709551613UL), // p_1584->g_997
        {0x6F29CBB386300CAEL}, // p_1584->g_1010
        (VECTOR(uint16_t, 8))(0x7563L, (VECTOR(uint16_t, 4))(0x7563L, (VECTOR(uint16_t, 2))(0x7563L, 0x8AE5L), 0x8AE5L), 0x8AE5L, 0x7563L, 0x8AE5L), // p_1584->g_1045
        (VECTOR(int32_t, 8))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x4CED6FE7L), 0x4CED6FE7L), 0x4CED6FE7L, (-2L), 0x4CED6FE7L), // p_1584->g_1090
        0UL, // p_1584->g_1111
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L), // p_1584->g_1158
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x28L), 0x28L), 0x28L, 1L, 0x28L, (VECTOR(int8_t, 2))(1L, 0x28L), (VECTOR(int8_t, 2))(1L, 0x28L), 1L, 0x28L, 1L, 0x28L), // p_1584->g_1167
        (VECTOR(int64_t, 2))(0x411B6FD5D5F2D45FL, (-3L)), // p_1584->g_1195
        (VECTOR(uint8_t, 8))(0xE1L, (VECTOR(uint8_t, 4))(0xE1L, (VECTOR(uint8_t, 2))(0xE1L, 0xEBL), 0xEBL), 0xEBL, 0xE1L, 0xEBL), // p_1584->g_1250
        (void*)0, // p_1584->g_1278
        &p_1584->g_1278, // p_1584->g_1277
        (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 1L), 1L), // p_1584->g_1280
        {4UL}, // p_1584->g_1300
        {0x456FL}, // p_1584->g_1333
        (VECTOR(int8_t, 16))(3L, (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, (-3L)), (-3L)), (-3L), 3L, (-3L), (VECTOR(int8_t, 2))(3L, (-3L)), (VECTOR(int8_t, 2))(3L, (-3L)), 3L, (-3L), 3L, (-3L)), // p_1584->g_1358
        6L, // p_1584->g_1415
        (VECTOR(uint16_t, 8))(0xCA46L, (VECTOR(uint16_t, 4))(0xCA46L, (VECTOR(uint16_t, 2))(0xCA46L, 7UL), 7UL), 7UL, 0xCA46L, 7UL), // p_1584->g_1421
        (-1L), // p_1584->g_1465
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1584->g_1489
        (void*)0, // p_1584->g_1490
        (VECTOR(int8_t, 4))(0x30L, (VECTOR(int8_t, 2))(0x30L, 0x34L), 0x34L), // p_1584->g_1516
        (VECTOR(int8_t, 2))(0x3FL, 0x2FL), // p_1584->g_1517
        (void*)0, // p_1584->g_1543
        (VECTOR(uint8_t, 2))(0xC6L, 0xA3L), // p_1584->g_1564
        sequence_input[get_global_id(0)], // p_1584->global_0_offset
        sequence_input[get_global_id(1)], // p_1584->global_1_offset
        sequence_input[get_global_id(2)], // p_1584->global_2_offset
        sequence_input[get_local_id(0)], // p_1584->local_0_offset
        sequence_input[get_local_id(1)], // p_1584->local_1_offset
        sequence_input[get_local_id(2)], // p_1584->local_2_offset
        sequence_input[get_group_id(0)], // p_1584->group_0_offset
        sequence_input[get_group_id(1)], // p_1584->group_1_offset
        sequence_input[get_group_id(2)], // p_1584->group_2_offset
    };
    c_1585 = c_1586;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1584);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1584->g_4, "p_1584->g_4", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1584->g_7[i][j][k], "p_1584->g_7[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1584->g_15.x, "p_1584->g_15.x", print_hash_value);
    transparent_crc(p_1584->g_15.y, "p_1584->g_15.y", print_hash_value);
    transparent_crc(p_1584->g_15.z, "p_1584->g_15.z", print_hash_value);
    transparent_crc(p_1584->g_15.w, "p_1584->g_15.w", print_hash_value);
    transparent_crc(p_1584->g_16.s0, "p_1584->g_16.s0", print_hash_value);
    transparent_crc(p_1584->g_16.s1, "p_1584->g_16.s1", print_hash_value);
    transparent_crc(p_1584->g_16.s2, "p_1584->g_16.s2", print_hash_value);
    transparent_crc(p_1584->g_16.s3, "p_1584->g_16.s3", print_hash_value);
    transparent_crc(p_1584->g_16.s4, "p_1584->g_16.s4", print_hash_value);
    transparent_crc(p_1584->g_16.s5, "p_1584->g_16.s5", print_hash_value);
    transparent_crc(p_1584->g_16.s6, "p_1584->g_16.s6", print_hash_value);
    transparent_crc(p_1584->g_16.s7, "p_1584->g_16.s7", print_hash_value);
    transparent_crc(p_1584->g_23.x, "p_1584->g_23.x", print_hash_value);
    transparent_crc(p_1584->g_23.y, "p_1584->g_23.y", print_hash_value);
    transparent_crc(p_1584->g_59.f0, "p_1584->g_59.f0", print_hash_value);
    transparent_crc(p_1584->g_67, "p_1584->g_67", print_hash_value);
    transparent_crc(p_1584->g_85, "p_1584->g_85", print_hash_value);
    transparent_crc(p_1584->g_86, "p_1584->g_86", print_hash_value);
    transparent_crc(p_1584->g_88.s0, "p_1584->g_88.s0", print_hash_value);
    transparent_crc(p_1584->g_88.s1, "p_1584->g_88.s1", print_hash_value);
    transparent_crc(p_1584->g_88.s2, "p_1584->g_88.s2", print_hash_value);
    transparent_crc(p_1584->g_88.s3, "p_1584->g_88.s3", print_hash_value);
    transparent_crc(p_1584->g_88.s4, "p_1584->g_88.s4", print_hash_value);
    transparent_crc(p_1584->g_88.s5, "p_1584->g_88.s5", print_hash_value);
    transparent_crc(p_1584->g_88.s6, "p_1584->g_88.s6", print_hash_value);
    transparent_crc(p_1584->g_88.s7, "p_1584->g_88.s7", print_hash_value);
    transparent_crc(p_1584->g_88.s8, "p_1584->g_88.s8", print_hash_value);
    transparent_crc(p_1584->g_88.s9, "p_1584->g_88.s9", print_hash_value);
    transparent_crc(p_1584->g_88.sa, "p_1584->g_88.sa", print_hash_value);
    transparent_crc(p_1584->g_88.sb, "p_1584->g_88.sb", print_hash_value);
    transparent_crc(p_1584->g_88.sc, "p_1584->g_88.sc", print_hash_value);
    transparent_crc(p_1584->g_88.sd, "p_1584->g_88.sd", print_hash_value);
    transparent_crc(p_1584->g_88.se, "p_1584->g_88.se", print_hash_value);
    transparent_crc(p_1584->g_88.sf, "p_1584->g_88.sf", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1584->g_99[i][j][k], "p_1584->g_99[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1584->g_100.s0, "p_1584->g_100.s0", print_hash_value);
    transparent_crc(p_1584->g_100.s1, "p_1584->g_100.s1", print_hash_value);
    transparent_crc(p_1584->g_100.s2, "p_1584->g_100.s2", print_hash_value);
    transparent_crc(p_1584->g_100.s3, "p_1584->g_100.s3", print_hash_value);
    transparent_crc(p_1584->g_100.s4, "p_1584->g_100.s4", print_hash_value);
    transparent_crc(p_1584->g_100.s5, "p_1584->g_100.s5", print_hash_value);
    transparent_crc(p_1584->g_100.s6, "p_1584->g_100.s6", print_hash_value);
    transparent_crc(p_1584->g_100.s7, "p_1584->g_100.s7", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1584->g_102[i], "p_1584->g_102[i]", print_hash_value);

    }
    transparent_crc(p_1584->g_111, "p_1584->g_111", print_hash_value);
    transparent_crc(p_1584->g_113.s0, "p_1584->g_113.s0", print_hash_value);
    transparent_crc(p_1584->g_113.s1, "p_1584->g_113.s1", print_hash_value);
    transparent_crc(p_1584->g_113.s2, "p_1584->g_113.s2", print_hash_value);
    transparent_crc(p_1584->g_113.s3, "p_1584->g_113.s3", print_hash_value);
    transparent_crc(p_1584->g_113.s4, "p_1584->g_113.s4", print_hash_value);
    transparent_crc(p_1584->g_113.s5, "p_1584->g_113.s5", print_hash_value);
    transparent_crc(p_1584->g_113.s6, "p_1584->g_113.s6", print_hash_value);
    transparent_crc(p_1584->g_113.s7, "p_1584->g_113.s7", print_hash_value);
    transparent_crc(p_1584->g_116, "p_1584->g_116", print_hash_value);
    transparent_crc(p_1584->g_117, "p_1584->g_117", print_hash_value);
    transparent_crc(p_1584->g_118.x, "p_1584->g_118.x", print_hash_value);
    transparent_crc(p_1584->g_118.y, "p_1584->g_118.y", print_hash_value);
    transparent_crc(p_1584->g_118.z, "p_1584->g_118.z", print_hash_value);
    transparent_crc(p_1584->g_118.w, "p_1584->g_118.w", print_hash_value);
    transparent_crc(p_1584->g_124.s0, "p_1584->g_124.s0", print_hash_value);
    transparent_crc(p_1584->g_124.s1, "p_1584->g_124.s1", print_hash_value);
    transparent_crc(p_1584->g_124.s2, "p_1584->g_124.s2", print_hash_value);
    transparent_crc(p_1584->g_124.s3, "p_1584->g_124.s3", print_hash_value);
    transparent_crc(p_1584->g_124.s4, "p_1584->g_124.s4", print_hash_value);
    transparent_crc(p_1584->g_124.s5, "p_1584->g_124.s5", print_hash_value);
    transparent_crc(p_1584->g_124.s6, "p_1584->g_124.s6", print_hash_value);
    transparent_crc(p_1584->g_124.s7, "p_1584->g_124.s7", print_hash_value);
    transparent_crc(p_1584->g_124.s8, "p_1584->g_124.s8", print_hash_value);
    transparent_crc(p_1584->g_124.s9, "p_1584->g_124.s9", print_hash_value);
    transparent_crc(p_1584->g_124.sa, "p_1584->g_124.sa", print_hash_value);
    transparent_crc(p_1584->g_124.sb, "p_1584->g_124.sb", print_hash_value);
    transparent_crc(p_1584->g_124.sc, "p_1584->g_124.sc", print_hash_value);
    transparent_crc(p_1584->g_124.sd, "p_1584->g_124.sd", print_hash_value);
    transparent_crc(p_1584->g_124.se, "p_1584->g_124.se", print_hash_value);
    transparent_crc(p_1584->g_124.sf, "p_1584->g_124.sf", print_hash_value);
    transparent_crc(p_1584->g_128.s0, "p_1584->g_128.s0", print_hash_value);
    transparent_crc(p_1584->g_128.s1, "p_1584->g_128.s1", print_hash_value);
    transparent_crc(p_1584->g_128.s2, "p_1584->g_128.s2", print_hash_value);
    transparent_crc(p_1584->g_128.s3, "p_1584->g_128.s3", print_hash_value);
    transparent_crc(p_1584->g_128.s4, "p_1584->g_128.s4", print_hash_value);
    transparent_crc(p_1584->g_128.s5, "p_1584->g_128.s5", print_hash_value);
    transparent_crc(p_1584->g_128.s6, "p_1584->g_128.s6", print_hash_value);
    transparent_crc(p_1584->g_128.s7, "p_1584->g_128.s7", print_hash_value);
    transparent_crc(p_1584->g_128.s8, "p_1584->g_128.s8", print_hash_value);
    transparent_crc(p_1584->g_128.s9, "p_1584->g_128.s9", print_hash_value);
    transparent_crc(p_1584->g_128.sa, "p_1584->g_128.sa", print_hash_value);
    transparent_crc(p_1584->g_128.sb, "p_1584->g_128.sb", print_hash_value);
    transparent_crc(p_1584->g_128.sc, "p_1584->g_128.sc", print_hash_value);
    transparent_crc(p_1584->g_128.sd, "p_1584->g_128.sd", print_hash_value);
    transparent_crc(p_1584->g_128.se, "p_1584->g_128.se", print_hash_value);
    transparent_crc(p_1584->g_128.sf, "p_1584->g_128.sf", print_hash_value);
    transparent_crc(p_1584->g_163.f0, "p_1584->g_163.f0", print_hash_value);
    transparent_crc(p_1584->g_171, "p_1584->g_171", print_hash_value);
    transparent_crc(p_1584->g_188, "p_1584->g_188", print_hash_value);
    transparent_crc(p_1584->g_192.x, "p_1584->g_192.x", print_hash_value);
    transparent_crc(p_1584->g_192.y, "p_1584->g_192.y", print_hash_value);
    transparent_crc(p_1584->g_192.z, "p_1584->g_192.z", print_hash_value);
    transparent_crc(p_1584->g_192.w, "p_1584->g_192.w", print_hash_value);
    transparent_crc(p_1584->g_201.x, "p_1584->g_201.x", print_hash_value);
    transparent_crc(p_1584->g_201.y, "p_1584->g_201.y", print_hash_value);
    transparent_crc(p_1584->g_201.z, "p_1584->g_201.z", print_hash_value);
    transparent_crc(p_1584->g_201.w, "p_1584->g_201.w", print_hash_value);
    transparent_crc(p_1584->g_216.f0, "p_1584->g_216.f0", print_hash_value);
    transparent_crc(p_1584->g_234, "p_1584->g_234", print_hash_value);
    transparent_crc(p_1584->g_244.s0, "p_1584->g_244.s0", print_hash_value);
    transparent_crc(p_1584->g_244.s1, "p_1584->g_244.s1", print_hash_value);
    transparent_crc(p_1584->g_244.s2, "p_1584->g_244.s2", print_hash_value);
    transparent_crc(p_1584->g_244.s3, "p_1584->g_244.s3", print_hash_value);
    transparent_crc(p_1584->g_244.s4, "p_1584->g_244.s4", print_hash_value);
    transparent_crc(p_1584->g_244.s5, "p_1584->g_244.s5", print_hash_value);
    transparent_crc(p_1584->g_244.s6, "p_1584->g_244.s6", print_hash_value);
    transparent_crc(p_1584->g_244.s7, "p_1584->g_244.s7", print_hash_value);
    transparent_crc(p_1584->g_249.x, "p_1584->g_249.x", print_hash_value);
    transparent_crc(p_1584->g_249.y, "p_1584->g_249.y", print_hash_value);
    transparent_crc(p_1584->g_249.z, "p_1584->g_249.z", print_hash_value);
    transparent_crc(p_1584->g_249.w, "p_1584->g_249.w", print_hash_value);
    transparent_crc(p_1584->g_252.x, "p_1584->g_252.x", print_hash_value);
    transparent_crc(p_1584->g_252.y, "p_1584->g_252.y", print_hash_value);
    transparent_crc(p_1584->g_252.z, "p_1584->g_252.z", print_hash_value);
    transparent_crc(p_1584->g_252.w, "p_1584->g_252.w", print_hash_value);
    transparent_crc(p_1584->g_263.s0, "p_1584->g_263.s0", print_hash_value);
    transparent_crc(p_1584->g_263.s1, "p_1584->g_263.s1", print_hash_value);
    transparent_crc(p_1584->g_263.s2, "p_1584->g_263.s2", print_hash_value);
    transparent_crc(p_1584->g_263.s3, "p_1584->g_263.s3", print_hash_value);
    transparent_crc(p_1584->g_263.s4, "p_1584->g_263.s4", print_hash_value);
    transparent_crc(p_1584->g_263.s5, "p_1584->g_263.s5", print_hash_value);
    transparent_crc(p_1584->g_263.s6, "p_1584->g_263.s6", print_hash_value);
    transparent_crc(p_1584->g_263.s7, "p_1584->g_263.s7", print_hash_value);
    transparent_crc(p_1584->g_263.s8, "p_1584->g_263.s8", print_hash_value);
    transparent_crc(p_1584->g_263.s9, "p_1584->g_263.s9", print_hash_value);
    transparent_crc(p_1584->g_263.sa, "p_1584->g_263.sa", print_hash_value);
    transparent_crc(p_1584->g_263.sb, "p_1584->g_263.sb", print_hash_value);
    transparent_crc(p_1584->g_263.sc, "p_1584->g_263.sc", print_hash_value);
    transparent_crc(p_1584->g_263.sd, "p_1584->g_263.sd", print_hash_value);
    transparent_crc(p_1584->g_263.se, "p_1584->g_263.se", print_hash_value);
    transparent_crc(p_1584->g_263.sf, "p_1584->g_263.sf", print_hash_value);
    transparent_crc(p_1584->g_302.x, "p_1584->g_302.x", print_hash_value);
    transparent_crc(p_1584->g_302.y, "p_1584->g_302.y", print_hash_value);
    transparent_crc(p_1584->g_303.x, "p_1584->g_303.x", print_hash_value);
    transparent_crc(p_1584->g_303.y, "p_1584->g_303.y", print_hash_value);
    transparent_crc(p_1584->g_303.z, "p_1584->g_303.z", print_hash_value);
    transparent_crc(p_1584->g_303.w, "p_1584->g_303.w", print_hash_value);
    transparent_crc(p_1584->g_319, "p_1584->g_319", print_hash_value);
    transparent_crc(p_1584->g_353, "p_1584->g_353", print_hash_value);
    transparent_crc(p_1584->g_407.f0, "p_1584->g_407.f0", print_hash_value);
    transparent_crc(p_1584->g_412.x, "p_1584->g_412.x", print_hash_value);
    transparent_crc(p_1584->g_412.y, "p_1584->g_412.y", print_hash_value);
    transparent_crc(p_1584->g_412.z, "p_1584->g_412.z", print_hash_value);
    transparent_crc(p_1584->g_412.w, "p_1584->g_412.w", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1584->g_415[i][j].f0, "p_1584->g_415[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1584->g_416.f0, "p_1584->g_416.f0", print_hash_value);
    transparent_crc(p_1584->g_417.f0, "p_1584->g_417.f0", print_hash_value);
    transparent_crc(p_1584->g_420.x, "p_1584->g_420.x", print_hash_value);
    transparent_crc(p_1584->g_420.y, "p_1584->g_420.y", print_hash_value);
    transparent_crc(p_1584->g_420.z, "p_1584->g_420.z", print_hash_value);
    transparent_crc(p_1584->g_420.w, "p_1584->g_420.w", print_hash_value);
    transparent_crc(p_1584->g_447.x, "p_1584->g_447.x", print_hash_value);
    transparent_crc(p_1584->g_447.y, "p_1584->g_447.y", print_hash_value);
    transparent_crc(p_1584->g_447.z, "p_1584->g_447.z", print_hash_value);
    transparent_crc(p_1584->g_447.w, "p_1584->g_447.w", print_hash_value);
    transparent_crc(p_1584->g_477.x, "p_1584->g_477.x", print_hash_value);
    transparent_crc(p_1584->g_477.y, "p_1584->g_477.y", print_hash_value);
    transparent_crc(p_1584->g_477.z, "p_1584->g_477.z", print_hash_value);
    transparent_crc(p_1584->g_477.w, "p_1584->g_477.w", print_hash_value);
    transparent_crc(p_1584->g_496.x, "p_1584->g_496.x", print_hash_value);
    transparent_crc(p_1584->g_496.y, "p_1584->g_496.y", print_hash_value);
    transparent_crc(p_1584->g_496.z, "p_1584->g_496.z", print_hash_value);
    transparent_crc(p_1584->g_496.w, "p_1584->g_496.w", print_hash_value);
    transparent_crc(p_1584->g_531.s0, "p_1584->g_531.s0", print_hash_value);
    transparent_crc(p_1584->g_531.s1, "p_1584->g_531.s1", print_hash_value);
    transparent_crc(p_1584->g_531.s2, "p_1584->g_531.s2", print_hash_value);
    transparent_crc(p_1584->g_531.s3, "p_1584->g_531.s3", print_hash_value);
    transparent_crc(p_1584->g_531.s4, "p_1584->g_531.s4", print_hash_value);
    transparent_crc(p_1584->g_531.s5, "p_1584->g_531.s5", print_hash_value);
    transparent_crc(p_1584->g_531.s6, "p_1584->g_531.s6", print_hash_value);
    transparent_crc(p_1584->g_531.s7, "p_1584->g_531.s7", print_hash_value);
    transparent_crc(p_1584->g_531.s8, "p_1584->g_531.s8", print_hash_value);
    transparent_crc(p_1584->g_531.s9, "p_1584->g_531.s9", print_hash_value);
    transparent_crc(p_1584->g_531.sa, "p_1584->g_531.sa", print_hash_value);
    transparent_crc(p_1584->g_531.sb, "p_1584->g_531.sb", print_hash_value);
    transparent_crc(p_1584->g_531.sc, "p_1584->g_531.sc", print_hash_value);
    transparent_crc(p_1584->g_531.sd, "p_1584->g_531.sd", print_hash_value);
    transparent_crc(p_1584->g_531.se, "p_1584->g_531.se", print_hash_value);
    transparent_crc(p_1584->g_531.sf, "p_1584->g_531.sf", print_hash_value);
    transparent_crc(p_1584->g_543.s0, "p_1584->g_543.s0", print_hash_value);
    transparent_crc(p_1584->g_543.s1, "p_1584->g_543.s1", print_hash_value);
    transparent_crc(p_1584->g_543.s2, "p_1584->g_543.s2", print_hash_value);
    transparent_crc(p_1584->g_543.s3, "p_1584->g_543.s3", print_hash_value);
    transparent_crc(p_1584->g_543.s4, "p_1584->g_543.s4", print_hash_value);
    transparent_crc(p_1584->g_543.s5, "p_1584->g_543.s5", print_hash_value);
    transparent_crc(p_1584->g_543.s6, "p_1584->g_543.s6", print_hash_value);
    transparent_crc(p_1584->g_543.s7, "p_1584->g_543.s7", print_hash_value);
    transparent_crc(p_1584->g_543.s8, "p_1584->g_543.s8", print_hash_value);
    transparent_crc(p_1584->g_543.s9, "p_1584->g_543.s9", print_hash_value);
    transparent_crc(p_1584->g_543.sa, "p_1584->g_543.sa", print_hash_value);
    transparent_crc(p_1584->g_543.sb, "p_1584->g_543.sb", print_hash_value);
    transparent_crc(p_1584->g_543.sc, "p_1584->g_543.sc", print_hash_value);
    transparent_crc(p_1584->g_543.sd, "p_1584->g_543.sd", print_hash_value);
    transparent_crc(p_1584->g_543.se, "p_1584->g_543.se", print_hash_value);
    transparent_crc(p_1584->g_543.sf, "p_1584->g_543.sf", print_hash_value);
    transparent_crc(p_1584->g_544.x, "p_1584->g_544.x", print_hash_value);
    transparent_crc(p_1584->g_544.y, "p_1584->g_544.y", print_hash_value);
    transparent_crc(p_1584->g_548.s0, "p_1584->g_548.s0", print_hash_value);
    transparent_crc(p_1584->g_548.s1, "p_1584->g_548.s1", print_hash_value);
    transparent_crc(p_1584->g_548.s2, "p_1584->g_548.s2", print_hash_value);
    transparent_crc(p_1584->g_548.s3, "p_1584->g_548.s3", print_hash_value);
    transparent_crc(p_1584->g_548.s4, "p_1584->g_548.s4", print_hash_value);
    transparent_crc(p_1584->g_548.s5, "p_1584->g_548.s5", print_hash_value);
    transparent_crc(p_1584->g_548.s6, "p_1584->g_548.s6", print_hash_value);
    transparent_crc(p_1584->g_548.s7, "p_1584->g_548.s7", print_hash_value);
    transparent_crc(p_1584->g_586, "p_1584->g_586", print_hash_value);
    transparent_crc(p_1584->g_619.x, "p_1584->g_619.x", print_hash_value);
    transparent_crc(p_1584->g_619.y, "p_1584->g_619.y", print_hash_value);
    transparent_crc(p_1584->g_620.x, "p_1584->g_620.x", print_hash_value);
    transparent_crc(p_1584->g_620.y, "p_1584->g_620.y", print_hash_value);
    transparent_crc(p_1584->g_620.z, "p_1584->g_620.z", print_hash_value);
    transparent_crc(p_1584->g_620.w, "p_1584->g_620.w", print_hash_value);
    transparent_crc(p_1584->g_621.s0, "p_1584->g_621.s0", print_hash_value);
    transparent_crc(p_1584->g_621.s1, "p_1584->g_621.s1", print_hash_value);
    transparent_crc(p_1584->g_621.s2, "p_1584->g_621.s2", print_hash_value);
    transparent_crc(p_1584->g_621.s3, "p_1584->g_621.s3", print_hash_value);
    transparent_crc(p_1584->g_621.s4, "p_1584->g_621.s4", print_hash_value);
    transparent_crc(p_1584->g_621.s5, "p_1584->g_621.s5", print_hash_value);
    transparent_crc(p_1584->g_621.s6, "p_1584->g_621.s6", print_hash_value);
    transparent_crc(p_1584->g_621.s7, "p_1584->g_621.s7", print_hash_value);
    transparent_crc(p_1584->g_622.x, "p_1584->g_622.x", print_hash_value);
    transparent_crc(p_1584->g_622.y, "p_1584->g_622.y", print_hash_value);
    transparent_crc(p_1584->g_623.s0, "p_1584->g_623.s0", print_hash_value);
    transparent_crc(p_1584->g_623.s1, "p_1584->g_623.s1", print_hash_value);
    transparent_crc(p_1584->g_623.s2, "p_1584->g_623.s2", print_hash_value);
    transparent_crc(p_1584->g_623.s3, "p_1584->g_623.s3", print_hash_value);
    transparent_crc(p_1584->g_623.s4, "p_1584->g_623.s4", print_hash_value);
    transparent_crc(p_1584->g_623.s5, "p_1584->g_623.s5", print_hash_value);
    transparent_crc(p_1584->g_623.s6, "p_1584->g_623.s6", print_hash_value);
    transparent_crc(p_1584->g_623.s7, "p_1584->g_623.s7", print_hash_value);
    transparent_crc(p_1584->g_623.s8, "p_1584->g_623.s8", print_hash_value);
    transparent_crc(p_1584->g_623.s9, "p_1584->g_623.s9", print_hash_value);
    transparent_crc(p_1584->g_623.sa, "p_1584->g_623.sa", print_hash_value);
    transparent_crc(p_1584->g_623.sb, "p_1584->g_623.sb", print_hash_value);
    transparent_crc(p_1584->g_623.sc, "p_1584->g_623.sc", print_hash_value);
    transparent_crc(p_1584->g_623.sd, "p_1584->g_623.sd", print_hash_value);
    transparent_crc(p_1584->g_623.se, "p_1584->g_623.se", print_hash_value);
    transparent_crc(p_1584->g_623.sf, "p_1584->g_623.sf", print_hash_value);
    transparent_crc(p_1584->g_650.s0, "p_1584->g_650.s0", print_hash_value);
    transparent_crc(p_1584->g_650.s1, "p_1584->g_650.s1", print_hash_value);
    transparent_crc(p_1584->g_650.s2, "p_1584->g_650.s2", print_hash_value);
    transparent_crc(p_1584->g_650.s3, "p_1584->g_650.s3", print_hash_value);
    transparent_crc(p_1584->g_650.s4, "p_1584->g_650.s4", print_hash_value);
    transparent_crc(p_1584->g_650.s5, "p_1584->g_650.s5", print_hash_value);
    transparent_crc(p_1584->g_650.s6, "p_1584->g_650.s6", print_hash_value);
    transparent_crc(p_1584->g_650.s7, "p_1584->g_650.s7", print_hash_value);
    transparent_crc(p_1584->g_650.s8, "p_1584->g_650.s8", print_hash_value);
    transparent_crc(p_1584->g_650.s9, "p_1584->g_650.s9", print_hash_value);
    transparent_crc(p_1584->g_650.sa, "p_1584->g_650.sa", print_hash_value);
    transparent_crc(p_1584->g_650.sb, "p_1584->g_650.sb", print_hash_value);
    transparent_crc(p_1584->g_650.sc, "p_1584->g_650.sc", print_hash_value);
    transparent_crc(p_1584->g_650.sd, "p_1584->g_650.sd", print_hash_value);
    transparent_crc(p_1584->g_650.se, "p_1584->g_650.se", print_hash_value);
    transparent_crc(p_1584->g_650.sf, "p_1584->g_650.sf", print_hash_value);
    transparent_crc(p_1584->g_681.f0, "p_1584->g_681.f0", print_hash_value);
    transparent_crc(p_1584->g_752.x, "p_1584->g_752.x", print_hash_value);
    transparent_crc(p_1584->g_752.y, "p_1584->g_752.y", print_hash_value);
    transparent_crc(p_1584->g_769.s0, "p_1584->g_769.s0", print_hash_value);
    transparent_crc(p_1584->g_769.s1, "p_1584->g_769.s1", print_hash_value);
    transparent_crc(p_1584->g_769.s2, "p_1584->g_769.s2", print_hash_value);
    transparent_crc(p_1584->g_769.s3, "p_1584->g_769.s3", print_hash_value);
    transparent_crc(p_1584->g_769.s4, "p_1584->g_769.s4", print_hash_value);
    transparent_crc(p_1584->g_769.s5, "p_1584->g_769.s5", print_hash_value);
    transparent_crc(p_1584->g_769.s6, "p_1584->g_769.s6", print_hash_value);
    transparent_crc(p_1584->g_769.s7, "p_1584->g_769.s7", print_hash_value);
    transparent_crc(p_1584->g_776.x, "p_1584->g_776.x", print_hash_value);
    transparent_crc(p_1584->g_776.y, "p_1584->g_776.y", print_hash_value);
    transparent_crc(p_1584->g_776.z, "p_1584->g_776.z", print_hash_value);
    transparent_crc(p_1584->g_776.w, "p_1584->g_776.w", print_hash_value);
    transparent_crc(p_1584->g_795.x, "p_1584->g_795.x", print_hash_value);
    transparent_crc(p_1584->g_795.y, "p_1584->g_795.y", print_hash_value);
    transparent_crc(p_1584->g_816.s0, "p_1584->g_816.s0", print_hash_value);
    transparent_crc(p_1584->g_816.s1, "p_1584->g_816.s1", print_hash_value);
    transparent_crc(p_1584->g_816.s2, "p_1584->g_816.s2", print_hash_value);
    transparent_crc(p_1584->g_816.s3, "p_1584->g_816.s3", print_hash_value);
    transparent_crc(p_1584->g_816.s4, "p_1584->g_816.s4", print_hash_value);
    transparent_crc(p_1584->g_816.s5, "p_1584->g_816.s5", print_hash_value);
    transparent_crc(p_1584->g_816.s6, "p_1584->g_816.s6", print_hash_value);
    transparent_crc(p_1584->g_816.s7, "p_1584->g_816.s7", print_hash_value);
    transparent_crc(p_1584->g_840.s0, "p_1584->g_840.s0", print_hash_value);
    transparent_crc(p_1584->g_840.s1, "p_1584->g_840.s1", print_hash_value);
    transparent_crc(p_1584->g_840.s2, "p_1584->g_840.s2", print_hash_value);
    transparent_crc(p_1584->g_840.s3, "p_1584->g_840.s3", print_hash_value);
    transparent_crc(p_1584->g_840.s4, "p_1584->g_840.s4", print_hash_value);
    transparent_crc(p_1584->g_840.s5, "p_1584->g_840.s5", print_hash_value);
    transparent_crc(p_1584->g_840.s6, "p_1584->g_840.s6", print_hash_value);
    transparent_crc(p_1584->g_840.s7, "p_1584->g_840.s7", print_hash_value);
    transparent_crc(p_1584->g_855.x, "p_1584->g_855.x", print_hash_value);
    transparent_crc(p_1584->g_855.y, "p_1584->g_855.y", print_hash_value);
    transparent_crc(p_1584->g_856.s0, "p_1584->g_856.s0", print_hash_value);
    transparent_crc(p_1584->g_856.s1, "p_1584->g_856.s1", print_hash_value);
    transparent_crc(p_1584->g_856.s2, "p_1584->g_856.s2", print_hash_value);
    transparent_crc(p_1584->g_856.s3, "p_1584->g_856.s3", print_hash_value);
    transparent_crc(p_1584->g_856.s4, "p_1584->g_856.s4", print_hash_value);
    transparent_crc(p_1584->g_856.s5, "p_1584->g_856.s5", print_hash_value);
    transparent_crc(p_1584->g_856.s6, "p_1584->g_856.s6", print_hash_value);
    transparent_crc(p_1584->g_856.s7, "p_1584->g_856.s7", print_hash_value);
    transparent_crc(p_1584->g_856.s8, "p_1584->g_856.s8", print_hash_value);
    transparent_crc(p_1584->g_856.s9, "p_1584->g_856.s9", print_hash_value);
    transparent_crc(p_1584->g_856.sa, "p_1584->g_856.sa", print_hash_value);
    transparent_crc(p_1584->g_856.sb, "p_1584->g_856.sb", print_hash_value);
    transparent_crc(p_1584->g_856.sc, "p_1584->g_856.sc", print_hash_value);
    transparent_crc(p_1584->g_856.sd, "p_1584->g_856.sd", print_hash_value);
    transparent_crc(p_1584->g_856.se, "p_1584->g_856.se", print_hash_value);
    transparent_crc(p_1584->g_856.sf, "p_1584->g_856.sf", print_hash_value);
    transparent_crc(p_1584->g_873.s0, "p_1584->g_873.s0", print_hash_value);
    transparent_crc(p_1584->g_873.s1, "p_1584->g_873.s1", print_hash_value);
    transparent_crc(p_1584->g_873.s2, "p_1584->g_873.s2", print_hash_value);
    transparent_crc(p_1584->g_873.s3, "p_1584->g_873.s3", print_hash_value);
    transparent_crc(p_1584->g_873.s4, "p_1584->g_873.s4", print_hash_value);
    transparent_crc(p_1584->g_873.s5, "p_1584->g_873.s5", print_hash_value);
    transparent_crc(p_1584->g_873.s6, "p_1584->g_873.s6", print_hash_value);
    transparent_crc(p_1584->g_873.s7, "p_1584->g_873.s7", print_hash_value);
    transparent_crc(p_1584->g_881.x, "p_1584->g_881.x", print_hash_value);
    transparent_crc(p_1584->g_881.y, "p_1584->g_881.y", print_hash_value);
    transparent_crc(p_1584->g_881.z, "p_1584->g_881.z", print_hash_value);
    transparent_crc(p_1584->g_881.w, "p_1584->g_881.w", print_hash_value);
    transparent_crc(p_1584->g_916.x, "p_1584->g_916.x", print_hash_value);
    transparent_crc(p_1584->g_916.y, "p_1584->g_916.y", print_hash_value);
    transparent_crc(p_1584->g_917.x, "p_1584->g_917.x", print_hash_value);
    transparent_crc(p_1584->g_917.y, "p_1584->g_917.y", print_hash_value);
    transparent_crc(p_1584->g_917.z, "p_1584->g_917.z", print_hash_value);
    transparent_crc(p_1584->g_917.w, "p_1584->g_917.w", print_hash_value);
    transparent_crc(p_1584->g_989.f0, "p_1584->g_989.f0", print_hash_value);
    transparent_crc(p_1584->g_990.f0, "p_1584->g_990.f0", print_hash_value);
    transparent_crc(p_1584->g_994.x, "p_1584->g_994.x", print_hash_value);
    transparent_crc(p_1584->g_994.y, "p_1584->g_994.y", print_hash_value);
    transparent_crc(p_1584->g_994.z, "p_1584->g_994.z", print_hash_value);
    transparent_crc(p_1584->g_994.w, "p_1584->g_994.w", print_hash_value);
    transparent_crc(p_1584->g_996.x, "p_1584->g_996.x", print_hash_value);
    transparent_crc(p_1584->g_996.y, "p_1584->g_996.y", print_hash_value);
    transparent_crc(p_1584->g_996.z, "p_1584->g_996.z", print_hash_value);
    transparent_crc(p_1584->g_996.w, "p_1584->g_996.w", print_hash_value);
    transparent_crc(p_1584->g_997.x, "p_1584->g_997.x", print_hash_value);
    transparent_crc(p_1584->g_997.y, "p_1584->g_997.y", print_hash_value);
    transparent_crc(p_1584->g_1010.f0, "p_1584->g_1010.f0", print_hash_value);
    transparent_crc(p_1584->g_1045.s0, "p_1584->g_1045.s0", print_hash_value);
    transparent_crc(p_1584->g_1045.s1, "p_1584->g_1045.s1", print_hash_value);
    transparent_crc(p_1584->g_1045.s2, "p_1584->g_1045.s2", print_hash_value);
    transparent_crc(p_1584->g_1045.s3, "p_1584->g_1045.s3", print_hash_value);
    transparent_crc(p_1584->g_1045.s4, "p_1584->g_1045.s4", print_hash_value);
    transparent_crc(p_1584->g_1045.s5, "p_1584->g_1045.s5", print_hash_value);
    transparent_crc(p_1584->g_1045.s6, "p_1584->g_1045.s6", print_hash_value);
    transparent_crc(p_1584->g_1045.s7, "p_1584->g_1045.s7", print_hash_value);
    transparent_crc(p_1584->g_1090.s0, "p_1584->g_1090.s0", print_hash_value);
    transparent_crc(p_1584->g_1090.s1, "p_1584->g_1090.s1", print_hash_value);
    transparent_crc(p_1584->g_1090.s2, "p_1584->g_1090.s2", print_hash_value);
    transparent_crc(p_1584->g_1090.s3, "p_1584->g_1090.s3", print_hash_value);
    transparent_crc(p_1584->g_1090.s4, "p_1584->g_1090.s4", print_hash_value);
    transparent_crc(p_1584->g_1090.s5, "p_1584->g_1090.s5", print_hash_value);
    transparent_crc(p_1584->g_1090.s6, "p_1584->g_1090.s6", print_hash_value);
    transparent_crc(p_1584->g_1090.s7, "p_1584->g_1090.s7", print_hash_value);
    transparent_crc(p_1584->g_1111, "p_1584->g_1111", print_hash_value);
    transparent_crc(p_1584->g_1158.s0, "p_1584->g_1158.s0", print_hash_value);
    transparent_crc(p_1584->g_1158.s1, "p_1584->g_1158.s1", print_hash_value);
    transparent_crc(p_1584->g_1158.s2, "p_1584->g_1158.s2", print_hash_value);
    transparent_crc(p_1584->g_1158.s3, "p_1584->g_1158.s3", print_hash_value);
    transparent_crc(p_1584->g_1158.s4, "p_1584->g_1158.s4", print_hash_value);
    transparent_crc(p_1584->g_1158.s5, "p_1584->g_1158.s5", print_hash_value);
    transparent_crc(p_1584->g_1158.s6, "p_1584->g_1158.s6", print_hash_value);
    transparent_crc(p_1584->g_1158.s7, "p_1584->g_1158.s7", print_hash_value);
    transparent_crc(p_1584->g_1167.s0, "p_1584->g_1167.s0", print_hash_value);
    transparent_crc(p_1584->g_1167.s1, "p_1584->g_1167.s1", print_hash_value);
    transparent_crc(p_1584->g_1167.s2, "p_1584->g_1167.s2", print_hash_value);
    transparent_crc(p_1584->g_1167.s3, "p_1584->g_1167.s3", print_hash_value);
    transparent_crc(p_1584->g_1167.s4, "p_1584->g_1167.s4", print_hash_value);
    transparent_crc(p_1584->g_1167.s5, "p_1584->g_1167.s5", print_hash_value);
    transparent_crc(p_1584->g_1167.s6, "p_1584->g_1167.s6", print_hash_value);
    transparent_crc(p_1584->g_1167.s7, "p_1584->g_1167.s7", print_hash_value);
    transparent_crc(p_1584->g_1167.s8, "p_1584->g_1167.s8", print_hash_value);
    transparent_crc(p_1584->g_1167.s9, "p_1584->g_1167.s9", print_hash_value);
    transparent_crc(p_1584->g_1167.sa, "p_1584->g_1167.sa", print_hash_value);
    transparent_crc(p_1584->g_1167.sb, "p_1584->g_1167.sb", print_hash_value);
    transparent_crc(p_1584->g_1167.sc, "p_1584->g_1167.sc", print_hash_value);
    transparent_crc(p_1584->g_1167.sd, "p_1584->g_1167.sd", print_hash_value);
    transparent_crc(p_1584->g_1167.se, "p_1584->g_1167.se", print_hash_value);
    transparent_crc(p_1584->g_1167.sf, "p_1584->g_1167.sf", print_hash_value);
    transparent_crc(p_1584->g_1195.x, "p_1584->g_1195.x", print_hash_value);
    transparent_crc(p_1584->g_1195.y, "p_1584->g_1195.y", print_hash_value);
    transparent_crc(p_1584->g_1250.s0, "p_1584->g_1250.s0", print_hash_value);
    transparent_crc(p_1584->g_1250.s1, "p_1584->g_1250.s1", print_hash_value);
    transparent_crc(p_1584->g_1250.s2, "p_1584->g_1250.s2", print_hash_value);
    transparent_crc(p_1584->g_1250.s3, "p_1584->g_1250.s3", print_hash_value);
    transparent_crc(p_1584->g_1250.s4, "p_1584->g_1250.s4", print_hash_value);
    transparent_crc(p_1584->g_1250.s5, "p_1584->g_1250.s5", print_hash_value);
    transparent_crc(p_1584->g_1250.s6, "p_1584->g_1250.s6", print_hash_value);
    transparent_crc(p_1584->g_1250.s7, "p_1584->g_1250.s7", print_hash_value);
    transparent_crc(p_1584->g_1280.x, "p_1584->g_1280.x", print_hash_value);
    transparent_crc(p_1584->g_1280.y, "p_1584->g_1280.y", print_hash_value);
    transparent_crc(p_1584->g_1280.z, "p_1584->g_1280.z", print_hash_value);
    transparent_crc(p_1584->g_1280.w, "p_1584->g_1280.w", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1584->g_1300[i], "p_1584->g_1300[i]", print_hash_value);

    }
    transparent_crc(p_1584->g_1333.f0, "p_1584->g_1333.f0", print_hash_value);
    transparent_crc(p_1584->g_1358.s0, "p_1584->g_1358.s0", print_hash_value);
    transparent_crc(p_1584->g_1358.s1, "p_1584->g_1358.s1", print_hash_value);
    transparent_crc(p_1584->g_1358.s2, "p_1584->g_1358.s2", print_hash_value);
    transparent_crc(p_1584->g_1358.s3, "p_1584->g_1358.s3", print_hash_value);
    transparent_crc(p_1584->g_1358.s4, "p_1584->g_1358.s4", print_hash_value);
    transparent_crc(p_1584->g_1358.s5, "p_1584->g_1358.s5", print_hash_value);
    transparent_crc(p_1584->g_1358.s6, "p_1584->g_1358.s6", print_hash_value);
    transparent_crc(p_1584->g_1358.s7, "p_1584->g_1358.s7", print_hash_value);
    transparent_crc(p_1584->g_1358.s8, "p_1584->g_1358.s8", print_hash_value);
    transparent_crc(p_1584->g_1358.s9, "p_1584->g_1358.s9", print_hash_value);
    transparent_crc(p_1584->g_1358.sa, "p_1584->g_1358.sa", print_hash_value);
    transparent_crc(p_1584->g_1358.sb, "p_1584->g_1358.sb", print_hash_value);
    transparent_crc(p_1584->g_1358.sc, "p_1584->g_1358.sc", print_hash_value);
    transparent_crc(p_1584->g_1358.sd, "p_1584->g_1358.sd", print_hash_value);
    transparent_crc(p_1584->g_1358.se, "p_1584->g_1358.se", print_hash_value);
    transparent_crc(p_1584->g_1358.sf, "p_1584->g_1358.sf", print_hash_value);
    transparent_crc(p_1584->g_1415, "p_1584->g_1415", print_hash_value);
    transparent_crc(p_1584->g_1421.s0, "p_1584->g_1421.s0", print_hash_value);
    transparent_crc(p_1584->g_1421.s1, "p_1584->g_1421.s1", print_hash_value);
    transparent_crc(p_1584->g_1421.s2, "p_1584->g_1421.s2", print_hash_value);
    transparent_crc(p_1584->g_1421.s3, "p_1584->g_1421.s3", print_hash_value);
    transparent_crc(p_1584->g_1421.s4, "p_1584->g_1421.s4", print_hash_value);
    transparent_crc(p_1584->g_1421.s5, "p_1584->g_1421.s5", print_hash_value);
    transparent_crc(p_1584->g_1421.s6, "p_1584->g_1421.s6", print_hash_value);
    transparent_crc(p_1584->g_1421.s7, "p_1584->g_1421.s7", print_hash_value);
    transparent_crc(p_1584->g_1465, "p_1584->g_1465", print_hash_value);
    transparent_crc(p_1584->g_1516.x, "p_1584->g_1516.x", print_hash_value);
    transparent_crc(p_1584->g_1516.y, "p_1584->g_1516.y", print_hash_value);
    transparent_crc(p_1584->g_1516.z, "p_1584->g_1516.z", print_hash_value);
    transparent_crc(p_1584->g_1516.w, "p_1584->g_1516.w", print_hash_value);
    transparent_crc(p_1584->g_1517.x, "p_1584->g_1517.x", print_hash_value);
    transparent_crc(p_1584->g_1517.y, "p_1584->g_1517.y", print_hash_value);
    transparent_crc(p_1584->g_1564.x, "p_1584->g_1564.x", print_hash_value);
    transparent_crc(p_1584->g_1564.y, "p_1584->g_1564.y", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
