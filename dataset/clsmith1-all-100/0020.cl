// --atomics 48 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 69,79,1 -l 23,1,1
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

__constant uint32_t permutations[10][23] = {
{4,22,3,10,9,14,1,12,5,17,21,6,19,15,8,13,7,16,20,18,11,0,2}, // permutation 0
{1,3,16,22,7,5,14,21,17,8,10,0,6,12,15,13,11,2,18,9,20,19,4}, // permutation 1
{17,0,12,21,6,4,18,3,20,19,10,22,5,11,16,9,8,7,15,1,13,14,2}, // permutation 2
{11,21,14,4,10,2,22,18,3,6,7,17,13,16,19,9,0,1,5,12,8,20,15}, // permutation 3
{11,15,6,9,16,5,22,20,19,1,14,10,3,17,21,2,4,7,8,12,13,18,0}, // permutation 4
{7,17,0,22,18,14,19,5,11,3,6,1,15,12,8,21,4,2,9,20,10,16,13}, // permutation 5
{1,5,3,18,2,15,22,11,7,8,10,6,20,4,14,12,0,9,16,21,19,13,17}, // permutation 6
{14,6,9,20,19,4,3,8,11,17,2,18,12,0,1,16,13,7,10,5,15,21,22}, // permutation 7
{8,21,4,1,6,16,7,0,13,12,9,22,15,10,11,3,17,19,2,14,18,20,5}, // permutation 8
{1,4,16,14,17,2,11,21,12,7,19,18,8,6,3,22,9,10,0,13,15,5,20} // permutation 9
};

// Seed: 20

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int64_t  f0;
   uint64_t  f1;
   int16_t  f2;
   int8_t  f3;
};

struct S1 {
    int32_t g_12;
    uint64_t g_16;
    int32_t g_18;
    volatile uint64_t g_21;
    uint32_t g_35;
    VECTOR(uint16_t, 8) g_47;
    volatile int8_t g_85;
    volatile int8_t *g_84;
    int8_t g_96;
    int8_t g_100;
    int32_t g_102;
    uint32_t g_110;
    uint16_t g_124;
    VECTOR(int32_t, 16) g_137;
    VECTOR(int32_t, 16) g_138;
    int32_t *g_164;
    uint8_t g_178;
    uint8_t g_182;
    VECTOR(int8_t, 4) g_204;
    int16_t g_207;
    VECTOR(int16_t, 16) g_224;
    VECTOR(int32_t, 16) g_230;
    int32_t g_252[8];
    uint8_t g_254;
    int64_t g_259;
    int16_t g_261;
    int32_t * volatile g_262;
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
    uint32_t tid;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S1 * p_266);
int16_t  func_8(uint8_t  p_9, int8_t  p_10, struct S1 * p_266);
int16_t  func_26(uint16_t  p_27, struct S1 * p_266);
int16_t  func_41(uint8_t  p_42, uint32_t  p_43, uint32_t  p_44, int8_t * p_45, int32_t * p_46, struct S1 * p_266);
uint16_t  func_50(int32_t * p_51, int32_t * p_52, uint32_t * p_53, struct S1 * p_266);
int16_t  func_54(int8_t  p_55, int32_t * p_56, int8_t * p_57, struct S1 * p_266);
int8_t * func_58(int8_t * p_59, uint32_t * p_60, struct S1 * p_266);
int8_t * func_61(int8_t * p_62, union U0  p_63, struct S1 * p_266);
int8_t * func_64(uint64_t  p_65, uint16_t  p_66, int64_t  p_67, uint32_t * p_68, struct S1 * p_266);
int32_t  func_72(uint64_t  p_73, int32_t * p_74, int32_t  p_75, uint32_t  p_76, struct S1 * p_266);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_266->g_21 p_266->g_18 p_266->g_35 p_266->g_47 p_266->g_84 p_266->g_comm_values p_266->l_comm_values p_266->g_110 p_266->g_102 p_266->g_124 p_266->g_137 p_266->g_100 p_266->g_178 p_266->g_182 p_266->g_204 p_266->g_224 p_266->g_230 p_266->g_138 p_266->g_207 p_266->g_252 p_266->g_96 p_266->g_254 p_266->g_259 p_266->g_261
 * writes: p_266->g_12 p_266->g_16 p_266->g_21 p_266->g_35 p_266->g_96 p_266->g_110 p_266->g_102 p_266->g_124 p_266->g_164 p_266->g_178 p_266->g_182 p_266->g_252 p_266->g_254 p_266->g_259 p_266->l_comm_values p_266->g_261 p_266->g_137
 */
