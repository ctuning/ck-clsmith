// ---fake_divergence -g 25,1,47 -l 5,1,47
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


// Seed: 50

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile uint8_t g_18;
    uint16_t g_21;
    VECTOR(uint64_t, 2) g_24;
    VECTOR(int32_t, 8) g_33;
    int32_t *g_60;
    volatile VECTOR(uint64_t, 16) g_88;
    uint32_t g_98;
    uint32_t g_116;
    VECTOR(int8_t, 4) g_134;
    int64_t g_152[1][2][7];
    volatile VECTOR(int16_t, 16) g_168;
    VECTOR(int16_t, 8) g_169;
    VECTOR(int16_t, 4) g_170;
    volatile VECTOR(int32_t, 16) g_186;
    VECTOR(int16_t, 4) g_188;
    volatile VECTOR(int16_t, 16) g_190;
    VECTOR(int8_t, 16) g_208;
    VECTOR(uint8_t, 2) g_211;
    volatile VECTOR(uint8_t, 2) g_216;
    uint32_t g_226;
    volatile int16_t * volatile g_229;
    volatile int8_t g_246;
    volatile int8_t *g_245;
    int64_t g_262;
    VECTOR(int16_t, 16) g_300;
    VECTOR(uint8_t, 16) g_320;
    VECTOR(uint8_t, 4) g_321;
    uint64_t *g_326[10][6][1];
    volatile VECTOR(int32_t, 8) g_329;
    volatile VECTOR(int32_t, 8) g_331;
    volatile VECTOR(int32_t, 2) g_334;
    VECTOR(int32_t, 8) g_338;
    volatile VECTOR(int32_t, 16) g_339;
    volatile VECTOR(int32_t, 2) g_342;
    VECTOR(int32_t, 4) g_343;
    volatile VECTOR(int32_t, 4) g_344;
    VECTOR(int32_t, 16) g_346;
    VECTOR(int32_t, 4) g_347;
    VECTOR(int32_t, 4) g_349;
    VECTOR(int8_t, 8) g_356;
    VECTOR(int8_t, 8) g_357;
    VECTOR(int8_t, 4) g_358;
    VECTOR(int8_t, 4) g_363;
    volatile int64_t g_377[8];
    volatile VECTOR(int32_t, 2) g_387;
    VECTOR(int32_t, 8) g_388;
    volatile int8_t g_404;
    VECTOR(uint16_t, 4) g_422;
    int32_t *g_454[10];
    int32_t ** volatile g_453;
    int32_t * volatile g_458;
    int32_t * volatile g_459;
    volatile VECTOR(uint32_t, 4) g_488;
    VECTOR(uint16_t, 16) g_493;
    VECTOR(uint16_t, 16) g_510;
    VECTOR(uint16_t, 16) g_520;
    VECTOR(uint16_t, 4) g_523;
    volatile int16_t g_533;
    volatile int16_t *g_532;
    VECTOR(int16_t, 4) g_553;
    int64_t g_560;
    VECTOR(int32_t, 4) g_584;
    volatile VECTOR(int32_t, 4) g_595;
    volatile VECTOR(uint8_t, 2) g_611;
    uint8_t g_614;
    VECTOR(int16_t, 4) g_621;
    VECTOR(int16_t, 8) g_622;
    VECTOR(int16_t, 2) g_623;
    volatile VECTOR(int16_t, 4) g_624;
    VECTOR(int16_t, 8) g_627;
    int32_t **g_637;
    int64_t *g_654;
    int64_t **g_653;
    volatile VECTOR(int8_t, 2) g_660;
    int32_t g_662;
    int64_t *g_734;
    VECTOR(uint16_t, 8) g_735;
    volatile VECTOR(int64_t, 4) g_736;
    VECTOR(int64_t, 4) g_739;
    VECTOR(uint64_t, 8) g_754;
    volatile VECTOR(int32_t, 2) g_764;
    int32_t g_769;
    int32_t * volatile g_784;
    int32_t * volatile g_785;
    int32_t * volatile g_792[1];
    volatile VECTOR(uint32_t, 8) g_801;
    VECTOR(int16_t, 16) g_847;
    VECTOR(int8_t, 16) g_857;
    VECTOR(int8_t, 16) g_858;
    int8_t g_911[4];
    uint32_t g_942;
    VECTOR(uint64_t, 16) g_945;
    volatile VECTOR(int16_t, 16) g_959;
    VECTOR(int16_t, 16) g_962;
    volatile VECTOR(int64_t, 4) g_980;
    VECTOR(int64_t, 4) g_983;
    VECTOR(int16_t, 4) g_992;
    VECTOR(int16_t, 16) g_993;
    volatile VECTOR(uint64_t, 4) g_1009;
    VECTOR(uint64_t, 4) g_1010;
    VECTOR(int8_t, 4) g_1023;
    int16_t g_1032;
    volatile uint16_t g_1036;
    volatile uint16_t *g_1035;
    volatile uint16_t ** volatile g_1034;
    volatile VECTOR(int16_t, 8) g_1043;
    volatile VECTOR(uint16_t, 2) g_1048;
    volatile VECTOR(int16_t, 16) g_1051;
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
int32_t  func_1(struct S0 * p_1083);
uint8_t  func_4(int32_t  p_5, int8_t  p_6, struct S0 * p_1083);
uint8_t  func_7(uint16_t  p_8, uint64_t  p_9, struct S0 * p_1083);
int16_t  func_12(int8_t  p_13, int32_t  p_14, uint64_t  p_15, int64_t  p_16, struct S0 * p_1083);
int32_t * func_38(uint32_t  p_39, uint64_t  p_40, int32_t * p_41, uint8_t  p_42, int32_t * p_43, struct S0 * p_1083);
uint32_t  func_44(uint32_t  p_45, int64_t  p_46, struct S0 * p_1083);
int32_t * func_47(int32_t * p_48, uint32_t  p_49, int32_t * p_50, struct S0 * p_1083);
int8_t  func_53(uint16_t  p_54, struct S0 * p_1083);
int32_t * func_55(int32_t * p_56, int32_t * p_57, int64_t  p_58, int32_t  p_59, struct S0 * p_1083);
int32_t * func_64(int64_t  p_65, int64_t  p_66, int32_t * p_67, int32_t  p_68, int32_t  p_69, struct S0 * p_1083);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1083->g_18 p_1083->g_21 p_1083->g_24 p_1083->g_33 p_1083->g_60 p_1083->g_88 p_1083->g_98 p_1083->g_134 p_1083->g_168 p_1083->g_169 p_1083->g_170 p_1083->g_116 p_1083->g_186 p_1083->g_188 p_1083->g_190 p_1083->g_152 p_1083->g_208 p_1083->g_211 p_1083->g_216 p_1083->g_226 p_1083->g_229 p_1083->g_245 p_1083->g_300 p_1083->g_320 p_1083->g_321 p_1083->g_246 p_1083->g_326 p_1083->g_329 p_1083->g_331 p_1083->g_334 p_1083->g_338 p_1083->g_339 p_1083->g_342 p_1083->g_343 p_1083->g_344 p_1083->g_346 p_1083->g_347 p_1083->g_349 p_1083->g_356 p_1083->g_357 p_1083->g_358 p_1083->g_363 p_1083->g_387 p_1083->g_388 p_1083->g_422 p_1083->g_453 p_1083->g_454 p_1083->g_637 p_1083->g_623 p_1083->g_653 p_1083->g_627 p_1083->g_660 p_1083->g_662 p_1083->g_654 p_1083->g_262 p_1083->g_735 p_1083->g_736 p_1083->g_739 p_1083->g_754 p_1083->g_764 p_1083->g_614 p_1083->g_785 p_1083->g_532 p_1083->g_533 p_1083->g_560 p_1083->g_801 p_1083->g_847 p_1083->g_857 p_1083->g_858 p_1083->g_520 p_1083->g_911 p_1083->g_942 p_1083->g_945 p_1083->g_959 p_1083->g_962 p_1083->g_980 p_1083->g_983 p_1083->g_992 p_1083->g_993 p_1083->g_1009 p_1083->g_1010 p_1083->g_1023 p_1083->g_523 p_1083->g_1032 p_1083->g_1034 p_1083->g_1043 p_1083->g_1048 p_1083->g_1051 p_1083->g_1035 p_1083->g_1036
 * writes: p_1083->g_98 p_1083->g_24 p_1083->g_116 p_1083->g_60 p_1083->g_21 p_1083->g_170 p_1083->g_226 p_1083->g_186 p_1083->g_387 p_1083->g_454 p_1083->g_662 p_1083->g_734 p_1083->g_560 p_1083->g_769 p_1083->g_614 p_1083->g_653 p_1083->g_262 p_1083->g_357 p_1083->g_152 p_1083->g_942
 */
int32_t  func_1(struct S0 * p_1083)
{ /* block id: 4 */
    uint64_t l_17 = 0xE1F6F08421705914L;
    VECTOR(uint16_t, 8) l_25 = (VECTOR(uint16_t, 8))(0xA8CCL, (VECTOR(uint16_t, 4))(0xA8CCL, (VECTOR(uint16_t, 2))(0xA8CCL, 0xB775L), 0xB775L), 0xB775L, 0xA8CCL, 0xB775L);
    uint32_t l_28[10][7] = {{0x2F69A016L,0x9EF57A55L,0UL,0xABA9A984L,9UL,0x607F4707L,4294967295UL},{0x2F69A016L,0x9EF57A55L,0UL,0xABA9A984L,9UL,0x607F4707L,4294967295UL},{0x2F69A016L,0x9EF57A55L,0UL,0xABA9A984L,9UL,0x607F4707L,4294967295UL},{0x2F69A016L,0x9EF57A55L,0UL,0xABA9A984L,9UL,0x607F4707L,4294967295UL},{0x2F69A016L,0x9EF57A55L,0UL,0xABA9A984L,9UL,0x607F4707L,4294967295UL},{0x2F69A016L,0x9EF57A55L,0UL,0xABA9A984L,9UL,0x607F4707L,4294967295UL},{0x2F69A016L,0x9EF57A55L,0UL,0xABA9A984L,9UL,0x607F4707L,4294967295UL},{0x2F69A016L,0x9EF57A55L,0UL,0xABA9A984L,9UL,0x607F4707L,4294967295UL},{0x2F69A016L,0x9EF57A55L,0UL,0xABA9A984L,9UL,0x607F4707L,4294967295UL},{0x2F69A016L,0x9EF57A55L,0UL,0xABA9A984L,9UL,0x607F4707L,4294967295UL}};
    int32_t *l_1041 = &p_1083->g_662;
    VECTOR(int16_t, 2) l_1042 = (VECTOR(int16_t, 2))((-1L), 0x0439L);
    VECTOR(uint16_t, 2) l_1049 = (VECTOR(uint16_t, 2))(65534UL, 65526UL);
    VECTOR(int16_t, 2) l_1050 = (VECTOR(int16_t, 2))(0x4A73L, 0x35FEL);
    VECTOR(uint16_t, 8) l_1058 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x6968L), 0x6968L), 0x6968L, 0UL, 0x6968L);
    VECTOR(uint16_t, 8) l_1067 = (VECTOR(uint16_t, 8))(0x9C27L, (VECTOR(uint16_t, 4))(0x9C27L, (VECTOR(uint16_t, 2))(0x9C27L, 4UL), 4UL), 4UL, 0x9C27L, 4UL);
    uint32_t *l_1069 = &p_1083->g_98;
    uint32_t **l_1068 = &l_1069;
    int8_t l_1074 = 1L;
    VECTOR(uint64_t, 4) l_1077 = (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 3UL), 3UL);
    int32_t l_1082 = 3L;
    int i, j;
    (*l_1041) = ((safe_mul_func_uint8_t_u_u(func_4((func_7((safe_add_func_int16_t_s_s(func_12(l_17, (+((p_1083->g_18 == 0xEA0DL) ^ (((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(p_1083->g_21, ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(p_1083->g_24.yxyy)), ((((VECTOR(uint16_t, 16))(0x992FL, l_17, ((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 2))(l_25.s03)).yyyx, ((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 4))(p_1083->g_24.y, l_28[8][2], 0UL, 1UL)).lo, (uint16_t)(((safe_add_func_uint32_t_u_u((((((p_1083->g_21 || (safe_div_func_int32_t_s_s(((VECTOR(int32_t, 4))(p_1083->g_33.s6626)).w, (((safe_rshift_func_uint16_t_u_s(((safe_add_func_uint64_t_u_u(1UL, p_1083->g_33.s4)) == p_1083->g_24.y), 5)) ^ p_1083->g_21) , 1UL)))) && p_1083->g_24.x) != 0x13L) == p_1083->g_24.y) && 7L), 0x02A9564FL)) || p_1083->g_24.y) , l_28[8][2])))), (uint16_t)l_28[7][4]))) + ((VECTOR(uint16_t, 2))(0x35CAL)))))))).yyxy))).zwxyxzxw, ((VECTOR(uint16_t, 8))(0x88C8L))))), ((VECTOR(uint16_t, 2))(0x74B8L)), l_25.s2, 0x0315L, 0x5795L, 1UL)).s0 , p_1083->g_21) <= p_1083->g_33.s0), ((VECTOR(uint64_t, 2))(0xACA8A51D4F00D13BL)), 0UL)).s64 + ((VECTOR(uint64_t, 2))(0x241E226996DCEBFDL))))), ((VECTOR(uint64_t, 8))(4UL)), 0xE8EE08A9CBEBA436L, 0UL, 0x9DB4546B77D8654EL, 0x0E68AC39FBD05855L, 9UL)) >> ((VECTOR(uint64_t, 16))(64))))).sf , 7L))), p_1083->g_24.y, l_25.s5, p_1083), 65535UL)), p_1083->g_520.s4, p_1083) && l_25.s5), p_1083->g_343.x, p_1083), 250UL)) ^ 4294967293UL);
    (*l_1041) = ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),int16_t,((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(l_1042.xyxyxyyx)).s62, ((VECTOR(int16_t, 16))(p_1083->g_1043.s7470300234170215)).sd4))).yyyxxyxyxyxxxxxx, (int16_t)(safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 4))(p_1083->g_1048.yxxx)), ((VECTOR(uint16_t, 4))(l_1049.yxyx))))), 65535UL, ((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 8))(l_1050.xyyxxxyx)).s46, ((VECTOR(int16_t, 2))(p_1083->g_1051.sc9))))), ((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 8))((+((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 16))(l_1058.s0016212524605747)).sab00, ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),VECTOR(uint16_t, 4),((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_1067.s73)), ((*l_1041) , ((((*l_1068) = &p_1083->g_98) != &p_1083->g_98) | (0x0BL || ((safe_rshift_func_int8_t_s_s(0x24L, 7)) , (safe_sub_func_int64_t_s_s((l_1074 && ((void*)0 == (*p_1083->g_1034))), ((void*)0 != &p_1083->g_911[0]))))))), ((VECTOR(uint16_t, 8))(65532UL)), 0UL, 1UL, (**p_1083->g_1034), 0x06BAL, 0x0B84L)).s1f))) + ((VECTOR(uint16_t, 2))(65535UL))))) + ((VECTOR(uint16_t, 2))(0xAA51L))))).yxxyyyxy << ((VECTOR(uint16_t, 8))(65532UL))))).s53, ((VECTOR(uint16_t, 2))(9UL))))), (uint16_t)65530UL))), 0xCF6EL, 0x6291L)), 0xAAE7L, (**p_1083->g_1034), 0x7AB4L, 0x14B8L, 1UL, 0xA42BL, ((VECTOR(uint16_t, 4))(0xF7C0L)), 0UL, 0xDB0FL)).s5724, (uint16_t)(*l_1041)))), ((VECTOR(uint16_t, 4))(1UL)), ((VECTOR(uint16_t, 4))(0xB728L))))).wxzwwxzxyzyxxwxy * ((VECTOR(uint16_t, 16))(0xB389L))))).sc8ae))).odd - ((VECTOR(uint16_t, 2))(0x8348L))))).xxxxxyxy))).s6430176146035222, (uint16_t)(*l_1041)))), ((VECTOR(uint16_t, 16))(0x8FE2L))))).odd + ((VECTOR(uint16_t, 8))(0UL))))).even + ((VECTOR(uint16_t, 4))(0x65E9L))))), ((VECTOR(uint16_t, 4))(65534UL))))), ((VECTOR(uint16_t, 2))(1UL)), 7UL, 0x2236L, 65527UL)).s8f60 + ((VECTOR(uint16_t, 4))(0x903AL))))).w, 3))))).hi && ((VECTOR(int16_t, 8))((-6L)))))).odd, (int16_t)0x4FDCL, (int16_t)(*l_1041)))), (*p_1083->g_532), ((VECTOR(int16_t, 8))((-7L))), ((VECTOR(int16_t, 2))(1L)), 6L)).odd, ((VECTOR(int16_t, 8))((-1L)))))).s7461152571463317, ((VECTOR(uint16_t, 16))(0xF708L))))).sc6bd, ((VECTOR(int32_t, 4))(0x1627A2F1L))))).wwzzxzyy, ((VECTOR(int32_t, 8))(9L))))).s1;
    l_1082 &= (safe_rshift_func_uint8_t_u_s(((((VECTOR(uint64_t, 8))(l_1077.wyywyxzx)).s5 <= (safe_mul_func_uint16_t_u_u((((*l_1041) || ((VECTOR(uint8_t, 2))(252UL, 0x38L)).hi) == (((VECTOR(uint32_t, 8))((safe_mod_func_int32_t_s_s((*l_1041), (-1L))), 1UL, (&p_1083->g_654 == &p_1083->g_654), FAKE_DIVERGE(p_1083->global_0_offset, get_global_id(0), 10), 0x2C31AB49L, 4294967293UL, 1UL, 0xAE913A1CL)).s1 | (&p_1083->g_560 != &p_1083->g_560))), ((void*)0 == &l_1069)))) , 0xF8L), (*p_1083->g_245)));
    return p_1083->g_857.s9;
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_226 p_1083->g_532 p_1083->g_533 p_1083->g_942 p_1083->g_945 p_1083->g_959 p_1083->g_962 p_1083->g_116 p_1083->g_857 p_1083->g_654 p_1083->g_262 p_1083->g_980 p_1083->g_983 p_1083->g_245 p_1083->g_246 p_1083->g_21 p_1083->g_992 p_1083->g_993 p_1083->g_1009 p_1083->g_1010 p_1083->g_1023 p_1083->g_388 p_1083->g_523 p_1083->g_356 p_1083->g_1032 p_1083->g_627 p_1083->g_1034 p_1083->g_453 p_1083->g_454 p_1083->g_785 p_1083->g_422 p_1083->g_637 p_1083->g_321 p_1083->g_662
 * writes: p_1083->g_226 p_1083->g_942 p_1083->g_116 p_1083->g_21 p_1083->g_662 p_1083->g_454 p_1083->g_560
 */
