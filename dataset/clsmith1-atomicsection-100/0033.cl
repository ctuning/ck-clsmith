// --atomics 14 ---fake_divergence -g 81,6,10 -l 1,3,5
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


// Seed: 33

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint32_t  f0;
   uint16_t  f1;
   int32_t  f2;
   int64_t  f3;
   uint64_t  f4;
   uint32_t  f5;
   volatile uint8_t  f6;
   uint64_t  f7;
   int64_t  f8;
   int64_t  f9;
};

struct S1 {
   int32_t  f0;
   volatile uint32_t  f1;
   int32_t  f2;
   uint8_t  f3;
   uint64_t  f4;
   uint32_t  f5;
   uint64_t  f6;
   volatile int8_t  f7;
};

struct S2 {
   uint64_t  f0;
   int8_t  f1;
   int64_t  f2;
   volatile int32_t  f3;
   uint8_t  f4;
   struct S0  f5;
};

struct S3 {
    uint64_t g_7;
    int32_t g_17;
    int32_t g_34;
    volatile int8_t g_43;
    uint64_t g_47;
    volatile int32_t g_54;
    volatile uint64_t g_55[8];
    int32_t *g_70;
    int32_t **g_69;
    struct S1 g_105;
    struct S1 g_109;
    struct S1 *g_125;
    int32_t g_128;
    struct S0 g_191;
    uint16_t g_194;
    volatile uint32_t g_202[8];
    struct S1 g_207;
    int8_t g_211[8][10];
    volatile uint16_t g_220;
    uint32_t g_222[5][4];
    struct S1 g_223[7][1][7];
    volatile int64_t g_227;
    volatile int64_t *g_226[6][8];
    int32_t *g_249;
    int64_t *g_288;
    volatile struct S1 g_293[9];
    volatile struct S1 g_306[1];
    volatile uint32_t g_307;
    volatile struct S1 g_321;
    volatile struct S1 g_338;
    struct S2 g_344;
    volatile struct S0 g_379;
    struct S2 g_409;
    int32_t *g_412;
    int32_t **g_411;
    uint32_t g_423;
    int32_t g_427;
    volatile struct S0 g_428[2][7];
    int32_t *** volatile g_432;
    struct S0 g_436;
    struct S2 * volatile g_449;
    volatile int64_t g_499;
    int16_t g_501;
    int16_t g_505;
    uint16_t g_510;
    uint32_t g_542;
    volatile uint16_t g_604[4][2];
    int16_t *g_606;
    uint16_t g_664;
    uint32_t g_665;
    struct S2 g_690;
    struct S2 g_694;
    int8_t g_699;
    uint16_t *g_714;
    uint16_t g_734[1][5][1];
    volatile int64_t * volatile ** volatile g_754;
    volatile int64_t * volatile ** volatile * volatile g_753;
    struct S2 * volatile g_762;
    struct S2 *g_792;
    struct S2 ** volatile g_791;
    int32_t ***g_821;
    volatile uint8_t *g_834[1];
    struct S2 g_847;
    volatile struct S1 g_859;
    uint8_t g_885;
    volatile struct S1 * volatile g_888;
    int32_t * volatile g_905[1][4][4];
    int32_t *g_922[2][3][4];
    volatile uint8_t g_1000;
    int32_t * volatile * volatile ***g_1001;
    volatile uint64_t g_1027;
    struct S1 g_1071[5];
    struct S0 g_1153;
    int64_t **g_1183;
    int64_t ***g_1182[10];
    int64_t ****g_1181;
    uint32_t * volatile g_1196;
    uint32_t * volatile * volatile g_1195;
    volatile struct S0 g_1221;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
int16_t  func_1(struct S3 * p_1231);
uint8_t  func_5(int32_t  p_6, struct S3 * p_1231);
int32_t * func_8(int32_t * p_9, int32_t * p_10, int32_t * p_11, int32_t * p_12, struct S3 * p_1231);
int32_t * func_13(int32_t * p_14, int8_t  p_15, struct S3 * p_1231);
int32_t  func_19(uint16_t  p_20, int32_t * p_21, int32_t * p_22, int8_t  p_23, uint16_t  p_24, struct S3 * p_1231);
int32_t * func_58(uint8_t  p_59, uint64_t  p_60, int32_t ** p_61, int32_t  p_62, int64_t  p_63, struct S3 * p_1231);
struct S2  func_64(int32_t  p_65, int32_t * p_66, struct S3 * p_1231);
struct S1  func_67(int32_t ** p_68, struct S3 * p_1231);
uint16_t  func_82(int64_t  p_83, uint32_t  p_84, int32_t * p_85, int32_t ** p_86, int32_t * p_87, struct S3 * p_1231);
uint64_t  func_90(int32_t  p_91, uint8_t  p_92, struct S3 * p_1231);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1231->g_7 p_1231->g_17 p_1231->g_249 p_1231->g_69 p_1231->g_191.f8 p_1231->g_105.f3 p_1231->g_344.f5.f0 p_1231->g_105.f2 p_1231->g_211 p_1231->g_411 p_1231->g_109.f6 p_1231->g_690 p_1231->g_501 p_1231->g_699 p_1231->g_694.f2 p_1231->g_428.f3 p_1231->g_288 p_1231->g_191.f9 p_1231->g_409.f5.f7 p_1231->g_109.f3 p_1231->g_412 p_1231->g_70 p_1231->g_694.f5.f7 p_1231->g_734 p_1231->g_694.f4 p_1231->g_714 p_1231->g_510 p_1231->g_321.f0 p_1231->g_436 p_1231->g_753 p_1231->g_105.f5 p_1231->g_207.f5 p_1231->g_222 p_1231->g_344.f1 p_1231->g_792 p_1231->g_191.f7 p_1231->g_223.f2 p_1231->g_694.f5.f6 p_1231->g_105.f4 p_1231->g_207.f2 p_1231->g_847.f5.f8 p_1231->g_428.f2 p_1231->g_128 p_1231->g_109.f0 p_1231->g_1000 p_1231->g_847.f5.f4 p_1231->g_344.f5.f4 p_1231->g_191.f1 p_1231->g_1001 p_1231->g_821 p_1231->g_54 p_1231->g_34 p_1231->g_47 p_1231->g_109.f5 p_1231->g_55 p_1231->g_109.f2 p_1231->g_191 p_1231->g_194 p_1231->g_202 p_1231->g_207 p_1231->g_220 p_1231->g_223 p_1231->g_344.f5.f9 p_1231->g_791 p_1231->g_321.f4 p_1231->g_1027 p_1231->g_409.f5.f6 p_1231->g_1071 p_1231->g_321.f7
 * writes: p_1231->g_17 p_1231->g_70 p_1231->g_409.f4 p_1231->g_412 p_1231->g_105.f2 p_1231->g_714 p_1231->g_409.f5.f7 p_1231->g_109.f3 p_1231->g_690.f2 p_1231->g_694.f5.f7 p_1231->g_694.f4 p_1231->g_211 p_1231->g_690.f5.f1 p_1231->g_344.f1 p_1231->g_690 p_1231->g_249 p_1231->g_191.f7 p_1231->g_510 p_1231->g_191.f9 p_1231->g_664 p_1231->g_344.f4 p_1231->g_699 p_1231->g_694.f1 p_1231->g_436.f4 p_1231->g_34 p_1231->g_47 p_1231->g_105.f4 p_1231->g_109.f6 p_1231->g_55 p_1231->g_69 p_1231->g_194 p_1231->g_54 p_1231->g_202 p_1231->g_109.f5 p_1231->g_222 p_1231->g_125 p_1231->g_847.f1 p_1231->g_436.f1 p_1231->g_1027 p_1231->g_207
 */
int16_t  func_1(struct S3 * p_1231)
{ /* block id: 4 */
    uint16_t l_2 = 65529UL;
    uint8_t *l_735 = &p_1231->g_694.f4;
    int32_t l_738 = (-1L);
    uint32_t l_803 = 1UL;
    struct S2 **l_806 = &p_1231->g_792;
    int32_t ***l_819 = &p_1231->g_411;
    int64_t l_823 = 0x5DD1F91CDAAE0267L;
    uint64_t l_824[2];
    int32_t l_852 = 0x5407A355L;
    uint32_t l_907 = 1UL;
    int32_t *l_925 = (void*)0;
    int32_t l_939 = 2L;
    int32_t ****l_961[9][1];
    int32_t *****l_960 = &l_961[6][0];
    uint32_t l_966 = 0x197DEFCDL;
    struct S1 *l_1016 = &p_1231->g_207;
    int16_t l_1026 = (-6L);
    uint32_t *l_1122 = (void*)0;
    uint32_t **l_1121[1];
    int32_t l_1137 = 0x5006E8D3L;
    int32_t l_1172 = 0x34864616L;
    int64_t **l_1178 = &p_1231->g_288;
    int64_t ***l_1177 = &l_1178;
    uint32_t l_1226 = 9UL;
    uint16_t l_1229 = 0x0087L;
    int32_t l_1230 = 7L;
    int i, j;
    for (i = 0; i < 2; i++)
        l_824[i] = 0xF362E2682F94C05FL;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 1; j++)
            l_961[i][j] = &p_1231->g_821;
    }
    for (i = 0; i < 1; i++)
        l_1121[i] = &l_1122;
    if (((((((l_2 != l_2) <= l_2) < (safe_rshift_func_uint8_t_u_u(func_5(p_1231->g_7, p_1231), (l_738 = (++(*l_735)))))) , (l_2 <= (safe_mul_func_uint16_t_u_u((p_1231->g_344.f5.f0 , (*p_1231->g_714)), (-8L))))) , l_2) | l_2))
    { /* block id: 362 */
        int16_t l_743 = 0x13A6L;
        int8_t *l_744 = &p_1231->g_211[0][7];
        uint8_t l_757 = 0x97L;
        l_738 = (safe_lshift_func_uint8_t_u_s(l_743, ((*l_744) ^= p_1231->g_321.f0)));
        (*p_1231->g_249) = (((FAKE_DIVERGE(p_1231->group_1_offset, get_group_id(1), 10) ^ FAKE_DIVERGE(p_1231->group_0_offset, get_group_id(0), 10)) | (p_1231->g_436 , (((safe_mul_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u(((GROUP_DIVERGE(0, 1) > 1UL) , (safe_mod_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(((void*)0 == p_1231->g_753), 12)), ((p_1231->g_105.f5 <= ((p_1231->g_207.f5 | 1UL) != (*p_1231->g_288))) && (safe_lshift_func_uint16_t_u_u(((((*l_735) |= (p_1231->g_222[2][2] || 0x60L)) & 0x7CL) | l_743), (*p_1231->g_714))))))), l_743)), 0x973EL)) & 0x56FCB25377B18F23L) <= l_2))) > l_757);
        (*p_1231->g_249) = l_743;
    }
    else
    { /* block id: 368 */
        uint8_t l_758 = 255UL;
        int32_t **l_804 = &p_1231->g_249;
        uint32_t l_840 = 0xB73B5682L;
        int8_t l_844 = 0x53L;
        int32_t l_870[3][5] = {{0x14080C2FL,0x18F249BDL,0x14080C2FL,0x14080C2FL,0x18F249BDL},{0x14080C2FL,0x18F249BDL,0x14080C2FL,0x14080C2FL,0x18F249BDL},{0x14080C2FL,0x18F249BDL,0x14080C2FL,0x14080C2FL,0x18F249BDL}};
        int32_t l_874 = (-1L);
        int16_t l_889[4][1][5] = {{{0x5E1DL,0x060DL,0x0295L,0x1E2BL,0x060DL}},{{0x5E1DL,0x060DL,0x0295L,0x1E2BL,0x060DL}},{{0x5E1DL,0x060DL,0x0295L,0x1E2BL,0x060DL}},{{0x5E1DL,0x060DL,0x0295L,0x1E2BL,0x060DL}}};
        int8_t l_895 = 0x7BL;
        int64_t l_898 = (-4L);
        int32_t ****l_903 = &l_819;
        int32_t *l_923 = &l_738;
        int32_t l_940 = (-3L);
        uint16_t l_941 = 65535UL;
        uint32_t **l_949 = (void*)0;
        int i, j, k;
        (*p_1231->g_249) = l_758;
        for (p_1231->g_690.f5.f1 = 0; (p_1231->g_690.f5.f1 < 49); p_1231->g_690.f5.f1++)
        { /* block id: 372 */
            uint16_t l_793 = 65535UL;
            int32_t ***l_822 = (void*)0;
            int64_t *l_869 = &p_1231->g_694.f5.f9;
            uint32_t l_873[7][1][3] = {{{0xD554308BL,0xD554308BL,0xD554308BL}},{{0xD554308BL,0xD554308BL,0xD554308BL}},{{0xD554308BL,0xD554308BL,0xD554308BL}},{{0xD554308BL,0xD554308BL,0xD554308BL}},{{0xD554308BL,0xD554308BL,0xD554308BL}},{{0xD554308BL,0xD554308BL,0xD554308BL}},{{0xD554308BL,0xD554308BL,0xD554308BL}}};
            int32_t l_880[3];
            int8_t *l_910[9][7] = {{(void*)0,&l_844,(void*)0,(void*)0,&l_844,(void*)0,(void*)0},{(void*)0,&l_844,(void*)0,(void*)0,&l_844,(void*)0,(void*)0},{(void*)0,&l_844,(void*)0,(void*)0,&l_844,(void*)0,(void*)0},{(void*)0,&l_844,(void*)0,(void*)0,&l_844,(void*)0,(void*)0},{(void*)0,&l_844,(void*)0,(void*)0,&l_844,(void*)0,(void*)0},{(void*)0,&l_844,(void*)0,(void*)0,&l_844,(void*)0,(void*)0},{(void*)0,&l_844,(void*)0,(void*)0,&l_844,(void*)0,(void*)0},{(void*)0,&l_844,(void*)0,(void*)0,&l_844,(void*)0,(void*)0},{(void*)0,&l_844,(void*)0,(void*)0,&l_844,(void*)0,(void*)0}};
            int8_t l_938 = (-1L);
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_880[i] = 0L;
            (1 + 1);
        }
        for (p_1231->g_344.f1 = 7; (p_1231->g_344.f1 >= 0); p_1231->g_344.f1 -= 1)
        { /* block id: 491 */
            uint64_t l_948 = 1UL;
            int i;
            (**l_806) = (**l_806);
            (*l_804) = (*p_1231->g_69);
        }
    }
    for (p_1231->g_191.f7 = (-2); (p_1231->g_191.f7 < 34); ++p_1231->g_191.f7)
    { /* block id: 498 */
        uint32_t l_952 = 0xB5A247DFL;
        uint8_t l_957 = 4UL;
        uint16_t *l_962[2];
        int32_t l_963 = (-1L);
        uint32_t *l_1006[3][1];
        int32_t l_1025 = 0x6D8126A2L;
        int32_t l_1145 = 0x186DF3BDL;
        int32_t l_1147[9];
        uint32_t l_1159[10];
        int8_t l_1188 = 0x5EL;
        int i, j;
        for (i = 0; i < 2; i++)
            l_962[i] = &p_1231->g_664;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
                l_1006[i][j] = &p_1231->g_222[0][1];
        }
        for (i = 0; i < 9; i++)
            l_1147[i] = 0x2EDDC444L;
        for (i = 0; i < 10; i++)
            l_1159[i] = 4294967295UL;
        if ((((+l_952) , p_1231->g_223[1][0][5].f2) & (p_1231->g_694.f5.f6 , (((safe_rshift_func_uint16_t_u_u((p_1231->g_664 = (safe_mul_func_uint64_t_u_u(p_1231->g_105.f4, ((*p_1231->g_288) = (l_957 < (0x45CA5B0BL < ((safe_sub_func_uint16_t_u_u((l_963 |= (FAKE_DIVERGE(p_1231->group_1_offset, get_group_id(1), 10) & ((*p_1231->g_714) |= ((void*)0 != l_960)))), (((safe_div_func_uint64_t_u_u(0x4E9B4D757AB385D3L, l_957)) < 65526UL) == GROUP_DIVERGE(2, 1)))) , l_966))))))), 9)) , p_1231->g_207.f2) | 0x0BL))))
        { /* block id: 503 */
            uint32_t l_977 = 4294967294UL;
            int32_t **l_981 = (void*)0;
            int32_t l_994 = (-7L);
            int8_t l_999 = (-3L);
            for (p_1231->g_344.f4 = 10; (p_1231->g_344.f4 > 38); ++p_1231->g_344.f4)
            { /* block id: 506 */
                int8_t *l_975 = &p_1231->g_699;
                int8_t *l_976 = &p_1231->g_694.f1;
                uint64_t *l_978[9][1] = {{&p_1231->g_344.f5.f4},{&p_1231->g_344.f5.f4},{&p_1231->g_344.f5.f4},{&p_1231->g_344.f5.f4},{&p_1231->g_344.f5.f4},{&p_1231->g_344.f5.f4},{&p_1231->g_344.f5.f4},{&p_1231->g_344.f5.f4},{&p_1231->g_344.f5.f4}};
                int i, j;
                (**l_819) = ((!((((p_1231->g_436.f4 = (safe_div_func_uint16_t_u_u(((*p_1231->g_714) <= (0x2FL >= (safe_sub_func_uint64_t_u_u(p_1231->g_847.f5.f8, ((l_952 >= ((*l_976) = (safe_sub_func_uint16_t_u_u((((p_1231->g_428[0][3].f2 && ((-9L) || (GROUP_DIVERGE(0, 1) || p_1231->g_128))) && ((*l_975) = 0x52L)) && 0x6F310635L), 0x3960L)))) , l_977))))), 3L))) , (void*)0) != (void*)0) && 0L)) , &l_963);
            }
            if ((safe_mul_func_uint8_t_u_u(((l_981 != (void*)0) ^ (safe_mul_func_uint8_t_u_u((p_1231->g_109.f0 , ((safe_div_func_int8_t_s_s((safe_mod_func_int8_t_s_s((safe_div_func_uint16_t_u_u((*p_1231->g_714), (((((((((**l_806) , (safe_rshift_func_int16_t_s_u((safe_mod_func_int16_t_s_s((l_994 , (!l_957)), (~(*p_1231->g_714)))), (((safe_div_func_uint64_t_u_u((((((safe_mod_func_int16_t_s_s(0x2F3FL, 0x18ECL)) , l_999) , l_957) < l_952) , 0x6B47856F60CBE41FL), p_1231->g_1000)) == p_1231->g_699) > (*p_1231->g_714))))) < p_1231->g_847.f5.f4) & p_1231->g_734[0][1][0]) >= 0L) > 0xE45A6B73L) == p_1231->g_694.f2) < l_952) || p_1231->g_436.f5))), p_1231->g_344.f5.f4)), p_1231->g_690.f5.f2)) | p_1231->g_191.f1)), p_1231->g_436.f3))), FAKE_DIVERGE(p_1231->local_1_offset, get_local_id(1), 10))))
            { /* block id: 512 */
                if (l_999)
                    break;
            }
            else
            { /* block id: 514 */
                int32_t l_1009 = (-4L);
                int8_t l_1011 = (-1L);
                uint16_t l_1013 = 0x7F55L;
                int32_t l_1022 = (-2L);
                if (((void*)0 != p_1231->g_1001))
                { /* block id: 515 */
                    uint64_t l_1010 = 0x0DDC9F592A80849BL;
                    l_1011 |= ((safe_mul_func_int8_t_s_s(l_957, l_963)) , ((l_1009 = (((((FAKE_DIVERGE(p_1231->global_0_offset, get_global_id(0), 10) == 0L) || (p_1231->g_690.f1 ^ (safe_mod_func_int8_t_s_s(((func_67((*p_1231->g_821), p_1231) , (l_1006[2][0] == (void*)0)) > (safe_div_func_int32_t_s_s(((p_1231->g_105.f3 | p_1231->g_694.f4) <= l_1009), l_1010))), p_1231->g_344.f5.f9)))) <= l_952) & GROUP_DIVERGE(0, 1)) < (*p_1231->g_714))) & p_1231->g_344.f5.f4));
                    (*p_1231->g_792) = (**p_1231->g_791);
                }
                else
                { /* block id: 519 */
                    int32_t l_1012[1][3];
                    struct S1 **l_1017 = (void*)0;
                    struct S1 **l_1018 = &p_1231->g_125;
                    int32_t l_1021 = 8L;
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_1012[i][j] = (-2L);
                    }
                    if (l_1012[0][0])
                        break;
                    l_1022 &= (l_1021 ^= (l_1009 = (l_1013 & (l_925 != (((((FAKE_DIVERGE(p_1231->group_1_offset, get_group_id(1), 10) ^ ((safe_rshift_func_uint8_t_u_s((((*l_1018) = l_1016) == (void*)0), l_963)) >= ((p_1231->g_847.f1 = (l_1012[0][0] | l_1012[0][0])) ^ 1L))) , (safe_div_func_int16_t_s_s(((p_1231->g_321.f4 , l_963) <= 0x34L), p_1231->g_690.f4))) | l_1009) != l_952) , &l_977)))));
                    for (p_1231->g_436.f1 = (-26); (p_1231->g_436.f1 == 26); ++p_1231->g_436.f1)
                    { /* block id: 528 */
                        p_1231->g_1027--;
                    }
                }
                if (l_963)
                    break;
                for (p_1231->g_344.f1 = (-21); (p_1231->g_344.f1 <= (-9)); p_1231->g_344.f1 = safe_add_func_int64_t_s_s(p_1231->g_344.f1, 3))
                { /* block id: 535 */
                    volatile uint8_t **l_1033 = &p_1231->g_834[0];
                    volatile uint8_t ***l_1032 = &l_1033;
                    volatile struct S0 *l_1035 = &p_1231->g_428[1][1];
                    volatile struct S0 **l_1034 = &l_1035;
                    (*l_1032) = &p_1231->g_834[0];
                    (*l_1034) = &p_1231->g_379;
                }
            }
        }
        else
        { /* block id: 540 */
            uint16_t l_1038 = 65529UL;
            int32_t l_1039[6] = {0x06498EC9L,0x06498EC9L,0x06498EC9L,0x06498EC9L,0x06498EC9L,0x06498EC9L};
            int i;
            l_1039[4] = ((safe_add_func_int64_t_s_s(l_1038, p_1231->g_409.f5.f6)) || (*p_1231->g_714));
            if ((atomic_inc(&p_1231->l_atomic_input[5]) == 8))
            { /* block id: 543 */
                struct S2 l_1041 = {0x1B87AB1A0F28F1B7L,-2L,7L,0L,1UL,{0x48358088L,0x72ECL,-3L,-1L,18446744073709551613UL,0xEC999D20L,0xC5L,18446744073709551613UL,0x3C28E5025499E965L,0x1B729939A4B05E99L}};/* VOLATILE GLOBAL l_1041 */
                struct S2 *l_1040 = &l_1041;
                int64_t l_1042[10][3][8] = {{{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L}},{{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L}},{{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L}},{{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L}},{{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L}},{{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L}},{{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L}},{{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L}},{{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L}},{{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L},{0L,3L,(-1L),0x2163B73C4A4295E5L,0x6A588E03B6A8C9E1L,0L,0x4099ABB39D7A2AEBL,0x6038BA4E993A3737L}}};
                uint32_t l_1043 = 0xF1F0A67BL;
                struct S1 l_1044 = {0L,0xEB7BEE99L,0x626837B1L,0xA7L,0x913BAF0E51D6C749L,4294967290UL,0x3499927F93673A7EL,1L};/* VOLATILE GLOBAL l_1044 */
                struct S2 l_1045 = {0x50E7B509DADBC476L,1L,7L,0x2A33855AL,0x92L,{4294967289UL,2UL,-1L,0x1A600D117771D64DL,0x9F34E3188BC4C6ABL,4294967290UL,0x16L,0xA8FFB9C69FD7B753L,0x7848B0564AEDDDA8L,-4L}};/* VOLATILE GLOBAL l_1045 */
                struct S2 l_1046 = {0x46E63918CCB877CEL,0x47L,8L,0x178B4C6AL,1UL,{4294967291UL,0x6420L,-2L,0x3B9D2A5A1C54BEBDL,7UL,0xE7BF1383L,252UL,0UL,0L,-5L}};/* VOLATILE GLOBAL l_1046 */
                struct S0 l_1069 = {4294967287UL,0UL,0x0E124CEBL,0x16BEAF68E67AF7DDL,0x83972E85DF5F88F9L,0xB087E4D9L,1UL,0x42D437160D4CCECAL,0x424C78CB06919001L,0L};/* VOLATILE GLOBAL l_1069 */
                struct S0 l_1070 = {0x1EA0BFCDL,0xC4AAL,1L,-1L,0xD879FC89C8AC375AL,0x7297D75CL,253UL,0x7E4A60F13979EF40L,0x5D143B33B82F3689L,0x57BEC516155D3E26L};/* VOLATILE GLOBAL l_1070 */
                int i, j, k;
                l_1040 = l_1040;
                l_1046 = (((l_1042[7][2][0] , l_1043) , l_1044) , l_1045);
                for (l_1041.f5.f2 = 0; (l_1041.f5.f2 >= 11); ++l_1041.f5.f2)
                { /* block id: 548 */
                    int32_t l_1049 = 0x2CDE266AL;
                    for (l_1049 = (-23); (l_1049 >= (-11)); ++l_1049)
                    { /* block id: 551 */
                        uint64_t l_1052 = 0x470CB49809B7B78DL;
                        int32_t l_1056 = 0x391DB5D0L;
                        int32_t *l_1055 = &l_1056;
                        int32_t l_1057 = (-1L);
                        uint8_t l_1058 = 254UL;
                        int32_t *l_1059 = &l_1057;
                        int32_t *l_1060 = &l_1056;
                        --l_1052;
                        l_1055 = l_1055;
                        l_1044.f2 |= (l_1057 , l_1058);
                        l_1060 = l_1059;
                    }
                    for (l_1049 = 11; (l_1049 != (-27)); l_1049 = safe_sub_func_uint8_t_u_u(l_1049, 1))
                    { /* block id: 559 */
                        uint16_t l_1063 = 0x39BDL;
                        int32_t l_1064[1];
                        uint32_t l_1065 = 0x298F48E2L;
                        uint32_t l_1066[9] = {4294967293UL,4294967293UL,4294967293UL,4294967293UL,4294967293UL,4294967293UL,4294967293UL,4294967293UL,4294967293UL};
                        int16_t l_1067[6][2][8] = {{{0x4224L,0L,1L,(-1L),0x4224L,(-9L),0L,(-1L)},{0x4224L,0L,1L,(-1L),0x4224L,(-9L),0L,(-1L)}},{{0x4224L,0L,1L,(-1L),0x4224L,(-9L),0L,(-1L)},{0x4224L,0L,1L,(-1L),0x4224L,(-9L),0L,(-1L)}},{{0x4224L,0L,1L,(-1L),0x4224L,(-9L),0L,(-1L)},{0x4224L,0L,1L,(-1L),0x4224L,(-9L),0L,(-1L)}},{{0x4224L,0L,1L,(-1L),0x4224L,(-9L),0L,(-1L)},{0x4224L,0L,1L,(-1L),0x4224L,(-9L),0L,(-1L)}},{{0x4224L,0L,1L,(-1L),0x4224L,(-9L),0L,(-1L)},{0x4224L,0L,1L,(-1L),0x4224L,(-9L),0L,(-1L)}},{{0x4224L,0L,1L,(-1L),0x4224L,(-9L),0L,(-1L)},{0x4224L,0L,1L,(-1L),0x4224L,(-9L),0L,(-1L)}}};
                        uint32_t l_1068 = 4294967291UL;
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_1064[i] = 0x3212E8FBL;
                        l_1068 = (l_1044.f2 = ((l_1064[0] = l_1063) , (((l_1046.f5.f5 = (l_1044.f5 |= l_1065)) , (l_1066[7] = 9UL)) , l_1067[1][1][3])));
                    }
                }
                l_1070 = l_1069;
                unsigned int result = 0;
                result += l_1041.f0;
                result += l_1041.f1;
                result += l_1041.f2;
                result += l_1041.f3;
                result += l_1041.f4;
                result += l_1041.f5.f0;
                result += l_1041.f5.f1;
                result += l_1041.f5.f2;
                result += l_1041.f5.f3;
                result += l_1041.f5.f4;
                result += l_1041.f5.f5;
                result += l_1041.f5.f6;
                result += l_1041.f5.f7;
                result += l_1041.f5.f8;
                result += l_1041.f5.f9;
                int l_1042_i0, l_1042_i1, l_1042_i2;
                for (l_1042_i0 = 0; l_1042_i0 < 10; l_1042_i0++) {
                    for (l_1042_i1 = 0; l_1042_i1 < 3; l_1042_i1++) {
                        for (l_1042_i2 = 0; l_1042_i2 < 8; l_1042_i2++) {
                            result += l_1042[l_1042_i0][l_1042_i1][l_1042_i2];
                        }
                    }
                }
                result += l_1043;
                result += l_1044.f0;
                result += l_1044.f1;
                result += l_1044.f2;
                result += l_1044.f3;
                result += l_1044.f4;
                result += l_1044.f5;
                result += l_1044.f6;
                result += l_1044.f7;
                result += l_1045.f0;
                result += l_1045.f1;
                result += l_1045.f2;
                result += l_1045.f3;
                result += l_1045.f4;
                result += l_1045.f5.f0;
                result += l_1045.f5.f1;
                result += l_1045.f5.f2;
                result += l_1045.f5.f3;
                result += l_1045.f5.f4;
                result += l_1045.f5.f5;
                result += l_1045.f5.f6;
                result += l_1045.f5.f7;
                result += l_1045.f5.f8;
                result += l_1045.f5.f9;
                result += l_1046.f0;
                result += l_1046.f1;
                result += l_1046.f2;
                result += l_1046.f3;
                result += l_1046.f4;
                result += l_1046.f5.f0;
                result += l_1046.f5.f1;
                result += l_1046.f5.f2;
                result += l_1046.f5.f3;
                result += l_1046.f5.f4;
                result += l_1046.f5.f5;
                result += l_1046.f5.f6;
                result += l_1046.f5.f7;
                result += l_1046.f5.f8;
                result += l_1046.f5.f9;
                result += l_1069.f0;
                result += l_1069.f1;
                result += l_1069.f2;
                result += l_1069.f3;
                result += l_1069.f4;
                result += l_1069.f5;
                result += l_1069.f6;
                result += l_1069.f7;
                result += l_1069.f8;
                result += l_1069.f9;
                result += l_1070.f0;
                result += l_1070.f1;
                result += l_1070.f2;
                result += l_1070.f3;
                result += l_1070.f4;
                result += l_1070.f5;
                result += l_1070.f6;
                result += l_1070.f7;
                result += l_1070.f8;
                result += l_1070.f9;
                atomic_add(&p_1231->l_special_values[5], result);
            }
            else
            { /* block id: 569 */
                (1 + 1);
            }
            (*l_1016) = p_1231->g_1071[2];
        }
    }
    l_1230 = l_1229;
    return p_1231->g_321.f7;
}


