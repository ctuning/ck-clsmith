// ---fake_divergence -g 37,43,5 -l 37,1,1
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


// Seed: 132

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    volatile int32_t g_5;
    volatile int32_t g_6;
    volatile VECTOR(int32_t, 16) g_7;
    int32_t g_8;
    int32_t g_37;
    int32_t *g_36;
    int32_t ** volatile g_39;
    volatile uint64_t g_40[1][1];
    int32_t g_63;
    uint32_t g_68;
    int8_t g_75[4];
    int8_t g_88;
    int32_t *g_110;
    int32_t **g_109;
    uint64_t g_126;
    uint32_t g_130;
    VECTOR(int32_t, 8) g_158;
    VECTOR(int8_t, 8) g_163;
    int16_t g_169;
    VECTOR(int16_t, 16) g_171;
    uint64_t g_179;
    int64_t g_180;
    uint8_t g_182;
    int32_t g_190;
    int32_t g_194;
    VECTOR(int16_t, 2) g_202;
    VECTOR(int16_t, 16) g_205;
    uint32_t g_224;
    int16_t g_244[9];
    int16_t g_247;
    int32_t g_248;
    uint16_t g_253;
    int8_t *g_259;
    int8_t **g_258[4][10][5];
    volatile int16_t **g_283[3];
    VECTOR(uint64_t, 4) g_292;
    int16_t g_293;
    VECTOR(uint64_t, 2) g_304;
    uint16_t g_320;
    int32_t g_352;
    int16_t **g_376;
    VECTOR(int8_t, 16) g_393;
    VECTOR(int8_t, 4) g_397;
    VECTOR(int8_t, 2) g_398;
    VECTOR(int8_t, 2) g_399;
    VECTOR(int8_t, 8) g_408;
    int64_t g_444;
    int64_t g_445;
    int32_t g_450[10];
    int32_t g_451;
    int32_t g_452[9][3];
    uint8_t g_453;
    VECTOR(int16_t, 8) g_481;
    uint8_t g_495;
    uint8_t *g_505;
    uint8_t **g_504[5][1];
    int64_t g_513;
    int16_t g_514;
    uint32_t g_515;
    VECTOR(int16_t, 8) g_532;
    VECTOR(uint32_t, 2) g_546;
    VECTOR(uint32_t, 16) g_559;
    int16_t g_615;
    int32_t g_616;
    uint32_t g_620;
    VECTOR(int16_t, 8) g_626;
    VECTOR(int16_t, 8) g_627;
    uint32_t g_648;
    uint64_t *g_676;
    uint64_t * volatile *g_675;
    uint64_t * volatile **g_674;
    uint64_t g_692;
    int16_t g_700;
    int16_t g_702;
    int32_t ** volatile g_721[10][1][7];
    VECTOR(int32_t, 2) g_751;
    uint32_t g_770[8];
    volatile VECTOR(int32_t, 8) g_794;
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
uint16_t  func_1(struct S0 * p_798);
int32_t * func_11(uint64_t  p_12, int32_t * p_13, int16_t  p_14, struct S0 * p_798);
uint64_t  func_22(int32_t * p_23, uint16_t  p_24, int32_t * p_25, uint32_t  p_26, int32_t * p_27, struct S0 * p_798);
uint16_t  func_30(uint8_t  p_31, struct S0 * p_798);
int32_t * func_32(uint8_t  p_33, struct S0 * p_798);
int32_t * func_44(int8_t  p_45, int32_t * p_46, int32_t  p_47, int32_t ** p_48, int32_t  p_49, struct S0 * p_798);
int64_t  func_53(int32_t * p_54, int32_t ** p_55, int8_t  p_56, struct S0 * p_798);
int32_t ** func_98(int32_t  p_99, int32_t  p_100, int32_t ** p_101, int32_t * p_102, struct S0 * p_798);
int32_t ** func_104(int32_t ** p_105, int8_t * p_106, int32_t ** p_107, int32_t ** p_108, struct S0 * p_798);
int8_t * func_111(int32_t * p_112, int32_t  p_113, int64_t  p_114, int32_t ** p_115, int32_t * p_116, struct S0 * p_798);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_798->g_2 p_798->g_109 p_798->g_505 p_798->g_182 p_798->g_8 p_798->g_37 p_798->g_444 p_798->g_259 p_798->g_88 p_798->g_75 p_798->g_674 p_798->g_675 p_798->g_676 p_798->g_179 p_798->g_559
 * writes: p_798->g_2 p_798->g_8 p_798->g_110 p_798->g_182 p_798->g_513 p_798->g_444 p_798->g_75 p_798->g_770
 */
uint16_t  func_1(struct S0 * p_798)
{ /* block id: 4 */
    int32_t *l_57[8];
    VECTOR(int64_t, 4) l_755 = (VECTOR(int64_t, 4))(0x7A8FD077954722ECL, (VECTOR(int64_t, 2))(0x7A8FD077954722ECL, (-3L)), (-3L));
    uint32_t l_769 = 6UL;
    uint32_t l_772 = 4294967288UL;
    int8_t **l_780[8][4][3] = {{{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0}},{{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0}},{{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0}},{{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0}},{{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0}},{{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0}},{{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0}},{{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0},{&p_798->g_259,&p_798->g_259,(void*)0}}};
    int8_t *l_782 = (void*)0;
    int8_t **l_781 = &l_782;
    int16_t l_784 = 0x5127L;
    uint32_t l_785 = 0xA4F52A36L;
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_57[i] = (void*)0;
    for (p_798->g_2 = 21; (p_798->g_2 < (-5)); p_798->g_2 = safe_sub_func_uint16_t_u_u(p_798->g_2, 2))
    { /* block id: 7 */
        uint32_t l_15[10][1][7] = {{{4294967295UL,0xBA8B35EDL,0xDE0980DBL,0xBA8B35EDL,4294967295UL,4294967295UL,0xBA8B35EDL}},{{4294967295UL,0xBA8B35EDL,0xDE0980DBL,0xBA8B35EDL,4294967295UL,4294967295UL,0xBA8B35EDL}},{{4294967295UL,0xBA8B35EDL,0xDE0980DBL,0xBA8B35EDL,4294967295UL,4294967295UL,0xBA8B35EDL}},{{4294967295UL,0xBA8B35EDL,0xDE0980DBL,0xBA8B35EDL,4294967295UL,4294967295UL,0xBA8B35EDL}},{{4294967295UL,0xBA8B35EDL,0xDE0980DBL,0xBA8B35EDL,4294967295UL,4294967295UL,0xBA8B35EDL}},{{4294967295UL,0xBA8B35EDL,0xDE0980DBL,0xBA8B35EDL,4294967295UL,4294967295UL,0xBA8B35EDL}},{{4294967295UL,0xBA8B35EDL,0xDE0980DBL,0xBA8B35EDL,4294967295UL,4294967295UL,0xBA8B35EDL}},{{4294967295UL,0xBA8B35EDL,0xDE0980DBL,0xBA8B35EDL,4294967295UL,4294967295UL,0xBA8B35EDL}},{{4294967295UL,0xBA8B35EDL,0xDE0980DBL,0xBA8B35EDL,4294967295UL,4294967295UL,0xBA8B35EDL}},{{4294967295UL,0xBA8B35EDL,0xDE0980DBL,0xBA8B35EDL,4294967295UL,4294967295UL,0xBA8B35EDL}}};
        VECTOR(int64_t, 4) l_52 = (VECTOR(int64_t, 4))(2L, (VECTOR(int64_t, 2))(2L, 1L), 1L);
        int32_t *l_71 = &p_798->g_8;
        uint32_t l_744 = 0x5708AEB0L;
        int32_t l_745 = 6L;
        int32_t *l_746 = &p_798->g_2;
        int32_t *l_750 = &p_798->g_8;
        VECTOR(int64_t, 4) l_756 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0L), 0L);
        VECTOR(int64_t, 4) l_757 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x7C3EEF9B073C55CFL), 0x7C3EEF9B073C55CFL);
        int64_t l_762 = (-1L);
        int16_t *l_771 = &p_798->g_615;
        int64_t *l_777 = (void*)0;
        int64_t *l_778 = &p_798->g_513;
        int8_t *l_779 = &p_798->g_75[3];
        uint8_t *l_783[8][1][2] = {{{&p_798->g_495,&p_798->g_495}},{{&p_798->g_495,&p_798->g_495}},{{&p_798->g_495,&p_798->g_495}},{{&p_798->g_495,&p_798->g_495}},{{&p_798->g_495,&p_798->g_495}},{{&p_798->g_495,&p_798->g_495}},{{&p_798->g_495,&p_798->g_495}},{{&p_798->g_495,&p_798->g_495}}};
        uint32_t *l_795 = (void*)0;
        uint32_t *l_796 = &p_798->g_770[2];
        int16_t l_797[8];
        int i, j, k;
        for (i = 0; i < 8; i++)
            l_797[i] = (-4L);
        for (p_798->g_8 = 0; (p_798->g_8 >= 4); p_798->g_8 = safe_add_func_int16_t_s_s(p_798->g_8, 3))
        { /* block id: 10 */
            int32_t *l_29 = &p_798->g_2;
            int32_t **l_28 = &l_29;
            uint32_t l_749 = 8UL;
            uint8_t **l_758 = &p_798->g_505;
            int32_t l_759[2];
            int i;
            for (i = 0; i < 2; i++)
                l_759[i] = 0x7E119CC8L;
            (1 + 1);
        }
        (*p_798->g_109) = l_57[3];
        l_797[1] |= (safe_rshift_func_int16_t_s_u(((((((--(*p_798->g_505)) , ((*l_750) <= (p_798->g_444 |= ((*l_778) = p_798->g_37)))) != (((*l_779) |= (*p_798->g_259)) == (l_784 = (l_780[6][1][2] == (l_781 = &p_798->g_259))))) >= l_785) >= (((safe_sub_func_int8_t_s_s((safe_unary_minus_func_uint8_t_u((((*l_796) = (safe_div_func_int8_t_s_s(0L, (safe_add_func_int64_t_s_s(((safe_unary_minus_func_int16_t_s((0x6E80AE88L == ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(p_798->g_794.s11)).xxyyyxxxyxxyyyyy)).s4))) && ((*l_750) ^ 0xD86CL)), (***p_798->g_674)))))) || (*l_750)))), (*l_746))) , &l_57[5]) == &l_71)) & 0x3E723EA659100036L), 10));
    }
    return p_798->g_559.sd;
}


/* ------------------------------------------ */
/* 
 * reads : p_798->g_2 p_798->g_63
 * writes: p_798->g_110 p_798->g_63
 */
