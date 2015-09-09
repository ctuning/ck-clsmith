// ---fake_divergence -g 97,10,2 -l 1,5,2
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


// Seed: 9

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int32_t  f0;
   uint32_t  f1;
   int64_t  f2;
   volatile int32_t  f3;
   int16_t  f4;
   uint16_t  f5;
   int8_t  f6;
   int8_t  f7;
   int32_t  f8;
};

struct S1 {
    int32_t g_2[2];
    volatile int32_t g_5;
    int32_t g_6;
    VECTOR(int16_t, 8) g_17;
    volatile VECTOR(int16_t, 4) g_19;
    int16_t *g_34;
    int32_t g_39;
    int32_t g_42;
    int64_t g_49;
    volatile VECTOR(int64_t, 4) g_63;
    volatile VECTOR(int32_t, 2) g_87;
    struct S0 g_103;
    int16_t *g_107;
    VECTOR(uint64_t, 2) g_110;
    int32_t g_119;
    int32_t * volatile g_118;
    VECTOR(int32_t, 8) g_120;
    uint8_t g_134[2];
    int32_t *g_155;
    int32_t ** volatile g_154;
    int64_t g_174;
    uint32_t g_183[4];
    int32_t * volatile g_185;
    int16_t **g_201;
    int16_t ***g_200;
    int16_t ****g_199;
    int32_t ** volatile g_219;
    int32_t ** volatile g_246;
    struct S0 g_247;
    uint32_t g_272;
    int32_t ** volatile g_276;
    int32_t ** volatile g_277[2][8];
    int32_t ** volatile g_278;
    struct S0 g_289;
    int64_t g_296;
    VECTOR(int64_t, 8) g_302;
    volatile VECTOR(int64_t, 2) g_304;
    volatile struct S0 g_322;
    volatile struct S0 * volatile g_323[3][3];
    VECTOR(uint8_t, 4) g_327;
    VECTOR(uint8_t, 4) g_328;
    VECTOR(uint8_t, 4) g_329;
    VECTOR(uint8_t, 4) g_331;
    int32_t ** volatile g_333;
    VECTOR(uint32_t, 2) g_350;
    VECTOR(int16_t, 16) g_373;
    volatile struct S0 g_389;
    struct S0 g_398;
    VECTOR(int8_t, 16) g_406;
    VECTOR(int8_t, 8) g_407;
    int32_t g_420;
    int32_t ** volatile g_428;
    volatile struct S0 g_431;
    volatile struct S0 * volatile g_432;
    volatile uint16_t *g_443;
    volatile uint16_t **g_442;
    int32_t ** volatile g_448;
    int32_t ** volatile g_449;
    VECTOR(int64_t, 4) g_487;
    volatile VECTOR(int32_t, 8) g_511;
    VECTOR(int16_t, 8) g_513;
    volatile VECTOR(uint16_t, 4) g_515;
    volatile VECTOR(uint16_t, 4) g_516;
    VECTOR(uint16_t, 2) g_517;
    VECTOR(uint16_t, 2) g_525;
    volatile VECTOR(uint32_t, 16) g_541;
    int8_t g_578;
    uint16_t g_589;
    volatile VECTOR(uint8_t, 4) g_595;
    uint8_t *g_597;
    uint8_t **g_596;
    uint16_t *g_636;
    uint16_t **g_635;
    int32_t ** volatile g_646;
    int32_t ** volatile g_657;
    int32_t ** volatile g_658;
    int32_t ** volatile g_662[1];
    VECTOR(int8_t, 4) g_671;
    volatile VECTOR(uint32_t, 2) g_684;
    volatile struct S0 g_685;
    volatile int8_t * volatile * volatile g_689;
    int32_t *g_774;
    int32_t ** volatile g_773;
    int16_t *****g_777[6];
    VECTOR(int32_t, 16) g_781;
    volatile VECTOR(uint8_t, 16) g_787;
    struct S0 g_794;
    VECTOR(uint16_t, 16) g_801;
    volatile uint32_t *g_807[4];
    volatile uint32_t ** volatile g_806;
    int32_t ** volatile g_821;
    struct S0 g_831;
    struct S0 g_834[1];
    struct S0 g_835;
    struct S0 *g_833[5];
    int32_t g_837[2];
    int32_t * volatile g_839;
    int32_t ** volatile g_840;
    int64_t *g_860;
    int64_t **g_859;
    volatile VECTOR(uint16_t, 16) g_919;
    volatile struct S0 g_927;
    struct S0 g_932;
    volatile struct S0 g_938[2][9][10];
    volatile struct S0 * volatile g_939;
    volatile struct S0 * volatile g_940;
    volatile VECTOR(int8_t, 2) g_966;
    volatile struct S0 g_972;
    struct S0 g_982;
    volatile VECTOR(uint8_t, 2) g_994;
    volatile VECTOR(int64_t, 8) g_1000;
    volatile VECTOR(int64_t, 16) g_1004;
    VECTOR(int64_t, 8) g_1007;
    volatile uint8_t g_1049;
    VECTOR(int16_t, 4) g_1061;
    volatile struct S0 g_1075;
    struct S0 g_1076;
    struct S0 g_1090;
    VECTOR(int32_t, 2) g_1092;
    VECTOR(int32_t, 4) g_1095;
    int32_t **g_1117;
    uint32_t * volatile g_1138;
    uint32_t * volatile * volatile g_1137;
    uint32_t *g_1140;
    uint32_t **g_1139;
    VECTOR(int64_t, 4) g_1159;
    volatile VECTOR(int64_t, 8) g_1161;
    VECTOR(int64_t, 2) g_1170;
    VECTOR(int64_t, 16) g_1171;
    VECTOR(uint32_t, 4) g_1180;
    VECTOR(int64_t, 16) g_1187;
    volatile struct S0 g_1203;
    volatile VECTOR(uint16_t, 4) g_1225;
    VECTOR(uint32_t, 8) g_1229;
    struct S0 g_1234;
    struct S0 g_1247;
    struct S0 g_1249[8];
    uint8_t g_1273;
    volatile VECTOR(uint16_t, 2) g_1276;
    VECTOR(uint16_t, 16) g_1278;
    volatile VECTOR(uint32_t, 8) g_1285;
    volatile uint8_t *g_1317[7][5];
    volatile uint8_t **g_1316;
    volatile uint8_t ***g_1315;
    volatile uint8_t *** volatile * volatile g_1314[6][7][5];
    VECTOR(uint64_t, 16) g_1319;
    int8_t g_1334;
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
uint64_t  func_1(struct S1 * p_1336);
struct S0  func_9(int32_t  p_10, uint8_t  p_11, uint16_t  p_12, int64_t  p_13, struct S1 * p_1336);
int32_t * func_29(int16_t * p_30, uint32_t  p_31, struct S1 * p_1336);
uint32_t  func_55(int32_t  p_56, int16_t  p_57, uint64_t  p_58, int16_t ** p_59, struct S1 * p_1336);
int32_t  func_65(int64_t * p_66, uint32_t  p_67, uint16_t  p_68, uint64_t  p_69, int64_t * p_70, struct S1 * p_1336);
int64_t * func_71(int64_t * p_72, int16_t  p_73, int64_t  p_74, struct S1 * p_1336);
int64_t  func_78(int32_t  p_79, int16_t ** p_80, int64_t * p_81, struct S1 * p_1336);
int32_t  func_82(uint32_t  p_83, uint32_t  p_84, int64_t  p_85, struct S1 * p_1336);
int16_t ** func_88(int32_t  p_89, struct S1 * p_1336);
int64_t  func_98(int32_t * p_99, uint64_t  p_100, uint16_t  p_101, int32_t  p_102, struct S1 * p_1336);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1336->g_2 p_1336->g_6 p_1336->g_17 p_1336->g_19 p_1336->g_5 p_1336->g_103.f2 p_1336->g_39 p_1336->g_794.f1 p_1336->g_389.f4 p_1336->g_155 p_1336->g_837 p_1336->g_635 p_1336->g_636 p_1336->g_289.f5 p_1336->g_839 p_1336->g_840 p_1336->g_278 p_1336->g_183 p_1336->g_589 p_1336->g_134 p_1336->g_596 p_1336->g_185 p_1336->g_119 p_1336->g_42 p_1336->g_432 p_1336->g_431 p_1336->g_646 p_1336->g_333 p_1336->g_657 p_1336->g_658 p_1336->g_442 p_1336->g_443 p_1336->g_428 p_1336->g_689 p_1336->g_302 p_1336->g_331 p_1336->g_487 p_1336->g_773 p_1336->g_247.f5 p_1336->g_1090 p_1336->g_1092 p_1336->g_1095 p_1336->g_107 p_1336->g_103.f4 p_1336->g_859 p_1336->g_860 p_1336->g_49 p_1336->g_329 p_1336->g_289.f2 p_1336->g_938.f4 p_1336->g_1137 p_1336->g_1139 p_1336->g_406 p_1336->g_1159 p_1336->g_1161 p_1336->g_1170 p_1336->g_1171 p_1336->g_517 p_1336->g_1180 p_1336->g_831.f8 p_1336->g_398.f8 p_1336->g_1187 p_1336->g_794.f7 p_1336->g_982.f4 p_1336->g_199 p_1336->g_200 p_1336->g_201 p_1336->g_831.f5 p_1336->g_1203 p_1336->g_940 p_1336->g_774 p_1336->g_794.f6 p_1336->g_398.f2 p_1336->g_1247 p_1336->g_247.f7 p_1336->g_1273 p_1336->g_1276 p_1336->g_1278 p_1336->g_1285 p_1336->g_289.f0 p_1336->g_389.f8 p_1336->g_982.f5 p_1336->g_1234.f8 p_1336->g_1314 p_1336->g_1234.f4 p_1336->g_1319 p_1336->g_327 p_1336->g_247.f4 p_1336->g_1117 p_1336->g_801 p_1336->g_794.f8 p_1336->g_1334
 * writes: p_1336->g_2 p_1336->g_6 p_1336->g_17 p_1336->g_777 p_1336->g_103.f2 p_1336->g_42 p_1336->g_39 p_1336->g_794.f1 p_1336->g_119 p_1336->g_833 p_1336->g_837 p_1336->g_155 p_1336->g_134 p_1336->g_596 p_1336->g_103.f1 p_1336->g_272 p_1336->g_49 p_1336->g_174 p_1336->g_689 p_1336->g_398.f6 p_1336->g_774 p_1336->g_247.f5 p_1336->g_1117 p_1336->g_289.f2 p_1336->g_932.f6 p_1336->g_794.f7 p_1336->g_982.f4 p_1336->g_201 p_1336->g_431 p_1336->g_835.f5 p_1336->g_103.f7 p_1336->g_103.f4 p_1336->g_110 p_1336->g_289.f5 p_1336->g_398.f2 p_1336->g_1249 p_1336->g_835.f6 p_1336->g_247.f7 p_1336->g_329 p_1336->g_831.f4
 */
uint64_t  func_1(struct S1 * p_1336)
{ /* block id: 4 */
    VECTOR(int16_t, 8) l_16 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x1777L), 0x1777L), 0x1777L, 0L, 0x1777L);
    VECTOR(int16_t, 16) l_18 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int16_t, 2))(0L, 0L), (VECTOR(int16_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
    int8_t l_1251[6][2][3] = {{{(-1L),0x0EL,(-1L)},{(-1L),0x0EL,(-1L)}},{{(-1L),0x0EL,(-1L)},{(-1L),0x0EL,(-1L)}},{{(-1L),0x0EL,(-1L)},{(-1L),0x0EL,(-1L)}},{{(-1L),0x0EL,(-1L)},{(-1L),0x0EL,(-1L)}},{{(-1L),0x0EL,(-1L)},{(-1L),0x0EL,(-1L)}},{{(-1L),0x0EL,(-1L)},{(-1L),0x0EL,(-1L)}}};
    int32_t l_1252 = 0x6B4DA1A9L;
    int32_t l_1253 = 0x3C4714E1L;
    VECTOR(uint16_t, 4) l_1277 = (VECTOR(uint16_t, 4))(0x0492L, (VECTOR(uint16_t, 2))(0x0492L, 0xB317L), 0xB317L);
    int16_t l_1296[7] = {(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L)};
    int32_t *l_1298 = (void*)0;
    int32_t *l_1299 = (void*)0;
    int32_t *l_1300[5] = {&p_1336->g_42,&p_1336->g_42,&p_1336->g_42,&p_1336->g_42,&p_1336->g_42};
    int32_t l_1301 = 0x26EA6484L;
    int32_t l_1302 = 0x1E97EA8BL;
    uint64_t l_1303 = 18446744073709551615UL;
    VECTOR(int16_t, 16) l_1318 = (VECTOR(int16_t, 16))(0x7F63L, (VECTOR(int16_t, 4))(0x7F63L, (VECTOR(int16_t, 2))(0x7F63L, 0L), 0L), 0L, 0x7F63L, 0L, (VECTOR(int16_t, 2))(0x7F63L, 0L), (VECTOR(int16_t, 2))(0x7F63L, 0L), 0x7F63L, 0L, 0x7F63L, 0L);
    VECTOR(uint32_t, 2) l_1322 = (VECTOR(uint32_t, 2))(0x0ED8680BL, 0xF4AD5D44L);
    VECTOR(int16_t, 16) l_1330 = (VECTOR(int16_t, 16))(0x07F7L, (VECTOR(int16_t, 4))(0x07F7L, (VECTOR(int16_t, 2))(0x07F7L, 0x4637L), 0x4637L), 0x4637L, 0x07F7L, 0x4637L, (VECTOR(int16_t, 2))(0x07F7L, 0x4637L), (VECTOR(int16_t, 2))(0x07F7L, 0x4637L), 0x07F7L, 0x4637L, 0x07F7L, 0x4637L);
    int32_t l_1335[10] = {0x4ABB3CA7L,0x4D67824DL,0x5FD1B397L,0x4D67824DL,0x4ABB3CA7L,0x4ABB3CA7L,0x4D67824DL,0x5FD1B397L,0x4D67824DL,0x4ABB3CA7L};
    int i, j, k;
    for (p_1336->g_2[0] = 15; (p_1336->g_2[0] <= 22); p_1336->g_2[0] = safe_add_func_uint8_t_u_u(p_1336->g_2[0], 1))
    { /* block id: 7 */
        uint32_t l_24 = 0x21DABEE0L;
        int32_t *l_1250[5];
        uint32_t l_1254[6];
        int8_t *l_1259 = &p_1336->g_835.f6;
        int i;
        for (i = 0; i < 5; i++)
            l_1250[i] = (void*)0;
        for (i = 0; i < 6; i++)
            l_1254[i] = 0x15BD6FB5L;
        for (p_1336->g_6 = (-27); (p_1336->g_6 > 19); p_1336->g_6++)
        { /* block id: 10 */
            VECTOR(int16_t, 4) l_20 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x0482L), 0x0482L);
            int16_t *l_21 = (void*)0;
            int16_t *l_22[1][2][10] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            VECTOR(int16_t, 2) l_23 = (VECTOR(int16_t, 2))(0x5D23L, 0x3631L);
            struct S0 *l_1248[1][9][7] = {{{&p_1336->g_1090,&p_1336->g_1090,&p_1336->g_835,&p_1336->g_831,(void*)0,&p_1336->g_1076,&p_1336->g_1090},{&p_1336->g_1090,&p_1336->g_1090,&p_1336->g_835,&p_1336->g_831,(void*)0,&p_1336->g_1076,&p_1336->g_1090},{&p_1336->g_1090,&p_1336->g_1090,&p_1336->g_835,&p_1336->g_831,(void*)0,&p_1336->g_1076,&p_1336->g_1090},{&p_1336->g_1090,&p_1336->g_1090,&p_1336->g_835,&p_1336->g_831,(void*)0,&p_1336->g_1076,&p_1336->g_1090},{&p_1336->g_1090,&p_1336->g_1090,&p_1336->g_835,&p_1336->g_831,(void*)0,&p_1336->g_1076,&p_1336->g_1090},{&p_1336->g_1090,&p_1336->g_1090,&p_1336->g_835,&p_1336->g_831,(void*)0,&p_1336->g_1076,&p_1336->g_1090},{&p_1336->g_1090,&p_1336->g_1090,&p_1336->g_835,&p_1336->g_831,(void*)0,&p_1336->g_1076,&p_1336->g_1090},{&p_1336->g_1090,&p_1336->g_1090,&p_1336->g_835,&p_1336->g_831,(void*)0,&p_1336->g_1076,&p_1336->g_1090},{&p_1336->g_1090,&p_1336->g_1090,&p_1336->g_835,&p_1336->g_831,(void*)0,&p_1336->g_1076,&p_1336->g_1090}}};
            int i, j, k;
            p_1336->g_1249[7] = func_9(p_1336->g_2[0], (safe_rshift_func_int16_t_s_s(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 4))(l_16.s1273)).xxyzxzzzywxxzzxz, ((VECTOR(int16_t, 4))(p_1336->g_2[1], ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(p_1336->g_17.s27355143)).s62)), (-8L))).zyxxyywxxxzzwwyw, ((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_18.s44426282)).s1747120237032436)).s5ec3)).lo, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(7L, 0L)).xxyxxxxy)).s3725057276447237)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(p_1336->g_19.wyzzzxyzzyxxxwxy)).sc6a8)).yyzxxzzwzzxyyzzx))).odd, ((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 8))(0x73EDL, 0L, ((VECTOR(int16_t, 2))(l_20.yx)), ((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))((l_20.x , ((p_1336->g_17.s7 = 0L) > (!(l_16.s0 , ((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 2))((-1L), 0x6027L)).yxyxxyyx, ((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 16))(0x698BL, 0x32A4L, ((VECTOR(int16_t, 4))(l_23.yyxx)), 0L, 0x169FL, p_1336->g_5, ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 4))((l_18.s9 == l_18.s2), l_16.s7, (-1L), 0x18CCL)).hi, ((VECTOR(int16_t, 2))(0x7F7AL)), ((VECTOR(int16_t, 2))(8L))))), l_24, ((VECTOR(int16_t, 4))(0x136AL)))).s74b4, (int16_t)0x1409L))).wywxywyx))).s05, ((VECTOR(int16_t, 2))((-1L)))))).even)))), ((VECTOR(int16_t, 4))((-1L))), p_1336->g_5, 3L, 0x2D58L)), ((VECTOR(int16_t, 4))(0L)), ((VECTOR(int16_t, 2))((-1L))), (-1L), 0x0027L)).s488f, ((VECTOR(int16_t, 4))(0x7543L))))))), ((VECTOR(int16_t, 8))(0L))))).s13, ((VECTOR(int16_t, 2))(1L))))).yxxyyyyy, ((VECTOR(int16_t, 8))(0x3643L))))), ((VECTOR(int16_t, 8))(0x267AL))))).odd, ((VECTOR(int16_t, 4))(1L)), ((VECTOR(int16_t, 4))((-1L)))))), (-6L), 0L, 0x1B3DL, 0x0E8BL)).s00))).yyyyyyyxxxyyxxxx))).sa, l_20.y)), l_24, p_1336->g_2[1], p_1336);
            return p_1336->g_837[1];
        }
        ++l_1254[4];
        l_1252 = (safe_mul_func_int8_t_s_s(0x61L, ((*l_1259) = 1L)));
        for (p_1336->g_247.f7 = 0; (p_1336->g_247.f7 <= 4); p_1336->g_247.f7 = safe_add_func_int64_t_s_s(p_1336->g_247.f7, 5))
        { /* block id: 553 */
            int8_t l_1269 = 1L;
            int32_t l_1270 = (-1L);
            int32_t l_1279 = 5L;
            uint8_t *l_1280 = (void*)0;
            uint8_t *l_1281 = (void*)0;
            uint8_t *l_1282[9] = {&p_1336->g_134[1],&p_1336->g_134[1],&p_1336->g_134[1],&p_1336->g_134[1],&p_1336->g_134[1],&p_1336->g_134[1],&p_1336->g_134[1],&p_1336->g_134[1],&p_1336->g_134[1]};
            uint32_t *l_1294 = (void*)0;
            uint32_t *l_1295 = &p_1336->g_272;
            int32_t l_1297 = 0x6BED57FEL;
            int i;
            (*p_1336->g_155) &= (safe_add_func_uint64_t_u_u(1UL, (safe_mul_func_uint8_t_u_u((safe_unary_minus_func_int8_t_s((((safe_lshift_func_int16_t_s_s((l_1269 <= l_1270), (p_1336->g_1203.f4 , (*p_1336->g_107)))) , l_18.s1) , (safe_mul_func_int8_t_s_s(l_1252, l_1251[5][1][2]))))), (l_18.sb & p_1336->g_1273)))));
            l_1297 |= ((safe_add_func_int8_t_s_s((((*p_1336->g_636) |= l_1251[0][0][1]) ^ ((p_1336->g_329.x = (((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 8))(p_1336->g_1276.yxxyxxxy)).s5270055562655024, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_1277.yx)).yyxx)), ((VECTOR(uint16_t, 2))(p_1336->g_1278.sb1)), 0xCF2FL, 65535UL)).s0325256024677266))).s8319)).wzxyzwwz)).s3 < (l_1279 = p_1336->g_49))) || (((safe_add_func_uint32_t_u_u(((-1L) & 0x7A4DA6DF64A08C18L), ((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(max(((VECTOR(uint32_t, 8))(0UL, ((VECTOR(uint32_t, 2))(p_1336->g_1285.s37)), 4294967287UL, ((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 8))(0xB9555D0FL, (p_1336->g_289.f0 & l_1269), (((*p_1336->g_155) = ((safe_div_func_uint8_t_u_u((~(safe_rshift_func_int16_t_s_u(0x79E6L, 13))), (safe_lshift_func_uint8_t_u_u(l_1270, 5)))) != (safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))(0x07L, 0x8AL)).odd, (((*l_1295) = GROUP_DIVERGE(2, 1)) >= ((l_1296[0] < 246UL) && 0x256FF7541583B3A5L)))))) < 4294967290UL), p_1336->g_389.f8, ((VECTOR(uint32_t, 4))(0x29651B74L)))).s12, ((VECTOR(uint32_t, 2))(0x2AD33328L))))), 1UL, 0x6B013F01L)).even, (uint32_t)3UL))).zzyyyywzzwwyxzwx)).s2d87, ((VECTOR(uint32_t, 4))(4294967295UL)), ((VECTOR(uint32_t, 4))(0x74F33A52L))))).odd, ((VECTOR(uint32_t, 2))(1UL))))).even)) & p_1336->g_982.f5) > p_1336->g_134[1]))), p_1336->g_331.y)) > l_1269);
        }
    }
    (*p_1336->g_155) = (**p_1336->g_657);
    l_1303++;
    if ((((safe_lshift_func_int8_t_s_s((safe_mul_func_int16_t_s_s(((*p_1336->g_107) ^= ((**p_1336->g_635) == (safe_mod_func_int32_t_s_s(((*p_1336->g_155) = (p_1336->g_1234.f8 , ((VECTOR(int32_t, 2))(0x4188F7CDL, (-3L))).odd)), (safe_div_func_uint8_t_u_u((p_1336->g_1314[2][2][1] != &p_1336->g_1315), p_1336->g_1234.f4)))))), l_1318.sd)), ((*p_1336->g_860) > ((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(0x0EC317249C440D81L, 0xB34B17DF18162F65L, 0xC3F6E8E23C634F05L, 18446744073709551615UL)), ((VECTOR(uint64_t, 4))(p_1336->g_1319.s76c7)), ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL)).xxyyyxyyyyxxyyyy)).s5, 0xD20E7281F3E242AFL, 0xFBA9A66C34E9C706L, ((VECTOR(uint64_t, 2))(18446744073709551613UL)), p_1336->g_327.x, 0x96EA04BD3191F3F7L, 9UL)).s40, ((VECTOR(uint64_t, 2))(0xE052514EAAF804BBL))))).yxxxxyyy, ((VECTOR(uint64_t, 8))(18446744073709551615UL))))).s6))) == (-7L)) >= p_1336->g_247.f4))
    { /* block id: 567 */
        (*p_1336->g_840) = ((*p_1336->g_1117) = (*p_1336->g_428));
    }
    else
    { /* block id: 570 */
        VECTOR(int16_t, 4) l_1327 = (VECTOR(int16_t, 4))(0x2223L, (VECTOR(int16_t, 2))(0x2223L, (-3L)), (-3L));
        int16_t *l_1331 = (void*)0;
        int16_t *l_1332 = &p_1336->g_831.f4;
        int32_t l_1333 = 0x79D3BAF8L;
        int i;
        (**p_1336->g_646) ^= ((safe_div_func_int64_t_s_s((l_1333 &= (((*p_1336->g_636) <= (((*l_1332) = (((((void*)0 != (*p_1336->g_859)) | (-10L)) >= (((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_1322.yxxx)).wyxzyxxyxwyxwxyy)).s6 < ((safe_add_func_int16_t_s_s(((*p_1336->g_107) ^= (safe_div_func_uint16_t_u_u((*p_1336->g_636), ((VECTOR(int16_t, 16))(l_1327.ywzxxyzzxwwxywxx)).se))), ((safe_add_func_int8_t_s_s(l_1327.z, (&p_1336->g_840 != &p_1336->g_219))) , ((VECTOR(int16_t, 8))(l_1330.sacd01bf2)).s0))) & (p_1336->g_801.se | (*p_1336->g_860))))) && 18446744073709551611UL)) , l_1327.x)) ^ p_1336->g_794.f8)), (**p_1336->g_859))) | 9L);
        return p_1336->g_1334;
    }
    return l_1335[8];
}


/* ------------------------------------------ */
/* 
 * reads : p_1336->g_103.f2 p_1336->g_39 p_1336->g_794.f1 p_1336->g_389.f4 p_1336->g_155 p_1336->g_837 p_1336->g_635 p_1336->g_636 p_1336->g_289.f5 p_1336->g_839 p_1336->g_840 p_1336->g_278 p_1336->g_183 p_1336->g_589 p_1336->g_134 p_1336->g_596 p_1336->g_185 p_1336->g_119 p_1336->g_42 p_1336->g_432 p_1336->g_431 p_1336->g_646 p_1336->g_333 p_1336->g_657 p_1336->g_658 p_1336->g_442 p_1336->g_443 p_1336->g_428 p_1336->g_689 p_1336->g_302 p_1336->g_331 p_1336->g_487 p_1336->g_773 p_1336->g_247.f5 p_1336->g_1090 p_1336->g_1092 p_1336->g_1095 p_1336->g_107 p_1336->g_103.f4 p_1336->g_859 p_1336->g_860 p_1336->g_49 p_1336->g_329 p_1336->g_289.f2 p_1336->g_5 p_1336->g_938.f4 p_1336->g_1137 p_1336->g_1139 p_1336->g_406 p_1336->g_1159 p_1336->g_1161 p_1336->g_1170 p_1336->g_1171 p_1336->g_517 p_1336->g_1180 p_1336->g_831.f8 p_1336->g_398.f8 p_1336->g_1187 p_1336->g_794.f7 p_1336->g_982.f4 p_1336->g_199 p_1336->g_200 p_1336->g_201 p_1336->g_831.f5 p_1336->g_1203 p_1336->g_940 p_1336->g_774 p_1336->g_794.f6 p_1336->g_398.f2 p_1336->g_1247
 * writes: p_1336->g_777 p_1336->g_103.f2 p_1336->g_42 p_1336->g_39 p_1336->g_794.f1 p_1336->g_119 p_1336->g_833 p_1336->g_837 p_1336->g_155 p_1336->g_134 p_1336->g_596 p_1336->g_103.f1 p_1336->g_272 p_1336->g_49 p_1336->g_174 p_1336->g_689 p_1336->g_398.f6 p_1336->g_774 p_1336->g_247.f5 p_1336->g_1117 p_1336->g_289.f2 p_1336->g_932.f6 p_1336->g_794.f7 p_1336->g_982.f4 p_1336->g_201 p_1336->g_431 p_1336->g_835.f5 p_1336->g_103.f7 p_1336->g_103.f4 p_1336->g_110 p_1336->g_289.f5 p_1336->g_398.f2
 */
