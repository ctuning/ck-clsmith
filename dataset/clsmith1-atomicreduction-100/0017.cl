// ---atomic_reductions ---fake_divergence -g 57,74,2 -l 1,37,2
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


// Seed: 17

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
};

union U1 {
   int8_t * f0;
};

struct S2 {
    int32_t g_3;
    int32_t g_23;
    volatile int32_t g_26;
    volatile int32_t g_27[4];
    volatile int32_t g_28[4][3];
    int32_t g_29;
    int32_t g_32;
    struct S0 g_49;
    struct S0 *g_48[4][8];
    int8_t g_58;
    uint32_t g_83;
    uint32_t g_86;
    int64_t g_97;
    uint16_t g_99;
    union U1 g_106[1];
    int8_t g_109[7];
    int8_t *g_108;
    int64_t *g_120[5][5];
    int64_t **g_119;
    int32_t g_134;
    uint32_t g_159[9][9];
    uint16_t g_164;
    volatile int32_t g_169[5][2][3];
    volatile int32_t *g_168;
    volatile int32_t **g_167;
    uint16_t *g_213;
    uint32_t g_225[1];
    int16_t g_239;
    uint16_t g_243;
    int32_t ***g_254[7];
    int32_t ****g_264;
    int32_t *g_269;
    int32_t **g_268;
    int32_t ***g_267;
    int32_t ****g_266[4][2][9];
    uint16_t g_331;
    int16_t g_403;
    union U1 g_405[10];
    int64_t g_407;
    uint32_t g_436;
    int64_t **g_474;
    uint8_t g_503;
    union U1 *g_545[3][9][8];
    union U1 **g_544[10];
    uint64_t g_548[5];
    uint8_t *g_589;
    uint8_t * volatile *g_588[8];
    uint32_t *g_647[6][6];
    int8_t g_686;
    uint32_t g_748;
    uint8_t g_762;
    volatile int32_t g_798;
    uint8_t g_833;
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
uint8_t  func_1(struct S2 * p_885);
int32_t * func_4(uint16_t  p_5, struct S0  p_6, int8_t * p_7, int8_t * p_8, struct S2 * p_885);
int8_t * func_11(uint8_t  p_12, uint32_t  p_13, int32_t  p_14, int8_t * p_15, uint32_t  p_16, struct S2 * p_885);
int16_t  func_17(union U1  p_18, struct S2 * p_885);
union U1  func_19(uint32_t  p_20, struct S2 * p_885);
int64_t  func_21(struct S0 * p_22, struct S2 * p_885);
uint32_t  func_45(struct S0 * p_46, uint16_t  p_47, struct S2 * p_885);
uint16_t  func_51(int8_t * p_52, int64_t  p_53, int32_t  p_54, uint64_t  p_55, int32_t * p_56, struct S2 * p_885);
uint64_t  func_66(int32_t * p_67, int64_t  p_68, union U1  p_69, union U1  p_70, int8_t * p_71, struct S2 * p_885);
int32_t * func_72(int8_t * p_73, int8_t * p_74, int8_t * p_75, struct S2 * p_885);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_885->g_3 p_885->g_23 p_885->g_27 p_885->g_168 p_885->g_589 p_885->g_503 p_885->g_213 p_885->g_99 p_885->g_86 p_885->g_169 p_885->g_269 p_885->g_267 p_885->g_268 p_885->g_97 p_885->g_109 p_885->g_28 p_885->g_686 p_885->g_407 p_885->g_798 p_885->g_167
 * writes: p_885->g_3 p_885->g_23 p_885->g_29 p_885->g_32 p_885->g_169 p_885->g_86 p_885->g_833 p_885->g_269 p_885->g_503 p_885->g_48 p_885->g_403 p_885->g_239
 */
uint8_t  func_1(struct S2 * p_885)
{ /* block id: 4 */
    int32_t *l_2 = &p_885->g_3;
    struct S0 l_9 = {0L};
    struct S0 *l_10 = &l_9;
    int16_t *l_809 = (void*)0;
    int16_t *l_810[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_811 = 0x3974C129L;
    int8_t l_835[5][5][5] = {{{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L}},{{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L}},{{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L}},{{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L}},{{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L},{(-6L),0x78L,(-5L),(-3L),0L}}};
    int8_t *l_883 = &l_835[2][3][0];
    int i, j, k;
    (*l_2) &= 0x29BF3901L;
    (**p_885->g_267) = func_4(p_885->g_3, ((*l_10) = l_9), func_11((p_885->g_3 , (func_17(func_19((!(func_21(l_10, p_885) && (((safe_lshift_func_int16_t_s_s((l_811 = (safe_mod_func_uint8_t_u_u(0xEAL, (*p_885->g_589)))), ((safe_rshift_func_uint16_t_u_u((safe_add_func_uint8_t_u_u(255UL, 1L)), (*p_885->g_213))) <= 0L))) == (*l_2)) < (*l_2)))), p_885), p_885) && FAKE_DIVERGE(p_885->local_1_offset, get_local_id(1), 10))), p_885->g_97, l_835[2][3][0], &p_885->g_686, p_885->g_109[1], p_885), l_883, p_885);
    return (*l_2);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_4(uint16_t  p_5, struct S0  p_6, int8_t * p_7, int8_t * p_8, struct S2 * p_885)
{ /* block id: 378 */
    int32_t *l_884[7] = {&p_885->g_29,&p_885->g_29,&p_885->g_29,&p_885->g_29,&p_885->g_29,&p_885->g_29,&p_885->g_29};
    int i;
    l_884[6] = l_884[6];
    return l_884[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_885->g_589 p_885->g_503 p_885->g_28 p_885->g_686 p_885->g_407 p_885->g_798 p_885->g_268 p_885->g_269 p_885->g_167 p_885->g_168 p_885->g_169
 * writes: p_885->g_503 p_885->g_48 p_885->g_403 p_885->g_239 p_885->g_23 p_885->g_169
 */
int8_t * func_11(uint8_t  p_12, uint32_t  p_13, int32_t  p_14, int8_t * p_15, uint32_t  p_16, struct S2 * p_885)
{ /* block id: 365 */
    int8_t *l_852 = &p_885->g_109[1];
    union U1 l_855 = {0};
    union U1 **l_858 = &p_885->g_545[1][4][2];
    int64_t **l_863[5] = {&p_885->g_120[1][1],&p_885->g_120[1][1],&p_885->g_120[1][1],&p_885->g_120[1][1],&p_885->g_120[1][1]};
    int32_t l_864 = 0x69B254A9L;
    struct S0 *l_871 = (void*)0;
    uint64_t l_876 = 0x55EE74FFFD7BE3B3L;
    struct S0 *l_877 = &p_885->g_49;
    int i;
    if ((((((safe_mul_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s(((safe_lshift_func_int16_t_s_u(((safe_mul_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_s((safe_sub_func_uint16_t_u_u(((((p_15 == l_852) & (++(*p_885->g_589))) & ((l_855 , ((!((safe_rshift_func_int8_t_s_u((&p_885->g_225[0] != (void*)0), 3)) & p_16)) , (l_858 == ((((safe_add_func_int16_t_s_s(p_885->g_28[1][2], (safe_sub_func_uint8_t_u_u(((void*)0 != l_863[0]), (*p_15))))) == GROUP_DIVERGE(0, 1)) , 0x4658A27D53CA44F3L) , l_858)))) > 0x8AE0CD364CBEC839L)) | p_885->g_407), p_16)), (*p_15))), 0x5EDAAB1D41F356B3L)), 250UL)) , p_885->g_798), 4)) >= l_864), 11)), l_864)) , &p_885->g_436) == &p_885->g_436) ^ l_864) == (-6L)))
    { /* block id: 367 */
        struct S0 **l_872 = &p_885->g_48[1][7];
        int32_t l_873[1];
        int16_t *l_880 = &p_885->g_403;
        int16_t *l_881 = &p_885->g_239;
        int i;
        for (i = 0; i < 1; i++)
            l_873[i] = 0x40315C49L;
        (**p_885->g_268) = ((safe_add_func_int64_t_s_s((safe_div_func_int64_t_s_s(((safe_lshift_func_int8_t_s_s((l_871 == ((*l_872) = l_871)), l_873[0])) | (safe_sub_func_int32_t_s_s((~(p_14 ^= l_876)), ((((l_877 != (void*)0) == ((*l_881) = (0UL <= ((*l_880) = ((safe_div_func_int32_t_s_s(0x6B41107CL, (p_12 ^ 7UL))) >= 0x2CL))))) != l_873[0]) >= (-10L))))), l_876)), p_13)) & l_873[0]);
    }
    else
    { /* block id: 373 */
        int64_t l_882 = 0x2F692862C3F4C5A4L;
        (**p_885->g_167) &= p_14;
        (**p_885->g_167) = l_882;
    }
    return p_15;
}


