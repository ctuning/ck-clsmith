// --atomics 54 ---fake_divergence -g 84,74,1 -l 2,37,1
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


// Seed: 122

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_4;
    int32_t * volatile g_3;
    int32_t g_11;
    uint8_t g_53;
    uint32_t g_77;
    int32_t g_90[5][4];
    int8_t g_112[5];
    int32_t g_114;
    uint16_t g_121;
    int16_t g_133;
    int32_t *g_135;
    int32_t ** volatile g_134;
    int8_t g_142;
    int64_t g_165;
    int32_t g_208;
    uint32_t g_209;
    uint8_t g_246;
    int8_t g_255[4];
    uint64_t g_257;
    int16_t g_276;
    uint16_t g_278;
    int32_t g_294;
    int32_t g_296;
    volatile uint32_t g_343;
    int32_t **g_354;
    int32_t ***g_353;
    volatile int16_t g_389;
    int32_t g_394;
    int8_t g_395[5][7];
    volatile int32_t g_398[1];
    volatile uint32_t g_413;
    int16_t **g_442;
    int16_t *** volatile g_441[9];
    int32_t * volatile g_471;
    int32_t g_488;
    int32_t g_489;
    uint64_t g_510;
    int32_t * volatile g_625;
    int32_t * volatile g_626;
    uint32_t g_754;
    uint32_t g_781[6];
    int8_t g_803;
    uint64_t g_811;
    volatile uint16_t * volatile g_858;
    volatile uint16_t * volatile *g_857[9][7][4];
    uint32_t g_869;
    int64_t g_908[9][5][5];
    volatile uint64_t g_1026;
    uint64_t *g_1056;
    uint8_t *g_1069;
    uint8_t **g_1068;
    uint8_t ***g_1067;
    volatile int32_t g_1221;
    volatile int32_t *g_1220[3][4];
    volatile int32_t ** volatile g_1219[2];
    uint32_t *g_1236[6][1];
    uint32_t **g_1235[4][7];
    volatile int32_t *g_1285;
    volatile int32_t ** volatile g_1284[8];
    uint16_t **g_1394;
    int32_t *g_1421;
    int32_t g_1424;
    uint32_t *g_1467;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S0 * p_1486);
int16_t  func_33(int32_t * p_34, int16_t  p_35, uint16_t  p_36, int32_t *** p_37, int32_t * p_38, struct S0 * p_1486);
int32_t * func_39(int32_t  p_40, struct S0 * p_1486);
int64_t  func_41(uint32_t  p_42, uint64_t  p_43, struct S0 * p_1486);
uint64_t  func_44(uint8_t  p_45, int32_t ** p_46, int32_t * p_47, struct S0 * p_1486);
uint32_t  func_54(int32_t ** p_55, int32_t *** p_56, int64_t  p_57, uint16_t  p_58, struct S0 * p_1486);
int32_t ** func_59(int32_t *** p_60, int32_t  p_61, struct S0 * p_1486);
int32_t *** func_62(int32_t  p_63, int32_t *** p_64, uint8_t * p_65, struct S0 * p_1486);
uint8_t * func_66(int32_t ** p_67, uint8_t  p_68, int32_t  p_69, struct S0 * p_1486);
int8_t  func_86(int32_t  p_87, uint8_t * p_88, struct S0 * p_1486);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1486->g_3 p_1486->g_4 p_1486->g_11 p_1486->g_53 p_1486->g_112 p_1486->g_77 p_1486->g_121 p_1486->g_90 p_1486->g_114 p_1486->g_133 p_1486->g_134 p_1486->g_135 p_1486->g_278 p_1486->g_257 p_1486->g_246 p_1486->g_343 p_1486->g_165 p_1486->g_353 p_1486->g_208 p_1486->g_294 p_1486->g_255 p_1486->g_354 p_1486->g_413 p_1486->g_398 p_1486->g_296 p_1486->g_395 p_1486->g_394 p_1486->g_276 p_1486->g_471 p_1486->g_142 p_1486->g_389 p_1486->g_489 p_1486->g_510 p_1486->g_626 p_1486->g_209 p_1486->g_488 p_1486->g_803 p_1486->g_857 p_1486->g_781 p_1486->g_754 p_1486->g_1236 p_1486->g_1056 p_1486->g_1285 p_1486->g_1068 p_1486->g_1069
 * writes: p_1486->g_4 p_1486->g_11 p_1486->g_53 p_1486->g_77 p_1486->g_112 p_1486->g_114 p_1486->g_121 p_1486->g_133 p_1486->g_135 p_1486->g_142 p_1486->g_257 p_1486->g_246 p_1486->g_343 p_1486->g_165 p_1486->g_353 p_1486->g_208 p_1486->g_413 p_1486->g_398 p_1486->g_278 p_1486->g_394 p_1486->g_276 p_1486->g_395 p_1486->g_489 p_1486->g_296 p_1486->g_294 p_1486->g_209 p_1486->g_488 p_1486->g_781 p_1486->g_811 p_1486->g_869 p_1486->g_510 p_1486->g_803 p_1486->g_908 p_1486->g_754 p_1486->g_3 p_1486->g_1467
 */
