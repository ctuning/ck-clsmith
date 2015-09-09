// ---atomic_reductions ---fake_divergence -g 100,18,4 -l 5,6,1
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


// Seed: 66

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   int32_t  f1;
   volatile int64_t  f2;
   uint16_t  f3;
};

struct S1 {
    uint32_t g_20;
    volatile int32_t g_61;
    volatile int32_t * volatile g_60;
    int32_t *g_71;
    int32_t g_86;
    uint8_t g_88;
    int64_t g_93;
    uint64_t g_99;
    uint32_t g_114;
    volatile int32_t * volatile *g_123;
    uint16_t g_125;
    uint8_t g_128;
    int16_t g_150[5];
    uint64_t g_155;
    int8_t g_178;
    uint64_t g_179;
    int32_t g_203;
    int32_t *g_202;
    int16_t g_211[8];
    int32_t g_222[3][4];
    uint32_t g_223;
    int32_t g_244;
    uint8_t g_245;
    uint8_t g_251;
    int32_t g_255;
    volatile uint16_t g_261;
    struct S0 g_277;
    struct S0 * volatile g_278[6][8][1];
    struct S0 g_279;
    uint64_t * volatile g_291;
    volatile int32_t * volatile g_300;
    volatile int32_t * volatile * volatile g_299[9];
    int32_t ** volatile g_337;
    int32_t ** volatile g_338;
    struct S0 g_344;
    volatile struct S0 g_360;
    int16_t *g_361;
    int32_t *g_370;
    volatile struct S0 g_378;
    volatile struct S0 * volatile g_379[5];
    volatile struct S0 * volatile g_380;
    uint16_t *g_399;
    uint16_t **g_398;
    uint64_t g_445;
    uint64_t *g_444[8][9];
    volatile struct S0 g_450;
    uint64_t *g_475;
    uint32_t g_507;
    volatile struct S0 g_515[8];
    volatile struct S0 g_516;
    volatile int32_t * volatile * volatile g_530;
    volatile int32_t * volatile * volatile *g_529[2];
    volatile struct S0 g_553[5][3];
    int32_t g_575;
    uint64_t g_600;
    volatile uint8_t * volatile * volatile g_608;
    int32_t *g_667;
    int32_t **g_666;
    int32_t ***g_665;
    int32_t ** volatile g_716;
    int32_t ** volatile g_749;
    int32_t ** volatile g_751;
    int32_t **g_774;
    int8_t g_779;
    struct S0 g_803;
    struct S0 * volatile g_804;
    struct S0 g_835;
    volatile uint16_t g_888;
    int32_t ** volatile g_930;
    int16_t g_962;
    uint32_t *g_999;
    uint32_t **g_998;
    struct S0 g_1010;
    struct S0 g_1012;
    struct S0 g_1015;
    volatile struct S0 g_1016[5];
    volatile struct S0 g_1033;
    struct S0 g_1044;
    struct S0 *g_1043;
    uint8_t g_1049;
    volatile uint64_t g_1055[3][2][6];
    volatile uint64_t * volatile g_1054;
    volatile uint64_t * volatile *g_1053;
    volatile uint64_t * volatile **g_1052;
    int64_t g_1091;
    int64_t g_1093;
    volatile int32_t g_1102;
    volatile uint32_t g_1144;
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
uint32_t  func_1(struct S1 * p_1198);
uint64_t  func_10(uint8_t  p_11, uint32_t  p_12, uint32_t  p_13, struct S1 * p_1198);
int32_t  func_15(int32_t  p_16, struct S1 * p_1198);
int32_t  func_17(uint32_t  p_18, int16_t  p_19, struct S1 * p_1198);
int16_t  func_28(uint16_t  p_29, uint32_t  p_30, struct S1 * p_1198);
uint8_t  func_37(uint8_t  p_38, struct S1 * p_1198);
int32_t * func_41(int32_t  p_42, int32_t * p_43, uint64_t  p_44, int32_t * p_45, int32_t * p_46, struct S1 * p_1198);
int32_t * func_48(int32_t  p_49, int64_t  p_50, int32_t  p_51, int32_t * p_52, int32_t  p_53, struct S1 * p_1198);
int64_t  func_62(int32_t * p_63, int32_t * p_64, int32_t * p_65, struct S1 * p_1198);
int32_t * func_66(uint32_t  p_67, int32_t * p_68, uint8_t  p_69, uint64_t  p_70, struct S1 * p_1198);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1198->g_20 p_1198->g_99 p_1198->g_361 p_1198->g_211 p_1198->g_360.f1 p_1198->g_178 p_1198->g_255 p_1198->g_202 p_1198->g_203 p_1198->g_398 p_1198->g_279.f3 p_1198->g_370 p_1198->g_279.f1 p_1198->g_86 p_1198->g_223 p_1198->g_600 p_1198->g_114 p_1198->g_608 p_1198->g_399 p_1198->g_344.f3 p_1198->g_251 p_1198->g_338 p_1198->g_71 p_1198->g_277.f0 p_1198->g_516.f3 p_1198->g_507 p_1198->g_803 p_1198->g_804 p_1198->g_450.f3 p_1198->g_125 p_1198->g_279.f0 p_1198->g_245 p_1198->g_155 p_1198->g_150 p_1198->g_774 p_1198->g_515.f0 p_1198->g_888 p_1198->g_277.f2 p_1198->g_749 p_1198->g_930 p_1198->g_128 p_1198->g_60 p_1198->g_61 p_1198->g_344.f1 p_1198->g_962 p_1198->g_575 p_1198->g_998 p_1198->g_999 p_1198->g_1144 p_1198->g_445 p_1198->g_1010.f0 p_1198->g_344.f0 p_1198->g_1033.f3 p_1198->g_1052 p_1198->g_1053 p_1198->g_1054 p_1198->g_1055 p_1198->g_222 p_1198->g_450.f1
 * writes: p_1198->g_398 p_1198->g_211 p_1198->g_203 p_1198->g_255 p_1198->g_86 p_1198->g_223 p_1198->g_399 p_1198->g_445 p_1198->g_600 p_1198->g_251 p_1198->g_370 p_1198->g_178 p_1198->g_88 p_1198->g_202 p_1198->g_277.f0 p_1198->g_245 p_1198->g_507 p_1198->g_344.f3 p_1198->g_803 p_1198->g_155 p_1198->g_71 p_1198->g_779 p_1198->g_93 p_1198->g_279.f1 p_1198->g_888 p_1198->g_125 p_1198->g_128 p_1198->g_279.f0 p_1198->g_114 p_1198->g_379 p_1198->g_575
 */
uint32_t  func_1(struct S1 * p_1198)
{ /* block id: 4 */
    uint64_t l_14 = 1UL;
    int64_t l_1181 = 1L;
    int32_t l_1186[9] = {0x3B53541FL,0x3B53541FL,0x3B53541FL,0x3B53541FL,0x3B53541FL,0x3B53541FL,0x3B53541FL,0x3B53541FL,0x3B53541FL};
    uint64_t *l_1187[2][10] = {{&p_1198->g_155,&p_1198->g_179,&p_1198->g_179,&p_1198->g_179,&p_1198->g_155,&p_1198->g_155,&p_1198->g_179,&p_1198->g_179,&p_1198->g_179,&p_1198->g_155},{&p_1198->g_155,&p_1198->g_179,&p_1198->g_179,&p_1198->g_179,&p_1198->g_155,&p_1198->g_155,&p_1198->g_179,&p_1198->g_179,&p_1198->g_179,&p_1198->g_155}};
    int32_t l_1188 = 1L;
    int32_t l_1189 = 0x57CD7726L;
    uint8_t l_1190 = 0x20L;
    int32_t l_1191[10];
    int32_t *l_1192 = &p_1198->g_1010.f0;
    int32_t *l_1193 = (void*)0;
    int32_t *l_1194[7];
    uint8_t l_1195[4][4] = {{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL}};
    int i, j;
    for (i = 0; i < 10; i++)
        l_1191[i] = 8L;
    for (i = 0; i < 7; i++)
        l_1194[i] = &p_1198->g_1010.f0;
    l_1191[5] = (safe_mod_func_int32_t_s_s(((safe_rshift_func_uint8_t_u_u(((-1L) > (l_1189 = (l_1188 = (safe_mul_func_int8_t_s_s(((((*p_1198->g_361) = ((safe_lshift_func_int16_t_s_s((func_10(l_14, l_14, l_14, p_1198) || ((safe_add_func_uint32_t_u_u((p_1198->g_222[2][3] ^ (safe_lshift_func_int16_t_s_u(l_14, ((safe_add_func_int8_t_s_s((l_1181 == (safe_mod_func_uint64_t_u_u(((((*p_1198->g_361) || 0L) , 0UL) ^ l_14), (*p_1198->g_1054)))), l_1186[3])) <= l_1186[3])))), l_1186[3])) <= 0x00L)), l_1181)) , l_1181)) != GROUP_DIVERGE(1, 1)) >= l_1181), 0xBCL))))), 2)) ^ GROUP_DIVERGE(0, 1)), l_1190));
    l_1195[3][1]--;
    return p_1198->g_450.f1;
}


/* ------------------------------------------ */
/* 
 * reads : p_1198->g_20 p_1198->g_99 p_1198->g_361 p_1198->g_211 p_1198->g_360.f1 p_1198->g_178 p_1198->g_255 p_1198->g_202 p_1198->g_203 p_1198->g_398 p_1198->g_279.f3 p_1198->g_370 p_1198->g_279.f1 p_1198->g_86 p_1198->g_223 p_1198->g_600 p_1198->g_114 p_1198->g_608 p_1198->g_399 p_1198->g_344.f3 p_1198->g_251 p_1198->g_338 p_1198->g_71 p_1198->g_277.f0 p_1198->g_516.f3 p_1198->g_507 p_1198->g_803 p_1198->g_804 p_1198->g_450.f3 p_1198->g_125 p_1198->g_279.f0 p_1198->g_245 p_1198->g_155 p_1198->g_150 p_1198->g_774 p_1198->g_515.f0 p_1198->g_888 p_1198->g_277.f2 p_1198->g_749 p_1198->g_930 p_1198->g_128 p_1198->g_60 p_1198->g_61 p_1198->g_344.f1 p_1198->g_962 p_1198->g_575 p_1198->g_998 p_1198->g_999 p_1198->g_1144 p_1198->g_445 p_1198->g_1010.f0 p_1198->g_344.f0 p_1198->g_1033.f3 p_1198->g_1052 p_1198->g_1053 p_1198->g_1054 p_1198->g_1055
 * writes: p_1198->g_398 p_1198->g_211 p_1198->g_203 p_1198->g_255 p_1198->g_86 p_1198->g_223 p_1198->g_399 p_1198->g_445 p_1198->g_600 p_1198->g_251 p_1198->g_370 p_1198->g_178 p_1198->g_88 p_1198->g_202 p_1198->g_277.f0 p_1198->g_245 p_1198->g_507 p_1198->g_344.f3 p_1198->g_803 p_1198->g_155 p_1198->g_71 p_1198->g_779 p_1198->g_93 p_1198->g_279.f1 p_1198->g_888 p_1198->g_125 p_1198->g_128 p_1198->g_279.f0 p_1198->g_114 p_1198->g_379 p_1198->g_575
 */
uint64_t  func_10(uint8_t  p_11, uint32_t  p_12, uint32_t  p_13, struct S1 * p_1198)
{ /* block id: 5 */
    int64_t l_603 = 0x765C6A09792553A7L;
    uint8_t *l_604 = (void*)0;
    int32_t *l_611[2][3][9] = {{{&p_1198->g_279.f0,&p_1198->g_86,(void*)0,&p_1198->g_255,&p_1198->g_86,&p_1198->g_255,(void*)0,&p_1198->g_86,&p_1198->g_279.f0},{&p_1198->g_279.f0,&p_1198->g_86,(void*)0,&p_1198->g_255,&p_1198->g_86,&p_1198->g_255,(void*)0,&p_1198->g_86,&p_1198->g_279.f0},{&p_1198->g_279.f0,&p_1198->g_86,(void*)0,&p_1198->g_255,&p_1198->g_86,&p_1198->g_255,(void*)0,&p_1198->g_86,&p_1198->g_279.f0}},{{&p_1198->g_279.f0,&p_1198->g_86,(void*)0,&p_1198->g_255,&p_1198->g_86,&p_1198->g_255,(void*)0,&p_1198->g_86,&p_1198->g_279.f0},{&p_1198->g_279.f0,&p_1198->g_86,(void*)0,&p_1198->g_255,&p_1198->g_86,&p_1198->g_255,(void*)0,&p_1198->g_86,&p_1198->g_279.f0},{&p_1198->g_279.f0,&p_1198->g_86,(void*)0,&p_1198->g_255,&p_1198->g_86,&p_1198->g_255,(void*)0,&p_1198->g_86,&p_1198->g_279.f0}}};
    uint8_t l_656 = 0x9BL;
    uint8_t l_714 = 9UL;
    int32_t *l_718[4] = {&p_1198->g_279.f0,&p_1198->g_279.f0,&p_1198->g_279.f0,&p_1198->g_279.f0};
    struct S0 *l_836 = (void*)0;
    int32_t **l_859[2][3][5];
    uint64_t *l_975 = &p_1198->g_600;
    uint64_t l_1006[7][5][2] = {{{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL}},{{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL}},{{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL}},{{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL}},{{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL}},{{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL}},{{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL},{0xA8E2CA9F13E9488DL,18446744073709551615UL}}};
    uint32_t l_1079[3][1][4] = {{{1UL,0x4714CB45L,1UL,1UL}},{{1UL,0x4714CB45L,1UL,1UL}},{{1UL,0x4714CB45L,1UL,1UL}}};
    uint64_t **l_1095[7] = {(void*)0,&p_1198->g_475,(void*)0,(void*)0,&p_1198->g_475,(void*)0,(void*)0};
    uint64_t ***l_1094 = &l_1095[3];
    uint8_t l_1097 = 0xAFL;
    uint8_t *l_1141 = &p_1198->g_88;
    uint64_t l_1147[4];
    int8_t *l_1148 = &p_1198->g_178;
    uint16_t l_1169 = 0x0FF5L;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 5; k++)
                l_859[i][j][k] = (void*)0;
        }
    }
    for (i = 0; i < 4; i++)
        l_1147[i] = 0UL;
    (*p_1198->g_370) = func_15(func_17(p_1198->g_20, p_12, p_1198), p_1198);
    if (l_603)
    { /* block id: 296 */
        uint8_t **l_605 = &l_604;
        int32_t l_630 = 0x00EB1B32L;
        int32_t l_633 = 0x13A64C0EL;
        int32_t *l_655 = &p_1198->g_244;
        int32_t **l_654[4][9] = {{(void*)0,(void*)0,(void*)0,&l_655,(void*)0,&l_655,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_655,(void*)0,&l_655,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_655,(void*)0,&l_655,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_655,(void*)0,&l_655,(void*)0,(void*)0,(void*)0}};
        int32_t ***l_653 = &l_654[0][1];
        int32_t ***l_669 = (void*)0;
        int32_t l_671 = 0x51B7D556L;
        uint64_t *l_696[1];
        uint32_t l_753 = 4294967295UL;
        int32_t l_797 = 0L;
        uint32_t l_850 = 0x324009C2L;
        int i, j;
        for (i = 0; i < 1; i++)
            l_696[i] = &p_1198->g_445;
        if (((p_11 & (((*l_605) = l_604) != ((safe_div_func_uint16_t_u_u(FAKE_DIVERGE(p_1198->local_0_offset, get_local_id(0), 10), (p_1198->g_114 , (((*p_1198->g_361) &= ((((((((*p_1198->g_202) , l_605) != p_1198->g_608) , &p_1198->g_93) != &p_1198->g_93) & p_13) , (void*)0) != &p_1198->g_222[2][3])) && p_12)))) , &p_11))) >= p_11))
        { /* block id: 299 */
            uint16_t l_619[5][5] = {{0x9816L,2UL,0x7C4CL,2UL,0x9816L},{0x9816L,2UL,0x7C4CL,2UL,0x9816L},{0x9816L,2UL,0x7C4CL,2UL,0x9816L},{0x9816L,2UL,0x7C4CL,2UL,0x9816L},{0x9816L,2UL,0x7C4CL,2UL,0x9816L}};
            int32_t l_621 = 0x1D96228BL;
            uint32_t l_635 = 8UL;
            int i, j;
            for (l_603 = 7; (l_603 >= 0); l_603 -= 1)
            { /* block id: 302 */
                uint8_t *l_616 = &p_1198->g_251;
                int32_t **l_620 = &p_1198->g_370;
                for (p_12 = 0; (p_12 <= 7); p_12 += 1)
                { /* block id: 305 */
                    return p_12;
                }
                (*l_620) = (((safe_div_func_uint16_t_u_u(((void*)0 == l_611[1][0][6]), (*p_1198->g_399))) == ((safe_add_func_int16_t_s_s((*p_1198->g_361), (safe_div_func_uint8_t_u_u(FAKE_DIVERGE(p_1198->local_2_offset, get_local_id(2), 10), ((*l_616)--))))) > (l_619[0][2] = 8L))) , (void*)0);
                if ((*p_1198->g_202))
                    break;
            }
            l_621 |= l_619[3][4];
            for (p_1198->g_178 = 0; (p_1198->g_178 != (-25)); p_1198->g_178 = safe_sub_func_uint64_t_u_u(p_1198->g_178, 8))
            { /* block id: 316 */
                int8_t l_627 = 0x53L;
                int32_t l_631 = 0x79546B73L;
                uint8_t l_648 = 255UL;
                for (p_1198->g_88 = 0; (p_1198->g_88 <= 58); ++p_1198->g_88)
                { /* block id: 319 */
                    int32_t **l_626 = &l_611[1][0][6];
                    for (l_621 = 0; (l_621 <= 7); l_621 += 1)
                    { /* block id: 322 */
                        int i;
                        return p_1198->g_211[l_621];
                    }
                    (*l_626) = (void*)0;
                }
                if ((l_627 = 0x3D4958A0L))
                { /* block id: 328 */
                    int64_t l_628 = 0L;
                    int32_t l_634[8][8][4] = {{{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L}},{{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L}},{{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L}},{{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L}},{{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L}},{{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L}},{{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L}},{{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L},{0x6A4C94A0L,0x09D1613EL,2L,0x2C9C32C0L}}};
                    volatile int32_t * volatile *l_652[9] = {&p_1198->g_300,&p_1198->g_300,&p_1198->g_300,&p_1198->g_300,&p_1198->g_300,&p_1198->g_300,&p_1198->g_300,&p_1198->g_300,&p_1198->g_300};
                    volatile int32_t * volatile **l_651 = &l_652[5];
                    int i, j, k;
                    if ((l_628 | 0x18C6D6C4DF26C3CBL))
                    { /* block id: 329 */
                        int16_t l_629[1];
                        int32_t l_632 = 0x50791FFFL;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_629[i] = 0L;
                        l_635--;
                        if (p_13)
                            break;
                        l_633 ^= (l_634[3][4][0] = (safe_lshift_func_uint8_t_u_u(p_11, 5)));
                    }
                    else
                    { /* block id: 334 */
                        int32_t **l_649 = &p_1198->g_202;
                        uint32_t l_650 = 0x039576E7L;
                        (*p_1198->g_202) = ((-1L) <= (-4L));
                        p_1198->g_277.f0 &= (safe_lshift_func_uint8_t_u_u(0xB3L, (safe_add_func_int8_t_s_s(l_628, (safe_rshift_func_int16_t_s_s((*p_1198->g_361), (((safe_mul_func_int8_t_s_s(p_11, ((-1L) == l_631))) && ((+((((~(~l_648)) , ((*l_649) = &l_634[4][4][3])) != (*p_1198->g_338)) , 18446744073709551615UL)) >= l_650)) || l_631)))))));
                        (*l_649) = &l_633;
                    }
                    (*l_651) = &p_1198->g_300;
                    if (p_13)
                        continue;
                }
                else
                { /* block id: 342 */
                    l_631 = p_11;
                    for (p_1198->g_245 = 0; (p_1198->g_245 <= 1); p_1198->g_245 += 1)
                    { /* block id: 346 */
                        return p_1198->g_516.f3;
                    }
                    if ((*p_1198->g_202))
                        continue;
                }
            }
            (*p_1198->g_202) &= ((void*)0 == l_653);
        }
        else
        { /* block id: 353 */
            int32_t ****l_668[9][1][1];
            int64_t *l_670 = &p_1198->g_93;
            int32_t **l_672[5][3] = {{&p_1198->g_71,(void*)0,&p_1198->g_370},{&p_1198->g_71,(void*)0,&p_1198->g_370},{&p_1198->g_71,(void*)0,&p_1198->g_370},{&p_1198->g_71,(void*)0,&p_1198->g_370},{&p_1198->g_71,(void*)0,&p_1198->g_370}};
            int i, j, k;
            for (i = 0; i < 9; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_668[i][j][k] = &p_1198->g_665;
                }
            }
            l_611[1][0][6] = &l_671;
        }
        for (p_1198->g_507 = 0; (p_1198->g_507 > 35); p_1198->g_507 = safe_add_func_uint32_t_u_u(p_1198->g_507, 1))
        { /* block id: 362 */
            int32_t l_676 = 0x237F8EC5L;
            uint16_t l_677 = 0x8E48L;
            int64_t l_680 = (-1L);
            int32_t *l_717 = &p_1198->g_277.f0;
            int32_t *l_746[9] = {&p_1198->g_277.f1,&p_1198->g_277.f1,&p_1198->g_277.f1,&p_1198->g_277.f1,&p_1198->g_277.f1,&p_1198->g_277.f1,&p_1198->g_277.f1,&p_1198->g_277.f1,&p_1198->g_277.f1};
            int32_t l_780 = 0x0946E9BFL;
            int32_t l_781[10][10][2] = {{{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)}},{{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)}},{{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)}},{{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)}},{{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)}},{{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)}},{{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)}},{{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)}},{{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)}},{{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)},{0x777C4F57L,(-2L)}}};
            uint64_t **l_791 = &p_1198->g_475;
            int16_t l_847 = 0x4AEEL;
            uint8_t l_848 = 0x50L;
            int i, j, k;
            for (p_1198->g_344.f3 = 0; (p_1198->g_344.f3 <= 7); p_1198->g_344.f3 += 1)
            { /* block id: 365 */
                int32_t l_675[10] = {5L,0x50BE7E9BL,(-4L),0x50BE7E9BL,5L,5L,0x50BE7E9BL,(-4L),0x50BE7E9BL,5L};
                int32_t l_723 = 1L;
                int32_t l_724 = 1L;
                int32_t l_726 = 0L;
                int32_t l_727 = 0L;
                int32_t l_728 = 0L;
                int32_t *l_752[9][9][3] = {{{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0}},{{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0}},{{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0}},{{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0}},{{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0}},{{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0}},{{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0}},{{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0}},{{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0},{&l_726,&p_1198->g_277.f0,(void*)0}}};
                int i, j, k;
                l_677--;
                for (p_11 = 0; (p_11 <= 2); p_11 += 1)
                { /* block id: 369 */
                    return l_680;
                }
            }
            for (p_1198->g_277.f0 = 4; (p_1198->g_277.f0 >= 0); p_1198->g_277.f0 -= 1)
            { /* block id: 427 */
                uint64_t **l_792 = &p_1198->g_475;
                int32_t l_801[8][4] = {{(-2L),(-2L),0L,0x10FC0F59L},{(-2L),(-2L),0L,0x10FC0F59L},{(-2L),(-2L),0L,0x10FC0F59L},{(-2L),(-2L),0L,0x10FC0F59L},{(-2L),(-2L),0L,0x10FC0F59L},{(-2L),(-2L),0L,0x10FC0F59L},{(-2L),(-2L),0L,0x10FC0F59L},{(-2L),(-2L),0L,0x10FC0F59L}};
                int32_t l_802 = 0x5AED900EL;
                int8_t *l_824 = &p_1198->g_779;
                int i, j;
                if ((*p_1198->g_202))
                    break;
                for (p_11 = 0; (p_11 <= 4); p_11 += 1)
                { /* block id: 431 */
                    uint32_t l_805 = 4294967288UL;
                    int8_t *l_822 = &p_1198->g_779;
                    struct S0 *l_834 = &p_1198->g_835;
                    for (p_1198->g_344.f3 = 0; (p_1198->g_344.f3 <= 4); p_1198->g_344.f3 += 1)
                    { /* block id: 434 */
                        uint64_t **l_790 = &p_1198->g_475;
                        uint64_t ***l_789[6] = {&l_790,&l_790,&l_790,&l_790,&l_790,&l_790};
                        int32_t l_800[4][1];
                        int i, j;
                        for (i = 0; i < 4; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_800[i][j] = 0x0E016554L;
                        }
                        l_802 ^= (p_12 || (safe_lshift_func_uint8_t_u_u(((safe_mod_func_uint64_t_u_u((((l_791 = &p_1198->g_475) != l_792) && (l_633 = p_12)), (safe_sub_func_uint64_t_u_u((safe_add_func_int8_t_s_s((((((l_797 , (3UL != p_11)) | p_11) , (safe_add_func_uint8_t_u_u(p_12, l_800[0][0]))) != 0L) >= p_12), p_11)), p_1198->g_251)))) != l_801[4][3]), 2)));
                        (*p_1198->g_804) = p_1198->g_803;
                        l_805++;
                    }
                    for (p_1198->g_86 = 4; (p_1198->g_86 >= 0); p_1198->g_86 -= 1)
                    { /* block id: 443 */
                        int8_t **l_823[2];
                        int64_t l_846[5][1][1] = {{{0x0BE4EC7436DD69F7L}},{{0x0BE4EC7436DD69F7L}},{{0x0BE4EC7436DD69F7L}},{{0x0BE4EC7436DD69F7L}},{{0x0BE4EC7436DD69F7L}}};
                        uint64_t *l_849 = &p_1198->g_155;
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_823[i] = &l_822;
                        l_671 = (safe_lshift_func_int8_t_s_u((safe_sub_func_int64_t_s_s((safe_sub_func_uint32_t_u_u(p_1198->g_450.f3, ((((*l_849) |= (safe_sub_func_uint8_t_u_u(p_1198->g_125, (safe_rshift_func_uint16_t_u_s(((*p_1198->g_399) &= ((safe_sub_func_uint32_t_u_u(l_805, ((((safe_rshift_func_uint16_t_u_s(((l_824 = l_822) == ((safe_lshift_func_uint8_t_u_u(((safe_sub_func_int64_t_s_s((((GROUP_DIVERGE(2, 1) , (safe_unary_minus_func_int64_t_s((((*p_1198->g_361) = ((safe_rshift_func_uint16_t_u_u((((((+((safe_rshift_func_uint16_t_u_s((l_834 != l_836), (safe_div_func_int16_t_s_s(((p_1198->g_279.f0 , (safe_unary_minus_func_uint8_t_u((safe_lshift_func_int16_t_s_s(l_801[4][3], (safe_div_func_int8_t_s_s((((safe_div_func_int8_t_s_s((p_1198->g_114 , p_1198->g_99), l_633)) , 0UL) > p_11), p_1198->g_251))))))) , p_13), l_846[3][0][0])))) < p_1198->g_245)) <= l_846[4][0][0]) != l_846[3][0][0]) , p_1198->g_99) , 0xB73BL), l_847)) == 0x444662CFB5E5A144L)) <= l_802)))) != p_11) && l_805), l_848)) || 0x4FE334BFL), 3)) , (void*)0)), l_753)) && p_1198->g_211[3]) ^ p_12) > l_846[1][0][0]))) ^ 0x485FB1745CECD1CCL)), p_11))))) , p_13) || (*p_1198->g_399)))), p_12)), p_11));
                        if (p_13)
                            continue;
                        ++l_850;
                    }
                }
            }
        }
        (*p_1198->g_202) &= (safe_rshift_func_int8_t_s_s(0L, p_1198->g_150[4]));
        for (p_1198->g_277.f0 = 0; (p_1198->g_277.f0 == 27); p_1198->g_277.f0 = safe_add_func_int8_t_s_s(p_1198->g_277.f0, 1))
        { /* block id: 458 */
            (*p_1198->g_202) = l_797;
            (*p_1198->g_774) = &l_630;
        }
    }
    else
    { /* block id: 462 */
        int32_t *l_861[4][6][5] = {{{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244}},{{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244}},{{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244}},{{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244}}};
        int32_t **l_860[10][5] = {{&l_861[0][1][4],&l_861[0][1][4],&l_861[0][1][4],(void*)0,&l_861[1][4][2]},{&l_861[0][1][4],&l_861[0][1][4],&l_861[0][1][4],(void*)0,&l_861[1][4][2]},{&l_861[0][1][4],&l_861[0][1][4],&l_861[0][1][4],(void*)0,&l_861[1][4][2]},{&l_861[0][1][4],&l_861[0][1][4],&l_861[0][1][4],(void*)0,&l_861[1][4][2]},{&l_861[0][1][4],&l_861[0][1][4],&l_861[0][1][4],(void*)0,&l_861[1][4][2]},{&l_861[0][1][4],&l_861[0][1][4],&l_861[0][1][4],(void*)0,&l_861[1][4][2]},{&l_861[0][1][4],&l_861[0][1][4],&l_861[0][1][4],(void*)0,&l_861[1][4][2]},{&l_861[0][1][4],&l_861[0][1][4],&l_861[0][1][4],(void*)0,&l_861[1][4][2]},{&l_861[0][1][4],&l_861[0][1][4],&l_861[0][1][4],(void*)0,&l_861[1][4][2]},{&l_861[0][1][4],&l_861[0][1][4],&l_861[0][1][4],(void*)0,&l_861[1][4][2]}};
        int32_t l_868 = 0L;
        uint64_t *l_869 = (void*)0;
        uint64_t *l_870 = &p_1198->g_155;
        int8_t *l_877 = &p_1198->g_779;
        int64_t *l_878 = &p_1198->g_93;
        int32_t l_879 = 0x29EC8816L;
        int32_t l_886[8] = {0L,0L,0L,0L,0L,0L,0L,0L};
        int8_t l_887 = 0x71L;
        uint64_t l_892 = 18446744073709551607UL;
        int16_t **l_961 = &p_1198->g_361;
        uint16_t **l_984 = &p_1198->g_399;
        int32_t **l_993 = &p_1198->g_71;
        int32_t l_1002[7][8][1] = {{{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}},{{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}},{{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}},{{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}},{{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}},{{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}},{{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}}};
        uint32_t l_1104 = 0UL;
        int i, j, k;
lbl_891:
        l_879 |= (l_868 = (~(p_1198->g_178 | (((l_859[1][0][1] == l_860[3][0]) , 6L) < ((safe_mul_func_int16_t_s_s((((*l_878) = (((*p_1198->g_361) = (safe_rshift_func_int8_t_s_s(((*l_877) = (safe_mod_func_uint32_t_u_u((((((*l_870) = l_868) && (safe_lshift_func_uint8_t_u_s(p_13, (safe_lshift_func_uint8_t_u_u(((*p_1198->g_202) , 0UL), 3))))) > ((safe_lshift_func_int16_t_s_u((!((p_11 <= l_868) && p_1198->g_515[0].f0)), 6)) < (-7L))) & (*p_1198->g_361)), (*p_1198->g_370)))), p_13))) , 0x232A2FED6ACE5760L)) | 0UL), 0x70C7L)) , (*p_1198->g_399))))));
        for (p_1198->g_279.f1 = 0; (p_1198->g_279.f1 == (-1)); --p_1198->g_279.f1)
        { /* block id: 471 */
            int32_t *l_882 = &p_1198->g_835.f0;
            int32_t l_883[8] = {(-6L),1L,(-6L),(-6L),1L,(-6L),(-6L),1L};
            int32_t l_884 = 4L;
            int32_t l_885[10][10] = {{0L,3L,0L,1L,1L,0L,3L,0L,0x67EFEF25L,2L},{0L,3L,0L,1L,1L,0L,3L,0L,0x67EFEF25L,2L},{0L,3L,0L,1L,1L,0L,3L,0L,0x67EFEF25L,2L},{0L,3L,0L,1L,1L,0L,3L,0L,0x67EFEF25L,2L},{0L,3L,0L,1L,1L,0L,3L,0L,0x67EFEF25L,2L},{0L,3L,0L,1L,1L,0L,3L,0L,0x67EFEF25L,2L},{0L,3L,0L,1L,1L,0L,3L,0L,0x67EFEF25L,2L},{0L,3L,0L,1L,1L,0L,3L,0L,0x67EFEF25L,2L},{0L,3L,0L,1L,1L,0L,3L,0L,0x67EFEF25L,2L},{0L,3L,0L,1L,1L,0L,3L,0L,0x67EFEF25L,2L}};
            int i, j;
            (*p_1198->g_774) = l_882;
            ++p_1198->g_888;
            if (p_1198->g_155)
                goto lbl_891;
        }
        for (p_1198->g_125 = 0; (p_1198->g_125 <= 4); p_1198->g_125 += 1)
        { /* block id: 478 */
            uint32_t l_895 = 4294967289UL;
            int32_t *l_900 = &p_1198->g_279.f0;
            int32_t l_934[9][10] = {{5L,0x6961BDAAL,0x1C8FC5F0L,0x2C7F3C59L,1L,4L,0x00F121C4L,(-7L),0x1F3B1952L,8L},{5L,0x6961BDAAL,0x1C8FC5F0L,0x2C7F3C59L,1L,4L,0x00F121C4L,(-7L),0x1F3B1952L,8L},{5L,0x6961BDAAL,0x1C8FC5F0L,0x2C7F3C59L,1L,4L,0x00F121C4L,(-7L),0x1F3B1952L,8L},{5L,0x6961BDAAL,0x1C8FC5F0L,0x2C7F3C59L,1L,4L,0x00F121C4L,(-7L),0x1F3B1952L,8L},{5L,0x6961BDAAL,0x1C8FC5F0L,0x2C7F3C59L,1L,4L,0x00F121C4L,(-7L),0x1F3B1952L,8L},{5L,0x6961BDAAL,0x1C8FC5F0L,0x2C7F3C59L,1L,4L,0x00F121C4L,(-7L),0x1F3B1952L,8L},{5L,0x6961BDAAL,0x1C8FC5F0L,0x2C7F3C59L,1L,4L,0x00F121C4L,(-7L),0x1F3B1952L,8L},{5L,0x6961BDAAL,0x1C8FC5F0L,0x2C7F3C59L,1L,4L,0x00F121C4L,(-7L),0x1F3B1952L,8L},{5L,0x6961BDAAL,0x1C8FC5F0L,0x2C7F3C59L,1L,4L,0x00F121C4L,(-7L),0x1F3B1952L,8L}};
            uint64_t **l_970 = &p_1198->g_444[6][8];
            uint16_t **l_982 = &p_1198->g_399;
            int32_t ***l_995 = (void*)0;
            int32_t ****l_994 = &l_995;
            uint32_t l_1009 = 0xAA4A5ACCL;
            uint32_t l_1136 = 0x06EC8229L;
            int i, j;
            l_892++;
            for (p_1198->g_779 = 0; (p_1198->g_779 <= 4); p_1198->g_779 += 1)
            { /* block id: 482 */
                uint32_t l_905 = 0x8B2DC4CCL;
                uint32_t *l_921 = &p_1198->g_507;
                int16_t **l_923 = &p_1198->g_361;
                int16_t ***l_922 = &l_923;
                int32_t l_932[6][9][1] = {{{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL}},{{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL}},{{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL}},{{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL}},{{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL}},{{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL},{0x2306208BL}}};
                uint32_t l_936 = 0xA9E11B5BL;
                int16_t *l_965 = &p_1198->g_150[4];
                int16_t l_1024 = 0x0A9AL;
                int i, j, k;
                for (l_603 = 4; (l_603 >= 1); l_603 -= 1)
                { /* block id: 485 */
                    uint32_t **l_920 = (void*)0;
                    int32_t *l_926 = &l_886[5];
                    int32_t l_931[1][10][1] = {{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}}};
                    int i, j, k;
                    --l_895;
                    (*p_1198->g_774) = l_900;
                    if ((p_11 < (safe_mod_func_int16_t_s_s((((safe_rshift_func_uint8_t_u_s((p_12 != (*l_900)), 4)) & l_905) , (safe_rshift_func_int16_t_s_s(((safe_add_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), ((((*p_1198->g_202) = ((1UL != 0x0FF3L) >= ((FAKE_DIVERGE(p_1198->local_0_offset, get_local_id(0), 10) , (safe_add_func_uint32_t_u_u(((safe_sub_func_uint32_t_u_u(((safe_lshift_func_int8_t_s_u(p_13, 1)) == (safe_add_func_uint64_t_u_u((p_11 || FAKE_DIVERGE(p_1198->group_1_offset, get_group_id(1), 10)), (safe_mul_func_uint16_t_u_u((((l_921 = &p_1198->g_507) == (void*)0) & (-1L)), 0L))))), 0x5B1CFE18L)) , p_13), p_1198->g_277.f2))) <= l_886[7]))) , (void*)0) != l_922))) | p_11), 12))), (*l_900)))))
                    { /* block id: 492 */
                        uint64_t l_929 = 0x032ED96EFA609557L;
                        (*p_1198->g_930) = ((*p_1198->g_774) = (*p_1198->g_749));
                        (*p_1198->g_774) = (void*)0;
                    }
                    else
                    { /* block id: 496 */
                        int64_t l_933 = 0x38DDEC3B6A0AB9C8L;
                        int32_t l_935[2];
                        int8_t *l_943 = (void*)0;
                        uint8_t *l_948 = (void*)0;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_935[i] = 0x51FB91F3L;
                        ++l_936;
                        (*l_926) = (((!((+(((((*l_878) = ((safe_lshift_func_uint8_t_u_s((((safe_add_func_uint16_t_u_u(65526UL, (*l_926))) || (p_13 , (((void*)0 == l_943) & (safe_div_func_int8_t_s_s((((GROUP_DIVERGE(1, 1) , (((((*p_1198->g_774) = (((safe_rshift_func_uint8_t_u_u((p_1198->g_245 = (--p_1198->g_128)), ((((*l_900) && (safe_rshift_func_uint8_t_u_s((safe_unary_minus_func_int16_t_s((safe_lshift_func_int16_t_s_u((safe_unary_minus_func_uint32_t_u((((safe_add_func_int32_t_s_s(((safe_add_func_uint64_t_u_u((!l_933), (l_961 == &p_1198->g_361))) & FAKE_DIVERGE(p_1198->global_0_offset, get_global_id(0), 10)), l_886[6])) , (*p_1198->g_202)) >= (*p_1198->g_60)))), (*l_926))))), 7))) < p_13) | 65530UL))) , p_13) , (void*)0)) == l_718[3]) | p_1198->g_344.f1) , (-8L))) > 0x4EL) && l_932[1][3][0]), p_13))))) | p_1198->g_962), 1)) , 4L)) | 0L) ^ 0x3AAAC405227435A8L) & p_1198->g_575)) == l_887)) == p_11) == l_887);
                    }
                }
            }
        }
    }
    p_1198->g_279.f0 ^= (((FAKE_DIVERGE(p_1198->group_1_offset, get_group_id(1), 10) && ((p_1198->g_155 = ((safe_sub_func_int64_t_s_s(((0x34L | ((*l_1141) = 0x33L)) & (((**p_1198->g_998) , (safe_mod_func_int32_t_s_s(((!p_1198->g_1144) & (p_12 < (*p_1198->g_361))), 0x64AAF44FL))) & (((((safe_sub_func_uint8_t_u_u((((((((*l_1148) = (l_1147[2] >= (+((0x6D1C8A5CL ^ p_13) , p_13)))) || 1L) ^ 0x1683L) | 4294967289UL) >= p_1198->g_344.f1) < 4294967295UL), 0L)) > p_1198->g_445) , p_13) , 0x17L) != p_1198->g_1010.f0))), p_1198->g_344.f0)) , p_11)) , p_1198->g_1033.f3)) || 0x4A222BACL) || 0x2AL);
    for (p_1198->g_114 = 0; (p_1198->g_114 <= 7); p_1198->g_114 += 1)
    { /* block id: 584 */
        uint16_t l_1149 = 1UL;
        int32_t l_1156[7];
        uint16_t l_1172 = 8UL;
        int i;
        for (i = 0; i < 7; i++)
            l_1156[i] = (-1L);
        if (p_12)
        { /* block id: 585 */
            p_1198->g_379[0] = (void*)0;
            (*p_1198->g_774) = (void*)0;
            l_1149 ^= 0x49CBCC6DL;
        }
        else
        { /* block id: 589 */
            int64_t l_1150 = 0x002105A9470946DBL;
            uint16_t l_1151[1];
            int32_t *l_1158 = &p_1198->g_803.f0;
            int i;
            for (i = 0; i < 1; i++)
                l_1151[i] = 0xD56DL;
            l_1151[0]--;
            for (p_1198->g_575 = 7; (p_1198->g_575 >= 0); p_1198->g_575 -= 1)
            { /* block id: 593 */
                int8_t l_1157 = 0x45L;
                (*p_1198->g_774) = (((safe_sub_func_int32_t_s_s((l_1156[3] = 8L), (l_1157 = p_12))) & ((*p_1198->g_361) = p_13)) , l_1158);
                if (p_12)
                    break;
            }
        }
        (*p_1198->g_774) = &l_1156[3];
        (*p_1198->g_774) = &l_1156[4];
        l_1172--;
    }
    return (***p_1198->g_1052);
}


