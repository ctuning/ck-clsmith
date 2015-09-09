// --atomics 7 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 22,48,8 -l 1,16,8
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

__constant uint32_t permutations[10][128] = {
{6,108,91,101,36,58,22,13,123,124,19,83,125,8,41,37,44,78,82,27,0,21,68,70,9,59,56,43,69,32,63,94,120,2,17,112,113,74,24,103,67,99,97,57,3,98,122,12,46,14,84,72,65,127,121,88,111,89,10,92,53,28,5,80,87,109,77,16,50,34,20,42,48,102,106,31,1,55,66,4,105,85,73,11,26,18,126,47,100,116,40,96,52,61,7,90,30,110,76,71,33,35,104,29,79,86,39,75,114,81,54,38,93,23,118,15,25,62,119,64,51,115,95,107,49,117,45,60}, // permutation 0
{52,126,43,8,92,59,77,27,29,99,32,84,55,127,2,87,9,102,98,93,83,81,17,48,119,78,74,60,6,57,42,115,90,105,110,62,30,88,3,89,91,31,63,25,104,50,118,69,13,65,112,33,21,22,94,51,7,67,54,76,34,124,106,114,113,116,120,0,35,14,20,122,68,26,73,117,45,80,71,47,82,46,121,85,5,100,95,53,40,24,16,109,125,49,108,61,1,86,15,4,75,107,123,97,39,37,103,28,44,11,66,56,96,101,79,19,41,70,36,38,111,72,23,64,18,10,58,12}, // permutation 1
{72,110,90,15,51,115,26,14,11,7,61,8,114,106,27,55,50,82,87,39,64,22,59,32,112,91,75,25,85,118,33,116,121,69,21,95,40,74,66,49,107,105,46,53,29,88,102,45,101,48,109,0,10,43,67,100,6,28,1,96,122,86,127,124,70,4,57,56,54,52,126,104,120,18,20,12,34,92,24,80,17,5,3,58,111,30,97,16,23,119,99,76,93,36,84,2,77,63,60,98,65,123,41,113,44,35,94,13,78,38,19,89,37,9,108,125,68,31,71,73,117,103,83,47,81,79,42,62}, // permutation 2
{120,91,99,105,125,49,20,10,117,42,89,118,44,40,71,106,97,35,2,45,108,14,43,54,15,3,63,104,84,96,51,33,100,18,87,59,55,17,115,80,30,107,37,23,88,62,19,67,95,68,109,77,72,102,74,6,27,9,124,90,5,60,123,11,0,65,86,111,4,34,94,24,69,12,83,26,22,28,16,56,76,50,98,47,73,57,32,112,101,8,93,21,41,78,81,82,58,92,121,48,66,1,61,25,126,70,53,13,79,29,110,103,36,31,114,75,46,38,85,7,52,64,127,122,39,113,116,119}, // permutation 3
{53,34,121,22,58,2,81,42,85,113,25,78,18,15,126,69,102,74,40,84,92,110,20,47,91,55,103,46,79,56,127,61,101,8,48,14,0,94,54,97,66,60,43,100,64,33,39,44,109,77,52,122,88,35,41,116,62,9,26,11,125,70,95,90,96,107,31,36,71,124,82,112,3,30,27,50,75,72,93,10,7,63,29,120,87,108,45,118,57,24,17,21,104,83,117,105,6,119,115,28,98,86,114,80,68,38,59,32,19,67,73,12,111,49,5,76,123,89,99,65,37,13,1,16,23,51,106,4}, // permutation 4
{37,2,118,105,86,32,88,44,43,79,103,121,1,33,24,115,25,98,12,112,119,81,38,36,75,82,20,76,120,63,89,13,71,9,101,77,47,41,42,116,123,53,92,16,97,26,5,40,45,125,7,19,114,50,6,14,96,65,10,31,56,109,29,117,111,30,106,70,46,102,27,73,18,4,107,78,35,100,60,58,59,55,8,64,90,23,54,49,93,0,3,108,72,67,84,80,62,22,126,69,104,28,11,21,57,34,83,15,85,113,48,17,68,66,122,39,52,110,99,91,95,74,127,94,87,51,124,61}, // permutation 5
{102,10,48,117,99,20,12,70,24,82,16,22,31,93,14,2,111,96,55,21,51,3,68,81,100,116,98,88,8,26,115,27,101,108,87,124,50,19,89,127,54,7,40,32,46,11,83,45,85,34,5,30,107,119,69,65,113,121,56,15,39,86,123,104,17,118,72,64,92,62,60,53,35,109,84,95,47,28,105,112,13,66,1,38,44,122,71,106,110,97,29,23,43,126,58,49,76,91,57,63,73,80,61,74,75,77,79,52,6,120,37,36,125,78,4,0,103,18,94,59,67,25,41,114,90,42,9,33}, // permutation 6
{1,17,92,81,52,67,121,108,57,6,125,25,61,76,33,43,120,66,74,117,27,58,75,46,116,73,83,22,5,39,59,113,23,110,84,65,90,72,3,51,50,79,127,40,88,80,42,24,62,15,11,114,68,55,48,103,70,100,69,101,94,89,122,56,31,64,4,115,96,7,14,107,111,45,71,93,78,126,20,36,106,118,21,85,77,32,13,37,34,99,2,26,102,87,104,30,18,8,54,10,0,28,109,91,86,123,29,124,9,47,95,98,41,49,35,16,53,38,97,12,119,44,82,63,60,19,112,105}, // permutation 7
{85,23,45,7,103,114,91,49,33,126,24,93,18,56,115,119,117,79,105,1,4,63,36,67,6,58,109,59,15,64,122,38,96,125,94,32,41,75,78,82,10,37,124,90,17,113,13,118,0,112,31,9,39,111,95,106,99,12,11,62,107,77,61,51,40,65,19,102,97,20,2,14,76,30,104,84,16,21,66,57,54,44,55,42,26,28,29,72,69,43,52,127,71,83,81,101,70,5,120,27,8,98,88,74,86,121,50,22,92,73,110,46,87,60,48,47,123,25,108,100,116,3,68,35,80,53,89,34}, // permutation 8
{31,81,18,92,1,43,56,111,85,9,54,71,91,124,99,67,80,127,44,78,70,103,89,27,110,125,10,23,26,123,102,87,32,59,105,63,51,52,19,74,37,4,17,7,39,117,98,86,8,66,36,55,12,6,45,108,83,25,21,120,29,50,48,97,46,40,112,94,65,24,113,101,118,5,106,126,41,84,69,72,34,47,16,53,62,107,96,73,64,42,119,49,14,122,115,13,79,28,76,58,75,33,30,88,61,68,22,11,35,57,104,77,3,121,38,90,95,2,20,0,82,93,116,60,15,109,114,100} // permutation 9
};

