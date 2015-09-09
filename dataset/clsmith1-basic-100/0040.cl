// ---fake_divergence -g 75,17,1 -l 25,1,1
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


// Seed: 40

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
};

union U1 {
   volatile int8_t * volatile  f0;
   int64_t  f1;
   volatile int8_t  f2;
   uint64_t  f3;
};

struct S2 {
    int32_t g_2;
    int16_t g_5[7];
    volatile int32_t g_6[8];
    volatile int32_t g_7;
    volatile int32_t g_8;
    int32_t g_9;
    volatile int32_t g_11;
    int32_t g_12;
    int8_t g_17;
    int32_t g_53;
    int8_t g_69[2];
    uint32_t g_70;
    uint64_t g_96;
    union U1 g_104;
    union U1 g_106;
    volatile union U1 *g_114;
    union U0 g_115;
    union U1 g_117;
    int64_t g_131[2];
    uint8_t g_150[9];
    int32_t g_154[6][8];
    uint16_t g_157;
    uint32_t g_169;
    uint32_t g_178;
    int16_t *g_179[8][3];
    union U1 g_197;
    uint32_t g_216[4];
    uint8_t g_235;
    int64_t g_275;
    int16_t g_278;
    int16_t g_283;
    int32_t g_286[3];
    int32_t *g_307;
    int8_t g_321;
    int16_t g_327;
    uint16_t g_345;
    int32_t g_374;
    uint16_t g_385;
    union U1 g_427;
    uint64_t *g_491;
    uint64_t **g_490;
    uint64_t g_551;
    union U1 g_583;
    union U1 g_602[2][6][2];
    union U0 * volatile *g_655;
    union U1 g_668[3][7][3];
    union U1 g_670[1][1];
    int64_t g_676[8];
    uint8_t g_680;
    int8_t g_683;
    uint64_t g_730[5][9];
    int8_t g_739;
    int8_t *g_738;
    uint64_t g_771[5];
    uint32_t g_807;
    int16_t g_820;
    uint32_t g_849;
    int64_t *g_855;
    int64_t **g_854;
    uint8_t *g_878;
    int32_t ** volatile g_898[9];
    int32_t ** volatile g_899[3][9];
    int32_t ** volatile g_900;
    union U0 *g_913;
    union U0 **g_912;
    uint16_t * volatile g_917;
    uint16_t * volatile * volatile g_916;
    union U1 g_955;
    int32_t ** volatile g_965;
    int32_t ** volatile g_968[7][2][1];
    int32_t ** volatile g_969;
    union U1 g_982[3];
    int8_t g_987[1];
    int32_t ** volatile g_988;
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
int16_t  func_1(struct S2 * p_989);
int8_t  func_20(union U0  p_21, int32_t  p_22, int16_t  p_23, struct S2 * p_989);
union U0  func_24(int8_t * p_25, int32_t  p_26, uint32_t  p_27, int64_t  p_28, int8_t * p_29, struct S2 * p_989);
int8_t * func_30(uint64_t  p_31, int64_t  p_32, struct S2 * p_989);
uint16_t  func_35(uint32_t  p_36, uint8_t  p_37, int8_t * p_38, uint32_t  p_39, struct S2 * p_989);
int8_t * func_42(uint32_t  p_43, int32_t  p_44, struct S2 * p_989);
uint64_t  func_47(int32_t  p_48, int8_t * p_49, int8_t * p_50, struct S2 * p_989);
uint8_t  func_75(uint32_t  p_76, int32_t * p_77, int32_t * p_78, uint16_t  p_79, struct S2 * p_989);
uint16_t  func_84(int64_t  p_85, struct S2 * p_989);
int32_t  func_91(int8_t * p_92, int8_t * p_93, int32_t * p_94, struct S2 * p_989);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_989->g_2 p_989->g_9 p_989->g_6 p_989->g_11 p_989->g_12 p_989->g_17 p_989->g_5 p_989->g_70 p_989->g_53 p_989->g_114 p_989->g_115 p_989->g_96 p_989->g_131 p_989->g_69 p_989->g_154 p_989->g_115.f0 p_989->g_169 p_989->g_104.f3 p_989->g_178 p_989->g_216 p_989->g_150 p_989->g_235 p_989->g_157 p_989->g_286 p_989->g_321 p_989->g_278 p_989->g_327 p_989->g_374 p_989->g_275 p_989->g_345 p_989->g_385 p_989->g_283 p_989->g_490 p_989->g_680 p_989->g_676 p_989->g_491 p_989->g_551 p_989->g_683 p_989->g_738 p_989->g_739 p_989->g_807 p_989->g_820 p_989->g_849 p_989->g_878 p_989->g_916 p_989->g_917 p_989->g_955 p_989->g_965 p_989->g_982 p_989->g_771 p_989->g_987 p_989->g_988
 * writes: p_989->g_2 p_989->g_9 p_989->g_7 p_989->g_12 p_989->g_70 p_989->g_96 p_989->g_53 p_989->g_69 p_989->g_131 p_989->g_5 p_989->g_104.f3 p_989->g_150 p_989->g_154 p_989->g_157 p_989->g_169 p_989->g_178 p_989->g_179 p_989->g_216 p_989->g_17 p_989->g_235 p_989->g_283 p_989->g_286 p_989->g_278 p_989->g_307 p_989->g_327 p_989->g_345 p_989->g_385 p_989->g_275 p_989->g_321 p_989->g_680 p_989->g_683 p_989->g_730 p_989->g_771 p_989->g_807 p_989->g_820 p_989->g_849 p_989->g_551 p_989->g_739 p_989->g_676 p_989->g_491
 */
int16_t  func_1(struct S2 * p_989)
{ /* block id: 4 */
    int32_t l_13 = 0x55228033L;
    int8_t *l_16 = &p_989->g_17;
    int8_t *l_846 = &p_989->g_17;
    int32_t *l_897 = &p_989->g_9;
    union U0 *l_911 = &p_989->g_115;
    union U0 **l_910 = &l_911;
    union U0 ***l_952 = &p_989->g_912;
    uint16_t *l_981 = &p_989->g_157;
    uint16_t **l_980 = &l_981;
    for (p_989->g_2 = (-14); (p_989->g_2 == 21); p_989->g_2 = safe_add_func_int64_t_s_s(p_989->g_2, 8))
    { /* block id: 7 */
        int8_t *l_41 = (void*)0;
        int32_t l_795 = 0L;
        int16_t l_838[9][2];
        int8_t l_847 = 0x71L;
        uint32_t l_914 = 0x7CCBE23EL;
        uint64_t *l_983 = &p_989->g_551;
        int64_t l_985 = (-1L);
        int i, j;
        for (i = 0; i < 9; i++)
        {
            for (j = 0; j < 2; j++)
                l_838[i][j] = 0x4E62L;
        }
        for (p_989->g_9 = 0; (p_989->g_9 <= 6); p_989->g_9 += 1)
        { /* block id: 10 */
            volatile int32_t *l_10[5][9] = {{&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3]},{&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3]},{&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3]},{&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3]},{&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3],&p_989->g_6[3]}};
            int64_t **l_874 = (void*)0;
            int32_t l_896 = 0x48043446L;
            uint16_t * volatile * volatile l_918[2];
            uint8_t *l_947 = &p_989->g_680;
            union U0 ****l_953 = &l_952;
            int32_t *l_954 = &p_989->g_53;
            int16_t *l_975 = &p_989->g_278;
            int i, j;
            for (i = 0; i < 2; i++)
                l_918[i] = &p_989->g_917;
            p_989->g_7 = p_989->g_6[5];
            for (p_989->g_12 = 6; (p_989->g_12 >= 1); p_989->g_12 -= 1)
            { /* block id: 14 */
                uint16_t l_40 = 65535UL;
                int8_t **l_845[7] = {&p_989->g_738,(void*)0,&p_989->g_738,&p_989->g_738,(void*)0,&p_989->g_738,&p_989->g_738};
                uint32_t *l_848 = &p_989->g_849;
                int i;
                l_795 = ((p_989->g_11 || p_989->g_6[7]) , ((l_13 == (~(p_989->g_2 , 0x8846L))) < ((*l_848) &= (safe_div_func_int8_t_s_s((((l_16 != (l_846 = ((safe_mul_func_uint8_t_u_u(p_989->g_11, func_20(func_24(func_30((((safe_mod_func_uint16_t_u_u(func_35(p_989->g_12, l_40, l_41, p_989->g_17, p_989), 0xD0FBL)) , (-1L)) , 1UL), l_795, p_989), l_40, l_13, l_40, &p_989->g_739, p_989), l_40, l_838[7][1], p_989))) , &p_989->g_683))) ^ 0x58F995E1L) , l_847), (*p_989->g_738))))));
            }
            for (p_989->g_551 = 0; (p_989->g_551 <= 6); p_989->g_551 += 1)
            { /* block id: 389 */
                int64_t *l_853 = &p_989->g_131[1];
                int64_t **l_852 = &l_853;
                int64_t ***l_856 = &p_989->g_854;
                int16_t l_859 = 9L;
                uint32_t l_881 = 4294967288UL;
                for (p_989->g_385 = 0; (p_989->g_385 <= 3); p_989->g_385 += 1)
                { /* block id: 392 */
                    for (p_989->g_739 = 4; (p_989->g_739 >= 0); p_989->g_739 -= 1)
                    { /* block id: 395 */
                        int i;
                        return p_989->g_216[p_989->g_385];
                    }
                }
            }
            if ((l_13 = ((safe_lshift_func_int8_t_s_u((safe_rshift_func_uint8_t_u_s((*p_989->g_878), (safe_mod_func_int8_t_s_s(l_795, (-1L))))), (safe_add_func_uint32_t_u_u((+0UL), ((*l_954) ^= ((safe_mul_func_int8_t_s_s((+(-1L)), (safe_sub_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((safe_div_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s(((*l_947) |= GROUP_DIVERGE(1, 1)), ((*l_897) , 0L))), (l_838[7][0] && ((safe_div_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((((*l_953) = l_952) != &l_910), (**p_989->g_916))), 0x7EL)) < 0L)))), (*p_989->g_878))), 7)), (**p_989->g_490))))) | l_914)))))) | (*l_897))))
            { /* block id: 440 */
                uint8_t l_958 = 0x7DL;
                int8_t l_961[7] = {0x18L,0x18L,0x18L,0x18L,0x18L,0x18L,0x18L};
                int64_t *l_962 = &p_989->g_676[1];
                uint32_t l_963 = 0x4BB2855DL;
                int16_t *l_964 = &p_989->g_5[4];
                int i;
                l_795 = ((((*l_964) = (p_989->g_955 , ((safe_mod_func_int32_t_s_s(l_958, (safe_lshift_func_uint8_t_u_u(((**p_989->g_490) || (*l_954)), 7)))) || (((*l_962) = l_961[6]) && l_963)))) >= l_795) & FAKE_DIVERGE(p_989->group_1_offset, get_group_id(1), 10));
                (*p_989->g_965) = &l_795;
            }
            else
            { /* block id: 445 */
                uint16_t l_986 = 65531UL;
                for (p_989->g_807 = 0; (p_989->g_807 < 53); p_989->g_807 = safe_add_func_int32_t_s_s(p_989->g_807, 3))
                { /* block id: 448 */
                    int32_t **l_970[4];
                    int32_t l_984 = 1L;
                    int i;
                    for (i = 0; i < 4; i++)
                        l_970[i] = (void*)0;
                    l_897 = &l_896;
                    p_989->g_286[2] ^= ((*l_897) = (safe_rshift_func_int16_t_s_s((((*p_989->g_878) = (((safe_sub_func_uint64_t_u_u((l_975 == ((((!(((((safe_lshift_func_int16_t_s_u(((safe_mul_func_uint8_t_u_u((0x1748C7E5FFA753E2L != (((*p_989->g_490) = (((void*)0 != l_980) , (p_989->g_982[1] , (*p_989->g_490)))) != l_983)), ((p_989->g_150[3] && 0xBDFA4576L) , 1L))) && p_989->g_216[3]), 11)) , 6UL) , l_984) , p_989->g_771[2]) , l_838[7][1])) ^ 0x19A4L) ^ l_985) , &p_989->g_283)), 0xDEAC8A560248248AL)) != (*l_954)) | (*l_897))) && 0x70L), l_986)));
                    return p_989->g_987[0];
                }
            }
        }
        (*p_989->g_988) = &l_795;
        return l_838[7][1];
    }
    return (*l_897);
}


