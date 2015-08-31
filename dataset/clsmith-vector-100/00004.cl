// ---fake_divergence -g 137,12,1 -l 1,1,1
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


// Seed: 4

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int32_t  f0;
   uint32_t  f1;
   volatile uint64_t  f2;
   volatile uint32_t  f3;
   uint8_t  f4;
};

union U1 {
   int8_t * f0;
};

union U2 {
   volatile uint32_t  f0;
   int8_t * f1;
   volatile int8_t * volatile  f2;
   uint64_t  f3;
};

union U3 {
   int64_t  f0;
   volatile int64_t  f1;
   uint8_t  f2;
   volatile uint32_t  f3;
   uint64_t  f4;
};

struct S4 {
    int32_t g_2;
    int32_t g_6;
    int32_t g_9;
    int32_t g_13;
    int8_t g_42;
    int8_t *g_61[3][5][9];
    int8_t * volatile * volatile g_60[5];
    volatile VECTOR(uint64_t, 2) g_108;
    uint8_t g_122;
    int32_t * volatile g_132;
    int64_t g_138[9];
    uint8_t g_146;
    int16_t g_153;
    int32_t * volatile g_154;
    VECTOR(uint8_t, 16) g_198;
    volatile VECTOR(uint64_t, 16) g_201;
    volatile VECTOR(int64_t, 16) g_204;
    VECTOR(int64_t, 8) g_205;
    volatile int32_t g_221;
    volatile int32_t *g_220;
    volatile int32_t **g_219;
    uint16_t g_231;
    int64_t g_233;
    int8_t g_234;
    int8_t g_242;
    volatile int32_t g_245;
    uint64_t g_246;
    volatile union U0 g_262;
    volatile union U2 g_264;
    volatile union U3 g_272;
    int32_t *g_277;
    int32_t **g_276;
    int32_t ***g_275;
    uint16_t g_282;
    volatile int8_t g_287;
    volatile uint32_t g_288;
    union U3 g_292;
    union U3 ** volatile g_294;
    union U3 *g_295;
    VECTOR(uint8_t, 2) g_301;
    VECTOR(int16_t, 4) g_339;
    union U0 g_362[4];
    volatile union U0 g_372;
    volatile VECTOR(uint64_t, 4) g_380;
    VECTOR(int8_t, 2) g_387;
    VECTOR(int8_t, 8) g_390;
    volatile VECTOR(int16_t, 2) g_405;
    volatile int16_t g_406;
    uint32_t g_407;
    union U2 g_413;
    volatile VECTOR(int8_t, 4) g_432;
    uint64_t g_454[5];
    VECTOR(int32_t, 16) g_477;
    volatile VECTOR(uint16_t, 4) g_490;
    VECTOR(uint16_t, 16) g_491;
    int32_t g_498;
    volatile uint32_t *g_510;
    volatile uint32_t **g_509;
    volatile union U0 g_516;
    volatile union U2 g_541[4];
    volatile VECTOR(uint16_t, 16) g_559;
    VECTOR(uint16_t, 2) g_562;
    VECTOR(uint16_t, 2) g_563;
    VECTOR(int16_t, 16) g_568;
    VECTOR(int8_t, 8) g_571;
    VECTOR(int8_t, 16) g_572;
    VECTOR(int8_t, 16) g_578;
    VECTOR(int8_t, 8) g_581;
    VECTOR(int8_t, 8) g_583;
    VECTOR(int8_t, 16) g_585;
    union U3 ***g_641;
    int64_t g_647;
    VECTOR(uint32_t, 8) g_666;
    VECTOR(uint32_t, 16) g_671;
    union U0 g_682;
    VECTOR(int32_t, 8) g_693;
    volatile VECTOR(uint8_t, 8) g_724;
    volatile uint8_t g_745;
    union U1 *g_755;
    union U1 ** volatile g_754;
    uint64_t g_785;
    int32_t g_803;
    volatile VECTOR(uint16_t, 2) g_816;
    VECTOR(int64_t, 4) g_835;
    VECTOR(uint32_t, 4) g_847;
    volatile VECTOR(uint32_t, 16) g_848;
    VECTOR(int64_t, 16) g_856;
    int32_t g_858;
    volatile uint16_t g_861;
    VECTOR(uint64_t, 16) g_875;
    volatile VECTOR(uint64_t, 2) g_876;
    volatile VECTOR(int8_t, 2) g_917;
    VECTOR(uint8_t, 16) g_920;
    VECTOR(uint8_t, 4) g_921;
    volatile VECTOR(int64_t, 2) g_963;
    int32_t g_970;
    uint32_t g_974[10][8];
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
uint32_t  func_1(struct S4 * p_985);
uint32_t  func_19(int8_t * p_20, int32_t * p_21, int8_t * p_22, struct S4 * p_985);
int8_t * func_23(int32_t  p_24, int32_t * p_25, int16_t  p_26, int8_t * p_27, struct S4 * p_985);
int32_t * func_29(uint32_t  p_30, int8_t * p_31, int8_t * p_32, int32_t  p_33, uint64_t  p_34, struct S4 * p_985);
int32_t  func_37(int8_t * p_38, uint64_t  p_39, int8_t * p_40, struct S4 * p_985);
int8_t * func_43(int8_t  p_44, int8_t * p_45, int8_t * p_46, int8_t  p_47, struct S4 * p_985);
int8_t * func_50(int8_t  p_51, struct S4 * p_985);
int8_t  func_52(uint32_t  p_53, uint32_t  p_54, uint32_t  p_55, int8_t * p_56, int8_t  p_57, struct S4 * p_985);
uint16_t  func_76(uint64_t  p_77, int8_t ** p_78, struct S4 * p_985);
VECTOR(int16_t, 2)  func_86(int8_t ** p_87, int64_t  p_88, struct S4 * p_985);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_985->g_2 p_985->g_13 p_985->g_205 p_985->g_407 p_985->g_198 p_985->g_583 p_985->g_9 p_985->g_219 p_985->g_220 p_985->g_221 p_985->g_275 p_985->g_276 p_985->g_42 p_985->g_974 p_985->g_204 p_985->g_390 p_985->g_970
 * writes: p_985->g_2 p_985->g_6 p_985->g_9 p_985->g_13 p_985->g_407 p_985->g_292.f0 p_985->g_153 p_985->g_221 p_985->g_277 p_985->g_498 p_985->g_974
 */
uint32_t  func_1(struct S4 * p_985)
{ /* block id: 4 */
    VECTOR(uint32_t, 16) l_5 = (VECTOR(uint32_t, 16))(0xFAC12265L, (VECTOR(uint32_t, 4))(0xFAC12265L, (VECTOR(uint32_t, 2))(0xFAC12265L, 9UL), 9UL), 9UL, 0xFAC12265L, 9UL, (VECTOR(uint32_t, 2))(0xFAC12265L, 9UL), (VECTOR(uint32_t, 2))(0xFAC12265L, 9UL), 0xFAC12265L, 9UL, 0xFAC12265L, 9UL);
    int32_t *l_977 = &p_985->g_970;
    VECTOR(int32_t, 16) l_984 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x54A0F7EAL), 0x54A0F7EAL), 0x54A0F7EAL, (-1L), 0x54A0F7EAL, (VECTOR(int32_t, 2))((-1L), 0x54A0F7EAL), (VECTOR(int32_t, 2))((-1L), 0x54A0F7EAL), (-1L), 0x54A0F7EAL, (-1L), 0x54A0F7EAL);
    int i;
    for (p_985->g_2 = 0; (p_985->g_2 >= 23); p_985->g_2 = safe_add_func_int64_t_s_s(p_985->g_2, 8))
    { /* block id: 7 */
        uint32_t l_28[1];
        VECTOR(int16_t, 8) l_35 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-7L)), (-7L)), (-7L), (-1L), (-7L));
        int8_t *l_41[8];
        int8_t *l_62[7][8][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_28[i] = 0xB0420410L;
        for (i = 0; i < 8; i++)
            l_41[i] = &p_985->g_42;
        if (l_5.sa)
            break;
        for (p_985->g_6 = 0; (p_985->g_6 == (-15)); p_985->g_6--)
        { /* block id: 11 */
            int16_t l_63 = 0L;
            uint64_t l_870 = 0xDBF5E71626534E52L;
            int8_t *l_913 = &p_985->g_42;
            for (p_985->g_9 = (-29); (p_985->g_9 >= 16); p_985->g_9++)
            { /* block id: 14 */
                int32_t *l_12 = &p_985->g_13;
                VECTOR(uint32_t, 4) l_18 = (VECTOR(uint32_t, 4))(0xC8B166C1L, (VECTOR(uint32_t, 2))(0xC8B166C1L, 0x2E3CA369L), 0x2E3CA369L);
                int8_t *l_48 = &p_985->g_42;
                int8_t **l_49 = &l_48;
                int8_t **l_869 = &p_985->g_61[2][3][1];
                uint32_t *l_912 = &p_985->g_407;
                int i;
                (*l_12) |= (-1L);
                (**p_985->g_219) = (safe_div_func_int32_t_s_s(((safe_div_func_uint32_t_u_u((~(((VECTOR(uint32_t, 16))(l_18.ywzwxyxzwzywwyyz)).s3 <= (((func_19(func_23(l_28[0], func_29(((*l_912) = ((((VECTOR(int16_t, 2))(l_35.s55)).even >= (((*l_12) = ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))((0x3B19D88CL ^ ((safe_unary_minus_func_uint64_t_u((*l_12))) , (((func_37(l_41[6], p_985->g_42, func_43(((((*l_49) = l_48) != ((*l_869) = func_50(func_52(p_985->g_6, (safe_rshift_func_uint8_t_u_u((((void*)0 == p_985->g_60[4]) >= 0xD97B6EB5L), p_985->g_42)), p_985->g_2, l_62[5][2][0], l_63, p_985), p_985))) ^ 1UL), l_41[4], &p_985->g_234, l_870, p_985), p_985) | (-1L)) && (*l_12)) , 4294967294UL))), 0x00L, ((VECTOR(int8_t, 4))(1L)), (-1L), 0x37L)).s2 && 252UL), ((VECTOR(int8_t, 2))(0x6CL)), (-1L))).z) < p_985->g_205.s6)) < p_985->g_407)), &p_985->g_234, l_913, l_5.sb, l_28[0], p_985), p_985->g_583.s3, l_913, p_985), l_977, l_913, p_985) <= (-9L)) >= p_985->g_390.s5) != p_985->g_390.s0))), l_870)) || 0x04CEDF2E52A9CAAAL), l_63));
            }
        }
        (*p_985->g_220) = ((VECTOR(int32_t, 4))(l_984.s4ea7)).z;
    }
    return (*l_977);
}


/* ------------------------------------------ */
/* 
 * reads : p_985->g_204
 * writes:
 */
uint32_t  func_19(int8_t * p_20, int32_t * p_21, int8_t * p_22, struct S4 * p_985)
{ /* block id: 315 */
    int32_t *l_978 = (void*)0;
    int32_t *l_979[3];
    int32_t l_980 = 1L;
    uint64_t l_981[7][9] = {{0UL,1UL,0xEBEB8F4742996DA4L,1UL,0UL,0UL,1UL,0xEBEB8F4742996DA4L,1UL},{0UL,1UL,0xEBEB8F4742996DA4L,1UL,0UL,0UL,1UL,0xEBEB8F4742996DA4L,1UL},{0UL,1UL,0xEBEB8F4742996DA4L,1UL,0UL,0UL,1UL,0xEBEB8F4742996DA4L,1UL},{0UL,1UL,0xEBEB8F4742996DA4L,1UL,0UL,0UL,1UL,0xEBEB8F4742996DA4L,1UL},{0UL,1UL,0xEBEB8F4742996DA4L,1UL,0UL,0UL,1UL,0xEBEB8F4742996DA4L,1UL},{0UL,1UL,0xEBEB8F4742996DA4L,1UL,0UL,0UL,1UL,0xEBEB8F4742996DA4L,1UL},{0UL,1UL,0xEBEB8F4742996DA4L,1UL,0UL,0UL,1UL,0xEBEB8F4742996DA4L,1UL}};
    int i, j;
    for (i = 0; i < 3; i++)
        l_979[i] = &p_985->g_970;
    ++l_981[0][6];
    return p_985->g_204.s9;
}


/* ------------------------------------------ */
/* 
 * reads : p_985->g_292.f0 p_985->g_153 p_985->g_9 p_985->g_219 p_985->g_220 p_985->g_221 p_985->g_275 p_985->g_276 p_985->g_42 p_985->g_13 p_985->g_407 p_985->g_198 p_985->g_974 p_985->g_498
 * writes: p_985->g_292.f0 p_985->g_153 p_985->g_221 p_985->g_277 p_985->g_498 p_985->g_974
 */
