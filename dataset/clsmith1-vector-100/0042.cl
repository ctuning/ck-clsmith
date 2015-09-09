// ---fake_divergence -g 64,22,2 -l 2,22,2
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


// Seed: 42

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    int32_t g_11;
    int32_t g_16;
    uint8_t g_17[3];
    VECTOR(uint8_t, 2) g_75;
    volatile VECTOR(int64_t, 8) g_79;
    volatile VECTOR(int64_t, 8) g_80;
    int32_t *g_84;
    int32_t * volatile *g_83;
    int16_t g_92;
    int32_t g_93;
    uint64_t g_110;
    int32_t g_134;
    volatile VECTOR(uint8_t, 8) g_143;
    volatile VECTOR(int32_t, 4) g_149;
    volatile int64_t g_159;
    int32_t g_188;
    uint8_t g_190;
    volatile VECTOR(int32_t, 4) g_204;
    volatile VECTOR(int32_t, 2) g_205;
    VECTOR(int32_t, 8) g_207;
    volatile VECTOR(int32_t, 2) g_215;
    volatile uint16_t g_233;
    volatile uint16_t *g_232;
    uint32_t g_256;
    volatile VECTOR(int8_t, 4) g_267;
    int16_t g_309;
    VECTOR(int32_t, 16) g_330;
    int64_t g_331;
    uint32_t g_335;
    volatile uint8_t *g_350;
    volatile uint8_t * volatile * volatile g_349;
    volatile VECTOR(int32_t, 8) g_359;
    VECTOR(int32_t, 16) g_388;
    VECTOR(uint16_t, 2) g_401;
    VECTOR(int64_t, 16) g_405;
    int8_t g_436;
    uint32_t g_443;
    uint64_t g_444[8];
    volatile VECTOR(int16_t, 4) g_453;
    VECTOR(uint8_t, 4) g_461;
    int8_t *g_465[1][4];
    VECTOR(uint8_t, 16) g_468;
    uint64_t g_550[7];
    VECTOR(uint16_t, 8) g_551;
    VECTOR(int16_t, 16) g_557;
    VECTOR(int16_t, 4) g_560;
    VECTOR(int16_t, 8) g_561;
    VECTOR(uint32_t, 2) g_566;
    volatile VECTOR(int64_t, 4) g_569;
    int32_t * volatile g_590;
    int32_t * volatile g_591[6];
    int32_t * volatile g_602[8];
    int32_t * volatile g_603;
    uint8_t *g_619;
    volatile VECTOR(int8_t, 2) g_673;
    VECTOR(int8_t, 2) g_674;
    volatile VECTOR(int8_t, 2) g_675;
    volatile VECTOR(int8_t, 2) g_676;
    VECTOR(int8_t, 2) g_677;
    VECTOR(int64_t, 8) g_745;
    uint16_t *g_756;
    VECTOR(int64_t, 2) g_757;
    VECTOR(int16_t, 8) g_778;
    volatile VECTOR(int16_t, 8) g_779;
    VECTOR(int64_t, 16) g_826;
    volatile VECTOR(uint8_t, 16) g_855;
    int32_t *g_864;
    int32_t **g_863;
    int64_t g_896;
    VECTOR(uint64_t, 4) g_907;
    VECTOR(uint16_t, 16) g_936;
    volatile VECTOR(uint64_t, 4) g_944;
    VECTOR(int64_t, 4) g_946;
    volatile VECTOR(int64_t, 2) g_947;
    VECTOR(int64_t, 8) g_1007;
    VECTOR(int64_t, 16) g_1010;
    volatile VECTOR(int16_t, 2) g_1093;
    VECTOR(int64_t, 4) g_1129;
    VECTOR(int32_t, 16) g_1132;
    VECTOR(int64_t, 8) g_1138;
    uint32_t *g_1169[8];
    uint32_t * volatile * volatile g_1168[4];
    uint32_t * volatile * volatile *g_1167;
    volatile VECTOR(uint16_t, 16) g_1198;
    volatile uint32_t g_1259;
    VECTOR(int8_t, 8) g_1292;
    volatile VECTOR(int8_t, 2) g_1294;
    volatile VECTOR(int32_t, 8) g_1296;
    volatile VECTOR(int32_t, 16) g_1300;
    volatile VECTOR(int32_t, 4) g_1315;
    int64_t * volatile g_1317;
    int64_t * volatile * volatile g_1316;
    int64_t * volatile * volatile * volatile g_1318;
    int32_t * volatile g_1321[8][7][4];
    volatile VECTOR(int16_t, 2) g_1337;
    VECTOR(uint8_t, 8) g_1344;
    volatile VECTOR(int64_t, 8) g_1372;
    uint64_t *g_1393;
    int32_t g_1435;
    VECTOR(int64_t, 2) g_1484;
    volatile VECTOR(int16_t, 16) g_1497;
    uint32_t * volatile * volatile g_1502;
    uint32_t * volatile * volatile *g_1501;
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
uint8_t  func_1(struct S0 * p_1504);
int32_t * func_21(uint32_t  p_22, uint32_t  p_23, struct S0 * p_1504);
int32_t  func_26(uint64_t  p_27, uint64_t  p_28, int32_t  p_29, int8_t  p_30, struct S0 * p_1504);
int64_t  func_32(int32_t * p_33, struct S0 * p_1504);
int32_t * func_34(int32_t  p_35, int64_t  p_36, struct S0 * p_1504);
int32_t  func_37(int32_t ** p_38, int32_t ** p_39, int32_t ** p_40, int64_t  p_41, int32_t ** p_42, struct S0 * p_1504);
int32_t ** func_45(int64_t  p_46, int32_t ** p_47, uint8_t  p_48, uint64_t  p_49, struct S0 * p_1504);
int32_t ** func_50(int32_t * p_51, int32_t ** p_52, uint64_t  p_53, struct S0 * p_1504);
int32_t ** func_55(uint32_t  p_56, int32_t ** p_57, int32_t  p_58, int32_t  p_59, struct S0 * p_1504);
uint32_t  func_60(int16_t  p_61, int32_t  p_62, int64_t  p_63, struct S0 * p_1504);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1504->g_2 p_1504->g_17 p_1504->g_863 p_1504->g_864 p_1504->g_1316 p_1504->g_1318 p_1504->g_11 p_1504->g_83 p_1504->g_330 p_1504->g_1317 p_1504->g_619 p_1504->g_134 p_1504->g_84 p_1504->g_1435 p_1504->g_1393 p_1504->g_896 p_1504->g_444 p_1504->g_1484 p_1504->g_1497 p_1504->g_1501
 * writes: p_1504->g_2 p_1504->g_17 p_1504->g_92 p_1504->g_256 p_1504->g_11 p_1504->g_1316 p_1504->g_864 p_1504->g_190 p_1504->g_84 p_1504->g_443 p_1504->g_896 p_1504->g_134 p_1504->g_335 p_1504->g_1435 p_1504->g_444 p_1504->g_436
 */
uint8_t  func_1(struct S0 * p_1504)
{ /* block id: 4 */
    uint64_t l_20 = 1UL;
    for (p_1504->g_2 = 0; (p_1504->g_2 == 12); p_1504->g_2 = safe_add_func_int16_t_s_s(p_1504->g_2, 4))
    { /* block id: 7 */
        int32_t *l_5 = &p_1504->g_2;
        int32_t **l_6 = (void*)0;
        int32_t **l_7 = &l_5;
        (*l_7) = l_5;
    }
    for (p_1504->g_2 = 6; (p_1504->g_2 <= 20); p_1504->g_2 = safe_add_func_uint16_t_u_u(p_1504->g_2, 8))
    { /* block id: 12 */
        int32_t *l_10 = &p_1504->g_11;
        int32_t *l_12 = (void*)0;
        int32_t *l_13 = (void*)0;
        int32_t *l_14 = &p_1504->g_11;
        int32_t *l_15[5][5][9] = {{{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2}},{{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2}},{{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2}},{{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2}},{{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2},{&p_1504->g_2,&p_1504->g_2,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_2,&p_1504->g_2}}};
        int i, j, k;
        ++p_1504->g_17[2];
        return l_20;
    }
    (*p_1504->g_83) = func_21(l_20, l_20, p_1504);
    return l_20;
}


/* ------------------------------------------ */
/* 
 * reads : p_1504->g_863 p_1504->g_864 p_1504->g_1316 p_1504->g_1318 p_1504->g_11 p_1504->g_83 p_1504->g_330 p_1504->g_1317 p_1504->g_619 p_1504->g_134 p_1504->g_84 p_1504->g_1435 p_1504->g_1393 p_1504->g_896 p_1504->g_444 p_1504->g_1484 p_1504->g_1497 p_1504->g_2 p_1504->g_1501
 * writes: p_1504->g_92 p_1504->g_256 p_1504->g_11 p_1504->g_1316 p_1504->g_864 p_1504->g_190 p_1504->g_84 p_1504->g_443 p_1504->g_896 p_1504->g_17 p_1504->g_134 p_1504->g_335 p_1504->g_1435 p_1504->g_444 p_1504->g_436
 */
int32_t * func_21(uint32_t  p_22, uint32_t  p_23, struct S0 * p_1504)
{ /* block id: 16 */
    int32_t *l_44 = &p_1504->g_11;
    int32_t **l_43 = &l_44;
    int64_t *l_1442 = (void*)0;
    int64_t **l_1441 = &l_1442;
    int64_t ***l_1440 = &l_1441;
    int8_t l_1448 = 0x55L;
    VECTOR(int64_t, 2) l_1451 = (VECTOR(int64_t, 2))(5L, 0x4938645FB93D4F55L);
    int32_t l_1453 = (-10L);
    int32_t l_1454 = 0x0B768BF1L;
    int32_t l_1455 = 0x57A064D2L;
    int32_t l_1456 = 0x0DFB573BL;
    int32_t l_1457 = (-3L);
    int32_t l_1458 = 0L;
    int32_t l_1459[8][8][4] = {{{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL}},{{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL}},{{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL}},{{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL}},{{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL}},{{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL}},{{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL}},{{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL},{0x3B3B983CL,(-1L),1L,0x3D63688FL}}};
    int16_t l_1460[5];
    uint32_t l_1463 = 0xB33B9198L;
    VECTOR(uint32_t, 4) l_1468 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xC2435F0BL), 0xC2435F0BL);
    VECTOR(int64_t, 8) l_1485 = (VECTOR(int64_t, 8))(0x3F3DBF587386C768L, (VECTOR(int64_t, 4))(0x3F3DBF587386C768L, (VECTOR(int64_t, 2))(0x3F3DBF587386C768L, 7L), 7L), 7L, 0x3F3DBF587386C768L, 7L);
    uint32_t *l_1500[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint32_t **l_1499 = &l_1500[2];
    uint32_t ***l_1498 = &l_1499;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_1460[i] = 0x449BL;
    for (p_23 = 20; (p_23 <= 57); p_23 = safe_add_func_uint8_t_u_u(p_23, 1))
    { /* block id: 19 */
        uint8_t l_31 = 0xFCL;
        int32_t *l_54 = (void*)0;
        VECTOR(uint32_t, 2) l_966 = (VECTOR(uint32_t, 2))(0UL, 0UL);
        int32_t *l_1434[1];
        uint32_t *l_1452[8][8][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
        VECTOR(int8_t, 8) l_1461 = (VECTOR(int8_t, 8))(0x28L, (VECTOR(int8_t, 4))(0x28L, (VECTOR(int8_t, 2))(0x28L, 0x79L), 0x79L), 0x79L, 0x28L, 0x79L);
        VECTOR(int32_t, 16) l_1462 = (VECTOR(int32_t, 16))(0x0D7FFFECL, (VECTOR(int32_t, 4))(0x0D7FFFECL, (VECTOR(int32_t, 2))(0x0D7FFFECL, 0x01AE5C06L), 0x01AE5C06L), 0x01AE5C06L, 0x0D7FFFECL, 0x01AE5C06L, (VECTOR(int32_t, 2))(0x0D7FFFECL, 0x01AE5C06L), (VECTOR(int32_t, 2))(0x0D7FFFECL, 0x01AE5C06L), 0x0D7FFFECL, 0x01AE5C06L, 0x0D7FFFECL, 0x01AE5C06L);
        VECTOR(uint32_t, 8) l_1469 = (VECTOR(uint32_t, 8))(4294967291UL, (VECTOR(uint32_t, 4))(4294967291UL, (VECTOR(uint32_t, 2))(4294967291UL, 0x7355526BL), 0x7355526BL), 0x7355526BL, 4294967291UL, 0x7355526BL);
        VECTOR(uint16_t, 4) l_1486 = (VECTOR(uint16_t, 4))(0x619DL, (VECTOR(uint16_t, 2))(0x619DL, 1UL), 1UL);
        int8_t *l_1489 = (void*)0;
        int8_t *l_1490 = &p_1504->g_436;
        uint32_t *l_1493 = &p_1504->g_256;
        uint32_t **l_1492[1][7] = {{&l_1493,&l_1493,&l_1493,&l_1493,&l_1493,&l_1493,&l_1493}};
        uint32_t ***l_1491 = &l_1492[0][0];
        uint32_t **l_1495 = &l_1493;
        uint32_t ***l_1494 = &l_1495;
        VECTOR(int16_t, 16) l_1496 = (VECTOR(int16_t, 16))(0x6BCCL, (VECTOR(int16_t, 4))(0x6BCCL, (VECTOR(int16_t, 2))(0x6BCCL, 0L), 0L), 0L, 0x6BCCL, 0L, (VECTOR(int16_t, 2))(0x6BCCL, 0L), (VECTOR(int16_t, 2))(0x6BCCL, 0L), 0x6BCCL, 0L, 0x6BCCL, 0L);
        uint64_t l_1503 = 0x3017D8D8ECEE8A78L;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1434[i] = &p_1504->g_1435;
        if (p_22)
            break;
        p_1504->g_1435 &= func_26(((((VECTOR(int64_t, 8))(0x4E717999919139F4L, 7L, l_31, 0L, func_32(func_34((p_22 , func_37(l_43, &l_44, func_45(p_1504->g_11, func_50(l_54, func_55(func_60(l_31, (*l_44), p_22, p_1504), p_1504->g_863, p_23, p_23, p_1504), p_1504->g_207.s4, p_1504), l_966.x, p_1504->g_936.s7, p_1504), p_1504->g_826.s1, &l_44, p_1504)), p_22, p_1504), p_1504), 0x4ACD0BE0C3784880L, 0x3058309C8B57FCC8L, 0x3F26AB9EE10EA514L)).s5 == 0x4D2CB1A2A2C75023L) , p_22), p_22, p_22, p_22, p_1504);
        (**p_1504->g_863) = (((p_22 & (safe_sub_func_uint64_t_u_u((safe_mod_func_int8_t_s_s((((void*)0 != l_1440) | (safe_sub_func_int32_t_s_s((((*p_1504->g_1393) = 18446744073709551607UL) > ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(0x0AD51735EFFED8B1L, 0x78C707862B30BFF2L)).xyyxyyxyyyxxyyyy)).sc), (safe_mul_func_uint16_t_u_u((~(65528UL && ((((safe_unary_minus_func_int64_t_s(((***p_1504->g_1318) ^= (l_1448 , (safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 4))(l_1451.xyyx)).x, (p_23 ^ (l_1463++)))))))) , (safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_1468.xzyywxyw)).s0013537555402464)).sc, (0x5D5E8A5CL ^ ((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(l_1469.s1522556515327476)).lo)).lo)).y | (p_22 == (**l_43))) < 0x63A7ECE5L))))) && (*l_44)) , 0x4392L))), 0x12F7L))))), 0x18L)), GROUP_DIVERGE(1, 1)))) ^ p_23) || (*p_1504->g_1393));
        (*l_44) = (safe_rshift_func_int16_t_s_s(0x0F7CL, ((safe_add_func_uint32_t_u_u((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1504->local_1_offset, get_local_id(1), 10), p_22)), p_23)) || ((safe_rshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_u((((VECTOR(int64_t, 8))((safe_mul_func_uint16_t_u_u((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 8))(p_1504->g_1484.xyxxyxxy)), ((VECTOR(int64_t, 8))(l_1485.s21252742)), ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))((((VECTOR(uint16_t, 2))(l_1486.wy)).hi & ((safe_div_func_int32_t_s_s((((*l_1490) = p_22) && ((((*p_1504->g_1316) == (void*)0) < (((*l_1491) = (void*)0) != ((*l_1494) = (void*)0))) && ((((((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 2))(l_1496.s22)).yxyyxyyxyyyxyxyx, ((VECTOR(int16_t, 16))(p_1504->g_1497.s9dda241a6758a299))))).sd8)).odd < (((**l_43) == p_22) & p_1504->g_2)) , l_1498) != p_1504->g_1501) && p_23))), (*l_44))) == p_22)), (*l_44), (-1L), 1L, ((VECTOR(int64_t, 4))(0x3B1C13075CDB6F2DL)), (*l_44), 0x3AAC5BBED8E021E8L, (**p_1504->g_1316), 0x2A2126A79F0609B6L, 0x619299F84F0F33E0L, 0x26F832716186176FL, 0x2BD081C78552079CL, 0x7470400CCD40A5BEL)))))).hi))).s2, (*p_1504->g_1393))), GROUP_DIVERGE(1, 1))), l_1503, 0x733E504D502E3E88L, ((VECTOR(int64_t, 2))(0x0DEFF3E61113D76DL)), (*p_1504->g_1317), 0x3B200B311994F4BCL, 0x5E86B0E8BF91E08BL)).s3 <= FAKE_DIVERGE(p_1504->local_1_offset, get_local_id(1), 10)), 14)), 6)) && 0x0EL))));
    }
    return (*p_1504->g_863);
}


/* ------------------------------------------ */
/* 
 * reads : p_1504->g_92 p_1504->g_256 p_1504->g_1292 p_1504->g_1294 p_1504->g_1296 p_1504->g_1300 p_1504->g_232 p_1504->g_233 p_1504->g_863 p_1504->g_864 p_1504->g_11 p_1504->g_1315 p_1504->g_1316 p_1504->g_1318 p_1504->g_190 p_1504->g_83 p_1504->g_443 p_1504->g_1337 p_1504->g_1344 p_1504->g_826 p_1504->g_560 p_1504->g_330 p_1504->g_1317 p_1504->g_619 p_1504->g_1372 p_1504->g_16 p_1504->g_896 p_1504->g_134 p_1504->g_335 p_1504->g_444 p_1504->g_84
 * writes: p_1504->g_92 p_1504->g_256 p_1504->g_11 p_1504->g_1316 p_1504->g_864 p_1504->g_190 p_1504->g_84 p_1504->g_443 p_1504->g_896 p_1504->g_17 p_1504->g_134 p_1504->g_335 p_1504->g_1393
 */
