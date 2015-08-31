// ---fake_divergence -g 5,19,1 -l 1,1,1
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


// Seed: 91

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    int64_t g_37;
    volatile uint16_t g_38;
    int8_t g_49[4];
    int8_t g_67;
    volatile int16_t g_85[9];
    volatile uint32_t g_88;
    int16_t g_99;
    int32_t g_113;
    int8_t g_124[4][5][9];
    uint32_t g_145;
    int8_t g_154;
    int32_t g_156;
    uint64_t g_160[8][2][1];
    uint16_t g_182;
    int32_t *g_185;
    int32_t ** volatile g_184[4];
    int32_t ** volatile g_186;
    volatile int16_t *g_210[2][3];
    volatile int16_t ** volatile g_209;
    int32_t g_214;
    uint32_t g_215;
    uint32_t g_232;
    int32_t ** volatile g_242[6][8][4];
    int32_t ** volatile g_243;
    int32_t ** volatile g_276;
    volatile int8_t g_280;
    volatile int8_t g_347;
    uint32_t g_368;
    int32_t g_410;
    int64_t g_455;
    int16_t g_456;
    int32_t g_491;
    int16_t *g_526;
    int16_t **g_525;
    int16_t **g_530;
    uint8_t g_539;
    int64_t g_541;
    int32_t g_628;
    uint32_t *g_653;
    uint32_t ** volatile g_652;
    int32_t ** volatile g_662[1][7];
    int32_t ** volatile g_666;
    int32_t *g_669;
    int32_t ** volatile g_668;
    int32_t ***g_699;
    volatile uint8_t g_708;
    uint16_t * volatile g_778;
    uint16_t * volatile *g_777;
    int64_t g_828;
    volatile uint32_t g_890;
    volatile uint32_t *g_889;
    volatile uint32_t * volatile *g_888;
    volatile uint32_t * volatile **g_887;
    int32_t g_907;
    int32_t * volatile g_906;
    uint16_t *g_929[8];
    uint16_t **g_928;
    int16_t g_936[4];
    int32_t *g_937;
    int16_t g_1024;
    int32_t *g_1057;
    int32_t **g_1056;
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
uint32_t  func_1(struct S0 * p_1070);
int8_t  func_8(int8_t  p_9, int32_t  p_10, int64_t  p_11, struct S0 * p_1070);
int64_t  func_16(uint32_t  p_17, int64_t  p_18, int32_t  p_19, struct S0 * p_1070);
uint32_t  func_24(uint32_t  p_25, int32_t  p_26, int8_t  p_27, struct S0 * p_1070);
int32_t * func_41(uint64_t  p_42, uint64_t  p_43, int8_t  p_44, struct S0 * p_1070);
uint16_t  func_50(int32_t  p_51, int32_t * p_52, struct S0 * p_1070);
int64_t  func_55(uint64_t  p_56, uint8_t  p_57, int64_t  p_58, struct S0 * p_1070);
int32_t * func_60(int8_t * p_61, int8_t * p_62, int32_t  p_63, int32_t  p_64, uint16_t  p_65, struct S0 * p_1070);
int8_t * func_68(int8_t * p_69, int32_t * p_70, int32_t * p_71, int64_t  p_72, struct S0 * p_1070);
int8_t * func_73(uint32_t  p_74, int32_t * p_75, int8_t * p_76, struct S0 * p_1070);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1070->g_2 p_1070->g_38 p_1070->g_67 p_1070->g_37 p_1070->g_88 p_1070->g_113 p_1070->g_124 p_1070->g_99 p_1070->g_160 p_1070->g_85 p_1070->g_145 p_1070->g_209 p_1070->g_182 p_1070->g_154 p_1070->g_214 p_1070->g_215 p_1070->g_156 p_1070->g_243 p_1070->g_185 p_1070->g_276 p_1070->g_347 p_1070->g_368 p_1070->g_410 p_1070->g_210 p_1070->g_455 p_1070->g_456 p_1070->g_232 p_1070->g_525 p_1070->g_539 p_1070->g_530 p_1070->g_526 p_1070->g_628 p_1070->g_653 p_1070->g_777 p_1070->g_669 p_1070->g_778 p_1070->g_887 p_1070->g_828 p_1070->g_906 p_1070->g_888 p_1070->g_889 p_1070->g_890 p_1070->g_907 p_1070->g_936 p_1070->g_937 p_1070->g_491 p_1070->g_668 p_1070->g_1024 p_1070->g_49 p_1070->g_1056 p_1070->g_280
 * writes: p_1070->g_2 p_1070->g_38 p_1070->g_49 p_1070->g_67 p_1070->g_37 p_1070->g_88 p_1070->g_99 p_1070->g_113 p_1070->g_124 p_1070->g_145 p_1070->g_154 p_1070->g_156 p_1070->g_160 p_1070->g_214 p_1070->g_232 p_1070->g_185 p_1070->g_368 p_1070->g_410 p_1070->g_455 p_1070->g_456 p_1070->g_525 p_1070->g_530 p_1070->g_541 p_1070->g_215 p_1070->g_182 p_1070->g_628 p_1070->g_539 p_1070->g_526 p_1070->g_669 p_1070->g_907 p_1070->g_937
 */