int8_t * func_23(int32_t  p_24, int32_t * p_25, int16_t  p_26, int8_t * p_27, struct S4 * p_985)
{ /* block id: 289 */
    VECTOR(int32_t, 16) l_938 = (VECTOR(int32_t, 16))(0x06FD13D8L, (VECTOR(int32_t, 4))(0x06FD13D8L, (VECTOR(int32_t, 2))(0x06FD13D8L, 0x454FA350L), 0x454FA350L), 0x454FA350L, 0x06FD13D8L, 0x454FA350L, (VECTOR(int32_t, 2))(0x06FD13D8L, 0x454FA350L), (VECTOR(int32_t, 2))(0x06FD13D8L, 0x454FA350L), 0x06FD13D8L, 0x454FA350L, 0x06FD13D8L, 0x454FA350L);
    int32_t *l_939 = &p_985->g_6;
    int64_t l_952 = 0x7AAFACF398A0D15CL;
    int8_t *l_956 = (void*)0;
    int8_t l_972 = 7L;
    int16_t l_973 = (-2L);
    int i;
    for (p_985->g_292.f0 = 0; (p_985->g_292.f0 >= (-9)); --p_985->g_292.f0)
    { /* block id: 292 */
        for (p_985->g_153 = 0; (p_985->g_153 <= (-14)); p_985->g_153 = safe_sub_func_uint32_t_u_u(p_985->g_153, 1))
        { /* block id: 295 */
            int32_t l_937 = 0x24DAB529L;
            l_937 |= ((*p_25) >= 0xF2E1CB6CL);
            if ((*p_25))
                break;
            return &p_985->g_242;
        }
        if ((*p_25))
            break;
        (**p_985->g_219) |= ((VECTOR(int32_t, 16))(l_938.sffac595e94cbd652)).s3;
    }
lbl_971:
    (**p_985->g_275) = l_939;
    (*p_985->g_276) = l_939;
    for (p_985->g_498 = (-20); (p_985->g_498 == (-10)); ++p_985->g_498)
    { /* block id: 307 */
        int32_t l_942 = 0x64D7EC40L;
        int32_t *l_943 = (void*)0;
        int32_t *l_944 = (void*)0;
        int32_t *l_945 = &l_942;
        int32_t *l_946 = &p_985->g_803;
        int32_t *l_947 = (void*)0;
        int32_t *l_948 = (void*)0;
        int32_t *l_949 = (void*)0;
        int32_t *l_950[10][9][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
        int16_t l_951 = 0x375CL;
        uint32_t l_953 = 4294967295UL;
        int64_t *l_964 = (void*)0;
        int64_t *l_965 = (void*)0;
        int64_t *l_966 = (void*)0;
        int64_t *l_967 = &l_952;
        int i, j, k;
        --l_953;
        l_939 = func_29(p_24, l_956, p_27, (safe_sub_func_uint32_t_u_u(((*p_27) || ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 16))((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 8))(p_985->g_963.xyyyyyxx)).s4566353625544275, (int64_t)((*l_967) = 0x3658B6688924C0E4L)))).s7, p_24)), 8UL, (safe_sub_func_int64_t_s_s((*l_939), p_985->g_970)), ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))((*l_946), 0x18L, ((VECTOR(uint8_t, 2))(0x45L)), 0xDEL, ((VECTOR(uint8_t, 2))(0x5CL)), 0xC7L)) | ((VECTOR(uint8_t, 8))(0x24L))))), p_24, ((VECTOR(uint8_t, 2))(252UL)), 0xD2L, 0x5CL)), ((VECTOR(uint8_t, 16))(1UL))))).sb0 + ((VECTOR(uint8_t, 2))(4UL))))).hi), p_985->g_13)), p_24, p_985);
        if (p_985->g_9)
            goto lbl_971;
        p_985->g_974[1][1]++;
    }
    return &p_985->g_234;
}


/* ------------------------------------------ */
/* 
 * reads : p_985->g_917 p_985->g_875 p_985->g_920 p_985->g_921 p_985->g_264.f0 p_985->g_153 p_985->g_647 p_985->g_234 p_985->g_407 p_985->g_198
 * writes: p_985->g_153 p_985->g_682.f4
 */
int32_t * func_29(uint32_t  p_30, int8_t * p_31, int8_t * p_32, int32_t  p_33, uint64_t  p_34, struct S4 * p_985)
{ /* block id: 284 */
    VECTOR(int16_t, 16) l_916 = (VECTOR(int16_t, 16))(0x5C8CL, (VECTOR(int16_t, 4))(0x5C8CL, (VECTOR(int16_t, 2))(0x5C8CL, 6L), 6L), 6L, 0x5C8CL, 6L, (VECTOR(int16_t, 2))(0x5C8CL, 6L), (VECTOR(int16_t, 2))(0x5C8CL, 6L), 0x5C8CL, 6L, 0x5C8CL, 6L);
    uint32_t *l_922 = (void*)0;
    int16_t *l_925 = &p_985->g_153;
    uint8_t *l_930 = &p_985->g_682.f4;
    int8_t l_931 = 0x73L;
    int32_t l_932 = 9L;
    int i;
    l_932 |= ((((safe_div_func_int16_t_s_s((((((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 4))(l_916.sff88)), ((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 4))(p_985->g_917.xxxx)), ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(250UL, p_985->g_875.s0, 0x78L, 1UL)).odd + ((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 4))(p_985->g_920.sb0b1)).xxzzzywx, ((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 16))(p_985->g_921.wzwxyxxxwywywzwx)).s2eef, ((VECTOR(uint8_t, 16))(254UL, 0x1FL, ((p_985->g_264.f0 && (l_922 == l_922)) < ((((((safe_add_func_int32_t_s_s(0x3AA17A48L, (65535UL | ((VECTOR(int16_t, 8))(((*l_925) ^= p_34), (((safe_mul_func_int16_t_s_s(((safe_sub_func_uint16_t_u_u((p_985->g_647 , (((*l_930) = p_33) >= (*p_31))), 0x4EF8L)) == p_34), 0xB242L)) ^ p_985->g_407) ^ 251UL), ((VECTOR(int16_t, 4))(0x11DDL)), (-10L), (-1L))).s0))) != GROUP_DIVERGE(1, 1)) ^ p_33) || 0L) < l_931) || 0xD814L)), ((VECTOR(uint8_t, 2))(253UL)), ((VECTOR(uint8_t, 8))(247UL)), 0x2DL, 0xD9L, 6UL)).sff3b, ((VECTOR(uint8_t, 4))(0xDBL))))).xywwxwxy, ((VECTOR(uint8_t, 8))(1UL))))).s33))).xxxy))).zyzwzzxwyxxyyyzz >= ((VECTOR(int16_t, 16))(0x0354L))))), ((VECTOR(int16_t, 16))(0x4E32L))))).sb12f <= ((VECTOR(int16_t, 4))(0x5286L))))).wzxzwxzyyxwyywzy, ((VECTOR(int16_t, 16))(0x0A90L)), ((VECTOR(int16_t, 16))(4L))))).s897f))).x == p_985->g_407) > p_33) && p_985->g_198.s4), 65531UL)) || l_916.s8) , l_916.sf) & p_34);
    return &p_985->g_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_985->g_406 p_985->g_856 p_985->g_42 p_985->g_276
 * writes: p_985->g_277
 */
int32_t  func_37(int8_t * p_38, uint64_t  p_39, int8_t * p_40, struct S4 * p_985)
{ /* block id: 276 */
    int8_t l_887 = 0x42L;
    VECTOR(uint8_t, 16) l_892 = (VECTOR(uint8_t, 16))(0xEAL, (VECTOR(uint8_t, 4))(0xEAL, (VECTOR(uint8_t, 2))(0xEAL, 0x59L), 0x59L), 0x59L, 0xEAL, 0x59L, (VECTOR(uint8_t, 2))(0xEAL, 0x59L), (VECTOR(uint8_t, 2))(0xEAL, 0x59L), 0xEAL, 0x59L, 0xEAL, 0x59L);
    uint64_t *l_899[5][10][4] = {{{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]}},{{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]}},{{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]}},{{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]}},{{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]},{&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4],&p_985->g_454[4]}}};
    int16_t *l_902 = (void*)0;
    int32_t l_903 = 0x799A3E80L;
    int32_t l_904 = 1L;
    int32_t *l_905 = &l_904;
    int32_t *l_906 = &p_985->g_13;
    int32_t *l_907 = (void*)0;
    int32_t *l_908[6][6][2] = {{{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9}},{{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9}},{{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9}},{{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9}},{{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9}},{{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9},{&p_985->g_858,&p_985->g_9}}};
    uint8_t l_909 = 5UL;
    int i, j, k;
    l_904 = (p_985->g_406 >= (l_903 |= (safe_add_func_uint16_t_u_u(((((&p_38 != (void*)0) , (l_887 > ((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(l_892.sf5)) + ((VECTOR(uint8_t, 8))((safe_rshift_func_uint16_t_u_s((safe_lshift_func_uint8_t_u_u(((((((safe_sub_func_int64_t_s_s(((void*)0 == l_899[1][6][3]), (safe_mul_func_uint8_t_u_u(0x81L, (((((0x415100F0L < 0x741E5FF4L) && p_985->g_856.s3) == GROUP_DIVERGE(1, 1)) , l_902) != &p_985->g_153))))) >= (-1L)) , l_887) >= (-4L)) && p_39) > GROUP_DIVERGE(1, 1)), l_892.s6)), p_39)), 251UL, ((VECTOR(uint8_t, 2))(0UL)), ((VECTOR(uint8_t, 2))(255UL)), 0x32L, 3UL)).s52))).xxxxyyyyxyyxyyyy, ((VECTOR(uint8_t, 16))(1UL))))).s3, GROUP_DIVERGE(1, 1))) , (*p_38)))) || p_39) >= 0x72L), 0xE1BFL))));
    l_909++;
    (*p_985->g_276) = &l_903;
    return p_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_985->g_875 p_985->g_876 p_985->g_246 p_985->g_138
 * writes: p_985->g_246 p_985->g_138
 */
int8_t * func_43(int8_t  p_44, int8_t * p_45, int8_t * p_46, int8_t  p_47, struct S4 * p_985)
{ /* block id: 271 */
    uint64_t *l_877 = &p_985->g_246;
    uint32_t *l_880 = (void*)0;
    int64_t *l_883 = &p_985->g_138[1];
    int32_t l_884 = 2L;
    l_884 = ((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(p_985->g_875.s8a)).xxxyyxxy >> ((VECTOR(uint64_t, 2))(p_985->g_876.xy)).xxxyxxyx))).s2, (++(*l_877)))) != (((l_880 == l_880) <= ((*l_883) |= ((safe_rshift_func_uint8_t_u_u(p_47, 0)) , p_44))) != ((FAKE_DIVERGE(p_985->local_1_offset, get_local_id(1), 10) , l_880) != l_880)));
    return &p_985->g_242;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_50(int8_t  p_51, struct S4 * p_985)
{ /* block id: 20 */
    int16_t l_68[4][4] = {{1L,0x5D78L,0x5D78L,1L},{1L,0x5D78L,0x5D78L,1L},{1L,0x5D78L,0x5D78L,1L},{1L,0x5D78L,0x5D78L,1L}};
    VECTOR(int16_t, 8) l_75 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 6L), 6L), 6L, 0L, 6L);
    int32_t *l_80 = &p_985->g_6;
    int32_t **l_79[7] = {&l_80,&l_80,&l_80,&l_80,&l_80,&l_80,&l_80};
    int8_t **l_83 = (void*)0;
    uint32_t *l_862 = &p_985->g_407;
    uint32_t l_863 = 7UL;
    VECTOR(int16_t, 8) l_865 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x78A5L), 0x78A5L), 0x78A5L, 0L, 0x78A5L);
    uint8_t l_866 = 0xCCL;
    int i, j;
    return &p_985->g_234;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_52(uint32_t  p_53, uint32_t  p_54, uint32_t  p_55, int8_t * p_56, int8_t  p_57, struct S4 * p_985)
{ /* block id: 17 */
    int32_t *l_65 = (void*)0;
    int32_t **l_64 = &l_65;
    (*l_64) = (void*)0;
    return p_54;
}


/* ------------------------------------------ */
/* 
 * reads : p_985->g_9 p_985->g_108 p_985->g_2 p_985->g_13 p_985->g_132 p_985->g_122 p_985->g_146 p_985->g_275 p_985->g_276 p_985->g_277 p_985->g_6 p_985->g_220 p_985->g_745 p_985->g_295 p_985->g_583 p_985->g_754 p_985->g_219 p_985->g_647 p_985->g_491 p_985->g_405 p_985->g_666 p_985->g_581 p_985->g_578 p_985->g_231 p_985->g_42 p_985->g_563 p_985->g_816 p_985->g_835 p_985->g_803 p_985->g_242 p_985->g_847 p_985->g_848 p_985->g_559 p_985->g_856 p_985->g_858 p_985->g_861
 * writes: p_985->g_122 p_985->g_13 p_985->g_138 p_985->g_146 p_985->g_153 p_985->g_221 p_985->g_755 p_985->g_277 p_985->g_220 p_985->g_785 p_985->g_491 p_985->g_803 p_985->g_154 p_985->g_233
 */
