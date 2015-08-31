// ---fake_divergence -g 2,1,3779 -l 1,1,1
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


// Seed: 64

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int64_t g_3;
    int32_t * volatile g_4;
    int32_t * volatile * volatile g_5;
    int32_t g_10;
    volatile uint16_t g_22;
    VECTOR(int64_t, 8) g_37;
    int32_t *g_42[10];
    int32_t **g_41[9][7];
    volatile VECTOR(int32_t, 2) g_43;
    VECTOR(int8_t, 4) g_70;
    VECTOR(int64_t, 2) g_82;
    VECTOR(int32_t, 8) g_122;
    VECTOR(int32_t, 4) g_123;
    volatile int32_t g_154;
    volatile int32_t *g_153;
    volatile int32_t **g_152;
    volatile int32_t ***g_151;
    VECTOR(int16_t, 4) g_162;
    VECTOR(int64_t, 2) g_182;
    uint8_t g_187[8][7][4];
    volatile uint64_t g_195[2];
    volatile uint64_t *g_194;
    VECTOR(uint32_t, 2) g_203;
    int32_t g_204;
    VECTOR(int32_t, 8) g_207;
    int16_t g_246;
    volatile int8_t g_248;
    volatile int8_t *g_247;
    VECTOR(int32_t, 2) g_250;
    uint32_t g_259[4];
    uint32_t g_305;
    int16_t *g_327;
    uint8_t g_330;
    int32_t g_352;
    int32_t *g_353;
    int64_t *g_355;
    int64_t **g_354;
    int8_t g_365;
    VECTOR(int64_t, 4) g_372;
    int32_t g_377;
    VECTOR(int32_t, 16) g_380;
    uint16_t g_392;
    VECTOR(uint32_t, 4) g_401;
    VECTOR(int64_t, 4) g_411;
    VECTOR(int16_t, 16) g_429;
    VECTOR(int32_t, 4) g_475;
    uint16_t *g_506;
    VECTOR(int16_t, 4) g_518;
    int32_t **g_544;
    int32_t ***g_543;
    int32_t ****g_542[2][9][1];
    VECTOR(uint64_t, 2) g_591;
    uint64_t g_599;
    VECTOR(uint64_t, 4) g_644;
    volatile VECTOR(uint64_t, 16) g_686;
    VECTOR(int32_t, 16) g_697;
    uint32_t *g_712;
    int32_t g_762;
    VECTOR(uint8_t, 16) g_763;
    uint32_t **g_767;
    volatile VECTOR(uint32_t, 2) g_774;
    VECTOR(uint64_t, 2) g_807;
    uint16_t g_812;
    volatile uint8_t g_828;
    volatile VECTOR(uint16_t, 2) g_834;
    uint16_t *g_838;
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
uint64_t  func_1(struct S0 * p_867);
int64_t  func_27(int64_t  p_28, int64_t  p_29, uint16_t  p_30, int32_t ** p_31, int32_t * p_32, struct S0 * p_867);
uint32_t  func_45(int32_t * p_46, int32_t ** p_47, uint64_t  p_48, int32_t ** p_49, struct S0 * p_867);
int32_t * func_50(int32_t  p_51, uint32_t  p_52, struct S0 * p_867);
VECTOR(uint16_t, 8)  func_53(int64_t  p_54, int32_t ** p_55, uint64_t  p_56, int32_t ** p_57, struct S0 * p_867);
uint64_t  func_60(int32_t  p_61, uint64_t  p_62, int8_t  p_63, int32_t * p_64, uint8_t  p_65, struct S0 * p_867);
int32_t ** func_67(uint64_t  p_68, struct S0 * p_867);
VECTOR(int64_t, 4)  func_74(uint32_t  p_75, struct S0 * p_867);
VECTOR(int64_t, 8)  func_83(int32_t ** p_84, int32_t * p_85, int32_t ** p_86, int64_t  p_87, struct S0 * p_867);
int32_t ** func_88(uint64_t  p_89, int32_t ** p_90, int32_t ** p_91, int32_t ** p_92, uint64_t  p_93, struct S0 * p_867);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_867->g_3 p_867->g_4 p_867->g_5 p_867->g_22 p_867->g_203 p_867->g_392 p_867->g_151 p_867->g_152 p_867->g_153 p_867->g_10 p_867->g_377 p_867->g_187 p_867->g_352 p_867->g_354 p_867->g_355 p_867->g_259 p_867->g_162 p_867->g_506 p_867->g_544 p_867->g_42 p_867->g_207 p_867->g_543 p_867->g_247 p_867->g_248 p_867->g_365 p_867->g_401 p_867->g_194 p_867->g_195 p_867->g_599 p_867->g_182 p_867->g_37 p_867->g_154 p_867->g_644 p_867->g_70 p_867->g_834 p_867->g_838 p_867->g_828 p_867->g_712 p_867->g_330 p_867->g_250 p_867->g_686
 * writes: p_867->g_4 p_867->g_3 p_867->g_22 p_867->g_10 p_867->g_41 p_867->g_42 p_867->g_153 p_867->g_187 p_867->g_392 p_867->g_246 p_867->g_377 p_867->g_411 p_867->g_365 p_867->g_154 p_867->g_599 p_867->g_429 p_867->g_644 p_867->g_401 p_867->g_712 p_867->g_838 p_867->g_82
 */
uint64_t  func_1(struct S0 * p_867)
{ /* block id: 4 */
    uint32_t l_2 = 4294967291UL;
    int32_t l_21 = 1L;
    int32_t **l_66 = &p_867->g_42[4];
    int32_t **l_548 = (void*)0;
    int32_t l_726 = 0x5D476ED0L;
    int32_t l_728 = 2L;
    int32_t l_731 = 5L;
    int32_t l_732 = 0L;
    int32_t l_735 = 0x199CDB74L;
    int32_t l_736 = 8L;
    VECTOR(int32_t, 16) l_737 = (VECTOR(int32_t, 16))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0x636F6CFEL), 0x636F6CFEL), 0x636F6CFEL, 2L, 0x636F6CFEL, (VECTOR(int32_t, 2))(2L, 0x636F6CFEL), (VECTOR(int32_t, 2))(2L, 0x636F6CFEL), 2L, 0x636F6CFEL, 2L, 0x636F6CFEL);
    VECTOR(uint64_t, 4) l_738 = (VECTOR(uint64_t, 4))(0x60AA0862A55065B6L, (VECTOR(uint64_t, 2))(0x60AA0862A55065B6L, 0xB2D08C2BBB9AB4BFL), 0xB2D08C2BBB9AB4BFL);
    uint32_t **l_765 = &p_867->g_712;
    int8_t l_811 = 0x5DL;
    int32_t l_837 = 0x77EC387CL;
    int64_t l_861 = (-1L);
    int16_t **l_862 = &p_867->g_327;
    uint8_t l_865 = 2UL;
    int64_t **l_866 = &p_867->g_355;
    int i;
    if ((l_2 == p_867->g_3))
    { /* block id: 5 */
        uint32_t l_11 = 1UL;
        int8_t l_16 = 0x1FL;
        int32_t l_17 = 0x5D013D0BL;
        int32_t l_19 = 0x77904128L;
        int32_t l_20 = 0x6A4C5706L;
        int32_t *l_40 = &l_21;
        int32_t **l_39 = &l_40;
        VECTOR(int32_t, 4) l_44 = (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 8L), 8L);
        uint64_t l_556 = 1UL;
        int i;
        (*p_867->g_5) = p_867->g_4;
        for (p_867->g_3 = 0; (p_867->g_3 > (-18)); p_867->g_3 = safe_sub_func_int8_t_s_s(p_867->g_3, 1))
        { /* block id: 9 */
            int32_t *l_8 = (void*)0;
            int32_t *l_9 = &p_867->g_10;
            int32_t *l_14 = &p_867->g_10;
            int32_t *l_15[7][8] = {{(void*)0,&p_867->g_10,&p_867->g_10,&p_867->g_10,(void*)0,(void*)0,&p_867->g_10,&p_867->g_10},{(void*)0,&p_867->g_10,&p_867->g_10,&p_867->g_10,(void*)0,(void*)0,&p_867->g_10,&p_867->g_10},{(void*)0,&p_867->g_10,&p_867->g_10,&p_867->g_10,(void*)0,(void*)0,&p_867->g_10,&p_867->g_10},{(void*)0,&p_867->g_10,&p_867->g_10,&p_867->g_10,(void*)0,(void*)0,&p_867->g_10,&p_867->g_10},{(void*)0,&p_867->g_10,&p_867->g_10,&p_867->g_10,(void*)0,(void*)0,&p_867->g_10,&p_867->g_10},{(void*)0,&p_867->g_10,&p_867->g_10,&p_867->g_10,(void*)0,(void*)0,&p_867->g_10,&p_867->g_10},{(void*)0,&p_867->g_10,&p_867->g_10,&p_867->g_10,(void*)0,(void*)0,&p_867->g_10,&p_867->g_10}};
            int8_t l_18 = 3L;
            int32_t **l_379 = &l_15[4][0];
            int32_t ***l_378 = &l_379;
            int32_t l_385 = 0x5E55648FL;
            int32_t l_386 = 0L;
            int i, j;
            l_11--;
            p_867->g_22++;
            for (l_17 = 0; (l_17 != 6); l_17 = safe_add_func_int8_t_s_s(l_17, 1))
            { /* block id: 14 */
                (*l_9) = l_16;
            }
            (**l_39) = (func_27(((safe_rshift_func_uint8_t_u_s(p_867->g_3, ((safe_sub_func_uint64_t_u_u(18446744073709551610UL, ((VECTOR(int64_t, 2))(p_867->g_37.s17)).odd)) , (safe_unary_minus_func_uint16_t_u(0x4D0CL))))) , (&p_867->g_4 != (p_867->g_41[8][1] = l_39))), (((*l_40) ^= ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(p_867->g_43.yx)) > ((VECTOR(int32_t, 16))(l_44.xzxwyxzxyzzzwywz)).s98))).even) > func_45(func_50(((((VECTOR(uint16_t, 8))(func_53(p_867->g_3, ((((((~((((-1L) > (safe_sub_func_uint64_t_u_u(func_60(((l_66 == ((*l_378) = func_67(p_867->g_10, p_867))) != 18446744073709551606UL), p_867->g_250.y, p_867->g_250.x, p_867->g_353, p_867->g_122.s1, p_867), 0x141CD03C4DA013A0L))) | p_867->g_187[6][3][3]) < l_385)) & p_867->g_162.x) , 0x464A109D7277B6C0L) != p_867->g_162.w) , GROUP_DIVERGE(2, 1)) , &p_867->g_353), l_386, l_66, p_867))).s2 , (void*)0) == l_66), p_867->g_203.y, p_867), l_548, p_867->g_207.s5, &l_40, p_867)), l_556, l_548, (*l_39), p_867) ^ 0x8B15C2E0B1B248F9L);
        }
    }
    else
    { /* block id: 277 */
        int32_t *l_716 = (void*)0;
        int32_t l_725 = 0x742E2C64L;
        int32_t l_727 = 0x7DD34B2DL;
        int32_t l_730 = 0x69EE284FL;
        int32_t l_733 = 0x02CB25C7L;
        int32_t l_734[6][3];
        int16_t l_741 = 0x4571L;
        int8_t *l_760[7][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
        int8_t **l_759 = &l_760[4][0];
        uint32_t **l_770 = (void*)0;
        uint32_t l_809 = 0UL;
        uint16_t **l_839 = &p_867->g_838;
        int64_t *l_840 = (void*)0;
        int64_t *l_841 = (void*)0;
        int64_t *l_842 = &p_867->g_3;
        uint8_t l_843 = 0xC2L;
        int32_t *l_844 = &l_736;
        VECTOR(uint8_t, 16) l_854 = (VECTOR(uint8_t, 16))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 249UL), 249UL), 249UL, 6UL, 249UL, (VECTOR(uint8_t, 2))(6UL, 249UL), (VECTOR(uint8_t, 2))(6UL, 249UL), 6UL, 249UL, 6UL, 249UL);
        int16_t *l_863 = (void*)0;
        int16_t *l_864[7][5] = {{&p_867->g_246,(void*)0,(void*)0,&p_867->g_246,&p_867->g_246},{&p_867->g_246,(void*)0,(void*)0,&p_867->g_246,&p_867->g_246},{&p_867->g_246,(void*)0,(void*)0,&p_867->g_246,&p_867->g_246},{&p_867->g_246,(void*)0,(void*)0,&p_867->g_246,&p_867->g_246},{&p_867->g_246,(void*)0,(void*)0,&p_867->g_246,&p_867->g_246},{&p_867->g_246,(void*)0,(void*)0,&p_867->g_246,&p_867->g_246},{&p_867->g_246,(void*)0,(void*)0,&p_867->g_246,&p_867->g_246}};
        int i, j;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 3; j++)
                l_734[i][j] = (-1L);
        }
        for (p_867->g_377 = 18; (p_867->g_377 >= 3); p_867->g_377--)
        { /* block id: 280 */
            int32_t l_729 = 0x31FAE6F7L;
            int8_t l_822 = (-1L);
            int32_t l_824 = 0x13C5B532L;
            int32_t l_825 = (-5L);
            int32_t l_827[1];
            int8_t l_831 = (-5L);
            int i;
            for (i = 0; i < 1; i++)
                l_827[i] = 1L;
            (1 + 1);
        }
        (*p_867->g_153) &= 0x259523EAL;
        (*l_844) &= (l_725 |= ((**l_66) = (((((**l_66) == ((((**l_66) >= ((VECTOR(uint16_t, 8))(p_867->g_834.yyxyxxxy)).s6) > ((safe_lshift_func_uint8_t_u_u(((((~l_837) >= 0UL) < (p_867->g_82.x = ((*l_842) = (((**l_66) | (((*l_839) = p_867->g_838) != &p_867->g_392)) > 0xCE7DABDDL)))) > (((**l_66) != l_843) , 0L)), 4)) && 9UL)) != (**l_66))) ^ 0x6DB4L) || p_867->g_828) <= (*p_867->g_506))));
        (*l_66) = (l_716 = func_50(((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(249UL, (((*p_867->g_712) >= (((l_865 |= ((((((VECTOR(int8_t, 16))(3L, 1L, (-1L), 0x7AL, ((VECTOR(int8_t, 8))(((*p_867->g_247) | ((safe_unary_minus_func_int16_t_s(p_867->g_330)) ^ ((*l_844) ^ (*p_867->g_712)))), 1L, (((FAKE_DIVERGE(p_867->group_0_offset, get_group_id(0), 10) == (((VECTOR(uint8_t, 8))(l_854.s6a558b37)).s5 <= (l_844 != &p_867->g_762))) & (((p_867->g_365 = ((l_862 = ((safe_mul_func_uint8_t_u_u((((((**l_66) != ((safe_sub_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 4))((-2L), 0L, 0x5EL, 0x6FL)).x, l_861)), (*l_844))) == 248UL)) < (**l_66)) >= (*p_867->g_247)) > p_867->g_250.y), p_867->g_250.y)) , (void*)0)) != (void*)0)) || (*p_867->g_247)) <= (-1L))) & (*p_867->g_506)), 0x36L, ((VECTOR(int8_t, 4))((-2L))))), (*p_867->g_247), ((VECTOR(int8_t, 2))(0x6DL)), 0x2CL)).s0 , GROUP_DIVERGE(2, 1)) & (***p_867->g_543)) > (*l_844)) >= 65535UL)) , 0x6DL) < p_867->g_401.z)) ^ (*l_844)), 1UL, 0x16L, p_867->g_686.s2, ((VECTOR(uint8_t, 2))(1UL)), 0x21L)).s1, (**l_66))) , 0x6CF938CEL), (**l_66), p_867));
    }
    (**p_867->g_152) = ((void*)0 != l_866);
    return p_867->g_162.w;
}


