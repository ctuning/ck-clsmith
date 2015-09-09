// ---fake_divergence ---inter_thread_comm -g 75,28,4 -l 1,14,2
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

__constant uint32_t permutations[10][28] = {
{13,3,27,10,21,24,5,20,25,9,7,1,0,14,4,19,6,22,11,15,17,8,12,18,23,26,16,2}, // permutation 0
{18,22,0,12,13,1,2,27,25,5,10,23,4,8,26,9,24,21,19,14,17,11,7,15,16,3,20,6}, // permutation 1
{8,2,22,6,25,5,19,13,12,23,15,0,10,20,18,4,17,3,9,27,26,14,16,21,1,24,7,11}, // permutation 2
{26,20,24,4,2,14,19,11,21,12,8,23,16,1,22,27,15,17,6,13,3,18,7,25,0,9,10,5}, // permutation 3
{4,0,27,11,12,20,21,7,23,17,3,5,9,6,10,15,14,16,22,1,19,25,24,2,8,26,13,18}, // permutation 4
{25,24,3,22,0,2,9,11,20,17,6,5,18,13,15,7,27,19,4,8,21,1,26,23,12,10,14,16}, // permutation 5
{9,5,8,7,23,6,24,2,22,14,0,4,15,3,11,10,1,25,12,17,19,26,21,27,18,16,20,13}, // permutation 6
{4,3,6,10,17,1,8,2,7,22,12,18,21,26,19,15,5,23,25,27,16,11,24,9,20,13,0,14}, // permutation 7
{14,6,20,26,22,16,11,19,2,8,15,23,24,12,13,3,25,18,27,21,5,4,9,0,7,10,1,17}, // permutation 8
{18,16,27,23,10,5,19,11,9,17,8,20,6,4,25,21,13,7,24,1,22,14,0,15,26,3,12,2} // permutation 9
};

// Seed: 45

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint64_t  f0;
   uint32_t  f1;
};

union U1 {
   int32_t  f0;
   int64_t  f1;
   int8_t  f2;
   int32_t  f3;
   volatile int32_t  f4;
};

union U2 {
   int32_t  f0;
};

struct S3 {
    uint64_t g_8;
    uint32_t g_12;
    uint16_t g_30;
    uint32_t g_33;
    uint32_t g_34[1][4];
    int32_t g_45;
    int32_t * volatile g_44;
    volatile int32_t g_52;
    volatile int32_t * volatile g_51[7];
    volatile int32_t * volatile *g_50[4][7][1];
    volatile union U1 g_70;
    int32_t g_72;
    int32_t *g_75;
    int32_t **g_74[3];
    int64_t g_85[9];
    int32_t g_94[5][10];
    int8_t g_111[6];
    uint32_t g_122;
    uint32_t *g_121;
    uint32_t **g_120;
    uint32_t g_126;
    union U2 g_129;
    union U1 g_131[9][2][2];
    union U1 g_163;
    int16_t g_181;
    int32_t * volatile g_183;
    volatile int32_t g_186;
    uint64_t g_196;
    uint8_t g_206;
    volatile int32_t * volatile * volatile *g_232[1];
    volatile int32_t * volatile * volatile **g_231;
    int32_t * volatile g_264;
    int32_t * volatile g_265;
    union U2 *g_299[9];
    union U2 **g_298;
    volatile uint32_t g_316;
    volatile uint32_t *g_315;
    volatile uint32_t ** volatile g_314;
    volatile uint32_t ** volatile *g_313[4][10];
    volatile uint32_t ** volatile ** volatile g_312;
    uint8_t *g_363;
    uint8_t ** volatile g_362;
    uint8_t ** volatile * volatile g_364;
    union U1 g_386[3];
    uint16_t g_412;
    int32_t g_429;
    union U1 g_451;
    uint64_t *g_479;
    int32_t g_485;
    int16_t * volatile *g_493[7];
    uint16_t *** volatile g_518;
    uint16_t *g_521;
    uint16_t **g_520[7][5];
    uint16_t *** volatile g_519;
    uint64_t g_555;
    union U1 *g_582;
    uint8_t g_767;
    int32_t g_788;
    int16_t g_826;
    union U1 g_835;
    uint16_t g_844;
    int32_t g_847[9];
    volatile union U1 g_865[9][3][7];
    int32_t ** volatile g_892;
    uint32_t * volatile g_917[9];
    uint32_t * volatile *g_916;
    volatile int32_t g_944;
    volatile int32_t * volatile g_943;
    volatile int32_t * volatile *g_942;
    union U0 g_953;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    uint32_t tid;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S3 * p_962);
int32_t  func_2(int32_t  p_3, uint16_t  p_4, struct S3 * p_962);
int32_t  func_5(uint32_t  p_6, uint32_t  p_7, struct S3 * p_962);
int16_t  func_13(uint32_t  p_14, uint32_t * p_15, struct S3 * p_962);
uint32_t * func_16(int32_t  p_17, uint32_t * p_18, int32_t  p_19, struct S3 * p_962);
union U1  func_20(uint32_t  p_21, struct S3 * p_962);
uint32_t  func_46(uint32_t  p_47, struct S3 * p_962);
uint32_t  func_53(uint32_t  p_54, struct S3 * p_962);
int32_t *** func_55(uint32_t  p_56, struct S3 * p_962);
uint16_t  func_60(int32_t  p_61, int32_t ** p_62, int32_t ** p_63, int32_t ** p_64, uint32_t  p_65, struct S3 * p_962);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_962->g_8 p_962->l_comm_values p_962->g_30 p_962->g_34 p_962->g_comm_values p_962->g_44 p_962->g_45 p_962->g_70 p_962->g_74 p_962->g_72 p_962->g_75 p_962->g_33 p_962->g_94 p_962->g_111 p_962->g_131 p_962->g_129.f0 p_962->g_126 p_962->g_122 p_962->g_163 p_962->g_129 p_962->g_183 p_962->g_196 p_962->g_163.f0 p_962->g_131.f0 p_962->g_206 p_962->g_186 p_962->g_231 p_962->g_121 p_962->g_181 p_962->g_265 p_962->g_298 p_962->g_85 p_962->g_299 p_962->g_12 p_962->g_312 p_962->g_519 p_962->g_315 p_962->g_316 p_962->g_479 p_962->g_362 p_962->g_363 p_962->g_555 p_962->g_520 p_962->g_412 p_962->g_767 permutations p_962->g_788 p_962->g_313 p_962->g_314 p_962->g_70.f0 p_962->g_826 p_962->g_835 p_962->g_232 p_962->g_847 p_962->g_865 p_962->g_916 p_962->g_942 p_962->g_485 p_962->g_429
 * writes: p_962->g_8 p_962->g_12 p_962->g_30 p_962->g_33 p_962->g_45 p_962->g_50 p_962->g_72 p_962->g_94 p_962->g_120 p_962->g_126 p_962->g_129.f0 p_962->g_111 p_962->g_85 p_962->g_181 p_962->g_121 p_962->g_196 p_962->g_206 p_962->g_74 p_962->g_75 p_962->g_122 p_962->g_298 p_962->g_520 p_962->g_555 p_962->g_582 p_962->g_451.f1 p_962->g_412 p_962->g_299 p_962->g_788 p_962->g_826 p_962->g_844 p_962->g_835.f2 p_962->g_767 p_962->g_429
 */