int32_t * func_11(uint64_t  p_12, int32_t * p_13, int16_t  p_14, struct S0 * p_798)
{ /* block id: 279 */
    int32_t **l_747 = &p_798->g_110;
    int32_t *l_748 = &p_798->g_63;
    (*l_747) = p_13;
    (*l_748) = (*p_13);
    (*l_748) = (*l_748);
    return p_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_798->g_179 p_798->g_224 p_798->g_452 p_798->g_676
 * writes: p_798->g_179 p_798->g_224 p_798->g_130 p_798->g_451
 */
uint64_t  func_22(int32_t * p_23, uint16_t  p_24, int32_t * p_25, uint32_t  p_26, int32_t * p_27, struct S0 * p_798)
{ /* block id: 261 */
    int32_t *l_706[10][3] = {{&p_798->g_451,(void*)0,&p_798->g_451},{&p_798->g_451,(void*)0,&p_798->g_451},{&p_798->g_451,(void*)0,&p_798->g_451},{&p_798->g_451,(void*)0,&p_798->g_451},{&p_798->g_451,(void*)0,&p_798->g_451},{&p_798->g_451,(void*)0,&p_798->g_451},{&p_798->g_451,(void*)0,&p_798->g_451},{&p_798->g_451,(void*)0,&p_798->g_451},{&p_798->g_451,(void*)0,&p_798->g_451},{&p_798->g_451,(void*)0,&p_798->g_451}};
    VECTOR(int16_t, 4) l_707 = (VECTOR(int16_t, 4))(0x321DL, (VECTOR(int16_t, 2))(0x321DL, 0x582EL), 0x582EL);
    uint16_t l_708 = 65535UL;
    uint64_t l_716 = 0UL;
    VECTOR(uint16_t, 2) l_736 = (VECTOR(uint16_t, 2))(0UL, 65528UL);
    VECTOR(uint16_t, 8) l_737 = (VECTOR(uint16_t, 8))(0x5E17L, (VECTOR(uint16_t, 4))(0x5E17L, (VECTOR(uint16_t, 2))(0x5E17L, 0x172FL), 0x172FL), 0x172FL, 0x5E17L, 0x172FL);
    uint16_t l_741 = 0x03AAL;
    int i, j;
    l_708--;
    for (p_798->g_179 = 0; (p_798->g_179 > 33); ++p_798->g_179)
    { /* block id: 265 */
        int32_t l_713[4][5];
        int32_t l_714 = 0x0D27A124L;
        int32_t l_715 = 2L;
        int i, j;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 5; j++)
                l_713[i][j] = 3L;
        }
        ++l_716;
    }
    for (p_798->g_224 = 0; (p_798->g_224 > 21); p_798->g_224 = safe_add_func_uint16_t_u_u(p_798->g_224, 1))
    { /* block id: 270 */
        int32_t **l_722 = &l_706[2][0];
        VECTOR(uint16_t, 2) l_735 = (VECTOR(uint16_t, 2))(65535UL, 6UL);
        int32_t l_740 = 8L;
        int i;
        (*l_722) = l_706[3][1];
        l_740 |= (safe_lshift_func_uint16_t_u_s(0xCB11L, (3L & ((safe_mul_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_s(((safe_lshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_s(p_26, 0)), 2)) & ((*p_27) = ((safe_div_func_uint32_t_u_u((1L < p_26), ((&p_798->g_224 == &p_798->g_224) ^ (((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(l_735.xxxx)), 65528UL, ((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(l_736.xyyy)))).hi, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(l_737.s2507)), 0xBCF9L, 0x2C53L, 65535UL, 0x3B56L)).s60))))), 0xC7F2L)).s73)).xyxx, ((VECTOR(uint16_t, 2))(0xDF83L, 0x9FA7L)).yxyy))).even)))).yxyxxxxxyyxxxxyx)).s6 | (p_798->g_452[0][1] >= ((p_798->g_130 = (((65535UL ^ p_24) , 247UL) > (-8L))) | 0UL)))))) > p_26))), p_24)) && p_24), 0x6D28L)) , p_24))));
    }
    --l_741;
    return (*p_798->g_676);
}


/* ------------------------------------------ */
/* 
 * reads : p_798->g_7 p_798->g_39 p_798->g_40 p_798->g_36 p_798->g_2 p_798->g_37
 * writes: p_798->g_36 p_798->g_7 p_798->g_40
 */
uint16_t  func_30(uint8_t  p_31, struct S0 * p_798)
{ /* block id: 12 */
    uint8_t l_43 = 0UL;
    (*p_798->g_39) = func_32(p_31, p_798);
    --p_798->g_40[0][0];
    l_43 = (**p_798->g_39);
    return p_798->g_37;
}


/* ------------------------------------------ */
/* 
 * reads : p_798->g_7
 * writes: p_798->g_36 p_798->g_7
 */
int32_t * func_32(uint8_t  p_33, struct S0 * p_798)
{ /* block id: 13 */
    int32_t *l_34[4] = {&p_798->g_2,&p_798->g_2,&p_798->g_2,&p_798->g_2};
    int32_t **l_35[3];
    int32_t *l_38 = &p_798->g_2;
    int i;
    for (i = 0; i < 3; i++)
        l_35[i] = &l_34[0];
    p_798->g_36 = l_34[0];
    p_798->g_7.s9 ^= p_33;
    return l_38;
}


/* ------------------------------------------ */
/* 
 * reads : p_798->g_63 p_798->g_180 p_798->g_171 p_798->g_8 p_798->g_452 p_798->g_495 p_798->g_304 p_798->g_504 p_798->g_259 p_798->g_253 p_798->g_515 p_798->g_109 p_798->g_110 p_798->g_158 p_798->g_293 p_798->g_247 p_798->g_620 p_798->g_626 p_798->g_627 p_798->g_481 p_798->g_68 p_798->g_648 p_798->g_444 p_798->g_616 p_798->g_88 p_798->g_190 p_798->g_674 p_798->g_505 p_798->g_182 p_798->g_37 p_798->g_450 p_798->g_692 p_798->g_352 p_798->g_675 p_798->g_676 p_798->g_179 p_798->g_393 p_798->g_532 p_798->g_546
 * writes: p_798->g_63 p_798->g_180 p_798->g_179 p_798->g_304 p_798->g_495 p_798->g_253 p_798->g_248 p_798->g_109 p_798->g_88 p_798->g_515 p_798->g_110 p_798->g_190 p_798->g_182 p_798->g_320 p_798->g_514 p_798->g_450 p_798->g_293 p_798->g_171 p_798->g_247 p_798->g_620 p_798->g_648 p_798->g_444 p_798->g_616
 */