struct S0  func_9(int32_t  p_10, uint8_t  p_11, uint16_t  p_12, int64_t  p_13, struct S1 * p_1336)
{ /* block id: 12 */
    VECTOR(int32_t, 16) l_780 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x67AC54D3L), 0x67AC54D3L), 0x67AC54D3L, (-1L), 0x67AC54D3L, (VECTOR(int32_t, 2))((-1L), 0x67AC54D3L), (VECTOR(int32_t, 2))((-1L), 0x67AC54D3L), (-1L), 0x67AC54D3L, (-1L), 0x67AC54D3L);
    VECTOR(int32_t, 4) l_788 = (VECTOR(int32_t, 4))(0x58D8508AL, (VECTOR(int32_t, 2))(0x58D8508AL, 0x1CFBBB5AL), 0x1CFBBB5AL);
    int16_t *l_791 = (void*)0;
    int16_t *****l_798 = &p_1336->g_199;
    int32_t **l_873 = &p_1336->g_774;
    int8_t l_875[10];
    uint64_t l_896 = 0xED0A4C7287AFA6A4L;
    VECTOR(uint16_t, 4) l_920 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xBB7FL), 0xBB7FL);
    VECTOR(int64_t, 2) l_1003 = (VECTOR(int64_t, 2))(1L, 0x73DA75C234E799F9L);
    VECTOR(int64_t, 8) l_1005 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-7L)), (-7L)), (-7L), 0L, (-7L));
    struct S0 *l_1066[7][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
    int16_t *l_1089 = (void*)0;
    VECTOR(int32_t, 2) l_1091 = (VECTOR(int32_t, 2))(0x6E59A90BL, 3L);
    int32_t *l_1096 = (void*)0;
    int32_t *l_1097[4][1][8] = {{{&p_1336->g_2[1],&p_1336->g_6,&p_1336->g_2[1],&p_1336->g_2[1],&p_1336->g_6,&p_1336->g_2[1],&p_1336->g_2[1],&p_1336->g_6}},{{&p_1336->g_2[1],&p_1336->g_6,&p_1336->g_2[1],&p_1336->g_2[1],&p_1336->g_6,&p_1336->g_2[1],&p_1336->g_2[1],&p_1336->g_6}},{{&p_1336->g_2[1],&p_1336->g_6,&p_1336->g_2[1],&p_1336->g_2[1],&p_1336->g_6,&p_1336->g_2[1],&p_1336->g_2[1],&p_1336->g_6}},{{&p_1336->g_2[1],&p_1336->g_6,&p_1336->g_2[1],&p_1336->g_2[1],&p_1336->g_6,&p_1336->g_2[1],&p_1336->g_2[1],&p_1336->g_6}}};
    VECTOR(uint16_t, 16) l_1112 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x2266L), 0x2266L), 0x2266L, 1UL, 0x2266L, (VECTOR(uint16_t, 2))(1UL, 0x2266L), (VECTOR(uint16_t, 2))(1UL, 0x2266L), 1UL, 0x2266L, 1UL, 0x2266L);
    int32_t l_1124 = (-4L);
    VECTOR(uint16_t, 2) l_1130 = (VECTOR(uint16_t, 2))(0x3B64L, 0UL);
    VECTOR(int64_t, 4) l_1158 = (VECTOR(int64_t, 4))(5L, (VECTOR(int64_t, 2))(5L, 1L), 1L);
    VECTOR(uint32_t, 8) l_1178 = (VECTOR(uint32_t, 8))(0x01E908BEL, (VECTOR(uint32_t, 4))(0x01E908BEL, (VECTOR(uint32_t, 2))(0x01E908BEL, 0x51E79D44L), 0x51E79D44L), 0x51E79D44L, 0x01E908BEL, 0x51E79D44L);
    uint32_t l_1209[4][4] = {{0x0D089078L,4UL,4UL,0x0D089078L},{0x0D089078L,4UL,4UL,0x0D089078L},{0x0D089078L,4UL,4UL,0x0D089078L},{0x0D089078L,4UL,4UL,0x0D089078L}};
    uint32_t *l_1215 = &l_1209[1][0];
    uint32_t **l_1214 = &l_1215;
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_875[i] = 0x71L;
    for (p_12 = 0; (p_12 != 17); p_12 = safe_add_func_uint16_t_u_u(p_12, 9))
    { /* block id: 15 */
        int16_t l_776 = 0x5FE9L;
        for (p_10 = 0; (p_10 >= 7); p_10 = safe_add_func_uint16_t_u_u(p_10, 3))
        { /* block id: 18 */
            int16_t *l_33 = (void*)0;
            int16_t **l_32[9];
            int32_t **l_775[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i;
            for (i = 0; i < 9; i++)
                l_32[i] = &l_33;
            (1 + 1);
        }
        if (l_776)
            break;
    }
    if (((p_1336->g_777[5] = (void*)0) == (void*)0))
    { /* block id: 349 */
        uint64_t l_784[10][3] = {{0UL,18446744073709551606UL,18446744073709551610UL},{0UL,18446744073709551606UL,18446744073709551610UL},{0UL,18446744073709551606UL,18446744073709551610UL},{0UL,18446744073709551606UL,18446744073709551610UL},{0UL,18446744073709551606UL,18446744073709551610UL},{0UL,18446744073709551606UL,18446744073709551610UL},{0UL,18446744073709551606UL,18446744073709551610UL},{0UL,18446744073709551606UL,18446744073709551610UL},{0UL,18446744073709551606UL,18446744073709551610UL},{0UL,18446744073709551606UL,18446744073709551610UL}};
        uint32_t l_802 = 0x3822C983L;
        VECTOR(uint32_t, 8) l_814 = (VECTOR(uint32_t, 8))(4294967294UL, (VECTOR(uint32_t, 4))(4294967294UL, (VECTOR(uint32_t, 2))(4294967294UL, 4294967288UL), 4294967288UL), 4294967288UL, 4294967294UL, 4294967288UL);
        int32_t l_822[10] = {0x73EF478EL,0x1A92AEEAL,0x73EF478EL,0x73EF478EL,0x1A92AEEAL,0x73EF478EL,0x73EF478EL,0x1A92AEEAL,0x73EF478EL,0x73EF478EL};
        uint32_t *l_823[4] = {&p_1336->g_289.f1,&p_1336->g_289.f1,&p_1336->g_289.f1,&p_1336->g_289.f1};
        uint8_t **l_828 = (void*)0;
        uint64_t *l_829 = &l_784[1][0];
        struct S0 *l_830 = &p_1336->g_831;
        struct S0 **l_832[6] = {&l_830,&l_830,&l_830,&l_830,&l_830,&l_830};
        int32_t *l_836 = &p_1336->g_837[1];
        int32_t *l_838 = (void*)0;
        int16_t *l_841 = &p_1336->g_103.f4;
        int32_t **l_853 = &p_1336->g_155;
        int i, j;
        for (p_1336->g_103.f2 = 0; (p_1336->g_103.f2 != 24); p_1336->g_103.f2 = safe_add_func_uint64_t_u_u(p_1336->g_103.f2, 3))
        { /* block id: 352 */
            uint16_t **l_795 = &p_1336->g_636;
            uint32_t *l_803 = &l_802;
            uint32_t **l_804 = &l_803;
            uint32_t *l_805 = &p_1336->g_272;
            uint64_t *l_808 = &l_784[1][0];
            int32_t l_809 = 9L;
            int32_t *l_810 = &p_1336->g_42;
            int32_t *l_811 = (void*)0;
            int32_t *l_812 = &p_1336->g_39;
            int16_t *l_813 = (void*)0;
            (*l_812) ^= (((*l_810) = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(l_780.sfef8cbb3f3478468)).s31, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(p_1336->g_781.s99d8341c)).s5021434574500745)).s15, ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))((safe_div_func_uint16_t_u_u(l_784[1][0], (safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(p_1336->g_787.s4563ed8f)).s4, 2)))), ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(l_788.xx)), ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 8))(((*p_1336->g_155) = 0L), ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x14B7621EL, 1L)).xxyx)).lo, (int32_t)0x6E367588L, (int32_t)((((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(0xCC71E6D910906E03L, ((*l_808) ^= ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(abs(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 16))((safe_div_func_int32_t_s_s((((((((*l_804) = l_803) == l_805) ^ (*p_1336->g_107)) ^ l_788.w) , p_1336->g_806) != (void*)0), l_780.s8)), p_10, ((VECTOR(int64_t, 4))((-1L))), l_788.z, 0x40B18E991EFD23D5L, ((VECTOR(int64_t, 4))((-1L))), 0x118949B3495DCD0DL, l_780.se, 0x64F5D9705B4CA048L, 7L)), (int64_t)p_1336->g_183[0]))).sd1))))).lo), 0xF6DB870E7EA6FDBDL, 1UL)), l_809, ((VECTOR(uint64_t, 8))(0UL)), 18446744073709551615UL, 0UL, 0x0121A89F128B5E83L)).sadf1, ((VECTOR(uint64_t, 4))(4UL)), ((VECTOR(uint64_t, 4))(0x3D716E89D387F6D6L))))).x > l_780.s6) <= p_13)))), ((VECTOR(int32_t, 2))((-9L))), 0x539C1985L, 0L, 1L))))).s30))), (-1L))).lo, ((VECTOR(int32_t, 2))(0x21B31BF3L)), ((VECTOR(int32_t, 2))(0x58B168D4L))))))))).yyxyyyyxyxxyyyyy, ((VECTOR(int32_t, 16))(0x27C6A31EL))))).s9e))).xxyyxxyyyxxyyyyy)).s0) > l_802);
        }
        (*p_1336->g_839) = (((((--p_1336->g_794.f1) , l_822[7]) ^ l_780.sc) <= (((*l_836) |= (safe_rshift_func_uint16_t_u_u(((((l_814.s6 , l_828) != (void*)0) || (((VECTOR(uint64_t, 8))(((((*p_1336->g_155) = (((*l_829) = p_1336->g_389.f4) & ((VECTOR(uint64_t, 4))(18446744073709551615UL, 0x291571DACA6C548BL, 0x5E9EE8B84A309FEDL, 0x3A33442AD1979BB0L)).w)) > GROUP_DIVERGE(0, 1)) ^ ((p_1336->g_833[4] = l_830) == (void*)0)), ((VECTOR(uint64_t, 4))(0UL)), 0UL, 1UL, 0x4F9B5E1317123835L)).s0 || p_13)) >= p_10), l_780.s2))) , 65527UL)) != (**p_1336->g_635));
        (*p_1336->g_840) = &l_822[7];
        (*l_853) = func_29(l_841, (safe_add_func_int64_t_s_s((((safe_unary_minus_func_int8_t_s((safe_mul_func_int16_t_s_s((&l_802 != ((safe_mul_func_uint16_t_u_u((1UL || 0x15L), ((((safe_rshift_func_int8_t_s_s((-1L), 0)) < (p_11 , ((safe_lshift_func_uint8_t_u_s((p_11 & ((VECTOR(uint8_t, 4))(0x1AL, 0xA3L, 0x81L, 0x06L)).z), ((((void*)0 == &p_10) > (**p_1336->g_278)) ^ p_11))) | 0x2AA1L))) != p_12) , 0x29D0L))) , (void*)0)), (*p_1336->g_636))))) , p_13) || 0x4728C76FD86B1F08L), p_1336->g_183[2])), p_1336);
    }
    else
    { /* block id: 372 */
        int8_t l_865 = 0L;
        VECTOR(uint64_t, 4) l_874 = (VECTOR(uint64_t, 4))(3UL, (VECTOR(uint64_t, 2))(3UL, 0UL), 0UL);
        uint16_t ***l_921 = &p_1336->g_635;
        int8_t l_929 = 0L;
        uint16_t **l_933 = &p_1336->g_636;
        int16_t ***l_937 = &p_1336->g_201;
        uint32_t l_942 = 4294967288UL;
        int32_t l_945 = (-7L);
        int32_t l_958 = 1L;
        int32_t l_959 = 7L;
        int32_t l_960 = (-8L);
        VECTOR(int64_t, 2) l_997 = (VECTOR(int64_t, 2))(0x6CF23E92759C37C4L, 0x46780C4F70661BEDL);
        VECTOR(int64_t, 8) l_998 = (VECTOR(int64_t, 8))(0x33F133DAFCAC1C09L, (VECTOR(int64_t, 4))(0x33F133DAFCAC1C09L, (VECTOR(int64_t, 2))(0x33F133DAFCAC1C09L, 0x7A2E6492A6705FE8L), 0x7A2E6492A6705FE8L), 0x7A2E6492A6705FE8L, 0x33F133DAFCAC1C09L, 0x7A2E6492A6705FE8L);
        uint32_t *l_1040 = &p_1336->g_272;
        uint32_t **l_1039 = &l_1040;
        int32_t l_1044 = 8L;
        int32_t l_1083 = (-6L);
        int i;
        for (p_1336->g_247.f5 = 2; (p_1336->g_247.f5 <= 10); ++p_1336->g_247.f5)
        { /* block id: 375 */
            int64_t *l_857 = (void*)0;
            int64_t **l_856 = &l_857;
            int32_t *l_858 = &p_1336->g_837[1];
            int64_t ***l_861 = &p_1336->g_859;
            int32_t **l_864 = &p_1336->g_155;
            uint64_t *l_866[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            VECTOR(uint16_t, 2) l_918 = (VECTOR(uint16_t, 2))(65535UL, 0xE594L);
            VECTOR(int32_t, 2) l_954 = (VECTOR(int32_t, 2))(0x02362256L, 0x78A33838L);
            uint32_t l_961 = 0xB38A481EL;
            VECTOR(int8_t, 8) l_967 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
            VECTOR(uint32_t, 2) l_974 = (VECTOR(uint32_t, 2))(4294967295UL, 1UL);
            VECTOR(int64_t, 4) l_1001 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x1EA2BB59EEB601EAL), 0x1EA2BB59EEB601EAL);
            int8_t *l_1021 = &p_1336->g_247.f7;
            int8_t **l_1020[9] = {&l_1021,&l_1021,&l_1021,&l_1021,&l_1021,&l_1021,&l_1021,&l_1021,&l_1021};
            VECTOR(int32_t, 2) l_1023 = (VECTOR(int32_t, 2))(0x45925D2FL, 0x767BB8A1L);
            int16_t l_1046 = 1L;
            int32_t *l_1084 = &l_958;
            int32_t *l_1085 = &p_1336->g_39;
            uint8_t *l_1086 = &p_1336->g_134[0];
            int i;
            (1 + 1);
        }
    }
    for (l_896 = 25; (l_896 != 37); l_896 = safe_add_func_uint64_t_u_u(l_896, 7))
    { /* block id: 474 */
        (*l_873) = (*p_1336->g_428);
        return p_1336->g_1090;
    }
    if ((p_10 = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_1091.yxxy)), ((VECTOR(int32_t, 4))(p_1336->g_1092.yyxx)), (safe_rshift_func_uint8_t_u_u(p_11, 5)), p_12, p_10, 0x27194767L, 8L, ((VECTOR(int32_t, 2))(p_1336->g_1095.ww)), 0x49F5B4B6L)).s3))
    { /* block id: 479 */
        int16_t l_1098 = 0x5509L;
        int32_t l_1099[8] = {0x45731003L,0x45731003L,0x45731003L,0x45731003L,0x45731003L,0x45731003L,0x45731003L,0x45731003L};
        int16_t l_1100 = 0x22E1L;
        uint32_t l_1101 = 1UL;
        int i;
        l_1101--;
    }
    else
    { /* block id: 481 */
        uint32_t l_1104 = 4294967293UL;
        VECTOR(uint8_t, 16) l_1107 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x17L), 0x17L), 0x17L, 0UL, 0x17L, (VECTOR(uint8_t, 2))(0UL, 0x17L), (VECTOR(uint8_t, 2))(0UL, 0x17L), 0UL, 0x17L, 0UL, 0x17L);
        int32_t **l_1115 = &p_1336->g_155;
        int32_t ***l_1116[2][4] = {{&l_873,&l_873,&l_873,&l_873},{&l_873,&l_873,&l_873,&l_873}};
        VECTOR(int8_t, 4) l_1118 = (VECTOR(int8_t, 4))(0x67L, (VECTOR(int8_t, 2))(0x67L, (-10L)), (-10L));
        uint32_t *l_1121 = &p_1336->g_272;
        int64_t l_1127 = 0L;
        int64_t *l_1128 = &p_1336->g_289.f2;
        int16_t *l_1129[5][3][3] = {{{(void*)0,(void*)0,&p_1336->g_247.f4},{(void*)0,(void*)0,&p_1336->g_247.f4},{(void*)0,(void*)0,&p_1336->g_247.f4}},{{(void*)0,(void*)0,&p_1336->g_247.f4},{(void*)0,(void*)0,&p_1336->g_247.f4},{(void*)0,(void*)0,&p_1336->g_247.f4}},{{(void*)0,(void*)0,&p_1336->g_247.f4},{(void*)0,(void*)0,&p_1336->g_247.f4},{(void*)0,(void*)0,&p_1336->g_247.f4}},{{(void*)0,(void*)0,&p_1336->g_247.f4},{(void*)0,(void*)0,&p_1336->g_247.f4},{(void*)0,(void*)0,&p_1336->g_247.f4}},{{(void*)0,(void*)0,&p_1336->g_247.f4},{(void*)0,(void*)0,&p_1336->g_247.f4},{(void*)0,(void*)0,&p_1336->g_247.f4}}};
        int8_t *l_1131 = &p_1336->g_932.f6;
        uint8_t ***l_1136[10][1];
        VECTOR(int64_t, 8) l_1160 = (VECTOR(int64_t, 8))(0x3E3B2BFC6614A4B8L, (VECTOR(int64_t, 4))(0x3E3B2BFC6614A4B8L, (VECTOR(int64_t, 2))(0x3E3B2BFC6614A4B8L, 0x13D7D92388561A6FL), 0x13D7D92388561A6FL), 0x13D7D92388561A6FL, 0x3E3B2BFC6614A4B8L, 0x13D7D92388561A6FL);
        VECTOR(int64_t, 2) l_1172 = (VECTOR(int64_t, 2))(0x2F68DC7A7F5168A7L, 0x325C3D544104B493L);
        VECTOR(uint32_t, 4) l_1177 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0UL), 0UL);
        VECTOR(uint32_t, 4) l_1179 = (VECTOR(uint32_t, 4))(0x7E3CC703L, (VECTOR(uint32_t, 2))(0x7E3CC703L, 0x0B4CCB68L), 0x0B4CCB68L);
        uint8_t l_1202 = 0xB1L;
        VECTOR(int16_t, 4) l_1226 = (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0x06C9L), 0x06C9L);
        int i, j, k;
        for (i = 0; i < 10; i++)
        {
            for (j = 0; j < 1; j++)
                l_1136[i][j] = &p_1336->g_596;
        }
        ++l_1104;
        if ((((VECTOR(uint8_t, 2))(l_1107.s52)).hi != ((*l_1131) = (safe_div_func_int16_t_s_s(((safe_lshift_func_int16_t_s_s((*p_1336->g_107), (l_1130.y |= ((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(0xDC03L, ((VECTOR(uint16_t, 2))(l_1112.se7)).odd, (safe_mul_func_uint16_t_u_u((p_13 == ((((*l_1128) &= ((((l_1115 == (p_1336->g_1117 = &l_1097[1][0][1])) , ((*l_1121) = (((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 2))(l_1118.zw)).xyxyyyxx))).s63)).odd != (safe_lshift_func_int8_t_s_u((0x5A33281D9864B878L > (**p_1336->g_859)), 0))))) == (safe_sub_func_uint32_t_u_u(p_1336->g_329.y, (l_1124 ^ ((safe_mul_func_uint8_t_u_u(l_1127, 0x69L)) , (**p_1336->g_442)))))) || 1L)) || p_1336->g_5) != p_12)), 2UL)), ((VECTOR(uint16_t, 8))(65535UL)), ((VECTOR(uint16_t, 2))(0x7704L)), 1UL, 0xD907L, 0UL)))).sa , p_1336->g_938[0][7][6].f4) , 0x3B61L)))) | p_11), 65531UL)))))
        { /* block id: 488 */
            uint32_t l_1141 = 0xA9A5CC3CL;
            int16_t l_1142 = 0x4EF2L;
            uint32_t *l_1143 = &p_1336->g_272;
            int32_t *l_1144[4];
            VECTOR(int64_t, 2) l_1162 = (VECTOR(int64_t, 2))((-1L), 0x054D0FF59CBF516EL);
            VECTOR(uint8_t, 16) l_1164 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0UL), 0UL), 0UL, 255UL, 0UL, (VECTOR(uint8_t, 2))(255UL, 0UL), (VECTOR(uint8_t, 2))(255UL, 0UL), 255UL, 0UL, 255UL, 0UL);
            int i;
            for (i = 0; i < 4; i++)
                l_1144[i] = (void*)0;
            l_1142 ^= (safe_mul_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(0x8A16L, ((((l_1136[2][0] != (void*)0) >= ((p_1336->g_1137 != p_1336->g_1139) > (!((p_1336->g_406.s8 >= p_13) != (~(((((p_12 | (~l_1141)) , (-6L)) , p_13) < p_11) & p_11)))))) , (-1L)) < 0x7AL))), p_13));
            if ((p_10 = ((*p_1336->g_860) | (l_1143 != l_1143))))
            { /* block id: 491 */
                VECTOR(int64_t, 2) l_1163 = (VECTOR(int64_t, 2))(0L, 1L);
                VECTOR(uint8_t, 2) l_1165 = (VECTOR(uint8_t, 2))(0x01L, 0x5DL);
                int32_t l_1166 = 6L;
                VECTOR(int64_t, 4) l_1169 = (VECTOR(int64_t, 4))((-3L), (VECTOR(int64_t, 2))((-3L), 4L), 4L);
                uint16_t l_1183[9][4][1] = {{{0x7CECL},{0x7CECL},{0x7CECL},{0x7CECL}},{{0x7CECL},{0x7CECL},{0x7CECL},{0x7CECL}},{{0x7CECL},{0x7CECL},{0x7CECL},{0x7CECL}},{{0x7CECL},{0x7CECL},{0x7CECL},{0x7CECL}},{{0x7CECL},{0x7CECL},{0x7CECL},{0x7CECL}},{{0x7CECL},{0x7CECL},{0x7CECL},{0x7CECL}},{{0x7CECL},{0x7CECL},{0x7CECL},{0x7CECL}},{{0x7CECL},{0x7CECL},{0x7CECL},{0x7CECL}},{{0x7CECL},{0x7CECL},{0x7CECL},{0x7CECL}}};
                int32_t l_1184 = 8L;
                int i, j, k;
                l_1144[2] = &p_10;
                l_1184 &= (safe_sub_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_sub_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u(3UL, ((safe_rshift_func_uint8_t_u_u((safe_unary_minus_func_int64_t_s(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 8))(((*p_1336->g_860) &= (safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x5522L, 0x1DA6L)).yyxy)))).ywyxxxzx)).s2, 7))), ((VECTOR(int64_t, 2))(l_1158.yw)), 0x6D6E3F237D1A536BL, ((VECTOR(int64_t, 4))(p_1336->g_1159.yzyy))))))).s3532434701126413)), (int64_t)1L))).s3bbc, ((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 8))(l_1160.s57703007)).s26, ((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 4))(p_1336->g_1161.s3015)), ((VECTOR(int64_t, 4))(l_1162.yxyy))))).lo))).xxyx, ((VECTOR(int64_t, 16))(l_1163.yxxxxxxyyxxxyxyx)).se264))), ((VECTOR(int64_t, 16))((((VECTOR(uint8_t, 2))(l_1164.s54)).even > (l_1166 |= ((VECTOR(uint8_t, 16))(l_1165.yxxxyyxxyyyxyxxy)).s0)), 0x04CDACB5BBEFEDFAL, (safe_lshift_func_int16_t_s_s(p_11, 3)), 1L, 1L, ((VECTOR(int64_t, 4))(l_1169.wyzz)), 0L, 1L, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(p_1336->g_1170.xyxyyxxy)).s25)), ((VECTOR(int64_t, 2))(0x59614E648DB78A23L, 0x08531247848E3006L)), 1L)).s3fb5, ((VECTOR(int64_t, 4))(p_1336->g_1171.s5003))))).odd, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_1172.xx)).xyyy)).odd))).hi)), (p_1336->g_517.x >= ((safe_div_func_uint8_t_u_u((((safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 4))(l_1177.zyzw)).xywzwyww, ((VECTOR(uint32_t, 4))(l_1178.s0377)).ywzxwzwz, ((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(uint32_t, 8))(l_1179.wxzzzwyw)).even, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(p_1336->g_1180.xxxz))))))).xxzyxxxw))).s7276204614606703)))).sa, (safe_rshift_func_uint8_t_u_s((p_1336->g_831.f8 | ((!(GROUP_DIVERGE(2, 1) <= p_10)) != p_11)), 6)))) & p_1336->g_398.f8) || (-1L)), (-3L))) | p_12)))) , 0x2DL))), l_1183[8][1][0])), p_12)), FAKE_DIVERGE(p_1336->global_2_offset, get_global_id(2), 10)));
                l_1166 = (safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 2))(2L, (-9L))).xxxxxxyxyyxxxxxx, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(p_1336->g_1187.s87)))), 4L, 0x0B94E96E887F9D28L)).xywzxwzz)).lo)).xyxzxzww)).s7637573640374276))).sa, p_11));
            }
            else
            { /* block id: 497 */
                (*l_873) = &p_10;
            }
        }
        else
        { /* block id: 500 */
            int32_t l_1199 = 1L;
            int32_t l_1207 = 0x1500CC8DL;
            int32_t l_1208 = 0x145293D6L;
            for (p_1336->g_794.f7 = 0; (p_1336->g_794.f7 > (-11)); p_1336->g_794.f7--)
            { /* block id: 503 */
                uint64_t l_1204[2];
                int32_t l_1205 = 0L;
                int32_t l_1206[1];
                int i;
                for (i = 0; i < 2; i++)
                    l_1204[i] = 0xC080A1E4665C06DAL;
                for (i = 0; i < 1; i++)
                    l_1206[i] = 0x1FFBFFAFL;
                for (p_1336->g_982.f4 = (-10); (p_1336->g_982.f4 <= (-15)); p_1336->g_982.f4--)
                { /* block id: 506 */
                    uint64_t l_1196 = 0x72BEF9C4480C2837L;
                    VECTOR(int64_t, 16) l_1200 = (VECTOR(int64_t, 16))(0x4720817B9AF284F9L, (VECTOR(int64_t, 4))(0x4720817B9AF284F9L, (VECTOR(int64_t, 2))(0x4720817B9AF284F9L, 2L), 2L), 2L, 0x4720817B9AF284F9L, 2L, (VECTOR(int64_t, 2))(0x4720817B9AF284F9L, 2L), (VECTOR(int64_t, 2))(0x4720817B9AF284F9L, 2L), 0x4720817B9AF284F9L, 2L, 0x4720817B9AF284F9L, 2L);
                    int16_t **l_1201 = &l_1129[3][0][0];
                    int i;
                    l_1202 ^= ((safe_mul_func_uint8_t_u_u((safe_add_func_int64_t_s_s(((**p_1336->g_442) & (~((2UL && l_1196) | ((0xD2L != (p_12 > ((l_1199 || ((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 16))(l_1200.s97d219fe5675e0fa)).lo))).s25, (int64_t)((VECTOR(int64_t, 4))((-8L), ((*p_1336->g_860) = p_11), 1L, 0x44AB4D8BE2F9E80CL)).w))).xyyyxxxx)).s5012677050216430)).se , l_1201) == ((**p_1336->g_199) = (***l_798)))) , p_13))) ^ p_12)))), p_13)), p_1336->g_831.f5)) ^ p_13);
                    if (l_1200.s5)
                        continue;
                }
                (*p_1336->g_940) = p_1336->g_1203;
                if (l_1204[1])
                    break;
                ++l_1209[3][1];
            }
            (*l_873) = (*l_873);
        }
        for (p_13 = (-25); (p_13 == 2); ++p_13)
        { /* block id: 520 */
            uint16_t l_1216 = 2UL;
            int32_t l_1217 = 0x0DFBC9D1L;
            struct S0 *l_1232 = (void*)0;
            l_1217 = (((void*)0 == l_1214) < l_1216);
            for (p_1336->g_835.f5 = 0; (p_1336->g_835.f5 > 13); ++p_1336->g_835.f5)
            { /* block id: 524 */
                uint64_t l_1244 = 0x7F6111688596286BL;
                for (p_1336->g_103.f7 = 0; (p_1336->g_103.f7 <= (-21)); p_1336->g_103.f7 = safe_sub_func_int8_t_s_s(p_1336->g_103.f7, 7))
                { /* block id: 527 */
                    uint32_t l_1224 = 0UL;
                    struct S0 *l_1233 = &p_1336->g_1234;
                    uint64_t *l_1243[8] = {&l_896,&l_896,&l_896,&l_896,&l_896,&l_896,&l_896,&l_896};
                    int i;
                    l_1244 = (((**p_1336->g_635) = (safe_rshift_func_uint16_t_u_u(l_1224, ((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(p_1336->g_1225.yyxz)))).w < ((((VECTOR(int16_t, 8))(l_1226.zywyzwwx)).s1 & (safe_mul_func_int8_t_s_s((((((VECTOR(uint32_t, 4))(p_1336->g_1229.s7670)).x , (7UL > (p_1336->g_110.y = ((GROUP_DIVERGE(1, 1) <= (safe_mul_func_int32_t_s_s(((VECTOR(int32_t, 2))(0x326F23C7L, 0x19F98EB3L)).hi, ((*l_1121) = ((l_1232 != (p_1336->g_833[4] = l_1233)) > (((*p_1336->g_107) = p_10) , FAKE_DIVERGE(p_1336->global_0_offset, get_global_id(0), 10))))))) < (safe_mul_func_int8_t_s_s((safe_add_func_uint16_t_u_u(p_11, (safe_sub_func_int32_t_s_s(p_10, ((0xA7L == (safe_rshift_func_int8_t_s_u((((p_11 , p_13) , &l_1115) != (void*)0), 4))) && (*p_1336->g_636)))))), 1UL)))))) < p_11) , p_1336->g_794.f6), p_12))) ^ p_12)) < p_12)))) >= p_12);
                }
                if (p_12)
                    break;
                for (p_1336->g_398.f2 = 0; (p_1336->g_398.f2 <= 12); ++p_1336->g_398.f2)
                { /* block id: 538 */
                    if (p_11)
                        break;
                }
            }
        }
    }
    return p_1336->g_1247;
}


