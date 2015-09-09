// --atomics 41 ---fake_divergence -g 82,76,1 -l 1,76,1
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


// Seed: 70

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2;
    volatile int32_t g_3;
    volatile int32_t g_4;
    volatile int32_t g_5;
    int32_t g_6;
    volatile int32_t g_9;
    int32_t g_10;
    volatile int32_t g_13;
    volatile int32_t g_14;
    volatile int32_t g_15;
    volatile int32_t g_16[9];
    int32_t g_17;
    int32_t g_22;
    uint8_t g_71;
    int8_t g_81;
    uint16_t g_82;
    uint64_t g_95;
    volatile uint8_t **g_102;
    uint32_t g_136[6];
    int32_t g_140;
    int32_t g_143;
    int32_t g_147;
    uint8_t g_150;
    volatile uint64_t g_196;
    volatile uint64_t *g_195;
    int16_t g_202;
    uint64_t g_203;
    int32_t *g_219;
    uint8_t *g_257;
    uint8_t **g_256;
    uint64_t g_263;
    uint32_t g_269;
    int64_t g_280;
    int8_t g_288;
    int32_t g_313;
    uint8_t g_314;
    uint16_t g_351;
    int32_t g_352;
    uint32_t g_366;
    int32_t g_370;
    int32_t g_383;
    uint16_t g_386[6];
    int32_t g_417;
    int64_t *g_428;
    uint16_t *g_464[6][6];
    uint8_t g_508[3];
    int32_t * volatile g_516;
    int32_t * volatile g_523;
    uint8_t g_588;
    uint64_t *g_645;
    int64_t **g_701;
    uint8_t ** volatile * volatile g_715;
    uint8_t ** volatile * volatile *g_714;
    uint8_t ***g_749;
    uint8_t ****g_748;
    volatile uint32_t g_777;
    volatile uint32_t * volatile g_776;
    uint32_t g_779;
    int32_t **g_841;
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
int32_t  func_1(struct S0 * p_868);
int32_t * func_25(int16_t  p_26, int32_t  p_27, int32_t * p_28, int32_t * p_29, int32_t * p_30, struct S0 * p_868);
int32_t * func_31(uint32_t  p_32, int32_t * p_33, int32_t * p_34, int32_t * p_35, uint16_t  p_36, struct S0 * p_868);
int32_t * func_38(int32_t * p_39, struct S0 * p_868);
int32_t * func_40(int64_t  p_41, int16_t  p_42, struct S0 * p_868);
int32_t * func_43(int32_t * p_44, int32_t * p_45, struct S0 * p_868);
int32_t * func_46(uint64_t  p_47, int64_t  p_48, struct S0 * p_868);
int32_t * func_51(uint32_t  p_52, int32_t  p_53, int32_t  p_54, int32_t * p_55, int32_t * p_56, struct S0 * p_868);
uint16_t  func_59(int32_t  p_60, int32_t * p_61, int32_t * p_62, uint64_t  p_63, struct S0 * p_868);
int32_t * func_65(int8_t  p_66, int32_t * p_67, int32_t  p_68, struct S0 * p_868);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_868->g_6 p_868->g_10 p_868->g_17 p_868->g_14 p_868->g_219 p_868->g_147 p_868->g_841 p_868->g_280
 * writes: p_868->g_6 p_868->g_10 p_868->g_17 p_868->g_22 p_868->g_147
 */
int32_t  func_1(struct S0 * p_868)
{ /* block id: 4 */
    int32_t *l_519 = &p_868->g_147;
    int32_t *l_866 = &p_868->g_6;
    int32_t *l_867 = (void*)0;
    for (p_868->g_6 = 0; (p_868->g_6 >= (-16)); p_868->g_6 = safe_sub_func_uint16_t_u_u(p_868->g_6, 4))
    { /* block id: 7 */
        int64_t l_368 = 0x590239DE05841956L;
        int32_t *l_371 = (void*)0;
        for (p_868->g_10 = 12; (p_868->g_10 <= (-22)); p_868->g_10--)
        { /* block id: 10 */
            int32_t l_37 = (-10L);
            int32_t *l_865 = &p_868->g_417;
            for (p_868->g_17 = 5; (p_868->g_17 == 19); p_868->g_17 = safe_add_func_int32_t_s_s(p_868->g_17, 5))
            { /* block id: 13 */
                return p_868->g_14;
            }
            for (p_868->g_17 = 0; (p_868->g_17 <= 23); p_868->g_17++)
            { /* block id: 18 */
                uint64_t l_367[2];
                int32_t *l_369 = &p_868->g_370;
                int32_t **l_418 = &l_371;
                int32_t *l_419 = &p_868->g_22;
                uint64_t *l_420 = &p_868->g_95;
                int i;
                for (i = 0; i < 2; i++)
                    l_367[i] = 18446744073709551610UL;
                for (p_868->g_22 = 0; (p_868->g_22 < (-11)); p_868->g_22--)
                { /* block id: 21 */
                    if (p_868->g_17)
                        break;
                }
            }
        }
        (**p_868->g_841) = (*p_868->g_219);
        return (*l_519);
    }
    return p_868->g_280;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_25(int16_t  p_26, int32_t  p_27, int32_t * p_28, int32_t * p_29, int32_t * p_30, struct S0 * p_868)
{ /* block id: 429 */
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_868->g_10 p_868->g_195 p_868->g_196 p_868->g_219 p_868->g_147 p_868->g_6 p_868->g_81 p_868->g_523
 * writes: p_868->g_841 p_868->g_22 p_868->g_202 p_868->g_81
 */
int32_t * func_31(uint32_t  p_32, int32_t * p_33, int32_t * p_34, int32_t * p_35, uint16_t  p_36, struct S0 * p_868)
{ /* block id: 419 */
    int32_t **l_840 = &p_868->g_219;
    int32_t ***l_839[3];
    int32_t l_842 = (-5L);
    int64_t l_843 = 0x430D4A08712375C3L;
    uint32_t l_844 = 4294967295UL;
    int16_t *l_857 = &p_868->g_202;
    uint64_t **l_861[10][4][4] = {{{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645}},{{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645}},{{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645}},{{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645}},{{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645}},{{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645}},{{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645}},{{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645}},{{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645}},{{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645},{&p_868->g_645,&p_868->g_645,&p_868->g_645,&p_868->g_645}}};
    int64_t *l_862 = &l_843;
    int8_t *l_863 = (void*)0;
    int8_t *l_864 = &p_868->g_81;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_839[i] = &l_840;
    (*p_34) = (((p_868->g_841 = &p_33) != ((*p_33) , &p_868->g_516)) , l_842);
    l_844--;
    (*p_868->g_523) = ((p_32 != (((*l_864) &= (safe_mod_func_int16_t_s_s((safe_div_func_int16_t_s_s((((*p_868->g_195) > (~((*l_862) = (~(safe_div_func_uint8_t_u_u(((safe_add_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((((*l_857) = p_32) , 1L), (((p_36 >= (safe_add_func_uint8_t_u_u((safe_unary_minus_func_int64_t_s(((l_861[8][1][0] == l_861[8][1][0]) <= ((p_32 <= (**l_840)) & 0x63BC848C2078B1BEL)))), 255UL))) == p_32) < (**l_840)))), p_32)) && p_32), p_868->g_6)))))) , p_32), p_32)), p_36))) ^ p_32)) <= (**l_840));
    return p_34;
}


/* ------------------------------------------ */
/* 
 * reads : p_868->g_256 p_868->g_257 p_868->g_71 p_868->g_147 p_868->g_22 p_868->g_588 p_868->g_417 p_868->g_140 p_868->g_5 p_868->g_136 p_868->g_351 p_868->g_4 p_868->g_714 p_868->g_748 p_868->g_313 p_868->g_508 p_868->g_749 p_868->g_776 p_868->g_81 p_868->g_779 p_868->g_16 p_868->g_17 p_868->g_386 p_868->g_196 p_868->g_645 p_868->g_203 p_868->g_428 p_868->g_263 p_868->g_10 p_868->g_523 p_868->g_370
 * writes: p_868->g_645 p_868->g_22 p_868->g_71 p_868->g_588 p_868->g_417 p_868->g_140 p_868->g_351 p_868->g_386 p_868->g_701 p_868->g_257 p_868->g_202 p_868->g_366 p_868->g_748 p_868->g_136 p_868->g_370 p_868->g_288 p_868->g_779 p_868->g_147
 */