int32_t * func_44(int8_t  p_45, int32_t * p_46, int32_t  p_47, int32_t ** p_48, int32_t  p_49, struct S0 * p_798)
{ /* block id: 25 */
    uint8_t l_94 = 8UL;
    VECTOR(int32_t, 16) l_118 = (VECTOR(int32_t, 16))(0x2FEF71A1L, (VECTOR(int32_t, 4))(0x2FEF71A1L, (VECTOR(int32_t, 2))(0x2FEF71A1L, 0x57098D29L), 0x57098D29L), 0x57098D29L, 0x2FEF71A1L, 0x57098D29L, (VECTOR(int32_t, 2))(0x2FEF71A1L, 0x57098D29L), (VECTOR(int32_t, 2))(0x2FEF71A1L, 0x57098D29L), 0x2FEF71A1L, 0x57098D29L, 0x2FEF71A1L, 0x57098D29L);
    VECTOR(int64_t, 4) l_120 = (VECTOR(int64_t, 4))(0x1085362DC179BD3BL, (VECTOR(int64_t, 2))(0x1085362DC179BD3BL, (-8L)), (-8L));
    int32_t *l_131[8][8][4] = {{{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0}},{{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0}},{{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0}},{{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0}},{{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0}},{{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0}},{{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0}},{{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0},{(void*)0,&p_798->g_37,&p_798->g_37,(void*)0}}};
    uint32_t l_250 = 0UL;
    int8_t ***l_281 = &p_798->g_258[2][0][1];
    uint32_t l_307 = 1UL;
    int32_t l_313[1];
    VECTOR(int16_t, 4) l_317 = (VECTOR(int16_t, 4))(0x56C7L, (VECTOR(int16_t, 2))(0x56C7L, 0L), 0L);
    VECTOR(uint32_t, 2) l_326 = (VECTOR(uint32_t, 2))(0x8B76930EL, 0x7ED798B9L);
    VECTOR(int8_t, 4) l_347 = (VECTOR(int8_t, 4))(0x39L, (VECTOR(int8_t, 2))(0x39L, 0x15L), 0x15L);
    int32_t l_350 = 0x67B709EFL;
    int32_t l_351 = 6L;
    VECTOR(int32_t, 16) l_373 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-3L)), (-3L)), (-3L), (-1L), (-3L), (VECTOR(int32_t, 2))((-1L), (-3L)), (VECTOR(int32_t, 2))((-1L), (-3L)), (-1L), (-3L), (-1L), (-3L));
    int16_t **l_378 = (void*)0;
    int8_t l_380 = 0x61L;
    VECTOR(int8_t, 8) l_394 = (VECTOR(int8_t, 8))(0x5FL, (VECTOR(int8_t, 4))(0x5FL, (VECTOR(int8_t, 2))(0x5FL, 0x29L), 0x29L), 0x29L, 0x5FL, 0x29L);
    VECTOR(int8_t, 2) l_402 = (VECTOR(int8_t, 2))(0x4AL, (-3L));
    VECTOR(int8_t, 8) l_403 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
    VECTOR(int8_t, 4) l_409 = (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0x16L), 0x16L);
    int32_t l_436 = 1L;
    int8_t l_437 = 0x5EL;
    uint16_t l_446[3];
    int64_t l_458 = 1L;
    int8_t l_486 = (-1L);
    VECTOR(int64_t, 2) l_499 = (VECTOR(int64_t, 2))(6L, 1L);
    int32_t l_540 = 1L;
    VECTOR(uint32_t, 8) l_547 = (VECTOR(uint32_t, 8))(0xF05F6007L, (VECTOR(uint32_t, 4))(0xF05F6007L, (VECTOR(uint32_t, 2))(0xF05F6007L, 4294967287UL), 4294967287UL), 4294967287UL, 0xF05F6007L, 4294967287UL);
    uint64_t l_587 = 0xF4E29D92CE86375BL;
    uint64_t *l_597[4][7] = {{(void*)0,&p_798->g_179,&p_798->g_126,&p_798->g_179,&p_798->g_126,&p_798->g_179,(void*)0},{(void*)0,&p_798->g_179,&p_798->g_126,&p_798->g_179,&p_798->g_126,&p_798->g_179,(void*)0},{(void*)0,&p_798->g_179,&p_798->g_126,&p_798->g_179,&p_798->g_126,&p_798->g_179,(void*)0},{(void*)0,&p_798->g_179,&p_798->g_126,&p_798->g_179,&p_798->g_126,&p_798->g_179,(void*)0}};
    uint64_t **l_596 = &l_597[3][4];
    uint64_t ***l_595 = &l_596;
    int32_t ***l_601[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_313[i] = 0x10B88506L;
    for (i = 0; i < 3; i++)
        l_446[i] = 0xBE54L;
    for (p_798->g_63 = 18; (p_798->g_63 >= (-14)); p_798->g_63 = safe_sub_func_uint32_t_u_u(p_798->g_63, 1))
    { /* block id: 28 */
        int8_t *l_74[8][10] = {{&p_798->g_75[3],&p_798->g_75[3],&p_798->g_75[3],(void*)0,&p_798->g_75[0],&p_798->g_75[1],(void*)0,&p_798->g_75[3],(void*)0,&p_798->g_75[1]},{&p_798->g_75[3],&p_798->g_75[3],&p_798->g_75[3],(void*)0,&p_798->g_75[0],&p_798->g_75[1],(void*)0,&p_798->g_75[3],(void*)0,&p_798->g_75[1]},{&p_798->g_75[3],&p_798->g_75[3],&p_798->g_75[3],(void*)0,&p_798->g_75[0],&p_798->g_75[1],(void*)0,&p_798->g_75[3],(void*)0,&p_798->g_75[1]},{&p_798->g_75[3],&p_798->g_75[3],&p_798->g_75[3],(void*)0,&p_798->g_75[0],&p_798->g_75[1],(void*)0,&p_798->g_75[3],(void*)0,&p_798->g_75[1]},{&p_798->g_75[3],&p_798->g_75[3],&p_798->g_75[3],(void*)0,&p_798->g_75[0],&p_798->g_75[1],(void*)0,&p_798->g_75[3],(void*)0,&p_798->g_75[1]},{&p_798->g_75[3],&p_798->g_75[3],&p_798->g_75[3],(void*)0,&p_798->g_75[0],&p_798->g_75[1],(void*)0,&p_798->g_75[3],(void*)0,&p_798->g_75[1]},{&p_798->g_75[3],&p_798->g_75[3],&p_798->g_75[3],(void*)0,&p_798->g_75[0],&p_798->g_75[1],(void*)0,&p_798->g_75[3],(void*)0,&p_798->g_75[1]},{&p_798->g_75[3],&p_798->g_75[3],&p_798->g_75[3],(void*)0,&p_798->g_75[0],&p_798->g_75[1],(void*)0,&p_798->g_75[3],(void*)0,&p_798->g_75[1]}};
        VECTOR(int32_t, 4) l_76 = (VECTOR(int32_t, 4))(0x7EDEBCD5L, (VECTOR(int32_t, 2))(0x7EDEBCD5L, 0x21B0A093L), 0x21B0A093L);
        uint32_t l_77 = 0x30DD3593L;
        int32_t *l_225 = &p_798->g_8;
        int32_t l_245[2];
        int16_t *l_308 = &p_798->g_244[0];
        VECTOR(uint16_t, 16) l_314 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x4CC3L), 0x4CC3L), 0x4CC3L, 1UL, 0x4CC3L, (VECTOR(uint16_t, 2))(1UL, 0x4CC3L), (VECTOR(uint16_t, 2))(1UL, 0x4CC3L), 1UL, 0x4CC3L, 1UL, 0x4CC3L);
        VECTOR(uint32_t, 4) l_339 = (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 0x0AB61AD7L), 0x0AB61AD7L);
        VECTOR(uint16_t, 2) l_340 = (VECTOR(uint16_t, 2))(65535UL, 65535UL);
        VECTOR(int8_t, 2) l_395 = (VECTOR(int8_t, 2))(0x49L, (-8L));
        VECTOR(int8_t, 2) l_400 = (VECTOR(int8_t, 2))((-1L), (-1L));
        uint32_t l_414 = 4294967295UL;
        uint64_t l_441 = 18446744073709551607UL;
        int32_t l_449 = 0L;
        int i, j;
        for (i = 0; i < 2; i++)
            l_245[i] = 0L;
        (1 + 1);
    }
    if ((!(safe_mul_func_int8_t_s_s(p_49, l_458))))
    { /* block id: 154 */
        int64_t l_463[4][7] = {{0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L},{0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L},{0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L},{0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L,0x5D85D09A7C258A83L}};
        VECTOR(int32_t, 16) l_464 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x64DB6603L), 0x64DB6603L), 0x64DB6603L, 0L, 0x64DB6603L, (VECTOR(int32_t, 2))(0L, 0x64DB6603L), (VECTOR(int32_t, 2))(0L, 0x64DB6603L), 0L, 0x64DB6603L, 0L, 0x64DB6603L);
        VECTOR(uint64_t, 4) l_472 = (VECTOR(uint64_t, 4))(0xC95B8A1C189A1F58L, (VECTOR(uint64_t, 2))(0xC95B8A1C189A1F58L, 18446744073709551614UL), 18446744073709551614UL);
        uint8_t **l_507 = &p_798->g_505;
        int32_t *l_518 = &p_798->g_63;
        int i, j;
        for (p_798->g_180 = 25; (p_798->g_180 < (-16)); p_798->g_180--)
        { /* block id: 157 */
            uint32_t *l_461 = (void*)0;
            uint32_t *l_462 = (void*)0;
            uint32_t *l_465 = &l_307;
            uint64_t *l_473 = &p_798->g_179;
            uint64_t **l_475[5][4][8] = {{{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0}},{{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0}},{{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0}},{{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0}},{{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,&l_473,&l_473,&l_473,(void*)0}}};
            uint64_t ***l_474 = &l_475[1][0][2];
            VECTOR(int16_t, 16) l_476 = (VECTOR(int16_t, 16))((-7L), (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), 0L), 0L), 0L, (-7L), 0L, (VECTOR(int16_t, 2))((-7L), 0L), (VECTOR(int16_t, 2))((-7L), 0L), (-7L), 0L, (-7L), 0L);
            int32_t l_491 = 0x2BEF7B10L;
            int32_t l_493 = 0x379FE730L;
            int32_t l_494[2];
            VECTOR(int64_t, 8) l_498 = (VECTOR(int64_t, 8))(0x59BB5A62FCCCAB67L, (VECTOR(int64_t, 4))(0x59BB5A62FCCCAB67L, (VECTOR(int64_t, 2))(0x59BB5A62FCCCAB67L, 0L), 0L), 0L, 0x59BB5A62FCCCAB67L, 0L);
            uint32_t l_511 = 0xF798A2CEL;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_494[i] = 7L;
            if ((p_798->g_171.sa > (p_798->g_304.x = (((!((**p_48) <= ((*l_465)++))) >= (safe_mul_func_int8_t_s_s(p_45, (((safe_mul_func_int8_t_s_s(((((((*l_473) = ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_472.zz)).xyxyyyyxxxxxyxxy)).s0) , ((VECTOR(uint8_t, 2))(1UL, 1UL)).hi) || ((l_464.s7 , l_474) == (void*)0)) , ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(l_476.sa421)), (safe_add_func_uint64_t_u_u((((safe_mul_func_int8_t_s_s((((((VECTOR(int16_t, 2))(p_798->g_481.s33)).odd && (((p_798->g_304.y | (safe_sub_func_uint8_t_u_u(((p_798->g_397.x == ((safe_mod_func_int8_t_s_s((*p_798->g_259), l_486)) > l_472.w)) | 0x4F69L), 1UL))) <= p_798->g_399.x) <= (*p_46))) ^ 0L) , p_45), 0x2CL)) , p_49) , l_464.s7), l_463[3][1])), p_49, ((VECTOR(int16_t, 8))(3L)), 4L, (-4L))).sf) != 0x46B1L), 0x27L)) | p_798->g_452[2][0]) < (-7L))))) > (*p_46)))))
            { /* block id: 161 */
                int8_t l_487[10][10];
                uint32_t l_488 = 4294967295UL;
                int32_t l_492[7];
                uint16_t *l_500 = &p_798->g_253;
                uint16_t l_510 = 0x3ED0L;
                int i, j;
                for (i = 0; i < 10; i++)
                {
                    for (j = 0; j < 10; j++)
                        l_487[i][j] = 5L;
                }
                for (i = 0; i < 7; i++)
                    l_492[i] = 2L;
                l_488--;
                p_798->g_495--;
                l_493 &= (((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(l_498.s56523262)))), ((VECTOR(int64_t, 4))(l_499.xyyx)).xzyxxwyz))).s5 == (((*l_500) = 65535UL) > p_798->g_304.x));
                for (p_798->g_248 = 0; (p_798->g_248 != 15); p_798->g_248 = safe_add_func_uint16_t_u_u(p_798->g_248, 3))
                { /* block id: 168 */
                    int32_t ***l_503 = &p_798->g_109;
                    uint8_t ***l_506[10];
                    int32_t l_512 = 0x4F2B03CBL;
                    int i;
                    for (i = 0; i < 10; i++)
                        l_506[i] = &p_798->g_504[2][0];
                    (*l_503) = &p_46;
                    l_507 = p_798->g_504[2][0];
                    l_511 &= (7L == ((0x448A4B00L < (p_47 & (((void*)0 == &p_46) <= (((*p_798->g_259) = p_49) != (((*l_500) |= ((VECTOR(uint16_t, 4))(0xECD7L, (((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 2))(4L, 9L)).yyyx, ((VECTOR(int64_t, 2))(0x3F8CCC5480A15F8AL, 0L)).yxyx))).z , (l_510 = (safe_mod_func_int64_t_s_s((0x48D195A07949D9DFL & p_45), l_492[2])))), 0xC84CL, 0x82CCL)).w) , l_487[3][7]))))) , 4UL));
                    --p_798->g_515;
                }
            }
            else
            { /* block id: 177 */
                return (*p_48);
            }
            (*p_798->g_109) = &l_313[0];
        }
        return l_518;
    }
    else
    { /* block id: 183 */
        uint64_t *l_529 = (void*)0;
        int32_t l_543 = 0x3FD68D6EL;
        VECTOR(int16_t, 4) l_590 = (VECTOR(int16_t, 4))(0x4FFDL, (VECTOR(int16_t, 2))(0x4FFDL, (-7L)), (-7L));
        VECTOR(int16_t, 8) l_591 = (VECTOR(int16_t, 8))(0x1947L, (VECTOR(int16_t, 4))(0x1947L, (VECTOR(int16_t, 2))(0x1947L, 8L), 8L), 8L, 0x1947L, 8L);
        VECTOR(int16_t, 16) l_592 = (VECTOR(int16_t, 16))(0x121CL, (VECTOR(int16_t, 4))(0x121CL, (VECTOR(int16_t, 2))(0x121CL, 0x2239L), 0x2239L), 0x2239L, 0x121CL, 0x2239L, (VECTOR(int16_t, 2))(0x121CL, 0x2239L), (VECTOR(int16_t, 2))(0x121CL, 0x2239L), 0x121CL, 0x2239L, 0x121CL, 0x2239L);
        int32_t ***l_598 = &p_798->g_109;
        int16_t l_611 = (-1L);
        int32_t l_613[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        uint64_t ***l_677 = &l_596;
        int8_t l_679[1][7][1] = {{{0x1CL},{0x1CL},{0x1CL},{0x1CL},{0x1CL},{0x1CL},{0x1CL}}};
        uint16_t l_703 = 0x5195L;
        int i, j, k;
lbl_552:
        for (l_436 = (-28); (l_436 >= 13); l_436 = safe_add_func_uint8_t_u_u(l_436, 8))
        { /* block id: 186 */
            VECTOR(uint32_t, 2) l_535 = (VECTOR(uint32_t, 2))(1UL, 8UL);
            uint64_t *l_541[10][5] = {{&p_798->g_126,&p_798->g_179,&p_798->g_126,&p_798->g_126,&p_798->g_179},{&p_798->g_126,&p_798->g_179,&p_798->g_126,&p_798->g_126,&p_798->g_179},{&p_798->g_126,&p_798->g_179,&p_798->g_126,&p_798->g_126,&p_798->g_179},{&p_798->g_126,&p_798->g_179,&p_798->g_126,&p_798->g_126,&p_798->g_179},{&p_798->g_126,&p_798->g_179,&p_798->g_126,&p_798->g_126,&p_798->g_179},{&p_798->g_126,&p_798->g_179,&p_798->g_126,&p_798->g_126,&p_798->g_179},{&p_798->g_126,&p_798->g_179,&p_798->g_126,&p_798->g_126,&p_798->g_179},{&p_798->g_126,&p_798->g_179,&p_798->g_126,&p_798->g_126,&p_798->g_179},{&p_798->g_126,&p_798->g_179,&p_798->g_126,&p_798->g_126,&p_798->g_179},{&p_798->g_126,&p_798->g_179,&p_798->g_126,&p_798->g_126,&p_798->g_179}};
            int32_t l_542 = 1L;
            int i, j;
            p_798->g_190 = (safe_mod_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s((((safe_sub_func_uint8_t_u_u((((-1L) && p_45) , ((l_529 != (void*)0) < (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 8))(p_798->g_532.s41460156)).s3, p_49)))), (safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(l_535.yyxxyyyxyyxyxyyy)).s4, l_535.y)))) >= (safe_mod_func_int8_t_s_s(1L, (safe_mod_func_uint8_t_u_u(((l_542 = l_540) , l_543), p_47))))) | l_535.y), 6)), GROUP_DIVERGE(1, 1))), l_535.x));
        }
        l_543 &= (FAKE_DIVERGE(p_798->group_0_offset, get_group_id(0), 10) <= (((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(p_798->g_546.yy)), 1UL, 4294967290UL)).xxyyyyyy, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(l_547.s61154145)).odd)).wzzwzzxxzzzwxzyz)))).lo))).s6357342525530506)).se == (*p_46)));
        for (p_798->g_182 = 7; (p_798->g_182 > 51); ++p_798->g_182)
        { /* block id: 193 */
            int32_t l_581 = (-2L);
            int32_t ***l_600 = (void*)0;
            int32_t l_619 = (-1L);
            int32_t l_654 = (-1L);
            int32_t l_655[5][1][5] = {{{(-6L),0x029DC1E5L,(-6L),(-6L),0x029DC1E5L}},{{(-6L),0x029DC1E5L,(-6L),(-6L),0x029DC1E5L}},{{(-6L),0x029DC1E5L,(-6L),(-6L),0x029DC1E5L}},{{(-6L),0x029DC1E5L,(-6L),(-6L),0x029DC1E5L}},{{(-6L),0x029DC1E5L,(-6L),(-6L),0x029DC1E5L}}};
            uint8_t l_656 = 0UL;
            uint64_t ***l_661 = &l_596;
            int i, j, k;
            for (p_45 = 0; (p_45 < (-29)); p_45 = safe_sub_func_int64_t_s_s(p_45, 7))
            { /* block id: 196 */
                if (p_798->g_180)
                    goto lbl_552;
            }
            for (p_798->g_320 = 10; (p_798->g_320 < 25); p_798->g_320 = safe_add_func_uint32_t_u_u(p_798->g_320, 1))
            { /* block id: 201 */
                VECTOR(int32_t, 16) l_560 = (VECTOR(int32_t, 16))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 1L), 1L), 1L, (-7L), 1L, (VECTOR(int32_t, 2))((-7L), 1L), (VECTOR(int32_t, 2))((-7L), 1L), (-7L), 1L, (-7L), 1L);
                uint32_t l_575 = 0xC0C344E2L;
                int32_t l_585 = 8L;
                int32_t ****l_599 = (void*)0;
                int32_t l_610 = 0x6068D32DL;
                int32_t l_612 = 0x5BEDCBD7L;
                int32_t l_617 = 0x7EA58DB0L;
                int32_t l_618 = 0x189CBF08L;
                int64_t l_646 = 0x70A57BE4EA2FC05DL;
                int16_t l_699 = 0x064EL;
                int i;
                for (p_798->g_514 = 0; (p_798->g_514 < (-9)); p_798->g_514 = safe_sub_func_int8_t_s_s(p_798->g_514, 4))
                { /* block id: 204 */
                    int32_t *l_561 = (void*)0;
                    int32_t *l_562[7][10][3] = {{{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0}},{{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0}},{{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0}},{{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0}},{{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0}},{{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0}},{{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0},{&l_351,&p_798->g_450[1],(void*)0}}};
                    int16_t *l_578 = &p_798->g_293;
                    int32_t l_579[4] = {8L,8L,8L,8L};
                    uint16_t *l_580 = &p_798->g_253;
                    int i, j, k;
                    (*p_48) = (*p_798->g_109);
                    l_581 ^= (0UL & (safe_lshift_func_uint16_t_u_u(p_49, (((*p_798->g_259) = (((((VECTOR(uint32_t, 2))(p_798->g_559.sc3)).odd , (p_798->g_450[4] = ((VECTOR(int32_t, 8))(l_560.s6857f960)).s5)) , (safe_rshift_func_uint16_t_u_u((((safe_sub_func_uint64_t_u_u(((p_49 >= (safe_mod_func_int64_t_s_s((safe_mul_func_uint16_t_u_u(0x80FCL, p_49)), (l_543 ^ (safe_rshift_func_uint16_t_u_u(((*l_580) = (safe_sub_func_uint8_t_u_u(((((l_575 != ((((((((~((*l_578) = (4UL < 1L))) < p_49) >= FAKE_DIVERGE(p_798->local_1_offset, get_local_id(1), 10)) ^ l_579[0]) ^ (*p_46)) ^ 1L) < FAKE_DIVERGE(p_798->global_2_offset, get_global_id(2), 10)) | 0L)) , &p_798->g_452[7][0]) == (void*)0) , 1UL), FAKE_DIVERGE(p_798->local_2_offset, get_local_id(2), 10)))), 5)))))) > 0x7FL), p_798->g_304.y)) , 0x5330B285L) && 1UL), 5))) >= (*p_46))) && 1L))));
                    if (l_579[0])
                        continue;
                    for (p_798->g_180 = (-4); (p_798->g_180 != 26); ++p_798->g_180)
                    { /* block id: 214 */
                        int16_t l_584[4] = {0x6579L,0x6579L,0x6579L,0x6579L};
                        int32_t l_586 = 0x0228938FL;
                        int i;
                        l_587--;
                    }
                }
                if (((((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 2))(l_590.zx)), ((VECTOR(int16_t, 16))(l_591.s4752032452774304)).s82))).yyxyyyxx, ((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 2))(4L, 0x5B5BL)), ((VECTOR(int16_t, 2))(0x2360L, 0x6577L))))).xxyyyxxy))).lo, ((VECTOR(int16_t, 2))(l_592.s83)).xyxy))).even)).odd || (safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_798->local_2_offset, get_local_id(2), 10), ((void*)0 != l_595)))) | ((1L | ((l_600 = l_598) == l_601[2])) != (p_798->g_158.s7 , ((p_45 | ((p_798->g_171.se ^= (safe_mod_func_uint64_t_u_u(p_47, (safe_mod_func_int64_t_s_s(p_798->g_293, 0xFEF1214F0B67EBBEL))))) ^ p_47)) == p_798->g_8)))))
                { /* block id: 220 */
                    int32_t l_608 = 0x78E5313EL;
                    int32_t l_609 = 2L;
                    for (p_798->g_247 = (-1); (p_798->g_247 <= (-21)); p_798->g_247 = safe_sub_func_int32_t_s_s(p_798->g_247, 1))
                    { /* block id: 223 */
                        int32_t l_614 = 0x77B0C8C1L;
                        uint8_t *l_638 = (void*)0;
                        uint8_t *l_639 = &p_798->g_495;
                        int16_t *l_640 = &l_611;
                        int16_t *l_641 = (void*)0;
                        int16_t *l_642[3][7][7] = {{{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]}},{{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]}},{{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]},{&p_798->g_247,&p_798->g_244[0],(void*)0,(void*)0,&p_798->g_244[0],&p_798->g_247,&p_798->g_244[0]}}};
                        int32_t l_645 = 0x6C1622DEL;
                        uint16_t *l_647 = &l_446[2];
                        int i, j, k;
                        ++p_798->g_620;
                        l_609 = ((safe_mod_func_uint16_t_u_u((safe_unary_minus_func_uint16_t_u((l_608 > (((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 2))(0x2CE8L, (-1L))).xyxy, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 2))(1L, 0x2B45L)).yxyyyxxy, ((VECTOR(int16_t, 8))(p_798->g_626.s37711722)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(p_798->g_627.s77)).xyxyxyyx))))).hi))))).y != (p_49 , (FAKE_DIVERGE(p_798->local_0_offset, get_local_id(0), 10) | l_614)))))), p_45)) > ((safe_mul_func_uint16_t_u_u((p_47 >= ((((*l_647) ^= (((safe_lshift_func_int8_t_s_s((p_798->g_481.s2 != ((l_645 = ((safe_rshift_func_uint16_t_u_s((safe_add_func_uint32_t_u_u((((p_798->g_171.sd = ((*l_640) = (safe_mul_func_int8_t_s_s(((((VECTOR(int64_t, 2))(1L, 0x1B04EC839E50464DL)).even >= FAKE_DIVERGE(p_798->global_1_offset, get_global_id(1), 10)) >= l_614), ((*l_639) |= p_49))))) , (safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(0UL, 5UL)).yxyyyxxyyyyyyxxx)).odd)).s0310404352563133, (uint16_t)(0x79E6L == p_47)))).s5d46)), ((VECTOR(uint16_t, 4))(0UL)))).s3770577426121011)).s9, (-1L)))) , GROUP_DIVERGE(2, 1)), p_47)), 5)) , FAKE_DIVERGE(p_798->group_2_offset, get_group_id(2), 10))) & (*p_46))), l_646)) <= 0xEAFFL) & 0x2CA10CD24804C6D3L)) < l_608) <= (-1L))), p_798->g_68)) < p_49));
                    }
                    --p_798->g_648;
                    (**l_598) = (**l_600);
                    if ((*p_46))
                        break;
                }
                else
                { /* block id: 235 */
                    int32_t l_651 = 1L;
                    int32_t l_652[4][10] = {{0L,0L,0L,(-1L),(-2L),(-1L),0L,0L,0L,0L},{0L,0L,0L,(-1L),(-2L),(-1L),0L,0L,0L,0L},{0L,0L,0L,(-1L),(-2L),(-1L),0L,0L,0L,0L},{0L,0L,0L,(-1L),(-2L),(-1L),0L,0L,0L,0L}};
                    int32_t l_653 = 0x58689C63L;
                    int i, j;
                    l_656++;
                }
                for (p_798->g_444 = 0; (p_798->g_444 >= 26); p_798->g_444 = safe_add_func_uint16_t_u_u(p_798->g_444, 3))
                { /* block id: 240 */
                    int32_t l_678 = (-5L);
                    int32_t l_695 = 0x711B92ECL;
                    int32_t l_696 = 5L;
                    int32_t l_698 = 0x1E3649FEL;
                    p_798->g_616 |= ((void*)0 != l_661);
                    p_798->g_616 &= (*p_46);
                    if ((safe_mod_func_int8_t_s_s((safe_div_func_int16_t_s_s(((VECTOR(int16_t, 8))(((~p_45) < (*p_798->g_259)), (safe_add_func_uint8_t_u_u(((safe_sub_func_uint64_t_u_u(((safe_add_func_uint64_t_u_u(p_798->g_190, GROUP_DIVERGE(2, 1))) , FAKE_DIVERGE(p_798->local_2_offset, get_local_id(2), 10)), (p_45 != (safe_lshift_func_uint8_t_u_s((p_45 , (p_798->g_674 != l_677)), 0))))) , (*p_798->g_505)), (p_798->g_37 ^ 1L))), 0x7EC8L, ((VECTOR(int16_t, 4))(0x4CA9L)), 0x1088L)).s6, l_678)), (*p_798->g_259))))
                    { /* block id: 243 */
                        if ((*p_46))
                            break;
                        return (*p_798->g_109);
                    }
                    else
                    { /* block id: 246 */
                        VECTOR(uint64_t, 4) l_682 = (VECTOR(uint64_t, 4))(0x5ACEC5E39BA67448L, (VECTOR(uint64_t, 2))(0x5ACEC5E39BA67448L, 0x1EDF1E69C34D8FA9L), 0x1EDF1E69C34D8FA9L);
                        uint16_t *l_691[2];
                        int32_t l_693 = 0x76DD5A27L;
                        int32_t l_694 = 0x4CEBEA5BL;
                        int32_t l_697 = 0x49EADD6BL;
                        int8_t l_701[7] = {0x65L,0x65L,0x65L,0x65L,0x65L,0x65L,0x65L};
                        int i;
                        for (i = 0; i < 2; i++)
                            l_691[i] = &p_798->g_253;
                        (*p_48) = (**l_600);
                        l_693 = (((l_679[0][4][0] == ((((l_600 != &p_798->g_109) , ((safe_unary_minus_func_int64_t_s((safe_unary_minus_func_int64_t_s((-1L))))) , ((VECTOR(uint64_t, 8))(l_682.xxxzywwz)).s2)) & (1UL && ((safe_mul_func_int8_t_s_s((((safe_lshift_func_uint8_t_u_s((((VECTOR(int64_t, 2))(0x5AC28AA81A54602DL, 0x70BC84B528BC5CBBL)).even < (((safe_add_func_uint16_t_u_u((p_798->g_253 = ((safe_mul_func_int8_t_s_s(0x37L, p_45)) , p_798->g_450[9])), 0x7A44L)) <= 0x56L) || GROUP_DIVERGE(0, 1))), 4)) <= p_47) <= p_47), p_798->g_692)) != p_798->g_352))) ^ (**p_798->g_675))) , p_798->g_393.s9) || FAKE_DIVERGE(p_798->local_0_offset, get_local_id(0), 10));
                        --l_703;
                        if (p_798->g_171.sb)
                            continue;
                    }
                    (*p_798->g_109) = (**l_598);
                }
                if ((*p_46))
                    break;
            }
            (*p_48) = (*p_798->g_109);
        }
    }
    return (*p_798->g_109);
}


