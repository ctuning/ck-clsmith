// ---fake_divergence -g 83,11,2 -l 1,1,1
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


// Seed: 8

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint64_t  f0;
   int8_t * volatile  f1;
   uint16_t  f2;
   uint64_t  f3;
};

union U1 {
   uint64_t  f0;
   volatile int32_t  f1;
   uint64_t  f2;
};

union U2 {
   volatile uint64_t  f0;
};

union U3 {
   int32_t  f0;
   uint32_t  f1;
};

struct S4 {
    int8_t g_11;
    int8_t *g_10;
    union U0 g_61[2];
    int32_t g_66;
    int16_t g_76;
    int8_t g_77;
    int32_t g_78;
    int64_t g_79;
    volatile int32_t g_80;
    volatile uint32_t g_89[4][8];
    uint8_t g_103;
    int32_t *g_112;
    int32_t **g_111;
    int8_t g_120;
    volatile int64_t g_121;
    int32_t g_122;
    volatile uint16_t g_123;
    volatile union U0 g_137;
    volatile union U0 * volatile g_136;
    volatile union U0 * volatile *g_135[4][8][3];
    volatile union U0 * volatile ** volatile g_138;
    volatile union U0 * volatile ** volatile g_139;
    VECTOR(uint32_t, 16) g_165;
    union U2 g_172;
    union U1 g_178;
    uint16_t g_193[3];
    union U0 g_199;
    union U0 g_200[5];
    union U0 g_201;
    union U0 g_202;
    union U0 g_203;
    union U0 g_204;
    union U0 g_205;
    union U0 g_206;
    union U0 g_207;
    union U0 g_208;
    union U0 g_209;
    union U0 g_210;
    union U0 g_211[4][7][4];
    union U0 g_212;
    union U0 g_213;
    union U0 g_214;
    union U0 g_215;
    union U0 g_216;
    union U0 g_217[7];
    VECTOR(uint64_t, 2) g_238;
    union U2 g_249;
    VECTOR(uint8_t, 8) g_257;
    volatile VECTOR(int8_t, 2) g_262;
    VECTOR(int16_t, 4) g_266;
    volatile VECTOR(uint8_t, 8) g_270;
    union U2 *g_308;
    int16_t g_314;
    uint64_t g_315[1][3];
    VECTOR(int32_t, 16) g_320;
    volatile VECTOR(uint64_t, 8) g_357;
    uint16_t *g_386;
    uint16_t ** volatile g_385;
    volatile VECTOR(int64_t, 4) g_389;
    VECTOR(int64_t, 8) g_390;
    VECTOR(int32_t, 8) g_393;
    VECTOR(int32_t, 16) g_395;
    volatile union U0 * volatile ** volatile g_409[5];
    volatile union U0 * volatile ** volatile g_410;
    volatile union U0 * volatile ** volatile g_411[9][1];
    union U3 g_420;
    uint64_t g_423;
    volatile union U2 g_425;
    int16_t g_443;
    volatile VECTOR(int64_t, 8) g_519;
    union U2 *g_529;
    volatile VECTOR(uint8_t, 8) g_545;
    VECTOR(uint8_t, 2) g_550;
    VECTOR(uint8_t, 16) g_559;
    union U2 g_565;
    uint32_t g_584;
    int8_t **g_599[10][10][2];
    int8_t ** volatile * volatile g_598;
    uint16_t * volatile *g_606;
    uint16_t * volatile * volatile *g_605;
    volatile int32_t g_609[10][4];
    volatile VECTOR(int32_t, 2) g_621;
    VECTOR(int32_t, 8) g_622;
    volatile VECTOR(uint8_t, 16) g_638;
    volatile uint8_t g_663;
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
uint32_t  func_1(struct S4 * p_666);
int32_t  func_2(uint64_t  p_3, struct S4 * p_666);
union U2  func_4(int8_t * p_5, int32_t  p_6, uint8_t  p_7, int8_t  p_8, int8_t * p_9, struct S4 * p_666);
int8_t  func_13(uint16_t  p_14, int8_t * p_15, uint8_t  p_16, int8_t * p_17, struct S4 * p_666);
int8_t * func_18(int8_t * p_19, int8_t * p_20, int16_t  p_21, uint32_t  p_22, struct S4 * p_666);
int8_t * func_23(int8_t * p_24, int8_t * p_25, int8_t * p_26, uint8_t  p_27, uint8_t  p_28, struct S4 * p_666);
int8_t * func_29(int32_t  p_30, struct S4 * p_666);
int32_t  func_31(int64_t  p_32, int64_t  p_33, int64_t  p_34, int8_t * p_35, struct S4 * p_666);
uint32_t  func_38(uint32_t  p_39, int8_t * p_40, uint32_t  p_41, uint32_t  p_42, int8_t * p_43, struct S4 * p_666);
uint16_t  func_48(int8_t  p_49, int8_t * p_50, uint64_t  p_51, int8_t * p_52, struct S4 * p_666);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_666->g_10 p_666->g_11 p_666->g_66 p_666->g_89 p_666->g_61.f0 p_666->g_103 p_666->g_79 p_666->g_76 p_666->g_111 p_666->g_112 p_666->g_123 p_666->g_78 p_666->g_122 p_666->g_135 p_666->g_139 p_666->g_165 p_666->g_120 p_666->g_172 p_666->g_211.f0 p_666->g_201.f0 p_666->g_193 p_666->g_621 p_666->g_622 p_666->g_214.f0 p_666->g_638 p_666->g_598 p_666->g_599 p_666->g_565.f0 p_666->g_178.f0 p_666->g_663
 * writes: p_666->g_66 p_666->g_89 p_666->g_103 p_666->g_111 p_666->g_79 p_666->g_123 p_666->g_112 p_666->g_135 p_666->g_120 p_666->g_420.f0 p_666->g_443 p_666->g_178.f0 p_666->g_663
 */
uint32_t  func_1(struct S4 * p_666)
{ /* block id: 4 */
    uint32_t l_12 = 4294967286UL;
    int8_t *l_55 = (void*)0;
    int8_t *l_108 = &p_666->g_11;
    uint64_t l_126 = 0x2BA979D12DC1848BL;
    int32_t l_652 = 0L;
    int32_t *l_653 = (void*)0;
    int32_t *l_654 = (void*)0;
    int32_t *l_655 = &p_666->g_66;
    int32_t *l_656 = &l_652;
    int32_t *l_657 = (void*)0;
    int32_t *l_658 = (void*)0;
    int32_t *l_659[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int8_t l_660[4][3];
    int8_t l_661 = (-6L);
    int32_t l_662[10] = {0x60D4F939L,3L,0x60D4F939L,0x60D4F939L,3L,0x60D4F939L,0x60D4F939L,3L,0x60D4F939L,0x60D4F939L};
    int i, j;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
            l_660[i][j] = 1L;
    }
    l_652 = func_2((func_4(p_666->g_10, l_12, l_12, func_13(l_12, func_18(func_23(&p_666->g_11, func_29(p_666->g_11, p_666), func_29(func_31((safe_div_func_int16_t_s_s((func_38((safe_lshift_func_int8_t_s_u((safe_mod_func_uint64_t_u_u((func_48((p_666->g_11 && (safe_mod_func_uint64_t_u_u(l_12, p_666->g_11))), &p_666->g_11, l_12, l_55, p_666) || p_666->g_11), p_666->g_61[1].f0)), l_12)), l_55, l_12, p_666->g_61[1].f0, &p_666->g_11, p_666) ^ 0x0B5FE46EL), l_12)), l_12, l_12, l_108, p_666), p_666), p_666->g_78, l_126, p_666), &p_666->g_120, l_126, l_12, p_666), p_666->g_122, &p_666->g_11, p_666), &p_666->g_77, p_666) , 0x0C79DF27BCF0D4CEL), p_666);
    --p_666->g_663;
    return p_666->g_622.s6;
}


/* ------------------------------------------ */
/* 
 * reads : p_666->g_120 p_666->g_111 p_666->g_112 p_666->g_89 p_666->g_122 p_666->g_211.f0 p_666->g_66 p_666->g_165 p_666->g_201.f0 p_666->g_79 p_666->g_103 p_666->g_193 p_666->g_76 p_666->g_621 p_666->g_622 p_666->g_214.f0 p_666->g_638 p_666->g_598 p_666->g_599 p_666->g_78 p_666->g_565.f0 p_666->g_178.f0
 * writes: p_666->g_120 p_666->g_66 p_666->g_112 p_666->g_79 p_666->g_103 p_666->g_420.f0 p_666->g_443 p_666->g_178.f0
 */
int32_t  func_2(uint64_t  p_3, struct S4 * p_666)
{ /* block id: 73 */
    int32_t *l_177 = &p_666->g_66;
    union U0 *l_198[3][3][9] = {{{(void*)0,&p_666->g_214,&p_666->g_208,(void*)0,&p_666->g_203,(void*)0,&p_666->g_208,&p_666->g_214,(void*)0},{(void*)0,&p_666->g_214,&p_666->g_208,(void*)0,&p_666->g_203,(void*)0,&p_666->g_208,&p_666->g_214,(void*)0},{(void*)0,&p_666->g_214,&p_666->g_208,(void*)0,&p_666->g_203,(void*)0,&p_666->g_208,&p_666->g_214,(void*)0}},{{(void*)0,&p_666->g_214,&p_666->g_208,(void*)0,&p_666->g_203,(void*)0,&p_666->g_208,&p_666->g_214,(void*)0},{(void*)0,&p_666->g_214,&p_666->g_208,(void*)0,&p_666->g_203,(void*)0,&p_666->g_208,&p_666->g_214,(void*)0},{(void*)0,&p_666->g_214,&p_666->g_208,(void*)0,&p_666->g_203,(void*)0,&p_666->g_208,&p_666->g_214,(void*)0}},{{(void*)0,&p_666->g_214,&p_666->g_208,(void*)0,&p_666->g_203,(void*)0,&p_666->g_208,&p_666->g_214,(void*)0},{(void*)0,&p_666->g_214,&p_666->g_208,(void*)0,&p_666->g_203,(void*)0,&p_666->g_208,&p_666->g_214,(void*)0},{(void*)0,&p_666->g_214,&p_666->g_208,(void*)0,&p_666->g_203,(void*)0,&p_666->g_208,&p_666->g_214,(void*)0}}};
    union U0 **l_197[7];
    union U0 ***l_196 = &l_197[6];
    int64_t l_241[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    VECTOR(int8_t, 8) l_260 = (VECTOR(int8_t, 8))(0x1CL, (VECTOR(int8_t, 4))(0x1CL, (VECTOR(int8_t, 2))(0x1CL, 0x4DL), 0x4DL), 0x4DL, 0x1CL, 0x4DL);
    VECTOR(uint8_t, 8) l_269 = (VECTOR(uint8_t, 8))(248UL, (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 0xA5L), 0xA5L), 0xA5L, 248UL, 0xA5L);
    VECTOR(uint8_t, 8) l_271 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL), 255UL, 255UL, 255UL);
    int32_t l_312 = 0x2AE677ECL;
    VECTOR(uint8_t, 8) l_366 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 252UL), 252UL), 252UL, 1UL, 252UL);
    union U2 *l_414[9][2][8] = {{{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249},{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249}},{{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249},{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249}},{{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249},{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249}},{{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249},{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249}},{{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249},{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249}},{{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249},{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249}},{{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249},{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249}},{{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249},{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249}},{{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249},{&p_666->g_249,&p_666->g_172,&p_666->g_249,&p_666->g_172,&p_666->g_172,(void*)0,&p_666->g_172,&p_666->g_249}}};
    VECTOR(int16_t, 2) l_421 = (VECTOR(int16_t, 2))((-8L), 0x7585L);
    int8_t *l_424 = (void*)0;
    VECTOR(int32_t, 8) l_436 = (VECTOR(int32_t, 8))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0x1F7F3FF8L), 0x1F7F3FF8L), 0x1F7F3FF8L, 2L, 0x1F7F3FF8L);
    VECTOR(int16_t, 16) l_453 = (VECTOR(int16_t, 16))(0x5C85L, (VECTOR(int16_t, 4))(0x5C85L, (VECTOR(int16_t, 2))(0x5C85L, 0L), 0L), 0L, 0x5C85L, 0L, (VECTOR(int16_t, 2))(0x5C85L, 0L), (VECTOR(int16_t, 2))(0x5C85L, 0L), 0x5C85L, 0L, 0x5C85L, 0L);
    VECTOR(int8_t, 8) l_483 = (VECTOR(int8_t, 8))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0x6CL), 0x6CL), 0x6CL, 9L, 0x6CL);
    int8_t **l_504[3][4] = {{&p_666->g_10,&p_666->g_10,&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10,&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10,&p_666->g_10,&p_666->g_10}};
    int64_t l_533[1];
    VECTOR(uint8_t, 2) l_556 = (VECTOR(uint8_t, 2))(1UL, 0x45L);
    int8_t l_586 = (-1L);
    int16_t l_646 = 0x11CAL;
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_197[i] = &l_198[1][2][2];
    for (i = 0; i < 1; i++)
        l_533[i] = 8L;
    for (p_666->g_120 = 0; (p_666->g_120 > 24); p_666->g_120 = safe_add_func_int16_t_s_s(p_666->g_120, 3))
    { /* block id: 76 */
        int32_t *l_180 = &p_666->g_66;
        int32_t **l_179 = &l_180;
        uint16_t *l_185 = &p_666->g_61[1].f2;
        uint16_t *l_186 = (void*)0;
        uint16_t *l_187 = &p_666->g_61[1].f2;
        uint16_t *l_188 = &p_666->g_61[1].f2;
        uint16_t *l_189 = &p_666->g_61[1].f2;
        uint16_t *l_190 = &p_666->g_61[1].f2;
        uint16_t *l_191 = &p_666->g_61[1].f2;
        uint16_t *l_192[6][8] = {{&p_666->g_193[2],(void*)0,(void*)0,&p_666->g_193[2],(void*)0,&p_666->g_193[2],(void*)0,(void*)0},{&p_666->g_193[2],(void*)0,(void*)0,&p_666->g_193[2],(void*)0,&p_666->g_193[2],(void*)0,(void*)0},{&p_666->g_193[2],(void*)0,(void*)0,&p_666->g_193[2],(void*)0,&p_666->g_193[2],(void*)0,(void*)0},{&p_666->g_193[2],(void*)0,(void*)0,&p_666->g_193[2],(void*)0,&p_666->g_193[2],(void*)0,(void*)0},{&p_666->g_193[2],(void*)0,(void*)0,&p_666->g_193[2],(void*)0,&p_666->g_193[2],(void*)0,(void*)0},{&p_666->g_193[2],(void*)0,(void*)0,&p_666->g_193[2],(void*)0,&p_666->g_193[2],(void*)0,(void*)0}};
        int64_t *l_239 = &p_666->g_79;
        uint8_t *l_240 = &p_666->g_103;
        uint32_t l_242 = 1UL;
        VECTOR(int8_t, 2) l_254 = (VECTOR(int8_t, 2))(0x45L, (-1L));
        VECTOR(uint8_t, 8) l_258 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x5BL), 0x5BL), 0x5BL, 1UL, 0x5BL);
        VECTOR(uint8_t, 16) l_259 = (VECTOR(uint8_t, 16))(249UL, (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 8UL), 8UL), 8UL, 249UL, 8UL, (VECTOR(uint8_t, 2))(249UL, 8UL), (VECTOR(uint8_t, 2))(249UL, 8UL), 249UL, 8UL, 249UL, 8UL);
        int64_t l_261 = 1L;
        union U0 *l_265 = &p_666->g_206;
        int32_t l_272 = 0x7B86A834L;
        int16_t l_285 = 0x2EA8L;
        VECTOR(int16_t, 2) l_289 = (VECTOR(int16_t, 2))((-5L), 0x6358L);
        union U2 *l_307 = &p_666->g_249;
        VECTOR(int64_t, 2) l_391 = (VECTOR(int64_t, 2))(0x23A7C934FE4D9037L, (-1L));
        int8_t **l_426 = &l_424;
        int32_t l_431 = (-1L);
        int32_t l_432[4][10][6] = {{{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL}},{{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL}},{{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL}},{{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL},{0x4FB258ECL,(-7L),0x180F64D7L,0x3CC2DEC5L,0x3CFEC69BL,0x68FC565EL}}};
        uint32_t l_445 = 0xA5B92E3AL;
        uint16_t l_472[2];
        VECTOR(int8_t, 16) l_482 = (VECTOR(int8_t, 16))((-6L), (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 0L), 0L), 0L, (-6L), 0L, (VECTOR(int8_t, 2))((-6L), 0L), (VECTOR(int8_t, 2))((-6L), 0L), (-6L), 0L, (-6L), 0L);
        uint16_t l_486 = 0xB7D7L;
        int64_t l_535 = (-1L);
        VECTOR(uint8_t, 16) l_546 = (VECTOR(uint8_t, 16))(0xD8L, (VECTOR(uint8_t, 4))(0xD8L, (VECTOR(uint8_t, 2))(0xD8L, 0x36L), 0x36L), 0x36L, 0xD8L, 0x36L, (VECTOR(uint8_t, 2))(0xD8L, 0x36L), (VECTOR(uint8_t, 2))(0xD8L, 0x36L), 0xD8L, 0x36L, 0xD8L, 0x36L);
        VECTOR(uint8_t, 2) l_553 = (VECTOR(uint8_t, 2))(1UL, 0x6DL);
        int32_t l_613 = (-4L);
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_472[i] = 0xC925L;
        (*l_177) = ((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 4))((!((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(p_3, ((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 4))((((safe_mod_func_int64_t_s_s((l_177 != ((*l_179) = ((*p_666->g_111) = (p_666->g_178 , l_177)))), (safe_lshift_func_uint8_t_u_u(((((~(((*p_666->g_10) = p_3) , (p_3 >= (safe_div_func_uint8_t_u_u(((++p_666->g_193[2]) ^ 1UL), (p_3 & (*p_666->g_10))))))) != p_3) , l_196) == &p_666->g_135[2][4][0]), 3)))) < p_3) , (**l_179)), ((VECTOR(int16_t, 2))(0x5699L)), 6L)), ((VECTOR(int16_t, 4))(0x0CC2L))))), (*l_177), 0x761EL, 7L)).s1405764414703056 && ((VECTOR(int16_t, 16))((-3L)))))).s9e97))).xwyzywzy, ((VECTOR(uint16_t, 8))(0xD9B3L))))).s2;
        (*p_666->g_111) = (*p_666->g_111);
        (**l_179) = ((((safe_mul_func_uint16_t_u_u((((p_666->g_89[2][2] , &p_666->g_135[2][1][2]) != (void*)0) != (((p_666->g_122 || (((safe_div_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((p_3 || (+(((*l_240) ^= (safe_mul_func_uint8_t_u_u(p_3, ((safe_sub_func_uint64_t_u_u((safe_div_func_uint16_t_u_u((p_666->g_211[1][3][0].f0 > (((*l_239) &= (safe_lshift_func_uint16_t_u_u(((safe_sub_func_int32_t_s_s((safe_add_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((((((VECTOR(uint64_t, 2))(p_666->g_238.yy)).hi , (void*)0) != (void*)0) <= 0x78256CFAL), 0)), (*l_177))), p_3)) != p_666->g_165.sf), p_666->g_201.f0))) , (-3L))), 0x2C59L)), p_3)) <= (**l_179))))) & (**l_179)))), (*l_180))), p_666->g_193[2])) && l_241[0]) || 1L)) || l_242) < (*l_177))), (*l_180))) < p_666->g_76) > (*l_177)) && p_3);
    }
    for (p_666->g_66 = (-7); (p_666->g_66 > 27); p_666->g_66 = safe_add_func_uint32_t_u_u(p_666->g_66, 2))
    { /* block id: 222 */
        uint64_t l_637 = 0UL;
        VECTOR(uint32_t, 2) l_639 = (VECTOR(uint32_t, 2))(0xCFA9B97DL, 0x6D79C602L);
        int i;
        for (l_312 = 0; (l_312 >= 25); l_312 = safe_add_func_int64_t_s_s(l_312, 9))
        { /* block id: 225 */
            int32_t *l_620[5];
            int16_t *l_647 = (void*)0;
            int16_t *l_648 = &p_666->g_443;
            int i;
            for (i = 0; i < 5; i++)
                l_620[i] = &p_666->g_420.f0;
            p_666->g_420.f0 = ((VECTOR(int32_t, 2))(0x1FBE7244L, (-1L))).odd;
            if (((VECTOR(int32_t, 4))(0L, ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(p_666->g_621.yy)) && ((VECTOR(int32_t, 2))(p_666->g_622.s12))))), (int32_t)(safe_mul_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((((safe_mul_func_int16_t_s_s(((*l_648) = (safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))((0xB8L != (safe_lshift_func_uint8_t_u_u(p_666->g_214.f0, l_637))), ((VECTOR(uint8_t, 4))(p_666->g_638.s1b21)), 0xA6L, ((((VECTOR(uint32_t, 8))(l_639.yyyyyxyy)).s0 < (*p_666->g_112)) ^ (safe_add_func_int64_t_s_s(0x7A13259DACB73B64L, (safe_add_func_int32_t_s_s((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(0x14C9L, 0UL)), ((*p_666->g_598) != &l_424), 65535UL, (&p_666->g_76 != &p_666->g_314), ((VECTOR(uint16_t, 4))(1UL)), 1UL, ((VECTOR(uint16_t, 4))(0x6D07L)), 1UL, 0x9716L)).sa4 + ((VECTOR(uint16_t, 2))(0xFC5AL))))).yyyyxxyx, ((VECTOR(uint16_t, 8))(65535UL))))).s0745272275365125 | ((VECTOR(uint16_t, 16))(0x9190L))))).s3 ^ 1UL), 0xBDC86AD7L))))), 7UL, p_3, 255UL, p_3, l_646, 0x47L, ((VECTOR(uint8_t, 2))(2UL)), 0x98L)).hi * ((VECTOR(uint8_t, 8))(3UL))))).s7, p_3))), p_666->g_78)) >= GROUP_DIVERGE(0, 1)) , p_666->g_565.f0), 14)), l_637)), p_3)), (int32_t)p_3))).lo, 0x6B5D53A3L, 0x47BE5C5EL)).x)
            { /* block id: 228 */
                int32_t *l_651 = (void*)0;
                for (p_666->g_178.f0 = 0; (p_666->g_178.f0 < 50); p_666->g_178.f0 = safe_add_func_int64_t_s_s(p_666->g_178.f0, 3))
                { /* block id: 231 */
                    l_651 = (*p_666->g_111);
                }
                return (**p_666->g_111);
            }
            else
            { /* block id: 235 */
                return p_3;
            }
        }
    }
    l_177 = (*p_666->g_111);
    return (*l_177);
}