/* ------------------------------------------ */
/* 
 * reads : p_1231->g_7 p_1231->g_17 p_1231->g_249 p_1231->g_69 p_1231->g_191.f8 p_1231->g_105.f3 p_1231->g_344.f5.f0 p_1231->g_105.f2 p_1231->g_211 p_1231->g_411 p_1231->g_109.f6 p_1231->g_690 p_1231->g_501 p_1231->g_699 p_1231->g_694.f2 p_1231->g_428.f3 p_1231->g_288 p_1231->g_191.f9 p_1231->g_409.f5.f7 p_1231->g_109.f3 p_1231->g_412 p_1231->g_70 p_1231->g_694.f5.f7 p_1231->g_734
 * writes: p_1231->g_17 p_1231->g_70 p_1231->g_409.f4 p_1231->g_412 p_1231->g_105.f2 p_1231->g_714 p_1231->g_409.f5.f7 p_1231->g_109.f3 p_1231->g_690.f2 p_1231->g_694.f5.f7
 */
uint8_t  func_5(int32_t  p_6, struct S3 * p_1231)
{ /* block id: 5 */
    int32_t *l_16 = &p_1231->g_17;
    uint32_t l_672 = 0x222BAB86L;
    int32_t ***l_675 = (void*)0;
    uint8_t *l_676 = &p_1231->g_409.f4;
    (*p_1231->g_69) = func_8(func_13(l_16, p_1231->g_7, p_1231), l_16, ((*p_1231->g_411) = ((((*l_676) = (p_6 <= ((safe_sub_func_int8_t_s_s(p_1231->g_191.f8, (safe_add_func_uint32_t_u_u(((safe_sub_func_int16_t_s_s((+l_672), (p_6 == (((((((safe_lshift_func_int16_t_s_s((l_675 == &p_1231->g_69), 10)) | 0x78L) ^ p_1231->g_105.f3) >= 0xD97FCEFFL) , p_1231->g_344.f5.f0) >= (*p_1231->g_249)) == p_1231->g_211[2][0])))) < 1L), p_6)))) , 6L))) & l_672) , (void*)0)), l_16, p_1231);
    for (p_1231->g_694.f5.f7 = 0; (p_1231->g_694.f5.f7 == 55); p_1231->g_694.f5.f7 = safe_add_func_uint64_t_u_u(p_1231->g_694.f5.f7, 9))
    { /* block id: 356 */
        uint64_t l_731[4][4] = {{0xDB4354513AA649E7L,0xDB4354513AA649E7L,0x2AD5581E78A1C700L,18446744073709551614UL},{0xDB4354513AA649E7L,0xDB4354513AA649E7L,0x2AD5581E78A1C700L,18446744073709551614UL},{0xDB4354513AA649E7L,0xDB4354513AA649E7L,0x2AD5581E78A1C700L,18446744073709551614UL},{0xDB4354513AA649E7L,0xDB4354513AA649E7L,0x2AD5581E78A1C700L,18446744073709551614UL}};
        int i, j;
        l_731[3][0]--;
    }
    return p_1231->g_734[0][3][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1231->g_109.f6 p_1231->g_690 p_1231->g_501 p_1231->g_699 p_1231->g_249 p_1231->g_105.f2 p_1231->g_694.f2 p_1231->g_428.f3 p_1231->g_288 p_1231->g_191.f9 p_1231->g_409.f5.f7 p_1231->g_17 p_1231->g_109.f3 p_1231->g_411 p_1231->g_412 p_1231->g_69 p_1231->g_70
 * writes: p_1231->g_17 p_1231->g_105.f2 p_1231->g_714 p_1231->g_409.f5.f7 p_1231->g_109.f3 p_1231->g_690.f2
 */
int32_t * func_8(int32_t * p_9, int32_t * p_10, int32_t * p_11, int32_t * p_12, struct S3 * p_1231)
{ /* block id: 329 */
    int8_t l_683[5] = {0x04L,0x04L,0x04L,0x04L,0x04L};
    int64_t ***l_685 = (void*)0;
    int64_t ****l_684 = &l_685;
    struct S2 *l_692 = &p_1231->g_409;
    struct S2 **l_691 = &l_692;
    struct S2 *l_693 = &p_1231->g_694;
    struct S1 **l_695[2];
    struct S1 **l_696 = &p_1231->g_125;
    uint8_t *l_697[9] = {&p_1231->g_207.f3,&p_1231->g_109.f3,&p_1231->g_207.f3,&p_1231->g_207.f3,&p_1231->g_109.f3,&p_1231->g_207.f3,&p_1231->g_207.f3,&p_1231->g_109.f3,&p_1231->g_207.f3};
    int32_t l_698[3][10] = {{0x575D2E23L,0x52EB562CL,0x575D2E23L,0x575D2E23L,0x52EB562CL,0x575D2E23L,0x575D2E23L,0x52EB562CL,0x575D2E23L,0x575D2E23L},{0x575D2E23L,0x52EB562CL,0x575D2E23L,0x575D2E23L,0x52EB562CL,0x575D2E23L,0x575D2E23L,0x52EB562CL,0x575D2E23L,0x575D2E23L},{0x575D2E23L,0x52EB562CL,0x575D2E23L,0x575D2E23L,0x52EB562CL,0x575D2E23L,0x575D2E23L,0x52EB562CL,0x575D2E23L,0x575D2E23L}};
    int32_t l_704 = 1L;
    uint16_t **l_711 = (void*)0;
    uint16_t *l_713 = (void*)0;
    uint16_t **l_712 = &l_713;
    uint16_t *l_720 = &p_1231->g_664;
    uint16_t **l_719 = &l_720;
    uint16_t *l_722 = &p_1231->g_344.f5.f1;
    uint16_t **l_721 = &l_722;
    uint64_t *l_723 = &p_1231->g_409.f5.f7;
    int i, j;
    for (i = 0; i < 2; i++)
        l_695[i] = &p_1231->g_125;
    (*p_1231->g_249) |= (((((l_698[2][2] ^= ((((safe_rshift_func_uint8_t_u_u(p_1231->g_109.f6, 0)) <= (safe_div_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((l_683[4] && l_683[4]), (l_684 == &l_685))), (safe_add_func_int8_t_s_s(((~(safe_sub_func_int16_t_s_s((((*l_691) = (p_1231->g_690 , &p_1231->g_344)) == l_693), (((*p_10) = ((((l_695[1] = &p_1231->g_125) == l_696) & l_683[4]) >= 0L)) < 0L)))) >= l_683[1]), p_1231->g_501))))) > 2UL) & (-1L))) >= p_1231->g_699) | l_683[4]) > l_683[4]) > GROUP_DIVERGE(1, 1));
    (*p_1231->g_249) |= ((safe_mul_func_uint8_t_u_u((l_698[0][1] != l_683[4]), (safe_mul_func_uint8_t_u_u((((+(((*l_723) ^= ((l_704 = 0x52L) >= (safe_mod_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_s((((safe_mod_func_uint32_t_u_u(((((FAKE_DIVERGE(p_1231->local_1_offset, get_local_id(1), 10) || (p_1231->g_690.f5.f3 , p_1231->g_694.f2)) ^ (((p_1231->g_714 = ((*l_712) = &p_1231->g_510)) == (((((FAKE_DIVERGE(p_1231->group_2_offset, get_group_id(2), 10) , (safe_sub_func_int16_t_s_s(((p_1231->g_428[0][3].f3 > (safe_rshift_func_uint16_t_u_s(l_683[0], 2))) || (((*l_721) = ((*l_719) = &p_1231->g_510)) != (void*)0)), FAKE_DIVERGE(p_1231->global_0_offset, get_global_id(0), 10)))) > FAKE_DIVERGE(p_1231->global_1_offset, get_global_id(1), 10)) | l_698[2][2]) , (-1L)) , (void*)0)) && l_698[2][2])) <= 0x7C453615L) , l_698[0][3]), l_698[0][7])) , 0x71CDC9C0A42ADD86L) && (*p_1231->g_288)), 4)) != l_698[0][2]), l_683[2])))) || 0x5520934C7E84B12DL)) || l_698[2][5]) ^ (*p_9)), 1UL)))) >= 0x488154E0F62673AFL);
    for (p_1231->g_109.f3 = (-25); (p_1231->g_109.f3 <= 1); ++p_1231->g_109.f3)
    { /* block id: 344 */
        int32_t *l_728[4][5][3] = {{{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2}},{{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2}},{{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2}},{{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2},{(void*)0,(void*)0,&p_1231->g_223[1][0][5].f2}}};
        int i, j, k;
        if ((*p_9))
            break;
        for (p_1231->g_690.f2 = (-9); (p_1231->g_690.f2 > 8); p_1231->g_690.f2 = safe_add_func_uint16_t_u_u(p_1231->g_690.f2, 4))
        { /* block id: 348 */
            return (*p_1231->g_411);
        }
    }
    return (*p_1231->g_69);
}


