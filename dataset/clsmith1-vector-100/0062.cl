// ---fake_divergence -g 70,60,2 -l 1,15,2
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


// Seed: 62

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   int32_t  f1;
   uint8_t  f2;
};

struct S1 {
    volatile int32_t g_4;
    VECTOR(int16_t, 2) g_5;
    int32_t g_8;
    int8_t g_16;
    volatile VECTOR(int64_t, 8) g_17;
    int8_t g_23;
    VECTOR(int32_t, 2) g_44;
    volatile VECTOR(int64_t, 4) g_73;
    VECTOR(int64_t, 8) g_74;
    uint16_t g_86;
    int32_t *g_88;
    int32_t ** volatile g_87;
    uint8_t g_109;
    VECTOR(uint64_t, 4) g_132;
    int64_t * volatile *g_151;
    volatile uint64_t g_162;
    volatile struct S0 g_165;
    int8_t g_201;
    struct S0 g_206;
    int32_t ** volatile g_210[6];
    VECTOR(uint32_t, 2) g_214;
    int8_t g_237;
    volatile uint32_t g_257;
    int32_t ** volatile g_260;
    struct S0 ** volatile g_261[1];
    int32_t * volatile g_273;
    VECTOR(int8_t, 4) g_279;
    volatile VECTOR(uint8_t, 4) g_280;
    struct S0 g_287[9];
    struct S0 * volatile g_286;
    uint32_t *g_296;
    uint32_t **g_295;
    VECTOR(uint16_t, 16) g_324;
    VECTOR(uint16_t, 4) g_325;
    int8_t *g_335;
    int8_t **g_334[9];
    VECTOR(int64_t, 8) g_341;
    volatile int16_t g_347;
    volatile int16_t * volatile g_346[2];
    volatile VECTOR(int8_t, 4) g_351;
    volatile VECTOR(int32_t, 8) g_382;
    volatile VECTOR(int32_t, 2) g_417;
    int32_t * volatile g_465;
    uint32_t g_482;
    volatile VECTOR(int16_t, 2) g_520;
    volatile VECTOR(int8_t, 16) g_531;
    int32_t g_536;
    uint64_t g_592[4];
    VECTOR(int16_t, 4) g_599;
    VECTOR(int16_t, 16) g_600;
    volatile VECTOR(int64_t, 8) g_628;
    int32_t * volatile g_651;
    volatile uint32_t g_675;
    VECTOR(int8_t, 4) g_686;
    volatile VECTOR(int16_t, 16) g_729;
    int64_t *g_747;
    uint32_t g_750;
    VECTOR(int64_t, 4) g_806;
    VECTOR(int32_t, 8) g_821;
    volatile VECTOR(int8_t, 8) g_831;
    int32_t ** volatile g_839;
    uint8_t g_847[8];
    VECTOR(int64_t, 2) g_850;
    int32_t * volatile g_856;
    int32_t ** volatile g_859;
    int32_t *g_861;
    int32_t ** volatile g_860;
    int32_t g_866[8];
    volatile VECTOR(uint32_t, 8) g_879;
    int32_t ** volatile g_887;
    int32_t ** volatile g_888;
    int8_t *g_889;
    VECTOR(int8_t, 4) g_903;
    int32_t ** volatile g_954[3];
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
int32_t  func_1(struct S1 * p_961);
int64_t  func_19(int8_t * p_20, int32_t  p_21, struct S1 * p_961);
int32_t  func_24(int32_t * p_25, int8_t * p_26, int8_t * p_27, int32_t * p_28, uint32_t  p_29, struct S1 * p_961);
int16_t  func_30(int8_t * p_31, int8_t * p_32, struct S1 * p_961);
int8_t * func_33(int8_t * p_34, uint64_t  p_35, struct S1 * p_961);
int8_t * func_36(int32_t  p_37, int32_t  p_38, int32_t * p_39, struct S1 * p_961);
int8_t ** func_45(int32_t * p_46, int32_t * p_47, struct S1 * p_961);
int32_t * func_49(uint32_t  p_50, struct S1 * p_961);
int32_t  func_51(int8_t ** p_52, int32_t  p_53, int32_t * p_54, struct S1 * p_961);
int64_t  func_77(int8_t ** p_78, int8_t  p_79, struct S1 * p_961);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_961->g_4 p_961->g_5 p_961->g_8 p_961->g_16 p_961->g_201
 * writes: p_961->g_8 p_961->g_16 p_961->g_201
 */
int32_t  func_1(struct S1 * p_961)
{ /* block id: 4 */
    int32_t *l_6 = (void*)0;
    int32_t *l_7 = &p_961->g_8;
    int8_t *l_22 = &p_961->g_23;
    (*l_7) |= (safe_div_func_int16_t_s_s(p_961->g_4, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(p_961->g_5.yyyyyyxx)).odd)).x));
    for (p_961->g_8 = 0; (p_961->g_8 < 21); p_961->g_8 = safe_add_func_uint16_t_u_u(p_961->g_8, 1))
    { /* block id: 8 */
        int8_t *l_15 = &p_961->g_16;
        int32_t l_18 = (-1L);
        int32_t l_814 = 0x7B9FBFAFL;
        uint16_t l_957[2];
        int i;
        for (i = 0; i < 2; i++)
            l_957[i] = 0x6902L;
        l_957[0] = ((safe_lshift_func_int8_t_s_u(((*l_15) |= ((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(0x7AL, 0x1BL)).yxyyxxxyxyxyyxyy)).se82a))).z), 7)) || (l_814 = ((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(0x28CAE2FE81720D70L, (-6L), ((VECTOR(int64_t, 4))(p_961->g_17.s4326)).x, (-3L), 0L, ((VECTOR(int64_t, 2))(1L, (-9L))), l_18, 0x2A04F77722ABAC89L, 0L, 9L, ((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 16))(0x5702377D6446BD29L, p_961->g_5.y, ((VECTOR(int64_t, 4))(func_19(l_22, func_24((func_30(func_33(func_36((safe_lshift_func_int8_t_s_s((((VECTOR(int32_t, 2))(0x21DD5C0AL, 1L)).lo ^ ((*l_7) , l_18)), (*l_7))), (safe_add_func_int8_t_s_s((p_961->g_44.y <= 0x0D56L), 0x1BL)), &l_18, p_961), l_814, p_961), l_22, p_961) , (*p_961->g_839)), p_961->g_889, l_15, &p_961->g_8, p_961->g_44.x, p_961), p_961), l_814, 0x3F7F76A484EC89EEL, 0x2F4642893A200E54L)), l_814, ((VECTOR(int64_t, 4))(0L)), l_814, ((VECTOR(int64_t, 4))(4L)))).s6d, ((VECTOR(int64_t, 2))(0x6A7973A1FD71047AL))))), ((VECTOR(int64_t, 2))(0x09B3C8B381C5A6FFL)), 0L)))).s9 , FAKE_DIVERGE(p_961->group_0_offset, get_group_id(0), 10)) < 0x143B09D52D43539BL)));
    }
    for (p_961->g_201 = 0; (p_961->g_201 < (-30)); p_961->g_201 = safe_sub_func_int8_t_s_s(p_961->g_201, 2))
    { /* block id: 361 */
        uint32_t l_960 = 4294967295UL;
        return l_960;
    }
    return (*l_7);
}


/* ------------------------------------------ */
/* 
 * reads : p_961->g_206.f2 p_961->g_839 p_961->g_88
 * writes: p_961->g_206.f2 p_961->g_132 p_961->g_206.f1 p_961->g_861
 */
int64_t  func_19(int8_t * p_20, int32_t  p_21, struct S1 * p_961)
{ /* block id: 345 */
    uint16_t l_944 = 0xF62AL;
    int32_t l_947[9] = {8L,8L,8L,8L,8L,8L,8L,8L,8L};
    int32_t l_949 = 7L;
    int32_t **l_955 = (void*)0;
    int32_t **l_956 = &p_961->g_861;
    int i;
    for (p_961->g_206.f2 = (-2); (p_961->g_206.f2 < 56); p_961->g_206.f2++)
    { /* block id: 348 */
        int32_t *l_927 = &p_961->g_287[0].f1;
        int32_t *l_928 = &p_961->g_206.f1;
        int32_t *l_929 = (void*)0;
        int32_t *l_930 = &p_961->g_287[0].f1;
        int32_t *l_931 = &p_961->g_287[0].f1;
        int32_t *l_932 = &p_961->g_206.f1;
        int32_t *l_933 = &p_961->g_206.f1;
        int32_t *l_934 = &p_961->g_206.f1;
        int32_t *l_935 = (void*)0;
        int32_t *l_936 = &p_961->g_287[0].f1;
        int32_t *l_937 = (void*)0;
        int32_t *l_938 = &p_961->g_287[0].f1;
        int32_t *l_939 = &p_961->g_287[0].f1;
        int32_t *l_940 = &p_961->g_287[0].f1;
        int32_t *l_941 = (void*)0;
        int32_t *l_942 = &p_961->g_287[0].f1;
        int32_t *l_943 = (void*)0;
        int32_t *l_948[1];
        uint32_t l_950 = 1UL;
        uint64_t *l_953[1];
        int i;
        for (i = 0; i < 1; i++)
            l_948[i] = &p_961->g_287[0].f1;
        for (i = 0; i < 1; i++)
            l_953[i] = (void*)0;
        --l_944;
        ++l_950;
        (*l_932) = (((VECTOR(uint64_t, 2))(0x59C1836D9E9E4077L, 1UL)).lo < (p_961->g_132.z = FAKE_DIVERGE(p_961->local_0_offset, get_local_id(0), 10)));
    }
    (*l_956) = (*p_961->g_839);
    return p_21;
}


/* ------------------------------------------ */
/* 
 * reads : p_961->g_879 p_961->g_839 p_961->g_88 p_961->g_8 p_961->g_287.f1 p_961->g_382 p_961->g_903 p_961->g_335 p_961->g_866 p_961->g_273 p_961->g_206.f1 p_961->g_821 p_961->g_417
 * writes: p_961->g_287.f1 p_961->g_23 p_961->g_206.f1 p_961->g_821
 */
int32_t  func_24(int32_t * p_25, int8_t * p_26, int8_t * p_27, int32_t * p_28, uint32_t  p_29, struct S1 * p_961)
{ /* block id: 330 */
    int32_t *l_890 = &p_961->g_287[0].f1;
    int64_t l_893 = 0x2C4AC403BCE9C1E3L;
    int32_t *l_899 = &p_961->g_866[1];
    int32_t **l_898 = &l_899;
    VECTOR(int8_t, 2) l_902 = (VECTOR(int8_t, 2))(0x6BL, 0x76L);
    int64_t **l_904 = &p_961->g_747;
    int32_t l_905 = 1L;
    uint32_t l_906 = 1UL;
    uint64_t l_907 = 5UL;
    int8_t *l_908[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t *l_909 = &l_905;
    int32_t *l_910[7];
    uint32_t l_913 = 4294967292UL;
    VECTOR(int8_t, 8) l_922 = (VECTOR(int8_t, 8))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, (-1L)), (-1L)), (-1L), 9L, (-1L));
    uint32_t l_923 = 0UL;
    uint64_t l_924 = 0xAE2428AE49BF3C3FL;
    int i;
    for (i = 0; i < 7; i++)
        l_910[i] = (void*)0;
    (*l_890) = (4L && (0xD8B4317544E5EA22L | p_961->g_879.s2));
    (*l_890) ^= (**p_961->g_839);
    (*p_961->g_273) = (safe_rshift_func_int8_t_s_s((l_893 ^= ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(7L, 0x12L)))))))).lo), ((VECTOR(int8_t, 4))((-8L), (safe_mul_func_int16_t_s_s((safe_mod_func_int32_t_s_s((0x87L < p_961->g_382.s5), ((((*l_890) , (void*)0) == ((*l_898) = l_890)) , ((*l_909) = ((((((VECTOR(uint8_t, 8))(rotate(((VECTOR(uint8_t, 8))((p_29 >= (~(safe_mul_func_int8_t_s_s(((*l_890) = ((VECTOR(int8_t, 8))(0x30L, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(l_902.yyxxyyxyyxxyxyxx)))).s63, ((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(p_961->g_903.wyxzywwxzyyzwwzx)).sa912)).yzzxwwzyxyxxzzyx, ((VECTOR(int8_t, 2))(1L, 3L)).xyxyyyyxyyxyyyxy))).sa6, ((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))((GROUP_DIVERGE(1, 1) == FAKE_DIVERGE(p_961->group_2_offset, get_group_id(2), 10)), 8L, 0x16L, ((*p_961->g_335) = ((l_906 = ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 8))((l_904 == (void*)0), 1UL, 0x0080182CL, (*l_890), 0x64708F37L, ((VECTOR(uint32_t, 2))(4294967295UL)), 0x4E38F660L)).hi, ((VECTOR(uint32_t, 4))(0x93F418E1L))))).hi)).xxxx)), l_905, ((VECTOR(uint64_t, 2))(0x654B751E3155F130L)), 18446744073709551611UL)).s2) >= (*l_890))), 0x09L, 0x30L, (-6L), 0x2CL, 0x1CL, 0L, (-8L), l_907, 0L, ((VECTOR(int8_t, 2))((-1L))), 1L)).sdd)).xyxx)), 1L, 1L, 0x2CL, 0L)).lo, (int8_t)(*l_890)))).even))).yyyx)), 0L, (-4L), 0x0BL)).s3), 0UL)))), 7UL, (*l_890), 248UL, 0x40L, 0x47L, 0x8FL, 249UL)), ((VECTOR(uint8_t, 8))(0x56L))))).s7 > p_29) <= p_961->g_866[6]) > 0x6CC125BBL) || 0x7DAEL))))), p_29)), 0L, 0x31L)).w));
    p_961->g_821.s5 &= ((*l_890) = (p_961->g_206.f1 &= ((*p_28) ^ (safe_mul_func_uint16_t_u_u((p_29 >= l_913), ((l_924 = (safe_add_func_uint32_t_u_u(p_29, (GROUP_DIVERGE(0, 1) >= (p_961->g_879.s7 && (safe_lshift_func_int8_t_s_s(((((safe_rshift_func_uint8_t_u_s((((safe_lshift_func_int16_t_s_s((0x5EL < ((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_922.s21)).yyxxyyxxyxyxyxxy)).odd, ((VECTOR(int8_t, 4))(2L, ((((void*)0 == &p_961->g_887) , ((*l_890) , (void*)0)) != (void*)0), 1L, 1L)).wzwzxxyy, ((VECTOR(int8_t, 8))(1L))))))).s4456632663742707, ((VECTOR(int8_t, 16))(0L))))).se), p_29)) | GROUP_DIVERGE(2, 1)) && 0x66E5L), l_923)) >= 0x1CB7BFA00B11778BL) || (*l_909)) >= (*l_909)), (*l_909)))))))) > p_29))))));
    return p_961->g_417.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_961->g_856 p_961->g_839 p_961->g_88 p_961->g_860 p_961->g_8 p_961->g_206.f0 p_961->g_651 p_961->g_287.f1 p_961->g_879 p_961->g_861 p_961->g_206.f1 p_961->g_23 p_961->g_237
 * writes: p_961->g_287.f1 p_961->g_88 p_961->g_861 p_961->g_206.f0 p_961->g_866 p_961->g_23 p_961->g_201 p_961->g_206.f1 p_961->g_237
 */