int32_t  func_1(struct S3 * p_962)
{ /* block id: 4 */
    uint32_t *l_11 = &p_962->g_12;
    int32_t l_169 = 0x1F38E30CL;
    int8_t *l_172 = &p_962->g_111[4];
    int64_t *l_173 = &p_962->g_85[6];
    uint32_t **l_191 = &p_962->g_121;
    int32_t *l_948[3][1];
    int16_t l_957 = (-4L);
    uint32_t l_958[1];
    int16_t l_961 = 0x68FFL;
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
            l_948[i][j] = &p_962->g_429;
    }
    for (i = 0; i < 1; i++)
        l_958[i] = 4294967293UL;
    p_962->g_429 &= func_2(func_5(((((((*l_11) = (p_962->g_8--)) ^ ((func_13((p_962->l_comm_values[(safe_mod_func_uint32_t_u_u(p_962->tid, 28))] , (((void*)0 == l_11) != (((*l_191) = func_16((func_20(p_962->l_comm_values[(safe_mod_func_uint32_t_u_u(p_962->tid, 28))], p_962) , ((((+(safe_lshift_func_int8_t_s_u((!(safe_sub_func_int64_t_s_s(((*l_173) = ((p_962->g_129 , (((((safe_unary_minus_func_uint64_t_u((l_169 > (safe_rshift_func_int8_t_s_u(((*l_172) = (l_169 , (0x9BL > l_169))), 5))))) || l_169) , &l_169) != &l_169) < l_169)) & (-2L))), 0x2973525537350418L))), 4))) != l_169) , 7L) , l_169)), &p_962->g_122, l_169, p_962)) != l_11))), &p_962->g_122, p_962) <= 0UL) & l_169)) ^ 0x06DE9C09DDFBE49DL) >= p_962->g_comm_values[p_962->tid]) ^ l_169), l_169, p_962), l_169, p_962);
    for (p_962->g_8 = 16; (p_962->g_8 >= 56); p_962->g_8 = safe_add_func_int32_t_s_s(p_962->g_8, 8))
    { /* block id: 464 */
        int8_t l_951 = 0x5BL;
        union U0 *l_952 = &p_962->g_953;
        union U0 **l_954 = &l_952;
        int32_t **l_955[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t *l_956[4];
        int i;
        for (i = 0; i < 4; i++)
            l_956[i] = &p_962->g_94[2][7];
        if (l_951)
            break;
        (*l_954) = l_952;
        l_956[0] = &l_169;
    }
    --l_958[0];
    return l_961;
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_126 p_962->g_412 p_962->g_767 p_962->g_70.f0 p_962->g_363 p_962->g_206 p_962->g_826 p_962->g_30 p_962->g_835 p_962->g_231 p_962->g_232 p_962->g_181 p_962->g_847 p_962->g_75 p_962->g_122 p_962->g_45 p_962->g_196 p_962->g_865 p_962->g_362 p_962->g_121 p_962->g_916 p_962->g_94 p_962->g_183 p_962->g_942 p_962->g_485 p_962->g_479 p_962->g_8
 * writes: p_962->g_126 p_962->g_412 p_962->g_826 p_962->g_30 p_962->g_844 p_962->g_122 p_962->g_45 p_962->g_196 p_962->g_206 p_962->g_835.f2 p_962->g_94 p_962->g_767 p_962->g_8
 */
int32_t  func_2(int32_t  p_3, uint16_t  p_4, struct S3 * p_962)
{ /* block id: 411 */
    int16_t l_804[7] = {0x7194L,0x7194L,0x7194L,0x7194L,0x7194L,0x7194L,0x7194L};
    uint32_t *l_809 = &p_962->g_126;
    uint16_t *l_814 = &p_962->g_412;
    union U0 l_819 = {0UL};
    union U0 *l_820 = &l_819;
    int32_t *l_823 = &p_962->g_72;
    int32_t **l_822 = &l_823;
    int32_t ***l_821 = &l_822;
    int32_t ****l_824 = (void*)0;
    int32_t ****l_825 = (void*)0;
    int32_t l_840 = 0L;
    uint32_t l_886 = 0x76852DCBL;
    int16_t **l_897 = (void*)0;
    int16_t ***l_896 = &l_897;
    int32_t l_931[9] = {0x681295A9L,0x681295A9L,0x681295A9L,0x681295A9L,0x681295A9L,0x681295A9L,0x681295A9L,0x681295A9L,0x681295A9L};
    int32_t l_932[2][3];
    int32_t l_935 = 0x3B783347L;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
            l_932[i][j] = 0x73F27A0DL;
    }
    if ((safe_mul_func_int16_t_s_s(l_804[5], ((9UL != (((p_3 && 1UL) <= (l_804[6] > (safe_mul_func_uint8_t_u_u((safe_div_func_int8_t_s_s(((((*l_809)--) , ((safe_mul_func_uint16_t_u_u((++(*l_814)), (safe_lshift_func_uint8_t_u_s((~((((*l_820) = l_819) , (p_962->g_767 > ((((l_821 = l_821) != &l_822) && 248UL) , 2L))) >= l_804[5])), p_4)))) & l_804[5])) , l_819.f0), p_962->g_70.f0)), 255UL)))) <= (*p_962->g_363))) | p_962->g_826))))
    { /* block id: 416 */
        uint16_t l_848 = 0x3ABFL;
        int32_t l_890[4] = {0x469B9A95L,0x469B9A95L,0x469B9A95L,0x469B9A95L};
        uint32_t l_891 = 0x8CC60B6AL;
        union U2 **l_900 = &p_962->g_299[7];
        int i;
        for (p_962->g_826 = 17; (p_962->g_826 < 19); p_962->g_826++)
        { /* block id: 419 */
            return p_4;
        }
        for (p_962->g_30 = 0; (p_962->g_30 > 57); ++p_962->g_30)
        { /* block id: 424 */
            int16_t l_838[7] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            uint32_t *l_839 = (void*)0;
            uint16_t *l_843 = &p_962->g_844;
            int32_t l_875[3][8] = {{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L}};
            int32_t ***l_895 = &l_822;
            union U2 **l_901[10] = {(void*)0,&p_962->g_299[3],(void*)0,&p_962->g_299[3],(void*)0,(void*)0,&p_962->g_299[3],(void*)0,&p_962->g_299[3],(void*)0};
            int32_t *l_902 = &l_875[2][6];
            int i, j;
            l_848 ^= (safe_lshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_s((6UL > ((*p_962->g_75) &= ((p_962->g_835 , p_4) || ((p_3 >= (safe_lshift_func_int8_t_s_s(((l_840 = l_838[0]) , (((*l_843) = ((*l_814)++)) , (((l_804[6] > (((((((void*)0 != (*p_962->g_231)) | (safe_lshift_func_int8_t_s_s(0x0AL, 5))) > 0x7BFFCF50L) | l_838[0]) , 0x55536029B6113BA4L) <= p_962->g_181)) || 0x1CC77DFFL) || p_962->g_847[0]))), 1))) & 0x49E3L)))), 5)), 0));
            for (p_962->g_196 = 21; (p_962->g_196 == 27); p_962->g_196 = safe_add_func_uint16_t_u_u(p_962->g_196, 1))
            { /* block id: 432 */
                int64_t l_868[8][1][7] = {{{0L,0x7A530A767303531AL,(-1L),0x727DA4ACC414BDD3L,(-1L),0x7A530A767303531AL,0L}},{{0L,0x7A530A767303531AL,(-1L),0x727DA4ACC414BDD3L,(-1L),0x7A530A767303531AL,0L}},{{0L,0x7A530A767303531AL,(-1L),0x727DA4ACC414BDD3L,(-1L),0x7A530A767303531AL,0L}},{{0L,0x7A530A767303531AL,(-1L),0x727DA4ACC414BDD3L,(-1L),0x7A530A767303531AL,0L}},{{0L,0x7A530A767303531AL,(-1L),0x727DA4ACC414BDD3L,(-1L),0x7A530A767303531AL,0L}},{{0L,0x7A530A767303531AL,(-1L),0x727DA4ACC414BDD3L,(-1L),0x7A530A767303531AL,0L}},{{0L,0x7A530A767303531AL,(-1L),0x727DA4ACC414BDD3L,(-1L),0x7A530A767303531AL,0L}},{{0L,0x7A530A767303531AL,(-1L),0x727DA4ACC414BDD3L,(-1L),0x7A530A767303531AL,0L}}};
                int64_t *l_889[2];
                int32_t **l_893 = (void*)0;
                int32_t *l_894 = &l_890[1];
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_889[i] = &p_962->g_85[6];
                p_3 = (safe_div_func_uint64_t_u_u((safe_add_func_int16_t_s_s((((((safe_sub_func_int8_t_s_s((safe_sub_func_uint16_t_u_u((!((*l_843) = (safe_mod_func_int32_t_s_s(((safe_sub_func_uint32_t_u_u(((p_962->g_865[0][2][1] , 5L) || (l_840 < (safe_mod_func_int8_t_s_s(l_868[2][0][2], (safe_lshift_func_uint8_t_u_u(0x4BL, 6)))))), 0x05F0F06DL)) , (l_868[7][0][3] && (safe_rshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u((l_875[2][6] = GROUP_DIVERGE(2, 1)), (safe_rshift_func_uint16_t_u_u(((((safe_rshift_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s(((safe_mod_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u(((l_890[3] ^= (l_886 > (safe_div_func_uint8_t_u_u(p_3, 0x03L)))) | (-4L)), FAKE_DIVERGE(p_962->group_0_offset, get_group_id(0), 10))), l_868[7][0][1])) > l_838[0]), p_3)), p_4)) && p_4) <= p_4) <= l_838[6]), 13)))), 2)))), l_891)))), 0x2FE8L)), 0x3AL)) <= (-4L)) != 1UL) || p_4) != 4294967295UL), p_3)), 8UL));
                l_894 = &l_875[2][6];
            }
            (*l_902) &= (((l_890[2] >= ((l_895 != l_895) != p_962->g_196)) , l_896) != (((l_890[3] != (safe_rshift_func_uint8_t_u_s(((**p_962->g_362) = (+(l_900 == l_901[5]))), (((*p_962->g_121) = (p_3 < 0x36L)) != FAKE_DIVERGE(p_962->global_2_offset, get_global_id(2), 10))))) , 0x8D306709986F01D0L) , (void*)0));
            p_3 &= l_804[2];
        }
    }
    else
    { /* block id: 444 */
        int32_t l_905 = 0x5A5CE296L;
        int32_t l_918 = 0x57676B55L;
        uint32_t *l_919 = &p_962->g_126;
        int16_t *l_926[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint8_t *l_945 = &p_962->g_767;
        int i;
        (*p_962->g_183) = (((l_905 = (((*p_962->g_75) = (+9L)) < (((l_905 != 0x260B8E78L) | (((safe_add_func_uint8_t_u_u((l_905 | 0xB9B4DAD7L), ((((safe_unary_minus_func_int8_t_s(1L)) == (safe_lshift_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(0x0092L, (safe_div_func_int16_t_s_s((safe_unary_minus_func_int8_t_s((l_918 = (p_962->g_835.f2 = (p_962->g_916 == &p_962->g_917[3]))))), p_4)))), l_840))) == 0x43A28F3A0A45B8E3L) || (-7L)))) , l_919) != l_919)) >= p_962->g_94[2][2]))) != p_3) | p_3);
        (*p_962->g_75) = ((safe_rshift_func_uint16_t_u_s((safe_mod_func_int64_t_s_s((safe_sub_func_int16_t_s_s((~((l_840 = l_905) <= (((*p_962->g_479) = ((**p_962->g_362) ^ ((*l_945) = (~((safe_mod_func_int64_t_s_s((safe_rshift_func_int16_t_s_s((l_932[1][1] = (l_931[5] = (-7L))), ((safe_add_func_int16_t_s_s(l_918, (l_935 |= l_819.f0))) > (safe_mod_func_int64_t_s_s((((safe_add_func_int32_t_s_s(((((l_804[5] , (safe_sub_func_int16_t_s_s((p_962->g_942 != (void*)0), ((**l_821) == &p_962->g_72)))) & 0x6746F990L) >= l_905) & p_3), 0x191F84D2L)) || p_962->g_485) & 0x7612EEC8L), (*p_962->g_479)))))), (*p_962->g_479))) <= p_3))))) && 0x050476F7B5F9AA1FL))), (-1L))), l_918)), l_918)) || l_931[0]);
    }
    (*p_962->g_75) |= ((*p_962->g_363) > (((*l_814)++) ^ l_886));
    return p_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_34 p_962->g_298 p_962->g_85 p_962->g_33 p_962->g_299 p_962->g_129 p_962->g_12 p_962->g_312 p_962->g_111 p_962->g_181 p_962->g_72 p_962->g_75 p_962->g_122 p_962->g_45 p_962->g_196 p_962->g_30 p_962->g_265 p_962->g_519 p_962->g_315 p_962->g_316 p_962->g_479 p_962->g_8 p_962->g_362 p_962->g_363 p_962->g_206 p_962->g_555 p_962->g_129.f0 p_962->g_520 p_962->g_412 p_962->g_126 p_962->g_767 p_962->g_94 permutations p_962->g_788 p_962->l_comm_values p_962->g_121 p_962->g_183 p_962->g_313 p_962->g_314
 * writes: p_962->g_206 p_962->g_298 p_962->g_33 p_962->g_181 p_962->g_122 p_962->g_45 p_962->g_196 p_962->g_30 p_962->g_520 p_962->g_555 p_962->g_582 p_962->g_72 p_962->g_451.f1 p_962->g_12 p_962->g_412 p_962->g_111 p_962->g_299 p_962->g_126 p_962->g_85 p_962->g_129.f0 p_962->g_8 p_962->g_788 p_962->g_94
 */