int32_t * func_38(int32_t * p_39, struct S0 * p_868)
{ /* block id: 313 */
    int16_t l_641 = (-1L);
    uint64_t *l_642 = &p_868->g_203;
    uint64_t **l_643 = (void*)0;
    uint64_t **l_644[7][4] = {{&l_642,&l_642,&l_642,&l_642},{&l_642,&l_642,&l_642,&l_642},{&l_642,&l_642,&l_642,&l_642},{&l_642,&l_642,&l_642,&l_642},{&l_642,&l_642,&l_642,&l_642},{&l_642,&l_642,&l_642,&l_642},{&l_642,&l_642,&l_642,&l_642}};
    uint32_t *l_658[4] = {&p_868->g_269,&p_868->g_269,&p_868->g_269,&p_868->g_269};
    uint32_t **l_659 = (void*)0;
    uint32_t **l_660 = &l_658[2];
    int32_t l_663 = (-1L);
    int32_t l_667 = (-1L);
    int32_t l_668 = 0x40FC5500L;
    int32_t l_669 = (-5L);
    uint32_t l_670 = 1UL;
    int32_t l_673 = (-3L);
    int32_t l_674[10] = {0x632C1E88L,0x70051136L,0L,0x70051136L,0x632C1E88L,0x632C1E88L,0x70051136L,0L,0x70051136L,0x632C1E88L};
    uint8_t l_675 = 0xCDL;
    int64_t **l_683 = &p_868->g_428;
    uint64_t l_836 = 0x6E76C9CE5E4824E7L;
    int i, j;
    (*p_39) = ((safe_mod_func_int32_t_s_s(((((safe_lshift_func_uint16_t_u_s(((l_641 , (&p_868->g_196 == (p_868->g_645 = l_642))) , (l_641 , FAKE_DIVERGE(p_868->group_0_offset, get_group_id(0), 10))), l_641)) | 0xCAL) & (safe_add_func_uint8_t_u_u((**p_868->g_256), ((safe_sub_func_uint16_t_u_u(l_641, (l_641 > l_641))) < l_641)))) >= p_868->g_147), 0x74E3C8FFL)) <= 0xC3EB5C79L);
    if ((safe_rshift_func_uint16_t_u_u(((((*p_39) &= 0L) , ((**p_868->g_256) = l_641)) >= l_641), ((l_641 != (p_868->g_588--)) == ((safe_lshift_func_uint16_t_u_s((((*l_660) = l_658[3]) != (void*)0), 15)) >= l_641)))))
    { /* block id: 320 */
        int32_t *l_661 = &p_868->g_417;
        int32_t l_662[1][8];
        int32_t *l_664 = &l_663;
        int32_t *l_665 = (void*)0;
        int32_t *l_666[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int16_t *l_678 = &p_868->g_202;
        uint8_t ***l_717 = (void*)0;
        uint8_t ****l_716 = &l_717;
        int32_t l_788 = 0x0E7B6BF9L;
        int32_t l_789 = 1L;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 8; j++)
                l_662[i][j] = (-1L);
        }
        --l_670;
        ++l_675;
        (*l_661) ^= ((~(l_678 != &p_868->g_202)) & l_667);
        for (p_868->g_140 = 0; (p_868->g_140 <= 5); p_868->g_140 += 1)
        { /* block id: 326 */
            int64_t ***l_684 = &l_683;
            uint16_t *l_685 = &p_868->g_351;
            uint16_t *l_686 = &p_868->g_386[2];
            uint8_t ***l_688 = &p_868->g_256;
            uint8_t ****l_687 = &l_688;
            int64_t l_787 = (-1L);
            int i;
            l_674[(p_868->g_140 + 1)] = l_674[(p_868->g_140 + 2)];
            if (((safe_add_func_int32_t_s_s(((l_674[7] , ((safe_mod_func_uint8_t_u_u((((p_868->g_5 < ((p_868->g_136[1] ^ (((+((((*l_684) = ((0x25DA7DB1L <= p_868->g_22) , ((l_674[(p_868->g_140 + 1)] = l_663) , l_683))) == (void*)0) , ((*l_686) = (+((*l_685) ^= (FAKE_DIVERGE(p_868->group_1_offset, get_group_id(1), 10) & GROUP_DIVERGE(1, 1))))))) >= l_667) , 255UL)) , l_674[(p_868->g_140 + 2)])) , (void*)0) != l_687), (-8L))) <= l_675)) | GROUP_DIVERGE(0, 1)), 0x0AB84146L)) && l_667))
            { /* block id: 332 */
                int32_t l_691 = 0x6F167450L;
                int64_t **l_700 = &p_868->g_428;
                int64_t l_702 = 0x0B9254E20B2C11E3L;
                uint32_t l_707 = 1UL;
                l_674[(p_868->g_140 + 2)] ^= ((*l_661) = (+(*p_39)));
                p_868->g_701 = (l_683 = (((safe_add_func_uint8_t_u_u(((*l_664) == l_691), 0x0AL)) || (safe_rshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_u((l_691 , (0x55439D93L > p_868->g_4)), 8)), (safe_mod_func_int32_t_s_s(l_669, (safe_sub_func_uint32_t_u_u((l_691 , ((l_673 | l_674[7]) , FAKE_DIVERGE(p_868->group_2_offset, get_group_id(2), 10))), (*p_39)))))))) , l_700));
                if (l_702)
                    break;
                l_667 = (l_702 , (safe_rshift_func_uint16_t_u_u((&l_675 != ((*p_868->g_256) = &l_675)), (safe_sub_func_int32_t_s_s(l_707, (safe_div_func_int64_t_s_s(((((((*l_678) = (0x5B378FD2L >= 0xF890A241L)) ^ (((((void*)0 != &p_868->g_464[0][5]) , (((!(safe_add_func_int64_t_s_s(l_707, FAKE_DIVERGE(p_868->local_1_offset, get_local_id(1), 10)))) || 0L) & 0x43L)) , p_868->g_714) == l_716)) , 0x203A25C4AA4B2639L) || 0UL) == 0x46B9L), l_670)))))));
            }
            else
            { /* block id: 341 */
                uint8_t ****l_747 = &l_688;
                int32_t l_775 = 0x16AD3868L;
                if ((atomic_inc(&p_868->g_atomic_input[41 * get_linear_group_id() + 10]) == 3))
                { /* block id: 343 */
                    int32_t l_718[3];
                    int32_t l_723 = 0x4DBB8590L;
                    uint32_t l_727[4][1] = {{4294967292UL},{4294967292UL},{4294967292UL},{4294967292UL}};
                    int16_t l_728 = 0x4913L;
                    uint32_t l_729[7][8][4] = {{{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L}},{{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L}},{{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L}},{{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L}},{{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L}},{{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L}},{{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L},{0x2D395BF0L,1UL,0x820411C5L,0x97E50DF6L}}};
                    uint16_t l_739 = 0x9E7BL;
                    uint16_t l_740 = 1UL;
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_718[i] = 8L;
                    for (l_718[0] = 0; (l_718[0] <= 5); l_718[0] += 1)
                    { /* block id: 346 */
                        int32_t *l_719 = (void*)0;
                        int32_t l_721 = 0L;
                        int32_t *l_720[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int32_t l_722 = 0x5C359F98L;
                        int i;
                        l_720[8] = l_719;
                        l_722 |= 0x4B6C7CDBL;
                    }
                    if (l_723)
                    { /* block id: 350 */
                        uint8_t l_724[8] = {249UL,9UL,249UL,249UL,9UL,249UL,249UL,9UL};
                        int i;
                        l_723 &= l_724[0];
                    }
                    else
                    { /* block id: 352 */
                        uint8_t l_725 = 0xC0L;
                        int32_t l_726 = 0x0529FD75L;
                        l_723 = l_725;
                        l_723 = (l_718[0] = l_726);
                    }
                    if (((l_727[2][0] = 0x2B078644L) , (l_729[5][5][3] = l_728)))
                    { /* block id: 359 */
                        int8_t l_730 = 0x1BL;
                        uint8_t l_731 = 0x5EL;
                        int16_t l_732 = 0x4A15L;
                        int32_t l_735[9][8] = {{(-9L),0x45A80242L,1L,0x685E8823L,0x69B1045FL,2L,(-1L),1L},{(-9L),0x45A80242L,1L,0x685E8823L,0x69B1045FL,2L,(-1L),1L},{(-9L),0x45A80242L,1L,0x685E8823L,0x69B1045FL,2L,(-1L),1L},{(-9L),0x45A80242L,1L,0x685E8823L,0x69B1045FL,2L,(-1L),1L},{(-9L),0x45A80242L,1L,0x685E8823L,0x69B1045FL,2L,(-1L),1L},{(-9L),0x45A80242L,1L,0x685E8823L,0x69B1045FL,2L,(-1L),1L},{(-9L),0x45A80242L,1L,0x685E8823L,0x69B1045FL,2L,(-1L),1L},{(-9L),0x45A80242L,1L,0x685E8823L,0x69B1045FL,2L,(-1L),1L},{(-9L),0x45A80242L,1L,0x685E8823L,0x69B1045FL,2L,(-1L),1L}};
                        int32_t *l_734 = &l_735[1][2];
                        int32_t **l_733 = &l_734;
                        int i, j;
                        l_733 = ((l_732 |= (GROUP_DIVERGE(1, 1) , (l_731 &= (l_730 , 18446744073709551615UL)))) , (void*)0);
                    }
                    else
                    { /* block id: 363 */
                        uint64_t l_736 = 0x13FDBABF852652BFL;
                        ++l_736;
                    }
                    l_740 ^= (l_739 = 1L);
                    unsigned int result = 0;
                    int l_718_i0;
                    for (l_718_i0 = 0; l_718_i0 < 3; l_718_i0++) {
                        result += l_718[l_718_i0];
                    }
                    result += l_723;
                    int l_727_i0, l_727_i1;
                    for (l_727_i0 = 0; l_727_i0 < 4; l_727_i0++) {
                        for (l_727_i1 = 0; l_727_i1 < 1; l_727_i1++) {
                            result += l_727[l_727_i0][l_727_i1];
                        }
                    }
                    result += l_728;
                    int l_729_i0, l_729_i1, l_729_i2;
                    for (l_729_i0 = 0; l_729_i0 < 7; l_729_i0++) {
                        for (l_729_i1 = 0; l_729_i1 < 8; l_729_i1++) {
                            for (l_729_i2 = 0; l_729_i2 < 4; l_729_i2++) {
                                result += l_729[l_729_i0][l_729_i1][l_729_i2];
                            }
                        }
                    }
                    result += l_739;
                    result += l_740;
                    atomic_add(&p_868->g_special_values[41 * get_linear_group_id() + 10], result);
                }
                else
                { /* block id: 368 */
                    (1 + 1);
                }
                for (p_868->g_366 = 0; (p_868->g_366 <= 5); p_868->g_366 += 1)
                { /* block id: 373 */
                    uint8_t *****l_750 = &p_868->g_748;
                    uint32_t *l_751 = (void*)0;
                    int32_t l_754 = 0x75E180B2L;
                    int32_t *l_769 = (void*)0;
                    int32_t *l_770 = &p_868->g_370;
                    int64_t ****l_771 = &l_684;
                    int64_t ***l_773 = &l_683;
                    int64_t ****l_772[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int64_t ***l_774 = (void*)0;
                    int8_t *l_778[4][3][8] = {{{(void*)0,(void*)0,&p_868->g_288,&p_868->g_81,&p_868->g_288,&p_868->g_288,&p_868->g_288,&p_868->g_288},{(void*)0,(void*)0,&p_868->g_288,&p_868->g_81,&p_868->g_288,&p_868->g_288,&p_868->g_288,&p_868->g_288},{(void*)0,(void*)0,&p_868->g_288,&p_868->g_81,&p_868->g_288,&p_868->g_288,&p_868->g_288,&p_868->g_288}},{{(void*)0,(void*)0,&p_868->g_288,&p_868->g_81,&p_868->g_288,&p_868->g_288,&p_868->g_288,&p_868->g_288},{(void*)0,(void*)0,&p_868->g_288,&p_868->g_81,&p_868->g_288,&p_868->g_288,&p_868->g_288,&p_868->g_288},{(void*)0,(void*)0,&p_868->g_288,&p_868->g_81,&p_868->g_288,&p_868->g_288,&p_868->g_288,&p_868->g_288}},{{(void*)0,(void*)0,&p_868->g_288,&p_868->g_81,&p_868->g_288,&p_868->g_288,&p_868->g_288,&p_868->g_288},{(void*)0,(void*)0,&p_868->g_288,&p_868->g_81,&p_868->g_288,&p_868->g_288,&p_868->g_288,&p_868->g_288},{(void*)0,(void*)0,&p_868->g_288,&p_868->g_81,&p_868->g_288,&p_868->g_288,&p_868->g_288,&p_868->g_288}},{{(void*)0,(void*)0,&p_868->g_288,&p_868->g_81,&p_868->g_288,&p_868->g_288,&p_868->g_288,&p_868->g_288},{(void*)0,(void*)0,&p_868->g_288,&p_868->g_81,&p_868->g_288,&p_868->g_288,&p_868->g_288,&p_868->g_288},{(void*)0,(void*)0,&p_868->g_288,&p_868->g_81,&p_868->g_288,&p_868->g_288,&p_868->g_288,&p_868->g_288}}};
                    int i, j, k;
                    p_868->g_779 |= (l_674[(p_868->g_140 + 2)] = (safe_add_func_int8_t_s_s((safe_div_func_int32_t_s_s((((!((p_868->g_288 = (p_39 != ((safe_rshift_func_int16_t_s_s((((p_868->g_136[1] = (l_747 == ((*l_750) = p_868->g_748))) == (safe_sub_func_int32_t_s_s(((*l_664) = l_754), (safe_add_func_uint8_t_u_u(((***p_868->g_749) = (((+((safe_div_func_int64_t_s_s(((p_868->g_4 > ((safe_lshift_func_uint8_t_u_s(((safe_rshift_func_uint16_t_u_s(((safe_lshift_func_int8_t_s_u(p_868->g_313, 4)) & (safe_rshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_u(((l_675 , ((((*l_770) = (-8L)) , (l_774 = ((*l_771) = l_684))) == &l_683)) & l_775), 2)), l_674[0]))), p_868->g_508[1])) > p_868->g_351), 7)) < 8UL)) && 0x50A1L), 0x47B4D9CAE7B4303FL)) >= 0x55L)) | GROUP_DIVERGE(1, 1)) , 0xA8L)), l_674[(p_868->g_140 + 2)]))))) < (*l_661)), 9)) , p_868->g_776))) != 0UL)) , p_868->g_5) | (*p_39)), p_868->g_147)), p_868->g_81)));
                }
                for (l_668 = 2; (l_668 <= 8); l_668 += 1)
                { /* block id: 387 */
                    int32_t **l_780 = &l_661;
                    (*l_780) = (void*)0;
                    return p_39;
                }
            }
            (*l_664) &= ((((*l_678) = ((((((&p_868->g_202 == (void*)0) & (safe_rshift_func_uint8_t_u_u(l_674[(p_868->g_140 + 1)], (safe_div_func_uint16_t_u_u(((*l_686) = ((((l_674[(p_868->g_140 + 1)] || 0x03L) & (safe_lshift_func_uint16_t_u_s((&p_868->g_136[1] != p_39), 7))) , ((***l_687) = (**l_688))) == (void*)0)), l_787))))) | p_868->g_16[7]) >= 5L) | l_788) != l_789)) >= 0x52E2L) && p_868->g_17);
            for (p_868->g_351 = 0; (p_868->g_351 <= 5); p_868->g_351 += 1)
            { /* block id: 398 */
                int16_t l_790 = 6L;
                int32_t l_796 = 0x312CD257L;
                (*p_39) &= 0x5217BA52L;
                p_868->g_147 |= (0x2C64B1E0L >= (((l_790 = (*l_661)) | (safe_mod_func_uint32_t_u_u((safe_unary_minus_func_int64_t_s(((*p_39) >= ((l_669 &= (++(*l_686))) > l_674[(p_868->g_140 + 2)])))), l_796))) < (((safe_rshift_func_int16_t_s_u((((safe_rshift_func_int16_t_s_u((safe_sub_func_int64_t_s_s((safe_rshift_func_uint8_t_u_s((FAKE_DIVERGE(p_868->local_2_offset, get_local_id(2), 10) || ((((l_796 < (safe_lshift_func_uint16_t_u_s((((*l_678) = (GROUP_DIVERGE(1, 1) < p_868->g_196)) != (safe_mod_func_int8_t_s_s((l_796 < l_674[(p_868->g_140 + 1)]), l_663))), 6))) != p_868->g_22) ^ 0x7C7F2E73L) & l_796)), p_868->g_136[1])), l_667)), l_673)) >= 0x09199A28L) >= (*p_868->g_645)), 15)) , l_796) , 1UL)));
            }
        }
    }
    else
    { /* block id: 407 */
        int16_t l_811 = 0x26FBL;
        int16_t *l_812 = &p_868->g_202;
        int32_t l_815[7] = {(-10L),(-7L),(-10L),(-10L),(-7L),(-10L),(-10L)};
        int i;
        (*p_868->g_523) = ((safe_sub_func_int16_t_s_s(((*l_812) = (l_811 = (-10L))), (((l_668 != p_868->g_417) || (safe_mul_func_uint8_t_u_u((l_815[6] <= (safe_lshift_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s(((65535UL || (safe_lshift_func_uint8_t_u_s((safe_mul_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u((*p_868->g_645), ((((GROUP_DIVERGE(2, 1) & ((((void*)0 == (*l_683)) , l_815[6]) == (-7L))) & 0x5B4FF313L) & l_669) < l_815[0]))), l_670)), 0))) == (*p_39)), p_868->g_263)) <= 7L), 14))), 1L))) ^ (-1L)))) && p_868->g_10);
        for (p_868->g_370 = 0; (p_868->g_370 < 9); p_868->g_370 = safe_add_func_uint8_t_u_u(p_868->g_370, 5))
        { /* block id: 413 */
            int32_t *l_828 = &l_663;
            int32_t *l_829 = (void*)0;
            int32_t *l_830 = &l_815[0];
            int32_t *l_831 = &p_868->g_22;
            int32_t *l_832 = &l_674[0];
            int32_t *l_833 = &l_815[0];
            int32_t *l_834 = (void*)0;
            int32_t *l_835[1][10][7] = {{{&p_868->g_17,&p_868->g_417,&p_868->g_10,(void*)0,&l_669,&p_868->g_417,&l_674[6]},{&p_868->g_17,&p_868->g_417,&p_868->g_10,(void*)0,&l_669,&p_868->g_417,&l_674[6]},{&p_868->g_17,&p_868->g_417,&p_868->g_10,(void*)0,&l_669,&p_868->g_417,&l_674[6]},{&p_868->g_17,&p_868->g_417,&p_868->g_10,(void*)0,&l_669,&p_868->g_417,&l_674[6]},{&p_868->g_17,&p_868->g_417,&p_868->g_10,(void*)0,&l_669,&p_868->g_417,&l_674[6]},{&p_868->g_17,&p_868->g_417,&p_868->g_10,(void*)0,&l_669,&p_868->g_417,&l_674[6]},{&p_868->g_17,&p_868->g_417,&p_868->g_10,(void*)0,&l_669,&p_868->g_417,&l_674[6]},{&p_868->g_17,&p_868->g_417,&p_868->g_10,(void*)0,&l_669,&p_868->g_417,&l_674[6]},{&p_868->g_17,&p_868->g_417,&p_868->g_10,(void*)0,&l_669,&p_868->g_417,&l_674[6]},{&p_868->g_17,&p_868->g_417,&p_868->g_10,(void*)0,&l_669,&p_868->g_417,&l_674[6]}}};
            int i, j, k;
            l_836--;
        }
        (*p_39) = 1L;
    }
    return p_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_868->g_313 p_868->g_523 p_868->g_22
 * writes: p_868->g_313 p_868->g_22
 */