/* ------------------------------------------ */
/* 
 * reads : p_989->g_491 p_989->g_96 p_989->g_286
 * writes: p_989->g_96 p_989->g_286
 */
int8_t  func_20(union U0  p_21, int32_t  p_22, int16_t  p_23, struct S2 * p_989)
{ /* block id: 379 */
    int16_t l_842[9][1][5] = {{{0x5931L,0x5931L,0x5931L,0x5931L,0x5931L}},{{0x5931L,0x5931L,0x5931L,0x5931L,0x5931L}},{{0x5931L,0x5931L,0x5931L,0x5931L,0x5931L}},{{0x5931L,0x5931L,0x5931L,0x5931L,0x5931L}},{{0x5931L,0x5931L,0x5931L,0x5931L,0x5931L}},{{0x5931L,0x5931L,0x5931L,0x5931L,0x5931L}},{{0x5931L,0x5931L,0x5931L,0x5931L,0x5931L}},{{0x5931L,0x5931L,0x5931L,0x5931L,0x5931L}},{{0x5931L,0x5931L,0x5931L,0x5931L,0x5931L}}};
    union U0 *l_843 = &p_989->g_115;
    int32_t *l_844 = &p_989->g_286[2];
    int i, j, k;
    (*l_844) &= ((--(*p_989->g_491)) , (((safe_unary_minus_func_uint16_t_u(l_842[3][0][0])) , l_843) == (void*)0));
    return p_23;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_989->g_307
 */
union U0  func_24(int8_t * p_25, int32_t  p_26, uint32_t  p_27, int64_t  p_28, int8_t * p_29, struct S2 * p_989)
{ /* block id: 368 */
    uint16_t l_822 = 0x5028L;
    int32_t *l_827[5];
    int32_t *l_829 = &p_989->g_12;
    int32_t l_830 = (-1L);
    uint16_t l_831 = 0x3627L;
    uint32_t l_834 = 4294967295UL;
    union U0 l_837[6][6][6] = {{{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}},{{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}},{{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}},{{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}},{{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}},{{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}}};
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_827[i] = (void*)0;
    l_822--;
    for (l_822 = 0; (l_822 >= 28); ++l_822)
    { /* block id: 372 */
        int32_t **l_828 = &p_989->g_307;
        (*l_828) = l_827[1];
        (*l_828) = l_829;
    }
    l_831++;
    --l_834;
    return l_837[5][0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_989->g_807 p_989->g_235 p_989->g_321 p_989->g_491 p_989->g_96 p_989->g_738 p_989->g_739 p_989->g_820
 * writes: p_989->g_807 p_989->g_286 p_989->g_53 p_989->g_820
 */
int8_t * func_30(uint64_t  p_31, int64_t  p_32, struct S2 * p_989)
{ /* block id: 357 */
    int32_t *l_796[9] = {&p_989->g_286[2],&p_989->g_286[2],&p_989->g_286[2],&p_989->g_286[2],&p_989->g_286[2],&p_989->g_286[2],&p_989->g_286[2],&p_989->g_286[2],&p_989->g_286[2]};
    uint8_t l_797 = 0UL;
    union U0 *l_819[6] = {&p_989->g_115,&p_989->g_115,&p_989->g_115,&p_989->g_115,&p_989->g_115,&p_989->g_115};
    union U0 **l_818 = &l_819[5];
    int8_t *l_821 = (void*)0;
    int i;
    l_797--;
    for (p_31 = 0; (p_31 != 37); ++p_31)
    { /* block id: 361 */
        int32_t l_802 = 0L;
        int32_t l_803 = (-1L);
        int32_t l_804 = 0x500D8795L;
        int32_t l_805 = (-1L);
        int32_t l_806 = 0x214AED50L;
        p_989->g_807++;
    }
    p_989->g_820 &= ((2L > p_989->g_235) , ((safe_sub_func_uint8_t_u_u(p_31, ((p_989->g_321 & (safe_add_func_int8_t_s_s(((+(safe_sub_func_int32_t_s_s(0x302CF578L, ((p_989->g_53 = (p_989->g_286[2] = (p_31 < ((*p_989->g_491) == ((-10L) == (l_818 == &l_819[5])))))) >= 1L)))) == p_31), (*p_989->g_738)))) > (-1L)))) , 0x513E172FL));
    return l_821;
}


/* ------------------------------------------ */
/* 
 * reads : p_989->g_5 p_989->g_70 p_989->g_53 p_989->g_114 p_989->g_115 p_989->g_96 p_989->g_17 p_989->g_131 p_989->g_69 p_989->g_154 p_989->g_115.f0 p_989->g_169 p_989->g_12 p_989->g_104.f3 p_989->g_9 p_989->g_178 p_989->g_216 p_989->g_150 p_989->g_235 p_989->g_157 p_989->g_286 p_989->g_321 p_989->g_2 p_989->g_278 p_989->g_327 p_989->g_374 p_989->g_275 p_989->g_345 p_989->g_385 p_989->g_283 p_989->g_490 p_989->g_680 p_989->g_676 p_989->g_491 p_989->g_551 p_989->g_683 p_989->g_738 p_989->g_739
 * writes: p_989->g_70 p_989->g_96 p_989->g_53 p_989->g_69 p_989->g_131 p_989->g_5 p_989->g_104.f3 p_989->g_150 p_989->g_154 p_989->g_157 p_989->g_169 p_989->g_178 p_989->g_179 p_989->g_216 p_989->g_17 p_989->g_235 p_989->g_283 p_989->g_286 p_989->g_278 p_989->g_307 p_989->g_327 p_989->g_345 p_989->g_385 p_989->g_275 p_989->g_321 p_989->g_680 p_989->g_683 p_989->g_730 p_989->g_771
 */
uint16_t  func_35(uint32_t  p_36, uint8_t  p_37, int8_t * p_38, uint32_t  p_39, struct S2 * p_989)
{ /* block id: 15 */
    uint64_t l_700 = 1UL;
    int8_t *l_737 = &p_989->g_69[0];
    int32_t l_742[1];
    int64_t *l_754 = &p_989->g_676[1];
    int64_t **l_753[3];
    int16_t *l_792 = (void*)0;
    int16_t *l_793 = (void*)0;
    int32_t l_794 = 0x7F2C4883L;
    int i;
    for (i = 0; i < 1; i++)
        l_742[i] = 9L;
    for (i = 0; i < 3; i++)
        l_753[i] = &l_754;
    for (p_37 = 1; (p_37 <= 6); p_37 += 1)
    { /* block id: 18 */
        int8_t *l_51 = &p_989->g_17;
        int32_t l_705 = 1L;
        int32_t *l_740 = &p_989->g_286[2];
        int16_t *l_741 = &p_989->g_327;
        int32_t l_776 = 0L;
        int32_t l_777[1][2][5] = {{{0x4F275445L,0x2ECA8752L,(-3L),0x2ECA8752L,0x4F275445L},{0x4F275445L,0x2ECA8752L,(-3L),0x2ECA8752L,0x4F275445L}}};
        int i, j, k;
        l_742[0] = (((*l_741) = (p_989->g_5[p_37] , (&p_989->g_12 != (l_740 = (((l_737 = func_42((safe_add_func_uint64_t_u_u(func_47(p_36, l_51, l_51, p_989), l_700)), (safe_sub_func_uint64_t_u_u(((safe_add_func_uint32_t_u_u((l_705 < (safe_sub_func_int64_t_s_s(p_989->g_551, FAKE_DIVERGE(p_989->local_1_offset, get_local_id(1), 10)))), p_36)) <= p_989->g_2), p_989->g_115.f0)), p_989)) == p_989->g_738) , (void*)0))))) > p_989->g_676[7]);
        for (p_989->g_385 = 0; (p_989->g_385 >= 52); p_989->g_385 = safe_add_func_uint32_t_u_u(p_989->g_385, 1))
        { /* block id: 333 */
            uint8_t l_779 = 1UL;
            for (p_989->g_283 = 0; (p_989->g_283 > 23); p_989->g_283++)
            { /* block id: 336 */
                int32_t **l_747 = &l_740;
                int64_t **l_752 = (void*)0;
                int32_t l_772 = 3L;
                int32_t l_773[3][7] = {{7L,0x3A7E33FEL,7L,7L,0x3A7E33FEL,7L,7L},{7L,0x3A7E33FEL,7L,7L,0x3A7E33FEL,7L,7L},{7L,0x3A7E33FEL,7L,7L,0x3A7E33FEL,7L,7L}};
                int8_t l_774 = 0x09L;
                int16_t l_778[10][5] = {{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)},{0x5359L,(-10L),(-10L),0x5359L,(-1L)}};
                int i, j;
                (*l_747) = &p_989->g_286[2];
                for (p_989->g_53 = 0; (p_989->g_53 <= (-26)); p_989->g_53 = safe_sub_func_uint64_t_u_u(p_989->g_53, 6))
                { /* block id: 340 */
                    int64_t ***l_755 = &l_753[1];
                    uint8_t *l_756[10][6][4] = {{{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0}},{{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0}},{{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0}},{{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0}},{{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0}},{{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0}},{{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0}},{{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0}},{{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0}},{{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0},{&p_989->g_150[3],(void*)0,(void*)0,(void*)0}}};
                    int32_t l_767[5][8][6] = {{{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L}},{{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L}},{{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L}},{{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L}},{{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L},{0x106D70F2L,0x1CD8A4DAL,1L,1L,(-10L),0x68EEF2E7L}}};
                    int32_t l_768 = (-7L);
                    int32_t *l_769 = (void*)0;
                    int32_t *l_770[6] = {&l_768,&l_742[0],&l_768,&l_768,&l_742[0],&l_768};
                    int64_t l_775[2][3] = {{0x112A370E2DAEDB0BL,0x112A370E2DAEDB0BL,0x112A370E2DAEDB0BL},{0x112A370E2DAEDB0BL,0x112A370E2DAEDB0BL,0x112A370E2DAEDB0BL}};
                    int i, j, k;
                    p_989->g_771[0] = (((safe_div_func_uint8_t_u_u((((+(p_989->g_235 = ((l_742[0] , l_752) != ((*l_755) = l_753[2])))) || (safe_rshift_func_int16_t_s_s((((((*l_740) |= 1UL) , 0xC80792BDL) || ((l_767[1][4][3] = (safe_sub_func_int16_t_s_s((safe_sub_func_int16_t_s_s((~((*l_741) = (safe_mul_func_uint8_t_u_u((p_989->g_680 = 252UL), ((p_39 > (+p_37)) > p_37))))), 0x5922L)), (-1L)))) > l_742[0])) , p_36), p_37))) | 65527UL), l_768)) ^ (-1L)) >= p_37);
                    --l_779;
                }
            }
        }
    }
    l_794 |= (((safe_rshift_func_int8_t_s_u((safe_mul_func_int16_t_s_s((l_742[0] = ((~((l_742[0] , (safe_lshift_func_int16_t_s_u(((-10L) >= (safe_rshift_func_int16_t_s_s((l_700 | l_700), (safe_mul_func_uint16_t_u_u(l_742[0], (((void*)0 != &p_989->g_235) ^ (+((((*p_989->g_491) = p_36) , (((65535UL >= p_37) ^ 0x46AA83ED73D38148L) == l_742[0])) == (-1L))))))))), 6))) || p_989->g_178)) | (*p_989->g_738))), p_37)), 0)) && p_989->g_345) , p_37);
    return l_742[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_989->g_169 p_989->g_683 p_989->g_551 p_989->g_275 p_989->g_115 p_989->g_286
 * writes: p_989->g_169 p_989->g_730 p_989->g_53 p_989->g_286
 */
int8_t * func_42(uint32_t  p_43, int32_t  p_44, struct S2 * p_989)
{ /* block id: 310 */
    uint64_t **l_708 = &p_989->g_491;
    int32_t l_715 = 0x5BF669F1L;
    union U0 *l_723 = &p_989->g_115;
    int8_t *l_736 = &p_989->g_321;
    l_708 = l_708;
    for (p_989->g_169 = 0; (p_989->g_169 <= 22); p_989->g_169 = safe_add_func_uint8_t_u_u(p_989->g_169, 9))
    { /* block id: 314 */
        union U0 *l_722 = &p_989->g_115;
        int32_t l_728 = 1L;
        uint64_t *l_729 = &p_989->g_730[0][2];
        int32_t l_731 = 0x42A03F1FL;
        int32_t *l_732 = &p_989->g_53;
        int32_t *l_733 = &p_989->g_286[2];
        (*l_733) |= (((((((safe_sub_func_uint64_t_u_u((safe_mul_func_int16_t_s_s(l_715, (safe_div_func_int8_t_s_s((((safe_rshift_func_uint8_t_u_s((safe_div_func_int8_t_s_s((!(l_722 != l_723)), p_989->g_683)), 5)) >= (l_722 != l_723)) & ((*l_732) = (l_715 != ((safe_add_func_int32_t_s_s(((l_731 |= (safe_mul_func_uint8_t_u_u(((p_43 != ((((*l_729) = ((l_728 = (p_43 > p_43)) != p_989->g_551)) , (void*)0) != (void*)0)) < p_989->g_275), p_44))) , 0x1258105DL), 0x300788E6L)) != 1L)))), GROUP_DIVERGE(1, 1))))), l_715)) , FAKE_DIVERGE(p_989->global_0_offset, get_global_id(0), 10)) , (*l_722)) , 0x44F6F6FAL) && p_44) > p_44) || p_44);
    }
    for (p_44 = 24; (p_44 < 20); p_44--)
    { /* block id: 323 */
        if (l_715)
            break;
    }
    return l_736;
}


/* ------------------------------------------ */
/* 
 * reads : p_989->g_70 p_989->g_53 p_989->g_96 p_989->g_114 p_989->g_115 p_989->g_17 p_989->g_131 p_989->g_5 p_989->g_69 p_989->g_154 p_989->g_115.f0 p_989->g_169 p_989->g_12 p_989->g_104.f3 p_989->g_9 p_989->g_178 p_989->g_216 p_989->g_150 p_989->g_235 p_989->g_157 p_989->g_286 p_989->g_321 p_989->g_2 p_989->g_278 p_989->g_327 p_989->g_374 p_989->g_275 p_989->g_345 p_989->g_385 p_989->g_283 p_989->g_490 p_989->g_680 p_989->g_676 p_989->g_491
 * writes: p_989->g_70 p_989->g_96 p_989->g_53 p_989->g_69 p_989->g_131 p_989->g_5 p_989->g_104.f3 p_989->g_150 p_989->g_154 p_989->g_157 p_989->g_169 p_989->g_178 p_989->g_179 p_989->g_216 p_989->g_17 p_989->g_235 p_989->g_283 p_989->g_286 p_989->g_278 p_989->g_307 p_989->g_327 p_989->g_345 p_989->g_385 p_989->g_275 p_989->g_321 p_989->g_680 p_989->g_683
 */
uint64_t  func_47(int32_t  p_48, int8_t * p_49, int8_t * p_50, struct S2 * p_989)
{ /* block id: 19 */
    int32_t *l_52 = &p_989->g_53;
    int32_t l_54 = 0x18791B16L;
    int32_t *l_55 = (void*)0;
    int32_t *l_56 = &p_989->g_53;
    int32_t *l_57 = &l_54;
    int32_t *l_58 = &l_54;
    int32_t *l_59 = (void*)0;
    int32_t *l_60 = &l_54;
    int32_t *l_61 = &p_989->g_53;
    int32_t *l_62 = (void*)0;
    int32_t *l_63 = &p_989->g_53;
    int32_t *l_64 = (void*)0;
    int32_t *l_65 = &p_989->g_53;
    int32_t *l_66 = (void*)0;
    int32_t *l_67 = &p_989->g_53;
    int32_t *l_68[6];
    int64_t *l_675 = &p_989->g_676[1];
    uint8_t *l_679 = &p_989->g_680;
    int8_t *l_681 = (void*)0;
    int8_t *l_682 = &p_989->g_683;
    int i;
    for (i = 0; i < 6; i++)
        l_68[i] = &l_54;
    --p_989->g_70;
    (*l_56) = ((safe_lshift_func_int16_t_s_s((*l_60), 15)) || func_75((safe_lshift_func_uint8_t_u_s(((p_48 == func_84((*l_56), p_989)) == ((safe_lshift_func_uint16_t_u_s((((safe_add_func_int8_t_s_s(((((0xE1L > 248UL) < ((void*)0 == l_675)) == (((*l_682) = (safe_lshift_func_uint8_t_u_u(((*l_679) ^= p_989->g_115.f0), p_48))) || 0x3DL)) || GROUP_DIVERGE(2, 1)), GROUP_DIVERGE(1, 1))) != p_989->g_9) != p_989->g_676[5]), (*l_58))) == 0x6688556036D64736L)), (*l_57))), &p_989->g_9, &l_54, p_48, p_989));
    return (*p_989->g_491);
}


/* ------------------------------------------ */
/* 
 * reads : p_989->g_491 p_989->g_96 p_989->g_115 p_989->g_114 p_989->g_490 p_989->g_150 p_989->g_69
 * writes: p_989->g_17 p_989->g_96
 */
uint8_t  func_75(uint32_t  p_76, int32_t * p_77, int32_t * p_78, uint16_t  p_79, struct S2 * p_989)
{ /* block id: 299 */
    uint32_t l_686 = 0x63C0011AL;
    union U0 l_687 = {4294967295UL};
    union U0 **l_689 = (void*)0;
    union U0 ***l_688 = &l_689;
    uint32_t l_692[5][2][7] = {{{4294967295UL,0UL,1UL,4294967289UL,0x69D47070L,0xA2383B84L,0x6646BE20L},{4294967295UL,0UL,1UL,4294967289UL,0x69D47070L,0xA2383B84L,0x6646BE20L}},{{4294967295UL,0UL,1UL,4294967289UL,0x69D47070L,0xA2383B84L,0x6646BE20L},{4294967295UL,0UL,1UL,4294967289UL,0x69D47070L,0xA2383B84L,0x6646BE20L}},{{4294967295UL,0UL,1UL,4294967289UL,0x69D47070L,0xA2383B84L,0x6646BE20L},{4294967295UL,0UL,1UL,4294967289UL,0x69D47070L,0xA2383B84L,0x6646BE20L}},{{4294967295UL,0UL,1UL,4294967289UL,0x69D47070L,0xA2383B84L,0x6646BE20L},{4294967295UL,0UL,1UL,4294967289UL,0x69D47070L,0xA2383B84L,0x6646BE20L}},{{4294967295UL,0UL,1UL,4294967289UL,0x69D47070L,0xA2383B84L,0x6646BE20L},{4294967295UL,0UL,1UL,4294967289UL,0x69D47070L,0xA2383B84L,0x6646BE20L}}};
    uint64_t *l_697 = &p_989->g_668[0][6][0].f3;
    uint64_t *l_698[5];
    int32_t l_699[8][4] = {{0x0DDCD4A4L,1L,1L,0x0DDCD4A4L},{0x0DDCD4A4L,1L,1L,0x0DDCD4A4L},{0x0DDCD4A4L,1L,1L,0x0DDCD4A4L},{0x0DDCD4A4L,1L,1L,0x0DDCD4A4L},{0x0DDCD4A4L,1L,1L,0x0DDCD4A4L},{0x0DDCD4A4L,1L,1L,0x0DDCD4A4L},{0x0DDCD4A4L,1L,1L,0x0DDCD4A4L},{0x0DDCD4A4L,1L,1L,0x0DDCD4A4L}};
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_698[i] = &p_989->g_602[1][1][0].f3;
    (*p_78) &= (((safe_mod_func_int32_t_s_s(l_686, l_686)) && ((l_686 < l_686) < l_686)) ^ ((((l_687 , l_686) > (-6L)) >= ((p_989->g_17 = (l_688 == (void*)0)) >= p_79)) == p_79));
    (*p_78) ^= (((*p_989->g_491) <= (safe_mod_func_int32_t_s_s(((p_989->g_115 , p_989->g_114) == (void*)0), l_686))) ^ ((--l_692[1][1][2]) , 18446744073709551608UL));
    (*p_78) |= ((-5L) | (!((l_699[0][3] |= (++(**p_989->g_490))) | (0xBD11ADC124B3B982L & p_989->g_150[3]))));
    return p_989->g_69[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_989->g_114 p_989->g_115 p_989->g_96 p_989->g_17 p_989->g_53 p_989->g_131 p_989->g_5 p_989->g_69 p_989->g_154 p_989->g_115.f0 p_989->g_169 p_989->g_12 p_989->g_104.f3 p_989->g_9 p_989->g_178 p_989->g_216 p_989->g_150 p_989->g_235 p_989->g_70 p_989->g_157 p_989->g_286 p_989->g_321 p_989->g_2 p_989->g_278 p_989->g_327 p_989->g_374 p_989->g_275 p_989->g_345 p_989->g_385 p_989->g_283 p_989->g_490
 * writes: p_989->g_96 p_989->g_53 p_989->g_70 p_989->g_69 p_989->g_131 p_989->g_5 p_989->g_104.f3 p_989->g_150 p_989->g_154 p_989->g_157 p_989->g_169 p_989->g_178 p_989->g_179 p_989->g_216 p_989->g_17 p_989->g_235 p_989->g_283 p_989->g_286 p_989->g_278 p_989->g_307 p_989->g_327 p_989->g_345 p_989->g_385 p_989->g_275 p_989->g_321
 */
uint16_t  func_84(int64_t  p_85, struct S2 * p_989)
{ /* block id: 21 */
    uint64_t *l_95 = &p_989->g_96;
    int32_t *l_97[3][4][3] = {{{(void*)0,(void*)0,&p_989->g_9},{(void*)0,(void*)0,&p_989->g_9},{(void*)0,(void*)0,&p_989->g_9},{(void*)0,(void*)0,&p_989->g_9}},{{(void*)0,(void*)0,&p_989->g_9},{(void*)0,(void*)0,&p_989->g_9},{(void*)0,(void*)0,&p_989->g_9},{(void*)0,(void*)0,&p_989->g_9}},{{(void*)0,(void*)0,&p_989->g_9},{(void*)0,(void*)0,&p_989->g_9},{(void*)0,(void*)0,&p_989->g_9},{(void*)0,(void*)0,&p_989->g_9}}};
    int64_t l_359 = 1L;
    uint64_t l_372 = 0xDAD0AC494E0BCCA2L;
    int16_t l_446 = 0x1752L;
    int64_t l_493[7][9] = {{0L,0x4F1BBF3470E15912L,6L,0x7FC7DEDEDBB41DC9L,0x4F1BBF3470E15912L,0x7FC7DEDEDBB41DC9L,6L,0x4F1BBF3470E15912L,0L},{0L,0x4F1BBF3470E15912L,6L,0x7FC7DEDEDBB41DC9L,0x4F1BBF3470E15912L,0x7FC7DEDEDBB41DC9L,6L,0x4F1BBF3470E15912L,0L},{0L,0x4F1BBF3470E15912L,6L,0x7FC7DEDEDBB41DC9L,0x4F1BBF3470E15912L,0x7FC7DEDEDBB41DC9L,6L,0x4F1BBF3470E15912L,0L},{0L,0x4F1BBF3470E15912L,6L,0x7FC7DEDEDBB41DC9L,0x4F1BBF3470E15912L,0x7FC7DEDEDBB41DC9L,6L,0x4F1BBF3470E15912L,0L},{0L,0x4F1BBF3470E15912L,6L,0x7FC7DEDEDBB41DC9L,0x4F1BBF3470E15912L,0x7FC7DEDEDBB41DC9L,6L,0x4F1BBF3470E15912L,0L},{0L,0x4F1BBF3470E15912L,6L,0x7FC7DEDEDBB41DC9L,0x4F1BBF3470E15912L,0x7FC7DEDEDBB41DC9L,6L,0x4F1BBF3470E15912L,0L},{0L,0x4F1BBF3470E15912L,6L,0x7FC7DEDEDBB41DC9L,0x4F1BBF3470E15912L,0x7FC7DEDEDBB41DC9L,6L,0x4F1BBF3470E15912L,0L}};
    uint32_t l_495 = 1UL;
    union U0 *l_539 = &p_989->g_115;
    union U0 **l_538 = &l_539;
    uint8_t *l_658[5];
    uint64_t l_661 = 0UL;
    uint8_t l_664 = 255UL;
    union U1 *l_667 = &p_989->g_668[0][6][0];
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_658[i] = &p_989->g_235;
lbl_390:
    p_989->g_327 = (p_989->g_286[0] = (safe_div_func_int8_t_s_s((safe_div_func_uint32_t_u_u((safe_unary_minus_func_uint8_t_u(0xF5L)), func_91(&p_989->g_69[0], (((*l_95) = FAKE_DIVERGE(p_989->group_2_offset, get_group_id(2), 10)) , (void*)0), l_97[1][0][0], p_989))), p_989->g_321)));
    for (p_989->g_157 = 0; (p_989->g_157 <= 8); p_989->g_157 += 1)
    { /* block id: 117 */
        uint32_t l_328 = 4294967295UL;
        int32_t l_347 = 0x16F0B774L;
        int32_t l_348 = 0x0BFADAF8L;
        uint64_t l_349 = 0UL;
        int16_t *l_363 = &p_989->g_278;
        uint32_t *l_373 = &p_989->g_70;
        uint32_t *l_375 = &l_328;
        int64_t *l_376 = (void*)0;
        int64_t *l_377 = &p_989->g_131[1];
        int32_t *l_378[1];
        int32_t **l_379 = &l_97[2][3][2];
        uint64_t **l_380 = &l_95;
        uint16_t *l_381 = &p_989->g_345;
        uint16_t *l_384[1][3][10] = {{{&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385},{&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385},{&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385,&p_989->g_385}}};
        int32_t *l_386 = &p_989->g_2;
        int16_t l_394[2];
        uint8_t l_398 = 0x27L;
        int8_t *l_403 = &p_989->g_321;
        int32_t l_447[8] = {0x23AF846CL,0x23AF846CL,0x23AF846CL,0x23AF846CL,0x23AF846CL,0x23AF846CL,0x23AF846CL,0x23AF846CL};
        int8_t l_448 = 0x54L;
        union U0 *l_464 = &p_989->g_115;
        uint64_t ***l_492 = &l_380;
        int8_t *l_494 = &p_989->g_17;
        uint64_t l_514 = 9UL;
        union U0 **l_542 = &l_539;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_378[i] = (void*)0;
        for (i = 0; i < 2; i++)
            l_394[i] = 0x32CDL;
        for (p_989->g_278 = 3; (p_989->g_278 <= 8); p_989->g_278 += 1)
        { /* block id: 120 */
            int32_t l_343 = 0x595743C3L;
            uint16_t *l_344 = &p_989->g_345;
            int16_t *l_346 = &p_989->g_327;
            int32_t **l_360 = &p_989->g_307;
            int i;
            p_989->g_53 |= ((FAKE_DIVERGE(p_989->global_0_offset, get_global_id(0), 10) , (p_989->g_286[2] ^= l_328)) >= (safe_mul_func_uint16_t_u_u(((p_989->g_69[0] <= ((safe_sub_func_uint32_t_u_u(((l_348 ^= (p_85 ^ ((safe_lshift_func_int8_t_s_u(p_989->g_2, 1)) || (p_989->g_69[0] , ((*l_95) |= (((safe_sub_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u((&p_989->g_96 != ((0x64D6B0D7L > ((((((*l_346) ^= (((*l_344) = (safe_rshift_func_int16_t_s_s(((p_989->g_150[p_989->g_278] = (safe_div_func_int64_t_s_s(((0x20L & (((p_989->g_9 != l_328) < FAKE_DIVERGE(p_989->group_1_offset, get_group_id(1), 10)) == 0x89L)) ^ p_85), p_989->g_69[0]))) ^ p_989->g_178), l_343))) | 1L)) < p_85) & l_347) >= p_85) , l_347)) , l_95)), p_989->g_321)), p_85)) , p_85) | p_85)))))) || p_989->g_216[3]), p_85)) != l_349)) & p_85), p_989->g_70)));
            for (p_989->g_283 = 8; (p_989->g_283 >= 0); p_989->g_283 -= 1)
            { /* block id: 130 */
                union U0 l_358[7] = {{2UL},{4294967288UL},{2UL},{2UL},{4294967288UL},{2UL},{2UL}};
                int i;
                p_989->g_286[2] = (safe_sub_func_uint8_t_u_u((((safe_add_func_uint64_t_u_u((p_989->g_69[0] && (safe_add_func_int16_t_s_s(((safe_lshift_func_int16_t_s_u((((*l_344) = (p_989->g_69[0] != 0xBBL)) || ((~((void*)0 == &p_989->g_235)) & p_85)), 10)) <= l_349), ((((((!(l_358[1] , 0x5BBA301228ECA0DBL)) && l_359) > l_358[1].f0) ^ p_85) && l_358[1].f0) && p_989->g_286[2])))), 18446744073709551612UL)) , p_85) == p_989->g_131[0]), FAKE_DIVERGE(p_989->group_0_offset, get_group_id(0), 10)));
            }
            (*l_360) = l_97[0][3][2];
        }
        (*l_379) = (l_378[0] = (((((*l_377) = (((safe_lshift_func_uint16_t_u_u(p_85, (p_85 ^ ((*l_363) = p_85)))) , p_85) > (safe_div_func_int16_t_s_s((safe_mul_func_int16_t_s_s((0x12C6DBBEL & ((*l_375) |= (((((((safe_mod_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u(4294967291UL, ((*l_373) = (p_989->g_131[1] || (((p_85 == l_347) <= p_989->g_216[3]) , l_372))))), p_85)) == 0x7A25ABAAL) > 65528UL) | p_989->g_150[6]) , p_989->g_374) , p_989->g_53) , p_989->g_169))), p_989->g_275)), p_989->g_345)))) ^ l_347) >= (-1L)) , &p_989->g_286[0]));
        if (((~(p_85 > p_989->g_96)) < (p_989->g_385 = ((&p_989->g_96 == ((*l_380) = &l_372)) , ((*l_381)++)))))
        { /* block id: 145 */
            int16_t l_387 = 0x3780L;
            int32_t *l_389 = &l_348;
            int32_t l_392[3][2] = {{0x5C6A7CF2L,0x5C6A7CF2L},{0x5C6A7CF2L,0x5C6A7CF2L},{0x5C6A7CF2L,0x5C6A7CF2L}};
            int i, j;
            for (p_989->g_345 = 3; (p_989->g_345 <= 8); p_989->g_345 += 1)
            { /* block id: 148 */
                uint64_t l_388 = 0UL;
                int32_t l_391 = 0x638C486AL;
                int16_t l_393 = 0x73BAL;
                int32_t l_397 = 0x5C992468L;
                (*l_379) = l_386;
                l_388 = (p_989->g_286[2] = (0x548239F17EEFC131L ^ l_387));
                for (l_387 = 8; (l_387 >= 1); l_387 -= 1)
                { /* block id: 154 */
                    int8_t l_395[9][8] = {{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L},{0x47L,0x47L,(-1L),1L,0x5BL,1L,(-1L),0x47L}};
                    int32_t l_396 = (-1L);
                    int i, j;
                    for (p_989->g_275 = 2; (p_989->g_275 >= 0); p_989->g_275 -= 1)
                    { /* block id: 157 */
                        int i;
                        return p_989->g_286[p_989->g_275];
                    }
                    l_389 = l_97[1][1][1];
                    if (p_989->g_345)
                        goto lbl_390;
                    --l_398;
                }
                for (l_328 = 2; (l_328 <= 8); l_328 += 1)
                { /* block id: 166 */
                    l_389 = &l_392[1][1];
                }
            }
            for (l_387 = 7; (l_387 >= 0); l_387 -= 1)
            { /* block id: 172 */
                int16_t l_404 = (-6L);
                union U1 *l_426 = &p_989->g_427;
                int32_t **l_445[8] = {&l_378[0],&l_97[1][0][0],&l_378[0],&l_378[0],&l_97[1][0][0],&l_378[0],&l_378[0],&l_97[1][0][0]};
                int i;
                for (p_989->g_235 = 0; (p_989->g_235 <= 0); p_989->g_235 += 1)
                { /* block id: 175 */
                    int64_t l_413 = (-8L);
                    for (l_347 = 0; (l_347 <= 0); l_347 += 1)
                    { /* block id: 178 */
                        l_392[0][0] |= (safe_lshift_func_uint8_t_u_s(((void*)0 == l_403), 6));
                    }
                    l_404 = p_85;
                    l_392[1][0] = (safe_mul_func_uint16_t_u_u(((safe_add_func_int16_t_s_s(((*l_363) = p_85), GROUP_DIVERGE(1, 1))) ^ (((safe_div_func_uint64_t_u_u(((safe_add_func_int8_t_s_s(p_85, l_413)) < (safe_lshift_func_int16_t_s_s((safe_div_func_int16_t_s_s(((safe_sub_func_int32_t_s_s((safe_mod_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((p_989->g_114 == l_426), ((safe_lshift_func_uint8_t_u_s((((safe_add_func_int16_t_s_s((((*l_373) = (safe_mul_func_int8_t_s_s(((safe_mul_func_int16_t_s_s(p_85, (safe_add_func_int64_t_s_s((safe_div_func_int32_t_s_s(((safe_mod_func_int64_t_s_s(p_989->g_286[2], (safe_unary_minus_func_uint8_t_u((safe_mul_func_uint8_t_u_u(p_989->g_385, 0x01L)))))) > p_989->g_154[3][2]), p_85)), p_989->g_131[1])))) || 0L), p_85))) < p_989->g_286[2]), GROUP_DIVERGE(1, 1))) , l_445[6]) != (void*)0), p_989->g_150[3])) < l_446))), 0)), p_989->g_2)), p_989->g_286[2])) > l_447[4]), l_448)), p_85))), p_989->g_53)) , p_989->g_2) <= p_989->g_2)), 1UL));
                }
            }
            return p_989->g_286[2];
        }
        else
        { /* block id: 188 */
            uint16_t l_457 = 65535UL;
            uint8_t *l_458 = &p_989->g_235;
            int32_t l_461 = 0x68B36FBCL;
            for (l_328 = 0; (l_328 <= 8); l_328 += 1)
            { /* block id: 191 */
                uint64_t l_456 = 0x2EF1E78B4661D7D3L;
                int32_t l_462 = 0L;
                int64_t l_463[5][9] = {{0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL,0x0A066165A788E1E9L,0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL},{0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL,0x0A066165A788E1E9L,0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL},{0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL,0x0A066165A788E1E9L,0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL},{0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL,0x0A066165A788E1E9L,0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL},{0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL,0x0A066165A788E1E9L,0x0A066165A788E1E9L,0x2EB87E373AC1E6FCL,0L,0x2EB87E373AC1E6FCL}};
                union U0 **l_465 = (void*)0;
                union U0 **l_466 = &l_464;
                int i, j;
                l_462 |= ((safe_add_func_uint32_t_u_u((((safe_add_func_int64_t_s_s(9L, (safe_sub_func_uint32_t_u_u(p_989->g_235, (l_457 = (l_456 = (((*l_403) = 0x78L) <= (safe_unary_minus_func_int32_t_s(p_85))))))))) < (&p_989->g_150[3] != l_458)) ^ p_989->g_283), (p_989->g_169--))) >= ((p_989->g_70 , l_461) , p_85));
                for (p_989->g_321 = 2; (p_989->g_321 >= 0); p_989->g_321 -= 1)
                { /* block id: 199 */
                    for (p_989->g_178 = 0; (p_989->g_178 <= 2); p_989->g_178 += 1)
                    { /* block id: 202 */
                        int i;
                        l_463[2][0] = p_989->g_286[p_989->g_321];
                    }
                }
                (*l_466) = l_464;
            }
        }
        p_989->g_286[2] ^= (safe_div_func_int32_t_s_s((p_989->g_53 = (safe_unary_minus_func_uint32_t_u(((p_989->g_150[p_989->g_157] = ((*l_386) == ((*l_494) |= ((((safe_div_func_int8_t_s_s(((*l_403) = p_85), (safe_rshift_func_int8_t_s_u((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_989->local_1_offset, get_local_id(1), 10), (safe_lshift_func_uint8_t_u_s(0UL, 6)))), 0)))) <= (safe_mod_func_int16_t_s_s((((p_85 || (safe_div_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), ((safe_rshift_func_int8_t_s_s(p_989->g_216[3], (GROUP_DIVERGE(1, 1) ^ (safe_sub_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s((((*l_386) , 0x18L) <= (safe_sub_func_uint8_t_u_u((((*l_492) = p_989->g_490) == &l_95), 0x64L))), 15)) || p_85), 8UL))))) , 1UL)))) > (*l_386)) , l_493[4][1]), p_989->g_278))) != p_85) ^ 0L)))) >= p_989->g_9)))), 9L));
        for (p_989->g_169 = 3; (p_989->g_169 <= 8); p_989->g_169 += 1)
        { /* block id: 217 */
            int16_t l_498 = 0x4CA4L;
            int32_t l_521 = 0x534D6E84L;
            int16_t l_590 = (-1L);
            union U0 **l_654 = &l_464;
            int32_t l_663 = (-4L);
            union U1 *l_669 = &p_989->g_670[0][0];
            int i;
            if (l_495)
                break;
        }
    }
    return p_85;
}


