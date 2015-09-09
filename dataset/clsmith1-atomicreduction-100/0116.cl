// ---atomic_reductions ---fake_divergence -g 13,63,5 -l 13,7,1
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


// Seed: 116

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
};

union U1 {
   int32_t  f0;
   int8_t  f1;
   volatile int8_t * f2;
};

union U2 {
   int8_t * f0;
   int32_t  f1;
   int8_t * f2;
   uint32_t  f3;
   int16_t  f4;
};

struct S3 {
    volatile int32_t g_2;
    volatile int32_t g_3;
    int32_t g_4[9];
    int32_t g_8;
    union U2 g_20;
    int8_t g_32;
    int8_t *g_31;
    uint64_t g_33[5][3][2];
    int32_t *g_49;
    int32_t ** volatile g_48;
    volatile int32_t g_56;
    volatile int32_t g_57;
    volatile int32_t g_58;
    volatile int32_t g_59;
    volatile int32_t g_60;
    volatile int32_t g_61[9][7];
    volatile int32_t g_62;
    int32_t g_63;
    uint32_t g_70;
    uint16_t g_100;
    uint32_t g_102;
    int8_t g_104;
    int32_t g_112;
    volatile uint8_t g_118;
    uint8_t g_128[4];
    uint16_t g_156[5][5][4];
    volatile uint64_t g_160[6];
    volatile uint64_t *g_159;
    uint16_t g_188;
    int8_t *g_198;
    uint32_t *** volatile g_199;
    union U2 *g_226;
    union U2 ** volatile g_225;
    volatile uint32_t g_238;
    uint32_t *g_258;
    uint64_t g_260;
    int16_t g_262[6][10];
    volatile int8_t g_283[5][8][1];
    union U1 g_357;
    union U1 *g_359;
    int64_t g_382;
    uint64_t *g_440;
    uint64_t **g_439[2][9];
    uint64_t *** volatile g_438;
    uint8_t g_541;
    int32_t * volatile g_561[5];
    int32_t * volatile g_562;
    uint32_t **g_566;
    uint32_t *** volatile g_565[2][3][9];
    uint32_t *** volatile g_567[3][8][9];
    int32_t ** volatile g_598;
    volatile int32_t * volatile g_604;
    int32_t * volatile g_691[10][6][4];
    int32_t * volatile g_692;
    int32_t * volatile g_725;
    int32_t * volatile g_745;
    int32_t * volatile g_761;
    int32_t * volatile g_786;
    uint32_t g_791;
    uint16_t g_824;
    uint8_t g_866[9];
    union U0 g_918;
    int64_t g_944;
    int64_t g_986;
    uint64_t *** volatile g_1031[6][2];
    int64_t g_1048;
    uint64_t ***g_1050;
    uint64_t ****g_1049[9];
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
int32_t  func_1(struct S3 * p_1059);
union U0  func_14(union U2  p_15, uint8_t  p_16, int64_t  p_17, uint64_t  p_18, int32_t  p_19, struct S3 * p_1059);
uint8_t  func_21(uint64_t  p_22, union U2  p_23, int32_t  p_24, int64_t  p_25, int16_t  p_26, struct S3 * p_1059);
int64_t  func_29(int8_t * p_30, struct S3 * p_1059);
uint8_t  func_43(int32_t * p_44, struct S3 * p_1059);
int32_t * func_45(int8_t * p_46, struct S3 * p_1059);
int8_t  func_54(int32_t * p_55, struct S3 * p_1059);
int32_t  func_64(int32_t * p_65, int32_t  p_66, uint64_t  p_67, int8_t * p_68, struct S3 * p_1059);
int8_t * func_76(int8_t * p_77, int32_t  p_78, int32_t ** p_79, int32_t  p_80, struct S3 * p_1059);
int64_t  func_84(int16_t  p_85, uint32_t  p_86, struct S3 * p_1059);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1059->g_4 p_1059->g_262
 * writes: p_1059->g_4
 */
int32_t  func_1(struct S3 * p_1059)
{ /* block id: 4 */
    uint32_t l_11[3];
    union U2 l_788 = {0};
    uint32_t **l_1041 = &p_1059->g_258;
    int64_t l_1053 = 0x47FA93E7AE1DB698L;
    uint32_t l_1055 = 4294967295UL;
    union U2 l_1056 = {0};
    union U0 *l_1058 = &p_1059->g_918;
    union U0 **l_1057 = &l_1058;
    int i;
    for (i = 0; i < 3; i++)
        l_11[i] = 0UL;
    for (p_1059->g_4[0] = 28; (p_1059->g_4[0] >= 29); p_1059->g_4[0]++)
    { /* block id: 7 */
        int32_t *l_7 = &p_1059->g_8;
        int32_t *l_9 = &p_1059->g_8;
        int32_t *l_10[2];
        uint8_t l_792 = 1UL;
        int32_t **l_1033 = &l_10[0];
        union U2 l_1038[4] = {{0},{0},{0},{0}};
        int64_t *l_1046 = (void*)0;
        int64_t *l_1047 = &p_1059->g_1048;
        uint64_t *****l_1051 = &p_1059->g_1049[3];
        uint8_t *l_1052 = &p_1059->g_128[1];
        uint32_t **l_1054 = (void*)0;
        int i;
        for (i = 0; i < 2; i++)
            l_10[i] = &p_1059->g_8;
        l_11[1]--;
    }
    (*l_1057) = ((l_11[2] , l_1056) , &p_1059->g_918);
    return p_1059->g_262[5][9];
}


/* ------------------------------------------ */
/* 
 * reads : p_1059->g_63 p_1059->g_824 p_1059->g_160 p_1059->g_262 p_1059->g_128 p_1059->g_104 p_1059->g_61 p_1059->g_359 p_1059->g_357 p_1059->g_382 p_1059->g_4 p_1059->g_59 p_1059->g_159 p_1059->g_440 p_1059->g_357.f0 p_1059->g_866 p_1059->g_604 p_1059->g_56 p_1059->g_62 p_1059->g_31 p_1059->g_32 p_1059->g_541 p_1059->g_3 p_1059->g_156 p_1059->g_198 p_1059->g_918 p_1059->g_566 p_1059->g_258 p_1059->g_102 p_1059->g_188 p_1059->g_562 p_1059->g_745 p_1059->g_112 p_1059->g_260
 * writes: p_1059->g_63 p_1059->g_359 p_1059->g_824 p_1059->g_262 p_1059->g_104 p_1059->g_33 p_1059->g_61 p_1059->g_56 p_1059->g_866 p_1059->g_156 p_1059->g_128 p_1059->g_382 p_1059->g_944 p_1059->g_102 p_1059->g_8
 */
union U0  func_14(union U2  p_15, uint8_t  p_16, int64_t  p_17, uint64_t  p_18, int32_t  p_19, struct S3 * p_1059)
{ /* block id: 378 */
    int32_t l_825 = 0x5E8521D3L;
    int32_t l_830 = 2L;
    int32_t l_833[10] = {0x5C54A2A9L,0x5C54A2A9L,0x5C54A2A9L,0x5C54A2A9L,0x5C54A2A9L,0x5C54A2A9L,0x5C54A2A9L,0x5C54A2A9L,0x5C54A2A9L,0x5C54A2A9L};
    uint64_t ****l_846 = (void*)0;
    union U0 l_958 = {5UL};
    int16_t l_984 = 0x331AL;
    int32_t *l_1026 = (void*)0;
    int32_t **l_1025[2][6][10] = {{{&l_1026,(void*)0,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,(void*)0,&l_1026},{&l_1026,(void*)0,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,(void*)0,&l_1026},{&l_1026,(void*)0,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,(void*)0,&l_1026},{&l_1026,(void*)0,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,(void*)0,&l_1026},{&l_1026,(void*)0,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,(void*)0,&l_1026},{&l_1026,(void*)0,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,(void*)0,&l_1026}},{{&l_1026,(void*)0,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,(void*)0,&l_1026},{&l_1026,(void*)0,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,(void*)0,&l_1026},{&l_1026,(void*)0,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,(void*)0,&l_1026},{&l_1026,(void*)0,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,(void*)0,&l_1026},{&l_1026,(void*)0,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,(void*)0,&l_1026},{&l_1026,(void*)0,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,&l_1026,(void*)0,&l_1026}}};
    uint8_t l_1028 = 0xFCL;
    uint64_t **l_1029 = &p_1059->g_440;
    uint64_t **l_1032 = &p_1059->g_440;
    int i, j, k;
    for (p_1059->g_63 = 0; (p_1059->g_63 >= 0); ++p_1059->g_63)
    { /* block id: 381 */
        int32_t *l_810 = &p_1059->g_357.f0;
        int32_t **l_809 = &l_810;
        union U1 **l_823 = &p_1059->g_359;
        uint64_t ***l_826 = (void*)0;
        int16_t *l_827 = &p_1059->g_20.f4;
        int16_t *l_828 = &p_1059->g_262[3][8];
        uint16_t *l_829[4][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
        int32_t *l_831 = (void*)0;
        int32_t *l_832[1];
        int32_t l_923 = 2L;
        uint8_t l_953 = 0x8BL;
        uint64_t *l_959 = &p_1059->g_33[1][1][0];
        int32_t l_1023 = 0x3DF020DCL;
        uint64_t ***l_1030 = &l_1029;
        int i, j;
        for (i = 0; i < 1; i++)
            l_832[i] = &p_1059->g_8;
        l_833[8] &= (safe_lshift_func_uint16_t_u_u((l_830 = (safe_mul_func_uint8_t_u_u(0xFBL, (safe_add_func_uint16_t_u_u(0UL, ((p_17 >= (safe_lshift_func_int16_t_s_s(((0x60L || (-1L)) <= ((safe_mod_func_int64_t_s_s((safe_mod_func_int16_t_s_s(((*l_828) &= (safe_rshift_func_uint8_t_u_u((l_809 != (void*)0), (safe_lshift_func_uint16_t_u_s(((safe_lshift_func_uint16_t_u_s(((l_826 = ((safe_mod_func_int8_t_s_s((safe_div_func_uint16_t_u_u((((((safe_mod_func_int32_t_s_s((p_1059->g_824 &= (safe_lshift_func_uint8_t_u_s(((((*l_823) = &p_1059->g_357) == (p_18 , (void*)0)) , p_19), p_19))), 1UL)) & 4294967295UL) , l_825) > 0x11L) > 0x1225L), l_825)), l_825)) , l_826)) == &p_1059->g_439[0][8]), p_1059->g_160[2])) >= 0x17BF33D55DBFD005L), l_825))))), p_1059->g_128[3])), p_18)) < p_19)), 6))) || 8L)))))), 4));
        for (p_1059->g_104 = 3; (p_1059->g_104 >= 0); p_1059->g_104 -= 1)
        { /* block id: 390 */
            int16_t l_868 = 0x4388L;
            int32_t l_873 = 0x46E7AA4CL;
            int32_t l_876 = 0x157BE295L;
            int32_t l_877[7] = {0x088911BFL,0L,0x088911BFL,0x088911BFL,0L,0x088911BFL,0x088911BFL};
            uint32_t l_914[4] = {4294967286UL,4294967286UL,4294967286UL,4294967286UL};
            uint32_t l_990 = 4294967286UL;
            int32_t **l_1024 = (void*)0;
            int i;
            for (l_830 = 0; (l_830 >= 0); l_830 -= 1)
            { /* block id: 393 */
                uint32_t **l_855 = &p_1059->g_258;
                int32_t l_869 = (-1L);
                int32_t l_874 = 1L;
                int32_t l_875[1];
                int32_t **l_898[1];
                uint8_t *l_941 = &p_1059->g_128[1];
                int64_t *l_942 = &p_1059->g_382;
                int64_t *l_943[8][4][2] = {{{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944}},{{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944}},{{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944}},{{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944}},{{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944}},{{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944}},{{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944}},{{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944},{&p_1059->g_944,&p_1059->g_944}}};
                int8_t l_945 = 0x48L;
                union U0 l_964 = {0xBAC47478L};
                int8_t **l_1016[7];
                uint32_t *l_1027 = (void*)0;
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_875[i] = 0L;
                for (i = 0; i < 1; i++)
                    l_898[i] = (void*)0;
                for (i = 0; i < 7; i++)
                    l_1016[i] = &p_1059->g_198;
                if ((((safe_sub_func_uint8_t_u_u((p_1059->g_61[(l_830 + 7)][(p_1059->g_104 + 3)] , ((p_16 , p_16) >= (~((p_18 >= (safe_mod_func_uint8_t_u_u((((safe_sub_func_int64_t_s_s(0x5DFC2179EAAF657DL, ((**l_823) , 0x51B887D4AD4F470EL))) ^ (safe_add_func_uint8_t_u_u(p_1059->g_382, (safe_sub_func_int64_t_s_s(p_17, p_16))))) == p_1059->g_4[0]), 0x8AL))) & p_1059->g_61[(l_830 + 7)][(p_1059->g_104 + 3)])))), l_830)) & 0x19FC4591C686C49FL) , 0x7DD6581CL))
                { /* block id: 394 */
                    int32_t l_870 = 0x7C7D4E10L;
                    int32_t l_871 = 0x3C79CC00L;
                    int32_t l_872[7] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                    uint32_t l_879 = 0x98D656DCL;
                    union U2 l_911 = {0};
                    int i, j, k;
                    if (p_16)
                        break;
                    for (p_17 = 0; (p_17 <= 3); p_17 += 1)
                    { /* block id: 398 */
                        uint32_t l_867 = 0x8CDA0435L;
                        int i, j, k;
                        p_1059->g_61[(p_1059->g_104 + 4)][(p_1059->g_104 + 1)] = (l_825 < (p_1059->g_59 , (safe_div_func_int64_t_s_s(((l_846 != &p_1059->g_438) < ((((*p_1059->g_440) = (*p_1059->g_159)) || (safe_mod_func_int16_t_s_s(((safe_mul_func_int8_t_s_s((safe_sub_func_int64_t_s_s((safe_add_func_int8_t_s_s((l_855 != (void*)0), FAKE_DIVERGE(p_1059->global_2_offset, get_global_id(2), 10))), (safe_sub_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u((safe_unary_minus_func_uint16_t_u(p_1059->g_357.f0)), (safe_unary_minus_func_uint16_t_u((safe_rshift_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(p_16, p_1059->g_866[7])), l_867)))))), 0xB7L)))), l_867)) > (-5L)), p_1059->g_262[0][3]))) & 0x9EE77D0BB9781EFAL)), FAKE_DIVERGE(p_1059->global_0_offset, get_global_id(0), 10)))));
                        if ((*p_1059->g_604))
                            break;
                        l_868 ^= 0x0EFADE5AL;
                    }
                    if ((l_869 ^= (p_1059->g_62 , 1L)))
                    { /* block id: 405 */
                        int8_t l_878 = (-8L);
                        (*p_1059->g_604) = (~0x5863D6F6L);
                        ++l_879;
                        if (l_825)
                            break;
                    }
                    else
                    { /* block id: 409 */
                        uint16_t l_882 = 0UL;
                        int32_t ***l_895 = (void*)0;
                        int32_t **l_897 = (void*)0;
                        int32_t ***l_896 = &l_897;
                        int32_t ***l_899 = (void*)0;
                        int32_t ***l_900 = (void*)0;
                        int32_t ***l_901[3];
                        int8_t **l_902 = (void*)0;
                        uint8_t *l_912[1][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                        int8_t *l_913[5][10] = {{&p_1059->g_32,&p_1059->g_32,&p_1059->g_104,(void*)0,&p_1059->g_104,(void*)0,&p_1059->g_104,&p_1059->g_32,&p_1059->g_104,(void*)0},{&p_1059->g_32,&p_1059->g_32,&p_1059->g_104,(void*)0,&p_1059->g_104,(void*)0,&p_1059->g_104,&p_1059->g_32,&p_1059->g_104,(void*)0},{&p_1059->g_32,&p_1059->g_32,&p_1059->g_104,(void*)0,&p_1059->g_104,(void*)0,&p_1059->g_104,&p_1059->g_32,&p_1059->g_104,(void*)0},{&p_1059->g_32,&p_1059->g_32,&p_1059->g_104,(void*)0,&p_1059->g_104,(void*)0,&p_1059->g_104,&p_1059->g_32,&p_1059->g_104,(void*)0},{&p_1059->g_32,&p_1059->g_32,&p_1059->g_104,(void*)0,&p_1059->g_104,(void*)0,&p_1059->g_104,&p_1059->g_32,&p_1059->g_104,(void*)0}};
                        int i, j;
                        for (i = 0; i < 3; i++)
                            l_901[i] = (void*)0;
                        l_882--;
                        (*p_1059->g_604) = (safe_lshift_func_int8_t_s_s(((safe_div_func_uint16_t_u_u(((((FAKE_DIVERGE(p_1059->group_1_offset, get_group_id(1), 10) <= (l_833[6] = (((safe_sub_func_int32_t_s_s((safe_lshift_func_int8_t_s_u((*p_1059->g_31), (((l_875[0] |= (safe_lshift_func_int16_t_s_u(l_833[8], (((&p_1059->g_198 == ((((*l_896) = (void*)0) == (l_898[0] = l_898[0])) , l_902)) <= GROUP_DIVERGE(0, 1)) ^ (((p_18 != p_19) , (p_1059->g_156[2][2][0] |= (safe_sub_func_uint32_t_u_u((safe_sub_func_int32_t_s_s((safe_mod_func_int16_t_s_s(((safe_div_func_uint8_t_u_u((p_1059->g_866[2] ^= (l_911 , p_1059->g_541)), p_1059->g_3)) >= l_869), GROUP_DIVERGE(2, 1))), p_17)), l_830)))) == FAKE_DIVERGE(p_1059->local_0_offset, get_local_id(0), 10)))))) && p_17) && 3UL))), l_879)) && l_833[8]) || GROUP_DIVERGE(2, 1)))) == l_872[0]) == p_18) > p_16), l_914[3])) & p_17), (*p_1059->g_198)));
                        l_871 |= 7L;
                    }
                }
                else
                { /* block id: 420 */
                    uint16_t l_915[4][5][8] = {{{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL}},{{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL}},{{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL}},{{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL},{0x07BBL,0x0447L,65535UL,0UL,65535UL,0x0447L,0x07BBL,0xED9CL}}};
                    int i, j, k;
                    for (l_825 = 0; (l_825 <= 3); l_825 += 1)
                    { /* block id: 423 */
                        l_915[1][2][6]--;
                        return p_1059->g_918;
                    }
                }
                if ((l_877[3] = (((((safe_sub_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_s(l_923, (safe_div_func_uint8_t_u_u((((*p_1059->g_31) >= 6UL) ^ (safe_div_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_s((((safe_mod_func_int64_t_s_s((p_1059->g_944 = ((*l_942) |= ((((((safe_unary_minus_func_int32_t_s(((void*)0 == &p_1059->g_104))) , (safe_sub_func_uint16_t_u_u(p_16, ((safe_sub_func_int16_t_s_s(((safe_div_func_uint8_t_u_u(((*l_941) = (safe_sub_func_uint32_t_u_u((**p_1059->g_566), ((l_810 == ((*p_1059->g_258) , (void*)0)) < (*p_1059->g_198))))), l_877[3])) && FAKE_DIVERGE(p_1059->local_1_offset, get_local_id(1), 10)), p_1059->g_3)) | p_16)))) | GROUP_DIVERGE(1, 1)) , p_1059->g_62) > 0x17D4L) <= p_16))), 18446744073709551615UL)) >= l_877[4]) != l_945), 8)) , 0x318DL), p_1059->g_4[1]))), 250UL)))) && 0x0E94L), 0xD0EAL)) != 0UL) >= 65530UL) && p_16) != l_914[1])))
                { /* block id: 432 */
                    int8_t l_948[3];
                    int32_t l_950 = 0x7174D2F9L;
                    uint32_t l_975 = 0x0F676605L;
                    uint64_t *l_976 = &p_1059->g_33[1][2][1];
                    uint8_t l_977 = 255UL;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_948[i] = 0x56L;
                    for (p_1059->g_102 = (-10); (p_1059->g_102 < 37); p_1059->g_102++)
                    { /* block id: 435 */
                        int32_t l_949 = (-1L);
                        int32_t l_951 = 0L;
                        int32_t l_952[9][9] = {{3L,0L,(-2L),0x4911CA93L,1L,0x02E2940DL,0x02E2940DL,1L,0x4911CA93L},{3L,0L,(-2L),0x4911CA93L,1L,0x02E2940DL,0x02E2940DL,1L,0x4911CA93L},{3L,0L,(-2L),0x4911CA93L,1L,0x02E2940DL,0x02E2940DL,1L,0x4911CA93L},{3L,0L,(-2L),0x4911CA93L,1L,0x02E2940DL,0x02E2940DL,1L,0x4911CA93L},{3L,0L,(-2L),0x4911CA93L,1L,0x02E2940DL,0x02E2940DL,1L,0x4911CA93L},{3L,0L,(-2L),0x4911CA93L,1L,0x02E2940DL,0x02E2940DL,1L,0x4911CA93L},{3L,0L,(-2L),0x4911CA93L,1L,0x02E2940DL,0x02E2940DL,1L,0x4911CA93L},{3L,0L,(-2L),0x4911CA93L,1L,0x02E2940DL,0x02E2940DL,1L,0x4911CA93L},{3L,0L,(-2L),0x4911CA93L,1L,0x02E2940DL,0x02E2940DL,1L,0x4911CA93L}};
                        int i, j;
                        l_953--;
                    }
                    for (l_873 = 12; (l_873 == (-12)); --l_873)
                    { /* block id: 440 */
                        if (l_833[8])
                            break;
                        return l_958;
                    }
                    l_833[8] ^= (((l_959 != (((0x3C0CED48L < ((safe_rshift_func_int8_t_s_s(((void*)0 == &p_1059->g_104), (safe_sub_func_int32_t_s_s((l_964 , (safe_add_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_s((FAKE_DIVERGE(p_1059->group_1_offset, get_group_id(1), 10) | (--(**l_855))), 10)) > (l_950 |= (&p_1059->g_262[3][3] == l_829[(l_830 + 2)][l_830]))), (p_17 & ((safe_div_func_int32_t_s_s((safe_sub_func_int32_t_s_s((-5L), p_16)), l_975)) | p_1059->g_3))))), 2L)))) <= p_16)) ^ p_18) , l_976)) , l_975) , l_977);
                }
                else
                { /* block id: 447 */
                    int64_t l_980 = 0x6B30224A2C0ACE51L;
                    int32_t l_982 = 0L;
                    int32_t l_983 = 0x5C9177D4L;
                    int32_t l_985[6];
                    uint32_t **l_1003 = &p_1059->g_258;
                    int i;
                    for (i = 0; i < 6; i++)
                        l_985[i] = (-5L);
                    l_980 ^= (safe_mul_func_int8_t_s_s((0xD86713EDL > ((p_1059->g_262[3][3] = p_1059->g_128[3]) & p_17)), p_1059->g_188));
                    for (l_923 = 1; (l_923 >= 0); l_923 -= 1)
                    { /* block id: 452 */
                        int32_t l_981[6][1][1];
                        uint8_t l_987 = 0xE8L;
                        int32_t ***l_1004 = &l_898[0];
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 1; j++)
                            {
                                for (k = 0; k < 1; k++)
                                    l_981[i][j][k] = 0x369EF7E2L;
                            }
                        }
                        --l_987;
                        l_990--;
                        l_983 &= ((safe_div_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(p_1059->g_160[(p_1059->g_104 + 1)], 2)), (*p_1059->g_198))) , (l_877[3] |= ((*p_1059->g_562) = (safe_mul_func_int8_t_s_s((safe_rshift_func_int8_t_s_u((0x76L == p_16), 5)), (safe_rshift_func_uint16_t_u_u((((p_18 , &l_832[0]) == ((*l_1004) = ((l_985[3] = ((void*)0 != l_1003)) , &p_1059->g_49))) , l_958.f0), p_16)))))));
                        l_981[0][0][0] = (*p_1059->g_745);
                    }
                    for (l_923 = (-22); (l_923 >= 29); l_923 = safe_add_func_int16_t_s_s(l_923, 6))
                    { /* block id: 464 */
                        l_877[3] |= 0x3C041820L;
                        if ((*p_1059->g_745))
                            continue;
                        l_873 = (safe_unary_minus_func_int64_t_s(p_1059->g_62));
                    }
                    l_831 = &l_830;
                }
                l_873 ^= (~(l_810 == ((safe_mul_func_uint8_t_u_u((((safe_div_func_uint16_t_u_u(p_16, p_1059->g_260)) < ((*p_1059->g_31) == 0x0DL)) || ((safe_div_func_int64_t_s_s(((((safe_div_func_int64_t_s_s(l_914[2], (+((&p_1059->g_31 != l_1016[4]) ^ (FAKE_DIVERGE(p_1059->group_0_offset, get_group_id(0), 10) ^ (safe_lshift_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s((((safe_rshift_func_int8_t_s_s(p_18, 3)) >= p_1059->g_866[2]) >= l_1023), 4)), 2))))))) || 0x46E250F0A4E3CAABL) , l_1024) == l_1025[0][2][6]), p_17)) < p_18)), p_16)) , l_1027)));
            }
            l_833[8] = (l_1028 = ((void*)0 == &p_1059->g_566));
        }
        l_1032 = ((*l_1030) = l_1029);
    }
    return l_958;
}