uint32_t  func_1(struct S1 * p_266)
{ /* block id: 4 */
    uint8_t l_11 = 0x52L;
    VECTOR(int8_t, 4) l_13 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x27L), 0x27L);
    VECTOR(uint32_t, 4) l_14 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x3D7F1912L), 0x3D7F1912L);
    int8_t *l_15[6][4][10] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    uint8_t *l_253[2][2][8] = {{{&l_11,&l_11,&p_266->g_254,&l_11,&l_11,&l_11,&l_11,&p_266->g_254},{&l_11,&l_11,&p_266->g_254,&l_11,&l_11,&l_11,&l_11,&p_266->g_254}},{{&l_11,&l_11,&p_266->g_254,&l_11,&l_11,&l_11,&l_11,&p_266->g_254},{&l_11,&l_11,&p_266->g_254,&l_11,&l_11,&l_11,&l_11,&p_266->g_254}}};
    int32_t l_255 = 4L;
    int64_t *l_258 = &p_266->g_259;
    int16_t *l_260 = &p_266->g_261;
    int32_t *l_263 = &p_266->g_102;
    uint16_t l_264 = 0x8C21L;
    int32_t *l_265[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i, j, k;
    (*l_263) = (safe_div_func_uint32_t_u_u(((safe_sub_func_int16_t_s_s((-6L), (safe_rshift_func_int16_t_s_s(((*l_260) |= (0x17L == (0x2CF415D7L >= ((p_266->l_comm_values[(safe_mod_func_uint32_t_u_u(p_266->tid, 23))] = (func_8((p_266->g_12 = l_11), (p_266->g_16 = (l_14.y &= ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(l_13.wzwy)))).w)), p_266) < (safe_add_func_int64_t_s_s((1UL > func_26(l_13.w, p_266)), (((*l_258) ^= ((((p_266->g_254++) && p_266->g_138.s5) , 0x123FL) ^ GROUP_DIVERGE(0, 1))) < (-1L)))))) < 0x5B964CB03ED47F7BL)))), l_13.y)))) >= 0x0FE3L), 0x42C3FEE6L));
    p_266->g_137.s6 ^= (0x2BL ^ ((*l_263) == l_264));
    return p_266->g_138.s9;
}


/* ------------------------------------------ */
/* 
 * reads : p_266->g_21 p_266->g_18
 * writes: p_266->g_21
 */
int16_t  func_8(uint8_t  p_9, int8_t  p_10, struct S1 * p_266)
{ /* block id: 8 */
    int32_t *l_17 = &p_266->g_18;
    int32_t *l_19 = &p_266->g_18;
    int32_t *l_20[3];
    int i;
    for (i = 0; i < 3; i++)
        l_20[i] = &p_266->g_18;
    ++p_266->g_21;
    return (*l_17);
}


/* ------------------------------------------ */
/* 
 * reads : p_266->g_35 p_266->g_47 p_266->g_18 p_266->g_84 p_266->g_comm_values p_266->l_comm_values p_266->g_110 p_266->g_102 p_266->g_124 p_266->g_137 p_266->g_100 p_266->g_178 p_266->g_182 p_266->g_204 p_266->g_224 p_266->g_230 p_266->g_138 p_266->g_207 p_266->g_252 p_266->g_96
 * writes: p_266->g_35 p_266->g_96 p_266->g_110 p_266->g_102 p_266->g_124 p_266->g_164 p_266->g_178 p_266->g_182 p_266->g_252
 */
int16_t  func_26(uint16_t  p_27, struct S1 * p_266)
{ /* block id: 11 */
    VECTOR(int8_t, 16) l_30 = (VECTOR(int8_t, 16))(0x55L, (VECTOR(int8_t, 4))(0x55L, (VECTOR(int8_t, 2))(0x55L, (-1L)), (-1L)), (-1L), 0x55L, (-1L), (VECTOR(int8_t, 2))(0x55L, (-1L)), (VECTOR(int8_t, 2))(0x55L, (-1L)), 0x55L, (-1L), 0x55L, (-1L));
    int32_t *l_33 = &p_266->g_18;
    uint32_t *l_34[3];
    int32_t l_36[5][10] = {{0x6EFE450DL,0x5EA9D2C4L,0x5EA9D2C4L,0x6EFE450DL,0x656345D1L,(-1L),(-1L),0x656345D1L,0x6EFE450DL,0x5EA9D2C4L},{0x6EFE450DL,0x5EA9D2C4L,0x5EA9D2C4L,0x6EFE450DL,0x656345D1L,(-1L),(-1L),0x656345D1L,0x6EFE450DL,0x5EA9D2C4L},{0x6EFE450DL,0x5EA9D2C4L,0x5EA9D2C4L,0x6EFE450DL,0x656345D1L,(-1L),(-1L),0x656345D1L,0x6EFE450DL,0x5EA9D2C4L},{0x6EFE450DL,0x5EA9D2C4L,0x5EA9D2C4L,0x6EFE450DL,0x656345D1L,(-1L),(-1L),0x656345D1L,0x6EFE450DL,0x5EA9D2C4L},{0x6EFE450DL,0x5EA9D2C4L,0x5EA9D2C4L,0x6EFE450DL,0x656345D1L,(-1L),(-1L),0x656345D1L,0x6EFE450DL,0x5EA9D2C4L}};
    int16_t l_37 = 0x7599L;
    int64_t l_40 = 0x3C9D40DD2C8CC2A3L;
    union U0 l_117 = {0L};
    int8_t *l_184[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t *l_251 = &p_266->g_252[4];
    int i, j;
    for (i = 0; i < 3; i++)
        l_34[i] = &p_266->g_35;
    (*l_251) |= (((l_40 = (safe_div_func_int8_t_s_s(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(l_30.sf97e6e1851aa8c97)).sd7)).even, (safe_sub_func_int32_t_s_s((p_27 <= ((void*)0 == l_33)), (--p_266->g_35)))))) & 0xCE775B4CL) || func_41((((VECTOR(uint16_t, 4))(p_266->g_47.s3251)).w | (safe_lshift_func_uint16_t_u_s(func_50((func_54(p_266->g_18, &p_266->g_18, func_58(func_61(func_64((*l_33), (*l_33), (*l_33), &p_266->g_35, p_266), l_117, p_266), l_34[1], p_266), p_266) , &p_266->g_18), &l_36[3][0], l_34[0], p_266), (*l_33)))), (*l_33), (*l_33), l_184[5], &l_36[2][3], p_266));
    return p_266->g_96;
}


