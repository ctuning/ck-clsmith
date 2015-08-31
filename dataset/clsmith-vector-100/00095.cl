// ---fake_divergence -g 33,1,1 -l 3,1,1
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


// Seed: 95

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_6;
    int16_t g_42;
    int8_t g_63;
    uint32_t g_64;
    volatile uint64_t g_67;
    VECTOR(int16_t, 4) g_79;
    int32_t g_102[8][10];
    int32_t * volatile g_101;
    int64_t g_105;
    int32_t g_107;
    int32_t *g_106[3][1][5];
    VECTOR(int32_t, 8) g_111;
    volatile VECTOR(int32_t, 8) g_114;
    VECTOR(int64_t, 4) g_119;
    VECTOR(int32_t, 8) g_121;
    int64_t g_136;
    int32_t ** volatile g_139[1][1];
    uint32_t g_142;
    VECTOR(uint8_t, 16) g_158;
    int16_t * volatile g_163;
    int16_t * volatile *g_162;
    VECTOR(int32_t, 8) g_169;
    uint64_t g_195;
    volatile VECTOR(int64_t, 2) g_216;
    uint16_t g_251;
    VECTOR(uint32_t, 4) g_267;
    volatile VECTOR(int64_t, 4) g_274;
    VECTOR(int64_t, 4) g_275;
    VECTOR(int16_t, 16) g_308;
    VECTOR(int16_t, 8) g_311;
    int16_t *g_317[3][9][5];
    int16_t **g_316;
    int16_t *** volatile g_315[10];
    int16_t *** volatile * volatile g_314;
    volatile VECTOR(int16_t, 16) g_318;
    uint8_t *g_341;
    volatile VECTOR(uint16_t, 4) g_366;
    volatile VECTOR(int16_t, 4) g_369;
    volatile VECTOR(int16_t, 2) g_371;
    VECTOR(int8_t, 8) g_372;
    volatile VECTOR(int16_t, 8) g_377;
    VECTOR(int16_t, 8) g_378;
    volatile VECTOR(int32_t, 8) g_394;
    int32_t g_402;
    int32_t g_411;
    int64_t *g_428;
    uint32_t g_442;
    uint32_t g_469;
    uint32_t g_477;
    VECTOR(int32_t, 2) g_481;
    volatile int64_t g_493;
    volatile VECTOR(int32_t, 16) g_510;
    VECTOR(int16_t, 2) g_514;
    VECTOR(uint16_t, 2) g_531;
    int32_t g_599;
    VECTOR(uint32_t, 8) g_627;
    volatile VECTOR(int8_t, 16) g_633;
    VECTOR(int32_t, 8) g_664;
    volatile VECTOR(int8_t, 8) g_677;
    VECTOR(uint32_t, 2) g_705;
    VECTOR(int32_t, 8) g_706;
    volatile VECTOR(int32_t, 2) g_756;
    VECTOR(uint16_t, 2) g_760;
    VECTOR(int32_t, 4) g_762;
    int32_t g_781;
    volatile VECTOR(int16_t, 4) g_788;
    volatile VECTOR(int16_t, 8) g_789;
    VECTOR(int16_t, 16) g_790;
    VECTOR(int16_t, 16) g_791;
    VECTOR(uint8_t, 4) g_804;
    VECTOR(uint8_t, 4) g_816;
    VECTOR(uint8_t, 2) g_819;
    uint16_t *g_870;
    uint16_t **g_869;
    VECTOR(int8_t, 8) g_874;
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
int16_t  func_1(struct S0 * p_880);
int32_t * func_2(uint32_t  p_3, int32_t * p_4, int64_t  p_5, struct S0 * p_880);
int16_t  func_9(int32_t * p_10, int16_t  p_11, uint32_t  p_12, uint32_t  p_13, struct S0 * p_880);
int32_t * func_14(int32_t * p_15, uint32_t  p_16, struct S0 * p_880);
int32_t * func_17(int64_t  p_18, int32_t  p_19, uint8_t  p_20, int32_t * p_21, int32_t * p_22, struct S0 * p_880);
int64_t  func_23(int64_t  p_24, uint32_t  p_25, int32_t * p_26, uint32_t  p_27, struct S0 * p_880);
int64_t  func_28(int32_t  p_29, uint64_t  p_30, int32_t * p_31, struct S0 * p_880);
uint16_t  func_32(int16_t  p_33, uint32_t  p_34, uint64_t  p_35, struct S0 * p_880);
int16_t  func_36(int16_t  p_37, int8_t  p_38, uint16_t  p_39, int32_t * p_40, struct S0 * p_880);
int8_t  func_43(uint32_t  p_44, uint8_t  p_45, uint32_t  p_46, struct S0 * p_880);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_880->g_6 p_880->g_64 p_880->g_67 p_880->g_42 p_880->g_63 p_880->g_79 p_880->g_101 p_880->g_105 p_880->g_106 p_880->g_102 p_880->g_111 p_880->g_114 p_880->g_119 p_880->g_121 p_880->g_136 p_880->g_107 p_880->g_142 p_880->g_158 p_880->g_162 p_880->g_195 p_880->g_169 p_880->g_251 p_880->g_275 p_880->g_267 p_880->g_311 p_880->g_216 p_880->g_366 p_880->g_369 p_880->g_371 p_880->g_372 p_880->g_377 p_880->g_378 p_880->g_308 p_880->g_314 p_880->g_315 p_880->g_316 p_880->g_317 p_880->g_394 p_880->g_411 p_880->g_442 p_880->g_402 p_880->g_469 p_880->g_481 p_880->g_477 p_880->g_510 p_880->g_514 p_880->g_531 p_880->g_599 p_880->g_627 p_880->g_633 p_880->g_781 p_880->g_788 p_880->g_789 p_880->g_790 p_880->g_791
 * writes: p_880->g_42 p_880->g_64 p_880->g_67 p_880->g_63 p_880->g_6 p_880->g_102 p_880->g_105 p_880->g_107 p_880->g_136 p_880->g_119 p_880->g_195 p_880->g_251 p_880->g_411 p_880->g_428 p_880->g_402 p_880->g_442 p_880->g_477 p_880->g_469
 */
int16_t  func_1(struct S0 * p_880)
{ /* block id: 4 */
    int16_t *l_41 = &p_880->g_42;
    int32_t l_49 = 1L;
    int32_t **l_50 = (void*)0;
    int32_t *l_52 = &l_49;
    int32_t **l_51 = &l_52;
    VECTOR(uint8_t, 8) l_53 = (VECTOR(uint8_t, 8))(252UL, (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 255UL), 255UL), 255UL, 252UL, 255UL);
    int64_t *l_103 = (void*)0;
    int64_t *l_104 = &p_880->g_105;
    int16_t l_108 = (-1L);
    int32_t *l_413 = &p_880->g_402;
    uint16_t l_780 = 8UL;
    VECTOR(int16_t, 16) l_787 = (VECTOR(int16_t, 16))((-2L), (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), 0L), 0L), 0L, (-2L), 0L, (VECTOR(int16_t, 2))((-2L), 0L), (VECTOR(int16_t, 2))((-2L), 0L), (-2L), 0L, (-2L), 0L);
    VECTOR(uint8_t, 2) l_817 = (VECTOR(uint8_t, 2))(0xF6L, 255UL);
    VECTOR(uint32_t, 4) l_833 = (VECTOR(uint32_t, 4))(0x7821640CL, (VECTOR(uint32_t, 2))(0x7821640CL, 7UL), 7UL);
    uint64_t l_859 = 18446744073709551613UL;
    int i;
    (*l_51) = func_2((p_880->g_6 , ((safe_rshift_func_int16_t_s_u(((*l_41) = (((VECTOR(int8_t, 2))((~((VECTOR(int8_t, 2))(6L, 0L))))).odd , func_9(func_14(func_17(func_23(((*l_104) &= func_28((func_32(func_36(((*l_41) = p_880->g_6), (p_880->g_6 > (func_43((p_880->g_6 >= (safe_mul_func_uint16_t_u_u(l_49, ((p_880->g_6 >= (((*l_51) = &p_880->g_6) == &p_880->g_6)) && ((((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 16))(l_53.s2144251532541243)).s085b))).w > (safe_mul_func_int8_t_s_s(((*l_52) ^ (*l_52)), (-6L)))) , 0x2A6DFE16L))))), p_880->g_6, p_880->g_6, p_880) == FAKE_DIVERGE(p_880->group_2_offset, get_group_id(2), 10))), l_49, &p_880->g_6, p_880), l_53.s2, p_880->g_6, p_880) > p_880->g_63), l_49, &p_880->g_6, p_880)), p_880->g_79.w, p_880->g_106[0][0][2], l_108, p_880), p_880->g_79.z, p_880->g_79.y, &p_880->g_107, &p_880->g_107, p_880), p_880->g_111.s2, p_880), p_880->g_142, p_880->g_79.w, p_880->g_111.s0, p_880))), 13)) >= p_880->g_169.s7)), l_413, p_880->g_372.s1, p_880);
    if (((l_780 <= p_880->g_216.x) < 1L))
    { /* block id: 257 */
        uint64_t *l_782 = &p_880->g_195;
        int32_t l_785 = 0x6A25815EL;
        VECTOR(int16_t, 16) l_786 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x4739L), 0x4739L), 0x4739L, 0L, 0x4739L, (VECTOR(int16_t, 2))(0L, 0x4739L), (VECTOR(int16_t, 2))(0L, 0x4739L), 0L, 0x4739L, 0L, 0x4739L);
        int i;
        (*l_51) = ((((*p_880->g_101) & (p_880->g_781 <= ((void*)0 == l_782))) , ((p_880->g_267.y && (&p_880->g_106[1][0][3] == &l_413)) , (+(safe_mul_func_int8_t_s_s((l_785 , (((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(l_786.s39cb)) | ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 2))((-10L), 1L)).xyyy, ((VECTOR(int16_t, 2))(l_787.sd0)).xyyy))) != ((VECTOR(int16_t, 4))((-5L), ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(p_880->g_788.wy)).xxxx && ((VECTOR(int16_t, 16))(p_880->g_789.s2477530634667464)).s4af6))).lo & ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(p_880->g_790.sd80df7a01a6c0883)).s94 ^ ((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))(p_880->g_791.s9e92e1ca61103ac6)).sf1, ((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 4))((*l_52), ((VECTOR(int16_t, 2))(0x26FDL)), 0x1FB4L)), ((VECTOR(int16_t, 4))((-2L)))))).xwyywwwx & ((VECTOR(int16_t, 8))(0L))))) && ((VECTOR(int16_t, 8))(0x492EL))))).s52 && ((VECTOR(int16_t, 2))(0x31B4L))))).xyxy, ((VECTOR(int16_t, 4))((-1L)))))).lo))).xyxxyxyy, ((VECTOR(int16_t, 8))(0x294BL))))).s16))), 9L, 0x0493L)).wzyxxzwyxyyyzyyw < ((VECTOR(int16_t, 16))((-1L)))))).scd))), (-1L)))))).yzxzyzzyywwywwyw >= ((VECTOR(int16_t, 16))(0x469EL))))).s0e8e))).x && FAKE_DIVERGE(p_880->local_2_offset, get_local_id(2), 10))), 0x21L))))) , (void*)0);
    }
    else
    { /* block id: 259 */
        VECTOR(uint8_t, 2) l_820 = (VECTOR(uint8_t, 2))(0xDBL, 0xCFL);
        VECTOR(uint8_t, 16) l_821 = (VECTOR(uint8_t, 16))(0x8DL, (VECTOR(uint8_t, 4))(0x8DL, (VECTOR(uint8_t, 2))(0x8DL, 3UL), 3UL), 3UL, 0x8DL, 3UL, (VECTOR(uint8_t, 2))(0x8DL, 3UL), (VECTOR(uint8_t, 2))(0x8DL, 3UL), 0x8DL, 3UL, 0x8DL, 3UL);
        uint32_t l_832 = 2UL;
        int64_t l_838 = 4L;
        int32_t l_842 = 0x784E517CL;
        uint16_t **l_871 = &p_880->g_870;
        int i;
        for (p_880->g_469 = (-1); (p_880->g_469 <= 47); p_880->g_469 = safe_add_func_int16_t_s_s(p_880->g_469, 1))
        { /* block id: 262 */
            int64_t l_813 = 0L;
            VECTOR(uint8_t, 4) l_818 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 3UL), 3UL);
            int64_t l_836 = 9L;
            int32_t l_843 = 1L;
            uint64_t *l_866 = &l_859;
            int8_t *l_875 = (void*)0;
            int8_t *l_876 = &p_880->g_63;
            int64_t **l_877 = &p_880->g_428;
            uint32_t *l_878 = (void*)0;
            uint32_t *l_879 = &p_880->g_442;
            int i;
            (1 + 1);
        }
    }
    return (*l_413);
}


/* ------------------------------------------ */
/* 
 * reads : p_880->g_42 p_880->g_158 p_880->g_169 p_880->g_378 p_880->g_442 p_880->g_314 p_880->g_315 p_880->g_402 p_880->g_311 p_880->g_411 p_880->g_377 p_880->g_469 p_880->g_101 p_880->g_102 p_880->g_267 p_880->g_114 p_880->g_481 p_880->g_275 p_880->g_477 p_880->g_510 p_880->g_514 p_880->g_531 p_880->g_111 p_880->g_195 p_880->g_107 p_880->g_119 p_880->g_599 p_880->g_369 p_880->g_121 p_880->g_627 p_880->g_633 p_880->g_63 p_880->g_136
 * writes: p_880->g_42 p_880->g_411 p_880->g_428 p_880->g_402 p_880->g_442 p_880->g_477 p_880->g_136 p_880->g_195 p_880->g_251 p_880->g_102 p_880->g_63
 */
