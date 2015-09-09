// ---fake_divergence -g 69,79,1 -l 23,1,1
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


// Seed: 20

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile VECTOR(uint16_t, 8) g_12;
    uint32_t g_13;
    int32_t g_19;
    volatile VECTOR(int16_t, 16) g_27;
    VECTOR(uint64_t, 4) g_50;
    int8_t g_53;
    VECTOR(uint8_t, 4) g_57;
    uint64_t g_85;
    VECTOR(int32_t, 8) g_104;
    VECTOR(int32_t, 2) g_120;
    int32_t *g_122;
    int32_t **g_121;
    VECTOR(uint16_t, 8) g_137;
    VECTOR(uint16_t, 16) g_138;
    VECTOR(int32_t, 8) g_150;
    VECTOR(int32_t, 8) g_152;
    int32_t g_177;
    int16_t g_242;
    int16_t *g_241;
    VECTOR(uint8_t, 8) g_262;
    uint8_t g_320;
    volatile int8_t g_351;
    volatile int8_t g_352[8];
    volatile int8_t g_353[5][6];
    volatile int8_t * volatile g_350[8][1];
    volatile int8_t * volatile *g_349;
    VECTOR(int32_t, 16) g_354;
    int32_t ***g_361;
    int32_t ****g_360[5];
    VECTOR(uint32_t, 4) g_383;
    VECTOR(uint8_t, 16) g_403;
    uint32_t g_417;
    VECTOR(int8_t, 4) g_422;
    VECTOR(int8_t, 16) g_429;
    VECTOR(int8_t, 8) g_431;
    VECTOR(uint32_t, 4) g_438;
    VECTOR(uint32_t, 4) g_439;
    int64_t g_468[5];
    int64_t *g_467;
    VECTOR(int16_t, 8) g_485;
    VECTOR(uint64_t, 2) g_491;
    VECTOR(uint64_t, 8) g_510;
    VECTOR(int32_t, 16) g_513;
    VECTOR(int8_t, 8) g_520;
    VECTOR(int8_t, 8) g_530;
    uint32_t g_538;
    VECTOR(int16_t, 4) g_580;
    VECTOR(int32_t, 8) g_593;
    VECTOR(int8_t, 8) g_614;
    VECTOR(int32_t, 2) g_629;
    int32_t g_648[5][8][4];
    VECTOR(int32_t, 2) g_662;
    volatile uint64_t * volatile *g_677;
    uint32_t g_682;
    VECTOR(uint16_t, 2) g_722;
    int16_t **g_763[7][5][7];
    int8_t **g_776;
    uint32_t g_801;
    volatile int32_t g_885;
    volatile int32_t *g_884;
    volatile int32_t * volatile *g_883;
    volatile int32_t * volatile ** volatile g_882;
    volatile int32_t * volatile ** volatile *g_881;
    volatile int32_t * volatile ** volatile ** volatile g_880[10];
    volatile int32_t * volatile ** volatile ** volatile * volatile g_879;
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
int32_t  func_1(struct S0 * p_888);
int32_t * func_22(int32_t  p_23, int32_t  p_24, int32_t * p_25, struct S0 * p_888);
int32_t  func_31(int64_t  p_32, int8_t  p_33, int32_t  p_34, int32_t * p_35, int32_t * p_36, struct S0 * p_888);
int32_t  func_37(int32_t * p_38, struct S0 * p_888);
int32_t * func_39(uint32_t  p_40, int8_t  p_41, int32_t  p_42, struct S0 * p_888);
uint32_t  func_43(int64_t  p_44, int16_t  p_45, uint32_t  p_46, struct S0 * p_888);
int32_t * func_61(uint32_t  p_62, int32_t  p_63, int32_t * p_64, int8_t * p_65, struct S0 * p_888);
int32_t * func_70(uint8_t  p_71, int32_t  p_72, int8_t * p_73, int32_t * p_74, int8_t * p_75, struct S0 * p_888);
int8_t * func_86(int32_t  p_87, int32_t  p_88, uint32_t  p_89, struct S0 * p_888);
int8_t * func_91(int32_t  p_92, uint32_t  p_93, int8_t * p_94, uint32_t  p_95, struct S0 * p_888);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_888->g_12 p_888->g_13 p_888->g_19 p_888->g_50 p_888->g_57 p_888->g_85 p_888->g_104 p_888->g_121 p_888->g_120 p_888->g_122 p_888->g_137 p_888->g_241 p_888->g_242 p_888->g_150 p_888->g_320 p_888->g_152 p_888->g_138 p_888->g_354 p_888->g_53 p_888->g_417 p_888->g_431 p_888->g_467 p_888->g_491 p_888->g_361 p_888->g_360 p_888->g_530 p_888->g_538 p_888->g_383 p_888->g_177 p_888->g_349 p_888->g_422 p_888->g_468 p_888->g_593 p_888->g_580 p_888->g_485 p_888->g_262 p_888->g_438 p_888->g_682 p_888->g_629 p_888->g_513 p_888->g_614 p_888->g_429 p_888->g_648 p_888->g_722 p_888->g_352 p_888->g_801 p_888->g_879 p_888->g_881 p_888->g_882 p_888->g_883 p_888->g_884 p_888->g_885
 * writes: p_888->g_19 p_888->g_13 p_888->g_53 p_888->g_120 p_888->g_177 p_888->g_122 p_888->g_137 p_888->g_320 p_888->g_417 p_888->g_467 p_888->g_429 p_888->g_431 p_888->g_50 p_888->g_491 p_888->g_538 p_888->g_530 p_888->g_85 p_888->g_242 p_888->g_682 p_888->g_776 p_888->g_262 p_888->g_801 p_888->g_468 p_888->g_648
 */
int32_t  func_1(struct S0 * p_888)
{ /* block id: 4 */
    int32_t *l_16 = (void*)0;
    int32_t *l_17 = (void*)0;
    int32_t *l_18[5][8] = {{&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19},{&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19},{&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19},{&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19},{&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19}};
    VECTOR(uint8_t, 4) l_56 = (VECTOR(uint8_t, 4))(0x72L, (VECTOR(uint8_t, 2))(0x72L, 0xC8L), 0xC8L);
    int32_t *l_821 = (void*)0;
    int16_t l_844 = 0x78E3L;
    uint8_t *l_846 = (void*)0;
    int8_t l_847 = 0x76L;
    uint64_t *l_862 = (void*)0;
    uint64_t **l_861 = &l_862;
    int i, j;
    p_888->g_19 &= (safe_sub_func_uint16_t_u_u(65533UL, (safe_div_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u((safe_sub_func_int8_t_s_s((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(p_888->g_12.s77)).even, p_888->g_13)), FAKE_DIVERGE(p_888->group_2_offset, get_group_id(2), 10))), 1)), (safe_rshift_func_int8_t_s_u(0x63L, 4))))));
    for (p_888->g_13 = (-18); (p_888->g_13 >= 14); p_888->g_13 = safe_add_func_uint64_t_u_u(p_888->g_13, 6))
    { /* block id: 8 */
        VECTOR(int32_t, 2) l_26 = (VECTOR(int32_t, 2))(0x43D2717FL, 0x39EE491BL);
        uint8_t l_30 = 0x1CL;
        uint8_t l_47 = 0UL;
        int8_t *l_51 = (void*)0;
        int8_t *l_52 = &p_888->g_53;
        int16_t l_58 = (-1L);
        uint32_t l_59 = 0xA8988ED9L;
        int32_t ***l_838[6];
        VECTOR(uint16_t, 8) l_843 = (VECTOR(uint16_t, 8))(0xE80FL, (VECTOR(uint16_t, 4))(0xE80FL, (VECTOR(uint16_t, 2))(0xE80FL, 0x8547L), 0x8547L), 0x8547L, 0xE80FL, 0x8547L);
        uint64_t *l_845 = &p_888->g_85;
        int i;
        for (i = 0; i < 6; i++)
            l_838[i] = &p_888->g_121;
        (*p_888->g_121) = func_22((~((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_26.xxyxxyxyyyxyxyxx)).sb653)).wyyzwyyywzxxxzyx)).s4), (((VECTOR(int16_t, 16))(p_888->g_27.s93fe6966ef3b0639)).se != (safe_sub_func_uint8_t_u_u(l_30, (func_31((GROUP_DIVERGE(0, 1) , p_888->g_19), l_26.x, func_37(func_39(func_43(l_47, ((((*l_52) = (safe_mod_func_uint64_t_u_u((((VECTOR(uint8_t, 2))(0x19L, 248UL)).even , l_30), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 2))(p_888->g_50.wz)).xyyyxyyxxyyyyyxy))))).hi)).s0))) < (safe_lshift_func_uint16_t_u_s((((void*)0 == &p_888->g_19) ^ GROUP_DIVERGE(2, 1)), 0))) >= (((VECTOR(uint8_t, 16))(0xF6L, ((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 16))(l_56.wwxyxxzzywzwwwwx)).hi, ((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(255UL, (((VECTOR(uint8_t, 4))(p_888->g_57.wzwx)).z & l_30), 1UL, l_58, ((VECTOR(uint8_t, 4))(0x68L)), ((VECTOR(uint8_t, 2))(0xC0L)), p_888->g_13, ((VECTOR(uint8_t, 2))(0xFFL)), ((VECTOR(uint8_t, 2))(255UL)), 4UL)).sf1)), (uint8_t)255UL, (uint8_t)l_59))).xxyyxyxx))).odd, (uint8_t)6UL))), 252UL, ((VECTOR(uint8_t, 2))(255UL)), p_888->g_57.x, 0x1BL, 0x20L, ((VECTOR(uint8_t, 2))(0xDEL)), 0xCBL, 1UL, 0xA5L)).s2 , p_888->g_13)), l_59, p_888), p_888->g_19, p_888->g_50.y, p_888), p_888), l_16, &p_888->g_19, p_888) , l_47)))), l_821, p_888);
        l_847 &= (safe_add_func_uint32_t_u_u((((safe_rshift_func_int8_t_s_u(((((((safe_mod_func_int16_t_s_s(((l_838[4] == (void*)0) <= (-1L)), (*p_888->g_241))) <= p_888->g_491.x) != (safe_lshift_func_uint8_t_u_u((!p_888->g_352[1]), 7))) <= p_888->g_629.x) || (&p_888->g_320 == (((*l_845) = (safe_mod_func_int32_t_s_s((((VECTOR(uint16_t, 16))(l_843.s4372644023254114)).s8 <= (((*p_888->g_467) ^= (((0x0C6EL ^ GROUP_DIVERGE(0, 1)) , 0x4AL) != FAKE_DIVERGE(p_888->global_1_offset, get_global_id(1), 10))) != p_888->g_19)), l_844))) , l_846))) ^ 9UL), 0)) > 0x52L) , 4294967291UL), p_888->g_530.s1));
        for (p_888->g_682 = 28; (p_888->g_682 < 13); p_888->g_682 = safe_sub_func_int8_t_s_s(p_888->g_682, 1))
        { /* block id: 311 */
            uint32_t l_864 = 0xB8231381L;
            uint32_t l_871 = 1UL;
            int32_t l_873 = 9L;
            int32_t l_874 = (-6L);
            int32_t *l_886 = &p_888->g_648[4][0][3];
            int32_t l_887 = 0L;
            for (p_888->g_801 = 0; (p_888->g_801 > 24); p_888->g_801 = safe_add_func_int8_t_s_s(p_888->g_801, 7))
            { /* block id: 314 */
                int32_t l_856 = 0x0218E2E0L;
                uint8_t *l_857 = (void*)0;
                uint8_t *l_858 = &l_30;
                int8_t l_863 = 0L;
                int16_t l_872[2];
                int32_t l_875 = 0x1D1381DFL;
                uint8_t l_876 = 0x01L;
                int i;
                for (i = 0; i < 2; i++)
                    l_872[i] = 0x561CL;
                l_873 ^= (safe_add_func_uint16_t_u_u((p_888->g_120.y | ((((FAKE_DIVERGE(p_888->local_0_offset, get_local_id(0), 10) != 0x26B8BDC1L) , (((safe_add_func_uint8_t_u_u(((*l_858) |= l_856), (((safe_add_func_uint8_t_u_u(((void*)0 != l_861), (l_863 != l_864))) && (safe_rshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(l_864, 10)), 9))) > (safe_mod_func_int16_t_s_s(l_871, 0x6C63L))))) , l_872[1]) && l_856)) ^ l_872[1]) <= p_888->g_491.x)), FAKE_DIVERGE(p_888->group_2_offset, get_group_id(2), 10)));
                l_876--;
            }
            l_887 &= (((*l_886) = (((l_864 | l_873) && ((void*)0 != p_888->g_879)) == 0xA585BD12L)) , l_874);
        }
    }
    return (****p_888->g_881);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_22(int32_t  p_23, int32_t  p_24, int32_t * p_25, struct S0 * p_888)
{ /* block id: 300 */
    int32_t *l_822 = (void*)0;
    int32_t *l_823[6][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint16_t l_824 = 1UL;
    uint64_t *l_828 = &p_888->g_85;
    uint64_t **l_827[8][3] = {{&l_828,&l_828,&l_828},{&l_828,&l_828,&l_828},{&l_828,&l_828,&l_828},{&l_828,&l_828,&l_828},{&l_828,&l_828,&l_828},{&l_828,&l_828,&l_828},{&l_828,&l_828,&l_828},{&l_828,&l_828,&l_828}};
    uint64_t l_831 = 0x56992916FE896759L;
    int i, j;
    --l_824;
    l_831 |= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 4))(0x35EE0751L, 4L, 0x71722C5FL, 6L)), ((VECTOR(int32_t, 8))(0x7EBFF929L, 0x63E62ECEL, 1L, (((VECTOR(int16_t, 2))(0x1ECAL, 0x683BL)).odd , (p_23 = ((5UL > ((l_827[5][1] != (void*)0) && p_24)) , (safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(246UL, 0x00L)).even, 0x54L))))), 0x0FC5DA1EL, 0x1D98878AL, 0x7C96D77CL, 0x0C95F0E9L)).even))).odd)).hi;
    return l_822;
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_629 p_888->g_137 p_888->g_19 p_888->g_241 p_888->g_242 p_888->g_513 p_888->g_614 p_888->g_85 p_888->g_50 p_888->g_104 p_888->g_121 p_888->g_120 p_888->g_57 p_888->g_122 p_888->g_150 p_888->g_320 p_888->g_152 p_888->g_138 p_888->g_13 p_888->g_354 p_888->g_53 p_888->g_417 p_888->g_431 p_888->g_467 p_888->g_491 p_888->g_361 p_888->g_360 p_888->g_530 p_888->g_538 p_888->g_383 p_888->g_177 p_888->g_429 p_888->g_262 p_888->g_648 p_888->g_468 p_888->g_422 p_888->g_722
 * writes: p_888->g_242 p_888->g_538 p_888->g_682 p_888->g_19 p_888->g_417 p_888->g_120 p_888->g_53 p_888->g_177 p_888->g_122 p_888->g_137 p_888->g_320 p_888->g_467 p_888->g_429 p_888->g_431 p_888->g_50 p_888->g_491 p_888->g_776 p_888->g_262 p_888->g_801
 */