/* ------------------------------------------ */
/* 
 * reads : p_266->g_204 p_266->g_224 p_266->g_230 p_266->g_124 p_266->g_137 p_266->g_102 p_266->g_138 p_266->g_100 p_266->g_207
 * writes: p_266->g_124
 */
int16_t  func_41(uint8_t  p_42, uint32_t  p_43, uint32_t  p_44, int8_t * p_45, int32_t * p_46, struct S1 * p_266)
{ /* block id: 53 */
    int32_t *l_185 = &p_266->g_102;
    int32_t *l_186 = &p_266->g_102;
    int32_t l_187 = 0x0736F6A9L;
    int32_t *l_188 = (void*)0;
    int32_t *l_189 = (void*)0;
    int32_t *l_190 = &l_187;
    int32_t *l_191 = &p_266->g_102;
    int32_t l_192 = 2L;
    int32_t *l_193 = &l_192;
    int32_t *l_194[9] = {&l_192,(void*)0,&l_192,&l_192,(void*)0,&l_192,&l_192,(void*)0,&l_192};
    uint64_t l_195[9];
    int32_t *l_200[7];
    int32_t **l_209 = &l_191;
    VECTOR(int8_t, 4) l_214 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x4CL), 0x4CL);
    VECTOR(int8_t, 2) l_215 = (VECTOR(int8_t, 2))((-10L), 0x63L);
    uint32_t *l_228 = &p_266->g_35;
    uint32_t **l_227 = &l_228;
    VECTOR(int64_t, 4) l_229 = (VECTOR(int64_t, 4))(0x7E0D3B134FB932FEL, (VECTOR(int64_t, 2))(0x7E0D3B134FB932FEL, 0x5AFB12AC07442C56L), 0x5AFB12AC07442C56L);
    uint16_t *l_233 = &p_266->g_124;
    uint16_t *l_236 = (void*)0;
    uint16_t *l_237 = (void*)0;
    uint16_t *l_238 = (void*)0;
    VECTOR(uint32_t, 2) l_239 = (VECTOR(uint32_t, 2))(0xC538581BL, 0x76007C24L);
    VECTOR(uint32_t, 2) l_242 = (VECTOR(uint32_t, 2))(4294967286UL, 0x52E4B557L);
    int8_t *l_243 = &p_266->g_100;
    int32_t l_248 = 0x476EF8A6L;
    int8_t l_249[6];
    int32_t **l_250 = &l_193;
    int i;
    for (i = 0; i < 9; i++)
        l_195[i] = 18446744073709551609UL;
    for (i = 0; i < 7; i++)
        l_200[i] = (void*)0;
    for (i = 0; i < 6; i++)
        l_249[i] = 9L;
    --l_195[1];
    for (p_44 = (-2); (p_44 < 52); p_44 = safe_add_func_int32_t_s_s(p_44, 8))
    { /* block id: 57 */
        int32_t **l_201 = &l_190;
        int16_t *l_205 = (void*)0;
        int16_t *l_206[3][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
        int32_t l_208[9][2] = {{1L,0x21FC2793L},{1L,0x21FC2793L},{1L,0x21FC2793L},{1L,0x21FC2793L},{1L,0x21FC2793L},{1L,0x21FC2793L},{1L,0x21FC2793L},{1L,0x21FC2793L},{1L,0x21FC2793L}};
        int i, j;
        (*l_201) = l_200[3];
        (*p_46) |= (safe_mod_func_int64_t_s_s((((void*)0 == &p_266->g_178) , (0xFFDCL > (l_208[6][1] = ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(p_266->g_204.yxwy)))).wyyywzwwzxzzzwyx)).sbbb2, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0x11L, 7UL)).yxxxxxyy)).odd))).even)))).yyxxxxxx)).s0))), p_44));
    }
    (*l_209) = &l_192;
    (*p_46) = (safe_mul_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(int8_t, 16))(l_214.yywwzxxzyzwxzwyw)).lo, ((VECTOR(int8_t, 2))(l_215.xx)).xyyxxyxy))), 0xC5L, 0UL, (safe_sub_func_int32_t_s_s((safe_sub_func_uint64_t_u_u((((safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_u((((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_266->g_224.s08)).yxxx)).zzwxwwxw, ((VECTOR(int16_t, 2))(5L, 2L)).yyyyyyxx))).s6 && ((((VECTOR(int32_t, 16))((safe_mod_func_int64_t_s_s(((**l_209) | (((*l_227) = &p_44) != (void*)0)), ((VECTOR(int64_t, 2))(l_229.zw)).lo)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))((-7L), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 8))(p_266->g_230.sf2e3d422)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((safe_sub_func_uint16_t_u_u(((*l_191) |= ((*l_233)++)), ((((VECTOR(uint32_t, 16))(l_239.xyyyxxyyxyxyyyxx)).s6 <= (safe_add_func_int32_t_s_s(0x7B2DE809L, (((((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_242.yy)), ((p_266->g_137.s1 , l_243) != (void*)0), 0x6ECF5ED4L, ((VECTOR(uint32_t, 2))(0x20FC968BL, 4294967295UL)), 0xD0607FCCL, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(mad_sat(((VECTOR(uint32_t, 2))(4294967287UL, 0UL)), ((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 4))((safe_add_func_int16_t_s_s(((p_266->g_224.sd | (safe_lshift_func_int8_t_s_u((((*p_46) , &p_266->g_96) != &p_266->g_96), 4))) && p_266->g_102), 0x1A30L)), 4294967290UL, 1UL, 0x3F19AB1BL)).zwwyyywzxxzzwxwy, ((VECTOR(uint32_t, 16))(4294967295UL))))).sb9, ((VECTOR(uint32_t, 2))(0xA5FBFFA6L))))), 1UL, 0x233B5517L)), ((VECTOR(uint32_t, 2))(4UL)), ((VECTOR(uint32_t, 2))(0x4F4323D4L)), 0xBB440DB7L)).lo, ((VECTOR(uint32_t, 8))(7UL))))), ((VECTOR(uint32_t, 8))(0xE0FC5051L))))).s4 < p_43) != l_248) > FAKE_DIVERGE(p_266->group_1_offset, get_group_id(1), 10))))) , p_266->g_138.s8))) , (-1L)), (-4L), ((VECTOR(int32_t, 2))(0x3843A238L)), 0x5ED3885CL, 1L, ((VECTOR(int32_t, 2))(0x17F0C942L)), ((VECTOR(int32_t, 4))(8L)), l_249[5], (*l_191), (-1L), 0x5BB748ACL)))).s12, ((VECTOR(int32_t, 2))(0x6B3610BEL))))).yxxy, ((VECTOR(int32_t, 4))((-9L)))))).wxywyxzyzxxzzzwy)).hi))).s12)), 0x53BE1FAAL, ((VECTOR(int32_t, 4))(0L)), (*l_186), ((VECTOR(int32_t, 4))(0x3E18D8DBL)), (*l_191), 0x2F9DCFB9L, 1L)).s2b)), ((VECTOR(int32_t, 2))((-1L))), 0x61322146L, p_266->g_124, (-1L), 7L, (*p_46), ((VECTOR(int32_t, 2))((-2L))), 0x4191A83FL, 0x73F3D568L, 0x5718F321L, 0x09924D39L)).sf , l_250) == &p_46)), 12)), 0x46L)) <= p_266->g_100) , p_43), FAKE_DIVERGE(p_266->group_0_offset, get_group_id(0), 10))), p_266->g_224.s9)), p_266->g_102, 0x2EL, p_44, 1UL, 0UL)))).sc, p_266->g_207)) && p_44), 0xFEECL));
    return (*l_186);
}