/* ------------------------------------------ */
/* 
 * reads : p_885->g_267 p_885->g_268 p_885->g_23
 * writes: p_885->g_269
 */
int16_t  func_17(union U1  p_18, struct S2 * p_885)
{ /* block id: 362 */
    int32_t *l_834 = &p_885->g_23;
    (**p_885->g_267) = l_834;
    return (*l_834);
}


/* ------------------------------------------ */
/* 
 * reads : p_885->g_86 p_885->g_589 p_885->g_503 p_885->g_169 p_885->g_213 p_885->g_99 p_885->g_269
 * writes: p_885->g_86 p_885->g_833 p_885->g_29
 */
union U1  func_19(uint32_t  p_20, struct S2 * p_885)
{ /* block id: 353 */
    union U1 l_818 = {0};
    int32_t l_819 = 0x4186AB52L;
    struct S0 l_830 = {0x5D3615D7L};
    int32_t ****l_831[4][10] = {{&p_885->g_267,&p_885->g_254[3],&p_885->g_267,&p_885->g_254[3],&p_885->g_267,&p_885->g_267,&p_885->g_254[3],&p_885->g_267,&p_885->g_254[3],&p_885->g_267},{&p_885->g_267,&p_885->g_254[3],&p_885->g_267,&p_885->g_254[3],&p_885->g_267,&p_885->g_267,&p_885->g_254[3],&p_885->g_267,&p_885->g_254[3],&p_885->g_267},{&p_885->g_267,&p_885->g_254[3],&p_885->g_267,&p_885->g_254[3],&p_885->g_267,&p_885->g_267,&p_885->g_254[3],&p_885->g_267,&p_885->g_254[3],&p_885->g_267},{&p_885->g_267,&p_885->g_254[3],&p_885->g_267,&p_885->g_254[3],&p_885->g_267,&p_885->g_267,&p_885->g_254[3],&p_885->g_267,&p_885->g_254[3],&p_885->g_267}};
    int16_t *l_832[7] = {&p_885->g_239,&p_885->g_239,&p_885->g_239,&p_885->g_239,&p_885->g_239,&p_885->g_239,&p_885->g_239};
    int i, j;
    for (p_885->g_86 = (-30); (p_885->g_86 <= 49); ++p_885->g_86)
    { /* block id: 356 */
        return l_818;
    }
    (*p_885->g_269) = ((!(l_819 != ((((safe_mul_func_int16_t_s_s(((void*)0 != &l_818), ((((safe_lshift_func_uint8_t_u_s((*p_885->g_589), (((safe_lshift_func_int8_t_s_u(l_819, l_819)) > (safe_div_func_uint8_t_u_u(((p_885->g_833 = ((((safe_sub_func_int64_t_s_s((((((void*)0 == &l_818) , l_830) , (void*)0) != l_831[0][6]), p_20)) | (-6L)) | p_885->g_169[1][1][2]) ^ 65535UL)) & (*p_885->g_213)), (-1L)))) , p_20))) , p_20) | p_20) ^ (*p_885->g_213)))) , 0x23D8L) > 0UL) == p_20))) || 0x2B163000055D38F0L);
    return l_818;
}


/* ------------------------------------------ */
/* 
 * reads : p_885->g_23 p_885->g_27 p_885->g_168
 * writes: p_885->g_23 p_885->g_29 p_885->g_32 p_885->g_169
 */
