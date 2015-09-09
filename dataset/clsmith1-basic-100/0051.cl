// ---fake_divergence -g 46,39,5 -l 2,1,1
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


// Seed: 51

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint32_t  f0;
   volatile uint32_t  f1;
   uint64_t  f2;
   int32_t  f3;
   int8_t  f4;
};

struct S1 {
   uint32_t  f0;
   volatile uint16_t  f1;
   struct S0  f2;
   uint16_t  f3;
   volatile int64_t  f4;
   volatile uint8_t  f5;
   int32_t  f6;
   int64_t  f7;
   int32_t  f8;
};

struct S2 {
   int16_t  f0;
   volatile uint32_t  f1;
   int32_t  f2;
   uint32_t  f3;
   int32_t  f4;
};

struct S3 {
   uint32_t  f0;
   volatile uint16_t  f1;
   uint16_t  f2;
   uint8_t  f3;
   struct S2  f4;
   volatile int64_t  f5;
   volatile int16_t  f6;
   struct S0  f7;
   struct S1  f8;
   uint32_t  f9;
};

struct S4 {
    uint32_t g_6;
    struct S1 g_10;
    struct S1 *g_9;
    uint32_t g_22[4];
    uint32_t *g_30;
    uint32_t **g_29;
    uint32_t *** volatile g_28;
    struct S3 g_31;
    volatile struct S3 g_37;
    struct S0 g_41[9][4][2];
    struct S1 g_63;
    int32_t *g_86[1][4][6];
    volatile struct S1 g_96;
    volatile struct S1 g_97[3][3];
    volatile uint16_t g_132;
    struct S0 g_149;
    int64_t g_155[4];
    int32_t **g_167;
    struct S3 g_168[1][10];
    struct S3 g_172;
    int32_t g_175;
    struct S3 * volatile g_190;
    struct S1 g_232;
    int32_t g_237;
    int8_t g_239;
    struct S2 g_282;
    uint64_t *g_288;
    struct S0 *g_320;
    struct S3 g_321[9];
    struct S1 g_332[2];
    struct S1 *g_331;
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
struct S0  func_1(struct S4 * p_334);
struct S1 * func_2(struct S1 * p_3, uint64_t  p_4, struct S1 * p_5, struct S4 * p_334);
struct S3  func_11(struct S1 * p_12, struct S4 * p_334);
struct S0 * func_14(uint64_t  p_15, uint64_t  p_16, int32_t * p_17, uint32_t  p_18, struct S4 * p_334);
struct S3  func_25(int32_t  p_26, struct S4 * p_334);
int32_t * func_32(uint32_t  p_33, struct S0 * p_34, uint16_t  p_35, uint32_t  p_36, struct S4 * p_334);
struct S3  func_48(uint8_t  p_49, struct S1 * p_50, uint32_t * p_51, struct S4 * p_334);
struct S1 * func_52(uint32_t *** p_53, int32_t  p_54, struct S1 * p_55, struct S4 * p_334);
uint32_t *** func_56(int8_t  p_57, struct S4 * p_334);
int32_t  func_68(int64_t  p_69, int64_t  p_70, int32_t * p_71, int8_t  p_72, struct S4 * p_334);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_334->g_6 p_334->g_9 p_334->g_10.f2.f3 p_334->g_10.f6 p_334->g_22 p_334->g_28 p_334->g_31 p_334->g_37 p_334->g_41.f4 p_334->g_41.f2 p_334->g_86 p_334->g_96 p_334->g_10.f7 p_334->g_97.f7 p_334->g_132 p_334->g_63.f2.f4 p_334->g_149 p_334->g_63.f2.f2 p_334->g_168 p_334->g_10.f2.f4 p_334->g_172 p_334->g_10.f2.f1 p_334->g_167 p_334->g_10 p_334->g_175 p_334->g_30 p_334->g_232 p_334->g_237 p_334->g_282 p_334->g_155 p_334->g_288 p_334->g_321 p_334->g_331 p_334->g_320 p_334->g_41
 * writes: p_334->g_10.f6 p_334->g_22 p_334->g_29 p_334->g_31.f8.f2.f3 p_334->g_30 p_334->g_41.f2 p_334->g_97 p_334->g_31.f2 p_334->g_10.f7 p_334->g_31.f4.f0 p_334->g_31.f3 p_334->g_31.f8.f7 p_334->g_31.f7.f2 p_334->g_63.f2.f4 p_334->g_63.f2.f2 p_334->g_155 p_334->g_167 p_334->g_10.f2.f4 p_334->g_175 p_334->g_168 p_334->g_172.f8.f6 p_334->g_86 p_334->g_10.f0 p_334->g_172.f3 p_334->g_172.f7.f4 p_334->g_237 p_334->g_31.f0 p_334->g_172.f9 p_334->g_288 p_334->g_282.f0 p_334->g_172.f7.f2 p_334->g_172.f4.f4 p_334->g_232.f2.f2 p_334->g_320 p_334->g_9
 */
struct S0  func_1(struct S4 * p_334)
{ /* block id: 4 */
    int32_t l_322 = (-1L);
    struct S1 *l_323[8][6][5] = {{{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8}},{{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8}},{{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8}},{{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8}},{{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8}},{{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8}},{{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8}},{{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8},{&p_334->g_31.f8,&p_334->g_31.f8,&p_334->g_10,&p_334->g_172.f8,&p_334->g_31.f8}}};
    struct S1 **l_328 = &p_334->g_9;
    struct S1 **l_329 = (void*)0;
    struct S1 **l_330 = &l_323[3][2][3];
    int i, j, k;
    (*l_328) = func_2(((*l_330) = ((*l_328) = (((p_334->g_6 & ((+(((safe_div_func_int16_t_s_s((~(p_334->g_9 == (func_11(&p_334->g_10, p_334) , &p_334->g_97[0][1]))), (safe_lshift_func_int8_t_s_s((((((safe_sub_func_uint32_t_u_u((p_334->g_10.f8 == FAKE_DIVERGE(p_334->global_0_offset, get_global_id(0), 10)), 0xD4106940L)) <= 7L) , l_322) , 18446744073709551615UL) != p_334->g_172.f8.f3), 1)))) ^ (-5L)) >= p_334->g_172.f2)) > p_334->g_232.f2.f4)) < l_322) , l_323[7][0][3]))), l_322, p_334->g_331, p_334);
    return (*p_334->g_320);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
struct S1 * func_2(struct S1 * p_3, uint64_t  p_4, struct S1 * p_5, struct S4 * p_334)
{ /* block id: 191 */
    struct S1 *l_333 = (void*)0;
    return l_333;
}


/* ------------------------------------------ */
/* 
 * reads : p_334->g_10.f2.f3 p_334->g_10.f6 p_334->g_22 p_334->g_28 p_334->g_31 p_334->g_37 p_334->g_41.f4 p_334->g_41.f2 p_334->g_86 p_334->g_96 p_334->g_10.f7 p_334->g_97.f7 p_334->g_132 p_334->g_63.f2.f4 p_334->g_149 p_334->g_63.f2.f2 p_334->g_168 p_334->g_10.f2.f4 p_334->g_172 p_334->g_10.f2.f1 p_334->g_167 p_334->g_9 p_334->g_10 p_334->g_175 p_334->g_30 p_334->g_232 p_334->g_237 p_334->g_282 p_334->g_155 p_334->g_288 p_334->g_321
 * writes: p_334->g_10.f6 p_334->g_22 p_334->g_29 p_334->g_31.f8.f2.f3 p_334->g_30 p_334->g_41.f2 p_334->g_97 p_334->g_31.f2 p_334->g_10.f7 p_334->g_31.f4.f0 p_334->g_31.f3 p_334->g_31.f8.f7 p_334->g_31.f7.f2 p_334->g_63.f2.f4 p_334->g_63.f2.f2 p_334->g_155 p_334->g_167 p_334->g_10.f2.f4 p_334->g_175 p_334->g_168 p_334->g_172.f8.f6 p_334->g_86 p_334->g_10.f0 p_334->g_172.f3 p_334->g_172.f7.f4 p_334->g_237 p_334->g_31.f0 p_334->g_172.f9 p_334->g_288 p_334->g_282.f0 p_334->g_172.f7.f2 p_334->g_172.f4.f4 p_334->g_232.f2.f2 p_334->g_320
 */
struct S3  func_11(struct S1 * p_12, struct S4 * p_334)
{ /* block id: 5 */
    int32_t *l_13 = &p_334->g_10.f6;
    uint32_t *l_21 = &p_334->g_22[1];
    struct S0 *l_40 = &p_334->g_41[5][3][0];
    int32_t **l_318 = &p_334->g_86[0][3][1];
    struct S0 **l_319[4];
    int i;
    for (i = 0; i < 4; i++)
        l_319[i] = (void*)0;
    (*l_13) = (-1L);
    p_334->g_320 = func_14(p_334->g_10.f2.f3, (*l_13), ((*l_318) = (((safe_div_func_int32_t_s_s((-1L), (--(*l_21)))) , func_25((*l_13), p_334)) , func_32((p_334->g_37 , (safe_sub_func_uint64_t_u_u((*l_13), ((248UL <= (*l_13)) >= (*l_13))))), l_40, p_334->g_31.f8.f8, p_334->g_41[5][3][0].f4, p_334))), p_334->g_31.f4.f3, p_334);
    (*l_13) = (*l_13);
    return p_334->g_321[6];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
struct S0 * func_14(uint64_t  p_15, uint64_t  p_16, int32_t * p_17, uint32_t  p_18, struct S4 * p_334)
{ /* block id: 184 */
    return &p_334->g_41[5][1][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_334->g_28 p_334->g_31
 * writes: p_334->g_29
 */
struct S3  func_25(int32_t  p_26, struct S4 * p_334)
{ /* block id: 8 */
    uint32_t **l_27 = (void*)0;
    (*p_334->g_28) = l_27;
    return p_334->g_31;
}


/* ------------------------------------------ */
/* 
 * reads : p_334->g_31.f8.f2.f3 p_334->g_31.f4.f4 p_334->g_31.f4.f1 p_334->g_41.f2 p_334->g_37.f1 p_334->g_37.f8.f2.f4 p_334->g_86 p_334->g_96 p_334->g_31.f2 p_334->g_10.f7 p_334->g_31.f4.f0 p_334->g_97.f7 p_334->g_132 p_334->g_149 p_334->g_63.f2.f2 p_334->g_168 p_334->g_172 p_334->g_10.f2.f1 p_334->g_167 p_334->g_9 p_334->g_10 p_334->g_175 p_334->g_31.f8.f5 p_334->g_30 p_334->g_22 p_334->g_232 p_334->g_237 p_334->g_282 p_334->g_155 p_334->g_31.f8.f3 p_334->g_37.f8.f3 p_334->g_288 p_334->g_31.f7.f2 p_334->g_31.f3 p_334->g_31.f8.f7 p_334->g_63.f2.f4
 * writes: p_334->g_31.f8.f2.f3 p_334->g_30 p_334->g_41.f2 p_334->g_97 p_334->g_31.f2 p_334->g_10.f7 p_334->g_31.f4.f0 p_334->g_31.f3 p_334->g_31.f8.f7 p_334->g_31.f7.f2 p_334->g_63.f2.f4 p_334->g_63.f2.f2 p_334->g_155 p_334->g_167 p_334->g_10.f2.f4 p_334->g_175 p_334->g_168 p_334->g_172.f8.f6 p_334->g_86 p_334->g_22 p_334->g_10.f0 p_334->g_172.f3 p_334->g_172.f7.f4 p_334->g_237 p_334->g_31.f0 p_334->g_172.f9 p_334->g_288 p_334->g_282.f0 p_334->g_172.f7.f2 p_334->g_172.f4.f4 p_334->g_232.f2.f2
 */
int32_t * func_32(uint32_t  p_33, struct S0 * p_34, uint16_t  p_35, uint32_t  p_36, struct S4 * p_334)
{ /* block id: 11 */
    int64_t l_42 = 0x1B9F5DD3F592D988L;
    int32_t *l_43 = &p_334->g_31.f8.f2.f3;
    int32_t l_47[9] = {0x6CA199CCL,0x6CA199CCL,0x6CA199CCL,0x6CA199CCL,0x6CA199CCL,0x6CA199CCL,0x6CA199CCL,0x6CA199CCL,0x6CA199CCL};
    struct S1 *l_62 = &p_334->g_63;
    uint64_t *l_289[7] = {&p_334->g_149.f2,&p_334->g_149.f2,&p_334->g_149.f2,&p_334->g_149.f2,&p_334->g_149.f2,&p_334->g_149.f2,&p_334->g_149.f2};
    uint16_t l_308[5][4] = {{9UL,9UL,9UL,9UL},{9UL,9UL,9UL,9UL},{9UL,9UL,9UL,9UL},{9UL,9UL,9UL,9UL},{9UL,9UL,9UL,9UL}};
    uint64_t l_309 = 0xE2634249E246085BL;
    int32_t *l_310[3][2];
    int32_t l_311 = 0x290C9B68L;
    uint32_t l_312[10] = {0x00FAC8AEL,4294967289UL,0x00FAC8AEL,0x00FAC8AEL,4294967289UL,0x00FAC8AEL,0x00FAC8AEL,4294967289UL,0x00FAC8AEL,0x00FAC8AEL};
    int32_t *l_317 = &p_334->g_232.f2.f3;
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
            l_310[i][j] = &p_334->g_172.f8.f8;
    }
lbl_238:
    (*l_43) |= l_42;
    for (p_334->g_31.f8.f2.f3 = 0; (p_334->g_31.f8.f2.f3 == (-29)); --p_334->g_31.f8.f2.f3)
    { /* block id: 15 */
        int32_t *l_46[3][4][5] = {{{&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3},{&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3},{&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3},{&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3}},{{&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3},{&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3},{&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3},{&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3}},{{&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3},{&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3},{&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3},{&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_41[5][3][0].f3}}};
        struct S3 *l_191 = &p_334->g_168[0][8];
        int64_t *l_206 = &p_334->g_63.f7;
        int32_t l_261 = 0x2B10C815L;
        int32_t l_302 = 0L;
        int i, j, k;
        l_47[4] &= (*l_43);
        (*l_191) = func_48(p_35, func_52(func_56((safe_sub_func_uint16_t_u_u(0x5DA9L, ((*l_43) || (*l_43)))), p_334), p_334->g_31.f4.f1, l_62, p_334), l_43, p_334);
        for (p_334->g_172.f8.f6 = 20; (p_334->g_172.f8.f6 != 10); --p_334->g_172.f8.f6)
        { /* block id: 110 */
            int32_t **l_200 = &p_334->g_86[0][3][5];
            int32_t ***l_201 = &p_334->g_167;
            int32_t l_211 = 0x72C52D89L;
            int32_t l_212 = 0x335756EAL;
            int32_t l_213 = 0x0DE46F40L;
            uint32_t *l_229 = &p_334->g_168[0][8].f0;
            int32_t l_241 = 0x265BD8CDL;
            int32_t l_243 = 0x2D268FF0L;
            int32_t l_245[9][1][7] = {{{0x7E65246FL,2L,0x5F707AB5L,4L,0x5F707AB5L,2L,0x7E65246FL}},{{0x7E65246FL,2L,0x5F707AB5L,4L,0x5F707AB5L,2L,0x7E65246FL}},{{0x7E65246FL,2L,0x5F707AB5L,4L,0x5F707AB5L,2L,0x7E65246FL}},{{0x7E65246FL,2L,0x5F707AB5L,4L,0x5F707AB5L,2L,0x7E65246FL}},{{0x7E65246FL,2L,0x5F707AB5L,4L,0x5F707AB5L,2L,0x7E65246FL}},{{0x7E65246FL,2L,0x5F707AB5L,4L,0x5F707AB5L,2L,0x7E65246FL}},{{0x7E65246FL,2L,0x5F707AB5L,4L,0x5F707AB5L,2L,0x7E65246FL}},{{0x7E65246FL,2L,0x5F707AB5L,4L,0x5F707AB5L,2L,0x7E65246FL}},{{0x7E65246FL,2L,0x5F707AB5L,4L,0x5F707AB5L,2L,0x7E65246FL}}};
            uint64_t *l_287 = &p_334->g_31.f7.f2;
            int16_t *l_296 = &p_334->g_282.f0;
            int i, j, k;
            for (p_35 = 27; (p_35 != 57); p_35 = safe_add_func_int32_t_s_s(p_35, 4))
            { /* block id: 113 */
                (*p_334->g_167) = &l_47[5];
            }
            if (((*p_334->g_9) , (p_36 , (safe_div_func_int32_t_s_s(0x4748E04DL, ((*p_334->g_30) ^= ((safe_mul_func_uint32_t_u_u((&l_46[1][2][1] == ((*l_201) = l_200)), ((safe_sub_func_int64_t_s_s(((safe_add_func_uint64_t_u_u((p_334->g_175 , (l_206 != (void*)0)), (safe_mod_func_uint16_t_u_u(1UL, (-1L))))) , p_334->g_31.f8.f5), FAKE_DIVERGE(p_334->local_0_offset, get_local_id(0), 10))) < p_36))) , p_36)))))))
            { /* block id: 118 */
                uint8_t l_209 = 0xE1L;
                int32_t *l_210[4][7][6] = {{{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3}},{{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3}},{{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3}},{{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3},{&p_334->g_168[0][8].f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_172.f7.f3,&p_334->g_31.f8.f2.f3,&p_334->g_168[0][8].f7.f3,&p_334->g_168[0][8].f7.f3}}};
                int i, j, k;
                l_209 |= (p_334->g_172.f8.f5 ^ (p_35 >= (*p_334->g_30)));
                if (p_36)
                    continue;
                return l_210[3][6][5];
            }
            else
            { /* block id: 122 */
                uint16_t l_214 = 8UL;
                int16_t l_217 = 0x2106L;
                l_214++;
                l_212 ^= l_217;
            }
            for (p_334->g_63.f2.f2 = 0; (p_334->g_63.f2.f2 < 28); p_334->g_63.f2.f2 = safe_add_func_uint64_t_u_u(p_334->g_63.f2.f2, 4))
            { /* block id: 128 */
                int32_t l_236 = 0x0570FE4DL;
                int32_t l_240 = 0x5571F691L;
                int16_t l_242 = 0x25C7L;
                int32_t l_244[7] = {(-10L),0x521767ADL,(-10L),(-10L),0x521767ADL,(-10L),(-10L)};
                uint32_t l_246 = 0xB323F832L;
                uint64_t l_262 = 5UL;
                int i;
                if ((*l_43))
                { /* block id: 129 */
                    int32_t *l_225 = (void*)0;
                    uint8_t *l_226 = &p_334->g_172.f3;
                    for (p_334->g_10.f0 = 0; (p_334->g_10.f0 <= 55); ++p_334->g_10.f0)
                    { /* block id: 132 */
                        uint16_t l_222[7][4][9] = {{{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL}},{{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL}},{{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL}},{{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL}},{{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL}},{{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL}},{{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL},{0x51EEL,65533UL,1UL,0UL,65527UL,0xEB9AL,0x5918L,0x61C2L,0xA1EFL}}};
                        int i, j, k;
                        l_222[2][3][5]--;
                        return l_225;
                    }
                    l_236 = (func_48(((*l_226)--), &p_334->g_63, l_229, p_334) , (safe_rshift_func_int8_t_s_s((((p_334->g_172.f7.f4 = (((p_334->g_232 , GROUP_DIVERGE(2, 1)) , ((((safe_unary_minus_func_uint8_t_u((p_33 >= 0x5B70L))) , ((*l_226) = 0x5AL)) < (((safe_rshift_func_uint8_t_u_u(((p_334->g_172.f8.f2.f3 && 0x7F0EL) & 0x3E7C1001F02DDE9BL), p_36)) < 254UL) || 1UL)) , 0x0EL)) | FAKE_DIVERGE(p_334->local_0_offset, get_local_id(0), 10))) >= 6L) & p_334->g_10.f2.f2), l_236)));
                }
                else
                { /* block id: 140 */
                    p_334->g_237 |= p_33;
                }
                if (p_334->g_232.f0)
                    goto lbl_238;
                ++l_246;
                for (l_240 = 0; (l_240 <= (-6)); l_240 = safe_sub_func_int64_t_s_s(l_240, 1))
                { /* block id: 147 */
                    int32_t l_253 = 0x020971E5L;
                    int32_t l_254 = 0x0B5377A9L;
                    int64_t l_255 = 0L;
                    int32_t l_257 = 0x4C0C3141L;
                    int32_t l_258 = 3L;
                    int32_t l_259[4][10][2] = {{{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L}},{{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L}},{{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L}},{{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L},{(-1L),0x2E6D7B41L}}};
                    int8_t l_277 = 0x3BL;
                    int32_t l_286 = (-1L);
                    int i, j, k;
                    for (p_334->g_31.f0 = 0; (p_334->g_31.f0 <= 42); p_334->g_31.f0 = safe_add_func_uint8_t_u_u(p_334->g_31.f0, 1))
                    { /* block id: 150 */
                        int32_t l_256 = 0x695FD66AL;
                        int32_t l_260[3][3] = {{0L,0L,0L},{0L,0L,0L},{0L,0L,0L}};
                        uint32_t *l_271 = (void*)0;
                        uint32_t *l_272 = &p_334->g_172.f9;
                        int32_t l_285 = 0L;
                        int i, j;
                        l_262--;
                        (*l_200) = (*p_334->g_167);
                        l_285 |= ((((*p_334->g_30) > (((+(safe_mod_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u(((((*l_272) = (++(*l_229))) != (safe_mul_func_uint8_t_u_u((((((((FAKE_DIVERGE(p_334->global_1_offset, get_global_id(1), 10) & (((safe_mod_func_int32_t_s_s((l_256 = (l_277 = (l_241 ^= p_33))), p_33)) <= (safe_sub_func_int64_t_s_s((safe_sub_func_int32_t_s_s((p_334->g_282 , (l_47[4] = p_36)), l_244[6])), ((safe_add_func_uint16_t_u_u((2L <= p_33), p_334->g_172.f0)) , p_334->g_10.f7)))) ^ 8L)) != p_334->g_282.f2) && 0x51DC9B1BL) != p_334->g_155[2]) , p_35) <= l_253) , 0x0EL), p_36))) ^ 0x2FDCF51DL), p_33)), 0xD187F74AL))) < p_35) && p_334->g_31.f8.f3)) & FAKE_DIVERGE(p_334->global_0_offset, get_global_id(0), 10)) , p_35);
                    }
                    if (l_286)
                        break;
                }
            }
            if ((((((((p_334->g_288 = l_287) != l_289[3]) , p_334->g_31.f4.f4) > (safe_mul_func_int16_t_s_s((safe_sub_func_int16_t_s_s(0x1DE1L, (((safe_lshift_func_int16_t_s_s((((*l_296) = 0x6E9BL) > (0x74F8E16CL && ((safe_div_func_uint8_t_u_u((((l_43 == l_43) , GROUP_DIVERGE(2, 1)) , (p_36 , p_36)), 1L)) , (*l_43)))), p_35)) < (-2L)) != 0x711F4E9AL))), (*l_43)))) >= p_36) == 0x7272C0A0L) <= 0xF5AFL))
            { /* block id: 166 */
                uint32_t l_299 = 9UL;
                ++l_299;
                if (l_302)
                    continue;
            }
            else
            { /* block id: 169 */
                int32_t *l_303 = (void*)0;
                return l_303;
            }
        }
        l_309 |= ((p_334->g_37.f8.f3 && ((*p_334->g_288)++)) | (safe_mod_func_int32_t_s_s(p_35, l_308[0][0])));
    }
    l_312[8]++;
    for (p_334->g_172.f4.f4 = 25; (p_334->g_172.f4.f4 <= (-28)); p_334->g_172.f4.f4 = safe_sub_func_uint8_t_u_u(p_334->g_172.f4.f4, 8))
    { /* block id: 179 */
        for (p_334->g_232.f2.f2 = 0; p_334->g_232.f2.f2 < 9; p_334->g_232.f2.f2 += 1)
        {
            l_47[p_334->g_232.f2.f2] = 2L;
        }
    }
    return l_317;
}


/* ------------------------------------------ */
/* 
 * reads : p_334->g_168 p_334->g_10.f2.f4 p_334->g_172 p_334->g_31.f8.f2.f3 p_334->g_10.f2.f1
 * writes: p_334->g_167 p_334->g_10.f2.f4 p_334->g_175
 */
struct S3  func_48(uint8_t  p_49, struct S1 * p_50, uint32_t * p_51, struct S4 * p_334)
{ /* block id: 86 */
    int32_t **l_162[7];
    int32_t ***l_163 = (void*)0;
    int32_t ***l_164 = (void*)0;
    int32_t **l_166 = &p_334->g_86[0][3][1];
    int32_t ***l_165[5][9] = {{&l_166,&l_166,&l_166,&l_166,&l_166,&l_166,&l_166,&l_166,&l_166},{&l_166,&l_166,&l_166,&l_166,&l_166,&l_166,&l_166,&l_166,&l_166},{&l_166,&l_166,&l_166,&l_166,&l_166,&l_166,&l_166,&l_166,&l_166},{&l_166,&l_166,&l_166,&l_166,&l_166,&l_166,&l_166,&l_166,&l_166},{&l_166,&l_166,&l_166,&l_166,&l_166,&l_166,&l_166,&l_166,&l_166}};
    int32_t *l_188 = &p_334->g_41[5][3][0].f3;
    int i, j;
    for (i = 0; i < 7; i++)
        l_162[i] = &p_334->g_86[0][3][1];
    if (((p_334->g_167 = (l_162[2] = l_162[3])) != &p_334->g_86[0][3][0]))
    { /* block id: 89 */
        return p_334->g_168[0][8];
    }
    else
    { /* block id: 91 */
        uint32_t l_169 = 0UL;
        l_169++;
    }
    for (p_334->g_10.f2.f4 = 0; (p_334->g_10.f2.f4 >= 0); p_334->g_10.f2.f4 -= 1)
    { /* block id: 96 */
        return p_334->g_172;
    }
    p_334->g_175 = (safe_lshift_func_uint16_t_u_s((~0x37EEL), p_334->g_168[0][8].f9));
    if (p_49)
    { /* block id: 100 */
        int8_t l_176 = (-5L);
        l_176 = 0x30C084BAL;
    }
    else
    { /* block id: 102 */
        int32_t l_177 = 0x7FFDB3A3L;
        int32_t *l_189[6] = {&p_334->g_31.f8.f6,&p_334->g_31.f8.f6,&p_334->g_31.f8.f6,&p_334->g_31.f8.f6,&p_334->g_31.f8.f6,&p_334->g_31.f8.f6};
        int i;
        l_177 = ((l_177 > (*p_51)) ^ (((safe_sub_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u((*p_51), (0x39FE4E48L >= (safe_add_func_uint64_t_u_u(p_49, p_334->g_168[0][8].f0))))), ((safe_mul_func_int8_t_s_s(p_334->g_10.f2.f1, ((p_49 < GROUP_DIVERGE(1, 1)) && (safe_mul_func_int16_t_s_s((l_177 <= l_177), p_49))))) , (*p_51)))) > l_177) == p_49));
        l_189[0] = l_188;
    }
    return p_334->g_168[0][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_334->g_41.f2 p_334->g_37.f1 p_334->g_37.f8.f2.f4 p_334->g_86 p_334->g_96 p_334->g_31.f2 p_334->g_10.f7 p_334->g_31.f4.f0 p_334->g_97.f7 p_334->g_31.f3 p_334->g_132 p_334->g_31.f8.f7 p_334->g_31.f7.f2 p_334->g_63.f2.f4 p_334->g_149 p_334->g_63.f2.f2
 * writes: p_334->g_30 p_334->g_41.f2 p_334->g_97 p_334->g_31.f2 p_334->g_10.f7 p_334->g_31.f4.f0 p_334->g_31.f3 p_334->g_31.f8.f7 p_334->g_31.f7.f2 p_334->g_63.f2.f4 p_334->g_63.f2.f2 p_334->g_155
 */
struct S1 * func_52(uint32_t *** p_53, int32_t  p_54, struct S1 * p_55, struct S4 * p_334)
{ /* block id: 20 */
    uint32_t *l_79 = &p_334->g_22[2];
    uint32_t **l_80[8];
    uint64_t *l_81 = &p_334->g_41[5][3][0].f2;
    int32_t l_84 = (-8L);
    int32_t l_85 = (-1L);
    int64_t *l_154 = &p_334->g_155[2];
    int32_t *l_156[7] = {&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3,&p_334->g_31.f7.f3};
    uint64_t l_157 = 1UL;
    int32_t **l_158 = (void*)0;
    int32_t **l_159 = (void*)0;
    int32_t **l_160 = &l_156[1];
    int32_t *l_161 = (void*)0;
    int i;
    for (i = 0; i < 8; i++)
        l_80[i] = &p_334->g_30;
    l_157 &= (safe_sub_func_uint64_t_u_u((safe_div_func_uint16_t_u_u(0x708EL, ((((*l_154) = (func_68((safe_mod_func_int64_t_s_s(((((safe_add_func_int64_t_s_s(0x3BB9ED89F8139FD1L, p_54)) ^ (+(((l_85 &= (0x7D7CL < (safe_rshift_func_uint8_t_u_u(((p_54 ^ (0xD83FAE531C9E7018L > ((l_79 == (p_334->g_30 = l_79)) >= ((((((*l_81)--) || (((+0xA6810593L) == l_84) < FAKE_DIVERGE(p_334->global_0_offset, get_global_id(0), 10))) , p_54) <= p_54) == p_334->g_37.f1)))) < 0x0B83L), 0)))) <= p_54) == 2L))) , p_334->g_37.f8.f2.f4) & p_54), p_54)), p_54, p_334->g_86[0][3][1], l_84, p_334) > 0x233CFE36L)) , FAKE_DIVERGE(p_334->local_1_offset, get_local_id(1), 10)) & FAKE_DIVERGE(p_334->global_1_offset, get_global_id(1), 10)))), 18446744073709551609UL));
    l_161 = ((*l_160) = p_334->g_86[0][3][0]);
    return p_55;
}


/* ------------------------------------------ */
/* 
 * reads : p_334->g_31.f4.f4
 * writes:
 */
uint32_t *** func_56(int8_t  p_57, struct S4 * p_334)
{ /* block id: 17 */
    uint32_t l_60 = 0xC764A6B6L;
    uint32_t ***l_61 = (void*)0;
    l_60 = ((-2L) | p_334->g_31.f4.f4);
    return l_61;
}


/* ------------------------------------------ */
/* 
 * reads : p_334->g_96 p_334->g_31.f2 p_334->g_10.f7 p_334->g_31.f4.f0 p_334->g_97.f7 p_334->g_31.f3 p_334->g_132 p_334->g_31.f8.f7 p_334->g_31.f7.f2 p_334->g_63.f2.f4 p_334->g_149 p_334->g_63.f2.f2
 * writes: p_334->g_97 p_334->g_31.f2 p_334->g_10.f7 p_334->g_31.f4.f0 p_334->g_31.f3 p_334->g_31.f8.f7 p_334->g_31.f7.f2 p_334->g_63.f2.f4 p_334->g_63.f2.f2
 */
int32_t  func_68(int64_t  p_69, int64_t  p_70, int32_t * p_71, int8_t  p_72, struct S4 * p_334)
{ /* block id: 24 */
    uint16_t l_91 = 0xE02FL;
    uint16_t l_119 = 0x19B2L;
    uint32_t ***l_120[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_123[2][9][6] = {{{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L}},{{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L},{4L,0x636EABFEL,(-1L),0x17FB4F8FL,0x18B03686L,1L}}};
    int32_t l_124[9][6] = {{0x1A5DA188L,0x22322850L,0x52A5CC3BL,0L,0x52A5CC3BL,0x22322850L},{0x1A5DA188L,0x22322850L,0x52A5CC3BL,0L,0x52A5CC3BL,0x22322850L},{0x1A5DA188L,0x22322850L,0x52A5CC3BL,0L,0x52A5CC3BL,0x22322850L},{0x1A5DA188L,0x22322850L,0x52A5CC3BL,0L,0x52A5CC3BL,0x22322850L},{0x1A5DA188L,0x22322850L,0x52A5CC3BL,0L,0x52A5CC3BL,0x22322850L},{0x1A5DA188L,0x22322850L,0x52A5CC3BL,0L,0x52A5CC3BL,0x22322850L},{0x1A5DA188L,0x22322850L,0x52A5CC3BL,0L,0x52A5CC3BL,0x22322850L},{0x1A5DA188L,0x22322850L,0x52A5CC3BL,0L,0x52A5CC3BL,0x22322850L},{0x1A5DA188L,0x22322850L,0x52A5CC3BL,0L,0x52A5CC3BL,0x22322850L}};
    int i, j, k;
lbl_146:
    if ((safe_rshift_func_int8_t_s_s(p_69, 4)))
    { /* block id: 25 */
        int32_t *l_89[5] = {&p_334->g_63.f8,&p_334->g_63.f8,&p_334->g_63.f8,&p_334->g_63.f8,&p_334->g_63.f8};
        int32_t **l_90 = &l_89[3];
        int i;
        (*l_90) = l_89[4];
        l_91++;
        for (p_69 = 0; (p_69 > 12); ++p_69)
        { /* block id: 30 */
            p_334->g_97[0][1] = p_334->g_96;
            (*l_90) = (void*)0;
        }
    }
    else
    { /* block id: 34 */
        int8_t l_102 = 0x21L;
        uint16_t *l_109 = (void*)0;
        uint16_t *l_110 = &p_334->g_31.f2;
        int64_t *l_111 = (void*)0;
        int64_t *l_112 = (void*)0;
        int64_t *l_113 = &p_334->g_10.f7;
        int16_t *l_114 = &p_334->g_31.f4.f0;
        uint32_t l_121[10][2][4] = {{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}}};
        int32_t *l_122[6] = {&p_334->g_63.f2.f3,&p_334->g_63.f2.f3,&p_334->g_63.f2.f3,&p_334->g_63.f2.f3,&p_334->g_63.f2.f3,&p_334->g_63.f2.f3};
        int i, j, k;
        l_124[5][1] = ((safe_div_func_int64_t_s_s((safe_lshift_func_uint8_t_u_s((l_102 >= (safe_div_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u(((((safe_div_func_int32_t_s_s(((0xD850L && ((*l_110) |= 65535UL)) || (((*l_113) |= l_91) | ((((*l_114) ^= 0x3B2BL) != ((l_123[0][2][2] = (safe_sub_func_int16_t_s_s((((p_69 ^ ((safe_add_func_int32_t_s_s(l_119, ((void*)0 != l_120[1]))) && 0x5EL)) , p_69) != l_121[0][1][3]), l_102))) && 0L)) != p_70))), l_119)) != l_91) , p_70) ^ 0x5D5C810E69176DB3L), 8)), 0x13B3BC16L))), p_334->g_97[0][1].f7)), l_91)) , p_69);
        return p_70;
    }
    for (p_334->g_31.f3 = 0; (p_334->g_31.f3 == 36); p_334->g_31.f3 = safe_add_func_uint64_t_u_u(p_334->g_31.f3, 5))
    { /* block id: 44 */
        int32_t *l_127 = &p_334->g_63.f8;
        int32_t *l_128[5][9] = {{&p_334->g_31.f8.f8,&p_334->g_63.f2.f3,&p_334->g_63.f8,&p_334->g_31.f7.f3,&p_334->g_63.f2.f3,&p_334->g_31.f7.f3,&p_334->g_63.f8,&p_334->g_63.f2.f3,&p_334->g_31.f8.f8},{&p_334->g_31.f8.f8,&p_334->g_63.f2.f3,&p_334->g_63.f8,&p_334->g_31.f7.f3,&p_334->g_63.f2.f3,&p_334->g_31.f7.f3,&p_334->g_63.f8,&p_334->g_63.f2.f3,&p_334->g_31.f8.f8},{&p_334->g_31.f8.f8,&p_334->g_63.f2.f3,&p_334->g_63.f8,&p_334->g_31.f7.f3,&p_334->g_63.f2.f3,&p_334->g_31.f7.f3,&p_334->g_63.f8,&p_334->g_63.f2.f3,&p_334->g_31.f8.f8},{&p_334->g_31.f8.f8,&p_334->g_63.f2.f3,&p_334->g_63.f8,&p_334->g_31.f7.f3,&p_334->g_63.f2.f3,&p_334->g_31.f7.f3,&p_334->g_63.f8,&p_334->g_63.f2.f3,&p_334->g_31.f8.f8},{&p_334->g_31.f8.f8,&p_334->g_63.f2.f3,&p_334->g_63.f8,&p_334->g_31.f7.f3,&p_334->g_63.f2.f3,&p_334->g_31.f7.f3,&p_334->g_63.f8,&p_334->g_63.f2.f3,&p_334->g_31.f8.f8}};
        uint32_t l_129 = 0x445EA3A6L;
        uint64_t l_133 = 18446744073709551607UL;
        int i, j;
        --l_129;
        if (p_334->g_132)
            break;
        ++l_133;
    }
    for (p_334->g_31.f8.f7 = 0; (p_334->g_31.f8.f7 >= (-3)); p_334->g_31.f8.f7--)
    { /* block id: 51 */
        uint64_t l_145 = 6UL;
        int16_t *l_152 = &p_334->g_31.f4.f0;
        for (p_334->g_31.f7.f2 = 0; (p_334->g_31.f7.f2 >= 50); p_334->g_31.f7.f2 = safe_add_func_uint64_t_u_u(p_334->g_31.f7.f2, 9))
        { /* block id: 54 */
            uint64_t *l_150 = &p_334->g_63.f2.f2;
            int16_t *l_151[10];
            int32_t l_153 = 0L;
            int i;
            for (i = 0; i < 10; i++)
                l_151[i] = &p_334->g_31.f4.f0;
            for (p_334->g_10.f7 = 0; p_334->g_10.f7 < 9; p_334->g_10.f7 += 1)
            {
                for (p_334->g_63.f2.f4 = 0; p_334->g_63.f2.f4 < 6; p_334->g_63.f2.f4 += 1)
                {
                    l_124[p_334->g_10.f7][p_334->g_63.f2.f4] = (-4L);
                }
            }
            for (p_334->g_63.f2.f4 = 0; (p_334->g_63.f2.f4 != 13); p_334->g_63.f2.f4++)
            { /* block id: 58 */
                uint8_t l_144[1][8] = {{0xFFL,0xFFL,0xFFL,0xFFL,0xFFL,0xFFL,0xFFL,0xFFL}};
                int i, j;
                for (p_334->g_31.f2 = (-12); (p_334->g_31.f2 < 30); ++p_334->g_31.f2)
                { /* block id: 61 */
                    if (l_144[0][6])
                        break;
                    return l_145;
                }
                if (p_69)
                    continue;
                if (l_91)
                    goto lbl_146;
                for (p_334->g_31.f4.f0 = 1; (p_334->g_31.f4.f0 == 17); p_334->g_31.f4.f0 = safe_add_func_int32_t_s_s(p_334->g_31.f4.f0, 3))
                { /* block id: 69 */
                    if (p_70)
                        break;
                    if (l_145)
                        continue;
                    if (p_72)
                        break;
                }
            }
            l_153 = (((*l_150) |= (p_334->g_149 , FAKE_DIVERGE(p_334->global_1_offset, get_global_id(1), 10))) | (l_151[8] != (GROUP_DIVERGE(1, 1) , l_152)));
            return l_153;
        }
    }
    return p_72;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_335;
    struct S4* p_334 = &c_335;
    struct S4 c_336 = {
        0UL, // p_334->g_6
        {1UL,0UL,{8UL,3UL,5UL,-2L,0x09L},0xBA80L,-6L,1UL,0x2F34E401L,0x133BD3E018EBDB88L,0L}, // p_334->g_10
        &p_334->g_10, // p_334->g_9
        {0UL,0UL,0UL,0UL}, // p_334->g_22
        &p_334->g_22[2], // p_334->g_30
        &p_334->g_30, // p_334->g_29
        &p_334->g_29, // p_334->g_28
        {0UL,0x5B90L,1UL,1UL,{0x4E6AL,0x687144B0L,6L,8UL,-1L},0x57F696D9C50E9BCCL,0x05A4L,{0x52006156L,4294967293UL,0x4C003918A56EC073L,0L,-10L},{0x686F2FD6L,0x9D3DL,{0UL,4294967290UL,0x3C814B4F51244104L,2L,0L},65535UL,0x0768350085190AC5L,0xCFL,0x48C36471L,-1L,0x5F84107AL},1UL}, // p_334->g_31
        {1UL,65535UL,1UL,0x47L,{1L,4294967295UL,-2L,0x676EBEA2L,-1L},-3L,0x030CL,{0xE9FA02E7L,0x85461874L,18446744073709551615UL,0x017AB3EDL,-1L},{4294967295UL,0x3424L,{2UL,0x88A645C9L,0xB20FBFF5949B8DC1L,0L,7L},1UL,0x6F3BFE2B3C890F2BL,255UL,0x3DAACF22L,0x13C57988D8264474L,6L},4294967295UL}, // p_334->g_37
        {{{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}}},{{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}}},{{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}}},{{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}}},{{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}}},{{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}}},{{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}}},{{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}}},{{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}},{{1UL,4294967295UL,18446744073709551612UL,0x5479D400L,3L},{0UL,0xB315D791L,4UL,0x10506A2FL,-1L}}}}, // p_334->g_41
        {0x7B0B943BL,0xED4AL,{0x7E17490EL,4294967295UL,0x250EA03869566788L,-2L,0x60L},1UL,0x125984574007049AL,0x98L,0x0EBE4DD1L,0x430123A930B9A071L,-4L}, // p_334->g_63
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_334->g_86
        {0x8F5414D4L,4UL,{0x5EDD6FC3L,4UL,9UL,0x4A2DBAE0L,0x41L},0x4430L,-1L,0x28L,0x79E9157DL,0L,0x5E056A2DL}, // p_334->g_96
        {{{8UL,1UL,{1UL,0xA9068132L,0x74B1CADDAF615AE1L,0x15EBBC8AL,1L},0xED7CL,0x2EBDECA35FFEB3D9L,0xB5L,0x1DC6DA78L,0x0305E1E2CE7851C3L,0x644479DDL},{8UL,1UL,{1UL,0xA9068132L,0x74B1CADDAF615AE1L,0x15EBBC8AL,1L},0xED7CL,0x2EBDECA35FFEB3D9L,0xB5L,0x1DC6DA78L,0x0305E1E2CE7851C3L,0x644479DDL},{8UL,1UL,{1UL,0xA9068132L,0x74B1CADDAF615AE1L,0x15EBBC8AL,1L},0xED7CL,0x2EBDECA35FFEB3D9L,0xB5L,0x1DC6DA78L,0x0305E1E2CE7851C3L,0x644479DDL}},{{8UL,1UL,{1UL,0xA9068132L,0x74B1CADDAF615AE1L,0x15EBBC8AL,1L},0xED7CL,0x2EBDECA35FFEB3D9L,0xB5L,0x1DC6DA78L,0x0305E1E2CE7851C3L,0x644479DDL},{8UL,1UL,{1UL,0xA9068132L,0x74B1CADDAF615AE1L,0x15EBBC8AL,1L},0xED7CL,0x2EBDECA35FFEB3D9L,0xB5L,0x1DC6DA78L,0x0305E1E2CE7851C3L,0x644479DDL},{8UL,1UL,{1UL,0xA9068132L,0x74B1CADDAF615AE1L,0x15EBBC8AL,1L},0xED7CL,0x2EBDECA35FFEB3D9L,0xB5L,0x1DC6DA78L,0x0305E1E2CE7851C3L,0x644479DDL}},{{8UL,1UL,{1UL,0xA9068132L,0x74B1CADDAF615AE1L,0x15EBBC8AL,1L},0xED7CL,0x2EBDECA35FFEB3D9L,0xB5L,0x1DC6DA78L,0x0305E1E2CE7851C3L,0x644479DDL},{8UL,1UL,{1UL,0xA9068132L,0x74B1CADDAF615AE1L,0x15EBBC8AL,1L},0xED7CL,0x2EBDECA35FFEB3D9L,0xB5L,0x1DC6DA78L,0x0305E1E2CE7851C3L,0x644479DDL},{8UL,1UL,{1UL,0xA9068132L,0x74B1CADDAF615AE1L,0x15EBBC8AL,1L},0xED7CL,0x2EBDECA35FFEB3D9L,0xB5L,0x1DC6DA78L,0x0305E1E2CE7851C3L,0x644479DDL}}}, // p_334->g_97
        0x2797L, // p_334->g_132
        {0xE0134C85L,0x2FB669E5L,0x8098C1AC6D7CA564L,-1L,0x0FL}, // p_334->g_149
        {(-9L),(-9L),(-9L),(-9L)}, // p_334->g_155
        &p_334->g_86[0][3][0], // p_334->g_167
        {{{0UL,0xBAB6L,0x5D1BL,1UL,{0x1D18L,0x7FEE7BA1L,0x35C0B4A3L,0xD1404974L,0x28AF2213L},-1L,-1L,{4294967295UL,0x66A7D6DEL,6UL,-1L,0L},{0xF45DE004L,65535UL,{0x9D85DCAEL,0xFCA33EDAL,0UL,4L,0L},0x4FDCL,-1L,0x57L,0x795C1075L,-5L,0x15DDF07EL},0UL},{0xA6A6CC4BL,65535UL,65535UL,1UL,{-1L,0xBF83E59CL,0x31CB31A4L,0xF1862472L,0x77899742L},5L,0x7A33L,{0x82C2173EL,4294967293UL,18446744073709551608UL,0L,-1L},{1UL,0UL,{0xED4432CDL,4UL,8UL,1L,0x61L},0x8303L,1L,0x82L,0L,-1L,0x38D54B95L},1UL},{4294967288UL,0x8FEBL,65532UL,254UL,{1L,4294967292UL,0x4F849704L,0x4C28CC7EL,-1L},-9L,0x265FL,{4294967290UL,0xB8C7C3C8L,3UL,0x6FA96651L,7L},{0x13559EBFL,0x7E21L,{0UL,1UL,0x0A32A7FBA8DB656AL,0x627CF19DL,0x53L},0x0729L,0x26EBDB7B933FA155L,0x45L,0x2F4DB1DDL,0x66D5966140496E67L,0x1E8B4BC9L},4294967288UL},{0xA6A6CC4BL,65535UL,65535UL,1UL,{-1L,0xBF83E59CL,0x31CB31A4L,0xF1862472L,0x77899742L},5L,0x7A33L,{0x82C2173EL,4294967293UL,18446744073709551608UL,0L,-1L},{1UL,0UL,{0xED4432CDL,4UL,8UL,1L,0x61L},0x8303L,1L,0x82L,0L,-1L,0x38D54B95L},1UL},{0UL,0xBAB6L,0x5D1BL,1UL,{0x1D18L,0x7FEE7BA1L,0x35C0B4A3L,0xD1404974L,0x28AF2213L},-1L,-1L,{4294967295UL,0x66A7D6DEL,6UL,-1L,0L},{0xF45DE004L,65535UL,{0x9D85DCAEL,0xFCA33EDAL,0UL,4L,0L},0x4FDCL,-1L,0x57L,0x795C1075L,-5L,0x15DDF07EL},0UL},{0UL,0xBAB6L,0x5D1BL,1UL,{0x1D18L,0x7FEE7BA1L,0x35C0B4A3L,0xD1404974L,0x28AF2213L},-1L,-1L,{4294967295UL,0x66A7D6DEL,6UL,-1L,0L},{0xF45DE004L,65535UL,{0x9D85DCAEL,0xFCA33EDAL,0UL,4L,0L},0x4FDCL,-1L,0x57L,0x795C1075L,-5L,0x15DDF07EL},0UL},{0xA6A6CC4BL,65535UL,65535UL,1UL,{-1L,0xBF83E59CL,0x31CB31A4L,0xF1862472L,0x77899742L},5L,0x7A33L,{0x82C2173EL,4294967293UL,18446744073709551608UL,0L,-1L},{1UL,0UL,{0xED4432CDL,4UL,8UL,1L,0x61L},0x8303L,1L,0x82L,0L,-1L,0x38D54B95L},1UL},{4294967288UL,0x8FEBL,65532UL,254UL,{1L,4294967292UL,0x4F849704L,0x4C28CC7EL,-1L},-9L,0x265FL,{4294967290UL,0xB8C7C3C8L,3UL,0x6FA96651L,7L},{0x13559EBFL,0x7E21L,{0UL,1UL,0x0A32A7FBA8DB656AL,0x627CF19DL,0x53L},0x0729L,0x26EBDB7B933FA155L,0x45L,0x2F4DB1DDL,0x66D5966140496E67L,0x1E8B4BC9L},4294967288UL},{0xA6A6CC4BL,65535UL,65535UL,1UL,{-1L,0xBF83E59CL,0x31CB31A4L,0xF1862472L,0x77899742L},5L,0x7A33L,{0x82C2173EL,4294967293UL,18446744073709551608UL,0L,-1L},{1UL,0UL,{0xED4432CDL,4UL,8UL,1L,0x61L},0x8303L,1L,0x82L,0L,-1L,0x38D54B95L},1UL},{0UL,0xBAB6L,0x5D1BL,1UL,{0x1D18L,0x7FEE7BA1L,0x35C0B4A3L,0xD1404974L,0x28AF2213L},-1L,-1L,{4294967295UL,0x66A7D6DEL,6UL,-1L,0L},{0xF45DE004L,65535UL,{0x9D85DCAEL,0xFCA33EDAL,0UL,4L,0L},0x4FDCL,-1L,0x57L,0x795C1075L,-5L,0x15DDF07EL},0UL}}}, // p_334->g_168
        {0x34197403L,1UL,0xFCF0L,255UL,{0x629AL,4294967289UL,0x4EDE4670L,0x3E5AED78L,5L},-6L,0L,{2UL,0xC5EC6427L,18446744073709551615UL,0x435E2D46L,-1L},{0xBD1DEC3EL,0UL,{0x9529CCDEL,0x32DBB870L,1UL,0x54B7B306L,0L},0x6824L,0x73776FB466774B2EL,1UL,0x4002340BL,-8L,0x6CC4598CL},0x62526B35L}, // p_334->g_172
        1L, // p_334->g_175
        (void*)0, // p_334->g_190
        {8UL,0x90D8L,{0UL,0UL,18446744073709551614UL,0x15D0D0D1L,0L},1UL,4L,0x2DL,-8L,1L,0x777DE3ABL}, // p_334->g_232
        0L, // p_334->g_237
        (-6L), // p_334->g_239
        {1L,0xAD60485FL,0x52DF4F30L,0x1A207398L,0x02F430CCL}, // p_334->g_282
        &p_334->g_172.f7.f2, // p_334->g_288
        &p_334->g_63.f2, // p_334->g_320
        {{4294967292UL,0x1411L,0xF945L,255UL,{0x3228L,0x7F155CA4L,0x57ED804CL,0x5145E37BL,0x36BB37E0L},9L,-5L,{4294967295UL,3UL,0xB4B8BE10360DF2ADL,0L,0x34L},{7UL,1UL,{4294967293UL,0x01471548L,0x44C1B90AD3E716C7L,0x15447101L,4L},0UL,0L,255UL,-5L,-1L,-1L},4294967289UL},{4294967292UL,0x1411L,0xF945L,255UL,{0x3228L,0x7F155CA4L,0x57ED804CL,0x5145E37BL,0x36BB37E0L},9L,-5L,{4294967295UL,3UL,0xB4B8BE10360DF2ADL,0L,0x34L},{7UL,1UL,{4294967293UL,0x01471548L,0x44C1B90AD3E716C7L,0x15447101L,4L},0UL,0L,255UL,-5L,-1L,-1L},4294967289UL},{4294967292UL,0x1411L,0xF945L,255UL,{0x3228L,0x7F155CA4L,0x57ED804CL,0x5145E37BL,0x36BB37E0L},9L,-5L,{4294967295UL,3UL,0xB4B8BE10360DF2ADL,0L,0x34L},{7UL,1UL,{4294967293UL,0x01471548L,0x44C1B90AD3E716C7L,0x15447101L,4L},0UL,0L,255UL,-5L,-1L,-1L},4294967289UL},{4294967292UL,0x1411L,0xF945L,255UL,{0x3228L,0x7F155CA4L,0x57ED804CL,0x5145E37BL,0x36BB37E0L},9L,-5L,{4294967295UL,3UL,0xB4B8BE10360DF2ADL,0L,0x34L},{7UL,1UL,{4294967293UL,0x01471548L,0x44C1B90AD3E716C7L,0x15447101L,4L},0UL,0L,255UL,-5L,-1L,-1L},4294967289UL},{4294967292UL,0x1411L,0xF945L,255UL,{0x3228L,0x7F155CA4L,0x57ED804CL,0x5145E37BL,0x36BB37E0L},9L,-5L,{4294967295UL,3UL,0xB4B8BE10360DF2ADL,0L,0x34L},{7UL,1UL,{4294967293UL,0x01471548L,0x44C1B90AD3E716C7L,0x15447101L,4L},0UL,0L,255UL,-5L,-1L,-1L},4294967289UL},{4294967292UL,0x1411L,0xF945L,255UL,{0x3228L,0x7F155CA4L,0x57ED804CL,0x5145E37BL,0x36BB37E0L},9L,-5L,{4294967295UL,3UL,0xB4B8BE10360DF2ADL,0L,0x34L},{7UL,1UL,{4294967293UL,0x01471548L,0x44C1B90AD3E716C7L,0x15447101L,4L},0UL,0L,255UL,-5L,-1L,-1L},4294967289UL},{4294967292UL,0x1411L,0xF945L,255UL,{0x3228L,0x7F155CA4L,0x57ED804CL,0x5145E37BL,0x36BB37E0L},9L,-5L,{4294967295UL,3UL,0xB4B8BE10360DF2ADL,0L,0x34L},{7UL,1UL,{4294967293UL,0x01471548L,0x44C1B90AD3E716C7L,0x15447101L,4L},0UL,0L,255UL,-5L,-1L,-1L},4294967289UL},{4294967292UL,0x1411L,0xF945L,255UL,{0x3228L,0x7F155CA4L,0x57ED804CL,0x5145E37BL,0x36BB37E0L},9L,-5L,{4294967295UL,3UL,0xB4B8BE10360DF2ADL,0L,0x34L},{7UL,1UL,{4294967293UL,0x01471548L,0x44C1B90AD3E716C7L,0x15447101L,4L},0UL,0L,255UL,-5L,-1L,-1L},4294967289UL},{4294967292UL,0x1411L,0xF945L,255UL,{0x3228L,0x7F155CA4L,0x57ED804CL,0x5145E37BL,0x36BB37E0L},9L,-5L,{4294967295UL,3UL,0xB4B8BE10360DF2ADL,0L,0x34L},{7UL,1UL,{4294967293UL,0x01471548L,0x44C1B90AD3E716C7L,0x15447101L,4L},0UL,0L,255UL,-5L,-1L,-1L},4294967289UL}}, // p_334->g_321
        {{0x9C1F61B8L,0x2B6FL,{9UL,4294967295UL,0xE30D5D3782240BB4L,7L,-5L},0UL,1L,9UL,-1L,-6L,0x1008952FL},{0x9C1F61B8L,0x2B6FL,{9UL,4294967295UL,0xE30D5D3782240BB4L,7L,-5L},0UL,1L,9UL,-1L,-6L,0x1008952FL}}, // p_334->g_332
        &p_334->g_332[1], // p_334->g_331
        sequence_input[get_global_id(0)], // p_334->global_0_offset
        sequence_input[get_global_id(1)], // p_334->global_1_offset
        sequence_input[get_global_id(2)], // p_334->global_2_offset
        sequence_input[get_local_id(0)], // p_334->local_0_offset
        sequence_input[get_local_id(1)], // p_334->local_1_offset
        sequence_input[get_local_id(2)], // p_334->local_2_offset
        sequence_input[get_group_id(0)], // p_334->group_0_offset
        sequence_input[get_group_id(1)], // p_334->group_1_offset
        sequence_input[get_group_id(2)], // p_334->group_2_offset
    };
    c_335 = c_336;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_334);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_334->g_6, "p_334->g_6", print_hash_value);
    transparent_crc(p_334->g_10.f0, "p_334->g_10.f0", print_hash_value);
    transparent_crc(p_334->g_10.f1, "p_334->g_10.f1", print_hash_value);
    transparent_crc(p_334->g_10.f2.f0, "p_334->g_10.f2.f0", print_hash_value);
    transparent_crc(p_334->g_10.f2.f1, "p_334->g_10.f2.f1", print_hash_value);
    transparent_crc(p_334->g_10.f2.f2, "p_334->g_10.f2.f2", print_hash_value);
    transparent_crc(p_334->g_10.f2.f3, "p_334->g_10.f2.f3", print_hash_value);
    transparent_crc(p_334->g_10.f2.f4, "p_334->g_10.f2.f4", print_hash_value);
    transparent_crc(p_334->g_10.f3, "p_334->g_10.f3", print_hash_value);
    transparent_crc(p_334->g_10.f4, "p_334->g_10.f4", print_hash_value);
    transparent_crc(p_334->g_10.f5, "p_334->g_10.f5", print_hash_value);
    transparent_crc(p_334->g_10.f6, "p_334->g_10.f6", print_hash_value);
    transparent_crc(p_334->g_10.f7, "p_334->g_10.f7", print_hash_value);
    transparent_crc(p_334->g_10.f8, "p_334->g_10.f8", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_334->g_22[i], "p_334->g_22[i]", print_hash_value);

    }
    transparent_crc(p_334->g_31.f0, "p_334->g_31.f0", print_hash_value);
    transparent_crc(p_334->g_31.f1, "p_334->g_31.f1", print_hash_value);
    transparent_crc(p_334->g_31.f2, "p_334->g_31.f2", print_hash_value);
    transparent_crc(p_334->g_31.f3, "p_334->g_31.f3", print_hash_value);
    transparent_crc(p_334->g_31.f4.f0, "p_334->g_31.f4.f0", print_hash_value);
    transparent_crc(p_334->g_31.f4.f1, "p_334->g_31.f4.f1", print_hash_value);
    transparent_crc(p_334->g_31.f4.f2, "p_334->g_31.f4.f2", print_hash_value);
    transparent_crc(p_334->g_31.f4.f3, "p_334->g_31.f4.f3", print_hash_value);
    transparent_crc(p_334->g_31.f4.f4, "p_334->g_31.f4.f4", print_hash_value);
    transparent_crc(p_334->g_31.f5, "p_334->g_31.f5", print_hash_value);
    transparent_crc(p_334->g_31.f6, "p_334->g_31.f6", print_hash_value);
    transparent_crc(p_334->g_31.f7.f0, "p_334->g_31.f7.f0", print_hash_value);
    transparent_crc(p_334->g_31.f7.f1, "p_334->g_31.f7.f1", print_hash_value);
    transparent_crc(p_334->g_31.f7.f2, "p_334->g_31.f7.f2", print_hash_value);
    transparent_crc(p_334->g_31.f7.f3, "p_334->g_31.f7.f3", print_hash_value);
    transparent_crc(p_334->g_31.f7.f4, "p_334->g_31.f7.f4", print_hash_value);
    transparent_crc(p_334->g_31.f8.f0, "p_334->g_31.f8.f0", print_hash_value);
    transparent_crc(p_334->g_31.f8.f1, "p_334->g_31.f8.f1", print_hash_value);
    transparent_crc(p_334->g_31.f8.f2.f0, "p_334->g_31.f8.f2.f0", print_hash_value);
    transparent_crc(p_334->g_31.f8.f2.f1, "p_334->g_31.f8.f2.f1", print_hash_value);
    transparent_crc(p_334->g_31.f8.f2.f2, "p_334->g_31.f8.f2.f2", print_hash_value);
    transparent_crc(p_334->g_31.f8.f2.f3, "p_334->g_31.f8.f2.f3", print_hash_value);
    transparent_crc(p_334->g_31.f8.f2.f4, "p_334->g_31.f8.f2.f4", print_hash_value);
    transparent_crc(p_334->g_31.f8.f3, "p_334->g_31.f8.f3", print_hash_value);
    transparent_crc(p_334->g_31.f8.f4, "p_334->g_31.f8.f4", print_hash_value);
    transparent_crc(p_334->g_31.f8.f5, "p_334->g_31.f8.f5", print_hash_value);
    transparent_crc(p_334->g_31.f8.f6, "p_334->g_31.f8.f6", print_hash_value);
    transparent_crc(p_334->g_31.f8.f7, "p_334->g_31.f8.f7", print_hash_value);
    transparent_crc(p_334->g_31.f8.f8, "p_334->g_31.f8.f8", print_hash_value);
    transparent_crc(p_334->g_31.f9, "p_334->g_31.f9", print_hash_value);
    transparent_crc(p_334->g_37.f0, "p_334->g_37.f0", print_hash_value);
    transparent_crc(p_334->g_37.f1, "p_334->g_37.f1", print_hash_value);
    transparent_crc(p_334->g_37.f2, "p_334->g_37.f2", print_hash_value);
    transparent_crc(p_334->g_37.f3, "p_334->g_37.f3", print_hash_value);
    transparent_crc(p_334->g_37.f4.f0, "p_334->g_37.f4.f0", print_hash_value);
    transparent_crc(p_334->g_37.f4.f1, "p_334->g_37.f4.f1", print_hash_value);
    transparent_crc(p_334->g_37.f4.f2, "p_334->g_37.f4.f2", print_hash_value);
    transparent_crc(p_334->g_37.f4.f3, "p_334->g_37.f4.f3", print_hash_value);
    transparent_crc(p_334->g_37.f4.f4, "p_334->g_37.f4.f4", print_hash_value);
    transparent_crc(p_334->g_37.f5, "p_334->g_37.f5", print_hash_value);
    transparent_crc(p_334->g_37.f6, "p_334->g_37.f6", print_hash_value);
    transparent_crc(p_334->g_37.f7.f0, "p_334->g_37.f7.f0", print_hash_value);
    transparent_crc(p_334->g_37.f7.f1, "p_334->g_37.f7.f1", print_hash_value);
    transparent_crc(p_334->g_37.f7.f2, "p_334->g_37.f7.f2", print_hash_value);
    transparent_crc(p_334->g_37.f7.f3, "p_334->g_37.f7.f3", print_hash_value);
    transparent_crc(p_334->g_37.f7.f4, "p_334->g_37.f7.f4", print_hash_value);
    transparent_crc(p_334->g_37.f8.f0, "p_334->g_37.f8.f0", print_hash_value);
    transparent_crc(p_334->g_37.f8.f1, "p_334->g_37.f8.f1", print_hash_value);
    transparent_crc(p_334->g_37.f8.f2.f0, "p_334->g_37.f8.f2.f0", print_hash_value);
    transparent_crc(p_334->g_37.f8.f2.f1, "p_334->g_37.f8.f2.f1", print_hash_value);
    transparent_crc(p_334->g_37.f8.f2.f2, "p_334->g_37.f8.f2.f2", print_hash_value);
    transparent_crc(p_334->g_37.f8.f2.f3, "p_334->g_37.f8.f2.f3", print_hash_value);
    transparent_crc(p_334->g_37.f8.f2.f4, "p_334->g_37.f8.f2.f4", print_hash_value);
    transparent_crc(p_334->g_37.f8.f3, "p_334->g_37.f8.f3", print_hash_value);
    transparent_crc(p_334->g_37.f8.f4, "p_334->g_37.f8.f4", print_hash_value);
    transparent_crc(p_334->g_37.f8.f5, "p_334->g_37.f8.f5", print_hash_value);
    transparent_crc(p_334->g_37.f8.f6, "p_334->g_37.f8.f6", print_hash_value);
    transparent_crc(p_334->g_37.f8.f7, "p_334->g_37.f8.f7", print_hash_value);
    transparent_crc(p_334->g_37.f8.f8, "p_334->g_37.f8.f8", print_hash_value);
    transparent_crc(p_334->g_37.f9, "p_334->g_37.f9", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_334->g_41[i][j][k].f0, "p_334->g_41[i][j][k].f0", print_hash_value);
                transparent_crc(p_334->g_41[i][j][k].f1, "p_334->g_41[i][j][k].f1", print_hash_value);
                transparent_crc(p_334->g_41[i][j][k].f2, "p_334->g_41[i][j][k].f2", print_hash_value);
                transparent_crc(p_334->g_41[i][j][k].f3, "p_334->g_41[i][j][k].f3", print_hash_value);
                transparent_crc(p_334->g_41[i][j][k].f4, "p_334->g_41[i][j][k].f4", print_hash_value);

            }
        }
    }
    transparent_crc(p_334->g_63.f0, "p_334->g_63.f0", print_hash_value);
    transparent_crc(p_334->g_63.f1, "p_334->g_63.f1", print_hash_value);
    transparent_crc(p_334->g_63.f2.f0, "p_334->g_63.f2.f0", print_hash_value);
    transparent_crc(p_334->g_63.f2.f1, "p_334->g_63.f2.f1", print_hash_value);
    transparent_crc(p_334->g_63.f2.f2, "p_334->g_63.f2.f2", print_hash_value);
    transparent_crc(p_334->g_63.f2.f3, "p_334->g_63.f2.f3", print_hash_value);
    transparent_crc(p_334->g_63.f2.f4, "p_334->g_63.f2.f4", print_hash_value);
    transparent_crc(p_334->g_63.f3, "p_334->g_63.f3", print_hash_value);
    transparent_crc(p_334->g_63.f4, "p_334->g_63.f4", print_hash_value);
    transparent_crc(p_334->g_63.f5, "p_334->g_63.f5", print_hash_value);
    transparent_crc(p_334->g_63.f6, "p_334->g_63.f6", print_hash_value);
    transparent_crc(p_334->g_63.f7, "p_334->g_63.f7", print_hash_value);
    transparent_crc(p_334->g_63.f8, "p_334->g_63.f8", print_hash_value);
    transparent_crc(p_334->g_96.f0, "p_334->g_96.f0", print_hash_value);
    transparent_crc(p_334->g_96.f1, "p_334->g_96.f1", print_hash_value);
    transparent_crc(p_334->g_96.f2.f0, "p_334->g_96.f2.f0", print_hash_value);
    transparent_crc(p_334->g_96.f2.f1, "p_334->g_96.f2.f1", print_hash_value);
    transparent_crc(p_334->g_96.f2.f2, "p_334->g_96.f2.f2", print_hash_value);
    transparent_crc(p_334->g_96.f2.f3, "p_334->g_96.f2.f3", print_hash_value);
    transparent_crc(p_334->g_96.f2.f4, "p_334->g_96.f2.f4", print_hash_value);
    transparent_crc(p_334->g_96.f3, "p_334->g_96.f3", print_hash_value);
    transparent_crc(p_334->g_96.f4, "p_334->g_96.f4", print_hash_value);
    transparent_crc(p_334->g_96.f5, "p_334->g_96.f5", print_hash_value);
    transparent_crc(p_334->g_96.f6, "p_334->g_96.f6", print_hash_value);
    transparent_crc(p_334->g_96.f7, "p_334->g_96.f7", print_hash_value);
    transparent_crc(p_334->g_96.f8, "p_334->g_96.f8", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_334->g_97[i][j].f0, "p_334->g_97[i][j].f0", print_hash_value);
            transparent_crc(p_334->g_97[i][j].f1, "p_334->g_97[i][j].f1", print_hash_value);
            transparent_crc(p_334->g_97[i][j].f2.f0, "p_334->g_97[i][j].f2.f0", print_hash_value);
            transparent_crc(p_334->g_97[i][j].f2.f1, "p_334->g_97[i][j].f2.f1", print_hash_value);
            transparent_crc(p_334->g_97[i][j].f2.f2, "p_334->g_97[i][j].f2.f2", print_hash_value);
            transparent_crc(p_334->g_97[i][j].f2.f3, "p_334->g_97[i][j].f2.f3", print_hash_value);
            transparent_crc(p_334->g_97[i][j].f2.f4, "p_334->g_97[i][j].f2.f4", print_hash_value);
            transparent_crc(p_334->g_97[i][j].f3, "p_334->g_97[i][j].f3", print_hash_value);
            transparent_crc(p_334->g_97[i][j].f4, "p_334->g_97[i][j].f4", print_hash_value);
            transparent_crc(p_334->g_97[i][j].f5, "p_334->g_97[i][j].f5", print_hash_value);
            transparent_crc(p_334->g_97[i][j].f6, "p_334->g_97[i][j].f6", print_hash_value);
            transparent_crc(p_334->g_97[i][j].f7, "p_334->g_97[i][j].f7", print_hash_value);
            transparent_crc(p_334->g_97[i][j].f8, "p_334->g_97[i][j].f8", print_hash_value);

        }
    }
    transparent_crc(p_334->g_132, "p_334->g_132", print_hash_value);
    transparent_crc(p_334->g_149.f0, "p_334->g_149.f0", print_hash_value);
    transparent_crc(p_334->g_149.f1, "p_334->g_149.f1", print_hash_value);
    transparent_crc(p_334->g_149.f2, "p_334->g_149.f2", print_hash_value);
    transparent_crc(p_334->g_149.f3, "p_334->g_149.f3", print_hash_value);
    transparent_crc(p_334->g_149.f4, "p_334->g_149.f4", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_334->g_155[i], "p_334->g_155[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_334->g_168[i][j].f0, "p_334->g_168[i][j].f0", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f1, "p_334->g_168[i][j].f1", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f2, "p_334->g_168[i][j].f2", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f3, "p_334->g_168[i][j].f3", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f4.f0, "p_334->g_168[i][j].f4.f0", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f4.f1, "p_334->g_168[i][j].f4.f1", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f4.f2, "p_334->g_168[i][j].f4.f2", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f4.f3, "p_334->g_168[i][j].f4.f3", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f4.f4, "p_334->g_168[i][j].f4.f4", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f5, "p_334->g_168[i][j].f5", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f6, "p_334->g_168[i][j].f6", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f7.f0, "p_334->g_168[i][j].f7.f0", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f7.f1, "p_334->g_168[i][j].f7.f1", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f7.f2, "p_334->g_168[i][j].f7.f2", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f7.f3, "p_334->g_168[i][j].f7.f3", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f7.f4, "p_334->g_168[i][j].f7.f4", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f8.f0, "p_334->g_168[i][j].f8.f0", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f8.f1, "p_334->g_168[i][j].f8.f1", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f8.f2.f0, "p_334->g_168[i][j].f8.f2.f0", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f8.f2.f1, "p_334->g_168[i][j].f8.f2.f1", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f8.f2.f2, "p_334->g_168[i][j].f8.f2.f2", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f8.f2.f3, "p_334->g_168[i][j].f8.f2.f3", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f8.f2.f4, "p_334->g_168[i][j].f8.f2.f4", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f8.f3, "p_334->g_168[i][j].f8.f3", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f8.f4, "p_334->g_168[i][j].f8.f4", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f8.f5, "p_334->g_168[i][j].f8.f5", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f8.f6, "p_334->g_168[i][j].f8.f6", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f8.f7, "p_334->g_168[i][j].f8.f7", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f8.f8, "p_334->g_168[i][j].f8.f8", print_hash_value);
            transparent_crc(p_334->g_168[i][j].f9, "p_334->g_168[i][j].f9", print_hash_value);

        }
    }
    transparent_crc(p_334->g_172.f0, "p_334->g_172.f0", print_hash_value);
    transparent_crc(p_334->g_172.f1, "p_334->g_172.f1", print_hash_value);
    transparent_crc(p_334->g_172.f2, "p_334->g_172.f2", print_hash_value);
    transparent_crc(p_334->g_172.f3, "p_334->g_172.f3", print_hash_value);
    transparent_crc(p_334->g_172.f4.f0, "p_334->g_172.f4.f0", print_hash_value);
    transparent_crc(p_334->g_172.f4.f1, "p_334->g_172.f4.f1", print_hash_value);
    transparent_crc(p_334->g_172.f4.f2, "p_334->g_172.f4.f2", print_hash_value);
    transparent_crc(p_334->g_172.f4.f3, "p_334->g_172.f4.f3", print_hash_value);
    transparent_crc(p_334->g_172.f4.f4, "p_334->g_172.f4.f4", print_hash_value);
    transparent_crc(p_334->g_172.f5, "p_334->g_172.f5", print_hash_value);
    transparent_crc(p_334->g_172.f6, "p_334->g_172.f6", print_hash_value);
    transparent_crc(p_334->g_172.f7.f0, "p_334->g_172.f7.f0", print_hash_value);
    transparent_crc(p_334->g_172.f7.f1, "p_334->g_172.f7.f1", print_hash_value);
    transparent_crc(p_334->g_172.f7.f2, "p_334->g_172.f7.f2", print_hash_value);
    transparent_crc(p_334->g_172.f7.f3, "p_334->g_172.f7.f3", print_hash_value);
    transparent_crc(p_334->g_172.f7.f4, "p_334->g_172.f7.f4", print_hash_value);
    transparent_crc(p_334->g_172.f8.f0, "p_334->g_172.f8.f0", print_hash_value);
    transparent_crc(p_334->g_172.f8.f1, "p_334->g_172.f8.f1", print_hash_value);
    transparent_crc(p_334->g_172.f8.f2.f0, "p_334->g_172.f8.f2.f0", print_hash_value);
    transparent_crc(p_334->g_172.f8.f2.f1, "p_334->g_172.f8.f2.f1", print_hash_value);
    transparent_crc(p_334->g_172.f8.f2.f2, "p_334->g_172.f8.f2.f2", print_hash_value);
    transparent_crc(p_334->g_172.f8.f2.f3, "p_334->g_172.f8.f2.f3", print_hash_value);
    transparent_crc(p_334->g_172.f8.f2.f4, "p_334->g_172.f8.f2.f4", print_hash_value);
    transparent_crc(p_334->g_172.f8.f3, "p_334->g_172.f8.f3", print_hash_value);
    transparent_crc(p_334->g_172.f8.f4, "p_334->g_172.f8.f4", print_hash_value);
    transparent_crc(p_334->g_172.f8.f5, "p_334->g_172.f8.f5", print_hash_value);
    transparent_crc(p_334->g_172.f8.f6, "p_334->g_172.f8.f6", print_hash_value);
    transparent_crc(p_334->g_172.f8.f7, "p_334->g_172.f8.f7", print_hash_value);
    transparent_crc(p_334->g_172.f8.f8, "p_334->g_172.f8.f8", print_hash_value);
    transparent_crc(p_334->g_172.f9, "p_334->g_172.f9", print_hash_value);
    transparent_crc(p_334->g_175, "p_334->g_175", print_hash_value);
    transparent_crc(p_334->g_232.f0, "p_334->g_232.f0", print_hash_value);
    transparent_crc(p_334->g_232.f1, "p_334->g_232.f1", print_hash_value);
    transparent_crc(p_334->g_232.f2.f0, "p_334->g_232.f2.f0", print_hash_value);
    transparent_crc(p_334->g_232.f2.f1, "p_334->g_232.f2.f1", print_hash_value);
    transparent_crc(p_334->g_232.f2.f2, "p_334->g_232.f2.f2", print_hash_value);
    transparent_crc(p_334->g_232.f2.f3, "p_334->g_232.f2.f3", print_hash_value);
    transparent_crc(p_334->g_232.f2.f4, "p_334->g_232.f2.f4", print_hash_value);
    transparent_crc(p_334->g_232.f3, "p_334->g_232.f3", print_hash_value);
    transparent_crc(p_334->g_232.f4, "p_334->g_232.f4", print_hash_value);
    transparent_crc(p_334->g_232.f5, "p_334->g_232.f5", print_hash_value);
    transparent_crc(p_334->g_232.f6, "p_334->g_232.f6", print_hash_value);
    transparent_crc(p_334->g_232.f7, "p_334->g_232.f7", print_hash_value);
    transparent_crc(p_334->g_232.f8, "p_334->g_232.f8", print_hash_value);
    transparent_crc(p_334->g_237, "p_334->g_237", print_hash_value);
    transparent_crc(p_334->g_239, "p_334->g_239", print_hash_value);
    transparent_crc(p_334->g_282.f0, "p_334->g_282.f0", print_hash_value);
    transparent_crc(p_334->g_282.f1, "p_334->g_282.f1", print_hash_value);
    transparent_crc(p_334->g_282.f2, "p_334->g_282.f2", print_hash_value);
    transparent_crc(p_334->g_282.f3, "p_334->g_282.f3", print_hash_value);
    transparent_crc(p_334->g_282.f4, "p_334->g_282.f4", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_334->g_321[i].f0, "p_334->g_321[i].f0", print_hash_value);
        transparent_crc(p_334->g_321[i].f1, "p_334->g_321[i].f1", print_hash_value);
        transparent_crc(p_334->g_321[i].f2, "p_334->g_321[i].f2", print_hash_value);
        transparent_crc(p_334->g_321[i].f3, "p_334->g_321[i].f3", print_hash_value);
        transparent_crc(p_334->g_321[i].f4.f0, "p_334->g_321[i].f4.f0", print_hash_value);
        transparent_crc(p_334->g_321[i].f4.f1, "p_334->g_321[i].f4.f1", print_hash_value);
        transparent_crc(p_334->g_321[i].f4.f2, "p_334->g_321[i].f4.f2", print_hash_value);
        transparent_crc(p_334->g_321[i].f4.f3, "p_334->g_321[i].f4.f3", print_hash_value);
        transparent_crc(p_334->g_321[i].f4.f4, "p_334->g_321[i].f4.f4", print_hash_value);
        transparent_crc(p_334->g_321[i].f5, "p_334->g_321[i].f5", print_hash_value);
        transparent_crc(p_334->g_321[i].f6, "p_334->g_321[i].f6", print_hash_value);
        transparent_crc(p_334->g_321[i].f7.f0, "p_334->g_321[i].f7.f0", print_hash_value);
        transparent_crc(p_334->g_321[i].f7.f1, "p_334->g_321[i].f7.f1", print_hash_value);
        transparent_crc(p_334->g_321[i].f7.f2, "p_334->g_321[i].f7.f2", print_hash_value);
        transparent_crc(p_334->g_321[i].f7.f3, "p_334->g_321[i].f7.f3", print_hash_value);
        transparent_crc(p_334->g_321[i].f7.f4, "p_334->g_321[i].f7.f4", print_hash_value);
        transparent_crc(p_334->g_321[i].f8.f0, "p_334->g_321[i].f8.f0", print_hash_value);
        transparent_crc(p_334->g_321[i].f8.f1, "p_334->g_321[i].f8.f1", print_hash_value);
        transparent_crc(p_334->g_321[i].f8.f2.f0, "p_334->g_321[i].f8.f2.f0", print_hash_value);
        transparent_crc(p_334->g_321[i].f8.f2.f1, "p_334->g_321[i].f8.f2.f1", print_hash_value);
        transparent_crc(p_334->g_321[i].f8.f2.f2, "p_334->g_321[i].f8.f2.f2", print_hash_value);
        transparent_crc(p_334->g_321[i].f8.f2.f3, "p_334->g_321[i].f8.f2.f3", print_hash_value);
        transparent_crc(p_334->g_321[i].f8.f2.f4, "p_334->g_321[i].f8.f2.f4", print_hash_value);
        transparent_crc(p_334->g_321[i].f8.f3, "p_334->g_321[i].f8.f3", print_hash_value);
        transparent_crc(p_334->g_321[i].f8.f4, "p_334->g_321[i].f8.f4", print_hash_value);
        transparent_crc(p_334->g_321[i].f8.f5, "p_334->g_321[i].f8.f5", print_hash_value);
        transparent_crc(p_334->g_321[i].f8.f6, "p_334->g_321[i].f8.f6", print_hash_value);
        transparent_crc(p_334->g_321[i].f8.f7, "p_334->g_321[i].f8.f7", print_hash_value);
        transparent_crc(p_334->g_321[i].f8.f8, "p_334->g_321[i].f8.f8", print_hash_value);
        transparent_crc(p_334->g_321[i].f9, "p_334->g_321[i].f9", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_334->g_332[i].f0, "p_334->g_332[i].f0", print_hash_value);
        transparent_crc(p_334->g_332[i].f1, "p_334->g_332[i].f1", print_hash_value);
        transparent_crc(p_334->g_332[i].f2.f0, "p_334->g_332[i].f2.f0", print_hash_value);
        transparent_crc(p_334->g_332[i].f2.f1, "p_334->g_332[i].f2.f1", print_hash_value);
        transparent_crc(p_334->g_332[i].f2.f2, "p_334->g_332[i].f2.f2", print_hash_value);
        transparent_crc(p_334->g_332[i].f2.f3, "p_334->g_332[i].f2.f3", print_hash_value);
        transparent_crc(p_334->g_332[i].f2.f4, "p_334->g_332[i].f2.f4", print_hash_value);
        transparent_crc(p_334->g_332[i].f3, "p_334->g_332[i].f3", print_hash_value);
        transparent_crc(p_334->g_332[i].f4, "p_334->g_332[i].f4", print_hash_value);
        transparent_crc(p_334->g_332[i].f5, "p_334->g_332[i].f5", print_hash_value);
        transparent_crc(p_334->g_332[i].f6, "p_334->g_332[i].f6", print_hash_value);
        transparent_crc(p_334->g_332[i].f7, "p_334->g_332[i].f7", print_hash_value);
        transparent_crc(p_334->g_332[i].f8, "p_334->g_332[i].f8", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
