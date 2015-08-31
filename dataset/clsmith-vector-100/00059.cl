// ---fake_divergence -g 1,1,1 -l 1,1,1
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


// Seed: 59

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   volatile int16_t  f1;
   uint16_t  f2;
   uint16_t  f3;
};

struct S1 {
    volatile int32_t g_2;
    volatile VECTOR(int32_t, 4) g_3;
    volatile int32_t g_4[5][5][5];
    volatile int32_t g_5;
    volatile int32_t g_6;
    volatile int32_t g_7;
    int32_t g_8;
    int32_t g_12;
    int32_t g_21;
    int8_t g_30;
    int32_t *g_42;
    int32_t **g_41;
    VECTOR(int8_t, 2) g_52;
    VECTOR(int8_t, 8) g_53;
    uint64_t g_58;
    int32_t g_61;
    VECTOR(uint8_t, 2) g_62;
    VECTOR(int32_t, 8) g_72;
    uint64_t g_81;
    uint64_t g_82;
    VECTOR(uint16_t, 2) g_104;
    int16_t g_116;
    uint64_t g_131;
    uint64_t *g_130;
    VECTOR(int32_t, 2) g_135;
    VECTOR(int32_t, 2) g_136;
    uint8_t g_139;
    int8_t *g_146;
    int8_t **g_145;
    VECTOR(int8_t, 4) g_167;
    VECTOR(int8_t, 4) g_170;
    VECTOR(int16_t, 2) g_181;
    uint8_t g_222;
    int16_t g_223;
    VECTOR(int64_t, 2) g_226;
    VECTOR(int64_t, 8) g_227;
    int16_t *g_249[2];
    struct S0 g_256;
    struct S0 g_259;
    struct S0 g_261;
    struct S0 *g_260;
    VECTOR(uint32_t, 2) g_266;
    VECTOR(int32_t, 4) g_273;
    VECTOR(uint8_t, 2) g_278;
    volatile VECTOR(int32_t, 2) g_287;
    int16_t **g_294;
    int32_t *g_315[7];
    int32_t ** volatile g_314;
    struct S0 g_316;
    struct S0 g_317[2][8];
    struct S0 g_327[6];
    struct S0 * volatile g_328;
    uint32_t g_372;
    uint8_t *g_375;
    uint8_t ** volatile g_374;
    uint8_t ** volatile * volatile g_376;
    struct S0 g_381;
    struct S0 g_382;
    VECTOR(int16_t, 4) g_398;
    struct S0 g_421;
    uint16_t *g_426;
    VECTOR(int16_t, 4) g_478;
    int32_t *** volatile g_483;
    volatile VECTOR(int16_t, 2) g_513;
    volatile VECTOR(int16_t, 8) g_516;
    VECTOR(int16_t, 16) g_517;
    uint32_t g_519;
    uint8_t **g_554;
    VECTOR(uint64_t, 4) g_587;
    volatile VECTOR(uint64_t, 4) g_588;
    volatile struct S0 g_612;
    volatile struct S0 g_624;
    struct S0 g_629;
    VECTOR(int8_t, 4) g_633;
    volatile VECTOR(int8_t, 8) g_636;
    VECTOR(int8_t, 2) g_637;
    VECTOR(int8_t, 16) g_638;
    VECTOR(int32_t, 4) g_665;
    VECTOR(int32_t, 8) g_666;
    VECTOR(int32_t, 2) g_668;
    VECTOR(int32_t, 2) g_692;
    VECTOR(int32_t, 2) g_694;
    VECTOR(int32_t, 16) g_695;
    VECTOR(int32_t, 4) g_697;
    VECTOR(int32_t, 16) g_700;
    volatile VECTOR(uint32_t, 16) g_713;
    int16_t **g_719;
    int32_t ***g_745;
    volatile VECTOR(uint32_t, 16) g_757;
    volatile VECTOR(uint32_t, 16) g_758;
    VECTOR(uint32_t, 2) g_759;
    volatile VECTOR(uint32_t, 8) g_763;
    VECTOR(uint32_t, 16) g_766;
    volatile VECTOR(uint64_t, 16) g_777;
    VECTOR(uint16_t, 8) g_818;
    volatile VECTOR(int32_t, 2) g_825;
    volatile VECTOR(uint16_t, 2) g_831;
    uint32_t **g_896;
    uint32_t *** volatile g_895[8];
    uint32_t *** volatile g_897;
    VECTOR(uint16_t, 2) g_915;
    int16_t g_928;
    struct S0 ** volatile g_944;
    struct S0 * volatile g_975[8][10];
    volatile VECTOR(uint64_t, 4) g_986;
    int16_t ***g_1025;
    int16_t ****g_1024;
    int64_t *g_1036[7][4][5];
    int64_t * volatile *g_1035;
    VECTOR(uint32_t, 8) g_1047;
    volatile int8_t g_1072;
    volatile int8_t * volatile g_1071[1];
    volatile int8_t * volatile *g_1070;
    volatile int8_t * volatile **g_1069[10];
    int64_t g_1073;
    VECTOR(int64_t, 16) g_1118;
    VECTOR(int32_t, 16) g_1126;
    struct S0 g_1179;
    volatile VECTOR(int8_t, 2) g_1221;
    VECTOR(int8_t, 8) g_1222;
    VECTOR(int8_t, 8) g_1223;
    VECTOR(int8_t, 8) g_1224;
    VECTOR(int8_t, 8) g_1225;
    VECTOR(int8_t, 8) g_1227;
    VECTOR(int8_t, 16) g_1228;
    uint64_t g_1241;
    int32_t g_1246;
    volatile VECTOR(int32_t, 16) g_1261;
    VECTOR(int32_t, 2) g_1262;
    VECTOR(int32_t, 4) g_1264;
    uint32_t *g_1287;
    uint32_t * volatile *g_1286;
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
uint64_t  func_1(struct S1 * p_1291);
int32_t ** func_24(int8_t  p_25, int32_t ** p_26, int32_t * p_27, uint32_t  p_28, struct S1 * p_1291);
int32_t * func_32(int8_t * p_33, int32_t * p_34, struct S1 * p_1291);
int8_t * func_35(int32_t * p_36, struct S1 * p_1291);
struct S0  func_37(int32_t ** p_38, uint64_t  p_39, int64_t  p_40, struct S1 * p_1291);
uint8_t  func_46(int32_t  p_47, uint64_t  p_48, int8_t * p_49, uint8_t  p_50, int8_t * p_51, struct S1 * p_1291);
int64_t  func_54(uint64_t  p_55, uint64_t  p_56, struct S1 * p_1291);
VECTOR(int8_t, 2)  func_64(uint32_t  p_65, struct S1 * p_1291);
uint32_t  func_66(int8_t * p_67, uint32_t  p_68, struct S1 * p_1291);
int32_t  func_74(int32_t ** p_75, uint64_t  p_76, uint32_t  p_77, int8_t * p_78, struct S1 * p_1291);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1291->g_8 p_1291->g_314 p_1291->g_315 p_1291->g_260 p_1291->g_1024 p_1291->g_426 p_1291->g_382.f3 p_1291->g_1035 p_1291->g_104 p_1291->g_381.f0 p_1291->g_372 p_1291->g_53 p_1291->g_256.f3 p_1291->g_1261 p_1291->g_1262 p_1291->g_1264 p_1291->g_139 p_1291->g_1025 p_1291->g_1286 p_1291->g_1287 p_1291->g_629.f0 p_1291->g_62 p_1291->g_766
 * writes: p_1291->g_8 p_1291->g_1024 p_1291->g_256.f3 p_1291->g_139 p_1291->g_382.f3
 */
uint64_t  func_1(struct S1 * p_1291)
{ /* block id: 4 */
    uint32_t l_15 = 4294967291UL;
    int16_t *l_500 = (void*)0;
    uint16_t **l_510 = &p_1291->g_426;
    VECTOR(int16_t, 8) l_515 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-10L)), (-10L)), (-10L), 0L, (-10L));
    VECTOR(int32_t, 4) l_524 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 6L), 6L);
    VECTOR(int32_t, 2) l_560 = (VECTOR(int32_t, 2))(0L, 1L);
    int32_t *l_621[3][7][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    VECTOR(int16_t, 4) l_627 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-1L)), (-1L));
    VECTOR(int32_t, 16) l_663 = (VECTOR(int32_t, 16))(0x7B81F415L, (VECTOR(int32_t, 4))(0x7B81F415L, (VECTOR(int32_t, 2))(0x7B81F415L, 0x3F436300L), 0x3F436300L), 0x3F436300L, 0x7B81F415L, 0x3F436300L, (VECTOR(int32_t, 2))(0x7B81F415L, 0x3F436300L), (VECTOR(int32_t, 2))(0x7B81F415L, 0x3F436300L), 0x7B81F415L, 0x3F436300L, 0x7B81F415L, 0x3F436300L);
    uint8_t l_689 = 0xBBL;
    VECTOR(int32_t, 4) l_696 = (VECTOR(int32_t, 4))(0x5F01E7ADL, (VECTOR(int32_t, 2))(0x5F01E7ADL, 1L), 1L);
    VECTOR(int32_t, 4) l_698 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x5E8915D6L), 0x5E8915D6L);
    int32_t l_711[4];
    int16_t ***l_721 = (void*)0;
    int32_t l_824 = 0L;
    uint64_t l_890 = 9UL;
    uint32_t *l_894 = &l_15;
    uint32_t **l_893 = &l_894;
    int32_t l_899 = 1L;
    uint8_t ***l_968 = (void*)0;
    uint8_t ****l_967 = &l_968;
    int8_t l_969 = 1L;
    int8_t *l_970 = (void*)0;
    VECTOR(int32_t, 8) l_1015 = (VECTOR(int32_t, 8))(0x1D9ACA22L, (VECTOR(int32_t, 4))(0x1D9ACA22L, (VECTOR(int32_t, 2))(0x1D9ACA22L, 0x38F6EC8BL), 0x38F6EC8BL), 0x38F6EC8BL, 0x1D9ACA22L, 0x38F6EC8BL);
    int32_t l_1019 = 0x220E1B23L;
    int16_t *****l_1026 = &p_1291->g_1024;
    uint8_t *l_1027[6][2][2] = {{{&p_1291->g_222,&p_1291->g_222},{&p_1291->g_222,&p_1291->g_222}},{{&p_1291->g_222,&p_1291->g_222},{&p_1291->g_222,&p_1291->g_222}},{{&p_1291->g_222,&p_1291->g_222},{&p_1291->g_222,&p_1291->g_222}},{{&p_1291->g_222,&p_1291->g_222},{&p_1291->g_222,&p_1291->g_222}},{{&p_1291->g_222,&p_1291->g_222},{&p_1291->g_222,&p_1291->g_222}},{{&p_1291->g_222,&p_1291->g_222},{&p_1291->g_222,&p_1291->g_222}}};
    int16_t l_1028 = 0x5701L;
    int32_t l_1037 = 0x50F20AC0L;
    uint32_t l_1075[4];
    int64_t l_1141 = 3L;
    int32_t l_1199 = 0x7C85B38BL;
    uint32_t l_1200 = 0xE9777859L;
    uint8_t *l_1229 = &p_1291->g_139;
    struct S0 **l_1238 = &p_1291->g_260;
    int32_t l_1243 = 0x5924A156L;
    uint32_t l_1251 = 0xCA345E2BL;
    int32_t l_1290 = (-1L);
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_711[i] = 0x22A14C7FL;
    for (i = 0; i < 4; i++)
        l_1075[i] = 0UL;
    for (p_1291->g_8 = 0; (p_1291->g_8 > 25); p_1291->g_8++)
    { /* block id: 7 */
        int32_t *l_11 = &p_1291->g_12;
        int32_t *l_13 = &p_1291->g_12;
        int32_t *l_14 = &p_1291->g_12;
        int16_t *l_496[3];
        VECTOR(uint16_t, 8) l_499 = (VECTOR(uint16_t, 8))(0x2943L, (VECTOR(uint16_t, 4))(0x2943L, (VECTOR(uint16_t, 2))(0x2943L, 0UL), 0UL), 0UL, 0x2943L, 0UL);
        int8_t *l_501 = (void*)0;
        int8_t *l_502 = (void*)0;
        int8_t *l_503 = (void*)0;
        int8_t *l_504 = (void*)0;
        int8_t *l_505 = (void*)0;
        int8_t *l_506 = (void*)0;
        int8_t *l_507 = &p_1291->g_30;
        VECTOR(int16_t, 4) l_514 = (VECTOR(int16_t, 4))(0x18B7L, (VECTOR(int16_t, 2))(0x18B7L, (-10L)), (-10L));
        uint64_t *l_518 = &p_1291->g_81;
        uint8_t l_609 = 0x1DL;
        int16_t l_610 = 0x3D86L;
        VECTOR(int8_t, 8) l_639 = (VECTOR(int8_t, 8))(3L, (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 0x7EL), 0x7EL), 0x7EL, 3L, 0x7EL);
        int32_t l_687 = 8L;
        int32_t l_688[9][2][5] = {{{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L},{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L}},{{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L},{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L}},{{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L},{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L}},{{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L},{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L}},{{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L},{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L}},{{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L},{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L}},{{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L},{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L}},{{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L},{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L}},{{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L},{1L,0x1A4D26CCL,(-1L),0x1A4D26CCL,1L}}};
        uint8_t l_712 = 248UL;
        VECTOR(uint32_t, 16) l_725 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967295UL, 4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), 4294967295UL, 4294967295UL, 4294967295UL, 4294967295UL);
        VECTOR(uint32_t, 16) l_726 = (VECTOR(uint32_t, 16))(0xE2DA9272L, (VECTOR(uint32_t, 4))(0xE2DA9272L, (VECTOR(uint32_t, 2))(0xE2DA9272L, 0x9E0638D4L), 0x9E0638D4L), 0x9E0638D4L, 0xE2DA9272L, 0x9E0638D4L, (VECTOR(uint32_t, 2))(0xE2DA9272L, 0x9E0638D4L), (VECTOR(uint32_t, 2))(0xE2DA9272L, 0x9E0638D4L), 0xE2DA9272L, 0x9E0638D4L, 0xE2DA9272L, 0x9E0638D4L);
        VECTOR(uint32_t, 2) l_754 = (VECTOR(uint32_t, 2))(0x8FCA76C1L, 0UL);
        uint32_t l_780 = 4294967289UL;
        VECTOR(int32_t, 2) l_794 = (VECTOR(int32_t, 2))((-1L), 0x11375E43L);
        VECTOR(uint16_t, 2) l_823 = (VECTOR(uint16_t, 2))(65532UL, 9UL);
        VECTOR(uint16_t, 4) l_830 = (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 6UL), 6UL);
        VECTOR(int32_t, 16) l_858 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int32_t, 2))(1L, (-1L)), (VECTOR(int32_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L));
        VECTOR(uint32_t, 16) l_859 = (VECTOR(uint32_t, 16))(0xB9B6C3B3L, (VECTOR(uint32_t, 4))(0xB9B6C3B3L, (VECTOR(uint32_t, 2))(0xB9B6C3B3L, 0x3B4F6DA3L), 0x3B4F6DA3L), 0x3B4F6DA3L, 0xB9B6C3B3L, 0x3B4F6DA3L, (VECTOR(uint32_t, 2))(0xB9B6C3B3L, 0x3B4F6DA3L), (VECTOR(uint32_t, 2))(0xB9B6C3B3L, 0x3B4F6DA3L), 0xB9B6C3B3L, 0x3B4F6DA3L, 0xB9B6C3B3L, 0x3B4F6DA3L);
        int32_t l_925[9] = {0x42F9E0B2L,0x42F9E0B2L,0x42F9E0B2L,0x42F9E0B2L,0x42F9E0B2L,0x42F9E0B2L,0x42F9E0B2L,0x42F9E0B2L,0x42F9E0B2L};
        uint16_t l_930 = 65528UL;
        struct S0 *l_933 = &p_1291->g_316;
        VECTOR(uint8_t, 16) l_1016 = (VECTOR(uint8_t, 16))(3UL, (VECTOR(uint8_t, 4))(3UL, (VECTOR(uint8_t, 2))(3UL, 0x30L), 0x30L), 0x30L, 3UL, 0x30L, (VECTOR(uint8_t, 2))(3UL, 0x30L), (VECTOR(uint8_t, 2))(3UL, 0x30L), 3UL, 0x30L, 3UL, 0x30L);
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_496[i] = &p_1291->g_223;
        l_15--;
    }
    if ((((**p_1291->g_314) = (-1L)) ^ (l_1019 && (safe_sub_func_uint16_t_u_u((safe_sub_func_int16_t_s_s((p_1291->g_260 == (void*)0), (FAKE_DIVERGE(p_1291->group_1_offset, get_group_id(1), 10) && (((*l_1026) = p_1291->g_1024) == ((((VECTOR(uint8_t, 8))((l_1028 = 0x98L), ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 16))(((((*p_1291->g_426) != ((safe_mod_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u((p_1291->g_1035 == &p_1291->g_1036[3][2][3]), p_1291->g_104.y)), 0xA0L)) < 0x5681L)) > 0x0D41L) , 0x2CL), 0UL, p_1291->g_381.f0, 0x3BL, 246UL, ((VECTOR(uint8_t, 8))(0x82L)), 255UL, 0x19L, 0x81L)), ((VECTOR(uint8_t, 16))(0x3AL)), ((VECTOR(uint8_t, 16))(255UL))))).s654a + ((VECTOR(uint8_t, 4))(249UL))))) ^ ((VECTOR(uint8_t, 4))(0x02L))))), l_1037, 255UL, 1UL)).s1 > p_1291->g_372) , &l_721))))), 9UL)))))
    { /* block id: 387 */
        return p_1291->g_53.s4;
    }
    else
    { /* block id: 389 */
        int32_t l_1062 = (-1L);
        int32_t l_1076[10] = {5L,5L,5L,5L,5L,5L,5L,5L,5L,5L};
        uint32_t **l_1084 = &l_894;
        uint32_t **l_1085 = (void*)0;
        uint64_t *l_1108 = (void*)0;
        int8_t **l_1163 = (void*)0;
        VECTOR(uint8_t, 2) l_1170 = (VECTOR(uint8_t, 2))(0xCEL, 9UL);
        int16_t *****l_1174 = (void*)0;
        uint8_t l_1178 = 1UL;
        int32_t l_1204 = 0x4FBD19B7L;
        VECTOR(int8_t, 4) l_1220 = (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, 0L), 0L);
        uint64_t l_1248 = 5UL;
        int16_t ****l_1271 = &p_1291->g_1025;
        int i;
        for (p_1291->g_256.f3 = 0; (p_1291->g_256.f3 > 12); p_1291->g_256.f3 = safe_add_func_int16_t_s_s(p_1291->g_256.f3, 1))
        { /* block id: 392 */
            int8_t l_1042 = 0x60L;
            int32_t l_1074 = 0x47229947L;
            uint32_t *l_1077 = &l_1075[2];
            int32_t l_1078 = 0x7ADB2995L;
            int64_t *l_1089 = &p_1291->g_1073;
            int16_t l_1142 = 7L;
            int16_t *****l_1175 = &p_1291->g_1024;
            uint32_t l_1177 = 0xDF036A5BL;
            uint32_t l_1182[5] = {0x5749E543L,0x5749E543L,0x5749E543L,0x5749E543L,0x5749E543L};
            int16_t *l_1203 = &l_1142;
            VECTOR(int8_t, 16) l_1219 = (VECTOR(int8_t, 16))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 0x4AL), 0x4AL), 0x4AL, (-8L), 0x4AL, (VECTOR(int8_t, 2))((-8L), 0x4AL), (VECTOR(int8_t, 2))((-8L), 0x4AL), (-8L), 0x4AL, (-8L), 0x4AL);
            VECTOR(int8_t, 8) l_1226 = (VECTOR(int8_t, 8))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x73L), 0x73L), 0x73L, (-2L), 0x73L);
            int16_t l_1244 = 9L;
            int32_t l_1245 = 0x5D4EC27EL;
            int32_t l_1247 = 1L;
            int i;
            (1 + 1);
        }
        l_1251--;
        for (l_890 = (-26); (l_890 > 23); l_890 = safe_add_func_uint8_t_u_u(l_890, 1))
        { /* block id: 460 */
            uint32_t l_1258 = 4294967295UL;
            int16_t l_1288 = 0x4F2AL;
            int32_t l_1289 = 0x236D2D0FL;
            for (l_1204 = 2; (l_1204 != (-24)); --l_1204)
            { /* block id: 463 */
                VECTOR(int32_t, 8) l_1263 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x786ECCC5L), 0x786ECCC5L), 0x786ECCC5L, (-1L), 0x786ECCC5L);
                int16_t *l_1267 = (void*)0;
                uint32_t l_1268 = 4294967295UL;
                int16_t ****l_1270[7] = {&l_721,&l_721,&l_721,&l_721,&l_721,&l_721,&l_721};
                int16_t *****l_1269 = &l_1270[3];
                uint64_t l_1284 = 0xBCF87FD15E2C6B69L;
                int32_t l_1285 = (-7L);
                int i;
                l_1076[8] = (((FAKE_DIVERGE(p_1291->group_0_offset, get_group_id(0), 10) != l_1258) , 0x4808L) & (safe_add_func_int32_t_s_s(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(p_1291->g_1261.sf203)).even > ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(p_1291->g_1262.xyyy)).odd < ((VECTOR(int32_t, 8))(l_1263.s51223323)).s06))) && ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 4))(p_1291->g_1264.wzwz)).yzwywxww, ((VECTOR(int32_t, 2))(0x716575E1L, 0x71457C43L)).xyxxxxyx))).s71, (int32_t)(safe_sub_func_int16_t_s_s((l_1268 = l_1263.s2), ((((*l_1269) = ((*l_1026) = (*l_1026))) == l_1271) , ((safe_mod_func_uint32_t_u_u((((safe_mod_func_int16_t_s_s(l_1258, (((safe_rshift_func_uint8_t_u_s((safe_div_func_uint16_t_u_u(((*p_1291->g_426) = (((*l_1229)--) <= (safe_div_func_int8_t_s_s(((*p_1291->g_1024) != (*p_1291->g_1024)), ((((((l_1284 == l_1285) , (void*)0) == p_1291->g_1286) <= l_1258) >= l_1284) || 0x0DF7E0205ACE95CEL))))), l_1284)), l_1076[8])) || l_1263.s5) || 65533UL))) >= 1UL) , l_1258), (**p_1291->g_1286))) ^ l_1258)))))))))), 4L, 0x44178251L)), 0x08217682L, 4L, ((VECTOR(int32_t, 4))(0x5554563DL)), 0x262B5DF7L, l_1288, 0x5BAC99D0L, ((VECTOR(int32_t, 2))(0L)), 0x796F537BL)).se6))).xxyxxyxxyxyxxxxx, (int32_t)(**p_1291->g_314)))) ^ ((VECTOR(int32_t, 16))(0x6A172175L))))).sa, 0x3EF603B5L)));
                l_1289 |= ((**p_1291->g_314) &= 1L);
                return p_1291->g_62.x;
            }
            l_1290 &= ((VECTOR(int32_t, 2))(3L, (-1L))).lo;
        }
    }
    return p_1291->g_766.sb;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t ** func_24(int8_t  p_25, int32_t ** p_26, int32_t * p_27, uint32_t  p_28, struct S1 * p_1291)
{ /* block id: 208 */
    int32_t **l_482 = &p_1291->g_42;
    return l_482;
}