int32_t  func_26(uint64_t  p_27, uint64_t  p_28, int32_t  p_29, int8_t  p_30, struct S0 * p_1504)
{ /* block id: 498 */
    uint32_t l_1289 = 1UL;
    VECTOR(int8_t, 2) l_1291 = (VECTOR(int8_t, 2))(0x58L, 0L);
    int32_t l_1311 = 0x4A07B5B1L;
    int32_t l_1313 = 0L;
    VECTOR(int16_t, 2) l_1339 = (VECTOR(int16_t, 2))(0x64ADL, (-1L));
    VECTOR(int64_t, 16) l_1352 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x61E5BB922E0E91B9L), 0x61E5BB922E0E91B9L), 0x61E5BB922E0E91B9L, (-1L), 0x61E5BB922E0E91B9L, (VECTOR(int64_t, 2))((-1L), 0x61E5BB922E0E91B9L), (VECTOR(int64_t, 2))((-1L), 0x61E5BB922E0E91B9L), (-1L), 0x61E5BB922E0E91B9L, (-1L), 0x61E5BB922E0E91B9L);
    uint64_t *l_1380 = &p_1504->g_444[3];
    VECTOR(uint32_t, 2) l_1389 = (VECTOR(uint32_t, 2))(0xF637FD60L, 4294967295UL);
    int8_t **l_1430 = &p_1504->g_465[0][2];
    int i;
    for (p_1504->g_92 = (-26); (p_1504->g_92 > 4); p_1504->g_92 = safe_add_func_int16_t_s_s(p_1504->g_92, 1))
    { /* block id: 501 */
        int8_t **l_1269 = &p_1504->g_465[0][0];
        int16_t *l_1284[6][10][2] = {{{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92}},{{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92}},{{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92}},{{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92}},{{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92}},{{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92},{(void*)0,&p_1504->g_92}}};
        int16_t *l_1285 = (void*)0;
        VECTOR(int32_t, 16) l_1299 = (VECTOR(int32_t, 16))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x13B255DEL), 0x13B255DEL), 0x13B255DEL, (-2L), 0x13B255DEL, (VECTOR(int32_t, 2))((-2L), 0x13B255DEL), (VECTOR(int32_t, 2))((-2L), 0x13B255DEL), (-2L), 0x13B255DEL, (-2L), 0x13B255DEL);
        int32_t l_1314 = (-1L);
        uint32_t l_1328 = 4294967295UL;
        VECTOR(int64_t, 16) l_1353 = (VECTOR(int64_t, 16))(5L, (VECTOR(int64_t, 4))(5L, (VECTOR(int64_t, 2))(5L, (-1L)), (-1L)), (-1L), 5L, (-1L), (VECTOR(int64_t, 2))(5L, (-1L)), (VECTOR(int64_t, 2))(5L, (-1L)), 5L, (-1L), 5L, (-1L));
        int64_t *l_1414 = &p_1504->g_896;
        int64_t **l_1413 = &l_1414;
        int i, j, k;
        if ((l_1269 == (void*)0))
        { /* block id: 502 */
            uint64_t *l_1278[3][1];
            int32_t l_1280 = 0L;
            VECTOR(int8_t, 2) l_1290 = (VECTOR(int8_t, 2))((-1L), 2L);
            VECTOR(int8_t, 4) l_1295 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L);
            VECTOR(int32_t, 2) l_1298 = (VECTOR(int32_t, 2))(0L, 0x69D6413EL);
            int32_t *l_1319 = (void*)0;
            int32_t *l_1320 = (void*)0;
            int32_t *l_1326[9][10][2];
            int64_t l_1327 = 0x2AD64CEE4AB63A5EL;
            int i, j, k;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1278[i][j] = (void*)0;
            }
            for (i = 0; i < 9; i++)
            {
                for (j = 0; j < 10; j++)
                {
                    for (k = 0; k < 2; k++)
                        l_1326[i][j][k] = &p_1504->g_2;
                }
            }
            for (p_1504->g_256 = 16; (p_1504->g_256 >= 54); ++p_1504->g_256)
            { /* block id: 505 */
                VECTOR(int16_t, 16) l_1279 = (VECTOR(int16_t, 16))(0x6B88L, (VECTOR(int16_t, 4))(0x6B88L, (VECTOR(int16_t, 2))(0x6B88L, 0L), 0L), 0L, 0x6B88L, 0L, (VECTOR(int16_t, 2))(0x6B88L, 0L), (VECTOR(int16_t, 2))(0x6B88L, 0L), 0x6B88L, 0L, 0x6B88L, 0L);
                int16_t *l_1281 = (void*)0;
                int16_t **l_1282 = (void*)0;
                int16_t **l_1283 = &l_1281;
                int16_t **l_1286 = &l_1285;
                int8_t *l_1287 = (void*)0;
                int8_t *l_1288 = (void*)0;
                VECTOR(int8_t, 4) l_1293 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 1L), 1L);
                VECTOR(int32_t, 16) l_1297 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x1CF18578L), 0x1CF18578L), 0x1CF18578L, (-1L), 0x1CF18578L, (VECTOR(int32_t, 2))((-1L), 0x1CF18578L), (VECTOR(int32_t, 2))((-1L), 0x1CF18578L), (-1L), 0x1CF18578L, (-1L), 0x1CF18578L);
                uint32_t *l_1312[8][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                int i, j;
                l_1314 &= ((**p_1504->g_863) = ((l_1313 ^= (safe_sub_func_int64_t_s_s((safe_lshift_func_int8_t_s_u(((((l_1284[3][9][0] = ((safe_mod_func_uint64_t_u_u((l_1280 ^= (l_1278[2][0] == (((VECTOR(int16_t, 4))(l_1279.s8344)).y , l_1278[2][0]))), p_28)) , ((*l_1283) = l_1281))) == ((*l_1286) = l_1285)) & ((VECTOR(int8_t, 2))(0x6CL, 0x23L)).lo) , ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))((l_1289 &= (0x64L <= (~p_30))), ((VECTOR(int8_t, 8))(l_1290.xyxxxxyx)), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_1291.xy)).yxyy)).ywwywwzz)).s23, ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 16))(p_1504->g_1292.s6253357021351204)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))(l_1293.yzzw)).odd, ((VECTOR(int8_t, 16))(p_1504->g_1294.yxxyxyxxxyyyyxxy)).s42))), 0x09L, 1L)).yzwzwyxzzwzyxzyw))).s2d, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_1295.zwwy)).zxxyywwy)).s3631731334556477)).se4))))), ((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x65L, (-9L))).xyxxxyxy)).s4062141557743200, ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(0x344AE685L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 2))(p_1504->g_1296.s54)).yxxyxyyx, ((VECTOR(int32_t, 4))(l_1297.s4069)).ywxzwyww))).s64)), ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 4))(l_1298.yyyy)), ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 4))(l_1299.sb71c)).wyyyxzzxzxyyxxzy, ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(p_1504->g_1300.sc08c)).even, ((VECTOR(int32_t, 2))(0x43DB7B27L, 1L)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x525DD211L, (-5L))), 0x2B21FA69L, 0L)), (((safe_rshift_func_int16_t_s_u(((*p_1504->g_232) > ((safe_lshift_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((safe_add_func_int16_t_s_s((p_27 || l_1280), 65535UL)), l_1311)), l_1299.s1)), p_30)) & 0x02L)), 6)) || 0x27L) != p_27), 0x48C24A1EL, 0x033BC462L, (**p_1504->g_863), ((VECTOR(int32_t, 4))(0x256795A4L)), 0x35D0CBF2L, 0x5330F78FL, 0x4B9863F9L, 1L)).scf))).yyxyyxyyyyyyyxyx))), ((VECTOR(int32_t, 16))(1L))))).even)), ((VECTOR(int32_t, 8))((-8L)))))).lo))), 0x3F0BEEFDL)).s54, ((VECTOR(int32_t, 2))((-1L)))))).xxyx)).y | 3UL), 0L, l_1279.s8, ((VECTOR(int8_t, 8))((-1L))), 0L, 0x53L, 0x7DL, 0x05L, 0x15L)).s0ec0)))).xywywyyy, ((VECTOR(int8_t, 8))(0x14L))))), ((VECTOR(int8_t, 8))(0x6EL)), ((VECTOR(int8_t, 8))(0x53L))))).s21, ((VECTOR(int8_t, 2))((-2L)))))).xyxxyyxxxyxxxyxy, ((VECTOR(int8_t, 16))((-1L)))))).sa5)))))), (-2L), 0x0AL)).odd)), 0x63L, 0x42L, ((VECTOR(int8_t, 2))(0x14L)), 0x0FL)).even)), ((VECTOR(int8_t, 4))((-10L))), ((VECTOR(int8_t, 2))(0x41L)), 0x56L, (-2L))).s6), l_1295.w)), l_1299.s5))) < 0x3399CF19L));
                (*p_1504->g_1318) = ((((VECTOR(int32_t, 8))(p_1504->g_1315.zyzzzzzy)).s7 , l_1279.sc) , p_1504->g_1316);
            }
            p_29 = (l_1299.s7 = (((*p_1504->g_863) = (l_1319 = func_34(p_29, l_1280, p_1504))) != &p_29));
            for (l_1289 = 0; (l_1289 <= 17); ++l_1289)
            { /* block id: 522 */
                (*p_1504->g_864) ^= (safe_rshift_func_int16_t_s_s(p_30, 4));
            }
            l_1328--;
        }
        else
        { /* block id: 526 */
            return l_1328;
        }
        for (p_1504->g_190 = 3; (p_1504->g_190 < 30); p_1504->g_190++)
        { /* block id: 531 */
            VECTOR(int16_t, 4) l_1338 = (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), (-10L)), (-10L));
            VECTOR(int16_t, 16) l_1340 = (VECTOR(int16_t, 16))(0x4BE9L, (VECTOR(int16_t, 4))(0x4BE9L, (VECTOR(int16_t, 2))(0x4BE9L, 0x34C5L), 0x34C5L), 0x34C5L, 0x4BE9L, 0x34C5L, (VECTOR(int16_t, 2))(0x4BE9L, 0x34C5L), (VECTOR(int16_t, 2))(0x4BE9L, 0x34C5L), 0x4BE9L, 0x34C5L, 0x4BE9L, 0x34C5L);
            int32_t l_1343 = 2L;
            VECTOR(int64_t, 16) l_1351 = (VECTOR(int64_t, 16))(0x0E220D0B2226C30BL, (VECTOR(int64_t, 4))(0x0E220D0B2226C30BL, (VECTOR(int64_t, 2))(0x0E220D0B2226C30BL, 0x25A3C14A827EF100L), 0x25A3C14A827EF100L), 0x25A3C14A827EF100L, 0x0E220D0B2226C30BL, 0x25A3C14A827EF100L, (VECTOR(int64_t, 2))(0x0E220D0B2226C30BL, 0x25A3C14A827EF100L), (VECTOR(int64_t, 2))(0x0E220D0B2226C30BL, 0x25A3C14A827EF100L), 0x0E220D0B2226C30BL, 0x25A3C14A827EF100L, 0x0E220D0B2226C30BL, 0x25A3C14A827EF100L);
            int32_t l_1358 = 0x0DB66387L;
            int32_t l_1359 = 0x4FDA3630L;
            VECTOR(int16_t, 2) l_1367 = (VECTOR(int16_t, 2))(5L, 0L);
            VECTOR(uint32_t, 16) l_1375 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x725762A0L), 0x725762A0L), 0x725762A0L, 4294967295UL, 0x725762A0L, (VECTOR(uint32_t, 2))(4294967295UL, 0x725762A0L), (VECTOR(uint32_t, 2))(4294967295UL, 0x725762A0L), 4294967295UL, 0x725762A0L, 4294967295UL, 0x725762A0L);
            uint32_t l_1382 = 0UL;
            int8_t l_1383 = 1L;
            uint64_t *l_1394[1];
            uint16_t l_1418 = 0x46C5L;
            int16_t l_1419[5][2] = {{0x6DDCL,0x04A2L},{0x6DDCL,0x04A2L},{0x6DDCL,0x04A2L},{0x6DDCL,0x04A2L},{0x6DDCL,0x04A2L}};
            int8_t ***l_1428 = &l_1269;
            VECTOR(int16_t, 2) l_1429 = (VECTOR(int16_t, 2))((-1L), 0x51CFL);
            uint16_t *l_1431 = (void*)0;
            uint16_t *l_1432 = (void*)0;
            uint16_t *l_1433 = &l_1418;
            int i, j;
            for (i = 0; i < 1; i++)
                l_1394[i] = &p_1504->g_110;
            (*p_1504->g_864) = l_1299.sa;
            (*p_1504->g_83) = (*p_1504->g_863);
            for (p_1504->g_443 = 0; (p_1504->g_443 == 18); p_1504->g_443 = safe_add_func_int16_t_s_s(p_1504->g_443, 1))
            { /* block id: 536 */
                uint16_t *l_1341 = (void*)0;
                uint16_t *l_1342 = (void*)0;
                VECTOR(int32_t, 16) l_1360 = (VECTOR(int32_t, 16))(0x19CD578FL, (VECTOR(int32_t, 4))(0x19CD578FL, (VECTOR(int32_t, 2))(0x19CD578FL, 0x765B5BBDL), 0x765B5BBDL), 0x765B5BBDL, 0x19CD578FL, 0x765B5BBDL, (VECTOR(int32_t, 2))(0x19CD578FL, 0x765B5BBDL), (VECTOR(int32_t, 2))(0x19CD578FL, 0x765B5BBDL), 0x19CD578FL, 0x765B5BBDL, 0x19CD578FL, 0x765B5BBDL);
                int16_t **l_1381 = (void*)0;
                int32_t *l_1384 = &p_1504->g_134;
                int i;
                p_29 = ((((**p_1504->g_1316) = (safe_mul_func_uint16_t_u_u((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 16))(p_1504->g_1337.yxyyyxyxyxxyxxxy)).s3d, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_1338.zzzy)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(l_1339.xxxyxxxx)).s53)))), 1L, 0x44A9L)).s00))).xyxyxxxyyyyxxxxx, ((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 2))(l_1340.sd3)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))((-3L), 0x1A53L)).yyxyxxyy)).lo)).lo))).xxyyxyxyyxxyyyyy))))).s4 <= (l_1343 &= (&p_1504->g_92 != (void*)0))), (((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0xACL, 0x65L)), ((VECTOR(uint8_t, 4))(p_1504->g_1344.s6501)), 0xB2L, 1UL)).s6147535762212531)).sb != ((safe_add_func_int64_t_s_s((l_1340.sf > (safe_sub_func_uint64_t_u_u((&p_1504->g_1169[0] == ((6UL | (&p_1504->g_436 != &p_30)) , (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 16))((l_1359 = (safe_div_func_uint32_t_u_u(((p_1504->g_826.s2 > (((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 2))(l_1351.s31)), ((VECTOR(int64_t, 2))(0x27DAB8283F96F4A2L, 0x3FE659C45489FDC9L))))).xxxyyyyy)).s23, ((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 16))(rhadd(((VECTOR(int64_t, 16))(l_1352.s9dd2d5ef268da9b1)), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(l_1353.se46c)).even)).yyyyxyxyxxxyxyyy))).s720c, ((VECTOR(int64_t, 2))(1L, 0x08E587C87E24ABB4L)).yyxx))).odd))).hi , ((safe_div_func_int64_t_s_s((safe_lshift_func_uint8_t_u_u((((p_1504->g_560.w | p_29) <= p_1504->g_560.x) , p_28), FAKE_DIVERGE(p_1504->group_1_offset, get_group_id(1), 10))), FAKE_DIVERGE(p_1504->local_2_offset, get_local_id(2), 10))) , l_1358))) && l_1340.sf), p_30))), l_1360.s7, 0x40D72518L, ((VECTOR(uint32_t, 2))(0xBF8C0E8CL)), 4UL, p_27, ((VECTOR(uint32_t, 4))(1UL)), 0xFA63A120L, ((VECTOR(uint32_t, 4))(0xEB7C7882L)))).seae1, ((VECTOR(uint32_t, 4))(0xCEA66217L))))), ((VECTOR(uint32_t, 4))(4294967286UL)))).s5 , &p_1504->g_1169[3]))), p_1504->g_330.s6))), 0x6CA5F7C16397A9C9L)) > p_30))))) | 0L) || 0xBCL);
                (*l_1384) ^= (((safe_mul_func_uint16_t_u_u(p_27, l_1339.x)) , ((safe_rshift_func_uint16_t_u_s((safe_mul_func_uint8_t_u_u(((*p_1504->g_619) = 0xE2L), (-1L))), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(l_1367.xxyx)).odd)).yyxx)).w)) , (((**p_1504->g_863) |= (safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(GROUP_DIVERGE(1, 1), ((*p_1504->g_619) = l_1353.s9), 1UL, (((safe_lshift_func_uint8_t_u_s(0x02L, 3)) && ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(p_1504->g_1372.s04114030)).s77)), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(1L, 0x3540823C4DE85A28L)).yxxxyyxxyyyyyxyy)).s663f, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))((((((safe_add_func_int32_t_s_s(l_1353.s7, ((VECTOR(uint32_t, 4))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(rotate(((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),uint32_t,((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 16))(l_1375.s9ab6e94089c68123)).s47))), (uint32_t)((((safe_mul_func_int8_t_s_s(((-1L) != ((((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))((l_1380 == &p_1504->g_110), (*p_1504->g_232), 0xB4BEL, ((VECTOR(uint16_t, 2))(0x3187L)), (*p_1504->g_232), 65531UL, 65532UL)))).s7, p_29)) , (void*)0) == l_1381) > p_1504->g_16)), 255UL)) | l_1382) && p_28) == 0L), (uint32_t)4294967295UL))).yxyy, ((VECTOR(uint32_t, 4))(0x8FF63E3DL))))).xyzxyxwyxxxzwzwz, ((VECTOR(uint32_t, 16))(0xE06BA68EL))))).s70)).yyxxyxxy)), ((VECTOR(uint32_t, 8))(1UL)))), ((VECTOR(uint32_t, 16))(1UL))))).s5cbe, ((VECTOR(uint32_t, 4))(0x4AFB6B50L))))).z)) != p_28) , (***p_1504->g_1318)) > p_27) < 7UL), (-8L), 0x3B9722E5AB5D9771L, (*p_1504->g_1317), ((VECTOR(int64_t, 2))((-1L))), 0x5CB7494ABFD565C3L, 0x3781E5AAB97C75AFL, ((VECTOR(int64_t, 2))(1L)), 6L, (-1L), p_27, l_1328, 0x47AD2488F1A48FC6L, 1L)).sc1)).yxxy))), (-10L), ((VECTOR(int64_t, 2))(0x214C5879FA34512DL)), (-3L))).s23, ((VECTOR(int64_t, 2))(0x54556A53C84E37FAL))))))), 1L, (-1L))))).odd))).odd) & p_30), 0x2CL, 0xE1L, 1UL, 0x5DL)).s1, l_1383))) >= l_1339.x))) , 0x6230514CL);
                for (l_1289 = (-28); (l_1289 < 42); l_1289++)
                { /* block id: 547 */
                    VECTOR(uint32_t, 4) l_1390 = (VECTOR(uint32_t, 4))(0xE56CA928L, (VECTOR(uint32_t, 2))(0xE56CA928L, 0x335C7B67L), 0x335C7B67L);
                    VECTOR(int8_t, 16) l_1397 = (VECTOR(int8_t, 16))(0x78L, (VECTOR(int8_t, 4))(0x78L, (VECTOR(int8_t, 2))(0x78L, 0x11L), 0x11L), 0x11L, 0x78L, 0x11L, (VECTOR(int8_t, 2))(0x78L, 0x11L), (VECTOR(int8_t, 2))(0x78L, 0x11L), 0x78L, 0x11L, 0x78L, 0x11L);
                    VECTOR(int8_t, 4) l_1398 = (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0x45L), 0x45L);
                    int64_t **l_1417 = &l_1414;
                    int i;
                    for (p_1504->g_335 = (-11); (p_1504->g_335 <= 30); p_1504->g_335 = safe_add_func_uint8_t_u_u(p_1504->g_335, 1))
                    { /* block id: 550 */
                        (*p_1504->g_83) = l_1384;
                        (*p_1504->g_864) = p_30;
                        return l_1291.y;
                    }
                    (**p_1504->g_83) = (((((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),VECTOR(uint32_t, 8),((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_1389.xyyx)).wzzzzywxywyywyxy)).hi, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_1390.wyxzxxwx)), 0x67B109DFL, (safe_sub_func_int64_t_s_s(((p_1504->g_1393 = (l_1375.se , &p_1504->g_444[2])) == l_1394[0]), ((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 4))(l_1397.s88ea)).xzyzwzxzzxywyywz, ((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_1398.zx)).xyyy)).wzzxyywywxyyxyzw, (int8_t)(((*p_1504->g_232) != (safe_sub_func_int32_t_s_s((0L <= (((safe_sub_func_int32_t_s_s((safe_div_func_uint64_t_u_u(p_28, (safe_mod_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_s((4294967291UL > ((safe_mul_func_int16_t_s_s(((((l_1413 != ((safe_mul_func_int8_t_s_s(0x7FL, l_1390.x)) , l_1417)) || p_27) < (**p_1504->g_863)) , p_1504->g_444[3]), (-5L))) || p_29)), 2)), (*l_1384))))), 0UL)) != l_1418) >= 0xAC36E262L)), 0x01F8C3BFL))) <= p_30)))).s62e3, (int8_t)l_1375.se))))).yxzzzzzxwwxywzxx, ((VECTOR(int8_t, 16))(0x38L)), ((VECTOR(int8_t, 16))(0x28L))))).odd, ((VECTOR(int8_t, 8))(0L))))), ((VECTOR(int8_t, 8))(0L))))).s2707313230546054, ((VECTOR(int8_t, 16))(0x2DL))))).sf, p_28)) || p_30))), p_28, 4294967295UL, ((VECTOR(uint32_t, 2))(8UL)), 2UL, 0x241041E1L)).s98)).yyxx)).yzwxywyz)), ((VECTOR(uint32_t, 8))(0xC77E8033L))))).s1 & p_30) , p_28) , 0x63CD500EL);
                    if (l_1419[3][0])
                        break;
                }
            }
            (*p_1504->g_84) &= (safe_sub_func_int16_t_s_s(p_27, ((*l_1433) = (safe_div_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s((l_1299.s5 != (((*l_1428) = l_1269) != ((p_30 , (p_30 > ((VECTOR(int16_t, 2))(l_1429.yy)).odd)) , l_1430))), 10)) <= (1UL != (((VECTOR(uint32_t, 4))(0xFC1785E4L, 4294967295UL, 1UL, 0x86F1F335L)).x >= l_1359))), l_1314)))));
        }
    }
    return p_28;
}


/* ------------------------------------------ */
/* 
 * reads : p_1504->g_207 p_1504->g_855 p_1504->g_551 p_1504->g_388 p_1504->g_1093 p_1504->g_359 p_1504->g_11 p_1504->g_863 p_1504->g_864 p_1504->g_79 p_1504->g_1129 p_1504->g_1132 p_1504->g_1138 p_1504->g_1010 p_1504->g_443 p_1504->g_16 p_1504->g_80 p_1504->g_1167 p_1504->g_757 p_1504->g_619 p_1504->g_232 p_1504->g_233 p_1504->g_17 p_1504->g_190 p_1504->g_83 p_1504->g_335 p_1504->g_2 p_1504->g_461 p_1504->g_84 p_1504->g_1259 p_1504->g_907 p_1504->g_444
 * writes: p_1504->g_551 p_1504->g_566 p_1504->g_11 p_1504->g_134 p_1504->g_444 p_1504->g_16 p_1504->g_17 p_1504->g_190 p_1504->g_84 p_1504->g_560 p_1504->g_907
 */
int64_t  func_32(int32_t * p_33, struct S0 * p_1504)
{ /* block id: 418 */
    int32_t l_1066 = 0x70E6F28DL;
    uint16_t *l_1075 = (void*)0;
    uint16_t *l_1076 = (void*)0;
    uint16_t *l_1077 = (void*)0;
    uint16_t *l_1078[1];
    int32_t l_1079 = 0x32ECD615L;
    int32_t l_1080 = (-2L);
    VECTOR(uint16_t, 2) l_1094 = (VECTOR(uint16_t, 2))(0xF489L, 0xE72EL);
    int32_t l_1109 = (-1L);
    int32_t l_1110 = 9L;
    int32_t l_1111 = (-1L);
    int32_t l_1112 = 0x434CE070L;
    int32_t l_1113 = 0x7355F4B3L;
    int32_t l_1114 = 0x458CBA26L;
    int32_t l_1115 = 0x1EAB966FL;
    int32_t l_1116 = 0x092C5AA6L;
    int32_t l_1117 = 0x2397F788L;
    int32_t l_1118[2];
    uint64_t *l_1139[4];
    int8_t **l_1248 = &p_1504->g_465[0][0];
    uint8_t *l_1263 = (void*)0;
    int i;
    for (i = 0; i < 1; i++)
        l_1078[i] = (void*)0;
    for (i = 0; i < 2; i++)
        l_1118[i] = 0x3D25A7F7L;
    for (i = 0; i < 4; i++)
        l_1139[i] = &p_1504->g_110;
lbl_1252:
    if ((((safe_lshift_func_uint16_t_u_s((safe_mul_func_int8_t_s_s((l_1066 >= ((safe_lshift_func_int16_t_s_s(p_1504->g_207.s1, ((safe_rshift_func_uint8_t_u_u(((l_1080 = (l_1079 = ((0x0E456FCAL | (p_1504->g_566.x = (safe_rshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_s(0xEA50L, ((p_1504->g_551.s3 &= (l_1066 , (0x527A11EFL >= p_1504->g_855.s2))) >= ((0x4FE8D3B261657663L || l_1066) != l_1066)))), 0)))) && l_1066))) <= (-10L)), 5)) < GROUP_DIVERGE(2, 1)))) >= l_1066)), 0L)), l_1066)) & p_1504->g_388.s3) != 252UL))
    { /* block id: 423 */
        int64_t *l_1081[2][5][9] = {{{(void*)0,(void*)0,&p_1504->g_331,(void*)0,&p_1504->g_331,&p_1504->g_331,&p_1504->g_896,&p_1504->g_896,&p_1504->g_896},{(void*)0,(void*)0,&p_1504->g_331,(void*)0,&p_1504->g_331,&p_1504->g_331,&p_1504->g_896,&p_1504->g_896,&p_1504->g_896},{(void*)0,(void*)0,&p_1504->g_331,(void*)0,&p_1504->g_331,&p_1504->g_331,&p_1504->g_896,&p_1504->g_896,&p_1504->g_896},{(void*)0,(void*)0,&p_1504->g_331,(void*)0,&p_1504->g_331,&p_1504->g_331,&p_1504->g_896,&p_1504->g_896,&p_1504->g_896},{(void*)0,(void*)0,&p_1504->g_331,(void*)0,&p_1504->g_331,&p_1504->g_331,&p_1504->g_896,&p_1504->g_896,&p_1504->g_896}},{{(void*)0,(void*)0,&p_1504->g_331,(void*)0,&p_1504->g_331,&p_1504->g_331,&p_1504->g_896,&p_1504->g_896,&p_1504->g_896},{(void*)0,(void*)0,&p_1504->g_331,(void*)0,&p_1504->g_331,&p_1504->g_331,&p_1504->g_896,&p_1504->g_896,&p_1504->g_896},{(void*)0,(void*)0,&p_1504->g_331,(void*)0,&p_1504->g_331,&p_1504->g_331,&p_1504->g_896,&p_1504->g_896,&p_1504->g_896},{(void*)0,(void*)0,&p_1504->g_331,(void*)0,&p_1504->g_331,&p_1504->g_331,&p_1504->g_896,&p_1504->g_896,&p_1504->g_896},{(void*)0,(void*)0,&p_1504->g_331,(void*)0,&p_1504->g_331,&p_1504->g_331,&p_1504->g_896,&p_1504->g_896,&p_1504->g_896}}};
        int32_t l_1090 = 1L;
        uint32_t *l_1091[7] = {(void*)0,&p_1504->g_256,(void*)0,(void*)0,&p_1504->g_256,(void*)0,(void*)0};
        VECTOR(int16_t, 2) l_1092 = (VECTOR(int16_t, 2))(0x53A9L, 0x56E5L);
        uint8_t l_1095[7];
        int8_t **l_1098[4];
        int32_t *l_1099 = (void*)0;
        int32_t *l_1100 = &p_1504->g_11;
        int32_t *l_1101 = &p_1504->g_134;
        int32_t *l_1102 = &l_1090;
        int32_t *l_1103 = &p_1504->g_134;
        int32_t *l_1104 = (void*)0;
        int32_t *l_1105 = (void*)0;
        int32_t *l_1106 = &l_1080;
        int32_t *l_1107 = (void*)0;
        int32_t *l_1108[9][10][2] = {{{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134}},{{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134}},{{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134}},{{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134}},{{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134}},{{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134}},{{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134}},{{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134}},{{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134},{&p_1504->g_134,&p_1504->g_134}}};
        uint32_t l_1119 = 4294967293UL;
        uint32_t *l_1122 = (void*)0;
        uint32_t *l_1123 = (void*)0;
        uint32_t *l_1124 = (void*)0;
        uint32_t *l_1125 = (void*)0;
        uint32_t *l_1126[1][10][5];
        VECTOR(uint32_t, 16) l_1135 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x30BD0826L), 0x30BD0826L), 0x30BD0826L, 1UL, 0x30BD0826L, (VECTOR(uint32_t, 2))(1UL, 0x30BD0826L), (VECTOR(uint32_t, 2))(1UL, 0x30BD0826L), 1UL, 0x30BD0826L, 1UL, 0x30BD0826L);
        VECTOR(uint32_t, 4) l_1136 = (VECTOR(uint32_t, 4))(4294967294UL, (VECTOR(uint32_t, 2))(4294967294UL, 0xBB2E3AFAL), 0xBB2E3AFAL);
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_1095[i] = 0x75L;
        for (i = 0; i < 4; i++)
            l_1098[i] = &p_1504->g_465[0][0];
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 10; j++)
            {
                for (k = 0; k < 5; k++)
                    l_1126[i][j][k] = (void*)0;
            }
        }
        (**p_1504->g_863) = (l_1081[1][3][4] == ((((GROUP_DIVERGE(2, 1) , ((safe_sub_func_int8_t_s_s((l_1080 &= ((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1504->global_0_offset, get_global_id(0), 10), FAKE_DIVERGE(p_1504->local_2_offset, get_local_id(2), 10))) >= (!((safe_mul_func_int16_t_s_s(((((safe_mul_func_uint8_t_u_u(l_1090, (l_1091[5] == (void*)0))) , ((0x78A8L > (((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 4))(l_1092.yyxx)), ((VECTOR(int16_t, 8))(p_1504->g_1093.xxyxyxxy)).even))).x , (((l_1095[4] |= ((VECTOR(uint16_t, 4))(l_1094.xxyy)).y) , (((&p_1504->g_465[0][2] == l_1098[0]) & 0x06L) && ((l_1094.y || 0L) != FAKE_DIVERGE(p_1504->group_0_offset, get_group_id(0), 10)))) , 8UL))) != GROUP_DIVERGE(2, 1))) && p_1504->g_359.s4) ^ l_1090), l_1079)) ^ (*p_33))))), FAKE_DIVERGE(p_1504->global_2_offset, get_global_id(2), 10))) != l_1090)) <= 0x68A0L) != l_1090) , (void*)0));
        ++l_1119;
        (*l_1106) &= ((((p_1504->g_566.x = p_1504->g_79.s3) <= (safe_lshift_func_int16_t_s_s(l_1116, (l_1118[0] < ((VECTOR(int64_t, 8))(p_1504->g_1129.xzxzzzyz)).s3)))) < (*l_1100)) & ((safe_sub_func_int32_t_s_s(((*l_1101) = ((VECTOR(int32_t, 4))(p_1504->g_1132.sb43c)).w), ((((((p_1504->g_444[3] = 1UL) >= 0x5A49A5171573233BL) <= (l_1115 = ((safe_sub_func_uint32_t_u_u((((((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 16))(l_1135.sf1375b15eccaed38)), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_1136.zz)), 0x5C1AAFF4L, 4294967286UL)).zwwzxxyyxwxwxyzy))).s7 , ((safe_unary_minus_func_int64_t_s(((VECTOR(int64_t, 16))(p_1504->g_1138.s0351610722305547)).s3)) || (((void*)0 != l_1139[0]) <= ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(safe_clamp_func(VECTOR(uint64_t, 16),VECTOR(uint64_t, 16),((VECTOR(uint64_t, 8))(0xC7E44FF8B5FDCD93L, ((VECTOR(uint64_t, 2))(0x665846B21DAE1692L, 0x21356DFCDD59B69FL)), 0x43390487FACC5F32L, 0x6FB37FF02D5AEEC2L, ((safe_div_func_uint64_t_u_u((safe_mul_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u((p_1504->g_1010.s0 , 0x9ACDL), l_1118[0])) == l_1118[0]), l_1118[0])), 0x9F5FC25F0583E9E6L)) | 0x24L), 18446744073709551615UL, 0xF45D9AAE9C7161FCL)).s2613505261435637, ((VECTOR(uint64_t, 16))(0x9B13296A0D1561B4L)), ((VECTOR(uint64_t, 16))(1UL))))).lo)).s4))) , (*l_1102)) && (*p_33)), (*p_1504->g_864))) , l_1066))) >= 65535UL) == l_1111) >= p_1504->g_443))) > 0x2D7CL));
    }
    else
    { /* block id: 433 */
        VECTOR(uint64_t, 8) l_1150 = (VECTOR(uint64_t, 8))(2UL, (VECTOR(uint64_t, 4))(2UL, (VECTOR(uint64_t, 2))(2UL, 1UL), 1UL), 1UL, 2UL, 1UL);
        int32_t l_1163[2];
        VECTOR(int32_t, 8) l_1166 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x12559D11L), 0x12559D11L), 0x12559D11L, 1L, 0x12559D11L);
        int8_t ***l_1249 = &l_1248;
        int i;
        for (i = 0; i < 2; i++)
            l_1163[i] = 0x5A712C37L;
        for (p_1504->g_16 = 0; (p_1504->g_16 < 22); p_1504->g_16 = safe_add_func_uint32_t_u_u(p_1504->g_16, 9))
        { /* block id: 436 */
            uint16_t l_1157 = 6UL;
            int8_t **l_1158 = (void*)0;
            int32_t l_1159 = 1L;
            int32_t l_1160 = 0x4C52F641L;
            int32_t l_1161 = (-7L);
            uint32_t *l_1162 = (void*)0;
            VECTOR(uint16_t, 8) l_1180 = (VECTOR(uint16_t, 8))(65532UL, (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 0xE6F5L), 0xE6F5L), 0xE6F5L, 65532UL, 0xE6F5L);
            VECTOR(int32_t, 16) l_1187 = (VECTOR(int32_t, 16))(0x218A1061L, (VECTOR(int32_t, 4))(0x218A1061L, (VECTOR(int32_t, 2))(0x218A1061L, 0x0B7B6BC0L), 0x0B7B6BC0L), 0x0B7B6BC0L, 0x218A1061L, 0x0B7B6BC0L, (VECTOR(int32_t, 2))(0x218A1061L, 0x0B7B6BC0L), (VECTOR(int32_t, 2))(0x218A1061L, 0x0B7B6BC0L), 0x218A1061L, 0x0B7B6BC0L, 0x218A1061L, 0x0B7B6BC0L);
            uint32_t l_1190 = 1UL;
            VECTOR(int8_t, 16) l_1220 = (VECTOR(int8_t, 16))(0x16L, (VECTOR(int8_t, 4))(0x16L, (VECTOR(int8_t, 2))(0x16L, 7L), 7L), 7L, 0x16L, 7L, (VECTOR(int8_t, 2))(0x16L, 7L), (VECTOR(int8_t, 2))(0x16L, 7L), 0x16L, 7L, 0x16L, 7L);
            VECTOR(int8_t, 8) l_1221 = (VECTOR(int8_t, 8))(0x1CL, (VECTOR(int8_t, 4))(0x1CL, (VECTOR(int8_t, 2))(0x1CL, 0x2EL), 0x2EL), 0x2EL, 0x1CL, 0x2EL);
            int i;
            if ((l_1110 , ((safe_sub_func_uint64_t_u_u((((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 4))(l_1150.s5665)), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(0x7B75F458397B2512L, ((VECTOR(uint64_t, 2))(0x597A4D0A3B85E16FL, 0x53BD214042BB2C7AL)), p_1504->g_560.y, (l_1150.s0 > 3L), 0UL, 18446744073709551615UL, GROUP_DIVERGE(2, 1), 0xBB37933C2E2F9F01L, 18446744073709551608UL, ((safe_lshift_func_uint16_t_u_s((FAKE_DIVERGE(p_1504->global_1_offset, get_global_id(1), 10) , (l_1163[1] = (p_1504->g_401.y = (p_1504->g_936.s9 = (safe_mul_func_int16_t_s_s((((+(*p_33)) == ((l_1116 |= (safe_mul_func_int16_t_s_s((l_1157 == 247UL), (((l_1161 = ((l_1160 = (l_1159 = (l_1158 == &p_1504->g_465[0][0]))) != (*p_33))) && 0x8D6BL) == l_1150.s7)))) >= FAKE_DIVERGE(p_1504->group_2_offset, get_group_id(2), 10))) && p_1504->g_566.x), 1UL)))))), 3)) != (*p_33)), ((VECTOR(uint64_t, 4))(0xD3199A9F2B9F8FDBL)), 1UL)).s04ff))))).w < l_1157), p_1504->g_80.s7)) , l_1150.s1)))
            { /* block id: 444 */
                uint32_t ***l_1186 = (void*)0;
                int32_t l_1197 = 0L;
                int32_t l_1201 = (-1L);
                int32_t l_1230 = 0x7A009E3BL;
                int32_t l_1231 = 0x3AC13B9DL;
                int32_t l_1232[8][6] = {{0x4B908662L,0x4B908662L,0L,0x4C9EE50AL,0x01FF8D63L,0x4C9EE50AL},{0x4B908662L,0x4B908662L,0L,0x4C9EE50AL,0x01FF8D63L,0x4C9EE50AL},{0x4B908662L,0x4B908662L,0L,0x4C9EE50AL,0x01FF8D63L,0x4C9EE50AL},{0x4B908662L,0x4B908662L,0L,0x4C9EE50AL,0x01FF8D63L,0x4C9EE50AL},{0x4B908662L,0x4B908662L,0L,0x4C9EE50AL,0x01FF8D63L,0x4C9EE50AL},{0x4B908662L,0x4B908662L,0L,0x4C9EE50AL,0x01FF8D63L,0x4C9EE50AL},{0x4B908662L,0x4B908662L,0L,0x4C9EE50AL,0x01FF8D63L,0x4C9EE50AL},{0x4B908662L,0x4B908662L,0L,0x4C9EE50AL,0x01FF8D63L,0x4C9EE50AL}};
                uint32_t l_1233 = 0x4A6D9767L;
                int i, j;
                (*p_1504->g_864) = l_1160;
                (*p_33) = l_1160;
                for (l_1117 = 12; (l_1117 <= (-7)); l_1117--)
                { /* block id: 449 */
                    int64_t *l_1174 = (void*)0;
                    int32_t l_1175 = (-9L);
                    int32_t l_1185[9] = {0x0F3CEF4DL,0x0F3CEF4DL,0x0F3CEF4DL,0x0F3CEF4DL,0x0F3CEF4DL,0x0F3CEF4DL,0x0F3CEF4DL,0x0F3CEF4DL,0x0F3CEF4DL};
                    uint16_t l_1202 = 0x08DBL;
                    int64_t l_1228 = 0x34062B5B4B50FD23L;
                    VECTOR(uint16_t, 8) l_1238 = (VECTOR(uint16_t, 8))(0xB071L, (VECTOR(uint16_t, 4))(0xB071L, (VECTOR(uint16_t, 2))(0xB071L, 65527UL), 65527UL), 65527UL, 0xB071L, 65527UL);
                    int i;
                    (*p_1504->g_864) ^= 1L;
                    if ((((**p_1504->g_863) = (+((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))((&p_1504->g_335 == (void*)0), l_1114, ((VECTOR(int32_t, 2))(l_1166.s22)), (-2L), 0x4594C1B7L, (-1L), 8L)).s1765227247343664)).s4)) && ((p_1504->g_1167 == (((safe_rshift_func_uint16_t_u_u((safe_add_func_int64_t_s_s((l_1175 = l_1163[1]), ((p_1504->g_757.y , (safe_rshift_func_int16_t_s_u((safe_add_func_int8_t_s_s(0x02L, (((VECTOR(uint16_t, 4))(l_1180.s2525)).y & ((safe_rshift_func_uint8_t_u_s(((*p_1504->g_619) = ((safe_mod_func_int32_t_s_s(0x01AC5C99L, ((*p_1504->g_864) = (*p_33)))) & l_1185[0])), 6)) , FAKE_DIVERGE(p_1504->global_1_offset, get_global_id(1), 10))))), l_1180.s3))) == FAKE_DIVERGE(p_1504->local_2_offset, get_local_id(2), 10)))), l_1161)) < (*p_1504->g_232)) , l_1186)) >= l_1180.s4)))
                    { /* block id: 455 */
                        (*p_33) &= ((VECTOR(int32_t, 4))(l_1187.saee0)).x;
                        (*p_33) = (0x99L && l_1166.s4);
                        (*p_33) ^= l_1161;
                    }
                    else
                    { /* block id: 459 */
                        int32_t *l_1188 = &l_1160;
                        int32_t *l_1189[10][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
                        uint8_t *l_1203 = &p_1504->g_190;
                        uint32_t *l_1229[3];
                        int32_t l_1239 = 0x7DBC6A03L;
                        int8_t *l_1240 = (void*)0;
                        int8_t *l_1241[3];
                        uint32_t ****l_1246 = (void*)0;
                        int16_t *l_1247 = (void*)0;
                        int i, j;
                        for (i = 0; i < 3; i++)
                            l_1229[i] = (void*)0;
                        for (i = 0; i < 3; i++)
                            l_1241[i] = (void*)0;
                        --l_1190;
                        (*p_1504->g_83) = func_34(l_1166.s4, ((safe_sub_func_uint8_t_u_u((*p_1504->g_619), (safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(1UL, ((~l_1117) || l_1197), ((VECTOR(uint16_t, 2))(p_1504->g_1198.s60)), 0x5DCAL, 6UL, 65535UL, 65534UL)).s66)).lo, 9)))) >= ((*l_1203) ^= (safe_mod_func_int32_t_s_s(((l_1201 = GROUP_DIVERGE(2, 1)) > l_1202), (-9L))))), p_1504);
                        (*l_1188) |= ((safe_add_func_int16_t_s_s(((safe_mod_func_uint8_t_u_u((((*p_33) = (((safe_div_func_int32_t_s_s((safe_mul_func_int8_t_s_s((l_1163[1] &= ((safe_add_func_int16_t_s_s((safe_sub_func_uint32_t_u_u((safe_div_func_uint64_t_u_u(((safe_mul_func_uint8_t_u_u((((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),int8_t,((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 4))(l_1220.s4524)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(l_1221.s2673633136734721)))).odd)).even))).zxyywwwzyxxxyzwy, (int8_t)(safe_div_func_int16_t_s_s(l_1166.s3, (safe_add_func_int16_t_s_s((l_1185[8] , (((l_1202 > ((safe_add_func_uint16_t_u_u((0x25F0L | (p_1504->g_560.x = p_1504->g_233)), ((l_1233++) && ((p_1504->g_335 , ((VECTOR(uint16_t, 4))(l_1238.s5455)).w) != (l_1180.s6 < l_1201))))) < ((l_1202 <= l_1185[0]) , l_1239))) > l_1187.s4) > p_1504->g_2)), GROUP_DIVERGE(2, 1))))), (int8_t)l_1161))).s2 , l_1161), l_1232[7][3])) > GROUP_DIVERGE(2, 1)), p_1504->g_461.y)), 1UL)), l_1157)) ^ 0L)), (*p_1504->g_619))), (**p_1504->g_83))) | l_1161) , l_1238.s4)) , l_1185[0]), l_1150.s6)) ^ GROUP_DIVERGE(0, 1)), 1UL)) ^ 0UL);
                        l_1231 |= (safe_lshift_func_int16_t_s_u((l_1111 = (safe_sub_func_uint32_t_u_u(((l_1163[1] = l_1232[7][3]) == l_1197), (l_1246 == (void*)0)))), 2));
                    }
                }
            }
            else
            { /* block id: 474 */
                (*p_1504->g_83) = &l_1163[0];
            }
        }
        (*l_1249) = l_1248;
    }
    for (l_1111 = (-19); (l_1111 > (-15)); l_1111 = safe_add_func_uint32_t_u_u(l_1111, 6))
    { /* block id: 482 */
        uint32_t l_1255 = 1UL;
        uint64_t *l_1260 = (void*)0;
        uint8_t *l_1264 = &p_1504->g_17[2];
        int32_t l_1266 = (-7L);
        if (p_1504->g_16)
            goto lbl_1252;
        for (l_1116 = 0; (l_1116 > (-30)); l_1116 = safe_sub_func_int16_t_s_s(l_1116, 1))
        { /* block id: 486 */
            int32_t l_1256[9][2] = {{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}};
            int32_t l_1257 = 1L;
            VECTOR(int32_t, 4) l_1258 = (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x7FC76B0FL), 0x7FC76B0FL);
            int8_t *l_1265 = (void*)0;
            int i, j;
            (*p_1504->g_864) = l_1255;
            l_1257 &= l_1256[5][0];
            (*p_1504->g_864) = ((l_1256[5][0] & ((VECTOR(int32_t, 8))(l_1258.xyxxyzxx)).s7) <= (0x08BAL || (((((p_1504->g_907.w &= ((l_1114 = (((0x3EC0L > p_1504->g_1259) , l_1260) != (void*)0)) == l_1116)) || (((l_1266 |= (safe_lshift_func_uint8_t_u_s(((*l_1264) = (18446744073709551615UL != (l_1263 != l_1264))), l_1094.y))) > l_1109) > 1UL)) == l_1111) || l_1266) <= l_1094.y)));
            return l_1080;
        }
    }
    return p_1504->g_444[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1504->g_863 p_1504->g_864
 * writes:
 */
int32_t * func_34(int32_t  p_35, int64_t  p_36, struct S0 * p_1504)
{ /* block id: 415 */
    uint8_t l_1059 = 255UL;
    --l_1059;
    return (*p_1504->g_863);
}


/* ------------------------------------------ */
/* 
 * reads : p_1504->g_673 p_1504->g_436 p_1504->g_936 p_1504->g_550 p_1504->g_461 p_1504->g_92 p_1504->g_864
 * writes: p_1504->g_436 p_1504->g_936 p_1504->g_11
 */
int32_t  func_37(int32_t ** p_38, int32_t ** p_39, int32_t ** p_40, int64_t  p_41, int32_t ** p_42, struct S0 * p_1504)
{ /* block id: 408 */
    VECTOR(uint8_t, 16) l_1034 = (VECTOR(uint8_t, 16))(0x58L, (VECTOR(uint8_t, 4))(0x58L, (VECTOR(uint8_t, 2))(0x58L, 0UL), 0UL), 0UL, 0x58L, 0UL, (VECTOR(uint8_t, 2))(0x58L, 0UL), (VECTOR(uint8_t, 2))(0x58L, 0UL), 0x58L, 0UL, 0x58L, 0UL);
    uint32_t *l_1039 = (void*)0;
    VECTOR(uint32_t, 8) l_1040 = (VECTOR(uint32_t, 8))(0x84FC5EEFL, (VECTOR(uint32_t, 4))(0x84FC5EEFL, (VECTOR(uint32_t, 2))(0x84FC5EEFL, 0x6FAF2215L), 0x6FAF2215L), 0x6FAF2215L, 0x84FC5EEFL, 0x6FAF2215L);
    int8_t *l_1041 = (void*)0;
    int8_t *l_1042 = &p_1504->g_436;
    uint16_t *l_1045 = (void*)0;
    uint32_t *l_1050 = (void*)0;
    uint32_t **l_1049 = &l_1050;
    uint32_t ***l_1048[10];
    uint32_t ***l_1052 = &l_1049;
    uint32_t ****l_1051 = &l_1052;
    int i;
    for (i = 0; i < 10; i++)
        l_1048[i] = &l_1049;
    (*p_1504->g_864) = (0xC55FL >= (safe_lshift_func_int16_t_s_u(((((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(l_1034.s124d684ad6640b8c)).sd, (safe_add_func_int8_t_s_s(((safe_add_func_int32_t_s_s((-6L), (p_1504->g_673.y , ((VECTOR(int32_t, 2))(1L, 0x50573BE8L)).lo))) ^ (((*l_1042) ^= (!((l_1039 == l_1039) & ((VECTOR(uint32_t, 8))(l_1040.s30500071)).s2))) != (((0UL >= ((safe_rshift_func_uint16_t_u_s((--p_1504->g_936.s3), 6)) , (l_1048[2] == ((*l_1051) = &l_1049)))) , (safe_add_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((safe_div_func_uint64_t_u_u(p_1504->g_550[4], 0x673C413541569503L)), 6UL)), 1L))) <= p_1504->g_461.x))), p_41)))) , p_39) == &p_1504->g_864) ^ p_1504->g_92), 7)));
    (*p_1504->g_864) = 0x2DD23FA7L;
    return l_1040.s5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1504->g_92 p_1504->g_863 p_1504->g_93 p_1504->g_2 p_1504->g_188 p_1504->g_11 p_1504->g_1007 p_1504->g_1010 p_1504->g_349 p_1504->g_350 p_1504->g_864 p_1504->g_232 p_1504->g_233 p_1504->g_826 p_1504->g_619 p_1504->g_17
 * writes: p_1504->g_92 p_1504->g_84 p_1504->g_864 p_1504->g_93 p_1504->g_11 p_1504->g_2 p_1504->g_188 p_1504->g_896
 */