/* ------------------------------------------ */
/* 
 * reads : p_266->g_100 p_266->g_178 p_266->g_182 p_266->g_18 p_266->g_102 p_266->g_110
 * writes: p_266->g_35 p_266->g_178 p_266->g_182
 */
uint16_t  func_50(int32_t * p_51, int32_t * p_52, uint32_t * p_53, struct S1 * p_266)
{ /* block id: 46 */
    int64_t l_174 = 0x38C1CB93B745A2F1L;
    uint8_t *l_177 = &p_266->g_178;
    uint32_t *l_179 = &p_266->g_35;
    int32_t l_180 = 0x738E0F7AL;
    uint8_t *l_181 = &p_266->g_182;
    int32_t **l_183[10][8][1] = {{{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164}},{{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164}},{{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164}},{{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164}},{{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164}},{{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164}},{{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164}},{{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164}},{{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164}},{{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164},{&p_266->g_164}}};
    int i, j, k;
    p_51 = ((safe_sub_func_int32_t_s_s((((*p_53) = p_266->g_100) , ((safe_mul_func_int16_t_s_s((((*l_181) ^= (((((safe_rshift_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u((l_174 & ((((safe_sub_func_uint8_t_u_u(0x31L, l_174)) , ((*l_177) &= l_174)) < ((p_52 != (void*)0) , ((l_179 = &p_266->g_35) == p_51))) && l_174)), p_266->g_100)), l_174)) == GROUP_DIVERGE(1, 1)) & l_180) != 0x23A6D7AEL) || l_180)) <= l_180), p_266->g_18)) && p_266->g_102)), l_174)) , (void*)0);
    return p_266->g_110;
}