int32_t * func_40(int64_t  p_41, int16_t  p_42, struct S0 * p_868)
{ /* block id: 254 */
    int32_t l_522 = 0x0CAFEE90L;
    int32_t l_538 = 0L;
    uint32_t l_540[7] = {0xB26C7D90L,0xACEAB802L,0xB26C7D90L,0xB26C7D90L,0xACEAB802L,0xB26C7D90L,0xB26C7D90L};
    uint32_t l_567 = 5UL;
    int16_t l_568 = 6L;
    int64_t **l_574 = &p_868->g_428;
    uint8_t **l_598 = &p_868->g_257;
    int i;
    for (p_868->g_313 = 26; (p_868->g_313 != 12); --p_868->g_313)
    { /* block id: 257 */
        int16_t l_532 = 0L;
        uint64_t *l_537 = &p_868->g_203;
        int32_t *l_566 = &p_868->g_10;
        uint32_t l_571 = 0x1048EE19L;
        uint32_t *l_625 = &l_540[1];
        uint32_t *l_634 = &p_868->g_136[1];
        uint32_t l_635[1][8][3] = {{{0xA34AC26EL,4294967295UL,4294967295UL},{0xA34AC26EL,4294967295UL,4294967295UL},{0xA34AC26EL,4294967295UL,4294967295UL},{0xA34AC26EL,4294967295UL,4294967295UL},{0xA34AC26EL,4294967295UL,4294967295UL},{0xA34AC26EL,4294967295UL,4294967295UL},{0xA34AC26EL,4294967295UL,4294967295UL},{0xA34AC26EL,4294967295UL,4294967295UL}}};
        int32_t *l_636 = &p_868->g_417;
        int i, j, k;
        (*p_868->g_523) &= l_522;
    }
    return &p_868->g_22;
}