uint8_t  func_4(int32_t  p_5, int8_t  p_6, struct S0 * p_1083)
{ /* block id: 272 */
    uint32_t l_918 = 0UL;
    int32_t l_930 = 0L;
    int32_t l_931 = 1L;
    int32_t l_935[2][4] = {{0x02F39DA1L,(-1L),0x02F39DA1L,0x02F39DA1L},{0x02F39DA1L,(-1L),0x02F39DA1L,0x02F39DA1L}};
    int16_t l_939 = 7L;
    int32_t l_941 = 0x609FD8A9L;
    int64_t **l_956 = &p_1083->g_654;
    VECTOR(int16_t, 8) l_957 = (VECTOR(int16_t, 8))(0x6842L, (VECTOR(int16_t, 4))(0x6842L, (VECTOR(int16_t, 2))(0x6842L, 0L), 0L), 0L, 0x6842L, 0L);
    VECTOR(int16_t, 4) l_958 = (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), 5L), 5L);
    VECTOR(int16_t, 4) l_960 = (VECTOR(int16_t, 4))(0x1A8AL, (VECTOR(int16_t, 2))(0x1A8AL, (-4L)), (-4L));
    VECTOR(int16_t, 8) l_961 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
    VECTOR(int16_t, 2) l_963 = (VECTOR(int16_t, 2))(1L, 0x45B2L);
    uint32_t *l_966 = &p_1083->g_116;
    VECTOR(int8_t, 4) l_969 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x65L), 0x65L);
    VECTOR(int8_t, 16) l_970 = (VECTOR(int8_t, 16))((-7L), (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 0L), 0L), 0L, (-7L), 0L, (VECTOR(int8_t, 2))((-7L), 0L), (VECTOR(int8_t, 2))((-7L), 0L), (-7L), 0L, (-7L), 0L);
    uint16_t *l_977 = (void*)0;
    uint16_t *l_978 = (void*)0;
    uint16_t *l_979 = &p_1083->g_21;
    VECTOR(int64_t, 16) l_981 = (VECTOR(int64_t, 16))((-8L), (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), (-7L)), (-7L)), (-7L), (-8L), (-7L), (VECTOR(int64_t, 2))((-8L), (-7L)), (VECTOR(int64_t, 2))((-8L), (-7L)), (-8L), (-7L), (-8L), (-7L));
    VECTOR(int64_t, 4) l_982 = (VECTOR(int64_t, 4))(0x6CB4394C21CFFED5L, (VECTOR(int64_t, 2))(0x6CB4394C21CFFED5L, (-5L)), (-5L));
    VECTOR(int64_t, 2) l_984 = (VECTOR(int64_t, 2))(0x43B4B5F2A97267ABL, 0x2CD8B6DEB68A86A4L);
    VECTOR(uint16_t, 16) l_991 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), 1UL), 1UL, 65535UL, 1UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), (VECTOR(uint16_t, 2))(65535UL, 1UL), 65535UL, 1UL, 65535UL, 1UL);
    VECTOR(uint16_t, 2) l_996 = (VECTOR(uint16_t, 2))(0xAEA1L, 6UL);
    VECTOR(uint64_t, 16) l_1013 = (VECTOR(uint64_t, 16))(8UL, (VECTOR(uint64_t, 4))(8UL, (VECTOR(uint64_t, 2))(8UL, 0x395F94F1CB589757L), 0x395F94F1CB589757L), 0x395F94F1CB589757L, 8UL, 0x395F94F1CB589757L, (VECTOR(uint64_t, 2))(8UL, 0x395F94F1CB589757L), (VECTOR(uint64_t, 2))(8UL, 0x395F94F1CB589757L), 8UL, 0x395F94F1CB589757L, 8UL, 0x395F94F1CB589757L);
    VECTOR(int8_t, 16) l_1016 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x4FL), 0x4FL), 0x4FL, 1L, 0x4FL, (VECTOR(int8_t, 2))(1L, 0x4FL), (VECTOR(int8_t, 2))(1L, 0x4FL), 1L, 0x4FL, 1L, 0x4FL);
    VECTOR(int16_t, 16) l_1040 = (VECTOR(int16_t, 16))(0x50ECL, (VECTOR(int16_t, 4))(0x50ECL, (VECTOR(int16_t, 2))(0x50ECL, 0L), 0L), 0L, 0x50ECL, 0L, (VECTOR(int16_t, 2))(0x50ECL, 0L), (VECTOR(int16_t, 2))(0x50ECL, 0L), 0x50ECL, 0L, 0x50ECL, 0L);
    int i, j;
    for (p_1083->g_226 = 0; (p_1083->g_226 > 51); p_1083->g_226++)
    { /* block id: 275 */
        uint32_t l_919 = 0xFC424C66L;
        uint64_t *l_924 = (void*)0;
        uint64_t *l_925 = (void*)0;
        uint64_t *l_926 = (void*)0;
        uint64_t *l_927 = (void*)0;
        uint64_t *l_928 = (void*)0;
        uint64_t *l_929[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_932 = 0L;
        int32_t l_933 = 0x23FC0E27L;
        int32_t l_934 = (-1L);
        int32_t l_936 = 0x36AA055BL;
        int32_t l_937 = 0x7222FD1BL;
        int32_t l_938[3];
        int32_t l_940 = 0x4D4EB212L;
        VECTOR(uint64_t, 16) l_948 = (VECTOR(uint64_t, 16))(0xFAEC227CC7FF2AC7L, (VECTOR(uint64_t, 4))(0xFAEC227CC7FF2AC7L, (VECTOR(uint64_t, 2))(0xFAEC227CC7FF2AC7L, 1UL), 1UL), 1UL, 0xFAEC227CC7FF2AC7L, 1UL, (VECTOR(uint64_t, 2))(0xFAEC227CC7FF2AC7L, 1UL), (VECTOR(uint64_t, 2))(0xFAEC227CC7FF2AC7L, 1UL), 0xFAEC227CC7FF2AC7L, 1UL, 0xFAEC227CC7FF2AC7L, 1UL);
        int32_t *l_955 = &l_932;
        int i;
        for (i = 0; i < 3; i++)
            l_938[i] = 0x5FBB8C6AL;
        (*l_955) ^= (safe_lshift_func_int16_t_s_s((*p_1083->g_532), ((~p_6) < ((l_918 < ((l_919 >= ((safe_add_func_uint64_t_u_u(p_5, (((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(0x9617902F82D52566L, 18446744073709551615UL)), 0x53E1B9C1608CC01AL, ((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(0xCA7C04BE11569FB2L, p_5, (p_1083->g_942--), 18446744073709551606UL, ((VECTOR(uint64_t, 2))(p_1083->g_945.s3b)), 0x4F9C2044DCEEC66AL, 18446744073709551615UL)).s36 + ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(l_948.s27)).xyyxxxxxyyxyyyxx + ((VECTOR(uint64_t, 8))((GROUP_DIVERGE(2, 1) < ((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),int8_t,((VECTOR(int8_t, 2))(0x15L, 0x28L)).yyxyyxyxxxyxxxxy, (int8_t)p_5, (int8_t)((safe_lshift_func_int16_t_s_u(((safe_add_func_uint64_t_u_u(0UL, p_6)) < 4294967290UL), 8)) > 0UL)))).sa), l_948.s1, 18446744073709551608UL, ((VECTOR(uint64_t, 4))(1UL)), 18446744073709551615UL)).s6550430546051367))).s89))).yyyy, ((VECTOR(uint64_t, 4))(0UL))))), 0x253E0791E0BF4110L)).s2 & l_948.sf))) | l_935[1][2])) , 0x54F6L)) <= (-1L)))));
    }
    if (((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 16))((l_956 != &p_1083->g_654), 0x2C36L, 0x2C70L, 0x4B07L, (-1L), ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(l_957.s2461303557562270)).lo || ((VECTOR(int16_t, 4))(l_958.zxyz)).yxxzzxwy))).even > ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(p_1083->g_959.see)) && ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 8))(l_960.zwxyyyxx)), ((VECTOR(int16_t, 4))(l_961.s2014)).zzywzxzx))).s0732636045015637 && ((VECTOR(int16_t, 4))(p_1083->g_962.sd47c)).zwxywwwxwxxwzwyw)))))).s01 > ((VECTOR(int16_t, 16))(l_963.xyxxxxyyxyxxxxyy)).s70))), 0x79F5L, 0x69F5L)).hi))).xxyxyxxy, (int16_t)(safe_sub_func_uint64_t_u_u(((((*l_966) &= 0x44E5564AL) , (l_935[1][1] ^ (safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_969.wz)), 0L, 0x57L)).xxzxwxzy, ((VECTOR(int8_t, 8))(0x3AL, ((VECTOR(int8_t, 2))((-5L), 0x59L)), ((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 4))(0L, 1L, 0x0EL, 0L)).xzyyxwzxywyyywyz, ((VECTOR(int8_t, 8))(l_970.s6fb1bb12)).s5544721437332605, ((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 8))((safe_sub_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(p_6, ((*l_979) = p_1083->g_857.se))), ((*p_1083->g_654) >= ((((VECTOR(int64_t, 8))(p_1083->g_980.yzzyzxyy)).s6 == ((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(0x2E2C4F19C7EA85CAL, 0L)).xxxy && ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(l_981.s31d22ca9)).s31 >= ((VECTOR(int64_t, 2))(l_982.yw))))).xxxx))), ((VECTOR(int64_t, 16))(p_1083->g_983.xwzyywxxzxxzzwyz)).se12a, ((VECTOR(int64_t, 16))(l_984.xyyxyyxxxxxyyxxy)).s6e6d))).w) || 0UL)))), l_958.w)), ((VECTOR(int8_t, 2))(1L)), ((VECTOR(int8_t, 2))((-2L))), ((VECTOR(int8_t, 2))(1L)), (-1L))).lo, ((VECTOR(int8_t, 4))(1L))))).zwwywwzz, ((VECTOR(int8_t, 8))(0x08L))))).s5400516412101104))).sfacf, (int8_t)(*p_1083->g_245)))), 0x08L))))).odd, ((VECTOR(int8_t, 4))((-1L)))))), (int8_t)0x65L, (int8_t)0L))).w, FAKE_DIVERGE(p_1083->global_0_offset, get_global_id(0), 10))))) >= l_969.z), p_5))))) ^ ((VECTOR(int16_t, 8))(0x6DC9L))))).hi))), (*p_1083->g_532), ((VECTOR(int16_t, 2))(0x0640L)), 0x51DEL, ((VECTOR(int16_t, 2))(6L)), 0x02FFL)).lo, ((VECTOR(int16_t, 8))((-1L))), ((VECTOR(int16_t, 8))(0x5C50L))))), ((VECTOR(uint16_t, 8))(0x77ABL))))).s1)
    { /* block id: 281 */
        uint16_t *l_987 = (void*)0;
        uint16_t *l_988 = (void*)0;
        uint16_t *l_989 = (void*)0;
        uint16_t *l_990[3];
        VECTOR(int8_t, 2) l_1017 = (VECTOR(int8_t, 2))(0x01L, (-1L));
        VECTOR(int8_t, 8) l_1022 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x14L), 0x14L), 0x14L, 0L, 0x14L);
        int32_t *l_1033[4][7][5] = {{{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931}},{{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931}},{{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931}},{{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931},{(void*)0,(void*)0,&l_931,&p_1083->g_662,&l_931}}};
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_990[i] = (void*)0;
        l_931 |= ((((VECTOR(uint16_t, 4))((l_935[0][1] = (~(--(*l_979)))), ((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 4))(l_991.sd8f9)).yzzxwwww, ((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(int16_t, 2))(p_1083->g_992.yw)).xxxy, ((VECTOR(int16_t, 4))(p_1083->g_993.sc7bb))))).yzwzywwx))).s63, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(l_996.yyyy)).even + ((VECTOR(uint16_t, 4))(0xDEC5L, 0xD9F1L, 1UL, 4UL)).even)))))), 65535UL)).x != ((l_930 |= (((4L != ((safe_mod_func_int8_t_s_s((l_984.y != ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 4))(0L, (((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))(18446744073709551613UL, ((VECTOR(uint64_t, 4))(p_1083->g_1009.wxyz)), 0UL, 0xE36659FC144CBD6AL, 0x01AB42A909FCF980L)).lo + ((VECTOR(uint64_t, 2))(p_1083->g_1010.yw)).yxyy))).yxyzzywywyxyxzwz + ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))(l_1013.s9a55)).even * ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),uint32_t,((VECTOR(uint32_t, 2))(abs(((VECTOR(int32_t, 4))(p_5, 0x0DB68B95L, 0x26B54CDBL, 0x58CAD1E9L)).lo))).yxyxyyyx, (uint32_t)(((l_979 == p_1083->g_532) <= l_996.y) >= ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(0x48L, 1L)).yxxyyxyyxxyyyxyy > ((VECTOR(int8_t, 8))(l_1016.s28450fe3)).s1203641205125223))).s4ff1 < ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))((~((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(l_1017.yyxxyxyx)).s0, (safe_lshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_u(l_1017.x, 6)), 15)), 0x7FL, 0L)).yxwxwywwyzxwwxxw))).even && ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(l_1022.s51)) && ((VECTOR(int8_t, 2))(9L, (-1L)))))), ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(p_1083->g_1023.yywxwxzxxwywzzyy)).odd && ((VECTOR(int8_t, 4))((((0x2BDCC2A0L & ((((safe_add_func_int64_t_s_s(((((safe_rshift_func_int16_t_s_s(((safe_div_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u(p_6, p_1083->g_388.s1)), p_1083->g_523.w)) & p_5), 2)) ^ p_6) && l_1017.y) >= l_1022.s1), 0x2358ADAA8A4F5A3FL)) && l_1022.s3) != p_1083->g_356.s1) | l_1022.s0)) , p_1083->g_1032) ^ p_5), 0x4DL, 0x64L, 1L)).wxzxzzxw))).s10))).xyyyxyyx))) > ((VECTOR(int8_t, 8))(0x3CL))))).hi))).x), (uint32_t)0x62FB4BD0L))).s45, ((VECTOR(uint32_t, 2))(0x36D497ACL))))).xxyx + ((VECTOR(uint64_t, 4))(1UL))))).odd))).yyyyxxyxxxxxxyyy))).sd443 + ((VECTOR(uint64_t, 4))(18446744073709551610UL))))).odd + ((VECTOR(uint64_t, 2))(0x3C63CBB53361424FL))))).even == p_5), 0x30L, 0x7EL)).hi, ((VECTOR(int8_t, 2))(0x44L))))), 1UL, 248UL)).even + ((VECTOR(uint8_t, 2))(0xF7L))))).odd), p_5)) > 0x4D3DEC27L)) & 0UL) , p_6)) || 0x4ED567D5L)) & FAKE_DIVERGE(p_1083->local_2_offset, get_local_id(2), 10));
        return p_1083->g_627.s2;
    }
    else
    { /* block id: 287 */
        int32_t *l_1037 = &l_935[1][2];
        (*l_1037) &= ((p_1083->g_1034 == (void*)0) ^ l_963.x);
    }
    (*p_1083->g_637) = func_38((((p_6 , &l_956) != &l_956) <= p_5), l_963.y, &l_930, ((((&p_1083->g_769 != &p_1083->g_769) < (safe_rshift_func_int8_t_s_u((l_981.sa < p_5), 5))) == p_6) == l_1040.s5), (*p_1083->g_453), p_1083);
    return p_1083->g_1010.w;
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_654 p_1083->g_262 p_1083->g_245 p_1083->g_246 p_1083->g_911 p_1083->g_387
 * writes: p_1083->g_262 p_1083->g_152 p_1083->g_662
 */
uint8_t  func_7(uint16_t  p_8, uint64_t  p_9, struct S0 * p_1083)
{ /* block id: 265 */
    int8_t *l_891 = (void*)0;
    int8_t *l_892 = (void*)0;
    int8_t *l_893 = (void*)0;
    int8_t *l_894 = (void*)0;
    int8_t *l_895 = (void*)0;
    int32_t l_896 = 0x1BB2ED7EL;
    int64_t *l_903 = &p_1083->g_152[0][1][0];
    int32_t l_904 = 0x7FFC9C79L;
    uint8_t *l_905 = (void*)0;
    uint8_t *l_906 = (void*)0;
    uint8_t *l_907 = (void*)0;
    uint8_t *l_908[3][8] = {{(void*)0,&p_1083->g_614,(void*)0,(void*)0,&p_1083->g_614,(void*)0,(void*)0,&p_1083->g_614},{(void*)0,&p_1083->g_614,(void*)0,(void*)0,&p_1083->g_614,(void*)0,(void*)0,&p_1083->g_614},{(void*)0,&p_1083->g_614,(void*)0,(void*)0,&p_1083->g_614,(void*)0,(void*)0,&p_1083->g_614}};
    int32_t l_909 = (-1L);
    uint8_t l_910 = 249UL;
    int32_t *l_912 = (void*)0;
    int32_t *l_913 = &p_1083->g_662;
    int i, j;
    (*l_913) = (((*p_1083->g_654) = (*p_1083->g_654)) == (((p_9 != (p_8 , (safe_mul_func_int8_t_s_s((l_896 = (*p_1083->g_245)), (safe_lshift_func_uint8_t_u_s(((((*l_903) = ((l_909 ^= (p_8 >= (safe_rshift_func_uint8_t_u_u(((safe_div_func_uint16_t_u_u((l_903 == l_903), (-1L))) & p_8), l_904)))) == l_904)) < p_9) <= l_910), p_8)))))) != l_904) <= p_1083->g_911[0]));
    return p_1083->g_387.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_18 p_1083->g_33 p_1083->g_60 p_1083->g_24 p_1083->g_21 p_1083->g_88 p_1083->g_98 p_1083->g_134 p_1083->g_168 p_1083->g_169 p_1083->g_170 p_1083->g_116 p_1083->g_186 p_1083->g_188 p_1083->g_190 p_1083->g_152 p_1083->g_208 p_1083->g_211 p_1083->g_216 p_1083->g_226 p_1083->g_229 p_1083->g_245 p_1083->g_300 p_1083->g_320 p_1083->g_321 p_1083->g_246 p_1083->g_326 p_1083->g_329 p_1083->g_331 p_1083->g_334 p_1083->g_338 p_1083->g_339 p_1083->g_342 p_1083->g_343 p_1083->g_344 p_1083->g_346 p_1083->g_347 p_1083->g_349 p_1083->g_356 p_1083->g_357 p_1083->g_358 p_1083->g_363 p_1083->g_387 p_1083->g_388 p_1083->g_422 p_1083->g_453 p_1083->g_454 p_1083->g_637 p_1083->g_623 p_1083->g_653 p_1083->g_627 p_1083->g_660 p_1083->g_662 p_1083->g_654 p_1083->g_262 p_1083->g_735 p_1083->g_736 p_1083->g_739 p_1083->g_754 p_1083->g_764 p_1083->g_614 p_1083->g_785 p_1083->g_532 p_1083->g_533 p_1083->g_560 p_1083->g_801 p_1083->g_847 p_1083->g_857 p_1083->g_858
 * writes: p_1083->g_98 p_1083->g_24 p_1083->g_116 p_1083->g_60 p_1083->g_21 p_1083->g_170 p_1083->g_226 p_1083->g_186 p_1083->g_387 p_1083->g_454 p_1083->g_662 p_1083->g_734 p_1083->g_560 p_1083->g_769 p_1083->g_614 p_1083->g_653 p_1083->g_262 p_1083->g_357
 */
int16_t  func_12(int8_t  p_13, int32_t  p_14, uint64_t  p_15, int64_t  p_16, struct S0 * p_1083)
{ /* block id: 5 */
    int32_t *l_779[3];
    int8_t l_780[10];
    uint8_t *l_781 = &p_1083->g_614;
    int32_t *l_782 = (void*)0;
    int32_t l_886 = 0L;
    int i;
    for (i = 0; i < 3; i++)
        l_779[i] = (void*)0;
    for (i = 0; i < 10; i++)
        l_780[i] = 0x57L;
    (*p_1083->g_637) = func_38((func_44(p_1083->g_18, p_1083->g_33.s3, p_1083) , 4294967287UL), p_14, l_779[2], ((*l_781) &= (((p_1083->g_134.w , l_780[6]) <= ((p_15 == p_1083->g_739.z) || p_14)) , p_16)), l_782, p_1083);
    return l_886;
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_785 p_1083->g_422 p_1083->g_245 p_1083->g_246 p_1083->g_532 p_1083->g_533 p_1083->g_637 p_1083->g_454 p_1083->g_560 p_1083->g_801 p_1083->g_654 p_1083->g_262 p_1083->g_321 p_1083->g_662 p_1083->g_116 p_1083->g_847 p_1083->g_754 p_1083->g_857 p_1083->g_858 p_1083->g_134
 * writes: p_1083->g_662 p_1083->g_454 p_1083->g_560 p_1083->g_653 p_1083->g_116 p_1083->g_262 p_1083->g_357
 */
int32_t * func_38(uint32_t  p_39, uint64_t  p_40, int32_t * p_41, uint8_t  p_42, int32_t * p_43, struct S0 * p_1083)
{ /* block id: 234 */
    uint8_t l_783 = 252UL;
    int32_t l_790 = 0L;
    int8_t *l_830 = (void*)0;
    int16_t *l_833 = (void*)0;
    VECTOR(int16_t, 2) l_846 = (VECTOR(int16_t, 2))(0x2DB2L, 0x58EDL);
    int32_t *l_853 = &p_1083->g_769;
    VECTOR(int8_t, 16) l_855 = (VECTOR(int8_t, 16))(0x70L, (VECTOR(int8_t, 4))(0x70L, (VECTOR(int8_t, 2))(0x70L, 0x52L), 0x52L), 0x52L, 0x70L, 0x52L, (VECTOR(int8_t, 2))(0x70L, 0x52L), (VECTOR(int8_t, 2))(0x70L, 0x52L), 0x70L, 0x52L, 0x70L, 0x52L);
    VECTOR(int8_t, 4) l_859 = (VECTOR(int8_t, 4))(0x77L, (VECTOR(int8_t, 2))(0x77L, 0x02L), 0x02L);
    VECTOR(int8_t, 2) l_860 = (VECTOR(int8_t, 2))(0x46L, 0x2EL);
    VECTOR(int8_t, 4) l_863 = (VECTOR(int8_t, 4))(0x0FL, (VECTOR(int8_t, 2))(0x0FL, 0L), 0L);
    VECTOR(uint8_t, 2) l_874 = (VECTOR(uint8_t, 2))(8UL, 0x83L);
    int32_t *l_885 = (void*)0;
    int i;
    (*p_1083->g_785) = l_783;
    if ((l_783 != ((GROUP_DIVERGE(2, 1) || ((((safe_add_func_uint64_t_u_u((p_1083->g_422.w & (*p_1083->g_245)), (l_790 |= ((((VECTOR(uint8_t, 2))(0x86L, 5UL)).lo < p_40) != (l_783 & ((safe_sub_func_uint64_t_u_u((l_783 & l_783), 18446744073709551609UL)) != (0x71FDA505L | 0UL))))))) , (*p_1083->g_532)) ^ p_40) < l_783)) == 0x7743ADDBL)))
    { /* block id: 237 */
        int32_t *l_791 = (void*)0;
        (*p_1083->g_637) = (l_791 = (void*)0);
        (*p_1083->g_637) = (*p_1083->g_637);
        l_790 = ((0x27L == l_783) | (*p_1083->g_532));
    }
    else
    { /* block id: 242 */
        uint32_t l_806 = 0UL;
        int32_t l_807 = 0x0F41629DL;
        VECTOR(int16_t, 8) l_808 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x6C84L), 0x6C84L), 0x6C84L, (-1L), 0x6C84L);
        int8_t *l_828[6][1][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        VECTOR(int16_t, 8) l_851 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x7B35L), 0x7B35L), 0x7B35L, 0L, 0x7B35L);
        VECTOR(int64_t, 2) l_854 = (VECTOR(int64_t, 2))(0x09585292AF5415A7L, 0x1E4BF36D3FCB08EEL);
        VECTOR(int8_t, 4) l_856 = (VECTOR(int8_t, 4))(0x5DL, (VECTOR(int8_t, 2))(0x5DL, 0x2FL), 0x2FL);
        VECTOR(int8_t, 16) l_861 = (VECTOR(int8_t, 16))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0L), 0L), 0L, 6L, 0L, (VECTOR(int8_t, 2))(6L, 0L), (VECTOR(int8_t, 2))(6L, 0L), 6L, 0L, 6L, 0L);
        uint32_t l_881[4][10][4] = {{{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL}},{{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL}},{{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL}},{{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL},{4294967295UL,0xE43E02F1L,8UL,0x18B48FFEL}}};
        int i, j, k;
        for (p_1083->g_560 = 0; (p_1083->g_560 < 21); ++p_1083->g_560)
        { /* block id: 245 */
            int64_t ***l_819[7][8][4] = {{{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653}},{{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653}},{{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653}},{{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653}},{{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653}},{{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653}},{{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653},{&p_1083->g_653,(void*)0,(void*)0,&p_1083->g_653}}};
            int8_t **l_829 = &l_828[2][0][0];
            VECTOR(int32_t, 2) l_831 = (VECTOR(int32_t, 2))(0x42C278DEL, 5L);
            int16_t *l_832 = (void*)0;
            int16_t l_834 = 0x4E6AL;
            int i, j, k;
            l_831.y = (safe_lshift_func_int16_t_s_s((((VECTOR(uint32_t, 4))(mul_hi(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(0xC824853CL, 0x8103C5E8L)).yxyy + ((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),VECTOR(uint32_t, 2),((VECTOR(uint32_t, 4))(0x8B0EECC9L, 1UL, 4294967295UL, 0x7CA23D9EL)).odd, ((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 8))(min(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 16))(p_1083->g_801.s5060372264774136)) ^ ((VECTOR(uint32_t, 8))((safe_div_func_uint16_t_u_u((p_39 & ((safe_mul_func_int16_t_s_s(((l_807 ^= l_806) | (((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 8))(l_808.s41311214)).s77, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(0x1CA4L, 0x039DL)), (((((VECTOR(uint32_t, 4))(4294967291UL, (((l_783 && l_806) < ((VECTOR(uint16_t, 8))(0xBECFL, (((safe_mul_func_int16_t_s_s((~(safe_add_func_uint64_t_u_u((~(~(safe_lshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s(p_40, (safe_lshift_func_uint16_t_u_s((((p_1083->g_653 = &p_1083->g_654) != ((safe_mul_func_uint8_t_u_u((safe_sub_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(((((safe_add_func_int64_t_s_s(((-8L) && (((*l_829) = l_828[2][0][0]) != l_830)), l_790)) != GROUP_DIVERGE(1, 1)) || (*p_1083->g_654)) == l_808.s2), p_1083->g_321.w)), p_42)), 0L)) , (void*)0)) | FAKE_DIVERGE(p_1083->group_2_offset, get_group_id(2), 10)), l_831.x)))), 1)))), p_42))), 65535UL)) , l_832) == l_833), p_39, 0x37E5L, 0UL, p_40, 2UL, 7UL)).s5) , l_790), 0x0755F548L, 2UL)).w | l_834) && p_39) > p_39), ((VECTOR(int16_t, 4))(0x3B08L)), l_790, p_42, ((VECTOR(int16_t, 2))(0x1166L)), 0x575DL, (-1L), 0x5870L, 0x1FA2L, (-2L))).even == ((VECTOR(int16_t, 8))((-3L)))))).s54, ((VECTOR(int16_t, 2))(0x2FA8L))))).lo > 0x0DCDL)), p_40)) , 0x964A4670EBE93AD0L)), l_831.y)), ((VECTOR(uint32_t, 2))(0x7D3720ABL)), ((VECTOR(uint32_t, 2))(3UL)), ((VECTOR(uint32_t, 2))(6UL)), 4294967289UL)).s0654456642032015))).odd, (uint32_t)p_1083->g_662))).s65, ((VECTOR(uint32_t, 2))(1UL)), ((VECTOR(uint32_t, 2))(0xA1925DE4L))))), 0x2673CA79L, 1UL)), ((VECTOR(uint32_t, 4))(0xB19C4603L))))).yzzzxywz * ((VECTOR(uint32_t, 8))(0UL))))).lo))).xxyywxxz, ((VECTOR(uint32_t, 8))(4294967291UL)), ((VECTOR(uint32_t, 8))(4294967295UL))))).s22, ((VECTOR(uint32_t, 2))(0x14DAB54FL))))).xyxy))), ((VECTOR(uint32_t, 4))(0x070E7902L))))).z != p_1083->g_321.y), p_40));
        }
        for (p_1083->g_116 = 5; (p_1083->g_116 <= 30); p_1083->g_116++)
        { /* block id: 253 */
            uint32_t l_841 = 0xA73224DCL;
            VECTOR(int16_t, 2) l_850 = (VECTOR(int16_t, 2))(0x08A9L, 0x2B68L);
            VECTOR(int16_t, 4) l_852 = (VECTOR(int16_t, 4))(0x2E69L, (VECTOR(int16_t, 2))(0x2E69L, 0x4ECDL), 0x4ECDL);
            VECTOR(int8_t, 4) l_862 = (VECTOR(int8_t, 4))(0x29L, (VECTOR(int8_t, 2))(0x29L, 0x06L), 0x06L);
            int16_t *l_875 = (void*)0;
            int16_t *l_876 = (void*)0;
            int16_t *l_877 = (void*)0;
            int16_t *l_878 = (void*)0;
            int16_t *l_879 = (void*)0;
            int16_t *l_880 = (void*)0;
            int32_t l_882 = 0x325B244EL;
            int32_t *l_883 = (void*)0;
            int32_t *l_884 = &p_1083->g_662;
            int i;
            (*l_884) |= (safe_mul_func_int16_t_s_s((((*p_1083->g_245) <= (safe_rshift_func_uint16_t_u_s(((l_841 == (l_882 ^= (safe_mod_func_int8_t_s_s((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(0x174CL, ((VECTOR(int16_t, 2))(0x264CL, 0x253DL)), 0x7D02L)).odd && ((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 8))(l_846.xyyxxyyx)).s0307211230774263, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 2))(p_1083->g_847.s72))))).yxxxxxxx && ((VECTOR(int16_t, 4))((safe_mod_func_uint16_t_u_u(p_1083->g_754.s2, ((VECTOR(int16_t, 2))(l_850.xx)).odd)), 7L, 0x05AEL, 1L)).zywxywyx))).s4454456645377746))).s3f))).yyyxxxxy, ((VECTOR(int16_t, 8))(l_851.s62650551))))), ((VECTOR(int16_t, 4))(l_852.zzxx)).wzwwzzyw))).lo, ((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0L, 1L)), 0x0CL, 0L)) && ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 2))(0x08L, 0x41L)), ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(((&p_1083->g_769 == l_853) == ((*p_1083->g_654) = ((VECTOR(int64_t, 4))(l_854.xxyy)).w)), 2L, 0L, 3L)) && ((VECTOR(int8_t, 16))(l_855.s060f8ccc02cf6623)).sa925))).odd))).xyxxxyyxyxyyyxyy && ((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 2))(l_856.yx)), ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(p_1083->g_857.s3d6c913ff57e6147)).s6703 || ((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 2))(p_1083->g_858.s0c)).xxyyxxxxxxxxyyxy, ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(0L, 2L)).xxxxxxyyxxxyxxxx && ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 16))(l_859.zxzyywxxxywyzyzw)).s7ef3, ((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(l_860.xyxx)).odd > ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 2))(1L, (-1L))), ((VECTOR(int8_t, 4))(l_861.sc9d3)).odd)))))).xxyy, ((VECTOR(int8_t, 8))(l_862.wwzwyxxz)).odd))).yzzzxyxy | ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(l_861.s3, 0x27L, 0x40L, 0x51L)).lo >= ((VECTOR(int8_t, 4))(l_863.wyzx)).hi))).xxxxxyyx))).odd, ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 16))(((safe_mod_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u(((safe_mod_func_int8_t_s_s((p_1083->g_357.s6 = 0x6AL), (safe_sub_func_uint8_t_u_u(((l_807 ^= (((VECTOR(uint8_t, 4))(l_874.yyyy)).x , p_42)) && p_1083->g_134.y), 0x6DL)))) ^ (-8L)), 1L)) , FAKE_DIVERGE(p_1083->local_1_offset, get_local_id(1), 10)), l_808.s3)), 0x3D0A74B11A33C18CL)) <= 0x17CD24C368D18F7FL), ((VECTOR(int8_t, 8))((-1L))), ((VECTOR(int8_t, 4))(2L)), l_807, 0x6CL, (-5L))).s8a1c, ((VECTOR(int8_t, 4))(0L)))))))).hi, ((VECTOR(int8_t, 2))(4L)), ((VECTOR(int8_t, 2))(0x28L))))).yxxyxxxx, ((VECTOR(int8_t, 8))(1L))))).s60 < ((VECTOR(int8_t, 2))((-2L)))))).yyxyyyxy, ((VECTOR(int8_t, 8))((-4L)))))).odd))).xwxxwyxwxyywwyzz == ((VECTOR(int8_t, 16))(0x7EL))))).sa945 && ((VECTOR(int8_t, 4))(0x1BL))))).wzwxwzxx > ((VECTOR(int8_t, 8))(0x18L))))).s6676110366405217))), ((VECTOR(int8_t, 16))(0x6FL))))).sb133))).lo, ((VECTOR(int8_t, 2))((-1L)))))).yxyxxyyxxxyyxyxy))).lo))).lo | ((VECTOR(int8_t, 4))(0x7AL)))))))), ((VECTOR(int8_t, 2))(0x5DL)), ((VECTOR(int8_t, 8))(3L)), 1L, 0x7BL)).s3464, ((VECTOR(uint8_t, 4))(0x85L))))), ((VECTOR(int16_t, 4))(0L)))))))).y, 3L)), l_881[0][3][0])))) >= p_39), p_39))) == l_852.w), p_40));
        }
        return l_885;
    }
    return p_43;
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_60 p_1083->g_33 p_1083->g_24 p_1083->g_18 p_1083->g_21 p_1083->g_88 p_1083->g_98 p_1083->g_134 p_1083->g_168 p_1083->g_169 p_1083->g_170 p_1083->g_116 p_1083->g_186 p_1083->g_188 p_1083->g_190 p_1083->g_152 p_1083->g_208 p_1083->g_211 p_1083->g_216 p_1083->g_226 p_1083->g_229 p_1083->g_245 p_1083->g_300 p_1083->g_320 p_1083->g_321 p_1083->g_246 p_1083->g_326 p_1083->g_329 p_1083->g_331 p_1083->g_334 p_1083->g_338 p_1083->g_339 p_1083->g_342 p_1083->g_343 p_1083->g_344 p_1083->g_346 p_1083->g_347 p_1083->g_349 p_1083->g_356 p_1083->g_357 p_1083->g_358 p_1083->g_363 p_1083->g_387 p_1083->g_388 p_1083->g_422 p_1083->g_453 p_1083->g_454 p_1083->g_637 p_1083->g_623 p_1083->g_653 p_1083->g_627 p_1083->g_660 p_1083->g_662 p_1083->g_654 p_1083->g_262 p_1083->g_735 p_1083->g_736 p_1083->g_739 p_1083->g_754 p_1083->g_764
 * writes: p_1083->g_98 p_1083->g_24 p_1083->g_116 p_1083->g_60 p_1083->g_21 p_1083->g_170 p_1083->g_226 p_1083->g_186 p_1083->g_387 p_1083->g_454 p_1083->g_662 p_1083->g_734 p_1083->g_560 p_1083->g_769
 */