/* ------------------------------------------ */
/* 
 * reads : p_798->g_68 p_798->g_2
 * writes: p_798->g_68
 */
int64_t  func_53(int32_t * p_54, int32_t ** p_55, int8_t  p_56, struct S0 * p_798)
{ /* block id: 21 */
    uint16_t l_58 = 65535UL;
    int32_t *l_61 = (void*)0;
    int32_t *l_62 = &p_798->g_63;
    int32_t *l_64 = &p_798->g_63;
    int32_t *l_65 = &p_798->g_63;
    int32_t l_66 = 0x3FE767E7L;
    int32_t *l_67[10] = {&p_798->g_8,&l_66,&p_798->g_8,&l_66,&p_798->g_8,&p_798->g_8,&l_66,&p_798->g_8,&l_66,&p_798->g_8};
    int i;
    l_58--;
    p_798->g_68--;
    return p_798->g_2;
}


/* ------------------------------------------ */
/* 
 * reads : p_798->g_75 p_798->g_180 p_798->g_224 p_798->g_68 p_798->g_110 p_798->g_194
 * writes: p_798->g_190 p_798->g_194
 */
int32_t ** func_98(int32_t  p_99, int32_t  p_100, int32_t ** p_101, int32_t * p_102, struct S0 * p_798)
{ /* block id: 68 */
    VECTOR(uint32_t, 8) l_238 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4UL), 4UL), 4UL, 0UL, 4UL);
    VECTOR(uint32_t, 8) l_241 = (VECTOR(uint32_t, 8))(4294967286UL, (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 2UL), 2UL), 2UL, 4294967286UL, 2UL);
    VECTOR(int32_t, 2) l_242 = (VECTOR(int32_t, 2))(0L, 0x6212CEEAL);
    int32_t *l_243 = &p_798->g_194;
    int i;
    (*l_243) &= (safe_sub_func_int8_t_s_s(p_798->g_75[3], ((safe_mul_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(p_798->g_180, (safe_mod_func_int32_t_s_s(((*p_798->g_110) = (safe_mod_func_uint8_t_u_u((((VECTOR(uint64_t, 4))(0x4BAF5F1EEABF4803L, ((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(1UL, 0x62704DB0D09343FEL))))))), 0UL)).z < (FAKE_DIVERGE(p_798->local_2_offset, get_local_id(2), 10) >= (safe_mul_func_int16_t_s_s(p_798->g_180, p_798->g_224)))), (4UL && (p_100 <= (((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(l_238.s64005264)).lo)).y == ((l_238.s1 == p_100) | (safe_add_func_uint64_t_u_u((((VECTOR(uint32_t, 4))(max(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_241.s16035351)).s7750607744525757)).s58cb, (uint32_t)(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(l_242.yyyy)).odd))).hi > p_99)))).w < p_99), p_798->g_68))))))))), 3UL)))), p_100)) & 251UL)));
    return &p_798->g_110;
}