/* ------------------------------------------ */
/* 
 * reads : p_868->g_219 p_868->g_10 p_868->g_147 p_868->g_6 p_868->g_516
 * writes: p_868->g_417
 */
int32_t * func_43(int32_t * p_44, int32_t * p_45, struct S0 * p_868)
{ /* block id: 248 */
    volatile int32_t *l_518[9] = {&p_868->g_4,&p_868->g_4,&p_868->g_4,&p_868->g_4,&p_868->g_4,&p_868->g_4,&p_868->g_4,&p_868->g_4,&p_868->g_4};
    volatile int32_t **l_517 = &l_518[0];
    int i;
    (*p_868->g_516) = (*p_868->g_219);
    (*l_517) = &p_868->g_16[0];
    return p_45;
}


/* ------------------------------------------ */
/* 
 * reads : p_868->g_22 p_868->g_256 p_868->g_257 p_868->g_383 p_868->g_288 p_868->g_386 p_868->g_263 p_868->g_370 p_868->g_82 p_868->g_219 p_868->g_147 p_868->g_6 p_868->g_81 p_868->g_417 p_868->g_195 p_868->g_196 p_868->g_4 p_868->g_202 p_868->g_71 p_868->g_16 p_868->g_150
 * writes: p_868->g_428 p_868->g_314 p_868->g_386 p_868->g_81 p_868->g_288 p_868->g_202 p_868->g_71 p_868->g_417 p_868->g_269 p_868->g_464 p_868->g_263 p_868->g_22 p_868->g_3 p_868->g_147 p_868->g_508 p_868->g_370 p_868->g_219
 */
int32_t * func_46(uint64_t  p_47, int64_t  p_48, struct S0 * p_868)
{ /* block id: 198 */
    uint32_t l_421 = 0UL;
    int64_t *l_426 = &p_868->g_280;
    int64_t **l_427[7][4][9] = {{{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426}},{{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426}},{{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426}},{{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426}},{{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426}},{{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426}},{{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426},{(void*)0,&l_426,&l_426,&l_426,&l_426,(void*)0,&l_426,&l_426,&l_426}}};
    uint32_t *l_429 = &p_868->g_136[2];
    int32_t l_430 = 2L;
    int32_t l_431 = 3L;
    int32_t *l_432[9] = {&p_868->g_147,&p_868->g_147,&p_868->g_147,&p_868->g_147,&p_868->g_147,&p_868->g_147,&p_868->g_147,&p_868->g_147,&p_868->g_147};
    uint32_t *l_448 = &l_421;
    uint32_t *l_449 = &p_868->g_269;
    uint8_t ***l_451 = &p_868->g_256;
    uint8_t ****l_450 = &l_451;
    int16_t *l_452 = &p_868->g_202;
    int i, j, k;
    l_432[8] = func_51(l_421, ((!(0xEEL == 0x0FL)) ^ (((safe_rshift_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((l_430 = ((((((p_868->g_428 = l_426) == (void*)0) == p_868->g_22) , l_429) != &p_868->g_136[0]) > ((((+l_421) || 1UL) , (void*)0) != (*p_868->g_256)))) != 1UL), l_431)), p_868->g_383)) ^ FAKE_DIVERGE(p_868->global_2_offset, get_global_id(2), 10)) && p_47)), p_868->g_288, l_429, l_429, p_868);
    if ((safe_sub_func_uint64_t_u_u(((((safe_add_func_int32_t_s_s((GROUP_DIVERGE(1, 1) , (p_47 >= ((*l_452) |= ((p_868->g_288 > (((safe_div_func_uint8_t_u_u((((((*l_450) = (((*l_449) = ((*l_448) ^= (safe_add_func_uint32_t_u_u(((p_47 <= (*p_868->g_195)) && (safe_unary_minus_func_uint16_t_u((((safe_lshift_func_uint8_t_u_u((safe_add_func_int16_t_s_s((0x35A5L | (((void*)0 == l_432[8]) || (safe_add_func_uint64_t_u_u(0x88F5D08C59193DCAL, ((p_868->g_4 == 0UL) > 255UL))))), p_48)), 5)) == p_868->g_386[2]) <= p_47)))), 4294967286UL)))) , &p_868->g_256)) != &p_868->g_256) , &l_430) == (void*)0), 2L)) , &l_430) == (void*)0)) > FAKE_DIVERGE(p_868->global_1_offset, get_global_id(1), 10))))), (*p_868->g_219))) , p_47) && 0xCFL) , (*p_868->g_195)), 0x2182F89448A1BEB2L)))
    { /* block id: 206 */
        uint16_t *l_465 = (void*)0;
        int32_t l_468 = 0x1AFF9783L;
        int32_t l_484[4][2][9] = {{{0x24FE6C59L,0x516D5F1FL,0x4DF05892L,(-4L),0x4DF05892L,0x516D5F1FL,0x24FE6C59L,0x73B8F1B8L,0x6AD12F69L},{0x24FE6C59L,0x516D5F1FL,0x4DF05892L,(-4L),0x4DF05892L,0x516D5F1FL,0x24FE6C59L,0x73B8F1B8L,0x6AD12F69L}},{{0x24FE6C59L,0x516D5F1FL,0x4DF05892L,(-4L),0x4DF05892L,0x516D5F1FL,0x24FE6C59L,0x73B8F1B8L,0x6AD12F69L},{0x24FE6C59L,0x516D5F1FL,0x4DF05892L,(-4L),0x4DF05892L,0x516D5F1FL,0x24FE6C59L,0x73B8F1B8L,0x6AD12F69L}},{{0x24FE6C59L,0x516D5F1FL,0x4DF05892L,(-4L),0x4DF05892L,0x516D5F1FL,0x24FE6C59L,0x73B8F1B8L,0x6AD12F69L},{0x24FE6C59L,0x516D5F1FL,0x4DF05892L,(-4L),0x4DF05892L,0x516D5F1FL,0x24FE6C59L,0x73B8F1B8L,0x6AD12F69L}},{{0x24FE6C59L,0x516D5F1FL,0x4DF05892L,(-4L),0x4DF05892L,0x516D5F1FL,0x24FE6C59L,0x73B8F1B8L,0x6AD12F69L},{0x24FE6C59L,0x516D5F1FL,0x4DF05892L,(-4L),0x4DF05892L,0x516D5F1FL,0x24FE6C59L,0x73B8F1B8L,0x6AD12F69L}}};
        int32_t *l_513 = &p_868->g_147;
        int i, j, k;
        for (p_868->g_202 = 0; (p_868->g_202 >= 18); p_868->g_202 = safe_add_func_int32_t_s_s(p_868->g_202, 2))
        { /* block id: 209 */
            uint16_t *l_463 = &p_868->g_351;
            uint16_t **l_462 = &l_463;
            int32_t l_483 = 0x76754519L;
            uint32_t l_500 = 0UL;
            int64_t **l_501 = &l_426;
            uint32_t *l_505[2];
            int i;
            for (i = 0; i < 2; i++)
                l_505[i] = &p_868->g_366;
            for (p_868->g_417 = 0; (p_868->g_417 >= 16); p_868->g_417 = safe_add_func_uint8_t_u_u(p_868->g_417, 3))
            { /* block id: 212 */
                int8_t l_457[10] = {3L,(-8L),3L,3L,(-8L),3L,3L,(-8L),3L,3L};
                int i;
                l_457[1] ^= p_48;
            }
            l_484[2][1][0] &= (safe_add_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), (safe_rshift_func_uint8_t_u_u((((*l_462) = &p_868->g_386[2]) == (p_868->g_464[2][0] = &p_868->g_386[0])), (((void*)0 == l_465) | (((safe_add_func_uint32_t_u_u(0UL, l_468)) , (safe_add_func_int8_t_s_s(((safe_mod_func_int16_t_s_s(((safe_add_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_u((--(****l_450)), (safe_lshift_func_int8_t_s_u((((void*)0 == &l_430) | (&p_868->g_202 == (void*)0)), p_48)))), (-7L))) == p_47), l_483)) ^ p_47), l_468))) || p_47))))));
            for (p_868->g_263 = 0; (p_868->g_263 > 46); ++p_868->g_263)
            { /* block id: 221 */
                int32_t *l_493 = &p_868->g_370;
                uint32_t *l_507 = &p_868->g_136[1];
                int32_t l_509 = 0x00F161A7L;
                int32_t l_510 = 0x000F1CCEL;
                p_868->g_3 = (p_868->g_22 = (-1L));
                for (p_868->g_147 = 5; (p_868->g_147 >= 0); p_868->g_147 -= 1)
                { /* block id: 226 */
                    int64_t ***l_502 = (void*)0;
                    int64_t ***l_503 = (void*)0;
                    int64_t ***l_504 = &l_427[2][2][4];
                    int8_t l_506 = (-10L);
                    int i, j;
                    l_510 ^= ((((((safe_lshift_func_int16_t_s_s((p_868->g_508[1] = (safe_div_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_u((p_47 , ((((((l_493 = l_432[(p_868->g_147 + 3)]) == (((safe_mul_func_uint16_t_u_u((safe_div_func_uint16_t_u_u(7UL, ((safe_mul_func_uint8_t_u_u(p_47, (l_500 | p_868->g_16[0]))) & ((l_501 == ((*l_504) = &l_426)) == ((void*)0 == l_505[1]))))), l_506)) , p_47) , (void*)0)) >= l_500) , &p_868->g_136[1]) == l_507) , p_47)), 10)) , 248UL), 0x76L))), 7)) , l_509) , p_48) , p_868->g_150) <= 1UL) || l_468);
                }
                l_509 ^= (-1L);
                if (p_47)
                    break;
            }
        }
        for (p_868->g_370 = 0; (p_868->g_370 <= 2); p_868->g_370 += 1)
        { /* block id: 238 */
            int32_t **l_511 = (void*)0;
            int32_t **l_512 = &l_432[1];
            int32_t *l_514[2][2];
            int32_t **l_515 = &p_868->g_219;
            int i, j;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 2; j++)
                    l_514[i][j] = &l_468;
            }
            (*l_515) = (l_514[1][1] = (l_513 = ((*l_512) = &p_868->g_10)));
        }
    }
    else
    { /* block id: 244 */
        return &p_868->g_22;
    }
    return &p_868->g_17;
}


