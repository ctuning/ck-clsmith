// ---fake_divergence -g 1,1,5363 -l 1,1,1
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


// Seed: 42

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int32_t  f0;
   volatile int16_t  f1;
   int32_t  f2;
};

union U1 {
   int8_t * f0;
   int8_t  f1;
   uint32_t  f2;
   volatile int64_t  f3;
};

union U2 {
   volatile int8_t * f0;
   uint32_t  f1;
   int64_t  f2;
   int64_t  f3;
};

struct S3 {
    int32_t g_3;
    int32_t g_20;
    int64_t g_33;
    int8_t g_35[10];
    uint16_t g_49[3];
    volatile union U0 g_60;
    int8_t g_73;
    int32_t g_76;
    int32_t * volatile g_75;
    volatile int16_t g_85[4];
    volatile int16_t g_88;
    volatile uint16_t g_89;
    int64_t g_93;
    int32_t ** volatile g_113;
    int32_t *g_115;
    int32_t ** volatile g_114;
    int32_t ** volatile g_118;
    uint16_t g_142;
    uint16_t *g_141;
    int32_t g_144;
    int32_t * volatile g_145;
    uint32_t g_186;
    uint8_t g_188;
    int64_t g_192;
    int32_t g_196[7][2];
    int16_t g_197;
    union U1 g_225[2][2];
    int8_t g_226;
    uint64_t g_228;
    volatile uint32_t g_248;
    int64_t *g_285;
    int64_t * volatile *g_284[3];
    uint32_t g_304[3][5];
    int16_t g_331;
    volatile int64_t g_332;
    volatile uint32_t g_333;
    union U2 g_336;
    uint8_t g_338;
    uint64_t *g_365;
    int32_t ** volatile g_377;
    int16_t *** volatile g_385;
    int16_t **g_387;
    int16_t *** volatile g_386;
    uint16_t **g_420;
    uint16_t ***g_419[3][6][7];
    int8_t g_426;
    int64_t *g_433;
    int64_t **g_432;
    volatile int64_t g_441[9];
    volatile int32_t g_443;
    volatile int64_t g_444;
    volatile uint64_t g_445;
    int32_t ** volatile g_455;
    uint16_t g_494;
    uint8_t g_502;
    volatile union U0 g_504;
    int32_t *g_516[4][4];
    int32_t **g_515[4][3][8];
    int64_t *** volatile g_535;
    union U1 *g_564[3];
    union U1 ** volatile g_563;
    int32_t * volatile g_579;
    int64_t g_581;
    int8_t *g_585;
    int8_t **g_584;
    union U1 g_599;
    int16_t g_604[7][1][5];
    volatile uint16_t g_616;
    int32_t ** volatile g_619;
    uint32_t * volatile * volatile g_620;
    volatile union U1 g_675;
    int32_t * volatile g_676;
    volatile union U1 g_723;
    volatile union U1 g_737;
    int32_t g_747;
    int32_t ** volatile g_748;
    volatile int64_t g_767;
    volatile uint64_t g_768;
    volatile int32_t * volatile g_773[4];
    int32_t ** volatile g_797;
    union U0 g_813;
    int64_t *g_825;
    uint64_t **g_886;
    int16_t ***g_932;
    int16_t ***g_933;
    volatile union U1 g_962;
    volatile int32_t g_966;
    int32_t ** volatile g_968;
    union U1 g_992;
    uint64_t g_1049;
    volatile int32_t g_1061[2];
    uint32_t * volatile *g_1111;
    volatile union U1 g_1175;
    volatile union U0 *g_1195;
    uint32_t *g_1217;
    uint32_t g_1258[8][2];
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
int16_t  func_1(struct S3 * p_1299);
int32_t  func_13(int32_t  p_14, uint64_t  p_15, uint32_t  p_16, int32_t * p_17, int64_t  p_18, struct S3 * p_1299);
int32_t * func_37(int32_t * p_38, struct S3 * p_1299);
uint8_t  func_41(uint32_t  p_42, union U2  p_43, uint16_t  p_44, int64_t  p_45, int8_t * p_46, struct S3 * p_1299);
uint32_t  func_55(int8_t * p_56, uint64_t  p_57, uint16_t * p_58, struct S3 * p_1299);
int8_t  func_69(int16_t  p_70, struct S3 * p_1299);
int64_t ** func_94(uint32_t  p_95, uint32_t  p_96, int8_t * p_97, struct S3 * p_1299);
int8_t * func_99(int32_t * p_100, int32_t  p_101, union U2  p_102, int64_t * p_103, struct S3 * p_1299);
int32_t * func_104(uint64_t  p_105, int64_t * p_106, int32_t * p_107, int32_t  p_108, int8_t * p_109, struct S3 * p_1299);
int64_t * func_110(int64_t ** p_111, struct S3 * p_1299);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1299->g_3 p_1299->g_35 p_1299->g_748 p_1299->g_115 p_1299->g_114 p_1299->g_76 p_1299->g_377 p_1299->g_619 p_1299->g_579 p_1299->g_20 p_1299->g_196 p_1299->g_142 p_1299->g_504.f0 p_1299->g_1049 p_1299->g_49 p_1299->g_365 p_1299->g_144 p_1299->g_141 p_1299->g_1061 p_1299->g_585 p_1299->g_93 p_1299->g_420 p_1299->g_813 p_1299->g_563 p_1299->g_564 p_1299->g_225 p_1299->g_426 p_1299->g_186 p_1299->g_33 p_1299->g_1111 p_1299->g_338 p_1299->g_432 p_1299->g_433 p_1299->g_192 p_1299->g_604 p_1299->g_333 p_1299->g_248 p_1299->g_584 p_1299->g_197 p_1299->g_188 p_1299->g_89 p_1299->g_441 p_1299->g_502 p_1299->g_75 p_1299->g_966 p_1299->g_1175 p_1299->g_336 p_1299->g_304 p_1299->g_455 p_1299->g_581 p_1299->g_85 p_1299->g_747 p_1299->g_331 p_1299->g_1258 p_1299->g_1217 p_1299->g_676
 * writes: p_1299->g_3 p_1299->g_20 p_1299->g_33 p_1299->g_35 p_1299->g_115 p_1299->g_76 p_1299->g_144 p_1299->g_1049 p_1299->g_331 p_1299->g_188 p_1299->g_49 p_1299->g_304 p_1299->g_142 p_1299->g_581 p_1299->g_1195 p_1299->g_1217 p_1299->g_564 p_1299->g_1258 p_1299->g_192 p_1299->g_604
 */
int16_t  func_1(struct S3 * p_1299)
{ /* block id: 4 */
    int32_t *l_2 = &p_1299->g_3;
    int32_t *l_4 = (void*)0;
    int32_t *l_5 = (void*)0;
    int32_t *l_6 = &p_1299->g_3;
    int32_t *l_7[5][5][9] = {{{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3}},{{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3}},{{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3}},{{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3}},{{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3},{(void*)0,(void*)0,(void*)0,&p_1299->g_3,(void*)0,&p_1299->g_3,&p_1299->g_3,(void*)0,&p_1299->g_3}}};
    uint32_t l_8[1];
    uint32_t l_1028[4] = {0x17D8976BL,0x17D8976BL,0x17D8976BL,0x17D8976BL};
    int32_t l_1052 = 0L;
    uint32_t l_1063 = 0x8BB3D74EL;
    uint8_t l_1067[4][2][6] = {{{0UL,0x4DL,1UL,0UL,0x4DL,0UL},{0UL,0x4DL,1UL,0UL,0x4DL,0UL}},{{0UL,0x4DL,1UL,0UL,0x4DL,0UL},{0UL,0x4DL,1UL,0UL,0x4DL,0UL}},{{0UL,0x4DL,1UL,0UL,0x4DL,0UL},{0UL,0x4DL,1UL,0UL,0x4DL,0UL}},{{0UL,0x4DL,1UL,0UL,0x4DL,0UL},{0UL,0x4DL,1UL,0UL,0x4DL,0UL}}};
    uint32_t *l_1100 = &p_1299->g_304[0][0];
    uint32_t **l_1099 = &l_1100;
    int64_t l_1109 = 0L;
    uint64_t *l_1110 = &p_1299->g_228;
    int8_t l_1114[4] = {0x53L,0x53L,0x53L,0x53L};
    uint32_t l_1124 = 0UL;
    int16_t ****l_1174 = &p_1299->g_932;
    int64_t **l_1176 = (void*)0;
    union U2 *l_1177[2];
    int32_t l_1219[2];
    int32_t l_1271 = (-1L);
    int16_t l_1277 = (-5L);
    int32_t l_1297[9];
    int64_t l_1298 = 0x4386DAA6B7F74965L;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_8[i] = 4294967295UL;
    for (i = 0; i < 2; i++)
        l_1177[i] = (void*)0;
    for (i = 0; i < 2; i++)
        l_1219[i] = 1L;
    for (i = 0; i < 9; i++)
        l_1297[i] = 1L;
lbl_1116:
    ++l_8[0];
    for (p_1299->g_3 = 0; (p_1299->g_3 == 22); p_1299->g_3++)
    { /* block id: 8 */
        int32_t *l_19 = &p_1299->g_20;
        int32_t l_29[1];
        int64_t *l_32 = &p_1299->g_33;
        int8_t *l_34 = &p_1299->g_35[0];
        int8_t l_36[9] = {0x1DL,0x30L,0x1DL,0x1DL,0x30L,0x1DL,0x1DL,0x30L,0x1DL};
        uint64_t **l_1031 = &p_1299->g_365;
        int64_t l_1074 = 5L;
        uint64_t l_1090[7][3] = {{1UL,1UL,1UL},{1UL,1UL,1UL},{1UL,1UL,1UL},{1UL,1UL,1UL},{1UL,1UL,1UL},{1UL,1UL,1UL},{1UL,1UL,1UL}};
        int32_t **l_1157 = &l_7[1][4][2];
        int64_t *l_1178 = &p_1299->g_93;
        int64_t l_1189 = (-1L);
        int64_t l_1252 = 0x5B2ECD615FDA12C2L;
        int32_t l_1257 = 1L;
        uint16_t ****l_1280 = (void*)0;
        uint16_t *****l_1281 = &l_1280;
        int32_t l_1290 = (-7L);
        int i, j;
        for (i = 0; i < 1; i++)
            l_29[i] = 1L;
        if (func_13(((*l_19) = p_1299->g_3), ((-4L) > 0x095DL), ((p_1299->g_3 && (safe_sub_func_uint64_t_u_u(((safe_div_func_int8_t_s_s((safe_rshift_func_int16_t_s_u((*l_6), 1)), (((safe_add_func_int8_t_s_s(l_29[0], (0x45L & (safe_add_func_int8_t_s_s((((*l_34) = ((p_1299->g_3 & ((*l_32) = ((0x4A603D2CL || 4294967295UL) <= p_1299->g_3))) > p_1299->g_3)) != l_29[0]), l_29[0]))))) || l_29[0]) , p_1299->g_35[0]))) , GROUP_DIVERGE(1, 1)), (*l_6)))) != l_29[0]), &p_1299->g_3, l_36[6], p_1299))
        { /* block id: 491 */
            int32_t l_1026 = 0x3E159386L;
            int32_t l_1027[5][2] = {{(-8L),(-8L)},{(-8L),(-8L)},{(-8L),(-8L)},{(-8L),(-8L)},{(-8L),(-8L)}};
            union U2 l_1057 = {0};
            uint64_t **l_1058 = (void*)0;
            int32_t l_1062[10][5] = {{0x322EF65EL,1L,0x435B9F3CL,0x322EF65EL,(-7L)},{0x322EF65EL,1L,0x435B9F3CL,0x322EF65EL,(-7L)},{0x322EF65EL,1L,0x435B9F3CL,0x322EF65EL,(-7L)},{0x322EF65EL,1L,0x435B9F3CL,0x322EF65EL,(-7L)},{0x322EF65EL,1L,0x435B9F3CL,0x322EF65EL,(-7L)},{0x322EF65EL,1L,0x435B9F3CL,0x322EF65EL,(-7L)},{0x322EF65EL,1L,0x435B9F3CL,0x322EF65EL,(-7L)},{0x322EF65EL,1L,0x435B9F3CL,0x322EF65EL,(-7L)},{0x322EF65EL,1L,0x435B9F3CL,0x322EF65EL,(-7L)},{0x322EF65EL,1L,0x435B9F3CL,0x322EF65EL,(-7L)}};
            uint64_t l_1113 = 0x624CFCDF04820617L;
            int i, j;
            l_1028[0]--;
            if (((**p_1299->g_377) = ((l_1031 == &p_1299->g_365) | (*l_6))))
            { /* block id: 494 */
                uint32_t *l_1034 = (void*)0;
                uint32_t *l_1035 = &l_8[0];
                int32_t l_1045 = 0x73EC6722L;
                uint64_t *l_1048 = &p_1299->g_1049;
                (*p_1299->g_579) = ((**p_1299->g_619) ^= (safe_sub_func_uint32_t_u_u((--(*l_1035)), (-10L))));
                l_29[0] |= ((safe_lshift_func_uint16_t_u_u(0UL, ((safe_unary_minus_func_uint32_t_u((p_1299->g_20 ^ p_1299->g_196[2][0]))) || ((void*)0 != &p_1299->g_285)))) != ((4294967295UL > p_1299->g_142) == 5UL));
                p_1299->g_144 ^= ((((((*l_34) = (((safe_add_func_uint8_t_u_u(p_1299->g_504.f0, p_1299->g_196[1][0])) && (~((l_1045 || (((((*l_1048)++) > ((((p_1299->g_49[2] | l_1052) < ((safe_rshift_func_uint8_t_u_s((safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1299->local_2_offset, get_local_id(2), 10), 0UL)), 6)) , ((l_1057 , ((void*)0 != (*l_1031))) >= (*p_1299->g_115)))) , &p_1299->g_365) == l_1058)) != 251UL) > (-8L))) & l_1045))) > 18446744073709551611UL)) < l_1045) >= l_1045) == FAKE_DIVERGE(p_1299->local_2_offset, get_local_id(2), 10)) == (*p_1299->g_115));
            }
            else
            { /* block id: 502 */
                int32_t l_1079 = 0x50783D5CL;
                int32_t l_1112 = 0x7C591944L;
                uint32_t l_1115 = 0x4ECF9CCBL;
                for (p_1299->g_331 = (-20); (p_1299->g_331 <= (-23)); p_1299->g_331 = safe_sub_func_int32_t_s_s(p_1299->g_331, 6))
                { /* block id: 505 */
                    int8_t l_1066 = 8L;
                    uint8_t *l_1084 = &l_1067[0][1][0];
                    uint64_t *l_1085 = (void*)0;
                    l_1063++;
                    --l_1067[3][1][4];
                    (*p_1299->g_115) ^= ((safe_sub_func_int8_t_s_s((*l_6), ((0x10565111L | (((safe_sub_func_uint16_t_u_u(l_1074, ((FAKE_DIVERGE(p_1299->global_1_offset, get_global_id(1), 10) && (~(FAKE_DIVERGE(p_1299->group_0_offset, get_group_id(0), 10) <= ((safe_rshift_func_uint16_t_u_u((*p_1299->g_141), l_29[0])) || (((((safe_add_func_uint64_t_u_u(l_1079, (p_1299->g_1049 &= (((*l_1084) = (safe_mod_func_int16_t_s_s((1L & p_1299->g_1061[0]), (safe_sub_func_int16_t_s_s(((+(((GROUP_DIVERGE(0, 1) <= (((4294967295UL ^ l_1026) < 1UL) && 0xD1L)) | 0x79F56C942EE6D9D0L) == (*p_1299->g_585))) != 0UL), l_1062[1][4]))))) ^ (-3L))))) >= p_1299->g_93) > l_1027[2][1]) == l_1079) ^ l_1079))))) || l_1079))) & (*l_6)) >= 65527UL)) > (-1L)))) <= 0UL);
                }
                (*p_1299->g_115) &= (safe_rshift_func_int16_t_s_s(((safe_lshift_func_int8_t_s_u(((**p_1299->g_584) = ((**p_1299->g_420) | (p_1299->g_813 , (((((l_1090[6][2] , 0x8D973613BCF6FAA1L) < (safe_div_func_int8_t_s_s((((safe_div_func_uint64_t_u_u((safe_add_func_uint8_t_u_u(254UL, ((((((safe_mod_func_int64_t_s_s((((**p_1299->g_563) , l_1099) == ((safe_mod_func_uint64_t_u_u((l_1079 = (safe_add_func_int32_t_s_s((safe_div_func_int64_t_s_s((safe_mod_func_uint16_t_u_u(l_1109, ((((l_1110 == (void*)0) < p_1299->g_426) == p_1299->g_186) & 0x02C733EA963D6707L))), GROUP_DIVERGE(1, 1))), p_1299->g_33))), 0x8EACB1027ADFBBE1L)) , p_1299->g_1111)), l_1112)) > p_1299->g_338) != l_1027[2][1]) , p_1299->g_142) | (**p_1299->g_432)) <= p_1299->g_604[1][0][2]))), (*l_2))) , p_1299->g_333) || p_1299->g_248), l_1113))) >= (-1L)) | FAKE_DIVERGE(p_1299->group_1_offset, get_group_id(1), 10)) & l_1114[3])))), p_1299->g_197)) > l_1115), l_1027[0][0]));
                if (p_1299->g_426)
                    goto lbl_1116;
            }
        }
        else
        { /* block id: 517 */
            int8_t l_1117[10] = {4L,0x7AL,0x20L,0x7AL,4L,4L,0x7AL,0x20L,0x7AL,4L};
            int32_t l_1118 = 0L;
            int64_t l_1119 = (-6L);
            int32_t l_1120 = 0x481E3320L;
            uint32_t l_1121[4][2][6] = {{{4294967295UL,0x7B2B77C1L,0x3037E761L,0x7B2B77C1L,4294967295UL,4294967295UL},{4294967295UL,0x7B2B77C1L,0x3037E761L,0x7B2B77C1L,4294967295UL,4294967295UL}},{{4294967295UL,0x7B2B77C1L,0x3037E761L,0x7B2B77C1L,4294967295UL,4294967295UL},{4294967295UL,0x7B2B77C1L,0x3037E761L,0x7B2B77C1L,4294967295UL,4294967295UL}},{{4294967295UL,0x7B2B77C1L,0x3037E761L,0x7B2B77C1L,4294967295UL,4294967295UL},{4294967295UL,0x7B2B77C1L,0x3037E761L,0x7B2B77C1L,4294967295UL,4294967295UL}},{{4294967295UL,0x7B2B77C1L,0x3037E761L,0x7B2B77C1L,4294967295UL,4294967295UL},{4294967295UL,0x7B2B77C1L,0x3037E761L,0x7B2B77C1L,4294967295UL,4294967295UL}}};
            int32_t **l_1148 = &p_1299->g_516[1][3];
            int64_t l_1149 = 0x4E0E193BF21756A3L;
            uint32_t l_1170[6][2][9] = {{{0xD3E651C0L,0x56AC5B94L,1UL,4294967289UL,0xD5F8F15DL,0UL,2UL,0xDE368EF8L,0x59A1836DL},{0xD3E651C0L,0x56AC5B94L,1UL,4294967289UL,0xD5F8F15DL,0UL,2UL,0xDE368EF8L,0x59A1836DL}},{{0xD3E651C0L,0x56AC5B94L,1UL,4294967289UL,0xD5F8F15DL,0UL,2UL,0xDE368EF8L,0x59A1836DL},{0xD3E651C0L,0x56AC5B94L,1UL,4294967289UL,0xD5F8F15DL,0UL,2UL,0xDE368EF8L,0x59A1836DL}},{{0xD3E651C0L,0x56AC5B94L,1UL,4294967289UL,0xD5F8F15DL,0UL,2UL,0xDE368EF8L,0x59A1836DL},{0xD3E651C0L,0x56AC5B94L,1UL,4294967289UL,0xD5F8F15DL,0UL,2UL,0xDE368EF8L,0x59A1836DL}},{{0xD3E651C0L,0x56AC5B94L,1UL,4294967289UL,0xD5F8F15DL,0UL,2UL,0xDE368EF8L,0x59A1836DL},{0xD3E651C0L,0x56AC5B94L,1UL,4294967289UL,0xD5F8F15DL,0UL,2UL,0xDE368EF8L,0x59A1836DL}},{{0xD3E651C0L,0x56AC5B94L,1UL,4294967289UL,0xD5F8F15DL,0UL,2UL,0xDE368EF8L,0x59A1836DL},{0xD3E651C0L,0x56AC5B94L,1UL,4294967289UL,0xD5F8F15DL,0UL,2UL,0xDE368EF8L,0x59A1836DL}},{{0xD3E651C0L,0x56AC5B94L,1UL,4294967289UL,0xD5F8F15DL,0UL,2UL,0xDE368EF8L,0x59A1836DL},{0xD3E651C0L,0x56AC5B94L,1UL,4294967289UL,0xD5F8F15DL,0UL,2UL,0xDE368EF8L,0x59A1836DL}}};
            int i, j, k;
            l_1121[2][1][5]++;
            if ((l_36[4] && l_1124))
            { /* block id: 519 */
                uint8_t *l_1127 = &p_1299->g_188;
                int32_t l_1134 = 0x07D67B7EL;
                uint8_t l_1139 = 0x63L;
                l_1120 |= (((safe_sub_func_uint32_t_u_u((((0x05FB4953016450A1L && ((((void*)0 == &p_1299->g_285) >= ((*l_1127)--)) < (l_1119 != (((safe_lshift_func_int8_t_s_u((0x33EEEB9D77789404L & ((safe_sub_func_int32_t_s_s((249UL ^ ((l_1134 && ((safe_mod_func_int8_t_s_s(((safe_div_func_int16_t_s_s(l_1139, (safe_add_func_uint32_t_u_u((safe_div_func_uint32_t_u_u(((safe_add_func_int8_t_s_s((((l_1148 == (void*)0) > 0UL) & l_29[0]), (**p_1299->g_584))) ^ l_1117[5]), FAKE_DIVERGE(p_1299->group_0_offset, get_group_id(0), 10))), l_1117[5])))) ^ l_1139), l_1117[4])) | p_1299->g_192)) & l_1134)), 0xE1D0E680L)) == l_1090[5][1])), p_1299->g_89)) ^ 0x4973C498L) >= (*p_1299->g_115))))) >= 0x3E99L) <= l_1149), (*p_1299->g_115))) ^ l_36[6]) <= (*p_1299->g_115));
            }
            else
            { /* block id: 522 */
                int8_t l_1171 = (-1L);
                for (l_1109 = 8; (l_1109 >= 3); l_1109 -= 1)
                { /* block id: 525 */
                    uint32_t l_1150[2][9][7] = {{{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL}},{{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL},{4294967289UL,0x1ABDF72CL,0x2D755C1FL,0UL,0x2D755C1FL,0x1ABDF72CL,4294967289UL}}};
                    uint16_t *l_1172 = &p_1299->g_49[2];
                    int32_t *l_1173 = &l_29[0];
                    int i, j, k;
                    for (p_1299->g_20 = 3; (p_1299->g_20 >= 0); p_1299->g_20 -= 1)
                    { /* block id: 528 */
                        int i;
                        ++l_1150[1][1][3];
                        if (p_1299->g_441[l_1109])
                            break;
                        return l_1114[p_1299->g_20];
                    }
                    (*l_1157) = (((safe_add_func_int16_t_s_s(p_1299->g_441[l_1109], ((p_1299->g_604[4][0][1] > ((((((l_1090[4][0] | (((safe_mul_func_int16_t_s_s((FAKE_DIVERGE(p_1299->global_1_offset, get_global_id(1), 10) & (0x9C97L || (*p_1299->g_141))), ((*l_1172) = ((l_1157 == &p_1299->g_115) ^ (safe_rshift_func_uint16_t_u_s((FAKE_DIVERGE(p_1299->global_2_offset, get_global_id(2), 10) ^ (safe_rshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((safe_mul_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s(((void*)0 != &p_1299->g_387), 5)), 65533UL)) <= (*p_1299->g_115)), (**p_1299->g_584))) > p_1299->g_192), l_1170[0][1][8])), 5))), l_1171)))))) == 0L) || l_1171)) <= (*l_2)) & l_1150[1][1][3]) != l_1171) || 1UL) & p_1299->g_502)) , 0x4ABCL))) & 0x54L) , l_1173);
                }
            }
            if ((*p_1299->g_75))
            { /* block id: 537 */
                return (*l_6);
            }
            else
            { /* block id: 539 */
                l_1120 = (((void*)0 == l_1174) <= (p_1299->g_966 && (-10L)));
            }
        }
        if (((p_1299->g_1175 , (((l_1176 == l_1176) | (&p_1299->g_75 == (p_1299->g_336 , &p_1299->g_579))) , l_1177[1])) != (((((void*)0 != l_1178) , l_36[6]) ^ GROUP_DIVERGE(0, 1)) , (void*)0)))
        { /* block id: 543 */
            int64_t l_1190 = 8L;
            int32_t l_1194 = (-4L);
            int32_t l_1227 = 0x3E8F9707L;
            uint16_t l_1233 = 0x8E55L;
            for (p_1299->g_144 = 4; (p_1299->g_144 >= 0); p_1299->g_144 -= 1)
            { /* block id: 546 */
                uint16_t l_1191 = 0x164DL;
                uint8_t *l_1192 = &l_1067[3][1][4];
                uint8_t *l_1193[6] = {&p_1299->g_502,&p_1299->g_502,&p_1299->g_502,&p_1299->g_502,&p_1299->g_502,&p_1299->g_502};
                int32_t l_1230 = (-1L);
                int32_t l_1265 = 0L;
                int i;
                if (((*p_1299->g_563) == ((safe_mul_func_int64_t_s_s(((p_1299->g_336 , ((*l_1100)++)) , (p_1299->g_144 && (safe_lshift_func_int8_t_s_u((0x63BCL > (safe_lshift_func_int8_t_s_s(0x00L, (GROUP_DIVERGE(2, 1) > (safe_add_func_int32_t_s_s((l_1189 & 0x1DL), FAKE_DIVERGE(p_1299->global_1_offset, get_global_id(1), 10))))))), 1)))), ((!(l_1194 = ((*l_1192) &= ((((*p_1299->g_141) = l_1190) && ((l_1190 == l_1190) && l_1191)) >= p_1299->g_604[1][0][2])))) == 0x02L))) , (void*)0)))
                { /* block id: 551 */
                    uint8_t l_1218 = 3UL;
                    int32_t l_1226[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1226[i] = 0x05605351L;
                    if (l_1191)
                        break;
                    (*l_1157) = (*p_1299->g_377);
                    for (p_1299->g_581 = 3; (p_1299->g_581 >= 0); p_1299->g_581 -= 1)
                    { /* block id: 556 */
                        int32_t l_1220 = 1L;
                        int32_t l_1223 = 0L;
                        int i;
                        (**p_1299->g_455) = ((void*)0 != &p_1299->g_886);
                        p_1299->g_1195 = &p_1299->g_504;
                        l_1220 = (FAKE_DIVERGE(p_1299->group_2_offset, get_group_id(2), 10) >= (l_1028[p_1299->g_581] <= (safe_mod_func_int32_t_s_s(((safe_div_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(l_1028[p_1299->g_581], (p_1299->g_85[2] < ((((*l_34) = ((((((safe_sub_func_uint64_t_u_u(((((-8L) | p_1299->g_33) < (((((((((((safe_add_func_uint64_t_u_u((safe_sub_func_int8_t_s_s((**p_1299->g_584), (safe_mod_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s(((((safe_mul_func_uint8_t_u_u(((*l_1192)++), (safe_unary_minus_func_int32_t_s(0x589F91E0L)))) >= (((p_1299->g_1217 = &p_1299->g_304[0][0]) != ((*l_1099) = l_19)) != p_1299->g_142)) != 1L) , (**p_1299->g_420)), l_1194)), 6L)))), (**p_1299->g_432))) < (*p_1299->g_141)) , 1UL) > 0UL) | p_1299->g_747) > p_1299->g_49[2]) > 0xD00F7071BE653E23L) == (*p_1299->g_433)) , &p_1299->g_186) != (void*)0) || (**p_1299->g_584))) > l_1218), l_1028[p_1299->g_581])) , l_1218) | (**p_1299->g_584)) ^ l_1191) >= p_1299->g_142) > p_1299->g_331)) ^ l_1191) ^ l_1194)))), p_1299->g_76)) || l_1219[1]), 0x0C82860CL))));
                        (**p_1299->g_377) &= (safe_sub_func_uint8_t_u_u(p_1299->g_35[5], (l_1223 & (safe_sub_func_int8_t_s_s(0x47L, (l_19 == (void*)0))))));
                    }
                    for (p_1299->g_188 = 0; (p_1299->g_188 <= 4); p_1299->g_188 += 1)
                    { /* block id: 568 */
                        int32_t l_1228 = 2L;
                        int64_t l_1229 = 0x30A3159B36B554D2L;
                        int32_t l_1231 = (-1L);
                        int32_t l_1232 = 0L;
                        union U1 **l_1236[10] = {&p_1299->g_564[2],&p_1299->g_564[2],&p_1299->g_564[2],&p_1299->g_564[2],&p_1299->g_564[2],&p_1299->g_564[2],&p_1299->g_564[2],&p_1299->g_564[2],&p_1299->g_564[2],&p_1299->g_564[2]};
                        int i, j, k;
                        l_1233--;
                        (*p_1299->g_563) = (*p_1299->g_563);
                    }
                }
                else
                { /* block id: 572 */
                    uint8_t l_1244 = 0x1FL;
                    int32_t l_1245 = (-4L);
                    uint32_t *l_1253 = (void*)0;
                    uint32_t *l_1254 = &l_1124;
                    uint16_t *l_1255 = (void*)0;
                    uint16_t *l_1256 = &l_1191;
                    p_1299->g_1258[5][0] ^= ((safe_unary_minus_func_int8_t_s(((*p_1299->g_585) = (safe_rshift_func_uint8_t_u_u((((*l_1256) = ((**p_1299->g_420) = ((0x0E456FCAL | ((*l_1254) = (safe_rshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_s(0xEA50L, ((l_1245 &= (l_1244 , (**p_1299->g_420))) >= ((safe_sub_func_uint8_t_u_u(p_1299->g_85[2], (p_1299->g_33 & ((*l_1192)++)))) == ((**p_1299->g_420) || (l_1252 = ((safe_lshift_func_int16_t_s_u(l_1074, l_1191)) == (*p_1299->g_115)))))))), p_1299->g_186)))) && 18446744073709551615UL))) <= l_1257), l_1244))))) , (**p_1299->g_114));
                    for (p_1299->g_192 = 3; (p_1299->g_192 >= 0); p_1299->g_192 -= 1)
                    { /* block id: 583 */
                        uint16_t l_1259 = 0xF2A8L;
                        --l_1259;
                        if (l_1194)
                            continue;
                    }
                    (*p_1299->g_115) |= ((l_1230 == 0x2AEAL) , (safe_mod_func_int64_t_s_s((safe_unary_minus_func_uint32_t_u(0UL)), l_1265)));
                    (*l_1157) = &l_1230;
                }
            }
            (*p_1299->g_115) = l_1190;
        }
        else
        { /* block id: 592 */
            int8_t l_1266[2];
            int16_t *l_1276 = &p_1299->g_604[1][0][2];
            int i;
            for (i = 0; i < 2; i++)
                l_1266[i] = (-10L);
            l_1266[0] ^= (**p_1299->g_114);
            (*p_1299->g_115) = ((((*l_1276) = (((safe_mul_func_int16_t_s_s(((((safe_mul_func_uint8_t_u_u(p_1299->g_966, ((l_4 == &p_1299->g_747) , l_1271))) , (l_1266[0] & (0x78A8L > ((*p_1299->g_1217) , (safe_rshift_func_uint16_t_u_s((safe_sub_func_int8_t_s_s(((void*)0 == l_1276), l_1277)), 0)))))) && l_1266[1]) ^ l_1266[0]), 1L)) ^ (*p_1299->g_115)) | (*p_1299->g_115))) & 65535UL) && (*p_1299->g_676));
        }
        (*p_1299->g_115) = (((*p_1299->g_141) || (safe_mod_func_uint16_t_u_u(((**p_1299->g_420) |= (((*l_6) > (p_1299->g_1049 , ((((&p_1299->g_419[2][3][0] != ((*l_1281) = l_1280)) < (safe_rshift_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_s(((safe_mod_func_int32_t_s_s((**p_1299->g_377), (safe_add_func_uint64_t_u_u((l_1290 > (0x74L < (safe_rshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), (((safe_rshift_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s(l_29[0], l_1297[5])), 2)) <= p_1299->g_581) , l_1298))))), 0x2D3438ACE9D74983L)))) == 0x233BD535L), 14)) || 5L), p_1299->g_604[1][0][2]))) <= l_36[1]) ^ 252UL))) >= (*p_1299->g_115))), (*l_6)))) != p_1299->g_426);
    }
    return (*l_2);
}