int32_t ** func_45(int64_t  p_46, int32_t ** p_47, uint8_t  p_48, uint64_t  p_49, struct S0 * p_1504)
{ /* block id: 368 */
    int8_t l_967 = 0L;
    int32_t *l_968 = &p_1504->g_11;
    int32_t *l_969 = (void*)0;
    int32_t *l_970 = &p_1504->g_11;
    int32_t *l_971 = (void*)0;
    int32_t *l_972 = &p_1504->g_2;
    int32_t *l_973[5][9][5] = {{{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0}},{{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0}},{{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0}},{{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0}},{{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0},{&p_1504->g_11,(void*)0,&p_1504->g_2,&p_1504->g_2,(void*)0}}};
    uint64_t l_974 = 0xB4395FD2AB900C02L;
    int8_t **l_977 = &p_1504->g_465[0][0];
    uint32_t *l_994 = (void*)0;
    uint32_t **l_993 = &l_994;
    uint32_t ***l_992[7][3][9] = {{{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0},{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0},{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0}},{{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0},{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0},{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0}},{{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0},{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0},{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0}},{{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0},{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0},{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0}},{{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0},{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0},{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0}},{{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0},{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0},{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0}},{{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0},{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0},{&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,&l_993,(void*)0}}};
    int8_t **l_1021 = &p_1504->g_465[0][0];
    uint8_t **l_1028 = &p_1504->g_619;
    int i, j, k;
    ++l_974;
    if (((void*)0 == l_977))
    { /* block id: 370 */
        uint64_t l_978 = 1UL;
        int32_t *l_983[3];
        int i;
        for (i = 0; i < 3; i++)
            l_983[i] = (void*)0;
        l_978++;
        for (p_1504->g_92 = 15; (p_1504->g_92 >= (-25)); p_1504->g_92 = safe_sub_func_int32_t_s_s(p_1504->g_92, 1))
        { /* block id: 374 */
            (*p_47) = l_983[2];
        }
        if (l_978)
            goto lbl_984;
lbl_984:
        (*p_1504->g_863) = l_971;
        if (p_46)
        { /* block id: 379 */
            for (p_1504->g_93 = 11; (p_1504->g_93 <= 15); p_1504->g_93 = safe_add_func_int16_t_s_s(p_1504->g_93, 3))
            { /* block id: 382 */
                (*l_970) = 1L;
            }
        }
        else
        { /* block id: 385 */
            uint8_t l_987 = 254UL;
            (*l_972) &= l_987;
        }
    }
    else
    { /* block id: 388 */
        int64_t l_988 = 0x3A2434880403F0A8L;
        (*l_972) ^= l_988;
    }
    (*p_1504->g_863) = l_968;
    for (p_1504->g_188 = 0; (p_1504->g_188 <= 7); p_1504->g_188++)
    { /* block id: 394 */
        uint32_t l_991 = 0x098AA822L;
        int8_t **l_995 = &p_1504->g_465[0][0];
        VECTOR(int32_t, 2) l_996 = (VECTOR(int32_t, 2))(0x2A150CE9L, (-4L));
        VECTOR(int64_t, 16) l_1006 = (VECTOR(int64_t, 16))((-4L), (VECTOR(int64_t, 4))((-4L), (VECTOR(int64_t, 2))((-4L), 0x477B804E5B29D3DDL), 0x477B804E5B29D3DDL), 0x477B804E5B29D3DDL, (-4L), 0x477B804E5B29D3DDL, (VECTOR(int64_t, 2))((-4L), 0x477B804E5B29D3DDL), (VECTOR(int64_t, 2))((-4L), 0x477B804E5B29D3DDL), (-4L), 0x477B804E5B29D3DDL, (-4L), 0x477B804E5B29D3DDL);
        VECTOR(int64_t, 16) l_1008 = (VECTOR(int64_t, 16))(0x79A40E666FE0257CL, (VECTOR(int64_t, 4))(0x79A40E666FE0257CL, (VECTOR(int64_t, 2))(0x79A40E666FE0257CL, 0x1B92EEB4A56651D5L), 0x1B92EEB4A56651D5L), 0x1B92EEB4A56651D5L, 0x79A40E666FE0257CL, 0x1B92EEB4A56651D5L, (VECTOR(int64_t, 2))(0x79A40E666FE0257CL, 0x1B92EEB4A56651D5L), (VECTOR(int64_t, 2))(0x79A40E666FE0257CL, 0x1B92EEB4A56651D5L), 0x79A40E666FE0257CL, 0x1B92EEB4A56651D5L, 0x79A40E666FE0257CL, 0x1B92EEB4A56651D5L);
        VECTOR(int64_t, 4) l_1009 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-5L)), (-5L));
        VECTOR(int64_t, 8) l_1011 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x17CD72575577DCE8L), 0x17CD72575577DCE8L), 0x17CD72575577DCE8L, (-1L), 0x17CD72575577DCE8L);
        VECTOR(int64_t, 8) l_1012 = (VECTOR(int64_t, 8))(0x35B1DF25B1DE4B63L, (VECTOR(int64_t, 4))(0x35B1DF25B1DE4B63L, (VECTOR(int64_t, 2))(0x35B1DF25B1DE4B63L, 0x54D1E9963AEBA966L), 0x54D1E9963AEBA966L), 0x54D1E9963AEBA966L, 0x35B1DF25B1DE4B63L, 0x54D1E9963AEBA966L);
        int32_t l_1015[3][8] = {{(-7L),0x288FE60BL,0x4433E5C8L,0x17AD9C94L,0x288FE60BL,0x17AD9C94L,0x4433E5C8L,0x288FE60BL},{(-7L),0x288FE60BL,0x4433E5C8L,0x17AD9C94L,0x288FE60BL,0x17AD9C94L,0x4433E5C8L,0x288FE60BL},{(-7L),0x288FE60BL,0x4433E5C8L,0x17AD9C94L,0x288FE60BL,0x17AD9C94L,0x4433E5C8L,0x288FE60BL}};
        int64_t *l_1016 = &p_1504->g_896;
        int i, j;
        if (l_991)
            break;
        if ((((((((l_992[4][2][2] == (void*)0) | (l_995 != ((*l_970) , l_977))) , ((VECTOR(int32_t, 2))(l_996.yy)).lo) || (((*l_968) = (safe_lshift_func_uint16_t_u_u(((((*l_1016) = ((safe_unary_minus_func_uint64_t_u((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))((safe_mod_func_int64_t_s_s((((safe_add_func_int64_t_s_s(1L, ((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(l_1006.sb2e3bce3e253930a)).sc500)), ((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 2))(p_1504->g_1007.s47)), ((VECTOR(int64_t, 2))((-1L), 0x5B6B535C7369DF6BL)), ((VECTOR(int64_t, 16))(l_1008.s47da53ac9654ceac)).sf1))).yxyx, ((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))((-1L), 0x4735E0ABC20D0AA1L, (-1L), ((VECTOR(int64_t, 8))(l_1009.ywxzywzw)), ((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 8))(p_1504->g_1010.s18015986)).odd, ((VECTOR(int64_t, 2))(0x492EC50A6D7A0204L, 0x6AF2401459273D1BL)).yyyy))), 0L)))).sc7, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 4))(l_1011.s1760)).wzxzzwwx, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(l_1012.s27117240)))).lo)).xwxxzyyz))).s06, ((VECTOR(int64_t, 8))(0L, ((VECTOR(int64_t, 4))((safe_sub_func_uint16_t_u_u(((0x126C62DC46549ED8L >= ((*p_1504->g_349) == (void*)0)) > p_46), 0xA15CL)), 0x7136F53840C82C46L, 0L, 0x14E5D8760975D97DL)), l_1015[1][1], 0x5FEBCCFB12B84103L, 0x2873EFC682B6162FL)).s50))).yxxyxxyyxxxxxyyy)).s47))), ((VECTOR(int64_t, 2))(0x2FB4922804D89F91L))))).xxyy))).xwzzxxxywxyyzzyz)).sc9, ((VECTOR(int64_t, 2))(0x20FDA24279116706L))))).lo)) , l_1011.s5) , 6L), 1UL)), 0x43D7F5AEF67F28AFL, 0x3FD9EE865FD0F5E0L, 0x070F508ED8BBA919L)).wyyywzzxxwxzwxzw)).s0, 1L)))) > 0UL)) , &p_1504->g_465[0][3]) == l_977), 7))) || (*p_1504->g_864))) , GROUP_DIVERGE(1, 1)) && 9UL) , l_991))
        { /* block id: 398 */
            int8_t ***l_1019 = (void*)0;
            int8_t ***l_1020[6][1][7] = {{{&l_977,&l_995,&l_977,&l_995,&l_995,&l_977,&l_995}},{{&l_977,&l_995,&l_977,&l_995,&l_995,&l_977,&l_995}},{{&l_977,&l_995,&l_977,&l_995,&l_995,&l_977,&l_995}},{{&l_977,&l_995,&l_977,&l_995,&l_995,&l_977,&l_995}},{{&l_977,&l_995,&l_977,&l_995,&l_995,&l_977,&l_995}},{{&l_977,&l_995,&l_977,&l_995,&l_995,&l_977,&l_995}}};
            int16_t *l_1029[4];
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_1029[i] = (void*)0;
            (*l_972) &= (p_46 | (((safe_add_func_uint16_t_u_u(3UL, ((l_1006.s1 , l_977) == (l_1021 = &p_1504->g_465[0][1])))) , p_48) , ((safe_mod_func_int8_t_s_s((((*p_1504->g_232) ^ FAKE_DIVERGE(p_1504->local_0_offset, get_local_id(0), 10)) < ((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(9UL, 4294967286UL)).yyxy)).y | (safe_mod_func_int16_t_s_s(l_1011.s1, ((*l_968) |= (safe_add_func_int16_t_s_s(((void*)0 != l_1028), 65533UL)))))) != p_1504->g_826.s3)), p_49)) , (*p_1504->g_619))));
        }
        else
        { /* block id: 402 */
            return p_47;
        }
        if (l_1015[1][7])
            break;
    }
    return p_47;
}


/* ------------------------------------------ */
/* 
 * reads : p_1504->g_2 p_1504->g_907 p_1504->g_134 p_1504->g_619 p_1504->g_17 p_1504->g_207 p_1504->g_232 p_1504->g_233 p_1504->g_267 p_1504->g_110 p_1504->g_864 p_1504->g_11 p_1504->g_936 p_1504->g_944 p_1504->g_946 p_1504->g_947 p_1504->g_551
 * writes: p_1504->g_2 p_1504->g_550 p_1504->g_134 p_1504->g_17 p_1504->g_436 p_1504->g_110 p_1504->g_551 p_1504->g_864
 */
int32_t ** func_50(int32_t * p_51, int32_t ** p_52, uint64_t  p_53, struct S0 * p_1504)
{ /* block id: 341 */
    int32_t l_909[8] = {0x00037AF5L,0x0E789426L,0x00037AF5L,0x00037AF5L,0x0E789426L,0x00037AF5L,0x00037AF5L,0x0E789426L};
    VECTOR(uint16_t, 16) l_920 = (VECTOR(uint16_t, 16))(65529UL, (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 0xD11EL), 0xD11EL), 0xD11EL, 65529UL, 0xD11EL, (VECTOR(uint16_t, 2))(65529UL, 0xD11EL), (VECTOR(uint16_t, 2))(65529UL, 0xD11EL), 65529UL, 0xD11EL, 65529UL, 0xD11EL);
    int32_t l_930 = 1L;
    int16_t *l_935[2];
    VECTOR(uint64_t, 8) l_942 = (VECTOR(uint64_t, 8))(0xB85E7603BD990A38L, (VECTOR(uint64_t, 4))(0xB85E7603BD990A38L, (VECTOR(uint64_t, 2))(0xB85E7603BD990A38L, 0x0AB90AE18CFDB6D2L), 0x0AB90AE18CFDB6D2L), 0x0AB90AE18CFDB6D2L, 0xB85E7603BD990A38L, 0x0AB90AE18CFDB6D2L);
    VECTOR(uint64_t, 8) l_945 = (VECTOR(uint64_t, 8))(0xC564744F5F1DEF4DL, (VECTOR(uint64_t, 4))(0xC564744F5F1DEF4DL, (VECTOR(uint64_t, 2))(0xC564744F5F1DEF4DL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0xC564744F5F1DEF4DL, 18446744073709551615UL);
    VECTOR(int32_t, 16) l_961 = (VECTOR(int32_t, 16))(0x61E8DE3CL, (VECTOR(int32_t, 4))(0x61E8DE3CL, (VECTOR(int32_t, 2))(0x61E8DE3CL, 0x61F92B58L), 0x61F92B58L), 0x61F92B58L, 0x61E8DE3CL, 0x61F92B58L, (VECTOR(int32_t, 2))(0x61E8DE3CL, 0x61F92B58L), (VECTOR(int32_t, 2))(0x61E8DE3CL, 0x61F92B58L), 0x61E8DE3CL, 0x61F92B58L, 0x61E8DE3CL, 0x61F92B58L);
    int32_t **l_965[4][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
    int i, j;
    for (i = 0; i < 2; i++)
        l_935[i] = (void*)0;
    for (p_1504->g_2 = (-18); (p_1504->g_2 != (-7)); p_1504->g_2 = safe_add_func_int64_t_s_s(p_1504->g_2, 5))
    { /* block id: 344 */
        int32_t l_906 = 2L;
        uint64_t *l_908 = &p_1504->g_550[4];
        int32_t *l_912 = &p_1504->g_134;
        VECTOR(int8_t, 8) l_919 = (VECTOR(int8_t, 8))(0x38L, (VECTOR(int8_t, 4))(0x38L, (VECTOR(int8_t, 2))(0x38L, 0x23L), 0x23L), 0x23L, 0x38L, 0x23L);
        int8_t *l_925 = (void*)0;
        int8_t *l_926 = &p_1504->g_436;
        uint16_t *l_927[3];
        int32_t l_928 = 0L;
        int32_t l_929[8][1][9] = {{{0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL}},{{0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL}},{{0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL}},{{0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL}},{{0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL}},{{0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL}},{{0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL}},{{0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL,0x64BBA82CL}}};
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_927[i] = (void*)0;
        l_930 = (safe_add_func_uint64_t_u_u(l_906, (l_906 , ((l_909[7] = (((*l_908) = ((VECTOR(uint64_t, 4))(p_1504->g_907.wzyx)).y) , (+0x4CC4CC7BL))) & (safe_rshift_func_int16_t_s_u((((*l_912) |= 0L) >= (l_929[6][0][8] &= (((safe_mod_func_uint64_t_u_u(18446744073709551613UL, (safe_sub_func_uint16_t_u_u((p_53 ^ (safe_rshift_func_uint16_t_u_u((l_928 = ((VECTOR(uint16_t, 16))((((VECTOR(int8_t, 8))(l_919.s20047736)).s1 && ((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 16))(l_920.sf3b21078c714f059)).sff, ((VECTOR(uint16_t, 4))(((!0xA0C5D42AL) >= (safe_mul_func_uint8_t_u_u(((*p_1504->g_619) |= 0xB7L), ((safe_lshift_func_int8_t_s_u(((*l_926) = (l_920.s5 | 1L)), 0)) > p_1504->g_207.s6)))), 0x8D97L, 1UL, 65535UL)).hi))).xxyyyyyy)).s2547043324207246)).even)))).s5 != l_920.s8) <= 4294967294UL)), 0UL, p_53, 65535UL, 0x77B0L, 65535UL, p_53, p_53, 0x0AC3L, (*p_1504->g_232), ((VECTOR(uint16_t, 4))(0UL)), 1UL, 0xF728L)).s7), p_53))), 0x8B58L)))) , p_1504->g_267.z) | l_920.sd))), GROUP_DIVERGE(1, 1)))))));
        return &p_1504->g_84;
    }
    l_930 |= (safe_mul_func_uint16_t_u_u(p_53, p_53));
    for (p_1504->g_110 = 0; (p_1504->g_110 > 37); p_1504->g_110 = safe_add_func_uint64_t_u_u(p_1504->g_110, 3))
    { /* block id: 358 */
        int32_t l_939[10] = {(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L)};
        VECTOR(uint64_t, 4) l_943 = (VECTOR(uint64_t, 4))(0xF100C35620DCAADEL, (VECTOR(uint64_t, 2))(0xF100C35620DCAADEL, 18446744073709551607UL), 18446744073709551607UL);
        uint16_t *l_954 = (void*)0;
        uint16_t *l_955[6];
        int32_t l_956[10];
        uint32_t l_962[2];
        int64_t *l_963[9];
        int32_t *l_964 = &p_1504->g_2;
        int i;
        for (i = 0; i < 6; i++)
            l_955[i] = (void*)0;
        for (i = 0; i < 10; i++)
            l_956[i] = 0x7C332F22L;
        for (i = 0; i < 2; i++)
            l_962[i] = 0xA489FC0CL;
        for (i = 0; i < 9; i++)
            l_963[i] = (void*)0;
        if ((**p_52))
            break;
        if ((**p_52))
            break;
        (*l_964) &= (+((l_956[9] &= (((l_935[0] == &p_1504->g_309) && (((l_961.sb = ((VECTOR(int64_t, 16))(0x02722B1FD1DA8593L, ((VECTOR(int64_t, 8))((p_53 <= ((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(1UL, 0x4B06L)), 65535UL, 0xEC07L)).odd, (uint16_t)((VECTOR(uint16_t, 2))(p_1504->g_936.s5d)).odd))).lo), (safe_add_func_uint64_t_u_u((l_939[7] , (safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL)), 9UL, 18446744073709551615UL, 0UL, ((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(l_942.s7433720202163551)).se6)).yxyx, ((VECTOR(uint64_t, 16))(0x6A5D7C789F23A0AAL, 18446744073709551612UL, 0x335ABFF50EF21AD9L, ((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 2))(l_943.zx)).yxyy, ((VECTOR(uint64_t, 4))(p_1504->g_944.zzyy))))), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(l_945.s5407342323626135)).even)), 9UL)).seaf7))), l_942.s7, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(int64_t, 4))(p_1504->g_946.yywz)).wwxxzxxz, ((VECTOR(int64_t, 8))(p_1504->g_947.yxyyyxyy))))).hi)), 0x8C27A347EC94C0D5L, 0x35CEB4E91E12288DL)).sb, (safe_rshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(p_53, (safe_lshift_func_uint16_t_u_s((p_1504->g_551.s1++), ((safe_rshift_func_int16_t_s_u(l_961.sc, GROUP_DIVERGE(0, 1))) >= (0L | l_962[0])))))), l_962[1]))))), l_945.s5)), 0x7C5CD095528CEFD6L, l_939[7], ((VECTOR(int64_t, 2))(0L)), (-3L), 0L)), p_53, 0x5AB9E06FC344F1CBL, 6L, ((VECTOR(int64_t, 2))(0x736195A2CEBF596DL)), (-1L), 0x7D705FB495301645L)).s0) , (**p_52)) ^ GROUP_DIVERGE(2, 1))) || l_945.s2)) & 1L));
    }
    (*p_52) = &l_930;
    return &p_1504->g_84;
}


/* ------------------------------------------ */
/* 
 * reads : p_1504->g_349 p_1504->g_350 p_1504->g_550 p_1504->g_110
 * writes: p_1504->g_550 p_1504->g_110 p_1504->g_134
 */