int32_t * func_2(uint32_t  p_3, int32_t * p_4, int64_t  p_5, struct S0 * p_880)
{ /* block id: 122 */
    int8_t *l_422 = &p_880->g_63;
    int32_t l_438 = 0x143047AFL;
    VECTOR(uint32_t, 4) l_451 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0UL), 0UL);
    uint64_t l_465 = 0xCBE0EFB71D098B0BL;
    int16_t ***l_480[3][4][6] = {{{&p_880->g_316,&p_880->g_316,(void*)0,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,(void*)0,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,(void*)0,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,(void*)0,&p_880->g_316,&p_880->g_316,&p_880->g_316}},{{&p_880->g_316,&p_880->g_316,(void*)0,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,(void*)0,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,(void*)0,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,(void*)0,&p_880->g_316,&p_880->g_316,&p_880->g_316}},{{&p_880->g_316,&p_880->g_316,(void*)0,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,(void*)0,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,(void*)0,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,(void*)0,&p_880->g_316,&p_880->g_316,&p_880->g_316}}};
    int64_t *l_483 = &p_880->g_136;
    int64_t *l_484 = &p_880->g_136;
    int32_t l_486[3];
    int8_t l_490 = 1L;
    int16_t l_491 = 0x6DB3L;
    uint8_t l_494 = 5UL;
    int32_t l_507 = (-1L);
    VECTOR(int16_t, 2) l_515 = (VECTOR(int16_t, 2))(0x5373L, 0x0480L);
    uint8_t l_586[5][2] = {{251UL,251UL},{251UL,251UL},{251UL,251UL},{251UL,251UL},{251UL,251UL}};
    int32_t **l_592 = (void*)0;
    int32_t ***l_591 = &l_592;
    VECTOR(int32_t, 8) l_662 = (VECTOR(int32_t, 8))(0x2D7E2E8FL, (VECTOR(int32_t, 4))(0x2D7E2E8FL, (VECTOR(int32_t, 2))(0x2D7E2E8FL, 0x0268E5F6L), 0x0268E5F6L), 0x0268E5F6L, 0x2D7E2E8FL, 0x0268E5F6L);
    int32_t *l_698 = &l_486[0];
    VECTOR(int16_t, 16) l_707 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x362EL), 0x362EL), 0x362EL, 0L, 0x362EL, (VECTOR(int16_t, 2))(0L, 0x362EL), (VECTOR(int16_t, 2))(0L, 0x362EL), 0L, 0x362EL, 0L, 0x362EL);
    VECTOR(uint32_t, 8) l_727 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967295UL, 4294967295UL);
    VECTOR(int32_t, 16) l_728 = (VECTOR(int32_t, 16))(0x33E941BCL, (VECTOR(int32_t, 4))(0x33E941BCL, (VECTOR(int32_t, 2))(0x33E941BCL, (-6L)), (-6L)), (-6L), 0x33E941BCL, (-6L), (VECTOR(int32_t, 2))(0x33E941BCL, (-6L)), (VECTOR(int32_t, 2))(0x33E941BCL, (-6L)), 0x33E941BCL, (-6L), 0x33E941BCL, (-6L));
    VECTOR(int32_t, 2) l_729 = (VECTOR(int32_t, 2))(0L, 9L);
    VECTOR(int32_t, 4) l_755 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 2L), 2L);
    VECTOR(int32_t, 4) l_759 = (VECTOR(int32_t, 4))(0x4F921A7FL, (VECTOR(int32_t, 2))(0x4F921A7FL, 0x080A568EL), 0x080A568EL);
    uint32_t l_768 = 0xB611CBC5L;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_486[i] = 2L;
    for (p_880->g_42 = 8; (p_880->g_42 >= (-14)); p_880->g_42 = safe_sub_func_int8_t_s_s(p_880->g_42, 1))
    { /* block id: 125 */
        VECTOR(uint32_t, 8) l_423 = (VECTOR(uint32_t, 8))(0x2E583A18L, (VECTOR(uint32_t, 4))(0x2E583A18L, (VECTOR(uint32_t, 2))(0x2E583A18L, 0x59073BBCL), 0x59073BBCL), 0x59073BBCL, 0x2E583A18L, 0x59073BBCL);
        int8_t *l_424 = &p_880->g_63;
        int64_t *l_425[10] = {&p_880->g_105,&p_880->g_105,&p_880->g_105,&p_880->g_105,&p_880->g_105,&p_880->g_105,&p_880->g_105,&p_880->g_105,&p_880->g_105,&p_880->g_105};
        uint16_t l_430 = 0x6367L;
        int32_t l_437 = (-2L);
        uint32_t *l_476 = &p_880->g_477;
        VECTOR(int32_t, 4) l_482 = (VECTOR(int32_t, 4))(0x2A7ECC0DL, (VECTOR(int32_t, 2))(0x2A7ECC0DL, 0L), 0L);
        uint64_t l_485 = 0UL;
        int32_t *l_487 = &l_486[2];
        int32_t *l_488 = (void*)0;
        int32_t *l_489[10][6] = {{(void*)0,&l_437,(void*)0,(void*)0,&l_437,(void*)0},{(void*)0,&l_437,(void*)0,(void*)0,&l_437,(void*)0},{(void*)0,&l_437,(void*)0,(void*)0,&l_437,(void*)0},{(void*)0,&l_437,(void*)0,(void*)0,&l_437,(void*)0},{(void*)0,&l_437,(void*)0,(void*)0,&l_437,(void*)0},{(void*)0,&l_437,(void*)0,(void*)0,&l_437,(void*)0},{(void*)0,&l_437,(void*)0,(void*)0,&l_437,(void*)0},{(void*)0,&l_437,(void*)0,(void*)0,&l_437,(void*)0},{(void*)0,&l_437,(void*)0,(void*)0,&l_437,(void*)0},{(void*)0,&l_437,(void*)0,(void*)0,&l_437,(void*)0}};
        int32_t l_492[5] = {0x70A90779L,0x70A90779L,0x70A90779L,0x70A90779L,0x70A90779L};
        VECTOR(int16_t, 8) l_503 = (VECTOR(int16_t, 8))(0x1FA6L, (VECTOR(int16_t, 4))(0x1FA6L, (VECTOR(int16_t, 2))(0x1FA6L, 1L), 1L), 1L, 0x1FA6L, 1L);
        int16_t ***l_506 = (void*)0;
        VECTOR(int32_t, 4) l_512 = (VECTOR(int32_t, 4))(0x7C47E3F3L, (VECTOR(int32_t, 2))(0x7C47E3F3L, 0x706807F2L), 0x706807F2L);
        VECTOR(int16_t, 4) l_516 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x2829L), 0x2829L);
        VECTOR(uint16_t, 8) l_530 = (VECTOR(uint16_t, 8))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 0xF283L), 0xF283L), 0xF283L, 8UL, 0xF283L);
        VECTOR(int8_t, 8) l_635 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
        int i, j;
        for (p_880->g_411 = 0; (p_880->g_411 <= (-1)); --p_880->g_411)
        { /* block id: 128 */
            int64_t **l_426 = (void*)0;
            int64_t **l_427[4][8] = {{&l_425[2],&l_425[9],&l_425[2],&l_425[2],&l_425[9],&l_425[2],&l_425[2],&l_425[9]},{&l_425[2],&l_425[9],&l_425[2],&l_425[2],&l_425[9],&l_425[2],&l_425[2],&l_425[9]},{&l_425[2],&l_425[9],&l_425[2],&l_425[2],&l_425[9],&l_425[2],&l_425[2],&l_425[9]},{&l_425[2],&l_425[9],&l_425[2],&l_425[2],&l_425[9],&l_425[2],&l_425[2],&l_425[9]}};
            int32_t l_429[6][2] = {{0x0F7F6E0DL,0x0F7F6E0DL},{0x0F7F6E0DL,0x0F7F6E0DL},{0x0F7F6E0DL,0x0F7F6E0DL},{0x0F7F6E0DL,0x0F7F6E0DL},{0x0F7F6E0DL,0x0F7F6E0DL},{0x0F7F6E0DL,0x0F7F6E0DL}};
            uint32_t *l_441 = &p_880->g_442;
            VECTOR(int16_t, 16) l_456 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int16_t, 2))(1L, 0L), (VECTOR(int16_t, 2))(1L, 0L), 1L, 0L, 1L, 0L);
            uint8_t *l_466 = (void*)0;
            uint8_t *l_467 = (void*)0;
            uint8_t *l_468 = (void*)0;
            int i, j;
            (*p_4) = (((((safe_mod_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((l_422 == (((VECTOR(uint32_t, 8))(l_423.s40374243)).s0 , l_424)), (((p_880->g_428 = l_425[2]) != &p_880->g_105) <= (!p_5)))), l_429[0][0])) > l_430) ^ (l_437 = (safe_sub_func_uint64_t_u_u((safe_div_func_uint16_t_u_u((0x5FB8B525L < (GROUP_DIVERGE(1, 1) || (safe_add_func_uint64_t_u_u(18446744073709551615UL, p_880->g_158.s2)))), 0x2EF3L)), p_3)))) && p_880->g_169.s6) & p_880->g_378.s6);
            (*p_4) = ((l_438 || (safe_rshift_func_uint8_t_u_u(((+((((l_438 &= ((((1L ^ (((*l_441) &= 4294967293UL) <= ((*p_880->g_314) == (((-7L) < (safe_div_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(l_451.xxxzyzzz)).s1, l_429[0][0])) & (safe_sub_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 8))((-1L), ((VECTOR(int16_t, 4))(l_456.s2d4a)), (safe_div_func_int64_t_s_s(((safe_sub_func_int32_t_s_s((*p_4), (safe_add_func_int8_t_s_s((~(safe_add_func_int64_t_s_s(l_430, (p_880->g_311.s0 < l_437)))), 0x31L)))) <= 0xA00E1C9814B9E0B0L), p_3)), (-1L), 0x13FEL)).lo, ((VECTOR(int16_t, 4))((-1L)))))).even || ((VECTOR(int16_t, 2))(0x39AAL))))) && ((VECTOR(int16_t, 2))(5L))))), ((VECTOR(int16_t, 2))(0x2954L))))).xyyxxyyy && ((VECTOR(int16_t, 8))(1L))))), 0x75DAL, ((VECTOR(int16_t, 2))((-1L))), 0x761AL, ((VECTOR(int16_t, 2))(0x7EACL)), (-1L), 0x2A17L)).sd, p_880->g_411)), p_5))), l_465)), 0)), l_451.x))) , (void*)0)))) & p_5) || l_423.s2) , p_880->g_377.s6)) >= 1L) & p_880->g_469) , 0x5808L)) < p_5), l_465))) , (*p_880->g_101));
        }
        l_482.z = (safe_lshift_func_int8_t_s_u((safe_add_func_int64_t_s_s(((*l_483) = (safe_div_func_int16_t_s_s(((((*l_476) = (((VECTOR(int64_t, 4))(p_880->g_267.z, 0x22B96BF7DB85FB3FL, (-10L), 0x201FB2E03956E222L)).w & p_5)) , (safe_mul_func_uint8_t_u_u((p_880->g_114.s3 & ((((l_451.z , l_480[0][3][2]) == (void*)0) < (*p_4)) && ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(p_880->g_481.yyyyxxyy)).lo || ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 2))(l_482.wx)).xxxxyxxx))).hi))), (l_483 != (l_484 = &p_880->g_136)), 0x01AED125L, 0x4B9467F5L, 4L, l_485, l_485, 0x4F997932L, l_451.y, 0x4B9F848FL, (*p_4), 1L, 0x5208E71DL)).s48, ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))(0x78B20DC2L))))).xyyxxxyx))).s3)), l_482.y))) , 0x7E1FL), l_486[2]))), p_3)), l_423.s4));
        l_494--;
        if (((l_486[1] = (safe_div_func_uint16_t_u_u((safe_mod_func_int16_t_s_s(((l_491 == (l_438 = 0x38D0L)) < (p_880->g_275.y > (*l_487))), ((VECTOR(int16_t, 2))(l_503.s31)).hi)), (p_5 | (l_506 != ((l_507 = p_5) , l_506)))))) <= ((VECTOR(uint16_t, 8))((3UL == p_880->g_169.s4), ((VECTOR(uint16_t, 2))(0x169AL)), 0UL, 1UL, ((VECTOR(uint16_t, 2))(0x45A5L)), 1UL)).s6))
        { /* block id: 144 */
            int64_t l_511 = 0x047230BB037C95A2L;
            VECTOR(int16_t, 16) l_513 = (VECTOR(int16_t, 16))(0x1805L, (VECTOR(int16_t, 4))(0x1805L, (VECTOR(int16_t, 2))(0x1805L, 0x7AE0L), 0x7AE0L), 0x7AE0L, 0x1805L, 0x7AE0L, (VECTOR(int16_t, 2))(0x1805L, 0x7AE0L), (VECTOR(int16_t, 2))(0x1805L, 0x7AE0L), 0x1805L, 0x7AE0L, 0x1805L, 0x7AE0L);
            VECTOR(int16_t, 8) l_517 = (VECTOR(int16_t, 8))((-8L), (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0x496FL), 0x496FL), 0x496FL, (-8L), 0x496FL);
            int32_t l_537[2][6][6] = {{{(-4L),(-1L),0L,0x3F181572L,0L,(-1L)},{(-4L),(-1L),0L,0x3F181572L,0L,(-1L)},{(-4L),(-1L),0L,0x3F181572L,0L,(-1L)},{(-4L),(-1L),0L,0x3F181572L,0L,(-1L)},{(-4L),(-1L),0L,0x3F181572L,0L,(-1L)},{(-4L),(-1L),0L,0x3F181572L,0L,(-1L)}},{{(-4L),(-1L),0L,0x3F181572L,0L,(-1L)},{(-4L),(-1L),0L,0x3F181572L,0L,(-1L)},{(-4L),(-1L),0L,0x3F181572L,0L,(-1L)},{(-4L),(-1L),0L,0x3F181572L,0L,(-1L)},{(-4L),(-1L),0L,0x3F181572L,0L,(-1L)},{(-4L),(-1L),0L,0x3F181572L,0L,(-1L)}}};
            int32_t l_545 = 0x2D789868L;
            uint16_t *l_600 = (void*)0;
            uint16_t *l_601 = &p_880->g_251;
            uint32_t l_602 = 1UL;
            int16_t ***l_603[6];
            int64_t l_636[3];
            int64_t l_637[6] = {(-9L),1L,(-9L),(-9L),1L,(-9L)};
            uint8_t l_638 = 1UL;
            int i, j, k;
            for (i = 0; i < 6; i++)
                l_603[i] = &p_880->g_316;
            for (i = 0; i < 3; i++)
                l_636[i] = 0x4F0520E99AFF91E6L;
            for (p_880->g_477 = 17; (p_880->g_477 == 46); p_880->g_477 = safe_add_func_int32_t_s_s(p_880->g_477, 1))
            { /* block id: 147 */
                return p_4;
            }
            if (((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 4))(1L, (*l_487), 0L, 0x1434912BL)).xyyzzywxwzwxyyxw, ((VECTOR(int32_t, 2))(p_880->g_510.s36)).xyxyxyxxxxxyyxyy))).lo && ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))((+l_511), ((VECTOR(int32_t, 2))(l_512.wx)), 0L)).yyywzyxz, ((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(l_490, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_513.s2d1406aa)), ((VECTOR(int16_t, 4))(p_880->g_514.yyyx)), (-1L), p_5, (-6L), 0x37C0L)), ((VECTOR(int16_t, 8))(l_515.xxxxyyyx)).s0015400676633403, ((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 2))(l_516.yy)), ((VECTOR(int16_t, 8))(l_517.s40327073)).s27))).yxxx, ((VECTOR(int16_t, 4))((safe_mod_func_int64_t_s_s((((safe_mod_func_int16_t_s_s((safe_add_func_int64_t_s_s((((safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(255UL, 0x04L)).lo, 7)) & (safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))(l_530.s4675555575625267)) >> ((VECTOR(uint16_t, 16))(16))))) | ((VECTOR(uint16_t, 8))(p_880->g_531.yxyyyyyx)).s0107766621221456))).s6, p_880->g_481.y))) < p_880->g_481.x), ((void*)0 == &p_880->g_477))), (safe_mod_func_uint32_t_u_u((safe_unary_minus_func_int16_t_s(((((VECTOR(int16_t, 16))(p_5, ((VECTOR(int16_t, 8))(0x2F84L)), ((VECTOR(int16_t, 4))(0x2974L)), p_3, (-3L), 0x58F2L)).s7 , p_880->g_111.s7) , p_5))), GROUP_DIVERGE(1, 1))))) && 0L) && 0xCBC16917L), p_5)), ((VECTOR(int16_t, 2))((-10L))), 2L))))).zwzyxxzxyyxwwxxz))).sb416 && ((VECTOR(int16_t, 4))(3L))))).even || ((VECTOR(int16_t, 2))(0L))))), 0x7F11L)).wzzwzzyz && ((VECTOR(int16_t, 8))(0x15AAL))))).odd <= ((VECTOR(int16_t, 4))((-1L)))))).yzwwzwyz, ((VECTOR(uint16_t, 8))(0x5254L))))), ((VECTOR(int32_t, 8))(0x128F835DL))))).s20, ((VECTOR(int32_t, 2))(0x44739C0EL))))).yxxx == ((VECTOR(int32_t, 4))(1L))))).zxwywyzz))), ((VECTOR(int32_t, 8))(8L)), ((VECTOR(int32_t, 8))(1L))))).s4)
            { /* block id: 150 */
                int16_t l_539 = 0x7F47L;
                int32_t l_540 = 0L;
                int32_t l_547[8][3];
                uint8_t l_551 = 0x1EL;
                int i, j;
                for (i = 0; i < 8; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_547[i][j] = 0x09A4B8EAL;
                }
                for (p_880->g_195 = 17; (p_880->g_195 > 19); p_880->g_195 = safe_add_func_int64_t_s_s(p_880->g_195, 5))
                { /* block id: 153 */
                    int32_t l_538 = 3L;
                    int32_t l_541 = 1L;
                    int32_t l_542 = 0x13EF7AD2L;
                    int32_t l_543 = 0x1DC332FCL;
                    int8_t l_544[9][4] = {{3L,0x78L,0x78L,3L},{3L,0x78L,0x78L,3L},{3L,0x78L,0x78L,3L},{3L,0x78L,0x78L,3L},{3L,0x78L,0x78L,3L},{3L,0x78L,0x78L,3L},{3L,0x78L,0x78L,3L},{3L,0x78L,0x78L,3L},{3L,0x78L,0x78L,3L}};
                    int32_t l_546 = 1L;
                    int32_t l_548 = (-6L);
                    int32_t l_549 = (-10L);
                    int32_t l_550[5][10][5] = {{{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL}},{{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL}},{{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL}},{{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL}},{{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL},{(-1L),1L,0x5BF2360AL,0L,0x2BF640EBL}}};
                    int i, j, k;
                    --l_551;
                }
                return p_4;
            }
            else
            { /* block id: 157 */
                uint32_t l_554 = 4294967294UL;
                int16_t **l_584[4][10] = {{&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[2][5][1],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[2][5][1],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0]},{&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[2][5][1],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[2][5][1],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0]},{&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[2][5][1],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[2][5][1],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0]},{&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[2][5][1],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0],&p_880->g_317[2][5][1],&p_880->g_317[0][0][0],&p_880->g_317[0][0][0]}};
                int i, j;
                l_554++;
                for (l_491 = 8; (l_491 == (-13)); --l_491)
                { /* block id: 161 */
                    uint16_t *l_578 = &p_880->g_251;
                    uint16_t **l_577 = &l_578;
                    int32_t l_579 = 0x0779E448L;
                    int32_t l_582 = 0L;
                    uint8_t *l_583 = &l_494;
                    int16_t **l_585 = &p_880->g_317[2][3][1];
                    (*l_487) = (safe_mod_func_uint64_t_u_u(((p_3 , (safe_mod_func_int32_t_s_s(((((safe_mul_func_uint8_t_u_u((safe_mod_func_int64_t_s_s(((((safe_add_func_uint8_t_u_u((l_507 &= ((p_3 == ((0x1BD0CECA0F478F75L == (((((((p_5 > (safe_add_func_uint16_t_u_u((l_465 || (((safe_lshift_func_uint8_t_u_u(((l_579 = (safe_mod_func_uint8_t_u_u((((*l_577) = &l_430) == &p_880->g_251), (*l_487)))) || GROUP_DIVERGE(1, 1)), 3)) , ((*l_583) = (safe_lshift_func_uint16_t_u_s(((0x4B7159FEL <= l_582) != l_554), 5)))) != p_3)), l_582))) , l_584[2][3]) != l_585) ^ GROUP_DIVERGE(0, 1)) != l_465) , 0xC0FECD16L) , l_579)) > p_880->g_311.s7)) , (*l_487))), l_554)) , 253UL) || p_880->g_514.y) != p_880->g_107), p_880->g_102[7][9])), 5UL)) & l_515.y) && p_5) == (*p_4)), p_3))) , p_3), FAKE_DIVERGE(p_880->global_0_offset, get_global_id(0), 10)));
                    if ((*p_880->g_101))
                        break;
                }
                ++l_586[4][0];
            }
            if (((*l_487) = ((safe_sub_func_uint8_t_u_u(((p_880->g_119.y , l_591) != &l_592), ((((safe_mod_func_int64_t_s_s(((safe_rshift_func_int8_t_s_s((p_3 , ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(0x35L, (-1L), 0x17L, (-1L))), p_3, (0UL >= (safe_rshift_func_uint16_t_u_u(l_545, ((*l_601) = p_880->g_599)))), 9L, 0L)).s0), 7)) >= p_880->g_169.s1), p_880->g_369.z)) ^ p_880->g_121.s5) , 0UL) > l_602))) && 0x66B5L)))
            { /* block id: 173 */
                uint32_t *l_604[10] = {&l_602,&l_602,&p_880->g_442,&l_602,&l_602,&l_602,&l_602,&p_880->g_442,&l_602,&l_602};
                int32_t l_605[10] = {(-1L),1L,0x37FCABC4L,1L,(-1L),(-1L),1L,0x37FCABC4L,1L,(-1L)};
                int i;
                (*p_880->g_101) = (((l_603[2] == (*p_880->g_314)) && l_517.s2) | (((l_517.s5 , l_602) , (*p_4)) != (--p_880->g_442)));
                if ((*p_4))
                    continue;
                (*p_4) &= (-5L);
            }
            else
            { /* block id: 178 */
                uint64_t *l_608 = &l_485;
                VECTOR(uint32_t, 8) l_630 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xDD595583L), 0xDD595583L), 0xDD595583L, 0UL, 0xDD595583L);
                VECTOR(int8_t, 8) l_634 = (VECTOR(int8_t, 8))(0x08L, (VECTOR(int8_t, 4))(0x08L, (VECTOR(int8_t, 2))(0x08L, 0L), 0L), 0L, 0x08L, 0L);
                int i;
                if ((*p_4))
                    break;
                p_4 = func_14(func_14(p_4, (((--(*l_608)) || ((l_602 >= (safe_lshift_func_int8_t_s_u(((safe_mul_func_uint8_t_u_u(l_517.s7, ((l_537[0][2][4] = p_3) < (safe_div_func_uint32_t_u_u(l_513.se, (safe_lshift_func_uint16_t_u_s((p_880->g_169.s1 || ((VECTOR(uint64_t, 16))((+((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 4))(p_3, GROUP_DIVERGE(1, 1), 4294967292UL, 6UL)).odd, ((VECTOR(uint32_t, 16))(p_880->g_627.s7356056534734314)).s3a))), ((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(1UL, 0x99943B11L)).xxyyyxxyxyxyyyxy + ((VECTOR(uint32_t, 16))(max(((VECTOR(uint32_t, 16))(l_630.s2075016727135514)), ((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 2))(0x4737L, 0UL)).yxyyxxxyxyxyxxxx, ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(abs_diff(((VECTOR(uint16_t, 16))(upsample(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(p_880->g_633.sbf5cd3c0)).odd && ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(l_634.s4323503032070036)) < ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((-9L), 0L)), 0x07L, 0L)).xyxyzzwwwzxyyxxy))).sde40, ((VECTOR(int8_t, 8))(l_635.s44236535)).lo))) && ((VECTOR(int8_t, 16))(0L, p_880->g_63, ((*l_424) = 1L), ((VECTOR(int8_t, 8))(2L)), 9L, ((VECTOR(int8_t, 4))(1L)))).sb0c4)))))).yywxywzw && ((VECTOR(int8_t, 8))(7L))))).s27, ((VECTOR(int8_t, 2))(0x00L))))).yxxxxxyxyxyxxyyx, ((VECTOR(uint8_t, 16))(0xA8L))))), ((VECTOR(uint16_t, 16))(0x2C99L))))).hi + ((VECTOR(uint16_t, 8))(65535UL))))).s3144513473632404))))))))).sb5, ((VECTOR(uint32_t, 2))(4294967287UL))))), 3UL, 4294967291UL)), ((VECTOR(uint32_t, 2))(0UL)), 0x81EA55D0L, 4294967295UL)).s62 + ((VECTOR(uint32_t, 2))(0xBCFE0758L))))).xyyy * ((VECTOR(uint32_t, 4))(0xAF2544CEL))))).wywywzzyzyxwxwww, ((VECTOR(uint32_t, 16))(0x20D8C4F4L))))).s63b3 + ((VECTOR(uint64_t, 4))(0x1CE3E6188FC40339L))))).zyzwyxwx + ((VECTOR(uint64_t, 8))(0UL))))).s2332527270012677))).s2), 1))))))) <= p_880->g_102[2][7]), 2))) ^ p_5)) | p_5), p_880), l_634.s0, p_880);
                return p_4;
            }
            ++l_638;
        }
        else
        { /* block id: 187 */
            uint32_t l_643 = 0x02FA13EAL;
            for (l_490 = (-6); (l_490 != (-13)); l_490--)
            { /* block id: 190 */
                l_643--;
                (*l_487) = (safe_rshift_func_int8_t_s_u(0x73L, 3));
            }
        }
    }
    for (p_3 = (-25); (p_3 <= 27); p_3 = safe_add_func_uint8_t_u_u(p_3, 7))
    { /* block id: 198 */
        VECTOR(int32_t, 4) l_663 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L);
        int32_t l_689 = 0L;
        int16_t ***l_719[1][9][4] = {{{&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316},{&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316}}};
        VECTOR(int32_t, 16) l_757 = (VECTOR(int32_t, 16))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x55522ECEL), 0x55522ECEL), 0x55522ECEL, (-9L), 0x55522ECEL, (VECTOR(int32_t, 2))((-9L), 0x55522ECEL), (VECTOR(int32_t, 2))((-9L), 0x55522ECEL), (-9L), 0x55522ECEL, (-9L), 0x55522ECEL);
        uint16_t *l_767 = (void*)0;
        int i, j, k;
        for (p_880->g_136 = 15; (p_880->g_136 < (-22)); p_880->g_136 = safe_sub_func_uint64_t_u_u(p_880->g_136, 8))
        { /* block id: 201 */
            int8_t l_657 = 0x7AL;
            uint8_t *l_658 = &l_494;
            VECTOR(uint32_t, 16) l_665 = (VECTOR(uint32_t, 16))(0xD6AC069BL, (VECTOR(uint32_t, 4))(0xD6AC069BL, (VECTOR(uint32_t, 2))(0xD6AC069BL, 4294967287UL), 4294967287UL), 4294967287UL, 0xD6AC069BL, 4294967287UL, (VECTOR(uint32_t, 2))(0xD6AC069BL, 4294967287UL), (VECTOR(uint32_t, 2))(0xD6AC069BL, 4294967287UL), 0xD6AC069BL, 4294967287UL, 0xD6AC069BL, 4294967287UL);
            uint32_t l_666 = 6UL;
            VECTOR(int8_t, 16) l_678 = (VECTOR(int8_t, 16))(0x60L, (VECTOR(int8_t, 4))(0x60L, (VECTOR(int8_t, 2))(0x60L, (-1L)), (-1L)), (-1L), 0x60L, (-1L), (VECTOR(int8_t, 2))(0x60L, (-1L)), (VECTOR(int8_t, 2))(0x60L, (-1L)), 0x60L, (-1L), 0x60L, (-1L));
            int32_t l_690 = 0L;
            VECTOR(int32_t, 4) l_713 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x4469752CL), 0x4469752CL);
            int16_t ***l_716 = &p_880->g_316;
            int16_t ****l_717 = (void*)0;
            int16_t ****l_718 = (void*)0;
            int16_t ****l_720 = &l_480[0][3][2];
            VECTOR(int32_t, 16) l_730 = (VECTOR(int32_t, 16))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 9L), 9L), 9L, (-4L), 9L, (VECTOR(int32_t, 2))((-4L), 9L), (VECTOR(int32_t, 2))((-4L), 9L), (-4L), 9L, (-4L), 9L);
            VECTOR(int32_t, 4) l_758 = (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, (-6L)), (-6L));
            int i;
            (1 + 1);
        }
        if ((*p_4))
            break;
    }
    return p_4;
}


