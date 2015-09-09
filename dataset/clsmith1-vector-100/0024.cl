// ---fake_divergence -g 51,37,1 -l 51,1,1
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


// Seed: 24

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile VECTOR(int32_t, 2) g_2;
    int32_t g_3;
    int32_t g_7;
    VECTOR(int64_t, 8) g_20;
    VECTOR(int64_t, 4) g_21;
    VECTOR(int64_t, 4) g_22;
    VECTOR(uint16_t, 4) g_25;
    int16_t g_63;
    VECTOR(int32_t, 8) g_76;
    int16_t g_82;
    int16_t *g_81;
    uint32_t g_93;
    VECTOR(uint8_t, 8) g_103;
    volatile uint16_t g_117;
    volatile uint16_t * volatile g_116;
    volatile uint16_t * volatile *g_115;
    volatile uint16_t * volatile **g_114;
    uint8_t g_119;
    int64_t g_120;
    uint16_t g_139;
    uint16_t *g_138;
    uint16_t *g_145;
    uint16_t **g_144;
    int8_t g_149;
    VECTOR(uint8_t, 4) g_167;
    uint64_t g_176;
    int16_t g_191;
    uint32_t g_218;
    VECTOR(int32_t, 8) g_224;
    VECTOR(int64_t, 4) g_229;
    VECTOR(int32_t, 2) g_243;
    VECTOR(uint16_t, 2) g_248;
    VECTOR(uint16_t, 2) g_249;
    VECTOR(int32_t, 16) g_258;
    VECTOR(int16_t, 8) g_264;
    VECTOR(int32_t, 4) g_271;
    uint16_t ***g_280;
    volatile int64_t *g_283;
    volatile int64_t **g_282;
    VECTOR(uint8_t, 4) g_313;
    uint32_t g_362;
    uint64_t g_366;
    VECTOR(uint8_t, 16) g_400;
    int32_t *g_406;
    VECTOR(int8_t, 8) g_407;
    VECTOR(int8_t, 4) g_418;
    VECTOR(int8_t, 8) g_419;
    VECTOR(uint8_t, 4) g_426;
    VECTOR(uint8_t, 4) g_427;
    VECTOR(uint8_t, 16) g_428;
    VECTOR(int32_t, 4) g_483;
    VECTOR(uint8_t, 8) g_500;
    VECTOR(int32_t, 8) g_520;
    VECTOR(uint32_t, 4) g_543;
    VECTOR(int16_t, 8) g_552;
    VECTOR(uint32_t, 16) g_555;
    int16_t g_580;
    VECTOR(int32_t, 16) g_581;
    VECTOR(uint16_t, 2) g_585;
    VECTOR(uint8_t, 4) g_593;
    VECTOR(uint8_t, 16) g_594;
    int32_t g_602;
    uint32_t g_605;
    VECTOR(uint64_t, 2) g_617;
    VECTOR(int16_t, 8) g_620;
    VECTOR(uint16_t, 4) g_626;
    VECTOR(uint16_t, 4) g_636;
    VECTOR(int64_t, 2) g_640;
    int64_t *g_647[6];
    int64_t **g_646;
    int64_t ***g_645;
    VECTOR(int16_t, 8) g_664;
    VECTOR(int16_t, 16) g_667;
    VECTOR(uint64_t, 2) g_673;
    int32_t *g_690;
    VECTOR(uint32_t, 16) g_699;
    VECTOR(uint32_t, 2) g_700;
    VECTOR(uint32_t, 8) g_701;
    VECTOR(int64_t, 16) g_705;
    uint64_t g_757[10][3];
    int32_t **g_768[3];
    VECTOR(uint32_t, 4) g_806;
    VECTOR(uint16_t, 2) g_825;
    VECTOR(uint32_t, 4) g_826;
    VECTOR(uint16_t, 2) g_838;
    VECTOR(uint8_t, 16) g_847;
    VECTOR(uint8_t, 2) g_910;
    uint16_t ** volatile * volatile *g_912;
    uint16_t ** volatile * volatile **g_911;
    VECTOR(int16_t, 2) g_919;
    VECTOR(int16_t, 4) g_920;
    int64_t g_951[1][7][9];
    VECTOR(int32_t, 4) g_974;
    VECTOR(uint64_t, 4) g_975;
    uint16_t g_1033;
    VECTOR(int8_t, 16) g_1041;
    VECTOR(int32_t, 4) g_1044;
    VECTOR(int32_t, 4) g_1045;
    VECTOR(int32_t, 2) g_1047;
    VECTOR(uint16_t, 2) g_1054;
    VECTOR(uint16_t, 8) g_1057;
    uint32_t *g_1067;
    VECTOR(int64_t, 4) g_1113;
    VECTOR(uint8_t, 8) g_1118;
    int32_t ** volatile g_1136;
    volatile int64_t g_1174;
    volatile VECTOR(uint16_t, 16) g_1203;
    volatile VECTOR(uint16_t, 16) g_1204;
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
int8_t  func_1(struct S0 * p_1221);
int32_t * func_8(uint32_t  p_9, uint32_t  p_10, int32_t  p_11, int64_t  p_12, struct S0 * p_1221);
int8_t  func_14(uint32_t  p_15, int32_t * p_16, int32_t  p_17, int64_t  p_18, int64_t  p_19, struct S0 * p_1221);
int32_t * func_30(int32_t * p_31, int32_t * p_32, uint32_t  p_33, int32_t * p_34, int32_t * p_35, struct S0 * p_1221);
int32_t * func_36(int32_t * p_37, uint32_t  p_38, uint64_t  p_39, struct S0 * p_1221);
int32_t * func_40(int32_t * p_41, uint32_t  p_42, struct S0 * p_1221);
int32_t * func_43(int32_t * p_44, struct S0 * p_1221);
int32_t * func_45(int32_t  p_46, int32_t * p_47, int16_t  p_48, struct S0 * p_1221);
int32_t * func_49(int16_t  p_50, int64_t  p_51, int32_t * p_52, struct S0 * p_1221);
int8_t  func_71(int32_t  p_72, uint16_t  p_73, int16_t * p_74, struct S0 * p_1221);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1221->g_3 p_1221->g_82 p_1221->g_81 p_1221->g_117 p_1221->g_243 p_1221->g_520 p_1221->g_911 p_1221->g_912 p_1221->g_552 p_1221->g_313 p_1221->g_1057 p_1221->g_120 p_1221->g_636 p_1221->g_191 p_1221->g_1174 p_1221->g_1136 p_1221->g_690 p_1221->g_366 p_1221->g_1041 p_1221->g_282 p_1221->g_283 p_1221->g_646 p_1221->g_647 p_1221->g_555 p_1221->g_910 p_1221->g_700 p_1221->g_1203 p_1221->g_1204 p_1221->g_114 p_1221->g_115 p_1221->g_116 p_1221->g_1047 p_1221->g_500
 * writes: p_1221->g_3 p_1221->g_7 p_1221->g_82 p_1221->g_757 p_1221->g_120 p_1221->g_366
 */
int8_t  func_1(struct S0 * p_1221)
{ /* block id: 4 */
    int32_t *l_26[9];
    uint32_t l_1153[4] = {0xD1A8BEA0L,0xD1A8BEA0L,0xD1A8BEA0L,0xD1A8BEA0L};
    int32_t *l_1154 = (void*)0;
    int8_t *l_1161 = &p_1221->g_149;
    uint16_t ****l_1168 = &p_1221->g_280;
    int i;
    for (i = 0; i < 9; i++)
        l_26[i] = &p_1221->g_7;
    for (p_1221->g_3 = 0; (p_1221->g_3 != (-13)); p_1221->g_3--)
    { /* block id: 7 */
        int32_t *l_6 = &p_1221->g_7;
        int32_t l_13 = 0L;
        (*l_6) = p_1221->g_3;
    }
    for (p_1221->g_82 = 0; (p_1221->g_82 > (-8)); --p_1221->g_82)
    { /* block id: 427 */
        uint8_t l_1141 = 0UL;
        int32_t *l_1142[9][5][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
        int32_t **l_1143 = (void*)0;
        int32_t *l_1144 = (void*)0;
        int16_t *l_1147 = (void*)0;
        int16_t *l_1148 = &p_1221->g_63;
        VECTOR(int8_t, 8) l_1151 = (VECTOR(int8_t, 8))(0x07L, (VECTOR(int8_t, 4))(0x07L, (VECTOR(int8_t, 2))(0x07L, 0x5AL), 0x5AL), 0x5AL, 0x07L, 0x5AL);
        uint64_t *l_1169 = &p_1221->g_757[4][0];
        int64_t *l_1170 = (void*)0;
        int64_t *l_1171 = (void*)0;
        int64_t *l_1172 = (void*)0;
        int64_t *l_1173 = &p_1221->g_120;
        uint32_t l_1217 = 4294967295UL;
        uint32_t l_1220 = 1UL;
        int i, j, k;
        l_1144 = l_1154;
        if (((((((*l_1173) &= (safe_mul_func_uint8_t_u_u(((safe_mod_func_int16_t_s_s((*p_1221->g_81), (safe_mul_func_int16_t_s_s((*p_1221->g_81), (*p_1221->g_81))))) < (((l_1161 == (void*)0) , 0xC2L) ^ (((*l_1169) = (p_1221->g_117 , (safe_sub_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(((safe_mod_func_int32_t_s_s(((((0UL & p_1221->g_243.x) <= p_1221->g_520.s2) , (*p_1221->g_911)) == l_1168), p_1221->g_552.s2)) , p_1221->g_313.x), p_1221->g_313.z)), 0x55DCL)))) , p_1221->g_313.y))), p_1221->g_1057.s1))) & p_1221->g_636.z) <= p_1221->g_191) , 0UL) > 0xB974246F4A708AD0L))
        { /* block id: 434 */
            int32_t *l_1175 = (void*)0;
            int64_t l_1190 = 0L;
            l_26[8] = l_26[0];
            if (p_1221->g_1174)
                break;
            l_1175 = (*p_1221->g_1136);
            for (p_1221->g_366 = (-6); (p_1221->g_366 <= 5); p_1221->g_366 = safe_add_func_int8_t_s_s(p_1221->g_366, 1))
            { /* block id: 440 */
                int8_t l_1191[1][4];
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 4; j++)
                        l_1191[i][j] = 0x76L;
                }
                for (p_1221->g_120 = 0; (p_1221->g_120 <= (-28)); p_1221->g_120 = safe_sub_func_int8_t_s_s(p_1221->g_120, 6))
                { /* block id: 443 */
                    uint8_t l_1192 = 0xDFL;
                    int32_t l_1193 = 0x3EB18F25L;
                    l_1193 = (((((-1L) < ((safe_add_func_int64_t_s_s((((safe_add_func_uint64_t_u_u(p_1221->g_1041.s1, (safe_mul_func_int8_t_s_s((safe_mul_func_int8_t_s_s((safe_sub_func_int32_t_s_s((l_1190 = ((void*)0 == &p_1221->g_605)), ((*p_1221->g_282) == (*p_1221->g_646)))), 0x73L)), ((p_1221->g_555.sd , p_1221->g_313.x) <= p_1221->g_636.y))))) | l_1191[0][3]) != l_1192), l_1191[0][3])) , l_1191[0][1])) <= l_1191[0][3]) | p_1221->g_910.y) != 0x7147L);
                }
                return l_1191[0][2];
            }
        }
        else
        { /* block id: 449 */
            int32_t l_1200 = 3L;
            uint64_t l_1208 = 0xF4A773C0CB9E5257L;
            int32_t l_1209 = 7L;
            int32_t l_1210 = 0L;
            int32_t l_1211 = 0x797F37ADL;
            int32_t l_1212[9][5][5] = {{{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)}},{{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)}},{{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)}},{{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)}},{{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)}},{{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)}},{{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)}},{{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)}},{{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)},{0x448DEE15L,0x448DEE15L,0x37041AA1L,0L,(-7L)}}};
            uint64_t l_1213 = 0x71D8E37965C9FA1DL;
            int32_t l_1216 = 1L;
            int i, j, k;
            l_1200 = (safe_mul_func_uint8_t_u_u(p_1221->g_700.x, (((safe_add_func_uint16_t_u_u(((((safe_add_func_uint64_t_u_u(p_1221->g_1057.s3, 18446744073709551606UL)) , l_1200) != GROUP_DIVERGE(2, 1)) | ((!((((VECTOR(uint32_t, 16))(0x62B6312EL, (l_1200 , (safe_lshift_func_uint8_t_u_s((((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),VECTOR(uint16_t, 8),((VECTOR(uint16_t, 4))(p_1221->g_1203.sebe1)).yxxxwxzy, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(p_1221->g_1204.s9ebd)).even)).yyyyyyyy, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0x9939L, 0UL)).xyxyxyxx))))).s5 , 251UL), 3))), (4L == (!(safe_rshift_func_int16_t_s_s((((l_1144 != (((((safe_unary_minus_func_int16_t_s((*p_1221->g_81))) == l_1208) >= 0x3D11DE424B8A6193L) , (***p_1221->g_114)) , l_1142[0][3][0])) != (*p_1221->g_81)) , (*p_1221->g_81)), (*p_1221->g_81))))), 0UL, l_1200, 0UL, 4294967295UL, 0xB2F42A6BL, ((VECTOR(uint32_t, 2))(0UL)), 4294967295UL, ((VECTOR(uint32_t, 4))(0UL)), 4294967290UL)).s4 , &p_1221->g_406) == &p_1221->g_406)) || 1L)), 0x7472L)) | l_1200) <= p_1221->g_1047.x)));
            l_1213--;
            if (l_1211)
                continue;
            l_1217++;
        }
        if (l_1220)
            break;
    }
    return p_1221->g_500.s0;
}


/* ------------------------------------------ */
/* 
 * reads : p_1221->g_93 p_1221->g_63 p_1221->g_1136
 * writes: p_1221->g_93 p_1221->g_63 p_1221->g_690
 */