/* ------------------------------------------ */
/* 
 * reads : p_1299->g_20 p_1299->g_748 p_1299->g_115 p_1299->g_114 p_1299->g_76
 * writes: p_1299->g_20 p_1299->g_115
 */
int32_t  func_13(int32_t  p_14, uint64_t  p_15, uint32_t  p_16, int32_t * p_17, int64_t  p_18, struct S3 * p_1299)
{ /* block id: 12 */
    int32_t **l_1025 = &p_1299->g_115;
    (*l_1025) = func_37(p_17, p_1299);
    return (**p_1299->g_114);
}


/* ------------------------------------------ */
/* 
 * reads : p_1299->g_20 p_1299->g_748 p_1299->g_115
 * writes: p_1299->g_20
 */
int32_t * func_37(int32_t * p_38, struct S3 * p_1299)
{ /* block id: 13 */
    int16_t l_50 = 0x6D29L;
    int8_t *l_59[7];
    int64_t l_74 = 4L;
    int32_t l_544 = 0x2D9D3F4BL;
    union U2 l_575[1][3][9] = {{{{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0}}}};
    int32_t *l_591 = (void*)0;
    uint16_t **l_603 = &p_1299->g_141;
    int32_t l_607 = 0x479237FCL;
    int32_t l_610[4][3][10] = {{{0x06DFDF2AL,1L,0x55AA177DL,0x55AA177DL,1L,0x06DFDF2AL,0x14BD5333L,0x3E06C11BL,5L,0x4F731C42L},{0x06DFDF2AL,1L,0x55AA177DL,0x55AA177DL,1L,0x06DFDF2AL,0x14BD5333L,0x3E06C11BL,5L,0x4F731C42L},{0x06DFDF2AL,1L,0x55AA177DL,0x55AA177DL,1L,0x06DFDF2AL,0x14BD5333L,0x3E06C11BL,5L,0x4F731C42L}},{{0x06DFDF2AL,1L,0x55AA177DL,0x55AA177DL,1L,0x06DFDF2AL,0x14BD5333L,0x3E06C11BL,5L,0x4F731C42L},{0x06DFDF2AL,1L,0x55AA177DL,0x55AA177DL,1L,0x06DFDF2AL,0x14BD5333L,0x3E06C11BL,5L,0x4F731C42L},{0x06DFDF2AL,1L,0x55AA177DL,0x55AA177DL,1L,0x06DFDF2AL,0x14BD5333L,0x3E06C11BL,5L,0x4F731C42L}},{{0x06DFDF2AL,1L,0x55AA177DL,0x55AA177DL,1L,0x06DFDF2AL,0x14BD5333L,0x3E06C11BL,5L,0x4F731C42L},{0x06DFDF2AL,1L,0x55AA177DL,0x55AA177DL,1L,0x06DFDF2AL,0x14BD5333L,0x3E06C11BL,5L,0x4F731C42L},{0x06DFDF2AL,1L,0x55AA177DL,0x55AA177DL,1L,0x06DFDF2AL,0x14BD5333L,0x3E06C11BL,5L,0x4F731C42L}},{{0x06DFDF2AL,1L,0x55AA177DL,0x55AA177DL,1L,0x06DFDF2AL,0x14BD5333L,0x3E06C11BL,5L,0x4F731C42L},{0x06DFDF2AL,1L,0x55AA177DL,0x55AA177DL,1L,0x06DFDF2AL,0x14BD5333L,0x3E06C11BL,5L,0x4F731C42L},{0x06DFDF2AL,1L,0x55AA177DL,0x55AA177DL,1L,0x06DFDF2AL,0x14BD5333L,0x3E06C11BL,5L,0x4F731C42L}}};
    int16_t ***l_650 = &p_1299->g_387;
    uint8_t l_703 = 0xACL;
    int32_t l_729 = 0L;
    uint32_t l_730[4] = {9UL,9UL,9UL,9UL};
    union U2 *l_802 = (void*)0;
    int32_t l_849[3];
    int32_t l_912 = 0x2CCE7804L;
    int32_t l_913 = 0x347E8CA2L;
    uint32_t l_921[3];
    uint32_t l_987 = 1UL;
    int32_t *l_1020[4][9][3] = {{{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0}},{{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0}},{{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0}},{{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0},{&p_1299->g_144,&p_1299->g_144,(void*)0}}};
    int16_t l_1021 = 0L;
    uint8_t l_1022 = 253UL;
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_59[i] = &p_1299->g_35[0];
    for (i = 0; i < 3; i++)
        l_849[i] = 0x1B14C669L;
    for (i = 0; i < 3; i++)
        l_921[i] = 4294967294UL;
    for (p_1299->g_20 = (-5); (p_1299->g_20 != 21); ++p_1299->g_20)
    { /* block id: 16 */
        union U2 l_47 = {0};
        uint16_t *l_48[5][1] = {{&p_1299->g_49[2]},{&p_1299->g_49[2]},{&p_1299->g_49[2]},{&p_1299->g_49[2]},{&p_1299->g_49[2]}};
        int32_t l_71 = (-1L);
        int64_t *l_92[10] = {&p_1299->g_93,&p_1299->g_93,&p_1299->g_93,&p_1299->g_93,&p_1299->g_93,&p_1299->g_93,&p_1299->g_93,&p_1299->g_93,&p_1299->g_93,&p_1299->g_93};
        int32_t l_538 = 0x5D7A8A2FL;
        int8_t *l_551 = &p_1299->g_35[3];
        int32_t l_611 = 0x1CE60CD5L;
        int32_t l_613 = (-1L);
        int32_t l_614 = 7L;
        int16_t l_690[7][10][3] = {{{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)}},{{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)}},{{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)}},{{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)}},{{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)}},{{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)}},{{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)},{0L,(-8L),(-1L)}}};
        int8_t l_738 = (-7L);
        int32_t *l_772 = &l_610[2][1][7];
        uint16_t l_865 = 0x3A1AL;
        uint64_t **l_885 = (void*)0;
        uint16_t l_903 = 0xB628L;
        uint32_t l_947 = 4294967295UL;
        int32_t l_980 = 1L;
        int32_t l_981 = 0x6793F43DL;
        int32_t l_983 = 6L;
        int32_t l_984 = 0x742FCF4DL;
        int32_t l_985 = 0x7D82A789L;
        int32_t l_986[8][6] = {{0x3C035402L,0x66B879ECL,0x7FEEE084L,0x50E10CCEL,0x66B879ECL,0x50E10CCEL},{0x3C035402L,0x66B879ECL,0x7FEEE084L,0x50E10CCEL,0x66B879ECL,0x50E10CCEL},{0x3C035402L,0x66B879ECL,0x7FEEE084L,0x50E10CCEL,0x66B879ECL,0x50E10CCEL},{0x3C035402L,0x66B879ECL,0x7FEEE084L,0x50E10CCEL,0x66B879ECL,0x50E10CCEL},{0x3C035402L,0x66B879ECL,0x7FEEE084L,0x50E10CCEL,0x66B879ECL,0x50E10CCEL},{0x3C035402L,0x66B879ECL,0x7FEEE084L,0x50E10CCEL,0x66B879ECL,0x50E10CCEL},{0x3C035402L,0x66B879ECL,0x7FEEE084L,0x50E10CCEL,0x66B879ECL,0x50E10CCEL},{0x3C035402L,0x66B879ECL,0x7FEEE084L,0x50E10CCEL,0x66B879ECL,0x50E10CCEL}};
        uint32_t *l_1011 = &l_987;
        uint32_t *l_1014 = &l_921[0];
        uint8_t *l_1017 = &p_1299->g_338;
        uint8_t *l_1018 = &l_703;
        int32_t *l_1019 = &l_538;
        int i, j, k;
        (1 + 1);
    }
    ++l_1022;
    return (*p_1299->g_748);
}


