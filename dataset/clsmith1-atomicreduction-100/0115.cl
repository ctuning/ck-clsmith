// ---atomic_reductions ---fake_divergence -g 42,11,7 -l 2,1,1
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


// Seed: 115

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int8_t  f0;
};

union U1 {
   volatile int8_t * f0;
   volatile int32_t  f1;
};

union U2 {
   uint64_t  f0;
   int32_t  f1;
   uint8_t  f2;
   int16_t  f3;
};

struct S3 {
    int32_t g_4;
    volatile uint64_t g_6;
    int8_t g_43;
    int32_t *g_45;
    int32_t **g_44;
    int8_t g_52;
    int32_t g_78;
    uint8_t g_90;
    int8_t *g_107;
    int8_t * volatile *g_106;
    uint32_t g_154[8][10][3];
    int64_t g_169;
    uint16_t g_184;
    struct S0 g_187;
    int16_t g_211;
    int64_t g_218;
    uint16_t g_219;
    uint64_t g_238;
    int64_t *g_243;
    uint8_t g_257[2];
    union U2 g_300;
    uint32_t g_310;
    volatile int16_t g_323;
    volatile int16_t *g_322;
    volatile int16_t **g_321;
    int64_t g_334;
    uint64_t g_346[1][10];
    struct S0 g_396;
    uint16_t g_410;
    int16_t g_467[8][4];
    volatile int64_t g_482;
    volatile int64_t *g_481;
    volatile int64_t **g_480[1];
    volatile int64_t ***g_479;
    uint16_t g_532;
    uint32_t g_576;
    union U2 **g_585;
    int32_t g_586[1];
    uint8_t g_638[4][1];
    uint64_t g_651;
    uint64_t g_657;
    uint16_t *g_670;
    uint16_t **g_669;
    uint32_t g_687;
    union U1 g_700;
    union U1 g_703[2];
    struct S0 *g_705;
    int64_t g_753;
    int64_t g_797;
    union U1 g_827;
    union U1 g_828;
    union U1 g_829;
    union U1 g_830;
    union U1 g_831;
    union U1 g_832;
    union U1 g_833[1][3];
    union U1 g_834;
    union U1 g_837;
    union U1 g_841[10];
    union U1 g_842;
    union U1 g_843;
    union U1 g_844;
    union U1 g_845[4][3][8];
    union U1 g_846;
    union U1 g_847;
    union U1 g_848;
    union U1 g_849;
    union U1 g_850;
    union U1 g_851;
    union U1 g_852;
    uint32_t g_862;
    uint32_t g_863[7][7][2];
    int64_t **g_916;
    int64_t ***g_915;
    int32_t g_942;
    uint8_t g_975;
    int16_t g_991;
    uint64_t g_992;
    uint32_t g_1055;
    union U2 g_1098;
    uint32_t g_1099;
    uint8_t g_1138;
    uint64_t g_1143;
    uint8_t *g_1201;
    uint8_t **g_1200[6];
    uint8_t ***g_1199;
    int8_t g_1255;
    uint32_t g_1256[3];
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
int32_t  func_1(struct S3 * p_1257);
int32_t  func_9(uint8_t  p_10, uint32_t  p_11, int32_t * p_12, int32_t  p_13, struct S3 * p_1257);
int64_t  func_20(int32_t * p_21, int32_t  p_22, struct S3 * p_1257);
int32_t * func_24(uint32_t  p_25, int16_t  p_26, int32_t  p_27, int8_t  p_28, int32_t * p_29, struct S3 * p_1257);
int8_t  func_36(int8_t * p_37, int32_t ** p_38, uint64_t  p_39, int32_t ** p_40, uint32_t  p_41, struct S3 * p_1257);
int32_t * func_53(uint32_t  p_54, struct S3 * p_1257);
int32_t  func_57(uint8_t  p_58, int8_t * p_59, uint8_t  p_60, int64_t  p_61, struct S3 * p_1257);
uint8_t  func_62(int16_t  p_63, int8_t  p_64, int32_t  p_65, uint16_t  p_66, struct S3 * p_1257);
struct S0  func_71(int32_t  p_72, int32_t * p_73, int32_t ** p_74, union U2  p_75, struct S3 * p_1257);
union U2  func_79(int8_t * p_80, uint32_t  p_81, uint32_t  p_82, int16_t  p_83, struct S3 * p_1257);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1257->g_6 p_1257->g_4 p_1257->g_44 p_1257->g_43 p_1257->g_52 p_1257->g_45 p_1257->g_106 p_1257->g_90 p_1257->g_107 p_1257->g_154 p_1257->g_169 p_1257->g_78 p_1257->g_184 p_1257->g_187 p_1257->g_532 p_1257->g_257 p_1257->g_346 p_1257->g_310 p_1257->g_396.f0 p_1257->g_211 p_1257->g_638 p_1257->g_586 p_1257->g_467 p_1257->g_651 p_1257->g_657 p_1257->g_321 p_1257->g_322 p_1257->g_669 p_1257->g_687 p_1257->g_670 p_1257->g_410 p_1257->g_300.f1 p_1257->g_797 p_1257->g_585 p_1257->g_863 p_1257->g_753 p_1257->g_218 p_1257->g_942 p_1257->g_975 p_1257->g_992 p_1257->g_219 p_1257->g_238 p_1257->g_576 p_1257->g_862 p_1257->g_1055 p_1257->g_396 p_1257->g_991 p_1257->g_300.f3 p_1257->g_1099 p_1257->g_334 p_1257->g_1138 p_1257->g_1143 p_1257->g_1199 p_1257->g_1201 p_1257->g_1255 p_1257->g_1256
 * writes: p_1257->g_6 p_1257->g_52 p_1257->g_78 p_1257->g_43 p_1257->g_90 p_1257->g_45 p_1257->g_154 p_1257->g_169 p_1257->g_184 p_1257->g_532 p_1257->g_467 p_1257->g_300.f3 p_1257->g_211 p_1257->g_638 p_1257->g_334 p_1257->g_576 p_1257->g_651 p_1257->g_657 p_1257->g_669 p_1257->g_187 p_1257->g_687 p_1257->g_705 p_1257->g_410 p_1257->g_300.f1 p_1257->g_585 p_1257->g_862 p_1257->g_915 p_1257->g_942 p_1257->g_257 p_1257->g_238 p_1257->g_797 p_1257->g_992 p_1257->g_1055 p_1257->g_396 p_1257->g_219 p_1257->g_1099 p_1257->g_1138 p_1257->g_1143 p_1257->g_586 p_1257->g_1199 p_1257->g_1255 p_1257->g_300.f2 p_1257->g_833 p_1257->g_1256
 */
int32_t  func_1(struct S3 * p_1257)
{ /* block id: 4 */
    int32_t *l_2 = (void*)0;
    int32_t *l_3 = &p_1257->g_4;
    int32_t *l_5[2][1];
    int32_t **l_23 = &l_2;
    int8_t *l_1254 = &p_1257->g_1255;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_5[i][j] = &p_1257->g_4;
    }
    ++p_1257->g_6;
    p_1257->g_1256[0] |= (!func_9(p_1257->g_4, p_1257->g_6, ((((0UL == 4294967295UL) || (safe_div_func_int16_t_s_s(p_1257->g_4, (safe_sub_func_int64_t_s_s((safe_div_func_int32_t_s_s((func_20(((*l_23) = (void*)0), p_1257->g_4, p_1257) || FAKE_DIVERGE(p_1257->local_2_offset, get_local_id(2), 10)), (safe_rshift_func_int8_t_s_u(((*l_1254) &= (p_1257->g_346[0][0] , 0x26L)), (*l_3))))), 0UL))))) >= (*l_3)) , (void*)0), p_1257->g_346[0][8], p_1257));
    return p_1257->g_992;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1257->g_862 p_1257->g_300.f2 p_1257->g_833
 */
int32_t  func_9(uint8_t  p_10, uint32_t  p_11, int32_t * p_12, int32_t  p_13, struct S3 * p_1257)
{ /* block id: 641 */
    for (p_1257->g_862 = 0; p_1257->g_862 < 1; p_1257->g_862 += 1)
    {
        for (p_1257->g_300.f2 = 0; p_1257->g_300.f2 < 3; p_1257->g_300.f2 += 1)
        {
            union U1 tmp = {{0}};
            p_1257->g_833[p_1257->g_862][p_1257->g_300.f2] = tmp;
        }
    }
    return p_11;
}


/* ------------------------------------------ */
/* 
 * reads : p_1257->g_4 p_1257->g_44 p_1257->g_43 p_1257->g_52 p_1257->g_45 p_1257->g_106 p_1257->g_90 p_1257->g_107 p_1257->g_154 p_1257->g_169 p_1257->g_78 p_1257->g_184 p_1257->g_187 p_1257->g_532 p_1257->g_257 p_1257->g_346 p_1257->g_310 p_1257->g_396.f0 p_1257->g_211 p_1257->g_638 p_1257->g_586 p_1257->g_467 p_1257->g_651 p_1257->g_657 p_1257->g_321 p_1257->g_322 p_1257->g_669 p_1257->g_687 p_1257->g_670 p_1257->g_410 p_1257->g_300.f1 p_1257->g_797 p_1257->g_585 p_1257->g_863 p_1257->g_753 p_1257->g_218 p_1257->g_942 p_1257->g_975 p_1257->g_992 p_1257->g_219 p_1257->g_238 p_1257->g_576 p_1257->g_862 p_1257->g_1055 p_1257->g_396 p_1257->g_991 p_1257->g_300.f3 p_1257->g_1099 p_1257->g_334 p_1257->g_1138 p_1257->g_1143 p_1257->g_1199 p_1257->g_1201
 * writes: p_1257->g_52 p_1257->g_78 p_1257->g_43 p_1257->g_90 p_1257->g_45 p_1257->g_154 p_1257->g_169 p_1257->g_184 p_1257->g_532 p_1257->g_467 p_1257->g_300.f3 p_1257->g_211 p_1257->g_638 p_1257->g_334 p_1257->g_576 p_1257->g_651 p_1257->g_657 p_1257->g_669 p_1257->g_187 p_1257->g_687 p_1257->g_705 p_1257->g_410 p_1257->g_300.f1 p_1257->g_585 p_1257->g_862 p_1257->g_915 p_1257->g_942 p_1257->g_257 p_1257->g_238 p_1257->g_797 p_1257->g_992 p_1257->g_1055 p_1257->g_396 p_1257->g_219 p_1257->g_1099 p_1257->g_1138 p_1257->g_1143 p_1257->g_586 p_1257->g_1199
 */
int64_t  func_20(int32_t * p_21, int32_t  p_22, struct S3 * p_1257)
{ /* block id: 7 */
    int8_t *l_42 = &p_1257->g_43;
    int32_t l_46 = 0L;
    int8_t *l_51 = &p_1257->g_52;
    uint32_t l_860 = 4294967290UL;
    uint32_t *l_861 = &p_1257->g_862;
    struct S0 l_895 = {0x1FL};
    int64_t **l_904 = &p_1257->g_243;
    int64_t *l_905 = (void*)0;
    int64_t *l_907 = (void*)0;
    int64_t **l_906 = &l_907;
    int8_t l_919[3];
    int64_t **l_920[7][5][7] = {{{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0}},{{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0}},{{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0}},{{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0}},{{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0}},{{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0}},{{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0},{&l_907,&l_905,(void*)0,&l_905,(void*)0,(void*)0,(void*)0}}};
    int16_t *l_936[1][3];
    int16_t **l_935 = &l_936[0][1];
    uint8_t *l_956 = &p_1257->g_257[1];
    uint64_t *l_961 = &p_1257->g_238;
    uint8_t l_962[6][5][8] = {{{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL}},{{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL}},{{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL}},{{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL}},{{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL}},{{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL},{0UL,255UL,0x2FL,0x04L,0xD6L,0xD6L,0x04L,0x2FL}}};
    int32_t l_1134 = (-1L);
    int32_t *l_1141[2][8] = {{&l_46,&p_1257->g_942,&l_46,&l_46,&p_1257->g_942,&l_46,&l_46,&p_1257->g_942},{&l_46,&p_1257->g_942,&l_46,&l_46,&p_1257->g_942,&l_46,&l_46,&p_1257->g_942}};
    uint8_t l_1251 = 0x83L;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_919[i] = 8L;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_936[i][j] = &p_1257->g_467[1][2];
    }
    (*p_1257->g_44) = func_24(((*l_861) = (safe_div_func_uint8_t_u_u(0x65L, (safe_lshift_func_int8_t_s_s((safe_mul_func_int8_t_s_s(p_1257->g_4, func_36(l_42, p_1257->g_44, l_46, &p_1257->g_45, ((safe_div_func_int64_t_s_s((safe_mod_func_int8_t_s_s(p_22, ((p_1257->g_4 != ((*l_51) |= p_1257->g_43)) && l_46))), p_1257->g_4)) && p_1257->g_52), p_1257))), l_860))))), l_46, p_1257->g_863[1][0][0], p_22, p_21, p_1257);
    (*p_1257->g_44) = p_21;
lbl_943:
    if ((safe_sub_func_int32_t_s_s(((p_1257->g_169 , l_46) >= (safe_mul_func_uint8_t_u_u((l_895 , (safe_lshift_func_int8_t_s_u(((*l_42) = (((safe_rshift_func_int16_t_s_u((1UL != (safe_mod_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_u((((!(l_895 , (((void*)0 != l_904) > (l_905 == ((*l_906) = l_905))))) , p_22) < l_46), l_860)) ^ 0x41E13F906557BAB0L), (*p_1257->g_670)))), 9)) > p_22) || l_895.f0)), l_46))), p_22))), l_860)))
    { /* block id: 457 */
        int64_t l_908 = 0x58515245D94B0BFDL;
        int64_t ***l_914 = &l_904;
        int64_t ****l_913[5];
        uint32_t *l_918 = &p_1257->g_154[2][0][2];
        uint32_t **l_917 = &l_918;
        int64_t ***l_921 = &l_920[5][4][1];
        int64_t **l_922 = &l_905;
        int i;
        for (i = 0; i < 5; i++)
            l_913[i] = &l_914;
        (*p_1257->g_44) = func_24(p_1257->g_187.f0, l_895.f0, (((p_22 | (l_908 ^ (+((safe_mul_func_uint16_t_u_u(((safe_mod_func_uint64_t_u_u(((1UL > (((*l_921) = (((((&l_904 != (p_1257->g_915 = &l_904)) <= ((((*l_917) = func_24((p_1257->g_78 | ((**p_1257->g_669) <= 0x2F00L)), p_22, p_1257->g_218, l_860, p_21, p_1257)) == p_21) & l_860)) > l_919[0]) != GROUP_DIVERGE(1, 1)) , l_920[0][1][1])) != l_922)) || 0x3BF6L), l_908)) , p_22), p_22)) , 0x328086330A4DA924L)))) < l_895.f0) || 1L), l_908, &l_46, p_1257);
    }
    else
    { /* block id: 462 */
        uint32_t l_923[2][1][9] = {{{0x883C4ED8L,0x1D1FF977L,0x1D1FF977L,0x883C4ED8L,0x883C4ED8L,0x1D1FF977L,0x1D1FF977L,0x883C4ED8L,0x883C4ED8L}},{{0x883C4ED8L,0x1D1FF977L,0x1D1FF977L,0x883C4ED8L,0x883C4ED8L,0x1D1FF977L,0x1D1FF977L,0x883C4ED8L,0x883C4ED8L}}};
        int16_t *l_930[7] = {&p_1257->g_211,&p_1257->g_211,&p_1257->g_211,&p_1257->g_211,&p_1257->g_211,&p_1257->g_211,&p_1257->g_211};
        int16_t ***l_937 = &l_935;
        int64_t ***l_940 = &l_920[0][1][1];
        int32_t *l_941 = &p_1257->g_78;
        int i, j, k;
        --l_923[1][0][2];
        if (p_1257->g_687)
            goto lbl_943;
        p_1257->g_942 = (((*l_941) = (safe_mod_func_uint32_t_u_u(((p_22 || ((safe_mul_func_int16_t_s_s((l_46 = (l_919[0] != GROUP_DIVERGE(0, 1))), ((*p_1257->g_670) ^ ((((safe_mod_func_uint8_t_u_u(FAKE_DIVERGE(p_1257->local_0_offset, get_local_id(0), 10), (safe_mod_func_int64_t_s_s(l_923[1][0][6], 18446744073709551611UL)))) , (((*l_937) = l_935) != ((p_1257->g_346[0][6] || (((((safe_rshift_func_uint8_t_u_u(0xE2L, p_22)) , l_919[2]) , l_940) == (void*)0) & FAKE_DIVERGE(p_1257->local_2_offset, get_local_id(2), 10))) , &l_936[0][1]))) , (-1L)) != 18446744073709551615UL)))) | 0x1BL)) ^ p_1257->g_154[2][0][2]), 3L))) == 0x778CA757L);
    }
    if ((l_962[2][1][0] = (safe_sub_func_int8_t_s_s((p_1257->g_942 , (safe_add_func_uint16_t_u_u((0xAFL <= (p_22 <= 65535UL)), (((safe_div_func_int8_t_s_s((-6L), (safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s((((((*l_961) = (safe_mul_func_uint8_t_u_u((((*l_956) ^= l_860) , (l_46 = p_22)), (((safe_mod_func_uint32_t_u_u((safe_sub_func_uint16_t_u_u((**p_1257->g_669), p_22)), 1L)) & l_860) < 0x5F95549F3E19CF52L)))) < FAKE_DIVERGE(p_1257->global_0_offset, get_global_id(0), 10)) > l_919[2]) , 1L), l_919[0])), p_22)))) & (-1L)) <= l_919[0])))), 0x1BL))))
    { /* block id: 474 */
        int16_t l_965 = 0x6797L;
        for (p_1257->g_184 = (-9); (p_1257->g_184 >= 1); p_1257->g_184 = safe_add_func_int8_t_s_s(p_1257->g_184, 4))
        { /* block id: 477 */
            if (l_965)
                break;
            return l_860;
        }
    }
    else
    { /* block id: 481 */
        int16_t l_974 = 0x3692L;
        int32_t *l_976 = &l_46;
        int64_t l_979[6][10][4] = {{{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL}},{{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL}},{{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL}},{{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL}},{{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL}},{{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL},{1L,(-1L),(-3L),0x1F8AD82C4BC0A6FEL}}};
        int64_t *l_1049 = &l_979[0][4][0];
        uint64_t *l_1050 = &p_1257->g_346[0][6];
        int64_t l_1090 = 0x53989179E9C5270EL;
        union U2 *l_1097 = &p_1257->g_1098;
        int32_t l_1142 = 0x77C84633L;
        int8_t l_1165 = 0x05L;
        int32_t l_1205[2][10] = {{0L,0L,0x097362F8L,(-1L),4L,(-1L),0x097362F8L,0L,0L,0x097362F8L},{0L,0L,0x097362F8L,(-1L),4L,(-1L),0x097362F8L,0L,0L,0x097362F8L}};
        int16_t ***l_1210 = &l_935;
        int16_t l_1250 = 0x3A7AL;
        int i, j, k;
lbl_995:
        l_976 = func_24(p_1257->g_586[0], (safe_sub_func_int16_t_s_s(((safe_sub_func_int16_t_s_s((safe_mod_func_int64_t_s_s(p_22, (((l_860 < p_1257->g_410) != ((((safe_rshift_func_int16_t_s_u((l_974 >= (*p_1257->g_670)), ((((l_974 <= (0xAAF95571FA3537F2L >= ((&p_1257->g_218 == (void*)0) != p_1257->g_257[1]))) | p_1257->g_154[2][0][2]) < l_974) < 1L))) ^ p_22) < p_22) <= 1UL)) | l_860))), p_1257->g_975)) || p_1257->g_863[1][0][0]), p_22)), l_974, (**p_1257->g_106), (*p_1257->g_44), p_1257);
        for (p_1257->g_43 = 0; (p_1257->g_43 > 9); ++p_1257->g_43)
        { /* block id: 485 */
            uint64_t l_1006 = 0x464ED5D11672015FL;
            int32_t l_1036[4] = {9L,9L,9L,9L};
            int64_t *l_1047[1];
            uint32_t l_1060 = 1UL;
            int32_t **l_1061 = &p_1257->g_45;
            struct S0 l_1133 = {5L};
            uint32_t l_1167[2];
            int i;
            for (i = 0; i < 1; i++)
                l_1047[i] = &p_1257->g_797;
            for (i = 0; i < 2; i++)
                l_1167[i] = 0xDBC958A2L;
            if (l_979[0][4][0])
            { /* block id: 486 */
                uint32_t l_982[8][5] = {{0x00C7F773L,1UL,0xE8D71A16L,0x6102A383L,0x879931BCL},{0x00C7F773L,1UL,0xE8D71A16L,0x6102A383L,0x879931BCL},{0x00C7F773L,1UL,0xE8D71A16L,0x6102A383L,0x879931BCL},{0x00C7F773L,1UL,0xE8D71A16L,0x6102A383L,0x879931BCL},{0x00C7F773L,1UL,0xE8D71A16L,0x6102A383L,0x879931BCL},{0x00C7F773L,1UL,0xE8D71A16L,0x6102A383L,0x879931BCL},{0x00C7F773L,1UL,0xE8D71A16L,0x6102A383L,0x879931BCL},{0x00C7F773L,1UL,0xE8D71A16L,0x6102A383L,0x879931BCL}};
                int32_t *l_983 = &p_1257->g_78;
                uint8_t *l_1016 = &p_1257->g_638[3][0];
                int32_t l_1035 = 0L;
                int64_t *l_1048 = &p_1257->g_334;
                int i, j;
                for (p_1257->g_862 = (-2); (p_1257->g_862 >= 26); p_1257->g_862++)
                { /* block id: 489 */
                    int8_t l_990 = (-10L);
                    for (p_1257->g_797 = 0; (p_1257->g_797 >= 0); p_1257->g_797 -= 1)
                    { /* block id: 492 */
                        l_982[7][3] |= 1L;
                        p_21 = l_983;
                    }
                    for (p_1257->g_651 = 0; (p_1257->g_651 >= 25); p_1257->g_651 = safe_add_func_uint8_t_u_u(p_1257->g_651, 4))
                    { /* block id: 498 */
                        int32_t *l_986 = &p_1257->g_78;
                        int32_t *l_987 = &p_1257->g_942;
                        int32_t *l_988 = (void*)0;
                        int32_t *l_989[4][9] = {{&l_46,&l_46,&p_1257->g_78,(void*)0,(void*)0,(void*)0,&p_1257->g_78,&l_46,&l_46},{&l_46,&l_46,&p_1257->g_78,(void*)0,(void*)0,(void*)0,&p_1257->g_78,&l_46,&l_46},{&l_46,&l_46,&p_1257->g_78,(void*)0,(void*)0,(void*)0,&p_1257->g_78,&l_46,&l_46},{&l_46,&l_46,&p_1257->g_78,(void*)0,(void*)0,(void*)0,&p_1257->g_78,&l_46,&l_46}};
                        int i, j;
                        (*p_1257->g_44) = p_21;
                        --p_1257->g_992;
                        if (p_1257->g_942)
                            goto lbl_995;
                        l_1006 |= ((*l_987) = ((safe_add_func_uint16_t_u_u((p_22 , ((safe_rshift_func_uint8_t_u_s(((((-8L) ^ 254UL) , (safe_div_func_uint8_t_u_u((safe_add_func_uint16_t_u_u(((GROUP_DIVERGE(0, 1) && p_1257->g_219) > (**p_1257->g_669)), p_1257->g_467[0][2])), (l_962[2][1][0] | GROUP_DIVERGE(0, 1))))) > (p_22 ^ (safe_mod_func_int64_t_s_s(((*l_983) = 0x18786DBC4EA361A7L), 1L)))), l_990)) > p_22)), 65535UL)) , l_919[0]));
                    }
                    (*l_983) ^= p_22;
                }
                for (p_1257->g_651 = 11; (p_1257->g_651 != 16); p_1257->g_651 = safe_add_func_uint16_t_u_u(p_1257->g_651, 4))
                { /* block id: 510 */
                    uint8_t l_1033 = 0xBAL;
                    if ((safe_unary_minus_func_uint64_t_u(2UL)))
                    { /* block id: 511 */
                        uint8_t **l_1017 = &l_956;
                        int32_t l_1030 = 0x3C8CDAAAL;
                        (*p_1257->g_44) = (*p_1257->g_44);
                        (*l_983) |= (((safe_mod_func_uint64_t_u_u(0x249C514640FF3D13L, 0x2BDD6B1A9F7704EEL)) == (safe_sub_func_int8_t_s_s(((void*)0 != &p_1257->g_321), ((GROUP_DIVERGE(1, 1) & (((safe_lshift_func_uint8_t_u_u(((((*l_1017) = l_1016) == &p_1257->g_257[1]) | (p_1257->g_154[1][6][1] = ((((((*l_51) = ((safe_rshift_func_int8_t_s_s(((safe_add_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s((safe_rshift_func_int8_t_s_u((+(safe_add_func_uint8_t_u_u((((p_1257->g_184 > (p_1257->g_942 > (((0x2150L || p_22) | 0x390CD9E6L) != l_962[2][1][0]))) < p_22) || 8L), 0L))), p_1257->g_687)), p_1257->g_238)), p_1257->g_238)) , l_919[0]), 7)) > p_1257->g_576)) & 0x58L) == p_22) , l_1030) | 1UL))), 2)) != 0xD4L) != p_22)) == 0x6B895966FAA12929L)))) && 6L);
                        (*l_983) = (safe_mul_func_uint16_t_u_u(p_22, ((l_1033 ^= l_1030) && l_1033)));
                        (*p_1257->g_44) = (*p_1257->g_44);
                    }
                    else
                    { /* block id: 520 */
                        uint32_t *l_1034[5] = {&p_1257->g_310,&p_1257->g_310,&p_1257->g_310,&p_1257->g_310,&p_1257->g_310};
                        int i;
                        (*l_983) = (18446744073709551615UL < ((l_1036[2] = (l_1035 = l_1033)) | ((safe_add_func_uint64_t_u_u(((safe_add_func_int16_t_s_s((p_1257->g_346[0][3] < p_22), ((((*p_1257->g_670) && FAKE_DIVERGE(p_1257->global_1_offset, get_global_id(1), 10)) && p_1257->g_863[1][0][0]) == (safe_add_func_int16_t_s_s((l_1033 , (safe_mod_func_uint32_t_u_u(((l_962[4][3][7] >= ((p_1257->g_862 != p_1257->g_52) <= 0x07EA3341CBA63090L)) ^ p_22), 0x0B952743L))), l_1033))))) || p_22), p_1257->g_467[1][3])) , p_1257->g_310)));
                    }
                    (*p_1257->g_44) = (*p_1257->g_44);
                }
                if ((safe_mul_func_int16_t_s_s(((l_1049 = (l_1048 = l_1047[0])) == (void*)0), ((void*)0 != l_1050))))
                { /* block id: 529 */
                    if (l_1006)
                        break;
                }
                else
                { /* block id: 531 */
                    int32_t l_1051 = 0L;
                    if (l_1051)
                        break;
                    if (l_1051)
                    { /* block id: 533 */
                        int32_t *l_1052 = &l_1036[3];
                        int32_t *l_1053 = &p_1257->g_942;
                        int32_t *l_1054[10] = {&l_1036[2],&l_1036[2],&l_1036[2],&l_1036[2],&l_1036[2],&l_1036[2],&l_1036[2],&l_1036[2],&l_1036[2],&l_1036[2]};
                        struct S0 *l_1058 = (void*)0;
                        struct S0 *l_1059 = &p_1257->g_396;
                        int i;
                        p_1257->g_1055++;
                        p_21 = p_21;
                        if ((*l_983))
                            continue;
                        (*l_1059) = l_895;
                    }
                    else
                    { /* block id: 538 */
                        union U2 l_1062 = {18446744073709551615UL};
                        struct S0 l_1063 = {0x1CL};
                        if (l_1060)
                            break;
                        l_1063 = p_1257->g_396;
                    }
                }
            }
            else
            { /* block id: 544 */
                int64_t l_1080 = (-9L);
                int32_t *l_1091 = &l_1036[2];
                for (p_1257->g_219 = 0; (p_1257->g_219 <= 39); p_1257->g_219++)
                { /* block id: 547 */
                    int8_t l_1087 = 5L;
                    for (p_1257->g_52 = 26; (p_1257->g_52 > 10); p_1257->g_52--)
                    { /* block id: 550 */
                        if (l_962[5][2][5])
                            break;
                    }
                    l_46 = (((((!p_1257->g_651) ^ (4294967295UL <= 0x2C505F47L)) < (safe_rshift_func_uint8_t_u_s((((**p_1257->g_669)--) != (p_1257->g_991 <= (safe_mul_func_int16_t_s_s(((safe_rshift_func_int8_t_s_s((-1L), (FAKE_DIVERGE(p_1257->local_1_offset, get_local_id(1), 10) && (((safe_mod_func_int64_t_s_s(l_1080, (safe_sub_func_int8_t_s_s(((+p_22) <= (safe_rshift_func_uint8_t_u_u(255UL, (safe_lshift_func_uint8_t_u_s(l_1087, 2))))), l_46)))) == 0xD1L) != 1L)))) | p_22), 6UL)))), 7))) ^ 0L) & p_22);
                    for (l_1080 = (-22); (l_1080 <= 2); l_1080 = safe_add_func_uint64_t_u_u(l_1080, 1))
                    { /* block id: 557 */
                        return l_1090;
                    }
                }
                if (p_22)
                    goto lbl_995;
                (*l_1091) ^= 0x3421B250L;
            }
            if (p_22)
                continue;
            for (p_1257->g_300.f3 = 0; (p_1257->g_300.f3 <= 1); p_1257->g_300.f3 += 1)
            { /* block id: 567 */
                union U2 *l_1096 = &p_1257->g_300;
                int32_t l_1164 = (-1L);
                uint16_t l_1166 = 65530UL;
                if (p_1257->g_396.f0)
                { /* block id: 568 */
                    int16_t l_1092[3][3][8] = {{{0x0D71L,0x00EAL,0x00EAL,0x0D71L,0x2A4FL,0x3F87L,0x3F87L,0x2A4FL},{0x0D71L,0x00EAL,0x00EAL,0x0D71L,0x2A4FL,0x3F87L,0x3F87L,0x2A4FL},{0x0D71L,0x00EAL,0x00EAL,0x0D71L,0x2A4FL,0x3F87L,0x3F87L,0x2A4FL}},{{0x0D71L,0x00EAL,0x00EAL,0x0D71L,0x2A4FL,0x3F87L,0x3F87L,0x2A4FL},{0x0D71L,0x00EAL,0x00EAL,0x0D71L,0x2A4FL,0x3F87L,0x3F87L,0x2A4FL},{0x0D71L,0x00EAL,0x00EAL,0x0D71L,0x2A4FL,0x3F87L,0x3F87L,0x2A4FL}},{{0x0D71L,0x00EAL,0x00EAL,0x0D71L,0x2A4FL,0x3F87L,0x3F87L,0x2A4FL},{0x0D71L,0x00EAL,0x00EAL,0x0D71L,0x2A4FL,0x3F87L,0x3F87L,0x2A4FL},{0x0D71L,0x00EAL,0x00EAL,0x0D71L,0x2A4FL,0x3F87L,0x3F87L,0x2A4FL}}};
                    union U2 *l_1095 = &p_1257->g_300;
                    int i, j, k;
                    if (l_1092[2][1][6])
                        break;
                    for (p_1257->g_78 = 0; (p_1257->g_78 <= 2); p_1257->g_78 += 1)
                    { /* block id: 572 */
                        int i, j, k;
                        p_1257->g_1099 ^= (safe_lshift_func_int16_t_s_u((+p_1257->g_863[(p_1257->g_78 + 1)][(p_1257->g_78 + 1)][p_1257->g_300.f3]), (l_1095 == (l_1097 = l_1096))));
                        if (p_1257->g_863[(p_1257->g_78 + 4)][(p_1257->g_300.f3 + 1)][p_1257->g_300.f3])
                            continue;
                    }
                }
                else
                { /* block id: 577 */
                    int32_t l_1132 = 0x44B9C05FL;
                    uint32_t *l_1135[8][7][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
                    int16_t *l_1136[1][8] = {{&p_1257->g_991,&p_1257->g_211,&p_1257->g_991,&p_1257->g_991,&p_1257->g_211,&p_1257->g_991,&p_1257->g_991,&p_1257->g_211}};
                    int i, j, k;
                    if ((p_22 >= (((((**p_1257->g_106) > (*p_1257->g_107)) < ((((safe_lshift_func_uint8_t_u_u(((*l_956) = (safe_sub_func_uint32_t_u_u((p_1257->g_1055 = (p_1257->g_154[2][0][2] = (((safe_add_func_int32_t_s_s(((((safe_lshift_func_uint16_t_u_s(((safe_mul_func_uint16_t_u_u((0x393BD2DDL >= (0x1B09E0B65803841DL < ((safe_add_func_uint8_t_u_u((((safe_add_func_uint64_t_u_u(((safe_add_func_int8_t_s_s((l_919[(p_1257->g_300.f3 + 1)] = (p_1257->g_257[1] && p_22)), ((safe_mul_func_uint8_t_u_u(((((safe_add_func_int64_t_s_s((safe_add_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((((l_1133 , 0x7F8789BBL) , 0xD3A0AFD7L) || p_22), p_1257->g_238)), (**p_1257->g_669))), p_22)), 1UL)) , (-7L)) , l_860) || GROUP_DIVERGE(2, 1)), 0x5DL)) & (*p_1257->g_107)))) < (**p_1257->g_106)), p_22)) , p_22) , 255UL), p_22)) != p_1257->g_218))), p_22)) != l_1134), 14)) & p_1257->g_187.f0) & p_22) && 0UL), p_22)) | p_1257->g_334) != p_1257->g_396.f0))), l_860))), p_22)) , FAKE_DIVERGE(p_1257->global_0_offset, get_global_id(0), 10)) , p_22) >= p_1257->g_346[0][6])) , (void*)0) == l_1136[0][3])))
                    { /* block id: 582 */
                        int32_t *l_1137[8][9][3] = {{{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942}},{{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942}},{{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942}},{{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942}},{{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942}},{{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942}},{{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942}},{{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942},{(void*)0,(void*)0,&p_1257->g_942}}};
                        int i, j, k;
                        p_1257->g_1138--;
                        (*l_1061) = (void*)0;
                        if (l_1132)
                            continue;
                    }
                    else
                    { /* block id: 586 */
                        (*p_1257->g_44) = l_1141[0][3];
                    }
                    p_1257->g_1143++;
                    for (p_1257->g_797 = 0; (p_1257->g_797 <= 1); p_1257->g_797 += 1)
                    { /* block id: 592 */
                        union U2 **l_1146 = &l_1097;
                        (*l_1146) = l_1097;
                    }
                    for (p_1257->g_687 = 0; (p_1257->g_687 <= 1); p_1257->g_687 += 1)
                    { /* block id: 597 */
                        int64_t **l_1156 = &l_907;
                        int64_t ***l_1157 = &l_1156;
                        int i, j, k;
                        (*l_1061) = (void*)0;
                        p_1257->g_942 |= ((safe_add_func_uint64_t_u_u(((p_1257->g_863[(p_1257->g_687 + 5)][p_1257->g_687][p_1257->g_687] , (((safe_mod_func_int32_t_s_s((l_1164 = (l_1142 = (((p_1257->g_257[p_1257->g_300.f3] >= (((safe_unary_minus_func_int16_t_s(0x3828L)) < p_1257->g_863[(p_1257->g_687 + 5)][p_1257->g_687][p_1257->g_687]) & (safe_sub_func_int8_t_s_s((l_1132 & (safe_rshift_func_int8_t_s_u(((&l_905 == ((*l_1157) = l_1156)) , ((safe_sub_func_int32_t_s_s((safe_div_func_uint64_t_u_u(p_22, (safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), 7)))), (0UL > 5UL))) >= p_22)), p_1257->g_396.f0))), p_22)))) != p_1257->g_219) ^ p_1257->g_1138))), 0x2A890E62L)) , l_1165) , 1L)) , 0xD00CCE2AE22D60E0L), 0x2BF16CA6475D07ADL)) , l_1166);
                        return l_1166;
                    }
                }
                return l_1167[1];
            }
        }
        for (p_1257->g_187.f0 = 0; (p_1257->g_187.f0 != (-10)); p_1257->g_187.f0 = safe_sub_func_uint64_t_u_u(p_1257->g_187.f0, 1))
        { /* block id: 611 */
            struct S0 l_1172 = {3L};
            int32_t *l_1177 = &p_1257->g_300.f1;
            int32_t *l_1178 = &p_1257->g_586[0];
            int32_t **l_1179 = (void*)0;
            uint8_t **l_1198 = &l_956;
            uint8_t ***l_1197 = &l_1198;
            uint8_t ****l_1202 = &p_1257->g_1199;
            int32_t l_1221 = 1L;
            int16_t **l_1243 = &l_936[0][1];
            l_976 = ((*p_1257->g_44) = func_24(p_22, (safe_mul_func_uint16_t_u_u((0x205EL | ((**l_935) |= (l_1172 , p_1257->g_218))), p_1257->g_1099)), ((*l_1178) &= (0x4A1556C22F75D9C4L ^ (((*l_1177) = (safe_mod_func_uint8_t_u_u(l_1172.f0, (l_1172.f0 || (((!(safe_rshift_func_uint8_t_u_u(p_22, 6))) && p_22) > 0xFEL))))) , (-1L)))), p_22, (*p_1257->g_44), p_1257));
            l_1205[0][4] = (safe_add_func_int16_t_s_s((safe_div_func_int32_t_s_s((((((**p_1257->g_669) |= p_22) > (((safe_div_func_int32_t_s_s((safe_add_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u(((safe_unary_minus_func_uint16_t_u(((((safe_mul_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_u((&p_1257->g_322 == &p_1257->g_322), 4)) <= (l_1197 != ((*l_1202) = p_1257->g_1199))), p_22)) && (l_1142 = ((**l_935) = (((safe_mod_func_uint8_t_u_u(0xEEL, ((p_22 < (+p_22)) ^ 0x0ACBFCA3L))) == (-6L)) != p_1257->g_4)))) , p_22) < p_22))) == p_1257->g_992), 2)), 0x7F6AL)), p_22)) == 5L) < p_22)) | p_22) , (-3L)), p_22)), 4UL));
            l_1142 = (p_1257->g_169 , (l_1221 = (safe_mul_func_uint8_t_u_u(((((safe_div_func_uint8_t_u_u(((((void*)0 != l_1210) >= ((safe_mul_func_uint16_t_u_u(0UL, ((*p_1257->g_670) &= (safe_div_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(((((-3L) || (((safe_rshift_func_uint8_t_u_s((safe_add_func_uint64_t_u_u((((*l_42) = (**p_1257->g_106)) <= ((void*)0 == (*l_1202))), 7UL)), p_22)) && 0x9FA99E3786D3F8F0L) , 0x9889FC51E137E5A0L)) , (*p_1257->g_44)) != p_21), p_22)), GROUP_DIVERGE(0, 1)))))) > 8UL)) || GROUP_DIVERGE(1, 1)), (*p_1257->g_1201))) | p_1257->g_942) || p_1257->g_257[0]) , l_1205[0][4]), 0x40L))));
            for (p_1257->g_1099 = (-17); (p_1257->g_1099 > 53); p_1257->g_1099++)
            { /* block id: 628 */
                int16_t **l_1242 = &l_936[0][2];
                uint16_t *l_1247 = (void*)0;
                int32_t l_1248 = 0x16468481L;
                int32_t *l_1249 = &l_1134;
                (*l_1249) = ((((safe_sub_func_uint8_t_u_u((((*l_1049) |= 1L) & (safe_mul_func_uint16_t_u_u((safe_add_func_int16_t_s_s((safe_div_func_int32_t_s_s(0x253D578EL, (safe_mod_func_uint32_t_u_u((((l_1172 , l_1250) == 1L) & l_1251), p_1257->g_467[0][0])))), (*l_1249))), (*p_1257->g_670)))), 0x8BL)) >= 4294967295UL) <= 0x47AC5C59L) == GROUP_DIVERGE(0, 1));
            }
        }
    }
    return p_1257->g_467[1][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1257->g_753 p_1257->g_863 p_1257->g_586 p_1257->g_532 p_1257->g_107 p_1257->g_638
 * writes: p_1257->g_651 p_1257->g_43 p_1257->g_638 p_1257->g_78
 */
int32_t * func_24(uint32_t  p_25, int16_t  p_26, int32_t  p_27, int8_t  p_28, int32_t * p_29, struct S3 * p_1257)
{ /* block id: 446 */
    int64_t l_866 = 8L;
    uint64_t *l_875 = &p_1257->g_651;
    int32_t l_888[9] = {7L,(-7L),7L,7L,(-7L),7L,7L,(-7L),7L};
    uint8_t *l_889 = &p_1257->g_638[3][0];
    int32_t *l_890[4];
    int i;
    for (i = 0; i < 4; i++)
        l_890[i] = &p_1257->g_78;
    p_1257->g_78 = (p_28 <= ((*l_889) |= (safe_lshift_func_int8_t_s_s(((*p_1257->g_107) = ((l_866 , (((safe_mul_func_int16_t_s_s(((safe_add_func_uint8_t_u_u((safe_sub_func_int8_t_s_s(0x7FL, ((safe_mod_func_uint64_t_u_u(((*l_875) = ((0x7E87DFC7L & p_1257->g_753) != 0x219000C34CBE788BL)), p_27)) & p_28))), (safe_sub_func_int16_t_s_s((l_888[1] |= (((safe_unary_minus_func_uint64_t_u(((safe_div_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((safe_unary_minus_func_uint32_t_u((safe_sub_func_uint16_t_u_u(l_866, l_866)))), p_28)), p_27)), l_866)) >= l_866))) | 0x3185CBA4A39A877FL) || 0x3EL)), p_1257->g_863[1][0][0])))) , p_1257->g_586[0]), p_1257->g_532)) ^ 0xFCL) < l_866)) >= p_25)), l_866))));
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_1257->g_4 p_1257->g_52 p_1257->g_44 p_1257->g_45 p_1257->g_43 p_1257->g_106 p_1257->g_90 p_1257->g_107 p_1257->g_154 p_1257->g_169 p_1257->g_78 p_1257->g_184 p_1257->g_187 p_1257->g_532 p_1257->g_257 p_1257->g_346 p_1257->g_310 p_1257->g_396.f0 p_1257->g_211 p_1257->g_638 p_1257->g_586 p_1257->g_467 p_1257->g_651 p_1257->g_657 p_1257->g_321 p_1257->g_322 p_1257->g_669 p_1257->g_687 p_1257->g_670 p_1257->g_410 p_1257->g_300.f1 p_1257->g_797 p_1257->g_585
 * writes: p_1257->g_78 p_1257->g_43 p_1257->g_90 p_1257->g_45 p_1257->g_154 p_1257->g_169 p_1257->g_184 p_1257->g_532 p_1257->g_467 p_1257->g_300.f3 p_1257->g_211 p_1257->g_638 p_1257->g_334 p_1257->g_576 p_1257->g_651 p_1257->g_657 p_1257->g_669 p_1257->g_187 p_1257->g_687 p_1257->g_705 p_1257->g_410 p_1257->g_300.f1 p_1257->g_585
 */