/* ------------------------------------------ */
/* 
 * reads : p_1291->g_82 p_1291->g_21 p_1291->g_145 p_1291->g_4 p_1291->g_426 p_1291->g_259.f3 p_1291->g_382.f2 p_1291->g_256.f2 p_1291->g_327.f3 p_1291->g_136 p_1291->g_327.f2 p_1291->g_273 p_1291->g_261.f0 p_1291->g_314 p_1291->g_315 p_1291->g_8
 * writes: p_1291->g_146 p_1291->g_81 p_1291->g_478
 */
int32_t * func_32(int8_t * p_33, int32_t * p_34, struct S1 * p_1291)
{ /* block id: 199 */
    VECTOR(int32_t, 2) l_463 = (VECTOR(int32_t, 2))(0x2D40FF24L, 1L);
    int32_t *l_464 = (void*)0;
    int32_t *l_465[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t l_466 = 255UL;
    int8_t *l_471 = (void*)0;
    uint8_t **l_473 = &p_1291->g_375;
    uint8_t ***l_472[7] = {&l_473,&l_473,&l_473,&l_473,&l_473,&l_473,&l_473};
    int64_t l_476[9][1] = {{0x19DBB064BC4B1547L},{0x19DBB064BC4B1547L},{0x19DBB064BC4B1547L},{0x19DBB064BC4B1547L},{0x19DBB064BC4B1547L},{0x19DBB064BC4B1547L},{0x19DBB064BC4B1547L},{0x19DBB064BC4B1547L},{0x19DBB064BC4B1547L}};
    uint64_t *l_477 = &p_1291->g_81;
    uint16_t l_479 = 0x9570L;
    uint32_t l_480 = 0UL;
    int8_t l_481 = 0x30L;
    int i, j;
    l_481 &= (((safe_mul_func_int16_t_s_s(((l_466 = ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 2))(7L, 0x1FE5822DL)).xxxxxxyxyyyyyyxx, ((VECTOR(int32_t, 2))(l_463.xy)).yxyyyxyyxxyxyxyx))).sc) & (safe_lshift_func_uint8_t_u_u(((p_1291->g_478.y = (p_1291->g_82 != ((((*l_477) = ((((*p_34) >= (safe_lshift_func_uint8_t_u_u((((*p_1291->g_145) = p_33) == (l_471 = l_471)), (((&p_1291->g_374 != l_472[1]) || (-1L)) != (0x3B4631039514F6FFL < (((((safe_mod_func_uint16_t_u_u((p_1291->g_4[4][1][3] , (*p_1291->g_426)), l_476[5][0])) , 0x02A1FC4A1C6C59DFL) , p_1291->g_136.y) > 1UL) && 0x7F17943AL)))))) && (*p_1291->g_426)) == p_1291->g_327[3].f2)) ^ p_1291->g_273.x) == p_1291->g_261.f0))) , 0x62L), 1))), l_479)) & (-10L)) > l_480);
    return (*p_1291->g_314);
}


/* ------------------------------------------ */
/* 
 * reads : p_1291->g_41 p_1291->g_6 p_1291->g_52 p_1291->g_53 p_1291->g_21 p_1291->g_61 p_1291->g_62 p_1291->g_12 p_1291->g_222 p_1291->g_261.f3 p_1291->g_266 p_1291->g_136 p_1291->g_42 p_1291->g_135 p_1291->g_256.f3 p_1291->g_260 p_1291->g_256 p_1291->g_259.f0 p_1291->g_314 p_1291->g_316 p_1291->g_327 p_1291->g_328 p_1291->g_261.f1 p_1291->g_372 p_1291->g_374 p_1291->g_376 p_1291->g_315 p_1291->g_381 p_1291->g_398 p_1291->g_261.f0 p_1291->g_278 p_1291->g_261.f2 p_1291->g_130 p_1291->g_259 p_1291->g_249 p_1291->g_139 p_1291->g_382.f1 p_1291->g_145 p_1291->g_146
 * writes: p_1291->g_58 p_1291->g_61 p_1291->g_260 p_1291->g_222 p_1291->g_261.f3 p_1291->g_42 p_1291->g_294 p_1291->g_261.f0 p_1291->g_261.f2 p_1291->g_315 p_1291->g_317 p_1291->g_316.f2 p_1291->g_256.f3 p_1291->g_145 p_1291->g_259 p_1291->g_256.f0 p_1291->g_374 p_1291->g_256.f2 p_1291->g_382 p_1291->g_421 p_1291->g_426 p_1291->g_139 p_1291->g_266
 */
int8_t * func_35(int32_t * p_36, struct S1 * p_1291)
{ /* block id: 17 */
    uint8_t l_43 = 0x6DL;
    uint64_t *l_57[1];
    VECTOR(int8_t, 8) l_63 = (VECTOR(int8_t, 8))(0x6AL, (VECTOR(int8_t, 4))(0x6AL, (VECTOR(int8_t, 2))(0x6AL, 0x74L), 0x74L), 0x74L, 0x6AL, 0x74L);
    int8_t *l_69 = (void*)0;
    int16_t l_254[5];
    struct S0 *l_420 = (void*)0;
    uint16_t *l_424[8] = {&p_1291->g_327[3].f3,&p_1291->g_327[3].f3,&p_1291->g_327[3].f3,&p_1291->g_327[3].f3,&p_1291->g_327[3].f3,&p_1291->g_327[3].f3,&p_1291->g_327[3].f3,&p_1291->g_327[3].f3};
    uint16_t **l_425 = (void*)0;
    uint16_t *l_428 = &p_1291->g_381.f2;
    uint16_t **l_427 = &l_428;
    int32_t l_429 = 1L;
    int8_t l_430 = 0x67L;
    VECTOR(int16_t, 4) l_433 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L);
    VECTOR(int16_t, 4) l_446 = (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x6921L), 0x6921L);
    VECTOR(int32_t, 4) l_449 = (VECTOR(int32_t, 4))(0x674A8916L, (VECTOR(int32_t, 2))(0x674A8916L, 0x79FCE833L), 0x79FCE833L);
    VECTOR(int16_t, 8) l_450 = (VECTOR(int16_t, 8))(0x1257L, (VECTOR(int16_t, 4))(0x1257L, (VECTOR(int16_t, 2))(0x1257L, 1L), 1L), 1L, 0x1257L, 1L);
    uint8_t *l_455 = &p_1291->g_139;
    int16_t *l_458 = &l_254[0];
    uint32_t *l_459[2][7][9] = {{{&p_1291->g_261.f0,&p_1291->g_317[1][7].f0,&p_1291->g_327[3].f0,(void*)0,(void*)0,(void*)0,&p_1291->g_382.f0,&p_1291->g_327[3].f0,(void*)0},{&p_1291->g_261.f0,&p_1291->g_317[1][7].f0,&p_1291->g_327[3].f0,(void*)0,(void*)0,(void*)0,&p_1291->g_382.f0,&p_1291->g_327[3].f0,(void*)0},{&p_1291->g_261.f0,&p_1291->g_317[1][7].f0,&p_1291->g_327[3].f0,(void*)0,(void*)0,(void*)0,&p_1291->g_382.f0,&p_1291->g_327[3].f0,(void*)0},{&p_1291->g_261.f0,&p_1291->g_317[1][7].f0,&p_1291->g_327[3].f0,(void*)0,(void*)0,(void*)0,&p_1291->g_382.f0,&p_1291->g_327[3].f0,(void*)0},{&p_1291->g_261.f0,&p_1291->g_317[1][7].f0,&p_1291->g_327[3].f0,(void*)0,(void*)0,(void*)0,&p_1291->g_382.f0,&p_1291->g_327[3].f0,(void*)0},{&p_1291->g_261.f0,&p_1291->g_317[1][7].f0,&p_1291->g_327[3].f0,(void*)0,(void*)0,(void*)0,&p_1291->g_382.f0,&p_1291->g_327[3].f0,(void*)0},{&p_1291->g_261.f0,&p_1291->g_317[1][7].f0,&p_1291->g_327[3].f0,(void*)0,(void*)0,(void*)0,&p_1291->g_382.f0,&p_1291->g_327[3].f0,(void*)0}},{{&p_1291->g_261.f0,&p_1291->g_317[1][7].f0,&p_1291->g_327[3].f0,(void*)0,(void*)0,(void*)0,&p_1291->g_382.f0,&p_1291->g_327[3].f0,(void*)0},{&p_1291->g_261.f0,&p_1291->g_317[1][7].f0,&p_1291->g_327[3].f0,(void*)0,(void*)0,(void*)0,&p_1291->g_382.f0,&p_1291->g_327[3].f0,(void*)0},{&p_1291->g_261.f0,&p_1291->g_317[1][7].f0,&p_1291->g_327[3].f0,(void*)0,(void*)0,(void*)0,&p_1291->g_382.f0,&p_1291->g_327[3].f0,(void*)0},{&p_1291->g_261.f0,&p_1291->g_317[1][7].f0,&p_1291->g_327[3].f0,(void*)0,(void*)0,(void*)0,&p_1291->g_382.f0,&p_1291->g_327[3].f0,(void*)0},{&p_1291->g_261.f0,&p_1291->g_317[1][7].f0,&p_1291->g_327[3].f0,(void*)0,(void*)0,(void*)0,&p_1291->g_382.f0,&p_1291->g_327[3].f0,(void*)0},{&p_1291->g_261.f0,&p_1291->g_317[1][7].f0,&p_1291->g_327[3].f0,(void*)0,(void*)0,(void*)0,&p_1291->g_382.f0,&p_1291->g_327[3].f0,(void*)0},{&p_1291->g_261.f0,&p_1291->g_317[1][7].f0,&p_1291->g_327[3].f0,(void*)0,(void*)0,(void*)0,&p_1291->g_382.f0,&p_1291->g_327[3].f0,(void*)0}}};
    int32_t *l_460 = &p_1291->g_61;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_57[i] = &p_1291->g_58;
    for (i = 0; i < 5; i++)
        l_254[i] = (-6L);
    p_1291->g_421 = func_37(p_1291->g_41, l_43, ((safe_lshift_func_int8_t_s_u(p_1291->g_6, func_46((((VECTOR(int8_t, 8))(0x10L, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(1L, 0L)).xxxy && ((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 2))(p_1291->g_52.yy)).yxyx, ((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 4))(p_1291->g_53.s1503)).xzwwzzzw))).lo)))))), 0x2EL, 0L, 0x5DL)).s4 == (func_54((p_1291->g_53.s6 && p_1291->g_21), (p_1291->g_58 = l_43), p_1291) == (((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 4))(p_1291->g_62.yxxy)).ywywwwxxyzxwwzzx))).sd != ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_63.s04)), ((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 2))(func_64(func_66(l_69, l_63.s7, p_1291), p_1291))), ((VECTOR(int8_t, 2))(1L)), ((VECTOR(int8_t, 2))(1L))))), ((VECTOR(int8_t, 2))(0x65L)), 0L, (-1L))).s3))), l_254[0], l_69, l_63.s5, l_69, p_1291))) == p_1291->g_21), p_1291);
    l_429 = (safe_sub_func_int16_t_s_s(((((p_1291->g_426 = l_424[0]) == ((*l_427) = p_1291->g_249[1])) == 0x28L) != 0x47FE1232D19A8E6BL), 65531UL));
    l_429 &= l_430;
    (*l_460) |= (((p_1291->g_266.x = (safe_sub_func_int64_t_s_s((((VECTOR(int16_t, 8))(l_433.wyyywyxy)).s5 , ((safe_mod_func_uint64_t_u_u((l_63.s6 || (((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(0x26FEF397EA7F2D93L, (safe_mul_func_int16_t_s_s((l_429 = l_43), l_433.z)), (-2L), 0L)) <= ((VECTOR(int64_t, 2))(0x7C9B417AD3555730L, 0x7C9BA6312DA6C167L)).yyxy))).z && (safe_mod_func_uint32_t_u_u(((&p_1291->g_381 == (l_433.w , l_420)) , (safe_mul_func_int16_t_s_s((((((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 2))(0UL, 0xCA94DF0FL)).yxxxyxxxxyyyxyxy, ((VECTOR(uint32_t, 2))(4294967290UL, 4294967295UL)).xyxyxxyyyxyxxyyy))).s5 <= (l_43 > (safe_mul_func_uint8_t_u_u((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 8))(l_446.yywxxxxx)).s0, ((*l_458) = ((safe_div_func_int16_t_s_s(l_43, (((VECTOR(int32_t, 16))(l_449.xyzwwywwyzyxzyzx)).s6 , ((VECTOR(int16_t, 8))(l_450.s35733435)).s2))) ^ (safe_mod_func_uint16_t_u_u((+(safe_mul_func_int16_t_s_s((~(((*l_455)--) || l_63.s6)), l_63.s5))), l_429)))))), l_449.z)))) >= 3L) , 0x6DBBL), (-1L)))), (*p_36))))), p_1291->g_382.f1)) , p_1291->g_278.x)), 0x70A5CB390D5A0965L))) | 0L) , 0x385968ECL);
    return (*p_1291->g_145);
}