int64_t  func_21(struct S0 * p_22, struct S2 * p_885)
{ /* block id: 7 */
    int32_t l_39[4] = {0x433BAB72L,0x433BAB72L,0x433BAB72L,0x433BAB72L};
    int32_t l_44 = 0x0D978029L;
    int32_t l_776 = 0L;
    int32_t l_779 = 5L;
    int32_t l_783 = 0x5F15CA4EL;
    int32_t l_786[3];
    struct S0 *l_802[4];
    struct S0 **l_803 = (void*)0;
    struct S0 **l_804 = &l_802[2];
    int i;
    for (i = 0; i < 3; i++)
        l_786[i] = 0x76D3ABB8L;
    for (i = 0; i < 4; i++)
        l_802[i] = &p_885->g_49;
    for (p_885->g_23 = (-8); (p_885->g_23 == (-4)); p_885->g_23 = safe_add_func_int16_t_s_s(p_885->g_23, 1))
    { /* block id: 10 */
        int32_t l_63 = 0x24B34D7AL;
        int32_t l_763 = 3L;
        int32_t l_778 = 0x61678B70L;
        int32_t l_782 = 0x3E8FCBABL;
        int32_t l_784 = 1L;
        int32_t l_785 = 0x651ABA7FL;
        int32_t l_788 = (-1L);
        int32_t l_789 = 0x12952333L;
        int32_t l_791 = 0L;
        int32_t l_794 = 0x0C455718L;
        int32_t l_795 = 0x06D30B69L;
        int32_t l_796[5];
        int i;
        for (i = 0; i < 5; i++)
            l_796[i] = (-9L);
        for (p_885->g_29 = 28; (p_885->g_29 < (-10)); p_885->g_29 = safe_sub_func_uint64_t_u_u(p_885->g_29, 5))
        { /* block id: 13 */
            uint16_t l_61 = 0xAFD2L;
            int32_t l_777 = 0x08D07B8FL;
            int32_t l_780 = 0x1A557052L;
            int32_t l_781 = (-1L);
            int32_t l_787 = 0x6414389EL;
            int32_t l_790 = 0x43090CDCL;
            int32_t l_792 = 0x6D09C457L;
            int32_t l_793 = 0x3AF8AE9DL;
            int32_t l_797 = 0x70DA6250L;
            uint32_t l_799 = 0xCEA07947L;
            for (p_885->g_32 = 0; (p_885->g_32 != 19); p_885->g_32 = safe_add_func_int32_t_s_s(p_885->g_32, 3))
            { /* block id: 16 */
                int8_t *l_57 = &p_885->g_58;
                uint64_t l_62 = 18446744073709551608UL;
                uint8_t *l_761 = &p_885->g_762;
                int32_t l_764 = 0x62FBE874L;
                int32_t *l_765 = (void*)0;
                int32_t *l_766 = &p_885->g_49.f0;
                int32_t *l_767 = &l_763;
                int32_t l_768 = 0x601DE204L;
                int32_t *l_769 = (void*)0;
                int32_t *l_770 = (void*)0;
                int32_t *l_771 = &l_764;
                int32_t *l_772 = &l_63;
                int32_t *l_773 = (void*)0;
                int32_t *l_774 = &l_63;
                int32_t *l_775[10][3] = {{&l_768,&l_763,&l_768},{&l_768,&l_763,&l_768},{&l_768,&l_763,&l_768},{&l_768,&l_763,&l_768},{&l_768,&l_763,&l_768},{&l_768,&l_763,&l_768},{&l_768,&l_763,&l_768},{&l_768,&l_763,&l_768},{&l_768,&l_763,&l_768},{&l_768,&l_763,&l_768}};
                int i, j;
                (1 + 1);
            }
            return l_780;
        }
        if (l_784)
            break;
    }
    (*p_885->g_168) = (p_885->g_27[0] && (((*l_804) = l_802[1]) != &p_885->g_49));
    atomic_add(&p_885->g_atomic_reduction[get_linear_group_id()], l_783);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_885->v_collective += p_885->g_atomic_reduction[get_linear_group_id()];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    return l_39[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_885->g_403 p_885->g_99 p_885->g_588 p_885->g_109 p_885->g_548 p_885->g_269 p_885->g_49.f0 p_885->g_32 p_885->g_29 p_885->g_213 p_885->g_108 p_885->g_106 p_885->g_23 p_885->g_268 p_885->g_239 p_885->g_225 p_885->g_589 p_885->g_503 p_885->g_97 p_885->g_331 p_885->g_748 p_885->g_267
 * writes: p_885->g_474 p_885->g_49.f0 p_885->g_239 p_885->g_548 p_885->g_134 p_885->g_99 p_885->g_109 p_885->g_647 p_885->g_503 p_885->g_686 p_885->g_48 p_885->g_403 p_885->g_97 p_885->g_269 p_885->g_268
 */
uint32_t  func_45(struct S0 * p_46, uint16_t  p_47, struct S2 * p_885)
{ /* block id: 194 */
    int64_t **l_469 = &p_885->g_120[1][1];
    int64_t ***l_470 = (void*)0;
    int64_t ***l_471 = &p_885->g_119;
    int64_t ***l_472 = (void*)0;
    int64_t ***l_473[10] = {&p_885->g_119,&p_885->g_119,&p_885->g_119,&p_885->g_119,&p_885->g_119,&p_885->g_119,&p_885->g_119,&p_885->g_119,&p_885->g_119,&p_885->g_119};
    int32_t ***l_520 = &p_885->g_268;
    union U1 *l_566 = &p_885->g_106[0];
    struct S0 l_592 = {0x4E46CC1EL};
    int32_t l_598 = (-6L);
    int32_t l_599 = 0x5A9F7A12L;
    int32_t l_600[9] = {3L,3L,3L,3L,3L,3L,3L,3L,3L};
    uint64_t *l_639 = &p_885->g_548[1];
    int32_t ***l_657 = &p_885->g_268;
    uint8_t **l_671 = &p_885->g_589;
    uint32_t l_740 = 0xBB4ECACBL;
    int32_t l_757 = 0x39BEBE9DL;
    int i;
lbl_760:
    if ((&p_885->g_120[0][2] != (p_885->g_474 = (l_469 = l_469))))
    { /* block id: 197 */
        uint32_t l_500[8][10] = {{6UL,0xB616CD67L,0x0B3B7A19L,4294967295UL,0x0B3B7A19L,0xB616CD67L,6UL,4294967295UL,0x1D7ED9ACL,0x1D7ED9ACL},{6UL,0xB616CD67L,0x0B3B7A19L,4294967295UL,0x0B3B7A19L,0xB616CD67L,6UL,4294967295UL,0x1D7ED9ACL,0x1D7ED9ACL},{6UL,0xB616CD67L,0x0B3B7A19L,4294967295UL,0x0B3B7A19L,0xB616CD67L,6UL,4294967295UL,0x1D7ED9ACL,0x1D7ED9ACL},{6UL,0xB616CD67L,0x0B3B7A19L,4294967295UL,0x0B3B7A19L,0xB616CD67L,6UL,4294967295UL,0x1D7ED9ACL,0x1D7ED9ACL},{6UL,0xB616CD67L,0x0B3B7A19L,4294967295UL,0x0B3B7A19L,0xB616CD67L,6UL,4294967295UL,0x1D7ED9ACL,0x1D7ED9ACL},{6UL,0xB616CD67L,0x0B3B7A19L,4294967295UL,0x0B3B7A19L,0xB616CD67L,6UL,4294967295UL,0x1D7ED9ACL,0x1D7ED9ACL},{6UL,0xB616CD67L,0x0B3B7A19L,4294967295UL,0x0B3B7A19L,0xB616CD67L,6UL,4294967295UL,0x1D7ED9ACL,0x1D7ED9ACL},{6UL,0xB616CD67L,0x0B3B7A19L,4294967295UL,0x0B3B7A19L,0xB616CD67L,6UL,4294967295UL,0x1D7ED9ACL,0x1D7ED9ACL}};
        int32_t l_504 = 1L;
        int8_t l_506 = 0x50L;
        int32_t l_534 = (-10L);
        int32_t ****l_541[6][6] = {{&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2]},{&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2]},{&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2]},{&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2]},{&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2]},{&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2],&p_885->g_254[2]}};
        int8_t **l_563 = &p_885->g_108;
        union U1 *l_567 = (void*)0;
        int i, j;
        for (p_885->g_49.f0 = (-7); (p_885->g_49.f0 != 23); p_885->g_49.f0 = safe_add_func_uint16_t_u_u(p_885->g_49.f0, 1))
        { /* block id: 200 */
            struct S0 l_481 = {0x2A5198F3L};
            int64_t **l_552 = &p_885->g_120[2][1];
            uint64_t l_558 = 2UL;
            int32_t l_561[1];
            int i;
            for (i = 0; i < 1; i++)
                l_561[i] = 0x2F2C5524L;
            (1 + 1);
        }
        return p_47;
    }
    else
    { /* block id: 251 */
        uint16_t **l_575 = &p_885->g_213;
        int32_t l_594 = 1L;
        uint64_t l_602 = 0xF5326FCD628AE8DCL;
        int32_t l_607 = 1L;
        union U1 **l_622 = &l_566;
        uint32_t *l_644 = &p_885->g_436;
        uint32_t *l_646 = &p_885->g_436;
        int64_t *l_693 = &p_885->g_97;
        int32_t l_711 = 0x032CC451L;
        int32_t l_730 = 0L;
        int32_t l_734[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
        int i;
        for (p_885->g_239 = 0; (p_885->g_239 == 16); p_885->g_239 = safe_add_func_uint16_t_u_u(p_885->g_239, 1))
        { /* block id: 254 */
            int16_t l_574 = 5L;
            uint8_t *l_578 = &p_885->g_503;
            uint8_t **l_579 = (void*)0;
            uint8_t **l_580 = &l_578;
            int32_t l_581 = 0x47C23847L;
            uint16_t *l_590[1];
            int32_t l_591 = (-1L);
            uint64_t *l_593 = &p_885->g_548[4];
            int32_t l_601 = 0L;
            uint32_t **l_645[6];
            struct S0 l_689 = {-5L};
            int32_t l_732 = 0x7792473DL;
            int32_t l_733 = 0L;
            int32_t l_738 = 1L;
            int i;
            for (i = 0; i < 1; i++)
                l_590[i] = &p_885->g_243;
            for (i = 0; i < 6; i++)
                l_645[i] = &l_644;
            l_592.f0 = ((safe_sub_func_uint16_t_u_u((((safe_mod_func_uint8_t_u_u((((*l_593) |= ((((l_574 &= p_885->g_403) , l_575) == (void*)0) & ((((safe_mod_func_uint16_t_u_u((((*l_580) = l_578) == (((l_581 || FAKE_DIVERGE(p_885->global_2_offset, get_global_id(2), 10)) == (l_591 = (safe_sub_func_uint32_t_u_u((safe_mod_func_int16_t_s_s(p_885->g_99, (p_47 = (((l_581 , (p_47 != ((safe_sub_func_int16_t_s_s((((p_885->g_588[3] != (void*)0) | p_47) , 0x4307L), p_885->g_109[1])) | p_47))) , p_885->g_99) || 0x61FBL)))), 0xFEC4F5BBL)))) , (void*)0)), 0x1084L)) < GROUP_DIVERGE(0, 1)) , l_592) , p_47))) , p_47), l_594)) || FAKE_DIVERGE(p_885->local_0_offset, get_local_id(0), 10)) != FAKE_DIVERGE(p_885->group_2_offset, get_group_id(2), 10)), 0xB854L)) && p_47);
            for (p_885->g_134 = 12; (p_885->g_134 <= 8); p_885->g_134 = safe_sub_func_int8_t_s_s(p_885->g_134, 4))
            { /* block id: 263 */
                int32_t *l_597[10][7] = {{&l_594,&l_591,&p_885->g_32,&l_592.f0,&l_591,&l_592.f0,&p_885->g_32},{&l_594,&l_591,&p_885->g_32,&l_592.f0,&l_591,&l_592.f0,&p_885->g_32},{&l_594,&l_591,&p_885->g_32,&l_592.f0,&l_591,&l_592.f0,&p_885->g_32},{&l_594,&l_591,&p_885->g_32,&l_592.f0,&l_591,&l_592.f0,&p_885->g_32},{&l_594,&l_591,&p_885->g_32,&l_592.f0,&l_591,&l_592.f0,&p_885->g_32},{&l_594,&l_591,&p_885->g_32,&l_592.f0,&l_591,&l_592.f0,&p_885->g_32},{&l_594,&l_591,&p_885->g_32,&l_592.f0,&l_591,&l_592.f0,&p_885->g_32},{&l_594,&l_591,&p_885->g_32,&l_592.f0,&l_591,&l_592.f0,&p_885->g_32},{&l_594,&l_591,&p_885->g_32,&l_592.f0,&l_591,&l_592.f0,&p_885->g_32},{&l_594,&l_591,&p_885->g_32,&l_592.f0,&l_591,&l_592.f0,&p_885->g_32}};
                int i, j;
                if ((*p_885->g_269))
                    break;
                l_602++;
                for (l_594 = 27; (l_594 <= 9); l_594 = safe_sub_func_int16_t_s_s(l_594, 1))
                { /* block id: 268 */
                    l_607 ^= p_47;
                }
                l_594 = (safe_mod_func_uint64_t_u_u((safe_sub_func_int64_t_s_s((safe_lshift_func_int8_t_s_s(((safe_mul_func_int16_t_s_s(p_47, p_885->g_548[4])) < (safe_lshift_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s((-10L), 3)), 3))), 0)), ((safe_sub_func_uint64_t_u_u((l_622 != l_622), p_47)) || ((*p_885->g_108) = (!((((safe_mul_func_uint8_t_u_u((l_591 >= ((((safe_div_func_int16_t_s_s((-1L), ((**l_575) = GROUP_DIVERGE(0, 1)))) , l_590[0]) != l_590[0]) && 0x5B82L)), 0x35L)) | (-1L)) ^ p_47) , l_574)))))), p_47));
            }
            if ((((safe_add_func_int64_t_s_s((l_591 |= (safe_sub_func_uint32_t_u_u((safe_sub_func_uint16_t_u_u((safe_add_func_int16_t_s_s((p_47 <= (((safe_mul_func_int8_t_s_s(l_602, (safe_sub_func_uint16_t_u_u((((((**l_622) , l_639) != (l_593 = (void*)0)) ^ (safe_add_func_int16_t_s_s(p_885->g_23, (safe_mul_func_int16_t_s_s(((l_644 = l_644) == (p_885->g_647[2][3] = l_646)), (safe_mul_func_int8_t_s_s((l_581 = ((*p_885->g_108) = (***l_520))), 6UL))))))) ^ 0x9BL), l_601)))) ^ l_594) >= p_885->g_239)), 65531UL)), GROUP_DIVERGE(0, 1))), p_47))), 0x796FCEE5C1A39ED2L)) ^ l_594) & p_885->g_225[0]))
            { /* block id: 281 */
                uint32_t l_654 = 0UL;
                int32_t *l_659 = (void*)0;
                int32_t *l_660 = &l_601;
                uint8_t l_661 = 5UL;
                uint8_t **l_670 = (void*)0;
                int32_t l_713[2];
                struct S0 **l_723[3];
                int32_t l_731 = 0x374ACC9AL;
                int32_t l_735 = 0x4D60863EL;
                int32_t l_736 = 0L;
                int32_t l_737 = 1L;
                int32_t l_739[5][7][1] = {{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}}};
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_713[i] = 0x429D6D3CL;
                for (i = 0; i < 3; i++)
                    l_723[i] = &p_885->g_48[1][7];
                if ((l_661 = ((safe_lshift_func_uint8_t_u_u(((safe_sub_func_uint32_t_u_u(((l_654 >= 0x6BL) >= 0x1D9BF0D50DD46569L), (safe_rshift_func_uint16_t_u_s(((l_520 = l_520) == ((*l_566) , l_657)), (safe_unary_minus_func_uint32_t_u(p_885->g_29)))))) >= ((*l_660) = l_607)), 0)) || (*p_885->g_589))))
                { /* block id: 285 */
                    uint64_t l_667 = 0UL;
                    uint8_t ***l_672 = &l_579;
                    uint8_t l_684 = 2UL;
                    uint8_t *l_685 = &l_661;
                    p_885->g_686 = ((safe_unary_minus_func_uint8_t_u(((*l_685) = (safe_lshift_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((l_667 < (safe_div_func_uint32_t_u_u((((*p_885->g_213) & (l_670 == ((*l_672) = l_671))) | ((safe_div_func_int8_t_s_s((-1L), ((*p_885->g_589)++))) ^ (safe_mod_func_int32_t_s_s(((l_574 || ((((((((safe_mul_func_int16_t_s_s(0x2CE1L, (safe_unary_minus_func_uint8_t_u((l_594 ^= (safe_sub_func_int32_t_s_s((p_47 && ((((**l_622) , 0x954AL) >= 65535UL) != l_581)), FAKE_DIVERGE(p_885->local_2_offset, get_local_id(2), 10)))))))) & p_47) > (-1L)) , l_684) , 1L) && 1L) >= (*l_660)) , 0x5AL)) || p_885->g_97), 0x88EBBDCDL)))), 4294967295UL))), (*l_660))), 13))))) >= 0x402C5E4CL);
                    if (p_47)
                        break;
                    for (p_885->g_686 = (-3); (p_885->g_686 >= 18); ++p_885->g_686)
                    { /* block id: 294 */
                        struct S0 *l_690 = &l_592;
                        (*l_690) = l_689;
                    }
                }
                else
                { /* block id: 297 */
                    return p_885->g_49.f0;
                }
                for (l_607 = 0; (l_607 >= 10); l_607 = safe_add_func_int8_t_s_s(l_607, 3))
                { /* block id: 302 */
                    struct S0 *l_708 = &l_592;
                    struct S0 **l_709 = &p_885->g_48[0][2];
                    int32_t l_710 = 0x1EB12A1CL;
                    int16_t *l_712 = &p_885->g_403;
                    (*l_660) ^= (((l_693 != (void*)0) ^ (safe_rshift_func_uint8_t_u_u((safe_mod_func_int64_t_s_s(((*l_693) = ((safe_add_func_int16_t_s_s(((*l_712) ^= (((((safe_mod_func_int64_t_s_s((((FAKE_DIVERGE(p_885->local_2_offset, get_local_id(2), 10) == ((*p_885->g_213) && l_607)) >= (safe_lshift_func_uint16_t_u_s((((p_885->g_97 | ((safe_mul_func_int16_t_s_s((safe_div_func_uint32_t_u_u(((((p_885->g_331 == p_47) , ((*l_709) = l_708)) == (void*)0) && 0x2A14EC41L), l_710)), l_581)) >= 6L)) , &l_710) != &l_591), l_689.f0))) >= p_47), p_47)) , l_711) <= GROUP_DIVERGE(0, 1)) || (-1L)) , (***l_520))), (*p_885->g_213))) != p_47)), p_47)), 0))) ^ 0x1F6DE822F0700CE7L);
                    if (p_47)
                    { /* block id: 307 */
                        l_594 = l_710;
                        return l_713[0];
                    }
                    else
                    { /* block id: 310 */
                        int16_t l_720 = 0L;
                        (**l_657) = (**l_520);
                        atomic_max(&p_885->g_atomic_reduction[get_linear_group_id()], ((((safe_mul_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u((safe_div_func_uint8_t_u_u((!(0x75E5A628L | (***l_657))), p_47)), l_720)), (safe_mul_func_uint8_t_u_u((((void*)0 != l_723[0]) == (safe_rshift_func_uint16_t_u_s((l_581 = ((l_723[0] == &p_46) || ((((***l_657) ^ (*l_660)) == GROUP_DIVERGE(1, 1)) & p_885->g_225[0]))), l_594))), 255UL)))) >= 0x41BDL) <= 0x3F21L) & p_885->g_109[1]));
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_885->v_collective += p_885->g_atomic_reduction[get_linear_group_id()];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    }
                }
                if (p_47)
                { /* block id: 316 */
                    int32_t *l_726 = &l_607;
                    int32_t *l_729[7] = {&l_592.f0,&p_885->g_3,&l_592.f0,&l_592.f0,&p_885->g_3,&l_592.f0,&l_592.f0};
                    int i;
                    (*l_726) ^= ((*l_660) |= (p_47 , p_47));
                    (*l_660) ^= ((*l_726) = (safe_lshift_func_int8_t_s_s(0L, p_47)));
                    l_740++;
                }
                else
                { /* block id: 322 */
                    int32_t **l_743 = &p_885->g_269;
                    (*l_520) = l_743;
                }
                l_730 &= (safe_mod_func_int32_t_s_s(p_47, (safe_rshift_func_int8_t_s_u((GROUP_DIVERGE(1, 1) || (p_885->g_748 , (*p_885->g_108))), (((l_607 |= p_47) == (((((safe_add_func_int8_t_s_s((safe_add_func_uint32_t_u_u((safe_sub_func_int8_t_s_s((safe_div_func_uint16_t_u_u((*p_885->g_213), l_738)), (l_757 ^ (p_47 >= ((((((0x2AEFF1E52783E438L > 0UL) & 0xA008982BL) | 3L) | (*l_660)) != (***p_885->g_267)) & (*l_660)))))), p_885->g_109[4])), GROUP_DIVERGE(0, 1))) , l_594) > GROUP_DIVERGE(1, 1)) < l_594) == 5L)) != GROUP_DIVERGE(1, 1))))));
            }
            else
            { /* block id: 327 */
                return p_47;
            }
        }
    }
    for (p_885->g_97 = 0; (p_885->g_97 >= (-20)); p_885->g_97 = safe_sub_func_uint16_t_u_u(p_885->g_97, 8))
    { /* block id: 334 */
        if ((***l_657))
            break;
        if (p_885->g_403)
            goto lbl_760;
    }
    return (***l_520);
}