/* ------------------------------------------ */
/* 
 * reads : p_1198->g_600 p_1198->g_99 p_1198->g_370 p_1198->g_255 p_1198->g_203 p_1198->g_211
 * writes: p_1198->g_399 p_1198->g_445 p_1198->g_600 p_1198->g_255 p_1198->g_203
 */
int32_t  func_15(int32_t  p_16, struct S1 * p_1198)
{ /* block id: 283 */
    uint16_t *l_590 = &p_1198->g_344.f3;
    uint16_t **l_591 = &p_1198->g_399;
    int32_t l_596 = (-10L);
    int8_t *l_597 = &p_1198->g_178;
    uint64_t *l_598 = &p_1198->g_445;
    uint64_t *l_599 = &p_1198->g_600;
    (*p_1198->g_370) ^= (((safe_sub_func_int16_t_s_s(p_16, (((*l_591) = l_590) != l_590))) , ((safe_add_func_uint8_t_u_u((+((((*l_599) ^= ((*l_598) = (safe_add_func_int64_t_s_s(l_596, (l_597 != &p_1198->g_178))))) , (safe_rshift_func_int8_t_s_s((l_596 || GROUP_DIVERGE(1, 1)), 2))) >= (p_1198->g_99 , (p_16 > 0xBE6D68A1L)))), 247UL)) , l_596)) != l_596);
    for (p_1198->g_203 = 2; (p_1198->g_203 <= 7); p_1198->g_203 += 1)
    { /* block id: 290 */
        int i;
        p_16 = p_1198->g_211[p_1198->g_203];
        return p_16;
    }
    return l_596;
}