int32_t * func_8(uint32_t  p_9, uint32_t  p_10, int32_t  p_11, int64_t  p_12, struct S0 * p_1221)
{ /* block id: 409 */
    int32_t *l_1135 = (void*)0;
    int32_t *l_1137[4][1][2] = {{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}}};
    int64_t l_1138 = 5L;
    int i, j, k;
    for (p_1221->g_93 = 0; (p_1221->g_93 < 10); p_1221->g_93++)
    { /* block id: 412 */
        uint32_t l_1132 = 1UL;
        for (p_1221->g_63 = 0; (p_1221->g_63 == 20); ++p_1221->g_63)
        { /* block id: 415 */
            l_1132--;
            (*p_1221->g_1136) = l_1135;
        }
    }
    l_1138 = p_11;
    return l_1137[1][0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1221->g_7 p_1221->g_605 p_1221->g_974 p_1221->g_552 p_1221->g_81 p_1221->g_82 p_1221->g_975 p_1221->g_700 p_1221->g_636 p_1221->g_581 p_1221->g_176 p_1221->g_757 p_1221->g_419 p_1221->g_144 p_1221->g_145 p_1221->g_910 p_1221->g_138 p_1221->g_139 p_1221->g_543 p_1221->g_806 p_1221->g_1113 p_1221->g_1118 p_1221->g_705 p_1221->g_826 p_1221->g_362
 * writes: p_1221->g_7 p_1221->g_605 p_1221->g_82 p_1221->g_191 p_1221->g_218 p_1221->g_1033 p_1221->g_139 p_1221->g_366 p_1221->g_826
 */
int8_t  func_14(uint32_t  p_15, int32_t * p_16, int32_t  p_17, int64_t  p_18, int64_t  p_19, struct S0 * p_1221)
{ /* block id: 9 */
    uint16_t l_27[7] = {0xE26BL,65529UL,0xE26BL,0xE26BL,65529UL,0xE26BL,0xE26BL};
    uint16_t **l_453[8];
    int32_t ***l_976[10];
    int32_t l_981 = 0x34C280D8L;
    int32_t l_994 = 0x1A588918L;
    VECTOR(int16_t, 4) l_1001 = (VECTOR(int16_t, 4))((-6L), (VECTOR(int16_t, 2))((-6L), 0x2F73L), 0x2F73L);
    uint32_t l_1034 = 0xA4DEC1FAL;
    uint32_t *l_1061 = &l_1034;
    int64_t l_1073 = 0x09AABE7176771DC0L;
    VECTOR(int32_t, 16) l_1099 = (VECTOR(int32_t, 16))(0x0C63F85FL, (VECTOR(int32_t, 4))(0x0C63F85FL, (VECTOR(int32_t, 2))(0x0C63F85FL, 0L), 0L), 0L, 0x0C63F85FL, 0L, (VECTOR(int32_t, 2))(0x0C63F85FL, 0L), (VECTOR(int32_t, 2))(0x0C63F85FL, 0L), 0x0C63F85FL, 0L, 0x0C63F85FL, 0L);
    VECTOR(int64_t, 16) l_1112 = (VECTOR(int64_t, 16))(0x6F82DFAEE37CD59BL, (VECTOR(int64_t, 4))(0x6F82DFAEE37CD59BL, (VECTOR(int64_t, 2))(0x6F82DFAEE37CD59BL, 0L), 0L), 0L, 0x6F82DFAEE37CD59BL, 0L, (VECTOR(int64_t, 2))(0x6F82DFAEE37CD59BL, 0L), (VECTOR(int64_t, 2))(0x6F82DFAEE37CD59BL, 0L), 0x6F82DFAEE37CD59BL, 0L, 0x6F82DFAEE37CD59BL, 0L);
    VECTOR(int64_t, 2) l_1114 = (VECTOR(int64_t, 2))(0x37ECAB726637A248L, 0x42201554312E6D23L);
    VECTOR(int64_t, 8) l_1115 = (VECTOR(int64_t, 8))(0x682793A67E4C9A99L, (VECTOR(int64_t, 4))(0x682793A67E4C9A99L, (VECTOR(int64_t, 2))(0x682793A67E4C9A99L, (-1L)), (-1L)), (-1L), 0x682793A67E4C9A99L, (-1L));
    uint64_t l_1119[2][6][5] = {{{0x52FEDB2F10F50106L,0x52FEDB2F10F50106L,1UL,0xD519CFEC0BC42AE1L,0xF213D274A7EBA57CL},{0x52FEDB2F10F50106L,0x52FEDB2F10F50106L,1UL,0xD519CFEC0BC42AE1L,0xF213D274A7EBA57CL},{0x52FEDB2F10F50106L,0x52FEDB2F10F50106L,1UL,0xD519CFEC0BC42AE1L,0xF213D274A7EBA57CL},{0x52FEDB2F10F50106L,0x52FEDB2F10F50106L,1UL,0xD519CFEC0BC42AE1L,0xF213D274A7EBA57CL},{0x52FEDB2F10F50106L,0x52FEDB2F10F50106L,1UL,0xD519CFEC0BC42AE1L,0xF213D274A7EBA57CL},{0x52FEDB2F10F50106L,0x52FEDB2F10F50106L,1UL,0xD519CFEC0BC42AE1L,0xF213D274A7EBA57CL}},{{0x52FEDB2F10F50106L,0x52FEDB2F10F50106L,1UL,0xD519CFEC0BC42AE1L,0xF213D274A7EBA57CL},{0x52FEDB2F10F50106L,0x52FEDB2F10F50106L,1UL,0xD519CFEC0BC42AE1L,0xF213D274A7EBA57CL},{0x52FEDB2F10F50106L,0x52FEDB2F10F50106L,1UL,0xD519CFEC0BC42AE1L,0xF213D274A7EBA57CL},{0x52FEDB2F10F50106L,0x52FEDB2F10F50106L,1UL,0xD519CFEC0BC42AE1L,0xF213D274A7EBA57CL},{0x52FEDB2F10F50106L,0x52FEDB2F10F50106L,1UL,0xD519CFEC0BC42AE1L,0xF213D274A7EBA57CL},{0x52FEDB2F10F50106L,0x52FEDB2F10F50106L,1UL,0xD519CFEC0BC42AE1L,0xF213D274A7EBA57CL}}};
    int32_t l_1124 = (-5L);
    uint64_t *l_1125 = &p_1221->g_366;
    int16_t l_1126 = 0x7B5BL;
    uint32_t *l_1127[5][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_453[i] = &p_1221->g_138;
    for (i = 0; i < 10; i++)
        l_976[i] = &p_1221->g_768[0];
    (*p_16) = (*p_16);
    if (l_27[4])
    { /* block id: 11 */
        uint16_t *l_450 = &l_27[4];
        uint16_t **l_452 = &p_1221->g_138;
        int32_t l_979 = 3L;
        VECTOR(int16_t, 4) l_1002 = (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), 0x061AL), 0x061AL);
        int32_t ****l_1032 = &l_976[9];
        VECTOR(int32_t, 8) l_1048 = (VECTOR(int32_t, 8))(0x162FD5F7L, (VECTOR(int32_t, 4))(0x162FD5F7L, (VECTOR(int32_t, 2))(0x162FD5F7L, 7L), 7L), 7L, 0x162FD5F7L, 7L);
        int64_t *l_1053 = (void*)0;
        int8_t l_1068 = 2L;
        int i;
        for (p_15 = 8; (p_15 == 16); p_15++)
        { /* block id: 14 */
            int8_t l_451 = 0L;
            int32_t *l_608 = &p_1221->g_602;
            int32_t **l_963 = &p_1221->g_690;
            (1 + 1);
        }
        for (p_1221->g_605 = 0; (p_1221->g_605 >= 11); p_1221->g_605 = safe_add_func_int32_t_s_s(p_1221->g_605, 1))
        { /* block id: 361 */
            int8_t l_968 = 0x57L;
            VECTOR(int8_t, 4) l_971 = (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), (-1L)), (-1L));
            int i;
            (*p_16) |= 5L;
            for (p_17 = 0; (p_17 < (-6)); p_17 = safe_sub_func_int64_t_s_s(p_17, 2))
            { /* block id: 365 */
                (*p_16) &= l_968;
            }
            if ((safe_div_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), ((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x43L, 0x58L)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(l_971.zx)))).xxyx)), (-6L), (-8L))), (-2L), 0x12L, 6L, ((safe_div_func_uint16_t_u_u((((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(p_1221->g_974.zyywxwxyyzzzwyzz)).s69))))).hi , (l_27[4] ^ (0L == (p_1221->g_552.s0 < 0x78L)))), p_18)) != (9UL | (0L & ((*p_1221->g_81) |= (l_971.w < (&p_1221->g_119 == (void*)0)))))), 0x44L, ((VECTOR(int8_t, 2))(0L)), 7L)).s3274)).even, ((VECTOR(int8_t, 2))(0x3CL))))).xxxy, ((VECTOR(int8_t, 4))(0x18L))))).hi)).xxxxxyyx)).lo, ((VECTOR(int8_t, 4))(0x09L))))).z)))
            { /* block id: 369 */
                int32_t ****l_977 = (void*)0;
                int32_t ****l_978 = &l_976[2];
                int64_t *l_980[5] = {&p_1221->g_120,&p_1221->g_120,&p_1221->g_120,&p_1221->g_120,&p_1221->g_120};
                int8_t *l_989 = (void*)0;
                int8_t **l_988 = &l_989;
                int8_t **l_990 = (void*)0;
                int8_t *l_992[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int8_t **l_991 = &l_992[7];
                int32_t *l_993[7];
                int16_t *l_997 = (void*)0;
                int16_t *l_998 = &p_1221->g_191;
                int i;
                for (i = 0; i < 7; i++)
                    l_993[i] = (void*)0;
                l_994 = ((*p_16) = ((0xD6CFEC848DBAB9E7L | ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(p_1221->g_975.zx)), ((l_981 ^= ((&p_1221->g_768[2] != ((*l_978) = l_976[3])) , l_979)) & ((5UL != (safe_rshift_func_uint16_t_u_s(p_17, (safe_mul_func_uint8_t_u_u((safe_add_func_uint16_t_u_u((p_1221->g_700.x || (((*l_988) = &p_1221->g_149) != ((*l_991) = &l_968))), 0x3478L)), 0x0BL))))) < (-1L))), ((VECTOR(uint64_t, 4))(18446744073709551615UL)), l_979, 18446744073709551613UL, l_971.w, 0x84E082B5F645BEB7L, 0x92D3B1EE96AD7ECCL, GROUP_DIVERGE(0, 1), 18446744073709551615UL, 1UL, 6UL)).sf) , (*p_16)));
                (*p_16) &= (safe_mul_func_int16_t_s_s((*p_1221->g_81), ((*l_998) = (-4L))));
                l_979 = 0x6626B10CL;
                (*p_16) = (safe_add_func_int64_t_s_s((-1L), (p_1221->g_636.x , (((void*)0 != &p_15) == 0x749F44C1L))));
            }
            else
            { /* block id: 380 */
                uint16_t l_1017 = 65527UL;
                uint32_t *l_1031 = &p_1221->g_218;
                l_1034 &= (((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 2))(l_1001.wy)), ((VECTOR(int16_t, 4))(l_1002.wxxx)).hi, ((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 8))(0x23DDL, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))((safe_lshift_func_uint16_t_u_s((safe_div_func_int16_t_s_s((safe_div_func_int64_t_s_s(((safe_sub_func_int64_t_s_s(0x6B8A5E2A2597D535L, (safe_add_func_uint32_t_u_u((((((void*)0 != &p_1221->g_768[2]) <= (safe_add_func_uint32_t_u_u(((p_1221->g_581.s0 || (safe_lshift_func_uint8_t_u_u(p_1221->g_176, (l_1017 >= (safe_sub_func_uint32_t_u_u((p_17 | (safe_mul_func_uint16_t_u_u(((safe_div_func_int32_t_s_s((((!(p_1221->g_1033 = ((safe_unary_minus_func_uint16_t_u(((safe_div_func_int64_t_s_s(((((safe_sub_func_int32_t_s_s(3L, (safe_div_func_int64_t_s_s((~(((*l_1031) = p_1221->g_757[2][1]) == (*p_16))), p_17)))) , (void*)0) != l_1032) , p_17), 3L)) , l_1017))) < (*p_16)))) , 0L) , 1L), 4294967291UL)) != l_1017), p_19))), 0xB6CDF629L)))))) , p_19), 0L))) ^ p_17) > p_18), p_1221->g_419.s1)))) > p_1221->g_757[8][0]), l_1017)), p_18)), p_18)), ((VECTOR(int16_t, 2))(0x3E2CL)), 0x255EL, 0x3A57L, (-1L), (-1L), ((VECTOR(int16_t, 4))(1L)), (*p_1221->g_81), 0L, 0x5A6FL, 0x7668L, 0x5501L)).s12)), (*p_1221->g_81), ((VECTOR(int16_t, 4))((-1L))))).odd, ((VECTOR(int16_t, 4))(0x3DEDL))))).even))).even ^ p_17);
                return p_19;
            }
        }
        for (p_1221->g_605 = 24; (p_1221->g_605 <= 2); p_1221->g_605 = safe_sub_func_int32_t_s_s(p_1221->g_605, 2))
        { /* block id: 389 */
            int32_t l_1046[10][7][3];
            VECTOR(uint16_t, 16) l_1055 = (VECTOR(uint16_t, 16))(0x0833L, (VECTOR(uint16_t, 4))(0x0833L, (VECTOR(uint16_t, 2))(0x0833L, 4UL), 4UL), 4UL, 0x0833L, 4UL, (VECTOR(uint16_t, 2))(0x0833L, 4UL), (VECTOR(uint16_t, 2))(0x0833L, 4UL), 0x0833L, 4UL, 0x0833L, 4UL);
            VECTOR(uint16_t, 4) l_1056 = (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 0x88A5L), 0x88A5L);
            VECTOR(uint16_t, 4) l_1058 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xFBDCL), 0xFBDCL);
            uint32_t *l_1066 = (void*)0;
            uint32_t **l_1065[2];
            int32_t l_1069 = (-1L);
            int32_t l_1070 = 0x19A1FB8FL;
            int8_t *l_1071 = (void*)0;
            int8_t *l_1072 = &l_1068;
            int i, j, k;
            for (i = 0; i < 10; i++)
            {
                for (j = 0; j < 7; j++)
                {
                    for (k = 0; k < 3; k++)
                        l_1046[i][j][k] = (-9L);
                }
            }
            for (i = 0; i < 2; i++)
                l_1065[i] = &l_1066;
            l_1048.s2 = ((*p_16) = (((safe_mod_func_int8_t_s_s(((*l_1072) = ((l_1070 &= (safe_mul_func_uint8_t_u_u(((((((~((((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 4))(p_1221->g_1041.se0a8)).wyzyyxzy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))((((VECTOR(int64_t, 16))(0L, (l_1069 ^= ((safe_lshift_func_uint16_t_u_u((((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(p_1221->g_1044.wx)))), ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 2))((-1L), 0x451217EEL)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(p_1221->g_1045.xwwxzzxy)), l_1046[4][5][0], ((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(p_1221->g_1047.xx)).xxxxyxyyxyyxxxxy)).sbbfa, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x2B3B7C84L, (-3L))), ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))(0x6D83E865L, 0x0F373300L)).xxyx, ((VECTOR(int32_t, 2))(l_1048.s05)).yxyy))), (-1L), 1L)))).lo, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(0x64B4E2FAL, (-1L), (safe_sub_func_int8_t_s_s(p_1221->g_25.x, p_15)), ((safe_sub_func_int16_t_s_s(((void*)0 == l_1053), ((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 2))(p_1221->g_1054.yx)).xyxx, ((VECTOR(uint16_t, 16))(65527UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_1055.s39)), 1UL, 1UL)), 4UL, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 16))(abs(((VECTOR(uint16_t, 2))(l_1056.yz)).yyxyxxyyxxyxyxxy))).sa5, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(p_1221->g_1057.s07)).xxyxxyyxxxyxxxyy)).sf2))))))), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(l_1058.xzyxyyyxxyyxwyxw)).s10)), (safe_rshift_func_uint16_t_u_u((l_1061 != ((safe_unary_minus_func_uint8_t_u((p_1221->g_555.sa , (safe_sub_func_int32_t_s_s(0x6B744785L, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(0xEDC5C12AL, 0xADD4646BL)))).yyxyyxxx)).s4))))) , (p_1221->g_1067 = p_16))), GROUP_DIVERGE(0, 1))), ((VECTOR(uint16_t, 4))(65526UL)), 0x469AL)).sd333))).wzxxwzyyyxxzwyzz)).hi))).s0)) || 252UL), ((VECTOR(int32_t, 2))((-2L))), l_1068, 6L, ((VECTOR(int32_t, 4))(0x6230EC42L)), 1L, 0x6BB679DBL, (-2L), (-1L))).odd)).s7304713433256150)).s9795))), 0x3E5C2B5DL, 0L, (-3L))).s02))), ((VECTOR(int32_t, 2))(0x2046D87AL))))))))))).odd && 0L), l_1046[0][6][1])) > (*p_16))), 0x444BD5D9B967EC74L, 1L, 0x5E4EF00E4D6F8978L, 0x323BE67E184E1A7FL, p_17, 0x6FF0C6EB49B1DFF8L, 3L, 0x6B8745BC9E1BBD45L, l_1058.z, 0x600F101119E6D62CL, (-8L), 0x14F9DF44AE2DC733L, 0x64C324428C8D12A6L, (-2L))).sf , (-1L)), ((VECTOR(int8_t, 2))(0x16L)), (-10L), 0x65L, p_1221->g_593.z, 1L, 0L, 1L, 0x0FL, ((VECTOR(int8_t, 4))(1L)), 0x75L, 0L)).lo)), ((VECTOR(int8_t, 8))(0x77L))))).s0 == 0x05L) & 1L)) , 8UL) != 0UL) >= 0x25B3L) , 4294967295UL) != (*p_16)), (-1L)))) & 0x3D827160L)), p_15)) , (void*)0) != (*p_1221->g_144)));
        }
    }
    else
    { /* block id: 397 */
        int16_t l_1086 = 0x7E67L;
        int32_t l_1097 = 0x6AC68E4DL;
        int32_t l_1098 = 0x38F88D8DL;
        l_1098 |= ((l_1073 , (safe_mul_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_s((safe_div_func_int16_t_s_s(((safe_lshift_func_int16_t_s_s((safe_div_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(0x60C3L, 65535UL)) != l_1086), p_17)), 13)) != (safe_sub_func_int32_t_s_s((p_15 == ((l_1086 , ((*p_16) = (((l_1086 > (safe_mul_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_s((safe_div_func_int64_t_s_s((((*p_1221->g_138) |= (safe_sub_func_int8_t_s_s(p_1221->g_910.y, (-1L)))) || (*p_1221->g_81)), p_17)), p_1221->g_581.s1)) && p_1221->g_543.y), p_17))) , p_18) , l_1097))) == p_1221->g_806.x)), p_15))), (*p_1221->g_81))), (*p_1221->g_81))) > 1L), 0x6571L))) , 5L);
        l_1097 &= ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_1099.s85ca)).yzwwxzwx)).s26))).yxyxyyxx))).s6;
    }
    p_17 = (safe_mul_func_int16_t_s_s(((p_1221->g_826.w &= (((safe_add_func_int64_t_s_s((safe_sub_func_int8_t_s_s(((0x5C836174L > (l_1126 &= ((safe_add_func_int64_t_s_s(((safe_sub_func_int16_t_s_s(0x71D7L, ((p_17 < ((*l_1125) = (((safe_add_func_uint64_t_u_u((p_18 , (((*p_16) = ((((VECTOR(int64_t, 16))(l_1112.s8154e77d53470481)).s9 > ((VECTOR(int64_t, 4))(p_1221->g_1113.xwyy)).x) > (((((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(l_1114.yx)).xxyxxxxy)).even)).xxzywzxy, ((VECTOR(int64_t, 2))(l_1115.s16)).yyyyxxxy))).even)).yxzywwzxywwzxyzy, (int64_t)4L))).s7 , (((+(safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 2))(p_1221->g_1118.s35)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(l_1119[1][2][3], 0xD2L, (safe_mod_func_int16_t_s_s(1L, 65535UL)), (safe_mul_func_int16_t_s_s((((-4L) | 1L) != (-2L)), 0x13BAL)), 0x8AL, 0x78L, 0x3EL, 252UL)).lo)))).hi))), ((VECTOR(uint8_t, 2))(0x46L)), 248UL, 0xC5L, 2UL, 255UL)).s66)).hi, 6))) <= (*p_16)) & 65535UL)) , (*p_16)) >= l_1124))) , p_18)), 0x2B7381939FE7DFA1L)) <= 0x4CL) == p_1221->g_705.s7))) ^ 18446744073709551611UL))) , p_18), 0xED0CA7F84335B076L)) , 9L))) <= p_15), 252UL)), p_15)) , 0xD4L) >= p_15)) != 0UL), 7L));
    return p_1221->g_362;
}


/* ------------------------------------------ */
/* 
 * reads : p_1221->g_191 p_1221->g_602 p_1221->g_176 p_1221->g_282 p_1221->g_283 p_1221->g_543 p_1221->g_243 p_1221->g_690 p_1221->g_699 p_1221->g_700 p_1221->g_701 p_1221->g_705 p_1221->g_120 p_1221->g_580 p_1221->g_144 p_1221->g_145 p_1221->g_400 p_1221->g_149 p_1221->g_224 p_1221->g_139 p_1221->g_664 p_1221->g_667 p_1221->g_520 p_1221->g_806 p_1221->g_406 p_1221->g_847 p_1221->g_555 p_1221->g_362 p_1221->g_407 p_1221->g_418 p_1221->g_825 p_1221->g_910 p_1221->g_911 p_1221->g_919 p_1221->g_920 p_1221->g_138 p_1221->g_264 p_1221->g_951
 * writes: p_1221->g_191 p_1221->g_366 p_1221->g_218 p_1221->g_63 p_1221->g_602 p_1221->g_176 p_1221->g_7 p_1221->g_406 p_1221->g_690 p_1221->g_120 p_1221->g_149 p_1221->g_139 p_1221->g_768 p_1221->g_806 p_1221->g_407 p_1221->g_951
 */