/* ------------------------------------------ */
/* 
 * reads : p_1299->g_33 p_1299->g_35 p_1299->g_114 p_1299->g_93 p_1299->g_73 p_1299->g_115 p_1299->g_118 p_1299->g_76 p_1299->g_142 p_1299->g_188 p_1299->g_141 p_1299->g_49 p_1299->g_20 p_1299->g_145 p_1299->g_144 p_1299->g_186 p_1299->g_284 p_1299->g_88 p_1299->g_3 p_1299->g_228 p_1299->g_197 p_1299->g_226 p_1299->g_85 p_1299->g_304 p_1299->g_333 p_1299->g_75 p_1299->g_336 p_1299->g_192 p_1299->g_338 p_1299->g_196 p_1299->g_377 p_1299->g_386 p_1299->g_419 p_1299->g_331 p_1299->g_426 p_1299->g_420 p_1299->g_432 p_1299->g_445 p_1299->g_433 p_1299->g_455
 * writes: p_1299->g_33 p_1299->g_115 p_1299->g_93 p_1299->g_73 p_1299->g_76 p_1299->g_142 p_1299->g_188 p_1299->g_49 p_1299->g_186 p_1299->g_304 p_1299->g_228 p_1299->g_197 p_1299->g_333 p_1299->g_338 p_1299->g_331 p_1299->g_365 p_1299->g_336 p_1299->g_144 p_1299->g_387 p_1299->g_419 p_1299->g_445 p_1299->g_432
 */
