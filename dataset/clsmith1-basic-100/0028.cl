// ---fake_divergence -g 81,95,1 -l 3,5,1
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


// Seed: 28

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int8_t * f0;
   uint32_t  f1;
};

union U1 {
   uint16_t  f0;
   int64_t  f1;
   uint32_t  f2;
   volatile uint32_t  f3;
   int32_t  f4;
};

struct S2 {
    uint32_t g_19;
    int8_t g_36;
    uint32_t g_43[8][2][10];
    int64_t g_69;
    uint8_t g_71;
    volatile int32_t g_78;
    volatile int32_t *g_77;
    uint8_t g_83;
    uint32_t **g_101;
    union U0 g_104;
    uint64_t g_118;
    int8_t g_134;
    uint8_t g_146;
    uint8_t g_147;
    uint64_t *g_151;
    uint64_t **g_150;
    uint64_t *** volatile g_149;
    union U1 g_164[9];
    int16_t g_169;
    int32_t g_178;
    int8_t *g_180;
    volatile int32_t ** volatile g_181;
    int8_t g_198[10][2];
    volatile uint32_t g_199;
    int16_t g_215;
    int32_t *g_218[4][1][2];
    uint16_t g_277;
    uint64_t g_316;
    union U1 *g_320;
    union U1 ** volatile g_319;
    uint64_t g_388[2][8];
    union U1 g_407[7];
    uint32_t g_427;
    uint32_t *g_478;
    uint32_t **g_477;
    uint32_t ***g_476;
    volatile int32_t ** volatile g_494;
    int32_t ** volatile g_495;
    uint16_t g_571;
    uint32_t g_582;
    volatile uint32_t ** volatile *g_585[9];
    volatile int32_t ** volatile g_598;
    int32_t g_601[9][10];
    int32_t g_604;
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
int32_t  func_1(struct S2 * p_605);
int32_t  func_2(uint64_t  p_3, struct S2 * p_605);
int32_t  func_4(int8_t * p_5, int8_t * p_6, uint64_t  p_7, int8_t * p_8, struct S2 * p_605);
int8_t * func_9(uint8_t  p_10, int8_t * p_11, int8_t * p_12, int64_t  p_13, struct S2 * p_605);
int64_t  func_16(int32_t  p_17, int32_t  p_18, struct S2 * p_605);
uint16_t  func_24(int8_t * p_25, int8_t * p_26, int8_t * p_27, int64_t  p_28, int8_t * p_29, struct S2 * p_605);
int8_t * func_30(int8_t * p_31, int8_t * p_32, uint32_t  p_33, int64_t  p_34, struct S2 * p_605);
union U0  func_37(int8_t  p_38, int16_t  p_39, int32_t  p_40, struct S2 * p_605);
union U0  func_50(uint32_t * p_51, uint64_t  p_52, struct S2 * p_605);
uint64_t  func_54(uint64_t  p_55, uint32_t * p_56, int8_t * p_57, uint16_t  p_58, int64_t  p_59, struct S2 * p_605);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_605->g_19 p_605->g_43 p_605->g_36 p_605->g_69 p_605->g_71 p_605->g_77 p_605->g_78 p_605->g_101 p_605->g_104 p_605->g_83 p_605->g_149 p_605->g_134 p_605->g_146 p_605->g_164 p_605->g_151 p_605->g_118 p_605->g_147 p_605->g_164.f0 p_605->g_178 p_605->g_181 p_605->g_199 p_605->g_215 p_605->g_180 p_605->g_277 p_605->g_198 p_605->g_316 p_605->g_319 p_605->g_407 p_605->g_388 p_605->g_427 p_605->g_169 p_605->g_494 p_605->g_495 p_605->g_320 p_605->g_476 p_605->g_477 p_605->g_478 p_605->g_407.f0 p_605->g_571 p_605->g_582 p_605->g_585 p_605->g_598 p_605->g_601 p_605->g_604
 * writes: p_605->g_43 p_605->g_36 p_605->g_69 p_605->g_71 p_605->g_77 p_605->g_78 p_605->g_83 p_605->g_146 p_605->g_147 p_605->g_150 p_605->g_118 p_605->g_169 p_605->g_178 p_605->g_180 p_605->g_199 p_605->g_218 p_605->g_164.f0 p_605->g_277 p_605->g_151 p_605->g_316 p_605->g_134 p_605->g_320 p_605->g_388 p_605->g_198 p_605->g_476 p_605->g_571 p_605->g_19 p_605->g_582 p_605->g_601 p_605->g_604
 */
int32_t  func_1(struct S2 * p_605)
{ /* block id: 4 */
    int8_t *l_35 = &p_605->g_36;
    uint32_t l_41 = 4294967295UL;
    uint32_t *l_42 = &p_605->g_43[2][1][9];
    int8_t **l_179[7] = {&l_35,(void*)0,&l_35,&l_35,(void*)0,&l_35,&l_35};
    int16_t *l_244 = (void*)0;
    int16_t *l_245 = (void*)0;
    int16_t *l_246 = &p_605->g_169;
    uint32_t l_247[7];
    uint32_t l_248 = 0x32B3647BL;
    uint64_t *l_315[6] = {&p_605->g_316,&p_605->g_316,&p_605->g_316,&p_605->g_316,&p_605->g_316,&p_605->g_316};
    int32_t *l_600 = &p_605->g_601[6][2];
    int32_t *l_602 = (void*)0;
    int32_t *l_603 = &p_605->g_604;
    int i;
    for (i = 0; i < 7; i++)
        l_247[i] = 0xD6A4EE52L;
    (*l_603) |= ((*l_600) |= func_2((p_605->g_316 ^= ((func_4(func_9(((safe_div_func_int64_t_s_s(func_16(p_605->g_19, ((safe_sub_func_int16_t_s_s((((*l_42) = (safe_mod_func_uint32_t_u_u(p_605->g_19, (((((*l_246) = (func_24((p_605->g_180 = func_30(l_35, (func_37(p_605->g_19, l_41, (((l_41 == (l_35 == (void*)0)) > (((*l_42) ^= GROUP_DIVERGE(2, 1)) > 0xC0838563L)) , 6L), p_605) , l_35), p_605->g_134, p_605->g_19, p_605)), &p_605->g_134, &p_605->g_134, p_605->g_19, &p_605->g_134, p_605) && 65532UL)) , l_41) >= l_247[6]) ^ l_248)))) , p_605->g_134), l_41)) ^ l_247[3]), p_605), l_248)) , p_605->g_198[9][0]), &p_605->g_198[9][0], &p_605->g_198[9][0], p_605->g_198[7][0], p_605), &p_605->g_134, p_605->g_198[9][0], &p_605->g_198[9][0], p_605) < 0x1DC1AA43L) , (*p_605->g_151))), p_605));
    return (*l_603);
}


/* ------------------------------------------ */
/* 
 * reads : p_605->g_134 p_605->g_319 p_605->g_151 p_605->g_118 p_605->g_43 p_605->g_215 p_605->g_77 p_605->g_78 p_605->g_181 p_605->g_71 p_605->g_180 p_605->g_83 p_605->g_69 p_605->g_178 p_605->g_407 p_605->g_277 p_605->g_388 p_605->g_427 p_605->g_169 p_605->g_198 p_605->g_101 p_605->g_494 p_605->g_495 p_605->g_320 p_605->g_476 p_605->g_477 p_605->g_164.f0 p_605->g_478 p_605->g_104 p_605->g_146 p_605->g_164 p_605->g_147 p_605->g_407.f0 p_605->g_571 p_605->g_582 p_605->g_585 p_605->g_598
 * writes: p_605->g_134 p_605->g_320 p_605->g_147 p_605->g_118 p_605->g_78 p_605->g_71 p_605->g_169 p_605->g_277 p_605->g_83 p_605->g_388 p_605->g_178 p_605->g_198 p_605->g_69 p_605->g_476 p_605->g_164.f0 p_605->g_77 p_605->g_218 p_605->g_571 p_605->g_19 p_605->g_582
 */
int32_t  func_2(uint64_t  p_3, struct S2 * p_605)
{ /* block id: 121 */
    uint64_t l_321 = 0x412A1E54621A295AL;
    volatile int32_t l_336 = 9L;/* VOLATILE GLOBAL l_336 */
    uint32_t *l_385 = &p_605->g_43[2][1][9];
    int8_t *l_439 = &p_605->g_198[9][0];
    int32_t l_458 = 0x60DFBC69L;
    uint32_t ***l_474 = (void*)0;
    uint64_t ***l_496 = &p_605->g_150;
    int64_t l_498 = 0x50873D57A249D9EEL;
    int64_t l_524 = 1L;
    int32_t *l_576 = (void*)0;
    for (p_605->g_134 = 0; (p_605->g_134 == 13); ++p_605->g_134)
    { /* block id: 124 */
        uint64_t l_331 = 0x5ABC60E40DF4CF5CL;
        int32_t l_379[5][2] = {{0x322FB90FL,0x322FB90FL},{0x322FB90FL,0x322FB90FL},{0x322FB90FL,0x322FB90FL},{0x322FB90FL,0x322FB90FL},{0x322FB90FL,0x322FB90FL}};
        int16_t l_441 = (-4L);
        int8_t l_542 = 0x38L;
        int8_t *l_544 = (void*)0;
        int8_t *l_545 = &p_605->g_36;
        int8_t *l_546 = &p_605->g_36;
        uint32_t l_547 = 0x4C1BCE0BL;
        int32_t *l_570[2];
        int i, j;
        for (i = 0; i < 2; i++)
            l_570[i] = &p_605->g_178;
        (*p_605->g_319) = &p_605->g_164[4];
        if (l_321)
        { /* block id: 126 */
            volatile int32_t *l_339 = &p_605->g_78;
            union U0 l_372 = {0};
            int32_t l_374 = (-6L);
            int32_t **l_380 = (void*)0;
            int32_t l_383 = 0x5F37D5B8L;
            int8_t l_406 = 0x70L;
            int16_t *l_412 = &p_605->g_169;
            int64_t *l_425 = &p_605->g_69;
            for (p_605->g_147 = 0; (p_605->g_147 == 43); p_605->g_147 = safe_add_func_int64_t_s_s(p_605->g_147, 4))
            { /* block id: 129 */
                uint16_t l_328 = 0x755BL;
                int32_t l_373 = 0x6D9D4937L;
                int32_t l_377 = 6L;
                int32_t l_378 = (-1L);
                int8_t l_386 = 0L;
                uint64_t **l_390 = (void*)0;
                if ((((GROUP_DIVERGE(1, 1) & 0x771B17EABBAE327DL) <= ((safe_lshift_func_int16_t_s_s(((+((l_328 , p_3) >= (l_331 & (p_3 >= 2UL)))) < (FAKE_DIVERGE(p_605->global_0_offset, get_global_id(0), 10) <= 0x65L)), ((--(*p_605->g_151)) & ((safe_lshift_func_uint16_t_u_u(((((void*)0 != &p_605->g_169) < 0L) == p_605->g_43[2][1][9]), p_605->g_215)) >= l_328)))) != 0x307FBC51L)) , l_331))
                { /* block id: 131 */
                    uint32_t l_384 = 0x2F03179CL;
                    uint64_t **l_392 = (void*)0;
                    int32_t *l_399 = &l_377;
                    uint64_t *l_400 = &p_605->g_388[0][0];
                    int8_t *l_405 = &p_605->g_198[6][1];
                    l_336 = (*p_605->g_77);
                    (*p_605->g_77) |= 0x31D6F629L;
                    for (p_605->g_71 = 0; (p_605->g_71 <= 0); p_605->g_71 += 1)
                    { /* block id: 136 */
                        volatile int32_t **l_337 = (void*)0;
                        volatile int32_t **l_338[1];
                        int16_t *l_375 = &p_605->g_169;
                        int16_t *l_376[9] = {&p_605->g_215,&p_605->g_215,&p_605->g_215,&p_605->g_215,&p_605->g_215,&p_605->g_215,&p_605->g_215,&p_605->g_215,&p_605->g_215};
                        int32_t ***l_381 = &l_380;
                        uint16_t *l_382[5];
                        uint64_t *l_387[9][3] = {{(void*)0,&p_605->g_388[0][4],&p_605->g_388[0][1]},{(void*)0,&p_605->g_388[0][4],&p_605->g_388[0][1]},{(void*)0,&p_605->g_388[0][4],&p_605->g_388[0][1]},{(void*)0,&p_605->g_388[0][4],&p_605->g_388[0][1]},{(void*)0,&p_605->g_388[0][4],&p_605->g_388[0][1]},{(void*)0,&p_605->g_388[0][4],&p_605->g_388[0][1]},{(void*)0,&p_605->g_388[0][4],&p_605->g_388[0][1]},{(void*)0,&p_605->g_388[0][4],&p_605->g_388[0][1]},{(void*)0,&p_605->g_388[0][4],&p_605->g_388[0][1]}};
                        int32_t *l_389 = &p_605->g_178;
                        uint64_t ***l_391[8] = {&p_605->g_150,&p_605->g_150,&p_605->g_150,&p_605->g_150,&p_605->g_150,&p_605->g_150,&p_605->g_150,&p_605->g_150};
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_338[i] = (void*)0;
                        for (i = 0; i < 5; i++)
                            l_382[i] = &p_605->g_164[4].f0;
                        l_339 = (*p_605->g_181);
                        (*l_389) ^= (safe_mod_func_uint64_t_u_u((1L | ((safe_add_func_int32_t_s_s(((safe_mul_func_uint8_t_u_u((safe_div_func_uint64_t_u_u((safe_mod_func_int16_t_s_s(((safe_mod_func_int64_t_s_s(((void*)0 != (*p_605->g_181)), (safe_sub_func_uint64_t_u_u(((p_605->g_388[1][3] = ((safe_add_func_int64_t_s_s(((((&p_605->g_43[(p_605->g_71 + 3)][(p_605->g_71 + 1)][(p_605->g_71 + 5)] != ((((*p_605->g_180) = (((l_383 |= (safe_mul_func_int16_t_s_s(p_605->g_43[(p_605->g_71 + 3)][(p_605->g_71 + 1)][(p_605->g_71 + 5)], (p_605->g_277 = ((((~((safe_rshift_func_int16_t_s_u((((safe_div_func_uint8_t_u_u(p_3, ((safe_add_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u((((*l_381) = ((((l_379[1][0] = (safe_sub_func_int32_t_s_s((p_3 || (((((l_378 = (safe_rshift_func_uint8_t_u_u((1UL != (l_377 = ((*l_375) = ((((l_374 ^= ((safe_div_func_int32_t_s_s((l_373 = ((l_372 , 4UL) < (-2L))), p_3)) >= p_3)) == p_605->g_43[2][1][9]) , (void*)0) != (void*)0)))), 2))) == p_3) == 1UL) >= FAKE_DIVERGE(p_605->group_0_offset, get_group_id(0), 10)) < 0x1294L)), p_605->g_43[(p_605->g_71 + 3)][(p_605->g_71 + 1)][(p_605->g_71 + 5)]))) || 3UL) >= 4294967286UL) , l_380)) != (void*)0), p_3)), (*p_605->g_180))) , 0x62L))) & l_321) >= l_328), 13)) , 0x3671ABEAFFACCB4FL)) & (*p_605->g_151)) ^ p_605->g_69) , p_3))))) & l_331) , l_384)) == 1UL) , l_385)) || 1L) < p_3) | p_3), p_3)) , l_386)) , 0x9BEC043AE6A61D33L), p_3)))) ^ p_3), l_331)), l_321)), l_321)) | p_3), p_3)) || GROUP_DIVERGE(0, 1))), 18446744073709551612UL));
                        (*p_605->g_77) ^= ((*l_389) ^= (((l_392 = l_390) == &p_605->g_151) < (0L != 1L)));
                    }
                    (*l_339) = ((((safe_rshift_func_int8_t_s_u((safe_add_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u(p_3, 3)), ((((*l_399) |= (-1L)) != (!(l_400 != &p_605->g_388[1][3]))) , ((((((safe_mul_func_uint16_t_u_u(((l_336 && ((((*p_605->g_180) = (safe_div_func_uint32_t_u_u(p_3, 4294967295UL))) & ((*l_405) = p_3)) ^ (l_406 = p_3))) , 0xEBBEL), GROUP_DIVERGE(0, 1))) || 0xBA43L) >= (*l_399)) , p_605->g_407[2]) , 5L) , 0x68DE0ABF59170CB7L)))), 0)) & l_321) , p_605->g_277) & 0L);
                }
                else
                { /* block id: 159 */
                    uint64_t l_426 = 0x57E27B0052FD0EB9L;
                    int32_t *l_428 = &l_379[1][0];
                    (*l_428) ^= ((GROUP_DIVERGE(0, 1) != ((((safe_rshift_func_uint8_t_u_s(((0x6CL >= 0L) , (safe_lshift_func_uint8_t_u_s((*l_339), ((void*)0 != l_412)))), ((safe_add_func_int16_t_s_s(p_605->g_388[1][3], p_605->g_215)) | l_377))) >= (safe_mod_func_int64_t_s_s((((((safe_add_func_int64_t_s_s(((safe_rshift_func_uint8_t_u_s((safe_div_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_u(((&p_605->g_69 != l_425) , 0xC6L), 1)) || p_3), l_426)), (*p_605->g_180))) & p_605->g_427), (*p_605->g_151))) > p_605->g_169) , 0x141DDEFCL) , &p_605->g_178) != l_385), p_605->g_198[7][0]))) < 1L) && 0x51FAL)) < p_3);
                }
                if (((l_377 = (((safe_lshift_func_int8_t_s_s((*p_605->g_180), p_3)) , (*l_339)) != ((*l_425) = (l_321 ^ (((safe_add_func_int16_t_s_s((safe_add_func_int8_t_s_s((safe_div_func_uint64_t_u_u(p_3, l_378)), (((l_331 >= 4UL) ^ ((*p_605->g_151) = (l_439 != &l_406))) != 1L))), l_321)) < 0x44F1L) | 0UL))))) || p_3))
                { /* block id: 165 */
                    volatile int32_t **l_440 = &l_339;
                    (*l_440) = (*p_605->g_181);
                }
                else
                { /* block id: 167 */
                    return l_441;
                }
                (*l_339) = ((-10L) == p_3);
            }
        }
        else
        { /* block id: 172 */
            int8_t l_456 = 0x4AL;
            int32_t l_457 = 5L;
            int32_t l_460 = (-1L);
            int32_t l_461 = 0x6A9D2491L;
            int32_t l_462[10][5] = {{2L,0x67A6107CL,0x76C4359AL,0x2D9FF47AL,0x67A6107CL},{2L,0x67A6107CL,0x76C4359AL,0x2D9FF47AL,0x67A6107CL},{2L,0x67A6107CL,0x76C4359AL,0x2D9FF47AL,0x67A6107CL},{2L,0x67A6107CL,0x76C4359AL,0x2D9FF47AL,0x67A6107CL},{2L,0x67A6107CL,0x76C4359AL,0x2D9FF47AL,0x67A6107CL},{2L,0x67A6107CL,0x76C4359AL,0x2D9FF47AL,0x67A6107CL},{2L,0x67A6107CL,0x76C4359AL,0x2D9FF47AL,0x67A6107CL},{2L,0x67A6107CL,0x76C4359AL,0x2D9FF47AL,0x67A6107CL},{2L,0x67A6107CL,0x76C4359AL,0x2D9FF47AL,0x67A6107CL},{2L,0x67A6107CL,0x76C4359AL,0x2D9FF47AL,0x67A6107CL}};
            uint64_t **l_566 = (void*)0;
            int i, j;
            for (p_605->g_277 = 0; (p_605->g_277 < 14); p_605->g_277 = safe_add_func_uint8_t_u_u(p_605->g_277, 9))
            { /* block id: 175 */
                int32_t l_454 = 0L;
                int32_t l_455 = 0x3AA10679L;
                int32_t l_459 = (-1L);
                int32_t l_463[5][4][9] = {{{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L},{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L},{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L},{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L}},{{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L},{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L},{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L},{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L}},{{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L},{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L},{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L},{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L}},{{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L},{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L},{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L},{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L}},{{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L},{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L},{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L},{0L,0x073B2CDEL,0x49E13BADL,0x254CF172L,0x34ABE529L,0L,0x254CF172L,1L,0x254CF172L}}};
                int32_t l_464 = 0x05526DC9L;
                uint32_t ***l_475 = &p_605->g_101;
                uint16_t *l_492 = &p_605->g_407[2].f0;
                int32_t **l_499 = &p_605->g_218[3][0][1];
                int i, j, k;
                for (l_321 = (-29); (l_321 > 57); l_321 = safe_add_func_int16_t_s_s(l_321, 7))
                { /* block id: 178 */
                    int32_t *l_446 = &p_605->g_178;
                    int32_t l_447 = 0x3841E4F3L;
                    int32_t *l_448 = &p_605->g_178;
                    int32_t *l_449 = &l_379[1][0];
                    int32_t l_450[8][9][2] = {{{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L}},{{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L}},{{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L}},{{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L}},{{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L}},{{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L}},{{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L}},{{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L},{(-10L),4L}}};
                    int32_t *l_451 = &l_379[1][0];
                    int32_t *l_452 = (void*)0;
                    int32_t *l_453[8] = {&l_447,&l_447,&l_447,&l_447,&l_447,&l_447,&l_447,&l_447};
                    uint8_t l_465[4];
                    uint16_t *l_479 = &p_605->g_164[4].f0;
                    uint8_t *l_493 = &l_465[0];
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                        l_465[i] = 0x62L;
                    ++l_465[0];
                    if (p_3)
                        break;
                    if ((safe_rshift_func_int8_t_s_u((((void*)0 == p_605->g_101) == (safe_add_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u((GROUP_DIVERGE(2, 1) ^ ((*l_479) = ((l_474 == (p_605->g_476 = l_475)) < p_3))), (((safe_rshift_func_int16_t_s_s((((((safe_rshift_func_int16_t_s_s(0x7CADL, 2)) <= (safe_mul_func_int8_t_s_s(((safe_div_func_uint64_t_u_u((0x460A6073L || (safe_div_func_uint8_t_u_u(((*l_493) &= ((safe_lshift_func_uint8_t_u_s((((void*)0 == l_492) ^ l_336), 3)) < p_3)), GROUP_DIVERGE(1, 1)))), 0x1CF661670661C485L)) < p_3), (-1L)))) , p_3) | (-10L)) && 65531UL), l_460)) == p_3) <= p_3))), p_3))), 1)))
                    { /* block id: 184 */
                        (*p_605->g_494) = (*p_605->g_181);
                        (*p_605->g_495) = &l_455;
                    }
                    else
                    { /* block id: 187 */
                        uint8_t l_497[1][10] = {{0x6CL,0xCAL,0xA3L,0xCAL,0x6CL,0x6CL,0xCAL,0xA3L,0xCAL,0x6CL}};
                        int i, j;
                        l_498 &= (l_497[0][4] = (~((void*)0 != l_496)));
                    }
                }
                (*l_499) = (void*)0;
                if ((**p_605->g_494))
                    continue;
            }
            for (l_458 = 0; (l_458 > 2); l_458++)
            { /* block id: 197 */
                int64_t *l_513 = &p_605->g_69;
                int32_t l_541 = 1L;
                uint64_t **l_567 = &p_605->g_151;
                int16_t l_568 = 0x5CEDL;
                for (p_605->g_69 = (-11); (p_605->g_69 != 10); p_605->g_69 = safe_add_func_uint8_t_u_u(p_605->g_69, 6))
                { /* block id: 200 */
                    uint32_t l_516 = 0x3A2AE2B1L;
                    int32_t *l_523 = &l_462[6][3];
                    int8_t **l_543[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_543[i] = &l_439;
                    for (l_498 = 1; (l_498 >= 0); l_498 -= 1)
                    { /* block id: 203 */
                        int32_t *l_512 = &l_462[6][3];
                        int i, j, k;
                        l_516 ^= (safe_rshift_func_uint16_t_u_s(((*p_605->g_319) != ((safe_div_func_uint32_t_u_u((safe_div_func_int64_t_s_s((p_605->g_43[(l_498 + 4)][l_498][(l_498 + 4)] == ((*l_512) |= (safe_lshift_func_int8_t_s_s(p_605->g_43[(l_498 + 5)][l_498][(l_498 + 4)], 5)))), (((l_513 == (void*)0) == ((void*)0 != (*p_605->g_476))) | (p_605->g_198[l_498][l_498] && (safe_add_func_uint64_t_u_u((*p_605->g_151), p_605->g_164[4].f0)))))), 0x4C674561L)) , p_605->g_320)), p_605->g_198[6][0]));
                        (*l_512) = (safe_lshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u(4294967288UL, (**p_605->g_477))), 13)), 3));
                    }
                    (*p_605->g_495) = l_523;
                    (*p_605->g_77) = (l_524 ^ ((safe_div_func_int32_t_s_s((((safe_mul_func_int8_t_s_s((safe_add_func_uint16_t_u_u((safe_mod_func_int64_t_s_s(p_3, (safe_div_func_uint8_t_u_u((safe_add_func_uint64_t_u_u(((((p_605->g_69 & ((((l_546 = (p_605->g_104 , (l_545 = (l_544 = func_9(p_3, func_30(&p_605->g_198[4][0], &p_605->g_198[3][0], (safe_lshift_func_uint16_t_u_u((safe_sub_func_int32_t_s_s((l_336 , l_541), (**p_605->g_477))), l_542)), p_3, p_605), &p_605->g_198[9][0], p_605->g_147, p_605))))) == (void*)0) >= 3UL) | p_605->g_134)) < l_541) != 0x23L) , l_321), (*l_523))), p_3)))), l_458)), 0x65L)) < l_547) <= 0x2739L), GROUP_DIVERGE(0, 1))) && 0x3CL));
                    for (l_498 = 24; (l_498 == (-3)); --l_498)
                    { /* block id: 215 */
                        int8_t l_569 = 0x35L;
                        (*p_605->g_77) = (safe_rshift_func_int16_t_s_u(p_3, 14));
                        (*l_523) = ((0x368EL < p_605->g_83) && (((safe_mul_func_uint16_t_u_u(p_3, (safe_div_func_int16_t_s_s(((safe_mod_func_int32_t_s_s((safe_div_func_uint64_t_u_u(((safe_mul_func_int8_t_s_s(((((safe_mul_func_int8_t_s_s((((safe_add_func_uint32_t_u_u((p_605->g_169 && p_605->g_178), (((((((p_3 && (l_566 != l_567)) & p_3) >= l_568) , 0x1722L) || p_3) >= l_541) >= p_3))) & p_605->g_407[2].f0) | p_3), p_3)) , 0x4FC9L) <= p_605->g_78) && p_3), 0xF3L)) , p_3), 18446744073709551608UL)), l_569)) ^ (*l_523)), (*l_523))))) | 0x03E43AFFL) ^ (*l_523)));
                        return l_524;
                    }
                }
            }
        }
        --p_605->g_571;
        for (p_605->g_19 = 0; (p_605->g_19 == 24); p_605->g_19++)
        { /* block id: 226 */
            uint32_t *l_581 = &p_605->g_582;
            int32_t l_592 = 1L;
            union U1 **l_597 = &p_605->g_320;
            l_576 = &l_458;
            if ((*p_605->g_77))
                continue;
            if ((safe_rshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_s((((*l_581)++) , (((((void*)0 == p_605->g_585[2]) || (safe_rshift_func_uint16_t_u_s((((((safe_rshift_func_int8_t_s_s((safe_mod_func_uint16_t_u_u(p_605->g_169, p_3)), 6)) > (((p_3 != l_592) != (safe_mod_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(((l_597 == (p_3 , l_597)) <= p_3), p_3)) >= 0L), p_3))) <= p_605->g_582)) & 0x3DL) >= (-8L)) && l_592), p_3))) == p_3) <= 0x19D489D8L)), p_3)), 9)))
            { /* block id: 230 */
                (*l_576) = (*p_605->g_77);
            }
            else
            { /* block id: 232 */
                int64_t l_599 = 0x4A2EED5A8BE222EFL;
                (*p_605->g_598) = (*p_605->g_181);
                if (l_599)
                    continue;
                if (p_3)
                    break;
            }
        }
    }
    return p_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_605->g_151 p_605->g_43 p_605->g_199 p_605->g_180 p_605->g_83 p_605->g_69 p_605->g_77 p_605->g_78 p_605->g_181
 * writes: p_605->g_151 p_605->g_118 p_605->g_78
 */