int32_t * func_30(int32_t * p_31, int32_t * p_32, uint32_t  p_33, int32_t * p_34, int32_t * p_35, struct S0 * p_1221)
{ /* block id: 223 */
    VECTOR(uint8_t, 2) l_619 = (VECTOR(uint8_t, 2))(0x53L, 1UL);
    int64_t **l_642[2];
    int64_t ***l_641[3][3][3] = {{{&l_642[0],&l_642[0],&l_642[1]},{&l_642[0],&l_642[0],&l_642[1]},{&l_642[0],&l_642[0],&l_642[1]}},{{&l_642[0],&l_642[0],&l_642[1]},{&l_642[0],&l_642[0],&l_642[1]},{&l_642[0],&l_642[0],&l_642[1]}},{{&l_642[0],&l_642[0],&l_642[1]},{&l_642[0],&l_642[0],&l_642[1]},{&l_642[0],&l_642[0],&l_642[1]}}};
    VECTOR(uint64_t, 4) l_674 = (VECTOR(uint64_t, 4))(0xCFD211CE62C889F3L, (VECTOR(uint64_t, 2))(0xCFD211CE62C889F3L, 18446744073709551609UL), 18446744073709551609UL);
    uint32_t l_686[1][10] = {{0x78D8D2CDL,0x78D8D2CDL,0x78D8D2CDL,0x78D8D2CDL,0x78D8D2CDL,0x78D8D2CDL,0x78D8D2CDL,0x78D8D2CDL,0x78D8D2CDL,0x78D8D2CDL}};
    uint16_t ***l_702[5] = {&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144};
    int32_t l_706 = 1L;
    int32_t l_728 = (-1L);
    int32_t l_739 = (-1L);
    int32_t l_779[3][2][2] = {{{1L,0x3278E20FL},{1L,0x3278E20FL}},{{1L,0x3278E20FL},{1L,0x3278E20FL}},{{1L,0x3278E20FL},{1L,0x3278E20FL}}};
    VECTOR(int64_t, 2) l_789 = (VECTOR(int64_t, 2))((-1L), 3L);
    uint64_t *l_837 = &p_1221->g_366;
    uint32_t l_897 = 8UL;
    int32_t *l_955 = (void*)0;
    int32_t *l_956 = &l_779[1][0][1];
    int32_t *l_957[5];
    int16_t l_958 = 0x57D2L;
    uint16_t l_959[7];
    int32_t *l_962 = &p_1221->g_602;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_642[i] = (void*)0;
    for (i = 0; i < 5; i++)
        l_957[i] = (void*)0;
    for (i = 0; i < 7; i++)
        l_959[i] = 0x3F41L;
    for (p_1221->g_191 = (-30); (p_1221->g_191 >= (-11)); p_1221->g_191++)
    { /* block id: 226 */
        VECTOR(uint16_t, 4) l_627 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x0311L), 0x0311L);
        int64_t *l_629 = &p_1221->g_120;
        VECTOR(uint16_t, 2) l_637 = (VECTOR(uint16_t, 2))(65535UL, 0xA938L);
        int64_t ***l_643 = &l_642[1];
        int32_t l_681[5] = {0L,0L,0L,0L,0L};
        uint16_t ****l_684[8][4][1] = {{{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280}},{{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280}},{{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280}},{{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280}},{{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280}},{{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280}},{{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280}},{{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280},{&p_1221->g_280}}};
        uint16_t ****l_685 = &p_1221->g_280;
        int32_t *l_689 = (void*)0;
        VECTOR(int64_t, 2) l_694 = (VECTOR(int64_t, 2))(0x1E004DA9AC27A7D0L, 1L);
        int i, j, k;
        if ((*p_34))
            break;
        for (p_1221->g_366 = 0; (p_1221->g_366 >= 34); ++p_1221->g_366)
        { /* block id: 230 */
            VECTOR(int8_t, 16) l_618 = (VECTOR(int8_t, 16))(0x5BL, (VECTOR(int8_t, 4))(0x5BL, (VECTOR(int8_t, 2))(0x5BL, 1L), 1L), 1L, 0x5BL, 1L, (VECTOR(int8_t, 2))(0x5BL, 1L), (VECTOR(int8_t, 2))(0x5BL, 1L), 0x5BL, 1L, 0x5BL, 1L);
            VECTOR(int16_t, 16) l_621 = (VECTOR(int16_t, 16))(0x32CDL, (VECTOR(int16_t, 4))(0x32CDL, (VECTOR(int16_t, 2))(0x32CDL, 0x6E1FL), 0x6E1FL), 0x6E1FL, 0x32CDL, 0x6E1FL, (VECTOR(int16_t, 2))(0x32CDL, 0x6E1FL), (VECTOR(int16_t, 2))(0x32CDL, 0x6E1FL), 0x32CDL, 0x6E1FL, 0x32CDL, 0x6E1FL);
            VECTOR(int16_t, 16) l_623 = (VECTOR(int16_t, 16))(5L, (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, (-1L)), (-1L)), (-1L), 5L, (-1L), (VECTOR(int16_t, 2))(5L, (-1L)), (VECTOR(int16_t, 2))(5L, (-1L)), 5L, (-1L), 5L, (-1L));
            VECTOR(uint16_t, 4) l_624 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 6UL), 6UL);
            uint16_t l_628 = 5UL;
            int64_t ****l_656 = (void*)0;
            VECTOR(int16_t, 2) l_666 = (VECTOR(int16_t, 2))(0x69B4L, (-6L));
            int64_t *l_669 = &p_1221->g_120;
            int32_t **l_712[5][1] = {{&l_689},{&l_689},{&l_689},{&l_689},{&l_689}};
            uint16_t *l_715[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int8_t *l_716 = (void*)0;
            int8_t *l_717 = &p_1221->g_149;
            int8_t *l_718 = (void*)0;
            int8_t *l_719 = (void*)0;
            int8_t *l_720 = (void*)0;
            int8_t *l_721 = (void*)0;
            int8_t *l_722 = (void*)0;
            int8_t *l_723 = (void*)0;
            int8_t *l_724 = (void*)0;
            int8_t *l_725 = (void*)0;
            int8_t *l_726 = (void*)0;
            int8_t *l_727[7][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int i, j;
            for (p_1221->g_218 = 0; (p_1221->g_218 >= 51); p_1221->g_218 = safe_add_func_uint64_t_u_u(p_1221->g_218, 7))
            { /* block id: 233 */
                VECTOR(int16_t, 16) l_622 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int16_t, 2))(1L, (-1L)), (VECTOR(int16_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L));
                VECTOR(int16_t, 4) l_668 = (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, 0x6868L), 0x6868L);
                VECTOR(int8_t, 16) l_672 = (VECTOR(int8_t, 16))(0x7EL, (VECTOR(int8_t, 4))(0x7EL, (VECTOR(int8_t, 2))(0x7EL, 0x13L), 0x13L), 0x13L, 0x7EL, 0x13L, (VECTOR(int8_t, 2))(0x7EL, 0x13L), (VECTOR(int8_t, 2))(0x7EL, 0x13L), 0x7EL, 0x13L, 0x7EL, 0x13L);
                int32_t **l_691 = &p_1221->g_406;
                int i;
                for (p_1221->g_63 = 19; (p_1221->g_63 != (-21)); --p_1221->g_63)
                { /* block id: 236 */
                    VECTOR(uint16_t, 4) l_625 = (VECTOR(uint16_t, 4))(0x2CEBL, (VECTOR(uint16_t, 2))(0x2CEBL, 65529UL), 65529UL);
                    VECTOR(uint16_t, 2) l_630 = (VECTOR(uint16_t, 2))(0UL, 1UL);
                    uint32_t *l_631 = &p_1221->g_93;
                    uint64_t *l_634 = (void*)0;
                    uint64_t *l_635 = &p_1221->g_176;
                    int64_t ****l_644[10] = {&l_641[2][1][0],&l_641[1][2][0],&l_641[2][1][0],&l_641[2][1][0],&l_641[1][2][0],&l_641[2][1][0],&l_641[2][1][0],&l_641[1][2][0],&l_641[2][1][0],&l_641[2][1][0]};
                    int64_t *****l_657 = &l_656;
                    VECTOR(int16_t, 8) l_665 = (VECTOR(int16_t, 8))(0x1165L, (VECTOR(int16_t, 4))(0x1165L, (VECTOR(int16_t, 2))(0x1165L, 0L), 0L), 0L, 0x1165L, 0L);
                    uint64_t *l_679 = (void*)0;
                    uint64_t *l_680[4][3][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
                    uint16_t ****l_683 = &p_1221->g_280;
                    uint16_t *****l_682[9] = {&l_683,&l_683,&l_683,&l_683,&l_683,&l_683,&l_683,&l_683,&l_683};
                    int32_t *l_687 = (void*)0;
                    int32_t *l_688 = &p_1221->g_7;
                    int i, j, k;
                    (*p_32) |= (((VECTOR(uint64_t, 16))(abs(((VECTOR(uint64_t, 8))(p_1221->g_617.xxxxxxyy)).s1027757675463011))).s7 > (((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 16))(p_33, 0x4147L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 16))(l_618.s8ddf88acb6994950)).s94, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_619.yyxyyyyxyxxxxxyy)).sa8))))), 0x5A81L, 0x3980L)), ((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 2))(p_1221->g_620.s20)).yyyyyxyy, ((VECTOR(int16_t, 4))(l_621.s90a4)).zyyxyxww))).s07)).yxyyxxxx, ((VECTOR(int16_t, 8))(l_622.sa0dd5b5c))))).s47)), 0x4EF2L, 6L)).xyzzwxxw))))), 0x5B1BL, 0L)).s76, ((VECTOR(int16_t, 2))(l_623.s81))))), ((VECTOR(uint16_t, 4))(1UL, ((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(l_624.xxzyzxwxzwzwywzy)).se1dc)).odd, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 8))(l_625.zxwzxyww)).s25, ((VECTOR(uint16_t, 2))(p_1221->g_626.zy)), ((VECTOR(uint16_t, 2))(1UL, 0x1B71L))))), 0x7579L, 0xA38DL)).even, ((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 2))(l_627.wx)).xyyyyxxy, ((VECTOR(uint16_t, 16))(FAKE_DIVERGE(p_1221->local_2_offset, get_local_id(2), 10), l_628, ((VECTOR(uint16_t, 8))(abs(((VECTOR(uint16_t, 8))(((void*)0 == l_629), 0xAF02L, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(l_630.yxxyyxxxyxyyyxyy)).sb6a2)), 5UL, 65534UL))))), (((*l_631) = p_1221->g_594.s7) , (safe_rshift_func_uint8_t_u_u(((((((*l_635) &= 18446744073709551613UL) || (((VECTOR(uint16_t, 8))(p_1221->g_636.ywxwzwyw)).s2 , (-2L))) | ((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(l_637.yyyy)).odd)).xxyx, (uint16_t)(((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 4))(p_1221->g_640.yxyx)).x, (l_641[2][1][0] != (p_1221->g_645 = l_643)))) | l_621.s5) != p_1221->g_555.sc)))).z) , 0x0EL) , l_619.y), p_33))), 0xA10EL, 2UL, 0x3AC1L, 0x17EBL, 65528UL)).odd, ((VECTOR(uint16_t, 8))(6UL))))).s50))), 0x21C3L)), 65533UL, ((VECTOR(uint16_t, 4))(0x961AL)), 5UL, ((VECTOR(uint16_t, 4))(0x3AC0L)))).even)).s5 <= l_619.x));
                    (*l_688) = (safe_div_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u(((safe_sub_func_int32_t_s_s(((*p_35) = (safe_mul_func_uint64_t_u_u(((*l_635) ^= (l_644[4] == ((*l_657) = l_656))), ((l_684[7][0][0] = ((safe_sub_func_int32_t_s_s((safe_lshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 4))(p_1221->g_664.s6222)).lo, ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 4))((-3L), 1L, 0x0365L, 3L)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_665.s6022522334535772)).sb9)).xyyy))).zzzzxyww, ((VECTOR(int16_t, 4))(l_666.xyyx)).zyywyzxw))).s76, ((VECTOR(int16_t, 2))(p_1221->g_667.saa)), ((VECTOR(int16_t, 8))(l_668.yxywzzxw)).s32)))))).yyyy)).y, ((l_669 != (*p_1221->g_282)) != l_619.y))), 9)), ((safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 4))(l_672.sed47)).z, p_33)) < (p_1221->g_543.z > (l_681[0] = ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(p_1221->g_673.xx)), ((VECTOR(uint64_t, 4))(l_674.zxyx)), 0x5629BE0574A1E340L, 3UL)).s7, (safe_lshift_func_uint16_t_u_s(((safe_rshift_func_int8_t_s_u(0x77L, 4)) == 1UL), 15)), p_1221->g_581.s6, p_1221->g_76.s5, 0UL, ((VECTOR(uint64_t, 8))(18446744073709551613UL)), ((VECTOR(uint64_t, 2))(0UL)), 0x526B434E89F70BC3L)).sf))))) , (void*)0)) == l_685)))), p_1221->g_243.y)) >= l_668.z), l_686[0][3])), p_33));
                    p_34 = p_32;
                }
                l_689 = p_31;
                p_1221->g_690 = ((*l_691) = ((((*p_34) = (*p_35)) || 0x6C3512CEL) , p_1221->g_690));
                (*l_691) = &p_1221->g_602;
            }
            l_681[0] = (safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 8))(l_694.yyxyyxxy)).s16))).xxxy, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))((-1L), 0x45A6AA0A8D014D04L, (safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0x2DL, 1UL)).xyyxxyxy)).s3, ((VECTOR(int8_t, 4))((!(l_728 = ((safe_div_func_int8_t_s_s((((((((((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),VECTOR(uint32_t, 4),((VECTOR(uint32_t, 4))(p_1221->g_699.sa5ba)), ((VECTOR(uint32_t, 4))(p_1221->g_700.yyyx)), ((VECTOR(uint32_t, 4))(p_1221->g_701.s7263))))).w , l_702[3]) == (((*l_717) |= (safe_mod_func_int32_t_s_s(((*p_34) = (((*l_669) ^= ((p_33 , (l_706 = ((VECTOR(int64_t, 16))(p_1221->g_705.sd6fab85d9687fcac)).s2)) > (l_619.y >= (safe_unary_minus_func_uint16_t_u(0xCD4CL))))) != ((VECTOR(uint64_t, 2))(1UL, 1UL)).lo)), (safe_sub_func_uint8_t_u_u((((0x2F0DL >= (p_33 | (safe_add_func_uint8_t_u_u((l_712[4][0] != &p_1221->g_690), ((((safe_add_func_uint8_t_u_u(p_1221->g_580, p_33)) , l_686[0][3]) , (*p_1221->g_144)) != l_715[4]))))) < p_33) , p_1221->g_400.s1), p_33))))) , (void*)0)) & (-5L)) < FAKE_DIVERGE(p_1221->local_0_offset, get_local_id(0), 10)) || p_1221->g_224.s6) < p_33) || p_33), p_33)) ^ 0x06L))), 0x6FL, 1L, 0x4DL)).w)), ((VECTOR(int64_t, 4))(1L)), 9L)).s0171763311761630)).sd871))).lo)).yyxyyyxyyxyxyxxy, ((VECTOR(uint64_t, 16))(0xCD2E566D54700456L))))).s206f)).y, l_619.y));
            for (p_1221->g_139 = (-10); (p_1221->g_139 == 44); p_1221->g_139 = safe_add_func_int64_t_s_s(p_1221->g_139, 8))
            { /* block id: 263 */
                int16_t *l_735 = (void*)0;
                int16_t *l_736[10] = {&p_1221->g_82,&p_1221->g_191,(void*)0,&p_1221->g_191,&p_1221->g_82,&p_1221->g_82,&p_1221->g_191,(void*)0,&p_1221->g_191,&p_1221->g_82};
                int32_t l_737 = 0x1132C33BL;
                int32_t l_738[6][4][6] = {{{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL}},{{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL}},{{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL}},{{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL}},{{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL}},{{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL},{0x1C69802EL,1L,8L,0x5B441FDFL,0x6BB136C6L,0x1C69802EL}}};
                int i, j, k;
                (*p_35) = (safe_mul_func_int8_t_s_s(p_33, FAKE_DIVERGE(p_1221->local_2_offset, get_local_id(2), 10)));
                (*p_35) = ((!(-10L)) > (safe_rshift_func_int16_t_s_s((l_738[1][2][1] = (l_737 = p_1221->g_664.s6)), 12)));
            }
        }
        (*p_32) = (*p_35);
        l_706 = l_739;
    }
    if (l_739)
    { /* block id: 273 */
        uint64_t l_744 = 0x610E41EA1A8A9030L;
        int64_t *l_761 = &p_1221->g_120;
        uint16_t l_762 = 65535UL;
        int32_t l_771 = (-8L);
        int32_t l_775 = 0L;
        int32_t l_777 = 0x211BFE4AL;
        int32_t l_782 = 0x097329CCL;
        int32_t l_784 = 0x51A2F327L;
        int32_t l_787 = 9L;
        int32_t l_788 = (-1L);
        int32_t l_790 = 0x6D9FA0BBL;
        int32_t l_792 = 0x69B6666FL;
        int32_t l_793 = 0x027102D3L;
        int32_t l_794 = (-1L);
        int32_t l_795 = 3L;
        int32_t l_796 = 0x211D9571L;
        int32_t l_797 = 0x4FFB1786L;
        int32_t l_798 = (-10L);
        int32_t l_799 = 1L;
        int32_t l_800 = 1L;
        VECTOR(uint32_t, 4) l_850 = (VECTOR(uint32_t, 4))(0x97AC6F80L, (VECTOR(uint32_t, 2))(0x97AC6F80L, 2UL), 2UL);
        int8_t *l_853 = (void*)0;
        int8_t *l_856 = (void*)0;
        int8_t *l_857[1];
        uint16_t l_862[3];
        int16_t *l_863 = (void*)0;
        int16_t *l_864 = (void*)0;
        int16_t **l_886[3][6] = {{&l_864,&l_863,&l_864,&l_864,&l_863,&l_864},{&l_864,&l_863,&l_864,&l_864,&l_863,&l_864},{&l_864,&l_863,&l_864,&l_864,&l_863,&l_864}};
        uint32_t l_949 = 1UL;
        int i, j;
        for (i = 0; i < 1; i++)
            l_857[i] = (void*)0;
        for (i = 0; i < 3; i++)
            l_862[i] = 65530UL;
        l_706 = ((*p_34) = (p_1221->g_667.se != p_33));
        for (p_1221->g_139 = 4; (p_1221->g_139 > 49); p_1221->g_139 = safe_add_func_uint16_t_u_u(p_1221->g_139, 6))
        { /* block id: 278 */
            int32_t l_747 = 1L;
            int64_t *l_760 = (void*)0;
            int32_t l_776 = (-7L);
            int32_t l_778 = 0x791A421CL;
            int32_t l_781 = (-1L);
            int32_t l_786 = 1L;
            int32_t l_791[9] = {0x37F842B3L,0L,0x37F842B3L,0x37F842B3L,0L,0x37F842B3L,0x37F842B3L,0L,0x37F842B3L};
            uint16_t l_801 = 0xA977L;
            int32_t l_814 = 0x78D1FC71L;
            int16_t l_817 = 2L;
            int i;
            for (p_1221->g_149 = 0; (p_1221->g_149 != 27); p_1221->g_149 = safe_add_func_uint64_t_u_u(p_1221->g_149, 2))
            { /* block id: 281 */
                uint16_t ***l_752 = &p_1221->g_144;
                uint64_t *l_755 = (void*)0;
                uint64_t *l_756 = &p_1221->g_757[2][1];
                int32_t l_763 = (-1L);
                int32_t **l_764 = &p_1221->g_690;
                int32_t **l_765 = (void*)0;
                int32_t **l_766 = &p_1221->g_406;
                int32_t l_780 = 0L;
                int32_t l_783 = 1L;
                int32_t l_785[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                uint64_t l_818 = 0x30ACB14AB147BD27L;
                int i;
                l_744++;
                if ((0x14AC16DFL == ((p_1221->g_520.s1 , ((l_747 ^ 0x2CL) == (!(((*l_766) = ((*l_764) = p_32)) == &p_1221->g_602)))) <= p_33)))
                { /* block id: 286 */
                    int32_t ***l_767[10][8] = {{&l_765,&l_764,&l_765,&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_765,&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_765,&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_765,&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_765,&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_765,&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_765,&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_765,&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_765,&l_765,&l_764,&l_764,&l_765,&l_765},{&l_765,&l_764,&l_765,&l_765,&l_764,&l_764,&l_765,&l_765}};
                    int i, j;
                    p_1221->g_768[0] = l_766;
                    (**l_764) = (0x00L <= (safe_lshift_func_int16_t_s_u(0L, (**p_1221->g_144))));
                    return p_31;
                }
                else
                { /* block id: 290 */
                    int32_t *l_772 = &l_706;
                    int32_t *l_773 = &p_1221->g_7;
                    int32_t *l_774[6][1][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0}}};
                    int64_t l_809 = 0x348C2CE5FD216C4CL;
                    VECTOR(int8_t, 4) l_833 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 9L), 9L);
                    int i, j, k;
                    l_801--;
                    if ((*p_34))
                        break;
                    for (l_762 = 26; (l_762 <= 25); l_762--)
                    { /* block id: 295 */
                        int32_t l_810 = 0x595008FAL;
                        int32_t l_811 = 0x3018A381L;
                        int32_t l_812 = 0x18169AAEL;
                        int32_t l_813 = (-1L);
                        int32_t l_815[2];
                        int8_t l_816 = 0L;
                        uint64_t **l_836 = (void*)0;
                        uint32_t *l_839 = (void*)0;
                        uint32_t *l_842 = (void*)0;
                        uint32_t *l_843 = &p_1221->g_362;
                        int8_t *l_846[1][4];
                        int i, j;
                        for (i = 0; i < 2; i++)
                            l_815[i] = 4L;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 4; j++)
                                l_846[i][j] = &l_816;
                        }
                        ++p_1221->g_806.w;
                        l_818--;
                        (*l_772) |= (safe_lshift_func_uint16_t_u_u((l_813 & (FAKE_DIVERGE(p_1221->group_0_offset, get_group_id(0), 10) == (safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(p_1221->g_825.xyxxxxxyyxxyyyyy)).s2, (((VECTOR(uint32_t, 4))(p_1221->g_826.zyxz)).w != (*p_1221->g_406)))))), (*p_1221->g_145)));
                        (*p_1221->g_690) = (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 8))((((((VECTOR(uint32_t, 2))(4294967293UL, 0xA2E93C3DL)).even , p_1221->g_243.x) , (safe_sub_func_uint64_t_u_u(((p_1221->g_418.x = (((7L && ((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_833.wy)).xxyxxyyy)).s7, 2)) | ((safe_add_func_int32_t_s_s((((l_779[2][1][1] = ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(9UL, 0xBBAEL, 0x4C9EL, 0x24F7L, (&l_818 == (l_837 = l_760)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(p_1221->g_838.yy)))), 0xF32EL)).s2153223711210011)))).s7) || (&l_702[3] != &l_702[0])) < (((*l_843) = (p_1221->g_701.s2--)) , 0x5EB5L)), (safe_add_func_int64_t_s_s((&l_760 != (void*)0), GROUP_DIVERGE(0, 1))))) < 0UL))) != 254UL) | l_812)) ^ 0x66L), (**l_766)))) , p_33), 0x5FFAL, p_33, ((VECTOR(int16_t, 4))((-2L))), 6L)).s2, 65535UL));
                    }
                }
                if ((*p_34))
                    break;
            }
        }
        (*p_35) ^= (!l_789.x);
        if (((VECTOR(int32_t, 16))(0x4B519A64L, 0x78A5B6DAL, ((((VECTOR(uint8_t, 2))(p_1221->g_847.s08)).hi , (l_784 != (safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 2))(3UL, 4294967287UL)).xyyxxxxy, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(l_792, 4294967292UL, ((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 4))(l_850.xwwz)).lo, ((VECTOR(uint32_t, 2))(0xAF9BC315L, 4294967295UL))))), ((VECTOR(uint32_t, 2))(abs(((VECTOR(uint32_t, 2))(0x0EC57446L, 0xCE1AC458L))))), 1UL, 4294967295UL)).odd)).yzwxxxww))))).s0, (safe_rshift_func_int8_t_s_u((l_796 = p_33), 7)))))) & (*p_32)), 0x5338F4C9L, (safe_rshift_func_int8_t_s_u((l_706 = p_1221->g_555.sf), ((safe_sub_func_uint32_t_u_u(((*p_35) >= (safe_add_func_uint32_t_u_u(((l_779[2][1][1] = l_862[2]) || ((p_1221->g_362 , l_837) != (void*)0)), 4294967287UL))), l_762)) != p_33))), 0x6886B397L, ((VECTOR(int32_t, 4))((-9L))), ((VECTOR(int32_t, 2))(1L)), 0x1A768494L, (-3L), 0x29602BBBL, (-7L))).s3)
        { /* block id: 314 */
            int32_t l_877 = 0x47EED936L;
            int32_t l_896[9][10][2] = {{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}}};
            int i, j, k;
            if (((safe_sub_func_int32_t_s_s(((*p_35) = (safe_mod_func_int64_t_s_s(p_33, ((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 8))(((!18446744073709551615UL) <= (((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 8))((safe_lshift_func_int8_t_s_s((safe_div_func_int16_t_s_s((safe_mod_func_int32_t_s_s(l_877, (0x12C32B70L ^ (safe_sub_func_int16_t_s_s((safe_sub_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u((**p_1221->g_144), p_33)) && ((safe_div_func_uint8_t_u_u(255UL, p_33)) != (l_886[1][1] == &l_864))), p_33)), l_777))))), p_33)), p_1221->g_407.s2)), ((VECTOR(int16_t, 2))((-5L))), p_1221->g_418.y, 0x0E51L, ((VECTOR(int16_t, 2))(0x529EL)), 9L)).s4, FAKE_DIVERGE(p_1221->local_2_offset, get_local_id(2), 10))) <= l_779[2][1][1]) < l_877)), ((VECTOR(uint64_t, 4))(0xA967D232BFC49ABCL)), ((VECTOR(uint64_t, 2))(1UL)), 0UL)).s5074351664665163, ((VECTOR(uint64_t, 16))(18446744073709551609UL))))).s3))), l_877)) == 0x0C33L))
            { /* block id: 316 */
                int32_t *l_887 = (void*)0;
                int32_t *l_888 = (void*)0;
                int32_t *l_889 = (void*)0;
                int32_t *l_890 = (void*)0;
                int32_t *l_891 = &l_798;
                int32_t *l_892 = &l_795;
                int32_t *l_893 = &l_787;
                int32_t *l_894 = (void*)0;
                int32_t *l_895[1][4][1] = {{{&l_782},{&l_782},{&l_782},{&l_782}}};
                int i, j, k;
                (*p_35) = (-3L);
                l_897++;
                (*l_891) = ((safe_rshift_func_uint16_t_u_u(((**p_1221->g_144) = p_33), p_33)) ^ (p_1221->g_407.s1 = (!(safe_lshift_func_int16_t_s_s(((safe_mul_func_int8_t_s_s((((*l_892) <= l_850.y) & ((((p_1221->g_825.y , (safe_lshift_func_int16_t_s_u((safe_sub_func_uint16_t_u_u((((((VECTOR(uint8_t, 8))(p_1221->g_910.xyxyyxyy)).s5 & (1UL ^ ((p_1221->g_911 == (void*)0) >= p_33))) , &p_35) != (void*)0), 6UL)), l_789.x))) , (-1L)) >= 1L) != 0x2441855ECFB02E08L)), p_33)) | 0x81A2850C71288535L), 0)))));
                for (l_793 = (-3); (l_793 >= (-23)); l_793--)
                { /* block id: 324 */
                    for (p_1221->g_139 = 4; (p_1221->g_139 <= 19); p_1221->g_139 = safe_add_func_int8_t_s_s(p_1221->g_139, 1))
                    { /* block id: 327 */
                        l_779[2][1][1] = (((1L >= 0x16BAE457F228E456L) , p_33) ^ 9UL);
                    }
                    if ((*p_35))
                        continue;
                }
            }
            else
            { /* block id: 332 */
                return p_34;
            }
            (*p_34) = (*p_35);
        }
        else
        { /* block id: 336 */
            VECTOR(int16_t, 8) l_921 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 1L), 1L), 1L, 1L, 1L);
            uint16_t l_947 = 0x8A00L;
            int i;
            for (l_739 = 0; (l_739 >= 28); l_739 = safe_add_func_uint16_t_u_u(l_739, 5))
            { /* block id: 339 */
                uint16_t l_945 = 0x87B7L;
                uint16_t ****l_946 = &l_702[3];
                int32_t l_948[8];
                int64_t *l_950 = &p_1221->g_951[0][5][0];
                uint64_t *l_952 = &p_1221->g_757[2][1];
                int i;
                for (i = 0; i < 8; i++)
                    l_948[i] = 2L;
                (*p_32) = ((((((((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 4))(0x0DA66071L, ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(0x2795L, (-2L))))).yxxxxxyx, ((VECTOR(int16_t, 16))(p_1221->g_919.xyxxxxxyyyyyyyyx)).even))).s74)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),int16_t,((VECTOR(int16_t, 2))(p_1221->g_920.xx)).xyxx, (int16_t)((VECTOR(int16_t, 8))(l_921.s05235766)).s4, (int16_t)((((*l_950) ^= (safe_mul_func_uint8_t_u_u((safe_unary_minus_func_int32_t_s((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 8))(0L, ((((l_794 = (((((safe_add_func_int8_t_s_s(((((&p_1221->g_690 == (void*)0) != ((safe_div_func_int32_t_s_s((p_33 > (!0x71L)), l_793)) == ((safe_rshift_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((~(p_33 && (((safe_lshift_func_int8_t_s_u((safe_div_func_int32_t_s_s(((safe_div_func_uint16_t_u_u((0UL || (safe_div_func_int32_t_s_s((safe_mul_func_int16_t_s_s((((l_945 = p_33) ^ (l_946 == l_946)) == 0x8347C3FC649B5EC1L), l_728)), GROUP_DIVERGE(0, 1)))), l_947)) , (*p_34)), 1UL)), l_948[0])) | GROUP_DIVERGE(2, 1)) , p_33))), l_744)), l_674.w)) <= p_33))) , 0x43B79455L) , l_947), p_33)) > 0x5088972AL) || (*p_1221->g_138)) >= 9L) & 0L)) & l_949) , p_1221->g_264.s1) != FAKE_DIVERGE(p_1221->local_1_offset, get_local_id(1), 10)), ((VECTOR(int16_t, 4))(0x724EL)), 1L, 0x1718L)).s64, ((VECTOR(int16_t, 2))((-1L)))))), 0x2A6DL, 0x6158L)).odd, ((VECTOR(int16_t, 2))(0x0323L)), ((VECTOR(int16_t, 2))(0x291DL))))).xxxxyyyxyxyxyyyx)).sd || p_33))), 1L))) , 1L) > 8UL)))).hi)), (-8L), (-4L))).odd))).yyxyxyxyxxxyyxyx)).s95, ((VECTOR(uint16_t, 2))(3UL))))), 0x721D1BECL)).lo, ((VECTOR(int32_t, 2))(1L))))).hi , l_619.x) == l_948[0]) , l_921.s5) , l_952) != l_837) > 0x5EB41A519F5FFE52L);
            }
        }
    }
    else
    { /* block id: 346 */
        int64_t l_953 = 0x633442E4FFEEFCBEL;
        int32_t l_954 = 1L;
        l_954 ^= (l_953 = ((*p_32) = 0x0FB1C6FCL));
    }
    (*p_35) = l_897;
    --l_959[6];
    return l_962;
}


/* ------------------------------------------ */
/* 
 * reads : p_1221->g_119 p_1221->g_428 p_1221->g_3 p_1221->g_138 p_1221->g_139 p_1221->g_366 p_1221->g_483 p_1221->g_282 p_1221->g_283 p_1221->g_145 p_1221->g_248 p_1221->g_167 p_1221->g_418 p_1221->g_271 p_1221->g_500 p_1221->g_426 p_1221->g_63 p_1221->g_520 p_1221->g_144 p_1221->g_407 p_1221->g_543 p_1221->g_581
 * writes: p_1221->g_119 p_1221->g_149 p_1221->g_7 p_1221->g_258 p_1221->g_366 p_1221->g_139 p_1221->g_63 p_1221->g_21 p_1221->g_406
 */