uint32_t  func_44(uint32_t  p_45, int64_t  p_46, struct S0 * p_1083)
{ /* block id: 6 */
    VECTOR(int16_t, 16) l_645 = (VECTOR(int16_t, 16))(0x435EL, (VECTOR(int16_t, 4))(0x435EL, (VECTOR(int16_t, 2))(0x435EL, 0x4589L), 0x4589L), 0x4589L, 0x435EL, 0x4589L, (VECTOR(int16_t, 2))(0x435EL, 0x4589L), (VECTOR(int16_t, 2))(0x435EL, 0x4589L), 0x435EL, 0x4589L, 0x435EL, 0x4589L);
    int32_t *l_646 = (void*)0;
    VECTOR(int64_t, 8) l_737 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x41AF299DEF255085L), 0x41AF299DEF255085L), 0x41AF299DEF255085L, 0L, 0x41AF299DEF255085L);
    VECTOR(int64_t, 2) l_738 = (VECTOR(int64_t, 2))(6L, 1L);
    uint64_t *l_746[7][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_747 = 7L;
    int32_t l_748 = 0x556BEA88L;
    int32_t l_749 = (-4L);
    VECTOR(int32_t, 8) l_750 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x1589F4C4L), 0x1589F4C4L), 0x1589F4C4L, (-1L), 0x1589F4C4L);
    uint64_t l_751 = 18446744073709551615UL;
    VECTOR(int32_t, 8) l_761 = (VECTOR(int32_t, 8))(0x77EE2148L, (VECTOR(int32_t, 4))(0x77EE2148L, (VECTOR(int32_t, 2))(0x77EE2148L, 0L), 0L), 0L, 0x77EE2148L, 0L);
    VECTOR(int32_t, 8) l_762 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x133FA49EL), 0x133FA49EL), 0x133FA49EL, 1L, 0x133FA49EL);
    VECTOR(int32_t, 16) l_763 = (VECTOR(int32_t, 16))(0x452894E8L, (VECTOR(int32_t, 4))(0x452894E8L, (VECTOR(int32_t, 2))(0x452894E8L, 0x67A2916DL), 0x67A2916DL), 0x67A2916DL, 0x452894E8L, 0x67A2916DL, (VECTOR(int32_t, 2))(0x452894E8L, 0x67A2916DL), (VECTOR(int32_t, 2))(0x452894E8L, 0x67A2916DL), 0x452894E8L, 0x67A2916DL, 0x452894E8L, 0x67A2916DL);
    VECTOR(int32_t, 8) l_765 = (VECTOR(int32_t, 8))(0x52C90290L, (VECTOR(int32_t, 4))(0x52C90290L, (VECTOR(int32_t, 2))(0x52C90290L, 0L), 0L), 0L, 0x52C90290L, 0L);
    VECTOR(int32_t, 8) l_766 = (VECTOR(int32_t, 8))(0x58E6AC9EL, (VECTOR(int32_t, 4))(0x58E6AC9EL, (VECTOR(int32_t, 2))(0x58E6AC9EL, 0x70EBE1E5L), 0x70EBE1E5L), 0x70EBE1E5L, 0x58E6AC9EL, 0x70EBE1E5L);
    int32_t *l_767 = &p_1083->g_662;
    int32_t *l_768[7] = {&p_1083->g_769,&p_1083->g_769,&p_1083->g_769,&p_1083->g_769,&p_1083->g_769,&p_1083->g_769,&p_1083->g_769};
    VECTOR(int8_t, 16) l_770 = (VECTOR(int8_t, 16))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0L), 0L), 0L, (-2L), 0L, (VECTOR(int8_t, 2))((-2L), 0L), (VECTOR(int8_t, 2))((-2L), 0L), (-2L), 0L, (-2L), 0L);
    uint16_t *l_775 = (void*)0;
    uint16_t **l_776 = (void*)0;
    uint16_t **l_777 = &l_775;
    uint32_t *l_778 = &p_1083->g_116;
    int i, j;
    (*p_1083->g_637) = func_47(((safe_mul_func_int16_t_s_s((func_53(p_46, p_1083) | (safe_div_func_int16_t_s_s((!((VECTOR(int16_t, 8))(l_645.sa6050c67)).s3), ((VECTOR(uint16_t, 2))(65535UL, 1UL)).even))), ((VECTOR(int16_t, 2))(6L, 0L)).hi)) , (*p_1083->g_453)), p_46, l_646, p_1083);
    l_749 |= (((*l_778) &= (((VECTOR(uint16_t, 2))(p_1083->g_735.s11)).odd | (((((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 4))(p_1083->g_736.zyzw)).yzzwyxxyzxxxwyzz, ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(l_737.s5176015213025244)) & ((VECTOR(int64_t, 16))(l_738.yxyyyyxyyyyyyxyy))))).even && ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(p_1083->g_739.xz)) & ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(1UL, (safe_div_func_uint8_t_u_u(((--l_751) > ((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 16))(p_1083->g_754.s6777411175445753)).s55, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))(0xE138BFB277CB1739L, 1UL)).xxxx * ((VECTOR(uint64_t, 2))(0xAFCBD20658914254L, 3UL)).xxxy))).z, (safe_add_func_int8_t_s_s((p_1083->g_152[0][1][6] | 0L), ((p_1083->g_769 = (safe_add_func_int32_t_s_s(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))(l_761.s75)).yyyy, ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(l_762.s6326411313636364)) && ((VECTOR(int32_t, 4))(6L, 3L, 0x23707203L, 0x65F37F25L)).xwwzywzyyywxzwyz))) == ((VECTOR(int32_t, 16))(l_763.s89ad92f08eb77002))))).s501b))).ywwwywzywzzyywzw < ((VECTOR(int32_t, 4))(p_1083->g_764.xyxy)).wyyxwzyzwzzyywyx))), ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(l_765.s16)).xxxyxxxx == ((VECTOR(int32_t, 2))(l_766.s16)).yyxyyxyy))).s2610511633574277))).sb, ((*l_767) = (l_750.s2 = (&p_45 == l_646)))))) , ((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 4))(l_770.s6d29)).zyxxxwyw))).s0))), 18446744073709551607UL, 18446744073709551608UL)).hi))).even), (safe_div_func_uint64_t_u_u((safe_div_func_int64_t_s_s((l_746[5][4] != l_746[6][0]), ((((&p_1083->g_21 != ((*l_777) = l_775)) , (*l_777)) == (void*)0) , 0x70E7F11BEDDF7199L))), 0x3EF855E39DFBEBC8L)))), 0x79FAL, FAKE_DIVERGE(p_1083->local_0_offset, get_local_id(0), 10), 8UL, ((VECTOR(uint16_t, 2))(65535UL)), 4UL)) + ((VECTOR(uint16_t, 8))(0xFAACL))))) + ((VECTOR(uint16_t, 8))(0xB83CL))))).s2 == 8UL), ((VECTOR(int64_t, 8))(0x721FBC1DD27315D0L)), (*p_1083->g_654), 0x286AC9C3055773C3L, ((VECTOR(int64_t, 4))(0x1BFC1A1292B4607FL)), 0x3D4C8374038B126CL)).s24 | ((VECTOR(int64_t, 2))(0x6935E7F271FADC54L))))).xyxx && ((VECTOR(int64_t, 4))(0L))))).hi))).xyyyxxxy > ((VECTOR(int64_t, 8))(1L))))).hi && ((VECTOR(int64_t, 4))(0x0CC4BA17E96EC11EL))))).wwxyzxzw < ((VECTOR(int64_t, 8))(1L))))).s0765430711316736 && ((VECTOR(int64_t, 16))(0x4943ABB9EE0BC4B5L))))).lo))).s0163574664721122))).sdf))).even , (*l_767)) & 1UL) != p_1083->g_627.s2))) , p_45);
    return (*l_767);
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_623 p_1083->g_422 p_1083->g_653 p_1083->g_637 p_1083->g_454 p_1083->g_60 p_1083->g_627 p_1083->g_660 p_1083->g_662 p_1083->g_245 p_1083->g_246 p_1083->g_453 p_1083->g_169 p_1083->g_152 p_1083->g_654 p_1083->g_262 p_1083->g_21 p_1083->g_24 p_1083->g_98 p_1083->g_18 p_1083->g_33 p_1083->g_88 p_1083->g_211 p_1083->g_320 p_1083->g_388
 * writes: p_1083->g_662 p_1083->g_734 p_1083->g_560 p_1083->g_24 p_1083->g_116 p_1083->g_60 p_1083->g_98 p_1083->g_186 p_1083->g_226 p_1083->g_387 p_1083->g_21 p_1083->g_454
 */
int32_t * func_47(int32_t * p_48, uint32_t  p_49, int32_t * p_50, struct S0 * p_1083)
{ /* block id: 203 */
    VECTOR(int64_t, 8) l_649 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x0513DBB9B69CC141L), 0x0513DBB9B69CC141L), 0x0513DBB9B69CC141L, 1L, 0x0513DBB9B69CC141L);
    uint8_t *l_652 = (void*)0;
    int32_t *l_655 = (void*)0;
    VECTOR(int16_t, 4) l_676 = (VECTOR(int16_t, 4))(0x7A6CL, (VECTOR(int16_t, 2))(0x7A6CL, 0x3FCBL), 0x3FCBL);
    VECTOR(int16_t, 2) l_680 = (VECTOR(int16_t, 2))(0L, 0L);
    VECTOR(int16_t, 8) l_681 = (VECTOR(int16_t, 8))((-9L), (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), 0x3815L), 0x3815L), 0x3815L, (-9L), 0x3815L);
    VECTOR(int16_t, 4) l_682 = (VECTOR(int16_t, 4))(0x031DL, (VECTOR(int16_t, 2))(0x031DL, 0x0B2CL), 0x0B2CL);
    VECTOR(int16_t, 8) l_685 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
    int32_t l_688 = 0x277D9A1FL;
    VECTOR(uint64_t, 2) l_697 = (VECTOR(uint64_t, 2))(0UL, 0UL);
    VECTOR(uint64_t, 4) l_707 = (VECTOR(uint64_t, 4))(0xB4956FDF0121C872L, (VECTOR(uint64_t, 2))(0xB4956FDF0121C872L, 0x024423D2B27CF088L), 0x024423D2B27CF088L);
    int64_t *l_733 = &p_1083->g_560;
    int i;
    l_655 = func_64(((safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 4))(l_649.s4311)).x, ((0x1C95L < p_1083->g_623.x) == (l_649.s7 , ((((VECTOR(uint64_t, 4))(GROUP_DIVERGE(2, 1), (safe_add_func_uint64_t_u_u(0x3E05137EB3D4C600L, p_1083->g_422.w)), 1UL, 0x236E425BBFAC2324L)).x != l_649.s3) , ((VECTOR(uint64_t, 2))(0xC12578B09851F6F1L, 0xFC12F95A28052B65L)).lo))))) & ((((l_652 != ((p_1083->g_653 != ((l_649.s1 == l_649.s6) , &p_1083->g_654)) , (void*)0)) , p_50) != (void*)0) >= 18446744073709551608UL)), l_649.s4, (*p_1083->g_637), l_649.s2, l_649.s0, p_1083);
    for (p_49 = 15; (p_49 >= 7); p_49--)
    { /* block id: 207 */
        uint32_t l_661 = 0x83FAD4FBL;
        VECTOR(uint64_t, 2) l_698 = (VECTOR(uint64_t, 2))(0xC06ED5720B540275L, 0xA651E672E81DDF0AL);
        int32_t l_708 = 0x24F24878L;
        int i;
        if (((safe_div_func_uint8_t_u_u(p_1083->g_627.s2, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_1083->g_660.xy)), 1L, (-7L))).w)) , (-6L)))
        { /* block id: 208 */
            int16_t l_663 = 0L;
            VECTOR(int16_t, 4) l_677 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x7B79L), 0x7B79L);
            VECTOR(int16_t, 2) l_678 = (VECTOR(int16_t, 2))(0x071FL, 0x00E0L);
            VECTOR(int16_t, 8) l_679 = (VECTOR(int16_t, 8))(0x31A0L, (VECTOR(int16_t, 4))(0x31A0L, (VECTOR(int16_t, 2))(0x31A0L, 4L), 4L), 4L, 0x31A0L, 4L);
            int i;
            if (l_661)
                break;
            l_663 &= (p_1083->g_662 ^= l_649.s7);
            l_688 |= (safe_rshift_func_int16_t_s_s((p_49 && (((safe_rshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_u((safe_sub_func_int64_t_s_s(((safe_rshift_func_int8_t_s_u(0x65L, (safe_mod_func_uint16_t_u_u((((VECTOR(int16_t, 8))(0x1E9AL, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(1L, 0x7C0EL)).yyxyxyxyxxxyyxxy && ((VECTOR(int16_t, 8))(l_676.ywyzzxyy)).s3103704326660353))).s02 && ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(0x09ABL, 2L, 5L, 0x4C2AL, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(0x692EL, 0x43CBL)) && ((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 2))(5L, 0L)).yxxyxyxy, ((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(l_677.zxzywxxz)).s47, ((VECTOR(int16_t, 2))(0x09EAL, 0x4815L))))).xxxyyyyx))).s20))).yyyxxyxyxxyxxxyx && ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_678.yy)), (-1L), (-1L))).wzzyzzyzyywxwzxz))).sfe81 && ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 2))(0x7526L, (-1L))), ((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(l_679.s3440303564204740)).odd & ((VECTOR(int16_t, 2))(l_680.xx)).xyyyyxxy))).odd && ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 4))(l_681.s4246)), ((VECTOR(int16_t, 2))(l_682.xz)).xxyx))).wwywzzwzxzwzwxxy && ((VECTOR(int16_t, 8))(((safe_rshift_func_int8_t_s_u((l_649.s3 == p_49), 2)) || ((*p_1083->g_245) | l_679.s2)), l_661, ((VECTOR(int16_t, 4))(0x2B0AL, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(l_685.s1026411446431406)).lo <= ((VECTOR(int16_t, 8))((safe_lshift_func_int16_t_s_u((((!(FAKE_DIVERGE(p_1083->group_0_offset, get_group_id(0), 10) & 0x0EL)) != l_679.s3) | l_661), 12)), (-1L), ((VECTOR(int16_t, 4))(0x05B2L)), (-9L), 0x20C3L))))).s46 && ((VECTOR(int16_t, 2))((-7L)))))), 5L)), 0L, 0x2362L)).s5356250261635034))) && ((VECTOR(int16_t, 16))(0L))))).hi && ((VECTOR(int16_t, 8))(0x23FFL))))).lo && ((VECTOR(int16_t, 4))(0x0FDAL)))))))).zwywwxxx, ((VECTOR(int16_t, 8))(0x3A59L))))).s32))) || ((VECTOR(int16_t, 2))(0x10C5L))))).yxyx))).ywxxwxxwxzxyzyxz && ((VECTOR(int16_t, 16))((-1L)))))).lo ^ ((VECTOR(int16_t, 8))(0L))))), ((VECTOR(int16_t, 4))(8L)))).s1a45 && ((VECTOR(int16_t, 4))(0x30ECL))))).even))).yxxy >= ((VECTOR(int16_t, 4))(0L))))), (-4L), 0x6474L, 8L)).s5 & 0x6EC5L), l_677.z)))) == l_663), p_49)), 11)), 10)) ^ 0x19L) , 8L)), 14));
        }
        else
        { /* block id: 213 */
            return (*p_1083->g_453);
        }
        (*p_1083->g_637) = (l_661 , func_55(p_50, func_64(((*l_733) = (safe_sub_func_uint32_t_u_u((safe_rshift_func_int16_t_s_s(l_680.x, 10)), (safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))(l_697.yy)) + ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(l_698.xyxxxxyyxxxyxyyy)).s8, ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(l_707.zzxwyywzzwwywwyy)) << ((VECTOR(uint64_t, 16))(64))))) << ((VECTOR(uint64_t, 16))(abs_diff(((VECTOR(int64_t, 16))((-8L), (l_708 = (+(GROUP_DIVERGE(2, 1) < p_49))), ((safe_div_func_uint32_t_u_u(((safe_lshift_func_uint8_t_u_u((safe_mod_func_int32_t_s_s((safe_rshift_func_uint8_t_u_u(((FAKE_DIVERGE(p_1083->local_1_offset, get_local_id(1), 10) & ((p_1083->g_169.s4 & ((safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 8))(((safe_lshift_func_uint16_t_u_s((&l_661 == ((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u((safe_mod_func_int8_t_s_s(((safe_add_func_int64_t_s_s((safe_rshift_func_int8_t_s_u(0x05L, 6)), ((p_1083->g_734 = l_733) == (void*)0))) || l_698.x), (*p_1083->g_245))), 1)), p_49)) , p_48)), l_661)) , 0x1FL), ((VECTOR(uint8_t, 2))(0xE5L)), 0x78L, 6UL, ((VECTOR(uint8_t, 2))(9UL)), 0xB5L)), ((VECTOR(uint8_t, 8))(0x4CL)), ((VECTOR(uint8_t, 8))(251UL))))).s0217016013172566 + ((VECTOR(uint8_t, 16))(255UL))))).s9, 5)) & l_682.w)) > l_708)) ^ l_708), 4)), p_1083->g_152[0][0][1])), 2)) , p_49), (-2L))) , l_708), p_49, ((VECTOR(int64_t, 2))(0x0879A94C2F7A8756L)), (-4L), ((VECTOR(int64_t, 4))(0x1E46EC7F27026407L)), (-3L), 2L, (-2L), (-1L), 0L)), ((VECTOR(int64_t, 16))(0x13CC09730CCA4206L)))))))) >> ((VECTOR(uint64_t, 16))(0xCB70D6EF761F657CL))))).s35 + ((VECTOR(uint64_t, 2))(0xA06C304FE6DF18F5L))))), p_49, 0xD85B1E0490D08646L, 0xCC4526D36A332FBEL, ((VECTOR(uint64_t, 4))(0x96D767763ADF0835L)), 0UL, p_49, 0UL, ((VECTOR(uint64_t, 2))(1UL)), 0x784E073780924678L)).s32)))))).odd, 0x63DF9C78BBB5D155L))))), p_49, p_50, l_661, l_676.y, p_1083), (**p_1083->g_653), l_661, p_1083));
    }
    (*p_1083->g_637) = (*p_1083->g_453);
    (*p_1083->g_637) = (void*)0;
    return (*p_1083->g_453);
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_60 p_1083->g_33 p_1083->g_24 p_1083->g_18 p_1083->g_21 p_1083->g_88 p_1083->g_98 p_1083->g_134 p_1083->g_168 p_1083->g_169 p_1083->g_170 p_1083->g_116 p_1083->g_186 p_1083->g_188 p_1083->g_190 p_1083->g_152 p_1083->g_208 p_1083->g_211 p_1083->g_216 p_1083->g_226 p_1083->g_229 p_1083->g_245 p_1083->g_300 p_1083->g_320 p_1083->g_321 p_1083->g_246 p_1083->g_326 p_1083->g_329 p_1083->g_331 p_1083->g_334 p_1083->g_338 p_1083->g_339 p_1083->g_342 p_1083->g_343 p_1083->g_344 p_1083->g_346 p_1083->g_347 p_1083->g_349 p_1083->g_356 p_1083->g_357 p_1083->g_358 p_1083->g_363 p_1083->g_387 p_1083->g_388 p_1083->g_422 p_1083->g_453 p_1083->g_454 p_1083->g_637
 * writes: p_1083->g_98 p_1083->g_24 p_1083->g_116 p_1083->g_60 p_1083->g_21 p_1083->g_170 p_1083->g_226 p_1083->g_186 p_1083->g_387 p_1083->g_454
 */
int8_t  func_53(uint16_t  p_54, struct S0 * p_1083)
{ /* block id: 7 */
    int32_t *l_63 = (void*)0;
    int32_t **l_82 = (void*)0;
    int32_t *l_84[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t **l_83 = &l_84[4];
    int i;
    (*l_83) = func_55(p_1083->g_60, ((safe_lshift_func_int8_t_s_s(((void*)0 != p_1083->g_60), (l_63 != ((*l_83) = func_64(((safe_rshift_func_uint16_t_u_s(p_1083->g_33.s2, 0)) , ((safe_mod_func_int64_t_s_s((0x86BCL == p_1083->g_24.y), (safe_sub_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s(((((safe_sub_func_int32_t_s_s((safe_rshift_func_int8_t_s_u(((void*)0 != l_63), p_1083->g_33.s4)), 0x6F24C43DL)) <= p_54) != 0x0BD6L) ^ FAKE_DIVERGE(p_1083->local_1_offset, get_local_id(1), 10)), 5)), p_1083->g_24.x)))) || 0x15597B072C46366CL)), p_1083->g_18, p_1083->g_60, p_54, p_1083->g_24.x, p_1083))))) , (*l_83)), p_1083->g_21, p_54, p_1083);
    return p_54;
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_88 p_1083->g_21 p_1083->g_24 p_1083->g_60 p_1083->g_98 p_1083->g_18 p_1083->g_33 p_1083->g_134 p_1083->g_168 p_1083->g_169 p_1083->g_170 p_1083->g_116 p_1083->g_186 p_1083->g_188 p_1083->g_190 p_1083->g_152 p_1083->g_208 p_1083->g_211 p_1083->g_216 p_1083->g_226 p_1083->g_229 p_1083->g_245 p_1083->g_300 p_1083->g_320 p_1083->g_321 p_1083->g_246 p_1083->g_326 p_1083->g_329 p_1083->g_331 p_1083->g_334 p_1083->g_338 p_1083->g_339 p_1083->g_342 p_1083->g_343 p_1083->g_344 p_1083->g_346 p_1083->g_347 p_1083->g_349 p_1083->g_356 p_1083->g_357 p_1083->g_358 p_1083->g_363 p_1083->g_387 p_1083->g_388 p_1083->g_422 p_1083->g_453 p_1083->g_454 p_1083->g_637
 * writes: p_1083->g_98 p_1083->g_24 p_1083->g_116 p_1083->g_60 p_1083->g_21 p_1083->g_170 p_1083->g_226 p_1083->g_186 p_1083->g_387 p_1083->g_454
 */