uint32_t  func_1(struct S0 * p_1070)
{ /* block id: 4 */
    uint16_t l_5 = 0UL;
    int32_t l_32 = 0x7844BA92L;
    int32_t l_1069[8][6][5] = {{{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L}},{{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L}},{{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L}},{{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L}},{{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L}},{{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L}},{{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L}},{{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L},{0x2A6A70A4L,0x2FDFEAA5L,0L,0x071697BCL,0L}}};
    int i, j, k;
    for (p_1070->g_2 = (-4); (p_1070->g_2 < (-20)); p_1070->g_2 = safe_sub_func_int32_t_s_s(p_1070->g_2, 6))
    { /* block id: 7 */
        l_5 &= p_1070->g_2;
    }
    l_1069[0][0][0] = (safe_div_func_int32_t_s_s(((func_8(p_1070->g_2, l_5, (l_5 >= ((safe_div_func_int16_t_s_s((((safe_add_func_int64_t_s_s(func_16(l_5, l_5, (safe_mul_func_int8_t_s_s((((((-8L) >= 0x0F3B8C10L) > GROUP_DIVERGE(0, 1)) & (func_24((safe_add_func_uint16_t_u_u(l_5, (l_32 = ((safe_div_func_uint32_t_u_u((0x6B58L > p_1070->g_2), l_5)) & p_1070->g_2)))), p_1070->g_2, l_5, p_1070) && 0L)) || p_1070->g_2), p_1070->g_2)), p_1070), p_1070->g_936[1])) , 0x2B9AL) < 0x2E60L), 0x7600L)) && 0x0DE1A4EBL)), p_1070) , 0xF16FA168E7617E0AL) | 0xC0A30E57DA093603L), l_5));
    return l_1069[0][0][0];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1070->g_669
 */
int8_t  func_8(int8_t  p_9, int32_t  p_10, int64_t  p_11, struct S0 * p_1070)
{ /* block id: 528 */
    int32_t **l_1068 = &p_1070->g_669;
    (*l_1068) = &p_10;
    return p_10;
}


/* ------------------------------------------ */
/* 
 * reads : p_1070->g_38 p_1070->g_2 p_1070->g_67 p_1070->g_37 p_1070->g_88 p_1070->g_113 p_1070->g_124 p_1070->g_99 p_1070->g_160 p_1070->g_85 p_1070->g_145 p_1070->g_209 p_1070->g_182 p_1070->g_154 p_1070->g_214 p_1070->g_215 p_1070->g_156 p_1070->g_243 p_1070->g_185 p_1070->g_276 p_1070->g_347 p_1070->g_368 p_1070->g_410 p_1070->g_210 p_1070->g_455 p_1070->g_456 p_1070->g_232 p_1070->g_525 p_1070->g_539 p_1070->g_530 p_1070->g_526 p_1070->g_628 p_1070->g_653 p_1070->g_777 p_1070->g_669 p_1070->g_778 p_1070->g_887 p_1070->g_828 p_1070->g_906 p_1070->g_888 p_1070->g_889 p_1070->g_890 p_1070->g_907 p_1070->g_936 p_1070->g_937 p_1070->g_491 p_1070->g_668 p_1070->g_1024 p_1070->g_49 p_1070->g_1056 p_1070->g_280
 * writes: p_1070->g_38 p_1070->g_49 p_1070->g_67 p_1070->g_37 p_1070->g_88 p_1070->g_99 p_1070->g_113 p_1070->g_124 p_1070->g_145 p_1070->g_154 p_1070->g_156 p_1070->g_160 p_1070->g_214 p_1070->g_232 p_1070->g_185 p_1070->g_368 p_1070->g_410 p_1070->g_455 p_1070->g_456 p_1070->g_525 p_1070->g_530 p_1070->g_541 p_1070->g_215 p_1070->g_182 p_1070->g_628 p_1070->g_539 p_1070->g_526 p_1070->g_669 p_1070->g_907 p_1070->g_937
 */
int64_t  func_16(uint32_t  p_17, int64_t  p_18, int32_t  p_19, struct S0 * p_1070)
{ /* block id: 18 */
    int64_t l_36 = 0x1117A540F8278B72L;
    uint32_t l_922 = 1UL;
    int32_t l_961 = 6L;
    int32_t *l_982[3][7] = {{&p_1070->g_113,&p_1070->g_113,&p_1070->g_113,&p_1070->g_113,&p_1070->g_113,&p_1070->g_113,&p_1070->g_113},{&p_1070->g_113,&p_1070->g_113,&p_1070->g_113,&p_1070->g_113,&p_1070->g_113,&p_1070->g_113,&p_1070->g_113},{&p_1070->g_113,&p_1070->g_113,&p_1070->g_113,&p_1070->g_113,&p_1070->g_113,&p_1070->g_113,&p_1070->g_113}};
    int32_t **l_981 = &l_982[1][2];
    int32_t *l_1026 = &p_1070->g_410;
    int i, j;
    if (p_19)
    { /* block id: 19 */
        uint32_t l_59 = 0x0128B80BL;
        int16_t *l_935 = &p_1070->g_936[0];
        int32_t *l_978 = &p_1070->g_113;
        int32_t **l_977 = &l_978;
        int32_t l_1011[9][8] = {{0x4F7B9765L,0x3B20005DL,0x34CA75F9L,0x04E00745L,0x34CA75F9L,0x3B20005DL,0x4F7B9765L,0x5AB4597AL},{0x4F7B9765L,0x3B20005DL,0x34CA75F9L,0x04E00745L,0x34CA75F9L,0x3B20005DL,0x4F7B9765L,0x5AB4597AL},{0x4F7B9765L,0x3B20005DL,0x34CA75F9L,0x04E00745L,0x34CA75F9L,0x3B20005DL,0x4F7B9765L,0x5AB4597AL},{0x4F7B9765L,0x3B20005DL,0x34CA75F9L,0x04E00745L,0x34CA75F9L,0x3B20005DL,0x4F7B9765L,0x5AB4597AL},{0x4F7B9765L,0x3B20005DL,0x34CA75F9L,0x04E00745L,0x34CA75F9L,0x3B20005DL,0x4F7B9765L,0x5AB4597AL},{0x4F7B9765L,0x3B20005DL,0x34CA75F9L,0x04E00745L,0x34CA75F9L,0x3B20005DL,0x4F7B9765L,0x5AB4597AL},{0x4F7B9765L,0x3B20005DL,0x34CA75F9L,0x04E00745L,0x34CA75F9L,0x3B20005DL,0x4F7B9765L,0x5AB4597AL},{0x4F7B9765L,0x3B20005DL,0x34CA75F9L,0x04E00745L,0x34CA75F9L,0x3B20005DL,0x4F7B9765L,0x5AB4597AL},{0x4F7B9765L,0x3B20005DL,0x34CA75F9L,0x04E00745L,0x34CA75F9L,0x3B20005DL,0x4F7B9765L,0x5AB4597AL}};
        int32_t l_1012 = 0x787F31B3L;
        int i, j;
        p_1070->g_38--;
        if (p_19)
        { /* block id: 21 */
            uint32_t l_47 = 0x88BA54F9L;
            int8_t *l_48 = &p_1070->g_49[2];
            int32_t *l_373 = &p_1070->g_2;
            uint32_t *l_396 = &p_1070->g_232;
            l_373 = func_41(l_36, p_18, ((~(((*l_48) = (((safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1070->group_1_offset, get_group_id(1), 10), 4)) >= p_18) || l_47)) | (((*l_396) = (p_17 & func_50((safe_div_func_int64_t_s_s(func_55(l_59, p_17, p_1070->g_2, p_1070), p_1070->g_2)), l_373, p_1070))) != l_36))) <= p_18), p_1070);
            for (l_47 = (-1); (l_47 != 45); l_47++)
            { /* block id: 436 */
                int64_t *l_898[10][10][2] = {{{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0}},{{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0}},{{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0}},{{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0}},{{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0}},{{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0}},{{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0}},{{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0}},{{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0}},{{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0},{&p_1070->g_828,(void*)0}}};
                int32_t l_905 = 0x445A2ACDL;
                int32_t **l_965 = &p_1070->g_185;
                int i, j, k;
                for (p_1070->g_67 = 26; (p_1070->g_67 < (-20)); p_1070->g_67--)
                { /* block id: 439 */
                    int32_t *l_897 = &p_1070->g_113;
                    int32_t *l_899 = &p_1070->g_410;
                    uint64_t *l_904[7] = {&p_1070->g_160[6][0][0],&p_1070->g_160[6][0][0],&p_1070->g_160[6][0][0],&p_1070->g_160[6][0][0],&p_1070->g_160[6][0][0],&p_1070->g_160[6][0][0],&p_1070->g_160[6][0][0]};
                    uint16_t *l_927 = &p_1070->g_182;
                    uint16_t **l_926 = &l_927;
                    uint16_t ***l_930 = &p_1070->g_928;
                    uint16_t **l_932[9][1] = {{&p_1070->g_929[4]},{&p_1070->g_929[4]},{&p_1070->g_929[4]},{&p_1070->g_929[4]},{&p_1070->g_929[4]},{&p_1070->g_929[4]},{&p_1070->g_929[4]},{&p_1070->g_929[4]},{&p_1070->g_929[4]}};
                    uint16_t ***l_931 = &l_932[8][0];
                    int16_t *l_934 = (void*)0;
                    int16_t **l_933[4] = {&l_934,&l_934,&l_934,&l_934};
                    int i, j;
                    (*p_1070->g_906) = ((&p_1070->g_113 == l_897) | ((((*p_1070->g_653) = (((((*p_1070->g_669) = p_17) , l_898[1][5][1]) != &p_1070->g_828) < (p_1070->g_160[2][0][0] ^= (((*l_899) = 0x3ED5FB0AL) > (safe_sub_func_uint64_t_u_u(p_1070->g_539, (((p_17 , (~(safe_sub_func_uint16_t_u_u((*p_1070->g_778), (**p_1070->g_525))))) & p_18) | 1L))))))) | l_905) || 0L));
                    p_1070->g_937 = &l_905;
                    (*p_1070->g_669) = (safe_lshift_func_int16_t_s_s(0x1864L, 1));
                    for (p_1070->g_539 = 0; (p_1070->g_539 >= 49); p_1070->g_539++)
                    { /* block id: 454 */
                        uint16_t l_952 = 1UL;
                        uint32_t l_953 = 0x34B39A60L;
                        int64_t l_960 = 0x7B564060968E1E6DL;
                        uint32_t l_962 = 0x0DA32ADFL;
                        (*p_1070->g_937) |= ((safe_add_func_uint8_t_u_u(((***p_1070->g_887) , (safe_lshift_func_int16_t_s_u(((p_1070->g_907 || ((0x118F12C1L == (-1L)) | (safe_lshift_func_uint8_t_u_s((safe_add_func_int64_t_s_s((safe_lshift_func_int16_t_s_s((l_952 | (l_953 <= (safe_div_func_uint16_t_u_u(((0x7279L && ((**l_926) = (((safe_div_func_int16_t_s_s((+((**p_1070->g_525) = ((((**p_1070->g_525) ^ ((-10L) < 18446744073709551611UL)) | l_960) <= FAKE_DIVERGE(p_1070->group_0_offset, get_group_id(0), 10)))), l_59)) < 0UL) == p_17))) , (*p_1070->g_778)), 0x3D41L)))), 13)), p_1070->g_936[0])), p_1070->g_124[0][1][2])))) || p_17), 6))), GROUP_DIVERGE(1, 1))) | 255UL);
                        ++l_962;
                        if (p_17)
                            continue;
                    }
                }
                if (p_19)
                    break;
                (*l_965) = (void*)0;
            }
        }
        else
        { /* block id: 465 */
            int32_t *l_967 = &p_1070->g_410;
            uint8_t *l_1018 = &p_1070->g_539;
            int32_t l_1023 = 1L;
            int32_t **l_1025[5][3] = {{&p_1070->g_669,&p_1070->g_669,&p_1070->g_937},{&p_1070->g_669,&p_1070->g_669,&p_1070->g_937},{&p_1070->g_669,&p_1070->g_669,&p_1070->g_937},{&p_1070->g_669,&p_1070->g_669,&p_1070->g_937},{&p_1070->g_669,&p_1070->g_669,&p_1070->g_937}};
            int i, j;
            for (p_1070->g_368 = 0; (p_1070->g_368 <= 1); p_1070->g_368 += 1)
            { /* block id: 468 */
                uint32_t l_1013[2][10][5] = {{{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL}},{{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL},{5UL,0x2CA84545L,0x3CB9C63FL,1UL,0x5DF4D24FL}}};
                int i, j, k;
                for (l_59 = 0; (l_59 <= 3); l_59 += 1)
                { /* block id: 471 */
                    int32_t *l_966[2][10] = {{(void*)0,&p_1070->g_907,&p_1070->g_907,&p_1070->g_907,(void*)0,(void*)0,&p_1070->g_907,&p_1070->g_907,&p_1070->g_907,(void*)0},{(void*)0,&p_1070->g_907,&p_1070->g_907,&p_1070->g_907,(void*)0,(void*)0,&p_1070->g_907,&p_1070->g_907,&p_1070->g_907,(void*)0}};
                    int32_t **l_968 = &l_966[1][5];
                    int64_t **l_970 = (void*)0;
                    int64_t ***l_969 = &l_970;
                    int i, j;
                    (*l_968) = (l_967 = l_966[1][5]);
                    (*l_969) = (void*)0;
                    for (p_1070->g_99 = 0; (p_1070->g_99 <= 3); p_1070->g_99 += 1)
                    { /* block id: 477 */
                        int32_t ***l_979 = (void*)0;
                        int32_t ***l_980 = &l_977;
                        int8_t *l_983 = &p_1070->g_67;
                        int8_t *l_984 = &p_1070->g_154;
                        int8_t *l_985 = &p_1070->g_124[0][1][2];
                        int32_t *l_1007 = &p_1070->g_491;
                        int32_t **l_1006 = &l_1007;
                        uint32_t l_1010 = 0x0C1442E3L;
                        int i, j, k;
                        l_1012 &= ((l_1011[3][5] = ((safe_lshift_func_int8_t_s_u(((*l_985) = ((*l_984) = ((*l_983) = (+(safe_lshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((((*l_980) = l_977) != l_981), (((*l_981) = l_978) == (void*)0))), 8)))))), 7)) != (safe_mod_func_int32_t_s_s((safe_rshift_func_int16_t_s_s((safe_sub_func_uint64_t_u_u(((safe_mul_func_uint16_t_u_u(((((((((safe_mul_func_int16_t_s_s((safe_add_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), p_1070->g_936[l_59])), ((safe_rshift_func_uint8_t_u_s(((**p_1070->g_888) <= (safe_add_func_uint8_t_u_u((safe_mod_func_int32_t_s_s((((*l_1006) = &p_1070->g_156) != (void*)0), (safe_mul_func_int8_t_s_s(p_1070->g_145, 8L)))), p_17))), 6)) , p_19))), 0x01C9L)) , l_1010) < p_18) != 1L) , (**p_1070->g_888)) >= 0xB5AD3454L) & (*p_1070->g_653)) < 0x6CL), 0xAA7FL)) || p_1070->g_215), p_1070->g_232)), l_36)), 0x194ACF5CL)))) <= p_1070->g_491);
                        l_1013[0][2][0]++;
                        if ((**p_1070->g_668))
                            continue;
                    }
                }
                for (p_1070->g_455 = 0; (p_1070->g_455 <= 1); p_1070->g_455 += 1)
                { /* block id: 492 */
                    int i, j;
                    (*p_1070->g_669) = (((safe_lshift_func_uint8_t_u_u(((p_1070->g_936[(p_1070->g_455 + 1)] > ((l_1018 != (void*)0) <= ((((((0x7D04938AL <= (l_1023 = (safe_mul_func_uint8_t_u_u(p_1070->g_85[0], 0UL)))) >= (((p_1070->g_1024 | (4UL ^ (**p_1070->g_525))) && l_1013[0][7][0]) > p_19)) <= p_1070->g_936[3]) == 1L) & 0x27L) >= l_36))) > 0x4E063018L), p_1070->g_49[3])) , 7UL) , (-1L));
                    if (p_19)
                        break;
                    l_961 = 0x46251CC3L;
                }
            }
            (*p_1070->g_668) = (l_1026 = func_41(((**p_1070->g_888) || FAKE_DIVERGE(p_1070->global_2_offset, get_global_id(2), 10)), l_1011[3][5], p_19, p_1070));
        }
    }
    else
    { /* block id: 502 */
        uint16_t l_1037 = 0xAF98L;
        int32_t **l_1059 = (void*)0;
        uint16_t l_1064 = 1UL;
        for (l_36 = 0; (l_36 <= 22); ++l_36)
        { /* block id: 505 */
            int16_t l_1029 = (-3L);
            l_1029 ^= (-1L);
            if (p_17)
                break;
        }
        for (p_1070->g_182 = 0; (p_1070->g_182 != 32); p_1070->g_182 = safe_add_func_int32_t_s_s(p_1070->g_182, 6))
        { /* block id: 511 */
            int32_t *l_1032 = (void*)0;
            int32_t *l_1033 = (void*)0;
            int32_t *l_1034 = (void*)0;
            int32_t *l_1035 = &p_1070->g_214;
            int32_t *l_1036[4][1][5] = {{{&p_1070->g_410,&p_1070->g_410,&p_1070->g_410,&p_1070->g_410,&p_1070->g_410}},{{&p_1070->g_410,&p_1070->g_410,&p_1070->g_410,&p_1070->g_410,&p_1070->g_410}},{{&p_1070->g_410,&p_1070->g_410,&p_1070->g_410,&p_1070->g_410,&p_1070->g_410}},{{&p_1070->g_410,&p_1070->g_410,&p_1070->g_410,&p_1070->g_410,&p_1070->g_410}}};
            int32_t ***l_1058 = &l_981;
            int i, j, k;
            l_1037++;
            l_961 = ((((safe_add_func_int32_t_s_s(((safe_div_func_uint16_t_u_u(((0x6CBD6B129D892FCEL != ((((*p_1070->g_526) |= (safe_add_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u((safe_sub_func_int64_t_s_s((safe_mul_func_uint8_t_u_u(p_1070->g_38, (((*p_1070->g_185) & (((*l_1058) = p_1070->g_1056) != l_1059)) <= p_18))), 0xE1A7298296E334A0L)), (safe_lshift_func_int8_t_s_s((((((*l_1026) ^= (safe_lshift_func_int8_t_s_u(((1L & p_19) >= 0x0177662EL), p_1070->g_124[0][1][2]))) && (*p_1070->g_653)) && p_18) == l_1064), p_1070->g_215)))), 1UL))) == p_17) <= p_18)) & l_1037), (*l_1035))) , 1L), FAKE_DIVERGE(p_1070->local_0_offset, get_local_id(0), 10))) & 0x66L) > 0UL) != GROUP_DIVERGE(0, 1));
        }
        (*l_1026) &= p_17;
        (*l_1026) |= p_17;
    }
    (*l_1026) = 1L;
    for (p_1070->g_37 = (-30); (p_1070->g_37 < (-30)); p_1070->g_37 = safe_add_func_int8_t_s_s(p_1070->g_37, 2))
    { /* block id: 524 */
        int32_t *l_1067 = &p_1070->g_214;
        l_1026 = l_1067;
    }
    return p_1070->g_280;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_24(uint32_t  p_25, int32_t  p_26, int8_t  p_27, struct S0 * p_1070)
{ /* block id: 11 */
    int8_t l_35 = (-8L);
    for (p_27 = (-30); (p_27 == 16); p_27++)
    { /* block id: 14 */
        return p_25;
    }
    return l_35;
}