int16_t  func_30(int8_t * p_31, int8_t * p_32, struct S1 * p_961)
{ /* block id: 302 */
    uint32_t *l_855 = &p_961->g_287[0].f0;
    int32_t l_857 = (-5L);
    int32_t *l_865 = &p_961->g_866[6];
    struct S0 *l_880[4];
    int32_t l_881 = 6L;
    int8_t *l_882 = &p_961->g_201;
    int32_t *l_883 = &p_961->g_287[0].f1;
    int i;
    for (i = 0; i < 4; i++)
        l_880[i] = &p_961->g_287[0];
    (*p_961->g_856) = (l_855 == (void*)0);
    if (l_857)
    { /* block id: 304 */
        int32_t **l_858 = &p_961->g_88;
        (*p_961->g_860) = ((*l_858) = (*p_961->g_839));
        return (**l_858);
    }
    else
    { /* block id: 308 */
        for (p_961->g_206.f0 = (-24); (p_961->g_206.f0 < 38); p_961->g_206.f0 = safe_add_func_int64_t_s_s(p_961->g_206.f0, 6))
        { /* block id: 311 */
            VECTOR(int16_t, 8) l_864 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 6L), 6L), 6L, 1L, 6L);
            int i;
            return l_864.s6;
        }
    }
    (*l_883) = ((~((*l_865) = l_857)) , ((*p_961->g_861) = (safe_add_func_uint16_t_u_u((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((safe_rshift_func_int8_t_s_u(((*l_882) = (((*p_961->g_651) ^ (-1L)) , ((*p_32) ^= (((5UL > ((safe_add_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(65526UL, (safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(p_961->g_879.s0505)).z, 0x4EBC1E59L)))), ((((void*)0 == l_880[1]) < ((((+((*p_961->g_861) | l_857)) == l_857) & l_857) < 254UL)) , l_857))) != l_881)) > GROUP_DIVERGE(1, 1)) == l_857)))), 7)), 0L, 0x68F6E4D6L, 0x7121B77EL)).wxzyxxwy)).s2 > l_857), l_857))));
    for (p_961->g_237 = (-18); (p_961->g_237 == (-11)); p_961->g_237 = safe_add_func_int8_t_s_s(p_961->g_237, 7))
    { /* block id: 322 */
        struct S0 l_886 = {4294967295UL,0L,3UL};
        (1 + 1);
    }
    return (*l_883);
}


/* ------------------------------------------ */
/* 
 * reads : p_961->g_206.f1 p_961->g_821 p_961->g_831 p_961->g_335 p_961->g_23 p_961->g_5 p_961->g_74 p_961->g_109 p_961->g_132 p_961->g_73 p_961->g_86 p_961->g_44 p_961->g_151 p_961->g_162 p_961->g_165 p_961->g_88 p_961->g_87 p_961->g_237 p_961->g_257 p_961->g_260 p_961->g_839 p_961->g_847
 * writes: p_961->g_206.f1 p_961->g_88 p_961->g_109 p_961->g_132 p_961->g_162 p_961->g_23 p_961->g_165.f1 p_961->g_201 p_961->g_206 p_961->g_86 p_961->g_257 p_961->g_847
 */
int8_t * func_33(int8_t * p_34, uint64_t  p_35, struct S1 * p_961)
{ /* block id: 290 */
    int64_t l_822 = (-5L);
    int32_t l_832 = 0x406B55E7L;
    int32_t *l_835[6][10][4] = {{{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0}},{{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0}},{{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0}},{{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0}},{{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0}},{{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0},{(void*)0,&p_961->g_206.f1,(void*)0,(void*)0}}};
    uint32_t l_838 = 4294967287UL;
    int32_t l_840 = (-3L);
    int8_t l_841 = (-8L);
    int8_t l_842 = 1L;
    int16_t l_843 = 1L;
    int8_t l_844 = (-1L);
    int64_t l_845 = 0x4196F572FDDBA141L;
    int8_t l_846 = (-6L);
    int8_t l_851 = 1L;
    uint16_t l_852 = 0UL;
    int i, j, k;
    for (p_961->g_206.f1 = (-30); (p_961->g_206.f1 == (-18)); p_961->g_206.f1 = safe_add_func_int16_t_s_s(p_961->g_206.f1, 1))
    { /* block id: 293 */
        if (p_35)
            break;
    }
    (*p_961->g_839) = func_49(((((safe_mul_func_int8_t_s_s((p_35 , p_35), ((((safe_mod_func_int32_t_s_s((l_822 = ((VECTOR(int32_t, 2))(p_961->g_821.s17)).odd), (safe_lshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s((safe_mod_func_int8_t_s_s((&p_34 != (void*)0), (safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 4))(p_961->g_831.s4737)).x, 6)))), (l_832 = l_832))), (safe_sub_func_uint16_t_u_u(((&p_961->g_8 == l_835[0][5][0]) && (p_35 < (safe_sub_func_int8_t_s_s((l_838 , 0L), 6UL)))), 0xCBE7L)))))) != p_35) >= (*p_961->g_335)) | (*p_961->g_335)))) > p_35) <= (*p_961->g_335)) < p_35), p_961);
    p_961->g_847[4]++;
    ++l_852;
    return p_34;
}


/* ------------------------------------------ */
/* 
 * reads : p_961->g_73 p_961->g_74 p_961->g_17 p_961->g_8 p_961->g_44 p_961->g_23 p_961->g_87 p_961->g_5 p_961->g_109 p_961->g_132 p_961->g_86 p_961->g_151 p_961->g_162 p_961->g_165 p_961->g_88 p_961->g_214 p_961->g_237 p_961->g_206.f1 p_961->g_257 p_961->g_260 p_961->g_273 p_961->g_206.f2 p_961->g_279 p_961->g_280 p_961->g_286 p_961->g_287.f1 p_961->g_324 p_961->g_325 p_961->g_295 p_961->g_206.f0 p_961->g_334 p_961->g_341 p_961->g_346 p_961->g_351 p_961->g_296 p_961->g_287.f0 p_961->g_382 p_961->g_417 p_961->g_287.f2 p_961->g_465 p_961->g_335 p_961->g_482 p_961->g_599 p_961->g_600 p_961->g_628 p_961->g_592 p_961->g_651 p_961->g_536 p_961->g_675 p_961->g_806
 * writes: p_961->g_86 p_961->g_88 p_961->g_109 p_961->g_132 p_961->g_162 p_961->g_23 p_961->g_165.f1 p_961->g_201 p_961->g_206 p_961->g_257 p_961->g_287 p_961->g_295 p_961->g_279 p_961->g_261 p_961->g_599 p_961->g_536 p_961->g_675 p_961->g_325 p_961->g_237 p_961->g_296
 */
int8_t * func_36(int32_t  p_37, int32_t  p_38, int32_t * p_39, struct S1 * p_961)
{ /* block id: 10 */
    int32_t *l_48 = &p_961->g_8;
    int8_t **l_653 = &p_961->g_335;
    int32_t l_660 = 0L;
    int32_t l_667 = 0x15D05DD2L;
    int32_t l_668 = 0x5131CA5FL;
    int32_t l_672 = 7L;
    int32_t l_673 = 0x78FA790EL;
    int32_t l_674[7][7][5] = {{{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L}},{{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L}},{{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L}},{{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L}},{{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L}},{{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L}},{{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L},{0x1A8AF38DL,1L,0x7517CAB0L,0x7517CAB0L,1L}}};
    uint64_t *l_704 = (void*)0;
    VECTOR(int16_t, 2) l_730 = (VECTOR(int16_t, 2))((-6L), 0x2BD5L);
    VECTOR(int16_t, 4) l_743 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-4L)), (-4L));
    int8_t l_746 = 1L;
    int16_t l_766[10][1] = {{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}};
    struct S0 **l_771 = (void*)0;
    struct S0 ***l_770 = &l_771;
    int8_t *l_788[10] = {&p_961->g_201,&p_961->g_201,&p_961->g_201,&p_961->g_201,&p_961->g_201,&p_961->g_201,&p_961->g_201,&p_961->g_201,&p_961->g_201,&p_961->g_201};
    int32_t l_797 = 3L;
    uint32_t **l_803 = &p_961->g_296;
    int8_t *l_813 = &p_961->g_23;
    int i, j, k;
    l_653 = func_45(l_48, func_49(p_38, p_961), p_961);
    for (p_961->g_536 = 0; (p_961->g_536 >= (-15)); --p_961->g_536)
    { /* block id: 225 */
        uint32_t l_656 = 0xDDF4C2DCL;
        int8_t l_665 = (-6L);
        int32_t l_666 = 0L;
        int32_t l_669 = (-7L);
        int32_t l_670 = (-1L);
        int32_t l_671[1][10] = {{(-1L),7L,8L,7L,(-1L),(-1L),7L,8L,7L,(-1L)}};
        VECTOR(uint64_t, 16) l_689 = (VECTOR(uint64_t, 16))(18446744073709551608UL, (VECTOR(uint64_t, 4))(18446744073709551608UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 0x94F557ECC295EB00L), 0x94F557ECC295EB00L), 0x94F557ECC295EB00L, 18446744073709551608UL, 0x94F557ECC295EB00L, (VECTOR(uint64_t, 2))(18446744073709551608UL, 0x94F557ECC295EB00L), (VECTOR(uint64_t, 2))(18446744073709551608UL, 0x94F557ECC295EB00L), 18446744073709551608UL, 0x94F557ECC295EB00L, 18446744073709551608UL, 0x94F557ECC295EB00L);
        VECTOR(uint16_t, 16) l_690 = (VECTOR(uint16_t, 16))(65526UL, (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 0x01EAL), 0x01EAL), 0x01EAL, 65526UL, 0x01EAL, (VECTOR(uint16_t, 2))(65526UL, 0x01EAL), (VECTOR(uint16_t, 2))(65526UL, 0x01EAL), 65526UL, 0x01EAL, 65526UL, 0x01EAL);
        struct S0 *l_709 = &p_961->g_206;
        int64_t l_714 = 0x14785DDE36BB04F4L;
        int8_t l_716 = 0x50L;
        int8_t l_719[9];
        VECTOR(int16_t, 16) l_728 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x48D1L), 0x48D1L), 0x48D1L, 0L, 0x48D1L, (VECTOR(int16_t, 2))(0L, 0x48D1L), (VECTOR(int16_t, 2))(0L, 0x48D1L), 0L, 0x48D1L, 0L, 0x48D1L);
        uint32_t **l_748 = &p_961->g_296;
        int8_t *l_787 = &l_719[2];
        int32_t *l_789 = (void*)0;
        int32_t *l_790 = (void*)0;
        int32_t *l_791 = &l_674[2][1][1];
        int32_t *l_792[2][1];
        int64_t l_793 = 0x5AB860FF59A44385L;
        uint8_t l_794 = 0x37L;
        struct S0 ***l_798 = &l_771;
        int i, j;
        for (i = 0; i < 9; i++)
            l_719[i] = 2L;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 1; j++)
                l_792[i][j] = &l_673;
        }
        if (l_656)
        { /* block id: 226 */
            int32_t *l_657 = &p_961->g_206.f1;
            int32_t *l_658 = &p_961->g_287[0].f1;
            int32_t *l_659 = (void*)0;
            int32_t *l_661 = (void*)0;
            int32_t *l_662 = &l_660;
            int32_t *l_663 = (void*)0;
            int32_t *l_664[8];
            VECTOR(uint32_t, 16) l_763 = (VECTOR(uint32_t, 16))(0xD9621E82L, (VECTOR(uint32_t, 4))(0xD9621E82L, (VECTOR(uint32_t, 2))(0xD9621E82L, 0UL), 0UL), 0UL, 0xD9621E82L, 0UL, (VECTOR(uint32_t, 2))(0xD9621E82L, 0UL), (VECTOR(uint32_t, 2))(0xD9621E82L, 0UL), 0xD9621E82L, 0UL, 0xD9621E82L, 0UL);
            int i;
            for (i = 0; i < 8; i++)
                l_664[i] = &l_660;
            p_961->g_675++;
            if ((*p_961->g_465))
                break;
            (*l_658) = ((((p_37 ^ (p_37 | ((safe_mod_func_uint64_t_u_u(0xBE53A32223EF9D31L, (l_666 ^= (((*l_662) >= (safe_add_func_int64_t_s_s((((safe_mul_func_int16_t_s_s(((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(p_961->g_686.zxxzzxyy)).s5, 3)) , (safe_mul_func_int8_t_s_s((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))((l_671[0][6] == (+l_670)), 18446744073709551610UL, 18446744073709551615UL, ((VECTOR(uint64_t, 2))(l_689.s9a)), (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0x005C340A43D46D0BL, 1UL)).xxxyxyxyxxyyxyxx)).s6 || (((VECTOR(uint16_t, 4))(l_690.s9d90)).z || (65530UL ^ (safe_sub_func_int64_t_s_s((l_671[0][8] = ((*p_39) == ((GROUP_DIVERGE(0, 1) || (p_38 < (*l_48))) & 255UL))), 18446744073709551606UL))))), 0x8E1406FDEC1C64DAL, 18446744073709551609UL)).s5, ((VECTOR(uint64_t, 2))(2UL)), 18446744073709551613UL, ((VECTOR(uint64_t, 2))(18446744073709551615UL)), 0x2E695422C9AB32E3L, 0xE21C2A13655F5E5CL)).s0 || 0L), 0x1CL))), 0x4CFEL)) && 4294967295UL) , p_37), 18446744073709551615UL))) && 0x03L)))) == 65535UL))) >= p_37) , p_961->g_74.s0) | p_37);
            if ((safe_add_func_uint16_t_u_u(p_961->g_17.s7, (*l_48))))
            { /* block id: 232 */
                struct S0 *l_707[2][4] = {{(void*)0,&p_961->g_287[7],(void*)0,(void*)0},{(void*)0,&p_961->g_287[7],(void*)0,(void*)0}};
                int32_t **l_710 = &l_657;
                int i, j;
                for (l_670 = 0; (l_670 < 12); ++l_670)
                { /* block id: 235 */
                    if ((*p_39))
                        break;
                }
                for (l_667 = 0; (l_667 < 12); l_667++)
                { /* block id: 240 */
                    VECTOR(int8_t, 16) l_699 = (VECTOR(int8_t, 16))(0x4DL, (VECTOR(int8_t, 4))(0x4DL, (VECTOR(int8_t, 2))(0x4DL, 0x1DL), 0x1DL), 0x1DL, 0x4DL, 0x1DL, (VECTOR(int8_t, 2))(0x4DL, 0x1DL), (VECTOR(int8_t, 2))(0x4DL, 0x1DL), 0x4DL, 0x1DL, 0x4DL, 0x1DL);
                    uint64_t *l_705 = (void*)0;
                    uint64_t **l_706 = &l_705;
                    struct S0 **l_708[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_708[i] = &l_707[1][3];
                    (*p_39) |= l_699.s2;
                    (*p_39) = (*p_961->g_465);
                    (*p_39) &= (safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(0x249D773E5E1D366FL, 0x47D50EBF2E01810CL)).lo, (safe_lshift_func_uint16_t_u_s(65526UL, (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))((l_704 != ((*l_706) = l_705)), (-6L), 0x74FFFC1FL, 0x22024C4CL)).yzxyywyyxyzxxzxy)).s4 , p_38)))));
                    l_709 = l_707[1][3];
                }
                (*l_710) = func_49(p_37, p_961);
            }
            else
            { /* block id: 248 */
                int16_t l_718[3];
                VECTOR(int32_t, 16) l_720 = (VECTOR(int32_t, 16))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 1L), 1L), 1L, (-10L), 1L, (VECTOR(int32_t, 2))((-10L), 1L), (VECTOR(int32_t, 2))((-10L), 1L), (-10L), 1L, (-10L), 1L);
                uint32_t l_723 = 0x2A37A19EL;
                struct S0 l_733 = {0xF470C1D1L,0L,0x96L};
                int32_t l_752 = 0x31397DE0L;
                int8_t l_756 = (-8L);
                struct S0 **l_768 = &l_709;
                struct S0 ***l_767 = &l_768;
                int i;
                for (i = 0; i < 3; i++)
                    l_718[i] = 0x5E0FL;
                for (p_961->g_206.f2 = 0; (p_961->g_206.f2 <= 40); p_961->g_206.f2 = safe_add_func_int16_t_s_s(p_961->g_206.f2, 1))
                { /* block id: 251 */
                    uint16_t *l_713[8][3] = {{(void*)0,&p_961->g_86,&p_961->g_86},{(void*)0,&p_961->g_86,&p_961->g_86},{(void*)0,&p_961->g_86,&p_961->g_86},{(void*)0,&p_961->g_86,&p_961->g_86},{(void*)0,&p_961->g_86,&p_961->g_86},{(void*)0,&p_961->g_86,&p_961->g_86},{(void*)0,&p_961->g_86,&p_961->g_86},{(void*)0,&p_961->g_86,&p_961->g_86}};
                    int32_t l_715 = 0x15DEE4CCL;
                    int32_t l_717 = 0L;
                    struct S0 *l_734 = &l_733;
                    uint64_t *l_749[3][7];
                    int16_t *l_751 = &l_718[1];
                    int32_t l_753 = (-1L);
                    int i, j;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 7; j++)
                            l_749[i][j] = (void*)0;
                    }
                    l_753 ^= ((l_720.sb = (p_961->g_86++)) ^ (((((-8L) != l_723) && (p_961->g_325.y = (safe_rshift_func_int8_t_s_u((safe_add_func_uint16_t_u_u((((VECTOR(uint32_t, 2))(0xE49D21D0L, 6UL)).hi && (((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 16))(l_728.s3f4b8298ac57bb8f)).odd, ((VECTOR(int16_t, 2))(p_961->g_729.s06)).xyyxyxyx, ((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 2))(l_730.yx)).xxyxxxyx, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(1L, 0x4CF8L)), 0x3E9FL, ((VECTOR(int16_t, 4))((-5L), 0x5F60L, (-3L), (-8L))), 3L)).s34)), 0x7AF5L, 0x4A95L)).yyzzyxyw)))))))).hi, ((VECTOR(int16_t, 2))(0x1B9BL, 0x470EL)).yxyy))).x > ((((*l_751) &= (safe_add_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))((*p_961->g_335), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((((((**l_748) &= (p_961->g_132.x | (((*l_734) = l_733) , ((--p_961->g_324.s4) != (!(safe_rshift_func_int16_t_s_s(((p_961->g_750 ^= (safe_div_func_int32_t_s_s(((0UL != ((VECTOR(int16_t, 4))(l_743.xwzx)).w) < (safe_mul_func_int16_t_s_s((((l_746 , (p_961->g_747 != ((l_748 == (void*)0) , p_961->g_747))) && l_715) , p_37), 0UL))), l_717))) != 0x724732FE81204C34L), 9))))))) == 6UL) < p_37) , l_723) >= 0x078BL), 0x7AL, (-2L), ((VECTOR(int8_t, 4))((-5L))), ((VECTOR(int8_t, 2))(2L)), 3L, (*l_48), ((VECTOR(int8_t, 2))(0x04L)), (-1L), 0x67L, 0x02L)).sce86)), 0x1DL, 1L, 0x61L)).odd)).z, p_37))) , p_38) == l_752))), (-5L))), 4)))) < p_37) < l_723));
                }
                for (l_669 = (-27); (l_669 > (-18)); l_669 = safe_add_func_int16_t_s_s(l_669, 6))
                { /* block id: 264 */
                    int8_t *l_760 = (void*)0;
                    struct S0 ****l_769 = &l_767;
                    struct S0 ****l_772[3];
                    uint64_t *l_775 = (void*)0;
                    uint64_t *l_776 = (void*)0;
                    uint64_t *l_777 = (void*)0;
                    uint64_t *l_778 = (void*)0;
                    uint64_t *l_779 = (void*)0;
                    uint64_t *l_780 = (void*)0;
                    uint64_t *l_781 = (void*)0;
                    uint64_t *l_782 = (void*)0;
                    uint64_t *l_783 = (void*)0;
                    uint64_t *l_784 = (void*)0;
                    uint64_t *l_785[7];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_772[i] = &l_770;
                    for (i = 0; i < 7; i++)
                        l_785[i] = (void*)0;
                    if (l_756)
                        break;
                    for (p_961->g_237 = (-21); (p_961->g_237 < (-27)); p_961->g_237 = safe_sub_func_uint32_t_u_u(p_961->g_237, 1))
                    { /* block id: 268 */
                        int32_t **l_759 = &l_663;
                        (*l_759) = p_39;
                        return l_760;
                    }
                    (*l_657) = (safe_mod_func_uint16_t_u_u((p_37 && ((p_38 | (((VECTOR(uint32_t, 8))(l_763.s948313c8)).s3 , p_37)) || (p_961->g_132.x = (((18446744073709551608UL <= (((safe_div_func_int32_t_s_s(l_766[8][0], ((((*l_769) = l_767) != (l_770 = l_770)) | (safe_rshift_func_uint8_t_u_u((((void*)0 != l_775) ^ FAKE_DIVERGE(p_961->global_2_offset, get_global_id(2), 10)), p_961->g_628.s5))))) , 0xDE38L) ^ 0xB908L)) ^ 0UL) , p_961->g_628.s4)))), p_961->g_109));
                }
            }
        }
        else
        { /* block id: 278 */
            int8_t *l_786 = &l_719[7];
            return l_788[4];
        }
        ++l_794;
        l_668 = ((*l_791) = (*l_48));
        (*p_961->g_465) = ((((l_797 , l_798) != (void*)0) <= p_38) ^ ((VECTOR(int64_t, 2))(0x389C171A12C33487L, 0x1ECFD089D3942F94L)).odd);
    }
    (*p_39) = ((~p_37) < (safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((((*l_803) = p_39) != ((safe_lshift_func_uint8_t_u_s(0UL, 0)) , (void*)0)), (((VECTOR(int64_t, 2))(p_961->g_806.yz)).odd , (safe_sub_func_int8_t_s_s(((safe_add_func_uint64_t_u_u(0x49020AADC6901D9FL, (*l_48))) > p_37), (((*p_961->g_335) = 5L) & ((safe_add_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), p_38)) == p_38))))))), p_961->g_287[0].f1)));
    return l_813;
}