/* ------------------------------------------ */
/* 
 * reads : p_1231->g_17 p_1231->g_249 p_1231->g_69
 * writes: p_1231->g_17 p_1231->g_70
 */
int32_t * func_13(int32_t * p_14, int8_t  p_15, struct S3 * p_1231)
{ /* block id: 6 */
    int8_t l_18[6][5] = {{(-4L),(-4L),0x65L,0L,0x04L},{(-4L),(-4L),0x65L,0L,0x04L},{(-4L),(-4L),0x65L,0L,0x04L},{(-4L),(-4L),0x65L,0L,0x04L},{(-4L),(-4L),0x65L,0L,0x04L},{(-4L),(-4L),0x65L,0L,0x04L}};
    int64_t **l_429[8][2] = {{&p_1231->g_288,&p_1231->g_288},{&p_1231->g_288,&p_1231->g_288},{&p_1231->g_288,&p_1231->g_288},{&p_1231->g_288,&p_1231->g_288},{&p_1231->g_288,&p_1231->g_288},{&p_1231->g_288,&p_1231->g_288},{&p_1231->g_288,&p_1231->g_288},{&p_1231->g_288,&p_1231->g_288}};
    int32_t **l_460 = &p_1231->g_249;
    struct S2 *l_487 = &p_1231->g_409;
    int32_t l_493[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
    struct S2 *l_531 = (void*)0;
    int64_t ***l_538[2];
    int64_t ****l_537[4][9][7] = {{{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]}},{{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]}},{{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]}},{{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]},{(void*)0,&l_538[0],&l_538[1],&l_538[0],&l_538[0],&l_538[1],&l_538[1]}}};
    int16_t *l_605 = &p_1231->g_501;
    uint16_t l_659 = 0x0178L;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_538[i] = &l_429[2][1];
    for (p_1231->g_17 = 1; (p_1231->g_17 <= 4); p_1231->g_17 += 1)
    { /* block id: 9 */
        int32_t *l_26[3][9][9] = {{{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17}},{{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17}},{{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17,&p_1231->g_17}}};
        int32_t **l_25 = &l_26[0][5][1];
        int32_t *l_28 = (void*)0;
        int32_t **l_27 = &l_28;
        int32_t *l_426 = &p_1231->g_427;
        int64_t ***l_430 = &l_429[6][0];
        struct S2 *l_593 = (void*)0;
        uint16_t *l_636 = (void*)0;
        int i, j, k;
        (1 + 1);
    }
    (*p_1231->g_69) = (*l_460);
    (*p_1231->g_69) = (void*)0;
    return p_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_1231->g_47 p_1231->g_55 p_1231->g_69 p_1231->g_54 p_1231->g_34 p_1231->g_109.f5 p_1231->g_17 p_1231->g_128 p_1231->g_105.f2 p_1231->g_70 p_1231->g_109.f3 p_1231->g_109.f6 p_1231->g_105.f5 p_1231->g_109.f2 p_1231->g_191 p_1231->g_194 p_1231->g_202 p_1231->g_207 p_1231->g_211 p_1231->g_220 p_1231->g_223 p_1231->g_226 p_1231->g_43 p_1231->g_409 p_1231->g_344.f5.f7 p_1231->g_411 p_1231->g_306.f4 p_1231->g_412 p_1231->g_423
 * writes: p_1231->g_47 p_1231->g_55 p_1231->g_34 p_1231->g_70 p_1231->g_105.f2 p_1231->g_105.f4 p_1231->g_109.f6 p_1231->g_69 p_1231->g_194 p_1231->g_54 p_1231->g_202 p_1231->g_109.f5 p_1231->g_211 p_1231->g_222 p_1231->g_249 p_1231->g_191.f3 p_1231->g_109.f2 p_1231->g_223.f2 p_1231->g_207.f3 p_1231->g_207.f2 p_1231->g_412 p_1231->g_191.f1 p_1231->g_423
 */
