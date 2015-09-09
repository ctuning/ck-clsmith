// ---atomic_reductions ---fake_divergence -g 10,43,19 -l 2,1,1
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


// Seed: 27

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile uint32_t  f0;
   int8_t  f1;
   volatile int32_t  f2;
   int16_t  f3;
};

union U1 {
   int32_t  f0;
   int8_t  f1;
   volatile uint32_t  f2;
   int16_t  f3;
};

struct S2 {
    int32_t g_4;
    int32_t *g_52;
    int32_t **g_51;
    uint8_t g_57;
    uint32_t g_64;
    uint32_t g_83[7];
    uint64_t g_88;
    int16_t g_93[6][7][1];
    uint16_t g_98[4][3][5];
    int64_t g_114[1][10];
    uint16_t g_117;
    int8_t g_119;
    union U0 g_138;
    int16_t g_140[8];
    int32_t g_142;
    volatile union U1 g_153;
    volatile uint64_t g_159;
    volatile uint64_t g_170[1];
    volatile int32_t g_175[1];
    int16_t g_177;
    volatile int32_t g_183;
    volatile union U0 g_193;
    uint16_t g_211;
    int8_t *** volatile g_214;
    volatile union U1 g_235;
    uint32_t g_238[8];
    int32_t *g_242;
    uint64_t * volatile g_244[6];
    uint64_t * volatile * volatile g_243;
    uint64_t * volatile * volatile * volatile g_245;
    uint64_t * volatile * volatile * volatile g_246[5][7][7];
    uint64_t * volatile * volatile * volatile g_247[4];
    uint64_t * volatile * volatile * volatile g_248;
    uint64_t g_263;
    volatile int8_t * volatile *g_265;
    uint64_t *g_323;
    uint64_t **g_322;
    int16_t *g_330[1][2][1];
    int16_t **g_329;
    uint16_t *g_354;
    uint16_t **g_353;
    uint16_t *** volatile g_355;
    union U0 g_362;
    union U1 g_365[10];
    union U1 ** volatile g_366;
    union U1 g_377;
    uint32_t g_386;
    int16_t * volatile ** volatile * volatile g_434;
    int32_t g_476[8][6];
    union U0 g_493;
    int32_t g_502;
    volatile int16_t g_507;
    int32_t g_514;
    int32_t g_556;
    union U1 g_557;
    volatile union U0 g_589;
    int8_t g_618;
    int32_t *g_641[3][3][3];
    union U0 *g_674;
    union U0 ** volatile g_673;
    volatile union U1 g_713;
    union U1 g_718;
    union U1 g_719;
    union U1 g_720[7][2];
    union U1 g_721;
    union U1 g_722[9];
    union U1 g_723;
    union U1 g_724;
    union U1 g_725[10];
    union U1 g_726;
    union U1 g_727[8][6];
    union U1 g_728;
    union U1 g_729;
    union U1 g_730;
    union U1 g_731[8];
    union U1 g_732[9][9][3];
    union U1 g_733;
    union U1 g_734;
    union U1 g_735;
    union U1 g_736;
    union U1 g_737[7];
    union U1 g_738;
    union U1 g_739[3][6][1];
    union U1 g_740;
    union U1 g_741;
    union U1 g_742[10][1];
    union U1 *g_717[5][6][7];
    union U1 **g_716;
    uint64_t g_772;
    union U1 g_779;
    volatile union U1 g_803;
    union U0 g_811[6];
    uint32_t g_837;
    int32_t g_853;
    int32_t g_861;
    union U0 g_881[7][1][4];
    volatile uint8_t g_904;
    volatile uint8_t *g_903[9];
    volatile uint8_t **g_902;
    union U1 g_921;
    union U0 g_991;
    union U0 g_1011;
    uint8_t g_1016;
    union U0 g_1019;
    volatile union U0 g_1048;
    uint16_t g_1063;
    volatile int64_t g_1091;
    union U0 g_1097[5][4];
    int64_t g_1103;
    volatile uint32_t g_1104;
    volatile union U1 g_1159[3];
    union U0 g_1160[4];
    volatile int32_t **g_1177[5];
    volatile int32_t ** volatile *g_1176;
    int32_t * volatile g_1181;
    volatile union U1 g_1250;
    uint32_t * volatile * volatile g_1251;
    union U0 g_1311;
    int32_t g_1322;
    volatile union U1 g_1342;
    volatile int32_t ** volatile *g_1365;
    volatile int32_t ** volatile **g_1364;
    union U0 g_1377;
    int32_t * volatile g_1393;
    union U0 g_1469;
    uint32_t **g_1498;
    uint32_t *g_1511;
    uint32_t **g_1510;
    uint32_t ***g_1509;
    volatile union U1 g_1541;
    int32_t **g_1573[5][5];
    int32_t ***g_1572;
    volatile int16_t g_1640;
    union U1 g_1653[5];
    union U1 g_1676;
    int64_t g_1694;
    union U1 g_1707;
    volatile int64_t g_1726;
    volatile int32_t * volatile *g_1752;
    uint8_t *g_1770;
    uint8_t **g_1769;
    uint8_t ** volatile *g_1768;
    uint8_t ** volatile ** volatile g_1767;
    volatile int32_t g_1814;
    volatile uint32_t g_1833[7][9];
    int8_t *g_1858[5][6][4];
    int8_t **g_1857;
    int8_t ***g_1856;
    int8_t ****g_1855[4];
    union U0 g_1900[6][1];
    volatile union U0 g_1918;
    union U1 g_1925;
    union U0 g_1967;
    union U0 g_1971;
    union U0 g_1973;
    union U0 *g_1972;
    volatile union U1 g_1987;
    volatile uint32_t * volatile *g_1992;
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
uint8_t  func_1(struct S2 * p_1997);
int8_t  func_12(int32_t  p_13, uint64_t  p_14, int32_t  p_15, struct S2 * p_1997);
int32_t * func_23(int32_t ** p_24, struct S2 * p_1997);
int32_t ** func_25(int32_t  p_26, struct S2 * p_1997);
int8_t  func_31(int32_t  p_32, int32_t * p_33, struct S2 * p_1997);
uint32_t  func_41(int32_t ** p_42, uint32_t  p_43, int32_t ** p_44, int32_t ** p_45, struct S2 * p_1997);
uint8_t  func_60(uint64_t  p_61, uint32_t  p_62, struct S2 * p_1997);
int64_t  func_65(int64_t  p_66, int16_t  p_67, int64_t  p_68, uint8_t * p_69, int16_t  p_70, struct S2 * p_1997);
uint32_t  func_73(int32_t  p_74, int32_t  p_75, int32_t  p_76, uint8_t * p_77, uint8_t * p_78, struct S2 * p_1997);
int32_t  func_79(uint32_t  p_80, int64_t  p_81, struct S2 * p_1997);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1997->g_4 p_1997->g_242 p_1997->g_1016 p_1997->g_323 p_1997->g_263 p_1997->g_353 p_1997->g_354 p_1997->g_329 p_1997->g_330 p_1997->g_1181 p_1997->g_476 p_1997->g_83 p_1997->g_98 p_1997->g_386 p_1997->g_142 p_1997->g_736.f0 p_1997->g_837 p_1997->g_51 p_1997->g_355 p_1997->g_728.f0 p_1997->g_322 p_1997->g_734.f0 p_1997->g_1393 p_1997->g_514 p_1997->g_1509 p_1997->g_52 p_1997->g_734.f1 p_1997->g_1653 p_1997->g_902 p_1997->g_903 p_1997->g_904 p_1997->g_713.f0 p_1997->g_377.f0 p_1997->g_211 p_1997->g_1377.f1 p_1997->g_779.f1 p_1997->g_739.f0 p_1997->g_803.f0 p_1997->g_1752 p_1997->g_1767 p_1997->g_119 p_1997->g_177 p_1997->g_716 p_1997->g_717 p_1997->g_502 p_1997->g_991.f1 p_1997->g_1833 p_1997->g_1322 p_1997->g_673 p_1997->g_674 p_1997->g_114 p_1997->g_618 p_1997->g_1987 p_1997->g_1768 p_1997->g_1769 p_1997->g_1992 p_1997->g_1510 p_1997->g_1572
 * writes: p_1997->g_4 p_1997->g_142 p_1997->g_1016 p_1997->g_263 p_1997->g_98 p_1997->g_177 p_1997->g_83 p_1997->g_736.f0 p_1997->g_57 p_1997->g_52 p_1997->g_734.f0 p_1997->g_1498 p_1997->g_1469.f3 p_1997->g_723.f1 p_1997->g_734.f1 p_1997->g_377.f0 p_1997->g_211 p_1997->g_1377.f1 p_1997->g_779.f1 p_1997->g_730.f1 p_1997->g_811.f3 p_1997->g_728.f1 p_1997->g_476 p_1997->g_991.f1 p_1997->g_921.f1 p_1997->g_242 p_1997->g_728.f0 p_1997->g_618 p_1997->g_64 p_1997->g_514 p_1997->g_1019.f3 p_1997->g_386 p_1997->g_731.f1 p_1997->g_1972 p_1997->g_1510 p_1997->g_1573 p_1997->g_740.f0 p_1997->g_674
 */
uint8_t  func_1(struct S2 * p_1997)
{ /* block id: 4 */
    int32_t *l_2 = (void*)0;
    int32_t *l_3 = &p_1997->g_4;
    uint32_t l_5 = 0x92F644ACL;
    int32_t **l_16 = &l_2;
    uint32_t l_1939 = 4294967288UL;
    uint16_t l_1940 = 65531UL;
    int64_t l_1949[8][10] = {{0x7DF7C9948B4631B1L,0x759D95BE81512A5CL,1L,(-7L),(-1L),2L,0L,(-3L),0L,2L},{0x7DF7C9948B4631B1L,0x759D95BE81512A5CL,1L,(-7L),(-1L),2L,0L,(-3L),0L,2L},{0x7DF7C9948B4631B1L,0x759D95BE81512A5CL,1L,(-7L),(-1L),2L,0L,(-3L),0L,2L},{0x7DF7C9948B4631B1L,0x759D95BE81512A5CL,1L,(-7L),(-1L),2L,0L,(-3L),0L,2L},{0x7DF7C9948B4631B1L,0x759D95BE81512A5CL,1L,(-7L),(-1L),2L,0L,(-3L),0L,2L},{0x7DF7C9948B4631B1L,0x759D95BE81512A5CL,1L,(-7L),(-1L),2L,0L,(-3L),0L,2L},{0x7DF7C9948B4631B1L,0x759D95BE81512A5CL,1L,(-7L),(-1L),2L,0L,(-3L),0L,2L},{0x7DF7C9948B4631B1L,0x759D95BE81512A5CL,1L,(-7L),(-1L),2L,0L,(-3L),0L,2L}};
    int32_t *l_1956 = &p_1997->g_1925.f0;
    int32_t l_1983 = 0x77A4D828L;
    union U0 **l_1996 = &p_1997->g_1972;
    int i, j;
    (*l_3) = 1L;
    if (((l_5 = p_1997->g_4) | ((safe_mod_func_uint32_t_u_u((p_1997->g_4 > (safe_div_func_uint32_t_u_u(((safe_lshift_func_int8_t_s_s(func_12((!(((*l_16) = &p_1997->g_4) == (void*)0)), p_1997->g_4, p_1997->g_4, p_1997), 4)) , (safe_add_func_uint8_t_u_u((safe_add_func_uint8_t_u_u(1UL, (safe_mod_func_int16_t_s_s((-1L), 0xC442L)))), l_1939))), (*l_3)))), (*l_3))) , l_1940)))
    { /* block id: 978 */
        uint32_t l_1943 = 1UL;
        uint32_t *l_1944 = &p_1997->g_386;
        int32_t ***l_1946 = &p_1997->g_51;
        int32_t ****l_1945[1][4][5] = {{{(void*)0,&l_1946,&l_1946,(void*)0,(void*)0},{(void*)0,&l_1946,&l_1946,(void*)0,(void*)0},{(void*)0,&l_1946,&l_1946,(void*)0,(void*)0},{(void*)0,&l_1946,&l_1946,(void*)0,(void*)0}}};
        int8_t *l_1947 = &p_1997->g_731[7].f1;
        int8_t ***l_1948 = &p_1997->g_1857;
        int i, j, k;
        l_1949[1][5] = (((((safe_rshift_func_uint16_t_u_u(l_1943, GROUP_DIVERGE(0, 1))) && (&p_1997->g_1365 != ((((*l_1944) = p_1997->g_4) , ((*p_1997->g_323) &= (*l_3))) , l_1945[0][1][3]))) || 0x7856418D5DA4DEDDL) , 0x73L) | (((*l_1947) = 0x66L) & ((FAKE_DIVERGE(p_1997->group_2_offset, get_group_id(2), 10) , (void*)0) == l_1948)));
    }
    else
    { /* block id: 983 */
        int32_t *l_1957 = &p_1997->g_740.f0;
        union U0 *l_1966 = &p_1997->g_1967;
        union U0 **l_1968 = &l_1966;
        union U0 *l_1970 = &p_1997->g_1971;
        union U0 **l_1969[7][2][10] = {{{&p_1997->g_674,&p_1997->g_674,&l_1970,&p_1997->g_674,&p_1997->g_674,&p_1997->g_674,(void*)0,&l_1970,&l_1970,&p_1997->g_674},{&p_1997->g_674,&p_1997->g_674,&l_1970,&p_1997->g_674,&p_1997->g_674,&p_1997->g_674,(void*)0,&l_1970,&l_1970,&p_1997->g_674}},{{&p_1997->g_674,&p_1997->g_674,&l_1970,&p_1997->g_674,&p_1997->g_674,&p_1997->g_674,(void*)0,&l_1970,&l_1970,&p_1997->g_674},{&p_1997->g_674,&p_1997->g_674,&l_1970,&p_1997->g_674,&p_1997->g_674,&p_1997->g_674,(void*)0,&l_1970,&l_1970,&p_1997->g_674}},{{&p_1997->g_674,&p_1997->g_674,&l_1970,&p_1997->g_674,&p_1997->g_674,&p_1997->g_674,(void*)0,&l_1970,&l_1970,&p_1997->g_674},{&p_1997->g_674,&p_1997->g_674,&l_1970,&p_1997->g_674,&p_1997->g_674,&p_1997->g_674,(void*)0,&l_1970,&l_1970,&p_1997->g_674}},{{&p_1997->g_674,&p_1997->g_674,&l_1970,&p_1997->g_674,&p_1997->g_674,&p_1997->g_674,(void*)0,&l_1970,&l_1970,&p_1997->g_674},{&p_1997->g_674,&p_1997->g_674,&l_1970,&p_1997->g_674,&p_1997->g_674,&p_1997->g_674,(void*)0,&l_1970,&l_1970,&p_1997->g_674}},{{&p_1997->g_674,&p_1997->g_674,&l_1970,&p_1997->g_674,&p_1997->g_674,&p_1997->g_674,(void*)0,&l_1970,&l_1970,&p_1997->g_674},{&p_1997->g_674,&p_1997->g_674,&l_1970,&p_1997->g_674,&p_1997->g_674,&p_1997->g_674,(void*)0,&l_1970,&l_1970,&p_1997->g_674}},{{&p_1997->g_674,&p_1997->g_674,&l_1970,&p_1997->g_674,&p_1997->g_674,&p_1997->g_674,(void*)0,&l_1970,&l_1970,&p_1997->g_674},{&p_1997->g_674,&p_1997->g_674,&l_1970,&p_1997->g_674,&p_1997->g_674,&p_1997->g_674,(void*)0,&l_1970,&l_1970,&p_1997->g_674}},{{&p_1997->g_674,&p_1997->g_674,&l_1970,&p_1997->g_674,&p_1997->g_674,&p_1997->g_674,(void*)0,&l_1970,&l_1970,&p_1997->g_674},{&p_1997->g_674,&p_1997->g_674,&l_1970,&p_1997->g_674,&p_1997->g_674,&p_1997->g_674,(void*)0,&l_1970,&l_1970,&p_1997->g_674}}};
        int32_t l_1978 = 0x3682075FL;
        int16_t *l_1979 = &p_1997->g_727[5][0].f3;
        int16_t *l_1980 = &p_1997->g_735.f3;
        int16_t *l_1981 = &p_1997->g_557.f3;
        int32_t l_1982[4][7][6] = {{{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL}},{{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL}},{{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL}},{{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL},{0x0DB3CF2EL,0L,0x0DB3CF2EL,0x0DB3CF2EL,0L,0x0DB3CF2EL}}};
        uint8_t *l_1986 = &p_1997->g_1016;
        uint8_t l_1995 = 0x09L;
        int i, j, k;
        l_1983 &= ((*p_1997->g_52) &= (((safe_add_func_int16_t_s_s((l_1982[3][2][5] &= (safe_mul_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((l_1956 == l_1957), 7)), ((safe_lshift_func_uint8_t_u_u((safe_sub_func_int16_t_s_s((safe_add_func_int8_t_s_s((((*p_1997->g_673) == (p_1997->g_1972 = ((p_1997->g_114[0][6] , (safe_rshift_func_int8_t_s_u(0x4DL, 3))) , ((*l_1968) = l_1966)))) < (*l_2)), ((safe_lshift_func_uint16_t_u_u(((safe_mod_func_uint16_t_u_u(65535UL, 8L)) && (*l_2)), 8)) , (*l_3)))), l_1978)), 1)) < (**p_1997->g_329))))), l_1978)) != (**p_1997->g_353)) | p_1997->g_618));
        l_1982[3][5][4] = (&l_1939 == ((((*p_1997->g_52) = ((((l_1978 = (**l_16)) <= (safe_sub_func_uint16_t_u_u(((((*l_1986) &= FAKE_DIVERGE(p_1997->local_1_offset, get_local_id(1), 10)) , (p_1997->g_1987 , (*p_1997->g_1768))) != (((*l_1957) = (safe_add_func_uint16_t_u_u((!(safe_sub_func_int8_t_s_s((p_1997->g_1992 == ((*p_1997->g_1509) = (*p_1997->g_1509))), (safe_rshift_func_uint16_t_u_s(((**p_1997->g_353) = (**p_1997->g_353)), (((*p_1997->g_1572) = (void*)0) != &p_1997->g_641[2][0][2])))))), l_1995))) , &p_1997->g_903[5])), p_1997->g_476[7][0]))) > l_1982[0][3][0]) && (*l_2))) || (*l_3)) , &p_1997->g_83[0]));
        (**p_1997->g_51) ^= ((**l_16) = ((void*)0 != l_1957));
    }
    (*p_1997->g_673) = ((*l_1996) = (void*)0);
    return (**l_16);
}


/* ------------------------------------------ */
/* 
 * reads : p_1997->g_4 p_1997->g_242 p_1997->g_1016 p_1997->g_323 p_1997->g_263 p_1997->g_353 p_1997->g_354 p_1997->g_329 p_1997->g_330 p_1997->g_1181 p_1997->g_476 p_1997->g_83 p_1997->g_98 p_1997->g_386 p_1997->g_142 p_1997->g_736.f0 p_1997->g_837 p_1997->g_51 p_1997->g_355 p_1997->g_728.f0 p_1997->g_322 p_1997->g_734.f0 p_1997->g_1393 p_1997->g_514 p_1997->g_1509 p_1997->g_52 p_1997->g_734.f1 p_1997->g_1653 p_1997->g_902 p_1997->g_903 p_1997->g_904 p_1997->g_713.f0 p_1997->g_377.f0 p_1997->g_211 p_1997->g_1377.f1 p_1997->g_779.f1 p_1997->g_739.f0 p_1997->g_803.f0 p_1997->g_1752 p_1997->g_1767 p_1997->g_119 p_1997->g_177 p_1997->g_716 p_1997->g_717 p_1997->g_502 p_1997->g_991.f1 p_1997->g_1833 p_1997->g_1322
 * writes: p_1997->g_142 p_1997->g_1016 p_1997->g_263 p_1997->g_98 p_1997->g_177 p_1997->g_83 p_1997->g_736.f0 p_1997->g_57 p_1997->g_52 p_1997->g_734.f0 p_1997->g_1498 p_1997->g_1469.f3 p_1997->g_723.f1 p_1997->g_734.f1 p_1997->g_377.f0 p_1997->g_211 p_1997->g_1377.f1 p_1997->g_779.f1 p_1997->g_730.f1 p_1997->g_811.f3 p_1997->g_728.f1 p_1997->g_476 p_1997->g_991.f1 p_1997->g_921.f1 p_1997->g_242 p_1997->g_728.f0 p_1997->g_618 p_1997->g_64 p_1997->g_514 p_1997->g_1019.f3
 */
int8_t  func_12(int32_t  p_13, uint64_t  p_14, int32_t  p_15, struct S2 * p_1997)
{ /* block id: 8 */
    int32_t **l_17 = (void*)0;
    int32_t **l_18 = (void*)0;
    int32_t *l_20[9] = {&p_1997->g_4,&p_1997->g_4,&p_1997->g_4,&p_1997->g_4,&p_1997->g_4,&p_1997->g_4,&p_1997->g_4,&p_1997->g_4,&p_1997->g_4};
    int32_t **l_19 = &l_20[5];
    int32_t *l_22 = (void*)0;
    int32_t **l_21 = &l_22;
    uint8_t l_1930 = 0x17L;
    int i;
    (*l_21) = ((*l_19) = &p_1997->g_4);
    (*p_1997->g_51) = func_23((p_1997->g_4 , func_25(p_1997->g_4, p_1997)), p_1997);
    ++l_1930;
    return (*l_22);
}


/* ------------------------------------------ */
/* 
 * reads : p_1997->g_991.f1 p_1997->g_1833 p_1997->g_1322 p_1997->g_514 p_1997->g_354 p_1997->g_98 p_1997->g_476 p_1997->g_51
 * writes: p_1997->g_991.f1 p_1997->g_921.f1 p_1997->g_52 p_1997->g_242 p_1997->g_728.f0 p_1997->g_618 p_1997->g_83 p_1997->g_64 p_1997->g_514 p_1997->g_1019.f3
 */