int32_t  func_4(int8_t * p_5, int8_t * p_6, uint64_t  p_7, int8_t * p_8, struct S2 * p_605)
{ /* block id: 107 */
    uint64_t *l_290[8];
    uint64_t **l_291 = &p_605->g_151;
    int32_t l_294 = 0L;
    uint32_t *l_297 = (void*)0;
    int32_t l_298 = (-5L);
    int32_t l_303 = 0x13836D43L;
    int32_t l_304 = (-1L);
    uint8_t l_305 = 0x3DL;
    int32_t l_311[6][2] = {{(-1L),0x452E4DEBL},{(-1L),0x452E4DEBL},{(-1L),0x452E4DEBL},{(-1L),0x452E4DEBL},{(-1L),0x452E4DEBL},{(-1L),0x452E4DEBL}};
    uint32_t l_312 = 4294967295UL;
    int i, j;
    for (i = 0; i < 8; i++)
        l_290[i] = &p_605->g_118;
    if ((2UL < (safe_mul_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(0L, 2)), (((safe_mod_func_int16_t_s_s((((0x15L ^ ((l_304 |= (safe_sub_func_int32_t_s_s(((safe_mod_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), ((((*l_291) = l_290[3]) != &p_7) || (safe_mod_func_int64_t_s_s(p_7, ((**l_291) = 0x2CEB2E8148235480L)))))) >= l_294), (safe_sub_func_uint8_t_u_u((l_303 ^= ((((l_298 = GROUP_DIVERGE(2, 1)) >= ((safe_mod_func_int64_t_s_s((safe_sub_func_uint16_t_u_u(p_7, l_294)), 1UL)) > FAKE_DIVERGE(p_605->local_1_offset, get_local_id(1), 10))) , p_605->g_43[1][0][5]) , p_605->g_199)), (*p_605->g_180)))))) | GROUP_DIVERGE(2, 1))) >= l_294) & l_294), p_605->g_69)) ^ (*p_605->g_180)) ^ 0x3BDAB1B6L)))))
    { /* block id: 113 */
        (*p_605->g_77) &= 8L;
        return l_305;
    }
    else
    { /* block id: 116 */
        int16_t l_306 = 0L;
        int32_t l_307 = (-9L);
        int32_t *l_308 = &l_304;
        int32_t *l_309 = &l_303;
        int32_t *l_310[7][7] = {{&p_605->g_178,&l_303,(void*)0,&l_304,(void*)0,&l_304,(void*)0},{&p_605->g_178,&l_303,(void*)0,&l_304,(void*)0,&l_304,(void*)0},{&p_605->g_178,&l_303,(void*)0,&l_304,(void*)0,&l_304,(void*)0},{&p_605->g_178,&l_303,(void*)0,&l_304,(void*)0,&l_304,(void*)0},{&p_605->g_178,&l_303,(void*)0,&l_304,(void*)0,&l_304,(void*)0},{&p_605->g_178,&l_303,(void*)0,&l_304,(void*)0,&l_304,(void*)0},{&p_605->g_178,&l_303,(void*)0,&l_304,(void*)0,&l_304,(void*)0}};
        int i, j;
        l_312++;
        return (**p_605->g_181);
    }
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_9(uint8_t  p_10, int8_t * p_11, int8_t * p_12, int64_t  p_13, struct S2 * p_605)
{ /* block id: 105 */
    return &p_605->g_134;
}