/* ------------------------------------------ */
/* 
 * reads : p_1336->g_39 p_1336->g_42 p_1336->g_155 p_1336->g_119 p_1336->g_589 p_1336->g_134 p_1336->g_595 p_1336->g_596 p_1336->g_185 p_1336->g_103.f1 p_1336->g_432 p_1336->g_431 p_1336->g_646 p_1336->g_333 p_1336->g_657 p_1336->g_658 p_1336->g_442 p_1336->g_443 p_1336->g_428 p_1336->g_515 p_1336->g_684 p_1336->g_685 p_1336->g_272 p_1336->g_689 p_1336->g_329 p_1336->g_302 p_1336->g_174 p_1336->g_636 p_1336->g_289.f5 p_1336->g_331 p_1336->g_487 p_1336->g_107 p_1336->g_773
 * writes: p_1336->g_39 p_1336->g_42 p_1336->g_119 p_1336->g_134 p_1336->g_596 p_1336->g_103.f1 p_1336->g_272 p_1336->g_155 p_1336->g_49 p_1336->g_174 p_1336->g_689 p_1336->g_398.f6 p_1336->g_103.f4 p_1336->g_774
 */
int32_t * func_29(int16_t * p_30, uint32_t  p_31, struct S1 * p_1336)
{ /* block id: 20 */
    int16_t *l_35 = (void*)0;
    int32_t *l_36[5][8] = {{&p_1336->g_6,&p_1336->g_2[0],&p_1336->g_6,&p_1336->g_2[1],&p_1336->g_6,&p_1336->g_2[0],&p_1336->g_6,&p_1336->g_2[1]},{&p_1336->g_6,&p_1336->g_2[0],&p_1336->g_6,&p_1336->g_2[1],&p_1336->g_6,&p_1336->g_2[0],&p_1336->g_6,&p_1336->g_2[1]},{&p_1336->g_6,&p_1336->g_2[0],&p_1336->g_6,&p_1336->g_2[1],&p_1336->g_6,&p_1336->g_2[0],&p_1336->g_6,&p_1336->g_2[1]},{&p_1336->g_6,&p_1336->g_2[0],&p_1336->g_6,&p_1336->g_2[1],&p_1336->g_6,&p_1336->g_2[0],&p_1336->g_6,&p_1336->g_2[1]},{&p_1336->g_6,&p_1336->g_2[0],&p_1336->g_6,&p_1336->g_2[1],&p_1336->g_6,&p_1336->g_2[0],&p_1336->g_6,&p_1336->g_2[1]}};
    VECTOR(int32_t, 2) l_62 = (VECTOR(int32_t, 2))(1L, 0x73742C04L);
    int64_t *l_75 = &p_1336->g_49;
    VECTOR(uint8_t, 8) l_594 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0UL), 0UL), 0UL, 255UL, 0UL);
    uint32_t l_629 = 1UL;
    uint16_t **l_683 = (void*)0;
    uint32_t *l_686 = &p_1336->g_272;
    VECTOR(uint32_t, 2) l_687 = (VECTOR(uint32_t, 2))(0x1592004AL, 4294967288UL);
    VECTOR(uint32_t, 8) l_688 = (VECTOR(uint32_t, 8))(0x9C4F7040L, (VECTOR(uint32_t, 4))(0x9C4F7040L, (VECTOR(uint32_t, 2))(0x9C4F7040L, 0x5C11AEC9L), 0x5C11AEC9L), 0x5C11AEC9L, 0x9C4F7040L, 0x5C11AEC9L);
    int64_t l_712 = (-4L);
    uint64_t l_719 = 1UL;
    struct S0 *l_746 = (void*)0;
    int32_t **l_772 = &p_1336->g_155;
    int i, j;
    if ((0x1A040D4F6636227FL ^ ((void*)0 != l_35)))
    { /* block id: 21 */
        return l_36[0][4];
    }
    else
    { /* block id: 23 */
        uint32_t l_45 = 4294967291UL;
        VECTOR(uint32_t, 16) l_53 = (VECTOR(uint32_t, 16))(0xFB341928L, (VECTOR(uint32_t, 4))(0xFB341928L, (VECTOR(uint32_t, 2))(0xFB341928L, 7UL), 7UL), 7UL, 0xFB341928L, 7UL, (VECTOR(uint32_t, 2))(0xFB341928L, 7UL), (VECTOR(uint32_t, 2))(0xFB341928L, 7UL), 0xFB341928L, 7UL, 0xFB341928L, 7UL);
        int32_t *l_584 = (void*)0;
        uint8_t *l_590 = (void*)0;
        uint8_t *l_591 = &p_1336->g_134[1];
        uint8_t ***l_598 = &p_1336->g_596;
        uint8_t **l_599 = &l_591;
        int32_t l_616 = 0x754FEC51L;
        uint8_t l_642 = 0x01L;
        uint8_t l_647 = 0x0BL;
        int32_t l_652 = 7L;
        int32_t l_673 = 0x755D09CFL;
        int32_t l_674 = 1L;
        VECTOR(int32_t, 4) l_675 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-6L)), (-6L));
        uint32_t l_676 = 0xBF9EE03EL;
        int i;
lbl_600:
        for (p_31 = 0; (p_31 > 47); p_31 = safe_add_func_int16_t_s_s(p_31, 1))
        { /* block id: 26 */
            VECTOR(int64_t, 16) l_51 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x3BE979E0FDA63E17L), 0x3BE979E0FDA63E17L), 0x3BE979E0FDA63E17L, (-1L), 0x3BE979E0FDA63E17L, (VECTOR(int64_t, 2))((-1L), 0x3BE979E0FDA63E17L), (VECTOR(int64_t, 2))((-1L), 0x3BE979E0FDA63E17L), (-1L), 0x3BE979E0FDA63E17L, (-1L), 0x3BE979E0FDA63E17L);
            VECTOR(int32_t, 8) l_52 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x63347297L), 0x63347297L), 0x63347297L, 1L, 0x63347297L);
            int32_t *l_583 = &p_1336->g_2[1];
            uint8_t *l_585 = (void*)0;
            uint8_t **l_586 = &l_585;
            int i;
            for (p_1336->g_39 = 0; (p_1336->g_39 <= 20); p_1336->g_39 = safe_add_func_uint16_t_u_u(p_1336->g_39, 3))
            { /* block id: 29 */
                uint32_t l_50 = 0xA8980DF3L;
                VECTOR(uint32_t, 4) l_54 = (VECTOR(uint32_t, 4))(0xB50BB117L, (VECTOR(uint32_t, 2))(0xB50BB117L, 0xF6EAEA54L), 0xF6EAEA54L);
                VECTOR(int64_t, 16) l_64 = (VECTOR(int64_t, 16))(0x6C887C424A886803L, (VECTOR(int64_t, 4))(0x6C887C424A886803L, (VECTOR(int64_t, 2))(0x6C887C424A886803L, 5L), 5L), 5L, 0x6C887C424A886803L, 5L, (VECTOR(int64_t, 2))(0x6C887C424A886803L, 5L), (VECTOR(int64_t, 2))(0x6C887C424A886803L, 5L), 0x6C887C424A886803L, 5L, 0x6C887C424A886803L, 5L);
                int64_t *l_421[5][7] = {{&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2},{&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2},{&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2},{&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2},{&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2,&p_1336->g_289.f2}};
                int32_t l_582[1][8];
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 8; j++)
                        l_582[i][j] = 0x337D873EL;
                }
                for (p_1336->g_42 = 0; (p_1336->g_42 >= (-23)); --p_1336->g_42)
                { /* block id: 32 */
                    int64_t *l_48[1][6][8] = {{{&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49},{&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49},{&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49},{&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49},{&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49},{&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49,&p_1336->g_49}}};
                    int32_t l_575 = 0L;
                    int8_t *l_576 = (void*)0;
                    int8_t *l_577 = &p_1336->g_578;
                    int32_t l_579 = 0x0003915EL;
                    int i, j, k;
                    l_45 &= p_31;
                    l_579 ^= ((VECTOR(int32_t, 16))(0x72B4D3A6L, (safe_mul_func_uint8_t_u_u(p_1336->g_2[0], ((l_50 = p_31) > l_51.s6))), 0x4C831745L, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_52.s0174114104506530)))).hi)), (l_575 = (p_1336->g_2[0] < ((*l_577) |= ((((VECTOR(uint32_t, 4))(hadd(((VECTOR(uint32_t, 4))(l_53.sf119)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_54.xz)), 0x8D17825FL, (&p_1336->g_49 == ((func_55(((((VECTOR(int32_t, 16))(l_62.xyxyyxyxxxyyyxxy)).s7 > ((VECTOR(int32_t, 2))(0x6C24A879L, 1L)).odd) > (((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(0x6B09A55A05D9C67FL, ((VECTOR(int64_t, 2))(p_1336->g_63.zz)), ((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 8))(l_64.sde86d361)).hi, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 4))((func_65(func_71(l_75, (p_31 ^ l_54.z), p_31, p_1336), p_31, p_31, p_1336->g_373.sf, l_421[1][3], p_1336) , p_31), l_51.s6, 0x14B8399A6D7AEC42L, 0x5185C7D2E0153AEFL)), ((VECTOR(int64_t, 4))(0x5A5B723096BC149DL)), ((VECTOR(int64_t, 4))((-10L)))))).zxzwywzy)).even, ((VECTOR(int64_t, 4))((-8L)))))), ((VECTOR(int64_t, 2))(2L)), ((VECTOR(int64_t, 2))(0x4EA932A28C47F756L)), ((VECTOR(int64_t, 2))(1L)), 0x65141F21F7FEBE89L, (-1L), 0x1A03A310E5929F89L)).s9ccd)).w != p_1336->g_327.w) != p_1336->g_289.f2) != p_31)), l_51.sb, p_1336->g_398.f4, &p_1336->g_34, p_1336) , l_53.s0) , &p_1336->g_174)), 1UL, 0x52D175AFL, 1UL, 0xFEB08FD8L)).hi))).w , l_575) < p_1336->g_289.f5)))), 0x1F0D04CBL, ((VECTOR(int32_t, 2))(0x2EB7A430L)), 0x4E46A56CL)).s5;
                }
                if ((safe_add_func_uint16_t_u_u(0UL, (l_582[0][7] = (0x43L & ((VECTOR(int8_t, 4))(0L, (l_36[0][2] == l_36[4][1]), 0x2EL, 6L)).z)))))
                { /* block id: 237 */
                    return l_583;
                }
                else
                { /* block id: 239 */
                    return l_584;
                }
            }
            (*p_1336->g_155) |= (((*l_586) = l_585) == &p_1336->g_134[1]);
            if (l_53.s8)
                continue;
        }
        if ((safe_mul_func_uint8_t_u_u((0x3E81C21BL != (p_1336->g_589 , (1UL & ((*l_591)--)))), ((p_31 , (((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 2))(l_594.s13)).yxyxxxxy, ((VECTOR(uint8_t, 16))(p_1336->g_595.wyzyzwzzwzyzyywx)).lo))).s6 | 0x00L)) || (((*l_598) = p_1336->g_596) == l_599)))))
        { /* block id: 249 */
            p_1336->g_39 &= ((*p_1336->g_185) || p_31);
        }
        else
        { /* block id: 251 */
            if (p_1336->g_589)
                goto lbl_600;
        }
        for (p_1336->g_103.f1 = 5; (p_1336->g_103.f1 > 60); p_1336->g_103.f1++)
        { /* block id: 256 */
            int32_t l_632 = 1L;
            uint16_t **l_639 = &p_1336->g_636;
            VECTOR(int8_t, 8) l_672 = (VECTOR(int8_t, 8))(0x06L, (VECTOR(int8_t, 4))(0x06L, (VECTOR(int8_t, 2))(0x06L, 0x04L), 0x04L), 0x04L, 0x06L, 0x04L);
            int i;
            for (p_1336->g_272 = (-27); (p_1336->g_272 > 17); p_1336->g_272++)
            { /* block id: 259 */
                VECTOR(uint32_t, 2) l_607 = (VECTOR(uint32_t, 2))(0xD0F45AA9L, 4294967295UL);
                uint64_t *l_610 = (void*)0;
                uint64_t *l_611 = (void*)0;
                uint64_t *l_612 = (void*)0;
                uint64_t *l_613 = (void*)0;
                uint64_t *l_614 = (void*)0;
                uint64_t *l_615 = (void*)0;
                uint64_t *l_625 = (void*)0;
                uint64_t *l_626 = (void*)0;
                uint16_t ***l_637 = (void*)0;
                uint16_t **l_638 = &p_1336->g_636;
                int32_t l_643 = 0x663AD350L;
                int i;
                p_1336->g_42 &= (((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(1L, ((safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(l_607.yxyx)).lo)), 0x3E879E32L, 0x3D1DB68BL)).x != ((safe_div_func_uint64_t_u_u((l_616 = FAKE_DIVERGE(p_1336->group_0_offset, get_group_id(0), 10)), ((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), ((((safe_rshift_func_int16_t_s_s((safe_sub_func_uint8_t_u_u(((safe_mod_func_int32_t_s_s((FAKE_DIVERGE(p_1336->local_2_offset, get_local_id(2), 10) & (p_1336->g_110.x = p_1336->g_487.y)), ((*p_1336->g_155) = ((safe_div_func_uint32_t_u_u((((l_629 , GROUP_DIVERGE(2, 1)) , ((safe_mul_func_int16_t_s_s(0x1E73L, l_632)) >= ((safe_rshift_func_uint16_t_u_s(65533UL, (p_31 & ((l_638 = p_1336->g_635) != l_639)))) , ((**l_638) |= (~(safe_mod_func_int32_t_s_s(((*p_1336->g_107) == l_607.y), l_642))))))) < l_607.y), 0x3E8157B8L)) , 0x5308DE58L)))) > (*p_1336->g_443)), p_31)), p_31)) == p_1336->g_183[0]) >= 0x16057AEAL) & p_1336->g_2[0]))) , p_1336->g_304.y))) >= 0x392FL)), 1L, ((VECTOR(int16_t, 4))(5L)), (-3L), (-7L))).s4156674034633676)).s1, l_607.y)) , 0x79L), p_31, p_1336->g_289.f8, 0x4AL, p_1336->g_331.y, 0L, (-1L))), p_31, ((VECTOR(int8_t, 4))((-5L))), 2L, 0x1AL, 1L)).s4 && l_643);
            }
            if (p_31)
                break;
            for (p_1336->g_119 = 0; (p_1336->g_119 < 5); ++p_1336->g_119)
            { /* block id: 270 */
                int16_t l_664 = (-1L);
                int32_t l_665[3][3][3] = {{{(-2L),0x0EEE69B9L,0x52D75705L},{(-2L),0x0EEE69B9L,0x52D75705L},{(-2L),0x0EEE69B9L,0x52D75705L}},{{(-2L),0x0EEE69B9L,0x52D75705L},{(-2L),0x0EEE69B9L,0x52D75705L},{(-2L),0x0EEE69B9L,0x52D75705L}},{{(-2L),0x0EEE69B9L,0x52D75705L},{(-2L),0x0EEE69B9L,0x52D75705L},{(-2L),0x0EEE69B9L,0x52D75705L}}};
                int i, j, k;
                (*p_1336->g_646) = ((*p_1336->g_432) , &l_616);
                --l_647;
                for (l_647 = 0; (l_647 < 49); l_647 = safe_add_func_uint64_t_u_u(l_647, 9))
                { /* block id: 275 */
                    uint32_t l_653[2][10] = {{0x7835B703L,0x6E1A3F61L,0x6E1A3F61L,0x7835B703L,0x7835B703L,0x6E1A3F61L,0x6E1A3F61L,0x7835B703L,0x7835B703L,0x6E1A3F61L},{0x7835B703L,0x6E1A3F61L,0x6E1A3F61L,0x7835B703L,0x7835B703L,0x6E1A3F61L,0x6E1A3F61L,0x7835B703L,0x7835B703L,0x6E1A3F61L}};
                    int32_t **l_656 = (void*)0;
                    int i, j;
                    l_653[1][5]++;
                    (*p_1336->g_657) = (*p_1336->g_333);
                    (*p_1336->g_658) = l_36[0][4];
                }
                if (((*p_1336->g_442) != p_30))
                { /* block id: 280 */
                    uint64_t l_666 = 0x18CA361EB59189AAL;
                    if ((p_31 < (safe_mod_func_int32_t_s_s(((((*l_75) = ((void*)0 != &p_1336->g_199)) && p_31) > p_31), 0xC93C3B18L))))
                    { /* block id: 282 */
                        int32_t **l_661 = &l_584;
                        (*l_661) = (*p_1336->g_428);
                    }
                    else
                    { /* block id: 284 */
                        int32_t **l_663 = &p_1336->g_155;
                        (*l_663) = (*p_1336->g_428);
                    }
                    ++l_666;
                }
                else
                { /* block id: 288 */
                    for (p_1336->g_174 = (-21); (p_1336->g_174 < 25); p_1336->g_174 = safe_add_func_uint16_t_u_u(p_1336->g_174, 1))
                    { /* block id: 291 */
                        l_616 = (0xE003L || (((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))(p_1336->g_671.xw)).xxxxyxxy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(0L, ((VECTOR(int8_t, 2))(l_672.s26)), (-1L))).yyzwxywy))))).s2 & ((void*)0 == &p_1336->g_323[2][1])));
                        (*p_1336->g_428) = l_36[0][4];
                        if (l_665[0][0][2])
                            continue;
                    }
                    if (p_31)
                        continue;
                    return l_36[0][4];
                }
            }
        }
        l_676++;
    }
    if ((safe_div_func_uint32_t_u_u(((safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1336->global_0_offset, get_global_id(0), 10), 1)) ^ (((l_683 = &p_1336->g_636) == &p_1336->g_636) == ((VECTOR(uint32_t, 4))(max(((VECTOR(uint32_t, 8))(p_1336->g_515.y, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(1UL, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(0UL, 4294967290UL, ((VECTOR(uint32_t, 2))(p_1336->g_684.yy)), 2UL, (p_31 == (p_1336->g_685 , ((*l_686) &= p_31))), 1UL, 4294967287UL)))).s54, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_687.xx)), 0x9C867955L, 0x5FD0D70CL)).even))), 4294967288UL, 0UL)), 0x1F3A62F0L, 0UL, 0x549C4AAAL)))).s47)), 1UL, ((VECTOR(uint32_t, 2))(0x07097A37L, 1UL)), 4294967295UL, 0x14FEEEC6L)).odd, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(l_688.s7123170710157662)).s8d2b))))).x)), p_31)))
    { /* block id: 305 */
        return l_36[1][6];
    }
    else
    { /* block id: 307 */
        VECTOR(int8_t, 4) l_715 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x7EL), 0x7EL);
        int64_t l_718 = 1L;
        int8_t *l_720 = &p_1336->g_398.f6;
        int32_t **l_721 = &l_36[4][2];
        int32_t l_722 = (-8L);
        uint32_t l_769 = 4294967295UL;
        int16_t *****l_770 = &p_1336->g_199;
        int i;
        p_1336->g_689 = p_1336->g_689;
        if ((l_722 = (safe_rshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_u((safe_add_func_int16_t_s_s((safe_add_func_uint32_t_u_u(((safe_mul_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u((p_31 == (((((*l_721) = ((safe_rshift_func_int8_t_s_s((safe_add_func_int32_t_s_s((((*l_720) = ((safe_add_func_uint32_t_u_u(p_31, (*p_1336->g_185))) & (safe_sub_func_uint64_t_u_u(((+(safe_div_func_int16_t_s_s(((p_31 ^ (((l_712 = (-5L)) , (((((void*)0 != &p_1336->g_420) >= (safe_add_func_uint16_t_u_u((9UL != ((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 8))(((((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 8))(1L, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(0x34L, 0x3CL, ((VECTOR(int8_t, 2))(l_715.yz)), (safe_lshift_func_uint8_t_u_s((+((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(253UL, ((VECTOR(uint8_t, 4))(0xA5L, l_715.y, 251UL, 0UL)), 0x0FL, 0x72L, 0xDDL)).s25)))), ((VECTOR(uint8_t, 2))(0x9AL))))).lo), l_715.w)), ((VECTOR(int8_t, 2))(0x62L)), ((VECTOR(int8_t, 2))((-1L))), p_1336->g_329.z, ((VECTOR(int8_t, 2))((-4L))), 1L, ((VECTOR(int8_t, 2))(5L)), (-3L))).s816c)), 0x12L, 0L, 0x6AL)), ((VECTOR(int8_t, 8))(0x47L))))).s23, ((VECTOR(int8_t, 2))(0x7BL))))).odd <= l_718) | l_719), ((VECTOR(int64_t, 4))(0x6259813F4EAA9A1AL)), 0x3C98B44399A01EF3L, 1L, (-1L))), ((VECTOR(int64_t, 8))(0x18D8337E33C218EBL))))).s2), p_31))) & 0x72L) | 0x1FD785D3L)) | FAKE_DIVERGE(p_1336->group_2_offset, get_group_id(2), 10))) || p_31), p_31))) != (-1L)), p_31)))) && p_31), 0x3B6A4FB2L)), p_1336->g_302.s0)) , (void*)0)) != l_686) <= p_31) , 0x51L)), l_719)), p_31)) > 0x63CD7545F4789AC4L), 4294967295UL)), 0xA6A8L)), 7)), 11))))
        { /* block id: 313 */
            int32_t *l_723 = &p_1336->g_42;
            return l_723;
        }
        else
        { /* block id: 315 */
            VECTOR(uint8_t, 16) l_739 = (VECTOR(uint8_t, 16))(0x42L, (VECTOR(uint8_t, 4))(0x42L, (VECTOR(uint8_t, 2))(0x42L, 249UL), 249UL), 249UL, 0x42L, 249UL, (VECTOR(uint8_t, 2))(0x42L, 249UL), (VECTOR(uint8_t, 2))(0x42L, 249UL), 0x42L, 249UL, 0x42L, 249UL);
            int16_t *****l_747 = (void*)0;
            int32_t *l_771 = &l_722;
            int i;
            for (p_1336->g_174 = 17; (p_1336->g_174 <= (-4)); p_1336->g_174 = safe_sub_func_uint16_t_u_u(p_1336->g_174, 9))
            { /* block id: 318 */
                uint64_t l_742 = 0xA4F007241C47BBA6L;
                int32_t l_743 = 0x16FC3428L;
                uint8_t ***l_766 = &p_1336->g_596;
                for (p_1336->g_39 = (-17); (p_1336->g_39 != (-1)); ++p_1336->g_39)
                { /* block id: 321 */
                    struct S0 *l_745 = &p_1336->g_247;
                    struct S0 **l_744[10] = {&l_745,&l_745,&l_745,&l_745,&l_745,&l_745,&l_745,&l_745,&l_745,&l_745};
                    VECTOR(int64_t, 4) l_750 = (VECTOR(int64_t, 4))(0x71939574BE064C58L, (VECTOR(int64_t, 2))(0x71939574BE064C58L, 1L), 1L);
                    uint8_t *l_753 = (void*)0;
                    uint8_t *l_754 = (void*)0;
                    uint8_t *l_755 = (void*)0;
                    uint8_t *l_756 = (void*)0;
                    uint8_t *l_757 = &p_1336->g_134[0];
                    uint8_t ****l_767 = (void*)0;
                    uint8_t ***l_768[10][8] = {{&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596},{&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596},{&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596},{&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596},{&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596},{&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596},{&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596},{&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596},{&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596},{&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596,&p_1336->g_596}};
                    int i, j;
                    for (l_629 = 11; (l_629 >= 56); ++l_629)
                    { /* block id: 324 */
                        int8_t l_734 = 0x4DL;
                        uint8_t *l_740 = (void*)0;
                        uint8_t *l_741 = (void*)0;
                        l_743 |= (((safe_mul_func_uint8_t_u_u(p_31, p_31)) <= (safe_rshift_func_uint16_t_u_u((*p_1336->g_636), p_31))) ^ (l_734 && (safe_div_func_uint32_t_u_u(p_1336->g_331.w, (safe_div_func_int8_t_s_s(l_734, (l_742 = ((VECTOR(uint8_t, 16))(l_739.se05449ce58b0ae30)).se)))))));
                    }
                    l_746 = &p_1336->g_289;
                    p_1336->g_42 ^= (l_747 != (((0x3C62DFC6D8D88982L >= p_1336->g_487.x) | (safe_add_func_int16_t_s_s((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(0x69B02A014165CD61L, 0x78CCFDA6D9A635DFL, ((VECTOR(int64_t, 2))(l_750.ww)), 0x4CD4B6BC8E28F703L, (safe_add_func_uint16_t_u_u((((*l_757) &= p_31) == (((safe_lshift_func_uint8_t_u_u((1UL || (safe_div_func_int8_t_s_s((&p_1336->g_596 == (l_768[4][6] = ((safe_add_func_int16_t_s_s(((*p_1336->g_107) = (safe_lshift_func_uint8_t_u_u((l_743 ^= ((((*p_1336->g_443) <= 1UL) && 1UL) , GROUP_DIVERGE(2, 1))), 2))), 0UL)) , l_766))), (-4L)))), 3)) || l_743) <= l_739.s8)), 65535UL)), 7L, l_769, ((VECTOR(int64_t, 2))((-1L))), 0x2785E600585F92BBL, ((VECTOR(int64_t, 4))(0x52B43A4559D86561L)), 0x4D40EB13140C4816L)).s57c4)).z | l_750.z), p_31))) , l_770));
                }
                return l_36[0][4];
            }
        }
    }
    (*p_1336->g_773) = (GROUP_DIVERGE(1, 1) , ((*l_772) = l_36[0][4]));
    return (*l_772);
}


/* ------------------------------------------ */
/* 
 * reads : p_1336->g_541 p_1336->g_272 p_1336->g_39 p_1336->g_328 p_1336->g_373 p_1336->g_120 p_1336->g_103.f5
 * writes: p_1336->g_272 p_1336->g_120
 */