// Seed: 30

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int64_t  f0;
   int64_t  f1;
   int64_t  f2;
   volatile int32_t  f3;
};

struct S1 {
    volatile int32_t g_2[8][8][4];
    int32_t g_3[4];
    VECTOR(int32_t, 8) g_6;
    int32_t g_8;
    uint16_t g_33;
    uint16_t g_43[7][7];
    int16_t g_69;
    uint32_t g_108;
    int16_t g_116;
    volatile int32_t g_119;
    volatile int32_t g_120;
    volatile int32_t g_121;
    volatile VECTOR(int32_t, 16) g_122;
    volatile int32_t g_123;
    volatile int32_t g_124;
    volatile int32_t *g_118[9][2];
    uint32_t g_129;
    uint64_t g_156;
    uint8_t g_159;
    int32_t *g_161;
    int32_t **g_160;
    VECTOR(int32_t, 8) g_183;
    VECTOR(int32_t, 8) g_188;
    uint16_t g_208;
    int8_t g_212;
    int32_t *** volatile g_228;
    uint32_t g_245;
    int32_t *g_257;
    int32_t **g_256[7][6][6];
    union U0 g_299;
    union U0 g_300;
    uint16_t g_309;
    uint64_t g_331;
    int32_t g_344;
    int32_t *** volatile g_351;
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
int8_t  func_1(struct S1 * p_360);
int32_t ** func_12(int32_t * p_13, struct S1 * p_360);
int8_t  func_16(int64_t  p_17, uint32_t  p_18, int32_t  p_19, int32_t * p_20, struct S1 * p_360);
int64_t  func_22(int32_t * p_23, struct S1 * p_360);
int32_t * func_24(int32_t ** p_25, int64_t  p_26, int32_t * p_27, int32_t ** p_28, uint64_t  p_29, struct S1 * p_360);
int32_t ** func_30(uint32_t  p_31, struct S1 * p_360);
int16_t  func_34(int64_t  p_35, int32_t ** p_36, int64_t  p_37, uint32_t  p_38, int16_t  p_39, struct S1 * p_360);
int8_t  func_45(int8_t  p_46, int32_t * p_47, int32_t * p_48, int64_t  p_49, struct S1 * p_360);
int8_t  func_50(uint16_t  p_51, int64_t  p_52, int32_t  p_53, struct S1 * p_360);
uint64_t  func_63(uint32_t  p_64, struct S1 * p_360);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_360->g_3 p_360->g_6 p_360->g_8 p_360->g_257 p_360->g_123 p_360->g_183 p_360->g_160 p_360->g_161
 * writes: p_360->g_3 p_360->g_8
 */
int8_t  func_1(struct S1 * p_360)
{ /* block id: 4 */
    int16_t l_9 = 0x446BL;
    VECTOR(int16_t, 2) l_21 = (VECTOR(int16_t, 2))(0x613CL, 0x6930L);
    uint8_t l_164 = 254UL;
    int32_t *l_255[4];
    VECTOR(int32_t, 8) l_356 = (VECTOR(int32_t, 8))(0x3DBCEA1CL, (VECTOR(int32_t, 4))(0x3DBCEA1CL, (VECTOR(int32_t, 2))(0x3DBCEA1CL, (-1L)), (-1L)), (-1L), 0x3DBCEA1CL, (-1L));
    VECTOR(int32_t, 2) l_357 = (VECTOR(int32_t, 2))(0x5397C882L, 0x43EB6E56L);
    int i;
    for (i = 0; i < 4; i++)
        l_255[i] = &p_360->g_3[2];
    for (p_360->g_3[2] = 1; (p_360->g_3[2] == (-8)); p_360->g_3[2]--)
    { /* block id: 7 */
        int32_t *l_7[8] = {&p_360->g_8,&p_360->g_8,&p_360->g_8,&p_360->g_8,&p_360->g_8,&p_360->g_8,&p_360->g_8,&p_360->g_8};
        uint16_t *l_42 = &p_360->g_43[3][3];
        uint16_t *l_44 = &p_360->g_43[3][3];
        uint64_t l_163 = 0UL;
        uint32_t ***l_352 = (void*)0;
        uint32_t *l_355 = &p_360->g_245;
        uint32_t **l_354 = &l_355;
        uint32_t ***l_353 = &l_354;
        int i;
        p_360->g_8 |= ((VECTOR(int32_t, 8))(p_360->g_6.s56534142)).s3;
        if (l_9)
            continue;
        for (p_360->g_8 = (-20); (p_360->g_8 > (-4)); p_360->g_8 = safe_add_func_uint32_t_u_u(p_360->g_8, 9))
        { /* block id: 12 */
            uint16_t *l_32 = &p_360->g_33;
            int32_t l_162 = 0x2107620EL;
            (1 + 1);
        }
        (*l_353) = (void*)0;
    }
    (*p_360->g_257) |= ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 4))(0x2DD37C88L, 0x6546D521L, 1L, 0x42227BBEL)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_356.s43)), ((VECTOR(int32_t, 4))(l_357.yyxx)), 0x706589C2L, (-1L))).even))).y;
    (**p_360->g_160) = (p_360->g_123 <= (1L >= ((safe_add_func_int64_t_s_s(p_360->g_183.s1, 0x11EE539BF445D051L)) == 0x5F27569AL)));
    return p_360->g_6.s0;
}


/* ------------------------------------------ */
/* 
 * reads : p_360->g_122 p_360->g_245 p_360->g_156 p_360->g_116 p_360->g_159 p_360->g_43 p_360->g_331 p_360->g_228 p_360->g_160
 * writes: p_360->g_159
 */