/* ------------------------------------------ */
/* 
 * reads : p_1070->g_347 p_1070->g_145 p_1070->g_214 p_1070->g_124 p_1070->g_182 p_1070->g_410 p_1070->g_209 p_1070->g_210 p_1070->g_37 p_1070->g_455 p_1070->g_113 p_1070->g_276 p_1070->g_185 p_1070->g_456 p_1070->g_85 p_1070->g_99 p_1070->g_232 p_1070->g_525 p_1070->g_156 p_1070->g_539 p_1070->g_530 p_1070->g_526 p_1070->g_215 p_1070->g_160 p_1070->g_67 p_1070->g_368 p_1070->g_628 p_1070->g_653 p_1070->g_777 p_1070->g_669 p_1070->g_778 p_1070->g_887 p_1070->g_828
 * writes: p_1070->g_410 p_1070->g_37 p_1070->g_455 p_1070->g_456 p_1070->g_113 p_1070->g_185 p_1070->g_124 p_1070->g_49 p_1070->g_99 p_1070->g_525 p_1070->g_530 p_1070->g_541 p_1070->g_215 p_1070->g_182 p_1070->g_160 p_1070->g_628 p_1070->g_368 p_1070->g_232 p_1070->g_539 p_1070->g_214 p_1070->g_526 p_1070->g_669
 */