/* ------------------------------------------ */
/* 
 * reads : p_880->g_158 p_880->g_142 p_880->g_162 p_880->g_6 p_880->g_42 p_880->g_107 p_880->g_195 p_880->g_67 p_880->g_119 p_880->g_121 p_880->g_169 p_880->g_63 p_880->g_105 p_880->g_136 p_880->g_251 p_880->g_79 p_880->g_102 p_880->g_275 p_880->g_267 p_880->g_311 p_880->g_216 p_880->g_366 p_880->g_369 p_880->g_371 p_880->g_372 p_880->g_377 p_880->g_378 p_880->g_308 p_880->g_314 p_880->g_315 p_880->g_316 p_880->g_317 p_880->g_394 p_880->g_411
 * writes: p_880->g_119 p_880->g_42 p_880->g_107 p_880->g_195 p_880->g_251 p_880->g_6 p_880->g_63 p_880->g_411
 */
int16_t  func_9(int32_t * p_10, int16_t  p_11, uint32_t  p_12, uint32_t  p_13, struct S0 * p_880)
{ /* block id: 38 */
    VECTOR(int16_t, 8) l_147 = (VECTOR(int16_t, 8))(7L, (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, (-3L)), (-3L)), (-3L), 7L, (-3L));
    VECTOR(int16_t, 8) l_148 = (VECTOR(int16_t, 8))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 0x06F8L), 0x06F8L), 0x06F8L, (-5L), 0x06F8L);
    VECTOR(int16_t, 16) l_149 = (VECTOR(int16_t, 16))(0x4113L, (VECTOR(int16_t, 4))(0x4113L, (VECTOR(int16_t, 2))(0x4113L, (-1L)), (-1L)), (-1L), 0x4113L, (-1L), (VECTOR(int16_t, 2))(0x4113L, (-1L)), (VECTOR(int16_t, 2))(0x4113L, (-1L)), 0x4113L, (-1L), 0x4113L, (-1L));
    int64_t *l_159[8][10] = {{&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136},{&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136},{&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136},{&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136},{&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136},{&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136},{&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136},{&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136,&p_880->g_136}};
    int16_t *l_164 = &p_880->g_42;
    VECTOR(int32_t, 2) l_168 = (VECTOR(int32_t, 2))(0x71BACBC8L, (-1L));
    int32_t l_199 = 0x0D2A354EL;
    uint8_t l_208 = 0x03L;
    int32_t *l_261[5];
    int16_t **l_278 = (void*)0;
    int16_t ***l_277 = &l_278;
    int16_t ****l_276 = &l_277;
    int32_t l_389 = 9L;
    int8_t l_412 = 0x2DL;
    int i, j;
    for (i = 0; i < 5; i++)
        l_261[i] = &p_880->g_107;
    (*p_10) = (safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint8_t_u_s(((p_13 < ((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 8))(((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))((-8L), ((VECTOR(int16_t, 4))(l_147.s5521)), ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 8))(0x0DCFL, ((VECTOR(int16_t, 2))(l_148.s74)), ((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 2))(l_149.sd7)), (int16_t)((*l_164) ^= ((p_880->g_119.w = ((safe_mod_func_int64_t_s_s((safe_lshift_func_int16_t_s_s((safe_lshift_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((+0x3FL), ((VECTOR(uint8_t, 2))(p_880->g_158.s05)).hi)), l_147.s3)), 10)), l_149.s6)) | ((l_147.s1 <= p_880->g_142) & (-1L)))) != (safe_add_func_uint64_t_u_u((p_880->g_162 == &p_880->g_163), p_880->g_6))))))).xyyy, ((VECTOR(int16_t, 4))(1L)), ((VECTOR(int16_t, 4))((-6L)))))), (-1L))), ((VECTOR(int16_t, 8))(2L))))) && ((VECTOR(int16_t, 8))((-1L)))))).s35 && ((VECTOR(int16_t, 2))(9L))))) && ((VECTOR(int16_t, 2))((-1L)))))), (-7L))) && ((VECTOR(int16_t, 8))(0x63E4L))))), ((VECTOR(int16_t, 8))(0x6896L))))).s3744316444720521, ((VECTOR(int16_t, 16))(1L))))).s28b2 | ((VECTOR(int16_t, 4))(1L))))).z != l_149.s3) != l_149.s6), p_11, 0x2A5AL, p_12, p_13, ((VECTOR(int16_t, 2))((-6L))), 0x2445L)).hi, ((VECTOR(int16_t, 4))(9L)), ((VECTOR(int16_t, 4))((-1L)))))).w) >= p_880->g_107), p_11)), 5));
    for (p_12 = 0; (p_12 <= 50); ++p_12)
    { /* block id: 44 */
        VECTOR(int32_t, 2) l_167 = (VECTOR(int32_t, 2))(0x356A995AL, 0x79373D10L);
        int64_t l_172 = (-2L);
        int16_t ***l_180 = (void*)0;
        int16_t ****l_179 = &l_180;
        uint64_t *l_198 = (void*)0;
        uint32_t l_224 = 0xEF966E79L;
        VECTOR(int16_t, 2) l_310 = (VECTOR(int16_t, 2))(1L, 0x4294L);
        VECTOR(int16_t, 2) l_312 = (VECTOR(int16_t, 2))(0x20B8L, 1L);
        VECTOR(int64_t, 2) l_356 = (VECTOR(int64_t, 2))(0x6EF42609AA7195AEL, 0L);
        VECTOR(int32_t, 8) l_359 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x6710F184L), 0x6710F184L), 0x6710F184L, 0L, 0x6710F184L);
        VECTOR(int16_t, 2) l_376 = (VECTOR(int16_t, 2))(0x7EC2L, 1L);
        VECTOR(int16_t, 4) l_382 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 1L), 1L);
        VECTOR(int64_t, 4) l_388 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 9L), 9L);
        int i;
        if ((*p_10))
            break;
        if ((((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(l_167.xyyy)).lo, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(l_168.yyyx)).hi && ((VECTOR(int32_t, 2))((-6L), 7L))))), ((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 4))(p_880->g_169.s6016)), (int32_t)(safe_sub_func_int32_t_s_s((l_172 < (safe_add_func_int16_t_s_s((&p_10 != (((p_880->g_121.s0 , &p_880->g_162) != (((safe_lshift_func_uint8_t_u_u(4UL, 0)) > (safe_add_func_uint64_t_u_u(0x022C0690983454C0L, p_11))) , ((*l_179) = (void*)0))) , &p_10)), p_11))), l_167.y)), (int32_t)(-1L)))).xyyzxyyy, ((VECTOR(int32_t, 8))(0x6A509FD6L))))).s35))).odd & p_12))
        { /* block id: 47 */
            int64_t l_185 = 0x7E5F2ED823630FB1L;
            uint64_t *l_194 = &p_880->g_195;
            (*p_10) = (safe_add_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(65530UL, l_147.s1)), (((*l_164) = (l_185 , (-1L))) > (((p_880->g_142 , l_159[6][6]) == (void*)0) <= (safe_sub_func_uint8_t_u_u((+((+(safe_div_func_int8_t_s_s(((safe_add_func_uint64_t_u_u(((safe_mul_func_int16_t_s_s((p_11 = ((--(*l_194)) && (((((((p_11 , l_198) == (void*)0) , 0x0311FF2BF14A9805L) , l_148.s5) < l_148.s0) <= l_167.y) < l_199))), p_12)) , p_880->g_67), p_12)) != p_12), 0x9FL))) >= p_880->g_119.w)), p_880->g_6))))));
        }
        else
        { /* block id: 52 */
            int32_t **l_210 = &p_880->g_106[1][0][4];
            int32_t ***l_209 = &l_210;
            uint8_t *l_219 = (void*)0;
            uint8_t *l_220 = &l_208;
            int64_t *l_221 = &p_880->g_105;
            int8_t *l_222[7] = {(void*)0,&p_880->g_63,(void*)0,(void*)0,&p_880->g_63,(void*)0,(void*)0};
            int32_t *l_223[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            VECTOR(int32_t, 2) l_266 = (VECTOR(int32_t, 2))(0x01EE0013L, 1L);
            VECTOR(int64_t, 2) l_272 = (VECTOR(int64_t, 2))((-8L), 0x0E55E12D604B98D3L);
            VECTOR(int64_t, 2) l_273 = (VECTOR(int64_t, 2))(0x29FBC2355943DF4CL, 0x25F09CD1F47DED62L);
            int16_t l_299 = 0x0900L;
            VECTOR(int16_t, 16) l_319 = (VECTOR(int16_t, 16))(0x4821L, (VECTOR(int16_t, 4))(0x4821L, (VECTOR(int16_t, 2))(0x4821L, 1L), 1L), 1L, 0x4821L, 1L, (VECTOR(int16_t, 2))(0x4821L, 1L), (VECTOR(int16_t, 2))(0x4821L, 1L), 0x4821L, 1L, 0x4821L, 1L);
            VECTOR(int16_t, 16) l_320 = (VECTOR(int16_t, 16))(0x0F38L, (VECTOR(int16_t, 4))(0x0F38L, (VECTOR(int16_t, 2))(0x0F38L, 0x23C4L), 0x23C4L), 0x23C4L, 0x0F38L, 0x23C4L, (VECTOR(int16_t, 2))(0x0F38L, 0x23C4L), (VECTOR(int16_t, 2))(0x0F38L, 0x23C4L), 0x0F38L, 0x23C4L, 0x0F38L, 0x23C4L);
            int16_t l_327 = 0x119DL;
            VECTOR(int8_t, 4) l_374 = (VECTOR(int8_t, 4))(0x23L, (VECTOR(int8_t, 2))(0x23L, 0x23L), 0x23L);
            VECTOR(int16_t, 2) l_381 = (VECTOR(int16_t, 2))(0x749FL, 0L);
            int i;
            if (l_147.s7)
                break;
            if ((l_224 |= (safe_mul_func_int16_t_s_s((FAKE_DIVERGE(p_880->group_2_offset, get_group_id(2), 10) > (((((((((safe_add_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s(((&p_880->g_162 == (void*)0) >= (((safe_rshift_func_uint16_t_u_u(((p_880->g_121.s4 || p_880->g_169.s3) != (l_208 , (l_168.x = ((((((*l_209) = &p_10) == (((safe_unary_minus_func_int64_t_s(((VECTOR(int64_t, 8))((((*l_220) = ((safe_add_func_int32_t_s_s((safe_add_func_int8_t_s_s((((VECTOR(int64_t, 2))(p_880->g_216.yy)).hi != ((!((safe_add_func_int32_t_s_s(l_148.s5, (p_880->g_102[6][6] || 0x5FF26978387B0F2DL))) , p_880->g_107)) ^ p_11)), l_167.x)), (*p_10))) ^ p_13)) == p_12), p_880->g_158.s3, l_172, ((VECTOR(int64_t, 4))(0x3AB6FC985827474BL)), 1L)).s5)) > l_172) , (void*)0)) ^ p_13) , l_221) == l_198)))), 7)) != 1L) ^ 0UL)), 3)), l_148.s0)) < p_13) , 0L) < p_880->g_63) <= FAKE_DIVERGE(p_880->local_1_offset, get_local_id(1), 10)) , p_11) | GROUP_DIVERGE(1, 1)) < (-3L)) != p_880->g_121.s7)), l_149.se))))
            { /* block id: 58 */
                for (p_880->g_42 = 0; (p_880->g_42 >= 12); ++p_880->g_42)
                { /* block id: 61 */
                    uint16_t l_227 = 1UL;
                    (**l_210) |= (p_880->g_105 & 0xB6F88E99261BDDF0L);
                    l_227++;
                }
            }
            else
            { /* block id: 65 */
                uint32_t l_230 = 0xCD13B23EL;
                uint8_t *l_239[4][7][2] = {{{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208}},{{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208}},{{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208}},{{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208},{(void*)0,&l_208}}};
                VECTOR(int16_t, 2) l_307 = (VECTOR(int16_t, 2))(0x2D08L, (-1L));
                VECTOR(int16_t, 16) l_313 = (VECTOR(int16_t, 16))(0x5452L, (VECTOR(int16_t, 4))(0x5452L, (VECTOR(int16_t, 2))(0x5452L, 0x2E2BL), 0x2E2BL), 0x2E2BL, 0x5452L, 0x2E2BL, (VECTOR(int16_t, 2))(0x5452L, 0x2E2BL), (VECTOR(int16_t, 2))(0x5452L, 0x2E2BL), 0x5452L, 0x2E2BL, 0x5452L, 0x2E2BL);
                int16_t **l_342 = &p_880->g_317[2][7][2];
                int32_t l_346 = (-9L);
                int32_t l_347 = 0x0F7327E5L;
                int32_t l_348 = 0L;
                uint8_t l_350 = 0UL;
                VECTOR(int16_t, 8) l_370 = (VECTOR(int16_t, 8))((-3L), (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 0x4569L), 0x4569L), 0x4569L, (-3L), 0x4569L);
                VECTOR(int8_t, 2) l_373 = (VECTOR(int8_t, 2))(0x08L, 1L);
                VECTOR(uint8_t, 4) l_375 = (VECTOR(uint8_t, 4))(0x60L, (VECTOR(uint8_t, 2))(0x60L, 0xD1L), 0xD1L);
                VECTOR(int16_t, 4) l_380 = (VECTOR(int16_t, 4))(0x41F4L, (VECTOR(int16_t, 2))(0x41F4L, (-3L)), (-3L));
                VECTOR(int64_t, 8) l_387 = (VECTOR(int64_t, 8))(0x559B424B032A23CFL, (VECTOR(int64_t, 4))(0x559B424B032A23CFL, (VECTOR(int64_t, 2))(0x559B424B032A23CFL, 1L), 1L), 1L, 0x559B424B032A23CFL, 1L);
                uint8_t l_390[8][8] = {{255UL,255UL,0UL,6UL,0UL,6UL,0UL,255UL},{255UL,255UL,0UL,6UL,0UL,6UL,0UL,255UL},{255UL,255UL,0UL,6UL,0UL,6UL,0UL,255UL},{255UL,255UL,0UL,6UL,0UL,6UL,0UL,255UL},{255UL,255UL,0UL,6UL,0UL,6UL,0UL,255UL},{255UL,255UL,0UL,6UL,0UL,6UL,0UL,255UL},{255UL,255UL,0UL,6UL,0UL,6UL,0UL,255UL},{255UL,255UL,0UL,6UL,0UL,6UL,0UL,255UL}};
                int32_t l_395 = 0x498C40F0L;
                int32_t l_399 = (-10L);
                int32_t l_401 = 1L;
                int32_t l_405 = 0L;
                int32_t l_407 = (-8L);
                uint16_t l_408[10][5] = {{1UL,0xAFFCL,1UL,1UL,0xAFFCL},{1UL,0xAFFCL,1UL,1UL,0xAFFCL},{1UL,0xAFFCL,1UL,1UL,0xAFFCL},{1UL,0xAFFCL,1UL,1UL,0xAFFCL},{1UL,0xAFFCL,1UL,1UL,0xAFFCL},{1UL,0xAFFCL,1UL,1UL,0xAFFCL},{1UL,0xAFFCL,1UL,1UL,0xAFFCL},{1UL,0xAFFCL,1UL,1UL,0xAFFCL},{1UL,0xAFFCL,1UL,1UL,0xAFFCL},{1UL,0xAFFCL,1UL,1UL,0xAFFCL}};
                int i, j, k;
                l_230++;
                for (p_11 = (-28); (p_11 > 26); p_11++)
                { /* block id: 69 */
                    uint64_t *l_246 = &p_880->g_195;
                    int32_t l_249 = 0x1C0902CAL;
                    uint16_t *l_250 = &p_880->g_251;
                    int32_t *l_301[9][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                    VECTOR(int16_t, 2) l_309 = (VECTOR(int16_t, 2))(0x1833L, (-1L));
                    uint16_t l_325 = 0x69E3L;
                    VECTOR(int16_t, 16) l_326 = (VECTOR(int16_t, 16))(2L, (VECTOR(int16_t, 4))(2L, (VECTOR(int16_t, 2))(2L, 0L), 0L), 0L, 2L, 0L, (VECTOR(int16_t, 2))(2L, 0L), (VECTOR(int16_t, 2))(2L, 0L), 2L, 0L, 2L, 0L);
                    int16_t **l_344 = &p_880->g_317[2][1][3];
                    VECTOR(int64_t, 2) l_355 = (VECTOR(int64_t, 2))(0L, 0x17F66DE9E7F7860AL);
                    VECTOR(int16_t, 8) l_379 = (VECTOR(int16_t, 8))(0x7262L, (VECTOR(int16_t, 4))(0x7262L, (VECTOR(int16_t, 2))(0x7262L, 0x4A6BL), 0x4A6BL), 0x4A6BL, 0x7262L, 0x4A6BL);
                    int i, j;
                    (*p_10) &= (((safe_div_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s(p_12, 5)), (~((l_239[1][5][1] == (void*)0) >= p_11)))) <= ((((safe_mul_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s(p_12, 2)), l_199)) > 65535UL) , (safe_lshift_func_int8_t_s_s(((l_167.y = p_880->g_136) == (((*l_246) = ((p_11 <= l_224) >= 1L)) ^ p_880->g_121.s7)), 6))) ^ GROUP_DIVERGE(2, 1))) != p_880->g_121.s4);
                    p_10 = func_17(p_880->g_121.s0, (((safe_div_func_uint8_t_u_u(((l_249 = 0L) ^ (0L & (((((((*l_250) ^= 0xA2F7L) <= (safe_unary_minus_func_int64_t_s(((safe_lshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s(((p_11 && 0x273AL) && 0x3AL), (((p_11 > (safe_div_func_int32_t_s_s((+(safe_lshift_func_int16_t_s_s(p_12, 8))), 4294967295UL))) | l_230) != (-1L)))) >= (***l_209)), l_199)) ^ p_12)))) , p_11) | p_12) < 0x483D9F47L) > 0x07B1L))), l_148.s1)) , l_230) , p_12), p_12, l_261[2], p_10, p_880);
                    if (((p_880->g_79.z ^ p_13) | (((*l_164) = p_880->g_102[3][2]) >= (safe_div_func_uint16_t_u_u(((safe_sub_func_int16_t_s_s(((((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))((((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 8))(l_266.xyyyxyxx)), ((VECTOR(uint32_t, 4))(p_880->g_267.zxyx)).wwzzxxwx))).s0 >= ((((void*)0 == &p_880->g_63) >= (safe_lshift_func_int8_t_s_u((safe_mod_func_int64_t_s_s(((((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),VECTOR(int64_t, 8),((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 2))(l_272.xy)).yxxy, ((VECTOR(int64_t, 8))(l_273.xyyxyyyx)).even))).zwywwyyy && ((VECTOR(int64_t, 2))(p_880->g_274.wy)).xxxxxxxx))), ((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(p_880->g_275.wz)), 0x5EC152A44410B750L, (-1L))).xwxxyzzw, ((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),VECTOR(int64_t, 4),((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),VECTOR(int64_t, 16),((VECTOR(int64_t, 16))(0x649D59A091B0A25AL, (-10L), 9L, ((((p_880->g_63 = 0L) , (void*)0) == l_276) >= (((*p_10) |= ((safe_sub_func_int32_t_s_s(((((VECTOR(uint16_t, 16))(0UL, ((VECTOR(uint16_t, 2))(0xBDDBL, 0xC895L)), 0UL, ((*l_250) = ((FAKE_DIVERGE(p_880->global_1_offset, get_global_id(1), 10) , p_11) > p_880->g_6)), 0xA83EL, ((VECTOR(uint16_t, 4))(65535UL)), ((VECTOR(uint16_t, 2))(0xF9E6L)), ((VECTOR(uint16_t, 4))(65526UL)))).s1 >= p_11) | (-1L)), 0x49CD46B3L)) ^ p_13)) && p_12)), p_880->g_274.z, p_13, p_11, 0x4C9535A7AD6E3605L, (-8L), ((VECTOR(int64_t, 2))(0x172E4058C229EA8CL)), ((VECTOR(int64_t, 4))((-7L))), 0x57C8F7EC8016601FL)), ((VECTOR(int64_t, 16))(0L)), ((VECTOR(int64_t, 16))(2L))))).odd ^ ((VECTOR(int64_t, 8))(0x327C73EFF6A7A4DCL))))).lo, ((VECTOR(int64_t, 4))(0x0128F5E786042C3AL)), ((VECTOR(int64_t, 4))((-7L)))))) && ((VECTOR(int64_t, 4))(0x0B460CC3469EF660L))))).yxzzwxwx & ((VECTOR(int64_t, 8))(0x40BFA01428A198A8L))))), ((VECTOR(int64_t, 8))(4L)))))))), ((VECTOR(int64_t, 8))(0x16D176C35AE16F72L))))), ((VECTOR(int64_t, 8))(1L)), ((VECTOR(int64_t, 8))(0x7D7233BBE830D51EL))))).s3 || 8L) <= p_11), GROUP_DIVERGE(1, 1))), 5))) ^ l_249)), 0x33L, ((VECTOR(int8_t, 8))(8L)), p_880->g_216.x, ((VECTOR(int8_t, 2))((-4L))), p_880->g_195, 0L, 0x70L)).hi >= ((VECTOR(int8_t, 8))(0x6BL))))).s2760633215420741, ((VECTOR(int8_t, 16))(0x21L))))).s5 < 0x67L) <= 18446744073709551611UL), FAKE_DIVERGE(p_880->global_2_offset, get_global_id(2), 10))) && p_880->g_275.y), GROUP_DIVERGE(0, 1))))))
                    { /* block id: 80 */
                        int32_t l_289 = (-1L);
                        uint8_t *l_298 = (void*)0;
                        VECTOR(int32_t, 16) l_300 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x312B20DAL), 0x312B20DAL), 0x312B20DAL, (-1L), 0x312B20DAL, (VECTOR(int32_t, 2))((-1L), 0x312B20DAL), (VECTOR(int32_t, 2))((-1L), 0x312B20DAL), (-1L), 0x312B20DAL, (-1L), 0x312B20DAL);
                        int i;
                        (**l_210) &= 0x3DFD0F81L;
                        l_261[1] = ((**l_209) = func_14(func_14(func_14(((**l_209) = func_14((*l_210), (safe_mul_func_uint8_t_u_u((l_289 &= (safe_lshift_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(((+0x07L) | ((*l_220)++)), l_230)), 4))), (safe_div_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s(l_230, 7)), ((safe_sub_func_uint32_t_u_u((safe_rshift_func_int16_t_s_s(((l_298 == (void*)0) , ((!0x084BL) || 0x6616L)), 5)), l_172)) , p_880->g_267.y))))), p_880)), l_167.x, p_880), l_299, p_880), p_880->g_63, p_880));
                        (*p_10) = (l_300.sb ^= (*p_10));
                        l_301[8][7] = ((**l_209) = l_261[2]);
                    }
                    else
                    { /* block id: 91 */
                        VECTOR(int16_t, 16) l_306 = (VECTOR(int16_t, 16))(0x0534L, (VECTOR(int16_t, 4))(0x0534L, (VECTOR(int16_t, 2))(0x0534L, (-1L)), (-1L)), (-1L), 0x0534L, (-1L), (VECTOR(int16_t, 2))(0x0534L, (-1L)), (VECTOR(int16_t, 2))(0x0534L, (-1L)), 0x0534L, (-1L), 0x0534L, (-1L));
                        int16_t **l_338 = &p_880->g_317[1][4][4];
                        int16_t ***l_343 = &l_342;
                        int32_t l_345 = 0x6C013B93L;
                        int32_t l_349 = 1L;
                        int i;
                        (*p_10) ^= (safe_div_func_uint32_t_u_u((+(safe_add_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), (((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(l_306.s68df)).odd == ((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 4))(l_307.yyxx)).xwyzxyyx, ((VECTOR(int16_t, 16))(p_880->g_308.sb2511a3d457ba7ed)).lo))).s37))).yyyy && ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 2))(0x4563L, (-1L))).yyxx, ((VECTOR(int16_t, 16))(l_309.yxyyyyxyxyyxyxyy)).s026e, ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 2))(l_310.xy)), ((VECTOR(int16_t, 2))(p_880->g_311.s03)), ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(l_312.yyxyxxyy)) ^ ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),int16_t,((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 2))(0L, 0x1B97L)), ((VECTOR(int16_t, 2))(l_313.s77)), ((VECTOR(int16_t, 8))(7L, ((void*)0 == p_880->g_314), ((VECTOR(int16_t, 4))(p_880->g_318.s7d26)), (-1L), (-9L))).s60))).yyxx, (int16_t)l_312.y, (int16_t)((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),int16_t,((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(0x46D7L, 0L)) && ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(l_319.sa40dda1b)).s73 >= ((VECTOR(int16_t, 2))(l_320.s18)))))))), (int16_t)0L, (int16_t)((safe_mod_func_int16_t_s_s(p_13, p_13)) ^ (!(safe_mul_func_int8_t_s_s(l_325, (p_880->g_158.s8 = 0UL)))))))).lo))).xxyywxwxwzzxxwyz && ((VECTOR(int16_t, 16))(l_326.sac4674ff210e48dc))))) && ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))((~((*l_164) = (l_310.x , l_327))), (-1L), (-5L), ((VECTOR(int16_t, 4))(0L)), ((VECTOR(int16_t, 2))(0x5702L)), ((VECTOR(int16_t, 4))(1L)), p_12, 1L, 0x3513L)).s5a, ((VECTOR(int16_t, 2))(1L))))).yyxyyxxxyyyyyxyy))).lo))).s56))).xxyy))).yxyzzwxx && ((VECTOR(int16_t, 8))(0x56EEL))))), 0x64F3L, 0x6BC6L, 0x3AD2L, ((VECTOR(int16_t, 4))(3L)), 0x1727L)).s65e5))).xwyyxzyy, ((VECTOR(int16_t, 8))((-3L)))))).s5 , p_12)))), p_880->g_311.s4));
                        (*p_10) = (safe_add_func_int8_t_s_s(l_172, (safe_add_func_uint16_t_u_u(0xF49DL, 65535UL))));
                        l_301[1][7] = func_14(p_10, (safe_lshift_func_uint16_t_u_u(p_11, (p_12 , (65535UL | (((*l_250) |= ((safe_div_func_int8_t_s_s((safe_mod_func_int8_t_s_s((((l_345 &= (((p_13 <= (((l_167.y = ((VECTOR(uint32_t, 16))((((*l_277) = l_338) != ((*l_343) = ((safe_mul_func_uint16_t_u_u((p_880->g_341 == p_880->g_341), p_880->g_114.s3)) , l_342))), ((VECTOR(uint32_t, 4))(0x0F61D7CBL)), 0xD35347A2L, ((VECTOR(uint32_t, 4))(0xAFDC0B5CL)), p_11, ((VECTOR(uint32_t, 2))(4294967289UL)), ((VECTOR(uint32_t, 2))(0x495CEEA3L)), 0x0B30EB8DL)).s7) , l_344) != (void*)0)) >= 0xBF04L) == (*p_10))) | 246UL) , p_880->g_311.s4), p_880->g_169.s0)), (-1L))) , 0x111FL)) | p_12))))), p_880);
                        ++l_350;
                    }
                    if (((p_880->g_63 = (((VECTOR(int32_t, 4))(0x1F09C70BL, 9L, (-2L), 0x5DCC8518L)).w > p_880->g_216.y)) , (((VECTOR(uint8_t, 16))((safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(l_355.yxyxxxyx)).even < ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(l_356.xyxxxyyy)) || ((VECTOR(int64_t, 4))(((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 8))(l_359.s02262251)).s3, (safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 8))(p_880->g_366.wzyyzxyx)).s55, ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(int16_t, 2))(p_880->g_369.xx)).xxyxxyyx, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(0x096AL, ((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 4))(l_370.s1225)).wyyyzzwwzwyzxxwy, ((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),VECTOR(int16_t, 2),((VECTOR(int16_t, 4))(p_880->g_371.yyyy)).odd, ((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(p_880->g_372.s2712455002152452)).s2508 && ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((-5L), 1L)), 0x7EL, (-5L)))))), 0x67L, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(0x79L, 0x75L)).yyyx && ((VECTOR(int8_t, 16))(0x5EL, ((VECTOR(int8_t, 8))(l_373.xxxyxxxx)), 0x14L, 0x7CL, 0x07L, (-1L), (l_346 = (-1L)), 0x69L, (-1L))).sa0c7))), 0L, 0x44L, ((*p_10) , 0x1EL), ((VECTOR(int8_t, 16))(l_374.xwyxxwzwzwxzxyzz)).sd, (-10L), 0x35L, (-6L))).s402b, ((VECTOR(uint8_t, 8))(l_375.ywxxwyyx)).odd))).wxzzxwyx != ((VECTOR(int16_t, 4))(l_376.xyyx)).xwyxwwyw))).s42, ((VECTOR(int16_t, 2))(p_880->g_377.s70))))) && ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(p_880->g_378.s1444)).yxyzwxyyywxywwzw == ((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),VECTOR(int16_t, 8),((VECTOR(int16_t, 2))(0x1A04L, 0x780DL)).xyyxxxyy, ((VECTOR(int16_t, 8))(l_379.s66767431)), ((VECTOR(int16_t, 8))((~((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(l_380.wxxw)).hi, ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))((!((VECTOR(int16_t, 2))(7L, 0x33F3L))))).yyyxxyyx || ((VECTOR(int16_t, 2))(l_381.yx)).yyyyxxyx))), ((VECTOR(int16_t, 4))(l_382.zzyy)).yywwzwyw))).s00 && ((VECTOR(int16_t, 16))(0x2703L, (-6L), (((((safe_div_func_int64_t_s_s(((safe_rshift_func_int8_t_s_s(((((p_880->g_119.x ^= p_880->g_308.sc) == ((VECTOR(int64_t, 16))(0x18C6D83F07376A93L, 0L, ((VECTOR(int64_t, 4))(l_387.s3370)), 0x2284ABD643D75CAAL, ((VECTOR(int64_t, 8))(l_388.yzwyxwwz)), 0x5CEC4B0220FBB6B6L)).sb) > ((void*)0 == &l_342)) >= ((+(&l_299 != (***p_880->g_314))) == 0x3252L)), 5)) || (-1L)), p_880->g_121.s0)) < l_389) < p_12) | 0UL) != l_390[3][6]), l_167.x, 0x55E4L, (-9L), 1L, ((VECTOR(int16_t, 4))(0x5E8BL)), p_13, 0x68FDL, 0x414AL, (-1L), 6L)).s72))).xxxyyxxxxyxxxyxy || ((VECTOR(int16_t, 16))(0x34A1L))))).sfc))).yxxxyxyy, ((VECTOR(int16_t, 8))(0L)), ((VECTOR(int16_t, 8))(0x6DB2L))))))))))).s0723370746423152))).s06)))))), ((VECTOR(int16_t, 2))(0x4F5BL))))).yxxyxxyxyyxyxxyy, ((VECTOR(int16_t, 16))((-5L)))))).sd2))), (-2L))).odd && ((VECTOR(int16_t, 2))(0x0A2DL))))).xxyyyxyyxyyxxxyx, (int16_t)p_13))).s6ff1 != ((VECTOR(int16_t, 4))(0x026CL))))).ywwzxxxy))) + ((VECTOR(uint16_t, 8))(0x51D5L))))).s24))) + ((VECTOR(uint16_t, 2))(65535UL))))).yxyxyyyxxxxxxxyy, ((VECTOR(uint16_t, 16))(6UL))))).sf3 + ((VECTOR(uint16_t, 2))(0x8EF3L))))).hi, 14)))) & 0xF24BA6ECL), p_11, (-1L), 1L)).zzxyxzyy))).hi))).x, 0xCB4870A1D107DB14L)), 0x27L, ((VECTOR(uint8_t, 4))(0xC6L)), ((VECTOR(uint8_t, 8))(0xF6L)), 0xC3L, 0x34L)).s2 ^ 0x2FL)))
                    { /* block id: 107 */
                        uint32_t l_391 = 6UL;
                        int32_t l_396 = 0x42B475DDL;
                        int32_t l_397 = 0x4021CCB8L;
                        int32_t l_398 = 0x55DE067DL;
                        int64_t l_400 = (-6L);
                        int32_t l_403 = 0x44DEDE8CL;
                        int32_t l_404 = 0x21E3DE31L;
                        int32_t l_406[8][1] = {{0x2C46BCBFL},{0x2C46BCBFL},{0x2C46BCBFL},{0x2C46BCBFL},{0x2C46BCBFL},{0x2C46BCBFL},{0x2C46BCBFL},{0x2C46BCBFL}};
                        int i, j;
                        l_391++;
                        (*p_10) &= ((VECTOR(int32_t, 8))(p_880->g_394.s17544312)).s0;
                        if (l_391)
                            break;
                        l_408[8][4]--;
                    }
                    else
                    { /* block id: 112 */
                        return p_12;
                    }
                }
            }
            p_880->g_411 |= (*p_10);
        }
    }
    return l_412;
}