int32_t * func_55(int32_t * p_56, int32_t * p_57, int64_t  p_58, int32_t  p_59, struct S0 * p_1083)
{ /* block id: 11 */
    int8_t l_99 = 0x25L;
    int32_t l_102 = 0x0F550CB7L;
    int32_t l_123 = 0x635C8C60L;
    int32_t l_124 = 0L;
    int32_t l_125 = 1L;
    uint32_t l_126 = 4294967286UL;
    uint32_t *l_131[5] = {&p_1083->g_116,&p_1083->g_116,&p_1083->g_116,&p_1083->g_116,&p_1083->g_116};
    VECTOR(int16_t, 16) l_167 = (VECTOR(int16_t, 16))(0x0541L, (VECTOR(int16_t, 4))(0x0541L, (VECTOR(int16_t, 2))(0x0541L, 0x5CBCL), 0x5CBCL), 0x5CBCL, 0x0541L, 0x5CBCL, (VECTOR(int16_t, 2))(0x0541L, 0x5CBCL), (VECTOR(int16_t, 2))(0x0541L, 0x5CBCL), 0x0541L, 0x5CBCL, 0x0541L, 0x5CBCL);
    VECTOR(int16_t, 2) l_172 = (VECTOR(int16_t, 2))((-1L), 2L);
    VECTOR(int32_t, 16) l_228 = (VECTOR(int32_t, 16))(0x29B2AEEAL, (VECTOR(int32_t, 4))(0x29B2AEEAL, (VECTOR(int32_t, 2))(0x29B2AEEAL, 0x225113CCL), 0x225113CCL), 0x225113CCL, 0x29B2AEEAL, 0x225113CCL, (VECTOR(int32_t, 2))(0x29B2AEEAL, 0x225113CCL), (VECTOR(int32_t, 2))(0x29B2AEEAL, 0x225113CCL), 0x29B2AEEAL, 0x225113CCL, 0x29B2AEEAL, 0x225113CCL);
    int32_t l_260 = 9L;
    VECTOR(uint8_t, 16) l_317 = (VECTOR(uint8_t, 16))(0x52L, (VECTOR(uint8_t, 4))(0x52L, (VECTOR(uint8_t, 2))(0x52L, 0xFBL), 0xFBL), 0xFBL, 0x52L, 0xFBL, (VECTOR(uint8_t, 2))(0x52L, 0xFBL), (VECTOR(uint8_t, 2))(0x52L, 0xFBL), 0x52L, 0xFBL, 0x52L, 0xFBL);
    VECTOR(int32_t, 8) l_348 = (VECTOR(int32_t, 8))(0x748C60A3L, (VECTOR(int32_t, 4))(0x748C60A3L, (VECTOR(int32_t, 2))(0x748C60A3L, 0x05BC8546L), 0x05BC8546L), 0x05BC8546L, 0x748C60A3L, 0x05BC8546L);
    VECTOR(int8_t, 8) l_360 = (VECTOR(int8_t, 8))(0x6FL, (VECTOR(int8_t, 4))(0x6FL, (VECTOR(int8_t, 2))(0x6FL, 1L), 1L), 1L, 0x6FL, 1L);
    uint16_t l_371 = 0x630AL;
    int32_t l_379 = 0x366F8B33L;
    uint32_t l_414[8] = {0x7125901FL,0x7125901FL,0x7125901FL,0x7125901FL,0x7125901FL,0x7125901FL,0x7125901FL,0x7125901FL};
    VECTOR(int16_t, 2) l_421 = (VECTOR(int16_t, 2))(0x330AL, 0x66E6L);
    int16_t l_433 = 0x1E09L;
    int32_t *l_460 = &l_125;
    uint16_t l_473 = 65535UL;
    VECTOR(uint32_t, 4) l_485 = (VECTOR(uint32_t, 4))(9UL, (VECTOR(uint32_t, 2))(9UL, 0x46952821L), 0x46952821L);
    VECTOR(uint16_t, 16) l_505 = (VECTOR(uint16_t, 16))(65531UL, (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 1UL), 1UL), 1UL, 65531UL, 1UL, (VECTOR(uint16_t, 2))(65531UL, 1UL), (VECTOR(uint16_t, 2))(65531UL, 1UL), 65531UL, 1UL, 65531UL, 1UL);
    VECTOR(uint16_t, 16) l_511 = (VECTOR(uint16_t, 16))(65532UL, (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 0xB0F7L), 0xB0F7L), 0xB0F7L, 65532UL, 0xB0F7L, (VECTOR(uint16_t, 2))(65532UL, 0xB0F7L), (VECTOR(uint16_t, 2))(65532UL, 0xB0F7L), 65532UL, 0xB0F7L, 65532UL, 0xB0F7L);
    VECTOR(uint16_t, 2) l_519 = (VECTOR(uint16_t, 2))(2UL, 0UL);
    VECTOR(uint16_t, 4) l_526 = (VECTOR(uint16_t, 4))(0x8D00L, (VECTOR(uint16_t, 2))(0x8D00L, 0x1249L), 0x1249L);
    VECTOR(int64_t, 2) l_527 = (VECTOR(int64_t, 2))((-1L), 0x4CC0E8E63E1B0524L);
    int32_t l_531 = 0x09732DADL;
    int32_t *l_541 = &l_123;
    uint8_t l_558 = 255UL;
    VECTOR(int16_t, 4) l_564 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x6BECL), 0x6BECL);
    int16_t l_575 = 0x2C00L;
    uint16_t l_592[2];
    int32_t *l_598 = (void*)0;
    VECTOR(int16_t, 2) l_626 = (VECTOR(int16_t, 2))((-9L), 4L);
    int i;
    for (i = 0; i < 2; i++)
        l_592[i] = 0xB43FL;
    if ((+0x4616ADEAL))
    { /* block id: 12 */
        int16_t l_85 = 0x38E7L;
        uint32_t *l_97 = &p_1083->g_98;
        int32_t *l_100 = (void*)0;
        int32_t l_101 = 0x4A9EDB9BL;
        int32_t **l_105 = &p_1083->g_60;
        uint64_t *l_114[4][7][8] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        uint32_t *l_115[8] = {&p_1083->g_116,&p_1083->g_116,&p_1083->g_116,&p_1083->g_116,&p_1083->g_116,&p_1083->g_116,&p_1083->g_116,&p_1083->g_116};
        int32_t *l_117 = (void*)0;
        int32_t *l_118 = &l_101;
        int32_t *l_119 = &l_102;
        int32_t *l_120 = (void*)0;
        int32_t *l_121 = &l_101;
        int32_t *l_122[2];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_122[i] = &l_101;
        l_102 &= (l_101 = ((l_85 && (p_59 == (((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(1UL, 0UL)).xyyxyxxx + ((VECTOR(uint64_t, 8))(p_1083->g_88.sa103c12d))))).s2 & ((~(safe_mul_func_int8_t_s_s((safe_sub_func_int8_t_s_s(((safe_div_func_int8_t_s_s((p_1083->g_21 || 0L), 1UL)) ^ p_59), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 16))((((*l_97) = p_1083->g_24.y) , ((l_97 == p_1083->g_60) || l_99)), p_1083->g_24.x, l_99, ((VECTOR(uint8_t, 8))(252UL)), 252UL, ((VECTOR(uint8_t, 2))(250UL)), 246UL, 1UL)).sae, ((VECTOR(uint8_t, 2))(1UL))))).yxxx + ((VECTOR(uint8_t, 4))(1UL))))), ((VECTOR(uint8_t, 4))(0x8DL))))), ((VECTOR(uint8_t, 4))(0xE3L))))), ((VECTOR(uint8_t, 4))(1UL)))).s4)), 8UL))) > l_85)))) >= p_59));
        (*l_105) = func_64((p_58 > (safe_sub_func_uint64_t_u_u(((void*)0 == l_105), (p_58 || (((safe_add_func_uint32_t_u_u(((void*)0 == p_1083->g_60), (safe_sub_func_int32_t_s_s(((p_1083->g_116 = ((((p_1083->g_24.x = (safe_rshift_func_int8_t_s_s(((safe_mod_func_uint8_t_u_u((0x33L | (&p_57 == (void*)0)), 6L)) < p_1083->g_24.y), p_1083->g_98))) & 18446744073709551608UL) , p_1083->g_18) ^ 0x6AL)) | p_1083->g_33.s0), FAKE_DIVERGE(p_1083->local_1_offset, get_local_id(1), 10))))) < l_102) == 254UL))))), p_1083->g_33.s5, p_1083->g_60, l_99, l_99, p_1083);
        l_126++;
    }
    else
    { /* block id: 20 */
        uint16_t *l_137[5][6] = {{&p_1083->g_21,&p_1083->g_21,&p_1083->g_21,&p_1083->g_21,&p_1083->g_21,&p_1083->g_21},{&p_1083->g_21,&p_1083->g_21,&p_1083->g_21,&p_1083->g_21,&p_1083->g_21,&p_1083->g_21},{&p_1083->g_21,&p_1083->g_21,&p_1083->g_21,&p_1083->g_21,&p_1083->g_21,&p_1083->g_21},{&p_1083->g_21,&p_1083->g_21,&p_1083->g_21,&p_1083->g_21,&p_1083->g_21,&p_1083->g_21},{&p_1083->g_21,&p_1083->g_21,&p_1083->g_21,&p_1083->g_21,&p_1083->g_21,&p_1083->g_21}};
        VECTOR(uint16_t, 4) l_138 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65527UL), 65527UL);
        int32_t l_139 = 0x0CE32B38L;
        VECTOR(uint8_t, 16) l_144 = (VECTOR(uint8_t, 16))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 0x84L), 0x84L), 0x84L, 4UL, 0x84L, (VECTOR(uint8_t, 2))(4UL, 0x84L), (VECTOR(uint8_t, 2))(4UL, 0x84L), 4UL, 0x84L, 4UL, 0x84L);
        int8_t *l_149 = (void*)0;
        int8_t *l_150 = &l_99;
        int64_t *l_151[5];
        int32_t **l_174 = &p_1083->g_60;
        VECTOR(int16_t, 8) l_206 = (VECTOR(int16_t, 8))(0x22B6L, (VECTOR(int16_t, 4))(0x22B6L, (VECTOR(int16_t, 2))(0x22B6L, 0x6EC8L), 0x6EC8L), 0x6EC8L, 0x22B6L, 0x6EC8L);
        VECTOR(int8_t, 2) l_207 = (VECTOR(int8_t, 2))(1L, (-7L));
        int32_t l_259 = 0L;
        int32_t l_261[5][9] = {{3L,0x79222388L,3L,3L,0x79222388L,3L,3L,0x79222388L,3L},{3L,0x79222388L,3L,3L,0x79222388L,3L,3L,0x79222388L,3L},{3L,0x79222388L,3L,3L,0x79222388L,3L,3L,0x79222388L,3L},{3L,0x79222388L,3L,3L,0x79222388L,3L,3L,0x79222388L,3L},{3L,0x79222388L,3L,3L,0x79222388L,3L,3L,0x79222388L,3L}};
        uint32_t l_263[9] = {3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL};
        uint8_t l_277 = 0xE2L;
        uint32_t l_285 = 0xB4F049E5L;
        VECTOR(uint16_t, 8) l_296 = (VECTOR(uint16_t, 8))(0x7F27L, (VECTOR(uint16_t, 4))(0x7F27L, (VECTOR(uint16_t, 2))(0x7F27L, 0UL), 0UL), 0UL, 0x7F27L, 0UL);
        VECTOR(uint8_t, 2) l_316 = (VECTOR(uint8_t, 2))(0x9CL, 3UL);
        VECTOR(int32_t, 16) l_325 = (VECTOR(int32_t, 16))(0x3A3B24C4L, (VECTOR(int32_t, 4))(0x3A3B24C4L, (VECTOR(int32_t, 2))(0x3A3B24C4L, 0x25F45BF9L), 0x25F45BF9L), 0x25F45BF9L, 0x3A3B24C4L, 0x25F45BF9L, (VECTOR(int32_t, 2))(0x3A3B24C4L, 0x25F45BF9L), (VECTOR(int32_t, 2))(0x3A3B24C4L, 0x25F45BF9L), 0x3A3B24C4L, 0x25F45BF9L, 0x3A3B24C4L, 0x25F45BF9L);
        VECTOR(int32_t, 8) l_330 = (VECTOR(int32_t, 8))(0x6A0CD230L, (VECTOR(int32_t, 4))(0x6A0CD230L, (VECTOR(int32_t, 2))(0x6A0CD230L, 0x1CA81C34L), 0x1CA81C34L), 0x1CA81C34L, 0x6A0CD230L, 0x1CA81C34L);
        VECTOR(int32_t, 8) l_332 = (VECTOR(int32_t, 8))(0x5959697AL, (VECTOR(int32_t, 4))(0x5959697AL, (VECTOR(int32_t, 2))(0x5959697AL, 0x63EAA96FL), 0x63EAA96FL), 0x63EAA96FL, 0x5959697AL, 0x63EAA96FL);
        VECTOR(int32_t, 4) l_335 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x33F045B8L), 0x33F045B8L);
        VECTOR(int8_t, 8) l_361 = (VECTOR(int8_t, 8))(0x6CL, (VECTOR(int8_t, 4))(0x6CL, (VECTOR(int8_t, 2))(0x6CL, 0x24L), 0x24L), 0x24L, 0x6CL, 0x24L);
        VECTOR(int32_t, 4) l_389 = (VECTOR(int32_t, 4))(0x441F70F2L, (VECTOR(int32_t, 2))(0x441F70F2L, 0x2E300580L), 0x2E300580L);
        VECTOR(int32_t, 4) l_390 = (VECTOR(int32_t, 4))(0x2D6A5D64L, (VECTOR(int32_t, 2))(0x2D6A5D64L, 0x65F99B59L), 0x65F99B59L);
        uint32_t l_397 = 0x4F08F818L;
        int8_t l_423 = (-1L);
        uint8_t l_434 = 0x0BL;
        int i, j;
        for (i = 0; i < 5; i++)
            l_151[i] = &p_1083->g_152[0][0][1];
        if ((safe_sub_func_int64_t_s_s((p_58 = (((l_131[0] != &p_1083->g_116) > ((*l_150) = (safe_add_func_int16_t_s_s((254UL == ((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 16))(p_1083->g_134.zwzwxywyyyyyyxxy)), (int8_t)(((VECTOR(uint8_t, 2))(255UL, 0UL)).lo & (l_99 & (((~(safe_div_func_uint16_t_u_u((p_1083->g_21 = 0x3A1DL), (l_139 |= ((VECTOR(uint16_t, 2))(l_138.xw)).lo)))) , (safe_div_func_int64_t_s_s(((safe_sub_func_int8_t_s_s(l_138.y, ((VECTOR(uint8_t, 16))(l_144.s356361b46b89d60f)).se)) <= (((l_139 = ((VECTOR(int16_t, 2))((-7L), 0x2AD8L)).lo) < (safe_sub_func_int8_t_s_s((safe_div_func_int16_t_s_s(0x418EL, (p_1083->g_98 , (-4L)))), 0x23L))) >= 0x28A3L)), l_123))) < p_1083->g_33.s6)))))).s7c51, ((VECTOR(int8_t, 4))((-1L)))))).x), p_1083->g_24.x)))) >= (-1L))), p_59)))
        { /* block id: 26 */
            int8_t l_158 = 0x09L;
            VECTOR(int32_t, 2) l_199 = (VECTOR(int32_t, 2))(7L, 0L);
            uint32_t l_200 = 0x2AEDDAC2L;
            uint64_t *l_230 = (void*)0;
            uint64_t *l_231 = (void*)0;
            uint64_t *l_232 = (void*)0;
            uint64_t *l_233[3];
            VECTOR(uint8_t, 4) l_311 = (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 248UL), 248UL);
            VECTOR(int32_t, 8) l_337 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), (-1L)), (-1L)), (-1L), (-9L), (-1L));
            uint32_t l_380 = 4294967291UL;
            int64_t l_383 = 1L;
            uint32_t l_384 = 0UL;
            VECTOR(int32_t, 16) l_391 = (VECTOR(int32_t, 16))(0x022666ADL, (VECTOR(int32_t, 4))(0x022666ADL, (VECTOR(int32_t, 2))(0x022666ADL, 0x039CEDA2L), 0x039CEDA2L), 0x039CEDA2L, 0x022666ADL, 0x039CEDA2L, (VECTOR(int32_t, 2))(0x022666ADL, 0x039CEDA2L), (VECTOR(int32_t, 2))(0x022666ADL, 0x039CEDA2L), 0x022666ADL, 0x039CEDA2L, 0x022666ADL, 0x039CEDA2L);
            int i;
            for (i = 0; i < 3; i++)
                l_233[i] = (void*)0;
            for (p_1083->g_98 = (-20); (p_1083->g_98 >= 25); p_1083->g_98 = safe_add_func_uint16_t_u_u(p_1083->g_98, 1))
            { /* block id: 29 */
                int32_t *l_155 = (void*)0;
                int32_t *l_156 = (void*)0;
                int32_t *l_157 = &l_123;
                VECTOR(int16_t, 4) l_171 = (VECTOR(int16_t, 4))(0x3143L, (VECTOR(int16_t, 2))(0x3143L, 0x5924L), 0x5924L);
                VECTOR(int16_t, 4) l_173 = (VECTOR(int16_t, 4))(0x03A9L, (VECTOR(int16_t, 2))(0x03A9L, 0x7DEFL), 0x7DEFL);
                int16_t *l_175 = (void*)0;
                int16_t *l_176 = (void*)0;
                int16_t *l_177 = (void*)0;
                int16_t *l_178[6][5][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                int i, j, k;
                (*l_157) = (-1L);
                (*l_174) = func_64(l_158, p_1083->g_98, &l_125, (+p_1083->g_24.y), (safe_add_func_int64_t_s_s((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(mad_sat(((VECTOR(uint64_t, 8))(18446744073709551609UL, (safe_sub_func_int64_t_s_s(p_59, ((((((safe_sub_func_int64_t_s_s((+(((((l_124 <= (safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(l_167.sbc)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_1083->g_168.sf2)), 0x7FBBL, (-1L))).hi, ((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),VECTOR(int16_t, 16),((VECTOR(int16_t, 16))((-5L), ((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(p_1083->g_134.x, (-4L), (-3L), (-3L))) != ((VECTOR(int16_t, 8))(p_1083->g_169.s61077576)).hi))), ((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 8))(p_1083->g_170.xyzyxyyz)).s76, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(l_171.xyxy)).xwzzxwwz ^ ((VECTOR(int16_t, 8))(l_172.yxyxyyyy))))).s72))).yxxy, ((VECTOR(int16_t, 2))(l_173.yw)).xxxx))), (l_123 = (l_174 == &p_57)), ((VECTOR(int16_t, 2))(0L)), 0L, ((VECTOR(int16_t, 2))((-1L))), p_59, ((VECTOR(int16_t, 4))(0L)))), ((VECTOR(int16_t, 16))(0L)), ((VECTOR(int16_t, 16))((-10L)))))).s7e))), 1L, (-6L))), 0x6323L, 0x39EEL)).s62 != ((VECTOR(int16_t, 2))(0x296FL))))).xxxx && ((VECTOR(int16_t, 4))(0L))))).z, 2))) <= GROUP_DIVERGE(0, 1)) , 0x20007F3CL) , &l_99) != (void*)0)), 0x1B3B912DD5A0D50FL)) >= p_1083->g_169.s6) < 0x4665L) == 0x39L) >= p_59) && 0x02L))), 18446744073709551615UL, ((VECTOR(uint64_t, 2))(18446744073709551615UL)), GROUP_DIVERGE(2, 1), 0UL, 18446744073709551615UL)).s46, ((VECTOR(uint64_t, 2))(0xFB2BD5D16FAE3A32L)), ((VECTOR(uint64_t, 2))(0x2FA0CCB0C8A609B5L))))), 0x464BD90867E643A7L, 0x2F1A9747AEA97A0AL)).y , p_1083->g_88.s6), FAKE_DIVERGE(p_1083->local_0_offset, get_local_id(0), 10))), p_1083);
                for (l_139 = 29; (l_139 < (-18)); l_139 = safe_sub_func_uint32_t_u_u(l_139, 6))
                { /* block id: 35 */
                    if (l_126)
                        break;
                }
                for (l_99 = 13; (l_99 < (-22)); --l_99)
                { /* block id: 40 */
                    return p_1083->g_60;
                }
            }