/* ------------------------------------------ */
/* 
 * reads : p_1291->g_256.f3 p_1291->g_260 p_1291->g_256 p_1291->g_259.f0 p_1291->g_42 p_1291->g_41 p_1291->g_314 p_1291->g_316 p_1291->g_327 p_1291->g_328 p_1291->g_261.f1 p_1291->g_372 p_1291->g_374 p_1291->g_376 p_1291->g_315 p_1291->g_381 p_1291->g_398 p_1291->g_261.f0 p_1291->g_278 p_1291->g_261.f2 p_1291->g_130 p_1291->g_259 p_1291->g_261.f3
 * writes: p_1291->g_261.f3 p_1291->g_294 p_1291->g_261.f0 p_1291->g_261.f2 p_1291->g_42 p_1291->g_315 p_1291->g_317 p_1291->g_316.f2 p_1291->g_256.f3 p_1291->g_145 p_1291->g_259 p_1291->g_256.f0 p_1291->g_374 p_1291->g_256.f2 p_1291->g_382
 */
struct S0  func_37(int32_t ** p_38, uint64_t  p_39, int64_t  p_40, struct S1 * p_1291)
{ /* block id: 121 */
    VECTOR(int32_t, 16) l_274 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x65CF904FL), 0x65CF904FL), 0x65CF904FL, 1L, 0x65CF904FL, (VECTOR(int32_t, 2))(1L, 0x65CF904FL), (VECTOR(int32_t, 2))(1L, 0x65CF904FL), 1L, 0x65CF904FL, 1L, 0x65CF904FL);
    VECTOR(int32_t, 8) l_275 = (VECTOR(int32_t, 8))(0x112448B6L, (VECTOR(int32_t, 4))(0x112448B6L, (VECTOR(int32_t, 2))(0x112448B6L, 0x51C910E2L), 0x51C910E2L), 0x51C910E2L, 0x112448B6L, 0x51C910E2L);
    VECTOR(uint8_t, 16) l_281 = (VECTOR(uint8_t, 16))(0x1CL, (VECTOR(uint8_t, 4))(0x1CL, (VECTOR(uint8_t, 2))(0x1CL, 1UL), 1UL), 1UL, 0x1CL, 1UL, (VECTOR(uint8_t, 2))(0x1CL, 1UL), (VECTOR(uint8_t, 2))(0x1CL, 1UL), 0x1CL, 1UL, 0x1CL, 1UL);
    VECTOR(int32_t, 2) l_285 = (VECTOR(int32_t, 2))(0x3D3B314CL, 0x7EAD032EL);
    uint64_t l_286 = 0xFD32755289B1115BL;
    int16_t *l_291 = &p_1291->g_116;
    int8_t *l_312[8][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
    uint16_t *l_320 = (void*)0;
    int8_t l_348 = 0x24L;
    uint8_t l_350 = 0xB4L;
    VECTOR(uint32_t, 16) l_395 = (VECTOR(uint32_t, 16))(0x6D07593FL, (VECTOR(uint32_t, 4))(0x6D07593FL, (VECTOR(uint32_t, 2))(0x6D07593FL, 4UL), 4UL), 4UL, 0x6D07593FL, 4UL, (VECTOR(uint32_t, 2))(0x6D07593FL, 4UL), (VECTOR(uint32_t, 2))(0x6D07593FL, 4UL), 0x6D07593FL, 4UL, 0x6D07593FL, 4UL);
    VECTOR(int16_t, 4) l_399 = (VECTOR(int16_t, 4))(0x7733L, (VECTOR(int16_t, 2))(0x7733L, 0L), 0L);
    VECTOR(int16_t, 4) l_400 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L);
    int64_t *l_407 = (void*)0;
    int64_t **l_408 = &l_407;
    int32_t **l_409 = &p_1291->g_315[3];
    int32_t l_417 = 0x68F11CCBL;
    uint64_t l_418[5][6] = {{18446744073709551615UL,0xF7673C7619013019L,0x64DB529A44E015EFL,0xF7673C7619013019L,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,0xF7673C7619013019L,0x64DB529A44E015EFL,0xF7673C7619013019L,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,0xF7673C7619013019L,0x64DB529A44E015EFL,0xF7673C7619013019L,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,0xF7673C7619013019L,0x64DB529A44E015EFL,0xF7673C7619013019L,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,0xF7673C7619013019L,0x64DB529A44E015EFL,0xF7673C7619013019L,18446744073709551615UL,18446744073709551615UL}};
    int32_t l_419 = (-9L);
    int i, j;
lbl_406:
    for (p_1291->g_261.f3 = 0; (p_1291->g_261.f3 != 1); ++p_1291->g_261.f3)
    { /* block id: 124 */
        VECTOR(int32_t, 4) l_272 = (VECTOR(int32_t, 4))(0x6A2F1FBFL, (VECTOR(int32_t, 2))(0x6A2F1FBFL, (-1L)), (-1L));
        VECTOR(uint8_t, 16) l_282 = (VECTOR(uint8_t, 16))(253UL, (VECTOR(uint8_t, 4))(253UL, (VECTOR(uint8_t, 2))(253UL, 251UL), 251UL), 251UL, 253UL, 251UL, (VECTOR(uint8_t, 2))(253UL, 251UL), (VECTOR(uint8_t, 2))(253UL, 251UL), 253UL, 251UL, 253UL, 251UL);
        int8_t **l_283[3][5][1] = {{{&p_1291->g_146},{&p_1291->g_146},{&p_1291->g_146},{&p_1291->g_146},{&p_1291->g_146}},{{&p_1291->g_146},{&p_1291->g_146},{&p_1291->g_146},{&p_1291->g_146},{&p_1291->g_146}},{{&p_1291->g_146},{&p_1291->g_146},{&p_1291->g_146},{&p_1291->g_146},{&p_1291->g_146}}};
        VECTOR(int32_t, 4) l_284 = (VECTOR(int32_t, 4))(0x78F86351L, (VECTOR(int32_t, 2))(0x78F86351L, 0x3ECA8AF3L), 0x3ECA8AF3L);
        VECTOR(int32_t, 2) l_288 = (VECTOR(int32_t, 2))(0x6CEBCF6CL, 0x5E7EDE4CL);
        VECTOR(int32_t, 16) l_289 = (VECTOR(int32_t, 16))(0x43AB0933L, (VECTOR(int32_t, 4))(0x43AB0933L, (VECTOR(int32_t, 2))(0x43AB0933L, (-3L)), (-3L)), (-3L), 0x43AB0933L, (-3L), (VECTOR(int32_t, 2))(0x43AB0933L, (-3L)), (VECTOR(int32_t, 2))(0x43AB0933L, (-3L)), 0x43AB0933L, (-3L), 0x43AB0933L, (-3L));
        int16_t *l_290[6] = {(void*)0,&p_1291->g_223,(void*)0,(void*)0,&p_1291->g_223,(void*)0};
        uint64_t *l_296 = &p_1291->g_82;
        uint64_t **l_295 = &l_296;
        uint32_t *l_297 = &p_1291->g_261.f0;
        uint16_t *l_298 = (void*)0;
        uint16_t *l_299 = &p_1291->g_261.f2;
        int8_t l_313[1][4];
        int64_t l_404 = 0x4447965BABE103C8L;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 4; j++)
                l_313[i][j] = 0x69L;
        }
        l_275.s2 = ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(1L, ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(l_272.zyyywxyxzwxywyyy)) && ((VECTOR(int32_t, 2))(p_1291->g_273.yz)).xxyyyxxyxyxyyyxx))).sf6, ((VECTOR(int32_t, 8))(0x24915FEBL, ((VECTOR(int32_t, 4))(l_274.s8e76)), (+0x5ECE3665L), (-1L), 0x31692AAEL)).s31, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(l_275.s1306)).wwzyzxzz || ((VECTOR(int32_t, 4))(3L, 7L, 0x7789BA3DL, (-6L))).wyyyyyyy))).s11))), (((-1L) > ((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 16))(0x16L, (&p_1291->g_131 == (void*)0), ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(p_1291->g_278.yyyy)).xzyzyzxw + ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(l_281.sed148a94a3069ee7)).lo >> ((VECTOR(uint8_t, 8))(8)))))))), 0UL, ((VECTOR(uint8_t, 2))(0x36L, 3UL)), 255UL, 254UL, 249UL)).s7765, ((VECTOR(uint8_t, 4))(l_282.sa163))))).x) <= ((void*)0 != l_283[1][2][0])), 0x74274A60L, ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))(l_284.yzyzwwxz)).s26, ((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(0L, 0x722B174CL)) && ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(l_285.xxxxyyyx)), ((VECTOR(int32_t, 16))((-9L), ((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 16))((-6L), l_286, 0x180F5DF9L, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))(p_1291->g_287.xxyxxyxx)).hi, ((VECTOR(int32_t, 2))(l_288.xy)).yxxx))).xzzywzwy ^ ((VECTOR(int32_t, 8))(l_289.sff5785db))))).s0, 1L, (l_290[0] == l_291), ((VECTOR(int32_t, 8))((-8L))), 3L, 2L)).lo, ((VECTOR(int32_t, 8))(9L))))), ((VECTOR(int32_t, 4))(0x512072A0L)), 3L, (-2L), 1L)).lo, ((VECTOR(int32_t, 8))((-3L)))))).s43 | ((VECTOR(int32_t, 2))(1L)))))))).yxyxyyyyxxxyyyxx, ((VECTOR(int32_t, 16))((-1L)))))).s37))), 0x23F8AABBL)).s07 <= ((VECTOR(int32_t, 2))(6L))))), ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))(1L))))).lo;
        if ((safe_rshift_func_uint16_t_u_s(p_1291->g_256.f3, ((((((*l_299) = (((p_1291->g_294 = &l_291) != ((l_284.w > ((*l_297) = (((*l_295) = &l_286) == &p_1291->g_82))) , &p_1291->g_249[1])) & (((l_274.sd &= ((*p_1291->g_260) , ((&p_1291->g_42 != (((0x023DE7585C343ED7L == GROUP_DIVERGE(1, 1)) , p_1291->g_259.f0) , (void*)0)) & l_272.z))) && l_282.s1) ^ 6UL))) < p_40) || l_282.s6) , (void*)0) == (void*)0))))
        { /* block id: 131 */
            uint16_t *l_318 = &p_1291->g_256.f3;
            uint16_t **l_319[4][5] = {{&l_298,&l_299,&l_298,&l_318,&l_299},{&l_298,&l_299,&l_298,&l_318,&l_299},{&l_298,&l_299,&l_298,&l_318,&l_299},{&l_298,&l_299,&l_298,&l_318,&l_299}};
            int32_t l_337 = 0x214CBF6FL;
            int32_t l_338 = 0x0A3B6E87L;
            int32_t l_341 = 0x0480F26EL;
            int32_t l_342 = 0x5A18A621L;
            int32_t l_343 = (-2L);
            int32_t l_344 = 0x7DEFD505L;
            int i, j;
            if ((safe_lshift_func_int8_t_s_u(((safe_sub_func_uint64_t_u_u(((*l_296) = ((VECTOR(uint64_t, 16))(((p_1291->g_136.y >= (safe_lshift_func_uint8_t_u_s((0x2A9C730C4FFE81D1L < (p_40 = 0x71F85FD576F8DA45L)), p_39))) ^ (-3L)), ((VECTOR(uint64_t, 8))(18446744073709551615UL, p_1291->g_259.f1, (safe_mod_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((((*l_297) = ((safe_sub_func_uint8_t_u_u(((l_312[1][1] != ((p_39 != (!1L)) , (*p_1291->g_145))) , l_313[0][1]), p_40)) || p_1291->g_181.x)) < p_40), 0x42FFL)), l_281.s4)), ((VECTOR(uint64_t, 2))(0x45CF3C4684D97F7DL)), l_281.sc, 1UL, 18446744073709551606UL)), ((VECTOR(uint64_t, 2))(0xFC48EE5F808D2E61L)), p_39, ((VECTOR(uint64_t, 4))(0xED0FD44119981730L)))).sc), 18446744073709551608UL)) | l_274.sd), p_39)))
            { /* block id: 135 */
                return (*p_1291->g_260);
            }
            else
            { /* block id: 137 */
                (*p_1291->g_314) = ((*p_1291->g_41) = (*p_38));
                p_1291->g_317[1][7] = p_1291->g_316;
                if (p_39)
                    goto lbl_406;
            }
            if (((l_320 = (l_299 = l_318)) != (GROUP_DIVERGE(0, 1) , l_290[4])))
            { /* block id: 144 */
                int16_t l_333[3];
                int32_t l_336 = 0L;
                int32_t l_339 = 0L;
                int32_t l_340 = 0L;
                int32_t l_345 = (-1L);
                int32_t l_346 = 0x5180273EL;
                int32_t l_347 = 0x16188812L;
                int32_t l_349[9] = {0x3CC1CF37L,0x3CC1CF37L,0x3CC1CF37L,0x3CC1CF37L,0x3CC1CF37L,0x3CC1CF37L,0x3CC1CF37L,0x3CC1CF37L,0x3CC1CF37L};
                int i;
                for (i = 0; i < 3; i++)
                    l_333[i] = 0x04E9L;
                for (p_1291->g_316.f2 = 0; (p_1291->g_316.f2 == 49); ++p_1291->g_316.f2)
                { /* block id: 147 */
                    int32_t *l_329 = (void*)0;
                    int32_t *l_330 = (void*)0;
                    int32_t *l_331 = (void*)0;
                    int32_t *l_332 = (void*)0;
                    int32_t *l_334 = (void*)0;
                    int32_t *l_335[8] = {&p_1291->g_61,(void*)0,&p_1291->g_61,&p_1291->g_61,(void*)0,&p_1291->g_61,&p_1291->g_61,(void*)0};
                    int i;
                    for (p_1291->g_256.f3 = 0; (p_1291->g_256.f3 < 59); p_1291->g_256.f3 = safe_add_func_int16_t_s_s(p_1291->g_256.f3, 8))
                    { /* block id: 150 */
                        int8_t ***l_325 = (void*)0;
                        int8_t ***l_326 = (void*)0;
                        p_1291->g_145 = &p_1291->g_146;
                        (*p_1291->g_328) = p_1291->g_327[3];
                        return (*p_1291->g_260);
                    }
                    --l_350;
                }
                for (p_1291->g_256.f0 = 0; (p_1291->g_256.f0 <= 7); ++p_1291->g_256.f0)
                { /* block id: 159 */
                    uint8_t *l_363 = &l_350;
                    int32_t l_373 = 7L;
                    l_285.y ^= (((safe_rshift_func_uint8_t_u_s((safe_rshift_func_int16_t_s_u((p_40 >= ((safe_mul_func_uint8_t_u_u((safe_div_func_uint16_t_u_u(p_1291->g_261.f1, (-1L))), (--(*l_363)))) <= 2UL)), 13)), l_337)) , l_336) | ((*l_297) = (safe_rshift_func_uint8_t_u_u(((safe_add_func_int8_t_s_s((((p_39 > (GROUP_DIVERGE(2, 1) <= ((safe_add_func_int64_t_s_s(((void*)0 == (*p_1291->g_41)), p_1291->g_372)) && l_289.sa))) , l_373) ^ p_39), l_275.s0)) && 65527UL), 4))));
                }
                (*p_1291->g_376) = p_1291->g_374;
                if (p_39)
                    continue;
            }
            else
            { /* block id: 166 */
                int32_t *l_377 = &p_1291->g_8;
                (*p_1291->g_41) = (*p_1291->g_314);
                (*p_38) = l_377;
            }
        }
        else
        { /* block id: 170 */
            uint32_t l_378 = 1UL;
            if (l_378)
                break;
            (*p_38) = (void*)0;
        }
        for (p_1291->g_256.f2 = 23; (p_1291->g_256.f2 != 48); p_1291->g_256.f2 = safe_add_func_uint16_t_u_u(p_1291->g_256.f2, 1))
        { /* block id: 176 */
            uint8_t **l_394 = &p_1291->g_375;
            uint8_t ***l_393[5] = {&l_394,&l_394,&l_394,&l_394,&l_394};
            int32_t l_403 = (-1L);
            int32_t *l_405[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i;
            p_1291->g_382 = p_1291->g_381;
            l_289.s8 |= ((safe_div_func_int16_t_s_s(p_39, (safe_add_func_uint64_t_u_u(((safe_add_func_int64_t_s_s(((safe_rshift_func_uint16_t_u_s((safe_sub_func_uint8_t_u_u(254UL, ((void*)0 != l_393[1]))), p_39)) != (((((*l_297) &= ((-1L) ^ (((*l_296) = (((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_395.s80)), ((safe_add_func_int32_t_s_s(((l_348 ^ ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(p_1291->g_398.yzxx)).zwwywxww >= ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(l_399.yzwwzxyxzxwwyywx)).hi ^ ((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 4))(l_400.xxxx)).even))).yxxyyxyy)))))).s3) < (safe_lshift_func_int16_t_s_u(p_39, 9))), p_40)) && l_281.se), 1UL, 0xFD738A55L, ((VECTOR(uint32_t, 8))(0UL)), ((VECTOR(uint32_t, 2))(0xAC15818BL)), 0x97AF00C3L)).hi | ((VECTOR(uint32_t, 8))(4294967290UL))))).s2 , l_403)) == 18446744073709551607UL))) >= 6UL) || p_40) > l_288.x)), p_1291->g_398.w)) , l_403), p_1291->g_278.x)))) >= l_404);
        }
    }
    l_275.s7 |= (((*l_408) = l_407) == ((((*p_38) == ((*l_409) = (*p_38))) >= ((safe_sub_func_uint8_t_u_u((+((p_1291->g_261.f2 && (((safe_div_func_uint64_t_u_u(p_1291->g_256.f0, (safe_unary_minus_func_uint64_t_u((safe_rshift_func_int16_t_s_s(((p_40 , &l_286) != (l_417 , &l_286)), p_39)))))) > 0x7817A4A9D61DE256L) < l_418[2][4])) <= p_1291->g_381.f1)), l_419)) ^ p_40)) , p_1291->g_130));
    return (*p_1291->g_328);
}