/* ------------------------------------------ */
/* 
 * reads : p_880->g_107 p_880->g_402
 * writes: p_880->g_107 p_880->g_402
 */
int32_t * func_14(int32_t * p_15, uint32_t  p_16, struct S0 * p_880)
{ /* block id: 34 */
    int32_t *l_138 = &p_880->g_6;
    int32_t **l_140[9][4] = {{&l_138,&l_138,&l_138,&p_880->g_106[1][0][3]},{&l_138,&l_138,&l_138,&p_880->g_106[1][0][3]},{&l_138,&l_138,&l_138,&p_880->g_106[1][0][3]},{&l_138,&l_138,&l_138,&p_880->g_106[1][0][3]},{&l_138,&l_138,&l_138,&p_880->g_106[1][0][3]},{&l_138,&l_138,&l_138,&p_880->g_106[1][0][3]},{&l_138,&l_138,&l_138,&p_880->g_106[1][0][3]},{&l_138,&l_138,&l_138,&p_880->g_106[1][0][3]},{&l_138,&l_138,&l_138,&p_880->g_106[1][0][3]}};
    int32_t *l_141 = &p_880->g_102[6][2];
    int i, j;
    l_141 = l_138;
    (*p_15) |= 0x430313B4L;
    return p_15;
}


/* ------------------------------------------ */
/* 
 * reads : p_880->g_111 p_880->g_114 p_880->g_102 p_880->g_119 p_880->g_121 p_880->g_136 p_880->g_107 p_880->g_6
 * writes: p_880->g_107 p_880->g_136 p_880->g_6
 */