int32_t  func_31(int64_t  p_32, int8_t  p_33, int32_t  p_34, int32_t * p_35, int32_t * p_36, struct S0 * p_888)
{ /* block id: 240 */
    int32_t *****l_732[7] = {&p_888->g_360[1],(void*)0,&p_888->g_360[1],&p_888->g_360[1],(void*)0,&p_888->g_360[1],&p_888->g_360[1]};
    uint64_t *l_752 = (void*)0;
    int16_t **l_762 = &p_888->g_241;
    int32_t l_767 = 1L;
    int8_t ***l_790 = &p_888->g_776;
    uint8_t *l_793 = (void*)0;
    uint8_t *l_794 = (void*)0;
    uint8_t *l_795[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint32_t l_796 = 0x9C30484EL;
    uint32_t *l_799 = (void*)0;
    uint32_t *l_800[1];
    int64_t l_815 = 0x70161959584F17B9L;
    int16_t l_816[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    int8_t l_817 = 0x27L;
    uint64_t l_818 = 0x905FF6E9F2CADA21L;
    int i;
    for (i = 0; i < 1; i++)
        l_800[i] = &p_888->g_801;
    for (p_34 = 24; (p_34 > (-21)); p_34--)
    { /* block id: 243 */
        int32_t l_733 = 0x44EEB048L;
        int32_t l_736 = (-5L);
        VECTOR(uint32_t, 2) l_753 = (VECTOR(uint32_t, 2))(1UL, 4294967295UL);
        int16_t **l_760 = (void*)0;
        VECTOR(int8_t, 4) l_766 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L);
        int8_t *l_774 = (void*)0;
        int8_t **l_773 = &l_774;
        int i;
        for (p_888->g_242 = 0; (p_888->g_242 < (-8)); p_888->g_242--)
        { /* block id: 246 */
            VECTOR(uint64_t, 2) l_711 = (VECTOR(uint64_t, 2))(0UL, 0x3B4ED5AF955C2BB7L);
            int32_t l_734[4] = {0x62AE94A1L,0x62AE94A1L,0x62AE94A1L,0x62AE94A1L};
            int32_t l_738 = 0x35515836L;
            uint64_t *l_751 = &p_888->g_85;
            int16_t ***l_761 = (void*)0;
            int8_t *l_768 = (void*)0;
            int8_t *l_769[7][1];
            uint16_t *l_770 = (void*)0;
            uint16_t *l_771 = (void*)0;
            uint16_t *l_772[6][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int8_t ***l_775[10] = {&l_773,&l_773,&l_773,&l_773,&l_773,&l_773,&l_773,&l_773,&l_773,&l_773};
            int i, j;
            for (i = 0; i < 7; i++)
            {
                for (j = 0; j < 1; j++)
                    l_769[i][j] = (void*)0;
            }
            for (p_888->g_538 = 0; (p_888->g_538 > 41); p_888->g_538++)
            { /* block id: 249 */
                uint32_t l_696 = 1UL;
                VECTOR(uint32_t, 16) l_714 = (VECTOR(uint32_t, 16))(4UL, (VECTOR(uint32_t, 4))(4UL, (VECTOR(uint32_t, 2))(4UL, 0x9F1AAF7BL), 0x9F1AAF7BL), 0x9F1AAF7BL, 4UL, 0x9F1AAF7BL, (VECTOR(uint32_t, 2))(4UL, 0x9F1AAF7BL), (VECTOR(uint32_t, 2))(4UL, 0x9F1AAF7BL), 4UL, 0x9F1AAF7BL, 4UL, 0x9F1AAF7BL);
                VECTOR(uint32_t, 4) l_715 = (VECTOR(uint32_t, 4))(0xE879A879L, (VECTOR(uint32_t, 2))(0xE879A879L, 4294967295UL), 4294967295UL);
                int32_t *****l_725 = (void*)0;
                int i;
                for (p_888->g_682 = 0; (p_888->g_682 >= 47); ++p_888->g_682)
                { /* block id: 252 */
                    int32_t *l_691 = (void*)0;
                    int32_t *l_692 = &p_888->g_19;
                    int32_t *l_693 = (void*)0;
                    int32_t *l_694 = &p_888->g_19;
                    int32_t *l_695[3][1];
                    VECTOR(uint64_t, 16) l_712 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551607UL), 18446744073709551607UL), 18446744073709551607UL, 18446744073709551615UL, 18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551607UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551607UL), 18446744073709551615UL, 18446744073709551607UL, 18446744073709551615UL, 18446744073709551607UL);
                    VECTOR(uint32_t, 4) l_713 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x482E2940L), 0x482E2940L);
                    VECTOR(uint32_t, 4) l_716 = (VECTOR(uint32_t, 4))(0x034F114DL, (VECTOR(uint32_t, 2))(0x034F114DL, 0x076116FFL), 0x076116FFL);
                    int32_t *****l_726[5];
                    int32_t ******l_727 = &l_726[0];
                    uint16_t *l_728 = (void*)0;
                    uint16_t *l_729 = (void*)0;
                    uint16_t *l_730 = (void*)0;
                    uint16_t *l_731 = (void*)0;
                    uint8_t *l_735[8][7][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
                    VECTOR(int16_t, 16) l_737 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x7E8EL), 0x7E8EL), 0x7E8EL, 1L, 0x7E8EL, (VECTOR(int16_t, 2))(1L, 0x7E8EL), (VECTOR(int16_t, 2))(1L, 0x7E8EL), 1L, 0x7E8EL, 1L, 0x7E8EL);
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_695[i][j] = (void*)0;
                    }
                    for (i = 0; i < 5; i++)
                        l_726[i] = &p_888->g_360[0];
                    ++l_696;
                    l_738 ^= ((safe_rshift_func_int8_t_s_s((((safe_add_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_add_func_uint32_t_u_u((((safe_mul_func_int16_t_s_s((safe_add_func_uint64_t_u_u(p_888->g_629.x, ((VECTOR(uint64_t, 4))(hadd(((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_711.yy)), 0x2F9443ADC7B86FC7L, 1UL)).wyyzwxwz, ((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 8))(l_712.s3a31d4f6)), ((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(l_713.yxzyxxzz)).even)).lo, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 4))(((l_736 = (((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(0x7E608260L, 0xC320445FL)).xxxyxxyxyxyyxyyy)).hi)).hi)))).y | (FAKE_DIVERGE(p_888->group_2_offset, get_group_id(2), 10) , (((l_696 || p_888->g_137.s4) || ((VECTOR(uint64_t, 8))(mad_sat(((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 8))(l_714.s1a5488c8)).s3474662307020505, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(hadd(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_715.zz)), 4294967290UL, 0x8EB6FAB6L)).zzyyyxxx)), ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_716.ww)).xyxy)).xyxwzyyzwywzyyxz)).lo))).s1164341626415366))))).odd, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),VECTOR(uint64_t, 4),((VECTOR(uint64_t, 8))(((l_734[1] &= (safe_mod_func_int8_t_s_s((((safe_unary_minus_func_uint64_t_u((safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))((*l_692), ((VECTOR(uint16_t, 4))(p_888->g_722.yxyy)), ((((p_888->g_138.sf = (safe_sub_func_int16_t_s_s((l_725 == ((*l_727) = l_726[0])), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))((p_34 >= ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(1L, l_711.x, (p_32 && (*p_888->g_467)), 0x5DL, 1L, p_34, (-1L), 4L)))).lo)).y), ((VECTOR(int16_t, 2))((-5L))), l_711.y, 0x45D6L, 0x5726L, 0x028FL, 0x33A6L)).s56)).hi))) != p_33) , l_732[6]) == (void*)0), 8UL, 65535UL)).s1337757420771204)).s1, p_33)))) == p_33) , l_733), (-1L)))) >= p_888->g_648[0][1][0]), 1UL, ((VECTOR(uint64_t, 2))(18446744073709551613UL)), 1UL, ((VECTOR(uint64_t, 2))(0UL)), 0x4D86713EDAED7619L)).even, ((VECTOR(uint64_t, 4))(0xE155C792FC4B5916L)), ((VECTOR(uint64_t, 4))(0x9F6A4DC96E71F961L))))).wyzwywxw)), ((VECTOR(uint64_t, 8))(18446744073709551608UL))))).s4) , 1L)))) & 255UL), 0x58F2BFCAL, 0x9A27D3DCL, 0x6C9E1F8DL)), ((VECTOR(uint32_t, 4))(4294967295UL))))))).hi))).xxyxxxxxxxxyxyyx, ((VECTOR(uint64_t, 16))(18446744073709551615UL))))).lo))).s63)).xxxxxyxy, ((VECTOR(uint64_t, 8))(0x71CAC3436A323660L)))))))).lo, ((VECTOR(uint64_t, 4))(0xA2DAFFC9CCBF03AFL))))).x)), 0x759CL)) == p_33) | l_737.s1), p_888->g_137.s0)), 0x58L)), p_34)) || l_714.s8) & 5L), p_33)) & l_714.s8);
                    if ((*p_36))
                        continue;
                    (*l_692) ^= l_715.x;
                }
                l_738 ^= ((safe_sub_func_uint32_t_u_u((0x07A6L < (*p_888->g_241)), p_888->g_513.sd)) >= (safe_lshift_func_int8_t_s_s((safe_add_func_int32_t_s_s((*p_36), 1L)), l_734[1])));
                for (l_736 = (-5); (l_736 <= 4); ++l_736)
                { /* block id: 265 */
                    if ((*p_36))
                        break;
                    for (p_888->g_417 = 0; (p_888->g_417 != 6); ++p_888->g_417)
                    { /* block id: 269 */
                        return p_888->g_614.s5;
                    }
                }
            }
            (**p_888->g_361) = func_70((safe_add_func_int8_t_s_s(0x57L, 0xEEL)), ((*p_36) = (((l_751 != l_752) ^ ((VECTOR(uint32_t, 8))(hadd(((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 2))(l_753.yy)).xxxyyyyyyxyxxxyx, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 4))(0x2FF910AEL, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0x3A007D32L, 0x508848C9L)).xyxy)).even)), 0UL)).odd, ((VECTOR(uint32_t, 4))((((safe_mod_func_int64_t_s_s((*p_888->g_467), (safe_div_func_int64_t_s_s(((l_738 = (safe_mul_func_int8_t_s_s((((p_888->g_763[4][3][1] = (l_762 = l_760)) != (void*)0) , p_888->g_438.x), (safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(l_766.zwzyzzwz)).s07)).hi, (p_888->g_614.s3 = ((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))((-4L), 5L)), ((p_888->g_354.sc <= l_767) < p_33), 0x0BL, ((VECTOR(int8_t, 2))(1L)), 0x11L, (-1L))).s6321664222237150)).s778c)), ((VECTOR(int8_t, 4))(0x75L))))).wwywzwyy, ((VECTOR(int8_t, 8))(0x4FL)), ((VECTOR(int8_t, 8))(2L))))).s7)))))) | p_888->g_580.w), p_33)))) , p_35) != &l_733), 0x5778A07AL, 4294967288UL, 0x65E637D2L)).odd))), 3UL, 0UL)).zwxxyyxzzywyzzzz, ((VECTOR(uint32_t, 16))(0xF6F7BF0FL))))).lo, ((VECTOR(uint32_t, 8))(0x1A080630L))))).s5) , l_736)), &p_888->g_53, &l_736, &p_888->g_53, p_888);
            p_888->g_776 = l_773;
            for (p_32 = 0; (p_32 == (-17)); p_32 = safe_sub_func_uint32_t_u_u(p_32, 3))
            { /* block id: 283 */
                int8_t l_781 = 0x5AL;
                (*p_36) = (safe_lshift_func_uint16_t_u_s((--p_888->g_137.s1), 12));
                (**p_888->g_361) = (void*)0;
                if (l_781)
                    continue;
            }
        }
    }
    p_34 = (safe_add_func_int32_t_s_s(((*p_36) = (safe_mul_func_int16_t_s_s(0x7A74L, ((safe_div_func_uint8_t_u_u(((p_33 & ((l_790 = l_790) == (void*)0)) >= p_888->g_429.sb), (0xF0976BAAL & (safe_rshift_func_int16_t_s_u((GROUP_DIVERGE(2, 1) == ((p_888->g_262.s7 ^= (((((*p_888->g_241) ^ p_32) > p_32) , 0x4CL) == p_888->g_320)) || p_888->g_629.y)), 10))))) >= p_888->g_648[4][3][1])))), l_796));
    l_817 ^= ((safe_mul_func_uint8_t_u_u(((p_888->g_801 = (((*p_888->g_241) = (*p_888->g_241)) , p_888->g_530.s2)) , (safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((((safe_add_func_int64_t_s_s(((safe_sub_func_int32_t_s_s((*p_36), p_888->g_13)) >= 0L), (*p_888->g_467))) ^ p_888->g_50.z) > (safe_unary_minus_func_uint32_t_u((safe_div_func_int16_t_s_s((+(safe_rshift_func_int8_t_s_u(0x0AL, 1))), l_815))))), p_33)), p_888->g_422.y))), FAKE_DIVERGE(p_888->group_0_offset, get_group_id(0), 10))) ^ l_816[5]);
    l_818++;
    return p_888->g_722.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_361 p_888->g_121 p_888->g_349 p_888->g_422 p_888->g_580 p_888->g_85 p_888->g_593 p_888->g_467 p_888->g_468 p_888->g_614 p_888->g_241 p_888->g_150 p_888->g_19 p_888->g_122 p_888->g_485 p_888->g_262 p_888->g_120 p_888->g_50 p_888->g_104 p_888->g_57 p_888->g_137 p_888->g_242 p_888->g_320 p_888->g_152 p_888->g_138 p_888->g_13 p_888->g_354 p_888->g_53 p_888->g_417 p_888->g_429 p_888->g_431 p_888->g_438 p_888->g_439 p_888->g_360 p_888->g_491 p_888->g_177 p_888->g_530 p_888->g_538 p_888->g_383 p_888->g_662 p_888->g_677 p_888->g_648 p_888->g_682
 * writes: p_888->g_122 p_888->g_530 p_888->g_85 p_888->g_510 p_888->g_242 p_888->g_120 p_888->g_53 p_888->g_177 p_888->g_137 p_888->g_320 p_888->g_417 p_888->g_57 p_888->g_467 p_888->g_429 p_888->g_431 p_888->g_50 p_888->g_491 p_888->g_538 p_888->g_648
 */
