// ---fake_divergence -g 42,11,7 -l 2,1,1
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


// Seed: 115

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int8_t  f0;
};

union U1 {
   volatile int8_t * f0;
   volatile int32_t  f1;
};

union U2 {
   uint64_t  f0;
   int32_t  f1;
   uint8_t  f2;
   int16_t  f3;
};

struct S3 {
    int32_t g_4;
    volatile uint64_t g_6;
    int8_t g_43;
    int32_t *g_45;
    int32_t **g_44;
    int8_t g_52;
    int32_t g_78;
    uint8_t g_90;
    int8_t *g_107;
    int8_t * volatile *g_106;
    uint32_t g_154[8][10][3];
    int64_t g_169;
    uint16_t g_184;
    struct S0 g_187;
    int16_t g_211;
    int64_t g_218;
    uint16_t g_219;
    uint64_t g_238;
    int64_t *g_243;
    uint8_t g_257[2];
    union U2 g_300;
    uint32_t g_310;
    volatile int16_t g_323;
    volatile int16_t *g_322;
    volatile int16_t **g_321;
    int64_t g_334;
    uint64_t g_346[1][10];
    union U1 g_380;
    union U1 g_383;
    union U1 g_384;
    union U1 g_385;
    union U1 *g_382[4][10];
    struct S0 *g_449;
    struct S0 * volatile *g_448;
    struct S0 **g_452;
    int16_t g_459;
    uint8_t *g_492;
    uint8_t **g_491;
    uint64_t g_520;
    uint64_t g_533;
    uint64_t g_543;
    union U1 g_578;
    int16_t *g_581[9][3];
    int64_t g_634[7][7];
    int32_t g_635;
    int8_t g_636;
    uint8_t g_637[7];
    volatile struct S0 g_650;
    volatile struct S0 *g_649;
    volatile struct S0 **g_648;
    volatile struct S0 ***g_647;
    volatile struct S0 ****g_646;
    uint8_t g_653[7];
    int32_t g_717;
    int32_t *g_720;
    int32_t **g_719;
    uint8_t g_721[9];
    uint32_t g_743;
    uint32_t g_782;
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
int32_t  func_1(struct S3 * p_783);
int32_t  func_9(uint8_t  p_10, uint32_t  p_11, int32_t * p_12, int32_t  p_13, struct S3 * p_783);
int64_t  func_20(int32_t * p_21, int32_t  p_22, struct S3 * p_783);
int32_t * func_24(uint32_t  p_25, int16_t  p_26, int32_t  p_27, int8_t  p_28, int32_t * p_29, struct S3 * p_783);
int8_t  func_36(int8_t * p_37, int32_t ** p_38, uint64_t  p_39, int32_t ** p_40, uint32_t  p_41, struct S3 * p_783);
int32_t * func_53(uint32_t  p_54, struct S3 * p_783);
int32_t  func_57(uint8_t  p_58, int8_t * p_59, uint8_t  p_60, int64_t  p_61, struct S3 * p_783);
uint8_t  func_62(int16_t  p_63, int8_t  p_64, int32_t  p_65, uint16_t  p_66, struct S3 * p_783);
struct S0  func_71(int32_t  p_72, int32_t * p_73, int32_t ** p_74, union U2  p_75, struct S3 * p_783);
union U2  func_79(int8_t * p_80, uint32_t  p_81, uint32_t  p_82, int16_t  p_83, struct S3 * p_783);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_783->g_6 p_783->g_4 p_783->g_44 p_783->g_43 p_783->g_52 p_783->g_184 p_783->g_45 p_783->g_646 p_783->g_647 p_783->g_491 p_783->g_492 p_783->g_257 p_783->g_78 p_783->g_637 p_783->g_169 p_783->g_635 p_783->g_106 p_783->g_107 p_783->g_459 p_783->g_743 p_783->g_382 p_783->g_720 p_783->g_717 p_783->g_187.f0 p_783->g_636 p_783->g_649 p_783->g_650 p_783->g_300.f1 p_783->g_448 p_783->g_648 p_783->g_782
 * writes: p_783->g_6 p_783->g_52 p_783->g_184 p_783->g_45 p_783->g_635 p_783->g_719 p_783->g_721 p_783->g_78 p_783->g_459 p_783->g_43 p_783->g_743 p_783->g_187.f0 p_783->g_636 p_783->g_4 p_783->g_300.f1 p_783->g_449 p_783->g_650 p_783->g_782
 */
int32_t  func_1(struct S3 * p_783)
{ /* block id: 4 */
    int32_t *l_2 = (void*)0;
    int32_t *l_3 = &p_783->g_4;
    int32_t *l_5[2][1];
    int32_t **l_23 = &l_2;
    uint32_t l_752 = 0UL;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_5[i][j] = &p_783->g_4;
    }
    ++p_783->g_6;
    p_783->g_782 |= (!func_9(p_783->g_4, p_783->g_6, ((((0UL == 4294967295UL) || (safe_div_func_int16_t_s_s(p_783->g_4, (safe_sub_func_int64_t_s_s((safe_div_func_int32_t_s_s((func_20(((*l_23) = (void*)0), p_783->g_4, p_783) || (*l_3)), (*l_3))), 3UL))))) >= l_752) , (void*)0), (*p_783->g_720), p_783));
    return p_783->g_6;
}