/* ------------------------------------------ */
/* 
 * reads : p_1291->g_222 p_1291->g_261.f3 p_1291->g_41 p_1291->g_266 p_1291->g_136 p_1291->g_42 p_1291->g_135
 * writes: p_1291->g_260 p_1291->g_222 p_1291->g_261.f3 p_1291->g_42
 */
uint8_t  func_46(int32_t  p_47, uint64_t  p_48, int8_t * p_49, uint8_t  p_50, int8_t * p_51, struct S1 * p_1291)
{ /* block id: 101 */
    struct S0 *l_255 = &p_1291->g_256;
    struct S0 **l_257[8] = {&l_255,(void*)0,&l_255,&l_255,(void*)0,&l_255,&l_255,(void*)0};
    struct S0 *l_258 = &p_1291->g_259;
    VECTOR(int32_t, 16) l_269 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
    int i;
    p_1291->g_260 = (l_258 = l_255);
    for (p_1291->g_222 = 0; (p_1291->g_222 == 23); p_1291->g_222 = safe_add_func_uint16_t_u_u(p_1291->g_222, 3))
    { /* block id: 106 */
        int32_t l_267 = 0x35B6DEFFL;
        for (p_1291->g_261.f3 = (-2); (p_1291->g_261.f3 > 4); p_1291->g_261.f3++)
        { /* block id: 109 */
            int16_t l_268[10][5] = {{0L,(-1L),0x73C7L,(-7L),0x73C7L},{0L,(-1L),0x73C7L,(-7L),0x73C7L},{0L,(-1L),0x73C7L,(-7L),0x73C7L},{0L,(-1L),0x73C7L,(-7L),0x73C7L},{0L,(-1L),0x73C7L,(-7L),0x73C7L},{0L,(-1L),0x73C7L,(-7L),0x73C7L},{0L,(-1L),0x73C7L,(-7L),0x73C7L},{0L,(-1L),0x73C7L,(-7L),0x73C7L},{0L,(-1L),0x73C7L,(-7L),0x73C7L},{0L,(-1L),0x73C7L,(-7L),0x73C7L}};
            int i, j;
            (*p_1291->g_41) = (void*)0;
            if ((((VECTOR(uint32_t, 16))(p_1291->g_266.xyyxyyxyxyyxxxyy)).s3 , (l_268[6][2] = ((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 4))((-9L), l_267, 0x4E7804CDL, 0x7E760693L)).wwzzyzzzyxwxwxzx))).s4)))
            { /* block id: 112 */
                return p_1291->g_136.x;
            }
            else
            { /* block id: 114 */
                l_267 = ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))(l_269.s9e927f25)), ((VECTOR(int32_t, 2))(0x708B7C6CL, 0x7C427C19L)).xyyyxxxx))).s5;
            }
        }
    }
    (*p_1291->g_41) = (*p_1291->g_41);
    return p_1291->g_135.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_1291->g_61 p_1291->g_52
 * writes: p_1291->g_61
 */
int64_t  func_54(uint64_t  p_55, uint64_t  p_56, struct S1 * p_1291)
{ /* block id: 19 */
    uint64_t l_59 = 0xA0DE8ED5E714ABA1L;
    int32_t *l_60[5];
    int i;
    for (i = 0; i < 5; i++)
        l_60[i] = &p_1291->g_61;
    p_1291->g_61 |= l_59;
    return p_1291->g_52.y;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
VECTOR(int8_t, 2)  func_64(uint32_t  p_65, struct S1 * p_1291)
{ /* block id: 24 */
    uint64_t l_73 = 0UL;
    int8_t *l_94[7][7][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t l_107 = 0x3712F41FL;
    int32_t l_108 = 2L;
    int32_t l_109 = 0L;
    int32_t l_111 = 0L;
    int32_t l_112 = 0x68FF6D1AL;
    int32_t l_113 = 1L;
    int32_t l_114[1];
    uint32_t l_156 = 1UL;
    VECTOR(uint8_t, 16) l_161 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL);
    VECTOR(int16_t, 16) l_178 = (VECTOR(int16_t, 16))(0x716AL, (VECTOR(int16_t, 4))(0x716AL, (VECTOR(int16_t, 2))(0x716AL, 1L), 1L), 1L, 0x716AL, 1L, (VECTOR(int16_t, 2))(0x716AL, 1L), (VECTOR(int16_t, 2))(0x716AL, 1L), 0x716AL, 1L, 0x716AL, 1L);
    uint64_t *l_209 = &p_1291->g_131;
    VECTOR(int64_t, 16) l_225 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x625CBE153FDD8CB6L), 0x625CBE153FDD8CB6L), 0x625CBE153FDD8CB6L, 1L, 0x625CBE153FDD8CB6L, (VECTOR(int64_t, 2))(1L, 0x625CBE153FDD8CB6L), (VECTOR(int64_t, 2))(1L, 0x625CBE153FDD8CB6L), 1L, 0x625CBE153FDD8CB6L, 1L, 0x625CBE153FDD8CB6L);
    VECTOR(int32_t, 4) l_229 = (VECTOR(int32_t, 4))(0x4112E137L, (VECTOR(int32_t, 2))(0x4112E137L, 8L), 8L);
    VECTOR(int8_t, 2) l_253 = (VECTOR(int8_t, 2))(0L, (-1L));
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_114[i] = 0x421CF732L;
    for (p_65 = (-4); (p_65 < 26); p_65++)
    { /* block id: 27 */
        int32_t **l_79 = &p_1291->g_42;
        uint64_t *l_80 = &p_1291->g_81;
        int32_t l_87 = 0x325F501BL;
        VECTOR(uint16_t, 16) l_105 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65533UL), 65533UL), 65533UL, 65535UL, 65533UL, (VECTOR(uint16_t, 2))(65535UL, 65533UL), (VECTOR(uint16_t, 2))(65535UL, 65533UL), 65535UL, 65533UL, 65535UL, 65533UL);
        int32_t l_110[7] = {0x6F70CD43L,0x6F70CD43L,0x6F70CD43L,0x6F70CD43L,0x6F70CD43L,0x6F70CD43L,0x6F70CD43L};
        int8_t l_115 = 0L;
        int8_t l_118 = 0x31L;
        int64_t l_141 = (-1L);
        VECTOR(int16_t, 2) l_166 = (VECTOR(int16_t, 2))((-1L), 6L);
        uint32_t l_186 = 1UL;
        int8_t l_238[4][5][10] = {{{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L}},{{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L}},{{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L}},{{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L},{4L,(-1L),4L,4L,(-1L),4L,4L,(-1L),4L,4L}}};
        int32_t *l_252 = &l_108;
        int i, j, k;
        l_73 = ((VECTOR(int32_t, 16))(p_1291->g_72.s6027111254734337)).s8;
    }
    return l_253.xy;
}


/* ------------------------------------------ */
/* 
 * reads : p_1291->g_12
 * writes:
 */
uint32_t  func_66(int8_t * p_67, uint32_t  p_68, struct S1 * p_1291)
{ /* block id: 22 */
    return p_1291->g_12;
}


/* ------------------------------------------ */
/* 
 * reads : p_1291->g_41 p_1291->g_42
 * writes: p_1291->g_42
 */