int32_t  func_5(uint32_t  p_6, uint32_t  p_7, struct S3 * p_962)
{ /* block id: 144 */
    uint64_t l_278[2];
    int32_t l_302 = (-2L);
    int32_t *l_323 = &p_962->g_72;
    int32_t **l_322 = &l_323;
    int32_t *l_325 = &p_962->g_45;
    union U0 l_349 = {0xD4530274ED090133L};
    uint16_t *l_411 = &p_962->g_412;
    union U2 *l_488 = &p_962->g_129;
    int32_t l_546 = 0x3CEEF5BCL;
    int32_t l_552 = 5L;
    uint16_t l_576 = 0x03E9L;
    int32_t l_627 = (-1L);
    uint8_t *l_632 = (void*)0;
    uint8_t *l_634[8] = {&p_962->g_206,(void*)0,&p_962->g_206,&p_962->g_206,(void*)0,&p_962->g_206,&p_962->g_206,(void*)0};
    int32_t l_648[1];
    uint64_t l_717 = 0xC3860043E281BF75L;
    uint32_t l_722 = 4294967286UL;
    int16_t *l_769 = &p_962->g_181;
    int16_t **l_768 = &l_769;
    int i;
    for (i = 0; i < 2; i++)
        l_278[i] = 18446744073709551615UL;
    for (i = 0; i < 1; i++)
        l_648[i] = 0x65F48342L;
lbl_369:
    for (p_6 = 7; (p_6 > 26); ++p_6)
    { /* block id: 147 */
        int64_t l_291 = 1L;
        uint8_t *l_296 = (void*)0;
        uint8_t *l_297 = &p_962->g_206;
        union U2 ***l_300 = &p_962->g_298;
        uint16_t l_301 = 0UL;
        l_302 = (safe_mod_func_int16_t_s_s((((safe_lshift_func_int16_t_s_s(((safe_sub_func_uint64_t_u_u((!((((*l_300) = ((safe_mul_func_uint8_t_u_u((+(safe_rshift_func_int16_t_s_u((p_7 > (FAKE_DIVERGE(p_962->local_2_offset, get_local_id(2), 10) & 0L)), 2))), (!((l_278[1] , ((safe_rshift_func_int16_t_s_s(((safe_mod_func_uint64_t_u_u(0x872010BABC29BCD7L, l_278[0])) || ((safe_rshift_func_int16_t_s_u((&p_962->g_181 != &p_962->g_181), 12)) > ((((safe_rshift_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s((((*l_297) = (l_291 , (safe_rshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_s((((-1L) & 0x600BL) , 0L), 5)), 0)))) > l_291), 0xC1A2L)) == 0x222405DD29C05AEFL) || 0UL), p_6)) , (void*)0) != (void*)0) < p_7))), 7)) & 3L)) | p_962->g_34[0][2])))) , p_962->g_298)) == &p_962->g_299[3]) > 0x0F1AD99F770905ABL)), 6L)) <= p_7), l_301)) & p_962->g_85[3]) >= l_291), 1L));
        for (p_962->g_33 = (-4); (p_962->g_33 != 54); p_962->g_33 = safe_add_func_int32_t_s_s(p_962->g_33, 5))
        { /* block id: 153 */
            uint16_t l_311 = 65535UL;
            int16_t *l_317 = &p_962->g_181;
            int32_t l_318 = 0L;
            l_318 = (safe_div_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_u((((1L == ((*l_317) |= ((((-1L) <= (safe_add_func_uint8_t_u_u((((((***l_300) , 0x1FC954BAL) < (FAKE_DIVERGE(p_962->group_2_offset, get_group_id(2), 10) ^ (l_311 | FAKE_DIVERGE(p_962->local_0_offset, get_local_id(0), 10)))) , (!p_962->g_12)) <= p_7), (((void*)0 != p_962->g_312) == p_962->g_33)))) | 0x41DC576CL) <= p_962->g_111[4]))) >= l_291) | p_962->g_12), 9)) <= p_962->g_72), p_6));
        }
    }
    if (l_278[1])
    { /* block id: 158 */
        int32_t *l_320 = &p_962->g_72;
        int32_t **l_319 = &l_320;
        int32_t ***l_321[2][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t **l_324[7][7][5] = {{{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0}},{{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0}},{{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0}},{{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0}},{{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0}},{{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0}},{{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0},{&p_962->g_75,&p_962->g_75,&p_962->g_75,&p_962->g_75,(void*)0}}};
        union U2 l_341 = {0x2BAB7EF2L};
        int64_t l_345 = (-1L);
        int32_t l_431 = 0x6F2204D6L;
        union U0 l_444 = {1UL};
        uint32_t **l_449 = &p_962->g_121;
        uint32_t l_469[1][6] = {{1UL,4294967290UL,1UL,1UL,4294967290UL,1UL}};
        uint64_t *l_478 = &p_962->g_8;
        int16_t l_513 = 1L;
        uint32_t l_548 = 0xCA98BB91L;
        uint32_t l_575[6] = {0UL,0UL,0UL,0UL,0UL,0UL};
        uint64_t l_610 = 0x2C2EE63EDA4800C3L;
        int i, j, k;
        (*p_962->g_75) ^= 0x692DFF37L;
        l_322 = l_319;
        l_325 = &l_302;
        if ((*l_325))
        { /* block id: 162 */
            int8_t l_326 = (-1L);
            int32_t *l_327[4][7][1] = {{{&l_302},{&l_302},{&l_302},{&l_302},{&l_302},{&l_302},{&l_302}},{{&l_302},{&l_302},{&l_302},{&l_302},{&l_302},{&l_302},{&l_302}},{{&l_302},{&l_302},{&l_302},{&l_302},{&l_302},{&l_302},{&l_302}},{{&l_302},{&l_302},{&l_302},{&l_302},{&l_302},{&l_302},{&l_302}}};
            int i, j, k;
            l_326 ^= p_6;
            l_327[2][0][0] = &l_302;
        }
        else
        { /* block id: 165 */
            uint32_t *l_339 = &p_962->g_126;
            uint32_t *l_342 = &p_962->g_126;
            int32_t l_352 = 0x178DEEFCL;
            int32_t l_361 = 1L;
            int32_t *l_368 = &l_352;
            uint32_t l_468 = 4294967295UL;
            int16_t *l_495 = &p_962->g_181;
            int16_t **l_494 = &l_495;
            int32_t l_511 = 0L;
            union U1 *l_515 = &p_962->g_163;
            uint32_t l_536 = 0x8D27648AL;
            union U2 l_570 = {0x337E31BFL};
            for (p_962->g_196 = 0; (p_962->g_196 <= 8); p_962->g_196 += 1)
            { /* block id: 168 */
                int8_t *l_330 = &p_962->g_111[0];
                uint32_t **l_340 = &l_339;
                union U2 ***l_343 = &p_962->g_298;
                int32_t l_344 = 0x08F28484L;
                uint16_t *l_346 = (void*)0;
                int16_t *l_371 = &p_962->g_181;
                int16_t **l_370 = &l_371;
                uint32_t l_416 = 2UL;
                uint32_t l_430 = 0xDB8722C5L;
                union U1 *l_472 = &p_962->g_163;
                union U1 **l_473 = &l_472;
                uint64_t *l_480 = &p_962->g_196;
                uint64_t **l_481 = &l_480;
                int32_t *l_504 = &l_302;
                int i;
                (1 + 1);
            }
            for (p_962->g_30 = (-8); (p_962->g_30 < 15); p_962->g_30++)
            { /* block id: 256 */
                (*p_962->g_265) |= (*l_368);
                (*p_962->g_519) = &l_411;
            }
            for (l_444.f0 = 0; (l_444.f0 <= 2); l_444.f0 += 1)
            { /* block id: 262 */
                uint32_t l_540 = 4294967295UL;
                int32_t l_541 = (-1L);
                uint8_t l_543 = 0xADL;
                union U1 *l_577 = (void*)0;
                int32_t *l_586[2];
                uint16_t l_587 = 0xCFB4L;
                uint32_t l_626 = 0xEDBBBE6BL;
                int i;
                for (i = 0; i < 2; i++)
                    l_586[i] = (void*)0;
                if (((p_7 , (*p_962->g_315)) > 0xF6785BA6L))
                { /* block id: 263 */
                    int32_t **l_539[1];
                    uint32_t l_542 = 1UL;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_539[i] = &p_962->g_75;
                    for (p_7 = 0; (p_7 <= 4); p_7 += 1)
                    { /* block id: 266 */
                        int16_t ***l_538[7];
                        int16_t ****l_537 = &l_538[2];
                        int i;
                        for (i = 0; i < 7; i++)
                            l_538[i] = &l_494;
                        (*p_962->g_75) = (safe_sub_func_int8_t_s_s(((safe_add_func_int16_t_s_s((((safe_sub_func_uint64_t_u_u((l_542 = (safe_mul_func_int8_t_s_s((p_6 > (safe_add_func_int16_t_s_s((safe_mod_func_int64_t_s_s((((*l_368) = ((*p_962->g_479) & (l_540 = (((safe_sub_func_uint8_t_u_u(l_536, 0x2EL)) , (p_7 || (((((((*l_537) = &l_494) == (void*)0) , ((void*)0 != l_539[0])) & FAKE_DIVERGE(p_962->local_0_offset, get_local_id(0), 10)) >= p_6) > 0x09L))) >= (**p_962->g_362))))) <= l_541), (*p_962->g_479))), p_6))), p_7))), GROUP_DIVERGE(0, 1))) > (-1L)) > 0x043607B6B1C39990L), p_7)) == p_7), p_7));
                        if ((*l_368))
                            continue;
                    }
                    --l_543;
                    if (p_6)
                        continue;
                    if (l_546)
                        continue;
                }
                else
                { /* block id: 277 */
                    int32_t l_547 = 1L;
                    int32_t l_551[4] = {(-1L),(-1L),(-1L),(-1L)};
                    int32_t l_553 = 0x7BA5681AL;
                    int32_t l_554 = 0x20D394DFL;
                    union U1 **l_578 = &l_515;
                    union U1 *l_579 = &p_962->g_451;
                    union U1 **l_580 = (void*)0;
                    union U1 **l_581[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_581[i] = &l_579;
                    --l_548;
                    (*l_325) ^= 0x49C0ED55L;
                    --p_962->g_555;
                    (*l_368) = (safe_mul_func_uint8_t_u_u((((*l_320) = (((safe_add_func_int8_t_s_s(((p_7 == (((*l_495) &= (safe_sub_func_uint8_t_u_u((0x4B374DAA1F6D6292L && (((safe_lshift_func_uint8_t_u_u((safe_div_func_uint64_t_u_u((safe_rshift_func_int16_t_s_u(((l_570 , (safe_add_func_uint8_t_u_u(((safe_div_func_uint16_t_u_u(((l_575[5] > (!(((l_576 <= (~(((*l_578) = l_577) != (p_962->g_582 = l_579)))) ^ (((safe_add_func_uint64_t_u_u(0x049506BAF2D0546BL, 0x5F882585EBB257D9L)) || 0x164925D5L) >= (*l_325))) && p_6))) , p_6), (*l_368))) , p_6), (**p_962->g_362)))) , l_547), 13)), 6L)), (*p_962->g_363))) | 1UL) ^ (*l_325))), (*p_962->g_363)))) || l_547)) != 4294967295UL), 0x1BL)) , p_6) & 255UL)) , p_7), 0x0EL));
                }
                for (p_962->g_196 = 0; (p_962->g_196 <= 4); p_962->g_196 += 1)
                { /* block id: 289 */
                    int32_t *l_585 = &p_962->g_429;
                    int16_t ***l_589 = &l_494;
                    int16_t ****l_588[10] = {&l_589,&l_589,&l_589,&l_589,&l_589,&l_589,&l_589,&l_589,&l_589,&l_589};
                    int i;
                    for (p_7 = 0; (p_7 <= 4); p_7 += 1)
                    { /* block id: 292 */
                        l_586[1] = (l_585 = &l_302);
                    }
                    (*l_325) &= (0L || l_587);
                    for (p_962->g_451.f1 = 2; (p_962->g_451.f1 >= 0); p_962->g_451.f1 -= 1)
                    { /* block id: 299 */
                        (*l_325) = ((void*)0 == l_588[1]);
                    }
                }
                for (p_962->g_12 = 0; (p_962->g_12 <= 2); p_962->g_12 += 1)
                { /* block id: 305 */
                    uint8_t **l_592 = &p_962->g_363;
                    union U2 l_600[8] = {{-10L},{0x28A31AFAL},{-10L},{-10L},{0x28A31AFAL},{-10L},{-10L},{0x28A31AFAL}};
                    uint32_t **l_601 = (void*)0;
                    int32_t l_602 = 1L;
                    int8_t *l_603 = &p_962->g_111[4];
                    uint16_t ***l_604 = &p_962->g_520[6][1];
                    int32_t l_605 = 0x0BDFCC0DL;
                    int i, j;
                    l_605 ^= (((*p_962->g_479) > (((*l_604) = (((((*l_603) |= (0x49B5L != (!(safe_mod_func_uint64_t_u_u(((void*)0 == l_592), (((safe_unary_minus_func_int32_t_s(((((safe_sub_func_int16_t_s_s((safe_add_func_uint16_t_u_u(((*l_411) = (*l_325)), p_7)), (((((l_600[6] = l_570) , p_6) <= ((p_7 , p_7) == 0x58BECE7B4062AE02L)) >= p_7) >= p_6))) , 0L) , l_601) != (void*)0))) >= l_602) || p_7)))))) , FAKE_DIVERGE(p_962->group_1_offset, get_group_id(1), 10)) == p_962->g_129.f0) , (*p_962->g_519))) != (void*)0)) , (*l_368));
                    for (l_513 = 2; (l_513 >= 0); l_513 -= 1)
                    { /* block id: 313 */
                        union U2 ***l_615 = &p_962->g_298;
                        (*l_368) |= ((*p_962->g_315) > (((safe_sub_func_int32_t_s_s(l_610, ((FAKE_DIVERGE(p_962->local_0_offset, get_local_id(0), 10) != (safe_lshift_func_int8_t_s_u(p_6, 2))) & (safe_lshift_func_uint16_t_u_s((&p_962->g_298 != l_615), 5))))) || (safe_mul_func_uint16_t_u_u((l_605 ^= (++(*l_411))), p_7))) <= (((safe_sub_func_uint32_t_u_u(((safe_add_func_uint16_t_u_u((0x5E767343L > (*l_325)), (safe_rshift_func_uint16_t_u_u(p_6, p_6)))) < (-3L)), l_626)) < p_7) != l_627)));
                    }
                }
            }
        }
    }
    else
    { /* block id: 321 */
        int8_t l_642 = 0L;
        int32_t l_644 = (-8L);
        int32_t l_647 = 0L;
        int32_t l_649[2][5][9] = {{{(-1L),0x6FDEE6C4L,8L,8L,0x6FDEE6C4L,(-1L),0L,(-1L),0x301FC16EL},{(-1L),0x6FDEE6C4L,8L,8L,0x6FDEE6C4L,(-1L),0L,(-1L),0x301FC16EL},{(-1L),0x6FDEE6C4L,8L,8L,0x6FDEE6C4L,(-1L),0L,(-1L),0x301FC16EL},{(-1L),0x6FDEE6C4L,8L,8L,0x6FDEE6C4L,(-1L),0L,(-1L),0x301FC16EL},{(-1L),0x6FDEE6C4L,8L,8L,0x6FDEE6C4L,(-1L),0L,(-1L),0x301FC16EL}},{{(-1L),0x6FDEE6C4L,8L,8L,0x6FDEE6C4L,(-1L),0L,(-1L),0x301FC16EL},{(-1L),0x6FDEE6C4L,8L,8L,0x6FDEE6C4L,(-1L),0L,(-1L),0x301FC16EL},{(-1L),0x6FDEE6C4L,8L,8L,0x6FDEE6C4L,(-1L),0L,(-1L),0x301FC16EL},{(-1L),0x6FDEE6C4L,8L,8L,0x6FDEE6C4L,(-1L),0L,(-1L),0x301FC16EL},{(-1L),0x6FDEE6C4L,8L,8L,0x6FDEE6C4L,(-1L),0L,(-1L),0x301FC16EL}}};
        int16_t l_677[9][3][3] = {{{5L,1L,0x017DL},{5L,1L,0x017DL},{5L,1L,0x017DL}},{{5L,1L,0x017DL},{5L,1L,0x017DL},{5L,1L,0x017DL}},{{5L,1L,0x017DL},{5L,1L,0x017DL},{5L,1L,0x017DL}},{{5L,1L,0x017DL},{5L,1L,0x017DL},{5L,1L,0x017DL}},{{5L,1L,0x017DL},{5L,1L,0x017DL},{5L,1L,0x017DL}},{{5L,1L,0x017DL},{5L,1L,0x017DL},{5L,1L,0x017DL}},{{5L,1L,0x017DL},{5L,1L,0x017DL},{5L,1L,0x017DL}},{{5L,1L,0x017DL},{5L,1L,0x017DL},{5L,1L,0x017DL}},{{5L,1L,0x017DL},{5L,1L,0x017DL},{5L,1L,0x017DL}}};
        uint32_t ***l_684 = &p_962->g_120;
        int32_t l_760 = 0x7747A35DL;
        union U0 *l_765 = (void*)0;
        uint8_t *l_766 = &p_962->g_767;
        uint64_t *l_770 = &p_962->g_196;
        uint16_t **l_796 = (void*)0;
        int32_t *l_801 = &p_962->g_94[2][7];
        int i, j, k;
        for (p_962->g_72 = 0; (p_962->g_72 <= 5); p_962->g_72 += 1)
        { /* block id: 324 */
            uint8_t **l_633 = &l_632;
            uint64_t *l_637 = &p_962->g_8;
            int64_t *l_638 = &p_962->g_85[6];
            int8_t *l_639 = &p_962->g_386[2].f2;
            int8_t *l_640 = &p_962->g_386[2].f2;
            int32_t l_641[5] = {8L,8L,8L,8L,8L};
            int32_t l_646[2];
            uint64_t l_683 = 0x4C33D3304094139DL;
            int i;
            for (i = 0; i < 2; i++)
                l_646[i] = 0x1C150815L;
            (*p_962->g_298) = l_488;
            if (l_576)
                goto lbl_369;
        }
        for (p_962->g_126 = 0; (p_962->g_126 <= 5); p_962->g_126 += 1)
        { /* block id: 378 */
            int8_t *l_732 = &p_962->g_131[8][1][1].f2;
            int8_t *l_733 = &p_962->g_131[8][1][1].f2;
            int8_t *l_734[2];
            union U2 l_737 = {0x29F59C99L};
            int i;
            for (i = 0; i < 2; i++)
                l_734[i] = &l_642;
            for (p_7 = 0; (p_7 <= 5); p_7 += 1)
            { /* block id: 381 */
                int32_t *l_728 = &l_648[0];
                int32_t **l_729 = &l_325;
                int i;
                (*l_729) = l_728;
                (*l_728) = (FAKE_DIVERGE(p_962->local_1_offset, get_local_id(1), 10) && p_962->g_85[(p_962->g_126 + 3)]);
            }
            (*p_962->g_75) = ((p_962->g_85[p_962->g_126] , (((safe_div_func_int64_t_s_s((p_962->g_85[p_962->g_126] = (((l_647 |= p_962->g_111[p_962->g_126]) >= ((((*p_962->g_265) | 0x465D7123L) , &p_962->g_111[4]) != &p_962->g_111[p_962->g_126])) & ((((safe_rshift_func_int8_t_s_s(((void*)0 == l_684), 5)) & (*l_325)) | p_962->g_111[p_962->g_126]) <= GROUP_DIVERGE(0, 1)))), 0x60CE2CEA9D2EA74FL)) != p_7) , l_737)) , p_7);
            (*l_325) = 0x76509EC2L;
        }
        for (p_962->g_129.f0 = 28; (p_962->g_129.f0 != 24); p_962->g_129.f0--)
        { /* block id: 392 */
            uint64_t **l_783 = &l_770;
            uint16_t *l_786 = (void*)0;
            int32_t l_787 = 1L;
            uint32_t *l_789 = &p_962->g_12;
            int32_t l_790 = 0L;
            int32_t **l_791 = &l_325;
            int i, j;
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_962->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 28)), permutations[(safe_mod_func_uint32_t_u_u((safe_div_func_uint64_t_u_u(((*p_962->g_479) ^= (((0x78F73B33D292A335L | (safe_div_func_uint8_t_u_u(((safe_div_func_uint16_t_u_u(((((safe_lshift_func_uint8_t_u_s((safe_div_func_uint64_t_u_u(((safe_div_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u((((safe_mul_func_uint8_t_u_u(((*p_962->g_363)++), (l_760 && ((+(((((p_962->g_111[4] > (((safe_sub_func_uint32_t_u_u(((l_765 = (void*)0) == &l_349), l_642)) , ((void*)0 != l_766)) != FAKE_DIVERGE(p_962->global_1_offset, get_global_id(1), 10))) ^ ((l_768 = (void*)0) == (void*)0)) ^ (-6L)) , &l_278[1]) != l_770)) | p_6)))) , p_7) , p_6), FAKE_DIVERGE(p_962->global_0_offset, get_global_id(0), 10))) <= 0x4EL), p_7)), 0x4CD7L)) < (*l_325)), 0x260BE2BE675D9B69L)), (*l_325))) , p_7) , p_962->g_767) != l_644), 1UL)) < 0xE49FL), 0x0DL))) , (*p_962->g_265)) && p_6)), p_962->g_94[0][1])), 10))][(safe_mod_func_uint32_t_u_u(p_962->tid, 28))]));
            (*l_791) = func_16(((safe_add_func_uint32_t_u_u(((safe_sub_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(permutations[(safe_mod_func_uint32_t_u_u((safe_div_func_uint64_t_u_u(((*p_962->g_479) ^= (((0x78F73B33D292A335L | (safe_div_func_uint8_t_u_u(((safe_div_func_uint16_t_u_u(((((safe_lshift_func_uint8_t_u_s((safe_div_func_uint64_t_u_u(((safe_div_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u((((safe_mul_func_uint8_t_u_u(((*p_962->g_363)++), (l_760 && ((+(((((p_962->g_111[4] > (((safe_sub_func_uint32_t_u_u(((l_765 = (void*)0) == &l_349), l_642)) , ((void*)0 != l_766)) != FAKE_DIVERGE(p_962->global_1_offset, get_global_id(1), 10))) ^ ((l_768 = (void*)0) == (void*)0)) ^ (-6L)) , &l_278[1]) != l_770)) | p_6)))) , p_7) , p_6), FAKE_DIVERGE(p_962->global_0_offset, get_global_id(0), 10))) <= 0x4EL), p_7)), 0x4CD7L)) < (*l_325)), 0x260BE2BE675D9B69L)), (*l_325))) , p_7) , p_962->g_767) != l_644), 1UL)) < 0xE49FL), 0x0DL))) , (*p_962->g_265)) && p_6)), p_962->g_94[0][1])), 10))][(safe_mod_func_uint32_t_u_u(p_962->tid, 28))], (p_962->g_788 ^= (((l_787 &= (((safe_add_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_u(((void*)0 != l_783), (*l_325))), p_962->g_412)), ((safe_sub_func_uint64_t_u_u(((l_786 != (void*)0) , ((**l_783) = (0x78B8112E617C0F3CL & p_7))), 0x206672FFFB193374L)) | l_677[1][0][0]))) != p_6) == (*l_325))) >= GROUP_DIVERGE(2, 1)) | (*l_325))))), 0L)) <= p_962->l_comm_values[(safe_mod_func_uint32_t_u_u(p_962->tid, 28))]), (*p_962->g_121))) , 0x1D418BE3L), l_789, l_790, p_962);
        }
        l_760 = ((18446744073709551607UL || ((FAKE_DIVERGE(p_962->group_1_offset, get_group_id(1), 10) ^ ((safe_div_func_uint16_t_u_u(1UL, (((*p_962->g_121) = (safe_mul_func_uint16_t_u_u((l_349 , ((l_796 != l_796) < (l_644 != (*p_962->g_75)))), (l_649[0][3][1] = FAKE_DIVERGE(p_962->global_1_offset, get_global_id(1), 10))))) & 0x6036E297L))) != (safe_rshift_func_int16_t_s_s((((*l_801) = (safe_mod_func_int64_t_s_s(0x2FAF1345D3367CDEL, 0x728F8B02676A053DL))) == (****p_962->g_312)), (*l_325))))) & l_760)) & (*p_962->g_363));
    }
    return (*p_962->g_265);
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_129.f0 p_962->g_196 p_962->g_163.f0 p_962->g_131.f0 p_962->g_206 p_962->g_186 p_962->g_111 p_962->g_34 p_962->g_75 p_962->g_45 p_962->g_231 p_962->g_122 p_962->g_121 p_962->g_30 p_962->g_183 p_962->g_94 p_962->g_181 p_962->g_265
 * writes: p_962->g_129.f0 p_962->g_196 p_962->g_206 p_962->g_45 p_962->g_74 p_962->g_181 p_962->g_30 p_962->g_94 p_962->g_75 p_962->g_122
 */