/* ------------------------------------------ */
/* 
 * reads : p_783->g_187.f0 p_783->g_44 p_783->g_45 p_783->g_106 p_783->g_107 p_783->g_43 p_783->g_636 p_783->g_649 p_783->g_650 p_783->g_257 p_783->g_4 p_783->g_300.f1 p_783->g_448 p_783->g_646 p_783->g_647 p_783->g_648
 * writes: p_783->g_187.f0 p_783->g_45 p_783->g_636 p_783->g_78 p_783->g_4 p_783->g_300.f1 p_783->g_449 p_783->g_650
 */
int32_t  func_9(uint8_t  p_10, uint32_t  p_11, int32_t * p_12, int32_t  p_13, struct S3 * p_783)
{ /* block id: 425 */
    uint8_t ***l_763 = &p_783->g_491;
    int32_t l_773 = 0x4ED39C57L;
    int32_t l_774 = 0x07EEB8E1L;
    struct S0 l_781 = {0x24L};
    for (p_783->g_187.f0 = 0; (p_783->g_187.f0 <= (-12)); p_783->g_187.f0 = safe_sub_func_int64_t_s_s(p_783->g_187.f0, 3))
    { /* block id: 428 */
        int16_t l_764 = 0x7E63L;
        int8_t *l_767 = &p_783->g_636;
        uint64_t *l_770[7][10] = {{&p_783->g_533,&p_783->g_520,&p_783->g_520,&p_783->g_533,&p_783->g_520,&p_783->g_533,&p_783->g_533,&p_783->g_520,&p_783->g_533,&p_783->g_533},{&p_783->g_533,&p_783->g_520,&p_783->g_520,&p_783->g_533,&p_783->g_520,&p_783->g_533,&p_783->g_533,&p_783->g_520,&p_783->g_533,&p_783->g_533},{&p_783->g_533,&p_783->g_520,&p_783->g_520,&p_783->g_533,&p_783->g_520,&p_783->g_533,&p_783->g_533,&p_783->g_520,&p_783->g_533,&p_783->g_533},{&p_783->g_533,&p_783->g_520,&p_783->g_520,&p_783->g_533,&p_783->g_520,&p_783->g_533,&p_783->g_533,&p_783->g_520,&p_783->g_533,&p_783->g_533},{&p_783->g_533,&p_783->g_520,&p_783->g_520,&p_783->g_533,&p_783->g_520,&p_783->g_533,&p_783->g_533,&p_783->g_520,&p_783->g_533,&p_783->g_533},{&p_783->g_533,&p_783->g_520,&p_783->g_520,&p_783->g_533,&p_783->g_520,&p_783->g_533,&p_783->g_533,&p_783->g_520,&p_783->g_533,&p_783->g_533},{&p_783->g_533,&p_783->g_520,&p_783->g_520,&p_783->g_533,&p_783->g_520,&p_783->g_533,&p_783->g_533,&p_783->g_520,&p_783->g_533,&p_783->g_533}};
        int32_t l_771 = 0x74E76609L;
        uint8_t l_772 = 2UL;
        int32_t *l_775[2][1];
        int i, j;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 1; j++)
                l_775[i][j] = &p_783->g_635;
        }
        (*p_783->g_44) = (*p_783->g_44);
        p_783->g_4 |= (safe_rshift_func_uint16_t_u_s(((p_783->g_78 = ((safe_add_func_int16_t_s_s((l_774 &= (((safe_mul_func_uint8_t_u_u(p_13, (FAKE_DIVERGE(p_783->global_2_offset, get_global_id(2), 10) < (&p_783->g_491 != l_763)))) & ((0x709B4184035DB4C9L || (~l_764)) == ((safe_sub_func_uint64_t_u_u(((((((*l_767) &= (**p_783->g_106)) >= (((l_771 = ((((safe_mod_func_int32_t_s_s(((*p_783->g_649) , (-1L)), l_764)) != l_764) , (-7L)) || l_764)) == l_772) != l_773)) == 7UL) >= p_10) && l_773), FAKE_DIVERGE(p_783->local_2_offset, get_local_id(2), 10))) == 0L))) > p_13)), (-1L))) , (-1L))) == p_783->g_257[1]), p_11));
        for (l_774 = 0; (l_774 <= 9); l_774 = safe_add_func_int32_t_s_s(l_774, 5))
        { /* block id: 437 */
            for (l_764 = 0; (l_764 <= 3); l_764 += 1)
            { /* block id: 440 */
                if (p_11)
                    break;
            }
        }
    }
    for (p_783->g_300.f1 = (-14); (p_783->g_300.f1 <= (-28)); p_783->g_300.f1 = safe_sub_func_uint32_t_u_u(p_783->g_300.f1, 6))
    { /* block id: 447 */
        struct S0 *l_780 = &p_783->g_187;
        (*p_783->g_44) = (*p_783->g_44);
        if (p_11)
            continue;
        (*p_783->g_448) = l_780;
        (****p_783->g_646) = l_781;
    }
    return l_774;
}