/* ------------------------------------------ */
/* 
 * reads : p_605->g_164.f0 p_605->g_43 p_605->g_147 p_605->g_180 p_605->g_83 p_605->g_71 p_605->g_77 p_605->g_78 p_605->g_69 p_605->g_19 p_605->g_101 p_605->g_36 p_605->g_104 p_605->g_149 p_605->g_215 p_605->g_134 p_605->g_277
 * writes: p_605->g_164.f0 p_605->g_147 p_605->g_36 p_605->g_69 p_605->g_71 p_605->g_77 p_605->g_78 p_605->g_83 p_605->g_43 p_605->g_146 p_605->g_150 p_605->g_277
 */
int64_t  func_16(int32_t  p_17, int32_t  p_18, struct S2 * p_605)
{ /* block id: 95 */
    uint8_t *l_253 = &p_605->g_147;
    int8_t l_254 = (-3L);
    uint16_t *l_267 = &p_605->g_164[4].f0;
    int64_t l_272 = (-1L);
    uint8_t *l_273[6] = {&p_605->g_83,&p_605->g_146,&p_605->g_83,&p_605->g_83,&p_605->g_146,&p_605->g_83};
    int32_t l_274 = (-1L);
    int32_t l_275 = 1L;
    uint16_t *l_276 = &p_605->g_277;
    int32_t *l_278[7] = {&p_605->g_178,&p_605->g_178,&p_605->g_178,&p_605->g_178,&p_605->g_178,&p_605->g_178,&p_605->g_178};
    uint16_t l_279 = 0x13C8L;
    int i;
    l_279 = (p_18 = ((safe_mul_func_uint16_t_u_u(65527UL, (safe_sub_func_int64_t_s_s(((void*)0 == l_253), l_254)))) < ((*l_276) |= ((~((*p_605->g_180) = (l_275 ^= (safe_mul_func_uint16_t_u_u((safe_div_func_uint64_t_u_u((safe_rshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(((*l_267) ^= (safe_rshift_func_int8_t_s_u(0x44L, 5))), (safe_mul_func_int8_t_s_s(0L, (l_274 = (((*l_253) = GROUP_DIVERGE(2, 1)) , ((l_272 != (l_254 != (func_37(((p_605->g_43[2][1][3] , p_605->g_147) , (*p_605->g_180)), p_605->g_71, (*p_605->g_77), p_605) , 0xF755L))) & (-8L)))))))), p_605->g_215)), p_605->g_134)), p_17)), 0x44FEL))))) < 1UL))));
    return p_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_605->g_181 p_605->g_199 p_605->g_164 p_605->g_77 p_605->g_78 p_605->g_178 p_605->g_83 p_605->g_43 p_605->g_215
 * writes: p_605->g_77 p_605->g_199 p_605->g_169 p_605->g_78 p_605->g_218
 */