uint16_t  func_76(uint64_t  p_77, int8_t ** p_78, struct S4 * p_985)
{ /* block id: 21 */
    VECTOR(uint16_t, 4) l_93 = (VECTOR(uint16_t, 4))(3UL, (VECTOR(uint16_t, 2))(3UL, 0x6C96L), 0x6C96L);
    VECTOR(uint64_t, 8) l_102 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x704BE3C25347F8B3L), 0x704BE3C25347F8B3L), 0x704BE3C25347F8B3L, 1UL, 0x704BE3C25347F8B3L);
    VECTOR(uint64_t, 16) l_107 = (VECTOR(uint64_t, 16))(18446744073709551612UL, (VECTOR(uint64_t, 4))(18446744073709551612UL, (VECTOR(uint64_t, 2))(18446744073709551612UL, 0x16D4D43A62FBF910L), 0x16D4D43A62FBF910L), 0x16D4D43A62FBF910L, 18446744073709551612UL, 0x16D4D43A62FBF910L, (VECTOR(uint64_t, 2))(18446744073709551612UL, 0x16D4D43A62FBF910L), (VECTOR(uint64_t, 2))(18446744073709551612UL, 0x16D4D43A62FBF910L), 18446744073709551612UL, 0x16D4D43A62FBF910L, 18446744073709551612UL, 0x16D4D43A62FBF910L);
    VECTOR(uint64_t, 2) l_109 = (VECTOR(uint64_t, 2))(0x15C8DD589E83D486L, 0xE0BB6B9E65AFEF71L);
    int8_t l_110 = 0x53L;
    VECTOR(uint16_t, 2) l_113 = (VECTOR(uint16_t, 2))(65535UL, 0xA17DL);
    uint8_t *l_120 = (void*)0;
    uint8_t *l_121 = &p_985->g_122;
    VECTOR(int8_t, 2) l_123 = (VECTOR(int8_t, 2))(0x63L, 1L);
    VECTOR(uint32_t, 2) l_130 = (VECTOR(uint32_t, 2))(1UL, 3UL);
    int32_t *l_134 = (void*)0;
    int32_t *l_135 = &p_985->g_13;
    int32_t **l_139 = (void*)0;
    VECTOR(uint16_t, 16) l_144 = (VECTOR(uint16_t, 16))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 0xD7A1L), 0xD7A1L), 0xD7A1L, 65534UL, 0xD7A1L, (VECTOR(uint16_t, 2))(65534UL, 0xD7A1L), (VECTOR(uint16_t, 2))(65534UL, 0xD7A1L), 65534UL, 0xD7A1L, 65534UL, 0xD7A1L);
    uint8_t *l_145 = &p_985->g_146;
    uint32_t l_149 = 4294967287UL;
    int32_t l_151[4][10][6] = {{{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L}},{{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L}},{{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L}},{{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L},{(-1L),(-1L),0x383498CCL,1L,9L,1L}}};
    int16_t *l_152 = &p_985->g_153;
    VECTOR(int32_t, 4) l_155 = (VECTOR(int32_t, 4))(0x190B99ACL, (VECTOR(int32_t, 2))(0x190B99ACL, 0x7FDD43B5L), 0x7FDD43B5L);
    VECTOR(int64_t, 2) l_160 = (VECTOR(int64_t, 2))(0x1970B70258B70B0FL, 0x67F97FD67A201F26L);
    VECTOR(int64_t, 8) l_161 = (VECTOR(int64_t, 8))(0x715622FD341E3A30L, (VECTOR(int64_t, 4))(0x715622FD341E3A30L, (VECTOR(int64_t, 2))(0x715622FD341E3A30L, 2L), 2L), 2L, 0x715622FD341E3A30L, 2L);
    int32_t *l_169 = (void*)0;
    int32_t *l_170 = (void*)0;
    int32_t *l_171 = (void*)0;
    int32_t *l_172 = (void*)0;
    int32_t *l_173[3][1];
    uint32_t l_174 = 0x192B7464L;
    int8_t *l_175 = (void*)0;
    int8_t *l_176 = &l_110;
    int8_t *l_177 = (void*)0;
    int8_t *l_178 = (void*)0;
    int8_t *l_179 = (void*)0;
    int8_t *l_180 = (void*)0;
    int8_t *l_181 = (void*)0;
    int8_t *l_182 = (void*)0;
    int8_t *l_183[3];
    int32_t l_184 = 0x7E22B2D8L;
    int8_t l_258 = 0x7BL;
    int8_t **l_261 = &l_183[1];
    VECTOR(int32_t, 2) l_365 = (VECTOR(int32_t, 2))(0x64B7865FL, (-1L));
    union U3 **l_366 = &p_985->g_295;
    int8_t *l_386 = &p_985->g_42;
    uint8_t l_404 = 247UL;
    uint32_t l_443 = 0x0F91DD89L;
    int64_t *l_455 = &p_985->g_233;
    VECTOR(int32_t, 8) l_496 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x219ECF26L), 0x219ECF26L), 0x219ECF26L, 0L, 0x219ECF26L);
    union U1 l_540 = {0};
    VECTOR(int8_t, 8) l_573 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x1CL), 0x1CL), 0x1CL, (-1L), 0x1CL);
    VECTOR(int8_t, 4) l_574 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x7CL), 0x7CL);
    uint16_t l_630 = 0x6349L;
    int16_t l_651 = 0L;
    VECTOR(int32_t, 16) l_694 = (VECTOR(int32_t, 16))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 1L), 1L), 1L, 6L, 1L, (VECTOR(int32_t, 2))(6L, 1L), (VECTOR(int32_t, 2))(6L, 1L), 6L, 1L, 6L, 1L);
    int64_t l_714 = 0x0B6D371CEFE36D8AL;
    VECTOR(uint32_t, 4) l_766 = (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0xD615932CL), 0xD615932CL);
    VECTOR(uint32_t, 8) l_776 = (VECTOR(uint32_t, 8))(4294967293UL, (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 1UL), 1UL), 1UL, 4294967293UL, 1UL);
    uint32_t l_811[6][6][2] = {{{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL}},{{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL}},{{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL}},{{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL}},{{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL}},{{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL},{0x603EFF8FL,4294967295UL}}};
    uint16_t l_822[7] = {0x809EL,6UL,0x809EL,0x809EL,6UL,0x809EL,0x809EL};
    VECTOR(int8_t, 2) l_832 = (VECTOR(int8_t, 2))(0x20L, 0x64L);
    union U3 ****l_841 = &p_985->g_641;
    uint16_t l_842[5] = {0x8304L,0x8304L,0x8304L,0x8304L,0x8304L};
    VECTOR(uint32_t, 8) l_852 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 2UL), 2UL), 2UL, 0UL, 2UL);
    VECTOR(int64_t, 4) l_853 = (VECTOR(int64_t, 4))(0x3914FDD20FA39F72L, (VECTOR(int64_t, 2))(0x3914FDD20FA39F72L, (-1L)), (-1L));
    uint8_t l_859 = 247UL;
    uint64_t l_860 = 0xD511CBEBE852AC02L;
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
            l_173[i][j] = (void*)0;
    }
    for (i = 0; i < 3; i++)
        l_183[i] = (void*)0;
    (*l_135) = (safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(func_86(&p_985->g_61[2][3][1], (((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 4))(l_93.zwwx)).zxxzxyxx, ((VECTOR(uint16_t, 16))((p_985->g_9 != (safe_mul_func_int8_t_s_s(((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(l_102.s0450)) << ((VECTOR(uint64_t, 4))(64))))) + ((VECTOR(uint64_t, 4))((+((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 16))(l_107.s89868d59668c8662)).odd + ((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 4))(p_985->g_108.xyxy)).hi, ((VECTOR(uint64_t, 4))(l_109.xyyy)).even))).yxyxyxyx))) + ((VECTOR(uint64_t, 8))(1UL, l_107.sb, (l_110 != ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(0x343BL, 0xAF47L)).yxxyyxxy ^ ((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_113.xx)), ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))((safe_rshift_func_uint16_t_u_s(((0x300AL < (l_113.y , (safe_rshift_func_uint8_t_u_u(((*l_121) = p_985->g_9), (((VECTOR(int8_t, 16))(l_123.yxyyxyxyyxxyxyyx)).sf , (safe_div_func_uint16_t_u_u(l_102.s0, ((safe_rshift_func_int16_t_s_u((safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),uint32_t,((VECTOR(uint32_t, 2))(l_130.yy)), (uint32_t)(p_77 < (-1L)), (uint32_t)p_985->g_2))).lo, 0x76D1638BL)), 11)) || 0x5AFDL)))))))) == p_985->g_9), p_985->g_2)), 0x95E1L, p_985->g_13, ((VECTOR(uint16_t, 4))(65534UL)), 0x0DB8L)).s57 + ((VECTOR(uint16_t, 2))(65529UL))))), ((VECTOR(uint16_t, 2))(0xCB14L)), 65535UL, 65532UL)).odd, ((VECTOR(uint16_t, 4))(65530UL))))).even + ((VECTOR(uint16_t, 2))(0x84B3L))))).xxyyyyyyyyxxxyxy ^ ((VECTOR(uint16_t, 16))(65535UL))))).sa4ec, ((VECTOR(uint16_t, 4))(0x64C3L))))).yxzyyzzz))).s15, ((VECTOR(uint16_t, 2))(1UL)), ((VECTOR(uint16_t, 2))(0UL))))).yxxyyyyxyyyyxyyy, ((VECTOR(uint16_t, 16))(0x4A7EL))))).s5ecd, ((VECTOR(uint16_t, 4))(0x79B1L))))), 0xCCEBL, ((VECTOR(uint16_t, 4))(1UL)), 65531UL, 9UL, ((VECTOR(uint16_t, 4))(65534UL)), 7UL)).se), 1UL, ((VECTOR(uint64_t, 4))(0x06464BD89D4ED5BCL))))))).odd)))))), ((VECTOR(uint64_t, 4))(0x1A09896714E362F1L)), ((VECTOR(uint64_t, 4))(1UL))))) << ((VECTOR(uint64_t, 4))(0xA7E429369BD42CCFL))))).w <= l_130.x) <= p_77), GROUP_DIVERGE(1, 1)))), 3UL, ((VECTOR(uint16_t, 8))(65527UL)), ((VECTOR(uint16_t, 4))(65535UL)), 6UL, 65535UL)).lo))).s7741755600402351 + ((VECTOR(uint16_t, 16))(65533UL))))).s62, ((VECTOR(uint16_t, 2))(0x77A0L))))), 4294967295UL, 0x9C2BD310L, 1UL, 0xFD80D460L, GROUP_DIVERGE(0, 1), p_77, 0x25E2F7FAL, ((VECTOR(uint32_t, 4))(4294967289UL)), ((VECTOR(uint32_t, 2))(4294967287UL)), 0x53C78930L)) + ((VECTOR(uint32_t, 16))(0x4DF5F46CL))))).s1 , p_77), p_985))) && ((VECTOR(int16_t, 2))(0x6DF8L))))) && ((VECTOR(int16_t, 2))((-2L)))))) > ((VECTOR(int16_t, 2))(0x48EEL))))).yyyxxyyx, ((VECTOR(int16_t, 8))(5L))))).s6, l_109.y));
    (*l_135) ^= ((((((VECTOR(int32_t, 2))((-1L), 0L)).hi , 0xF81C38EE3FE4262AL) || (safe_div_func_int16_t_s_s((7UL & p_77), 65530UL))) , p_77) | (p_985->g_138[1] = 2UL));
    l_155.x ^= ((&p_985->g_132 == (l_139 = (void*)0)) && ((safe_mod_func_uint8_t_u_u(p_985->g_122, (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(l_144.s00109a6a1c6e9883)).s3, ((((++(*l_145)) & ((+((void*)0 == &p_985->g_61[2][3][1])) , (p_77 & l_149))) ^ ((0x0340L < ((*l_152) = (safe_unary_minus_func_int16_t_s(l_151[0][0][4])))) >= p_985->g_13)) , 6UL))))) == p_985->g_2));
    if ((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 4))((safe_lshift_func_int8_t_s_s((l_184 ^= ((VECTOR(int8_t, 4))(((safe_div_func_uint64_t_u_u(0x4533268B7DADB20BL, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(l_160.xxxxxxyy)).s73 || ((VECTOR(int64_t, 8))(l_161.s05352177)).s04))), (-3L), ((VECTOR(int64_t, 4))((p_77 | (safe_unary_minus_func_uint64_t_u((p_985->g_138[1] == ((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),VECTOR(uint32_t, 2),((VECTOR(uint32_t, 16))(((65531UL <= ((*l_135) || 0x2632C09FL)) || p_985->g_108.y), ((VECTOR(uint32_t, 4))((safe_rshift_func_int8_t_s_u(((*l_176) = (((l_174 |= (((safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(0x42L, (*l_135))), p_985->g_153)) != (*l_135)) && p_77)) & p_77) ^ p_77)), p_985->g_9)), ((VECTOR(uint32_t, 2))(0x73122300L)), 4294967291UL)), ((VECTOR(uint32_t, 4))(4294967287UL)), ((VECTOR(uint32_t, 2))(4294967291UL)), 4294967290UL, GROUP_DIVERGE(2, 1), p_77, 0x3EEE6CD1L, 1UL)).s7f, ((VECTOR(uint32_t, 2))(4294967295UL)), ((VECTOR(uint32_t, 2))(4294967288UL))))).odd)))), 0x30530C7A2D7FE986L, (-1L), (-2L))), p_77, ((VECTOR(int64_t, 8))(0x2EFFB0687F249042L)))).s4)) != 0x32E5L), 0x69L, 5L, (-9L))).x), 6)), (-4L), 0L, 0x56L)).yxyyzwzy, ((VECTOR(int8_t, 8))(0x6BL))))) && ((VECTOR(int8_t, 8))((-3L)))))).s3 | 0x50L))
    { /* block id: 36 */
        int64_t l_210[7][4][3] = {{{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)}},{{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)}},{{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)}},{{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)}},{{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)}},{{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)}},{{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)},{(-1L),0L,(-1L)}}};
        VECTOR(int32_t, 8) l_244 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
        uint8_t *l_274 = &p_985->g_122;
        VECTOR(int32_t, 2) l_285 = (VECTOR(int32_t, 2))(0x05CA28C2L, 0x5BF3CCCAL);
        union U3 *l_291 = &p_985->g_292;
        VECTOR(uint64_t, 4) l_305 = (VECTOR(uint64_t, 4))(18446744073709551608UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 0xD7622E339245AE2BL), 0xD7622E339245AE2BL);
        int32_t ****l_320 = &p_985->g_275;
        VECTOR(int16_t, 16) l_340 = (VECTOR(int16_t, 16))(0x7A70L, (VECTOR(int16_t, 4))(0x7A70L, (VECTOR(int16_t, 2))(0x7A70L, 0x0568L), 0x0568L), 0x0568L, 0x7A70L, 0x0568L, (VECTOR(int16_t, 2))(0x7A70L, 0x0568L), (VECTOR(int16_t, 2))(0x7A70L, 0x0568L), 0x7A70L, 0x0568L, 0x7A70L, 0x0568L);
        uint32_t l_345 = 2UL;
        VECTOR(int16_t, 8) l_421 = (VECTOR(int16_t, 8))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 4L), 4L), 4L, (-5L), 4L);
        int8_t **l_446 = &l_179;
        VECTOR(int8_t, 4) l_577 = (VECTOR(int8_t, 4))(0x43L, (VECTOR(int8_t, 2))(0x43L, 0x08L), 0x08L);
        VECTOR(int8_t, 2) l_623 = (VECTOR(int8_t, 2))(0x5BL, 1L);
        int32_t l_653 = 0x5F07D85FL;
        VECTOR(uint32_t, 8) l_676 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967295UL), 4294967295UL), 4294967295UL, 1UL, 4294967295UL);
        int32_t l_687 = 0x2FA61FDCL;
        uint32_t l_690 = 4294967295UL;
        VECTOR(int32_t, 16) l_695 = (VECTOR(int32_t, 16))(0x3F4A3440L, (VECTOR(int32_t, 4))(0x3F4A3440L, (VECTOR(int32_t, 2))(0x3F4A3440L, (-1L)), (-1L)), (-1L), 0x3F4A3440L, (-1L), (VECTOR(int32_t, 2))(0x3F4A3440L, (-1L)), (VECTOR(int32_t, 2))(0x3F4A3440L, (-1L)), 0x3F4A3440L, (-1L), 0x3F4A3440L, (-1L));
        VECTOR(uint16_t, 2) l_713 = (VECTOR(uint16_t, 2))(0x3A32L, 0x0C8EL);
        uint8_t l_716[5] = {0x29L,0x29L,0x29L,0x29L,0x29L};
        VECTOR(int32_t, 16) l_738 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x2982223AL), 0x2982223AL), 0x2982223AL, (-1L), 0x2982223AL, (VECTOR(int32_t, 2))((-1L), 0x2982223AL), (VECTOR(int32_t, 2))((-1L), 0x2982223AL), (-1L), 0x2982223AL, (-1L), 0x2982223AL);
        uint16_t l_743 = 2UL;
        int16_t l_744 = 0x260FL;
        VECTOR(int64_t, 2) l_748 = (VECTOR(int64_t, 2))(0L, (-6L));
        int32_t *l_749 = &p_985->g_498;
        VECTOR(int32_t, 16) l_752 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x56547E9DL), 0x56547E9DL), 0x56547E9DL, 0L, 0x56547E9DL, (VECTOR(int32_t, 2))(0L, 0x56547E9DL), (VECTOR(int32_t, 2))(0L, 0x56547E9DL), 0L, 0x56547E9DL, 0L, 0x56547E9DL);
        int i, j, k;
        for (p_985->g_146 = (-16); (p_985->g_146 < 10); p_985->g_146++)
        { /* block id: 39 */
            int32_t **l_187 = &l_134;
            int32_t ***l_188 = (void*)0;
            int32_t ***l_189 = &l_139;
            int32_t **l_191 = (void*)0;
            int32_t ***l_190 = &l_191;
            uint32_t l_235 = 0UL;
            int32_t l_239 = 1L;
            int32_t l_240 = 0x37DE6D6BL;
            int32_t l_243 = 0x1564643FL;
            int8_t **l_263 = &l_178;
            int32_t l_280 = (-2L);
            VECTOR(int32_t, 8) l_281 = (VECTOR(int32_t, 8))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, (-8L)), (-8L)), (-8L), 4L, (-8L));
            uint8_t *l_304 = (void*)0;
            uint32_t l_321 = 0x8D8C0522L;
            int32_t *l_343 = &p_985->g_9;
            VECTOR(int8_t, 2) l_379 = (VECTOR(int8_t, 2))(0x23L, 0x38L);
            int32_t l_484 = (-1L);
            VECTOR(uint16_t, 8) l_487 = (VECTOR(uint16_t, 8))(0x6D1FL, (VECTOR(uint16_t, 4))(0x6D1FL, (VECTOR(uint16_t, 2))(0x6D1FL, 0xE0A6L), 0xE0A6L), 0xE0A6L, 0x6D1FL, 0xE0A6L);
            union U3 *l_552 = &p_985->g_292;
            VECTOR(int16_t, 16) l_569 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-5L)), (-5L)), (-5L), 0L, (-5L), (VECTOR(int16_t, 2))(0L, (-5L)), (VECTOR(int16_t, 2))(0L, (-5L)), 0L, (-5L), 0L, (-5L));
            VECTOR(int16_t, 2) l_589 = (VECTOR(int16_t, 2))((-1L), 0x3B2BL);
            uint8_t l_597 = 0x36L;
            int32_t *l_616 = &p_985->g_2;
            VECTOR(int8_t, 8) l_624 = (VECTOR(int8_t, 8))(0x57L, (VECTOR(int8_t, 4))(0x57L, (VECTOR(int8_t, 2))(0x57L, (-6L)), (-6L)), (-6L), 0x57L, (-6L));
            uint8_t l_652 = 250UL;
            int8_t l_715 = 1L;
            int i;
            (1 + 1);
        }
        (*p_985->g_220) = (****l_320);
        if ((((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 4))(l_748.yxxx)).zxyxwyyw, (int64_t)p_985->g_745))).s5 > (((*l_135) <= ((**p_985->g_276) > (l_749 == ((safe_mul_func_int8_t_s_s(((void*)0 != &l_743), ((p_985->g_295 == (void*)0) > ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))(l_752.s1d1f4a38)).even, ((VECTOR(int32_t, 2))(1L, 7L)).xyyy))).y))) , (((*l_261) == (*l_261)) , (void*)0))))) || p_985->g_583.s1)))
        { /* block id: 229 */
            int64_t l_753 = 0x7CB324A7765BB23CL;
            l_753 ^= p_77;
        }
        else
        { /* block id: 231 */
            (*p_985->g_754) = &l_540;
            l_687 = 0x003AA0B0L;
            (***l_320) = (***l_320);
        }
        (*p_985->g_219) = (void*)0;
    }
    else
    { /* block id: 237 */
        uint16_t l_756 = 65529UL;
        int32_t ****l_757 = &p_985->g_275;
        VECTOR(int64_t, 2) l_786 = (VECTOR(int64_t, 2))(0x50E694B4283A3517L, 0x3F74B0BDA4E08388L);
        union U1 l_789 = {0};
        uint32_t l_799 = 0x5009DBE6L;
        uint8_t *l_801[5] = {&l_404,&l_404,&l_404,&l_404,&l_404};
        int32_t l_804 = 0x7EF3B79CL;
        int32_t l_808 = (-1L);
        int64_t l_809 = (-5L);
        int32_t l_810 = (-1L);
        VECTOR(int64_t, 4) l_821 = (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, (-7L)), (-7L));
        VECTOR(uint32_t, 4) l_851 = (VECTOR(uint32_t, 4))(0x8DFFD2DCL, (VECTOR(uint32_t, 2))(0x8DFFD2DCL, 0xB1854217L), 0xB1854217L);
        int i;
        if (((l_756 , l_757) != (void*)0))
        { /* block id: 238 */
            VECTOR(uint32_t, 16) l_771 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint32_t, 2))(1UL, 0UL), (VECTOR(uint32_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL);
            uint64_t *l_784 = &p_985->g_785;
            uint16_t *l_798[10][6] = {{(void*)0,(void*)0,&p_985->g_282,(void*)0,&l_756,(void*)0},{(void*)0,(void*)0,&p_985->g_282,(void*)0,&l_756,(void*)0},{(void*)0,(void*)0,&p_985->g_282,(void*)0,&l_756,(void*)0},{(void*)0,(void*)0,&p_985->g_282,(void*)0,&l_756,(void*)0},{(void*)0,(void*)0,&p_985->g_282,(void*)0,&l_756,(void*)0},{(void*)0,(void*)0,&p_985->g_282,(void*)0,&l_756,(void*)0},{(void*)0,(void*)0,&p_985->g_282,(void*)0,&l_756,(void*)0},{(void*)0,(void*)0,&p_985->g_282,(void*)0,&l_756,(void*)0},{(void*)0,(void*)0,&p_985->g_282,(void*)0,&l_756,(void*)0},{(void*)0,(void*)0,&p_985->g_282,(void*)0,&l_756,(void*)0}};
            uint8_t *l_800 = (void*)0;
            uint32_t *l_802[7][9][4] = {{{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149}},{{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149}},{{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149}},{{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149}},{{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149}},{{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149}},{{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149},{&l_174,&l_149,&l_149,&l_149}}};
            VECTOR(int32_t, 4) l_805 = (VECTOR(int32_t, 4))(0x5AFA8A81L, (VECTOR(int32_t, 2))(0x5AFA8A81L, 0x2DEEDA88L), 0x2DEEDA88L);
            int8_t l_806 = 0x3BL;
            int8_t l_807 = 0x75L;
            int i, j, k;
            l_804 ^= (((p_985->g_803 = (safe_add_func_int64_t_s_s(0x0435DEDB9FC66077L, (((safe_lshift_func_int16_t_s_u(((*l_152) = (((safe_mul_func_int8_t_s_s((((((1L || p_985->g_647) | GROUP_DIVERGE(1, 1)) | (((((GROUP_DIVERGE(1, 1) , p_77) & ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(l_766.yyyxyzxzyxzzyxxy)).hi - ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))(FAKE_DIVERGE(p_985->global_1_offset, get_global_id(1), 10), ((VECTOR(uint32_t, 2))(l_771.s8f)), 0x1FD93067L)).even + ((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(4294967292UL, 0xCCF7A8FDL)).xyyyyxyxxxxyyyyx + ((VECTOR(uint32_t, 4))(abs(((VECTOR(uint32_t, 2))(l_776.s54)).yyyx))).ywyyyzyzyzwywyyx))) + ((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),VECTOR(uint32_t, 8),((VECTOR(uint32_t, 16))((safe_unary_minus_func_uint64_t_u((l_771.sb , ((****l_757) <= (safe_div_func_int16_t_s_s((safe_rshift_func_int8_t_s_u(((((safe_sub_func_uint8_t_u_u((((*l_784) = l_771.s9) , (((VECTOR(int64_t, 16))(l_786.yyxyyyyyxyyxyyyx)).sc && (safe_sub_func_uint8_t_u_u((((l_789 , (((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),uint16_t,((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 2))(0x0331L, 0xCFA8L)).xxyx, ((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))((p_985->g_491.s4 &= 0x9D7EL), p_985->g_6, 3UL, 65535UL)).xwxywwyy ^ ((VECTOR(uint16_t, 8))(0UL))))).s3731051246660426 >> ((VECTOR(uint16_t, 16))(16))))).even - ((VECTOR(uint16_t, 8))(0x553AL))))).s4642002641552445, ((VECTOR(uint16_t, 16))(1UL)), ((VECTOR(uint16_t, 16))(1UL))))).s7861))), ((VECTOR(uint16_t, 4))(0x4927L))))).hi, (uint16_t)p_985->g_405.x, (uint16_t)p_985->g_666.s7))).yxxxyxxx + ((VECTOR(uint16_t, 8))(0x1813L))))).s0412124675561215 + ((VECTOR(uint16_t, 16))(0x1FF5L))))).s95 ^ ((VECTOR(uint16_t, 2))(0x6FF2L))))).hi == 0x80F4L)) > 0x19L) ^ l_771.sa), GROUP_DIVERGE(0, 1))))), (****l_757))) > p_985->g_581.s4) , FAKE_DIVERGE(p_985->local_1_offset, get_local_id(1), 10)) | p_985->g_578.s7), p_985->g_231)), l_799)))))), 0UL, 1UL, ((VECTOR(uint32_t, 2))(2UL)), 0x12507416L, l_771.s4, 1UL, 0xCFE3D6B5L, ((VECTOR(uint32_t, 4))(0x635C95A9L)), ((VECTOR(uint32_t, 2))(0xEBC6BA72L)), 0x66928642L)).even, ((VECTOR(uint32_t, 8))(0UL)), ((VECTOR(uint32_t, 8))(0x3BC18390L))))).s0266373717366233, ((VECTOR(uint32_t, 16))(4294967294UL)), ((VECTOR(uint32_t, 16))(0x0EC22154L)))))))).s84))), ((VECTOR(uint32_t, 2))(0x5B805C2CL)), GROUP_DIVERGE(1, 1), 1UL, 0x02B3C65DL, 4294967295UL)), ((VECTOR(uint32_t, 8))(1UL)), ((VECTOR(uint32_t, 8))(4294967295UL))))).odd >> ((VECTOR(uint32_t, 4))(32))))).xyzwyxxw))).odd | ((VECTOR(uint32_t, 4))(4294967295UL))))), p_77, ((VECTOR(uint32_t, 2))(0x2787A663L)), 0xEA15EAA4L)).s7) | (-1L)) >= p_77) ^ l_771.s4)) , p_77) <= p_985->g_42), 0L)) , l_800) != l_801[2])), GROUP_DIVERGE(0, 1))) | p_77) != GROUP_DIVERGE(0, 1))))) > p_985->g_563.x) <= 0x3B2EL);
            p_985->g_154 = ((**p_985->g_275) = (*p_985->g_276));
            l_811[3][4][0]--;
        }
        else
        { /* block id: 247 */
            VECTOR(uint16_t, 8) l_817 = (VECTOR(uint16_t, 8))(0xD5A4L, (VECTOR(uint16_t, 4))(0xD5A4L, (VECTOR(uint16_t, 2))(0xD5A4L, 0UL), 0UL), 0UL, 0xD5A4L, 0UL);
            uint16_t *l_818[10] = {&l_756,&l_756,&l_756,&l_756,&l_756,&l_756,&l_756,&l_756,&l_756,&l_756};
            union U3 *****l_838 = (void*)0;
            union U3 ****l_840 = (void*)0;
            union U3 *****l_839[1];
            int i;
            for (i = 0; i < 1; i++)
                l_839[i] = &l_840;
            (*l_135) ^= (safe_div_func_int8_t_s_s((((p_985->g_491.s3 = ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 2))(p_985->g_816.xy)), ((VECTOR(uint16_t, 16))(l_817.s2027435515036032)).s37))), 0xE748L, 0x7178L)).z) <= (safe_lshift_func_int8_t_s_u(p_77, 5))) != ((l_821.x < ((l_822[5] != (safe_sub_func_uint64_t_u_u((safe_unary_minus_func_uint16_t_u((safe_mul_func_int16_t_s_s(p_77, (&l_756 != &l_630))))), (((safe_div_func_int16_t_s_s(((*l_152) = (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(l_832.xyyyyxxxyxxyyyxy)).sb, FAKE_DIVERGE(p_985->global_2_offset, get_global_id(2), 10)))), p_77)) >= (((safe_div_func_uint8_t_u_u((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(1L, ((VECTOR(int64_t, 4))(1L, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(0x3ADAD800C0418DEFL, 7L)) && ((VECTOR(int64_t, 2))((-1L), 0x6A470EE5C866C950L))))), 0x348C71DF7FBFEFF9L)), 0x056D08DB0ADA3FC5L, 0x3A07AFF3B0F787E2L, 0x2EC3C601F4D7FBCFL)).s46 >= ((VECTOR(int64_t, 4))(p_985->g_835.wzwy)).even))).lo , (safe_rshift_func_int8_t_s_u((&p_985->g_641 != (l_841 = &p_985->g_641)), 7))), 0x56L)) ^ 1UL) , 5L)) > 0x6C01L)))) || p_985->g_803)) > p_985->g_9)), (****l_757)));