/* ------------------------------------------ */
/* 
 * reads : p_961->g_23 p_961->g_5 p_961->g_8 p_961->g_273 p_961->g_206.f2 p_961->g_279 p_961->g_280 p_961->g_206.f1 p_961->g_286 p_961->g_109 p_961->g_74 p_961->g_287.f1 p_961->g_132 p_961->g_73 p_961->g_86 p_961->g_44 p_961->g_151 p_961->g_162 p_961->g_165 p_961->g_88 p_961->g_87 p_961->g_237 p_961->g_257 p_961->g_260 p_961->g_324 p_961->g_325 p_961->g_295 p_961->g_206.f0 p_961->g_334 p_961->g_341 p_961->g_346 p_961->g_351 p_961->g_296 p_961->g_287.f0 p_961->g_382 p_961->g_417 p_961->g_287.f2 p_961->g_465 p_961->g_17 p_961->g_335 p_961->g_482 p_961->g_599 p_961->g_600 p_961->g_628 p_961->g_592 p_961->g_214 p_961->g_651
 * writes: p_961->g_23 p_961->g_206.f1 p_961->g_206.f2 p_961->g_287 p_961->g_295 p_961->g_88 p_961->g_109 p_961->g_132 p_961->g_162 p_961->g_165.f1 p_961->g_201 p_961->g_206 p_961->g_86 p_961->g_257 p_961->g_279 p_961->g_261 p_961->g_599
 */