int32_t ** func_55(uint32_t  p_56, int32_t ** p_57, int32_t  p_58, int32_t  p_59, struct S0 * p_1504)
{ /* block id: 334 */
    uint32_t l_873 = 0xDD196428L;
    VECTOR(int8_t, 8) l_880 = (VECTOR(int8_t, 8))(0x34L, (VECTOR(int8_t, 4))(0x34L, (VECTOR(int8_t, 2))(0x34L, 0x39L), 0x39L), 0x39L, 0x34L, 0x39L);
    uint16_t *l_881 = (void*)0;
    uint16_t *l_882 = (void*)0;
    uint16_t *l_883 = (void*)0;
    uint16_t *l_884[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_885 = (-1L);
    VECTOR(uint32_t, 16) l_886 = (VECTOR(uint32_t, 16))(0xDA0DAC5DL, (VECTOR(uint32_t, 4))(0xDA0DAC5DL, (VECTOR(uint32_t, 2))(0xDA0DAC5DL, 4294967295UL), 4294967295UL), 4294967295UL, 0xDA0DAC5DL, 4294967295UL, (VECTOR(uint32_t, 2))(0xDA0DAC5DL, 4294967295UL), (VECTOR(uint32_t, 2))(0xDA0DAC5DL, 4294967295UL), 0xDA0DAC5DL, 4294967295UL, 0xDA0DAC5DL, 4294967295UL);
    uint16_t l_889[9][7][4] = {{{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL}},{{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL}},{{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL}},{{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL}},{{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL}},{{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL}},{{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL}},{{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL}},{{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL},{0x4945L,1UL,65526UL,0x2D2EL}}};
    uint64_t *l_890 = &p_1504->g_550[4];
    uint64_t *l_891 = (void*)0;
    uint64_t *l_892 = &p_1504->g_110;
    int32_t *l_893 = &p_1504->g_134;
    int32_t *l_894 = (void*)0;
    int32_t *l_895[3];
    int64_t l_897[4][9][6] = {{{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L}},{{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L}},{{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L}},{{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L},{0x48A443DBF8E763C3L,0x78C28CE0572510B6L,(-5L),0x435B9F3C8EED7664L,(-1L),6L}}};
    uint32_t l_898 = 0xE5EDD694L;
    int32_t **l_901 = &l_894;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_895[i] = &l_885;
    (*l_893) = ((safe_mod_func_int8_t_s_s(0x42L, (p_58 || (safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 8))((((((*l_892) ^= ((*l_890) &= ((safe_add_func_int8_t_s_s((safe_div_func_int32_t_s_s((l_873 != (safe_lshift_func_int16_t_s_u(l_873, 1))), (safe_mul_func_uint16_t_u_u(0xE586L, (+(safe_add_func_int8_t_s_s(((VECTOR(int8_t, 4))(l_880.s3656)).w, (((l_885 = p_59) , ((*p_1504->g_349) == ((l_885 , (((VECTOR(uint32_t, 16))(l_886.s51d0fc598e670940)).s2 & ((safe_div_func_uint16_t_u_u(l_886.s9, GROUP_DIVERGE(0, 1))) > p_56))) , &p_1504->g_17[1]))) >= l_889[6][5][3])))))))), p_58)) < 6L))) == p_58) < l_886.sd) >= p_56), 0L, l_880.s3, l_880.s0, 0x6CL, ((VECTOR(int8_t, 2))((-5L))), 0x4DL)).s5, 6))))) , l_886.s9);
    ++l_898;
    return p_57;
}


/* ------------------------------------------ */
/* 
 * reads : p_1504->g_16 p_1504->g_75 p_1504->g_79 p_1504->g_80 p_1504->g_11 p_1504->g_83 p_1504->g_2 p_1504->g_92 p_1504->g_93 p_1504->g_17 p_1504->g_110 p_1504->g_134 p_1504->g_84 p_1504->g_143 p_1504->g_149 p_1504->g_190 p_1504->g_204 p_1504->g_205 p_1504->g_207 p_1504->g_215 p_1504->g_232 p_1504->g_233 p_1504->g_267 p_1504->g_256 p_1504->g_188 p_1504->g_330 p_1504->g_335 p_1504->g_349 p_1504->g_359 p_1504->g_388 p_1504->g_401 p_1504->g_405 p_1504->g_331 p_1504->g_443 p_1504->g_444 p_1504->g_453 p_1504->g_436 p_1504->g_461 p_1504->g_468 p_1504->g_550 p_1504->g_551 p_1504->g_557 p_1504->g_560 p_1504->g_561 p_1504->g_566 p_1504->g_569 p_1504->g_350 p_1504->g_591 p_1504->g_673 p_1504->g_674 p_1504->g_675 p_1504->g_676 p_1504->g_677 p_1504->g_309 p_1504->g_745 p_1504->g_757 p_1504->g_619 p_1504->g_778 p_1504->g_826 p_1504->g_855
 * writes: p_1504->g_17 p_1504->g_92 p_1504->g_93 p_1504->g_110 p_1504->g_84 p_1504->g_188 p_1504->g_190 p_1504->g_134 p_1504->g_256 p_1504->g_309 p_1504->g_335 p_1504->g_331 p_1504->g_2 p_1504->g_436 p_1504->g_330 p_1504->g_465 p_1504->g_444 p_1504->g_550 p_1504->g_566 p_1504->g_619 p_1504->g_401 p_1504->g_551 p_1504->g_16 p_1504->g_560 p_1504->g_405 p_1504->g_756 p_1504->g_468
 */
uint32_t  func_60(int16_t  p_61, int32_t  p_62, int64_t  p_63, struct S0 * p_1504)
{ /* block id: 21 */
    int32_t *l_64 = (void*)0;
    uint8_t *l_76 = &p_1504->g_17[1];
    int16_t *l_91 = &p_1504->g_92;
    int32_t l_94 = 1L;
    VECTOR(uint16_t, 16) l_101 = (VECTOR(uint16_t, 16))(7UL, (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 0xC453L), 0xC453L), 0xC453L, 7UL, 0xC453L, (VECTOR(uint16_t, 2))(7UL, 0xC453L), (VECTOR(uint16_t, 2))(7UL, 0xC453L), 7UL, 0xC453L, 7UL, 0xC453L);
    int32_t *l_104 = (void*)0;
    VECTOR(uint32_t, 16) l_130 = (VECTOR(uint32_t, 16))(0xA4C7F9B1L, (VECTOR(uint32_t, 4))(0xA4C7F9B1L, (VECTOR(uint32_t, 2))(0xA4C7F9B1L, 4294967295UL), 4294967295UL), 4294967295UL, 0xA4C7F9B1L, 4294967295UL, (VECTOR(uint32_t, 2))(0xA4C7F9B1L, 4294967295UL), (VECTOR(uint32_t, 2))(0xA4C7F9B1L, 4294967295UL), 0xA4C7F9B1L, 4294967295UL, 0xA4C7F9B1L, 4294967295UL);
    VECTOR(uint32_t, 4) l_131 = (VECTOR(uint32_t, 4))(0x45A8FD6DL, (VECTOR(uint32_t, 2))(0x45A8FD6DL, 0x4B234A56L), 0x4B234A56L);
    VECTOR(int32_t, 8) l_137 = (VECTOR(int32_t, 8))(0x5E220DBAL, (VECTOR(int32_t, 4))(0x5E220DBAL, (VECTOR(int32_t, 2))(0x5E220DBAL, (-1L)), (-1L)), (-1L), 0x5E220DBAL, (-1L));
    VECTOR(uint8_t, 16) l_142 = (VECTOR(uint8_t, 16))(0x41L, (VECTOR(uint8_t, 4))(0x41L, (VECTOR(uint8_t, 2))(0x41L, 249UL), 249UL), 249UL, 0x41L, 249UL, (VECTOR(uint8_t, 2))(0x41L, 249UL), (VECTOR(uint8_t, 2))(0x41L, 249UL), 0x41L, 249UL, 0x41L, 249UL);
    uint8_t l_178 = 0UL;
    uint64_t l_235 = 0UL;
    VECTOR(int8_t, 16) l_268 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int8_t, 2))(0L, (-1L)), (VECTOR(int8_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L));
    VECTOR(uint8_t, 2) l_279 = (VECTOR(uint8_t, 2))(0x48L, 9UL);
    VECTOR(uint8_t, 16) l_344 = (VECTOR(uint8_t, 16))(0x67L, (VECTOR(uint8_t, 4))(0x67L, (VECTOR(uint8_t, 2))(0x67L, 0x35L), 0x35L), 0x35L, 0x67L, 0x35L, (VECTOR(uint8_t, 2))(0x67L, 0x35L), (VECTOR(uint8_t, 2))(0x67L, 0x35L), 0x67L, 0x35L, 0x67L, 0x35L);
    VECTOR(int32_t, 8) l_390 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x59B2F9ECL), 0x59B2F9ECL), 0x59B2F9ECL, (-9L), 0x59B2F9ECL);
    VECTOR(uint8_t, 8) l_404 = (VECTOR(uint8_t, 8))(0x4EL, (VECTOR(uint8_t, 4))(0x4EL, (VECTOR(uint8_t, 2))(0x4EL, 2UL), 2UL), 2UL, 0x4EL, 2UL);
    VECTOR(int32_t, 2) l_449 = (VECTOR(int32_t, 2))(0x560B7973L, (-1L));
    VECTOR(uint64_t, 16) l_469 = (VECTOR(uint64_t, 16))(18446744073709551610UL, (VECTOR(uint64_t, 4))(18446744073709551610UL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 1UL), 1UL), 1UL, 18446744073709551610UL, 1UL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 1UL), (VECTOR(uint64_t, 2))(18446744073709551610UL, 1UL), 18446744073709551610UL, 1UL, 18446744073709551610UL, 1UL);
    VECTOR(uint64_t, 4) l_477 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551610UL), 18446744073709551610UL);
    VECTOR(int16_t, 8) l_515 = (VECTOR(int16_t, 8))(0x53DDL, (VECTOR(int16_t, 4))(0x53DDL, (VECTOR(int16_t, 2))(0x53DDL, 0x0ABBL), 0x0ABBL), 0x0ABBL, 0x53DDL, 0x0ABBL);
    VECTOR(int16_t, 16) l_556 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-2L)), (-2L)), (-2L), 1L, (-2L), (VECTOR(int16_t, 2))(1L, (-2L)), (VECTOR(int16_t, 2))(1L, (-2L)), 1L, (-2L), 1L, (-2L));
    uint32_t l_598[9] = {0xE18E46D1L,0xE18E46D1L,0xE18E46D1L,0xE18E46D1L,0xE18E46D1L,0xE18E46D1L,0xE18E46D1L,0xE18E46D1L,0xE18E46D1L};
    VECTOR(uint8_t, 8) l_631 = (VECTOR(uint8_t, 8))(0xFDL, (VECTOR(uint8_t, 4))(0xFDL, (VECTOR(uint8_t, 2))(0xFDL, 250UL), 250UL), 250UL, 0xFDL, 250UL);
    VECTOR(int64_t, 2) l_649 = (VECTOR(int64_t, 2))((-9L), 0x6C511F9488A68CCBL);
    uint16_t l_658 = 4UL;
    VECTOR(int32_t, 4) l_661 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x5F608C41L), 0x5F608C41L);
    int64_t *l_724 = &p_1504->g_331;
    VECTOR(int64_t, 4) l_744 = (VECTOR(int64_t, 4))(0x42122DEEF94759D2L, (VECTOR(int64_t, 2))(0x42122DEEF94759D2L, 0L), 0L);
    VECTOR(uint8_t, 2) l_751 = (VECTOR(uint8_t, 2))(3UL, 0UL);
    int32_t l_803[2];
    int i;
    for (i = 0; i < 2; i++)
        l_803[i] = (-1L);
    l_64 = l_64;
    if (((safe_lshift_func_int8_t_s_u((safe_lshift_func_int8_t_s_s((safe_sub_func_uint8_t_u_u((safe_div_func_uint8_t_u_u(((safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_1504->group_0_offset, get_group_id(0), 10), ((((void*)0 != &l_64) >= (p_1504->g_16 || ((*l_76) = ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_1504->g_75.yx)), 0UL, 0x98L)).z))) >= p_63))) <= (safe_mod_func_int32_t_s_s((((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 4))(p_1504->g_79.s7010)).hi, ((VECTOR(int64_t, 16))(p_1504->g_80.s1445373556221742)).s51, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))((-1L), 0x29C6149AF40839CAL)), 0x38662677E161529AL, 0x0A08677A3B2FE496L)).hi))).odd | (((safe_div_func_int16_t_s_s((((p_1504->g_11 , (((p_1504->g_83 == (void*)0) <= (safe_lshift_func_uint8_t_u_s((safe_rshift_func_int16_t_s_s((p_1504->g_93 &= ((*l_91) |= (safe_mod_func_uint64_t_u_u(p_61, p_1504->g_2)))), p_1504->g_11)), p_1504->g_75.x))) == l_94)) || p_63) != p_62), p_1504->g_16)) >= p_61) == p_1504->g_11)), 0x35F75703L))), 252UL)), p_62)), p_1504->g_75.x)), 0)) , p_62))
    { /* block id: 26 */
        VECTOR(uint16_t, 16) l_99 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x5339L), 0x5339L), 0x5339L, 1UL, 0x5339L, (VECTOR(uint16_t, 2))(1UL, 0x5339L), (VECTOR(uint16_t, 2))(1UL, 0x5339L), 1UL, 0x5339L, 1UL, 0x5339L);
        VECTOR(uint16_t, 4) l_100 = (VECTOR(uint16_t, 4))(0xB10BL, (VECTOR(uint16_t, 2))(0xB10BL, 0xD427L), 0xD427L);
        uint16_t *l_105 = (void*)0;
        int32_t l_106 = (-2L);
        int8_t l_158 = (-5L);
        int32_t l_175 = 0x4C425AE9L;
        int32_t l_177[1];
        VECTOR(int32_t, 16) l_214 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int32_t, 2))(0L, 0L), (VECTOR(int32_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
        int16_t l_257 = 0x00FFL;
        uint64_t l_299 = 0x8EA8668655AB4E19L;
        int32_t l_300 = (-5L);
        int8_t l_301[4][6] = {{0x2AL,0x1BL,0L,0x1BL,0x2AL,0x2AL},{0x2AL,0x1BL,0L,0x1BL,0x2AL,0x2AL},{0x2AL,0x1BL,0L,0x1BL,0x2AL,0x2AL},{0x2AL,0x1BL,0L,0x1BL,0x2AL,0x2AL}};
        uint32_t *l_371[2];
        int16_t l_398 = 0L;
        VECTOR(int32_t, 2) l_406 = (VECTOR(int32_t, 2))((-9L), 8L);
        VECTOR(uint64_t, 4) l_478 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x4B6FA84AEBBB2DFAL), 0x4B6FA84AEBBB2DFAL);
        uint32_t **l_490 = &l_371[0];
        int8_t l_510 = 1L;
        int16_t *l_526 = (void*)0;
        VECTOR(int32_t, 4) l_570 = (VECTOR(int32_t, 4))(0x45D0B2C5L, (VECTOR(int32_t, 2))(0x45D0B2C5L, 1L), 1L);
        int32_t *l_644 = &l_175;
        VECTOR(uint8_t, 2) l_660 = (VECTOR(uint8_t, 2))(0x8BL, 7UL);
        VECTOR(int32_t, 2) l_685 = (VECTOR(int32_t, 2))(0L, (-1L));
        int8_t **l_704[4][6][2] = {{{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0}},{{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0}},{{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0}},{{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0},{&p_1504->g_465[0][0],(void*)0}}};
        uint16_t l_719 = 5UL;
        int64_t *l_725 = &p_1504->g_331;
        VECTOR(uint16_t, 8) l_752 = (VECTOR(uint16_t, 8))(0xCA0EL, (VECTOR(uint16_t, 4))(0xCA0EL, (VECTOR(uint16_t, 2))(0xCA0EL, 1UL), 1UL), 1UL, 0xCA0EL, 1UL);
        VECTOR(int32_t, 4) l_753 = (VECTOR(int32_t, 4))(0x3562051FL, (VECTOR(int32_t, 2))(0x3562051FL, 8L), 8L);
        VECTOR(uint32_t, 16) l_758 = (VECTOR(uint32_t, 16))(0x8A46C34FL, (VECTOR(uint32_t, 4))(0x8A46C34FL, (VECTOR(uint32_t, 2))(0x8A46C34FL, 4294967295UL), 4294967295UL), 4294967295UL, 0x8A46C34FL, 4294967295UL, (VECTOR(uint32_t, 2))(0x8A46C34FL, 4294967295UL), (VECTOR(uint32_t, 2))(0x8A46C34FL, 4294967295UL), 0x8A46C34FL, 4294967295UL, 0x8A46C34FL, 4294967295UL);
        int64_t l_807 = (-4L);
        int32_t l_810 = 0x14219F7FL;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_177[i] = 0x58F65C06L;
        for (i = 0; i < 2; i++)
            l_371[i] = (void*)0;
        if ((18446744073709551607UL < (safe_rshift_func_uint8_t_u_s(((((safe_div_func_uint8_t_u_u((((p_61 > (((*l_76) = 0x7CL) , (l_106 = ((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),VECTOR(uint16_t, 16),((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(0x36DAL, 0UL)))).yxyxyxyxxxxyxxyy, ((VECTOR(uint16_t, 2))(l_99.sfe)).xyxxyyxyxyxxxyxx, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(l_100.zwwzwwwz)).s61)).xxxyxxyxxyyxxxyx))).hi, ((VECTOR(uint16_t, 4))(l_101.s91c2)).yxwwyyzw, ((VECTOR(uint16_t, 8))((((safe_mod_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (p_1504->g_11 & 1UL))) , l_104) != (void*)0), ((VECTOR(uint16_t, 4))(p_1504->g_17[2], ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 4))(p_1504->g_75.y, l_99.sa, 0xC62CL, 8UL)), ((VECTOR(uint16_t, 4))(0xB006L))))), ((VECTOR(uint16_t, 4))(6UL))))).even, ((VECTOR(uint16_t, 2))(65535UL))))))), 65535UL)), l_100.z, 1UL, 0UL))))).s5))) , 65528UL) > FAKE_DIVERGE(p_1504->local_0_offset, get_local_id(0), 10)), p_1504->g_79.s7)) <= 0x28L) ^ p_62) && p_1504->g_93), p_1504->g_92))))
        { /* block id: 29 */
            uint64_t *l_109 = &p_1504->g_110;
            int32_t l_113 = 0L;
            int32_t *l_135 = (void*)0;
            int32_t *l_136 = &l_106;
            int32_t l_164 = 0x34AC4052L;
            int32_t l_165 = (-1L);
            int32_t l_171 = 0x58216C10L;
            int32_t l_174 = 9L;
            VECTOR(int32_t, 8) l_184 = (VECTOR(int32_t, 8))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0x5BB9092BL), 0x5BB9092BL), 0x5BB9092BL, 2L, 0x5BB9092BL);
            VECTOR(int32_t, 8) l_206 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
            VECTOR(int8_t, 16) l_269 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
            uint16_t l_298 = 0UL;
            int16_t l_368 = 0x24BDL;
            uint64_t l_369 = 1UL;
            VECTOR(int32_t, 2) l_474 = (VECTOR(int32_t, 2))(0x65E17556L, 3L);
            int32_t l_501[6][2][7] = {{{0L,4L,0x44EF459CL,0x25989EA0L,0x7FF2BA08L,0x25989EA0L,0x44EF459CL},{0L,4L,0x44EF459CL,0x25989EA0L,0x7FF2BA08L,0x25989EA0L,0x44EF459CL}},{{0L,4L,0x44EF459CL,0x25989EA0L,0x7FF2BA08L,0x25989EA0L,0x44EF459CL},{0L,4L,0x44EF459CL,0x25989EA0L,0x7FF2BA08L,0x25989EA0L,0x44EF459CL}},{{0L,4L,0x44EF459CL,0x25989EA0L,0x7FF2BA08L,0x25989EA0L,0x44EF459CL},{0L,4L,0x44EF459CL,0x25989EA0L,0x7FF2BA08L,0x25989EA0L,0x44EF459CL}},{{0L,4L,0x44EF459CL,0x25989EA0L,0x7FF2BA08L,0x25989EA0L,0x44EF459CL},{0L,4L,0x44EF459CL,0x25989EA0L,0x7FF2BA08L,0x25989EA0L,0x44EF459CL}},{{0L,4L,0x44EF459CL,0x25989EA0L,0x7FF2BA08L,0x25989EA0L,0x44EF459CL},{0L,4L,0x44EF459CL,0x25989EA0L,0x7FF2BA08L,0x25989EA0L,0x44EF459CL}},{{0L,4L,0x44EF459CL,0x25989EA0L,0x7FF2BA08L,0x25989EA0L,0x44EF459CL},{0L,4L,0x44EF459CL,0x25989EA0L,0x7FF2BA08L,0x25989EA0L,0x44EF459CL}}};
            int64_t l_522 = 4L;
            VECTOR(uint32_t, 2) l_553 = (VECTOR(uint32_t, 2))(0x6C6E5F92L, 0x51E4ED06L);
            VECTOR(int16_t, 8) l_558 = (VECTOR(int16_t, 8))(0x0FC1L, (VECTOR(int16_t, 4))(0x0FC1L, (VECTOR(int16_t, 2))(0x0FC1L, 1L), 1L), 1L, 0x0FC1L, 1L);
            VECTOR(int16_t, 16) l_563 = (VECTOR(int16_t, 16))(0x5FD1L, (VECTOR(int16_t, 4))(0x5FD1L, (VECTOR(int16_t, 2))(0x5FD1L, 0x6728L), 0x6728L), 0x6728L, 0x5FD1L, 0x6728L, (VECTOR(int16_t, 2))(0x5FD1L, 0x6728L), (VECTOR(int16_t, 2))(0x5FD1L, 0x6728L), 0x5FD1L, 0x6728L, 0x5FD1L, 0x6728L);
            uint8_t **l_571 = &l_76;
            VECTOR(uint8_t, 4) l_574 = (VECTOR(uint8_t, 4))(251UL, (VECTOR(uint8_t, 2))(251UL, 255UL), 255UL);
            VECTOR(uint16_t, 4) l_587 = (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0UL), 0UL);
            int32_t *l_593 = (void*)0;
            int32_t *l_594 = &l_300;
            int32_t *l_595 = (void*)0;
            int32_t *l_596 = &l_501[1][0][5];
            int32_t *l_597[1][1][8] = {{{&l_177[0],(void*)0,&l_177[0],&l_177[0],(void*)0,&l_177[0],&l_177[0],(void*)0}}};
            int i, j, k;