int32_t  func_1(struct S0 * p_1486)
{ /* block id: 4 */
    int32_t l_2 = (-4L);
    int32_t *l_51 = &p_1486->g_4;
    int32_t **l_50[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t *l_52 = &p_1486->g_53;
    uint32_t *l_76 = &p_1486->g_77;
    int64_t l_615 = (-1L);
    int8_t l_789 = 0x5DL;
    uint64_t *l_810 = &p_1486->g_811;
    uint8_t l_819 = 0xA0L;
    uint8_t l_1485 = 0x45L;
    int i;
    (*p_1486->g_3) &= (l_2 , l_2);
    for (l_2 = (-7); (l_2 < (-15)); l_2 = safe_sub_func_uint32_t_u_u(l_2, 9))
    { /* block id: 8 */
        int32_t * volatile *l_8[9][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
        int32_t * volatile **l_7 = &l_8[7][1];
        int i, j;
        (*l_7) = &p_1486->g_3;
        for (p_1486->g_4 = (-4); (p_1486->g_4 > 29); p_1486->g_4 = safe_add_func_uint8_t_u_u(p_1486->g_4, 8))
        { /* block id: 12 */
            uint32_t l_30 = 3UL;
            p_1486->g_11 |= 0L;
            if ((atomic_inc(&p_1486->l_atomic_input[27]) == 9))
            { /* block id: 15 */
                int64_t l_12 = 0L;
                int8_t l_13 = 0x45L;
                uint16_t l_14 = 0x3468L;
                l_14--;
                for (l_13 = 0; (l_13 >= (-3)); l_13 = safe_sub_func_uint32_t_u_u(l_13, 6))
                { /* block id: 19 */
                    int32_t l_20 = 0x0E356EC7L;
                    int32_t *l_19 = &l_20;
                    int32_t *l_21 = &l_20;
                    int32_t *l_22 = (void*)0;
                    l_22 = (l_21 = l_19);
                    for (l_20 = 0; (l_20 != (-26)); l_20 = safe_sub_func_uint16_t_u_u(l_20, 2))
                    { /* block id: 24 */
                        int32_t l_25[3][8][7] = {{{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L}},{{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L}},{{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L},{(-1L),0x7888C554L,(-1L),0x7888C554L,(-1L),(-1L),0x7888C554L}}};
                        uint32_t l_26 = 4294967290UL;
                        uint32_t l_29 = 6UL;
                        int i, j, k;
                        l_26++;
                        l_29 = 0x48F9611CL;
                    }
                }
                unsigned int result = 0;
                result += l_12;
                result += l_13;
                result += l_14;
                atomic_add(&p_1486->l_special_values[27], result);
            }
            else
            { /* block id: 29 */
                (1 + 1);
            }
            if (l_30)
                continue;
        }
        if ((*p_1486->g_3))
            continue;
        if (l_2)
            break;
    }
    (*p_1486->g_1285) = (safe_rshift_func_uint8_t_u_u((((func_33(func_39(((((l_2 <= (((func_41(p_1486->g_11, ((*l_810) = func_44((safe_mod_func_int8_t_s_s((((((void*)0 != l_50[5]) ^ ((*l_52) &= 0xA2L)) && (((func_54(func_59(func_62(p_1486->g_4, &l_50[4], func_66((((*l_76) = ((safe_mul_func_uint8_t_u_u(p_1486->g_11, (safe_mod_func_int32_t_s_s((safe_lshift_func_int16_t_s_u(0x5547L, p_1486->g_11)), (*p_1486->g_3))))) || 1L)) , (void*)0), p_1486->g_53, p_1486->g_11, p_1486), p_1486), l_615, p_1486), &p_1486->g_354, p_1486->g_255[0], l_789, p_1486) , &l_50[0]) != &l_50[5]) != p_1486->g_255[1])) <= p_1486->g_803), 6UL)), p_1486->g_354, &p_1486->g_11, p_1486)), p_1486) == FAKE_DIVERGE(p_1486->group_2_offset, get_group_id(2), 10)) && p_1486->g_278) >= l_819)) , (void*)0) != &p_1486->g_354) >= p_1486->g_255[1]), p_1486), p_1486->g_90[1][1], p_1486->g_11, &p_1486->g_354, &p_1486->g_11, p_1486) > 6UL) , GROUP_DIVERGE(2, 1)) , (**p_1486->g_1068)), 2));
    return l_1485;
}


/* ------------------------------------------ */
/* 
 * reads : p_1486->g_754 p_1486->g_112 p_1486->g_354 p_1486->g_11 p_1486->g_208 p_1486->g_394 p_1486->g_209 p_1486->g_781 p_1486->g_246 p_1486->g_1236 p_1486->g_1056 p_1486->g_257 p_1486->g_1285 p_1486->g_398 p_1486->g_135 p_1486->g_165 p_1486->g_255
 * writes: p_1486->g_754 p_1486->g_11 p_1486->g_112 p_1486->g_803 p_1486->g_208 p_1486->g_142 p_1486->g_246 p_1486->g_394 p_1486->g_209 p_1486->g_77 p_1486->g_276 p_1486->g_257 p_1486->g_135 p_1486->g_398 p_1486->g_3 p_1486->g_1467
 */
int16_t  func_33(int32_t * p_34, int16_t  p_35, uint16_t  p_36, int32_t *** p_37, int32_t * p_38, struct S0 * p_1486)
{ /* block id: 639 */
    int8_t *l_953 = &p_1486->g_112[2];
    int8_t *l_954 = (void*)0;
    int8_t *l_955 = &p_1486->g_803;
    int32_t ****l_959[8][1][4] = {{{&p_1486->g_353,&p_1486->g_353,&p_1486->g_353,&p_1486->g_353}},{{&p_1486->g_353,&p_1486->g_353,&p_1486->g_353,&p_1486->g_353}},{{&p_1486->g_353,&p_1486->g_353,&p_1486->g_353,&p_1486->g_353}},{{&p_1486->g_353,&p_1486->g_353,&p_1486->g_353,&p_1486->g_353}},{{&p_1486->g_353,&p_1486->g_353,&p_1486->g_353,&p_1486->g_353}},{{&p_1486->g_353,&p_1486->g_353,&p_1486->g_353,&p_1486->g_353}},{{&p_1486->g_353,&p_1486->g_353,&p_1486->g_353,&p_1486->g_353}},{{&p_1486->g_353,&p_1486->g_353,&p_1486->g_353,&p_1486->g_353}}};
    int32_t *****l_958 = &l_959[5][0][2];
    int32_t *l_962 = &p_1486->g_208;
    int8_t *l_963 = &p_1486->g_142;
    uint8_t *l_964 = &p_1486->g_246;
    int32_t *l_965 = &p_1486->g_394;
    int32_t l_1007 = 0x24FBE91DL;
    int64_t *l_1008 = &p_1486->g_165;
    int32_t *l_1018 = &p_1486->g_11;
    int16_t ***l_1023 = &p_1486->g_442;
    int16_t ****l_1022 = &l_1023;
    int64_t l_1041 = (-10L);
    uint32_t l_1042[2];
    uint8_t **l_1066 = &l_964;
    uint8_t ***l_1065 = &l_1066;
    int64_t *l_1123 = (void*)0;
    int16_t *l_1196 = &p_1486->g_276;
    uint8_t l_1206 = 5UL;
    uint64_t l_1222[2];
    uint32_t **l_1237 = &p_1486->g_1236[4][0];
    int32_t l_1251 = 0x04C6F60BL;
    int32_t l_1258 = 3L;
    int16_t l_1373 = 0x698DL;
    int32_t l_1381 = (-1L);
    int8_t l_1409 = (-1L);
    uint64_t l_1425 = 1UL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1042[i] = 0xD4D83CB1L;
    for (i = 0; i < 2; i++)
        l_1222[i] = 0x32A5B9E2377A2681L;
    for (p_1486->g_754 = (-13); (p_1486->g_754 >= 32); ++p_1486->g_754)
    { /* block id: 642 */
        int32_t l_920 = 6L;
        (*p_34) = l_920;
        if ((atomic_inc(&p_1486->l_atomic_input[35]) == 5))
        { /* block id: 645 */
            uint64_t l_921[2];
            uint8_t l_922 = 3UL;
            int32_t l_942 = 8L;
            int32_t l_943 = (-7L);
            uint16_t l_944 = 0UL;
            uint8_t l_945[1][8];
            int32_t l_946 = 1L;
            int16_t l_947 = (-4L);
            int64_t l_948[9][7] = {{0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL},{0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL},{0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL},{0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL},{0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL},{0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL},{0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL},{0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL},{0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL,0L,0x7A0F768F17C100FEL,0x7A0F768F17C100FEL}};
            int32_t l_949 = 1L;
            int64_t l_950 = 0x1C9668B9D25BDD67L;
            int i, j;
            for (i = 0; i < 2; i++)
                l_921[i] = 0xF2F8C5DF8A167481L;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 8; j++)
                    l_945[i][j] = 0xB8L;
            }
            l_922 = l_921[1];
            for (l_921[1] = 0; (l_921[1] == 40); l_921[1] = safe_add_func_int8_t_s_s(l_921[1], 9))
            { /* block id: 649 */
                int32_t l_925[1][2][2];
                int i, j, k;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 2; j++)
                    {
                        for (k = 0; k < 2; k++)
                            l_925[i][j][k] = 0x5B016807L;
                    }
                }
                for (l_925[0][1][1] = (-2); (l_925[0][1][1] > 15); l_925[0][1][1]++)
                { /* block id: 652 */
                    uint8_t l_928 = 0x52L;
                    uint16_t l_929 = 0xC238L;
                    uint64_t l_930[1];
                    uint32_t l_931 = 2UL;
                    int16_t l_932 = (-8L);
                    uint32_t l_933 = 0UL;
                    int16_t l_934 = 0x4A32L;
                    uint64_t l_935[4];
                    int32_t l_936 = 0L;
                    int32_t l_937 = 0x71ACD87FL;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_930[i] = 0x2EA422C7FE59967BL;
                    for (i = 0; i < 4; i++)
                        l_935[i] = 0xC57CC895A5ABA733L;
                    l_935[2] = ((l_930[0] = (l_929 = l_928)) , (l_931 , (l_934 |= (l_932 , l_933))));
                    l_937 = (FAKE_DIVERGE(p_1486->global_2_offset, get_global_id(2), 10) , l_936);
                    for (l_929 = (-20); (l_929 != 47); l_929 = safe_add_func_int64_t_s_s(l_929, 4))
                    { /* block id: 660 */
                        int8_t l_940 = 0x31L;
                        uint32_t l_941 = 0UL;
                        l_941 ^= (l_937 ^= l_940);
                    }
                }
            }
            l_944 = (l_942 , l_943);
            l_950 = (l_949 = (l_948[4][1] &= ((l_946 &= l_945[0][2]) , l_947)));
            unsigned int result = 0;
            int l_921_i0;
            for (l_921_i0 = 0; l_921_i0 < 2; l_921_i0++) {
                result += l_921[l_921_i0];
            }
            result += l_922;
            result += l_942;
            result += l_943;
            result += l_944;
            int l_945_i0, l_945_i1;
            for (l_945_i0 = 0; l_945_i0 < 1; l_945_i0++) {
                for (l_945_i1 = 0; l_945_i1 < 8; l_945_i1++) {
                    result += l_945[l_945_i0][l_945_i1];
                }
            }
            result += l_946;
            result += l_947;
            int l_948_i0, l_948_i1;
            for (l_948_i0 = 0; l_948_i0 < 9; l_948_i0++) {
                for (l_948_i1 = 0; l_948_i1 < 7; l_948_i1++) {
                    result += l_948[l_948_i0][l_948_i1];
                }
            }
            result += l_949;
            result += l_950;
            atomic_add(&p_1486->l_special_values[35], result);
        }
        else
        { /* block id: 671 */
            (1 + 1);
        }
    }
    (*l_965) |= ((p_35 |= ((safe_rshift_func_int8_t_s_u(((*l_955) = ((*l_953) = p_1486->g_112[1])), FAKE_DIVERGE(p_1486->local_0_offset, get_local_id(0), 10))) < ((*l_964) = (((void*)0 == (*p_37)) , (safe_rshift_func_int8_t_s_s((p_36 , (&p_37 != ((*l_958) = &p_37))), ((*l_963) = (1L > ((safe_sub_func_int32_t_s_s(((*l_962) |= (*p_38)), 0x3248FDB3L)) == 0UL))))))))) != p_36);
    for (p_1486->g_209 = 0; (p_1486->g_209 <= 0); p_1486->g_209 += 1)
    { /* block id: 685 */
        uint16_t *l_974 = &p_1486->g_278;
        uint16_t *l_979 = (void*)0;
        uint16_t *l_980 = (void*)0;
        uint16_t *l_983[2][6][9] = {{{&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121},{&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121},{&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121},{&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121},{&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121},{&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121}},{{&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121},{&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121},{&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121},{&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121},{&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121},{&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121,&p_1486->g_121}}};
        int32_t l_1002 = 4L;
        uint8_t **l_1013 = &l_964;
        int32_t ***l_1019[3][7] = {{(void*)0,&p_1486->g_354,&p_1486->g_354,(void*)0,(void*)0,&p_1486->g_354,&p_1486->g_354},{(void*)0,&p_1486->g_354,&p_1486->g_354,(void*)0,(void*)0,&p_1486->g_354,&p_1486->g_354},{(void*)0,&p_1486->g_354,&p_1486->g_354,(void*)0,(void*)0,&p_1486->g_354,&p_1486->g_354}};
        uint8_t **l_1024 = &l_964;
        int16_t **l_1092 = (void*)0;
        int32_t *l_1174 = &p_1486->g_296;
        int32_t *****l_1199 = (void*)0;
        uint64_t *l_1200 = &p_1486->g_811;
        uint64_t *l_1203 = &p_1486->g_257;
        uint32_t *l_1233[4][4] = {{&p_1486->g_754,&p_1486->g_754,&p_1486->g_754,&p_1486->g_754},{&p_1486->g_754,&p_1486->g_754,&p_1486->g_754,&p_1486->g_754},{&p_1486->g_754,&p_1486->g_754,&p_1486->g_754,&p_1486->g_754},{&p_1486->g_754,&p_1486->g_754,&p_1486->g_754,&p_1486->g_754}};
        uint32_t **l_1232 = &l_1233[1][0];
        uint32_t **l_1238 = &l_1233[0][0];
        int32_t l_1243 = (-1L);
        int32_t l_1252 = 7L;
        int16_t ****l_1279 = &l_1023;
        int i, j, k;
        (1 + 1);
    }
    for (p_1486->g_209 = 0; (p_1486->g_209 <= 5); p_1486->g_209 += 1)
    { /* block id: 978 */
        uint64_t *l_1456[10][3][1] = {{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}}};
        int32_t l_1459 = 0x790F18EBL;
        int16_t *l_1460 = &l_1373;
        int32_t *****l_1462 = &l_959[5][0][2];
        int16_t l_1474 = 0x66E8L;
        int32_t *l_1483 = (void*)0;
        int i, j, k;
        (*p_38) = ((p_1486->g_781[p_1486->g_209] != p_1486->g_781[p_1486->g_209]) , (((*l_962) | (((safe_sub_func_int16_t_s_s((safe_lshift_func_int16_t_s_s((((*l_1460) = (safe_lshift_func_uint8_t_u_s((((*p_1486->g_1056) = (safe_sub_func_uint8_t_u_u(p_36, (l_1459 = (((*l_1196) = (p_1486->g_246 & ((((safe_rshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_s(((safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(((((**l_1237) = (&p_1486->g_811 != l_1456[9][1][0])) , (safe_mod_func_int8_t_s_s(p_1486->g_781[p_1486->g_209], p_1486->g_781[p_1486->g_209]))) < (*p_1486->g_1056)), p_36)), p_35)) , p_35), 4)), 6)) , 0UL) , p_35) , (*p_1486->g_1056)))) || 1UL))))) >= p_35), 7))) >= p_1486->g_781[p_1486->g_209]), 1)), p_36)) == p_1486->g_781[p_1486->g_209]) == p_1486->g_781[p_1486->g_209])) == 0x7F0CBB5E3B445561L));
        (**p_37) = &l_1459;
        if ((!(0x4A6CL && ((void*)0 == p_34))))
        { /* block id: 986 */
            int32_t *****l_1463 = &l_959[5][0][2];
            int32_t ******l_1464 = &l_958;
            (*p_1486->g_1285) ^= (safe_unary_minus_func_int32_t_s((l_1462 != ((*l_1464) = (GROUP_DIVERGE(0, 1) , l_1463)))));
            p_1486->g_3 = ((*p_1486->g_354) = (**p_37));
            return p_36;
        }
        else
        { /* block id: 992 */
            uint32_t *l_1466 = &p_1486->g_781[3];
            uint32_t **l_1465[4][7][9] = {{{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466}},{{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466}},{{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466}},{{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466},{&l_1466,&l_1466,&l_1466,&l_1466,(void*)0,&l_1466,&l_1466,&l_1466,&l_1466}}};
            int i, j, k;
            (**p_37) = (**p_37);
            (*p_34) = (p_38 == (p_1486->g_1467 = &p_1486->g_781[3]));
        }
        for (l_1206 = 0; (l_1206 <= 3); l_1206 += 1)
        { /* block id: 999 */
            uint32_t l_1484 = 4294967295UL;
            (*l_965) = (safe_sub_func_int64_t_s_s(((safe_sub_func_int32_t_s_s(((***p_37) ^= ((safe_mul_func_int8_t_s_s(p_35, (p_1486->g_165 < p_35))) && (l_1474 = (*p_38)))), ((l_1460 != (void*)0) < (safe_add_func_int64_t_s_s(0x643098975B9CA516L, ((safe_mod_func_int64_t_s_s((((safe_mul_func_int16_t_s_s(p_36, (safe_lshift_func_int8_t_s_s((&p_1486->g_1424 == l_1483), 6)))) , l_1484) >= p_35), 0xB809116E772DC82CL)) <= 0x0E1A60D7L)))))) , p_1486->g_255[1]), 1L));
            for (l_1484 = 0; (l_1484 <= 0); l_1484 += 1)
            { /* block id: 1005 */
                (***p_37) = (-9L);
            }
        }
    }
    return p_35;
}


/* ------------------------------------------ */
/* 
 * reads : p_1486->g_488 p_1486->g_112 p_1486->g_246 p_1486->g_121 p_1486->g_53 p_1486->g_626 p_1486->g_394 p_1486->g_395 p_1486->g_255 p_1486->g_857 p_1486->g_389 p_1486->g_257 p_1486->g_781 p_1486->g_754 p_1486->g_510 p_1486->g_354 p_1486->g_135 p_1486->g_11 p_1486->g_114 p_1486->g_142 p_1486->g_133 p_1486->g_90 p_1486->g_803 p_1486->g_489 p_1486->g_209 p_1486->g_208
 * writes: p_1486->g_488 p_1486->g_246 p_1486->g_353 p_1486->g_278 p_1486->g_394 p_1486->g_133 p_1486->g_869 p_1486->g_510 p_1486->g_135 p_1486->g_53 p_1486->g_803 p_1486->g_209 p_1486->g_908
 */