int32_t ** func_12(int32_t * p_13, struct S1 * p_360)
{ /* block id: 108 */
    uint8_t l_313 = 0xA8L;
    int32_t **l_316 = &p_360->g_161;
    int16_t l_329 = 7L;
    uint8_t *l_330[1][7] = {{&l_313,&p_360->g_159,&l_313,&l_313,&p_360->g_159,&l_313,&l_313}};
    uint32_t l_332 = 0x4C6E3196L;
    int32_t *l_333 = (void*)0;
    int32_t *l_334 = (void*)0;
    int32_t *l_335 = (void*)0;
    int32_t l_336 = 9L;
    int32_t *l_337 = &l_336;
    int32_t *l_338 = &l_336;
    int32_t *l_339 = (void*)0;
    int32_t l_340[1][8] = {{1L,1L,1L,1L,1L,1L,1L,1L}};
    int32_t *l_341 = &l_340[0][1];
    int32_t *l_342 = &l_340[0][6];
    int32_t *l_343[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int8_t l_345[7][8][4] = {{{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL}},{{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL}},{{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL}},{{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL}},{{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL}},{{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL}},{{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL},{0x5BL,(-1L),(-9L),0x6DL}}};
    int32_t l_346[10];
    int64_t l_347[6][5] = {{0x271835A041FA365CL,0L,0x271835A041FA365CL,0x271835A041FA365CL,0L},{0x271835A041FA365CL,0L,0x271835A041FA365CL,0x271835A041FA365CL,0L},{0x271835A041FA365CL,0L,0x271835A041FA365CL,0x271835A041FA365CL,0L},{0x271835A041FA365CL,0L,0x271835A041FA365CL,0x271835A041FA365CL,0L},{0x271835A041FA365CL,0L,0x271835A041FA365CL,0x271835A041FA365CL,0L},{0x271835A041FA365CL,0L,0x271835A041FA365CL,0x271835A041FA365CL,0L}};
    uint16_t l_348 = 0x3B9FL;
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_346[i] = 0x3F52BA17L;
    l_332 ^= ((safe_add_func_uint64_t_u_u(l_313, (((((((safe_div_func_uint64_t_u_u(l_313, l_313)) , l_316) == &p_13) == ((+((safe_sub_func_uint32_t_u_u(((safe_unary_minus_func_uint8_t_u(p_360->g_122.s6)) < 0L), (safe_mul_func_uint8_t_u_u((p_360->g_159 ^= (safe_lshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((p_360->g_245 & (safe_unary_minus_func_uint64_t_u((safe_rshift_func_uint16_t_u_s(l_329, p_360->g_156))))) , 1L), l_313)), p_360->g_116))), FAKE_DIVERGE(p_360->global_2_offset, get_global_id(2), 10))))) | p_360->g_43[0][1])) , l_329)) | p_360->g_43[0][2]) & p_360->g_331) & 4294967291UL))) > p_360->g_331);
    --l_348;
    return (*p_360->g_228);
}


/* ------------------------------------------ */
/* 
 * reads : p_360->g_299 p_360->g_300 p_360->g_43 p_360->g_159 p_360->g_309 p_360->g_123
 * writes: p_360->g_159 p_360->g_309
 */
int8_t  func_16(int64_t  p_17, uint32_t  p_18, int32_t  p_19, int32_t * p_20, struct S1 * p_360)
{ /* block id: 103 */
    int64_t *l_303 = (void*)0;
    uint8_t *l_306 = &p_360->g_159;
    int32_t *l_307 = (void*)0;
    int32_t *l_308[3][6] = {{(void*)0,(void*)0,&p_360->g_3[2],(void*)0,&p_360->g_3[2],(void*)0},{(void*)0,(void*)0,&p_360->g_3[2],(void*)0,&p_360->g_3[2],(void*)0},{(void*)0,(void*)0,&p_360->g_3[2],(void*)0,&p_360->g_3[2],(void*)0}};
    uint32_t l_310 = 4294967287UL;
    int i, j;
    p_360->g_309 &= ((p_360->g_299 , p_360->g_300) , (safe_mul_func_int8_t_s_s((p_360->g_43[5][3] > ((void*)0 == l_303)), ((*l_306) |= (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_360->local_0_offset, get_local_id(0), 10), 7UL))))));
    l_310 ^= 0x2361A22DL;
    return p_360->g_123;
}


/* ------------------------------------------ */
/* 
 * reads : p_360->g_119
 * writes:
 */
int64_t  func_22(int32_t * p_23, struct S1 * p_360)
{ /* block id: 101 */
    return p_360->g_119;
}


/* ------------------------------------------ */
/* 
 * reads : p_360->g_3 p_360->g_129 p_360->g_comm_values p_360->g_120
 * writes: p_360->g_161
 */
int32_t * func_24(int32_t ** p_25, int64_t  p_26, int32_t * p_27, int32_t ** p_28, uint64_t  p_29, struct S1 * p_360)
{ /* block id: 95 */
    int32_t *l_258 = (void*)0;
    int32_t l_259 = 0x69C66EDAL;
    int32_t *l_260 = &l_259;
    int32_t *l_261 = (void*)0;
    int32_t *l_262 = &l_259;
    int32_t *l_263 = &l_259;
    int32_t l_264 = (-3L);
    int32_t *l_265 = (void*)0;
    int32_t *l_266 = &l_259;
    int32_t *l_267 = &l_259;
    int32_t *l_268 = &l_259;
    int32_t *l_269 = (void*)0;
    int32_t *l_270 = &l_264;
    int32_t *l_271 = (void*)0;
    int32_t *l_272[2];
    uint32_t l_273[8][6] = {{0xC9AD38F8L,0x833A7146L,4294967286UL,0x286E27B8L,4294967286UL,0x833A7146L},{0xC9AD38F8L,0x833A7146L,4294967286UL,0x286E27B8L,4294967286UL,0x833A7146L},{0xC9AD38F8L,0x833A7146L,4294967286UL,0x286E27B8L,4294967286UL,0x833A7146L},{0xC9AD38F8L,0x833A7146L,4294967286UL,0x286E27B8L,4294967286UL,0x833A7146L},{0xC9AD38F8L,0x833A7146L,4294967286UL,0x286E27B8L,4294967286UL,0x833A7146L},{0xC9AD38F8L,0x833A7146L,4294967286UL,0x286E27B8L,4294967286UL,0x833A7146L},{0xC9AD38F8L,0x833A7146L,4294967286UL,0x286E27B8L,4294967286UL,0x833A7146L},{0xC9AD38F8L,0x833A7146L,4294967286UL,0x286E27B8L,4294967286UL,0x833A7146L}};
    VECTOR(uint64_t, 2) l_278 = (VECTOR(uint64_t, 2))(0xF8C1AAB093599180L, 18446744073709551611UL);
    int16_t l_283 = 0x2681L;
    VECTOR(int8_t, 2) l_286 = (VECTOR(int8_t, 2))(0x74L, 0x16L);
    VECTOR(uint32_t, 4) l_292 = (VECTOR(uint32_t, 4))(8UL, (VECTOR(uint32_t, 2))(8UL, 4294967292UL), 4294967292UL);
    uint8_t l_293 = 0x93L;
    int8_t l_294 = 0x49L;
    uint32_t l_295 = 1UL;
    int64_t l_296 = 0x37E696E44751B99CL;
    VECTOR(int32_t, 4) l_297 = (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0L), 0L);
    int32_t *l_298 = (void*)0;
    int i, j;
    for (i = 0; i < 2; i++)
        l_272[i] = (void*)0;
    ++l_273[3][1];
    l_296 ^= ((p_360->g_3[2] != (((safe_lshift_func_int16_t_s_u(0x13D1L, 12)) , p_26) | ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 8))(6UL, 0xE50A85A7452DE786L, 1UL, (*l_267), ((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 2))(0xC3FE82B8370272ACL, 18446744073709551615UL)), ((VECTOR(uint64_t, 4))(l_278.yxyx)).lo))), 0xFEC6CF75A4E4E9D2L, 0x24342D217F7E6B73L)).s1507537324622564, ((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((safe_lshift_func_int8_t_s_u((p_26 , (FAKE_DIVERGE(p_360->group_0_offset, get_group_id(0), 10) , (safe_mod_func_uint8_t_u_u(l_283, (safe_div_func_uint8_t_u_u(p_360->g_129, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_286.yyyy)).xxxwzwxzywwzxwyy)).se7fb)))).w)))))), (safe_add_func_int8_t_s_s((safe_sub_func_int16_t_s_s(((safe_unary_minus_func_uint32_t_u(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(l_292.xyzy)))).w)) >= l_293), p_360->g_comm_values[p_360->tid])), p_360->g_3[2])))) & p_26), ((VECTOR(uint64_t, 4))(1UL)), p_360->g_120, 0x24F04A6633254CCAL, (*l_266), l_294, 18446744073709551608UL, p_360->g_comm_values[p_360->tid], (*l_270), 0x8005FB6EAA696D36L, l_295, 0x541254BD4C1ED878L, 8UL)))).s93, ((VECTOR(uint64_t, 2))(0x81E0BE7E84CE56A2L)), ((VECTOR(uint64_t, 2))(0xBF12A1688783B51DL))))).yyxxxxxxyyyxyxxx))).odd)).s4)) && p_26);
    (*l_267) = ((VECTOR(int32_t, 4))(l_297.xzwy)).y;
    (*p_25) = &l_259;
    return l_298;
}