/* ------------------------------------------ */
/* 
 * reads : p_868->g_314 p_868->g_386 p_868->g_263 p_868->g_370 p_868->g_82 p_868->g_219 p_868->g_147 p_868->g_6 p_868->g_81 p_868->g_256 p_868->g_257 p_868->g_22 p_868->g_417 p_868->g_10
 * writes: p_868->g_314 p_868->g_386 p_868->g_81 p_868->g_288 p_868->g_202 p_868->g_71 p_868->g_417
 */
int32_t * func_51(uint32_t  p_52, int32_t  p_53, int32_t  p_54, int32_t * p_55, int32_t * p_56, struct S0 * p_868)
{ /* block id: 182 */
    int64_t l_381[9] = {0x409D9CE96F79EB4FL,0x51B148E990CB8604L,0x409D9CE96F79EB4FL,0x409D9CE96F79EB4FL,0x51B148E990CB8604L,0x409D9CE96F79EB4FL,0x409D9CE96F79EB4FL,0x51B148E990CB8604L,0x409D9CE96F79EB4FL};
    int32_t l_382 = 0x0C4B63F0L;
    int32_t l_384 = 0L;
    int32_t l_385[10][10] = {{6L,1L,1L,6L,0L,0x38BFFC5AL,9L,(-6L),0x7C92BCA2L,0x0A00E1A3L},{6L,1L,1L,6L,0L,0x38BFFC5AL,9L,(-6L),0x7C92BCA2L,0x0A00E1A3L},{6L,1L,1L,6L,0L,0x38BFFC5AL,9L,(-6L),0x7C92BCA2L,0x0A00E1A3L},{6L,1L,1L,6L,0L,0x38BFFC5AL,9L,(-6L),0x7C92BCA2L,0x0A00E1A3L},{6L,1L,1L,6L,0L,0x38BFFC5AL,9L,(-6L),0x7C92BCA2L,0x0A00E1A3L},{6L,1L,1L,6L,0L,0x38BFFC5AL,9L,(-6L),0x7C92BCA2L,0x0A00E1A3L},{6L,1L,1L,6L,0L,0x38BFFC5AL,9L,(-6L),0x7C92BCA2L,0x0A00E1A3L},{6L,1L,1L,6L,0L,0x38BFFC5AL,9L,(-6L),0x7C92BCA2L,0x0A00E1A3L},{6L,1L,1L,6L,0L,0x38BFFC5AL,9L,(-6L),0x7C92BCA2L,0x0A00E1A3L},{6L,1L,1L,6L,0L,0x38BFFC5AL,9L,(-6L),0x7C92BCA2L,0x0A00E1A3L}};
    int8_t *l_412 = &p_868->g_81;
    int8_t *l_413[3][10][2] = {{{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288}},{{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288}},{{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288},{&p_868->g_288,&p_868->g_288}}};
    int16_t *l_414 = (void*)0;
    int16_t *l_415 = &p_868->g_202;
    int32_t *l_416 = &p_868->g_417;
    int i, j, k;
    for (p_868->g_314 = (-16); (p_868->g_314 < 21); ++p_868->g_314)
    { /* block id: 185 */
        int32_t *l_374 = &p_868->g_147;
        int32_t l_375 = 9L;
        int32_t *l_376 = &p_868->g_147;
        int32_t *l_377 = &p_868->g_147;
        int32_t *l_378 = (void*)0;
        int32_t *l_379 = &l_375;
        int32_t *l_380[9] = {&p_868->g_22,(void*)0,&p_868->g_22,&p_868->g_22,(void*)0,&p_868->g_22,&p_868->g_22,(void*)0,&p_868->g_22};
        int i;
        ++p_868->g_386[2];
    }
    (*l_416) |= ((((**p_868->g_256) = (safe_mod_func_uint16_t_u_u(((l_382 || (safe_mul_func_uint16_t_u_u(l_385[1][8], ((*l_415) = ((safe_div_func_int32_t_s_s((safe_div_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((safe_add_func_uint64_t_u_u(p_54, (p_54 && 0x40L))), (safe_lshift_func_int8_t_s_s((l_382 = ((((p_868->g_288 = ((*l_412) &= (safe_mod_func_uint16_t_u_u(((((((safe_sub_func_int64_t_s_s(((l_384 = ((safe_unary_minus_func_int8_t_s((l_385[0][7] && (((p_868->g_263 | ((p_54 < (((!(safe_add_func_uint32_t_u_u((safe_add_func_uint32_t_u_u(((((((~p_52) > p_868->g_370) & p_54) , &p_53) != &p_868->g_370) , l_382), 0xEF49D713L)), p_868->g_82))) , 0x70L) ^ 0L)) ^ 1L)) , 0x033959B1D3B25957L) , (*p_868->g_219))))) == 0xE3DA0410DF2DF421L)) | 4294967295UL), 0x44F45AB369420EEFL)) == 4UL) && p_54) , p_868->g_82) , p_52) > p_52), l_385[1][8])))) , FAKE_DIVERGE(p_868->global_0_offset, get_global_id(0), 10)) | 1UL) , 0x30L)), l_385[2][2])))), FAKE_DIVERGE(p_868->global_2_offset, get_global_id(2), 10))), FAKE_DIVERGE(p_868->local_0_offset, get_local_id(0), 10))) == l_385[1][8]))))) ^ 255UL), FAKE_DIVERGE(p_868->global_2_offset, get_global_id(2), 10)))) || p_52) <= p_868->g_22);
    return &p_868->g_6;
}


/* ------------------------------------------ */
/* 
 * reads : p_868->g_6 p_868->g_22 p_868->g_82 p_868->g_17 p_868->g_81 p_868->g_95 p_868->g_102 p_868->g_136 p_868->g_140 p_868->g_150 p_868->g_71 p_868->g_195 p_868->g_203 p_868->g_143 p_868->g_256 p_868->g_269 p_868->g_257 p_868->g_219 p_868->g_147 p_868->g_202 p_868->g_314 p_868->g_351 p_868->g_366 p_868->g_263 p_868->g_288
 * writes: p_868->g_71 p_868->g_82 p_868->g_95 p_868->g_140 p_868->g_150 p_868->g_143 p_868->g_147 p_868->g_203 p_868->g_219 p_868->g_81 p_868->g_263 p_868->g_269 p_868->g_257 p_868->g_288 p_868->g_314 p_868->g_351 p_868->g_352 p_868->g_202 p_868->g_366
 */