int32_t * func_39(int32_t  p_40, struct S0 * p_1486)
{ /* block id: 601 */
    int32_t *l_820 = (void*)0;
    int32_t *l_821[2];
    int32_t l_822 = (-1L);
    uint64_t l_823 = 18446744073709551612UL;
    int32_t ***l_841 = (void*)0;
    uint32_t l_871 = 3UL;
    uint64_t l_914[9][9] = {{0x3311D67136A6D655L,18446744073709551606UL,0xFCA77AB10CE612AEL,18446744073709551606UL,0x3311D67136A6D655L,1UL,0xD28D842A47D6256AL,0x9B1DCD0BDE7EB6B7L,18446744073709551615UL},{0x3311D67136A6D655L,18446744073709551606UL,0xFCA77AB10CE612AEL,18446744073709551606UL,0x3311D67136A6D655L,1UL,0xD28D842A47D6256AL,0x9B1DCD0BDE7EB6B7L,18446744073709551615UL},{0x3311D67136A6D655L,18446744073709551606UL,0xFCA77AB10CE612AEL,18446744073709551606UL,0x3311D67136A6D655L,1UL,0xD28D842A47D6256AL,0x9B1DCD0BDE7EB6B7L,18446744073709551615UL},{0x3311D67136A6D655L,18446744073709551606UL,0xFCA77AB10CE612AEL,18446744073709551606UL,0x3311D67136A6D655L,1UL,0xD28D842A47D6256AL,0x9B1DCD0BDE7EB6B7L,18446744073709551615UL},{0x3311D67136A6D655L,18446744073709551606UL,0xFCA77AB10CE612AEL,18446744073709551606UL,0x3311D67136A6D655L,1UL,0xD28D842A47D6256AL,0x9B1DCD0BDE7EB6B7L,18446744073709551615UL},{0x3311D67136A6D655L,18446744073709551606UL,0xFCA77AB10CE612AEL,18446744073709551606UL,0x3311D67136A6D655L,1UL,0xD28D842A47D6256AL,0x9B1DCD0BDE7EB6B7L,18446744073709551615UL},{0x3311D67136A6D655L,18446744073709551606UL,0xFCA77AB10CE612AEL,18446744073709551606UL,0x3311D67136A6D655L,1UL,0xD28D842A47D6256AL,0x9B1DCD0BDE7EB6B7L,18446744073709551615UL},{0x3311D67136A6D655L,18446744073709551606UL,0xFCA77AB10CE612AEL,18446744073709551606UL,0x3311D67136A6D655L,1UL,0xD28D842A47D6256AL,0x9B1DCD0BDE7EB6B7L,18446744073709551615UL},{0x3311D67136A6D655L,18446744073709551606UL,0xFCA77AB10CE612AEL,18446744073709551606UL,0x3311D67136A6D655L,1UL,0xD28D842A47D6256AL,0x9B1DCD0BDE7EB6B7L,18446744073709551615UL}};
    int32_t *l_917 = &p_1486->g_11;
    int i, j;
    for (i = 0; i < 2; i++)
        l_821[i] = &p_1486->g_114;
    ++l_823;
    for (p_1486->g_488 = 4; (p_1486->g_488 >= 0); p_1486->g_488 -= 1)
    { /* block id: 605 */
        int32_t l_826 = 9L;
        int32_t ****l_829 = &p_1486->g_353;
        uint8_t *l_836 = &p_1486->g_246;
        int32_t l_848 = (-1L);
        uint16_t *l_849 = &p_1486->g_278;
        int32_t l_850 = 0x02B86227L;
        int32_t *l_867 = (void*)0;
        int16_t *l_868 = &p_1486->g_133;
        int32_t l_870 = 0x2D14F1C6L;
        int8_t l_891[7][4][7] = {{{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)}},{{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)}},{{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)}},{{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)}},{{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)}},{{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)}},{{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)},{0x4BL,0x4BL,(-1L),7L,(-7L),7L,(-1L)}}};
        uint64_t *l_905[1];
        int32_t l_912 = 0L;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_905[i] = &p_1486->g_257;
        l_850 = (p_40 = ((l_826 = p_1486->g_112[p_1486->g_488]) , (safe_lshift_func_int8_t_s_s((&p_1486->g_353 != l_829), (safe_add_func_int64_t_s_s(((((safe_mod_func_uint64_t_u_u((((safe_lshift_func_uint8_t_u_u(((*l_836)--), (safe_mul_func_uint16_t_u_u((((*p_1486->g_626) &= ((GROUP_DIVERGE(0, 1) || p_1486->g_112[p_1486->g_488]) ^ ((((*l_829) = l_841) != ((safe_rshift_func_uint16_t_u_s((p_1486->g_121 , ((*l_849) = ((safe_lshift_func_uint8_t_u_s(((p_1486->g_53 > (((void*)0 == &p_1486->g_255[1]) != l_848)) == p_40), p_40)) , 0xD7C8L))), l_848)) , &p_1486->g_134)) & 0x5AC80980L))) > 0L), p_40)))) & p_40) != p_1486->g_395[3][5]), 0x17EAAE64749FB430L)) || 0x7C54F126L) > 1UL) == 0UL), 0x7145011F63594FF1L))))));
        (*p_1486->g_354) = ((1L ^ (p_1486->g_510 ^= ((((safe_mod_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u(p_1486->g_255[1], ((safe_div_func_int32_t_s_s((p_1486->g_246 , 0x334DFBD7L), (((p_1486->g_857[0][1][2] != (void*)0) > p_40) && (safe_div_func_uint64_t_u_u(((p_1486->g_869 = ((p_40 <= ((safe_add_func_int16_t_s_s(((*l_868) = (safe_div_func_uint64_t_u_u((((safe_add_func_int16_t_s_s((l_867 != (void*)0), 1L)) , 3L) , p_1486->g_389), 1UL))), l_826)) > p_1486->g_257)) == p_40)) , p_1486->g_781[3]), GROUP_DIVERGE(0, 1)))))) > l_870))) , p_40), p_1486->g_754)) && l_871) >= 0xC7L) , 0x5E7B3A9A6B67AD0FL))) , (void*)0);
        for (l_848 = 4; (l_848 >= 0); l_848 -= 1)
        { /* block id: 619 */
            int32_t *l_872 = &p_1486->g_208;
            uint8_t *l_892 = &p_1486->g_53;
            int32_t l_909[7][5] = {{(-6L),(-6L),0x5A2FF98EL,1L,4L},{(-6L),(-6L),0x5A2FF98EL,1L,4L},{(-6L),(-6L),0x5A2FF98EL,1L,4L},{(-6L),(-6L),0x5A2FF98EL,1L,4L},{(-6L),(-6L),0x5A2FF98EL,1L,4L},{(-6L),(-6L),0x5A2FF98EL,1L,4L},{(-6L),(-6L),0x5A2FF98EL,1L,4L}};
            int i, j;
            l_872 = (*p_1486->g_354);
            p_40 = (safe_add_func_uint32_t_u_u((0x591EL >= (((((p_1486->g_395[p_1486->g_488][(l_848 + 1)] ^ p_1486->g_781[3]) == p_40) <= (safe_lshift_func_int16_t_s_u((safe_div_func_uint8_t_u_u(p_1486->g_11, (safe_lshift_func_uint16_t_u_s((p_40 & 0x1E61L), 10)))), GROUP_DIVERGE(1, 1)))) >= (((((safe_mul_func_uint8_t_u_u(((*l_892) = ((*l_836) |= (safe_div_func_uint64_t_u_u(((((safe_sub_func_uint16_t_u_u((((safe_mul_func_uint16_t_u_u(p_40, (&p_1486->g_781[5] == l_872))) == l_891[2][0][2]) , 65529UL), 0xEA59L)) & 0x3AL) & p_1486->g_114) <= p_1486->g_389), p_40)))), p_1486->g_142)) >= p_40) < 6L) & p_1486->g_133) , p_40)) < p_1486->g_90[2][1])), p_40));
            for (p_1486->g_803 = 3; (p_1486->g_803 >= 0); p_1486->g_803 -= 1)
            { /* block id: 626 */
                int64_t l_893 = 0x1FFBECCF2FA6BE57L;
                uint64_t *l_900 = &l_823;
                uint32_t *l_906 = &p_1486->g_209;
                int64_t *l_907 = &p_1486->g_908[1][3][4];
                int32_t l_910 = 0x033B5FC6L;
                int16_t l_911 = (-1L);
                int32_t l_913 = (-1L);
                if (l_893)
                    break;
                p_40 = (safe_add_func_uint8_t_u_u(((p_1486->g_754 == (safe_mod_func_uint32_t_u_u((safe_div_func_int64_t_s_s(p_40, ((*l_900) = p_1486->g_489))), (~(l_893 < (((*l_849) = (safe_mod_func_uint16_t_u_u((((*l_907) = ((!(l_893 , p_1486->g_209)) && ((*l_906) &= (((void*)0 != l_905[0]) ^ (*p_1486->g_626))))) , 65527UL), p_40))) <= 8L)))))) <= p_1486->g_208), l_893));
                (*p_1486->g_354) = (void*)0;
                l_914[1][1]--;
            }
        }
    }
    return l_917;
}


/* ------------------------------------------ */
/* 
 * reads : p_1486->g_133 p_1486->g_255
 * writes: p_1486->g_133 p_1486->g_246
 */