int8_t ** func_45(int32_t * p_46, int32_t * p_47, struct S1 * p_961)
{ /* block id: 86 */
    uint64_t *l_270 = (void*)0;
    int32_t l_284[1];
    uint8_t l_318 = 0x6BL;
    int16_t *l_348 = (void*)0;
    VECTOR(int32_t, 16) l_381 = (VECTOR(int32_t, 16))(0x4A1E1C09L, (VECTOR(int32_t, 4))(0x4A1E1C09L, (VECTOR(int32_t, 2))(0x4A1E1C09L, 0x34ED3264L), 0x34ED3264L), 0x34ED3264L, 0x4A1E1C09L, 0x34ED3264L, (VECTOR(int32_t, 2))(0x4A1E1C09L, 0x34ED3264L), (VECTOR(int32_t, 2))(0x4A1E1C09L, 0x34ED3264L), 0x4A1E1C09L, 0x34ED3264L, 0x4A1E1C09L, 0x34ED3264L);
    struct S0 *l_403 = &p_961->g_287[2];
    struct S0 **l_402 = &l_403;
    VECTOR(uint8_t, 2) l_447 = (VECTOR(uint8_t, 2))(251UL, 0x82L);
    int32_t l_456 = 0x001D94AEL;
    VECTOR(int16_t, 8) l_530 = (VECTOR(int16_t, 8))(0x688AL, (VECTOR(int16_t, 4))(0x688AL, (VECTOR(int16_t, 2))(0x688AL, 0L), 0L), 0L, 0x688AL, 0L);
    int32_t *l_596 = &l_284[0];
    int16_t l_608[9][7][2] = {{{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)}},{{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)}},{{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)}},{{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)}},{{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)}},{{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)}},{{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)}},{{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)}},{{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)},{0x39F9L,(-2L)}}};
    uint8_t l_609 = 0x89L;
    int32_t **l_629 = &p_961->g_88;
    VECTOR(int8_t, 8) l_638 = (VECTOR(int8_t, 8))(0x05L, (VECTOR(int8_t, 4))(0x05L, (VECTOR(int8_t, 2))(0x05L, 0x1AL), 0x1AL), 0x1AL, 0x05L, 0x1AL);
    int16_t *l_647[3][10] = {{&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1]},{&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1]},{&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1],&l_608[4][3][1]}};
    uint16_t l_648 = 65527UL;
    uint16_t *l_649 = &p_961->g_86;
    int8_t l_650[5];
    int8_t **l_652 = (void*)0;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_284[i] = 1L;
    for (i = 0; i < 5; i++)
        l_650[i] = 0x79L;
    if ((((VECTOR(uint16_t, 2))(0xE31CL, 0x9BD0L)).even ^ (l_270 != (void*)0)))
    { /* block id: 87 */
        uint16_t l_282 = 0UL;
        struct S0 l_285 = {0x14AC4CDEL,0L,6UL};
        uint8_t *l_290 = &l_285.f2;
        uint32_t *l_294 = &p_961->g_206.f0;
        uint32_t **l_293 = &l_294;
        VECTOR(int64_t, 4) l_352 = (VECTOR(int64_t, 4))((-4L), (VECTOR(int64_t, 2))((-4L), 0x7B38F79C41B6C5DFL), 0x7B38F79C41B6C5DFL);
        VECTOR(uint64_t, 16) l_353 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x891ECEF297054B63L), 0x891ECEF297054B63L), 0x891ECEF297054B63L, 1UL, 0x891ECEF297054B63L, (VECTOR(uint64_t, 2))(1UL, 0x891ECEF297054B63L), (VECTOR(uint64_t, 2))(1UL, 0x891ECEF297054B63L), 1UL, 0x891ECEF297054B63L, 1UL, 0x891ECEF297054B63L);
        VECTOR(int64_t, 8) l_362 = (VECTOR(int64_t, 8))(0x62122529B2F99BDFL, (VECTOR(int64_t, 4))(0x62122529B2F99BDFL, (VECTOR(int64_t, 2))(0x62122529B2F99BDFL, 1L), 1L), 1L, 0x62122529B2F99BDFL, 1L);
        int64_t **l_435 = (void*)0;
        VECTOR(int16_t, 2) l_463 = (VECTOR(int16_t, 2))((-1L), 0x125CL);
        uint32_t l_489 = 0x52A58FA7L;
        int32_t l_500 = (-7L);
        int32_t l_502 = 0x20FC3BDAL;
        int32_t l_503 = (-6L);
        VECTOR(uint64_t, 2) l_514 = (VECTOR(uint64_t, 2))(0x28BF10454076ECEDL, 18446744073709551613UL);
        VECTOR(int16_t, 4) l_529 = (VECTOR(int16_t, 4))(4L, (VECTOR(int16_t, 2))(4L, 0L), 0L);
        int32_t **l_537[4][7] = {{&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88},{&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88},{&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88},{&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88,&p_961->g_88}};
        int32_t *l_563 = &p_961->g_287[0].f1;
        uint16_t *l_566 = &l_282;
        VECTOR(int16_t, 16) l_585 = (VECTOR(int16_t, 16))((-2L), (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), 0L), 0L), 0L, (-2L), 0L, (VECTOR(int16_t, 2))((-2L), 0L), (VECTOR(int16_t, 2))((-2L), 0L), (-2L), 0L, (-2L), 0L);
        int i, j;
        for (p_961->g_23 = 0; (p_961->g_23 == 5); p_961->g_23 = safe_add_func_uint32_t_u_u(p_961->g_23, 1))
        { /* block id: 90 */
            (*p_961->g_273) = (p_961->g_5.x , (*p_46));
        }
        for (p_961->g_206.f2 = 0; (p_961->g_206.f2 > 21); p_961->g_206.f2 = safe_add_func_uint8_t_u_u(p_961->g_206.f2, 1))
        { /* block id: 95 */
            VECTOR(int8_t, 8) l_278 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L));
            uint64_t *l_281 = (void*)0;
            int32_t *l_283 = &p_961->g_206.f1;
            int i;
            p_47 = p_46;
            (*l_283) |= (((safe_lshift_func_int8_t_s_s((((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 4))(l_278.s5322)).hi, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_961->g_279.yy)).yyyy)).odd))))), 0x15L, 255UL)).xyzwxzywzzwyyxzy, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(p_961->g_280.zywx)).even)).yxyyyyxyxyyyyxyx))).sa && (((void*)0 == l_281) & l_282)), 2)) < ((VECTOR(uint8_t, 4))(0xA1L, 4UL, 250UL, 1UL)).w) >= 0UL);
            if (l_284[0])
                break;
            (*p_961->g_286) = l_285;
        }
        if ((safe_mul_func_uint8_t_u_u(((*l_290) &= p_961->g_109), (safe_lshift_func_int16_t_s_u((l_293 == (p_961->g_295 = &l_294)), ((safe_lshift_func_int16_t_s_s((l_284[0] | (&p_961->g_88 == &p_961->g_273)), ((safe_add_func_int16_t_s_s((safe_mod_func_int8_t_s_s((p_961->g_74.s3 , (l_285.f0 != (p_961->g_287[0].f1 <= l_284[0]))), 1L)), l_284[0])) , l_285.f0))) > GROUP_DIVERGE(1, 1)))))))
        { /* block id: 103 */
            uint32_t l_305[5][2] = {{4294967286UL,4294967286UL},{4294967286UL,4294967286UL},{4294967286UL,4294967286UL},{4294967286UL,4294967286UL},{4294967286UL,4294967286UL}};
            uint32_t l_306 = 8UL;
            int32_t **l_307 = (void*)0;
            int32_t **l_308[9];
            int i, j;
            for (i = 0; i < 9; i++)
                l_308[i] = &p_961->g_88;
            p_47 = func_49((safe_sub_func_uint32_t_u_u(l_305[1][0], l_306)), p_961);
        }
        else
        { /* block id: 105 */
            int32_t **l_309 = &p_961->g_88;
            int32_t *l_311 = &p_961->g_287[0].f1;
            int32_t **l_310 = &l_311;
            struct S0 *l_319[8][8] = {{&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285},{&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285},{&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285},{&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285},{&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285},{&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285},{&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285},{&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285,&l_285}};
            struct S0 **l_320 = &l_319[7][2];
            struct S0 *l_323 = (void*)0;
            uint16_t *l_326 = &p_961->g_86;
            int8_t *l_333 = (void*)0;
            VECTOR(int64_t, 16) l_342 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 1L), 1L), 1L, 1L, 1L, (VECTOR(int64_t, 2))(1L, 1L), (VECTOR(int64_t, 2))(1L, 1L), 1L, 1L, 1L, 1L);
            uint64_t l_406 = 0x2927857436F2B06FL;
            VECTOR(uint8_t, 4) l_423 = (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0UL), 0UL);
            VECTOR(int64_t, 4) l_459 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 1L), 1L);
            VECTOR(uint32_t, 8) l_462 = (VECTOR(uint32_t, 8))(8UL, (VECTOR(uint32_t, 4))(8UL, (VECTOR(uint32_t, 2))(8UL, 3UL), 3UL), 3UL, 8UL, 3UL);
            VECTOR(int16_t, 16) l_475 = (VECTOR(int16_t, 16))(0x2431L, (VECTOR(int16_t, 4))(0x2431L, (VECTOR(int16_t, 2))(0x2431L, 0x6BCCL), 0x6BCCL), 0x6BCCL, 0x2431L, 0x6BCCL, (VECTOR(int16_t, 2))(0x2431L, 0x6BCCL), (VECTOR(int16_t, 2))(0x2431L, 0x6BCCL), 0x2431L, 0x6BCCL, 0x2431L, 0x6BCCL);
            int32_t l_494 = 2L;
            int32_t l_495 = (-1L);
            int32_t l_496 = 6L;
            int32_t l_497 = (-1L);
            int32_t l_498 = 0x426405D5L;
            int32_t l_499 = 0x1F311A77L;
            int32_t l_501[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            int32_t *l_507 = &l_496;
            int i, j;
            (*l_310) = ((*l_309) = p_46);
            if ((safe_sub_func_int8_t_s_s((p_961->g_279.x = ((safe_div_func_int64_t_s_s((((safe_rshift_func_int16_t_s_u((l_318 , (((VECTOR(int32_t, 2))(1L, 1L)).even < (l_282 | 4294967287UL))), 12)) , ((*l_320) = l_319[0][6])) != ((safe_add_func_int16_t_s_s(p_961->g_73.x, 0xD217L)) , l_323)), (((**p_961->g_295) |= (((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(p_961->g_324.se06e17c6)))).lo, ((VECTOR(uint16_t, 4))(p_961->g_325.zzxx))))).x ^ (++(*l_326)))) & FAKE_DIVERGE(p_961->global_1_offset, get_global_id(1), 10)))) & (safe_rshift_func_uint8_t_u_s((((safe_mul_func_int8_t_s_s(l_285.f1, ((FAKE_DIVERGE(p_961->local_2_offset, get_local_id(2), 10) , (void*)0) == (void*)0))) < l_284[0]) & l_284[0]), 0)))), (-9L))))
            { /* block id: 112 */
                return p_961->g_334[1];
            }
            else
            { /* block id: 114 */
                int32_t *l_338 = &p_961->g_206.f1;
                VECTOR(int64_t, 2) l_343 = (VECTOR(int64_t, 2))(0x7161496DCF6CB5FAL, (-4L));
                int16_t **l_349 = (void*)0;
                int16_t **l_350[7] = {&l_348,(void*)0,&l_348,&l_348,(void*)0,&l_348,&l_348};
                VECTOR(uint8_t, 4) l_366 = (VECTOR(uint8_t, 4))(0xF0L, (VECTOR(uint8_t, 2))(0xF0L, 5UL), 5UL);
                VECTOR(int16_t, 8) l_367 = (VECTOR(int16_t, 8))(3L, (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, (-1L)), (-1L)), (-1L), 3L, (-1L));
                int32_t l_407 = 0L;
                uint16_t l_470 = 0xB249L;
                uint64_t *l_478[1][6][10] = {{{(void*)0,&l_406,(void*)0,&l_406,&l_406,(void*)0,(void*)0,(void*)0,(void*)0,&l_406},{(void*)0,&l_406,(void*)0,&l_406,&l_406,(void*)0,(void*)0,(void*)0,(void*)0,&l_406},{(void*)0,&l_406,(void*)0,&l_406,&l_406,(void*)0,(void*)0,(void*)0,(void*)0,&l_406},{(void*)0,&l_406,(void*)0,&l_406,&l_406,(void*)0,(void*)0,(void*)0,(void*)0,&l_406},{(void*)0,&l_406,(void*)0,&l_406,&l_406,(void*)0,(void*)0,(void*)0,(void*)0,&l_406},{(void*)0,&l_406,(void*)0,&l_406,&l_406,(void*)0,(void*)0,(void*)0,(void*)0,&l_406}}};
                int i, j, k;
                (*l_338) |= ((**l_309) > (safe_rshift_func_int16_t_s_s(0x481AL, 12)));
                if ((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 16))((*l_338), 0x0005FB6EAA696D36L, 0x5DD8BBFF7E684A6FL, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(p_961->g_341.s76)), 8L, 4L)), ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 8))(l_342.s95ec202c)).s75, ((VECTOR(int64_t, 16))(4L, ((VECTOR(int64_t, 2))(l_343.xy)), (safe_mul_func_uint8_t_u_u((((l_285.f2 < (p_961->g_346[1] != (l_348 = l_348))) , ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 2))(0x51D4L, 0x0566L)).xxyxxxyy, ((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 4))(p_961->g_351.ywxy)), ((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),VECTOR(uint8_t, 4),((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 8))((((((VECTOR(int64_t, 4))(l_352.xxwx)).y == ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(l_353.s78)))).xxxyxxxyxyxxxxxy)).sd) , &p_961->g_273) != (((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))((8L == ((*p_961->g_296) |= (((safe_mod_func_uint16_t_u_u((((*l_338) && (((l_282 == ((safe_sub_func_uint64_t_u_u((*l_338), FAKE_DIVERGE(p_961->group_1_offset, get_group_id(1), 10))) | p_961->g_206.f2)) && 0x1AL) != (*l_338))) & l_284[0]), p_961->g_280.y)) || (*l_338)) != 65535UL))), ((VECTOR(int16_t, 4))(0x481EL)), (*l_338), (-10L), 0x6769L, ((VECTOR(int16_t, 4))(0x620DL)), ((VECTOR(int16_t, 4))(8L)))).even)).s1 , &p_961->g_273)), l_284[0], (*l_338), FAKE_DIVERGE(p_961->global_0_offset, get_global_id(0), 10), ((VECTOR(uint8_t, 4))(0UL)))).hi, ((VECTOR(uint8_t, 4))(0UL))))).lo, ((VECTOR(uint8_t, 2))(0x1BL))))).xyxy, ((VECTOR(uint8_t, 4))(0xB4L)), ((VECTOR(uint8_t, 4))(0UL))))).xywxyyzwzxwwxxwy, ((VECTOR(uint8_t, 16))(0x7AL)))))))).seba9))).zyxzyzww))).hi, ((VECTOR(int16_t, 4))(0x2A1FL))))), (-9L), 0x12F1L, 0x23DDL, 0x6232L)), ((VECTOR(int16_t, 8))(1L))))).s1557336011270124)).sf8d0)).hi)).odd) ^ p_961->g_109), (*l_338))), ((VECTOR(int64_t, 4))((-1L))), (**l_310), ((VECTOR(int64_t, 4))(0x64AD3AE1BF6FE707L)), (*l_338), (-1L), (-1L))).s5e))), ((VECTOR(int64_t, 2))(1L)), ((VECTOR(int64_t, 4))((-1L))), 0x74BD747E9EE0BA28L)).s1, 5UL)))
                { /* block id: 118 */
                    uint32_t l_365 = 0x206CAD40L;
                    int32_t l_408 = 0L;
                    int32_t *l_415 = &l_408;
                    int64_t *l_434 = (void*)0;
                    (*l_309) = func_49((**l_309), p_961);
                    if ((safe_sub_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s(65529UL, ((0UL || (((VECTOR(int64_t, 16))(l_362.s4234372370465656)).s6 <= (safe_add_func_uint32_t_u_u((**p_961->g_295), l_365)))) , (*l_311)))), (((*l_311) , (*p_961->g_295)) != (void*)0))))
                    { /* block id: 120 */
                        int8_t l_372 = 0x32L;
                        uint64_t *l_391 = (void*)0;
                        uint64_t *l_392 = (void*)0;
                        uint64_t *l_393 = (void*)0;
                        uint64_t *l_394 = (void*)0;
                        uint64_t *l_395[8][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
                        int i, j;
                        (*l_310) = func_49(((((VECTOR(uint8_t, 16))(safe_clamp_func(VECTOR(uint8_t, 16),uint8_t,((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 8))(l_366.yywxxywy)).s14))), 253UL, 0xEAL)).yzwwwwwzyywywwwy, ((VECTOR(uint8_t, 4))(0UL, ((*l_338) = (l_284[0] ^ (((VECTOR(int16_t, 2))(l_367.s74)).odd || ((safe_sub_func_int64_t_s_s(((safe_rshift_func_uint8_t_u_u(((l_372 ^ FAKE_DIVERGE(p_961->global_1_offset, get_global_id(1), 10)) , ((safe_add_func_uint64_t_u_u((safe_div_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((l_365 , (**l_309)), 2)), (safe_add_func_uint16_t_u_u(l_372, ((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(1L, 0x1F696DF4C2B60213L, (-1L), ((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_381.sf65712b6)).s13)).xyxxxyyy, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((-1L), 0x4CBD2D63L)), (-7L), 0L)).hi, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_961->g_382.s0303)).zwzxzyxyxzxxxwyx)).s8a))).xyxxyxyx, ((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 2))((-1L), (-1L))).xxxxyyyy, ((VECTOR(int32_t, 2))(0x1480073BL, (-1L))).xxxxxyyy)))))).s25, ((VECTOR(uint32_t, 2))(3UL, 0x4CDF84ABL))))), (safe_mod_func_int8_t_s_s((safe_div_func_int16_t_s_s((0UL != (safe_lshift_func_int8_t_s_u(((((VECTOR(uint16_t, 2))(0xCD24L, 0x858BL)).hi , 1L) != (safe_sub_func_uint64_t_u_u((l_285.f1 = (*l_338)), ((((safe_mul_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u((safe_add_func_uint32_t_u_u((l_365 , 4294967287UL), 1UL)), 1L)), (-2L))) && l_352.w) , (*p_46)) < 0x7AE5EB64L)))), l_284[0]))), 1L)), 0x9EL)), 0x75EC4176133DB7E8L, 9L)))).s1 , 0x175EC5DBL) , 0xBE0DL))))), 0x22D3CD9679E9AFD7L)) <= l_372)), 5)) , p_961->g_73.x), GROUP_DIVERGE(0, 1))) | p_961->g_206.f0)))), 0x0FL, 0xD4L)).zwyyyzywxyxzzxwy, ((VECTOR(uint8_t, 16))(255UL))))).hi, ((VECTOR(uint8_t, 8))(8UL)), ((VECTOR(uint8_t, 8))(0x47L))))).s4332501100032240, (uint8_t)9UL, (uint8_t)p_961->g_73.z))).se , p_47) == (*p_961->g_295)), p_961);
                    }
                    else
                    { /* block id: 124 */
                        struct S0 ***l_404[3][4][3] = {{{&l_402,&l_402,&l_320},{&l_402,&l_402,&l_320},{&l_402,&l_402,&l_320},{&l_402,&l_402,&l_320}},{{&l_402,&l_402,&l_320},{&l_402,&l_402,&l_320},{&l_402,&l_402,&l_320},{&l_402,&l_402,&l_320}},{{&l_402,&l_402,&l_320},{&l_402,&l_402,&l_320},{&l_402,&l_402,&l_320},{&l_402,&l_402,&l_320}}};
                        int32_t l_405 = 0x552171A5L;
                        int32_t *l_409 = &l_405;
                        int32_t *l_410 = (void*)0;
                        int32_t *l_411[1][10][5] = {{{&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1},{&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1},{&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1},{&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1},{&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1},{&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1},{&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1},{&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1},{&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1},{&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1,&l_285.f1}}};
                        uint32_t l_412 = 1UL;
                        int i, j, k;
                        p_961->g_261[0] = l_402;
                        l_406 |= l_405;
                        l_412--;
                    }
                    if (((*l_415) = ((*l_338) = (l_285.f0 , 0x70EDEA33L))))
                    { /* block id: 131 */
                        VECTOR(int32_t, 16) l_416 = (VECTOR(int32_t, 16))(0x5FA65281L, (VECTOR(int32_t, 4))(0x5FA65281L, (VECTOR(int32_t, 2))(0x5FA65281L, 1L), 1L), 1L, 0x5FA65281L, 1L, (VECTOR(int32_t, 2))(0x5FA65281L, 1L), (VECTOR(int32_t, 2))(0x5FA65281L, 1L), 0x5FA65281L, 1L, 0x5FA65281L, 1L);
                        int64_t *l_436 = (void*)0;
                        int64_t *l_437[1];
                        VECTOR(int64_t, 2) l_438 = (VECTOR(int64_t, 2))(0x63A12DF7985524BBL, (-1L));
                        int32_t ***l_441 = &l_310;
                        int32_t ***l_442 = &l_309;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_437[i] = (void*)0;
                        p_961->g_287[0].f1 &= ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_416.s7a)).yyxxyyyyyyyxyyxy)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0L, 0L)), 0x2DB316E4L, 0x60F462A0L)).wxzwywwzyyyxzzyz)), ((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),int32_t,((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(p_961->g_417.yy)).odd, (-6L), 0x03FA2C95L, (safe_sub_func_uint64_t_u_u(((((safe_mul_func_int8_t_s_s(((safe_unary_minus_func_uint8_t_u(((VECTOR(uint8_t, 8))(l_423.xzxyywzw)).s1)) >= (safe_add_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_u(l_285.f2, (p_961->g_287[0].f2--))) , ((+((safe_div_func_int16_t_s_s(((l_284[0] |= (safe_sub_func_uint16_t_u_u(((l_434 == (void*)0) | (*p_47)), ((void*)0 == l_435)))) <= ((((VECTOR(int64_t, 4))(l_438.yxyx)).z != (l_381.s1 <= ((*l_290) = ((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(0xAAL, (0x6DD7L && FAKE_DIVERGE(p_961->global_1_offset, get_global_id(1), 10)), 1UL, 0UL)), (safe_rshift_func_int8_t_s_u(0x52L, 2)), ((VECTOR(uint8_t, 2))(255UL)), 0x5DL)).hi)))))), ((VECTOR(uint8_t, 4))(0xCDL))))).z))) , l_353.s5)), FAKE_DIVERGE(p_961->global_0_offset, get_global_id(0), 10))) >= (*l_415))) < 1L)), FAKE_DIVERGE(p_961->group_1_offset, get_group_id(1), 10)))), 0x40L)) & 0xD560L) & l_352.z) != (*l_338)), 18446744073709551610UL)), 0x287B9AA2L, ((VECTOR(int32_t, 2))(0x643438F6L)), ((VECTOR(int32_t, 8))(0x57C2D70EL)), 0x52ACA6C0L)).even, ((VECTOR(int32_t, 8))(1L)), ((VECTOR(int32_t, 8))(0x12BDF9B4L)))))))).s0600622452011241, (int32_t)(-8L), (int32_t)1L)))))), ((VECTOR(int32_t, 16))(1L))))).sf;
                        (*l_415) ^= (((*l_441) = (void*)0) != ((*l_442) = &p_961->g_88));
                    }
                    else
                    { /* block id: 139 */
                        (*l_309) = (*l_310);
                    }
                }
                else
                { /* block id: 142 */
                    int8_t l_450 = 1L;
                    int32_t l_464 = 0x1A744BFCL;
                    (*p_961->g_465) ^= ((*l_338) = (safe_add_func_int32_t_s_s((safe_add_func_int32_t_s_s(((((VECTOR(uint8_t, 16))(l_447.yxyyyyyyxyyyxyxy)).sa < (safe_mod_func_int16_t_s_s((+l_362.s7), (*l_311)))) < (l_450 , (l_381.s8 | (l_464 = (safe_mod_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_s((safe_unary_minus_func_int16_t_s(l_456)), (((GROUP_DIVERGE(2, 1) ^ ((safe_add_func_int64_t_s_s((*l_311), ((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),int64_t,((VECTOR(int64_t, 16))(l_459.xyxwxyxywxzywyzw)).lo, (int64_t)l_362.s2, (int64_t)(safe_mul_func_uint8_t_u_u((!(((VECTOR(uint32_t, 4))(l_462.s7714)).x < (((((*l_290) = 0xF8L) >= ((VECTOR(int8_t, 4))(0x4AL, 1L, 1L, 0L)).x) || ((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))((-10L), 0x1F49L)))), ((VECTOR(int16_t, 8))(l_463.yyxyyyxy)).s37, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(0x376CL, 0x5B04L)).yxyyyyxxyyyxyxxy)).sc5cb)).lo))).hi) , (**l_310)))), l_456))))), ((VECTOR(int64_t, 8))(0x723F724A38F2BCE4L))))).s0)) < (**l_309))) ^ (*l_338)) >= (**l_309)))), 0x4C11313B10A9F40FL)))))), GROUP_DIVERGE(2, 1))), 0x68F40AB2L)));
                }
                (*l_338) = ((l_318 && (safe_add_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((!((p_961->g_17.s0 , (((*l_402) != &l_285) & l_470)) == (safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_961->local_2_offset, get_local_id(2), 10), (safe_mod_func_int16_t_s_s((*l_338), ((VECTOR(int16_t, 4))(l_475.s3e66)).z)))))), (safe_mul_func_int8_t_s_s((((void*)0 == l_478[0][2][0]) > ((0xEF71317378FAE77AL | l_284[0]) ^ 0UL)), (*p_961->g_335))))), GROUP_DIVERGE(2, 1)))) > l_381.s4);
                l_285.f1 ^= ((*l_311) > (((*l_311) == p_961->g_44.y) != ((*p_961->g_273) >= (safe_add_func_uint64_t_u_u(((p_961->g_279.w == (safe_unary_minus_func_int64_t_s(p_961->g_482))) && ((safe_lshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((((((l_270 != (void*)0) < (safe_add_func_uint64_t_u_u((*l_338), (*l_338)))) & l_456) || 0xA86EL) <= 0xB8L), 5)), 5)) , p_961->g_237)), l_489)))));
            }
            for (p_961->g_206.f0 = 0; (p_961->g_206.f0 >= 35); p_961->g_206.f0++)
            { /* block id: 153 */
                int32_t *l_492 = &l_284[0];
                int32_t *l_493[9] = {&l_456,&l_285.f1,&l_456,&l_456,&l_285.f1,&l_456,&l_456,&l_285.f1,&l_456};
                uint32_t l_504 = 0x56FE4E59L;
                int i;
                p_47 = (void*)0;
                l_504++;
            }
            (*l_507) |= 0x7B6E91E0L;
        }
        for (p_961->g_206.f1 = 0; (p_961->g_206.f1 != 19); p_961->g_206.f1++)
        { /* block id: 161 */
            uint32_t l_519 = 4294967295UL;
            struct S0 l_524 = {4294967295UL,0x15992476L,3UL};
            VECTOR(int16_t, 8) l_528 = (VECTOR(int16_t, 8))(0x1C95L, (VECTOR(int16_t, 4))(0x1C95L, (VECTOR(int16_t, 2))(0x1C95L, 8L), 8L), 8L, 0x1C95L, 8L);
            int32_t l_542 = (-10L);
            int32_t l_543 = 7L;
            int32_t l_552 = 0x0E43A275L;
            uint32_t l_558 = 4294967290UL;
            int i;
            for (p_961->g_206.f2 = (-25); (p_961->g_206.f2 >= 16); p_961->g_206.f2 = safe_add_func_int32_t_s_s(p_961->g_206.f2, 2))
            { /* block id: 164 */
                int32_t *l_523 = &l_502;
                VECTOR(int16_t, 2) l_527 = (VECTOR(int16_t, 2))((-5L), (-4L));
                int32_t l_539 = 0x774C7D75L;
                int32_t l_540 = 0x62458770L;
                int32_t l_544 = 0L;
                int32_t l_551 = 0x5EC1F6FFL;
                int32_t l_553 = 2L;
                int32_t l_554 = 0L;
                uint16_t *l_565[7];
                VECTOR(int32_t, 16) l_576 = (VECTOR(int32_t, 16))(0x2EB7F413L, (VECTOR(int32_t, 4))(0x2EB7F413L, (VECTOR(int32_t, 2))(0x2EB7F413L, (-1L)), (-1L)), (-1L), 0x2EB7F413L, (-1L), (VECTOR(int32_t, 2))(0x2EB7F413L, (-1L)), (VECTOR(int32_t, 2))(0x2EB7F413L, (-1L)), 0x2EB7F413L, (-1L), 0x2EB7F413L, (-1L));
                int32_t *l_595 = &l_284[0];
                int i;
                for (i = 0; i < 7; i++)
                    l_565[i] = &l_282;
                (1 + 1);
            }
        }
    }
    else
    { /* block id: 202 */
        int32_t *l_603 = &p_961->g_287[0].f1;
        struct S0 l_605[3] = {{1UL,0L,255UL},{1UL,0L,255UL},{1UL,0L,255UL}};
        int32_t *l_606 = &p_961->g_287[0].f1;
        int32_t *l_607[8][8] = {{(void*)0,(void*)0,&l_284[0],(void*)0,&l_284[0],(void*)0,(void*)0,&p_961->g_287[0].f1},{(void*)0,(void*)0,&l_284[0],(void*)0,&l_284[0],(void*)0,(void*)0,&p_961->g_287[0].f1},{(void*)0,(void*)0,&l_284[0],(void*)0,&l_284[0],(void*)0,(void*)0,&p_961->g_287[0].f1},{(void*)0,(void*)0,&l_284[0],(void*)0,&l_284[0],(void*)0,(void*)0,&p_961->g_287[0].f1},{(void*)0,(void*)0,&l_284[0],(void*)0,&l_284[0],(void*)0,(void*)0,&p_961->g_287[0].f1},{(void*)0,(void*)0,&l_284[0],(void*)0,&l_284[0],(void*)0,(void*)0,&p_961->g_287[0].f1},{(void*)0,(void*)0,&l_284[0],(void*)0,&l_284[0],(void*)0,(void*)0,&p_961->g_287[0].f1},{(void*)0,(void*)0,&l_284[0],(void*)0,&l_284[0],(void*)0,(void*)0,&p_961->g_287[0].f1}};
        int i, j;
        (*l_596) = (safe_add_func_int16_t_s_s(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 8))(p_961->g_599.wxwyywwy)).hi, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))((-1L), (*l_596), 0x3145L, 1L)).wzyxxxzzwzxzywxx)).s2fcb))))).xxxwzxwzzwwyyyyx, ((VECTOR(int16_t, 16))(p_961->g_600.sae2c867e51899f4f))))).sca)).yxyxyxyx)).odd)).even)).xyyxxxxy)).hi)).z, 0x7B51L));
        for (l_318 = 0; (l_318 != 28); ++l_318)
        { /* block id: 206 */
            int32_t **l_604[7];
            int i;
            for (i = 0; i < 7; i++)
                l_604[i] = &l_603;
            p_47 = l_603;
        }
        (**l_402) = l_605[1];
        --l_609;
    }
    l_456 ^= ((safe_rshift_func_uint8_t_u_s((GROUP_DIVERGE(1, 1) && (((safe_lshift_func_uint8_t_u_s(0x1CL, (*l_596))) && (!((4294967290UL <= ((safe_add_func_int8_t_s_s((safe_add_func_int32_t_s_s((0x1F4E2AACC8D6409BL ^ ((-6L) ^ (safe_add_func_int32_t_s_s((*l_596), (safe_rshift_func_uint16_t_u_s(((safe_sub_func_int8_t_s_s((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 16))(p_961->g_628.s4556271211247322)).s2, ((VECTOR(uint64_t, 4))(((((((*l_596) == ((*l_596) , (*l_596))) , GROUP_DIVERGE(0, 1)) & (*p_961->g_335)) | (*l_596)) == (*l_596)), ((VECTOR(uint64_t, 2))(0xB67379A2A5C281CCL)), 0xDB28A39D417B71F2L)).w)), 0x4BL)) , p_961->g_325.w), p_961->g_287[0].f2)))))), (*p_961->g_296))), 255UL)) , 0x1A1BD9E7L)) && (*l_596)))) <= p_961->g_325.x)), 3)) == (*p_961->g_335));
    (*l_629) = &l_456;
    (*p_961->g_651) = (safe_lshift_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u((0x1090853DAF959FBEL > ((safe_rshift_func_int16_t_s_u((0x3230D91F6F5085BFL ^ (p_961->g_132.x = ((+GROUP_DIVERGE(1, 1)) < ((VECTOR(int8_t, 8))(l_638.s63275630)).s6))), 9)) , ((p_46 != ((*l_629) = (((*l_649) |= ((safe_lshift_func_uint8_t_u_s(((*l_629) != (void*)0), 0)) & (safe_add_func_int32_t_s_s(((safe_mod_func_uint16_t_u_u(p_961->g_257, p_961->g_592[1])) > (safe_sub_func_uint16_t_u_u(p_961->g_214.x, (p_961->g_599.w &= (l_648 ^= ((*l_596) &= (p_961->g_482 && (**l_629)))))))), FAKE_DIVERGE(p_961->global_2_offset, get_global_id(2), 10))))) , p_47))) & l_650[1]))), p_961->g_325.z)) >= FAKE_DIVERGE(p_961->group_1_offset, get_group_id(1), 10)), GROUP_DIVERGE(1, 1)));
    return l_652;
}