/* ------------------------------------------ */
/* 
 * reads : p_360->g_3 p_360->g_245 p_360->g_228 p_360->g_160
 * writes: p_360->g_245
 */
int32_t ** func_30(uint32_t  p_31, struct S1 * p_360)
{ /* block id: 86 */
    int64_t *l_235[1][2][8] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int16_t *l_238 = &p_360->g_116;
    int32_t l_243 = (-10L);
    uint32_t *l_244 = &p_360->g_245;
    int32_t *l_248 = (void*)0;
    int32_t l_249 = 0x423A81BDL;
    int32_t *l_250 = (void*)0;
    int32_t *l_251[4];
    uint8_t l_252[6][5][8] = {{{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL}},{{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL}},{{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL}},{{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL}},{{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL}},{{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL},{254UL,0xA9L,0xB3L,0x6FL,0xE3L,247UL,0x6FL,1UL}}};
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_251[i] = &l_249;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_360->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 128)), permutations[(safe_mod_func_uint32_t_u_u((safe_mod_func_uint64_t_u_u(((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_360->local_1_offset, get_local_id(1), 10), (safe_sub_func_uint8_t_u_u(((l_235[0][0][2] == l_235[0][0][2]) | ((*l_244) |= (safe_rshift_func_int8_t_s_s((p_360->g_3[2] && 0xAAL), (l_238 != (((safe_lshift_func_uint8_t_u_s(0x45L, 1)) , (safe_rshift_func_int8_t_s_u((FAKE_DIVERGE(p_360->global_2_offset, get_global_id(2), 10) > l_243), 0))) , l_238)))))), (safe_mul_func_uint16_t_u_u(1UL, 0xC7F3L)))))) && p_31), p_31)), 10))][(safe_mod_func_uint32_t_u_u(p_360->tid, 128))]));
    l_249 |= l_243;
    l_243 = p_31;
    l_252[1][0][1]--;
    return (*p_360->g_228);
}


/* ------------------------------------------ */
/* 
 * reads : p_360->g_123 p_360->g_161 p_360->g_3 p_360->g_160 p_360->g_2 p_360->g_43 p_360->g_8 p_360->g_comm_values p_360->g_228
 * writes: p_360->g_43 p_360->g_208 p_360->g_212 p_360->g_161 p_360->g_160
 */