int32_t  func_19(uint16_t  p_20, int32_t * p_21, int32_t * p_22, int8_t  p_23, uint16_t  p_24, struct S3 * p_1231)
{ /* block id: 12 */
    uint32_t l_39 = 0x5F885928L;
    int32_t l_42 = 0x5156BE82L;
    int32_t l_44 = 3L;
    int32_t l_45[10][5][5] = {{{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L}},{{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L}},{{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L}},{{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L}},{{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L}},{{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L}},{{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L}},{{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L}},{{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L}},{{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L},{0x3B720FAEL,7L,(-1L),0x52D49A33L,9L}}};
    int32_t l_422 = 3L;
    int i, j, k;
    for (p_23 = 0; (p_23 > (-11)); p_23 = safe_sub_func_int64_t_s_s(p_23, 6))
    { /* block id: 15 */
        int16_t l_46 = 0x503CL;
        uint8_t l_234 = 0x07L;
        int8_t l_410 = 0x10L;
        int32_t *l_419 = &p_1231->g_105.f2;
        int32_t *l_420 = &p_1231->g_109.f2;
        int32_t *l_421[3][2][10] = {{{&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2},{&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2}},{{&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2},{&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2}},{{&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2},{&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2,&p_1231->g_207.f2}}};
        int i, j, k;
        for (p_24 = (-3); (p_24 <= 47); p_24 = safe_add_func_uint16_t_u_u(p_24, 5))
        { /* block id: 18 */
            int32_t *l_33 = &p_1231->g_34;
            int32_t *l_35 = &p_1231->g_34;
            int32_t *l_36 = &p_1231->g_34;
            int32_t *l_37 = &p_1231->g_34;
            int32_t *l_38[7];
            int i;
            for (i = 0; i < 7; i++)
                l_38[i] = &p_1231->g_34;
            l_39++;
            --p_1231->g_47;
            for (l_42 = 0; (l_42 != (-7)); --l_42)
            { /* block id: 23 */
                uint16_t l_413 = 0x4C80L;
                for (p_1231->g_47 = 0; (p_1231->g_47 > 23); p_1231->g_47 = safe_add_func_uint16_t_u_u(p_1231->g_47, 1))
                { /* block id: 26 */
                    ++p_1231->g_55[3];
                }
                (*p_1231->g_411) = func_58(((func_64(((*l_35) = (l_45[4][2][3] |= (func_67(p_1231->g_69, p_1231) , ((0xF9L <= (safe_mul_func_int8_t_s_s(((p_1231->g_226[0][7] != (void*)0) , (-2L)), (safe_div_func_uint64_t_u_u(FAKE_DIVERGE(p_1231->local_2_offset, get_local_id(2), 10), (-3L)))))) > ((safe_mul_func_int8_t_s_s(((safe_mod_func_uint32_t_u_u(p_1231->g_47, 4294967295UL)) < p_1231->g_191.f4), p_24)) >= l_234))))), p_22, p_1231) , l_410) <= 0L), p_1231->g_344.f5.f7, p_1231->g_411, l_410, l_413, p_1231);
                if ((*p_21))
                    break;
            }
        }
        for (p_1231->g_191.f1 = (-3); (p_1231->g_191.f1 <= 13); p_1231->g_191.f1++)
        { /* block id: 192 */
            return (*p_22);
        }
        p_1231->g_423--;
        for (p_1231->g_191.f1 = 0; (p_1231->g_191.f1 <= 7); p_1231->g_191.f1 += 1)
        { /* block id: 198 */
            int i, j;
            return p_1231->g_211[p_1231->g_191.f1][(p_1231->g_191.f1 + 1)];
        }
    }
    return (*p_21);
}


/* ------------------------------------------ */
/* 
 * reads : p_1231->g_306.f4 p_1231->g_412
 * writes: p_1231->g_207.f2 p_1231->g_223.f2
 */
int32_t * func_58(uint8_t  p_59, uint64_t  p_60, int32_t ** p_61, int32_t  p_62, int64_t  p_63, struct S3 * p_1231)
{ /* block id: 183 */
    int32_t *l_416 = &p_1231->g_223[1][0][5].f2;
    (*p_1231->g_412) = (p_60 == (safe_sub_func_int16_t_s_s((-1L), (p_1231->g_306[0].f4 != 5UL))));
    return l_416;
}


/* ------------------------------------------ */
/* 
 * reads : p_1231->g_211 p_1231->g_191.f3 p_1231->g_43 p_1231->g_109.f2 p_1231->g_223.f3 p_1231->g_207.f4 p_1231->g_207.f5 p_1231->g_191.f5 p_1231->g_223.f2 p_1231->g_207.f3 p_1231->g_34 p_1231->g_409
 * writes: p_1231->g_211 p_1231->g_249 p_1231->g_191.f3 p_1231->g_109.f2 p_1231->g_223.f2 p_1231->g_207.f3 p_1231->g_34
 */
struct S2  func_64(int32_t  p_65, int32_t * p_66, struct S3 * p_1231)
{ /* block id: 106 */
    int32_t l_243 = 1L;
    int8_t *l_244 = &p_1231->g_211[3][3];
    int32_t *l_245 = &p_1231->g_109.f2;
    int32_t **l_246 = &p_1231->g_70;
    int32_t **l_247 = (void*)0;
    int32_t **l_248[2];
    int64_t *l_250 = &p_1231->g_191.f3;
    uint8_t l_380[7];
    int i;
    for (i = 0; i < 2; i++)
        l_248[i] = &p_1231->g_70;
    for (i = 0; i < 7; i++)
        l_380[i] = 0xF0L;
    p_1231->g_223[1][0][5].f2 = ((*l_245) = (safe_mul_func_int8_t_s_s((safe_mod_func_uint64_t_u_u(((safe_div_func_int32_t_s_s(((safe_add_func_int8_t_s_s(((*l_244) ^= l_243), 0x6DL)) >= (p_65 | ((*l_250) ^= (l_245 != (p_1231->g_249 = l_245))))), GROUP_DIVERGE(2, 1))) == 0x07721780363ACFDDL), (safe_lshift_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u(0UL, (safe_add_func_int8_t_s_s(1L, ((safe_mul_func_uint16_t_u_u((safe_div_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), (safe_div_func_int64_t_s_s(((safe_mod_func_uint16_t_u_u(((((safe_sub_func_uint16_t_u_u((0L > p_65), p_1231->g_43)) | (*l_245)) & p_65) == (-1L)), p_65)) & p_1231->g_223[1][0][5].f3), p_1231->g_207.f4)))), 9L)) == p_1231->g_207.f5))))), p_1231->g_191.f5)))), p_1231->g_223[1][0][5].f2)));
    for (p_1231->g_207.f3 = 0; (p_1231->g_207.f3 <= 38); p_1231->g_207.f3 = safe_add_func_uint64_t_u_u(p_1231->g_207.f3, 5))
    { /* block id: 114 */
        int64_t l_275[6] = {(-1L),0x48FBD4BF0A53A96FL,(-1L),(-1L),0x48FBD4BF0A53A96FL,(-1L)};
        int32_t l_282 = 4L;
        int64_t *l_289 = (void*)0;
        int32_t l_308 = 0L;
        uint64_t l_318 = 0xC73AB32B633AAC75L;
        int64_t l_363 = 5L;
        int i;
        (1 + 1);
    }
    for (p_1231->g_34 = 0; (p_1231->g_34 <= (-20)); p_1231->g_34 = safe_sub_func_uint64_t_u_u(p_1231->g_34, 4))
    { /* block id: 179 */
        return p_1231->g_409;
    }
    return p_1231->g_409;
}


/* ------------------------------------------ */
/* 
 * reads : p_1231->g_54 p_1231->g_34 p_1231->g_47 p_1231->g_109.f5 p_1231->g_17 p_1231->g_128 p_1231->g_69 p_1231->g_105.f2 p_1231->g_55 p_1231->g_70 p_1231->g_109.f3 p_1231->g_109.f6 p_1231->g_105.f5 p_1231->g_109.f2 p_1231->g_191 p_1231->g_194 p_1231->g_202 p_1231->g_207 p_1231->g_211 p_1231->g_220 p_1231->g_223 p_1231->g_412 p_1231->g_249
 * writes: p_1231->g_34 p_1231->g_47 p_1231->g_70 p_1231->g_105.f2 p_1231->g_105.f4 p_1231->g_109.f6 p_1231->g_55 p_1231->g_69 p_1231->g_194 p_1231->g_54 p_1231->g_202 p_1231->g_109.f5 p_1231->g_211 p_1231->g_222 p_1231->g_412 p_1231->g_249
 */