/* ------------------------------------------ */
/* 
 * reads : p_1198->g_20 p_1198->g_99 p_1198->g_361 p_1198->g_211 p_1198->g_360.f1 p_1198->g_178 p_1198->g_255 p_1198->g_202 p_1198->g_203 p_1198->g_398 p_1198->g_279.f3 p_1198->g_370 p_1198->g_279.f1 p_1198->g_86 p_1198->g_223
 * writes: p_1198->g_398 p_1198->g_211 p_1198->g_203 p_1198->g_255 p_1198->g_86 p_1198->g_223
 */
int32_t  func_17(uint32_t  p_18, int16_t  p_19, struct S1 * p_1198)
{ /* block id: 6 */
    uint32_t l_39 = 0xF1A0197CL;
    uint16_t *l_397[10];
    uint16_t **l_396[8];
    uint16_t **l_412[6][9] = {{&l_397[6],(void*)0,&l_397[2],(void*)0,&l_397[3],(void*)0,&l_397[2],(void*)0,&l_397[6]},{&l_397[6],(void*)0,&l_397[2],(void*)0,&l_397[3],(void*)0,&l_397[2],(void*)0,&l_397[6]},{&l_397[6],(void*)0,&l_397[2],(void*)0,&l_397[3],(void*)0,&l_397[2],(void*)0,&l_397[6]},{&l_397[6],(void*)0,&l_397[2],(void*)0,&l_397[3],(void*)0,&l_397[2],(void*)0,&l_397[6]},{&l_397[6],(void*)0,&l_397[2],(void*)0,&l_397[3],(void*)0,&l_397[2],(void*)0,&l_397[6]},{&l_397[6],(void*)0,&l_397[2],(void*)0,&l_397[3],(void*)0,&l_397[2],(void*)0,&l_397[6]}};
    int32_t **l_419 = &p_1198->g_202;
    int32_t *l_476[5];
    uint8_t *l_579 = &p_1198->g_245;
    uint32_t l_585 = 1UL;
    int i, j;
    for (i = 0; i < 10; i++)
        l_397[i] = &p_1198->g_279.f3;
    for (i = 0; i < 8; i++)
        l_396[i] = &l_397[2];
    for (i = 0; i < 5; i++)
        l_476[i] = &p_1198->g_344.f0;
    if ((p_18 >= (safe_sub_func_uint64_t_u_u(((65535UL | GROUP_DIVERGE(1, 1)) , p_1198->g_20), (safe_lshift_func_uint16_t_u_s(0x62CCL, 2))))))
    { /* block id: 7 */
        uint8_t l_25[2];
        int32_t **l_395 = &p_1198->g_370;
        int i;
        for (i = 0; i < 2; i++)
            l_25[i] = 254UL;
        for (p_18 = 0; (p_18 <= 1); p_18 += 1)
        { /* block id: 10 */
            int32_t l_40[9] = {0x0ACC167DL,3L,0x0ACC167DL,0x0ACC167DL,3L,0x0ACC167DL,0x0ACC167DL,3L,0x0ACC167DL};
            int i;
            (1 + 1);
        }
    }
    else
    { /* block id: 184 */
        int32_t l_410[9];
        uint16_t ***l_411 = (void*)0;
        int32_t *l_428 = &p_1198->g_86;
        int i;
        for (i = 0; i < 9; i++)
            l_410[i] = 0x17839F55L;
        (*p_1198->g_202) &= ((p_1198->g_398 = l_396[1]) != (l_412[1][5] = (((safe_rshift_func_int16_t_s_u((1L < (p_1198->g_99 , ((*p_1198->g_361) = (*p_1198->g_361)))), 2)) >= (+((p_1198->g_360.f1 | 4UL) != ((safe_mod_func_int64_t_s_s(0x6A1A296D00C06625L, ((((((safe_mul_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1198->group_0_offset, get_group_id(0), 10), ((~(p_18 | (safe_lshift_func_int16_t_s_s((~l_410[6]), 10)))) <= FAKE_DIVERGE(p_1198->local_1_offset, get_local_id(1), 10)))), p_18)) || FAKE_DIVERGE(p_1198->global_0_offset, get_global_id(0), 10)) < p_1198->g_178) || p_1198->g_255) || l_410[6]) | 0x59L))) <= 0x01L)))) , &p_1198->g_399)));
        (*l_428) |= (safe_add_func_int32_t_s_s((safe_lshift_func_int8_t_s_u(((*p_1198->g_361) || (safe_lshift_func_int16_t_s_u(((**p_1198->g_398) ^ ((void*)0 == l_419)), ((+(((*p_1198->g_370) = p_19) , (**l_419))) , ((safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_1198->local_2_offset, get_local_id(2), 10), p_18)) ^ (safe_mul_func_uint8_t_u_u(3UL, (((safe_mul_func_int16_t_s_s(((((safe_div_func_int16_t_s_s(l_410[6], (*p_1198->g_361))) || p_19) > (**l_419)) > p_18), 0L)) <= p_1198->g_279.f1) > GROUP_DIVERGE(2, 1))))))))), p_19)), p_18));
    }
    for (p_1198->g_223 = (-13); (p_1198->g_223 == 1); p_1198->g_223 = safe_add_func_int16_t_s_s(p_1198->g_223, 3))
    { /* block id: 194 */
        uint16_t l_431 = 0xCD0DL;
        uint64_t *l_446[1][4];
        int32_t **l_459 = &p_1198->g_370;
        int16_t **l_465 = (void*)0;
        int32_t **l_466 = (void*)0;
        int32_t l_483[10][3][8] = {{{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L}},{{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L}},{{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L}},{{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L}},{{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L}},{{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L}},{{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L}},{{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L}},{{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L}},{{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L},{0L,(-1L),(-5L),0L,(-5L),(-1L),0L,0x59E36F35L}}};
        uint16_t ***l_537 = (void*)0;
        uint64_t l_576 = 0xA5E2C747FB8E18FBL;
        uint8_t *l_580 = &p_1198->g_251;
        uint8_t l_582 = 0x5AL;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 4; j++)
                l_446[i][j] = (void*)0;
        }
        (1 + 1);
    }
    l_585++;
    return p_18;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t  func_28(uint16_t  p_29, uint32_t  p_30, struct S1 * p_1198)
{ /* block id: 178 */
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_1198->g_60 p_1198->g_20 p_1198->g_71 p_1198->g_88 p_1198->g_86 p_1198->g_99 p_1198->g_123 p_1198->g_125 p_1198->g_128 p_1198->g_114 p_1198->g_93 p_1198->g_155 p_1198->g_150 p_1198->g_179 p_1198->g_202 p_1198->g_203 p_1198->g_223 p_1198->g_251 p_1198->g_178 p_1198->g_255 p_1198->g_261 p_1198->g_277 p_1198->g_279.f0 p_1198->g_291 p_1198->g_299 p_1198->g_244 p_1198->g_338 p_1198->g_344 p_1198->g_360 p_1198->g_370 p_1198->g_378 p_1198->g_380 p_1198->g_279.f3
 * writes: p_1198->g_86 p_1198->g_88 p_1198->g_99 p_1198->g_114 p_1198->g_71 p_1198->g_93 p_1198->g_125 p_1198->g_128 p_1198->g_150 p_1198->g_155 p_1198->g_179 p_1198->g_203 p_1198->g_211 p_1198->g_223 p_1198->g_244 p_1198->g_245 p_1198->g_222 p_1198->g_255 p_1198->g_261 p_1198->g_178 p_1198->g_202 p_1198->g_279 p_1198->g_277.f3 p_1198->g_361 p_1198->g_344.f0 p_1198->g_360
 */
uint8_t  func_37(uint8_t  p_38, struct S1 * p_1198)
{ /* block id: 12 */
    int32_t l_47 = 0x40CE695EL;
    int32_t **l_264 = &p_1198->g_71;
    int8_t l_371 = 9L;
    int32_t *l_376 = (void*)0;
    int32_t *l_377[5];
    int i;
    for (i = 0; i < 5; i++)
        l_377[i] = &p_1198->g_344.f0;
    (*l_264) = func_41((0x552AD14CA72CB566L == l_47), ((*l_264) = func_48(l_47, l_47, (safe_lshift_func_uint16_t_u_s((((void*)0 != &l_47) == ((safe_div_func_int32_t_s_s(0x31DCEDE6L, (65533UL ^ l_47))) , l_47)), 4)), &l_47, p_38, p_1198)), p_1198->g_251, &l_47, &l_47, p_1198);
    l_371 ^= (&p_38 == &p_38);
    (*p_1198->g_380) = ((safe_sub_func_uint8_t_u_u((((safe_rshift_func_uint16_t_u_s((0x10L <= (0xEF7BL || ((-1L) != p_1198->g_155))), ((p_1198->g_178 , p_38) & 65535UL))) | (p_38 & (p_1198->g_344.f0 &= ((((**l_264) , (**l_264)) | 1UL) || FAKE_DIVERGE(p_1198->group_0_offset, get_group_id(0), 10))))) , p_1198->g_179), p_1198->g_150[4])) , p_1198->g_378);
    for (p_1198->g_344.f0 = (-30); (p_1198->g_344.f0 >= 21); p_1198->g_344.f0 = safe_add_func_int16_t_s_s(p_1198->g_344.f0, 3))
    { /* block id: 168 */
        for (p_1198->g_279.f3 = 19; (p_1198->g_279.f3 != 16); p_1198->g_279.f3 = safe_sub_func_int8_t_s_s(p_1198->g_279.f3, 8))
        { /* block id: 171 */
            (*l_264) = (*l_264);
        }
        if ((*p_1198->g_370))
            break;
    }
    return p_1198->g_360.f2;
}


/* ------------------------------------------ */
/* 
 * reads : p_1198->g_93 p_1198->g_178 p_1198->g_277 p_1198->g_279.f0 p_1198->g_150 p_1198->g_291 p_1198->g_71 p_1198->g_86 p_1198->g_299 p_1198->g_88 p_1198->g_223 p_1198->g_244 p_1198->g_114 p_1198->g_338 p_1198->g_344 p_1198->g_128 p_1198->g_255 p_1198->g_360 p_1198->g_370
 * writes: p_1198->g_93 p_1198->g_178 p_1198->g_86 p_1198->g_202 p_1198->g_279 p_1198->g_245 p_1198->g_277.f3 p_1198->g_223 p_1198->g_71 p_1198->g_88 p_1198->g_255 p_1198->g_128 p_1198->g_361
 */
int32_t * func_41(int32_t  p_42, int32_t * p_43, uint64_t  p_44, int32_t * p_45, int32_t * p_46, struct S1 * p_1198)
{ /* block id: 93 */
    uint8_t l_265 = 1UL;
    int32_t l_295 = 0x64066CF7L;
    int16_t *l_297[10] = {(void*)0,&p_1198->g_211[0],(void*)0,(void*)0,&p_1198->g_211[0],(void*)0,(void*)0,&p_1198->g_211[0],(void*)0,(void*)0};
    int16_t **l_296 = &l_297[8];
    int16_t l_303 = 0L;
    int32_t l_321 = 0x7EAC4E37L;
    int8_t l_334 = (-3L);
    int32_t l_359 = (-1L);
    uint16_t l_367 = 0UL;
    int i;
    ++l_265;
    for (p_1198->g_93 = 0; (p_1198->g_93 > (-28)); --p_1198->g_93)
    { /* block id: 97 */
        uint32_t l_270 = 0xCA619412L;
        if (l_270)
            break;
        if (l_270)
            break;
    }
    for (p_1198->g_178 = 25; (p_1198->g_178 > (-11)); p_1198->g_178 = safe_sub_func_uint64_t_u_u(p_1198->g_178, 2))
    { /* block id: 103 */
        int32_t **l_273 = (void*)0;
        int32_t ***l_274 = (void*)0;
        int32_t *l_275 = (void*)0;
        l_273 = l_273;
        for (p_1198->g_86 = 2; (p_1198->g_86 >= 0); p_1198->g_86 -= 1)
        { /* block id: 107 */
            int32_t **l_276 = &p_1198->g_202;
            (*l_276) = l_275;
        }
    }
    if (l_265)
    { /* block id: 111 */
        uint8_t l_286 = 0x7CL;
        uint8_t *l_294 = &p_1198->g_245;
        p_1198->g_279 = p_1198->g_277;
        l_295 |= (((safe_sub_func_uint8_t_u_u(p_1198->g_279.f0, 1L)) < (((((p_1198->g_150[4] ^ 2L) <= ((((*l_294) = (safe_sub_func_int8_t_s_s((l_286 & ((safe_mod_func_int16_t_s_s((safe_rshift_func_int8_t_s_u(((void*)0 != p_1198->g_291), 0)), (safe_rshift_func_uint8_t_u_u((l_286 || ((~p_42) > l_286)), GROUP_DIVERGE(1, 1))))) >= 0xBAA3EEEE6405BCD4L)), p_42))) >= 0x5DL) != l_265)) , 0UL) || (*p_1198->g_71)) > 0x767F022DL)) ^ p_1198->g_279.f0);
    }
    else
    { /* block id: 115 */
        int16_t ***l_298 = &l_296;
        volatile int32_t * volatile * volatile l_301 = &p_1198->g_300;/* VOLATILE GLOBAL l_301 */
        int32_t l_315 = (-8L);
        int32_t l_336[8][5][5] = {{{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL}},{{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL}},{{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL}},{{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL}},{{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL}},{{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL}},{{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL}},{{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL},{4L,(-6L),0x52550F3DL,0L,0x0891F53DL}}};
        int i, j, k;
        (*l_298) = l_296;
        if (p_1198->g_86)
            goto lbl_302;
lbl_302:
        l_301 = p_1198->g_299[4];
        if ((p_1198->g_88 ^ l_303))
        { /* block id: 119 */
            uint16_t *l_306 = &p_1198->g_277.f3;
            uint32_t l_313[8][2] = {{4294967294UL,0x5487D05AL},{4294967294UL,0x5487D05AL},{4294967294UL,0x5487D05AL},{4294967294UL,0x5487D05AL},{4294967294UL,0x5487D05AL},{4294967294UL,0x5487D05AL},{4294967294UL,0x5487D05AL},{4294967294UL,0x5487D05AL}};
            int32_t l_314 = (-4L);
            uint32_t *l_316 = &p_1198->g_223;
            int8_t *l_335 = &p_1198->g_178;
            int i, j;
            (*p_1198->g_338) = ((safe_sub_func_uint32_t_u_u(((*l_316) |= (((--(*l_306)) && (p_42 > (l_314 = (safe_rshift_func_uint16_t_u_s(((safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(0, 1), 7)) , l_303), l_313[2][0]))))) < l_315)), (safe_rshift_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_u(l_321, 4)) | (l_336[3][3][4] = (((safe_mod_func_uint16_t_u_u((((safe_lshift_func_uint8_t_u_s((0x39L <= ((*l_335) = ((safe_mul_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((void*)0 == &p_1198->g_60), ((safe_add_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(5L, 7)), l_334)) | 0x0D531501L))), p_44)) , p_1198->g_244))), p_42)) , 0x2FD7CC11L) ^ l_315), p_1198->g_114)) , 8L) & FAKE_DIVERGE(p_1198->local_2_offset, get_local_id(2), 10)))), 6)))) , &p_42);
        }
        else
        { /* block id: 126 */
            int32_t *l_339 = &p_1198->g_255;
            for (p_1198->g_88 = 0; (p_1198->g_88 <= 0); p_1198->g_88 += 1)
            { /* block id: 129 */
                int32_t *l_340 = &p_1198->g_277.f0;
                int32_t *l_362 = &l_336[7][1][4];
                int32_t *l_363 = &p_1198->g_279.f0;
                int32_t *l_364 = &p_1198->g_344.f0;
                int32_t *l_365 = &p_1198->g_203;
                int32_t *l_366 = (void*)0;
                (*p_43) = (**p_1198->g_338);
                for (p_1198->g_86 = 7; (p_1198->g_86 >= 0); p_1198->g_86 -= 1)
                { /* block id: 133 */
                    uint8_t *l_350 = (void*)0;
                    uint8_t *l_351 = &p_1198->g_128;
                    uint16_t *l_356 = (void*)0;
                    uint16_t *l_357[5][4][2] = {{{&p_1198->g_277.f3,&p_1198->g_279.f3},{&p_1198->g_277.f3,&p_1198->g_279.f3},{&p_1198->g_277.f3,&p_1198->g_279.f3},{&p_1198->g_277.f3,&p_1198->g_279.f3}},{{&p_1198->g_277.f3,&p_1198->g_279.f3},{&p_1198->g_277.f3,&p_1198->g_279.f3},{&p_1198->g_277.f3,&p_1198->g_279.f3},{&p_1198->g_277.f3,&p_1198->g_279.f3}},{{&p_1198->g_277.f3,&p_1198->g_279.f3},{&p_1198->g_277.f3,&p_1198->g_279.f3},{&p_1198->g_277.f3,&p_1198->g_279.f3},{&p_1198->g_277.f3,&p_1198->g_279.f3}},{{&p_1198->g_277.f3,&p_1198->g_279.f3},{&p_1198->g_277.f3,&p_1198->g_279.f3},{&p_1198->g_277.f3,&p_1198->g_279.f3},{&p_1198->g_277.f3,&p_1198->g_279.f3}},{{&p_1198->g_277.f3,&p_1198->g_279.f3},{&p_1198->g_277.f3,&p_1198->g_279.f3},{&p_1198->g_277.f3,&p_1198->g_279.f3},{&p_1198->g_277.f3,&p_1198->g_279.f3}}};
                    int32_t l_358 = 0x0DBA7CDBL;
                    int i, j, k;
                    l_340 = l_339;
                    if (((*l_340) = ((void*)0 != p_1198->g_291)))
                    { /* block id: 136 */
                        int32_t **l_341 = (void*)0;
                        int32_t *l_343[3][7][7] = {{{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]}},{{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]}},{{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]},{&p_1198->g_222[0][1],(void*)0,&p_1198->g_222[2][3],&p_1198->g_222[2][3],(void*)0,&p_1198->g_277.f1,&p_1198->g_222[2][3]}}};
                        int32_t **l_342 = &l_343[1][2][4];
                        int i, j, k;
                        (*p_45) &= (((*l_342) = p_46) == (void*)0);
                        if ((*p_45))
                            continue;
                    }
                    else
                    { /* block id: 140 */
                        struct S0 *l_345 = &p_1198->g_279;
                        (*l_345) = p_1198->g_344;
                    }
                    l_359 = (safe_sub_func_uint16_t_u_u((0xF0L || ((l_321 = p_1198->g_277.f0) , ((*l_351) ^= (~((safe_rshift_func_uint16_t_u_u(((&p_1198->g_99 != &p_44) < p_42), l_336[1][4][2])) ^ 252UL))))), (((((*p_46) &= (safe_mod_func_uint8_t_u_u(((((((p_42 , (safe_mul_func_uint16_t_u_u((l_295 = 0x636FL), 7UL))) , p_42) == 0x351BL) ^ p_42) >= 4L) != GROUP_DIVERGE(1, 1)), p_1198->g_279.f0))) ^ 0x19BCA180L) & l_358) , (-1L))));
                    (*l_340) |= 5L;
                    for (l_334 = 0; (l_334 <= 0); l_334 += 1)
                    { /* block id: 151 */
                        int i, j, k;
                        (*p_45) = (p_1198->g_360 , ((p_1198->g_361 = &p_1198->g_211[1]) == (p_44 , &p_1198->g_150[4])));
                    }
                }
                ++l_367;
            }
        }
        return p_1198->g_370;
    }
    return (*p_1198->g_338);
}