int32_t * func_17(int64_t  p_18, int32_t  p_19, uint8_t  p_20, int32_t * p_21, int32_t * p_22, struct S0 * p_880)
{ /* block id: 28 */
    VECTOR(int32_t, 4) l_112 = (VECTOR(int32_t, 4))(0x30C5F837L, (VECTOR(int32_t, 2))(0x30C5F837L, 0x1659199FL), 0x1659199FL);
    VECTOR(int32_t, 16) l_113 = (VECTOR(int32_t, 16))(0x0A344D22L, (VECTOR(int32_t, 4))(0x0A344D22L, (VECTOR(int32_t, 2))(0x0A344D22L, (-5L)), (-5L)), (-5L), 0x0A344D22L, (-5L), (VECTOR(int32_t, 2))(0x0A344D22L, (-5L)), (VECTOR(int32_t, 2))(0x0A344D22L, (-5L)), 0x0A344D22L, (-5L), 0x0A344D22L, (-5L));
    VECTOR(int64_t, 2) l_120 = (VECTOR(int64_t, 2))(0x35CEBA8194CA43DCL, (-7L));
    VECTOR(int32_t, 16) l_122 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x245A36F1L), 0x245A36F1L), 0x245A36F1L, (-1L), 0x245A36F1L, (VECTOR(int32_t, 2))((-1L), 0x245A36F1L), (VECTOR(int32_t, 2))((-1L), 0x245A36F1L), (-1L), 0x245A36F1L, (-1L), 0x245A36F1L);
    VECTOR(int32_t, 8) l_123 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
    VECTOR(int32_t, 8) l_126 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
    uint32_t l_127 = 0UL;
    int64_t *l_134[9] = {&p_880->g_105,&p_880->g_105,&p_880->g_105,&p_880->g_105,&p_880->g_105,&p_880->g_105,&p_880->g_105,&p_880->g_105,&p_880->g_105};
    int64_t *l_135 = &p_880->g_136;
    int32_t *l_137 = &p_880->g_6;
    int i;
    (*l_137) ^= ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(p_880->g_111.s01633335)).s10 && ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(l_112.wwywwxwx)) != ((VECTOR(int32_t, 2))(0x64005936L, 0x4FD86619L)).yxyyxxxx))).s00, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(l_113.sa0644ea3)).hi && ((VECTOR(int32_t, 8))(p_880->g_114.s15233517)).lo))).odd)))))) <= ((VECTOR(int32_t, 8))((p_880->g_102[6][2] & (safe_sub_func_int32_t_s_s(((l_112.y , ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(clz(((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 16))(rhadd(((VECTOR(int64_t, 2))(0x4936848A1D825807L, (-1L))).xyxxyxyyxyxyxxxx, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 8))(5L, 0x1CB0568AF3DB6E5CL, 0x7F72A5219CEA36B5L, 0x5F624FECDA2E4179L, 1L, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 8))(0L, ((VECTOR(int64_t, 4))((-1L), ((*l_135) &= ((safe_sub_func_int32_t_s_s((((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(p_880->g_119.yw)).xxyy > ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(0x48F5A9F7A423BFD0L, 1L)).xyxxyyyxxyxyyyxy <= ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(l_120.yyxyxxxy)).s66 && ((VECTOR(int64_t, 16))(7L, ((VECTOR(int64_t, 2))(0x39A48B500B87C0FFL, (-1L))), ((VECTOR(int64_t, 4))(1L, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))((!((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(0x46765711L, (-1L))).xxxyxyxyyxyyxxyx && ((VECTOR(int32_t, 2))(0x2CF7CC7AL, 0L)).yyyxxyyyxxyxxxyx))).s74a2))).odd, ((VECTOR(int32_t, 8))(p_880->g_121.s50552043)).s63, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(0x7611E92AL, (-6L), (-5L), p_20, ((VECTOR(int32_t, 8))(l_122.scd0bf8e1)), (-1L), ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 2))(l_123.s65)).xxxyyxyy, (int32_t)((safe_mul_func_int8_t_s_s(((((*p_22) = ((VECTOR(int32_t, 2))(l_126.s33)).hi) != (l_127 & ((safe_sub_func_uint8_t_u_u((safe_div_func_uint16_t_u_u((safe_add_func_int64_t_s_s((-4L), ((l_134[6] != (void*)0) == l_123.s7))), p_20)), p_19)) == 1L))) < l_123.s7), 0xDDL)) , p_880->g_119.z), (int32_t)p_18))) | ((VECTOR(int32_t, 8))(0L))))).s45, ((VECTOR(int32_t, 2))(0x0CF4D97DL)), ((VECTOR(int32_t, 2))(0x0C8DFBF4L))))) && ((VECTOR(int32_t, 2))(0L))))), (-7L))).s3e28 && ((VECTOR(int32_t, 4))(7L))))).hi))) && ((VECTOR(int32_t, 2))((-6L)))))).yxyyyxxxyxyyyxyx, ((VECTOR(uint32_t, 16))(4294967294UL))))).s7f66 >= ((VECTOR(int64_t, 4))(1L))))).even && ((VECTOR(int64_t, 2))(0x44C2692D651C6119L))))), 0x36FDEF975B775EADL)), 0L, (-5L), ((VECTOR(int64_t, 4))((-4L))), l_113.s2, (-10L), 0x535BDAF9DE4F9229L)).s14))).xxyyyyxxyyyyyxyx))).s3ead))).lo, (int64_t)0x3E158439F27456FEL))).hi || l_122.sa), p_880->g_119.w)) > p_19)), (-1L), (-1L))), (-1L), (-1L), 2L)).s15, ((VECTOR(int64_t, 2))((-2L))), ((VECTOR(int64_t, 2))(0L))))) < ((VECTOR(int64_t, 2))(0L))))), 0x465BA7104F43F576L)).lo, ((VECTOR(int64_t, 4))(0x25245C12D51D326FL))))) < ((VECTOR(int64_t, 4))(0x3949581F8B52B2A3L))))).ywxwzwwxyxzxwyyx))).sa5, ((VECTOR(int64_t, 2))(0x5BADB8ECADA2DF38L))))).xxxyxyyyyxyyyyxx, ((VECTOR(int64_t, 16))(0x6E6C8BF41CBF4EA7L)))))))) > ((VECTOR(int64_t, 16))(0x0E46FA9DA5B25BDAL))))).s8) & 0x3105AB9C70C56885L), p_880->g_102[1][4]))), (-1L), (*p_22), ((VECTOR(int32_t, 2))(0x4FF6BEFEL)), ((VECTOR(int32_t, 2))((-3L))), 1L)).s60)))))).hi;
    (*p_21) = 0L;
    return &p_880->g_107;
}