int32_t * func_41(uint64_t  p_42, uint64_t  p_43, int8_t  p_44, struct S0 * p_1070)
{ /* block id: 182 */
    uint8_t l_406 = 255UL;
    int32_t *l_409 = &p_1070->g_410;
    int32_t l_411 = 0x3A9D0971L;
    int32_t l_412 = 1L;
    int16_t *l_421 = &p_1070->g_99;
    int16_t **l_420 = &l_421;
    uint64_t *l_444[7];
    int8_t *l_458[8][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
    uint32_t l_512 = 4294967288UL;
    uint16_t *l_521 = &p_1070->g_182;
    uint16_t **l_520 = &l_521;
    uint8_t l_540 = 7UL;
    uint16_t l_542 = 0xA067L;
    uint32_t l_544[1][10] = {{0UL,0x44E015EFL,0UL,0UL,0x44E015EFL,0UL,0UL,0x44E015EFL,0UL,0UL}};
    uint32_t l_564 = 4294967295UL;
    uint32_t l_597 = 4294967289UL;
    int32_t *l_614 = &p_1070->g_113;
    int32_t **l_613 = &l_614;
    uint32_t l_688[9] = {0x272C788AL,0x272C788AL,0x272C788AL,0x272C788AL,0x272C788AL,0x272C788AL,0x272C788AL,0x272C788AL,0x272C788AL};
    int32_t **l_697 = &p_1070->g_669;
    int32_t ***l_696[9][7][4] = {{{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0}},{{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0}},{{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0}},{{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0}},{{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0}},{{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0}},{{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0}},{{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0}},{{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0},{(void*)0,(void*)0,&l_697,(void*)0}}};
    uint64_t l_776 = 18446744073709551615UL;
    uint64_t l_805 = 0x72E3F4D40C6CCBC0L;
    uint32_t l_851 = 6UL;
    int16_t *l_891 = &p_1070->g_456;
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_444[i] = &p_1070->g_160[1][0][0];
    if ((l_412 &= (l_411 = ((*l_409) ^= ((p_1070->g_347 > ((GROUP_DIVERGE(0, 1) && ((safe_mul_func_int16_t_s_s((-3L), (safe_rshift_func_int8_t_s_u((safe_mod_func_uint32_t_u_u(((+0x6D48661F4375B634L) && (+(~p_43))), (safe_unary_minus_func_int8_t_s((safe_mul_func_int16_t_s_s((p_1070->g_145 & l_406), ((safe_sub_func_int8_t_s_s(((p_42 > 0x1DCB26EDL) || (p_42 == p_1070->g_214)), p_1070->g_124[0][1][2])) | 18446744073709551615UL))))))), l_406)))) > FAKE_DIVERGE(p_1070->group_0_offset, get_group_id(0), 10))) < p_1070->g_182)) != p_1070->g_124[1][3][8])))))
    { /* block id: 186 */
        int16_t *l_425[8][10] = {{&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,(void*)0,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99},{&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,(void*)0,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99},{&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,(void*)0,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99},{&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,(void*)0,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99},{&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,(void*)0,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99},{&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,(void*)0,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99},{&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,(void*)0,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99},{&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,(void*)0,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99}};
        int32_t l_429[10][3][5] = {{{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L}},{{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L}},{{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L}},{{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L}},{{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L}},{{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L}},{{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L}},{{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L}},{{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L}},{{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L},{(-5L),(-6L),0x2FF6B886L,0x43CFCDDDL,0L}}};
        int32_t **l_435 = (void*)0;
        int32_t ***l_434[2][8][1] = {{{&l_435},{&l_435},{&l_435},{&l_435},{&l_435},{&l_435},{&l_435},{&l_435}},{{&l_435},{&l_435},{&l_435},{&l_435},{&l_435},{&l_435},{&l_435},{&l_435}}};
        int8_t *l_457[7] = {&p_1070->g_67,&p_1070->g_49[2],&p_1070->g_67,&p_1070->g_67,&p_1070->g_49[2],&p_1070->g_67,&p_1070->g_67};
        int32_t *l_511 = &p_1070->g_113;
        int32_t **l_510[3][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
        uint16_t **l_523 = &l_521;
        uint16_t ***l_522 = &l_523;
        int64_t *l_524 = (void*)0;
        int16_t ***l_527 = &p_1070->g_525;
        int16_t **l_529[7][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
        int16_t ***l_528[1][4][6] = {{{&l_529[2][1],&l_529[2][1],&l_529[2][1],&l_529[2][1],&l_529[2][1],&l_529[2][1]},{&l_529[2][1],&l_529[2][1],&l_529[2][1],&l_529[2][1],&l_529[2][1],&l_529[2][1]},{&l_529[2][1],&l_529[2][1],&l_529[2][1],&l_529[2][1],&l_529[2][1],&l_529[2][1]},{&l_529[2][1],&l_529[2][1],&l_529[2][1],&l_529[2][1],&l_529[2][1],&l_529[2][1]}}};
        uint8_t *l_531 = &l_406;
        uint8_t l_543 = 1UL;
        int32_t l_598 = 0x2004710DL;
        int16_t l_612 = 0x2393L;
        int i, j, k;
        for (l_411 = (-1); (l_411 <= (-20)); l_411 = safe_sub_func_int16_t_s_s(l_411, 6))
        { /* block id: 189 */
            int32_t l_417[3];
            int16_t *l_424[2];
            int16_t **l_426 = &l_425[2][8];
            int8_t *l_430 = &p_1070->g_49[0];
            int32_t **l_431 = &l_409;
            int64_t *l_453 = &p_1070->g_37;
            int64_t *l_454[1][6] = {{&p_1070->g_455,&p_1070->g_455,&p_1070->g_455,&p_1070->g_455,&p_1070->g_455,&p_1070->g_455}};
            uint16_t *l_473 = &p_1070->g_182;
            int i, j;
            for (i = 0; i < 3; i++)
                l_417[i] = 0x51B94486L;
            for (i = 0; i < 2; i++)
                l_424[i] = &p_1070->g_99;
            (*l_431) = &l_417[2];
            (*l_409) = ((safe_add_func_int16_t_s_s((((void*)0 == l_434[0][1][0]) | (0xCBF6F549L && (safe_sub_func_uint8_t_u_u(1UL, (safe_rshift_func_int8_t_s_u(0L, ((safe_add_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(((&p_42 != l_444[0]) | (safe_rshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u(((p_1070->g_456 = (p_1070->g_455 &= ((*l_453) ^= ((p_43 ^ ((safe_mod_func_int16_t_s_s((((*l_426) = (*l_420)) == (*p_1070->g_209)), FAKE_DIVERGE(p_1070->group_0_offset, get_group_id(0), 10))) == 0x2ABC30E03313E660L)) == (**l_431))))) < p_1070->g_124[1][0][6]), 14)), p_44))), (*l_409))), 255UL)) & p_42))))))), (-6L))) > p_43);
            (*l_431) = (*l_431);
        }
        for (p_1070->g_113 = 0; (p_1070->g_113 >= 0); p_1070->g_113++)
        { /* block id: 203 */
            int8_t l_478 = 0x0DL;
            uint8_t *l_492 = &l_406;
            uint32_t **l_501 = (void*)0;
            int32_t l_513 = (-9L);
            if (l_478)
                break;
            (*p_1070->g_276) = &l_411;
            l_513 &= ((safe_add_func_int16_t_s_s((((safe_mod_func_int64_t_s_s((safe_sub_func_int16_t_s_s(((**l_420) &= (0x1415L < ((((safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u((safe_mul_func_int16_t_s_s(((((*l_492)++) && (safe_mul_func_int8_t_s_s((p_44 = (p_1070->g_49[2] = ((safe_lshift_func_int16_t_s_s(((safe_mod_func_uint16_t_u_u(((void*)0 == l_501), ((safe_mod_func_int8_t_s_s(l_478, l_478)) | ((safe_div_func_int8_t_s_s((safe_lshift_func_int8_t_s_s((p_1070->g_124[0][1][2] = (safe_sub_func_int32_t_s_s(((*p_1070->g_185) = l_478), ((p_1070->g_456 , (l_510[1][0] != (void*)0)) , 3L)))), 2)), 1L)) , p_1070->g_85[8])))) , l_478), p_43)) , p_42))), p_1070->g_214))) > 3UL), p_1070->g_145)), p_43)), 0UL)) , (void*)0) != &l_478) == 1UL))), l_512)), p_1070->g_232)) > p_1070->g_113) == GROUP_DIVERGE(0, 1)), p_43)) > p_43);
        }
        if ((l_411 = (safe_mul_func_int8_t_s_s(((((~(safe_sub_func_uint64_t_u_u((safe_sub_func_int32_t_s_s(p_44, (l_520 != ((*l_522) = &l_521)))), 4UL))) , l_444[0]) == l_524) | p_42), ((*l_531) = (((*l_527) = (l_420 = p_1070->g_525)) != (p_1070->g_530 = &p_1070->g_526)))))))
        { /* block id: 220 */
            int32_t *l_532[7] = {&l_412,&l_412,&l_412,&l_412,&l_412,&l_412,&l_412};
            int64_t l_567 = (-9L);
            uint16_t l_568 = 0UL;
            int i;
            l_532[4] = &l_411;
            for (p_1070->g_37 = 1; (p_1070->g_37 <= 6); p_1070->g_37 += 1)
            { /* block id: 224 */
                int32_t l_535 = 0x03C842F6L;
                int64_t *l_536[4] = {&p_1070->g_455,&p_1070->g_455,&p_1070->g_455,&p_1070->g_455};
                int32_t l_566[7][10][3] = {{{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L}},{{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L}},{{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L}},{{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L}},{{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L}},{{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L}},{{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L},{(-6L),0x5792F015L,0x59F98BB1L}}};
                int i, j, k;
                l_544[0][2] = (((((+(safe_div_func_int64_t_s_s((p_1070->g_85[7] , ((l_535 && p_1070->g_232) == ((**p_1070->g_530) = (p_43 , (p_42 , ((p_1070->g_455 = p_44) || ((p_1070->g_541 = ((safe_lshift_func_int8_t_s_s((((!(+p_1070->g_156)) || (p_1070->g_455 = 0x2D330336B65BF17CL)) < p_1070->g_539), 1)) != l_540)) < l_542))))))), p_42))) , 0UL) , p_1070->g_85[0]) ^ l_543) < p_42);
                for (p_44 = 3; (p_44 >= 0); p_44 -= 1)
                { /* block id: 232 */
                    uint32_t l_563 = 0x7CD88DEDL;
                    int i;
                    for (p_1070->g_215 = 0; (p_1070->g_215 <= 3); p_1070->g_215 += 1)
                    { /* block id: 235 */
                        int16_t l_565 = 0x5AB8L;
                        int i, j, k;
                        l_532[p_1070->g_37] = &l_411;
                        l_565 = ((((p_1070->g_124[p_1070->g_215][(p_44 + 1)][(p_1070->g_215 + 5)] || (((safe_lshift_func_uint8_t_u_s((safe_add_func_uint8_t_u_u(((*l_531) = p_44), (safe_rshift_func_int8_t_s_u(p_42, (+(safe_sub_func_uint32_t_u_u((safe_add_func_int16_t_s_s(((**p_1070->g_530) = 0x33D5L), (l_564 = (p_1070->g_160[6][1][0] , (!((p_43 , (safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s(((p_1070->g_214 > (p_44 <= (safe_add_func_uint32_t_u_u((!((void*)0 != &p_44)), p_43)))) == p_1070->g_37), l_563)), p_1070->g_160[6][1][0]))) != l_563)))))), p_1070->g_124[0][1][2]))))))), p_42)) , &p_1070->g_124[0][1][2]) == &p_1070->g_154)) && l_563) , (-1L)) || p_1070->g_347);
                    }
                    --l_568;
                }
            }
        }
        else
        { /* block id: 245 */
            uint8_t l_571[8][3][9] = {{{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL}},{{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL}},{{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL}},{{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL}},{{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL}},{{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL}},{{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL}},{{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL},{0x1CL,252UL,0xC3L,0xACL,1UL,2UL,2UL,1UL,0xACL}}};
            int32_t l_584 = 5L;
            int32_t l_585 = 7L;
            int32_t l_586 = 0L;
            int i, j, k;
            --l_571[3][0][6];
            for (p_1070->g_410 = 0; (p_1070->g_410 >= 12); p_1070->g_410++)
            { /* block id: 249 */
                uint16_t **l_576 = &l_521;
                int32_t l_577 = 0x0BD621EAL;
                (*l_522) = l_576;
                l_577 = l_577;
            }
            l_586 |= (((l_585 ^= ((((FAKE_DIVERGE(p_1070->local_1_offset, get_local_id(1), 10) , p_44) , (safe_mod_func_uint8_t_u_u(((&p_1070->g_368 != l_511) , (safe_div_func_uint64_t_u_u((p_1070->g_67 , ((&l_511 != ((l_584 |= ((0x700FCE3A2B28ECD0L < 18446744073709551615UL) & (p_42 && ((safe_mod_func_uint8_t_u_u((p_1070->g_113 >= p_1070->g_215), (-1L))) && 0x8F02284885DE8108L)))) , (void*)0)) == 0x5CB46387L)), l_571[3][0][6]))), p_44))) && GROUP_DIVERGE(2, 1)) <= p_42)) == p_1070->g_410) || FAKE_DIVERGE(p_1070->group_2_offset, get_group_id(2), 10));
            for (l_540 = 0; (l_540 >= 26); l_540 = safe_add_func_int32_t_s_s(l_540, 6))
            { /* block id: 258 */
                int16_t *l_605 = &p_1070->g_99;
                int32_t l_615 = 1L;
                for (p_1070->g_99 = 0; (p_1070->g_99 < 5); ++p_1070->g_99)
                { /* block id: 261 */
                    uint16_t l_591 = 1UL;
                    l_591 = p_42;
                    for (l_542 = 0; (l_542 < 2); l_542 = safe_add_func_int64_t_s_s(l_542, 3))
                    { /* block id: 265 */
                        uint8_t l_594[3][8] = {{0x73L,0x73L,0x73L,0x73L,0x73L,0x73L,0x73L,0x73L},{0x73L,0x73L,0x73L,0x73L,0x73L,0x73L,0x73L,0x73L},{0x73L,0x73L,0x73L,0x73L,0x73L,0x73L,0x73L,0x73L}};
                        int i, j;
                        ++l_594[2][6];
                        if (l_597)
                            break;
                        l_584 = (0x514FL & l_598);
                    }
                }
                if (p_43)
                    continue;
                for (p_1070->g_456 = (-17); (p_1070->g_456 > (-27)); p_1070->g_456 = safe_sub_func_uint32_t_u_u(p_1070->g_456, 4))
                { /* block id: 274 */
                    int64_t *l_610 = &p_1070->g_455;
                    int32_t l_611 = 0x166CC9DDL;
                    l_611 &= ((safe_lshift_func_uint16_t_u_u(((p_1070->g_37 = p_1070->g_156) < (p_1070->g_85[0] > (safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1070->local_2_offset, get_local_id(2), 10), p_42)))), 7)) <= ((((l_605 == (void*)0) , (safe_add_func_int8_t_s_s(0x12L, p_1070->g_67))) == p_42) , ((((*l_610) = (safe_div_func_uint16_t_u_u((p_44 == p_44), GROUP_DIVERGE(1, 1)))) && FAKE_DIVERGE(p_1070->global_0_offset, get_global_id(0), 10)) , 0x135C8229L)));
                    l_612 = 0x06D685AEL;
                    l_584 |= p_42;
                    l_611 = ((l_613 == (void*)0) , ((&p_43 == &p_1070->g_160[2][0][0]) | (((**p_1070->g_530) = (p_43 & l_615)) , p_1070->g_67)));
                }
                l_584 = l_571[0][0][1];
            }
        }
    }
    else
    { /* block id: 286 */
        uint16_t *l_622 = &l_542;
        uint16_t *l_627 = (void*)0;
        int32_t *l_629 = &l_411;
        (*l_629) &= (safe_sub_func_uint32_t_u_u(p_1070->g_113, ((safe_mul_func_int8_t_s_s((safe_add_func_uint16_t_u_u(((*l_622) |= ((**l_520) = (0L ^ 65529UL))), ((*l_409) = p_42))), p_1070->g_455)) < (safe_div_func_uint32_t_u_u(((safe_div_func_uint16_t_u_u((p_1070->g_628 = (~(0x295784320228DEF0L | (p_1070->g_160[1][1][0] = ((void*)0 == &l_540))))), 0x70EDL)) == 1L), p_42)))));
        (*l_409) = (p_42 >= (((!(-7L)) > p_1070->g_85[6]) | (safe_rshift_func_int16_t_s_s((safe_div_func_int32_t_s_s(0x06B20C73L, (safe_rshift_func_int16_t_s_u((safe_unary_minus_func_uint8_t_u(255UL)), 5)))), 0))));
    }
    for (p_1070->g_368 = 0; (p_1070->g_368 > 23); p_1070->g_368 = safe_add_func_int32_t_s_s(p_1070->g_368, 8))
    { /* block id: 297 */
        int32_t l_651 = 8L;
        int32_t l_676 = 1L;
        int32_t l_689 = (-1L);
        int16_t *l_715 = (void*)0;
        uint32_t *l_730 = &p_1070->g_215;
        int32_t l_739 = 0x241473E3L;
        int32_t l_752 = 0x775C90FEL;
        uint8_t l_753 = 0UL;
        int32_t l_765 = 1L;
        uint32_t *l_772 = &p_1070->g_232;
        uint8_t *l_775 = &l_406;
        int32_t *l_782 = &l_651;
        int16_t l_857 = 1L;
        uint16_t ***l_858 = (void*)0;
        if (l_544[0][2])
            break;
        for (p_1070->g_628 = (-25); (p_1070->g_628 != (-18)); p_1070->g_628++)
        { /* block id: 301 */
            uint32_t **l_656 = &p_1070->g_653;
            int16_t **l_660 = (void*)0;
            int32_t l_686 = 0x6D6F3641L;
            int32_t ***l_701[7][1] = {{&l_697},{&l_697},{&l_697},{&l_697},{&l_697},{&l_697},{&l_697}};
            int16_t *l_713 = &p_1070->g_456;
            int32_t l_725[5][1][7] = {{{0x0E89B4A8L,(-1L),0x0E89B4A8L,0x0E89B4A8L,(-1L),0x0E89B4A8L,0x0E89B4A8L}},{{0x0E89B4A8L,(-1L),0x0E89B4A8L,0x0E89B4A8L,(-1L),0x0E89B4A8L,0x0E89B4A8L}},{{0x0E89B4A8L,(-1L),0x0E89B4A8L,0x0E89B4A8L,(-1L),0x0E89B4A8L,0x0E89B4A8L}},{{0x0E89B4A8L,(-1L),0x0E89B4A8L,0x0E89B4A8L,(-1L),0x0E89B4A8L,0x0E89B4A8L}},{{0x0E89B4A8L,(-1L),0x0E89B4A8L,0x0E89B4A8L,(-1L),0x0E89B4A8L,0x0E89B4A8L}}};
            int i, j, k;
            (1 + 1);
        }
        if (((((safe_add_func_int16_t_s_s((((*l_772) = ((*p_1070->g_653) >= (0x16L || (safe_mul_func_int8_t_s_s(l_651, 0x92L))))) ^ (((**l_420) &= (p_1070->g_628 != (safe_rshift_func_int8_t_s_s(l_739, 0)))) || p_1070->g_145)), ((*l_521) = ((-6L) <= (+((((*l_775) |= (p_44 ^ p_42)) > l_776) || GROUP_DIVERGE(1, 1))))))) <= p_43) , p_1070->g_777) == &p_1070->g_778))
        { /* block id: 366 */
            int32_t *l_781 = &l_676;
            for (p_1070->g_539 = 8; (p_1070->g_539 >= 16); p_1070->g_539 = safe_add_func_uint64_t_u_u(p_1070->g_539, 6))
            { /* block id: 369 */
                uint64_t l_806 = 18446744073709551615UL;
                int32_t l_852 = 1L;
                l_782 = l_781;
            }
            for (l_540 = (-9); (l_540 == 6); l_540++)
            { /* block id: 409 */
                uint32_t *l_867[4] = {&p_1070->g_145,&p_1070->g_145,&p_1070->g_145,&p_1070->g_145};
                int i;
                (**l_697) = (&l_715 == &l_715);
                (**l_697) |= (p_1070->g_37 , (l_867[3] != &l_688[5]));
            }
        }
        else
        { /* block id: 413 */
            int32_t l_868 = 0L;
            (*p_1070->g_669) |= (l_868 || 0x46B43F3956388863L);
            return (*l_697);
        }
    }
    for (l_406 = 0; (l_406 <= 8); l_406 += 1)
    { /* block id: 420 */
        int32_t *l_875 = &l_411;
        int32_t **l_878 = (void*)0;
        int16_t *l_892 = &p_1070->g_99;
        int i;
        (*l_697) = ((((((safe_rshift_func_int8_t_s_u((((safe_div_func_int16_t_s_s((safe_sub_func_int16_t_s_s(((((&l_421 == &l_421) , ((l_875 != ((safe_rshift_func_uint8_t_u_s(((**l_697) > ((l_878 = &p_1070->g_185) == ((safe_mod_func_uint16_t_u_u((safe_add_func_int32_t_s_s(0x45092848L, ((*p_1070->g_653) = ((**p_1070->g_777) <= 0xBDD7L)))), (safe_rshift_func_uint8_t_u_s((!(safe_sub_func_int32_t_s_s((((*p_1070->g_525) = ((l_688[l_406] = (p_1070->g_887 != &p_1070->g_888)) , l_891)) != l_892), 7UL))), p_1070->g_828)))) , &p_1070->g_669))), (*l_875))) , (void*)0)) != GROUP_DIVERGE(0, 1))) > (*l_875)) , p_42), 0x6A10L)), 0x07BFL)) < 1UL) , p_1070->g_85[8]), p_44)) ^ p_1070->g_455) <= p_44) >= (-1L)) < 0x0DE6L) , (*l_697));
        for (p_43 = 0; (p_43 <= 1); p_43 += 1)
        { /* block id: 428 */
            (*l_875) &= (p_1070->g_37 != 0x466FED4F92C039A8L);
        }
    }
    return (*l_697);
}