/* ------------------------------------------ */
/* 
 * reads : p_1198->g_60 p_1198->g_20 p_1198->g_71 p_1198->g_88 p_1198->g_86 p_1198->g_99 p_1198->g_123 p_1198->g_125 p_1198->g_128 p_1198->g_114 p_1198->g_93 p_1198->g_155 p_1198->g_150 p_1198->g_179 p_1198->g_202 p_1198->g_203 p_1198->g_223 p_1198->g_251 p_1198->g_178 p_1198->g_255 p_1198->g_261
 * writes: p_1198->g_86 p_1198->g_88 p_1198->g_99 p_1198->g_114 p_1198->g_71 p_1198->g_93 p_1198->g_125 p_1198->g_128 p_1198->g_150 p_1198->g_155 p_1198->g_179 p_1198->g_203 p_1198->g_211 p_1198->g_223 p_1198->g_244 p_1198->g_245 p_1198->g_222 p_1198->g_255 p_1198->g_261
 */
int32_t * func_48(int32_t  p_49, int64_t  p_50, int32_t  p_51, int32_t * p_52, int32_t  p_53, struct S1 * p_1198)
{ /* block id: 13 */
    uint16_t l_72 = 0xF903L;
    int32_t *l_85 = &p_1198->g_86;
    uint8_t *l_87 = &p_1198->g_88;
    int32_t *l_204 = (void*)0;
    int32_t *l_252 = &p_1198->g_222[2][3];
    int32_t l_253 = 0x06CD116EL;
    int32_t *l_254 = &p_1198->g_255;
    int32_t l_256 = 0x1FCE4B78L;
    int32_t *l_257 = &p_1198->g_86;
    int32_t l_258 = (-5L);
    int32_t *l_259 = &p_1198->g_86;
    int32_t *l_260[4];
    int i;
    for (i = 0; i < 4; i++)
        l_260[i] = &p_1198->g_86;
    (*l_254) &= ((safe_mod_func_uint32_t_u_u(((((p_1198->g_60 == (((*l_252) = (p_1198->g_20 ^ func_62((l_85 = func_66(p_51, p_1198->g_71, l_72, (safe_div_func_uint8_t_u_u(0x04L, ((*l_87) = (safe_add_func_uint16_t_u_u(((((*l_85) = ((safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), 65533UL)) > ((safe_lshift_func_uint8_t_u_s((l_72 == (safe_add_func_uint8_t_u_u(p_50, 0x54L))), 6)) , 0UL))) ^ p_1198->g_20) , p_49), p_1198->g_20))))), p_1198)), p_1198->g_202, l_204, p_1198))) , (void*)0)) , 0L) >= p_1198->g_178) == l_253), (*p_52))) == 255UL);
    p_1198->g_261--;
    return &p_1198->g_86;
}