uint8_t  func_41(uint32_t  p_42, union U2  p_43, uint16_t  p_44, int64_t  p_45, int8_t * p_46, struct S3 * p_1299)
{ /* block id: 35 */
    int8_t l_98 = 0x02L;
    int64_t **l_112 = (void*)0;
    int32_t *l_290 = &p_1299->g_196[2][0];
    uint32_t *l_303 = &p_1299->g_304[0][0];
    union U2 l_344 = {0};
    int64_t ***l_536 = &p_1299->g_432;
    int64_t l_537 = 7L;
    (*l_536) = func_94(p_44, l_98, func_99(func_104(l_98, func_110(l_112, p_1299), l_290, (safe_sub_func_int16_t_s_s((((*l_303) = (((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1299->global_0_offset, get_global_id(0), 10), FAKE_DIVERGE(p_1299->global_0_offset, get_global_id(0), 10))), (((safe_add_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u(((p_1299->g_3 < ((0UL < l_98) ^ p_1299->g_197)) ^ p_1299->g_226), 5)), 0x9B28L)) , 0x253E81AF920992E8L) > 18446744073709551615UL))), p_45)) , l_98) & (-3L))) , (-1L)), l_98)), &l_98, p_1299), p_42, l_344, &p_1299->g_192, p_1299), p_1299);
    return l_537;
}