uint16_t  func_24(int8_t * p_25, int8_t * p_26, int8_t * p_27, int64_t  p_28, int8_t * p_29, struct S2 * p_605)
{ /* block id: 77 */
    uint64_t *l_182 = &p_605->g_118;
    int32_t l_184 = 1L;
    int32_t *l_238 = (void*)0;
    int32_t *l_239[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    uint32_t l_240[3][6][4] = {{{0xC0651202L,0xC0651202L,7UL,6UL},{0xC0651202L,0xC0651202L,7UL,6UL},{0xC0651202L,0xC0651202L,7UL,6UL},{0xC0651202L,0xC0651202L,7UL,6UL},{0xC0651202L,0xC0651202L,7UL,6UL},{0xC0651202L,0xC0651202L,7UL,6UL}},{{0xC0651202L,0xC0651202L,7UL,6UL},{0xC0651202L,0xC0651202L,7UL,6UL},{0xC0651202L,0xC0651202L,7UL,6UL},{0xC0651202L,0xC0651202L,7UL,6UL},{0xC0651202L,0xC0651202L,7UL,6UL},{0xC0651202L,0xC0651202L,7UL,6UL}},{{0xC0651202L,0xC0651202L,7UL,6UL},{0xC0651202L,0xC0651202L,7UL,6UL},{0xC0651202L,0xC0651202L,7UL,6UL},{0xC0651202L,0xC0651202L,7UL,6UL},{0xC0651202L,0xC0651202L,7UL,6UL},{0xC0651202L,0xC0651202L,7UL,6UL}}};
    volatile int32_t *l_243 = &p_605->g_78;
    int i, j, k;
    (*p_605->g_181) = &p_605->g_78;
    if ((((void*)0 == l_182) & 0x76L))
    { /* block id: 79 */
        int32_t *l_183 = &p_605->g_178;
        int32_t *l_185 = &l_184;
        int32_t *l_186 = &l_184;
        int32_t *l_187 = &p_605->g_178;
        int32_t *l_188 = (void*)0;
        int32_t l_189 = 0x50EB43A0L;
        int32_t *l_190 = &p_605->g_178;
        int32_t *l_191 = &p_605->g_178;
        int32_t *l_192 = (void*)0;
        int32_t *l_193 = &l_184;
        int32_t *l_194 = &p_605->g_178;
        int32_t *l_195 = &l_189;
        int32_t *l_196 = (void*)0;
        int32_t *l_197[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        ++p_605->g_199;
        (*l_193) = (p_605->g_164[4] , (**p_605->g_181));
    }
    else
    { /* block id: 82 */
        int16_t *l_212 = &p_605->g_169;
        int16_t *l_213 = (void*)0;
        int16_t *l_214[2];
        int32_t l_216 = 0x568258FFL;
        int32_t l_217 = 0x6D3EF12DL;
        uint32_t *l_230[7];
        uint32_t **l_229 = &l_230[0];
        int64_t *l_237[4];
        int i;
        for (i = 0; i < 2; i++)
            l_214[i] = &p_605->g_215;
        for (i = 0; i < 7; i++)
            l_230[i] = &p_605->g_43[5][1][1];
        for (i = 0; i < 4; i++)
            l_237[i] = &p_605->g_69;
        (*p_605->g_77) = (safe_mul_func_uint16_t_u_u(((p_28 || (((-1L) >= (safe_rshift_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((((((((safe_mod_func_int8_t_s_s(((((void*)0 != &p_26) & ((safe_add_func_uint16_t_u_u(l_184, ((*l_212) = p_28))) < ((l_184 >= p_605->g_178) , (l_216 ^= p_605->g_178)))) >= l_217), (*p_25))) <= 0x0AL) & l_184) , 0x4878L) >= 2L) >= l_184) ^ p_28), p_28)), p_28))) || p_605->g_78)) & 0x2DL), 1UL));
        p_605->g_218[3][0][1] = &l_184;
        (*p_605->g_77) = (safe_rshift_func_int16_t_s_s(0x2300L, (((safe_mul_func_uint8_t_u_u(255UL, ((((((safe_div_func_int32_t_s_s((safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((l_229 == (void*)0), (safe_mod_func_int8_t_s_s((safe_mod_func_uint64_t_u_u(((((((l_216 , l_216) | (0UL > ((l_217 |= (safe_div_func_uint64_t_u_u(p_28, p_28))) && p_28))) , l_184) , 0x7A86E48C6A7EAEF1L) != (-8L)) | 0xF1FB673FCE317D50L), 1L)), GROUP_DIVERGE(1, 1))))), p_605->g_43[2][1][9])), p_28)) >= p_605->g_215) || 6L) == l_184) != GROUP_DIVERGE(2, 1)) || 18446744073709551615UL))) > 0x343CAFA4DCBB3E87L) > 5L)));
    }
    l_240[2][4][0]--;
    l_243 = (*p_605->g_181);
    return p_28;
}