/* ------------------------------------------ */
/* 
 * reads : p_783->g_4 p_783->g_44 p_783->g_43 p_783->g_52 p_783->g_184 p_783->g_45 p_783->g_646 p_783->g_647 p_783->g_491 p_783->g_492 p_783->g_257 p_783->g_78 p_783->g_637 p_783->g_169 p_783->g_635 p_783->g_106 p_783->g_107 p_783->g_459 p_783->g_743 p_783->g_382
 * writes: p_783->g_52 p_783->g_184 p_783->g_45 p_783->g_635 p_783->g_719 p_783->g_721 p_783->g_78 p_783->g_459 p_783->g_43 p_783->g_743
 */
int64_t  func_20(int32_t * p_21, int32_t  p_22, struct S3 * p_783)
{ /* block id: 7 */
    int8_t *l_42 = &p_783->g_43;
    int32_t l_46 = 0L;
    int8_t *l_51 = &p_783->g_52;
    int32_t *l_722 = &p_783->g_78;
    int16_t **l_738[3];
    int i;
    for (i = 0; i < 3; i++)
        l_738[i] = &p_783->g_581[8][2];
    (*p_783->g_44) = func_24((p_783->g_721[3] = (safe_div_func_uint8_t_u_u(0x65L, (safe_lshift_func_int8_t_s_s((safe_mul_func_int8_t_s_s(p_783->g_4, func_36(l_42, p_783->g_44, l_46, &p_783->g_45, ((safe_div_func_int64_t_s_s((safe_mod_func_int8_t_s_s(p_22, ((p_783->g_4 != ((*l_51) |= p_783->g_43)) && l_46))), p_783->g_4)) && p_783->g_52), p_783))), 1))))), l_46, p_22, l_46, l_722, p_783);
    (*l_722) = ((*p_783->g_646) == (void*)0);
    (*l_722) = (safe_rshift_func_uint8_t_u_s((**p_783->g_491), (*l_722)));
    for (p_22 = 4; (p_22 >= 0); p_22 -= 1)
    { /* block id: 407 */
        int16_t **l_739 = &p_783->g_581[2][0];
        int32_t l_750 = 0x21B05960L;
        int i;
        (*l_722) &= ((1UL != (p_783->g_637[p_22] ^ ((*l_51) = ((safe_add_func_uint16_t_u_u((p_783->g_184 &= ((safe_sub_func_int16_t_s_s((p_22 <= (safe_sub_func_int16_t_s_s((!(p_22 && (p_22 <= ((((safe_mod_func_int16_t_s_s((safe_rshift_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(p_783->g_169, (l_738[2] != l_739))), (p_783->g_635 , p_783->g_637[p_22]))), 1UL)) , 9UL) & p_783->g_637[p_22]) >= (-6L))))), p_783->g_637[p_22]))), p_783->g_637[p_22])) && 0x22L)), p_783->g_637[p_22])) && 0UL)))) || (**p_783->g_106));
        for (p_783->g_459 = 4; (p_783->g_459 >= 0); p_783->g_459 -= 1)
        { /* block id: 413 */
            uint32_t l_751[3][3] = {{7UL,0UL,7UL},{7UL,0UL,7UL},{7UL,0UL,7UL}};
            int i, j;
            for (p_783->g_43 = 0; (p_783->g_43 <= 3); p_783->g_43 += 1)
            { /* block id: 416 */
                int32_t *l_740 = &p_783->g_635;
                int32_t *l_741 = (void*)0;
                int32_t *l_742[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_742[i] = &p_783->g_78;
                p_783->g_743++;
                l_750 = (safe_mul_func_uint8_t_u_u((safe_sub_func_int8_t_s_s(0x51L, (0x4603EA23L | (p_783->g_382[2][4] != (void*)0)))), 0x30L));
            }
            p_21 = p_21;
            return l_751[0][1];
        }
    }
    return (*l_722);
}