/* ------------------------------------------ */
/* 
 * reads : p_666->g_111 p_666->g_112 p_666->g_66 p_666->g_135 p_666->g_139 p_666->g_165 p_666->g_120 p_666->g_61.f0 p_666->g_172
 * writes: p_666->g_112 p_666->g_66 p_666->g_135
 */
union U2  func_4(int8_t * p_5, int32_t  p_6, uint8_t  p_7, int8_t  p_8, int8_t * p_9, struct S4 * p_666)
{ /* block id: 59 */
    union U0 *l_140 = &p_666->g_61[1];
    VECTOR(int8_t, 16) l_150 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 8L), 8L), 8L, 1L, 8L, (VECTOR(int8_t, 2))(1L, 8L), (VECTOR(int8_t, 2))(1L, 8L), 1L, 8L, 1L, 8L);
    VECTOR(int64_t, 16) l_157 = (VECTOR(int64_t, 16))((-8L), (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), (-4L)), (-4L)), (-4L), (-8L), (-4L), (VECTOR(int64_t, 2))((-8L), (-4L)), (VECTOR(int64_t, 2))((-8L), (-4L)), (-8L), (-4L), (-8L), (-4L));
    VECTOR(int64_t, 16) l_158 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-6L)), (-6L)), (-6L), (-1L), (-6L), (VECTOR(int64_t, 2))((-1L), (-6L)), (VECTOR(int64_t, 2))((-1L), (-6L)), (-1L), (-6L), (-1L), (-6L));
    VECTOR(uint64_t, 16) l_159 = (VECTOR(uint64_t, 16))(0x3DE727DB1D573E28L, (VECTOR(uint64_t, 4))(0x3DE727DB1D573E28L, (VECTOR(uint64_t, 2))(0x3DE727DB1D573E28L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x3DE727DB1D573E28L, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0x3DE727DB1D573E28L, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0x3DE727DB1D573E28L, 18446744073709551615UL), 0x3DE727DB1D573E28L, 18446744073709551615UL, 0x3DE727DB1D573E28L, 18446744073709551615UL);
    uint32_t l_164 = 0UL;
    int8_t *l_169 = (void*)0;
    int i;
    (*p_666->g_111) = (*p_666->g_111);
    for (p_666->g_66 = 29; (p_666->g_66 != 20); --p_666->g_66)
    { /* block id: 63 */
        union U0 **l_141 = &l_140;
        int32_t l_142 = (-4L);
        VECTOR(int8_t, 4) l_145 = (VECTOR(int8_t, 4))(0x7AL, (VECTOR(int8_t, 2))(0x7AL, 1L), 1L);
        int8_t *l_148[3][2][9] = {{{&p_666->g_120,&p_666->g_77,&p_666->g_120,&p_666->g_120,&p_666->g_77,&p_666->g_120,&p_666->g_120,&p_666->g_77,&p_666->g_120},{&p_666->g_120,&p_666->g_77,&p_666->g_120,&p_666->g_120,&p_666->g_77,&p_666->g_120,&p_666->g_120,&p_666->g_77,&p_666->g_120}},{{&p_666->g_120,&p_666->g_77,&p_666->g_120,&p_666->g_120,&p_666->g_77,&p_666->g_120,&p_666->g_120,&p_666->g_77,&p_666->g_120},{&p_666->g_120,&p_666->g_77,&p_666->g_120,&p_666->g_120,&p_666->g_77,&p_666->g_120,&p_666->g_120,&p_666->g_77,&p_666->g_120}},{{&p_666->g_120,&p_666->g_77,&p_666->g_120,&p_666->g_120,&p_666->g_77,&p_666->g_120,&p_666->g_120,&p_666->g_77,&p_666->g_120},{&p_666->g_120,&p_666->g_77,&p_666->g_120,&p_666->g_120,&p_666->g_77,&p_666->g_120,&p_666->g_120,&p_666->g_77,&p_666->g_120}}};
        int8_t *l_149 = &p_666->g_120;
        int8_t **l_170 = &l_148[2][1][5];
        uint32_t l_171 = 0xFB15D496L;
        int i, j, k;
        (*p_666->g_139) = p_666->g_135[2][4][0];
        (*l_141) = l_140;
        l_142 = l_142;
        l_171 = ((safe_rshift_func_int16_t_s_s((((VECTOR(int8_t, 4))(l_145.xxyw)).y < (safe_rshift_func_int8_t_s_s(((((((&p_666->g_120 != ((*l_170) = func_23(func_18((l_148[2][1][8] = &p_666->g_77), (l_169 = func_18(l_149, (((((VECTOR(int8_t, 8))(l_150.s1e74e044)).s4 & 1L) , ((VECTOR(uint32_t, 2))(0x407B9BD9L, 0x82C0EE4DL)).even) , &p_8), (safe_add_func_int64_t_s_s((((safe_mul_func_uint8_t_u_u(255UL, ((safe_mod_func_uint32_t_u_u((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))(l_157.s4a)).xxyxxyxx && ((VECTOR(int64_t, 8))(l_158.s9b231f37))))).s4 == ((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 8))(l_159.s89a5802a))))).s5700511560336412, ((VECTOR(uint64_t, 4))(p_8, 18446744073709551609UL, 1UL, 0UL)).wxyxyzwywxxywyyw, ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 4))((safe_lshift_func_int8_t_s_u(l_164, GROUP_DIVERGE(2, 1))), 0UL, 4294967292UL, 1UL)).wwxyyzxz, ((VECTOR(uint32_t, 16))(p_666->g_165.sb60f77c65b12cc52)).hi))).odd, ((VECTOR(uint32_t, 8))(0xD16FCC1BL, 0x73BA691AL, (safe_add_func_int16_t_s_s((safe_unary_minus_func_int64_t_s(l_157.sb)), l_158.s8)), 4294967290UL, 0UL, 0xC5A253C7L, 0x3F720A13L, 0xF6D35079L)).even))).yyyyzxwxwyxzxzyx + ((VECTOR(uint64_t, 16))(18446744073709551613UL)))))))).s7), 6UL)) , 0x55L))) | (**p_666->g_111)) == l_145.w), p_666->g_165.s2)), l_157.sf, p_666)), l_142, l_145.x, p_666), &p_666->g_11, &p_666->g_120, p_666->g_120, l_142, p_666))) >= p_8) >= (-1L)) && 0xD1E4CC4E5DE65A91L) & p_8) > p_666->g_61[1].f0), 5))), 0)) | p_6);
    }
    return p_666->g_172;
}