int32_t * func_23(int32_t ** p_24, struct S2 * p_1997)
{ /* block id: 903 */
    uint32_t l_1824[1][2][8] = {{{0x934AE3EBL,4294967293UL,0x934AE3EBL,0x934AE3EBL,4294967293UL,0x934AE3EBL,0x934AE3EBL,4294967293UL},{0x934AE3EBL,4294967293UL,0x934AE3EBL,0x934AE3EBL,4294967293UL,0x934AE3EBL,0x934AE3EBL,4294967293UL}}};
    int32_t *l_1827 = &p_1997->g_1322;
    int32_t l_1828 = 0x6EE87888L;
    int32_t l_1829[2];
    int8_t *l_1845 = &p_1997->g_991.f1;
    int8_t ***l_1869[4][4][4] = {{{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0},{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0},{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0},{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0}},{{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0},{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0},{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0},{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0}},{{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0},{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0},{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0},{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0}},{{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0},{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0},{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0},{&p_1997->g_1857,&p_1997->g_1857,&p_1997->g_1857,(void*)0}}};
    int32_t ****l_1892 = &p_1997->g_1572;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1829[i] = 0x4C4E17D9L;
    for (p_1997->g_991.f1 = 0; (p_1997->g_991.f1 <= 4); p_1997->g_991.f1 += 1)
    { /* block id: 906 */
        int16_t l_1821 = 0x2710L;
        int32_t *l_1822 = &p_1997->g_476[7][1];
        int32_t *l_1823[9];
        uint16_t l_1842 = 0UL;
        int16_t l_1854 = 1L;
        uint8_t l_1927 = 248UL;
        int i;
        for (i = 0; i < 9; i++)
            l_1823[i] = (void*)0;
        l_1824[0][1][7]--;
        for (p_1997->g_921.f1 = 4; (p_1997->g_921.f1 >= 0); p_1997->g_921.f1 -= 1)
        { /* block id: 910 */
            uint8_t l_1830 = 0UL;
            int32_t *l_1834 = &p_1997->g_514;
            uint64_t l_1877 = 0x773D28710BD5E237L;
            uint32_t **l_1894 = &p_1997->g_1511;
            int64_t l_1896 = 0x3E800CB9254A70C6L;
            int32_t l_1920 = 0L;
            (*p_24) = l_1827;
            (*p_24) = l_1823[0];
            for (p_1997->g_728.f0 = 0; (p_1997->g_728.f0 <= 4); p_1997->g_728.f0 += 1)
            { /* block id: 915 */
                uint8_t l_1841[9];
                int8_t **l_1846 = &l_1845;
                uint32_t *l_1853 = &p_1997->g_83[5];
                int i;
                for (i = 0; i < 9; i++)
                    l_1841[i] = 251UL;
                --l_1830;
                if (p_1997->g_1833[0][2])
                    break;
                for (p_1997->g_618 = 0; (p_1997->g_618 <= 4); p_1997->g_618 += 1)
                { /* block id: 920 */
                    (*p_24) = l_1834;
                }
                l_1854 ^= (l_1829[0] &= (safe_sub_func_int32_t_s_s(((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u((l_1841[0] , 0x1FL), 5)), l_1841[8])) > ((*l_1834) = ((((+(*l_1827)) ^ (*l_1834)) & l_1842) || (safe_mul_func_int8_t_s_s((((*l_1846) = l_1845) == (void*)0), (safe_add_func_int32_t_s_s((safe_div_func_uint8_t_u_u(((safe_rshift_func_uint16_t_u_u((((p_1997->g_64 = ((*l_1853) = 0xABD47B20L)) , FAKE_DIVERGE(p_1997->group_1_offset, get_group_id(1), 10)) >= (*p_1997->g_354)), 13)) < (*l_1822)), 0xFEL)), (*l_1827)))))))), (-9L))));
            }
            for (p_1997->g_1019.f3 = 1; (p_1997->g_1019.f3 <= 4); p_1997->g_1019.f3 += 1)
            { /* block id: 932 */
                int8_t *****l_1859 = &p_1997->g_1855[3];
                uint32_t *l_1863 = &p_1997->g_386;
                uint32_t **l_1862 = &l_1863;
                int32_t l_1868 = 0x4E7A17B3L;
                uint32_t **l_1893[6][5][6] = {{{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0}},{{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0}},{{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0}},{{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0}},{{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0}},{{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0},{&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,&p_1997->g_1511,(void*)0}}};
                int32_t l_1921 = 0L;
                int32_t l_1928[1];
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_1928[i] = 0x38384ABAL;
                (1 + 1);
            }
        }
        (*p_1997->g_51) = l_1822;
    }
    return &p_1997->g_476[7][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1997->g_242 p_1997->g_1016 p_1997->g_323 p_1997->g_263 p_1997->g_353 p_1997->g_354 p_1997->g_329 p_1997->g_330 p_1997->g_1181 p_1997->g_476 p_1997->g_83 p_1997->g_98 p_1997->g_386 p_1997->g_142 p_1997->g_736.f0 p_1997->g_837 p_1997->g_51 p_1997->g_355 p_1997->g_4 p_1997->g_728.f0 p_1997->g_322 p_1997->g_734.f0 p_1997->g_1393 p_1997->g_514 p_1997->g_1509 p_1997->g_52 p_1997->g_734.f1 p_1997->g_1653 p_1997->g_902 p_1997->g_903 p_1997->g_904 p_1997->g_713.f0 p_1997->g_377.f0 p_1997->g_211 p_1997->g_1377.f1 p_1997->g_779.f1 p_1997->g_739.f0 p_1997->g_803.f0 p_1997->g_1752 p_1997->g_1767 p_1997->g_119 p_1997->g_177 p_1997->g_716 p_1997->g_717 p_1997->g_502
 * writes: p_1997->g_142 p_1997->g_1016 p_1997->g_263 p_1997->g_98 p_1997->g_177 p_1997->g_83 p_1997->g_736.f0 p_1997->g_57 p_1997->g_52 p_1997->g_734.f0 p_1997->g_1498 p_1997->g_1469.f3 p_1997->g_723.f1 p_1997->g_734.f1 p_1997->g_377.f0 p_1997->g_211 p_1997->g_1377.f1 p_1997->g_779.f1 p_1997->g_730.f1 p_1997->g_811.f3 p_1997->g_728.f1 p_1997->g_476
 */
int32_t ** func_25(int32_t  p_26, struct S2 * p_1997)
{ /* block id: 11 */
    uint16_t l_34 = 65535UL;
    int32_t *l_50 = (void*)0;
    int32_t **l_49 = &l_50;
    int32_t l_1331 = (-1L);
    uint64_t l_1333[2][10] = {{0xDEC072DFA865C0F3L,18446744073709551615UL,18446744073709551615UL,0xDEC072DFA865C0F3L,0xDEC072DFA865C0F3L,18446744073709551615UL,18446744073709551615UL,0xDEC072DFA865C0F3L,0xDEC072DFA865C0F3L,18446744073709551615UL},{0xDEC072DFA865C0F3L,18446744073709551615UL,18446744073709551615UL,0xDEC072DFA865C0F3L,0xDEC072DFA865C0F3L,18446744073709551615UL,18446744073709551615UL,0xDEC072DFA865C0F3L,0xDEC072DFA865C0F3L,18446744073709551615UL}};
    uint64_t **l_1369 = &p_1997->g_323;
    union U0 *l_1468 = &p_1997->g_1469;
    int32_t ***l_1482 = &p_1997->g_51;
    uint32_t ***l_1527 = &p_1997->g_1498;
    union U1 **l_1579[7] = {&p_1997->g_717[1][2][6],&p_1997->g_717[1][2][6],&p_1997->g_717[1][2][6],&p_1997->g_717[1][2][6],&p_1997->g_717[1][2][6],&p_1997->g_717[1][2][6],&p_1997->g_717[1][2][6]};
    uint64_t **l_1598 = &p_1997->g_323;
    int32_t l_1637[10][4] = {{0x3674C1EAL,0x71C944A1L,0x6D393200L,0x71C944A1L},{0x3674C1EAL,0x71C944A1L,0x6D393200L,0x71C944A1L},{0x3674C1EAL,0x71C944A1L,0x6D393200L,0x71C944A1L},{0x3674C1EAL,0x71C944A1L,0x6D393200L,0x71C944A1L},{0x3674C1EAL,0x71C944A1L,0x6D393200L,0x71C944A1L},{0x3674C1EAL,0x71C944A1L,0x6D393200L,0x71C944A1L},{0x3674C1EAL,0x71C944A1L,0x6D393200L,0x71C944A1L},{0x3674C1EAL,0x71C944A1L,0x6D393200L,0x71C944A1L},{0x3674C1EAL,0x71C944A1L,0x6D393200L,0x71C944A1L},{0x3674C1EAL,0x71C944A1L,0x6D393200L,0x71C944A1L}};
    union U0 **l_1651 = (void*)0;
    union U0 ***l_1650 = &l_1651;
    uint16_t **l_1671 = &p_1997->g_354;
    int32_t **l_1722 = &p_1997->g_641[0][1][1];
    int32_t ****l_1740[4] = {&p_1997->g_1572,&p_1997->g_1572,&p_1997->g_1572,&p_1997->g_1572};
    uint64_t l_1779 = 18446744073709551615UL;
    uint32_t l_1782[7];
    int i, j;
    for (i = 0; i < 7; i++)
        l_1782[i] = 0x3F6A7052L;
    for (p_26 = 24; (p_26 == 14); p_26 = safe_sub_func_int32_t_s_s(p_26, 3))
    { /* block id: 14 */
        int32_t *l_47 = &p_1997->g_4;
        int32_t **l_46 = &l_47;
        int32_t ***l_48 = (void*)0;
        int32_t l_1329 = 8L;
        int32_t l_1330 = 0x6B157D17L;
        int32_t l_1332 = 0x690763ADL;
        uint32_t l_1356 = 0x58DA39A4L;
        int16_t ***l_1415 = &p_1997->g_329;
        (1 + 1);
    }
    (*p_1997->g_242) = 0x7843DF5BL;
    if (((safe_rshift_func_uint16_t_u_s(0x68FFL, 7)) || FAKE_DIVERGE(p_1997->local_1_offset, get_local_id(1), 10)))
    { /* block id: 697 */
        int64_t l_1427[9];
        uint64_t ***l_1430 = &l_1369;
        int32_t l_1448 = 0x6778FA69L;
        int32_t l_1449 = 0x3BA91F1AL;
        uint16_t **l_1490 = (void*)0;
        uint32_t *l_1496 = &p_1997->g_837;
        uint32_t **l_1495 = &l_1496;
        int32_t **l_1542 = &l_50;
        int16_t ***l_1587 = &p_1997->g_329;
        int i;
        for (i = 0; i < 9; i++)
            l_1427[i] = 0x17812AD3EE60801BL;
        for (p_1997->g_1016 = 8; (p_1997->g_1016 > 7); p_1997->g_1016 = safe_sub_func_uint8_t_u_u(p_1997->g_1016, 3))
        { /* block id: 700 */
            int32_t l_1424 = (-1L);
            int16_t *l_1438 = &p_1997->g_138.f3;
            int16_t *l_1439 = (void*)0;
            int16_t *l_1440 = &p_1997->g_719.f3;
            int16_t *l_1441 = (void*)0;
            int16_t *l_1442 = &p_1997->g_734.f3;
            int16_t *l_1443 = &p_1997->g_1097[3][1].f3;
            int16_t *l_1444 = &p_1997->g_779.f3;
            int16_t *l_1445 = &p_1997->g_721.f3;
            int16_t *l_1446 = &p_1997->g_734.f3;
            int16_t *l_1447[10][6][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            uint32_t l_1470[6] = {0x05202EDBL,0x05202EDBL,0x05202EDBL,0x05202EDBL,0x05202EDBL,0x05202EDBL};
            int i, j, k;
            l_1449 = (safe_rshift_func_int8_t_s_u(((((safe_lshift_func_int16_t_s_s(((+(((!l_1424) | (safe_add_func_int16_t_s_s(l_1427[8], 1UL))) ^ (safe_lshift_func_int16_t_s_u(2L, 7)))) != (l_1430 == &p_1997->g_243)), 13)) || p_26) > (l_1448 &= ((**p_1997->g_329) = (((*p_1997->g_323) ^= (safe_lshift_func_int8_t_s_u(0x6AL, 4))) && (safe_sub_func_uint16_t_u_u(((**p_1997->g_353) = (safe_unary_minus_func_int64_t_s(((safe_rshift_func_uint16_t_u_u(l_1427[0], GROUP_DIVERGE(0, 1))) > p_26)))), 0x1625L)))))) | 0x1B746E30L), 6));
            (*p_1997->g_242) |= ((((safe_lshift_func_int16_t_s_s((safe_mod_func_int32_t_s_s((safe_div_func_int8_t_s_s((safe_rshift_func_int16_t_s_u((safe_mod_func_uint64_t_u_u((safe_rshift_func_int16_t_s_s((l_1449 |= (+((((safe_add_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), (0L || ((p_1997->g_83[5] = p_26) && (((safe_mul_func_uint8_t_u_u((((*p_1997->g_1181) || 0UL) >= ((1UL == 0UL) | (((l_1424 != p_1997->g_83[5]) >= (!(((((p_26 < GROUP_DIVERGE(2, 1)) != GROUP_DIVERGE(0, 1)) < 1UL) , p_26) | (*p_1997->g_354)))) || p_26))), (-1L))) , 65535UL) <= p_26))))) , p_1997->g_386) , (void*)0) != l_1468))), 9)), l_1427[7])), 1)), 0x15L)), 0x6B90BB1AL)), l_1427[8])) , l_1424) && 0x21D5L) , p_26);
            for (p_1997->g_736.f0 = 6; (p_1997->g_736.f0 >= 2); p_1997->g_736.f0 -= 1)
            { /* block id: 711 */
                uint8_t *l_1471 = &p_1997->g_57;
                (*p_1997->g_242) = (((((*l_1471) = ((l_1470[4] < p_26) >= 0xFA5A8E6AL)) || 0xD2L) & p_26) || (safe_lshift_func_uint16_t_u_u(l_1470[4], (safe_rshift_func_uint8_t_u_u((safe_div_func_int32_t_s_s(1L, (safe_rshift_func_uint8_t_u_u(l_1448, 6)))), 6)))));
            }
            (*p_1997->g_242) = (p_1997->g_837 , (*p_1997->g_242));
        }
        (*p_1997->g_51) = &p_26;
        (*p_1997->g_242) |= ((safe_add_func_int64_t_s_s((((**p_1997->g_322) = ((l_1482 = &p_1997->g_51) != (((p_26 != p_26) == (safe_lshift_func_uint16_t_u_u(((**p_1997->g_353) = ((p_26 & (safe_mod_func_uint16_t_u_u(FAKE_DIVERGE(p_1997->global_2_offset, get_global_id(2), 10), (***p_1997->g_355)))) ^ (safe_unary_minus_func_uint16_t_u(((safe_lshift_func_int8_t_s_u(p_1997->g_4, 1)) , (((p_1997->g_728.f0 | 0UL) > (l_1490 != l_1490)) <= (**p_1997->g_353))))))), 15))) , (void*)0))) != 0xF0CA31A9C14F8878L), 0x6B04D3B3A22B1B4EL)) , 0x1A23B2B8L);
        for (p_1997->g_734.f0 = (-9); (p_1997->g_734.f0 > (-9)); p_1997->g_734.f0++)
        { /* block id: 724 */
            uint32_t ***l_1497 = &l_1495;
            int8_t *l_1506 = (void*)0;
            int8_t **l_1505 = &l_1506;
            int8_t ***l_1504 = &l_1505;
            int8_t ****l_1503 = &l_1504;
            int32_t l_1512 = 0x3A962BBAL;
            int32_t **l_1560[10] = {&p_1997->g_242,&l_50,&p_1997->g_242,&p_1997->g_242,&l_50,&p_1997->g_242,&p_1997->g_242,&l_50,&p_1997->g_242,&p_1997->g_242};
            int32_t **l_1570 = &p_1997->g_641[0][1][1];
            int32_t ***l_1569 = &l_1570;
            union U1 **l_1580 = &p_1997->g_717[1][2][6];
            uint16_t *l_1604 = &p_1997->g_117;
            uint32_t l_1628 = 0x13753BFAL;
            int i;
            (***l_1482) = ((safe_div_func_uint16_t_u_u(((p_1997->g_1498 = ((*l_1497) = l_1495)) != (void*)0), (safe_mul_func_int16_t_s_s((-1L), (0UL || (l_1512 = ((*p_1997->g_323) |= ((safe_lshift_func_uint16_t_u_u(((*p_1997->g_354) = (((void*)0 == l_1503) >= ((safe_sub_func_int32_t_s_s((*p_1997->g_1393), ((((void*)0 == p_1997->g_1509) == 0xB0D4B987L) == FAKE_DIVERGE(p_1997->global_1_offset, get_global_id(1), 10)))) == p_26))), l_1448)) == p_26)))))))) , p_26);
            for (p_1997->g_1469.f3 = 0; (p_1997->g_1469.f3 > (-22)); p_1997->g_1469.f3 = safe_sub_func_uint16_t_u_u(p_1997->g_1469.f3, 6))
            { /* block id: 733 */
                (*p_1997->g_51) = (**l_1482);
            }
            for (p_1997->g_723.f1 = (-16); (p_1997->g_723.f1 > (-7)); p_1997->g_723.f1 = safe_add_func_uint64_t_u_u(p_1997->g_723.f1, 2))
            { /* block id: 738 */
                int64_t *l_1523 = &l_1427[4];
                uint32_t ***l_1526 = (void*)0;
                uint16_t ***l_1540 = &p_1997->g_353;
                uint8_t l_1543 = 0xD2L;
                int32_t ****l_1571 = &l_1569;
                int32_t ****l_1574[4] = {&p_1997->g_1572,&p_1997->g_1572,&p_1997->g_1572,&p_1997->g_1572};
                int16_t ***l_1586 = &p_1997->g_329;
                int32_t l_1599 = 0x0F95304DL;
                int32_t **l_1610 = &p_1997->g_52;
                int i;
                (1 + 1);
            }
        }
    }
    else
    { /* block id: 803 */
        uint32_t l_1635[9] = {0x6461DE27L,0x6461DE27L,0x6461DE27L,0x6461DE27L,0x6461DE27L,0x6461DE27L,0x6461DE27L,0x6461DE27L,0x6461DE27L};
        int32_t *l_1636[6][2][4] = {{{&p_1997->g_514,(void*)0,&p_1997->g_476[4][1],(void*)0},{&p_1997->g_514,(void*)0,&p_1997->g_476[4][1],(void*)0}},{{&p_1997->g_514,(void*)0,&p_1997->g_476[4][1],(void*)0},{&p_1997->g_514,(void*)0,&p_1997->g_476[4][1],(void*)0}},{{&p_1997->g_514,(void*)0,&p_1997->g_476[4][1],(void*)0},{&p_1997->g_514,(void*)0,&p_1997->g_476[4][1],(void*)0}},{{&p_1997->g_514,(void*)0,&p_1997->g_476[4][1],(void*)0},{&p_1997->g_514,(void*)0,&p_1997->g_476[4][1],(void*)0}},{{&p_1997->g_514,(void*)0,&p_1997->g_476[4][1],(void*)0},{&p_1997->g_514,(void*)0,&p_1997->g_476[4][1],(void*)0}},{{&p_1997->g_514,(void*)0,&p_1997->g_476[4][1],(void*)0},{&p_1997->g_514,(void*)0,&p_1997->g_476[4][1],(void*)0}}};
        int32_t l_1638 = 0x60E7E43AL;
        int32_t l_1639 = 0x4D1F9723L;
        uint32_t l_1641 = 0x1F6745D1L;
        uint8_t *l_1646[4][3] = {{&p_1997->g_57,&p_1997->g_57,&p_1997->g_57},{&p_1997->g_57,&p_1997->g_57,&p_1997->g_57},{&p_1997->g_57,&p_1997->g_57,&p_1997->g_57},{&p_1997->g_57,&p_1997->g_57,&p_1997->g_57}};
        uint8_t **l_1645[9] = {&l_1646[3][1],&l_1646[3][1],&l_1646[3][1],&l_1646[3][1],&l_1646[3][1],&l_1646[3][1],&l_1646[3][1],&l_1646[3][1],&l_1646[3][1]};
        uint8_t ***l_1644 = &l_1645[2];
        uint8_t ***l_1648 = (void*)0;
        uint8_t ****l_1647 = &l_1648;
        int64_t l_1777 = 0x1C8A7EBE59212CAFL;
        int64_t l_1813 = 1L;
        int i, j, k;
        for (p_1997->g_734.f1 = 13; (p_1997->g_734.f1 > 17); p_1997->g_734.f1++)
        { /* block id: 806 */
            return &p_1997->g_52;
        }
        (*p_1997->g_242) = (safe_sub_func_int16_t_s_s(0x4260L, l_1635[4]));
        l_1641--;
        if ((l_1644 != ((*l_1647) = &l_1645[2])))
        { /* block id: 812 */
            int64_t l_1649 = 0x2515C5581842DEB3L;
            union U0 ****l_1652 = &l_1650;
            uint16_t ***l_1656 = &p_1997->g_353;
            int64_t l_1661 = 0x41D9BBA7063345CEL;
            int32_t l_1667 = 0x54010BCEL;
            int32_t l_1689 = 1L;
            uint32_t l_1723 = 4294967295UL;
            (*p_1997->g_51) = &p_26;
            (*p_1997->g_242) = (((((*p_1997->g_52) = (((**p_1997->g_322) == l_1649) > (((*l_1652) = l_1650) != (void*)0))) && (p_1997->g_1653[3] , ((safe_lshift_func_int16_t_s_u(p_26, p_26)) != ((((l_1656 != (void*)0) != 7L) , (**p_1997->g_902)) < p_26)))) && p_1997->g_713.f0) != p_1997->g_1016);
            for (p_1997->g_377.f0 = 0; (p_1997->g_377.f0 == 12); p_1997->g_377.f0++)
            { /* block id: 819 */
                return &p_1997->g_242;
            }
            for (p_1997->g_211 = 0; (p_1997->g_211 <= 0); p_1997->g_211 += 1)
            { /* block id: 824 */
                int32_t *l_1665 = (void*)0;
                int32_t l_1666 = (-8L);
                int16_t l_1692[5] = {0x55ECL,0x55ECL,0x55ECL,0x55ECL,0x55ECL};
                uint8_t **l_1693[7];
                uint32_t *l_1714[9][4][7] = {{{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]}},{{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]}},{{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]}},{{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]}},{{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]}},{{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]}},{{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]}},{{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]}},{{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]},{&l_1635[4],&p_1997->g_83[1],&l_1635[4],&p_1997->g_64,&l_1635[2],&l_1641,&p_1997->g_83[3]}}};
                int32_t l_1715 = 1L;
                uint32_t l_1727 = 0xD4460D4CL;
                int i, j, k;
                for (i = 0; i < 7; i++)
                    l_1693[i] = &l_1646[3][1];
                (1 + 1);
            }
        }
        else
        { /* block id: 853 */
            uint8_t l_1731 = 255UL;
            int32_t l_1775 = 0x2A3793F9L;
            union U1 *l_1785 = (void*)0;
            int8_t **l_1788 = (void*)0;
            int16_t l_1809 = (-1L);
            int32_t l_1811[8][3][8] = {{{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L}},{{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L}},{{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L}},{{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L}},{{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L}},{{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L}},{{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L}},{{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L},{0x1C07F272L,(-1L),0x00F3E6C0L,2L,0L,0x668BC640L,1L,0x7DA35311L}}};
            union U0 ***l_1819 = &l_1651;
            int i, j, k;
            for (p_1997->g_1377.f1 = 0; (p_1997->g_1377.f1 != (-25)); p_1997->g_1377.f1 = safe_sub_func_int16_t_s_s(p_1997->g_1377.f1, 6))
            { /* block id: 856 */
                int32_t l_1730[10][5][5] = {{{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L}},{{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L}},{{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L}},{{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L}},{{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L}},{{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L}},{{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L}},{{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L}},{{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L}},{{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L},{0L,0x62E60AA7L,(-1L),(-1L),0L}}};
                int i, j, k;
                l_1730[8][2][0] &= p_26;
                l_1731--;
            }
            for (p_1997->g_779.f1 = (-22); (p_1997->g_779.f1 >= (-12)); p_1997->g_779.f1 = safe_add_func_uint8_t_u_u(p_1997->g_779.f1, 4))
            { /* block id: 862 */
                int32_t l_1751 = 5L;
                int32_t l_1773 = 0x37520B52L;
                int32_t l_1774 = 0x28B75F30L;
                uint64_t ***l_1803 = &p_1997->g_322;
                uint64_t ***l_1807[1][8][1] = {{{&p_1997->g_322},{&p_1997->g_322},{&p_1997->g_322},{&p_1997->g_322},{&p_1997->g_322},{&p_1997->g_322},{&p_1997->g_322},{&p_1997->g_322}}};
                int32_t l_1812 = 0x1F148608L;
                int32_t l_1815 = 0x10C10721L;
                uint64_t l_1816 = 0x658FD86E5DBCC698L;
                union U0 ***l_1820 = &l_1651;
                int i, j, k;
                if ((((safe_lshift_func_uint16_t_u_s((safe_mod_func_int32_t_s_s(((void*)0 != l_1740[2]), (safe_add_func_uint64_t_u_u(p_26, (safe_rshift_func_uint16_t_u_u(((**p_1997->g_353) = (*p_1997->g_354)), (safe_rshift_func_int16_t_s_u((((safe_div_func_int64_t_s_s((p_1997->g_739[0][3][0].f0 >= (p_1997->g_803.f0 <= GROUP_DIVERGE(1, 1))), (((l_1751 , &l_1636[2][0][0]) == p_1997->g_1752) , l_1751))) , 2UL) && p_26), FAKE_DIVERGE(p_1997->global_0_offset, get_global_id(0), 10))))))))), 6)) <= p_26) , (-3L)))
                { /* block id: 864 */
                    int8_t l_1771 = 0x7AL;
                    for (p_1997->g_730.f1 = 8; (p_1997->g_730.f1 == (-14)); p_1997->g_730.f1 = safe_sub_func_uint32_t_u_u(p_1997->g_730.f1, 5))
                    { /* block id: 867 */
                        int16_t *l_1772 = &p_1997->g_811[3].f3;
                        p_26 = (safe_mul_func_uint8_t_u_u((0x1009E06E165B94F8L > p_26), (safe_rshift_func_int16_t_s_s(((*l_1772) = (0x5B34L ^ ((((**p_1997->g_329) |= (((((4294967291UL <= (safe_sub_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_u((((p_26 >= 0x18C262E5L) < ((((p_1997->g_1767 != &l_1648) & p_26) ^ (-1L)) <= l_1771)) != p_26), 5)) >= l_1751), 65535UL)), 2L))) ^ 1UL) || p_1997->g_119) < (*p_1997->g_242)) == p_26)) != (*p_1997->g_354)) >= l_1731))), 7))));
                    }
                }
                else
                { /* block id: 872 */
                    int32_t l_1776 = 0x6757C2C4L;
                    int32_t l_1778 = (-1L);
                    int8_t *l_1792 = &p_1997->g_1377.f1;
                    int8_t **l_1791 = &l_1792;
                    l_1779++;
                    for (p_1997->g_728.f1 = 0; (p_1997->g_728.f1 <= 0); p_1997->g_728.f1 += 1)
                    { /* block id: 876 */
                        if (p_26)
                            break;
                        (**l_1482) = &l_1775;
                        l_1775 &= p_26;
                        if (l_1782[3])
                            continue;
                    }
                    for (l_1777 = 0; (l_1777 < (-7)); l_1777 = safe_sub_func_int8_t_s_s(l_1777, 4))
                    { /* block id: 884 */
                        int8_t ***l_1789 = (void*)0;
                        int8_t ***l_1790 = (void*)0;
                        uint64_t ****l_1804 = (void*)0;
                        uint64_t ***l_1806 = (void*)0;
                        uint64_t ****l_1805[8] = {&l_1806,&l_1806,&l_1806,&l_1806,&l_1806,&l_1806,&l_1806,&l_1806};
                        int32_t l_1808 = 0x4DD23A3BL;
                        int32_t l_1810 = 0x7B89D4BFL;
                        int i;
                        (**l_1482) = &l_1776;
                        l_1785 = (*p_1997->g_716);
                        (**p_1997->g_51) = 9L;
                        l_1810 &= (((((((safe_lshift_func_uint16_t_u_s(((l_1791 = l_1788) == (((safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((l_1778 , (safe_add_func_uint32_t_u_u(((void*)0 != l_1636[2][0][0]), (((safe_div_func_uint16_t_u_u(((**l_1671) = (safe_add_func_int64_t_s_s(((l_1803 == (l_1807[0][1][0] = &p_1997->g_322)) ^ p_26), l_1808))), 0x04F1L)) , (void*)0) != (void*)0)))), p_26)), p_26)) ^ l_1808) , &l_1792)), p_26)) <= p_1997->g_502) , l_1731) ^ GROUP_DIVERGE(2, 1)) , GROUP_DIVERGE(0, 1)) == l_1809) && l_1776);
                    }
                    l_1778 ^= l_1751;
                }
                l_1816--;
                p_26 = (&p_1997->g_673 != (l_1820 = l_1819));
            }
            (*p_1997->g_1181) &= 0x760E9C49L;
        }
    }
    return &p_1997->g_242;
}