int8_t  func_36(int8_t * p_37, int32_t ** p_38, uint64_t  p_39, int32_t ** p_40, uint32_t  p_41, struct S3 * p_1257)
{ /* block id: 9 */
    int8_t l_55 = (-3L);
    (*p_1257->g_44) = func_53(l_55, p_1257);
    return (*p_37);
}


/* ------------------------------------------ */
/* 
 * reads : p_1257->g_4 p_1257->g_52 p_1257->g_44 p_1257->g_45 p_1257->g_43 p_1257->g_106 p_1257->g_90 p_1257->g_107 p_1257->g_154 p_1257->g_169 p_1257->g_78 p_1257->g_184 p_1257->g_187 p_1257->g_532 p_1257->g_257 p_1257->g_346 p_1257->g_310 p_1257->g_396.f0 p_1257->g_211 p_1257->g_638 p_1257->g_586 p_1257->g_467 p_1257->g_651 p_1257->g_657 p_1257->g_321 p_1257->g_322 p_1257->g_669 p_1257->g_687 p_1257->g_670 p_1257->g_410 p_1257->g_300.f1 p_1257->g_797 p_1257->g_585
 * writes: p_1257->g_78 p_1257->g_43 p_1257->g_90 p_1257->g_45 p_1257->g_154 p_1257->g_169 p_1257->g_184 p_1257->g_532 p_1257->g_467 p_1257->g_300.f3 p_1257->g_211 p_1257->g_638 p_1257->g_334 p_1257->g_576 p_1257->g_651 p_1257->g_657 p_1257->g_669 p_1257->g_187 p_1257->g_687 p_1257->g_705 p_1257->g_410 p_1257->g_300.f1 p_1257->g_585
 */