uint32_t  func_55(int32_t  p_56, int16_t  p_57, uint64_t  p_58, int16_t ** p_59, struct S1 * p_1336)
{ /* block id: 227 */
    int32_t l_538 = 0x641DDA2CL;
    VECTOR(int16_t, 8) l_539 = (VECTOR(int16_t, 8))(0x31CBL, (VECTOR(int16_t, 4))(0x31CBL, (VECTOR(int16_t, 2))(0x31CBL, 0x1616L), 0x1616L), 0x1616L, 0x31CBL, 0x1616L);
    VECTOR(int32_t, 16) l_540 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x5837F4BCL), 0x5837F4BCL), 0x5837F4BCL, 1L, 0x5837F4BCL, (VECTOR(int32_t, 2))(1L, 0x5837F4BCL), (VECTOR(int32_t, 2))(1L, 0x5837F4BCL), 1L, 0x5837F4BCL, 1L, 0x5837F4BCL);
    VECTOR(uint32_t, 16) l_542 = (VECTOR(uint32_t, 16))(0x5B1FB189L, (VECTOR(uint32_t, 4))(0x5B1FB189L, (VECTOR(uint32_t, 2))(0x5B1FB189L, 1UL), 1UL), 1UL, 0x5B1FB189L, 1UL, (VECTOR(uint32_t, 2))(0x5B1FB189L, 1UL), (VECTOR(uint32_t, 2))(0x5B1FB189L, 1UL), 0x5B1FB189L, 1UL, 0x5B1FB189L, 1UL);
    VECTOR(uint16_t, 2) l_551 = (VECTOR(uint16_t, 2))(0x05BFL, 0UL);
    VECTOR(int16_t, 8) l_552 = (VECTOR(int16_t, 8))(0x0353L, (VECTOR(int16_t, 4))(0x0353L, (VECTOR(int16_t, 2))(0x0353L, (-9L)), (-9L)), (-9L), 0x0353L, (-9L));
    VECTOR(int16_t, 2) l_553 = (VECTOR(int16_t, 2))(0L, 1L);
    int32_t l_556[7][7][4] = {{{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L}},{{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L}},{{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L}},{{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L}},{{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L}},{{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L}},{{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L},{(-6L),0x1355AD44L,(-6L),0x62D34E30L}}};
    uint32_t *l_557 = &p_1336->g_272;
    VECTOR(uint8_t, 8) l_566 = (VECTOR(uint8_t, 8))(0xBAL, (VECTOR(uint8_t, 4))(0xBAL, (VECTOR(uint8_t, 2))(0xBAL, 0xE8L), 0xE8L), 0xE8L, 0xBAL, 0xE8L);
    int8_t l_573 = (-10L);
    int32_t *l_574[5][1][10] = {{{&l_538,&p_1336->g_6,&l_538,&l_538,&p_1336->g_6,&l_538,&l_538,&p_1336->g_6,&l_538,&l_538}},{{&l_538,&p_1336->g_6,&l_538,&l_538,&p_1336->g_6,&l_538,&l_538,&p_1336->g_6,&l_538,&l_538}},{{&l_538,&p_1336->g_6,&l_538,&l_538,&p_1336->g_6,&l_538,&l_538,&p_1336->g_6,&l_538,&l_538}},{{&l_538,&p_1336->g_6,&l_538,&l_538,&p_1336->g_6,&l_538,&l_538,&p_1336->g_6,&l_538,&l_538}},{{&l_538,&p_1336->g_6,&l_538,&l_538,&p_1336->g_6,&l_538,&l_538,&p_1336->g_6,&l_538,&l_538}}};
    int i, j, k;
    p_1336->g_120.s0 &= ((((((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))((((safe_mod_func_uint8_t_u_u(((l_538 | 0x6D036522L) == ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(l_539.s23)).xxxxyyxy)).s0), 0x3CL)) < ((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 4))(l_540.s9070)), ((VECTOR(uint32_t, 2))(hadd(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 16))(p_1336->g_541.saaf7181825c2d138)).s1c, ((VECTOR(uint32_t, 4))(l_542.s0e28)).odd))).xyyyyyyxxyyyyxxy)).sa6, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(0x3F396E55L, ((VECTOR(uint32_t, 4))((safe_mod_func_int32_t_s_s(p_56, (((VECTOR(int16_t, 2))((-1L), 0x68A8L)).even && (safe_mul_func_uint16_t_u_u(65535UL, (safe_mul_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(l_551.xyyy)), 3UL, ((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(abs_diff(((VECTOR(int16_t, 8))(0x617AL, 0x487EL, 0L, 8L, ((VECTOR(int16_t, 4))(l_552.s0733)))).s7400741222321262, ((VECTOR(int16_t, 8))(l_553.yxyxyxyx)).s5476534215470266))))).sbe))), 0UL)).s6, (safe_sub_func_uint32_t_u_u((++(*l_557)), (safe_add_func_int16_t_s_s((safe_add_func_int32_t_s_s(l_539.s2, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(5UL, 0xDB778DE4L, 0xAA26C5BAL, (safe_sub_func_int16_t_s_s((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 4))(abs(((VECTOR(uint8_t, 16))(0x69L, ((VECTOR(uint8_t, 2))(l_566.s46)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(0x1AL, (safe_sub_func_uint8_t_u_u((safe_sub_func_int32_t_s_s(((p_57 = (+(safe_add_func_uint16_t_u_u((65535UL && 1UL), GROUP_DIVERGE(0, 1))))) && (-1L)), p_58)), l_551.y)), 0x97L, 0x8EL)), ((VECTOR(uint8_t, 4))(0xB2L)))), ((VECTOR(uint8_t, 4))(0xD1L)), 0x2CL)).sa187))), ((VECTOR(uint8_t, 4))(0xEAL))))), ((VECTOR(uint8_t, 4))(7UL)), 0x8BL, 255UL, 0x83L, ((VECTOR(uint8_t, 4))(0x91L)), 0x53L)).s7 == p_1336->g_39), FAKE_DIVERGE(p_1336->local_2_offset, get_local_id(2), 10))), 2UL, 4294967295UL, 2UL, 0x9686BFA9L)).s22)).lo)), 2L)))))), p_1336->g_328.y))))))), l_573, 1UL, 0UL)), ((VECTOR(uint32_t, 8))(0x437C6359L)), ((VECTOR(uint32_t, 2))(7UL)), 0xDC251647L)).s33))))).yxxy))).zxyyzwzxywzzyzyx)), ((VECTOR(int64_t, 16))(0x5346D060D5214180L))))).sf3, ((VECTOR(int64_t, 2))(0x10179A29889C3EE7L))))), 0x4F93D0F770A86871L, p_56, ((VECTOR(int64_t, 8))(0x35BF747E8567D7FDL)), ((VECTOR(int64_t, 2))((-1L))), 0x48DC80907EC140FEL, 0L)).sca)).xyyy, ((VECTOR(int64_t, 4))(0x1871858231E1530DL))))).xxzyyyyw, (int64_t)(-10L)))).s06, (int64_t)p_1336->g_373.s3))).yxyyyyxxxyxxxyyy, ((VECTOR(int64_t, 16))(0L))))), ((VECTOR(int64_t, 16))(0x1C6EEB2186F8E898L)), ((VECTOR(int64_t, 16))(0x056E98E3829D37FCL))))).s9) | 0x462A5E532FE74F78L), ((VECTOR(int32_t, 2))(0x0757A7A5L)), l_552.s6, 0L, 8L, p_57, (-1L), ((VECTOR(int32_t, 2))((-5L))), l_566.s1, p_57, ((VECTOR(int32_t, 4))(0x5A1E34FAL)))))).s0, p_58)) > 4294967295UL) , l_540.se) < 1UL) != p_58) | p_56);
    return p_1336->g_103.f5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1336->g_247.f8 p_1336->g_327 p_1336->g_247.f4 p_1336->g_289.f4 p_1336->g_442 p_1336->g_443 p_1336->g_431.f5 p_1336->g_247.f3 p_1336->g_350 p_1336->g_183 p_1336->g_103.f5 p_1336->g_329 p_1336->g_103 p_1336->g_154 p_1336->g_389.f2
 * writes: p_1336->g_247.f8 p_1336->g_247.f5 p_1336->g_328 p_1336->g_398.f6 p_1336->g_103 p_1336->g_155
 */
int32_t  func_65(int64_t * p_66, uint32_t  p_67, uint16_t  p_68, uint64_t  p_69, int64_t * p_70, struct S1 * p_1336)
{ /* block id: 173 */
    int32_t l_433 = 7L;
    VECTOR(uint64_t, 4) l_468 = (VECTOR(uint64_t, 4))(0xAA4194AB73F7A62BL, (VECTOR(uint64_t, 2))(0xAA4194AB73F7A62BL, 18446744073709551610UL), 18446744073709551610UL);
    VECTOR(uint64_t, 16) l_469 = (VECTOR(uint64_t, 16))(0xB54D6EA847D2E6ADL, (VECTOR(uint64_t, 4))(0xB54D6EA847D2E6ADL, (VECTOR(uint64_t, 2))(0xB54D6EA847D2E6ADL, 0x96F0F4500A7119ADL), 0x96F0F4500A7119ADL), 0x96F0F4500A7119ADL, 0xB54D6EA847D2E6ADL, 0x96F0F4500A7119ADL, (VECTOR(uint64_t, 2))(0xB54D6EA847D2E6ADL, 0x96F0F4500A7119ADL), (VECTOR(uint64_t, 2))(0xB54D6EA847D2E6ADL, 0x96F0F4500A7119ADL), 0xB54D6EA847D2E6ADL, 0x96F0F4500A7119ADL, 0xB54D6EA847D2E6ADL, 0x96F0F4500A7119ADL);
    struct S0 *l_476 = &p_1336->g_103;
    uint32_t *l_479[2][10][4] = {{{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]}},{{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]},{&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0],&p_1336->g_183[0]}}};
    int32_t l_481 = 0x68F9782FL;
    uint32_t l_514 = 0x2B57273EL;
    VECTOR(int32_t, 16) l_523 = (VECTOR(int32_t, 16))(0x757F1701L, (VECTOR(int32_t, 4))(0x757F1701L, (VECTOR(int32_t, 2))(0x757F1701L, (-7L)), (-7L)), (-7L), 0x757F1701L, (-7L), (VECTOR(int32_t, 2))(0x757F1701L, (-7L)), (VECTOR(int32_t, 2))(0x757F1701L, (-7L)), 0x757F1701L, (-7L), 0x757F1701L, (-7L));
    int i, j, k;
    for (p_1336->g_247.f8 = 10; (p_1336->g_247.f8 != (-21)); p_1336->g_247.f8--)
    { /* block id: 176 */
        uint32_t l_426 = 0xAB15005DL;
        int32_t *l_427[8] = {&p_1336->g_42,&p_1336->g_42,&p_1336->g_42,&p_1336->g_42,&p_1336->g_42,&p_1336->g_42,&p_1336->g_42,&p_1336->g_42};
        VECTOR(uint64_t, 4) l_459 = (VECTOR(uint64_t, 4))(0xC34AE466705D42B5L, (VECTOR(uint64_t, 2))(0xC34AE466705D42B5L, 18446744073709551615UL), 18446744073709551615UL);
        uint64_t *l_460 = (void*)0;
        uint64_t *l_461 = (void*)0;
        uint64_t *l_462[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int16_t l_463[8][6][5] = {{{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L}},{{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L}},{{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L}},{{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L}},{{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L}},{{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L}},{{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L}},{{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L},{0x1938L,0x1938L,0x69BBL,(-1L),3L}}};
        uint8_t *l_480[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        VECTOR(int32_t, 16) l_512 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x5B7120ACL), 0x5B7120ACL), 0x5B7120ACL, 0L, 0x5B7120ACL, (VECTOR(int32_t, 2))(0L, 0x5B7120ACL), (VECTOR(int32_t, 2))(0L, 0x5B7120ACL), 0L, 0x5B7120ACL, 0L, 0x5B7120ACL);
        VECTOR(uint16_t, 8) l_518 = (VECTOR(uint16_t, 8))(6UL, (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 65530UL), 65530UL), 65530UL, 6UL, 65530UL);
        VECTOR(int32_t, 8) l_519 = (VECTOR(int32_t, 8))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 2L), 2L), 2L, (-2L), 2L);
        VECTOR(int32_t, 16) l_520 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x36B4DBF4L), 0x36B4DBF4L), 0x36B4DBF4L, 1L, 0x36B4DBF4L, (VECTOR(int32_t, 2))(1L, 0x36B4DBF4L), (VECTOR(int32_t, 2))(1L, 0x36B4DBF4L), 1L, 0x36B4DBF4L, 1L, 0x36B4DBF4L);
        VECTOR(int32_t, 2) l_522 = (VECTOR(int32_t, 2))((-8L), 1L);
        struct S0 *l_529 = &p_1336->g_247;
        struct S0 *l_531 = (void*)0;
        int i, j, k;
        for (p_1336->g_247.f5 = 0; (p_1336->g_247.f5 <= 33); p_1336->g_247.f5 = safe_add_func_int32_t_s_s(p_1336->g_247.f5, 9))
        { /* block id: 179 */
            VECTOR(uint8_t, 4) l_439 = (VECTOR(uint8_t, 4))(0x7DL, (VECTOR(uint8_t, 2))(0x7DL, 252UL), 252UL);
            uint16_t *l_441 = &p_1336->g_289.f5;
            uint16_t **l_440 = &l_441;
            int i;
            (1 + 1);
        }
        if ((safe_unary_minus_func_int8_t_s((safe_mul_func_uint8_t_u_u(p_67, ((safe_rshift_func_uint8_t_u_s(p_69, (safe_mul_func_int16_t_s_s(((((safe_add_func_uint64_t_u_u((l_463[2][3][2] = ((VECTOR(uint64_t, 4))(l_459.yxzx)).w), (((safe_rshift_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(0UL, ((l_481 = (((VECTOR(int64_t, 4))(0x52340340DCCB8CC9L, ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),int64_t,((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))((-1L), (-1L))).yyyyyxyyyyxyxyxy)).s81)).yyxy, (int64_t)(((p_1336->g_328.y = (p_67 != (((((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 16))(l_468.yxwxwywzxzzzyxyx)).s6c, ((VECTOR(uint64_t, 4))(l_469.sa576)).odd))).even | (safe_rshift_func_int16_t_s_u((~((VECTOR(int16_t, 8))(1L, l_468.z, ((VECTOR(int16_t, 2))(1L, 1L)), 0x45EFL, ((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 8))((safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 4))((safe_mod_func_int32_t_s_s(((l_476 == (void*)0) <= ((safe_lshift_func_uint8_t_u_s(((p_68 , (((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 4))(p_1336->g_247.f3, ((VECTOR(uint64_t, 2))(18446744073709551615UL)), 18446744073709551614UL)).wwwwzxwxxwzwxzwx, ((VECTOR(uint64_t, 16))(0x90A048EEF2F2BC25L))))).s56)).even && 18446744073709551606UL)) >= l_469.s9), l_433)) < p_1336->g_398.f4)), p_68)), 5UL, 0x7998C174L, 0x6B86CD49L)).zywwzyzxzyxwyywx, ((VECTOR(uint32_t, 16))(4294967294UL))))).hi, (uint64_t)p_1336->g_350.x))).s25)).odd, (-4L))), ((VECTOR(int16_t, 2))(0x2F4EL)), 3L, l_469.s4, ((VECTOR(int16_t, 2))(0L)), 0x0982L)).s56, ((VECTOR(int16_t, 2))(0L)), ((VECTOR(int16_t, 2))(0x5732L))))), (-1L))).s4), p_1336->g_103.f1))) , l_479[1][9][1]) == &l_426))) & p_69) , p_1336->g_289.f6), (int64_t)(-7L)))).odd, ((VECTOR(int64_t, 2))(0x446FEF6C6AE6EA18L))))), ((VECTOR(int64_t, 2))(2L))))), 1L)).w || GROUP_DIVERGE(1, 1))) ^ 0x01L))), p_1336->g_327.z)) , p_68) >= 0xCE11E874L))) & (-1L)) || p_68) != p_68), l_468.x)))) & p_1336->g_247.f4))))))
        { /* block id: 208 */
            uint32_t **l_482 = &l_479[1][7][2];
            int32_t l_492 = (-1L);
            int32_t l_507 = 0x352B8AA1L;
            int8_t *l_508 = (void*)0;
            int8_t *l_509[1];
            int32_t l_510 = 0x7F647824L;
            int i;
            for (i = 0; i < 1; i++)
                l_509[i] = &p_1336->g_103.f7;
            l_510 &= ((((*l_482) = l_479[1][9][1]) == ((((&p_67 != &p_67) != (safe_sub_func_int16_t_s_s((((((((safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 4))(p_1336->g_487.yxyw)).y, ((safe_div_func_uint8_t_u_u((l_481 = (((safe_lshift_func_int8_t_s_u(p_1336->g_289.f4, l_492)) && (safe_mul_func_int16_t_s_s((((**p_1336->g_442) && (((((p_1336->g_398.f6 = (safe_div_func_uint8_t_u_u((safe_mod_func_int32_t_s_s(((((p_1336->g_328.x = (l_492 < (!(l_507 |= ((safe_sub_func_int32_t_s_s((safe_add_func_int8_t_s_s((p_1336->g_247.f3 >= ((safe_div_func_int32_t_s_s(((p_69 && GROUP_DIVERGE(1, 1)) > l_492), p_1336->g_350.y)) | 0x4622A7AAL)), 0x32L)), 4294967288UL)) > 0xF95416793AD30772L))))) > p_69) || l_468.z) | 9L), p_69)), 0x61L))) == l_468.y) < l_492) | 1L) && 1UL)) | p_1336->g_183[1]), p_1336->g_103.f5))) == l_468.x)), p_1336->g_329.x)) > l_492))) != l_468.x) ^ l_492) & 1L) || l_492) != p_68) , l_468.y), 65534UL))) >= (-1L)) , (void*)0)) > p_67);
            (*l_476) = (*l_476);
        }
        else
        { /* block id: 216 */
            VECTOR(int32_t, 2) l_521 = (VECTOR(int32_t, 2))(1L, 0x7FDCE637L);
            uint32_t l_528 = 0UL;
            struct S0 **l_530 = &l_529;
            int i;
            l_481 = ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(p_1336->g_511.s4047)), ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 2))(l_512.s12)).yyyx, ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 2))(p_1336->g_513.s57)).xyxyyyxy, ((VECTOR(int16_t, 8))(0x280BL, p_67, 0x6E95L, l_514, 0x3AF0L, ((VECTOR(int16_t, 2))((-2L), 0x2DF7L)), 0L))))).s5614120703005414, ((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 16))(p_1336->g_515.wxxxzzyzyxyxxyxx)).sb1, ((VECTOR(uint16_t, 2))(0x6DA7L, 0x1064L)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(p_1336->g_516.wwyyxwxwwwwxxyyw)).s293e)).xyxzwzxx, ((VECTOR(uint16_t, 4))(p_1336->g_517.yxxx)).ywyxywxy))).s50))).xxxxxyyy))).s45)).yxyxxxxxxxxxxyxx, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_518.s61)))).yyxxyyxyxxxyxyxy))).sac5a)).odd))).yxxxyyyxyxxyxyyy))), ((VECTOR(int32_t, 16))(l_519.s1615613250102241))))).sc1c0))), ((VECTOR(int32_t, 4))(l_520.se788))))))).xzxyzxxx, ((VECTOR(int32_t, 2))(l_521.yy)).yxyyxxyx))))).even)).even, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x2805BD08L, 0L)))), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_522.yyyy)), ((VECTOR(int32_t, 8))(l_523.s278c3719)), ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(0x660A099CL, (4294967287UL != ((+(p_1336->g_328.z = (safe_unary_minus_func_uint16_t_u(((VECTOR(uint16_t, 4))(p_1336->g_525.yxxy)).w)))) ^ (-1L))), (-1L), 0L))))))))))).s55))), (safe_sub_func_uint64_t_u_u((l_528 ^ ((p_1336->g_398.f5 = FAKE_DIVERGE(p_1336->group_1_offset, get_group_id(1), 10)) | (l_523.sf ^= (((*l_530) = l_529) == l_531)))), (safe_mul_func_uint16_t_u_u((((l_521.x & l_521.x) ^ l_468.z) < p_69), 0xAE68L)))), 0x4D5A7DE6L, ((VECTOR(int32_t, 2))(0x491147AAL)), 0x67417316L, 0x5F4A255AL)).s14))).even;
        }
        (*p_1336->g_154) = &l_481;
        (*l_476) = (*l_476);
    }
    return p_1336->g_389.f2;
}


/* ------------------------------------------ */
/* 
 * reads : p_1336->g_87 p_1336->g_49 p_1336->g_103 p_1336->g_34 p_1336->g_110 p_1336->g_118 p_1336->g_39 p_1336->g_120 p_1336->g_119 p_1336->g_154 p_1336->g_17 p_1336->g_183 p_1336->g_155 p_1336->g_185 p_1336->g_200 p_1336->g_201 p_1336->g_219 p_1336->g_2 p_1336->g_247.f7 p_1336->g_289 p_1336->g_272 p_1336->g_302 p_1336->g_304 p_1336->g_247.f5 p_1336->g_247.f4 p_1336->g_322 p_1336->g_327 p_1336->g_328 p_1336->g_329 p_1336->g_331 p_1336->g_333 p_1336->g_63 p_1336->g_247.f1 p_1336->g_6 p_1336->g_373 p_1336->g_389 p_1336->g_398 p_1336->g_406 p_1336->g_407 p_1336->g_350 p_1336->g_420
 * writes: p_1336->g_49 p_1336->g_107 p_1336->g_119 p_1336->g_134 p_1336->g_155 p_1336->g_183 p_1336->g_103.f2 p_1336->g_103.f5 p_1336->g_199 p_1336->g_174 p_1336->g_247.f7 p_1336->g_247 p_1336->g_296 p_1336->g_272 p_1336->g_200 p_1336->g_322 p_1336->g_110 p_1336->g_350 p_1336->g_289.f6 p_1336->g_103.f6 p_1336->g_420
 */
int64_t * func_71(int64_t * p_72, int16_t  p_73, int64_t  p_74, struct S1 * p_1336)
{ /* block id: 35 */
    int16_t **l_86 = &p_1336->g_34;
    int32_t l_90 = 0L;
    int64_t *l_387 = (void*)0;
    int32_t *l_419[4];
    int i;
    for (i = 0; i < 4; i++)
        l_419[i] = &p_1336->g_420;
    p_1336->g_420 ^= ((((VECTOR(uint32_t, 4))(0x347E9BEEL, 0x4CB4AB47L, 0xB5258326L, 0UL)).z < ((safe_sub_func_int32_t_s_s((&p_1336->g_34 != (func_78(func_82((((l_86 != (((VECTOR(int32_t, 4))(p_1336->g_87.xxxy)).z , func_88(l_90, p_1336))) , 65535UL) , p_73), (safe_add_func_uint64_t_u_u((((safe_add_func_int64_t_s_s((safe_add_func_int32_t_s_s((0x0D9FL || ((&l_90 == (FAKE_DIVERGE(p_1336->group_1_offset, get_group_id(1), 10) , &l_90)) , FAKE_DIVERGE(p_1336->group_2_offset, get_group_id(2), 10))), p_1336->g_39)), 0x35D5B424FC341C21L)) , l_86) == (void*)0), p_1336->g_103.f7)), p_73, p_1336), l_86, l_387, p_1336) , (void*)0)), p_74)) , 0UL)) , p_73);
    return l_387;
}


/* ------------------------------------------ */
/* 
 * reads : p_1336->g_333 p_1336->g_389 p_1336->g_154 p_1336->g_155 p_1336->g_398 p_1336->g_322.f0 p_1336->g_406 p_1336->g_407 p_1336->g_110 p_1336->g_289.f5 p_1336->g_373 p_1336->g_120 p_1336->g_350 p_1336->g_331 p_1336->g_118
 * writes: p_1336->g_155 p_1336->g_134 p_1336->g_119
 */
int64_t  func_78(int32_t  p_79, int16_t ** p_80, int64_t * p_81, struct S1 * p_1336)
{ /* block id: 165 */
    int32_t **l_388[6] = {&p_1336->g_155,&p_1336->g_155,&p_1336->g_155,&p_1336->g_155,&p_1336->g_155,&p_1336->g_155};
    VECTOR(uint8_t, 4) l_403 = (VECTOR(uint8_t, 4))(254UL, (VECTOR(uint8_t, 2))(254UL, 247UL), 247UL);
    VECTOR(int8_t, 8) l_404 = (VECTOR(int8_t, 8))(0x68L, (VECTOR(int8_t, 4))(0x68L, (VECTOR(int8_t, 2))(0x68L, 0x20L), 0x20L), 0x20L, 0x68L, 0x20L);
    VECTOR(int8_t, 2) l_405 = (VECTOR(int8_t, 2))(0x7DL, 0x10L);
    uint8_t *l_410 = &p_1336->g_134[1];
    VECTOR(uint8_t, 16) l_417 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL);
    VECTOR(uint8_t, 16) l_418 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x2CL), 0x2CL), 0x2CL, 255UL, 0x2CL, (VECTOR(uint8_t, 2))(255UL, 0x2CL), (VECTOR(uint8_t, 2))(255UL, 0x2CL), 255UL, 0x2CL, 255UL, 0x2CL);
    int i;
    (*p_1336->g_333) = (void*)0;
    (*p_1336->g_333) = (p_1336->g_389 , (*p_1336->g_154));
    (*p_1336->g_118) = ((safe_mod_func_uint64_t_u_u((safe_div_func_int8_t_s_s((safe_lshift_func_int16_t_s_u((safe_div_func_int32_t_s_s(((p_1336->g_398 , (safe_mul_func_int16_t_s_s(0x3C68L, p_1336->g_322.f0))) != (((safe_rshift_func_uint16_t_u_s((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(abs(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),VECTOR(uint8_t, 4),((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 16))(l_403.yxwxwxywyzwwzzwx)).s9a68, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 16))(l_404.s1502251417754616)).sfb, ((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 16))(l_405.xxxyyyyyxxyxyyyy)).sdd8c, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 2))(0x63L, (-4L))).yyyxyxyx, ((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 2))(p_1336->g_406.s92)).xyxy))).yywyxyyz))))).lo))))))).odd)).xyyyxxyyyyxyxxyy, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))((-1L), 0x38L)).yxxyxxxyyyyyxxxx))))).s50))), 0x3DL, 0L)).wyxxyyxz, ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(p_1336->g_407.s6753)).yxywwwwyxyyyzxwz)).s68, (int8_t)(((safe_rshift_func_uint8_t_u_s(((*l_410) = p_79), ((safe_mul_func_int8_t_s_s(p_79, 255UL)) && p_1336->g_110.y))) | (safe_add_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 2))(3UL, 0x65B2L)).yxxxyxxyxxxxxyyy, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(6UL, 0xF1B1L, 65531UL, 0UL)).yzxyxzyx)).s3505742141020157))).s8527)).z, 5)), ((p_79 & (((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 8))(l_417.s30e3d8e4)).odd, ((VECTOR(uint8_t, 4))(l_418.s8a95))))).xzwxzyxxwxwzywyy)))).s0 == p_1336->g_289.f5)) < p_79)))) || p_1336->g_373.sc)))).xxxxyxyx))))).odd))).yyxyzzxyxzwwxwzz, ((VECTOR(uint8_t, 16))(0x03L))))).sba10, ((VECTOR(uint8_t, 4))(0UL)), ((VECTOR(uint8_t, 4))(255UL))))).lo)).yyxx))))).y < p_79), 15)) || p_79) == p_1336->g_120.s1)), p_1336->g_350.y)), 8)), p_79)), p_1336->g_331.z)) < FAKE_DIVERGE(p_1336->global_1_offset, get_global_id(1), 10));
    return p_1336->g_406.sf;
}