/* ------------------------------------------ */
/* 
 * reads : p_961->g_73 p_961->g_74 p_961->g_17 p_961->g_8 p_961->g_44 p_961->g_23 p_961->g_87 p_961->g_5 p_961->g_109 p_961->g_132 p_961->g_86 p_961->g_151 p_961->g_162 p_961->g_165 p_961->g_88 p_961->g_214 p_961->g_237 p_961->g_206.f1 p_961->g_257 p_961->g_260
 * writes: p_961->g_86 p_961->g_88 p_961->g_109 p_961->g_132 p_961->g_162 p_961->g_23 p_961->g_165.f1 p_961->g_201 p_961->g_206 p_961->g_257
 */
int32_t * func_49(uint32_t  p_50, struct S1 * p_961)
{ /* block id: 11 */
    int16_t l_57 = (-6L);
    VECTOR(int32_t, 4) l_62 = (VECTOR(int32_t, 4))(0x5427E557L, (VECTOR(int32_t, 2))(0x5427E557L, 0x633BD0D8L), 0x633BD0D8L);
    VECTOR(int32_t, 2) l_63 = (VECTOR(int32_t, 2))(0x0AE446F9L, 0x663B350BL);
    VECTOR(int32_t, 16) l_64 = (VECTOR(int32_t, 16))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x59328DFEL), 0x59328DFEL), 0x59328DFEL, (-2L), 0x59328DFEL, (VECTOR(int32_t, 2))((-2L), 0x59328DFEL), (VECTOR(int32_t, 2))((-2L), 0x59328DFEL), (-2L), 0x59328DFEL, (-2L), 0x59328DFEL);
    VECTOR(uint32_t, 16) l_65 = (VECTOR(uint32_t, 16))(0x94A3CE57L, (VECTOR(uint32_t, 4))(0x94A3CE57L, (VECTOR(uint32_t, 2))(0x94A3CE57L, 4294967295UL), 4294967295UL), 4294967295UL, 0x94A3CE57L, 4294967295UL, (VECTOR(uint32_t, 2))(0x94A3CE57L, 4294967295UL), (VECTOR(uint32_t, 2))(0x94A3CE57L, 4294967295UL), 0x94A3CE57L, 4294967295UL, 0x94A3CE57L, 4294967295UL);
    VECTOR(int64_t, 2) l_66 = (VECTOR(int64_t, 2))(0x325E6B711A46C428L, (-1L));
    VECTOR(int64_t, 8) l_69 = (VECTOR(int64_t, 8))(0x3E652606BDE5E333L, (VECTOR(int64_t, 4))(0x3E652606BDE5E333L, (VECTOR(int64_t, 2))(0x3E652606BDE5E333L, (-8L)), (-8L)), (-8L), 0x3E652606BDE5E333L, (-8L));
    VECTOR(int64_t, 8) l_70 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x445F480A87E9A86FL), 0x445F480A87E9A86FL), 0x445F480A87E9A86FL, 1L, 0x445F480A87E9A86FL);
    int64_t *l_71[3];
    int32_t l_72 = 0x53ABC15DL;
    VECTOR(int64_t, 8) l_75 = (VECTOR(int64_t, 8))(4L, (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, 0x39D48F2AEC61BC9EL), 0x39D48F2AEC61BC9EL), 0x39D48F2AEC61BC9EL, 4L, 0x39D48F2AEC61BC9EL);
    VECTOR(int64_t, 16) l_76 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x751ED022C1C42294L), 0x751ED022C1C42294L), 0x751ED022C1C42294L, (-1L), 0x751ED022C1C42294L, (VECTOR(int64_t, 2))((-1L), 0x751ED022C1C42294L), (VECTOR(int64_t, 2))((-1L), 0x751ED022C1C42294L), (-1L), 0x751ED022C1C42294L, (-1L), 0x751ED022C1C42294L);
    int8_t *l_81 = &p_961->g_23;
    int8_t **l_80[7][1][2] = {{{&l_81,&l_81}},{{&l_81,&l_81}},{{&l_81,&l_81}},{{&l_81,&l_81}},{{&l_81,&l_81}},{{&l_81,&l_81}},{{&l_81,&l_81}}};
    VECTOR(uint32_t, 8) l_82 = (VECTOR(uint32_t, 8))(0x0316972AL, (VECTOR(uint32_t, 4))(0x0316972AL, (VECTOR(uint32_t, 2))(0x0316972AL, 4294967295UL), 4294967295UL), 4294967295UL, 0x0316972AL, 4294967295UL);
    uint16_t *l_85 = &p_961->g_86;
    int32_t l_89 = 0x02802FD5L;
    int32_t *l_90 = (void*)0;
    int32_t *l_208 = &l_72;
    VECTOR(uint32_t, 8) l_216 = (VECTOR(uint32_t, 8))(3UL, (VECTOR(uint32_t, 4))(3UL, (VECTOR(uint32_t, 2))(3UL, 0UL), 0UL), 0UL, 3UL, 0UL);
    int32_t l_255 = (-5L);
    int32_t l_256[8][10][2] = {{{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL}},{{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL}},{{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL}},{{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL}},{{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL}},{{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL}},{{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL}},{{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL},{(-10L),0x1572EBDDL}}};
    struct S0 *l_263 = &p_961->g_206;
    struct S0 **l_262[2][9] = {{&l_263,&l_263,&l_263,&l_263,&l_263,&l_263,&l_263,&l_263,&l_263},{&l_263,&l_263,&l_263,&l_263,&l_263,&l_263,&l_263,&l_263,&l_263}};
    struct S0 *l_264 = &p_961->g_206;
    int32_t *l_265[10][8][3] = {{{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0}},{{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0}},{{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0}},{{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0}},{{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0}},{{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0}},{{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0}},{{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0}},{{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0}},{{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0},{&l_256[7][9][0],(void*)0,(void*)0}}};
    int32_t *l_266 = &l_72;
    int32_t *l_267 = &p_961->g_8;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_71[i] = (void*)0;
    if (((*l_208) = func_51(((safe_mul_func_int8_t_s_s(l_57, (safe_sub_func_int8_t_s_s(l_57, (safe_sub_func_int32_t_s_s((((l_89 = ((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(l_62.yzwzzxxw)).lo, ((VECTOR(int32_t, 2))(l_63.xy)).yxxy, ((VECTOR(int32_t, 8))(l_64.s901672c6)).odd))).yzzzzxzxyzyzzzwx)).even, ((VECTOR(uint32_t, 16))(l_65.sb133d7bf5f1e6118)).odd))).s7151124241556205, ((VECTOR(int64_t, 2))(l_66.xx)).xyyxyxxyyyxxxyxx))).sfc))), ((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))((0x2ACAFB12L & (safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(0, 1), 6))), ((VECTOR(int64_t, 2))((-7L), (-8L))), 0x33EEF59DFF04C396L)))).xwwwwyzz, ((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 2))((-10L), (-2L))).yxxxyyxxyyyxxxxx, ((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((-1L), 0x5C18638AA3AE4374L)).yyxyxyyx)).s62)).yyyyyxxyxyxxxyyx, ((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 8))(0x5DD176C5B50A7009L, 0x4D940354EEA3775EL, ((VECTOR(int64_t, 4))(l_69.s5713)), 0L, 0x5BC6281B62C3DCCDL)).s50, ((VECTOR(int64_t, 4))(0L, ((VECTOR(int64_t, 2))((-3L), 0x575DB0C68D18E14FL)), (-1L))).lo))).xyyyyyyyyxxxxxyx))).s3e6b, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 4))(l_70.s2174)).wxzzyxyxzwzwzxxw, ((VECTOR(int64_t, 8))(0L, (l_72 = l_70.s3), ((VECTOR(int64_t, 2))(p_961->g_73.wz)), 5L, ((VECTOR(int64_t, 2))(p_961->g_74.s34)), (-6L))).s1041045521220617))), ((VECTOR(int64_t, 2))(l_75.s72)).yxyxyyyxxxxxyyxy, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_76.sec24aad4)).s5074574510345274))))).s6a))).xyxx))).lo)).yxxx))).yzwyxzyywyywyxxw))).even, ((VECTOR(int64_t, 8))(func_77((p_961->g_17.s7 , l_80[2][0][1]), (((((((*l_85) = (((((((VECTOR(uint32_t, 16))(l_82.s5336023323640017)).s7 , (safe_lshift_func_uint8_t_u_u(((p_961->g_8 , ((+l_57) && p_961->g_74.s1)) || 0x806A380BL), l_75.s4))) >= p_961->g_44.x) == p_50) < 0UL) , l_69.s0)) || p_50) < p_961->g_23) || 18446744073709551613UL) , 1UL) , 1L), p_961), 0x6E8129AC59B50370L, ((VECTOR(int64_t, 2))((-4L))), p_50, ((VECTOR(int64_t, 2))((-1L))), 0x22E5C1CDF14EA79EL))))), ((VECTOR(int64_t, 8))(1L))))).s22))).yxyx, ((VECTOR(int64_t, 4))(0x49F784C266863E41L))))).z) != p_961->g_5.y) > FAKE_DIVERGE(p_961->local_1_offset, get_local_id(1), 10)), p_50)))))) , (void*)0), p_961->g_23, l_90, p_961)))
    { /* block id: 70 */
        int32_t *l_209 = &l_72;
        VECTOR(uint32_t, 16) l_215 = (VECTOR(uint32_t, 16))(4294967293UL, (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 0UL), 0UL), 0UL, 4294967293UL, 0UL, (VECTOR(uint32_t, 2))(4294967293UL, 0UL), (VECTOR(uint32_t, 2))(4294967293UL, 0UL), 4294967293UL, 0UL, 4294967293UL, 0UL);
        VECTOR(uint8_t, 16) l_230 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xB6L), 0xB6L), 0xB6L, 0UL, 0xB6L, (VECTOR(uint8_t, 2))(0UL, 0xB6L), (VECTOR(uint8_t, 2))(0UL, 0xB6L), 0UL, 0xB6L, 0UL, 0xB6L);
        uint64_t *l_236 = (void*)0;
        int i;
        l_208 = l_209;
        for (p_961->g_86 = 0; (p_961->g_86 != 54); p_961->g_86++)
        { /* block id: 74 */
            VECTOR(uint32_t, 2) l_213 = (VECTOR(uint32_t, 2))(0xCC981A81L, 6UL);
            uint32_t l_231 = 0x80782509L;
            int16_t *l_234 = &l_57;
            uint8_t *l_235 = (void*)0;
            int32_t l_238[5];
            int32_t *l_239 = &p_961->g_206.f1;
            int i;
            for (i = 0; i < 5; i++)
                l_238[i] = 0x18A418F7L;
            (*l_239) &= (l_238[2] ^= (((65529UL == 0xB7F7L) || ((&p_961->g_162 != (((((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 16))(l_213.xyyyxyxxyyxxxxxy)).hi, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(sub_sat(((VECTOR(uint32_t, 16))(safe_clamp_func(VECTOR(uint32_t, 16),uint32_t,((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(p_961->g_214.yx)), ((VECTOR(uint32_t, 2))(hadd(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(l_215.sd8598e06)))).s37, ((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 4))(l_216.s7326)).ywzwxxxz))).s71))), 0x64E7206CL, (safe_rshift_func_uint8_t_u_u(((*l_208) ^ ((+(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(248UL, ((safe_unary_minus_func_uint32_t_u(p_50)) != ((*l_234) ^= (safe_mul_func_int16_t_s_s(((safe_div_func_int16_t_s_s((safe_div_func_int32_t_s_s((safe_mul_func_int16_t_s_s((((safe_add_func_int64_t_s_s(((((p_961->g_17.s7 || (((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_230.s1ee5)).even)), ((VECTOR(uint8_t, 2))(0x09L, 254UL))))).xyxyyyxyyxxxyyyy)).sb < l_231)) && (p_50 & ((safe_rshift_func_uint16_t_u_u(p_50, p_50)) != (*l_209)))) <= (*l_209)) > 0L), (*l_209))) && p_50) >= (-3L)), p_50)), p_50)), 0x2218L)) , 0x733FL), 1UL)))), 0xDCL, 0xE8L)).yzwyywyx)).s5 >= GROUP_DIVERGE(1, 1))) | 0x398514CCL)), p_50)), 0x2235DFE3L, 4UL)).s4774757046745613, (uint32_t)0x23B0FC7DL, (uint32_t)0UL))).s6a, ((VECTOR(uint32_t, 2))(9UL))))), 0xA818BF5CL, 0xA43986B9L)).yxyzxwyx))).s5 , (void*)0) != l_235) , l_236)) >= 1L)) | p_961->g_237));
        }
        (*l_209) = ((safe_rshift_func_int8_t_s_u(6L, 2)) || (*l_208));
    }
    else
    { /* block id: 80 */
        int32_t *l_242 = (void*)0;
        int32_t *l_243 = (void*)0;
        int32_t *l_244 = (void*)0;
        int32_t *l_245 = (void*)0;
        int32_t *l_246 = &l_89;
        int32_t *l_247 = &p_961->g_206.f1;
        int32_t *l_248 = &l_89;
        int32_t *l_249 = &l_72;
        int32_t *l_250 = &p_961->g_206.f1;
        int32_t *l_251 = &l_72;
        int32_t *l_252 = &p_961->g_206.f1;
        int32_t *l_253 = (void*)0;
        int32_t *l_254[5][3][1] = {{{&l_89},{&l_89},{&l_89}},{{&l_89},{&l_89},{&l_89}},{{&l_89},{&l_89},{&l_89}},{{&l_89},{&l_89},{&l_89}},{{&l_89},{&l_89},{&l_89}}};
        int i, j, k;
        ++p_961->g_257;
    }
    (*p_961->g_260) = &l_256[7][9][0];
    l_264 = &p_961->g_206;
    return l_267;
}