lbl_420:
            l_113 &= (safe_div_func_uint64_t_u_u((--(*l_109)), (-8L)));
            if ((l_137.s7 ^= ((*l_136) = ((safe_mod_func_uint64_t_u_u(((0xA275L < (safe_add_func_uint32_t_u_u(((((p_63 , (safe_sub_func_int16_t_s_s(((void*)0 == l_76), (((safe_div_func_uint64_t_u_u((safe_mul_func_int16_t_s_s((safe_sub_func_int8_t_s_s((p_1504->g_92 , ((safe_mod_func_uint64_t_u_u((safe_div_func_uint8_t_u_u(((((((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 8))(l_130.s80b9c827)), ((VECTOR(uint32_t, 16))(l_131.ywyxzyxzxwywwzzz)).lo))).s2 , l_105) != ((safe_lshift_func_int16_t_s_s(((0x36L <= ((p_1504->g_93 > GROUP_DIVERGE(1, 1)) <= (-1L))) && p_63), 5)) , l_105)) >= 5L) , p_63), GROUP_DIVERGE(2, 1))), p_63)) != 0x0FL)), p_1504->g_92)), p_1504->g_92)), 0x73AF25C912EA93CCL)) , 0x65C328A76B0EF2B8L) < p_1504->g_79.s7)))) < 0x97764D01L) , p_1504->g_134) > (-1L)), (**p_1504->g_83)))) || (-1L)), l_113)) >= p_63))))
            { /* block id: 34 */
                VECTOR(uint32_t, 4) l_144 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4UL), 4UL);
                int32_t l_162[3];
                int64_t l_163[5][5][2] = {{{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L}},{{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L}},{{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L}},{{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L}},{{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L},{0x558820E6599F55FBL,0x6C76D5697FC644E5L}}};
                int8_t l_176 = 0x40L;
                int32_t *l_185[2][7] = {{&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106},{&l_106,&l_106,&l_106,&l_106,&l_106,&l_106,&l_106}};
                uint32_t l_209 = 4294967292UL;
                uint32_t l_250[6] = {0UL,0x5ECB414FL,0UL,0UL,0x5ECB414FL,0UL};
                VECTOR(int8_t, 4) l_264 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x6EL), 0x6EL);
                VECTOR(int8_t, 8) l_278 = (VECTOR(int8_t, 8))(0x4FL, (VECTOR(int8_t, 4))(0x4FL, (VECTOR(int8_t, 2))(0x4FL, 0x35L), 0x35L), 0x35L, 0x4FL, 0x35L);
                VECTOR(uint8_t, 2) l_280 = (VECTOR(uint8_t, 2))(1UL, 0x80L);
                VECTOR(int64_t, 8) l_320 = (VECTOR(int64_t, 8))((-5L), (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), 0L), 0L), 0L, (-5L), 0L);
                uint8_t *l_327 = &p_1504->g_190;
                uint8_t **l_328 = (void*)0;
                uint8_t **l_329 = &l_76;
                VECTOR(uint32_t, 2) l_339 = (VECTOR(uint32_t, 2))(0x29BD0EFDL, 0xFEB35889L);
                VECTOR(int16_t, 16) l_399 = (VECTOR(int16_t, 16))(0x0826L, (VECTOR(int16_t, 4))(0x0826L, (VECTOR(int16_t, 2))(0x0826L, 1L), 1L), 1L, 0x0826L, 1L, (VECTOR(int16_t, 2))(0x0826L, 1L), (VECTOR(int16_t, 2))(0x0826L, 1L), 0x0826L, 1L, 0x0826L, 1L);
                uint32_t *l_415 = (void*)0;
                int i, j, k;
                for (i = 0; i < 3; i++)
                    l_162[i] = (-1L);
                if ((((safe_mul_func_int16_t_s_s((-4L), ((safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(l_142.sa523a5b0)).s36)).xxxxyxyx)).s1110556226135101, ((VECTOR(uint8_t, 2))(p_1504->g_143.s11)).xyxxxyxyyyxxxxxx))).sa, p_63)) , ((((VECTOR(uint32_t, 2))(l_144.xx)).lo && (-3L)) > (safe_rshift_func_int16_t_s_u(((safe_mod_func_uint32_t_u_u((((VECTOR(int32_t, 4))(p_1504->g_149.wxwx)).y && ((((safe_mul_func_int8_t_s_s(l_144.y, (safe_sub_func_int32_t_s_s((**p_1504->g_83), ((safe_lshift_func_int16_t_s_u((!0x3741L), 6)) , FAKE_DIVERGE(p_1504->global_1_offset, get_global_id(1), 10)))))) > ((p_1504->g_143.s1 > p_1504->g_75.y) != (safe_div_func_int64_t_s_s((l_158 | (*p_1504->g_84)), p_1504->g_11)))) || (-1L)) && p_1504->g_143.s0)), p_63)) > p_1504->g_75.x), 14)))))) >= GROUP_DIVERGE(0, 1)) > 0xAFF6L))
                { /* block id: 35 */
                    uint8_t l_166 = 0xC4L;
                    int32_t l_169 = 1L;
                    int32_t l_170 = 0x1A3159ADL;
                    int32_t l_172 = 2L;
                    int32_t l_173[10][4] = {{0x3BE719ACL,(-1L),0x3BE719ACL,0x3BE719ACL},{0x3BE719ACL,(-1L),0x3BE719ACL,0x3BE719ACL},{0x3BE719ACL,(-1L),0x3BE719ACL,0x3BE719ACL},{0x3BE719ACL,(-1L),0x3BE719ACL,0x3BE719ACL},{0x3BE719ACL,(-1L),0x3BE719ACL,0x3BE719ACL},{0x3BE719ACL,(-1L),0x3BE719ACL,0x3BE719ACL},{0x3BE719ACL,(-1L),0x3BE719ACL,0x3BE719ACL},{0x3BE719ACL,(-1L),0x3BE719ACL,0x3BE719ACL},{0x3BE719ACL,(-1L),0x3BE719ACL,0x3BE719ACL},{0x3BE719ACL,(-1L),0x3BE719ACL,0x3BE719ACL}};
                    int32_t l_228 = (-3L);
                    VECTOR(int16_t, 4) l_247 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x648BL), 0x648BL);
                    int i, j;
                    if (p_63)
                    { /* block id: 36 */
                        int32_t *l_160 = &p_1504->g_134;
                        int32_t *l_161[4][5] = {{&p_1504->g_134,(void*)0,&p_1504->g_134,(void*)0,&p_1504->g_134},{&p_1504->g_134,(void*)0,&p_1504->g_134,(void*)0,&p_1504->g_134},{&p_1504->g_134,(void*)0,&p_1504->g_134,(void*)0,&p_1504->g_134},{&p_1504->g_134,(void*)0,&p_1504->g_134,(void*)0,&p_1504->g_134}};
                        int32_t **l_183 = &p_1504->g_84;
                        uint16_t *l_186 = (void*)0;
                        uint16_t *l_187[9][1][7] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                        int64_t *l_189 = &l_163[1][1][0];
                        int8_t *l_208 = &l_158;
                        int i, j, k;
                        ++l_166;
                        ++l_178;
                        p_1504->g_134 = ((p_1504->g_190 ^= ((*l_189) = ((safe_mul_func_uint16_t_u_u((((*l_183) = &l_173[6][3]) == (((VECTOR(int32_t, 8))(l_184.s12462706)).s5 , l_185[1][6])), (p_1504->g_188 = (p_1504->g_80.s6 | p_62)))) <= p_1504->g_75.x))) , (((*l_208) = ((safe_mul_func_int8_t_s_s((((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 2))(65535UL, 0x3610L)).yyxx))).w == (safe_mod_func_int8_t_s_s((safe_sub_func_int16_t_s_s((safe_rshift_func_int16_t_s_s(((safe_unary_minus_func_uint32_t_u((~0x41EF775BL))) >= ((safe_add_func_int16_t_s_s(((*l_91) = (safe_mul_func_uint16_t_u_u(((*l_136) || ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 8))(p_1504->g_204.zyzxwwwz)).s63, ((VECTOR(int32_t, 16))(p_1504->g_205.xyxyxxyxxyyyxyxy)).se0))).yxxxxyyx, ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_206.s44)))), 6L, 0x6B5DBAF2L)).xxzwxywxyzywzwwz)).s1d2b, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_1504->g_207.s7554)), 0L, 0x70F1770DL, (l_106 <= p_61), ((VECTOR(int32_t, 8))(0x4290DDE9L)), 0x2C3DA445L)).s6694))))).zxzzzwwy, ((VECTOR(int32_t, 8))(0L))))).s25, ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))(0x3A18F781L))))), ((VECTOR(int32_t, 2))((-8L))), ((VECTOR(int32_t, 2))((-8L)))))).even), 0x5D60L))), 0x2902L)) == (-2L))), 0)), 1UL)), (-7L)))), p_62)) == p_63)) && FAKE_DIVERGE(p_1504->group_0_offset, get_group_id(0), 10)));
                    }
                    else
                    { /* block id: 46 */
                        int8_t *l_224 = &l_158;
                        VECTOR(int32_t, 2) l_227 = (VECTOR(int32_t, 2))(0x41DCC979L, 0x304DB0A4L);
                        int32_t l_231 = (-1L);
                        int8_t *l_234 = &l_176;
                        int i;
                        l_209 = (*p_1504->g_84);
                        (*l_136) = ((safe_rshift_func_int16_t_s_u((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(0x24E1F72AL, 3L)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_214.sf94d)).odd)), ((VECTOR(int32_t, 4))(p_1504->g_215.yxyx)).lo))).xxyx)), ((VECTOR(int32_t, 4))((((((**p_1504->g_83) | p_1504->g_110) , (((*l_234) = ((safe_mul_func_uint16_t_u_u(((safe_sub_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(p_1504->g_16, 6)), (safe_add_func_uint32_t_u_u(((l_224 != ((((*l_76) = ((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 16))(l_227.xyyxxyyxyxxxxyyy)).sac24, (int32_t)(l_228 = (l_227.y = (FAKE_DIVERGE(p_1504->local_0_offset, get_local_id(0), 10) ^ l_175))), (int32_t)(**p_1504->g_83)))).y, ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(0x074CD0BBL, 0x75DBE1A9L, ((((*l_224) = 6L) , (((safe_div_func_uint32_t_u_u((l_169 = 0x0DC95D9EL), l_231)) , p_1504->g_232) == (void*)0)) , (**p_1504->g_83)), p_63, (**p_1504->g_83), (**p_1504->g_83), 0L, (-5L))), ((VECTOR(int32_t, 8))((-10L))), ((VECTOR(int32_t, 8))((-4L)))))).s5603674125265766, ((VECTOR(int32_t, 16))(1L))))).s7)) > 0x03L)) & p_61) , (void*)0)) & (*p_1504->g_232)), 0x5BB2E2C5L)))) <= p_1504->g_207.s7), p_1504->g_134)) , 0x71L)) == p_62)) != 0x77F7L) ^ p_1504->g_75.y), ((VECTOR(int32_t, 2))((-5L))), 0x076C9852L))))).zywyyyyyzyyyxxyy)).s57, ((VECTOR(int32_t, 2))(0L))))).hi, p_1504->g_207.s4)), 11)) == p_61);
                        l_235 = (**p_1504->g_83);
                    }
                    (*l_136) = (safe_rshift_func_int16_t_s_s(p_63, 4));
                    for (l_176 = 9; (l_176 > (-17)); l_176--)
                    { /* block id: 60 */
                        uint32_t l_240 = 0xDB16D8EFL;
                        VECTOR(uint8_t, 2) l_253 = (VECTOR(uint8_t, 2))(0xC9L, 0UL);
                        uint16_t *l_254[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        uint32_t *l_255 = &p_1504->g_256;
                        int i;
                        (*l_136) &= ((**p_1504->g_83) != l_240);
                        l_257 &= ((safe_mod_func_int64_t_s_s((safe_mod_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((*l_91) = ((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x3563L, (-3L))).yxyyyyyy)).s1513221611437174, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(l_247.wwwyxwzzxwzzwxxw)).s0416)), p_1504->g_207.s1, 1L, (safe_mod_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), 8L)), 1L, (l_250[5] & (**p_1504->g_83)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))((safe_mul_func_int16_t_s_s((l_247.w != (**p_1504->g_83)), p_61)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 2))(0x7AL, (-1L))).yxxx, ((VECTOR(uint8_t, 16))(246UL, 0xCAL, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(l_253.xx)))).xxxxyxxy, ((VECTOR(uint8_t, 2))(1UL, 3UL)).yxyyxxxx, ((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 16))((GROUP_DIVERGE(1, 1) >= (((*l_255) = (((*p_1504->g_232) , l_254[2]) != (void*)0)) , l_214.s9)), ((VECTOR(uint8_t, 2))(0x64L)), ((VECTOR(uint8_t, 2))(1UL)), FAKE_DIVERGE(p_1504->local_1_offset, get_local_id(1), 10), 246UL, p_1504->g_79.s2, l_253.x, ((VECTOR(uint8_t, 2))(248UL)), ((VECTOR(uint8_t, 4))(0x88L)), 0UL)), ((VECTOR(uint8_t, 16))(0xDDL))))), ((VECTOR(uint8_t, 16))(9UL)), ((VECTOR(uint8_t, 16))(0x5AL))))).lo))))), 1UL, ((VECTOR(uint8_t, 4))(254UL)), 0xC7L)).sd45e))).hi)), (-1L), 0x6BB0L, 1L, 0x451AL, 0x2622L)).lo)).hi)).xyyx)), ((VECTOR(int16_t, 2))(0x44DAL)), 1L))))).s9), 0x50E1L)), p_1504->g_207.s3)), 0xDA4C1F5CB25AF851L)) , (*p_1504->g_84));
                        if (p_63)
                            break;
                    }
                }
                else
                { /* block id: 67 */
                    int8_t *l_265 = (void*)0;
                    int8_t *l_266 = &l_176;
                    uint32_t *l_283 = &p_1504->g_256;
                    uint32_t *l_294 = (void*)0;
                    uint32_t *l_295 = (void*)0;
                    uint32_t *l_296 = (void*)0;
                    uint32_t *l_297 = (void*)0;
                    int64_t *l_302 = &l_163[2][4][0];
                    int32_t l_321[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_321[i] = 0L;
                    l_175 = ((((*l_302) = (safe_mod_func_int8_t_s_s((-6L), ((safe_mod_func_int64_t_s_s((((safe_rshift_func_int8_t_s_u((((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(l_264.zxyzxzyxxwxzyyxy)).sec24)).wxyxwyyy, (int8_t)((*l_266) = 0L)))), ((VECTOR(int8_t, 4))(2L, 8L, 0x57L, 0x79L)).zyzyyyyy))).s0477320364053327, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 8))(0x53L, 255UL, ((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(p_1504->g_267.zzwy)).lo)), 0x73L, ((VECTOR(int8_t, 2))(l_268.s37)), 1L, 0L, 1L)).lo, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 16))(l_269.s7eb242ab39a41f48)).s93dd, ((VECTOR(int8_t, 16))((p_61 != ((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x3EL, 1L)).xxyxyyxx)), (int8_t)(GROUP_DIVERGE(2, 1) | ((safe_mod_func_int64_t_s_s((((safe_div_func_int8_t_s_s((safe_add_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_u(0xC3L, (((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(7UL, 255UL, 0xC3L, 0UL)).ywwyzzxywywzzzxz)), ((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),VECTOR(uint8_t, 4),((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(int8_t, 2))(0x24L, 0x0BL)).xyyy, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_278.s71)), 1L, 0x45L))))).zxxwxxxw, ((VECTOR(uint8_t, 16))(safe_clamp_func(VECTOR(uint8_t, 16),uint8_t,((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 16))(l_279.xxyyyxxxyxyxxyxx)).sfcd2, ((VECTOR(uint8_t, 4))(l_280.xyxy))))).zzywxwzw)).even)), (safe_rshift_func_int16_t_s_u(((void*)0 == (*p_1504->g_83)), ((--(*l_283)) , (safe_mul_func_uint16_t_u_u(p_62, (safe_rshift_func_uint8_t_u_s((safe_div_func_int8_t_s_s((safe_add_func_uint32_t_u_u((l_214.s6 = (((((VECTOR(uint64_t, 2))(0xBF89DE6CA525512EL, 0xC1006E64D8D01C44L)).hi && ((void*)0 != &p_1504->g_84)) || 0x3AC8L) , FAKE_DIVERGE(p_1504->group_1_offset, get_group_id(1), 10))), l_298)), p_61)), p_62))))))), 0x35L, 255UL, 0x09L)), ((VECTOR(uint8_t, 8))(0x07L)), ((VECTOR(uint8_t, 8))(0x16L))))).s2336023711266205, (uint8_t)0UL, (uint8_t)255UL))).hi))).odd, ((VECTOR(uint8_t, 4))(252UL)), ((VECTOR(uint8_t, 4))(246UL))))), ((VECTOR(uint8_t, 4))(8UL))))).wxyyxyxwyyxyyxxy))), (uint8_t)FAKE_DIVERGE(p_1504->group_1_offset, get_group_id(1), 10)))).hi, (uint8_t)p_1504->g_80.s1))).s0 <= 0xA9L))), 0x5D11AE85L)), 0x06L)) , 1L) >= FAKE_DIVERGE(p_1504->global_0_offset, get_global_id(0), 10)), p_63)) == p_1504->g_11))))).s2), 1L, ((VECTOR(int8_t, 4))(0x24L)), 0x7DL, ((VECTOR(int8_t, 8))(0x73L)), 0x65L)).sae4b))).even)).yxxx))).lo)).yyyyyyxyyxyyxxxy)).hi, ((VECTOR(uint8_t, 8))(0xA3L))))).even, ((VECTOR(uint8_t, 4))(0UL))))), 255UL, 0x06L)).s7324722454204450, ((VECTOR(uint8_t, 16))(0x07L))))).sdbf3)).yzxwxwwwyxzyxwxy))).sc < p_63), FAKE_DIVERGE(p_1504->local_1_offset, get_local_id(1), 10))) || l_299) == l_300), l_301[0][0])) , p_61)))) ^ (*l_136)) <= (**p_1504->g_83));
                    for (p_61 = (-6); (p_61 <= 26); p_61 = safe_add_func_int8_t_s_s(p_61, 9))
                    { /* block id: 75 */
                        uint16_t *l_324 = &l_298;
                        (*p_1504->g_83) = (void*)0;
                        (*l_136) = (safe_rshift_func_int8_t_s_u(((safe_div_func_uint8_t_u_u((((p_1504->g_309 = p_63) , (safe_mod_func_int64_t_s_s((((*l_91) |= ((((safe_mod_func_uint64_t_u_u(((((*l_302) &= (safe_div_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(l_320.s72444305)))).s66)).lo != ((p_62 | l_321[0]) == p_61)) != ((VECTOR(uint64_t, 2))(0xABEB17A40FEAA9D3L, 0x3A902455BDA06170L)).hi), ((*l_324) = (safe_lshift_func_uint16_t_u_u((6L == l_158), 12))))), p_61)), (safe_sub_func_uint16_t_u_u((4294967291UL || ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(6L, 0L, 0x40618F4EL, 0x038A191DL)).zywzwzyw)).s1), p_62))))) , p_62) == 0x660FD851L), p_63)) ^ 0x0A1CL) , p_1504->g_233) , p_61)) < p_1504->g_188), 18446744073709551609UL))) , p_1504->g_134), p_1504->g_17[2])) | p_1504->g_110), 0));
                    }
                    return p_61;
                }
                (*l_136) = ((((l_185[1][0] != l_64) , l_327) == ((*l_329) = &p_1504->g_17[1])) || p_1504->g_16);
                if (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(p_1504->g_330.sbbeadc1cbe06b8d2)))).sb0)))), (-1L), (-1L))).y)
                { /* block id: 87 */
                    uint16_t *l_332 = (void*)0;
                    uint16_t *l_333[5][1][3] = {{{(void*)0,&l_298,(void*)0}},{{(void*)0,&l_298,(void*)0}},{{(void*)0,&l_298,(void*)0}},{{(void*)0,&l_298,(void*)0}},{{(void*)0,&l_298,(void*)0}}};
                    int32_t l_334 = 0L;
                    int32_t l_338 = 1L;
                    VECTOR(int32_t, 16) l_360 = (VECTOR(int32_t, 16))(0x5BAD54A6L, (VECTOR(int32_t, 4))(0x5BAD54A6L, (VECTOR(int32_t, 2))(0x5BAD54A6L, 0x721546B4L), 0x721546B4L), 0x721546B4L, 0x5BAD54A6L, 0x721546B4L, (VECTOR(int32_t, 2))(0x5BAD54A6L, 0x721546B4L), (VECTOR(int32_t, 2))(0x5BAD54A6L, 0x721546B4L), 0x5BAD54A6L, 0x721546B4L, 0x5BAD54A6L, 0x721546B4L);
                    int16_t *l_367 = &l_257;
                    int64_t *l_370[2];
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_370[i] = (void*)0;
                    (*l_136) ^= (((0x1333L > (--p_1504->g_335)) >= 0x7FEB0DE3L) < 4294967295UL);
                    l_339.x--;
                    l_137.s1 |= (l_64 != ((((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 8))(l_344.s7e4f9625)).even, ((VECTOR(uint8_t, 4))((safe_rshift_func_int16_t_s_u((l_338 != (p_1504->g_331 = (((safe_lshift_func_int8_t_s_u(((((void*)0 == p_1504->g_349) || ((((safe_sub_func_int32_t_s_s(((((p_62 == ((*l_367) = (0x0E96L || ((~(+(((safe_mul_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(((((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x7CA3D864L, 0L)).yyyyyxxy)), ((VECTOR(int32_t, 4))(p_1504->g_359.s0166)).wzyzzyyx))).s5 , ((8L >= ((*l_136) |= ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 4))(l_360.sf29f)).wzyxzzyywxzwwxxy))), ((VECTOR(int32_t, 16))(((safe_sub_func_int32_t_s_s(((safe_sub_func_int16_t_s_s((!((*l_91) ^= 0x70A2L)), (safe_div_func_int16_t_s_s(p_1504->g_207.s5, l_360.s0)))) , p_62), p_61)) & p_63), 6L, p_1504->g_80.s6, p_61, 0x0927D9AAL, ((VECTOR(int32_t, 2))(0x356F701CL)), p_61, 0x196880F5L, 0x070678D7L, 3L, 7L, 0x46FF8D6FL, (-1L), (-9L), 0L))))).s5)) > p_1504->g_93)) & l_300), l_334)), 0x45CDL)) > p_1504->g_2) & p_63))) || 0L)))) == l_360.s9) != 0L) <= p_63), l_368)) == p_63) && l_369) , p_1504->g_359.s5)) || p_63), p_62)) , &p_1504->g_256) == (void*)0))), p_1504->g_188)), 0UL, 0x7EL, 0x3BL))))))).y, 0x65L)) == 0x49L) & p_61) , l_371[0]));
                }
                else
                { /* block id: 96 */
                    uint64_t *l_374[8] = {&l_369,&l_369,&l_369,&l_369,&l_369,&l_369,&l_369,&l_369};
                    VECTOR(int32_t, 2) l_385 = (VECTOR(int32_t, 2))(0x5252CC8EL, 0x7662C58EL);
                    VECTOR(int32_t, 4) l_389 = (VECTOR(int32_t, 4))(0x3134B618L, (VECTOR(int32_t, 2))(0x3134B618L, 0L), 0L);
                    VECTOR(int32_t, 4) l_391 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x19CAD8E4L), 0x19CAD8E4L);
                    uint32_t *l_397[9][10][2] = {{{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209}},{{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209}},{{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209}},{{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209}},{{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209}},{{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209}},{{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209}},{{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209}},{{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209},{&l_209,&l_209}}};
                    int64_t *l_400 = &l_163[2][2][0];
                    int i, j, k;
                    l_137.s2 ^= ((*l_136) = 0L);
                    for (l_178 = (-27); (l_178 >= 22); l_178 = safe_add_func_uint8_t_u_u(l_178, 3))
                    { /* block id: 101 */
                        uint16_t l_394 = 0x0129L;
                        (*p_1504->g_83) = (((void*)0 != l_374[1]) , &l_164);
                        if (p_61)
                            continue;
                        (*p_1504->g_84) = (0x0C3EF0E7L <= p_63);
                        l_394 |= ((safe_mod_func_int64_t_s_s((l_385.x = ((safe_mod_func_int64_t_s_s(((safe_rshift_func_uint8_t_u_u(((p_1504->g_110 = 0xC3184ADC3DF89C71L) & (safe_mod_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((((p_61 && l_214.s6) >= ((l_385.x || 1UL) ^ (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(0L, 0x53836E7EL, 0x6C22B56AL, (0x3A9716F1L == (safe_mul_func_uint16_t_u_u((*p_1504->g_232), p_63))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(p_1504->g_388.s16)).yxyxxxyx, ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(l_389.wzzy)).odd, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0L, 9L)).yyyx)).odd, ((VECTOR(int32_t, 8))(l_390.s17324623)).s23))).yyyxyxyy)).s27))).yxxyxyxy, ((VECTOR(int32_t, 16))(l_391.xzyyxyxzzxwwwzzx)).hi))))).s00)), 0x1B5EA594L, (-6L))).odd)))).y | (safe_mul_func_int16_t_s_s(p_63, p_63))))) | p_62), p_63)), p_1504->g_388.s8))), 4)) , 2L), p_61)) & p_63)), (*l_136))) >= 0L);
                    }
                    p_1504->g_2 &= ((safe_mod_func_uint16_t_u_u(((l_398 = (*l_136)) , FAKE_DIVERGE(p_1504->global_1_offset, get_global_id(1), 10)), ((p_1504->g_215.x , ((*l_400) &= (1UL & ((VECTOR(int16_t, 8))(l_399.sba771560)).s6))) & ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(3UL, 0x5BA8775C50D980B7L)).yyyy)).x))) || (((VECTOR(uint16_t, 4))(p_1504->g_401.xyyx)).y < ((safe_mul_func_uint8_t_u_u(((*l_76) |= GROUP_DIVERGE(2, 1)), ((*l_327) = ((p_1504->g_16 != (((VECTOR(uint8_t, 4))(l_404.s5723)).y >= FAKE_DIVERGE(p_1504->group_1_offset, get_group_id(1), 10))) , ((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(p_1504->g_405.s9f401cddd9a3e2c4)).s4e36)).yyxwwzxz)).lo, ((VECTOR(int64_t, 16))((((VECTOR(int32_t, 16))(l_406.xyxyxyyyyyxyyyyx)).s9 ^ (safe_mul_func_uint8_t_u_u(0xB5L, (-1L)))), ((safe_mod_func_int64_t_s_s((safe_add_func_int8_t_s_s((p_1504->g_207.s5 == (safe_mul_func_uint16_t_u_u((((void*)0 != l_397[4][7][0]) == l_389.y), (*p_1504->g_232)))), p_1504->g_335)), 5UL)) || 2UL), 0x2488616C97110377L, p_1504->g_267.x, p_1504->g_80.s0, 0x6FFE9D0027B496DFL, 2L, ((VECTOR(int64_t, 4))(0x7D94C0175571C74AL)), (-1L), ((VECTOR(int64_t, 4))(0x04880C1112C315CEL)))).s8a77))))))).yxywyxww)).s27)))).even , &l_250[3]) != l_415))))) <= p_1504->g_188)));
                    for (l_368 = 0; (l_368 != 24); l_368 = safe_add_func_uint64_t_u_u(l_368, 6))
                    { /* block id: 116 */
                        (*p_1504->g_83) = &l_162[2];
                        l_389.w = 0x3F922F7AL;
                    }
                }
            }
            else
            { /* block id: 121 */
                int32_t **l_424 = &l_64;
                int32_t **l_426 = &l_104;
                int32_t **l_427 = (void*)0;
                int8_t *l_442 = (void*)0;
                uint16_t *l_451[8][7][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
                uint16_t *l_452[9][3][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
                uint32_t l_456 = 3UL;
                int i, j, k;
                for (l_298 = 0; (l_298 >= 55); l_298 = safe_add_func_uint64_t_u_u(l_298, 9))
                { /* block id: 124 */
                    int8_t *l_421 = &l_301[0][0];
                    int32_t ***l_425 = &l_424;
                    uint32_t *l_440[1];
                    uint32_t **l_439 = &l_440[0];
                    uint32_t *l_441[8][9][1] = {{{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256}},{{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256}},{{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256}},{{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256}},{{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256}},{{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256}},{{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256}},{{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256},{&p_1504->g_256}}};
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_440[i] = (void*)0;
                    if (l_298)
                        goto lbl_420;
                    (*l_136) = ((p_1504->g_331 < (((((*l_421) &= p_62) >= ((p_1504->g_267.x , (safe_mod_func_int8_t_s_s(((((*l_425) = l_424) == (l_427 = l_426)) >= (safe_add_func_int64_t_s_s((safe_mul_func_int8_t_s_s((((safe_sub_func_int8_t_s_s((((safe_lshift_func_uint8_t_u_s(((*p_1504->g_84) | (FAKE_DIVERGE(p_1504->group_0_offset, get_group_id(0), 10) ^ (((p_1504->g_436 = (-1L)) & ((safe_mul_func_uint8_t_u_u((((((*l_439) = &p_1504->g_256) == l_441[5][0][0]) , (void*)0) != l_442), p_62)) == (*l_136))) > 0x5511764A40914C58L))), p_1504->g_11)) || p_1504->g_443) ^ (-8L)), p_1504->g_79.s4)) < 0xDF8C72EEL) | FAKE_DIVERGE(p_1504->group_0_offset, get_group_id(0), 10)), 4UL)), p_1504->g_207.s4))), p_62))) && p_63)) >= p_1504->g_444[3]) & FAKE_DIVERGE(p_1504->group_1_offset, get_group_id(1), 10))) , 1L);
                    if ((safe_rshift_func_int8_t_s_u((p_1504->g_436 = (safe_add_func_uint8_t_u_u(p_62, (p_1504->g_405.sf < (p_62 == ((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 2))(0x553C27A65FFEF23AL, 8L)))))))).lo))))), (p_62 >= p_63))))
                    { /* block id: 133 */
                        uint16_t *l_450 = &l_298;
                        int32_t l_457 = 0x045A5694L;
                        p_1504->g_330.s2 = ((*l_136) = (((((((VECTOR(int32_t, 16))((65531UL && (*p_1504->g_232)), 0L, ((VECTOR(int32_t, 2))(l_449.xx)), (((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 4))(1UL, ((VECTOR(uint64_t, 2))(abs(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))((-1L), ((l_451[2][6][2] = l_450) != l_452[1][2][0]), ((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),int16_t,((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(p_1504->g_453.zwxy)).odd)).yxyyyxyx)).s02)).yyxy, (int16_t)((*l_91) = p_1504->g_453.x), (int16_t)(safe_rshift_func_uint16_t_u_u((l_456 <= ((((l_457 > (p_61 || l_257)) & p_63) & p_61) , p_61)), GROUP_DIVERGE(1, 1)))))))).z & 0x58A9L) == l_457), 0x24DDF9FD1D65845DL, p_1504->g_436, p_61, (-5L), 0x4746C82B23B39232L)).s34))))), 18446744073709551607UL)).yzxwxzyz, ((VECTOR(uint64_t, 8))(0x15FF735DFEE40A20L))))).s3266670023143474))).even)).s4 == 0L), p_1504->g_80.s1, 2L, ((VECTOR(int32_t, 4))(0L)), 1L, 3L, 1L, 0x09FDD10FL, 0x3890FDB2L)).s1 , 5UL) == p_1504->g_75.y) & 1L) || p_1504->g_401.x) , 0x4EC7A1E0L));
                    }
                    else
                    { /* block id: 138 */
                        int8_t **l_462 = (void*)0;
                        int8_t **l_463 = (void*)0;
                        int8_t **l_464[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        (*l_427) = (p_1504->g_93 , (void*)0);
                        p_1504->g_330.sf = (safe_unary_minus_func_uint32_t_u((((p_1504->g_444[3] |= (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(p_1504->g_461.zzyxyzxyzzyyzyxw)).s3a)).yyyx)))).x, ((p_1504->g_465[0][0] = &p_1504->g_436) == (((safe_rshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1504->global_0_offset, get_global_id(0), 10), (*p_1504->g_232))) | ((VECTOR(uint8_t, 16))(p_1504->g_468.s87ce3451dfa32d45)).s8) , &p_1504->g_436))))) | ((*l_109) = FAKE_DIVERGE(p_1504->local_2_offset, get_local_id(2), 10))) | ((VECTOR(uint64_t, 4))(l_469.sd9c0)).y)));
                    }
                    if (l_301[0][0])
                        continue;
                }
            }
            for (l_369 = 0; (l_369 >= 17); l_369++)
            { /* block id: 150 */
                int16_t l_483 = 0L;
                int32_t l_491 = (-4L);
                int32_t l_497 = 0x1141D1DAL;
                int32_t l_498 = 0L;
                int32_t l_500 = (-4L);
                int32_t l_503[6][6] = {{(-3L),(-3L),(-3L),0L,0L,(-3L)},{(-3L),(-3L),(-3L),0L,0L,(-3L)},{(-3L),(-3L),(-3L),0L,0L,(-3L)},{(-3L),(-3L),(-3L),0L,0L,(-3L)},{(-3L),(-3L),(-3L),0L,0L,(-3L)},{(-3L),(-3L),(-3L),0L,0L,(-3L)}};
                int64_t l_504[1];
                int16_t l_509 = 0x3B55L;
                uint64_t *l_548 = (void*)0;
                uint64_t *l_549 = &p_1504->g_444[3];
                VECTOR(int16_t, 2) l_559 = (VECTOR(int16_t, 2))(0x4FDAL, 0x54E4L);
                VECTOR(int16_t, 16) l_562 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x17D7L), 0x17D7L), 0x17D7L, (-1L), 0x17D7L, (VECTOR(int16_t, 2))((-1L), 0x17D7L), (VECTOR(int16_t, 2))((-1L), 0x17D7L), (-1L), 0x17D7L, (-1L), 0x17D7L);
                uint16_t *l_581 = (void*)0;
                uint16_t *l_582[1][3];
                int32_t *l_592 = &l_497;
                int i, j;
                for (i = 0; i < 1; i++)
                    l_504[i] = (-1L);
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_582[i][j] = &l_298;
                }
                for (l_165 = 0; (l_165 >= (-21)); l_165--)
                { /* block id: 153 */
                    int32_t l_496 = 0x5CDBCF73L;
                    int32_t l_499 = 1L;
                    int32_t l_502 = (-9L);
                    int32_t l_505 = (-6L);
                    int32_t l_506 = 8L;
                    int32_t l_507 = (-1L);
                    int32_t l_508 = 9L;
                    int32_t l_511 = (-7L);
                    int16_t **l_525[1][4][6] = {{{&l_91,&l_91,&l_91,&l_91,&l_91,&l_91},{&l_91,&l_91,&l_91,&l_91,&l_91,&l_91},{&l_91,&l_91,&l_91,&l_91,&l_91,&l_91},{&l_91,&l_91,&l_91,&l_91,&l_91,&l_91}}};
                    uint8_t l_541 = 255UL;
                    int i, j, k;
                    if (((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(7L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_474.yy)))), 1L, (safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 2))(l_477.yx)), ((VECTOR(uint64_t, 2))(l_478.yx)), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(1UL, ((safe_lshift_func_int16_t_s_s((l_483 || ((+((p_63 ^ (safe_mod_func_uint8_t_u_u((0x2A4C777DCF541AE9L < (4294967286UL == 0UL)), (safe_sub_func_int16_t_s_s(((*l_91) = (&p_1504->g_83 != (void*)0)), ((&p_1504->g_309 != &p_61) & l_483)))))) , p_61)) < p_61)), p_63)) <= 0x202AA5CC6E994016L), 0xDF5BFB45CACB7A77L, 18446744073709551608UL)).yyyxxwwx)).s67))).odd, p_62)), 0x5D796F1BL, ((VECTOR(int32_t, 8))(0L)), 1L, 0x25F1D32FL)), ((VECTOR(int32_t, 16))(0x70F3C961L))))))).hi, ((VECTOR(int32_t, 8))(0x21008009L))))).s1722025223652375, ((VECTOR(int32_t, 16))(0x1A2F3B50L)), ((VECTOR(int32_t, 16))((-1L)))))), ((VECTOR(int32_t, 16))(0x0D4638A2L))))).s6)
                    { /* block id: 155 */
                        uint32_t **l_489 = (void*)0;
                        uint32_t ***l_488[2];
                        int32_t *l_492 = &l_300;
                        int32_t *l_493 = (void*)0;
                        int32_t *l_494[8] = {&l_171,&p_1504->g_2,&l_171,&l_171,&p_1504->g_2,&l_171,&l_171,&p_1504->g_2};
                        int8_t l_495 = 6L;
                        uint16_t l_512 = 0x30BEL;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_488[i] = &l_489;
                        (*p_1504->g_83) = &l_106;
                        l_490 = (void*)0;
                        l_512++;
                    }
                    else
                    { /* block id: 159 */
                        l_511 ^= p_63;
                        (*p_1504->g_83) = &l_507;
                        l_498 |= (((VECTOR(int16_t, 4))(l_515.s1244)).y || (safe_div_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((*l_76)++), (((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0x2B96E259F746F2DFL, 9L)), 0x42C25BFD3001CA54L, (-4L))).x || l_522))), 0x4CL)));
                    }
                    if ((safe_sub_func_int64_t_s_s(((l_91 = &p_1504->g_309) != (l_526 = (void*)0)), ((safe_div_func_uint64_t_u_u((((l_507 && (safe_mod_func_uint64_t_u_u((safe_unary_minus_func_uint32_t_u(p_61)), p_1504->g_453.y))) || (((safe_lshift_func_int16_t_s_u(p_61, (p_61 >= (((safe_mod_func_int32_t_s_s(((+((*l_76) = ((void*)0 == l_76))) | (-7L)), 1L)) , 0x17B9C136714E2CADL) , p_61)))) ^ p_61) >= l_504[0])) == p_1504->g_207.s0), p_1504->g_190)) == 0L))))
                    { /* block id: 168 */
                        return p_61;
                    }
                    else
                    { /* block id: 170 */
                        int32_t *l_536 = (void*)0;
                        int32_t *l_537 = &l_177[0];
                        int32_t *l_538 = &l_164;
                        int32_t *l_539 = &l_501[5][1][3];
                        int32_t *l_540[5] = {&l_501[3][1][0],&l_501[3][1][0],&l_501[3][1][0],&l_501[3][1][0],&l_501[3][1][0]};
                        int i;
                        --l_541;
                        if ((**p_1504->g_83))
                            continue;
                    }
                    return p_1504->g_453.y;
                }
                (*l_136) = ((p_1504->g_550[4] ^= (p_63 == ((*p_1504->g_232) | ((safe_add_func_int32_t_s_s(5L, p_1504->g_436)) ^ (((*l_549) = ((*l_109) = 0x785CD707780DB21FL)) >= p_61))))) >= (((((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 2))(p_1504->g_551.s72)).xyxy, (uint16_t)p_62))).x & (safe_unary_minus_func_uint32_t_u(((VECTOR(uint32_t, 4))(l_553.xyxy)).y))) , ((safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 2))(0L, 0x0F22L)).xyxxxxxyxxxxyxxx, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_556.saf55)), ((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 16))(p_1504->g_557.s6c5c55b30444c2d8)).s317a, ((VECTOR(int16_t, 2))(l_558.s52)).xyxx, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 8))(l_559.xyyxxxyx)).s2444667626063751, ((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(p_1504->g_560.yy)), ((VECTOR(int16_t, 2))((-1L), (-8L))), (-7L), ((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(p_1504->g_561.s52513404)).s17, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_562.s422cc811)).s4142055266531200)).sa4))), 0x3242L)).odd))).yyxzxxywxyzyyyww))).even)).hi))))))).s7046235777011244, ((VECTOR(int16_t, 4))(0L, ((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 16))(l_563.sf88c93118636fd50)).s88))), 1L)).yzzxzxwyxwwywzww))).se, ((~(6L >= (safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(p_1504->g_566.yx)).hi, l_301[0][0])))) , p_1504->g_93))) >= 0x1EA50C2BL)) <= 0x81464E73L));
                (*l_592) = (safe_rshift_func_uint8_t_u_u((((((((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(p_1504->g_569.ywzw)).ywzxxwywwzzwxwxw)).odd))).s4 > l_570.z) , (void*)0) == l_571) > (0x3D540861L <= (p_1504->g_566.y = (safe_lshift_func_int16_t_s_u((((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 4))(l_574.zzzx)), ((VECTOR(uint8_t, 2))(1UL, 250UL)).yxyx))))).lo)))).xyxx, ((VECTOR(uint8_t, 4))(((safe_sub_func_int8_t_s_s((+((safe_add_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((l_106 = ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(0x9585L, 0x7774L)))).even), 12)), (safe_sub_func_uint64_t_u_u(((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x607EL, (-1L))).xyxxxyyx)).s7 < ((safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(l_587.zyxxxxyxzwzyxzwy)).sd, 5)) != (GROUP_DIVERGE(2, 1) >= ((p_61 < (safe_lshift_func_uint8_t_u_u(l_509, 6))) ^ p_63)))) , ((0x4DD0B98F26986CC5L & ((*l_549) = p_1504->g_256)) , p_1504->g_566.y)), 0xC1483692DD8AB069L)))) == p_1504->g_461.w)), GROUP_DIVERGE(0, 1))) == l_559.y), ((VECTOR(uint8_t, 2))(0UL)), 255UL))))).w && l_504[0]), 2))))) || GROUP_DIVERGE(2, 1)), p_63));
            }
            l_598[0]--;
        }
        else
        { /* block id: 186 */
            int32_t *l_601 = &l_300;
            int32_t *l_604 = &l_300;
            int32_t *l_605 = (void*)0;
            int32_t *l_606 = (void*)0;
            int32_t *l_607[5];
            uint64_t l_608 = 18446744073709551612UL;
            int32_t **l_611 = &l_605;
            int i;
            for (i = 0; i < 5; i++)
                l_607[i] = (void*)0;
            l_175 |= ((*l_601) = (l_106 = 0L));
            l_608--;
            (*p_1504->g_83) = ((*l_611) = l_605);
            for (p_63 = (-22); (p_63 != 24); p_63 = safe_add_func_int64_t_s_s(p_63, 8))
            { /* block id: 195 */
                uint8_t **l_618[5][7] = {{&l_76,&l_76,&l_76,&l_76,&l_76,&l_76,&l_76},{&l_76,&l_76,&l_76,&l_76,&l_76,&l_76,&l_76},{&l_76,&l_76,&l_76,&l_76,&l_76,&l_76,&l_76},{&l_76,&l_76,&l_76,&l_76,&l_76,&l_76,&l_76},{&l_76,&l_76,&l_76,&l_76,&l_76,&l_76,&l_76}};
                int32_t l_628 = 6L;
                int i, j;
                l_406.x ^= (((safe_lshift_func_uint8_t_u_s((FAKE_DIVERGE(p_1504->group_0_offset, get_group_id(0), 10) || ((p_1504->g_619 = &p_1504->g_17[1]) != (*p_1504->g_349))), 1)) >= (1UL ^ (safe_mul_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u(p_63, p_62)), ((l_628 = (safe_mod_func_int64_t_s_s(p_1504->g_405.se, (safe_div_func_int16_t_s_s(p_1504->g_557.s8, 1UL))))) == (safe_sub_func_uint32_t_u_u((((((VECTOR(uint8_t, 2))(l_631.s20)).odd , ((safe_sub_func_int32_t_s_s((l_300 = (safe_lshift_func_int16_t_s_s(p_1504->g_560.y, 4))), p_1504->g_17[2])) > 1UL)) > p_63) < p_61), (-1L)))))))) >= (-1L));
                for (l_398 = 26; (l_398 == 12); --l_398)
                { /* block id: 202 */
                    if (l_628)
                        break;
                    for (l_158 = 0; (l_158 < (-15)); l_158 = safe_sub_func_uint64_t_u_u(l_158, 1))
                    { /* block id: 206 */
                        uint16_t l_640 = 0xADE2L;
                        return l_640;
                    }
                }
            }
        }
        if (((l_214.sf = (--p_1504->g_401.x)) , 1L))
        { /* block id: 214 */
            int32_t *l_643[7][2] = {{&l_177[0],(void*)0},{&l_177[0],(void*)0},{&l_177[0],(void*)0},{&l_177[0],(void*)0},{&l_177[0],(void*)0},{&l_177[0],(void*)0},{&l_177[0],(void*)0}};
            int i, j;
            (*p_1504->g_83) = l_643[5][0];
            (*p_1504->g_83) = l_644;
            for (l_299 = (-24); (l_299 != 22); ++l_299)
            { /* block id: 219 */
                for (p_1504->g_335 = (-12); (p_1504->g_335 <= 47); ++p_1504->g_335)
                { /* block id: 222 */
                    return p_61;
                }
                (*p_1504->g_83) = &l_177[0];
            }
        }
        else
        { /* block id: 227 */
            int8_t *l_659 = &p_1504->g_436;
            int32_t l_680 = (-1L);
            uint32_t l_697 = 0UL;
            int32_t l_700[4][8] = {{0x6438630FL,0x6438630FL,(-8L),0L,0x0826BA2BL,0L,(-8L),0x6438630FL},{0x6438630FL,0x6438630FL,(-8L),0L,0x0826BA2BL,0L,(-8L),0x6438630FL},{0x6438630FL,0x6438630FL,(-8L),0L,0x0826BA2BL,0L,(-8L),0x6438630FL},{0x6438630FL,0x6438630FL,(-8L),0L,0x0826BA2BL,0L,(-8L),0x6438630FL}};
            int32_t l_705 = 0L;
            VECTOR(uint8_t, 4) l_709 = (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 0x89L), 0x89L);
            int16_t *l_712 = (void*)0;
            int16_t *l_726 = (void*)0;
            int16_t *l_727 = (void*)0;
            int32_t *l_728 = &p_1504->g_2;
            VECTOR(int8_t, 4) l_742 = (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), 0x45L), 0x45L);
            int i, j;
            if ((((VECTOR(int64_t, 8))(l_649.yyyyxyyy)).s2 , ((*l_644) = ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(0x46574B87L, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))((safe_mod_func_uint32_t_u_u(8UL, (p_61 || ((+(safe_rshift_func_int16_t_s_u((safe_rshift_func_int8_t_s_u((l_658 , ((*l_659) = (*l_644))), 0)), p_63))) < ((VECTOR(uint8_t, 2))(l_660.yy)).odd)))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(l_661.wxxy)), (int32_t)(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(1UL, ((p_1504->g_461.z , (void*)0) != (((safe_sub_func_uint16_t_u_u((safe_unary_minus_func_uint8_t_u((p_1504->g_93 > ((*p_1504->g_232) ^ (-4L))))), p_1504->g_11)) , (*l_644)) , p_1504->g_591[1])), ((VECTOR(uint64_t, 4))(0x95ED2125FD6795D8L)), 0x9AFAE8C95BDCDC53L, 0xF048A80416D68265L)).s2177013543123610)).s9 == (*l_644))))).even)), (-1L))))).lo))), 1L)), ((VECTOR(int32_t, 4))(9L)), ((VECTOR(int32_t, 4))(0x35B07568L))))).y)))
            { /* block id: 230 */
                int32_t *l_668 = &l_177[0];
                for (l_235 = (-4); (l_235 != 9); ++l_235)
                { /* block id: 233 */
                    uint32_t **l_667 = &l_371[0];
                    int32_t l_671 = 0x12011D15L;
                    VECTOR(uint8_t, 16) l_672 = (VECTOR(uint8_t, 16))(248UL, (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 0xE2L), 0xE2L), 0xE2L, 248UL, 0xE2L, (VECTOR(uint8_t, 2))(248UL, 0xE2L), (VECTOR(uint8_t, 2))(248UL, 0xE2L), 248UL, 0xE2L, 248UL, 0xE2L);
                    uint16_t *l_686[3][1];
                    int i, j;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_686[i][j] = (void*)0;
                    }
                    (*l_644) |= (l_667 == (void*)0);
                    (*p_1504->g_83) = l_668;
                    l_671 = ((*p_1504->g_84) = (safe_rshift_func_uint8_t_u_s(((*l_76) |= 0xDDL), 3)));
                    (*l_644) = ((p_1504->g_551.s1 = ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),VECTOR(uint8_t, 2),((VECTOR(uint8_t, 2))(250UL, 0x51L)), ((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 16))(l_672.s504412e354c11246)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 2))((-1L), (-1L))).yyyxxyyxxyxxyyxx, ((VECTOR(int8_t, 8))(p_1504->g_673.xyxxyyyy)).s7573534251551061))).lo, ((VECTOR(int8_t, 4))(0x54L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(0x45L, ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 4))(p_1504->g_674.yyxx)).hi, ((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(p_1504->g_675.xxxyxyxx)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(p_1504->g_676.yxxx)))), ((VECTOR(int8_t, 4))(p_1504->g_677.xyyy)))))).s144f))).lo))), 0x0BL)).lo)), 1L)).zywwzxxz))).lo, ((VECTOR(int8_t, 4))(((((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 2))(0x1F63L, 0xF980L)).yxyx, ((VECTOR(uint16_t, 4))(0x016CL, ((VECTOR(uint16_t, 2))(0x8FB7L, 0UL)), 7UL))))).yzxzzzyw, (uint16_t)(*p_1504->g_232)))).s4, l_680)) , ((safe_mul_func_int8_t_s_s((+(l_680 | l_671)), GROUP_DIVERGE(0, 1))) , ((*l_91) = ((safe_add_func_int64_t_s_s(p_1504->g_675.y, (((VECTOR(int32_t, 2))(l_685.yy)).lo && 1L))) || ((*l_668) = 0x2FA2L))))) || ((((VECTOR(int32_t, 4))(1L, (-2L), (-1L), 8L)).x || ((safe_mod_func_int8_t_s_s((l_672.s1 , ((*l_659) = p_62)), p_63)) >= p_1504->g_92)) == p_61)) | 0x6C87L), l_680, (-9L), 0L))))), 1UL, ((VECTOR(uint8_t, 2))(0xF0L)), 4UL)).s7021706051633442))).sec)), ((VECTOR(uint8_t, 2))(255UL)), ((VECTOR(uint8_t, 2))(1UL))))), ((VECTOR(uint8_t, 2))(1UL))))), ((VECTOR(uint8_t, 2))(0x76L))))).xxxyxxyx)).s2265076001230645)).sb) , 0x0F2748BFL);
                }
            }
            else
            { /* block id: 245 */
                int32_t l_701 = (-1L);
                l_680 &= 0x5281E22FL;
                if (p_63)
                { /* block id: 247 */
                    int32_t *l_689 = (void*)0;
lbl_692:
                    l_689 = &l_680;
                    for (p_1504->g_16 = 24; (p_1504->g_16 == (-16)); p_1504->g_16 = safe_sub_func_int8_t_s_s(p_1504->g_16, 9))
                    { /* block id: 251 */
                        if (p_61)
                            goto lbl_692;
                        (*p_1504->g_83) = l_104;
                        if (l_398)
                            goto lbl_746;
                        if (p_63)
                            break;
                    }
                    return p_1504->g_557.s4;
                }
                else
                { /* block id: 257 */
                    int64_t *l_698 = (void*)0;
                    int64_t *l_699[1];
                    int32_t l_706 = 0x5301A13CL;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_699[i] = (void*)0;
                    (*l_644) = ((*p_1504->g_349) != &l_178);
                    (*p_1504->g_83) = &p_1504->g_11;
                    (*p_1504->g_83) = ((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 2))(1L, 0L)).xyxyyyxxyyxyxyxx, (int32_t)(((((safe_mul_func_uint8_t_u_u(((l_680 != (safe_mod_func_uint8_t_u_u((0L >= p_63), ((l_700[0][7] = (((p_61 && l_697) , p_61) && (*l_644))) ^ (((l_705 |= (l_701 , (safe_lshift_func_int16_t_s_u(((void*)0 != l_704[2][0][0]), (*p_1504->g_232))))) <= 0L) , p_1504->g_550[4]))))) & p_1504->g_674.y), 0xEAL)) && p_63) , l_680) , p_62) < 18446744073709551615UL)))).s6e, ((VECTOR(int32_t, 2))(0x7B9044F3L))))).xxxxyxyy, ((VECTOR(int32_t, 8))((-1L)))))), p_63, 0x353432E1L, (-1L), (*l_644), 0x0AA5C4E4L, l_706, (-7L), 0x26A35751L)).s82, ((VECTOR(int32_t, 2))(0x5BA94AE7L)), ((VECTOR(int32_t, 2))((-1L)))))).xxxyyxyy)).even)).zyzxwyyzzywyxzzx)).s3 , 0x26C6D8CAL) , (*p_1504->g_83));
                }
            }
            (*l_728) ^= ((l_700[0][7] &= (safe_mod_func_uint8_t_u_u((l_697 == ((VECTOR(uint8_t, 8))(l_709.xxzxzxzx)).s4), (-10L)))) | ((safe_div_func_int8_t_s_s(((((((*l_91) = (l_712 != &p_1504->g_309)) | (p_1504->g_560.w = ((~(((((((((((*l_76) = GROUP_DIVERGE(2, 1)) >= ((((*l_644) = (safe_rshift_func_uint16_t_u_u((0x7EL || FAKE_DIVERGE(p_1504->group_0_offset, get_group_id(0), 10)), 9))) > (safe_mul_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u((p_61 || (l_719 = 0UL)), ((safe_rshift_func_int16_t_s_s(((-1L) || (safe_rshift_func_int16_t_s_u(((l_724 != l_725) | l_709.y), 12))), 14)) & (*p_1504->g_232)))), FAKE_DIVERGE(p_1504->local_1_offset, get_local_id(1), 10)))) || p_62)) != p_62) > l_697) , p_61) <= p_1504->g_75.x) , p_1504->g_359.s5) < 0UL) , p_1504->g_233) <= p_1504->g_550[4])) & p_62))) , p_1504->g_401.x) || 0x8933B20E7FAB19C1L) != GROUP_DIVERGE(2, 1)), 0x51L)) ^ p_1504->g_335));