/* ------------------------------------------ */
/* 
 * reads : p_867->g_377 p_867->g_247 p_867->g_248 p_867->g_187 p_867->g_365 p_867->g_401 p_867->g_203 p_867->g_591 p_867->g_506 p_867->g_392 p_867->g_599 p_867->g_70 p_867->g_644 p_867->g_250 p_867->g_151 p_867->g_152 p_867->g_153 p_867->g_154 p_867->g_194 p_867->g_195 p_867->g_182 p_867->g_37 p_867->g_352 p_867->g_686 p_867->g_697 p_867->g_10 p_867->g_354 p_867->g_355 p_867->g_259 p_867->g_162 p_867->g_544 p_867->g_42 p_867->g_5
 * writes: p_867->g_377 p_867->g_411 p_867->g_365 p_867->g_599 p_867->g_401 p_867->g_154 p_867->g_429 p_867->g_392 p_867->g_644 p_867->g_42 p_867->g_153 p_867->g_187 p_867->g_712 p_867->g_4
 */
int64_t  func_27(int64_t  p_28, int64_t  p_29, uint16_t  p_30, int32_t ** p_31, int32_t * p_32, struct S0 * p_867)
{ /* block id: 233 */
    int32_t ***l_565[8] = {(void*)0,&p_867->g_41[8][1],(void*)0,(void*)0,&p_867->g_41[8][1],(void*)0,(void*)0,&p_867->g_41[8][1]};
    uint16_t *l_578 = &p_867->g_392;
    int64_t *l_579 = (void*)0;
    int64_t *l_580 = (void*)0;
    int64_t *l_581 = (void*)0;
    int64_t *l_582 = (void*)0;
    int64_t *l_583 = (void*)0;
    int8_t l_584 = 1L;
    int8_t *l_585 = (void*)0;
    int8_t *l_586 = &p_867->g_365;
    uint8_t *l_606 = &p_867->g_187[1][2][2];
    VECTOR(uint64_t, 4) l_642 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x073781FD6F89C967L), 0x073781FD6F89C967L);
    VECTOR(uint32_t, 8) l_647 = (VECTOR(uint32_t, 8))(0xA086690EL, (VECTOR(uint32_t, 4))(0xA086690EL, (VECTOR(uint32_t, 2))(0xA086690EL, 0UL), 0UL), 0UL, 0xA086690EL, 0UL);
    int32_t l_657[1][7] = {{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}};
    int64_t ***l_676 = &p_867->g_354;
    int64_t l_711 = 0x36EF2C2091BC0E0BL;
    uint8_t l_713 = 0xCFL;
    int i, j;
    for (p_867->g_377 = 29; (p_867->g_377 == 15); p_867->g_377 = safe_sub_func_int8_t_s_s(p_867->g_377, 1))
    { /* block id: 236 */
        return p_28;
    }
    if ((safe_lshift_func_uint8_t_u_u((+(safe_lshift_func_int16_t_s_s((4294967295UL == (safe_mod_func_int64_t_s_s((&p_31 == l_565[6]), (safe_add_func_uint8_t_u_u(((*p_867->g_247) >= 0x03L), ((!((((((*l_586) |= (safe_mul_func_uint16_t_u_u((!(safe_mul_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u(((p_867->g_411.x = (safe_sub_func_uint16_t_u_u(((void*)0 == l_578), 0xE574L))) < (p_28 = (l_584 != p_867->g_187[1][2][2]))), FAKE_DIVERGE(p_867->global_1_offset, get_global_id(1), 10))), p_30))), 65532UL))) < 1L) && 0L) >= 0x56L) , 0x70B3L)) >= p_867->g_401.y)))))), p_867->g_203.x))), 1)))
    { /* block id: 242 */
        uint16_t l_595 = 65535UL;
        uint8_t *l_605 = (void*)0;
        VECTOR(int32_t, 8) l_608 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x642207A0L), 0x642207A0L), 0x642207A0L, 0L, 0x642207A0L);
        VECTOR(uint32_t, 8) l_618 = (VECTOR(uint32_t, 8))(0xD0E35134L, (VECTOR(uint32_t, 4))(0xD0E35134L, (VECTOR(uint32_t, 2))(0xD0E35134L, 0x5D1529B3L), 0x5D1529B3L), 0x5D1529B3L, 0xD0E35134L, 0x5D1529B3L);
        VECTOR(uint16_t, 8) l_625 = (VECTOR(uint16_t, 8))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 1UL), 1UL), 1UL, 5UL, 1UL);
        VECTOR(uint64_t, 16) l_638 = (VECTOR(uint64_t, 16))(4UL, (VECTOR(uint64_t, 4))(4UL, (VECTOR(uint64_t, 2))(4UL, 0x34456AFB5571E1BDL), 0x34456AFB5571E1BDL), 0x34456AFB5571E1BDL, 4UL, 0x34456AFB5571E1BDL, (VECTOR(uint64_t, 2))(4UL, 0x34456AFB5571E1BDL), (VECTOR(uint64_t, 2))(4UL, 0x34456AFB5571E1BDL), 4UL, 0x34456AFB5571E1BDL, 4UL, 0x34456AFB5571E1BDL);
        VECTOR(uint64_t, 2) l_641 = (VECTOR(uint64_t, 2))(0xA23328F8410CB0A2L, 0xFCD59AAA3C4149E1L);
        VECTOR(uint16_t, 8) l_652 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x7EE8L), 0x7EE8L), 0x7EE8L, 1UL, 0x7EE8L);
        VECTOR(uint8_t, 2) l_653 = (VECTOR(uint8_t, 2))(247UL, 6UL);
        int16_t **l_656[7];
        int64_t l_658 = (-1L);
        VECTOR(uint16_t, 4) l_665 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xB441L), 0xB441L);
        VECTOR(uint16_t, 16) l_671 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x9212L), 0x9212L), 0x9212L, 65535UL, 0x9212L, (VECTOR(uint16_t, 2))(65535UL, 0x9212L), (VECTOR(uint16_t, 2))(65535UL, 0x9212L), 65535UL, 0x9212L, 65535UL, 0x9212L);
        int64_t l_678 = 0x5320BADA56C28672L;
        uint64_t *l_688 = (void*)0;
        uint64_t *l_689 = (void*)0;
        uint64_t *l_690[3];
        uint32_t *l_708[4][3][1] = {{{&p_867->g_259[0]},{&p_867->g_259[0]},{&p_867->g_259[0]}},{{&p_867->g_259[0]},{&p_867->g_259[0]},{&p_867->g_259[0]}},{{&p_867->g_259[0]},{&p_867->g_259[0]},{&p_867->g_259[0]}},{{&p_867->g_259[0]},{&p_867->g_259[0]},{&p_867->g_259[0]}}};
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_656[i] = &p_867->g_327;
        for (i = 0; i < 3; i++)
            l_690[i] = (void*)0;
        for (p_28 = (-28); (p_28 > (-16)); p_28 = safe_add_func_uint32_t_u_u(p_28, 5))
        { /* block id: 245 */
            uint64_t *l_598 = &p_867->g_599;
            int32_t l_604 = 0L;
            VECTOR(uint64_t, 2) l_643 = (VECTOR(uint64_t, 2))(0UL, 8UL);
            VECTOR(uint32_t, 2) l_666 = (VECTOR(uint32_t, 2))(0x818409A4L, 4294967295UL);
            int64_t l_677 = (-1L);
            int i;
            if ((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(p_867->g_591.xy)).xxxxyxyx + ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))(18446744073709551606UL, ((p_30 && (safe_unary_minus_func_uint32_t_u((((p_30 || (*p_867->g_506)) == p_30) , (6L <= l_595))))) , (safe_mod_func_uint8_t_u_u((((++(*l_598)) == ((((safe_rshift_func_int16_t_s_s(l_595, 15)) < l_604) , l_605) == l_606)) == 1L), p_28))), 18446744073709551615UL, 0x03EB376952F2A983L, 0x6ED5CB378DD6CFB4L, l_595, 0x2667B60BBDA926A1L, 0x4EB348378D148999L)).hi + ((VECTOR(uint64_t, 4))(1UL))))).wxxwxyww))).s6 < 1L))
            { /* block id: 247 */
                VECTOR(int32_t, 2) l_607 = (VECTOR(int32_t, 2))(0x61540D1EL, (-3L));
                uint32_t *l_619 = (void*)0;
                uint32_t *l_620[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_620[i] = &p_867->g_259[0];
                l_658 &= (GROUP_DIVERGE(2, 1) , ((+(p_30 , ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 8))(l_607.yyxxyxyx)).odd, ((VECTOR(int32_t, 16))(l_608.s3037757527533617)).s421c))).odd && ((VECTOR(int32_t, 16))(0L, (-1L), (safe_rshift_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((p_28 || (safe_unary_minus_func_uint32_t_u((safe_mul_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u(p_867->g_70.w, (0xFB57L != ((p_867->g_401.x = ((VECTOR(uint32_t, 2))(l_618.s66)).odd) <= (0x0FCC8C49L < (0x3DB73180L || (safe_div_func_int8_t_s_s((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 4))(l_625.s3746)), ((VECTOR(uint16_t, 2))(65535UL, 1UL)).xxxy))).even * ((VECTOR(uint16_t, 16))(65535UL, (l_604 ^ (((((safe_sub_func_int8_t_s_s(((*p_32) >= ((p_867->g_599++) <= (((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(18446744073709551610UL, 0x7D4AEC122A07B4FEL)), 18446744073709551611UL, 18446744073709551613UL)) + ((VECTOR(uint64_t, 16))(l_638.s64c67e177b8f9271)).sdd0f))).zywwxyzw + ((VECTOR(uint64_t, 4))(0xD7BE51798A391E6DL, ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 2))(l_641.xx)), ((VECTOR(uint64_t, 8))(l_642.xywxxwyy)).s13, ((VECTOR(uint64_t, 2))(l_643.xx))))) + ((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 2))(p_867->g_644.ww)).yxyyyxxyyxxxxxyy, ((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 16))(safe_clamp_func(VECTOR(uint32_t, 16),uint32_t,((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(uint32_t, 16))(l_647.s5030162232730206)).s08ef, ((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 8))(l_652.s52453276)).hi))) + ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 4))(l_653.yxxy)).xwyywzxy, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 2))(0x78L, 1UL)), (uint8_t)l_643.x))).yyxxxxxxxyxyxxyy, ((VECTOR(uint8_t, 16))(0x46L))))).s25 + ((VECTOR(uint8_t, 2))(0xEBL))))).xxxyyyyx))), 0x0472L, p_30, ((VECTOR(uint16_t, 4))(0x5682L)), 0x27B9L, 65535UL)).sa6ab))).even + ((VECTOR(uint16_t, 2))(0UL))))), ((VECTOR(uint16_t, 2))(0UL))))).xxyx))).even * ((VECTOR(uint32_t, 2))(4294967291UL))))).xyxyxyyxyxyxxxxy, (uint32_t)l_607.y, (uint32_t)p_867->g_250.y))).se7, ((VECTOR(uint32_t, 2))(1UL))))).xxxyxxyyyxxxyxxx))).s47))), 1UL)).zwxyyzwx))).s25 + ((VECTOR(uint64_t, 2))(1UL))))).even | p_30))), FAKE_DIVERGE(p_867->group_1_offset, get_group_id(1), 10))) , l_656[6]) == &p_867->g_327) , l_641.y) , (*p_867->g_506))), 65533UL, ((VECTOR(uint16_t, 2))(0x6C8AL)), 65530UL, ((VECTOR(uint16_t, 2))(0xF4A2L)), 65535UL, ((VECTOR(uint16_t, 4))(3UL)), ((VECTOR(uint16_t, 2))(0xDFF3L)), 0xB020L)).s10))), 0xE8C1L, 65535UL)).y != l_657[0][4]), l_607.y)))))))) == GROUP_DIVERGE(1, 1)), l_604))))) == (-5L)), p_28)), 4)), (-5L), ((VECTOR(int32_t, 4))(0x6D57C63DL)), (-5L), ((VECTOR(int32_t, 4))(0x0C8A7DC4L)), (***p_867->g_151), 0x246D9922L, 0L)).sa2))).lo)) , 0x0B341833L));
                if (l_643.y)
                    break;
                (**p_867->g_152) = ((VECTOR(int32_t, 2))(1L, 0x4A473F93L)).even;
            }
            else
            { /* block id: 253 */
                if ((*p_32))
                    break;
            }
            l_604 |= (safe_sub_func_int32_t_s_s(((p_867->g_429.s8 = (safe_div_func_int16_t_s_s((((safe_add_func_int8_t_s_s(l_625.s5, (1L & ((*l_598) |= (*p_867->g_194))))) & ((VECTOR(uint16_t, 8))(l_665.zzwyxwyy)).s5) >= l_643.y), l_625.s3))) <= (((p_29 , ((VECTOR(uint32_t, 8))(l_666.yyyyyyxy)).s5) == (safe_rshift_func_uint16_t_u_s((safe_div_func_int8_t_s_s(p_867->g_203.y, ((((VECTOR(uint16_t, 2))(l_671.sbb)).lo >= (safe_add_func_uint64_t_u_u((safe_div_func_uint8_t_u_u((((+(l_676 != (void*)0)) ^ 0x94L) ^ 0x1FECBED9CA6E67C9L), p_867->g_182.y)), l_677))) && p_867->g_37.s4))), l_658))) , 65527UL)), (*p_32)));
            if ((*p_867->g_153))
                continue;
        }
        (*p_32) |= l_678;
        (*p_867->g_5) = func_50(p_867->g_352, (safe_rshift_func_int16_t_s_s((p_867->g_429.s1 = ((((safe_unary_minus_func_uint8_t_u(((+((p_867->g_712 = func_50(((p_30 ^= (++(*p_867->g_506))) , (safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(p_867->g_686.s70176457)).s6, (safe_unary_minus_func_int16_t_s((((p_867->g_644.z++) , (((safe_add_func_int8_t_s_s((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 8))(p_867->g_697.s62abd31e)).s1, ((safe_rshift_func_uint16_t_u_u(FAKE_DIVERGE(p_867->global_2_offset, get_global_id(2), 10), 1)) <= (((0x09ABCE72C2782FC4L ^ ((*p_867->g_506) > 7UL)) && (~(p_28 , (p_867->g_599 &= p_867->g_70.z)))) == (safe_add_func_uint32_t_u_u((l_665.z <= ((*p_32) = ((((safe_rshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_s((safe_mod_func_uint32_t_u_u((p_867->g_401.w = FAKE_DIVERGE(p_867->local_0_offset, get_local_id(0), 10)), ((safe_mul_func_int8_t_s_s(0x12L, p_867->g_10)) & (*p_32)))), 6)), 1)) && p_29) , 1L) ^ (*p_32)))), l_665.z)))))), p_29)) ^ l_711) && p_29)) <= 0x95L)))))), l_652.s2, p_867)) != p_32)) <= l_652.s7))) & 0x5DL) ^ l_713) , p_28)), 4)), p_867);
    }
    else
    { /* block id: 271 */
        (**p_867->g_152) |= 0x5BD4EB39L;
    }
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_867->g_246 p_867->g_544 p_867->g_543
 * writes: p_867->g_246 p_867->g_42
 */