/* ------------------------------------------ */
/* 
 * reads : p_961->g_23 p_961->g_17 p_961->g_74 p_961->g_109 p_961->g_132 p_961->g_5 p_961->g_73 p_961->g_86 p_961->g_44 p_961->g_151 p_961->g_162 p_961->g_165 p_961->g_88 p_961->g_87
 * writes: p_961->g_88 p_961->g_109 p_961->g_132 p_961->g_162 p_961->g_23 p_961->g_165.f1 p_961->g_201 p_961->g_206
 */
int32_t  func_51(int8_t ** p_52, int32_t  p_53, int32_t * p_54, struct S1 * p_961)
{ /* block id: 18 */
    int32_t **l_91 = &p_961->g_88;
    int32_t l_92 = 0L;
    uint32_t l_96 = 0x0A60FE93L;
    uint8_t l_111 = 0xC4L;
    VECTOR(uint16_t, 16) l_145 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x0F39L), 0x0F39L), 0x0F39L, 1UL, 0x0F39L, (VECTOR(uint16_t, 2))(1UL, 0x0F39L), (VECTOR(uint16_t, 2))(1UL, 0x0F39L), 1UL, 0x0F39L, 1UL, 0x0F39L);
    uint32_t *l_196[3][5] = {{(void*)0,(void*)0,&l_96,&l_96,(void*)0},{(void*)0,(void*)0,&l_96,&l_96,(void*)0},{(void*)0,(void*)0,&l_96,&l_96,(void*)0}};
    VECTOR(int8_t, 4) l_197 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x75L), 0x75L);
    int32_t l_200 = 8L;
    int32_t l_202 = 0x4E4D99E5L;
    int32_t l_203 = 6L;
    struct S0 l_204 = {0x7C760432L,0x3FC2EA9AL,0x51L};
    int32_t *l_207[2];
    int i, j;
    for (i = 0; i < 2; i++)
        l_207[i] = &l_202;
    (*l_91) = p_54;
    if (l_92)
    { /* block id: 20 */
        for (p_53 = 3; (p_53 == (-5)); p_53 = safe_sub_func_int32_t_s_s(p_53, 1))
        { /* block id: 23 */
            int32_t *l_95[9];
            int i;
            for (i = 0; i < 9; i++)
                l_95[i] = &p_961->g_8;
            l_95[7] = l_95[7];
            (*l_91) = p_54;
        }
        (*l_91) = p_54;
    }
    else
    { /* block id: 28 */
        uint32_t *l_99 = &l_96;
        int32_t l_100[4] = {0x5A0760A1L,0x5A0760A1L,0x5A0760A1L,0x5A0760A1L};
        uint16_t *l_105 = &p_961->g_86;
        uint8_t *l_108 = &p_961->g_109;
        int32_t l_110[5][7] = {{(-1L),0x760249F7L,0L,0x760249F7L,(-1L),(-1L),0x760249F7L},{(-1L),0x760249F7L,0L,0x760249F7L,(-1L),(-1L),0x760249F7L},{(-1L),0x760249F7L,0L,0x760249F7L,(-1L),(-1L),0x760249F7L},{(-1L),0x760249F7L,0L,0x760249F7L,(-1L),(-1L),0x760249F7L},{(-1L),0x760249F7L,0L,0x760249F7L,(-1L),(-1L),0x760249F7L}};
        int64_t *l_146 = (void*)0;
        int32_t l_149[5] = {0L,0L,0L,0L,0L};
        VECTOR(int32_t, 4) l_168 = (VECTOR(int32_t, 4))(0x5880B63DL, (VECTOR(int32_t, 2))(0x5880B63DL, 0x6207E3EBL), 0x6207E3EBL);
        uint64_t *l_183 = (void*)0;
        uint64_t *l_184 = (void*)0;
        uint64_t *l_185 = (void*)0;
        uint64_t *l_186 = (void*)0;
        uint64_t *l_187 = (void*)0;
        uint64_t *l_188 = (void*)0;
        uint64_t *l_189 = (void*)0;
        uint64_t *l_190[6];
        VECTOR(int16_t, 2) l_193 = (VECTOR(int16_t, 2))((-1L), 0x1B9CL);
        uint32_t **l_194 = (void*)0;
        uint32_t **l_195 = &l_99;
        int32_t *l_198 = (void*)0;
        int32_t *l_199[4];
        struct S0 *l_205 = &p_961->g_206;
        int i, j;
        for (i = 0; i < 6; i++)
            l_190[i] = (void*)0;
        for (i = 0; i < 4; i++)
            l_199[i] = &l_100[1];
        if ((((((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),VECTOR(uint32_t, 8),((VECTOR(uint32_t, 8))(hadd(((VECTOR(uint32_t, 4))(0x50A9A040L, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(0x991FC229L, (++l_96), (l_100[3] = ((*l_99) = p_53)), ((p_53 , (255UL == (safe_div_func_int8_t_s_s(((l_110[3][6] |= ((l_100[3] <= ((safe_lshift_func_uint16_t_u_u(((void*)0 == l_105), 14)) , p_961->g_23)) <= ((*l_108) = (safe_mul_func_uint8_t_u_u(1UL, p_53))))) >= 2UL), p_961->g_17.s7)))) || l_100[3]), GROUP_DIVERGE(2, 1), 1UL, 4294967293UL, 0xE39F1547L)).s45)), 0x5258A080L)).yxwxwwwz, ((VECTOR(uint32_t, 8))(4294967286UL))))), ((VECTOR(uint32_t, 8))(0UL)), ((VECTOR(uint32_t, 8))(0xDF3A3A19L))))).s7 , l_111) >= p_961->g_74.s3) || p_53))
        { /* block id: 34 */
            uint32_t l_148 = 4294967289UL;
            int64_t * volatile *l_152 = &l_146;
            for (l_92 = (-13); (l_92 < (-3)); l_92 = safe_add_func_uint16_t_u_u(l_92, 1))
            { /* block id: 37 */
                int32_t l_130 = (-5L);
                uint64_t *l_131 = (void*)0;
                uint64_t *l_133 = (void*)0;
                uint64_t *l_134[9][9][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
                int32_t l_135 = 7L;
                uint64_t l_142 = 9UL;
                int32_t *l_147 = &l_135;
                uint16_t l_150 = 65535UL;
                int i, j, k;
                l_149[1] |= (safe_rshift_func_int16_t_s_u((safe_rshift_func_uint8_t_u_s((safe_add_func_int32_t_s_s((safe_lshift_func_int8_t_s_s((safe_sub_func_int8_t_s_s((l_110[3][1] & (--(*l_108))), (((p_961->g_74.s6 || (safe_rshift_func_uint16_t_u_s((safe_mul_func_uint8_t_u_u(((((l_130 & ((((p_961->g_132.z++) ^ 18446744073709551615UL) == (safe_div_func_int32_t_s_s(((((safe_mod_func_int32_t_s_s(l_142, ((*l_147) = (0x7B31F79DL && (safe_lshift_func_int16_t_s_s(p_961->g_5.y, ((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(l_145.sfe9454b4)).s2427710640165370)).s3 , l_146) == (void*)0))))))) , p_961->g_73.z) == l_100[3]) && l_100[3]), l_148))) , p_961->g_74.s7)) == p_961->g_74.s4) , 0x00L) ^ p_961->g_86), p_961->g_44.y)), l_148))) < l_148) != p_53))), p_961->g_86)), (-2L))), l_110[1][3])), 14));
                (*l_91) = p_54;
                return l_150;
            }
            l_152 = p_961->g_151;
        }
        else
        { /* block id: 46 */
            int32_t *l_153 = &l_110[4][5];
            int32_t *l_154 = (void*)0;
            int32_t *l_155 = &l_92;
            int32_t *l_156 = &l_92;
            int32_t *l_157 = &l_110[3][1];
            int32_t *l_158 = &l_92;
            int32_t *l_159 = &l_110[2][0];
            int32_t *l_160 = &l_100[0];
            int32_t *l_161[10][10][2];
            uint32_t l_180 = 4294967294UL;
            int8_t *l_181[10][1] = {{&p_961->g_23},{&p_961->g_23},{&p_961->g_23},{&p_961->g_23},{&p_961->g_23},{&p_961->g_23},{&p_961->g_23},{&p_961->g_23},{&p_961->g_23},{&p_961->g_23}};
            uint16_t *l_182[3][4][3] = {{{(void*)0,(void*)0,&p_961->g_86},{(void*)0,(void*)0,&p_961->g_86},{(void*)0,(void*)0,&p_961->g_86},{(void*)0,(void*)0,&p_961->g_86}},{{(void*)0,(void*)0,&p_961->g_86},{(void*)0,(void*)0,&p_961->g_86},{(void*)0,(void*)0,&p_961->g_86},{(void*)0,(void*)0,&p_961->g_86}},{{(void*)0,(void*)0,&p_961->g_86},{(void*)0,(void*)0,&p_961->g_86},{(void*)0,(void*)0,&p_961->g_86},{(void*)0,(void*)0,&p_961->g_86}}};
            int i, j, k;
            for (i = 0; i < 10; i++)
            {
                for (j = 0; j < 10; j++)
                {
                    for (k = 0; k < 2; k++)
                        l_161[i][j][k] = &l_100[2];
                }
            }
            ++p_961->g_162;
            p_961->g_165.f1 = ((*l_160) |= (p_961->g_165 , (((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 16))(l_168.xyywyyxyxxwzzzyx)).s8, (safe_div_func_uint16_t_u_u((~(safe_add_func_int32_t_s_s((l_92 = (&p_961->g_86 != (((safe_lshift_func_uint16_t_u_s(((1L && 0xD58F199DL) | ((p_961->g_23 ^= ((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 4))(l_168.x, 4L, 0x53L, 0L)).even, ((VECTOR(int8_t, 2))(2L, 0x30L)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))((safe_unary_minus_func_uint16_t_u(((+(l_110[2][3] = (safe_div_func_uint32_t_u_u(p_53, (safe_sub_func_uint16_t_u_u(((p_961->g_165.f0 & (((&p_961->g_109 == &p_961->g_109) == 0x1FF8B330L) != (*l_153))) < p_53), l_180)))))) || p_961->g_165.f1))), 0x05L, 0x08L, 0x42L)), 0x59L, ((VECTOR(int8_t, 2))(0x33L)), 0L)).s41))).xyxx, ((VECTOR(int8_t, 4))((-2L)))))).z) || l_168.x)), 13)) | p_961->g_86) , l_182[2][3][0]))), p_961->g_5.x))), 0x573CL)))) , (-1L)) | 0x2F24L)));
        }
        l_203 ^= (l_202 = ((p_961->g_132.w = ((l_110[3][6] , l_108) != &p_961->g_23)) || (safe_mul_func_int8_t_s_s((((l_92 = 0x7FA7DB7F8A6E9548L) | (0x1506L ^ (l_110[1][0] , ((VECTOR(int16_t, 4))(l_193.yyyx)).z))) | ((l_196[2][0] = ((*l_195) = p_54)) == p_961->g_88)), ((p_961->g_201 = (l_200 = (((VECTOR(int8_t, 8))(l_197.xyxwxzyy)).s1 & 251UL))) < p_961->g_165.f1)))));
        l_203 = p_53;
        (*l_205) = (l_204 = l_204);
    }
    p_54 = (*p_961->g_87);
    p_961->g_165.f1 = 0x45ED5765L;
    return p_53;
}