int16_t  func_13(uint32_t  p_14, uint32_t * p_15, struct S3 * p_962)
{ /* block id: 103 */
    int8_t l_199 = 1L;
    int32_t l_202[1];
    int32_t l_207 = 1L;
    int8_t l_208 = 0x6FL;
    union U2 l_217 = {-9L};
    uint8_t *l_220[1];
    int32_t l_223 = 0x33713C97L;
    int32_t **l_227 = &p_962->g_75;
    int32_t ***l_228 = &l_227;
    int16_t *l_233 = &p_962->g_181;
    uint64_t *l_250[3][10] = {{&p_962->g_196,(void*)0,(void*)0,(void*)0,&p_962->g_196,&p_962->g_196,(void*)0,(void*)0,(void*)0,&p_962->g_196},{&p_962->g_196,(void*)0,(void*)0,(void*)0,&p_962->g_196,&p_962->g_196,(void*)0,(void*)0,(void*)0,&p_962->g_196},{&p_962->g_196,(void*)0,(void*)0,(void*)0,&p_962->g_196,&p_962->g_196,(void*)0,(void*)0,(void*)0,&p_962->g_196}};
    uint16_t l_257 = 0x926AL;
    int32_t *l_262 = &p_962->g_72;
    int i, j;
    for (i = 0; i < 1; i++)
        l_202[i] = 1L;
    for (i = 0; i < 1; i++)
        l_220[i] = &p_962->g_206;
    for (p_962->g_129.f0 = 0; (p_962->g_129.f0 <= (-29)); p_962->g_129.f0 = safe_sub_func_int16_t_s_s(p_962->g_129.f0, 4))
    { /* block id: 106 */
        uint64_t *l_194 = (void*)0;
        uint64_t *l_195 = &p_962->g_196;
        uint8_t *l_205 = &p_962->g_206;
        l_207 |= (((l_199 = ((*l_195)++)) >= (safe_add_func_int16_t_s_s(0x2F97L, l_202[0]))) | (safe_rshift_func_uint8_t_u_s(((*l_205) = p_14), 5)));
        if (l_208)
            continue;
    }
    if (p_962->g_196)
        goto lbl_224;
lbl_224:
    l_207 |= ((*p_962->g_75) |= (p_14 , ((safe_mod_func_int32_t_s_s(((safe_mul_func_uint16_t_u_u(3UL, (safe_mul_func_int16_t_s_s((p_962->g_163.f0 || ((!(safe_add_func_int16_t_s_s((l_217 , (l_202[0] = (((p_962->g_131[8][1][1].f0 | l_202[0]) , (safe_rshift_func_uint8_t_u_s((p_962->g_206--), 0))) , 1L))), (p_962->g_186 || l_208)))) | GROUP_DIVERGE(2, 1))), p_962->g_111[4])))) & p_962->g_34[0][2]), l_223)) <= l_208)));
    if ((safe_lshift_func_int8_t_s_u((((*l_228) = l_227) == (p_962->g_74[0] = &p_962->g_75)), (safe_mod_func_uint16_t_u_u(((((((*l_233) = (&l_228 == p_962->g_231)) && ((*l_233) = (safe_add_func_int16_t_s_s(p_962->g_122, 7UL)))) , p_14) ^ ((*p_962->g_75) |= (((safe_mod_func_int64_t_s_s((safe_div_func_int32_t_s_s((+((((p_962->g_206 = ((safe_sub_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint8_t_u_s(((safe_rshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u((((p_962->g_196 = 0UL) < 0x5B9BCCC838053FC8L) ^ p_14), 0UL)), p_14)) < FAKE_DIVERGE(p_962->local_1_offset, get_local_id(1), 10)), p_962->g_129.f0)), 3)) ^ 18446744073709551615UL), p_14)) < (*p_962->g_121))) & 0L) & l_202[0]) , l_202[0])), p_14)), p_14)) != (-3L)) | p_14))) > (-1L)), p_14)))))
    { /* block id: 125 */
        uint64_t l_253 = 0x4AD4DF2974A7C65EL;
        for (p_962->g_30 = (-2); (p_962->g_30 >= 25); p_962->g_30 = safe_add_func_int8_t_s_s(p_962->g_30, 1))
        { /* block id: 128 */
            return p_14;
        }
        (**l_227) ^= (((l_253 == (safe_lshift_func_int8_t_s_s(p_14, 5))) ^ 249UL) & 0x2EB65FCF396F3F8FL);
    }
    else
    { /* block id: 132 */
        uint8_t l_256 = 255UL;
        uint32_t ***l_259 = (void*)0;
        uint32_t ****l_258 = &l_259;
        int32_t l_263 = 0L;
        (**l_228) = func_16(l_256, func_16(((*p_962->g_75) = ((l_257 = (+p_14)) <= 2L)), p_15, p_14, p_962), (l_256 , 2L), p_962);
        (**l_228) = p_15;
        (*p_962->g_265) &= ((((l_263 = ((-1L) || (p_14 | ((((*l_258) = (void*)0) != ((((((**l_227) = p_14) && (((p_14 & (~((0x3CL && ((safe_mod_func_uint8_t_u_u((0x3882F068L <= (l_262 != p_15)), p_962->g_181)) >= p_962->g_94[2][6])) == 0UL))) | (*p_15)) <= FAKE_DIVERGE(p_962->local_1_offset, get_local_id(1), 10))) , 0x46L) != p_14) , (void*)0)) | p_14)))) > 4L) > l_256) == (-1L));
        (***l_228) = 0L;
    }
    return (***l_228);
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_45 p_962->g_75 p_962->g_183 p_962->g_94 p_962->g_122
 * writes: p_962->g_181 p_962->g_94
 */