/* ------------------------------------------ */
/* 
 * reads : p_1997->g_718.f0 p_1997->g_329 p_1997->g_330 p_1997->g_177 p_1997->g_902 p_1997->g_903 p_1997->g_904 p_1997->g_722.f0 p_1997->g_4 p_1997->g_738.f0 p_1997->g_263 p_1997->g_242 p_1997->g_114 p_1997->g_93 p_1997->g_725 p_1997->g_323 p_1997->g_725.f0 p_1997->g_502 p_1997->g_98 p_1997->g_1181 p_1997->g_476 p_1997->g_1311 p_1997->g_354 p_1997->g_322 p_1997->g_726.f0 p_1997->g_142
 * writes: p_1997->g_718.f0 p_1997->g_1016 p_1997->g_142 p_1997->g_263 p_1997->g_83 p_1997->g_1103 p_1997->g_476 p_1997->g_64
 */
int8_t  func_31(int32_t  p_32, int32_t * p_33, struct S2 * p_1997)
{ /* block id: 644 */
    int16_t **l_1254 = (void*)0;
    int32_t l_1267 = 0x4A02D344L;
    int32_t l_1272 = 0x70021605L;
    int8_t l_1291 = 1L;
    int16_t l_1312 = 0x204DL;
    uint32_t *l_1313 = &p_1997->g_83[5];
    uint32_t *l_1314 = &p_1997->g_64;
    int32_t l_1315 = 3L;
    int32_t *l_1316 = &l_1267;
    int32_t *l_1317 = &l_1272;
    int32_t *l_1318 = (void*)0;
    int32_t *l_1319 = &p_1997->g_476[4][4];
    int32_t *l_1320[3];
    int32_t l_1321 = (-5L);
    uint8_t l_1323 = 0xCBL;
    int i;
    for (i = 0; i < 3; i++)
        l_1320[i] = &l_1267;
    for (p_1997->g_718.f0 = 0; (p_1997->g_718.f0 <= 9); p_1997->g_718.f0 += 1)
    { /* block id: 647 */
        int16_t **l_1255 = &p_1997->g_330[0][0][0];
        uint8_t *l_1266[8] = {&p_1997->g_1016,(void*)0,&p_1997->g_1016,&p_1997->g_1016,(void*)0,&p_1997->g_1016,&p_1997->g_1016,(void*)0};
        uint8_t **l_1271 = &l_1266[5];
        uint8_t ***l_1270 = &l_1271;
        int32_t l_1273 = 0x177E336EL;
        int32_t **l_1279 = &p_1997->g_641[0][0][2];
        int32_t ***l_1278[9][4][7] = {{{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279}},{{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279}},{{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279}},{{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279}},{{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279}},{{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279}},{{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279}},{{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279}},{{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279},{&l_1279,&l_1279,&l_1279,&l_1279,(void*)0,&l_1279,&l_1279}}};
        uint32_t *l_1289[10][8] = {{&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4]},{&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4]},{&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4]},{&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4]},{&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4]},{&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4]},{&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4]},{&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4]},{&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4]},{&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4],&p_1997->g_238[4]}};
        uint64_t *l_1290[5];
        int64_t *l_1292 = &p_1997->g_1103;
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_1290[i] = (void*)0;
        (*p_1997->g_242) = (((l_1254 == l_1255) , 0x1B0D60EFL) <= (safe_sub_func_int16_t_s_s((**p_1997->g_329), ((((p_1997->g_1016 = (safe_add_func_uint32_t_u_u((safe_sub_func_int8_t_s_s(0x59L, 0xD4L)), (((safe_add_func_int8_t_s_s(((safe_rshift_func_uint16_t_u_u(((l_1267 = (**p_1997->g_902)) != ((1UL && (safe_mul_func_uint8_t_u_u(((((*l_1270) = &l_1266[0]) != (void*)0) , p_32), p_32))) , p_1997->g_722[2].f0)), 13)) < p_1997->g_4), p_1997->g_738.f0)) < l_1272) <= (-6L))))) <= p_32) ^ 0x3916L) >= p_1997->g_263))));
        if (l_1273)
            continue;
        l_1267 = (safe_sub_func_int32_t_s_s((p_1997->g_114[0][8] != (l_1272 , (((safe_sub_func_int64_t_s_s(p_1997->g_93[2][3][0], (((((void*)0 != l_1278[2][3][0]) & ((*l_1292) = ((safe_unary_minus_func_uint8_t_u(((p_1997->g_725[p_1997->g_718.f0] , (safe_add_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u(65535UL, ((safe_mod_func_uint32_t_u_u((((((((p_1997->g_83[0] = ((l_1272 &= ((l_1273 = ((*p_1997->g_323) = (safe_lshift_func_uint8_t_u_u(((0x36FC942660026416L < (l_1289[9][7] != (void*)0)) & p_32), 3)))) >= 1L)) && 1UL)) == l_1291) , p_32) <= FAKE_DIVERGE(p_1997->group_1_offset, get_group_id(1), 10)) >= p_32) >= p_1997->g_725[p_1997->g_718.f0].f0) != FAKE_DIVERGE(p_1997->global_2_offset, get_global_id(2), 10)), (*p_33))) , 0xD8A7L))), 0x6E9FE648L))) == 0xA006E4138C2C45FAL))) , p_1997->g_502))) , p_32) ^ p_32))) != 1UL) || 0x09L))), p_1997->g_98[1][1][2]));
        (*p_1997->g_1181) |= 0x4AA06B21L;
    }
    l_1315 &= (safe_div_func_int16_t_s_s(0x6856L, (safe_div_func_int32_t_s_s(((safe_add_func_uint64_t_u_u((l_1291 , (((l_1267 = ((*l_1314) = ((*l_1313) = (p_32 , (safe_div_func_uint8_t_u_u(((l_1267 > (safe_mul_func_uint8_t_u_u((safe_add_func_uint64_t_u_u((p_32 , (safe_sub_func_uint16_t_u_u(p_32, (((l_1272 = ((**p_1997->g_322) = (safe_lshift_func_int8_t_s_s((safe_mod_func_int8_t_s_s((p_1997->g_1311 , (l_1312 >= (((*p_1997->g_354) & p_32) < FAKE_DIVERGE(p_1997->local_0_offset, get_local_id(0), 10)))), l_1272)), 1)))) ^ 1UL) > 1UL)))), l_1312)), p_1997->g_726.f0))) > l_1312), p_32)))))) >= l_1291) , (**p_1997->g_322))), 0x4DC6550463F5190BL)) >= p_1997->g_502), l_1312))));
    (*p_1997->g_242) &= (+(*p_33));
    --l_1323;
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_1997->g_57 p_1997->g_88 p_1997->g_83 p_1997->g_93 p_1997->g_4 p_1997->g_119 p_1997->g_98 p_1997->g_117 p_1997->g_138 p_1997->g_114 p_1997->g_153 p_1997->g_159 p_1997->g_170 p_1997->g_140 p_1997->g_51 p_1997->g_52 p_1997->g_193 p_1997->g_175 p_1997->g_211 p_1997->g_138.f1 p_1997->g_353 p_1997->g_355 p_1997->g_362 p_1997->g_242 p_1997->g_142 p_1997->g_377 p_1997->g_238 p_1997->g_183 p_1997->g_365.f0 p_1997->g_354 p_1997->g_386 p_1997->g_322 p_1997->g_323 p_1997->g_263 p_1997->g_243 p_1997->g_244 p_1997->g_329 p_1997->g_330 p_1997->g_177 p_1997->g_235.f0 p_1997->g_377.f0 p_1997->g_434 p_1997->g_365 p_1997->g_493 p_1997->g_507 p_1997->g_476 p_1997->g_493.f0 p_1997->g_514 p_1997->g_153.f0 p_1997->g_557 p_1997->g_589 p_1997->g_673 p_1997->g_362.f1 p_1997->g_556 p_1997->g_377.f1 p_1997->g_265 p_1997->g_713 p_1997->g_731.f0 p_1997->g_721.f0 p_1997->g_729.f1 p_1997->g_779 p_1997->g_193.f0 p_1997->g_738.f0 p_1997->g_803 p_1997->g_811 p_1997->g_726.f0 p_1997->g_724.f0 p_1997->g_718.f0 p_1997->g_772 p_1997->g_779.f0 p_1997->g_881 p_1997->g_64 p_1997->g_734.f0 p_1997->g_902 p_1997->g_720.f0 p_1997->g_362.f3 p_1997->g_731 p_1997->g_991 p_1997->g_1011 p_1997->g_1019 p_1997->g_903 p_1997->g_904 p_1997->g_138.f3 p_1997->g_736.f3 p_1997->g_1019.f1 p_1997->g_1048 p_1997->g_739.f0 p_1997->g_1063 p_1997->g_1097 p_1997->g_1104 p_1997->g_730.f3 p_1997->g_1159 p_1997->g_1160 p_1997->g_1176 p_1997->g_1181 p_1997->g_725.f0 p_1997->g_1091 p_1997->g_730.f0 p_1997->g_641 p_1997->g_727.f0 p_1997->g_1250 p_1997->g_1251
 * writes: p_1997->g_57 p_1997->g_64 p_1997->g_88 p_1997->g_93 p_1997->g_98 p_1997->g_114 p_1997->g_117 p_1997->g_119 p_1997->g_138.f3 p_1997->g_140 p_1997->g_138.f1 p_1997->g_142 p_1997->g_159 p_1997->g_170 p_1997->g_52 p_1997->g_211 p_1997->g_353 p_1997->g_238 p_1997->g_177 p_1997->g_377.f0 p_1997->g_263 p_1997->g_362.f2 p_1997->g_502 p_1997->g_514 p_1997->g_493.f1 p_1997->g_556 p_1997->g_83 p_1997->g_476 p_1997->g_618 p_1997->g_641 p_1997->g_557.f1 p_1997->g_589.f2 p_1997->g_235.f1 p_1997->g_674 p_1997->g_362.f1 p_1997->g_377.f1 p_1997->g_716 p_1997->g_729.f1 p_1997->g_772 p_1997->g_837 p_1997->g_718.f0 p_1997->g_713.f2 p_1997->g_803.f2 p_1997->g_330 p_1997->g_362.f3 p_1997->g_736.f3 p_1997->g_735.f1 p_1997->g_493.f3 p_1997->g_1016 p_1997->g_730.f3 p_1997->g_1019.f1 p_1997->g_1103 p_1997->g_386 p_1997->g_730.f0 p_1997->g_991.f1
 */
uint32_t  func_41(int32_t ** p_42, uint32_t  p_43, int32_t ** p_44, int32_t ** p_45, struct S2 * p_1997)
{ /* block id: 16 */
    uint8_t *l_55 = (void*)0;
    uint8_t *l_56 = &p_1997->g_57;
    int8_t *l_63 = (void*)0;
    uint32_t *l_82[4] = {&p_1997->g_83[5],&p_1997->g_83[5],&p_1997->g_83[5],&p_1997->g_83[5]};
    int32_t l_86 = 8L;
    uint16_t *l_97 = &p_1997->g_98[1][1][2];
    uint32_t l_99 = 0x5487E867L;
    uint32_t l_112 = 4294967295UL;
    int64_t *l_113 = &p_1997->g_114[0][5];
    uint16_t *l_115 = (void*)0;
    uint16_t *l_116 = &p_1997->g_117;
    int8_t *l_118 = &p_1997->g_119;
    uint8_t l_120 = 0xFCL;
    int16_t l_121[6][7] = {{2L,0x339DL,2L,2L,0x339DL,2L,2L},{2L,0x339DL,2L,2L,0x339DL,2L,2L},{2L,0x339DL,2L,2L,0x339DL,2L,2L},{2L,0x339DL,2L,2L,0x339DL,2L,2L},{2L,0x339DL,2L,2L,0x339DL,2L,2L},{2L,0x339DL,2L,2L,0x339DL,2L,2L}};
    uint16_t l_512[10][7][3] = {{{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL}},{{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL}},{{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL}},{{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL}},{{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL}},{{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL}},{{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL}},{{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL}},{{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL}},{{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL},{65527UL,0x5914L,0x838AL}}};
    int32_t *l_513 = &p_1997->g_514;
    union U1 *l_919 = (void*)0;
    uint32_t *l_949 = &p_1997->g_837;
    union U0 **l_952 = &p_1997->g_674;
    int32_t l_977 = 0L;
    int32_t l_978 = 0x4569608AL;
    int32_t l_979 = 1L;
    int32_t l_981 = 0x60965448L;
    int32_t l_982[2];
    uint16_t l_986 = 65535UL;
    int16_t **l_1006 = &p_1997->g_330[0][0][0];
    uint64_t l_1015 = 0xA6D3B9AEF46AC71DL;
    int32_t *l_1066 = &p_1997->g_142;
    int16_t l_1077[9][3] = {{1L,0L,7L},{1L,0L,7L},{1L,0L,7L},{1L,0L,7L},{1L,0L,7L},{1L,0L,7L},{1L,0L,7L},{1L,0L,7L},{1L,0L,7L}};
    uint64_t l_1078 = 0x8F58D56737897336L;
    int32_t l_1087 = (-2L);
    int16_t l_1194 = 4L;
    uint32_t **l_1252 = &l_949;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_982[i] = (-1L);
    if ((safe_rshift_func_int8_t_s_s((((((*l_56)--) || func_60(((p_1997->g_64 = p_1997->g_57) ^ ((func_65((((*l_513) |= ((safe_lshift_func_uint8_t_u_s((((l_512[0][4][1] = func_73(func_79((++p_43), l_86, p_1997), (((safe_div_func_uint16_t_u_u((!p_1997->g_83[0]), p_1997->g_83[4])) || ((((*l_97) = 0xDA1DL) > (l_99 ^ 1L)) > (+((safe_lshift_func_uint8_t_u_u(((safe_mul_func_int8_t_s_s(((*l_118) ^= ((~((FAKE_DIVERGE(p_1997->local_1_offset, get_local_id(1), 10) <= ((((safe_sub_func_uint16_t_u_u(((*l_116) = (((safe_rshift_func_int8_t_s_u((safe_add_func_int32_t_s_s((((*l_113) = ((safe_mul_func_int8_t_s_s((l_112 & p_1997->g_83[1]), 0x9CL)) != p_1997->g_4)) > l_86), p_1997->g_83[5])), p_1997->g_83[2])) != 0x0A3CEE85L) <= p_1997->g_83[5])), p_1997->g_83[6])) > 0x04FBFD2E0221BC3FL) <= 7UL) | FAKE_DIVERGE(p_1997->group_2_offset, get_group_id(2), 10))) , l_99)) & l_112)), l_86)) && l_112), 6)) <= 0x2F2EL)))) != l_120), l_121[0][5], &p_1997->g_57, &l_120, p_1997)) > 4294967289UL) ^ l_99), p_1997->g_386)) != 1L)) != 0x6B0AD028L), l_86, p_1997->g_83[1], l_55, l_86, p_1997) , 7L) == (-2L))), p_1997->g_721.f0, p_1997)) ^ p_1997->g_724.f0) && p_43), p_1997->g_779.f0)))
    { /* block id: 438 */
        union U0 **l_867 = &p_1997->g_674;
        union U0 ***l_866 = &l_867;
        int32_t l_873[1][1][4];
        uint32_t l_878[1][8] = {{2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL}};
        union U1 *l_920 = &p_1997->g_921;
        int32_t **l_941 = &p_1997->g_641[0][1][1];
        uint8_t **l_1014[1][8][4] = {{{&l_55,&l_56,&l_55,&l_55},{&l_55,&l_56,&l_55,&l_55},{&l_55,&l_56,&l_55,&l_55},{&l_55,&l_56,&l_55,&l_55},{&l_55,&l_56,&l_55,&l_55},{&l_55,&l_56,&l_55,&l_55},{&l_55,&l_56,&l_55,&l_55},{&l_55,&l_56,&l_55,&l_55}}};
        int64_t *l_1035 = &p_1997->g_114[0][5];
        int32_t *l_1065 = (void*)0;
        int64_t l_1074 = 5L;
        int16_t l_1085 = (-3L);
        uint16_t l_1092 = 0x0F4DL;
        uint8_t l_1132 = 8UL;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 4; k++)
                    l_873[i][j][k] = 1L;
            }
        }
        for (p_1997->g_713.f2 = 0; p_1997->g_713.f2 < 1; p_1997->g_713.f2 += 1)
        {
            for (p_1997->g_803.f2 = 0; p_1997->g_803.f2 < 2; p_1997->g_803.f2 += 1)
            {
                for (p_1997->g_64 = 0; p_1997->g_64 < 1; p_1997->g_64 += 1)
                {
                    p_1997->g_330[p_1997->g_713.f2][p_1997->g_803.f2][p_1997->g_64] = &p_1997->g_177;
                }
            }
        }