/* ------------------------------------------ */
/* 
 * reads : p_1198->g_93 p_1198->g_86 p_1198->g_88 p_1198->g_99 p_1198->g_123 p_1198->g_125 p_1198->g_128 p_1198->g_114 p_1198->g_155 p_1198->g_150 p_1198->g_71 p_1198->g_179 p_1198->g_20 p_1198->g_203 p_1198->g_223 p_1198->g_202 p_1198->g_251
 * writes: p_1198->g_99 p_1198->g_114 p_1198->g_71 p_1198->g_93 p_1198->g_125 p_1198->g_88 p_1198->g_128 p_1198->g_150 p_1198->g_155 p_1198->g_86 p_1198->g_179 p_1198->g_203 p_1198->g_211 p_1198->g_223 p_1198->g_244 p_1198->g_245
 */
int64_t  func_62(int32_t * p_63, int32_t * p_64, int32_t * p_65, struct S1 * p_1198)
{ /* block id: 70 */
    int32_t *l_205 = &p_1198->g_86;
    int32_t **l_206 = &l_205;
    int32_t l_217[5][5] = {{0x40DAAB13L,0x15B8313BL,0x40DAAB13L,0x40DAAB13L,0x15B8313BL},{0x40DAAB13L,0x15B8313BL,0x40DAAB13L,0x40DAAB13L,0x15B8313BL},{0x40DAAB13L,0x15B8313BL,0x40DAAB13L,0x40DAAB13L,0x15B8313BL},{0x40DAAB13L,0x15B8313BL,0x40DAAB13L,0x40DAAB13L,0x15B8313BL},{0x40DAAB13L,0x15B8313BL,0x40DAAB13L,0x40DAAB13L,0x15B8313BL}};
    uint8_t *l_226[7][3] = {{&p_1198->g_128,&p_1198->g_128,&p_1198->g_128},{&p_1198->g_128,&p_1198->g_128,&p_1198->g_128},{&p_1198->g_128,&p_1198->g_128,&p_1198->g_128},{&p_1198->g_128,&p_1198->g_128,&p_1198->g_128},{&p_1198->g_128,&p_1198->g_128,&p_1198->g_128},{&p_1198->g_128,&p_1198->g_128,&p_1198->g_128},{&p_1198->g_128,&p_1198->g_128,&p_1198->g_128}};
    int64_t *l_231 = &p_1198->g_93;
    uint16_t *l_240[4];
    uint16_t **l_241 = (void*)0;
    uint16_t *l_242[2][1];
    int32_t *l_243[9][10] = {{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,(void*)0,(void*)0,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,(void*)0,(void*)0,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,(void*)0,(void*)0,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,(void*)0,(void*)0,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,(void*)0,(void*)0,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,(void*)0,(void*)0,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,(void*)0,(void*)0,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,(void*)0,(void*)0,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244},{&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244,(void*)0,(void*)0,&p_1198->g_244,&p_1198->g_244,&p_1198->g_244}};
    uint16_t l_249 = 1UL;
    int32_t l_250[3][7][9] = {{{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L}},{{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L}},{{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L},{0x6CF6D457L,1L,(-4L),1L,0x6CF6D457L,5L,(-8L),1L,8L}}};
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_240[i] = &p_1198->g_125;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_242[i][j] = &p_1198->g_125;
    }
    (*l_206) = func_66(p_1198->g_93, l_205, (GROUP_DIVERGE(2, 1) <= 65535UL), (*l_205), p_1198);
    for (p_1198->g_203 = 1; (p_1198->g_203 <= 4); p_1198->g_203 += 1)
    { /* block id: 74 */
        int64_t l_209 = (-4L);
        uint64_t *l_210 = (void*)0;
        int32_t l_212 = (-3L);
        int32_t l_213 = 0x620428DFL;
        int32_t *l_214 = &l_213;
        int32_t *l_215 = (void*)0;
        int32_t *l_216 = (void*)0;
        int32_t *l_218 = (void*)0;
        int32_t *l_219 = &l_217[2][3];
        int32_t *l_220 = &l_217[2][3];
        int32_t *l_221[9][7][3] = {{{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]}},{{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]}},{{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]}},{{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]}},{{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]}},{{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]}},{{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]}},{{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]}},{{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]},{&p_1198->g_86,&l_217[2][3],&l_217[4][0]}}};
        int i, j, k;
        p_64 = func_66(p_1198->g_150[p_1198->g_203], p_63, (*l_205), (p_1198->g_211[5] = ((~8UL) , (safe_div_func_uint8_t_u_u(255UL, l_209)))), p_1198);
        --p_1198->g_223;
    }
    l_250[2][6][6] = ((l_226[4][2] == ((safe_add_func_uint16_t_u_u((l_217[0][3] = (((safe_add_func_uint16_t_u_u((l_231 != l_231), 0x3E0DL)) , (safe_mul_func_int16_t_s_s((((safe_div_func_uint16_t_u_u((!(p_1198->g_125 = (((safe_div_func_int64_t_s_s((((&p_1198->g_202 != &l_205) | ((*l_205) = (safe_lshift_func_uint8_t_u_u(((((*p_1198->g_202) ^= (((p_1198->g_245 = (p_1198->g_244 = (l_240[3] == (l_242[1][0] = l_240[3])))) , ((safe_unary_minus_func_int8_t_s((((safe_div_func_uint8_t_u_u((**l_206), p_1198->g_93)) | p_1198->g_125) == 0x041CE7FD013EDE44L))) == l_249)) <= (**l_206))) < 0x72780F63L) >= p_1198->g_179), l_250[2][6][6])))) ^ p_1198->g_88), 1L)) < p_1198->g_150[1]) >= p_1198->g_251))), (-10L))) <= p_1198->g_88) , (*l_205)), FAKE_DIVERGE(p_1198->local_1_offset, get_local_id(1), 10)))) <= p_1198->g_128)), 0L)) , l_226[4][2])) > p_1198->g_99);
    return p_1198->g_128;
}