/* ------------------------------------------ */
/* 
 * reads : p_1070->g_2 p_1070->g_368 p_1070->g_160 p_1070->g_156 p_1070->g_38 p_1070->g_243 p_1070->g_154 p_1070->g_85 p_1070->g_185 p_1070->g_276 p_1070->g_215 p_1070->g_214 p_1070->g_347
 * writes: p_1070->g_232 p_1070->g_37 p_1070->g_185 p_1070->g_214 p_1070->g_67 p_1070->g_160 p_1070->g_99 p_1070->g_368
 */
uint16_t  func_50(int32_t  p_51, int32_t * p_52, struct S0 * p_1070)
{ /* block id: 173 */
    uint8_t l_374 = 252UL;
    int32_t l_375 = 0x3E424261L;
    int8_t *l_376 = &p_1070->g_154;
    uint32_t *l_381 = &p_1070->g_368;
    uint32_t *l_387 = (void*)0;
    uint32_t **l_386[2][9][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
    int32_t *l_392 = &p_1070->g_214;
    int64_t *l_393 = &p_1070->g_37;
    int32_t *l_394[10];
    int32_t **l_395[8] = {&l_394[4],&l_394[4],&l_394[4],&l_394[4],&l_394[4],&l_394[4],&l_394[4],&l_394[4]};
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_394[i] = &p_1070->g_2;
    l_375 ^= l_374;
    p_52 = func_60(((l_375 = 0xA2L) , l_376), l_376, (*p_52), p_1070->g_368, p_51, p_1070);
    return p_51;
}


/* ------------------------------------------ */
/* 
 * reads : p_1070->g_67 p_1070->g_37 p_1070->g_88 p_1070->g_113 p_1070->g_2 p_1070->g_124 p_1070->g_99 p_1070->g_38 p_1070->g_160 p_1070->g_85 p_1070->g_145 p_1070->g_209 p_1070->g_182 p_1070->g_154 p_1070->g_214 p_1070->g_215 p_1070->g_156 p_1070->g_243 p_1070->g_185 p_1070->g_276 p_1070->g_347 p_1070->g_368
 * writes: p_1070->g_67 p_1070->g_37 p_1070->g_88 p_1070->g_99 p_1070->g_113 p_1070->g_124 p_1070->g_145 p_1070->g_154 p_1070->g_156 p_1070->g_160 p_1070->g_214 p_1070->g_232 p_1070->g_185 p_1070->g_368
 */
int64_t  func_55(uint64_t  p_56, uint8_t  p_57, int64_t  p_58, struct S0 * p_1070)
{ /* block id: 23 */
    int8_t *l_66 = &p_1070->g_67;
    int32_t *l_190[6][6][6] = {{{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2}},{{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2}},{{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2}},{{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2}},{{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2}},{{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2},{&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2}}};
    uint8_t l_216 = 0UL;
    uint16_t l_217 = 0x3AA4L;
    int32_t **l_372 = &l_190[1][2][0];
    int i, j, k;
    (*l_372) = func_60(l_66, func_68(func_73(((0x3CL != ((*l_66) = 0x0AL)) >= p_57), &p_1070->g_2, l_66, p_1070), l_190[1][2][0], ((p_1070->g_2 <= 0xC5L) , (void*)0), p_56, p_1070), p_1070->g_215, l_216, l_217, p_1070);
    return p_1070->g_2;
}


/* ------------------------------------------ */
/* 
 * reads : p_1070->g_160 p_1070->g_156 p_1070->g_38 p_1070->g_243 p_1070->g_67 p_1070->g_124 p_1070->g_85 p_1070->g_185 p_1070->g_276 p_1070->g_215 p_1070->g_214 p_1070->g_347 p_1070->g_368 p_1070->g_37 p_1070->g_154
 * writes: p_1070->g_232 p_1070->g_37 p_1070->g_185 p_1070->g_214 p_1070->g_67 p_1070->g_160 p_1070->g_99 p_1070->g_368
 */
int32_t * func_60(int8_t * p_61, int8_t * p_62, int32_t  p_63, int32_t  p_64, uint16_t  p_65, struct S0 * p_1070)
{ /* block id: 100 */
    int32_t ***l_226 = (void*)0;
    int32_t **l_228 = &p_1070->g_185;
    int32_t ***l_227 = &l_228;
    uint32_t *l_231 = &p_1070->g_232;
    int32_t *l_233[8][5][6] = {{{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2}},{{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2}},{{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2}},{{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2}},{{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2}},{{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2}},{{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2}},{{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2},{&p_1070->g_214,&p_1070->g_214,&p_1070->g_2,&p_1070->g_214,&p_1070->g_214,&p_1070->g_2}}};
    int64_t *l_267 = &p_1070->g_37;
    uint32_t l_282 = 0x4BA09C71L;
    uint16_t *l_316 = &p_1070->g_182;
    int32_t *l_337 = &p_1070->g_214;
    int32_t *l_366[9] = {&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2,&p_1070->g_2};
    int32_t l_367 = 1L;
    int32_t *l_371 = &p_1070->g_214;
    int i, j, k;
lbl_341:
    p_63 = ((safe_add_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s((((p_1070->g_160[2][0][0] | (safe_mod_func_int8_t_s_s((!p_1070->g_156), 0x71L))) , (void*)0) != &p_63), 14)), (((*l_227) = (void*)0) != &p_1070->g_185))), ((*l_231) = ((~(safe_mul_func_int16_t_s_s(p_65, 0UL))) ^ p_1070->g_38)))) > 65533UL);
    for (p_1070->g_37 = 0; (p_1070->g_37 < 17); ++p_1070->g_37)
    { /* block id: 106 */
        int32_t l_236 = 1L;
        int32_t l_237 = (-1L);
        int32_t l_238[9] = {0x28A352BAL,(-1L),0x28A352BAL,0x28A352BAL,(-1L),0x28A352BAL,0x28A352BAL,(-1L),0x28A352BAL};
        uint8_t l_239[7][3][8] = {{{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL},{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL},{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL}},{{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL},{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL},{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL}},{{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL},{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL},{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL}},{{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL},{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL},{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL}},{{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL},{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL},{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL}},{{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL},{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL},{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL}},{{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL},{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL},{7UL,7UL,247UL,0UL,1UL,0xD3L,8UL,0UL}}};
        uint16_t l_256 = 65534UL;
        uint32_t *l_257 = &p_1070->g_232;
        int32_t *l_268 = &p_1070->g_214;
        int32_t *l_344 = &l_238[0];
        uint32_t l_359 = 0x8F109721L;
        int i, j, k;
        l_239[6][1][7]--;
        (*p_1070->g_243) = &l_238[0];
        l_237 = (safe_mod_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((safe_div_func_uint8_t_u_u(p_64, ((*p_62) | (*p_62)))), (FAKE_DIVERGE(p_1070->group_2_offset, get_group_id(2), 10) & (((((((-8L) >= (((*l_231) = (&l_228 != &l_228)) >= (safe_lshift_func_int8_t_s_s((l_238[0] = (safe_sub_func_int32_t_s_s((p_63 = (-1L)), (((l_239[6][1][7] >= (safe_mod_func_int64_t_s_s(((((((void*)0 != &p_65) == l_256) > 0xA9L) > (-1L)) >= l_237), p_1070->g_85[5]))) | 7L) > l_236)))), 4)))) >= p_65) >= l_237) != p_64) == FAKE_DIVERGE(p_1070->global_0_offset, get_global_id(0), 10)) ^ 0x73DCL)))), l_239[5][2][5]));
        if (((void*)0 != l_257))
        { /* block id: 113 */
            int8_t l_262 = 0x3AL;
            int32_t l_270 = 0x4C5E1F84L;
            uint8_t *l_295 = &l_239[6][1][7];
            int32_t l_308 = 0L;
            uint16_t *l_309 = &l_256;
            if ((safe_lshift_func_uint8_t_u_s(((l_239[6][1][7] | (((safe_sub_func_uint32_t_u_u(4294967295UL, l_262)) != ((*p_61) & l_237)) || ((safe_div_func_uint16_t_u_u(l_238[8], (l_262 , (safe_lshift_func_int16_t_s_u((l_267 == (void*)0), 5))))) || l_262))) || 0x2E80L), l_237)))
            { /* block id: 114 */
                return l_268;
            }
            else
            { /* block id: 116 */
                int8_t l_271 = 0x76L;
                int32_t *l_275 = (void*)0;
                int32_t l_279[3][4] = {{1L,1L,1L,1L},{1L,1L,1L,1L},{1L,1L,1L,1L}};
                int i, j;
                for (l_262 = 3; (l_262 >= 0); l_262 -= 1)
                { /* block id: 119 */
                    int32_t **l_269 = &l_233[1][4][5];
                    int i;
                    (*l_269) = (void*)0;
                    (*l_269) = &l_238[(l_262 + 1)];
                }
                if ((l_270 = (*p_1070->g_185)))
                { /* block id: 124 */
                    uint32_t l_272 = 0xF9AED315L;
                    --l_272;
                    (*p_1070->g_276) = l_275;
                }
                else
                { /* block id: 127 */
                    int8_t l_277 = 0x39L;
                    int32_t l_278 = 0x50093E75L;
                    int32_t l_281 = 0x456ECF78L;
                    l_282--;
                    p_63 = (safe_lshift_func_int16_t_s_u(p_63, 8));
                }
            }
            (*l_268) = ((safe_rshift_func_int8_t_s_u((safe_mod_func_uint8_t_u_u((p_64 > (((safe_div_func_uint32_t_u_u((((FAKE_DIVERGE(p_1070->group_1_offset, get_group_id(1), 10) , (safe_add_func_uint8_t_u_u((((*l_295) = 0x80L) >= ((((*l_309) = (((safe_mul_func_int16_t_s_s(1L, p_1070->g_215)) < (+(l_308 |= (((GROUP_DIVERGE(2, 1) | (0x3EL ^ (safe_rshift_func_uint16_t_u_s(((safe_div_func_int32_t_s_s(l_270, (safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), (((safe_add_func_int32_t_s_s((((safe_mul_func_uint8_t_u_u((*l_268), (GROUP_DIVERGE(0, 1) || p_1070->g_214))) >= l_270) >= p_65), FAKE_DIVERGE(p_1070->group_1_offset, get_group_id(1), 10))) , p_1070->g_215) != p_64))))) > p_63), l_262)))) && p_64) < 0x55B1L)))) > p_64)) || l_262) , 251UL)), (-8L)))) , l_308) == 0x6035EBB4L), p_65)) < 0x4C00055A88146568L) >= 3L)), p_1070->g_160[2][0][0])), 3)) ^ p_64);
        }
        else
        { /* block id: 136 */
            int64_t l_334 = 0x603E7C4E6F9233FEL;
            int32_t l_335 = 9L;
            int32_t **l_343 = &l_268;
            int16_t *l_358 = &p_1070->g_99;
            int32_t *l_361 = &p_1070->g_113;
            int32_t **l_360 = &l_361;
            int32_t *l_362 = &p_1070->g_113;
            for (p_1070->g_214 = 0; (p_1070->g_214 != 18); p_1070->g_214++)
            { /* block id: 139 */
                int64_t l_342 = (-8L);
                for (p_1070->g_67 = (-11); (p_1070->g_67 < 27); ++p_1070->g_67)
                { /* block id: 142 */
                    uint16_t *l_318 = &p_1070->g_182;
                    uint16_t **l_317 = &l_318;
                    uint32_t **l_321 = &l_231;
                    uint16_t *l_329 = &p_1070->g_182;
                    uint16_t **l_328 = &l_329;
                    int16_t *l_330 = (void*)0;
                    int16_t *l_331[10] = {&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99,&p_1070->g_99};
                    int32_t l_332 = 1L;
                    uint32_t *l_333[5][4][6] = {{{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145},{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145},{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145},{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145}},{{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145},{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145},{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145},{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145}},{{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145},{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145},{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145},{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145}},{{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145},{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145},{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145},{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145}},{{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145},{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145},{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145},{(void*)0,&p_1070->g_145,&l_282,&p_1070->g_145,&p_1070->g_215,&p_1070->g_145}}};
                    uint64_t *l_336 = &p_1070->g_160[2][0][0];
                    int32_t **l_338 = &l_233[4][3][2];
                    int32_t **l_339 = (void*)0;
                    int32_t **l_340 = &l_337;
                    int i, j, k;
                    (*p_1070->g_185) = (safe_mod_func_int64_t_s_s((l_316 == ((1L | p_65) , (p_1070->g_215 , ((*l_317) = l_316)))), ((*l_336) = ((safe_mul_func_int8_t_s_s((((*l_321) = &p_1070->g_232) == ((l_334 = ((safe_add_func_int16_t_s_s((l_332 = (safe_div_func_int32_t_s_s((safe_mul_func_int16_t_s_s((((*l_328) = &p_65) != &p_65), 0x2681L)), (**p_1070->g_243)))), p_64)) == 0L)) , &p_1070->g_232)), l_335)) ^ 0UL))));
                    (*l_340) = ((*l_338) = l_337);
                    if (p_1070->g_214)
                        goto lbl_341;
                }
                (**p_1070->g_276) = l_342;
            }
            l_344 = (p_63 , ((*l_343) = &p_63));
            (**l_343) = (safe_mul_func_uint16_t_u_u(p_1070->g_347, (safe_mod_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s(((p_1070->g_214 != (0xD3L || (*l_344))) != ((((*p_1070->g_185) = (safe_lshift_func_int16_t_s_u((safe_sub_func_uint64_t_u_u((((*l_358) = p_63) , l_359), 18446744073709551615UL)), (**l_343)))) > (((*l_360) = l_268) != l_362)) ^ 0xEEE2D5EAL)), (**l_343))), 1UL))));
            for (l_282 = 0; (l_282 < 20); l_282 = safe_add_func_int64_t_s_s(l_282, 8))
            { /* block id: 164 */
                int32_t *l_365[8][9][3] = {{{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2}},{{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2}},{{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2}},{{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2}},{{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2}},{{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2}},{{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2}},{{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2},{(void*)0,&p_1070->g_2,&p_1070->g_2}}};
                int i, j, k;
                return l_366[5];
            }
        }
    }
    p_1070->g_368--;
    return l_371;
}