lbl_185:
            (*l_174) = p_1083->g_60;
            for (p_1083->g_116 = (-21); (p_1083->g_116 == 16); p_1083->g_116++)
            { /* block id: 47 */
                VECTOR(int16_t, 16) l_187 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int16_t, 2))(0L, 0L), (VECTOR(int16_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
                VECTOR(int16_t, 2) l_189 = (VECTOR(int16_t, 2))((-1L), 0x202AL);
                int32_t *l_201 = &l_102;
                int i;
                if (l_124)
                    goto lbl_185;
                (*l_201) = ((VECTOR(int32_t, 8))(0x6FAD5A6DL, 0L, 0x09A7F20AL, ((VECTOR(int32_t, 2))(p_1083->g_186.s20)), ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),VECTOR(int16_t, 2),((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 2))(2L, 0L)).xyxyyyxx, ((VECTOR(int16_t, 4))(l_187.s3009)).yyxwwwzz, ((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))((!((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(p_1083->g_188.xz)), 2L, p_1083->g_186.sb, 7L, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_189.xy)), 0x7B82L, (-4L))), ((VECTOR(int16_t, 4))(p_1083->g_190.sdb69)), ((safe_mod_func_uint16_t_u_u((((l_139 = (l_99 != (safe_mod_func_int8_t_s_s((safe_rshift_func_int8_t_s_s((p_1083->g_21 & l_126), 1)), ((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 16))(l_199.xyyxxxxxyxyxyxxy)).se, ((VECTOR(int32_t, 4))(0L, (((p_59 , (p_59 < (l_199.x , 18446744073709551607UL))) && p_58) , p_1083->g_188.y), 1L, 0x464E29DAL)).y)) | p_59))))) <= l_200) >= 0x57L), p_1083->g_169.s2)) ^ (-2L)), p_58, 1L, p_58, (-1L), (-9L), 0x6304L, 0x29FFL)).odd > ((VECTOR(int16_t, 8))(0x2C86L))))), l_200, 0x7E36L, 0x2B05L)).sbcd6))) && ((VECTOR(int16_t, 4))(0x3677L))))).odd, (int16_t)p_1083->g_152[0][0][1]))).yyyyyyxyxxxxxxyy, ((VECTOR(int16_t, 16))(0x50A3L))))).s7839 != ((VECTOR(int16_t, 4))(0x0316L))))).xxzzwwxw, ((VECTOR(int16_t, 8))(1L)), ((VECTOR(int16_t, 8))(0x1102L)))))))).odd, ((VECTOR(int16_t, 4))(0x68E8L))))).even, ((VECTOR(int16_t, 2))(0x330FL)), ((VECTOR(int16_t, 2))(0x5EA9L))))), ((VECTOR(uint16_t, 2))(0xE306L))))), (-9L))).s2;
                for (l_200 = (-11); (l_200 != 20); l_200 = safe_add_func_uint8_t_u_u(l_200, 6))
                { /* block id: 53 */
                    VECTOR(uint8_t, 8) l_217 = (VECTOR(uint8_t, 8))(247UL, (VECTOR(uint8_t, 4))(247UL, (VECTOR(uint8_t, 2))(247UL, 0x5FL), 0x5FL), 0x5FL, 247UL, 0x5FL);
                    int16_t *l_222 = (void*)0;
                    int16_t *l_223 = (void*)0;
                    int16_t *l_224 = (void*)0;
                    uint8_t *l_225[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    uint32_t *l_227 = &p_1083->g_98;
                    int i;
                    (*l_174) = p_1083->g_60;
                    (*l_201) ^= (~0x1A404982L);
                    if (p_1083->g_33.s6)
                        break;
                    (*l_201) = ((&p_1083->g_60 != (void*)0) || (0x45L > ((*l_150) &= (((l_199.x &= (((*l_227) |= (1UL > ((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(0x3CB8L, 0x4EB1L)) && ((VECTOR(int16_t, 8))(l_206.s53454203)).s66))), ((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(l_207.xx)).xxyx ^ ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_1083->g_208.s53)), 0x6BL, 0x14L))))), ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(p_1083->g_211.xyxxxxxx)) + ((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(p_1083->g_216.xyyyyyyyyyxxyyxx)).sf599 + ((VECTOR(uint8_t, 4))(l_217.s1160))))), 0x5EL, 6UL, 0x71L, 0xEDL)).s35, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))((p_1083->g_226 &= (safe_lshift_func_uint8_t_u_s((GROUP_DIVERGE(1, 1) < (((p_1083->g_170.z = (((p_58 || 0x7544L) != (((VECTOR(uint8_t, 2))(0xAFL, 0UL)).lo ^ p_58)) && 0xCF7481F4E8C9DC0FL)) , &p_1083->g_60) == &p_57)), 2))), 0xF0L, 0x51L, 0x0DL)).yyyzxyxx << ((VECTOR(uint8_t, 8))(0xBFL))))).s71))).xxyyyyxxyxxyxyxy - ((VECTOR(uint8_t, 16))(1UL))))).even, ((VECTOR(uint8_t, 8))(2UL)))))))).even))).lo))).hi)) , (*l_201))) , 0x67DEL) == 0x1D89L))));
                }
            }
            if (((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 8))(l_228.sda484c74)), ((VECTOR(int32_t, 8))((-1L), ((void*)0 != p_1083->g_229), ((p_1083->g_24.y--) | ((VECTOR(int64_t, 4))((&p_1083->g_152[0][1][2] != &p_1083->g_152[0][1][1]), 0x3DB6FB7C800197DBL, (-1L), 0x6E87006EA0178CA0L)).z), ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 4))((safe_mod_func_uint64_t_u_u((l_125 = l_172.y), (safe_mul_func_int8_t_s_s((safe_mod_func_int64_t_s_s(((safe_unary_minus_func_uint16_t_u((safe_add_func_int64_t_s_s((((p_59 , &l_158) == p_1083->g_245) , (safe_add_func_int8_t_s_s((safe_add_func_uint16_t_u_u(((safe_sub_func_uint8_t_u_u(p_59, p_1083->g_169.s4)) ^ 0x7D7BL), p_1083->g_33.s1)), GROUP_DIVERGE(1, 1)))), p_58)))) > p_1083->g_168.s1), p_1083->g_33.s4)), p_59)))), p_58, 0x15E9AC74L, 8L)).odd, ((VECTOR(int32_t, 2))(0x3D2489EBL))))).yxyxyxxx && ((VECTOR(int32_t, 8))((-1L)))))).s72 < ((VECTOR(int32_t, 2))(0x1D17CBE8L))))).yyxx, ((VECTOR(int32_t, 4))((-4L))), ((VECTOR(int32_t, 4))(0x3E1638DAL))))), ((VECTOR(int32_t, 4))(0x4FDCDEC2L)), ((VECTOR(int32_t, 4))(0x0EC81A7DL))))).hi && ((VECTOR(int32_t, 2))((-1L)))))).yyxy && ((VECTOR(int32_t, 4))(0x0D061E88L))))), 0x265089CDL))))), ((VECTOR(int32_t, 8))(0x483BA15FL)), ((VECTOR(int32_t, 8))(0x5D2842B9L))))).s7)
            { /* block id: 67 */
                uint16_t l_253 = 2UL;
                int32_t l_256 = 0L;
                int32_t *l_257 = (void*)0;
                int32_t *l_258[4];
                VECTOR(uint32_t, 8) l_276 = (VECTOR(uint32_t, 8))(0x278099B2L, (VECTOR(uint32_t, 4))(0x278099B2L, (VECTOR(uint32_t, 2))(0x278099B2L, 0xC909B225L), 0xC909B225L), 0xC909B225L, 0x278099B2L, 0xC909B225L);
                VECTOR(uint16_t, 8) l_297 = (VECTOR(uint16_t, 8))(0xA90DL, (VECTOR(uint16_t, 4))(0xA90DL, (VECTOR(uint16_t, 2))(0xA90DL, 65526UL), 65526UL), 65526UL, 0xA90DL, 65526UL);
                VECTOR(uint8_t, 2) l_313 = (VECTOR(uint8_t, 2))(0xF7L, 0x13L);
                uint64_t l_324 = 0xBB8B37F66250D247L;
                VECTOR(int32_t, 8) l_336 = (VECTOR(int32_t, 8))(0x23A77274L, (VECTOR(int32_t, 4))(0x23A77274L, (VECTOR(int32_t, 2))(0x23A77274L, 0L), 0L), 0L, 0x23A77274L, 0L);
                VECTOR(int8_t, 16) l_359 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int8_t, 2))((-1L), 0L), (VECTOR(int8_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
                VECTOR(int8_t, 8) l_362 = (VECTOR(int8_t, 8))(3L, (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 7L), 7L), 7L, 3L, 7L);
                int32_t l_378 = 0x7436B2F3L;
                int i;
                for (i = 0; i < 4; i++)
                    l_258[i] = &l_102;
                ++l_253;
                l_263[4]++;
                for (l_99 = (-4); (l_99 != 28); l_99 = safe_add_func_uint8_t_u_u(l_99, 8))
                { /* block id: 72 */
                    uint64_t l_268 = 18446744073709551606UL;
                    int64_t **l_273 = &l_151[3];
                    l_268 ^= p_1083->g_211.x;
                    (*l_174) = p_1083->g_60;
                    p_1083->g_186.sa = (safe_add_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(((((((void*)0 != &p_1083->g_98) , 4294967287UL) , 0xA9199F79172D43E7L) != ((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 4))((((*l_273) = &p_1083->g_152[0][0][1]) == &p_1083->g_262), ((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 16))((((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 4))(l_276.s4235)).hi, ((VECTOR(uint32_t, 8))(p_59, 0xC890D855L, (((p_1083->g_169.s3 < p_1083->g_116) ^ l_277) & p_58), ((VECTOR(uint32_t, 4))(0xF04724DEL)), 0x25A67F2CL)).s67))).yyyx * ((VECTOR(uint32_t, 4))(4UL))))).x > l_268) < 3UL) , l_172.x), (-3L), 0x1F1A8A24A25CA217L, ((VECTOR(int64_t, 4))(0x1EDC90E1155E2C9FL)), ((VECTOR(int64_t, 2))(0x5AECA4E99E25D692L)), p_58, ((VECTOR(int64_t, 4))(0L)), 5L, 9L)).s6c, ((VECTOR(int64_t, 2))((-3L))), ((VECTOR(int64_t, 2))(0x6B689C319CCB7DFAL))))), (-1L))).even, ((VECTOR(int64_t, 2))(0x168C6D517F5C9F01L))))).yxxx, ((VECTOR(int64_t, 4))((-1L))), ((VECTOR(int64_t, 4))(0x73816B979334A3F6L))))).x) < 0L), l_167.sf)), p_59));
                    l_259 |= 0x7825D801L;
                }
                for (l_139 = (-16); (l_139 >= (-6)); l_139 = safe_add_func_int16_t_s_s(l_139, 2))
                { /* block id: 81 */
                    int64_t l_282 = 6L;
                    int32_t l_283 = (-1L);
                    int32_t l_284[2];
                    VECTOR(int32_t, 4) l_328 = (VECTOR(int32_t, 4))(0x6E358677L, (VECTOR(int32_t, 2))(0x6E358677L, 0x65A731D5L), 0x65A731D5L);
                    uint8_t l_372 = 0xB8L;
                    int8_t l_373 = 1L;
                    uint8_t l_374 = 0x40L;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_284[i] = 1L;
                    for (p_59 = 0; (p_59 >= 25); ++p_59)
                    { /* block id: 84 */
                        int16_t *l_288 = (void*)0;
                        int16_t *l_289 = (void*)0;
                        int16_t *l_290 = (void*)0;
                        int16_t *l_291[9][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                        VECTOR(uint8_t, 16) l_312 = (VECTOR(uint8_t, 16))(0x7BL, (VECTOR(uint8_t, 4))(0x7BL, (VECTOR(uint8_t, 2))(0x7BL, 0xD5L), 0xD5L), 0xD5L, 0x7BL, 0xD5L, (VECTOR(uint8_t, 2))(0x7BL, 0xD5L), (VECTOR(uint8_t, 2))(0x7BL, 0xD5L), 0x7BL, 0xD5L, 0x7BL, 0xD5L);
                        uint8_t *l_327[1][4];
                        VECTOR(int32_t, 8) l_333 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x40A77AAFL), 0x40A77AAFL), 0x40A77AAFL, (-1L), 0x40A77AAFL);
                        VECTOR(int32_t, 2) l_340 = (VECTOR(int32_t, 2))(0x5897ECA9L, 0L);
                        VECTOR(int32_t, 2) l_341 = (VECTOR(int32_t, 2))(0x24ECD6D9L, 0L);
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 4; j++)
                                l_327[i][j] = &l_277;
                        }
                        l_282 |= (0xEB88B96EL != 0x63003008L);
                        l_285++;
                        l_199.y = ((l_284[0] = (-10L)) || (((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(l_296.s03)).yyyyyxxyxxyyxyxy * ((VECTOR(uint16_t, 8))(l_297.s10425430)).s2354746555125323))).s21 + ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(1UL, ((VECTOR(uint16_t, 2))(abs(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 8))(p_1083->g_300.s8aa431c9)).s5411713715404013, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 4))((safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((l_284[0] = (((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(l_311.zywz)) + ((VECTOR(uint8_t, 8))(0x01L, 1UL, ((p_59 , l_291[5][0]) == (void*)0), 0UL, 0xB4L, 0UL, 1UL, 0x86L)).hi))) + ((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 8))((FAKE_DIVERGE(p_1083->global_1_offset, get_global_id(1), 10) || 65535UL), 255UL, 0UL, ((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 8))(l_312.s6451bf52)).s54, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(l_313.xxxyyyxxyxyxyxxx)).sfc & ((VECTOR(uint8_t, 4))(255UL, 251UL, 0x16L, 1UL)).even)))))), ((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(l_316.yyyyxxyx)) + ((VECTOR(uint8_t, 16))(l_317.s3322a087789c42e1)).even))).s60, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(p_1083->g_320.s99)).xxyy + ((VECTOR(uint8_t, 4))(p_1083->g_321.xxwx))))), ((VECTOR(uint8_t, 2))(252UL, 0xE2L)), 0xBEL, 0x8FL)).s66))), 0x44L)).s5052156036202003, ((VECTOR(uint8_t, 4))(0xFBL, (safe_div_func_int32_t_s_s((l_324 = p_59), ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 4))(l_325.s93c5)).zzwwxxwwywxxxxzy, ((VECTOR(int32_t, 8))(0x782B4B9AL, ((*p_1083->g_245) != (p_1083->g_326[3][1][0] == (void*)0)), 0x5422A79DL, 0x4C0B0FD8L, 0x7F7A5D91L, ((VECTOR(int32_t, 2))(0x2EC0147EL)), 0x7ED76638L)).s7212011435223025))).s01, ((VECTOR(int32_t, 2))(0x2660F844L))))).hi)), 0x3CL, 0x82L)).zyzyywwwwwxzxzxz))), ((VECTOR(uint8_t, 16))(7UL))))).se7a4))), GROUP_DIVERGE(0, 1), ((VECTOR(uint8_t, 2))(255UL)), ((VECTOR(uint8_t, 8))(0x38L)), 1UL)).s6df1 << ((VECTOR(uint8_t, 4))(8))))).z >= p_59)), l_228.sb)), l_282)), 0x2691L, 0x1BAAL, 0x1B71L)).even))).xyxxxxyx && ((VECTOR(int16_t, 8))(0x0F12L))))).s3157376442700661))).s0a))), 0UL)) ^ ((VECTOR(uint16_t, 4))(0UL))))).wwxxxzwzywyxywyz - ((VECTOR(uint16_t, 16))(6UL))))).s53))).hi | p_1083->g_320.sd));
                        l_372 = ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(l_328.zxzy)).zwwzwzyywzwwxzxy && ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(0x42DA64D2L, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(p_1083->g_329.s7270)).hi || ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(l_330.s3531566711472661)).lo || ((VECTOR(int32_t, 4))(p_1083->g_331.s2721)).zzyyxywy))), ((VECTOR(int32_t, 2))(l_332.s73)).yyyyyxyy))).lo, (int32_t)l_328.y))).even))), (-6L))).zzwzwzyy, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))((-7L), ((VECTOR(int32_t, 2))(l_333.s36)), 0x010E5A72L)).odd))) && ((VECTOR(int32_t, 4))(0x7A48958EL, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(p_1083->g_334.yyyx)).xxwwwyzzzzwzxyxx, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(l_335.xz)).xyyy | ((VECTOR(int32_t, 2))(l_336.s54)).yxyy))).yzzyxzwyzwwxyxzy, ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(l_337.s3104434234130145)).sf756 < ((VECTOR(int32_t, 2))((-1L), 9L)).yyyx))), ((VECTOR(int32_t, 8))(p_1083->g_338.s61717222)).hi))).wywyyzxyzwyywwzy))).s97 && ((VECTOR(int32_t, 2))(p_1083->g_339.s37))))), 0x6C7540BDL)).lo))).xyxyxyyy, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))((-8L), 0x3C83F8DCL, 0x599ED79EL, ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 2))(4L, 0x58002CDCL)), ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 2))(0x4BBD7D85L, 7L)).yxxyxxxyyxyyyyyx, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(l_340.yxyx)).ywxzzxxw && ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(l_341.xxyxyxxxyxyxxyxx)).s07 ^ ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 8))(p_1083->g_342.xyyxyyyx)).s0551311504373125, (int32_t)p_1083->g_211.y))) && ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(p_1083->g_343.wxxwywyxwxyywzxy)) && ((VECTOR(int32_t, 4))(p_1083->g_344.ywwz)).xzwyzxxxwxyyyyyx)))))).sbf))).yyyyyyyy))).s3407727066532576))).s44))), (safe_unary_minus_func_int64_t_s((-1L))), (-1L), 0x4B594430L)) == ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(p_1083->g_346.sf6075ba367d935b7)), ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(0x677C45E5L, (-7L))) && ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 16))(p_1083->g_347.yzwwwyxwxwyzzxyx)).sa4, ((VECTOR(int32_t, 16))(l_348.s4303623175607540)).se1))), 0x13CD0B56L, ((VECTOR(int32_t, 2))(p_1083->g_349.xy)), (-9L), 0x78D5351EL, (-1L))).even, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(0x7F5C61BAL, (((safe_mul_func_int8_t_s_s(((safe_div_func_uint64_t_u_u(0x09C206F519AB683EL, ((VECTOR(uint64_t, 8))((safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(int8_t, 8))(p_1083->g_356.s05712672)), ((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 4))(0x61L, 0x03L, 0L, 1L)).wxzyzyzwwwwxyzyw, ((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(p_1083->g_357.s5513)).yxyyzwyw && ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(p_1083->g_358.xwxxzzyw)).lo && ((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 8))(l_359.sc1df63d2)).odd, ((VECTOR(int8_t, 4))(l_360.s3254)))))))).even, ((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 16))((~((VECTOR(int8_t, 2))(l_361.s50)).yyxxyxxxxxyyxyxx))), ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(l_362.s0352)).xyyzxxxx && ((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 2))((-5L), 0x51L)), ((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))(p_1083->g_363.yxxyxxxz)), ((VECTOR(int8_t, 2))(0x52L, 0x7FL)).xxyyyyyy))).s10))).xyxx, ((VECTOR(int8_t, 4))(5L, (safe_unary_minus_func_int16_t_s(((safe_sub_func_uint64_t_u_u(l_312.s9, p_1083->g_363.x)) , (FAKE_DIVERGE(p_1083->group_0_offset, get_group_id(0), 10) , ((~(safe_lshift_func_uint8_t_u_u(((safe_mod_func_uint8_t_u_u((!2UL), p_1083->g_33.s6)) , l_200), p_1083->g_152[0][1][2]))) ^ 0xCF32B178L))))), 0x75L, (-3L)))))).zwyywzyx))).s2733450344475673))).s81))).yxyxyyyy))).hi, ((VECTOR(int8_t, 4))(0x7AL))))).wxyywzwzyxwxyyxx, ((VECTOR(int8_t, 16))((-6L)))))).lo))).s5434560442136206, ((VECTOR(uint8_t, 16))(0xD9L))))).se, 1)), 0xA9FB29B4FE453BFCL, ((VECTOR(uint64_t, 4))(18446744073709551612UL)), 0xE1BE1B7A08D616DDL, 5UL)).s3)) ^ 0x42EA006AL), 0x85L)) , (void*)0) == l_291[2][2]), 1L, (-1L), 0x087E1C5DL, ((VECTOR(int32_t, 4))(6L)), (-1L), l_371, 0x16604D0BL, l_360.s6, p_1083->g_357.s5, 8L, (-1L))).s1b && ((VECTOR(int32_t, 2))(0x712611FAL))))).xyxy, ((VECTOR(int32_t, 4))(0x43134793L))))), 0x341AF9E5L, ((VECTOR(int32_t, 2))((-8L))), 0x4B0F2803L)).even | ((VECTOR(int32_t, 4))(4L))))).xywxwxzxxyyxywzy && ((VECTOR(int32_t, 16))((-6L)))))).s50))).yyyyxyxx == ((VECTOR(int32_t, 8))(0x0827A510L))))).s3764653411672366, ((VECTOR(int32_t, 16))(0x797E5E5FL))))), ((VECTOR(int32_t, 16))((-1L)))))).s4e && ((VECTOR(int32_t, 2))(0L))))), 0x78775938L, 0x134D4A69L)).xyyxywww, ((VECTOR(int32_t, 8))(0x0FD3DB73L)), ((VECTOR(int32_t, 8))(0L))))))))))).s06, ((VECTOR(int32_t, 2))(0L))))).xxxxxxxyxxxyxxyx))).sc;
                    }
                    l_374++;
                    --l_380;
                    ++l_384;
                }
            }
            else
            { /* block id: 97 */
                VECTOR(int32_t, 2) l_392 = (VECTOR(int32_t, 2))(0L, (-1L));
                int16_t l_403 = 8L;
                uint64_t l_405 = 18446744073709551615UL;
                int32_t *l_410 = (void*)0;
                int32_t *l_411 = &l_123;
                int32_t *l_412 = &l_123;
                int32_t *l_413[5][7][2];
                int i, j, k;
                for (i = 0; i < 5; i++)
                {
                    for (j = 0; j < 7; j++)
                    {
                        for (k = 0; k < 2; k++)
                            l_413[i][j][k] = (void*)0;
                    }
                }
                if (((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(p_1083->g_387.yy)).yxyyxyxyxyyyxyyy >= ((VECTOR(int32_t, 8))(p_1083->g_388.s42657405)).s2541444304153253))).sea & ((VECTOR(int32_t, 2))(l_389.xw))))).yyxyxyyxyyyxyxxy >= ((VECTOR(int32_t, 8))(l_390.yzwwyxxw)).s0430567107576250))).s1a82, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(l_391.sd746597e)).s01 > ((VECTOR(int32_t, 4))(l_392.xxyy)).lo))).xyxy))).z)
                { /* block id: 98 */
                    int32_t *l_400 = (void*)0;
                    int32_t *l_401 = (void*)0;
                    int32_t *l_402[9][4][3] = {{{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]}},{{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]}},{{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]}},{{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]}},{{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]}},{{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]}},{{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]}},{{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]}},{{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]},{(void*)0,(void*)0,&l_261[1][0]}}};
                    int i, j, k;
                    for (p_1083->g_226 = 20; (p_1083->g_226 >= 40); ++p_1083->g_226)
                    { /* block id: 101 */
                        int32_t *l_395 = &l_261[4][1];
                        int32_t *l_396[8] = {&l_123,&l_123,&l_123,&l_123,&l_123,&l_123,&l_123,&l_123};
                        int i;
                        --l_397;
                        if (p_1083->g_21)
                            goto lbl_185;
                        return p_1083->g_60;
                    }
                    --l_405;
                }
                else
                { /* block id: 107 */
                    int32_t *l_408 = &l_261[0][1];
                    int32_t *l_409[7][1][3] = {{{&l_139,&l_102,&l_102}},{{&l_139,&l_102,&l_102}},{{&l_139,&l_102,&l_102}},{{&l_139,&l_102,&l_102}},{{&l_139,&l_102,&l_102}},{{&l_139,&l_102,&l_102}},{{&l_139,&l_102,&l_102}}};
                    int i, j, k;
                    p_1083->g_387.x = ((*l_408) |= p_1083->g_388.s1);
                }
                l_414[2]--;
                for (p_1083->g_21 = 0; (p_1083->g_21 < 17); p_1083->g_21 = safe_add_func_uint64_t_u_u(p_1083->g_21, 5))
                { /* block id: 114 */
                    (*l_412) = (p_59 > ((safe_sub_func_int8_t_s_s((((VECTOR(int16_t, 4))(l_421.xyxy)).y == p_59), p_59)) ^ ((VECTOR(uint16_t, 16))(p_1083->g_422.yyxzxyyywzyyxwww)).s7));
                }
            }
        }
        else
        { /* block id: 118 */
            int32_t *l_424 = &l_102;
            int32_t *l_425 = (void*)0;
            int32_t *l_426 = &l_261[1][6];
            int32_t *l_427 = &l_139;
            int32_t *l_428 = &l_259;
            int32_t *l_429 = (void*)0;
            int32_t *l_430 = &l_124;
            int32_t *l_431[7];
            int16_t l_432[7] = {(-8L),1L,(-8L),(-8L),1L,(-8L),(-8L)};
            VECTOR(int64_t, 16) l_443 = (VECTOR(int64_t, 16))(0x74569F0B240698A7L, (VECTOR(int64_t, 4))(0x74569F0B240698A7L, (VECTOR(int64_t, 2))(0x74569F0B240698A7L, 0x1DF0044B4B174412L), 0x1DF0044B4B174412L), 0x1DF0044B4B174412L, 0x74569F0B240698A7L, 0x1DF0044B4B174412L, (VECTOR(int64_t, 2))(0x74569F0B240698A7L, 0x1DF0044B4B174412L), (VECTOR(int64_t, 2))(0x74569F0B240698A7L, 0x1DF0044B4B174412L), 0x74569F0B240698A7L, 0x1DF0044B4B174412L, 0x74569F0B240698A7L, 0x1DF0044B4B174412L);
            uint8_t l_452 = 0x3AL;
            int i;
            for (i = 0; i < 7; i++)
                l_431[i] = &l_124;
            (*l_174) = (void*)0;
            l_434++;
            (*p_1083->g_453) = ((*l_174) = func_64(((((*l_424) |= l_172.y) == (safe_mod_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u((safe_add_func_int16_t_s_s((&p_58 == l_151[3]), (((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 2))(l_443.se4)).xyyxxyxyyyyyyxyx, ((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),int64_t,((VECTOR(int64_t, 16))((-1L), ((&p_1083->g_21 == ((safe_rshift_func_int16_t_s_u((safe_div_func_int64_t_s_s((p_58 = (&l_432[2] == (((VECTOR(uint32_t, 4))((-((VECTOR(uint32_t, 2))(0x3B995ED3L, 4294967295UL)).xyxy))).z , &l_432[5]))), ((safe_rshift_func_uint8_t_u_u((((l_348.s7 < (safe_sub_func_int8_t_s_s(p_59, (l_99 && (*l_428))))) != (-1L)) & 0xD6L), p_1083->g_216.y)) & p_1083->g_347.z))), GROUP_DIVERGE(2, 1))) , (void*)0)) < p_59), 0x7AE4A7000C278129L, p_58, (-1L), ((VECTOR(int64_t, 2))(0L)), 0x78EB1019DBAFBC96L, p_59, p_1083->g_116, l_172.x, ((VECTOR(int64_t, 2))(5L)), ((VECTOR(int64_t, 2))(0x3C75C63B57A14252L)), (-9L))).s9d93, (int64_t)0x3E9934F1742AA391L, (int64_t)p_59))).ywwxzywzyyyzxxxw, ((VECTOR(int64_t, 16))(0x56D6C96DC3A5EB5CL))))).hi && ((VECTOR(int64_t, 8))(0x4FC526BA69AAA38EL))))).s62 == ((VECTOR(int64_t, 2))(1L))))).yxxxxxxxyxyxyyyy || ((VECTOR(int64_t, 16))(0x1AE3CA5372DA045CL))))), ((VECTOR(int64_t, 16))(1L))))) && ((VECTOR(int64_t, 16))(0x3852912593F5DDE7L))))).s9 , (void*)0) != &l_433) || (*l_427)))), GROUP_DIVERGE(1, 1))), p_59))) != p_59), p_59, p_1083->g_60, l_452, l_360.s1, p_1083));
        }
        for (l_99 = 3; (l_99 < (-19)); l_99--)
        { /* block id: 128 */
            int32_t *l_457 = &l_261[1][1];
            (*l_457) = 0x79603360L;
        }
    }
    (*l_460) &= l_348.s6;
    for (l_125 = 0; (l_125 <= (-18)); l_125 = safe_sub_func_int64_t_s_s(l_125, 8))
    { /* block id: 135 */
        VECTOR(int32_t, 8) l_463 = (VECTOR(int32_t, 8))(0x471F62BDL, (VECTOR(int32_t, 4))(0x471F62BDL, (VECTOR(int32_t, 2))(0x471F62BDL, 0x2BE4573FL), 0x2BE4573FL), 0x2BE4573FL, 0x471F62BDL, 0x2BE4573FL);
        uint64_t *l_470 = (void*)0;
        int16_t *l_471 = (void*)0;
        int32_t l_472 = 0x0C8E0B7CL;
        int32_t **l_474[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        VECTOR(uint32_t, 4) l_494 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 6UL), 6UL);
        VECTOR(uint16_t, 16) l_506 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), 0UL), 0UL, 65535UL, 0UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), (VECTOR(uint16_t, 2))(65535UL, 0UL), 65535UL, 0UL, 65535UL, 0UL);
        uint32_t *l_507[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        VECTOR(uint16_t, 4) l_518 = (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0x2679L), 0x2679L);
        VECTOR(int64_t, 8) l_528 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x763C73FA993FB6E4L), 0x763C73FA993FB6E4L), 0x763C73FA993FB6E4L, 1L, 0x763C73FA993FB6E4L);
        uint32_t l_534 = 4294967291UL;
        uint16_t *l_535 = &l_371;
        uint8_t *l_536 = (void*)0;
        uint8_t *l_537 = (void*)0;
        uint8_t *l_538 = (void*)0;
        uint8_t *l_539 = (void*)0;
        uint8_t *l_540[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        VECTOR(uint64_t, 8) l_544 = (VECTOR(uint64_t, 8))(0x39411AE862BC9A74L, (VECTOR(uint64_t, 4))(0x39411AE862BC9A74L, (VECTOR(uint64_t, 2))(0x39411AE862BC9A74L, 0UL), 0UL), 0UL, 0x39411AE862BC9A74L, 0UL);
        int16_t *l_557 = &l_433;
        uint16_t l_574 = 0x5B09L;
        VECTOR(int32_t, 8) l_585 = (VECTOR(int32_t, 8))(0x7BB600CDL, (VECTOR(int32_t, 4))(0x7BB600CDL, (VECTOR(int32_t, 2))(0x7BB600CDL, 0x41C3E8EBL), 0x41C3E8EBL), 0x41C3E8EBL, 0x7BB600CDL, 0x41C3E8EBL);
        int i;
        (1 + 1);
    }
    p_57 = ((*p_1083->g_637) = (*p_1083->g_453));
    return (*p_1083->g_637);
}