/* ------------------------------------------ */
/* 
 * reads : p_989->g_96 p_989->g_114 p_989->g_115 p_989->g_17 p_989->g_53 p_989->g_131 p_989->g_5 p_989->g_69 p_989->g_154 p_989->g_115.f0 p_989->g_169 p_989->g_12 p_989->g_104.f3 p_989->g_9 p_989->g_178 p_989->g_216 p_989->g_150 p_989->g_235 p_989->g_70 p_989->g_157 p_989->g_286
 * writes: p_989->g_96 p_989->g_53 p_989->g_70 p_989->g_69 p_989->g_131 p_989->g_5 p_989->g_104.f3 p_989->g_150 p_989->g_154 p_989->g_157 p_989->g_169 p_989->g_178 p_989->g_179 p_989->g_216 p_989->g_17 p_989->g_235 p_989->g_283 p_989->g_286 p_989->g_278 p_989->g_307
 */
int32_t  func_91(int8_t * p_92, int8_t * p_93, int32_t * p_94, struct S2 * p_989)
{ /* block id: 23 */
    uint64_t l_100 = 18446744073709551615UL;
    union U1 *l_105 = &p_989->g_106;
    int32_t l_111[8][4] = {{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL},{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL},{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL},{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL},{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL},{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL},{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL},{0x5E3FE27FL,0x62E6445AL,0x5E3FE27FL,0x5E3FE27FL}};
    int32_t l_208 = 0x268D69DEL;
    uint16_t *l_213 = &p_989->g_157;
    int64_t *l_276 = &p_989->g_275;
    int8_t l_320 = 0x3FL;
    int i, j;
    for (p_989->g_96 = 0; (p_989->g_96 > 56); p_989->g_96 = safe_add_func_int8_t_s_s(p_989->g_96, 9))
    { /* block id: 26 */
        union U1 *l_103 = &p_989->g_104;
        int32_t l_133 = (-1L);
        uint64_t *l_134 = &p_989->g_96;
        union U0 l_172 = {7UL};
        uint16_t *l_214 = &p_989->g_157;
        int32_t l_291[7] = {0x68EFFDFDL,0x089CFB0AL,0x68EFFDFDL,0x68EFFDFDL,0x089CFB0AL,0x68EFFDFDL,0x68EFFDFDL};
        int32_t *l_303[7][10] = {{&p_989->g_53,(void*)0,(void*)0,&p_989->g_53,(void*)0,&l_208,(void*)0,&l_291[0],&p_989->g_12,&l_133},{&p_989->g_53,(void*)0,(void*)0,&p_989->g_53,(void*)0,&l_208,(void*)0,&l_291[0],&p_989->g_12,&l_133},{&p_989->g_53,(void*)0,(void*)0,&p_989->g_53,(void*)0,&l_208,(void*)0,&l_291[0],&p_989->g_12,&l_133},{&p_989->g_53,(void*)0,(void*)0,&p_989->g_53,(void*)0,&l_208,(void*)0,&l_291[0],&p_989->g_12,&l_133},{&p_989->g_53,(void*)0,(void*)0,&p_989->g_53,(void*)0,&l_208,(void*)0,&l_291[0],&p_989->g_12,&l_133},{&p_989->g_53,(void*)0,(void*)0,&p_989->g_53,(void*)0,&l_208,(void*)0,&l_291[0],&p_989->g_12,&l_133},{&p_989->g_53,(void*)0,(void*)0,&p_989->g_53,(void*)0,&l_208,(void*)0,&l_291[0],&p_989->g_12,&l_133}};
        uint16_t l_323 = 0UL;
        int32_t l_326 = 4L;
        int i, j;
        if (l_100)
            break;
        for (p_989->g_53 = 0; (p_989->g_53 != (-11)); p_989->g_53 = safe_sub_func_uint64_t_u_u(p_989->g_53, 8))
        { /* block id: 30 */
            union U1 *l_116 = &p_989->g_117;
            int32_t l_128 = (-4L);
            int16_t *l_151 = &p_989->g_5[3];
            int64_t *l_166[4] = {&p_989->g_131[1],&p_989->g_131[1],&p_989->g_131[1],&p_989->g_131[1]};
            int32_t l_212[7][2] = {{0x50B8D769L,0x50B8D769L},{0x50B8D769L,0x50B8D769L},{0x50B8D769L,0x50B8D769L},{0x50B8D769L,0x50B8D769L},{0x50B8D769L,0x50B8D769L},{0x50B8D769L,0x50B8D769L},{0x50B8D769L,0x50B8D769L}};
            uint8_t l_236 = 254UL;
            int64_t l_297 = 0x50FCE14DB3FF0B44L;
            int8_t l_299 = 0x4EL;
            int i, j;
            l_105 = l_103;
            for (p_989->g_70 = (-7); (p_989->g_70 > 19); p_989->g_70 = safe_add_func_int64_t_s_s(p_989->g_70, 9))
            { /* block id: 34 */
                int32_t *l_110 = (void*)0;
                int32_t **l_109 = &l_110;
                int64_t *l_129 = (void*)0;
                int64_t *l_130 = &p_989->g_131[1];
                int16_t *l_132 = &p_989->g_5[1];
                uint32_t l_280 = 4294967291UL;
                int32_t l_293 = 0x09A84692L;
                int32_t l_294 = 0L;
                int32_t l_298[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_298[i] = 0x7ABC6312L;
                (*l_109) = &p_989->g_53;
                if (l_111[0][2])
                    continue;
                if ((safe_rshift_func_int16_t_s_s((((*p_92) = (p_989->g_114 != (p_989->g_115 , l_116))) < (((((((l_133 = (safe_sub_func_int16_t_s_s(((p_989->g_96 , (safe_add_func_int16_t_s_s(((*l_132) = (0L && (((*l_130) |= ((((safe_sub_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((safe_sub_func_int32_t_s_s((l_128 | p_989->g_17), (0L | l_111[0][2]))), l_100)), l_111[0][2])) > l_128) != (**l_109)) & 0x45L)) >= 0x2F772B8ADFEA0260L))), l_133))) && 0x3A7432CFE06C7929L), 0xDC7DL))) && p_989->g_5[4]) >= p_989->g_53) || (*l_110)) , l_128) , l_134) != l_129)), 7)))
                { /* block id: 41 */
                    int32_t l_143 = (-4L);
                    union U0 l_146 = {0xA1FF75AEL};
                    uint8_t *l_149[2][6] = {{&p_989->g_150[8],&p_989->g_150[3],&p_989->g_150[8],&p_989->g_150[8],&p_989->g_150[3],&p_989->g_150[8]},{&p_989->g_150[8],&p_989->g_150[3],&p_989->g_150[8],&p_989->g_150[8],&p_989->g_150[3],&p_989->g_150[8]}};
                    int16_t *l_152 = &p_989->g_5[1];
                    int8_t *l_153[1];
                    int32_t l_177 = 0L;
                    uint64_t *l_192 = (void*)0;
                    uint64_t *l_193 = &p_989->g_104.f3;
                    union U1 *l_196 = &p_989->g_197;
                    int64_t *l_209 = &p_989->g_106.f1;
                    int64_t *l_210 = &p_989->g_197.f1;
                    int64_t *l_211 = &p_989->g_104.f1;
                    int32_t *l_215 = &l_143;
                    uint32_t *l_217 = &p_989->g_169;
                    int32_t *l_218 = (void*)0;
                    int32_t *l_219 = &l_133;
                    int32_t *l_220 = &l_177;
                    int i, j;
                    for (i = 0; i < 1; i++)
                        l_153[i] = (void*)0;
                    if (((((safe_sub_func_uint8_t_u_u(l_111[2][0], (*p_92))) && 7UL) >= (safe_lshift_func_int8_t_s_s((p_989->g_154[1][5] &= ((safe_lshift_func_int16_t_s_u(((~(safe_rshift_func_int8_t_s_s((l_143 < (safe_div_func_uint16_t_u_u(l_128, (((((&p_989->g_69[0] == (((l_146 , ((((((p_989->g_150[3] = ((p_989->g_104.f3 = ((l_143 , ((safe_sub_func_uint16_t_u_u(l_146.f0, l_128)) & p_989->g_131[1])) , l_111[5][0])) < l_111[2][1])) >= p_989->g_17) > l_128) , (void*)0) == &p_94) | (*l_110))) || l_146.f0) , (void*)0)) < l_146.f0) , l_151) != l_152) & p_989->g_69[0])))), 1))) & 0x77E7L), p_989->g_17)) != 0UL)), 2))) && p_989->g_131[1]))
                    { /* block id: 45 */
                        int32_t *l_155 = &l_143;
                        uint16_t *l_156[4] = {&p_989->g_157,&p_989->g_157,&p_989->g_157,&p_989->g_157};
                        int64_t **l_167 = &l_129;
                        uint32_t *l_168 = &p_989->g_169;
                        int i;
                        (*l_155) = l_146.f0;
                        if (l_133)
                            continue;
                        (*l_109) = p_94;
                        (*l_155) = ((p_989->g_179[0][1] = ((((p_989->g_157 = (*l_155)) | (safe_sub_func_uint16_t_u_u((((safe_mod_func_uint64_t_u_u(((*l_155) , (safe_sub_func_int32_t_s_s((p_989->g_115.f0 & (safe_mul_func_int8_t_s_s((((*l_155) < (((l_166[1] != ((*l_167) = l_134)) > (--(*l_168))) ^ GROUP_DIVERGE(1, 1))) , (l_172 , p_989->g_12)), (((p_989->g_178 = ((l_177 = (((safe_mod_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((*p_92) = (4294967291UL <= p_989->g_115.f0)), 9UL)), 1L)) , l_146.f0) , p_989->g_69[0])) , 0UL)) && p_989->g_154[1][5]) != l_143)))), p_989->g_115.f0))), l_111[0][2])) , p_989->g_115.f0) , 0x6ACAL), l_133))) || l_172.f0) , &p_989->g_5[4])) != &p_989->g_5[3]);
                    }
                    else
                    { /* block id: 57 */
                        return (*l_110);
                    }
                    (*l_220) ^= ((*l_219) = (safe_mul_func_int16_t_s_s((GROUP_DIVERGE(0, 1) , l_133), (safe_div_func_uint32_t_u_u((safe_div_func_uint32_t_u_u(((*l_217) = (safe_mul_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u((safe_div_func_uint8_t_u_u((p_989->g_150[3] = ((l_111[7][0] | ((--(*l_193)) , (p_989->g_216[3] = ((*l_215) = (l_196 != ((safe_add_func_uint16_t_u_u(((l_196 != (void*)0) || ((safe_div_func_uint64_t_u_u(18446744073709551608UL, (((safe_add_func_int32_t_s_s((((0x36F8L | p_989->g_9) || ((((l_212[2][1] &= (safe_lshift_func_uint8_t_u_u((safe_div_func_int16_t_s_s((((l_208 = (+((l_172.f0 | 65535UL) <= p_989->g_154[1][5]))) || l_100) && 0x335AL), l_133)), 6))) , l_213) == l_214) , l_146.f0)) > p_989->g_154[0][5]), 0xE1D0A500L)) < 0x7DL) , p_989->g_12))) , l_212[6][1])), l_146.f0)) , l_196)))))) != l_111[2][0])), GROUP_DIVERGE(2, 1))), 1)) && 0x29L), l_128))), FAKE_DIVERGE(p_989->global_0_offset, get_global_id(0), 10))), 1L)))));
                }
                else
                { /* block id: 69 */
                    int32_t **l_224 = &l_110;
                    int32_t l_287 = (-6L);
                    int32_t l_292 = (-1L);
                    int32_t l_295 = 0x7047D995L;
                    int32_t l_296[6][5] = {{1L,(-1L),(-1L),1L,1L},{1L,(-1L),(-1L),1L,1L},{1L,(-1L),(-1L),1L,1L},{1L,(-1L),(-1L),1L,1L},{1L,(-1L),(-1L),1L,1L},{1L,(-1L),(-1L),1L,1L}};
                    int i, j;
                    for (p_989->g_178 = 0; (p_989->g_178 <= 1); p_989->g_178 += 1)
                    { /* block id: 72 */
                        int32_t l_225 = 0x070758ACL;
                        int8_t *l_234 = &p_989->g_17;
                        int i;
                        (*l_109) = &p_989->g_9;
                        p_989->g_235 = (safe_mul_func_int8_t_s_s(p_989->g_131[p_989->g_178], ((safe_unary_minus_func_uint32_t_u((l_212[2][1] = FAKE_DIVERGE(p_989->local_1_offset, get_local_id(1), 10)))) || ((((((l_224 == (void*)0) < (l_225 ^= p_989->g_5[(p_989->g_178 + 1)])) > (safe_div_func_int8_t_s_s((safe_add_func_int8_t_s_s(((*l_234) |= (safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s(((0xA9L == (0x0A11L & ((p_989->g_69[p_989->g_178] & 0x2E5DL) , p_989->g_69[p_989->g_178]))) ^ l_128), 13)), 4))), 0xEDL)), p_989->g_12))) == GROUP_DIVERGE(2, 1)) , p_989->g_5[(p_989->g_178 + 2)]) , 65535UL))));
                        l_236 = p_989->g_69[0];
                    }
                    if ((safe_unary_minus_func_int32_t_s(l_128)))
                    { /* block id: 80 */
                        uint64_t *l_250 = (void*)0;
                        uint64_t *l_251 = &l_100;
                        int64_t *l_274[9] = {&p_989->g_275,&p_989->g_275,&p_989->g_275,&p_989->g_275,&p_989->g_275,&p_989->g_275,&p_989->g_275,&p_989->g_275,&p_989->g_275};
                        int64_t **l_273 = &l_274[0];
                        int16_t *l_277[7] = {&p_989->g_278,&p_989->g_278,&p_989->g_278,&p_989->g_278,&p_989->g_278,&p_989->g_278,&p_989->g_278};
                        int32_t l_279 = (-7L);
                        uint8_t *l_281 = &p_989->g_235;
                        uint32_t *l_282 = &p_989->g_169;
                        int32_t l_284[7][4] = {{0x2A19D67CL,0x6D41F1B0L,0x682F0F24L,8L},{0x2A19D67CL,0x6D41F1B0L,0x682F0F24L,8L},{0x2A19D67CL,0x6D41F1B0L,0x682F0F24L,8L},{0x2A19D67CL,0x6D41F1B0L,0x682F0F24L,8L},{0x2A19D67CL,0x6D41F1B0L,0x682F0F24L,8L},{0x2A19D67CL,0x6D41F1B0L,0x682F0F24L,8L},{0x2A19D67CL,0x6D41F1B0L,0x682F0F24L,8L}};
                        int32_t *l_285[4];
                        int i, j;
                        for (i = 0; i < 4; i++)
                            l_285[i] = &p_989->g_286[2];
                        l_287 |= (((((*p_92) = (p_989->g_17 |= ((p_989->g_216[1] != (safe_mul_func_uint16_t_u_u(((((0x0F9E0A5FCD0D6B2CL & (safe_add_func_uint16_t_u_u((!(safe_add_func_uint64_t_u_u(0xD76B04D158891A74L, (safe_lshift_func_uint16_t_u_s(((0xB8A72973L && (((p_989->g_283 = ((*l_282) &= (safe_div_func_int64_t_s_s((safe_rshift_func_int16_t_s_s((((*l_251) &= 0xA24BEC2C41774F4BL) || ((safe_add_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(((*l_281) ^= ((safe_lshift_func_uint16_t_u_s(((safe_sub_func_uint64_t_u_u((l_111[0][2] = ((FAKE_DIVERGE(p_989->group_0_offset, get_group_id(0), 10) < (safe_mod_func_int64_t_s_s(((safe_div_func_int16_t_s_s((safe_mod_func_uint32_t_u_u(((safe_unary_minus_func_int64_t_s(((((0x24B0658D7BDA1314L == ((*l_130) = (safe_mul_func_int16_t_s_s(((*l_151) = 5L), ((p_989->g_216[1] , (safe_mul_func_int16_t_s_s((l_279 = (((*l_273) = l_166[1]) == l_276)), (*l_110)))) <= (**l_224)))))) && (-2L)) > (*l_110)) <= l_133))) , p_989->g_154[1][4]), p_989->g_150[1])), l_280)) > p_989->g_150[4]), p_989->g_69[1]))) | (-9L))), l_100)) >= FAKE_DIVERGE(p_989->global_2_offset, get_global_id(2), 10)), 10)) && (**l_224))), 0x54L)), p_989->g_70)) || 0UL)), (*l_110))), l_212[2][1])))) == 4294967287UL) && l_279)) , 1UL), l_284[0][0]))))), l_208))) > GROUP_DIVERGE(2, 1)) & 0xFDL) >= l_208), 0UL))) | (**l_224)))) >= FAKE_DIVERGE(p_989->group_2_offset, get_group_id(2), 10)) , p_989->g_115.f0) == 0x31L);
                    }
                    else
                    { /* block id: 93 */
                        int16_t l_288 = 1L;
                        int32_t l_289 = 0x52DB29B3L;
                        int32_t *l_290[7] = {&l_111[6][0],&l_111[6][3],&l_111[6][0],&l_111[6][0],&l_111[6][3],&l_111[6][0],&l_111[6][0]};
                        uint32_t l_300 = 4294967295UL;
                        int i;
                        l_288 &= (**l_224);
                        p_989->g_286[1] = l_288;
                        l_300++;
                    }
                }
            }
        }
        l_303[0][7] = (void*)0;
        for (p_989->g_278 = (-25); (p_989->g_278 < 22); p_989->g_278 = safe_add_func_uint32_t_u_u(p_989->g_278, 8))
        { /* block id: 104 */
            int32_t **l_306 = (void*)0;
            union U0 l_314[2][4] = {{{0xEC370606L},{0x169B05E9L},{0xEC370606L},{0xEC370606L}},{{0xEC370606L},{0x169B05E9L},{0xEC370606L},{0xEC370606L}}};
            int32_t l_319 = 0x5E127DB2L;
            int32_t l_322 = (-2L);
            int i, j;
            p_989->g_307 = p_94;
            p_989->g_286[2] ^= (((void*)0 == &p_989->g_150[6]) && ((safe_mul_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((safe_add_func_int32_t_s_s((l_111[0][2] ^ l_208), ((l_314[0][2] , (p_989->g_157--)) & (-1L)))), ((l_100 != 7UL) ^ (+(safe_rshift_func_uint8_t_u_s(6UL, l_100)))))), 1L)) & 0x448EL));
            l_323++;
            l_326 = p_989->g_150[0];
        }
    }
    return l_100;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_990;
    struct S2* p_989 = &c_990;
    struct S2 c_991 = {
        0x54EA6801L, // p_989->g_2
        {7L,0x594BL,7L,7L,0x594BL,7L,7L}, // p_989->g_5
        {0x281D21F1L,0x281D21F1L,0x281D21F1L,0x281D21F1L,0x281D21F1L,0x281D21F1L,0x281D21F1L,0x281D21F1L}, // p_989->g_6
        (-1L), // p_989->g_7
        (-2L), // p_989->g_8
        0L, // p_989->g_9
        0x15761BE3L, // p_989->g_11
        0x65741311L, // p_989->g_12
        0x29L, // p_989->g_17
        0x1CDE89C6L, // p_989->g_53
        {0x57L,0x57L}, // p_989->g_69
        0x9421A0E5L, // p_989->g_70
        0x0705E7732C352423L, // p_989->g_96
        {0}, // p_989->g_104
        {0}, // p_989->g_106
        (void*)0, // p_989->g_114
        {3UL}, // p_989->g_115
        {0}, // p_989->g_117
        {2L,2L}, // p_989->g_131
        {0UL,0x91L,0UL,0UL,0x91L,0UL,0UL,0x91L,0UL}, // p_989->g_150
        {{(-2L),0x5B283499L,0x0C824337L,0x5B283499L,(-2L),(-2L),0x5B283499L,0x0C824337L},{(-2L),0x5B283499L,0x0C824337L,0x5B283499L,(-2L),(-2L),0x5B283499L,0x0C824337L},{(-2L),0x5B283499L,0x0C824337L,0x5B283499L,(-2L),(-2L),0x5B283499L,0x0C824337L},{(-2L),0x5B283499L,0x0C824337L,0x5B283499L,(-2L),(-2L),0x5B283499L,0x0C824337L},{(-2L),0x5B283499L,0x0C824337L,0x5B283499L,(-2L),(-2L),0x5B283499L,0x0C824337L},{(-2L),0x5B283499L,0x0C824337L,0x5B283499L,(-2L),(-2L),0x5B283499L,0x0C824337L}}, // p_989->g_154
        0xE9D5L, // p_989->g_157
        0x02F2754EL, // p_989->g_169
        0x7C90A92FL, // p_989->g_178
        {{&p_989->g_5[2],&p_989->g_5[0],&p_989->g_5[1]},{&p_989->g_5[2],&p_989->g_5[0],&p_989->g_5[1]},{&p_989->g_5[2],&p_989->g_5[0],&p_989->g_5[1]},{&p_989->g_5[2],&p_989->g_5[0],&p_989->g_5[1]},{&p_989->g_5[2],&p_989->g_5[0],&p_989->g_5[1]},{&p_989->g_5[2],&p_989->g_5[0],&p_989->g_5[1]},{&p_989->g_5[2],&p_989->g_5[0],&p_989->g_5[1]},{&p_989->g_5[2],&p_989->g_5[0],&p_989->g_5[1]}}, // p_989->g_179
        {0}, // p_989->g_197
        {4294967286UL,4294967286UL,4294967286UL,4294967286UL}, // p_989->g_216
        0x74L, // p_989->g_235
        (-10L), // p_989->g_275
        0x6AC8L, // p_989->g_278
        (-7L), // p_989->g_283
        {0L,0L,0L}, // p_989->g_286
        (void*)0, // p_989->g_307
        0x6EL, // p_989->g_321
        0x26EBL, // p_989->g_327
        65529UL, // p_989->g_345
        0x27D5EBDEL, // p_989->g_374
        65535UL, // p_989->g_385
        {0}, // p_989->g_427
        &p_989->g_96, // p_989->g_491
        &p_989->g_491, // p_989->g_490
        8UL, // p_989->g_551
        {0}, // p_989->g_583
        {{{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}}},{{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}}}}, // p_989->g_602
        (void*)0, // p_989->g_655
        {{{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}}},{{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}}},{{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}}}}, // p_989->g_668
        {{{0}}}, // p_989->g_670
        {0x35BF6745D699059DL,0x3D19DAEE33F77F96L,0x35BF6745D699059DL,0x35BF6745D699059DL,0x3D19DAEE33F77F96L,0x35BF6745D699059DL,0x35BF6745D699059DL,0x3D19DAEE33F77F96L}, // p_989->g_676
        0xC4L, // p_989->g_680
        (-4L), // p_989->g_683
        {{0xB06D5A03564A37A0L,1UL,0x914E442C6E30C32DL,18446744073709551615UL,3UL,18446744073709551615UL,0x914E442C6E30C32DL,1UL,0xB06D5A03564A37A0L},{0xB06D5A03564A37A0L,1UL,0x914E442C6E30C32DL,18446744073709551615UL,3UL,18446744073709551615UL,0x914E442C6E30C32DL,1UL,0xB06D5A03564A37A0L},{0xB06D5A03564A37A0L,1UL,0x914E442C6E30C32DL,18446744073709551615UL,3UL,18446744073709551615UL,0x914E442C6E30C32DL,1UL,0xB06D5A03564A37A0L},{0xB06D5A03564A37A0L,1UL,0x914E442C6E30C32DL,18446744073709551615UL,3UL,18446744073709551615UL,0x914E442C6E30C32DL,1UL,0xB06D5A03564A37A0L},{0xB06D5A03564A37A0L,1UL,0x914E442C6E30C32DL,18446744073709551615UL,3UL,18446744073709551615UL,0x914E442C6E30C32DL,1UL,0xB06D5A03564A37A0L}}, // p_989->g_730
        0x71L, // p_989->g_739
        &p_989->g_739, // p_989->g_738
        {0UL,0UL,0UL,0UL,0UL}, // p_989->g_771
        0xC7E02445L, // p_989->g_807
        0x7BC1L, // p_989->g_820
        0xA51BB8D9L, // p_989->g_849
        (void*)0, // p_989->g_855
        &p_989->g_855, // p_989->g_854
        &p_989->g_150[3], // p_989->g_878
        {&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307}, // p_989->g_898
        {{&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307},{&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307},{&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307,&p_989->g_307}}, // p_989->g_899
        (void*)0, // p_989->g_900
        &p_989->g_115, // p_989->g_913
        &p_989->g_913, // p_989->g_912
        &p_989->g_345, // p_989->g_917
        &p_989->g_917, // p_989->g_916
        {0}, // p_989->g_955
        &p_989->g_307, // p_989->g_965
        {{{&p_989->g_307},{&p_989->g_307}},{{&p_989->g_307},{&p_989->g_307}},{{&p_989->g_307},{&p_989->g_307}},{{&p_989->g_307},{&p_989->g_307}},{{&p_989->g_307},{&p_989->g_307}},{{&p_989->g_307},{&p_989->g_307}},{{&p_989->g_307},{&p_989->g_307}}}, // p_989->g_968
        (void*)0, // p_989->g_969
        {{0},{0},{0}}, // p_989->g_982
        {(-2L)}, // p_989->g_987
        &p_989->g_307, // p_989->g_988
        sequence_input[get_global_id(0)], // p_989->global_0_offset
        sequence_input[get_global_id(1)], // p_989->global_1_offset
        sequence_input[get_global_id(2)], // p_989->global_2_offset
        sequence_input[get_local_id(0)], // p_989->local_0_offset
        sequence_input[get_local_id(1)], // p_989->local_1_offset
        sequence_input[get_local_id(2)], // p_989->local_2_offset
        sequence_input[get_group_id(0)], // p_989->group_0_offset
        sequence_input[get_group_id(1)], // p_989->group_1_offset
        sequence_input[get_group_id(2)], // p_989->group_2_offset
    };
    c_990 = c_991;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_989);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_989->g_2, "p_989->g_2", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_989->g_5[i], "p_989->g_5[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_989->g_6[i], "p_989->g_6[i]", print_hash_value);

    }
    transparent_crc(p_989->g_7, "p_989->g_7", print_hash_value);
    transparent_crc(p_989->g_8, "p_989->g_8", print_hash_value);
    transparent_crc(p_989->g_9, "p_989->g_9", print_hash_value);
    transparent_crc(p_989->g_11, "p_989->g_11", print_hash_value);
    transparent_crc(p_989->g_12, "p_989->g_12", print_hash_value);
    transparent_crc(p_989->g_17, "p_989->g_17", print_hash_value);
    transparent_crc(p_989->g_53, "p_989->g_53", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_989->g_69[i], "p_989->g_69[i]", print_hash_value);

    }
    transparent_crc(p_989->g_70, "p_989->g_70", print_hash_value);
    transparent_crc(p_989->g_96, "p_989->g_96", print_hash_value);
    transparent_crc(p_989->g_115.f0, "p_989->g_115.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_989->g_131[i], "p_989->g_131[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_989->g_150[i], "p_989->g_150[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_989->g_154[i][j], "p_989->g_154[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_989->g_157, "p_989->g_157", print_hash_value);
    transparent_crc(p_989->g_169, "p_989->g_169", print_hash_value);
    transparent_crc(p_989->g_178, "p_989->g_178", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_989->g_216[i], "p_989->g_216[i]", print_hash_value);

    }
    transparent_crc(p_989->g_235, "p_989->g_235", print_hash_value);
    transparent_crc(p_989->g_275, "p_989->g_275", print_hash_value);
    transparent_crc(p_989->g_278, "p_989->g_278", print_hash_value);
    transparent_crc(p_989->g_283, "p_989->g_283", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_989->g_286[i], "p_989->g_286[i]", print_hash_value);

    }
    transparent_crc(p_989->g_321, "p_989->g_321", print_hash_value);
    transparent_crc(p_989->g_327, "p_989->g_327", print_hash_value);
    transparent_crc(p_989->g_345, "p_989->g_345", print_hash_value);
    transparent_crc(p_989->g_374, "p_989->g_374", print_hash_value);
    transparent_crc(p_989->g_385, "p_989->g_385", print_hash_value);
    transparent_crc(p_989->g_551, "p_989->g_551", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_989->g_676[i], "p_989->g_676[i]", print_hash_value);

    }
    transparent_crc(p_989->g_680, "p_989->g_680", print_hash_value);
    transparent_crc(p_989->g_683, "p_989->g_683", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_989->g_730[i][j], "p_989->g_730[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_989->g_739, "p_989->g_739", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_989->g_771[i], "p_989->g_771[i]", print_hash_value);

    }
    transparent_crc(p_989->g_807, "p_989->g_807", print_hash_value);
    transparent_crc(p_989->g_820, "p_989->g_820", print_hash_value);
    transparent_crc(p_989->g_849, "p_989->g_849", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_989->g_987[i], "p_989->g_987[i]", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