int64_t  func_41(uint32_t  p_42, uint64_t  p_43, struct S0 * p_1486)
{ /* block id: 596 */
    int16_t *l_816 = &p_1486->g_133;
    uint8_t *l_817 = &p_1486->g_246;
    int32_t l_818[6][6] = {{(-4L),0x7687A4B6L,0x5917863DL,0L,0x7687A4B6L,0L},{(-4L),0x7687A4B6L,0x5917863DL,0L,0x7687A4B6L,0L},{(-4L),0x7687A4B6L,0x5917863DL,0L,0x7687A4B6L,0L},{(-4L),0x7687A4B6L,0x5917863DL,0L,0x7687A4B6L,0L},{(-4L),0x7687A4B6L,0x5917863DL,0L,0x7687A4B6L,0L},{(-4L),0x7687A4B6L,0x5917863DL,0L,0x7687A4B6L,0L}};
    int i, j;
    l_818[3][2] = (safe_div_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(((((*l_816) |= (-1L)) > 0x6324L) != 0x3E8DL), ((*l_817) = (p_42 > p_42)))), l_818[3][2]));
    return p_1486->g_255[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_1486->g_471 p_1486->g_208 p_1486->g_296
 * writes: p_1486->g_208
 */
uint64_t  func_44(uint8_t  p_45, int32_t ** p_46, int32_t * p_47, struct S0 * p_1486)
{ /* block id: 592 */
    (*p_1486->g_471) ^= 0x12CABAC0L;
    return p_1486->g_296;
}


/* ------------------------------------------ */
/* 
 * reads : p_1486->g_257 p_1486->g_77
 * writes: p_1486->g_257 p_1486->g_208
 */
uint32_t  func_54(int32_t ** p_55, int32_t *** p_56, int64_t  p_57, uint16_t  p_58, struct S0 * p_1486)
{ /* block id: 583 */
    int32_t *l_790 = &p_1486->g_208;
    int32_t *l_791 = &p_1486->g_114;
    int32_t *l_792[7] = {&p_1486->g_394,&p_1486->g_394,&p_1486->g_394,&p_1486->g_394,&p_1486->g_394,&p_1486->g_394,&p_1486->g_394};
    int8_t l_793 = 0x20L;
    int64_t l_794 = 0x45A324858FCB9C01L;
    int32_t l_795[3][4][6] = {{{0x3D7CAE6CL,0x175D6724L,0x7F3E0676L,0x7F3E0676L,0x175D6724L,0x3D7CAE6CL},{0x3D7CAE6CL,0x175D6724L,0x7F3E0676L,0x7F3E0676L,0x175D6724L,0x3D7CAE6CL},{0x3D7CAE6CL,0x175D6724L,0x7F3E0676L,0x7F3E0676L,0x175D6724L,0x3D7CAE6CL},{0x3D7CAE6CL,0x175D6724L,0x7F3E0676L,0x7F3E0676L,0x175D6724L,0x3D7CAE6CL}},{{0x3D7CAE6CL,0x175D6724L,0x7F3E0676L,0x7F3E0676L,0x175D6724L,0x3D7CAE6CL},{0x3D7CAE6CL,0x175D6724L,0x7F3E0676L,0x7F3E0676L,0x175D6724L,0x3D7CAE6CL},{0x3D7CAE6CL,0x175D6724L,0x7F3E0676L,0x7F3E0676L,0x175D6724L,0x3D7CAE6CL},{0x3D7CAE6CL,0x175D6724L,0x7F3E0676L,0x7F3E0676L,0x175D6724L,0x3D7CAE6CL}},{{0x3D7CAE6CL,0x175D6724L,0x7F3E0676L,0x7F3E0676L,0x175D6724L,0x3D7CAE6CL},{0x3D7CAE6CL,0x175D6724L,0x7F3E0676L,0x7F3E0676L,0x175D6724L,0x3D7CAE6CL},{0x3D7CAE6CL,0x175D6724L,0x7F3E0676L,0x7F3E0676L,0x175D6724L,0x3D7CAE6CL},{0x3D7CAE6CL,0x175D6724L,0x7F3E0676L,0x7F3E0676L,0x175D6724L,0x3D7CAE6CL}}};
    int16_t l_796 = (-8L);
    int16_t l_797[4][6][8] = {{{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L}},{{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L}},{{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L}},{{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L},{0x2BF7L,9L,(-1L),0x4755L,1L,0x7E8EL,0L,0L}}};
    int64_t l_798[9];
    int64_t l_799 = 0x4F8D9A31345650CBL;
    int64_t l_800[10] = {0x64A3EEB8C7EA226EL,0x6C48D0945E0E8872L,1L,0x6C48D0945E0E8872L,0x64A3EEB8C7EA226EL,0x64A3EEB8C7EA226EL,0x6C48D0945E0E8872L,1L,0x6C48D0945E0E8872L,0x64A3EEB8C7EA226EL};
    int32_t l_801[10] = {0x4824B7BCL,0x4824B7BCL,0x4824B7BCL,0x4824B7BCL,0x4824B7BCL,0x4824B7BCL,0x4824B7BCL,0x4824B7BCL,0x4824B7BCL,0x4824B7BCL};
    int32_t l_802[9][1][7] = {{{0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L}},{{0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L}},{{0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L}},{{0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L}},{{0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L}},{{0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L}},{{0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L}},{{0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L}},{{0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L,0x37D592A2L}}};
    int32_t l_804 = 1L;
    uint8_t l_805 = 1UL;
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_798[i] = (-1L);
    l_805--;
    for (p_1486->g_257 = 0; (p_1486->g_257 <= 9); p_1486->g_257 += 1)
    { /* block id: 587 */
        uint32_t l_808 = 0x16C52272L;
        int32_t *l_809 = &l_801[8];
        (*l_790) = l_808;
        l_809 = (void*)0;
    }
    return p_1486->g_77;
}


/* ------------------------------------------ */
/* 
 * reads : p_1486->g_294 p_1486->g_77 p_1486->g_353 p_1486->g_354 p_1486->g_133 p_1486->g_626 p_1486->g_394 p_1486->g_3 p_1486->g_246 p_1486->g_209 p_1486->g_276 p_1486->g_488 p_1486->g_255 p_1486->g_395 p_1486->g_112 p_1486->g_142
 * writes: p_1486->g_294 p_1486->g_77 p_1486->g_135 p_1486->g_133 p_1486->g_394 p_1486->g_4 p_1486->g_246 p_1486->g_209 p_1486->g_276 p_1486->g_488 p_1486->g_114 p_1486->g_781 p_1486->g_142
 */
int32_t ** func_59(int32_t *** p_60, int32_t  p_61, struct S0 * p_1486)
{ /* block id: 464 */
    int32_t *l_623 = &p_1486->g_296;
    int32_t l_628 = 0x49C2855AL;
    int32_t l_629 = 2L;
    int32_t l_630[2];
    uint8_t **l_648 = (void*)0;
    int16_t ***l_705 = &p_1486->g_442;
    uint16_t l_706 = 0x3BC5L;
    int32_t l_717 = 0L;
    uint16_t *l_779 = &p_1486->g_121;
    uint16_t **l_778 = &l_779;
    int32_t **l_784 = &p_1486->g_135;
    int32_t **l_785 = &p_1486->g_135;
    int32_t **l_786 = &p_1486->g_135;
    int32_t **l_787[4][7][3] = {{{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135}},{{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135}},{{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135}},{{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135},{&p_1486->g_135,&p_1486->g_135,&p_1486->g_135}}};
    int32_t **l_788 = (void*)0;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_630[i] = 0x18B80C3FL;
    for (p_1486->g_294 = 0; (p_1486->g_294 == 18); ++p_1486->g_294)
    { /* block id: 467 */
        for (p_1486->g_77 = 0; (p_1486->g_77 == 52); p_1486->g_77 = safe_add_func_uint16_t_u_u(p_1486->g_77, 1))
        { /* block id: 470 */
            int32_t *l_620 = &p_1486->g_4;
            (**p_1486->g_353) = l_620;
            return (*p_1486->g_353);
        }
    }
    for (p_1486->g_133 = 19; (p_1486->g_133 != 3); --p_1486->g_133)
    { /* block id: 477 */
        int32_t *l_624 = &p_1486->g_294;
        int32_t *l_627[9][1] = {{&p_1486->g_208},{&p_1486->g_208},{&p_1486->g_208},{&p_1486->g_208},{&p_1486->g_208},{&p_1486->g_208},{&p_1486->g_208},{&p_1486->g_208},{&p_1486->g_208}};
        uint32_t l_631[10] = {4294967295UL,4294967292UL,4294967295UL,4294967295UL,4294967292UL,4294967295UL,4294967295UL,4294967292UL,4294967295UL,4294967295UL};
        int32_t ***l_636 = (void*)0;
        uint8_t *l_674 = (void*)0;
        uint8_t **l_673 = &l_674;
        uint16_t *l_751 = &l_706;
        int i, j;
        (*p_1486->g_626) ^= ((l_623 != l_624) <= p_61);
        --l_631[6];
        (*p_1486->g_3) = (safe_add_func_int16_t_s_s(p_61, (p_60 != l_636)));
        for (p_1486->g_246 = 0; (p_1486->g_246 >= 49); p_1486->g_246++)
        { /* block id: 483 */
            int32_t *l_639 = &p_1486->g_11;
            int64_t *l_671 = (void*)0;
            uint8_t **l_675 = &l_674;
            int32_t l_708 = 0x343674ECL;
            int32_t l_711[8] = {0L,0L,0L,0L,0L,0L,0L,0L};
            int32_t l_712 = 5L;
            int8_t l_719 = 0x08L;
            uint32_t l_721[7][8][3] = {{{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL}},{{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL}},{{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL}},{{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL}},{{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL}},{{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL}},{{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL},{4294967294UL,0x6901451FL,4294967291UL}}};
            int i, j, k;
            (**p_1486->g_353) = l_639;
            for (p_1486->g_209 = (-7); (p_1486->g_209 > 56); p_1486->g_209++)
            { /* block id: 487 */
                int16_t ***l_662 = (void*)0;
                int16_t ****l_661 = &l_662;
                int32_t l_665 = 1L;
                uint32_t *l_666 = &p_1486->g_77;
                uint32_t **l_702 = &l_666;
                int8_t *l_707 = &p_1486->g_112[0];
                int32_t l_714 = 0x340578FFL;
                int32_t l_715 = (-10L);
                int32_t l_716 = 0x4830A1B8L;
                int32_t l_718 = (-6L);
                int32_t l_720[3][9][4] = {{{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L}},{{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L}},{{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L},{0x1971C002L,1L,0x605FA9BBL,0x6CB992D4L}}};
                int i, j, k;
                (1 + 1);
            }
        }
    }
    for (p_1486->g_276 = 0; (p_1486->g_276 <= 3); p_1486->g_276 += 1)
    { /* block id: 561 */
        uint64_t *l_757 = &p_1486->g_510;
        int32_t l_759 = 9L;
        uint16_t *l_765 = &p_1486->g_121;
        uint32_t *l_780 = &p_1486->g_781[3];
        for (p_1486->g_488 = 0; (p_1486->g_488 <= 1); p_1486->g_488 += 1)
        { /* block id: 564 */
            int32_t l_767 = (-6L);
            for (p_1486->g_114 = 0; (p_1486->g_114 <= 3); p_1486->g_114 += 1)
            { /* block id: 567 */
                uint16_t *l_758 = &l_706;
                uint16_t *l_764 = &p_1486->g_121;
                uint16_t **l_766 = &l_765;
                int i;
                l_630[p_1486->g_488] ^= (safe_mul_func_int8_t_s_s(((((*l_758) = (((void*)0 != l_757) || p_1486->g_255[(p_1486->g_488 + 2)])) < ((!((l_759 , (safe_lshift_func_uint16_t_u_u((safe_div_func_int8_t_s_s((l_764 == ((*l_766) = l_765)), (0x410397DC52AFE333L ^ 0xE30BE2282FED7347L))), l_767))) | 3UL)) , p_61)) | 0L), (-1L)));
                (*p_1486->g_354) = &l_629;
            }
        }
        l_629 |= (safe_add_func_int32_t_s_s((*p_1486->g_626), (((safe_rshift_func_uint16_t_u_u(((((*l_780) = (((((l_623 != l_623) >= 1L) < (safe_sub_func_int8_t_s_s(7L, p_61))) , (((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1486->global_2_offset, get_global_id(2), 10), 1UL)) | ((+GROUP_DIVERGE(2, 1)) && ((safe_rshift_func_uint16_t_u_u((((l_759 , l_778) == (void*)0) == p_61), 6)) | l_759))) || p_1486->g_395[3][3])) , l_759)) , (void*)0) == l_765), p_1486->g_112[0])) , (void*)0) != l_757)));
        for (p_1486->g_142 = 0; (p_1486->g_142 == 17); p_1486->g_142 = safe_add_func_uint64_t_u_u(p_1486->g_142, 8))
        { /* block id: 578 */
            l_759 |= 0x730F6E40L;
        }
    }
    return l_788;
}


/* ------------------------------------------ */
/* 
 * reads : p_1486->g_255 p_1486->g_471 p_1486->g_208 p_1486->g_278 p_1486->g_354 p_1486->g_121 p_1486->g_133 p_1486->g_135 p_1486->g_394 p_1486->g_276 p_1486->g_142 p_1486->g_389 p_1486->g_398 p_1486->g_395 p_1486->g_246 p_1486->g_53 p_1486->g_489 p_1486->g_112 p_1486->g_296 p_1486->g_77 p_1486->g_294 p_1486->g_343 p_1486->g_353 p_1486->g_413 p_1486->g_257 p_1486->g_510 p_1486->g_4 p_1486->g_3 p_1486->g_165
 * writes: p_1486->g_208 p_1486->g_278 p_1486->g_394 p_1486->g_142 p_1486->g_135 p_1486->g_121 p_1486->g_133 p_1486->g_276 p_1486->g_395 p_1486->g_489 p_1486->g_353 p_1486->g_77 p_1486->g_296 p_1486->g_246 p_1486->g_112 p_1486->g_4 p_1486->g_165 p_1486->g_398
 */