struct S1  func_67(int32_t ** p_68, struct S3 * p_1231)
{ /* block id: 29 */
    int32_t l_81 = 9L;
    int32_t *l_144 = &p_1231->g_105.f2;
    int64_t l_174 = (-6L);
    uint64_t *l_179 = &p_1231->g_109.f6;
    int32_t l_180 = 3L;
    uint16_t l_181 = 0x87BCL;
    uint16_t *l_182 = &l_181;
    int32_t l_198 = (-4L);
    int32_t l_199 = (-1L);
    int32_t l_200 = 3L;
    int32_t l_201[8][8] = {{0x42BDC2A1L,3L,(-1L),0x42BDC2A1L,0x7D38AE4DL,(-1L),(-1L),0x7D38AE4DL},{0x42BDC2A1L,3L,(-1L),0x42BDC2A1L,0x7D38AE4DL,(-1L),(-1L),0x7D38AE4DL},{0x42BDC2A1L,3L,(-1L),0x42BDC2A1L,0x7D38AE4DL,(-1L),(-1L),0x7D38AE4DL},{0x42BDC2A1L,3L,(-1L),0x42BDC2A1L,0x7D38AE4DL,(-1L),(-1L),0x7D38AE4DL},{0x42BDC2A1L,3L,(-1L),0x42BDC2A1L,0x7D38AE4DL,(-1L),(-1L),0x7D38AE4DL},{0x42BDC2A1L,3L,(-1L),0x42BDC2A1L,0x7D38AE4DL,(-1L),(-1L),0x7D38AE4DL},{0x42BDC2A1L,3L,(-1L),0x42BDC2A1L,0x7D38AE4DL,(-1L),(-1L),0x7D38AE4DL},{0x42BDC2A1L,3L,(-1L),0x42BDC2A1L,0x7D38AE4DL,(-1L),(-1L),0x7D38AE4DL}};
    int8_t *l_210 = &p_1231->g_211[3][3];
    int8_t l_213 = 0x20L;
    uint32_t *l_221 = &p_1231->g_222[2][1];
    int i, j;
    (*l_144) = (safe_mod_func_int16_t_s_s((p_68 != &p_1231->g_70), (safe_div_func_int32_t_s_s((((((safe_mod_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((safe_add_func_int16_t_s_s(l_81, func_82(p_1231->g_54, l_81, ((*p_68) = ((safe_mul_func_uint16_t_u_u(l_81, ((((func_90((safe_rshift_func_int16_t_s_s((l_81 , l_81), ((((safe_mul_func_int16_t_s_s((-1L), l_81)) , p_68) != &p_1231->g_70) ^ FAKE_DIVERGE(p_1231->group_0_offset, get_group_id(0), 10)))), l_81, p_1231) >= 0L) | p_1231->g_17) , l_81) | p_1231->g_128))) , (void*)0)), p_1231->g_69, l_144, p_1231))), 0)), l_174)) , FAKE_DIVERGE(p_1231->group_1_offset, get_group_id(1), 10)) & 0x08AD4082L) , (*l_144)) || (*l_144)), 4UL))));
    if ((((*l_144) ^ 1L) ^ ((safe_mod_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s(((*l_182) = (((*p_68) == ((((((*l_179) ^= p_1231->g_109.f3) ^ 3UL) <= 0x6E7C3D4A470AD435L) > ((((*l_144) && FAKE_DIVERGE(p_1231->group_1_offset, get_group_id(1), 10)) != p_1231->g_105.f5) < l_180)) , (*p_68))) > l_181)), 15)), (*l_144))) <= (*l_144))))
    { /* block id: 81 */
        int32_t ***l_185[10][6] = {{&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69},{&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69},{&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69},{&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69},{&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69},{&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69},{&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69},{&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69},{&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69},{&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69,&p_1231->g_69}};
        int64_t *l_192 = &l_174;
        int i, j;
        for (p_1231->g_105.f4 = 0; p_1231->g_105.f4 < 8; p_1231->g_105.f4 += 1)
        {
            p_1231->g_55[p_1231->g_105.f4] = 0UL;
        }
        p_1231->g_194 &= ((safe_add_func_uint16_t_u_u((p_68 != (p_1231->g_69 = p_68)), (safe_div_func_int8_t_s_s(((safe_unary_minus_func_uint16_t_u((p_1231->g_109.f2 , 1UL))) ^ (safe_div_func_int32_t_s_s((p_1231->g_34 |= (((*l_192) = (p_1231->g_191 , (0x5AA24B6D029A7930L && p_1231->g_47))) <= ((*l_144) |= ((safe_unary_minus_func_int32_t_s((p_1231->g_191.f3 & 0L))) ^ 0x916CL)))), p_1231->g_109.f6))), 1L)))) || 0L);
        p_1231->g_54 &= (*l_144);
    }
    else
    { /* block id: 89 */
        int32_t *l_195 = (void*)0;
        int32_t *l_196 = &p_1231->g_105.f2;
        int32_t *l_197[9][1];
        int i, j;
        for (i = 0; i < 9; i++)
        {
            for (j = 0; j < 1; j++)
                l_197[i][j] = &p_1231->g_34;
        }
        ++p_1231->g_202[3];
    }
    for (p_1231->g_109.f5 = (-22); (p_1231->g_109.f5 <= 37); p_1231->g_109.f5 = safe_add_func_int16_t_s_s(p_1231->g_109.f5, 2))
    { /* block id: 94 */
        (*p_1231->g_69) = &l_200;
        return p_1231->g_207;
    }
    (*l_144) = ((((safe_mul_func_int8_t_s_s(((((*l_210) |= 0x57L) || ((*l_210) = (*l_144))) & (*l_144)), (((safe_unary_minus_func_int8_t_s(((l_213 , (1UL != (((*l_221) = (safe_mul_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s(((*l_182) |= ((*l_144) , p_1231->g_109.f5)), (p_1231->g_207.f0 != (safe_lshift_func_uint16_t_u_s(p_1231->g_207.f0, (*l_144)))))) & p_1231->g_220), (*l_144)))) , 0x3D179681BECC66A6L))) , p_1231->g_109.f2))) , l_179) == l_179))) || 0x26L) == (*l_144)) != 0L);
    return p_1231->g_223[1][0][5];
}


/* ------------------------------------------ */
/* 
 * reads : p_1231->g_105.f2 p_1231->g_55
 * writes: p_1231->g_105.f2 p_1231->g_105.f4
 */