/* ------------------------------------------ */
/* 
 * reads : p_666->g_111 p_666->g_112 p_666->g_66 p_666->g_10 p_666->g_11
 * writes: p_666->g_66
 */
int8_t  func_13(uint16_t  p_14, int8_t * p_15, uint8_t  p_16, int8_t * p_17, struct S4 * p_666)
{ /* block id: 56 */
    (**p_666->g_111) |= p_16;
    return (*p_666->g_10);
}


/* ------------------------------------------ */
/* 
 * reads : p_666->g_112 p_666->g_66 l_312
 * writes:
 */
int8_t * func_18(int8_t * p_19, int8_t * p_20, int16_t  p_21, uint32_t  p_22, struct S4 * p_666)
{ /* block id: 52 */
    uint16_t l_129[6][7][5] = {{{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL}},{{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL}},{{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL}},{{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL}},{{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL}},{{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL},{0x530BL,65535UL,0UL,0xAE58L,0x8EBAL}}};
    int32_t l_132 = 0x3A99FBD2L;
    int i, j, k;
    --l_129[4][3][3];
    l_132 |= (*p_666->g_112);
    return &p_666->g_120;
}


/* ------------------------------------------ */
/* 
 * reads : p_666->g_111
 * writes: p_666->g_112
 */
int8_t * func_23(int8_t * p_24, int8_t * p_25, int8_t * p_26, uint8_t  p_27, uint8_t  p_28, struct S4 * p_666)
{ /* block id: 49 */
    int16_t l_127 = (-1L);
    int32_t *l_128 = &p_666->g_66;
    (*p_666->g_111) = (l_127 , l_128);
    return p_26;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_29(int32_t  p_30, struct S4 * p_666)
{ /* block id: 5 */
    return &p_666->g_11;
}


/* ------------------------------------------ */
/* 
 * reads : p_666->g_111 p_666->g_112 p_666->g_66 p_666->g_79 p_666->g_123
 * writes: p_666->g_111 p_666->g_66 p_666->g_79 p_666->g_123
 */
int32_t  func_31(int64_t  p_32, int64_t  p_33, int64_t  p_34, int8_t * p_35, struct S4 * p_666)
{ /* block id: 33 */
    int32_t *l_119[7] = {&p_666->g_66,&p_666->g_66,&p_666->g_66,&p_666->g_66,&p_666->g_66,&p_666->g_66,&p_666->g_66};
    int i;
    for (p_33 = (-19); (p_33 < 29); p_33 = safe_add_func_int16_t_s_s(p_33, 4))
    { /* block id: 36 */
        int32_t ***l_113 = (void*)0;
        int32_t ***l_114 = &p_666->g_111;
        int32_t **l_116 = (void*)0;
        int32_t ***l_115 = &l_116;
        (*l_115) = ((*l_114) = p_666->g_111);
        (**p_666->g_111) = ((***l_114) < p_34);
        for (p_666->g_79 = (-10); (p_666->g_79 > 21); ++p_666->g_79)
        { /* block id: 42 */
            return p_32;
        }
    }
    (**p_666->g_111) |= ((((void*)0 != l_119[0]) , ((void*)0 == &p_666->g_103)) , p_33);
    --p_666->g_123;
    return p_34;
}


/* ------------------------------------------ */
/* 
 * reads : p_666->g_61.f0 p_666->g_103 p_666->g_89 p_666->g_79 p_666->g_66 p_666->g_76
 * writes: p_666->g_103 p_666->g_66
 */
uint32_t  func_38(uint32_t  p_39, int8_t * p_40, uint32_t  p_41, uint32_t  p_42, int8_t * p_43, struct S4 * p_666)
{ /* block id: 26 */
    uint64_t l_96 = 0x99989FA4E93F460CL;
    int32_t l_99 = 0x4BF8205CL;
    uint8_t *l_102 = &p_666->g_103;
    int32_t l_106 = 3L;
    int32_t *l_107 = &p_666->g_66;
    (*l_107) &= ((safe_rshift_func_int16_t_s_s(((safe_add_func_int64_t_s_s((((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(l_96, 5L, 0L, (-1L), p_42, (-1L), (0x30E3L && (safe_rshift_func_int16_t_s_s((p_666->g_61[1].f0 , 0x22E8L), (l_99 = l_96)))), (safe_sub_func_int16_t_s_s((0x5A24BAAF5047EB93L & (GROUP_DIVERGE(1, 1) | (-6L))), ((((++(*l_102)) | ((((249UL < GROUP_DIVERGE(0, 1)) || p_666->g_89[1][5]) & GROUP_DIVERGE(2, 1)) | p_41)) || l_106) <= l_96))), ((VECTOR(int64_t, 2))(0x75AA8E5449298730L)), 1L, 0x23BFC9F35A7B369AL, ((VECTOR(int64_t, 2))(0x29F70EF1A53783ADL)), 0x2C0D59BB75F8F1AFL, 6L)).lo && ((VECTOR(int64_t, 8))(0x7D2F113D487E53E2L))))).hi, ((VECTOR(int64_t, 4))(0x121EC5D866FAEDDAL)), ((VECTOR(int64_t, 4))(0x11F1F153C6A96B58L))))).yxzxzxxz < ((VECTOR(int64_t, 8))(0x5364FFC8C377FA48L))))).s7722377145777437, ((VECTOR(int64_t, 16))(0L))))).sc || 18446744073709551613UL), FAKE_DIVERGE(p_666->group_1_offset, get_group_id(1), 10))) != 0x5FA4L), p_42)) < p_666->g_79);
    (*l_107) &= p_39;
    (*l_107) = (2UL & p_666->g_89[3][3]);
    return p_666->g_76;
}