int32_t *** func_62(int32_t  p_63, int32_t *** p_64, uint8_t * p_65, struct S0 * p_1486)
{ /* block id: 345 */
    int32_t l_470 = 9L;
    uint8_t *l_515 = &p_1486->g_53;
    uint8_t **l_514 = &l_515;
    int32_t l_552 = 0L;
    int32_t l_553 = 0x6C569B6AL;
    int32_t l_555[2];
    int64_t l_598 = (-1L);
    int16_t l_607 = 0x3B58L;
    int16_t l_610 = (-8L);
    int i;
    for (i = 0; i < 2; i++)
        l_555[i] = 0x6B9C0C3EL;
    (*p_1486->g_471) &= (safe_mul_func_int16_t_s_s((safe_sub_func_uint16_t_u_u(p_1486->g_255[2], 0x15CAL)), l_470));
    l_470 = (FAKE_DIVERGE(p_1486->local_1_offset, get_local_id(1), 10) | (-9L));
    for (p_1486->g_278 = (-21); (p_1486->g_278 < 57); ++p_1486->g_278)
    { /* block id: 350 */
        int32_t *l_474 = &p_1486->g_394;
        int8_t *l_506 = (void*)0;
        int32_t ***l_549 = &p_1486->g_354;
        (*l_474) = ((&p_1486->g_165 == (void*)0) <= 4294967295UL);
        for (p_1486->g_142 = 8; (p_1486->g_142 >= 2); p_1486->g_142 -= 1)
        { /* block id: 354 */
            int32_t **l_475 = &l_474;
            int32_t **l_476 = (void*)0;
            int32_t *l_478[5][6] = {{(void*)0,&p_1486->g_4,&p_1486->g_4,(void*)0,(void*)0,&p_1486->g_4},{(void*)0,&p_1486->g_4,&p_1486->g_4,(void*)0,(void*)0,&p_1486->g_4},{(void*)0,&p_1486->g_4,&p_1486->g_4,(void*)0,(void*)0,&p_1486->g_4},{(void*)0,&p_1486->g_4,&p_1486->g_4,(void*)0,(void*)0,&p_1486->g_4},{(void*)0,&p_1486->g_4,&p_1486->g_4,(void*)0,(void*)0,&p_1486->g_4}};
            int32_t **l_477 = &l_478[0][1];
            int8_t *l_507 = (void*)0;
            uint16_t l_512 = 0xB50DL;
            int8_t l_513[10] = {(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L)};
            int i, j;
            (*l_477) = ((*l_475) = ((*p_1486->g_354) = &p_1486->g_394));
            for (p_1486->g_121 = 0; (p_1486->g_121 <= 3); p_1486->g_121 += 1)
            { /* block id: 360 */
                int32_t *l_490[8] = {&p_1486->g_394,&p_1486->g_394,&p_1486->g_394,&p_1486->g_394,&p_1486->g_394,&p_1486->g_394,&p_1486->g_394,&p_1486->g_394};
                int i;
                for (l_470 = 0; (l_470 <= 4); l_470 += 1)
                { /* block id: 363 */
                    uint8_t *l_480 = (void*)0;
                    uint8_t **l_479 = &l_480;
                    int64_t *l_485 = &p_1486->g_165;
                    int32_t l_486 = 0x7E27449CL;
                    int32_t *l_487 = &p_1486->g_488;
                    int i;
                    (1 + 1);
                }
            }
            for (p_1486->g_133 = 4; (p_1486->g_133 >= 0); p_1486->g_133 -= 1)
            { /* block id: 400 */
                int16_t *l_516 = &p_1486->g_276;
                int32_t l_519 = 0x54243F2FL;
                (*p_1486->g_135) = (((void*)0 == l_514) == p_63);
                l_519 ^= ((((*l_516) &= (**l_475)) >= GROUP_DIVERGE(2, 1)) > (safe_add_func_uint64_t_u_u(p_63, (*l_474))));
                for (l_519 = 9; (l_519 >= 0); l_519 -= 1)
                { /* block id: 406 */
                    int i, j;
                    l_470 = (safe_add_func_int8_t_s_s((p_1486->g_395[p_1486->g_133][(p_1486->g_133 + 2)] ^= (l_513[(p_1486->g_142 + 1)] && (safe_add_func_int64_t_s_s(l_470, (0x5A98L ^ (safe_sub_func_int32_t_s_s((((*l_474) = (((safe_add_func_int64_t_s_s((((safe_div_func_uint16_t_u_u((((safe_sub_func_uint8_t_u_u(255UL, (0x20DCL < 0x5B12L))) , &p_1486->g_442) == (void*)0), (safe_add_func_int16_t_s_s(l_513[(p_1486->g_142 + 1)], 0x06A8L)))) && p_1486->g_389) >= 65535UL), p_63)) & p_63) > 0L)) || p_1486->g_398[0]), 0x4D22B5CDL))))))), (*p_65)));
                }
                (*l_477) = ((*l_475) = l_474);
            }
        }
        for (p_1486->g_489 = 4; (p_1486->g_489 >= 0); p_1486->g_489 -= 1)
        { /* block id: 417 */
            uint16_t *l_536 = (void*)0;
            uint16_t *l_537 = &p_1486->g_121;
            int32_t ****l_550 = &p_1486->g_353;
            int16_t *l_551[2];
            int32_t *l_554 = (void*)0;
            uint32_t *l_556 = (void*)0;
            uint32_t *l_557 = &p_1486->g_77;
            int8_t *l_596[10][9][2] = {{{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]}},{{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]}},{{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]}},{{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]}},{{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]}},{{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]}},{{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]}},{{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]}},{{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]}},{{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]},{&p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)],&p_1486->g_255[1]}}};
            int32_t l_597 = (-8L);
            int32_t *l_599 = &p_1486->g_4;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_551[i] = &p_1486->g_133;
            if ((safe_rshift_func_uint16_t_u_u(((*l_537)++), (p_1486->g_395[p_1486->g_489][p_1486->g_489] | ((p_1486->g_395[p_1486->g_489][(p_1486->g_489 + 2)] <= ((*l_557) = (((safe_add_func_uint16_t_u_u((p_63 , (safe_div_func_int32_t_s_s((l_555[0] &= ((p_63 , (65528UL < ((((safe_unary_minus_func_int16_t_s((l_552 |= (0x49939B0EA0D7784EL || (safe_add_func_uint64_t_u_u((((safe_mul_func_uint16_t_u_u(p_1486->g_276, (p_64 != ((*l_550) = l_549)))) >= (*l_474)) && l_470), p_1486->g_112[3])))))) | 0x101628B1DB1C5DF6L) , l_552) >= p_1486->g_296))) <= l_553)), p_63))), FAKE_DIVERGE(p_1486->group_2_offset, get_group_id(2), 10))) ^ 0x010C59D2DFAF3CF9L) != 0UL))) , (*l_474))))))
            { /* block id: 423 */
                uint8_t *l_565[9] = {&p_1486->g_246,&p_1486->g_246,&p_1486->g_246,&p_1486->g_246,&p_1486->g_246,&p_1486->g_246,&p_1486->g_246,&p_1486->g_246,&p_1486->g_246};
                int i;
                for (p_1486->g_296 = 9; (p_1486->g_296 > (-3)); p_1486->g_296 = safe_sub_func_int32_t_s_s(p_1486->g_296, 1))
                { /* block id: 426 */
                    uint32_t l_564 = 0xC77C1F53L;
                    (*l_474) = 0x34C572B0L;
                    for (p_1486->g_246 = 28; (p_1486->g_246 == 10); p_1486->g_246--)
                    { /* block id: 430 */
                        uint16_t l_570 = 0xE926L;
                        if ((*l_474))
                            break;
                        (*l_474) |= ((((safe_mul_func_int16_t_s_s(0L, (!l_564))) < ((*l_557) ^= GROUP_DIVERGE(2, 1))) < ((((*l_514) == (p_63 , l_565[3])) , (p_63 | p_63)) | (p_1486->g_294 | (~(((safe_mod_func_int16_t_s_s(((safe_rshift_func_int8_t_s_s(p_1486->g_343, 1)) & l_570), l_570)) != p_63) , p_63))))) <= 4294967294UL);
                        (*p_1486->g_354) = &l_470;
                    }
                }
            }
            else
            { /* block id: 437 */
                int32_t *l_573[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_573[i] = &l_555[0];
                (*l_474) |= (safe_add_func_int8_t_s_s(p_63, 255UL));
                (***l_550) = l_573[0];
            }
            (*l_599) &= ((safe_add_func_uint8_t_u_u((p_63 || (((safe_add_func_uint16_t_u_u((((((p_1486->g_394 , (safe_div_func_uint8_t_u_u((safe_mod_func_int8_t_s_s(((safe_lshift_func_int8_t_s_s((p_63 & (safe_rshift_func_int16_t_s_u((p_63 ^ (safe_div_func_int64_t_s_s((safe_lshift_func_uint8_t_u_s((safe_div_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), (safe_sub_func_uint8_t_u_u((!(((p_1486->g_53 & p_1486->g_413) == (p_1486->g_112[0] ^= (l_555[0] >= ((((l_597 = ((*l_474) = (((safe_lshift_func_int8_t_s_u((p_1486->g_395[1][4] = p_1486->g_257), p_1486->g_510)) < p_63) , p_63))) | p_63) , p_63) || (-8L))))) ^ p_1486->g_510)), 0x32L)))), 6)), p_1486->g_257))), 7))), l_552)) == 0x972DD7835B86EE7DL), (*p_65))), l_553))) | p_1486->g_510) ^ p_63) , (void*)0) == &p_1486->g_246), l_598)) , (void*)0) != (void*)0)), l_470)) < p_1486->g_276);
            if ((*l_474))
                continue;
        }
    }
    for (p_1486->g_246 = 0; (p_1486->g_246 <= 4); p_1486->g_246 += 1)
    { /* block id: 451 */
        int16_t **l_604 = (void*)0;
        int32_t *l_608[7] = {&l_555[0],&l_555[0],&l_555[0],&l_555[0],&l_555[0],&l_555[0],&l_555[0]};
        uint8_t l_609[9][10] = {{0x68L,0UL,5UL,8UL,0x68L,0x07L,0UL,255UL,8UL,0x07L},{0x68L,0UL,5UL,8UL,0x68L,0x07L,0UL,255UL,8UL,0x07L},{0x68L,0UL,5UL,8UL,0x68L,0x07L,0UL,255UL,8UL,0x07L},{0x68L,0UL,5UL,8UL,0x68L,0x07L,0UL,255UL,8UL,0x07L},{0x68L,0UL,5UL,8UL,0x68L,0x07L,0UL,255UL,8UL,0x07L},{0x68L,0UL,5UL,8UL,0x68L,0x07L,0UL,255UL,8UL,0x07L},{0x68L,0UL,5UL,8UL,0x68L,0x07L,0UL,255UL,8UL,0x07L},{0x68L,0UL,5UL,8UL,0x68L,0x07L,0UL,255UL,8UL,0x07L},{0x68L,0UL,5UL,8UL,0x68L,0x07L,0UL,255UL,8UL,0x07L}};
        int i, j;
        (*p_1486->g_3) = (l_609[3][3] = ((safe_sub_func_int64_t_s_s(((((((l_552 , (0UL || (safe_div_func_uint64_t_u_u((l_604 == (void*)0), ((GROUP_DIVERGE(2, 1) <= (safe_sub_func_uint32_t_u_u(p_1486->g_296, (-3L)))) || p_63))))) , (((((((l_555[1] = l_607) , p_1486->g_413) < 246UL) <= 9L) , p_1486->g_208) , p_1486->g_133) & 3UL)) > l_607) | l_598) ^ p_63) | p_63), p_63)) < 0xF759245EL));
        for (p_1486->g_165 = 0; (p_1486->g_165 >= 0); p_1486->g_165 -= 1)
        { /* block id: 457 */
            int32_t l_611 = 4L;
            uint8_t l_612 = 0x39L;
            int i, j;
            p_1486->g_398[p_1486->g_165] = p_1486->g_395[p_1486->g_246][(p_1486->g_165 + 3)];
            --l_612;
            return &p_1486->g_354;
        }
    }
    return p_64;
}