int32_t * func_53(uint32_t  p_54, struct S3 * p_1257)
{ /* block id: 10 */
    uint32_t l_56[8];
    int8_t *l_84[5][9][4] = {{{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43}},{{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43}},{{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43}},{{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43}},{{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43},{&p_1257->g_43,&p_1257->g_52,&p_1257->g_43,&p_1257->g_43}}};
    int32_t l_91 = (-8L);
    int32_t l_619[6] = {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)};
    uint32_t l_625 = 0xD881C872L;
    int32_t **l_637 = (void*)0;
    uint16_t l_649 = 1UL;
    int16_t l_656[1];
    int16_t l_690 = 0x4102L;
    int64_t **l_713[4][9][2] = {{{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243}},{{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243}},{{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243}},{{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243},{(void*)0,&p_1257->g_243}}};
    int64_t ***l_712 = &l_713[3][1][1];
    int64_t l_813[6][4] = {{0x791D2B2F754FDBEEL,1L,9L,1L},{0x791D2B2F754FDBEEL,1L,9L,1L},{0x791D2B2F754FDBEEL,1L,9L,1L},{0x791D2B2F754FDBEEL,1L,9L,1L},{0x791D2B2F754FDBEEL,1L,9L,1L},{0x791D2B2F754FDBEEL,1L,9L,1L}};
    union U1 *l_826[1][5][10] = {{{&p_1257->g_831,&p_1257->g_831,&p_1257->g_833[0][1],(void*)0,&p_1257->g_830,(void*)0,&p_1257->g_833[0][1],&p_1257->g_831,&p_1257->g_831,&p_1257->g_833[0][1]},{&p_1257->g_831,&p_1257->g_831,&p_1257->g_833[0][1],(void*)0,&p_1257->g_830,(void*)0,&p_1257->g_833[0][1],&p_1257->g_831,&p_1257->g_831,&p_1257->g_833[0][1]},{&p_1257->g_831,&p_1257->g_831,&p_1257->g_833[0][1],(void*)0,&p_1257->g_830,(void*)0,&p_1257->g_833[0][1],&p_1257->g_831,&p_1257->g_831,&p_1257->g_833[0][1]},{&p_1257->g_831,&p_1257->g_831,&p_1257->g_833[0][1],(void*)0,&p_1257->g_830,(void*)0,&p_1257->g_833[0][1],&p_1257->g_831,&p_1257->g_831,&p_1257->g_833[0][1]},{&p_1257->g_831,&p_1257->g_831,&p_1257->g_833[0][1],(void*)0,&p_1257->g_830,(void*)0,&p_1257->g_833[0][1],&p_1257->g_831,&p_1257->g_831,&p_1257->g_833[0][1]}}};
    union U1 **l_835 = (void*)0;
    union U1 *l_836 = &p_1257->g_837;
    union U1 **l_838 = (void*)0;
    union U1 *l_840[8][6] = {{&p_1257->g_848,&p_1257->g_848,&p_1257->g_850,&p_1257->g_841[9],&p_1257->g_846,&p_1257->g_841[9]},{&p_1257->g_848,&p_1257->g_848,&p_1257->g_850,&p_1257->g_841[9],&p_1257->g_846,&p_1257->g_841[9]},{&p_1257->g_848,&p_1257->g_848,&p_1257->g_850,&p_1257->g_841[9],&p_1257->g_846,&p_1257->g_841[9]},{&p_1257->g_848,&p_1257->g_848,&p_1257->g_850,&p_1257->g_841[9],&p_1257->g_846,&p_1257->g_841[9]},{&p_1257->g_848,&p_1257->g_848,&p_1257->g_850,&p_1257->g_841[9],&p_1257->g_846,&p_1257->g_841[9]},{&p_1257->g_848,&p_1257->g_848,&p_1257->g_850,&p_1257->g_841[9],&p_1257->g_846,&p_1257->g_841[9]},{&p_1257->g_848,&p_1257->g_848,&p_1257->g_850,&p_1257->g_841[9],&p_1257->g_846,&p_1257->g_841[9]},{&p_1257->g_848,&p_1257->g_848,&p_1257->g_850,&p_1257->g_841[9],&p_1257->g_846,&p_1257->g_841[9]}};
    union U1 **l_839 = &l_840[1][0];
    int8_t **l_856 = &p_1257->g_107;
    int8_t ***l_855 = &l_856;
    int8_t ****l_857 = &l_855;
    uint32_t *l_858[10][7] = {{(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0},{(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0},{(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0},{(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0},{(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0},{(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0},{(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0},{(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0},{(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0},{(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0,&p_1257->g_154[6][5][2],(void*)0,(void*)0}};
    int32_t *l_859 = &l_619[3];
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_56[i] = 4294967289UL;
    for (i = 0; i < 1; i++)
        l_656[i] = 1L;
    for (p_54 = 2; (p_54 <= 7); p_54 += 1)
    { /* block id: 13 */
        int8_t l_76 = 0x5AL;
        int32_t *l_77 = &p_1257->g_78;
        uint8_t *l_89[9][2][9] = {{{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90},{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90}},{{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90},{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90}},{{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90},{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90}},{{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90},{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90}},{{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90},{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90}},{{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90},{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90}},{{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90},{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90}},{{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90},{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90}},{{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90},{&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,&p_1257->g_90,(void*)0,&p_1257->g_90}}};
        uint16_t l_92 = 1UL;
        uint32_t l_605 = 0x6F64FF20L;
        int32_t l_617 = 0x01A31E05L;
        int32_t l_636[5][2];
        union U2 l_676 = {0x7807D10341EE104EL};
        int32_t l_686 = 0x01849D71L;
        union U1 *l_699 = &p_1257->g_700;
        int i, j, k;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 2; j++)
                l_636[i][j] = 0x43EE0744L;
        }
        if (func_57(func_62(p_1257->g_4, (((((safe_div_func_int64_t_s_s((safe_rshift_func_int16_t_s_s((func_71((p_1257->g_52 , ((*l_77) = l_76)), (*p_1257->g_44), &l_77, func_79(l_84[3][5][2], ((safe_mul_func_int8_t_s_s((p_54 < ((0xC3L != (l_91 = ((l_56[2] <= 1L) == 0UL))) && p_1257->g_52)), l_92)) != FAKE_DIVERGE(p_1257->group_1_offset, get_group_id(1), 10)), p_1257->g_43, p_1257->g_52, p_1257), p_1257) , p_1257->g_184), 15)), l_92)) != l_76) < p_54) , l_56[7]) != l_56[6]), l_56[2], p_1257->g_187.f0, p_1257), l_84[0][2][1], p_54, p_1257->g_4, p_1257))
        { /* block id: 296 */
            uint16_t *l_593 = &p_1257->g_532;
            int32_t l_602 = (-1L);
            int16_t *l_613 = &p_1257->g_467[0][0];
            int16_t *l_614[4][8] = {{(void*)0,(void*)0,(void*)0,&p_1257->g_211,&p_1257->g_211,&p_1257->g_211,&p_1257->g_211,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1257->g_211,&p_1257->g_211,&p_1257->g_211,&p_1257->g_211,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1257->g_211,&p_1257->g_211,&p_1257->g_211,&p_1257->g_211,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1257->g_211,&p_1257->g_211,&p_1257->g_211,&p_1257->g_211,(void*)0}};
            int32_t l_615 = 0x1C38570DL;
            int32_t l_616 = 0x113FCB43L;
            int64_t *l_618[10][9][2] = {{{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334}},{{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334}},{{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334}},{{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334}},{{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334}},{{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334}},{{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334}},{{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334}},{{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334}},{{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334},{&p_1257->g_334,&p_1257->g_334}}};
            int32_t *l_650 = &l_91;
            uint16_t **l_668 = &l_593;
            int i, j, k;
            if ((safe_mod_func_int16_t_s_s(((func_79(&p_1257->g_43, (FAKE_DIVERGE(p_1257->global_2_offset, get_global_id(2), 10) && ((safe_mod_func_int16_t_s_s(p_54, (--(*l_593)))) , (p_1257->g_187 , (l_619[4] ^= ((((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1257->local_1_offset, get_local_id(1), 10), ((l_91 ^= (((safe_sub_func_uint16_t_u_u(0UL, (safe_lshift_func_int8_t_s_u((*l_77), 5)))) | l_602) < ((safe_add_func_uint16_t_u_u((((l_605 && (safe_unary_minus_func_uint64_t_u(((safe_add_func_uint8_t_u_u((((l_616 |= (l_615 &= (safe_div_func_uint16_t_u_u((+(safe_mul_func_int8_t_s_s(((**p_1257->g_106) = 7L), ((((*l_613) = ((*l_77) >= (-1L))) == p_54) > l_56[3])))), (*l_77))))) && l_616) > l_617), p_54)) || p_54)))) && p_54) && 0L), 0L)) , (**p_1257->g_106)))) < p_54))) & p_54) >= p_1257->g_257[0]) || p_1257->g_346[0][6]))))), p_1257->g_310, l_56[7], p_1257) , p_1257->g_78) , p_1257->g_257[1]), 0x310CL)))
            { /* block id: 304 */
                for (p_1257->g_184 = 0; (p_1257->g_184 <= 1); p_1257->g_184 += 1)
                { /* block id: 307 */
                    int i;
                    atomic_xor(&p_1257->l_atomic_reduction[0], l_56[(p_1257->g_184 + 6)]);
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (get_linear_local_id() == 0)
                        p_1257->v_collective += p_1257->l_atomic_reduction[0];
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                }
            }
            else
            { /* block id: 310 */
                int32_t *l_620 = (void*)0;
                return l_620;
            }
            (*l_77) = (safe_mul_func_int16_t_s_s(p_54, (safe_mul_func_uint16_t_u_u((((l_625 >= (safe_mod_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), (*l_77)))) == ((l_615 = (safe_lshift_func_int16_t_s_s((p_1257->g_638[3][0] |= (p_1257->g_211 &= (((p_54 , (safe_lshift_func_int16_t_s_u((p_1257->g_300.f3 = (((*l_613) = (0x44BC1553L == (safe_sub_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(l_636[2][1], 0x25L)), ((void*)0 != l_637))))) || p_54)), 6))) && (-1L)) >= p_1257->g_396.f0))), 9))) > l_616)) ^ p_1257->g_346[0][6]), (*l_77)))));
            (*l_650) |= (safe_mod_func_int64_t_s_s((((0xE0C8L > p_54) , 1UL) , (p_1257->g_169 = (safe_mul_func_uint8_t_u_u(((void*)0 == l_614[1][2]), GROUP_DIVERGE(1, 1))))), ((safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_1257->global_2_offset, get_global_id(2), 10), ((((safe_mod_func_int64_t_s_s((p_1257->g_334 = 0x1A5DBEE29C786299L), ((((p_54 & ((*l_613) |= (p_54 ^ (safe_rshift_func_uint8_t_u_u(((p_1257->g_78 , p_1257->g_586[0]) == 1L), 7))))) , 0x43AAA799583215D1L) <= l_602) || 0x69L))) < p_54) > (*l_77)) > l_649))) || l_616)));
            for (p_1257->g_334 = 7; (p_1257->g_334 >= 2); p_1257->g_334 -= 1)
            { /* block id: 325 */
                int32_t **l_675 = &l_650;
                int32_t l_695 = 0L;
                struct S0 *l_704 = &p_1257->g_187;
                for (p_1257->g_576 = 2; (p_1257->g_576 <= 7); p_1257->g_576 += 1)
                { /* block id: 328 */
                    if (p_1257->g_651)
                        break;
                    return (*p_1257->g_44);
                }
                for (p_1257->g_651 = 0; (p_1257->g_651 <= 0); p_1257->g_651 += 1)
                { /* block id: 334 */
                    int16_t **l_662 = (void*)0;
                    int16_t **l_663 = &l_614[3][2];
                    uint16_t **l_667 = &l_593;
                    uint16_t ***l_666[10] = {&l_667,&l_667,&l_667,&l_667,&l_667,&l_667,&l_667,&l_667,&l_667,&l_667};
                    int32_t l_673 = 0x3C116453L;
                    int32_t *l_674 = &p_1257->g_4;
                    struct S0 *l_677 = &p_1257->g_187;
                    int32_t *l_678 = &l_616;
                    int32_t *l_679 = &p_1257->g_78;
                    int32_t *l_680 = &l_673;
                    int32_t *l_681 = &l_615;
                    int32_t *l_682 = &l_602;
                    int32_t *l_683 = &l_602;
                    int32_t *l_684 = &p_1257->g_78;
                    int32_t *l_685[7][9][4] = {{{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0}},{{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0}},{{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0}},{{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0}},{{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0}},{{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0}},{{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0},{&l_616,(void*)0,&l_615,(void*)0}}};
                    int i, j, k;
                    for (l_76 = 0; (l_76 <= 0); l_76 += 1)
                    { /* block id: 337 */
                        int32_t *l_652 = &p_1257->g_78;
                        int32_t *l_653 = &l_91;
                        int32_t *l_654 = &p_1257->g_78;
                        int32_t *l_655[6][1];
                        int i, j;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_655[i][j] = &l_619[4];
                        }
                        (*l_650) &= 0x7F7F6D7CL;
                        p_1257->g_657--;
                    }
                    (*l_677) = func_71((p_1257->g_346[p_1257->g_651][(p_54 + 2)] >= (+(safe_lshift_func_int16_t_s_s(((((*l_663) = &p_1257->g_467[0][0]) != (*p_1257->g_321)) <= (safe_add_func_int8_t_s_s((**p_1257->g_106), ((l_668 = &l_593) != (p_1257->g_669 = p_1257->g_669))))), (((l_673 = (safe_mod_func_int32_t_s_s((*l_77), p_1257->g_467[0][0]))) < p_54) > p_54))))), l_674, l_675, l_676, p_1257);
                    if ((*l_77))
                        continue;
                    --p_1257->g_687;
                }
                for (p_1257->g_211 = 7; (p_1257->g_211 >= 0); p_1257->g_211 -= 1)
                { /* block id: 351 */
                    uint32_t l_696[7] = {4294967295UL,0x2DE9E34EL,4294967295UL,4294967295UL,0x2DE9E34EL,4294967295UL,4294967295UL};
                    union U1 **l_701 = &l_699;
                    union U1 *l_702 = &p_1257->g_703[0];
                    int i;
                    for (p_1257->g_169 = 0; (p_1257->g_169 <= 2); p_1257->g_169 += 1)
                    { /* block id: 354 */
                        int32_t *l_691 = &l_619[2];
                        int32_t *l_692 = &l_91;
                        int32_t *l_693 = &l_686;
                        int32_t *l_694[9] = {&l_91,&l_91,&l_91,&l_91,&l_91,&l_91,&l_91,&l_91,&l_91};
                        int i, j, k;
                        (*l_77) = (0UL == p_1257->g_154[p_1257->g_211][p_1257->g_211][p_1257->g_169]);
                        l_696[3]++;
                        return (*p_1257->g_44);
                    }
                    l_702 = ((*l_701) = l_699);
                    if (p_54)
                        continue;
                    (*l_77) = p_54;
                }
                (*l_704) = p_1257->g_187;
            }
        }
        else
        { /* block id: 366 */
            p_1257->g_705 = &p_1257->g_187;
        }
    }
    for (p_1257->g_184 = 0; (p_1257->g_184 <= 7); p_1257->g_184 += 1)
    { /* block id: 372 */
        uint64_t l_721 = 0xC5A3412122D9D39FL;
        int32_t l_722 = 0x2A798B0AL;
        int32_t *l_723 = (void*)0;
        uint8_t *l_795 = &p_1257->g_638[3][0];
        uint8_t **l_794[10][10][2] = {{{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795}},{{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795}},{{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795}},{{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795}},{{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795}},{{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795}},{{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795}},{{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795}},{{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795}},{{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795},{&l_795,&l_795}}};
        uint8_t ***l_793 = &l_794[4][4][0];
        int i, j, k;
        for (l_91 = 3; (l_91 >= 0); l_91 -= 1)
        { /* block id: 375 */
            int64_t ****l_714 = &l_712;
            int32_t l_715 = 4L;
            int8_t ***l_718 = (void*)0;
            int64_t *l_731 = &p_1257->g_218;
            int64_t **l_730[1][7][3] = {{{(void*)0,&l_731,(void*)0},{(void*)0,&l_731,(void*)0},{(void*)0,&l_731,(void*)0},{(void*)0,&l_731,(void*)0},{(void*)0,&l_731,(void*)0},{(void*)0,&l_731,(void*)0},{(void*)0,&l_731,(void*)0}}};
            int i, j, k;
            l_722 &= (safe_mul_func_int8_t_s_s((safe_mod_func_int64_t_s_s(((safe_div_func_uint32_t_u_u(0UL, (p_54 , (0xB56F42C5L | (((*l_714) = l_712) != &p_1257->g_480[0]))))) & l_715), (safe_rshift_func_uint8_t_u_u((((l_718 != l_718) , ((safe_rshift_func_uint8_t_u_u((((~p_54) != l_721) , FAKE_DIVERGE(p_1257->global_0_offset, get_global_id(0), 10)), 0)) | 9UL)) && 0xA21AL), 3)))), p_54));
            for (p_1257->g_90 = 0; (p_1257->g_90 <= 3); p_1257->g_90 += 1)
            { /* block id: 380 */
                int32_t *l_732 = &l_619[3];
                int i, j;
                (*p_1257->g_44) = l_723;
                (*l_732) = (safe_lshift_func_int16_t_s_u((GROUP_DIVERGE(1, 1) , (p_1257->g_467[p_1257->g_184][l_91] = ((0x04L < (safe_mul_func_uint16_t_u_u((p_1257->g_467[0][0] , (l_715 , p_54)), (((safe_add_func_uint8_t_u_u((l_730[0][3][1] != (void*)0), ((((((**p_1257->g_669) = p_54) , (0x0FL & (p_1257->g_410 > (*p_1257->g_670)))) != 18446744073709551615UL) , &p_1257->g_257[1]) != (void*)0))) < 0x051F6DB547A188CDL) < p_54)))) && 0xE1769B22016D60CCL))), p_1257->g_346[0][7]));
                if ((*l_732))
                    break;
            }
        }
        for (p_1257->g_300.f1 = 7; (p_1257->g_300.f1 >= 0); p_1257->g_300.f1 -= 1)
        { /* block id: 396 */
            int64_t l_736 = 0L;
            int16_t *l_779[4][6] = {{&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0]},{&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0]},{&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0]},{&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0],&p_1257->g_467[0][0]}};
            struct S0 l_800 = {0x69L};
            int32_t *l_810[9][7][3] = {{{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]}},{{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]}},{{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]}},{{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]}},{{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]}},{{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]}},{{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]}},{{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]}},{{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]},{&l_91,&l_619[2],&l_619[1]}}};
            int i, j, k;
            if ((0xE394DCEFL ^ p_1257->g_187.f0))
            { /* block id: 397 */
                for (l_91 = 0; (l_91 <= 7); l_91 += 1)
                { /* block id: 400 */
                    struct S0 **l_733 = &p_1257->g_705;
                    struct S0 *l_735 = (void*)0;
                    struct S0 **l_734 = &l_735;
                    (*l_734) = ((*l_733) = &p_1257->g_187);
                }
            }
            else
            { /* block id: 404 */
                int32_t *l_737 = &l_722;
                int32_t *l_738 = (void*)0;
                int32_t *l_739 = &l_722;
                int32_t *l_740 = &l_91;
                int32_t *l_741 = &l_91;
                int32_t *l_742 = &l_722;
                int32_t *l_743 = &l_619[4];
                int32_t *l_744 = (void*)0;
                int32_t *l_745 = &l_619[3];
                int32_t *l_746 = &l_619[4];
                int32_t *l_747 = &l_619[2];
                int32_t *l_748 = &l_619[4];
                int32_t *l_749 = (void*)0;
                int32_t *l_750 = (void*)0;
                int32_t *l_751 = &l_91;
                int32_t *l_752[7];
                uint32_t l_754[3][7][1] = {{{4294967293UL},{4294967293UL},{4294967293UL},{4294967293UL},{4294967293UL},{4294967293UL},{4294967293UL}},{{4294967293UL},{4294967293UL},{4294967293UL},{4294967293UL},{4294967293UL},{4294967293UL},{4294967293UL}},{{4294967293UL},{4294967293UL},{4294967293UL},{4294967293UL},{4294967293UL},{4294967293UL},{4294967293UL}}};
                int i, j, k;
                for (i = 0; i < 7; i++)
                    l_752[i] = &l_619[4];
                if (l_736)
                    break;
                l_754[0][0][0]++;
            }
            for (l_690 = 5; (l_690 >= 0); l_690 -= 1)
            { /* block id: 410 */
                int16_t *l_767[1];
                int64_t ***l_774 = &l_713[0][1][0];
                uint64_t *l_780 = &p_1257->g_657;
                uint8_t *l_791 = &p_1257->g_90;
                uint8_t **l_790 = &l_791;
                uint8_t ***l_789 = &l_790;
                uint8_t ****l_792 = &l_789;
                int32_t *l_796 = &p_1257->g_78;
                struct S0 l_798 = {-8L};
                struct S0 *l_799[8][7][4] = {{{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798}},{{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798}},{{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798}},{{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798}},{{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798}},{{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798}},{{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798}},{{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798},{&p_1257->g_187,&l_798,&p_1257->g_396,&l_798}}};
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_767[i] = &l_656[0];
                (*p_1257->g_44) = ((((65530UL ^ ((safe_rshift_func_uint16_t_u_u((((safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(p_54, ((l_56[p_1257->g_184] |= (safe_sub_func_uint16_t_u_u(0xB388L, (p_1257->g_211 ^= (safe_rshift_func_int16_t_s_u(l_736, 7)))))) != (safe_lshift_func_int8_t_s_u(((**p_1257->g_106) = (safe_add_func_uint64_t_u_u(((255UL != (safe_lshift_func_uint16_t_u_u(((void*)0 != l_774), 4))) == 0xD14223CBL), ((safe_add_func_int16_t_s_s(p_54, p_54)) & l_736)))), p_54))))), p_54)) < p_1257->g_657) == 1UL), 6)) && p_54)) != 0x8BA326AFEBC83BEBL) , l_736) , (void*)0);
                (*l_796) ^= ((((*l_780) = (+(safe_div_func_int8_t_s_s((l_779[2][5] == (void*)0), p_54)))) > ((safe_mod_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u(p_54, ((safe_mul_func_int16_t_s_s((p_1257->g_211 ^= 0x3CCBL), (safe_mul_func_uint8_t_u_u(p_54, 0x70L)))) >= (((*l_792) = l_789) != l_793)))), p_54)) > 0x66787DA8FB63ADB2L)) || p_54);
                if (p_1257->g_797)
                    continue;
                l_800 = l_798;
            }
            for (p_1257->g_78 = 0; (p_1257->g_78 > (-6)); --p_1257->g_78)
            { /* block id: 424 */
                struct S0 *l_803 = &p_1257->g_396;
                struct S0 **l_804 = &l_803;
                union U2 ***l_805 = &p_1257->g_585;
                (*l_804) = l_803;
                (*l_805) = p_1257->g_585;
                for (l_721 = 8; (l_721 < 56); l_721 = safe_add_func_uint8_t_u_u(l_721, 5))
                { /* block id: 429 */
                    return (*p_1257->g_44);
                }
            }
            l_722 ^= ((safe_sub_func_int32_t_s_s(l_736, (+FAKE_DIVERGE(p_1257->group_2_offset, get_group_id(2), 10)))) >= p_54);
        }
    }
    (*l_859) = ((safe_mul_func_int8_t_s_s(l_690, l_813[0][2])) >= (safe_sub_func_uint32_t_u_u((safe_add_func_int32_t_s_s((((0x5894L == (safe_div_func_int8_t_s_s(((safe_mul_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1257->local_1_offset, get_local_id(1), 10), 15)), (safe_sub_func_uint64_t_u_u((0xBB453DD1L && (l_826[0][0][4] != ((*l_839) = (l_836 = l_826[0][1][1])))), ((safe_add_func_int64_t_s_s((((*l_857) = l_855) != &l_856), (((p_1257->g_154[5][2][2] = p_54) && 0xEBC4A6D8L) , 0x1D65B6D633CDEFB0L))) >= p_54))))) != p_1257->g_687), p_1257->g_346[0][6]))) >= p_1257->g_43) <= GROUP_DIVERGE(1, 1)), 4294967295UL)), p_54)));
    (*p_1257->g_44) = (*p_1257->g_44);
    return (*p_1257->g_44);
}