lbl_844:
            if ((p_985->g_242 == (****l_757)))
            { /* block id: 252 */
                return l_842[1];
            }
            else
            { /* block id: 254 */
                int32_t *l_843[6] = {&p_985->g_13,&p_985->g_13,&p_985->g_13,&p_985->g_13,&p_985->g_13,&p_985->g_13};
                int i;
                (*p_985->g_276) = l_843[3];
                if (p_985->g_9)
                    goto lbl_844;
            }
            l_808 ^= (((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(p_985->g_847.yxywyxxy)) + ((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(uint32_t, 2))(p_985->g_848.sb0)).xyyx, ((VECTOR(uint32_t, 8))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))(l_851.yxzz)).zwyxywwy + ((VECTOR(uint32_t, 4))(l_852.s5730)).zzwzwxzz))), ((VECTOR(uint32_t, 4))((((*l_455) = ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 2))(l_853.xw)), (int64_t)2L))).yxxyyyyxxxyxyyxy > ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))((-1L), 1L)).yxyx < ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))((-5L), 0x14558923BEE7C396L)).xyxx && ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))(((((safe_sub_func_uint64_t_u_u(0x54665B2C9C4E0000L, p_985->g_559.sd)) < ((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(p_985->g_856.s22a6f489)) <= ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 4))((((safe_unary_minus_func_uint16_t_u(1UL)) ^ ((p_77 , (0x5B0EL && (p_77 != ((****l_757) < (((p_985->g_858 && (****l_757)) , 7L) != l_859))))) < l_860)) >= (-7L)), ((VECTOR(int64_t, 2))(9L)), 5L)), ((VECTOR(int64_t, 4))(6L))))).xzyxzyxz))).s0367323501453635 && ((VECTOR(int64_t, 16))(0x3C2863AB3FF55707L))))).s902b && ((VECTOR(int64_t, 4))(0x03B22FF6EB724F14L))))).yywzwxxw))), 0x75457F0E37ED695FL, (-1L), 0x1AEE6B8C348C90A8L, 0x569571F556DAD5BDL, 8L, ((VECTOR(int64_t, 2))((-2L))), 0x375239BF77C6ACD3L)).s08, ((VECTOR(int64_t, 2))(0x6CBC5B1240871DCBL)), ((VECTOR(int64_t, 2))(0x334364FD735CF76DL))))).hi) & p_985->g_581.s6) , (****l_757)), 0x352E89EE2A8DE858L, 0x5BC4482F1487DB03L, 5L)).xwzzxzyz ^ ((VECTOR(int64_t, 8))(6L))))) ^ ((VECTOR(int64_t, 8))(0x08C11A3BF0051850L))))).lo))), ((VECTOR(int64_t, 4))(0x520BA6CD322BA520L)))).lo && ((VECTOR(int64_t, 4))(0x31AEBE8B802F926EL)))))))).wxzwxzwzzwwwxywy))).s7) && p_985->g_861), ((VECTOR(uint32_t, 2))(0xFB73E442L)), 1UL)).wwywwwyy))).lo))).zxzyyyzz))).hi))).w ^ p_77);
        }
    }
    return p_985->g_581.s2;
}