/* ------------------------------------------ */
/* 
 * reads : p_1070->g_67 p_1070->g_124 p_1070->g_160 p_1070->g_145 p_1070->g_209 p_1070->g_182 p_1070->g_154 p_1070->g_214
 * writes: p_1070->g_160 p_1070->g_37 p_1070->g_154 p_1070->g_214
 */
int8_t * func_68(int8_t * p_69, int32_t * p_70, int32_t * p_71, int64_t  p_72, struct S0 * p_1070)
{ /* block id: 93 */
    int32_t l_201 = 0x247FFD21L;
    uint64_t *l_202 = (void*)0;
    uint64_t *l_203 = &p_1070->g_160[0][1][0];
    int32_t l_206 = 0x780FFA4CL;
    int64_t *l_211 = &p_1070->g_37;
    int8_t *l_212 = &p_1070->g_154;
    int32_t *l_213 = &p_1070->g_214;
    (*l_213) ^= (safe_rshift_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u(((((safe_lshift_func_int8_t_s_s((safe_sub_func_int8_t_s_s((*p_69), ((l_201 = l_201) < (++(*l_203))))), (((p_72 > l_206) <= ((safe_mul_func_int8_t_s_s((-3L), ((p_72 & (p_72 | ((p_1070->g_145 <= ((((*l_212) |= (((*l_211) = (p_1070->g_209 == (void*)0)) <= p_1070->g_182)) || 0x01L) < l_206)) == 0x60L))) || l_206))) || p_1070->g_154)) , l_206))) && l_201) | (-1L)) >= 0x642CL), 7UL)), l_206)), p_1070->g_182));
    return p_69;
}