lbl_898:
        (*l_866) = &p_1997->g_674;
lbl_959:
        for (p_1997->g_362.f3 = 7; (p_1997->g_362.f3 >= 0); p_1997->g_362.f3 -= 1)
        { /* block id: 443 */
            uint32_t l_879 = 0x3ADED513L;
            for (p_1997->g_88 = 1; (p_1997->g_88 <= 7); p_1997->g_88 += 1)
            { /* block id: 446 */
                union U0 ***l_868 = &l_867;
                int i;
                (*l_513) = ((~((p_1997->g_238[p_1997->g_88] > (&p_1997->g_673 != l_868)) && (((((safe_lshift_func_int8_t_s_u((&l_121[0][5] == (*p_1997->g_329)), 6)) == (((((**p_1997->g_322) = (safe_add_func_int8_t_s_s(((*l_118) = ((l_873[0][0][0] && (safe_lshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_s((((*p_1997->g_242) = ((*p_1997->g_242) , ((0x1DL | p_1997->g_238[p_1997->g_88]) && p_43))) , (*p_1997->g_354)), 0)), 0))) ^ p_1997->g_211)), 0x75L))) && p_43) , (**p_1997->g_329)) >= 0x071BL)) <= l_878[0][2]) <= l_879) ^ p_43))) ^ 1UL);
            }
            (*p_1997->g_242) = (*l_513);
            (*p_44) = (*p_42);
        }
        for (p_1997->g_736.f3 = 4; (p_1997->g_736.f3 >= 0); p_1997->g_736.f3 -= 1)
        { /* block id: 457 */
            union U1 *l_880 = &p_1997->g_730;
            int32_t *l_882 = &p_1997->g_853;
            union U0 **l_887 = (void*)0;
            int32_t l_889 = 7L;
            int32_t l_892 = 0x6D7BD940L;
            int8_t **l_908 = &l_63;
            int8_t ***l_907[8][10][3] = {{{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908}},{{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908}},{{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908}},{{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908}},{{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908}},{{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908}},{{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908}},{{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908},{&l_908,&l_908,&l_908}}};
            uint16_t l_932[10][2][4] = {{{0x1042L,0x1042L,65535UL,0x8E6FL},{0x1042L,0x1042L,65535UL,0x8E6FL}},{{0x1042L,0x1042L,65535UL,0x8E6FL},{0x1042L,0x1042L,65535UL,0x8E6FL}},{{0x1042L,0x1042L,65535UL,0x8E6FL},{0x1042L,0x1042L,65535UL,0x8E6FL}},{{0x1042L,0x1042L,65535UL,0x8E6FL},{0x1042L,0x1042L,65535UL,0x8E6FL}},{{0x1042L,0x1042L,65535UL,0x8E6FL},{0x1042L,0x1042L,65535UL,0x8E6FL}},{{0x1042L,0x1042L,65535UL,0x8E6FL},{0x1042L,0x1042L,65535UL,0x8E6FL}},{{0x1042L,0x1042L,65535UL,0x8E6FL},{0x1042L,0x1042L,65535UL,0x8E6FL}},{{0x1042L,0x1042L,65535UL,0x8E6FL},{0x1042L,0x1042L,65535UL,0x8E6FL}},{{0x1042L,0x1042L,65535UL,0x8E6FL},{0x1042L,0x1042L,65535UL,0x8E6FL}},{{0x1042L,0x1042L,65535UL,0x8E6FL},{0x1042L,0x1042L,65535UL,0x8E6FL}}};
            int32_t l_980 = (-1L);
            int32_t l_985 = 0x043C0DD6L;
            int32_t l_1064 = 1L;
            int64_t l_1073[9][2] = {{1L,3L},{1L,3L},{1L,3L},{1L,3L},{1L,3L},{1L,3L},{1L,3L},{1L,3L},{1L,3L}};
            int64_t l_1075 = 0L;
            int32_t l_1076[10][2] = {{(-2L),(-2L)},{(-2L),(-2L)},{(-2L),(-2L)},{(-2L),(-2L)},{(-2L),(-2L)},{(-2L),(-2L)},{(-2L),(-2L)},{(-2L),(-2L)},{(-2L),(-2L)},{(-2L),(-2L)}};
            int i, j, k;
            l_880 = l_880;
            if ((p_1997->g_881[6][0][3] , 0x4FD96B87L))
            { /* block id: 459 */
                uint32_t l_895[1][7] = {{0x17AE4377L,0x17AE4377L,0x17AE4377L,0x17AE4377L,0x17AE4377L,0x17AE4377L,0x17AE4377L}};
                int i, j;
                for (p_1997->g_211 = 0; (p_1997->g_211 <= 4); p_1997->g_211 += 1)
                { /* block id: 462 */
                    int16_t l_888 = 0x047AL;
                    (*l_513) = ((*l_513) >= ((*p_1997->g_354) = ((p_43 <= ((*l_113) &= ((&p_1997->g_175[0] != l_882) >= (l_873[0][0][3] , (safe_add_func_int16_t_s_s((FAKE_DIVERGE(p_1997->global_2_offset, get_global_id(2), 10) >= GROUP_DIVERGE(2, 1)), (((((l_889 = (safe_div_func_uint16_t_u_u((((*l_866) = (*l_866)) != l_887), l_888))) != (p_1997->g_64++)) ^ l_892) , (void*)0) != (void*)0))))))) | (*l_513))));
                    for (p_1997->g_735.f1 = 3; (p_1997->g_735.f1 >= 0); p_1997->g_735.f1 -= 1)
                    { /* block id: 471 */
                        int32_t *l_893 = &l_889;
                        int32_t *l_894[5][1][3] = {{{&l_889,(void*)0,&l_889}},{{&l_889,(void*)0,&l_889}},{{&l_889,(void*)0,&l_889}},{{&l_889,(void*)0,&l_889}},{{&l_889,(void*)0,&l_889}}};
                        int i, j, k;
                        ++l_895[0][3];
                        (*p_42) = (void*)0;
                        return p_1997->g_734.f0;
                    }
                }
                if (p_1997->g_386)
                    goto lbl_898;
            }
            else
            { /* block id: 478 */
                uint8_t **l_901 = &l_55;
                uint16_t **l_929 = &l_115;
                uint16_t **l_937 = &l_115;
                int32_t l_938 = 0x3E4CEAB7L;
                uint32_t *l_948 = (void*)0;
                uint32_t **l_947[3];
                union U0 **l_953 = &p_1997->g_674;
                int32_t l_983 = 0x3610342CL;
                int32_t l_984 = 1L;
                int i;
                for (i = 0; i < 3; i++)
                    l_947[i] = &l_948;
                (*l_513) = (safe_add_func_uint16_t_u_u((((l_901 != p_1997->g_902) , l_889) ^ ((FAKE_DIVERGE(p_1997->global_0_offset, get_global_id(0), 10) != (l_907[5][5][1] == (((safe_add_func_int64_t_s_s((safe_div_func_uint8_t_u_u((((safe_mod_func_uint32_t_u_u((safe_sub_func_int16_t_s_s(((p_43 != (((p_1997->g_193.f0 , l_919) == l_920) > p_1997->g_724.f0)) & l_889), l_892)), p_1997->g_238[1])) != 1UL) , p_43), p_43)), 0x1A8E535FDB194ACFL)) , p_1997->g_720[1][1].f0) , (void*)0))) < (*p_1997->g_354))), (*l_513)));
                for (p_1997->g_493.f3 = 5; (p_1997->g_493.f3 >= 0); p_1997->g_493.f3 -= 1)
                { /* block id: 482 */
                    uint16_t **l_927[1][1];
                    uint16_t ***l_928[10];
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_927[i][j] = &l_115;
                    }
                    for (i = 0; i < 10; i++)
                        l_928[i] = &l_927[0][0];
                    (1 + 1);
                }
                if (((*l_513) &= ((p_1997->g_726.f0 , (l_949 = &p_1997->g_837)) == (void*)0)))
                { /* block id: 499 */
                    int8_t *l_954 = &p_1997->g_119;
                    for (p_1997->g_362.f3 = 0; (p_1997->g_362.f3 <= 0); p_1997->g_362.f3 += 1)
                    { /* block id: 502 */
                        return p_43;
                    }
                    if (((*l_513) = ((((safe_sub_func_uint64_t_u_u(18446744073709551615UL, ((l_952 == l_953) <= ((void*)0 != l_954)))) == (((safe_rshift_func_uint16_t_u_u((*p_1997->g_354), (p_43 <= ((((--p_1997->g_57) >= ((*p_1997->g_354) , (0x4A1FFA89L ^ l_873[0][0][0]))) || (*p_1997->g_242)) != p_43)))) || 0UL) == (*p_1997->g_242))) < (*p_1997->g_242)) > l_938)))
                    { /* block id: 507 */
                        return l_932[0][1][1];
                    }
                    else
                    { /* block id: 509 */
                        if ((*p_1997->g_242))
                            break;
                        if (p_1997->g_779.f0)
                            goto lbl_959;
                    }
                }
                else
                { /* block id: 513 */
                    int32_t *l_960 = &l_86;
                    int32_t *l_975 = &l_889;
                    int32_t *l_976[9][3][2] = {{{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]}},{{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]}},{{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]}},{{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]}},{{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]}},{{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]}},{{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]}},{{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]}},{{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]},{&l_873[0][0][1],&p_1997->g_476[7][0]}}};
                    int i, j, k;
                    if (p_1997->g_362.f3)
                        goto lbl_959;
                    for (p_1997->g_514 = 0; (p_1997->g_514 >= 0); p_1997->g_514 -= 1)
                    { /* block id: 517 */
                        int32_t l_965 = 0x68E1D834L;
                        int i;
                        (*p_44) = l_960;
                        (*p_1997->g_242) &= ((safe_mod_func_uint16_t_u_u((((((((safe_sub_func_int16_t_s_s((0x2C9DD5A9L < ((p_43 > p_43) , (l_965 |= l_932[0][1][1]))), (safe_lshift_func_int8_t_s_u(p_43, 6)))) , ((((*l_118) &= (((--(**p_1997->g_353)) == 0x3AE3L) ^ (safe_unary_minus_func_int64_t_s((safe_lshift_func_int16_t_s_s((((**p_1997->g_329) |= (p_43 == 0x38L)) != (l_938 >= l_965)), 0)))))) <= p_43) , p_1997->g_731[(p_1997->g_514 + 6)])) , (void*)0) != (void*)0) != p_43) > (*l_960)) <= p_43), 0x204FL)) | p_43);
                    }
                    --l_986;
                }
                (*p_1997->g_242) &= (safe_mul_func_uint16_t_u_u(0xD878L, ((((p_1997->g_991 , (*l_513)) && ((p_43 < (1UL == (p_1997->g_114[0][5] ^= (p_43 == (safe_rshift_func_uint8_t_u_u(((~(safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((safe_sub_func_uint32_t_u_u((p_1997->g_83[6] |= (*l_513)), (l_983 <= (p_43 , 0x69L)))), 2)), p_43))) ^ p_43), p_43)))))) , l_878[0][2])) <= 6L) && 0x03C6L)));
            }
            (*p_1997->g_242) |= (((*l_56) = l_878[0][2]) <= (safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((safe_mod_func_int64_t_s_s((((l_1006 != (void*)0) && (safe_sub_func_uint64_t_u_u((safe_add_func_uint8_t_u_u((p_1997->g_1016 = (p_1997->g_1011 , (safe_mod_func_int16_t_s_s(((((void*)0 == l_1014[0][2][2]) == l_1015) || GROUP_DIVERGE(2, 1)), 6UL)))), p_43)), 0xA88C7077078AFA58L))) , 0x2810368E262A3056L), p_43)) && l_889), (**p_1997->g_329))), p_43)));
            for (p_1997->g_377.f0 = 0; (p_1997->g_377.f0 >= 0); p_1997->g_377.f0 -= 1)
            { /* block id: 536 */
                int32_t l_1028 = 0x51621713L;
                int32_t *l_1029 = &p_1997->g_476[6][0];
                int32_t *l_1067 = &l_978;
                int32_t *l_1068 = (void*)0;
                int32_t *l_1069 = &l_982[1];
                int32_t *l_1070 = (void*)0;
                int32_t *l_1071 = &l_889;
                int32_t *l_1072[1][3];
                int32_t l_1089 = 0L;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_1072[i][j] = &l_981;
                }
                for (p_1997->g_138.f3 = 0; (p_1997->g_138.f3 >= 0); p_1997->g_138.f3 -= 1)
                { /* block id: 539 */
                    return p_1997->g_93[2][3][0];
                }
                (*p_1997->g_242) |= (((p_43 = ((safe_mod_func_uint8_t_u_u(((((&p_1997->g_717[3][5][4] != (p_43 , (((void*)0 != l_880) , &p_1997->g_717[1][2][6]))) && (p_1997->g_1019 , ((~(safe_rshift_func_uint16_t_u_s((safe_rshift_func_uint8_t_u_u((~(**p_1997->g_902)), 5)), ((0xC03CL & (safe_rshift_func_uint16_t_u_s((safe_add_func_uint8_t_u_u(252UL, 0x72L)), p_43))) , (*l_513))))) <= p_43))) <= p_1997->g_138.f3) | l_1028), l_1028)) <= 1L)) && l_878[0][0]) , l_873[0][0][0]);
                for (p_1997->g_730.f3 = 0; (p_1997->g_730.f3 <= 0); p_1997->g_730.f3 += 1)
                { /* block id: 546 */
                    int32_t *l_1030 = (void*)0;
                    l_1030 = l_1029;
                    for (p_1997->g_1019.f1 = 0; (p_1997->g_1019.f1 >= 0); p_1997->g_1019.f1 -= 1)
                    { /* block id: 550 */
                        int i, j, k;
                        (*p_1997->g_242) &= (safe_mul_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u(((void*)0 == l_1035), l_873[0][0][1])), (safe_mul_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((**l_1006) = (p_1997->g_93[p_1997->g_377.f0][(p_1997->g_736.f3 + 1)][p_1997->g_1019.f1] = p_43)), (((*l_1035) = (safe_mod_func_int64_t_s_s(((((safe_add_func_int64_t_s_s((((safe_mod_func_int16_t_s_s((((safe_lshift_func_uint8_t_u_u(((p_1997->g_1048 , &p_1997->g_739[(p_1997->g_377.f0 + 2)][(p_1997->g_736.f3 + 1)][p_1997->g_1019.f1]) == (void*)0), 0)) < (safe_div_func_uint64_t_u_u((((*l_1030) = (safe_lshift_func_uint16_t_u_s((((safe_sub_func_uint32_t_u_u((safe_div_func_uint16_t_u_u((safe_div_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(((((*l_513) = (safe_add_func_uint64_t_u_u(p_1997->g_739[(p_1997->g_377.f0 + 2)][(p_1997->g_736.f3 + 1)][p_1997->g_1019.f1].f0, p_1997->g_57))) && p_43) > 0xD9556ED2D7C88585L), GROUP_DIVERGE(1, 1))), p_43)), p_43)), p_1997->g_1063)) , p_1997->g_117) | p_43), l_878[0][2]))) && p_1997->g_739[(p_1997->g_377.f0 + 2)][(p_1997->g_736.f3 + 1)][p_1997->g_1019.f1].f0), 0x5739A7634D7A3C4FL))) > 65530UL), p_43)) > (**p_42)) & 0x6A93BD99L), (*p_1997->g_323))) >= l_1064) <= p_43) >= p_1997->g_739[(p_1997->g_377.f0 + 2)][(p_1997->g_736.f3 + 1)][p_1997->g_1019.f1].f0), 0x7FC7B98772BC4727L))) >= p_1997->g_98[1][1][2]))), FAKE_DIVERGE(p_1997->global_1_offset, get_global_id(1), 10)))));
                        l_1065 = &p_1997->g_4;
                        return p_1997->g_720[1][1].f0;
                    }
                    (*p_1997->g_242) |= (*l_1030);
                    (*p_44) = l_1066;
                }
                --l_1078;
                for (p_1997->g_211 = 0; (p_1997->g_211 <= 5); p_1997->g_211 += 1)
                { /* block id: 566 */
                    int8_t l_1081 = 0L;
                    int32_t l_1082 = 0x4E8FA686L;
                    int32_t l_1083 = 1L;
                    int32_t l_1084 = (-2L);
                    int32_t l_1086 = 0x2196C651L;
                    int32_t l_1088 = (-1L);
                    int32_t l_1090[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1090[i] = 0x6FA47041L;
                    l_1092--;
                    if (((safe_sub_func_int8_t_s_s(p_43, (p_1997->g_1097[3][1] , (&p_43 != ((p_1997->g_1103 = ((*l_513) == ((((~p_43) < (safe_sub_func_uint16_t_u_u(p_43, (safe_unary_minus_func_int16_t_s(0L))))) ^ (safe_mul_func_uint16_t_u_u((p_1997->g_64 && 9UL), p_43))) & p_43))) , &p_1997->g_83[5]))))) , (-3L)))
                    { /* block id: 569 */
                        if ((*l_1067))
                            break;
                        if (p_1997->g_1104)
                            continue;
                        (*p_45) = &l_980;
                        (**p_1997->g_51) &= l_1073[8][1];
                    }
                    else
                    { /* block id: 574 */
                        uint8_t l_1113 = 0x88L;
                        uint32_t *l_1133 = &l_878[0][2];
                        uint32_t *l_1134 = &p_1997->g_386;
                        int8_t ***l_1143 = &l_908;
                        int i, j, k;
                        l_1088 ^= (safe_div_func_int16_t_s_s((safe_add_func_uint64_t_u_u((((void*)0 != &p_1997->g_214) < ((*l_1071) &= (*p_1997->g_354))), 6L)), (***p_1997->g_355)));
                        (*p_44) = &p_1997->g_476[3][3];
                        (*l_1071) |= (((*l_1134) |= ((*l_1133) = ((safe_sub_func_int8_t_s_s((p_43 & (p_43 & ((p_1997->g_730.f3 >= (((l_1132 |= ((((safe_lshift_func_uint16_t_u_u(((*l_97) = ((p_1997->g_93[p_1997->g_736.f3][(p_1997->g_736.f3 + 2)][p_1997->g_377.f0] = (l_1113 == ((safe_rshift_func_uint16_t_u_s(p_43, 4)) < ((l_878[0][3] ^ ((safe_add_func_int8_t_s_s((safe_lshift_func_int16_t_s_u(p_43, (safe_rshift_func_int16_t_s_s(((**p_1997->g_353) != (safe_mod_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u((safe_div_func_int32_t_s_s((safe_sub_func_uint8_t_u_u((p_43 == 0x1EL), (**p_1997->g_902))), p_1997->g_238[5])), l_892)), 8UL)), (*p_1997->g_354)))), 12)))), p_1997->g_83[0])) <= 4294967286UL)) < l_1090[1])))) | l_1076[3][0])), p_43)) ^ 0x130AL) , p_43) >= 0L)) && 0xF93DEA20L) == (*l_513))) <= 0x338D33DCB04D5294L))), l_1113)) , 0xDD8D2ED1L))) , 0x14EDCCCFL);
                        (**p_44) = (((0x1BD4CF30L > (((safe_sub_func_int8_t_s_s((l_1084 = ((*l_118) = ((void*)0 != &l_889))), ((*l_1066) |= 0L))) , (safe_mod_func_int32_t_s_s(((((void*)0 == &p_1997->g_641[2][0][0]) == ((*l_1069) & (GROUP_DIVERGE(2, 1) & (safe_lshift_func_int16_t_s_u((safe_sub_func_int64_t_s_s((((void*)0 != l_1143) , p_1997->g_138.f3), 0x0F20F53192B8B172L)), 7))))) || p_1997->g_720[1][1].f0), (*l_1069)))) & (*p_1997->g_354))) != 0x593C842E070DC5B2L) >= p_43);
                    }
                    (*l_513) &= (*p_1997->g_242);
                }
            }
        }
    }
    else
    { /* block id: 593 */
        int32_t *l_1144 = &p_1997->g_556;
        uint32_t l_1161 = 0x26A3818DL;
        int32_t l_1180 = (-4L);
        int32_t l_1202 = 1L;
        int32_t l_1203 = 0x1DD370DCL;
        int32_t l_1204 = 0x71D55A22L;
        int32_t l_1205 = 6L;
        int32_t l_1206 = 1L;
        int32_t l_1207 = 0x4D08BD9AL;
        int32_t l_1208 = 0x210BDD3CL;
        int16_t **l_1215 = &p_1997->g_330[0][0][0];
lbl_1182:
        (*p_44) = l_1144;
        if (((safe_sub_func_int8_t_s_s(((*l_118) ^= (p_1997->g_114[0][3] , (0x23C25D335A943678L <= (safe_lshift_func_int16_t_s_u((safe_div_func_uint32_t_u_u((*l_1144), (safe_add_func_uint64_t_u_u(((safe_mul_func_int8_t_s_s(0x5FL, ((safe_add_func_uint16_t_u_u(((safe_mod_func_int32_t_s_s(((void*)0 != l_1144), (p_1997->g_1159[1] , (p_1997->g_1160[3] , 0x14355A5BL)))) <= (-9L)), (**p_1997->g_329))) & l_1161))) || (*p_1997->g_242)), (*l_1066))))), (*l_1144)))))), 250UL)) , (*l_513)))
        { /* block id: 596 */
            int32_t **l_1175 = &p_1997->g_641[0][0][0];
            int32_t ***l_1174 = &l_1175;
            int32_t l_1178 = 0L;
            int32_t *l_1179[7] = {&p_1997->g_502,&l_1087,&p_1997->g_502,&p_1997->g_502,&l_1087,&p_1997->g_502,&p_1997->g_502};
            int i;
            (*p_1997->g_1181) &= (+((((*l_118) = (+(*l_1066))) != (*l_513)) >= (((5UL || 1UL) >= 9UL) | (safe_lshift_func_uint16_t_u_s((((safe_div_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(p_43, 0)), ((l_1180 = (!((safe_lshift_func_uint16_t_u_u(0xF7D6L, 1)) >= (l_982[0] = (safe_sub_func_uint8_t_u_u((((safe_add_func_int64_t_s_s(p_43, (((*l_1144) = (l_1174 != p_1997->g_1176)) < (*l_1066)))) <= l_1178) | p_43), 1L)))))) , p_43))) || 1UL) | FAKE_DIVERGE(p_1997->global_0_offset, get_global_id(0), 10)), l_1178)))));
            (**p_44) |= (*l_1066);
            if (l_986)
                goto lbl_1182;
        }
        else
        { /* block id: 604 */
            int32_t l_1183 = 0L;
            int32_t *l_1184 = &l_981;
            int32_t *l_1185 = &p_1997->g_514;
            int32_t *l_1186 = &l_978;
            int32_t *l_1187 = (void*)0;
            int32_t *l_1188 = &l_982[1];
            int32_t *l_1189 = &p_1997->g_514;
            int32_t *l_1190 = (void*)0;
            int32_t *l_1191 = (void*)0;
            int32_t *l_1192 = &l_977;
            int32_t *l_1193[1];
            uint32_t l_1195 = 0xECBE24BDL;
            int i;
            for (i = 0; i < 1; i++)
                l_1193[i] = &p_1997->g_476[5][5];
            --l_1195;
            (*p_42) = (*p_42);
        }
        for (l_1161 = 0; (l_1161 <= 5); l_1161 += 1)
        { /* block id: 610 */
            int32_t *l_1198 = (void*)0;
            int32_t *l_1199 = (void*)0;
            int32_t *l_1200 = &l_978;
            int32_t *l_1201[6][1][3] = {{{&l_1180,&p_1997->g_476[7][0],&l_1180}},{{&l_1180,&p_1997->g_476[7][0],&l_1180}},{{&l_1180,&p_1997->g_476[7][0],&l_1180}},{{&l_1180,&p_1997->g_476[7][0],&l_1180}},{{&l_1180,&p_1997->g_476[7][0],&l_1180}},{{&l_1180,&p_1997->g_476[7][0],&l_1180}}};
            uint32_t l_1209 = 0x285F47A2L;
            int16_t **l_1214 = &p_1997->g_330[0][0][0];
            uint16_t l_1224 = 0UL;
            uint16_t l_1226[3];
            uint16_t l_1237 = 0xBCF9L;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_1226[i] = 0xE39AL;
            l_1209--;
            for (p_1997->g_730.f0 = 2; (p_1997->g_730.f0 >= 0); p_1997->g_730.f0 -= 1)
            { /* block id: 614 */
                int16_t ***l_1213 = (void*)0;
                int32_t l_1223 = 0x1A2619CAL;
                int32_t l_1225 = 0x466052F1L;
                l_1225 &= ((((+(safe_unary_minus_func_int64_t_s(((((l_1214 = &p_1997->g_330[0][1][0]) != (GROUP_DIVERGE(0, 1) , l_1215)) , p_43) && ((safe_mod_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(((((((*p_1997->g_242) < ((((safe_lshift_func_uint16_t_u_s((safe_unary_minus_func_uint8_t_u((((l_1223 == (p_43 = (((p_1997->g_83[5] = ((((~(((((*l_1200) ^ ((((*l_118) = (l_1223 < p_43)) | (0x7F6FL >= l_1223)) , GROUP_DIVERGE(1, 1))) == p_1997->g_476[6][5]) <= 4L) , p_43)) , GROUP_DIVERGE(0, 1)) && 0x46E3CD7806D01AC1L) ^ p_43)) && l_1224) & 0x0AL))) , (void*)0) != (void*)0))), (*l_1066))) , (*l_1200)) , 0L) ^ (*l_513))) != 0x90F8173AB1D654ACL) , 0x56AE93D1L) , (*l_1066)) & (**p_1997->g_329)), p_1997->g_725[3].f0)), 0x71F8L)) , p_1997->g_1091))))) <= FAKE_DIVERGE(p_1997->group_0_offset, get_group_id(0), 10)) < (*l_1144)) < l_1223);
                (*l_1200) = 0x76A75C21L;
                ++l_1226[2];
                for (p_1997->g_991.f1 = 0; (p_1997->g_991.f1 <= 5); p_1997->g_991.f1 += 1)
                { /* block id: 624 */
                    int i, j, k;
                    (*p_42) = p_1997->g_641[p_1997->g_730.f0][p_1997->g_730.f0][p_1997->g_730.f0];
                    (*p_1997->g_242) = ((*l_513) ^= (0x21070A4DC28747ECL != ((safe_sub_func_int8_t_s_s(p_43, (((safe_mul_func_uint8_t_u_u((((**p_44) |= ((safe_add_func_int32_t_s_s((safe_rshift_func_int16_t_s_u((p_43 > (&p_1997->g_674 != l_952)), 13)), (((p_43 | l_1223) < (*p_1997->g_323)) , ((0x1888908BL && 0x5ADA3661L) < FAKE_DIVERGE(p_1997->local_0_offset, get_local_id(0), 10))))) >= (***p_1997->g_355))) , p_43), 0x7BL)) & p_1997->g_727[5][0].f0) == p_43))) < 0x24C9L)));
                    l_1237--;
                }
            }
        }
        for (p_1997->g_772 = (-18); (p_1997->g_772 >= 40); p_1997->g_772++)
        { /* block id: 635 */
            uint32_t l_1242 = 0x564B4A51L;
            int16_t ***l_1247 = &l_1215;
            uint32_t **l_1253 = &l_949;
            (*p_45) = (*p_44);
            (**p_45) |= l_1242;
            (*l_513) &= ((safe_add_func_int16_t_s_s((**p_1997->g_329), (FAKE_DIVERGE(p_1997->local_0_offset, get_local_id(0), 10) , (safe_add_func_uint32_t_u_u(((((l_1247 != l_1247) < ((*p_1997->g_354) = ((((safe_div_func_uint16_t_u_u(((p_1997->g_1250 , p_1997->g_1251) == (l_1253 = l_1252)), (((&l_952 != &l_952) , ((((((**p_1997->g_353) < p_43) ^ p_43) == GROUP_DIVERGE(0, 1)) || 18446744073709551607UL) | (*l_1144))) , 0x24B6L))) , p_43) ^ p_1997->g_556) != 0xA58D2BCBL))) | GROUP_DIVERGE(0, 1)) || (*l_1144)), p_1997->g_93[2][3][0]))))) < p_43);
        }
    }
    return (*l_513);
}