/* ------------------------------------------ */
/* 
 * reads : p_880->g_102 p_880->g_42
 * writes: p_880->g_102
 */
int64_t  func_23(int64_t  p_24, uint32_t  p_25, int32_t * p_26, uint32_t  p_27, struct S0 * p_880)
{ /* block id: 25 */
    VECTOR(int32_t, 8) l_109 = (VECTOR(int32_t, 8))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x20135165L), 0x20135165L), 0x20135165L, (-3L), 0x20135165L);
    int32_t *l_110 = &p_880->g_102[3][9];
    int i;
    (*l_110) ^= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_109.s47)), (-1L), 0x4E75F18EL)).x;
    return p_880->g_42;
}


/* ------------------------------------------ */
/* 
 * reads : p_880->g_79 p_880->g_63 p_880->g_42 p_880->g_64 p_880->g_101
 * writes: p_880->g_63 p_880->g_42 p_880->g_6 p_880->g_102
 */
int64_t  func_28(int32_t  p_29, uint64_t  p_30, int32_t * p_31, struct S0 * p_880)
{ /* block id: 17 */
    VECTOR(int64_t, 16) l_74 = (VECTOR(int64_t, 16))(0x31DFEB8596781927L, (VECTOR(int64_t, 4))(0x31DFEB8596781927L, (VECTOR(int64_t, 2))(0x31DFEB8596781927L, (-1L)), (-1L)), (-1L), 0x31DFEB8596781927L, (-1L), (VECTOR(int64_t, 2))(0x31DFEB8596781927L, (-1L)), (VECTOR(int64_t, 2))(0x31DFEB8596781927L, (-1L)), 0x31DFEB8596781927L, (-1L), 0x31DFEB8596781927L, (-1L));
    VECTOR(int16_t, 2) l_80 = (VECTOR(int16_t, 2))((-1L), 0x7245L);
    int64_t l_87 = 0x6BADE8EBF9D6D6F5L;
    VECTOR(int64_t, 16) l_89 = (VECTOR(int64_t, 16))((-8L), (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), 0x0651235921E46D45L), 0x0651235921E46D45L), 0x0651235921E46D45L, (-8L), 0x0651235921E46D45L, (VECTOR(int64_t, 2))((-8L), 0x0651235921E46D45L), (VECTOR(int64_t, 2))((-8L), 0x0651235921E46D45L), (-8L), 0x0651235921E46D45L, (-8L), 0x0651235921E46D45L);
    int8_t *l_90 = &p_880->g_63;
    VECTOR(int16_t, 4) l_91 = (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 0x20F9L), 0x20F9L);
    int16_t **l_94 = (void*)0;
    int16_t *l_95 = (void*)0;
    int16_t *l_96 = (void*)0;
    int16_t *l_97 = &p_880->g_42;
    VECTOR(int32_t, 16) l_98 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int32_t, 2))(0L, 0L), (VECTOR(int32_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
    int64_t *l_99 = (void*)0;
    int64_t *l_100[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    (*p_880->g_101) = ((*p_31) = (((l_98.s9 = ((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 4))(l_74.sb05d)).yzxwzyxywzzzzyzz, ((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))((((*l_97) = (safe_mod_func_uint32_t_u_u(((safe_lshift_func_int8_t_s_u((~p_30), ((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(p_880->g_79.zy)) < ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(2L, 0x3138L)).yyxxxyyxxyxyxyyy & ((VECTOR(int16_t, 2))(l_80.yx)).yxxyyxxxyyyxxxyx))).lo, (int16_t)(safe_rshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_s(0x4670L, (p_30 & (l_87 > (safe_unary_minus_func_int8_t_s(((*l_90) &= ((0x78L < ((VECTOR(int8_t, 2))(0x4BL, 0x0CL)).odd) != ((VECTOR(int64_t, 8))(1L, ((VECTOR(int64_t, 4))(l_89.s17de)), ((VECTOR(int64_t, 2))(0x05EF4C81FA067E36L, (-1L))), 0x6B65597267FD0477L)).s0)))))))), 11))))).s24, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_91.zz)), ((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),int16_t,((VECTOR(int16_t, 2))(0x3DF2L, 0x60A6L)).yxxy, (int16_t)1L, (int16_t)(l_74.sc | p_30)))), 0x7406L, ((safe_mod_func_int16_t_s_s((((((void*)0 != l_94) , p_29) == 0xFFD1L) == p_30), 0x0F19L)) >= l_89.s8), ((VECTOR(int16_t, 2))(1L)), ((VECTOR(int16_t, 2))(0x16A0L)), 0x50E8L, 0x1E3AL, 0x6D20L, 0x46FDL)).even && ((VECTOR(int16_t, 8))((-10L)))))) && ((VECTOR(int16_t, 8))(0x2AC2L))))).s64))).yyxxxyxx && ((VECTOR(int16_t, 8))((-1L)))))).s0423276106515537 > ((VECTOR(int16_t, 16))(1L))))).odd, ((VECTOR(int16_t, 8))(9L))))), ((VECTOR(int16_t, 8))(0L))))) && ((VECTOR(int16_t, 8))(0x0FE1L))))).odd && ((VECTOR(int16_t, 4))((-5L)))))) ^ ((VECTOR(int16_t, 4))(0x15C8L))))).lo))).even > l_87) >= p_880->g_42))) , GROUP_DIVERGE(0, 1)), p_29))) | p_30), 1L, 0x5CE920F6FD10EC64L, 0x534BCD69959C8172L)), l_98.s0, ((VECTOR(int64_t, 2))((-1L))), p_29, ((VECTOR(int64_t, 8))(0x2B8F1B91DFB35854L)))), ((VECTOR(int64_t, 16))(0x6D18BB67281BF5FEL)))))))).sd) > p_880->g_64) , p_880->g_79.w));
    return l_91.w;
}


/* ------------------------------------------ */
/* 
 * reads : p_880->g_64 p_880->g_42
 * writes:
 */
uint16_t  func_32(int16_t  p_33, uint32_t  p_34, uint64_t  p_35, struct S0 * p_880)
{ /* block id: 14 */
    int16_t *l_71 = (void*)0;
    int16_t **l_70 = &l_71;
    int16_t ***l_72 = (void*)0;
    int16_t ***l_73 = &l_70;
    (*l_73) = (p_880->g_64 , l_70);
    return p_880->g_42;
}


/* ------------------------------------------ */
/* 
 * reads : p_880->g_64 p_880->g_67
 * writes: p_880->g_64 p_880->g_67
 */