uint32_t * func_16(int32_t  p_17, uint32_t * p_18, int32_t  p_19, struct S3 * p_962)
{ /* block id: 96 */
    uint16_t l_176 = 5UL;
    int16_t *l_179 = (void*)0;
    int16_t *l_180 = &p_962->g_181;
    int32_t l_182 = (-1L);
    int32_t *l_184[6] = {(void*)0,&l_182,(void*)0,(void*)0,&l_182,(void*)0};
    int32_t l_185 = 0x4DF27111L;
    int8_t l_187 = 0x17L;
    uint64_t l_188 = 0x8C4F9A4B633B7F01L;
    int i;
    l_182 |= (safe_add_func_int64_t_s_s(l_176, (safe_sub_func_int16_t_s_s(((*l_180) = 0x688CL), p_962->g_45))));
    (*p_962->g_183) |= (*p_962->g_75);
    l_188++;
    return p_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_30 p_962->g_34 p_962->g_comm_values p_962->g_44 p_962->g_45 p_962->g_70 p_962->g_74 p_962->g_72 p_962->g_75 p_962->g_33 p_962->g_94 p_962->g_111 p_962->g_131 p_962->g_129.f0 p_962->g_126 p_962->g_122 p_962->g_163
 * writes: p_962->g_30 p_962->g_33 p_962->g_45 p_962->g_50 p_962->g_72 p_962->g_94 p_962->g_120 p_962->g_126 p_962->g_129.f0
 */
union U1  func_20(uint32_t  p_21, struct S3 * p_962)
{ /* block id: 7 */
    uint32_t l_22 = 0UL;
    uint16_t *l_29 = &p_962->g_30;
    int32_t **l_76 = (void*)0;
    int32_t l_135 = 0x66065E58L;
    int32_t l_136 = 1L;
    int32_t l_137 = 0x43E9EDABL;
    int32_t l_138[4][1] = {{0x6B3652A6L},{0x6B3652A6L},{0x6B3652A6L},{0x6B3652A6L}};
    int64_t l_142 = 0x177314DBC262E34BL;
    int16_t l_145[3];
    uint32_t l_146 = 4294967288UL;
    int i, j;
    for (i = 0; i < 3; i++)
        l_145[i] = (-10L);
    if (((l_22 == ((((safe_sub_func_uint64_t_u_u(l_22, (safe_rshift_func_uint8_t_u_s((safe_sub_func_uint16_t_u_u(((--(*l_29)) == 0UL), (p_962->g_33 = 1UL))), 2)))) != l_22) == p_962->g_34[0][2]) < ((safe_sub_func_int8_t_s_s(((safe_mod_func_uint16_t_u_u((0x5996FD0FE1F230B5L | p_962->g_comm_values[p_962->tid]), (safe_mod_func_uint32_t_u_u(((safe_rshift_func_int16_t_s_s(l_22, 15)) >= p_962->g_34[0][2]), l_22)))) > p_962->g_34[0][2]), 2UL)) , 0xAEC70140L))) , l_22))
    { /* block id: 10 */
        int32_t l_43 = 0x110760B9L;
        int16_t l_59 = 0L;
        int32_t *l_71[7] = {&p_962->g_72,&p_962->g_72,&p_962->g_72,&p_962->g_72,&p_962->g_72,&p_962->g_72,&p_962->g_72};
        int32_t l_73[6][1] = {{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}};
        int32_t ***l_124 = &p_962->g_74[1];
        int32_t ****l_123 = &l_124;
        uint32_t *l_125 = &p_962->g_126;
        union U2 *l_128 = &p_962->g_129;
        union U2 **l_130 = &l_128;
        int i, j;
        (*p_962->g_44) |= l_43;
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_962->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 28)), permutations[(safe_mod_func_uint32_t_u_u(((func_46(p_962->g_34[0][2], p_962) , func_53(((*l_125) = (p_21 <= (&p_962->g_50[0][6][0] == ((*l_123) = func_55((((l_59 == (func_46(p_21, p_962) <= func_60((l_73[4][0] = (safe_div_func_uint16_t_u_u((safe_mod_func_uint64_t_u_u((p_962->g_70 , (l_22 & p_21)), p_21)), l_43))), p_962->g_74[0], l_76, l_76, p_962->g_72, p_962))) | p_21) , p_962->g_45), p_962))))), p_962)) , 0UL), 10))][(safe_mod_func_uint32_t_u_u(p_962->tid, 28))]));
        (*l_130) = l_128;
    }
    else
    { /* block id: 60 */
        return p_962->g_131[8][1][1];
    }
    for (p_962->g_129.f0 = 1; (p_962->g_129.f0 >= 0); p_962->g_129.f0 -= 1)
    { /* block id: 65 */
        int32_t *l_133[5];
        int i;
        for (i = 0; i < 5; i++)
            l_133[i] = &p_962->g_94[4][0];
        for (p_962->g_30 = 0; (p_962->g_30 <= 0); p_962->g_30 += 1)
        { /* block id: 68 */
            uint16_t *l_132 = &p_962->g_30;
            int32_t **l_134 = &l_133[3];
            int i, j;
            (*p_962->g_75) = (l_29 != ((p_962->g_34[p_962->g_30][p_962->g_129.f0] && FAKE_DIVERGE(p_962->local_2_offset, get_local_id(2), 10)) , l_132));
            (*p_962->g_75) |= (-9L);
            for (p_962->g_72 = 0; (p_962->g_72 <= 1); p_962->g_72 += 1)
            { /* block id: 73 */
                int i, j, k;
                return p_962->g_131[(p_962->g_30 + 2)][p_962->g_30][p_962->g_72];
            }
            (*l_134) = l_133[3];
        }
        for (p_962->g_33 = 0; (p_962->g_33 <= 0); p_962->g_33 += 1)
        { /* block id: 80 */
            int16_t l_139 = 0x6207L;
            int32_t l_140 = 0L;
            int32_t l_141 = (-1L);
            int32_t l_143 = 0x77354DF2L;
            int32_t l_144[8][5] = {{6L,0x06BFDA8DL,6L,6L,0x06BFDA8DL},{6L,0x06BFDA8DL,6L,6L,0x06BFDA8DL},{6L,0x06BFDA8DL,6L,6L,0x06BFDA8DL},{6L,0x06BFDA8DL,6L,6L,0x06BFDA8DL},{6L,0x06BFDA8DL,6L,6L,0x06BFDA8DL},{6L,0x06BFDA8DL,6L,6L,0x06BFDA8DL},{6L,0x06BFDA8DL,6L,6L,0x06BFDA8DL},{6L,0x06BFDA8DL,6L,6L,0x06BFDA8DL}};
            int i, j;
            l_146++;
        }
    }
    (*p_962->g_75) = (safe_mod_func_int64_t_s_s(0x4D4363F34B4380D1L, p_21));
    for (p_962->g_126 = 0; (p_962->g_126 == 57); p_962->g_126 = safe_add_func_uint64_t_u_u(p_962->g_126, 4))
    { /* block id: 87 */
        uint8_t l_155[3][10][1] = {{{0x88L},{0x88L},{0x88L},{0x88L},{0x88L},{0x88L},{0x88L},{0x88L},{0x88L},{0x88L}},{{0x88L},{0x88L},{0x88L},{0x88L},{0x88L},{0x88L},{0x88L},{0x88L},{0x88L},{0x88L}},{{0x88L},{0x88L},{0x88L},{0x88L},{0x88L},{0x88L},{0x88L},{0x88L},{0x88L},{0x88L}}};
        int32_t *l_156 = &l_136;
        int32_t *l_157 = &l_138[2][0];
        int32_t *l_158 = &l_136;
        int32_t *l_159[10][3];
        uint64_t l_160 = 18446744073709551615UL;
        int i, j, k;
        for (i = 0; i < 10; i++)
        {
            for (j = 0; j < 3; j++)
                l_159[i][j] = &l_138[1][0];
        }
        l_155[1][9][0] ^= ((&p_962->g_122 != &l_146) , ((*p_962->g_75) ^= ((safe_lshift_func_uint16_t_u_u(p_962->g_122, 1)) , p_21)));
        --l_160;
        (*l_158) |= p_21;
    }
    return p_962->g_163;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_962->g_50
 */