uint32_t  func_45(int32_t * p_46, int32_t ** p_47, uint64_t  p_48, int32_t ** p_49, struct S0 * p_867)
{ /* block id: 222 */
    int32_t *l_551[2];
    int i;
    for (i = 0; i < 2; i++)
        l_551[i] = &p_867->g_10;
    for (p_867->g_246 = 1; (p_867->g_246 > (-15)); p_867->g_246 = safe_sub_func_uint16_t_u_u(p_867->g_246, 1))
    { /* block id: 225 */
        uint32_t l_552 = 0xCBD636CAL;
        int32_t **l_555[10][10] = {{&l_551[1],&l_551[0],&l_551[0],&l_551[1],&l_551[1],&l_551[1],&l_551[0],&l_551[1],(void*)0,&l_551[1]},{&l_551[1],&l_551[0],&l_551[0],&l_551[1],&l_551[1],&l_551[1],&l_551[0],&l_551[1],(void*)0,&l_551[1]},{&l_551[1],&l_551[0],&l_551[0],&l_551[1],&l_551[1],&l_551[1],&l_551[0],&l_551[1],(void*)0,&l_551[1]},{&l_551[1],&l_551[0],&l_551[0],&l_551[1],&l_551[1],&l_551[1],&l_551[0],&l_551[1],(void*)0,&l_551[1]},{&l_551[1],&l_551[0],&l_551[0],&l_551[1],&l_551[1],&l_551[1],&l_551[0],&l_551[1],(void*)0,&l_551[1]},{&l_551[1],&l_551[0],&l_551[0],&l_551[1],&l_551[1],&l_551[1],&l_551[0],&l_551[1],(void*)0,&l_551[1]},{&l_551[1],&l_551[0],&l_551[0],&l_551[1],&l_551[1],&l_551[1],&l_551[0],&l_551[1],(void*)0,&l_551[1]},{&l_551[1],&l_551[0],&l_551[0],&l_551[1],&l_551[1],&l_551[1],&l_551[0],&l_551[1],(void*)0,&l_551[1]},{&l_551[1],&l_551[0],&l_551[0],&l_551[1],&l_551[1],&l_551[1],&l_551[0],&l_551[1],(void*)0,&l_551[1]},{&l_551[1],&l_551[0],&l_551[0],&l_551[1],&l_551[1],&l_551[1],&l_551[0],&l_551[1],(void*)0,&l_551[1]}};
        int i, j;
        l_551[1] = ((*p_867->g_544) = (*p_49));
        l_552--;
        l_551[1] = ((**p_867->g_543) = (*p_49));
    }
    return p_48;
}


/* ------------------------------------------ */
/* 
 * reads : p_867->g_392 p_867->g_151 p_867->g_152 p_867->g_153 p_867->g_10 p_867->g_475 p_867->g_377 p_867->g_187 p_867->g_352 p_867->g_354 p_867->g_355 p_867->g_259 p_867->g_429 p_867->g_411 p_867->g_207 p_867->g_203 p_867->g_162 p_867->g_506 p_867->g_518 p_867->g_542 p_867->g_250 p_867->g_122 p_867->g_544 p_867->g_42
 * writes: p_867->g_42 p_867->g_153 p_867->g_187 p_867->g_506 p_867->g_392
 */
int32_t * func_50(int32_t  p_51, uint32_t  p_52, struct S0 * p_867)
{ /* block id: 188 */
    VECTOR(int32_t, 4) l_452 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-7L)), (-7L));
    int32_t *l_453[9][4][4] = {{{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0}},{{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0}},{{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0}},{{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0}},{{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0}},{{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0}},{{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0}},{{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0}},{{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0},{(void*)0,&p_867->g_10,&p_867->g_10,(void*)0}}};
    int32_t l_454 = 0x44AF3BFAL;
    int32_t **l_456 = (void*)0;
    int32_t ***l_455 = &l_456;
    int32_t ****l_457 = &l_455;
    VECTOR(int32_t, 16) l_477 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int32_t, 2))(0L, (-1L)), (VECTOR(int32_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L));
    VECTOR(int32_t, 2) l_478 = (VECTOR(int32_t, 2))((-7L), 0x00DF2256L);
    VECTOR(int32_t, 2) l_483 = (VECTOR(int32_t, 2))(0x0BE5563CL, 0x3557CEB5L);
    uint16_t *l_505 = &p_867->g_392;
    int32_t l_507 = 0x4D4D7072L;
    uint16_t l_508 = 65533UL;
    uint16_t *l_513 = &l_508;
    VECTOR(uint64_t, 4) l_525 = (VECTOR(uint64_t, 4))(0xE3678C76CB069B19L, (VECTOR(uint64_t, 2))(0xE3678C76CB069B19L, 1UL), 1UL);
    VECTOR(uint64_t, 2) l_526 = (VECTOR(uint64_t, 2))(0x2C9A3966A41644FAL, 0x91810301DBBE6E4EL);
    VECTOR(uint64_t, 16) l_533 = (VECTOR(uint64_t, 16))(0x52FA3FE3B084C35EL, (VECTOR(uint64_t, 4))(0x52FA3FE3B084C35EL, (VECTOR(uint64_t, 2))(0x52FA3FE3B084C35EL, 0UL), 0UL), 0UL, 0x52FA3FE3B084C35EL, 0UL, (VECTOR(uint64_t, 2))(0x52FA3FE3B084C35EL, 0UL), (VECTOR(uint64_t, 2))(0x52FA3FE3B084C35EL, 0UL), 0x52FA3FE3B084C35EL, 0UL, 0x52FA3FE3B084C35EL, 0UL);
    VECTOR(int64_t, 2) l_534 = (VECTOR(int64_t, 2))(0x7F21701322652D8BL, 0x74BB05A492B7BB6DL);
    VECTOR(int64_t, 16) l_535 = (VECTOR(int64_t, 16))(0x7295EE28AC2A3BFAL, (VECTOR(int64_t, 4))(0x7295EE28AC2A3BFAL, (VECTOR(int64_t, 2))(0x7295EE28AC2A3BFAL, 0x49F5C6934721F66EL), 0x49F5C6934721F66EL), 0x49F5C6934721F66EL, 0x7295EE28AC2A3BFAL, 0x49F5C6934721F66EL, (VECTOR(int64_t, 2))(0x7295EE28AC2A3BFAL, 0x49F5C6934721F66EL), (VECTOR(int64_t, 2))(0x7295EE28AC2A3BFAL, 0x49F5C6934721F66EL), 0x7295EE28AC2A3BFAL, 0x49F5C6934721F66EL, 0x7295EE28AC2A3BFAL, 0x49F5C6934721F66EL);
    VECTOR(int64_t, 16) l_536 = (VECTOR(int64_t, 16))(0x1B9BFCA650550E37L, (VECTOR(int64_t, 4))(0x1B9BFCA650550E37L, (VECTOR(int64_t, 2))(0x1B9BFCA650550E37L, 1L), 1L), 1L, 0x1B9BFCA650550E37L, 1L, (VECTOR(int64_t, 2))(0x1B9BFCA650550E37L, 1L), (VECTOR(int64_t, 2))(0x1B9BFCA650550E37L, 1L), 0x1B9BFCA650550E37L, 1L, 0x1B9BFCA650550E37L, 1L);
    VECTOR(int64_t, 8) l_537 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x6631CF6F3E46595AL), 0x6631CF6F3E46595AL), 0x6631CF6F3E46595AL, 1L, 0x6631CF6F3E46595AL);
    int32_t l_545 = 0x24046888L;
    VECTOR(int32_t, 8) l_546 = (VECTOR(int32_t, 8))(0x509F15ACL, (VECTOR(int32_t, 4))(0x509F15ACL, (VECTOR(int32_t, 2))(0x509F15ACL, 0x6103F8B2L), 0x6103F8B2L), 0x6103F8B2L, 0x509F15ACL, 0x6103F8B2L);
    int32_t *l_547 = &l_507;
    int i, j, k;
    l_454 ^= ((VECTOR(int32_t, 4))(l_452.zwwx)).z;
    if (((((VECTOR(int16_t, 8))(((1UL & (((*l_457) = l_455) == &p_867->g_152)) != ((void*)0 == &p_867->g_151)), ((VECTOR(int16_t, 2))(0L, 0L)), 0x0C1CL, ((VECTOR(int16_t, 2))((-1L), (-6L))), 0L, (-1L))).s7 ^ p_867->g_392) > p_52))
    { /* block id: 191 */
        uint64_t l_458[9];
        int i;
        for (i = 0; i < 9; i++)
            l_458[i] = 0x49FB0AD4809C7B16L;
        l_458[2] ^= 0x387DE84BL;
    }
    else
    { /* block id: 193 */
        uint32_t l_459[8][3] = {{0x1F97182AL,0x67DA1060L,4294967291UL},{0x1F97182AL,0x67DA1060L,4294967291UL},{0x1F97182AL,0x67DA1060L,4294967291UL},{0x1F97182AL,0x67DA1060L,4294967291UL},{0x1F97182AL,0x67DA1060L,4294967291UL},{0x1F97182AL,0x67DA1060L,4294967291UL},{0x1F97182AL,0x67DA1060L,4294967291UL},{0x1F97182AL,0x67DA1060L,4294967291UL}};
        int32_t *l_462 = (void*)0;
        int32_t **l_463[2][7][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
        VECTOR(int32_t, 2) l_473 = (VECTOR(int32_t, 2))(0x1EC31979L, 0L);
        int16_t **l_495 = &p_867->g_327;
        int i, j, k;
        ++l_459[4][2];
lbl_469:
        p_867->g_42[4] = l_462;
        if (p_52)
        { /* block id: 196 */
            uint32_t l_464[9] = {0x7F42DCEDL,0x7F42DCEDL,0x7F42DCEDL,0x7F42DCEDL,0x7F42DCEDL,0x7F42DCEDL,0x7F42DCEDL,0x7F42DCEDL,0x7F42DCEDL};
            int i;
            --l_464[7];
        }
        else
        { /* block id: 198 */
            VECTOR(int32_t, 16) l_472 = (VECTOR(int32_t, 16))(0x6E848DA0L, (VECTOR(int32_t, 4))(0x6E848DA0L, (VECTOR(int32_t, 2))(0x6E848DA0L, 0x141B5128L), 0x141B5128L), 0x141B5128L, 0x6E848DA0L, 0x141B5128L, (VECTOR(int32_t, 2))(0x6E848DA0L, 0x141B5128L), (VECTOR(int32_t, 2))(0x6E848DA0L, 0x141B5128L), 0x6E848DA0L, 0x141B5128L, 0x6E848DA0L, 0x141B5128L);
            VECTOR(int32_t, 8) l_474 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
            VECTOR(int32_t, 8) l_476 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x6857EF30L), 0x6857EF30L), 0x6857EF30L, 0L, 0x6857EF30L);
            VECTOR(int32_t, 16) l_479 = (VECTOR(int32_t, 16))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0x16EA7130L), 0x16EA7130L), 0x16EA7130L, (-6L), 0x16EA7130L, (VECTOR(int32_t, 2))((-6L), 0x16EA7130L), (VECTOR(int32_t, 2))((-6L), 0x16EA7130L), (-6L), 0x16EA7130L, (-6L), 0x16EA7130L);
            int64_t *l_482 = (void*)0;
            uint32_t *l_486 = (void*)0;
            uint32_t **l_485 = &l_486;
            uint32_t ***l_484 = &l_485;
            uint8_t *l_487 = &p_867->g_187[5][2][1];
            int32_t *l_490 = (void*)0;
            int i;
            for (l_454 = (-13); (l_454 <= (-14)); l_454 = safe_sub_func_int16_t_s_s(l_454, 2))
            { /* block id: 201 */
                (*p_867->g_152) = (**p_867->g_151);
                if (l_454)
                    goto lbl_469;
                (*p_867->g_152) = (**p_867->g_151);
            }
            (*l_484) = ((safe_div_func_uint32_t_u_u(p_867->g_10, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(l_472.s38)) & ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(l_473.yxxxyxyy)) && ((VECTOR(int32_t, 8))(l_474.s56402411))))).s6031405355621611, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(p_867->g_475.wzyzxwwzwzzxzzxy)).even == ((VECTOR(int32_t, 4))(l_476.s6767)).xyyyxxxw))).lo, ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 8))(l_477.s762057ec)).odd)))))), ((VECTOR(int32_t, 2))(l_478.yx)), ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 4))(l_479.sd26d)).zwyywywy, (int32_t)(safe_rshift_func_int16_t_s_s((((void*)0 == l_482) , 3L), 5))))), 0L, 0x1598130AL)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_483.xy)), (-9L), 1L)).yzyzywxzzzxywwwx))).s37))).hi)) , (void*)0);
            l_472.sb |= (p_867->g_377 != (((*l_487)--) ^ p_867->g_352));
            l_453[8][0][1] = (l_490 = &p_867->g_10);
        }
        l_507 |= (((*p_867->g_354) != (p_867->g_259[0] , ((((VECTOR(uint16_t, 8))(0x65E5L, (safe_sub_func_int32_t_s_s(p_51, (safe_rshift_func_uint8_t_u_u(((((l_495 != l_495) , (safe_mod_func_uint8_t_u_u(p_867->g_429.s0, (safe_sub_func_int8_t_s_s((p_867->g_411.x == ((((safe_unary_minus_func_int8_t_s(((GROUP_DIVERGE(0, 1) | ((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 2))(8UL, 3UL)).yyyyyyxx, ((VECTOR(uint64_t, 2))(0UL, 18446744073709551614UL)).yyyxyxxy))).s5) == (safe_lshift_func_uint16_t_u_s(65529UL, 11))))) , (p_867->g_506 = l_505)) == (void*)0) == 0xDD69L)), p_867->g_429.se))))) | p_867->g_207.s6) , GROUP_DIVERGE(2, 1)), 3)))), ((VECTOR(uint16_t, 4))(65531UL)), 0xB019L, 65530UL)).s4 && p_52) , (void*)0))) , p_51);
    }
    l_508 = (((p_867->g_203.y || 0x1E043D835515C17DL) == p_867->g_162.w) >= ((**p_867->g_151) == (**p_867->g_151)));
    l_546.s5 = ((+(p_52 <= (safe_div_func_uint16_t_u_u(1UL, ((*l_513) = (--(*p_867->g_506))))))) && (safe_add_func_int8_t_s_s((safe_sub_func_uint16_t_u_u(p_52, ((VECTOR(int16_t, 16))(p_867->g_518.zxxxwxwzywywyxwz)).s9)), (safe_rshift_func_int16_t_s_u(((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))(l_525.xzwyyxzzxxxyxxww)).s08fc + ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_526.yx)), 18446744073709551615UL, 0UL))))).yyzxwyyy, ((VECTOR(uint64_t, 8))(0xF35A9F8DF216A031L, ((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),VECTOR(uint64_t, 2),((VECTOR(uint64_t, 16))((!((VECTOR(uint64_t, 16))(0xE1A5D5CF19448260L, 18446744073709551615UL, ((VECTOR(uint64_t, 2))(l_533.s26)), 6UL, (((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 16))(l_534.yyxyyyyyyyxxxyxx)), ((VECTOR(int64_t, 16))(rhadd(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 4))(l_535.sb601)).even, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(l_536.s0b5a0adafcad7732)).s71 != ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 4))((-1L), ((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),int64_t,((VECTOR(int64_t, 8))(0x4848B0DD09B7344CL, 0L, ((VECTOR(int64_t, 4))(l_537.s4223)), (-1L), 0x5F379B217A7B1316L)).s4137166437430071, (int64_t)((safe_mod_func_int16_t_s_s(p_52, (safe_lshift_func_uint16_t_u_u(((l_457 = p_867->g_542[1][2][0]) == &l_455), ((*l_513) |= p_52))))) <= ((l_453[4][2][0] == ((((p_52 == 1UL) == 0x8E64CF1AL) , l_545) , (void*)0)) & (-2L))), (int64_t)0L))).even && ((VECTOR(int64_t, 8))(1L))))).s35, ((VECTOR(int64_t, 2))(0x7714856145AB958EL)), ((VECTOR(int64_t, 2))(1L))))), 0x4F34FFF55D8F137AL)).wzxyxzywyzzxzzyw, ((VECTOR(int64_t, 16))(0L)), ((VECTOR(int64_t, 16))((-8L)))))).sb54d ^ ((VECTOR(int64_t, 4))(0x01360F38D8546BD9L))))).odd)))))).yxxyyyyx, ((VECTOR(int64_t, 8))(0x1603056855E7C0B1L))))).s2020146370162630, ((VECTOR(int64_t, 16))(8L))))).s6bd7 & ((VECTOR(int64_t, 4))((-6L)))))).yyzxxxwxwzwywwyz, ((VECTOR(int64_t, 16))(0x75CFF77811052F33L)))))))).s3 , p_867->g_250.x), ((VECTOR(uint64_t, 2))(0x7606BC38FAE6C762L)), 0xE92F29EFDFE17EBFL, 18446744073709551613UL, ((VECTOR(uint64_t, 2))(3UL)), p_52, ((VECTOR(uint64_t, 2))(0x597F3835EDBE355BL)), 7UL)).sc), 18446744073709551611UL, 0x64A190C865212C2AL, 0xECDCBC6B9BE7388BL, 18446744073709551610UL, p_867->g_122.s0, p_52, ((VECTOR(uint64_t, 8))(0xBA4E8AA55048D588L)), 0x7EAB73470C4EF3FDL)).sa0, ((VECTOR(uint64_t, 2))(7UL)), ((VECTOR(uint64_t, 2))(18446744073709551607UL))))), ((VECTOR(uint64_t, 2))(6UL)), ((VECTOR(uint64_t, 4))(0x8D8F90186C594D69L)))).s3514274461456602 << ((VECTOR(uint64_t, 16))(0xE6F68D7AB12340C9L))))).sea >> ((VECTOR(uint64_t, 2))(64))))).xxxx + ((VECTOR(uint64_t, 4))(2UL))))), ((VECTOR(uint64_t, 4))(18446744073709551611UL))))), ((VECTOR(uint64_t, 2))(5UL)), 0xE96A97C7D7091028L)))))))).s4, 18446744073709551615UL)) == 0xD52C0D39086C6254L), 3)))));
    return (*p_867->g_544);
}