int32_t * func_36(int32_t * p_37, uint32_t  p_38, uint64_t  p_39, struct S0 * p_1221)
{ /* block id: 185 */
    uint16_t l_454 = 65532UL;
    int64_t **l_458[5];
    int64_t ***l_457 = &l_458[0];
    uint8_t *l_459 = &p_1221->g_119;
    uint16_t l_464 = 0xAE74L;
    int32_t *l_465 = (void*)0;
    int32_t *l_466 = (void*)0;
    int32_t *l_467[7];
    uint32_t l_468 = 0xC442F37EL;
    VECTOR(int8_t, 8) l_472 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x20L), 0x20L), 0x20L, 1L, 0x20L);
    VECTOR(int32_t, 16) l_497 = (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0L), 0L), 0L, (-8L), 0L, (VECTOR(int32_t, 2))((-8L), 0L), (VECTOR(int32_t, 2))((-8L), 0L), (-8L), 0L, (-8L), 0L);
    VECTOR(int8_t, 2) l_511 = (VECTOR(int8_t, 2))(0x16L, 0L);
    uint16_t ***l_513 = &p_1221->g_144;
    uint16_t ***l_515 = &p_1221->g_144;
    uint64_t *l_516 = &p_1221->g_176;
    VECTOR(uint32_t, 8) l_556 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x9A32F95CL), 0x9A32F95CL), 0x9A32F95CL, 1UL, 0x9A32F95CL);
    VECTOR(int16_t, 8) l_557 = (VECTOR(int16_t, 8))((-9L), (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), 0L), 0L), 0L, (-9L), 0L);
    uint16_t l_579[7][7] = {{0x31D9L,8UL,8UL,0x31D9L,0xD2D5L,65531UL,65531UL},{0x31D9L,8UL,8UL,0x31D9L,0xD2D5L,65531UL,65531UL},{0x31D9L,8UL,8UL,0x31D9L,0xD2D5L,65531UL,65531UL},{0x31D9L,8UL,8UL,0x31D9L,0xD2D5L,65531UL,65531UL},{0x31D9L,8UL,8UL,0x31D9L,0xD2D5L,65531UL,65531UL},{0x31D9L,8UL,8UL,0x31D9L,0xD2D5L,65531UL,65531UL},{0x31D9L,8UL,8UL,0x31D9L,0xD2D5L,65531UL,65531UL}};
    int8_t l_582 = 1L;
    uint16_t **l_586 = &p_1221->g_138;
    VECTOR(int64_t, 16) l_597 = (VECTOR(int64_t, 16))((-3L), (VECTOR(int64_t, 4))((-3L), (VECTOR(int64_t, 2))((-3L), 0x2EA57962160C3CD3L), 0x2EA57962160C3CD3L), 0x2EA57962160C3CD3L, (-3L), 0x2EA57962160C3CD3L, (VECTOR(int64_t, 2))((-3L), 0x2EA57962160C3CD3L), (VECTOR(int64_t, 2))((-3L), 0x2EA57962160C3CD3L), (-3L), 0x2EA57962160C3CD3L, (-3L), 0x2EA57962160C3CD3L);
    VECTOR(uint8_t, 8) l_600 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xAFL), 0xAFL), 0xAFL, 0UL, 0xAFL);
    int8_t l_601 = 0x0FL;
    uint64_t l_603 = 4UL;
    VECTOR(uint8_t, 2) l_604 = (VECTOR(uint8_t, 2))(3UL, 1UL);
    int32_t **l_606 = &l_467[4];
    int32_t *l_607[6][1][1] = {{{(void*)0}},{{(void*)0}},{{(void*)0}},{{(void*)0}},{{(void*)0}},{{(void*)0}}};
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_458[i] = (void*)0;
    for (i = 0; i < 7; i++)
        l_467[i] = (void*)0;
    l_468 = (0x0DBA6420FDABD78CL >= ((((l_454 , (p_39 && (safe_rshift_func_uint8_t_u_u(255UL, ((0x0B7BL ^ p_38) , ((*l_459) &= ((void*)0 == l_457))))))) , (safe_mul_func_int16_t_s_s(((((0x64L ^ p_1221->g_428.s9) <= 0UL) , p_39) >= l_454), l_464))) || GROUP_DIVERGE(2, 1)) != 0x6EA1BBD0AD8F698EL));
    if ((*p_37))
    { /* block id: 188 */
        int32_t l_471[10][4] = {{1L,0x7ACE870CL,1L,1L},{1L,0x7ACE870CL,1L,1L},{1L,0x7ACE870CL,1L,1L},{1L,0x7ACE870CL,1L,1L},{1L,0x7ACE870CL,1L,1L},{1L,0x7ACE870CL,1L,1L},{1L,0x7ACE870CL,1L,1L},{1L,0x7ACE870CL,1L,1L},{1L,0x7ACE870CL,1L,1L},{1L,0x7ACE870CL,1L,1L}};
        int8_t *l_473 = (void*)0;
        int8_t *l_474 = &p_1221->g_149;
        int i, j;
        p_1221->g_7 = (0x07L || (safe_lshift_func_uint8_t_u_s((l_471[5][2] = 9UL), ((*l_474) = ((*p_1221->g_138) , ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(l_472.s36573530)).even)).x)))));
    }
    else
    { /* block id: 192 */
        int64_t ****l_475 = &l_457;
        int32_t l_479 = (-5L);
        uint64_t *l_480 = &p_1221->g_366;
        uint32_t l_486 = 0x826602CDL;
        VECTOR(int16_t, 16) l_525 = (VECTOR(int16_t, 16))((-10L), (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), (-2L)), (-2L)), (-2L), (-10L), (-2L), (VECTOR(int16_t, 2))((-10L), (-2L)), (VECTOR(int16_t, 2))((-10L), (-2L)), (-10L), (-2L), (-10L), (-2L));
        int32_t *l_540 = &l_479;
        uint16_t **l_578 = &p_1221->g_138;
        int i;
        p_1221->g_258.sa = (&p_1221->g_282 != ((*l_475) = &l_458[0]));
        if ((safe_unary_minus_func_int64_t_s((safe_div_func_uint16_t_u_u(((*p_1221->g_138) = (0x783CE34DFFA692B6L && (l_479 && (((*l_480)--) >= (((((VECTOR(int32_t, 4))(p_1221->g_483.xzzx)).z , ((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 16))((((void*)0 != &p_1221->g_283) == (safe_lshift_func_uint16_t_u_u((l_486 , (((*p_1221->g_282) == (void*)0) , (safe_div_func_int8_t_s_s(((safe_add_func_uint8_t_u_u(((safe_sub_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((*p_1221->g_145), ((safe_sub_func_int64_t_s_s(p_1221->g_248.y, 0x5D86125F1100BE67L)) ^ (-2L)))), 0x1300L)) > 4294967287UL), p_1221->g_167.x)) | (-1L)), (-1L))))), 2))), l_479, ((VECTOR(uint64_t, 4))(0x0663ABD10B5DFDEDL)), GROUP_DIVERGE(0, 1), 1UL, p_1221->g_418.w, 18446744073709551606UL, l_479, ((VECTOR(uint64_t, 4))(1UL)), 0x89EFE1EF1857EC88L)).s69, ((VECTOR(uint64_t, 2))(0x23D4084EA926D4F6L))))).odd) , p_38) == 65535UL))))), p_38)))))
        { /* block id: 197 */
            return p_37;
        }
        else
        { /* block id: 199 */
            uint8_t *l_501 = (void*)0;
            uint8_t *l_502 = (void*)0;
            uint8_t *l_503 = (void*)0;
            uint8_t *l_504 = (void*)0;
            uint64_t l_507 = 0x68D308C50F167D78L;
            int16_t *l_508 = &p_1221->g_63;
            int8_t *l_512 = &p_1221->g_149;
            uint16_t ****l_514[5];
            int32_t l_517 = 1L;
            int32_t *l_538 = &l_517;
            int i;
            for (i = 0; i < 5; i++)
                l_514[i] = &p_1221->g_280;
            l_517 = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_497.s22)).yxyy)).hi, ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),int16_t,((VECTOR(int16_t, 16))(p_39, 0x3DE4L, ((p_1221->g_271.w ^ (safe_sub_func_uint16_t_u_u((*p_1221->g_138), ((*l_508) ^= (((l_479 = ((*l_459) = ((VECTOR(uint8_t, 4))(p_1221->g_500.s5014)).y)) > (safe_add_func_uint8_t_u_u(p_1221->g_426.z, p_1221->g_366))) , (+l_507)))))) > (((safe_div_func_int8_t_s_s(((*l_512) = ((VECTOR(int8_t, 4))(l_511.xyxx)).z), l_486)) , (((l_513 = (p_39 , l_513)) == l_515) , l_516)) == (void*)0)), ((VECTOR(int16_t, 4))(0x7BF1L)), (-1L), l_507, (-1L), ((VECTOR(int16_t, 4))(0x2918L)), 0x3499L, 0x3704L)), (int16_t)0x258EL, (int16_t)p_38))).sc7, ((VECTOR(uint16_t, 2))(1UL)))))))).yxxxyxxx)).s2;
            if (p_1221->g_139)
            { /* block id: 206 */
                int32_t l_536 = (-4L);
                uint16_t ***l_537 = (void*)0;
                int32_t **l_539[8] = {&l_466,&l_466,&l_466,&l_466,&l_466,&l_466,&l_466,&l_466};
                int i;
                l_540 = (((((*p_37) >= (safe_rshift_func_int8_t_s_u(p_38, ((void*)0 == (*l_475))))) || ((l_515 == ((((VECTOR(int64_t, 16))((-8L), ((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(p_1221->g_520.s54621371)).s40)).yxyyxyyxxxxxyxxy, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))((-1L), 0x45884121L)).yxyxyxyyyyxxyxxy)), ((VECTOR(int32_t, 8))(0L, ((safe_lshift_func_uint8_t_u_s(((!((((safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 2))(l_525.sc5)).lo, ((safe_mod_func_int32_t_s_s((safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(1UL, 253UL)).odd, 2)), 1UL)) ^ (**p_1221->g_144)))) >= (p_1221->g_21.z = 0x1E3EE9A9545C6726L)) && (safe_div_func_uint32_t_u_u((((safe_lshift_func_uint8_t_u_u((((safe_div_func_int8_t_s_s((p_1221->g_418.z , p_1221->g_407.s1), p_38)) & 0xAAD9E4708A932E24L) , 0UL), GROUP_DIVERGE(1, 1))) , (void*)0) == (*p_1221->g_282)), p_1221->g_248.y))) || p_38)) < GROUP_DIVERGE(0, 1)), 0)) >= 0xA8DEL), p_39, 0x20DBEAF3L, ((VECTOR(int32_t, 2))(0x2FD0271FL)), 4L, (-5L))).s1352571200232533))).s74)), ((VECTOR(uint32_t, 2))(4294967288UL))))).yyyy, ((VECTOR(int64_t, 4))(0L)), ((VECTOR(int64_t, 4))(0x7B85A3D7C6937A1DL))))), l_536, 0x7718AC4AF4B6D67FL, ((VECTOR(int64_t, 8))(0x7E4B40DC87C6E01BL)), 7L)).s6 | p_1221->g_418.y) , l_537)) < FAKE_DIVERGE(p_1221->group_0_offset, get_group_id(0), 10))) , p_38) , l_538);
            }
            else
            { /* block id: 209 */
                (*l_538) = (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(p_1221->g_543.wwzz)).x, (safe_lshift_func_int16_t_s_s((*l_538), 3))));
            }
        }
        p_1221->g_406 = p_37;
    }
    l_582 = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(p_1221->g_581.sfd8dcc05d92c93f2)).hi)).s6;
    (*l_606) = l_466;
    return l_607[5][0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1221->g_76 p_1221->g_25 p_1221->g_81 p_1221->g_20 p_1221->g_3 p_1221->g_21 p_1221->g_93 p_1221->g_7 p_1221->g_82 p_1221->g_176 p_1221->g_149 p_1221->g_138 p_1221->g_139 p_1221->g_224 p_1221->g_229 p_1221->g_120 p_1221->g_144 p_1221->g_145 p_1221->g_22 p_1221->g_313 p_1221->g_362 p_1221->g_366 p_1221->g_258 p_1221->g_103 p_1221->g_400 p_1221->g_407 p_1221->g_271 p_1221->g_418 p_1221->g_419 p_1221->g_426 p_1221->g_427 p_1221->g_428
 * writes: p_1221->g_63 p_1221->g_93 p_1221->g_7 p_1221->g_176 p_1221->g_82 p_1221->g_218 p_1221->g_81 p_1221->g_149 p_1221->g_224 p_1221->g_139 p_1221->g_119 p_1221->g_120 p_1221->g_362 p_1221->g_76 p_1221->g_366 p_1221->g_282 p_1221->g_229 p_1221->g_243 p_1221->g_406 p_1221->g_271 p_1221->g_258
 */
int32_t * func_40(int32_t * p_41, uint32_t  p_42, struct S0 * p_1221)
{ /* block id: 15 */
    int32_t l_53 = 0x7BDEDBECL;
    int16_t *l_62 = &p_1221->g_63;
    VECTOR(uint16_t, 16) l_64 = (VECTOR(uint16_t, 16))(0xACA8L, (VECTOR(uint16_t, 4))(0xACA8L, (VECTOR(uint16_t, 2))(0xACA8L, 65535UL), 65535UL), 65535UL, 0xACA8L, 65535UL, (VECTOR(uint16_t, 2))(0xACA8L, 65535UL), (VECTOR(uint16_t, 2))(0xACA8L, 65535UL), 0xACA8L, 65535UL, 0xACA8L, 65535UL);
    VECTOR(uint16_t, 2) l_65 = (VECTOR(uint16_t, 2))(0x93A5L, 0xB6BAL);
    uint16_t *l_66[7];
    int32_t l_67 = 0x3A207B8AL;
    VECTOR(uint8_t, 16) l_68 = (VECTOR(uint8_t, 16))(0xCFL, (VECTOR(uint8_t, 4))(0xCFL, (VECTOR(uint8_t, 2))(0xCFL, 0x58L), 0x58L), 0x58L, 0xCFL, 0x58L, (VECTOR(uint8_t, 2))(0xCFL, 0x58L), (VECTOR(uint8_t, 2))(0xCFL, 0x58L), 0xCFL, 0x58L, 0xCFL, 0x58L);
    uint8_t *l_69 = (void*)0;
    int32_t l_70[2];
    VECTOR(uint32_t, 4) l_75 = (VECTOR(uint32_t, 4))(0x81CA9286L, (VECTOR(uint32_t, 2))(0x81CA9286L, 0x497A847EL), 0x497A847EL);
    int32_t *l_77 = (void*)0;
    int32_t l_78 = 0x5697A12BL;
    VECTOR(int32_t, 8) l_88 = (VECTOR(int32_t, 8))(0x54DC4505L, (VECTOR(int32_t, 4))(0x54DC4505L, (VECTOR(int32_t, 2))(0x54DC4505L, 0x75FBD26DL), 0x75FBD26DL), 0x75FBD26DL, 0x54DC4505L, 0x75FBD26DL);
    int32_t **l_377 = (void*)0;
    int32_t **l_378 = (void*)0;
    int32_t **l_379 = &l_77;
    int32_t *l_381 = &p_1221->g_3;
    int32_t **l_380 = &l_381;
    VECTOR(int8_t, 2) l_413 = (VECTOR(int8_t, 2))((-8L), 0x16L);
    VECTOR(int8_t, 2) l_414 = (VECTOR(int8_t, 2))(0x1AL, (-1L));
    VECTOR(int8_t, 16) l_415 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x01L), 0x01L), 0x01L, 1L, 0x01L, (VECTOR(int8_t, 2))(1L, 0x01L), (VECTOR(int8_t, 2))(1L, 0x01L), 1L, 0x01L, 1L, 0x01L);
    VECTOR(int8_t, 4) l_416 = (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 0x07L), 0x07L);
    VECTOR(int8_t, 8) l_417 = (VECTOR(int8_t, 8))(0x42L, (VECTOR(int8_t, 4))(0x42L, (VECTOR(int8_t, 2))(0x42L, 0x75L), 0x75L), 0x75L, 0x42L, 0x75L);
    VECTOR(uint8_t, 2) l_429 = (VECTOR(uint8_t, 2))(0x36L, 0UL);
    uint64_t l_430 = 1UL;
    uint32_t l_435 = 0x6C696B86L;
    int8_t *l_436 = (void*)0;
    int8_t *l_437 = (void*)0;
    int8_t *l_438 = (void*)0;
    int8_t *l_439 = (void*)0;
    int8_t *l_440[2][1][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int16_t l_441 = (-9L);
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_66[i] = (void*)0;
    for (i = 0; i < 2; i++)
        l_70[i] = 0x1147C038L;
    (*l_379) = func_43(((*l_380) = ((*l_379) = func_45(p_42, func_49(l_53, ((safe_lshift_func_int8_t_s_u((((*l_62) = (safe_add_func_uint32_t_u_u(0xA7412631L, (GROUP_DIVERGE(1, 1) ^ (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1221->global_1_offset, get_global_id(1), 10), FAKE_DIVERGE(p_1221->local_1_offset, get_local_id(1), 10))))))) < ((l_67 = ((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 4))(l_64.s0dee)).even, ((VECTOR(uint16_t, 16))(l_65.xxyxxyyyyyxyxxyx)).sef, ((VECTOR(uint16_t, 2))(65535UL, 9UL))))).lo) > ((l_70[0] = ((VECTOR(uint8_t, 4))(l_68.s8dfe)).w) <= func_71((((VECTOR(uint32_t, 16))(l_75.xxzxxzxxxzxzwwzz)).s9 >= ((l_68.s1 >= (l_78 = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(p_1221->g_76.s3455110450312247)).s19)).odd)) , (safe_lshift_func_int8_t_s_u(5L, 4)))), p_1221->g_25.w, p_1221->g_81, p_1221)))), ((safe_add_func_uint64_t_u_u((safe_div_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), (((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_88.s2612)).ywxywwxw)))).s3500106727025774, ((VECTOR(int32_t, 2))(0x3987EDF5L, 0x11505FFFL)).xxxxxxxxyyxxxyyx))).s5 , (9L ^ p_42)))), p_1221->g_20.s3)) ^ (*p_41)))) && 0x87D4E0D3BD28F7D0L), l_77, p_1221), p_1221->g_20.s7, p_1221))), p_1221);
    p_1221->g_258.s3 = (safe_add_func_int16_t_s_s(((safe_lshift_func_int8_t_s_u((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_413.xxxx)).zxwyxwww)).s34, ((VECTOR(int8_t, 16))(l_414.xyyxyxxyyxxyyyxx)).s82))).yyyx)).wxzwwyyy)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 2))(l_415.s9a)).yyyx, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(2L, 0x54L)).yxyy)).zxyzyzyy)), ((VECTOR(int8_t, 4))(l_416.yzwy)), ((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_417.s7116)).xxyyywwy)), ((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(0x31L, 0x07L)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(p_1221->g_418.zwwxywxyxwzyzwzy)).hi)).s35))).xyyxyyxy)).s15, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(p_1221->g_419.s3207)), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))((l_67 ^= (safe_rshift_func_int8_t_s_u(((safe_add_func_int8_t_s_s((*l_381), 0L)) , ((safe_add_func_uint8_t_u_u((0x7AL >= p_1221->g_149), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(p_1221->g_426.wy)).yyxyyyxx)))).hi)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(p_1221->g_427.xxwxyzwz)).s27)).yyxy))))).yzyzyyyxwyyxxxzz, ((VECTOR(uint8_t, 2))(p_1221->g_428.s91)).xyxyyxyyxxxxyyxy))).even))))).lo)).xzzywxxywywzzwyz)).odd)).odd)), ((VECTOR(uint8_t, 2))(255UL, 0UL)).yyxx))).zyzyxwxw)))).s3)) > (((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_429.yx)).xyxy)).yzxzzyxzxyywxwzw)).se , ((**l_380) != l_430)) | p_42) >= (safe_add_func_uint8_t_u_u(p_42, ((safe_div_func_int8_t_s_s((l_435 == p_42), p_1221->g_418.w)) >= p_1221->g_21.z)))))), 5))), ((VECTOR(int8_t, 4))(0x2BL)), 0x1FL, 0L, ((VECTOR(int8_t, 2))(0L)), (*l_381), 0x1BL, 5L, ((VECTOR(int8_t, 2))(5L)), 0L, 0x06L)).sc6)), 0L, (-4L))).s44))).xyxx, ((VECTOR(int8_t, 4))(6L)), ((VECTOR(int8_t, 4))(1L))))), 0L, p_42, (-10L), 0L)).even, ((VECTOR(int8_t, 8))(0L))))).hi, (int8_t)p_42, (int8_t)l_441))))).s352e, ((VECTOR(int8_t, 4))(0L))))), p_1221->g_21.y, (*l_381), 0L, 0L)).even, ((VECTOR(int8_t, 4))(0x04L))))).odd, ((VECTOR(int8_t, 2))(0x17L)))))))), 1L, 1L, ((VECTOR(int8_t, 2))(0x1AL)), 1L, 0x46L)).lo)).yxzwwxyz))).hi, ((VECTOR(int8_t, 4))((-10L))), ((VECTOR(int8_t, 4))((-8L)))))).lo)).hi > 8UL), GROUP_DIVERGE(2, 1))) != p_1221->g_76.s0), p_42));
    return &p_1221->g_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1221->g_366 p_1221->g_22 p_1221->g_3 p_1221->g_103 p_1221->g_313 p_1221->g_7 p_1221->g_149 p_1221->g_400 p_1221->g_21 p_1221->g_362 p_1221->g_138 p_1221->g_139 p_1221->g_407 p_1221->g_271
 * writes: p_1221->g_366 p_1221->g_7 p_1221->g_149 p_1221->g_119 p_1221->g_229 p_1221->g_243 p_1221->g_406 p_1221->g_271
 */