/* ------------------------------------------ */
/* 
 * reads : p_798->g_180 p_798->g_75 p_798->g_109 p_798->g_202 p_798->g_205 p_798->g_190 p_798->g_163 p_798->g_182 p_798->g_110 p_798->g_194 p_798->g_224
 * writes: p_798->g_190 p_798->g_194 p_798->g_110 p_798->g_182 p_798->g_180 p_798->g_224
 */
int32_t ** func_104(int32_t ** p_105, int8_t * p_106, int32_t ** p_107, int32_t ** p_108, struct S0 * p_798)
{ /* block id: 59 */
    uint32_t l_187 = 0UL;
    int32_t *l_189 = &p_798->g_190;
    int32_t *l_191 = (void*)0;
    int32_t *l_192 = (void*)0;
    int32_t *l_193 = &p_798->g_194;
    VECTOR(uint16_t, 8) l_195 = (VECTOR(uint16_t, 8))(65529UL, (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 0x561AL), 0x561AL), 0x561AL, 65529UL, 0x561AL);
    VECTOR(int16_t, 8) l_200 = (VECTOR(int16_t, 8))(5L, (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, 0L), 0L), 0L, 5L, 0L);
    VECTOR(int16_t, 8) l_201 = (VECTOR(int16_t, 8))(0x7321L, (VECTOR(int16_t, 4))(0x7321L, (VECTOR(int16_t, 2))(0x7321L, 0x4FD5L), 0x4FD5L), 0x4FD5L, 0x7321L, 0x4FD5L);
    VECTOR(int16_t, 8) l_203 = (VECTOR(int16_t, 8))((-3L), (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 1L), 1L), 1L, (-3L), 1L);
    VECTOR(int16_t, 2) l_204 = (VECTOR(int16_t, 2))(0x38EDL, 0x6113L);
    VECTOR(int16_t, 16) l_206 = (VECTOR(int16_t, 16))(0x4740L, (VECTOR(int16_t, 4))(0x4740L, (VECTOR(int16_t, 2))(0x4740L, 0x2B73L), 0x2B73L), 0x2B73L, 0x4740L, 0x2B73L, (VECTOR(int16_t, 2))(0x4740L, 0x2B73L), (VECTOR(int16_t, 2))(0x4740L, 0x2B73L), 0x4740L, 0x2B73L, 0x4740L, 0x2B73L);
    VECTOR(int16_t, 16) l_207 = (VECTOR(int16_t, 16))(0x491FL, (VECTOR(int16_t, 4))(0x491FL, (VECTOR(int16_t, 2))(0x491FL, (-2L)), (-2L)), (-2L), 0x491FL, (-2L), (VECTOR(int16_t, 2))(0x491FL, (-2L)), (VECTOR(int16_t, 2))(0x491FL, (-2L)), 0x491FL, (-2L), 0x491FL, (-2L));
    uint8_t *l_216 = &p_798->g_182;
    int64_t *l_221 = &p_798->g_180;
    uint32_t l_222 = 0x4EA202B7L;
    uint32_t *l_223[8];
    int i;
    for (i = 0; i < 8; i++)
        l_223[i] = &p_798->g_224;
    (*l_193) = ((*l_189) = (safe_mod_func_uint16_t_u_u(l_187, (safe_unary_minus_func_int8_t_s(p_798->g_180)))));
    l_192 = ((p_798->g_224 ^= (((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 16))(l_195.s0225050542365746)).even, ((VECTOR(uint16_t, 16))(((p_798->g_75[3] <= (((safe_add_func_uint64_t_u_u((&l_187 == &p_798->g_130), (safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_200.s64)), 8L, 0x38E2L)).w, ((((*p_798->g_109) = l_189) == (void*)0) || ((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 16))(l_201.s7256567442407033)).se111, ((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 16))(p_798->g_202.yyyyyyyxyxxyyyyy)).s52, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 16))(l_203.s2714333263000311)).s6a, ((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 2))(0x5589L, 0x4C40L)).xxyxxxxxyxxxyxyy, ((VECTOR(int16_t, 4))(l_204.yxyy)).xzywxzwywyyzywxx))).sa9, ((VECTOR(int16_t, 8))(p_798->g_205.s0280cff7)).s40))).xyyyxyxxyxyxyxxx)).s96))).xyxy))), ((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_206.s31)), 0x7CBBL, 0x196FL)), (int16_t)(*l_189))))))).xywxyxww, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_207.se16b)), (safe_mod_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u((safe_mul_func_int8_t_s_s(p_798->g_163.s2, (((*l_216)++) , ((safe_sub_func_int32_t_s_s((18446744073709551611UL <= ((*l_221) = p_798->g_182)), (**p_105))) && (**p_107))))), 7)), (*l_189))), (*l_189))), (-1L), 0x0E3EL, 0x0FF7L))))).s2))))) | (*l_189)) , 3UL)) && 65530UL), (*l_193), ((VECTOR(uint16_t, 8))(0x1BA7L)), ((VECTOR(uint16_t, 4))(0UL)), 0x9A24L, 65526UL)).lo))).s4 | l_222)) , (*p_798->g_109));
    return &p_798->g_110;
}


/* ------------------------------------------ */
/* 
 * reads : p_798->g_63 p_798->g_68 p_798->g_126 p_798->g_8 p_798->g_37 p_798->g_75 p_798->g_2 p_798->g_163 p_798->g_158 p_798->g_182 p_798->g_109
 * writes: p_798->g_75 p_798->g_158 p_798->g_169 p_798->g_171 p_798->g_126 p_798->g_179 p_798->g_180 p_798->g_182 p_798->g_110
 */