/* ------------------------------------------ */
/* 
 * reads : p_783->g_44 p_783->g_45
 * writes: p_783->g_45
 */
int32_t * func_24(uint32_t  p_25, int16_t  p_26, int32_t  p_27, int8_t  p_28, int32_t * p_29, struct S3 * p_783)
{ /* block id: 399 */
    int32_t *l_723 = (void*)0;
    (*p_783->g_44) = l_723;
    return (*p_783->g_44);
}


/* ------------------------------------------ */
/* 
 * reads : p_783->g_184 p_783->g_44 p_783->g_45 p_783->g_43
 * writes: p_783->g_184 p_783->g_45 p_783->g_635 p_783->g_719
 */
int8_t  func_36(int8_t * p_37, int32_t ** p_38, uint64_t  p_39, int32_t ** p_40, uint32_t  p_41, struct S3 * p_783)
{ /* block id: 9 */
    int8_t l_55 = (-3L);
    (*p_38) = func_53(l_55, p_783);
    return (*p_37);
}


/* ------------------------------------------ */
/* 
 * reads : p_783->g_184 p_783->g_44 p_783->g_45
 * writes: p_783->g_184 p_783->g_45 p_783->g_635 p_783->g_719
 */
int32_t * func_53(uint32_t  p_54, struct S3 * p_783)
{ /* block id: 10 */
    uint32_t l_56[8];
    int8_t *l_84[5][9][4] = {{{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43}},{{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43}},{{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43}},{{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43}},{{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43},{&p_783->g_43,&p_783->g_52,&p_783->g_43,&p_783->g_43}}};
    int32_t l_91 = (-8L);
    int32_t *l_714[10] = {&p_783->g_635,&p_783->g_635,&p_783->g_635,&p_783->g_635,&p_783->g_635,&p_783->g_635,&p_783->g_635,&p_783->g_635,&p_783->g_635,&p_783->g_635};
    int32_t *l_716[9][3] = {{&p_783->g_717,&p_783->g_717,&p_783->g_717},{&p_783->g_717,&p_783->g_717,&p_783->g_717},{&p_783->g_717,&p_783->g_717,&p_783->g_717},{&p_783->g_717,&p_783->g_717,&p_783->g_717},{&p_783->g_717,&p_783->g_717,&p_783->g_717},{&p_783->g_717,&p_783->g_717,&p_783->g_717},{&p_783->g_717,&p_783->g_717,&p_783->g_717},{&p_783->g_717,&p_783->g_717,&p_783->g_717},{&p_783->g_717,&p_783->g_717,&p_783->g_717}};
    int32_t **l_715 = &l_716[6][1];
    int32_t ***l_718[5];
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_56[i] = 4294967289UL;
    for (i = 0; i < 5; i++)
        l_718[i] = &l_715;
    for (p_54 = 2; (p_54 <= 7); p_54 += 1)
    { /* block id: 13 */
        int8_t l_76 = 0x5AL;
        int32_t *l_77 = &p_783->g_78;
        uint8_t *l_89[9][2][9] = {{{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90},{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90}},{{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90},{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90}},{{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90},{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90}},{{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90},{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90}},{{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90},{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90}},{{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90},{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90}},{{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90},{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90}},{{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90},{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90}},{{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90},{&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90,&p_783->g_90,&p_783->g_90,&p_783->g_90,(void*)0,&p_783->g_90}}};
        uint16_t l_92 = 1UL;
        int32_t l_707 = 0x79677B71L;
        int i, j, k;
        (1 + 1);
    }
    for (p_783->g_184 = 17; (p_783->g_184 <= 51); ++p_783->g_184)
    { /* block id: 389 */
        if (l_91)
            break;
        (*p_783->g_44) = (*p_783->g_44);
    }
    p_783->g_635 = p_54;
    p_783->g_719 = l_715;
    return (*p_783->g_44);
}


/* ------------------------------------------ */
/* 
 * reads : p_783->g_43
 * writes: p_783->g_43
 */