int32_t * func_43(int32_t * p_44, struct S0 * p_1221)
{ /* block id: 162 */
    uint32_t l_382 = 4294967295UL;
    uint64_t *l_383 = &p_1221->g_366;
    int32_t *l_384 = &p_1221->g_3;
    int32_t **l_385 = &l_384;
    int32_t *l_387 = &p_1221->g_3;
    int32_t **l_386[2][2] = {{&l_387,&l_387},{&l_387,&l_387}};
    int8_t *l_394[8][1][1] = {{{&p_1221->g_149}},{{&p_1221->g_149}},{{&p_1221->g_149}},{{&p_1221->g_149}},{{&p_1221->g_149}},{{&p_1221->g_149}},{{&p_1221->g_149}},{{&p_1221->g_149}}};
    uint8_t *l_395 = &p_1221->g_119;
    int64_t *l_401 = (void*)0;
    int64_t *l_402 = (void*)0;
    int64_t *l_403[7][8][4] = {{{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120}},{{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120}},{{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120}},{{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120}},{{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120}},{{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120}},{{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120},{&p_1221->g_120,(void*)0,&p_1221->g_120,&p_1221->g_120}}};
    int32_t *l_408 = (void*)0;
    int i, j, k;
    p_1221->g_7 = (l_382 , ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))((((*l_383) &= 0x9A3682824192F102L) & 0L), ((((p_44 = ((*l_385) = l_384)) != (void*)0) , ((p_1221->g_22.z ^ (((**l_385) ^ ((p_1221->g_103.s1 <= (*l_384)) <= (*l_384))) == FAKE_DIVERGE(p_1221->global_0_offset, get_global_id(0), 10))) || (*l_384))) , (**l_385)), (-5L), 0x13A8EB48L, p_1221->g_313.x, (-8L), 0x2144BAA0L, (-4L))).odd)).y);
    p_1221->g_243.y = ((~(safe_rshift_func_int16_t_s_u(((safe_div_func_int16_t_s_s(((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(0x38A716FEL, 0x996C4569L)), ((VECTOR(uint32_t, 4))(((p_1221->g_229.w = ((p_1221->g_22.z & (p_1221->g_7 & ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(((*l_384) , ((*l_395) = (safe_add_func_uint64_t_u_u(p_1221->g_22.x, ((p_1221->g_149 |= 0x79L) >= (-4L)))))), 1UL, (safe_div_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(p_1221->g_400.s58)).xyxyyxyx)).s70)).yyyyyyxx)).hi)).z, 1)), (18446744073709551615UL & p_1221->g_21.z))), p_1221->g_362, ((VECTOR(uint8_t, 8))(0x78L)), ((VECTOR(uint8_t, 4))(1UL)))).s56)))).even)) & (-1L))) > p_1221->g_400.se), ((VECTOR(uint32_t, 2))(9UL)), 0x2E34BE1CL)), ((VECTOR(uint32_t, 8))(0UL)), 0xB05F5F24L, 0UL)).s58a4)).z , (*l_387)) > 8UL), 0x2BF2L)) > (*p_1221->g_138)), 0))) == (**l_385));
    for (p_1221->g_366 = 0; (p_1221->g_366 <= 51); p_1221->g_366++)
    { /* block id: 173 */
        if (p_1221->g_366)
            break;
        p_1221->g_406 = ((*l_385) = &p_1221->g_3);
    }
    p_1221->g_271.x &= (p_1221->g_366 | ((VECTOR(int8_t, 16))(p_1221->g_407.s1453254220371777)).sd);
    return l_408;
}


/* ------------------------------------------ */
/* 
 * reads : p_1221->g_25 p_1221->g_224 p_1221->g_229 p_1221->g_120 p_1221->g_144 p_1221->g_145 p_1221->g_139 p_1221->g_81 p_1221->g_82 p_1221->g_22 p_1221->g_76 p_1221->g_149 p_1221->g_7 p_1221->g_3 p_1221->g_313 p_1221->g_20 p_1221->g_362 p_1221->g_366 p_1221->g_258
 * writes: p_1221->g_7 p_1221->g_81 p_1221->g_149 p_1221->g_224 p_1221->g_139 p_1221->g_119 p_1221->g_120 p_1221->g_93 p_1221->g_362 p_1221->g_76 p_1221->g_366 p_1221->g_282
 */
int32_t * func_45(int32_t  p_46, int32_t * p_47, int16_t  p_48, struct S0 * p_1221)
{ /* block id: 97 */
    int8_t l_221[4][3] = {{0x2CL,0x2CL,0x2CL},{0x2CL,0x2CL,0x2CL},{0x2CL,0x2CL,0x2CL},{0x2CL,0x2CL,0x2CL}};
    VECTOR(uint16_t, 2) l_234 = (VECTOR(uint16_t, 2))(0x5E7DL, 0UL);
    VECTOR(uint16_t, 8) l_235 = (VECTOR(uint16_t, 8))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 65535UL), 65535UL), 65535UL, 5UL, 65535UL);
    VECTOR(uint16_t, 2) l_236 = (VECTOR(uint16_t, 2))(0x6C76L, 6UL);
    int32_t *l_237 = &p_1221->g_7;
    int16_t **l_238[1];
    int32_t l_239 = 0x71B4242BL;
    VECTOR(int16_t, 2) l_250 = (VECTOR(int16_t, 2))(0x2525L, 0x4C1CL);
    VECTOR(int32_t, 4) l_257 = (VECTOR(int32_t, 4))(0x7E0149ADL, (VECTOR(int32_t, 2))(0x7E0149ADL, 1L), 1L);
    VECTOR(int16_t, 2) l_261 = (VECTOR(int16_t, 2))(0x23E0L, 0x3F08L);
    uint16_t ***l_269[7][2][7] = {{{&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144},{&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144}},{{&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144},{&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144}},{{&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144},{&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144}},{{&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144},{&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144}},{{&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144},{&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144}},{{&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144},{&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144}},{{&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144},{&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144,&p_1221->g_144}}};
    uint16_t ***l_279 = &p_1221->g_144;
    int16_t l_365[2];
    VECTOR(uint64_t, 8) l_369 = (VECTOR(uint64_t, 8))(0x6AE9E3DE8B0C4692L, (VECTOR(uint64_t, 4))(0x6AE9E3DE8B0C4692L, (VECTOR(uint64_t, 2))(0x6AE9E3DE8B0C4692L, 1UL), 1UL), 1UL, 0x6AE9E3DE8B0C4692L, 1UL);
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_238[i] = &p_1221->g_81;
    for (i = 0; i < 2; i++)
        l_365[i] = (-6L);
    l_239 = ((p_1221->g_81 = ((p_1221->g_25.x , (l_221[1][1] | ((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(p_1221->g_224.s4250404620465472)).s1e)).odd, ((*l_237) = ((safe_div_func_int64_t_s_s((((l_221[1][1] && ((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 8))(p_1221->g_229.ywxwxwxw)).s3, 0x7927304A5D0BC74AL)) != ((safe_div_func_int16_t_s_s(0x0343L, (safe_lshift_func_uint16_t_u_u(p_48, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 8))(0x2BAAL, 0UL, ((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 2))(l_234.xy)).yyxy, ((VECTOR(uint16_t, 2))(l_235.s53)).xyyx))), 65527UL, 0xDB96L)).s6405511345005455, ((VECTOR(uint16_t, 2))(0xA9D7L, 1UL)).xyxxyyxyxyxxyxyx))).s48)).yxxyyxxy)).s2440205751715471)).hi)).s0)))) ^ (((((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_236.yy)).yxyx)).x == (18446744073709551609UL || p_1221->g_120)) <= (((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x55L, 0L)).yyyyxxxx)).s6 == ((**p_1221->g_144) > 0x0924L))) , p_48) && (*p_1221->g_81)) , p_1221->g_22.z)))) , &p_1221->g_63) != &p_1221->g_82), p_1221->g_76.s1)) || l_236.y)))) > l_235.s3))) , (void*)0)) == &p_48);
    for (p_1221->g_149 = 7; (p_1221->g_149 != (-1)); p_1221->g_149 = safe_sub_func_uint32_t_u_u(p_1221->g_149, 5))
    { /* block id: 103 */
        VECTOR(int32_t, 2) l_242 = (VECTOR(int32_t, 2))(0x73F9C4C5L, 0x46346BD3L);
        uint32_t l_244 = 0x13159631L;
        int32_t **l_245 = &l_237;
        VECTOR(int16_t, 4) l_262 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x5FA5L), 0x5FA5L);
        VECTOR(int16_t, 4) l_263 = (VECTOR(int16_t, 4))(0x5321L, (VECTOR(int16_t, 2))(0x5321L, 0x1BFEL), 0x1BFEL);
        VECTOR(uint32_t, 16) l_265 = (VECTOR(uint32_t, 16))(0x3E05A453L, (VECTOR(uint32_t, 4))(0x3E05A453L, (VECTOR(uint32_t, 2))(0x3E05A453L, 0xD6B828AEL), 0xD6B828AEL), 0xD6B828AEL, 0x3E05A453L, 0xD6B828AEL, (VECTOR(uint32_t, 2))(0x3E05A453L, 0xD6B828AEL), (VECTOR(uint32_t, 2))(0x3E05A453L, 0xD6B828AEL), 0x3E05A453L, 0xD6B828AEL, 0x3E05A453L, 0xD6B828AEL);
        uint32_t *l_268 = &p_1221->g_93;
        VECTOR(int16_t, 2) l_270 = (VECTOR(int16_t, 2))(0x51C9L, (-1L));
        int32_t *l_276[2][10][2];
        uint16_t ***l_278 = &p_1221->g_144;
        uint16_t ****l_277[4][2] = {{&l_278,&l_278},{&l_278,&l_278},{&l_278,&l_278},{&l_278,&l_278}};
        int64_t *l_281 = (void*)0;
        int64_t *l_284 = (void*)0;
        int64_t l_361 = 9L;
        uint8_t l_370 = 0x1CL;
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 10; j++)
            {
                for (k = 0; k < 2; k++)
                    l_276[i][j][k] = &l_239;
            }
        }
        p_1221->g_224.s3 &= ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 4))(l_242.yxyx)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0x21F34548L, (-1L), 0x2EDA270DL, 0x47D25632L)), 0x35A5A3F1L, 1L, 4L, 0x71E8D471L)).s21, ((VECTOR(int32_t, 8))((-1L), (p_1221->g_119 || l_242.y), 0x07386A1BL, ((VECTOR(int32_t, 4))(0L, ((VECTOR(int32_t, 2))(0x120F645FL, 0L)), (-8L))), 0x2EEBAF70L)).s14, ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))(0x61518967L, (-4L))).yyyy, ((VECTOR(int32_t, 16))(p_1221->g_243.xyyyyyyxyxxyyyxx)).sdfba))).odd))), 0x4B49C6F0L, 0L))))).z;
        (*l_245) = &p_1221->g_3;
        if ((safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 4))(65529UL, 0xC7D3L, 6UL, 0x10A7L)).xywzzyww, ((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 16))(0x796AL, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 4))(p_1221->g_248.yyxx)).wzxzxxxywxyyzxyx, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 2))(p_1221->g_249.yx)).yyyx, ((VECTOR(uint16_t, 16))(abs(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 2))(l_250.xx)).yxxxxxxyxxyyyyyx, ((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 4))((-10L), 0L, 8L, 0x17L)).zxwxxwxxzxzzxxww, ((VECTOR(uint8_t, 16))(safe_clamp_func(VECTOR(uint8_t, 16),uint8_t,((VECTOR(uint8_t, 4))(1UL, ((VECTOR(uint8_t, 2))(1UL, 0xC4L)), 1UL)).xywxywywxxyzwyyz, (uint8_t)(((*l_268) ^= ((safe_mod_func_int64_t_s_s((p_1221->g_20.s0 = (p_1221->g_76.s6 & ((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_257.zwzy)).zwyzxxxx)).s62)), ((VECTOR(int32_t, 2))(0x5BA11E36L, 0x1377881CL)), ((VECTOR(int32_t, 2))(p_1221->g_258.s25)), (0L == (p_1221->g_224.s0 = (((((((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 2))(0x2F41L, 0L)).xyyx, ((VECTOR(uint16_t, 16))(((*p_1221->g_138)++), 0x80B1L, ((((*l_237) & (((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(0UL, ((VECTOR(uint16_t, 4))((((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 2))(l_261.xx)).xyxxxxxyyyyyxyyy, ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(l_262.ywxw)).odd, ((VECTOR(int16_t, 2))(l_263.xy))))).yxxxxyyyyxxxyxyy))).s3 & ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 16))(0x752AL, ((VECTOR(int16_t, 2))(p_1221->g_264.s72)), (-9L), ((VECTOR(int16_t, 8))((p_46 & (((p_46 < (((~((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(l_265.sb0bba036)).hi)).w) != GROUP_DIVERGE(1, 1)) > (safe_rshift_func_int16_t_s_s((((((l_237 == l_268) , l_269[4][1][1]) == (p_1221->g_280 = (l_279 = (((((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_270.xx)))).xyyyyyyxxxyxyyyy, ((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))((((((l_257.y |= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(p_1221->g_271.zxyy)).odd, ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 8))((safe_add_func_int64_t_s_s(((safe_rshift_func_int16_t_s_u(p_46, 3)) & 0x8AEBA5A67771A94AL), (*l_237))), (**l_245), (*p_47), (**l_245), 0x22C60234L, ((VECTOR(int32_t, 2))(0x1667E6C4L)), 0L)).s65, ((VECTOR(int32_t, 2))(0L)), ((VECTOR(int32_t, 2))((-1L)))))), ((VECTOR(int32_t, 2))((-1L)))))).yxyx, ((VECTOR(int32_t, 4))(0x4C893185L))))).zzyzyxxzyzzwywxw, ((VECTOR(int32_t, 16))(0x0DE9C3CCL))))).s93bd, ((VECTOR(int32_t, 4))(0x5DFC5413L)), ((VECTOR(int32_t, 4))((-9L)))))).zzxxxwzx, ((VECTOR(int32_t, 8))(0L))))).even)), ((VECTOR(int32_t, 4))(0x511F2870L)))).s3) < 0x6D17459AL) , (*p_1221->g_144)) != (*p_1221->g_144)) >= FAKE_DIVERGE(p_1221->global_1_offset, get_global_id(1), 10)), p_1221->g_76.s0, (-10L), 1L)).odd)).xxxyxxyy, (int16_t)p_46))).s03, ((VECTOR(int16_t, 2))(0x276DL))))), ((VECTOR(int16_t, 2))(4L))))).yxyyyxxx, (int16_t)0x4681L))))))))).hi))).wwwyzzyyzzyyzwxw, ((VECTOR(int16_t, 16))(0x0121L))))).sb && 65529UL) , p_1221->g_229.z) , (void*)0)))) , l_281) != (void*)0), p_48)))) != (*p_47)) & p_48)), ((VECTOR(int16_t, 2))(0x40FFL)), (-1L), 0x3A3CL, 0x73F2L, 0x73EBL, (-10L))).s6, ((VECTOR(int16_t, 4))(0L)), 0x6E20L, p_46, 0x1988L, 0x5C64L, ((VECTOR(int16_t, 2))(0L)), (-10L))), ((VECTOR(int16_t, 16))(0x1F49L))))).se84e)).z), ((VECTOR(uint16_t, 2))(0xE724L)), 1UL)), ((VECTOR(uint16_t, 2))(0xC819L)), 0x356EL)).s7713247764474741)).sc != 0x79ECL)) != p_1221->g_224.s4) >= (*l_237)), ((VECTOR(uint16_t, 2))(65535UL)), ((VECTOR(uint16_t, 4))(0UL)), ((VECTOR(uint16_t, 2))(65535UL)), 65529UL, 0x1F47L, ((VECTOR(uint16_t, 2))(0xF4E6L)), 65535UL)).s2cbc))).y , (*p_1221->g_114)) == (void*)0) , p_1221->g_282) != &l_281) || p_1221->g_191))), ((VECTOR(int32_t, 8))(0x39B0D887L)), 0x11FA727BL)).s3c5a)).wyzwywzz)), ((VECTOR(int32_t, 8))((-6L))), ((VECTOR(int32_t, 8))(0x6B7294B5L))))).s7, (*p_47))) < (-3L)))), GROUP_DIVERGE(2, 1))) < GROUP_DIVERGE(1, 1))) > (-6L)), (uint8_t)p_1221->g_25.x))))))))).even)).s5450556727067364))).s60f6, ((VECTOR(uint16_t, 4))(2UL))))).zywxxyzyzxzzxyyz))))).hi)), (**p_1221->g_144), ((VECTOR(uint16_t, 2))(65526UL)), ((VECTOR(uint16_t, 4))(0UL)))).s60, ((VECTOR(uint16_t, 2))(4UL)), ((VECTOR(uint16_t, 2))(4UL))))).yyxx)), ((VECTOR(uint16_t, 2))(0x158AL)), 7UL, 0x2B4FL)).s4167677116055072, ((VECTOR(uint16_t, 16))(0x87BEL))))).hi))).s1650110131364064)).odd)).s2, 6)))
        { /* block id: 113 */
            int16_t l_285[1][1][2];
            int32_t l_327 = 1L;
            int32_t l_335 = 0x26F76317L;
            int32_t l_341[4];
            int32_t l_349[8][4][5] = {{{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L}},{{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L}},{{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L}},{{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L}},{{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L}},{{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L}},{{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L}},{{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L},{0x650F7C54L,(-5L),0x27AD8EE9L,1L,0x55D69451L}}};
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 2; k++)
                        l_285[i][j][k] = 0x6407L;
                }
            }
            for (i = 0; i < 4; i++)
                l_341[i] = (-1L);
            if (l_285[0][0][0])
                break;
            for (p_1221->g_7 = 8; (p_1221->g_7 == 7); --p_1221->g_7)
            { /* block id: 117 */
                int64_t l_332[5][4] = {{0x67A1B7E46297C236L,9L,0x36BC92094387CDF4L,9L},{0x67A1B7E46297C236L,9L,0x36BC92094387CDF4L,9L},{0x67A1B7E46297C236L,9L,0x36BC92094387CDF4L,9L},{0x67A1B7E46297C236L,9L,0x36BC92094387CDF4L,9L},{0x67A1B7E46297C236L,9L,0x36BC92094387CDF4L,9L}};
                int32_t l_339 = 0L;
                int32_t l_340 = 1L;
                int32_t l_343 = 2L;
                int32_t l_345 = 0x1335AD44L;
                int32_t l_346 = (-3L);
                int32_t l_347 = 0x0A40659BL;
                int32_t l_348 = 0L;
                int32_t l_350 = 2L;
                int32_t l_351 = (-8L);
                int32_t l_352 = 0x620F98BBL;
                int32_t l_353 = 7L;
                int32_t l_354 = 0x5F602CD5L;
                int32_t l_355 = 0L;
                int32_t l_356 = 0x5A14DA2CL;
                int32_t l_357 = 2L;
                int32_t l_358 = 1L;
                VECTOR(int32_t, 2) l_359 = (VECTOR(int32_t, 2))(0x43F5FBDEL, 0x07BDB027L);
                int i, j;
                for (p_1221->g_139 = 0; (p_1221->g_139 >= 52); p_1221->g_139++)
                { /* block id: 120 */
                    if ((*p_47))
                        break;
                }
                for (p_1221->g_119 = 0; (p_1221->g_119 > 56); p_1221->g_119 = safe_add_func_int64_t_s_s(p_1221->g_119, 2))
                { /* block id: 125 */
                    int64_t *l_308 = &p_1221->g_120;
                    VECTOR(uint8_t, 16) l_314 = (VECTOR(uint8_t, 16))(0x52L, (VECTOR(uint8_t, 4))(0x52L, (VECTOR(uint8_t, 2))(0x52L, 1UL), 1UL), 1UL, 0x52L, 1UL, (VECTOR(uint8_t, 2))(0x52L, 1UL), (VECTOR(uint8_t, 2))(0x52L, 1UL), 0x52L, 1UL, 0x52L, 1UL);
                    int64_t *l_323 = (void*)0;
                    int64_t *l_324 = (void*)0;
                    int64_t *l_325 = (void*)0;
                    int64_t *l_326 = (void*)0;
                    int32_t l_334[9] = {(-1L),0x24ECEEE7L,(-1L),(-1L),0x24ECEEE7L,(-1L),(-1L),0x24ECEEE7L,(-1L)};
                    int i;
                    (*l_245) = (*l_245);
                    l_327 = (((p_1221->g_3 < ((safe_rshift_func_int8_t_s_s((safe_sub_func_uint32_t_u_u((p_48 >= GROUP_DIVERGE(1, 1)), (safe_mul_func_uint16_t_u_u((l_285[0][0][0] != ((safe_unary_minus_func_uint16_t_u((**p_1221->g_144))) , 0xAB270CE4L)), (+(((((*l_268) = (safe_unary_minus_func_int16_t_s((safe_div_func_int16_t_s_s(((safe_sub_func_int16_t_s_s((((*l_308) = (safe_lshift_func_int16_t_s_s((safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_1221->group_2_offset, get_group_id(2), 10), 0x4C149F11B402BA1DL)), 5))) == ((safe_add_func_uint8_t_u_u(p_46, (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 2))(0x66L, 0x38L)).yxxxxyxy, ((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 8))(p_1221->g_313.yxwwxxxz)).even, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(l_314.s829d)), (p_1221->g_271.z > (safe_div_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), GROUP_DIVERGE(0, 1)))), 0UL, 0x4DL, 8UL)).s53)).yyxyxxxxyxyxxyxx)).s796f))).xwxzzyyw))).s5317434071071371, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 4))(((safe_sub_func_int64_t_s_s((p_1221->g_22.w = (safe_div_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s(1UL, 0)), p_46))), 0x50AB19E4DCF418FFL)) < (*l_237)), 0x33L, 0x5DL, 1UL)).wyxyzwxyyyxzyzwy, ((VECTOR(uint8_t, 16))(0UL))))).hi, ((VECTOR(uint8_t, 8))(252UL))))).lo, (uint8_t)255UL))).wyxwwxzwzzyzxzwy))).s26)).xyxyxyxxxxyxyyxx))).s6, 0xFBL)))) && p_46)), (**p_1221->g_144))) > FAKE_DIVERGE(p_1221->global_1_offset, get_global_id(1), 10)), 0x63C8L))))) == p_1221->g_313.y) , (void*)0) == (void*)0)))))), p_1221->g_20.s0)) >= 0L)) && 0xF652L) == 7L);
                    for (l_239 = 7; (l_239 <= (-5)); l_239--)
                    { /* block id: 133 */
                        int64_t l_330 = 1L;
                        int32_t l_331 = 1L;
                        int32_t l_333 = 1L;
                        int32_t l_336 = 0x6D8A54C4L;
                        int32_t l_337 = 0x4474DEC4L;
                        int32_t l_338 = 0x4A5EA314L;
                        int32_t l_342 = 0x262367ABL;
                        int32_t l_344[1][8][6] = {{{3L,3L,3L,3L,3L,3L},{3L,3L,3L,3L,3L,3L},{3L,3L,3L,3L,3L,3L},{3L,3L,3L,3L,3L,3L},{3L,3L,3L,3L,3L,3L},{3L,3L,3L,3L,3L,3L},{3L,3L,3L,3L,3L,3L},{3L,3L,3L,3L,3L,3L}}};
                        int32_t l_360 = 0x7D938D9EL;
                        int i, j, k;
                        p_1221->g_362--;
                        p_1221->g_76.s6 &= (*p_47);
                        return &p_1221->g_3;
                    }
                }
            }
            --p_1221->g_366;
        }
        else
        { /* block id: 141 */
            l_370 = (p_1221->g_258.s2 && ((VECTOR(uint64_t, 2))(l_369.s04)).lo);
        }
        for (l_244 = 17; (l_244 < 3); l_244 = safe_sub_func_int32_t_s_s(l_244, 9))
        { /* block id: 146 */
            int32_t ***l_373 = &l_245;
            (*l_373) = &l_237;
            for (p_1221->g_120 = 0; (p_1221->g_120 >= (-30)); p_1221->g_120--)
            { /* block id: 150 */
                if (p_1221->g_120)
                { /* block id: 151 */
                    (*l_245) = p_47;
                }
                else
                { /* block id: 153 */
                    volatile int64_t ***l_376 = &p_1221->g_282;
                    (*l_376) = &p_1221->g_283;
                }
            }
        }
    }
    return p_47;
}