/* ------------------------------------------ */
/* 
 * reads : p_1070->g_67 p_1070->g_37 p_1070->g_88 p_1070->g_113 p_1070->g_2 p_1070->g_124 p_1070->g_99 p_1070->g_38 p_1070->g_160 p_1070->g_85 p_1070->g_145
 * writes: p_1070->g_37 p_1070->g_88 p_1070->g_67 p_1070->g_99 p_1070->g_113 p_1070->g_124 p_1070->g_145 p_1070->g_154 p_1070->g_156 p_1070->g_160
 */
int8_t * func_73(uint32_t  p_74, int32_t * p_75, int8_t * p_76, struct S0 * p_1070)
{ /* block id: 25 */
    int64_t l_79 = 0L;
    int32_t l_80 = 0x584D571FL;
    int32_t l_86 = 0x0C37F2E4L;
    int32_t l_87[2];
    uint64_t l_114 = 0xE354A5A8626FBE56L;
    int16_t *l_125 = &p_1070->g_99;
    int32_t *l_127 = &l_87[0];
    int8_t *l_189 = &p_1070->g_124[1][0][8];
    int i;
    for (i = 0; i < 2; i++)
        l_87[i] = 0x7014A1F6L;
    l_80 = ((p_1070->g_37 = ((safe_div_func_uint32_t_u_u(p_1070->g_67, l_79)) && 1L)) <= GROUP_DIVERGE(2, 1));
    for (p_1070->g_37 = 23; (p_1070->g_37 < 8); --p_1070->g_37)
    { /* block id: 30 */
        int32_t *l_83 = &l_80;
        int32_t *l_84[5];
        int32_t *l_100 = &p_1070->g_2;
        int16_t *l_171 = &p_1070->g_99;
        int i;
        for (i = 0; i < 5; i++)
            l_84[i] = &l_80;
        p_1070->g_88--;
        for (p_1070->g_67 = (-11); (p_1070->g_67 != (-24)); p_1070->g_67--)
        { /* block id: 34 */
            uint64_t l_97 = 0xADB5619AF7C767D9L;
            int16_t *l_98[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_103 = 0x7D3A18FAL;
            int32_t l_128 = 0x4F06DCD3L;
            int8_t l_188 = 0x4BL;
            int i;
            l_103 = (safe_div_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u((l_97 , ((((p_1070->g_99 = p_74) != GROUP_DIVERGE(1, 1)) , &p_1070->g_2) == l_100)), 0)), (safe_lshift_func_uint16_t_u_s(((*p_76) == (0L < 0x0447D5CEL)), 10))));
            for (l_80 = (-12); (l_80 <= 5); l_80 = safe_add_func_int16_t_s_s(l_80, 4))
            { /* block id: 39 */
                int32_t *l_112[6];
                int8_t *l_123[4];
                int16_t *l_126 = &p_1070->g_99;
                int32_t l_151 = 0x3028E1C9L;
                int32_t l_152 = 0x7C099D7EL;
                int32_t *l_159 = &l_87[0];
                int i;
                for (i = 0; i < 6; i++)
                    l_112[i] = &p_1070->g_113;
                for (i = 0; i < 4; i++)
                    l_123[i] = &p_1070->g_124[0][1][2];
                l_128 &= (safe_sub_func_uint16_t_u_u(((safe_div_func_uint64_t_u_u((l_103 = (((p_1070->g_113 ^= (l_114 = (+(safe_div_func_uint64_t_u_u(0UL, p_74))))) , ((safe_mul_func_uint8_t_u_u((p_1070->g_2 > (((safe_rshift_func_uint16_t_u_s(((safe_lshift_func_int8_t_s_s((safe_mul_func_int8_t_s_s((p_1070->g_124[0][0][6] &= (l_86 = 0x48L)), ((((l_84[3] == (((*l_100) , (p_1070->g_99 >= (l_125 != l_126))) , l_127)) <= 0x1A9B78C740E2D3E4L) >= p_1070->g_38) , (*p_76)))), (*p_76))) != 255UL), p_74)) ^ 0x3237F326L) != 1L)), GROUP_DIVERGE(2, 1))) , p_74)) & 3L)), 18446744073709551615UL)) | 0x24486533915DCBD5L), (*l_127)));
                for (l_128 = 26; (l_128 == (-24)); l_128 = safe_sub_func_int64_t_s_s(l_128, 9))
                { /* block id: 48 */
                    uint16_t l_155 = 65532UL;
                    int32_t *l_158[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_158[i] = &l_87[0];
                    for (l_97 = 3; (l_97 <= 8); l_97 += 1)
                    { /* block id: 51 */
                        return p_76;
                    }
                    for (p_1070->g_113 = (-11); (p_1070->g_113 <= 16); p_1070->g_113 = safe_add_func_uint64_t_u_u(p_1070->g_113, 5))
                    { /* block id: 56 */
                        int8_t *l_150 = &p_1070->g_124[1][4][3];
                        int32_t l_153 = 0x5915B70EL;
                        int32_t *l_157 = &l_87[0];
                        (*l_127) |= 0x2C5CA816L;
                        p_1070->g_156 = (safe_add_func_int64_t_s_s((safe_rshift_func_uint16_t_u_s((((safe_rshift_func_uint8_t_u_s(p_1070->g_38, 7)) < ((-2L) > (safe_lshift_func_int16_t_s_u((((safe_rshift_func_uint8_t_u_u(p_1070->g_124[1][4][0], 4)) == ((*l_127) = (0x53L != (p_1070->g_154 = ((p_74 , (((safe_div_func_int32_t_s_s((p_1070->g_145 = 0x19A73949L), (safe_sub_func_int32_t_s_s(((l_152 = ((l_151 &= ((void*)0 != l_150)) || (p_74 >= 0UL))) <= p_74), 4294967295UL)))) , l_152) == l_153)) == p_74))))) <= 4L), l_155)))) && (*l_127)), 3)), p_1070->g_37));
                        l_157 = &p_1070->g_2;
                    }
                    l_159 = (((void*)0 == l_158[2]) , &p_1070->g_2);
                    --p_1070->g_160[2][0][0];
                }
                for (l_79 = 24; (l_79 < 27); l_79++)
                { /* block id: 71 */
                    int32_t l_183 = 0L;
                    (*l_127) = l_97;
                    if (((*l_127) &= (&p_1070->g_113 == l_159)))
                    { /* block id: 74 */
                        int16_t **l_172[4][9][1] = {{{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126}},{{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126}},{{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126}},{{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126},{&l_126}}};
                        uint16_t *l_181[8][7][2] = {{{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182}},{{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182}},{{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182}},{{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182}},{{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182}},{{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182}},{{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182}},{{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182},{&p_1070->g_182,&p_1070->g_182}}};
                        int i, j, k;
                        l_103 ^= ((*l_127) = (safe_div_func_int8_t_s_s((l_183 &= (((*l_159) >= ((safe_div_func_int32_t_s_s((~p_1070->g_124[2][3][5]), (safe_lshift_func_int8_t_s_s((l_151 = p_1070->g_2), 0)))) != l_97)) || ((l_126 = l_171) != (((~((*l_159) || (l_152 = (safe_sub_func_int16_t_s_s((~(safe_sub_func_int16_t_s_s((((FAKE_DIVERGE(p_1070->global_0_offset, get_global_id(0), 10) ^ ((~(p_74 && (safe_rshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_s(p_1070->g_160[1][0][0], 5)), p_74)))) > (*l_127))) , p_1070->g_85[0]) <= (*p_75)), p_1070->g_145))), 0x31CAL))))) & 0xD7A3E1DEL) , l_125)))), p_1070->g_99)));
                        if ((*p_75))
                            continue;
                    }
                    else
                    { /* block id: 82 */
                        int32_t **l_187 = &l_159;
                        (*l_187) = &p_1070->g_2;
                    }
                    (*l_127) ^= (l_151 |= (l_188 || 0x69L));
                    (*l_127) ^= ((void*)0 == l_171);
                }
            }
        }
    }
    return l_189;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1071;
    struct S0* p_1070 = &c_1071;
    struct S0 c_1072 = {
        1L, // p_1070->g_2
        0x5AC369029EFEC1A2L, // p_1070->g_37
        0xFCD5L, // p_1070->g_38
        {0L,0L,0L,0L}, // p_1070->g_49
        0x50L, // p_1070->g_67
        {0x2E7EL,0x2E7EL,0x2E7EL,0x2E7EL,0x2E7EL,0x2E7EL,0x2E7EL,0x2E7EL,0x2E7EL}, // p_1070->g_85
        4294967293UL, // p_1070->g_88
        1L, // p_1070->g_99
        0x1ADDA936L, // p_1070->g_113
        {{{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL}},{{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL}},{{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL}},{{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL},{0L,7L,0x7AL,0x29L,0x7AL,7L,0L,1L,0x3EL}}}, // p_1070->g_124
        4294967295UL, // p_1070->g_145
        0x1BL, // p_1070->g_154
        0L, // p_1070->g_156
        {{{0x123B753B5FD39117L},{0x123B753B5FD39117L}},{{0x123B753B5FD39117L},{0x123B753B5FD39117L}},{{0x123B753B5FD39117L},{0x123B753B5FD39117L}},{{0x123B753B5FD39117L},{0x123B753B5FD39117L}},{{0x123B753B5FD39117L},{0x123B753B5FD39117L}},{{0x123B753B5FD39117L},{0x123B753B5FD39117L}},{{0x123B753B5FD39117L},{0x123B753B5FD39117L}},{{0x123B753B5FD39117L},{0x123B753B5FD39117L}}}, // p_1070->g_160
        5UL, // p_1070->g_182
        &p_1070->g_2, // p_1070->g_185
        {&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,&p_1070->g_185}, // p_1070->g_184
        (void*)0, // p_1070->g_186
        {{&p_1070->g_85[2],&p_1070->g_85[4],&p_1070->g_85[2]},{&p_1070->g_85[2],&p_1070->g_85[4],&p_1070->g_85[2]}}, // p_1070->g_210
        &p_1070->g_210[0][0], // p_1070->g_209
        0L, // p_1070->g_214
        4294967295UL, // p_1070->g_215
        0x0E61FE24L, // p_1070->g_232
        {{{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0}},{{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0}},{{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0}},{{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0}},{{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0}},{{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0},{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,(void*)0}}}, // p_1070->g_242
        &p_1070->g_185, // p_1070->g_243
        &p_1070->g_185, // p_1070->g_276
        0x6CL, // p_1070->g_280
        0x58L, // p_1070->g_347
        0x8AE3B0F1L, // p_1070->g_368
        1L, // p_1070->g_410
        (-1L), // p_1070->g_455
        0L, // p_1070->g_456
        0x4D2EA72EL, // p_1070->g_491
        &p_1070->g_99, // p_1070->g_526
        &p_1070->g_526, // p_1070->g_525
        (void*)0, // p_1070->g_530
        0xB1L, // p_1070->g_539
        (-1L), // p_1070->g_541
        0x7E08E54CL, // p_1070->g_628
        &p_1070->g_368, // p_1070->g_653
        &p_1070->g_653, // p_1070->g_652
        {{&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,&p_1070->g_185,&p_1070->g_185}}, // p_1070->g_662
        &p_1070->g_185, // p_1070->g_666
        &p_1070->g_214, // p_1070->g_669
        &p_1070->g_669, // p_1070->g_668
        (void*)0, // p_1070->g_699
        8UL, // p_1070->g_708
        &p_1070->g_182, // p_1070->g_778
        &p_1070->g_778, // p_1070->g_777
        0x6ABA09EE702E8018L, // p_1070->g_828
        0x106D6E14L, // p_1070->g_890
        &p_1070->g_890, // p_1070->g_889
        &p_1070->g_889, // p_1070->g_888
        &p_1070->g_888, // p_1070->g_887
        0x4A83A3D6L, // p_1070->g_907
        &p_1070->g_907, // p_1070->g_906
        {&p_1070->g_182,&p_1070->g_182,&p_1070->g_182,&p_1070->g_182,&p_1070->g_182,&p_1070->g_182,&p_1070->g_182,&p_1070->g_182}, // p_1070->g_929
        &p_1070->g_929[4], // p_1070->g_928
        {0x259EL,0x259EL,0x259EL,0x259EL}, // p_1070->g_936
        (void*)0, // p_1070->g_937
        0x2256L, // p_1070->g_1024
        &p_1070->g_113, // p_1070->g_1057
        &p_1070->g_1057, // p_1070->g_1056
        sequence_input[get_global_id(0)], // p_1070->global_0_offset
        sequence_input[get_global_id(1)], // p_1070->global_1_offset
        sequence_input[get_global_id(2)], // p_1070->global_2_offset
        sequence_input[get_local_id(0)], // p_1070->local_0_offset
        sequence_input[get_local_id(1)], // p_1070->local_1_offset
        sequence_input[get_local_id(2)], // p_1070->local_2_offset
        sequence_input[get_group_id(0)], // p_1070->group_0_offset
        sequence_input[get_group_id(1)], // p_1070->group_1_offset
        sequence_input[get_group_id(2)], // p_1070->group_2_offset
    };
    c_1071 = c_1072;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1070);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1070->g_2, "p_1070->g_2", print_hash_value);
    transparent_crc(p_1070->g_37, "p_1070->g_37", print_hash_value);
    transparent_crc(p_1070->g_38, "p_1070->g_38", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1070->g_49[i], "p_1070->g_49[i]", print_hash_value);

    }
    transparent_crc(p_1070->g_67, "p_1070->g_67", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1070->g_85[i], "p_1070->g_85[i]", print_hash_value);

    }
    transparent_crc(p_1070->g_88, "p_1070->g_88", print_hash_value);
    transparent_crc(p_1070->g_99, "p_1070->g_99", print_hash_value);
    transparent_crc(p_1070->g_113, "p_1070->g_113", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1070->g_124[i][j][k], "p_1070->g_124[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1070->g_145, "p_1070->g_145", print_hash_value);
    transparent_crc(p_1070->g_154, "p_1070->g_154", print_hash_value);
    transparent_crc(p_1070->g_156, "p_1070->g_156", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1070->g_160[i][j][k], "p_1070->g_160[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1070->g_182, "p_1070->g_182", print_hash_value);
    transparent_crc(p_1070->g_214, "p_1070->g_214", print_hash_value);
    transparent_crc(p_1070->g_215, "p_1070->g_215", print_hash_value);
    transparent_crc(p_1070->g_232, "p_1070->g_232", print_hash_value);
    transparent_crc(p_1070->g_280, "p_1070->g_280", print_hash_value);
    transparent_crc(p_1070->g_347, "p_1070->g_347", print_hash_value);
    transparent_crc(p_1070->g_368, "p_1070->g_368", print_hash_value);
    transparent_crc(p_1070->g_410, "p_1070->g_410", print_hash_value);
    transparent_crc(p_1070->g_455, "p_1070->g_455", print_hash_value);
    transparent_crc(p_1070->g_456, "p_1070->g_456", print_hash_value);
    transparent_crc(p_1070->g_491, "p_1070->g_491", print_hash_value);
    transparent_crc(p_1070->g_539, "p_1070->g_539", print_hash_value);
    transparent_crc(p_1070->g_541, "p_1070->g_541", print_hash_value);
    transparent_crc(p_1070->g_628, "p_1070->g_628", print_hash_value);
    transparent_crc(p_1070->g_708, "p_1070->g_708", print_hash_value);
    transparent_crc(p_1070->g_828, "p_1070->g_828", print_hash_value);
    transparent_crc(p_1070->g_890, "p_1070->g_890", print_hash_value);
    transparent_crc(p_1070->g_907, "p_1070->g_907", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1070->g_936[i], "p_1070->g_936[i]", print_hash_value);

    }
    transparent_crc(p_1070->g_1024, "p_1070->g_1024", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