/* ------------------------------------------ */
/* 
 * reads : p_1997->g_729.f1 p_1997->g_242 p_1997->g_142 p_1997->g_355 p_1997->g_353 p_1997->g_114 p_1997->g_329 p_1997->g_330 p_1997->g_779 p_1997->g_93 p_1997->g_193.f0 p_1997->g_738.f0 p_1997->g_4 p_1997->g_803 p_1997->g_811 p_1997->g_354 p_1997->g_98 p_1997->g_476 p_1997->g_726.f0 p_1997->g_556 p_1997->g_724.f0 p_1997->g_119 p_1997->g_718.f0 p_1997->g_772 p_1997->g_51
 * writes: p_1997->g_729.f1 p_1997->g_142 p_1997->g_114 p_1997->g_772 p_1997->g_177 p_1997->g_556 p_1997->g_837 p_1997->g_119 p_1997->g_718.f0 p_1997->g_52
 */
uint8_t  func_60(uint64_t  p_61, uint32_t  p_62, struct S2 * p_1997)
{ /* block id: 396 */
    uint8_t l_761 = 0xF0L;
    int16_t l_762 = 0x5E1AL;
    int32_t l_765 = 0x1908F5CAL;
    int32_t l_770 = (-8L);
    int64_t *l_771 = &p_1997->g_114[0][5];
    int8_t l_775[4];
    int32_t l_778 = (-1L);
    int32_t ***l_792 = &p_1997->g_51;
    int32_t *l_800 = &p_1997->g_502;
    int32_t *l_815 = &p_1997->g_556;
    int32_t *l_816 = &p_1997->g_476[7][0];
    int32_t *l_817[9][4] = {{&p_1997->g_514,&l_770,&l_770,&p_1997->g_514},{&p_1997->g_514,&l_770,&l_770,&p_1997->g_514},{&p_1997->g_514,&l_770,&l_770,&p_1997->g_514},{&p_1997->g_514,&l_770,&l_770,&p_1997->g_514},{&p_1997->g_514,&l_770,&l_770,&p_1997->g_514},{&p_1997->g_514,&l_770,&l_770,&p_1997->g_514},{&p_1997->g_514,&l_770,&l_770,&p_1997->g_514},{&p_1997->g_514,&l_770,&l_770,&p_1997->g_514},{&p_1997->g_514,&l_770,&l_770,&p_1997->g_514}};
    uint32_t l_818 = 0xC608F04EL;
    uint16_t **l_821 = (void*)0;
    uint16_t ***l_822 = &l_821;
    int8_t *l_827[3];
    uint64_t ***l_833[1];
    uint32_t *l_836[4][5][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
    int32_t l_851 = 0x50A2122CL;
    int32_t l_858 = 5L;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_775[i] = 0x44L;
    for (i = 0; i < 3; i++)
        l_827[i] = &p_1997->g_739[0][3][0].f1;
    for (i = 0; i < 1; i++)
        l_833[i] = &p_1997->g_322;
    for (p_1997->g_729.f1 = 0; (p_1997->g_729.f1 <= 3); p_1997->g_729.f1 += 1)
    { /* block id: 399 */
        (*p_1997->g_242) &= (p_61 < l_761);
        (*p_1997->g_242) = l_762;
    }
    if (((l_765 = p_61) || (0x5B1EL == ((**p_1997->g_329) = (l_778 &= ((*p_1997->g_355) == ((safe_mod_func_uint64_t_u_u(l_761, (((((+(l_770 ^= p_61)) <= ((p_1997->g_772 = (GROUP_DIVERGE(0, 1) , (((*l_771) |= 0x06BE0B0D79F51CB1L) >= 1L))) != (safe_rshift_func_uint8_t_u_u(l_775[1], 2)))) > (safe_div_func_int8_t_s_s(l_761, p_61))) <= 5L) ^ 0x06B5L))) , (void*)0)))))))
    { /* block id: 409 */
        uint8_t l_793 = 0UL;
        (*p_1997->g_242) = (p_1997->g_779 , (safe_mul_func_int16_t_s_s((safe_sub_func_int64_t_s_s(((*l_771) = (((0x00L & l_775[0]) > (safe_rshift_func_uint8_t_u_s(p_1997->g_93[2][3][0], ((safe_rshift_func_uint8_t_u_s(p_1997->g_193.f0, 0)) & p_1997->g_738.f0)))) <= (((safe_mul_func_int8_t_s_s((((l_761 , (safe_rshift_func_int16_t_s_s((+(l_792 != l_792)), 10))) | p_1997->g_4) != GROUP_DIVERGE(0, 1)), l_770)) <= p_61) , GROUP_DIVERGE(2, 1)))), l_793)), l_793)));
    }
    else
    { /* block id: 412 */
        uint16_t l_808 = 2UL;
        uint8_t *l_814 = &l_761;
        (*p_1997->g_242) |= (((*l_771) = (safe_div_func_uint64_t_u_u(1UL, (safe_sub_func_int32_t_s_s((0x1BFEA1B1L >= ((safe_rshift_func_uint16_t_u_s(p_62, 15)) == ((void*)0 == l_800))), (safe_add_func_uint64_t_u_u((!(p_1997->g_803 , ((((safe_add_func_int16_t_s_s((((safe_mul_func_uint16_t_u_u((l_808 && ((safe_sub_func_int64_t_s_s((p_1997->g_811[3] , (safe_sub_func_uint64_t_u_u(((((*l_814) ^= FAKE_DIVERGE(p_1997->local_1_offset, get_local_id(1), 10)) || ((**p_1997->g_353) == l_808)) & 1L), p_61))), l_808)) && 0xB925L)), 0x061EL)) != p_61) != 0x76A65A38L), p_61)) , p_1997->g_476[7][0]) , 0x6501L) != p_62))), l_775[1]))))))) > p_1997->g_726.f0);
    }
    --l_818;
    if (((((FAKE_DIVERGE(p_1997->local_0_offset, get_local_id(0), 10) , (-1L)) >= (+((((*l_822) = l_821) != (((*l_815) |= (safe_mul_func_int8_t_s_s((safe_add_func_int8_t_s_s((*l_816), p_61)), p_62))) , (*p_1997->g_355))) & (safe_unary_minus_func_uint16_t_u(((+(safe_div_func_int8_t_s_s(((safe_rshift_func_int8_t_s_s((l_833[0] == (void*)0), ((safe_mul_func_uint8_t_u_u(((((p_1997->g_837 = p_1997->g_724.f0) , p_1997->g_142) >= p_62) & FAKE_DIVERGE(p_1997->group_2_offset, get_group_id(2), 10)), p_1997->g_98[3][1][4])) | 1L))) , (-1L)), p_61))) , (*p_1997->g_354))))))) , 0x90L) < 250UL))
    { /* block id: 421 */
        int16_t ***l_846 = (void*)0;
        int16_t ****l_845 = &l_846;
        int32_t l_848 = (-2L);
        int32_t l_849 = (-1L);
        int32_t l_850 = 0x68E3C532L;
        int32_t l_852 = 0x03D2E485L;
        int32_t l_854 = 0x3D8DCD30L;
        int32_t l_855 = 0x02567C03L;
        int32_t l_856 = (-10L);
        int32_t l_857 = (-1L);
        int32_t l_859 = 0x2FC1E55FL;
        int32_t l_860 = 1L;
        int32_t l_862[6] = {9L,9L,9L,9L,9L,9L};
        uint8_t l_863 = 0x16L;
        int i;
        for (p_1997->g_119 = 2; (p_1997->g_119 >= 0); p_1997->g_119 = safe_sub_func_int8_t_s_s(p_1997->g_119, 9))
        { /* block id: 424 */
            int16_t ****l_847 = &l_846;
            for (p_1997->g_718.f0 = 21; (p_1997->g_718.f0 >= 22); p_1997->g_718.f0 = safe_add_func_int8_t_s_s(p_1997->g_718.f0, 8))
            { /* block id: 427 */
                uint16_t l_842 = 65534UL;
                l_842++;
                (*l_815) &= ((l_845 == l_847) <= p_1997->g_772);
            }
        }
        ++l_863;
        (*p_1997->g_51) = (void*)0;
    }
    else
    { /* block id: 434 */
        return p_62;
    }
    return (*l_815);
}


/* ------------------------------------------ */
/* 
 * reads : p_1997->g_138.f1 p_1997->g_83 p_1997->g_354 p_1997->g_153.f0 p_1997->g_329 p_1997->g_330 p_1997->g_177 p_1997->g_4 p_1997->g_476 p_1997->g_322 p_1997->g_323 p_1997->g_242 p_1997->g_142 p_1997->g_140 p_1997->g_557 p_1997->g_353 p_1997->g_98 p_1997->g_377.f0 p_1997->g_589 p_1997->g_355 p_1997->g_263 p_1997->g_238 p_1997->g_119 p_1997->g_88 p_1997->g_514 p_1997->g_673 p_1997->g_51 p_1997->g_362.f1 p_1997->g_93 p_1997->g_556 p_1997->g_377.f1 p_1997->g_170 p_1997->g_211 p_1997->g_175 p_1997->g_265 p_1997->g_713 p_1997->g_731.f0
 * writes: p_1997->g_138.f1 p_1997->g_98 p_1997->g_177 p_1997->g_493.f1 p_1997->g_263 p_1997->g_88 p_1997->g_142 p_1997->g_556 p_1997->g_83 p_1997->g_476 p_1997->g_618 p_1997->g_641 p_1997->g_557.f1 p_1997->g_119 p_1997->g_514 p_1997->g_589.f2 p_1997->g_235.f1 p_1997->g_674 p_1997->g_52 p_1997->g_377.f0 p_1997->g_362.f1 p_1997->g_377.f1 p_1997->g_211 p_1997->g_114 p_1997->g_716
 */
int64_t  func_65(int64_t  p_66, int16_t  p_67, int64_t  p_68, uint8_t * p_69, int16_t  p_70, struct S2 * p_1997)
{ /* block id: 231 */
    uint32_t l_517 = 1UL;
    int32_t *l_533[4][7][6] = {{{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]}},{{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]}},{{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]}},{{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]},{(void*)0,&p_1997->g_142,&p_1997->g_4,&p_1997->g_514,&p_1997->g_476[7][0],&p_1997->g_476[7][0]}}};
    uint32_t l_678 = 0UL;
    uint64_t l_681 = 0x52D38C003C66F26BL;
    int32_t l_688 = (-9L);
    uint16_t l_689 = 65535UL;
    int16_t l_755 = 0x4BC0L;
    int i, j, k;
    for (p_1997->g_138.f1 = 3; (p_1997->g_138.f1 >= 0); p_1997->g_138.f1 -= 1)
    { /* block id: 234 */
        int32_t l_528 = 0x086F929AL;
        int32_t *l_532 = &p_1997->g_476[7][0];
        uint32_t l_547 = 5UL;
        int32_t l_560 = (-1L);
        int32_t l_578 = 0x2840CDE0L;
        int32_t l_581 = 0x3097369AL;
        int32_t l_584[6];
        int32_t l_585 = 0x66699F95L;
        uint32_t l_586[7] = {0xA2326A78L,1UL,0xA2326A78L,0xA2326A78L,1UL,0xA2326A78L,0xA2326A78L};
        uint64_t l_643 = 0x0533F87F9BE3DF3AL;
        int i;
        for (i = 0; i < 6; i++)
            l_584[i] = 0L;
        if (p_67)
            break;
        if ((safe_rshift_func_uint16_t_u_s((l_517 < l_517), (((safe_div_func_uint64_t_u_u(((safe_div_func_uint32_t_u_u(l_517, (safe_add_func_uint64_t_u_u(p_67, (safe_mul_func_int8_t_s_s((p_1997->g_83[0] , ((((*p_1997->g_354) = l_517) , 0x1044A606L) < ((safe_sub_func_uint16_t_u_u((p_1997->g_153.f0 , l_528), p_70)) || (-6L)))), p_67)))))) ^ 7L), p_67)) ^ l_517) , p_66))))
        { /* block id: 237 */
            int32_t *l_531 = (void*)0;
            int8_t *l_545 = &p_1997->g_493.f1;
            uint64_t *l_546 = &p_1997->g_88;
            uint32_t *l_548 = &l_547;
            (*p_1997->g_242) ^= (safe_div_func_int16_t_s_s(((((((**p_1997->g_329) &= 0x5B2EL) , 1L) , (l_532 = l_531)) == l_533[3][4][1]) ^ (~p_1997->g_4)), (safe_mul_func_int16_t_s_s((safe_div_func_uint8_t_u_u(l_528, (safe_add_func_int64_t_s_s((((*l_546) = ((**p_1997->g_322) = ((p_1997->g_476[0][4] ^ p_1997->g_476[7][0]) , ((((safe_unary_minus_func_int8_t_s((safe_rshift_func_int8_t_s_s(((*l_545) = (+(((safe_rshift_func_int16_t_s_u(l_528, 12)) != 251UL) >= l_528))), 3)))) & 0xA14959A4L) >= p_70) || FAKE_DIVERGE(p_1997->group_1_offset, get_group_id(1), 10))))) >= p_67), p_70)))), l_547))));
            (*p_1997->g_242) = ((((*l_548) &= 0x4AB690B3L) || (-1L)) < p_1997->g_140[1]);
        }
        else
        { /* block id: 246 */
            uint32_t l_558[3];
            uint32_t *l_559 = &p_1997->g_83[6];
            int i;
            for (i = 0; i < 3; i++)
                l_558[i] = 0xA63994E9L;
            (*l_532) = (((~((*l_559) |= (0L & ((**p_1997->g_329) = (((+((safe_unary_minus_func_uint64_t_u((!(p_70 <= 0xC1L)))) >= (*l_532))) ^ ((+(safe_lshift_func_int8_t_s_u(p_66, 1))) < ((p_66 & (l_558[2] ^= ((**p_1997->g_353) &= (((safe_mul_func_int16_t_s_s((p_1997->g_556 = ((*l_532) >= (GROUP_DIVERGE(1, 1) || p_68))), (p_1997->g_557 , 0x5795L))) <= p_66) ^ p_68)))) , p_1997->g_377.f0))) < (**p_1997->g_329)))))) , 0UL) | 0x59L);
            return l_560;
        }
        if (p_70)
            break;
        for (l_528 = 1; (l_528 <= 4); l_528 += 1)
        { /* block id: 258 */
            uint32_t l_563 = 0x10D5E950L;
            int16_t l_568 = 1L;
            int32_t l_576 = 0x4E83381EL;
            int32_t l_577[7][3];
            uint8_t l_615 = 255UL;
            int16_t ***l_650 = &p_1997->g_329;
            union U1 *l_659 = (void*)0;
            union U1 **l_658 = &l_659;
            union U0 *l_672 = &p_1997->g_493;
            int i, j;
            for (i = 0; i < 7; i++)
            {
                for (j = 0; j < 3; j++)
                    l_577[i][j] = 0x798BB139L;
            }
            for (p_1997->g_263 = 0; (p_1997->g_263 <= 4); p_1997->g_263 += 1)
            { /* block id: 261 */
                int8_t l_567 = 0x46L;
                int32_t l_570 = 3L;
                int32_t l_571 = 0x7CD88DEDL;
                int32_t l_572 = 0x17EA7F2DL;
                int8_t l_573 = (-1L);
                int32_t l_579 = 3L;
                int32_t l_580[6][8][3] = {{{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L}},{{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L}},{{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L}},{{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L}},{{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L}},{{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L},{0x4E015FDDL,0x28B8791AL,0L}}};
                int8_t l_582 = 0x1CL;
                int16_t l_583[7];
                int i, j, k;
                for (i = 0; i < 7; i++)
                    l_583[i] = 0x50A7L;
                (*p_1997->g_242) = (l_563 = (~(safe_rshift_func_uint16_t_u_u((**p_1997->g_353), (+0x33C6L)))));
                for (p_1997->g_177 = 0; (p_1997->g_177 <= 4); p_1997->g_177 += 1)
                { /* block id: 266 */
                    int32_t l_566 = 0x6BA4C196L;
                    int32_t l_574 = 3L;
                    int32_t l_575[9][2] = {{0x4A8F9604L,0x4A8F9604L},{0x4A8F9604L,0x4A8F9604L},{0x4A8F9604L,0x4A8F9604L},{0x4A8F9604L,0x4A8F9604L},{0x4A8F9604L,0x4A8F9604L},{0x4A8F9604L,0x4A8F9604L},{0x4A8F9604L,0x4A8F9604L},{0x4A8F9604L,0x4A8F9604L},{0x4A8F9604L,0x4A8F9604L}};
                    uint32_t *l_636 = (void*)0;
                    int8_t *l_671[1];
                    int i, j;
                    for (i = 0; i < 1; i++)
                        l_671[i] = &l_582;
                    if ((p_68 || (safe_lshift_func_uint8_t_u_s(l_566, 1))))
                    { /* block id: 267 */
                        int32_t l_569[2][8] = {{(-2L),0x4716B801L,(-2L),(-2L),0x4716B801L,(-2L),(-2L),0x4716B801L},{(-2L),0x4716B801L,(-2L),(-2L),0x4716B801L,(-2L),(-2L),0x4716B801L}};
                        uint32_t *l_611 = (void*)0;
                        uint32_t *l_612 = &p_1997->g_83[5];
                        uint32_t *l_616 = &l_517;
                        uint32_t *l_617[8] = {&l_547,&l_547,&l_547,&l_547,&l_547,&l_547,&l_547,&l_547};
                        int i, j, k;
                        --l_586[2];
                        if (l_569[1][1])
                            continue;
                        (*p_1997->g_242) = (p_1997->g_589 , ((FAKE_DIVERGE(p_1997->global_2_offset, get_global_id(2), 10) & (safe_unary_minus_func_int64_t_s((safe_rshift_func_uint16_t_u_s((safe_mul_func_uint16_t_u_u((***p_1997->g_355), (safe_sub_func_uint32_t_u_u(((p_1997->g_618 = ((*l_616) = (safe_rshift_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((((safe_rshift_func_uint16_t_u_u(l_569[1][1], 14)) == (safe_add_func_uint64_t_u_u(0UL, 0xB77CF4D680AB0664L))) | (((((-1L) > (((safe_rshift_func_uint16_t_u_u((safe_mod_func_uint64_t_u_u(((!((l_569[1][1] && ((-1L) <= ((--(*l_612)) && p_70))) || (**p_1997->g_353))) & (*p_1997->g_323)), p_67)), l_573)) && FAKE_DIVERGE(p_1997->global_2_offset, get_global_id(2), 10)) , 247UL)) , l_615) && l_575[7][1]) , p_70)), 1UL)), 2)))) < 4294967286UL), p_67)))), 2))))) & p_70));
                        if (l_566)
                            break;
                    }
                    else
                    { /* block id: 275 */
                        int32_t *l_640[7][1];
                        int32_t **l_639[8][8][4] = {{{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]}},{{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]}},{{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]}},{{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]}},{{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]}},{{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]}},{{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]}},{{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]},{&l_640[5][0],&l_640[5][0],&l_640[5][0],&l_640[5][0]}}};
                        int8_t *l_642 = &p_1997->g_557.f1;
                        int8_t *l_644 = (void*)0;
                        int8_t *l_645 = &l_573;
                        int16_t ****l_651 = &l_650;
                        int32_t l_668 = 0x661ACA24L;
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_640[i][j] = &p_1997->g_557.f0;
                        }
                        atomic_min(&p_1997->g_atomic_reduction[get_linear_group_id()], (safe_mod_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u(((*l_645) = ((safe_mod_func_uint8_t_u_u((((safe_lshift_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(((&p_67 == &l_583[1]) >= ((p_67 < (safe_lshift_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(((~(safe_rshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), 12))) , (safe_unary_minus_func_int16_t_s(p_67))), (l_636 == (void*)0))), ((l_566 >= ((*l_642) = ((p_1997->g_641[0][1][1] = ((safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1997->group_0_offset, get_group_id(0), 10), p_70)) , p_1997->g_242)) != (void*)0))) & 0xDE009CE9L)))) , 1L)), p_66)), p_66)) || 0x071B21C480995892L) , 255UL), p_1997->g_238[7])) , l_643)), l_615)), p_70)) + get_linear_global_id());
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1997->v_collective += p_1997->g_atomic_reduction[get_linear_group_id()];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_1997->g_514 |= (safe_rshift_func_uint16_t_u_u((***p_1997->g_355), ((((((((p_67 > ((safe_rshift_func_uint16_t_u_u(((((((&p_1997->g_329 != ((*l_651) = l_650)) > (safe_mul_func_uint8_t_u_u(l_582, GROUP_DIVERGE(1, 1)))) , (safe_mul_func_int64_t_s_s((!(-5L)), ((safe_sub_func_uint16_t_u_u((0xDAD10256L ^ (l_658 == ((safe_mul_func_int8_t_s_s((p_1997->g_119 &= (safe_lshift_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_u((safe_add_func_int32_t_s_s(p_67, (*p_1997->g_242))), (*p_1997->g_354))) <= 0x1461C9941DC390E6L), p_67))), p_1997->g_476[7][0])) , (void*)0))), l_668)) >= p_67)))) , 1UL) <= 0x5D3DL) && l_668), 7)) , p_70)) && p_1997->g_88) == 65526UL) , p_70) == 0x27EDCA9965CACEB9L) & 0x33L) , (-1L)) || p_68)));
                    }
                    l_575[7][0] = ((((safe_rshift_func_int8_t_s_s((l_574 = p_67), 7)) , (-1L)) > 0x6FL) && p_66);
                    (*p_1997->g_242) = l_582;
                }
                for (p_1997->g_589.f2 = 0; p_1997->g_589.f2 < 4; p_1997->g_589.f2 += 1)
                {
                    for (l_576 = 0; l_576 < 3; l_576 += 1)
                    {
                        for (p_1997->g_235.f1 = 0; p_1997->g_235.f1 < 5; p_1997->g_235.f1 += 1)
                        {
                            p_1997->g_98[p_1997->g_589.f2][l_576][p_1997->g_235.f1] = 0UL;
                        }
                    }
                }
            }
            for (p_1997->g_514 = 0; (p_1997->g_514 <= 4); p_1997->g_514 += 1)
            { /* block id: 292 */
                (*p_1997->g_673) = l_672;
                if (p_68)
                    continue;
            }
            if (p_66)
                break;
            for (l_615 = 0; (l_615 <= 4); l_615 += 1)
            { /* block id: 299 */
                uint16_t l_675[1];
                int32_t l_679 = 1L;
                int32_t l_680 = 1L;
                int i;
                for (i = 0; i < 1; i++)
                    l_675[i] = 0x097FL;
                l_675[0]--;
                if (l_678)
                    continue;
                ++l_681;
            }
        }
        for (p_70 = 4; (p_70 >= 0); p_70 -= 1)
        { /* block id: 307 */
            int32_t *l_684 = (void*)0;
            int32_t **l_687 = &p_1997->g_641[0][2][1];
            (*p_1997->g_51) = (l_684 = (void*)0);
            if ((*p_1997->g_242))
                continue;
            if (p_66)
                break;
            for (p_1997->g_377.f0 = 4; (p_1997->g_377.f0 >= 0); p_1997->g_377.f0 -= 1)
            { /* block id: 314 */
                uint16_t l_692 = 0x5BEBL;
                for (p_1997->g_362.f1 = 4; (p_1997->g_362.f1 >= 0); p_1997->g_362.f1 -= 1)
                { /* block id: 317 */
                    if ((safe_lshift_func_uint16_t_u_s((l_687 == (void*)0), 12)))
                    { /* block id: 318 */
                        int i;
                        if (p_1997->g_83[(p_1997->g_138.f1 + 2)])
                            break;
                        if (l_688)
                            break;
                    }
                    else
                    { /* block id: 321 */
                        ++l_689;
                        return l_692;
                    }
                    if (p_68)
                        break;
                    return p_1997->g_93[2][4][0];
                }
            }
        }
    }