/* ------------------------------------------ */
/* 
 * reads : p_867->g_305 p_867->g_392 p_867->g_204 p_867->g_42 p_867->g_10 p_867->g_401 p_867->g_354 p_867->g_411 p_867->g_355 p_867->g_377 p_867->g_259 p_867->g_372 p_867->g_82 p_867->g_429 p_867->g_194
 * writes: p_867->g_305 p_867->g_392 p_867->g_204 p_867->g_355 p_867->g_10 p_867->g_259
 */
VECTOR(uint16_t, 8)  func_53(int64_t  p_54, int32_t ** p_55, uint64_t  p_56, int32_t ** p_57, struct S0 * p_867)
{ /* block id: 163 */
    uint64_t l_398[9][3][8] = {{{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL}},{{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL}},{{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL}},{{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL}},{{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL}},{{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL}},{{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL}},{{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL}},{{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL},{0xCF50A80341D07B77L,0UL,0x8E361481FD019FCFL,0xCA88E190DBB37D19L,18446744073709551615UL,0xCA88E190DBB37D19L,0x8E361481FD019FCFL,0UL}}};
    VECTOR(int64_t, 4) l_413 = (VECTOR(int64_t, 4))(0x1D85E1835393A460L, (VECTOR(int64_t, 2))(0x1D85E1835393A460L, 0x5BD81C3C37A7CA17L), 0x5BD81C3C37A7CA17L);
    int64_t *l_420[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_447 = 1L;
    VECTOR(uint16_t, 2) l_451 = (VECTOR(uint16_t, 2))(0UL, 5UL);
    int i, j, k;
    for (p_867->g_305 = (-7); (p_867->g_305 == 17); p_867->g_305 = safe_add_func_uint64_t_u_u(p_867->g_305, 9))
    { /* block id: 166 */
        uint16_t *l_391 = &p_867->g_392;
        int32_t l_397[7] = {1L,1L,1L,1L,1L,1L,1L};
        int64_t *l_402 = &p_867->g_3;
        int64_t ***l_418 = &p_867->g_354;
        VECTOR(int32_t, 2) l_441 = (VECTOR(int32_t, 2))(1L, 0x4CF5EEEAL);
        int16_t l_448 = (-6L);
        uint64_t *l_449 = &l_398[0][1][1];
        int32_t l_450 = 0x7BF07249L;
        int i;
        if ((safe_div_func_int64_t_s_s(0x3275C4978B0F99ADL, (0L || ((*l_391)--)))))
        { /* block id: 168 */
            int64_t *l_403[2];
            int i;
            for (i = 0; i < 2; i++)
                l_403[i] = (void*)0;
            for (p_867->g_204 = 0; (p_867->g_204 > (-7)); p_867->g_204 = safe_sub_func_uint32_t_u_u(p_867->g_204, 8))
            { /* block id: 171 */
                if ((**p_57))
                    break;
            }
            --l_398[0][1][1];
            (**p_57) = ((((VECTOR(uint32_t, 4))(4294967295UL, ((VECTOR(uint32_t, 2))(p_867->g_401.yz)), 0x69B5EE45L)).z , l_402) != ((*p_867->g_354) = l_403[1]));
        }
        else
        { /* block id: 177 */
            uint32_t l_408 = 1UL;
            VECTOR(int64_t, 16) l_412 = (VECTOR(int64_t, 16))(0x463D3A7DFD2232DEL, (VECTOR(int64_t, 4))(0x463D3A7DFD2232DEL, (VECTOR(int64_t, 2))(0x463D3A7DFD2232DEL, 0x268891D96FA536A3L), 0x268891D96FA536A3L), 0x268891D96FA536A3L, 0x463D3A7DFD2232DEL, 0x268891D96FA536A3L, (VECTOR(int64_t, 2))(0x463D3A7DFD2232DEL, 0x268891D96FA536A3L), (VECTOR(int64_t, 2))(0x463D3A7DFD2232DEL, 0x268891D96FA536A3L), 0x463D3A7DFD2232DEL, 0x268891D96FA536A3L, 0x463D3A7DFD2232DEL, 0x268891D96FA536A3L);
            int64_t ***l_419[9] = {&p_867->g_354,&p_867->g_354,&p_867->g_354,&p_867->g_354,&p_867->g_354,&p_867->g_354,&p_867->g_354,&p_867->g_354,&p_867->g_354};
            uint32_t *l_421 = &p_867->g_259[0];
            int32_t l_422 = 0x3BB52D61L;
            VECTOR(int16_t, 16) l_430 = (VECTOR(int16_t, 16))((-10L), (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), (-1L)), (-1L)), (-1L), (-10L), (-1L), (VECTOR(int16_t, 2))((-10L), (-1L)), (VECTOR(int16_t, 2))((-10L), (-1L)), (-10L), (-1L), (-10L), (-1L));
            int i;
            (**p_57) ^= 0x3A9C3C25L;
            l_422 = (((safe_mul_func_int16_t_s_s(0L, (safe_rshift_func_uint16_t_u_s(65534UL, 6)))) || (l_408 , (**p_57))) >= ((*l_421) |= (safe_add_func_int16_t_s_s((l_408 < ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(0x5C6776FDDD9E407CL, (-6L))) < ((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 16))(p_867->g_411.wxwxxyywzxxxzxzw)), ((VECTOR(int64_t, 16))(l_412.se8b5e015fb78843f)), ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(l_413.ywxywzyzywwyyzzz)) != ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(0x14D2E51C9F50EDBBL, ((safe_mod_func_uint8_t_u_u(0x5EL, p_54)) , (((!(safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0x326AL, 0xE8BCL)), ((((l_418 == l_419[1]) , l_397[0]) | 0x4DD9L) | 6UL), 0UL, 6UL, ((VECTOR(uint16_t, 2))(0xE102L)), 6UL)).s7, 0x15CEL))) , l_420[0]) != (**l_418))), ((VECTOR(int64_t, 2))(0x20C1395983751043L)), 0x1CA4A4E663835BEEL, p_56, 1L, 0x78FB5487AABD8BFEL)) && ((VECTOR(int64_t, 8))(1L))))), p_867->g_377, l_397[3], 8L, 0x5488147B73748A15L, ((VECTOR(int64_t, 4))(0x59E581E60841DE62L)))).s0f3f && ((VECTOR(int64_t, 4))(0x534F56F5195AA8F2L))))).wyxxzzxyzywxwyxx))).se996 && ((VECTOR(int64_t, 4))(0x1C7B53E52C02451DL))))).zxzxzwxwxwyxzzxw))).s6b))).even), 65534UL))));
            l_450 |= ((&l_420[3] == &l_420[1]) != (safe_add_func_int64_t_s_s((p_867->g_372.w , ((((~(0x1FL != ((((safe_div_func_uint8_t_u_u((l_412.sa || (((((p_867->g_82.y != ((((((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 2))(p_867->g_429.s5c)).yxxyxxxy, ((VECTOR(int16_t, 2))(l_430.sd8)).xxyxxyyy))).s0 <= (GROUP_DIVERGE(1, 1) || (safe_add_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_s((-6L), 5)), 7)) || (((safe_mod_func_int8_t_s_s((safe_mod_func_int16_t_s_s(((&l_420[3] != (((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 8))(l_441.yyxyyxxx)).s2535362637730657, (int32_t)((safe_sub_func_int32_t_s_s(((safe_unary_minus_func_int64_t_s((safe_add_func_int64_t_s_s((l_397[1] = ((l_422 = l_441.x) && 0UL)), p_56)))) != l_447), 0x48782385L)) , (**p_57))))).s2 , &p_867->g_355)) < l_448), l_430.s3)), p_867->g_259[2])) >= l_412.s4) & 0x2E1EL)), 0x3DL)))) , p_867->g_194) == l_449) > 0x581B317EB4B1DBB0L)) <= 1L) <= (-3L)) < p_54) == p_56)), GROUP_DIVERGE(1, 1))) ^ p_54) != l_430.s1) >= l_447))) == l_441.x) , 1L) , p_56)), p_56)));
        }
    }
    (**p_57) = l_447;
    return l_451.yyyxyyxx;
}


/* ------------------------------------------ */
/* 
 * reads : p_867->g_380
 * writes: p_867->g_10
 */