/* ------------------------------------------ */
/* 
 * reads : p_605->g_146 p_605->g_164 p_605->g_151 p_605->g_118 p_605->g_147 p_605->g_164.f0 p_605->g_178
 * writes: p_605->g_118 p_605->g_169 p_605->g_178
 */
int8_t * func_30(int8_t * p_31, int8_t * p_32, uint32_t  p_33, int64_t  p_34, struct S2 * p_605)
{ /* block id: 69 */
    uint64_t **l_165[1][1];
    uint64_t ***l_166 = &l_165[0][0];
    uint8_t *l_167 = &p_605->g_83;
    int16_t *l_168 = &p_605->g_169;
    int32_t l_170 = 0x47CBC0A3L;
    int32_t l_175 = 0x755A1BD8L;
    uint64_t **l_176 = &p_605->g_151;
    int32_t *l_177 = &p_605->g_178;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_165[i][j] = &p_605->g_151;
    }
    (*l_177) &= ((safe_mul_func_int16_t_s_s(((*l_168) = (p_605->g_146 && (p_605->g_164[4] , ((((((*p_605->g_151) = (*p_605->g_151)) , ((*l_166) = l_165[0][0])) != (void*)0) , l_167) != &p_605->g_71)))), (((~((l_170 | ((((((l_175 = (safe_lshift_func_int16_t_s_s(0x796DL, 11))) < p_34) , (void*)0) == l_176) == 0L) != p_33)) != p_605->g_147)) ^ p_605->g_164[4].f0) , l_175))) <= p_33);
    return l_167;
}