/* ------------------------------------------ */
/* 
 * reads : p_885->g_86 p_885->g_58 p_885->g_3 p_885->g_106 p_885->g_108 p_885->g_99 p_885->g_49.f0 p_885->g_32 p_885->g_109 p_885->g_159 p_885->g_167 p_885->g_164 p_885->g_268 p_885->g_213 p_885->g_97 p_885->g_225 p_885->g_29 p_885->g_23 p_885->g_331 p_885->g_239
 * writes: p_885->g_83 p_885->g_86 p_885->g_58 p_885->g_97 p_885->g_99 p_885->g_119 p_885->g_159 p_885->g_164 p_885->g_49.f0 p_885->g_269 p_885->g_239
 */
uint16_t  func_51(int8_t * p_52, int64_t  p_53, int32_t  p_54, uint64_t  p_55, int32_t * p_56, struct S2 * p_885)
{ /* block id: 17 */
    int8_t *l_76 = (void*)0;
    struct S0 l_77 = {0x79F7E48FL};
    int8_t *l_79 = &p_885->g_58;
    int8_t **l_78 = &l_79;
    int32_t *l_81 = &p_885->g_29;
    int32_t **l_80 = &l_81;
    uint32_t *l_82 = &p_885->g_83;
    int32_t *l_105[9] = {&p_885->g_3,&p_885->g_3,&p_885->g_3,&p_885->g_3,&p_885->g_3,&p_885->g_3,&p_885->g_3,&p_885->g_3,&p_885->g_3};
    int32_t **l_104 = &l_105[7];
    union U1 l_107 = {0};
    uint8_t l_294 = 253UL;
    int64_t l_301 = (-1L);
    uint32_t l_370 = 1UL;
    int16_t *l_381 = &p_885->g_239;
    int64_t l_394 = 0L;
    uint32_t l_456[3];
    int i;
    for (i = 0; i < 3; i++)
        l_456[i] = 4294967291UL;
    (*p_56) &= ((&p_885->g_58 != (p_52 = &p_885->g_58)) & (safe_div_func_uint64_t_u_u(func_66(((*l_104) = ((*l_80) = func_72(l_76, (l_77 , ((*l_78) = &p_885->g_58)), (((*l_82) = (l_77.f0 , (((*l_80) = &p_885->g_3) != (p_55 , (void*)0)))) , (void*)0), p_885))), p_53, p_885->g_106[0], l_107, p_885->g_108, p_885), 0x009A12A585A5F5D3L)));
    if (((GROUP_DIVERGE(2, 1) >= ((0xAF8924D8L != (((*p_885->g_108) & (safe_sub_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(l_294, (0L || GROUP_DIVERGE(1, 1)))), 6UL))) , (((safe_mul_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u((*p_885->g_213), (*p_885->g_213))), (safe_add_func_int32_t_s_s(0x2B6C12B6L, (&l_105[2] != &p_56))))) || l_301) != (*p_885->g_108)))) && 0x36L)) , (*p_56)))
    { /* block id: 116 */
        uint32_t l_328 = 4294967295UL;
        int32_t l_338 = 0x35E9072BL;
        int32_t l_342 = (-5L);
        uint64_t l_344 = 0x3C09BFC39C174052L;
        int32_t *l_350 = &l_338;
        int32_t l_351 = 0L;
        int32_t l_353[9][2] = {{(-9L),(-1L)},{(-9L),(-1L)},{(-9L),(-1L)},{(-9L),(-1L)},{(-9L),(-1L)},{(-9L),(-1L)},{(-9L),(-1L)},{(-9L),(-1L)},{(-9L),(-1L)}};
        int64_t l_362 = 0x7495FB48D226C2BFL;
        int64_t ***l_430 = &p_885->g_119;
        int32_t *****l_433 = &p_885->g_266[3][1][5];
        int i, j;
        for (p_885->g_58 = 3; (p_885->g_58 == (-12)); p_885->g_58 = safe_sub_func_int16_t_s_s(p_885->g_58, 9))
        { /* block id: 119 */
            uint16_t l_304 = 0xA444L;
            uint32_t l_333 = 0x8F1172DAL;
            int32_t l_340 = 0x6E27FC08L;
            struct S0 l_347 = {4L};
            int32_t l_352 = (-10L);
            int32_t l_356 = (-1L);
            int32_t l_359 = 6L;
            uint16_t l_364 = 0xC3FBL;
            int32_t ****l_395 = &p_885->g_254[6];
            int32_t l_464 = 0x34CD04C7L;
            if ((0x1C7EL ^ l_304))
            { /* block id: 120 */
                uint8_t l_329[3][4][2] = {{{0UL,0x22L},{0UL,0x22L},{0UL,0x22L},{0UL,0x22L}},{{0UL,0x22L},{0UL,0x22L},{0UL,0x22L},{0UL,0x22L}},{{0UL,0x22L},{0UL,0x22L},{0UL,0x22L},{0UL,0x22L}}};
                int32_t l_341[7] = {0x6E78ADC5L,0x6E78ADC5L,0x6E78ADC5L,0x6E78ADC5L,0x6E78ADC5L,0x6E78ADC5L,0x6E78ADC5L};
                struct S0 l_349 = {1L};
                int i, j, k;
                if ((*p_56))
                    break;
                for (l_301 = 0; (l_301 > (-11)); l_301--)
                { /* block id: 124 */
                    int8_t l_311[10];
                    uint8_t *l_330 = &l_294;
                    int16_t *l_332 = &p_885->g_239;
                    int32_t l_343 = (-1L);
                    struct S0 *l_348[6];
                    int32_t l_355 = 0x40735C37L;
                    int32_t l_357 = 4L;
                    int32_t l_361 = (-6L);
                    int32_t l_363[2];
                    int i;
                    for (i = 0; i < 10; i++)
                        l_311[i] = 1L;
                    for (i = 0; i < 6; i++)
                        l_348[i] = &p_885->g_49;
                    for (i = 0; i < 2; i++)
                        l_363[i] = 1L;
                    if ((safe_mul_func_int16_t_s_s((safe_mod_func_int32_t_s_s(0x62E7E911L, ((*p_56) = ((l_311[1] == ((safe_add_func_int64_t_s_s((p_885->g_97 > (((safe_unary_minus_func_uint64_t_u((p_885->g_225[0] , ((safe_unary_minus_func_int64_t_s(((l_333 |= (safe_add_func_int16_t_s_s((l_304 || ((((*l_332) ^= (safe_sub_func_int16_t_s_s((p_53 > p_53), (((safe_add_func_uint8_t_u_u(((*l_330) |= (safe_div_func_uint32_t_u_u((safe_mod_func_uint16_t_u_u((((8UL || (((safe_sub_func_uint32_t_u_u((l_328 , l_311[0]), p_885->g_29)) > l_329[0][0][0]) > 65535UL)) && 0L) , FAKE_DIVERGE(p_885->group_0_offset, get_group_id(0), 10)), p_54)), 0x5C3242A6L))), p_885->g_23)) , l_328) || p_885->g_331)))) || 1L) ^ p_55)), FAKE_DIVERGE(p_885->group_1_offset, get_group_id(1), 10)))) < p_885->g_99))) ^ 0x130C0541L)))) , (*p_885->g_213)) | (-1L))), p_885->g_49.f0)) > 1L)) & 0x65D321F0CD58444DL)))), 1L)))
                    { /* block id: 129 */
                        int16_t l_334 = (-1L);
                        if (l_334)
                            break;
                    }
                    else
                    { /* block id: 131 */
                        uint64_t l_335 = 9UL;
                        int32_t l_339 = 0x02735C65L;
                        --l_335;
                        (*l_80) = (*l_104);
                        l_344++;
                    }
                    l_349 = l_347;
                    for (p_53 = 0; (p_53 <= 1); p_53 += 1)
                    { /* block id: 139 */
                        int32_t l_354 = 2L;
                        int32_t l_358 = (-5L);
                        int32_t l_360[5][8] = {{0x6399C612L,0x6399C612L,7L,(-1L),(-1L),(-1L),7L,0x6399C612L},{0x6399C612L,0x6399C612L,7L,(-1L),(-1L),(-1L),7L,0x6399C612L},{0x6399C612L,0x6399C612L,7L,(-1L),(-1L),(-1L),7L,0x6399C612L},{0x6399C612L,0x6399C612L,7L,(-1L),(-1L),(-1L),7L,0x6399C612L},{0x6399C612L,0x6399C612L,7L,(-1L),(-1L),(-1L),7L,0x6399C612L}};
                        int i, j, k;
                        l_350 = (void*)0;
                        l_364--;
                    }
                }
                (*l_80) = &l_356;
            }
            else
            { /* block id: 145 */
                uint32_t l_367 = 0UL;
                --l_367;
                if ((*p_56))
                    continue;
                l_370 ^= 1L;
            }
        }
        (*p_56) = (&p_885->g_49 == (void*)0);
    }
    else
    { /* block id: 188 */
        uint32_t l_468 = 0UL;
        l_468 = ((&p_885->g_58 == ((*l_78) = &p_885->g_109[2])) , (*p_56));
        return p_54;
    }
    return p_53;
}