uint64_t  func_60(int32_t  p_61, uint64_t  p_62, int8_t  p_63, int32_t * p_64, uint8_t  p_65, struct S0 * p_867)
{ /* block id: 159 */
    int32_t l_381 = 0x7EA67ABEL;
    int32_t *l_382 = (void*)0;
    int32_t *l_383 = (void*)0;
    int32_t *l_384 = &p_867->g_10;
    (*l_384) = (l_381 = ((VECTOR(int32_t, 16))(p_867->g_380.sa29da7eae0860e16)).s3);
    return p_61;
}


/* ------------------------------------------ */
/* 
 * reads : p_867->g_70 p_867->g_10 p_867->g_3 p_867->g_82 p_867->g_37 p_867->g_42 p_867->g_122 p_867->g_123 p_867->g_151 p_867->g_162 p_867->g_182 p_867->g_187 p_867->g_194 p_867->g_203 p_867->g_152 p_867->g_153 p_867->g_204 p_867->g_207 p_867->g_246 p_867->g_247 p_867->g_250 p_867->g_259 p_867->g_305 p_867->g_330 p_867->g_353 p_867->g_354 p_867->g_372 p_867->g_377
 * writes: p_867->g_10 p_867->g_204 p_867->g_42 p_867->g_182 p_867->g_259 p_867->g_70 p_867->g_305 p_867->g_327 p_867->g_330 p_867->g_352 p_867->g_354 p_867->g_246 p_867->g_153 p_867->g_372 p_867->g_377
 */