/* ------------------------------------------ */
/* 
 * reads : p_1299->g_35 p_1299->g_75 p_1299->g_76 p_1299->g_73 p_1299->g_89 p_1299->g_49
 * writes: p_1299->g_76 p_1299->g_33 p_1299->g_49 p_1299->g_73 p_1299->g_60.f1 p_1299->g_89
 */
uint32_t  func_55(int8_t * p_56, uint64_t  p_57, uint16_t * p_58, struct S3 * p_1299)
{ /* block id: 21 */
    int64_t l_79 = 4L;
    int32_t *l_83 = &p_1299->g_76;
    int32_t *l_84 = &p_1299->g_76;
    int32_t *l_86[7] = {&p_1299->g_76,&p_1299->g_76,&p_1299->g_76,&p_1299->g_76,&p_1299->g_76,&p_1299->g_76,&p_1299->g_76};
    int32_t l_87 = 0x69B690C2L;
    int i;
    (*p_1299->g_75) &= p_1299->g_35[2];
    for (p_1299->g_33 = 0; p_1299->g_33 < 3; p_1299->g_33 += 1)
    {
        p_1299->g_49[p_1299->g_33] = 0x5F92L;
    }
    for (p_1299->g_73 = (-26); (p_1299->g_73 > 20); p_1299->g_73++)
    { /* block id: 26 */
        int32_t *l_80 = (void*)0;
        int32_t *l_81 = (void*)0;
        int32_t l_82 = 0x57037A9EL;
        if (l_79)
            break;
        for (p_1299->g_60.f1 = 0; p_1299->g_60.f1 < 3; p_1299->g_60.f1 += 1)
        {
            p_1299->g_49[p_1299->g_60.f1] = 65531UL;
        }
        l_82 = (-9L);
        return l_79;
    }
    ++p_1299->g_89;
    return p_1299->g_49[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_1299->g_73
 * writes: p_1299->g_73
 */
int8_t  func_69(int16_t  p_70, struct S3 * p_1299)
{ /* block id: 18 */
    int32_t *l_72[5];
    int i;
    for (i = 0; i < 5; i++)
        l_72[i] = (void*)0;
    p_1299->g_73 &= 0x5CE94720L;
    return p_70;
}


/* ------------------------------------------ */
/* 
 * reads : p_1299->g_377 p_1299->g_33 p_1299->g_386 p_1299->g_188 p_1299->g_419 p_1299->g_331 p_1299->g_75 p_1299->g_76 p_1299->g_196 p_1299->g_141 p_1299->g_142 p_1299->g_426 p_1299->g_420 p_1299->g_144 p_1299->g_115 p_1299->g_20 p_1299->g_432 p_1299->g_445 p_1299->g_333 p_1299->g_433 p_1299->g_35 p_1299->g_85 p_1299->g_3 p_1299->g_304 p_1299->g_336 p_1299->g_73 p_1299->g_49 p_1299->g_455
 * writes: p_1299->g_115 p_1299->g_33 p_1299->g_144 p_1299->g_387 p_1299->g_419 p_1299->g_188 p_1299->g_142 p_1299->g_338 p_1299->g_445 p_1299->g_228 p_1299->g_197 p_1299->g_333 p_1299->g_186 p_1299->g_76
 */
int64_t ** func_94(uint32_t  p_95, uint32_t  p_96, int8_t * p_97, struct S3 * p_1299)
{ /* block id: 158 */
    int32_t *l_376 = (void*)0;
    int64_t *l_391 = &p_1299->g_33;
    int32_t l_424 = 0x1B41CF9AL;
    int32_t l_425 = 0L;
    int32_t *l_434 = (void*)0;
    int32_t *l_435 = &p_1299->g_144;
    int32_t *l_436 = &p_1299->g_76;
    int32_t l_437[3][9][7] = {{{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL}},{{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL}},{{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL},{(-7L),0x2F7AB69DL,0x7D43249AL,(-7L),0x2B40E4A5L,0x7D43249AL,0x7D43249AL}}};
    int32_t *l_438 = &l_437[1][8][5];
    int32_t *l_439 = &l_424;
    int32_t *l_440[1][4] = {{&l_424,&l_424,&l_424,&l_424}};
    int16_t l_442 = 0x24BDL;
    int16_t *l_500 = &l_442;
    int16_t **l_499[6][1] = {{&l_500},{&l_500},{&l_500},{&l_500},{&l_500},{&l_500}};
    int32_t **l_514 = (void*)0;
    uint16_t l_525[3][3];
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
            l_525[i][j] = 0xAC46L;
    }
    if (p_95)
    { /* block id: 159 */
        uint32_t l_423[1][1];
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_423[i][j] = 4294967295UL;
        }
        (*p_1299->g_377) = l_376;
        for (p_1299->g_33 = 22; (p_1299->g_33 <= (-4)); --p_1299->g_33)
        { /* block id: 163 */
            int32_t **l_381 = &l_376;
            int32_t ***l_380 = &l_381;
            int32_t *l_382 = &p_1299->g_144;
            int16_t *l_384 = &p_1299->g_197;
            int16_t **l_383[6] = {&l_384,&l_384,&l_384,&l_384,&l_384,&l_384};
            int64_t *l_390 = &p_1299->g_192;
            uint16_t ****l_421 = &p_1299->g_419[2][3][0];
            uint8_t *l_422 = &p_1299->g_188;
            uint8_t *l_427 = &p_1299->g_338;
            int i;
            (*l_382) = (l_380 != &p_1299->g_114);
            (*p_1299->g_386) = l_383[5];
            p_1299->g_144 |= (safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1299->global_1_offset, get_global_id(1), 10), (((*l_427) = (((l_390 != l_391) <= (((**p_1299->g_420) = (safe_lshift_func_int16_t_s_u(0x6876L, (safe_rshift_func_uint16_t_u_u((((+(safe_sub_func_int16_t_s_s((safe_sub_func_int16_t_s_s(((safe_unary_minus_func_uint64_t_u((safe_mul_func_int8_t_s_s(((safe_rshift_func_int8_t_s_s(6L, ((safe_div_func_int32_t_s_s((p_95 > (safe_sub_func_int16_t_s_s((((p_95 <= (safe_div_func_int32_t_s_s((safe_rshift_func_int16_t_s_s((safe_div_func_uint32_t_u_u(FAKE_DIVERGE(p_1299->group_0_offset, get_group_id(0), 10), (safe_mod_func_int32_t_s_s((p_96 && ((((*l_422) = ((safe_rshift_func_int8_t_s_u((*p_97), ((((*l_421) = p_1299->g_419[2][3][0]) == (void*)0) <= p_1299->g_331))) >= p_95)) , 0x770184F1L) , l_423[0][0])), l_424)))), p_95)), (*p_1299->g_75)))) , p_1299->g_196[3][1]) || 250UL), l_425))), 9UL)) != l_423[0][0]))) & (-1L)), l_423[0][0])))) > 4294967295UL), p_96)), (*p_1299->g_141)))) ^ (*p_1299->g_141)) , p_1299->g_426), (*p_1299->g_141)))))) < l_423[0][0])) > p_95)) > p_96)));
        }
    }
    else
    { /* block id: 172 */
        int32_t *l_430 = &l_424;
        (*l_430) = (safe_rshift_func_uint16_t_u_u(3UL, (**p_1299->g_420)));
        (*l_430) &= (*p_1299->g_115);
    }
    for (p_1299->g_144 = 2; (p_1299->g_144 >= 0); p_1299->g_144 -= 1)
    { /* block id: 178 */
        int64_t **l_431 = &l_391;
        return p_1299->g_432;
    }
    ++p_1299->g_445;
    if (((*l_435) = p_95))
    { /* block id: 183 */
        int32_t *l_449 = &p_1299->g_196[6][1];
        int32_t **l_448 = &l_449;
        uint32_t l_452[10][3] = {{4294967295UL,0x95F17322L,8UL},{4294967295UL,0x95F17322L,8UL},{4294967295UL,0x95F17322L,8UL},{4294967295UL,0x95F17322L,8UL},{4294967295UL,0x95F17322L,8UL},{4294967295UL,0x95F17322L,8UL},{4294967295UL,0x95F17322L,8UL},{4294967295UL,0x95F17322L,8UL},{4294967295UL,0x95F17322L,8UL},{4294967295UL,0x95F17322L,8UL}};
        int32_t l_453 = 0L;
        int8_t *l_454 = &p_1299->g_35[0];
        int i, j;
        (*p_1299->g_455) = func_104(p_1299->g_333, (*p_1299->g_432), ((*l_448) = &l_425), ((((-10L) != (((-3L) && (*p_97)) , (l_391 != (void*)0))) < ((safe_mod_func_int32_t_s_s((l_452[6][0] , l_452[1][1]), (-2L))) , 0x2D654EE130C3EF0EL)) | l_453), l_454, p_1299);
        (*l_439) |= ((*l_435) ^= (-7L));
    }
    else
    { /* block id: 188 */
        int32_t *l_456 = &l_424;
        int32_t **l_457 = &l_440[0][2];
        int16_t l_466 = 0x1575L;
        (*l_457) = l_456;
        for (p_96 = 0; (p_96 <= 2); p_96 += 1)
        { /* block id: 192 */
            uint32_t l_458 = 0UL;
            int32_t l_461 = 0x51115656L;
            int32_t l_467 = 0x4E2B233BL;
            (1 + 1);
        }
    }
    return &p_1299->g_433;
}