/* ------------------------------------------ */
/* 
 * reads : p_985->g_132
 * writes: p_985->g_13
 */
VECTOR(int16_t, 2)  func_86(int8_t ** p_87, int64_t  p_88, struct S4 * p_985)
{ /* block id: 23 */
    int8_t *l_131[7];
    VECTOR(int16_t, 2) l_133 = (VECTOR(int16_t, 2))(0x4CC2L, 0L);
    int i;
    for (i = 0; i < 7; i++)
        l_131[i] = &p_985->g_42;
    (*p_985->g_132) = ((void*)0 == l_131[3]);
    return l_133.xx;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_986;
    struct S4* p_985 = &c_986;
    struct S4 c_987 = {
        0x75F49900L, // p_985->g_2
        0x32391CB4L, // p_985->g_6
        5L, // p_985->g_9
        (-1L), // p_985->g_13
        (-3L), // p_985->g_42
        {{{&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,(void*)0,&p_985->g_42,&p_985->g_42},{&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,(void*)0,&p_985->g_42,&p_985->g_42},{&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,(void*)0,&p_985->g_42,&p_985->g_42},{&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,(void*)0,&p_985->g_42,&p_985->g_42},{&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,(void*)0,&p_985->g_42,&p_985->g_42}},{{&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,(void*)0,&p_985->g_42,&p_985->g_42},{&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,(void*)0,&p_985->g_42,&p_985->g_42},{&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,(void*)0,&p_985->g_42,&p_985->g_42},{&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,(void*)0,&p_985->g_42,&p_985->g_42},{&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,(void*)0,&p_985->g_42,&p_985->g_42}},{{&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,(void*)0,&p_985->g_42,&p_985->g_42},{&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,(void*)0,&p_985->g_42,&p_985->g_42},{&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,(void*)0,&p_985->g_42,&p_985->g_42},{&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,(void*)0,&p_985->g_42,&p_985->g_42},{&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,&p_985->g_42,(void*)0,&p_985->g_42,&p_985->g_42}}}, // p_985->g_61
        {&p_985->g_61[2][3][1],&p_985->g_61[2][3][1],&p_985->g_61[2][3][1],&p_985->g_61[2][3][1],&p_985->g_61[2][3][1]}, // p_985->g_60
        (VECTOR(uint64_t, 2))(0x594313D3D1830F2BL, 6UL), // p_985->g_108
        0x20L, // p_985->g_122
        &p_985->g_13, // p_985->g_132
        {0x447E747E018F5FB7L,0x447E747E018F5FB7L,0x447E747E018F5FB7L,0x447E747E018F5FB7L,0x447E747E018F5FB7L,0x447E747E018F5FB7L,0x447E747E018F5FB7L,0x447E747E018F5FB7L,0x447E747E018F5FB7L}, // p_985->g_138
        0UL, // p_985->g_146
        (-6L), // p_985->g_153
        (void*)0, // p_985->g_154
        (VECTOR(uint8_t, 16))(0x86L, (VECTOR(uint8_t, 4))(0x86L, (VECTOR(uint8_t, 2))(0x86L, 1UL), 1UL), 1UL, 0x86L, 1UL, (VECTOR(uint8_t, 2))(0x86L, 1UL), (VECTOR(uint8_t, 2))(0x86L, 1UL), 0x86L, 1UL, 0x86L, 1UL), // p_985->g_198
        (VECTOR(uint64_t, 16))(0x51B0F9FA3D0280CFL, (VECTOR(uint64_t, 4))(0x51B0F9FA3D0280CFL, (VECTOR(uint64_t, 2))(0x51B0F9FA3D0280CFL, 0xC043BD0F48B296F2L), 0xC043BD0F48B296F2L), 0xC043BD0F48B296F2L, 0x51B0F9FA3D0280CFL, 0xC043BD0F48B296F2L, (VECTOR(uint64_t, 2))(0x51B0F9FA3D0280CFL, 0xC043BD0F48B296F2L), (VECTOR(uint64_t, 2))(0x51B0F9FA3D0280CFL, 0xC043BD0F48B296F2L), 0x51B0F9FA3D0280CFL, 0xC043BD0F48B296F2L, 0x51B0F9FA3D0280CFL, 0xC043BD0F48B296F2L), // p_985->g_201
        (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-10L)), (-10L)), (-10L), 0L, (-10L), (VECTOR(int64_t, 2))(0L, (-10L)), (VECTOR(int64_t, 2))(0L, (-10L)), 0L, (-10L), 0L, (-10L)), // p_985->g_204
        (VECTOR(int64_t, 8))(0x27021F96459FD89EL, (VECTOR(int64_t, 4))(0x27021F96459FD89EL, (VECTOR(int64_t, 2))(0x27021F96459FD89EL, 0x13CB2BF3D79FE803L), 0x13CB2BF3D79FE803L), 0x13CB2BF3D79FE803L, 0x27021F96459FD89EL, 0x13CB2BF3D79FE803L), // p_985->g_205
        0x65CAE71CL, // p_985->g_221
        &p_985->g_221, // p_985->g_220
        &p_985->g_220, // p_985->g_219
        65526UL, // p_985->g_231
        0x0E0DAC7CBAB5C4C3L, // p_985->g_233
        (-10L), // p_985->g_234
        0L, // p_985->g_242
        0x4BED25ABL, // p_985->g_245
        0x8BFFB300FBA2EC1DL, // p_985->g_246
        {0x68B05978L}, // p_985->g_262
        {0xDAC99353L}, // p_985->g_264
        {4L}, // p_985->g_272
        &p_985->g_6, // p_985->g_277
        &p_985->g_277, // p_985->g_276
        &p_985->g_276, // p_985->g_275
        0x00CCL, // p_985->g_282
        0x0EL, // p_985->g_287
        4294967286UL, // p_985->g_288
        {0x1B11FE966B25F4ECL}, // p_985->g_292
        (void*)0, // p_985->g_294
        &p_985->g_292, // p_985->g_295
        (VECTOR(uint8_t, 2))(0x39L, 0xA1L), // p_985->g_301
        (VECTOR(int16_t, 4))(0x1207L, (VECTOR(int16_t, 2))(0x1207L, 1L), 1L), // p_985->g_339
        {{0x3ABFD04FL},{0x3ABFD04FL},{0x3ABFD04FL},{0x3ABFD04FL}}, // p_985->g_362
        {-5L}, // p_985->g_372
        (VECTOR(uint64_t, 4))(0x5EC51C246DC12A83L, (VECTOR(uint64_t, 2))(0x5EC51C246DC12A83L, 5UL), 5UL), // p_985->g_380
        (VECTOR(int8_t, 2))(0L, (-1L)), // p_985->g_387
        (VECTOR(int8_t, 8))(0x37L, (VECTOR(int8_t, 4))(0x37L, (VECTOR(int8_t, 2))(0x37L, 0x18L), 0x18L), 0x18L, 0x37L, 0x18L), // p_985->g_390
        (VECTOR(int16_t, 2))(0x3ABDL, 7L), // p_985->g_405
        0x5F19L, // p_985->g_406
        0xBC110DCEL, // p_985->g_407
        {0xF0A48B51L}, // p_985->g_413
        (VECTOR(int8_t, 4))(0x08L, (VECTOR(int8_t, 2))(0x08L, (-10L)), (-10L)), // p_985->g_432
        {0x4F15CBCF6B7DC391L,0x4F15CBCF6B7DC391L,0x4F15CBCF6B7DC391L,0x4F15CBCF6B7DC391L,0x4F15CBCF6B7DC391L}, // p_985->g_454
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x501F0DA2L), 0x501F0DA2L), 0x501F0DA2L, 1L, 0x501F0DA2L, (VECTOR(int32_t, 2))(1L, 0x501F0DA2L), (VECTOR(int32_t, 2))(1L, 0x501F0DA2L), 1L, 0x501F0DA2L, 1L, 0x501F0DA2L), // p_985->g_477
        (VECTOR(uint16_t, 4))(0xEDEDL, (VECTOR(uint16_t, 2))(0xEDEDL, 65528UL), 65528UL), // p_985->g_490
        (VECTOR(uint16_t, 16))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 0xB367L), 0xB367L), 0xB367L, 65534UL, 0xB367L, (VECTOR(uint16_t, 2))(65534UL, 0xB367L), (VECTOR(uint16_t, 2))(65534UL, 0xB367L), 65534UL, 0xB367L, 65534UL, 0xB367L), // p_985->g_491
        0x7079693AL, // p_985->g_498
        &p_985->g_413.f0, // p_985->g_510
        &p_985->g_510, // p_985->g_509
        {0x5EC07957L}, // p_985->g_516
        {{0xE2F741D5L},{0xE2F741D5L},{0xE2F741D5L},{0xE2F741D5L}}, // p_985->g_541
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 2UL), 2UL), 2UL, 0UL, 2UL, (VECTOR(uint16_t, 2))(0UL, 2UL), (VECTOR(uint16_t, 2))(0UL, 2UL), 0UL, 2UL, 0UL, 2UL), // p_985->g_559
        (VECTOR(uint16_t, 2))(65531UL, 1UL), // p_985->g_562
        (VECTOR(uint16_t, 2))(65535UL, 1UL), // p_985->g_563
        (VECTOR(int16_t, 16))(0x6F26L, (VECTOR(int16_t, 4))(0x6F26L, (VECTOR(int16_t, 2))(0x6F26L, 0x2802L), 0x2802L), 0x2802L, 0x6F26L, 0x2802L, (VECTOR(int16_t, 2))(0x6F26L, 0x2802L), (VECTOR(int16_t, 2))(0x6F26L, 0x2802L), 0x6F26L, 0x2802L, 0x6F26L, 0x2802L), // p_985->g_568
        (VECTOR(int8_t, 8))((-6L), (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 0x10L), 0x10L), 0x10L, (-6L), 0x10L), // p_985->g_571
        (VECTOR(int8_t, 16))(0x0EL, (VECTOR(int8_t, 4))(0x0EL, (VECTOR(int8_t, 2))(0x0EL, 0x48L), 0x48L), 0x48L, 0x0EL, 0x48L, (VECTOR(int8_t, 2))(0x0EL, 0x48L), (VECTOR(int8_t, 2))(0x0EL, 0x48L), 0x0EL, 0x48L, 0x0EL, 0x48L), // p_985->g_572
        (VECTOR(int8_t, 16))(0x42L, (VECTOR(int8_t, 4))(0x42L, (VECTOR(int8_t, 2))(0x42L, 0x40L), 0x40L), 0x40L, 0x42L, 0x40L, (VECTOR(int8_t, 2))(0x42L, 0x40L), (VECTOR(int8_t, 2))(0x42L, 0x40L), 0x42L, 0x40L, 0x42L, 0x40L), // p_985->g_578
        (VECTOR(int8_t, 8))(0x6EL, (VECTOR(int8_t, 4))(0x6EL, (VECTOR(int8_t, 2))(0x6EL, 0L), 0L), 0L, 0x6EL, 0L), // p_985->g_581
        (VECTOR(int8_t, 8))((-7L), (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 0x5DL), 0x5DL), 0x5DL, (-7L), 0x5DL), // p_985->g_583
        (VECTOR(int8_t, 16))(0x79L, (VECTOR(int8_t, 4))(0x79L, (VECTOR(int8_t, 2))(0x79L, 0x1AL), 0x1AL), 0x1AL, 0x79L, 0x1AL, (VECTOR(int8_t, 2))(0x79L, 0x1AL), (VECTOR(int8_t, 2))(0x79L, 0x1AL), 0x79L, 0x1AL, 0x79L, 0x1AL), // p_985->g_585
        (void*)0, // p_985->g_641
        0x288EE934FF102B14L, // p_985->g_647
        (VECTOR(uint32_t, 8))(0x2CFF8895L, (VECTOR(uint32_t, 4))(0x2CFF8895L, (VECTOR(uint32_t, 2))(0x2CFF8895L, 0x8B0C3969L), 0x8B0C3969L), 0x8B0C3969L, 0x2CFF8895L, 0x8B0C3969L), // p_985->g_666
        (VECTOR(uint32_t, 16))(0x6DF66B3CL, (VECTOR(uint32_t, 4))(0x6DF66B3CL, (VECTOR(uint32_t, 2))(0x6DF66B3CL, 4294967295UL), 4294967295UL), 4294967295UL, 0x6DF66B3CL, 4294967295UL, (VECTOR(uint32_t, 2))(0x6DF66B3CL, 4294967295UL), (VECTOR(uint32_t, 2))(0x6DF66B3CL, 4294967295UL), 0x6DF66B3CL, 4294967295UL, 0x6DF66B3CL, 4294967295UL), // p_985->g_671
        {-1L}, // p_985->g_682
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x61463076L), 0x61463076L), 0x61463076L, 1L, 0x61463076L), // p_985->g_693
        (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0UL), 0UL), 0UL, 255UL, 0UL), // p_985->g_724
        0x03L, // p_985->g_745
        (void*)0, // p_985->g_755
        &p_985->g_755, // p_985->g_754
        0xC3D586488842CC84L, // p_985->g_785
        1L, // p_985->g_803
        (VECTOR(uint16_t, 2))(65535UL, 65531UL), // p_985->g_816
        (VECTOR(int64_t, 4))(0x119EC0A831C53513L, (VECTOR(int64_t, 2))(0x119EC0A831C53513L, 0x0AC885259DC9E1E9L), 0x0AC885259DC9E1E9L), // p_985->g_835
        (VECTOR(uint32_t, 4))(9UL, (VECTOR(uint32_t, 2))(9UL, 0UL), 0UL), // p_985->g_847
        (VECTOR(uint32_t, 16))(9UL, (VECTOR(uint32_t, 4))(9UL, (VECTOR(uint32_t, 2))(9UL, 9UL), 9UL), 9UL, 9UL, 9UL, (VECTOR(uint32_t, 2))(9UL, 9UL), (VECTOR(uint32_t, 2))(9UL, 9UL), 9UL, 9UL, 9UL, 9UL), // p_985->g_848
        (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int64_t, 2))((-1L), 0L), (VECTOR(int64_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L), // p_985->g_856
        0L, // p_985->g_858
        65526UL, // p_985->g_861
        (VECTOR(uint64_t, 16))(0xA3DE3A1424E005DFL, (VECTOR(uint64_t, 4))(0xA3DE3A1424E005DFL, (VECTOR(uint64_t, 2))(0xA3DE3A1424E005DFL, 0xC73D3B1B9A81E430L), 0xC73D3B1B9A81E430L), 0xC73D3B1B9A81E430L, 0xA3DE3A1424E005DFL, 0xC73D3B1B9A81E430L, (VECTOR(uint64_t, 2))(0xA3DE3A1424E005DFL, 0xC73D3B1B9A81E430L), (VECTOR(uint64_t, 2))(0xA3DE3A1424E005DFL, 0xC73D3B1B9A81E430L), 0xA3DE3A1424E005DFL, 0xC73D3B1B9A81E430L, 0xA3DE3A1424E005DFL, 0xC73D3B1B9A81E430L), // p_985->g_875
        (VECTOR(uint64_t, 2))(0x95DF2A59DE993F3CL, 0x606568CE1C348D8AL), // p_985->g_876
        (VECTOR(int8_t, 2))(6L, 7L), // p_985->g_917
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xD6L), 0xD6L), 0xD6L, 255UL, 0xD6L, (VECTOR(uint8_t, 2))(255UL, 0xD6L), (VECTOR(uint8_t, 2))(255UL, 0xD6L), 255UL, 0xD6L, 255UL, 0xD6L), // p_985->g_920
        (VECTOR(uint8_t, 4))(0x69L, (VECTOR(uint8_t, 2))(0x69L, 0UL), 0UL), // p_985->g_921
        (VECTOR(int64_t, 2))((-4L), 0x5E72D1F75422BC71L), // p_985->g_963
        0x5883BCB9L, // p_985->g_970
        {{0x30455957L,0UL,0x5812612CL,0UL,0x30455957L,0x30455957L,0UL,0x5812612CL},{0x30455957L,0UL,0x5812612CL,0UL,0x30455957L,0x30455957L,0UL,0x5812612CL},{0x30455957L,0UL,0x5812612CL,0UL,0x30455957L,0x30455957L,0UL,0x5812612CL},{0x30455957L,0UL,0x5812612CL,0UL,0x30455957L,0x30455957L,0UL,0x5812612CL},{0x30455957L,0UL,0x5812612CL,0UL,0x30455957L,0x30455957L,0UL,0x5812612CL},{0x30455957L,0UL,0x5812612CL,0UL,0x30455957L,0x30455957L,0UL,0x5812612CL},{0x30455957L,0UL,0x5812612CL,0UL,0x30455957L,0x30455957L,0UL,0x5812612CL},{0x30455957L,0UL,0x5812612CL,0UL,0x30455957L,0x30455957L,0UL,0x5812612CL},{0x30455957L,0UL,0x5812612CL,0UL,0x30455957L,0x30455957L,0UL,0x5812612CL},{0x30455957L,0UL,0x5812612CL,0UL,0x30455957L,0x30455957L,0UL,0x5812612CL}}, // p_985->g_974
        sequence_input[get_global_id(0)], // p_985->global_0_offset
        sequence_input[get_global_id(1)], // p_985->global_1_offset
        sequence_input[get_global_id(2)], // p_985->global_2_offset
        sequence_input[get_local_id(0)], // p_985->local_0_offset
        sequence_input[get_local_id(1)], // p_985->local_1_offset
        sequence_input[get_local_id(2)], // p_985->local_2_offset
        sequence_input[get_group_id(0)], // p_985->group_0_offset
        sequence_input[get_group_id(1)], // p_985->group_1_offset
        sequence_input[get_group_id(2)], // p_985->group_2_offset
    };
    c_986 = c_987;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_985);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_985->g_2, "p_985->g_2", print_hash_value);
    transparent_crc(p_985->g_6, "p_985->g_6", print_hash_value);
    transparent_crc(p_985->g_9, "p_985->g_9", print_hash_value);
    transparent_crc(p_985->g_13, "p_985->g_13", print_hash_value);
    transparent_crc(p_985->g_42, "p_985->g_42", print_hash_value);
    transparent_crc(p_985->g_108.x, "p_985->g_108.x", print_hash_value);
    transparent_crc(p_985->g_108.y, "p_985->g_108.y", print_hash_value);
    transparent_crc(p_985->g_122, "p_985->g_122", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_985->g_138[i], "p_985->g_138[i]", print_hash_value);

    }
    transparent_crc(p_985->g_146, "p_985->g_146", print_hash_value);
    transparent_crc(p_985->g_153, "p_985->g_153", print_hash_value);
    transparent_crc(p_985->g_198.s0, "p_985->g_198.s0", print_hash_value);
    transparent_crc(p_985->g_198.s1, "p_985->g_198.s1", print_hash_value);
    transparent_crc(p_985->g_198.s2, "p_985->g_198.s2", print_hash_value);
    transparent_crc(p_985->g_198.s3, "p_985->g_198.s3", print_hash_value);
    transparent_crc(p_985->g_198.s4, "p_985->g_198.s4", print_hash_value);
    transparent_crc(p_985->g_198.s5, "p_985->g_198.s5", print_hash_value);
    transparent_crc(p_985->g_198.s6, "p_985->g_198.s6", print_hash_value);
    transparent_crc(p_985->g_198.s7, "p_985->g_198.s7", print_hash_value);
    transparent_crc(p_985->g_198.s8, "p_985->g_198.s8", print_hash_value);
    transparent_crc(p_985->g_198.s9, "p_985->g_198.s9", print_hash_value);
    transparent_crc(p_985->g_198.sa, "p_985->g_198.sa", print_hash_value);
    transparent_crc(p_985->g_198.sb, "p_985->g_198.sb", print_hash_value);
    transparent_crc(p_985->g_198.sc, "p_985->g_198.sc", print_hash_value);
    transparent_crc(p_985->g_198.sd, "p_985->g_198.sd", print_hash_value);
    transparent_crc(p_985->g_198.se, "p_985->g_198.se", print_hash_value);
    transparent_crc(p_985->g_198.sf, "p_985->g_198.sf", print_hash_value);
    transparent_crc(p_985->g_201.s0, "p_985->g_201.s0", print_hash_value);
    transparent_crc(p_985->g_201.s1, "p_985->g_201.s1", print_hash_value);
    transparent_crc(p_985->g_201.s2, "p_985->g_201.s2", print_hash_value);
    transparent_crc(p_985->g_201.s3, "p_985->g_201.s3", print_hash_value);
    transparent_crc(p_985->g_201.s4, "p_985->g_201.s4", print_hash_value);
    transparent_crc(p_985->g_201.s5, "p_985->g_201.s5", print_hash_value);
    transparent_crc(p_985->g_201.s6, "p_985->g_201.s6", print_hash_value);
    transparent_crc(p_985->g_201.s7, "p_985->g_201.s7", print_hash_value);
    transparent_crc(p_985->g_201.s8, "p_985->g_201.s8", print_hash_value);
    transparent_crc(p_985->g_201.s9, "p_985->g_201.s9", print_hash_value);
    transparent_crc(p_985->g_201.sa, "p_985->g_201.sa", print_hash_value);
    transparent_crc(p_985->g_201.sb, "p_985->g_201.sb", print_hash_value);
    transparent_crc(p_985->g_201.sc, "p_985->g_201.sc", print_hash_value);
    transparent_crc(p_985->g_201.sd, "p_985->g_201.sd", print_hash_value);
    transparent_crc(p_985->g_201.se, "p_985->g_201.se", print_hash_value);
    transparent_crc(p_985->g_201.sf, "p_985->g_201.sf", print_hash_value);
    transparent_crc(p_985->g_204.s0, "p_985->g_204.s0", print_hash_value);
    transparent_crc(p_985->g_204.s1, "p_985->g_204.s1", print_hash_value);
    transparent_crc(p_985->g_204.s2, "p_985->g_204.s2", print_hash_value);
    transparent_crc(p_985->g_204.s3, "p_985->g_204.s3", print_hash_value);
    transparent_crc(p_985->g_204.s4, "p_985->g_204.s4", print_hash_value);
    transparent_crc(p_985->g_204.s5, "p_985->g_204.s5", print_hash_value);
    transparent_crc(p_985->g_204.s6, "p_985->g_204.s6", print_hash_value);
    transparent_crc(p_985->g_204.s7, "p_985->g_204.s7", print_hash_value);
    transparent_crc(p_985->g_204.s8, "p_985->g_204.s8", print_hash_value);
    transparent_crc(p_985->g_204.s9, "p_985->g_204.s9", print_hash_value);
    transparent_crc(p_985->g_204.sa, "p_985->g_204.sa", print_hash_value);
    transparent_crc(p_985->g_204.sb, "p_985->g_204.sb", print_hash_value);
    transparent_crc(p_985->g_204.sc, "p_985->g_204.sc", print_hash_value);
    transparent_crc(p_985->g_204.sd, "p_985->g_204.sd", print_hash_value);
    transparent_crc(p_985->g_204.se, "p_985->g_204.se", print_hash_value);
    transparent_crc(p_985->g_204.sf, "p_985->g_204.sf", print_hash_value);
    transparent_crc(p_985->g_205.s0, "p_985->g_205.s0", print_hash_value);
    transparent_crc(p_985->g_205.s1, "p_985->g_205.s1", print_hash_value);
    transparent_crc(p_985->g_205.s2, "p_985->g_205.s2", print_hash_value);
    transparent_crc(p_985->g_205.s3, "p_985->g_205.s3", print_hash_value);
    transparent_crc(p_985->g_205.s4, "p_985->g_205.s4", print_hash_value);
    transparent_crc(p_985->g_205.s5, "p_985->g_205.s5", print_hash_value);
    transparent_crc(p_985->g_205.s6, "p_985->g_205.s6", print_hash_value);
    transparent_crc(p_985->g_205.s7, "p_985->g_205.s7", print_hash_value);
    transparent_crc(p_985->g_221, "p_985->g_221", print_hash_value);
    transparent_crc(p_985->g_231, "p_985->g_231", print_hash_value);
    transparent_crc(p_985->g_233, "p_985->g_233", print_hash_value);
    transparent_crc(p_985->g_234, "p_985->g_234", print_hash_value);
    transparent_crc(p_985->g_242, "p_985->g_242", print_hash_value);
    transparent_crc(p_985->g_245, "p_985->g_245", print_hash_value);
    transparent_crc(p_985->g_246, "p_985->g_246", print_hash_value);
    transparent_crc(p_985->g_262.f0, "p_985->g_262.f0", print_hash_value);
    transparent_crc(p_985->g_264.f0, "p_985->g_264.f0", print_hash_value);
    transparent_crc(p_985->g_272.f0, "p_985->g_272.f0", print_hash_value);
    transparent_crc(p_985->g_282, "p_985->g_282", print_hash_value);
    transparent_crc(p_985->g_287, "p_985->g_287", print_hash_value);
    transparent_crc(p_985->g_288, "p_985->g_288", print_hash_value);
    transparent_crc(p_985->g_292.f0, "p_985->g_292.f0", print_hash_value);
    transparent_crc(p_985->g_301.x, "p_985->g_301.x", print_hash_value);
    transparent_crc(p_985->g_301.y, "p_985->g_301.y", print_hash_value);
    transparent_crc(p_985->g_339.x, "p_985->g_339.x", print_hash_value);
    transparent_crc(p_985->g_339.y, "p_985->g_339.y", print_hash_value);
    transparent_crc(p_985->g_339.z, "p_985->g_339.z", print_hash_value);
    transparent_crc(p_985->g_339.w, "p_985->g_339.w", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_985->g_362[i].f0, "p_985->g_362[i].f0", print_hash_value);

    }
    transparent_crc(p_985->g_372.f0, "p_985->g_372.f0", print_hash_value);
    transparent_crc(p_985->g_380.x, "p_985->g_380.x", print_hash_value);
    transparent_crc(p_985->g_380.y, "p_985->g_380.y", print_hash_value);
    transparent_crc(p_985->g_380.z, "p_985->g_380.z", print_hash_value);
    transparent_crc(p_985->g_380.w, "p_985->g_380.w", print_hash_value);
    transparent_crc(p_985->g_387.x, "p_985->g_387.x", print_hash_value);
    transparent_crc(p_985->g_387.y, "p_985->g_387.y", print_hash_value);
    transparent_crc(p_985->g_390.s0, "p_985->g_390.s0", print_hash_value);
    transparent_crc(p_985->g_390.s1, "p_985->g_390.s1", print_hash_value);
    transparent_crc(p_985->g_390.s2, "p_985->g_390.s2", print_hash_value);
    transparent_crc(p_985->g_390.s3, "p_985->g_390.s3", print_hash_value);
    transparent_crc(p_985->g_390.s4, "p_985->g_390.s4", print_hash_value);
    transparent_crc(p_985->g_390.s5, "p_985->g_390.s5", print_hash_value);
    transparent_crc(p_985->g_390.s6, "p_985->g_390.s6", print_hash_value);
    transparent_crc(p_985->g_390.s7, "p_985->g_390.s7", print_hash_value);
    transparent_crc(p_985->g_405.x, "p_985->g_405.x", print_hash_value);
    transparent_crc(p_985->g_405.y, "p_985->g_405.y", print_hash_value);
    transparent_crc(p_985->g_406, "p_985->g_406", print_hash_value);
    transparent_crc(p_985->g_407, "p_985->g_407", print_hash_value);
    transparent_crc(p_985->g_413.f0, "p_985->g_413.f0", print_hash_value);
    transparent_crc(p_985->g_432.x, "p_985->g_432.x", print_hash_value);
    transparent_crc(p_985->g_432.y, "p_985->g_432.y", print_hash_value);
    transparent_crc(p_985->g_432.z, "p_985->g_432.z", print_hash_value);
    transparent_crc(p_985->g_432.w, "p_985->g_432.w", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_985->g_454[i], "p_985->g_454[i]", print_hash_value);

    }
    transparent_crc(p_985->g_477.s0, "p_985->g_477.s0", print_hash_value);
    transparent_crc(p_985->g_477.s1, "p_985->g_477.s1", print_hash_value);
    transparent_crc(p_985->g_477.s2, "p_985->g_477.s2", print_hash_value);
    transparent_crc(p_985->g_477.s3, "p_985->g_477.s3", print_hash_value);
    transparent_crc(p_985->g_477.s4, "p_985->g_477.s4", print_hash_value);
    transparent_crc(p_985->g_477.s5, "p_985->g_477.s5", print_hash_value);
    transparent_crc(p_985->g_477.s6, "p_985->g_477.s6", print_hash_value);
    transparent_crc(p_985->g_477.s7, "p_985->g_477.s7", print_hash_value);
    transparent_crc(p_985->g_477.s8, "p_985->g_477.s8", print_hash_value);
    transparent_crc(p_985->g_477.s9, "p_985->g_477.s9", print_hash_value);
    transparent_crc(p_985->g_477.sa, "p_985->g_477.sa", print_hash_value);
    transparent_crc(p_985->g_477.sb, "p_985->g_477.sb", print_hash_value);
    transparent_crc(p_985->g_477.sc, "p_985->g_477.sc", print_hash_value);
    transparent_crc(p_985->g_477.sd, "p_985->g_477.sd", print_hash_value);
    transparent_crc(p_985->g_477.se, "p_985->g_477.se", print_hash_value);
    transparent_crc(p_985->g_477.sf, "p_985->g_477.sf", print_hash_value);
    transparent_crc(p_985->g_490.x, "p_985->g_490.x", print_hash_value);
    transparent_crc(p_985->g_490.y, "p_985->g_490.y", print_hash_value);
    transparent_crc(p_985->g_490.z, "p_985->g_490.z", print_hash_value);
    transparent_crc(p_985->g_490.w, "p_985->g_490.w", print_hash_value);
    transparent_crc(p_985->g_491.s0, "p_985->g_491.s0", print_hash_value);
    transparent_crc(p_985->g_491.s1, "p_985->g_491.s1", print_hash_value);
    transparent_crc(p_985->g_491.s2, "p_985->g_491.s2", print_hash_value);
    transparent_crc(p_985->g_491.s3, "p_985->g_491.s3", print_hash_value);
    transparent_crc(p_985->g_491.s4, "p_985->g_491.s4", print_hash_value);
    transparent_crc(p_985->g_491.s5, "p_985->g_491.s5", print_hash_value);
    transparent_crc(p_985->g_491.s6, "p_985->g_491.s6", print_hash_value);
    transparent_crc(p_985->g_491.s7, "p_985->g_491.s7", print_hash_value);
    transparent_crc(p_985->g_491.s8, "p_985->g_491.s8", print_hash_value);
    transparent_crc(p_985->g_491.s9, "p_985->g_491.s9", print_hash_value);
    transparent_crc(p_985->g_491.sa, "p_985->g_491.sa", print_hash_value);
    transparent_crc(p_985->g_491.sb, "p_985->g_491.sb", print_hash_value);
    transparent_crc(p_985->g_491.sc, "p_985->g_491.sc", print_hash_value);
    transparent_crc(p_985->g_491.sd, "p_985->g_491.sd", print_hash_value);
    transparent_crc(p_985->g_491.se, "p_985->g_491.se", print_hash_value);
    transparent_crc(p_985->g_491.sf, "p_985->g_491.sf", print_hash_value);
    transparent_crc(p_985->g_498, "p_985->g_498", print_hash_value);
    transparent_crc(p_985->g_516.f0, "p_985->g_516.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_985->g_541[i].f0, "p_985->g_541[i].f0", print_hash_value);

    }
    transparent_crc(p_985->g_559.s0, "p_985->g_559.s0", print_hash_value);
    transparent_crc(p_985->g_559.s1, "p_985->g_559.s1", print_hash_value);
    transparent_crc(p_985->g_559.s2, "p_985->g_559.s2", print_hash_value);
    transparent_crc(p_985->g_559.s3, "p_985->g_559.s3", print_hash_value);
    transparent_crc(p_985->g_559.s4, "p_985->g_559.s4", print_hash_value);
    transparent_crc(p_985->g_559.s5, "p_985->g_559.s5", print_hash_value);
    transparent_crc(p_985->g_559.s6, "p_985->g_559.s6", print_hash_value);
    transparent_crc(p_985->g_559.s7, "p_985->g_559.s7", print_hash_value);
    transparent_crc(p_985->g_559.s8, "p_985->g_559.s8", print_hash_value);
    transparent_crc(p_985->g_559.s9, "p_985->g_559.s9", print_hash_value);
    transparent_crc(p_985->g_559.sa, "p_985->g_559.sa", print_hash_value);
    transparent_crc(p_985->g_559.sb, "p_985->g_559.sb", print_hash_value);
    transparent_crc(p_985->g_559.sc, "p_985->g_559.sc", print_hash_value);
    transparent_crc(p_985->g_559.sd, "p_985->g_559.sd", print_hash_value);
    transparent_crc(p_985->g_559.se, "p_985->g_559.se", print_hash_value);
    transparent_crc(p_985->g_559.sf, "p_985->g_559.sf", print_hash_value);
    transparent_crc(p_985->g_562.x, "p_985->g_562.x", print_hash_value);
    transparent_crc(p_985->g_562.y, "p_985->g_562.y", print_hash_value);
    transparent_crc(p_985->g_563.x, "p_985->g_563.x", print_hash_value);
    transparent_crc(p_985->g_563.y, "p_985->g_563.y", print_hash_value);
    transparent_crc(p_985->g_568.s0, "p_985->g_568.s0", print_hash_value);
    transparent_crc(p_985->g_568.s1, "p_985->g_568.s1", print_hash_value);
    transparent_crc(p_985->g_568.s2, "p_985->g_568.s2", print_hash_value);
    transparent_crc(p_985->g_568.s3, "p_985->g_568.s3", print_hash_value);
    transparent_crc(p_985->g_568.s4, "p_985->g_568.s4", print_hash_value);
    transparent_crc(p_985->g_568.s5, "p_985->g_568.s5", print_hash_value);
    transparent_crc(p_985->g_568.s6, "p_985->g_568.s6", print_hash_value);
    transparent_crc(p_985->g_568.s7, "p_985->g_568.s7", print_hash_value);
    transparent_crc(p_985->g_568.s8, "p_985->g_568.s8", print_hash_value);
    transparent_crc(p_985->g_568.s9, "p_985->g_568.s9", print_hash_value);
    transparent_crc(p_985->g_568.sa, "p_985->g_568.sa", print_hash_value);
    transparent_crc(p_985->g_568.sb, "p_985->g_568.sb", print_hash_value);
    transparent_crc(p_985->g_568.sc, "p_985->g_568.sc", print_hash_value);
    transparent_crc(p_985->g_568.sd, "p_985->g_568.sd", print_hash_value);
    transparent_crc(p_985->g_568.se, "p_985->g_568.se", print_hash_value);
    transparent_crc(p_985->g_568.sf, "p_985->g_568.sf", print_hash_value);
    transparent_crc(p_985->g_571.s0, "p_985->g_571.s0", print_hash_value);
    transparent_crc(p_985->g_571.s1, "p_985->g_571.s1", print_hash_value);
    transparent_crc(p_985->g_571.s2, "p_985->g_571.s2", print_hash_value);
    transparent_crc(p_985->g_571.s3, "p_985->g_571.s3", print_hash_value);
    transparent_crc(p_985->g_571.s4, "p_985->g_571.s4", print_hash_value);
    transparent_crc(p_985->g_571.s5, "p_985->g_571.s5", print_hash_value);
    transparent_crc(p_985->g_571.s6, "p_985->g_571.s6", print_hash_value);
    transparent_crc(p_985->g_571.s7, "p_985->g_571.s7", print_hash_value);
    transparent_crc(p_985->g_572.s0, "p_985->g_572.s0", print_hash_value);
    transparent_crc(p_985->g_572.s1, "p_985->g_572.s1", print_hash_value);
    transparent_crc(p_985->g_572.s2, "p_985->g_572.s2", print_hash_value);
    transparent_crc(p_985->g_572.s3, "p_985->g_572.s3", print_hash_value);
    transparent_crc(p_985->g_572.s4, "p_985->g_572.s4", print_hash_value);
    transparent_crc(p_985->g_572.s5, "p_985->g_572.s5", print_hash_value);
    transparent_crc(p_985->g_572.s6, "p_985->g_572.s6", print_hash_value);
    transparent_crc(p_985->g_572.s7, "p_985->g_572.s7", print_hash_value);
    transparent_crc(p_985->g_572.s8, "p_985->g_572.s8", print_hash_value);
    transparent_crc(p_985->g_572.s9, "p_985->g_572.s9", print_hash_value);
    transparent_crc(p_985->g_572.sa, "p_985->g_572.sa", print_hash_value);
    transparent_crc(p_985->g_572.sb, "p_985->g_572.sb", print_hash_value);
    transparent_crc(p_985->g_572.sc, "p_985->g_572.sc", print_hash_value);
    transparent_crc(p_985->g_572.sd, "p_985->g_572.sd", print_hash_value);
    transparent_crc(p_985->g_572.se, "p_985->g_572.se", print_hash_value);
    transparent_crc(p_985->g_572.sf, "p_985->g_572.sf", print_hash_value);
    transparent_crc(p_985->g_578.s0, "p_985->g_578.s0", print_hash_value);
    transparent_crc(p_985->g_578.s1, "p_985->g_578.s1", print_hash_value);
    transparent_crc(p_985->g_578.s2, "p_985->g_578.s2", print_hash_value);
    transparent_crc(p_985->g_578.s3, "p_985->g_578.s3", print_hash_value);
    transparent_crc(p_985->g_578.s4, "p_985->g_578.s4", print_hash_value);
    transparent_crc(p_985->g_578.s5, "p_985->g_578.s5", print_hash_value);
    transparent_crc(p_985->g_578.s6, "p_985->g_578.s6", print_hash_value);
    transparent_crc(p_985->g_578.s7, "p_985->g_578.s7", print_hash_value);
    transparent_crc(p_985->g_578.s8, "p_985->g_578.s8", print_hash_value);
    transparent_crc(p_985->g_578.s9, "p_985->g_578.s9", print_hash_value);
    transparent_crc(p_985->g_578.sa, "p_985->g_578.sa", print_hash_value);
    transparent_crc(p_985->g_578.sb, "p_985->g_578.sb", print_hash_value);
    transparent_crc(p_985->g_578.sc, "p_985->g_578.sc", print_hash_value);
    transparent_crc(p_985->g_578.sd, "p_985->g_578.sd", print_hash_value);
    transparent_crc(p_985->g_578.se, "p_985->g_578.se", print_hash_value);
    transparent_crc(p_985->g_578.sf, "p_985->g_578.sf", print_hash_value);
    transparent_crc(p_985->g_581.s0, "p_985->g_581.s0", print_hash_value);
    transparent_crc(p_985->g_581.s1, "p_985->g_581.s1", print_hash_value);
    transparent_crc(p_985->g_581.s2, "p_985->g_581.s2", print_hash_value);
    transparent_crc(p_985->g_581.s3, "p_985->g_581.s3", print_hash_value);
    transparent_crc(p_985->g_581.s4, "p_985->g_581.s4", print_hash_value);
    transparent_crc(p_985->g_581.s5, "p_985->g_581.s5", print_hash_value);
    transparent_crc(p_985->g_581.s6, "p_985->g_581.s6", print_hash_value);
    transparent_crc(p_985->g_581.s7, "p_985->g_581.s7", print_hash_value);
    transparent_crc(p_985->g_583.s0, "p_985->g_583.s0", print_hash_value);
    transparent_crc(p_985->g_583.s1, "p_985->g_583.s1", print_hash_value);
    transparent_crc(p_985->g_583.s2, "p_985->g_583.s2", print_hash_value);
    transparent_crc(p_985->g_583.s3, "p_985->g_583.s3", print_hash_value);
    transparent_crc(p_985->g_583.s4, "p_985->g_583.s4", print_hash_value);
    transparent_crc(p_985->g_583.s5, "p_985->g_583.s5", print_hash_value);
    transparent_crc(p_985->g_583.s6, "p_985->g_583.s6", print_hash_value);
    transparent_crc(p_985->g_583.s7, "p_985->g_583.s7", print_hash_value);
    transparent_crc(p_985->g_585.s0, "p_985->g_585.s0", print_hash_value);
    transparent_crc(p_985->g_585.s1, "p_985->g_585.s1", print_hash_value);
    transparent_crc(p_985->g_585.s2, "p_985->g_585.s2", print_hash_value);
    transparent_crc(p_985->g_585.s3, "p_985->g_585.s3", print_hash_value);
    transparent_crc(p_985->g_585.s4, "p_985->g_585.s4", print_hash_value);
    transparent_crc(p_985->g_585.s5, "p_985->g_585.s5", print_hash_value);
    transparent_crc(p_985->g_585.s6, "p_985->g_585.s6", print_hash_value);
    transparent_crc(p_985->g_585.s7, "p_985->g_585.s7", print_hash_value);
    transparent_crc(p_985->g_585.s8, "p_985->g_585.s8", print_hash_value);
    transparent_crc(p_985->g_585.s9, "p_985->g_585.s9", print_hash_value);
    transparent_crc(p_985->g_585.sa, "p_985->g_585.sa", print_hash_value);
    transparent_crc(p_985->g_585.sb, "p_985->g_585.sb", print_hash_value);
    transparent_crc(p_985->g_585.sc, "p_985->g_585.sc", print_hash_value);
    transparent_crc(p_985->g_585.sd, "p_985->g_585.sd", print_hash_value);
    transparent_crc(p_985->g_585.se, "p_985->g_585.se", print_hash_value);
    transparent_crc(p_985->g_585.sf, "p_985->g_585.sf", print_hash_value);
    transparent_crc(p_985->g_647, "p_985->g_647", print_hash_value);
    transparent_crc(p_985->g_666.s0, "p_985->g_666.s0", print_hash_value);
    transparent_crc(p_985->g_666.s1, "p_985->g_666.s1", print_hash_value);
    transparent_crc(p_985->g_666.s2, "p_985->g_666.s2", print_hash_value);
    transparent_crc(p_985->g_666.s3, "p_985->g_666.s3", print_hash_value);
    transparent_crc(p_985->g_666.s4, "p_985->g_666.s4", print_hash_value);
    transparent_crc(p_985->g_666.s5, "p_985->g_666.s5", print_hash_value);
    transparent_crc(p_985->g_666.s6, "p_985->g_666.s6", print_hash_value);
    transparent_crc(p_985->g_666.s7, "p_985->g_666.s7", print_hash_value);
    transparent_crc(p_985->g_671.s0, "p_985->g_671.s0", print_hash_value);
    transparent_crc(p_985->g_671.s1, "p_985->g_671.s1", print_hash_value);
    transparent_crc(p_985->g_671.s2, "p_985->g_671.s2", print_hash_value);
    transparent_crc(p_985->g_671.s3, "p_985->g_671.s3", print_hash_value);
    transparent_crc(p_985->g_671.s4, "p_985->g_671.s4", print_hash_value);
    transparent_crc(p_985->g_671.s5, "p_985->g_671.s5", print_hash_value);
    transparent_crc(p_985->g_671.s6, "p_985->g_671.s6", print_hash_value);
    transparent_crc(p_985->g_671.s7, "p_985->g_671.s7", print_hash_value);
    transparent_crc(p_985->g_671.s8, "p_985->g_671.s8", print_hash_value);
    transparent_crc(p_985->g_671.s9, "p_985->g_671.s9", print_hash_value);
    transparent_crc(p_985->g_671.sa, "p_985->g_671.sa", print_hash_value);
    transparent_crc(p_985->g_671.sb, "p_985->g_671.sb", print_hash_value);
    transparent_crc(p_985->g_671.sc, "p_985->g_671.sc", print_hash_value);
    transparent_crc(p_985->g_671.sd, "p_985->g_671.sd", print_hash_value);
    transparent_crc(p_985->g_671.se, "p_985->g_671.se", print_hash_value);
    transparent_crc(p_985->g_671.sf, "p_985->g_671.sf", print_hash_value);
    transparent_crc(p_985->g_693.s0, "p_985->g_693.s0", print_hash_value);
    transparent_crc(p_985->g_693.s1, "p_985->g_693.s1", print_hash_value);
    transparent_crc(p_985->g_693.s2, "p_985->g_693.s2", print_hash_value);
    transparent_crc(p_985->g_693.s3, "p_985->g_693.s3", print_hash_value);
    transparent_crc(p_985->g_693.s4, "p_985->g_693.s4", print_hash_value);
    transparent_crc(p_985->g_693.s5, "p_985->g_693.s5", print_hash_value);
    transparent_crc(p_985->g_693.s6, "p_985->g_693.s6", print_hash_value);
    transparent_crc(p_985->g_693.s7, "p_985->g_693.s7", print_hash_value);
    transparent_crc(p_985->g_724.s0, "p_985->g_724.s0", print_hash_value);
    transparent_crc(p_985->g_724.s1, "p_985->g_724.s1", print_hash_value);
    transparent_crc(p_985->g_724.s2, "p_985->g_724.s2", print_hash_value);
    transparent_crc(p_985->g_724.s3, "p_985->g_724.s3", print_hash_value);
    transparent_crc(p_985->g_724.s4, "p_985->g_724.s4", print_hash_value);
    transparent_crc(p_985->g_724.s5, "p_985->g_724.s5", print_hash_value);
    transparent_crc(p_985->g_724.s6, "p_985->g_724.s6", print_hash_value);
    transparent_crc(p_985->g_724.s7, "p_985->g_724.s7", print_hash_value);
    transparent_crc(p_985->g_745, "p_985->g_745", print_hash_value);
    transparent_crc(p_985->g_785, "p_985->g_785", print_hash_value);
    transparent_crc(p_985->g_803, "p_985->g_803", print_hash_value);
    transparent_crc(p_985->g_816.x, "p_985->g_816.x", print_hash_value);
    transparent_crc(p_985->g_816.y, "p_985->g_816.y", print_hash_value);
    transparent_crc(p_985->g_835.x, "p_985->g_835.x", print_hash_value);
    transparent_crc(p_985->g_835.y, "p_985->g_835.y", print_hash_value);
    transparent_crc(p_985->g_835.z, "p_985->g_835.z", print_hash_value);
    transparent_crc(p_985->g_835.w, "p_985->g_835.w", print_hash_value);
    transparent_crc(p_985->g_847.x, "p_985->g_847.x", print_hash_value);
    transparent_crc(p_985->g_847.y, "p_985->g_847.y", print_hash_value);
    transparent_crc(p_985->g_847.z, "p_985->g_847.z", print_hash_value);
    transparent_crc(p_985->g_847.w, "p_985->g_847.w", print_hash_value);
    transparent_crc(p_985->g_848.s0, "p_985->g_848.s0", print_hash_value);
    transparent_crc(p_985->g_848.s1, "p_985->g_848.s1", print_hash_value);
    transparent_crc(p_985->g_848.s2, "p_985->g_848.s2", print_hash_value);
    transparent_crc(p_985->g_848.s3, "p_985->g_848.s3", print_hash_value);
    transparent_crc(p_985->g_848.s4, "p_985->g_848.s4", print_hash_value);
    transparent_crc(p_985->g_848.s5, "p_985->g_848.s5", print_hash_value);
    transparent_crc(p_985->g_848.s6, "p_985->g_848.s6", print_hash_value);
    transparent_crc(p_985->g_848.s7, "p_985->g_848.s7", print_hash_value);
    transparent_crc(p_985->g_848.s8, "p_985->g_848.s8", print_hash_value);
    transparent_crc(p_985->g_848.s9, "p_985->g_848.s9", print_hash_value);
    transparent_crc(p_985->g_848.sa, "p_985->g_848.sa", print_hash_value);
    transparent_crc(p_985->g_848.sb, "p_985->g_848.sb", print_hash_value);
    transparent_crc(p_985->g_848.sc, "p_985->g_848.sc", print_hash_value);
    transparent_crc(p_985->g_848.sd, "p_985->g_848.sd", print_hash_value);
    transparent_crc(p_985->g_848.se, "p_985->g_848.se", print_hash_value);
    transparent_crc(p_985->g_848.sf, "p_985->g_848.sf", print_hash_value);
    transparent_crc(p_985->g_856.s0, "p_985->g_856.s0", print_hash_value);
    transparent_crc(p_985->g_856.s1, "p_985->g_856.s1", print_hash_value);
    transparent_crc(p_985->g_856.s2, "p_985->g_856.s2", print_hash_value);
    transparent_crc(p_985->g_856.s3, "p_985->g_856.s3", print_hash_value);
    transparent_crc(p_985->g_856.s4, "p_985->g_856.s4", print_hash_value);
    transparent_crc(p_985->g_856.s5, "p_985->g_856.s5", print_hash_value);
    transparent_crc(p_985->g_856.s6, "p_985->g_856.s6", print_hash_value);
    transparent_crc(p_985->g_856.s7, "p_985->g_856.s7", print_hash_value);
    transparent_crc(p_985->g_856.s8, "p_985->g_856.s8", print_hash_value);
    transparent_crc(p_985->g_856.s9, "p_985->g_856.s9", print_hash_value);
    transparent_crc(p_985->g_856.sa, "p_985->g_856.sa", print_hash_value);
    transparent_crc(p_985->g_856.sb, "p_985->g_856.sb", print_hash_value);
    transparent_crc(p_985->g_856.sc, "p_985->g_856.sc", print_hash_value);
    transparent_crc(p_985->g_856.sd, "p_985->g_856.sd", print_hash_value);
    transparent_crc(p_985->g_856.se, "p_985->g_856.se", print_hash_value);
    transparent_crc(p_985->g_856.sf, "p_985->g_856.sf", print_hash_value);
    transparent_crc(p_985->g_858, "p_985->g_858", print_hash_value);
    transparent_crc(p_985->g_861, "p_985->g_861", print_hash_value);
    transparent_crc(p_985->g_875.s0, "p_985->g_875.s0", print_hash_value);
    transparent_crc(p_985->g_875.s1, "p_985->g_875.s1", print_hash_value);
    transparent_crc(p_985->g_875.s2, "p_985->g_875.s2", print_hash_value);
    transparent_crc(p_985->g_875.s3, "p_985->g_875.s3", print_hash_value);
    transparent_crc(p_985->g_875.s4, "p_985->g_875.s4", print_hash_value);
    transparent_crc(p_985->g_875.s5, "p_985->g_875.s5", print_hash_value);
    transparent_crc(p_985->g_875.s6, "p_985->g_875.s6", print_hash_value);
    transparent_crc(p_985->g_875.s7, "p_985->g_875.s7", print_hash_value);
    transparent_crc(p_985->g_875.s8, "p_985->g_875.s8", print_hash_value);
    transparent_crc(p_985->g_875.s9, "p_985->g_875.s9", print_hash_value);
    transparent_crc(p_985->g_875.sa, "p_985->g_875.sa", print_hash_value);
    transparent_crc(p_985->g_875.sb, "p_985->g_875.sb", print_hash_value);
    transparent_crc(p_985->g_875.sc, "p_985->g_875.sc", print_hash_value);
    transparent_crc(p_985->g_875.sd, "p_985->g_875.sd", print_hash_value);
    transparent_crc(p_985->g_875.se, "p_985->g_875.se", print_hash_value);
    transparent_crc(p_985->g_875.sf, "p_985->g_875.sf", print_hash_value);
    transparent_crc(p_985->g_876.x, "p_985->g_876.x", print_hash_value);
    transparent_crc(p_985->g_876.y, "p_985->g_876.y", print_hash_value);
    transparent_crc(p_985->g_917.x, "p_985->g_917.x", print_hash_value);
    transparent_crc(p_985->g_917.y, "p_985->g_917.y", print_hash_value);
    transparent_crc(p_985->g_920.s0, "p_985->g_920.s0", print_hash_value);
    transparent_crc(p_985->g_920.s1, "p_985->g_920.s1", print_hash_value);
    transparent_crc(p_985->g_920.s2, "p_985->g_920.s2", print_hash_value);
    transparent_crc(p_985->g_920.s3, "p_985->g_920.s3", print_hash_value);
    transparent_crc(p_985->g_920.s4, "p_985->g_920.s4", print_hash_value);
    transparent_crc(p_985->g_920.s5, "p_985->g_920.s5", print_hash_value);
    transparent_crc(p_985->g_920.s6, "p_985->g_920.s6", print_hash_value);
    transparent_crc(p_985->g_920.s7, "p_985->g_920.s7", print_hash_value);
    transparent_crc(p_985->g_920.s8, "p_985->g_920.s8", print_hash_value);
    transparent_crc(p_985->g_920.s9, "p_985->g_920.s9", print_hash_value);
    transparent_crc(p_985->g_920.sa, "p_985->g_920.sa", print_hash_value);
    transparent_crc(p_985->g_920.sb, "p_985->g_920.sb", print_hash_value);
    transparent_crc(p_985->g_920.sc, "p_985->g_920.sc", print_hash_value);
    transparent_crc(p_985->g_920.sd, "p_985->g_920.sd", print_hash_value);
    transparent_crc(p_985->g_920.se, "p_985->g_920.se", print_hash_value);
    transparent_crc(p_985->g_920.sf, "p_985->g_920.sf", print_hash_value);
    transparent_crc(p_985->g_921.x, "p_985->g_921.x", print_hash_value);
    transparent_crc(p_985->g_921.y, "p_985->g_921.y", print_hash_value);
    transparent_crc(p_985->g_921.z, "p_985->g_921.z", print_hash_value);
    transparent_crc(p_985->g_921.w, "p_985->g_921.w", print_hash_value);
    transparent_crc(p_985->g_963.x, "p_985->g_963.x", print_hash_value);
    transparent_crc(p_985->g_963.y, "p_985->g_963.y", print_hash_value);
    transparent_crc(p_985->g_970, "p_985->g_970", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_985->g_974[i][j], "p_985->g_974[i][j]", print_hash_value);

        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