/* ------------------------------------------ */
/* 
 * reads : p_885->g_99 p_885->g_49.f0 p_885->g_32 p_885->g_109 p_885->g_106 p_885->g_108 p_885->g_159 p_885->g_58 p_885->g_167 p_885->g_164 p_885->g_268
 * writes: p_885->g_99 p_885->g_119 p_885->g_159 p_885->g_164 p_885->g_49.f0 p_885->g_269
 */
uint64_t  func_66(int32_t * p_67, int64_t  p_68, union U1  p_69, union U1  p_70, int8_t * p_71, struct S2 * p_885)
{ /* block id: 42 */
    uint8_t l_113 = 0xA2L;
    int64_t *l_117 = (void*)0;
    int64_t **l_116 = &l_117;
    int64_t ***l_118[1];
    struct S0 l_121 = {-6L};
    struct S0 *l_122[1];
    struct S0 l_123 = {7L};
    struct S0 l_124 = {-1L};
    int8_t l_139 = 0x5EL;
    int32_t l_227 = 0x32F8C453L;
    uint16_t l_271 = 0x96B0L;
    int32_t l_278 = 0x07CB16B7L;
    int32_t l_279 = (-1L);
    int32_t l_280 = 0x74625418L;
    int8_t l_286 = (-2L);
    int i;
    for (i = 0; i < 1; i++)
        l_118[i] = &l_116;
    for (i = 0; i < 1; i++)
        l_122[i] = &p_885->g_49;
    for (p_885->g_99 = 0; (p_885->g_99 < 31); p_885->g_99 = safe_add_func_uint32_t_u_u(p_885->g_99, 1))
    { /* block id: 45 */
        int32_t *l_112[9][4] = {{&p_885->g_29,(void*)0,&p_885->g_23,(void*)0},{&p_885->g_29,(void*)0,&p_885->g_23,(void*)0},{&p_885->g_29,(void*)0,&p_885->g_23,(void*)0},{&p_885->g_29,(void*)0,&p_885->g_23,(void*)0},{&p_885->g_29,(void*)0,&p_885->g_23,(void*)0},{&p_885->g_29,(void*)0,&p_885->g_23,(void*)0},{&p_885->g_29,(void*)0,&p_885->g_23,(void*)0},{&p_885->g_29,(void*)0,&p_885->g_23,(void*)0},{&p_885->g_29,(void*)0,&p_885->g_23,(void*)0}};
        int i, j;
        if ((*p_67))
            break;
        l_113--;
    }
    p_885->g_119 = l_116;
    l_124 = (l_123 = l_121);
    if ((*p_67))
    { /* block id: 52 */
        uint8_t l_129 = 250UL;
        uint8_t *l_135 = &l_113;
        int16_t l_138 = 0x4720L;
        int32_t l_154 = 0L;
        int32_t l_157[4] = {(-8L),(-8L),(-8L),(-8L)};
        struct S0 *l_181 = &p_885->g_49;
        int32_t l_236 = 0x499A0579L;
        int32_t *l_284 = &l_157[1];
        int32_t *l_285[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint16_t l_287 = 3UL;
        int i;
        l_139 = ((safe_lshift_func_int8_t_s_s(((((safe_rshift_func_uint16_t_u_s(l_129, 8)) , p_68) != ((void*)0 != &p_885->g_109[1])) <= ((safe_mul_func_uint8_t_u_u(l_124.f0, (safe_rshift_func_uint16_t_u_u((((--(*l_135)) <= (*p_71)) , (((l_129 ^ p_885->g_109[1]) || (p_885->g_106[0] , p_68)) , l_138)), p_68)))) > (*p_67))), 5)) > (*p_885->g_108));
        if (((safe_rshift_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u(((safe_div_func_uint8_t_u_u(((*p_885->g_108) && (safe_sub_func_uint32_t_u_u((safe_sub_func_uint8_t_u_u(((l_154 = (safe_lshift_func_int16_t_s_u((0x81CAAAA3L <= (0x74C7L != (p_885->g_108 != (void*)0))), 9))) ^ (*p_71)), (*p_71))), (((l_157[2] = ((l_123.f0 == ((safe_div_func_int16_t_s_s(l_138, 6L)) || GROUP_DIVERGE(0, 1))) > l_138)) == 0x02DCD109C4FFD0F0L) == FAKE_DIVERGE(p_885->local_2_offset, get_local_id(2), 10))))), (*p_885->g_108))) ^ l_139), l_123.f0)) >= l_129), 0)) | 0x223E10E113701F4EL))
        { /* block id: 57 */
            int32_t *l_158[10][2];
            int i, j;
            for (i = 0; i < 10; i++)
            {
                for (j = 0; j < 2; j++)
                    l_158[i][j] = &l_123.f0;
            }
            --p_885->g_159[7][4];
        }
        else
        { /* block id: 59 */
            int32_t *l_176 = &l_157[1];
            p_885->g_49.f0 = ((safe_rshift_func_int16_t_s_u((p_885->g_164 = l_129), 5)) ^ p_885->g_109[1]);
            (*l_176) = ((l_121.f0 && ((p_885->g_58 , (void*)0) == &p_885->g_164)) <= (((&l_157[1] == (void*)0) , ((void*)0 != p_885->g_167)) , (safe_mod_func_uint16_t_u_u((safe_div_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((65534UL != 1L), 14)), p_68)), l_124.f0))));
            (*l_176) &= (*p_67);
        }
        for (p_885->g_164 = 0; (p_885->g_164 >= 2); p_885->g_164 = safe_add_func_int16_t_s_s(p_885->g_164, 4))
        { /* block id: 67 */
            uint8_t l_182 = 0xF3L;
            struct S0 l_187 = {0x6970B5AEL};
            uint16_t l_204[1][8][3] = {{{0x452AL,1UL,0x452AL},{0x452AL,1UL,0x452AL},{0x452AL,1UL,0x452AL},{0x452AL,1UL,0x452AL},{0x452AL,1UL,0x452AL},{0x452AL,1UL,0x452AL},{0x452AL,1UL,0x452AL},{0x452AL,1UL,0x452AL}}};
            int32_t l_226[5][6][5] = {{{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L}},{{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L}},{{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L}},{{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L}},{{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L},{0x0AEBE663L,0x33E3A31EL,0x3C30B2D5L,0x23DB1C6AL,1L}}};
            int i, j, k;
            (1 + 1);
        }
        --l_287;
    }
    else
    { /* block id: 111 */
        (*p_885->g_268) = p_67;
    }
    return p_885->g_109[6];
}