/* ------------------------------------------ */
/* 
 * reads : p_1336->g_201 p_1336->g_34 p_1336->g_219 p_1336->g_17 p_1336->g_183 p_1336->g_110 p_1336->g_2 p_1336->g_49 p_1336->g_247.f7 p_1336->g_289 p_1336->g_272 p_1336->g_322 p_1336->g_333 p_1336->g_63 p_1336->g_247.f1 p_1336->g_39 p_1336->g_6 p_1336->g_373 p_1336->g_103.f6 p_1336->g_302 p_1336->g_304 p_1336->g_247.f5 p_1336->g_247.f4 p_1336->g_87 p_1336->g_327 p_1336->g_328 p_1336->g_329 p_1336->g_331
 * writes: p_1336->g_174 p_1336->g_155 p_1336->g_103.f2 p_1336->g_49 p_1336->g_247.f7 p_1336->g_247 p_1336->g_296 p_1336->g_272 p_1336->g_200 p_1336->g_322 p_1336->g_110 p_1336->g_350 p_1336->g_134 p_1336->g_289.f6 p_1336->g_103.f6
 */
int32_t  func_82(uint32_t  p_83, uint32_t  p_84, int64_t  p_85, struct S1 * p_1336)
{ /* block id: 74 */
    int16_t **l_216 = &p_1336->g_34;
    int32_t l_217 = 0x326B2818L;
    int32_t l_228 = 0x0D4928ACL;
    int32_t l_237 = 0L;
    int32_t l_238 = 0x469817C0L;
    int64_t l_244 = 0x30C1E78EC6E61183L;
    VECTOR(int64_t, 8) l_303 = (VECTOR(int64_t, 8))(0x6C801020721CA551L, (VECTOR(int64_t, 4))(0x6C801020721CA551L, (VECTOR(int64_t, 2))(0x6C801020721CA551L, (-4L)), (-4L)), (-4L), 0x6C801020721CA551L, (-4L));
    int16_t *****l_316 = &p_1336->g_199;
    VECTOR(int8_t, 8) l_343 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L), 0L, 0L, 0L);
    VECTOR(int8_t, 8) l_344 = (VECTOR(int8_t, 8))(0x61L, (VECTOR(int8_t, 4))(0x61L, (VECTOR(int8_t, 2))(0x61L, 1L), 1L), 1L, 0x61L, 1L);
    VECTOR(uint8_t, 8) l_355 = (VECTOR(uint8_t, 8))(252UL, (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 255UL), 255UL), 255UL, 252UL, 255UL);
    uint16_t *l_367 = &p_1336->g_289.f5;
    uint16_t *l_368[9][1][9] = {{{&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5,&p_1336->g_289.f5,&p_1336->g_289.f5,&p_1336->g_103.f5,&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5}},{{&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5,&p_1336->g_289.f5,&p_1336->g_289.f5,&p_1336->g_103.f5,&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5}},{{&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5,&p_1336->g_289.f5,&p_1336->g_289.f5,&p_1336->g_103.f5,&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5}},{{&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5,&p_1336->g_289.f5,&p_1336->g_289.f5,&p_1336->g_103.f5,&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5}},{{&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5,&p_1336->g_289.f5,&p_1336->g_289.f5,&p_1336->g_103.f5,&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5}},{{&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5,&p_1336->g_289.f5,&p_1336->g_289.f5,&p_1336->g_103.f5,&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5}},{{&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5,&p_1336->g_289.f5,&p_1336->g_289.f5,&p_1336->g_103.f5,&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5}},{{&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5,&p_1336->g_289.f5,&p_1336->g_289.f5,&p_1336->g_103.f5,&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5}},{{&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5,&p_1336->g_289.f5,&p_1336->g_289.f5,&p_1336->g_103.f5,&p_1336->g_247.f5,&p_1336->g_103.f5,&p_1336->g_103.f5}}};
    uint32_t l_378 = 0x7FDD5676L;
    int i, j, k;
    if ((safe_mod_func_int64_t_s_s((p_1336->g_174 = ((l_216 == (void*)0) & ((*p_1336->g_201) == (*l_216)))), l_217)))
    { /* block id: 76 */
        int32_t *l_218[4][4][6];
        int16_t ****l_235 = &p_1336->g_200;
        int16_t *l_236[8][1] = {{&p_1336->g_103.f4},{&p_1336->g_103.f4},{&p_1336->g_103.f4},{&p_1336->g_103.f4},{&p_1336->g_103.f4},{&p_1336->g_103.f4},{&p_1336->g_103.f4},{&p_1336->g_103.f4}};
        int64_t *l_239 = (void*)0;
        int64_t *l_240 = &p_1336->g_103.f2;
        uint16_t *l_285[9] = {&p_1336->g_103.f5,(void*)0,&p_1336->g_103.f5,&p_1336->g_103.f5,(void*)0,&p_1336->g_103.f5,&p_1336->g_103.f5,(void*)0,&p_1336->g_103.f5};
        uint16_t **l_284 = &l_285[1];
        struct S0 *l_290 = &p_1336->g_247;
        uint32_t l_291 = 0x70E87A68L;
        int i, j, k;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 4; j++)
            {
                for (k = 0; k < 6; k++)
                    l_218[i][j][k] = &p_1336->g_39;
            }
        }
lbl_243:
        (*p_1336->g_219) = l_218[1][1][0];
        if (((safe_mod_func_int64_t_s_s(((*l_240) = ((((p_83 != (((18446744073709551615UL > (safe_add_func_int32_t_s_s(((VECTOR(int32_t, 2))(6L, 0x48F883B2L)).odd, p_85))) <= l_217) < (safe_mod_func_int32_t_s_s((l_228 = (safe_sub_func_uint64_t_u_u(1UL, p_1336->g_17.s3))), (l_217 | p_83))))) & ((((safe_div_func_int16_t_s_s(((l_238 = (l_237 |= (safe_add_func_uint64_t_u_u((((safe_rshift_func_uint8_t_u_u(((void*)0 != l_235), 6)) , 8L) , p_1336->g_183[1]), p_84)))) < FAKE_DIVERGE(p_1336->global_1_offset, get_global_id(1), 10)), 0x284DL)) >= l_217) ^ FAKE_DIVERGE(p_1336->group_0_offset, get_group_id(0), 10)) && 0x51AA0ECB53A35A2BL)) ^ 2UL) || p_1336->g_110.y)), p_1336->g_2[0])) < p_85))
        { /* block id: 82 */
            int32_t *l_245 = (void*)0;
            int32_t l_264 = 0x130EAA1CL;
            int32_t l_266 = (-6L);
            for (p_1336->g_49 = (-29); (p_1336->g_49 >= 25); p_1336->g_49 = safe_add_func_uint32_t_u_u(p_1336->g_49, 3))
            { /* block id: 85 */
                int32_t l_265 = 0x566F3951L;
                if (l_237)
                    goto lbl_243;
            }
            for (p_1336->g_247.f7 = 0; (p_1336->g_247.f7 > (-27)); p_1336->g_247.f7--)
            { /* block id: 114 */
                uint16_t **l_287 = &l_285[1];
                uint16_t ***l_286 = &l_287;
                int32_t l_288 = 0x758BE2C6L;
                (*l_286) = (((safe_rshift_func_int8_t_s_u(8L, 3)) > 0UL) , (l_284 = (void*)0));
                l_288 = (&l_216 != &p_1336->g_201);
                if (p_84)
                    break;
                return l_288;
            }
        }
        else
        { /* block id: 121 */
            return p_1336->g_183[3];
        }
        (*l_290) = p_1336->g_289;
        l_291--;
    }
    else
    { /* block id: 126 */
        uint8_t *l_294 = &p_1336->g_134[1];
        int64_t *l_295 = &p_1336->g_296;
        int32_t *l_297 = &p_1336->g_39;
        uint32_t *l_298 = &p_1336->g_272;
        VECTOR(int64_t, 2) l_301 = (VECTOR(int64_t, 2))(1L, (-4L));
        int32_t l_320 = 0x61EEB15AL;
        VECTOR(uint16_t, 16) l_372 = (VECTOR(uint16_t, 16))(0x2618L, (VECTOR(uint16_t, 4))(0x2618L, (VECTOR(uint16_t, 2))(0x2618L, 65531UL), 65531UL), 65531UL, 0x2618L, 65531UL, (VECTOR(uint16_t, 2))(0x2618L, 65531UL), (VECTOR(uint16_t, 2))(0x2618L, 65531UL), 0x2618L, 65531UL, 0x2618L, 65531UL);
        VECTOR(int64_t, 8) l_386 = (VECTOR(int64_t, 8))(0x0E0A579E85E7D54FL, (VECTOR(int64_t, 4))(0x0E0A579E85E7D54FL, (VECTOR(int64_t, 2))(0x0E0A579E85E7D54FL, 1L), 1L), 1L, 0x0E0A579E85E7D54FL, 1L);
        int i;
lbl_356:
        l_297 = (((*l_295) = (l_294 == (void*)0)) , l_297);
        if ((l_238 = (((*l_298)--) != l_228)))
        { /* block id: 131 */
            VECTOR(int8_t, 4) l_311 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 1L), 1L);
            int32_t *l_319[3];
            int16_t ****l_321 = &p_1336->g_200;
            volatile struct S0 *l_324 = &p_1336->g_322;
            VECTOR(uint8_t, 16) l_330 = (VECTOR(uint8_t, 16))(0x87L, (VECTOR(uint8_t, 4))(0x87L, (VECTOR(uint8_t, 2))(0x87L, 0x40L), 0x40L), 0x40L, 0x87L, 0x40L, (VECTOR(uint8_t, 2))(0x87L, 0x40L), (VECTOR(uint8_t, 2))(0x87L, 0x40L), 0x87L, 0x40L, 0x87L, 0x40L);
            int i;
            for (i = 0; i < 3; i++)
                l_319[i] = (void*)0;
            l_320 = (((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 4))(l_301.yyxy)), ((VECTOR(int64_t, 8))(p_1336->g_302.s67611415)).odd, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(l_303.s2426)))), ((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))((-3L), 0x4089DC33B451D2ECL, 0x27278C815E9DAD21L, ((VECTOR(int64_t, 2))(p_1336->g_304.xy)), 0x5C4BB3CEF0DF5E59L, 1L, 1L)).even)), p_1336->g_247.f5, (safe_mod_func_int16_t_s_s(((0x29D1L == ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 2))(0x9489L, 0xCA32L)).xyxx, ((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(0x844CL, ((l_237 = ((safe_lshift_func_int8_t_s_u(((((safe_add_func_uint8_t_u_u(p_85, ((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 2))(l_311.wz)).yyxy, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))((safe_add_func_uint64_t_u_u(p_85, (p_84 == ((safe_div_func_uint8_t_u_u((l_316 == &p_1336->g_199), (safe_add_func_int32_t_s_s(((p_84 != p_85) ^ 0x5DL), 4UL)))) >= p_1336->g_247.f4)))), p_84, 0x79L, (*l_297), p_1336->g_289.f0, 0x6FL, 0x6CL, 0x46L)).odd))))).yyxyyxxw)).odd)).zzzxzzzxwwwzzyyx, ((VECTOR(int8_t, 16))(3L))))).s1)) != (*l_297)) <= 0UL) > 0x64B1L), 3)) || p_1336->g_103.f6)) != p_84), ((VECTOR(uint16_t, 2))(65528UL)), ((VECTOR(uint16_t, 2))(65534UL)), ((VECTOR(uint16_t, 8))(1UL)), 0x40B7L, 0x064BL)))).s1, ((VECTOR(uint16_t, 4))(0x77A4L)), p_1336->g_87.y, 0xBE7FL, 0x5C8AL))))).even))).even, ((VECTOR(uint16_t, 2))(65535UL))))).xyyx)).hi)).yyyxxxyxyyyyxyxy)).sb) , (*l_297)), p_83)), (-10L), 4L)).even, ((VECTOR(int64_t, 4))(0x72D2B86AEC26AE8EL))))), ((VECTOR(int64_t, 8))(0x233AA8CCAB275EA5L)))).s91c1, ((VECTOR(int64_t, 4))(0x0627D05F5A7021C5L))))).yxzwywzx)).s1700566347413135)).s67)))).xyyy))).zxyyxwyyzzwzxxxy, ((VECTOR(int64_t, 16))(0x6D9309CCD8F38D1AL)), ((VECTOR(int64_t, 16))(1L))))).s2 == (-2L));
            l_320 = (((*l_321) = (void*)0) == (void*)0);
            (*l_324) = p_1336->g_322;
            l_228 &= (safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 8))(p_1336->g_327.wwwwwwyx)).s0607053323220323, ((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 2))(p_1336->g_328.yw)).xyxxyxyyxyyyxyyy, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(p_1336->g_329.xwxyyzyw)))).s3663650014220330))).s12, ((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_330.sf4)).yyxxxyxx))))).s36))).xxxx)).xxzyzwyx)).odd, ((VECTOR(uint8_t, 8))(p_1336->g_331.yzxxzzzy)).odd))).zywwwzywzyxwxxzw))).sa, 5));
        }
        else
        { /* block id: 138 */
            int32_t *l_332 = &l_238;
            uint64_t *l_347 = (void*)0;
            uint64_t *l_348 = (void*)0;
            uint64_t *l_349 = (void*)0;
            uint16_t *l_366 = &p_1336->g_289.f5;
            uint16_t **l_365[2][5][7] = {{{&l_366,&l_366,(void*)0,&l_366,&l_366,(void*)0,&l_366},{&l_366,&l_366,(void*)0,&l_366,&l_366,(void*)0,&l_366},{&l_366,&l_366,(void*)0,&l_366,&l_366,(void*)0,&l_366},{&l_366,&l_366,(void*)0,&l_366,&l_366,(void*)0,&l_366},{&l_366,&l_366,(void*)0,&l_366,&l_366,(void*)0,&l_366}},{{&l_366,&l_366,(void*)0,&l_366,&l_366,(void*)0,&l_366},{&l_366,&l_366,(void*)0,&l_366,&l_366,(void*)0,&l_366},{&l_366,&l_366,(void*)0,&l_366,&l_366,(void*)0,&l_366},{&l_366,&l_366,(void*)0,&l_366,&l_366,(void*)0,&l_366},{&l_366,&l_366,(void*)0,&l_366,&l_366,(void*)0,&l_366}}};
            int8_t *l_379 = (void*)0;
            int8_t *l_380 = &p_1336->g_289.f6;
            int8_t *l_381 = (void*)0;
            int8_t *l_382 = (void*)0;
            int8_t *l_383 = &p_1336->g_103.f6;
            int32_t *l_384 = &l_320;
            int32_t *l_385 = &l_228;
            int i, j, k;
            (*p_1336->g_333) = l_332;
            if (((*l_332) = (((safe_lshift_func_uint16_t_u_u((&p_1336->g_185 != (p_84 , &l_332)), (safe_rshift_func_uint16_t_u_s(0UL, 5)))) > (safe_unary_minus_func_uint32_t_u((((-4L) > (p_1336->g_63.w , ((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),int16_t,((VECTOR(int16_t, 16))(((safe_sub_func_uint16_t_u_u(((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 4))(l_343.s0707)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(l_344.s21476645)).s0062633024241073)).lo)).even))).z, (safe_sub_func_int16_t_s_s(((p_1336->g_350.y = (p_1336->g_110.x = ((void*)0 != &p_1336->g_201))) || p_1336->g_247.f1), (*l_297))))) , p_83), 0x65BAL)) || p_1336->g_6), ((VECTOR(int16_t, 8))(1L)), ((VECTOR(int16_t, 2))(0x03A6L)), 0x663FL, l_228, (-7L), 0L, 0L)).sef, (int16_t)(*l_332), (int16_t)p_83))).odd)) & p_83)))) == 65533UL)))
            { /* block id: 143 */
                if ((safe_mod_func_int16_t_s_s(p_84, (safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))(l_355.s36)).hi, 0)))))
                { /* block id: 144 */
                    if (p_1336->g_247.f4)
                        goto lbl_356;
                }
                else
                { /* block id: 146 */
                    return p_85;
                }
            }
            else
            { /* block id: 149 */
                (*l_332) ^= p_84;
                return p_85;
            }
            (*l_385) = (l_217 = ((*l_384) &= (((*l_332) = (safe_lshift_func_int16_t_s_u((0x4C4C2F215B1D7AA7L & ((safe_rshift_func_uint8_t_u_s(((*l_294) = p_1336->g_322.f0), 7)) == (*l_332))), (safe_div_func_int8_t_s_s(((*l_383) ^= (((l_367 = (void*)0) != l_368[6][0][4]) == ((0x291FL >= (((safe_unary_minus_func_int64_t_s(((safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(65528UL, 1UL)), 1UL, 0x9022L, 0UL, 0xB2A7L, 0x41C7L, 0xC808L)).s2633307263045361, ((VECTOR(uint16_t, 16))(l_372.scdf3e457f0cccb45))))).s8, ((VECTOR(int16_t, 16))(p_1336->g_373.s3f00cdd9265f9b63)).sd)) >= (safe_sub_func_int8_t_s_s(((*l_380) ^= ((safe_mul_func_uint8_t_u_u((*l_297), l_378)) != (-9L))), GROUP_DIVERGE(0, 1)))))) <= (*l_297)) > l_343.s5)) != (*l_332)))), (*l_332)))))) , l_228)));
            (*l_385) = (((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_386.s60665507)).s3737307066370722)).sb > p_83);
        }
    }
    return p_1336->g_322.f6;
}


/* ------------------------------------------ */
/* 
 * reads : p_1336->g_49 p_1336->g_103 p_1336->g_34 p_1336->g_110 p_1336->g_118 p_1336->g_39 p_1336->g_120 p_1336->g_119 p_1336->g_154 p_1336->g_17 p_1336->g_183 p_1336->g_155 p_1336->g_185 p_1336->g_200 p_1336->g_201
 * writes: p_1336->g_49 p_1336->g_107 p_1336->g_119 p_1336->g_134 p_1336->g_155 p_1336->g_183 p_1336->g_103.f2 p_1336->g_103.f5 p_1336->g_199
 */
int16_t ** func_88(int32_t  p_89, struct S1 * p_1336)
{ /* block id: 36 */
    int16_t l_95 = 1L;
    VECTOR(int16_t, 16) l_106 = (VECTOR(int16_t, 16))(0x5F90L, (VECTOR(int16_t, 4))(0x5F90L, (VECTOR(int16_t, 2))(0x5F90L, (-3L)), (-3L)), (-3L), 0x5F90L, (-3L), (VECTOR(int16_t, 2))(0x5F90L, (-3L)), (VECTOR(int16_t, 2))(0x5F90L, (-3L)), 0x5F90L, (-3L), 0x5F90L, (-3L));
    int16_t **l_113 = &p_1336->g_34;
    int16_t ***l_114 = &l_113;
    int16_t **l_115 = &p_1336->g_34;
    int8_t l_146[10][7] = {{2L,1L,0x06L,(-4L),0x06L,1L,2L},{2L,1L,0x06L,(-4L),0x06L,1L,2L},{2L,1L,0x06L,(-4L),0x06L,1L,2L},{2L,1L,0x06L,(-4L),0x06L,1L,2L},{2L,1L,0x06L,(-4L),0x06L,1L,2L},{2L,1L,0x06L,(-4L),0x06L,1L,2L},{2L,1L,0x06L,(-4L),0x06L,1L,2L},{2L,1L,0x06L,(-4L),0x06L,1L,2L},{2L,1L,0x06L,(-4L),0x06L,1L,2L},{2L,1L,0x06L,(-4L),0x06L,1L,2L}};
    int32_t l_152[1];
    VECTOR(int32_t, 4) l_175 = (VECTOR(int32_t, 4))(0x5824A0B9L, (VECTOR(int32_t, 2))(0x5824A0B9L, 0x5E7AC821L), 0x5E7AC821L);
    uint32_t l_176 = 0xF1CCBC08L;
    int64_t *l_179 = &p_1336->g_103.f2;
    uint16_t *l_190[8][1] = {{&p_1336->g_103.f5},{&p_1336->g_103.f5},{&p_1336->g_103.f5},{&p_1336->g_103.f5},{&p_1336->g_103.f5},{&p_1336->g_103.f5},{&p_1336->g_103.f5},{&p_1336->g_103.f5}};
    int16_t ****l_198 = &l_114;
    int16_t *****l_197[1];
    int32_t *l_202 = (void*)0;
    int32_t *l_203 = &l_152[0];
    int32_t *l_204 = (void*)0;
    int32_t *l_205 = &p_1336->g_119;
    int i, j;
    for (i = 0; i < 1; i++)
        l_152[i] = 0x37C0C457L;
    for (i = 0; i < 1; i++)
        l_197[i] = &l_198;
    for (p_1336->g_49 = 2; (p_1336->g_49 == 20); p_1336->g_49 = safe_add_func_int32_t_s_s(p_1336->g_49, 6))
    { /* block id: 39 */
        return &p_1336->g_34;
    }
    if ((safe_lshift_func_int8_t_s_s(l_95, (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))((safe_mod_func_uint16_t_u_u((func_98(&p_1336->g_6, (p_1336->g_103 , (l_95 <= (0x33B0C632DA6A2825L != (((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 16))(l_106.s916921f8cfee4e9f)).sc4))).hi , ((p_1336->g_34 == (p_1336->g_107 = p_1336->g_34)) >= 0x09CE989DL))))), (safe_div_func_uint8_t_u_u((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(p_1336->g_110.xxxyyxyxxxxxyxyy)).sbda8)).z | (safe_rshift_func_int16_t_s_u((((*l_114) = l_113) == l_115), 12))), 0x44L)), p_1336->g_103.f1, p_1336) >= 18446744073709551611UL), 0x2272L)), p_89, 0x8916C188A167226AL, 0x0CA0C949183CB5D9L)), ((VECTOR(uint64_t, 8))(0xF7998293F6A8FE63L)), 0x7519F66274CD8784L, l_95, 3UL, 0x34CF679B517F45F4L)).sf != p_1336->g_103.f5))))
    { /* block id: 47 */
        return &p_1336->g_107;
    }
    else
    { /* block id: 49 */
        int32_t *l_121 = &p_1336->g_119;
        VECTOR(uint16_t, 4) l_128 = (VECTOR(uint16_t, 4))(0xB493L, (VECTOR(uint16_t, 2))(0xB493L, 0UL), 0UL);
        int32_t l_141 = 0x362DD0B5L;
        int16_t ***l_147 = &l_113;
        int16_t ***l_149 = &l_113;
        int32_t l_165 = 9L;
        int32_t l_166 = (-2L);
        int32_t l_167 = 6L;
        int16_t l_168 = (-1L);
        int32_t l_169 = 0x7F9ED612L;
        int32_t l_170 = (-1L);
        int16_t l_171 = 0x1045L;
        int32_t l_172 = 4L;
        int32_t l_173[1];
        uint32_t *l_182 = &p_1336->g_183[0];
        VECTOR(int64_t, 16) l_184 = (VECTOR(int64_t, 16))(0x3EB088F62F7CBCD2L, (VECTOR(int64_t, 4))(0x3EB088F62F7CBCD2L, (VECTOR(int64_t, 2))(0x3EB088F62F7CBCD2L, 1L), 1L), 1L, 0x3EB088F62F7CBCD2L, 1L, (VECTOR(int64_t, 2))(0x3EB088F62F7CBCD2L, 1L), (VECTOR(int64_t, 2))(0x3EB088F62F7CBCD2L, 1L), 0x3EB088F62F7CBCD2L, 1L, 0x3EB088F62F7CBCD2L, 1L);
        int i;
        for (i = 0; i < 1; i++)
            l_173[i] = 1L;
        (*l_121) |= ((VECTOR(int32_t, 4))(p_1336->g_120.s7124)).x;
        if ((*p_1336->g_118))
        { /* block id: 51 */
            uint8_t *l_133 = &p_1336->g_134[1];
            int32_t l_137 = 0L;
            int8_t l_138 = 1L;
            int32_t *l_139 = (void*)0;
            int32_t *l_140[1][10][8] = {{{&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],&p_1336->g_2[0],(void*)0,&p_1336->g_2[0]},{&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],&p_1336->g_2[0],(void*)0,&p_1336->g_2[0]},{&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],&p_1336->g_2[0],(void*)0,&p_1336->g_2[0]},{&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],&p_1336->g_2[0],(void*)0,&p_1336->g_2[0]},{&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],&p_1336->g_2[0],(void*)0,&p_1336->g_2[0]},{&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],&p_1336->g_2[0],(void*)0,&p_1336->g_2[0]},{&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],&p_1336->g_2[0],(void*)0,&p_1336->g_2[0]},{&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],&p_1336->g_2[0],(void*)0,&p_1336->g_2[0]},{&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],&p_1336->g_2[0],(void*)0,&p_1336->g_2[0]},{&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],(void*)0,&p_1336->g_2[0],&p_1336->g_2[0],(void*)0,&p_1336->g_2[0]}}};
            int16_t ****l_148 = &l_147;
            int16_t *l_150 = (void*)0;
            int16_t *l_151 = (void*)0;
            int i, j, k;
            l_141 &= (l_138 &= ((((VECTOR(uint8_t, 4))(3UL, 0xE6L, 0x21L, 0xA7L)).z != (((safe_sub_func_uint32_t_u_u((((safe_add_func_uint64_t_u_u(((((GROUP_DIVERGE(2, 1) , (((-8L) && l_95) , (((void*)0 == &p_1336->g_6) == p_89))) < (((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(l_128.zzxxzxxx)).s13)))), (((safe_rshift_func_uint8_t_u_s(((*l_133) = (safe_sub_func_uint16_t_u_u(8UL, 1L))), 4)) || (((p_89 >= (safe_mul_func_uint16_t_u_u(l_137, (-4L)))) & 2UL) <= FAKE_DIVERGE(p_1336->global_2_offset, get_global_id(2), 10))) <= p_89), 65526UL, ((VECTOR(uint16_t, 2))(0x6B36L)), 0xD05BL, 0xED69L)), ((VECTOR(uint16_t, 8))(1UL))))).s4 <= p_89)) == 0x42L) , GROUP_DIVERGE(1, 1)), GROUP_DIVERGE(1, 1))) == (*l_121)) > 0xBDE7L), l_137)) != (*p_1336->g_118)) , p_89)) | p_1336->g_49));
            (*l_121) = (safe_lshift_func_int8_t_s_s((-1L), ((-1L) & p_89)));
            (*l_121) |= (0x3BDEL == (safe_rshift_func_int8_t_s_s(l_95, (p_1336->g_103.f8 < (l_152[0] = (l_146[2][6] == (((0x45B8L != 0x084BL) && ((p_1336->g_103.f7 <= (((*l_148) = (p_1336->g_103.f4 , l_147)) == l_149)) & 0UL)) == (-3L))))))));
        }
        else
        { /* block id: 59 */
            int32_t *l_153 = (void*)0;
            int32_t **l_156 = &p_1336->g_155;
            int32_t *l_157 = (void*)0;
            int32_t *l_158 = &l_152[0];
            int32_t *l_159 = (void*)0;
            int32_t *l_160 = &l_141;
            int32_t *l_161 = &l_152[0];
            int32_t *l_162 = &p_1336->g_119;
            int32_t *l_163 = &l_141;
            int32_t *l_164[7] = {&l_152[0],&l_152[0],&l_152[0],&l_152[0],&l_152[0],&l_152[0],&l_152[0]};
            int i;
            (*p_1336->g_154) = l_153;
            (*l_156) = &l_141;
            ++l_176;
        }
        (*p_1336->g_155) = (p_1336->g_103.f8 || (l_176 == (((void*)0 != l_179) == ((((((((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))((-1L), (-8L))))), (-5L), 5L)), (int32_t)((VECTOR(int32_t, 2))(0L, 0x6E31FBE3L)).odd))).even)).xyxxxyyxyxyxyxxx, ((VECTOR(int32_t, 2))((-6L), (-7L))).yyxyyxxyxxxyyxxy))).s4 , ((*l_182) ^= (safe_div_func_int8_t_s_s(0x24L, p_1336->g_17.s5)))) , (**l_114)) != (**l_114)) > ((*l_179) = ((VECTOR(int64_t, 2))(l_184.s1e)).odd)) ^ (p_1336->g_39 == 0L)) || p_89))));
    }
    (*p_1336->g_185) &= l_152[0];
    (*l_205) |= ((((*l_113) == (void*)0) , (safe_mul_func_int8_t_s_s((((*l_203) = (((safe_add_func_uint16_t_u_u((p_1336->g_103.f3 < 0x5E72L), ((+(--p_1336->g_103.f5)) || l_175.z))) , ((safe_mod_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), (-1L))), 1UL)) , &l_114)) != (p_1336->g_199 = &l_114))) | p_89), p_89))) <= 0x0DL);
    return (*p_1336->g_200);
}