/* ------------------------------------------ */
/* 
 * reads : p_1059->g_160
 * writes:
 */
uint8_t  func_21(uint64_t  p_22, union U2  p_23, int32_t  p_24, int64_t  p_25, int16_t  p_26, struct S3 * p_1059)
{ /* block id: 376 */
    return p_1059->g_160[5];
}


/* ------------------------------------------ */
/* 
 * reads : p_1059->g_32 p_1059->g_4 p_1059->g_48 p_1059->g_8 p_1059->g_283 p_1059->g_260 p_1059->g_60 p_1059->g_49 p_1059->g_63 p_1059->g_112 p_1059->g_262 p_1059->g_62 p_1059->g_159 p_1059->g_160 p_1059->g_31 p_1059->g_198 p_1059->g_104 p_1059->g_128 p_1059->g_258 p_1059->g_102 p_1059->g_57 p_1059->g_188 p_1059->g_100 p_1059->g_156 p_1059->g_438 p_1059->g_58 p_1059->g_357 p_1059->g_382 p_1059->g_359 p_1059->g_70 p_1059->g_33 p_1059->g_562 p_1059->g_59 p_1059->g_566 p_1059->g_440 p_1059->g_541 p_1059->g_598 p_1059->g_61 p_1059->g_604 p_1059->g_357.f0 p_1059->g_692 p_1059->g_725 p_1059->g_745 p_1059->g_786
 * writes: p_1059->g_32 p_1059->g_49 p_1059->g_8 p_1059->g_63 p_1059->g_359 p_1059->g_112 p_1059->g_128 p_1059->g_102 p_1059->g_56 p_1059->g_33 p_1059->g_100 p_1059->g_439 p_1059->g_262 p_1059->g_357.f0 p_1059->g_541 p_1059->g_57 p_1059->g_156 p_1059->g_382 p_1059->g_260 p_1059->g_31 p_1059->g_104
 */