/* ------------------------------------------ */
/* 
 * reads : p_605->g_36 p_605->g_43 p_605->g_69 p_605->g_71 p_605->g_77 p_605->g_78 p_605->g_19 p_605->g_101 p_605->g_104 p_605->g_83 p_605->g_149
 * writes: p_605->g_36 p_605->g_69 p_605->g_71 p_605->g_77 p_605->g_78 p_605->g_83 p_605->g_43 p_605->g_146 p_605->g_147 p_605->g_150
 */
union U0  func_37(int8_t  p_38, int16_t  p_39, int32_t  p_40, struct S2 * p_605)
{ /* block id: 6 */
    int8_t l_64 = (-1L);
    int32_t l_102 = (-4L);
    int64_t *l_107[9][5] = {{(void*)0,(void*)0,&p_605->g_69,&p_605->g_69,&p_605->g_69},{(void*)0,(void*)0,&p_605->g_69,&p_605->g_69,&p_605->g_69},{(void*)0,(void*)0,&p_605->g_69,&p_605->g_69,&p_605->g_69},{(void*)0,(void*)0,&p_605->g_69,&p_605->g_69,&p_605->g_69},{(void*)0,(void*)0,&p_605->g_69,&p_605->g_69,&p_605->g_69},{(void*)0,(void*)0,&p_605->g_69,&p_605->g_69,&p_605->g_69},{(void*)0,(void*)0,&p_605->g_69,&p_605->g_69,&p_605->g_69},{(void*)0,(void*)0,&p_605->g_69,&p_605->g_69,&p_605->g_69},{(void*)0,(void*)0,&p_605->g_69,&p_605->g_69,&p_605->g_69}};
    union U0 l_159[9][10] = {{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}}};
    int32_t *l_161 = (void*)0;
    int32_t **l_160 = &l_161;
    int i, j;
    for (p_605->g_36 = 27; (p_605->g_36 < 7); p_605->g_36 = safe_sub_func_int8_t_s_s(p_605->g_36, 7))
    { /* block id: 9 */
        uint32_t *l_53 = &p_605->g_43[2][1][9];
        int32_t l_67 = 1L;
        union U0 l_100[9][2] = {{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}},{{0},{0}}};
        int64_t *l_108 = &p_605->g_69;
        int16_t *l_115[3][2];
        uint64_t *l_117 = &p_605->g_118;
        uint64_t **l_116 = &l_117;
        uint64_t *l_138 = &p_605->g_118;
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 2; j++)
                l_115[i][j] = (void*)0;
        }
        for (p_38 = 0; (p_38 > (-28)); --p_38)
        { /* block id: 12 */
            int32_t l_62 = 0x0954837AL;
            int64_t *l_68 = &p_605->g_69;
            uint8_t *l_70 = &p_605->g_71;
            uint32_t l_82 = 0xB849B7D6L;
            uint64_t *l_103[1];
            int i;
            for (i = 0; i < 1; i++)
                l_103[i] = (void*)0;
            p_40 = (safe_add_func_int16_t_s_s((+((func_50(l_53, func_54((safe_mod_func_int32_t_s_s((l_62 || (((*l_70) ^= ((safe_unary_minus_func_int32_t_s(((l_64 , 65535UL) | (((*l_68) = ((l_64 , ((-7L) ^ (safe_sub_func_int64_t_s_s(l_67, p_40)))) > p_605->g_43[5][1][6])) && p_605->g_69)))) > 0x5FB330CFL)) > p_605->g_43[2][1][9])), 0xA39DA5D7L)), &p_605->g_19, &p_605->g_36, p_605->g_43[5][1][6], p_605->g_43[2][1][9], p_605), p_605) , FAKE_DIVERGE(p_605->group_1_offset, get_group_id(1), 10)) != p_605->g_19)), 0x0C00L));
            (*p_605->g_77) = ((+(((p_605->g_83 = ((*l_70) = l_82)) || 1L) & (p_40 = 0x757A549BL))) , ((((+(l_67 = ((0x65F0DE344E30A6D4L && (safe_mul_func_int16_t_s_s((safe_add_func_uint32_t_u_u(p_39, ((safe_mul_func_int8_t_s_s((safe_sub_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_s(p_605->g_19, (safe_add_func_int8_t_s_s((0x58L & ((safe_lshift_func_int8_t_s_s(((((*l_70) = ((l_100[5][1] , (&l_53 != p_605->g_101)) <= 0x72L)) == p_605->g_36) && 0x4549E5CEL), 0)) & p_605->g_69)), l_102)))), l_102)), 0x5AF8L)), 0x2CL)) | l_82))), 65535UL))) == 8UL))) == (-5L)) != p_40) || p_40));
            return p_605->g_104;
        }
        if (((func_50(l_53, ((safe_sub_func_int16_t_s_s(((p_39 > (((l_107[0][3] == l_108) <= (safe_lshift_func_uint8_t_u_s(((safe_rshift_func_int16_t_s_s(0x4088L, 15)) & (l_102 ^= (safe_rshift_func_uint16_t_u_s((+p_38), 1)))), 1))) , 1UL)) <= ((((*l_116) = l_108) != (void*)0) == l_64)), l_67)) == (*p_605->g_77)), p_605) , l_64) && 0L))
        { /* block id: 37 */
            union U0 l_119 = {0};
            for (l_67 = 0; l_67 < 8; l_67 += 1)
            {
                for (p_605->g_78 = 0; p_605->g_78 < 2; p_605->g_78 += 1)
                {
                    for (p_39 = 0; p_39 < 10; p_39 += 1)
                    {
                        p_605->g_43[l_67][p_605->g_78][p_39] = 0x45913EF9L;
                    }
                }
            }
            return l_119;
        }
        else
        { /* block id: 40 */
            int8_t *l_133 = &p_605->g_134;
            int32_t l_135 = 0x71F8345FL;
            uint16_t l_142 = 65535UL;
            int32_t l_148 = 0L;
            for (l_64 = 0; (l_64 != (-28)); l_64--)
            { /* block id: 43 */
                int8_t *l_130 = (void*)0;
                int8_t *l_132[6][5] = {{&p_605->g_36,&l_64,(void*)0,&l_64,&l_64},{&p_605->g_36,&l_64,(void*)0,&l_64,&l_64},{&p_605->g_36,&l_64,(void*)0,&l_64,&l_64},{&p_605->g_36,&l_64,(void*)0,&l_64,&l_64},{&p_605->g_36,&l_64,(void*)0,&l_64,&l_64},{&p_605->g_36,&l_64,(void*)0,&l_64,&l_64}};
                int8_t **l_131[7][3] = {{(void*)0,&l_130,(void*)0},{(void*)0,&l_130,(void*)0},{(void*)0,&l_130,(void*)0},{(void*)0,&l_130,(void*)0},{(void*)0,&l_130,(void*)0},{(void*)0,&l_130,(void*)0},{(void*)0,&l_130,(void*)0}};
                uint64_t *l_141[7] = {&p_605->g_118,&p_605->g_118,&p_605->g_118,&p_605->g_118,&p_605->g_118,&p_605->g_118,&p_605->g_118};
                int32_t l_143 = 1L;
                int32_t *l_144 = (void*)0;
                int32_t *l_145 = &l_143;
                int i, j;
                if (l_64)
                    break;
                l_148 |= (((p_605->g_147 = (p_605->g_146 = ((*l_145) = (((-1L) | (((safe_lshift_func_uint16_t_u_s(0xDF63L, 0)) | (((safe_sub_func_uint8_t_u_u((safe_div_func_int32_t_s_s((*p_605->g_77), ((*l_53) = (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_605->local_0_offset, get_local_id(0), 10), ((l_135 = (l_130 != (l_133 = &p_605->g_36))) >= ((FAKE_DIVERGE(p_605->local_1_offset, get_local_id(1), 10) <= ((GROUP_DIVERGE(1, 1) & (safe_mod_func_int64_t_s_s((l_138 != ((safe_sub_func_uint64_t_u_u(0UL, 0x56046493B66AF959L)) , ((*l_116) = l_141[2]))), 0x7B5E83B3B4D8F4AAL))) & p_605->g_83)) , l_142))))))), 0x77L)) >= 1L) >= l_143)) ^ 65535UL)) , (*p_605->g_77))))) && p_40) , (*p_605->g_77));
            }
            for (l_135 = 0; (l_135 <= 1); l_135 += 1)
            { /* block id: 56 */
                int32_t l_154 = 1L;
                int32_t l_155 = 0x7F6ABC8BL;
                uint64_t l_156 = 18446744073709551609UL;
                (*p_605->g_149) = &l_138;
                for (l_142 = 0; (l_142 <= 4); l_142 += 1)
                { /* block id: 60 */
                    int32_t *l_152 = &l_67;
                    int32_t *l_153[2][9][9] = {{{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67}},{{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67},{&l_67,&l_135,&l_148,&l_102,&l_148,&l_67,&l_67,&l_67,&l_67}}};
                    int i, j, k;
                    l_156--;
                }
            }
        }
        return l_159[7][4];
    }
    (*l_160) = &p_40;
    return p_605->g_104;
}