/* ------------------------------------------ */
/* 
 * reads : p_266->g_137
 * writes: p_266->g_164
 */
int16_t  func_54(int8_t  p_55, int32_t * p_56, int8_t * p_57, struct S1 * p_266)
{ /* block id: 35 */
    int32_t *l_129[2][10][8] = {{{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102}},{{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_18,&p_266->g_18,&p_266->g_18,&p_266->g_102}}};
    int32_t **l_128 = &l_129[0][3][7];
    VECTOR(int32_t, 8) l_136 = (VECTOR(int32_t, 8))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x37FEC2A5L), 0x37FEC2A5L), 0x37FEC2A5L, 8L, 0x37FEC2A5L);
    VECTOR(uint16_t, 8) l_147 = (VECTOR(uint16_t, 8))(0x10CBL, (VECTOR(uint16_t, 4))(0x10CBL, (VECTOR(uint16_t, 2))(0x10CBL, 65535UL), 65535UL), 65535UL, 0x10CBL, 65535UL);
    VECTOR(uint16_t, 4) l_148 = (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 65535UL), 65535UL);
    VECTOR(int16_t, 8) l_149 = (VECTOR(int16_t, 8))(0x3E37L, (VECTOR(int16_t, 4))(0x3E37L, (VECTOR(int16_t, 2))(0x3E37L, 0x72AFL), 0x72AFL), 0x72AFL, 0x3E37L, 0x72AFL);
    uint32_t l_152 = 0UL;
    int8_t *l_157 = (void*)0;
    int8_t *l_158 = &p_266->g_96;
    int8_t l_159 = (-1L);
    uint64_t l_160[1];
    int8_t **l_161 = &l_157;
    uint16_t l_162 = 65535UL;
    uint64_t l_163 = 0x9AB7E0C7B68BE60AL;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_160[i] = 0UL;
    (*l_128) = p_56;
    if ((safe_add_func_int16_t_s_s((safe_div_func_int8_t_s_s((0x5F85L ^ ((((*l_161) = &p_55) != (void*)0) , l_162)), l_163)), p_55)))
    { /* block id: 40 */
        return p_266->g_137.s8;
    }
    else
    { /* block id: 42 */
        uint64_t l_165 = 0x569B4585397BB59CL;
        p_266->g_164 = (*l_128);
        return l_165;
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_266->g_102 p_266->g_124
 * writes: p_266->g_102 p_266->g_124
 */
int8_t * func_58(int8_t * p_59, uint32_t * p_60, struct S1 * p_266)
{ /* block id: 29 */
    uint8_t l_118 = 1UL;
    int32_t *l_119 = &p_266->g_102;
    int32_t *l_120 = &p_266->g_102;
    int32_t *l_121 = &p_266->g_102;
    int32_t *l_122 = &p_266->g_102;
    int32_t *l_123[1][9] = {{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102}};
    int8_t *l_127 = &p_266->g_100;
    int i, j;
    atomic_add(&p_266->g_atomic_reduction[get_linear_group_id()], (l_118 = 0x3D7FAD0BL) + get_linear_global_id());
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_266->v_collective += p_266->g_atomic_reduction[get_linear_group_id()];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    (*l_119) &= ((l_118 , 0L) > 18446744073709551615UL);
    p_266->g_124++;
    return l_127;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_61(int8_t * p_62, union U0  p_63, struct S1 * p_266)
{ /* block id: 27 */
    return p_62;
}


/* ------------------------------------------ */
/* 
 * reads : p_266->g_35 p_266->g_18 p_266->g_84 p_266->g_comm_values p_266->l_comm_values p_266->g_47 p_266->g_110
 * writes: p_266->g_96 p_266->g_110 p_266->g_102
 */
int8_t * func_64(uint64_t  p_65, uint16_t  p_66, int64_t  p_67, uint32_t * p_68, struct S1 * p_266)
{ /* block id: 14 */
    VECTOR(uint64_t, 4) l_71 = (VECTOR(uint64_t, 4))(0x3B84D8593D467431L, (VECTOR(uint64_t, 2))(0x3B84D8593D467431L, 0x4A5162C4F7295DFDL), 0x4A5162C4F7295DFDL);
    VECTOR(int16_t, 8) l_79 = (VECTOR(int16_t, 8))(0x7A38L, (VECTOR(int16_t, 4))(0x7A38L, (VECTOR(int16_t, 2))(0x7A38L, 0x4CF6L), 0x4CF6L), 0x4CF6L, 0x7A38L, 0x4CF6L);
    union U0 l_92 = {1L};
    int16_t *l_93 = &l_92.f2;
    int16_t *l_94 = (void*)0;
    int16_t *l_95 = (void*)0;
    int32_t *l_97 = &p_266->g_18;
    int32_t *l_113 = (void*)0;
    int32_t *l_114 = &p_266->g_102;
    uint16_t l_115[1][3][9] = {{{0UL,0x7508L,1UL,0x7508L,0UL,0UL,0x7508L,1UL,0x7508L},{0UL,0x7508L,1UL,0x7508L,0UL,0UL,0x7508L,1UL,0x7508L},{0UL,0x7508L,1UL,0x7508L,0UL,0UL,0x7508L,1UL,0x7508L}}};
    int8_t *l_116[1];
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_116[i] = &p_266->g_96;
    l_115[0][0][2] = (((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(l_71.xzwx)).y, l_71.w)) > (-7L)) , ((*l_114) = func_72((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 16))(l_79.s3012311361540555)), (int16_t)(p_266->g_96 = ((*l_93) = (((VECTOR(uint64_t, 16))(p_266->g_35, (l_79.s1 ^ ((((safe_lshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(((p_266->g_18 , ((void*)0 != p_266->g_84)) && (safe_rshift_func_int8_t_s_u((safe_lshift_func_uint8_t_u_s(l_79.s0, 0)), (safe_mod_func_int32_t_s_s((l_92 , 1L), p_65))))), 10)), p_266->g_comm_values[p_266->tid])) > GROUP_DIVERGE(2, 1)) || 255UL) & p_67)), l_71.z, ((VECTOR(uint64_t, 4))(0x4DA8BF394C470FE6L)), ((VECTOR(uint64_t, 2))(0x6BC952145F43875CL)), p_66, p_266->l_comm_values[(safe_mod_func_uint32_t_u_u(p_266->tid, 23))], l_79.s4, 0x6DA80F5DD30C446BL, 0xDD077F077B29079CL, 18446744073709551614UL, 1UL)).s0 & 0x130811D2751B8D99L)))))).s7, p_266->g_47.s5)), l_97, (*l_97), (*p_68), p_266)));
    return l_116[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_266->g_110
 * writes: p_266->g_110
 */
int32_t  func_72(uint64_t  p_73, int32_t * p_74, int32_t  p_75, uint32_t  p_76, struct S1 * p_266)
{ /* block id: 17 */
    int16_t l_108 = 0x4350L;
    VECTOR(int32_t, 2) l_109 = (VECTOR(int32_t, 2))(0x57ECED54L, (-5L));
    int i;
    for (p_76 = 1; (p_76 <= 56); ++p_76)
    { /* block id: 20 */
        int32_t *l_101 = &p_266->g_102;
        int32_t *l_103 = &p_266->g_102;
        int32_t l_104 = 0x2C646EC4L;
        int32_t *l_105 = &l_104;
        int32_t *l_106 = &l_104;
        int32_t *l_107[2][6] = {{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102},{&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102,&p_266->g_102}};
        int i, j;
        p_266->g_110--;
    }
    return l_109.x;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[23];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 23; i++)
            l_comm_values[i] = 1;
    struct S1 c_267;
    struct S1* p_266 = &c_267;
    struct S1 c_268 = {
        9L, // p_266->g_12
        1UL, // p_266->g_16
        0x2628F0FCL, // p_266->g_18
        8UL, // p_266->g_21
        1UL, // p_266->g_35
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), 65535UL), 65535UL, 0UL, 65535UL), // p_266->g_47
        (-5L), // p_266->g_85
        &p_266->g_85, // p_266->g_84
        9L, // p_266->g_96
        (-1L), // p_266->g_100
        0x2FF5F5FBL, // p_266->g_102
        0xC57EA6FFL, // p_266->g_110
        0xC020L, // p_266->g_124
        (VECTOR(int32_t, 16))(0x39FF1EAAL, (VECTOR(int32_t, 4))(0x39FF1EAAL, (VECTOR(int32_t, 2))(0x39FF1EAAL, 0x662397AFL), 0x662397AFL), 0x662397AFL, 0x39FF1EAAL, 0x662397AFL, (VECTOR(int32_t, 2))(0x39FF1EAAL, 0x662397AFL), (VECTOR(int32_t, 2))(0x39FF1EAAL, 0x662397AFL), 0x39FF1EAAL, 0x662397AFL, 0x39FF1EAAL, 0x662397AFL), // p_266->g_137
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-3L)), (-3L)), (-3L), (-1L), (-3L), (VECTOR(int32_t, 2))((-1L), (-3L)), (VECTOR(int32_t, 2))((-1L), (-3L)), (-1L), (-3L), (-1L), (-3L)), // p_266->g_138
        (void*)0, // p_266->g_164
        4UL, // p_266->g_178
        0x22L, // p_266->g_182
        (VECTOR(int8_t, 4))(0x3FL, (VECTOR(int8_t, 2))(0x3FL, (-3L)), (-3L)), // p_266->g_204
        0x5DD0L, // p_266->g_207
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L)), // p_266->g_224
        (VECTOR(int32_t, 16))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x547C3267L), 0x547C3267L), 0x547C3267L, 4L, 0x547C3267L, (VECTOR(int32_t, 2))(4L, 0x547C3267L), (VECTOR(int32_t, 2))(4L, 0x547C3267L), 4L, 0x547C3267L, 4L, 0x547C3267L), // p_266->g_230
        {0x6EBF030DL,0x6EBF030DL,0x6EBF030DL,0x6EBF030DL,0x6EBF030DL,0x6EBF030DL,0x6EBF030DL,0x6EBF030DL}, // p_266->g_252
        250UL, // p_266->g_254
        0L, // p_266->g_259
        0x6A29L, // p_266->g_261
        (void*)0, // p_266->g_262
        0, // p_266->v_collective
        sequence_input[get_global_id(0)], // p_266->global_0_offset
        sequence_input[get_global_id(1)], // p_266->global_1_offset
        sequence_input[get_global_id(2)], // p_266->global_2_offset
        sequence_input[get_local_id(0)], // p_266->local_0_offset
        sequence_input[get_local_id(1)], // p_266->local_1_offset
        sequence_input[get_local_id(2)], // p_266->local_2_offset
        sequence_input[get_group_id(0)], // p_266->group_0_offset
        sequence_input[get_group_id(1)], // p_266->group_1_offset
        sequence_input[get_group_id(2)], // p_266->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 23)), permutations[0][get_linear_local_id()])), // p_266->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_267 = c_268;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_266);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_266->g_12, "p_266->g_12", print_hash_value);
    transparent_crc(p_266->g_16, "p_266->g_16", print_hash_value);
    transparent_crc(p_266->g_18, "p_266->g_18", print_hash_value);
    transparent_crc(p_266->g_21, "p_266->g_21", print_hash_value);
    transparent_crc(p_266->g_35, "p_266->g_35", print_hash_value);
    transparent_crc(p_266->g_47.s0, "p_266->g_47.s0", print_hash_value);
    transparent_crc(p_266->g_47.s1, "p_266->g_47.s1", print_hash_value);
    transparent_crc(p_266->g_47.s2, "p_266->g_47.s2", print_hash_value);
    transparent_crc(p_266->g_47.s3, "p_266->g_47.s3", print_hash_value);
    transparent_crc(p_266->g_47.s4, "p_266->g_47.s4", print_hash_value);
    transparent_crc(p_266->g_47.s5, "p_266->g_47.s5", print_hash_value);
    transparent_crc(p_266->g_47.s6, "p_266->g_47.s6", print_hash_value);
    transparent_crc(p_266->g_47.s7, "p_266->g_47.s7", print_hash_value);
    transparent_crc(p_266->g_85, "p_266->g_85", print_hash_value);
    transparent_crc(p_266->g_96, "p_266->g_96", print_hash_value);
    transparent_crc(p_266->g_100, "p_266->g_100", print_hash_value);
    transparent_crc(p_266->g_102, "p_266->g_102", print_hash_value);
    transparent_crc(p_266->g_110, "p_266->g_110", print_hash_value);
    transparent_crc(p_266->g_124, "p_266->g_124", print_hash_value);
    transparent_crc(p_266->g_137.s0, "p_266->g_137.s0", print_hash_value);
    transparent_crc(p_266->g_137.s1, "p_266->g_137.s1", print_hash_value);
    transparent_crc(p_266->g_137.s2, "p_266->g_137.s2", print_hash_value);
    transparent_crc(p_266->g_137.s3, "p_266->g_137.s3", print_hash_value);
    transparent_crc(p_266->g_137.s4, "p_266->g_137.s4", print_hash_value);
    transparent_crc(p_266->g_137.s5, "p_266->g_137.s5", print_hash_value);
    transparent_crc(p_266->g_137.s6, "p_266->g_137.s6", print_hash_value);
    transparent_crc(p_266->g_137.s7, "p_266->g_137.s7", print_hash_value);
    transparent_crc(p_266->g_137.s8, "p_266->g_137.s8", print_hash_value);
    transparent_crc(p_266->g_137.s9, "p_266->g_137.s9", print_hash_value);
    transparent_crc(p_266->g_137.sa, "p_266->g_137.sa", print_hash_value);
    transparent_crc(p_266->g_137.sb, "p_266->g_137.sb", print_hash_value);
    transparent_crc(p_266->g_137.sc, "p_266->g_137.sc", print_hash_value);
    transparent_crc(p_266->g_137.sd, "p_266->g_137.sd", print_hash_value);
    transparent_crc(p_266->g_137.se, "p_266->g_137.se", print_hash_value);
    transparent_crc(p_266->g_137.sf, "p_266->g_137.sf", print_hash_value);
    transparent_crc(p_266->g_138.s0, "p_266->g_138.s0", print_hash_value);
    transparent_crc(p_266->g_138.s1, "p_266->g_138.s1", print_hash_value);
    transparent_crc(p_266->g_138.s2, "p_266->g_138.s2", print_hash_value);
    transparent_crc(p_266->g_138.s3, "p_266->g_138.s3", print_hash_value);
    transparent_crc(p_266->g_138.s4, "p_266->g_138.s4", print_hash_value);
    transparent_crc(p_266->g_138.s5, "p_266->g_138.s5", print_hash_value);
    transparent_crc(p_266->g_138.s6, "p_266->g_138.s6", print_hash_value);
    transparent_crc(p_266->g_138.s7, "p_266->g_138.s7", print_hash_value);
    transparent_crc(p_266->g_138.s8, "p_266->g_138.s8", print_hash_value);
    transparent_crc(p_266->g_138.s9, "p_266->g_138.s9", print_hash_value);
    transparent_crc(p_266->g_138.sa, "p_266->g_138.sa", print_hash_value);
    transparent_crc(p_266->g_138.sb, "p_266->g_138.sb", print_hash_value);
    transparent_crc(p_266->g_138.sc, "p_266->g_138.sc", print_hash_value);
    transparent_crc(p_266->g_138.sd, "p_266->g_138.sd", print_hash_value);
    transparent_crc(p_266->g_138.se, "p_266->g_138.se", print_hash_value);
    transparent_crc(p_266->g_138.sf, "p_266->g_138.sf", print_hash_value);
    transparent_crc(p_266->g_178, "p_266->g_178", print_hash_value);
    transparent_crc(p_266->g_182, "p_266->g_182", print_hash_value);
    transparent_crc(p_266->g_204.x, "p_266->g_204.x", print_hash_value);
    transparent_crc(p_266->g_204.y, "p_266->g_204.y", print_hash_value);
    transparent_crc(p_266->g_204.z, "p_266->g_204.z", print_hash_value);
    transparent_crc(p_266->g_204.w, "p_266->g_204.w", print_hash_value);
    transparent_crc(p_266->g_207, "p_266->g_207", print_hash_value);
    transparent_crc(p_266->g_224.s0, "p_266->g_224.s0", print_hash_value);
    transparent_crc(p_266->g_224.s1, "p_266->g_224.s1", print_hash_value);
    transparent_crc(p_266->g_224.s2, "p_266->g_224.s2", print_hash_value);
    transparent_crc(p_266->g_224.s3, "p_266->g_224.s3", print_hash_value);
    transparent_crc(p_266->g_224.s4, "p_266->g_224.s4", print_hash_value);
    transparent_crc(p_266->g_224.s5, "p_266->g_224.s5", print_hash_value);
    transparent_crc(p_266->g_224.s6, "p_266->g_224.s6", print_hash_value);
    transparent_crc(p_266->g_224.s7, "p_266->g_224.s7", print_hash_value);
    transparent_crc(p_266->g_224.s8, "p_266->g_224.s8", print_hash_value);
    transparent_crc(p_266->g_224.s9, "p_266->g_224.s9", print_hash_value);
    transparent_crc(p_266->g_224.sa, "p_266->g_224.sa", print_hash_value);
    transparent_crc(p_266->g_224.sb, "p_266->g_224.sb", print_hash_value);
    transparent_crc(p_266->g_224.sc, "p_266->g_224.sc", print_hash_value);
    transparent_crc(p_266->g_224.sd, "p_266->g_224.sd", print_hash_value);
    transparent_crc(p_266->g_224.se, "p_266->g_224.se", print_hash_value);
    transparent_crc(p_266->g_224.sf, "p_266->g_224.sf", print_hash_value);
    transparent_crc(p_266->g_230.s0, "p_266->g_230.s0", print_hash_value);
    transparent_crc(p_266->g_230.s1, "p_266->g_230.s1", print_hash_value);
    transparent_crc(p_266->g_230.s2, "p_266->g_230.s2", print_hash_value);
    transparent_crc(p_266->g_230.s3, "p_266->g_230.s3", print_hash_value);
    transparent_crc(p_266->g_230.s4, "p_266->g_230.s4", print_hash_value);
    transparent_crc(p_266->g_230.s5, "p_266->g_230.s5", print_hash_value);
    transparent_crc(p_266->g_230.s6, "p_266->g_230.s6", print_hash_value);
    transparent_crc(p_266->g_230.s7, "p_266->g_230.s7", print_hash_value);
    transparent_crc(p_266->g_230.s8, "p_266->g_230.s8", print_hash_value);
    transparent_crc(p_266->g_230.s9, "p_266->g_230.s9", print_hash_value);
    transparent_crc(p_266->g_230.sa, "p_266->g_230.sa", print_hash_value);
    transparent_crc(p_266->g_230.sb, "p_266->g_230.sb", print_hash_value);
    transparent_crc(p_266->g_230.sc, "p_266->g_230.sc", print_hash_value);
    transparent_crc(p_266->g_230.sd, "p_266->g_230.sd", print_hash_value);
    transparent_crc(p_266->g_230.se, "p_266->g_230.se", print_hash_value);
    transparent_crc(p_266->g_230.sf, "p_266->g_230.sf", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_266->g_252[i], "p_266->g_252[i]", print_hash_value);

    }
    transparent_crc(p_266->g_254, "p_266->g_254", print_hash_value);
    transparent_crc(p_266->g_259, "p_266->g_259", print_hash_value);
    transparent_crc(p_266->g_261, "p_266->g_261", print_hash_value);
    transparent_crc(p_266->v_collective, "p_266->v_collective", print_hash_value);
    transparent_crc(p_266->l_comm_values[get_linear_local_id()], "p_266->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_266->g_comm_values[get_linear_group_id() * 23 + get_linear_local_id()], "p_266->g_comm_values[get_linear_group_id() * 23 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