/* ------------------------------------------ */
/* 
 * reads : p_1198->g_88 p_1198->g_86 p_1198->g_99 p_1198->g_123 p_1198->g_125 p_1198->g_128 p_1198->g_114 p_1198->g_93 p_1198->g_155 p_1198->g_150 p_1198->g_71 p_1198->g_179 p_1198->g_20
 * writes: p_1198->g_99 p_1198->g_114 p_1198->g_71 p_1198->g_93 p_1198->g_125 p_1198->g_88 p_1198->g_128 p_1198->g_150 p_1198->g_155 p_1198->g_86 p_1198->g_179
 */
int32_t * func_66(uint32_t  p_67, int32_t * p_68, uint8_t  p_69, uint64_t  p_70, struct S1 * p_1198)
{ /* block id: 16 */
    int32_t l_89 = 0x30CD947EL;
    int32_t l_101 = (-1L);
    int32_t l_102 = 0x78EE8584L;
    if (l_89)
    { /* block id: 17 */
        int64_t *l_92[5] = {&p_1198->g_93,&p_1198->g_93,&p_1198->g_93,&p_1198->g_93,&p_1198->g_93};
        uint64_t *l_98[10] = {&p_1198->g_99,&p_1198->g_99,&p_1198->g_99,&p_1198->g_99,&p_1198->g_99,&p_1198->g_99,&p_1198->g_99,&p_1198->g_99,&p_1198->g_99,&p_1198->g_99};
        int32_t l_100 = 0x5FCA599FL;
        int32_t *l_105 = &l_101;
        int32_t *l_106 = &l_102;
        int i;
        (*l_106) &= ((*l_105) = ((l_89 &= (safe_add_func_uint32_t_u_u((&p_69 == (void*)0), p_1198->g_88))) <= (l_100 = (p_67 | ((p_68 != ((safe_rshift_func_uint8_t_u_u((((safe_add_func_uint64_t_u_u(p_1198->g_86, (p_1198->g_99--))) == ((p_70 == ((void*)0 == l_98[8])) > p_1198->g_88)) && p_1198->g_99), 4)) , &l_102)) & p_70)))));
        return &p_1198->g_86;
    }
    else
    { /* block id: 24 */
        int64_t l_107[1];
        int32_t l_108 = 6L;
        int32_t **l_173 = &p_1198->g_71;
        int i;
        for (i = 0; i < 1; i++)
            l_107[i] = 0x628F8C84420CA572L;
lbl_109:
        l_108 = l_107[0];
        for (l_102 = 0; (l_102 <= 0); l_102 += 1)
        { /* block id: 28 */
            int32_t **l_115 = &p_1198->g_71;
            int64_t *l_116 = (void*)0;
            int64_t *l_117 = &p_1198->g_93;
            uint8_t l_122[4][10][6] = {{{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL}},{{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL}},{{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL}},{{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL},{5UL,5UL,254UL,7UL,6UL,7UL}}};
            uint16_t *l_124 = &p_1198->g_125;
            uint8_t *l_126 = &p_1198->g_88;
            uint8_t *l_127 = &p_1198->g_128;
            int64_t l_154[6][1];
            uint64_t l_162 = 1UL;
            int16_t *l_171[4][9] = {{&p_1198->g_150[4],&p_1198->g_150[0],&p_1198->g_150[4],&p_1198->g_150[4],&p_1198->g_150[4],&p_1198->g_150[0],&p_1198->g_150[4],&p_1198->g_150[4],&p_1198->g_150[4]},{&p_1198->g_150[4],&p_1198->g_150[0],&p_1198->g_150[4],&p_1198->g_150[4],&p_1198->g_150[4],&p_1198->g_150[0],&p_1198->g_150[4],&p_1198->g_150[4],&p_1198->g_150[4]},{&p_1198->g_150[4],&p_1198->g_150[0],&p_1198->g_150[4],&p_1198->g_150[4],&p_1198->g_150[4],&p_1198->g_150[0],&p_1198->g_150[4],&p_1198->g_150[4],&p_1198->g_150[4]},{&p_1198->g_150[4],&p_1198->g_150[0],&p_1198->g_150[4],&p_1198->g_150[4],&p_1198->g_150[4],&p_1198->g_150[0],&p_1198->g_150[4],&p_1198->g_150[4],&p_1198->g_150[4]}};
            int32_t *l_172 = &l_89;
            int i, j, k;
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 1; j++)
                    l_154[i][j] = 0x05DEA65F88FA8621L;
            }
            if (p_67)
                goto lbl_109;
            if ((safe_sub_func_uint8_t_u_u(((*l_127) |= (((p_1198->g_114 = (safe_lshift_func_int8_t_s_u((&p_69 == &p_1198->g_88), 6))) == ((((*l_115) = p_68) == (void*)0) | (((*l_117) = (l_107[l_102] ^= 0x50925A641CECC2FCL)) , (p_1198->g_88 && (~((((((*l_126) = (safe_add_func_uint16_t_u_u((safe_div_func_int32_t_s_s((-1L), l_122[1][1][0])), ((*l_124) |= ((p_1198->g_123 == &p_68) , p_70))))) < 0x5AL) > 0UL) <= GROUP_DIVERGE(1, 1)) && p_1198->g_86)))))) | p_1198->g_86)), p_70)))
            { /* block id: 37 */
                int16_t *l_149 = &p_1198->g_150[4];
                int32_t l_151 = (-7L);
                int32_t *l_152 = &l_89;
                int32_t *l_153[3][7] = {{&l_108,&l_102,&l_151,(void*)0,&l_102,(void*)0,&l_151},{&l_108,&l_102,&l_151,(void*)0,&l_102,(void*)0,&l_151},{&l_108,&l_102,&l_151,(void*)0,&l_102,(void*)0,&l_151}};
                int i, j;
                (*l_152) = ((safe_mod_func_int16_t_s_s((safe_add_func_int64_t_s_s((p_1198->g_114 >= p_67), FAKE_DIVERGE(p_1198->global_0_offset, get_global_id(0), 10))), ((((safe_rshift_func_uint16_t_u_s(1UL, (safe_div_func_uint64_t_u_u((safe_sub_func_int64_t_s_s(0x09A3AC23FC009244L, (safe_mod_func_int64_t_s_s(p_1198->g_93, (safe_lshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_u(p_70, (5UL != (l_151 = ((*l_149) = (safe_rshift_func_uint16_t_u_s((8UL > (safe_mod_func_int16_t_s_s(((4UL >= l_107[0]) , 0x6D20L), 0x4E4AL))), 11))))))), 4)))))), p_67)))) ^ p_1198->g_93) <= p_1198->g_88) , l_89))) || 0x79L);
                --p_1198->g_155;
                l_108 ^= p_1198->g_125;
            }
            else
            { /* block id: 43 */
                return p_68;
            }
            for (p_1198->g_125 = 0; (p_1198->g_125 <= 4); p_1198->g_125 += 1)
            { /* block id: 48 */
                return p_68;
            }
            (*l_172) = (!(l_107[0] | ((l_108 = (safe_lshift_func_uint16_t_u_u((safe_mod_func_int8_t_s_s(((l_162 >= ((FAKE_DIVERGE(p_1198->global_2_offset, get_global_id(2), 10) ^ (p_1198->g_86 = (safe_add_func_int64_t_s_s((safe_sub_func_uint16_t_u_u(((safe_div_func_int32_t_s_s(((&p_68 != (void*)0) , (((*l_127) = (!((void*)0 == &p_68))) != ((safe_div_func_int16_t_s_s((+(0x02L && (l_107[0] | (&p_1198->g_86 == p_68)))), p_1198->g_150[4])) ^ p_67))), 8UL)) , p_67), l_102)), l_107[0])))) || l_89)) < p_69), 0x5DL)), p_1198->g_114))) && p_1198->g_128)));
        }
        (*l_173) = &p_1198->g_86;
    }
    if (p_1198->g_155)
        goto lbl_201;