lbl_746:
            (*l_644) = (GROUP_DIVERGE(1, 1) != ((safe_add_func_int32_t_s_s((safe_div_func_int16_t_s_s(p_61, (safe_unary_minus_func_int64_t_s(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(0x35F426E453199DD8L, 6L, 0x29DFC6E0E633BC6DL, 9L, 1L, (p_62 < ((*l_728) = 2UL)), 1L, 0x0F037C07EF2A0E17L)).s73)).lo)))), (p_1504->g_566.y |= (((VECTOR(uint32_t, 8))(p_61, 0xE1347C54L, 0xB2BDC2B8L, 0xB516E4C1L, ((((safe_mul_func_uint8_t_u_u(((safe_lshift_func_int8_t_s_u(((safe_rshift_func_uint16_t_u_s((~65534UL), ((*l_91) |= (safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(l_742.yzzxwzzxzwxyzywy)).s23d2)).hi)))).hi, (+(~(safe_unary_minus_func_int64_t_s(((VECTOR(int64_t, 4))(1L, ((VECTOR(int64_t, 2))(4L, 0x20E54A01FE29242FL)), 0x73E3C5E505B5D78FL)).z))))))))) & (p_63 >= (p_1504->g_405.s7 |= ((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0x33435641E9EC85D8L, (-10L))), 0x160A3563726C81BBL, 0x0C5ECE768B77D5C4L)), ((VECTOR(int64_t, 16))(l_744.xywyxzwyxyzwzxwy)).scf12, ((VECTOR(int64_t, 8))(p_1504->g_745.s37403275)).lo))).z))), p_63)) , p_63), 0L)) || (*l_644)) && p_62) >= 65535UL), 0x7DF590FBL, 0x85013E33L, 0xF98DEAD1L)).s1 , p_1504->g_405.s9)))) , (*l_728)));
            (*l_728) = ((safe_rshift_func_uint8_t_u_u(0x87L, 7)) , (2L > (((safe_add_func_uint8_t_u_u((*l_728), (~((VECTOR(uint8_t, 16))(l_751.yyyyyxyxxxyyxxxx)).sa))) | (((~((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 2))((-9L), 0x7CA7L)).yyyxxyxx, ((VECTOR(uint16_t, 16))(l_752.s7113373524253402)).hi))), ((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x784D1022L, 0x7D46CFDDL)), (-1L), (-5L))).zxzyzyxwzwxzwzxx, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_753.zyzzyzyywxwzxzwz))))))).odd))).s54, (int32_t)((safe_lshift_func_int16_t_s_s((((p_1504->g_756 = l_726) == (void*)0) > ((((VECTOR(int64_t, 8))(p_1504->g_757.yxxyxyxx)).s5 , p_62) <= 0xB97C307E170D0CF1L)), p_1504->g_143.s5)) | ((((*l_644) = ((VECTOR(uint32_t, 2))(l_758.s99)).hi) == ((((((safe_rshift_func_int8_t_s_u((((VECTOR(int16_t, 8))(0x365DL, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 8))(p_1504->g_557.sa, 0x2B19L, 0x1346L, ((VECTOR(int16_t, 2))(0x5C62L)), ((VECTOR(int16_t, 2))(0x0820L)), 0x0C20L)).hi))), ((VECTOR(int16_t, 4))(0x5C47L)), ((VECTOR(int16_t, 2))((-4L))), 0L, ((VECTOR(int16_t, 2))(0L)), 1L, 6L, 0L)).s3, 0L, ((VECTOR(int16_t, 4))(0x7240L)), 0x4A46L)).s3 != 0x2578L), p_62)) , p_1504->g_550[0]) | (-8L)) ^ p_1504->g_388.sc) , &p_1504->g_350) != (void*)0)) , GROUP_DIVERGE(2, 1))), (int32_t)p_61))).hi) & 0x5FE75C81L) > p_63)) <= p_1504->g_561.s6)));
        }
        for (p_1504->g_110 = 6; (p_1504->g_110 < 27); ++p_1504->g_110)
        { /* block id: 284 */
            int16_t l_765 = (-2L);
            int32_t l_766 = (-1L);
            int32_t l_797 = 0x547B5F69L;
            int32_t l_801 = 7L;
            VECTOR(int32_t, 2) l_805 = (VECTOR(int32_t, 2))(0L, (-1L));
            uint32_t l_812 = 1UL;
            int32_t *l_834 = &l_106;
            int i;
            for (p_1504->g_190 = 0; (p_1504->g_190 < 59); p_1504->g_190 = safe_add_func_int64_t_s_s(p_1504->g_190, 1))
            { /* block id: 287 */
                VECTOR(int8_t, 4) l_777 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x2AL), 0x2AL);
                uint32_t ***l_785 = &l_490;
                int32_t l_796 = (-2L);
                int32_t l_806 = 1L;
                int32_t l_809 = 0x59340744L;
                VECTOR(int32_t, 2) l_811 = (VECTOR(int32_t, 2))(0x0137D50DL, 0x313A4E79L);
                int16_t *l_829 = &l_398;
                uint16_t *l_830 = &l_658;
                VECTOR(int64_t, 8) l_831 = (VECTOR(int64_t, 8))((-4L), (VECTOR(int64_t, 4))((-4L), (VECTOR(int64_t, 2))((-4L), 0x0B64B668074F86E2L), 0x0B64B668074F86E2L), 0x0B64B668074F86E2L, (-4L), 0x0B64B668074F86E2L);
                int i;
                (*l_644) = l_765;
                l_766 |= l_765;
                for (p_1504->g_93 = 0; (p_1504->g_93 > 5); p_1504->g_93++)
                { /* block id: 292 */
                    int16_t **l_784 = &l_526;
                    int32_t l_786 = 0x5B702A1EL;
                    int32_t l_800 = 0x3DABA153L;
                    int32_t l_802 = 0x39BA2A68L;
                    int32_t l_804[7] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                    int32_t l_808 = 0x6AF21F94L;
                    int i;
                    if (((VECTOR(int32_t, 8))(((safe_mod_func_uint16_t_u_u(((l_766 = ((VECTOR(int8_t, 2))(0x40L, 0x5EL)).hi) & ((*p_1504->g_619) |= ((safe_mul_func_int16_t_s_s((((safe_sub_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s(p_62, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(l_777.xxzzyywzxwyxxzwy)).s47)).xxyyxxyxxxyyyyxx, (int8_t)(&p_1504->g_233 == &l_719)))).s7e)), ((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))((8UL >= (((((((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 4))((-1L), ((VECTOR(int16_t, 2))(p_1504->g_778.s51)), 0x040AL)).wxyxxwxz, ((VECTOR(int16_t, 2))(0L, 0x260BL)).xxxyxxxx, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(p_1504->g_779.s16)))))).xxyxxyxx))).s7 || (((safe_add_func_uint8_t_u_u(0x2CL, ((((((safe_rshift_func_uint8_t_u_s((((*l_784) = &l_398) != &l_765), l_777.x)) != (((void*)0 == l_785) == p_61)) && p_63) <= 0x205D7C11L) || p_61) , 255UL))) < 18446744073709551613UL) || GROUP_DIVERGE(0, 1))) != (*l_644)) <= l_777.w) & p_62) && l_786)), 0x10L, 0x47L, (-10L), 0x4FL, ((VECTOR(int8_t, 8))((-7L))), ((VECTOR(int8_t, 2))(0x06L)), 0x4EL)).hi)), ((VECTOR(int8_t, 4))(0x2CL)), 0x5BL, ((VECTOR(int8_t, 2))(0x26L)), 0x52L)).s1834, ((VECTOR(int8_t, 4))(0x28L)), ((VECTOR(int8_t, 4))(0x2DL))))), 0x69L, 0L)).s30)), ((VECTOR(int8_t, 2))((-2L)))))), 0x37L, 0L)).even, (int8_t)p_62))).xyxyyyyyyxxxxxxx)).sb)), 0x24L)) , 5L) && p_62), 0x067CL)) ^ 0x09BEL))), p_63)) <= p_61), p_62, ((VECTOR(int32_t, 4))(1L)), 1L, 0L)).s7)
                    { /* block id: 296 */
                        (*l_644) = p_62;
                        return p_1504->g_388.s2;
                    }
                    else
                    { /* block id: 299 */
                        int32_t **l_795 = &l_644;
                        int32_t *l_798 = &l_175;
                        int32_t *l_799[9] = {(void*)0,&l_786,(void*)0,(void*)0,&l_786,(void*)0,(void*)0,&l_786,(void*)0};
                        uint32_t l_815 = 8UL;
                        int i;
                        l_796 &= (p_1504->g_557.s2 == ((((safe_div_func_int8_t_s_s((safe_add_func_int8_t_s_s(p_62, (((*l_725) |= p_62) >= (safe_rshift_func_uint8_t_u_u((*p_1504->g_619), (p_1504->g_468.s9 = (safe_rshift_func_uint16_t_u_u(p_63, 13)))))))), (l_786 ^= 5L))) , l_795) == &l_64) , p_1504->g_778.s0));
                        --l_812;
                        l_815--;
                    }
                    if (p_63)
                        break;
                }
                l_811.y |= ((*l_644) & (safe_div_func_int8_t_s_s((((((safe_div_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_u(p_1504->g_92, ((*l_830) = ((safe_lshift_func_uint8_t_u_s((*l_644), 5)) > (((*l_725) ^= ((VECTOR(int64_t, 8))(p_1504->g_826.se51069fa)).s5) >= ((safe_mul_func_int16_t_s_s(((*l_829) = 1L), (4294967288UL & l_766))) && 0x5644CBAAL)))))) ^ (((((VECTOR(int64_t, 4))(0x463CA3BDD7A99B3DL, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 2))(0x759B7A7846435B6BL, (-4L))).yxyyyyxyyxyxxyxy, ((VECTOR(int64_t, 16))(l_831.s3231216736537051))))).even, (int64_t)p_63))).s11)), 0x23253D4C23BCFC30L)).z || (safe_sub_func_int8_t_s_s(((GROUP_DIVERGE(1, 1) & (p_1504->g_826.sf == p_1504->g_557.se)) == (*p_1504->g_232)), GROUP_DIVERGE(1, 1)))) > p_1504->g_757.x) , 0xC8L)), 255UL)) <= p_62) || 0x52A8DDABL) < 65535UL) || (*p_1504->g_619)), l_805.x)));
            }
            l_834 = &l_766;
            (*l_834) = (safe_div_func_uint16_t_u_u((safe_mod_func_int32_t_s_s(((void*)0 != &p_1504->g_83), (safe_lshift_func_uint16_t_u_u((p_1504->g_551.s4 ^ (safe_add_func_uint64_t_u_u(((*l_644) = (((((!((((p_63 , p_61) | 1UL) , (safe_mul_func_int16_t_s_s(((*l_91) = p_1504->g_468.s8), (safe_sub_func_uint32_t_u_u((safe_add_func_uint64_t_u_u((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 8))((safe_mul_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s((!((VECTOR(uint8_t, 4))(p_1504->g_855.s6409)).w), 5)), (((safe_sub_func_int8_t_s_s((*l_644), (p_61 > p_1504->g_207.s2))) , p_62) && 0L))), ((VECTOR(int64_t, 4))(0x28E3B494B702B901L)), ((VECTOR(int64_t, 2))(0x46261B6D6A2E7A6BL)), 0x1BD5DFA7538A30EAL)).s2, 0x60B7D3378908034DL)), 6UL)), p_61))))) > p_63)) > 0x0BB8773B2BE4596AL) || 0UL) < 1L) >= 0x61L)), p_61))), p_1504->g_745.s4)))), p_61));
        }
    }
    else
    { /* block id: 319 */
        int32_t *l_862[2];
        int i;
        for (i = 0; i < 2; i++)
            l_862[i] = &p_1504->g_2;
        for (p_1504->g_335 = 0; (p_1504->g_335 == 48); ++p_1504->g_335)
        { /* block id: 322 */
            (*p_1504->g_83) = &l_803[0];
            for (p_1504->g_436 = (-22); (p_1504->g_436 == (-7)); ++p_1504->g_436)
            { /* block id: 326 */
                if (p_61)
                    break;
                (*p_1504->g_83) = (*p_1504->g_83);
            }
        }
        l_390.s1 = 0x11B2D406L;
    }
    return p_62;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1505;
    struct S0* p_1504 = &c_1505;
    struct S0 c_1506 = {
        (-5L), // p_1504->g_2
        0x479E672CL, // p_1504->g_11
        0x46C8C5CEL, // p_1504->g_16
        {255UL,255UL,255UL}, // p_1504->g_17
        (VECTOR(uint8_t, 2))(0x22L, 0xE0L), // p_1504->g_75
        (VECTOR(int64_t, 8))(6L, (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 0L), 0L), 0L, 6L, 0L), // p_1504->g_79
        (VECTOR(int64_t, 8))(6L, (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 0x1CA2468F5B79C141L), 0x1CA2468F5B79C141L), 0x1CA2468F5B79C141L, 6L, 0x1CA2468F5B79C141L), // p_1504->g_80
        &p_1504->g_11, // p_1504->g_84
        &p_1504->g_84, // p_1504->g_83
        0x4EB7L, // p_1504->g_92
        (-1L), // p_1504->g_93
        18446744073709551615UL, // p_1504->g_110
        (-1L), // p_1504->g_134
        (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xFAL), 0xFAL), 0xFAL, 255UL, 0xFAL), // p_1504->g_143
        (VECTOR(int32_t, 4))(0x612151E3L, (VECTOR(int32_t, 2))(0x612151E3L, 0x72B42947L), 0x72B42947L), // p_1504->g_149
        0x5AE833BBF8E7FB40L, // p_1504->g_159
        0L, // p_1504->g_188
        0UL, // p_1504->g_190
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-3L)), (-3L)), // p_1504->g_204
        (VECTOR(int32_t, 2))((-4L), 0L), // p_1504->g_205
        (VECTOR(int32_t, 8))(0x4A2B1C9CL, (VECTOR(int32_t, 4))(0x4A2B1C9CL, (VECTOR(int32_t, 2))(0x4A2B1C9CL, 6L), 6L), 6L, 0x4A2B1C9CL, 6L), // p_1504->g_207
        (VECTOR(int32_t, 2))((-10L), 0x203B7EA7L), // p_1504->g_215
        0xD0B3L, // p_1504->g_233
        &p_1504->g_233, // p_1504->g_232
        0xD0E1289CL, // p_1504->g_256
        (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 8L), 8L), // p_1504->g_267
        0x6B81L, // p_1504->g_309
        (VECTOR(int32_t, 16))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x0BDF08E9L), 0x0BDF08E9L), 0x0BDF08E9L, 6L, 0x0BDF08E9L, (VECTOR(int32_t, 2))(6L, 0x0BDF08E9L), (VECTOR(int32_t, 2))(6L, 0x0BDF08E9L), 6L, 0x0BDF08E9L, 6L, 0x0BDF08E9L), // p_1504->g_330
        0x7081EF1B7FFEE6C4L, // p_1504->g_331
        0UL, // p_1504->g_335
        (void*)0, // p_1504->g_350
        &p_1504->g_350, // p_1504->g_349
        (VECTOR(int32_t, 8))(0x2D116B99L, (VECTOR(int32_t, 4))(0x2D116B99L, (VECTOR(int32_t, 2))(0x2D116B99L, 0x2A237366L), 0x2A237366L), 0x2A237366L, 0x2D116B99L, 0x2A237366L), // p_1504->g_359
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x2A4A30ABL), 0x2A4A30ABL), 0x2A4A30ABL, (-1L), 0x2A4A30ABL, (VECTOR(int32_t, 2))((-1L), 0x2A4A30ABL), (VECTOR(int32_t, 2))((-1L), 0x2A4A30ABL), (-1L), 0x2A4A30ABL, (-1L), 0x2A4A30ABL), // p_1504->g_388
        (VECTOR(uint16_t, 2))(65527UL, 65535UL), // p_1504->g_401
        (VECTOR(int64_t, 16))(7L, (VECTOR(int64_t, 4))(7L, (VECTOR(int64_t, 2))(7L, 0x24574346C8994D7AL), 0x24574346C8994D7AL), 0x24574346C8994D7AL, 7L, 0x24574346C8994D7AL, (VECTOR(int64_t, 2))(7L, 0x24574346C8994D7AL), (VECTOR(int64_t, 2))(7L, 0x24574346C8994D7AL), 7L, 0x24574346C8994D7AL, 7L, 0x24574346C8994D7AL), // p_1504->g_405
        0x51L, // p_1504->g_436
        0x2EBA1302L, // p_1504->g_443
        {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL}, // p_1504->g_444
        (VECTOR(int16_t, 4))(0x1BF0L, (VECTOR(int16_t, 2))(0x1BF0L, (-9L)), (-9L)), // p_1504->g_453
        (VECTOR(uint8_t, 4))(0x7CL, (VECTOR(uint8_t, 2))(0x7CL, 0xFBL), 0xFBL), // p_1504->g_461
        {{&p_1504->g_436,&p_1504->g_436,&p_1504->g_436,&p_1504->g_436}}, // p_1504->g_465
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x22L), 0x22L), 0x22L, 255UL, 0x22L, (VECTOR(uint8_t, 2))(255UL, 0x22L), (VECTOR(uint8_t, 2))(255UL, 0x22L), 255UL, 0x22L, 255UL, 0x22L), // p_1504->g_468
        {0UL,5UL,0UL,0UL,5UL,0UL,0UL}, // p_1504->g_550
        (VECTOR(uint16_t, 8))(0x0394L, (VECTOR(uint16_t, 4))(0x0394L, (VECTOR(uint16_t, 2))(0x0394L, 4UL), 4UL), 4UL, 0x0394L, 4UL), // p_1504->g_551
        (VECTOR(int16_t, 16))(0x6FE9L, (VECTOR(int16_t, 4))(0x6FE9L, (VECTOR(int16_t, 2))(0x6FE9L, 8L), 8L), 8L, 0x6FE9L, 8L, (VECTOR(int16_t, 2))(0x6FE9L, 8L), (VECTOR(int16_t, 2))(0x6FE9L, 8L), 0x6FE9L, 8L, 0x6FE9L, 8L), // p_1504->g_557
        (VECTOR(int16_t, 4))(0x1D32L, (VECTOR(int16_t, 2))(0x1D32L, 0x4DC3L), 0x4DC3L), // p_1504->g_560
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x0956L), 0x0956L), 0x0956L, 1L, 0x0956L), // p_1504->g_561
        (VECTOR(uint32_t, 2))(0xFABBC84CL, 7UL), // p_1504->g_566
        (VECTOR(int64_t, 4))(0x489BE23542F9B00FL, (VECTOR(int64_t, 2))(0x489BE23542F9B00FL, 0x7917786BAC08165DL), 0x7917786BAC08165DL), // p_1504->g_569
        (void*)0, // p_1504->g_590
        {&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11,&p_1504->g_11}, // p_1504->g_591
        {&p_1504->g_134,&p_1504->g_134,&p_1504->g_134,&p_1504->g_134,&p_1504->g_134,&p_1504->g_134,&p_1504->g_134,&p_1504->g_134}, // p_1504->g_602
        (void*)0, // p_1504->g_603
        &p_1504->g_17[2], // p_1504->g_619
        (VECTOR(int8_t, 2))((-5L), 0x68L), // p_1504->g_673
        (VECTOR(int8_t, 2))(7L, 0x1AL), // p_1504->g_674
        (VECTOR(int8_t, 2))(0x45L, 0x74L), // p_1504->g_675
        (VECTOR(int8_t, 2))((-2L), (-1L)), // p_1504->g_676
        (VECTOR(int8_t, 2))(0x52L, 0x49L), // p_1504->g_677
        (VECTOR(int64_t, 8))((-7L), (VECTOR(int64_t, 4))((-7L), (VECTOR(int64_t, 2))((-7L), 0L), 0L), 0L, (-7L), 0L), // p_1504->g_745
        (void*)0, // p_1504->g_756
        (VECTOR(int64_t, 2))(6L, 0x49839644376069F5L), // p_1504->g_757
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x447EL), 0x447EL), 0x447EL, 1L, 0x447EL), // p_1504->g_778
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L), // p_1504->g_779
        (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x1BB708CF0A36E3E2L), 0x1BB708CF0A36E3E2L), 0x1BB708CF0A36E3E2L, 0L, 0x1BB708CF0A36E3E2L, (VECTOR(int64_t, 2))(0L, 0x1BB708CF0A36E3E2L), (VECTOR(int64_t, 2))(0L, 0x1BB708CF0A36E3E2L), 0L, 0x1BB708CF0A36E3E2L, 0L, 0x1BB708CF0A36E3E2L), // p_1504->g_826
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x1DL), 0x1DL), 0x1DL, 255UL, 0x1DL, (VECTOR(uint8_t, 2))(255UL, 0x1DL), (VECTOR(uint8_t, 2))(255UL, 0x1DL), 255UL, 0x1DL, 255UL, 0x1DL), // p_1504->g_855
        &p_1504->g_11, // p_1504->g_864
        &p_1504->g_864, // p_1504->g_863
        0x77C401A1067A05D9L, // p_1504->g_896
        (VECTOR(uint64_t, 4))(0xDA9D9CC205C2A0F4L, (VECTOR(uint64_t, 2))(0xDA9D9CC205C2A0F4L, 0UL), 0UL), // p_1504->g_907
        (VECTOR(uint16_t, 16))(65533UL, (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0xEBFAL), 0xEBFAL), 0xEBFAL, 65533UL, 0xEBFAL, (VECTOR(uint16_t, 2))(65533UL, 0xEBFAL), (VECTOR(uint16_t, 2))(65533UL, 0xEBFAL), 65533UL, 0xEBFAL, 65533UL, 0xEBFAL), // p_1504->g_936
        (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xA2F44B9027783161L), 0xA2F44B9027783161L), // p_1504->g_944
        (VECTOR(int64_t, 4))(0x61C6E3312069BF48L, (VECTOR(int64_t, 2))(0x61C6E3312069BF48L, 1L), 1L), // p_1504->g_946
        (VECTOR(int64_t, 2))(2L, (-3L)), // p_1504->g_947
        (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x3D9BC1F68F2BA683L), 0x3D9BC1F68F2BA683L), 0x3D9BC1F68F2BA683L, 0L, 0x3D9BC1F68F2BA683L), // p_1504->g_1007
        (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-5L)), (-5L)), (-5L), 1L, (-5L), (VECTOR(int64_t, 2))(1L, (-5L)), (VECTOR(int64_t, 2))(1L, (-5L)), 1L, (-5L), 1L, (-5L)), // p_1504->g_1010
        (VECTOR(int16_t, 2))(0x40A1L, 1L), // p_1504->g_1093
        (VECTOR(int64_t, 4))(0x00851B75EE3D8B10L, (VECTOR(int64_t, 2))(0x00851B75EE3D8B10L, 0L), 0L), // p_1504->g_1129
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-8L)), (-8L)), (-8L), (-1L), (-8L), (VECTOR(int32_t, 2))((-1L), (-8L)), (VECTOR(int32_t, 2))((-1L), (-8L)), (-1L), (-8L), (-1L), (-8L)), // p_1504->g_1132
        (VECTOR(int64_t, 8))(0x5ACB4C1927E046FBL, (VECTOR(int64_t, 4))(0x5ACB4C1927E046FBL, (VECTOR(int64_t, 2))(0x5ACB4C1927E046FBL, (-1L)), (-1L)), (-1L), 0x5ACB4C1927E046FBL, (-1L)), // p_1504->g_1138
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1504->g_1169
        {&p_1504->g_1169[0],&p_1504->g_1169[0],&p_1504->g_1169[0],&p_1504->g_1169[0]}, // p_1504->g_1168
        &p_1504->g_1168[3], // p_1504->g_1167
        (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x1115L), 0x1115L), 0x1115L, 1UL, 0x1115L, (VECTOR(uint16_t, 2))(1UL, 0x1115L), (VECTOR(uint16_t, 2))(1UL, 0x1115L), 1UL, 0x1115L, 1UL, 0x1115L), // p_1504->g_1198
        0xA61608FEL, // p_1504->g_1259
        (VECTOR(int8_t, 8))((-6L), (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 0x2AL), 0x2AL), 0x2AL, (-6L), 0x2AL), // p_1504->g_1292
        (VECTOR(int8_t, 2))((-2L), 0x70L), // p_1504->g_1294
        (VECTOR(int32_t, 8))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x6B826381L), 0x6B826381L), 0x6B826381L, 4L, 0x6B826381L), // p_1504->g_1296
        (VECTOR(int32_t, 16))(0x0D8CB293L, (VECTOR(int32_t, 4))(0x0D8CB293L, (VECTOR(int32_t, 2))(0x0D8CB293L, 0x0DB32BD3L), 0x0DB32BD3L), 0x0DB32BD3L, 0x0D8CB293L, 0x0DB32BD3L, (VECTOR(int32_t, 2))(0x0D8CB293L, 0x0DB32BD3L), (VECTOR(int32_t, 2))(0x0D8CB293L, 0x0DB32BD3L), 0x0D8CB293L, 0x0DB32BD3L, 0x0D8CB293L, 0x0DB32BD3L), // p_1504->g_1300
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x6CE98651L), 0x6CE98651L), // p_1504->g_1315
        &p_1504->g_896, // p_1504->g_1317
        &p_1504->g_1317, // p_1504->g_1316
        &p_1504->g_1316, // p_1504->g_1318
        {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_1504->g_1321
        (VECTOR(int16_t, 2))(0x78ADL, (-10L)), // p_1504->g_1337
        (VECTOR(uint8_t, 8))(0xA5L, (VECTOR(uint8_t, 4))(0xA5L, (VECTOR(uint8_t, 2))(0xA5L, 255UL), 255UL), 255UL, 0xA5L, 255UL), // p_1504->g_1344
        (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 1L), 1L), 1L, 1L, 1L), // p_1504->g_1372
        &p_1504->g_444[5], // p_1504->g_1393
        1L, // p_1504->g_1435
        (VECTOR(int64_t, 2))((-6L), 0x09ED59F449BEF7A3L), // p_1504->g_1484
        (VECTOR(int16_t, 16))(0x5FA2L, (VECTOR(int16_t, 4))(0x5FA2L, (VECTOR(int16_t, 2))(0x5FA2L, 0x69C4L), 0x69C4L), 0x69C4L, 0x5FA2L, 0x69C4L, (VECTOR(int16_t, 2))(0x5FA2L, 0x69C4L), (VECTOR(int16_t, 2))(0x5FA2L, 0x69C4L), 0x5FA2L, 0x69C4L, 0x5FA2L, 0x69C4L), // p_1504->g_1497
        (void*)0, // p_1504->g_1502
        &p_1504->g_1502, // p_1504->g_1501
        sequence_input[get_global_id(0)], // p_1504->global_0_offset
        sequence_input[get_global_id(1)], // p_1504->global_1_offset
        sequence_input[get_global_id(2)], // p_1504->global_2_offset
        sequence_input[get_local_id(0)], // p_1504->local_0_offset
        sequence_input[get_local_id(1)], // p_1504->local_1_offset
        sequence_input[get_local_id(2)], // p_1504->local_2_offset
        sequence_input[get_group_id(0)], // p_1504->group_0_offset
        sequence_input[get_group_id(1)], // p_1504->group_1_offset
        sequence_input[get_group_id(2)], // p_1504->group_2_offset
    };
    c_1505 = c_1506;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1504);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1504->g_2, "p_1504->g_2", print_hash_value);
    transparent_crc(p_1504->g_11, "p_1504->g_11", print_hash_value);
    transparent_crc(p_1504->g_16, "p_1504->g_16", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1504->g_17[i], "p_1504->g_17[i]", print_hash_value);

    }
    transparent_crc(p_1504->g_75.x, "p_1504->g_75.x", print_hash_value);
    transparent_crc(p_1504->g_75.y, "p_1504->g_75.y", print_hash_value);
    transparent_crc(p_1504->g_79.s0, "p_1504->g_79.s0", print_hash_value);
    transparent_crc(p_1504->g_79.s1, "p_1504->g_79.s1", print_hash_value);
    transparent_crc(p_1504->g_79.s2, "p_1504->g_79.s2", print_hash_value);
    transparent_crc(p_1504->g_79.s3, "p_1504->g_79.s3", print_hash_value);
    transparent_crc(p_1504->g_79.s4, "p_1504->g_79.s4", print_hash_value);
    transparent_crc(p_1504->g_79.s5, "p_1504->g_79.s5", print_hash_value);
    transparent_crc(p_1504->g_79.s6, "p_1504->g_79.s6", print_hash_value);
    transparent_crc(p_1504->g_79.s7, "p_1504->g_79.s7", print_hash_value);
    transparent_crc(p_1504->g_80.s0, "p_1504->g_80.s0", print_hash_value);
    transparent_crc(p_1504->g_80.s1, "p_1504->g_80.s1", print_hash_value);
    transparent_crc(p_1504->g_80.s2, "p_1504->g_80.s2", print_hash_value);
    transparent_crc(p_1504->g_80.s3, "p_1504->g_80.s3", print_hash_value);
    transparent_crc(p_1504->g_80.s4, "p_1504->g_80.s4", print_hash_value);
    transparent_crc(p_1504->g_80.s5, "p_1504->g_80.s5", print_hash_value);
    transparent_crc(p_1504->g_80.s6, "p_1504->g_80.s6", print_hash_value);
    transparent_crc(p_1504->g_80.s7, "p_1504->g_80.s7", print_hash_value);
    transparent_crc(p_1504->g_92, "p_1504->g_92", print_hash_value);
    transparent_crc(p_1504->g_93, "p_1504->g_93", print_hash_value);
    transparent_crc(p_1504->g_110, "p_1504->g_110", print_hash_value);
    transparent_crc(p_1504->g_134, "p_1504->g_134", print_hash_value);
    transparent_crc(p_1504->g_143.s0, "p_1504->g_143.s0", print_hash_value);
    transparent_crc(p_1504->g_143.s1, "p_1504->g_143.s1", print_hash_value);
    transparent_crc(p_1504->g_143.s2, "p_1504->g_143.s2", print_hash_value);
    transparent_crc(p_1504->g_143.s3, "p_1504->g_143.s3", print_hash_value);
    transparent_crc(p_1504->g_143.s4, "p_1504->g_143.s4", print_hash_value);
    transparent_crc(p_1504->g_143.s5, "p_1504->g_143.s5", print_hash_value);
    transparent_crc(p_1504->g_143.s6, "p_1504->g_143.s6", print_hash_value);
    transparent_crc(p_1504->g_143.s7, "p_1504->g_143.s7", print_hash_value);
    transparent_crc(p_1504->g_149.x, "p_1504->g_149.x", print_hash_value);
    transparent_crc(p_1504->g_149.y, "p_1504->g_149.y", print_hash_value);
    transparent_crc(p_1504->g_149.z, "p_1504->g_149.z", print_hash_value);
    transparent_crc(p_1504->g_149.w, "p_1504->g_149.w", print_hash_value);
    transparent_crc(p_1504->g_159, "p_1504->g_159", print_hash_value);
    transparent_crc(p_1504->g_188, "p_1504->g_188", print_hash_value);
    transparent_crc(p_1504->g_190, "p_1504->g_190", print_hash_value);
    transparent_crc(p_1504->g_204.x, "p_1504->g_204.x", print_hash_value);
    transparent_crc(p_1504->g_204.y, "p_1504->g_204.y", print_hash_value);
    transparent_crc(p_1504->g_204.z, "p_1504->g_204.z", print_hash_value);
    transparent_crc(p_1504->g_204.w, "p_1504->g_204.w", print_hash_value);
    transparent_crc(p_1504->g_205.x, "p_1504->g_205.x", print_hash_value);
    transparent_crc(p_1504->g_205.y, "p_1504->g_205.y", print_hash_value);
    transparent_crc(p_1504->g_207.s0, "p_1504->g_207.s0", print_hash_value);
    transparent_crc(p_1504->g_207.s1, "p_1504->g_207.s1", print_hash_value);
    transparent_crc(p_1504->g_207.s2, "p_1504->g_207.s2", print_hash_value);
    transparent_crc(p_1504->g_207.s3, "p_1504->g_207.s3", print_hash_value);
    transparent_crc(p_1504->g_207.s4, "p_1504->g_207.s4", print_hash_value);
    transparent_crc(p_1504->g_207.s5, "p_1504->g_207.s5", print_hash_value);
    transparent_crc(p_1504->g_207.s6, "p_1504->g_207.s6", print_hash_value);
    transparent_crc(p_1504->g_207.s7, "p_1504->g_207.s7", print_hash_value);
    transparent_crc(p_1504->g_215.x, "p_1504->g_215.x", print_hash_value);
    transparent_crc(p_1504->g_215.y, "p_1504->g_215.y", print_hash_value);
    transparent_crc(p_1504->g_233, "p_1504->g_233", print_hash_value);
    transparent_crc(p_1504->g_256, "p_1504->g_256", print_hash_value);
    transparent_crc(p_1504->g_267.x, "p_1504->g_267.x", print_hash_value);
    transparent_crc(p_1504->g_267.y, "p_1504->g_267.y", print_hash_value);
    transparent_crc(p_1504->g_267.z, "p_1504->g_267.z", print_hash_value);
    transparent_crc(p_1504->g_267.w, "p_1504->g_267.w", print_hash_value);
    transparent_crc(p_1504->g_309, "p_1504->g_309", print_hash_value);
    transparent_crc(p_1504->g_330.s0, "p_1504->g_330.s0", print_hash_value);
    transparent_crc(p_1504->g_330.s1, "p_1504->g_330.s1", print_hash_value);
    transparent_crc(p_1504->g_330.s2, "p_1504->g_330.s2", print_hash_value);
    transparent_crc(p_1504->g_330.s3, "p_1504->g_330.s3", print_hash_value);
    transparent_crc(p_1504->g_330.s4, "p_1504->g_330.s4", print_hash_value);
    transparent_crc(p_1504->g_330.s5, "p_1504->g_330.s5", print_hash_value);
    transparent_crc(p_1504->g_330.s6, "p_1504->g_330.s6", print_hash_value);
    transparent_crc(p_1504->g_330.s7, "p_1504->g_330.s7", print_hash_value);
    transparent_crc(p_1504->g_330.s8, "p_1504->g_330.s8", print_hash_value);
    transparent_crc(p_1504->g_330.s9, "p_1504->g_330.s9", print_hash_value);
    transparent_crc(p_1504->g_330.sa, "p_1504->g_330.sa", print_hash_value);
    transparent_crc(p_1504->g_330.sb, "p_1504->g_330.sb", print_hash_value);
    transparent_crc(p_1504->g_330.sc, "p_1504->g_330.sc", print_hash_value);
    transparent_crc(p_1504->g_330.sd, "p_1504->g_330.sd", print_hash_value);
    transparent_crc(p_1504->g_330.se, "p_1504->g_330.se", print_hash_value);
    transparent_crc(p_1504->g_330.sf, "p_1504->g_330.sf", print_hash_value);
    transparent_crc(p_1504->g_331, "p_1504->g_331", print_hash_value);
    transparent_crc(p_1504->g_335, "p_1504->g_335", print_hash_value);
    transparent_crc(p_1504->g_359.s0, "p_1504->g_359.s0", print_hash_value);
    transparent_crc(p_1504->g_359.s1, "p_1504->g_359.s1", print_hash_value);
    transparent_crc(p_1504->g_359.s2, "p_1504->g_359.s2", print_hash_value);
    transparent_crc(p_1504->g_359.s3, "p_1504->g_359.s3", print_hash_value);
    transparent_crc(p_1504->g_359.s4, "p_1504->g_359.s4", print_hash_value);
    transparent_crc(p_1504->g_359.s5, "p_1504->g_359.s5", print_hash_value);
    transparent_crc(p_1504->g_359.s6, "p_1504->g_359.s6", print_hash_value);
    transparent_crc(p_1504->g_359.s7, "p_1504->g_359.s7", print_hash_value);
    transparent_crc(p_1504->g_388.s0, "p_1504->g_388.s0", print_hash_value);
    transparent_crc(p_1504->g_388.s1, "p_1504->g_388.s1", print_hash_value);
    transparent_crc(p_1504->g_388.s2, "p_1504->g_388.s2", print_hash_value);
    transparent_crc(p_1504->g_388.s3, "p_1504->g_388.s3", print_hash_value);
    transparent_crc(p_1504->g_388.s4, "p_1504->g_388.s4", print_hash_value);
    transparent_crc(p_1504->g_388.s5, "p_1504->g_388.s5", print_hash_value);
    transparent_crc(p_1504->g_388.s6, "p_1504->g_388.s6", print_hash_value);
    transparent_crc(p_1504->g_388.s7, "p_1504->g_388.s7", print_hash_value);
    transparent_crc(p_1504->g_388.s8, "p_1504->g_388.s8", print_hash_value);
    transparent_crc(p_1504->g_388.s9, "p_1504->g_388.s9", print_hash_value);
    transparent_crc(p_1504->g_388.sa, "p_1504->g_388.sa", print_hash_value);
    transparent_crc(p_1504->g_388.sb, "p_1504->g_388.sb", print_hash_value);
    transparent_crc(p_1504->g_388.sc, "p_1504->g_388.sc", print_hash_value);
    transparent_crc(p_1504->g_388.sd, "p_1504->g_388.sd", print_hash_value);
    transparent_crc(p_1504->g_388.se, "p_1504->g_388.se", print_hash_value);
    transparent_crc(p_1504->g_388.sf, "p_1504->g_388.sf", print_hash_value);
    transparent_crc(p_1504->g_401.x, "p_1504->g_401.x", print_hash_value);
    transparent_crc(p_1504->g_401.y, "p_1504->g_401.y", print_hash_value);
    transparent_crc(p_1504->g_405.s0, "p_1504->g_405.s0", print_hash_value);
    transparent_crc(p_1504->g_405.s1, "p_1504->g_405.s1", print_hash_value);
    transparent_crc(p_1504->g_405.s2, "p_1504->g_405.s2", print_hash_value);
    transparent_crc(p_1504->g_405.s3, "p_1504->g_405.s3", print_hash_value);
    transparent_crc(p_1504->g_405.s4, "p_1504->g_405.s4", print_hash_value);
    transparent_crc(p_1504->g_405.s5, "p_1504->g_405.s5", print_hash_value);
    transparent_crc(p_1504->g_405.s6, "p_1504->g_405.s6", print_hash_value);
    transparent_crc(p_1504->g_405.s7, "p_1504->g_405.s7", print_hash_value);
    transparent_crc(p_1504->g_405.s8, "p_1504->g_405.s8", print_hash_value);
    transparent_crc(p_1504->g_405.s9, "p_1504->g_405.s9", print_hash_value);
    transparent_crc(p_1504->g_405.sa, "p_1504->g_405.sa", print_hash_value);
    transparent_crc(p_1504->g_405.sb, "p_1504->g_405.sb", print_hash_value);
    transparent_crc(p_1504->g_405.sc, "p_1504->g_405.sc", print_hash_value);
    transparent_crc(p_1504->g_405.sd, "p_1504->g_405.sd", print_hash_value);
    transparent_crc(p_1504->g_405.se, "p_1504->g_405.se", print_hash_value);
    transparent_crc(p_1504->g_405.sf, "p_1504->g_405.sf", print_hash_value);
    transparent_crc(p_1504->g_436, "p_1504->g_436", print_hash_value);
    transparent_crc(p_1504->g_443, "p_1504->g_443", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1504->g_444[i], "p_1504->g_444[i]", print_hash_value);

    }
    transparent_crc(p_1504->g_453.x, "p_1504->g_453.x", print_hash_value);
    transparent_crc(p_1504->g_453.y, "p_1504->g_453.y", print_hash_value);
    transparent_crc(p_1504->g_453.z, "p_1504->g_453.z", print_hash_value);
    transparent_crc(p_1504->g_453.w, "p_1504->g_453.w", print_hash_value);
    transparent_crc(p_1504->g_461.x, "p_1504->g_461.x", print_hash_value);
    transparent_crc(p_1504->g_461.y, "p_1504->g_461.y", print_hash_value);
    transparent_crc(p_1504->g_461.z, "p_1504->g_461.z", print_hash_value);
    transparent_crc(p_1504->g_461.w, "p_1504->g_461.w", print_hash_value);
    transparent_crc(p_1504->g_468.s0, "p_1504->g_468.s0", print_hash_value);
    transparent_crc(p_1504->g_468.s1, "p_1504->g_468.s1", print_hash_value);
    transparent_crc(p_1504->g_468.s2, "p_1504->g_468.s2", print_hash_value);
    transparent_crc(p_1504->g_468.s3, "p_1504->g_468.s3", print_hash_value);
    transparent_crc(p_1504->g_468.s4, "p_1504->g_468.s4", print_hash_value);
    transparent_crc(p_1504->g_468.s5, "p_1504->g_468.s5", print_hash_value);
    transparent_crc(p_1504->g_468.s6, "p_1504->g_468.s6", print_hash_value);
    transparent_crc(p_1504->g_468.s7, "p_1504->g_468.s7", print_hash_value);
    transparent_crc(p_1504->g_468.s8, "p_1504->g_468.s8", print_hash_value);
    transparent_crc(p_1504->g_468.s9, "p_1504->g_468.s9", print_hash_value);
    transparent_crc(p_1504->g_468.sa, "p_1504->g_468.sa", print_hash_value);
    transparent_crc(p_1504->g_468.sb, "p_1504->g_468.sb", print_hash_value);
    transparent_crc(p_1504->g_468.sc, "p_1504->g_468.sc", print_hash_value);
    transparent_crc(p_1504->g_468.sd, "p_1504->g_468.sd", print_hash_value);
    transparent_crc(p_1504->g_468.se, "p_1504->g_468.se", print_hash_value);
    transparent_crc(p_1504->g_468.sf, "p_1504->g_468.sf", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1504->g_550[i], "p_1504->g_550[i]", print_hash_value);

    }
    transparent_crc(p_1504->g_551.s0, "p_1504->g_551.s0", print_hash_value);
    transparent_crc(p_1504->g_551.s1, "p_1504->g_551.s1", print_hash_value);
    transparent_crc(p_1504->g_551.s2, "p_1504->g_551.s2", print_hash_value);
    transparent_crc(p_1504->g_551.s3, "p_1504->g_551.s3", print_hash_value);
    transparent_crc(p_1504->g_551.s4, "p_1504->g_551.s4", print_hash_value);
    transparent_crc(p_1504->g_551.s5, "p_1504->g_551.s5", print_hash_value);
    transparent_crc(p_1504->g_551.s6, "p_1504->g_551.s6", print_hash_value);
    transparent_crc(p_1504->g_551.s7, "p_1504->g_551.s7", print_hash_value);
    transparent_crc(p_1504->g_557.s0, "p_1504->g_557.s0", print_hash_value);
    transparent_crc(p_1504->g_557.s1, "p_1504->g_557.s1", print_hash_value);
    transparent_crc(p_1504->g_557.s2, "p_1504->g_557.s2", print_hash_value);
    transparent_crc(p_1504->g_557.s3, "p_1504->g_557.s3", print_hash_value);
    transparent_crc(p_1504->g_557.s4, "p_1504->g_557.s4", print_hash_value);
    transparent_crc(p_1504->g_557.s5, "p_1504->g_557.s5", print_hash_value);
    transparent_crc(p_1504->g_557.s6, "p_1504->g_557.s6", print_hash_value);
    transparent_crc(p_1504->g_557.s7, "p_1504->g_557.s7", print_hash_value);
    transparent_crc(p_1504->g_557.s8, "p_1504->g_557.s8", print_hash_value);
    transparent_crc(p_1504->g_557.s9, "p_1504->g_557.s9", print_hash_value);
    transparent_crc(p_1504->g_557.sa, "p_1504->g_557.sa", print_hash_value);
    transparent_crc(p_1504->g_557.sb, "p_1504->g_557.sb", print_hash_value);
    transparent_crc(p_1504->g_557.sc, "p_1504->g_557.sc", print_hash_value);
    transparent_crc(p_1504->g_557.sd, "p_1504->g_557.sd", print_hash_value);
    transparent_crc(p_1504->g_557.se, "p_1504->g_557.se", print_hash_value);
    transparent_crc(p_1504->g_557.sf, "p_1504->g_557.sf", print_hash_value);
    transparent_crc(p_1504->g_560.x, "p_1504->g_560.x", print_hash_value);
    transparent_crc(p_1504->g_560.y, "p_1504->g_560.y", print_hash_value);
    transparent_crc(p_1504->g_560.z, "p_1504->g_560.z", print_hash_value);
    transparent_crc(p_1504->g_560.w, "p_1504->g_560.w", print_hash_value);
    transparent_crc(p_1504->g_561.s0, "p_1504->g_561.s0", print_hash_value);
    transparent_crc(p_1504->g_561.s1, "p_1504->g_561.s1", print_hash_value);
    transparent_crc(p_1504->g_561.s2, "p_1504->g_561.s2", print_hash_value);
    transparent_crc(p_1504->g_561.s3, "p_1504->g_561.s3", print_hash_value);
    transparent_crc(p_1504->g_561.s4, "p_1504->g_561.s4", print_hash_value);
    transparent_crc(p_1504->g_561.s5, "p_1504->g_561.s5", print_hash_value);
    transparent_crc(p_1504->g_561.s6, "p_1504->g_561.s6", print_hash_value);
    transparent_crc(p_1504->g_561.s7, "p_1504->g_561.s7", print_hash_value);
    transparent_crc(p_1504->g_566.x, "p_1504->g_566.x", print_hash_value);
    transparent_crc(p_1504->g_566.y, "p_1504->g_566.y", print_hash_value);
    transparent_crc(p_1504->g_569.x, "p_1504->g_569.x", print_hash_value);
    transparent_crc(p_1504->g_569.y, "p_1504->g_569.y", print_hash_value);
    transparent_crc(p_1504->g_569.z, "p_1504->g_569.z", print_hash_value);
    transparent_crc(p_1504->g_569.w, "p_1504->g_569.w", print_hash_value);
    transparent_crc(p_1504->g_673.x, "p_1504->g_673.x", print_hash_value);
    transparent_crc(p_1504->g_673.y, "p_1504->g_673.y", print_hash_value);
    transparent_crc(p_1504->g_674.x, "p_1504->g_674.x", print_hash_value);
    transparent_crc(p_1504->g_674.y, "p_1504->g_674.y", print_hash_value);
    transparent_crc(p_1504->g_675.x, "p_1504->g_675.x", print_hash_value);
    transparent_crc(p_1504->g_675.y, "p_1504->g_675.y", print_hash_value);
    transparent_crc(p_1504->g_676.x, "p_1504->g_676.x", print_hash_value);
    transparent_crc(p_1504->g_676.y, "p_1504->g_676.y", print_hash_value);
    transparent_crc(p_1504->g_677.x, "p_1504->g_677.x", print_hash_value);
    transparent_crc(p_1504->g_677.y, "p_1504->g_677.y", print_hash_value);
    transparent_crc(p_1504->g_745.s0, "p_1504->g_745.s0", print_hash_value);
    transparent_crc(p_1504->g_745.s1, "p_1504->g_745.s1", print_hash_value);
    transparent_crc(p_1504->g_745.s2, "p_1504->g_745.s2", print_hash_value);
    transparent_crc(p_1504->g_745.s3, "p_1504->g_745.s3", print_hash_value);
    transparent_crc(p_1504->g_745.s4, "p_1504->g_745.s4", print_hash_value);
    transparent_crc(p_1504->g_745.s5, "p_1504->g_745.s5", print_hash_value);
    transparent_crc(p_1504->g_745.s6, "p_1504->g_745.s6", print_hash_value);
    transparent_crc(p_1504->g_745.s7, "p_1504->g_745.s7", print_hash_value);
    transparent_crc(p_1504->g_757.x, "p_1504->g_757.x", print_hash_value);
    transparent_crc(p_1504->g_757.y, "p_1504->g_757.y", print_hash_value);
    transparent_crc(p_1504->g_778.s0, "p_1504->g_778.s0", print_hash_value);
    transparent_crc(p_1504->g_778.s1, "p_1504->g_778.s1", print_hash_value);
    transparent_crc(p_1504->g_778.s2, "p_1504->g_778.s2", print_hash_value);
    transparent_crc(p_1504->g_778.s3, "p_1504->g_778.s3", print_hash_value);
    transparent_crc(p_1504->g_778.s4, "p_1504->g_778.s4", print_hash_value);
    transparent_crc(p_1504->g_778.s5, "p_1504->g_778.s5", print_hash_value);
    transparent_crc(p_1504->g_778.s6, "p_1504->g_778.s6", print_hash_value);
    transparent_crc(p_1504->g_778.s7, "p_1504->g_778.s7", print_hash_value);
    transparent_crc(p_1504->g_779.s0, "p_1504->g_779.s0", print_hash_value);
    transparent_crc(p_1504->g_779.s1, "p_1504->g_779.s1", print_hash_value);
    transparent_crc(p_1504->g_779.s2, "p_1504->g_779.s2", print_hash_value);
    transparent_crc(p_1504->g_779.s3, "p_1504->g_779.s3", print_hash_value);
    transparent_crc(p_1504->g_779.s4, "p_1504->g_779.s4", print_hash_value);
    transparent_crc(p_1504->g_779.s5, "p_1504->g_779.s5", print_hash_value);
    transparent_crc(p_1504->g_779.s6, "p_1504->g_779.s6", print_hash_value);
    transparent_crc(p_1504->g_779.s7, "p_1504->g_779.s7", print_hash_value);
    transparent_crc(p_1504->g_826.s0, "p_1504->g_826.s0", print_hash_value);
    transparent_crc(p_1504->g_826.s1, "p_1504->g_826.s1", print_hash_value);
    transparent_crc(p_1504->g_826.s2, "p_1504->g_826.s2", print_hash_value);
    transparent_crc(p_1504->g_826.s3, "p_1504->g_826.s3", print_hash_value);
    transparent_crc(p_1504->g_826.s4, "p_1504->g_826.s4", print_hash_value);
    transparent_crc(p_1504->g_826.s5, "p_1504->g_826.s5", print_hash_value);
    transparent_crc(p_1504->g_826.s6, "p_1504->g_826.s6", print_hash_value);
    transparent_crc(p_1504->g_826.s7, "p_1504->g_826.s7", print_hash_value);
    transparent_crc(p_1504->g_826.s8, "p_1504->g_826.s8", print_hash_value);
    transparent_crc(p_1504->g_826.s9, "p_1504->g_826.s9", print_hash_value);
    transparent_crc(p_1504->g_826.sa, "p_1504->g_826.sa", print_hash_value);
    transparent_crc(p_1504->g_826.sb, "p_1504->g_826.sb", print_hash_value);
    transparent_crc(p_1504->g_826.sc, "p_1504->g_826.sc", print_hash_value);
    transparent_crc(p_1504->g_826.sd, "p_1504->g_826.sd", print_hash_value);
    transparent_crc(p_1504->g_826.se, "p_1504->g_826.se", print_hash_value);
    transparent_crc(p_1504->g_826.sf, "p_1504->g_826.sf", print_hash_value);
    transparent_crc(p_1504->g_855.s0, "p_1504->g_855.s0", print_hash_value);
    transparent_crc(p_1504->g_855.s1, "p_1504->g_855.s1", print_hash_value);
    transparent_crc(p_1504->g_855.s2, "p_1504->g_855.s2", print_hash_value);
    transparent_crc(p_1504->g_855.s3, "p_1504->g_855.s3", print_hash_value);
    transparent_crc(p_1504->g_855.s4, "p_1504->g_855.s4", print_hash_value);
    transparent_crc(p_1504->g_855.s5, "p_1504->g_855.s5", print_hash_value);
    transparent_crc(p_1504->g_855.s6, "p_1504->g_855.s6", print_hash_value);
    transparent_crc(p_1504->g_855.s7, "p_1504->g_855.s7", print_hash_value);
    transparent_crc(p_1504->g_855.s8, "p_1504->g_855.s8", print_hash_value);
    transparent_crc(p_1504->g_855.s9, "p_1504->g_855.s9", print_hash_value);
    transparent_crc(p_1504->g_855.sa, "p_1504->g_855.sa", print_hash_value);
    transparent_crc(p_1504->g_855.sb, "p_1504->g_855.sb", print_hash_value);
    transparent_crc(p_1504->g_855.sc, "p_1504->g_855.sc", print_hash_value);
    transparent_crc(p_1504->g_855.sd, "p_1504->g_855.sd", print_hash_value);
    transparent_crc(p_1504->g_855.se, "p_1504->g_855.se", print_hash_value);
    transparent_crc(p_1504->g_855.sf, "p_1504->g_855.sf", print_hash_value);
    transparent_crc(p_1504->g_896, "p_1504->g_896", print_hash_value);
    transparent_crc(p_1504->g_907.x, "p_1504->g_907.x", print_hash_value);
    transparent_crc(p_1504->g_907.y, "p_1504->g_907.y", print_hash_value);
    transparent_crc(p_1504->g_907.z, "p_1504->g_907.z", print_hash_value);
    transparent_crc(p_1504->g_907.w, "p_1504->g_907.w", print_hash_value);
    transparent_crc(p_1504->g_936.s0, "p_1504->g_936.s0", print_hash_value);
    transparent_crc(p_1504->g_936.s1, "p_1504->g_936.s1", print_hash_value);
    transparent_crc(p_1504->g_936.s2, "p_1504->g_936.s2", print_hash_value);
    transparent_crc(p_1504->g_936.s3, "p_1504->g_936.s3", print_hash_value);
    transparent_crc(p_1504->g_936.s4, "p_1504->g_936.s4", print_hash_value);
    transparent_crc(p_1504->g_936.s5, "p_1504->g_936.s5", print_hash_value);
    transparent_crc(p_1504->g_936.s6, "p_1504->g_936.s6", print_hash_value);
    transparent_crc(p_1504->g_936.s7, "p_1504->g_936.s7", print_hash_value);
    transparent_crc(p_1504->g_936.s8, "p_1504->g_936.s8", print_hash_value);
    transparent_crc(p_1504->g_936.s9, "p_1504->g_936.s9", print_hash_value);
    transparent_crc(p_1504->g_936.sa, "p_1504->g_936.sa", print_hash_value);
    transparent_crc(p_1504->g_936.sb, "p_1504->g_936.sb", print_hash_value);
    transparent_crc(p_1504->g_936.sc, "p_1504->g_936.sc", print_hash_value);
    transparent_crc(p_1504->g_936.sd, "p_1504->g_936.sd", print_hash_value);
    transparent_crc(p_1504->g_936.se, "p_1504->g_936.se", print_hash_value);
    transparent_crc(p_1504->g_936.sf, "p_1504->g_936.sf", print_hash_value);
    transparent_crc(p_1504->g_944.x, "p_1504->g_944.x", print_hash_value);
    transparent_crc(p_1504->g_944.y, "p_1504->g_944.y", print_hash_value);
    transparent_crc(p_1504->g_944.z, "p_1504->g_944.z", print_hash_value);
    transparent_crc(p_1504->g_944.w, "p_1504->g_944.w", print_hash_value);
    transparent_crc(p_1504->g_946.x, "p_1504->g_946.x", print_hash_value);
    transparent_crc(p_1504->g_946.y, "p_1504->g_946.y", print_hash_value);
    transparent_crc(p_1504->g_946.z, "p_1504->g_946.z", print_hash_value);
    transparent_crc(p_1504->g_946.w, "p_1504->g_946.w", print_hash_value);
    transparent_crc(p_1504->g_947.x, "p_1504->g_947.x", print_hash_value);
    transparent_crc(p_1504->g_947.y, "p_1504->g_947.y", print_hash_value);
    transparent_crc(p_1504->g_1007.s0, "p_1504->g_1007.s0", print_hash_value);
    transparent_crc(p_1504->g_1007.s1, "p_1504->g_1007.s1", print_hash_value);
    transparent_crc(p_1504->g_1007.s2, "p_1504->g_1007.s2", print_hash_value);
    transparent_crc(p_1504->g_1007.s3, "p_1504->g_1007.s3", print_hash_value);
    transparent_crc(p_1504->g_1007.s4, "p_1504->g_1007.s4", print_hash_value);
    transparent_crc(p_1504->g_1007.s5, "p_1504->g_1007.s5", print_hash_value);
    transparent_crc(p_1504->g_1007.s6, "p_1504->g_1007.s6", print_hash_value);
    transparent_crc(p_1504->g_1007.s7, "p_1504->g_1007.s7", print_hash_value);
    transparent_crc(p_1504->g_1010.s0, "p_1504->g_1010.s0", print_hash_value);
    transparent_crc(p_1504->g_1010.s1, "p_1504->g_1010.s1", print_hash_value);
    transparent_crc(p_1504->g_1010.s2, "p_1504->g_1010.s2", print_hash_value);
    transparent_crc(p_1504->g_1010.s3, "p_1504->g_1010.s3", print_hash_value);
    transparent_crc(p_1504->g_1010.s4, "p_1504->g_1010.s4", print_hash_value);
    transparent_crc(p_1504->g_1010.s5, "p_1504->g_1010.s5", print_hash_value);
    transparent_crc(p_1504->g_1010.s6, "p_1504->g_1010.s6", print_hash_value);
    transparent_crc(p_1504->g_1010.s7, "p_1504->g_1010.s7", print_hash_value);
    transparent_crc(p_1504->g_1010.s8, "p_1504->g_1010.s8", print_hash_value);
    transparent_crc(p_1504->g_1010.s9, "p_1504->g_1010.s9", print_hash_value);
    transparent_crc(p_1504->g_1010.sa, "p_1504->g_1010.sa", print_hash_value);
    transparent_crc(p_1504->g_1010.sb, "p_1504->g_1010.sb", print_hash_value);
    transparent_crc(p_1504->g_1010.sc, "p_1504->g_1010.sc", print_hash_value);
    transparent_crc(p_1504->g_1010.sd, "p_1504->g_1010.sd", print_hash_value);
    transparent_crc(p_1504->g_1010.se, "p_1504->g_1010.se", print_hash_value);
    transparent_crc(p_1504->g_1010.sf, "p_1504->g_1010.sf", print_hash_value);
    transparent_crc(p_1504->g_1093.x, "p_1504->g_1093.x", print_hash_value);
    transparent_crc(p_1504->g_1093.y, "p_1504->g_1093.y", print_hash_value);
    transparent_crc(p_1504->g_1129.x, "p_1504->g_1129.x", print_hash_value);
    transparent_crc(p_1504->g_1129.y, "p_1504->g_1129.y", print_hash_value);
    transparent_crc(p_1504->g_1129.z, "p_1504->g_1129.z", print_hash_value);
    transparent_crc(p_1504->g_1129.w, "p_1504->g_1129.w", print_hash_value);
    transparent_crc(p_1504->g_1132.s0, "p_1504->g_1132.s0", print_hash_value);
    transparent_crc(p_1504->g_1132.s1, "p_1504->g_1132.s1", print_hash_value);
    transparent_crc(p_1504->g_1132.s2, "p_1504->g_1132.s2", print_hash_value);
    transparent_crc(p_1504->g_1132.s3, "p_1504->g_1132.s3", print_hash_value);
    transparent_crc(p_1504->g_1132.s4, "p_1504->g_1132.s4", print_hash_value);
    transparent_crc(p_1504->g_1132.s5, "p_1504->g_1132.s5", print_hash_value);
    transparent_crc(p_1504->g_1132.s6, "p_1504->g_1132.s6", print_hash_value);
    transparent_crc(p_1504->g_1132.s7, "p_1504->g_1132.s7", print_hash_value);
    transparent_crc(p_1504->g_1132.s8, "p_1504->g_1132.s8", print_hash_value);
    transparent_crc(p_1504->g_1132.s9, "p_1504->g_1132.s9", print_hash_value);
    transparent_crc(p_1504->g_1132.sa, "p_1504->g_1132.sa", print_hash_value);
    transparent_crc(p_1504->g_1132.sb, "p_1504->g_1132.sb", print_hash_value);
    transparent_crc(p_1504->g_1132.sc, "p_1504->g_1132.sc", print_hash_value);
    transparent_crc(p_1504->g_1132.sd, "p_1504->g_1132.sd", print_hash_value);
    transparent_crc(p_1504->g_1132.se, "p_1504->g_1132.se", print_hash_value);
    transparent_crc(p_1504->g_1132.sf, "p_1504->g_1132.sf", print_hash_value);
    transparent_crc(p_1504->g_1138.s0, "p_1504->g_1138.s0", print_hash_value);
    transparent_crc(p_1504->g_1138.s1, "p_1504->g_1138.s1", print_hash_value);
    transparent_crc(p_1504->g_1138.s2, "p_1504->g_1138.s2", print_hash_value);
    transparent_crc(p_1504->g_1138.s3, "p_1504->g_1138.s3", print_hash_value);
    transparent_crc(p_1504->g_1138.s4, "p_1504->g_1138.s4", print_hash_value);
    transparent_crc(p_1504->g_1138.s5, "p_1504->g_1138.s5", print_hash_value);
    transparent_crc(p_1504->g_1138.s6, "p_1504->g_1138.s6", print_hash_value);
    transparent_crc(p_1504->g_1138.s7, "p_1504->g_1138.s7", print_hash_value);
    transparent_crc(p_1504->g_1198.s0, "p_1504->g_1198.s0", print_hash_value);
    transparent_crc(p_1504->g_1198.s1, "p_1504->g_1198.s1", print_hash_value);
    transparent_crc(p_1504->g_1198.s2, "p_1504->g_1198.s2", print_hash_value);
    transparent_crc(p_1504->g_1198.s3, "p_1504->g_1198.s3", print_hash_value);
    transparent_crc(p_1504->g_1198.s4, "p_1504->g_1198.s4", print_hash_value);
    transparent_crc(p_1504->g_1198.s5, "p_1504->g_1198.s5", print_hash_value);
    transparent_crc(p_1504->g_1198.s6, "p_1504->g_1198.s6", print_hash_value);
    transparent_crc(p_1504->g_1198.s7, "p_1504->g_1198.s7", print_hash_value);
    transparent_crc(p_1504->g_1198.s8, "p_1504->g_1198.s8", print_hash_value);
    transparent_crc(p_1504->g_1198.s9, "p_1504->g_1198.s9", print_hash_value);
    transparent_crc(p_1504->g_1198.sa, "p_1504->g_1198.sa", print_hash_value);
    transparent_crc(p_1504->g_1198.sb, "p_1504->g_1198.sb", print_hash_value);
    transparent_crc(p_1504->g_1198.sc, "p_1504->g_1198.sc", print_hash_value);
    transparent_crc(p_1504->g_1198.sd, "p_1504->g_1198.sd", print_hash_value);
    transparent_crc(p_1504->g_1198.se, "p_1504->g_1198.se", print_hash_value);
    transparent_crc(p_1504->g_1198.sf, "p_1504->g_1198.sf", print_hash_value);
    transparent_crc(p_1504->g_1259, "p_1504->g_1259", print_hash_value);
    transparent_crc(p_1504->g_1292.s0, "p_1504->g_1292.s0", print_hash_value);
    transparent_crc(p_1504->g_1292.s1, "p_1504->g_1292.s1", print_hash_value);
    transparent_crc(p_1504->g_1292.s2, "p_1504->g_1292.s2", print_hash_value);
    transparent_crc(p_1504->g_1292.s3, "p_1504->g_1292.s3", print_hash_value);
    transparent_crc(p_1504->g_1292.s4, "p_1504->g_1292.s4", print_hash_value);
    transparent_crc(p_1504->g_1292.s5, "p_1504->g_1292.s5", print_hash_value);
    transparent_crc(p_1504->g_1292.s6, "p_1504->g_1292.s6", print_hash_value);
    transparent_crc(p_1504->g_1292.s7, "p_1504->g_1292.s7", print_hash_value);
    transparent_crc(p_1504->g_1294.x, "p_1504->g_1294.x", print_hash_value);
    transparent_crc(p_1504->g_1294.y, "p_1504->g_1294.y", print_hash_value);
    transparent_crc(p_1504->g_1296.s0, "p_1504->g_1296.s0", print_hash_value);
    transparent_crc(p_1504->g_1296.s1, "p_1504->g_1296.s1", print_hash_value);
    transparent_crc(p_1504->g_1296.s2, "p_1504->g_1296.s2", print_hash_value);
    transparent_crc(p_1504->g_1296.s3, "p_1504->g_1296.s3", print_hash_value);
    transparent_crc(p_1504->g_1296.s4, "p_1504->g_1296.s4", print_hash_value);
    transparent_crc(p_1504->g_1296.s5, "p_1504->g_1296.s5", print_hash_value);
    transparent_crc(p_1504->g_1296.s6, "p_1504->g_1296.s6", print_hash_value);
    transparent_crc(p_1504->g_1296.s7, "p_1504->g_1296.s7", print_hash_value);
    transparent_crc(p_1504->g_1300.s0, "p_1504->g_1300.s0", print_hash_value);
    transparent_crc(p_1504->g_1300.s1, "p_1504->g_1300.s1", print_hash_value);
    transparent_crc(p_1504->g_1300.s2, "p_1504->g_1300.s2", print_hash_value);
    transparent_crc(p_1504->g_1300.s3, "p_1504->g_1300.s3", print_hash_value);
    transparent_crc(p_1504->g_1300.s4, "p_1504->g_1300.s4", print_hash_value);
    transparent_crc(p_1504->g_1300.s5, "p_1504->g_1300.s5", print_hash_value);
    transparent_crc(p_1504->g_1300.s6, "p_1504->g_1300.s6", print_hash_value);
    transparent_crc(p_1504->g_1300.s7, "p_1504->g_1300.s7", print_hash_value);
    transparent_crc(p_1504->g_1300.s8, "p_1504->g_1300.s8", print_hash_value);
    transparent_crc(p_1504->g_1300.s9, "p_1504->g_1300.s9", print_hash_value);
    transparent_crc(p_1504->g_1300.sa, "p_1504->g_1300.sa", print_hash_value);
    transparent_crc(p_1504->g_1300.sb, "p_1504->g_1300.sb", print_hash_value);
    transparent_crc(p_1504->g_1300.sc, "p_1504->g_1300.sc", print_hash_value);
    transparent_crc(p_1504->g_1300.sd, "p_1504->g_1300.sd", print_hash_value);
    transparent_crc(p_1504->g_1300.se, "p_1504->g_1300.se", print_hash_value);
    transparent_crc(p_1504->g_1300.sf, "p_1504->g_1300.sf", print_hash_value);
    transparent_crc(p_1504->g_1315.x, "p_1504->g_1315.x", print_hash_value);
    transparent_crc(p_1504->g_1315.y, "p_1504->g_1315.y", print_hash_value);
    transparent_crc(p_1504->g_1315.z, "p_1504->g_1315.z", print_hash_value);
    transparent_crc(p_1504->g_1315.w, "p_1504->g_1315.w", print_hash_value);
    transparent_crc(p_1504->g_1337.x, "p_1504->g_1337.x", print_hash_value);
    transparent_crc(p_1504->g_1337.y, "p_1504->g_1337.y", print_hash_value);
    transparent_crc(p_1504->g_1344.s0, "p_1504->g_1344.s0", print_hash_value);
    transparent_crc(p_1504->g_1344.s1, "p_1504->g_1344.s1", print_hash_value);
    transparent_crc(p_1504->g_1344.s2, "p_1504->g_1344.s2", print_hash_value);
    transparent_crc(p_1504->g_1344.s3, "p_1504->g_1344.s3", print_hash_value);
    transparent_crc(p_1504->g_1344.s4, "p_1504->g_1344.s4", print_hash_value);
    transparent_crc(p_1504->g_1344.s5, "p_1504->g_1344.s5", print_hash_value);
    transparent_crc(p_1504->g_1344.s6, "p_1504->g_1344.s6", print_hash_value);
    transparent_crc(p_1504->g_1344.s7, "p_1504->g_1344.s7", print_hash_value);
    transparent_crc(p_1504->g_1372.s0, "p_1504->g_1372.s0", print_hash_value);
    transparent_crc(p_1504->g_1372.s1, "p_1504->g_1372.s1", print_hash_value);
    transparent_crc(p_1504->g_1372.s2, "p_1504->g_1372.s2", print_hash_value);
    transparent_crc(p_1504->g_1372.s3, "p_1504->g_1372.s3", print_hash_value);
    transparent_crc(p_1504->g_1372.s4, "p_1504->g_1372.s4", print_hash_value);
    transparent_crc(p_1504->g_1372.s5, "p_1504->g_1372.s5", print_hash_value);
    transparent_crc(p_1504->g_1372.s6, "p_1504->g_1372.s6", print_hash_value);
    transparent_crc(p_1504->g_1372.s7, "p_1504->g_1372.s7", print_hash_value);
    transparent_crc(p_1504->g_1435, "p_1504->g_1435", print_hash_value);
    transparent_crc(p_1504->g_1484.x, "p_1504->g_1484.x", print_hash_value);
    transparent_crc(p_1504->g_1484.y, "p_1504->g_1484.y", print_hash_value);
    transparent_crc(p_1504->g_1497.s0, "p_1504->g_1497.s0", print_hash_value);
    transparent_crc(p_1504->g_1497.s1, "p_1504->g_1497.s1", print_hash_value);
    transparent_crc(p_1504->g_1497.s2, "p_1504->g_1497.s2", print_hash_value);
    transparent_crc(p_1504->g_1497.s3, "p_1504->g_1497.s3", print_hash_value);
    transparent_crc(p_1504->g_1497.s4, "p_1504->g_1497.s4", print_hash_value);
    transparent_crc(p_1504->g_1497.s5, "p_1504->g_1497.s5", print_hash_value);
    transparent_crc(p_1504->g_1497.s6, "p_1504->g_1497.s6", print_hash_value);
    transparent_crc(p_1504->g_1497.s7, "p_1504->g_1497.s7", print_hash_value);
    transparent_crc(p_1504->g_1497.s8, "p_1504->g_1497.s8", print_hash_value);
    transparent_crc(p_1504->g_1497.s9, "p_1504->g_1497.s9", print_hash_value);
    transparent_crc(p_1504->g_1497.sa, "p_1504->g_1497.sa", print_hash_value);
    transparent_crc(p_1504->g_1497.sb, "p_1504->g_1497.sb", print_hash_value);
    transparent_crc(p_1504->g_1497.sc, "p_1504->g_1497.sc", print_hash_value);
    transparent_crc(p_1504->g_1497.sd, "p_1504->g_1497.sd", print_hash_value);
    transparent_crc(p_1504->g_1497.se, "p_1504->g_1497.se", print_hash_value);
    transparent_crc(p_1504->g_1497.sf, "p_1504->g_1497.sf", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