int16_t  func_36(int16_t  p_37, int8_t  p_38, uint16_t  p_39, int32_t * p_40, struct S0 * p_880)
{ /* block id: 10 */
    int32_t l_58 = 0x6785E8A7L;
    int32_t *l_59 = (void*)0;
    int32_t *l_60 = (void*)0;
    int32_t *l_61 = &p_880->g_6;
    int32_t *l_62[3][3][5] = {{{(void*)0,&l_58,(void*)0,(void*)0,&l_58},{(void*)0,&l_58,(void*)0,(void*)0,&l_58},{(void*)0,&l_58,(void*)0,(void*)0,&l_58}},{{(void*)0,&l_58,(void*)0,(void*)0,&l_58},{(void*)0,&l_58,(void*)0,(void*)0,&l_58},{(void*)0,&l_58,(void*)0,(void*)0,&l_58}},{{(void*)0,&l_58,(void*)0,(void*)0,&l_58},{(void*)0,&l_58,(void*)0,(void*)0,&l_58},{(void*)0,&l_58,(void*)0,(void*)0,&l_58}}};
    int i, j, k;
    --p_880->g_64;
    p_880->g_67--;
    return p_37;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_43(uint32_t  p_44, uint8_t  p_45, uint32_t  p_46, struct S0 * p_880)
{ /* block id: 7 */
    int32_t *l_56[4] = {&p_880->g_6,&p_880->g_6,&p_880->g_6,&p_880->g_6};
    int32_t **l_57 = &l_56[1];
    int i;
    (*l_57) = l_56[3];
    return p_44;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_881;
    struct S0* p_880 = &c_881;
    struct S0 c_882 = {
        0x1C157478L, // p_880->g_6
        0L, // p_880->g_42
        0x0CL, // p_880->g_63
        0xCAF8A8FFL, // p_880->g_64
        0x4E0F8CCAA7A7558CL, // p_880->g_67
        (VECTOR(int16_t, 4))(0x572AL, (VECTOR(int16_t, 2))(0x572AL, 0L), 0L), // p_880->g_79
        {{0x12025340L,9L,6L,(-1L),1L,(-1L),(-1L),1L,(-1L),6L},{0x12025340L,9L,6L,(-1L),1L,(-1L),(-1L),1L,(-1L),6L},{0x12025340L,9L,6L,(-1L),1L,(-1L),(-1L),1L,(-1L),6L},{0x12025340L,9L,6L,(-1L),1L,(-1L),(-1L),1L,(-1L),6L},{0x12025340L,9L,6L,(-1L),1L,(-1L),(-1L),1L,(-1L),6L},{0x12025340L,9L,6L,(-1L),1L,(-1L),(-1L),1L,(-1L),6L},{0x12025340L,9L,6L,(-1L),1L,(-1L),(-1L),1L,(-1L),6L},{0x12025340L,9L,6L,(-1L),1L,(-1L),(-1L),1L,(-1L),6L}}, // p_880->g_102
        &p_880->g_102[6][2], // p_880->g_101
        0x23B7989D15E5DEB8L, // p_880->g_105
        0x436B5704L, // p_880->g_107
        {{{(void*)0,(void*)0,&p_880->g_107,&p_880->g_107,&p_880->g_107}},{{(void*)0,(void*)0,&p_880->g_107,&p_880->g_107,&p_880->g_107}},{{(void*)0,(void*)0,&p_880->g_107,&p_880->g_107,&p_880->g_107}}}, // p_880->g_106
        (VECTOR(int32_t, 8))(0x106A97DFL, (VECTOR(int32_t, 4))(0x106A97DFL, (VECTOR(int32_t, 2))(0x106A97DFL, 0x333A2C9EL), 0x333A2C9EL), 0x333A2C9EL, 0x106A97DFL, 0x333A2C9EL), // p_880->g_111
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), 1L, 1L, 1L), // p_880->g_114
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x0516E304FEC5635CL), 0x0516E304FEC5635CL), // p_880->g_119
        (VECTOR(int32_t, 8))(0x0FADE77EL, (VECTOR(int32_t, 4))(0x0FADE77EL, (VECTOR(int32_t, 2))(0x0FADE77EL, (-2L)), (-2L)), (-2L), 0x0FADE77EL, (-2L)), // p_880->g_121
        (-2L), // p_880->g_136
        {{&p_880->g_106[0][0][3]}}, // p_880->g_139
        0x96303E95L, // p_880->g_142
        (VECTOR(uint8_t, 16))(0x52L, (VECTOR(uint8_t, 4))(0x52L, (VECTOR(uint8_t, 2))(0x52L, 7UL), 7UL), 7UL, 0x52L, 7UL, (VECTOR(uint8_t, 2))(0x52L, 7UL), (VECTOR(uint8_t, 2))(0x52L, 7UL), 0x52L, 7UL, 0x52L, 7UL), // p_880->g_158
        (void*)0, // p_880->g_163
        &p_880->g_163, // p_880->g_162
        (VECTOR(int32_t, 8))(0x7552267BL, (VECTOR(int32_t, 4))(0x7552267BL, (VECTOR(int32_t, 2))(0x7552267BL, 0x2C3036BEL), 0x2C3036BEL), 0x2C3036BEL, 0x7552267BL, 0x2C3036BEL), // p_880->g_169
        18446744073709551615UL, // p_880->g_195
        (VECTOR(int64_t, 2))(0x2E2BCC026C0AF278L, 0x1B4075B7509372F9L), // p_880->g_216
        0x8F82L, // p_880->g_251
        (VECTOR(uint32_t, 4))(4294967294UL, (VECTOR(uint32_t, 2))(4294967294UL, 0x1514C64CL), 0x1514C64CL), // p_880->g_267
        (VECTOR(int64_t, 4))(0x3EDE2C968DFA88C2L, (VECTOR(int64_t, 2))(0x3EDE2C968DFA88C2L, (-1L)), (-1L)), // p_880->g_274
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-2L)), (-2L)), // p_880->g_275
        (VECTOR(int16_t, 16))(0x74E4L, (VECTOR(int16_t, 4))(0x74E4L, (VECTOR(int16_t, 2))(0x74E4L, 3L), 3L), 3L, 0x74E4L, 3L, (VECTOR(int16_t, 2))(0x74E4L, 3L), (VECTOR(int16_t, 2))(0x74E4L, 3L), 0x74E4L, 3L, 0x74E4L, 3L), // p_880->g_308
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 1L), 1L), 1L, 0L, 1L), // p_880->g_311
        {{{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42}},{{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42}},{{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42},{(void*)0,&p_880->g_42,&p_880->g_42,(void*)0,&p_880->g_42}}}, // p_880->g_317
        &p_880->g_317[0][0][0], // p_880->g_316
        {&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316,&p_880->g_316}, // p_880->g_315
        &p_880->g_315[2], // p_880->g_314
        (VECTOR(int16_t, 16))(3L, (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, (-1L)), (-1L)), (-1L), 3L, (-1L), (VECTOR(int16_t, 2))(3L, (-1L)), (VECTOR(int16_t, 2))(3L, (-1L)), 3L, (-1L), 3L, (-1L)), // p_880->g_318
        (void*)0, // p_880->g_341
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL), // p_880->g_366
        (VECTOR(int16_t, 4))(0x092AL, (VECTOR(int16_t, 2))(0x092AL, (-1L)), (-1L)), // p_880->g_369
        (VECTOR(int16_t, 2))(8L, 0x229EL), // p_880->g_371
        (VECTOR(int8_t, 8))((-7L), (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 0x79L), 0x79L), 0x79L, (-7L), 0x79L), // p_880->g_372
        (VECTOR(int16_t, 8))((-8L), (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0x6487L), 0x6487L), 0x6487L, (-8L), 0x6487L), // p_880->g_377
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L), // p_880->g_378
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-4L)), (-4L)), (-4L), 0L, (-4L)), // p_880->g_394
        (-1L), // p_880->g_402
        0x5E62EF15L, // p_880->g_411
        (void*)0, // p_880->g_428
        0x313E1DDDL, // p_880->g_442
        0xC2BCB135L, // p_880->g_469
        5UL, // p_880->g_477
        (VECTOR(int32_t, 2))((-1L), 0L), // p_880->g_481
        7L, // p_880->g_493
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 7L), 7L), 7L, 0L, 7L, (VECTOR(int32_t, 2))(0L, 7L), (VECTOR(int32_t, 2))(0L, 7L), 0L, 7L, 0L, 7L), // p_880->g_510
        (VECTOR(int16_t, 2))((-1L), 0x527CL), // p_880->g_514
        (VECTOR(uint16_t, 2))(0x68F7L, 0xCE53L), // p_880->g_531
        (-3L), // p_880->g_599
        (VECTOR(uint32_t, 8))(9UL, (VECTOR(uint32_t, 4))(9UL, (VECTOR(uint32_t, 2))(9UL, 4294967295UL), 4294967295UL), 4294967295UL, 9UL, 4294967295UL), // p_880->g_627
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x00L), 0x00L), 0x00L, (-1L), 0x00L, (VECTOR(int8_t, 2))((-1L), 0x00L), (VECTOR(int8_t, 2))((-1L), 0x00L), (-1L), 0x00L, (-1L), 0x00L), // p_880->g_633
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-8L)), (-8L)), (-8L), 1L, (-8L)), // p_880->g_664
        (VECTOR(int8_t, 8))((-7L), (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), (-4L)), (-4L)), (-4L), (-7L), (-4L)), // p_880->g_677
        (VECTOR(uint32_t, 2))(4294967286UL, 0x08028578L), // p_880->g_705
        (VECTOR(int32_t, 8))(0x3588BD39L, (VECTOR(int32_t, 4))(0x3588BD39L, (VECTOR(int32_t, 2))(0x3588BD39L, 0x1346CB19L), 0x1346CB19L), 0x1346CB19L, 0x3588BD39L, 0x1346CB19L), // p_880->g_706
        (VECTOR(int32_t, 2))((-9L), 0L), // p_880->g_756
        (VECTOR(uint16_t, 2))(0x11B8L, 0x3A97L), // p_880->g_760
        (VECTOR(int32_t, 4))(0x3701942CL, (VECTOR(int32_t, 2))(0x3701942CL, 0x22EEEA8DL), 0x22EEEA8DL), // p_880->g_762
        0x13DCB92EL, // p_880->g_781
        (VECTOR(int16_t, 4))(0x3133L, (VECTOR(int16_t, 2))(0x3133L, 0x4336L), 0x4336L), // p_880->g_788
        (VECTOR(int16_t, 8))(0x71E2L, (VECTOR(int16_t, 4))(0x71E2L, (VECTOR(int16_t, 2))(0x71E2L, 0x2F95L), 0x2F95L), 0x2F95L, 0x71E2L, 0x2F95L), // p_880->g_789
        (VECTOR(int16_t, 16))(9L, (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, (-1L)), (-1L)), (-1L), 9L, (-1L), (VECTOR(int16_t, 2))(9L, (-1L)), (VECTOR(int16_t, 2))(9L, (-1L)), 9L, (-1L), 9L, (-1L)), // p_880->g_790
        (VECTOR(int16_t, 16))(0x5CA8L, (VECTOR(int16_t, 4))(0x5CA8L, (VECTOR(int16_t, 2))(0x5CA8L, 0x715EL), 0x715EL), 0x715EL, 0x5CA8L, 0x715EL, (VECTOR(int16_t, 2))(0x5CA8L, 0x715EL), (VECTOR(int16_t, 2))(0x5CA8L, 0x715EL), 0x5CA8L, 0x715EL, 0x5CA8L, 0x715EL), // p_880->g_791
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x50L), 0x50L), // p_880->g_804
        (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 1UL), 1UL), // p_880->g_816
        (VECTOR(uint8_t, 2))(1UL, 0xA9L), // p_880->g_819
        (void*)0, // p_880->g_870
        &p_880->g_870, // p_880->g_869
        (VECTOR(int8_t, 8))(0x58L, (VECTOR(int8_t, 4))(0x58L, (VECTOR(int8_t, 2))(0x58L, (-3L)), (-3L)), (-3L), 0x58L, (-3L)), // p_880->g_874
        sequence_input[get_global_id(0)], // p_880->global_0_offset
        sequence_input[get_global_id(1)], // p_880->global_1_offset
        sequence_input[get_global_id(2)], // p_880->global_2_offset
        sequence_input[get_local_id(0)], // p_880->local_0_offset
        sequence_input[get_local_id(1)], // p_880->local_1_offset
        sequence_input[get_local_id(2)], // p_880->local_2_offset
        sequence_input[get_group_id(0)], // p_880->group_0_offset
        sequence_input[get_group_id(1)], // p_880->group_1_offset
        sequence_input[get_group_id(2)], // p_880->group_2_offset
    };
    c_881 = c_882;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_880);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_880->g_6, "p_880->g_6", print_hash_value);
    transparent_crc(p_880->g_42, "p_880->g_42", print_hash_value);
    transparent_crc(p_880->g_63, "p_880->g_63", print_hash_value);
    transparent_crc(p_880->g_64, "p_880->g_64", print_hash_value);
    transparent_crc(p_880->g_67, "p_880->g_67", print_hash_value);
    transparent_crc(p_880->g_79.x, "p_880->g_79.x", print_hash_value);
    transparent_crc(p_880->g_79.y, "p_880->g_79.y", print_hash_value);
    transparent_crc(p_880->g_79.z, "p_880->g_79.z", print_hash_value);
    transparent_crc(p_880->g_79.w, "p_880->g_79.w", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_880->g_102[i][j], "p_880->g_102[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_880->g_105, "p_880->g_105", print_hash_value);
    transparent_crc(p_880->g_107, "p_880->g_107", print_hash_value);
    transparent_crc(p_880->g_111.s0, "p_880->g_111.s0", print_hash_value);
    transparent_crc(p_880->g_111.s1, "p_880->g_111.s1", print_hash_value);
    transparent_crc(p_880->g_111.s2, "p_880->g_111.s2", print_hash_value);
    transparent_crc(p_880->g_111.s3, "p_880->g_111.s3", print_hash_value);
    transparent_crc(p_880->g_111.s4, "p_880->g_111.s4", print_hash_value);
    transparent_crc(p_880->g_111.s5, "p_880->g_111.s5", print_hash_value);
    transparent_crc(p_880->g_111.s6, "p_880->g_111.s6", print_hash_value);
    transparent_crc(p_880->g_111.s7, "p_880->g_111.s7", print_hash_value);
    transparent_crc(p_880->g_114.s0, "p_880->g_114.s0", print_hash_value);
    transparent_crc(p_880->g_114.s1, "p_880->g_114.s1", print_hash_value);
    transparent_crc(p_880->g_114.s2, "p_880->g_114.s2", print_hash_value);
    transparent_crc(p_880->g_114.s3, "p_880->g_114.s3", print_hash_value);
    transparent_crc(p_880->g_114.s4, "p_880->g_114.s4", print_hash_value);
    transparent_crc(p_880->g_114.s5, "p_880->g_114.s5", print_hash_value);
    transparent_crc(p_880->g_114.s6, "p_880->g_114.s6", print_hash_value);
    transparent_crc(p_880->g_114.s7, "p_880->g_114.s7", print_hash_value);
    transparent_crc(p_880->g_119.x, "p_880->g_119.x", print_hash_value);
    transparent_crc(p_880->g_119.y, "p_880->g_119.y", print_hash_value);
    transparent_crc(p_880->g_119.z, "p_880->g_119.z", print_hash_value);
    transparent_crc(p_880->g_119.w, "p_880->g_119.w", print_hash_value);
    transparent_crc(p_880->g_121.s0, "p_880->g_121.s0", print_hash_value);
    transparent_crc(p_880->g_121.s1, "p_880->g_121.s1", print_hash_value);
    transparent_crc(p_880->g_121.s2, "p_880->g_121.s2", print_hash_value);
    transparent_crc(p_880->g_121.s3, "p_880->g_121.s3", print_hash_value);
    transparent_crc(p_880->g_121.s4, "p_880->g_121.s4", print_hash_value);
    transparent_crc(p_880->g_121.s5, "p_880->g_121.s5", print_hash_value);
    transparent_crc(p_880->g_121.s6, "p_880->g_121.s6", print_hash_value);
    transparent_crc(p_880->g_121.s7, "p_880->g_121.s7", print_hash_value);
    transparent_crc(p_880->g_136, "p_880->g_136", print_hash_value);
    transparent_crc(p_880->g_142, "p_880->g_142", print_hash_value);
    transparent_crc(p_880->g_158.s0, "p_880->g_158.s0", print_hash_value);
    transparent_crc(p_880->g_158.s1, "p_880->g_158.s1", print_hash_value);
    transparent_crc(p_880->g_158.s2, "p_880->g_158.s2", print_hash_value);
    transparent_crc(p_880->g_158.s3, "p_880->g_158.s3", print_hash_value);
    transparent_crc(p_880->g_158.s4, "p_880->g_158.s4", print_hash_value);
    transparent_crc(p_880->g_158.s5, "p_880->g_158.s5", print_hash_value);
    transparent_crc(p_880->g_158.s6, "p_880->g_158.s6", print_hash_value);
    transparent_crc(p_880->g_158.s7, "p_880->g_158.s7", print_hash_value);
    transparent_crc(p_880->g_158.s8, "p_880->g_158.s8", print_hash_value);
    transparent_crc(p_880->g_158.s9, "p_880->g_158.s9", print_hash_value);
    transparent_crc(p_880->g_158.sa, "p_880->g_158.sa", print_hash_value);
    transparent_crc(p_880->g_158.sb, "p_880->g_158.sb", print_hash_value);
    transparent_crc(p_880->g_158.sc, "p_880->g_158.sc", print_hash_value);
    transparent_crc(p_880->g_158.sd, "p_880->g_158.sd", print_hash_value);
    transparent_crc(p_880->g_158.se, "p_880->g_158.se", print_hash_value);
    transparent_crc(p_880->g_158.sf, "p_880->g_158.sf", print_hash_value);
    transparent_crc(p_880->g_169.s0, "p_880->g_169.s0", print_hash_value);
    transparent_crc(p_880->g_169.s1, "p_880->g_169.s1", print_hash_value);
    transparent_crc(p_880->g_169.s2, "p_880->g_169.s2", print_hash_value);
    transparent_crc(p_880->g_169.s3, "p_880->g_169.s3", print_hash_value);
    transparent_crc(p_880->g_169.s4, "p_880->g_169.s4", print_hash_value);
    transparent_crc(p_880->g_169.s5, "p_880->g_169.s5", print_hash_value);
    transparent_crc(p_880->g_169.s6, "p_880->g_169.s6", print_hash_value);
    transparent_crc(p_880->g_169.s7, "p_880->g_169.s7", print_hash_value);
    transparent_crc(p_880->g_195, "p_880->g_195", print_hash_value);
    transparent_crc(p_880->g_216.x, "p_880->g_216.x", print_hash_value);
    transparent_crc(p_880->g_216.y, "p_880->g_216.y", print_hash_value);
    transparent_crc(p_880->g_251, "p_880->g_251", print_hash_value);
    transparent_crc(p_880->g_267.x, "p_880->g_267.x", print_hash_value);
    transparent_crc(p_880->g_267.y, "p_880->g_267.y", print_hash_value);
    transparent_crc(p_880->g_267.z, "p_880->g_267.z", print_hash_value);
    transparent_crc(p_880->g_267.w, "p_880->g_267.w", print_hash_value);
    transparent_crc(p_880->g_274.x, "p_880->g_274.x", print_hash_value);
    transparent_crc(p_880->g_274.y, "p_880->g_274.y", print_hash_value);
    transparent_crc(p_880->g_274.z, "p_880->g_274.z", print_hash_value);
    transparent_crc(p_880->g_274.w, "p_880->g_274.w", print_hash_value);
    transparent_crc(p_880->g_275.x, "p_880->g_275.x", print_hash_value);
    transparent_crc(p_880->g_275.y, "p_880->g_275.y", print_hash_value);
    transparent_crc(p_880->g_275.z, "p_880->g_275.z", print_hash_value);
    transparent_crc(p_880->g_275.w, "p_880->g_275.w", print_hash_value);
    transparent_crc(p_880->g_308.s0, "p_880->g_308.s0", print_hash_value);
    transparent_crc(p_880->g_308.s1, "p_880->g_308.s1", print_hash_value);
    transparent_crc(p_880->g_308.s2, "p_880->g_308.s2", print_hash_value);
    transparent_crc(p_880->g_308.s3, "p_880->g_308.s3", print_hash_value);
    transparent_crc(p_880->g_308.s4, "p_880->g_308.s4", print_hash_value);
    transparent_crc(p_880->g_308.s5, "p_880->g_308.s5", print_hash_value);
    transparent_crc(p_880->g_308.s6, "p_880->g_308.s6", print_hash_value);
    transparent_crc(p_880->g_308.s7, "p_880->g_308.s7", print_hash_value);
    transparent_crc(p_880->g_308.s8, "p_880->g_308.s8", print_hash_value);
    transparent_crc(p_880->g_308.s9, "p_880->g_308.s9", print_hash_value);
    transparent_crc(p_880->g_308.sa, "p_880->g_308.sa", print_hash_value);
    transparent_crc(p_880->g_308.sb, "p_880->g_308.sb", print_hash_value);
    transparent_crc(p_880->g_308.sc, "p_880->g_308.sc", print_hash_value);
    transparent_crc(p_880->g_308.sd, "p_880->g_308.sd", print_hash_value);
    transparent_crc(p_880->g_308.se, "p_880->g_308.se", print_hash_value);
    transparent_crc(p_880->g_308.sf, "p_880->g_308.sf", print_hash_value);
    transparent_crc(p_880->g_311.s0, "p_880->g_311.s0", print_hash_value);
    transparent_crc(p_880->g_311.s1, "p_880->g_311.s1", print_hash_value);
    transparent_crc(p_880->g_311.s2, "p_880->g_311.s2", print_hash_value);
    transparent_crc(p_880->g_311.s3, "p_880->g_311.s3", print_hash_value);
    transparent_crc(p_880->g_311.s4, "p_880->g_311.s4", print_hash_value);
    transparent_crc(p_880->g_311.s5, "p_880->g_311.s5", print_hash_value);
    transparent_crc(p_880->g_311.s6, "p_880->g_311.s6", print_hash_value);
    transparent_crc(p_880->g_311.s7, "p_880->g_311.s7", print_hash_value);
    transparent_crc(p_880->g_318.s0, "p_880->g_318.s0", print_hash_value);
    transparent_crc(p_880->g_318.s1, "p_880->g_318.s1", print_hash_value);
    transparent_crc(p_880->g_318.s2, "p_880->g_318.s2", print_hash_value);
    transparent_crc(p_880->g_318.s3, "p_880->g_318.s3", print_hash_value);
    transparent_crc(p_880->g_318.s4, "p_880->g_318.s4", print_hash_value);
    transparent_crc(p_880->g_318.s5, "p_880->g_318.s5", print_hash_value);
    transparent_crc(p_880->g_318.s6, "p_880->g_318.s6", print_hash_value);
    transparent_crc(p_880->g_318.s7, "p_880->g_318.s7", print_hash_value);
    transparent_crc(p_880->g_318.s8, "p_880->g_318.s8", print_hash_value);
    transparent_crc(p_880->g_318.s9, "p_880->g_318.s9", print_hash_value);
    transparent_crc(p_880->g_318.sa, "p_880->g_318.sa", print_hash_value);
    transparent_crc(p_880->g_318.sb, "p_880->g_318.sb", print_hash_value);
    transparent_crc(p_880->g_318.sc, "p_880->g_318.sc", print_hash_value);
    transparent_crc(p_880->g_318.sd, "p_880->g_318.sd", print_hash_value);
    transparent_crc(p_880->g_318.se, "p_880->g_318.se", print_hash_value);
    transparent_crc(p_880->g_318.sf, "p_880->g_318.sf", print_hash_value);
    transparent_crc(p_880->g_366.x, "p_880->g_366.x", print_hash_value);
    transparent_crc(p_880->g_366.y, "p_880->g_366.y", print_hash_value);
    transparent_crc(p_880->g_366.z, "p_880->g_366.z", print_hash_value);
    transparent_crc(p_880->g_366.w, "p_880->g_366.w", print_hash_value);
    transparent_crc(p_880->g_369.x, "p_880->g_369.x", print_hash_value);
    transparent_crc(p_880->g_369.y, "p_880->g_369.y", print_hash_value);
    transparent_crc(p_880->g_369.z, "p_880->g_369.z", print_hash_value);
    transparent_crc(p_880->g_369.w, "p_880->g_369.w", print_hash_value);
    transparent_crc(p_880->g_371.x, "p_880->g_371.x", print_hash_value);
    transparent_crc(p_880->g_371.y, "p_880->g_371.y", print_hash_value);
    transparent_crc(p_880->g_372.s0, "p_880->g_372.s0", print_hash_value);
    transparent_crc(p_880->g_372.s1, "p_880->g_372.s1", print_hash_value);
    transparent_crc(p_880->g_372.s2, "p_880->g_372.s2", print_hash_value);
    transparent_crc(p_880->g_372.s3, "p_880->g_372.s3", print_hash_value);
    transparent_crc(p_880->g_372.s4, "p_880->g_372.s4", print_hash_value);
    transparent_crc(p_880->g_372.s5, "p_880->g_372.s5", print_hash_value);
    transparent_crc(p_880->g_372.s6, "p_880->g_372.s6", print_hash_value);
    transparent_crc(p_880->g_372.s7, "p_880->g_372.s7", print_hash_value);
    transparent_crc(p_880->g_377.s0, "p_880->g_377.s0", print_hash_value);
    transparent_crc(p_880->g_377.s1, "p_880->g_377.s1", print_hash_value);
    transparent_crc(p_880->g_377.s2, "p_880->g_377.s2", print_hash_value);
    transparent_crc(p_880->g_377.s3, "p_880->g_377.s3", print_hash_value);
    transparent_crc(p_880->g_377.s4, "p_880->g_377.s4", print_hash_value);
    transparent_crc(p_880->g_377.s5, "p_880->g_377.s5", print_hash_value);
    transparent_crc(p_880->g_377.s6, "p_880->g_377.s6", print_hash_value);
    transparent_crc(p_880->g_377.s7, "p_880->g_377.s7", print_hash_value);
    transparent_crc(p_880->g_378.s0, "p_880->g_378.s0", print_hash_value);
    transparent_crc(p_880->g_378.s1, "p_880->g_378.s1", print_hash_value);
    transparent_crc(p_880->g_378.s2, "p_880->g_378.s2", print_hash_value);
    transparent_crc(p_880->g_378.s3, "p_880->g_378.s3", print_hash_value);
    transparent_crc(p_880->g_378.s4, "p_880->g_378.s4", print_hash_value);
    transparent_crc(p_880->g_378.s5, "p_880->g_378.s5", print_hash_value);
    transparent_crc(p_880->g_378.s6, "p_880->g_378.s6", print_hash_value);
    transparent_crc(p_880->g_378.s7, "p_880->g_378.s7", print_hash_value);
    transparent_crc(p_880->g_394.s0, "p_880->g_394.s0", print_hash_value);
    transparent_crc(p_880->g_394.s1, "p_880->g_394.s1", print_hash_value);
    transparent_crc(p_880->g_394.s2, "p_880->g_394.s2", print_hash_value);
    transparent_crc(p_880->g_394.s3, "p_880->g_394.s3", print_hash_value);
    transparent_crc(p_880->g_394.s4, "p_880->g_394.s4", print_hash_value);
    transparent_crc(p_880->g_394.s5, "p_880->g_394.s5", print_hash_value);
    transparent_crc(p_880->g_394.s6, "p_880->g_394.s6", print_hash_value);
    transparent_crc(p_880->g_394.s7, "p_880->g_394.s7", print_hash_value);
    transparent_crc(p_880->g_402, "p_880->g_402", print_hash_value);
    transparent_crc(p_880->g_411, "p_880->g_411", print_hash_value);
    transparent_crc(p_880->g_442, "p_880->g_442", print_hash_value);
    transparent_crc(p_880->g_469, "p_880->g_469", print_hash_value);
    transparent_crc(p_880->g_477, "p_880->g_477", print_hash_value);
    transparent_crc(p_880->g_481.x, "p_880->g_481.x", print_hash_value);
    transparent_crc(p_880->g_481.y, "p_880->g_481.y", print_hash_value);
    transparent_crc(p_880->g_493, "p_880->g_493", print_hash_value);
    transparent_crc(p_880->g_510.s0, "p_880->g_510.s0", print_hash_value);
    transparent_crc(p_880->g_510.s1, "p_880->g_510.s1", print_hash_value);
    transparent_crc(p_880->g_510.s2, "p_880->g_510.s2", print_hash_value);
    transparent_crc(p_880->g_510.s3, "p_880->g_510.s3", print_hash_value);
    transparent_crc(p_880->g_510.s4, "p_880->g_510.s4", print_hash_value);
    transparent_crc(p_880->g_510.s5, "p_880->g_510.s5", print_hash_value);
    transparent_crc(p_880->g_510.s6, "p_880->g_510.s6", print_hash_value);
    transparent_crc(p_880->g_510.s7, "p_880->g_510.s7", print_hash_value);
    transparent_crc(p_880->g_510.s8, "p_880->g_510.s8", print_hash_value);
    transparent_crc(p_880->g_510.s9, "p_880->g_510.s9", print_hash_value);
    transparent_crc(p_880->g_510.sa, "p_880->g_510.sa", print_hash_value);
    transparent_crc(p_880->g_510.sb, "p_880->g_510.sb", print_hash_value);
    transparent_crc(p_880->g_510.sc, "p_880->g_510.sc", print_hash_value);
    transparent_crc(p_880->g_510.sd, "p_880->g_510.sd", print_hash_value);
    transparent_crc(p_880->g_510.se, "p_880->g_510.se", print_hash_value);
    transparent_crc(p_880->g_510.sf, "p_880->g_510.sf", print_hash_value);
    transparent_crc(p_880->g_514.x, "p_880->g_514.x", print_hash_value);
    transparent_crc(p_880->g_514.y, "p_880->g_514.y", print_hash_value);
    transparent_crc(p_880->g_531.x, "p_880->g_531.x", print_hash_value);
    transparent_crc(p_880->g_531.y, "p_880->g_531.y", print_hash_value);
    transparent_crc(p_880->g_599, "p_880->g_599", print_hash_value);
    transparent_crc(p_880->g_627.s0, "p_880->g_627.s0", print_hash_value);
    transparent_crc(p_880->g_627.s1, "p_880->g_627.s1", print_hash_value);
    transparent_crc(p_880->g_627.s2, "p_880->g_627.s2", print_hash_value);
    transparent_crc(p_880->g_627.s3, "p_880->g_627.s3", print_hash_value);
    transparent_crc(p_880->g_627.s4, "p_880->g_627.s4", print_hash_value);
    transparent_crc(p_880->g_627.s5, "p_880->g_627.s5", print_hash_value);
    transparent_crc(p_880->g_627.s6, "p_880->g_627.s6", print_hash_value);
    transparent_crc(p_880->g_627.s7, "p_880->g_627.s7", print_hash_value);
    transparent_crc(p_880->g_633.s0, "p_880->g_633.s0", print_hash_value);
    transparent_crc(p_880->g_633.s1, "p_880->g_633.s1", print_hash_value);
    transparent_crc(p_880->g_633.s2, "p_880->g_633.s2", print_hash_value);
    transparent_crc(p_880->g_633.s3, "p_880->g_633.s3", print_hash_value);
    transparent_crc(p_880->g_633.s4, "p_880->g_633.s4", print_hash_value);
    transparent_crc(p_880->g_633.s5, "p_880->g_633.s5", print_hash_value);
    transparent_crc(p_880->g_633.s6, "p_880->g_633.s6", print_hash_value);
    transparent_crc(p_880->g_633.s7, "p_880->g_633.s7", print_hash_value);
    transparent_crc(p_880->g_633.s8, "p_880->g_633.s8", print_hash_value);
    transparent_crc(p_880->g_633.s9, "p_880->g_633.s9", print_hash_value);
    transparent_crc(p_880->g_633.sa, "p_880->g_633.sa", print_hash_value);
    transparent_crc(p_880->g_633.sb, "p_880->g_633.sb", print_hash_value);
    transparent_crc(p_880->g_633.sc, "p_880->g_633.sc", print_hash_value);
    transparent_crc(p_880->g_633.sd, "p_880->g_633.sd", print_hash_value);
    transparent_crc(p_880->g_633.se, "p_880->g_633.se", print_hash_value);
    transparent_crc(p_880->g_633.sf, "p_880->g_633.sf", print_hash_value);
    transparent_crc(p_880->g_664.s0, "p_880->g_664.s0", print_hash_value);
    transparent_crc(p_880->g_664.s1, "p_880->g_664.s1", print_hash_value);
    transparent_crc(p_880->g_664.s2, "p_880->g_664.s2", print_hash_value);
    transparent_crc(p_880->g_664.s3, "p_880->g_664.s3", print_hash_value);
    transparent_crc(p_880->g_664.s4, "p_880->g_664.s4", print_hash_value);
    transparent_crc(p_880->g_664.s5, "p_880->g_664.s5", print_hash_value);
    transparent_crc(p_880->g_664.s6, "p_880->g_664.s6", print_hash_value);
    transparent_crc(p_880->g_664.s7, "p_880->g_664.s7", print_hash_value);
    transparent_crc(p_880->g_677.s0, "p_880->g_677.s0", print_hash_value);
    transparent_crc(p_880->g_677.s1, "p_880->g_677.s1", print_hash_value);
    transparent_crc(p_880->g_677.s2, "p_880->g_677.s2", print_hash_value);
    transparent_crc(p_880->g_677.s3, "p_880->g_677.s3", print_hash_value);
    transparent_crc(p_880->g_677.s4, "p_880->g_677.s4", print_hash_value);
    transparent_crc(p_880->g_677.s5, "p_880->g_677.s5", print_hash_value);
    transparent_crc(p_880->g_677.s6, "p_880->g_677.s6", print_hash_value);
    transparent_crc(p_880->g_677.s7, "p_880->g_677.s7", print_hash_value);
    transparent_crc(p_880->g_705.x, "p_880->g_705.x", print_hash_value);
    transparent_crc(p_880->g_705.y, "p_880->g_705.y", print_hash_value);
    transparent_crc(p_880->g_706.s0, "p_880->g_706.s0", print_hash_value);
    transparent_crc(p_880->g_706.s1, "p_880->g_706.s1", print_hash_value);
    transparent_crc(p_880->g_706.s2, "p_880->g_706.s2", print_hash_value);
    transparent_crc(p_880->g_706.s3, "p_880->g_706.s3", print_hash_value);
    transparent_crc(p_880->g_706.s4, "p_880->g_706.s4", print_hash_value);
    transparent_crc(p_880->g_706.s5, "p_880->g_706.s5", print_hash_value);
    transparent_crc(p_880->g_706.s6, "p_880->g_706.s6", print_hash_value);
    transparent_crc(p_880->g_706.s7, "p_880->g_706.s7", print_hash_value);
    transparent_crc(p_880->g_756.x, "p_880->g_756.x", print_hash_value);
    transparent_crc(p_880->g_756.y, "p_880->g_756.y", print_hash_value);
    transparent_crc(p_880->g_760.x, "p_880->g_760.x", print_hash_value);
    transparent_crc(p_880->g_760.y, "p_880->g_760.y", print_hash_value);
    transparent_crc(p_880->g_762.x, "p_880->g_762.x", print_hash_value);
    transparent_crc(p_880->g_762.y, "p_880->g_762.y", print_hash_value);
    transparent_crc(p_880->g_762.z, "p_880->g_762.z", print_hash_value);
    transparent_crc(p_880->g_762.w, "p_880->g_762.w", print_hash_value);
    transparent_crc(p_880->g_781, "p_880->g_781", print_hash_value);
    transparent_crc(p_880->g_788.x, "p_880->g_788.x", print_hash_value);
    transparent_crc(p_880->g_788.y, "p_880->g_788.y", print_hash_value);
    transparent_crc(p_880->g_788.z, "p_880->g_788.z", print_hash_value);
    transparent_crc(p_880->g_788.w, "p_880->g_788.w", print_hash_value);
    transparent_crc(p_880->g_789.s0, "p_880->g_789.s0", print_hash_value);
    transparent_crc(p_880->g_789.s1, "p_880->g_789.s1", print_hash_value);
    transparent_crc(p_880->g_789.s2, "p_880->g_789.s2", print_hash_value);
    transparent_crc(p_880->g_789.s3, "p_880->g_789.s3", print_hash_value);
    transparent_crc(p_880->g_789.s4, "p_880->g_789.s4", print_hash_value);
    transparent_crc(p_880->g_789.s5, "p_880->g_789.s5", print_hash_value);
    transparent_crc(p_880->g_789.s6, "p_880->g_789.s6", print_hash_value);
    transparent_crc(p_880->g_789.s7, "p_880->g_789.s7", print_hash_value);
    transparent_crc(p_880->g_790.s0, "p_880->g_790.s0", print_hash_value);
    transparent_crc(p_880->g_790.s1, "p_880->g_790.s1", print_hash_value);
    transparent_crc(p_880->g_790.s2, "p_880->g_790.s2", print_hash_value);
    transparent_crc(p_880->g_790.s3, "p_880->g_790.s3", print_hash_value);
    transparent_crc(p_880->g_790.s4, "p_880->g_790.s4", print_hash_value);
    transparent_crc(p_880->g_790.s5, "p_880->g_790.s5", print_hash_value);
    transparent_crc(p_880->g_790.s6, "p_880->g_790.s6", print_hash_value);
    transparent_crc(p_880->g_790.s7, "p_880->g_790.s7", print_hash_value);
    transparent_crc(p_880->g_790.s8, "p_880->g_790.s8", print_hash_value);
    transparent_crc(p_880->g_790.s9, "p_880->g_790.s9", print_hash_value);
    transparent_crc(p_880->g_790.sa, "p_880->g_790.sa", print_hash_value);
    transparent_crc(p_880->g_790.sb, "p_880->g_790.sb", print_hash_value);
    transparent_crc(p_880->g_790.sc, "p_880->g_790.sc", print_hash_value);
    transparent_crc(p_880->g_790.sd, "p_880->g_790.sd", print_hash_value);
    transparent_crc(p_880->g_790.se, "p_880->g_790.se", print_hash_value);
    transparent_crc(p_880->g_790.sf, "p_880->g_790.sf", print_hash_value);
    transparent_crc(p_880->g_791.s0, "p_880->g_791.s0", print_hash_value);
    transparent_crc(p_880->g_791.s1, "p_880->g_791.s1", print_hash_value);
    transparent_crc(p_880->g_791.s2, "p_880->g_791.s2", print_hash_value);
    transparent_crc(p_880->g_791.s3, "p_880->g_791.s3", print_hash_value);
    transparent_crc(p_880->g_791.s4, "p_880->g_791.s4", print_hash_value);
    transparent_crc(p_880->g_791.s5, "p_880->g_791.s5", print_hash_value);
    transparent_crc(p_880->g_791.s6, "p_880->g_791.s6", print_hash_value);
    transparent_crc(p_880->g_791.s7, "p_880->g_791.s7", print_hash_value);
    transparent_crc(p_880->g_791.s8, "p_880->g_791.s8", print_hash_value);
    transparent_crc(p_880->g_791.s9, "p_880->g_791.s9", print_hash_value);
    transparent_crc(p_880->g_791.sa, "p_880->g_791.sa", print_hash_value);
    transparent_crc(p_880->g_791.sb, "p_880->g_791.sb", print_hash_value);
    transparent_crc(p_880->g_791.sc, "p_880->g_791.sc", print_hash_value);
    transparent_crc(p_880->g_791.sd, "p_880->g_791.sd", print_hash_value);
    transparent_crc(p_880->g_791.se, "p_880->g_791.se", print_hash_value);
    transparent_crc(p_880->g_791.sf, "p_880->g_791.sf", print_hash_value);
    transparent_crc(p_880->g_804.x, "p_880->g_804.x", print_hash_value);
    transparent_crc(p_880->g_804.y, "p_880->g_804.y", print_hash_value);
    transparent_crc(p_880->g_804.z, "p_880->g_804.z", print_hash_value);
    transparent_crc(p_880->g_804.w, "p_880->g_804.w", print_hash_value);
    transparent_crc(p_880->g_816.x, "p_880->g_816.x", print_hash_value);
    transparent_crc(p_880->g_816.y, "p_880->g_816.y", print_hash_value);
    transparent_crc(p_880->g_816.z, "p_880->g_816.z", print_hash_value);
    transparent_crc(p_880->g_816.w, "p_880->g_816.w", print_hash_value);
    transparent_crc(p_880->g_819.x, "p_880->g_819.x", print_hash_value);
    transparent_crc(p_880->g_819.y, "p_880->g_819.y", print_hash_value);
    transparent_crc(p_880->g_874.s0, "p_880->g_874.s0", print_hash_value);
    transparent_crc(p_880->g_874.s1, "p_880->g_874.s1", print_hash_value);
    transparent_crc(p_880->g_874.s2, "p_880->g_874.s2", print_hash_value);
    transparent_crc(p_880->g_874.s3, "p_880->g_874.s3", print_hash_value);
    transparent_crc(p_880->g_874.s4, "p_880->g_874.s4", print_hash_value);
    transparent_crc(p_880->g_874.s5, "p_880->g_874.s5", print_hash_value);
    transparent_crc(p_880->g_874.s6, "p_880->g_874.s6", print_hash_value);
    transparent_crc(p_880->g_874.s7, "p_880->g_874.s7", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