/* ------------------------------------------ */
/* 
 * reads : p_961->g_87 p_961->g_74
 * writes: p_961->g_88
 */
int64_t  func_77(int8_t ** p_78, int8_t  p_79, struct S1 * p_961)
{ /* block id: 14 */
    (*p_961->g_87) = &p_961->g_8;
    return p_961->g_74.s0;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i;
    struct S1 c_962;
    struct S1* p_961 = &c_962;
    struct S1 c_963 = {
        0x11738AB6L, // p_961->g_4
        (VECTOR(int16_t, 2))(0x6D2EL, 0x08D0L), // p_961->g_5
        0x1CE45625L, // p_961->g_8
        0L, // p_961->g_16
        (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x0198AB79AE4F78D7L), 0x0198AB79AE4F78D7L), 0x0198AB79AE4F78D7L, 0L, 0x0198AB79AE4F78D7L), // p_961->g_17
        0x1EL, // p_961->g_23
        (VECTOR(int32_t, 2))(0x450133ECL, 0x7CB0BE94L), // p_961->g_44
        (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x37473AC07AC39A88L), 0x37473AC07AC39A88L), // p_961->g_73
        (VECTOR(int64_t, 8))(4L, (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, 0x628B58326432499CL), 0x628B58326432499CL), 0x628B58326432499CL, 4L, 0x628B58326432499CL), // p_961->g_74
        65535UL, // p_961->g_86
        &p_961->g_8, // p_961->g_88
        &p_961->g_88, // p_961->g_87
        0x6CL, // p_961->g_109
        (VECTOR(uint64_t, 4))(3UL, (VECTOR(uint64_t, 2))(3UL, 0xA095ECA5D8F89870L), 0xA095ECA5D8F89870L), // p_961->g_132
        (void*)0, // p_961->g_151
        18446744073709551610UL, // p_961->g_162
        {0xBB4E8AFEL,1L,0xE7L}, // p_961->g_165
        0x5EL, // p_961->g_201
        {0xADE560F2L,0x10746226L,0xA7L}, // p_961->g_206
        {(void*)0,&p_961->g_88,(void*)0,(void*)0,&p_961->g_88,(void*)0}, // p_961->g_210
        (VECTOR(uint32_t, 2))(0x1EC9E0B9L, 0x08A202F8L), // p_961->g_214
        0x0AL, // p_961->g_237
        0UL, // p_961->g_257
        &p_961->g_88, // p_961->g_260
        {(void*)0}, // p_961->g_261
        &p_961->g_206.f1, // p_961->g_273
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 9L), 9L), // p_961->g_279
        (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 5UL), 5UL), // p_961->g_280
        {{4294967293UL,0L,253UL},{4294967293UL,0L,253UL},{4294967293UL,0L,253UL},{4294967293UL,0L,253UL},{4294967293UL,0L,253UL},{4294967293UL,0L,253UL},{4294967293UL,0L,253UL},{4294967293UL,0L,253UL},{4294967293UL,0L,253UL}}, // p_961->g_287
        &p_961->g_287[0], // p_961->g_286
        &p_961->g_287[0].f0, // p_961->g_296
        &p_961->g_296, // p_961->g_295
        (VECTOR(uint16_t, 16))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 0x69C0L), 0x69C0L), 0x69C0L, 5UL, 0x69C0L, (VECTOR(uint16_t, 2))(5UL, 0x69C0L), (VECTOR(uint16_t, 2))(5UL, 0x69C0L), 5UL, 0x69C0L, 5UL, 0x69C0L), // p_961->g_324
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x18FEL), 0x18FEL), // p_961->g_325
        &p_961->g_23, // p_961->g_335
        {&p_961->g_335,&p_961->g_335,&p_961->g_335,&p_961->g_335,&p_961->g_335,&p_961->g_335,&p_961->g_335,&p_961->g_335,&p_961->g_335}, // p_961->g_334
        (VECTOR(int64_t, 8))((-9L), (VECTOR(int64_t, 4))((-9L), (VECTOR(int64_t, 2))((-9L), 0x07867F293081E0BEL), 0x07867F293081E0BEL), 0x07867F293081E0BEL, (-9L), 0x07867F293081E0BEL), // p_961->g_341
        0x07EBL, // p_961->g_347
        {&p_961->g_347,&p_961->g_347}, // p_961->g_346
        (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0x27L), 0x27L), // p_961->g_351
        (VECTOR(int32_t, 8))(0x21782D53L, (VECTOR(int32_t, 4))(0x21782D53L, (VECTOR(int32_t, 2))(0x21782D53L, 0x7902F61BL), 0x7902F61BL), 0x7902F61BL, 0x21782D53L, 0x7902F61BL), // p_961->g_382
        (VECTOR(int32_t, 2))(0x2676058DL, 0x634478A6L), // p_961->g_417
        &p_961->g_287[0].f1, // p_961->g_465
        0xC7659C3DL, // p_961->g_482
        (VECTOR(int16_t, 2))(0x2457L, 0x76F5L), // p_961->g_520
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 8L), 8L), 8L, 1L, 8L, (VECTOR(int8_t, 2))(1L, 8L), (VECTOR(int8_t, 2))(1L, 8L), 1L, 8L, 1L, 8L), // p_961->g_531
        0x7A902E0EL, // p_961->g_536
        {0xC2ACE615C6CBB7E8L,0xC2ACE615C6CBB7E8L,0xC2ACE615C6CBB7E8L,0xC2ACE615C6CBB7E8L}, // p_961->g_592
        (VECTOR(int16_t, 4))(0x49BBL, (VECTOR(int16_t, 2))(0x49BBL, 0x350CL), 0x350CL), // p_961->g_599
        (VECTOR(int16_t, 16))((-9L), (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), (-2L)), (-2L)), (-2L), (-9L), (-2L), (VECTOR(int16_t, 2))((-9L), (-2L)), (VECTOR(int16_t, 2))((-9L), (-2L)), (-9L), (-2L), (-9L), (-2L)), // p_961->g_600
        (VECTOR(int64_t, 8))(0x2A86B4B92DF4DA98L, (VECTOR(int64_t, 4))(0x2A86B4B92DF4DA98L, (VECTOR(int64_t, 2))(0x2A86B4B92DF4DA98L, 0x73DFD8D3A8879F7BL), 0x73DFD8D3A8879F7BL), 0x73DFD8D3A8879F7BL, 0x2A86B4B92DF4DA98L, 0x73DFD8D3A8879F7BL), // p_961->g_628
        &p_961->g_287[0].f1, // p_961->g_651
        4294967292UL, // p_961->g_675
        (VECTOR(int8_t, 4))(0x31L, (VECTOR(int8_t, 2))(0x31L, 0x56L), 0x56L), // p_961->g_686
        (VECTOR(int16_t, 16))(0x5D6DL, (VECTOR(int16_t, 4))(0x5D6DL, (VECTOR(int16_t, 2))(0x5D6DL, 0x6B03L), 0x6B03L), 0x6B03L, 0x5D6DL, 0x6B03L, (VECTOR(int16_t, 2))(0x5D6DL, 0x6B03L), (VECTOR(int16_t, 2))(0x5D6DL, 0x6B03L), 0x5D6DL, 0x6B03L, 0x5D6DL, 0x6B03L), // p_961->g_729
        (void*)0, // p_961->g_747
        4294967290UL, // p_961->g_750
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0L), 0L), // p_961->g_806
        (VECTOR(int32_t, 8))(0x6DFDA9CCL, (VECTOR(int32_t, 4))(0x6DFDA9CCL, (VECTOR(int32_t, 2))(0x6DFDA9CCL, 1L), 1L), 1L, 0x6DFDA9CCL, 1L), // p_961->g_821
        (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L), 0L, 0L, 0L), // p_961->g_831
        &p_961->g_88, // p_961->g_839
        {0x78L,0x78L,0x78L,0x78L,0x78L,0x78L,0x78L,0x78L}, // p_961->g_847
        (VECTOR(int64_t, 2))(8L, 0x6D0A22DFAA12B950L), // p_961->g_850
        &p_961->g_287[0].f1, // p_961->g_856
        (void*)0, // p_961->g_859
        &p_961->g_206.f1, // p_961->g_861
        &p_961->g_861, // p_961->g_860
        {3L,3L,3L,3L,3L,3L,3L,3L}, // p_961->g_866
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x391C653DL), 0x391C653DL), 0x391C653DL, 0UL, 0x391C653DL), // p_961->g_879
        (void*)0, // p_961->g_887
        &p_961->g_861, // p_961->g_888
        (void*)0, // p_961->g_889
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-2L)), (-2L)), // p_961->g_903
        {&p_961->g_861,&p_961->g_861,&p_961->g_861}, // p_961->g_954
        sequence_input[get_global_id(0)], // p_961->global_0_offset
        sequence_input[get_global_id(1)], // p_961->global_1_offset
        sequence_input[get_global_id(2)], // p_961->global_2_offset
        sequence_input[get_local_id(0)], // p_961->local_0_offset
        sequence_input[get_local_id(1)], // p_961->local_1_offset
        sequence_input[get_local_id(2)], // p_961->local_2_offset
        sequence_input[get_group_id(0)], // p_961->group_0_offset
        sequence_input[get_group_id(1)], // p_961->group_1_offset
        sequence_input[get_group_id(2)], // p_961->group_2_offset
    };
    c_962 = c_963;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_961);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_961->g_4, "p_961->g_4", print_hash_value);
    transparent_crc(p_961->g_5.x, "p_961->g_5.x", print_hash_value);
    transparent_crc(p_961->g_5.y, "p_961->g_5.y", print_hash_value);
    transparent_crc(p_961->g_8, "p_961->g_8", print_hash_value);
    transparent_crc(p_961->g_16, "p_961->g_16", print_hash_value);
    transparent_crc(p_961->g_17.s0, "p_961->g_17.s0", print_hash_value);
    transparent_crc(p_961->g_17.s1, "p_961->g_17.s1", print_hash_value);
    transparent_crc(p_961->g_17.s2, "p_961->g_17.s2", print_hash_value);
    transparent_crc(p_961->g_17.s3, "p_961->g_17.s3", print_hash_value);
    transparent_crc(p_961->g_17.s4, "p_961->g_17.s4", print_hash_value);
    transparent_crc(p_961->g_17.s5, "p_961->g_17.s5", print_hash_value);
    transparent_crc(p_961->g_17.s6, "p_961->g_17.s6", print_hash_value);
    transparent_crc(p_961->g_17.s7, "p_961->g_17.s7", print_hash_value);
    transparent_crc(p_961->g_23, "p_961->g_23", print_hash_value);
    transparent_crc(p_961->g_44.x, "p_961->g_44.x", print_hash_value);
    transparent_crc(p_961->g_44.y, "p_961->g_44.y", print_hash_value);
    transparent_crc(p_961->g_73.x, "p_961->g_73.x", print_hash_value);
    transparent_crc(p_961->g_73.y, "p_961->g_73.y", print_hash_value);
    transparent_crc(p_961->g_73.z, "p_961->g_73.z", print_hash_value);
    transparent_crc(p_961->g_73.w, "p_961->g_73.w", print_hash_value);
    transparent_crc(p_961->g_74.s0, "p_961->g_74.s0", print_hash_value);
    transparent_crc(p_961->g_74.s1, "p_961->g_74.s1", print_hash_value);
    transparent_crc(p_961->g_74.s2, "p_961->g_74.s2", print_hash_value);
    transparent_crc(p_961->g_74.s3, "p_961->g_74.s3", print_hash_value);
    transparent_crc(p_961->g_74.s4, "p_961->g_74.s4", print_hash_value);
    transparent_crc(p_961->g_74.s5, "p_961->g_74.s5", print_hash_value);
    transparent_crc(p_961->g_74.s6, "p_961->g_74.s6", print_hash_value);
    transparent_crc(p_961->g_74.s7, "p_961->g_74.s7", print_hash_value);
    transparent_crc(p_961->g_86, "p_961->g_86", print_hash_value);
    transparent_crc(p_961->g_109, "p_961->g_109", print_hash_value);
    transparent_crc(p_961->g_132.x, "p_961->g_132.x", print_hash_value);
    transparent_crc(p_961->g_132.y, "p_961->g_132.y", print_hash_value);
    transparent_crc(p_961->g_132.z, "p_961->g_132.z", print_hash_value);
    transparent_crc(p_961->g_132.w, "p_961->g_132.w", print_hash_value);
    transparent_crc(p_961->g_162, "p_961->g_162", print_hash_value);
    transparent_crc(p_961->g_165.f0, "p_961->g_165.f0", print_hash_value);
    transparent_crc(p_961->g_165.f1, "p_961->g_165.f1", print_hash_value);
    transparent_crc(p_961->g_165.f2, "p_961->g_165.f2", print_hash_value);
    transparent_crc(p_961->g_201, "p_961->g_201", print_hash_value);
    transparent_crc(p_961->g_206.f0, "p_961->g_206.f0", print_hash_value);
    transparent_crc(p_961->g_206.f1, "p_961->g_206.f1", print_hash_value);
    transparent_crc(p_961->g_206.f2, "p_961->g_206.f2", print_hash_value);
    transparent_crc(p_961->g_214.x, "p_961->g_214.x", print_hash_value);
    transparent_crc(p_961->g_214.y, "p_961->g_214.y", print_hash_value);
    transparent_crc(p_961->g_237, "p_961->g_237", print_hash_value);
    transparent_crc(p_961->g_257, "p_961->g_257", print_hash_value);
    transparent_crc(p_961->g_279.x, "p_961->g_279.x", print_hash_value);
    transparent_crc(p_961->g_279.y, "p_961->g_279.y", print_hash_value);
    transparent_crc(p_961->g_279.z, "p_961->g_279.z", print_hash_value);
    transparent_crc(p_961->g_279.w, "p_961->g_279.w", print_hash_value);
    transparent_crc(p_961->g_280.x, "p_961->g_280.x", print_hash_value);
    transparent_crc(p_961->g_280.y, "p_961->g_280.y", print_hash_value);
    transparent_crc(p_961->g_280.z, "p_961->g_280.z", print_hash_value);
    transparent_crc(p_961->g_280.w, "p_961->g_280.w", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_961->g_287[i].f0, "p_961->g_287[i].f0", print_hash_value);
        transparent_crc(p_961->g_287[i].f1, "p_961->g_287[i].f1", print_hash_value);
        transparent_crc(p_961->g_287[i].f2, "p_961->g_287[i].f2", print_hash_value);

    }
    transparent_crc(p_961->g_324.s0, "p_961->g_324.s0", print_hash_value);
    transparent_crc(p_961->g_324.s1, "p_961->g_324.s1", print_hash_value);
    transparent_crc(p_961->g_324.s2, "p_961->g_324.s2", print_hash_value);
    transparent_crc(p_961->g_324.s3, "p_961->g_324.s3", print_hash_value);
    transparent_crc(p_961->g_324.s4, "p_961->g_324.s4", print_hash_value);
    transparent_crc(p_961->g_324.s5, "p_961->g_324.s5", print_hash_value);
    transparent_crc(p_961->g_324.s6, "p_961->g_324.s6", print_hash_value);
    transparent_crc(p_961->g_324.s7, "p_961->g_324.s7", print_hash_value);
    transparent_crc(p_961->g_324.s8, "p_961->g_324.s8", print_hash_value);
    transparent_crc(p_961->g_324.s9, "p_961->g_324.s9", print_hash_value);
    transparent_crc(p_961->g_324.sa, "p_961->g_324.sa", print_hash_value);
    transparent_crc(p_961->g_324.sb, "p_961->g_324.sb", print_hash_value);
    transparent_crc(p_961->g_324.sc, "p_961->g_324.sc", print_hash_value);
    transparent_crc(p_961->g_324.sd, "p_961->g_324.sd", print_hash_value);
    transparent_crc(p_961->g_324.se, "p_961->g_324.se", print_hash_value);
    transparent_crc(p_961->g_324.sf, "p_961->g_324.sf", print_hash_value);
    transparent_crc(p_961->g_325.x, "p_961->g_325.x", print_hash_value);
    transparent_crc(p_961->g_325.y, "p_961->g_325.y", print_hash_value);
    transparent_crc(p_961->g_325.z, "p_961->g_325.z", print_hash_value);
    transparent_crc(p_961->g_325.w, "p_961->g_325.w", print_hash_value);
    transparent_crc(p_961->g_341.s0, "p_961->g_341.s0", print_hash_value);
    transparent_crc(p_961->g_341.s1, "p_961->g_341.s1", print_hash_value);
    transparent_crc(p_961->g_341.s2, "p_961->g_341.s2", print_hash_value);
    transparent_crc(p_961->g_341.s3, "p_961->g_341.s3", print_hash_value);
    transparent_crc(p_961->g_341.s4, "p_961->g_341.s4", print_hash_value);
    transparent_crc(p_961->g_341.s5, "p_961->g_341.s5", print_hash_value);
    transparent_crc(p_961->g_341.s6, "p_961->g_341.s6", print_hash_value);
    transparent_crc(p_961->g_341.s7, "p_961->g_341.s7", print_hash_value);
    transparent_crc(p_961->g_347, "p_961->g_347", print_hash_value);
    transparent_crc(p_961->g_351.x, "p_961->g_351.x", print_hash_value);
    transparent_crc(p_961->g_351.y, "p_961->g_351.y", print_hash_value);
    transparent_crc(p_961->g_351.z, "p_961->g_351.z", print_hash_value);
    transparent_crc(p_961->g_351.w, "p_961->g_351.w", print_hash_value);
    transparent_crc(p_961->g_382.s0, "p_961->g_382.s0", print_hash_value);
    transparent_crc(p_961->g_382.s1, "p_961->g_382.s1", print_hash_value);
    transparent_crc(p_961->g_382.s2, "p_961->g_382.s2", print_hash_value);
    transparent_crc(p_961->g_382.s3, "p_961->g_382.s3", print_hash_value);
    transparent_crc(p_961->g_382.s4, "p_961->g_382.s4", print_hash_value);
    transparent_crc(p_961->g_382.s5, "p_961->g_382.s5", print_hash_value);
    transparent_crc(p_961->g_382.s6, "p_961->g_382.s6", print_hash_value);
    transparent_crc(p_961->g_382.s7, "p_961->g_382.s7", print_hash_value);
    transparent_crc(p_961->g_417.x, "p_961->g_417.x", print_hash_value);
    transparent_crc(p_961->g_417.y, "p_961->g_417.y", print_hash_value);
    transparent_crc(p_961->g_482, "p_961->g_482", print_hash_value);
    transparent_crc(p_961->g_520.x, "p_961->g_520.x", print_hash_value);
    transparent_crc(p_961->g_520.y, "p_961->g_520.y", print_hash_value);
    transparent_crc(p_961->g_531.s0, "p_961->g_531.s0", print_hash_value);
    transparent_crc(p_961->g_531.s1, "p_961->g_531.s1", print_hash_value);
    transparent_crc(p_961->g_531.s2, "p_961->g_531.s2", print_hash_value);
    transparent_crc(p_961->g_531.s3, "p_961->g_531.s3", print_hash_value);
    transparent_crc(p_961->g_531.s4, "p_961->g_531.s4", print_hash_value);
    transparent_crc(p_961->g_531.s5, "p_961->g_531.s5", print_hash_value);
    transparent_crc(p_961->g_531.s6, "p_961->g_531.s6", print_hash_value);
    transparent_crc(p_961->g_531.s7, "p_961->g_531.s7", print_hash_value);
    transparent_crc(p_961->g_531.s8, "p_961->g_531.s8", print_hash_value);
    transparent_crc(p_961->g_531.s9, "p_961->g_531.s9", print_hash_value);
    transparent_crc(p_961->g_531.sa, "p_961->g_531.sa", print_hash_value);
    transparent_crc(p_961->g_531.sb, "p_961->g_531.sb", print_hash_value);
    transparent_crc(p_961->g_531.sc, "p_961->g_531.sc", print_hash_value);
    transparent_crc(p_961->g_531.sd, "p_961->g_531.sd", print_hash_value);
    transparent_crc(p_961->g_531.se, "p_961->g_531.se", print_hash_value);
    transparent_crc(p_961->g_531.sf, "p_961->g_531.sf", print_hash_value);
    transparent_crc(p_961->g_536, "p_961->g_536", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_961->g_592[i], "p_961->g_592[i]", print_hash_value);

    }
    transparent_crc(p_961->g_599.x, "p_961->g_599.x", print_hash_value);
    transparent_crc(p_961->g_599.y, "p_961->g_599.y", print_hash_value);
    transparent_crc(p_961->g_599.z, "p_961->g_599.z", print_hash_value);
    transparent_crc(p_961->g_599.w, "p_961->g_599.w", print_hash_value);
    transparent_crc(p_961->g_600.s0, "p_961->g_600.s0", print_hash_value);
    transparent_crc(p_961->g_600.s1, "p_961->g_600.s1", print_hash_value);
    transparent_crc(p_961->g_600.s2, "p_961->g_600.s2", print_hash_value);
    transparent_crc(p_961->g_600.s3, "p_961->g_600.s3", print_hash_value);
    transparent_crc(p_961->g_600.s4, "p_961->g_600.s4", print_hash_value);
    transparent_crc(p_961->g_600.s5, "p_961->g_600.s5", print_hash_value);
    transparent_crc(p_961->g_600.s6, "p_961->g_600.s6", print_hash_value);
    transparent_crc(p_961->g_600.s7, "p_961->g_600.s7", print_hash_value);
    transparent_crc(p_961->g_600.s8, "p_961->g_600.s8", print_hash_value);
    transparent_crc(p_961->g_600.s9, "p_961->g_600.s9", print_hash_value);
    transparent_crc(p_961->g_600.sa, "p_961->g_600.sa", print_hash_value);
    transparent_crc(p_961->g_600.sb, "p_961->g_600.sb", print_hash_value);
    transparent_crc(p_961->g_600.sc, "p_961->g_600.sc", print_hash_value);
    transparent_crc(p_961->g_600.sd, "p_961->g_600.sd", print_hash_value);
    transparent_crc(p_961->g_600.se, "p_961->g_600.se", print_hash_value);
    transparent_crc(p_961->g_600.sf, "p_961->g_600.sf", print_hash_value);
    transparent_crc(p_961->g_628.s0, "p_961->g_628.s0", print_hash_value);
    transparent_crc(p_961->g_628.s1, "p_961->g_628.s1", print_hash_value);
    transparent_crc(p_961->g_628.s2, "p_961->g_628.s2", print_hash_value);
    transparent_crc(p_961->g_628.s3, "p_961->g_628.s3", print_hash_value);
    transparent_crc(p_961->g_628.s4, "p_961->g_628.s4", print_hash_value);
    transparent_crc(p_961->g_628.s5, "p_961->g_628.s5", print_hash_value);
    transparent_crc(p_961->g_628.s6, "p_961->g_628.s6", print_hash_value);
    transparent_crc(p_961->g_628.s7, "p_961->g_628.s7", print_hash_value);
    transparent_crc(p_961->g_675, "p_961->g_675", print_hash_value);
    transparent_crc(p_961->g_686.x, "p_961->g_686.x", print_hash_value);
    transparent_crc(p_961->g_686.y, "p_961->g_686.y", print_hash_value);
    transparent_crc(p_961->g_686.z, "p_961->g_686.z", print_hash_value);
    transparent_crc(p_961->g_686.w, "p_961->g_686.w", print_hash_value);
    transparent_crc(p_961->g_729.s0, "p_961->g_729.s0", print_hash_value);
    transparent_crc(p_961->g_729.s1, "p_961->g_729.s1", print_hash_value);
    transparent_crc(p_961->g_729.s2, "p_961->g_729.s2", print_hash_value);
    transparent_crc(p_961->g_729.s3, "p_961->g_729.s3", print_hash_value);
    transparent_crc(p_961->g_729.s4, "p_961->g_729.s4", print_hash_value);
    transparent_crc(p_961->g_729.s5, "p_961->g_729.s5", print_hash_value);
    transparent_crc(p_961->g_729.s6, "p_961->g_729.s6", print_hash_value);
    transparent_crc(p_961->g_729.s7, "p_961->g_729.s7", print_hash_value);
    transparent_crc(p_961->g_729.s8, "p_961->g_729.s8", print_hash_value);
    transparent_crc(p_961->g_729.s9, "p_961->g_729.s9", print_hash_value);
    transparent_crc(p_961->g_729.sa, "p_961->g_729.sa", print_hash_value);
    transparent_crc(p_961->g_729.sb, "p_961->g_729.sb", print_hash_value);
    transparent_crc(p_961->g_729.sc, "p_961->g_729.sc", print_hash_value);
    transparent_crc(p_961->g_729.sd, "p_961->g_729.sd", print_hash_value);
    transparent_crc(p_961->g_729.se, "p_961->g_729.se", print_hash_value);
    transparent_crc(p_961->g_729.sf, "p_961->g_729.sf", print_hash_value);
    transparent_crc(p_961->g_750, "p_961->g_750", print_hash_value);
    transparent_crc(p_961->g_806.x, "p_961->g_806.x", print_hash_value);
    transparent_crc(p_961->g_806.y, "p_961->g_806.y", print_hash_value);
    transparent_crc(p_961->g_806.z, "p_961->g_806.z", print_hash_value);
    transparent_crc(p_961->g_806.w, "p_961->g_806.w", print_hash_value);
    transparent_crc(p_961->g_821.s0, "p_961->g_821.s0", print_hash_value);
    transparent_crc(p_961->g_821.s1, "p_961->g_821.s1", print_hash_value);
    transparent_crc(p_961->g_821.s2, "p_961->g_821.s2", print_hash_value);
    transparent_crc(p_961->g_821.s3, "p_961->g_821.s3", print_hash_value);
    transparent_crc(p_961->g_821.s4, "p_961->g_821.s4", print_hash_value);
    transparent_crc(p_961->g_821.s5, "p_961->g_821.s5", print_hash_value);
    transparent_crc(p_961->g_821.s6, "p_961->g_821.s6", print_hash_value);
    transparent_crc(p_961->g_821.s7, "p_961->g_821.s7", print_hash_value);
    transparent_crc(p_961->g_831.s0, "p_961->g_831.s0", print_hash_value);
    transparent_crc(p_961->g_831.s1, "p_961->g_831.s1", print_hash_value);
    transparent_crc(p_961->g_831.s2, "p_961->g_831.s2", print_hash_value);
    transparent_crc(p_961->g_831.s3, "p_961->g_831.s3", print_hash_value);
    transparent_crc(p_961->g_831.s4, "p_961->g_831.s4", print_hash_value);
    transparent_crc(p_961->g_831.s5, "p_961->g_831.s5", print_hash_value);
    transparent_crc(p_961->g_831.s6, "p_961->g_831.s6", print_hash_value);
    transparent_crc(p_961->g_831.s7, "p_961->g_831.s7", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_961->g_847[i], "p_961->g_847[i]", print_hash_value);

    }
    transparent_crc(p_961->g_850.x, "p_961->g_850.x", print_hash_value);
    transparent_crc(p_961->g_850.y, "p_961->g_850.y", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_961->g_866[i], "p_961->g_866[i]", print_hash_value);

    }
    transparent_crc(p_961->g_879.s0, "p_961->g_879.s0", print_hash_value);
    transparent_crc(p_961->g_879.s1, "p_961->g_879.s1", print_hash_value);
    transparent_crc(p_961->g_879.s2, "p_961->g_879.s2", print_hash_value);
    transparent_crc(p_961->g_879.s3, "p_961->g_879.s3", print_hash_value);
    transparent_crc(p_961->g_879.s4, "p_961->g_879.s4", print_hash_value);
    transparent_crc(p_961->g_879.s5, "p_961->g_879.s5", print_hash_value);
    transparent_crc(p_961->g_879.s6, "p_961->g_879.s6", print_hash_value);
    transparent_crc(p_961->g_879.s7, "p_961->g_879.s7", print_hash_value);
    transparent_crc(p_961->g_903.x, "p_961->g_903.x", print_hash_value);
    transparent_crc(p_961->g_903.y, "p_961->g_903.y", print_hash_value);
    transparent_crc(p_961->g_903.z, "p_961->g_903.z", print_hash_value);
    transparent_crc(p_961->g_903.w, "p_961->g_903.w", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