int32_t  func_37(int32_t * p_38, struct S0 * p_888)
{ /* block id: 200 */
    int32_t l_567 = 0x6356E62EL;
    int8_t *l_568 = (void*)0;
    int8_t *l_569 = (void*)0;
    int8_t *l_570 = (void*)0;
    int8_t *l_571[5] = {&p_888->g_53,&p_888->g_53,&p_888->g_53,&p_888->g_53,&p_888->g_53};
    uint8_t *l_572[9] = {(void*)0,&p_888->g_320,(void*)0,(void*)0,&p_888->g_320,(void*)0,(void*)0,&p_888->g_320,(void*)0};
    int32_t l_573 = 0x7B050829L;
    VECTOR(int16_t, 4) l_578 = (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 0x1907L), 0x1907L);
    VECTOR(int16_t, 8) l_579 = (VECTOR(int16_t, 8))(0x24B1L, (VECTOR(int16_t, 4))(0x24B1L, (VECTOR(int16_t, 2))(0x24B1L, (-3L)), (-3L)), (-3L), 0x24B1L, (-3L));
    VECTOR(int16_t, 16) l_581 = (VECTOR(int16_t, 16))((-9L), (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), 0L), 0L), 0L, (-9L), 0L, (VECTOR(int16_t, 2))((-9L), 0L), (VECTOR(int16_t, 2))((-9L), 0L), (-9L), 0L, (-9L), 0L);
    VECTOR(int16_t, 8) l_582 = (VECTOR(int16_t, 8))(0x4D0EL, (VECTOR(int16_t, 4))(0x4D0EL, (VECTOR(int16_t, 2))(0x4D0EL, 0x734CL), 0x734CL), 0x734CL, 0x4D0EL, 0x734CL);
    VECTOR(int16_t, 2) l_583 = (VECTOR(int16_t, 2))((-1L), 0L);
    uint64_t *l_586 = &p_888->g_85;
    uint64_t *l_589 = (void*)0;
    uint64_t *l_590 = (void*)0;
    uint64_t *l_591 = (void*)0;
    int32_t l_592 = 1L;
    uint16_t l_602 = 0x61C1L;
    int32_t l_624 = 0x0BC0AFB3L;
    VECTOR(int32_t, 16) l_630 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 8L), 8L), 8L, (-1L), 8L, (VECTOR(int32_t, 2))((-1L), 8L), (VECTOR(int32_t, 2))((-1L), 8L), (-1L), 8L, (-1L), 8L);
    VECTOR(int32_t, 4) l_631 = (VECTOR(int32_t, 4))(0x70319AD2L, (VECTOR(int32_t, 2))(0x70319AD2L, (-7L)), (-7L));
    uint32_t *l_649[4][2] = {{&p_888->g_13,&p_888->g_13},{&p_888->g_13,&p_888->g_13},{&p_888->g_13,&p_888->g_13},{&p_888->g_13,&p_888->g_13}};
    int32_t *l_651[10] = {(void*)0,&l_592,(void*)0,(void*)0,&l_592,(void*)0,(void*)0,&l_592,(void*)0,(void*)0};
    uint8_t l_666 = 0x98L;
    uint32_t l_667 = 0x0A797FDCL;
    int32_t ***l_673 = &p_888->g_121;
    uint64_t *l_674[4][9][4] = {{{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0}},{{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0}},{{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0}},{{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0},{&p_888->g_85,(void*)0,(void*)0,(void*)0}}};
    int32_t *l_680 = &p_888->g_648[1][7][1];
    int32_t *l_681 = &l_592;
    int i, j, k;
    (**p_888->g_361) = p_38;
    if (((GROUP_DIVERGE(0, 1) > (safe_div_func_int8_t_s_s((p_888->g_530.s0 = l_567), (l_573 &= 3UL)))) > (l_592 = (safe_sub_func_int8_t_s_s((&l_571[1] == p_888->g_349), (p_888->g_422.y > (safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 16))(l_578.xxyyzxzwwyzzyyzx)).sc, ((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 4))(l_579.s5404)), ((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 2))(p_888->g_580.wx)).xyxxxyyx, ((VECTOR(int16_t, 2))(l_581.sec)).xxyyxxxx, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(l_582.s6140423306355017)).odd)).s6330305422611764)).s06, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_583.yx)).xyyyxyxyyxxyyyxx)).s70))), 1L, 0x3835L)).wxzzxyxw))).s1152134137721475)).hi, (int16_t)((safe_sub_func_uint64_t_u_u(0UL, (p_888->g_510.s7 = ((*l_586)--)))) | l_578.y)))).lo, ((VECTOR(int16_t, 4))(0L, (-1L), 0x21C8L, 0x5336L))))).z))))))))
    { /* block id: 207 */
        uint32_t l_596 = 0x7195AB52L;
        int32_t l_603 = 3L;
        VECTOR(int16_t, 16) l_606 = (VECTOR(int16_t, 16))(5L, (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, 0L), 0L), 0L, 5L, 0L, (VECTOR(int16_t, 2))(5L, 0L), (VECTOR(int16_t, 2))(5L, 0L), 5L, 0L, 5L, 0L);
        int32_t l_607 = 0x4479DBC1L;
        VECTOR(uint64_t, 2) l_615 = (VECTOR(uint64_t, 2))(1UL, 0x3A17BF33D55DBFD0L);
        int16_t **l_625[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_626[3][6][6] = {{{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL},{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL},{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL},{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL},{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL},{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL}},{{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL},{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL},{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL},{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL},{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL},{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL}},{{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL},{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL},{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL},{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL},{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL},{0x00C15FBFL,0x00C15FBFL,0x6B39A19FL,0x48C1A1AEL,0x5EB9E6F0L,0x48C1A1AEL}}};
        int32_t l_627[4];
        int32_t *l_628 = (void*)0;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_627[i] = (-1L);
        if (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(p_888->g_593.s52)).xxxxxxyxyxxxxyxy)).s7)
        { /* block id: 208 */
            int8_t l_594 = 0x44L;
            int32_t *l_595[10][9] = {{&p_888->g_19,(void*)0,&p_888->g_19,&p_888->g_177,&l_592,(void*)0,&p_888->g_177,(void*)0,(void*)0},{&p_888->g_19,(void*)0,&p_888->g_19,&p_888->g_177,&l_592,(void*)0,&p_888->g_177,(void*)0,(void*)0},{&p_888->g_19,(void*)0,&p_888->g_19,&p_888->g_177,&l_592,(void*)0,&p_888->g_177,(void*)0,(void*)0},{&p_888->g_19,(void*)0,&p_888->g_19,&p_888->g_177,&l_592,(void*)0,&p_888->g_177,(void*)0,(void*)0},{&p_888->g_19,(void*)0,&p_888->g_19,&p_888->g_177,&l_592,(void*)0,&p_888->g_177,(void*)0,(void*)0},{&p_888->g_19,(void*)0,&p_888->g_19,&p_888->g_177,&l_592,(void*)0,&p_888->g_177,(void*)0,(void*)0},{&p_888->g_19,(void*)0,&p_888->g_19,&p_888->g_177,&l_592,(void*)0,&p_888->g_177,(void*)0,(void*)0},{&p_888->g_19,(void*)0,&p_888->g_19,&p_888->g_177,&l_592,(void*)0,&p_888->g_177,(void*)0,(void*)0},{&p_888->g_19,(void*)0,&p_888->g_19,&p_888->g_177,&l_592,(void*)0,&p_888->g_177,(void*)0,(void*)0},{&p_888->g_19,(void*)0,&p_888->g_19,&p_888->g_177,&l_592,(void*)0,&p_888->g_177,(void*)0,(void*)0}};
            int i, j;
            ++l_596;
        }
        else
        { /* block id: 210 */
            uint64_t l_599[3];
            int i;
            for (i = 0; i < 3; i++)
                l_599[i] = 0x77008DC2CC717993L;
            l_599[1]++;
            return l_596;
        }
        (**p_888->g_361) = func_70(l_602, (l_603 = l_578.x), (((((safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 4))(l_606.s7696)).y, 10)) == (l_607 = l_596)) | (safe_mod_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_u((((((l_624 = (l_573 = (safe_rshift_func_int16_t_s_u(((((l_581.s7 | (((l_627[3] ^= ((((*p_888->g_467) > p_888->g_593.s4) && ((+(((l_626[2][0][5] = ((((VECTOR(int8_t, 16))(p_888->g_614.s3012344503265605)).s2 , (l_606.s1 , (l_596 >= (((((((*p_888->g_241) = (((VECTOR(uint64_t, 8))(l_615.xyxyyxxx)).s2 ^ ((((GROUP_DIVERGE(1, 1) <= ((safe_mul_func_uint8_t_u_u((safe_div_func_uint8_t_u_u(FAKE_DIVERGE(p_888->group_0_offset, get_group_id(0), 10), (((*l_586) &= (safe_lshift_func_int8_t_s_u((safe_add_func_int64_t_s_s((*p_888->g_467), 18446744073709551615UL)), 0))) | l_606.sf))), l_624)) > FAKE_DIVERGE(p_888->global_0_offset, get_global_id(0), 10))) & l_606.se) | l_596) > l_581.sd))) && l_567) <= l_592) > p_888->g_150.s4) , &p_888->g_241) != l_625[1])))) >= l_624)) < p_888->g_580.y) > (*p_38))) | FAKE_DIVERGE(p_888->global_0_offset, get_global_id(0), 10))) >= 4294967294UL)) && l_573) == l_606.s9)) , l_615.y) == (*p_888->g_122)) != l_581.s7), 1)))) >= p_888->g_485.s1) , p_888->g_262.s7) < 8UL) & 0x6C68L), 13)) | p_888->g_120.y), l_606.se))) | l_579.s5) , &p_888->g_53), &l_592, l_571[4], p_888);
    }
    else
    { /* block id: 223 */
        uint32_t l_636[4][6] = {{1UL,1UL,0x29AC26C9L,1UL,0x1480CA87L,1UL},{1UL,1UL,0x29AC26C9L,1UL,0x1480CA87L,1UL},{1UL,1UL,0x29AC26C9L,1UL,0x1480CA87L,1UL},{1UL,1UL,0x29AC26C9L,1UL,0x1480CA87L,1UL}};
        int64_t *l_637 = (void*)0;
        uint16_t *l_646[3];
        int32_t l_647 = 0x4723601CL;
        int8_t *l_650[7][8][4] = {{{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0}},{{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0}},{{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0}},{{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0}},{{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0}},{{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0}},{{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0},{(void*)0,&p_888->g_53,(void*)0,(void*)0}}};
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_646[i] = (void*)0;
        (*p_888->g_121) = &l_624;
        (*p_888->g_121) = (**p_888->g_361);
        for (l_573 = 0; (l_573 <= (-26)); l_573 = safe_sub_func_uint64_t_u_u(l_573, 4))
        { /* block id: 229 */
            uint32_t l_665 = 1UL;
            int32_t l_668 = 0x645D5B4DL;
            l_668 = (safe_mul_func_uint8_t_u_u(p_888->g_438.w, (safe_sub_func_uint8_t_u_u((((p_888->g_538 && ((safe_lshift_func_int8_t_s_s(p_888->g_242, 7)) == (((safe_div_func_uint8_t_u_u((((((-1L) == (((*p_888->g_467) | (+l_647)) > ((p_888->g_438.z == FAKE_DIVERGE(p_888->global_0_offset, get_global_id(0), 10)) | p_888->g_422.w))) >= ((**p_888->g_121) = ((VECTOR(int32_t, 4))(p_888->g_662.yxxx)).z)) <= ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))((safe_sub_func_int8_t_s_s(l_636[3][2], l_636[3][2])), l_665, 1L, ((VECTOR(int16_t, 2))(0x1CFDL)), ((VECTOR(int16_t, 2))(0x41CBL)), (-3L))).s23)).lo) | (*p_888->g_241)), FAKE_DIVERGE(p_888->global_2_offset, get_global_id(2), 10))) && l_666) || 0xE9D1BA49L))) , (void*)0) != &p_888->g_361), l_667))));
        }
    }
    (*p_888->g_121) = p_38;
    (**l_673) = func_70((p_888->g_320 = p_888->g_85), (safe_sub_func_uint64_t_u_u((p_888->g_491.x ^= (safe_rshift_func_uint8_t_u_u(((void*)0 != l_673), p_888->g_485.s0))), ((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),VECTOR(int64_t, 4),((VECTOR(int64_t, 4))((safe_div_func_uint32_t_u_u(1UL, (***l_673))), (((*l_680) |= (((p_888->g_677 != (void*)0) > (safe_mod_func_uint64_t_u_u((***l_673), (*p_888->g_467)))) & (***l_673))) , (***l_673)), 1L, 7L)), ((VECTOR(int64_t, 4))(1L)), ((VECTOR(int64_t, 4))(0x287C926F1F3D4878L))))).y)), l_572[0], l_681, l_569, p_888);
    return p_888->g_682;
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_19 p_888->g_57 p_888->g_50 p_888->g_85 p_888->g_104 p_888->g_13 p_888->g_120 p_888->g_121 p_888->g_137 p_888->g_138 p_888->g_53 p_888->g_150 p_888->g_152 p_888->g_177 p_888->g_122 p_888->g_241 p_888->g_242 p_888->g_262 p_888->g_320 p_888->g_349 p_888->g_354 p_888->g_383 p_888->g_403 p_888->g_417 p_888->g_422 p_888->g_429 p_888->g_431 p_888->g_438 p_888->g_439 p_888->g_360 p_888->g_361 p_888->g_467 p_888->g_485 p_888->g_491 p_888->g_530 p_888->g_538
 * writes: p_888->g_57 p_888->g_120 p_888->g_53 p_888->g_177 p_888->g_122 p_888->g_137 p_888->g_262 p_888->g_320 p_888->g_360 p_888->g_417 p_888->g_467 p_888->g_429 p_888->g_431 p_888->g_50 p_888->g_491 p_888->g_538
 */