int16_t  func_34(int64_t  p_35, int32_t ** p_36, int64_t  p_37, uint32_t  p_38, int16_t  p_39, struct S1 * p_360)
{ /* block id: 55 */
    int32_t *l_165 = (void*)0;
    int32_t l_166 = 0x556FD85EL;
    int32_t *l_167 = &l_166;
    int32_t *l_168 = &l_166;
    int32_t *l_169 = &l_166;
    int32_t *l_170 = &l_166;
    int32_t *l_171 = (void*)0;
    VECTOR(int32_t, 2) l_172 = (VECTOR(int32_t, 2))(0x0D4120DAL, (-5L));
    int32_t *l_173 = (void*)0;
    int32_t *l_174 = (void*)0;
    int32_t *l_175[1][6][10] = {{{&l_166,(void*)0,(void*)0,&l_166,(void*)0,(void*)0,(void*)0,(void*)0,&l_166,(void*)0},{&l_166,(void*)0,(void*)0,&l_166,(void*)0,(void*)0,(void*)0,(void*)0,&l_166,(void*)0},{&l_166,(void*)0,(void*)0,&l_166,(void*)0,(void*)0,(void*)0,(void*)0,&l_166,(void*)0},{&l_166,(void*)0,(void*)0,&l_166,(void*)0,(void*)0,(void*)0,(void*)0,&l_166,(void*)0},{&l_166,(void*)0,(void*)0,&l_166,(void*)0,(void*)0,(void*)0,(void*)0,&l_166,(void*)0},{&l_166,(void*)0,(void*)0,&l_166,(void*)0,(void*)0,(void*)0,(void*)0,&l_166,(void*)0}}};
    int32_t l_176 = 4L;
    uint32_t l_177 = 1UL;
    int64_t *l_185 = (void*)0;
    VECTOR(uint8_t, 16) l_187 = (VECTOR(uint8_t, 16))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 0x0FL), 0x0FL), 0x0FL, 6UL, 0x0FL, (VECTOR(uint8_t, 2))(6UL, 0x0FL), (VECTOR(uint8_t, 2))(6UL, 0x0FL), 6UL, 0x0FL, 6UL, 0x0FL);
    VECTOR(int32_t, 8) l_189 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-8L)), (-8L)), (-8L), 0L, (-8L));
    uint8_t l_198 = 2UL;
    VECTOR(uint8_t, 16) l_201 = (VECTOR(uint8_t, 16))(0x98L, (VECTOR(uint8_t, 4))(0x98L, (VECTOR(uint8_t, 2))(0x98L, 255UL), 255UL), 255UL, 0x98L, 255UL, (VECTOR(uint8_t, 2))(0x98L, 255UL), (VECTOR(uint8_t, 2))(0x98L, 255UL), 0x98L, 255UL, 0x98L, 255UL);
    int i, j, k;
    l_177--;
    for (l_176 = 0; (l_176 > (-25)); --l_176)
    { /* block id: 59 */
        uint64_t l_182[4];
        int64_t **l_184 = (void*)0;
        int64_t *l_186[1][10];
        VECTOR(int32_t, 8) l_190 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-7L)), (-7L)), (-7L), (-1L), (-7L));
        int32_t **l_194 = &l_167;
        uint8_t l_225 = 0x00L;
        int i, j;
        for (i = 0; i < 4; i++)
            l_182[i] = 1UL;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 10; j++)
                l_186[i][j] = (void*)0;
        }
        (*l_168) = ((*l_168) || ((p_360->g_123 || l_182[1]) > (((VECTOR(int32_t, 8))(p_360->g_183.s35604372)).s7 , (((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(p_38, ((l_185 = &p_35) == (l_186[0][2] = &p_35)), (-1L), ((((VECTOR(uint8_t, 2))(l_187.s98)).lo == ((p_35 | (p_39 && (GROUP_DIVERGE(1, 1) <= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(0L, 0x47D54846L, ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(p_360->g_188.s24136341)).s47, ((VECTOR(int32_t, 4))(l_189.s5460)).odd))), 3L, ((VECTOR(int32_t, 2))(l_190.s57)), 0x47622186L)).s32)), ((((safe_sub_func_int8_t_s_s(p_39, p_360->g_3[2])) > p_360->g_6.s5) ^ 0x7539B98514CCE56EL) , (**p_36)), (**p_360->g_160), l_190.s4, ((VECTOR(int32_t, 2))(7L)), 0x4EFC569BL)).s5))) , (*l_167))) > 0x0A6A7DB87A818BF5L), ((VECTOR(int64_t, 2))(2L)), 0x06B910D2C7DCD8C6L, p_37, p_38, ((VECTOR(int64_t, 4))(3L)), 0L, 0x02BDF8DBB819E399L, 0x5BF35C4B0B36D9B1L)))).sedb3, (int64_t)(-3L)))))).even)).odd && l_190.s2))));
        if ((safe_unary_minus_func_int16_t_s(((0x9FL == 3L) , (l_190.s4 , ((**p_36) != (0x852BC7AE79C7F147L ^ ((((((*l_194) = (void*)0) == (*p_360->g_160)) && p_35) && (safe_mod_func_uint32_t_u_u((p_360->g_2[6][6][2] < p_37), 0xEE72BB2EL))) > p_360->g_43[1][1]))))))))
        { /* block id: 64 */
            int32_t l_197 = 0x50DADBC6L;
            int32_t l_202 = (-6L);
            uint16_t *l_203 = &p_360->g_43[0][0];
            uint16_t *l_206 = (void*)0;
            uint16_t *l_207 = &p_360->g_208;
            int8_t *l_211[10] = {&p_360->g_212,&p_360->g_212,&p_360->g_212,&p_360->g_212,&p_360->g_212,&p_360->g_212,&p_360->g_212,&p_360->g_212,&p_360->g_212,&p_360->g_212};
            int i;
            l_198 = (!l_197);
            l_202 |= (l_197 > (p_360->g_212 = (p_38 & ((safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(0x93L, 1UL)))).yyxyyyyyyyxxyyxx)), ((VECTOR(uint8_t, 2))(l_201.scc)).yxxyxxxxxyxxyyyx))).sc, 3)) != ((*l_169) = ((((((*l_203)--) | ((*l_207) = 0xF6E7L)) < p_38) <= GROUP_DIVERGE(1, 1)) || ((safe_lshift_func_int8_t_s_s((GROUP_DIVERGE(0, 1) || p_38), 1)) == 0x4FC9L)))))));
            (*l_170) &= (safe_mod_func_uint32_t_u_u(((safe_mod_func_uint16_t_u_u((safe_add_func_int64_t_s_s(((void*)0 != (*p_36)), ((+(p_39 && (safe_mul_func_int16_t_s_s((safe_add_func_int64_t_s_s((((p_37 <= (((p_35 , p_37) ^ (safe_mul_func_int8_t_s_s(p_360->g_8, 0L))) || p_360->g_3[2])) , p_37) , p_360->g_comm_values[p_360->tid]), 8L)), p_37)))) >= FAKE_DIVERGE(p_360->group_0_offset, get_group_id(0), 10)))), l_225)) == p_37), p_37));
        }
        else
        { /* block id: 72 */
            for (l_198 = (-7); (l_198 == 6); ++l_198)
            { /* block id: 75 */
                (*l_169) = (*p_360->g_161);
                (*p_36) = (*p_36);
                (*p_360->g_160) = (*p_360->g_160);
                (*l_168) &= 0x2B35A70BL;
            }
        }
        if ((**p_360->g_160))
            continue;
        (*p_360->g_228) = &p_360->g_161;
    }
    return p_360->g_123;
}


/* ------------------------------------------ */
/* 
 * reads : p_360->l_comm_values p_360->g_129 p_360->g_116 p_360->g_43 p_360->g_6 p_360->g_3 p_360->g_159
 * writes: p_360->g_6 p_360->g_129 p_360->g_156 p_360->l_comm_values p_360->g_159
 */