uint16_t  func_82(int64_t  p_83, uint32_t  p_84, int32_t * p_85, int32_t ** p_86, int32_t * p_87, struct S3 * p_1231)
{ /* block id: 61 */
    uint32_t l_151[1];
    int32_t *l_158 = &p_1231->g_128;
    int32_t l_159[9] = {0x310D4CFFL,0x310D4CFFL,0x310D4CFFL,0x310D4CFFL,0x310D4CFFL,0x310D4CFFL,0x310D4CFFL,0x310D4CFFL,0x310D4CFFL};
    int32_t l_164 = 0x0C720A73L;
    int i;
    for (i = 0; i < 1; i++)
        l_151[i] = 0xFE33FEA8L;
    (*p_87) |= ((safe_rshift_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((safe_mod_func_uint32_t_u_u(((l_151[0] >= (safe_lshift_func_int16_t_s_u(p_83, 1))) , (safe_lshift_func_uint8_t_u_s((safe_div_func_uint16_t_u_u(((void*)0 == l_158), (l_159[8] = GROUP_DIVERGE(0, 1)))), (~l_151[0])))), (safe_mul_func_uint8_t_u_u(((safe_rshift_func_uint16_t_u_s((l_151[0] > (p_84 <= (~(0x2DDED739L || 4294967292UL)))), p_83)) , 0x5BL), 0x51L)))), p_84)), 7)) && l_164);
    for (p_1231->g_105.f4 = 0; p_1231->g_105.f4 < 1; p_1231->g_105.f4 += 1)
    {
        l_151[p_1231->g_105.f4] = 1UL;
    }
    if ((atomic_inc(&p_1231->l_atomic_input[12]) == 1))
    { /* block id: 66 */
        uint32_t l_165 = 0xA800174EL;
        if (l_165)
        { /* block id: 67 */
            int8_t l_166 = 0x40L;
            int8_t l_167 = 0x0DL;
            l_167 = l_166;
        }
        else
        { /* block id: 69 */
            struct S0 l_168[5] = {{0x6B272A17L,0xAE09L,-1L,0x74A4E084E3BA3332L,0x5AE14A2BDFB097C1L,0x678765DDL,4UL,1UL,0x706635C2736A9738L,0x0013064C4D074B32L},{0x6B272A17L,0xAE09L,-1L,0x74A4E084E3BA3332L,0x5AE14A2BDFB097C1L,0x678765DDL,4UL,1UL,0x706635C2736A9738L,0x0013064C4D074B32L},{0x6B272A17L,0xAE09L,-1L,0x74A4E084E3BA3332L,0x5AE14A2BDFB097C1L,0x678765DDL,4UL,1UL,0x706635C2736A9738L,0x0013064C4D074B32L},{0x6B272A17L,0xAE09L,-1L,0x74A4E084E3BA3332L,0x5AE14A2BDFB097C1L,0x678765DDL,4UL,1UL,0x706635C2736A9738L,0x0013064C4D074B32L},{0x6B272A17L,0xAE09L,-1L,0x74A4E084E3BA3332L,0x5AE14A2BDFB097C1L,0x678765DDL,4UL,1UL,0x706635C2736A9738L,0x0013064C4D074B32L}};
            struct S0 l_169 = {1UL,0xBA37L,-2L,0x117470866168E0BFL,0x37BD5445E50017F8L,0x93538FAAL,0xACL,6UL,0L,-1L};/* VOLATILE GLOBAL l_169 */
            struct S0 l_170 = {7UL,0xFEFDL,1L,-9L,0x806CF389D0FCB306L,4294967293UL,4UL,0x02636EEB13F110F9L,1L,0x7B0F1F695C9EB641L};/* VOLATILE GLOBAL l_170 */
            struct S0 l_171[5] = {{0x83A5DF85L,3UL,0L,0x4DC3A2BD98AD5BD7L,18446744073709551609UL,4294967295UL,6UL,1UL,0x2810C4A4D08B0D3CL,3L},{0x83A5DF85L,3UL,0L,0x4DC3A2BD98AD5BD7L,18446744073709551609UL,4294967295UL,6UL,1UL,0x2810C4A4D08B0D3CL,3L},{0x83A5DF85L,3UL,0L,0x4DC3A2BD98AD5BD7L,18446744073709551609UL,4294967295UL,6UL,1UL,0x2810C4A4D08B0D3CL,3L},{0x83A5DF85L,3UL,0L,0x4DC3A2BD98AD5BD7L,18446744073709551609UL,4294967295UL,6UL,1UL,0x2810C4A4D08B0D3CL,3L},{0x83A5DF85L,3UL,0L,0x4DC3A2BD98AD5BD7L,18446744073709551609UL,4294967295UL,6UL,1UL,0x2810C4A4D08B0D3CL,3L}};
            int64_t l_172 = (-1L);
            int32_t l_173 = 8L;
            int i;
            l_169 = l_168[4];
            l_171[3] = l_170;
            l_173 = l_172;
        }
        unsigned int result = 0;
        result += l_165;
        atomic_add(&p_1231->l_special_values[12], result);
    }
    else
    { /* block id: 74 */
        (1 + 1);
    }
    return p_1231->g_55[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1231->g_34 p_1231->g_47 p_1231->g_109.f5
 * writes: p_1231->g_34 p_1231->g_47
 */
uint64_t  func_90(int32_t  p_91, uint8_t  p_92, struct S3 * p_1231)
{ /* block id: 30 */
    int32_t *l_97 = (void*)0;
    int64_t l_98[1];
    int32_t *l_103 = &p_1231->g_34;
    struct S1 *l_104 = &p_1231->g_105;
    int32_t l_126[6] = {0x40C16224L,2L,0x40C16224L,0x40C16224L,2L,0x40C16224L};
    int i;
    for (i = 0; i < 1; i++)
        l_98[i] = 0x2FEA2219E070DDB6L;
    l_97 = (void*)0;
    (*l_103) |= ((0x57L & l_98[0]) >= (safe_lshift_func_uint16_t_u_s((safe_mul_func_uint8_t_u_u(((void*)0 != &l_97), 0x9CL)), 0)));
    for (p_1231->g_47 = 0; (p_1231->g_47 <= 0); p_1231->g_47 += 1)
    { /* block id: 35 */
        struct S1 **l_106 = &l_104;
        struct S1 *l_108 = &p_1231->g_109;
        struct S1 **l_107 = &l_108;
        int32_t **l_110 = &p_1231->g_70;
        int32_t *l_127 = &p_1231->g_128;
        int i;
        if (l_98[p_1231->g_47])
            break;
        (*l_107) = ((*l_106) = l_104);
    }
    l_97 = &p_91;
    return p_1231->g_109.f5;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[14];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 14; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[14];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 14; i++)
            l_special_values[i] = 0;
    struct S3 c_1232;
    struct S3* p_1231 = &c_1232;
    struct S3 c_1233 = {
        1UL, // p_1231->g_7
        (-3L), // p_1231->g_17
        0x7A75E3AAL, // p_1231->g_34
        0x32L, // p_1231->g_43
        0x40AC715C01E8B95DL, // p_1231->g_47
        0L, // p_1231->g_54
        {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}, // p_1231->g_55
        &p_1231->g_17, // p_1231->g_70
        &p_1231->g_70, // p_1231->g_69
        {0x0BFA85FEL,0x53DA9491L,-1L,0x58L,0xF410D84A95BEA926L,0xAA81BD54L,0xCFCB35CAECAF6BF1L,0x3AL}, // p_1231->g_105
        {0x71FE85D9L,0x24318C78L,-1L,255UL,0x1317D21247B8CF32L,0xFF7C82FEL,0x626E4E173883CA8BL,0x2EL}, // p_1231->g_109
        (void*)0, // p_1231->g_125
        0x1997A29FL, // p_1231->g_128
        {4294967286UL,0UL,-1L,0L,0UL,0x5EB35AFFL,1UL,18446744073709551609UL,0L,0x5863DB9BC0F596ABL}, // p_1231->g_191
        65530UL, // p_1231->g_194
        {9UL,0x205401C7L,9UL,9UL,0x205401C7L,9UL,9UL,0x205401C7L}, // p_1231->g_202
        {0L,0x2078140AL,0x22FB0602L,0x1FL,0x1EFF73207411C626L,0xC986ED9DL,3UL,0x7FL}, // p_1231->g_207
        {{9L,0x3DL,(-3L),1L,(-3L),0x3DL,9L,0x0AL,7L,0x25L},{9L,0x3DL,(-3L),1L,(-3L),0x3DL,9L,0x0AL,7L,0x25L},{9L,0x3DL,(-3L),1L,(-3L),0x3DL,9L,0x0AL,7L,0x25L},{9L,0x3DL,(-3L),1L,(-3L),0x3DL,9L,0x0AL,7L,0x25L},{9L,0x3DL,(-3L),1L,(-3L),0x3DL,9L,0x0AL,7L,0x25L},{9L,0x3DL,(-3L),1L,(-3L),0x3DL,9L,0x0AL,7L,0x25L},{9L,0x3DL,(-3L),1L,(-3L),0x3DL,9L,0x0AL,7L,0x25L},{9L,0x3DL,(-3L),1L,(-3L),0x3DL,9L,0x0AL,7L,0x25L}}, // p_1231->g_211
        0xE9E6L, // p_1231->g_220
        {{0xC28517C2L,4294967288UL,0xC28517C2L,0xC28517C2L},{0xC28517C2L,4294967288UL,0xC28517C2L,0xC28517C2L},{0xC28517C2L,4294967288UL,0xC28517C2L,0xC28517C2L},{0xC28517C2L,4294967288UL,0xC28517C2L,0xC28517C2L},{0xC28517C2L,4294967288UL,0xC28517C2L,0xC28517C2L}}, // p_1231->g_222
        {{{{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL}}},{{{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL}}},{{{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL}}},{{{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL}}},{{{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL}}},{{{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL}}},{{{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0xD43C1946L,1L,1UL,0x1324C2A5EDB7C5D0L,0UL,0x5E803BC4A1AD5220L,-1L},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL},{-1L,0x759BE98CL,0x2C05FD57L,0x64L,0UL,0x7AF07C1DL,18446744073709551615UL,0x7EL}}}}, // p_1231->g_223
        (-1L), // p_1231->g_227
        {{&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227},{&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227},{&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227},{&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227},{&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227},{&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227,&p_1231->g_227}}, // p_1231->g_226
        &p_1231->g_105.f2, // p_1231->g_249
        &p_1231->g_191.f9, // p_1231->g_288
        {{0L,0UL,0x74AC043EL,2UL,0x688A73BF47646F51L,4294967293UL,8UL,0x64L},{0L,0UL,0x74AC043EL,2UL,0x688A73BF47646F51L,4294967293UL,8UL,0x64L},{0L,0UL,0x74AC043EL,2UL,0x688A73BF47646F51L,4294967293UL,8UL,0x64L},{0L,0UL,0x74AC043EL,2UL,0x688A73BF47646F51L,4294967293UL,8UL,0x64L},{0L,0UL,0x74AC043EL,2UL,0x688A73BF47646F51L,4294967293UL,8UL,0x64L},{0L,0UL,0x74AC043EL,2UL,0x688A73BF47646F51L,4294967293UL,8UL,0x64L},{0L,0UL,0x74AC043EL,2UL,0x688A73BF47646F51L,4294967293UL,8UL,0x64L},{0L,0UL,0x74AC043EL,2UL,0x688A73BF47646F51L,4294967293UL,8UL,0x64L},{0L,0UL,0x74AC043EL,2UL,0x688A73BF47646F51L,4294967293UL,8UL,0x64L}}, // p_1231->g_293
        {{0x48439092L,0xE70762A7L,-4L,255UL,6UL,1UL,0xF329B99F9DAF100AL,0x58L}}, // p_1231->g_306
        0x4DC80864L, // p_1231->g_307
        {0x669B4658L,4294967295UL,0x12B284CDL,0xECL,0xED8611DE466E0E22L,4294967286UL,0x2F471A302CC0F150L,0x45L}, // p_1231->g_321
        {1L,0x1B060480L,0x30C7360CL,0x07L,18446744073709551607UL,0x33606808L,3UL,-6L}, // p_1231->g_338
        {0UL,0L,-1L,0x1AECC361L,253UL,{4294967295UL,65526UL,0x3129C4BDL,0x02704FFF9482C7ECL,0xA867BA3A6B289DD4L,4294967295UL,0xFAL,0xBEB37EEA5A3F0917L,-3L,0x7335CC2434177EFEL}}, // p_1231->g_344
        {4294967292UL,0x4197L,0x5948001EL,1L,0x5792095E5563B1E9L,0x24E1B93BL,246UL,0x1A5A078A14CACBF7L,0L,0x30FFAECFF908808EL}, // p_1231->g_379
        {18446744073709551609UL,0x7CL,5L,0x1CED1034L,255UL,{0x96FF2EBCL,8UL,-4L,0x655DB0BA435A037DL,0x4EEEC51C66950D33L,0x825AB778L,0xD0L,1UL,0L,-10L}}, // p_1231->g_409
        &p_1231->g_207.f2, // p_1231->g_412
        &p_1231->g_412, // p_1231->g_411
        0xA2676024L, // p_1231->g_423
        1L, // p_1231->g_427
        {{{0xCAA398CBL,0UL,0x2BD5B4C3L,0x32CFCE5E37722A83L,0x21832E4715CC3E3FL,0x15E4CC73L,0x2BL,0x2415FF63AB216070L,-3L,-7L},{4294967290UL,0xAA21L,0x3CC4977DL,0x2C2BE25CDEC84863L,0x9C23E226CC590DA6L,1UL,0x5FL,1UL,0x2FDFD6C58548DE64L,0x7E7F3FDC5BA8F06AL},{4294967292UL,65527UL,1L,-1L,18446744073709551615UL,0UL,0xB3L,18446744073709551611UL,-1L,-1L},{4294967290UL,0xAA21L,0x3CC4977DL,0x2C2BE25CDEC84863L,0x9C23E226CC590DA6L,1UL,0x5FL,1UL,0x2FDFD6C58548DE64L,0x7E7F3FDC5BA8F06AL},{0xCAA398CBL,0UL,0x2BD5B4C3L,0x32CFCE5E37722A83L,0x21832E4715CC3E3FL,0x15E4CC73L,0x2BL,0x2415FF63AB216070L,-3L,-7L},{0xCAA398CBL,0UL,0x2BD5B4C3L,0x32CFCE5E37722A83L,0x21832E4715CC3E3FL,0x15E4CC73L,0x2BL,0x2415FF63AB216070L,-3L,-7L},{4294967290UL,0xAA21L,0x3CC4977DL,0x2C2BE25CDEC84863L,0x9C23E226CC590DA6L,1UL,0x5FL,1UL,0x2FDFD6C58548DE64L,0x7E7F3FDC5BA8F06AL}},{{0xCAA398CBL,0UL,0x2BD5B4C3L,0x32CFCE5E37722A83L,0x21832E4715CC3E3FL,0x15E4CC73L,0x2BL,0x2415FF63AB216070L,-3L,-7L},{4294967290UL,0xAA21L,0x3CC4977DL,0x2C2BE25CDEC84863L,0x9C23E226CC590DA6L,1UL,0x5FL,1UL,0x2FDFD6C58548DE64L,0x7E7F3FDC5BA8F06AL},{4294967292UL,65527UL,1L,-1L,18446744073709551615UL,0UL,0xB3L,18446744073709551611UL,-1L,-1L},{4294967290UL,0xAA21L,0x3CC4977DL,0x2C2BE25CDEC84863L,0x9C23E226CC590DA6L,1UL,0x5FL,1UL,0x2FDFD6C58548DE64L,0x7E7F3FDC5BA8F06AL},{0xCAA398CBL,0UL,0x2BD5B4C3L,0x32CFCE5E37722A83L,0x21832E4715CC3E3FL,0x15E4CC73L,0x2BL,0x2415FF63AB216070L,-3L,-7L},{0xCAA398CBL,0UL,0x2BD5B4C3L,0x32CFCE5E37722A83L,0x21832E4715CC3E3FL,0x15E4CC73L,0x2BL,0x2415FF63AB216070L,-3L,-7L},{4294967290UL,0xAA21L,0x3CC4977DL,0x2C2BE25CDEC84863L,0x9C23E226CC590DA6L,1UL,0x5FL,1UL,0x2FDFD6C58548DE64L,0x7E7F3FDC5BA8F06AL}}}, // p_1231->g_428
        (void*)0, // p_1231->g_432
        {0UL,0x1641L,-6L,0x241783E99A487544L,0UL,0x00C79895L,0x6CL,0xF36C03C98EF9AC62L,0x57162490B274E53DL,-9L}, // p_1231->g_436
        &p_1231->g_344, // p_1231->g_449
        (-1L), // p_1231->g_499
        (-5L), // p_1231->g_501
        1L, // p_1231->g_505
        65535UL, // p_1231->g_510
        9UL, // p_1231->g_542
        {{0x56E3L,0x56E3L},{0x56E3L,0x56E3L},{0x56E3L,0x56E3L},{0x56E3L,0x56E3L}}, // p_1231->g_604
        (void*)0, // p_1231->g_606
        0xBE9DL, // p_1231->g_664
        4294967295UL, // p_1231->g_665
        {18446744073709551615UL,0x1AL,0x6DAB78A92364230DL,0x79ACCF7BL,1UL,{1UL,0x26D2L,1L,5L,0xB01DBCB4F22EC508L,4294967295UL,0xF1L,18446744073709551615UL,0L,0x4BFF4266C06A2D68L}}, // p_1231->g_690
        {0xD5785CE5AC4FFC1BL,0L,0x044BE36DE6E13ADCL,0x1B3AE656L,251UL,{1UL,0x0735L,-1L,0L,9UL,0xC2E7E796L,0xB5L,1UL,0x17284A0690655915L,0x11C0A5B9D50ECC58L}}, // p_1231->g_694
        0x2CL, // p_1231->g_699
        (void*)0, // p_1231->g_714
        {{{0x51CAL},{0x51CAL},{0x51CAL},{0x51CAL},{0x51CAL}}}, // p_1231->g_734
        (void*)0, // p_1231->g_754
        &p_1231->g_754, // p_1231->g_753
        &p_1231->g_694, // p_1231->g_762
        &p_1231->g_690, // p_1231->g_792
        &p_1231->g_792, // p_1231->g_791
        &p_1231->g_69, // p_1231->g_821
        {&p_1231->g_338.f3}, // p_1231->g_834
        {18446744073709551609UL,-10L,1L,0x16717EE9L,1UL,{0x112F67F3L,0xCF06L,0x5621579BL,0x64080F57C40CC266L,0x96AA5E445B9F7EB6L,2UL,0xFAL,0x84EF0E7E3B83E2D2L,1L,0x1F5BC4E085B65621L}}, // p_1231->g_847
        {0x4E4650CAL,0x5EE36A97L,1L,8UL,18446744073709551615UL,0x4D22DDC5L,1UL,0x61L}, // p_1231->g_859
        253UL, // p_1231->g_885
        &p_1231->g_293[4], // p_1231->g_888
        {{{&p_1231->g_17,&p_1231->g_17,&p_1231->g_34,(void*)0},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_34,(void*)0},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_34,(void*)0},{&p_1231->g_17,&p_1231->g_17,&p_1231->g_34,(void*)0}}}, // p_1231->g_905
        {{{&p_1231->g_34,&p_1231->g_34,&p_1231->g_34,&p_1231->g_34},{&p_1231->g_34,&p_1231->g_34,&p_1231->g_34,&p_1231->g_34},{&p_1231->g_34,&p_1231->g_34,&p_1231->g_34,&p_1231->g_34}},{{&p_1231->g_34,&p_1231->g_34,&p_1231->g_34,&p_1231->g_34},{&p_1231->g_34,&p_1231->g_34,&p_1231->g_34,&p_1231->g_34},{&p_1231->g_34,&p_1231->g_34,&p_1231->g_34,&p_1231->g_34}}}, // p_1231->g_922
        255UL, // p_1231->g_1000
        (void*)0, // p_1231->g_1001
        18446744073709551615UL, // p_1231->g_1027
        {{0L,0x759D99B5L,0L,1UL,9UL,0x98114700L,1UL,-7L},{0L,0x759D99B5L,0L,1UL,9UL,0x98114700L,1UL,-7L},{0L,0x759D99B5L,0L,1UL,9UL,0x98114700L,1UL,-7L},{0L,0x759D99B5L,0L,1UL,9UL,0x98114700L,1UL,-7L},{0L,0x759D99B5L,0L,1UL,9UL,0x98114700L,1UL,-7L}}, // p_1231->g_1071
        {1UL,0UL,0x2BBC6E80L,0x6660E97438FA301DL,0x97E837E0C26A1641L,1UL,1UL,0x960E6030A54F3321L,0x57455CB8C86575D3L,0x3AA66031BB06855BL}, // p_1231->g_1153
        &p_1231->g_288, // p_1231->g_1183
        {&p_1231->g_1183,&p_1231->g_1183,&p_1231->g_1183,&p_1231->g_1183,&p_1231->g_1183,&p_1231->g_1183,&p_1231->g_1183,&p_1231->g_1183,&p_1231->g_1183,&p_1231->g_1183}, // p_1231->g_1182
        &p_1231->g_1182[0], // p_1231->g_1181
        &p_1231->g_542, // p_1231->g_1196
        &p_1231->g_1196, // p_1231->g_1195
        {0xF39783F0L,0x882BL,-1L,0x2E5EE587068A5CF0L,0xC9D1405B1427C3D6L,1UL,1UL,0xD9B5C7A906E9B5E4L,-5L,0x062F93CF660CF793L}, // p_1231->g_1221
        sequence_input[get_global_id(0)], // p_1231->global_0_offset
        sequence_input[get_global_id(1)], // p_1231->global_1_offset
        sequence_input[get_global_id(2)], // p_1231->global_2_offset
        sequence_input[get_local_id(0)], // p_1231->local_0_offset
        sequence_input[get_local_id(1)], // p_1231->local_1_offset
        sequence_input[get_local_id(2)], // p_1231->local_2_offset
        sequence_input[get_group_id(0)], // p_1231->group_0_offset
        sequence_input[get_group_id(1)], // p_1231->group_1_offset
        sequence_input[get_group_id(2)], // p_1231->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1232 = c_1233;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1231);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1231->g_7, "p_1231->g_7", print_hash_value);
    transparent_crc(p_1231->g_17, "p_1231->g_17", print_hash_value);
    transparent_crc(p_1231->g_34, "p_1231->g_34", print_hash_value);
    transparent_crc(p_1231->g_43, "p_1231->g_43", print_hash_value);
    transparent_crc(p_1231->g_47, "p_1231->g_47", print_hash_value);
    transparent_crc(p_1231->g_54, "p_1231->g_54", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1231->g_55[i], "p_1231->g_55[i]", print_hash_value);

    }
    transparent_crc(p_1231->g_105.f0, "p_1231->g_105.f0", print_hash_value);
    transparent_crc(p_1231->g_105.f1, "p_1231->g_105.f1", print_hash_value);
    transparent_crc(p_1231->g_105.f2, "p_1231->g_105.f2", print_hash_value);
    transparent_crc(p_1231->g_105.f3, "p_1231->g_105.f3", print_hash_value);
    transparent_crc(p_1231->g_105.f4, "p_1231->g_105.f4", print_hash_value);
    transparent_crc(p_1231->g_105.f5, "p_1231->g_105.f5", print_hash_value);
    transparent_crc(p_1231->g_105.f6, "p_1231->g_105.f6", print_hash_value);
    transparent_crc(p_1231->g_105.f7, "p_1231->g_105.f7", print_hash_value);
    transparent_crc(p_1231->g_109.f0, "p_1231->g_109.f0", print_hash_value);
    transparent_crc(p_1231->g_109.f1, "p_1231->g_109.f1", print_hash_value);
    transparent_crc(p_1231->g_109.f2, "p_1231->g_109.f2", print_hash_value);
    transparent_crc(p_1231->g_109.f3, "p_1231->g_109.f3", print_hash_value);
    transparent_crc(p_1231->g_109.f4, "p_1231->g_109.f4", print_hash_value);
    transparent_crc(p_1231->g_109.f5, "p_1231->g_109.f5", print_hash_value);
    transparent_crc(p_1231->g_109.f6, "p_1231->g_109.f6", print_hash_value);
    transparent_crc(p_1231->g_109.f7, "p_1231->g_109.f7", print_hash_value);
    transparent_crc(p_1231->g_128, "p_1231->g_128", print_hash_value);
    transparent_crc(p_1231->g_191.f0, "p_1231->g_191.f0", print_hash_value);
    transparent_crc(p_1231->g_191.f1, "p_1231->g_191.f1", print_hash_value);
    transparent_crc(p_1231->g_191.f2, "p_1231->g_191.f2", print_hash_value);
    transparent_crc(p_1231->g_191.f3, "p_1231->g_191.f3", print_hash_value);
    transparent_crc(p_1231->g_191.f4, "p_1231->g_191.f4", print_hash_value);
    transparent_crc(p_1231->g_191.f5, "p_1231->g_191.f5", print_hash_value);
    transparent_crc(p_1231->g_191.f6, "p_1231->g_191.f6", print_hash_value);
    transparent_crc(p_1231->g_191.f7, "p_1231->g_191.f7", print_hash_value);
    transparent_crc(p_1231->g_191.f8, "p_1231->g_191.f8", print_hash_value);
    transparent_crc(p_1231->g_191.f9, "p_1231->g_191.f9", print_hash_value);
    transparent_crc(p_1231->g_194, "p_1231->g_194", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1231->g_202[i], "p_1231->g_202[i]", print_hash_value);

    }
    transparent_crc(p_1231->g_207.f0, "p_1231->g_207.f0", print_hash_value);
    transparent_crc(p_1231->g_207.f1, "p_1231->g_207.f1", print_hash_value);
    transparent_crc(p_1231->g_207.f2, "p_1231->g_207.f2", print_hash_value);
    transparent_crc(p_1231->g_207.f3, "p_1231->g_207.f3", print_hash_value);
    transparent_crc(p_1231->g_207.f4, "p_1231->g_207.f4", print_hash_value);
    transparent_crc(p_1231->g_207.f5, "p_1231->g_207.f5", print_hash_value);
    transparent_crc(p_1231->g_207.f6, "p_1231->g_207.f6", print_hash_value);
    transparent_crc(p_1231->g_207.f7, "p_1231->g_207.f7", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1231->g_211[i][j], "p_1231->g_211[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1231->g_220, "p_1231->g_220", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1231->g_222[i][j], "p_1231->g_222[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1231->g_223[i][j][k].f0, "p_1231->g_223[i][j][k].f0", print_hash_value);
                transparent_crc(p_1231->g_223[i][j][k].f1, "p_1231->g_223[i][j][k].f1", print_hash_value);
                transparent_crc(p_1231->g_223[i][j][k].f2, "p_1231->g_223[i][j][k].f2", print_hash_value);
                transparent_crc(p_1231->g_223[i][j][k].f3, "p_1231->g_223[i][j][k].f3", print_hash_value);
                transparent_crc(p_1231->g_223[i][j][k].f4, "p_1231->g_223[i][j][k].f4", print_hash_value);
                transparent_crc(p_1231->g_223[i][j][k].f5, "p_1231->g_223[i][j][k].f5", print_hash_value);
                transparent_crc(p_1231->g_223[i][j][k].f6, "p_1231->g_223[i][j][k].f6", print_hash_value);
                transparent_crc(p_1231->g_223[i][j][k].f7, "p_1231->g_223[i][j][k].f7", print_hash_value);

            }
        }
    }
    transparent_crc(p_1231->g_227, "p_1231->g_227", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1231->g_293[i].f0, "p_1231->g_293[i].f0", print_hash_value);
        transparent_crc(p_1231->g_293[i].f1, "p_1231->g_293[i].f1", print_hash_value);
        transparent_crc(p_1231->g_293[i].f2, "p_1231->g_293[i].f2", print_hash_value);
        transparent_crc(p_1231->g_293[i].f3, "p_1231->g_293[i].f3", print_hash_value);
        transparent_crc(p_1231->g_293[i].f4, "p_1231->g_293[i].f4", print_hash_value);
        transparent_crc(p_1231->g_293[i].f5, "p_1231->g_293[i].f5", print_hash_value);
        transparent_crc(p_1231->g_293[i].f6, "p_1231->g_293[i].f6", print_hash_value);
        transparent_crc(p_1231->g_293[i].f7, "p_1231->g_293[i].f7", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1231->g_306[i].f0, "p_1231->g_306[i].f0", print_hash_value);
        transparent_crc(p_1231->g_306[i].f1, "p_1231->g_306[i].f1", print_hash_value);
        transparent_crc(p_1231->g_306[i].f2, "p_1231->g_306[i].f2", print_hash_value);
        transparent_crc(p_1231->g_306[i].f3, "p_1231->g_306[i].f3", print_hash_value);
        transparent_crc(p_1231->g_306[i].f4, "p_1231->g_306[i].f4", print_hash_value);
        transparent_crc(p_1231->g_306[i].f5, "p_1231->g_306[i].f5", print_hash_value);
        transparent_crc(p_1231->g_306[i].f6, "p_1231->g_306[i].f6", print_hash_value);
        transparent_crc(p_1231->g_306[i].f7, "p_1231->g_306[i].f7", print_hash_value);

    }
    transparent_crc(p_1231->g_307, "p_1231->g_307", print_hash_value);
    transparent_crc(p_1231->g_321.f0, "p_1231->g_321.f0", print_hash_value);
    transparent_crc(p_1231->g_321.f1, "p_1231->g_321.f1", print_hash_value);
    transparent_crc(p_1231->g_321.f2, "p_1231->g_321.f2", print_hash_value);
    transparent_crc(p_1231->g_321.f3, "p_1231->g_321.f3", print_hash_value);
    transparent_crc(p_1231->g_321.f4, "p_1231->g_321.f4", print_hash_value);
    transparent_crc(p_1231->g_321.f5, "p_1231->g_321.f5", print_hash_value);
    transparent_crc(p_1231->g_321.f6, "p_1231->g_321.f6", print_hash_value);
    transparent_crc(p_1231->g_321.f7, "p_1231->g_321.f7", print_hash_value);
    transparent_crc(p_1231->g_338.f0, "p_1231->g_338.f0", print_hash_value);
    transparent_crc(p_1231->g_338.f1, "p_1231->g_338.f1", print_hash_value);
    transparent_crc(p_1231->g_338.f2, "p_1231->g_338.f2", print_hash_value);
    transparent_crc(p_1231->g_338.f3, "p_1231->g_338.f3", print_hash_value);
    transparent_crc(p_1231->g_338.f4, "p_1231->g_338.f4", print_hash_value);
    transparent_crc(p_1231->g_338.f5, "p_1231->g_338.f5", print_hash_value);
    transparent_crc(p_1231->g_338.f6, "p_1231->g_338.f6", print_hash_value);
    transparent_crc(p_1231->g_338.f7, "p_1231->g_338.f7", print_hash_value);
    transparent_crc(p_1231->g_344.f0, "p_1231->g_344.f0", print_hash_value);
    transparent_crc(p_1231->g_344.f1, "p_1231->g_344.f1", print_hash_value);
    transparent_crc(p_1231->g_344.f2, "p_1231->g_344.f2", print_hash_value);
    transparent_crc(p_1231->g_344.f3, "p_1231->g_344.f3", print_hash_value);
    transparent_crc(p_1231->g_344.f4, "p_1231->g_344.f4", print_hash_value);
    transparent_crc(p_1231->g_344.f5.f0, "p_1231->g_344.f5.f0", print_hash_value);
    transparent_crc(p_1231->g_344.f5.f1, "p_1231->g_344.f5.f1", print_hash_value);
    transparent_crc(p_1231->g_344.f5.f2, "p_1231->g_344.f5.f2", print_hash_value);
    transparent_crc(p_1231->g_344.f5.f3, "p_1231->g_344.f5.f3", print_hash_value);
    transparent_crc(p_1231->g_344.f5.f4, "p_1231->g_344.f5.f4", print_hash_value);
    transparent_crc(p_1231->g_344.f5.f5, "p_1231->g_344.f5.f5", print_hash_value);
    transparent_crc(p_1231->g_344.f5.f6, "p_1231->g_344.f5.f6", print_hash_value);
    transparent_crc(p_1231->g_344.f5.f7, "p_1231->g_344.f5.f7", print_hash_value);
    transparent_crc(p_1231->g_344.f5.f8, "p_1231->g_344.f5.f8", print_hash_value);
    transparent_crc(p_1231->g_344.f5.f9, "p_1231->g_344.f5.f9", print_hash_value);
    transparent_crc(p_1231->g_379.f0, "p_1231->g_379.f0", print_hash_value);
    transparent_crc(p_1231->g_379.f1, "p_1231->g_379.f1", print_hash_value);
    transparent_crc(p_1231->g_379.f2, "p_1231->g_379.f2", print_hash_value);
    transparent_crc(p_1231->g_379.f3, "p_1231->g_379.f3", print_hash_value);
    transparent_crc(p_1231->g_379.f4, "p_1231->g_379.f4", print_hash_value);
    transparent_crc(p_1231->g_379.f5, "p_1231->g_379.f5", print_hash_value);
    transparent_crc(p_1231->g_379.f6, "p_1231->g_379.f6", print_hash_value);
    transparent_crc(p_1231->g_379.f7, "p_1231->g_379.f7", print_hash_value);
    transparent_crc(p_1231->g_379.f8, "p_1231->g_379.f8", print_hash_value);
    transparent_crc(p_1231->g_379.f9, "p_1231->g_379.f9", print_hash_value);
    transparent_crc(p_1231->g_409.f0, "p_1231->g_409.f0", print_hash_value);
    transparent_crc(p_1231->g_409.f1, "p_1231->g_409.f1", print_hash_value);
    transparent_crc(p_1231->g_409.f2, "p_1231->g_409.f2", print_hash_value);
    transparent_crc(p_1231->g_409.f3, "p_1231->g_409.f3", print_hash_value);
    transparent_crc(p_1231->g_409.f4, "p_1231->g_409.f4", print_hash_value);
    transparent_crc(p_1231->g_409.f5.f0, "p_1231->g_409.f5.f0", print_hash_value);
    transparent_crc(p_1231->g_409.f5.f1, "p_1231->g_409.f5.f1", print_hash_value);
    transparent_crc(p_1231->g_409.f5.f2, "p_1231->g_409.f5.f2", print_hash_value);
    transparent_crc(p_1231->g_409.f5.f3, "p_1231->g_409.f5.f3", print_hash_value);
    transparent_crc(p_1231->g_409.f5.f4, "p_1231->g_409.f5.f4", print_hash_value);
    transparent_crc(p_1231->g_409.f5.f5, "p_1231->g_409.f5.f5", print_hash_value);
    transparent_crc(p_1231->g_409.f5.f6, "p_1231->g_409.f5.f6", print_hash_value);
    transparent_crc(p_1231->g_409.f5.f7, "p_1231->g_409.f5.f7", print_hash_value);
    transparent_crc(p_1231->g_409.f5.f8, "p_1231->g_409.f5.f8", print_hash_value);
    transparent_crc(p_1231->g_409.f5.f9, "p_1231->g_409.f5.f9", print_hash_value);
    transparent_crc(p_1231->g_423, "p_1231->g_423", print_hash_value);
    transparent_crc(p_1231->g_427, "p_1231->g_427", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1231->g_428[i][j].f0, "p_1231->g_428[i][j].f0", print_hash_value);
            transparent_crc(p_1231->g_428[i][j].f1, "p_1231->g_428[i][j].f1", print_hash_value);
            transparent_crc(p_1231->g_428[i][j].f2, "p_1231->g_428[i][j].f2", print_hash_value);
            transparent_crc(p_1231->g_428[i][j].f3, "p_1231->g_428[i][j].f3", print_hash_value);
            transparent_crc(p_1231->g_428[i][j].f4, "p_1231->g_428[i][j].f4", print_hash_value);
            transparent_crc(p_1231->g_428[i][j].f5, "p_1231->g_428[i][j].f5", print_hash_value);
            transparent_crc(p_1231->g_428[i][j].f6, "p_1231->g_428[i][j].f6", print_hash_value);
            transparent_crc(p_1231->g_428[i][j].f7, "p_1231->g_428[i][j].f7", print_hash_value);
            transparent_crc(p_1231->g_428[i][j].f8, "p_1231->g_428[i][j].f8", print_hash_value);
            transparent_crc(p_1231->g_428[i][j].f9, "p_1231->g_428[i][j].f9", print_hash_value);

        }
    }
    transparent_crc(p_1231->g_436.f0, "p_1231->g_436.f0", print_hash_value);
    transparent_crc(p_1231->g_436.f1, "p_1231->g_436.f1", print_hash_value);
    transparent_crc(p_1231->g_436.f2, "p_1231->g_436.f2", print_hash_value);
    transparent_crc(p_1231->g_436.f3, "p_1231->g_436.f3", print_hash_value);
    transparent_crc(p_1231->g_436.f4, "p_1231->g_436.f4", print_hash_value);
    transparent_crc(p_1231->g_436.f5, "p_1231->g_436.f5", print_hash_value);
    transparent_crc(p_1231->g_436.f6, "p_1231->g_436.f6", print_hash_value);
    transparent_crc(p_1231->g_436.f7, "p_1231->g_436.f7", print_hash_value);
    transparent_crc(p_1231->g_436.f8, "p_1231->g_436.f8", print_hash_value);
    transparent_crc(p_1231->g_436.f9, "p_1231->g_436.f9", print_hash_value);
    transparent_crc(p_1231->g_499, "p_1231->g_499", print_hash_value);
    transparent_crc(p_1231->g_501, "p_1231->g_501", print_hash_value);
    transparent_crc(p_1231->g_505, "p_1231->g_505", print_hash_value);
    transparent_crc(p_1231->g_510, "p_1231->g_510", print_hash_value);
    transparent_crc(p_1231->g_542, "p_1231->g_542", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1231->g_604[i][j], "p_1231->g_604[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1231->g_664, "p_1231->g_664", print_hash_value);
    transparent_crc(p_1231->g_665, "p_1231->g_665", print_hash_value);
    transparent_crc(p_1231->g_690.f0, "p_1231->g_690.f0", print_hash_value);
    transparent_crc(p_1231->g_690.f1, "p_1231->g_690.f1", print_hash_value);
    transparent_crc(p_1231->g_690.f2, "p_1231->g_690.f2", print_hash_value);
    transparent_crc(p_1231->g_690.f3, "p_1231->g_690.f3", print_hash_value);
    transparent_crc(p_1231->g_690.f4, "p_1231->g_690.f4", print_hash_value);
    transparent_crc(p_1231->g_690.f5.f0, "p_1231->g_690.f5.f0", print_hash_value);
    transparent_crc(p_1231->g_690.f5.f1, "p_1231->g_690.f5.f1", print_hash_value);
    transparent_crc(p_1231->g_690.f5.f2, "p_1231->g_690.f5.f2", print_hash_value);
    transparent_crc(p_1231->g_690.f5.f3, "p_1231->g_690.f5.f3", print_hash_value);
    transparent_crc(p_1231->g_690.f5.f4, "p_1231->g_690.f5.f4", print_hash_value);
    transparent_crc(p_1231->g_690.f5.f5, "p_1231->g_690.f5.f5", print_hash_value);
    transparent_crc(p_1231->g_690.f5.f6, "p_1231->g_690.f5.f6", print_hash_value);
    transparent_crc(p_1231->g_690.f5.f7, "p_1231->g_690.f5.f7", print_hash_value);
    transparent_crc(p_1231->g_690.f5.f8, "p_1231->g_690.f5.f8", print_hash_value);
    transparent_crc(p_1231->g_690.f5.f9, "p_1231->g_690.f5.f9", print_hash_value);
    transparent_crc(p_1231->g_694.f0, "p_1231->g_694.f0", print_hash_value);
    transparent_crc(p_1231->g_694.f1, "p_1231->g_694.f1", print_hash_value);
    transparent_crc(p_1231->g_694.f2, "p_1231->g_694.f2", print_hash_value);
    transparent_crc(p_1231->g_694.f3, "p_1231->g_694.f3", print_hash_value);
    transparent_crc(p_1231->g_694.f4, "p_1231->g_694.f4", print_hash_value);
    transparent_crc(p_1231->g_694.f5.f0, "p_1231->g_694.f5.f0", print_hash_value);
    transparent_crc(p_1231->g_694.f5.f1, "p_1231->g_694.f5.f1", print_hash_value);
    transparent_crc(p_1231->g_694.f5.f2, "p_1231->g_694.f5.f2", print_hash_value);
    transparent_crc(p_1231->g_694.f5.f3, "p_1231->g_694.f5.f3", print_hash_value);
    transparent_crc(p_1231->g_694.f5.f4, "p_1231->g_694.f5.f4", print_hash_value);
    transparent_crc(p_1231->g_694.f5.f5, "p_1231->g_694.f5.f5", print_hash_value);
    transparent_crc(p_1231->g_694.f5.f6, "p_1231->g_694.f5.f6", print_hash_value);
    transparent_crc(p_1231->g_694.f5.f7, "p_1231->g_694.f5.f7", print_hash_value);
    transparent_crc(p_1231->g_694.f5.f8, "p_1231->g_694.f5.f8", print_hash_value);
    transparent_crc(p_1231->g_694.f5.f9, "p_1231->g_694.f5.f9", print_hash_value);
    transparent_crc(p_1231->g_699, "p_1231->g_699", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1231->g_734[i][j][k], "p_1231->g_734[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1231->g_847.f0, "p_1231->g_847.f0", print_hash_value);
    transparent_crc(p_1231->g_847.f1, "p_1231->g_847.f1", print_hash_value);
    transparent_crc(p_1231->g_847.f2, "p_1231->g_847.f2", print_hash_value);
    transparent_crc(p_1231->g_847.f3, "p_1231->g_847.f3", print_hash_value);
    transparent_crc(p_1231->g_847.f4, "p_1231->g_847.f4", print_hash_value);
    transparent_crc(p_1231->g_847.f5.f0, "p_1231->g_847.f5.f0", print_hash_value);
    transparent_crc(p_1231->g_847.f5.f1, "p_1231->g_847.f5.f1", print_hash_value);
    transparent_crc(p_1231->g_847.f5.f2, "p_1231->g_847.f5.f2", print_hash_value);
    transparent_crc(p_1231->g_847.f5.f3, "p_1231->g_847.f5.f3", print_hash_value);
    transparent_crc(p_1231->g_847.f5.f4, "p_1231->g_847.f5.f4", print_hash_value);
    transparent_crc(p_1231->g_847.f5.f5, "p_1231->g_847.f5.f5", print_hash_value);
    transparent_crc(p_1231->g_847.f5.f6, "p_1231->g_847.f5.f6", print_hash_value);
    transparent_crc(p_1231->g_847.f5.f7, "p_1231->g_847.f5.f7", print_hash_value);
    transparent_crc(p_1231->g_847.f5.f8, "p_1231->g_847.f5.f8", print_hash_value);
    transparent_crc(p_1231->g_847.f5.f9, "p_1231->g_847.f5.f9", print_hash_value);
    transparent_crc(p_1231->g_859.f0, "p_1231->g_859.f0", print_hash_value);
    transparent_crc(p_1231->g_859.f1, "p_1231->g_859.f1", print_hash_value);
    transparent_crc(p_1231->g_859.f2, "p_1231->g_859.f2", print_hash_value);
    transparent_crc(p_1231->g_859.f3, "p_1231->g_859.f3", print_hash_value);
    transparent_crc(p_1231->g_859.f4, "p_1231->g_859.f4", print_hash_value);
    transparent_crc(p_1231->g_859.f5, "p_1231->g_859.f5", print_hash_value);
    transparent_crc(p_1231->g_859.f6, "p_1231->g_859.f6", print_hash_value);
    transparent_crc(p_1231->g_859.f7, "p_1231->g_859.f7", print_hash_value);
    transparent_crc(p_1231->g_885, "p_1231->g_885", print_hash_value);
    transparent_crc(p_1231->g_1000, "p_1231->g_1000", print_hash_value);
    transparent_crc(p_1231->g_1027, "p_1231->g_1027", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1231->g_1071[i].f0, "p_1231->g_1071[i].f0", print_hash_value);
        transparent_crc(p_1231->g_1071[i].f1, "p_1231->g_1071[i].f1", print_hash_value);
        transparent_crc(p_1231->g_1071[i].f2, "p_1231->g_1071[i].f2", print_hash_value);
        transparent_crc(p_1231->g_1071[i].f3, "p_1231->g_1071[i].f3", print_hash_value);
        transparent_crc(p_1231->g_1071[i].f4, "p_1231->g_1071[i].f4", print_hash_value);
        transparent_crc(p_1231->g_1071[i].f5, "p_1231->g_1071[i].f5", print_hash_value);
        transparent_crc(p_1231->g_1071[i].f6, "p_1231->g_1071[i].f6", print_hash_value);
        transparent_crc(p_1231->g_1071[i].f7, "p_1231->g_1071[i].f7", print_hash_value);

    }
    transparent_crc(p_1231->g_1153.f0, "p_1231->g_1153.f0", print_hash_value);
    transparent_crc(p_1231->g_1153.f1, "p_1231->g_1153.f1", print_hash_value);
    transparent_crc(p_1231->g_1153.f2, "p_1231->g_1153.f2", print_hash_value);
    transparent_crc(p_1231->g_1153.f3, "p_1231->g_1153.f3", print_hash_value);
    transparent_crc(p_1231->g_1153.f4, "p_1231->g_1153.f4", print_hash_value);
    transparent_crc(p_1231->g_1153.f5, "p_1231->g_1153.f5", print_hash_value);
    transparent_crc(p_1231->g_1153.f6, "p_1231->g_1153.f6", print_hash_value);
    transparent_crc(p_1231->g_1153.f7, "p_1231->g_1153.f7", print_hash_value);
    transparent_crc(p_1231->g_1153.f8, "p_1231->g_1153.f8", print_hash_value);
    transparent_crc(p_1231->g_1153.f9, "p_1231->g_1153.f9", print_hash_value);
    transparent_crc(p_1231->g_1221.f0, "p_1231->g_1221.f0", print_hash_value);
    transparent_crc(p_1231->g_1221.f1, "p_1231->g_1221.f1", print_hash_value);
    transparent_crc(p_1231->g_1221.f2, "p_1231->g_1221.f2", print_hash_value);
    transparent_crc(p_1231->g_1221.f3, "p_1231->g_1221.f3", print_hash_value);
    transparent_crc(p_1231->g_1221.f4, "p_1231->g_1221.f4", print_hash_value);
    transparent_crc(p_1231->g_1221.f5, "p_1231->g_1221.f5", print_hash_value);
    transparent_crc(p_1231->g_1221.f6, "p_1231->g_1221.f6", print_hash_value);
    transparent_crc(p_1231->g_1221.f7, "p_1231->g_1221.f7", print_hash_value);
    transparent_crc(p_1231->g_1221.f8, "p_1231->g_1221.f8", print_hash_value);
    transparent_crc(p_1231->g_1221.f9, "p_1231->g_1221.f9", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 14; i++)
            transparent_crc(p_1231->g_special_values[i + 14 * get_linear_group_id()], "p_1231->g_special_values[i + 14 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 14; i++)
            transparent_crc(p_1231->l_special_values[i], "p_1231->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