int32_t * func_39(uint32_t  p_40, int8_t  p_41, int32_t  p_42, struct S0 * p_888)
{ /* block id: 12 */
    int32_t *l_68 = &p_888->g_19;
    int8_t *l_69[8][3][2] = {{{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53}},{{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53}},{{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53}},{{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53}},{{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53}},{{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53}},{{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53}},{{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53},{&p_888->g_53,&p_888->g_53}}};
    int i, j, k;
    (*p_888->g_121) = func_61(p_888->g_19, (safe_lshift_func_int16_t_s_s((FAKE_DIVERGE(p_888->group_0_offset, get_group_id(0), 10) || p_888->g_57.w), p_888->g_19)), l_68, l_69[4][1][1], p_888);
    return l_68;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_43(int64_t  p_44, int16_t  p_45, uint32_t  p_46, struct S0 * p_888)
{ /* block id: 10 */
    int8_t l_60 = 0x4DL;
    return l_60;
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_19 p_888->g_50 p_888->g_85 p_888->g_104 p_888->g_13 p_888->g_120 p_888->g_121 p_888->g_137 p_888->g_138 p_888->g_53 p_888->g_150 p_888->g_152 p_888->g_57 p_888->g_177 p_888->g_122 p_888->g_241 p_888->g_242 p_888->g_262 p_888->g_320 p_888->g_349 p_888->g_354 p_888->g_383 p_888->g_403 p_888->g_417 p_888->g_422 p_888->g_429 p_888->g_431 p_888->g_438 p_888->g_439 p_888->g_360 p_888->g_361 p_888->g_467 p_888->g_485 p_888->g_491 p_888->g_530 p_888->g_538
 * writes: p_888->g_57 p_888->g_120 p_888->g_53 p_888->g_177 p_888->g_122 p_888->g_137 p_888->g_262 p_888->g_320 p_888->g_360 p_888->g_417 p_888->g_467 p_888->g_429 p_888->g_431 p_888->g_50 p_888->g_491 p_888->g_538
 */
int32_t * func_61(uint32_t  p_62, int32_t  p_63, int32_t * p_64, int8_t * p_65, struct S0 * p_888)
{ /* block id: 13 */
    int32_t l_76 = 1L;
    int32_t *l_82 = &p_888->g_19;
    int32_t **l_81 = &l_82;
    (**p_888->g_361) = func_70(((void*)0 != &p_888->g_19), (p_888->g_19 >= ((l_76 , GROUP_DIVERGE(2, 1)) , (((safe_lshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u(((p_64 == &p_888->g_19) != (0x04C6930AL | (((((((*l_81) = &p_888->g_19) == &p_888->g_19) & GROUP_DIVERGE(1, 1)) <= GROUP_DIVERGE(0, 1)) , 0x65L) , (-6L)))), 3)), l_76)) | p_63) == p_888->g_50.x))), &p_888->g_53, p_64, &p_888->g_53, p_888);
    return (**p_888->g_361);
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_85 p_888->g_50 p_888->g_104 p_888->g_13 p_888->g_19 p_888->g_120 p_888->g_121 p_888->g_137 p_888->g_138 p_888->g_53 p_888->g_150 p_888->g_152 p_888->g_57 p_888->g_177 p_888->g_122 p_888->g_241 p_888->g_242 p_888->g_262 p_888->g_320 p_888->g_349 p_888->g_354 p_888->g_383 p_888->g_403 p_888->g_417 p_888->g_422 p_888->g_429 p_888->g_431 p_888->g_438 p_888->g_439 p_888->g_360 p_888->g_361 p_888->g_467 p_888->g_485 p_888->g_491 p_888->g_530 p_888->g_538
 * writes: p_888->g_57 p_888->g_120 p_888->g_53 p_888->g_177 p_888->g_122 p_888->g_137 p_888->g_262 p_888->g_320 p_888->g_360 p_888->g_417 p_888->g_467 p_888->g_429 p_888->g_431 p_888->g_50 p_888->g_491 p_888->g_538
 */
int32_t * func_70(uint8_t  p_71, int32_t  p_72, int8_t * p_73, int32_t * p_74, int8_t * p_75, struct S0 * p_888)
{ /* block id: 15 */
    int8_t *l_90 = (void*)0;
    int8_t *l_99[3];
    int8_t **l_98 = &l_99[0];
    int32_t l_107 = 0x1369D405L;
    uint64_t *l_559 = (void*)0;
    uint64_t **l_558 = &l_559;
    int32_t *l_564[4] = {&p_888->g_19,&p_888->g_19,&p_888->g_19,&p_888->g_19};
    int i;
    for (i = 0; i < 3; i++)
        l_99[i] = &p_888->g_53;
    if ((safe_mul_func_uint8_t_u_u(p_888->g_85, (((*l_98) = func_86((p_888->g_50.w , (l_90 != ((*l_98) = func_91((+(safe_mod_func_int32_t_s_s(0x467E5F3BL, p_888->g_50.z))), p_71, ((*l_98) = l_90), (safe_rshift_func_int16_t_s_u((((safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(abs_diff(((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_888->g_104.s54)), (-5L), (-1L))), ((VECTOR(int32_t, 2))(0L, 1L)).xxyx))), 0x5D1EE040L, (safe_rshift_func_int16_t_s_s(((((p_888->g_57.y = l_107) & (safe_add_func_int8_t_s_s((((((safe_mul_func_int16_t_s_s((((safe_lshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(((p_888->g_13 , p_71) && (-1L)), l_107)), 9)) > p_71) || p_888->g_19), p_888->g_13)) >= p_888->g_19) , p_888->g_19) | 0UL) >= p_888->g_19), p_71))) > GROUP_DIVERGE(2, 1)) && p_72), 5)), p_888->g_104.s0, 0L, p_888->g_19, (-8L), p_888->g_104.s5, 0L, 0x2C0C4DA8L, l_107, 0x7E6C1E6BL, 0L)), ((VECTOR(int32_t, 16))((-1L)))))).even, ((VECTOR(int32_t, 8))(0x3875C6BAL))))).s7, p_71)) > p_888->g_104.s0) == l_107), 4)), p_888)))), p_888->g_85, p_888->g_150.s5, p_888)) != (void*)0))))
    { /* block id: 189 */
        uint64_t **l_560 = &l_559;
        l_560 = l_558;
    }
    else
    { /* block id: 191 */
        int32_t *l_561 = (void*)0;
        int32_t *l_562 = (void*)0;
        int32_t *l_563 = &p_888->g_177;
        (*l_563) = (*p_74);
        (*p_888->g_121) = &l_107;
    }
    return l_564[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_121 p_888->g_53 p_888->g_241 p_888->g_242 p_888->g_383 p_888->g_177 p_888->g_361
 * writes: p_888->g_122 p_888->g_53 p_888->g_177
 */
int8_t * func_86(int32_t  p_87, int32_t  p_88, uint32_t  p_89, struct S0 * p_888)
{ /* block id: 177 */
    int32_t *l_545 = &p_888->g_19;
    int32_t l_551 = (-1L);
    int32_t *l_556 = &p_888->g_177;
    int8_t *l_557[5][1];
    int i, j;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
            l_557[i][j] = (void*)0;
    }
    (*p_888->g_121) = l_545;
    for (p_888->g_53 = 0; (p_888->g_53 < (-21)); --p_888->g_53)
    { /* block id: 181 */
        int8_t l_548 = 0L;
        if (l_548)
            break;
        (*p_888->g_121) = l_545;
    }
    (*l_556) ^= ((safe_sub_func_int8_t_s_s(3L, ((+l_551) != (*p_888->g_241)))) >= (safe_mod_func_uint64_t_u_u((p_888->g_383.z < (safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_888->local_1_offset, get_local_id(1), 10), 9))), 0x95F5A2D0551837C1L)));
    (**p_888->g_361) = &l_551;
    return l_557[1][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_888->g_120 p_888->g_121 p_888->g_137 p_888->g_138 p_888->g_53 p_888->g_104 p_888->g_85 p_888->g_57 p_888->g_19 p_888->g_122 p_888->g_241 p_888->g_242 p_888->g_150 p_888->g_320 p_888->g_152 p_888->g_13 p_888->g_354 p_888->g_417 p_888->g_422 p_888->g_429 p_888->g_431 p_888->g_438 p_888->g_439 p_888->g_360 p_888->g_361 p_888->g_467 p_888->g_485 p_888->g_491 p_888->g_177 p_888->g_50 p_888->g_530 p_888->g_538 p_888->g_262 p_888->g_349 p_888->g_383 p_888->g_403
 * writes: p_888->g_120 p_888->g_53 p_888->g_177 p_888->g_122 p_888->g_137 p_888->g_320 p_888->g_417 p_888->g_57 p_888->g_467 p_888->g_429 p_888->g_431 p_888->g_50 p_888->g_491 p_888->g_538 p_888->g_262 p_888->g_360
 */
int8_t * func_91(int32_t  p_92, uint32_t  p_93, int8_t * p_94, uint32_t  p_95, struct S0 * p_888)
{ /* block id: 18 */
    int32_t **l_123 = &p_888->g_122;
    int32_t ***l_124[2][10][10] = {{{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123}},{{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123},{&l_123,&p_888->g_121,(void*)0,&p_888->g_121,(void*)0,&l_123,&l_123,&p_888->g_121,&l_123,&l_123}}};
    int32_t **l_125 = &p_888->g_122;
    VECTOR(uint32_t, 4) l_128 = (VECTOR(uint32_t, 4))(0xC65D3447L, (VECTOR(uint32_t, 2))(0xC65D3447L, 3UL), 3UL);
    VECTOR(uint16_t, 16) l_131 = (VECTOR(uint16_t, 16))(65530UL, (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 0x7E30L), 0x7E30L), 0x7E30L, 65530UL, 0x7E30L, (VECTOR(uint16_t, 2))(65530UL, 0x7E30L), (VECTOR(uint16_t, 2))(65530UL, 0x7E30L), 65530UL, 0x7E30L, 65530UL, 0x7E30L);
    VECTOR(int16_t, 8) l_136 = (VECTOR(int16_t, 8))(0x3997L, (VECTOR(int16_t, 4))(0x3997L, (VECTOR(int16_t, 2))(0x3997L, 4L), 4L), 4L, 0x3997L, 4L);
    uint32_t l_145 = 4294967291UL;
    VECTOR(int32_t, 8) l_146 = (VECTOR(int32_t, 8))(0x10CB638BL, (VECTOR(int32_t, 4))(0x10CB638BL, (VECTOR(int32_t, 2))(0x10CB638BL, 0x66BB7537L), 0x66BB7537L), 0x66BB7537L, 0x10CB638BL, 0x66BB7537L);
    VECTOR(int32_t, 2) l_148 = (VECTOR(int32_t, 2))(0L, 0x78807F30L);
    VECTOR(int32_t, 4) l_149 = (VECTOR(int32_t, 4))(0x74B4D06AL, (VECTOR(int32_t, 2))(0x74B4D06AL, 0x58E107FDL), 0x58E107FDL);
    VECTOR(int32_t, 4) l_151 = (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x4AA6036CL), 0x4AA6036CL);
    int32_t **l_154 = (void*)0;
    VECTOR(uint32_t, 16) l_180 = (VECTOR(uint32_t, 16))(0xDADCB936L, (VECTOR(uint32_t, 4))(0xDADCB936L, (VECTOR(uint32_t, 2))(0xDADCB936L, 1UL), 1UL), 1UL, 0xDADCB936L, 1UL, (VECTOR(uint32_t, 2))(0xDADCB936L, 1UL), (VECTOR(uint32_t, 2))(0xDADCB936L, 1UL), 0xDADCB936L, 1UL, 0xDADCB936L, 1UL);
    uint64_t l_230 = 0x8CE1AC964795ED23L;
    uint64_t l_302 = 0xBF4AED43BFEEABC6L;
    uint16_t l_319[2][7][1];
    uint32_t l_364 = 0xC7A17804L;
    int64_t l_367[1];
    uint64_t l_369 = 0x03BEFC0F36B97A07L;
    int16_t **l_384 = &p_888->g_241;
    VECTOR(int8_t, 8) l_423 = (VECTOR(int8_t, 8))(0x5CL, (VECTOR(int8_t, 4))(0x5CL, (VECTOR(int8_t, 2))(0x5CL, 0x6EL), 0x6EL), 0x6EL, 0x5CL, 0x6EL);
    VECTOR(uint8_t, 2) l_430 = (VECTOR(uint8_t, 2))(5UL, 1UL);
    int8_t *l_523 = &p_888->g_53;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 1; k++)
                l_319[i][j][k] = 65535UL;
        }
    }
    for (i = 0; i < 1; i++)
        l_367[i] = 1L;
    p_92 = ((safe_add_func_int64_t_s_s((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 8))(p_888->g_120.yyyxyxyy)).s0, p_93)), (p_888->g_121 == (l_125 = l_123)))) >= (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(l_128.xy)).odd, (safe_div_func_uint64_t_u_u((((&l_123 != (((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_131.s70)))).yxxy)).odd)).xyxy, ((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 4))((safe_sub_func_uint64_t_u_u((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 8))(l_136.s71423531)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(abs_diff(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(p_888->g_137.s5460)).zxyxwzxz)).s2602115231330034, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(9UL, ((VECTOR(uint16_t, 4))(p_888->g_138.s1b87)).x, 0xD7CEL, 0x5677L)).zxxwyzyzwyyyxzwy))))).seeac)).hi)).yxxyxxyy))).s41, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x444AC551L, 0L)).yyxy)).even, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(1L, 1L))))))), 5L, 0L)).zxxyywyy)).s24)).hi, 1UL)), (safe_sub_func_int32_t_s_s((p_95 == (((~(safe_add_func_int64_t_s_s(((safe_add_func_int16_t_s_s(p_888->g_53, p_888->g_104.s1)) && 0x5F856401L), 0x370524A1A4E4CF6FL))) , p_888->g_137.s7) == 1UL)), p_93)))), ((VECTOR(uint16_t, 2))(0xC2A5L)), 0x84E8L)).yxywzxwzzyzywwxw, ((VECTOR(uint16_t, 16))(0UL)), ((VECTOR(uint16_t, 16))(1UL))))).s39ff))).yzzzwwzz)).s2 , &l_123)) <= p_92) && p_888->g_85), l_145)))));
    if (p_93)
    { /* block id: 21 */
        VECTOR(int32_t, 4) l_147 = (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0x68C976AAL), 0x68C976AAL);
        int32_t **l_153[5];
        VECTOR(int32_t, 4) l_155 = (VECTOR(int32_t, 4))(0x3C5DB116L, (VECTOR(int32_t, 2))(0x3C5DB116L, (-6L)), (-6L));
        VECTOR(int32_t, 2) l_156 = (VECTOR(int32_t, 2))(0x03188522L, 0L);
        int8_t *l_176 = &p_888->g_53;
        int16_t *l_244 = &p_888->g_242;
        int8_t **l_247 = &l_176;
        VECTOR(uint8_t, 4) l_261 = (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 7UL), 7UL);
        int32_t ****l_373 = &l_124[0][4][0];
        uint32_t l_374 = 4294967292UL;
        VECTOR(int8_t, 16) l_433 = (VECTOR(int8_t, 16))(0x15L, (VECTOR(int8_t, 4))(0x15L, (VECTOR(int8_t, 2))(0x15L, (-3L)), (-3L)), (-3L), 0x15L, (-3L), (VECTOR(int8_t, 2))(0x15L, (-3L)), (VECTOR(int8_t, 2))(0x15L, (-3L)), 0x15L, (-3L), 0x15L, (-3L));
        int i;
        for (i = 0; i < 5; i++)
            l_153[i] = &p_888->g_122;
lbl_202:
        p_888->g_120.x &= ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_146.s3374)).even)), ((VECTOR(int32_t, 16))(l_147.wzzyxzwxxzxyyyyx)).s5e))).hi;