lbl_696:
    for (p_1997->g_138.f1 = 0; (p_1997->g_138.f1 >= 7); p_1997->g_138.f1++)
    { /* block id: 333 */
        (*p_1997->g_51) = &l_688;
    }
    (*p_1997->g_242) ^= p_68;
    for (p_67 = 0; (p_67 >= 0); p_67 -= 1)
    { /* block id: 339 */
        int64_t l_695[5] = {0x2E8A41473E38D253L,0x2E8A41473E38D253L,0x2E8A41473E38D253L,0x2E8A41473E38D253L,0x2E8A41473E38D253L};
        int32_t l_697 = (-1L);
        int8_t *l_706 = &p_1997->g_138.f1;
        int8_t **l_705 = &l_706;
        union U0 *l_711 = &p_1997->g_493;
        union U1 *l_715 = &p_1997->g_377;
        union U1 **l_714 = &l_715;
        int32_t l_744[4] = {0x6DAF8341L,0x6DAF8341L,0x6DAF8341L,0x6DAF8341L};
        int i;
        l_695[0] |= p_68;
        if (p_68)
            goto lbl_696;
        for (p_1997->g_556 = 0; (p_1997->g_556 <= 0); p_1997->g_556 += 1)
        { /* block id: 344 */
            for (p_1997->g_557.f1 = 0; (p_1997->g_557.f1 >= 0); p_1997->g_557.f1 -= 1)
            { /* block id: 347 */
                for (p_1997->g_377.f1 = 0; (p_1997->g_377.f1 >= 0); p_1997->g_377.f1 -= 1)
                { /* block id: 350 */
                    int i, j, k;
                    return p_1997->g_93[(p_1997->g_556 + 4)][p_1997->g_377.f1][p_1997->g_377.f1];
                }
            }
            for (p_1997->g_138.f1 = 0; (p_1997->g_138.f1 >= 0); p_1997->g_138.f1 -= 1)
            { /* block id: 356 */
                uint64_t l_698 = 0UL;
                int i, j, k;
                (*p_1997->g_51) = &l_688;
                ++l_698;
                return p_1997->g_93[(p_1997->g_138.f1 + 3)][p_67][p_1997->g_556];
            }
        }
        for (p_1997->g_263 = 0; (p_1997->g_263 <= 0); p_1997->g_263 += 1)
        { /* block id: 364 */
            uint32_t l_710[3][1];
            int32_t l_745 = 0L;
            int32_t l_746 = 0x699387E7L;
            int32_t l_747 = 5L;
            int32_t l_748 = (-9L);
            int32_t l_751 = 0x31B1855DL;
            int32_t l_753 = 0x60AAE5F9L;
            uint16_t l_757 = 9UL;
            int i, j;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                    l_710[i][j] = 0xFF66315DL;
            }
            for (p_1997->g_138.f1 = 0; (p_1997->g_138.f1 >= 0); p_1997->g_138.f1 -= 1)
            { /* block id: 367 */
                uint16_t *l_708 = &p_1997->g_98[1][1][3];
                int i, j, k;
                (*p_1997->g_242) &= p_1997->g_93[(p_67 + 3)][(p_1997->g_263 + 6)][p_67];
                for (p_1997->g_211 = 0; (p_1997->g_211 <= 0); p_1997->g_211 += 1)
                { /* block id: 371 */
                    int32_t l_707 = 0x55EC6655L;
                    int64_t *l_709 = &p_1997->g_114[0][5];
                    int i, j, k;
                    p_1997->g_476[7][2] ^= ((GROUP_DIVERGE(0, 1) < (((p_1997->g_170[p_1997->g_138.f1] , p_1997->g_175[p_1997->g_211]) >= ((((*l_709) = ((safe_lshift_func_int8_t_s_s(p_1997->g_514, 5)) | ((((((-5L) < (safe_mul_func_uint16_t_u_u(((0x123F4C71L == ((*p_1997->g_242) = p_68)) != ((((&p_1997->g_674 == (void*)0) , (l_705 != p_1997->g_265)) > p_1997->g_93[2][3][0]) && l_707)), 0x9474L))) , (*p_1997->g_353)) != l_708) ^ p_1997->g_140[1]) ^ p_67))) == 0UL) <= l_710[1][0])) && p_66)) > (*p_1997->g_323));
                }
                if (p_1997->g_170[p_67])
                    break;
            }
            for (l_697 = 0; (l_697 <= 0); l_697 += 1)
            { /* block id: 380 */
                int8_t l_743 = 0x5DL;
                int32_t l_749 = 0x0F9D8719L;
                int32_t l_750 = (-1L);
                int32_t l_752 = 0x4DE48840L;
                int32_t l_754 = (-1L);
                int32_t l_756[6] = {(-10L),0L,(-10L),(-10L),0L,(-10L)};
                uint32_t *l_760 = (void*)0;
                int i;
                if (p_66)
                { /* block id: 381 */
                    union U0 **l_712 = &l_711;
                    (*p_1997->g_51) = &l_688;
                    if ((*p_1997->g_242))
                        continue;
                    (*l_712) = l_711;
                }
                else
                { /* block id: 385 */
                    (*p_1997->g_242) ^= p_66;
                    l_743 ^= ((p_1997->g_713 , l_714) == (p_1997->g_716 = &l_715));
                }
                l_757++;
                atomic_or(&p_1997->g_atomic_reduction[get_linear_group_id()], ((void*)0 != l_760) + get_linear_global_id());
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_1997->v_collective += p_1997->g_atomic_reduction[get_linear_group_id()];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            }
        }
    }
    return p_1997->g_731[7].f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_1997->g_83 p_1997->g_98 p_1997->g_117 p_1997->g_93 p_1997->g_138 p_1997->g_114 p_1997->g_153 p_1997->g_159 p_1997->g_170 p_1997->g_140 p_1997->g_51 p_1997->g_52 p_1997->g_4 p_1997->g_193 p_1997->g_175 p_1997->g_211 p_1997->g_138.f1 p_1997->g_353 p_1997->g_355 p_1997->g_119 p_1997->g_362 p_1997->g_242 p_1997->g_142 p_1997->g_377 p_1997->g_238 p_1997->g_183 p_1997->g_365.f0 p_1997->g_354 p_1997->g_386 p_1997->g_322 p_1997->g_323 p_1997->g_263 p_1997->g_243 p_1997->g_244 p_1997->g_329 p_1997->g_330 p_1997->g_177 p_1997->g_235.f0 p_1997->g_377.f0 p_1997->g_434 p_1997->g_57 p_1997->g_365 p_1997->g_88 p_1997->g_493 p_1997->g_507 p_1997->g_476 p_1997->g_493.f0
 * writes: p_1997->g_117 p_1997->g_93 p_1997->g_138.f3 p_1997->g_140 p_1997->g_138.f1 p_1997->g_142 p_1997->g_159 p_1997->g_170 p_1997->g_52 p_1997->g_98 p_1997->g_211 p_1997->g_353 p_1997->g_238 p_1997->g_177 p_1997->g_377.f0 p_1997->g_263 p_1997->g_88 p_1997->g_114 p_1997->g_362.f2 p_1997->g_502
 */