uint32_t  func_46(uint32_t  p_47, struct S3 * p_962)
{ /* block id: 12 */
    int32_t **l_49 = (void*)0;
    int32_t ***l_48[3][10][3] = {{{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49}},{{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49}},{{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49},{&l_49,&l_49,&l_49}}};
    int i, j, k;
    p_962->g_50[3][6][0] = (void*)0;
    return p_47;
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_75 p_962->g_45
 * writes: p_962->g_45
 */
uint32_t  func_53(uint32_t  p_54, struct S3 * p_962)
{ /* block id: 53 */
    uint16_t l_127 = 0x5FBCL;
    (*p_962->g_75) &= 0x3F1A1F52L;
    return l_127;
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_33 p_962->g_111 p_962->g_45 p_962->g_75
 * writes: p_962->g_33 p_962->g_72 p_962->g_94 p_962->g_120 p_962->g_45
 */
int32_t *** func_55(uint32_t  p_56, struct S3 * p_962)
{ /* block id: 36 */
    int16_t l_104 = 0x1690L;
    int32_t l_107 = 0x72585D44L;
    int32_t l_110[7][8];
    uint32_t **l_118 = (void*)0;
    int i, j;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 8; j++)
            l_110[i][j] = 0x4233826AL;
    }
    for (p_962->g_33 = 0; (p_962->g_33 >= 53); p_962->g_33++)
    { /* block id: 39 */
        int8_t l_97 = (-10L);
        int32_t *l_98 = &p_962->g_94[2][7];
        int32_t *l_99 = &p_962->g_45;
        int32_t *l_100 = &p_962->g_94[1][7];
        int32_t *l_101 = &p_962->g_94[2][7];
        int32_t *l_102 = &p_962->g_94[0][1];
        int32_t *l_103 = &p_962->g_45;
        int32_t *l_105 = &p_962->g_94[3][8];
        int32_t *l_106 = &p_962->g_94[2][7];
        int32_t *l_108 = &p_962->g_94[2][7];
        int32_t *l_109[7] = {&l_107,&p_962->g_94[2][7],&l_107,&l_107,&p_962->g_94[2][7],&l_107,&l_107};
        uint16_t l_112 = 65535UL;
        int32_t *l_117[10] = {&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45};
        int i;
        l_112--;
        for (p_962->g_72 = 0; (p_962->g_72 != 20); p_962->g_72 = safe_add_func_uint64_t_u_u(p_962->g_72, 3))
        { /* block id: 43 */
            uint32_t ***l_119[3][1][3] = {{{&l_118,&l_118,&l_118}},{{&l_118,&l_118,&l_118}},{{&l_118,&l_118,&l_118}}};
            int i, j, k;
            (*l_98) = ((p_962->g_111[5] , (((*l_99) , 1UL) , l_117[3])) != l_109[5]);
            p_962->g_120 = l_118;
        }
    }
    (*p_962->g_75) = p_56;
    (*p_962->g_75) |= 9L;
    return &p_962->g_74[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_72 p_962->g_75 p_962->g_45 p_962->g_34 p_962->g_33 p_962->g_94
 * writes: p_962->g_72 p_962->g_45 p_962->g_33
 */
uint16_t  func_60(int32_t  p_61, int32_t ** p_62, int32_t ** p_63, int32_t ** p_64, uint32_t  p_65, struct S3 * p_962)
{ /* block id: 16 */
    int32_t l_78 = (-1L);
    int32_t l_79 = 0x3A85175EL;
    int32_t l_81[2][8] = {{0x1A852A6FL,0x569053DEL,0x1A852A6FL,0x1A852A6FL,0x569053DEL,0x1A852A6FL,0x1A852A6FL,0x569053DEL},{0x1A852A6FL,0x569053DEL,0x1A852A6FL,0x1A852A6FL,0x569053DEL,0x1A852A6FL,0x1A852A6FL,0x569053DEL}};
    int i, j;
    for (p_962->g_72 = 0; (p_962->g_72 >= 0); p_962->g_72 -= 1)
    { /* block id: 19 */
        int32_t *l_77[6][6][7] = {{{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45}},{{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45}},{{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45}},{{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45}},{{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45}},{{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45},{&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45,&p_962->g_45}}};
        int32_t l_80 = 0x0F827922L;
        uint64_t l_82 = 18446744073709551613UL;
        uint32_t l_86 = 0UL;
        uint16_t l_89 = 65535UL;
        int i, j, k;
        l_82++;
        l_86--;
        l_89++;
        (**p_62) ^= (p_65 ^ (+1L));
        for (l_89 = 0; (l_89 <= 2); l_89 += 1)
        { /* block id: 26 */
            int i, j;
            if (p_962->g_34[p_962->g_72][l_89])
                break;
        }
    }
    for (p_962->g_33 = 0; (p_962->g_33 == 52); p_962->g_33++)
    { /* block id: 32 */
        return p_962->g_94[2][7];
    }
    return l_81[1][0];
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[28];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 28; i++)
            l_comm_values[i] = 1;
    struct S3 c_963;
    struct S3* p_962 = &c_963;
    struct S3 c_964 = {
        0x6A3735B263D18804L, // p_962->g_8
        0x85A7B051L, // p_962->g_12
        0xD793L, // p_962->g_30
        1UL, // p_962->g_33
        {{8UL,8UL,8UL,8UL}}, // p_962->g_34
        0x6510B2D4L, // p_962->g_45
        &p_962->g_45, // p_962->g_44
        1L, // p_962->g_52
        {&p_962->g_52,&p_962->g_52,&p_962->g_52,&p_962->g_52,&p_962->g_52,&p_962->g_52,&p_962->g_52}, // p_962->g_51
        {{{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]}},{{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]}},{{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]}},{{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]},{&p_962->g_51[1]}}}, // p_962->g_50
        {1L}, // p_962->g_70
        0x66773301L, // p_962->g_72
        &p_962->g_45, // p_962->g_75
        {&p_962->g_75,&p_962->g_75,&p_962->g_75}, // p_962->g_74
        {0x251B1567E67BAFF3L,0x251B1567E67BAFF3L,0x251B1567E67BAFF3L,0x251B1567E67BAFF3L,0x251B1567E67BAFF3L,0x251B1567E67BAFF3L,0x251B1567E67BAFF3L,0x251B1567E67BAFF3L,0x251B1567E67BAFF3L}, // p_962->g_85
        {{0x1EC2C39DL,0L,0x1EC2C39DL,0x1EC2C39DL,0L,0x1EC2C39DL,0x1EC2C39DL,0L,0x1EC2C39DL,0x1EC2C39DL},{0x1EC2C39DL,0L,0x1EC2C39DL,0x1EC2C39DL,0L,0x1EC2C39DL,0x1EC2C39DL,0L,0x1EC2C39DL,0x1EC2C39DL},{0x1EC2C39DL,0L,0x1EC2C39DL,0x1EC2C39DL,0L,0x1EC2C39DL,0x1EC2C39DL,0L,0x1EC2C39DL,0x1EC2C39DL},{0x1EC2C39DL,0L,0x1EC2C39DL,0x1EC2C39DL,0L,0x1EC2C39DL,0x1EC2C39DL,0L,0x1EC2C39DL,0x1EC2C39DL},{0x1EC2C39DL,0L,0x1EC2C39DL,0x1EC2C39DL,0L,0x1EC2C39DL,0x1EC2C39DL,0L,0x1EC2C39DL,0x1EC2C39DL}}, // p_962->g_94
        {0x73L,0x54L,0x73L,0x73L,0x54L,0x73L}, // p_962->g_111
        1UL, // p_962->g_122
        &p_962->g_122, // p_962->g_121
        &p_962->g_121, // p_962->g_120
        0x30937FBBL, // p_962->g_126
        {0x7AD94609L}, // p_962->g_129
        {{{{-6L},{-6L}},{{-6L},{-6L}}},{{{-6L},{-6L}},{{-6L},{-6L}}},{{{-6L},{-6L}},{{-6L},{-6L}}},{{{-6L},{-6L}},{{-6L},{-6L}}},{{{-6L},{-6L}},{{-6L},{-6L}}},{{{-6L},{-6L}},{{-6L},{-6L}}},{{{-6L},{-6L}},{{-6L},{-6L}}},{{{-6L},{-6L}},{{-6L},{-6L}}},{{{-6L},{-6L}},{{-6L},{-6L}}}}, // p_962->g_131
        {0x5FD2D398L}, // p_962->g_163
        0L, // p_962->g_181
        &p_962->g_94[1][2], // p_962->g_183
        (-5L), // p_962->g_186
        1UL, // p_962->g_196
        0x31L, // p_962->g_206
        {&p_962->g_50[1][6][0]}, // p_962->g_232
        &p_962->g_232[0], // p_962->g_231
        (void*)0, // p_962->g_264
        &p_962->g_45, // p_962->g_265
        {&p_962->g_129,&p_962->g_129,&p_962->g_129,&p_962->g_129,&p_962->g_129,&p_962->g_129,&p_962->g_129,&p_962->g_129,&p_962->g_129}, // p_962->g_299
        &p_962->g_299[3], // p_962->g_298
        0xE8A26FA7L, // p_962->g_316
        &p_962->g_316, // p_962->g_315
        &p_962->g_315, // p_962->g_314
        {{&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314},{&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314},{&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314},{&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314,&p_962->g_314}}, // p_962->g_313
        &p_962->g_313[3][5], // p_962->g_312
        &p_962->g_206, // p_962->g_363
        &p_962->g_363, // p_962->g_362
        &p_962->g_362, // p_962->g_364
        {{1L},{1L},{1L}}, // p_962->g_386
        0x5E73L, // p_962->g_412
        2L, // p_962->g_429
        {0x41ACBACAL}, // p_962->g_451
        &p_962->g_8, // p_962->g_479
        4L, // p_962->g_485
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_962->g_493
        (void*)0, // p_962->g_518
        (void*)0, // p_962->g_521
        {{&p_962->g_521,&p_962->g_521,&p_962->g_521,&p_962->g_521,&p_962->g_521},{&p_962->g_521,&p_962->g_521,&p_962->g_521,&p_962->g_521,&p_962->g_521},{&p_962->g_521,&p_962->g_521,&p_962->g_521,&p_962->g_521,&p_962->g_521},{&p_962->g_521,&p_962->g_521,&p_962->g_521,&p_962->g_521,&p_962->g_521},{&p_962->g_521,&p_962->g_521,&p_962->g_521,&p_962->g_521,&p_962->g_521},{&p_962->g_521,&p_962->g_521,&p_962->g_521,&p_962->g_521,&p_962->g_521},{&p_962->g_521,&p_962->g_521,&p_962->g_521,&p_962->g_521,&p_962->g_521}}, // p_962->g_520
        &p_962->g_520[6][1], // p_962->g_519
        5UL, // p_962->g_555
        &p_962->g_131[4][0][0], // p_962->g_582
        251UL, // p_962->g_767
        0L, // p_962->g_788
        (-3L), // p_962->g_826
        {0x1CA48E8CL}, // p_962->g_835
        65534UL, // p_962->g_844
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_962->g_847
        {{{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}}},{{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}}},{{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}}},{{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}}},{{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}}},{{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}}},{{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}}},{{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}}},{{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}},{{1L},{0L},{0x5E27C833L},{0x39A7566CL},{-2L},{-10L},{-2L}}}}, // p_962->g_865
        (void*)0, // p_962->g_892
        {&p_962->g_126,&p_962->g_126,&p_962->g_126,&p_962->g_126,&p_962->g_126,&p_962->g_126,&p_962->g_126,&p_962->g_126,&p_962->g_126}, // p_962->g_917
        &p_962->g_917[7], // p_962->g_916
        (-10L), // p_962->g_944
        &p_962->g_944, // p_962->g_943
        &p_962->g_943, // p_962->g_942
        {0xBADDD33159AB5EABL}, // p_962->g_953
        sequence_input[get_global_id(0)], // p_962->global_0_offset
        sequence_input[get_global_id(1)], // p_962->global_1_offset
        sequence_input[get_global_id(2)], // p_962->global_2_offset
        sequence_input[get_local_id(0)], // p_962->local_0_offset
        sequence_input[get_local_id(1)], // p_962->local_1_offset
        sequence_input[get_local_id(2)], // p_962->local_2_offset
        sequence_input[get_group_id(0)], // p_962->group_0_offset
        sequence_input[get_group_id(1)], // p_962->group_1_offset
        sequence_input[get_group_id(2)], // p_962->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 28)), permutations[0][get_linear_local_id()])), // p_962->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_963 = c_964;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_962);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_962->g_8, "p_962->g_8", print_hash_value);
    transparent_crc(p_962->g_12, "p_962->g_12", print_hash_value);
    transparent_crc(p_962->g_30, "p_962->g_30", print_hash_value);
    transparent_crc(p_962->g_33, "p_962->g_33", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_962->g_34[i][j], "p_962->g_34[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_962->g_45, "p_962->g_45", print_hash_value);
    transparent_crc(p_962->g_52, "p_962->g_52", print_hash_value);
    transparent_crc(p_962->g_70.f0, "p_962->g_70.f0", print_hash_value);
    transparent_crc(p_962->g_72, "p_962->g_72", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_962->g_85[i], "p_962->g_85[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_962->g_94[i][j], "p_962->g_94[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_962->g_111[i], "p_962->g_111[i]", print_hash_value);

    }
    transparent_crc(p_962->g_122, "p_962->g_122", print_hash_value);
    transparent_crc(p_962->g_126, "p_962->g_126", print_hash_value);
    transparent_crc(p_962->g_129.f0, "p_962->g_129.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_962->g_131[i][j][k].f0, "p_962->g_131[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_962->g_163.f0, "p_962->g_163.f0", print_hash_value);
    transparent_crc(p_962->g_181, "p_962->g_181", print_hash_value);
    transparent_crc(p_962->g_186, "p_962->g_186", print_hash_value);
    transparent_crc(p_962->g_196, "p_962->g_196", print_hash_value);
    transparent_crc(p_962->g_206, "p_962->g_206", print_hash_value);
    transparent_crc(p_962->g_316, "p_962->g_316", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_962->g_386[i].f0, "p_962->g_386[i].f0", print_hash_value);

    }
    transparent_crc(p_962->g_412, "p_962->g_412", print_hash_value);
    transparent_crc(p_962->g_429, "p_962->g_429", print_hash_value);
    transparent_crc(p_962->g_485, "p_962->g_485", print_hash_value);
    transparent_crc(p_962->g_555, "p_962->g_555", print_hash_value);
    transparent_crc(p_962->g_767, "p_962->g_767", print_hash_value);
    transparent_crc(p_962->g_788, "p_962->g_788", print_hash_value);
    transparent_crc(p_962->g_826, "p_962->g_826", print_hash_value);
    transparent_crc(p_962->g_844, "p_962->g_844", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_962->g_847[i], "p_962->g_847[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_962->g_865[i][j][k].f0, "p_962->g_865[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_962->g_944, "p_962->g_944", print_hash_value);
    transparent_crc(p_962->g_953.f0, "p_962->g_953.f0", print_hash_value);
    transparent_crc(p_962->l_comm_values[get_linear_local_id()], "p_962->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_962->g_comm_values[get_linear_group_id() * 28 + get_linear_local_id()], "p_962->g_comm_values[get_linear_group_id() * 28 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