lbl_544:
        p_888->g_120.x |= (p_92 , (((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 2))(0L, 0x4C19E56FL)).xyyxxyxxxyyyxxxx, ((VECTOR(int32_t, 2))(l_148.yx)).yxxxxyyxxyxxxxxy))).s806c, ((VECTOR(int32_t, 8))(l_149.ywxzxyzy)).even, ((VECTOR(int32_t, 16))(p_888->g_150.s5536663514154701)).s1917))).zyxyxyyxwyyzxyyw, ((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_151.ww)).xxxyyyyyxxyyxxxy)).s3f)).xxxyyyxyxxxyxyxy, ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(p_888->g_152.s52532037)).s2326007322212223)).s5c89)).even, ((VECTOR(int32_t, 16))((l_153[0] == (FAKE_DIVERGE(p_888->local_2_offset, get_local_id(2), 10) , l_154)), p_888->g_150.s5, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(l_155.ww)).xxxy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(4L, 0x036DD0C6L)).xxyx)))), ((VECTOR(int32_t, 4))(l_156.xyyy))))).wyzyxyyz)), (safe_rshift_func_int16_t_s_s(p_93, ((safe_lshift_func_int16_t_s_u(((p_93 || (safe_unary_minus_func_int8_t_s(0x06L))) , (p_95 , ((safe_add_func_int16_t_s_s((safe_mod_func_int32_t_s_s((((((safe_div_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u((safe_add_func_uint32_t_u_u((+(safe_mul_func_int8_t_s_s(((*l_176) |= (safe_div_func_int16_t_s_s((p_888->g_57.w | p_888->g_104.s4), p_93))), p_95))), p_888->g_177)), 3)), p_93)) & 250UL) , p_888->g_152.s7) <= p_92) > 4294967295UL), 0x15DE78DBL)), 0x6168L)) <= p_888->g_104.s4))), 11)) , p_95))), ((VECTOR(int32_t, 4))(0x7CE15402L)), 0x655DAC31L)).sf8, ((VECTOR(int32_t, 2))(0x238C1CB9L))))).yyyxyxxyyxyyyyxx, ((VECTOR(int32_t, 16))(2L)))))))).s6 < p_93));
        if (((safe_lshift_func_uint16_t_u_s(p_888->g_120.x, l_180.sf)) ^ ((void*)0 == &l_125)))
        { /* block id: 25 */
            uint32_t l_185 = 7UL;
            int32_t l_191 = 0x040841C1L;
            int32_t l_195 = 1L;
            int32_t l_197[4][7] = {{0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL},{0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL},{0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL},{0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL,0x0A3FE75AL}};
            int32_t l_205[7];
            int32_t l_210[9] = {0x59E40692L,0x365FE2B2L,0x59E40692L,0x59E40692L,0x365FE2B2L,0x59E40692L,0x59E40692L,0x365FE2B2L,0x59E40692L};
            int8_t *l_215 = (void*)0;
            int16_t l_251 = 0x32F7L;
            VECTOR(int8_t, 16) l_285 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-5L)), (-5L)), (-5L), 0L, (-5L), (VECTOR(int8_t, 2))(0L, (-5L)), (VECTOR(int8_t, 2))(0L, (-5L)), 0L, (-5L), 0L, (-5L));
            uint32_t l_363 = 0xFA9D26E6L;
            int32_t *l_372 = &l_191;
            VECTOR(int32_t, 4) l_389 = (VECTOR(int32_t, 4))(0x3C95D2DDL, (VECTOR(int32_t, 2))(0x3C95D2DDL, 0x4F03FB6DL), 0x4F03FB6DL);
            VECTOR(int8_t, 2) l_404 = (VECTOR(int8_t, 2))(0x3CL, 1L);
            VECTOR(int8_t, 8) l_409 = (VECTOR(int8_t, 8))(0x17L, (VECTOR(int8_t, 4))(0x17L, (VECTOR(int8_t, 2))(0x17L, 0x13L), 0x13L), 0x13L, 0x17L, 0x13L);
            VECTOR(uint64_t, 4) l_511 = (VECTOR(uint64_t, 4))(0xCD10B71D93DC31C1L, (VECTOR(uint64_t, 2))(0xCD10B71D93DC31C1L, 1UL), 1UL);
            VECTOR(int32_t, 16) l_512 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x3E8AB034L), 0x3E8AB034L), 0x3E8AB034L, (-1L), 0x3E8AB034L, (VECTOR(int32_t, 2))((-1L), 0x3E8AB034L), (VECTOR(int32_t, 2))((-1L), 0x3E8AB034L), (-1L), 0x3E8AB034L, (-1L), 0x3E8AB034L);
            int32_t l_535 = 0x71233A42L;
            int16_t l_537[3][10][5] = {{{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L}},{{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L}},{{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L},{0x3D3CL,0x5177L,0x5177L,0x3D3CL,1L}}};
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_205[i] = (-4L);
            if (p_92)
            { /* block id: 26 */
                int32_t l_184 = 0x40F112F4L;
                int32_t l_196 = (-1L);
                int32_t l_198 = 0x56030DADL;
                int16_t l_206[4];
                int32_t l_211 = 0L;
                VECTOR(uint8_t, 8) l_248 = (VECTOR(uint8_t, 8))(0x18L, (VECTOR(uint8_t, 4))(0x18L, (VECTOR(uint8_t, 2))(0x18L, 0xE5L), 0xE5L), 0xE5L, 0x18L, 0xE5L);
                int i;
                for (i = 0; i < 4; i++)
                    l_206[i] = 0x21B6L;
                for (p_888->g_53 = 16; (p_888->g_53 < 28); p_888->g_53 = safe_add_func_uint64_t_u_u(p_888->g_53, 3))
                { /* block id: 29 */
                    int8_t l_183 = 0x2EL;
                    int32_t l_194[6][2][9] = {{{0x35DD0E7BL,(-1L),0x34FC8B02L,0x34FC8B02L,(-1L),0x35DD0E7BL,0x7BB9B6F4L,(-10L),0x09F821FCL},{0x35DD0E7BL,(-1L),0x34FC8B02L,0x34FC8B02L,(-1L),0x35DD0E7BL,0x7BB9B6F4L,(-10L),0x09F821FCL}},{{0x35DD0E7BL,(-1L),0x34FC8B02L,0x34FC8B02L,(-1L),0x35DD0E7BL,0x7BB9B6F4L,(-10L),0x09F821FCL},{0x35DD0E7BL,(-1L),0x34FC8B02L,0x34FC8B02L,(-1L),0x35DD0E7BL,0x7BB9B6F4L,(-10L),0x09F821FCL}},{{0x35DD0E7BL,(-1L),0x34FC8B02L,0x34FC8B02L,(-1L),0x35DD0E7BL,0x7BB9B6F4L,(-10L),0x09F821FCL},{0x35DD0E7BL,(-1L),0x34FC8B02L,0x34FC8B02L,(-1L),0x35DD0E7BL,0x7BB9B6F4L,(-10L),0x09F821FCL}},{{0x35DD0E7BL,(-1L),0x34FC8B02L,0x34FC8B02L,(-1L),0x35DD0E7BL,0x7BB9B6F4L,(-10L),0x09F821FCL},{0x35DD0E7BL,(-1L),0x34FC8B02L,0x34FC8B02L,(-1L),0x35DD0E7BL,0x7BB9B6F4L,(-10L),0x09F821FCL}},{{0x35DD0E7BL,(-1L),0x34FC8B02L,0x34FC8B02L,(-1L),0x35DD0E7BL,0x7BB9B6F4L,(-10L),0x09F821FCL},{0x35DD0E7BL,(-1L),0x34FC8B02L,0x34FC8B02L,(-1L),0x35DD0E7BL,0x7BB9B6F4L,(-10L),0x09F821FCL}},{{0x35DD0E7BL,(-1L),0x34FC8B02L,0x34FC8B02L,(-1L),0x35DD0E7BL,0x7BB9B6F4L,(-10L),0x09F821FCL},{0x35DD0E7BL,(-1L),0x34FC8B02L,0x34FC8B02L,(-1L),0x35DD0E7BL,0x7BB9B6F4L,(-10L),0x09F821FCL}}};
                    int i, j, k;
                    if ((&p_888->g_53 == (void*)0))
                    { /* block id: 30 */
                        int8_t *l_188 = (void*)0;
                        l_185++;
                        if (p_92)
                            break;
                        return l_188;
                    }
                    else
                    { /* block id: 34 */
                        p_92 = l_184;
                    }
                    for (p_888->g_177 = 12; (p_888->g_177 > 10); p_888->g_177 = safe_sub_func_uint32_t_u_u(p_888->g_177, 6))
                    { /* block id: 39 */
                        int8_t l_192[10][2][9] = {{{0L,5L,0L,0L,5L,0L,0L,5L,0L},{0L,5L,0L,0L,5L,0L,0L,5L,0L}},{{0L,5L,0L,0L,5L,0L,0L,5L,0L},{0L,5L,0L,0L,5L,0L,0L,5L,0L}},{{0L,5L,0L,0L,5L,0L,0L,5L,0L},{0L,5L,0L,0L,5L,0L,0L,5L,0L}},{{0L,5L,0L,0L,5L,0L,0L,5L,0L},{0L,5L,0L,0L,5L,0L,0L,5L,0L}},{{0L,5L,0L,0L,5L,0L,0L,5L,0L},{0L,5L,0L,0L,5L,0L,0L,5L,0L}},{{0L,5L,0L,0L,5L,0L,0L,5L,0L},{0L,5L,0L,0L,5L,0L,0L,5L,0L}},{{0L,5L,0L,0L,5L,0L,0L,5L,0L},{0L,5L,0L,0L,5L,0L,0L,5L,0L}},{{0L,5L,0L,0L,5L,0L,0L,5L,0L},{0L,5L,0L,0L,5L,0L,0L,5L,0L}},{{0L,5L,0L,0L,5L,0L,0L,5L,0L},{0L,5L,0L,0L,5L,0L,0L,5L,0L}},{{0L,5L,0L,0L,5L,0L,0L,5L,0L},{0L,5L,0L,0L,5L,0L,0L,5L,0L}}};
                        int32_t l_193 = 0x6AA3A504L;
                        uint32_t l_199[2];
                        int32_t l_203 = 1L;
                        int32_t l_204 = 1L;
                        int32_t l_207 = 0x65EF0559L;
                        int32_t l_208 = 0x5E006D20L;
                        int32_t l_209[10];
                        uint64_t l_212[7] = {18446744073709551615UL,18446744073709551606UL,18446744073709551615UL,18446744073709551615UL,18446744073709551606UL,18446744073709551615UL,18446744073709551615UL};
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_199[i] = 0xF0EF6DE1L;
                        for (i = 0; i < 10; i++)
                            l_209[i] = 1L;
                        p_92 = p_888->g_57.y;
                        --l_199[1];
                        if (p_888->g_85)
                            goto lbl_202;
                        --l_212[5];
                    }
                    return l_215;
                }
                if ((0x1703L != (safe_div_func_int16_t_s_s(p_92, l_211))))
                { /* block id: 47 */
                    int32_t l_225[6];
                    int i;
                    for (i = 0; i < 6; i++)
                        l_225[i] = 0x4F228F6AL;
                    for (p_888->g_53 = (-16); (p_888->g_53 > (-8)); p_888->g_53 = safe_add_func_uint16_t_u_u(p_888->g_53, 5))
                    { /* block id: 50 */
                        int16_t *l_224 = &l_206[0];
                        p_92 ^= (safe_sub_func_uint16_t_u_u(p_888->g_19, ((&p_888->g_122 != (l_153[0] = (void*)0)) < (safe_lshift_func_int16_t_s_u((l_225[4] = ((*l_224) |= 0x2B1DL)), 8)))));
                        if (p_95)
                            break;
                    }
                }
                else
                { /* block id: 57 */
                    int64_t l_226 = 0x41A27FF796F7AD59L;
                    int32_t l_227 = 0x43B54833L;
                    int32_t l_228 = 0L;
                    int32_t l_229[9] = {(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L)};
                    uint16_t *l_233 = (void*)0;
                    uint16_t *l_234 = (void*)0;
                    uint16_t *l_235 = (void*)0;
                    uint16_t *l_236 = (void*)0;
                    uint16_t *l_237 = (void*)0;
                    uint16_t *l_238[5];
                    int16_t **l_243[2][1];
                    int i, j;
                    for (i = 0; i < 5; i++)
                        l_238[i] = (void*)0;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_243[i][j] = &p_888->g_241;
                    }
                    (*p_888->g_121) = (*p_888->g_121);
                    l_230--;
                    if ((((p_888->g_137.s1++) , 0x32L) & ((l_244 = p_888->g_241) == &p_888->g_242)))
                    { /* block id: 62 */
                        return &p_888->g_53;
                    }
                    else
                    { /* block id: 64 */
                        int8_t **l_246 = &l_215;
                        int8_t ***l_245[6] = {&l_246,&l_246,&l_246,&l_246,&l_246,&l_246};
                        uint8_t *l_249 = (void*)0;
                        uint8_t *l_250[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_250[i] = (void*)0;
                        l_247 = &l_215;
                        l_184 = (p_888->g_242 < (l_251 = ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_248.s41)).xxxxyxyy)).s6));
                    }
                    return &p_888->g_53;
                }
                for (p_92 = 15; (p_92 <= (-26)); --p_92)
                { /* block id: 73 */
                    uint8_t l_256 = 0x55L;
                    for (p_888->g_177 = 0; (p_888->g_177 != 18); p_888->g_177 = safe_add_func_int8_t_s_s(p_888->g_177, 3))
                    { /* block id: 76 */
                        l_211 &= l_256;
                    }
                    if (l_256)
                        break;
                    for (l_196 = 0; (l_196 <= 27); l_196 = safe_add_func_uint16_t_u_u(l_196, 1))
                    { /* block id: 82 */
                        return p_94;
                    }
                }
                p_92 |= (l_248.s6 || (*p_888->g_241));
            }
            else
            { /* block id: 87 */
                int16_t l_296 = 1L;
                uint8_t *l_297 = (void*)0;
                uint8_t *l_298 = (void*)0;
                uint8_t *l_299 = (void*)0;
                uint8_t *l_300[7][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                int8_t **l_301 = &l_176;
                int8_t *l_305[4][8][6] = {{{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53}},{{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53}},{{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53}},{{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53},{(void*)0,(void*)0,&p_888->g_53,(void*)0,&p_888->g_53,&p_888->g_53}}};
                VECTOR(int32_t, 2) l_312 = (VECTOR(int32_t, 2))((-7L), 0x4A5278A2L);
                int32_t ***l_334 = (void*)0;
                int16_t **l_348 = &l_244;
                int32_t *****l_405 = &l_373;
                VECTOR(int8_t, 8) l_408 = (VECTOR(int8_t, 8))(0x52L, (VECTOR(int8_t, 4))(0x52L, (VECTOR(int8_t, 2))(0x52L, (-7L)), (-7L)), (-7L), 0x52L, (-7L));
                VECTOR(int8_t, 2) l_410 = (VECTOR(int8_t, 2))(8L, (-1L));
                int64_t l_502 = 0x7ACE81BDB505DEB1L;
                int32_t ******l_533[7] = {&l_405,&l_405,&l_405,&l_405,&l_405,&l_405,&l_405};
                int i, j, k;
                if (((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 4))(l_261.xywx)).zyxywzzz, (uint8_t)((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(p_888->g_262.s22)), 0x66L, 0x25L, 1UL, (safe_rshift_func_uint8_t_u_u(0x2DL, (l_210[4] |= (safe_sub_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s(((safe_add_func_int8_t_s_s(((*l_176) = (safe_mul_func_int16_t_s_s((((((*p_888->g_121) == (void*)0) && (((safe_div_func_uint64_t_u_u(((l_195 &= (((((((((safe_lshift_func_int8_t_s_s((-1L), 5)) != (safe_add_func_uint32_t_u_u((p_93 <= (((safe_mul_func_int8_t_s_s((((safe_add_func_uint32_t_u_u(p_888->g_242, ((p_888->g_13 , ((safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 4))(l_285.s61fe)).z, (p_888->g_262.s5 ^= (((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((safe_sub_func_int16_t_s_s((safe_add_func_uint8_t_u_u(((1L >= (safe_div_func_int16_t_s_s((safe_mod_func_int8_t_s_s(((safe_div_func_int32_t_s_s((p_888->g_19 , 0x67A6BB68L), l_296)) < p_93), 255UL)), 0x4037L))) && p_888->g_53), l_191)), p_95)) < p_888->g_152.s3), 0L, p_92, p_93, 0x49EBBCC51002C15DL, 0L, (-2L), 7L)).s4630231533416060)).sc == p_888->g_152.s2)))) && p_888->g_53)) , 0x32E2015FL))) , l_197[1][2]) , (-8L)), p_92)) && p_888->g_262.s1) , p_93)), 4294967295UL))) , l_301) != l_301) , 0x57200246092E8BFCL) , p_888->g_152.s6) || 0x406FL) , 0x26L) , 1L)) | p_92), p_93)) >= 0L) | FAKE_DIVERGE(p_888->group_1_offset, get_group_id(1), 10))) | p_92) , (*p_888->g_241)), p_888->g_85))), l_296)) ^ l_296), l_302)), p_95))))), 250UL, 0xFEL)).s2))))).s5770743661705436, ((VECTOR(uint8_t, 16))(255UL)), ((VECTOR(uint8_t, 16))(255UL))))).lo, ((VECTOR(uint8_t, 8))(0x6CL))))).s1, 4)) >= p_888->g_104.s6))
                { /* block id: 92 */
                    uint32_t l_327 = 0xB5FA9EDEL;
                    int16_t l_328[5];
                    int32_t **l_329 = &p_888->g_122;
                    int32_t ****l_335 = &l_124[1][4][6];
                    int32_t *****l_359[1];
                    int64_t l_362 = 0x447BDB975A12ED76L;
                    int64_t l_368 = 0x4B225F26CE7FAF82L;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_328[i] = 1L;
                    for (i = 0; i < 1; i++)
                        l_359[i] = &l_335;
                    for (p_95 = (-1); (p_95 == 28); p_95 = safe_add_func_uint16_t_u_u(p_95, 5))
                    { /* block id: 95 */
                        return l_305[3][4][3];
                    }
                    l_329 = ((l_191 ^= (safe_add_func_uint32_t_u_u((safe_add_func_uint16_t_u_u((safe_div_func_int32_t_s_s((!((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_312.yy)))).odd), (safe_lshift_func_int16_t_s_s((p_93 & (((((p_888->g_150.s6 <= ((*l_176) = (p_92 , ((void*)0 != (*l_123))))) | (safe_sub_func_uint8_t_u_u(l_319[1][1][0], (p_888->g_320 &= l_312.x)))) && ((((((safe_add_func_uint16_t_u_u((p_888->g_19 , ((((safe_div_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(p_93, l_327)), p_93)) , p_95) , p_93) < l_251)), 0UL)) == p_888->g_152.s0) , (void*)0) == (void*)0) ^ l_210[1]) != l_185)) , &p_92) == (*p_888->g_121))), l_328[2])))), l_312.x)), p_888->g_138.s5))) , l_329);
                    (*p_888->g_121) = (GROUP_DIVERGE(0, 1) , (*p_888->g_121));
                    if (((safe_rshift_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((((!(l_334 == ((*l_335) = &p_888->g_121))) == p_92) , (safe_rshift_func_int8_t_s_s((safe_sub_func_int64_t_s_s((safe_div_func_int32_t_s_s((safe_rshift_func_uint16_t_u_u((((VECTOR(uint32_t, 4))(mul_hi(((VECTOR(uint32_t, 16))((safe_add_func_int32_t_s_s((p_92 ^= ((((safe_rshift_func_int16_t_s_s((&p_888->g_241 != l_348), (p_888->g_349 == &l_305[3][4][3]))) <= ((VECTOR(int32_t, 16))(p_888->g_354.s4a77165928ebb8f8)).sc) , ((safe_div_func_int32_t_s_s(l_210[3], (safe_mod_func_uint32_t_u_u(((+((p_888->g_360[0] = &l_334) == (void*)0)) , l_210[3]), 0x712A8B4AL)))) , (-6L))) , l_362)), FAKE_DIVERGE(p_888->local_0_offset, get_local_id(0), 10))), 1UL, ((VECTOR(uint32_t, 2))(0UL)), 4294967295UL, 0x9F5103A3L, 0x40BBA020L, l_363, p_888->g_177, ((VECTOR(uint32_t, 4))(4294967295UL)), 4294967291UL, 4UL, 7UL)).sffca, ((VECTOR(uint32_t, 4))(0x2DAFED50L))))).y > l_251), FAKE_DIVERGE(p_888->local_2_offset, get_local_id(2), 10))), (-1L))), p_93)), 3))) , 0x4EE9L), 0x3024L)), 3)) , l_364))
                    { /* block id: 106 */
                        int16_t l_365 = 0x2DC3L;
                        int32_t l_366[5][4] = {{0L,0x29F0A370L,2L,0x29F0A370L},{0L,0x29F0A370L,2L,0x29F0A370L},{0L,0x29F0A370L,2L,0x29F0A370L},{0L,0x29F0A370L,2L,0x29F0A370L},{0L,0x29F0A370L,2L,0x29F0A370L}};
                        int i, j;
                        ++l_369;
                        l_372 = ((*l_123) = (p_92 , &p_92));
                    }
                    else
                    { /* block id: 110 */
                        int32_t ****l_375 = &l_124[0][4][0];
                        int64_t *l_385 = &l_367[0];
                        l_312.y |= ((*l_372) = ((l_373 == ((FAKE_DIVERGE(p_888->global_0_offset, get_global_id(0), 10) , (l_374 |= p_93)) , l_375)) , (safe_sub_func_uint32_t_u_u((safe_unary_minus_func_int32_t_s((((*l_385) = (0L != (safe_sub_func_int64_t_s_s((safe_sub_func_uint32_t_u_u((p_92 , p_92), ((VECTOR(uint32_t, 2))(p_888->g_383.yz)).lo)), ((p_888->g_120.x ^ ((VECTOR(int16_t, 8))((&p_888->g_241 == (((-10L) < p_888->g_85) , l_384)), ((VECTOR(int16_t, 2))(4L)), ((VECTOR(int16_t, 4))(0x05E7L)), 0x23E9L)).s5) >= GROUP_DIVERGE(1, 1)))))) <= (-3L)))), p_93))));
                        if (p_888->g_13)
                            goto lbl_541;
                    }
                }
                else
                { /* block id: 116 */
                    VECTOR(int32_t, 16) l_388 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 7L), 7L), 7L, 1L, 7L, (VECTOR(int32_t, 2))(1L, 7L), (VECTOR(int32_t, 2))(1L, 7L), 1L, 7L, 1L, 7L);
                    uint16_t *l_392[7][1][6] = {{{&l_319[0][3][0],&l_319[0][3][0],(void*)0,&l_319[1][0][0],&l_319[1][1][0],(void*)0}},{{&l_319[0][3][0],&l_319[0][3][0],(void*)0,&l_319[1][0][0],&l_319[1][1][0],(void*)0}},{{&l_319[0][3][0],&l_319[0][3][0],(void*)0,&l_319[1][0][0],&l_319[1][1][0],(void*)0}},{{&l_319[0][3][0],&l_319[0][3][0],(void*)0,&l_319[1][0][0],&l_319[1][1][0],(void*)0}},{{&l_319[0][3][0],&l_319[0][3][0],(void*)0,&l_319[1][0][0],&l_319[1][1][0],(void*)0}},{{&l_319[0][3][0],&l_319[0][3][0],(void*)0,&l_319[1][0][0],&l_319[1][1][0],(void*)0}},{{&l_319[0][3][0],&l_319[0][3][0],(void*)0,&l_319[1][0][0],&l_319[1][1][0],(void*)0}}};
                    int32_t *****l_407 = &p_888->g_360[2];
                    int32_t ******l_406 = &l_407;
                    int16_t *l_415 = (void*)0;
                    int16_t *l_416 = &l_251;
                    VECTOR(int8_t, 16) l_428 = (VECTOR(int8_t, 16))(0x28L, (VECTOR(int8_t, 4))(0x28L, (VECTOR(int8_t, 2))(0x28L, 0x7AL), 0x7AL), 0x7AL, 0x28L, 0x7AL, (VECTOR(int8_t, 2))(0x28L, 0x7AL), (VECTOR(int8_t, 2))(0x28L, 0x7AL), 0x28L, 0x7AL, 0x28L, 0x7AL);
                    VECTOR(int8_t, 4) l_432 = (VECTOR(int8_t, 4))(0x17L, (VECTOR(int8_t, 2))(0x17L, 2L), 2L);
                    int64_t **l_497 = &p_888->g_467;
                    uint64_t *l_498[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int i, j, k;
                    if ((((*l_372) && ((safe_add_func_int64_t_s_s((((*l_372) = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(l_388.sf15a2463)), ((VECTOR(int32_t, 2))(l_389.wx)).xxyyxyxx))).s76)).even) != (p_888->g_138.s2 || p_888->g_242)), (safe_mul_func_uint16_t_u_u((p_888->g_137.s3 = ((VECTOR(uint16_t, 2))(0x80B9L, 1UL)).odd), (p_888->g_417 ^= (safe_rshift_func_int16_t_s_u(((((safe_mod_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u((safe_div_func_uint32_t_u_u((safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(p_888->g_403.se72c)), ((VECTOR(uint8_t, 4))(0UL, 251UL, 249UL, 0x8BL)))).s60, ((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),uint8_t,((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 2))((-9L), 1L)).yyyxxxxxyyyyxxxy, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_404.yy)).xxxxyxxxxyyyxxxx)).s76d6)), ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 8))((l_405 == ((*l_406) = &p_888->g_360[1])), 1L, 0x0AL, ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))((-1L), (-8L))), 0x7EL, ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 4))(l_408.s1557)), ((VECTOR(int8_t, 16))(l_409.s0153016656013272)).s7c2c))), ((VECTOR(int8_t, 4))(l_410.yxxx)), ((safe_sub_func_int8_t_s_s((safe_sub_func_int16_t_s_s((p_888->g_57.w ^ (p_92 || ((*l_416) = (-1L)))), 0xA8F0L)), 0x06L)) != l_388.s9), ((VECTOR(int8_t, 4))((-8L))))).hi, (int8_t)1L))).s76, ((VECTOR(int8_t, 2))(1L)), ((VECTOR(int8_t, 2))(0x72L))))), ((VECTOR(int8_t, 2))(0L)), (-5L))).lo, ((VECTOR(int8_t, 4))(0x5DL))))), ((VECTOR(int8_t, 4))((-5L)))))))).zwxywxxzwxywwwyz))))).sdc7a, (uint8_t)p_888->g_262.s4, (uint8_t)p_888->g_104.s0))).even, ((VECTOR(uint8_t, 2))(0x76L))))).xyxxyyxx)).s56, ((VECTOR(uint8_t, 2))(254UL))))).xxyyxyyxxyyyxxyy)).hi)).s4, p_93)), p_95)), 1UL)), p_888->g_354.s2)) || GROUP_DIVERGE(2, 1)) | 0x520AE27EL) != p_888->g_53), 15))))))) | 0x4EL)) , 1L))
                    { /* block id: 122 */
                        int32_t ***l_446 = &l_123;
                        uint32_t *l_447 = &l_185;
                        int64_t *l_466 = &l_367[0];
                        int64_t **l_469 = (void*)0;
                        int64_t **l_470 = &p_888->g_467;
                        int16_t l_490[8];
                        int i;
                        for (i = 0; i < 8; i++)
                            l_490[i] = 9L;
                        (*l_125) = &p_92;
                        l_312.x ^= ((**l_125) = (safe_div_func_int8_t_s_s(((1UL | ((safe_add_func_int8_t_s_s(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(p_888->g_422.yywz)).yzzwwwwzzxwxwwyx)).s83, ((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_423.s05)), 0x45L, 0x0FL)).wzzzwyzwyzyzxyww, ((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 2))(8L, (-5L))).yxxx, ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 16))((p_888->g_354.sc || (((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(int8_t, 4))(l_428.sc9d1)), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(p_888->g_429.s215fc6e0b6c2cb14)).se5)).xyxx))), ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 2))(l_430.xx)), ((VECTOR(uint8_t, 2))(0UL, 0x4DL))))).xyxxyxyyyyxyyxxy)).s6ec9))))).y, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),int8_t,((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 8))(p_888->g_431.s05361560)), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_432.zzxw)).wxxxzzwwzxwxzzxw)).lo, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(l_433.sd1cc9f0c34aebeda)).lo)).s1127046227245466))).hi))))), (-7L), ((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))((((safe_rshift_func_int16_t_s_u((-1L), 14)) , (((*l_372) || GROUP_DIVERGE(2, 1)) , ((!((0L == 4L) ^ (p_888->g_57.w++))) | (((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 16))(hadd(((VECTOR(uint32_t, 16))(min(((VECTOR(uint32_t, 8))(0xF43A8A18L, ((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 4))(p_888->g_438.yzxz)).hi, ((VECTOR(uint32_t, 2))(p_888->g_439.ww))))), ((*l_447) &= (p_95 > (safe_rshift_func_int8_t_s_u((safe_div_func_int16_t_s_s((safe_mod_func_int32_t_s_s(((void*)0 != l_446), (-1L))), (*l_372))), p_95)))), (*****l_407), p_888->g_150.s6, 4UL, 4294967292UL)).s4573746234473020, (uint32_t)0x83EA6BD1L))), ((VECTOR(uint32_t, 16))(4294967295UL))))).even, ((VECTOR(uint32_t, 8))(0x6BD6F2D0L))))).s32)).yxxyyyyx)).s5233477637301377, ((VECTOR(uint32_t, 16))(4294967290UL))))).sc ^ p_92)))) < p_888->g_422.z), ((VECTOR(int8_t, 2))(0x6FL)), (-1L), ((VECTOR(int8_t, 4))(0x7AL)), p_93, ((VECTOR(int8_t, 4))(0x25L)), 0x63L, 0L, (-5L))).sd3)), 0L, (-1L))), ((VECTOR(int8_t, 4))((-4L)))))), p_888->g_422.w, 0L, 1L)).sc8, ((VECTOR(int8_t, 2))(0x5EL))))).yyxyxyxyyyxyyxyx, (int8_t)p_888->g_57.y, (int8_t)3L))).s2b25)), ((VECTOR(int8_t, 2))(0x77L)), (-1L), (-6L))).even)).z)) >= FAKE_DIVERGE(p_888->global_2_offset, get_global_id(2), 10)) > (*l_372))), (**l_125), 0x60L, 0x01L, ((VECTOR(int8_t, 2))(0x18L)), p_888->g_417, ((VECTOR(int8_t, 4))(1L)), ((VECTOR(int8_t, 4))(1L)), (-1L))).s79, ((VECTOR(int8_t, 2))((-8L))), ((VECTOR(int8_t, 2))(0x10L))))).xxyx, ((VECTOR(int8_t, 4))(0x67L))))).wxxyzyzzwyxxwxwz, ((VECTOR(int8_t, 16))(0x10L))))).s86))).even, p_92)) || 0L)) | 253UL), p_888->g_431.s3)));
                        (***l_446) = (((safe_mod_func_uint64_t_u_u((p_888->g_50.w = ((safe_div_func_int16_t_s_s((((safe_add_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_s((safe_add_func_int16_t_s_s(p_95, ((safe_sub_func_int64_t_s_s(((safe_div_func_int16_t_s_s((safe_mod_func_uint32_t_u_u((((l_466 != ((*l_470) = p_888->g_467)) || (((safe_add_func_uint32_t_u_u(((safe_sub_func_int16_t_s_s((safe_add_func_uint32_t_u_u((safe_sub_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s(((p_93 | ((safe_lshift_func_int16_t_s_s((0x7BL && (p_888->g_431.s7 = (p_888->g_429.s3 = ((VECTOR(int8_t, 16))((p_888->g_417 | (safe_sub_func_int16_t_s_s((((VECTOR(int16_t, 4))(p_888->g_485.s1760)).x > (((*l_372) = ((**l_247) = (p_888->g_431.s2 || (safe_lshift_func_int16_t_s_s(0L, (GROUP_DIVERGE(2, 1) , (((*l_447) = (safe_mul_func_uint8_t_u_u(255UL, (***l_446)))) & p_888->g_57.w))))))) <= p_95)), GROUP_DIVERGE(2, 1)))), 0x0FL, ((VECTOR(int8_t, 8))(0x1CL)), 9L, 0x30L, 0x11L, (-4L), 6L, 1L)).s4))), p_93)) , 0x17L)) , (*p_888->g_241)), p_95)) && (-6L)), p_93)), 0x3920AA01L)), 0x56C6L)) == (***l_446)), p_93)) , &l_466) == (void*)0)) , 0x450F5CD2L), 0x52FF6074L)), p_92)) & p_92), p_888->g_242)) >= (***l_446)))), p_92)) , 0x653D380752BE8D26L), 0x4E975CCDB4945041L)) && l_490[2]) <= 0UL), p_95)) == (**p_888->g_121))), p_95)) , p_93) > p_888->g_242);
                    }
                    else
                    { /* block id: 136 */
                        uint64_t l_492 = 0x2BE882A0DC469825L;
                        p_888->g_491.y &= p_92;
                        (*l_372) = l_492;
                        (**p_888->g_361) = &p_92;
                    }
                    (*l_372) = (safe_lshift_func_uint16_t_u_s((safe_add_func_uint64_t_u_u(((*****l_407) |= ((void*)0 != l_497)), (safe_unary_minus_func_uint8_t_u((((*l_247) = &p_888->g_53) != (void*)0))))), (((void*)0 == &p_888->g_361) , ((+9L) != 4294967287UL))));
                    for (p_888->g_177 = (-14); (p_888->g_177 <= 26); p_888->g_177 = safe_add_func_int32_t_s_s(p_888->g_177, 6))
                    { /* block id: 146 */
                        uint32_t l_503 = 0x49CD1855L;
                        VECTOR(uint64_t, 8) l_506 = (VECTOR(uint64_t, 8))(0xF7A08F0894A7B476L, (VECTOR(uint64_t, 4))(0xF7A08F0894A7B476L, (VECTOR(uint64_t, 2))(0xF7A08F0894A7B476L, 1UL), 1UL), 1UL, 0xF7A08F0894A7B476L, 1UL);
                        VECTOR(uint64_t, 16) l_509 = (VECTOR(uint64_t, 16))(18446744073709551606UL, (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 18446744073709551611UL), 18446744073709551611UL), 18446744073709551611UL, 18446744073709551606UL, 18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 18446744073709551611UL), (VECTOR(uint64_t, 2))(18446744073709551606UL, 18446744073709551611UL), 18446744073709551606UL, 18446744073709551611UL, 18446744073709551606UL, 18446744073709551611UL);
                        uint64_t *l_534 = (void*)0;
                        VECTOR(uint16_t, 16) l_536 = (VECTOR(uint16_t, 16))(0x4203L, (VECTOR(uint16_t, 4))(0x4203L, (VECTOR(uint16_t, 2))(0x4203L, 0xF3EBL), 0xF3EBL), 0xF3EBL, 0x4203L, 0xF3EBL, (VECTOR(uint16_t, 2))(0x4203L, 0xF3EBL), (VECTOR(uint16_t, 2))(0x4203L, 0xF3EBL), 0x4203L, 0xF3EBL, 0x4203L, 0xF3EBL);
                        int i;
                        ++l_503;
                        if (l_503)
                            break;
                        l_536.s7 ^= (l_388.sd &= ((0x1B99L == (!(+(((((VECTOR(uint64_t, 8))(l_506.s30200760)).s2 >= ((p_888->g_104.s4 < (((safe_mod_func_int32_t_s_s(0x05155394L, ((((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),uint64_t,((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 2))(l_509.sc9))))), ((VECTOR(uint64_t, 2))(p_888->g_510.s32)), 18446744073709551615UL, 18446744073709551615UL, 18446744073709551609UL, 0xD8A11A360AF56AEAL, 0xAB59D6EE7A32E93DL, 4UL, 0x8E88D36101D0E8FBL, ((VECTOR(uint64_t, 2))(l_511.xz)), ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 4))(abs(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(l_512.s8023)).even, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_888->g_513.s4f)), 5L, 0x17AAECC2L)).hi))).yxxyxxyy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 8))(0x78913C14L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))((((safe_unary_minus_func_uint32_t_u((((safe_div_func_int8_t_s_s(((safe_mul_func_int16_t_s_s((*****l_407), (safe_unary_minus_func_uint16_t_u((0x3CL && (!((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))(0x2CL, ((VECTOR(int8_t, 2))((-1L), 8L)), (-1L), ((VECTOR(int8_t, 2))(p_888->g_520.s26)), 0x18L, 0L)).s70, (int8_t)(((((((((safe_sub_func_uint8_t_u_u((l_523 == (void*)0), ((safe_mod_func_uint32_t_u_u(((safe_rshift_func_int8_t_s_u((safe_lshift_func_int8_t_s_s(((*l_523) = ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_888->g_530.s12)), (-1L), 1L)))).y), (GROUP_DIVERGE(0, 1) , ((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))((((safe_mul_func_int8_t_s_s((p_888->g_431.s2 = (((l_406 = l_533[1]) == (void*)0) && p_888->g_57.w)), p_888->g_468[3])) , (-2L)) , (*l_372)), 0x7FL, ((VECTOR(int8_t, 4))(0x54L)), 0x54L, 1L)))), ((VECTOR(int8_t, 8))(0x77L)), ((VECTOR(int8_t, 8))(0x62L))))).s7))), 2)) > 0x18L), (*****l_407))) <= 1L))) , l_534) != &p_888->g_85) && (*****l_407)) & 0x3001L) , &p_888->g_320) == (void*)0) , GROUP_DIVERGE(1, 1)) , l_535)))), ((VECTOR(int8_t, 2))(0x7CL))))).even)))))) | p_95), p_888->g_354.sa)) <= 4294967295UL) > p_888->g_422.w))) , 1L) <= 4294967288UL), ((VECTOR(int32_t, 2))(0x428E5B09L)), 0x6AD85B2AL)).odd)), ((VECTOR(int32_t, 4))(0x3E58A67BL)), 0x23E57EE3L)).s3435306537153642))).s68b1)).xxxxwyzy))).s6313364233151017, ((VECTOR(int32_t, 16))(0x16E15114L)), ((VECTOR(int32_t, 16))(1L))))).even)).even))).even, ((VECTOR(uint32_t, 2))(0xED5CE75DL))))).yyyyyxyyyxxxyxyx)).s1, 0x14E7FB27312A12A7L, 18446744073709551607UL)).sb7, (uint64_t)0UL, (uint64_t)(*l_372)))).lo & p_93) , GROUP_DIVERGE(0, 1)))) & 0x5BL) && p_888->g_50.w)) && p_888->g_530.s4)) & 0x9845AC08L) || p_888->g_13)))) != 0xC7ECL));
                    }
                    (**l_125) = (((FAKE_DIVERGE(p_888->group_2_offset, get_group_id(2), 10) , &l_372) != (l_153[4] = &l_372)) , (***p_888->g_361));
                }