/* ------------------------------------------ */
/* 
 * reads : p_1257->g_43
 * writes: p_1257->g_43
 */
int32_t  func_57(uint8_t  p_58, int8_t * p_59, uint8_t  p_60, int64_t  p_61, struct S3 * p_1257)
{ /* block id: 57 */
    int16_t l_244 = (-1L);
    int32_t l_247 = (-5L);
    uint32_t l_262 = 0x9CE636EAL;
    int64_t **l_268 = &p_1257->g_243;
    int32_t l_282 = 0L;
    int32_t l_284 = 9L;
    int32_t **l_288 = &p_1257->g_45;
    int8_t **l_289 = (void*)0;
    struct S0 l_391 = {0x09L};
    int32_t *l_392 = &p_1257->g_78;
    uint32_t l_406 = 4294967290UL;
    uint32_t l_448 = 4294967287UL;
    uint16_t *l_473 = &p_1257->g_184;
    uint8_t l_526 = 0x1DL;
    uint8_t ***l_536 = (void*)0;
    int8_t l_573 = (-4L);
    for (p_1257->g_43 = 0; (p_1257->g_43 <= 2); p_1257->g_43 += 1)
    { /* block id: 60 */
        int32_t l_199[6][6] = {{(-1L),0x7663D83FL,(-1L),(-1L),0x7663D83FL,(-1L)},{(-1L),0x7663D83FL,(-1L),(-1L),0x7663D83FL,(-1L)},{(-1L),0x7663D83FL,(-1L),(-1L),0x7663D83FL,(-1L)},{(-1L),0x7663D83FL,(-1L),(-1L),0x7663D83FL,(-1L)},{(-1L),0x7663D83FL,(-1L),(-1L),0x7663D83FL,(-1L)},{(-1L),0x7663D83FL,(-1L),(-1L),0x7663D83FL,(-1L)}};
        struct S0 *l_208 = (void*)0;
        struct S0 *l_209 = &p_1257->g_187;
        int16_t *l_210 = &p_1257->g_211;
        union U2 l_212 = {2UL};
        union U2 *l_213 = (void*)0;
        union U2 *l_214 = &l_212;
        int64_t *l_217[8][9] = {{&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218},{&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218},{&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218},{&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218},{&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218},{&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218},{&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218},{&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218,&p_1257->g_218}};
        uint8_t *l_220 = &p_1257->g_90;
        int64_t **l_267 = (void*)0;
        uint32_t l_280 = 0UL;
        int32_t *l_340 = &l_247;
        int8_t ***l_352 = &l_289;
        int64_t l_353 = 0x098BB123F9A677B1L;
        int64_t *l_370 = &p_1257->g_218;
        int i, j;
        (1 + 1);
    }
    return p_61;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_62(int16_t  p_63, int8_t  p_64, int32_t  p_65, uint16_t  p_66, struct S3 * p_1257)
{ /* block id: 54 */
    uint8_t *l_189 = &p_1257->g_90;
    uint8_t **l_188 = &l_189;
    uint8_t ***l_190 = &l_188;
    (*l_190) = l_188;
    return p_64;
}


/* ------------------------------------------ */
/* 
 * reads : p_1257->g_90 p_1257->g_44 p_1257->g_45 p_1257->g_154 p_1257->g_169 p_1257->g_78 p_1257->g_184 p_1257->g_187
 * writes: p_1257->g_90 p_1257->g_45 p_1257->g_154 p_1257->g_169 p_1257->g_184
 */
struct S0  func_71(int32_t  p_72, int32_t * p_73, int32_t ** p_74, union U2  p_75, struct S3 * p_1257)
{ /* block id: 35 */
    uint64_t l_167[4];
    int32_t **l_176[8][4] = {{&p_1257->g_45,&p_1257->g_45,&p_1257->g_45,&p_1257->g_45},{&p_1257->g_45,&p_1257->g_45,&p_1257->g_45,&p_1257->g_45},{&p_1257->g_45,&p_1257->g_45,&p_1257->g_45,&p_1257->g_45},{&p_1257->g_45,&p_1257->g_45,&p_1257->g_45,&p_1257->g_45},{&p_1257->g_45,&p_1257->g_45,&p_1257->g_45,&p_1257->g_45},{&p_1257->g_45,&p_1257->g_45,&p_1257->g_45,&p_1257->g_45},{&p_1257->g_45,&p_1257->g_45,&p_1257->g_45,&p_1257->g_45},{&p_1257->g_45,&p_1257->g_45,&p_1257->g_45,&p_1257->g_45}};
    uint8_t l_177 = 0x36L;
    int i, j;
    for (i = 0; i < 4; i++)
        l_167[i] = 1UL;
    for (p_75.f3 = 0; (p_75.f3 < (-19)); p_75.f3 = safe_sub_func_int32_t_s_s(p_75.f3, 2))
    { /* block id: 38 */
        uint32_t l_151 = 6UL;
        uint16_t l_152[4] = {65535UL,65535UL,65535UL,65535UL};
        int32_t l_178 = 0L;
        int i;
        (*p_74) = (*p_74);
        if (l_151)
            break;
        for (p_1257->g_90 = 0; (p_1257->g_90 <= 3); p_1257->g_90 += 1)
        { /* block id: 43 */
            uint32_t *l_153 = &p_1257->g_154[2][0][2];
            int64_t *l_168 = &p_1257->g_169;
            int32_t l_179 = (-9L);
            int32_t l_180 = 0L;
            uint16_t l_181 = 2UL;
            int i;
            (*p_1257->g_44) = (*p_1257->g_44);
            l_178 ^= (((++(*l_153)) | ((safe_div_func_uint8_t_u_u((safe_div_func_int8_t_s_s((l_152[p_1257->g_90] <= (safe_add_func_int32_t_s_s(l_152[p_1257->g_90], (safe_mul_func_int16_t_s_s(p_75.f3, (safe_div_func_int64_t_s_s(((*l_168) ^= l_167[3]), (safe_mul_func_uint16_t_u_u((safe_sub_func_int16_t_s_s((p_75.f3 > 6UL), ((p_72 & ((&p_1257->g_45 == ((safe_mod_func_int8_t_s_s(((void*)0 == l_176[5][3]), l_177)) , (void*)0)) <= l_152[p_1257->g_90])) == 0x5C63L))), l_152[p_1257->g_90]))))))))), 1UL)), 1UL)) >= 1L)) | (**p_74));
            l_181++;
            l_180 |= l_178;
        }
    }
    p_1257->g_184--;
    return p_1257->g_187;
}


/* ------------------------------------------ */
/* 
 * reads : p_1257->g_106 p_1257->g_90 p_1257->g_4 p_1257->g_52 p_1257->g_43 p_1257->g_107
 * writes: p_1257->g_43
 */
union U2  func_79(int8_t * p_80, uint32_t  p_81, uint32_t  p_82, int16_t  p_83, struct S3 * p_1257)
{ /* block id: 16 */
    int8_t *l_99 = &p_1257->g_52;
    int8_t *l_101 = &p_1257->g_43;
    int8_t **l_100 = &l_101;
    int32_t l_102[3][7][6] = {{{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L}},{{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L}},{{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L}}};
    int16_t l_103 = 0L;
    struct S0 l_110[1][2] = {{{-2L},{-2L}}};
    struct S0 *l_111 = &l_110[0][1];
    int32_t *l_113 = &l_102[2][0][1];
    int32_t **l_112 = &l_113;
    union U2 l_148[8][1][1] = {{{{0xAB63100998834848L}}},{{{0xAB63100998834848L}}},{{{0xAB63100998834848L}}},{{{0xAB63100998834848L}}},{{{0xAB63100998834848L}}},{{{0xAB63100998834848L}}},{{{0xAB63100998834848L}}},{{{0xAB63100998834848L}}}};
    int i, j, k;
    (*l_111) = (((((safe_sub_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u((safe_add_func_uint8_t_u_u((l_99 != ((*l_100) = l_99)), 0xCFL)), (l_102[2][1][1] < l_103))), ((safe_sub_func_uint32_t_u_u(p_82, (&p_80 == p_1257->g_106))) | (safe_mod_func_uint64_t_u_u(p_1257->g_90, p_1257->g_4))))) == 0x4B4F512441043A42L) >= p_82) & p_1257->g_52) , l_110[0][1]);
    (*l_112) = &l_102[2][1][1];
    for (p_83 = 0; (p_83 <= 18); p_83 = safe_add_func_int64_t_s_s(p_83, 1))
    { /* block id: 22 */
        uint32_t l_137 = 0x71CA78ACL;
        uint16_t l_140[10][2][8] = {{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}}};
        int32_t l_144 = 0x264474F4L;
        int i, j, k;
        for (p_1257->g_43 = (-11); (p_1257->g_43 != (-1)); p_1257->g_43 = safe_add_func_int8_t_s_s(p_1257->g_43, 1))
        { /* block id: 25 */
            uint32_t l_143 = 0x4D657348L;
            l_144 = ((safe_mul_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(((safe_rshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((safe_unary_minus_func_int64_t_s((safe_rshift_func_int16_t_s_u(((safe_mod_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1257->local_1_offset, get_local_id(1), 10), p_1257->g_43)) >= 0x598881B111D6B667L), (p_82 <= l_137))), 1)) , ((**l_112) || ((+p_82) == (safe_rshift_func_uint16_t_u_s((p_81 , l_140[7][0][1]), (safe_mul_func_uint8_t_u_u(l_143, l_137))))))), p_81)) || p_81), FAKE_DIVERGE(p_1257->global_2_offset, get_global_id(2), 10))))), l_140[5][0][0])), (**p_1257->g_106))) <= 0x033FEF3BFE2B3C89L), 15)), 1L)) , p_81);
        }
    }
    for (p_81 = 0; (p_81 <= 32); ++p_81)
    { /* block id: 31 */
        union U2 l_147[8][8] = {{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}},{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}},{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}},{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}},{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}},{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}},{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}},{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}}};
        int i, j;
        return l_147[1][0];
    }
    return l_148[4][0][0];
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S3 c_1258;
    struct S3* p_1257 = &c_1258;
    struct S3 c_1259 = {
        0x79CF1813L, // p_1257->g_4
        0x7812A3CC92EA21E1L, // p_1257->g_6
        0x3DL, // p_1257->g_43
        (void*)0, // p_1257->g_45
        &p_1257->g_45, // p_1257->g_44
        0L, // p_1257->g_52
        (-1L), // p_1257->g_78
        0x6EL, // p_1257->g_90
        &p_1257->g_43, // p_1257->g_107
        &p_1257->g_107, // p_1257->g_106
        {{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}},{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}},{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}},{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}},{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}},{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}},{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}},{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}}}, // p_1257->g_154
        0L, // p_1257->g_169
        1UL, // p_1257->g_184
        {0x13L}, // p_1257->g_187
        (-1L), // p_1257->g_211
        0x5968C18A0E89C3F4L, // p_1257->g_218
        0x0BA9L, // p_1257->g_219
        0xDE0B9F2EA3B7AFEDL, // p_1257->g_238
        (void*)0, // p_1257->g_243
        {0xBCL,0xBCL}, // p_1257->g_257
        {0xDE4E20D7188630F0L}, // p_1257->g_300
        0xB909C929L, // p_1257->g_310
        0x6D73L, // p_1257->g_323
        &p_1257->g_323, // p_1257->g_322
        &p_1257->g_322, // p_1257->g_321
        1L, // p_1257->g_334
        {{3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL}}, // p_1257->g_346
        {-7L}, // p_1257->g_396
        0x13F8L, // p_1257->g_410
        {{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L}}, // p_1257->g_467
        (-1L), // p_1257->g_482
        &p_1257->g_482, // p_1257->g_481
        {&p_1257->g_481}, // p_1257->g_480
        &p_1257->g_480[0], // p_1257->g_479
        1UL, // p_1257->g_532
        0xB93F4611L, // p_1257->g_576
        (void*)0, // p_1257->g_585
        {0x33958639L}, // p_1257->g_586
        {{255UL},{255UL},{255UL},{255UL}}, // p_1257->g_638
        0x9572608982CD31C6L, // p_1257->g_651
        9UL, // p_1257->g_657
        &p_1257->g_410, // p_1257->g_670
        &p_1257->g_670, // p_1257->g_669
        1UL, // p_1257->g_687
        {0}, // p_1257->g_700
        {{0},{0}}, // p_1257->g_703
        (void*)0, // p_1257->g_705
        0x79BF56E488E6F71EL, // p_1257->g_753
        0x5492B9106C21C0C1L, // p_1257->g_797
        {0}, // p_1257->g_827
        {0}, // p_1257->g_828
        {0}, // p_1257->g_829
        {0}, // p_1257->g_830
        {0}, // p_1257->g_831
        {0}, // p_1257->g_832
        {{{0},{0},{0}}}, // p_1257->g_833
        {0}, // p_1257->g_834
        {0}, // p_1257->g_837
        {{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}}, // p_1257->g_841
        {0}, // p_1257->g_842
        {0}, // p_1257->g_843
        {0}, // p_1257->g_844
        {{{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}}}}, // p_1257->g_845
        {0}, // p_1257->g_846
        {0}, // p_1257->g_847
        {0}, // p_1257->g_848
        {0}, // p_1257->g_849
        {0}, // p_1257->g_850
        {0}, // p_1257->g_851
        {0}, // p_1257->g_852
        0UL, // p_1257->g_862
        {{{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL}},{{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL}},{{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL}},{{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL}},{{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL}},{{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL}},{{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL},{0UL,0x657CE90BL}}}, // p_1257->g_863
        &p_1257->g_243, // p_1257->g_916
        &p_1257->g_916, // p_1257->g_915
        (-1L), // p_1257->g_942
        1UL, // p_1257->g_975
        (-1L), // p_1257->g_991
        18446744073709551609UL, // p_1257->g_992
        4294967293UL, // p_1257->g_1055
        {18446744073709551606UL}, // p_1257->g_1098
        0x0ACC3010L, // p_1257->g_1099
        249UL, // p_1257->g_1138
        0x7F98BA400FD5ABECL, // p_1257->g_1143
        &p_1257->g_90, // p_1257->g_1201
        {&p_1257->g_1201,&p_1257->g_1201,&p_1257->g_1201,&p_1257->g_1201,&p_1257->g_1201,&p_1257->g_1201}, // p_1257->g_1200
        &p_1257->g_1200[3], // p_1257->g_1199
        (-2L), // p_1257->g_1255
        {0xAF9399A9L,0xAF9399A9L,0xAF9399A9L}, // p_1257->g_1256
        0, // p_1257->v_collective
        sequence_input[get_global_id(0)], // p_1257->global_0_offset
        sequence_input[get_global_id(1)], // p_1257->global_1_offset
        sequence_input[get_global_id(2)], // p_1257->global_2_offset
        sequence_input[get_local_id(0)], // p_1257->local_0_offset
        sequence_input[get_local_id(1)], // p_1257->local_1_offset
        sequence_input[get_local_id(2)], // p_1257->local_2_offset
        sequence_input[get_group_id(0)], // p_1257->group_0_offset
        sequence_input[get_group_id(1)], // p_1257->group_1_offset
        sequence_input[get_group_id(2)], // p_1257->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1258 = c_1259;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1257);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1257->g_4, "p_1257->g_4", print_hash_value);
    transparent_crc(p_1257->g_6, "p_1257->g_6", print_hash_value);
    transparent_crc(p_1257->g_43, "p_1257->g_43", print_hash_value);
    transparent_crc(p_1257->g_52, "p_1257->g_52", print_hash_value);
    transparent_crc(p_1257->g_78, "p_1257->g_78", print_hash_value);
    transparent_crc(p_1257->g_90, "p_1257->g_90", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1257->g_154[i][j][k], "p_1257->g_154[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1257->g_169, "p_1257->g_169", print_hash_value);
    transparent_crc(p_1257->g_184, "p_1257->g_184", print_hash_value);
    transparent_crc(p_1257->g_187.f0, "p_1257->g_187.f0", print_hash_value);
    transparent_crc(p_1257->g_211, "p_1257->g_211", print_hash_value);
    transparent_crc(p_1257->g_218, "p_1257->g_218", print_hash_value);
    transparent_crc(p_1257->g_219, "p_1257->g_219", print_hash_value);
    transparent_crc(p_1257->g_238, "p_1257->g_238", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1257->g_257[i], "p_1257->g_257[i]", print_hash_value);

    }
    transparent_crc(p_1257->g_310, "p_1257->g_310", print_hash_value);
    transparent_crc(p_1257->g_323, "p_1257->g_323", print_hash_value);
    transparent_crc(p_1257->g_334, "p_1257->g_334", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1257->g_346[i][j], "p_1257->g_346[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1257->g_396.f0, "p_1257->g_396.f0", print_hash_value);
    transparent_crc(p_1257->g_410, "p_1257->g_410", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1257->g_467[i][j], "p_1257->g_467[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1257->g_482, "p_1257->g_482", print_hash_value);
    transparent_crc(p_1257->g_532, "p_1257->g_532", print_hash_value);
    transparent_crc(p_1257->g_576, "p_1257->g_576", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1257->g_586[i], "p_1257->g_586[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1257->g_638[i][j], "p_1257->g_638[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1257->g_651, "p_1257->g_651", print_hash_value);
    transparent_crc(p_1257->g_657, "p_1257->g_657", print_hash_value);
    transparent_crc(p_1257->g_687, "p_1257->g_687", print_hash_value);
    transparent_crc(p_1257->g_753, "p_1257->g_753", print_hash_value);
    transparent_crc(p_1257->g_797, "p_1257->g_797", print_hash_value);
    transparent_crc(p_1257->g_862, "p_1257->g_862", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1257->g_863[i][j][k], "p_1257->g_863[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1257->g_942, "p_1257->g_942", print_hash_value);
    transparent_crc(p_1257->g_975, "p_1257->g_975", print_hash_value);
    transparent_crc(p_1257->g_991, "p_1257->g_991", print_hash_value);
    transparent_crc(p_1257->g_992, "p_1257->g_992", print_hash_value);
    transparent_crc(p_1257->g_1055, "p_1257->g_1055", print_hash_value);
    transparent_crc(p_1257->g_1098.f0, "p_1257->g_1098.f0", print_hash_value);
    transparent_crc(p_1257->g_1099, "p_1257->g_1099", print_hash_value);
    transparent_crc(p_1257->g_1138, "p_1257->g_1138", print_hash_value);
    transparent_crc(p_1257->g_1143, "p_1257->g_1143", print_hash_value);
    transparent_crc(p_1257->g_1255, "p_1257->g_1255", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1257->g_1256[i], "p_1257->g_1256[i]", print_hash_value);

    }
    transparent_crc(p_1257->v_collective, "p_1257->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