int32_t  func_74(int32_t ** p_75, uint64_t  p_76, uint32_t  p_77, int8_t * p_78, struct S1 * p_1291)
{ /* block id: 31 */
    uint16_t l_95 = 0xDAAEL;
    --l_95;
    (*p_75) = (*p_1291->g_41);
    return l_95;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1292;
    struct S1* p_1291 = &c_1292;
    struct S1 c_1293 = {
        0x2888ADAEL, // p_1291->g_2
        (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0L), 0L), // p_1291->g_3
        {{{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L}},{{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L}},{{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L}},{{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L}},{{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L},{(-4L),(-7L),0x105A83D8L,0x451D52AAL,2L}}}, // p_1291->g_4
        (-4L), // p_1291->g_5
        9L, // p_1291->g_6
        6L, // p_1291->g_7
        0x6C46BC22L, // p_1291->g_8
        0x4C1031C3L, // p_1291->g_12
        0L, // p_1291->g_21
        0x73L, // p_1291->g_30
        (void*)0, // p_1291->g_42
        &p_1291->g_42, // p_1291->g_41
        (VECTOR(int8_t, 2))(0x60L, 1L), // p_1291->g_52
        (VECTOR(int8_t, 8))(0x2EL, (VECTOR(int8_t, 4))(0x2EL, (VECTOR(int8_t, 2))(0x2EL, 1L), 1L), 1L, 0x2EL, 1L), // p_1291->g_53
        0x1F00BB6E743FD041L, // p_1291->g_58
        (-1L), // p_1291->g_61
        (VECTOR(uint8_t, 2))(0UL, 251UL), // p_1291->g_62
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L)), // p_1291->g_72
        7UL, // p_1291->g_81
        0x42105ADB5619AF7CL, // p_1291->g_82
        (VECTOR(uint16_t, 2))(0xF0A2L, 1UL), // p_1291->g_104
        (-1L), // p_1291->g_116
        0UL, // p_1291->g_131
        &p_1291->g_131, // p_1291->g_130
        (VECTOR(int32_t, 2))(0x538B7FA9L, 0x3C72E5D6L), // p_1291->g_135
        (VECTOR(int32_t, 2))(0L, 0x0B0A32F8L), // p_1291->g_136
        0x67L, // p_1291->g_139
        (void*)0, // p_1291->g_146
        &p_1291->g_146, // p_1291->g_145
        (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 0x32L), 0x32L), // p_1291->g_167
        (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x7DL), 0x7DL), // p_1291->g_170
        (VECTOR(int16_t, 2))(4L, (-1L)), // p_1291->g_181
        0UL, // p_1291->g_222
        0x3F1BL, // p_1291->g_223
        (VECTOR(int64_t, 2))(0x5D5CE2319983A2C1L, 0x62679DC5077A6613L), // p_1291->g_226
        (VECTOR(int64_t, 8))(0x2EE8141712901F4CL, (VECTOR(int64_t, 4))(0x2EE8141712901F4CL, (VECTOR(int64_t, 2))(0x2EE8141712901F4CL, 0x6FF626B8E0BD8692L), 0x6FF626B8E0BD8692L), 0x6FF626B8E0BD8692L, 0x2EE8141712901F4CL, 0x6FF626B8E0BD8692L), // p_1291->g_227
        {(void*)0,(void*)0}, // p_1291->g_249
        {0xDDC266FCL,0x6F5DL,0x8482L,0x0185L}, // p_1291->g_256
        {0x09119469L,1L,0UL,0xF7B4L}, // p_1291->g_259
        {4294967295UL,0x33DFL,0UL,65535UL}, // p_1291->g_261
        &p_1291->g_261, // p_1291->g_260
        (VECTOR(uint32_t, 2))(4294967295UL, 0xFBA40DF1L), // p_1291->g_266
        (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), (-1L)), (-1L)), // p_1291->g_273
        (VECTOR(uint8_t, 2))(0UL, 1UL), // p_1291->g_278
        (VECTOR(int32_t, 2))(0L, 0x1E197E14L), // p_1291->g_287
        &p_1291->g_249[1], // p_1291->g_294
        {&p_1291->g_8,&p_1291->g_8,&p_1291->g_8,&p_1291->g_8,&p_1291->g_8,&p_1291->g_8,&p_1291->g_8}, // p_1291->g_315
        &p_1291->g_315[6], // p_1291->g_314
        {1UL,-6L,65535UL,65531UL}, // p_1291->g_316
        {{{0xA5D5F804L,0x0625L,65535UL,0xBAF1L},{0xA5D5F804L,0x0625L,65535UL,0xBAF1L},{0x3D8E3869L,0x07D9L,4UL,4UL},{4294967286UL,4L,65535UL,0x2C29L},{0xC0DF3DEDL,0x7D7DL,0x13FAL,0xE38CL},{4294967286UL,4L,65535UL,0x2C29L},{0x3D8E3869L,0x07D9L,4UL,4UL},{0xA5D5F804L,0x0625L,65535UL,0xBAF1L}},{{0xA5D5F804L,0x0625L,65535UL,0xBAF1L},{0xA5D5F804L,0x0625L,65535UL,0xBAF1L},{0x3D8E3869L,0x07D9L,4UL,4UL},{4294967286UL,4L,65535UL,0x2C29L},{0xC0DF3DEDL,0x7D7DL,0x13FAL,0xE38CL},{4294967286UL,4L,65535UL,0x2C29L},{0x3D8E3869L,0x07D9L,4UL,4UL},{0xA5D5F804L,0x0625L,65535UL,0xBAF1L}}}, // p_1291->g_317
        {{2UL,-1L,0x4195L,3UL},{2UL,-1L,0x4195L,3UL},{2UL,-1L,0x4195L,3UL},{2UL,-1L,0x4195L,3UL},{2UL,-1L,0x4195L,3UL},{2UL,-1L,0x4195L,3UL}}, // p_1291->g_327
        &p_1291->g_259, // p_1291->g_328
        1UL, // p_1291->g_372
        (void*)0, // p_1291->g_375
        &p_1291->g_375, // p_1291->g_374
        &p_1291->g_374, // p_1291->g_376
        {0x8F455B18L,0L,0xB2EAL,65534UL}, // p_1291->g_381
        {0xDF330B1FL,0x1E8AL,5UL,0xF5ABL}, // p_1291->g_382
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0L), 0L), // p_1291->g_398
        {0UL,1L,0xA4C1L,3UL}, // p_1291->g_421
        &p_1291->g_382.f3, // p_1291->g_426
        (VECTOR(int16_t, 4))(0x4366L, (VECTOR(int16_t, 2))(0x4366L, 1L), 1L), // p_1291->g_478
        &p_1291->g_41, // p_1291->g_483
        (VECTOR(int16_t, 2))(0x47E2L, 2L), // p_1291->g_513
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x51BFL), 0x51BFL), 0x51BFL, 0L, 0x51BFL), // p_1291->g_516
        (VECTOR(int16_t, 16))((-6L), (VECTOR(int16_t, 4))((-6L), (VECTOR(int16_t, 2))((-6L), 0L), 0L), 0L, (-6L), 0L, (VECTOR(int16_t, 2))((-6L), 0L), (VECTOR(int16_t, 2))((-6L), 0L), (-6L), 0L, (-6L), 0L), // p_1291->g_517
        0x67037EB1L, // p_1291->g_519
        &p_1291->g_375, // p_1291->g_554
        (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 0UL), // p_1291->g_587
        (VECTOR(uint64_t, 4))(0xB7BB6830E8E544CDL, (VECTOR(uint64_t, 2))(0xB7BB6830E8E544CDL, 1UL), 1UL), // p_1291->g_588
        {1UL,0x38AFL,1UL,7UL}, // p_1291->g_612
        {0x861FBD62L,-4L,65534UL,65534UL}, // p_1291->g_624
        {0UL,0x7B8AL,65535UL,0xDB45L}, // p_1291->g_629
        (VECTOR(int8_t, 4))(0x71L, (VECTOR(int8_t, 2))(0x71L, 0x66L), 0x66L), // p_1291->g_633
        (VECTOR(int8_t, 8))(0x2FL, (VECTOR(int8_t, 4))(0x2FL, (VECTOR(int8_t, 2))(0x2FL, 0x08L), 0x08L), 0x08L, 0x2FL, 0x08L), // p_1291->g_636
        (VECTOR(int8_t, 2))(0L, 0x61L), // p_1291->g_637
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x55L), 0x55L), 0x55L, (-1L), 0x55L, (VECTOR(int8_t, 2))((-1L), 0x55L), (VECTOR(int8_t, 2))((-1L), 0x55L), (-1L), 0x55L, (-1L), 0x55L), // p_1291->g_638
        (VECTOR(int32_t, 4))(0x3A886985L, (VECTOR(int32_t, 2))(0x3A886985L, (-1L)), (-1L)), // p_1291->g_665
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x67481E54L), 0x67481E54L), 0x67481E54L, 1L, 0x67481E54L), // p_1291->g_666
        (VECTOR(int32_t, 2))((-1L), (-1L)), // p_1291->g_668
        (VECTOR(int32_t, 2))(1L, 0x713944F0L), // p_1291->g_692
        (VECTOR(int32_t, 2))((-1L), (-3L)), // p_1291->g_694
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x2C039A8EL), 0x2C039A8EL), 0x2C039A8EL, (-1L), 0x2C039A8EL, (VECTOR(int32_t, 2))((-1L), 0x2C039A8EL), (VECTOR(int32_t, 2))((-1L), 0x2C039A8EL), (-1L), 0x2C039A8EL, (-1L), 0x2C039A8EL), // p_1291->g_695
        (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x349B7202L), 0x349B7202L), // p_1291->g_697
        (VECTOR(int32_t, 16))(0x1974CB24L, (VECTOR(int32_t, 4))(0x1974CB24L, (VECTOR(int32_t, 2))(0x1974CB24L, 0x1E0C5D73L), 0x1E0C5D73L), 0x1E0C5D73L, 0x1974CB24L, 0x1E0C5D73L, (VECTOR(int32_t, 2))(0x1974CB24L, 0x1E0C5D73L), (VECTOR(int32_t, 2))(0x1974CB24L, 0x1E0C5D73L), 0x1974CB24L, 0x1E0C5D73L, 0x1974CB24L, 0x1E0C5D73L), // p_1291->g_700
        (VECTOR(uint32_t, 16))(0xFCFD96B8L, (VECTOR(uint32_t, 4))(0xFCFD96B8L, (VECTOR(uint32_t, 2))(0xFCFD96B8L, 1UL), 1UL), 1UL, 0xFCFD96B8L, 1UL, (VECTOR(uint32_t, 2))(0xFCFD96B8L, 1UL), (VECTOR(uint32_t, 2))(0xFCFD96B8L, 1UL), 0xFCFD96B8L, 1UL, 0xFCFD96B8L, 1UL), // p_1291->g_713
        &p_1291->g_249[1], // p_1291->g_719
        &p_1291->g_41, // p_1291->g_745
        (VECTOR(uint32_t, 16))(0x5F87F31BL, (VECTOR(uint32_t, 4))(0x5F87F31BL, (VECTOR(uint32_t, 2))(0x5F87F31BL, 4294967286UL), 4294967286UL), 4294967286UL, 0x5F87F31BL, 4294967286UL, (VECTOR(uint32_t, 2))(0x5F87F31BL, 4294967286UL), (VECTOR(uint32_t, 2))(0x5F87F31BL, 4294967286UL), 0x5F87F31BL, 4294967286UL, 0x5F87F31BL, 4294967286UL), // p_1291->g_757
        (VECTOR(uint32_t, 16))(0x1ECE1A01L, (VECTOR(uint32_t, 4))(0x1ECE1A01L, (VECTOR(uint32_t, 2))(0x1ECE1A01L, 4294967294UL), 4294967294UL), 4294967294UL, 0x1ECE1A01L, 4294967294UL, (VECTOR(uint32_t, 2))(0x1ECE1A01L, 4294967294UL), (VECTOR(uint32_t, 2))(0x1ECE1A01L, 4294967294UL), 0x1ECE1A01L, 4294967294UL, 0x1ECE1A01L, 4294967294UL), // p_1291->g_758
        (VECTOR(uint32_t, 2))(1UL, 0xE673B996L), // p_1291->g_759
        (VECTOR(uint32_t, 8))(0xA78F03AAL, (VECTOR(uint32_t, 4))(0xA78F03AAL, (VECTOR(uint32_t, 2))(0xA78F03AAL, 8UL), 8UL), 8UL, 0xA78F03AAL, 8UL), // p_1291->g_763
        (VECTOR(uint32_t, 16))(2UL, (VECTOR(uint32_t, 4))(2UL, (VECTOR(uint32_t, 2))(2UL, 0x251A9D4DL), 0x251A9D4DL), 0x251A9D4DL, 2UL, 0x251A9D4DL, (VECTOR(uint32_t, 2))(2UL, 0x251A9D4DL), (VECTOR(uint32_t, 2))(2UL, 0x251A9D4DL), 2UL, 0x251A9D4DL, 2UL, 0x251A9D4DL), // p_1291->g_766
        (VECTOR(uint64_t, 16))(0x2117E4E31B4BEC66L, (VECTOR(uint64_t, 4))(0x2117E4E31B4BEC66L, (VECTOR(uint64_t, 2))(0x2117E4E31B4BEC66L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x2117E4E31B4BEC66L, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0x2117E4E31B4BEC66L, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0x2117E4E31B4BEC66L, 18446744073709551615UL), 0x2117E4E31B4BEC66L, 18446744073709551615UL, 0x2117E4E31B4BEC66L, 18446744073709551615UL), // p_1291->g_777
        (VECTOR(uint16_t, 8))(0x1750L, (VECTOR(uint16_t, 4))(0x1750L, (VECTOR(uint16_t, 2))(0x1750L, 0x765BL), 0x765BL), 0x765BL, 0x1750L, 0x765BL), // p_1291->g_818
        (VECTOR(int32_t, 2))(0x5E4BEA81L, 6L), // p_1291->g_825
        (VECTOR(uint16_t, 2))(0x56D2L, 0x3EA5L), // p_1291->g_831
        (void*)0, // p_1291->g_896
        {&p_1291->g_896,&p_1291->g_896,&p_1291->g_896,&p_1291->g_896,&p_1291->g_896,&p_1291->g_896,&p_1291->g_896,&p_1291->g_896}, // p_1291->g_895
        &p_1291->g_896, // p_1291->g_897
        (VECTOR(uint16_t, 2))(0xC48FL, 0x28CDL), // p_1291->g_915
        0x1BBBL, // p_1291->g_928
        &p_1291->g_260, // p_1291->g_944
        {{&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7],&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7]},{&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7],&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7]},{&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7],&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7]},{&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7],&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7]},{&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7],&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7]},{&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7],&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7]},{&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7],&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7]},{&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7],&p_1291->g_317[1][7],&p_1291->g_256,&p_1291->g_382,&p_1291->g_256,&p_1291->g_317[1][7]}}, // p_1291->g_975
        (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xF9F221F3A33275AFL), 0xF9F221F3A33275AFL), // p_1291->g_986
        &p_1291->g_719, // p_1291->g_1025
        &p_1291->g_1025, // p_1291->g_1024
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_1291->g_1036
        &p_1291->g_1036[5][1][2], // p_1291->g_1035
        (VECTOR(uint32_t, 8))(2UL, (VECTOR(uint32_t, 4))(2UL, (VECTOR(uint32_t, 2))(2UL, 0xA60F6A16L), 0xA60F6A16L), 0xA60F6A16L, 2UL, 0xA60F6A16L), // p_1291->g_1047
        1L, // p_1291->g_1072
        {&p_1291->g_1072}, // p_1291->g_1071
        &p_1291->g_1071[0], // p_1291->g_1070
        {&p_1291->g_1070,&p_1291->g_1070,&p_1291->g_1070,&p_1291->g_1070,&p_1291->g_1070,&p_1291->g_1070,&p_1291->g_1070,&p_1291->g_1070,&p_1291->g_1070,&p_1291->g_1070}, // p_1291->g_1069
        (-1L), // p_1291->g_1073
        (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x2D4E3511F2364290L), 0x2D4E3511F2364290L), 0x2D4E3511F2364290L, (-1L), 0x2D4E3511F2364290L, (VECTOR(int64_t, 2))((-1L), 0x2D4E3511F2364290L), (VECTOR(int64_t, 2))((-1L), 0x2D4E3511F2364290L), (-1L), 0x2D4E3511F2364290L, (-1L), 0x2D4E3511F2364290L), // p_1291->g_1118
        (VECTOR(int32_t, 16))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x293E772AL), 0x293E772AL), 0x293E772AL, (-2L), 0x293E772AL, (VECTOR(int32_t, 2))((-2L), 0x293E772AL), (VECTOR(int32_t, 2))((-2L), 0x293E772AL), (-2L), 0x293E772AL, (-2L), 0x293E772AL), // p_1291->g_1126
        {0x244EBCBDL,0x42C0L,1UL,5UL}, // p_1291->g_1179
        (VECTOR(int8_t, 2))(0L, 1L), // p_1291->g_1221
        (VECTOR(int8_t, 8))(0x6BL, (VECTOR(int8_t, 4))(0x6BL, (VECTOR(int8_t, 2))(0x6BL, 1L), 1L), 1L, 0x6BL, 1L), // p_1291->g_1222
        (VECTOR(int8_t, 8))(4L, (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 0L), 0L), 0L, 4L, 0L), // p_1291->g_1223
        (VECTOR(int8_t, 8))(0x1DL, (VECTOR(int8_t, 4))(0x1DL, (VECTOR(int8_t, 2))(0x1DL, 0x7FL), 0x7FL), 0x7FL, 0x1DL, 0x7FL), // p_1291->g_1224
        (VECTOR(int8_t, 8))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 0x08L), 0x08L), 0x08L, (-4L), 0x08L), // p_1291->g_1225
        (VECTOR(int8_t, 8))(0x24L, (VECTOR(int8_t, 4))(0x24L, (VECTOR(int8_t, 2))(0x24L, 0x00L), 0x00L), 0x00L, 0x24L, 0x00L), // p_1291->g_1227
        (VECTOR(int8_t, 16))(0x5EL, (VECTOR(int8_t, 4))(0x5EL, (VECTOR(int8_t, 2))(0x5EL, (-1L)), (-1L)), (-1L), 0x5EL, (-1L), (VECTOR(int8_t, 2))(0x5EL, (-1L)), (VECTOR(int8_t, 2))(0x5EL, (-1L)), 0x5EL, (-1L), 0x5EL, (-1L)), // p_1291->g_1228
        0x928CF214977BBDD9L, // p_1291->g_1241
        (-1L), // p_1291->g_1246
        (VECTOR(int32_t, 16))(0x52E7B494L, (VECTOR(int32_t, 4))(0x52E7B494L, (VECTOR(int32_t, 2))(0x52E7B494L, 1L), 1L), 1L, 0x52E7B494L, 1L, (VECTOR(int32_t, 2))(0x52E7B494L, 1L), (VECTOR(int32_t, 2))(0x52E7B494L, 1L), 0x52E7B494L, 1L, 0x52E7B494L, 1L), // p_1291->g_1261
        (VECTOR(int32_t, 2))(9L, 0x7839E6B0L), // p_1291->g_1262
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-2L)), (-2L)), // p_1291->g_1264
        &p_1291->g_629.f0, // p_1291->g_1287
        &p_1291->g_1287, // p_1291->g_1286
        sequence_input[get_global_id(0)], // p_1291->global_0_offset
        sequence_input[get_global_id(1)], // p_1291->global_1_offset
        sequence_input[get_global_id(2)], // p_1291->global_2_offset
        sequence_input[get_local_id(0)], // p_1291->local_0_offset
        sequence_input[get_local_id(1)], // p_1291->local_1_offset
        sequence_input[get_local_id(2)], // p_1291->local_2_offset
        sequence_input[get_group_id(0)], // p_1291->group_0_offset
        sequence_input[get_group_id(1)], // p_1291->group_1_offset
        sequence_input[get_group_id(2)], // p_1291->group_2_offset
    };
    c_1292 = c_1293;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1291);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1291->g_2, "p_1291->g_2", print_hash_value);
    transparent_crc(p_1291->g_3.x, "p_1291->g_3.x", print_hash_value);
    transparent_crc(p_1291->g_3.y, "p_1291->g_3.y", print_hash_value);
    transparent_crc(p_1291->g_3.z, "p_1291->g_3.z", print_hash_value);
    transparent_crc(p_1291->g_3.w, "p_1291->g_3.w", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1291->g_4[i][j][k], "p_1291->g_4[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1291->g_5, "p_1291->g_5", print_hash_value);
    transparent_crc(p_1291->g_6, "p_1291->g_6", print_hash_value);
    transparent_crc(p_1291->g_7, "p_1291->g_7", print_hash_value);
    transparent_crc(p_1291->g_8, "p_1291->g_8", print_hash_value);
    transparent_crc(p_1291->g_12, "p_1291->g_12", print_hash_value);
    transparent_crc(p_1291->g_21, "p_1291->g_21", print_hash_value);
    transparent_crc(p_1291->g_30, "p_1291->g_30", print_hash_value);
    transparent_crc(p_1291->g_52.x, "p_1291->g_52.x", print_hash_value);
    transparent_crc(p_1291->g_52.y, "p_1291->g_52.y", print_hash_value);
    transparent_crc(p_1291->g_53.s0, "p_1291->g_53.s0", print_hash_value);
    transparent_crc(p_1291->g_53.s1, "p_1291->g_53.s1", print_hash_value);
    transparent_crc(p_1291->g_53.s2, "p_1291->g_53.s2", print_hash_value);
    transparent_crc(p_1291->g_53.s3, "p_1291->g_53.s3", print_hash_value);
    transparent_crc(p_1291->g_53.s4, "p_1291->g_53.s4", print_hash_value);
    transparent_crc(p_1291->g_53.s5, "p_1291->g_53.s5", print_hash_value);
    transparent_crc(p_1291->g_53.s6, "p_1291->g_53.s6", print_hash_value);
    transparent_crc(p_1291->g_53.s7, "p_1291->g_53.s7", print_hash_value);
    transparent_crc(p_1291->g_58, "p_1291->g_58", print_hash_value);
    transparent_crc(p_1291->g_61, "p_1291->g_61", print_hash_value);
    transparent_crc(p_1291->g_62.x, "p_1291->g_62.x", print_hash_value);
    transparent_crc(p_1291->g_62.y, "p_1291->g_62.y", print_hash_value);
    transparent_crc(p_1291->g_72.s0, "p_1291->g_72.s0", print_hash_value);
    transparent_crc(p_1291->g_72.s1, "p_1291->g_72.s1", print_hash_value);
    transparent_crc(p_1291->g_72.s2, "p_1291->g_72.s2", print_hash_value);
    transparent_crc(p_1291->g_72.s3, "p_1291->g_72.s3", print_hash_value);
    transparent_crc(p_1291->g_72.s4, "p_1291->g_72.s4", print_hash_value);
    transparent_crc(p_1291->g_72.s5, "p_1291->g_72.s5", print_hash_value);
    transparent_crc(p_1291->g_72.s6, "p_1291->g_72.s6", print_hash_value);
    transparent_crc(p_1291->g_72.s7, "p_1291->g_72.s7", print_hash_value);
    transparent_crc(p_1291->g_81, "p_1291->g_81", print_hash_value);
    transparent_crc(p_1291->g_82, "p_1291->g_82", print_hash_value);
    transparent_crc(p_1291->g_104.x, "p_1291->g_104.x", print_hash_value);
    transparent_crc(p_1291->g_104.y, "p_1291->g_104.y", print_hash_value);
    transparent_crc(p_1291->g_116, "p_1291->g_116", print_hash_value);
    transparent_crc(p_1291->g_131, "p_1291->g_131", print_hash_value);
    transparent_crc(p_1291->g_135.x, "p_1291->g_135.x", print_hash_value);
    transparent_crc(p_1291->g_135.y, "p_1291->g_135.y", print_hash_value);
    transparent_crc(p_1291->g_136.x, "p_1291->g_136.x", print_hash_value);
    transparent_crc(p_1291->g_136.y, "p_1291->g_136.y", print_hash_value);
    transparent_crc(p_1291->g_139, "p_1291->g_139", print_hash_value);
    transparent_crc(p_1291->g_167.x, "p_1291->g_167.x", print_hash_value);
    transparent_crc(p_1291->g_167.y, "p_1291->g_167.y", print_hash_value);
    transparent_crc(p_1291->g_167.z, "p_1291->g_167.z", print_hash_value);
    transparent_crc(p_1291->g_167.w, "p_1291->g_167.w", print_hash_value);
    transparent_crc(p_1291->g_170.x, "p_1291->g_170.x", print_hash_value);
    transparent_crc(p_1291->g_170.y, "p_1291->g_170.y", print_hash_value);
    transparent_crc(p_1291->g_170.z, "p_1291->g_170.z", print_hash_value);
    transparent_crc(p_1291->g_170.w, "p_1291->g_170.w", print_hash_value);
    transparent_crc(p_1291->g_181.x, "p_1291->g_181.x", print_hash_value);
    transparent_crc(p_1291->g_181.y, "p_1291->g_181.y", print_hash_value);
    transparent_crc(p_1291->g_222, "p_1291->g_222", print_hash_value);
    transparent_crc(p_1291->g_223, "p_1291->g_223", print_hash_value);
    transparent_crc(p_1291->g_226.x, "p_1291->g_226.x", print_hash_value);
    transparent_crc(p_1291->g_226.y, "p_1291->g_226.y", print_hash_value);
    transparent_crc(p_1291->g_227.s0, "p_1291->g_227.s0", print_hash_value);
    transparent_crc(p_1291->g_227.s1, "p_1291->g_227.s1", print_hash_value);
    transparent_crc(p_1291->g_227.s2, "p_1291->g_227.s2", print_hash_value);
    transparent_crc(p_1291->g_227.s3, "p_1291->g_227.s3", print_hash_value);
    transparent_crc(p_1291->g_227.s4, "p_1291->g_227.s4", print_hash_value);
    transparent_crc(p_1291->g_227.s5, "p_1291->g_227.s5", print_hash_value);
    transparent_crc(p_1291->g_227.s6, "p_1291->g_227.s6", print_hash_value);
    transparent_crc(p_1291->g_227.s7, "p_1291->g_227.s7", print_hash_value);
    transparent_crc(p_1291->g_256.f0, "p_1291->g_256.f0", print_hash_value);
    transparent_crc(p_1291->g_256.f1, "p_1291->g_256.f1", print_hash_value);
    transparent_crc(p_1291->g_256.f2, "p_1291->g_256.f2", print_hash_value);
    transparent_crc(p_1291->g_256.f3, "p_1291->g_256.f3", print_hash_value);
    transparent_crc(p_1291->g_259.f0, "p_1291->g_259.f0", print_hash_value);
    transparent_crc(p_1291->g_259.f1, "p_1291->g_259.f1", print_hash_value);
    transparent_crc(p_1291->g_259.f2, "p_1291->g_259.f2", print_hash_value);
    transparent_crc(p_1291->g_259.f3, "p_1291->g_259.f3", print_hash_value);
    transparent_crc(p_1291->g_261.f0, "p_1291->g_261.f0", print_hash_value);
    transparent_crc(p_1291->g_261.f1, "p_1291->g_261.f1", print_hash_value);
    transparent_crc(p_1291->g_261.f2, "p_1291->g_261.f2", print_hash_value);
    transparent_crc(p_1291->g_261.f3, "p_1291->g_261.f3", print_hash_value);
    transparent_crc(p_1291->g_266.x, "p_1291->g_266.x", print_hash_value);
    transparent_crc(p_1291->g_266.y, "p_1291->g_266.y", print_hash_value);
    transparent_crc(p_1291->g_273.x, "p_1291->g_273.x", print_hash_value);
    transparent_crc(p_1291->g_273.y, "p_1291->g_273.y", print_hash_value);
    transparent_crc(p_1291->g_273.z, "p_1291->g_273.z", print_hash_value);
    transparent_crc(p_1291->g_273.w, "p_1291->g_273.w", print_hash_value);
    transparent_crc(p_1291->g_278.x, "p_1291->g_278.x", print_hash_value);
    transparent_crc(p_1291->g_278.y, "p_1291->g_278.y", print_hash_value);
    transparent_crc(p_1291->g_287.x, "p_1291->g_287.x", print_hash_value);
    transparent_crc(p_1291->g_287.y, "p_1291->g_287.y", print_hash_value);
    transparent_crc(p_1291->g_316.f0, "p_1291->g_316.f0", print_hash_value);
    transparent_crc(p_1291->g_316.f1, "p_1291->g_316.f1", print_hash_value);
    transparent_crc(p_1291->g_316.f2, "p_1291->g_316.f2", print_hash_value);
    transparent_crc(p_1291->g_316.f3, "p_1291->g_316.f3", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1291->g_317[i][j].f0, "p_1291->g_317[i][j].f0", print_hash_value);
            transparent_crc(p_1291->g_317[i][j].f1, "p_1291->g_317[i][j].f1", print_hash_value);
            transparent_crc(p_1291->g_317[i][j].f2, "p_1291->g_317[i][j].f2", print_hash_value);
            transparent_crc(p_1291->g_317[i][j].f3, "p_1291->g_317[i][j].f3", print_hash_value);

        }
    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1291->g_327[i].f0, "p_1291->g_327[i].f0", print_hash_value);
        transparent_crc(p_1291->g_327[i].f1, "p_1291->g_327[i].f1", print_hash_value);
        transparent_crc(p_1291->g_327[i].f2, "p_1291->g_327[i].f2", print_hash_value);
        transparent_crc(p_1291->g_327[i].f3, "p_1291->g_327[i].f3", print_hash_value);

    }
    transparent_crc(p_1291->g_372, "p_1291->g_372", print_hash_value);
    transparent_crc(p_1291->g_381.f0, "p_1291->g_381.f0", print_hash_value);
    transparent_crc(p_1291->g_381.f1, "p_1291->g_381.f1", print_hash_value);
    transparent_crc(p_1291->g_381.f2, "p_1291->g_381.f2", print_hash_value);
    transparent_crc(p_1291->g_381.f3, "p_1291->g_381.f3", print_hash_value);
    transparent_crc(p_1291->g_382.f0, "p_1291->g_382.f0", print_hash_value);
    transparent_crc(p_1291->g_382.f1, "p_1291->g_382.f1", print_hash_value);
    transparent_crc(p_1291->g_382.f2, "p_1291->g_382.f2", print_hash_value);
    transparent_crc(p_1291->g_382.f3, "p_1291->g_382.f3", print_hash_value);
    transparent_crc(p_1291->g_398.x, "p_1291->g_398.x", print_hash_value);
    transparent_crc(p_1291->g_398.y, "p_1291->g_398.y", print_hash_value);
    transparent_crc(p_1291->g_398.z, "p_1291->g_398.z", print_hash_value);
    transparent_crc(p_1291->g_398.w, "p_1291->g_398.w", print_hash_value);
    transparent_crc(p_1291->g_421.f0, "p_1291->g_421.f0", print_hash_value);
    transparent_crc(p_1291->g_421.f1, "p_1291->g_421.f1", print_hash_value);
    transparent_crc(p_1291->g_421.f2, "p_1291->g_421.f2", print_hash_value);
    transparent_crc(p_1291->g_421.f3, "p_1291->g_421.f3", print_hash_value);
    transparent_crc(p_1291->g_478.x, "p_1291->g_478.x", print_hash_value);
    transparent_crc(p_1291->g_478.y, "p_1291->g_478.y", print_hash_value);
    transparent_crc(p_1291->g_478.z, "p_1291->g_478.z", print_hash_value);
    transparent_crc(p_1291->g_478.w, "p_1291->g_478.w", print_hash_value);
    transparent_crc(p_1291->g_513.x, "p_1291->g_513.x", print_hash_value);
    transparent_crc(p_1291->g_513.y, "p_1291->g_513.y", print_hash_value);
    transparent_crc(p_1291->g_516.s0, "p_1291->g_516.s0", print_hash_value);
    transparent_crc(p_1291->g_516.s1, "p_1291->g_516.s1", print_hash_value);
    transparent_crc(p_1291->g_516.s2, "p_1291->g_516.s2", print_hash_value);
    transparent_crc(p_1291->g_516.s3, "p_1291->g_516.s3", print_hash_value);
    transparent_crc(p_1291->g_516.s4, "p_1291->g_516.s4", print_hash_value);
    transparent_crc(p_1291->g_516.s5, "p_1291->g_516.s5", print_hash_value);
    transparent_crc(p_1291->g_516.s6, "p_1291->g_516.s6", print_hash_value);
    transparent_crc(p_1291->g_516.s7, "p_1291->g_516.s7", print_hash_value);
    transparent_crc(p_1291->g_517.s0, "p_1291->g_517.s0", print_hash_value);
    transparent_crc(p_1291->g_517.s1, "p_1291->g_517.s1", print_hash_value);
    transparent_crc(p_1291->g_517.s2, "p_1291->g_517.s2", print_hash_value);
    transparent_crc(p_1291->g_517.s3, "p_1291->g_517.s3", print_hash_value);
    transparent_crc(p_1291->g_517.s4, "p_1291->g_517.s4", print_hash_value);
    transparent_crc(p_1291->g_517.s5, "p_1291->g_517.s5", print_hash_value);
    transparent_crc(p_1291->g_517.s6, "p_1291->g_517.s6", print_hash_value);
    transparent_crc(p_1291->g_517.s7, "p_1291->g_517.s7", print_hash_value);
    transparent_crc(p_1291->g_517.s8, "p_1291->g_517.s8", print_hash_value);
    transparent_crc(p_1291->g_517.s9, "p_1291->g_517.s9", print_hash_value);
    transparent_crc(p_1291->g_517.sa, "p_1291->g_517.sa", print_hash_value);
    transparent_crc(p_1291->g_517.sb, "p_1291->g_517.sb", print_hash_value);
    transparent_crc(p_1291->g_517.sc, "p_1291->g_517.sc", print_hash_value);
    transparent_crc(p_1291->g_517.sd, "p_1291->g_517.sd", print_hash_value);
    transparent_crc(p_1291->g_517.se, "p_1291->g_517.se", print_hash_value);
    transparent_crc(p_1291->g_517.sf, "p_1291->g_517.sf", print_hash_value);
    transparent_crc(p_1291->g_519, "p_1291->g_519", print_hash_value);
    transparent_crc(p_1291->g_587.x, "p_1291->g_587.x", print_hash_value);
    transparent_crc(p_1291->g_587.y, "p_1291->g_587.y", print_hash_value);
    transparent_crc(p_1291->g_587.z, "p_1291->g_587.z", print_hash_value);
    transparent_crc(p_1291->g_587.w, "p_1291->g_587.w", print_hash_value);
    transparent_crc(p_1291->g_588.x, "p_1291->g_588.x", print_hash_value);
    transparent_crc(p_1291->g_588.y, "p_1291->g_588.y", print_hash_value);
    transparent_crc(p_1291->g_588.z, "p_1291->g_588.z", print_hash_value);
    transparent_crc(p_1291->g_588.w, "p_1291->g_588.w", print_hash_value);
    transparent_crc(p_1291->g_612.f0, "p_1291->g_612.f0", print_hash_value);
    transparent_crc(p_1291->g_612.f1, "p_1291->g_612.f1", print_hash_value);
    transparent_crc(p_1291->g_612.f2, "p_1291->g_612.f2", print_hash_value);
    transparent_crc(p_1291->g_612.f3, "p_1291->g_612.f3", print_hash_value);
    transparent_crc(p_1291->g_624.f0, "p_1291->g_624.f0", print_hash_value);
    transparent_crc(p_1291->g_624.f1, "p_1291->g_624.f1", print_hash_value);
    transparent_crc(p_1291->g_624.f2, "p_1291->g_624.f2", print_hash_value);
    transparent_crc(p_1291->g_624.f3, "p_1291->g_624.f3", print_hash_value);
    transparent_crc(p_1291->g_629.f0, "p_1291->g_629.f0", print_hash_value);
    transparent_crc(p_1291->g_629.f1, "p_1291->g_629.f1", print_hash_value);
    transparent_crc(p_1291->g_629.f2, "p_1291->g_629.f2", print_hash_value);
    transparent_crc(p_1291->g_629.f3, "p_1291->g_629.f3", print_hash_value);
    transparent_crc(p_1291->g_633.x, "p_1291->g_633.x", print_hash_value);
    transparent_crc(p_1291->g_633.y, "p_1291->g_633.y", print_hash_value);
    transparent_crc(p_1291->g_633.z, "p_1291->g_633.z", print_hash_value);
    transparent_crc(p_1291->g_633.w, "p_1291->g_633.w", print_hash_value);
    transparent_crc(p_1291->g_636.s0, "p_1291->g_636.s0", print_hash_value);
    transparent_crc(p_1291->g_636.s1, "p_1291->g_636.s1", print_hash_value);
    transparent_crc(p_1291->g_636.s2, "p_1291->g_636.s2", print_hash_value);
    transparent_crc(p_1291->g_636.s3, "p_1291->g_636.s3", print_hash_value);
    transparent_crc(p_1291->g_636.s4, "p_1291->g_636.s4", print_hash_value);
    transparent_crc(p_1291->g_636.s5, "p_1291->g_636.s5", print_hash_value);
    transparent_crc(p_1291->g_636.s6, "p_1291->g_636.s6", print_hash_value);
    transparent_crc(p_1291->g_636.s7, "p_1291->g_636.s7", print_hash_value);
    transparent_crc(p_1291->g_637.x, "p_1291->g_637.x", print_hash_value);
    transparent_crc(p_1291->g_637.y, "p_1291->g_637.y", print_hash_value);
    transparent_crc(p_1291->g_638.s0, "p_1291->g_638.s0", print_hash_value);
    transparent_crc(p_1291->g_638.s1, "p_1291->g_638.s1", print_hash_value);
    transparent_crc(p_1291->g_638.s2, "p_1291->g_638.s2", print_hash_value);
    transparent_crc(p_1291->g_638.s3, "p_1291->g_638.s3", print_hash_value);
    transparent_crc(p_1291->g_638.s4, "p_1291->g_638.s4", print_hash_value);
    transparent_crc(p_1291->g_638.s5, "p_1291->g_638.s5", print_hash_value);
    transparent_crc(p_1291->g_638.s6, "p_1291->g_638.s6", print_hash_value);
    transparent_crc(p_1291->g_638.s7, "p_1291->g_638.s7", print_hash_value);
    transparent_crc(p_1291->g_638.s8, "p_1291->g_638.s8", print_hash_value);
    transparent_crc(p_1291->g_638.s9, "p_1291->g_638.s9", print_hash_value);
    transparent_crc(p_1291->g_638.sa, "p_1291->g_638.sa", print_hash_value);
    transparent_crc(p_1291->g_638.sb, "p_1291->g_638.sb", print_hash_value);
    transparent_crc(p_1291->g_638.sc, "p_1291->g_638.sc", print_hash_value);
    transparent_crc(p_1291->g_638.sd, "p_1291->g_638.sd", print_hash_value);
    transparent_crc(p_1291->g_638.se, "p_1291->g_638.se", print_hash_value);
    transparent_crc(p_1291->g_638.sf, "p_1291->g_638.sf", print_hash_value);
    transparent_crc(p_1291->g_665.x, "p_1291->g_665.x", print_hash_value);
    transparent_crc(p_1291->g_665.y, "p_1291->g_665.y", print_hash_value);
    transparent_crc(p_1291->g_665.z, "p_1291->g_665.z", print_hash_value);
    transparent_crc(p_1291->g_665.w, "p_1291->g_665.w", print_hash_value);
    transparent_crc(p_1291->g_666.s0, "p_1291->g_666.s0", print_hash_value);
    transparent_crc(p_1291->g_666.s1, "p_1291->g_666.s1", print_hash_value);
    transparent_crc(p_1291->g_666.s2, "p_1291->g_666.s2", print_hash_value);
    transparent_crc(p_1291->g_666.s3, "p_1291->g_666.s3", print_hash_value);
    transparent_crc(p_1291->g_666.s4, "p_1291->g_666.s4", print_hash_value);
    transparent_crc(p_1291->g_666.s5, "p_1291->g_666.s5", print_hash_value);
    transparent_crc(p_1291->g_666.s6, "p_1291->g_666.s6", print_hash_value);
    transparent_crc(p_1291->g_666.s7, "p_1291->g_666.s7", print_hash_value);
    transparent_crc(p_1291->g_668.x, "p_1291->g_668.x", print_hash_value);
    transparent_crc(p_1291->g_668.y, "p_1291->g_668.y", print_hash_value);
    transparent_crc(p_1291->g_692.x, "p_1291->g_692.x", print_hash_value);
    transparent_crc(p_1291->g_692.y, "p_1291->g_692.y", print_hash_value);
    transparent_crc(p_1291->g_694.x, "p_1291->g_694.x", print_hash_value);
    transparent_crc(p_1291->g_694.y, "p_1291->g_694.y", print_hash_value);
    transparent_crc(p_1291->g_695.s0, "p_1291->g_695.s0", print_hash_value);
    transparent_crc(p_1291->g_695.s1, "p_1291->g_695.s1", print_hash_value);
    transparent_crc(p_1291->g_695.s2, "p_1291->g_695.s2", print_hash_value);
    transparent_crc(p_1291->g_695.s3, "p_1291->g_695.s3", print_hash_value);
    transparent_crc(p_1291->g_695.s4, "p_1291->g_695.s4", print_hash_value);
    transparent_crc(p_1291->g_695.s5, "p_1291->g_695.s5", print_hash_value);
    transparent_crc(p_1291->g_695.s6, "p_1291->g_695.s6", print_hash_value);
    transparent_crc(p_1291->g_695.s7, "p_1291->g_695.s7", print_hash_value);
    transparent_crc(p_1291->g_695.s8, "p_1291->g_695.s8", print_hash_value);
    transparent_crc(p_1291->g_695.s9, "p_1291->g_695.s9", print_hash_value);
    transparent_crc(p_1291->g_695.sa, "p_1291->g_695.sa", print_hash_value);
    transparent_crc(p_1291->g_695.sb, "p_1291->g_695.sb", print_hash_value);
    transparent_crc(p_1291->g_695.sc, "p_1291->g_695.sc", print_hash_value);
    transparent_crc(p_1291->g_695.sd, "p_1291->g_695.sd", print_hash_value);
    transparent_crc(p_1291->g_695.se, "p_1291->g_695.se", print_hash_value);
    transparent_crc(p_1291->g_695.sf, "p_1291->g_695.sf", print_hash_value);
    transparent_crc(p_1291->g_697.x, "p_1291->g_697.x", print_hash_value);
    transparent_crc(p_1291->g_697.y, "p_1291->g_697.y", print_hash_value);
    transparent_crc(p_1291->g_697.z, "p_1291->g_697.z", print_hash_value);
    transparent_crc(p_1291->g_697.w, "p_1291->g_697.w", print_hash_value);
    transparent_crc(p_1291->g_700.s0, "p_1291->g_700.s0", print_hash_value);
    transparent_crc(p_1291->g_700.s1, "p_1291->g_700.s1", print_hash_value);
    transparent_crc(p_1291->g_700.s2, "p_1291->g_700.s2", print_hash_value);
    transparent_crc(p_1291->g_700.s3, "p_1291->g_700.s3", print_hash_value);
    transparent_crc(p_1291->g_700.s4, "p_1291->g_700.s4", print_hash_value);
    transparent_crc(p_1291->g_700.s5, "p_1291->g_700.s5", print_hash_value);
    transparent_crc(p_1291->g_700.s6, "p_1291->g_700.s6", print_hash_value);
    transparent_crc(p_1291->g_700.s7, "p_1291->g_700.s7", print_hash_value);
    transparent_crc(p_1291->g_700.s8, "p_1291->g_700.s8", print_hash_value);
    transparent_crc(p_1291->g_700.s9, "p_1291->g_700.s9", print_hash_value);
    transparent_crc(p_1291->g_700.sa, "p_1291->g_700.sa", print_hash_value);
    transparent_crc(p_1291->g_700.sb, "p_1291->g_700.sb", print_hash_value);
    transparent_crc(p_1291->g_700.sc, "p_1291->g_700.sc", print_hash_value);
    transparent_crc(p_1291->g_700.sd, "p_1291->g_700.sd", print_hash_value);
    transparent_crc(p_1291->g_700.se, "p_1291->g_700.se", print_hash_value);
    transparent_crc(p_1291->g_700.sf, "p_1291->g_700.sf", print_hash_value);
    transparent_crc(p_1291->g_713.s0, "p_1291->g_713.s0", print_hash_value);
    transparent_crc(p_1291->g_713.s1, "p_1291->g_713.s1", print_hash_value);
    transparent_crc(p_1291->g_713.s2, "p_1291->g_713.s2", print_hash_value);
    transparent_crc(p_1291->g_713.s3, "p_1291->g_713.s3", print_hash_value);
    transparent_crc(p_1291->g_713.s4, "p_1291->g_713.s4", print_hash_value);
    transparent_crc(p_1291->g_713.s5, "p_1291->g_713.s5", print_hash_value);
    transparent_crc(p_1291->g_713.s6, "p_1291->g_713.s6", print_hash_value);
    transparent_crc(p_1291->g_713.s7, "p_1291->g_713.s7", print_hash_value);
    transparent_crc(p_1291->g_713.s8, "p_1291->g_713.s8", print_hash_value);
    transparent_crc(p_1291->g_713.s9, "p_1291->g_713.s9", print_hash_value);
    transparent_crc(p_1291->g_713.sa, "p_1291->g_713.sa", print_hash_value);
    transparent_crc(p_1291->g_713.sb, "p_1291->g_713.sb", print_hash_value);
    transparent_crc(p_1291->g_713.sc, "p_1291->g_713.sc", print_hash_value);
    transparent_crc(p_1291->g_713.sd, "p_1291->g_713.sd", print_hash_value);
    transparent_crc(p_1291->g_713.se, "p_1291->g_713.se", print_hash_value);
    transparent_crc(p_1291->g_713.sf, "p_1291->g_713.sf", print_hash_value);
    transparent_crc(p_1291->g_757.s0, "p_1291->g_757.s0", print_hash_value);
    transparent_crc(p_1291->g_757.s1, "p_1291->g_757.s1", print_hash_value);
    transparent_crc(p_1291->g_757.s2, "p_1291->g_757.s2", print_hash_value);
    transparent_crc(p_1291->g_757.s3, "p_1291->g_757.s3", print_hash_value);
    transparent_crc(p_1291->g_757.s4, "p_1291->g_757.s4", print_hash_value);
    transparent_crc(p_1291->g_757.s5, "p_1291->g_757.s5", print_hash_value);
    transparent_crc(p_1291->g_757.s6, "p_1291->g_757.s6", print_hash_value);
    transparent_crc(p_1291->g_757.s7, "p_1291->g_757.s7", print_hash_value);
    transparent_crc(p_1291->g_757.s8, "p_1291->g_757.s8", print_hash_value);
    transparent_crc(p_1291->g_757.s9, "p_1291->g_757.s9", print_hash_value);
    transparent_crc(p_1291->g_757.sa, "p_1291->g_757.sa", print_hash_value);
    transparent_crc(p_1291->g_757.sb, "p_1291->g_757.sb", print_hash_value);
    transparent_crc(p_1291->g_757.sc, "p_1291->g_757.sc", print_hash_value);
    transparent_crc(p_1291->g_757.sd, "p_1291->g_757.sd", print_hash_value);
    transparent_crc(p_1291->g_757.se, "p_1291->g_757.se", print_hash_value);
    transparent_crc(p_1291->g_757.sf, "p_1291->g_757.sf", print_hash_value);
    transparent_crc(p_1291->g_758.s0, "p_1291->g_758.s0", print_hash_value);
    transparent_crc(p_1291->g_758.s1, "p_1291->g_758.s1", print_hash_value);
    transparent_crc(p_1291->g_758.s2, "p_1291->g_758.s2", print_hash_value);
    transparent_crc(p_1291->g_758.s3, "p_1291->g_758.s3", print_hash_value);
    transparent_crc(p_1291->g_758.s4, "p_1291->g_758.s4", print_hash_value);
    transparent_crc(p_1291->g_758.s5, "p_1291->g_758.s5", print_hash_value);
    transparent_crc(p_1291->g_758.s6, "p_1291->g_758.s6", print_hash_value);
    transparent_crc(p_1291->g_758.s7, "p_1291->g_758.s7", print_hash_value);
    transparent_crc(p_1291->g_758.s8, "p_1291->g_758.s8", print_hash_value);
    transparent_crc(p_1291->g_758.s9, "p_1291->g_758.s9", print_hash_value);
    transparent_crc(p_1291->g_758.sa, "p_1291->g_758.sa", print_hash_value);
    transparent_crc(p_1291->g_758.sb, "p_1291->g_758.sb", print_hash_value);
    transparent_crc(p_1291->g_758.sc, "p_1291->g_758.sc", print_hash_value);
    transparent_crc(p_1291->g_758.sd, "p_1291->g_758.sd", print_hash_value);
    transparent_crc(p_1291->g_758.se, "p_1291->g_758.se", print_hash_value);
    transparent_crc(p_1291->g_758.sf, "p_1291->g_758.sf", print_hash_value);
    transparent_crc(p_1291->g_759.x, "p_1291->g_759.x", print_hash_value);
    transparent_crc(p_1291->g_759.y, "p_1291->g_759.y", print_hash_value);
    transparent_crc(p_1291->g_763.s0, "p_1291->g_763.s0", print_hash_value);
    transparent_crc(p_1291->g_763.s1, "p_1291->g_763.s1", print_hash_value);
    transparent_crc(p_1291->g_763.s2, "p_1291->g_763.s2", print_hash_value);
    transparent_crc(p_1291->g_763.s3, "p_1291->g_763.s3", print_hash_value);
    transparent_crc(p_1291->g_763.s4, "p_1291->g_763.s4", print_hash_value);
    transparent_crc(p_1291->g_763.s5, "p_1291->g_763.s5", print_hash_value);
    transparent_crc(p_1291->g_763.s6, "p_1291->g_763.s6", print_hash_value);
    transparent_crc(p_1291->g_763.s7, "p_1291->g_763.s7", print_hash_value);
    transparent_crc(p_1291->g_766.s0, "p_1291->g_766.s0", print_hash_value);
    transparent_crc(p_1291->g_766.s1, "p_1291->g_766.s1", print_hash_value);
    transparent_crc(p_1291->g_766.s2, "p_1291->g_766.s2", print_hash_value);
    transparent_crc(p_1291->g_766.s3, "p_1291->g_766.s3", print_hash_value);
    transparent_crc(p_1291->g_766.s4, "p_1291->g_766.s4", print_hash_value);
    transparent_crc(p_1291->g_766.s5, "p_1291->g_766.s5", print_hash_value);
    transparent_crc(p_1291->g_766.s6, "p_1291->g_766.s6", print_hash_value);
    transparent_crc(p_1291->g_766.s7, "p_1291->g_766.s7", print_hash_value);
    transparent_crc(p_1291->g_766.s8, "p_1291->g_766.s8", print_hash_value);
    transparent_crc(p_1291->g_766.s9, "p_1291->g_766.s9", print_hash_value);
    transparent_crc(p_1291->g_766.sa, "p_1291->g_766.sa", print_hash_value);
    transparent_crc(p_1291->g_766.sb, "p_1291->g_766.sb", print_hash_value);
    transparent_crc(p_1291->g_766.sc, "p_1291->g_766.sc", print_hash_value);
    transparent_crc(p_1291->g_766.sd, "p_1291->g_766.sd", print_hash_value);
    transparent_crc(p_1291->g_766.se, "p_1291->g_766.se", print_hash_value);
    transparent_crc(p_1291->g_766.sf, "p_1291->g_766.sf", print_hash_value);
    transparent_crc(p_1291->g_777.s0, "p_1291->g_777.s0", print_hash_value);
    transparent_crc(p_1291->g_777.s1, "p_1291->g_777.s1", print_hash_value);
    transparent_crc(p_1291->g_777.s2, "p_1291->g_777.s2", print_hash_value);
    transparent_crc(p_1291->g_777.s3, "p_1291->g_777.s3", print_hash_value);
    transparent_crc(p_1291->g_777.s4, "p_1291->g_777.s4", print_hash_value);
    transparent_crc(p_1291->g_777.s5, "p_1291->g_777.s5", print_hash_value);
    transparent_crc(p_1291->g_777.s6, "p_1291->g_777.s6", print_hash_value);
    transparent_crc(p_1291->g_777.s7, "p_1291->g_777.s7", print_hash_value);
    transparent_crc(p_1291->g_777.s8, "p_1291->g_777.s8", print_hash_value);
    transparent_crc(p_1291->g_777.s9, "p_1291->g_777.s9", print_hash_value);
    transparent_crc(p_1291->g_777.sa, "p_1291->g_777.sa", print_hash_value);
    transparent_crc(p_1291->g_777.sb, "p_1291->g_777.sb", print_hash_value);
    transparent_crc(p_1291->g_777.sc, "p_1291->g_777.sc", print_hash_value);
    transparent_crc(p_1291->g_777.sd, "p_1291->g_777.sd", print_hash_value);
    transparent_crc(p_1291->g_777.se, "p_1291->g_777.se", print_hash_value);
    transparent_crc(p_1291->g_777.sf, "p_1291->g_777.sf", print_hash_value);
    transparent_crc(p_1291->g_818.s0, "p_1291->g_818.s0", print_hash_value);
    transparent_crc(p_1291->g_818.s1, "p_1291->g_818.s1", print_hash_value);
    transparent_crc(p_1291->g_818.s2, "p_1291->g_818.s2", print_hash_value);
    transparent_crc(p_1291->g_818.s3, "p_1291->g_818.s3", print_hash_value);
    transparent_crc(p_1291->g_818.s4, "p_1291->g_818.s4", print_hash_value);
    transparent_crc(p_1291->g_818.s5, "p_1291->g_818.s5", print_hash_value);
    transparent_crc(p_1291->g_818.s6, "p_1291->g_818.s6", print_hash_value);
    transparent_crc(p_1291->g_818.s7, "p_1291->g_818.s7", print_hash_value);
    transparent_crc(p_1291->g_825.x, "p_1291->g_825.x", print_hash_value);
    transparent_crc(p_1291->g_825.y, "p_1291->g_825.y", print_hash_value);
    transparent_crc(p_1291->g_831.x, "p_1291->g_831.x", print_hash_value);
    transparent_crc(p_1291->g_831.y, "p_1291->g_831.y", print_hash_value);
    transparent_crc(p_1291->g_915.x, "p_1291->g_915.x", print_hash_value);
    transparent_crc(p_1291->g_915.y, "p_1291->g_915.y", print_hash_value);
    transparent_crc(p_1291->g_928, "p_1291->g_928", print_hash_value);
    transparent_crc(p_1291->g_986.x, "p_1291->g_986.x", print_hash_value);
    transparent_crc(p_1291->g_986.y, "p_1291->g_986.y", print_hash_value);
    transparent_crc(p_1291->g_986.z, "p_1291->g_986.z", print_hash_value);
    transparent_crc(p_1291->g_986.w, "p_1291->g_986.w", print_hash_value);
    transparent_crc(p_1291->g_1047.s0, "p_1291->g_1047.s0", print_hash_value);
    transparent_crc(p_1291->g_1047.s1, "p_1291->g_1047.s1", print_hash_value);
    transparent_crc(p_1291->g_1047.s2, "p_1291->g_1047.s2", print_hash_value);
    transparent_crc(p_1291->g_1047.s3, "p_1291->g_1047.s3", print_hash_value);
    transparent_crc(p_1291->g_1047.s4, "p_1291->g_1047.s4", print_hash_value);
    transparent_crc(p_1291->g_1047.s5, "p_1291->g_1047.s5", print_hash_value);
    transparent_crc(p_1291->g_1047.s6, "p_1291->g_1047.s6", print_hash_value);
    transparent_crc(p_1291->g_1047.s7, "p_1291->g_1047.s7", print_hash_value);
    transparent_crc(p_1291->g_1072, "p_1291->g_1072", print_hash_value);
    transparent_crc(p_1291->g_1073, "p_1291->g_1073", print_hash_value);
    transparent_crc(p_1291->g_1118.s0, "p_1291->g_1118.s0", print_hash_value);
    transparent_crc(p_1291->g_1118.s1, "p_1291->g_1118.s1", print_hash_value);
    transparent_crc(p_1291->g_1118.s2, "p_1291->g_1118.s2", print_hash_value);
    transparent_crc(p_1291->g_1118.s3, "p_1291->g_1118.s3", print_hash_value);
    transparent_crc(p_1291->g_1118.s4, "p_1291->g_1118.s4", print_hash_value);
    transparent_crc(p_1291->g_1118.s5, "p_1291->g_1118.s5", print_hash_value);
    transparent_crc(p_1291->g_1118.s6, "p_1291->g_1118.s6", print_hash_value);
    transparent_crc(p_1291->g_1118.s7, "p_1291->g_1118.s7", print_hash_value);
    transparent_crc(p_1291->g_1118.s8, "p_1291->g_1118.s8", print_hash_value);
    transparent_crc(p_1291->g_1118.s9, "p_1291->g_1118.s9", print_hash_value);
    transparent_crc(p_1291->g_1118.sa, "p_1291->g_1118.sa", print_hash_value);
    transparent_crc(p_1291->g_1118.sb, "p_1291->g_1118.sb", print_hash_value);
    transparent_crc(p_1291->g_1118.sc, "p_1291->g_1118.sc", print_hash_value);
    transparent_crc(p_1291->g_1118.sd, "p_1291->g_1118.sd", print_hash_value);
    transparent_crc(p_1291->g_1118.se, "p_1291->g_1118.se", print_hash_value);
    transparent_crc(p_1291->g_1118.sf, "p_1291->g_1118.sf", print_hash_value);
    transparent_crc(p_1291->g_1126.s0, "p_1291->g_1126.s0", print_hash_value);
    transparent_crc(p_1291->g_1126.s1, "p_1291->g_1126.s1", print_hash_value);
    transparent_crc(p_1291->g_1126.s2, "p_1291->g_1126.s2", print_hash_value);
    transparent_crc(p_1291->g_1126.s3, "p_1291->g_1126.s3", print_hash_value);
    transparent_crc(p_1291->g_1126.s4, "p_1291->g_1126.s4", print_hash_value);
    transparent_crc(p_1291->g_1126.s5, "p_1291->g_1126.s5", print_hash_value);
    transparent_crc(p_1291->g_1126.s6, "p_1291->g_1126.s6", print_hash_value);
    transparent_crc(p_1291->g_1126.s7, "p_1291->g_1126.s7", print_hash_value);
    transparent_crc(p_1291->g_1126.s8, "p_1291->g_1126.s8", print_hash_value);
    transparent_crc(p_1291->g_1126.s9, "p_1291->g_1126.s9", print_hash_value);
    transparent_crc(p_1291->g_1126.sa, "p_1291->g_1126.sa", print_hash_value);
    transparent_crc(p_1291->g_1126.sb, "p_1291->g_1126.sb", print_hash_value);
    transparent_crc(p_1291->g_1126.sc, "p_1291->g_1126.sc", print_hash_value);
    transparent_crc(p_1291->g_1126.sd, "p_1291->g_1126.sd", print_hash_value);
    transparent_crc(p_1291->g_1126.se, "p_1291->g_1126.se", print_hash_value);
    transparent_crc(p_1291->g_1126.sf, "p_1291->g_1126.sf", print_hash_value);
    transparent_crc(p_1291->g_1179.f0, "p_1291->g_1179.f0", print_hash_value);
    transparent_crc(p_1291->g_1179.f1, "p_1291->g_1179.f1", print_hash_value);
    transparent_crc(p_1291->g_1179.f2, "p_1291->g_1179.f2", print_hash_value);
    transparent_crc(p_1291->g_1179.f3, "p_1291->g_1179.f3", print_hash_value);
    transparent_crc(p_1291->g_1221.x, "p_1291->g_1221.x", print_hash_value);
    transparent_crc(p_1291->g_1221.y, "p_1291->g_1221.y", print_hash_value);
    transparent_crc(p_1291->g_1222.s0, "p_1291->g_1222.s0", print_hash_value);
    transparent_crc(p_1291->g_1222.s1, "p_1291->g_1222.s1", print_hash_value);
    transparent_crc(p_1291->g_1222.s2, "p_1291->g_1222.s2", print_hash_value);
    transparent_crc(p_1291->g_1222.s3, "p_1291->g_1222.s3", print_hash_value);
    transparent_crc(p_1291->g_1222.s4, "p_1291->g_1222.s4", print_hash_value);
    transparent_crc(p_1291->g_1222.s5, "p_1291->g_1222.s5", print_hash_value);
    transparent_crc(p_1291->g_1222.s6, "p_1291->g_1222.s6", print_hash_value);
    transparent_crc(p_1291->g_1222.s7, "p_1291->g_1222.s7", print_hash_value);
    transparent_crc(p_1291->g_1223.s0, "p_1291->g_1223.s0", print_hash_value);
    transparent_crc(p_1291->g_1223.s1, "p_1291->g_1223.s1", print_hash_value);
    transparent_crc(p_1291->g_1223.s2, "p_1291->g_1223.s2", print_hash_value);
    transparent_crc(p_1291->g_1223.s3, "p_1291->g_1223.s3", print_hash_value);
    transparent_crc(p_1291->g_1223.s4, "p_1291->g_1223.s4", print_hash_value);
    transparent_crc(p_1291->g_1223.s5, "p_1291->g_1223.s5", print_hash_value);
    transparent_crc(p_1291->g_1223.s6, "p_1291->g_1223.s6", print_hash_value);
    transparent_crc(p_1291->g_1223.s7, "p_1291->g_1223.s7", print_hash_value);
    transparent_crc(p_1291->g_1224.s0, "p_1291->g_1224.s0", print_hash_value);
    transparent_crc(p_1291->g_1224.s1, "p_1291->g_1224.s1", print_hash_value);
    transparent_crc(p_1291->g_1224.s2, "p_1291->g_1224.s2", print_hash_value);
    transparent_crc(p_1291->g_1224.s3, "p_1291->g_1224.s3", print_hash_value);
    transparent_crc(p_1291->g_1224.s4, "p_1291->g_1224.s4", print_hash_value);
    transparent_crc(p_1291->g_1224.s5, "p_1291->g_1224.s5", print_hash_value);
    transparent_crc(p_1291->g_1224.s6, "p_1291->g_1224.s6", print_hash_value);
    transparent_crc(p_1291->g_1224.s7, "p_1291->g_1224.s7", print_hash_value);
    transparent_crc(p_1291->g_1225.s0, "p_1291->g_1225.s0", print_hash_value);
    transparent_crc(p_1291->g_1225.s1, "p_1291->g_1225.s1", print_hash_value);
    transparent_crc(p_1291->g_1225.s2, "p_1291->g_1225.s2", print_hash_value);
    transparent_crc(p_1291->g_1225.s3, "p_1291->g_1225.s3", print_hash_value);
    transparent_crc(p_1291->g_1225.s4, "p_1291->g_1225.s4", print_hash_value);
    transparent_crc(p_1291->g_1225.s5, "p_1291->g_1225.s5", print_hash_value);
    transparent_crc(p_1291->g_1225.s6, "p_1291->g_1225.s6", print_hash_value);
    transparent_crc(p_1291->g_1225.s7, "p_1291->g_1225.s7", print_hash_value);
    transparent_crc(p_1291->g_1227.s0, "p_1291->g_1227.s0", print_hash_value);
    transparent_crc(p_1291->g_1227.s1, "p_1291->g_1227.s1", print_hash_value);
    transparent_crc(p_1291->g_1227.s2, "p_1291->g_1227.s2", print_hash_value);
    transparent_crc(p_1291->g_1227.s3, "p_1291->g_1227.s3", print_hash_value);
    transparent_crc(p_1291->g_1227.s4, "p_1291->g_1227.s4", print_hash_value);
    transparent_crc(p_1291->g_1227.s5, "p_1291->g_1227.s5", print_hash_value);
    transparent_crc(p_1291->g_1227.s6, "p_1291->g_1227.s6", print_hash_value);
    transparent_crc(p_1291->g_1227.s7, "p_1291->g_1227.s7", print_hash_value);
    transparent_crc(p_1291->g_1228.s0, "p_1291->g_1228.s0", print_hash_value);
    transparent_crc(p_1291->g_1228.s1, "p_1291->g_1228.s1", print_hash_value);
    transparent_crc(p_1291->g_1228.s2, "p_1291->g_1228.s2", print_hash_value);
    transparent_crc(p_1291->g_1228.s3, "p_1291->g_1228.s3", print_hash_value);
    transparent_crc(p_1291->g_1228.s4, "p_1291->g_1228.s4", print_hash_value);
    transparent_crc(p_1291->g_1228.s5, "p_1291->g_1228.s5", print_hash_value);
    transparent_crc(p_1291->g_1228.s6, "p_1291->g_1228.s6", print_hash_value);
    transparent_crc(p_1291->g_1228.s7, "p_1291->g_1228.s7", print_hash_value);
    transparent_crc(p_1291->g_1228.s8, "p_1291->g_1228.s8", print_hash_value);
    transparent_crc(p_1291->g_1228.s9, "p_1291->g_1228.s9", print_hash_value);
    transparent_crc(p_1291->g_1228.sa, "p_1291->g_1228.sa", print_hash_value);
    transparent_crc(p_1291->g_1228.sb, "p_1291->g_1228.sb", print_hash_value);
    transparent_crc(p_1291->g_1228.sc, "p_1291->g_1228.sc", print_hash_value);
    transparent_crc(p_1291->g_1228.sd, "p_1291->g_1228.sd", print_hash_value);
    transparent_crc(p_1291->g_1228.se, "p_1291->g_1228.se", print_hash_value);
    transparent_crc(p_1291->g_1228.sf, "p_1291->g_1228.sf", print_hash_value);
    transparent_crc(p_1291->g_1241, "p_1291->g_1241", print_hash_value);
    transparent_crc(p_1291->g_1246, "p_1291->g_1246", print_hash_value);
    transparent_crc(p_1291->g_1261.s0, "p_1291->g_1261.s0", print_hash_value);
    transparent_crc(p_1291->g_1261.s1, "p_1291->g_1261.s1", print_hash_value);
    transparent_crc(p_1291->g_1261.s2, "p_1291->g_1261.s2", print_hash_value);
    transparent_crc(p_1291->g_1261.s3, "p_1291->g_1261.s3", print_hash_value);
    transparent_crc(p_1291->g_1261.s4, "p_1291->g_1261.s4", print_hash_value);
    transparent_crc(p_1291->g_1261.s5, "p_1291->g_1261.s5", print_hash_value);
    transparent_crc(p_1291->g_1261.s6, "p_1291->g_1261.s6", print_hash_value);
    transparent_crc(p_1291->g_1261.s7, "p_1291->g_1261.s7", print_hash_value);
    transparent_crc(p_1291->g_1261.s8, "p_1291->g_1261.s8", print_hash_value);
    transparent_crc(p_1291->g_1261.s9, "p_1291->g_1261.s9", print_hash_value);
    transparent_crc(p_1291->g_1261.sa, "p_1291->g_1261.sa", print_hash_value);
    transparent_crc(p_1291->g_1261.sb, "p_1291->g_1261.sb", print_hash_value);
    transparent_crc(p_1291->g_1261.sc, "p_1291->g_1261.sc", print_hash_value);
    transparent_crc(p_1291->g_1261.sd, "p_1291->g_1261.sd", print_hash_value);
    transparent_crc(p_1291->g_1261.se, "p_1291->g_1261.se", print_hash_value);
    transparent_crc(p_1291->g_1261.sf, "p_1291->g_1261.sf", print_hash_value);
    transparent_crc(p_1291->g_1262.x, "p_1291->g_1262.x", print_hash_value);
    transparent_crc(p_1291->g_1262.y, "p_1291->g_1262.y", print_hash_value);
    transparent_crc(p_1291->g_1264.x, "p_1291->g_1264.x", print_hash_value);
    transparent_crc(p_1291->g_1264.y, "p_1291->g_1264.y", print_hash_value);
    transparent_crc(p_1291->g_1264.z, "p_1291->g_1264.z", print_hash_value);
    transparent_crc(p_1291->g_1264.w, "p_1291->g_1264.w", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