lbl_541:
                ++p_888->g_538;
                (*l_123) = (*l_125);
                (*l_372) ^= (-1L);
            }
        }
        else
        { /* block id: 163 */
            if (p_93)
                goto lbl_202;
            (*p_888->g_121) = (p_93 , &p_92);
            for (p_92 = 0; (p_92 > (-26)); p_92--)
            { /* block id: 168 */
                if (p_888->g_85)
                    goto lbl_544;
            }
        }
    }
    else
    { /* block id: 172 */
        (*l_125) = (void*)0;
    }
    return p_94;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_889;
    struct S0* p_888 = &c_889;
    struct S0 c_890 = {
        (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), 1UL), 1UL, 65535UL, 1UL), // p_888->g_12
        0x0EF307D7L, // p_888->g_13
        (-1L), // p_888->g_19
        (VECTOR(int16_t, 16))(0x525BL, (VECTOR(int16_t, 4))(0x525BL, (VECTOR(int16_t, 2))(0x525BL, 0x0661L), 0x0661L), 0x0661L, 0x525BL, 0x0661L, (VECTOR(int16_t, 2))(0x525BL, 0x0661L), (VECTOR(int16_t, 2))(0x525BL, 0x0661L), 0x525BL, 0x0661L, 0x525BL, 0x0661L), // p_888->g_27
        (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), 18446744073709551615UL), // p_888->g_50
        0x7CL, // p_888->g_53
        (VECTOR(uint8_t, 4))(0x46L, (VECTOR(uint8_t, 2))(0x46L, 0x3BL), 0x3BL), // p_888->g_57
        18446744073709551615UL, // p_888->g_85
        (VECTOR(int32_t, 8))(0x1594A516L, (VECTOR(int32_t, 4))(0x1594A516L, (VECTOR(int32_t, 2))(0x1594A516L, 0x4F7295DFL), 0x4F7295DFL), 0x4F7295DFL, 0x1594A516L, 0x4F7295DFL), // p_888->g_104
        (VECTOR(int32_t, 2))(9L, 0x7B29079CL), // p_888->g_120
        (void*)0, // p_888->g_122
        &p_888->g_122, // p_888->g_121
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x7508L), 0x7508L), 0x7508L, 0UL, 0x7508L), // p_888->g_137
        (VECTOR(uint16_t, 16))(0xFAD0L, (VECTOR(uint16_t, 4))(0xFAD0L, (VECTOR(uint16_t, 2))(0xFAD0L, 0xB4F0L), 0xB4F0L), 0xB4F0L, 0xFAD0L, 0xB4F0L, (VECTOR(uint16_t, 2))(0xFAD0L, 0xB4F0L), (VECTOR(uint16_t, 2))(0xFAD0L, 0xB4F0L), 0xFAD0L, 0xB4F0L, 0xFAD0L, 0xB4F0L), // p_888->g_138
        (VECTOR(int32_t, 8))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x22A6CCB9L), 0x22A6CCB9L), 0x22A6CCB9L, 4L, 0x22A6CCB9L), // p_888->g_150
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-7L)), (-7L)), (-7L), 1L, (-7L)), // p_888->g_152
        0x065190E7L, // p_888->g_177
        0x12B2L, // p_888->g_242
        &p_888->g_242, // p_888->g_241
        (VECTOR(uint8_t, 8))(0xA7L, (VECTOR(uint8_t, 4))(0xA7L, (VECTOR(uint8_t, 2))(0xA7L, 0UL), 0UL), 0UL, 0xA7L, 0UL), // p_888->g_262
        0xFAL, // p_888->g_320
        (-9L), // p_888->g_351
        {0L,0L,0L,0L,0L,0L,0L,0L}, // p_888->g_352
        {{0x46L,8L,0x46L,0x46L,8L,0x46L},{0x46L,8L,0x46L,0x46L,8L,0x46L},{0x46L,8L,0x46L,0x46L,8L,0x46L},{0x46L,8L,0x46L,0x46L,8L,0x46L},{0x46L,8L,0x46L,0x46L,8L,0x46L}}, // p_888->g_353
        {{&p_888->g_351},{&p_888->g_351},{&p_888->g_351},{&p_888->g_351},{&p_888->g_351},{&p_888->g_351},{&p_888->g_351},{&p_888->g_351}}, // p_888->g_350
        &p_888->g_350[1][0], // p_888->g_349
        (VECTOR(int32_t, 16))(0x187B0370L, (VECTOR(int32_t, 4))(0x187B0370L, (VECTOR(int32_t, 2))(0x187B0370L, (-3L)), (-3L)), (-3L), 0x187B0370L, (-3L), (VECTOR(int32_t, 2))(0x187B0370L, (-3L)), (VECTOR(int32_t, 2))(0x187B0370L, (-3L)), 0x187B0370L, (-3L), 0x187B0370L, (-3L)), // p_888->g_354
        &p_888->g_121, // p_888->g_361
        {&p_888->g_361,&p_888->g_361,&p_888->g_361,&p_888->g_361,&p_888->g_361}, // p_888->g_360
        (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xA5F23EA0L), 0xA5F23EA0L), // p_888->g_383
        (VECTOR(uint8_t, 16))(0xE6L, (VECTOR(uint8_t, 4))(0xE6L, (VECTOR(uint8_t, 2))(0xE6L, 9UL), 9UL), 9UL, 0xE6L, 9UL, (VECTOR(uint8_t, 2))(0xE6L, 9UL), (VECTOR(uint8_t, 2))(0xE6L, 9UL), 0xE6L, 9UL, 0xE6L, 9UL), // p_888->g_403
        0xF8B1F912L, // p_888->g_417
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 1L), 1L), // p_888->g_422
        (VECTOR(int8_t, 16))(0x1CL, (VECTOR(int8_t, 4))(0x1CL, (VECTOR(int8_t, 2))(0x1CL, 4L), 4L), 4L, 0x1CL, 4L, (VECTOR(int8_t, 2))(0x1CL, 4L), (VECTOR(int8_t, 2))(0x1CL, 4L), 0x1CL, 4L, 0x1CL, 4L), // p_888->g_429
        (VECTOR(int8_t, 8))(0x52L, (VECTOR(int8_t, 4))(0x52L, (VECTOR(int8_t, 2))(0x52L, 0x78L), 0x78L), 0x78L, 0x52L, 0x78L), // p_888->g_431
        (VECTOR(uint32_t, 4))(0xE095293AL, (VECTOR(uint32_t, 2))(0xE095293AL, 0x83F9DB61L), 0x83F9DB61L), // p_888->g_438
        (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x9BC9EBECL), 0x9BC9EBECL), // p_888->g_439
        {1L,1L,1L,1L,1L}, // p_888->g_468
        &p_888->g_468[0], // p_888->g_467
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x0A99L), 0x0A99L), 0x0A99L, 1L, 0x0A99L), // p_888->g_485
        (VECTOR(uint64_t, 2))(0x4BD077CC9B73A939L, 0UL), // p_888->g_491
        (VECTOR(uint64_t, 8))(18446744073709551607UL, (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 2UL), 2UL), 2UL, 18446744073709551607UL, 2UL), // p_888->g_510
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x638F1FAFL), 0x638F1FAFL), 0x638F1FAFL, (-1L), 0x638F1FAFL, (VECTOR(int32_t, 2))((-1L), 0x638F1FAFL), (VECTOR(int32_t, 2))((-1L), 0x638F1FAFL), (-1L), 0x638F1FAFL, (-1L), 0x638F1FAFL), // p_888->g_513
        (VECTOR(int8_t, 8))(0x70L, (VECTOR(int8_t, 4))(0x70L, (VECTOR(int8_t, 2))(0x70L, 0x20L), 0x20L), 0x20L, 0x70L, 0x20L), // p_888->g_520
        (VECTOR(int8_t, 8))((-7L), (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 0L), 0L), 0L, (-7L), 0L), // p_888->g_530
        0x67C82EFFL, // p_888->g_538
        (VECTOR(int16_t, 4))(0x3E2FL, (VECTOR(int16_t, 2))(0x3E2FL, 0x280BL), 0x280BL), // p_888->g_580
        (VECTOR(int32_t, 8))(0x3280529FL, (VECTOR(int32_t, 4))(0x3280529FL, (VECTOR(int32_t, 2))(0x3280529FL, 0x238C4D49L), 0x238C4D49L), 0x238C4D49L, 0x3280529FL, 0x238C4D49L), // p_888->g_593
        (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L), // p_888->g_614
        (VECTOR(int32_t, 2))(0L, 0x2AC758A1L), // p_888->g_629
        {{{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L}},{{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L}},{{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L}},{{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L}},{{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L},{3L,0x2F7759C1L,3L,3L}}}, // p_888->g_648
        (VECTOR(int32_t, 2))(1L, 0x2A7A45A6L), // p_888->g_662
        (void*)0, // p_888->g_677
        0UL, // p_888->g_682
        (VECTOR(uint16_t, 2))(0x0B00L, 0x6E26L), // p_888->g_722
        {{{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241}},{{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241}},{{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241}},{{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241}},{{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241}},{{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241}},{{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241},{(void*)0,&p_888->g_241,&p_888->g_241,(void*)0,&p_888->g_241,&p_888->g_241,&p_888->g_241}}}, // p_888->g_763
        (void*)0, // p_888->g_776
        0x50F0A4E3L, // p_888->g_801
        0L, // p_888->g_885
        &p_888->g_885, // p_888->g_884
        &p_888->g_884, // p_888->g_883
        &p_888->g_883, // p_888->g_882
        &p_888->g_882, // p_888->g_881
        {&p_888->g_881,&p_888->g_881,&p_888->g_881,&p_888->g_881,&p_888->g_881,&p_888->g_881,&p_888->g_881,&p_888->g_881,&p_888->g_881,&p_888->g_881}, // p_888->g_880
        &p_888->g_880[2], // p_888->g_879
        sequence_input[get_global_id(0)], // p_888->global_0_offset
        sequence_input[get_global_id(1)], // p_888->global_1_offset
        sequence_input[get_global_id(2)], // p_888->global_2_offset
        sequence_input[get_local_id(0)], // p_888->local_0_offset
        sequence_input[get_local_id(1)], // p_888->local_1_offset
        sequence_input[get_local_id(2)], // p_888->local_2_offset
        sequence_input[get_group_id(0)], // p_888->group_0_offset
        sequence_input[get_group_id(1)], // p_888->group_1_offset
        sequence_input[get_group_id(2)], // p_888->group_2_offset
    };
    c_889 = c_890;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_888);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_888->g_12.s0, "p_888->g_12.s0", print_hash_value);
    transparent_crc(p_888->g_12.s1, "p_888->g_12.s1", print_hash_value);
    transparent_crc(p_888->g_12.s2, "p_888->g_12.s2", print_hash_value);
    transparent_crc(p_888->g_12.s3, "p_888->g_12.s3", print_hash_value);
    transparent_crc(p_888->g_12.s4, "p_888->g_12.s4", print_hash_value);
    transparent_crc(p_888->g_12.s5, "p_888->g_12.s5", print_hash_value);
    transparent_crc(p_888->g_12.s6, "p_888->g_12.s6", print_hash_value);
    transparent_crc(p_888->g_12.s7, "p_888->g_12.s7", print_hash_value);
    transparent_crc(p_888->g_13, "p_888->g_13", print_hash_value);
    transparent_crc(p_888->g_19, "p_888->g_19", print_hash_value);
    transparent_crc(p_888->g_27.s0, "p_888->g_27.s0", print_hash_value);
    transparent_crc(p_888->g_27.s1, "p_888->g_27.s1", print_hash_value);
    transparent_crc(p_888->g_27.s2, "p_888->g_27.s2", print_hash_value);
    transparent_crc(p_888->g_27.s3, "p_888->g_27.s3", print_hash_value);
    transparent_crc(p_888->g_27.s4, "p_888->g_27.s4", print_hash_value);
    transparent_crc(p_888->g_27.s5, "p_888->g_27.s5", print_hash_value);
    transparent_crc(p_888->g_27.s6, "p_888->g_27.s6", print_hash_value);
    transparent_crc(p_888->g_27.s7, "p_888->g_27.s7", print_hash_value);
    transparent_crc(p_888->g_27.s8, "p_888->g_27.s8", print_hash_value);
    transparent_crc(p_888->g_27.s9, "p_888->g_27.s9", print_hash_value);
    transparent_crc(p_888->g_27.sa, "p_888->g_27.sa", print_hash_value);
    transparent_crc(p_888->g_27.sb, "p_888->g_27.sb", print_hash_value);
    transparent_crc(p_888->g_27.sc, "p_888->g_27.sc", print_hash_value);
    transparent_crc(p_888->g_27.sd, "p_888->g_27.sd", print_hash_value);
    transparent_crc(p_888->g_27.se, "p_888->g_27.se", print_hash_value);
    transparent_crc(p_888->g_27.sf, "p_888->g_27.sf", print_hash_value);
    transparent_crc(p_888->g_50.x, "p_888->g_50.x", print_hash_value);
    transparent_crc(p_888->g_50.y, "p_888->g_50.y", print_hash_value);
    transparent_crc(p_888->g_50.z, "p_888->g_50.z", print_hash_value);
    transparent_crc(p_888->g_50.w, "p_888->g_50.w", print_hash_value);
    transparent_crc(p_888->g_53, "p_888->g_53", print_hash_value);
    transparent_crc(p_888->g_57.x, "p_888->g_57.x", print_hash_value);
    transparent_crc(p_888->g_57.y, "p_888->g_57.y", print_hash_value);
    transparent_crc(p_888->g_57.z, "p_888->g_57.z", print_hash_value);
    transparent_crc(p_888->g_57.w, "p_888->g_57.w", print_hash_value);
    transparent_crc(p_888->g_85, "p_888->g_85", print_hash_value);
    transparent_crc(p_888->g_104.s0, "p_888->g_104.s0", print_hash_value);
    transparent_crc(p_888->g_104.s1, "p_888->g_104.s1", print_hash_value);
    transparent_crc(p_888->g_104.s2, "p_888->g_104.s2", print_hash_value);
    transparent_crc(p_888->g_104.s3, "p_888->g_104.s3", print_hash_value);
    transparent_crc(p_888->g_104.s4, "p_888->g_104.s4", print_hash_value);
    transparent_crc(p_888->g_104.s5, "p_888->g_104.s5", print_hash_value);
    transparent_crc(p_888->g_104.s6, "p_888->g_104.s6", print_hash_value);
    transparent_crc(p_888->g_104.s7, "p_888->g_104.s7", print_hash_value);
    transparent_crc(p_888->g_120.x, "p_888->g_120.x", print_hash_value);
    transparent_crc(p_888->g_120.y, "p_888->g_120.y", print_hash_value);
    transparent_crc(p_888->g_137.s0, "p_888->g_137.s0", print_hash_value);
    transparent_crc(p_888->g_137.s1, "p_888->g_137.s1", print_hash_value);
    transparent_crc(p_888->g_137.s2, "p_888->g_137.s2", print_hash_value);
    transparent_crc(p_888->g_137.s3, "p_888->g_137.s3", print_hash_value);
    transparent_crc(p_888->g_137.s4, "p_888->g_137.s4", print_hash_value);
    transparent_crc(p_888->g_137.s5, "p_888->g_137.s5", print_hash_value);
    transparent_crc(p_888->g_137.s6, "p_888->g_137.s6", print_hash_value);
    transparent_crc(p_888->g_137.s7, "p_888->g_137.s7", print_hash_value);
    transparent_crc(p_888->g_138.s0, "p_888->g_138.s0", print_hash_value);
    transparent_crc(p_888->g_138.s1, "p_888->g_138.s1", print_hash_value);
    transparent_crc(p_888->g_138.s2, "p_888->g_138.s2", print_hash_value);
    transparent_crc(p_888->g_138.s3, "p_888->g_138.s3", print_hash_value);
    transparent_crc(p_888->g_138.s4, "p_888->g_138.s4", print_hash_value);
    transparent_crc(p_888->g_138.s5, "p_888->g_138.s5", print_hash_value);
    transparent_crc(p_888->g_138.s6, "p_888->g_138.s6", print_hash_value);
    transparent_crc(p_888->g_138.s7, "p_888->g_138.s7", print_hash_value);
    transparent_crc(p_888->g_138.s8, "p_888->g_138.s8", print_hash_value);
    transparent_crc(p_888->g_138.s9, "p_888->g_138.s9", print_hash_value);
    transparent_crc(p_888->g_138.sa, "p_888->g_138.sa", print_hash_value);
    transparent_crc(p_888->g_138.sb, "p_888->g_138.sb", print_hash_value);
    transparent_crc(p_888->g_138.sc, "p_888->g_138.sc", print_hash_value);
    transparent_crc(p_888->g_138.sd, "p_888->g_138.sd", print_hash_value);
    transparent_crc(p_888->g_138.se, "p_888->g_138.se", print_hash_value);
    transparent_crc(p_888->g_138.sf, "p_888->g_138.sf", print_hash_value);
    transparent_crc(p_888->g_150.s0, "p_888->g_150.s0", print_hash_value);
    transparent_crc(p_888->g_150.s1, "p_888->g_150.s1", print_hash_value);
    transparent_crc(p_888->g_150.s2, "p_888->g_150.s2", print_hash_value);
    transparent_crc(p_888->g_150.s3, "p_888->g_150.s3", print_hash_value);
    transparent_crc(p_888->g_150.s4, "p_888->g_150.s4", print_hash_value);
    transparent_crc(p_888->g_150.s5, "p_888->g_150.s5", print_hash_value);
    transparent_crc(p_888->g_150.s6, "p_888->g_150.s6", print_hash_value);
    transparent_crc(p_888->g_150.s7, "p_888->g_150.s7", print_hash_value);
    transparent_crc(p_888->g_152.s0, "p_888->g_152.s0", print_hash_value);
    transparent_crc(p_888->g_152.s1, "p_888->g_152.s1", print_hash_value);
    transparent_crc(p_888->g_152.s2, "p_888->g_152.s2", print_hash_value);
    transparent_crc(p_888->g_152.s3, "p_888->g_152.s3", print_hash_value);
    transparent_crc(p_888->g_152.s4, "p_888->g_152.s4", print_hash_value);
    transparent_crc(p_888->g_152.s5, "p_888->g_152.s5", print_hash_value);
    transparent_crc(p_888->g_152.s6, "p_888->g_152.s6", print_hash_value);
    transparent_crc(p_888->g_152.s7, "p_888->g_152.s7", print_hash_value);
    transparent_crc(p_888->g_177, "p_888->g_177", print_hash_value);
    transparent_crc(p_888->g_242, "p_888->g_242", print_hash_value);
    transparent_crc(p_888->g_262.s0, "p_888->g_262.s0", print_hash_value);
    transparent_crc(p_888->g_262.s1, "p_888->g_262.s1", print_hash_value);
    transparent_crc(p_888->g_262.s2, "p_888->g_262.s2", print_hash_value);
    transparent_crc(p_888->g_262.s3, "p_888->g_262.s3", print_hash_value);
    transparent_crc(p_888->g_262.s4, "p_888->g_262.s4", print_hash_value);
    transparent_crc(p_888->g_262.s5, "p_888->g_262.s5", print_hash_value);
    transparent_crc(p_888->g_262.s6, "p_888->g_262.s6", print_hash_value);
    transparent_crc(p_888->g_262.s7, "p_888->g_262.s7", print_hash_value);
    transparent_crc(p_888->g_320, "p_888->g_320", print_hash_value);
    transparent_crc(p_888->g_351, "p_888->g_351", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_888->g_352[i], "p_888->g_352[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_888->g_353[i][j], "p_888->g_353[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_888->g_354.s0, "p_888->g_354.s0", print_hash_value);
    transparent_crc(p_888->g_354.s1, "p_888->g_354.s1", print_hash_value);
    transparent_crc(p_888->g_354.s2, "p_888->g_354.s2", print_hash_value);
    transparent_crc(p_888->g_354.s3, "p_888->g_354.s3", print_hash_value);
    transparent_crc(p_888->g_354.s4, "p_888->g_354.s4", print_hash_value);
    transparent_crc(p_888->g_354.s5, "p_888->g_354.s5", print_hash_value);
    transparent_crc(p_888->g_354.s6, "p_888->g_354.s6", print_hash_value);
    transparent_crc(p_888->g_354.s7, "p_888->g_354.s7", print_hash_value);
    transparent_crc(p_888->g_354.s8, "p_888->g_354.s8", print_hash_value);
    transparent_crc(p_888->g_354.s9, "p_888->g_354.s9", print_hash_value);
    transparent_crc(p_888->g_354.sa, "p_888->g_354.sa", print_hash_value);
    transparent_crc(p_888->g_354.sb, "p_888->g_354.sb", print_hash_value);
    transparent_crc(p_888->g_354.sc, "p_888->g_354.sc", print_hash_value);
    transparent_crc(p_888->g_354.sd, "p_888->g_354.sd", print_hash_value);
    transparent_crc(p_888->g_354.se, "p_888->g_354.se", print_hash_value);
    transparent_crc(p_888->g_354.sf, "p_888->g_354.sf", print_hash_value);
    transparent_crc(p_888->g_383.x, "p_888->g_383.x", print_hash_value);
    transparent_crc(p_888->g_383.y, "p_888->g_383.y", print_hash_value);
    transparent_crc(p_888->g_383.z, "p_888->g_383.z", print_hash_value);
    transparent_crc(p_888->g_383.w, "p_888->g_383.w", print_hash_value);
    transparent_crc(p_888->g_403.s0, "p_888->g_403.s0", print_hash_value);
    transparent_crc(p_888->g_403.s1, "p_888->g_403.s1", print_hash_value);
    transparent_crc(p_888->g_403.s2, "p_888->g_403.s2", print_hash_value);
    transparent_crc(p_888->g_403.s3, "p_888->g_403.s3", print_hash_value);
    transparent_crc(p_888->g_403.s4, "p_888->g_403.s4", print_hash_value);
    transparent_crc(p_888->g_403.s5, "p_888->g_403.s5", print_hash_value);
    transparent_crc(p_888->g_403.s6, "p_888->g_403.s6", print_hash_value);
    transparent_crc(p_888->g_403.s7, "p_888->g_403.s7", print_hash_value);
    transparent_crc(p_888->g_403.s8, "p_888->g_403.s8", print_hash_value);
    transparent_crc(p_888->g_403.s9, "p_888->g_403.s9", print_hash_value);
    transparent_crc(p_888->g_403.sa, "p_888->g_403.sa", print_hash_value);
    transparent_crc(p_888->g_403.sb, "p_888->g_403.sb", print_hash_value);
    transparent_crc(p_888->g_403.sc, "p_888->g_403.sc", print_hash_value);
    transparent_crc(p_888->g_403.sd, "p_888->g_403.sd", print_hash_value);
    transparent_crc(p_888->g_403.se, "p_888->g_403.se", print_hash_value);
    transparent_crc(p_888->g_403.sf, "p_888->g_403.sf", print_hash_value);
    transparent_crc(p_888->g_417, "p_888->g_417", print_hash_value);
    transparent_crc(p_888->g_422.x, "p_888->g_422.x", print_hash_value);
    transparent_crc(p_888->g_422.y, "p_888->g_422.y", print_hash_value);
    transparent_crc(p_888->g_422.z, "p_888->g_422.z", print_hash_value);
    transparent_crc(p_888->g_422.w, "p_888->g_422.w", print_hash_value);
    transparent_crc(p_888->g_429.s0, "p_888->g_429.s0", print_hash_value);
    transparent_crc(p_888->g_429.s1, "p_888->g_429.s1", print_hash_value);
    transparent_crc(p_888->g_429.s2, "p_888->g_429.s2", print_hash_value);
    transparent_crc(p_888->g_429.s3, "p_888->g_429.s3", print_hash_value);
    transparent_crc(p_888->g_429.s4, "p_888->g_429.s4", print_hash_value);
    transparent_crc(p_888->g_429.s5, "p_888->g_429.s5", print_hash_value);
    transparent_crc(p_888->g_429.s6, "p_888->g_429.s6", print_hash_value);
    transparent_crc(p_888->g_429.s7, "p_888->g_429.s7", print_hash_value);
    transparent_crc(p_888->g_429.s8, "p_888->g_429.s8", print_hash_value);
    transparent_crc(p_888->g_429.s9, "p_888->g_429.s9", print_hash_value);
    transparent_crc(p_888->g_429.sa, "p_888->g_429.sa", print_hash_value);
    transparent_crc(p_888->g_429.sb, "p_888->g_429.sb", print_hash_value);
    transparent_crc(p_888->g_429.sc, "p_888->g_429.sc", print_hash_value);
    transparent_crc(p_888->g_429.sd, "p_888->g_429.sd", print_hash_value);
    transparent_crc(p_888->g_429.se, "p_888->g_429.se", print_hash_value);
    transparent_crc(p_888->g_429.sf, "p_888->g_429.sf", print_hash_value);
    transparent_crc(p_888->g_431.s0, "p_888->g_431.s0", print_hash_value);
    transparent_crc(p_888->g_431.s1, "p_888->g_431.s1", print_hash_value);
    transparent_crc(p_888->g_431.s2, "p_888->g_431.s2", print_hash_value);
    transparent_crc(p_888->g_431.s3, "p_888->g_431.s3", print_hash_value);
    transparent_crc(p_888->g_431.s4, "p_888->g_431.s4", print_hash_value);
    transparent_crc(p_888->g_431.s5, "p_888->g_431.s5", print_hash_value);
    transparent_crc(p_888->g_431.s6, "p_888->g_431.s6", print_hash_value);
    transparent_crc(p_888->g_431.s7, "p_888->g_431.s7", print_hash_value);
    transparent_crc(p_888->g_438.x, "p_888->g_438.x", print_hash_value);
    transparent_crc(p_888->g_438.y, "p_888->g_438.y", print_hash_value);
    transparent_crc(p_888->g_438.z, "p_888->g_438.z", print_hash_value);
    transparent_crc(p_888->g_438.w, "p_888->g_438.w", print_hash_value);
    transparent_crc(p_888->g_439.x, "p_888->g_439.x", print_hash_value);
    transparent_crc(p_888->g_439.y, "p_888->g_439.y", print_hash_value);
    transparent_crc(p_888->g_439.z, "p_888->g_439.z", print_hash_value);
    transparent_crc(p_888->g_439.w, "p_888->g_439.w", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_888->g_468[i], "p_888->g_468[i]", print_hash_value);

    }
    transparent_crc(p_888->g_485.s0, "p_888->g_485.s0", print_hash_value);
    transparent_crc(p_888->g_485.s1, "p_888->g_485.s1", print_hash_value);
    transparent_crc(p_888->g_485.s2, "p_888->g_485.s2", print_hash_value);
    transparent_crc(p_888->g_485.s3, "p_888->g_485.s3", print_hash_value);
    transparent_crc(p_888->g_485.s4, "p_888->g_485.s4", print_hash_value);
    transparent_crc(p_888->g_485.s5, "p_888->g_485.s5", print_hash_value);
    transparent_crc(p_888->g_485.s6, "p_888->g_485.s6", print_hash_value);
    transparent_crc(p_888->g_485.s7, "p_888->g_485.s7", print_hash_value);
    transparent_crc(p_888->g_491.x, "p_888->g_491.x", print_hash_value);
    transparent_crc(p_888->g_491.y, "p_888->g_491.y", print_hash_value);
    transparent_crc(p_888->g_510.s0, "p_888->g_510.s0", print_hash_value);
    transparent_crc(p_888->g_510.s1, "p_888->g_510.s1", print_hash_value);
    transparent_crc(p_888->g_510.s2, "p_888->g_510.s2", print_hash_value);
    transparent_crc(p_888->g_510.s3, "p_888->g_510.s3", print_hash_value);
    transparent_crc(p_888->g_510.s4, "p_888->g_510.s4", print_hash_value);
    transparent_crc(p_888->g_510.s5, "p_888->g_510.s5", print_hash_value);
    transparent_crc(p_888->g_510.s6, "p_888->g_510.s6", print_hash_value);
    transparent_crc(p_888->g_510.s7, "p_888->g_510.s7", print_hash_value);
    transparent_crc(p_888->g_513.s0, "p_888->g_513.s0", print_hash_value);
    transparent_crc(p_888->g_513.s1, "p_888->g_513.s1", print_hash_value);
    transparent_crc(p_888->g_513.s2, "p_888->g_513.s2", print_hash_value);
    transparent_crc(p_888->g_513.s3, "p_888->g_513.s3", print_hash_value);
    transparent_crc(p_888->g_513.s4, "p_888->g_513.s4", print_hash_value);
    transparent_crc(p_888->g_513.s5, "p_888->g_513.s5", print_hash_value);
    transparent_crc(p_888->g_513.s6, "p_888->g_513.s6", print_hash_value);
    transparent_crc(p_888->g_513.s7, "p_888->g_513.s7", print_hash_value);
    transparent_crc(p_888->g_513.s8, "p_888->g_513.s8", print_hash_value);
    transparent_crc(p_888->g_513.s9, "p_888->g_513.s9", print_hash_value);
    transparent_crc(p_888->g_513.sa, "p_888->g_513.sa", print_hash_value);
    transparent_crc(p_888->g_513.sb, "p_888->g_513.sb", print_hash_value);
    transparent_crc(p_888->g_513.sc, "p_888->g_513.sc", print_hash_value);
    transparent_crc(p_888->g_513.sd, "p_888->g_513.sd", print_hash_value);
    transparent_crc(p_888->g_513.se, "p_888->g_513.se", print_hash_value);
    transparent_crc(p_888->g_513.sf, "p_888->g_513.sf", print_hash_value);
    transparent_crc(p_888->g_520.s0, "p_888->g_520.s0", print_hash_value);
    transparent_crc(p_888->g_520.s1, "p_888->g_520.s1", print_hash_value);
    transparent_crc(p_888->g_520.s2, "p_888->g_520.s2", print_hash_value);
    transparent_crc(p_888->g_520.s3, "p_888->g_520.s3", print_hash_value);
    transparent_crc(p_888->g_520.s4, "p_888->g_520.s4", print_hash_value);
    transparent_crc(p_888->g_520.s5, "p_888->g_520.s5", print_hash_value);
    transparent_crc(p_888->g_520.s6, "p_888->g_520.s6", print_hash_value);
    transparent_crc(p_888->g_520.s7, "p_888->g_520.s7", print_hash_value);
    transparent_crc(p_888->g_530.s0, "p_888->g_530.s0", print_hash_value);
    transparent_crc(p_888->g_530.s1, "p_888->g_530.s1", print_hash_value);
    transparent_crc(p_888->g_530.s2, "p_888->g_530.s2", print_hash_value);
    transparent_crc(p_888->g_530.s3, "p_888->g_530.s3", print_hash_value);
    transparent_crc(p_888->g_530.s4, "p_888->g_530.s4", print_hash_value);
    transparent_crc(p_888->g_530.s5, "p_888->g_530.s5", print_hash_value);
    transparent_crc(p_888->g_530.s6, "p_888->g_530.s6", print_hash_value);
    transparent_crc(p_888->g_530.s7, "p_888->g_530.s7", print_hash_value);
    transparent_crc(p_888->g_538, "p_888->g_538", print_hash_value);
    transparent_crc(p_888->g_580.x, "p_888->g_580.x", print_hash_value);
    transparent_crc(p_888->g_580.y, "p_888->g_580.y", print_hash_value);
    transparent_crc(p_888->g_580.z, "p_888->g_580.z", print_hash_value);
    transparent_crc(p_888->g_580.w, "p_888->g_580.w", print_hash_value);
    transparent_crc(p_888->g_593.s0, "p_888->g_593.s0", print_hash_value);
    transparent_crc(p_888->g_593.s1, "p_888->g_593.s1", print_hash_value);
    transparent_crc(p_888->g_593.s2, "p_888->g_593.s2", print_hash_value);
    transparent_crc(p_888->g_593.s3, "p_888->g_593.s3", print_hash_value);
    transparent_crc(p_888->g_593.s4, "p_888->g_593.s4", print_hash_value);
    transparent_crc(p_888->g_593.s5, "p_888->g_593.s5", print_hash_value);
    transparent_crc(p_888->g_593.s6, "p_888->g_593.s6", print_hash_value);
    transparent_crc(p_888->g_593.s7, "p_888->g_593.s7", print_hash_value);
    transparent_crc(p_888->g_614.s0, "p_888->g_614.s0", print_hash_value);
    transparent_crc(p_888->g_614.s1, "p_888->g_614.s1", print_hash_value);
    transparent_crc(p_888->g_614.s2, "p_888->g_614.s2", print_hash_value);
    transparent_crc(p_888->g_614.s3, "p_888->g_614.s3", print_hash_value);
    transparent_crc(p_888->g_614.s4, "p_888->g_614.s4", print_hash_value);
    transparent_crc(p_888->g_614.s5, "p_888->g_614.s5", print_hash_value);
    transparent_crc(p_888->g_614.s6, "p_888->g_614.s6", print_hash_value);
    transparent_crc(p_888->g_614.s7, "p_888->g_614.s7", print_hash_value);
    transparent_crc(p_888->g_629.x, "p_888->g_629.x", print_hash_value);
    transparent_crc(p_888->g_629.y, "p_888->g_629.y", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_888->g_648[i][j][k], "p_888->g_648[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_888->g_662.x, "p_888->g_662.x", print_hash_value);
    transparent_crc(p_888->g_662.y, "p_888->g_662.y", print_hash_value);
    transparent_crc(p_888->g_682, "p_888->g_682", print_hash_value);
    transparent_crc(p_888->g_722.x, "p_888->g_722.x", print_hash_value);
    transparent_crc(p_888->g_722.y, "p_888->g_722.y", print_hash_value);
    transparent_crc(p_888->g_801, "p_888->g_801", print_hash_value);
    transparent_crc(p_888->g_885, "p_888->g_885", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