/* ------------------------------------------ */
/* 
 * reads : p_1299->g_192 p_1299->g_141 p_1299->g_142 p_1299->g_85 p_1299->g_197 p_1299->g_3 p_1299->g_338 p_1299->g_196 p_1299->g_144 p_1299->g_49 p_1299->g_73 p_1299->g_188 p_1299->g_304 p_1299->g_333 p_1299->g_75 p_1299->g_76 p_1299->g_336 p_1299->g_35 p_1299->g_114
 * writes: p_1299->g_188 p_1299->g_197 p_1299->g_331 p_1299->g_365 p_1299->g_336 p_1299->g_338 p_1299->g_228 p_1299->g_333 p_1299->g_186 p_1299->g_76 p_1299->g_115
 */
int8_t * func_99(int32_t * p_100, int32_t  p_101, union U2  p_102, int64_t * p_103, struct S3 * p_1299)
{ /* block id: 146 */
    int32_t l_355 = (-1L);
    uint8_t *l_356 = &p_1299->g_188;
    int16_t *l_357 = &p_1299->g_197;
    int16_t *l_358 = &p_1299->g_331;
    uint64_t *l_366 = &p_1299->g_228;
    uint64_t **l_367 = &l_366;
    union U2 *l_368 = (void*)0;
    union U2 *l_369 = &p_1299->g_336;
    uint64_t *l_370 = (void*)0;
    uint64_t *l_371 = (void*)0;
    int32_t l_372 = (-7L);
    int32_t l_373[1];
    uint8_t *l_374 = &p_1299->g_338;
    int32_t **l_375[2];
    int i;
    for (i = 0; i < 1; i++)
        l_373[i] = 0x5E6DA144L;
    for (i = 0; i < 2; i++)
        l_375[i] = &p_1299->g_115;
    (*p_1299->g_114) = func_104(p_101, (((p_1299->g_192 && (safe_lshift_func_uint16_t_u_u(((((safe_mod_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((((safe_sub_func_int8_t_s_s((-1L), ((*l_374) |= (FAKE_DIVERGE(p_1299->local_1_offset, get_local_id(1), 10) || (safe_add_func_uint8_t_u_u(((*l_356) = l_355), ((*p_1299->g_141) || (l_373[0] = ((l_372 = ((((*l_358) = ((*l_357) |= p_1299->g_85[2])) || (safe_sub_func_int64_t_s_s(((((safe_mod_func_int8_t_s_s(((safe_lshift_func_int16_t_s_s((((p_1299->g_365 = (void*)0) != ((*l_367) = l_366)) ^ ((((*l_369) = p_102) , (void*)0) != p_103)), p_1299->g_3)) > 0L), 249UL)) && 0x5D836C28L) , l_355) <= p_101), (*p_103)))) & GROUP_DIVERGE(0, 1))) >= l_355))))))))) && 0xB4EF83FA3A50FD07L) > p_1299->g_196[6][1]), l_355)), p_1299->g_144)) > p_1299->g_49[2]) & 0x28L) | l_355), 5))) >= 0xE66DC7A78D93BE3AL) , p_103), &p_1299->g_20, l_355, &p_1299->g_73, p_1299);
    return l_356;
}


/* ------------------------------------------ */
/* 
 * reads : p_1299->g_228 p_1299->g_188 p_1299->g_85 p_1299->g_3 p_1299->g_304 p_1299->g_142 p_1299->g_144 p_1299->g_333 p_1299->g_75 p_1299->g_76 p_1299->g_336 p_1299->g_141 p_1299->g_35 p_1299->g_73 p_1299->g_49
 * writes: p_1299->g_228 p_1299->g_197 p_1299->g_188 p_1299->g_333 p_1299->g_338 p_1299->g_186 p_1299->g_76
 */
int32_t * func_104(uint64_t  p_105, int64_t * p_106, int32_t * p_107, int32_t  p_108, int8_t * p_109, struct S3 * p_1299)
{ /* block id: 127 */
    int32_t **l_320[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_322 = 0x4589104FL;
    int32_t **l_323 = (void*)0;
    uint64_t l_328 = 18446744073709551615UL;
    int32_t l_329 = (-3L);
    int16_t l_330 = (-6L);
    int32_t l_343 = 7L;
    int i;
    for (p_1299->g_228 = 20; (p_1299->g_228 != 3); p_1299->g_228 = safe_sub_func_uint8_t_u_u(p_1299->g_228, 9))
    { /* block id: 130 */
        int16_t *l_317 = &p_1299->g_197;
        int32_t ***l_321 = &l_320[2];
        uint8_t *l_326 = &p_1299->g_188;
        int32_t *l_327[3];
        uint8_t *l_337 = &p_1299->g_338;
        int8_t *l_342[1];
        int8_t **l_341 = &l_342[0];
        int i;
        for (i = 0; i < 3; i++)
            l_327[i] = &p_1299->g_144;
        for (i = 0; i < 1; i++)
            l_342[i] = &p_1299->g_35[0];
        if (p_108)
            break;
        l_329 |= (safe_div_func_int16_t_s_s((((l_328 = ((((safe_mod_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), 8L)) || ((safe_div_func_int8_t_s_s(((safe_mod_func_uint8_t_u_u((safe_add_func_int32_t_s_s((((((*l_317) = (-1L)) != ((safe_mul_func_uint8_t_u_u((&p_1299->g_145 != ((*l_321) = l_320[0])), ((l_322 <= (GROUP_DIVERGE(2, 1) && (((*l_326) ^= ((((l_322 , l_323) != l_323) != (!(safe_add_func_int8_t_s_s((*p_109), 0x44L)))) != p_105)) < 0x9CL))) , p_1299->g_85[2]))) == 1UL)) > l_322) >= p_1299->g_3), p_1299->g_304[1][1])), p_105)) >= p_105), (*p_109))) , p_1299->g_142)) != p_1299->g_144) ^ 0x1A0EL)) | 0x5A4C1F5CL) , p_1299->g_142), 0x9611L));
        p_1299->g_333--;
        l_343 = ((*p_1299->g_75) = ((((*p_1299->g_75) >= (((*l_326) = p_108) != ((p_1299->g_336 , p_105) , ((*l_337) = 0xEFL)))) , (*p_1299->g_141)) < (FAKE_DIVERGE(p_1299->local_1_offset, get_local_id(1), 10) , (((safe_div_func_uint32_t_u_u((p_1299->g_186 = ((p_109 != ((p_108 ^ ((((*l_341) = (((((p_105 < p_1299->g_35[0]) >= p_1299->g_73) && 0x06793AE9CA03AC84L) || FAKE_DIVERGE(p_1299->group_1_offset, get_group_id(1), 10)) , p_109)) == &p_1299->g_226) && 0x18L)) , p_109)) == (*p_1299->g_141))), p_105)) <= p_1299->g_49[2]) , 65535UL))));
    }
    return p_107;
}


/* ------------------------------------------ */
/* 
 * reads : p_1299->g_33 p_1299->g_35 p_1299->g_114 p_1299->g_93 p_1299->g_73 p_1299->g_115 p_1299->g_118 p_1299->g_76 p_1299->g_142 p_1299->g_188 p_1299->g_141 p_1299->g_49 p_1299->g_20 p_1299->g_145 p_1299->g_144 p_1299->g_186 p_1299->g_284 p_1299->g_88 p_1299->g_3 p_1299->g_228
 * writes: p_1299->g_33 p_1299->g_115 p_1299->g_93 p_1299->g_73 p_1299->g_76 p_1299->g_142 p_1299->g_188 p_1299->g_49 p_1299->g_186
 */