int64_t  func_29(int8_t * p_30, struct S3 * p_1059)
{ /* block id: 9 */
    uint32_t **l_537[2];
    uint32_t ***l_536 = &l_537[1];
    int32_t l_538 = (-3L);
    union U1 *l_558 = &p_1059->g_357;
    uint32_t **l_564 = (void*)0;
    int32_t l_599 = 0x59B290ACL;
    int32_t l_600 = 0x680A3945L;
    int32_t l_619 = 0x26A083C7L;
    int32_t *l_645 = &p_1059->g_357.f0;
    uint32_t l_650 = 0x7BD29359L;
    int32_t l_755[9][4];
    uint16_t *l_770 = &p_1059->g_156[2][2][0];
    uint16_t *l_779 = (void*)0;
    uint16_t *l_780 = &p_1059->g_100;
    int8_t l_785 = (-6L);
    int32_t l_787 = 0L;
    int i, j;
    for (i = 0; i < 2; i++)
        l_537[i] = (void*)0;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 4; j++)
            l_755[i][j] = 0x21DF179EL;
    }
    for (p_1059->g_32 = 1; (p_1059->g_32 >= 0); p_1059->g_32 -= 1)
    { /* block id: 12 */
        uint32_t l_34 = 4294967295UL;
        int32_t l_560 = (-5L);
        union U0 l_571 = {4294967286UL};
        union U1 *l_574 = &p_1059->g_357;
        int32_t l_647 = (-3L);
        int32_t l_648 = 0x326C8352L;
        int64_t l_649 = 1L;
        uint64_t ***l_678 = (void*)0;
        uint64_t *l_686 = &p_1059->g_260;
        uint64_t **l_685 = &l_686;
        int8_t *l_719[2];
        int32_t *l_760 = (void*)0;
        int i;
        for (i = 0; i < 2; i++)
            l_719[i] = (void*)0;
        if (p_1059->g_32)
        { /* block id: 13 */
            if (p_1059->g_4[0])
                break;
        }
        else
        { /* block id: 15 */
            uint8_t *l_526 = &p_1059->g_128[3];
            int32_t l_535 = 0x7F62CFC3L;
            uint32_t ***l_539 = &l_537[0];
            uint8_t *l_540 = &p_1059->g_541;
            int16_t *l_556 = (void*)0;
            union U1 *l_576 = &p_1059->g_357;
            uint8_t l_601 = 0xC6L;
            int32_t l_613 = 0L;
            int32_t l_614 = (-1L);
            int32_t l_615 = 0x603803B6L;
            int32_t l_616 = (-1L);
            int32_t l_617 = 0x526DFF4EL;
            int32_t l_618 = 0x3C7559EFL;
            uint32_t l_620 = 0xC2619D7EL;
            uint64_t *l_684 = &p_1059->g_260;
            uint64_t **l_683 = &l_684;
            uint8_t **l_695[10] = {&l_526,&l_540,&l_540,&l_540,&l_526,&l_526,&l_540,&l_540,&l_540,&l_526};
            int8_t *l_716 = &p_1059->g_104;
            int i;
            if ((l_34 | ((*l_540) = (safe_sub_func_int16_t_s_s((+(((((0x3EL && 0x72L) , (safe_add_func_int64_t_s_s((safe_mod_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s((((*l_526) = func_43(&p_1059->g_4[0], p_1059)) != (safe_div_func_uint16_t_u_u(l_34, (safe_sub_func_int64_t_s_s((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s((l_535 > (l_536 != ((l_538 , l_34) , l_539))), (*p_1059->g_198))), l_535)), l_538))))), (*p_1059->g_31))), 7UL)), l_538))) & 0x21L) > 4294967295UL) != p_1059->g_4[5])), p_1059->g_104)))))
            { /* block id: 236 */
                int8_t l_557 = 8L;
                int32_t *l_563 = &p_1059->g_112;
                for (p_1059->g_57 = 0; p_1059->g_57 < 5; p_1059->g_57 += 1)
                {
                    for (p_1059->g_541 = 0; p_1059->g_541 < 5; p_1059->g_541 += 1)
                    {
                        for (p_1059->g_100 = 0; p_1059->g_100 < 4; p_1059->g_100 += 1)
                        {
                            p_1059->g_156[p_1059->g_57][p_1059->g_541][p_1059->g_100] = 65532UL;
                        }
                    }
                }
                for (l_535 = 1; (l_535 >= 0); l_535 -= 1)
                { /* block id: 240 */
                    union U1 **l_559 = &p_1059->g_359;
                    int i;
                    l_560 = (safe_mod_func_int16_t_s_s((p_1059->g_128[l_535] | (safe_div_func_uint32_t_u_u(3UL, ((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((((*l_559) = (((safe_div_func_int32_t_s_s((p_1059->g_128[(l_535 + 1)] , (safe_rshift_func_int16_t_s_u(((p_1059->g_128[(p_1059->g_32 + 2)] != (safe_mod_func_int64_t_s_s(((((*p_1059->g_359) , l_556) == &p_1059->g_262[4][6]) | (255UL <= 0xCAL)), 18446744073709551609UL))) || l_557), p_1059->g_32))), 4294967295UL)) & p_1059->g_70) , l_558)) != (void*)0), 0x19L)), 0x0779L)) & l_557)))), 0x2CBCL));
                    for (p_1059->g_382 = 0; (p_1059->g_382 <= 1); p_1059->g_382 += 1)
                    { /* block id: 245 */
                        int i, j, k;
                        return p_1059->g_33[(p_1059->g_32 + 2)][p_1059->g_32][p_1059->g_382];
                    }
                }
                (*p_1059->g_562) = (0x0A9BD7A5L || l_560);
                (*l_563) = l_538;
            }
            else
            { /* block id: 251 */
                uint32_t ***l_568 = &l_564;
                (*l_568) = l_564;
            }
            for (p_1059->g_260 = 0; (p_1059->g_260 <= 1); p_1059->g_260 += 1)
            { /* block id: 256 */
                union U1 **l_575[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t l_581 = 0x56D2AF94L;
                int16_t *l_582 = &p_1059->g_262[3][8];
                int32_t *l_583[7] = {&l_581,&l_581,&l_581,&l_581,&l_581,&l_581,&l_581};
                int i;
                l_535 = (((((safe_lshift_func_int8_t_s_s(l_535, 4)) == (0x525D3850E6592CC6L != (l_571 , l_538))) <= ((p_1059->g_59 | ((*l_582) |= (safe_mod_func_uint32_t_u_u((**p_1059->g_566), ((((p_1059->g_359 = l_574) != l_576) >= (safe_mod_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u((((*p_1059->g_440) && l_581) < 3L), 8)), l_538))) , l_34))))) | p_1059->g_100)) & 0x0EDBC97B9E7E8035L) , l_535);
                l_538 = l_535;
                for (p_1059->g_541 = 0; (p_1059->g_541 <= 1); p_1059->g_541 += 1)
                { /* block id: 263 */
                    uint32_t **l_588 = &p_1059->g_258;
                    int i, j, k;
                    (*p_1059->g_562) = (safe_add_func_int64_t_s_s(0x0F4AC22469E6345DL, (!(((l_588 != (void*)0) && (((p_1059->g_33[(p_1059->g_541 + 3)][(p_1059->g_32 + 1)][p_1059->g_541] ^ (~((safe_add_func_uint32_t_u_u(((safe_div_func_int8_t_s_s((+((p_1059->g_262[3][5] |= p_1059->g_160[2]) ^ ((*p_1059->g_566) == (void*)0))), ((*l_526) ^= ((((safe_mul_func_uint8_t_u_u(l_538, (safe_unary_minus_func_int16_t_s((((p_1059->g_112 || 0xF50C12553DBC8767L) >= p_1059->g_188) || 0x2C430ABAL))))) || (*p_30)) & l_535) < p_1059->g_70)))) , l_571.f0), l_535)) && p_1059->g_33[(p_1059->g_541 + 3)][(p_1059->g_32 + 1)][p_1059->g_541]))) < (*p_1059->g_440)) > 0x28E3DBA2L)) && 0UL))));
                    for (l_538 = 1; (l_538 >= 0); l_538 -= 1)
                    { /* block id: 269 */
                        (*p_1059->g_598) = (*p_1059->g_48);
                        ++l_601;
                    }
                }
            }
            for (l_571.f0 = 0; (l_571.f0 <= 0); l_571.f0 += 1)
            { /* block id: 277 */
                int32_t *l_605 = (void*)0;
                int32_t *l_606 = &l_599;
                int32_t *l_607 = &l_600;
                int32_t *l_608 = &l_599;
                int32_t *l_609 = &p_1059->g_63;
                int32_t *l_610 = (void*)0;
                int32_t *l_611 = &l_560;
                int32_t *l_612[3][7] = {{&l_599,&l_599,&l_599,&l_599,&l_599,&l_599,&l_599},{&l_599,&l_599,&l_599,&l_599,&l_599,&l_599,&l_599},{&l_599,&l_599,&l_599,&l_599,&l_599,&l_599,&l_599}};
                int i, j;
                (*p_1059->g_604) = p_1059->g_61[(p_1059->g_32 + 6)][(p_1059->g_32 + 3)];
                l_620--;
                (*l_609) ^= (safe_add_func_uint32_t_u_u(p_1059->g_61[p_1059->g_32][(p_1059->g_32 + 4)], (safe_mul_func_int16_t_s_s(((l_600 ^ (safe_lshift_func_uint16_t_u_u((((!l_34) ^ ((*p_1059->g_198) || ((safe_sub_func_int64_t_s_s(((((*l_558) , ((*l_540) = (safe_sub_func_uint8_t_u_u((p_1059->g_156[2][2][0] , (safe_mod_func_int64_t_s_s(((((*p_1059->g_359) , (((safe_rshift_func_int16_t_s_s(0x7DDCL, 15)) || ((safe_mul_func_int8_t_s_s(((safe_mod_func_int64_t_s_s((safe_mul_func_int8_t_s_s(l_616, l_615)), l_34)) , l_571.f0), FAKE_DIVERGE(p_1059->global_2_offset, get_global_id(2), 10))) > GROUP_DIVERGE(2, 1))) != l_571.f0)) ^ l_538) | p_1059->g_33[2][1][0]), (*l_608)))), l_613)))) <= (*l_611)) == l_599), p_1059->g_260)) , (*p_30)))) != 1L), l_538))) == l_619), l_619))));
                for (l_620 = 0; (l_620 <= 1); l_620 += 1)
                { /* block id: 284 */
                    int32_t **l_646 = &l_645;
                    (*l_611) = (p_1059->g_49 != ((*l_646) = l_645));
                    ++l_650;
                }
                for (l_560 = 0; (l_560 <= 1); l_560 += 1)
                { /* block id: 291 */
                    uint32_t l_657 = 1UL;
                    int32_t l_662 = 0x550399A2L;
                    int32_t l_663 = 0x79037F91L;
                    for (p_1059->g_382 = 1; (p_1059->g_382 >= 0); p_1059->g_382 -= 1)
                    { /* block id: 294 */
                        uint16_t *l_660 = (void*)0;
                        uint16_t *l_661[10][4] = {{&p_1059->g_188,&p_1059->g_156[2][2][0],&p_1059->g_156[2][2][0],&p_1059->g_188},{&p_1059->g_188,&p_1059->g_156[2][2][0],&p_1059->g_156[2][2][0],&p_1059->g_188},{&p_1059->g_188,&p_1059->g_156[2][2][0],&p_1059->g_156[2][2][0],&p_1059->g_188},{&p_1059->g_188,&p_1059->g_156[2][2][0],&p_1059->g_156[2][2][0],&p_1059->g_188},{&p_1059->g_188,&p_1059->g_156[2][2][0],&p_1059->g_156[2][2][0],&p_1059->g_188},{&p_1059->g_188,&p_1059->g_156[2][2][0],&p_1059->g_156[2][2][0],&p_1059->g_188},{&p_1059->g_188,&p_1059->g_156[2][2][0],&p_1059->g_156[2][2][0],&p_1059->g_188},{&p_1059->g_188,&p_1059->g_156[2][2][0],&p_1059->g_156[2][2][0],&p_1059->g_188},{&p_1059->g_188,&p_1059->g_156[2][2][0],&p_1059->g_156[2][2][0],&p_1059->g_188},{&p_1059->g_188,&p_1059->g_156[2][2][0],&p_1059->g_156[2][2][0],&p_1059->g_188}};
                        int i, j, k;
                        (*p_1059->g_604) = ((p_1059->g_33[(p_1059->g_32 + 3)][p_1059->g_382][p_1059->g_382] ^ ((((&p_1059->g_70 == (void*)0) ^ 1L) == p_1059->g_283[(p_1059->g_32 + 3)][(p_1059->g_32 + 4)][l_571.f0]) < ((*l_607) |= l_560))) != (((((safe_div_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s((((*p_1059->g_258) & l_657) & ((safe_add_func_uint16_t_u_u((p_1059->g_100 ^= (p_1059->g_156[2][2][0]++)), l_615)) < FAKE_DIVERGE(p_1059->group_1_offset, get_group_id(1), 10))), p_1059->g_104)), l_538)) & 0L) && 0x76A296C4L) == l_663) , (-1L)));
                    }
                    for (l_647 = 4; (l_647 >= 0); l_647 -= 1)
                    { /* block id: 302 */
                        l_600 &= 0x7FF21B51L;
                        (*l_608) = (l_616 <= (safe_mod_func_int32_t_s_s(0x2952F27EL, 1UL)));
                    }
                }
            }
            for (l_617 = 1; (l_617 >= 0); l_617 -= 1)
            { /* block id: 310 */
                uint32_t **l_676 = &p_1059->g_258;
                uint64_t ***l_679[5];
                int32_t l_681 = 0x010A794DL;
                int32_t l_682 = 0x1DE40384L;
                int i;
                for (i = 0; i < 5; i++)
                    l_679[i] = &p_1059->g_439[0][8];
                for (l_613 = 0; (l_613 <= 1); l_613 += 1)
                { /* block id: 313 */
                    uint32_t **l_677 = &p_1059->g_258;
                    uint64_t ****l_680 = &l_679[3];
                    int i, j, k;
                    l_682 ^= (safe_div_func_uint16_t_u_u(((!((p_1059->g_33[(l_617 + 1)][(l_617 + 1)][l_617] ^ (safe_div_func_uint32_t_u_u((~(((l_571.f0 < (l_560 <= (safe_div_func_uint64_t_u_u(p_1059->g_33[(l_617 + 1)][(l_617 + 1)][l_617], (l_600 ^ ((safe_lshift_func_uint16_t_u_s((l_676 != l_677), ((l_678 != ((*l_680) = l_679[1])) & p_1059->g_128[2]))) | p_1059->g_357.f0)))))) < 0x49AAL) , p_1059->g_33[(l_617 + 1)][(l_617 + 1)][l_617])), (*p_1059->g_258)))) > l_681)) ^ 1UL), p_1059->g_60));
                    l_685 = l_683;
                    l_560 ^= (0x3AA0E04FL && ((-6L) >= p_1059->g_63));
                }
                (*p_1059->g_692) = ((safe_mul_func_uint8_t_u_u((((**p_1059->g_566) ^= ((l_571.f0 ^ (l_682 != (safe_div_func_uint32_t_u_u((0x6EL > l_649), 0xAC1AED5CL)))) != ((l_600 && 0UL) >= (l_613 | 0x1B74EC44L)))) ^ 4L), FAKE_DIVERGE(p_1059->global_1_offset, get_global_id(1), 10))) <= p_1059->g_32);
                for (l_613 = 1; (l_613 >= 0); l_613 -= 1)
                { /* block id: 323 */
                    uint8_t **l_693 = &l_526;
                    uint8_t ***l_694[4][9][1] = {{{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693}},{{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693}},{{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693}},{{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693},{&l_693}}};
                    int64_t l_708 = (-1L);
                    int8_t *l_720 = &p_1059->g_357.f1;
                    union U2 l_723 = {0};
                    int32_t l_744[8][9] = {{(-9L),(-9L),0x3714FD05L,0x44ACBDCAL,0x3458EB24L,0x1C00286CL,6L,0x3331B7C2L,6L},{(-9L),(-9L),0x3714FD05L,0x44ACBDCAL,0x3458EB24L,0x1C00286CL,6L,0x3331B7C2L,6L},{(-9L),(-9L),0x3714FD05L,0x44ACBDCAL,0x3458EB24L,0x1C00286CL,6L,0x3331B7C2L,6L},{(-9L),(-9L),0x3714FD05L,0x44ACBDCAL,0x3458EB24L,0x1C00286CL,6L,0x3331B7C2L,6L},{(-9L),(-9L),0x3714FD05L,0x44ACBDCAL,0x3458EB24L,0x1C00286CL,6L,0x3331B7C2L,6L},{(-9L),(-9L),0x3714FD05L,0x44ACBDCAL,0x3458EB24L,0x1C00286CL,6L,0x3331B7C2L,6L},{(-9L),(-9L),0x3714FD05L,0x44ACBDCAL,0x3458EB24L,0x1C00286CL,6L,0x3331B7C2L,6L},{(-9L),(-9L),0x3714FD05L,0x44ACBDCAL,0x3458EB24L,0x1C00286CL,6L,0x3331B7C2L,6L}};
                    int i, j, k;
                    l_695[6] = l_693;
                    for (p_1059->g_63 = 1; (p_1059->g_63 >= 0); p_1059->g_63 -= 1)
                    { /* block id: 327 */
                        int16_t *l_698 = &p_1059->g_262[0][9];
                        uint32_t ***l_703 = (void*)0;
                        int8_t **l_717 = &p_1059->g_31;
                        int8_t **l_718[7];
                        uint64_t ***l_721 = &p_1059->g_439[0][8];
                        int32_t l_722[8] = {0x720C336CL,1L,0x720C336CL,0x720C336CL,1L,0x720C336CL,0x720C336CL,1L};
                        uint16_t *l_724 = &p_1059->g_100;
                        int32_t **l_737 = &p_1059->g_49;
                        int i;
                        for (i = 0; i < 7; i++)
                            l_718[i] = &p_1059->g_198;
                        if (l_649)
                            break;
                        (*p_1059->g_725) = ((safe_add_func_int16_t_s_s(((*l_698) |= (p_1059->g_60 , p_1059->g_382)), (l_647 = (safe_sub_func_int64_t_s_s((safe_add_func_int32_t_s_s((((void*)0 == l_703) && ((safe_rshift_func_uint16_t_u_u(((*l_724) = (((safe_lshift_func_uint16_t_u_s((l_708 == ((!(((((-1L) != (((safe_mod_func_int16_t_s_s(((safe_unary_minus_func_int32_t_s(((((safe_rshift_func_uint16_t_u_u((((safe_add_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), p_1059->g_8)) , l_716) != (l_720 = (l_719[1] = ((*l_717) = p_30)))), l_649)) , l_679[2]) != l_721) ^ l_722[5]))) && 7L), l_708)) > 255UL) , l_599)) | 0x810EL) , l_723) , p_1059->g_8)) <= l_615)), p_1059->g_100)) , l_571) , p_1059->g_128[1])), 7)) , p_1059->g_112)), l_722[7])), l_722[1]))))) , l_722[3]);
                        (*p_1059->g_745) = ((safe_unary_minus_func_uint32_t_u((l_744[2][8] = (1UL || (safe_rshift_func_int8_t_s_s(((*p_1059->g_198) = ((~(safe_mod_func_int64_t_s_s((safe_lshift_func_int8_t_s_u((safe_add_func_int8_t_s_s((safe_add_func_int8_t_s_s((*p_1059->g_31), (&l_722[5] == ((*l_737) = &l_616)))), (safe_mod_func_uint32_t_u_u(4UL, ((safe_add_func_int16_t_s_s((safe_sub_func_uint16_t_u_u(0xF82EL, ((*l_698) = (l_650 , p_1059->g_112)))), l_599)) , l_560))))), l_538)), l_614))) ^ 0xFE1EDA2CC78C3B15L)), 6)))))) < l_708);
                    }
                    return p_1059->g_262[1][8];
                }
                for (l_648 = 0; (l_648 <= 1); l_648 += 1)
                { /* block id: 346 */
                    int32_t *l_746 = (void*)0;
                    int32_t *l_747[6];
                    int i;
                    for (i = 0; i < 6; i++)
                        l_747[i] = &p_1059->g_63;
                    l_647 = ((l_571 , ((-1L) || l_617)) , (l_560 = l_571.f0));
                    for (l_34 = 0; (l_34 <= 1); l_34 += 1)
                    { /* block id: 351 */
                        int32_t l_748[9] = {0x1652C55DL,0x1652C55DL,0x1652C55DL,0x1652C55DL,0x1652C55DL,0x1652C55DL,0x1652C55DL,0x1652C55DL,0x1652C55DL};
                        int i, j, k;
                        l_748[1] = 0x21527E83L;
                        l_560 ^= (*p_1059->g_725);
                        if (l_560)
                            continue;
                    }
                }
            }
        }
        l_599 = (safe_mul_func_uint16_t_u_u((((!(((-7L) && (safe_div_func_int64_t_s_s(((p_1059->g_128[1] = p_1059->g_128[1]) >= (l_599 , l_560)), 1L))) , l_34)) , (safe_div_func_int64_t_s_s((((*p_1059->g_198) = 0L) && l_755[8][3]), ((safe_lshift_func_int8_t_s_u((safe_mul_func_int16_t_s_s((p_1059->g_262[0][2] = 0x4F0CL), l_619)), p_1059->g_61[4][5])) | 0xC5L)))) ^ l_619), l_648));
        return l_600;
    }
    p_1059->g_8 |= ((safe_lshift_func_uint8_t_u_s((safe_lshift_func_int16_t_s_s(((l_619 = ((l_599 |= GROUP_DIVERGE(1, 1)) || (safe_add_func_uint8_t_u_u(((safe_sub_func_uint16_t_u_u(((+(((*l_770) = l_755[8][3]) || p_1059->g_262[4][4])) == (safe_rshift_func_uint16_t_u_s(((*l_780) = ((p_1059->g_102 | ((0x91L < ((((*p_1059->g_198) = (safe_add_func_int16_t_s_s(l_755[6][0], (&p_1059->g_439[1][5] != (void*)0)))) && (p_1059->g_128[2] = 0UL)) >= (((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_u(65527UL, 0)), (*p_30))) , l_650) > 0x96L))) > 18446744073709551614UL)) & l_619)), l_755[6][2]))), p_1059->g_260)) | l_600), (*p_30))))) >= (**p_1059->g_598)), 4)), (*p_1059->g_31))) >= l_600);
    (*p_1059->g_786) = (safe_sub_func_int32_t_s_s(0L, ((l_599 = l_600) , (&p_30 == ((safe_mod_func_uint32_t_u_u(0UL, l_785)) , &p_1059->g_31)))));
    return l_787;
}