/* ------------------------------------------ */
/* 
 * reads : p_885->g_86 p_885->g_58 p_885->g_3
 * writes: p_885->g_86 p_885->g_58 p_885->g_97 p_885->g_99 p_885->g_83
 */
int32_t * func_72(int8_t * p_73, int8_t * p_74, int8_t * p_75, struct S2 * p_885)
{ /* block id: 22 */
    int32_t *l_84[4] = {&p_885->g_49.f0,&p_885->g_49.f0,&p_885->g_49.f0,&p_885->g_49.f0};
    int16_t l_85 = (-1L);
    struct S0 l_89 = {0x4B502D48L};
    struct S0 *l_90 = &l_89;
    int i;
    p_885->g_86--;
    (*l_90) = l_89;
    for (p_885->g_58 = 25; (p_885->g_58 < 25); p_885->g_58++)
    { /* block id: 27 */
        uint64_t l_95 = 1UL;
        int64_t *l_96 = &p_885->g_97;
        uint16_t *l_98 = &p_885->g_99;
        int32_t l_100[9] = {0x094D0414L,0x094D0414L,0x094D0414L,0x094D0414L,0x094D0414L,0x094D0414L,0x094D0414L,0x094D0414L,0x094D0414L};
        int i;
        l_100[0] = (safe_mul_func_uint16_t_u_u(((*l_98) = (p_885->g_3 > ((*l_96) = l_95))), FAKE_DIVERGE(p_885->global_0_offset, get_global_id(0), 10)));
        return l_84[1];
    }
    for (p_885->g_58 = (-9); (p_885->g_58 > (-30)); p_885->g_58 = safe_sub_func_int8_t_s_s(p_885->g_58, 4))
    { /* block id: 35 */
        int32_t **l_103 = &l_84[2];
        for (p_885->g_83 = 0; p_885->g_83 < 4; p_885->g_83 += 1)
        {
            l_84[p_885->g_83] = &p_885->g_32;
        }
        (*l_103) = l_84[1];
    }
    return &p_885->g_32;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S2 c_886;
    struct S2* p_885 = &c_886;
    struct S2 c_887 = {
        0x3E4438BEL, // p_885->g_3
        1L, // p_885->g_23
        (-3L), // p_885->g_26
        {0x7703C576L,0x7703C576L,0x7703C576L,0x7703C576L}, // p_885->g_27
        {{0L,0x11FC80AEL,0L},{0L,0x11FC80AEL,0L},{0L,0x11FC80AEL,0L},{0L,0x11FC80AEL,0L}}, // p_885->g_28
        0x39338886L, // p_885->g_29
        0x72920796L, // p_885->g_32
        {0L}, // p_885->g_49
        {{&p_885->g_49,&p_885->g_49,(void*)0,&p_885->g_49,&p_885->g_49,&p_885->g_49,(void*)0,&p_885->g_49},{&p_885->g_49,&p_885->g_49,(void*)0,&p_885->g_49,&p_885->g_49,&p_885->g_49,(void*)0,&p_885->g_49},{&p_885->g_49,&p_885->g_49,(void*)0,&p_885->g_49,&p_885->g_49,&p_885->g_49,(void*)0,&p_885->g_49},{&p_885->g_49,&p_885->g_49,(void*)0,&p_885->g_49,&p_885->g_49,&p_885->g_49,(void*)0,&p_885->g_49}}, // p_885->g_48
        0L, // p_885->g_58
        3UL, // p_885->g_83
        0x3AA7A66BL, // p_885->g_86
        3L, // p_885->g_97
        0xAF70L, // p_885->g_99
        {{0}}, // p_885->g_106
        {0x47L,0x47L,0x47L,0x47L,0x47L,0x47L,0x47L}, // p_885->g_109
        &p_885->g_109[1], // p_885->g_108
        {{&p_885->g_97,&p_885->g_97,&p_885->g_97,&p_885->g_97,&p_885->g_97},{&p_885->g_97,&p_885->g_97,&p_885->g_97,&p_885->g_97,&p_885->g_97},{&p_885->g_97,&p_885->g_97,&p_885->g_97,&p_885->g_97,&p_885->g_97},{&p_885->g_97,&p_885->g_97,&p_885->g_97,&p_885->g_97,&p_885->g_97},{&p_885->g_97,&p_885->g_97,&p_885->g_97,&p_885->g_97,&p_885->g_97}}, // p_885->g_120
        &p_885->g_120[1][1], // p_885->g_119
        0x3F5C28DFL, // p_885->g_134
        {{0xC8BF5EF5L,0xB545DD45L,0UL,0x3C8486E1L,0UL,0xB545DD45L,0xC8BF5EF5L,0xBBF11896L,0UL},{0xC8BF5EF5L,0xB545DD45L,0UL,0x3C8486E1L,0UL,0xB545DD45L,0xC8BF5EF5L,0xBBF11896L,0UL},{0xC8BF5EF5L,0xB545DD45L,0UL,0x3C8486E1L,0UL,0xB545DD45L,0xC8BF5EF5L,0xBBF11896L,0UL},{0xC8BF5EF5L,0xB545DD45L,0UL,0x3C8486E1L,0UL,0xB545DD45L,0xC8BF5EF5L,0xBBF11896L,0UL},{0xC8BF5EF5L,0xB545DD45L,0UL,0x3C8486E1L,0UL,0xB545DD45L,0xC8BF5EF5L,0xBBF11896L,0UL},{0xC8BF5EF5L,0xB545DD45L,0UL,0x3C8486E1L,0UL,0xB545DD45L,0xC8BF5EF5L,0xBBF11896L,0UL},{0xC8BF5EF5L,0xB545DD45L,0UL,0x3C8486E1L,0UL,0xB545DD45L,0xC8BF5EF5L,0xBBF11896L,0UL},{0xC8BF5EF5L,0xB545DD45L,0UL,0x3C8486E1L,0UL,0xB545DD45L,0xC8BF5EF5L,0xBBF11896L,0UL},{0xC8BF5EF5L,0xB545DD45L,0UL,0x3C8486E1L,0UL,0xB545DD45L,0xC8BF5EF5L,0xBBF11896L,0UL}}, // p_885->g_159
        65535UL, // p_885->g_164
        {{{0x28682C8CL,0x1D41956CL,0x28682C8CL},{0x28682C8CL,0x1D41956CL,0x28682C8CL}},{{0x28682C8CL,0x1D41956CL,0x28682C8CL},{0x28682C8CL,0x1D41956CL,0x28682C8CL}},{{0x28682C8CL,0x1D41956CL,0x28682C8CL},{0x28682C8CL,0x1D41956CL,0x28682C8CL}},{{0x28682C8CL,0x1D41956CL,0x28682C8CL},{0x28682C8CL,0x1D41956CL,0x28682C8CL}},{{0x28682C8CL,0x1D41956CL,0x28682C8CL},{0x28682C8CL,0x1D41956CL,0x28682C8CL}}}, // p_885->g_169
        &p_885->g_169[1][1][2], // p_885->g_168
        &p_885->g_168, // p_885->g_167
        &p_885->g_99, // p_885->g_213
        {4294967295UL}, // p_885->g_225
        0x76FBL, // p_885->g_239
        65532UL, // p_885->g_243
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_885->g_254
        (void*)0, // p_885->g_264
        &p_885->g_29, // p_885->g_269
        &p_885->g_269, // p_885->g_268
        &p_885->g_268, // p_885->g_267
        {{{&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267},{&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267}},{{&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267},{&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267}},{{&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267},{&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267}},{{&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267},{&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267,&p_885->g_267}}}, // p_885->g_266
        0x6B76L, // p_885->g_331
        0x5464L, // p_885->g_403
        {{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}}, // p_885->g_405
        (-1L), // p_885->g_407
        0xEE49B540L, // p_885->g_436
        &p_885->g_120[1][1], // p_885->g_474
        0xC3L, // p_885->g_503
        {{{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_885->g_106[0],&p_885->g_106[0],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_885->g_545
        {&p_885->g_545[1][4][2],&p_885->g_545[1][4][2],&p_885->g_545[2][7][5],&p_885->g_545[1][4][2],&p_885->g_545[1][4][2],&p_885->g_545[1][4][2],&p_885->g_545[1][4][2],&p_885->g_545[2][7][5],&p_885->g_545[1][4][2],&p_885->g_545[1][4][2]}, // p_885->g_544
        {18446744073709551612UL,18446744073709551612UL,18446744073709551612UL,18446744073709551612UL,18446744073709551612UL}, // p_885->g_548
        &p_885->g_503, // p_885->g_589
        {&p_885->g_589,&p_885->g_589,&p_885->g_589,&p_885->g_589,&p_885->g_589,&p_885->g_589,&p_885->g_589,&p_885->g_589}, // p_885->g_588
        {{&p_885->g_436,(void*)0,&p_885->g_436,(void*)0,(void*)0,(void*)0},{&p_885->g_436,(void*)0,&p_885->g_436,(void*)0,(void*)0,(void*)0},{&p_885->g_436,(void*)0,&p_885->g_436,(void*)0,(void*)0,(void*)0},{&p_885->g_436,(void*)0,&p_885->g_436,(void*)0,(void*)0,(void*)0},{&p_885->g_436,(void*)0,&p_885->g_436,(void*)0,(void*)0,(void*)0},{&p_885->g_436,(void*)0,&p_885->g_436,(void*)0,(void*)0,(void*)0}}, // p_885->g_647
        0x02L, // p_885->g_686
        0x5259741CL, // p_885->g_748
        4UL, // p_885->g_762
        (-1L), // p_885->g_798
        0xAAL, // p_885->g_833
        0, // p_885->v_collective
        sequence_input[get_global_id(0)], // p_885->global_0_offset
        sequence_input[get_global_id(1)], // p_885->global_1_offset
        sequence_input[get_global_id(2)], // p_885->global_2_offset
        sequence_input[get_local_id(0)], // p_885->local_0_offset
        sequence_input[get_local_id(1)], // p_885->local_1_offset
        sequence_input[get_local_id(2)], // p_885->local_2_offset
        sequence_input[get_group_id(0)], // p_885->group_0_offset
        sequence_input[get_group_id(1)], // p_885->group_1_offset
        sequence_input[get_group_id(2)], // p_885->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_886 = c_887;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_885);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_885->g_3, "p_885->g_3", print_hash_value);
    transparent_crc(p_885->g_23, "p_885->g_23", print_hash_value);
    transparent_crc(p_885->g_26, "p_885->g_26", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_885->g_27[i], "p_885->g_27[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_885->g_28[i][j], "p_885->g_28[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_885->g_29, "p_885->g_29", print_hash_value);
    transparent_crc(p_885->g_32, "p_885->g_32", print_hash_value);
    transparent_crc(p_885->g_49.f0, "p_885->g_49.f0", print_hash_value);
    transparent_crc(p_885->g_58, "p_885->g_58", print_hash_value);
    transparent_crc(p_885->g_83, "p_885->g_83", print_hash_value);
    transparent_crc(p_885->g_86, "p_885->g_86", print_hash_value);
    transparent_crc(p_885->g_97, "p_885->g_97", print_hash_value);
    transparent_crc(p_885->g_99, "p_885->g_99", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_885->g_109[i], "p_885->g_109[i]", print_hash_value);

    }
    transparent_crc(p_885->g_134, "p_885->g_134", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_885->g_159[i][j], "p_885->g_159[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_885->g_164, "p_885->g_164", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_885->g_169[i][j][k], "p_885->g_169[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_885->g_225[i], "p_885->g_225[i]", print_hash_value);

    }
    transparent_crc(p_885->g_239, "p_885->g_239", print_hash_value);
    transparent_crc(p_885->g_243, "p_885->g_243", print_hash_value);
    transparent_crc(p_885->g_331, "p_885->g_331", print_hash_value);
    transparent_crc(p_885->g_403, "p_885->g_403", print_hash_value);
    transparent_crc(p_885->g_407, "p_885->g_407", print_hash_value);
    transparent_crc(p_885->g_436, "p_885->g_436", print_hash_value);
    transparent_crc(p_885->g_503, "p_885->g_503", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_885->g_548[i], "p_885->g_548[i]", print_hash_value);

    }
    transparent_crc(p_885->g_686, "p_885->g_686", print_hash_value);
    transparent_crc(p_885->g_748, "p_885->g_748", print_hash_value);
    transparent_crc(p_885->g_762, "p_885->g_762", print_hash_value);
    transparent_crc(p_885->g_798, "p_885->g_798", print_hash_value);
    transparent_crc(p_885->g_833, "p_885->g_833", print_hash_value);
    transparent_crc(p_885->v_collective, "p_885->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