uint32_t  func_73(int32_t  p_74, int32_t  p_75, int32_t  p_76, uint8_t * p_77, uint8_t * p_78, struct S2 * p_1997)
{ /* block id: 33 */
    uint64_t *l_134 = &p_1997->g_88;
    int32_t l_156 = 0x3BECA4C4L;
    int32_t l_163 = (-6L);
    int32_t l_165 = 1L;
    int32_t l_269 = (-7L);
    int32_t l_333 = 0L;
    int32_t l_363 = 0x75F38C48L;
    int32_t ***l_370 = &p_1997->g_51;
    uint8_t *l_374 = &p_1997->g_57;
    uint8_t **l_373[5] = {&l_374,&l_374,&l_374,&l_374,&l_374};
    uint32_t *l_380 = (void*)0;
    uint32_t *l_381 = &p_1997->g_238[4];
    int64_t l_414 = 1L;
    int i;
    for (p_75 = 0; (p_75 < 25); p_75 = safe_add_func_int16_t_s_s(p_75, 1))
    { /* block id: 36 */
        int16_t l_157[4][10][2] = {{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}}};
        int32_t l_173 = 0x10E784B4L;
        int32_t l_174 = (-1L);
        int64_t l_176[4] = {0x6D74FDE4B572696FL,0x6D74FDE4B572696FL,0x6D74FDE4B572696FL,0x6D74FDE4B572696FL};
        uint64_t l_262 = 0x869F7D501D7207EEL;
        int16_t *l_327 = &p_1997->g_140[1];
        int16_t **l_326 = &l_327;
        int16_t ***l_345 = (void*)0;
        int16_t l_351 = 0x7A77L;
        union U1 *l_364 = &p_1997->g_365[6];
        int i, j, k;
        for (p_74 = 0; (p_74 <= 2); p_74 += 1)
        { /* block id: 39 */
            uint16_t *l_131 = &p_1997->g_117;
            int16_t *l_135 = &p_1997->g_93[2][3][0];
            int16_t *l_139 = &p_1997->g_140[1];
            int32_t *l_141[8][10][3] = {{{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142}},{{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142}},{{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142}},{{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142}},{{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142}},{{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142}},{{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142}},{{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142},{&p_1997->g_4,&p_1997->g_4,&p_1997->g_142}}};
            uint16_t l_143 = 0x4249L;
            uint16_t l_205 = 65535UL;
            int8_t *l_213[10] = {&p_1997->g_119,&p_1997->g_119,&p_1997->g_119,&p_1997->g_119,&p_1997->g_119,&p_1997->g_119,&p_1997->g_119,&p_1997->g_119,&p_1997->g_119,&p_1997->g_119};
            int8_t **l_212[5][8][6] = {{{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]}},{{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]}},{{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]}},{{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]}},{{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]},{&l_213[8],&l_213[8],&l_213[8],&l_213[8],(void*)0,&l_213[6]}}};
            int32_t ***l_234 = &p_1997->g_51;
            union U1 *l_239 = (void*)0;
            uint64_t **l_267 = (void*)0;
            uint64_t ***l_266 = &l_267;
            int16_t ***l_352 = &p_1997->g_329;
            int i, j, k;
            l_143 = (((*p_78) ^= ((safe_unary_minus_func_int64_t_s((safe_rshift_func_uint16_t_u_u(0xE6B2L, 15)))) | p_1997->g_83[(p_74 + 2)])) == (safe_rshift_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((((*l_131) &= p_1997->g_98[1][1][2]) | (safe_rshift_func_int16_t_s_u(((*l_135) ^= ((void*)0 == l_134)), 11))), (safe_mod_func_uint32_t_u_u((((*l_139) = (p_1997->g_138.f3 = (((p_1997->g_83[5] < (0x7246L || ((p_1997->g_98[3][0][1] <= (p_1997->g_138 , 0x73297CB3L)) != 0xF98BL))) , p_1997->g_114[0][5]) != p_1997->g_98[1][2][0]))) == p_74), GROUP_DIVERGE(0, 1))))), p_1997->g_83[5])));
            for (p_1997->g_138.f1 = 6; (p_1997->g_138.f1 >= 2); p_1997->g_138.f1 -= 1)
            { /* block id: 48 */
                int32_t l_158 = 0x60F3683EL;
                int32_t l_166 = 8L;
                uint32_t l_184[5][1];
                int32_t ***l_254 = &p_1997->g_51;
                uint64_t ***l_268 = &l_267;
                int64_t l_285 = 0L;
                uint16_t l_288 = 0xD313L;
                int16_t ***l_346 = &l_326;
                int i, j, k;
                for (i = 0; i < 5; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_184[i][j] = 0x13849F51L;
                }
                if ((p_1997->g_142 = ((((safe_rshift_func_int8_t_s_u(p_1997->g_98[p_74][p_74][(p_74 + 1)], p_1997->g_98[(p_74 + 1)][p_74][(p_74 + 1)])) & ((safe_unary_minus_func_int16_t_s((0x97L < (+p_1997->g_93[2][3][0])))) ^ ((safe_rshift_func_int16_t_s_s((FAKE_DIVERGE(p_1997->group_0_offset, get_group_id(0), 10) & (GROUP_DIVERGE(0, 1) , ((safe_sub_func_int64_t_s_s(((void*)0 == &l_143), p_1997->g_98[1][1][4])) == (safe_div_func_uint32_t_u_u((p_1997->g_153 , (((safe_mod_func_int16_t_s_s(l_156, l_157[2][7][0])) < GROUP_DIVERGE(0, 1)) < l_156)), l_157[0][5][0]))))), 0)) ^ p_75))) < 0x68B728ABL) , p_76)))
                { /* block id: 50 */
                    uint64_t l_162 = 0xA1EB4E85139CCBA0L;
                    int32_t l_164 = (-3L);
                    for (l_156 = 0; (l_156 <= 6); l_156 += 1)
                    { /* block id: 53 */
                        uint16_t l_167 = 0x382DL;
                        p_1997->g_159--;
                        if (l_162)
                            continue;
                        l_167++;
                    }
                }
                else
                { /* block id: 58 */
                    uint8_t l_178[4][4] = {{255UL,255UL,0xD4L,0x1DL},{255UL,255UL,0xD4L,0x1DL},{255UL,255UL,0xD4L,0x1DL},{255UL,255UL,0xD4L,0x1DL}};
                    int i, j;
                    for (p_76 = 4; (p_76 >= 0); p_76 -= 1)
                    { /* block id: 61 */
                        int i, j, k;
                        --p_1997->g_170[0];
                        l_178[0][0]--;
                        return p_76;
                    }
                    if (p_1997->g_140[2])
                        break;
                    for (l_156 = 6; (l_156 >= 0); l_156 -= 1)
                    { /* block id: 69 */
                        int32_t *l_181 = &l_173;
                        l_181 = (*p_1997->g_51);
                    }
                }
                for (p_76 = 1; (p_76 <= 6); p_76 += 1)
                { /* block id: 75 */
                    int32_t l_182 = 0x57D315D3L;
                    int32_t l_206 = (-1L);
                    int64_t *l_236 = (void*)0;
                    int64_t *l_237 = &l_176[0];
                    int64_t l_260[2];
                    uint32_t l_270 = 5UL;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_260[i] = 0L;
                    for (l_174 = 6; (l_174 >= 0); l_174 -= 1)
                    { /* block id: 78 */
                        if (l_182)
                            break;
                        ++l_184[0][0];
                        if (p_75)
                            break;
                    }
                    if (l_163)
                    { /* block id: 83 */
                        (*p_1997->g_51) = &p_74;
                    }
                    else
                    { /* block id: 85 */
                        uint64_t l_204 = 18446744073709551615UL;
                        int8_t ***l_215 = &l_212[2][3][1];
                        l_206 = (((safe_add_func_uint64_t_u_u(p_75, (p_1997->g_4 || ((*p_78) = ((safe_lshift_func_uint16_t_u_s((p_1997->g_98[3][2][2] = (p_1997->g_193 , (safe_mul_func_uint16_t_u_u(p_1997->g_114[0][1], ((p_1997->g_175[0] >= ((4294967294UL | (safe_add_func_uint32_t_u_u((((l_184[3][0] == (safe_mul_func_uint8_t_u_u(((safe_sub_func_uint64_t_u_u(((safe_lshift_func_uint16_t_u_s((l_204 , (p_1997->g_4 , p_75)), p_1997->g_117)) < p_75), l_205)) || 0xD670L), p_76))) , l_156) || p_1997->g_93[2][6][0]), l_182))) <= p_1997->g_98[(p_74 + 1)][p_74][(p_74 + 1)])) != 0x02L))))), 2)) == p_1997->g_140[7]))))) , 0x32649211A307C161L) | l_174);
                        l_173 &= p_75;
                        l_206 ^= (safe_lshift_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s((p_1997->g_211 &= p_1997->g_170[0]), 6)), 1));
                        (*l_215) = l_212[2][3][1];
                    }
                }
                for (p_1997->g_142 = 20; (p_1997->g_142 == 25); ++p_1997->g_142)
                { /* block id: 132 */
                    uint64_t l_334 = 0xBD4E2FBB93CB30D8L;
                    (*p_1997->g_51) = (*p_1997->g_51);
                    for (p_1997->g_211 = 2; (p_1997->g_211 <= 7); p_1997->g_211 += 1)
                    { /* block id: 136 */
                        int16_t ***l_344 = &l_326;
                        int16_t ****l_343[4][1] = {{&l_344},{&l_344},{&l_344},{&l_344}};
                        int i, j;
                        l_334--;
                        p_76 = (safe_mul_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u(((safe_div_func_uint16_t_u_u((((l_346 = (l_345 = &p_1997->g_329)) != (void*)0) || (((&l_345 == &l_344) ^ (safe_rshift_func_int16_t_s_u((p_1997->g_140[p_1997->g_138.f1] , p_1997->g_140[p_1997->g_211]), 11))) , l_157[1][1][0])), (7UL && ((((safe_lshift_func_uint8_t_u_u((l_351 ^ p_1997->g_83[5]), (*p_78))) || 0x4EE3447D4B94EF72L) , (void*)0) == l_352)))) >= l_157[2][7][0]), 4)), 0L));
                    }
                }
                (*p_1997->g_355) = p_1997->g_353;
            }
        }
        if ((safe_div_func_int32_t_s_s((-1L), GROUP_DIVERGE(0, 1))))
        { /* block id: 146 */
            return p_1997->g_119;
        }
        else
        { /* block id: 148 */
            union U1 **l_367 = &l_364;
            (*p_1997->g_242) = (safe_mod_func_uint64_t_u_u((safe_add_func_uint8_t_u_u(((p_1997->g_362 , l_363) && 1L), p_1997->g_98[1][1][2])), p_75));
            (*p_1997->g_242) |= 0x5B4049BEL;
            (*l_367) = l_364;
        }
    }
    if ((l_269 < (((((safe_add_func_uint16_t_u_u(((l_370 == (void*)0) | ((safe_sub_func_uint16_t_u_u((+((GROUP_DIVERGE(0, 1) , l_373[3]) != (void*)0)), (safe_lshift_func_uint16_t_u_u(((p_1997->g_377 , p_1997->g_140[3]) , ((((safe_div_func_int8_t_s_s((((*l_381)++) , ((safe_mul_func_uint8_t_u_u(p_1997->g_183, p_1997->g_365[6].f0)) != (**p_1997->g_353))), p_75)) < 0L) & (-1L)) && p_75)), (*p_1997->g_354))))) , p_1997->g_386)), (*p_1997->g_354))) <= p_75) && p_75) , 0x6407B08EL) >= (-5L))))
    { /* block id: 155 */
        int32_t l_399 = 0x5B612CE2L;
        uint16_t *l_415 = (void*)0;
        int32_t l_444 = 0x22458DF7L;
        int64_t l_452 = 0x329899BC3CE371D4L;
        int32_t l_474[5][10][4] = {{{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL}},{{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL}},{{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL}},{{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL}},{{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL},{0x40DF3DEDL,0x51B0F071L,(-1L),0x5FB7EBAFL}}};
        uint8_t l_477 = 0x1EL;
        int32_t **l_481[8][7][4] = {{{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242}},{{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242}},{{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242}},{{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242}},{{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242}},{{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242}},{{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242}},{{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242},{(void*)0,&p_1997->g_52,(void*)0,&p_1997->g_242}}};
        int i, j, k;
        if ((*p_1997->g_242))
        { /* block id: 156 */
            (*p_1997->g_51) = (*p_1997->g_51);
            (**l_370) = &p_74;
            (**l_370) = (*p_1997->g_51);
            return p_1997->g_238[4];
        }
        else
        { /* block id: 161 */
            uint64_t **l_406 = &l_134;
            uint64_t *l_408 = &p_1997->g_263;
            uint64_t **l_407 = &l_408;
            int16_t *l_411 = (void*)0;
            int16_t *l_412[9] = {&p_1997->g_140[1],&p_1997->g_140[1],&p_1997->g_140[1],&p_1997->g_140[1],&p_1997->g_140[1],&p_1997->g_140[1],&p_1997->g_140[1],&p_1997->g_140[1],&p_1997->g_140[1]};
            int32_t l_413[7][2][6] = {{{0x4E7804CDL,9L,0x65B72007L,0x3E5E8C92L,0x43FA6C99L,0x446E3DDEL},{0x4E7804CDL,9L,0x65B72007L,0x3E5E8C92L,0x43FA6C99L,0x446E3DDEL}},{{0x4E7804CDL,9L,0x65B72007L,0x3E5E8C92L,0x43FA6C99L,0x446E3DDEL},{0x4E7804CDL,9L,0x65B72007L,0x3E5E8C92L,0x43FA6C99L,0x446E3DDEL}},{{0x4E7804CDL,9L,0x65B72007L,0x3E5E8C92L,0x43FA6C99L,0x446E3DDEL},{0x4E7804CDL,9L,0x65B72007L,0x3E5E8C92L,0x43FA6C99L,0x446E3DDEL}},{{0x4E7804CDL,9L,0x65B72007L,0x3E5E8C92L,0x43FA6C99L,0x446E3DDEL},{0x4E7804CDL,9L,0x65B72007L,0x3E5E8C92L,0x43FA6C99L,0x446E3DDEL}},{{0x4E7804CDL,9L,0x65B72007L,0x3E5E8C92L,0x43FA6C99L,0x446E3DDEL},{0x4E7804CDL,9L,0x65B72007L,0x3E5E8C92L,0x43FA6C99L,0x446E3DDEL}},{{0x4E7804CDL,9L,0x65B72007L,0x3E5E8C92L,0x43FA6C99L,0x446E3DDEL},{0x4E7804CDL,9L,0x65B72007L,0x3E5E8C92L,0x43FA6C99L,0x446E3DDEL}},{{0x4E7804CDL,9L,0x65B72007L,0x3E5E8C92L,0x43FA6C99L,0x446E3DDEL},{0x4E7804CDL,9L,0x65B72007L,0x3E5E8C92L,0x43FA6C99L,0x446E3DDEL}}};
            uint32_t l_416 = 0xCAA19DAAL;
            int32_t *l_417 = &p_1997->g_377.f0;
            int32_t *l_418 = &l_165;
            int16_t ****l_433 = (void*)0;
            int8_t *l_443[3][3] = {{&p_1997->g_119,(void*)0,&p_1997->g_119},{&p_1997->g_119,(void*)0,&p_1997->g_119},{&p_1997->g_119,(void*)0,&p_1997->g_119}};
            int64_t *l_445 = (void*)0;
            int64_t *l_446 = (void*)0;
            int i, j, k;
            (*l_418) |= (safe_lshift_func_int8_t_s_s((((*l_417) &= (safe_div_func_uint16_t_u_u((((((*p_1997->g_242) = ((p_76 != (safe_div_func_int64_t_s_s(((**p_1997->g_322) >= ((safe_lshift_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_s(255UL, (safe_mul_func_uint16_t_u_u(((**p_1997->g_353) = (((l_399 >= (safe_sub_func_int8_t_s_s((safe_mod_func_int32_t_s_s(((p_75 & 0x9FL) , (((((safe_sub_func_int8_t_s_s((((((*l_407) = ((*l_406) = l_134)) != (*p_1997->g_243)) | (safe_mul_func_int16_t_s_s((l_413[1][0][5] ^= ((**p_1997->g_329) = p_74)), l_414))) , p_76), 0UL)) , l_415) != l_415) , p_74) || l_413[4][1][4])), 7L)), (-5L)))) | p_74) , 65533UL)), l_399)))) , (**p_1997->g_329)), l_416)) || p_1997->g_235.f0)), p_1997->g_93[2][3][0]))) , 0x5FEB5DD1L)) & l_416) , p_74) , l_413[1][0][5]), p_75))) , 0x36L), 6));
            (*p_1997->g_242) &= ((safe_mul_func_uint8_t_u_u((((**p_1997->g_329) |= (safe_sub_func_int64_t_s_s((p_1997->g_114[0][5] = ((((safe_add_func_uint16_t_u_u(((((l_444 = ((*l_134) = ((*l_418) == (safe_mul_func_uint16_t_u_u(((safe_sub_func_int64_t_s_s((+p_1997->g_365[6].f0), (safe_sub_func_uint64_t_u_u((safe_mod_func_int8_t_s_s(((l_433 != p_1997->g_434) > (**p_1997->g_353)), 0xFFL)), (safe_mod_func_uint32_t_u_u((((((safe_mul_func_uint8_t_u_u((((l_399 &= ((safe_sub_func_uint64_t_u_u(((**p_1997->g_322) = ((p_74 , 5UL) | (((safe_mod_func_int16_t_s_s((((*l_418) == 0xA7EFD327L) >= 249UL), p_75)) > (-8L)) >= 7UL))), p_74)) != 0x64C4L)) & 0x34L) & 1UL), FAKE_DIVERGE(p_1997->local_1_offset, get_local_id(1), 10))) && (-8L)) != p_75) , p_74) & p_75), (*l_418))))))) && 0x42L), p_75))))) & p_76) == (*p_77)) >= p_74), 65535UL)) && 7UL) != p_74) ^ p_74)), 0xCF1EEAD5FB94BD43L))) == p_75), p_76)) || p_75);
        }
        atomic_xor(&p_1997->l_atomic_reduction[0], ((*p_1997->g_242) = (-1L)) + get_linear_global_id());
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_1997->v_collective += p_1997->l_atomic_reduction[0];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        for (p_74 = 0; (p_74 <= 26); p_74 = safe_add_func_uint32_t_u_u(p_74, 4))
        { /* block id: 182 */
            int32_t l_461[10][7] = {{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)}};
            int32_t l_469 = 0x18412345L;
            int i, j;
            for (l_414 = 16; (l_414 == 17); l_414 = safe_add_func_uint8_t_u_u(l_414, 5))
            { /* block id: 185 */
                int8_t l_451 = 0x23L;
                int32_t l_470[7];
                int i;
                for (i = 0; i < 7; i++)
                    l_470[i] = 0x5A8080C9L;
                if ((!(-1L)))
                { /* block id: 186 */
                    int8_t *l_466 = (void*)0;
                    int8_t *l_467[4] = {&p_1997->g_362.f1,&p_1997->g_362.f1,&p_1997->g_362.f1,&p_1997->g_362.f1};
                    int32_t l_472 = 0x1981730CL;
                    int32_t l_473 = 0x0F559D5AL;
                    int32_t l_475 = 0L;
                    int i;
                    l_451 ^= 0L;
                    if (((p_1997->g_365[6] , (((void*)0 == &p_1997->g_114[0][3]) , (l_452 >= (safe_mul_func_uint16_t_u_u((p_75 >= (safe_lshift_func_int8_t_s_u((l_444 = ((((((GROUP_DIVERGE(1, 1) && ((**p_1997->g_322) |= (safe_sub_func_uint16_t_u_u((((void*)0 == &p_1997->g_243) , (safe_add_func_int64_t_s_s((((*p_78) = (l_461[4][2] , (safe_mul_func_int16_t_s_s(((**p_1997->g_329) = (((+((*l_134) = ((safe_rshift_func_int8_t_s_s(l_461[4][2], l_451)) | (-6L)))) == l_452) | 3UL)), (-4L))))) || FAKE_DIVERGE(p_1997->global_2_offset, get_global_id(2), 10)), FAKE_DIVERGE(p_1997->global_0_offset, get_global_id(0), 10)))), p_75)))) | p_1997->g_142) || l_451) && FAKE_DIVERGE(p_1997->local_2_offset, get_local_id(2), 10)) , p_1997->g_170[0]) ^ (-1L))), 7))), (**p_1997->g_353)))))) | 0x43E2L))
                    { /* block id: 193 */
                        if ((*p_1997->g_242))
                            break;
                        l_469 = (safe_unary_minus_func_int16_t_s((-8L)));
                        if ((*p_1997->g_242))
                            continue;
                    }
                    else
                    { /* block id: 197 */
                        int32_t *l_471[5];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_471[i] = &l_165;
                        ++l_477;
                    }
                    (*p_1997->g_51) = &l_472;
                    return p_75;
                }
                else
                { /* block id: 202 */
                    int32_t **l_480[4];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_480[i] = (void*)0;
                    l_481[7][0][1] = l_480[2];
                }
            }
        }
    }
    else
    { /* block id: 207 */
        int32_t l_482[10];
        int32_t *l_483 = (void*)0;
        int32_t *l_484[9][10] = {{&l_333,(void*)0,&p_1997->g_476[7][0],&p_1997->g_4,&l_165,(void*)0,&p_1997->g_476[7][0],(void*)0,&l_482[8],&l_482[8]},{&l_333,(void*)0,&p_1997->g_476[7][0],&p_1997->g_4,&l_165,(void*)0,&p_1997->g_476[7][0],(void*)0,&l_482[8],&l_482[8]},{&l_333,(void*)0,&p_1997->g_476[7][0],&p_1997->g_4,&l_165,(void*)0,&p_1997->g_476[7][0],(void*)0,&l_482[8],&l_482[8]},{&l_333,(void*)0,&p_1997->g_476[7][0],&p_1997->g_4,&l_165,(void*)0,&p_1997->g_476[7][0],(void*)0,&l_482[8],&l_482[8]},{&l_333,(void*)0,&p_1997->g_476[7][0],&p_1997->g_4,&l_165,(void*)0,&p_1997->g_476[7][0],(void*)0,&l_482[8],&l_482[8]},{&l_333,(void*)0,&p_1997->g_476[7][0],&p_1997->g_4,&l_165,(void*)0,&p_1997->g_476[7][0],(void*)0,&l_482[8],&l_482[8]},{&l_333,(void*)0,&p_1997->g_476[7][0],&p_1997->g_4,&l_165,(void*)0,&p_1997->g_476[7][0],(void*)0,&l_482[8],&l_482[8]},{&l_333,(void*)0,&p_1997->g_476[7][0],&p_1997->g_4,&l_165,(void*)0,&p_1997->g_476[7][0],(void*)0,&l_482[8],&l_482[8]},{&l_333,(void*)0,&p_1997->g_476[7][0],&p_1997->g_4,&l_165,(void*)0,&p_1997->g_476[7][0],(void*)0,&l_482[8],&l_482[8]}};
        uint8_t l_508 = 0xA6L;
        uint64_t **l_511[6] = {&p_1997->g_323,&p_1997->g_323,&p_1997->g_323,&p_1997->g_323,&p_1997->g_323,&p_1997->g_323};
        int i, j;
        for (i = 0; i < 10; i++)
            l_482[i] = 1L;
        p_1997->g_362.f2 = ((*p_1997->g_242) = (p_1997->g_98[1][1][2] & l_482[8]));
        for (p_1997->g_88 = 7; (p_1997->g_88 < 1); p_1997->g_88 = safe_sub_func_uint16_t_u_u(p_1997->g_88, 7))
        { /* block id: 212 */
            for (p_1997->g_138.f1 = 9; (p_1997->g_138.f1 >= 0); p_1997->g_138.f1 -= 1)
            { /* block id: 215 */
                int64_t *l_500 = (void*)0;
                int64_t *l_501[8] = {&l_414,&p_1997->g_114[0][4],&l_414,&l_414,&p_1997->g_114[0][4],&l_414,&l_414,&p_1997->g_114[0][4]};
                int i;
                (*p_1997->g_242) &= (l_482[p_1997->g_138.f1] , ((((**l_370) = &p_74) != (void*)0) | (safe_lshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_s((p_78 == p_77), ((**p_1997->g_329) = ((safe_mul_func_int8_t_s_s((p_1997->g_493 , ((safe_div_func_int8_t_s_s(((safe_div_func_int16_t_s_s((safe_div_func_uint8_t_u_u(((p_1997->g_502 = (p_1997->g_114[0][5] = 0x0A6216B60961CD12L)) ^ (p_76 ^ (safe_sub_func_int16_t_s_s((safe_mod_func_int8_t_s_s(0x48L, 246UL)), p_1997->g_507)))), l_482[p_1997->g_138.f1])), (*p_1997->g_354))) , p_75), p_1997->g_140[4])) < l_508)), p_76)) && p_1997->g_476[5][4])))), l_482[p_1997->g_138.f1]))));
            }
            if (p_75)
                break;
        }
        (*p_1997->g_242) = (0x0BL || (0x5504L != ((**p_1997->g_353) |= (safe_rshift_func_int16_t_s_u(((l_380 != &p_1997->g_83[5]) <= p_75), (&l_134 == l_511[4]))))));
        (**l_370) = (*p_1997->g_51);
    }
    return p_1997->g_493.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_1997->g_88 p_1997->g_83 p_1997->g_93 p_1997->g_4
 * writes: p_1997->g_88 p_1997->g_93
 */