int32_t ** func_67(uint64_t  p_68, struct S0 * p_867)
{ /* block id: 19 */
    int32_t l_69 = 0x4FE37806L;
    int32_t *l_71 = &p_867->g_10;
    int32_t **l_94[3];
    int64_t *l_373 = (void*)0;
    int64_t *l_374 = (void*)0;
    int64_t *l_375 = (void*)0;
    int64_t *l_376[4][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int i, j;
    for (i = 0; i < 3; i++)
        l_94[i] = &p_867->g_42[9];
    l_69 = l_69;
    (*l_71) |= ((((VECTOR(int8_t, 4))(p_867->g_70.yxwz)).y | 251UL) & GROUP_DIVERGE(0, 1));
    p_867->g_377 |= (65533UL | (safe_mod_func_uint16_t_u_u((!((p_867->g_372.w = ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 4))(func_74(p_867->g_3, p_867))).yyyxywww, ((VECTOR(int64_t, 2))(p_867->g_82.xx)).yyxyyxxx))).s16 && ((VECTOR(int64_t, 8))(func_83(func_88(p_867->g_37.s7, &p_867->g_42[7], l_94[1], &p_867->g_42[7], p_867->g_37.s2, p_867), p_867->g_353, &l_71, p_867->g_123.y, p_867))).s76))) != ((VECTOR(int64_t, 2))(0x2BF2B7A54E828D17L))))).odd) <= 0x12E7584166A81AFFL)), p_68)));
    return &p_867->g_42[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_867->g_10
 * writes: p_867->g_10
 */
VECTOR(int64_t, 4)  func_74(uint32_t  p_75, struct S0 * p_867)
{ /* block id: 22 */
    VECTOR(int64_t, 2) l_81 = (VECTOR(int64_t, 2))(0x236B4E1338462C7DL, 1L);
    int i;
    for (p_75 = (-18); (p_75 <= 15); p_75 = safe_add_func_int16_t_s_s(p_75, 1))
    { /* block id: 25 */
        uint32_t l_78[5];
        int32_t *l_79 = (void*)0;
        int32_t *l_80 = &p_867->g_10;
        int i;
        for (i = 0; i < 5; i++)
            l_78[i] = 4294967288UL;
        (*l_80) ^= l_78[0];
    }
    return l_81.yyxx;
}


/* ------------------------------------------ */
/* 
 * reads : p_867->g_354 p_867->g_246 p_867->g_10 p_867->g_151 p_867->g_152 p_867->g_153 p_867->g_372
 * writes: p_867->g_354 p_867->g_246 p_867->g_10 p_867->g_153
 */
VECTOR(int64_t, 8)  func_83(int32_t ** p_84, int32_t * p_85, int32_t ** p_86, int64_t  p_87, struct S0 * p_867)
{ /* block id: 135 */
    int64_t ***l_356 = &p_867->g_354;
    int64_t ***l_357 = (void*)0;
    int64_t **l_359 = &p_867->g_355;
    int64_t ***l_358 = &l_359;
    int32_t l_363[9][1][9] = {{{2L,0x61705295L,1L,0x61705295L,2L,2L,0x61705295L,1L,0x61705295L}},{{2L,0x61705295L,1L,0x61705295L,2L,2L,0x61705295L,1L,0x61705295L}},{{2L,0x61705295L,1L,0x61705295L,2L,2L,0x61705295L,1L,0x61705295L}},{{2L,0x61705295L,1L,0x61705295L,2L,2L,0x61705295L,1L,0x61705295L}},{{2L,0x61705295L,1L,0x61705295L,2L,2L,0x61705295L,1L,0x61705295L}},{{2L,0x61705295L,1L,0x61705295L,2L,2L,0x61705295L,1L,0x61705295L}},{{2L,0x61705295L,1L,0x61705295L,2L,2L,0x61705295L,1L,0x61705295L}},{{2L,0x61705295L,1L,0x61705295L,2L,2L,0x61705295L,1L,0x61705295L}},{{2L,0x61705295L,1L,0x61705295L,2L,2L,0x61705295L,1L,0x61705295L}}};
    int32_t l_364 = (-1L);
    uint8_t l_366 = 1UL;
    int i, j, k;
    (*l_358) = ((*l_356) = p_867->g_354);
    for (p_867->g_246 = 0; (p_867->g_246 > (-20)); p_867->g_246--)
    { /* block id: 140 */
        int32_t *l_362[2][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
        int i, j;
        ++l_366;
        (**p_86) &= 0L;
        for (l_366 = (-8); (l_366 > 17); ++l_366)
        { /* block id: 145 */
            int32_t *l_371 = &p_867->g_10;
            (1 + 1);
        }
    }
    (*p_867->g_152) = (**p_867->g_151);
    return p_867->g_372.yzxyzxyw;
}


/* ------------------------------------------ */
/* 
 * reads : p_867->g_10 p_867->g_42 p_867->g_122 p_867->g_123 p_867->g_37 p_867->g_151 p_867->g_3 p_867->g_70 p_867->g_162 p_867->g_182 p_867->g_82 p_867->g_187 p_867->g_194 p_867->g_203 p_867->g_152 p_867->g_153 p_867->g_204 p_867->g_207 p_867->g_246 p_867->g_247 p_867->g_250 p_867->g_259 p_867->g_305 p_867->g_330
 * writes: p_867->g_10 p_867->g_204 p_867->g_42 p_867->g_182 p_867->g_259 p_867->g_70 p_867->g_305 p_867->g_327 p_867->g_330 p_867->g_352
 */
int32_t ** func_88(uint64_t  p_89, int32_t ** p_90, int32_t ** p_91, int32_t ** p_92, uint64_t  p_93, struct S0 * p_867)
{ /* block id: 29 */
    uint16_t l_102[9][8] = {{0xD079L,65526UL,1UL,0xE2C5L,65526UL,0xE2C5L,1UL,65526UL},{0xD079L,65526UL,1UL,0xE2C5L,65526UL,0xE2C5L,1UL,65526UL},{0xD079L,65526UL,1UL,0xE2C5L,65526UL,0xE2C5L,1UL,65526UL},{0xD079L,65526UL,1UL,0xE2C5L,65526UL,0xE2C5L,1UL,65526UL},{0xD079L,65526UL,1UL,0xE2C5L,65526UL,0xE2C5L,1UL,65526UL},{0xD079L,65526UL,1UL,0xE2C5L,65526UL,0xE2C5L,1UL,65526UL},{0xD079L,65526UL,1UL,0xE2C5L,65526UL,0xE2C5L,1UL,65526UL},{0xD079L,65526UL,1UL,0xE2C5L,65526UL,0xE2C5L,1UL,65526UL},{0xD079L,65526UL,1UL,0xE2C5L,65526UL,0xE2C5L,1UL,65526UL}};
    int32_t l_110 = (-3L);
    uint32_t l_249 = 4294967286UL;
    VECTOR(int32_t, 2) l_252 = (VECTOR(int32_t, 2))(1L, (-7L));
    int8_t l_267 = 0x3FL;
    int32_t l_279 = 0x3E9099EAL;
    int8_t *l_323 = (void*)0;
    int8_t **l_322 = &l_323;
    uint8_t *l_338 = &p_867->g_330;
    uint16_t *l_351 = (void*)0;
    int i, j;
    for (p_89 = 0; (p_89 >= 9); ++p_89)
    { /* block id: 32 */
        VECTOR(uint64_t, 4) l_101 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xF947EB5F43E010D3L), 0xF947EB5F43E010D3L);
        int32_t l_103 = 0x351834A9L;
        int32_t *l_104 = &p_867->g_10;
        int32_t *l_105 = &l_103;
        int32_t *l_106 = &l_103;
        int32_t *l_107 = &l_103;
        int32_t *l_108 = &l_103;
        int32_t *l_109[1];
        uint32_t l_111 = 0xBA09B981L;
        int32_t l_133 = 1L;
        int8_t *l_159[4][7][3];
        VECTOR(int64_t, 2) l_181 = (VECTOR(int64_t, 2))(6L, 0L);
        VECTOR(int32_t, 16) l_209 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x175E5F06L), 0x175E5F06L), 0x175E5F06L, 1L, 0x175E5F06L, (VECTOR(int32_t, 2))(1L, 0x175E5F06L), (VECTOR(int32_t, 2))(1L, 0x175E5F06L), 1L, 0x175E5F06L, 1L, 0x175E5F06L);
        VECTOR(int16_t, 4) l_235 = (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), 3L), 3L);
        VECTOR(int16_t, 4) l_236 = (VECTOR(int16_t, 4))(0x732AL, (VECTOR(int16_t, 2))(0x732AL, 1L), 1L);
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_109[i] = &l_103;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 7; j++)
            {
                for (k = 0; k < 3; k++)
                    l_159[i][j][k] = (void*)0;
            }
        }
        for (p_867->g_10 = 0; (p_867->g_10 <= 25); p_867->g_10++)
        { /* block id: 35 */
            l_102[7][1] |= (safe_sub_func_int32_t_s_s((!(((VECTOR(uint64_t, 2))(l_101.wz)).odd , 0x070B5DC3L)), GROUP_DIVERGE(1, 1)));
            if ((**p_91))
                break;
        }
        ++l_111;
        if (((void*)0 != &l_107))
        { /* block id: 40 */
            int32_t l_134 = (-2L);
            int8_t l_146 = 0x00L;
            int32_t l_185 = 0x6CFEE316L;
            int16_t l_237 = (-1L);
            int32_t l_270 = 0x3A00EA8EL;
            int32_t l_299 = 8L;
            int32_t l_301 = 1L;
            uint64_t l_302 = 0UL;
            for (l_111 = (-1); (l_111 != 19); l_111 = safe_add_func_uint8_t_u_u(l_111, 9))
            { /* block id: 43 */
                int32_t l_137[1][9][1] = {{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}};
                int8_t *l_160 = &l_146;
                int64_t *l_205[5];
                VECTOR(int32_t, 2) l_206 = (VECTOR(int32_t, 2))(0x3CEEFD67L, 0L);
                int32_t **l_218 = &p_867->g_42[9];
                VECTOR(uint8_t, 4) l_221 = (VECTOR(uint8_t, 4))(0x4EL, (VECTOR(uint8_t, 2))(0x4EL, 0xB3L), 0xB3L);
                VECTOR(uint32_t, 8) l_227 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 1UL), 1UL), 1UL, 4294967295UL, 1UL);
                int64_t l_232 = (-1L);
                uint16_t l_284[9] = {0x902CL,0UL,0x902CL,0x902CL,0UL,0x902CL,0x902CL,0UL,0x902CL};
                int i, j, k;
                for (i = 0; i < 5; i++)
                    l_205[i] = (void*)0;
                if ((**p_91))
                { /* block id: 44 */
                    for (l_103 = 0; (l_103 >= (-16)); --l_103)
                    { /* block id: 47 */
                        uint16_t *l_126 = &l_102[0][2];
                        int32_t **l_132 = &l_109[0];
                        int32_t ***l_131 = &l_132;
                        int32_t **l_135 = &l_107;
                        int32_t ***l_136 = &l_135;
                        VECTOR(int8_t, 4) l_140 = (VECTOR(int8_t, 4))(0x2CL, (VECTOR(int8_t, 2))(0x2CL, 0x77L), 0x77L);
                        int8_t *l_141 = (void*)0;
                        int8_t *l_142 = (void*)0;
                        int8_t *l_143 = (void*)0;
                        int8_t *l_144 = (void*)0;
                        int8_t *l_145[2][10][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
                        int i, j, k;
                        (**p_91) = ((safe_mod_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), (((safe_div_func_int8_t_s_s((p_93 > ((!p_89) , ((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(p_867->g_122.s54)) && ((VECTOR(int32_t, 2))(p_867->g_123.yw))))).lo , &p_867->g_42[7]) != ((safe_div_func_uint16_t_u_u(((*l_126)--), (safe_add_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), p_867->g_37.s0)))) , ((*l_131) = &p_867->g_42[7]))))), p_867->g_10)) < (l_134 = l_133)) | (p_93 == (l_137[0][7][0] = (((*l_136) = l_135) == (void*)0)))))) || 1L);
                        (**p_92) = ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))((!((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 16))(((safe_lshift_func_uint16_t_u_u((((l_146 = ((VECTOR(int8_t, 4))(l_140.ywyx)).y) == (safe_sub_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u((+(p_867->g_151 == (void*)0)), (p_93 & ((((VECTOR(uint32_t, 4))(abs(((VECTOR(int32_t, 4))((-4L), ((VECTOR(int32_t, 2))(0x2A545A54L, (-5L))), 0x1DE98D40L))))).x ^ (**l_132)) && ((p_89 , (0x0B3DL <= (((GROUP_DIVERGE(1, 1) , (-1L)) < l_137[0][4][0]) , p_93))) != l_134))))), p_867->g_3))) && p_89), p_867->g_70.w)) >= p_867->g_122.s5), ((VECTOR(int32_t, 2))(0x1A0E2963L)), 1L, 0x3D86A01DL, ((VECTOR(int32_t, 8))(0x5350F159L)), (-3L), 0x27C04A76L, 0x58545D76L)).even, ((VECTOR(int32_t, 8))(0x25DBB92BL))))).s3, (**p_90), ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 4))((-4L))))).even))), ((VECTOR(int32_t, 4))(0x22447EBBL)), ((VECTOR(int32_t, 4))(0x39C2E694L))))).even, ((VECTOR(int32_t, 2))(1L))))).yxxy == ((VECTOR(int32_t, 4))(0L))))).z;
                        if ((**p_90))
                            break;
                    }
                }
                else
                { /* block id: 58 */
                    int8_t **l_161 = &l_160;
                    int32_t *l_164 = (void*)0;
                    uint64_t *l_165[1];
                    int32_t l_166 = 0x3F27325EL;
                    int64_t *l_183 = (void*)0;
                    int64_t *l_184 = (void*)0;
                    uint8_t *l_186[8] = {&p_867->g_187[1][2][2],&p_867->g_187[6][5][3],&p_867->g_187[1][2][2],&p_867->g_187[1][2][2],&p_867->g_187[6][5][3],&p_867->g_187[1][2][2],&p_867->g_187[1][2][2],&p_867->g_187[6][5][3]};
                    VECTOR(int32_t, 2) l_208 = (VECTOR(int32_t, 2))(0x3372CC07L, (-1L));
                    VECTOR(int32_t, 8) l_251 = (VECTOR(int32_t, 8))(0x59357741L, (VECTOR(int32_t, 4))(0x59357741L, (VECTOR(int32_t, 2))(0x59357741L, 9L), 9L), 9L, 0x59357741L, 9L);
                    int16_t *l_266 = (void*)0;
                    int8_t l_283 = (-4L);
                    uint64_t l_287 = 18446744073709551615UL;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_165[i] = (void*)0;
                    (*l_107) |= (safe_add_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(2, 1), (1L <= ((((VECTOR(int16_t, 4))((l_159[2][2][0] != ((*l_161) = l_160)), ((VECTOR(int16_t, 2))(p_867->g_162.wx)), 0x56EEL)).y > (safe_unary_minus_func_uint64_t_u((l_166 |= (l_164 == (void*)0))))) == (safe_lshift_func_int16_t_s_u(((safe_sub_func_int32_t_s_s((**p_91), (&l_159[2][2][0] != (void*)0))) > ((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))(0xE9DBL, 0x1069L, 0x104EL, 0UL)).xxwxxxywzzwwyzyy + ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(max(((VECTOR(uint16_t, 2))(65535UL, 0xD88EL)).yyxxxxxx, (uint16_t)((safe_sub_func_uint8_t_u_u((l_137[0][7][0] &= ((!((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))((-1L), ((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 8))(l_181.xxyyxxyx)).s5764770735413016, ((VECTOR(int64_t, 4))(p_867->g_182.yyyx)).xxzxxzzxywxzwwxx))) ^ ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))((l_185 &= 0x11E180988709DC6AL), 0L, p_89, (-9L), p_867->g_122.s3, ((VECTOR(int64_t, 2))((-1L))), 0x621B4F9A3E397D91L, p_867->g_182.x, (-1L), 0x661BCC1DD9ACFF28L, p_89, p_867->g_82.x, ((VECTOR(int64_t, 2))((-1L))), 1L)).sfd && ((VECTOR(int64_t, 2))((-2L)))))).yyyyyyyyxxxyyyyx))).sfe < ((VECTOR(int64_t, 2))(0x2692C9271733CD63L))))).yxyy | ((VECTOR(int64_t, 4))((-2L)))))).wyxwxzxxxzwzxzzy, ((VECTOR(int64_t, 16))((-1L)))))).even, ((VECTOR(int64_t, 8))(0x09D2C2FFDF52C73AL))))), ((VECTOR(int64_t, 8))(0x2CB338217DE881EAL)))).hi && ((VECTOR(int64_t, 8))(5L))))).s1152300574337762 < ((VECTOR(int64_t, 16))(1L))))).hi > ((VECTOR(int64_t, 8))(0L))))).s0, 0xBDC76872175B47ACL)) < p_867->g_122.s0), 0x016EL, ((VECTOR(int16_t, 4))((-1L))), 0x33ECL)).s6573032171435215 & ((VECTOR(int16_t, 16))(0x1EC3L))))).even && ((VECTOR(int16_t, 8))(0L))))).s6025006733474514 && ((VECTOR(int16_t, 16))((-10L)))))).sa) <= FAKE_DIVERGE(p_867->local_2_offset, get_local_id(2), 10))), 251UL)) ^ p_867->g_82.y)))) + ((VECTOR(uint16_t, 8))(0UL))))).s1036242537462164))) + ((VECTOR(uint16_t, 16))(0xD397L))))).s8347))).zwwxyxwxxyzyyyzz, (uint16_t)0UL))).s26 | ((VECTOR(uint16_t, 2))(0x07A8L))))).xxxyyyxy))).s0), p_93)))))) > 1L), GROUP_DIVERGE(1, 1)));
                    if (((((((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 4))(0x3AL, (((safe_mod_func_int8_t_s_s(p_867->g_187[1][2][1], (p_867->g_204 |= (safe_sub_func_int8_t_s_s(((*l_160) = (safe_div_func_int32_t_s_s((p_89 , ((((p_867->g_194 != (((l_185 = ((((safe_unary_minus_func_uint16_t_u((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), (((((safe_mul_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(((((VECTOR(uint32_t, 8))(p_867->g_203.xxyyxxxx)).s3 , l_102[3][0]) | (GROUP_DIVERGE(1, 1) | 0xF24DL)), (&l_103 == (**p_867->g_151)))), ((void*)0 != (*p_91)))) == p_867->g_123.w) || p_867->g_123.x) > p_867->g_123.x) > 1UL))))) && 0x5E41L) , l_137[0][7][0]) > p_93)) <= p_867->g_203.x) , &p_89)) || 0x7D72F3A6L) , (void*)0) == p_867->g_194)), p_867->g_70.y))), (-1L)))))) > p_867->g_37.s2) >= l_110), (-4L), 0L)).zywxwyzywzywyyww, ((VECTOR(int8_t, 16))(0x21L)), ((VECTOR(int8_t, 16))(0x07L))))).s5 < 5L) , p_867->g_82.x) , l_205[4]) != (void*)0))
                    { /* block id: 67 */
                        p_867->g_42[9] = (*p_91);
                        l_137[0][7][0] ^= ((*l_106) = (**p_90));
                    }
                    else
                    { /* block id: 71 */
                        int32_t **l_220 = &l_104;
                        int32_t ***l_219 = &l_220;
                        uint16_t *l_224 = &l_102[7][1];
                        l_185 = ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(l_206.xxyx)).zzyzzzyx || ((VECTOR(int32_t, 16))((-1L), (-1L), ((*l_104) = ((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(0x3CCA6638L, 0x1B3D71B0L)).xyxy, ((VECTOR(int32_t, 2))(0x4543C7B7L, 0x17E57FE7L)).xyyy, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(0x457A06D2L, (-9L))) < ((VECTOR(int32_t, 16))(p_867->g_207.s5223035353621337)).s18))).yxyx && ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 2))(l_208.xy)).yyyxxyyyxyxxyyxy, ((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_209.seb)), ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 8))(0x2BB9B91CL, 0x0B7C6787L, 8L, (((safe_sub_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u((((safe_div_func_int8_t_s_s((~(0UL == (l_218 == ((*l_219) = &p_867->g_42[7])))), ((VECTOR(uint8_t, 4))(l_221.zzyx)).z)) >= (0x136C564025E57FDAL >= (~(p_867->g_182.y ^= ((safe_rshift_func_uint16_t_u_s((++(*l_224)), p_867->g_207.s2)) != (((1L > FAKE_DIVERGE(p_867->group_1_offset, get_group_id(1), 10)) != p_867->g_82.y) > (((((**p_91) == ((~((VECTOR(uint32_t, 8))(l_227.s41777031)).s5) && ((safe_rshift_func_int16_t_s_s((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(0x3B3FL, (p_89 > p_867->g_123.y), 0x7FBBL, 65534UL)).x, p_867->g_82.y)), 3)) < 0L))) <= p_867->g_82.x) , 2UL) >= p_867->g_37.s7))))))) , p_93), (**l_218))), p_93)) & p_867->g_70.z) | (**p_90)), l_232, ((VECTOR(int32_t, 2))((-2L))), 1L)).even, ((VECTOR(int32_t, 4))(0x7715F622L))))), (-4L), 0x71D96F4DL)) > ((VECTOR(int32_t, 8))(0x4D792688L))))).s04, ((VECTOR(int32_t, 2))(9L))))).yyxxyxxx, ((VECTOR(int32_t, 8))(6L)), ((VECTOR(int32_t, 8))(0x2E9B445DL))))).s2440406150545506))).s4097)))))).x), (**l_220), ((VECTOR(int32_t, 8))(0x6D5C099BL)), ((VECTOR(int32_t, 2))(1L)), 0x7C60C495L, 0x63D29711L)).odd))), ((VECTOR(int32_t, 8))(0L)), ((VECTOR(int32_t, 8))(0x679C8553L))))).s1;
                        l_249 ^= ((safe_mul_func_int16_t_s_s((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 8))(l_235.wxxwxyzy)).s6613134473464762, ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(0x6617L, ((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 4))((-3L), 1L, 0x2142L, (-1L))), ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 16))(l_236.wyzzyywwyzzywzww)).even, ((VECTOR(int16_t, 16))(0x5684L, l_237, (((((l_146 , ((p_867->g_162.y || (safe_add_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((safe_mod_func_int8_t_s_s(p_867->g_70.w, (safe_lshift_func_int16_t_s_s((((+((((*l_107) = ((**l_161) = (((void*)0 == l_160) == 0xDD8E95D1L))) | p_867->g_246) == 0x70L)) , (void*)0) != p_867->g_247), p_93)))), p_867->g_37.s6)), (**l_218)))) >= p_867->g_123.z)) ^ FAKE_DIVERGE(p_867->global_1_offset, get_global_id(1), 10)) | 6UL) < p_867->g_207.s7) >= p_867->g_37.s2), 0x62EAL, p_867->g_3, 1L, l_102[7][1], 0x1460L, (*l_104), ((VECTOR(int16_t, 2))((-6L))), (-10L), 0x461EL, 0x56F0L, 0x0A96L, 9L)).lo))), ((VECTOR(int16_t, 8))(0x402CL))))).s6461221517273511 && ((VECTOR(int16_t, 16))(0L))))).s7f1b))).odd, ((VECTOR(int16_t, 2))(0x44B7L))))), (-10L))).lo && ((VECTOR(int16_t, 2))(0x71C3L))))).yxxyxxxyyyxyxyxx && ((VECTOR(int16_t, 16))(0L)))))))).s6a, (int16_t)(-1L)))).yxxy && ((VECTOR(int16_t, 4))((-6L)))))).z , p_89), p_89)) , (**p_92));
                        (**p_91) = (**p_90);
                    }
                    if (((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))(0x6A0C2D7FL, 0x22872917L)).xyyxyyxy, ((VECTOR(int32_t, 16))(1L, (-1L), ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(2L, ((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 2))((-1L), 0x1D43B4D4L)).yyyx, ((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 2))((!((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 8))(p_867->g_250.yxyxyyyx)).s7265644467217007))).sf3 > ((VECTOR(int32_t, 8))(0x54DE7019L, ((VECTOR(int32_t, 2))(l_251.s37)), (-4L), 0x0F9897B1L, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_252.yyxxxxyy)), 0x304C94EDL, (p_867->g_182.y ^ (l_237 & (safe_add_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), ((safe_lshift_func_uint16_t_u_u(((p_867->g_259[0] |= (safe_div_func_uint8_t_u_u(l_249, FAKE_DIVERGE(p_867->local_0_offset, get_local_id(0), 10)))) , (p_89 != (**l_218))), 13)) > (p_867->g_70.y &= (safe_sub_func_uint16_t_u_u((safe_div_func_int16_t_s_s((l_267 = (safe_rshift_func_int16_t_s_s((*l_108), 10))), (safe_div_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), 0x222EAAC3L)))), ((l_110 , (p_867->g_250.y < p_867->g_187[2][4][2])) > p_89))))))))), ((VECTOR(int32_t, 4))(1L)), 5L, 7L)), ((VECTOR(int32_t, 16))(1L))))).s01, ((VECTOR(int32_t, 2))(0x3460BE90L))))), (-2L))).s05))).yyyyxyyxyyyyyxxy && ((VECTOR(int32_t, 16))(0x5EA3D898L))))).odd && ((VECTOR(int32_t, 8))(0x3FE9B47BL))))).s44, ((VECTOR(int32_t, 2))(1L))))), ((VECTOR(int32_t, 2))(0x23745E64L))))).yxxy && ((VECTOR(int32_t, 4))((-5L)))))).xwzywwyw, ((VECTOR(int32_t, 8))((-4L)))))).s42))).xyyxxxyx, (int32_t)0x4E66FDB4L))).hi, ((VECTOR(int32_t, 4))(1L))))), ((VECTOR(int32_t, 4))((-9L)))))), 0L, 9L, (-1L))) != ((VECTOR(int32_t, 8))(0x74020B15L))))), 0x45358BBAL, ((VECTOR(int32_t, 4))(0x0B09B5B2L)), 0x360CCDDFL)).even))).s4)
                    { /* block id: 85 */
                        uint64_t l_271[2][6] = {{0xE16E36453E78FA6BL,0xF128C111F8ADE7CEL,0xA9AF49738B2017BEL,0xF128C111F8ADE7CEL,0xE16E36453E78FA6BL,0xE16E36453E78FA6BL},{0xE16E36453E78FA6BL,0xF128C111F8ADE7CEL,0xA9AF49738B2017BEL,0xF128C111F8ADE7CEL,0xE16E36453E78FA6BL,0xE16E36453E78FA6BL}};
                        int i, j;
                        --l_271[1][5];
                        if ((**l_218))
                            break;
                        l_104 = ((*l_218) = (*p_92));
                    }
                    else
                    { /* block id: 90 */
                        uint64_t l_274 = 0x02920927C9372773L;
                        int32_t l_277 = 0x2B09884DL;
                        int32_t l_278 = 1L;
                        int32_t l_280 = 1L;
                        int32_t l_281 = 7L;
                        int32_t l_282[8] = {4L,4L,4L,4L,4L,4L,4L,4L};
                        int i;
                        ++l_274;
                        l_284[2]--;
                        if (l_287)
                            break;
                    }
                    if ((**p_90))
                        continue;
                }
                for (l_270 = 0; (l_270 != (-3)); l_270--)
                { /* block id: 99 */
                    uint32_t l_293[4][8][8] = {{{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL}},{{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL}},{{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL}},{{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL},{9UL,9UL,0xCBA1B5FBL,4294967295UL,4294967295UL,4294967295UL,0xCBA1B5FBL,9UL}}};
                    int32_t l_297 = 0L;
                    int32_t l_298 = 0L;
                    int i, j, k;
                    (**p_92) = 1L;
                    if ((*l_106))
                    { /* block id: 101 */
                        uint32_t l_290 = 4294967290UL;
                        l_290++;
                        (*l_108) |= 0x418B5EDEL;
                        if ((**p_92))
                            break;
                    }
                    else
                    { /* block id: 105 */
                        int32_t l_296 = (-1L);
                        int32_t l_300 = 2L;
                        l_293[3][1][3]--;
                        --l_302;
                        --p_867->g_305;
                        (*l_107) = ((**l_218) = (p_867->g_203.y , (safe_lshift_func_int16_t_s_u(0x5632L, 5))));
                    }
                }
                if ((**l_218))
                    continue;
            }
        }
        else
        { /* block id: 115 */
            int64_t l_331 = 0x396E4FF2E12BC1A5L;
            int16_t *l_332 = &p_867->g_246;
            VECTOR(int32_t, 8) l_333 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x7DA7249EL), 0x7DA7249EL), 0x7DA7249EL, 0L, 0x7DA7249EL);
            int i;
            for (l_103 = (-9); (l_103 == (-3)); l_103++)
            { /* block id: 118 */
                int16_t *l_326 = &p_867->g_246;
                int16_t **l_325[2];
                uint64_t *l_328 = (void*)0;
                uint64_t *l_329 = (void*)0;
                int i;
                for (i = 0; i < 2; i++)
                    l_325[i] = &l_326;
                l_331 = (safe_rshift_func_int16_t_s_s((safe_add_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u((-1L), (safe_mod_func_int8_t_s_s((&l_267 != &l_267), p_867->g_82.x)))), ((safe_mul_func_uint16_t_u_u(((void*)0 == l_322), (safe_unary_minus_func_uint8_t_u(((p_867->g_330 = ((((p_867->g_327 = (void*)0) == (void*)0) & p_867->g_207.s0) >= 0x4C46L)) > FAKE_DIVERGE(p_867->global_2_offset, get_global_id(2), 10)))))) >= (**p_92)))), 5));
                (**p_92) &= (((void*)0 != l_332) | 4294967288UL);
                if ((*l_107))
                    break;
                if ((**p_90))
                    break;
            }
            (*l_107) ^= ((VECTOR(int32_t, 16))(l_333.s0173112746462747)).sf;
        }
    }
    (**p_91) ^= (safe_add_func_int32_t_s_s(((safe_rshift_func_uint16_t_u_u((l_252.y == ((VECTOR(uint8_t, 8))(((*l_338)--), (0x5EL > (safe_mod_func_int32_t_s_s((0x284F1512L != (l_110 = ((((*l_338) = l_252.y) < l_267) != (p_867->g_162.y != ((p_867->g_352 = (safe_lshift_func_int8_t_s_s((p_89 == (safe_mul_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(p_93, 13)), ((safe_lshift_func_uint8_t_u_s(0xE4L, 5)) < l_102[7][1])))), 6))) != l_279))))), p_867->g_187[1][2][2]))), 0x3EL, 255UL, ((VECTOR(uint8_t, 2))(1UL)), 0UL, 3UL)).s0), 12)) > 1UL), l_267));
    return &p_867->g_42[2];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_868;
    struct S0* p_867 = &c_868;
    struct S0 c_869 = {
        (-1L), // p_867->g_3
        (void*)0, // p_867->g_4
        &p_867->g_4, // p_867->g_5
        0x59E2A8D3L, // p_867->g_10
        1UL, // p_867->g_22
        (VECTOR(int64_t, 8))(0x7649690B2811FFBEL, (VECTOR(int64_t, 4))(0x7649690B2811FFBEL, (VECTOR(int64_t, 2))(0x7649690B2811FFBEL, (-9L)), (-9L)), (-9L), 0x7649690B2811FFBEL, (-9L)), // p_867->g_37
        {&p_867->g_10,&p_867->g_10,&p_867->g_10,&p_867->g_10,&p_867->g_10,&p_867->g_10,&p_867->g_10,&p_867->g_10,&p_867->g_10,&p_867->g_10}, // p_867->g_42
        {{&p_867->g_42[4],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[4]},{&p_867->g_42[4],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[4]},{&p_867->g_42[4],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[4]},{&p_867->g_42[4],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[4]},{&p_867->g_42[4],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[4]},{&p_867->g_42[4],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[4]},{&p_867->g_42[4],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[4]},{&p_867->g_42[4],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[4]},{&p_867->g_42[4],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[7],&p_867->g_42[4]}}, // p_867->g_41
        (VECTOR(int32_t, 2))(0x6B4AB19FL, 0x5D0BB265L), // p_867->g_43
        (VECTOR(int8_t, 4))(0x1FL, (VECTOR(int8_t, 2))(0x1FL, 0x3FL), 0x3FL), // p_867->g_70
        (VECTOR(int64_t, 2))((-4L), 0L), // p_867->g_82
        (VECTOR(int32_t, 8))(0x602E2238L, (VECTOR(int32_t, 4))(0x602E2238L, (VECTOR(int32_t, 2))(0x602E2238L, 0x51F222DEL), 0x51F222DEL), 0x51F222DEL, 0x602E2238L, 0x51F222DEL), // p_867->g_122
        (VECTOR(int32_t, 4))(0x127B072BL, (VECTOR(int32_t, 2))(0x127B072BL, 0x1E5BAC90L), 0x1E5BAC90L), // p_867->g_123
        0x4284883CL, // p_867->g_154
        &p_867->g_154, // p_867->g_153
        &p_867->g_153, // p_867->g_152
        &p_867->g_152, // p_867->g_151
        (VECTOR(int16_t, 4))(0x4C64L, (VECTOR(int16_t, 2))(0x4C64L, (-9L)), (-9L)), // p_867->g_162
        (VECTOR(int64_t, 2))(0x4000487FC3788430L, (-5L)), // p_867->g_182
        {{{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L}},{{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L}},{{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L}},{{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L}},{{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L}},{{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L}},{{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L}},{{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L},{1UL,1UL,1UL,0x14L}}}, // p_867->g_187
        {0xF0F52E07C2149379L,0xF0F52E07C2149379L}, // p_867->g_195
        &p_867->g_195[0], // p_867->g_194
        (VECTOR(uint32_t, 2))(1UL, 0x1BC87A73L), // p_867->g_203
        0x432DA90CL, // p_867->g_204
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L)), // p_867->g_207
        0x60E7L, // p_867->g_246
        9L, // p_867->g_248
        &p_867->g_248, // p_867->g_247
        (VECTOR(int32_t, 2))(1L, 4L), // p_867->g_250
        {0x0E34BD49L,0x0E34BD49L,0x0E34BD49L,0x0E34BD49L}, // p_867->g_259
        8UL, // p_867->g_305
        (void*)0, // p_867->g_327
        2UL, // p_867->g_330
        1L, // p_867->g_352
        (void*)0, // p_867->g_353
        (void*)0, // p_867->g_355
        &p_867->g_355, // p_867->g_354
        (-1L), // p_867->g_365
        (VECTOR(int64_t, 4))(0x5C25C0CCE68AC021L, (VECTOR(int64_t, 2))(0x5C25C0CCE68AC021L, 0x2169BB6885F81964L), 0x2169BB6885F81964L), // p_867->g_372
        0x2C72CEACL, // p_867->g_377
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int32_t, 2))(1L, 0L), (VECTOR(int32_t, 2))(1L, 0L), 1L, 0L, 1L, 0L), // p_867->g_380
        0x9CE1L, // p_867->g_392
        (VECTOR(uint32_t, 4))(0xA4711444L, (VECTOR(uint32_t, 2))(0xA4711444L, 8UL), 8UL), // p_867->g_401
        (VECTOR(int64_t, 4))(0x088F708C92BC8C68L, (VECTOR(int64_t, 2))(0x088F708C92BC8C68L, 0x4BD74A12256D455FL), 0x4BD74A12256D455FL), // p_867->g_411
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x1D95L), 0x1D95L), 0x1D95L, (-1L), 0x1D95L, (VECTOR(int16_t, 2))((-1L), 0x1D95L), (VECTOR(int16_t, 2))((-1L), 0x1D95L), (-1L), 0x1D95L, (-1L), 0x1D95L), // p_867->g_429
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-6L)), (-6L)), // p_867->g_475
        &p_867->g_392, // p_867->g_506
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 1L), 1L), // p_867->g_518
        &p_867->g_42[0], // p_867->g_544
        &p_867->g_544, // p_867->g_543
        {{{&p_867->g_543},{&p_867->g_543},{&p_867->g_543},{&p_867->g_543},{&p_867->g_543},{&p_867->g_543},{&p_867->g_543},{&p_867->g_543},{&p_867->g_543}},{{&p_867->g_543},{&p_867->g_543},{&p_867->g_543},{&p_867->g_543},{&p_867->g_543},{&p_867->g_543},{&p_867->g_543},{&p_867->g_543},{&p_867->g_543}}}, // p_867->g_542
        (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551608UL), // p_867->g_591
        0x5C3845CFE99179DAL, // p_867->g_599
        (VECTOR(uint64_t, 4))(18446744073709551608UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 0xBED07AE28B91C035L), 0xBED07AE28B91C035L), // p_867->g_644
        (VECTOR(uint64_t, 16))(0xFD28E57C525B34B6L, (VECTOR(uint64_t, 4))(0xFD28E57C525B34B6L, (VECTOR(uint64_t, 2))(0xFD28E57C525B34B6L, 0xC3B0E2E9BDA65A40L), 0xC3B0E2E9BDA65A40L), 0xC3B0E2E9BDA65A40L, 0xFD28E57C525B34B6L, 0xC3B0E2E9BDA65A40L, (VECTOR(uint64_t, 2))(0xFD28E57C525B34B6L, 0xC3B0E2E9BDA65A40L), (VECTOR(uint64_t, 2))(0xFD28E57C525B34B6L, 0xC3B0E2E9BDA65A40L), 0xFD28E57C525B34B6L, 0xC3B0E2E9BDA65A40L, 0xFD28E57C525B34B6L, 0xC3B0E2E9BDA65A40L), // p_867->g_686
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 9L), 9L), 9L, 0L, 9L, (VECTOR(int32_t, 2))(0L, 9L), (VECTOR(int32_t, 2))(0L, 9L), 0L, 9L, 0L, 9L), // p_867->g_697
        &p_867->g_259[0], // p_867->g_712
        (-7L), // p_867->g_762
        (VECTOR(uint8_t, 16))(0xD3L, (VECTOR(uint8_t, 4))(0xD3L, (VECTOR(uint8_t, 2))(0xD3L, 0xE7L), 0xE7L), 0xE7L, 0xD3L, 0xE7L, (VECTOR(uint8_t, 2))(0xD3L, 0xE7L), (VECTOR(uint8_t, 2))(0xD3L, 0xE7L), 0xD3L, 0xE7L, 0xD3L, 0xE7L), // p_867->g_763
        &p_867->g_712, // p_867->g_767
        (VECTOR(uint32_t, 2))(0xC9BC9B5FL, 0xBAF307A7L), // p_867->g_774
        (VECTOR(uint64_t, 2))(2UL, 0x0C1A11379B5FD81EL), // p_867->g_807
        1UL, // p_867->g_812
        0x86L, // p_867->g_828
        (VECTOR(uint16_t, 2))(1UL, 0x115DL), // p_867->g_834
        &p_867->g_392, // p_867->g_838
        sequence_input[get_global_id(0)], // p_867->global_0_offset
        sequence_input[get_global_id(1)], // p_867->global_1_offset
        sequence_input[get_global_id(2)], // p_867->global_2_offset
        sequence_input[get_local_id(0)], // p_867->local_0_offset
        sequence_input[get_local_id(1)], // p_867->local_1_offset
        sequence_input[get_local_id(2)], // p_867->local_2_offset
        sequence_input[get_group_id(0)], // p_867->group_0_offset
        sequence_input[get_group_id(1)], // p_867->group_1_offset
        sequence_input[get_group_id(2)], // p_867->group_2_offset
    };
    c_868 = c_869;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_867);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_867->g_3, "p_867->g_3", print_hash_value);
    transparent_crc(p_867->g_10, "p_867->g_10", print_hash_value);
    transparent_crc(p_867->g_22, "p_867->g_22", print_hash_value);
    transparent_crc(p_867->g_37.s0, "p_867->g_37.s0", print_hash_value);
    transparent_crc(p_867->g_37.s1, "p_867->g_37.s1", print_hash_value);
    transparent_crc(p_867->g_37.s2, "p_867->g_37.s2", print_hash_value);
    transparent_crc(p_867->g_37.s3, "p_867->g_37.s3", print_hash_value);
    transparent_crc(p_867->g_37.s4, "p_867->g_37.s4", print_hash_value);
    transparent_crc(p_867->g_37.s5, "p_867->g_37.s5", print_hash_value);
    transparent_crc(p_867->g_37.s6, "p_867->g_37.s6", print_hash_value);
    transparent_crc(p_867->g_37.s7, "p_867->g_37.s7", print_hash_value);
    transparent_crc(p_867->g_43.x, "p_867->g_43.x", print_hash_value);
    transparent_crc(p_867->g_43.y, "p_867->g_43.y", print_hash_value);
    transparent_crc(p_867->g_70.x, "p_867->g_70.x", print_hash_value);
    transparent_crc(p_867->g_70.y, "p_867->g_70.y", print_hash_value);
    transparent_crc(p_867->g_70.z, "p_867->g_70.z", print_hash_value);
    transparent_crc(p_867->g_70.w, "p_867->g_70.w", print_hash_value);
    transparent_crc(p_867->g_82.x, "p_867->g_82.x", print_hash_value);
    transparent_crc(p_867->g_82.y, "p_867->g_82.y", print_hash_value);
    transparent_crc(p_867->g_122.s0, "p_867->g_122.s0", print_hash_value);
    transparent_crc(p_867->g_122.s1, "p_867->g_122.s1", print_hash_value);
    transparent_crc(p_867->g_122.s2, "p_867->g_122.s2", print_hash_value);
    transparent_crc(p_867->g_122.s3, "p_867->g_122.s3", print_hash_value);
    transparent_crc(p_867->g_122.s4, "p_867->g_122.s4", print_hash_value);
    transparent_crc(p_867->g_122.s5, "p_867->g_122.s5", print_hash_value);
    transparent_crc(p_867->g_122.s6, "p_867->g_122.s6", print_hash_value);
    transparent_crc(p_867->g_122.s7, "p_867->g_122.s7", print_hash_value);
    transparent_crc(p_867->g_123.x, "p_867->g_123.x", print_hash_value);
    transparent_crc(p_867->g_123.y, "p_867->g_123.y", print_hash_value);
    transparent_crc(p_867->g_123.z, "p_867->g_123.z", print_hash_value);
    transparent_crc(p_867->g_123.w, "p_867->g_123.w", print_hash_value);
    transparent_crc(p_867->g_154, "p_867->g_154", print_hash_value);
    transparent_crc(p_867->g_162.x, "p_867->g_162.x", print_hash_value);
    transparent_crc(p_867->g_162.y, "p_867->g_162.y", print_hash_value);
    transparent_crc(p_867->g_162.z, "p_867->g_162.z", print_hash_value);
    transparent_crc(p_867->g_162.w, "p_867->g_162.w", print_hash_value);
    transparent_crc(p_867->g_182.x, "p_867->g_182.x", print_hash_value);
    transparent_crc(p_867->g_182.y, "p_867->g_182.y", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_867->g_187[i][j][k], "p_867->g_187[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_867->g_195[i], "p_867->g_195[i]", print_hash_value);

    }
    transparent_crc(p_867->g_203.x, "p_867->g_203.x", print_hash_value);
    transparent_crc(p_867->g_203.y, "p_867->g_203.y", print_hash_value);
    transparent_crc(p_867->g_204, "p_867->g_204", print_hash_value);
    transparent_crc(p_867->g_207.s0, "p_867->g_207.s0", print_hash_value);
    transparent_crc(p_867->g_207.s1, "p_867->g_207.s1", print_hash_value);
    transparent_crc(p_867->g_207.s2, "p_867->g_207.s2", print_hash_value);
    transparent_crc(p_867->g_207.s3, "p_867->g_207.s3", print_hash_value);
    transparent_crc(p_867->g_207.s4, "p_867->g_207.s4", print_hash_value);
    transparent_crc(p_867->g_207.s5, "p_867->g_207.s5", print_hash_value);
    transparent_crc(p_867->g_207.s6, "p_867->g_207.s6", print_hash_value);
    transparent_crc(p_867->g_207.s7, "p_867->g_207.s7", print_hash_value);
    transparent_crc(p_867->g_246, "p_867->g_246", print_hash_value);
    transparent_crc(p_867->g_248, "p_867->g_248", print_hash_value);
    transparent_crc(p_867->g_250.x, "p_867->g_250.x", print_hash_value);
    transparent_crc(p_867->g_250.y, "p_867->g_250.y", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_867->g_259[i], "p_867->g_259[i]", print_hash_value);

    }
    transparent_crc(p_867->g_305, "p_867->g_305", print_hash_value);
    transparent_crc(p_867->g_330, "p_867->g_330", print_hash_value);
    transparent_crc(p_867->g_352, "p_867->g_352", print_hash_value);
    transparent_crc(p_867->g_365, "p_867->g_365", print_hash_value);
    transparent_crc(p_867->g_372.x, "p_867->g_372.x", print_hash_value);
    transparent_crc(p_867->g_372.y, "p_867->g_372.y", print_hash_value);
    transparent_crc(p_867->g_372.z, "p_867->g_372.z", print_hash_value);
    transparent_crc(p_867->g_372.w, "p_867->g_372.w", print_hash_value);
    transparent_crc(p_867->g_377, "p_867->g_377", print_hash_value);
    transparent_crc(p_867->g_380.s0, "p_867->g_380.s0", print_hash_value);
    transparent_crc(p_867->g_380.s1, "p_867->g_380.s1", print_hash_value);
    transparent_crc(p_867->g_380.s2, "p_867->g_380.s2", print_hash_value);
    transparent_crc(p_867->g_380.s3, "p_867->g_380.s3", print_hash_value);
    transparent_crc(p_867->g_380.s4, "p_867->g_380.s4", print_hash_value);
    transparent_crc(p_867->g_380.s5, "p_867->g_380.s5", print_hash_value);
    transparent_crc(p_867->g_380.s6, "p_867->g_380.s6", print_hash_value);
    transparent_crc(p_867->g_380.s7, "p_867->g_380.s7", print_hash_value);
    transparent_crc(p_867->g_380.s8, "p_867->g_380.s8", print_hash_value);
    transparent_crc(p_867->g_380.s9, "p_867->g_380.s9", print_hash_value);
    transparent_crc(p_867->g_380.sa, "p_867->g_380.sa", print_hash_value);
    transparent_crc(p_867->g_380.sb, "p_867->g_380.sb", print_hash_value);
    transparent_crc(p_867->g_380.sc, "p_867->g_380.sc", print_hash_value);
    transparent_crc(p_867->g_380.sd, "p_867->g_380.sd", print_hash_value);
    transparent_crc(p_867->g_380.se, "p_867->g_380.se", print_hash_value);
    transparent_crc(p_867->g_380.sf, "p_867->g_380.sf", print_hash_value);
    transparent_crc(p_867->g_392, "p_867->g_392", print_hash_value);
    transparent_crc(p_867->g_401.x, "p_867->g_401.x", print_hash_value);
    transparent_crc(p_867->g_401.y, "p_867->g_401.y", print_hash_value);
    transparent_crc(p_867->g_401.z, "p_867->g_401.z", print_hash_value);
    transparent_crc(p_867->g_401.w, "p_867->g_401.w", print_hash_value);
    transparent_crc(p_867->g_411.x, "p_867->g_411.x", print_hash_value);
    transparent_crc(p_867->g_411.y, "p_867->g_411.y", print_hash_value);
    transparent_crc(p_867->g_411.z, "p_867->g_411.z", print_hash_value);
    transparent_crc(p_867->g_411.w, "p_867->g_411.w", print_hash_value);
    transparent_crc(p_867->g_429.s0, "p_867->g_429.s0", print_hash_value);
    transparent_crc(p_867->g_429.s1, "p_867->g_429.s1", print_hash_value);
    transparent_crc(p_867->g_429.s2, "p_867->g_429.s2", print_hash_value);
    transparent_crc(p_867->g_429.s3, "p_867->g_429.s3", print_hash_value);
    transparent_crc(p_867->g_429.s4, "p_867->g_429.s4", print_hash_value);
    transparent_crc(p_867->g_429.s5, "p_867->g_429.s5", print_hash_value);
    transparent_crc(p_867->g_429.s6, "p_867->g_429.s6", print_hash_value);
    transparent_crc(p_867->g_429.s7, "p_867->g_429.s7", print_hash_value);
    transparent_crc(p_867->g_429.s8, "p_867->g_429.s8", print_hash_value);
    transparent_crc(p_867->g_429.s9, "p_867->g_429.s9", print_hash_value);
    transparent_crc(p_867->g_429.sa, "p_867->g_429.sa", print_hash_value);
    transparent_crc(p_867->g_429.sb, "p_867->g_429.sb", print_hash_value);
    transparent_crc(p_867->g_429.sc, "p_867->g_429.sc", print_hash_value);
    transparent_crc(p_867->g_429.sd, "p_867->g_429.sd", print_hash_value);
    transparent_crc(p_867->g_429.se, "p_867->g_429.se", print_hash_value);
    transparent_crc(p_867->g_429.sf, "p_867->g_429.sf", print_hash_value);
    transparent_crc(p_867->g_475.x, "p_867->g_475.x", print_hash_value);
    transparent_crc(p_867->g_475.y, "p_867->g_475.y", print_hash_value);
    transparent_crc(p_867->g_475.z, "p_867->g_475.z", print_hash_value);
    transparent_crc(p_867->g_475.w, "p_867->g_475.w", print_hash_value);
    transparent_crc(p_867->g_518.x, "p_867->g_518.x", print_hash_value);
    transparent_crc(p_867->g_518.y, "p_867->g_518.y", print_hash_value);
    transparent_crc(p_867->g_518.z, "p_867->g_518.z", print_hash_value);
    transparent_crc(p_867->g_518.w, "p_867->g_518.w", print_hash_value);
    transparent_crc(p_867->g_591.x, "p_867->g_591.x", print_hash_value);
    transparent_crc(p_867->g_591.y, "p_867->g_591.y", print_hash_value);
    transparent_crc(p_867->g_599, "p_867->g_599", print_hash_value);
    transparent_crc(p_867->g_644.x, "p_867->g_644.x", print_hash_value);
    transparent_crc(p_867->g_644.y, "p_867->g_644.y", print_hash_value);
    transparent_crc(p_867->g_644.z, "p_867->g_644.z", print_hash_value);
    transparent_crc(p_867->g_644.w, "p_867->g_644.w", print_hash_value);
    transparent_crc(p_867->g_686.s0, "p_867->g_686.s0", print_hash_value);
    transparent_crc(p_867->g_686.s1, "p_867->g_686.s1", print_hash_value);
    transparent_crc(p_867->g_686.s2, "p_867->g_686.s2", print_hash_value);
    transparent_crc(p_867->g_686.s3, "p_867->g_686.s3", print_hash_value);
    transparent_crc(p_867->g_686.s4, "p_867->g_686.s4", print_hash_value);
    transparent_crc(p_867->g_686.s5, "p_867->g_686.s5", print_hash_value);
    transparent_crc(p_867->g_686.s6, "p_867->g_686.s6", print_hash_value);
    transparent_crc(p_867->g_686.s7, "p_867->g_686.s7", print_hash_value);
    transparent_crc(p_867->g_686.s8, "p_867->g_686.s8", print_hash_value);
    transparent_crc(p_867->g_686.s9, "p_867->g_686.s9", print_hash_value);
    transparent_crc(p_867->g_686.sa, "p_867->g_686.sa", print_hash_value);
    transparent_crc(p_867->g_686.sb, "p_867->g_686.sb", print_hash_value);
    transparent_crc(p_867->g_686.sc, "p_867->g_686.sc", print_hash_value);
    transparent_crc(p_867->g_686.sd, "p_867->g_686.sd", print_hash_value);
    transparent_crc(p_867->g_686.se, "p_867->g_686.se", print_hash_value);
    transparent_crc(p_867->g_686.sf, "p_867->g_686.sf", print_hash_value);
    transparent_crc(p_867->g_697.s0, "p_867->g_697.s0", print_hash_value);
    transparent_crc(p_867->g_697.s1, "p_867->g_697.s1", print_hash_value);
    transparent_crc(p_867->g_697.s2, "p_867->g_697.s2", print_hash_value);
    transparent_crc(p_867->g_697.s3, "p_867->g_697.s3", print_hash_value);
    transparent_crc(p_867->g_697.s4, "p_867->g_697.s4", print_hash_value);
    transparent_crc(p_867->g_697.s5, "p_867->g_697.s5", print_hash_value);
    transparent_crc(p_867->g_697.s6, "p_867->g_697.s6", print_hash_value);
    transparent_crc(p_867->g_697.s7, "p_867->g_697.s7", print_hash_value);
    transparent_crc(p_867->g_697.s8, "p_867->g_697.s8", print_hash_value);
    transparent_crc(p_867->g_697.s9, "p_867->g_697.s9", print_hash_value);
    transparent_crc(p_867->g_697.sa, "p_867->g_697.sa", print_hash_value);
    transparent_crc(p_867->g_697.sb, "p_867->g_697.sb", print_hash_value);
    transparent_crc(p_867->g_697.sc, "p_867->g_697.sc", print_hash_value);
    transparent_crc(p_867->g_697.sd, "p_867->g_697.sd", print_hash_value);
    transparent_crc(p_867->g_697.se, "p_867->g_697.se", print_hash_value);
    transparent_crc(p_867->g_697.sf, "p_867->g_697.sf", print_hash_value);
    transparent_crc(p_867->g_762, "p_867->g_762", print_hash_value);
    transparent_crc(p_867->g_763.s0, "p_867->g_763.s0", print_hash_value);
    transparent_crc(p_867->g_763.s1, "p_867->g_763.s1", print_hash_value);
    transparent_crc(p_867->g_763.s2, "p_867->g_763.s2", print_hash_value);
    transparent_crc(p_867->g_763.s3, "p_867->g_763.s3", print_hash_value);
    transparent_crc(p_867->g_763.s4, "p_867->g_763.s4", print_hash_value);
    transparent_crc(p_867->g_763.s5, "p_867->g_763.s5", print_hash_value);
    transparent_crc(p_867->g_763.s6, "p_867->g_763.s6", print_hash_value);
    transparent_crc(p_867->g_763.s7, "p_867->g_763.s7", print_hash_value);
    transparent_crc(p_867->g_763.s8, "p_867->g_763.s8", print_hash_value);
    transparent_crc(p_867->g_763.s9, "p_867->g_763.s9", print_hash_value);
    transparent_crc(p_867->g_763.sa, "p_867->g_763.sa", print_hash_value);
    transparent_crc(p_867->g_763.sb, "p_867->g_763.sb", print_hash_value);
    transparent_crc(p_867->g_763.sc, "p_867->g_763.sc", print_hash_value);
    transparent_crc(p_867->g_763.sd, "p_867->g_763.sd", print_hash_value);
    transparent_crc(p_867->g_763.se, "p_867->g_763.se", print_hash_value);
    transparent_crc(p_867->g_763.sf, "p_867->g_763.sf", print_hash_value);
    transparent_crc(p_867->g_774.x, "p_867->g_774.x", print_hash_value);
    transparent_crc(p_867->g_774.y, "p_867->g_774.y", print_hash_value);
    transparent_crc(p_867->g_807.x, "p_867->g_807.x", print_hash_value);
    transparent_crc(p_867->g_807.y, "p_867->g_807.y", print_hash_value);
    transparent_crc(p_867->g_812, "p_867->g_812", print_hash_value);
    transparent_crc(p_867->g_828, "p_867->g_828", print_hash_value);
    transparent_crc(p_867->g_834.x, "p_867->g_834.x", print_hash_value);
    transparent_crc(p_867->g_834.y, "p_867->g_834.y", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