/* ------------------------------------------ */
/* 
 * reads : p_1486->g_11 p_1486->g_4 p_1486->g_112 p_1486->g_77 p_1486->g_121 p_1486->g_3 p_1486->g_90 p_1486->g_114 p_1486->g_133 p_1486->g_134 p_1486->g_135 p_1486->g_278 p_1486->g_257 p_1486->g_246 p_1486->g_343 p_1486->g_165 p_1486->g_353 p_1486->g_208 p_1486->g_294 p_1486->g_255 p_1486->g_354 p_1486->g_413 p_1486->g_398 p_1486->g_296 p_1486->g_53 p_1486->g_395 p_1486->g_394 p_1486->g_276
 * writes: p_1486->g_53 p_1486->g_112 p_1486->g_114 p_1486->g_121 p_1486->g_133 p_1486->g_135 p_1486->g_142 p_1486->g_257 p_1486->g_246 p_1486->g_343 p_1486->g_165 p_1486->g_353 p_1486->g_208 p_1486->g_413 p_1486->g_77 p_1486->g_398 p_1486->g_278 p_1486->g_394
 */
uint8_t * func_66(int32_t ** p_67, uint8_t  p_68, int32_t  p_69, struct S0 * p_1486)
{ /* block id: 39 */
    uint32_t l_78[7][3][8] = {{{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L},{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L},{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L}},{{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L},{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L},{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L}},{{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L},{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L},{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L}},{{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L},{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L},{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L}},{{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L},{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L},{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L}},{{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L},{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L},{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L}},{{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L},{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L},{0x348280EFL,0x2FE87A7CL,0x891F7D46L,0UL,0UL,0x27C80B14L,0UL,0x4A26E329L}}};
    uint8_t *l_89 = &p_1486->g_53;
    int16_t *l_331 = &p_1486->g_276;
    int32_t l_335 = (-8L);
    int32_t l_383 = 0x2D6204C1L;
    int32_t l_390[10] = {0x50A41C22L,0x488EDF39L,0x50A41C22L,0x50A41C22L,0x488EDF39L,0x50A41C22L,0x50A41C22L,0x488EDF39L,0x50A41C22L,0x50A41C22L};
    int16_t l_403 = (-1L);
    int16_t **l_443 = &l_331;
    uint32_t l_459 = 0xC819C4D0L;
    uint16_t l_462 = 0UL;
    int i, j, k;
    for (p_69 = 0; (p_69 <= 2); p_69 += 1)
    { /* block id: 42 */
        uint32_t l_85 = 4294967287UL;
        uint32_t *l_332 = &p_1486->g_77;
        int32_t l_333 = (-7L);
        int32_t *l_334[3][9] = {{&p_1486->g_4,&p_1486->g_4,&p_1486->g_208,&p_1486->g_4,&p_1486->g_11,(void*)0,&p_1486->g_11,&p_1486->g_114,&p_1486->g_11},{&p_1486->g_4,&p_1486->g_4,&p_1486->g_208,&p_1486->g_4,&p_1486->g_11,(void*)0,&p_1486->g_11,&p_1486->g_114,&p_1486->g_11},{&p_1486->g_4,&p_1486->g_4,&p_1486->g_208,&p_1486->g_4,&p_1486->g_11,(void*)0,&p_1486->g_11,&p_1486->g_114,&p_1486->g_11}};
        uint32_t l_361 = 0xDBF4DE0FL;
        int i, j;
        if ((l_335 = (l_333 |= (((((1UL > (safe_mul_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((l_85 | func_86(l_78[3][1][0], l_89, p_1486)), (p_69 > (((safe_div_func_uint8_t_u_u(((((safe_sub_func_int64_t_s_s((((((void*)0 == l_331) || ((l_332 != (void*)0) , FAKE_DIVERGE(p_1486->local_1_offset, get_local_id(1), 10))) , (void*)0) != (void*)0), 0x6207E78FE0421E22L)) , p_69) == 0x60CAL) & l_78[3][2][3]), p_68)) | p_1486->g_278) & 0L)))), 0x5DF6A90DL)), p_69))) | l_78[3][0][4]) != p_1486->g_77) , l_85) == p_1486->g_77))))
        { /* block id: 207 */
            uint32_t l_338 = 0xD4417AD1L;
            int32_t l_341 = 0x7C840620L;
            int32_t l_342 = 2L;
            int32_t l_405 = 0x3A75F5F8L;
            int32_t l_410[5][2][8] = {{{0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L},{0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L}},{{0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L},{0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L}},{{0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L},{0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L}},{{0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L},{0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L}},{{0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L},{0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L,0x1B84B678L,0x1B84B678L,1L}}};
            int32_t l_412 = (-5L);
            int i, j, k;
            for (p_1486->g_257 = 0; (p_1486->g_257 <= 2); p_1486->g_257 += 1)
            { /* block id: 210 */
                for (p_1486->g_246 = 0; (p_1486->g_246 <= 2); p_1486->g_246 += 1)
                { /* block id: 213 */
                    int8_t l_336 = 0x21L;
                    int32_t l_337 = 1L;
                    l_338--;
                    ++p_1486->g_343;
                }
                if ((atomic_inc(&p_1486->l_atomic_input[47]) == 1))
                { /* block id: 218 */
                    int32_t l_347 = 2L;
                    int32_t *l_346[8][8][4] = {{{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347}},{{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347}},{{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347}},{{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347}},{{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347}},{{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347}},{{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347}},{{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347},{&l_347,&l_347,(void*)0,&l_347}}};
                    int32_t *l_348 = &l_347;
                    int i, j, k;
                    l_348 = l_346[2][2][3];
                    unsigned int result = 0;
                    result += l_347;
                    atomic_add(&p_1486->l_special_values[47], result);
                }
                else
                { /* block id: 220 */
                    (1 + 1);
                }
                for (l_85 = 0; (l_85 <= 2); l_85 += 1)
                { /* block id: 225 */
                    for (p_1486->g_165 = 3; (p_1486->g_165 >= 0); p_1486->g_165 -= 1)
                    { /* block id: 228 */
                        return &p_1486->g_53;
                    }
                }
            }
            for (p_1486->g_257 = 0; (p_1486->g_257 <= 2); p_1486->g_257 += 1)
            { /* block id: 235 */
                int32_t ****l_355 = &p_1486->g_353;
                int32_t *l_358 = &l_342;
                int32_t l_387 = (-3L);
                int32_t l_391 = 5L;
                int32_t l_397 = 0x04EBBEE3L;
                int32_t l_401 = (-2L);
                int32_t l_402 = 0x78ADEB62L;
                int32_t l_404 = 0x492C5936L;
                int32_t l_406 = 0x466C8F80L;
                int32_t l_407[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
                uint32_t l_417 = 0x2506CC21L;
                int i;
                p_1486->g_208 |= (l_341 = (l_335 = (((((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u((((*l_355) = p_1486->g_353) == &p_1486->g_134), 3)), (p_68 , (p_1486->g_4 & 1UL)))) || (((FAKE_DIVERGE(p_1486->group_2_offset, get_group_id(2), 10) , (0x1BL || ((l_338 != 0x54F2F051B36B28D3L) | ((*p_1486->g_3) >= p_69)))) <= l_78[5][1][0]) | 0x7E765B9DL)) <= (-5L)) , 0xCD03867CL) != p_68)));
                if ((safe_lshift_func_uint16_t_u_u(p_1486->g_294, p_69)))
                { /* block id: 240 */
                    int32_t **l_359 = (void*)0;
                    int32_t **l_360 = &l_334[2][7];
                    (*l_358) &= (FAKE_DIVERGE(p_1486->local_1_offset, get_local_id(1), 10) , (((*l_360) = l_358) == (void*)0));
                }
                else
                { /* block id: 243 */
                    (*l_358) ^= l_361;
                }
                for (l_335 = 2; (l_335 >= 0); l_335 -= 1)
                { /* block id: 248 */
                    uint16_t l_362[9] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
                    int32_t *l_384 = &l_333;
                    int32_t l_386 = 0x48851D70L;
                    int32_t l_388 = 0x7286BC42L;
                    int32_t l_393 = 0L;
                    int32_t l_399 = 1L;
                    int32_t l_400[2][4][5] = {{{(-1L),(-1L),0x7491E008L,6L,(-1L)},{(-1L),(-1L),0x7491E008L,6L,(-1L)},{(-1L),(-1L),0x7491E008L,6L,(-1L)},{(-1L),(-1L),0x7491E008L,6L,(-1L)}},{{(-1L),(-1L),0x7491E008L,6L,(-1L)},{(-1L),(-1L),0x7491E008L,6L,(-1L)},{(-1L),(-1L),0x7491E008L,6L,(-1L)},{(-1L),(-1L),0x7491E008L,6L,(-1L)}}};
                    int32_t *l_416 = &p_1486->g_11;
                    int i, j, k;
                    l_362[3]--;
                    if (((safe_lshift_func_uint16_t_u_u(l_338, 14)) != (((l_383 = ((safe_rshift_func_uint8_t_u_s((safe_sub_func_uint8_t_u_u((((p_1486->g_4 != (safe_sub_func_int32_t_s_s(0x249889C9L, (safe_mod_func_uint32_t_u_u(1UL, l_342))))) >= (p_1486->g_90[2][1] , ((safe_mul_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s((!((safe_mul_func_int8_t_s_s(l_362[8], ((-1L) & (safe_div_func_int64_t_s_s(p_69, p_1486->g_255[1]))))) == p_1486->g_246)), 1)), p_1486->g_246)) , p_69))) , GROUP_DIVERGE(2, 1)), p_1486->g_208)), 1)) <= 0x3FE9FF898725E799L)) , 254UL) < p_68)))
                    { /* block id: 251 */
                        (*p_1486->g_354) = (p_69 , l_384);
                        (**p_1486->g_353) = (*p_1486->g_354);
                    }
                    else
                    { /* block id: 254 */
                        int64_t l_385 = (-1L);
                        int32_t l_392 = 0x4BD8DC3DL;
                        int64_t l_396 = 1L;
                        int32_t l_408 = 0L;
                        int32_t l_409 = 0x0F393915L;
                        int32_t l_411 = 0x67DB924BL;
                        --p_1486->g_413;
                        (***l_355) = l_416;
                    }
                }
                for (l_401 = 2; (l_401 >= 0); l_401 -= 1)
                { /* block id: 261 */
                    ++l_417;
                    l_383 |= (~((*l_358) = ((*p_1486->g_353) == p_67)));
                    if (l_78[0][0][3])
                        break;
                    for (p_1486->g_77 = 0; (p_1486->g_77 <= 2); p_1486->g_77 += 1)
                    { /* block id: 268 */
                        return &p_1486->g_246;
                    }
                }
            }
            if (l_390[9])
            { /* block id: 273 */
                if (l_390[0])
                    break;
                for (p_1486->g_114 = 0; (p_1486->g_114 >= 0); p_1486->g_114 -= 1)
                { /* block id: 277 */
                    int i;
                    p_1486->g_398[p_1486->g_114] &= p_1486->g_112[(p_69 + 2)];
                    for (p_1486->g_278 = 0; (p_1486->g_278 <= 2); p_1486->g_278 += 1)
                    { /* block id: 281 */
                        return &p_1486->g_246;
                    }
                }
            }
            else
            { /* block id: 285 */
                uint8_t l_420 = 0xCFL;
                --l_420;
                return &p_1486->g_53;
            }
        }
        else
        { /* block id: 289 */
            uint16_t *l_436 = (void*)0;
            uint16_t *l_437 = &p_1486->g_121;
            int32_t l_440[9];
            int i;
            for (i = 0; i < 9; i++)
                l_440[i] = 0x24CEA0ECL;
            if ((atomic_inc(&p_1486->l_atomic_input[32]) == 5))
            { /* block id: 291 */
                int64_t l_423[6][7] = {{0x7BE4C1A5A1103E7FL,0x32897F303163E402L,0x274E8C5AA4814FABL,0x2E44AEDC07E8C983L,0x17B13DDB3EEA538DL,0x7BE4C1A5A1103E7FL,0x2E44AEDC07E8C983L},{0x7BE4C1A5A1103E7FL,0x32897F303163E402L,0x274E8C5AA4814FABL,0x2E44AEDC07E8C983L,0x17B13DDB3EEA538DL,0x7BE4C1A5A1103E7FL,0x2E44AEDC07E8C983L},{0x7BE4C1A5A1103E7FL,0x32897F303163E402L,0x274E8C5AA4814FABL,0x2E44AEDC07E8C983L,0x17B13DDB3EEA538DL,0x7BE4C1A5A1103E7FL,0x2E44AEDC07E8C983L},{0x7BE4C1A5A1103E7FL,0x32897F303163E402L,0x274E8C5AA4814FABL,0x2E44AEDC07E8C983L,0x17B13DDB3EEA538DL,0x7BE4C1A5A1103E7FL,0x2E44AEDC07E8C983L},{0x7BE4C1A5A1103E7FL,0x32897F303163E402L,0x274E8C5AA4814FABL,0x2E44AEDC07E8C983L,0x17B13DDB3EEA538DL,0x7BE4C1A5A1103E7FL,0x2E44AEDC07E8C983L},{0x7BE4C1A5A1103E7FL,0x32897F303163E402L,0x274E8C5AA4814FABL,0x2E44AEDC07E8C983L,0x17B13DDB3EEA538DL,0x7BE4C1A5A1103E7FL,0x2E44AEDC07E8C983L}};
                int32_t l_424 = 0L;
                int64_t l_425[10][6] = {{4L,0x5512B6A4CC6BE954L,0x785E3D294501ECD0L,(-2L),0x785E3D294501ECD0L,0x5512B6A4CC6BE954L},{4L,0x5512B6A4CC6BE954L,0x785E3D294501ECD0L,(-2L),0x785E3D294501ECD0L,0x5512B6A4CC6BE954L},{4L,0x5512B6A4CC6BE954L,0x785E3D294501ECD0L,(-2L),0x785E3D294501ECD0L,0x5512B6A4CC6BE954L},{4L,0x5512B6A4CC6BE954L,0x785E3D294501ECD0L,(-2L),0x785E3D294501ECD0L,0x5512B6A4CC6BE954L},{4L,0x5512B6A4CC6BE954L,0x785E3D294501ECD0L,(-2L),0x785E3D294501ECD0L,0x5512B6A4CC6BE954L},{4L,0x5512B6A4CC6BE954L,0x785E3D294501ECD0L,(-2L),0x785E3D294501ECD0L,0x5512B6A4CC6BE954L},{4L,0x5512B6A4CC6BE954L,0x785E3D294501ECD0L,(-2L),0x785E3D294501ECD0L,0x5512B6A4CC6BE954L},{4L,0x5512B6A4CC6BE954L,0x785E3D294501ECD0L,(-2L),0x785E3D294501ECD0L,0x5512B6A4CC6BE954L},{4L,0x5512B6A4CC6BE954L,0x785E3D294501ECD0L,(-2L),0x785E3D294501ECD0L,0x5512B6A4CC6BE954L},{4L,0x5512B6A4CC6BE954L,0x785E3D294501ECD0L,(-2L),0x785E3D294501ECD0L,0x5512B6A4CC6BE954L}};
                uint32_t l_426 = 1UL;
                uint32_t l_429[8][9] = {{0UL,4294967295UL,0x1FB7C044L,0xA9F1A553L,4294967295UL,0xA9F1A553L,0x1FB7C044L,4294967295UL,0UL},{0UL,4294967295UL,0x1FB7C044L,0xA9F1A553L,4294967295UL,0xA9F1A553L,0x1FB7C044L,4294967295UL,0UL},{0UL,4294967295UL,0x1FB7C044L,0xA9F1A553L,4294967295UL,0xA9F1A553L,0x1FB7C044L,4294967295UL,0UL},{0UL,4294967295UL,0x1FB7C044L,0xA9F1A553L,4294967295UL,0xA9F1A553L,0x1FB7C044L,4294967295UL,0UL},{0UL,4294967295UL,0x1FB7C044L,0xA9F1A553L,4294967295UL,0xA9F1A553L,0x1FB7C044L,4294967295UL,0UL},{0UL,4294967295UL,0x1FB7C044L,0xA9F1A553L,4294967295UL,0xA9F1A553L,0x1FB7C044L,4294967295UL,0UL},{0UL,4294967295UL,0x1FB7C044L,0xA9F1A553L,4294967295UL,0xA9F1A553L,0x1FB7C044L,4294967295UL,0UL},{0UL,4294967295UL,0x1FB7C044L,0xA9F1A553L,4294967295UL,0xA9F1A553L,0x1FB7C044L,4294967295UL,0UL}};
                int64_t l_430[1];
                int32_t l_432[5] = {0x0E9E41F9L,0x0E9E41F9L,0x0E9E41F9L,0x0E9E41F9L,0x0E9E41F9L};
                int32_t *l_431 = &l_432[1];
                int32_t *l_433 = &l_432[1];
                int i, j;
                for (i = 0; i < 1; i++)
                    l_430[i] = 0x6B5D75B1017EF13FL;
                l_426--;
                l_430[0] = (l_429[5][8] , 0x4386796DL);
                l_433 = (l_431 = (void*)0);
                unsigned int result = 0;
                int l_423_i0, l_423_i1;
                for (l_423_i0 = 0; l_423_i0 < 6; l_423_i0++) {
                    for (l_423_i1 = 0; l_423_i1 < 7; l_423_i1++) {
                        result += l_423[l_423_i0][l_423_i1];
                    }
                }
                result += l_424;
                int l_425_i0, l_425_i1;
                for (l_425_i0 = 0; l_425_i0 < 10; l_425_i0++) {
                    for (l_425_i1 = 0; l_425_i1 < 6; l_425_i1++) {
                        result += l_425[l_425_i0][l_425_i1];
                    }
                }
                result += l_426;
                int l_429_i0, l_429_i1;
                for (l_429_i0 = 0; l_429_i0 < 8; l_429_i0++) {
                    for (l_429_i1 = 0; l_429_i1 < 9; l_429_i1++) {
                        result += l_429[l_429_i0][l_429_i1];
                    }
                }
                int l_430_i0;
                for (l_430_i0 = 0; l_430_i0 < 1; l_430_i0++) {
                    result += l_430[l_430_i0];
                }
                int l_432_i0;
                for (l_432_i0 = 0; l_432_i0 < 5; l_432_i0++) {
                    result += l_432[l_432_i0];
                }
                atomic_add(&p_1486->l_special_values[32], result);
            }
            else
            { /* block id: 296 */
                (1 + 1);
            }
            (*p_1486->g_354) = &l_333;
            p_1486->g_114 &= ((*p_1486->g_135) = 0x0492A5E8L);
            l_440[7] = (safe_add_func_uint32_t_u_u(p_1486->g_296, ((**p_1486->g_354) = (0xD2FF40AB42366A57L && (((*l_437)++) > p_68)))));
        }
        for (p_1486->g_208 = 2; (p_1486->g_208 >= 0); p_1486->g_208 -= 1)
        { /* block id: 308 */
            int32_t *l_445 = &p_1486->g_208;
            l_443 = &l_331;
            for (l_403 = 0; (l_403 <= 2); l_403 += 1)
            { /* block id: 312 */
                for (l_361 = 0; (l_361 <= 2); l_361 += 1)
                { /* block id: 315 */
                    return &p_1486->g_246;
                }
            }
            if (l_390[1])
                break;
            p_1486->g_394 = (safe_unary_minus_func_int32_t_s(p_69));
            for (p_1486->g_246 = 0; (p_1486->g_246 <= 2); p_1486->g_246 += 1)
            { /* block id: 323 */
                int32_t *l_446 = (void*)0;
                uint8_t *l_447 = &p_1486->g_246;
                int32_t l_451[2];
                int32_t l_463 = 2L;
                int32_t l_465[2][8][2] = {{{0x3A0DE83FL,(-7L)},{0x3A0DE83FL,(-7L)},{0x3A0DE83FL,(-7L)},{0x3A0DE83FL,(-7L)},{0x3A0DE83FL,(-7L)},{0x3A0DE83FL,(-7L)},{0x3A0DE83FL,(-7L)},{0x3A0DE83FL,(-7L)}},{{0x3A0DE83FL,(-7L)},{0x3A0DE83FL,(-7L)},{0x3A0DE83FL,(-7L)},{0x3A0DE83FL,(-7L)},{0x3A0DE83FL,(-7L)},{0x3A0DE83FL,(-7L)},{0x3A0DE83FL,(-7L)},{0x3A0DE83FL,(-7L)}}};
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_451[i] = 0x042E9A0CL;
                for (p_1486->g_53 = 0; (p_1486->g_53 <= 2); p_1486->g_53 += 1)
                { /* block id: 326 */
                    l_446 = l_445;
                    return l_447;
                }
                for (l_403 = 0; (l_403 <= 2); l_403 += 1)
                { /* block id: 332 */
                    int32_t l_450 = 4L;
                    int8_t *l_452 = (void*)0;
                    uint64_t *l_464 = &p_1486->g_257;
                    l_465[1][7][1] &= (p_1486->g_395[1][4] ^ ((p_1486->g_112[0] = (l_450 == (l_451[1] = 0x7D065A8AL))) != (((!(safe_add_func_int8_t_s_s(((((*l_464) = ((safe_div_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_u(p_1486->g_255[3], 5)) >= ((l_459 ^ p_1486->g_90[4][1]) > (l_463 = ((((safe_rshift_func_uint8_t_u_s((p_69 != 0UL), ((p_1486->g_394 & l_462) && p_1486->g_4))) || 0x02F4L) , p_69) <= FAKE_DIVERGE(p_1486->group_1_offset, get_group_id(1), 10))))), FAKE_DIVERGE(p_1486->global_0_offset, get_global_id(0), 10))) || p_1486->g_165)) ^ p_1486->g_114) < p_1486->g_11), p_69))) , p_1486->g_114) < p_1486->g_276)));
                }
                (**p_1486->g_353) = &l_463;
                if ((*p_1486->g_135))
                    continue;
            }
        }
    }
    return l_89;
}