int32_t  func_79(uint32_t  p_80, int64_t  p_81, struct S2 * p_1997)
{ /* block id: 20 */
    int32_t l_94 = 7L;
    for (p_81 = 4; (p_81 >= 1); p_81 -= 1)
    { /* block id: 23 */
        uint64_t *l_87[3][4] = {{&p_1997->g_88,&p_1997->g_88,&p_1997->g_88,&p_1997->g_88},{&p_1997->g_88,&p_1997->g_88,&p_1997->g_88,&p_1997->g_88},{&p_1997->g_88,&p_1997->g_88,&p_1997->g_88,&p_1997->g_88}};
        int32_t l_89[1];
        int16_t *l_92[5][5][9] = {{{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0}},{{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0}},{{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0}},{{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0}},{{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0},{&p_1997->g_93[2][2][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][3][0],&p_1997->g_93[2][2][0],&p_1997->g_93[5][3][0],&p_1997->g_93[2][3][0],(void*)0}}};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_89[i] = 0x33EC6B9FL;
        l_89[0] |= ((p_1997->g_93[4][6][0] |= (((p_1997->g_88++) , p_1997->g_83[(p_81 + 1)]) < p_1997->g_83[(p_81 + 2)])) <= p_1997->g_4);
    }
    return l_94;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S2 c_1998;
    struct S2* p_1997 = &c_1998;
    struct S2 c_1999 = {
        0L, // p_1997->g_4
        (void*)0, // p_1997->g_52
        &p_1997->g_52, // p_1997->g_51
        9UL, // p_1997->g_57
        0xF5DDA301L, // p_1997->g_64
        {7UL,7UL,7UL,7UL,7UL,7UL,7UL}, // p_1997->g_83
        0UL, // p_1997->g_88
        {{{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L}},{{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L}},{{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L}},{{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L}},{{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L}},{{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L},{0x1F09L}}}, // p_1997->g_93
        {{{0x447DL,65535UL,0x447DL,0x447DL,65535UL},{0x447DL,65535UL,0x447DL,0x447DL,65535UL},{0x447DL,65535UL,0x447DL,0x447DL,65535UL}},{{0x447DL,65535UL,0x447DL,0x447DL,65535UL},{0x447DL,65535UL,0x447DL,0x447DL,65535UL},{0x447DL,65535UL,0x447DL,0x447DL,65535UL}},{{0x447DL,65535UL,0x447DL,0x447DL,65535UL},{0x447DL,65535UL,0x447DL,0x447DL,65535UL},{0x447DL,65535UL,0x447DL,0x447DL,65535UL}},{{0x447DL,65535UL,0x447DL,0x447DL,65535UL},{0x447DL,65535UL,0x447DL,0x447DL,65535UL},{0x447DL,65535UL,0x447DL,0x447DL,65535UL}}}, // p_1997->g_98
        {{7L,7L,7L,7L,7L,7L,7L,7L,7L,7L}}, // p_1997->g_114
        65532UL, // p_1997->g_117
        0x55L, // p_1997->g_119
        {0xBB5F0344L}, // p_1997->g_138
        {(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)}, // p_1997->g_140
        0L, // p_1997->g_142
        {1L}, // p_1997->g_153
        0x237AF67482672F84L, // p_1997->g_159
        {1UL}, // p_1997->g_170
        {(-10L)}, // p_1997->g_175
        0x3ED9L, // p_1997->g_177
        0x713AA71CL, // p_1997->g_183
        {0x39B1839EL}, // p_1997->g_193
        8UL, // p_1997->g_211
        (void*)0, // p_1997->g_214
        {1L}, // p_1997->g_235
        {0x18982161L,0x18982161L,0x18982161L,0x18982161L,0x18982161L,0x18982161L,0x18982161L,0x18982161L}, // p_1997->g_238
        &p_1997->g_142, // p_1997->g_242
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1997->g_244
        &p_1997->g_244[4], // p_1997->g_243
        (void*)0, // p_1997->g_245
        {{{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243}},{{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243}},{{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243}},{{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243}},{{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243},{&p_1997->g_243,&p_1997->g_243,(void*)0,(void*)0,&p_1997->g_243,(void*)0,&p_1997->g_243}}}, // p_1997->g_246
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_1997->g_247
        &p_1997->g_243, // p_1997->g_248
        5UL, // p_1997->g_263
        (void*)0, // p_1997->g_265
        &p_1997->g_263, // p_1997->g_323
        &p_1997->g_323, // p_1997->g_322
        {{{&p_1997->g_177},{&p_1997->g_177}}}, // p_1997->g_330
        &p_1997->g_330[0][0][0], // p_1997->g_329
        &p_1997->g_98[1][0][0], // p_1997->g_354
        &p_1997->g_354, // p_1997->g_353
        &p_1997->g_353, // p_1997->g_355
        {1UL}, // p_1997->g_362
        {{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}}, // p_1997->g_365
        (void*)0, // p_1997->g_366
        {1L}, // p_1997->g_377
        0x2552F691L, // p_1997->g_386
        (void*)0, // p_1997->g_434
        {{0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL,0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL},{0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL,0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL},{0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL,0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL},{0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL,0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL},{0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL,0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL},{0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL,0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL},{0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL,0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL},{0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL,0x701E5E0AL,0x5D15E1F3L,0x701E5E0AL}}, // p_1997->g_476
        {0UL}, // p_1997->g_493
        0x18C79D36L, // p_1997->g_502
        0x4235L, // p_1997->g_507
        4L, // p_1997->g_514
        0x330336B6L, // p_1997->g_556
        {0L}, // p_1997->g_557
        {0xA7920295L}, // p_1997->g_589
        0x2EL, // p_1997->g_618
        {{{&p_1997->g_377.f0,(void*)0,(void*)0},{&p_1997->g_377.f0,(void*)0,(void*)0},{&p_1997->g_377.f0,(void*)0,(void*)0}},{{&p_1997->g_377.f0,(void*)0,(void*)0},{&p_1997->g_377.f0,(void*)0,(void*)0},{&p_1997->g_377.f0,(void*)0,(void*)0}},{{&p_1997->g_377.f0,(void*)0,(void*)0},{&p_1997->g_377.f0,(void*)0,(void*)0},{&p_1997->g_377.f0,(void*)0,(void*)0}}}, // p_1997->g_641
        (void*)0, // p_1997->g_674
        &p_1997->g_674, // p_1997->g_673
        {6L}, // p_1997->g_713
        {-1L}, // p_1997->g_718
        {0x0C93FE1DL}, // p_1997->g_719
        {{{0x40C65833L},{0x40C65833L}},{{0x40C65833L},{0x40C65833L}},{{0x40C65833L},{0x40C65833L}},{{0x40C65833L},{0x40C65833L}},{{0x40C65833L},{0x40C65833L}},{{0x40C65833L},{0x40C65833L}},{{0x40C65833L},{0x40C65833L}}}, // p_1997->g_720
        {0x30E765D4L}, // p_1997->g_721
        {{0L},{0x1221CB8BL},{0L},{0L},{0x1221CB8BL},{0L},{0L},{0x1221CB8BL},{0L}}, // p_1997->g_722
        {0x6DC62E37L}, // p_1997->g_723
        {0L}, // p_1997->g_724
        {{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L},{9L}}, // p_1997->g_725
        {-5L}, // p_1997->g_726
        {{{0x0904C0CEL},{0L},{0x0904C0CEL},{0x0904C0CEL},{0L},{0x0904C0CEL}},{{0x0904C0CEL},{0L},{0x0904C0CEL},{0x0904C0CEL},{0L},{0x0904C0CEL}},{{0x0904C0CEL},{0L},{0x0904C0CEL},{0x0904C0CEL},{0L},{0x0904C0CEL}},{{0x0904C0CEL},{0L},{0x0904C0CEL},{0x0904C0CEL},{0L},{0x0904C0CEL}},{{0x0904C0CEL},{0L},{0x0904C0CEL},{0x0904C0CEL},{0L},{0x0904C0CEL}},{{0x0904C0CEL},{0L},{0x0904C0CEL},{0x0904C0CEL},{0L},{0x0904C0CEL}},{{0x0904C0CEL},{0L},{0x0904C0CEL},{0x0904C0CEL},{0L},{0x0904C0CEL}},{{0x0904C0CEL},{0L},{0x0904C0CEL},{0x0904C0CEL},{0L},{0x0904C0CEL}}}, // p_1997->g_727
        {0x78D9D594L}, // p_1997->g_728
        {0x3B4B7554L}, // p_1997->g_729
        {0x08BA7772L}, // p_1997->g_730
        {{0x4775C90FL},{0L},{0x4775C90FL},{0x4775C90FL},{0L},{0x4775C90FL},{0x4775C90FL},{0L}}, // p_1997->g_731
        {{{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}}},{{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}}},{{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}}},{{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}}},{{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}}},{{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}}},{{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}}},{{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}}},{{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}},{{1L},{0x6D32D77EL},{-1L}}}}, // p_1997->g_732
        {0x0595FB8AL}, // p_1997->g_733
        {0L}, // p_1997->g_734
        {0L}, // p_1997->g_735
        {-7L}, // p_1997->g_736
        {{0L},{9L},{0L},{0L},{9L},{0L},{0L}}, // p_1997->g_737
        {0L}, // p_1997->g_738
        {{{{1L}},{{1L}},{{1L}},{{1L}},{{1L}},{{1L}}},{{{1L}},{{1L}},{{1L}},{{1L}},{{1L}},{{1L}}},{{{1L}},{{1L}},{{1L}},{{1L}},{{1L}},{{1L}}}}, // p_1997->g_739
        {0x50E28E79L}, // p_1997->g_740
        {8L}, // p_1997->g_741
        {{{-1L}},{{-1L}},{{-1L}},{{-1L}},{{-1L}},{{-1L}},{{-1L}},{{-1L}},{{-1L}},{{-1L}}}, // p_1997->g_742
        {{{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730}},{{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730}},{{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730}},{{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730}},{{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730},{&p_1997->g_737[5],(void*)0,&p_1997->g_721,&p_1997->g_723,&p_1997->g_742[3][0],(void*)0,&p_1997->g_730}}}, // p_1997->g_717
        &p_1997->g_717[1][2][6], // p_1997->g_716
        0xD039656BC93DCDE7L, // p_1997->g_772
        {-1L}, // p_1997->g_779
        {4L}, // p_1997->g_803
        {{1UL},{0x0A0A928DL},{1UL},{1UL},{0x0A0A928DL},{1UL}}, // p_1997->g_811
        4294967294UL, // p_1997->g_837
        0x6AEE8426L, // p_1997->g_853
        (-7L), // p_1997->g_861
        {{{{0x9D0FDC75L},{0x77850FEAL},{1UL},{0x77850FEAL}}},{{{0x9D0FDC75L},{0x77850FEAL},{1UL},{0x77850FEAL}}},{{{0x9D0FDC75L},{0x77850FEAL},{1UL},{0x77850FEAL}}},{{{0x9D0FDC75L},{0x77850FEAL},{1UL},{0x77850FEAL}}},{{{0x9D0FDC75L},{0x77850FEAL},{1UL},{0x77850FEAL}}},{{{0x9D0FDC75L},{0x77850FEAL},{1UL},{0x77850FEAL}}},{{{0x9D0FDC75L},{0x77850FEAL},{1UL},{0x77850FEAL}}}}, // p_1997->g_881
        6UL, // p_1997->g_904
        {&p_1997->g_904,&p_1997->g_904,&p_1997->g_904,&p_1997->g_904,&p_1997->g_904,&p_1997->g_904,&p_1997->g_904,&p_1997->g_904,&p_1997->g_904}, // p_1997->g_903
        &p_1997->g_903[5], // p_1997->g_902
        {9L}, // p_1997->g_921
        {0xA37F96E2L}, // p_1997->g_991
        {0UL}, // p_1997->g_1011
        1UL, // p_1997->g_1016
        {0x817DCA11L}, // p_1997->g_1019
        {0x838E71C2L}, // p_1997->g_1048
        0xE78CL, // p_1997->g_1063
        (-7L), // p_1997->g_1091
        {{{0xD774F526L},{0xD774F526L},{0xD774F526L},{0xD774F526L}},{{0xD774F526L},{0xD774F526L},{0xD774F526L},{0xD774F526L}},{{0xD774F526L},{0xD774F526L},{0xD774F526L},{0xD774F526L}},{{0xD774F526L},{0xD774F526L},{0xD774F526L},{0xD774F526L}},{{0xD774F526L},{0xD774F526L},{0xD774F526L},{0xD774F526L}}}, // p_1997->g_1097
        0x2A468C420C2BC5FDL, // p_1997->g_1103
        3UL, // p_1997->g_1104
        {{0x64B73A37L},{0x64B73A37L},{0x64B73A37L}}, // p_1997->g_1159
        {{0xFE2BD88FL},{0xFE2BD88FL},{0xFE2BD88FL},{0xFE2BD88FL}}, // p_1997->g_1160
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1997->g_1177
        &p_1997->g_1177[4], // p_1997->g_1176
        &p_1997->g_476[3][0], // p_1997->g_1181
        {0x255982A3L}, // p_1997->g_1250
        (void*)0, // p_1997->g_1251
        {0x08765C5AL}, // p_1997->g_1311
        (-1L), // p_1997->g_1322
        {0x0934771BL}, // p_1997->g_1342
        (void*)0, // p_1997->g_1365
        &p_1997->g_1365, // p_1997->g_1364
        {4294967293UL}, // p_1997->g_1377
        &p_1997->g_514, // p_1997->g_1393
        {0x2ADE8EC5L}, // p_1997->g_1469
        (void*)0, // p_1997->g_1498
        (void*)0, // p_1997->g_1511
        &p_1997->g_1511, // p_1997->g_1510
        &p_1997->g_1510, // p_1997->g_1509
        {-8L}, // p_1997->g_1541
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1997->g_1573
        &p_1997->g_1573[4][3], // p_1997->g_1572
        6L, // p_1997->g_1640
        {{-10L},{-10L},{-10L},{-10L},{-10L}}, // p_1997->g_1653
        {0x1A866F3EL}, // p_1997->g_1676
        0x6C9F18D6DF59F28FL, // p_1997->g_1694
        {0x02BAD8BBL}, // p_1997->g_1707
        0x758AC9C57009938EL, // p_1997->g_1726
        (void*)0, // p_1997->g_1752
        (void*)0, // p_1997->g_1770
        &p_1997->g_1770, // p_1997->g_1769
        &p_1997->g_1769, // p_1997->g_1768
        &p_1997->g_1768, // p_1997->g_1767
        0L, // p_1997->g_1814
        {{0xC6108B6BL,0xC6108B6BL,4294967295UL,0xE66AD908L,0x7E65A895L,0xE66AD908L,4294967295UL,0xC6108B6BL,0xC6108B6BL},{0xC6108B6BL,0xC6108B6BL,4294967295UL,0xE66AD908L,0x7E65A895L,0xE66AD908L,4294967295UL,0xC6108B6BL,0xC6108B6BL},{0xC6108B6BL,0xC6108B6BL,4294967295UL,0xE66AD908L,0x7E65A895L,0xE66AD908L,4294967295UL,0xC6108B6BL,0xC6108B6BL},{0xC6108B6BL,0xC6108B6BL,4294967295UL,0xE66AD908L,0x7E65A895L,0xE66AD908L,4294967295UL,0xC6108B6BL,0xC6108B6BL},{0xC6108B6BL,0xC6108B6BL,4294967295UL,0xE66AD908L,0x7E65A895L,0xE66AD908L,4294967295UL,0xC6108B6BL,0xC6108B6BL},{0xC6108B6BL,0xC6108B6BL,4294967295UL,0xE66AD908L,0x7E65A895L,0xE66AD908L,4294967295UL,0xC6108B6BL,0xC6108B6BL},{0xC6108B6BL,0xC6108B6BL,4294967295UL,0xE66AD908L,0x7E65A895L,0xE66AD908L,4294967295UL,0xC6108B6BL,0xC6108B6BL}}, // p_1997->g_1833
        {{{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1}},{{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1}},{{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1}},{{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1}},{{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1},{&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1,&p_1997->g_921.f1}}}, // p_1997->g_1858
        &p_1997->g_1858[3][0][0], // p_1997->g_1857
        &p_1997->g_1857, // p_1997->g_1856
        {&p_1997->g_1856,&p_1997->g_1856,&p_1997->g_1856,&p_1997->g_1856}, // p_1997->g_1855
        {{{4294967289UL}},{{4294967289UL}},{{4294967289UL}},{{4294967289UL}},{{4294967289UL}},{{4294967289UL}}}, // p_1997->g_1900
        {0xFF0342BBL}, // p_1997->g_1918
        {-1L}, // p_1997->g_1925
        {4294967295UL}, // p_1997->g_1967
        {4294967294UL}, // p_1997->g_1971
        {9UL}, // p_1997->g_1973
        &p_1997->g_1973, // p_1997->g_1972
        {0x254B11ADL}, // p_1997->g_1987
        (void*)0, // p_1997->g_1992
        0, // p_1997->v_collective
        sequence_input[get_global_id(0)], // p_1997->global_0_offset
        sequence_input[get_global_id(1)], // p_1997->global_1_offset
        sequence_input[get_global_id(2)], // p_1997->global_2_offset
        sequence_input[get_local_id(0)], // p_1997->local_0_offset
        sequence_input[get_local_id(1)], // p_1997->local_1_offset
        sequence_input[get_local_id(2)], // p_1997->local_2_offset
        sequence_input[get_group_id(0)], // p_1997->group_0_offset
        sequence_input[get_group_id(1)], // p_1997->group_1_offset
        sequence_input[get_group_id(2)], // p_1997->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1998 = c_1999;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1997);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1997->g_4, "p_1997->g_4", print_hash_value);
    transparent_crc(p_1997->g_57, "p_1997->g_57", print_hash_value);
    transparent_crc(p_1997->g_64, "p_1997->g_64", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1997->g_83[i], "p_1997->g_83[i]", print_hash_value);

    }
    transparent_crc(p_1997->g_88, "p_1997->g_88", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1997->g_93[i][j][k], "p_1997->g_93[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1997->g_98[i][j][k], "p_1997->g_98[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1997->g_114[i][j], "p_1997->g_114[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1997->g_117, "p_1997->g_117", print_hash_value);
    transparent_crc(p_1997->g_119, "p_1997->g_119", print_hash_value);
    transparent_crc(p_1997->g_138.f0, "p_1997->g_138.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1997->g_140[i], "p_1997->g_140[i]", print_hash_value);

    }
    transparent_crc(p_1997->g_142, "p_1997->g_142", print_hash_value);
    transparent_crc(p_1997->g_153.f0, "p_1997->g_153.f0", print_hash_value);
    transparent_crc(p_1997->g_159, "p_1997->g_159", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1997->g_170[i], "p_1997->g_170[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1997->g_175[i], "p_1997->g_175[i]", print_hash_value);

    }
    transparent_crc(p_1997->g_177, "p_1997->g_177", print_hash_value);
    transparent_crc(p_1997->g_183, "p_1997->g_183", print_hash_value);
    transparent_crc(p_1997->g_193.f0, "p_1997->g_193.f0", print_hash_value);
    transparent_crc(p_1997->g_211, "p_1997->g_211", print_hash_value);
    transparent_crc(p_1997->g_235.f0, "p_1997->g_235.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1997->g_238[i], "p_1997->g_238[i]", print_hash_value);

    }
    transparent_crc(p_1997->g_263, "p_1997->g_263", print_hash_value);
    transparent_crc(p_1997->g_362.f0, "p_1997->g_362.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1997->g_365[i].f0, "p_1997->g_365[i].f0", print_hash_value);

    }
    transparent_crc(p_1997->g_377.f0, "p_1997->g_377.f0", print_hash_value);
    transparent_crc(p_1997->g_386, "p_1997->g_386", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1997->g_476[i][j], "p_1997->g_476[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1997->g_493.f0, "p_1997->g_493.f0", print_hash_value);
    transparent_crc(p_1997->g_502, "p_1997->g_502", print_hash_value);
    transparent_crc(p_1997->g_507, "p_1997->g_507", print_hash_value);
    transparent_crc(p_1997->g_514, "p_1997->g_514", print_hash_value);
    transparent_crc(p_1997->g_556, "p_1997->g_556", print_hash_value);
    transparent_crc(p_1997->g_557.f0, "p_1997->g_557.f0", print_hash_value);
    transparent_crc(p_1997->g_589.f0, "p_1997->g_589.f0", print_hash_value);
    transparent_crc(p_1997->g_618, "p_1997->g_618", print_hash_value);
    transparent_crc(p_1997->g_713.f0, "p_1997->g_713.f0", print_hash_value);
    transparent_crc(p_1997->g_718.f0, "p_1997->g_718.f0", print_hash_value);
    transparent_crc(p_1997->g_719.f0, "p_1997->g_719.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1997->g_720[i][j].f0, "p_1997->g_720[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1997->g_721.f0, "p_1997->g_721.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1997->g_722[i].f0, "p_1997->g_722[i].f0", print_hash_value);

    }
    transparent_crc(p_1997->g_724.f0, "p_1997->g_724.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1997->g_725[i].f0, "p_1997->g_725[i].f0", print_hash_value);

    }
    transparent_crc(p_1997->g_726.f0, "p_1997->g_726.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1997->g_727[i][j].f0, "p_1997->g_727[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1997->g_729.f0, "p_1997->g_729.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1997->g_732[i][j][k].f0, "p_1997->g_732[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1997->g_733.f0, "p_1997->g_733.f0", print_hash_value);
    transparent_crc(p_1997->g_735.f0, "p_1997->g_735.f0", print_hash_value);
    transparent_crc(p_1997->g_736.f0, "p_1997->g_736.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1997->g_737[i].f0, "p_1997->g_737[i].f0", print_hash_value);

    }
    transparent_crc(p_1997->g_738.f0, "p_1997->g_738.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1997->g_739[i][j][k].f0, "p_1997->g_739[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1997->g_740.f0, "p_1997->g_740.f0", print_hash_value);
    transparent_crc(p_1997->g_741.f0, "p_1997->g_741.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1997->g_742[i][j].f0, "p_1997->g_742[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1997->g_772, "p_1997->g_772", print_hash_value);
    transparent_crc(p_1997->g_803.f0, "p_1997->g_803.f0", print_hash_value);
    transparent_crc(p_1997->g_837, "p_1997->g_837", print_hash_value);
    transparent_crc(p_1997->g_853, "p_1997->g_853", print_hash_value);
    transparent_crc(p_1997->g_861, "p_1997->g_861", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1997->g_881[i][j][k].f0, "p_1997->g_881[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1997->g_904, "p_1997->g_904", print_hash_value);
    transparent_crc(p_1997->g_991.f1, "p_1997->g_991.f1", print_hash_value);
    transparent_crc(p_1997->g_1011.f0, "p_1997->g_1011.f0", print_hash_value);
    transparent_crc(p_1997->g_1016, "p_1997->g_1016", print_hash_value);
    transparent_crc(p_1997->g_1048.f0, "p_1997->g_1048.f0", print_hash_value);
    transparent_crc(p_1997->g_1063, "p_1997->g_1063", print_hash_value);
    transparent_crc(p_1997->g_1091, "p_1997->g_1091", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1997->g_1097[i][j].f0, "p_1997->g_1097[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1997->g_1103, "p_1997->g_1103", print_hash_value);
    transparent_crc(p_1997->g_1104, "p_1997->g_1104", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1997->g_1159[i].f0, "p_1997->g_1159[i].f0", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1997->g_1160[i].f0, "p_1997->g_1160[i].f0", print_hash_value);

    }
    transparent_crc(p_1997->g_1250.f0, "p_1997->g_1250.f0", print_hash_value);
    transparent_crc(p_1997->g_1311.f0, "p_1997->g_1311.f0", print_hash_value);
    transparent_crc(p_1997->g_1322, "p_1997->g_1322", print_hash_value);
    transparent_crc(p_1997->g_1342.f0, "p_1997->g_1342.f0", print_hash_value);
    transparent_crc(p_1997->g_1541.f0, "p_1997->g_1541.f0", print_hash_value);
    transparent_crc(p_1997->g_1640, "p_1997->g_1640", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1997->g_1653[i].f0, "p_1997->g_1653[i].f0", print_hash_value);

    }
    transparent_crc(p_1997->g_1676.f0, "p_1997->g_1676.f0", print_hash_value);
    transparent_crc(p_1997->g_1694, "p_1997->g_1694", print_hash_value);
    transparent_crc(p_1997->g_1707.f0, "p_1997->g_1707.f0", print_hash_value);
    transparent_crc(p_1997->g_1726, "p_1997->g_1726", print_hash_value);
    transparent_crc(p_1997->g_1814, "p_1997->g_1814", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1997->g_1833[i][j], "p_1997->g_1833[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1997->g_1900[i][j].f0, "p_1997->g_1900[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1997->g_1918.f0, "p_1997->g_1918.f0", print_hash_value);
    transparent_crc(p_1997->g_1925.f0, "p_1997->g_1925.f0", print_hash_value);
    transparent_crc(p_1997->g_1967.f0, "p_1997->g_1967.f0", print_hash_value);
    transparent_crc(p_1997->g_1971.f0, "p_1997->g_1971.f0", print_hash_value);
    transparent_crc(p_1997->g_1973.f0, "p_1997->g_1973.f0", print_hash_value);
    transparent_crc(p_1997->g_1987.f0, "p_1997->g_1987.f0", print_hash_value);
    transparent_crc(p_1997->v_collective, "p_1997->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