/* ------------------------------------------ */
/* 
 * reads : p_1336->g_118 p_1336->g_39
 * writes: p_1336->g_119
 */
int64_t  func_98(int32_t * p_99, uint64_t  p_100, uint16_t  p_101, int32_t  p_102, struct S1 * p_1336)
{ /* block id: 44 */
    (*p_1336->g_118) = (safe_lshift_func_uint8_t_u_u(254UL, 4));
    return p_1336->g_39;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1337;
    struct S1* p_1336 = &c_1337;
    struct S1 c_1338 = {
        {0x47A00F47L,0x47A00F47L}, // p_1336->g_2
        (-1L), // p_1336->g_5
        1L, // p_1336->g_6
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x72D6L), 0x72D6L), 0x72D6L, 1L, 0x72D6L), // p_1336->g_17
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 1L), 1L), // p_1336->g_19
        (void*)0, // p_1336->g_34
        0x6B3C8337L, // p_1336->g_39
        0x1C0D0DA9L, // p_1336->g_42
        (-1L), // p_1336->g_49
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 1L), 1L), // p_1336->g_63
        (VECTOR(int32_t, 2))(1L, (-3L)), // p_1336->g_87
        {0x73587EAAL,0x8A3620CEL,1L,2L,1L,1UL,0L,-1L,0x11430839L}, // p_1336->g_103
        &p_1336->g_103.f4, // p_1336->g_107
        (VECTOR(uint64_t, 2))(0xDE445E70CA4AAA59L, 1UL), // p_1336->g_110
        0x042AD979L, // p_1336->g_119
        &p_1336->g_119, // p_1336->g_118
        (VECTOR(int32_t, 8))(0x6058F234L, (VECTOR(int32_t, 4))(0x6058F234L, (VECTOR(int32_t, 2))(0x6058F234L, 0x7EBE47ABL), 0x7EBE47ABL), 0x7EBE47ABL, 0x6058F234L, 0x7EBE47ABL), // p_1336->g_120
        {254UL,254UL}, // p_1336->g_134
        &p_1336->g_119, // p_1336->g_155
        &p_1336->g_155, // p_1336->g_154
        0x1ACD293EDD8F24E6L, // p_1336->g_174
        {0xB65E9CBFL,0xB65E9CBFL,0xB65E9CBFL,0xB65E9CBFL}, // p_1336->g_183
        &p_1336->g_119, // p_1336->g_185
        &p_1336->g_34, // p_1336->g_201
        &p_1336->g_201, // p_1336->g_200
        &p_1336->g_200, // p_1336->g_199
        &p_1336->g_155, // p_1336->g_219
        &p_1336->g_155, // p_1336->g_246
        {0x0F0A8D83L,9UL,7L,0x2611923DL,-6L,0x90D6L,0x6CL,0L,0x4A15AD26L}, // p_1336->g_247
        0x718FB740L, // p_1336->g_272
        (void*)0, // p_1336->g_276
        {{&p_1336->g_155,&p_1336->g_155,&p_1336->g_155,&p_1336->g_155,&p_1336->g_155,&p_1336->g_155,&p_1336->g_155,&p_1336->g_155},{&p_1336->g_155,&p_1336->g_155,&p_1336->g_155,&p_1336->g_155,&p_1336->g_155,&p_1336->g_155,&p_1336->g_155,&p_1336->g_155}}, // p_1336->g_277
        &p_1336->g_155, // p_1336->g_278
        {0x3E2DB5A4L,0x82BEE0BDL,0x6FFEF48FCCC5028FL,0x0C87D4D6L,0x2B4BL,0UL,-1L,0x03L,0x15847E23L}, // p_1336->g_289
        0x3C90DC91D79C7BE1L, // p_1336->g_296
        (VECTOR(int64_t, 8))((-9L), (VECTOR(int64_t, 4))((-9L), (VECTOR(int64_t, 2))((-9L), 0x09D009ECB4A04C56L), 0x09D009ECB4A04C56L), 0x09D009ECB4A04C56L, (-9L), 0x09D009ECB4A04C56L), // p_1336->g_302
        (VECTOR(int64_t, 2))((-2L), 0x47AEAD1E694F64F7L), // p_1336->g_304
        {0x0F8EA3BAL,4294967294UL,-1L,0x13D80213L,-1L,0x5CF5L,0x14L,-4L,0x2A05710CL}, // p_1336->g_322
        {{&p_1336->g_322,&p_1336->g_322,&p_1336->g_322},{&p_1336->g_322,&p_1336->g_322,&p_1336->g_322},{&p_1336->g_322,&p_1336->g_322,&p_1336->g_322}}, // p_1336->g_323
        (VECTOR(uint8_t, 4))(0x34L, (VECTOR(uint8_t, 2))(0x34L, 0xB6L), 0xB6L), // p_1336->g_327
        (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 0xA0L), 0xA0L), // p_1336->g_328
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 255UL), 255UL), // p_1336->g_329
        (VECTOR(uint8_t, 4))(0x08L, (VECTOR(uint8_t, 2))(0x08L, 0x03L), 0x03L), // p_1336->g_331
        &p_1336->g_155, // p_1336->g_333
        (VECTOR(uint32_t, 2))(1UL, 0x88550158L), // p_1336->g_350
        (VECTOR(int16_t, 16))(0x1E5DL, (VECTOR(int16_t, 4))(0x1E5DL, (VECTOR(int16_t, 2))(0x1E5DL, 0x62AFL), 0x62AFL), 0x62AFL, 0x1E5DL, 0x62AFL, (VECTOR(int16_t, 2))(0x1E5DL, 0x62AFL), (VECTOR(int16_t, 2))(0x1E5DL, 0x62AFL), 0x1E5DL, 0x62AFL, 0x1E5DL, 0x62AFL), // p_1336->g_373
        {2L,0xAFD9003BL,-7L,0x63768666L,-1L,0xB8A7L,0x50L,0x52L,1L}, // p_1336->g_389
        {0x421D1FC7L,0x736D51D9L,0x295681E31CB51CF7L,8L,-3L,65535UL,0x12L,0x7CL,-1L}, // p_1336->g_398
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x76L), 0x76L), 0x76L, (-1L), 0x76L, (VECTOR(int8_t, 2))((-1L), 0x76L), (VECTOR(int8_t, 2))((-1L), 0x76L), (-1L), 0x76L, (-1L), 0x76L), // p_1336->g_406
        (VECTOR(int8_t, 8))(0x50L, (VECTOR(int8_t, 4))(0x50L, (VECTOR(int8_t, 2))(0x50L, 0L), 0L), 0L, 0x50L, 0L), // p_1336->g_407
        0x608F9413L, // p_1336->g_420
        &p_1336->g_155, // p_1336->g_428
        {0x177BDA85L,0x5505BE66L,0x460219F34C849F60L,5L,0x3582L,0xC93CL,0x73L,0x41L,0x4351D37DL}, // p_1336->g_431
        &p_1336->g_431, // p_1336->g_432
        &p_1336->g_431.f5, // p_1336->g_443
        &p_1336->g_443, // p_1336->g_442
        (void*)0, // p_1336->g_448
        (void*)0, // p_1336->g_449
        (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x6374C6DCBF0AD8FDL), 0x6374C6DCBF0AD8FDL), // p_1336->g_487
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x5A04B163L), 0x5A04B163L), 0x5A04B163L, 1L, 0x5A04B163L), // p_1336->g_511
        (VECTOR(int16_t, 8))(6L, (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 0L), 0L), 0L, 6L, 0L), // p_1336->g_513
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0UL), 0UL), // p_1336->g_515
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65534UL), 65534UL), // p_1336->g_516
        (VECTOR(uint16_t, 2))(0xBF08L, 7UL), // p_1336->g_517
        (VECTOR(uint16_t, 2))(7UL, 9UL), // p_1336->g_525
        (VECTOR(uint32_t, 16))(0x6167BED3L, (VECTOR(uint32_t, 4))(0x6167BED3L, (VECTOR(uint32_t, 2))(0x6167BED3L, 3UL), 3UL), 3UL, 0x6167BED3L, 3UL, (VECTOR(uint32_t, 2))(0x6167BED3L, 3UL), (VECTOR(uint32_t, 2))(0x6167BED3L, 3UL), 0x6167BED3L, 3UL, 0x6167BED3L, 3UL), // p_1336->g_541
        0x29L, // p_1336->g_578
        0x0EFAL, // p_1336->g_589
        (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 7UL), 7UL), // p_1336->g_595
        (void*)0, // p_1336->g_597
        &p_1336->g_597, // p_1336->g_596
        &p_1336->g_289.f5, // p_1336->g_636
        &p_1336->g_636, // p_1336->g_635
        &p_1336->g_155, // p_1336->g_646
        &p_1336->g_155, // p_1336->g_657
        &p_1336->g_155, // p_1336->g_658
        {&p_1336->g_155}, // p_1336->g_662
        (VECTOR(int8_t, 4))(0x45L, (VECTOR(int8_t, 2))(0x45L, 1L), 1L), // p_1336->g_671
        (VECTOR(uint32_t, 2))(4294967291UL, 4294967290UL), // p_1336->g_684
        {0x52A788B9L,4294967295UL,-1L,0x68E79553L,0x2371L,65531UL,1L,0x78L,-4L}, // p_1336->g_685
        (void*)0, // p_1336->g_689
        (void*)0, // p_1336->g_774
        &p_1336->g_774, // p_1336->g_773
        {&p_1336->g_199,&p_1336->g_199,&p_1336->g_199,&p_1336->g_199,&p_1336->g_199,&p_1336->g_199}, // p_1336->g_777
        (VECTOR(int32_t, 16))(0x1F5503E0L, (VECTOR(int32_t, 4))(0x1F5503E0L, (VECTOR(int32_t, 2))(0x1F5503E0L, 0x5E496A11L), 0x5E496A11L), 0x5E496A11L, 0x1F5503E0L, 0x5E496A11L, (VECTOR(int32_t, 2))(0x1F5503E0L, 0x5E496A11L), (VECTOR(int32_t, 2))(0x1F5503E0L, 0x5E496A11L), 0x1F5503E0L, 0x5E496A11L, 0x1F5503E0L, 0x5E496A11L), // p_1336->g_781
        (VECTOR(uint8_t, 16))(0xF5L, (VECTOR(uint8_t, 4))(0xF5L, (VECTOR(uint8_t, 2))(0xF5L, 0x8EL), 0x8EL), 0x8EL, 0xF5L, 0x8EL, (VECTOR(uint8_t, 2))(0xF5L, 0x8EL), (VECTOR(uint8_t, 2))(0xF5L, 0x8EL), 0xF5L, 0x8EL, 0xF5L, 0x8EL), // p_1336->g_787
        {0x3CD0EA6BL,0x0F297127L,-1L,9L,1L,0xA6E6L,-5L,0L,0x548EEB6FL}, // p_1336->g_794
        (VECTOR(uint16_t, 16))(65530UL, (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 4UL), 4UL), 4UL, 65530UL, 4UL, (VECTOR(uint16_t, 2))(65530UL, 4UL), (VECTOR(uint16_t, 2))(65530UL, 4UL), 65530UL, 4UL, 65530UL, 4UL), // p_1336->g_801
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_1336->g_807
        &p_1336->g_807[1], // p_1336->g_806
        &p_1336->g_155, // p_1336->g_821
        {0x4752F24BL,0xAA344227L,-2L,0x55F6B595L,-4L,0x7363L,0x1DL,0x74L,8L}, // p_1336->g_831
        {{0x6BC257FFL,0x3A93AD90L,0L,2L,0x3E4CL,1UL,1L,6L,-1L}}, // p_1336->g_834
        {-1L,6UL,4L,0L,0L,65535UL,-9L,1L,1L}, // p_1336->g_835
        {&p_1336->g_834[0],&p_1336->g_834[0],&p_1336->g_834[0],&p_1336->g_834[0],&p_1336->g_834[0]}, // p_1336->g_833
        {0L,0L}, // p_1336->g_837
        &p_1336->g_39, // p_1336->g_839
        &p_1336->g_155, // p_1336->g_840
        &p_1336->g_49, // p_1336->g_860
        &p_1336->g_860, // p_1336->g_859
        (VECTOR(uint16_t, 16))(65529UL, (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 0x4ADDL), 0x4ADDL), 0x4ADDL, 65529UL, 0x4ADDL, (VECTOR(uint16_t, 2))(65529UL, 0x4ADDL), (VECTOR(uint16_t, 2))(65529UL, 0x4ADDL), 65529UL, 0x4ADDL, 65529UL, 0x4ADDL), // p_1336->g_919
        {0x216AAA34L,0xDC2DE173L,0L,0x7FA507EAL,0x49E3L,65534UL,0L,0x17L,0x2863FBFCL}, // p_1336->g_927
        {0x66110975L,0xC25CDDF5L,0x5854CAC21B62EE9AL,-4L,3L,0x9D48L,0x2AL,0x72L,0x0BC070C4L}, // p_1336->g_932
        {{{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}}},{{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}},{{0x6428BB47L,0xF50DE485L,-6L,-1L,0L,0xB520L,8L,0x70L,0L},{-8L,8UL,0x4464CA4B1FEFD7DFL,0x71EC99B5L,1L,0UL,0x7AL,1L,-3L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x7ABDFE04L,0x5A1C15720DEB3940L,0L,1L,65528UL,-1L,0x22L,0x3BFC40D4L},{1L,0x71052C37L,0x30D273A5F22599DFL,0x6DD3EC8BL,9L,0x278EL,0L,-4L,0L},{5L,1UL,0L,0L,-2L,0x5705L,0x39L,1L,0L},{7L,0x4A701E56L,-1L,0x74D644A9L,1L,0UL,-1L,-5L,1L}}}}, // p_1336->g_938
        (void*)0, // p_1336->g_939
        &p_1336->g_431, // p_1336->g_940
        (VECTOR(int8_t, 2))(1L, 0x0FL), // p_1336->g_966
        {1L,4UL,-3L,-1L,-1L,0x46B3L,0L,0L,1L}, // p_1336->g_972
        {-2L,0x3D1B6115L,0x7B1BA91FA2AD1DF1L,0x4BBC5A7EL,0x58B8L,0UL,0L,1L,1L}, // p_1336->g_982
        (VECTOR(uint8_t, 2))(0xEDL, 1UL), // p_1336->g_994
        (VECTOR(int64_t, 8))((-9L), (VECTOR(int64_t, 4))((-9L), (VECTOR(int64_t, 2))((-9L), 0x39C1FEB17A7BFC54L), 0x39C1FEB17A7BFC54L), 0x39C1FEB17A7BFC54L, (-9L), 0x39C1FEB17A7BFC54L), // p_1336->g_1000
        (VECTOR(int64_t, 16))(0x4452409A0024B459L, (VECTOR(int64_t, 4))(0x4452409A0024B459L, (VECTOR(int64_t, 2))(0x4452409A0024B459L, (-1L)), (-1L)), (-1L), 0x4452409A0024B459L, (-1L), (VECTOR(int64_t, 2))(0x4452409A0024B459L, (-1L)), (VECTOR(int64_t, 2))(0x4452409A0024B459L, (-1L)), 0x4452409A0024B459L, (-1L), 0x4452409A0024B459L, (-1L)), // p_1336->g_1004
        (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L)), // p_1336->g_1007
        0UL, // p_1336->g_1049
        (VECTOR(int16_t, 4))(0x115BL, (VECTOR(int16_t, 2))(0x115BL, 0x2D92L), 0x2D92L), // p_1336->g_1061
        {0x3E1F8052L,0x9D15B5F9L,0x7239223B6AB9FCB4L,0L,-8L,0x822DL,-1L,1L,1L}, // p_1336->g_1075
        {-4L,6UL,-10L,0x35A021E0L,-1L,65535UL,-4L,1L,0L}, // p_1336->g_1076
        {0x297BA879L,0xA14D7F4AL,0x6C0311C662ADA7A2L,0x200CC5C6L,0x31AEL,1UL,0x61L,0x49L,0x11E71FBCL}, // p_1336->g_1090
        (VECTOR(int32_t, 2))(0x09589026L, 0L), // p_1336->g_1092
        (VECTOR(int32_t, 4))(0x3A26C593L, (VECTOR(int32_t, 2))(0x3A26C593L, 0x197EA41CL), 0x197EA41CL), // p_1336->g_1095
        &p_1336->g_774, // p_1336->g_1117
        &p_1336->g_982.f1, // p_1336->g_1138
        &p_1336->g_1138, // p_1336->g_1137
        &p_1336->g_835.f1, // p_1336->g_1140
        &p_1336->g_1140, // p_1336->g_1139
        (VECTOR(int64_t, 4))(0x675C4F481D16F6E1L, (VECTOR(int64_t, 2))(0x675C4F481D16F6E1L, 0L), 0L), // p_1336->g_1159
        (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 6L), 6L), 6L, 1L, 6L), // p_1336->g_1161
        (VECTOR(int64_t, 2))((-1L), 4L), // p_1336->g_1170
        (VECTOR(int64_t, 16))(0x55D9C1FC4BE00747L, (VECTOR(int64_t, 4))(0x55D9C1FC4BE00747L, (VECTOR(int64_t, 2))(0x55D9C1FC4BE00747L, 0x54048A4FC047917EL), 0x54048A4FC047917EL), 0x54048A4FC047917EL, 0x55D9C1FC4BE00747L, 0x54048A4FC047917EL, (VECTOR(int64_t, 2))(0x55D9C1FC4BE00747L, 0x54048A4FC047917EL), (VECTOR(int64_t, 2))(0x55D9C1FC4BE00747L, 0x54048A4FC047917EL), 0x55D9C1FC4BE00747L, 0x54048A4FC047917EL, 0x55D9C1FC4BE00747L, 0x54048A4FC047917EL), // p_1336->g_1171
        (VECTOR(uint32_t, 4))(0x4518687FL, (VECTOR(uint32_t, 2))(0x4518687FL, 0x23A85316L), 0x23A85316L), // p_1336->g_1180
        (VECTOR(int64_t, 16))(0x74F8E70AE57B8537L, (VECTOR(int64_t, 4))(0x74F8E70AE57B8537L, (VECTOR(int64_t, 2))(0x74F8E70AE57B8537L, 0x1DB9ADD90EDA7E7CL), 0x1DB9ADD90EDA7E7CL), 0x1DB9ADD90EDA7E7CL, 0x74F8E70AE57B8537L, 0x1DB9ADD90EDA7E7CL, (VECTOR(int64_t, 2))(0x74F8E70AE57B8537L, 0x1DB9ADD90EDA7E7CL), (VECTOR(int64_t, 2))(0x74F8E70AE57B8537L, 0x1DB9ADD90EDA7E7CL), 0x74F8E70AE57B8537L, 0x1DB9ADD90EDA7E7CL, 0x74F8E70AE57B8537L, 0x1DB9ADD90EDA7E7CL), // p_1336->g_1187
        {7L,0xA54AAE1EL,-8L,0x06F23BA4L,1L,0xBBC6L,0x32L,8L,7L}, // p_1336->g_1203
        (VECTOR(uint16_t, 4))(0xC784L, (VECTOR(uint16_t, 2))(0xC784L, 3UL), 3UL), // p_1336->g_1225
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL), // p_1336->g_1229
        {0x1F3874F8L,0xA983EF86L,0x2C4CD9BD287F3DC8L,0x13C6BFE2L,0x373AL,0xFE6AL,0x46L,0x3CL,0L}, // p_1336->g_1234
        {0x2448A281L,0xDF0AE6FAL,0x1DB0F499FBAB21C5L,0x2E6C7880L,0x7A38L,0x6691L,0L,0x0CL,1L}, // p_1336->g_1247
        {{0x763C2239L,1UL,8L,1L,0x1A6BL,0x32EAL,0L,0x41L,0x611E619DL},{0x763C2239L,1UL,8L,1L,0x1A6BL,0x32EAL,0L,0x41L,0x611E619DL},{0x763C2239L,1UL,8L,1L,0x1A6BL,0x32EAL,0L,0x41L,0x611E619DL},{0x763C2239L,1UL,8L,1L,0x1A6BL,0x32EAL,0L,0x41L,0x611E619DL},{0x763C2239L,1UL,8L,1L,0x1A6BL,0x32EAL,0L,0x41L,0x611E619DL},{0x763C2239L,1UL,8L,1L,0x1A6BL,0x32EAL,0L,0x41L,0x611E619DL},{0x763C2239L,1UL,8L,1L,0x1A6BL,0x32EAL,0L,0x41L,0x611E619DL},{0x763C2239L,1UL,8L,1L,0x1A6BL,0x32EAL,0L,0x41L,0x611E619DL}}, // p_1336->g_1249
        0x15L, // p_1336->g_1273
        (VECTOR(uint16_t, 2))(0x96EEL, 0x502DL), // p_1336->g_1276
        (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL), // p_1336->g_1278
        (VECTOR(uint32_t, 8))(0x2EA5152CL, (VECTOR(uint32_t, 4))(0x2EA5152CL, (VECTOR(uint32_t, 2))(0x2EA5152CL, 0x5D62F1DFL), 0x5D62F1DFL), 0x5D62F1DFL, 0x2EA5152CL, 0x5D62F1DFL), // p_1336->g_1285
        {{(void*)0,(void*)0,&p_1336->g_1049,&p_1336->g_1049,(void*)0},{(void*)0,(void*)0,&p_1336->g_1049,&p_1336->g_1049,(void*)0},{(void*)0,(void*)0,&p_1336->g_1049,&p_1336->g_1049,(void*)0},{(void*)0,(void*)0,&p_1336->g_1049,&p_1336->g_1049,(void*)0},{(void*)0,(void*)0,&p_1336->g_1049,&p_1336->g_1049,(void*)0},{(void*)0,(void*)0,&p_1336->g_1049,&p_1336->g_1049,(void*)0},{(void*)0,(void*)0,&p_1336->g_1049,&p_1336->g_1049,(void*)0}}, // p_1336->g_1317
        &p_1336->g_1317[0][2], // p_1336->g_1316
        &p_1336->g_1316, // p_1336->g_1315
        {{{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0}},{{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0}},{{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0}},{{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0}},{{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0}},{{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0},{&p_1336->g_1315,(void*)0,&p_1336->g_1315,(void*)0,(void*)0}}}, // p_1336->g_1314
        (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x1C6DC38C268C5FDEL), 0x1C6DC38C268C5FDEL), 0x1C6DC38C268C5FDEL, 1UL, 0x1C6DC38C268C5FDEL, (VECTOR(uint64_t, 2))(1UL, 0x1C6DC38C268C5FDEL), (VECTOR(uint64_t, 2))(1UL, 0x1C6DC38C268C5FDEL), 1UL, 0x1C6DC38C268C5FDEL, 1UL, 0x1C6DC38C268C5FDEL), // p_1336->g_1319
        0x7AL, // p_1336->g_1334
        sequence_input[get_global_id(0)], // p_1336->global_0_offset
        sequence_input[get_global_id(1)], // p_1336->global_1_offset
        sequence_input[get_global_id(2)], // p_1336->global_2_offset
        sequence_input[get_local_id(0)], // p_1336->local_0_offset
        sequence_input[get_local_id(1)], // p_1336->local_1_offset
        sequence_input[get_local_id(2)], // p_1336->local_2_offset
        sequence_input[get_group_id(0)], // p_1336->group_0_offset
        sequence_input[get_group_id(1)], // p_1336->group_1_offset
        sequence_input[get_group_id(2)], // p_1336->group_2_offset
    };
    c_1337 = c_1338;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1336);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1336->g_2[i], "p_1336->g_2[i]", print_hash_value);

    }
    transparent_crc(p_1336->g_5, "p_1336->g_5", print_hash_value);
    transparent_crc(p_1336->g_6, "p_1336->g_6", print_hash_value);
    transparent_crc(p_1336->g_17.s0, "p_1336->g_17.s0", print_hash_value);
    transparent_crc(p_1336->g_17.s1, "p_1336->g_17.s1", print_hash_value);
    transparent_crc(p_1336->g_17.s2, "p_1336->g_17.s2", print_hash_value);
    transparent_crc(p_1336->g_17.s3, "p_1336->g_17.s3", print_hash_value);
    transparent_crc(p_1336->g_17.s4, "p_1336->g_17.s4", print_hash_value);
    transparent_crc(p_1336->g_17.s5, "p_1336->g_17.s5", print_hash_value);
    transparent_crc(p_1336->g_17.s6, "p_1336->g_17.s6", print_hash_value);
    transparent_crc(p_1336->g_17.s7, "p_1336->g_17.s7", print_hash_value);
    transparent_crc(p_1336->g_19.x, "p_1336->g_19.x", print_hash_value);
    transparent_crc(p_1336->g_19.y, "p_1336->g_19.y", print_hash_value);
    transparent_crc(p_1336->g_19.z, "p_1336->g_19.z", print_hash_value);
    transparent_crc(p_1336->g_19.w, "p_1336->g_19.w", print_hash_value);
    transparent_crc(p_1336->g_39, "p_1336->g_39", print_hash_value);
    transparent_crc(p_1336->g_42, "p_1336->g_42", print_hash_value);
    transparent_crc(p_1336->g_49, "p_1336->g_49", print_hash_value);
    transparent_crc(p_1336->g_63.x, "p_1336->g_63.x", print_hash_value);
    transparent_crc(p_1336->g_63.y, "p_1336->g_63.y", print_hash_value);
    transparent_crc(p_1336->g_63.z, "p_1336->g_63.z", print_hash_value);
    transparent_crc(p_1336->g_63.w, "p_1336->g_63.w", print_hash_value);
    transparent_crc(p_1336->g_87.x, "p_1336->g_87.x", print_hash_value);
    transparent_crc(p_1336->g_87.y, "p_1336->g_87.y", print_hash_value);
    transparent_crc(p_1336->g_103.f0, "p_1336->g_103.f0", print_hash_value);
    transparent_crc(p_1336->g_103.f1, "p_1336->g_103.f1", print_hash_value);
    transparent_crc(p_1336->g_103.f2, "p_1336->g_103.f2", print_hash_value);
    transparent_crc(p_1336->g_103.f3, "p_1336->g_103.f3", print_hash_value);
    transparent_crc(p_1336->g_103.f4, "p_1336->g_103.f4", print_hash_value);
    transparent_crc(p_1336->g_103.f5, "p_1336->g_103.f5", print_hash_value);
    transparent_crc(p_1336->g_103.f6, "p_1336->g_103.f6", print_hash_value);
    transparent_crc(p_1336->g_103.f7, "p_1336->g_103.f7", print_hash_value);
    transparent_crc(p_1336->g_103.f8, "p_1336->g_103.f8", print_hash_value);
    transparent_crc(p_1336->g_110.x, "p_1336->g_110.x", print_hash_value);
    transparent_crc(p_1336->g_110.y, "p_1336->g_110.y", print_hash_value);
    transparent_crc(p_1336->g_119, "p_1336->g_119", print_hash_value);
    transparent_crc(p_1336->g_120.s0, "p_1336->g_120.s0", print_hash_value);
    transparent_crc(p_1336->g_120.s1, "p_1336->g_120.s1", print_hash_value);
    transparent_crc(p_1336->g_120.s2, "p_1336->g_120.s2", print_hash_value);
    transparent_crc(p_1336->g_120.s3, "p_1336->g_120.s3", print_hash_value);
    transparent_crc(p_1336->g_120.s4, "p_1336->g_120.s4", print_hash_value);
    transparent_crc(p_1336->g_120.s5, "p_1336->g_120.s5", print_hash_value);
    transparent_crc(p_1336->g_120.s6, "p_1336->g_120.s6", print_hash_value);
    transparent_crc(p_1336->g_120.s7, "p_1336->g_120.s7", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1336->g_134[i], "p_1336->g_134[i]", print_hash_value);

    }
    transparent_crc(p_1336->g_174, "p_1336->g_174", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1336->g_183[i], "p_1336->g_183[i]", print_hash_value);

    }
    transparent_crc(p_1336->g_247.f0, "p_1336->g_247.f0", print_hash_value);
    transparent_crc(p_1336->g_247.f1, "p_1336->g_247.f1", print_hash_value);
    transparent_crc(p_1336->g_247.f2, "p_1336->g_247.f2", print_hash_value);
    transparent_crc(p_1336->g_247.f3, "p_1336->g_247.f3", print_hash_value);
    transparent_crc(p_1336->g_247.f4, "p_1336->g_247.f4", print_hash_value);
    transparent_crc(p_1336->g_247.f5, "p_1336->g_247.f5", print_hash_value);
    transparent_crc(p_1336->g_247.f6, "p_1336->g_247.f6", print_hash_value);
    transparent_crc(p_1336->g_247.f7, "p_1336->g_247.f7", print_hash_value);
    transparent_crc(p_1336->g_247.f8, "p_1336->g_247.f8", print_hash_value);
    transparent_crc(p_1336->g_272, "p_1336->g_272", print_hash_value);
    transparent_crc(p_1336->g_289.f0, "p_1336->g_289.f0", print_hash_value);
    transparent_crc(p_1336->g_289.f1, "p_1336->g_289.f1", print_hash_value);
    transparent_crc(p_1336->g_289.f2, "p_1336->g_289.f2", print_hash_value);
    transparent_crc(p_1336->g_289.f3, "p_1336->g_289.f3", print_hash_value);
    transparent_crc(p_1336->g_289.f4, "p_1336->g_289.f4", print_hash_value);
    transparent_crc(p_1336->g_289.f5, "p_1336->g_289.f5", print_hash_value);
    transparent_crc(p_1336->g_289.f6, "p_1336->g_289.f6", print_hash_value);
    transparent_crc(p_1336->g_289.f7, "p_1336->g_289.f7", print_hash_value);
    transparent_crc(p_1336->g_289.f8, "p_1336->g_289.f8", print_hash_value);
    transparent_crc(p_1336->g_296, "p_1336->g_296", print_hash_value);
    transparent_crc(p_1336->g_302.s0, "p_1336->g_302.s0", print_hash_value);
    transparent_crc(p_1336->g_302.s1, "p_1336->g_302.s1", print_hash_value);
    transparent_crc(p_1336->g_302.s2, "p_1336->g_302.s2", print_hash_value);
    transparent_crc(p_1336->g_302.s3, "p_1336->g_302.s3", print_hash_value);
    transparent_crc(p_1336->g_302.s4, "p_1336->g_302.s4", print_hash_value);
    transparent_crc(p_1336->g_302.s5, "p_1336->g_302.s5", print_hash_value);
    transparent_crc(p_1336->g_302.s6, "p_1336->g_302.s6", print_hash_value);
    transparent_crc(p_1336->g_302.s7, "p_1336->g_302.s7", print_hash_value);
    transparent_crc(p_1336->g_304.x, "p_1336->g_304.x", print_hash_value);
    transparent_crc(p_1336->g_304.y, "p_1336->g_304.y", print_hash_value);
    transparent_crc(p_1336->g_322.f0, "p_1336->g_322.f0", print_hash_value);
    transparent_crc(p_1336->g_322.f1, "p_1336->g_322.f1", print_hash_value);
    transparent_crc(p_1336->g_322.f2, "p_1336->g_322.f2", print_hash_value);
    transparent_crc(p_1336->g_322.f3, "p_1336->g_322.f3", print_hash_value);
    transparent_crc(p_1336->g_322.f4, "p_1336->g_322.f4", print_hash_value);
    transparent_crc(p_1336->g_322.f5, "p_1336->g_322.f5", print_hash_value);
    transparent_crc(p_1336->g_322.f6, "p_1336->g_322.f6", print_hash_value);
    transparent_crc(p_1336->g_322.f7, "p_1336->g_322.f7", print_hash_value);
    transparent_crc(p_1336->g_322.f8, "p_1336->g_322.f8", print_hash_value);
    transparent_crc(p_1336->g_327.x, "p_1336->g_327.x", print_hash_value);
    transparent_crc(p_1336->g_327.y, "p_1336->g_327.y", print_hash_value);
    transparent_crc(p_1336->g_327.z, "p_1336->g_327.z", print_hash_value);
    transparent_crc(p_1336->g_327.w, "p_1336->g_327.w", print_hash_value);
    transparent_crc(p_1336->g_328.x, "p_1336->g_328.x", print_hash_value);
    transparent_crc(p_1336->g_328.y, "p_1336->g_328.y", print_hash_value);
    transparent_crc(p_1336->g_328.z, "p_1336->g_328.z", print_hash_value);
    transparent_crc(p_1336->g_328.w, "p_1336->g_328.w", print_hash_value);
    transparent_crc(p_1336->g_329.x, "p_1336->g_329.x", print_hash_value);
    transparent_crc(p_1336->g_329.y, "p_1336->g_329.y", print_hash_value);
    transparent_crc(p_1336->g_329.z, "p_1336->g_329.z", print_hash_value);
    transparent_crc(p_1336->g_329.w, "p_1336->g_329.w", print_hash_value);
    transparent_crc(p_1336->g_331.x, "p_1336->g_331.x", print_hash_value);
    transparent_crc(p_1336->g_331.y, "p_1336->g_331.y", print_hash_value);
    transparent_crc(p_1336->g_331.z, "p_1336->g_331.z", print_hash_value);
    transparent_crc(p_1336->g_331.w, "p_1336->g_331.w", print_hash_value);
    transparent_crc(p_1336->g_350.x, "p_1336->g_350.x", print_hash_value);
    transparent_crc(p_1336->g_350.y, "p_1336->g_350.y", print_hash_value);
    transparent_crc(p_1336->g_373.s0, "p_1336->g_373.s0", print_hash_value);
    transparent_crc(p_1336->g_373.s1, "p_1336->g_373.s1", print_hash_value);
    transparent_crc(p_1336->g_373.s2, "p_1336->g_373.s2", print_hash_value);
    transparent_crc(p_1336->g_373.s3, "p_1336->g_373.s3", print_hash_value);
    transparent_crc(p_1336->g_373.s4, "p_1336->g_373.s4", print_hash_value);
    transparent_crc(p_1336->g_373.s5, "p_1336->g_373.s5", print_hash_value);
    transparent_crc(p_1336->g_373.s6, "p_1336->g_373.s6", print_hash_value);
    transparent_crc(p_1336->g_373.s7, "p_1336->g_373.s7", print_hash_value);
    transparent_crc(p_1336->g_373.s8, "p_1336->g_373.s8", print_hash_value);
    transparent_crc(p_1336->g_373.s9, "p_1336->g_373.s9", print_hash_value);
    transparent_crc(p_1336->g_373.sa, "p_1336->g_373.sa", print_hash_value);
    transparent_crc(p_1336->g_373.sb, "p_1336->g_373.sb", print_hash_value);
    transparent_crc(p_1336->g_373.sc, "p_1336->g_373.sc", print_hash_value);
    transparent_crc(p_1336->g_373.sd, "p_1336->g_373.sd", print_hash_value);
    transparent_crc(p_1336->g_373.se, "p_1336->g_373.se", print_hash_value);
    transparent_crc(p_1336->g_373.sf, "p_1336->g_373.sf", print_hash_value);
    transparent_crc(p_1336->g_389.f0, "p_1336->g_389.f0", print_hash_value);
    transparent_crc(p_1336->g_389.f1, "p_1336->g_389.f1", print_hash_value);
    transparent_crc(p_1336->g_389.f2, "p_1336->g_389.f2", print_hash_value);
    transparent_crc(p_1336->g_389.f3, "p_1336->g_389.f3", print_hash_value);
    transparent_crc(p_1336->g_389.f4, "p_1336->g_389.f4", print_hash_value);
    transparent_crc(p_1336->g_389.f5, "p_1336->g_389.f5", print_hash_value);
    transparent_crc(p_1336->g_389.f6, "p_1336->g_389.f6", print_hash_value);
    transparent_crc(p_1336->g_389.f7, "p_1336->g_389.f7", print_hash_value);
    transparent_crc(p_1336->g_389.f8, "p_1336->g_389.f8", print_hash_value);
    transparent_crc(p_1336->g_398.f0, "p_1336->g_398.f0", print_hash_value);
    transparent_crc(p_1336->g_398.f1, "p_1336->g_398.f1", print_hash_value);
    transparent_crc(p_1336->g_398.f2, "p_1336->g_398.f2", print_hash_value);
    transparent_crc(p_1336->g_398.f3, "p_1336->g_398.f3", print_hash_value);
    transparent_crc(p_1336->g_398.f4, "p_1336->g_398.f4", print_hash_value);
    transparent_crc(p_1336->g_398.f5, "p_1336->g_398.f5", print_hash_value);
    transparent_crc(p_1336->g_398.f6, "p_1336->g_398.f6", print_hash_value);
    transparent_crc(p_1336->g_398.f7, "p_1336->g_398.f7", print_hash_value);
    transparent_crc(p_1336->g_398.f8, "p_1336->g_398.f8", print_hash_value);
    transparent_crc(p_1336->g_406.s0, "p_1336->g_406.s0", print_hash_value);
    transparent_crc(p_1336->g_406.s1, "p_1336->g_406.s1", print_hash_value);
    transparent_crc(p_1336->g_406.s2, "p_1336->g_406.s2", print_hash_value);
    transparent_crc(p_1336->g_406.s3, "p_1336->g_406.s3", print_hash_value);
    transparent_crc(p_1336->g_406.s4, "p_1336->g_406.s4", print_hash_value);
    transparent_crc(p_1336->g_406.s5, "p_1336->g_406.s5", print_hash_value);
    transparent_crc(p_1336->g_406.s6, "p_1336->g_406.s6", print_hash_value);
    transparent_crc(p_1336->g_406.s7, "p_1336->g_406.s7", print_hash_value);
    transparent_crc(p_1336->g_406.s8, "p_1336->g_406.s8", print_hash_value);
    transparent_crc(p_1336->g_406.s9, "p_1336->g_406.s9", print_hash_value);
    transparent_crc(p_1336->g_406.sa, "p_1336->g_406.sa", print_hash_value);
    transparent_crc(p_1336->g_406.sb, "p_1336->g_406.sb", print_hash_value);
    transparent_crc(p_1336->g_406.sc, "p_1336->g_406.sc", print_hash_value);
    transparent_crc(p_1336->g_406.sd, "p_1336->g_406.sd", print_hash_value);
    transparent_crc(p_1336->g_406.se, "p_1336->g_406.se", print_hash_value);
    transparent_crc(p_1336->g_406.sf, "p_1336->g_406.sf", print_hash_value);
    transparent_crc(p_1336->g_407.s0, "p_1336->g_407.s0", print_hash_value);
    transparent_crc(p_1336->g_407.s1, "p_1336->g_407.s1", print_hash_value);
    transparent_crc(p_1336->g_407.s2, "p_1336->g_407.s2", print_hash_value);
    transparent_crc(p_1336->g_407.s3, "p_1336->g_407.s3", print_hash_value);
    transparent_crc(p_1336->g_407.s4, "p_1336->g_407.s4", print_hash_value);
    transparent_crc(p_1336->g_407.s5, "p_1336->g_407.s5", print_hash_value);
    transparent_crc(p_1336->g_407.s6, "p_1336->g_407.s6", print_hash_value);
    transparent_crc(p_1336->g_407.s7, "p_1336->g_407.s7", print_hash_value);
    transparent_crc(p_1336->g_420, "p_1336->g_420", print_hash_value);
    transparent_crc(p_1336->g_431.f0, "p_1336->g_431.f0", print_hash_value);
    transparent_crc(p_1336->g_431.f1, "p_1336->g_431.f1", print_hash_value);
    transparent_crc(p_1336->g_431.f2, "p_1336->g_431.f2", print_hash_value);
    transparent_crc(p_1336->g_431.f3, "p_1336->g_431.f3", print_hash_value);
    transparent_crc(p_1336->g_431.f4, "p_1336->g_431.f4", print_hash_value);
    transparent_crc(p_1336->g_431.f5, "p_1336->g_431.f5", print_hash_value);
    transparent_crc(p_1336->g_431.f6, "p_1336->g_431.f6", print_hash_value);
    transparent_crc(p_1336->g_431.f7, "p_1336->g_431.f7", print_hash_value);
    transparent_crc(p_1336->g_431.f8, "p_1336->g_431.f8", print_hash_value);
    transparent_crc(p_1336->g_487.x, "p_1336->g_487.x", print_hash_value);
    transparent_crc(p_1336->g_487.y, "p_1336->g_487.y", print_hash_value);
    transparent_crc(p_1336->g_487.z, "p_1336->g_487.z", print_hash_value);
    transparent_crc(p_1336->g_487.w, "p_1336->g_487.w", print_hash_value);
    transparent_crc(p_1336->g_511.s0, "p_1336->g_511.s0", print_hash_value);
    transparent_crc(p_1336->g_511.s1, "p_1336->g_511.s1", print_hash_value);
    transparent_crc(p_1336->g_511.s2, "p_1336->g_511.s2", print_hash_value);
    transparent_crc(p_1336->g_511.s3, "p_1336->g_511.s3", print_hash_value);
    transparent_crc(p_1336->g_511.s4, "p_1336->g_511.s4", print_hash_value);
    transparent_crc(p_1336->g_511.s5, "p_1336->g_511.s5", print_hash_value);
    transparent_crc(p_1336->g_511.s6, "p_1336->g_511.s6", print_hash_value);
    transparent_crc(p_1336->g_511.s7, "p_1336->g_511.s7", print_hash_value);
    transparent_crc(p_1336->g_513.s0, "p_1336->g_513.s0", print_hash_value);
    transparent_crc(p_1336->g_513.s1, "p_1336->g_513.s1", print_hash_value);
    transparent_crc(p_1336->g_513.s2, "p_1336->g_513.s2", print_hash_value);
    transparent_crc(p_1336->g_513.s3, "p_1336->g_513.s3", print_hash_value);
    transparent_crc(p_1336->g_513.s4, "p_1336->g_513.s4", print_hash_value);
    transparent_crc(p_1336->g_513.s5, "p_1336->g_513.s5", print_hash_value);
    transparent_crc(p_1336->g_513.s6, "p_1336->g_513.s6", print_hash_value);
    transparent_crc(p_1336->g_513.s7, "p_1336->g_513.s7", print_hash_value);
    transparent_crc(p_1336->g_515.x, "p_1336->g_515.x", print_hash_value);
    transparent_crc(p_1336->g_515.y, "p_1336->g_515.y", print_hash_value);
    transparent_crc(p_1336->g_515.z, "p_1336->g_515.z", print_hash_value);
    transparent_crc(p_1336->g_515.w, "p_1336->g_515.w", print_hash_value);
    transparent_crc(p_1336->g_516.x, "p_1336->g_516.x", print_hash_value);
    transparent_crc(p_1336->g_516.y, "p_1336->g_516.y", print_hash_value);
    transparent_crc(p_1336->g_516.z, "p_1336->g_516.z", print_hash_value);
    transparent_crc(p_1336->g_516.w, "p_1336->g_516.w", print_hash_value);
    transparent_crc(p_1336->g_517.x, "p_1336->g_517.x", print_hash_value);
    transparent_crc(p_1336->g_517.y, "p_1336->g_517.y", print_hash_value);
    transparent_crc(p_1336->g_525.x, "p_1336->g_525.x", print_hash_value);
    transparent_crc(p_1336->g_525.y, "p_1336->g_525.y", print_hash_value);
    transparent_crc(p_1336->g_541.s0, "p_1336->g_541.s0", print_hash_value);
    transparent_crc(p_1336->g_541.s1, "p_1336->g_541.s1", print_hash_value);
    transparent_crc(p_1336->g_541.s2, "p_1336->g_541.s2", print_hash_value);
    transparent_crc(p_1336->g_541.s3, "p_1336->g_541.s3", print_hash_value);
    transparent_crc(p_1336->g_541.s4, "p_1336->g_541.s4", print_hash_value);
    transparent_crc(p_1336->g_541.s5, "p_1336->g_541.s5", print_hash_value);
    transparent_crc(p_1336->g_541.s6, "p_1336->g_541.s6", print_hash_value);
    transparent_crc(p_1336->g_541.s7, "p_1336->g_541.s7", print_hash_value);
    transparent_crc(p_1336->g_541.s8, "p_1336->g_541.s8", print_hash_value);
    transparent_crc(p_1336->g_541.s9, "p_1336->g_541.s9", print_hash_value);
    transparent_crc(p_1336->g_541.sa, "p_1336->g_541.sa", print_hash_value);
    transparent_crc(p_1336->g_541.sb, "p_1336->g_541.sb", print_hash_value);
    transparent_crc(p_1336->g_541.sc, "p_1336->g_541.sc", print_hash_value);
    transparent_crc(p_1336->g_541.sd, "p_1336->g_541.sd", print_hash_value);
    transparent_crc(p_1336->g_541.se, "p_1336->g_541.se", print_hash_value);
    transparent_crc(p_1336->g_541.sf, "p_1336->g_541.sf", print_hash_value);
    transparent_crc(p_1336->g_578, "p_1336->g_578", print_hash_value);
    transparent_crc(p_1336->g_589, "p_1336->g_589", print_hash_value);
    transparent_crc(p_1336->g_595.x, "p_1336->g_595.x", print_hash_value);
    transparent_crc(p_1336->g_595.y, "p_1336->g_595.y", print_hash_value);
    transparent_crc(p_1336->g_595.z, "p_1336->g_595.z", print_hash_value);
    transparent_crc(p_1336->g_595.w, "p_1336->g_595.w", print_hash_value);
    transparent_crc(p_1336->g_671.x, "p_1336->g_671.x", print_hash_value);
    transparent_crc(p_1336->g_671.y, "p_1336->g_671.y", print_hash_value);
    transparent_crc(p_1336->g_671.z, "p_1336->g_671.z", print_hash_value);
    transparent_crc(p_1336->g_671.w, "p_1336->g_671.w", print_hash_value);
    transparent_crc(p_1336->g_684.x, "p_1336->g_684.x", print_hash_value);
    transparent_crc(p_1336->g_684.y, "p_1336->g_684.y", print_hash_value);
    transparent_crc(p_1336->g_685.f0, "p_1336->g_685.f0", print_hash_value);
    transparent_crc(p_1336->g_685.f1, "p_1336->g_685.f1", print_hash_value);
    transparent_crc(p_1336->g_685.f2, "p_1336->g_685.f2", print_hash_value);
    transparent_crc(p_1336->g_685.f3, "p_1336->g_685.f3", print_hash_value);
    transparent_crc(p_1336->g_685.f4, "p_1336->g_685.f4", print_hash_value);
    transparent_crc(p_1336->g_685.f5, "p_1336->g_685.f5", print_hash_value);
    transparent_crc(p_1336->g_685.f6, "p_1336->g_685.f6", print_hash_value);
    transparent_crc(p_1336->g_685.f7, "p_1336->g_685.f7", print_hash_value);
    transparent_crc(p_1336->g_685.f8, "p_1336->g_685.f8", print_hash_value);
    transparent_crc(p_1336->g_781.s0, "p_1336->g_781.s0", print_hash_value);
    transparent_crc(p_1336->g_781.s1, "p_1336->g_781.s1", print_hash_value);
    transparent_crc(p_1336->g_781.s2, "p_1336->g_781.s2", print_hash_value);
    transparent_crc(p_1336->g_781.s3, "p_1336->g_781.s3", print_hash_value);
    transparent_crc(p_1336->g_781.s4, "p_1336->g_781.s4", print_hash_value);
    transparent_crc(p_1336->g_781.s5, "p_1336->g_781.s5", print_hash_value);
    transparent_crc(p_1336->g_781.s6, "p_1336->g_781.s6", print_hash_value);
    transparent_crc(p_1336->g_781.s7, "p_1336->g_781.s7", print_hash_value);
    transparent_crc(p_1336->g_781.s8, "p_1336->g_781.s8", print_hash_value);
    transparent_crc(p_1336->g_781.s9, "p_1336->g_781.s9", print_hash_value);
    transparent_crc(p_1336->g_781.sa, "p_1336->g_781.sa", print_hash_value);
    transparent_crc(p_1336->g_781.sb, "p_1336->g_781.sb", print_hash_value);
    transparent_crc(p_1336->g_781.sc, "p_1336->g_781.sc", print_hash_value);
    transparent_crc(p_1336->g_781.sd, "p_1336->g_781.sd", print_hash_value);
    transparent_crc(p_1336->g_781.se, "p_1336->g_781.se", print_hash_value);
    transparent_crc(p_1336->g_781.sf, "p_1336->g_781.sf", print_hash_value);
    transparent_crc(p_1336->g_787.s0, "p_1336->g_787.s0", print_hash_value);
    transparent_crc(p_1336->g_787.s1, "p_1336->g_787.s1", print_hash_value);
    transparent_crc(p_1336->g_787.s2, "p_1336->g_787.s2", print_hash_value);
    transparent_crc(p_1336->g_787.s3, "p_1336->g_787.s3", print_hash_value);
    transparent_crc(p_1336->g_787.s4, "p_1336->g_787.s4", print_hash_value);
    transparent_crc(p_1336->g_787.s5, "p_1336->g_787.s5", print_hash_value);
    transparent_crc(p_1336->g_787.s6, "p_1336->g_787.s6", print_hash_value);
    transparent_crc(p_1336->g_787.s7, "p_1336->g_787.s7", print_hash_value);
    transparent_crc(p_1336->g_787.s8, "p_1336->g_787.s8", print_hash_value);
    transparent_crc(p_1336->g_787.s9, "p_1336->g_787.s9", print_hash_value);
    transparent_crc(p_1336->g_787.sa, "p_1336->g_787.sa", print_hash_value);
    transparent_crc(p_1336->g_787.sb, "p_1336->g_787.sb", print_hash_value);
    transparent_crc(p_1336->g_787.sc, "p_1336->g_787.sc", print_hash_value);
    transparent_crc(p_1336->g_787.sd, "p_1336->g_787.sd", print_hash_value);
    transparent_crc(p_1336->g_787.se, "p_1336->g_787.se", print_hash_value);
    transparent_crc(p_1336->g_787.sf, "p_1336->g_787.sf", print_hash_value);
    transparent_crc(p_1336->g_794.f0, "p_1336->g_794.f0", print_hash_value);
    transparent_crc(p_1336->g_794.f1, "p_1336->g_794.f1", print_hash_value);
    transparent_crc(p_1336->g_794.f2, "p_1336->g_794.f2", print_hash_value);
    transparent_crc(p_1336->g_794.f3, "p_1336->g_794.f3", print_hash_value);
    transparent_crc(p_1336->g_794.f4, "p_1336->g_794.f4", print_hash_value);
    transparent_crc(p_1336->g_794.f5, "p_1336->g_794.f5", print_hash_value);
    transparent_crc(p_1336->g_794.f6, "p_1336->g_794.f6", print_hash_value);
    transparent_crc(p_1336->g_794.f7, "p_1336->g_794.f7", print_hash_value);
    transparent_crc(p_1336->g_794.f8, "p_1336->g_794.f8", print_hash_value);
    transparent_crc(p_1336->g_801.s0, "p_1336->g_801.s0", print_hash_value);
    transparent_crc(p_1336->g_801.s1, "p_1336->g_801.s1", print_hash_value);
    transparent_crc(p_1336->g_801.s2, "p_1336->g_801.s2", print_hash_value);
    transparent_crc(p_1336->g_801.s3, "p_1336->g_801.s3", print_hash_value);
    transparent_crc(p_1336->g_801.s4, "p_1336->g_801.s4", print_hash_value);
    transparent_crc(p_1336->g_801.s5, "p_1336->g_801.s5", print_hash_value);
    transparent_crc(p_1336->g_801.s6, "p_1336->g_801.s6", print_hash_value);
    transparent_crc(p_1336->g_801.s7, "p_1336->g_801.s7", print_hash_value);
    transparent_crc(p_1336->g_801.s8, "p_1336->g_801.s8", print_hash_value);
    transparent_crc(p_1336->g_801.s9, "p_1336->g_801.s9", print_hash_value);
    transparent_crc(p_1336->g_801.sa, "p_1336->g_801.sa", print_hash_value);
    transparent_crc(p_1336->g_801.sb, "p_1336->g_801.sb", print_hash_value);
    transparent_crc(p_1336->g_801.sc, "p_1336->g_801.sc", print_hash_value);
    transparent_crc(p_1336->g_801.sd, "p_1336->g_801.sd", print_hash_value);
    transparent_crc(p_1336->g_801.se, "p_1336->g_801.se", print_hash_value);
    transparent_crc(p_1336->g_801.sf, "p_1336->g_801.sf", print_hash_value);
    transparent_crc(p_1336->g_831.f0, "p_1336->g_831.f0", print_hash_value);
    transparent_crc(p_1336->g_831.f1, "p_1336->g_831.f1", print_hash_value);
    transparent_crc(p_1336->g_831.f2, "p_1336->g_831.f2", print_hash_value);
    transparent_crc(p_1336->g_831.f3, "p_1336->g_831.f3", print_hash_value);
    transparent_crc(p_1336->g_831.f4, "p_1336->g_831.f4", print_hash_value);
    transparent_crc(p_1336->g_831.f5, "p_1336->g_831.f5", print_hash_value);
    transparent_crc(p_1336->g_831.f6, "p_1336->g_831.f6", print_hash_value);
    transparent_crc(p_1336->g_831.f7, "p_1336->g_831.f7", print_hash_value);
    transparent_crc(p_1336->g_831.f8, "p_1336->g_831.f8", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1336->g_834[i].f0, "p_1336->g_834[i].f0", print_hash_value);
        transparent_crc(p_1336->g_834[i].f1, "p_1336->g_834[i].f1", print_hash_value);
        transparent_crc(p_1336->g_834[i].f2, "p_1336->g_834[i].f2", print_hash_value);
        transparent_crc(p_1336->g_834[i].f3, "p_1336->g_834[i].f3", print_hash_value);
        transparent_crc(p_1336->g_834[i].f4, "p_1336->g_834[i].f4", print_hash_value);
        transparent_crc(p_1336->g_834[i].f5, "p_1336->g_834[i].f5", print_hash_value);
        transparent_crc(p_1336->g_834[i].f6, "p_1336->g_834[i].f6", print_hash_value);
        transparent_crc(p_1336->g_834[i].f7, "p_1336->g_834[i].f7", print_hash_value);
        transparent_crc(p_1336->g_834[i].f8, "p_1336->g_834[i].f8", print_hash_value);

    }
    transparent_crc(p_1336->g_835.f0, "p_1336->g_835.f0", print_hash_value);
    transparent_crc(p_1336->g_835.f1, "p_1336->g_835.f1", print_hash_value);
    transparent_crc(p_1336->g_835.f2, "p_1336->g_835.f2", print_hash_value);
    transparent_crc(p_1336->g_835.f3, "p_1336->g_835.f3", print_hash_value);
    transparent_crc(p_1336->g_835.f4, "p_1336->g_835.f4", print_hash_value);
    transparent_crc(p_1336->g_835.f5, "p_1336->g_835.f5", print_hash_value);
    transparent_crc(p_1336->g_835.f6, "p_1336->g_835.f6", print_hash_value);
    transparent_crc(p_1336->g_835.f7, "p_1336->g_835.f7", print_hash_value);
    transparent_crc(p_1336->g_835.f8, "p_1336->g_835.f8", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1336->g_837[i], "p_1336->g_837[i]", print_hash_value);

    }
    transparent_crc(p_1336->g_919.s0, "p_1336->g_919.s0", print_hash_value);
    transparent_crc(p_1336->g_919.s1, "p_1336->g_919.s1", print_hash_value);
    transparent_crc(p_1336->g_919.s2, "p_1336->g_919.s2", print_hash_value);
    transparent_crc(p_1336->g_919.s3, "p_1336->g_919.s3", print_hash_value);
    transparent_crc(p_1336->g_919.s4, "p_1336->g_919.s4", print_hash_value);
    transparent_crc(p_1336->g_919.s5, "p_1336->g_919.s5", print_hash_value);
    transparent_crc(p_1336->g_919.s6, "p_1336->g_919.s6", print_hash_value);
    transparent_crc(p_1336->g_919.s7, "p_1336->g_919.s7", print_hash_value);
    transparent_crc(p_1336->g_919.s8, "p_1336->g_919.s8", print_hash_value);
    transparent_crc(p_1336->g_919.s9, "p_1336->g_919.s9", print_hash_value);
    transparent_crc(p_1336->g_919.sa, "p_1336->g_919.sa", print_hash_value);
    transparent_crc(p_1336->g_919.sb, "p_1336->g_919.sb", print_hash_value);
    transparent_crc(p_1336->g_919.sc, "p_1336->g_919.sc", print_hash_value);
    transparent_crc(p_1336->g_919.sd, "p_1336->g_919.sd", print_hash_value);
    transparent_crc(p_1336->g_919.se, "p_1336->g_919.se", print_hash_value);
    transparent_crc(p_1336->g_919.sf, "p_1336->g_919.sf", print_hash_value);
    transparent_crc(p_1336->g_927.f0, "p_1336->g_927.f0", print_hash_value);
    transparent_crc(p_1336->g_927.f1, "p_1336->g_927.f1", print_hash_value);
    transparent_crc(p_1336->g_927.f2, "p_1336->g_927.f2", print_hash_value);
    transparent_crc(p_1336->g_927.f3, "p_1336->g_927.f3", print_hash_value);
    transparent_crc(p_1336->g_927.f4, "p_1336->g_927.f4", print_hash_value);
    transparent_crc(p_1336->g_927.f5, "p_1336->g_927.f5", print_hash_value);
    transparent_crc(p_1336->g_927.f6, "p_1336->g_927.f6", print_hash_value);
    transparent_crc(p_1336->g_927.f7, "p_1336->g_927.f7", print_hash_value);
    transparent_crc(p_1336->g_927.f8, "p_1336->g_927.f8", print_hash_value);
    transparent_crc(p_1336->g_932.f0, "p_1336->g_932.f0", print_hash_value);
    transparent_crc(p_1336->g_932.f1, "p_1336->g_932.f1", print_hash_value);
    transparent_crc(p_1336->g_932.f2, "p_1336->g_932.f2", print_hash_value);
    transparent_crc(p_1336->g_932.f3, "p_1336->g_932.f3", print_hash_value);
    transparent_crc(p_1336->g_932.f4, "p_1336->g_932.f4", print_hash_value);
    transparent_crc(p_1336->g_932.f5, "p_1336->g_932.f5", print_hash_value);
    transparent_crc(p_1336->g_932.f6, "p_1336->g_932.f6", print_hash_value);
    transparent_crc(p_1336->g_932.f7, "p_1336->g_932.f7", print_hash_value);
    transparent_crc(p_1336->g_932.f8, "p_1336->g_932.f8", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_1336->g_938[i][j][k].f0, "p_1336->g_938[i][j][k].f0", print_hash_value);
                transparent_crc(p_1336->g_938[i][j][k].f1, "p_1336->g_938[i][j][k].f1", print_hash_value);
                transparent_crc(p_1336->g_938[i][j][k].f2, "p_1336->g_938[i][j][k].f2", print_hash_value);
                transparent_crc(p_1336->g_938[i][j][k].f3, "p_1336->g_938[i][j][k].f3", print_hash_value);
                transparent_crc(p_1336->g_938[i][j][k].f4, "p_1336->g_938[i][j][k].f4", print_hash_value);
                transparent_crc(p_1336->g_938[i][j][k].f5, "p_1336->g_938[i][j][k].f5", print_hash_value);
                transparent_crc(p_1336->g_938[i][j][k].f6, "p_1336->g_938[i][j][k].f6", print_hash_value);
                transparent_crc(p_1336->g_938[i][j][k].f7, "p_1336->g_938[i][j][k].f7", print_hash_value);
                transparent_crc(p_1336->g_938[i][j][k].f8, "p_1336->g_938[i][j][k].f8", print_hash_value);

            }
        }
    }
    transparent_crc(p_1336->g_966.x, "p_1336->g_966.x", print_hash_value);
    transparent_crc(p_1336->g_966.y, "p_1336->g_966.y", print_hash_value);
    transparent_crc(p_1336->g_972.f0, "p_1336->g_972.f0", print_hash_value);
    transparent_crc(p_1336->g_972.f1, "p_1336->g_972.f1", print_hash_value);
    transparent_crc(p_1336->g_972.f2, "p_1336->g_972.f2", print_hash_value);
    transparent_crc(p_1336->g_972.f3, "p_1336->g_972.f3", print_hash_value);
    transparent_crc(p_1336->g_972.f4, "p_1336->g_972.f4", print_hash_value);
    transparent_crc(p_1336->g_972.f5, "p_1336->g_972.f5", print_hash_value);
    transparent_crc(p_1336->g_972.f6, "p_1336->g_972.f6", print_hash_value);
    transparent_crc(p_1336->g_972.f7, "p_1336->g_972.f7", print_hash_value);
    transparent_crc(p_1336->g_972.f8, "p_1336->g_972.f8", print_hash_value);
    transparent_crc(p_1336->g_982.f0, "p_1336->g_982.f0", print_hash_value);
    transparent_crc(p_1336->g_982.f1, "p_1336->g_982.f1", print_hash_value);
    transparent_crc(p_1336->g_982.f2, "p_1336->g_982.f2", print_hash_value);
    transparent_crc(p_1336->g_982.f3, "p_1336->g_982.f3", print_hash_value);
    transparent_crc(p_1336->g_982.f4, "p_1336->g_982.f4", print_hash_value);
    transparent_crc(p_1336->g_982.f5, "p_1336->g_982.f5", print_hash_value);
    transparent_crc(p_1336->g_982.f6, "p_1336->g_982.f6", print_hash_value);
    transparent_crc(p_1336->g_982.f7, "p_1336->g_982.f7", print_hash_value);
    transparent_crc(p_1336->g_982.f8, "p_1336->g_982.f8", print_hash_value);
    transparent_crc(p_1336->g_994.x, "p_1336->g_994.x", print_hash_value);
    transparent_crc(p_1336->g_994.y, "p_1336->g_994.y", print_hash_value);
    transparent_crc(p_1336->g_1000.s0, "p_1336->g_1000.s0", print_hash_value);
    transparent_crc(p_1336->g_1000.s1, "p_1336->g_1000.s1", print_hash_value);
    transparent_crc(p_1336->g_1000.s2, "p_1336->g_1000.s2", print_hash_value);
    transparent_crc(p_1336->g_1000.s3, "p_1336->g_1000.s3", print_hash_value);
    transparent_crc(p_1336->g_1000.s4, "p_1336->g_1000.s4", print_hash_value);
    transparent_crc(p_1336->g_1000.s5, "p_1336->g_1000.s5", print_hash_value);
    transparent_crc(p_1336->g_1000.s6, "p_1336->g_1000.s6", print_hash_value);
    transparent_crc(p_1336->g_1000.s7, "p_1336->g_1000.s7", print_hash_value);
    transparent_crc(p_1336->g_1004.s0, "p_1336->g_1004.s0", print_hash_value);
    transparent_crc(p_1336->g_1004.s1, "p_1336->g_1004.s1", print_hash_value);
    transparent_crc(p_1336->g_1004.s2, "p_1336->g_1004.s2", print_hash_value);
    transparent_crc(p_1336->g_1004.s3, "p_1336->g_1004.s3", print_hash_value);
    transparent_crc(p_1336->g_1004.s4, "p_1336->g_1004.s4", print_hash_value);
    transparent_crc(p_1336->g_1004.s5, "p_1336->g_1004.s5", print_hash_value);
    transparent_crc(p_1336->g_1004.s6, "p_1336->g_1004.s6", print_hash_value);
    transparent_crc(p_1336->g_1004.s7, "p_1336->g_1004.s7", print_hash_value);
    transparent_crc(p_1336->g_1004.s8, "p_1336->g_1004.s8", print_hash_value);
    transparent_crc(p_1336->g_1004.s9, "p_1336->g_1004.s9", print_hash_value);
    transparent_crc(p_1336->g_1004.sa, "p_1336->g_1004.sa", print_hash_value);
    transparent_crc(p_1336->g_1004.sb, "p_1336->g_1004.sb", print_hash_value);
    transparent_crc(p_1336->g_1004.sc, "p_1336->g_1004.sc", print_hash_value);
    transparent_crc(p_1336->g_1004.sd, "p_1336->g_1004.sd", print_hash_value);
    transparent_crc(p_1336->g_1004.se, "p_1336->g_1004.se", print_hash_value);
    transparent_crc(p_1336->g_1004.sf, "p_1336->g_1004.sf", print_hash_value);
    transparent_crc(p_1336->g_1007.s0, "p_1336->g_1007.s0", print_hash_value);
    transparent_crc(p_1336->g_1007.s1, "p_1336->g_1007.s1", print_hash_value);
    transparent_crc(p_1336->g_1007.s2, "p_1336->g_1007.s2", print_hash_value);
    transparent_crc(p_1336->g_1007.s3, "p_1336->g_1007.s3", print_hash_value);
    transparent_crc(p_1336->g_1007.s4, "p_1336->g_1007.s4", print_hash_value);
    transparent_crc(p_1336->g_1007.s5, "p_1336->g_1007.s5", print_hash_value);
    transparent_crc(p_1336->g_1007.s6, "p_1336->g_1007.s6", print_hash_value);
    transparent_crc(p_1336->g_1007.s7, "p_1336->g_1007.s7", print_hash_value);
    transparent_crc(p_1336->g_1049, "p_1336->g_1049", print_hash_value);
    transparent_crc(p_1336->g_1061.x, "p_1336->g_1061.x", print_hash_value);
    transparent_crc(p_1336->g_1061.y, "p_1336->g_1061.y", print_hash_value);
    transparent_crc(p_1336->g_1061.z, "p_1336->g_1061.z", print_hash_value);
    transparent_crc(p_1336->g_1061.w, "p_1336->g_1061.w", print_hash_value);
    transparent_crc(p_1336->g_1075.f0, "p_1336->g_1075.f0", print_hash_value);
    transparent_crc(p_1336->g_1075.f1, "p_1336->g_1075.f1", print_hash_value);
    transparent_crc(p_1336->g_1075.f2, "p_1336->g_1075.f2", print_hash_value);
    transparent_crc(p_1336->g_1075.f3, "p_1336->g_1075.f3", print_hash_value);
    transparent_crc(p_1336->g_1075.f4, "p_1336->g_1075.f4", print_hash_value);
    transparent_crc(p_1336->g_1075.f5, "p_1336->g_1075.f5", print_hash_value);
    transparent_crc(p_1336->g_1075.f6, "p_1336->g_1075.f6", print_hash_value);
    transparent_crc(p_1336->g_1075.f7, "p_1336->g_1075.f7", print_hash_value);
    transparent_crc(p_1336->g_1075.f8, "p_1336->g_1075.f8", print_hash_value);
    transparent_crc(p_1336->g_1076.f0, "p_1336->g_1076.f0", print_hash_value);
    transparent_crc(p_1336->g_1076.f1, "p_1336->g_1076.f1", print_hash_value);
    transparent_crc(p_1336->g_1076.f2, "p_1336->g_1076.f2", print_hash_value);
    transparent_crc(p_1336->g_1076.f3, "p_1336->g_1076.f3", print_hash_value);
    transparent_crc(p_1336->g_1076.f4, "p_1336->g_1076.f4", print_hash_value);
    transparent_crc(p_1336->g_1076.f5, "p_1336->g_1076.f5", print_hash_value);
    transparent_crc(p_1336->g_1076.f6, "p_1336->g_1076.f6", print_hash_value);
    transparent_crc(p_1336->g_1076.f7, "p_1336->g_1076.f7", print_hash_value);
    transparent_crc(p_1336->g_1076.f8, "p_1336->g_1076.f8", print_hash_value);
    transparent_crc(p_1336->g_1090.f0, "p_1336->g_1090.f0", print_hash_value);
    transparent_crc(p_1336->g_1090.f1, "p_1336->g_1090.f1", print_hash_value);
    transparent_crc(p_1336->g_1090.f2, "p_1336->g_1090.f2", print_hash_value);
    transparent_crc(p_1336->g_1090.f3, "p_1336->g_1090.f3", print_hash_value);
    transparent_crc(p_1336->g_1090.f4, "p_1336->g_1090.f4", print_hash_value);
    transparent_crc(p_1336->g_1090.f5, "p_1336->g_1090.f5", print_hash_value);
    transparent_crc(p_1336->g_1090.f6, "p_1336->g_1090.f6", print_hash_value);
    transparent_crc(p_1336->g_1090.f7, "p_1336->g_1090.f7", print_hash_value);
    transparent_crc(p_1336->g_1090.f8, "p_1336->g_1090.f8", print_hash_value);
    transparent_crc(p_1336->g_1092.x, "p_1336->g_1092.x", print_hash_value);
    transparent_crc(p_1336->g_1092.y, "p_1336->g_1092.y", print_hash_value);
    transparent_crc(p_1336->g_1095.x, "p_1336->g_1095.x", print_hash_value);
    transparent_crc(p_1336->g_1095.y, "p_1336->g_1095.y", print_hash_value);
    transparent_crc(p_1336->g_1095.z, "p_1336->g_1095.z", print_hash_value);
    transparent_crc(p_1336->g_1095.w, "p_1336->g_1095.w", print_hash_value);
    transparent_crc(p_1336->g_1159.x, "p_1336->g_1159.x", print_hash_value);
    transparent_crc(p_1336->g_1159.y, "p_1336->g_1159.y", print_hash_value);
    transparent_crc(p_1336->g_1159.z, "p_1336->g_1159.z", print_hash_value);
    transparent_crc(p_1336->g_1159.w, "p_1336->g_1159.w", print_hash_value);
    transparent_crc(p_1336->g_1161.s0, "p_1336->g_1161.s0", print_hash_value);
    transparent_crc(p_1336->g_1161.s1, "p_1336->g_1161.s1", print_hash_value);
    transparent_crc(p_1336->g_1161.s2, "p_1336->g_1161.s2", print_hash_value);
    transparent_crc(p_1336->g_1161.s3, "p_1336->g_1161.s3", print_hash_value);
    transparent_crc(p_1336->g_1161.s4, "p_1336->g_1161.s4", print_hash_value);
    transparent_crc(p_1336->g_1161.s5, "p_1336->g_1161.s5", print_hash_value);
    transparent_crc(p_1336->g_1161.s6, "p_1336->g_1161.s6", print_hash_value);
    transparent_crc(p_1336->g_1161.s7, "p_1336->g_1161.s7", print_hash_value);
    transparent_crc(p_1336->g_1170.x, "p_1336->g_1170.x", print_hash_value);
    transparent_crc(p_1336->g_1170.y, "p_1336->g_1170.y", print_hash_value);
    transparent_crc(p_1336->g_1171.s0, "p_1336->g_1171.s0", print_hash_value);
    transparent_crc(p_1336->g_1171.s1, "p_1336->g_1171.s1", print_hash_value);
    transparent_crc(p_1336->g_1171.s2, "p_1336->g_1171.s2", print_hash_value);
    transparent_crc(p_1336->g_1171.s3, "p_1336->g_1171.s3", print_hash_value);
    transparent_crc(p_1336->g_1171.s4, "p_1336->g_1171.s4", print_hash_value);
    transparent_crc(p_1336->g_1171.s5, "p_1336->g_1171.s5", print_hash_value);
    transparent_crc(p_1336->g_1171.s6, "p_1336->g_1171.s6", print_hash_value);
    transparent_crc(p_1336->g_1171.s7, "p_1336->g_1171.s7", print_hash_value);
    transparent_crc(p_1336->g_1171.s8, "p_1336->g_1171.s8", print_hash_value);
    transparent_crc(p_1336->g_1171.s9, "p_1336->g_1171.s9", print_hash_value);
    transparent_crc(p_1336->g_1171.sa, "p_1336->g_1171.sa", print_hash_value);
    transparent_crc(p_1336->g_1171.sb, "p_1336->g_1171.sb", print_hash_value);
    transparent_crc(p_1336->g_1171.sc, "p_1336->g_1171.sc", print_hash_value);
    transparent_crc(p_1336->g_1171.sd, "p_1336->g_1171.sd", print_hash_value);
    transparent_crc(p_1336->g_1171.se, "p_1336->g_1171.se", print_hash_value);
    transparent_crc(p_1336->g_1171.sf, "p_1336->g_1171.sf", print_hash_value);
    transparent_crc(p_1336->g_1180.x, "p_1336->g_1180.x", print_hash_value);
    transparent_crc(p_1336->g_1180.y, "p_1336->g_1180.y", print_hash_value);
    transparent_crc(p_1336->g_1180.z, "p_1336->g_1180.z", print_hash_value);
    transparent_crc(p_1336->g_1180.w, "p_1336->g_1180.w", print_hash_value);
    transparent_crc(p_1336->g_1187.s0, "p_1336->g_1187.s0", print_hash_value);
    transparent_crc(p_1336->g_1187.s1, "p_1336->g_1187.s1", print_hash_value);
    transparent_crc(p_1336->g_1187.s2, "p_1336->g_1187.s2", print_hash_value);
    transparent_crc(p_1336->g_1187.s3, "p_1336->g_1187.s3", print_hash_value);
    transparent_crc(p_1336->g_1187.s4, "p_1336->g_1187.s4", print_hash_value);
    transparent_crc(p_1336->g_1187.s5, "p_1336->g_1187.s5", print_hash_value);
    transparent_crc(p_1336->g_1187.s6, "p_1336->g_1187.s6", print_hash_value);
    transparent_crc(p_1336->g_1187.s7, "p_1336->g_1187.s7", print_hash_value);
    transparent_crc(p_1336->g_1187.s8, "p_1336->g_1187.s8", print_hash_value);
    transparent_crc(p_1336->g_1187.s9, "p_1336->g_1187.s9", print_hash_value);
    transparent_crc(p_1336->g_1187.sa, "p_1336->g_1187.sa", print_hash_value);
    transparent_crc(p_1336->g_1187.sb, "p_1336->g_1187.sb", print_hash_value);
    transparent_crc(p_1336->g_1187.sc, "p_1336->g_1187.sc", print_hash_value);
    transparent_crc(p_1336->g_1187.sd, "p_1336->g_1187.sd", print_hash_value);
    transparent_crc(p_1336->g_1187.se, "p_1336->g_1187.se", print_hash_value);
    transparent_crc(p_1336->g_1187.sf, "p_1336->g_1187.sf", print_hash_value);
    transparent_crc(p_1336->g_1203.f0, "p_1336->g_1203.f0", print_hash_value);
    transparent_crc(p_1336->g_1203.f1, "p_1336->g_1203.f1", print_hash_value);
    transparent_crc(p_1336->g_1203.f2, "p_1336->g_1203.f2", print_hash_value);
    transparent_crc(p_1336->g_1203.f3, "p_1336->g_1203.f3", print_hash_value);
    transparent_crc(p_1336->g_1203.f4, "p_1336->g_1203.f4", print_hash_value);
    transparent_crc(p_1336->g_1203.f5, "p_1336->g_1203.f5", print_hash_value);
    transparent_crc(p_1336->g_1203.f6, "p_1336->g_1203.f6", print_hash_value);
    transparent_crc(p_1336->g_1203.f7, "p_1336->g_1203.f7", print_hash_value);
    transparent_crc(p_1336->g_1203.f8, "p_1336->g_1203.f8", print_hash_value);
    transparent_crc(p_1336->g_1225.x, "p_1336->g_1225.x", print_hash_value);
    transparent_crc(p_1336->g_1225.y, "p_1336->g_1225.y", print_hash_value);
    transparent_crc(p_1336->g_1225.z, "p_1336->g_1225.z", print_hash_value);
    transparent_crc(p_1336->g_1225.w, "p_1336->g_1225.w", print_hash_value);
    transparent_crc(p_1336->g_1229.s0, "p_1336->g_1229.s0", print_hash_value);
    transparent_crc(p_1336->g_1229.s1, "p_1336->g_1229.s1", print_hash_value);
    transparent_crc(p_1336->g_1229.s2, "p_1336->g_1229.s2", print_hash_value);
    transparent_crc(p_1336->g_1229.s3, "p_1336->g_1229.s3", print_hash_value);
    transparent_crc(p_1336->g_1229.s4, "p_1336->g_1229.s4", print_hash_value);
    transparent_crc(p_1336->g_1229.s5, "p_1336->g_1229.s5", print_hash_value);
    transparent_crc(p_1336->g_1229.s6, "p_1336->g_1229.s6", print_hash_value);
    transparent_crc(p_1336->g_1229.s7, "p_1336->g_1229.s7", print_hash_value);
    transparent_crc(p_1336->g_1234.f0, "p_1336->g_1234.f0", print_hash_value);
    transparent_crc(p_1336->g_1234.f1, "p_1336->g_1234.f1", print_hash_value);
    transparent_crc(p_1336->g_1234.f2, "p_1336->g_1234.f2", print_hash_value);
    transparent_crc(p_1336->g_1234.f3, "p_1336->g_1234.f3", print_hash_value);
    transparent_crc(p_1336->g_1234.f4, "p_1336->g_1234.f4", print_hash_value);
    transparent_crc(p_1336->g_1234.f5, "p_1336->g_1234.f5", print_hash_value);
    transparent_crc(p_1336->g_1234.f6, "p_1336->g_1234.f6", print_hash_value);
    transparent_crc(p_1336->g_1234.f7, "p_1336->g_1234.f7", print_hash_value);
    transparent_crc(p_1336->g_1234.f8, "p_1336->g_1234.f8", print_hash_value);
    transparent_crc(p_1336->g_1247.f0, "p_1336->g_1247.f0", print_hash_value);
    transparent_crc(p_1336->g_1247.f1, "p_1336->g_1247.f1", print_hash_value);
    transparent_crc(p_1336->g_1247.f2, "p_1336->g_1247.f2", print_hash_value);
    transparent_crc(p_1336->g_1247.f3, "p_1336->g_1247.f3", print_hash_value);
    transparent_crc(p_1336->g_1247.f4, "p_1336->g_1247.f4", print_hash_value);
    transparent_crc(p_1336->g_1247.f5, "p_1336->g_1247.f5", print_hash_value);
    transparent_crc(p_1336->g_1247.f6, "p_1336->g_1247.f6", print_hash_value);
    transparent_crc(p_1336->g_1247.f7, "p_1336->g_1247.f7", print_hash_value);
    transparent_crc(p_1336->g_1247.f8, "p_1336->g_1247.f8", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1336->g_1249[i].f0, "p_1336->g_1249[i].f0", print_hash_value);
        transparent_crc(p_1336->g_1249[i].f1, "p_1336->g_1249[i].f1", print_hash_value);
        transparent_crc(p_1336->g_1249[i].f2, "p_1336->g_1249[i].f2", print_hash_value);
        transparent_crc(p_1336->g_1249[i].f3, "p_1336->g_1249[i].f3", print_hash_value);
        transparent_crc(p_1336->g_1249[i].f4, "p_1336->g_1249[i].f4", print_hash_value);
        transparent_crc(p_1336->g_1249[i].f5, "p_1336->g_1249[i].f5", print_hash_value);
        transparent_crc(p_1336->g_1249[i].f6, "p_1336->g_1249[i].f6", print_hash_value);
        transparent_crc(p_1336->g_1249[i].f7, "p_1336->g_1249[i].f7", print_hash_value);
        transparent_crc(p_1336->g_1249[i].f8, "p_1336->g_1249[i].f8", print_hash_value);

    }
    transparent_crc(p_1336->g_1273, "p_1336->g_1273", print_hash_value);
    transparent_crc(p_1336->g_1276.x, "p_1336->g_1276.x", print_hash_value);
    transparent_crc(p_1336->g_1276.y, "p_1336->g_1276.y", print_hash_value);
    transparent_crc(p_1336->g_1278.s0, "p_1336->g_1278.s0", print_hash_value);
    transparent_crc(p_1336->g_1278.s1, "p_1336->g_1278.s1", print_hash_value);
    transparent_crc(p_1336->g_1278.s2, "p_1336->g_1278.s2", print_hash_value);
    transparent_crc(p_1336->g_1278.s3, "p_1336->g_1278.s3", print_hash_value);
    transparent_crc(p_1336->g_1278.s4, "p_1336->g_1278.s4", print_hash_value);
    transparent_crc(p_1336->g_1278.s5, "p_1336->g_1278.s5", print_hash_value);
    transparent_crc(p_1336->g_1278.s6, "p_1336->g_1278.s6", print_hash_value);
    transparent_crc(p_1336->g_1278.s7, "p_1336->g_1278.s7", print_hash_value);
    transparent_crc(p_1336->g_1278.s8, "p_1336->g_1278.s8", print_hash_value);
    transparent_crc(p_1336->g_1278.s9, "p_1336->g_1278.s9", print_hash_value);
    transparent_crc(p_1336->g_1278.sa, "p_1336->g_1278.sa", print_hash_value);
    transparent_crc(p_1336->g_1278.sb, "p_1336->g_1278.sb", print_hash_value);
    transparent_crc(p_1336->g_1278.sc, "p_1336->g_1278.sc", print_hash_value);
    transparent_crc(p_1336->g_1278.sd, "p_1336->g_1278.sd", print_hash_value);
    transparent_crc(p_1336->g_1278.se, "p_1336->g_1278.se", print_hash_value);
    transparent_crc(p_1336->g_1278.sf, "p_1336->g_1278.sf", print_hash_value);
    transparent_crc(p_1336->g_1285.s0, "p_1336->g_1285.s0", print_hash_value);
    transparent_crc(p_1336->g_1285.s1, "p_1336->g_1285.s1", print_hash_value);
    transparent_crc(p_1336->g_1285.s2, "p_1336->g_1285.s2", print_hash_value);
    transparent_crc(p_1336->g_1285.s3, "p_1336->g_1285.s3", print_hash_value);
    transparent_crc(p_1336->g_1285.s4, "p_1336->g_1285.s4", print_hash_value);
    transparent_crc(p_1336->g_1285.s5, "p_1336->g_1285.s5", print_hash_value);
    transparent_crc(p_1336->g_1285.s6, "p_1336->g_1285.s6", print_hash_value);
    transparent_crc(p_1336->g_1285.s7, "p_1336->g_1285.s7", print_hash_value);
    transparent_crc(p_1336->g_1319.s0, "p_1336->g_1319.s0", print_hash_value);
    transparent_crc(p_1336->g_1319.s1, "p_1336->g_1319.s1", print_hash_value);
    transparent_crc(p_1336->g_1319.s2, "p_1336->g_1319.s2", print_hash_value);
    transparent_crc(p_1336->g_1319.s3, "p_1336->g_1319.s3", print_hash_value);
    transparent_crc(p_1336->g_1319.s4, "p_1336->g_1319.s4", print_hash_value);
    transparent_crc(p_1336->g_1319.s5, "p_1336->g_1319.s5", print_hash_value);
    transparent_crc(p_1336->g_1319.s6, "p_1336->g_1319.s6", print_hash_value);
    transparent_crc(p_1336->g_1319.s7, "p_1336->g_1319.s7", print_hash_value);
    transparent_crc(p_1336->g_1319.s8, "p_1336->g_1319.s8", print_hash_value);
    transparent_crc(p_1336->g_1319.s9, "p_1336->g_1319.s9", print_hash_value);
    transparent_crc(p_1336->g_1319.sa, "p_1336->g_1319.sa", print_hash_value);
    transparent_crc(p_1336->g_1319.sb, "p_1336->g_1319.sb", print_hash_value);
    transparent_crc(p_1336->g_1319.sc, "p_1336->g_1319.sc", print_hash_value);
    transparent_crc(p_1336->g_1319.sd, "p_1336->g_1319.sd", print_hash_value);
    transparent_crc(p_1336->g_1319.se, "p_1336->g_1319.se", print_hash_value);
    transparent_crc(p_1336->g_1319.sf, "p_1336->g_1319.sf", print_hash_value);
    transparent_crc(p_1336->g_1334, "p_1336->g_1334", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