/* ------------------------------------------ */
/* 
 * reads : p_1486->g_11 p_1486->g_4 p_1486->g_112 p_1486->g_77 p_1486->g_121 p_1486->g_3 p_1486->g_90 p_1486->g_114 p_1486->g_133 p_1486->g_134 p_1486->g_135
 * writes: p_1486->g_53 p_1486->g_112 p_1486->g_114 p_1486->g_121 p_1486->g_133 p_1486->g_135 p_1486->g_142
 */
int8_t  func_86(int32_t  p_87, uint8_t * p_88, struct S0 * p_1486)
{ /* block id: 43 */
    int32_t *l_101 = &p_1486->g_11;
    int8_t l_110[8] = {(-1L),(-4L),(-1L),(-1L),(-4L),(-1L),(-1L),(-4L)};
    int32_t l_119 = 0x788CBA7AL;
    int32_t l_120 = 0x7E2AFDD6L;
    int32_t **l_149 = &p_1486->g_135;
    int32_t ***l_148 = &l_149;
    uint16_t l_241 = 0xE301L;
    int32_t l_275 = 1L;
    int16_t *l_304 = (void*)0;
    int i;
    for (p_87 = 0; (p_87 <= 3); p_87 += 1)
    { /* block id: 46 */
        int32_t *l_99 = &p_1486->g_11;
        int32_t *l_100 = (void*)0;
        int8_t *l_111 = &p_1486->g_112[0];
        int32_t *l_113 = &p_1486->g_114;
        int32_t **l_138 = &l_101;
        int32_t ***l_137[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t **l_147[2];
        int64_t *l_269 = &p_1486->g_165;
        int i;
        for (i = 0; i < 2; i++)
            l_147[i] = &l_113;
        if (((*l_113) = ((((safe_add_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s((((safe_mod_func_uint8_t_u_u(((*p_88) = p_1486->g_11), 4UL)) || (safe_add_func_int16_t_s_s(((l_99 = l_99) == l_100), ((void*)0 != l_101)))) ^ (*l_101)), (((*l_111) |= (safe_mod_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(p_1486->g_4, ((safe_div_func_uint16_t_u_u(((*l_101) < p_1486->g_11), p_87)) | p_1486->g_4))), 0x5BL)) >= l_110[1]), p_87))) < p_1486->g_4))) <= p_1486->g_4), p_87)) < p_87) , 5UL) > p_1486->g_77)))
        { /* block id: 51 */
            int32_t *l_115 = &p_1486->g_114;
            int32_t *l_116 = (void*)0;
            int32_t *l_117 = &p_1486->g_114;
            int32_t *l_118[1][10][4] = {{{&p_1486->g_114,&p_1486->g_114,&p_1486->g_114,&p_1486->g_114},{&p_1486->g_114,&p_1486->g_114,&p_1486->g_114,&p_1486->g_114},{&p_1486->g_114,&p_1486->g_114,&p_1486->g_114,&p_1486->g_114},{&p_1486->g_114,&p_1486->g_114,&p_1486->g_114,&p_1486->g_114},{&p_1486->g_114,&p_1486->g_114,&p_1486->g_114,&p_1486->g_114},{&p_1486->g_114,&p_1486->g_114,&p_1486->g_114,&p_1486->g_114},{&p_1486->g_114,&p_1486->g_114,&p_1486->g_114,&p_1486->g_114},{&p_1486->g_114,&p_1486->g_114,&p_1486->g_114,&p_1486->g_114},{&p_1486->g_114,&p_1486->g_114,&p_1486->g_114,&p_1486->g_114},{&p_1486->g_114,&p_1486->g_114,&p_1486->g_114,&p_1486->g_114}}};
            int i, j, k;
            p_1486->g_121++;
            if (p_87)
                continue;
            if (p_87)
                continue;
            if ((*p_1486->g_3))
                continue;
        }
        else
        { /* block id: 56 */
            int16_t *l_132 = &p_1486->g_133;
            int32_t l_136 = (-5L);
            int32_t **l_139 = (void*)0;
            l_120 &= (0x40L > (((*l_113) = (safe_sub_func_uint16_t_u_u((((+(safe_lshift_func_int16_t_s_s((p_87 <= p_1486->g_90[3][0]), 7))) && 0x36CBL) < ((((*l_132) &= ((safe_div_func_uint16_t_u_u((*l_101), 0xC283L)) >= (safe_rshift_func_int16_t_s_s((p_1486->g_114 == p_87), 11)))) ^ (p_1486->g_90[3][1] != (-1L))) , p_87)), (*l_113)))) != (*p_1486->g_3)));
            (*p_1486->g_134) = &l_119;
            (*l_113) = ((~4294967290UL) < (&l_100 == ((((l_136 , &p_1486->g_134) == l_137[7]) == (l_139 != (((safe_add_func_uint64_t_u_u((p_1486->g_142 = p_87), (safe_mod_func_uint16_t_u_u(p_1486->g_112[3], (safe_div_func_int16_t_s_s((p_1486->g_114 == p_87), p_1486->g_4)))))) && 0x0EECF6E471B29B62L) , l_139))) , l_147[1])));
            (*l_113) ^= (*p_1486->g_135);
        }
    }
    return p_87;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[54];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 54; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[54];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 54; i++)
            l_special_values[i] = 0;
    struct S0 c_1487;
    struct S0* p_1486 = &c_1487;
    struct S0 c_1488 = {
        (-4L), // p_1486->g_4
        &p_1486->g_4, // p_1486->g_3
        0x25A40F2FL, // p_1486->g_11
        0x9FL, // p_1486->g_53
        1UL, // p_1486->g_77
        {{3L,3L,3L,3L},{3L,3L,3L,3L},{3L,3L,3L,3L},{3L,3L,3L,3L},{3L,3L,3L,3L}}, // p_1486->g_90
        {(-6L),(-6L),(-6L),(-6L),(-6L)}, // p_1486->g_112
        0x3B06C877L, // p_1486->g_114
        0xD33EL, // p_1486->g_121
        0x47CBL, // p_1486->g_133
        &p_1486->g_11, // p_1486->g_135
        &p_1486->g_135, // p_1486->g_134
        0x26L, // p_1486->g_142
        (-8L), // p_1486->g_165
        (-7L), // p_1486->g_208
        4294967295UL, // p_1486->g_209
        0xFCL, // p_1486->g_246
        {6L,6L,6L,6L}, // p_1486->g_255
        7UL, // p_1486->g_257
        0x2D16L, // p_1486->g_276
        0xB6ADL, // p_1486->g_278
        1L, // p_1486->g_294
        0x1DD0851DL, // p_1486->g_296
        1UL, // p_1486->g_343
        &p_1486->g_135, // p_1486->g_354
        &p_1486->g_354, // p_1486->g_353
        2L, // p_1486->g_389
        0x0D27AAE4L, // p_1486->g_394
        {{1L,0x3EL,1L,1L,0x3EL,1L,1L},{1L,0x3EL,1L,1L,0x3EL,1L,1L},{1L,0x3EL,1L,1L,0x3EL,1L,1L},{1L,0x3EL,1L,1L,0x3EL,1L,1L},{1L,0x3EL,1L,1L,0x3EL,1L,1L}}, // p_1486->g_395
        {0L}, // p_1486->g_398
        1UL, // p_1486->g_413
        (void*)0, // p_1486->g_442
        {&p_1486->g_442,&p_1486->g_442,&p_1486->g_442,&p_1486->g_442,&p_1486->g_442,&p_1486->g_442,&p_1486->g_442,&p_1486->g_442,&p_1486->g_442}, // p_1486->g_441
        &p_1486->g_208, // p_1486->g_471
        0x3DDF9D1AL, // p_1486->g_488
        0x340749A3L, // p_1486->g_489
        4UL, // p_1486->g_510
        (void*)0, // p_1486->g_625
        &p_1486->g_394, // p_1486->g_626
        1UL, // p_1486->g_754
        {0xA7AA4AA2L,4294967295UL,0xA7AA4AA2L,0xA7AA4AA2L,4294967295UL,0xA7AA4AA2L}, // p_1486->g_781
        0x65L, // p_1486->g_803
        18446744073709551615UL, // p_1486->g_811
        (void*)0, // p_1486->g_858
        {{{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858}},{{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858}},{{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858}},{{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858}},{{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858}},{{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858}},{{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858}},{{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858}},{{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858},{&p_1486->g_858,&p_1486->g_858,&p_1486->g_858,&p_1486->g_858}}}, // p_1486->g_857
        4294967294UL, // p_1486->g_869
        {{{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L}},{{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L}},{{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L}},{{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L}},{{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L}},{{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L}},{{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L}},{{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L}},{{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L},{0x25CF6CF30FC23A68L,1L,0x7CA1081220647E45L,0L,0L}}}, // p_1486->g_908
        0x8B1BC4C785D84F0CL, // p_1486->g_1026
        &p_1486->g_257, // p_1486->g_1056
        &p_1486->g_246, // p_1486->g_1069
        &p_1486->g_1069, // p_1486->g_1068
        &p_1486->g_1068, // p_1486->g_1067
        0x40A7AE84L, // p_1486->g_1221
        {{&p_1486->g_1221,&p_1486->g_1221,(void*)0,&p_1486->g_1221},{&p_1486->g_1221,&p_1486->g_1221,(void*)0,&p_1486->g_1221},{&p_1486->g_1221,&p_1486->g_1221,(void*)0,&p_1486->g_1221}}, // p_1486->g_1220
        {&p_1486->g_1220[0][0],&p_1486->g_1220[0][0]}, // p_1486->g_1219
        {{&p_1486->g_754},{&p_1486->g_754},{&p_1486->g_754},{&p_1486->g_754},{&p_1486->g_754},{&p_1486->g_754}}, // p_1486->g_1236
        {{&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0]},{&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0]},{&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0]},{&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0],&p_1486->g_1236[4][0]}}, // p_1486->g_1235
        &p_1486->g_398[0], // p_1486->g_1285
        {&p_1486->g_1285,&p_1486->g_1285,&p_1486->g_1285,&p_1486->g_1285,&p_1486->g_1285,&p_1486->g_1285,&p_1486->g_1285,&p_1486->g_1285}, // p_1486->g_1284
        (void*)0, // p_1486->g_1394
        &p_1486->g_489, // p_1486->g_1421
        (-1L), // p_1486->g_1424
        &p_1486->g_781[1], // p_1486->g_1467
        sequence_input[get_global_id(0)], // p_1486->global_0_offset
        sequence_input[get_global_id(1)], // p_1486->global_1_offset
        sequence_input[get_global_id(2)], // p_1486->global_2_offset
        sequence_input[get_local_id(0)], // p_1486->local_0_offset
        sequence_input[get_local_id(1)], // p_1486->local_1_offset
        sequence_input[get_local_id(2)], // p_1486->local_2_offset
        sequence_input[get_group_id(0)], // p_1486->group_0_offset
        sequence_input[get_group_id(1)], // p_1486->group_1_offset
        sequence_input[get_group_id(2)], // p_1486->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1487 = c_1488;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1486);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1486->g_4, "p_1486->g_4", print_hash_value);
    transparent_crc(p_1486->g_11, "p_1486->g_11", print_hash_value);
    transparent_crc(p_1486->g_53, "p_1486->g_53", print_hash_value);
    transparent_crc(p_1486->g_77, "p_1486->g_77", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1486->g_90[i][j], "p_1486->g_90[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1486->g_112[i], "p_1486->g_112[i]", print_hash_value);

    }
    transparent_crc(p_1486->g_114, "p_1486->g_114", print_hash_value);
    transparent_crc(p_1486->g_121, "p_1486->g_121", print_hash_value);
    transparent_crc(p_1486->g_133, "p_1486->g_133", print_hash_value);
    transparent_crc(p_1486->g_142, "p_1486->g_142", print_hash_value);
    transparent_crc(p_1486->g_165, "p_1486->g_165", print_hash_value);
    transparent_crc(p_1486->g_208, "p_1486->g_208", print_hash_value);
    transparent_crc(p_1486->g_209, "p_1486->g_209", print_hash_value);
    transparent_crc(p_1486->g_246, "p_1486->g_246", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1486->g_255[i], "p_1486->g_255[i]", print_hash_value);

    }
    transparent_crc(p_1486->g_257, "p_1486->g_257", print_hash_value);
    transparent_crc(p_1486->g_276, "p_1486->g_276", print_hash_value);
    transparent_crc(p_1486->g_278, "p_1486->g_278", print_hash_value);
    transparent_crc(p_1486->g_294, "p_1486->g_294", print_hash_value);
    transparent_crc(p_1486->g_296, "p_1486->g_296", print_hash_value);
    transparent_crc(p_1486->g_343, "p_1486->g_343", print_hash_value);
    transparent_crc(p_1486->g_389, "p_1486->g_389", print_hash_value);
    transparent_crc(p_1486->g_394, "p_1486->g_394", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1486->g_395[i][j], "p_1486->g_395[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1486->g_398[i], "p_1486->g_398[i]", print_hash_value);

    }
    transparent_crc(p_1486->g_413, "p_1486->g_413", print_hash_value);
    transparent_crc(p_1486->g_488, "p_1486->g_488", print_hash_value);
    transparent_crc(p_1486->g_489, "p_1486->g_489", print_hash_value);
    transparent_crc(p_1486->g_510, "p_1486->g_510", print_hash_value);
    transparent_crc(p_1486->g_754, "p_1486->g_754", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1486->g_781[i], "p_1486->g_781[i]", print_hash_value);

    }
    transparent_crc(p_1486->g_803, "p_1486->g_803", print_hash_value);
    transparent_crc(p_1486->g_811, "p_1486->g_811", print_hash_value);
    transparent_crc(p_1486->g_869, "p_1486->g_869", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1486->g_908[i][j][k], "p_1486->g_908[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1486->g_1026, "p_1486->g_1026", print_hash_value);
    transparent_crc(p_1486->g_1221, "p_1486->g_1221", print_hash_value);
    transparent_crc(p_1486->g_1424, "p_1486->g_1424", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 54; i++)
            transparent_crc(p_1486->g_special_values[i + 54 * get_linear_group_id()], "p_1486->g_special_values[i + 54 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 54; i++)
            transparent_crc(p_1486->l_special_values[i], "p_1486->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