int64_t * func_110(int64_t ** p_111, struct S3 * p_1299)
{ /* block id: 36 */
    int32_t *l_116 = (void*)0;
    uint16_t *l_125 = &p_1299->g_49[2];
    int32_t l_147 = 3L;
    int32_t l_149 = (-1L);
    int32_t l_150[10][4][3] = {{{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL}},{{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL}},{{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL}},{{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL}},{{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL}},{{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL}},{{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL}},{{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL}},{{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL}},{{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL},{7L,3L,0x2151E35FL}}};
    uint32_t l_151 = 4UL;
    uint8_t l_190 = 0x18L;
    int64_t l_195 = 0x03916AA3D3629F83L;
    int32_t l_200 = (-9L);
    uint8_t l_204 = 0UL;
    uint64_t l_224 = 0xE0E1254D81AA495BL;
    int64_t *l_253 = &p_1299->g_93;
    int i, j, k;
    for (p_1299->g_33 = 2; (p_1299->g_33 >= 0); p_1299->g_33 -= 1)
    { /* block id: 39 */
        uint16_t *l_140 = &p_1299->g_49[2];
        int32_t **l_154 = (void*)0;
        int32_t l_201 = 0x4C425AE9L;
        int32_t l_203[2];
        int64_t *l_244 = &l_195;
        int32_t *l_251 = (void*)0;
        int i;
        for (i = 0; i < 2; i++)
            l_203[i] = 0x58F65C06L;
        if (p_1299->g_35[(p_1299->g_33 + 6)])
            break;
        (*p_1299->g_114) = &p_1299->g_76;
        for (p_1299->g_93 = 8; (p_1299->g_93 >= 0); p_1299->g_93 -= 1)
        { /* block id: 44 */
            int64_t *l_117 = &p_1299->g_33;
            int32_t l_139 = (-10L);
            int32_t l_143 = 0L;
            uint64_t l_193[10][1][10] = {{{0x2FECA5C750724E05L,1UL,18446744073709551612UL,1UL,0x2FECA5C750724E05L,0x7540F12F2D702745L,0xC477D8F504017246L,0xA0D4A109FDD9FC75L,0x975BA9DFC485CD22L,18446744073709551615UL}},{{0x2FECA5C750724E05L,1UL,18446744073709551612UL,1UL,0x2FECA5C750724E05L,0x7540F12F2D702745L,0xC477D8F504017246L,0xA0D4A109FDD9FC75L,0x975BA9DFC485CD22L,18446744073709551615UL}},{{0x2FECA5C750724E05L,1UL,18446744073709551612UL,1UL,0x2FECA5C750724E05L,0x7540F12F2D702745L,0xC477D8F504017246L,0xA0D4A109FDD9FC75L,0x975BA9DFC485CD22L,18446744073709551615UL}},{{0x2FECA5C750724E05L,1UL,18446744073709551612UL,1UL,0x2FECA5C750724E05L,0x7540F12F2D702745L,0xC477D8F504017246L,0xA0D4A109FDD9FC75L,0x975BA9DFC485CD22L,18446744073709551615UL}},{{0x2FECA5C750724E05L,1UL,18446744073709551612UL,1UL,0x2FECA5C750724E05L,0x7540F12F2D702745L,0xC477D8F504017246L,0xA0D4A109FDD9FC75L,0x975BA9DFC485CD22L,18446744073709551615UL}},{{0x2FECA5C750724E05L,1UL,18446744073709551612UL,1UL,0x2FECA5C750724E05L,0x7540F12F2D702745L,0xC477D8F504017246L,0xA0D4A109FDD9FC75L,0x975BA9DFC485CD22L,18446744073709551615UL}},{{0x2FECA5C750724E05L,1UL,18446744073709551612UL,1UL,0x2FECA5C750724E05L,0x7540F12F2D702745L,0xC477D8F504017246L,0xA0D4A109FDD9FC75L,0x975BA9DFC485CD22L,18446744073709551615UL}},{{0x2FECA5C750724E05L,1UL,18446744073709551612UL,1UL,0x2FECA5C750724E05L,0x7540F12F2D702745L,0xC477D8F504017246L,0xA0D4A109FDD9FC75L,0x975BA9DFC485CD22L,18446744073709551615UL}},{{0x2FECA5C750724E05L,1UL,18446744073709551612UL,1UL,0x2FECA5C750724E05L,0x7540F12F2D702745L,0xC477D8F504017246L,0xA0D4A109FDD9FC75L,0x975BA9DFC485CD22L,18446744073709551615UL}},{{0x2FECA5C750724E05L,1UL,18446744073709551612UL,1UL,0x2FECA5C750724E05L,0x7540F12F2D702745L,0xC477D8F504017246L,0xA0D4A109FDD9FC75L,0x975BA9DFC485CD22L,18446744073709551615UL}}};
            int32_t l_198 = 4L;
            int i, j, k;
            for (p_1299->g_73 = 8; (p_1299->g_73 >= 0); p_1299->g_73 -= 1)
            { /* block id: 47 */
                (*p_1299->g_114) = l_116;
                return l_117;
            }
            for (p_1299->g_73 = 0; (p_1299->g_73 <= 9); p_1299->g_73 += 1)
            { /* block id: 53 */
                uint16_t *l_127 = (void*)0;
                int32_t l_136 = 0x0373D2EFL;
                int32_t l_148[6][1] = {{6L},{6L},{6L},{6L},{6L},{6L}};
                uint32_t l_189 = 5UL;
                int8_t l_202 = 0x40L;
                int64_t *l_245 = &l_195;
                int32_t *l_247[4] = {&l_201,&l_201,&l_201,&l_201};
                int i, j;
                for (p_1299->g_76 = 1; (p_1299->g_76 <= 9); p_1299->g_76 += 1)
                { /* block id: 56 */
                    (*p_1299->g_118) = (*p_1299->g_114);
                }
            }
            (*p_1299->g_115) |= 1L;
        }
        for (p_1299->g_142 = 1; (p_1299->g_142 <= 9); p_1299->g_142 += 1)
        { /* block id: 103 */
            uint16_t l_280 = 0x7B68L;
            uint8_t l_286 = 0x19L;
            int32_t l_288[4] = {0x795A39ACL,0x795A39ACL,0x795A39ACL,0x795A39ACL};
            int32_t l_289 = 4L;
            int i;
            (*p_1299->g_115) = (-1L);
            for (l_149 = 6; (l_149 >= 0); l_149 -= 1)
            { /* block id: 107 */
                int8_t l_252 = 0x22L;
                (*p_1299->g_115) = l_252;
                for (p_1299->g_188 = 0; (p_1299->g_188 <= 9); p_1299->g_188 += 1)
                { /* block id: 111 */
                    int64_t **l_254 = &l_253;
                    int32_t l_255[3][10] = {{(-10L),(-3L),0L,(-3L),(-10L),(-10L),(-3L),0L,(-3L),(-10L)},{(-10L),(-3L),0L,(-3L),(-10L),(-10L),(-3L),0L,(-3L),(-10L)},{(-10L),(-3L),0L,(-3L),(-10L),(-10L),(-3L),0L,(-3L),(-10L)}};
                    uint32_t *l_281 = &p_1299->g_186;
                    uint8_t *l_287 = (void*)0;
                    int i, j;
                    (*p_1299->g_115) = (l_255[2][5] ^= (((*l_254) = l_253) == (void*)0));
                    l_289 &= ((l_255[1][9] | (((*p_1299->g_141) > ((safe_mul_func_uint16_t_u_u(((safe_sub_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(l_252, 7)), (safe_rshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((++(*l_125)), 6L)), (safe_mul_func_int8_t_s_s(((l_288[0] = ((safe_mod_func_int32_t_s_s((safe_mod_func_uint64_t_u_u(((safe_sub_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u(((safe_rshift_func_uint16_t_u_u(((p_1299->g_20 && (((((*p_1299->g_115) = (*p_1299->g_145)) >= l_280) == ((*l_281)--)) & (((void*)0 != p_1299->g_284[1]) >= p_1299->g_144))) || p_1299->g_88), 9)) != 0x0DL), l_252)), l_252)) >= l_255[0][7]), p_1299->g_3)), 1L)) > l_286)) & (-1L)), l_280)))))) <= 0x8960L), l_200)) , l_252)) == (-6L))) , (**p_1299->g_118));
                }
            }
        }
    }
    (*p_1299->g_115) = (p_1299->g_228 <= 0x71L);
    return &p_1299->g_33;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_1300;
    struct S3* p_1299 = &c_1300;
    struct S3 c_1301 = {
        0x479E672CL, // p_1299->g_3
        0x10AE7359L, // p_1299->g_20
        0x0B2B0402AD9236F9L, // p_1299->g_33
        {0x25L,(-1L),0x25L,0x25L,(-1L),0x25L,0x25L,(-1L),0x25L,0x25L}, // p_1299->g_35
        {0x2101L,0x2101L,0x2101L}, // p_1299->g_49
        {0x22468F5BL}, // p_1299->g_60
        0L, // p_1299->g_73
        0x233C22C9L, // p_1299->g_76
        &p_1299->g_76, // p_1299->g_75
        {0x4A2EL,0x4A2EL,0x4A2EL,0x4A2EL}, // p_1299->g_85
        0x0AF6L, // p_1299->g_88
        0UL, // p_1299->g_89
        0x770407C5320B3533L, // p_1299->g_93
        (void*)0, // p_1299->g_113
        &p_1299->g_76, // p_1299->g_115
        &p_1299->g_115, // p_1299->g_114
        &p_1299->g_115, // p_1299->g_118
        0x6A66L, // p_1299->g_142
        &p_1299->g_142, // p_1299->g_141
        0x46D30B3EL, // p_1299->g_144
        &p_1299->g_144, // p_1299->g_145
        0x2035C058L, // p_1299->g_186
        0x17L, // p_1299->g_188
        0x61D8D22D332A9F6DL, // p_1299->g_192
        {{(-1L),(-6L)},{(-1L),(-6L)},{(-1L),(-6L)},{(-1L),(-6L)},{(-1L),(-6L)},{(-1L),(-6L)},{(-1L),(-6L)}}, // p_1299->g_196
        (-1L), // p_1299->g_197
        {{{0},{0}},{{0},{0}}}, // p_1299->g_225
        0x7AL, // p_1299->g_226
        1UL, // p_1299->g_228
        0UL, // p_1299->g_248
        &p_1299->g_93, // p_1299->g_285
        {&p_1299->g_285,&p_1299->g_285,&p_1299->g_285}, // p_1299->g_284
        {{1UL,0x7E1F24E9L,1UL,1UL,0x7E1F24E9L},{1UL,0x7E1F24E9L,1UL,1UL,0x7E1F24E9L},{1UL,0x7E1F24E9L,1UL,1UL,0x7E1F24E9L}}, // p_1299->g_304
        7L, // p_1299->g_331
        (-4L), // p_1299->g_332
        0xD4AEB7A9L, // p_1299->g_333
        {0}, // p_1299->g_336
        249UL, // p_1299->g_338
        (void*)0, // p_1299->g_365
        &p_1299->g_115, // p_1299->g_377
        (void*)0, // p_1299->g_385
        (void*)0, // p_1299->g_387
        &p_1299->g_387, // p_1299->g_386
        &p_1299->g_141, // p_1299->g_420
        {{{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420},{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420},{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420},{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420},{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420},{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420}},{{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420},{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420},{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420},{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420},{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420},{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420}},{{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420},{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420},{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420},{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420},{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420},{&p_1299->g_420,&p_1299->g_420,&p_1299->g_420,(void*)0,&p_1299->g_420,&p_1299->g_420,&p_1299->g_420}}}, // p_1299->g_419
        (-1L), // p_1299->g_426
        &p_1299->g_192, // p_1299->g_433
        &p_1299->g_433, // p_1299->g_432
        {0x2107948EF92FA34FL,0x2107948EF92FA34FL,0x2107948EF92FA34FL,0x2107948EF92FA34FL,0x2107948EF92FA34FL,0x2107948EF92FA34FL,0x2107948EF92FA34FL,0x2107948EF92FA34FL,0x2107948EF92FA34FL}, // p_1299->g_441
        0x13DC4E0AL, // p_1299->g_443
        (-1L), // p_1299->g_444
        18446744073709551615UL, // p_1299->g_445
        &p_1299->g_115, // p_1299->g_455
        0xD9BAL, // p_1299->g_494
        0xA4L, // p_1299->g_502
        {0x20C63006L}, // p_1299->g_504
        {{&p_1299->g_20,&p_1299->g_196[6][1],&p_1299->g_20,&p_1299->g_20},{&p_1299->g_20,&p_1299->g_196[6][1],&p_1299->g_20,&p_1299->g_20},{&p_1299->g_20,&p_1299->g_196[6][1],&p_1299->g_20,&p_1299->g_20},{&p_1299->g_20,&p_1299->g_196[6][1],&p_1299->g_20,&p_1299->g_20}}, // p_1299->g_516
        {{{&p_1299->g_516[0][3],&p_1299->g_516[0][1],&p_1299->g_516[0][1],&p_1299->g_516[0][3],&p_1299->g_516[0][2],(void*)0,&p_1299->g_516[0][2],&p_1299->g_516[0][2]},{&p_1299->g_516[0][3],&p_1299->g_516[0][1],&p_1299->g_516[0][1],&p_1299->g_516[0][3],&p_1299->g_516[0][2],(void*)0,&p_1299->g_516[0][2],&p_1299->g_516[0][2]},{&p_1299->g_516[0][3],&p_1299->g_516[0][1],&p_1299->g_516[0][1],&p_1299->g_516[0][3],&p_1299->g_516[0][2],(void*)0,&p_1299->g_516[0][2],&p_1299->g_516[0][2]}},{{&p_1299->g_516[0][3],&p_1299->g_516[0][1],&p_1299->g_516[0][1],&p_1299->g_516[0][3],&p_1299->g_516[0][2],(void*)0,&p_1299->g_516[0][2],&p_1299->g_516[0][2]},{&p_1299->g_516[0][3],&p_1299->g_516[0][1],&p_1299->g_516[0][1],&p_1299->g_516[0][3],&p_1299->g_516[0][2],(void*)0,&p_1299->g_516[0][2],&p_1299->g_516[0][2]},{&p_1299->g_516[0][3],&p_1299->g_516[0][1],&p_1299->g_516[0][1],&p_1299->g_516[0][3],&p_1299->g_516[0][2],(void*)0,&p_1299->g_516[0][2],&p_1299->g_516[0][2]}},{{&p_1299->g_516[0][3],&p_1299->g_516[0][1],&p_1299->g_516[0][1],&p_1299->g_516[0][3],&p_1299->g_516[0][2],(void*)0,&p_1299->g_516[0][2],&p_1299->g_516[0][2]},{&p_1299->g_516[0][3],&p_1299->g_516[0][1],&p_1299->g_516[0][1],&p_1299->g_516[0][3],&p_1299->g_516[0][2],(void*)0,&p_1299->g_516[0][2],&p_1299->g_516[0][2]},{&p_1299->g_516[0][3],&p_1299->g_516[0][1],&p_1299->g_516[0][1],&p_1299->g_516[0][3],&p_1299->g_516[0][2],(void*)0,&p_1299->g_516[0][2],&p_1299->g_516[0][2]}},{{&p_1299->g_516[0][3],&p_1299->g_516[0][1],&p_1299->g_516[0][1],&p_1299->g_516[0][3],&p_1299->g_516[0][2],(void*)0,&p_1299->g_516[0][2],&p_1299->g_516[0][2]},{&p_1299->g_516[0][3],&p_1299->g_516[0][1],&p_1299->g_516[0][1],&p_1299->g_516[0][3],&p_1299->g_516[0][2],(void*)0,&p_1299->g_516[0][2],&p_1299->g_516[0][2]},{&p_1299->g_516[0][3],&p_1299->g_516[0][1],&p_1299->g_516[0][1],&p_1299->g_516[0][3],&p_1299->g_516[0][2],(void*)0,&p_1299->g_516[0][2],&p_1299->g_516[0][2]}}}, // p_1299->g_515
        (void*)0, // p_1299->g_535
        {&p_1299->g_225[0][1],&p_1299->g_225[0][1],&p_1299->g_225[0][1]}, // p_1299->g_564
        &p_1299->g_564[2], // p_1299->g_563
        &p_1299->g_144, // p_1299->g_579
        0x130EAF5894BABC90L, // p_1299->g_581
        &p_1299->g_35[1], // p_1299->g_585
        &p_1299->g_585, // p_1299->g_584
        {0}, // p_1299->g_599
        {{{(-4L),1L,0x573DL,0L,0x573DL}},{{(-4L),1L,0x573DL,0L,0x573DL}},{{(-4L),1L,0x573DL,0L,0x573DL}},{{(-4L),1L,0x573DL,0L,0x573DL}},{{(-4L),1L,0x573DL,0L,0x573DL}},{{(-4L),1L,0x573DL,0L,0x573DL}},{{(-4L),1L,0x573DL,0L,0x573DL}}}, // p_1299->g_604
        4UL, // p_1299->g_616
        &p_1299->g_115, // p_1299->g_619
        (void*)0, // p_1299->g_620
        {0}, // p_1299->g_675
        &p_1299->g_76, // p_1299->g_676
        {0}, // p_1299->g_723
        {0}, // p_1299->g_737
        1L, // p_1299->g_747
        &p_1299->g_115, // p_1299->g_748
        0x548AAF469DA1FFB5L, // p_1299->g_767
        1UL, // p_1299->g_768
        {&p_1299->g_443,&p_1299->g_443,&p_1299->g_443,&p_1299->g_443}, // p_1299->g_773
        &p_1299->g_115, // p_1299->g_797
        {1L}, // p_1299->g_813
        &p_1299->g_93, // p_1299->g_825
        &p_1299->g_365, // p_1299->g_886
        &p_1299->g_387, // p_1299->g_932
        (void*)0, // p_1299->g_933
        {0}, // p_1299->g_962
        0x3354F340L, // p_1299->g_966
        &p_1299->g_115, // p_1299->g_968
        {0}, // p_1299->g_992
        0x1849D97C1DFA4AF2L, // p_1299->g_1049
        {0x59CBD308L,0x59CBD308L}, // p_1299->g_1061
        (void*)0, // p_1299->g_1111
        {0}, // p_1299->g_1175
        &p_1299->g_504, // p_1299->g_1195
        &p_1299->g_304[0][0], // p_1299->g_1217
        {{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}}, // p_1299->g_1258
        sequence_input[get_global_id(0)], // p_1299->global_0_offset
        sequence_input[get_global_id(1)], // p_1299->global_1_offset
        sequence_input[get_global_id(2)], // p_1299->global_2_offset
        sequence_input[get_local_id(0)], // p_1299->local_0_offset
        sequence_input[get_local_id(1)], // p_1299->local_1_offset
        sequence_input[get_local_id(2)], // p_1299->local_2_offset
        sequence_input[get_group_id(0)], // p_1299->group_0_offset
        sequence_input[get_group_id(1)], // p_1299->group_1_offset
        sequence_input[get_group_id(2)], // p_1299->group_2_offset
    };
    c_1300 = c_1301;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1299);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1299->g_3, "p_1299->g_3", print_hash_value);
    transparent_crc(p_1299->g_20, "p_1299->g_20", print_hash_value);
    transparent_crc(p_1299->g_33, "p_1299->g_33", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1299->g_35[i], "p_1299->g_35[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1299->g_49[i], "p_1299->g_49[i]", print_hash_value);

    }
    transparent_crc(p_1299->g_60.f0, "p_1299->g_60.f0", print_hash_value);
    transparent_crc(p_1299->g_73, "p_1299->g_73", print_hash_value);
    transparent_crc(p_1299->g_76, "p_1299->g_76", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1299->g_85[i], "p_1299->g_85[i]", print_hash_value);

    }
    transparent_crc(p_1299->g_88, "p_1299->g_88", print_hash_value);
    transparent_crc(p_1299->g_89, "p_1299->g_89", print_hash_value);
    transparent_crc(p_1299->g_93, "p_1299->g_93", print_hash_value);
    transparent_crc(p_1299->g_142, "p_1299->g_142", print_hash_value);
    transparent_crc(p_1299->g_144, "p_1299->g_144", print_hash_value);
    transparent_crc(p_1299->g_186, "p_1299->g_186", print_hash_value);
    transparent_crc(p_1299->g_188, "p_1299->g_188", print_hash_value);
    transparent_crc(p_1299->g_192, "p_1299->g_192", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1299->g_196[i][j], "p_1299->g_196[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1299->g_197, "p_1299->g_197", print_hash_value);
    transparent_crc(p_1299->g_226, "p_1299->g_226", print_hash_value);
    transparent_crc(p_1299->g_228, "p_1299->g_228", print_hash_value);
    transparent_crc(p_1299->g_248, "p_1299->g_248", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1299->g_304[i][j], "p_1299->g_304[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1299->g_331, "p_1299->g_331", print_hash_value);
    transparent_crc(p_1299->g_332, "p_1299->g_332", print_hash_value);
    transparent_crc(p_1299->g_333, "p_1299->g_333", print_hash_value);
    transparent_crc(p_1299->g_338, "p_1299->g_338", print_hash_value);
    transparent_crc(p_1299->g_426, "p_1299->g_426", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1299->g_441[i], "p_1299->g_441[i]", print_hash_value);

    }
    transparent_crc(p_1299->g_443, "p_1299->g_443", print_hash_value);
    transparent_crc(p_1299->g_444, "p_1299->g_444", print_hash_value);
    transparent_crc(p_1299->g_445, "p_1299->g_445", print_hash_value);
    transparent_crc(p_1299->g_494, "p_1299->g_494", print_hash_value);
    transparent_crc(p_1299->g_502, "p_1299->g_502", print_hash_value);
    transparent_crc(p_1299->g_504.f0, "p_1299->g_504.f0", print_hash_value);
    transparent_crc(p_1299->g_581, "p_1299->g_581", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1299->g_604[i][j][k], "p_1299->g_604[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1299->g_616, "p_1299->g_616", print_hash_value);
    transparent_crc(p_1299->g_747, "p_1299->g_747", print_hash_value);
    transparent_crc(p_1299->g_767, "p_1299->g_767", print_hash_value);
    transparent_crc(p_1299->g_768, "p_1299->g_768", print_hash_value);
    transparent_crc(p_1299->g_813.f0, "p_1299->g_813.f0", print_hash_value);
    transparent_crc(p_1299->g_966, "p_1299->g_966", print_hash_value);
    transparent_crc(p_1299->g_1049, "p_1299->g_1049", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1299->g_1061[i], "p_1299->g_1061[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1299->g_1258[i][j], "p_1299->g_1258[i][j]", print_hash_value);

        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