int8_t  func_45(int8_t  p_46, int32_t * p_47, int32_t * p_48, int64_t  p_49, struct S1 * p_360)
{ /* block id: 16 */
    uint16_t *l_59 = (void*)0;
    VECTOR(int32_t, 4) l_62 = (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), (-10L)), (-10L));
    int32_t l_136 = (-1L);
    int i;
    for (p_46 = (-3); (p_46 <= 4); p_46++)
    { /* block id: 19 */
        int32_t *l_58 = (void*)0;
        int32_t **l_57 = &l_58;
        VECTOR(int32_t, 16) l_60 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 2L), 2L), 2L, 1L, 2L, (VECTOR(int32_t, 2))(1L, 2L), (VECTOR(int32_t, 2))(1L, 2L), 1L, 2L, 1L, 2L);
        VECTOR(int32_t, 2) l_61 = (VECTOR(int32_t, 2))(0x3C5EACAAL, 0x1CDDC186L);
        int16_t *l_68 = &p_360->g_69;
        int32_t l_125 = 3L;
        int32_t *l_126 = (void*)0;
        int32_t *l_127 = (void*)0;
        int32_t *l_128 = (void*)0;
        int i;
        (*l_57) = (void*)0;
        p_360->g_129 ^= ((p_360->g_6.s4 = ((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 4))(0x5F1E6118L, (p_360->g_43[5][4] <= (!((void*)0 == l_59))), 0x7F43A495L, 0x841C2FCEL)).xxzzxwzyxyxzyxyz, ((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(int32_t, 8))(0L, 0x312B2C9DL, 0x6C3AC5B6L, p_46, p_46, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 16))(l_60.sfcb68b63c96aadb6)).scd35, ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_61.yx)).xxyx)).hi)).xyyxyyxy))).lo, ((VECTOR(int32_t, 16))(l_62.wzyxzxyyxxxwxzzz)).s7355))).even)), func_50((func_50(p_46, func_50(l_62.w, (((func_63((((safe_mod_func_int16_t_s_s((safe_unary_minus_func_int16_t_s(((*l_68) = ((&p_360->g_43[6][4] != &p_360->g_43[3][3]) && 0x5964400D43E6B0C5L)))), p_49)) > l_62.x) && l_62.w), p_360) , 1L) < 4L) | l_62.x), l_125, p_360), l_62.w, p_360) , l_62.w), p_46, l_62.y, p_360), ((VECTOR(int32_t, 8))(0L)), ((VECTOR(int32_t, 2))(4L)), (-9L), (-4L), 0x65E8A440L)).s665d, ((VECTOR(int32_t, 4))(0x2AE1B054L))))).lo)), (-10L))).even, ((VECTOR(int32_t, 4))(0x788CC17EL))))).zywxyxwyzxyzwwxz))).sd446)).w < p_360->l_comm_values[(safe_mod_func_uint32_t_u_u(p_360->tid, 128))]) >= l_62.w)) , (-9L));
        for (p_360->g_129 = 17; (p_360->g_129 >= 23); p_360->g_129 = safe_add_func_int8_t_s_s(p_360->g_129, 1))
        { /* block id: 44 */
            int32_t *l_134 = (void*)0;
            int32_t *l_135 = (void*)0;
            int32_t *l_137 = (void*)0;
            int32_t *l_138 = (void*)0;
            int32_t *l_139 = &l_136;
            uint16_t *l_142 = &p_360->g_43[5][6];
            uint64_t *l_155 = &p_360->g_156;
            int64_t *l_157 = (void*)0;
            int64_t *l_158[1][5][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            int i, j, k;
            l_136 = (p_360->g_6.s0 |= (safe_rshift_func_int8_t_s_s(p_360->g_116, ((-3L) <= p_360->g_43[3][3]))));
            if ((*p_47))
                continue;
            (*l_139) ^= 0x4DCE59F5L;
            p_360->g_159 ^= (((p_46 != (safe_add_func_int64_t_s_s((p_360->g_43[3][3] && (l_142 == l_59)), p_360->g_3[3]))) && (safe_rshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((p_360->l_comm_values[(safe_mod_func_uint32_t_u_u(p_360->tid, 128))] = ((safe_sub_func_uint64_t_u_u(18446744073709551615UL, ((VECTOR(int64_t, 4))(0L, ((((+((safe_div_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s((((*l_155) = (safe_mul_func_uint16_t_u_u(0x5D59L, 1UL))) < (p_360->g_6.s6 > l_136)), 5)), (*p_47))) <= p_46)) && 0x5BL) ^ p_360->g_3[2]) > p_360->g_43[3][3]), 0x63BCDCC49979F674L, 0L)).y)) || GROUP_DIVERGE(1, 1))) | 0x48762EDC84E98FBDL), p_360->g_3[0])), 8))) == l_136);
        }
    }
    return p_360->g_116;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_50(uint16_t  p_51, int64_t  p_52, int32_t  p_53, struct S1 * p_360)
{ /* block id: 14 */
    int64_t l_54 = 0x167E6007B4AD293DL;
    return l_54;
}


/* ------------------------------------------ */
/* 
 * reads : p_360->g_6 p_360->g_69 p_360->g_8 p_360->g_3 p_360->l_comm_values p_360->g_116
 * writes: p_360->g_6 p_360->g_69 p_360->g_43 p_360->g_108 p_360->g_116 p_360->g_118
 */