lbl_201:
    for (l_101 = 20; (l_101 != 20); l_101++)
    { /* block id: 60 */
        uint16_t l_176 = 0x6BF5L;
        int32_t *l_177[3][4][7] = {{{&l_101,&l_89,&l_101,&l_102,&l_101,&l_89,&l_101},{&l_101,&l_89,&l_101,&l_102,&l_101,&l_89,&l_101},{&l_101,&l_89,&l_101,&l_102,&l_101,&l_89,&l_101},{&l_101,&l_89,&l_101,&l_102,&l_101,&l_89,&l_101}},{{&l_101,&l_89,&l_101,&l_102,&l_101,&l_89,&l_101},{&l_101,&l_89,&l_101,&l_102,&l_101,&l_89,&l_101},{&l_101,&l_89,&l_101,&l_102,&l_101,&l_89,&l_101},{&l_101,&l_89,&l_101,&l_102,&l_101,&l_89,&l_101}},{{&l_101,&l_89,&l_101,&l_102,&l_101,&l_89,&l_101},{&l_101,&l_89,&l_101,&l_102,&l_101,&l_89,&l_101},{&l_101,&l_89,&l_101,&l_102,&l_101,&l_89,&l_101},{&l_101,&l_89,&l_101,&l_102,&l_101,&l_89,&l_101}}};
        uint8_t *l_196 = &p_1198->g_128;
        int i, j, k;
        l_176 = (*p_1198->g_71);
        ++p_1198->g_179;
        (*p_1198->g_71) = (p_1198->g_88 || 1UL);
        atomic_sub(&p_1198->l_atomic_reduction[0], (safe_add_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1198->group_0_offset, get_group_id(0), 10), (p_70 != (((safe_div_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((safe_div_func_int32_t_s_s(((((((*p_1198->g_71) | (*p_1198->g_71)) != (l_196 != &p_69)) < (safe_div_func_int64_t_s_s(((1L <= (safe_mod_func_int64_t_s_s((((*l_196) |= 0xFAL) & p_1198->g_20), (p_1198->g_155 && GROUP_DIVERGE(0, 1))))) >= 0L), l_102))) , l_89) , (*p_1198->g_71)), 0xA58026FCL)), p_67)), l_89)) && 1L) < 0x9481441D509144ECL)))), p_67)) + get_linear_global_id());
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_1198->v_collective += p_1198->l_atomic_reduction[0];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    }
    return p_68;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S1 c_1199;
    struct S1* p_1198 = &c_1199;
    struct S1 c_1200 = {
        0x21CD4309L, // p_1198->g_20
        0x2DD31843L, // p_1198->g_61
        &p_1198->g_61, // p_1198->g_60
        (void*)0, // p_1198->g_71
        0x58019D44L, // p_1198->g_86
        0x19L, // p_1198->g_88
        7L, // p_1198->g_93
        0x469FD68CABD04657L, // p_1198->g_99
        0x64EC4FEFL, // p_1198->g_114
        (void*)0, // p_1198->g_123
        1UL, // p_1198->g_125
        247UL, // p_1198->g_128
        {0x540EL,0x540EL,0x540EL,0x540EL,0x540EL}, // p_1198->g_150
        8UL, // p_1198->g_155
        0x43L, // p_1198->g_178
        0xE0867DB8501E2E48L, // p_1198->g_179
        0x022E769DL, // p_1198->g_203
        &p_1198->g_203, // p_1198->g_202
        {0x1A2EL,0x1A2EL,0x1A2EL,0x1A2EL,0x1A2EL,0x1A2EL,0x1A2EL,0x1A2EL}, // p_1198->g_211
        {{0L,(-1L),0x18625479L,(-1L)},{0L,(-1L),0x18625479L,(-1L)},{0L,(-1L),0x18625479L,(-1L)}}, // p_1198->g_222
        0UL, // p_1198->g_223
        0x76EEB393L, // p_1198->g_244
        1UL, // p_1198->g_245
        0x3CL, // p_1198->g_251
        0x4AF22537L, // p_1198->g_255
        65532UL, // p_1198->g_261
        {0L,0x520B73E2L,-3L,65528UL}, // p_1198->g_277
        {{{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277}},{{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277}},{{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277}},{{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277}},{{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277}},{{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277},{&p_1198->g_277}}}, // p_1198->g_278
        {-7L,1L,0x3EC0A38D345E9BEFL,65527UL}, // p_1198->g_279
        (void*)0, // p_1198->g_291
        (void*)0, // p_1198->g_300
        {&p_1198->g_300,&p_1198->g_300,&p_1198->g_300,&p_1198->g_300,&p_1198->g_300,&p_1198->g_300,&p_1198->g_300,&p_1198->g_300,&p_1198->g_300}, // p_1198->g_299
        (void*)0, // p_1198->g_337
        &p_1198->g_71, // p_1198->g_338
        {1L,2L,0L,0x87E1L}, // p_1198->g_344
        {0L,0x16CEA2C7L,0x6C0705EC8F20E9E2L,6UL}, // p_1198->g_360
        &p_1198->g_211[5], // p_1198->g_361
        &p_1198->g_255, // p_1198->g_370
        {-8L,0x418699DDL,0x2417C5D52642C611L,0UL}, // p_1198->g_378
        {&p_1198->g_378,&p_1198->g_378,&p_1198->g_378,&p_1198->g_378,&p_1198->g_378}, // p_1198->g_379
        &p_1198->g_360, // p_1198->g_380
        &p_1198->g_344.f3, // p_1198->g_399
        &p_1198->g_399, // p_1198->g_398
        0x7770A3C312396082L, // p_1198->g_445
        {{&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,(void*)0,&p_1198->g_445,(void*)0,&p_1198->g_445},{&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,(void*)0,&p_1198->g_445,(void*)0,&p_1198->g_445},{&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,(void*)0,&p_1198->g_445,(void*)0,&p_1198->g_445},{&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,(void*)0,&p_1198->g_445,(void*)0,&p_1198->g_445},{&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,(void*)0,&p_1198->g_445,(void*)0,&p_1198->g_445},{&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,(void*)0,&p_1198->g_445,(void*)0,&p_1198->g_445},{&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,(void*)0,&p_1198->g_445,(void*)0,&p_1198->g_445},{&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,&p_1198->g_445,(void*)0,&p_1198->g_445,(void*)0,&p_1198->g_445}}, // p_1198->g_444
        {0x5F7F2D51L,1L,1L,0x89CFL}, // p_1198->g_450
        (void*)0, // p_1198->g_475
        4294967286UL, // p_1198->g_507
        {{0x32987633L,-1L,0x26288E2104B2C0DCL,0x1764L},{0x32987633L,-1L,0x26288E2104B2C0DCL,0x1764L},{0x32987633L,-1L,0x26288E2104B2C0DCL,0x1764L},{0x32987633L,-1L,0x26288E2104B2C0DCL,0x1764L},{0x32987633L,-1L,0x26288E2104B2C0DCL,0x1764L},{0x32987633L,-1L,0x26288E2104B2C0DCL,0x1764L},{0x32987633L,-1L,0x26288E2104B2C0DCL,0x1764L},{0x32987633L,-1L,0x26288E2104B2C0DCL,0x1764L}}, // p_1198->g_515
        {1L,4L,0L,0x657FL}, // p_1198->g_516
        (void*)0, // p_1198->g_530
        {&p_1198->g_530,&p_1198->g_530}, // p_1198->g_529
        {{{0x0E3621BBL,0L,7L,0xF231L},{0x0E3621BBL,0L,7L,0xF231L},{0x06223F06L,0x65C150FFL,0x17D1EAC8CFD3913EL,0UL}},{{0x0E3621BBL,0L,7L,0xF231L},{0x0E3621BBL,0L,7L,0xF231L},{0x06223F06L,0x65C150FFL,0x17D1EAC8CFD3913EL,0UL}},{{0x0E3621BBL,0L,7L,0xF231L},{0x0E3621BBL,0L,7L,0xF231L},{0x06223F06L,0x65C150FFL,0x17D1EAC8CFD3913EL,0UL}},{{0x0E3621BBL,0L,7L,0xF231L},{0x0E3621BBL,0L,7L,0xF231L},{0x06223F06L,0x65C150FFL,0x17D1EAC8CFD3913EL,0UL}},{{0x0E3621BBL,0L,7L,0xF231L},{0x0E3621BBL,0L,7L,0xF231L},{0x06223F06L,0x65C150FFL,0x17D1EAC8CFD3913EL,0UL}}}, // p_1198->g_553
        1L, // p_1198->g_575
        0x96A2429E58D00F89L, // p_1198->g_600
        (void*)0, // p_1198->g_608
        &p_1198->g_279.f1, // p_1198->g_667
        &p_1198->g_667, // p_1198->g_666
        &p_1198->g_666, // p_1198->g_665
        (void*)0, // p_1198->g_716
        &p_1198->g_202, // p_1198->g_749
        &p_1198->g_71, // p_1198->g_751
        &p_1198->g_71, // p_1198->g_774
        0x0BL, // p_1198->g_779
        {1L,0L,0x202CD3816D0D3EA8L,0x9AE6L}, // p_1198->g_803
        &p_1198->g_803, // p_1198->g_804
        {0x63FC6EC3L,0x4B4B0098L,0x0E81DC3C00BA2B43L,1UL}, // p_1198->g_835
        65534UL, // p_1198->g_888
        &p_1198->g_370, // p_1198->g_930
        0x3DDDL, // p_1198->g_962
        &p_1198->g_223, // p_1198->g_999
        &p_1198->g_999, // p_1198->g_998
        {0x4BC287BCL,1L,1L,65535UL}, // p_1198->g_1010
        {0x35169EF9L,0x052B952EL,8L,2UL}, // p_1198->g_1012
        {0x536F06AFL,0x7A12B215L,0L,0x56E8L}, // p_1198->g_1015
        {{4L,0x451C431CL,0x27B4E79C32C5BC41L,65535UL},{4L,0x451C431CL,0x27B4E79C32C5BC41L,65535UL},{4L,0x451C431CL,0x27B4E79C32C5BC41L,65535UL},{4L,0x451C431CL,0x27B4E79C32C5BC41L,65535UL},{4L,0x451C431CL,0x27B4E79C32C5BC41L,65535UL}}, // p_1198->g_1016
        {0x3C20AD01L,-1L,-1L,0UL}, // p_1198->g_1033
        {8L,4L,0x1D51CC8A27B0E54CL,8UL}, // p_1198->g_1044
        &p_1198->g_1044, // p_1198->g_1043
        0x91L, // p_1198->g_1049
        {{{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL}}}, // p_1198->g_1055
        &p_1198->g_1055[1][1][5], // p_1198->g_1054
        &p_1198->g_1054, // p_1198->g_1053
        &p_1198->g_1053, // p_1198->g_1052
        0x072B4FF167BB1CABL, // p_1198->g_1091
        (-1L), // p_1198->g_1093
        3L, // p_1198->g_1102
        0x54664EE2L, // p_1198->g_1144
        0, // p_1198->v_collective
        sequence_input[get_global_id(0)], // p_1198->global_0_offset
        sequence_input[get_global_id(1)], // p_1198->global_1_offset
        sequence_input[get_global_id(2)], // p_1198->global_2_offset
        sequence_input[get_local_id(0)], // p_1198->local_0_offset
        sequence_input[get_local_id(1)], // p_1198->local_1_offset
        sequence_input[get_local_id(2)], // p_1198->local_2_offset
        sequence_input[get_group_id(0)], // p_1198->group_0_offset
        sequence_input[get_group_id(1)], // p_1198->group_1_offset
        sequence_input[get_group_id(2)], // p_1198->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1199 = c_1200;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1198);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1198->g_20, "p_1198->g_20", print_hash_value);
    transparent_crc(p_1198->g_61, "p_1198->g_61", print_hash_value);
    transparent_crc(p_1198->g_86, "p_1198->g_86", print_hash_value);
    transparent_crc(p_1198->g_88, "p_1198->g_88", print_hash_value);
    transparent_crc(p_1198->g_93, "p_1198->g_93", print_hash_value);
    transparent_crc(p_1198->g_99, "p_1198->g_99", print_hash_value);
    transparent_crc(p_1198->g_114, "p_1198->g_114", print_hash_value);
    transparent_crc(p_1198->g_125, "p_1198->g_125", print_hash_value);
    transparent_crc(p_1198->g_128, "p_1198->g_128", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1198->g_150[i], "p_1198->g_150[i]", print_hash_value);

    }
    transparent_crc(p_1198->g_155, "p_1198->g_155", print_hash_value);
    transparent_crc(p_1198->g_178, "p_1198->g_178", print_hash_value);
    transparent_crc(p_1198->g_179, "p_1198->g_179", print_hash_value);
    transparent_crc(p_1198->g_203, "p_1198->g_203", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1198->g_211[i], "p_1198->g_211[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1198->g_222[i][j], "p_1198->g_222[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1198->g_223, "p_1198->g_223", print_hash_value);
    transparent_crc(p_1198->g_244, "p_1198->g_244", print_hash_value);
    transparent_crc(p_1198->g_245, "p_1198->g_245", print_hash_value);
    transparent_crc(p_1198->g_251, "p_1198->g_251", print_hash_value);
    transparent_crc(p_1198->g_255, "p_1198->g_255", print_hash_value);
    transparent_crc(p_1198->g_261, "p_1198->g_261", print_hash_value);
    transparent_crc(p_1198->g_277.f0, "p_1198->g_277.f0", print_hash_value);
    transparent_crc(p_1198->g_277.f1, "p_1198->g_277.f1", print_hash_value);
    transparent_crc(p_1198->g_277.f2, "p_1198->g_277.f2", print_hash_value);
    transparent_crc(p_1198->g_277.f3, "p_1198->g_277.f3", print_hash_value);
    transparent_crc(p_1198->g_279.f0, "p_1198->g_279.f0", print_hash_value);
    transparent_crc(p_1198->g_279.f1, "p_1198->g_279.f1", print_hash_value);
    transparent_crc(p_1198->g_279.f2, "p_1198->g_279.f2", print_hash_value);
    transparent_crc(p_1198->g_279.f3, "p_1198->g_279.f3", print_hash_value);
    transparent_crc(p_1198->g_344.f0, "p_1198->g_344.f0", print_hash_value);
    transparent_crc(p_1198->g_344.f1, "p_1198->g_344.f1", print_hash_value);
    transparent_crc(p_1198->g_344.f2, "p_1198->g_344.f2", print_hash_value);
    transparent_crc(p_1198->g_344.f3, "p_1198->g_344.f3", print_hash_value);
    transparent_crc(p_1198->g_360.f0, "p_1198->g_360.f0", print_hash_value);
    transparent_crc(p_1198->g_360.f1, "p_1198->g_360.f1", print_hash_value);
    transparent_crc(p_1198->g_360.f2, "p_1198->g_360.f2", print_hash_value);
    transparent_crc(p_1198->g_360.f3, "p_1198->g_360.f3", print_hash_value);
    transparent_crc(p_1198->g_378.f0, "p_1198->g_378.f0", print_hash_value);
    transparent_crc(p_1198->g_378.f1, "p_1198->g_378.f1", print_hash_value);
    transparent_crc(p_1198->g_378.f2, "p_1198->g_378.f2", print_hash_value);
    transparent_crc(p_1198->g_378.f3, "p_1198->g_378.f3", print_hash_value);
    transparent_crc(p_1198->g_445, "p_1198->g_445", print_hash_value);
    transparent_crc(p_1198->g_450.f0, "p_1198->g_450.f0", print_hash_value);
    transparent_crc(p_1198->g_450.f1, "p_1198->g_450.f1", print_hash_value);
    transparent_crc(p_1198->g_450.f2, "p_1198->g_450.f2", print_hash_value);
    transparent_crc(p_1198->g_450.f3, "p_1198->g_450.f3", print_hash_value);
    transparent_crc(p_1198->g_507, "p_1198->g_507", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1198->g_515[i].f0, "p_1198->g_515[i].f0", print_hash_value);
        transparent_crc(p_1198->g_515[i].f1, "p_1198->g_515[i].f1", print_hash_value);
        transparent_crc(p_1198->g_515[i].f2, "p_1198->g_515[i].f2", print_hash_value);
        transparent_crc(p_1198->g_515[i].f3, "p_1198->g_515[i].f3", print_hash_value);

    }
    transparent_crc(p_1198->g_516.f0, "p_1198->g_516.f0", print_hash_value);
    transparent_crc(p_1198->g_516.f1, "p_1198->g_516.f1", print_hash_value);
    transparent_crc(p_1198->g_516.f2, "p_1198->g_516.f2", print_hash_value);
    transparent_crc(p_1198->g_516.f3, "p_1198->g_516.f3", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1198->g_553[i][j].f0, "p_1198->g_553[i][j].f0", print_hash_value);
            transparent_crc(p_1198->g_553[i][j].f1, "p_1198->g_553[i][j].f1", print_hash_value);
            transparent_crc(p_1198->g_553[i][j].f2, "p_1198->g_553[i][j].f2", print_hash_value);
            transparent_crc(p_1198->g_553[i][j].f3, "p_1198->g_553[i][j].f3", print_hash_value);

        }
    }
    transparent_crc(p_1198->g_575, "p_1198->g_575", print_hash_value);
    transparent_crc(p_1198->g_600, "p_1198->g_600", print_hash_value);
    transparent_crc(p_1198->g_779, "p_1198->g_779", print_hash_value);
    transparent_crc(p_1198->g_803.f0, "p_1198->g_803.f0", print_hash_value);
    transparent_crc(p_1198->g_803.f1, "p_1198->g_803.f1", print_hash_value);
    transparent_crc(p_1198->g_803.f2, "p_1198->g_803.f2", print_hash_value);
    transparent_crc(p_1198->g_803.f3, "p_1198->g_803.f3", print_hash_value);
    transparent_crc(p_1198->g_835.f0, "p_1198->g_835.f0", print_hash_value);
    transparent_crc(p_1198->g_835.f1, "p_1198->g_835.f1", print_hash_value);
    transparent_crc(p_1198->g_835.f2, "p_1198->g_835.f2", print_hash_value);
    transparent_crc(p_1198->g_835.f3, "p_1198->g_835.f3", print_hash_value);
    transparent_crc(p_1198->g_888, "p_1198->g_888", print_hash_value);
    transparent_crc(p_1198->g_962, "p_1198->g_962", print_hash_value);
    transparent_crc(p_1198->g_1010.f0, "p_1198->g_1010.f0", print_hash_value);
    transparent_crc(p_1198->g_1010.f1, "p_1198->g_1010.f1", print_hash_value);
    transparent_crc(p_1198->g_1010.f2, "p_1198->g_1010.f2", print_hash_value);
    transparent_crc(p_1198->g_1010.f3, "p_1198->g_1010.f3", print_hash_value);
    transparent_crc(p_1198->g_1012.f0, "p_1198->g_1012.f0", print_hash_value);
    transparent_crc(p_1198->g_1012.f1, "p_1198->g_1012.f1", print_hash_value);
    transparent_crc(p_1198->g_1012.f2, "p_1198->g_1012.f2", print_hash_value);
    transparent_crc(p_1198->g_1012.f3, "p_1198->g_1012.f3", print_hash_value);
    transparent_crc(p_1198->g_1015.f0, "p_1198->g_1015.f0", print_hash_value);
    transparent_crc(p_1198->g_1015.f1, "p_1198->g_1015.f1", print_hash_value);
    transparent_crc(p_1198->g_1015.f2, "p_1198->g_1015.f2", print_hash_value);
    transparent_crc(p_1198->g_1015.f3, "p_1198->g_1015.f3", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1198->g_1016[i].f0, "p_1198->g_1016[i].f0", print_hash_value);
        transparent_crc(p_1198->g_1016[i].f1, "p_1198->g_1016[i].f1", print_hash_value);
        transparent_crc(p_1198->g_1016[i].f2, "p_1198->g_1016[i].f2", print_hash_value);
        transparent_crc(p_1198->g_1016[i].f3, "p_1198->g_1016[i].f3", print_hash_value);

    }
    transparent_crc(p_1198->g_1033.f0, "p_1198->g_1033.f0", print_hash_value);
    transparent_crc(p_1198->g_1033.f1, "p_1198->g_1033.f1", print_hash_value);
    transparent_crc(p_1198->g_1033.f2, "p_1198->g_1033.f2", print_hash_value);
    transparent_crc(p_1198->g_1033.f3, "p_1198->g_1033.f3", print_hash_value);
    transparent_crc(p_1198->g_1044.f0, "p_1198->g_1044.f0", print_hash_value);
    transparent_crc(p_1198->g_1044.f1, "p_1198->g_1044.f1", print_hash_value);
    transparent_crc(p_1198->g_1044.f2, "p_1198->g_1044.f2", print_hash_value);
    transparent_crc(p_1198->g_1044.f3, "p_1198->g_1044.f3", print_hash_value);
    transparent_crc(p_1198->g_1049, "p_1198->g_1049", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1198->g_1055[i][j][k], "p_1198->g_1055[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1198->g_1091, "p_1198->g_1091", print_hash_value);
    transparent_crc(p_1198->g_1093, "p_1198->g_1093", print_hash_value);
    transparent_crc(p_1198->g_1102, "p_1198->g_1102", print_hash_value);
    transparent_crc(p_1198->g_1144, "p_1198->g_1144", print_hash_value);
    transparent_crc(p_1198->v_collective, "p_1198->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