/* ------------------------------------------ */
/* 
 * reads : p_605->g_77 p_605->g_78
 * writes: p_605->g_78
 */
union U0  func_50(uint32_t * p_51, uint64_t  p_52, struct S2 * p_605)
{ /* block id: 23 */
    int64_t l_80 = 0L;
    union U0 l_81[1] = {{0}};
    int i;
    (*p_605->g_77) ^= l_80;
    return l_81[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_605->g_77
 * writes: p_605->g_77
 */
uint64_t  func_54(uint64_t  p_55, uint32_t * p_56, int8_t * p_57, uint16_t  p_58, int64_t  p_59, struct S2 * p_605)
{ /* block id: 15 */
    volatile int32_t **l_79 = &p_605->g_77;
    for (p_58 = 0; (p_58 >= 24); p_58 = safe_add_func_uint8_t_u_u(p_58, 8))
    { /* block id: 18 */
        uint32_t *l_75 = &p_605->g_19;
        uint32_t **l_74 = &l_75;
        uint32_t ***l_76 = &l_74;
        (*l_76) = l_74;
    }
    (*l_79) = p_605->g_77;
    return p_58;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_606;
    struct S2* p_605 = &c_606;
    struct S2 c_607 = {
        0x65420764L, // p_605->g_19
        8L, // p_605->g_36
        {{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}},{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}},{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}},{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}},{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}},{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}},{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}},{{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L},{1UL,5UL,4294967293UL,0x668CDE33L,0x62EAE264L,0x116971DBL,4294967291UL,0x47CDD537L,0x8F492357L,0xCF28D0D4L}}}, // p_605->g_43
        0x773E8932A224D52AL, // p_605->g_69
        9UL, // p_605->g_71
        (-2L), // p_605->g_78
        &p_605->g_78, // p_605->g_77
        252UL, // p_605->g_83
        (void*)0, // p_605->g_101
        {0}, // p_605->g_104
        1UL, // p_605->g_118
        0L, // p_605->g_134
        0UL, // p_605->g_146
        0xEEL, // p_605->g_147
        &p_605->g_118, // p_605->g_151
        &p_605->g_151, // p_605->g_150
        &p_605->g_150, // p_605->g_149
        {{65527UL},{65527UL},{65527UL},{65527UL},{65527UL},{65527UL},{65527UL},{65527UL},{65527UL}}, // p_605->g_164
        (-1L), // p_605->g_169
        0x2DDED1B2L, // p_605->g_178
        &p_605->g_36, // p_605->g_180
        &p_605->g_77, // p_605->g_181
        {{0x72L,6L},{0x72L,6L},{0x72L,6L},{0x72L,6L},{0x72L,6L},{0x72L,6L},{0x72L,6L},{0x72L,6L},{0x72L,6L},{0x72L,6L}}, // p_605->g_198
        0UL, // p_605->g_199
        0x7DF0L, // p_605->g_215
        {{{&p_605->g_178,&p_605->g_178}},{{&p_605->g_178,&p_605->g_178}},{{&p_605->g_178,&p_605->g_178}},{{&p_605->g_178,&p_605->g_178}}}, // p_605->g_218
        0UL, // p_605->g_277
        18446744073709551611UL, // p_605->g_316
        (void*)0, // p_605->g_320
        &p_605->g_320, // p_605->g_319
        {{18446744073709551615UL,18446744073709551615UL,0x903F353B853F5649L,0xE0C1E94BAF42E43CL,18446744073709551615UL,0xE0C1E94BAF42E43CL,0x903F353B853F5649L,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,0x903F353B853F5649L,0xE0C1E94BAF42E43CL,18446744073709551615UL,0xE0C1E94BAF42E43CL,0x903F353B853F5649L,18446744073709551615UL}}, // p_605->g_388
        {{65535UL},{0UL},{65535UL},{65535UL},{0UL},{65535UL},{65535UL}}, // p_605->g_407
        2UL, // p_605->g_427
        &p_605->g_427, // p_605->g_478
        &p_605->g_478, // p_605->g_477
        &p_605->g_477, // p_605->g_476
        &p_605->g_77, // p_605->g_494
        &p_605->g_218[1][0][0], // p_605->g_495
        65528UL, // p_605->g_571
        0x25C5DF8CL, // p_605->g_582
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_605->g_585
        &p_605->g_77, // p_605->g_598
        {{1L,(-5L),(-5L),1L,(-1L),0x0732CB90L,0x0732CB90L,(-1L),1L,(-5L)},{1L,(-5L),(-5L),1L,(-1L),0x0732CB90L,0x0732CB90L,(-1L),1L,(-5L)},{1L,(-5L),(-5L),1L,(-1L),0x0732CB90L,0x0732CB90L,(-1L),1L,(-5L)},{1L,(-5L),(-5L),1L,(-1L),0x0732CB90L,0x0732CB90L,(-1L),1L,(-5L)},{1L,(-5L),(-5L),1L,(-1L),0x0732CB90L,0x0732CB90L,(-1L),1L,(-5L)},{1L,(-5L),(-5L),1L,(-1L),0x0732CB90L,0x0732CB90L,(-1L),1L,(-5L)},{1L,(-5L),(-5L),1L,(-1L),0x0732CB90L,0x0732CB90L,(-1L),1L,(-5L)},{1L,(-5L),(-5L),1L,(-1L),0x0732CB90L,0x0732CB90L,(-1L),1L,(-5L)},{1L,(-5L),(-5L),1L,(-1L),0x0732CB90L,0x0732CB90L,(-1L),1L,(-5L)}}, // p_605->g_601
        0x7695BF62L, // p_605->g_604
        sequence_input[get_global_id(0)], // p_605->global_0_offset
        sequence_input[get_global_id(1)], // p_605->global_1_offset
        sequence_input[get_global_id(2)], // p_605->global_2_offset
        sequence_input[get_local_id(0)], // p_605->local_0_offset
        sequence_input[get_local_id(1)], // p_605->local_1_offset
        sequence_input[get_local_id(2)], // p_605->local_2_offset
        sequence_input[get_group_id(0)], // p_605->group_0_offset
        sequence_input[get_group_id(1)], // p_605->group_1_offset
        sequence_input[get_group_id(2)], // p_605->group_2_offset
    };
    c_606 = c_607;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_605);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_605->g_19, "p_605->g_19", print_hash_value);
    transparent_crc(p_605->g_36, "p_605->g_36", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_605->g_43[i][j][k], "p_605->g_43[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_605->g_69, "p_605->g_69", print_hash_value);
    transparent_crc(p_605->g_71, "p_605->g_71", print_hash_value);
    transparent_crc(p_605->g_78, "p_605->g_78", print_hash_value);
    transparent_crc(p_605->g_83, "p_605->g_83", print_hash_value);
    transparent_crc(p_605->g_118, "p_605->g_118", print_hash_value);
    transparent_crc(p_605->g_134, "p_605->g_134", print_hash_value);
    transparent_crc(p_605->g_146, "p_605->g_146", print_hash_value);
    transparent_crc(p_605->g_147, "p_605->g_147", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_605->g_164[i].f0, "p_605->g_164[i].f0", print_hash_value);

    }
    transparent_crc(p_605->g_169, "p_605->g_169", print_hash_value);
    transparent_crc(p_605->g_178, "p_605->g_178", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_605->g_198[i][j], "p_605->g_198[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_605->g_199, "p_605->g_199", print_hash_value);
    transparent_crc(p_605->g_215, "p_605->g_215", print_hash_value);
    transparent_crc(p_605->g_277, "p_605->g_277", print_hash_value);
    transparent_crc(p_605->g_316, "p_605->g_316", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_605->g_388[i][j], "p_605->g_388[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_605->g_407[i].f0, "p_605->g_407[i].f0", print_hash_value);

    }
    transparent_crc(p_605->g_427, "p_605->g_427", print_hash_value);
    transparent_crc(p_605->g_571, "p_605->g_571", print_hash_value);
    transparent_crc(p_605->g_582, "p_605->g_582", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_605->g_601[i][j], "p_605->g_601[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_605->g_604, "p_605->g_604", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