uint16_t  func_59(int32_t  p_60, int32_t * p_61, int32_t * p_62, uint64_t  p_63, struct S0 * p_868)
{ /* block id: 24 */
    int32_t l_64[10][3] = {{4L,4L,(-2L)},{4L,4L,(-2L)},{4L,4L,(-2L)},{4L,4L,(-2L)},{4L,4L,(-2L)},{4L,4L,(-2L)},{4L,4L,(-2L)},{4L,4L,(-2L)},{4L,4L,(-2L)},{4L,4L,(-2L)}};
    int32_t l_72 = (-3L);
    uint8_t *l_74 = &p_868->g_71;
    uint8_t **l_259[7][4] = {{&p_868->g_257,&l_74,&p_868->g_257,&l_74},{&p_868->g_257,&l_74,&p_868->g_257,&l_74},{&p_868->g_257,&l_74,&p_868->g_257,&l_74},{&p_868->g_257,&l_74,&p_868->g_257,&l_74},{&p_868->g_257,&l_74,&p_868->g_257,&l_74},{&p_868->g_257,&l_74,&p_868->g_257,&l_74},{&p_868->g_257,&l_74,&p_868->g_257,&l_74}};
    uint64_t *l_260 = &p_868->g_95;
    int32_t l_264 = 0x3E813428L;
    int8_t *l_297[2][6];
    uint64_t *l_304 = (void*)0;
    int32_t *l_305 = &l_264;
    int32_t *l_306 = &p_868->g_147;
    int32_t *l_307 = (void*)0;
    int32_t *l_308 = &l_72;
    int32_t *l_309 = &l_72;
    int32_t *l_310 = &l_72;
    int32_t *l_311 = (void*)0;
    int32_t *l_312[9][9][3] = {{{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22}},{{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22}},{{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22}},{{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22}},{{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22}},{{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22}},{{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22}},{{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22}},{{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22},{&p_868->g_6,&p_868->g_6,&p_868->g_22}}};
    int32_t *l_353 = &p_868->g_147;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 6; j++)
            l_297[i][j] = &p_868->g_288;
    }
    for (p_60 = 0; (p_60 <= 2); p_60 += 1)
    { /* block id: 27 */
        int32_t l_69 = 0x5FA23986L;
        uint8_t *l_70[8] = {&p_868->g_71,&p_868->g_71,&p_868->g_71,&p_868->g_71,&p_868->g_71,&p_868->g_71,&p_868->g_71,&p_868->g_71};
        uint8_t **l_73 = &l_70[0];
        int32_t **l_75 = (void*)0;
        int32_t **l_76 = (void*)0;
        int32_t *l_78 = &p_868->g_6;
        int32_t **l_77[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        p_868->g_219 = func_65(((l_69 && (*p_62)) | (p_60 | ((l_72 ^= p_868->g_6) || ((l_74 = ((*l_73) = &p_868->g_71)) != &p_868->g_71)))), &l_69, ((&l_69 != (p_61 = &p_868->g_22)) , (*p_61)), p_868);
        if (l_72)
            continue;
        for (p_868->g_95 = 0; (p_868->g_95 <= 2); p_868->g_95 += 1)
        { /* block id: 118 */
            uint8_t l_220 = 255UL;
            int16_t l_272 = 0x14D9L;
            int32_t l_292 = 0x5ABA828AL;
            l_220++;
            for (p_868->g_150 = 0; (p_868->g_150 <= 2); p_868->g_150 += 1)
            { /* block id: 122 */
                int64_t l_238 = 0x4EB29F0F0CF3074CL;
                int32_t l_265 = 0x645068F4L;
                int16_t l_266 = 0L;
                int32_t l_268 = 1L;
                uint8_t *l_284[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_284[i] = &l_220;
                for (p_63 = 0; (p_63 <= 2); p_63 += 1)
                { /* block id: 125 */
                    int16_t l_235 = 0x0E37L;
                    int32_t l_267 = 0x5B8610FEL;
                    for (p_868->g_71 = 0; (p_868->g_71 <= 3); p_868->g_71 += 1)
                    { /* block id: 128 */
                        int8_t *l_241 = &p_868->g_81;
                        uint8_t ***l_258[5][9][5] = {{{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256}},{{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256}},{{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256}},{{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256}},{{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256},{(void*)0,&p_868->g_256,&l_73,(void*)0,&p_868->g_256}}};
                        uint64_t *l_261 = (void*)0;
                        uint64_t *l_262 = &p_868->g_263;
                        int i, j, k;
                        p_868->g_147 = (((safe_div_func_int32_t_s_s(((safe_rshift_func_int8_t_s_s(((((safe_sub_func_int64_t_s_s((((safe_rshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((l_64[(p_868->g_150 + 4)][p_60] | l_64[(p_63 + 6)][p_60]), l_64[(p_63 + 1)][p_868->g_150])), l_64[(p_868->g_150 + 2)][p_63])) , p_868->g_143) == ((0x78L == (safe_add_func_uint16_t_u_u(l_235, (safe_rshift_func_int16_t_s_s((l_77[p_868->g_71] == &p_61), 15))))) , p_63)), p_63)) > GROUP_DIVERGE(2, 1)) == 4294967286UL) , p_868->g_203), 0)) > 0x80L), 0xB42B6AA6L)) >= p_60) | l_238);
                        l_266 = ((safe_div_func_uint8_t_u_u(((l_265 = (((*l_241) = (-10L)) > (l_264 &= (safe_sub_func_int8_t_s_s((safe_div_func_int16_t_s_s(((void*)0 == p_62), ((0x332AL & (l_238 & p_60)) ^ ((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_868->group_1_offset, get_group_id(1), 10), 1)) < (safe_lshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_u(((p_60 || ((safe_mod_func_int16_t_s_s((((l_259[2][0] = p_868->g_256) == ((((*l_262) = (l_260 != (void*)0)) , 0x8471FBBCL) , &l_74)) >= l_72), p_868->g_6)) >= p_63)) , 7L), 0)), 2)))))), 0x08L))))) <= l_72), p_60)) , 8L);
                        l_267 = l_238;
                    }
                    p_868->g_269++;
                }
                l_272 = 0x2C020D4CL;
                for (l_266 = 2; (l_266 >= 0); l_266 -= 1)
                { /* block id: 143 */
                    int64_t *l_279[2][3][10] = {{{&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280},{&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280},{&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280}},{{&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280},{&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280},{&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280,&p_868->g_280}}};
                    int32_t l_281 = (-1L);
                    int8_t *l_285 = &p_868->g_81;
                    int8_t *l_286 = (void*)0;
                    int8_t *l_287 = &p_868->g_288;
                    uint32_t l_293[1][4] = {{4294967290UL,4294967290UL,4294967290UL,4294967290UL}};
                    uint64_t l_294 = 1UL;
                    int i, j, k;
                    l_294 ^= (safe_lshift_func_uint8_t_u_s(((l_293[0][0] |= (((safe_mul_func_uint8_t_u_u(((((l_281 = (l_268 = (safe_lshift_func_uint8_t_u_s(255UL, 5)))) , (safe_mul_func_uint16_t_u_u((~l_64[(p_868->g_150 + 6)][l_266]), ((l_292 = ((((*l_287) = ((*l_285) = (+((l_284[1] != ((*p_868->g_256) = (*p_868->g_256))) != GROUP_DIVERGE(1, 1))))) | (-8L)) > ((safe_unary_minus_func_uint16_t_u(p_60)) , (safe_sub_func_uint64_t_u_u((p_60 , FAKE_DIVERGE(p_868->local_0_offset, get_local_id(0), 10)), (p_60 | p_868->g_203)))))) , GROUP_DIVERGE(0, 1))))) & (*p_868->g_219)) , p_63), 0x7BL)) != l_64[(p_868->g_150 + 6)][l_266]) != (-9L))) , (*p_868->g_257)), p_868->g_6));
                }
            }
        }
    }
    (*l_305) |= ((1L ^ ((((l_72 = (safe_mod_func_uint8_t_u_u((!p_60), p_868->g_202))) , &l_72) != (void*)0) < (safe_unary_minus_func_uint16_t_u((l_64[1][1] > 0x202BL))))) > (((safe_mul_func_int16_t_s_s((safe_add_func_uint64_t_u_u(0x62452FD6F03D8194L, (safe_unary_minus_func_uint64_t_u((&p_868->g_263 != l_304))))), p_63)) , (*p_868->g_256)) != (*p_868->g_256)));
    ++p_868->g_314;
    for (p_63 = 2; (p_63 == 36); p_63 = safe_add_func_int32_t_s_s(p_63, 4))
    { /* block id: 161 */
        uint64_t *l_323[5];
        int32_t *l_328 = &l_264;
        int32_t **l_329 = (void*)0;
        int32_t **l_330 = &l_328;
        uint8_t ***l_337 = &p_868->g_256;
        uint32_t l_348[9][1] = {{0x8C172E0DL},{0x8C172E0DL},{0x8C172E0DL},{0x8C172E0DL},{0x8C172E0DL},{0x8C172E0DL},{0x8C172E0DL},{0x8C172E0DL},{0x8C172E0DL}};
        int16_t l_349 = (-1L);
        uint16_t *l_350[7][8] = {{&p_868->g_82,&p_868->g_82,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_82},{&p_868->g_82,&p_868->g_82,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_82},{&p_868->g_82,&p_868->g_82,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_82},{&p_868->g_82,&p_868->g_82,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_82},{&p_868->g_82,&p_868->g_82,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_82},{&p_868->g_82,&p_868->g_82,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_82},{&p_868->g_82,&p_868->g_82,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_351,&p_868->g_82}};
        int16_t *l_362 = &p_868->g_202;
        int32_t *l_365[2];
        int i, j;
        for (i = 0; i < 5; i++)
            l_323[i] = (void*)0;
        for (i = 0; i < 2; i++)
            l_365[i] = &l_64[9][1];
        (*l_330) = (p_868->g_219 = p_62);
        (*l_305) &= ((*l_309) = ((*l_306) = (safe_mod_func_uint8_t_u_u((((((safe_div_func_int16_t_s_s(p_868->g_82, ((p_868->g_81 || (*p_868->g_219)) , (safe_lshift_func_uint16_t_u_u((p_868->g_352 = (p_868->g_351 = (l_337 != ((((safe_lshift_func_int16_t_s_s((safe_div_func_int64_t_s_s((safe_mul_func_uint8_t_u_u(((void*)0 == &l_74), ((**p_868->g_256) = 8UL))), ((safe_sub_func_uint8_t_u_u((2L && (safe_sub_func_int64_t_s_s((((p_60 != (*p_868->g_219)) <= FAKE_DIVERGE(p_868->group_2_offset, get_group_id(2), 10)) , (-4L)), l_348[7][0]))), GROUP_DIVERGE(0, 1))) | (*l_310)))), 4)) | l_349) > 0x73B4L) , &p_868->g_256)))), 9))))) || p_868->g_351) && 0xC6F13C1FL) & 0x108F4F7A1DF521F7L) == p_868->g_314), p_868->g_82))));
        p_61 = &p_868->g_6;
        (*l_353) = ((safe_lshift_func_uint16_t_u_s((p_868->g_351 = (((safe_lshift_func_int8_t_s_u((p_868->g_288 ^= (safe_mul_func_uint16_t_u_u(((0x0928FCB1L < 0x4CF88656L) , ((0x8A5BL != ((-10L) == ((-9L) && GROUP_DIVERGE(0, 1)))) > ((((((*l_362) = ((*l_309) ^ p_868->g_95)) <= (safe_div_func_int8_t_s_s(((p_868->g_366 = (0x65L && ((((((((p_60 , 0x7DL) & (*l_309)) , 1L) && 0x830DE378L) , 2UL) != (*l_306)) & 0UL) == 0x5A23L))) , p_868->g_366), (**p_868->g_256)))) && p_60) >= p_868->g_263) < p_63))), p_60))), (**l_330))) < p_868->g_22) , GROUP_DIVERGE(0, 1))), p_63)) , (*p_61));
    }
    return p_868->g_95;
}