int32_t  func_57(uint8_t  p_58, int8_t * p_59, uint8_t  p_60, int64_t  p_61, struct S3 * p_783)
{ /* block id: 57 */
    int16_t l_244 = (-1L);
    int32_t l_247 = (-5L);
    uint32_t l_262 = 0x9CE636EAL;
    int64_t **l_268 = &p_783->g_243;
    int32_t l_282 = 0L;
    int32_t l_284 = 9L;
    int32_t **l_288 = &p_783->g_45;
    int8_t **l_289 = (void*)0;
    int32_t l_414 = 0x6F95C107L;
    uint8_t *l_490 = (void*)0;
    uint8_t **l_489 = &l_490;
    union U1 *l_577[2];
    union U2 l_586 = {0xCC9CF7E32CE68000L};
    struct S0 l_588 = {0L};
    struct S0 ***l_594 = (void*)0;
    struct S0 ****l_593 = &l_594;
    int i;
    for (i = 0; i < 2; i++)
        l_577[i] = &p_783->g_578;
    for (p_783->g_43 = 0; (p_783->g_43 <= 2); p_783->g_43 += 1)
    { /* block id: 60 */
        int32_t l_199[6][6] = {{(-1L),0x7663D83FL,(-1L),(-1L),0x7663D83FL,(-1L)},{(-1L),0x7663D83FL,(-1L),(-1L),0x7663D83FL,(-1L)},{(-1L),0x7663D83FL,(-1L),(-1L),0x7663D83FL,(-1L)},{(-1L),0x7663D83FL,(-1L),(-1L),0x7663D83FL,(-1L)},{(-1L),0x7663D83FL,(-1L),(-1L),0x7663D83FL,(-1L)},{(-1L),0x7663D83FL,(-1L),(-1L),0x7663D83FL,(-1L)}};
        struct S0 *l_208 = (void*)0;
        struct S0 *l_209 = &p_783->g_187;
        int16_t *l_210 = &p_783->g_211;
        union U2 l_212 = {2UL};
        union U2 *l_213 = (void*)0;
        union U2 *l_214 = &l_212;
        int64_t *l_217[8][9] = {{&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218},{&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218},{&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218},{&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218},{&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218},{&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218},{&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218},{&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218,&p_783->g_218}};
        uint8_t *l_220 = &p_783->g_90;
        int64_t **l_267 = (void*)0;
        uint32_t l_280 = 0UL;
        int32_t *l_340 = &l_247;
        int8_t ***l_352 = &l_289;
        int64_t l_353 = 0x098BB123F9A677B1L;
        int64_t *l_370 = &p_783->g_218;
        union U1 *l_379 = &p_783->g_380;
        int64_t l_532 = 0x6825EC0CCE52EA71L;
        int64_t l_585 = 0x0CF8B8B67D0525CCL;
        int i, j;
        (1 + 1);
    }
    return l_414;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_62(int16_t  p_63, int8_t  p_64, int32_t  p_65, uint16_t  p_66, struct S3 * p_783)
{ /* block id: 54 */
    uint8_t *l_189 = &p_783->g_90;
    uint8_t **l_188 = &l_189;
    uint8_t ***l_190 = &l_188;
    (*l_190) = l_188;
    return p_64;
}


/* ------------------------------------------ */
/* 
 * reads : p_783->g_90 p_783->g_44 p_783->g_45 p_783->g_154 p_783->g_169 p_783->g_78 p_783->g_184 p_783->g_187
 * writes: p_783->g_90 p_783->g_45 p_783->g_154 p_783->g_169 p_783->g_184
 */
struct S0  func_71(int32_t  p_72, int32_t * p_73, int32_t ** p_74, union U2  p_75, struct S3 * p_783)
{ /* block id: 35 */
    uint64_t l_167[4];
    int32_t **l_176[8][4] = {{&p_783->g_45,&p_783->g_45,&p_783->g_45,&p_783->g_45},{&p_783->g_45,&p_783->g_45,&p_783->g_45,&p_783->g_45},{&p_783->g_45,&p_783->g_45,&p_783->g_45,&p_783->g_45},{&p_783->g_45,&p_783->g_45,&p_783->g_45,&p_783->g_45},{&p_783->g_45,&p_783->g_45,&p_783->g_45,&p_783->g_45},{&p_783->g_45,&p_783->g_45,&p_783->g_45,&p_783->g_45},{&p_783->g_45,&p_783->g_45,&p_783->g_45,&p_783->g_45},{&p_783->g_45,&p_783->g_45,&p_783->g_45,&p_783->g_45}};
    uint8_t l_177 = 0x36L;
    int i, j;
    for (i = 0; i < 4; i++)
        l_167[i] = 1UL;
    for (p_75.f3 = 0; (p_75.f3 < (-19)); p_75.f3 = safe_sub_func_int32_t_s_s(p_75.f3, 2))
    { /* block id: 38 */
        uint32_t l_151 = 6UL;
        uint16_t l_152[4] = {65535UL,65535UL,65535UL,65535UL};
        int32_t l_178 = 0L;
        int i;
        (*p_74) = (*p_74);
        if (l_151)
            break;
        for (p_783->g_90 = 0; (p_783->g_90 <= 3); p_783->g_90 += 1)
        { /* block id: 43 */
            uint32_t *l_153 = &p_783->g_154[2][0][2];
            int64_t *l_168 = &p_783->g_169;
            int32_t l_179 = (-9L);
            int32_t l_180 = 0L;
            uint16_t l_181 = 2UL;
            int i;
            (*p_783->g_44) = (*p_783->g_44);
            l_178 ^= (((++(*l_153)) | ((safe_div_func_uint8_t_u_u((safe_div_func_int8_t_s_s((l_152[p_783->g_90] <= (safe_add_func_int32_t_s_s(l_152[p_783->g_90], (safe_mul_func_int16_t_s_s(p_75.f3, (safe_div_func_int64_t_s_s(((*l_168) ^= l_167[3]), (safe_mul_func_uint16_t_u_u((safe_sub_func_int16_t_s_s((p_75.f3 > 6UL), ((p_72 & ((&p_783->g_45 == ((safe_mod_func_int8_t_s_s(((void*)0 == l_176[5][3]), l_177)) , (void*)0)) <= l_152[p_783->g_90])) == 0x5C63L))), l_152[p_783->g_90]))))))))), 1UL)), 1UL)) >= 1L)) | (**p_74));
            l_181++;
            l_180 |= l_178;
        }
    }
    p_783->g_184--;
    return p_783->g_187;
}


/* ------------------------------------------ */
/* 
 * reads : p_783->g_106 p_783->g_90 p_783->g_4 p_783->g_52 p_783->g_43 p_783->g_107
 * writes: p_783->g_43
 */
union U2  func_79(int8_t * p_80, uint32_t  p_81, uint32_t  p_82, int16_t  p_83, struct S3 * p_783)
{ /* block id: 16 */
    int8_t *l_99 = &p_783->g_52;
    int8_t *l_101 = &p_783->g_43;
    int8_t **l_100 = &l_101;
    int32_t l_102[3][7][6] = {{{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L}},{{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L}},{{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L},{0L,0L,0x691D5B90L,0L,0L,0L}}};
    int16_t l_103 = 0L;
    struct S0 l_110[1][2] = {{{-2L},{-2L}}};
    struct S0 *l_111 = &l_110[0][1];
    int32_t *l_113 = &l_102[2][0][1];
    int32_t **l_112 = &l_113;
    union U2 l_148[8][1][1] = {{{{0xAB63100998834848L}}},{{{0xAB63100998834848L}}},{{{0xAB63100998834848L}}},{{{0xAB63100998834848L}}},{{{0xAB63100998834848L}}},{{{0xAB63100998834848L}}},{{{0xAB63100998834848L}}},{{{0xAB63100998834848L}}}};
    int i, j, k;
    (*l_111) = (((((safe_sub_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u((safe_add_func_uint8_t_u_u((l_99 != ((*l_100) = l_99)), 0xCFL)), (l_102[2][1][1] < l_103))), ((safe_sub_func_uint32_t_u_u(p_82, (&p_80 == p_783->g_106))) | (safe_mod_func_uint64_t_u_u(p_783->g_90, p_783->g_4))))) == 0x4B4F512441043A42L) >= p_82) & p_783->g_52) , l_110[0][1]);
    (*l_112) = &l_102[2][1][1];
    for (p_83 = 0; (p_83 <= 18); p_83 = safe_add_func_int64_t_s_s(p_83, 1))
    { /* block id: 22 */
        uint32_t l_137 = 0x71CA78ACL;
        uint16_t l_140[10][2][8] = {{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}},{{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L},{0xCB2EL,0x7917L,65531UL,0x0DB5L,0x7917L,0x0DB5L,65531UL,0x7917L}}};
        int32_t l_144 = 0x264474F4L;
        int i, j, k;
        for (p_783->g_43 = (-11); (p_783->g_43 != (-1)); p_783->g_43 = safe_add_func_int8_t_s_s(p_783->g_43, 1))
        { /* block id: 25 */
            uint32_t l_143 = 0x4D657348L;
            l_144 = ((safe_mul_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(((safe_rshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((safe_unary_minus_func_int64_t_s((safe_rshift_func_int16_t_s_u(((safe_mod_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_783->local_1_offset, get_local_id(1), 10), p_783->g_43)) >= 0x598881B111D6B667L), (p_82 <= l_137))), 1)) , ((**l_112) || ((+p_82) == (safe_rshift_func_uint16_t_u_s((p_81 , l_140[7][0][1]), (safe_mul_func_uint8_t_u_u(l_143, l_137))))))), p_81)) || p_81), FAKE_DIVERGE(p_783->global_2_offset, get_global_id(2), 10))))), l_140[5][0][0])), (**p_783->g_106))) <= 0x033FEF3BFE2B3C89L), 15)), 1L)) , p_81);
        }
    }
    for (p_81 = 0; (p_81 <= 32); ++p_81)
    { /* block id: 31 */
        union U2 l_147[8][8] = {{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}},{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}},{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}},{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}},{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}},{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}},{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}},{{1UL},{1UL},{0x62ED815CE37C20D5L},{18446744073709551611UL},{1UL},{18446744073709551611UL},{0x62ED815CE37C20D5L},{1UL}}};
        int i, j;
        return l_147[1][0];
    }
    return l_148[4][0][0];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_784;
    struct S3* p_783 = &c_784;
    struct S3 c_785 = {
        0x79CF1813L, // p_783->g_4
        0x7812A3CC92EA21E1L, // p_783->g_6
        0x3DL, // p_783->g_43
        (void*)0, // p_783->g_45
        &p_783->g_45, // p_783->g_44
        0L, // p_783->g_52
        (-1L), // p_783->g_78
        0x6EL, // p_783->g_90
        &p_783->g_43, // p_783->g_107
        &p_783->g_107, // p_783->g_106
        {{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}},{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}},{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}},{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}},{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}},{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}},{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}},{{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL},{0xF077A860L,3UL,4294967292UL}}}, // p_783->g_154
        0L, // p_783->g_169
        1UL, // p_783->g_184
        {0x13L}, // p_783->g_187
        (-1L), // p_783->g_211
        0x5968C18A0E89C3F4L, // p_783->g_218
        0x0BA9L, // p_783->g_219
        0xDE0B9F2EA3B7AFEDL, // p_783->g_238
        (void*)0, // p_783->g_243
        {0xBCL,0xBCL}, // p_783->g_257
        {0xDE4E20D7188630F0L}, // p_783->g_300
        0xB909C929L, // p_783->g_310
        0x6D73L, // p_783->g_323
        &p_783->g_323, // p_783->g_322
        &p_783->g_322, // p_783->g_321
        1L, // p_783->g_334
        {{3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL}}, // p_783->g_346
        {0}, // p_783->g_380
        {0}, // p_783->g_383
        {0}, // p_783->g_384
        {0}, // p_783->g_385
        {{&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383},{&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383},{&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383},{&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383,&p_783->g_383}}, // p_783->g_382
        &p_783->g_187, // p_783->g_449
        &p_783->g_449, // p_783->g_448
        &p_783->g_449, // p_783->g_452
        (-5L), // p_783->g_459
        &p_783->g_257[0], // p_783->g_492
        &p_783->g_492, // p_783->g_491
        18446744073709551611UL, // p_783->g_520
        18446744073709551611UL, // p_783->g_533
        18446744073709551615UL, // p_783->g_543
        {0}, // p_783->g_578
        {{&p_783->g_459,(void*)0,&p_783->g_459},{&p_783->g_459,(void*)0,&p_783->g_459},{&p_783->g_459,(void*)0,&p_783->g_459},{&p_783->g_459,(void*)0,&p_783->g_459},{&p_783->g_459,(void*)0,&p_783->g_459},{&p_783->g_459,(void*)0,&p_783->g_459},{&p_783->g_459,(void*)0,&p_783->g_459},{&p_783->g_459,(void*)0,&p_783->g_459},{&p_783->g_459,(void*)0,&p_783->g_459}}, // p_783->g_581
        {{0x2FA8FD060D3C6187L,0x6FFDB6FCEF2FA626L,0x2FA8FD060D3C6187L,0x2FA8FD060D3C6187L,0x6FFDB6FCEF2FA626L,0x2FA8FD060D3C6187L,0x2FA8FD060D3C6187L},{0x2FA8FD060D3C6187L,0x6FFDB6FCEF2FA626L,0x2FA8FD060D3C6187L,0x2FA8FD060D3C6187L,0x6FFDB6FCEF2FA626L,0x2FA8FD060D3C6187L,0x2FA8FD060D3C6187L},{0x2FA8FD060D3C6187L,0x6FFDB6FCEF2FA626L,0x2FA8FD060D3C6187L,0x2FA8FD060D3C6187L,0x6FFDB6FCEF2FA626L,0x2FA8FD060D3C6187L,0x2FA8FD060D3C6187L},{0x2FA8FD060D3C6187L,0x6FFDB6FCEF2FA626L,0x2FA8FD060D3C6187L,0x2FA8FD060D3C6187L,0x6FFDB6FCEF2FA626L,0x2FA8FD060D3C6187L,0x2FA8FD060D3C6187L},{0x2FA8FD060D3C6187L,0x6FFDB6FCEF2FA626L,0x2FA8FD060D3C6187L,0x2FA8FD060D3C6187L,0x6FFDB6FCEF2FA626L,0x2FA8FD060D3C6187L,0x2FA8FD060D3C6187L},{0x2FA8FD060D3C6187L,0x6FFDB6FCEF2FA626L,0x2FA8FD060D3C6187L,0x2FA8FD060D3C6187L,0x6FFDB6FCEF2FA626L,0x2FA8FD060D3C6187L,0x2FA8FD060D3C6187L},{0x2FA8FD060D3C6187L,0x6FFDB6FCEF2FA626L,0x2FA8FD060D3C6187L,0x2FA8FD060D3C6187L,0x6FFDB6FCEF2FA626L,0x2FA8FD060D3C6187L,0x2FA8FD060D3C6187L}}, // p_783->g_634
        1L, // p_783->g_635
        (-1L), // p_783->g_636
        {0x44L,0x44L,0x44L,0x44L,0x44L,0x44L,0x44L}, // p_783->g_637
        {0x2BL}, // p_783->g_650
        &p_783->g_650, // p_783->g_649
        &p_783->g_649, // p_783->g_648
        &p_783->g_648, // p_783->g_647
        &p_783->g_647, // p_783->g_646
        {255UL,255UL,255UL,255UL,255UL,255UL,255UL}, // p_783->g_653
        0x1524F95EL, // p_783->g_717
        &p_783->g_717, // p_783->g_720
        &p_783->g_720, // p_783->g_719
        {0xC4L,0xF3L,0xC4L,0xC4L,0xF3L,0xC4L,0xC4L,0xF3L,0xC4L}, // p_783->g_721
        0xB1F6B0E9L, // p_783->g_743
        0UL, // p_783->g_782
        sequence_input[get_global_id(0)], // p_783->global_0_offset
        sequence_input[get_global_id(1)], // p_783->global_1_offset
        sequence_input[get_global_id(2)], // p_783->global_2_offset
        sequence_input[get_local_id(0)], // p_783->local_0_offset
        sequence_input[get_local_id(1)], // p_783->local_1_offset
        sequence_input[get_local_id(2)], // p_783->local_2_offset
        sequence_input[get_group_id(0)], // p_783->group_0_offset
        sequence_input[get_group_id(1)], // p_783->group_1_offset
        sequence_input[get_group_id(2)], // p_783->group_2_offset
    };
    c_784 = c_785;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_783);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_783->g_4, "p_783->g_4", print_hash_value);
    transparent_crc(p_783->g_6, "p_783->g_6", print_hash_value);
    transparent_crc(p_783->g_43, "p_783->g_43", print_hash_value);
    transparent_crc(p_783->g_52, "p_783->g_52", print_hash_value);
    transparent_crc(p_783->g_78, "p_783->g_78", print_hash_value);
    transparent_crc(p_783->g_90, "p_783->g_90", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_783->g_154[i][j][k], "p_783->g_154[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_783->g_169, "p_783->g_169", print_hash_value);
    transparent_crc(p_783->g_184, "p_783->g_184", print_hash_value);
    transparent_crc(p_783->g_187.f0, "p_783->g_187.f0", print_hash_value);
    transparent_crc(p_783->g_211, "p_783->g_211", print_hash_value);
    transparent_crc(p_783->g_218, "p_783->g_218", print_hash_value);
    transparent_crc(p_783->g_219, "p_783->g_219", print_hash_value);
    transparent_crc(p_783->g_238, "p_783->g_238", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_783->g_257[i], "p_783->g_257[i]", print_hash_value);

    }
    transparent_crc(p_783->g_300.f1, "p_783->g_300.f1", print_hash_value);
    transparent_crc(p_783->g_310, "p_783->g_310", print_hash_value);
    transparent_crc(p_783->g_323, "p_783->g_323", print_hash_value);
    transparent_crc(p_783->g_334, "p_783->g_334", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_783->g_346[i][j], "p_783->g_346[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_783->g_459, "p_783->g_459", print_hash_value);
    transparent_crc(p_783->g_520, "p_783->g_520", print_hash_value);
    transparent_crc(p_783->g_533, "p_783->g_533", print_hash_value);
    transparent_crc(p_783->g_543, "p_783->g_543", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_783->g_634[i][j], "p_783->g_634[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_783->g_635, "p_783->g_635", print_hash_value);
    transparent_crc(p_783->g_636, "p_783->g_636", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_783->g_637[i], "p_783->g_637[i]", print_hash_value);

    }
    transparent_crc(p_783->g_650.f0, "p_783->g_650.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_783->g_653[i], "p_783->g_653[i]", print_hash_value);

    }
    transparent_crc(p_783->g_717, "p_783->g_717", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_783->g_721[i], "p_783->g_721[i]", print_hash_value);

    }
    transparent_crc(p_783->g_743, "p_783->g_743", print_hash_value);
    transparent_crc(p_783->g_782, "p_783->g_782", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