/* ------------------------------------------ */
/* 
 * reads : p_666->g_66 p_666->g_89 p_666->g_61.f0
 * writes: p_666->g_66 p_666->g_89
 */
uint16_t  func_48(int8_t  p_49, int8_t * p_50, uint64_t  p_51, int8_t * p_52, struct S4 * p_666)
{ /* block id: 7 */
    int16_t l_74 = 0x24E7L;
    int32_t l_75[6][7][6] = {{{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L}},{{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L}},{{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L}},{{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L}},{{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L}},{{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L},{(-5L),0x45CC99CFL,0x0CF68020L,0x6E1E3C1DL,0x4AEC2B2AL,1L}}};
    int32_t *l_84 = (void*)0;
    int32_t *l_85 = &l_75[5][2][2];
    int32_t *l_86 = (void*)0;
    int32_t *l_87 = (void*)0;
    int32_t *l_88[5] = {&l_75[1][6][2],&l_75[1][6][2],&l_75[1][6][2],&l_75[1][6][2],&l_75[1][6][2]};
    int i, j, k;
    for (p_49 = 25; (p_49 > 16); --p_49)
    { /* block id: 10 */
        union U0 *l_60 = &p_666->g_61[1];
        int32_t l_67 = 0x1F64DB2AL;
        int32_t *l_68 = &l_67;
        int32_t *l_69 = &l_67;
        int32_t *l_70 = &l_67;
        int32_t *l_71 = &l_67;
        int32_t *l_72 = (void*)0;
        int32_t *l_73[4][1][2];
        uint32_t l_81 = 4294967289UL;
        int i, j, k;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 2; k++)
                    l_73[i][j][k] = &l_67;
            }
        }
        for (p_51 = 0; (p_51 != 51); ++p_51)
        { /* block id: 13 */
            union U0 *l_62 = &p_666->g_61[0];
            l_62 = l_60;
        }
        for (p_51 = 0; (p_51 >= 39); ++p_51)
        { /* block id: 18 */
            int32_t *l_65 = &p_666->g_66;
            (*l_65) |= 0x26ADD33DL;
            if (l_67)
                break;
        }
        ++l_81;
    }
    p_666->g_89[3][3]--;
    return p_666->g_61[1].f0;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_667;
    struct S4* p_666 = &c_667;
    struct S4 c_668 = {
        3L, // p_666->g_11
        &p_666->g_11, // p_666->g_10
        {{1UL},{1UL}}, // p_666->g_61
        1L, // p_666->g_66
        4L, // p_666->g_76
        1L, // p_666->g_77
        1L, // p_666->g_78
        3L, // p_666->g_79
        0x152899D3L, // p_666->g_80
        {{0xF9F6C923L,0x3AA3A0A7L,0xBDFE816DL,0xFEFE548CL,0xBDFE816DL,0x3AA3A0A7L,0xF9F6C923L,1UL},{0xF9F6C923L,0x3AA3A0A7L,0xBDFE816DL,0xFEFE548CL,0xBDFE816DL,0x3AA3A0A7L,0xF9F6C923L,1UL},{0xF9F6C923L,0x3AA3A0A7L,0xBDFE816DL,0xFEFE548CL,0xBDFE816DL,0x3AA3A0A7L,0xF9F6C923L,1UL},{0xF9F6C923L,0x3AA3A0A7L,0xBDFE816DL,0xFEFE548CL,0xBDFE816DL,0x3AA3A0A7L,0xF9F6C923L,1UL}}, // p_666->g_89
        0UL, // p_666->g_103
        &p_666->g_66, // p_666->g_112
        &p_666->g_112, // p_666->g_111
        0L, // p_666->g_120
        0x6331E6C26E64EF7BL, // p_666->g_121
        0x5A80D186L, // p_666->g_122
        0UL, // p_666->g_123
        {0x8A50E592CA9757F0L}, // p_666->g_137
        &p_666->g_137, // p_666->g_136
        {{{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136}},{{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136}},{{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136}},{{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136},{&p_666->g_136,&p_666->g_136,&p_666->g_136}}}, // p_666->g_135
        (void*)0, // p_666->g_138
        &p_666->g_135[2][5][2], // p_666->g_139
        (VECTOR(uint32_t, 16))(4294967293UL, (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 2UL), 2UL), 2UL, 4294967293UL, 2UL, (VECTOR(uint32_t, 2))(4294967293UL, 2UL), (VECTOR(uint32_t, 2))(4294967293UL, 2UL), 4294967293UL, 2UL, 4294967293UL, 2UL), // p_666->g_165
        {0xD468FBE2ECC4F0A1L}, // p_666->g_172
        {1UL}, // p_666->g_178
        {0UL,0UL,0UL}, // p_666->g_193
        {7UL}, // p_666->g_199
        {{0xCD07D77FA01DA8FAL},{0xCD07D77FA01DA8FAL},{0xCD07D77FA01DA8FAL},{0xCD07D77FA01DA8FAL},{0xCD07D77FA01DA8FAL}}, // p_666->g_200
        {18446744073709551610UL}, // p_666->g_201
        {18446744073709551615UL}, // p_666->g_202
        {1UL}, // p_666->g_203
        {18446744073709551610UL}, // p_666->g_204
        {18446744073709551615UL}, // p_666->g_205
        {0xDD72962DCB01C2EBL}, // p_666->g_206
        {0UL}, // p_666->g_207
        {1UL}, // p_666->g_208
        {0x07945E16A52C59D5L}, // p_666->g_209
        {0x6D5BFB38901DACA5L}, // p_666->g_210
        {{{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}}},{{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}}},{{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}}},{{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}},{{0xED5E9691121BBF2BL},{0xED5E9691121BBF2BL},{0x6DCD9579318AA528L},{5UL}}}}, // p_666->g_211
        {0x0B13E44FBD2D9BE9L}, // p_666->g_212
        {0x858AB291146D75CFL}, // p_666->g_213
        {0x5D199DA16F4BA2F3L}, // p_666->g_214
        {1UL}, // p_666->g_215
        {1UL}, // p_666->g_216
        {{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}, // p_666->g_217
        (VECTOR(uint64_t, 2))(0x47C4C677B6004B46L, 3UL), // p_666->g_238
        {6UL}, // p_666->g_249
        (VECTOR(uint8_t, 8))(0x83L, (VECTOR(uint8_t, 4))(0x83L, (VECTOR(uint8_t, 2))(0x83L, 255UL), 255UL), 255UL, 0x83L, 255UL), // p_666->g_257
        (VECTOR(int8_t, 2))(7L, (-8L)), // p_666->g_262
        (VECTOR(int16_t, 4))(4L, (VECTOR(int16_t, 2))(4L, 0x5B07L), 0x5B07L), // p_666->g_266
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 4UL), 4UL), 4UL, 0UL, 4UL), // p_666->g_270
        (void*)0, // p_666->g_308
        0x3CE7L, // p_666->g_314
        {{18446744073709551609UL,18446744073709551609UL,18446744073709551609UL}}, // p_666->g_315
        (VECTOR(int32_t, 16))(0x21B3EB41L, (VECTOR(int32_t, 4))(0x21B3EB41L, (VECTOR(int32_t, 2))(0x21B3EB41L, 1L), 1L), 1L, 0x21B3EB41L, 1L, (VECTOR(int32_t, 2))(0x21B3EB41L, 1L), (VECTOR(int32_t, 2))(0x21B3EB41L, 1L), 0x21B3EB41L, 1L, 0x21B3EB41L, 1L), // p_666->g_320
        (VECTOR(uint64_t, 8))(0x330E1B65AA1217C3L, (VECTOR(uint64_t, 4))(0x330E1B65AA1217C3L, (VECTOR(uint64_t, 2))(0x330E1B65AA1217C3L, 0xC37AA4A9C5D720C5L), 0xC37AA4A9C5D720C5L), 0xC37AA4A9C5D720C5L, 0x330E1B65AA1217C3L, 0xC37AA4A9C5D720C5L), // p_666->g_357
        (void*)0, // p_666->g_386
        &p_666->g_386, // p_666->g_385
        (VECTOR(int64_t, 4))(0x263157CBFBA79588L, (VECTOR(int64_t, 2))(0x263157CBFBA79588L, 0x7689C1255270AF65L), 0x7689C1255270AF65L), // p_666->g_389
        (VECTOR(int64_t, 8))(8L, (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, 0x1CE6FC17ADEB0F8DL), 0x1CE6FC17ADEB0F8DL), 0x1CE6FC17ADEB0F8DL, 8L, 0x1CE6FC17ADEB0F8DL), // p_666->g_390
        (VECTOR(int32_t, 8))(0x36256F05L, (VECTOR(int32_t, 4))(0x36256F05L, (VECTOR(int32_t, 2))(0x36256F05L, 0x7D722CDDL), 0x7D722CDDL), 0x7D722CDDL, 0x36256F05L, 0x7D722CDDL), // p_666->g_393
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 6L), 6L), 6L, 1L, 6L, (VECTOR(int32_t, 2))(1L, 6L), (VECTOR(int32_t, 2))(1L, 6L), 1L, 6L, 1L, 6L), // p_666->g_395
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_666->g_409
        (void*)0, // p_666->g_410
        {{&p_666->g_135[0][4][2]},{&p_666->g_135[0][4][2]},{&p_666->g_135[0][4][2]},{&p_666->g_135[0][4][2]},{&p_666->g_135[0][4][2]},{&p_666->g_135[0][4][2]},{&p_666->g_135[0][4][2]},{&p_666->g_135[0][4][2]},{&p_666->g_135[0][4][2]}}, // p_666->g_411
        {-10L}, // p_666->g_420
        18446744073709551613UL, // p_666->g_423
        {0x04803E60E84CA24EL}, // p_666->g_425
        0x3853L, // p_666->g_443
        (VECTOR(int64_t, 8))(0x3218900FA05BAE70L, (VECTOR(int64_t, 4))(0x3218900FA05BAE70L, (VECTOR(int64_t, 2))(0x3218900FA05BAE70L, 0x6AE13EDB6E51BC03L), 0x6AE13EDB6E51BC03L), 0x6AE13EDB6E51BC03L, 0x3218900FA05BAE70L, 0x6AE13EDB6E51BC03L), // p_666->g_519
        &p_666->g_249, // p_666->g_529
        (VECTOR(uint8_t, 8))(0x51L, (VECTOR(uint8_t, 4))(0x51L, (VECTOR(uint8_t, 2))(0x51L, 0UL), 0UL), 0UL, 0x51L, 0UL), // p_666->g_545
        (VECTOR(uint8_t, 2))(0UL, 0xC9L), // p_666->g_550
        (VECTOR(uint8_t, 16))(9UL, (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 255UL), 255UL), 255UL, 9UL, 255UL, (VECTOR(uint8_t, 2))(9UL, 255UL), (VECTOR(uint8_t, 2))(9UL, 255UL), 9UL, 255UL, 9UL, 255UL), // p_666->g_559
        {0UL}, // p_666->g_565
        0UL, // p_666->g_584
        {{{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10}},{{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10}},{{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10}},{{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10}},{{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10}},{{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10}},{{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10}},{{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10}},{{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10}},{{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10},{&p_666->g_10,&p_666->g_10}}}, // p_666->g_599
        &p_666->g_599[5][2][0], // p_666->g_598
        &p_666->g_386, // p_666->g_606
        &p_666->g_606, // p_666->g_605
        {{(-1L),0x18D1A84AL,0x66B59DC3L,0x18D1A84AL},{(-1L),0x18D1A84AL,0x66B59DC3L,0x18D1A84AL},{(-1L),0x18D1A84AL,0x66B59DC3L,0x18D1A84AL},{(-1L),0x18D1A84AL,0x66B59DC3L,0x18D1A84AL},{(-1L),0x18D1A84AL,0x66B59DC3L,0x18D1A84AL},{(-1L),0x18D1A84AL,0x66B59DC3L,0x18D1A84AL},{(-1L),0x18D1A84AL,0x66B59DC3L,0x18D1A84AL},{(-1L),0x18D1A84AL,0x66B59DC3L,0x18D1A84AL},{(-1L),0x18D1A84AL,0x66B59DC3L,0x18D1A84AL},{(-1L),0x18D1A84AL,0x66B59DC3L,0x18D1A84AL}}, // p_666->g_609
        (VECTOR(int32_t, 2))(0x1B0485B2L, 0x1E82ECA4L), // p_666->g_621
        (VECTOR(int32_t, 8))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0L), 0L), 0L, (-5L), 0L), // p_666->g_622
        (VECTOR(uint8_t, 16))(0xFDL, (VECTOR(uint8_t, 4))(0xFDL, (VECTOR(uint8_t, 2))(0xFDL, 0xB1L), 0xB1L), 0xB1L, 0xFDL, 0xB1L, (VECTOR(uint8_t, 2))(0xFDL, 0xB1L), (VECTOR(uint8_t, 2))(0xFDL, 0xB1L), 0xFDL, 0xB1L, 0xFDL, 0xB1L), // p_666->g_638
        0xE1L, // p_666->g_663
        sequence_input[get_global_id(0)], // p_666->global_0_offset
        sequence_input[get_global_id(1)], // p_666->global_1_offset
        sequence_input[get_global_id(2)], // p_666->global_2_offset
        sequence_input[get_local_id(0)], // p_666->local_0_offset
        sequence_input[get_local_id(1)], // p_666->local_1_offset
        sequence_input[get_local_id(2)], // p_666->local_2_offset
        sequence_input[get_group_id(0)], // p_666->group_0_offset
        sequence_input[get_group_id(1)], // p_666->group_1_offset
        sequence_input[get_group_id(2)], // p_666->group_2_offset
    };
    c_667 = c_668;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_666);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_666->g_11, "p_666->g_11", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_666->g_61[i].f0, "p_666->g_61[i].f0", print_hash_value);

    }
    transparent_crc(p_666->g_66, "p_666->g_66", print_hash_value);
    transparent_crc(p_666->g_76, "p_666->g_76", print_hash_value);
    transparent_crc(p_666->g_77, "p_666->g_77", print_hash_value);
    transparent_crc(p_666->g_78, "p_666->g_78", print_hash_value);
    transparent_crc(p_666->g_79, "p_666->g_79", print_hash_value);
    transparent_crc(p_666->g_80, "p_666->g_80", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_666->g_89[i][j], "p_666->g_89[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_666->g_103, "p_666->g_103", print_hash_value);
    transparent_crc(p_666->g_120, "p_666->g_120", print_hash_value);
    transparent_crc(p_666->g_121, "p_666->g_121", print_hash_value);
    transparent_crc(p_666->g_122, "p_666->g_122", print_hash_value);
    transparent_crc(p_666->g_123, "p_666->g_123", print_hash_value);
    transparent_crc(p_666->g_137.f0, "p_666->g_137.f0", print_hash_value);
    transparent_crc(p_666->g_165.s0, "p_666->g_165.s0", print_hash_value);
    transparent_crc(p_666->g_165.s1, "p_666->g_165.s1", print_hash_value);
    transparent_crc(p_666->g_165.s2, "p_666->g_165.s2", print_hash_value);
    transparent_crc(p_666->g_165.s3, "p_666->g_165.s3", print_hash_value);
    transparent_crc(p_666->g_165.s4, "p_666->g_165.s4", print_hash_value);
    transparent_crc(p_666->g_165.s5, "p_666->g_165.s5", print_hash_value);
    transparent_crc(p_666->g_165.s6, "p_666->g_165.s6", print_hash_value);
    transparent_crc(p_666->g_165.s7, "p_666->g_165.s7", print_hash_value);
    transparent_crc(p_666->g_165.s8, "p_666->g_165.s8", print_hash_value);
    transparent_crc(p_666->g_165.s9, "p_666->g_165.s9", print_hash_value);
    transparent_crc(p_666->g_165.sa, "p_666->g_165.sa", print_hash_value);
    transparent_crc(p_666->g_165.sb, "p_666->g_165.sb", print_hash_value);
    transparent_crc(p_666->g_165.sc, "p_666->g_165.sc", print_hash_value);
    transparent_crc(p_666->g_165.sd, "p_666->g_165.sd", print_hash_value);
    transparent_crc(p_666->g_165.se, "p_666->g_165.se", print_hash_value);
    transparent_crc(p_666->g_165.sf, "p_666->g_165.sf", print_hash_value);
    transparent_crc(p_666->g_172.f0, "p_666->g_172.f0", print_hash_value);
    transparent_crc(p_666->g_178.f0, "p_666->g_178.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_666->g_193[i], "p_666->g_193[i]", print_hash_value);

    }
    transparent_crc(p_666->g_199.f0, "p_666->g_199.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_666->g_200[i].f0, "p_666->g_200[i].f0", print_hash_value);

    }
    transparent_crc(p_666->g_201.f0, "p_666->g_201.f0", print_hash_value);
    transparent_crc(p_666->g_202.f0, "p_666->g_202.f0", print_hash_value);
    transparent_crc(p_666->g_203.f0, "p_666->g_203.f0", print_hash_value);
    transparent_crc(p_666->g_204.f0, "p_666->g_204.f0", print_hash_value);
    transparent_crc(p_666->g_205.f0, "p_666->g_205.f0", print_hash_value);
    transparent_crc(p_666->g_206.f0, "p_666->g_206.f0", print_hash_value);
    transparent_crc(p_666->g_207.f0, "p_666->g_207.f0", print_hash_value);
    transparent_crc(p_666->g_208.f0, "p_666->g_208.f0", print_hash_value);
    transparent_crc(p_666->g_209.f0, "p_666->g_209.f0", print_hash_value);
    transparent_crc(p_666->g_210.f0, "p_666->g_210.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_666->g_211[i][j][k].f0, "p_666->g_211[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_666->g_212.f0, "p_666->g_212.f0", print_hash_value);
    transparent_crc(p_666->g_213.f0, "p_666->g_213.f0", print_hash_value);
    transparent_crc(p_666->g_214.f0, "p_666->g_214.f0", print_hash_value);
    transparent_crc(p_666->g_215.f0, "p_666->g_215.f0", print_hash_value);
    transparent_crc(p_666->g_216.f0, "p_666->g_216.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_666->g_217[i].f0, "p_666->g_217[i].f0", print_hash_value);

    }
    transparent_crc(p_666->g_238.x, "p_666->g_238.x", print_hash_value);
    transparent_crc(p_666->g_238.y, "p_666->g_238.y", print_hash_value);
    transparent_crc(p_666->g_249.f0, "p_666->g_249.f0", print_hash_value);
    transparent_crc(p_666->g_257.s0, "p_666->g_257.s0", print_hash_value);
    transparent_crc(p_666->g_257.s1, "p_666->g_257.s1", print_hash_value);
    transparent_crc(p_666->g_257.s2, "p_666->g_257.s2", print_hash_value);
    transparent_crc(p_666->g_257.s3, "p_666->g_257.s3", print_hash_value);
    transparent_crc(p_666->g_257.s4, "p_666->g_257.s4", print_hash_value);
    transparent_crc(p_666->g_257.s5, "p_666->g_257.s5", print_hash_value);
    transparent_crc(p_666->g_257.s6, "p_666->g_257.s6", print_hash_value);
    transparent_crc(p_666->g_257.s7, "p_666->g_257.s7", print_hash_value);
    transparent_crc(p_666->g_262.x, "p_666->g_262.x", print_hash_value);
    transparent_crc(p_666->g_262.y, "p_666->g_262.y", print_hash_value);
    transparent_crc(p_666->g_266.x, "p_666->g_266.x", print_hash_value);
    transparent_crc(p_666->g_266.y, "p_666->g_266.y", print_hash_value);
    transparent_crc(p_666->g_266.z, "p_666->g_266.z", print_hash_value);
    transparent_crc(p_666->g_266.w, "p_666->g_266.w", print_hash_value);
    transparent_crc(p_666->g_270.s0, "p_666->g_270.s0", print_hash_value);
    transparent_crc(p_666->g_270.s1, "p_666->g_270.s1", print_hash_value);
    transparent_crc(p_666->g_270.s2, "p_666->g_270.s2", print_hash_value);
    transparent_crc(p_666->g_270.s3, "p_666->g_270.s3", print_hash_value);
    transparent_crc(p_666->g_270.s4, "p_666->g_270.s4", print_hash_value);
    transparent_crc(p_666->g_270.s5, "p_666->g_270.s5", print_hash_value);
    transparent_crc(p_666->g_270.s6, "p_666->g_270.s6", print_hash_value);
    transparent_crc(p_666->g_270.s7, "p_666->g_270.s7", print_hash_value);
    transparent_crc(p_666->g_314, "p_666->g_314", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_666->g_315[i][j], "p_666->g_315[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_666->g_320.s0, "p_666->g_320.s0", print_hash_value);
    transparent_crc(p_666->g_320.s1, "p_666->g_320.s1", print_hash_value);
    transparent_crc(p_666->g_320.s2, "p_666->g_320.s2", print_hash_value);
    transparent_crc(p_666->g_320.s3, "p_666->g_320.s3", print_hash_value);
    transparent_crc(p_666->g_320.s4, "p_666->g_320.s4", print_hash_value);
    transparent_crc(p_666->g_320.s5, "p_666->g_320.s5", print_hash_value);
    transparent_crc(p_666->g_320.s6, "p_666->g_320.s6", print_hash_value);
    transparent_crc(p_666->g_320.s7, "p_666->g_320.s7", print_hash_value);
    transparent_crc(p_666->g_320.s8, "p_666->g_320.s8", print_hash_value);
    transparent_crc(p_666->g_320.s9, "p_666->g_320.s9", print_hash_value);
    transparent_crc(p_666->g_320.sa, "p_666->g_320.sa", print_hash_value);
    transparent_crc(p_666->g_320.sb, "p_666->g_320.sb", print_hash_value);
    transparent_crc(p_666->g_320.sc, "p_666->g_320.sc", print_hash_value);
    transparent_crc(p_666->g_320.sd, "p_666->g_320.sd", print_hash_value);
    transparent_crc(p_666->g_320.se, "p_666->g_320.se", print_hash_value);
    transparent_crc(p_666->g_320.sf, "p_666->g_320.sf", print_hash_value);
    transparent_crc(p_666->g_357.s0, "p_666->g_357.s0", print_hash_value);
    transparent_crc(p_666->g_357.s1, "p_666->g_357.s1", print_hash_value);
    transparent_crc(p_666->g_357.s2, "p_666->g_357.s2", print_hash_value);
    transparent_crc(p_666->g_357.s3, "p_666->g_357.s3", print_hash_value);
    transparent_crc(p_666->g_357.s4, "p_666->g_357.s4", print_hash_value);
    transparent_crc(p_666->g_357.s5, "p_666->g_357.s5", print_hash_value);
    transparent_crc(p_666->g_357.s6, "p_666->g_357.s6", print_hash_value);
    transparent_crc(p_666->g_357.s7, "p_666->g_357.s7", print_hash_value);
    transparent_crc(p_666->g_389.x, "p_666->g_389.x", print_hash_value);
    transparent_crc(p_666->g_389.y, "p_666->g_389.y", print_hash_value);
    transparent_crc(p_666->g_389.z, "p_666->g_389.z", print_hash_value);
    transparent_crc(p_666->g_389.w, "p_666->g_389.w", print_hash_value);
    transparent_crc(p_666->g_390.s0, "p_666->g_390.s0", print_hash_value);
    transparent_crc(p_666->g_390.s1, "p_666->g_390.s1", print_hash_value);
    transparent_crc(p_666->g_390.s2, "p_666->g_390.s2", print_hash_value);
    transparent_crc(p_666->g_390.s3, "p_666->g_390.s3", print_hash_value);
    transparent_crc(p_666->g_390.s4, "p_666->g_390.s4", print_hash_value);
    transparent_crc(p_666->g_390.s5, "p_666->g_390.s5", print_hash_value);
    transparent_crc(p_666->g_390.s6, "p_666->g_390.s6", print_hash_value);
    transparent_crc(p_666->g_390.s7, "p_666->g_390.s7", print_hash_value);
    transparent_crc(p_666->g_393.s0, "p_666->g_393.s0", print_hash_value);
    transparent_crc(p_666->g_393.s1, "p_666->g_393.s1", print_hash_value);
    transparent_crc(p_666->g_393.s2, "p_666->g_393.s2", print_hash_value);
    transparent_crc(p_666->g_393.s3, "p_666->g_393.s3", print_hash_value);
    transparent_crc(p_666->g_393.s4, "p_666->g_393.s4", print_hash_value);
    transparent_crc(p_666->g_393.s5, "p_666->g_393.s5", print_hash_value);
    transparent_crc(p_666->g_393.s6, "p_666->g_393.s6", print_hash_value);
    transparent_crc(p_666->g_393.s7, "p_666->g_393.s7", print_hash_value);
    transparent_crc(p_666->g_395.s0, "p_666->g_395.s0", print_hash_value);
    transparent_crc(p_666->g_395.s1, "p_666->g_395.s1", print_hash_value);
    transparent_crc(p_666->g_395.s2, "p_666->g_395.s2", print_hash_value);
    transparent_crc(p_666->g_395.s3, "p_666->g_395.s3", print_hash_value);
    transparent_crc(p_666->g_395.s4, "p_666->g_395.s4", print_hash_value);
    transparent_crc(p_666->g_395.s5, "p_666->g_395.s5", print_hash_value);
    transparent_crc(p_666->g_395.s6, "p_666->g_395.s6", print_hash_value);
    transparent_crc(p_666->g_395.s7, "p_666->g_395.s7", print_hash_value);
    transparent_crc(p_666->g_395.s8, "p_666->g_395.s8", print_hash_value);
    transparent_crc(p_666->g_395.s9, "p_666->g_395.s9", print_hash_value);
    transparent_crc(p_666->g_395.sa, "p_666->g_395.sa", print_hash_value);
    transparent_crc(p_666->g_395.sb, "p_666->g_395.sb", print_hash_value);
    transparent_crc(p_666->g_395.sc, "p_666->g_395.sc", print_hash_value);
    transparent_crc(p_666->g_395.sd, "p_666->g_395.sd", print_hash_value);
    transparent_crc(p_666->g_395.se, "p_666->g_395.se", print_hash_value);
    transparent_crc(p_666->g_395.sf, "p_666->g_395.sf", print_hash_value);
    transparent_crc(p_666->g_420.f0, "p_666->g_420.f0", print_hash_value);
    transparent_crc(p_666->g_423, "p_666->g_423", print_hash_value);
    transparent_crc(p_666->g_425.f0, "p_666->g_425.f0", print_hash_value);
    transparent_crc(p_666->g_443, "p_666->g_443", print_hash_value);
    transparent_crc(p_666->g_519.s0, "p_666->g_519.s0", print_hash_value);
    transparent_crc(p_666->g_519.s1, "p_666->g_519.s1", print_hash_value);
    transparent_crc(p_666->g_519.s2, "p_666->g_519.s2", print_hash_value);
    transparent_crc(p_666->g_519.s3, "p_666->g_519.s3", print_hash_value);
    transparent_crc(p_666->g_519.s4, "p_666->g_519.s4", print_hash_value);
    transparent_crc(p_666->g_519.s5, "p_666->g_519.s5", print_hash_value);
    transparent_crc(p_666->g_519.s6, "p_666->g_519.s6", print_hash_value);
    transparent_crc(p_666->g_519.s7, "p_666->g_519.s7", print_hash_value);
    transparent_crc(p_666->g_545.s0, "p_666->g_545.s0", print_hash_value);
    transparent_crc(p_666->g_545.s1, "p_666->g_545.s1", print_hash_value);
    transparent_crc(p_666->g_545.s2, "p_666->g_545.s2", print_hash_value);
    transparent_crc(p_666->g_545.s3, "p_666->g_545.s3", print_hash_value);
    transparent_crc(p_666->g_545.s4, "p_666->g_545.s4", print_hash_value);
    transparent_crc(p_666->g_545.s5, "p_666->g_545.s5", print_hash_value);
    transparent_crc(p_666->g_545.s6, "p_666->g_545.s6", print_hash_value);
    transparent_crc(p_666->g_545.s7, "p_666->g_545.s7", print_hash_value);
    transparent_crc(p_666->g_550.x, "p_666->g_550.x", print_hash_value);
    transparent_crc(p_666->g_550.y, "p_666->g_550.y", print_hash_value);
    transparent_crc(p_666->g_559.s0, "p_666->g_559.s0", print_hash_value);
    transparent_crc(p_666->g_559.s1, "p_666->g_559.s1", print_hash_value);
    transparent_crc(p_666->g_559.s2, "p_666->g_559.s2", print_hash_value);
    transparent_crc(p_666->g_559.s3, "p_666->g_559.s3", print_hash_value);
    transparent_crc(p_666->g_559.s4, "p_666->g_559.s4", print_hash_value);
    transparent_crc(p_666->g_559.s5, "p_666->g_559.s5", print_hash_value);
    transparent_crc(p_666->g_559.s6, "p_666->g_559.s6", print_hash_value);
    transparent_crc(p_666->g_559.s7, "p_666->g_559.s7", print_hash_value);
    transparent_crc(p_666->g_559.s8, "p_666->g_559.s8", print_hash_value);
    transparent_crc(p_666->g_559.s9, "p_666->g_559.s9", print_hash_value);
    transparent_crc(p_666->g_559.sa, "p_666->g_559.sa", print_hash_value);
    transparent_crc(p_666->g_559.sb, "p_666->g_559.sb", print_hash_value);
    transparent_crc(p_666->g_559.sc, "p_666->g_559.sc", print_hash_value);
    transparent_crc(p_666->g_559.sd, "p_666->g_559.sd", print_hash_value);
    transparent_crc(p_666->g_559.se, "p_666->g_559.se", print_hash_value);
    transparent_crc(p_666->g_559.sf, "p_666->g_559.sf", print_hash_value);
    transparent_crc(p_666->g_565.f0, "p_666->g_565.f0", print_hash_value);
    transparent_crc(p_666->g_584, "p_666->g_584", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_666->g_609[i][j], "p_666->g_609[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_666->g_621.x, "p_666->g_621.x", print_hash_value);
    transparent_crc(p_666->g_621.y, "p_666->g_621.y", print_hash_value);
    transparent_crc(p_666->g_622.s0, "p_666->g_622.s0", print_hash_value);
    transparent_crc(p_666->g_622.s1, "p_666->g_622.s1", print_hash_value);
    transparent_crc(p_666->g_622.s2, "p_666->g_622.s2", print_hash_value);
    transparent_crc(p_666->g_622.s3, "p_666->g_622.s3", print_hash_value);
    transparent_crc(p_666->g_622.s4, "p_666->g_622.s4", print_hash_value);
    transparent_crc(p_666->g_622.s5, "p_666->g_622.s5", print_hash_value);
    transparent_crc(p_666->g_622.s6, "p_666->g_622.s6", print_hash_value);
    transparent_crc(p_666->g_622.s7, "p_666->g_622.s7", print_hash_value);
    transparent_crc(p_666->g_638.s0, "p_666->g_638.s0", print_hash_value);
    transparent_crc(p_666->g_638.s1, "p_666->g_638.s1", print_hash_value);
    transparent_crc(p_666->g_638.s2, "p_666->g_638.s2", print_hash_value);
    transparent_crc(p_666->g_638.s3, "p_666->g_638.s3", print_hash_value);
    transparent_crc(p_666->g_638.s4, "p_666->g_638.s4", print_hash_value);
    transparent_crc(p_666->g_638.s5, "p_666->g_638.s5", print_hash_value);
    transparent_crc(p_666->g_638.s6, "p_666->g_638.s6", print_hash_value);
    transparent_crc(p_666->g_638.s7, "p_666->g_638.s7", print_hash_value);
    transparent_crc(p_666->g_638.s8, "p_666->g_638.s8", print_hash_value);
    transparent_crc(p_666->g_638.s9, "p_666->g_638.s9", print_hash_value);
    transparent_crc(p_666->g_638.sa, "p_666->g_638.sa", print_hash_value);
    transparent_crc(p_666->g_638.sb, "p_666->g_638.sb", print_hash_value);
    transparent_crc(p_666->g_638.sc, "p_666->g_638.sc", print_hash_value);
    transparent_crc(p_666->g_638.sd, "p_666->g_638.sd", print_hash_value);
    transparent_crc(p_666->g_638.se, "p_666->g_638.se", print_hash_value);
    transparent_crc(p_666->g_638.sf, "p_666->g_638.sf", print_hash_value);
    transparent_crc(p_666->g_663, "p_666->g_663", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