/* ------------------------------------------ */
/* 
 * reads : p_1221->g_21 p_1221->g_93 p_1221->g_25 p_1221->g_7 p_1221->g_81 p_1221->g_82 p_1221->g_176 p_1221->g_149 p_1221->g_138 p_1221->g_139
 * writes: p_1221->g_93 p_1221->g_7 p_1221->g_176 p_1221->g_82 p_1221->g_218
 */
int32_t * func_49(int16_t  p_50, int64_t  p_51, int32_t * p_52, struct S0 * p_1221)
{ /* block id: 22 */
    uint16_t *l_90 = (void*)0;
    uint16_t **l_89 = &l_90;
    uint16_t ***l_91 = &l_89;
    uint32_t *l_92 = &p_1221->g_93;
    int32_t l_113 = (-1L);
    int32_t l_151 = 0x5D9A7C64L;
    int32_t *l_155 = (void*)0;
    uint8_t *l_161 = (void*)0;
    int16_t l_174 = (-5L);
    int16_t l_182[5][3] = {{0x2B97L,5L,0x2B97L},{0x2B97L,5L,0x2B97L},{0x2B97L,5L,0x2B97L},{0x2B97L,5L,0x2B97L},{0x2B97L,5L,0x2B97L}};
    int32_t l_183 = (-1L);
    VECTOR(int32_t, 4) l_184 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-2L)), (-2L));
    int32_t l_185[8][2] = {{0x5BD8F16DL,0x5B4F27B7L},{0x5BD8F16DL,0x5B4F27B7L},{0x5BD8F16DL,0x5B4F27B7L},{0x5BD8F16DL,0x5B4F27B7L},{0x5BD8F16DL,0x5B4F27B7L},{0x5BD8F16DL,0x5B4F27B7L},{0x5BD8F16DL,0x5B4F27B7L},{0x5BD8F16DL,0x5B4F27B7L}};
    int32_t l_187 = 1L;
    int64_t l_189 = 0x2B63680A1827553DL;
    int32_t l_190[9][8][3] = {{{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)}},{{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)}},{{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)}},{{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)}},{{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)}},{{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)}},{{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)}},{{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)}},{{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)},{0x343D952BL,(-1L),(-4L)}}};
    int16_t l_193 = (-1L);
    uint8_t l_194 = 249UL;
    int64_t *l_210 = &p_1221->g_120;
    int16_t l_216 = 0x053FL;
    int i, j, k;
    (*l_91) = l_89;
    if ((0UL <= ((*l_92) |= p_1221->g_21.z)))
    { /* block id: 25 */
        int32_t *l_100 = &p_1221->g_7;
        VECTOR(int32_t, 16) l_112 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x23025762L), 0x23025762L), 0x23025762L, 1L, 0x23025762L, (VECTOR(int32_t, 2))(1L, 0x23025762L), (VECTOR(int32_t, 2))(1L, 0x23025762L), 1L, 0x23025762L, 1L, 0x23025762L);
        uint16_t **l_146 = &l_90;
        uint32_t l_173 = 0x154B7D52L;
        uint64_t *l_175 = &p_1221->g_176;
        int32_t **l_177[3];
        int64_t *l_178 = (void*)0;
        int64_t *l_179 = (void*)0;
        int64_t *l_180 = (void*)0;
        int64_t *l_181 = (void*)0;
        int8_t l_186 = 1L;
        int64_t l_188 = 0x412C39B06FB9F2B8L;
        int32_t l_192 = 0x5F733A1DL;
        int i;
        for (i = 0; i < 3; i++)
            l_177[i] = &l_155;
        for (p_51 = 0; (p_51 < 10); p_51 = safe_add_func_int16_t_s_s(p_51, 5))
        { /* block id: 28 */
            int32_t l_109 = 0x76DC049DL;
            uint16_t ***l_118 = (void*)0;
            VECTOR(int32_t, 8) l_125 = (VECTOR(int32_t, 8))(0x583D76CEL, (VECTOR(int32_t, 4))(0x583D76CEL, (VECTOR(int32_t, 2))(0x583D76CEL, (-1L)), (-1L)), (-1L), 0x583D76CEL, (-1L));
            uint8_t *l_160[9] = {(void*)0,&p_1221->g_119,(void*)0,(void*)0,&p_1221->g_119,(void*)0,(void*)0,&p_1221->g_119,(void*)0};
            int i;
            for (p_50 = (-1); (p_50 <= 27); p_50 = safe_add_func_uint64_t_u_u(p_50, 4))
            { /* block id: 31 */
                uint64_t l_124 = 18446744073709551608UL;
                int32_t l_162 = (-3L);
                (1 + 1);
            }
            if (p_1221->g_25.y)
                break;
        }
        (*l_100) |= p_51;
        l_151 &= ((*p_1221->g_81) ^ ((((void*)0 != (*l_91)) , (GROUP_DIVERGE(1, 1) != (p_51 >= ((*l_175) |= ((safe_unary_minus_func_int32_t_s(((*l_100) ^= l_173))) | (l_174 <= 0UL)))))) == (l_182[2][1] = ((l_155 = (p_52 = &p_1221->g_3)) == &l_151))));
        l_194++;
    }
    else
    { /* block id: 88 */
        int64_t *l_207 = &p_1221->g_120;
        int64_t **l_208 = (void*)0;
        int64_t **l_209[6] = {&l_207,&l_207,&l_207,&l_207,&l_207,&l_207};
        int16_t l_215 = 0x4A8CL;
        uint32_t *l_217 = &p_1221->g_218;
        int32_t *l_219 = (void*)0;
        int32_t *l_220 = &l_113;
        int i;
        (*l_220) |= (((safe_div_func_uint64_t_u_u(((safe_div_func_uint8_t_u_u((((*l_217) = ((*l_92) = (safe_mod_func_int64_t_s_s((((((*p_1221->g_81) = (((safe_sub_func_int32_t_s_s((((l_210 = l_207) == &p_1221->g_120) > (&p_1221->g_149 == &p_1221->g_149)), (safe_lshift_func_uint16_t_u_s(((p_51 && p_50) > p_51), ((safe_rshift_func_int8_t_s_s((((-6L) & ((l_215 > 0xC06BD83F23B7BDE4L) == FAKE_DIVERGE(p_1221->global_1_offset, get_global_id(1), 10))) , l_216), 7)) > 0x2AF2L))))) & 2UL) ^ 7L)) , l_215) , 0x066E4655L) , l_215), p_51)))) && p_51), (-10L))) || p_1221->g_149), 2UL)) && GROUP_DIVERGE(0, 1)) && (*p_1221->g_138));
        p_52 = &p_1221->g_7;
    }
    return p_52;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_71(int32_t  p_72, uint16_t  p_73, int16_t * p_74, struct S0 * p_1221)
{ /* block id: 20 */
    uint64_t l_83 = 0x7D3E8228F8F04B74L;
    return l_83;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1222;
    struct S0* p_1221 = &c_1222;
    struct S0 c_1223 = {
        (VECTOR(int32_t, 2))(0x60F57A7CL, 0x18070ADEL), // p_1221->g_2
        0x7A5C62E0L, // p_1221->g_3
        0x00011151L, // p_1221->g_7
        (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x7EBFB2C41AC3DC99L), 0x7EBFB2C41AC3DC99L), 0x7EBFB2C41AC3DC99L, 1L, 0x7EBFB2C41AC3DC99L), // p_1221->g_20
        (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 0L), 0L), // p_1221->g_21
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 1L), 1L), // p_1221->g_22
        (VECTOR(uint16_t, 4))(0xDF7BL, (VECTOR(uint16_t, 2))(0xDF7BL, 0x66ACL), 0x66ACL), // p_1221->g_25
        0L, // p_1221->g_63
        (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x3979D795L), 0x3979D795L), 0x3979D795L, 6L, 0x3979D795L), // p_1221->g_76
        0L, // p_1221->g_82
        &p_1221->g_82, // p_1221->g_81
        9UL, // p_1221->g_93
        (VECTOR(uint8_t, 8))(0x9AL, (VECTOR(uint8_t, 4))(0x9AL, (VECTOR(uint8_t, 2))(0x9AL, 0x81L), 0x81L), 0x81L, 0x9AL, 0x81L), // p_1221->g_103
        3UL, // p_1221->g_117
        &p_1221->g_117, // p_1221->g_116
        &p_1221->g_116, // p_1221->g_115
        &p_1221->g_115, // p_1221->g_114
        0UL, // p_1221->g_119
        (-8L), // p_1221->g_120
        0xA6B8L, // p_1221->g_139
        &p_1221->g_139, // p_1221->g_138
        &p_1221->g_139, // p_1221->g_145
        &p_1221->g_145, // p_1221->g_144
        0x5BL, // p_1221->g_149
        (VECTOR(uint8_t, 4))(0xB1L, (VECTOR(uint8_t, 2))(0xB1L, 1UL), 1UL), // p_1221->g_167
        0x68CCC043B8F3440FL, // p_1221->g_176
        0x0994L, // p_1221->g_191
        4294967291UL, // p_1221->g_218
        (VECTOR(int32_t, 8))(0x0AFCA1F2L, (VECTOR(int32_t, 4))(0x0AFCA1F2L, (VECTOR(int32_t, 2))(0x0AFCA1F2L, 0x1E60A541L), 0x1E60A541L), 0x1E60A541L, 0x0AFCA1F2L, 0x1E60A541L), // p_1221->g_224
        (VECTOR(int64_t, 4))(7L, (VECTOR(int64_t, 2))(7L, 0x1018CC1155B47B51L), 0x1018CC1155B47B51L), // p_1221->g_229
        (VECTOR(int32_t, 2))(7L, 2L), // p_1221->g_243
        (VECTOR(uint16_t, 2))(0x29AFL, 0x6292L), // p_1221->g_248
        (VECTOR(uint16_t, 2))(65533UL, 2UL), // p_1221->g_249
        (VECTOR(int32_t, 16))(0x0E2A946EL, (VECTOR(int32_t, 4))(0x0E2A946EL, (VECTOR(int32_t, 2))(0x0E2A946EL, 1L), 1L), 1L, 0x0E2A946EL, 1L, (VECTOR(int32_t, 2))(0x0E2A946EL, 1L), (VECTOR(int32_t, 2))(0x0E2A946EL, 1L), 0x0E2A946EL, 1L, 0x0E2A946EL, 1L), // p_1221->g_258
        (VECTOR(int16_t, 8))(0x678DL, (VECTOR(int16_t, 4))(0x678DL, (VECTOR(int16_t, 2))(0x678DL, (-1L)), (-1L)), (-1L), 0x678DL, (-1L)), // p_1221->g_264
        (VECTOR(int32_t, 4))(0x3F1D0265L, (VECTOR(int32_t, 2))(0x3F1D0265L, 0x6E26C2D7L), 0x6E26C2D7L), // p_1221->g_271
        &p_1221->g_144, // p_1221->g_280
        (void*)0, // p_1221->g_283
        &p_1221->g_283, // p_1221->g_282
        (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 1UL), 1UL), // p_1221->g_313
        1UL, // p_1221->g_362
        0UL, // p_1221->g_366
        (VECTOR(uint8_t, 16))(252UL, (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 1UL), 1UL), 1UL, 252UL, 1UL, (VECTOR(uint8_t, 2))(252UL, 1UL), (VECTOR(uint8_t, 2))(252UL, 1UL), 252UL, 1UL, 252UL, 1UL), // p_1221->g_400
        (void*)0, // p_1221->g_406
        (VECTOR(int8_t, 8))(0x48L, (VECTOR(int8_t, 4))(0x48L, (VECTOR(int8_t, 2))(0x48L, 0x66L), 0x66L), 0x66L, 0x48L, 0x66L), // p_1221->g_407
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L), // p_1221->g_418
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x48L), 0x48L), 0x48L, 1L, 0x48L), // p_1221->g_419
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL), // p_1221->g_426
        (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 0x8CL), 0x8CL), // p_1221->g_427
        (VECTOR(uint8_t, 16))(2UL, (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 1UL), 1UL), 1UL, 2UL, 1UL, (VECTOR(uint8_t, 2))(2UL, 1UL), (VECTOR(uint8_t, 2))(2UL, 1UL), 2UL, 1UL, 2UL, 1UL), // p_1221->g_428
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x3214AFC9L), 0x3214AFC9L), // p_1221->g_483
        (VECTOR(uint8_t, 8))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 246UL), 246UL), 246UL, 6UL, 246UL), // p_1221->g_500
        (VECTOR(int32_t, 8))(0x76D75767L, (VECTOR(int32_t, 4))(0x76D75767L, (VECTOR(int32_t, 2))(0x76D75767L, (-1L)), (-1L)), (-1L), 0x76D75767L, (-1L)), // p_1221->g_520
        (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967287UL), 4294967287UL), // p_1221->g_543
        (VECTOR(int16_t, 8))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 0L), 0L), 0L, (-5L), 0L), // p_1221->g_552
        (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x59B71626L), 0x59B71626L), 0x59B71626L, 0UL, 0x59B71626L, (VECTOR(uint32_t, 2))(0UL, 0x59B71626L), (VECTOR(uint32_t, 2))(0UL, 0x59B71626L), 0UL, 0x59B71626L, 0UL, 0x59B71626L), // p_1221->g_555
        0x0DF3L, // p_1221->g_580
        (VECTOR(int32_t, 16))(0x4011D496L, (VECTOR(int32_t, 4))(0x4011D496L, (VECTOR(int32_t, 2))(0x4011D496L, (-1L)), (-1L)), (-1L), 0x4011D496L, (-1L), (VECTOR(int32_t, 2))(0x4011D496L, (-1L)), (VECTOR(int32_t, 2))(0x4011D496L, (-1L)), 0x4011D496L, (-1L), 0x4011D496L, (-1L)), // p_1221->g_581
        (VECTOR(uint16_t, 2))(0x96EDL, 0xE044L), // p_1221->g_585
        (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 254UL), 254UL), // p_1221->g_593
        (VECTOR(uint8_t, 16))(248UL, (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 0x4AL), 0x4AL), 0x4AL, 248UL, 0x4AL, (VECTOR(uint8_t, 2))(248UL, 0x4AL), (VECTOR(uint8_t, 2))(248UL, 0x4AL), 248UL, 0x4AL, 248UL, 0x4AL), // p_1221->g_594
        6L, // p_1221->g_602
        0x6DB35847L, // p_1221->g_605
        (VECTOR(uint64_t, 2))(2UL, 2UL), // p_1221->g_617
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x33ABL), 0x33ABL), 0x33ABL, (-1L), 0x33ABL), // p_1221->g_620
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 8UL), 8UL), // p_1221->g_626
        (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 0xC2DCL), 0xC2DCL), // p_1221->g_636
        (VECTOR(int64_t, 2))(0x57E326D7707D3168L, 1L), // p_1221->g_640
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1221->g_647
        &p_1221->g_647[2], // p_1221->g_646
        &p_1221->g_646, // p_1221->g_645
        (VECTOR(int16_t, 8))(0x6AD0L, (VECTOR(int16_t, 4))(0x6AD0L, (VECTOR(int16_t, 2))(0x6AD0L, 0x7FA0L), 0x7FA0L), 0x7FA0L, 0x6AD0L, 0x7FA0L), // p_1221->g_664
        (VECTOR(int16_t, 16))(5L, (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, 1L), 1L), 1L, 5L, 1L, (VECTOR(int16_t, 2))(5L, 1L), (VECTOR(int16_t, 2))(5L, 1L), 5L, 1L, 5L, 1L), // p_1221->g_667
        (VECTOR(uint64_t, 2))(0xE4CEB39D31FEA2FCL, 0x9E0405B391551010L), // p_1221->g_673
        (void*)0, // p_1221->g_690
        (VECTOR(uint32_t, 16))(0x127F5D74L, (VECTOR(uint32_t, 4))(0x127F5D74L, (VECTOR(uint32_t, 2))(0x127F5D74L, 0xFDE1F9FBL), 0xFDE1F9FBL), 0xFDE1F9FBL, 0x127F5D74L, 0xFDE1F9FBL, (VECTOR(uint32_t, 2))(0x127F5D74L, 0xFDE1F9FBL), (VECTOR(uint32_t, 2))(0x127F5D74L, 0xFDE1F9FBL), 0x127F5D74L, 0xFDE1F9FBL, 0x127F5D74L, 0xFDE1F9FBL), // p_1221->g_699
        (VECTOR(uint32_t, 2))(4294967295UL, 0xD6DDF357L), // p_1221->g_700
        (VECTOR(uint32_t, 8))(4294967289UL, (VECTOR(uint32_t, 4))(4294967289UL, (VECTOR(uint32_t, 2))(4294967289UL, 0xF9D8CA7AL), 0xF9D8CA7AL), 0xF9D8CA7AL, 4294967289UL, 0xF9D8CA7AL), // p_1221->g_701
        (VECTOR(int64_t, 16))((-8L), (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), (-1L)), (-1L)), (-1L), (-8L), (-1L), (VECTOR(int64_t, 2))((-8L), (-1L)), (VECTOR(int64_t, 2))((-8L), (-1L)), (-8L), (-1L), (-8L), (-1L)), // p_1221->g_705
        {{0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL},{0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL},{0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL},{0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL},{0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL},{0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL},{0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL},{0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL},{0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL},{0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL,0x773F5EAB9D42F62DL}}, // p_1221->g_757
        {&p_1221->g_406,&p_1221->g_406,&p_1221->g_406}, // p_1221->g_768
        (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967295UL), 4294967295UL), // p_1221->g_806
        (VECTOR(uint16_t, 2))(65527UL, 65533UL), // p_1221->g_825
        (VECTOR(uint32_t, 4))(0x8D83294EL, (VECTOR(uint32_t, 2))(0x8D83294EL, 4294967288UL), 4294967288UL), // p_1221->g_826
        (VECTOR(uint16_t, 2))(0x4BD7L, 0x365DL), // p_1221->g_838
        (VECTOR(uint8_t, 16))(0x28L, (VECTOR(uint8_t, 4))(0x28L, (VECTOR(uint8_t, 2))(0x28L, 0x29L), 0x29L), 0x29L, 0x28L, 0x29L, (VECTOR(uint8_t, 2))(0x28L, 0x29L), (VECTOR(uint8_t, 2))(0x28L, 0x29L), 0x28L, 0x29L, 0x28L, 0x29L), // p_1221->g_847
        (VECTOR(uint8_t, 2))(254UL, 0x77L), // p_1221->g_910
        (void*)0, // p_1221->g_912
        &p_1221->g_912, // p_1221->g_911
        (VECTOR(int16_t, 2))(0x4299L, (-1L)), // p_1221->g_919
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 4L), 4L), // p_1221->g_920
        {{{0L,0L,0x592DEE015503FDE8L,2L,(-4L),2L,0x592DEE015503FDE8L,0L,0L},{0L,0L,0x592DEE015503FDE8L,2L,(-4L),2L,0x592DEE015503FDE8L,0L,0L},{0L,0L,0x592DEE015503FDE8L,2L,(-4L),2L,0x592DEE015503FDE8L,0L,0L},{0L,0L,0x592DEE015503FDE8L,2L,(-4L),2L,0x592DEE015503FDE8L,0L,0L},{0L,0L,0x592DEE015503FDE8L,2L,(-4L),2L,0x592DEE015503FDE8L,0L,0L},{0L,0L,0x592DEE015503FDE8L,2L,(-4L),2L,0x592DEE015503FDE8L,0L,0L},{0L,0L,0x592DEE015503FDE8L,2L,(-4L),2L,0x592DEE015503FDE8L,0L,0L}}}, // p_1221->g_951
        (VECTOR(int32_t, 4))(0x7C52ED92L, (VECTOR(int32_t, 2))(0x7C52ED92L, 0x3D33749FL), 0x3D33749FL), // p_1221->g_974
        (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x4D69F82AE9FFDC3BL), 0x4D69F82AE9FFDC3BL), // p_1221->g_975
        65534UL, // p_1221->g_1033
        (VECTOR(int8_t, 16))(0x25L, (VECTOR(int8_t, 4))(0x25L, (VECTOR(int8_t, 2))(0x25L, 0x08L), 0x08L), 0x08L, 0x25L, 0x08L, (VECTOR(int8_t, 2))(0x25L, 0x08L), (VECTOR(int8_t, 2))(0x25L, 0x08L), 0x25L, 0x08L, 0x25L, 0x08L), // p_1221->g_1041
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), // p_1221->g_1044
        (VECTOR(int32_t, 4))(0x3107756DL, (VECTOR(int32_t, 2))(0x3107756DL, 0x3ADAD3C4L), 0x3ADAD3C4L), // p_1221->g_1045
        (VECTOR(int32_t, 2))(0x1D1AD982L, 0x5A26D917L), // p_1221->g_1047
        (VECTOR(uint16_t, 2))(0x1733L, 6UL), // p_1221->g_1054
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x4983L), 0x4983L), 0x4983L, 1UL, 0x4983L), // p_1221->g_1057
        (void*)0, // p_1221->g_1067
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x776F4A9725E2371FL), 0x776F4A9725E2371FL), // p_1221->g_1113
        (VECTOR(uint8_t, 8))(0x80L, (VECTOR(uint8_t, 4))(0x80L, (VECTOR(uint8_t, 2))(0x80L, 1UL), 1UL), 1UL, 0x80L, 1UL), // p_1221->g_1118
        &p_1221->g_690, // p_1221->g_1136
        (-1L), // p_1221->g_1174
        (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65535UL), 65535UL), 65535UL, 1UL, 65535UL, (VECTOR(uint16_t, 2))(1UL, 65535UL), (VECTOR(uint16_t, 2))(1UL, 65535UL), 1UL, 65535UL, 1UL, 65535UL), // p_1221->g_1203
        (VECTOR(uint16_t, 16))(0xEAF9L, (VECTOR(uint16_t, 4))(0xEAF9L, (VECTOR(uint16_t, 2))(0xEAF9L, 0UL), 0UL), 0UL, 0xEAF9L, 0UL, (VECTOR(uint16_t, 2))(0xEAF9L, 0UL), (VECTOR(uint16_t, 2))(0xEAF9L, 0UL), 0xEAF9L, 0UL, 0xEAF9L, 0UL), // p_1221->g_1204
        sequence_input[get_global_id(0)], // p_1221->global_0_offset
        sequence_input[get_global_id(1)], // p_1221->global_1_offset
        sequence_input[get_global_id(2)], // p_1221->global_2_offset
        sequence_input[get_local_id(0)], // p_1221->local_0_offset
        sequence_input[get_local_id(1)], // p_1221->local_1_offset
        sequence_input[get_local_id(2)], // p_1221->local_2_offset
        sequence_input[get_group_id(0)], // p_1221->group_0_offset
        sequence_input[get_group_id(1)], // p_1221->group_1_offset
        sequence_input[get_group_id(2)], // p_1221->group_2_offset
    };
    c_1222 = c_1223;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1221);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1221->g_2.x, "p_1221->g_2.x", print_hash_value);
    transparent_crc(p_1221->g_2.y, "p_1221->g_2.y", print_hash_value);
    transparent_crc(p_1221->g_3, "p_1221->g_3", print_hash_value);
    transparent_crc(p_1221->g_7, "p_1221->g_7", print_hash_value);
    transparent_crc(p_1221->g_20.s0, "p_1221->g_20.s0", print_hash_value);
    transparent_crc(p_1221->g_20.s1, "p_1221->g_20.s1", print_hash_value);
    transparent_crc(p_1221->g_20.s2, "p_1221->g_20.s2", print_hash_value);
    transparent_crc(p_1221->g_20.s3, "p_1221->g_20.s3", print_hash_value);
    transparent_crc(p_1221->g_20.s4, "p_1221->g_20.s4", print_hash_value);
    transparent_crc(p_1221->g_20.s5, "p_1221->g_20.s5", print_hash_value);
    transparent_crc(p_1221->g_20.s6, "p_1221->g_20.s6", print_hash_value);
    transparent_crc(p_1221->g_20.s7, "p_1221->g_20.s7", print_hash_value);
    transparent_crc(p_1221->g_21.x, "p_1221->g_21.x", print_hash_value);
    transparent_crc(p_1221->g_21.y, "p_1221->g_21.y", print_hash_value);
    transparent_crc(p_1221->g_21.z, "p_1221->g_21.z", print_hash_value);
    transparent_crc(p_1221->g_21.w, "p_1221->g_21.w", print_hash_value);
    transparent_crc(p_1221->g_22.x, "p_1221->g_22.x", print_hash_value);
    transparent_crc(p_1221->g_22.y, "p_1221->g_22.y", print_hash_value);
    transparent_crc(p_1221->g_22.z, "p_1221->g_22.z", print_hash_value);
    transparent_crc(p_1221->g_22.w, "p_1221->g_22.w", print_hash_value);
    transparent_crc(p_1221->g_25.x, "p_1221->g_25.x", print_hash_value);
    transparent_crc(p_1221->g_25.y, "p_1221->g_25.y", print_hash_value);
    transparent_crc(p_1221->g_25.z, "p_1221->g_25.z", print_hash_value);
    transparent_crc(p_1221->g_25.w, "p_1221->g_25.w", print_hash_value);
    transparent_crc(p_1221->g_63, "p_1221->g_63", print_hash_value);
    transparent_crc(p_1221->g_76.s0, "p_1221->g_76.s0", print_hash_value);
    transparent_crc(p_1221->g_76.s1, "p_1221->g_76.s1", print_hash_value);
    transparent_crc(p_1221->g_76.s2, "p_1221->g_76.s2", print_hash_value);
    transparent_crc(p_1221->g_76.s3, "p_1221->g_76.s3", print_hash_value);
    transparent_crc(p_1221->g_76.s4, "p_1221->g_76.s4", print_hash_value);
    transparent_crc(p_1221->g_76.s5, "p_1221->g_76.s5", print_hash_value);
    transparent_crc(p_1221->g_76.s6, "p_1221->g_76.s6", print_hash_value);
    transparent_crc(p_1221->g_76.s7, "p_1221->g_76.s7", print_hash_value);
    transparent_crc(p_1221->g_82, "p_1221->g_82", print_hash_value);
    transparent_crc(p_1221->g_93, "p_1221->g_93", print_hash_value);
    transparent_crc(p_1221->g_103.s0, "p_1221->g_103.s0", print_hash_value);
    transparent_crc(p_1221->g_103.s1, "p_1221->g_103.s1", print_hash_value);
    transparent_crc(p_1221->g_103.s2, "p_1221->g_103.s2", print_hash_value);
    transparent_crc(p_1221->g_103.s3, "p_1221->g_103.s3", print_hash_value);
    transparent_crc(p_1221->g_103.s4, "p_1221->g_103.s4", print_hash_value);
    transparent_crc(p_1221->g_103.s5, "p_1221->g_103.s5", print_hash_value);
    transparent_crc(p_1221->g_103.s6, "p_1221->g_103.s6", print_hash_value);
    transparent_crc(p_1221->g_103.s7, "p_1221->g_103.s7", print_hash_value);
    transparent_crc(p_1221->g_117, "p_1221->g_117", print_hash_value);
    transparent_crc(p_1221->g_119, "p_1221->g_119", print_hash_value);
    transparent_crc(p_1221->g_120, "p_1221->g_120", print_hash_value);
    transparent_crc(p_1221->g_139, "p_1221->g_139", print_hash_value);
    transparent_crc(p_1221->g_149, "p_1221->g_149", print_hash_value);
    transparent_crc(p_1221->g_167.x, "p_1221->g_167.x", print_hash_value);
    transparent_crc(p_1221->g_167.y, "p_1221->g_167.y", print_hash_value);
    transparent_crc(p_1221->g_167.z, "p_1221->g_167.z", print_hash_value);
    transparent_crc(p_1221->g_167.w, "p_1221->g_167.w", print_hash_value);
    transparent_crc(p_1221->g_176, "p_1221->g_176", print_hash_value);
    transparent_crc(p_1221->g_191, "p_1221->g_191", print_hash_value);
    transparent_crc(p_1221->g_218, "p_1221->g_218", print_hash_value);
    transparent_crc(p_1221->g_224.s0, "p_1221->g_224.s0", print_hash_value);
    transparent_crc(p_1221->g_224.s1, "p_1221->g_224.s1", print_hash_value);
    transparent_crc(p_1221->g_224.s2, "p_1221->g_224.s2", print_hash_value);
    transparent_crc(p_1221->g_224.s3, "p_1221->g_224.s3", print_hash_value);
    transparent_crc(p_1221->g_224.s4, "p_1221->g_224.s4", print_hash_value);
    transparent_crc(p_1221->g_224.s5, "p_1221->g_224.s5", print_hash_value);
    transparent_crc(p_1221->g_224.s6, "p_1221->g_224.s6", print_hash_value);
    transparent_crc(p_1221->g_224.s7, "p_1221->g_224.s7", print_hash_value);
    transparent_crc(p_1221->g_229.x, "p_1221->g_229.x", print_hash_value);
    transparent_crc(p_1221->g_229.y, "p_1221->g_229.y", print_hash_value);
    transparent_crc(p_1221->g_229.z, "p_1221->g_229.z", print_hash_value);
    transparent_crc(p_1221->g_229.w, "p_1221->g_229.w", print_hash_value);
    transparent_crc(p_1221->g_243.x, "p_1221->g_243.x", print_hash_value);
    transparent_crc(p_1221->g_243.y, "p_1221->g_243.y", print_hash_value);
    transparent_crc(p_1221->g_248.x, "p_1221->g_248.x", print_hash_value);
    transparent_crc(p_1221->g_248.y, "p_1221->g_248.y", print_hash_value);
    transparent_crc(p_1221->g_249.x, "p_1221->g_249.x", print_hash_value);
    transparent_crc(p_1221->g_249.y, "p_1221->g_249.y", print_hash_value);
    transparent_crc(p_1221->g_258.s0, "p_1221->g_258.s0", print_hash_value);
    transparent_crc(p_1221->g_258.s1, "p_1221->g_258.s1", print_hash_value);
    transparent_crc(p_1221->g_258.s2, "p_1221->g_258.s2", print_hash_value);
    transparent_crc(p_1221->g_258.s3, "p_1221->g_258.s3", print_hash_value);
    transparent_crc(p_1221->g_258.s4, "p_1221->g_258.s4", print_hash_value);
    transparent_crc(p_1221->g_258.s5, "p_1221->g_258.s5", print_hash_value);
    transparent_crc(p_1221->g_258.s6, "p_1221->g_258.s6", print_hash_value);
    transparent_crc(p_1221->g_258.s7, "p_1221->g_258.s7", print_hash_value);
    transparent_crc(p_1221->g_258.s8, "p_1221->g_258.s8", print_hash_value);
    transparent_crc(p_1221->g_258.s9, "p_1221->g_258.s9", print_hash_value);
    transparent_crc(p_1221->g_258.sa, "p_1221->g_258.sa", print_hash_value);
    transparent_crc(p_1221->g_258.sb, "p_1221->g_258.sb", print_hash_value);
    transparent_crc(p_1221->g_258.sc, "p_1221->g_258.sc", print_hash_value);
    transparent_crc(p_1221->g_258.sd, "p_1221->g_258.sd", print_hash_value);
    transparent_crc(p_1221->g_258.se, "p_1221->g_258.se", print_hash_value);
    transparent_crc(p_1221->g_258.sf, "p_1221->g_258.sf", print_hash_value);
    transparent_crc(p_1221->g_264.s0, "p_1221->g_264.s0", print_hash_value);
    transparent_crc(p_1221->g_264.s1, "p_1221->g_264.s1", print_hash_value);
    transparent_crc(p_1221->g_264.s2, "p_1221->g_264.s2", print_hash_value);
    transparent_crc(p_1221->g_264.s3, "p_1221->g_264.s3", print_hash_value);
    transparent_crc(p_1221->g_264.s4, "p_1221->g_264.s4", print_hash_value);
    transparent_crc(p_1221->g_264.s5, "p_1221->g_264.s5", print_hash_value);
    transparent_crc(p_1221->g_264.s6, "p_1221->g_264.s6", print_hash_value);
    transparent_crc(p_1221->g_264.s7, "p_1221->g_264.s7", print_hash_value);
    transparent_crc(p_1221->g_271.x, "p_1221->g_271.x", print_hash_value);
    transparent_crc(p_1221->g_271.y, "p_1221->g_271.y", print_hash_value);
    transparent_crc(p_1221->g_271.z, "p_1221->g_271.z", print_hash_value);
    transparent_crc(p_1221->g_271.w, "p_1221->g_271.w", print_hash_value);
    transparent_crc(p_1221->g_313.x, "p_1221->g_313.x", print_hash_value);
    transparent_crc(p_1221->g_313.y, "p_1221->g_313.y", print_hash_value);
    transparent_crc(p_1221->g_313.z, "p_1221->g_313.z", print_hash_value);
    transparent_crc(p_1221->g_313.w, "p_1221->g_313.w", print_hash_value);
    transparent_crc(p_1221->g_362, "p_1221->g_362", print_hash_value);
    transparent_crc(p_1221->g_366, "p_1221->g_366", print_hash_value);
    transparent_crc(p_1221->g_400.s0, "p_1221->g_400.s0", print_hash_value);
    transparent_crc(p_1221->g_400.s1, "p_1221->g_400.s1", print_hash_value);
    transparent_crc(p_1221->g_400.s2, "p_1221->g_400.s2", print_hash_value);
    transparent_crc(p_1221->g_400.s3, "p_1221->g_400.s3", print_hash_value);
    transparent_crc(p_1221->g_400.s4, "p_1221->g_400.s4", print_hash_value);
    transparent_crc(p_1221->g_400.s5, "p_1221->g_400.s5", print_hash_value);
    transparent_crc(p_1221->g_400.s6, "p_1221->g_400.s6", print_hash_value);
    transparent_crc(p_1221->g_400.s7, "p_1221->g_400.s7", print_hash_value);
    transparent_crc(p_1221->g_400.s8, "p_1221->g_400.s8", print_hash_value);
    transparent_crc(p_1221->g_400.s9, "p_1221->g_400.s9", print_hash_value);
    transparent_crc(p_1221->g_400.sa, "p_1221->g_400.sa", print_hash_value);
    transparent_crc(p_1221->g_400.sb, "p_1221->g_400.sb", print_hash_value);
    transparent_crc(p_1221->g_400.sc, "p_1221->g_400.sc", print_hash_value);
    transparent_crc(p_1221->g_400.sd, "p_1221->g_400.sd", print_hash_value);
    transparent_crc(p_1221->g_400.se, "p_1221->g_400.se", print_hash_value);
    transparent_crc(p_1221->g_400.sf, "p_1221->g_400.sf", print_hash_value);
    transparent_crc(p_1221->g_407.s0, "p_1221->g_407.s0", print_hash_value);
    transparent_crc(p_1221->g_407.s1, "p_1221->g_407.s1", print_hash_value);
    transparent_crc(p_1221->g_407.s2, "p_1221->g_407.s2", print_hash_value);
    transparent_crc(p_1221->g_407.s3, "p_1221->g_407.s3", print_hash_value);
    transparent_crc(p_1221->g_407.s4, "p_1221->g_407.s4", print_hash_value);
    transparent_crc(p_1221->g_407.s5, "p_1221->g_407.s5", print_hash_value);
    transparent_crc(p_1221->g_407.s6, "p_1221->g_407.s6", print_hash_value);
    transparent_crc(p_1221->g_407.s7, "p_1221->g_407.s7", print_hash_value);
    transparent_crc(p_1221->g_418.x, "p_1221->g_418.x", print_hash_value);
    transparent_crc(p_1221->g_418.y, "p_1221->g_418.y", print_hash_value);
    transparent_crc(p_1221->g_418.z, "p_1221->g_418.z", print_hash_value);
    transparent_crc(p_1221->g_418.w, "p_1221->g_418.w", print_hash_value);
    transparent_crc(p_1221->g_419.s0, "p_1221->g_419.s0", print_hash_value);
    transparent_crc(p_1221->g_419.s1, "p_1221->g_419.s1", print_hash_value);
    transparent_crc(p_1221->g_419.s2, "p_1221->g_419.s2", print_hash_value);
    transparent_crc(p_1221->g_419.s3, "p_1221->g_419.s3", print_hash_value);
    transparent_crc(p_1221->g_419.s4, "p_1221->g_419.s4", print_hash_value);
    transparent_crc(p_1221->g_419.s5, "p_1221->g_419.s5", print_hash_value);
    transparent_crc(p_1221->g_419.s6, "p_1221->g_419.s6", print_hash_value);
    transparent_crc(p_1221->g_419.s7, "p_1221->g_419.s7", print_hash_value);
    transparent_crc(p_1221->g_426.x, "p_1221->g_426.x", print_hash_value);
    transparent_crc(p_1221->g_426.y, "p_1221->g_426.y", print_hash_value);
    transparent_crc(p_1221->g_426.z, "p_1221->g_426.z", print_hash_value);
    transparent_crc(p_1221->g_426.w, "p_1221->g_426.w", print_hash_value);
    transparent_crc(p_1221->g_427.x, "p_1221->g_427.x", print_hash_value);
    transparent_crc(p_1221->g_427.y, "p_1221->g_427.y", print_hash_value);
    transparent_crc(p_1221->g_427.z, "p_1221->g_427.z", print_hash_value);
    transparent_crc(p_1221->g_427.w, "p_1221->g_427.w", print_hash_value);
    transparent_crc(p_1221->g_428.s0, "p_1221->g_428.s0", print_hash_value);
    transparent_crc(p_1221->g_428.s1, "p_1221->g_428.s1", print_hash_value);
    transparent_crc(p_1221->g_428.s2, "p_1221->g_428.s2", print_hash_value);
    transparent_crc(p_1221->g_428.s3, "p_1221->g_428.s3", print_hash_value);
    transparent_crc(p_1221->g_428.s4, "p_1221->g_428.s4", print_hash_value);
    transparent_crc(p_1221->g_428.s5, "p_1221->g_428.s5", print_hash_value);
    transparent_crc(p_1221->g_428.s6, "p_1221->g_428.s6", print_hash_value);
    transparent_crc(p_1221->g_428.s7, "p_1221->g_428.s7", print_hash_value);
    transparent_crc(p_1221->g_428.s8, "p_1221->g_428.s8", print_hash_value);
    transparent_crc(p_1221->g_428.s9, "p_1221->g_428.s9", print_hash_value);
    transparent_crc(p_1221->g_428.sa, "p_1221->g_428.sa", print_hash_value);
    transparent_crc(p_1221->g_428.sb, "p_1221->g_428.sb", print_hash_value);
    transparent_crc(p_1221->g_428.sc, "p_1221->g_428.sc", print_hash_value);
    transparent_crc(p_1221->g_428.sd, "p_1221->g_428.sd", print_hash_value);
    transparent_crc(p_1221->g_428.se, "p_1221->g_428.se", print_hash_value);
    transparent_crc(p_1221->g_428.sf, "p_1221->g_428.sf", print_hash_value);
    transparent_crc(p_1221->g_483.x, "p_1221->g_483.x", print_hash_value);
    transparent_crc(p_1221->g_483.y, "p_1221->g_483.y", print_hash_value);
    transparent_crc(p_1221->g_483.z, "p_1221->g_483.z", print_hash_value);
    transparent_crc(p_1221->g_483.w, "p_1221->g_483.w", print_hash_value);
    transparent_crc(p_1221->g_500.s0, "p_1221->g_500.s0", print_hash_value);
    transparent_crc(p_1221->g_500.s1, "p_1221->g_500.s1", print_hash_value);
    transparent_crc(p_1221->g_500.s2, "p_1221->g_500.s2", print_hash_value);
    transparent_crc(p_1221->g_500.s3, "p_1221->g_500.s3", print_hash_value);
    transparent_crc(p_1221->g_500.s4, "p_1221->g_500.s4", print_hash_value);
    transparent_crc(p_1221->g_500.s5, "p_1221->g_500.s5", print_hash_value);
    transparent_crc(p_1221->g_500.s6, "p_1221->g_500.s6", print_hash_value);
    transparent_crc(p_1221->g_500.s7, "p_1221->g_500.s7", print_hash_value);
    transparent_crc(p_1221->g_520.s0, "p_1221->g_520.s0", print_hash_value);
    transparent_crc(p_1221->g_520.s1, "p_1221->g_520.s1", print_hash_value);
    transparent_crc(p_1221->g_520.s2, "p_1221->g_520.s2", print_hash_value);
    transparent_crc(p_1221->g_520.s3, "p_1221->g_520.s3", print_hash_value);
    transparent_crc(p_1221->g_520.s4, "p_1221->g_520.s4", print_hash_value);
    transparent_crc(p_1221->g_520.s5, "p_1221->g_520.s5", print_hash_value);
    transparent_crc(p_1221->g_520.s6, "p_1221->g_520.s6", print_hash_value);
    transparent_crc(p_1221->g_520.s7, "p_1221->g_520.s7", print_hash_value);
    transparent_crc(p_1221->g_543.x, "p_1221->g_543.x", print_hash_value);
    transparent_crc(p_1221->g_543.y, "p_1221->g_543.y", print_hash_value);
    transparent_crc(p_1221->g_543.z, "p_1221->g_543.z", print_hash_value);
    transparent_crc(p_1221->g_543.w, "p_1221->g_543.w", print_hash_value);
    transparent_crc(p_1221->g_552.s0, "p_1221->g_552.s0", print_hash_value);
    transparent_crc(p_1221->g_552.s1, "p_1221->g_552.s1", print_hash_value);
    transparent_crc(p_1221->g_552.s2, "p_1221->g_552.s2", print_hash_value);
    transparent_crc(p_1221->g_552.s3, "p_1221->g_552.s3", print_hash_value);
    transparent_crc(p_1221->g_552.s4, "p_1221->g_552.s4", print_hash_value);
    transparent_crc(p_1221->g_552.s5, "p_1221->g_552.s5", print_hash_value);
    transparent_crc(p_1221->g_552.s6, "p_1221->g_552.s6", print_hash_value);
    transparent_crc(p_1221->g_552.s7, "p_1221->g_552.s7", print_hash_value);
    transparent_crc(p_1221->g_555.s0, "p_1221->g_555.s0", print_hash_value);
    transparent_crc(p_1221->g_555.s1, "p_1221->g_555.s1", print_hash_value);
    transparent_crc(p_1221->g_555.s2, "p_1221->g_555.s2", print_hash_value);
    transparent_crc(p_1221->g_555.s3, "p_1221->g_555.s3", print_hash_value);
    transparent_crc(p_1221->g_555.s4, "p_1221->g_555.s4", print_hash_value);
    transparent_crc(p_1221->g_555.s5, "p_1221->g_555.s5", print_hash_value);
    transparent_crc(p_1221->g_555.s6, "p_1221->g_555.s6", print_hash_value);
    transparent_crc(p_1221->g_555.s7, "p_1221->g_555.s7", print_hash_value);
    transparent_crc(p_1221->g_555.s8, "p_1221->g_555.s8", print_hash_value);
    transparent_crc(p_1221->g_555.s9, "p_1221->g_555.s9", print_hash_value);
    transparent_crc(p_1221->g_555.sa, "p_1221->g_555.sa", print_hash_value);
    transparent_crc(p_1221->g_555.sb, "p_1221->g_555.sb", print_hash_value);
    transparent_crc(p_1221->g_555.sc, "p_1221->g_555.sc", print_hash_value);
    transparent_crc(p_1221->g_555.sd, "p_1221->g_555.sd", print_hash_value);
    transparent_crc(p_1221->g_555.se, "p_1221->g_555.se", print_hash_value);
    transparent_crc(p_1221->g_555.sf, "p_1221->g_555.sf", print_hash_value);
    transparent_crc(p_1221->g_580, "p_1221->g_580", print_hash_value);
    transparent_crc(p_1221->g_581.s0, "p_1221->g_581.s0", print_hash_value);
    transparent_crc(p_1221->g_581.s1, "p_1221->g_581.s1", print_hash_value);
    transparent_crc(p_1221->g_581.s2, "p_1221->g_581.s2", print_hash_value);
    transparent_crc(p_1221->g_581.s3, "p_1221->g_581.s3", print_hash_value);
    transparent_crc(p_1221->g_581.s4, "p_1221->g_581.s4", print_hash_value);
    transparent_crc(p_1221->g_581.s5, "p_1221->g_581.s5", print_hash_value);
    transparent_crc(p_1221->g_581.s6, "p_1221->g_581.s6", print_hash_value);
    transparent_crc(p_1221->g_581.s7, "p_1221->g_581.s7", print_hash_value);
    transparent_crc(p_1221->g_581.s8, "p_1221->g_581.s8", print_hash_value);
    transparent_crc(p_1221->g_581.s9, "p_1221->g_581.s9", print_hash_value);
    transparent_crc(p_1221->g_581.sa, "p_1221->g_581.sa", print_hash_value);
    transparent_crc(p_1221->g_581.sb, "p_1221->g_581.sb", print_hash_value);
    transparent_crc(p_1221->g_581.sc, "p_1221->g_581.sc", print_hash_value);
    transparent_crc(p_1221->g_581.sd, "p_1221->g_581.sd", print_hash_value);
    transparent_crc(p_1221->g_581.se, "p_1221->g_581.se", print_hash_value);
    transparent_crc(p_1221->g_581.sf, "p_1221->g_581.sf", print_hash_value);
    transparent_crc(p_1221->g_585.x, "p_1221->g_585.x", print_hash_value);
    transparent_crc(p_1221->g_585.y, "p_1221->g_585.y", print_hash_value);
    transparent_crc(p_1221->g_593.x, "p_1221->g_593.x", print_hash_value);
    transparent_crc(p_1221->g_593.y, "p_1221->g_593.y", print_hash_value);
    transparent_crc(p_1221->g_593.z, "p_1221->g_593.z", print_hash_value);
    transparent_crc(p_1221->g_593.w, "p_1221->g_593.w", print_hash_value);
    transparent_crc(p_1221->g_594.s0, "p_1221->g_594.s0", print_hash_value);
    transparent_crc(p_1221->g_594.s1, "p_1221->g_594.s1", print_hash_value);
    transparent_crc(p_1221->g_594.s2, "p_1221->g_594.s2", print_hash_value);
    transparent_crc(p_1221->g_594.s3, "p_1221->g_594.s3", print_hash_value);
    transparent_crc(p_1221->g_594.s4, "p_1221->g_594.s4", print_hash_value);
    transparent_crc(p_1221->g_594.s5, "p_1221->g_594.s5", print_hash_value);
    transparent_crc(p_1221->g_594.s6, "p_1221->g_594.s6", print_hash_value);
    transparent_crc(p_1221->g_594.s7, "p_1221->g_594.s7", print_hash_value);
    transparent_crc(p_1221->g_594.s8, "p_1221->g_594.s8", print_hash_value);
    transparent_crc(p_1221->g_594.s9, "p_1221->g_594.s9", print_hash_value);
    transparent_crc(p_1221->g_594.sa, "p_1221->g_594.sa", print_hash_value);
    transparent_crc(p_1221->g_594.sb, "p_1221->g_594.sb", print_hash_value);
    transparent_crc(p_1221->g_594.sc, "p_1221->g_594.sc", print_hash_value);
    transparent_crc(p_1221->g_594.sd, "p_1221->g_594.sd", print_hash_value);
    transparent_crc(p_1221->g_594.se, "p_1221->g_594.se", print_hash_value);
    transparent_crc(p_1221->g_594.sf, "p_1221->g_594.sf", print_hash_value);
    transparent_crc(p_1221->g_602, "p_1221->g_602", print_hash_value);
    transparent_crc(p_1221->g_605, "p_1221->g_605", print_hash_value);
    transparent_crc(p_1221->g_617.x, "p_1221->g_617.x", print_hash_value);
    transparent_crc(p_1221->g_617.y, "p_1221->g_617.y", print_hash_value);
    transparent_crc(p_1221->g_620.s0, "p_1221->g_620.s0", print_hash_value);
    transparent_crc(p_1221->g_620.s1, "p_1221->g_620.s1", print_hash_value);
    transparent_crc(p_1221->g_620.s2, "p_1221->g_620.s2", print_hash_value);
    transparent_crc(p_1221->g_620.s3, "p_1221->g_620.s3", print_hash_value);
    transparent_crc(p_1221->g_620.s4, "p_1221->g_620.s4", print_hash_value);
    transparent_crc(p_1221->g_620.s5, "p_1221->g_620.s5", print_hash_value);
    transparent_crc(p_1221->g_620.s6, "p_1221->g_620.s6", print_hash_value);
    transparent_crc(p_1221->g_620.s7, "p_1221->g_620.s7", print_hash_value);
    transparent_crc(p_1221->g_626.x, "p_1221->g_626.x", print_hash_value);
    transparent_crc(p_1221->g_626.y, "p_1221->g_626.y", print_hash_value);
    transparent_crc(p_1221->g_626.z, "p_1221->g_626.z", print_hash_value);
    transparent_crc(p_1221->g_626.w, "p_1221->g_626.w", print_hash_value);
    transparent_crc(p_1221->g_636.x, "p_1221->g_636.x", print_hash_value);
    transparent_crc(p_1221->g_636.y, "p_1221->g_636.y", print_hash_value);
    transparent_crc(p_1221->g_636.z, "p_1221->g_636.z", print_hash_value);
    transparent_crc(p_1221->g_636.w, "p_1221->g_636.w", print_hash_value);
    transparent_crc(p_1221->g_640.x, "p_1221->g_640.x", print_hash_value);
    transparent_crc(p_1221->g_640.y, "p_1221->g_640.y", print_hash_value);
    transparent_crc(p_1221->g_664.s0, "p_1221->g_664.s0", print_hash_value);
    transparent_crc(p_1221->g_664.s1, "p_1221->g_664.s1", print_hash_value);
    transparent_crc(p_1221->g_664.s2, "p_1221->g_664.s2", print_hash_value);
    transparent_crc(p_1221->g_664.s3, "p_1221->g_664.s3", print_hash_value);
    transparent_crc(p_1221->g_664.s4, "p_1221->g_664.s4", print_hash_value);
    transparent_crc(p_1221->g_664.s5, "p_1221->g_664.s5", print_hash_value);
    transparent_crc(p_1221->g_664.s6, "p_1221->g_664.s6", print_hash_value);
    transparent_crc(p_1221->g_664.s7, "p_1221->g_664.s7", print_hash_value);
    transparent_crc(p_1221->g_667.s0, "p_1221->g_667.s0", print_hash_value);
    transparent_crc(p_1221->g_667.s1, "p_1221->g_667.s1", print_hash_value);
    transparent_crc(p_1221->g_667.s2, "p_1221->g_667.s2", print_hash_value);
    transparent_crc(p_1221->g_667.s3, "p_1221->g_667.s3", print_hash_value);
    transparent_crc(p_1221->g_667.s4, "p_1221->g_667.s4", print_hash_value);
    transparent_crc(p_1221->g_667.s5, "p_1221->g_667.s5", print_hash_value);
    transparent_crc(p_1221->g_667.s6, "p_1221->g_667.s6", print_hash_value);
    transparent_crc(p_1221->g_667.s7, "p_1221->g_667.s7", print_hash_value);
    transparent_crc(p_1221->g_667.s8, "p_1221->g_667.s8", print_hash_value);
    transparent_crc(p_1221->g_667.s9, "p_1221->g_667.s9", print_hash_value);
    transparent_crc(p_1221->g_667.sa, "p_1221->g_667.sa", print_hash_value);
    transparent_crc(p_1221->g_667.sb, "p_1221->g_667.sb", print_hash_value);
    transparent_crc(p_1221->g_667.sc, "p_1221->g_667.sc", print_hash_value);
    transparent_crc(p_1221->g_667.sd, "p_1221->g_667.sd", print_hash_value);
    transparent_crc(p_1221->g_667.se, "p_1221->g_667.se", print_hash_value);
    transparent_crc(p_1221->g_667.sf, "p_1221->g_667.sf", print_hash_value);
    transparent_crc(p_1221->g_673.x, "p_1221->g_673.x", print_hash_value);
    transparent_crc(p_1221->g_673.y, "p_1221->g_673.y", print_hash_value);
    transparent_crc(p_1221->g_699.s0, "p_1221->g_699.s0", print_hash_value);
    transparent_crc(p_1221->g_699.s1, "p_1221->g_699.s1", print_hash_value);
    transparent_crc(p_1221->g_699.s2, "p_1221->g_699.s2", print_hash_value);
    transparent_crc(p_1221->g_699.s3, "p_1221->g_699.s3", print_hash_value);
    transparent_crc(p_1221->g_699.s4, "p_1221->g_699.s4", print_hash_value);
    transparent_crc(p_1221->g_699.s5, "p_1221->g_699.s5", print_hash_value);
    transparent_crc(p_1221->g_699.s6, "p_1221->g_699.s6", print_hash_value);
    transparent_crc(p_1221->g_699.s7, "p_1221->g_699.s7", print_hash_value);
    transparent_crc(p_1221->g_699.s8, "p_1221->g_699.s8", print_hash_value);
    transparent_crc(p_1221->g_699.s9, "p_1221->g_699.s9", print_hash_value);
    transparent_crc(p_1221->g_699.sa, "p_1221->g_699.sa", print_hash_value);
    transparent_crc(p_1221->g_699.sb, "p_1221->g_699.sb", print_hash_value);
    transparent_crc(p_1221->g_699.sc, "p_1221->g_699.sc", print_hash_value);
    transparent_crc(p_1221->g_699.sd, "p_1221->g_699.sd", print_hash_value);
    transparent_crc(p_1221->g_699.se, "p_1221->g_699.se", print_hash_value);
    transparent_crc(p_1221->g_699.sf, "p_1221->g_699.sf", print_hash_value);
    transparent_crc(p_1221->g_700.x, "p_1221->g_700.x", print_hash_value);
    transparent_crc(p_1221->g_700.y, "p_1221->g_700.y", print_hash_value);
    transparent_crc(p_1221->g_701.s0, "p_1221->g_701.s0", print_hash_value);
    transparent_crc(p_1221->g_701.s1, "p_1221->g_701.s1", print_hash_value);
    transparent_crc(p_1221->g_701.s2, "p_1221->g_701.s2", print_hash_value);
    transparent_crc(p_1221->g_701.s3, "p_1221->g_701.s3", print_hash_value);
    transparent_crc(p_1221->g_701.s4, "p_1221->g_701.s4", print_hash_value);
    transparent_crc(p_1221->g_701.s5, "p_1221->g_701.s5", print_hash_value);
    transparent_crc(p_1221->g_701.s6, "p_1221->g_701.s6", print_hash_value);
    transparent_crc(p_1221->g_701.s7, "p_1221->g_701.s7", print_hash_value);
    transparent_crc(p_1221->g_705.s0, "p_1221->g_705.s0", print_hash_value);
    transparent_crc(p_1221->g_705.s1, "p_1221->g_705.s1", print_hash_value);
    transparent_crc(p_1221->g_705.s2, "p_1221->g_705.s2", print_hash_value);
    transparent_crc(p_1221->g_705.s3, "p_1221->g_705.s3", print_hash_value);
    transparent_crc(p_1221->g_705.s4, "p_1221->g_705.s4", print_hash_value);
    transparent_crc(p_1221->g_705.s5, "p_1221->g_705.s5", print_hash_value);
    transparent_crc(p_1221->g_705.s6, "p_1221->g_705.s6", print_hash_value);
    transparent_crc(p_1221->g_705.s7, "p_1221->g_705.s7", print_hash_value);
    transparent_crc(p_1221->g_705.s8, "p_1221->g_705.s8", print_hash_value);
    transparent_crc(p_1221->g_705.s9, "p_1221->g_705.s9", print_hash_value);
    transparent_crc(p_1221->g_705.sa, "p_1221->g_705.sa", print_hash_value);
    transparent_crc(p_1221->g_705.sb, "p_1221->g_705.sb", print_hash_value);
    transparent_crc(p_1221->g_705.sc, "p_1221->g_705.sc", print_hash_value);
    transparent_crc(p_1221->g_705.sd, "p_1221->g_705.sd", print_hash_value);
    transparent_crc(p_1221->g_705.se, "p_1221->g_705.se", print_hash_value);
    transparent_crc(p_1221->g_705.sf, "p_1221->g_705.sf", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1221->g_757[i][j], "p_1221->g_757[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1221->g_806.x, "p_1221->g_806.x", print_hash_value);
    transparent_crc(p_1221->g_806.y, "p_1221->g_806.y", print_hash_value);
    transparent_crc(p_1221->g_806.z, "p_1221->g_806.z", print_hash_value);
    transparent_crc(p_1221->g_806.w, "p_1221->g_806.w", print_hash_value);
    transparent_crc(p_1221->g_825.x, "p_1221->g_825.x", print_hash_value);
    transparent_crc(p_1221->g_825.y, "p_1221->g_825.y", print_hash_value);
    transparent_crc(p_1221->g_826.x, "p_1221->g_826.x", print_hash_value);
    transparent_crc(p_1221->g_826.y, "p_1221->g_826.y", print_hash_value);
    transparent_crc(p_1221->g_826.z, "p_1221->g_826.z", print_hash_value);
    transparent_crc(p_1221->g_826.w, "p_1221->g_826.w", print_hash_value);
    transparent_crc(p_1221->g_838.x, "p_1221->g_838.x", print_hash_value);
    transparent_crc(p_1221->g_838.y, "p_1221->g_838.y", print_hash_value);
    transparent_crc(p_1221->g_847.s0, "p_1221->g_847.s0", print_hash_value);
    transparent_crc(p_1221->g_847.s1, "p_1221->g_847.s1", print_hash_value);
    transparent_crc(p_1221->g_847.s2, "p_1221->g_847.s2", print_hash_value);
    transparent_crc(p_1221->g_847.s3, "p_1221->g_847.s3", print_hash_value);
    transparent_crc(p_1221->g_847.s4, "p_1221->g_847.s4", print_hash_value);
    transparent_crc(p_1221->g_847.s5, "p_1221->g_847.s5", print_hash_value);
    transparent_crc(p_1221->g_847.s6, "p_1221->g_847.s6", print_hash_value);
    transparent_crc(p_1221->g_847.s7, "p_1221->g_847.s7", print_hash_value);
    transparent_crc(p_1221->g_847.s8, "p_1221->g_847.s8", print_hash_value);
    transparent_crc(p_1221->g_847.s9, "p_1221->g_847.s9", print_hash_value);
    transparent_crc(p_1221->g_847.sa, "p_1221->g_847.sa", print_hash_value);
    transparent_crc(p_1221->g_847.sb, "p_1221->g_847.sb", print_hash_value);
    transparent_crc(p_1221->g_847.sc, "p_1221->g_847.sc", print_hash_value);
    transparent_crc(p_1221->g_847.sd, "p_1221->g_847.sd", print_hash_value);
    transparent_crc(p_1221->g_847.se, "p_1221->g_847.se", print_hash_value);
    transparent_crc(p_1221->g_847.sf, "p_1221->g_847.sf", print_hash_value);
    transparent_crc(p_1221->g_910.x, "p_1221->g_910.x", print_hash_value);
    transparent_crc(p_1221->g_910.y, "p_1221->g_910.y", print_hash_value);
    transparent_crc(p_1221->g_919.x, "p_1221->g_919.x", print_hash_value);
    transparent_crc(p_1221->g_919.y, "p_1221->g_919.y", print_hash_value);
    transparent_crc(p_1221->g_920.x, "p_1221->g_920.x", print_hash_value);
    transparent_crc(p_1221->g_920.y, "p_1221->g_920.y", print_hash_value);
    transparent_crc(p_1221->g_920.z, "p_1221->g_920.z", print_hash_value);
    transparent_crc(p_1221->g_920.w, "p_1221->g_920.w", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1221->g_951[i][j][k], "p_1221->g_951[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1221->g_974.x, "p_1221->g_974.x", print_hash_value);
    transparent_crc(p_1221->g_974.y, "p_1221->g_974.y", print_hash_value);
    transparent_crc(p_1221->g_974.z, "p_1221->g_974.z", print_hash_value);
    transparent_crc(p_1221->g_974.w, "p_1221->g_974.w", print_hash_value);
    transparent_crc(p_1221->g_975.x, "p_1221->g_975.x", print_hash_value);
    transparent_crc(p_1221->g_975.y, "p_1221->g_975.y", print_hash_value);
    transparent_crc(p_1221->g_975.z, "p_1221->g_975.z", print_hash_value);
    transparent_crc(p_1221->g_975.w, "p_1221->g_975.w", print_hash_value);
    transparent_crc(p_1221->g_1033, "p_1221->g_1033", print_hash_value);
    transparent_crc(p_1221->g_1041.s0, "p_1221->g_1041.s0", print_hash_value);
    transparent_crc(p_1221->g_1041.s1, "p_1221->g_1041.s1", print_hash_value);
    transparent_crc(p_1221->g_1041.s2, "p_1221->g_1041.s2", print_hash_value);
    transparent_crc(p_1221->g_1041.s3, "p_1221->g_1041.s3", print_hash_value);
    transparent_crc(p_1221->g_1041.s4, "p_1221->g_1041.s4", print_hash_value);
    transparent_crc(p_1221->g_1041.s5, "p_1221->g_1041.s5", print_hash_value);
    transparent_crc(p_1221->g_1041.s6, "p_1221->g_1041.s6", print_hash_value);
    transparent_crc(p_1221->g_1041.s7, "p_1221->g_1041.s7", print_hash_value);
    transparent_crc(p_1221->g_1041.s8, "p_1221->g_1041.s8", print_hash_value);
    transparent_crc(p_1221->g_1041.s9, "p_1221->g_1041.s9", print_hash_value);
    transparent_crc(p_1221->g_1041.sa, "p_1221->g_1041.sa", print_hash_value);
    transparent_crc(p_1221->g_1041.sb, "p_1221->g_1041.sb", print_hash_value);
    transparent_crc(p_1221->g_1041.sc, "p_1221->g_1041.sc", print_hash_value);
    transparent_crc(p_1221->g_1041.sd, "p_1221->g_1041.sd", print_hash_value);
    transparent_crc(p_1221->g_1041.se, "p_1221->g_1041.se", print_hash_value);
    transparent_crc(p_1221->g_1041.sf, "p_1221->g_1041.sf", print_hash_value);
    transparent_crc(p_1221->g_1044.x, "p_1221->g_1044.x", print_hash_value);
    transparent_crc(p_1221->g_1044.y, "p_1221->g_1044.y", print_hash_value);
    transparent_crc(p_1221->g_1044.z, "p_1221->g_1044.z", print_hash_value);
    transparent_crc(p_1221->g_1044.w, "p_1221->g_1044.w", print_hash_value);
    transparent_crc(p_1221->g_1045.x, "p_1221->g_1045.x", print_hash_value);
    transparent_crc(p_1221->g_1045.y, "p_1221->g_1045.y", print_hash_value);
    transparent_crc(p_1221->g_1045.z, "p_1221->g_1045.z", print_hash_value);
    transparent_crc(p_1221->g_1045.w, "p_1221->g_1045.w", print_hash_value);
    transparent_crc(p_1221->g_1047.x, "p_1221->g_1047.x", print_hash_value);
    transparent_crc(p_1221->g_1047.y, "p_1221->g_1047.y", print_hash_value);
    transparent_crc(p_1221->g_1054.x, "p_1221->g_1054.x", print_hash_value);
    transparent_crc(p_1221->g_1054.y, "p_1221->g_1054.y", print_hash_value);
    transparent_crc(p_1221->g_1057.s0, "p_1221->g_1057.s0", print_hash_value);
    transparent_crc(p_1221->g_1057.s1, "p_1221->g_1057.s1", print_hash_value);
    transparent_crc(p_1221->g_1057.s2, "p_1221->g_1057.s2", print_hash_value);
    transparent_crc(p_1221->g_1057.s3, "p_1221->g_1057.s3", print_hash_value);
    transparent_crc(p_1221->g_1057.s4, "p_1221->g_1057.s4", print_hash_value);
    transparent_crc(p_1221->g_1057.s5, "p_1221->g_1057.s5", print_hash_value);
    transparent_crc(p_1221->g_1057.s6, "p_1221->g_1057.s6", print_hash_value);
    transparent_crc(p_1221->g_1057.s7, "p_1221->g_1057.s7", print_hash_value);
    transparent_crc(p_1221->g_1113.x, "p_1221->g_1113.x", print_hash_value);
    transparent_crc(p_1221->g_1113.y, "p_1221->g_1113.y", print_hash_value);
    transparent_crc(p_1221->g_1113.z, "p_1221->g_1113.z", print_hash_value);
    transparent_crc(p_1221->g_1113.w, "p_1221->g_1113.w", print_hash_value);
    transparent_crc(p_1221->g_1118.s0, "p_1221->g_1118.s0", print_hash_value);
    transparent_crc(p_1221->g_1118.s1, "p_1221->g_1118.s1", print_hash_value);
    transparent_crc(p_1221->g_1118.s2, "p_1221->g_1118.s2", print_hash_value);
    transparent_crc(p_1221->g_1118.s3, "p_1221->g_1118.s3", print_hash_value);
    transparent_crc(p_1221->g_1118.s4, "p_1221->g_1118.s4", print_hash_value);
    transparent_crc(p_1221->g_1118.s5, "p_1221->g_1118.s5", print_hash_value);
    transparent_crc(p_1221->g_1118.s6, "p_1221->g_1118.s6", print_hash_value);
    transparent_crc(p_1221->g_1118.s7, "p_1221->g_1118.s7", print_hash_value);
    transparent_crc(p_1221->g_1174, "p_1221->g_1174", print_hash_value);
    transparent_crc(p_1221->g_1203.s0, "p_1221->g_1203.s0", print_hash_value);
    transparent_crc(p_1221->g_1203.s1, "p_1221->g_1203.s1", print_hash_value);
    transparent_crc(p_1221->g_1203.s2, "p_1221->g_1203.s2", print_hash_value);
    transparent_crc(p_1221->g_1203.s3, "p_1221->g_1203.s3", print_hash_value);
    transparent_crc(p_1221->g_1203.s4, "p_1221->g_1203.s4", print_hash_value);
    transparent_crc(p_1221->g_1203.s5, "p_1221->g_1203.s5", print_hash_value);
    transparent_crc(p_1221->g_1203.s6, "p_1221->g_1203.s6", print_hash_value);
    transparent_crc(p_1221->g_1203.s7, "p_1221->g_1203.s7", print_hash_value);
    transparent_crc(p_1221->g_1203.s8, "p_1221->g_1203.s8", print_hash_value);
    transparent_crc(p_1221->g_1203.s9, "p_1221->g_1203.s9", print_hash_value);
    transparent_crc(p_1221->g_1203.sa, "p_1221->g_1203.sa", print_hash_value);
    transparent_crc(p_1221->g_1203.sb, "p_1221->g_1203.sb", print_hash_value);
    transparent_crc(p_1221->g_1203.sc, "p_1221->g_1203.sc", print_hash_value);
    transparent_crc(p_1221->g_1203.sd, "p_1221->g_1203.sd", print_hash_value);
    transparent_crc(p_1221->g_1203.se, "p_1221->g_1203.se", print_hash_value);
    transparent_crc(p_1221->g_1203.sf, "p_1221->g_1203.sf", print_hash_value);
    transparent_crc(p_1221->g_1204.s0, "p_1221->g_1204.s0", print_hash_value);
    transparent_crc(p_1221->g_1204.s1, "p_1221->g_1204.s1", print_hash_value);
    transparent_crc(p_1221->g_1204.s2, "p_1221->g_1204.s2", print_hash_value);
    transparent_crc(p_1221->g_1204.s3, "p_1221->g_1204.s3", print_hash_value);
    transparent_crc(p_1221->g_1204.s4, "p_1221->g_1204.s4", print_hash_value);
    transparent_crc(p_1221->g_1204.s5, "p_1221->g_1204.s5", print_hash_value);
    transparent_crc(p_1221->g_1204.s6, "p_1221->g_1204.s6", print_hash_value);
    transparent_crc(p_1221->g_1204.s7, "p_1221->g_1204.s7", print_hash_value);
    transparent_crc(p_1221->g_1204.s8, "p_1221->g_1204.s8", print_hash_value);
    transparent_crc(p_1221->g_1204.s9, "p_1221->g_1204.s9", print_hash_value);
    transparent_crc(p_1221->g_1204.sa, "p_1221->g_1204.sa", print_hash_value);
    transparent_crc(p_1221->g_1204.sb, "p_1221->g_1204.sb", print_hash_value);
    transparent_crc(p_1221->g_1204.sc, "p_1221->g_1204.sc", print_hash_value);
    transparent_crc(p_1221->g_1204.sd, "p_1221->g_1204.sd", print_hash_value);
    transparent_crc(p_1221->g_1204.se, "p_1221->g_1204.se", print_hash_value);
    transparent_crc(p_1221->g_1204.sf, "p_1221->g_1204.sf", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