/* ------------------------------------------ */
/* 
 * reads : p_868->g_71 p_868->g_22 p_868->g_82 p_868->g_17 p_868->g_81 p_868->g_95 p_868->g_102 p_868->g_136 p_868->g_6 p_868->g_140 p_868->g_150 p_868->g_143 p_868->g_195 p_868->g_203
 * writes: p_868->g_71 p_868->g_82 p_868->g_95 p_868->g_140 p_868->g_150 p_868->g_143 p_868->g_147 p_868->g_203
 */
int32_t * func_65(int8_t  p_66, int32_t * p_67, int32_t  p_68, struct S0 * p_868)
{ /* block id: 32 */
    uint8_t *l_80[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t **l_79 = &l_80[3];
    int32_t l_87 = 0x5DBA47A5L;
    int32_t *l_183 = (void*)0;
    int32_t **l_182 = &l_183;
    int32_t *l_218 = &p_868->g_6;
    int i;
    (*p_67) = (((void*)0 != l_79) && (&p_67 == (void*)0));
    for (p_66 = 1; (p_66 <= 6); p_66 += 1)
    { /* block id: 36 */
        int32_t *l_85 = &p_868->g_6;
        int32_t **l_86 = &l_85;
        uint8_t **l_92 = (void*)0;
        uint8_t *l_94 = &p_868->g_71;
        uint8_t **l_93 = &l_94;
        uint64_t *l_103[7][1][3] = {{{&p_868->g_95,(void*)0,(void*)0}},{{&p_868->g_95,(void*)0,(void*)0}},{{&p_868->g_95,(void*)0,(void*)0}},{{&p_868->g_95,(void*)0,(void*)0}},{{&p_868->g_95,(void*)0,(void*)0}},{{&p_868->g_95,(void*)0,(void*)0}},{{&p_868->g_95,(void*)0,(void*)0}}};
        uint32_t l_137 = 0x0E8A9312L;
        int32_t l_138 = 0x632D400DL;
        int i, j, k;
        for (p_868->g_71 = 1; (p_868->g_71 <= 6); p_868->g_71 += 1)
        { /* block id: 39 */
            if (p_868->g_22)
                break;
            --p_868->g_82;
        }
        (*l_86) = l_85;
        if ((((p_868->g_95 = (l_87 >= (safe_mul_func_int8_t_s_s(((p_868->g_17 , l_80[p_66]) == ((safe_mod_func_int32_t_s_s(p_868->g_81, (p_868->g_81 || 4L))) , ((*l_93) = (*l_79)))), (p_868->g_95 < (((safe_rshift_func_uint16_t_u_s(((safe_mod_func_int8_t_s_s(((safe_div_func_int64_t_s_s((((&l_80[p_66] == p_868->g_102) || p_66) > p_68), l_87)) & l_87), p_68)) > 0x1B93FB8B7E04BE07L), 14)) < 0L) & FAKE_DIVERGE(p_868->global_0_offset, get_global_id(0), 10))))))) != p_66) || 0x7DL))
        { /* block id: 46 */
            int32_t *l_128 = &p_868->g_17;
            int32_t **l_127[9][6] = {{&l_128,&l_128,&l_128,&l_128,&l_128,&l_128},{&l_128,&l_128,&l_128,&l_128,&l_128,&l_128},{&l_128,&l_128,&l_128,&l_128,&l_128,&l_128},{&l_128,&l_128,&l_128,&l_128,&l_128,&l_128},{&l_128,&l_128,&l_128,&l_128,&l_128,&l_128},{&l_128,&l_128,&l_128,&l_128,&l_128,&l_128},{&l_128,&l_128,&l_128,&l_128,&l_128,&l_128},{&l_128,&l_128,&l_128,&l_128,&l_128,&l_128},{&l_128,&l_128,&l_128,&l_128,&l_128,&l_128}};
            uint32_t *l_135[3][1];
            int64_t l_139[6];
            int i, j;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                    l_135[i][j] = &p_868->g_136[1];
            }
            for (i = 0; i < 6; i++)
                l_139[i] = 5L;
            for (p_68 = (-28); (p_68 < (-8)); p_68 = safe_add_func_int32_t_s_s(p_68, 8))
            { /* block id: 49 */
                return &p_868->g_6;
            }
            p_868->g_140 ^= (+((((+((safe_mul_func_uint16_t_u_u(((((((safe_sub_func_int8_t_s_s(0L, (safe_add_func_int32_t_s_s((safe_sub_func_int32_t_s_s((~(safe_sub_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u((&p_868->g_17 != ((*l_86) = &p_868->g_6)), ((safe_unary_minus_func_int32_t_s((safe_div_func_uint32_t_u_u((((safe_lshift_func_uint8_t_u_u((safe_div_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_s((l_127[8][3] == &p_67), ((0UL || (safe_rshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_s(p_66, 0)), p_68))) < (safe_div_func_uint32_t_u_u((l_137 ^= (*l_128)), 1UL))))), p_868->g_136[3])), p_68)) && 9L) , p_868->g_136[3]), p_868->g_82)))) , (-5L)))) | 2UL), FAKE_DIVERGE(p_868->local_2_offset, get_local_id(2), 10)))), l_87)), l_138)))) && 0x4A7285EBL) < p_68) , (*l_85)) , p_868->g_22) != p_868->g_22), p_868->g_6)) != (*p_67))) >= l_139[2]) ^ p_66) <= p_68));
        }
        else
        { /* block id: 55 */
            int32_t l_148 = (-2L);
            int32_t l_149[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
            uint16_t l_179 = 65535UL;
            int i;
            for (p_868->g_95 = (-30); (p_868->g_95 < 16); p_868->g_95 = safe_add_func_uint16_t_u_u(p_868->g_95, 7))
            { /* block id: 58 */
                int32_t *l_144 = &l_87;
                int32_t *l_145 = &l_138;
                int32_t *l_146[9][5] = {{&l_87,&l_138,&p_868->g_17,&p_868->g_22,&l_138},{&l_87,&l_138,&p_868->g_17,&p_868->g_22,&l_138},{&l_87,&l_138,&p_868->g_17,&p_868->g_22,&l_138},{&l_87,&l_138,&p_868->g_17,&p_868->g_22,&l_138},{&l_87,&l_138,&p_868->g_17,&p_868->g_22,&l_138},{&l_87,&l_138,&p_868->g_17,&p_868->g_22,&l_138},{&l_87,&l_138,&p_868->g_17,&p_868->g_22,&l_138},{&l_87,&l_138,&p_868->g_17,&p_868->g_22,&l_138},{&l_87,&l_138,&p_868->g_17,&p_868->g_22,&l_138}};
                int i, j;
                p_868->g_150--;
                if (((*p_67) = ((p_66 != (+((safe_div_func_int32_t_s_s((safe_lshift_func_uint16_t_u_u((**l_86), 7)), ((*p_67) & (safe_add_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s(((safe_mul_func_int8_t_s_s(((p_868->g_71 == 0UL) | 18446744073709551608UL), (safe_lshift_func_int8_t_s_u(p_66, (FAKE_DIVERGE(p_868->local_1_offset, get_local_id(1), 10) , (&p_67 == &p_67)))))) <= l_87), p_66)) , l_87), 8L))))) >= p_66))) == 0xB5AAABC8L)))
                { /* block id: 61 */
                    if (p_868->g_95)
                        break;
                }
                else
                { /* block id: 63 */
                    if ((atomic_inc(&p_868->l_atomic_input[32]) == 5))
                    { /* block id: 65 */
                        int32_t l_165 = 5L;
                        int16_t l_166 = 0x0DE4L;
                        uint8_t l_167 = 5UL;
                        int32_t l_168[6] = {0L,0L,0L,0L,0L,0L};
                        uint8_t l_169 = 0UL;
                        uint32_t l_170[4] = {0xFA3ACC10L,0xFA3ACC10L,0xFA3ACC10L,0xFA3ACC10L};
                        uint32_t l_171 = 4294967286UL;
                        int64_t l_172 = 1L;
                        uint64_t l_173 = 0x894422981FDBEEBBL;
                        int32_t l_177 = 4L;
                        int32_t *l_176 = &l_177;
                        int32_t *l_178 = &l_177;
                        int i;
                        l_168[5] ^= ((l_165 , l_166) , l_167);
                        l_172 &= (l_169 , (l_170[0] , l_171));
                        ++l_173;
                        l_178 = l_176;
                        unsigned int result = 0;
                        result += l_165;
                        result += l_166;
                        result += l_167;
                        int l_168_i0;
                        for (l_168_i0 = 0; l_168_i0 < 6; l_168_i0++) {
                            result += l_168[l_168_i0];
                        }
                        result += l_169;
                        int l_170_i0;
                        for (l_170_i0 = 0; l_170_i0 < 4; l_170_i0++) {
                            result += l_170[l_170_i0];
                        }
                        result += l_171;
                        result += l_172;
                        result += l_173;
                        result += l_177;
                        atomic_add(&p_868->l_special_values[32], result);
                    }
                    else
                    { /* block id: 70 */
                        (1 + 1);
                    }
                }
                l_179--;
            }
        }
        (*l_86) = &p_68;
    }
    (*l_182) = &l_87;
    for (p_868->g_82 = 0; (p_868->g_82 > 2); p_868->g_82 = safe_add_func_int8_t_s_s(p_868->g_82, 8))
    { /* block id: 82 */
        int32_t l_190 = (-9L);
        uint8_t *l_208 = &p_868->g_71;
        for (p_868->g_143 = 0; (p_868->g_143 > (-19)); p_868->g_143 = safe_sub_func_uint32_t_u_u(p_868->g_143, 6))
        { /* block id: 85 */
            int16_t l_193 = 0x68F9L;
            (*l_182) = (*l_182);
            if ((safe_mul_func_int16_t_s_s((*l_183), l_190)))
            { /* block id: 87 */
                uint64_t *l_194 = &p_868->g_95;
                (**l_182) = (safe_sub_func_uint64_t_u_u(((*l_194) |= (l_193 ^ 0L)), ((p_868->g_102 == p_868->g_102) | (p_868->g_195 != (p_868->g_22 , (void*)0)))));
                for (l_193 = 29; (l_193 >= (-22)); l_193 = safe_sub_func_int64_t_s_s(l_193, 1))
                { /* block id: 92 */
                    uint32_t l_213 = 0xDF5E4C99L;
                    for (p_868->g_147 = (-3); (p_868->g_147 == (-27)); p_868->g_147 = safe_sub_func_uint16_t_u_u(p_868->g_147, 8))
                    { /* block id: 95 */
                        int32_t *l_201[4];
                        int i;
                        for (i = 0; i < 4; i++)
                            l_201[i] = &l_87;
                        (*l_182) = &p_868->g_17;
                        ++p_868->g_203;
                        (*p_67) = (safe_sub_func_int16_t_s_s((l_201[2] != &p_68), (((void*)0 != l_208) == ((+(safe_add_func_uint16_t_u_u((18446744073709551615UL || (&p_67 != (((safe_sub_func_int8_t_s_s(l_213, (((safe_div_func_uint32_t_u_u((l_190 ^ (~p_868->g_136[1])), (*p_67))) != (*p_67)) & p_868->g_203))) , FAKE_DIVERGE(p_868->group_1_offset, get_group_id(1), 10)) , (void*)0))), p_66))) ^ p_68))));
                        (*p_67) = p_868->g_95;
                    }
                }
            }
            else
            { /* block id: 102 */
                for (l_193 = 0; (l_193 >= 0); l_193 = safe_add_func_uint16_t_u_u(l_193, 8))
                { /* block id: 105 */
                    (*l_182) = &p_868->g_6;
                    if (p_868->g_136[1])
                        continue;
                }
            }
            return &p_868->g_147;
        }
    }
    return l_218;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j;
    __local volatile uint32_t l_atomic_input[41];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 41; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[41];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 41; i++)
            l_special_values[i] = 0;
    struct S0 c_869;
    struct S0* p_868 = &c_869;
    struct S0 c_870 = {
        0L, // p_868->g_2
        0x57E8B72FL, // p_868->g_3
        0x14D2EDC7L, // p_868->g_4
        1L, // p_868->g_5
        0x29D19AC1L, // p_868->g_6
        6L, // p_868->g_9
        0x24AD744DL, // p_868->g_10
        (-1L), // p_868->g_13
        0L, // p_868->g_14
        (-9L), // p_868->g_15
        {1L,1L,1L,1L,1L,1L,1L,1L,1L}, // p_868->g_16
        1L, // p_868->g_17
        4L, // p_868->g_22
        4UL, // p_868->g_71
        1L, // p_868->g_81
        0xE1FAL, // p_868->g_82
        1UL, // p_868->g_95
        (void*)0, // p_868->g_102
        {9UL,4294967291UL,9UL,9UL,4294967291UL,9UL}, // p_868->g_136
        (-4L), // p_868->g_140
        (-1L), // p_868->g_143
        1L, // p_868->g_147
        0xD2L, // p_868->g_150
        0x60BB7073E97851F5L, // p_868->g_196
        &p_868->g_196, // p_868->g_195
        5L, // p_868->g_202
        0x85158CC5C9A55130L, // p_868->g_203
        &p_868->g_147, // p_868->g_219
        &p_868->g_71, // p_868->g_257
        &p_868->g_257, // p_868->g_256
        0UL, // p_868->g_263
        0x8E8656E9L, // p_868->g_269
        9L, // p_868->g_280
        0x13L, // p_868->g_288
        2L, // p_868->g_313
        0xFBL, // p_868->g_314
        0xD599L, // p_868->g_351
        0L, // p_868->g_352
        0xE945F99EL, // p_868->g_366
        0L, // p_868->g_370
        0x2B74BA32L, // p_868->g_383
        {0xDC96L,0xDC96L,0xDC96L,0xDC96L,0xDC96L,0xDC96L}, // p_868->g_386
        0x21D4D259L, // p_868->g_417
        &p_868->g_280, // p_868->g_428
        {{&p_868->g_386[2],&p_868->g_82,&p_868->g_82,&p_868->g_82,&p_868->g_386[2],&p_868->g_386[2]},{&p_868->g_386[2],&p_868->g_82,&p_868->g_82,&p_868->g_82,&p_868->g_386[2],&p_868->g_386[2]},{&p_868->g_386[2],&p_868->g_82,&p_868->g_82,&p_868->g_82,&p_868->g_386[2],&p_868->g_386[2]},{&p_868->g_386[2],&p_868->g_82,&p_868->g_82,&p_868->g_82,&p_868->g_386[2],&p_868->g_386[2]},{&p_868->g_386[2],&p_868->g_82,&p_868->g_82,&p_868->g_82,&p_868->g_386[2],&p_868->g_386[2]},{&p_868->g_386[2],&p_868->g_82,&p_868->g_82,&p_868->g_82,&p_868->g_386[2],&p_868->g_386[2]}}, // p_868->g_464
        {0x56L,0x56L,0x56L}, // p_868->g_508
        &p_868->g_417, // p_868->g_516
        &p_868->g_22, // p_868->g_523
        0xDAL, // p_868->g_588
        &p_868->g_203, // p_868->g_645
        &p_868->g_428, // p_868->g_701
        (void*)0, // p_868->g_715
        &p_868->g_715, // p_868->g_714
        &p_868->g_256, // p_868->g_749
        &p_868->g_749, // p_868->g_748
        1UL, // p_868->g_777
        &p_868->g_777, // p_868->g_776
        4294967288UL, // p_868->g_779
        &p_868->g_219, // p_868->g_841
        sequence_input[get_global_id(0)], // p_868->global_0_offset
        sequence_input[get_global_id(1)], // p_868->global_1_offset
        sequence_input[get_global_id(2)], // p_868->global_2_offset
        sequence_input[get_local_id(0)], // p_868->local_0_offset
        sequence_input[get_local_id(1)], // p_868->local_1_offset
        sequence_input[get_local_id(2)], // p_868->local_2_offset
        sequence_input[get_group_id(0)], // p_868->group_0_offset
        sequence_input[get_group_id(1)], // p_868->group_1_offset
        sequence_input[get_group_id(2)], // p_868->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_869 = c_870;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_868);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_868->g_2, "p_868->g_2", print_hash_value);
    transparent_crc(p_868->g_3, "p_868->g_3", print_hash_value);
    transparent_crc(p_868->g_4, "p_868->g_4", print_hash_value);
    transparent_crc(p_868->g_5, "p_868->g_5", print_hash_value);
    transparent_crc(p_868->g_6, "p_868->g_6", print_hash_value);
    transparent_crc(p_868->g_9, "p_868->g_9", print_hash_value);
    transparent_crc(p_868->g_10, "p_868->g_10", print_hash_value);
    transparent_crc(p_868->g_13, "p_868->g_13", print_hash_value);
    transparent_crc(p_868->g_14, "p_868->g_14", print_hash_value);
    transparent_crc(p_868->g_15, "p_868->g_15", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_868->g_16[i], "p_868->g_16[i]", print_hash_value);

    }
    transparent_crc(p_868->g_17, "p_868->g_17", print_hash_value);
    transparent_crc(p_868->g_22, "p_868->g_22", print_hash_value);
    transparent_crc(p_868->g_71, "p_868->g_71", print_hash_value);
    transparent_crc(p_868->g_81, "p_868->g_81", print_hash_value);
    transparent_crc(p_868->g_82, "p_868->g_82", print_hash_value);
    transparent_crc(p_868->g_95, "p_868->g_95", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_868->g_136[i], "p_868->g_136[i]", print_hash_value);

    }
    transparent_crc(p_868->g_140, "p_868->g_140", print_hash_value);
    transparent_crc(p_868->g_143, "p_868->g_143", print_hash_value);
    transparent_crc(p_868->g_147, "p_868->g_147", print_hash_value);
    transparent_crc(p_868->g_150, "p_868->g_150", print_hash_value);
    transparent_crc(p_868->g_196, "p_868->g_196", print_hash_value);
    transparent_crc(p_868->g_202, "p_868->g_202", print_hash_value);
    transparent_crc(p_868->g_203, "p_868->g_203", print_hash_value);
    transparent_crc(p_868->g_263, "p_868->g_263", print_hash_value);
    transparent_crc(p_868->g_269, "p_868->g_269", print_hash_value);
    transparent_crc(p_868->g_280, "p_868->g_280", print_hash_value);
    transparent_crc(p_868->g_288, "p_868->g_288", print_hash_value);
    transparent_crc(p_868->g_313, "p_868->g_313", print_hash_value);
    transparent_crc(p_868->g_314, "p_868->g_314", print_hash_value);
    transparent_crc(p_868->g_351, "p_868->g_351", print_hash_value);
    transparent_crc(p_868->g_352, "p_868->g_352", print_hash_value);
    transparent_crc(p_868->g_366, "p_868->g_366", print_hash_value);
    transparent_crc(p_868->g_370, "p_868->g_370", print_hash_value);
    transparent_crc(p_868->g_383, "p_868->g_383", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_868->g_386[i], "p_868->g_386[i]", print_hash_value);

    }
    transparent_crc(p_868->g_417, "p_868->g_417", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_868->g_508[i], "p_868->g_508[i]", print_hash_value);

    }
    transparent_crc(p_868->g_588, "p_868->g_588", print_hash_value);
    transparent_crc(p_868->g_777, "p_868->g_777", print_hash_value);
    transparent_crc(p_868->g_779, "p_868->g_779", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 41; i++)
            transparent_crc(p_868->g_special_values[i + 41 * get_linear_group_id()], "p_868->g_special_values[i + 41 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 41; i++)
            transparent_crc(p_868->l_special_values[i], "p_868->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