/* ------------------------------------------ */
/* 
 * reads : p_1059->g_48 p_1059->g_8 p_1059->g_63 p_1059->g_112 p_1059->g_262 p_1059->g_62 p_1059->g_159 p_1059->g_160 p_1059->g_4 p_1059->g_31 p_1059->g_32 p_1059->g_198 p_1059->g_104 p_1059->g_128 p_1059->g_258 p_1059->g_102 p_1059->g_57 p_1059->g_188 p_1059->g_100 p_1059->g_156 p_1059->g_438 p_1059->g_58 p_1059->g_357 p_1059->g_382 p_1059->g_260 p_1059->g_49 p_1059->g_283 p_1059->g_60
 * writes: p_1059->g_49 p_1059->g_8 p_1059->g_63 p_1059->g_359 p_1059->g_112 p_1059->g_128 p_1059->g_102 p_1059->g_56 p_1059->g_33 p_1059->g_100 p_1059->g_439 p_1059->g_262 p_1059->g_357.f0
 */
uint8_t  func_43(int32_t * p_44, struct S3 * p_1059)
{ /* block id: 16 */
    uint64_t *l_499 = &p_1059->g_260;
    uint64_t **l_508 = &p_1059->g_440;
    int32_t l_524 = (-1L);
    (*p_1059->g_48) = func_45(&p_1059->g_32, p_1059);
    for (p_1059->g_8 = (-10); (p_1059->g_8 > 29); p_1059->g_8 = safe_add_func_uint8_t_u_u(p_1059->g_8, 1))
    { /* block id: 22 */
        int32_t **l_496 = &p_1059->g_49;
        uint64_t **l_506[6] = {&p_1059->g_440,&p_1059->g_440,&p_1059->g_440,&p_1059->g_440,&p_1059->g_440,&p_1059->g_440};
        uint64_t ***l_507[6][3][1] = {{{&l_506[0]},{&l_506[0]},{&l_506[0]}},{{&l_506[0]},{&l_506[0]},{&l_506[0]}},{{&l_506[0]},{&l_506[0]},{&l_506[0]}},{{&l_506[0]},{&l_506[0]},{&l_506[0]}},{{&l_506[0]},{&l_506[0]},{&l_506[0]}},{{&l_506[0]},{&l_506[0]},{&l_506[0]}}};
        uint32_t *l_514 = &p_1059->g_70;
        uint32_t **l_513 = &l_514;
        uint64_t *l_521 = &p_1059->g_33[2][0][0];
        int32_t l_525 = 0x42703E1CL;
        int i, j, k;
        atomic_or(&p_1059->l_atomic_reduction[0], (safe_rshift_func_uint8_t_u_s(252UL, func_54(p_44, p_1059))));
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_1059->v_collective += p_1059->l_atomic_reduction[0];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        (*l_496) = ((safe_rshift_func_int16_t_s_u(p_1059->g_283[0][5][0], 13)) , p_44);
        l_525 = (safe_mul_func_int8_t_s_s(((void*)0 == l_499), (safe_lshift_func_int16_t_s_s(((safe_rshift_func_int16_t_s_u((((FAKE_DIVERGE(p_1059->group_2_offset, get_group_id(2), 10) == ((safe_sub_func_int8_t_s_s((l_506[5] != (l_508 = l_506[4])), (((safe_mod_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((((void*)0 != l_513) && (safe_add_func_int64_t_s_s(((((safe_mod_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((l_521 == l_499), (safe_add_func_int8_t_s_s(((void*)0 == &l_496), p_1059->g_260)))), 65535UL)) || p_1059->g_60) <= l_524) | 3UL), 0UL))), (**l_496))), (**l_496))) , (*p_44)) && (*p_1059->g_49)))) & (**l_496))) == 0x30F9EFD261E3F99CL) < (**l_496)), 13)) <= 0x4399L), 8))));
    }
    return p_1059->g_8;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_45(int8_t * p_46, struct S3 * p_1059)
{ /* block id: 17 */
    int32_t *l_47[2];
    int i;
    for (i = 0; i < 2; i++)
        l_47[i] = (void*)0;
    return l_47[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1059->g_63 p_1059->g_112 p_1059->g_262 p_1059->g_62 p_1059->g_159 p_1059->g_160 p_1059->g_4 p_1059->g_31 p_1059->g_32 p_1059->g_198 p_1059->g_104 p_1059->g_128 p_1059->g_258 p_1059->g_102 p_1059->g_57 p_1059->g_188 p_1059->g_100 p_1059->g_156 p_1059->g_438 p_1059->g_58 p_1059->g_357 p_1059->g_382 p_1059->g_260 p_1059->g_49 p_1059->g_48
 * writes: p_1059->g_63 p_1059->g_359 p_1059->g_112 p_1059->g_128 p_1059->g_102 p_1059->g_56 p_1059->g_33 p_1059->g_100 p_1059->g_439 p_1059->g_262 p_1059->g_49 p_1059->g_357.f0
 */
int8_t  func_54(int32_t * p_55, struct S3 * p_1059)
{ /* block id: 23 */
    int32_t l_71[7][9][4] = {{{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL}},{{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL}},{{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL}},{{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL}},{{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL}},{{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL}},{{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL},{1L,0x5C3DB887L,1L,0x0990E41EL}}};
    int32_t l_72 = 7L;
    int8_t *l_81[6][1][9] = {{{&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32}},{{&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32}},{{&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32}},{{&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32}},{{&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32}},{{&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32,&p_1059->g_32}}};
    int32_t **l_106 = &p_1059->g_49;
    uint64_t *l_162 = &p_1059->g_33[2][0][0];
    int32_t l_173 = 0x05FDC69AL;
    int8_t l_179[6] = {(-1L),0x11L,(-1L),(-1L),0x11L,(-1L)};
    int32_t l_184[2];
    int32_t l_196 = 5L;
    uint32_t *l_202[10][4][6] = {{{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70}},{{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70}},{{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70}},{{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70}},{{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70}},{{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70}},{{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70}},{{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70}},{{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70}},{{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{&p_1059->g_70,(void*)0,(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70}}};
    uint32_t **l_201[6][4] = {{(void*)0,(void*)0,&l_202[5][3][3],&l_202[5][3][3]},{(void*)0,(void*)0,&l_202[5][3][3],&l_202[5][3][3]},{(void*)0,(void*)0,&l_202[5][3][3],&l_202[5][3][3]},{(void*)0,(void*)0,&l_202[5][3][3],&l_202[5][3][3]},{(void*)0,(void*)0,&l_202[5][3][3],&l_202[5][3][3]},{(void*)0,(void*)0,&l_202[5][3][3],&l_202[5][3][3]}};
    uint32_t l_315 = 1UL;
    uint32_t l_333 = 0x99EBE10AL;
    uint32_t l_340[2];
    uint16_t l_352 = 0UL;
    union U1 *l_356 = &p_1059->g_357;
    union U1 **l_358[9][4] = {{(void*)0,&l_356,(void*)0,&l_356},{(void*)0,&l_356,(void*)0,&l_356},{(void*)0,&l_356,(void*)0,&l_356},{(void*)0,&l_356,(void*)0,&l_356},{(void*)0,&l_356,(void*)0,&l_356},{(void*)0,&l_356,(void*)0,&l_356},{(void*)0,&l_356,(void*)0,&l_356},{(void*)0,&l_356,(void*)0,&l_356},{(void*)0,&l_356,(void*)0,&l_356}};
    uint32_t l_454[2][3] = {{0xA9E05754L,0x7174C5CFL,0xA9E05754L},{0xA9E05754L,0x7174C5CFL,0xA9E05754L}};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_184[i] = (-1L);
    for (i = 0; i < 2; i++)
        l_340[i] = 4294967290UL;
    for (p_1059->g_63 = 1; (p_1059->g_63 >= 0); p_1059->g_63 -= 1)
    { /* block id: 26 */
        uint32_t *l_69[5][5] = {{(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70},{(void*)0,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70,&p_1059->g_70}};
        int32_t l_73 = (-1L);
        uint16_t *l_99[10] = {&p_1059->g_100,&p_1059->g_100,&p_1059->g_100,&p_1059->g_100,&p_1059->g_100,&p_1059->g_100,&p_1059->g_100,&p_1059->g_100,&p_1059->g_100,&p_1059->g_100};
        uint32_t *l_101 = &p_1059->g_102;
        uint32_t **l_103 = &l_69[4][0];
        int8_t *l_110 = &p_1059->g_32;
        int32_t **l_144 = &p_1059->g_49;
        int32_t l_180[3];
        uint64_t *l_305 = (void*)0;
        uint64_t l_308 = 0xC0F6A262D9FF9965L;
        uint32_t l_318 = 0xCC1EB9CAL;
        uint32_t **l_345 = &l_69[0][3];
        int16_t *l_353 = (void*)0;
        int16_t *l_354 = &p_1059->g_262[4][5];
        int32_t *l_355[4];
        int i, j;
        for (i = 0; i < 3; i++)
            l_180[i] = 0x0967EEF1L;
        for (i = 0; i < 4; i++)
            l_355[i] = &l_180[0];
        (1 + 1);
    }
    p_1059->g_359 = l_356;
    if ((255UL == (safe_div_func_uint8_t_u_u(l_340[0], 0x7AL))))
    { /* block id: 176 */
        uint8_t *l_380[10][3][5] = {{{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]}},{{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]}},{{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]}},{{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]}},{{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]}},{{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]}},{{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]}},{{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]}},{{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]}},{{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]},{&p_1059->g_128[1],&p_1059->g_128[3],&p_1059->g_128[2],&p_1059->g_128[3],&p_1059->g_128[1]}}};
        int32_t l_384 = 1L;
        union U1 *l_385 = &p_1059->g_357;
        int32_t l_431 = 0L;
        int32_t *l_445[10][5][5] = {{{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431}},{{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431}},{{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431}},{{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431}},{{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431}},{{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431}},{{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431}},{{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431}},{{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431}},{{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431},{&p_1059->g_112,&p_1059->g_112,&l_184[0],(void*)0,&l_431}}};
        uint16_t l_455 = 5UL;
        int16_t *l_462 = (void*)0;
        int16_t *l_463 = &p_1059->g_262[3][8];
        uint32_t *l_464 = &l_454[0][1];
        int i, j, k;
        for (p_1059->g_112 = (-15); (p_1059->g_112 == (-1)); p_1059->g_112++)
        { /* block id: 179 */
            uint16_t *l_366 = (void*)0;
            uint16_t *l_367[10] = {&p_1059->g_100,&l_352,&p_1059->g_188,&l_352,&p_1059->g_100,&p_1059->g_100,&l_352,&p_1059->g_188,&l_352,&p_1059->g_100};
            int32_t l_368 = (-2L);
            int32_t l_371[4][2];
            int64_t *l_381[5] = {&p_1059->g_382,&p_1059->g_382,&p_1059->g_382,&p_1059->g_382,&p_1059->g_382};
            int32_t l_383 = (-1L);
            int i, j;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 2; j++)
                    l_371[i][j] = 0x3D23FBD7L;
            }
            if ((((safe_lshift_func_uint16_t_u_u((l_368 = FAKE_DIVERGE(p_1059->local_1_offset, get_local_id(1), 10)), ((safe_rshift_func_uint8_t_u_u(l_371[1][1], ((safe_lshift_func_int8_t_s_u((safe_add_func_uint8_t_u_u(((p_1059->g_262[2][8] & (p_1059->g_62 && ((l_371[1][1] & l_371[1][1]) ^ (safe_div_func_int16_t_s_s((safe_sub_func_int16_t_s_s(((l_380[2][2][1] != &p_1059->g_128[1]) , l_352), (~(((l_383 &= l_340[0]) || (*p_1059->g_159)) <= (*p_55))))), l_384))))) <= l_384), (*p_1059->g_31))), FAKE_DIVERGE(p_1059->group_1_offset, get_group_id(1), 10))) ^ p_1059->g_4[1]))) > 0xB5D0L))) , 1UL) > FAKE_DIVERGE(p_1059->global_2_offset, get_global_id(2), 10)))
            { /* block id: 182 */
                union U1 *l_386[5][1][7] = {{{&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357}},{{&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357}},{{&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357}},{{&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357}},{{&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357,&p_1059->g_357}}};
                union U1 *l_387 = &p_1059->g_357;
                int32_t l_398 = (-1L);
                int32_t *l_409 = &l_184[0];
                int i, j, k;
                l_387 = (l_386[3][0][2] = l_385);
                l_383 ^= (l_371[1][1] != 0x2BL);
                for (p_1059->g_63 = (-26); (p_1059->g_63 < 22); p_1059->g_63++)
                { /* block id: 188 */
                    uint32_t l_401[6][9] = {{1UL,0x5D2659EDL,0x66393ADAL,0x5D2659EDL,1UL,1UL,0x5D2659EDL,0x66393ADAL,0x5D2659EDL},{1UL,0x5D2659EDL,0x66393ADAL,0x5D2659EDL,1UL,1UL,0x5D2659EDL,0x66393ADAL,0x5D2659EDL},{1UL,0x5D2659EDL,0x66393ADAL,0x5D2659EDL,1UL,1UL,0x5D2659EDL,0x66393ADAL,0x5D2659EDL},{1UL,0x5D2659EDL,0x66393ADAL,0x5D2659EDL,1UL,1UL,0x5D2659EDL,0x66393ADAL,0x5D2659EDL},{1UL,0x5D2659EDL,0x66393ADAL,0x5D2659EDL,1UL,1UL,0x5D2659EDL,0x66393ADAL,0x5D2659EDL},{1UL,0x5D2659EDL,0x66393ADAL,0x5D2659EDL,1UL,1UL,0x5D2659EDL,0x66393ADAL,0x5D2659EDL}};
                    int32_t l_406 = 0x4AF06CDCL;
                    int64_t *l_407 = &p_1059->g_382;
                    int32_t *l_408[2];
                    int i, j;
                    for (i = 0; i < 2; i++)
                        l_408[i] = &l_398;
                    p_1059->g_56 = (l_381[2] != ((safe_mul_func_uint8_t_u_u((((l_384 & (safe_add_func_uint16_t_u_u((((*p_1059->g_258) = (8UL | ((((safe_rshift_func_int16_t_s_s(((*p_1059->g_198) == ((0L != ((safe_lshift_func_int8_t_s_u((l_398 || (FAKE_DIVERGE(p_1059->global_2_offset, get_global_id(2), 10) == ((safe_mul_func_int16_t_s_s((((l_401[2][4] | (safe_add_func_uint8_t_u_u((++p_1059->g_128[1]), l_406))) == l_384) >= p_1059->g_262[3][8]), GROUP_DIVERGE(1, 1))) ^ 248UL))), FAKE_DIVERGE(p_1059->local_1_offset, get_local_id(1), 10))) && 0x9AL)) > (*p_1059->g_258))), 5)) | p_1059->g_62) > l_398) && 4L))) , p_1059->g_57), 0L))) | l_371[1][0]) & l_398), l_384)) , l_407));
                }
                (*l_409) &= (p_1059->g_63 |= (((*p_1059->g_159) != (~((*l_162) = 0xB74C9B03E1229404L))) != (((*p_1059->g_258) , p_55) != &l_398)));
            }
            else
            { /* block id: 196 */
                int32_t *l_426[5];
                uint16_t l_434 = 0x2BF6L;
                int i;
                for (i = 0; i < 5; i++)
                    l_426[i] = &l_184[0];
                if (((p_1059->g_128[1]--) <= (~(l_383 ^= (((safe_mod_func_uint32_t_u_u(((*p_1059->g_258) = ((safe_mul_func_uint8_t_u_u(((*p_55) || (((safe_add_func_int8_t_s_s((safe_sub_func_int16_t_s_s((safe_add_func_int16_t_s_s((safe_add_func_int64_t_s_s(((safe_div_func_uint16_t_u_u((0x49L > ((l_384 = (*p_55)) != (((((((0xEDL ^ ((safe_rshift_func_uint8_t_u_s(l_371[2][1], 6)) , l_431)) >= l_352) >= ((p_1059->g_57 != (((safe_mod_func_int64_t_s_s(0x3E9F87FD3616AAEEL, l_431)) >= FAKE_DIVERGE(p_1059->global_0_offset, get_global_id(0), 10)) , p_1059->g_262[4][1])) < p_1059->g_188)) | 0x71L) < l_434) >= l_431) != l_371[2][0]))), 0x0009L)) < 0x1EABL), 0x28163C9E2092C838L)), p_1059->g_100)), p_1059->g_156[2][2][0])), l_431)) || p_1059->g_63) | p_1059->g_188)), l_431)) != l_368)), 0xDDAB2FE5L)) <= (*p_55)) || GROUP_DIVERGE(1, 1))))))
                { /* block id: 201 */
                    for (p_1059->g_100 = 0; (p_1059->g_100 != 34); ++p_1059->g_100)
                    { /* block id: 204 */
                        uint64_t **l_437 = &l_162;
                        (*p_1059->g_438) = l_437;
                    }
                }
                else
                { /* block id: 207 */
                    l_384 ^= (*p_55);
                }
                return (*p_1059->g_198);
            }
        }
        l_184[0] = ((safe_add_func_int32_t_s_s((l_173 ^= (p_1059->g_63 = (p_1059->g_112 = (safe_lshift_func_int16_t_s_s(0x2949L, 1))))), ((*l_464) = (safe_div_func_uint32_t_u_u((safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (safe_div_func_uint32_t_u_u((+(safe_lshift_func_uint8_t_u_u((FAKE_DIVERGE(p_1059->group_0_offset, get_group_id(0), 10) || ((((*p_1059->g_258) |= (l_454[0][0] , 0xA2BBF389L)) | (((p_1059->g_58 , ((*l_385) , l_455)) > ((safe_lshift_func_int16_t_s_s(((*l_463) = (p_1059->g_156[2][2][0] ^ (0x8FL == (safe_mod_func_int8_t_s_s(0L, 0x3BL))))), l_72)) , 0x06E7B0C3L)) || l_179[5])) <= p_1059->g_382)), FAKE_DIVERGE(p_1059->global_1_offset, get_global_id(1), 10)))), l_454[0][2])))), p_1059->g_260))))) , l_196);
    }
    else
    { /* block id: 220 */
        union U1 *l_473 = &p_1059->g_357;
        int32_t *l_474 = &p_1059->g_357.f0;
        int32_t l_477[6];
        uint8_t *l_480[3];
        uint8_t *l_491 = &p_1059->g_128[0];
        uint32_t *l_492 = &l_454[0][0];
        int32_t *l_493 = &l_72;
        int i;
        for (i = 0; i < 6; i++)
            l_477[i] = 0L;
        for (i = 0; i < 3; i++)
            l_480[i] = &p_1059->g_128[0];
        (*l_106) = p_55;
        (*l_493) &= (((safe_add_func_uint64_t_u_u(FAKE_DIVERGE(p_1059->local_2_offset, get_local_id(2), 10), (safe_add_func_uint16_t_u_u((((safe_add_func_int32_t_s_s((*p_55), ((((safe_mul_func_int8_t_s_s((**l_106), ((l_473 == (((*l_474) = 0x2AE37004L) , (((safe_sub_func_uint32_t_u_u((l_477[2] || (safe_div_func_uint8_t_u_u((l_173 = l_477[2]), ((safe_div_func_uint8_t_u_u(((((safe_sub_func_uint16_t_u_u((safe_sub_func_int64_t_s_s((((l_480[1] == (((safe_rshift_func_uint8_t_u_u((((safe_div_func_uint32_t_u_u(((*l_492) |= (((void*)0 != l_491) == (*p_1059->g_258))), (**l_106))) >= 7L) >= (*p_1059->g_258)), 1)) , (*p_55)) , &p_1059->g_128[1])) , (*p_55)) , (-1L)), l_477[2])), 0L)) || l_477[4]) == 0x6596L) <= l_477[2]), p_1059->g_4[0])) || (**l_106))))), 0UL)) , p_1059->g_4[0]) , l_473))) ^ (*p_55)))) != (**l_106)) == l_477[3]) < p_1059->g_102))) ^ 0L) || l_477[2]), l_477[5])))) | (*p_1059->g_258)) , (**p_1059->g_48));
    }
    return l_184[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1059->g_118
 * writes: p_1059->g_118
 */
int32_t  func_64(int32_t * p_65, int32_t  p_66, uint64_t  p_67, int8_t * p_68, struct S3 * p_1059)
{ /* block id: 39 */
    int32_t *l_111 = &p_1059->g_112;
    int32_t l_113 = 0x52FD558AL;
    int32_t *l_114 = &l_113;
    int32_t *l_115 = &l_113;
    int32_t *l_116 = (void*)0;
    int32_t *l_117[6][10][4] = {{{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8}},{{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8}},{{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8}},{{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8}},{{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8}},{{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8},{&p_1059->g_4[0],&p_1059->g_8,&p_1059->g_4[0],&p_1059->g_8}}};
    int i, j, k;
    --p_1059->g_118;
    return p_67;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_76(int8_t * p_77, int32_t  p_78, int32_t ** p_79, int32_t  p_80, struct S3 * p_1059)
{ /* block id: 36 */
    uint16_t l_107[3][1][6] = {{{65535UL,65535UL,65535UL,65535UL,65535UL,65535UL}},{{65535UL,65535UL,65535UL,65535UL,65535UL,65535UL}},{{65535UL,65535UL,65535UL,65535UL,65535UL,65535UL}}};
    int i, j, k;
    ++l_107[0][0][3];
    return p_77;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1059->g_104 p_1059->g_59 p_1059->g_61
 */
int64_t  func_84(int16_t  p_85, uint32_t  p_86, struct S3 * p_1059)
{ /* block id: 33 */
    uint8_t l_105 = 0xF7L;
    for (p_1059->g_104 = 0; p_1059->g_104 < 9; p_1059->g_104 += 1)
    {
        for (p_1059->g_59 = 0; p_1059->g_59 < 7; p_1059->g_59 += 1)
        {
            p_1059->g_61[p_1059->g_104][p_1059->g_59] = 0x2F14A35BL;
        }
    }
    return l_105;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S3 c_1060;
    struct S3* p_1059 = &c_1060;
    struct S3 c_1061 = {
        0x5534BF8FL, // p_1059->g_2
        1L, // p_1059->g_3
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_1059->g_4
        0x320E32CFL, // p_1059->g_8
        {0}, // p_1059->g_20
        0x08L, // p_1059->g_32
        &p_1059->g_32, // p_1059->g_31
        {{{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL}},{{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL}},{{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL}},{{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL}},{{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL},{0x3A6D7D04549C4B05L,0UL}}}, // p_1059->g_33
        &p_1059->g_4[0], // p_1059->g_49
        &p_1059->g_49, // p_1059->g_48
        0x322489AFL, // p_1059->g_56
        0x4B76FEF6L, // p_1059->g_57
        0L, // p_1059->g_58
        (-1L), // p_1059->g_59
        0L, // p_1059->g_60
        {{0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L,0x5A51F3E6L,0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L},{0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L,0x5A51F3E6L,0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L},{0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L,0x5A51F3E6L,0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L},{0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L,0x5A51F3E6L,0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L},{0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L,0x5A51F3E6L,0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L},{0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L,0x5A51F3E6L,0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L},{0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L,0x5A51F3E6L,0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L},{0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L,0x5A51F3E6L,0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L},{0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L,0x5A51F3E6L,0x5A51F3E6L,0x5D8284A8L,0x5D8284A8L}}, // p_1059->g_61
        0x26CBABA2L, // p_1059->g_62
        (-1L), // p_1059->g_63
        0xA7D8E2DCL, // p_1059->g_70
        5UL, // p_1059->g_100
        0x3E91B5B2L, // p_1059->g_102
        1L, // p_1059->g_104
        0L, // p_1059->g_112
        0x73L, // p_1059->g_118
        {0UL,0UL,0UL,0UL}, // p_1059->g_128
        {{{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L}},{{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L}},{{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L}},{{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L}},{{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L},{0xF33FL,0xC56EL,0x3DD9L,0xAFC7L}}}, // p_1059->g_156
        {18446744073709551606UL,18446744073709551606UL,18446744073709551606UL,18446744073709551606UL,18446744073709551606UL,18446744073709551606UL}, // p_1059->g_160
        &p_1059->g_160[0], // p_1059->g_159
        1UL, // p_1059->g_188
        &p_1059->g_104, // p_1059->g_198
        (void*)0, // p_1059->g_199
        (void*)0, // p_1059->g_226
        &p_1059->g_226, // p_1059->g_225
        0UL, // p_1059->g_238
        &p_1059->g_102, // p_1059->g_258
        0xDFCA0B9FCD69D5A1L, // p_1059->g_260
        {{0x7CCAL,4L,6L,0x36EBL,0x66DAL,0x7CCAL,0x36EBL,9L,0x36EBL,0x7CCAL},{0x7CCAL,4L,6L,0x36EBL,0x66DAL,0x7CCAL,0x36EBL,9L,0x36EBL,0x7CCAL},{0x7CCAL,4L,6L,0x36EBL,0x66DAL,0x7CCAL,0x36EBL,9L,0x36EBL,0x7CCAL},{0x7CCAL,4L,6L,0x36EBL,0x66DAL,0x7CCAL,0x36EBL,9L,0x36EBL,0x7CCAL},{0x7CCAL,4L,6L,0x36EBL,0x66DAL,0x7CCAL,0x36EBL,9L,0x36EBL,0x7CCAL},{0x7CCAL,4L,6L,0x36EBL,0x66DAL,0x7CCAL,0x36EBL,9L,0x36EBL,0x7CCAL}}, // p_1059->g_262
        {{{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL}},{{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL}},{{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL}},{{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL}},{{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL},{0x5CL}}}, // p_1059->g_283
        {3L}, // p_1059->g_357
        &p_1059->g_357, // p_1059->g_359
        0x198546E599682EC2L, // p_1059->g_382
        &p_1059->g_33[3][1][1], // p_1059->g_440
        {{&p_1059->g_440,(void*)0,&p_1059->g_440,&p_1059->g_440,(void*)0,&p_1059->g_440,&p_1059->g_440,(void*)0,&p_1059->g_440},{&p_1059->g_440,(void*)0,&p_1059->g_440,&p_1059->g_440,(void*)0,&p_1059->g_440,&p_1059->g_440,(void*)0,&p_1059->g_440}}, // p_1059->g_439
        &p_1059->g_439[0][8], // p_1059->g_438
        0UL, // p_1059->g_541
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1059->g_561
        &p_1059->g_8, // p_1059->g_562
        &p_1059->g_258, // p_1059->g_566
        {{{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566}},{{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566}}}, // p_1059->g_565
        {{{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566}},{{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566}},{{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566},{&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566,&p_1059->g_566,(void*)0,&p_1059->g_566}}}, // p_1059->g_567
        &p_1059->g_49, // p_1059->g_598
        &p_1059->g_56, // p_1059->g_604
        {{{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8}},{{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8}},{{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8}},{{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8}},{{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8}},{{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8}},{{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8}},{{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8}},{{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8}},{{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8},{&p_1059->g_4[0],(void*)0,&p_1059->g_63,&p_1059->g_8}}}, // p_1059->g_691
        &p_1059->g_8, // p_1059->g_692
        &p_1059->g_112, // p_1059->g_725
        &p_1059->g_112, // p_1059->g_745
        (void*)0, // p_1059->g_761
        &p_1059->g_63, // p_1059->g_786
        0x893C5028L, // p_1059->g_791
        3UL, // p_1059->g_824
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_1059->g_866
        {1UL}, // p_1059->g_918
        0L, // p_1059->g_944
        0L, // p_1059->g_986
        {{&p_1059->g_439[0][8],&p_1059->g_439[0][8]},{&p_1059->g_439[0][8],&p_1059->g_439[0][8]},{&p_1059->g_439[0][8],&p_1059->g_439[0][8]},{&p_1059->g_439[0][8],&p_1059->g_439[0][8]},{&p_1059->g_439[0][8],&p_1059->g_439[0][8]},{&p_1059->g_439[0][8],&p_1059->g_439[0][8]}}, // p_1059->g_1031
        0x628D0ECC242CF9C4L, // p_1059->g_1048
        &p_1059->g_439[0][8], // p_1059->g_1050
        {&p_1059->g_1050,&p_1059->g_1050,&p_1059->g_1050,&p_1059->g_1050,&p_1059->g_1050,&p_1059->g_1050,&p_1059->g_1050,&p_1059->g_1050,&p_1059->g_1050}, // p_1059->g_1049
        0, // p_1059->v_collective
        sequence_input[get_global_id(0)], // p_1059->global_0_offset
        sequence_input[get_global_id(1)], // p_1059->global_1_offset
        sequence_input[get_global_id(2)], // p_1059->global_2_offset
        sequence_input[get_local_id(0)], // p_1059->local_0_offset
        sequence_input[get_local_id(1)], // p_1059->local_1_offset
        sequence_input[get_local_id(2)], // p_1059->local_2_offset
        sequence_input[get_group_id(0)], // p_1059->group_0_offset
        sequence_input[get_group_id(1)], // p_1059->group_1_offset
        sequence_input[get_group_id(2)], // p_1059->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1060 = c_1061;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1059);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1059->g_2, "p_1059->g_2", print_hash_value);
    transparent_crc(p_1059->g_3, "p_1059->g_3", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1059->g_4[i], "p_1059->g_4[i]", print_hash_value);

    }
    transparent_crc(p_1059->g_8, "p_1059->g_8", print_hash_value);
    transparent_crc(p_1059->g_32, "p_1059->g_32", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1059->g_33[i][j][k], "p_1059->g_33[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1059->g_56, "p_1059->g_56", print_hash_value);
    transparent_crc(p_1059->g_57, "p_1059->g_57", print_hash_value);
    transparent_crc(p_1059->g_58, "p_1059->g_58", print_hash_value);
    transparent_crc(p_1059->g_59, "p_1059->g_59", print_hash_value);
    transparent_crc(p_1059->g_60, "p_1059->g_60", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1059->g_61[i][j], "p_1059->g_61[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1059->g_62, "p_1059->g_62", print_hash_value);
    transparent_crc(p_1059->g_63, "p_1059->g_63", print_hash_value);
    transparent_crc(p_1059->g_70, "p_1059->g_70", print_hash_value);
    transparent_crc(p_1059->g_100, "p_1059->g_100", print_hash_value);
    transparent_crc(p_1059->g_102, "p_1059->g_102", print_hash_value);
    transparent_crc(p_1059->g_104, "p_1059->g_104", print_hash_value);
    transparent_crc(p_1059->g_112, "p_1059->g_112", print_hash_value);
    transparent_crc(p_1059->g_118, "p_1059->g_118", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1059->g_128[i], "p_1059->g_128[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1059->g_156[i][j][k], "p_1059->g_156[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1059->g_160[i], "p_1059->g_160[i]", print_hash_value);

    }
    transparent_crc(p_1059->g_188, "p_1059->g_188", print_hash_value);
    transparent_crc(p_1059->g_238, "p_1059->g_238", print_hash_value);
    transparent_crc(p_1059->g_260, "p_1059->g_260", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1059->g_262[i][j], "p_1059->g_262[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1059->g_283[i][j][k], "p_1059->g_283[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1059->g_357.f0, "p_1059->g_357.f0", print_hash_value);
    transparent_crc(p_1059->g_382, "p_1059->g_382", print_hash_value);
    transparent_crc(p_1059->g_541, "p_1059->g_541", print_hash_value);
    transparent_crc(p_1059->g_791, "p_1059->g_791", print_hash_value);
    transparent_crc(p_1059->g_824, "p_1059->g_824", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1059->g_866[i], "p_1059->g_866[i]", print_hash_value);

    }
    transparent_crc(p_1059->g_918.f0, "p_1059->g_918.f0", print_hash_value);
    transparent_crc(p_1059->g_944, "p_1059->g_944", print_hash_value);
    transparent_crc(p_1059->g_986, "p_1059->g_986", print_hash_value);
    transparent_crc(p_1059->g_1048, "p_1059->g_1048", print_hash_value);
    transparent_crc(p_1059->v_collective, "p_1059->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