int8_t * func_111(int32_t * p_112, int32_t  p_113, int64_t  p_114, int32_t ** p_115, int32_t * p_116, struct S0 * p_798)
{ /* block id: 42 */
    int8_t *l_134 = &p_798->g_75[2];
    int32_t l_135 = 0x0CCC24DDL;
    int64_t l_138[8] = {0x529738531772C44EL,0x529738531772C44EL,0x529738531772C44EL,0x529738531772C44EL,0x529738531772C44EL,0x529738531772C44EL,0x529738531772C44EL,0x529738531772C44EL};
    int32_t *l_157[6] = {&l_135,&l_135,&l_135,&l_135,&l_135,&l_135};
    int16_t *l_168 = &p_798->g_169;
    int16_t *l_170 = (void*)0;
    int16_t *l_172 = (void*)0;
    int16_t *l_173 = (void*)0;
    int16_t *l_174 = (void*)0;
    uint64_t *l_177 = &p_798->g_126;
    uint64_t *l_178 = &p_798->g_179;
    int32_t *l_183 = &p_798->g_37;
    int i;
    l_135 = (p_798->g_63 & ((void*)0 == l_134));
    (*p_115) = (*p_115);
    p_798->g_158.s1 = (l_135 == ((safe_mul_func_int8_t_s_s(l_138[3], (p_113 ^ (safe_mod_func_int32_t_s_s(((safe_lshift_func_uint8_t_u_s(l_138[3], (safe_mul_func_uint8_t_u_u(0x89L, ((*l_134) = 0x78L))))) < 0x12C6L), (safe_div_func_uint32_t_u_u((((((safe_add_func_uint8_t_u_u((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((safe_rshift_func_uint16_t_u_u(((((safe_lshift_func_int8_t_s_u((l_138[1] || ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 4))((safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 2))(0xF7L, 255UL)).xxxyxxxxyxyyxyxx, ((VECTOR(uint8_t, 4))(GROUP_DIVERGE(1, 1), ((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 2))(0UL, 1UL)), (uint8_t)(~(p_798->g_68 >= 0x27E77908CCFF5D34L))))), 0x27L)).zxwxyxxxyzxwzxzw))).sa, 1L)), l_135, 5L, (-1L))).xxwzzzww, ((VECTOR(int64_t, 8))(0x22D0340A051B8857L)), ((VECTOR(int64_t, 8))(2L))))).s36)).even), p_798->g_126)) & FAKE_DIVERGE(p_798->group_2_offset, get_group_id(2), 10)) & p_113) , GROUP_DIVERGE(1, 1)), p_798->g_8)) | p_798->g_8), ((VECTOR(uint16_t, 2))(65535UL)), l_138[7], 65533UL, ((VECTOR(uint16_t, 8))(0x6F63L)), ((VECTOR(uint16_t, 2))(0xB63CL)), 0x6B16L)).s9, l_138[1])), l_138[3])) < p_113) == p_798->g_68) , l_135) | p_798->g_37), GROUP_DIVERGE(0, 1)))))))) || l_138[3]));
    if (((safe_add_func_uint16_t_u_u(p_798->g_75[1], (+(((p_113 || ((-1L) > (safe_add_func_uint8_t_u_u(p_798->g_2, ((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 8))(p_798->g_163.s32130650))))).s7156227534163230)), ((VECTOR(int8_t, 8))(((safe_sub_func_int64_t_s_s((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(0x1B8BL, ((VECTOR(uint16_t, 2))(65526UL, 0x5584L)), 0x4F8DL)), 0x3C28L, ((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(int16_t, 8))((-1L), (p_798->g_171.sc = ((*l_168) = p_114)), ((safe_sub_func_int32_t_s_s((((*l_178) = (p_798->g_8 < ((((*l_177) ^= (((void*)0 == l_157[0]) || p_113)) <= p_798->g_8) , p_798->g_75[3]))) & p_798->g_8), p_113)) != p_114), 0x3DBDL, p_798->g_158.s0, 0x1171L, 7L, 0x0A14L)).hi, ((VECTOR(int16_t, 4))(0x5524L))))).lo, ((VECTOR(uint16_t, 2))(0UL)), ((VECTOR(uint16_t, 2))(0xAB04L))))), p_798->g_163.s7, 0x78EFL, ((VECTOR(uint16_t, 4))(65534UL)), 1UL, 0UL, 65535UL)).s4b)).odd, GROUP_DIVERGE(2, 1))), p_798->g_63)) | p_113), p_114, 0x56L, ((VECTOR(int8_t, 4))(0x0AL)), 0x22L)).s0155616736666451, ((VECTOR(int8_t, 16))(0x5BL))))).s3)))) ^ p_113) != p_798->g_163.s0)))) <= 0x2D7FL))
    { /* block id: 51 */
        int32_t *l_181 = &p_798->g_8;
        p_798->g_180 = p_798->g_75[0];
        (*p_115) = l_181;
        p_798->g_182 &= (**p_115);
    }
    else
    { /* block id: 55 */
        (*p_798->g_109) = l_183;
    }
    return l_134;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_799;
    struct S0* p_798 = &c_799;
    struct S0 c_800 = {
        8L, // p_798->g_2
        0x7C558BACL, // p_798->g_5
        0x67D214C4L, // p_798->g_6
        (VECTOR(int32_t, 16))(0x40194DDBL, (VECTOR(int32_t, 4))(0x40194DDBL, (VECTOR(int32_t, 2))(0x40194DDBL, 0x07822E6EL), 0x07822E6EL), 0x07822E6EL, 0x40194DDBL, 0x07822E6EL, (VECTOR(int32_t, 2))(0x40194DDBL, 0x07822E6EL), (VECTOR(int32_t, 2))(0x40194DDBL, 0x07822E6EL), 0x40194DDBL, 0x07822E6EL, 0x40194DDBL, 0x07822E6EL), // p_798->g_7
        0L, // p_798->g_8
        1L, // p_798->g_37
        &p_798->g_37, // p_798->g_36
        &p_798->g_36, // p_798->g_39
        {{0xC90638325423B19DL}}, // p_798->g_40
        0x046E0AEEL, // p_798->g_63
        0xEA07874DL, // p_798->g_68
        {0x43L,0x43L,0x43L,0x43L}, // p_798->g_75
        0x42L, // p_798->g_88
        (void*)0, // p_798->g_110
        &p_798->g_110, // p_798->g_109
        18446744073709551615UL, // p_798->g_126
        4UL, // p_798->g_130
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x75B55EC7L), 0x75B55EC7L), 0x75B55EC7L, 1L, 0x75B55EC7L), // p_798->g_158
        (VECTOR(int8_t, 8))(0x48L, (VECTOR(int8_t, 4))(0x48L, (VECTOR(int8_t, 2))(0x48L, 1L), 1L), 1L, 0x48L, 1L), // p_798->g_163
        0x32C0L, // p_798->g_169
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-4L)), (-4L)), (-4L), (-1L), (-4L), (VECTOR(int16_t, 2))((-1L), (-4L)), (VECTOR(int16_t, 2))((-1L), (-4L)), (-1L), (-4L), (-1L), (-4L)), // p_798->g_171
        0x42F87E49781EE394L, // p_798->g_179
        0x6AB2E5F26958433AL, // p_798->g_180
        253UL, // p_798->g_182
        (-3L), // p_798->g_190
        (-2L), // p_798->g_194
        (VECTOR(int16_t, 2))((-2L), 0x3068L), // p_798->g_202
        (VECTOR(int16_t, 16))(0x51B0L, (VECTOR(int16_t, 4))(0x51B0L, (VECTOR(int16_t, 2))(0x51B0L, 0x7A3DL), 0x7A3DL), 0x7A3DL, 0x51B0L, 0x7A3DL, (VECTOR(int16_t, 2))(0x51B0L, 0x7A3DL), (VECTOR(int16_t, 2))(0x51B0L, 0x7A3DL), 0x51B0L, 0x7A3DL, 0x51B0L, 0x7A3DL), // p_798->g_205
        3UL, // p_798->g_224
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_798->g_244
        9L, // p_798->g_247
        (-1L), // p_798->g_248
        65530UL, // p_798->g_253
        &p_798->g_88, // p_798->g_259
        {{{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259}},{{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259}},{{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259}},{{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259},{&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259,&p_798->g_259}}}, // p_798->g_258
        {(void*)0,(void*)0,(void*)0}, // p_798->g_283
        (VECTOR(uint64_t, 4))(0xD8DD007751AF70A9L, (VECTOR(uint64_t, 2))(0xD8DD007751AF70A9L, 0x064817D29F0656BCL), 0x064817D29F0656BCL), // p_798->g_292
        0x092CL, // p_798->g_293
        (VECTOR(uint64_t, 2))(0xCB7F358BD54BD57DL, 9UL), // p_798->g_304
        65531UL, // p_798->g_320
        0x1BA7F623L, // p_798->g_352
        (void*)0, // p_798->g_376
        (VECTOR(int8_t, 16))(0x50L, (VECTOR(int8_t, 4))(0x50L, (VECTOR(int8_t, 2))(0x50L, 0x27L), 0x27L), 0x27L, 0x50L, 0x27L, (VECTOR(int8_t, 2))(0x50L, 0x27L), (VECTOR(int8_t, 2))(0x50L, 0x27L), 0x50L, 0x27L, 0x50L, 0x27L), // p_798->g_393
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-10L)), (-10L)), // p_798->g_397
        (VECTOR(int8_t, 2))(0x05L, (-2L)), // p_798->g_398
        (VECTOR(int8_t, 2))(0x34L, (-10L)), // p_798->g_399
        (VECTOR(int8_t, 8))(0x6CL, (VECTOR(int8_t, 4))(0x6CL, (VECTOR(int8_t, 2))(0x6CL, 0x1BL), 0x1BL), 0x1BL, 0x6CL, 0x1BL), // p_798->g_408
        0x33B590C1F20A9B67L, // p_798->g_444
        0x3719BE68D1D22413L, // p_798->g_445
        {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L}, // p_798->g_450
        (-1L), // p_798->g_451
        {{0x6BFA9591L,0x3BC7A37EL,0x6BFA9591L},{0x6BFA9591L,0x3BC7A37EL,0x6BFA9591L},{0x6BFA9591L,0x3BC7A37EL,0x6BFA9591L},{0x6BFA9591L,0x3BC7A37EL,0x6BFA9591L},{0x6BFA9591L,0x3BC7A37EL,0x6BFA9591L},{0x6BFA9591L,0x3BC7A37EL,0x6BFA9591L},{0x6BFA9591L,0x3BC7A37EL,0x6BFA9591L},{0x6BFA9591L,0x3BC7A37EL,0x6BFA9591L},{0x6BFA9591L,0x3BC7A37EL,0x6BFA9591L}}, // p_798->g_452
        0xDCL, // p_798->g_453
        (VECTOR(int16_t, 8))(7L, (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, (-10L)), (-10L)), (-10L), 7L, (-10L)), // p_798->g_481
        4UL, // p_798->g_495
        &p_798->g_182, // p_798->g_505
        {{&p_798->g_505},{&p_798->g_505},{&p_798->g_505},{&p_798->g_505},{&p_798->g_505}}, // p_798->g_504
        3L, // p_798->g_513
        0x045DL, // p_798->g_514
        4294967295UL, // p_798->g_515
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x1DD9L), 0x1DD9L), 0x1DD9L, 0L, 0x1DD9L), // p_798->g_532
        (VECTOR(uint32_t, 2))(0x31DC5A33L, 4294967288UL), // p_798->g_546
        (VECTOR(uint32_t, 16))(8UL, (VECTOR(uint32_t, 4))(8UL, (VECTOR(uint32_t, 2))(8UL, 0xC373AB5AL), 0xC373AB5AL), 0xC373AB5AL, 8UL, 0xC373AB5AL, (VECTOR(uint32_t, 2))(8UL, 0xC373AB5AL), (VECTOR(uint32_t, 2))(8UL, 0xC373AB5AL), 8UL, 0xC373AB5AL, 8UL, 0xC373AB5AL), // p_798->g_559
        0x35C4L, // p_798->g_615
        1L, // p_798->g_616
        1UL, // p_798->g_620
        (VECTOR(int16_t, 8))(0x0797L, (VECTOR(int16_t, 4))(0x0797L, (VECTOR(int16_t, 2))(0x0797L, 0x4718L), 0x4718L), 0x4718L, 0x0797L, 0x4718L), // p_798->g_626
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 3L), 3L), 3L, 1L, 3L), // p_798->g_627
        4294967289UL, // p_798->g_648
        &p_798->g_179, // p_798->g_676
        &p_798->g_676, // p_798->g_675
        &p_798->g_675, // p_798->g_674
        0x49422CD54A7018DFL, // p_798->g_692
        1L, // p_798->g_700
        1L, // p_798->g_702
        {{{&p_798->g_36,&p_798->g_110,&p_798->g_110,&p_798->g_110,&p_798->g_36,&p_798->g_110,&p_798->g_36}},{{&p_798->g_36,&p_798->g_110,&p_798->g_110,&p_798->g_110,&p_798->g_36,&p_798->g_110,&p_798->g_36}},{{&p_798->g_36,&p_798->g_110,&p_798->g_110,&p_798->g_110,&p_798->g_36,&p_798->g_110,&p_798->g_36}},{{&p_798->g_36,&p_798->g_110,&p_798->g_110,&p_798->g_110,&p_798->g_36,&p_798->g_110,&p_798->g_36}},{{&p_798->g_36,&p_798->g_110,&p_798->g_110,&p_798->g_110,&p_798->g_36,&p_798->g_110,&p_798->g_36}},{{&p_798->g_36,&p_798->g_110,&p_798->g_110,&p_798->g_110,&p_798->g_36,&p_798->g_110,&p_798->g_36}},{{&p_798->g_36,&p_798->g_110,&p_798->g_110,&p_798->g_110,&p_798->g_36,&p_798->g_110,&p_798->g_36}},{{&p_798->g_36,&p_798->g_110,&p_798->g_110,&p_798->g_110,&p_798->g_36,&p_798->g_110,&p_798->g_36}},{{&p_798->g_36,&p_798->g_110,&p_798->g_110,&p_798->g_110,&p_798->g_36,&p_798->g_110,&p_798->g_36}},{{&p_798->g_36,&p_798->g_110,&p_798->g_110,&p_798->g_110,&p_798->g_36,&p_798->g_110,&p_798->g_36}}}, // p_798->g_721
        (VECTOR(int32_t, 2))(0x7B557B6AL, (-1L)), // p_798->g_751
        {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL}, // p_798->g_770
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x3A563BC1L), 0x3A563BC1L), 0x3A563BC1L, (-1L), 0x3A563BC1L), // p_798->g_794
        sequence_input[get_global_id(0)], // p_798->global_0_offset
        sequence_input[get_global_id(1)], // p_798->global_1_offset
        sequence_input[get_global_id(2)], // p_798->global_2_offset
        sequence_input[get_local_id(0)], // p_798->local_0_offset
        sequence_input[get_local_id(1)], // p_798->local_1_offset
        sequence_input[get_local_id(2)], // p_798->local_2_offset
        sequence_input[get_group_id(0)], // p_798->group_0_offset
        sequence_input[get_group_id(1)], // p_798->group_1_offset
        sequence_input[get_group_id(2)], // p_798->group_2_offset
    };
    c_799 = c_800;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_798);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_798->g_2, "p_798->g_2", print_hash_value);
    transparent_crc(p_798->g_5, "p_798->g_5", print_hash_value);
    transparent_crc(p_798->g_6, "p_798->g_6", print_hash_value);
    transparent_crc(p_798->g_7.s0, "p_798->g_7.s0", print_hash_value);
    transparent_crc(p_798->g_7.s1, "p_798->g_7.s1", print_hash_value);
    transparent_crc(p_798->g_7.s2, "p_798->g_7.s2", print_hash_value);
    transparent_crc(p_798->g_7.s3, "p_798->g_7.s3", print_hash_value);
    transparent_crc(p_798->g_7.s4, "p_798->g_7.s4", print_hash_value);
    transparent_crc(p_798->g_7.s5, "p_798->g_7.s5", print_hash_value);
    transparent_crc(p_798->g_7.s6, "p_798->g_7.s6", print_hash_value);
    transparent_crc(p_798->g_7.s7, "p_798->g_7.s7", print_hash_value);
    transparent_crc(p_798->g_7.s8, "p_798->g_7.s8", print_hash_value);
    transparent_crc(p_798->g_7.s9, "p_798->g_7.s9", print_hash_value);
    transparent_crc(p_798->g_7.sa, "p_798->g_7.sa", print_hash_value);
    transparent_crc(p_798->g_7.sb, "p_798->g_7.sb", print_hash_value);
    transparent_crc(p_798->g_7.sc, "p_798->g_7.sc", print_hash_value);
    transparent_crc(p_798->g_7.sd, "p_798->g_7.sd", print_hash_value);
    transparent_crc(p_798->g_7.se, "p_798->g_7.se", print_hash_value);
    transparent_crc(p_798->g_7.sf, "p_798->g_7.sf", print_hash_value);
    transparent_crc(p_798->g_8, "p_798->g_8", print_hash_value);
    transparent_crc(p_798->g_37, "p_798->g_37", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_798->g_40[i][j], "p_798->g_40[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_798->g_63, "p_798->g_63", print_hash_value);
    transparent_crc(p_798->g_68, "p_798->g_68", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_798->g_75[i], "p_798->g_75[i]", print_hash_value);

    }
    transparent_crc(p_798->g_88, "p_798->g_88", print_hash_value);
    transparent_crc(p_798->g_126, "p_798->g_126", print_hash_value);
    transparent_crc(p_798->g_130, "p_798->g_130", print_hash_value);
    transparent_crc(p_798->g_158.s0, "p_798->g_158.s0", print_hash_value);
    transparent_crc(p_798->g_158.s1, "p_798->g_158.s1", print_hash_value);
    transparent_crc(p_798->g_158.s2, "p_798->g_158.s2", print_hash_value);
    transparent_crc(p_798->g_158.s3, "p_798->g_158.s3", print_hash_value);
    transparent_crc(p_798->g_158.s4, "p_798->g_158.s4", print_hash_value);
    transparent_crc(p_798->g_158.s5, "p_798->g_158.s5", print_hash_value);
    transparent_crc(p_798->g_158.s6, "p_798->g_158.s6", print_hash_value);
    transparent_crc(p_798->g_158.s7, "p_798->g_158.s7", print_hash_value);
    transparent_crc(p_798->g_163.s0, "p_798->g_163.s0", print_hash_value);
    transparent_crc(p_798->g_163.s1, "p_798->g_163.s1", print_hash_value);
    transparent_crc(p_798->g_163.s2, "p_798->g_163.s2", print_hash_value);
    transparent_crc(p_798->g_163.s3, "p_798->g_163.s3", print_hash_value);
    transparent_crc(p_798->g_163.s4, "p_798->g_163.s4", print_hash_value);
    transparent_crc(p_798->g_163.s5, "p_798->g_163.s5", print_hash_value);
    transparent_crc(p_798->g_163.s6, "p_798->g_163.s6", print_hash_value);
    transparent_crc(p_798->g_163.s7, "p_798->g_163.s7", print_hash_value);
    transparent_crc(p_798->g_169, "p_798->g_169", print_hash_value);
    transparent_crc(p_798->g_171.s0, "p_798->g_171.s0", print_hash_value);
    transparent_crc(p_798->g_171.s1, "p_798->g_171.s1", print_hash_value);
    transparent_crc(p_798->g_171.s2, "p_798->g_171.s2", print_hash_value);
    transparent_crc(p_798->g_171.s3, "p_798->g_171.s3", print_hash_value);
    transparent_crc(p_798->g_171.s4, "p_798->g_171.s4", print_hash_value);
    transparent_crc(p_798->g_171.s5, "p_798->g_171.s5", print_hash_value);
    transparent_crc(p_798->g_171.s6, "p_798->g_171.s6", print_hash_value);
    transparent_crc(p_798->g_171.s7, "p_798->g_171.s7", print_hash_value);
    transparent_crc(p_798->g_171.s8, "p_798->g_171.s8", print_hash_value);
    transparent_crc(p_798->g_171.s9, "p_798->g_171.s9", print_hash_value);
    transparent_crc(p_798->g_171.sa, "p_798->g_171.sa", print_hash_value);
    transparent_crc(p_798->g_171.sb, "p_798->g_171.sb", print_hash_value);
    transparent_crc(p_798->g_171.sc, "p_798->g_171.sc", print_hash_value);
    transparent_crc(p_798->g_171.sd, "p_798->g_171.sd", print_hash_value);
    transparent_crc(p_798->g_171.se, "p_798->g_171.se", print_hash_value);
    transparent_crc(p_798->g_171.sf, "p_798->g_171.sf", print_hash_value);
    transparent_crc(p_798->g_179, "p_798->g_179", print_hash_value);
    transparent_crc(p_798->g_180, "p_798->g_180", print_hash_value);
    transparent_crc(p_798->g_182, "p_798->g_182", print_hash_value);
    transparent_crc(p_798->g_190, "p_798->g_190", print_hash_value);
    transparent_crc(p_798->g_194, "p_798->g_194", print_hash_value);
    transparent_crc(p_798->g_202.x, "p_798->g_202.x", print_hash_value);
    transparent_crc(p_798->g_202.y, "p_798->g_202.y", print_hash_value);
    transparent_crc(p_798->g_205.s0, "p_798->g_205.s0", print_hash_value);
    transparent_crc(p_798->g_205.s1, "p_798->g_205.s1", print_hash_value);
    transparent_crc(p_798->g_205.s2, "p_798->g_205.s2", print_hash_value);
    transparent_crc(p_798->g_205.s3, "p_798->g_205.s3", print_hash_value);
    transparent_crc(p_798->g_205.s4, "p_798->g_205.s4", print_hash_value);
    transparent_crc(p_798->g_205.s5, "p_798->g_205.s5", print_hash_value);
    transparent_crc(p_798->g_205.s6, "p_798->g_205.s6", print_hash_value);
    transparent_crc(p_798->g_205.s7, "p_798->g_205.s7", print_hash_value);
    transparent_crc(p_798->g_205.s8, "p_798->g_205.s8", print_hash_value);
    transparent_crc(p_798->g_205.s9, "p_798->g_205.s9", print_hash_value);
    transparent_crc(p_798->g_205.sa, "p_798->g_205.sa", print_hash_value);
    transparent_crc(p_798->g_205.sb, "p_798->g_205.sb", print_hash_value);
    transparent_crc(p_798->g_205.sc, "p_798->g_205.sc", print_hash_value);
    transparent_crc(p_798->g_205.sd, "p_798->g_205.sd", print_hash_value);
    transparent_crc(p_798->g_205.se, "p_798->g_205.se", print_hash_value);
    transparent_crc(p_798->g_205.sf, "p_798->g_205.sf", print_hash_value);
    transparent_crc(p_798->g_224, "p_798->g_224", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_798->g_244[i], "p_798->g_244[i]", print_hash_value);

    }
    transparent_crc(p_798->g_247, "p_798->g_247", print_hash_value);
    transparent_crc(p_798->g_248, "p_798->g_248", print_hash_value);
    transparent_crc(p_798->g_253, "p_798->g_253", print_hash_value);
    transparent_crc(p_798->g_292.x, "p_798->g_292.x", print_hash_value);
    transparent_crc(p_798->g_292.y, "p_798->g_292.y", print_hash_value);
    transparent_crc(p_798->g_292.z, "p_798->g_292.z", print_hash_value);
    transparent_crc(p_798->g_292.w, "p_798->g_292.w", print_hash_value);
    transparent_crc(p_798->g_293, "p_798->g_293", print_hash_value);
    transparent_crc(p_798->g_304.x, "p_798->g_304.x", print_hash_value);
    transparent_crc(p_798->g_304.y, "p_798->g_304.y", print_hash_value);
    transparent_crc(p_798->g_320, "p_798->g_320", print_hash_value);
    transparent_crc(p_798->g_352, "p_798->g_352", print_hash_value);
    transparent_crc(p_798->g_393.s0, "p_798->g_393.s0", print_hash_value);
    transparent_crc(p_798->g_393.s1, "p_798->g_393.s1", print_hash_value);
    transparent_crc(p_798->g_393.s2, "p_798->g_393.s2", print_hash_value);
    transparent_crc(p_798->g_393.s3, "p_798->g_393.s3", print_hash_value);
    transparent_crc(p_798->g_393.s4, "p_798->g_393.s4", print_hash_value);
    transparent_crc(p_798->g_393.s5, "p_798->g_393.s5", print_hash_value);
    transparent_crc(p_798->g_393.s6, "p_798->g_393.s6", print_hash_value);
    transparent_crc(p_798->g_393.s7, "p_798->g_393.s7", print_hash_value);
    transparent_crc(p_798->g_393.s8, "p_798->g_393.s8", print_hash_value);
    transparent_crc(p_798->g_393.s9, "p_798->g_393.s9", print_hash_value);
    transparent_crc(p_798->g_393.sa, "p_798->g_393.sa", print_hash_value);
    transparent_crc(p_798->g_393.sb, "p_798->g_393.sb", print_hash_value);
    transparent_crc(p_798->g_393.sc, "p_798->g_393.sc", print_hash_value);
    transparent_crc(p_798->g_393.sd, "p_798->g_393.sd", print_hash_value);
    transparent_crc(p_798->g_393.se, "p_798->g_393.se", print_hash_value);
    transparent_crc(p_798->g_393.sf, "p_798->g_393.sf", print_hash_value);
    transparent_crc(p_798->g_397.x, "p_798->g_397.x", print_hash_value);
    transparent_crc(p_798->g_397.y, "p_798->g_397.y", print_hash_value);
    transparent_crc(p_798->g_397.z, "p_798->g_397.z", print_hash_value);
    transparent_crc(p_798->g_397.w, "p_798->g_397.w", print_hash_value);
    transparent_crc(p_798->g_398.x, "p_798->g_398.x", print_hash_value);
    transparent_crc(p_798->g_398.y, "p_798->g_398.y", print_hash_value);
    transparent_crc(p_798->g_399.x, "p_798->g_399.x", print_hash_value);
    transparent_crc(p_798->g_399.y, "p_798->g_399.y", print_hash_value);
    transparent_crc(p_798->g_408.s0, "p_798->g_408.s0", print_hash_value);
    transparent_crc(p_798->g_408.s1, "p_798->g_408.s1", print_hash_value);
    transparent_crc(p_798->g_408.s2, "p_798->g_408.s2", print_hash_value);
    transparent_crc(p_798->g_408.s3, "p_798->g_408.s3", print_hash_value);
    transparent_crc(p_798->g_408.s4, "p_798->g_408.s4", print_hash_value);
    transparent_crc(p_798->g_408.s5, "p_798->g_408.s5", print_hash_value);
    transparent_crc(p_798->g_408.s6, "p_798->g_408.s6", print_hash_value);
    transparent_crc(p_798->g_408.s7, "p_798->g_408.s7", print_hash_value);
    transparent_crc(p_798->g_444, "p_798->g_444", print_hash_value);
    transparent_crc(p_798->g_445, "p_798->g_445", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_798->g_450[i], "p_798->g_450[i]", print_hash_value);

    }
    transparent_crc(p_798->g_451, "p_798->g_451", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_798->g_452[i][j], "p_798->g_452[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_798->g_453, "p_798->g_453", print_hash_value);
    transparent_crc(p_798->g_481.s0, "p_798->g_481.s0", print_hash_value);
    transparent_crc(p_798->g_481.s1, "p_798->g_481.s1", print_hash_value);
    transparent_crc(p_798->g_481.s2, "p_798->g_481.s2", print_hash_value);
    transparent_crc(p_798->g_481.s3, "p_798->g_481.s3", print_hash_value);
    transparent_crc(p_798->g_481.s4, "p_798->g_481.s4", print_hash_value);
    transparent_crc(p_798->g_481.s5, "p_798->g_481.s5", print_hash_value);
    transparent_crc(p_798->g_481.s6, "p_798->g_481.s6", print_hash_value);
    transparent_crc(p_798->g_481.s7, "p_798->g_481.s7", print_hash_value);
    transparent_crc(p_798->g_495, "p_798->g_495", print_hash_value);
    transparent_crc(p_798->g_513, "p_798->g_513", print_hash_value);
    transparent_crc(p_798->g_514, "p_798->g_514", print_hash_value);
    transparent_crc(p_798->g_515, "p_798->g_515", print_hash_value);
    transparent_crc(p_798->g_532.s0, "p_798->g_532.s0", print_hash_value);
    transparent_crc(p_798->g_532.s1, "p_798->g_532.s1", print_hash_value);
    transparent_crc(p_798->g_532.s2, "p_798->g_532.s2", print_hash_value);
    transparent_crc(p_798->g_532.s3, "p_798->g_532.s3", print_hash_value);
    transparent_crc(p_798->g_532.s4, "p_798->g_532.s4", print_hash_value);
    transparent_crc(p_798->g_532.s5, "p_798->g_532.s5", print_hash_value);
    transparent_crc(p_798->g_532.s6, "p_798->g_532.s6", print_hash_value);
    transparent_crc(p_798->g_532.s7, "p_798->g_532.s7", print_hash_value);
    transparent_crc(p_798->g_546.x, "p_798->g_546.x", print_hash_value);
    transparent_crc(p_798->g_546.y, "p_798->g_546.y", print_hash_value);
    transparent_crc(p_798->g_559.s0, "p_798->g_559.s0", print_hash_value);
    transparent_crc(p_798->g_559.s1, "p_798->g_559.s1", print_hash_value);
    transparent_crc(p_798->g_559.s2, "p_798->g_559.s2", print_hash_value);
    transparent_crc(p_798->g_559.s3, "p_798->g_559.s3", print_hash_value);
    transparent_crc(p_798->g_559.s4, "p_798->g_559.s4", print_hash_value);
    transparent_crc(p_798->g_559.s5, "p_798->g_559.s5", print_hash_value);
    transparent_crc(p_798->g_559.s6, "p_798->g_559.s6", print_hash_value);
    transparent_crc(p_798->g_559.s7, "p_798->g_559.s7", print_hash_value);
    transparent_crc(p_798->g_559.s8, "p_798->g_559.s8", print_hash_value);
    transparent_crc(p_798->g_559.s9, "p_798->g_559.s9", print_hash_value);
    transparent_crc(p_798->g_559.sa, "p_798->g_559.sa", print_hash_value);
    transparent_crc(p_798->g_559.sb, "p_798->g_559.sb", print_hash_value);
    transparent_crc(p_798->g_559.sc, "p_798->g_559.sc", print_hash_value);
    transparent_crc(p_798->g_559.sd, "p_798->g_559.sd", print_hash_value);
    transparent_crc(p_798->g_559.se, "p_798->g_559.se", print_hash_value);
    transparent_crc(p_798->g_559.sf, "p_798->g_559.sf", print_hash_value);
    transparent_crc(p_798->g_615, "p_798->g_615", print_hash_value);
    transparent_crc(p_798->g_616, "p_798->g_616", print_hash_value);
    transparent_crc(p_798->g_620, "p_798->g_620", print_hash_value);
    transparent_crc(p_798->g_626.s0, "p_798->g_626.s0", print_hash_value);
    transparent_crc(p_798->g_626.s1, "p_798->g_626.s1", print_hash_value);
    transparent_crc(p_798->g_626.s2, "p_798->g_626.s2", print_hash_value);
    transparent_crc(p_798->g_626.s3, "p_798->g_626.s3", print_hash_value);
    transparent_crc(p_798->g_626.s4, "p_798->g_626.s4", print_hash_value);
    transparent_crc(p_798->g_626.s5, "p_798->g_626.s5", print_hash_value);
    transparent_crc(p_798->g_626.s6, "p_798->g_626.s6", print_hash_value);
    transparent_crc(p_798->g_626.s7, "p_798->g_626.s7", print_hash_value);
    transparent_crc(p_798->g_627.s0, "p_798->g_627.s0", print_hash_value);
    transparent_crc(p_798->g_627.s1, "p_798->g_627.s1", print_hash_value);
    transparent_crc(p_798->g_627.s2, "p_798->g_627.s2", print_hash_value);
    transparent_crc(p_798->g_627.s3, "p_798->g_627.s3", print_hash_value);
    transparent_crc(p_798->g_627.s4, "p_798->g_627.s4", print_hash_value);
    transparent_crc(p_798->g_627.s5, "p_798->g_627.s5", print_hash_value);
    transparent_crc(p_798->g_627.s6, "p_798->g_627.s6", print_hash_value);
    transparent_crc(p_798->g_627.s7, "p_798->g_627.s7", print_hash_value);
    transparent_crc(p_798->g_648, "p_798->g_648", print_hash_value);
    transparent_crc(p_798->g_692, "p_798->g_692", print_hash_value);
    transparent_crc(p_798->g_700, "p_798->g_700", print_hash_value);
    transparent_crc(p_798->g_702, "p_798->g_702", print_hash_value);
    transparent_crc(p_798->g_751.x, "p_798->g_751.x", print_hash_value);
    transparent_crc(p_798->g_751.y, "p_798->g_751.y", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_798->g_770[i], "p_798->g_770[i]", print_hash_value);

    }
    transparent_crc(p_798->g_794.s0, "p_798->g_794.s0", print_hash_value);
    transparent_crc(p_798->g_794.s1, "p_798->g_794.s1", print_hash_value);
    transparent_crc(p_798->g_794.s2, "p_798->g_794.s2", print_hash_value);
    transparent_crc(p_798->g_794.s3, "p_798->g_794.s3", print_hash_value);
    transparent_crc(p_798->g_794.s4, "p_798->g_794.s4", print_hash_value);
    transparent_crc(p_798->g_794.s5, "p_798->g_794.s5", print_hash_value);
    transparent_crc(p_798->g_794.s6, "p_798->g_794.s6", print_hash_value);
    transparent_crc(p_798->g_794.s7, "p_798->g_794.s7", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