/* ------------------------------------------ */
/* 
 * reads : p_1083->g_60
 * writes:
 */
int32_t * func_64(int64_t  p_65, int64_t  p_66, int32_t * p_67, int32_t  p_68, int32_t  p_69, struct S0 * p_1083)
{ /* block id: 8 */
    return p_1083->g_60;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1084;
    struct S0* p_1083 = &c_1084;
    struct S0 c_1085 = {
        0x57L, // p_1083->g_18
        0xC2D6L, // p_1083->g_21
        (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x4902314AF12A83A0L), // p_1083->g_24
        (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x03395465L), 0x03395465L), 0x03395465L, (-4L), 0x03395465L), // p_1083->g_33
        (void*)0, // p_1083->g_60
        (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x25C8CE6C9421085DL), 0x25C8CE6C9421085DL), 0x25C8CE6C9421085DL, 1UL, 0x25C8CE6C9421085DL, (VECTOR(uint64_t, 2))(1UL, 0x25C8CE6C9421085DL), (VECTOR(uint64_t, 2))(1UL, 0x25C8CE6C9421085DL), 1UL, 0x25C8CE6C9421085DL, 1UL, 0x25C8CE6C9421085DL), // p_1083->g_88
        0x363F8159L, // p_1083->g_98
        0x3BF9ECD5L, // p_1083->g_116
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 3L), 3L), // p_1083->g_134
        {{{0x5E5E2D9ED2249D23L,0x5E5E2D9ED2249D23L,0x5E5E2D9ED2249D23L,0x5E5E2D9ED2249D23L,0x5E5E2D9ED2249D23L,0x5E5E2D9ED2249D23L,0x5E5E2D9ED2249D23L},{0x5E5E2D9ED2249D23L,0x5E5E2D9ED2249D23L,0x5E5E2D9ED2249D23L,0x5E5E2D9ED2249D23L,0x5E5E2D9ED2249D23L,0x5E5E2D9ED2249D23L,0x5E5E2D9ED2249D23L}}}, // p_1083->g_152
        (VECTOR(int16_t, 16))(0x4F50L, (VECTOR(int16_t, 4))(0x4F50L, (VECTOR(int16_t, 2))(0x4F50L, 0x6D1FL), 0x6D1FL), 0x6D1FL, 0x4F50L, 0x6D1FL, (VECTOR(int16_t, 2))(0x4F50L, 0x6D1FL), (VECTOR(int16_t, 2))(0x4F50L, 0x6D1FL), 0x4F50L, 0x6D1FL, 0x4F50L, 0x6D1FL), // p_1083->g_168
        (VECTOR(int16_t, 8))(0x24C4L, (VECTOR(int16_t, 4))(0x24C4L, (VECTOR(int16_t, 2))(0x24C4L, 3L), 3L), 3L, 0x24C4L, 3L), // p_1083->g_169
        (VECTOR(int16_t, 4))(2L, (VECTOR(int16_t, 2))(2L, 0x5CB8L), 0x5CB8L), // p_1083->g_170
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-8L)), (-8L)), (-8L), 0L, (-8L), (VECTOR(int32_t, 2))(0L, (-8L)), (VECTOR(int32_t, 2))(0L, (-8L)), 0L, (-8L), 0L, (-8L)), // p_1083->g_186
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-3L)), (-3L)), // p_1083->g_188
        (VECTOR(int16_t, 16))(0x3A37L, (VECTOR(int16_t, 4))(0x3A37L, (VECTOR(int16_t, 2))(0x3A37L, 0L), 0L), 0L, 0x3A37L, 0L, (VECTOR(int16_t, 2))(0x3A37L, 0L), (VECTOR(int16_t, 2))(0x3A37L, 0L), 0x3A37L, 0L, 0x3A37L, 0L), // p_1083->g_190
        (VECTOR(int8_t, 16))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), 0L), 0L), 0L, (-3L), 0L, (VECTOR(int8_t, 2))((-3L), 0L), (VECTOR(int8_t, 2))((-3L), 0L), (-3L), 0L, (-3L), 0L), // p_1083->g_208
        (VECTOR(uint8_t, 2))(7UL, 3UL), // p_1083->g_211
        (VECTOR(uint8_t, 2))(0x28L, 0x95L), // p_1083->g_216
        4294967288UL, // p_1083->g_226
        (void*)0, // p_1083->g_229
        0L, // p_1083->g_246
        &p_1083->g_246, // p_1083->g_245
        0x71C998E76D836C02L, // p_1083->g_262
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int16_t, 2))(0L, 1L), (VECTOR(int16_t, 2))(0L, 1L), 0L, 1L, 0L, 1L), // p_1083->g_300
        (VECTOR(uint8_t, 16))(2UL, (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 255UL), 255UL), 255UL, 2UL, 255UL, (VECTOR(uint8_t, 2))(2UL, 255UL), (VECTOR(uint8_t, 2))(2UL, 255UL), 2UL, 255UL, 2UL, 255UL), // p_1083->g_320
        (VECTOR(uint8_t, 4))(0xD1L, (VECTOR(uint8_t, 2))(0xD1L, 255UL), 255UL), // p_1083->g_321
        {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}}, // p_1083->g_326
        (VECTOR(int32_t, 8))(0x768DE7A2L, (VECTOR(int32_t, 4))(0x768DE7A2L, (VECTOR(int32_t, 2))(0x768DE7A2L, 0x79498F9AL), 0x79498F9AL), 0x79498F9AL, 0x768DE7A2L, 0x79498F9AL), // p_1083->g_329
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x7B7AAC52L), 0x7B7AAC52L), 0x7B7AAC52L, 0L, 0x7B7AAC52L), // p_1083->g_331
        (VECTOR(int32_t, 2))(0x61A6B975L, 0x03FA884AL), // p_1083->g_334
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x272E95C9L), 0x272E95C9L), 0x272E95C9L, 0L, 0x272E95C9L), // p_1083->g_338
        (VECTOR(int32_t, 16))(0x2FBE916AL, (VECTOR(int32_t, 4))(0x2FBE916AL, (VECTOR(int32_t, 2))(0x2FBE916AL, (-4L)), (-4L)), (-4L), 0x2FBE916AL, (-4L), (VECTOR(int32_t, 2))(0x2FBE916AL, (-4L)), (VECTOR(int32_t, 2))(0x2FBE916AL, (-4L)), 0x2FBE916AL, (-4L), 0x2FBE916AL, (-4L)), // p_1083->g_339
        (VECTOR(int32_t, 2))(0x2D622B2BL, 0x7D7588A9L), // p_1083->g_342
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x5E2743C9L), 0x5E2743C9L), // p_1083->g_343
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), // p_1083->g_344
        (VECTOR(int32_t, 16))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x558151DAL), 0x558151DAL), 0x558151DAL, 4L, 0x558151DAL, (VECTOR(int32_t, 2))(4L, 0x558151DAL), (VECTOR(int32_t, 2))(4L, 0x558151DAL), 4L, 0x558151DAL, 4L, 0x558151DAL), // p_1083->g_346
        (VECTOR(int32_t, 4))(0x51FF4C36L, (VECTOR(int32_t, 2))(0x51FF4C36L, 0x258A45E1L), 0x258A45E1L), // p_1083->g_347
        (VECTOR(int32_t, 4))(0x3644F2DEL, (VECTOR(int32_t, 2))(0x3644F2DEL, (-1L)), (-1L)), // p_1083->g_349
        (VECTOR(int8_t, 8))(0x1AL, (VECTOR(int8_t, 4))(0x1AL, (VECTOR(int8_t, 2))(0x1AL, 0x58L), 0x58L), 0x58L, 0x1AL, 0x58L), // p_1083->g_356
        (VECTOR(int8_t, 8))(0x44L, (VECTOR(int8_t, 4))(0x44L, (VECTOR(int8_t, 2))(0x44L, (-10L)), (-10L)), (-10L), 0x44L, (-10L)), // p_1083->g_357
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-2L)), (-2L)), // p_1083->g_358
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-3L)), (-3L)), // p_1083->g_363
        {0x14B76B97F644E1A3L,0x14B76B97F644E1A3L,0x14B76B97F644E1A3L,0x14B76B97F644E1A3L,0x14B76B97F644E1A3L,0x14B76B97F644E1A3L,0x14B76B97F644E1A3L,0x14B76B97F644E1A3L}, // p_1083->g_377
        (VECTOR(int32_t, 2))(0L, 4L), // p_1083->g_387
        (VECTOR(int32_t, 8))(0x3BCF01B0L, (VECTOR(int32_t, 4))(0x3BCF01B0L, (VECTOR(int32_t, 2))(0x3BCF01B0L, (-1L)), (-1L)), (-1L), 0x3BCF01B0L, (-1L)), // p_1083->g_388
        (-1L), // p_1083->g_404
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL), // p_1083->g_422
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1083->g_454
        &p_1083->g_454[0], // p_1083->g_453
        (void*)0, // p_1083->g_458
        (void*)0, // p_1083->g_459
        (VECTOR(uint32_t, 4))(4294967289UL, (VECTOR(uint32_t, 2))(4294967289UL, 0x46B21326L), 0x46B21326L), // p_1083->g_488
        (VECTOR(uint16_t, 16))(0x0561L, (VECTOR(uint16_t, 4))(0x0561L, (VECTOR(uint16_t, 2))(0x0561L, 0x960FL), 0x960FL), 0x960FL, 0x0561L, 0x960FL, (VECTOR(uint16_t, 2))(0x0561L, 0x960FL), (VECTOR(uint16_t, 2))(0x0561L, 0x960FL), 0x0561L, 0x960FL, 0x0561L, 0x960FL), // p_1083->g_493
        (VECTOR(uint16_t, 16))(0x4529L, (VECTOR(uint16_t, 4))(0x4529L, (VECTOR(uint16_t, 2))(0x4529L, 0x91C2L), 0x91C2L), 0x91C2L, 0x4529L, 0x91C2L, (VECTOR(uint16_t, 2))(0x4529L, 0x91C2L), (VECTOR(uint16_t, 2))(0x4529L, 0x91C2L), 0x4529L, 0x91C2L, 0x4529L, 0x91C2L), // p_1083->g_510
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65535UL), 65535UL), 65535UL, 65535UL, 65535UL, (VECTOR(uint16_t, 2))(65535UL, 65535UL), (VECTOR(uint16_t, 2))(65535UL, 65535UL), 65535UL, 65535UL, 65535UL, 65535UL), // p_1083->g_520
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x057AL), 0x057AL), // p_1083->g_523
        (-4L), // p_1083->g_533
        &p_1083->g_533, // p_1083->g_532
        (VECTOR(int16_t, 4))(0x5FDDL, (VECTOR(int16_t, 2))(0x5FDDL, 0x4FA0L), 0x4FA0L), // p_1083->g_553
        5L, // p_1083->g_560
        (VECTOR(int32_t, 4))(0x6B7CB82FL, (VECTOR(int32_t, 2))(0x6B7CB82FL, 0x78728D48L), 0x78728D48L), // p_1083->g_584
        (VECTOR(int32_t, 4))(0x3586080AL, (VECTOR(int32_t, 2))(0x3586080AL, 0x3A3D6B95L), 0x3A3D6B95L), // p_1083->g_595
        (VECTOR(uint8_t, 2))(1UL, 1UL), // p_1083->g_611
        0xCCL, // p_1083->g_614
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 1L), 1L), // p_1083->g_621
        (VECTOR(int16_t, 8))(0x580AL, (VECTOR(int16_t, 4))(0x580AL, (VECTOR(int16_t, 2))(0x580AL, 0x04ACL), 0x04ACL), 0x04ACL, 0x580AL, 0x04ACL), // p_1083->g_622
        (VECTOR(int16_t, 2))((-1L), (-1L)), // p_1083->g_623
        (VECTOR(int16_t, 4))(0x29FCL, (VECTOR(int16_t, 2))(0x29FCL, 0x49A9L), 0x49A9L), // p_1083->g_624
        (VECTOR(int16_t, 8))(0x0CF7L, (VECTOR(int16_t, 4))(0x0CF7L, (VECTOR(int16_t, 2))(0x0CF7L, 0L), 0L), 0L, 0x0CF7L, 0L), // p_1083->g_627
        &p_1083->g_454[0], // p_1083->g_637
        &p_1083->g_262, // p_1083->g_654
        &p_1083->g_654, // p_1083->g_653
        (VECTOR(int8_t, 2))(4L, 0x79L), // p_1083->g_660
        1L, // p_1083->g_662
        &p_1083->g_560, // p_1083->g_734
        (VECTOR(uint16_t, 8))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 65535UL), 65535UL), 65535UL, 9UL, 65535UL), // p_1083->g_735
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x585F5C3044A40841L), 0x585F5C3044A40841L), // p_1083->g_736
        (VECTOR(int64_t, 4))(0x3D452D973197BBFAL, (VECTOR(int64_t, 2))(0x3D452D973197BBFAL, 0L), 0L), // p_1083->g_739
        (VECTOR(uint64_t, 8))(18446744073709551609UL, (VECTOR(uint64_t, 4))(18446744073709551609UL, (VECTOR(uint64_t, 2))(18446744073709551609UL, 0x54246E77E49CF315L), 0x54246E77E49CF315L), 0x54246E77E49CF315L, 18446744073709551609UL, 0x54246E77E49CF315L), // p_1083->g_754
        (VECTOR(int32_t, 2))(0x6072E249L, 0x7EDC9711L), // p_1083->g_764
        0x2661B074L, // p_1083->g_769
        (void*)0, // p_1083->g_784
        &p_1083->g_662, // p_1083->g_785
        {(void*)0}, // p_1083->g_792
        (VECTOR(uint32_t, 8))(0x768C57A9L, (VECTOR(uint32_t, 4))(0x768C57A9L, (VECTOR(uint32_t, 2))(0x768C57A9L, 0UL), 0UL), 0UL, 0x768C57A9L, 0UL), // p_1083->g_801
        (VECTOR(int16_t, 16))(4L, (VECTOR(int16_t, 4))(4L, (VECTOR(int16_t, 2))(4L, (-6L)), (-6L)), (-6L), 4L, (-6L), (VECTOR(int16_t, 2))(4L, (-6L)), (VECTOR(int16_t, 2))(4L, (-6L)), 4L, (-6L), 4L, (-6L)), // p_1083->g_847
        (VECTOR(int8_t, 16))(0x79L, (VECTOR(int8_t, 4))(0x79L, (VECTOR(int8_t, 2))(0x79L, 0L), 0L), 0L, 0x79L, 0L, (VECTOR(int8_t, 2))(0x79L, 0L), (VECTOR(int8_t, 2))(0x79L, 0L), 0x79L, 0L, 0x79L, 0L), // p_1083->g_857
        (VECTOR(int8_t, 16))(0x79L, (VECTOR(int8_t, 4))(0x79L, (VECTOR(int8_t, 2))(0x79L, (-3L)), (-3L)), (-3L), 0x79L, (-3L), (VECTOR(int8_t, 2))(0x79L, (-3L)), (VECTOR(int8_t, 2))(0x79L, (-3L)), 0x79L, (-3L), 0x79L, (-3L)), // p_1083->g_858
        {0x09L,0x09L,0x09L,0x09L}, // p_1083->g_911
        0x35D1ABB7L, // p_1083->g_942
        (VECTOR(uint64_t, 16))(0xB028E06D4B592322L, (VECTOR(uint64_t, 4))(0xB028E06D4B592322L, (VECTOR(uint64_t, 2))(0xB028E06D4B592322L, 0x72AEF6BED274C2B9L), 0x72AEF6BED274C2B9L), 0x72AEF6BED274C2B9L, 0xB028E06D4B592322L, 0x72AEF6BED274C2B9L, (VECTOR(uint64_t, 2))(0xB028E06D4B592322L, 0x72AEF6BED274C2B9L), (VECTOR(uint64_t, 2))(0xB028E06D4B592322L, 0x72AEF6BED274C2B9L), 0xB028E06D4B592322L, 0x72AEF6BED274C2B9L, 0xB028E06D4B592322L, 0x72AEF6BED274C2B9L), // p_1083->g_945
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x6414L), 0x6414L), 0x6414L, (-1L), 0x6414L, (VECTOR(int16_t, 2))((-1L), 0x6414L), (VECTOR(int16_t, 2))((-1L), 0x6414L), (-1L), 0x6414L, (-1L), 0x6414L), // p_1083->g_959
        (VECTOR(int16_t, 16))((-6L), (VECTOR(int16_t, 4))((-6L), (VECTOR(int16_t, 2))((-6L), 0x00BBL), 0x00BBL), 0x00BBL, (-6L), 0x00BBL, (VECTOR(int16_t, 2))((-6L), 0x00BBL), (VECTOR(int16_t, 2))((-6L), 0x00BBL), (-6L), 0x00BBL, (-6L), 0x00BBL), // p_1083->g_962
        (VECTOR(int64_t, 4))(0x4D3D524578F22800L, (VECTOR(int64_t, 2))(0x4D3D524578F22800L, 1L), 1L), // p_1083->g_980
        (VECTOR(int64_t, 4))(0x2F43877D9F8B4EC2L, (VECTOR(int64_t, 2))(0x2F43877D9F8B4EC2L, 1L), 1L), // p_1083->g_983
        (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, (-1L)), (-1L)), // p_1083->g_992
        (VECTOR(int16_t, 16))(0x4C67L, (VECTOR(int16_t, 4))(0x4C67L, (VECTOR(int16_t, 2))(0x4C67L, 2L), 2L), 2L, 0x4C67L, 2L, (VECTOR(int16_t, 2))(0x4C67L, 2L), (VECTOR(int16_t, 2))(0x4C67L, 2L), 0x4C67L, 2L, 0x4C67L, 2L), // p_1083->g_993
        (VECTOR(uint64_t, 4))(0x5B37F6D90FABAE31L, (VECTOR(uint64_t, 2))(0x5B37F6D90FABAE31L, 1UL), 1UL), // p_1083->g_1009
        (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x6B470F1CBF74E759L), 0x6B470F1CBF74E759L), // p_1083->g_1010
        (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0L), 0L), // p_1083->g_1023
        0x7A6AL, // p_1083->g_1032
        0xCE36L, // p_1083->g_1036
        &p_1083->g_1036, // p_1083->g_1035
        &p_1083->g_1035, // p_1083->g_1034
        (VECTOR(int16_t, 8))(0x719BL, (VECTOR(int16_t, 4))(0x719BL, (VECTOR(int16_t, 2))(0x719BL, (-4L)), (-4L)), (-4L), 0x719BL, (-4L)), // p_1083->g_1043
        (VECTOR(uint16_t, 2))(0x81B8L, 0xA5CEL), // p_1083->g_1048
        (VECTOR(int16_t, 16))((-4L), (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0x447CL), 0x447CL), 0x447CL, (-4L), 0x447CL, (VECTOR(int16_t, 2))((-4L), 0x447CL), (VECTOR(int16_t, 2))((-4L), 0x447CL), (-4L), 0x447CL, (-4L), 0x447CL), // p_1083->g_1051
        sequence_input[get_global_id(0)], // p_1083->global_0_offset
        sequence_input[get_global_id(1)], // p_1083->global_1_offset
        sequence_input[get_global_id(2)], // p_1083->global_2_offset
        sequence_input[get_local_id(0)], // p_1083->local_0_offset
        sequence_input[get_local_id(1)], // p_1083->local_1_offset
        sequence_input[get_local_id(2)], // p_1083->local_2_offset
        sequence_input[get_group_id(0)], // p_1083->group_0_offset
        sequence_input[get_group_id(1)], // p_1083->group_1_offset
        sequence_input[get_group_id(2)], // p_1083->group_2_offset
    };
    c_1084 = c_1085;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1083);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1083->g_18, "p_1083->g_18", print_hash_value);
    transparent_crc(p_1083->g_21, "p_1083->g_21", print_hash_value);
    transparent_crc(p_1083->g_24.x, "p_1083->g_24.x", print_hash_value);
    transparent_crc(p_1083->g_24.y, "p_1083->g_24.y", print_hash_value);
    transparent_crc(p_1083->g_33.s0, "p_1083->g_33.s0", print_hash_value);
    transparent_crc(p_1083->g_33.s1, "p_1083->g_33.s1", print_hash_value);
    transparent_crc(p_1083->g_33.s2, "p_1083->g_33.s2", print_hash_value);
    transparent_crc(p_1083->g_33.s3, "p_1083->g_33.s3", print_hash_value);
    transparent_crc(p_1083->g_33.s4, "p_1083->g_33.s4", print_hash_value);
    transparent_crc(p_1083->g_33.s5, "p_1083->g_33.s5", print_hash_value);
    transparent_crc(p_1083->g_33.s6, "p_1083->g_33.s6", print_hash_value);
    transparent_crc(p_1083->g_33.s7, "p_1083->g_33.s7", print_hash_value);
    transparent_crc(p_1083->g_88.s0, "p_1083->g_88.s0", print_hash_value);
    transparent_crc(p_1083->g_88.s1, "p_1083->g_88.s1", print_hash_value);
    transparent_crc(p_1083->g_88.s2, "p_1083->g_88.s2", print_hash_value);
    transparent_crc(p_1083->g_88.s3, "p_1083->g_88.s3", print_hash_value);
    transparent_crc(p_1083->g_88.s4, "p_1083->g_88.s4", print_hash_value);
    transparent_crc(p_1083->g_88.s5, "p_1083->g_88.s5", print_hash_value);
    transparent_crc(p_1083->g_88.s6, "p_1083->g_88.s6", print_hash_value);
    transparent_crc(p_1083->g_88.s7, "p_1083->g_88.s7", print_hash_value);
    transparent_crc(p_1083->g_88.s8, "p_1083->g_88.s8", print_hash_value);
    transparent_crc(p_1083->g_88.s9, "p_1083->g_88.s9", print_hash_value);
    transparent_crc(p_1083->g_88.sa, "p_1083->g_88.sa", print_hash_value);
    transparent_crc(p_1083->g_88.sb, "p_1083->g_88.sb", print_hash_value);
    transparent_crc(p_1083->g_88.sc, "p_1083->g_88.sc", print_hash_value);
    transparent_crc(p_1083->g_88.sd, "p_1083->g_88.sd", print_hash_value);
    transparent_crc(p_1083->g_88.se, "p_1083->g_88.se", print_hash_value);
    transparent_crc(p_1083->g_88.sf, "p_1083->g_88.sf", print_hash_value);
    transparent_crc(p_1083->g_98, "p_1083->g_98", print_hash_value);
    transparent_crc(p_1083->g_116, "p_1083->g_116", print_hash_value);
    transparent_crc(p_1083->g_134.x, "p_1083->g_134.x", print_hash_value);
    transparent_crc(p_1083->g_134.y, "p_1083->g_134.y", print_hash_value);
    transparent_crc(p_1083->g_134.z, "p_1083->g_134.z", print_hash_value);
    transparent_crc(p_1083->g_134.w, "p_1083->g_134.w", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1083->g_152[i][j][k], "p_1083->g_152[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1083->g_168.s0, "p_1083->g_168.s0", print_hash_value);
    transparent_crc(p_1083->g_168.s1, "p_1083->g_168.s1", print_hash_value);
    transparent_crc(p_1083->g_168.s2, "p_1083->g_168.s2", print_hash_value);
    transparent_crc(p_1083->g_168.s3, "p_1083->g_168.s3", print_hash_value);
    transparent_crc(p_1083->g_168.s4, "p_1083->g_168.s4", print_hash_value);
    transparent_crc(p_1083->g_168.s5, "p_1083->g_168.s5", print_hash_value);
    transparent_crc(p_1083->g_168.s6, "p_1083->g_168.s6", print_hash_value);
    transparent_crc(p_1083->g_168.s7, "p_1083->g_168.s7", print_hash_value);
    transparent_crc(p_1083->g_168.s8, "p_1083->g_168.s8", print_hash_value);
    transparent_crc(p_1083->g_168.s9, "p_1083->g_168.s9", print_hash_value);
    transparent_crc(p_1083->g_168.sa, "p_1083->g_168.sa", print_hash_value);
    transparent_crc(p_1083->g_168.sb, "p_1083->g_168.sb", print_hash_value);
    transparent_crc(p_1083->g_168.sc, "p_1083->g_168.sc", print_hash_value);
    transparent_crc(p_1083->g_168.sd, "p_1083->g_168.sd", print_hash_value);
    transparent_crc(p_1083->g_168.se, "p_1083->g_168.se", print_hash_value);
    transparent_crc(p_1083->g_168.sf, "p_1083->g_168.sf", print_hash_value);
    transparent_crc(p_1083->g_169.s0, "p_1083->g_169.s0", print_hash_value);
    transparent_crc(p_1083->g_169.s1, "p_1083->g_169.s1", print_hash_value);
    transparent_crc(p_1083->g_169.s2, "p_1083->g_169.s2", print_hash_value);
    transparent_crc(p_1083->g_169.s3, "p_1083->g_169.s3", print_hash_value);
    transparent_crc(p_1083->g_169.s4, "p_1083->g_169.s4", print_hash_value);
    transparent_crc(p_1083->g_169.s5, "p_1083->g_169.s5", print_hash_value);
    transparent_crc(p_1083->g_169.s6, "p_1083->g_169.s6", print_hash_value);
    transparent_crc(p_1083->g_169.s7, "p_1083->g_169.s7", print_hash_value);
    transparent_crc(p_1083->g_170.x, "p_1083->g_170.x", print_hash_value);
    transparent_crc(p_1083->g_170.y, "p_1083->g_170.y", print_hash_value);
    transparent_crc(p_1083->g_170.z, "p_1083->g_170.z", print_hash_value);
    transparent_crc(p_1083->g_170.w, "p_1083->g_170.w", print_hash_value);
    transparent_crc(p_1083->g_186.s0, "p_1083->g_186.s0", print_hash_value);
    transparent_crc(p_1083->g_186.s1, "p_1083->g_186.s1", print_hash_value);
    transparent_crc(p_1083->g_186.s2, "p_1083->g_186.s2", print_hash_value);
    transparent_crc(p_1083->g_186.s3, "p_1083->g_186.s3", print_hash_value);
    transparent_crc(p_1083->g_186.s4, "p_1083->g_186.s4", print_hash_value);
    transparent_crc(p_1083->g_186.s5, "p_1083->g_186.s5", print_hash_value);
    transparent_crc(p_1083->g_186.s6, "p_1083->g_186.s6", print_hash_value);
    transparent_crc(p_1083->g_186.s7, "p_1083->g_186.s7", print_hash_value);
    transparent_crc(p_1083->g_186.s8, "p_1083->g_186.s8", print_hash_value);
    transparent_crc(p_1083->g_186.s9, "p_1083->g_186.s9", print_hash_value);
    transparent_crc(p_1083->g_186.sa, "p_1083->g_186.sa", print_hash_value);
    transparent_crc(p_1083->g_186.sb, "p_1083->g_186.sb", print_hash_value);
    transparent_crc(p_1083->g_186.sc, "p_1083->g_186.sc", print_hash_value);
    transparent_crc(p_1083->g_186.sd, "p_1083->g_186.sd", print_hash_value);
    transparent_crc(p_1083->g_186.se, "p_1083->g_186.se", print_hash_value);
    transparent_crc(p_1083->g_186.sf, "p_1083->g_186.sf", print_hash_value);
    transparent_crc(p_1083->g_188.x, "p_1083->g_188.x", print_hash_value);
    transparent_crc(p_1083->g_188.y, "p_1083->g_188.y", print_hash_value);
    transparent_crc(p_1083->g_188.z, "p_1083->g_188.z", print_hash_value);
    transparent_crc(p_1083->g_188.w, "p_1083->g_188.w", print_hash_value);
    transparent_crc(p_1083->g_190.s0, "p_1083->g_190.s0", print_hash_value);
    transparent_crc(p_1083->g_190.s1, "p_1083->g_190.s1", print_hash_value);
    transparent_crc(p_1083->g_190.s2, "p_1083->g_190.s2", print_hash_value);
    transparent_crc(p_1083->g_190.s3, "p_1083->g_190.s3", print_hash_value);
    transparent_crc(p_1083->g_190.s4, "p_1083->g_190.s4", print_hash_value);
    transparent_crc(p_1083->g_190.s5, "p_1083->g_190.s5", print_hash_value);
    transparent_crc(p_1083->g_190.s6, "p_1083->g_190.s6", print_hash_value);
    transparent_crc(p_1083->g_190.s7, "p_1083->g_190.s7", print_hash_value);
    transparent_crc(p_1083->g_190.s8, "p_1083->g_190.s8", print_hash_value);
    transparent_crc(p_1083->g_190.s9, "p_1083->g_190.s9", print_hash_value);
    transparent_crc(p_1083->g_190.sa, "p_1083->g_190.sa", print_hash_value);
    transparent_crc(p_1083->g_190.sb, "p_1083->g_190.sb", print_hash_value);
    transparent_crc(p_1083->g_190.sc, "p_1083->g_190.sc", print_hash_value);
    transparent_crc(p_1083->g_190.sd, "p_1083->g_190.sd", print_hash_value);
    transparent_crc(p_1083->g_190.se, "p_1083->g_190.se", print_hash_value);
    transparent_crc(p_1083->g_190.sf, "p_1083->g_190.sf", print_hash_value);
    transparent_crc(p_1083->g_208.s0, "p_1083->g_208.s0", print_hash_value);
    transparent_crc(p_1083->g_208.s1, "p_1083->g_208.s1", print_hash_value);
    transparent_crc(p_1083->g_208.s2, "p_1083->g_208.s2", print_hash_value);
    transparent_crc(p_1083->g_208.s3, "p_1083->g_208.s3", print_hash_value);
    transparent_crc(p_1083->g_208.s4, "p_1083->g_208.s4", print_hash_value);
    transparent_crc(p_1083->g_208.s5, "p_1083->g_208.s5", print_hash_value);
    transparent_crc(p_1083->g_208.s6, "p_1083->g_208.s6", print_hash_value);
    transparent_crc(p_1083->g_208.s7, "p_1083->g_208.s7", print_hash_value);
    transparent_crc(p_1083->g_208.s8, "p_1083->g_208.s8", print_hash_value);
    transparent_crc(p_1083->g_208.s9, "p_1083->g_208.s9", print_hash_value);
    transparent_crc(p_1083->g_208.sa, "p_1083->g_208.sa", print_hash_value);
    transparent_crc(p_1083->g_208.sb, "p_1083->g_208.sb", print_hash_value);
    transparent_crc(p_1083->g_208.sc, "p_1083->g_208.sc", print_hash_value);
    transparent_crc(p_1083->g_208.sd, "p_1083->g_208.sd", print_hash_value);
    transparent_crc(p_1083->g_208.se, "p_1083->g_208.se", print_hash_value);
    transparent_crc(p_1083->g_208.sf, "p_1083->g_208.sf", print_hash_value);
    transparent_crc(p_1083->g_211.x, "p_1083->g_211.x", print_hash_value);
    transparent_crc(p_1083->g_211.y, "p_1083->g_211.y", print_hash_value);
    transparent_crc(p_1083->g_216.x, "p_1083->g_216.x", print_hash_value);
    transparent_crc(p_1083->g_216.y, "p_1083->g_216.y", print_hash_value);
    transparent_crc(p_1083->g_226, "p_1083->g_226", print_hash_value);
    transparent_crc(p_1083->g_246, "p_1083->g_246", print_hash_value);
    transparent_crc(p_1083->g_262, "p_1083->g_262", print_hash_value);
    transparent_crc(p_1083->g_300.s0, "p_1083->g_300.s0", print_hash_value);
    transparent_crc(p_1083->g_300.s1, "p_1083->g_300.s1", print_hash_value);
    transparent_crc(p_1083->g_300.s2, "p_1083->g_300.s2", print_hash_value);
    transparent_crc(p_1083->g_300.s3, "p_1083->g_300.s3", print_hash_value);
    transparent_crc(p_1083->g_300.s4, "p_1083->g_300.s4", print_hash_value);
    transparent_crc(p_1083->g_300.s5, "p_1083->g_300.s5", print_hash_value);
    transparent_crc(p_1083->g_300.s6, "p_1083->g_300.s6", print_hash_value);
    transparent_crc(p_1083->g_300.s7, "p_1083->g_300.s7", print_hash_value);
    transparent_crc(p_1083->g_300.s8, "p_1083->g_300.s8", print_hash_value);
    transparent_crc(p_1083->g_300.s9, "p_1083->g_300.s9", print_hash_value);
    transparent_crc(p_1083->g_300.sa, "p_1083->g_300.sa", print_hash_value);
    transparent_crc(p_1083->g_300.sb, "p_1083->g_300.sb", print_hash_value);
    transparent_crc(p_1083->g_300.sc, "p_1083->g_300.sc", print_hash_value);
    transparent_crc(p_1083->g_300.sd, "p_1083->g_300.sd", print_hash_value);
    transparent_crc(p_1083->g_300.se, "p_1083->g_300.se", print_hash_value);
    transparent_crc(p_1083->g_300.sf, "p_1083->g_300.sf", print_hash_value);
    transparent_crc(p_1083->g_320.s0, "p_1083->g_320.s0", print_hash_value);
    transparent_crc(p_1083->g_320.s1, "p_1083->g_320.s1", print_hash_value);
    transparent_crc(p_1083->g_320.s2, "p_1083->g_320.s2", print_hash_value);
    transparent_crc(p_1083->g_320.s3, "p_1083->g_320.s3", print_hash_value);
    transparent_crc(p_1083->g_320.s4, "p_1083->g_320.s4", print_hash_value);
    transparent_crc(p_1083->g_320.s5, "p_1083->g_320.s5", print_hash_value);
    transparent_crc(p_1083->g_320.s6, "p_1083->g_320.s6", print_hash_value);
    transparent_crc(p_1083->g_320.s7, "p_1083->g_320.s7", print_hash_value);
    transparent_crc(p_1083->g_320.s8, "p_1083->g_320.s8", print_hash_value);
    transparent_crc(p_1083->g_320.s9, "p_1083->g_320.s9", print_hash_value);
    transparent_crc(p_1083->g_320.sa, "p_1083->g_320.sa", print_hash_value);
    transparent_crc(p_1083->g_320.sb, "p_1083->g_320.sb", print_hash_value);
    transparent_crc(p_1083->g_320.sc, "p_1083->g_320.sc", print_hash_value);
    transparent_crc(p_1083->g_320.sd, "p_1083->g_320.sd", print_hash_value);
    transparent_crc(p_1083->g_320.se, "p_1083->g_320.se", print_hash_value);
    transparent_crc(p_1083->g_320.sf, "p_1083->g_320.sf", print_hash_value);
    transparent_crc(p_1083->g_321.x, "p_1083->g_321.x", print_hash_value);
    transparent_crc(p_1083->g_321.y, "p_1083->g_321.y", print_hash_value);
    transparent_crc(p_1083->g_321.z, "p_1083->g_321.z", print_hash_value);
    transparent_crc(p_1083->g_321.w, "p_1083->g_321.w", print_hash_value);
    transparent_crc(p_1083->g_329.s0, "p_1083->g_329.s0", print_hash_value);
    transparent_crc(p_1083->g_329.s1, "p_1083->g_329.s1", print_hash_value);
    transparent_crc(p_1083->g_329.s2, "p_1083->g_329.s2", print_hash_value);
    transparent_crc(p_1083->g_329.s3, "p_1083->g_329.s3", print_hash_value);
    transparent_crc(p_1083->g_329.s4, "p_1083->g_329.s4", print_hash_value);
    transparent_crc(p_1083->g_329.s5, "p_1083->g_329.s5", print_hash_value);
    transparent_crc(p_1083->g_329.s6, "p_1083->g_329.s6", print_hash_value);
    transparent_crc(p_1083->g_329.s7, "p_1083->g_329.s7", print_hash_value);
    transparent_crc(p_1083->g_331.s0, "p_1083->g_331.s0", print_hash_value);
    transparent_crc(p_1083->g_331.s1, "p_1083->g_331.s1", print_hash_value);
    transparent_crc(p_1083->g_331.s2, "p_1083->g_331.s2", print_hash_value);
    transparent_crc(p_1083->g_331.s3, "p_1083->g_331.s3", print_hash_value);
    transparent_crc(p_1083->g_331.s4, "p_1083->g_331.s4", print_hash_value);
    transparent_crc(p_1083->g_331.s5, "p_1083->g_331.s5", print_hash_value);
    transparent_crc(p_1083->g_331.s6, "p_1083->g_331.s6", print_hash_value);
    transparent_crc(p_1083->g_331.s7, "p_1083->g_331.s7", print_hash_value);
    transparent_crc(p_1083->g_334.x, "p_1083->g_334.x", print_hash_value);
    transparent_crc(p_1083->g_334.y, "p_1083->g_334.y", print_hash_value);
    transparent_crc(p_1083->g_338.s0, "p_1083->g_338.s0", print_hash_value);
    transparent_crc(p_1083->g_338.s1, "p_1083->g_338.s1", print_hash_value);
    transparent_crc(p_1083->g_338.s2, "p_1083->g_338.s2", print_hash_value);
    transparent_crc(p_1083->g_338.s3, "p_1083->g_338.s3", print_hash_value);
    transparent_crc(p_1083->g_338.s4, "p_1083->g_338.s4", print_hash_value);
    transparent_crc(p_1083->g_338.s5, "p_1083->g_338.s5", print_hash_value);
    transparent_crc(p_1083->g_338.s6, "p_1083->g_338.s6", print_hash_value);
    transparent_crc(p_1083->g_338.s7, "p_1083->g_338.s7", print_hash_value);
    transparent_crc(p_1083->g_339.s0, "p_1083->g_339.s0", print_hash_value);
    transparent_crc(p_1083->g_339.s1, "p_1083->g_339.s1", print_hash_value);
    transparent_crc(p_1083->g_339.s2, "p_1083->g_339.s2", print_hash_value);
    transparent_crc(p_1083->g_339.s3, "p_1083->g_339.s3", print_hash_value);
    transparent_crc(p_1083->g_339.s4, "p_1083->g_339.s4", print_hash_value);
    transparent_crc(p_1083->g_339.s5, "p_1083->g_339.s5", print_hash_value);
    transparent_crc(p_1083->g_339.s6, "p_1083->g_339.s6", print_hash_value);
    transparent_crc(p_1083->g_339.s7, "p_1083->g_339.s7", print_hash_value);
    transparent_crc(p_1083->g_339.s8, "p_1083->g_339.s8", print_hash_value);
    transparent_crc(p_1083->g_339.s9, "p_1083->g_339.s9", print_hash_value);
    transparent_crc(p_1083->g_339.sa, "p_1083->g_339.sa", print_hash_value);
    transparent_crc(p_1083->g_339.sb, "p_1083->g_339.sb", print_hash_value);
    transparent_crc(p_1083->g_339.sc, "p_1083->g_339.sc", print_hash_value);
    transparent_crc(p_1083->g_339.sd, "p_1083->g_339.sd", print_hash_value);
    transparent_crc(p_1083->g_339.se, "p_1083->g_339.se", print_hash_value);
    transparent_crc(p_1083->g_339.sf, "p_1083->g_339.sf", print_hash_value);
    transparent_crc(p_1083->g_342.x, "p_1083->g_342.x", print_hash_value);
    transparent_crc(p_1083->g_342.y, "p_1083->g_342.y", print_hash_value);
    transparent_crc(p_1083->g_343.x, "p_1083->g_343.x", print_hash_value);
    transparent_crc(p_1083->g_343.y, "p_1083->g_343.y", print_hash_value);
    transparent_crc(p_1083->g_343.z, "p_1083->g_343.z", print_hash_value);
    transparent_crc(p_1083->g_343.w, "p_1083->g_343.w", print_hash_value);
    transparent_crc(p_1083->g_344.x, "p_1083->g_344.x", print_hash_value);
    transparent_crc(p_1083->g_344.y, "p_1083->g_344.y", print_hash_value);
    transparent_crc(p_1083->g_344.z, "p_1083->g_344.z", print_hash_value);
    transparent_crc(p_1083->g_344.w, "p_1083->g_344.w", print_hash_value);
    transparent_crc(p_1083->g_346.s0, "p_1083->g_346.s0", print_hash_value);
    transparent_crc(p_1083->g_346.s1, "p_1083->g_346.s1", print_hash_value);
    transparent_crc(p_1083->g_346.s2, "p_1083->g_346.s2", print_hash_value);
    transparent_crc(p_1083->g_346.s3, "p_1083->g_346.s3", print_hash_value);
    transparent_crc(p_1083->g_346.s4, "p_1083->g_346.s4", print_hash_value);
    transparent_crc(p_1083->g_346.s5, "p_1083->g_346.s5", print_hash_value);
    transparent_crc(p_1083->g_346.s6, "p_1083->g_346.s6", print_hash_value);
    transparent_crc(p_1083->g_346.s7, "p_1083->g_346.s7", print_hash_value);
    transparent_crc(p_1083->g_346.s8, "p_1083->g_346.s8", print_hash_value);
    transparent_crc(p_1083->g_346.s9, "p_1083->g_346.s9", print_hash_value);
    transparent_crc(p_1083->g_346.sa, "p_1083->g_346.sa", print_hash_value);
    transparent_crc(p_1083->g_346.sb, "p_1083->g_346.sb", print_hash_value);
    transparent_crc(p_1083->g_346.sc, "p_1083->g_346.sc", print_hash_value);
    transparent_crc(p_1083->g_346.sd, "p_1083->g_346.sd", print_hash_value);
    transparent_crc(p_1083->g_346.se, "p_1083->g_346.se", print_hash_value);
    transparent_crc(p_1083->g_346.sf, "p_1083->g_346.sf", print_hash_value);
    transparent_crc(p_1083->g_347.x, "p_1083->g_347.x", print_hash_value);
    transparent_crc(p_1083->g_347.y, "p_1083->g_347.y", print_hash_value);
    transparent_crc(p_1083->g_347.z, "p_1083->g_347.z", print_hash_value);
    transparent_crc(p_1083->g_347.w, "p_1083->g_347.w", print_hash_value);
    transparent_crc(p_1083->g_349.x, "p_1083->g_349.x", print_hash_value);
    transparent_crc(p_1083->g_349.y, "p_1083->g_349.y", print_hash_value);
    transparent_crc(p_1083->g_349.z, "p_1083->g_349.z", print_hash_value);
    transparent_crc(p_1083->g_349.w, "p_1083->g_349.w", print_hash_value);
    transparent_crc(p_1083->g_356.s0, "p_1083->g_356.s0", print_hash_value);
    transparent_crc(p_1083->g_356.s1, "p_1083->g_356.s1", print_hash_value);
    transparent_crc(p_1083->g_356.s2, "p_1083->g_356.s2", print_hash_value);
    transparent_crc(p_1083->g_356.s3, "p_1083->g_356.s3", print_hash_value);
    transparent_crc(p_1083->g_356.s4, "p_1083->g_356.s4", print_hash_value);
    transparent_crc(p_1083->g_356.s5, "p_1083->g_356.s5", print_hash_value);
    transparent_crc(p_1083->g_356.s6, "p_1083->g_356.s6", print_hash_value);
    transparent_crc(p_1083->g_356.s7, "p_1083->g_356.s7", print_hash_value);
    transparent_crc(p_1083->g_357.s0, "p_1083->g_357.s0", print_hash_value);
    transparent_crc(p_1083->g_357.s1, "p_1083->g_357.s1", print_hash_value);
    transparent_crc(p_1083->g_357.s2, "p_1083->g_357.s2", print_hash_value);
    transparent_crc(p_1083->g_357.s3, "p_1083->g_357.s3", print_hash_value);
    transparent_crc(p_1083->g_357.s4, "p_1083->g_357.s4", print_hash_value);
    transparent_crc(p_1083->g_357.s5, "p_1083->g_357.s5", print_hash_value);
    transparent_crc(p_1083->g_357.s6, "p_1083->g_357.s6", print_hash_value);
    transparent_crc(p_1083->g_357.s7, "p_1083->g_357.s7", print_hash_value);
    transparent_crc(p_1083->g_358.x, "p_1083->g_358.x", print_hash_value);
    transparent_crc(p_1083->g_358.y, "p_1083->g_358.y", print_hash_value);
    transparent_crc(p_1083->g_358.z, "p_1083->g_358.z", print_hash_value);
    transparent_crc(p_1083->g_358.w, "p_1083->g_358.w", print_hash_value);
    transparent_crc(p_1083->g_363.x, "p_1083->g_363.x", print_hash_value);
    transparent_crc(p_1083->g_363.y, "p_1083->g_363.y", print_hash_value);
    transparent_crc(p_1083->g_363.z, "p_1083->g_363.z", print_hash_value);
    transparent_crc(p_1083->g_363.w, "p_1083->g_363.w", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1083->g_377[i], "p_1083->g_377[i]", print_hash_value);

    }
    transparent_crc(p_1083->g_387.x, "p_1083->g_387.x", print_hash_value);
    transparent_crc(p_1083->g_387.y, "p_1083->g_387.y", print_hash_value);
    transparent_crc(p_1083->g_388.s0, "p_1083->g_388.s0", print_hash_value);
    transparent_crc(p_1083->g_388.s1, "p_1083->g_388.s1", print_hash_value);
    transparent_crc(p_1083->g_388.s2, "p_1083->g_388.s2", print_hash_value);
    transparent_crc(p_1083->g_388.s3, "p_1083->g_388.s3", print_hash_value);
    transparent_crc(p_1083->g_388.s4, "p_1083->g_388.s4", print_hash_value);
    transparent_crc(p_1083->g_388.s5, "p_1083->g_388.s5", print_hash_value);
    transparent_crc(p_1083->g_388.s6, "p_1083->g_388.s6", print_hash_value);
    transparent_crc(p_1083->g_388.s7, "p_1083->g_388.s7", print_hash_value);
    transparent_crc(p_1083->g_404, "p_1083->g_404", print_hash_value);
    transparent_crc(p_1083->g_422.x, "p_1083->g_422.x", print_hash_value);
    transparent_crc(p_1083->g_422.y, "p_1083->g_422.y", print_hash_value);
    transparent_crc(p_1083->g_422.z, "p_1083->g_422.z", print_hash_value);
    transparent_crc(p_1083->g_422.w, "p_1083->g_422.w", print_hash_value);
    transparent_crc(p_1083->g_488.x, "p_1083->g_488.x", print_hash_value);
    transparent_crc(p_1083->g_488.y, "p_1083->g_488.y", print_hash_value);
    transparent_crc(p_1083->g_488.z, "p_1083->g_488.z", print_hash_value);
    transparent_crc(p_1083->g_488.w, "p_1083->g_488.w", print_hash_value);
    transparent_crc(p_1083->g_493.s0, "p_1083->g_493.s0", print_hash_value);
    transparent_crc(p_1083->g_493.s1, "p_1083->g_493.s1", print_hash_value);
    transparent_crc(p_1083->g_493.s2, "p_1083->g_493.s2", print_hash_value);
    transparent_crc(p_1083->g_493.s3, "p_1083->g_493.s3", print_hash_value);
    transparent_crc(p_1083->g_493.s4, "p_1083->g_493.s4", print_hash_value);
    transparent_crc(p_1083->g_493.s5, "p_1083->g_493.s5", print_hash_value);
    transparent_crc(p_1083->g_493.s6, "p_1083->g_493.s6", print_hash_value);
    transparent_crc(p_1083->g_493.s7, "p_1083->g_493.s7", print_hash_value);
    transparent_crc(p_1083->g_493.s8, "p_1083->g_493.s8", print_hash_value);
    transparent_crc(p_1083->g_493.s9, "p_1083->g_493.s9", print_hash_value);
    transparent_crc(p_1083->g_493.sa, "p_1083->g_493.sa", print_hash_value);
    transparent_crc(p_1083->g_493.sb, "p_1083->g_493.sb", print_hash_value);
    transparent_crc(p_1083->g_493.sc, "p_1083->g_493.sc", print_hash_value);
    transparent_crc(p_1083->g_493.sd, "p_1083->g_493.sd", print_hash_value);
    transparent_crc(p_1083->g_493.se, "p_1083->g_493.se", print_hash_value);
    transparent_crc(p_1083->g_493.sf, "p_1083->g_493.sf", print_hash_value);
    transparent_crc(p_1083->g_510.s0, "p_1083->g_510.s0", print_hash_value);
    transparent_crc(p_1083->g_510.s1, "p_1083->g_510.s1", print_hash_value);
    transparent_crc(p_1083->g_510.s2, "p_1083->g_510.s2", print_hash_value);
    transparent_crc(p_1083->g_510.s3, "p_1083->g_510.s3", print_hash_value);
    transparent_crc(p_1083->g_510.s4, "p_1083->g_510.s4", print_hash_value);
    transparent_crc(p_1083->g_510.s5, "p_1083->g_510.s5", print_hash_value);
    transparent_crc(p_1083->g_510.s6, "p_1083->g_510.s6", print_hash_value);
    transparent_crc(p_1083->g_510.s7, "p_1083->g_510.s7", print_hash_value);
    transparent_crc(p_1083->g_510.s8, "p_1083->g_510.s8", print_hash_value);
    transparent_crc(p_1083->g_510.s9, "p_1083->g_510.s9", print_hash_value);
    transparent_crc(p_1083->g_510.sa, "p_1083->g_510.sa", print_hash_value);
    transparent_crc(p_1083->g_510.sb, "p_1083->g_510.sb", print_hash_value);
    transparent_crc(p_1083->g_510.sc, "p_1083->g_510.sc", print_hash_value);
    transparent_crc(p_1083->g_510.sd, "p_1083->g_510.sd", print_hash_value);
    transparent_crc(p_1083->g_510.se, "p_1083->g_510.se", print_hash_value);
    transparent_crc(p_1083->g_510.sf, "p_1083->g_510.sf", print_hash_value);
    transparent_crc(p_1083->g_520.s0, "p_1083->g_520.s0", print_hash_value);
    transparent_crc(p_1083->g_520.s1, "p_1083->g_520.s1", print_hash_value);
    transparent_crc(p_1083->g_520.s2, "p_1083->g_520.s2", print_hash_value);
    transparent_crc(p_1083->g_520.s3, "p_1083->g_520.s3", print_hash_value);
    transparent_crc(p_1083->g_520.s4, "p_1083->g_520.s4", print_hash_value);
    transparent_crc(p_1083->g_520.s5, "p_1083->g_520.s5", print_hash_value);
    transparent_crc(p_1083->g_520.s6, "p_1083->g_520.s6", print_hash_value);
    transparent_crc(p_1083->g_520.s7, "p_1083->g_520.s7", print_hash_value);
    transparent_crc(p_1083->g_520.s8, "p_1083->g_520.s8", print_hash_value);
    transparent_crc(p_1083->g_520.s9, "p_1083->g_520.s9", print_hash_value);
    transparent_crc(p_1083->g_520.sa, "p_1083->g_520.sa", print_hash_value);
    transparent_crc(p_1083->g_520.sb, "p_1083->g_520.sb", print_hash_value);
    transparent_crc(p_1083->g_520.sc, "p_1083->g_520.sc", print_hash_value);
    transparent_crc(p_1083->g_520.sd, "p_1083->g_520.sd", print_hash_value);
    transparent_crc(p_1083->g_520.se, "p_1083->g_520.se", print_hash_value);
    transparent_crc(p_1083->g_520.sf, "p_1083->g_520.sf", print_hash_value);
    transparent_crc(p_1083->g_523.x, "p_1083->g_523.x", print_hash_value);
    transparent_crc(p_1083->g_523.y, "p_1083->g_523.y", print_hash_value);
    transparent_crc(p_1083->g_523.z, "p_1083->g_523.z", print_hash_value);
    transparent_crc(p_1083->g_523.w, "p_1083->g_523.w", print_hash_value);
    transparent_crc(p_1083->g_533, "p_1083->g_533", print_hash_value);
    transparent_crc(p_1083->g_553.x, "p_1083->g_553.x", print_hash_value);
    transparent_crc(p_1083->g_553.y, "p_1083->g_553.y", print_hash_value);
    transparent_crc(p_1083->g_553.z, "p_1083->g_553.z", print_hash_value);
    transparent_crc(p_1083->g_553.w, "p_1083->g_553.w", print_hash_value);
    transparent_crc(p_1083->g_560, "p_1083->g_560", print_hash_value);
    transparent_crc(p_1083->g_584.x, "p_1083->g_584.x", print_hash_value);
    transparent_crc(p_1083->g_584.y, "p_1083->g_584.y", print_hash_value);
    transparent_crc(p_1083->g_584.z, "p_1083->g_584.z", print_hash_value);
    transparent_crc(p_1083->g_584.w, "p_1083->g_584.w", print_hash_value);
    transparent_crc(p_1083->g_595.x, "p_1083->g_595.x", print_hash_value);
    transparent_crc(p_1083->g_595.y, "p_1083->g_595.y", print_hash_value);
    transparent_crc(p_1083->g_595.z, "p_1083->g_595.z", print_hash_value);
    transparent_crc(p_1083->g_595.w, "p_1083->g_595.w", print_hash_value);
    transparent_crc(p_1083->g_611.x, "p_1083->g_611.x", print_hash_value);
    transparent_crc(p_1083->g_611.y, "p_1083->g_611.y", print_hash_value);
    transparent_crc(p_1083->g_614, "p_1083->g_614", print_hash_value);
    transparent_crc(p_1083->g_621.x, "p_1083->g_621.x", print_hash_value);
    transparent_crc(p_1083->g_621.y, "p_1083->g_621.y", print_hash_value);
    transparent_crc(p_1083->g_621.z, "p_1083->g_621.z", print_hash_value);
    transparent_crc(p_1083->g_621.w, "p_1083->g_621.w", print_hash_value);
    transparent_crc(p_1083->g_622.s0, "p_1083->g_622.s0", print_hash_value);
    transparent_crc(p_1083->g_622.s1, "p_1083->g_622.s1", print_hash_value);
    transparent_crc(p_1083->g_622.s2, "p_1083->g_622.s2", print_hash_value);
    transparent_crc(p_1083->g_622.s3, "p_1083->g_622.s3", print_hash_value);
    transparent_crc(p_1083->g_622.s4, "p_1083->g_622.s4", print_hash_value);
    transparent_crc(p_1083->g_622.s5, "p_1083->g_622.s5", print_hash_value);
    transparent_crc(p_1083->g_622.s6, "p_1083->g_622.s6", print_hash_value);
    transparent_crc(p_1083->g_622.s7, "p_1083->g_622.s7", print_hash_value);
    transparent_crc(p_1083->g_623.x, "p_1083->g_623.x", print_hash_value);
    transparent_crc(p_1083->g_623.y, "p_1083->g_623.y", print_hash_value);
    transparent_crc(p_1083->g_624.x, "p_1083->g_624.x", print_hash_value);
    transparent_crc(p_1083->g_624.y, "p_1083->g_624.y", print_hash_value);
    transparent_crc(p_1083->g_624.z, "p_1083->g_624.z", print_hash_value);
    transparent_crc(p_1083->g_624.w, "p_1083->g_624.w", print_hash_value);
    transparent_crc(p_1083->g_627.s0, "p_1083->g_627.s0", print_hash_value);
    transparent_crc(p_1083->g_627.s1, "p_1083->g_627.s1", print_hash_value);
    transparent_crc(p_1083->g_627.s2, "p_1083->g_627.s2", print_hash_value);
    transparent_crc(p_1083->g_627.s3, "p_1083->g_627.s3", print_hash_value);
    transparent_crc(p_1083->g_627.s4, "p_1083->g_627.s4", print_hash_value);
    transparent_crc(p_1083->g_627.s5, "p_1083->g_627.s5", print_hash_value);
    transparent_crc(p_1083->g_627.s6, "p_1083->g_627.s6", print_hash_value);
    transparent_crc(p_1083->g_627.s7, "p_1083->g_627.s7", print_hash_value);
    transparent_crc(p_1083->g_660.x, "p_1083->g_660.x", print_hash_value);
    transparent_crc(p_1083->g_660.y, "p_1083->g_660.y", print_hash_value);
    transparent_crc(p_1083->g_662, "p_1083->g_662", print_hash_value);
    transparent_crc(p_1083->g_735.s0, "p_1083->g_735.s0", print_hash_value);
    transparent_crc(p_1083->g_735.s1, "p_1083->g_735.s1", print_hash_value);
    transparent_crc(p_1083->g_735.s2, "p_1083->g_735.s2", print_hash_value);
    transparent_crc(p_1083->g_735.s3, "p_1083->g_735.s3", print_hash_value);
    transparent_crc(p_1083->g_735.s4, "p_1083->g_735.s4", print_hash_value);
    transparent_crc(p_1083->g_735.s5, "p_1083->g_735.s5", print_hash_value);
    transparent_crc(p_1083->g_735.s6, "p_1083->g_735.s6", print_hash_value);
    transparent_crc(p_1083->g_735.s7, "p_1083->g_735.s7", print_hash_value);
    transparent_crc(p_1083->g_736.x, "p_1083->g_736.x", print_hash_value);
    transparent_crc(p_1083->g_736.y, "p_1083->g_736.y", print_hash_value);
    transparent_crc(p_1083->g_736.z, "p_1083->g_736.z", print_hash_value);
    transparent_crc(p_1083->g_736.w, "p_1083->g_736.w", print_hash_value);
    transparent_crc(p_1083->g_739.x, "p_1083->g_739.x", print_hash_value);
    transparent_crc(p_1083->g_739.y, "p_1083->g_739.y", print_hash_value);
    transparent_crc(p_1083->g_739.z, "p_1083->g_739.z", print_hash_value);
    transparent_crc(p_1083->g_739.w, "p_1083->g_739.w", print_hash_value);
    transparent_crc(p_1083->g_754.s0, "p_1083->g_754.s0", print_hash_value);
    transparent_crc(p_1083->g_754.s1, "p_1083->g_754.s1", print_hash_value);
    transparent_crc(p_1083->g_754.s2, "p_1083->g_754.s2", print_hash_value);
    transparent_crc(p_1083->g_754.s3, "p_1083->g_754.s3", print_hash_value);
    transparent_crc(p_1083->g_754.s4, "p_1083->g_754.s4", print_hash_value);
    transparent_crc(p_1083->g_754.s5, "p_1083->g_754.s5", print_hash_value);
    transparent_crc(p_1083->g_754.s6, "p_1083->g_754.s6", print_hash_value);
    transparent_crc(p_1083->g_754.s7, "p_1083->g_754.s7", print_hash_value);
    transparent_crc(p_1083->g_764.x, "p_1083->g_764.x", print_hash_value);
    transparent_crc(p_1083->g_764.y, "p_1083->g_764.y", print_hash_value);
    transparent_crc(p_1083->g_769, "p_1083->g_769", print_hash_value);
    transparent_crc(p_1083->g_801.s0, "p_1083->g_801.s0", print_hash_value);
    transparent_crc(p_1083->g_801.s1, "p_1083->g_801.s1", print_hash_value);
    transparent_crc(p_1083->g_801.s2, "p_1083->g_801.s2", print_hash_value);
    transparent_crc(p_1083->g_801.s3, "p_1083->g_801.s3", print_hash_value);
    transparent_crc(p_1083->g_801.s4, "p_1083->g_801.s4", print_hash_value);
    transparent_crc(p_1083->g_801.s5, "p_1083->g_801.s5", print_hash_value);
    transparent_crc(p_1083->g_801.s6, "p_1083->g_801.s6", print_hash_value);
    transparent_crc(p_1083->g_801.s7, "p_1083->g_801.s7", print_hash_value);
    transparent_crc(p_1083->g_847.s0, "p_1083->g_847.s0", print_hash_value);
    transparent_crc(p_1083->g_847.s1, "p_1083->g_847.s1", print_hash_value);
    transparent_crc(p_1083->g_847.s2, "p_1083->g_847.s2", print_hash_value);
    transparent_crc(p_1083->g_847.s3, "p_1083->g_847.s3", print_hash_value);
    transparent_crc(p_1083->g_847.s4, "p_1083->g_847.s4", print_hash_value);
    transparent_crc(p_1083->g_847.s5, "p_1083->g_847.s5", print_hash_value);
    transparent_crc(p_1083->g_847.s6, "p_1083->g_847.s6", print_hash_value);
    transparent_crc(p_1083->g_847.s7, "p_1083->g_847.s7", print_hash_value);
    transparent_crc(p_1083->g_847.s8, "p_1083->g_847.s8", print_hash_value);
    transparent_crc(p_1083->g_847.s9, "p_1083->g_847.s9", print_hash_value);
    transparent_crc(p_1083->g_847.sa, "p_1083->g_847.sa", print_hash_value);
    transparent_crc(p_1083->g_847.sb, "p_1083->g_847.sb", print_hash_value);
    transparent_crc(p_1083->g_847.sc, "p_1083->g_847.sc", print_hash_value);
    transparent_crc(p_1083->g_847.sd, "p_1083->g_847.sd", print_hash_value);
    transparent_crc(p_1083->g_847.se, "p_1083->g_847.se", print_hash_value);
    transparent_crc(p_1083->g_847.sf, "p_1083->g_847.sf", print_hash_value);
    transparent_crc(p_1083->g_857.s0, "p_1083->g_857.s0", print_hash_value);
    transparent_crc(p_1083->g_857.s1, "p_1083->g_857.s1", print_hash_value);
    transparent_crc(p_1083->g_857.s2, "p_1083->g_857.s2", print_hash_value);
    transparent_crc(p_1083->g_857.s3, "p_1083->g_857.s3", print_hash_value);
    transparent_crc(p_1083->g_857.s4, "p_1083->g_857.s4", print_hash_value);
    transparent_crc(p_1083->g_857.s5, "p_1083->g_857.s5", print_hash_value);
    transparent_crc(p_1083->g_857.s6, "p_1083->g_857.s6", print_hash_value);
    transparent_crc(p_1083->g_857.s7, "p_1083->g_857.s7", print_hash_value);
    transparent_crc(p_1083->g_857.s8, "p_1083->g_857.s8", print_hash_value);
    transparent_crc(p_1083->g_857.s9, "p_1083->g_857.s9", print_hash_value);
    transparent_crc(p_1083->g_857.sa, "p_1083->g_857.sa", print_hash_value);
    transparent_crc(p_1083->g_857.sb, "p_1083->g_857.sb", print_hash_value);
    transparent_crc(p_1083->g_857.sc, "p_1083->g_857.sc", print_hash_value);
    transparent_crc(p_1083->g_857.sd, "p_1083->g_857.sd", print_hash_value);
    transparent_crc(p_1083->g_857.se, "p_1083->g_857.se", print_hash_value);
    transparent_crc(p_1083->g_857.sf, "p_1083->g_857.sf", print_hash_value);
    transparent_crc(p_1083->g_858.s0, "p_1083->g_858.s0", print_hash_value);
    transparent_crc(p_1083->g_858.s1, "p_1083->g_858.s1", print_hash_value);
    transparent_crc(p_1083->g_858.s2, "p_1083->g_858.s2", print_hash_value);
    transparent_crc(p_1083->g_858.s3, "p_1083->g_858.s3", print_hash_value);
    transparent_crc(p_1083->g_858.s4, "p_1083->g_858.s4", print_hash_value);
    transparent_crc(p_1083->g_858.s5, "p_1083->g_858.s5", print_hash_value);
    transparent_crc(p_1083->g_858.s6, "p_1083->g_858.s6", print_hash_value);
    transparent_crc(p_1083->g_858.s7, "p_1083->g_858.s7", print_hash_value);
    transparent_crc(p_1083->g_858.s8, "p_1083->g_858.s8", print_hash_value);
    transparent_crc(p_1083->g_858.s9, "p_1083->g_858.s9", print_hash_value);
    transparent_crc(p_1083->g_858.sa, "p_1083->g_858.sa", print_hash_value);
    transparent_crc(p_1083->g_858.sb, "p_1083->g_858.sb", print_hash_value);
    transparent_crc(p_1083->g_858.sc, "p_1083->g_858.sc", print_hash_value);
    transparent_crc(p_1083->g_858.sd, "p_1083->g_858.sd", print_hash_value);
    transparent_crc(p_1083->g_858.se, "p_1083->g_858.se", print_hash_value);
    transparent_crc(p_1083->g_858.sf, "p_1083->g_858.sf", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1083->g_911[i], "p_1083->g_911[i]", print_hash_value);

    }
    transparent_crc(p_1083->g_942, "p_1083->g_942", print_hash_value);
    transparent_crc(p_1083->g_945.s0, "p_1083->g_945.s0", print_hash_value);
    transparent_crc(p_1083->g_945.s1, "p_1083->g_945.s1", print_hash_value);
    transparent_crc(p_1083->g_945.s2, "p_1083->g_945.s2", print_hash_value);
    transparent_crc(p_1083->g_945.s3, "p_1083->g_945.s3", print_hash_value);
    transparent_crc(p_1083->g_945.s4, "p_1083->g_945.s4", print_hash_value);
    transparent_crc(p_1083->g_945.s5, "p_1083->g_945.s5", print_hash_value);
    transparent_crc(p_1083->g_945.s6, "p_1083->g_945.s6", print_hash_value);
    transparent_crc(p_1083->g_945.s7, "p_1083->g_945.s7", print_hash_value);
    transparent_crc(p_1083->g_945.s8, "p_1083->g_945.s8", print_hash_value);
    transparent_crc(p_1083->g_945.s9, "p_1083->g_945.s9", print_hash_value);
    transparent_crc(p_1083->g_945.sa, "p_1083->g_945.sa", print_hash_value);
    transparent_crc(p_1083->g_945.sb, "p_1083->g_945.sb", print_hash_value);
    transparent_crc(p_1083->g_945.sc, "p_1083->g_945.sc", print_hash_value);
    transparent_crc(p_1083->g_945.sd, "p_1083->g_945.sd", print_hash_value);
    transparent_crc(p_1083->g_945.se, "p_1083->g_945.se", print_hash_value);
    transparent_crc(p_1083->g_945.sf, "p_1083->g_945.sf", print_hash_value);
    transparent_crc(p_1083->g_959.s0, "p_1083->g_959.s0", print_hash_value);
    transparent_crc(p_1083->g_959.s1, "p_1083->g_959.s1", print_hash_value);
    transparent_crc(p_1083->g_959.s2, "p_1083->g_959.s2", print_hash_value);
    transparent_crc(p_1083->g_959.s3, "p_1083->g_959.s3", print_hash_value);
    transparent_crc(p_1083->g_959.s4, "p_1083->g_959.s4", print_hash_value);
    transparent_crc(p_1083->g_959.s5, "p_1083->g_959.s5", print_hash_value);
    transparent_crc(p_1083->g_959.s6, "p_1083->g_959.s6", print_hash_value);
    transparent_crc(p_1083->g_959.s7, "p_1083->g_959.s7", print_hash_value);
    transparent_crc(p_1083->g_959.s8, "p_1083->g_959.s8", print_hash_value);
    transparent_crc(p_1083->g_959.s9, "p_1083->g_959.s9", print_hash_value);
    transparent_crc(p_1083->g_959.sa, "p_1083->g_959.sa", print_hash_value);
    transparent_crc(p_1083->g_959.sb, "p_1083->g_959.sb", print_hash_value);
    transparent_crc(p_1083->g_959.sc, "p_1083->g_959.sc", print_hash_value);
    transparent_crc(p_1083->g_959.sd, "p_1083->g_959.sd", print_hash_value);
    transparent_crc(p_1083->g_959.se, "p_1083->g_959.se", print_hash_value);
    transparent_crc(p_1083->g_959.sf, "p_1083->g_959.sf", print_hash_value);
    transparent_crc(p_1083->g_962.s0, "p_1083->g_962.s0", print_hash_value);
    transparent_crc(p_1083->g_962.s1, "p_1083->g_962.s1", print_hash_value);
    transparent_crc(p_1083->g_962.s2, "p_1083->g_962.s2", print_hash_value);
    transparent_crc(p_1083->g_962.s3, "p_1083->g_962.s3", print_hash_value);
    transparent_crc(p_1083->g_962.s4, "p_1083->g_962.s4", print_hash_value);
    transparent_crc(p_1083->g_962.s5, "p_1083->g_962.s5", print_hash_value);
    transparent_crc(p_1083->g_962.s6, "p_1083->g_962.s6", print_hash_value);
    transparent_crc(p_1083->g_962.s7, "p_1083->g_962.s7", print_hash_value);
    transparent_crc(p_1083->g_962.s8, "p_1083->g_962.s8", print_hash_value);
    transparent_crc(p_1083->g_962.s9, "p_1083->g_962.s9", print_hash_value);
    transparent_crc(p_1083->g_962.sa, "p_1083->g_962.sa", print_hash_value);
    transparent_crc(p_1083->g_962.sb, "p_1083->g_962.sb", print_hash_value);
    transparent_crc(p_1083->g_962.sc, "p_1083->g_962.sc", print_hash_value);
    transparent_crc(p_1083->g_962.sd, "p_1083->g_962.sd", print_hash_value);
    transparent_crc(p_1083->g_962.se, "p_1083->g_962.se", print_hash_value);
    transparent_crc(p_1083->g_962.sf, "p_1083->g_962.sf", print_hash_value);
    transparent_crc(p_1083->g_980.x, "p_1083->g_980.x", print_hash_value);
    transparent_crc(p_1083->g_980.y, "p_1083->g_980.y", print_hash_value);
    transparent_crc(p_1083->g_980.z, "p_1083->g_980.z", print_hash_value);
    transparent_crc(p_1083->g_980.w, "p_1083->g_980.w", print_hash_value);
    transparent_crc(p_1083->g_983.x, "p_1083->g_983.x", print_hash_value);
    transparent_crc(p_1083->g_983.y, "p_1083->g_983.y", print_hash_value);
    transparent_crc(p_1083->g_983.z, "p_1083->g_983.z", print_hash_value);
    transparent_crc(p_1083->g_983.w, "p_1083->g_983.w", print_hash_value);
    transparent_crc(p_1083->g_992.x, "p_1083->g_992.x", print_hash_value);
    transparent_crc(p_1083->g_992.y, "p_1083->g_992.y", print_hash_value);
    transparent_crc(p_1083->g_992.z, "p_1083->g_992.z", print_hash_value);
    transparent_crc(p_1083->g_992.w, "p_1083->g_992.w", print_hash_value);
    transparent_crc(p_1083->g_993.s0, "p_1083->g_993.s0", print_hash_value);
    transparent_crc(p_1083->g_993.s1, "p_1083->g_993.s1", print_hash_value);
    transparent_crc(p_1083->g_993.s2, "p_1083->g_993.s2", print_hash_value);
    transparent_crc(p_1083->g_993.s3, "p_1083->g_993.s3", print_hash_value);
    transparent_crc(p_1083->g_993.s4, "p_1083->g_993.s4", print_hash_value);
    transparent_crc(p_1083->g_993.s5, "p_1083->g_993.s5", print_hash_value);
    transparent_crc(p_1083->g_993.s6, "p_1083->g_993.s6", print_hash_value);
    transparent_crc(p_1083->g_993.s7, "p_1083->g_993.s7", print_hash_value);
    transparent_crc(p_1083->g_993.s8, "p_1083->g_993.s8", print_hash_value);
    transparent_crc(p_1083->g_993.s9, "p_1083->g_993.s9", print_hash_value);
    transparent_crc(p_1083->g_993.sa, "p_1083->g_993.sa", print_hash_value);
    transparent_crc(p_1083->g_993.sb, "p_1083->g_993.sb", print_hash_value);
    transparent_crc(p_1083->g_993.sc, "p_1083->g_993.sc", print_hash_value);
    transparent_crc(p_1083->g_993.sd, "p_1083->g_993.sd", print_hash_value);
    transparent_crc(p_1083->g_993.se, "p_1083->g_993.se", print_hash_value);
    transparent_crc(p_1083->g_993.sf, "p_1083->g_993.sf", print_hash_value);
    transparent_crc(p_1083->g_1009.x, "p_1083->g_1009.x", print_hash_value);
    transparent_crc(p_1083->g_1009.y, "p_1083->g_1009.y", print_hash_value);
    transparent_crc(p_1083->g_1009.z, "p_1083->g_1009.z", print_hash_value);
    transparent_crc(p_1083->g_1009.w, "p_1083->g_1009.w", print_hash_value);
    transparent_crc(p_1083->g_1010.x, "p_1083->g_1010.x", print_hash_value);
    transparent_crc(p_1083->g_1010.y, "p_1083->g_1010.y", print_hash_value);
    transparent_crc(p_1083->g_1010.z, "p_1083->g_1010.z", print_hash_value);
    transparent_crc(p_1083->g_1010.w, "p_1083->g_1010.w", print_hash_value);
    transparent_crc(p_1083->g_1023.x, "p_1083->g_1023.x", print_hash_value);
    transparent_crc(p_1083->g_1023.y, "p_1083->g_1023.y", print_hash_value);
    transparent_crc(p_1083->g_1023.z, "p_1083->g_1023.z", print_hash_value);
    transparent_crc(p_1083->g_1023.w, "p_1083->g_1023.w", print_hash_value);
    transparent_crc(p_1083->g_1032, "p_1083->g_1032", print_hash_value);
    transparent_crc(p_1083->g_1036, "p_1083->g_1036", print_hash_value);
    transparent_crc(p_1083->g_1043.s0, "p_1083->g_1043.s0", print_hash_value);
    transparent_crc(p_1083->g_1043.s1, "p_1083->g_1043.s1", print_hash_value);
    transparent_crc(p_1083->g_1043.s2, "p_1083->g_1043.s2", print_hash_value);
    transparent_crc(p_1083->g_1043.s3, "p_1083->g_1043.s3", print_hash_value);
    transparent_crc(p_1083->g_1043.s4, "p_1083->g_1043.s4", print_hash_value);
    transparent_crc(p_1083->g_1043.s5, "p_1083->g_1043.s5", print_hash_value);
    transparent_crc(p_1083->g_1043.s6, "p_1083->g_1043.s6", print_hash_value);
    transparent_crc(p_1083->g_1043.s7, "p_1083->g_1043.s7", print_hash_value);
    transparent_crc(p_1083->g_1048.x, "p_1083->g_1048.x", print_hash_value);
    transparent_crc(p_1083->g_1048.y, "p_1083->g_1048.y", print_hash_value);
    transparent_crc(p_1083->g_1051.s0, "p_1083->g_1051.s0", print_hash_value);
    transparent_crc(p_1083->g_1051.s1, "p_1083->g_1051.s1", print_hash_value);
    transparent_crc(p_1083->g_1051.s2, "p_1083->g_1051.s2", print_hash_value);
    transparent_crc(p_1083->g_1051.s3, "p_1083->g_1051.s3", print_hash_value);
    transparent_crc(p_1083->g_1051.s4, "p_1083->g_1051.s4", print_hash_value);
    transparent_crc(p_1083->g_1051.s5, "p_1083->g_1051.s5", print_hash_value);
    transparent_crc(p_1083->g_1051.s6, "p_1083->g_1051.s6", print_hash_value);
    transparent_crc(p_1083->g_1051.s7, "p_1083->g_1051.s7", print_hash_value);
    transparent_crc(p_1083->g_1051.s8, "p_1083->g_1051.s8", print_hash_value);
    transparent_crc(p_1083->g_1051.s9, "p_1083->g_1051.s9", print_hash_value);
    transparent_crc(p_1083->g_1051.sa, "p_1083->g_1051.sa", print_hash_value);
    transparent_crc(p_1083->g_1051.sb, "p_1083->g_1051.sb", print_hash_value);
    transparent_crc(p_1083->g_1051.sc, "p_1083->g_1051.sc", print_hash_value);
    transparent_crc(p_1083->g_1051.sd, "p_1083->g_1051.sd", print_hash_value);
    transparent_crc(p_1083->g_1051.se, "p_1083->g_1051.se", print_hash_value);
    transparent_crc(p_1083->g_1051.sf, "p_1083->g_1051.sf", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