uint64_t  func_63(uint32_t  p_64, struct S1 * p_360)
{ /* block id: 22 */
    uint32_t l_72[5] = {0xA7851781L,0xA7851781L,0xA7851781L,0xA7851781L,0xA7851781L};
    VECTOR(int8_t, 16) l_73 = (VECTOR(int8_t, 16))(0x2CL, (VECTOR(int8_t, 4))(0x2CL, (VECTOR(int8_t, 2))(0x2CL, 1L), 1L), 1L, 0x2CL, 1L, (VECTOR(int8_t, 2))(0x2CL, 1L), (VECTOR(int8_t, 2))(0x2CL, 1L), 0x2CL, 1L, 0x2CL, 1L);
    int32_t *l_74 = (void*)0;
    int32_t *l_75[2];
    uint8_t l_96 = 0UL;
    int8_t *l_114[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t **l_117 = (void*)0;
    int i;
    for (i = 0; i < 2; i++)
        l_75[i] = (void*)0;
    p_360->g_6.s4 ^= (((&p_360->g_43[1][4] == (void*)0) ^ (safe_lshift_func_uint8_t_u_s((l_72[1] == 7UL), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_73.s83)).xyyxyyxxxyxxxxxx)).se))) && l_72[4]);
    for (p_360->g_69 = 0; (p_360->g_69 >= 6); ++p_360->g_69)
    { /* block id: 26 */
        VECTOR(uint16_t, 4) l_80 = (VECTOR(uint16_t, 4))(0xC945L, (VECTOR(uint16_t, 2))(0xC945L, 0UL), 0UL);
        uint16_t *l_81 = (void*)0;
        uint16_t *l_82 = &p_360->g_43[3][3];
        uint16_t *l_83 = (void*)0;
        uint16_t *l_84 = (void*)0;
        uint16_t *l_85 = (void*)0;
        uint16_t *l_86 = (void*)0;
        uint16_t *l_87 = (void*)0;
        uint16_t *l_88 = (void*)0;
        uint16_t *l_89 = (void*)0;
        uint16_t *l_90[7][6][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int32_t l_91 = (-1L);
        VECTOR(uint32_t, 2) l_103 = (VECTOR(uint32_t, 2))(0UL, 0UL);
        int8_t *l_106 = (void*)0;
        int8_t *l_107 = (void*)0;
        int8_t *l_112 = (void*)0;
        int8_t *l_113[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_115 = 0L;
        int i, j, k;
        l_75[0] = (void*)0;
        p_360->g_116 &= (safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(clz(((VECTOR(uint16_t, 16))(0x8304L, 65526UL, (l_91 = ((*l_82) = ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_80.yx)), 0xA4A5L, 0x3E25L)).w)), ((VECTOR(uint16_t, 4))(65531UL, 0UL, 3UL, 9UL)), (safe_mul_func_int8_t_s_s(((GROUP_DIVERGE(0, 1) < ((p_360->g_6.s0 , (l_115 = (((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x19L, 1L)), 0x44L, (safe_mul_func_int8_t_s_s(((l_96 == (safe_mul_func_uint16_t_u_u(((*l_82) = p_360->g_8), (safe_mul_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u((+((VECTOR(uint32_t, 8))(l_103.yyyxyxyx)).s3), ((safe_lshift_func_int8_t_s_u((p_360->g_108 = p_360->g_6.s0), ((p_360->g_6.s0 , (p_360->g_3[2] < ((~((p_360->g_3[2] | (((l_91 = (safe_mul_func_uint8_t_u_u((safe_unary_minus_func_uint8_t_u(((GROUP_DIVERGE(0, 1) || (p_360->l_comm_values[(safe_mod_func_uint32_t_u_u(p_360->tid, 128))] || (&l_91 == (void*)0))) & 0x9D41D1488185611DL))), 0xF1L))) , (void*)0) != l_114[3])) , (-6L))) ^ l_103.x))) ^ p_64))) , l_103.y))), p_360->g_3[2]))))) ^ p_64), 0x49L)), 0x48L, (-8L), 5L, (-1L))).lo, ((VECTOR(int8_t, 4))(0x15L)), ((VECTOR(int8_t, 4))((-1L)))))))).x < p_360->g_6.s2))) , 0x55L)) != p_360->g_6.s2), 1UL)), ((VECTOR(uint16_t, 2))(0xEA6CL)), 0xE2A7L, l_91, FAKE_DIVERGE(p_360->local_2_offset, get_local_id(2), 10), ((VECTOR(uint16_t, 2))(65528UL)), 65527UL))))).sc, 9));
        p_360->g_6.s6 |= (l_81 != (void*)0);
        return p_64;
    }
    p_360->g_118[0][1] = (void*)0;
    return p_64;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[128];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 128; i++)
            l_comm_values[i] = 1;
    struct S1 c_361;
    struct S1* p_360 = &c_361;
    struct S1 c_362 = {
        {{{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL}},{{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL}},{{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL}},{{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL}},{{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL}},{{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL}},{{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL}},{{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL},{1L,0x1D568D52L,0x746A1C17L,0x0693009CL}}}, // p_360->g_2
        {1L,1L,1L,1L}, // p_360->g_3
        (VECTOR(int32_t, 8))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x57006986L), 0x57006986L), 0x57006986L, (-7L), 0x57006986L), // p_360->g_6
        0x379AE4F7L, // p_360->g_8
        0xCB40L, // p_360->g_33
        {{9UL,9UL,9UL,9UL,9UL,9UL,9UL},{9UL,9UL,9UL,9UL,9UL,9UL,9UL},{9UL,9UL,9UL,9UL,9UL,9UL,9UL},{9UL,9UL,9UL,9UL,9UL,9UL,9UL},{9UL,9UL,9UL,9UL,9UL,9UL,9UL},{9UL,9UL,9UL,9UL,9UL,9UL,9UL},{9UL,9UL,9UL,9UL,9UL,9UL,9UL}}, // p_360->g_43
        1L, // p_360->g_69
        0x19F12A09L, // p_360->g_108
        0x2E28L, // p_360->g_116
        0x03C2B814L, // p_360->g_119
        0x7F7A672AL, // p_360->g_120
        0x6772AC28L, // p_360->g_121
        (VECTOR(int32_t, 16))(0x31F79D74L, (VECTOR(int32_t, 4))(0x31F79D74L, (VECTOR(int32_t, 2))(0x31F79D74L, 0L), 0L), 0L, 0x31F79D74L, 0L, (VECTOR(int32_t, 2))(0x31F79D74L, 0L), (VECTOR(int32_t, 2))(0x31F79D74L, 0L), 0x31F79D74L, 0L, 0x31F79D74L, 0L), // p_360->g_122
        0x5ACD7A26L, // p_360->g_123
        0x2468045CL, // p_360->g_124
        {{&p_360->g_124,&p_360->g_121},{&p_360->g_124,&p_360->g_121},{&p_360->g_124,&p_360->g_121},{&p_360->g_124,&p_360->g_121},{&p_360->g_124,&p_360->g_121},{&p_360->g_124,&p_360->g_121},{&p_360->g_124,&p_360->g_121},{&p_360->g_124,&p_360->g_121},{&p_360->g_124,&p_360->g_121}}, // p_360->g_118
        6UL, // p_360->g_129
        0x5CAD6F74C4BF40DEL, // p_360->g_156
        0xD9L, // p_360->g_159
        &p_360->g_3[1], // p_360->g_161
        &p_360->g_161, // p_360->g_160
        (VECTOR(int32_t, 8))(0x2BE17C19L, (VECTOR(int32_t, 4))(0x2BE17C19L, (VECTOR(int32_t, 2))(0x2BE17C19L, 0x0D7BDB8FL), 0x0D7BDB8FL), 0x0D7BDB8FL, 0x2BE17C19L, 0x0D7BDB8FL), // p_360->g_183
        (VECTOR(int32_t, 8))(0x6E348D3EL, (VECTOR(int32_t, 4))(0x6E348D3EL, (VECTOR(int32_t, 2))(0x6E348D3EL, 0x1B55ACEFL), 0x1B55ACEFL), 0x1B55ACEFL, 0x6E348D3EL, 0x1B55ACEFL), // p_360->g_188
        0x85F0L, // p_360->g_208
        0x4BL, // p_360->g_212
        &p_360->g_160, // p_360->g_228
        0xE462C7E7L, // p_360->g_245
        &p_360->g_3[3], // p_360->g_257
        {{{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0}},{{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0}},{{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0}},{{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0}},{{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0}},{{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0}},{{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0},{&p_360->g_257,&p_360->g_257,&p_360->g_257,(void*)0,&p_360->g_257,(void*)0}}}, // p_360->g_256
        {0x3675E1828F07B783L}, // p_360->g_299
        {-3L}, // p_360->g_300
        1UL, // p_360->g_309
        0UL, // p_360->g_331
        (-5L), // p_360->g_344
        &p_360->g_160, // p_360->g_351
        0, // p_360->v_collective
        sequence_input[get_global_id(0)], // p_360->global_0_offset
        sequence_input[get_global_id(1)], // p_360->global_1_offset
        sequence_input[get_global_id(2)], // p_360->global_2_offset
        sequence_input[get_local_id(0)], // p_360->local_0_offset
        sequence_input[get_local_id(1)], // p_360->local_1_offset
        sequence_input[get_local_id(2)], // p_360->local_2_offset
        sequence_input[get_group_id(0)], // p_360->group_0_offset
        sequence_input[get_group_id(1)], // p_360->group_1_offset
        sequence_input[get_group_id(2)], // p_360->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 128)), permutations[0][get_linear_local_id()])), // p_360->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_361 = c_362;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_360);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_360->g_2[i][j][k], "p_360->g_2[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_360->g_3[i], "p_360->g_3[i]", print_hash_value);

    }
    transparent_crc(p_360->g_6.s0, "p_360->g_6.s0", print_hash_value);
    transparent_crc(p_360->g_6.s1, "p_360->g_6.s1", print_hash_value);
    transparent_crc(p_360->g_6.s2, "p_360->g_6.s2", print_hash_value);
    transparent_crc(p_360->g_6.s3, "p_360->g_6.s3", print_hash_value);
    transparent_crc(p_360->g_6.s4, "p_360->g_6.s4", print_hash_value);
    transparent_crc(p_360->g_6.s5, "p_360->g_6.s5", print_hash_value);
    transparent_crc(p_360->g_6.s6, "p_360->g_6.s6", print_hash_value);
    transparent_crc(p_360->g_6.s7, "p_360->g_6.s7", print_hash_value);
    transparent_crc(p_360->g_8, "p_360->g_8", print_hash_value);
    transparent_crc(p_360->g_33, "p_360->g_33", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_360->g_43[i][j], "p_360->g_43[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_360->g_69, "p_360->g_69", print_hash_value);
    transparent_crc(p_360->g_108, "p_360->g_108", print_hash_value);
    transparent_crc(p_360->g_116, "p_360->g_116", print_hash_value);
    transparent_crc(p_360->g_119, "p_360->g_119", print_hash_value);
    transparent_crc(p_360->g_120, "p_360->g_120", print_hash_value);
    transparent_crc(p_360->g_121, "p_360->g_121", print_hash_value);
    transparent_crc(p_360->g_122.s0, "p_360->g_122.s0", print_hash_value);
    transparent_crc(p_360->g_122.s1, "p_360->g_122.s1", print_hash_value);
    transparent_crc(p_360->g_122.s2, "p_360->g_122.s2", print_hash_value);
    transparent_crc(p_360->g_122.s3, "p_360->g_122.s3", print_hash_value);
    transparent_crc(p_360->g_122.s4, "p_360->g_122.s4", print_hash_value);
    transparent_crc(p_360->g_122.s5, "p_360->g_122.s5", print_hash_value);
    transparent_crc(p_360->g_122.s6, "p_360->g_122.s6", print_hash_value);
    transparent_crc(p_360->g_122.s7, "p_360->g_122.s7", print_hash_value);
    transparent_crc(p_360->g_122.s8, "p_360->g_122.s8", print_hash_value);
    transparent_crc(p_360->g_122.s9, "p_360->g_122.s9", print_hash_value);
    transparent_crc(p_360->g_122.sa, "p_360->g_122.sa", print_hash_value);
    transparent_crc(p_360->g_122.sb, "p_360->g_122.sb", print_hash_value);
    transparent_crc(p_360->g_122.sc, "p_360->g_122.sc", print_hash_value);
    transparent_crc(p_360->g_122.sd, "p_360->g_122.sd", print_hash_value);
    transparent_crc(p_360->g_122.se, "p_360->g_122.se", print_hash_value);
    transparent_crc(p_360->g_122.sf, "p_360->g_122.sf", print_hash_value);
    transparent_crc(p_360->g_123, "p_360->g_123", print_hash_value);
    transparent_crc(p_360->g_124, "p_360->g_124", print_hash_value);
    transparent_crc(p_360->g_129, "p_360->g_129", print_hash_value);
    transparent_crc(p_360->g_156, "p_360->g_156", print_hash_value);
    transparent_crc(p_360->g_159, "p_360->g_159", print_hash_value);
    transparent_crc(p_360->g_183.s0, "p_360->g_183.s0", print_hash_value);
    transparent_crc(p_360->g_183.s1, "p_360->g_183.s1", print_hash_value);
    transparent_crc(p_360->g_183.s2, "p_360->g_183.s2", print_hash_value);
    transparent_crc(p_360->g_183.s3, "p_360->g_183.s3", print_hash_value);
    transparent_crc(p_360->g_183.s4, "p_360->g_183.s4", print_hash_value);
    transparent_crc(p_360->g_183.s5, "p_360->g_183.s5", print_hash_value);
    transparent_crc(p_360->g_183.s6, "p_360->g_183.s6", print_hash_value);
    transparent_crc(p_360->g_183.s7, "p_360->g_183.s7", print_hash_value);
    transparent_crc(p_360->g_188.s0, "p_360->g_188.s0", print_hash_value);
    transparent_crc(p_360->g_188.s1, "p_360->g_188.s1", print_hash_value);
    transparent_crc(p_360->g_188.s2, "p_360->g_188.s2", print_hash_value);
    transparent_crc(p_360->g_188.s3, "p_360->g_188.s3", print_hash_value);
    transparent_crc(p_360->g_188.s4, "p_360->g_188.s4", print_hash_value);
    transparent_crc(p_360->g_188.s5, "p_360->g_188.s5", print_hash_value);
    transparent_crc(p_360->g_188.s6, "p_360->g_188.s6", print_hash_value);
    transparent_crc(p_360->g_188.s7, "p_360->g_188.s7", print_hash_value);
    transparent_crc(p_360->g_208, "p_360->g_208", print_hash_value);
    transparent_crc(p_360->g_212, "p_360->g_212", print_hash_value);
    transparent_crc(p_360->g_245, "p_360->g_245", print_hash_value);
    transparent_crc(p_360->g_299.f0, "p_360->g_299.f0", print_hash_value);
    transparent_crc(p_360->g_300.f0, "p_360->g_300.f0", print_hash_value);
    transparent_crc(p_360->g_309, "p_360->g_309", print_hash_value);
    transparent_crc(p_360->g_331, "p_360->g_331", print_hash_value);
    transparent_crc(p_360->g_344, "p_360->g_344", print_hash_value);
    transparent_crc(p_360->v_collective, "p_360->v_collective", print_hash_value);
    transparent_crc(p_360->l_comm_values[get_linear_local_id()], "p_360->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_360->g_comm_values[get_linear_group_id() * 128 + get_linear_local_id()], "p_360->g_comm_values[get_linear_group_id() * 128 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
