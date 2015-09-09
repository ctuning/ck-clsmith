// ---fake_divergence -g 71,29,3 -l 71,1,1
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


// Seed: 72

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int8_t  f0;
   volatile int32_t  f1;
   volatile uint16_t  f2;
   int64_t  f3;
   uint32_t  f4;
   volatile uint16_t  f5;
   volatile uint32_t  f6;
   int32_t  f7;
   int64_t  f8;
   volatile int32_t  f9;
};

union U5 {
   volatile int32_t  f0;
};

struct S6 {
    volatile uint32_t g_4;
    uint32_t g_5;
    int32_t g_15;
    uint32_t g_21;
    uint32_t g_32;
    uint32_t *g_31;
    int32_t g_34;
    int32_t *g_54;
    int32_t **g_53;
    uint8_t g_66;
    uint8_t *g_65;
    int64_t g_72[8][3];
    uint64_t g_74;
    uint8_t *g_99;
    int32_t g_107;
    int32_t g_123[2][1][2];
    int16_t g_145[6];
    int8_t g_170[2][7][3];
    int8_t g_172;
    int8_t g_175;
    int16_t *g_187;
    uint32_t g_205;
    uint16_t g_219;
    uint8_t g_220[6][6];
    int32_t **g_274;
    uint32_t g_404;
    uint8_t **g_412;
    uint8_t ***g_411;
    uint32_t g_415;
    uint8_t g_418;
    int32_t g_419[1][2][8];
    uint8_t g_463;
    int32_t g_480[2];
    int8_t g_566[7][8][4];
    int32_t ** volatile *g_588;
    int32_t ** volatile **g_587;
    uint8_t g_593[6];
    uint64_t g_595;
    uint64_t g_598;
    uint32_t g_670;
    int64_t *g_692;
    int64_t **g_691;
    uint32_t *g_715;
    union U5 g_720[3][2][9];
    union U5 *g_719;
    uint64_t g_725;
    int16_t **g_741;
    int16_t ***g_740;
    int64_t ***g_804;
    int64_t ***g_811;
    int64_t **g_850;
    uint16_t g_857;
    struct S0 g_880;
    int32_t g_1016;
    int32_t g_1117;
    uint32_t g_1174[10][8];
    int8_t *g_1209;
    int8_t **g_1208;
    union U5 g_1300;
    int32_t g_1315[4][7][5];
    struct S0 g_1327;
    struct S0 *g_1326;
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
int64_t  func_1(struct S6 * p_1337);
int16_t  func_7(int64_t  p_8, uint8_t  p_9, int32_t  p_10, uint32_t  p_11, uint32_t  p_12, struct S6 * p_1337);
uint8_t  func_22(uint16_t  p_23, int8_t  p_24, uint32_t * p_25, struct S6 * p_1337);
uint32_t * func_43(uint8_t * p_44, struct S6 * p_1337);
uint8_t * func_45(int64_t  p_46, int32_t  p_47, struct S6 * p_1337);
int32_t  func_48(int32_t ** p_49, int32_t * p_50, int32_t  p_51, int32_t ** p_52, struct S6 * p_1337);
int32_t * func_55(int32_t ** p_56, struct S6 * p_1337);
int32_t ** func_57(uint8_t  p_58, uint8_t  p_59, uint32_t * p_60, uint8_t * p_61, uint32_t  p_62, struct S6 * p_1337);
uint16_t  func_87(uint8_t * p_88, int8_t  p_89, uint32_t  p_90, struct S6 * p_1337);
uint8_t * func_91(uint32_t * p_92, uint8_t * p_93, int32_t * p_94, int32_t * p_95, struct S6 * p_1337);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1337->g_4 p_1337->g_5 p_1337->g_31 p_1337->g_15 p_1337->g_53 p_1337->g_34 p_1337->g_65 p_1337->g_32 p_1337->g_21 p_1337->g_74 p_1337->g_107 p_1337->g_72 p_1337->g_123 p_1337->g_66 p_1337->g_170 p_1337->g_145 p_1337->g_219 p_1337->g_220 p_1337->g_205 p_1337->g_175 p_1337->g_587 p_1337->g_593 p_1337->g_595 p_1337->g_692 p_1337->g_740 p_1337->g_463 p_1337->g_725 p_1337->g_54 p_1337->g_715 p_1337->g_670 p_1337->g_172 p_1337->g_566 p_1337->g_691 p_1337->g_857 p_1337->g_880.f4 p_1337->g_880.f7 p_1337->g_411 p_1337->g_588 p_1337->g_418 p_1337->g_1016 p_1337->g_419 p_1337->g_1117 p_1337->g_1174 p_1337->g_880.f8 p_1337->g_415 p_1337->g_1315 p_1337->g_1326
 * writes: p_1337->g_15 p_1337->g_21 p_1337->g_32 p_1337->g_74 p_1337->g_65 p_1337->g_99 p_1337->g_5 p_1337->g_54 p_1337->g_107 p_1337->g_34 p_1337->g_123 p_1337->g_72 p_1337->g_66 p_1337->g_170 p_1337->g_172 p_1337->g_175 p_1337->g_187 p_1337->g_205 p_1337->g_219 p_1337->g_220 p_1337->g_274 p_1337->g_463 p_1337->g_145 p_1337->g_566 p_1337->g_595 p_1337->g_725 p_1337->g_593 p_1337->g_598 p_1337->g_670 p_1337->g_804 p_1337->g_811 p_1337->g_691 p_1337->g_850 p_1337->g_857 p_1337->g_880.f4 p_1337->g_880.f7 p_1337->g_412 p_1337->g_1016 p_1337->g_1117 p_1337->g_1174 p_1337->g_1208 p_1337->g_415 p_1337->g_1326
 */
int64_t  func_1(struct S6 * p_1337)
{ /* block id: 4 */
    uint64_t l_6 = 0x24B5E495761BE360L;
    uint8_t *l_13 = (void*)0;
    uint8_t *l_14 = (void*)0;
    uint32_t *l_20 = &p_1337->g_21;
    uint8_t l_30 = 0xF6L;
    int32_t l_37 = 8L;
    int32_t *l_1336 = &p_1337->g_1016;
    (*l_1336) = ((safe_sub_func_uint32_t_u_u(p_1337->g_4, ((p_1337->g_5 || ((l_6 && (func_7(p_1337->g_5, l_6, l_6, (((p_1337->g_15 = l_6) & (safe_mul_func_uint8_t_u_u((((((safe_sub_func_uint32_t_u_u(((*l_20) = 0x9CFF29C2L), ((*p_1337->g_31) = (func_22((safe_lshift_func_int16_t_s_s(((safe_mul_func_int8_t_s_s(l_6, l_6)) ^ 0UL), 8)), l_30, p_1337->g_31, p_1337) < p_1337->g_5)))) & GROUP_DIVERGE(2, 1)) < l_30) & FAKE_DIVERGE(p_1337->group_2_offset, get_group_id(2), 10)) > l_37), 0x7DL))) , l_37), l_30, p_1337) && 0L)) <= l_6)) | 0x3AL))) , l_37);
    return (*l_1336);
}


/* ------------------------------------------ */
/* 
 * reads : p_1337->g_15 p_1337->g_53 p_1337->g_34 p_1337->g_65 p_1337->g_32 p_1337->g_21 p_1337->g_74 p_1337->g_107 p_1337->g_72 p_1337->g_31 p_1337->g_123 p_1337->g_66 p_1337->g_5 p_1337->g_170 p_1337->g_145 p_1337->g_219 p_1337->g_220 p_1337->g_205 p_1337->g_175 p_1337->g_587 p_1337->g_593 p_1337->g_595 p_1337->g_692 p_1337->g_740 p_1337->g_463 p_1337->g_725 p_1337->g_54 p_1337->g_715 p_1337->g_670 p_1337->g_172 p_1337->g_566 p_1337->g_691 p_1337->g_857 p_1337->g_880.f4 p_1337->g_880.f7 p_1337->g_411 p_1337->g_588 p_1337->g_418 p_1337->g_1016 p_1337->g_419 p_1337->g_1117 p_1337->g_1174 p_1337->g_880.f8 p_1337->g_415 p_1337->g_1315 p_1337->g_1326
 * writes: p_1337->g_15 p_1337->g_21 p_1337->g_74 p_1337->g_65 p_1337->g_99 p_1337->g_5 p_1337->g_54 p_1337->g_107 p_1337->g_34 p_1337->g_123 p_1337->g_72 p_1337->g_66 p_1337->g_170 p_1337->g_172 p_1337->g_175 p_1337->g_187 p_1337->g_205 p_1337->g_219 p_1337->g_220 p_1337->g_32 p_1337->g_274 p_1337->g_463 p_1337->g_145 p_1337->g_566 p_1337->g_595 p_1337->g_725 p_1337->g_593 p_1337->g_598 p_1337->g_670 p_1337->g_804 p_1337->g_811 p_1337->g_691 p_1337->g_850 p_1337->g_857 p_1337->g_880.f4 p_1337->g_880.f7 p_1337->g_412 p_1337->g_1016 p_1337->g_1117 p_1337->g_1174 p_1337->g_1208 p_1337->g_415 p_1337->g_1326
 */
int16_t  func_7(int64_t  p_8, uint8_t  p_9, int32_t  p_10, uint32_t  p_11, uint32_t  p_12, struct S6 * p_1337)
{ /* block id: 11 */
    int32_t *l_38 = &p_1337->g_15;
    int32_t *l_1015 = &p_1337->g_1016;
    uint8_t *l_1025[3];
    uint8_t ***l_1129 = &p_1337->g_412;
    int16_t l_1132 = 3L;
    int32_t l_1138 = (-1L);
    int32_t l_1153 = 0x0FFA8A24L;
    int32_t l_1159 = 0x5D3F7412L;
    int32_t l_1161 = 0x117D776DL;
    int32_t l_1163 = (-7L);
    int64_t l_1173 = 0x0647EED72316671BL;
    int64_t **l_1232[8][7] = {{&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692},{&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692},{&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692},{&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692},{&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692},{&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692},{&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692},{&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692,(void*)0,&p_1337->g_692,&p_1337->g_692}};
    int64_t **l_1235 = &p_1337->g_692;
    union U5 *l_1299 = &p_1337->g_1300;
    int i, j;
    for (i = 0; i < 3; i++)
        l_1025[i] = &p_1337->g_418;
    (*l_38) &= 0L;
    (*l_1015) |= (safe_sub_func_int16_t_s_s((safe_div_func_uint64_t_u_u((l_38 != (p_12 , func_43(func_45((*l_38), ((*l_38) , func_48(p_1337->g_53, func_55(func_57(p_1337->g_34, (*l_38), ((p_8 < (safe_add_func_uint64_t_u_u(p_1337->g_34, (*l_38)))) , (void*)0), p_1337->g_65, p_1337->g_32, p_1337), p_1337), (*l_38), p_1337->g_53, p_1337)), p_1337), p_1337))), p_8)), p_1337->g_418));
lbl_1030:
    (**p_1337->g_53) |= (p_1337->g_123[1][0][0] == ((safe_mul_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((safe_div_func_int64_t_s_s(((*l_38) && (safe_mul_func_uint16_t_u_u(((p_8 , (++p_9)) != 0xBFL), (((*p_1337->g_692) &= (0x461AL != (*l_38))) != (((p_8 == (safe_lshift_func_uint8_t_u_u((*l_38), (*l_1015)))) >= FAKE_DIVERGE(p_1337->global_1_offset, get_global_id(1), 10)) | 18446744073709551615UL))))), 7L)), p_12)), (*l_1015))) , (*l_1015)));
    for (p_1337->g_15 = 0; (p_1337->g_15 <= 5); p_1337->g_15 += 1)
    { /* block id: 469 */
        uint8_t l_1054[5][3] = {{0x05L,0x05L,0x05L},{0x05L,0x05L,0x05L},{0x05L,0x05L,0x05L},{0x05L,0x05L,0x05L},{0x05L,0x05L,0x05L}};
        int32_t l_1055 = 0x2580A2BCL;
        int16_t ***l_1072 = (void*)0;
        uint32_t l_1094 = 0x2201449BL;
        int32_t l_1130 = 0x74FA1C70L;
        int32_t l_1147 = 4L;
        int32_t l_1150 = (-2L);
        int32_t l_1155 = (-7L);
        int32_t l_1158 = 0L;
        int32_t l_1164 = (-4L);
        int32_t l_1165[10][6] = {{3L,3L,1L,7L,0x0D4770E9L,7L},{3L,3L,1L,7L,0x0D4770E9L,7L},{3L,3L,1L,7L,0x0D4770E9L,7L},{3L,3L,1L,7L,0x0D4770E9L,7L},{3L,3L,1L,7L,0x0D4770E9L,7L},{3L,3L,1L,7L,0x0D4770E9L,7L},{3L,3L,1L,7L,0x0D4770E9L,7L},{3L,3L,1L,7L,0x0D4770E9L,7L},{3L,3L,1L,7L,0x0D4770E9L,7L},{3L,3L,1L,7L,0x0D4770E9L,7L}};
        int64_t **l_1233 = &p_1337->g_692;
        int64_t ***l_1234[1];
        uint64_t l_1256[10][1];
        int8_t l_1257[5];
        uint16_t *l_1258 = (void*)0;
        int32_t *l_1259 = &p_1337->g_880.f7;
        int32_t l_1321 = 0x4DA4E9C1L;
        uint64_t l_1333[2];
        int i, j;
        for (i = 0; i < 1; i++)
            l_1234[i] = &l_1233;
        for (i = 0; i < 10; i++)
        {
            for (j = 0; j < 1; j++)
                l_1256[i][j] = 0x34D0A23773745630L;
        }
        for (i = 0; i < 5; i++)
            l_1257[i] = (-6L);
        for (i = 0; i < 2; i++)
            l_1333[i] = 0x2D39FC064064AE90L;
        if (p_12)
            goto lbl_1030;
        for (p_1337->g_34 = 1; (p_1337->g_34 <= 5); p_1337->g_34 += 1)
        { /* block id: 473 */
            int64_t **l_1081 = &p_1337->g_692;
            int32_t l_1143 = 0x2CEFB9E0L;
            int32_t l_1146 = (-3L);
            int32_t l_1148 = 0x64014F4BL;
            int32_t l_1149 = 0x7F1748D5L;
            int32_t l_1151 = 3L;
            int32_t l_1154 = 0L;
            int32_t l_1156 = 0x7FD83ABAL;
            int32_t l_1157[2];
            int8_t **l_1205 = (void*)0;
            int i;
            for (i = 0; i < 2; i++)
                l_1157[i] = 0x46EDB551L;
            if (p_1337->g_593[p_1337->g_15])
            { /* block id: 474 */
                int i;
                return p_1337->g_593[p_1337->g_15];
            }
            else
            { /* block id: 476 */
                uint64_t *l_1039 = (void*)0;
                uint64_t *l_1040 = &p_1337->g_598;
                int16_t *l_1051[5][7] = {{&p_1337->g_145[2],&p_1337->g_145[4],(void*)0,&p_1337->g_145[2],(void*)0,&p_1337->g_145[4],&p_1337->g_145[2]},{&p_1337->g_145[2],&p_1337->g_145[4],(void*)0,&p_1337->g_145[2],(void*)0,&p_1337->g_145[4],&p_1337->g_145[2]},{&p_1337->g_145[2],&p_1337->g_145[4],(void*)0,&p_1337->g_145[2],(void*)0,&p_1337->g_145[4],&p_1337->g_145[2]},{&p_1337->g_145[2],&p_1337->g_145[4],(void*)0,&p_1337->g_145[2],(void*)0,&p_1337->g_145[4],&p_1337->g_145[2]},{&p_1337->g_145[2],&p_1337->g_145[4],(void*)0,&p_1337->g_145[2],(void*)0,&p_1337->g_145[4],&p_1337->g_145[2]}};
                int64_t ***l_1077[1];
                int32_t l_1137 = (-4L);
                int32_t l_1144 = 9L;
                int64_t l_1145 = (-2L);
                int32_t l_1152 = 0x505FE6BEL;
                int32_t l_1160 = 0x00930701L;
                int32_t l_1162 = 1L;
                uint8_t l_1166 = 0UL;
                int16_t ***l_1199[10][1];
                int8_t *l_1207 = (void*)0;
                int8_t **l_1206 = &l_1207;
                int8_t l_1224 = (-10L);
                int i, j;
                for (i = 0; i < 1; i++)
                    l_1077[i] = &p_1337->g_691;
                for (i = 0; i < 10; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_1199[i][j] = &p_1337->g_741;
                }
                if (((((safe_add_func_uint8_t_u_u((safe_div_func_uint16_t_u_u((0x54L != p_1337->g_593[p_1337->g_34]), (safe_sub_func_uint64_t_u_u((((p_1337->g_220[p_1337->g_34][p_1337->g_15] == (((safe_mod_func_int8_t_s_s((((*l_1040) = 18446744073709551606UL) || ((++p_1337->g_595) & (safe_mul_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((*p_1337->g_692), (safe_add_func_uint64_t_u_u((*l_1015), (l_1054[0][0] = (safe_mul_func_int8_t_s_s(((*l_38) < (p_1337->g_145[4] = (-1L))), ((((*p_1337->g_715) |= (safe_mod_func_uint16_t_u_u(p_9, 0x061AL))) > (*l_1015)) , 0x68L)))))))), p_8)))), p_8)) <= (*l_38)) ^ 0x66L)) ^ l_1055) == (*l_38)), l_1055)))), p_1337->g_72[7][1])) | p_1337->g_593[p_1337->g_15]) != p_1337->g_220[p_1337->g_34][p_1337->g_15]) , 0x7FA255E5L))
                { /* block id: 482 */
                    int64_t l_1075 = 0x184F3214BE6EA55BL;
                    int32_t l_1076 = 0x191FBA0CL;
                    int8_t *l_1097 = &p_1337->g_172;
                    int8_t *l_1114 = &p_1337->g_175;
                    int i, j;
                    for (p_1337->g_32 = 0; (p_1337->g_32 <= 1); p_1337->g_32 += 1)
                    { /* block id: 485 */
                        int64_t ****l_1078[2];
                        int32_t l_1079 = 0x2E28F362L;
                        int64_t **l_1080 = &p_1337->g_692;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1078[i] = (void*)0;
                        (1 + 1);
                    }
                    for (p_1337->g_670 = 0; (p_1337->g_670 <= 5); p_1337->g_670 += 1)
                    { /* block id: 499 */
                        return p_9;
                    }
                    l_1055 |= (~((((+((safe_mod_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((*l_1015), (0xF1FF120005802430L == (((+(+p_8)) <= (safe_rshift_func_int8_t_s_s(((*l_1114) = (safe_add_func_int16_t_s_s((((((safe_add_func_uint32_t_u_u((safe_rshift_func_int16_t_s_u((*l_38), 12)), ((((l_1094 &= p_10) , (safe_add_func_int8_t_s_s(((*l_1097) |= p_9), (safe_sub_func_int32_t_s_s((safe_lshift_func_int8_t_s_s(((&p_1337->g_412 != ((((~(safe_mul_func_int8_t_s_s(p_8, (safe_lshift_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u(((safe_mul_func_uint8_t_u_u((--p_1337->g_220[p_1337->g_15][p_1337->g_34]), p_8)) , p_1337->g_593[p_1337->g_15]), GROUP_DIVERGE(1, 1))), GROUP_DIVERGE(0, 1))) > 0xECEB6782L), 2))))) <= p_9) , (*l_1015)) , &p_1337->g_412)) && p_1337->g_593[p_1337->g_15]), p_1337->g_593[p_1337->g_34])), (*p_1337->g_54)))))) == (*p_1337->g_692)) | 0x1B7A38892F636CBEL))) & 0x08L) != p_12) != p_1337->g_593[p_1337->g_34]) & p_9), 0x4E06L))), 0))) & 254UL)))), l_1054[0][0])) && 0x64738A6807F18010L)) >= 0xA0D8L) & p_8) != p_1337->g_566[3][4][2]));
                    (*l_1015) = (*l_1015);
                }
                else
                { /* block id: 508 */
                    int32_t **l_1126 = &l_38;
                    uint64_t *l_1131[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t *l_1133 = &p_1337->g_880.f7;
                    int32_t *l_1134 = &p_1337->g_123[1][0][0];
                    int32_t *l_1135 = &l_1055;
                    int32_t *l_1136 = &p_1337->g_123[0][0][0];
                    int32_t *l_1139 = &l_1055;
                    int32_t *l_1140 = &l_1055;
                    int32_t *l_1141 = &p_1337->g_107;
                    int32_t *l_1142[8] = {&l_1130,&l_1130,&l_1130,&l_1130,&l_1130,&l_1130,&l_1130,&l_1130};
                    int i;
                    for (p_1337->g_595 = 0; (p_1337->g_595 <= 0); p_1337->g_595 += 1)
                    { /* block id: 511 */
                        int i, j, k;
                        l_1055 &= p_1337->g_419[p_1337->g_595][(p_1337->g_595 + 1)][(p_1337->g_15 + 1)];
                        (*l_1015) = ((**p_1337->g_53) |= ((safe_lshift_func_uint8_t_u_u((l_1054[(p_1337->g_595 + 3)][(p_1337->g_595 + 1)] <= (p_11 > 0x6326L)), 5)) > 4294967288UL));
                        p_1337->g_1117 ^= p_1337->g_593[p_1337->g_34];
                        (*l_1015) = (*l_38);
                    }
                    (*l_1133) ^= (safe_lshift_func_uint8_t_u_u((((*l_38) || (l_1094 , (((safe_div_func_uint32_t_u_u(((((*l_1015) = ((*l_1040) = (safe_lshift_func_uint8_t_u_u((((((FAKE_DIVERGE(p_1337->group_1_offset, get_group_id(1), 10) >= (*p_1337->g_715)) , ((****p_1337->g_587) ^ (l_1130 = (l_1055 |= ((0x6476909CL & ((safe_lshift_func_uint8_t_u_s((p_9 = ((((((*l_1126) = l_38) == (*p_1337->g_53)) > (safe_div_func_int64_t_s_s(((FAKE_DIVERGE(p_1337->group_2_offset, get_group_id(2), 10) <= ((p_1337->g_72[6][0] & (&p_1337->g_412 != l_1129)) , p_10)) > l_1054[2][2]), p_1337->g_175))) != 0x7A3AL) < (-1L))), 0)) , (****p_1337->g_587))) | p_8))))) != 0x7DE5E9BAL) <= p_1337->g_593[p_1337->g_34]) , 1UL), 5)))) , (*p_1337->g_587)) != (void*)0), l_1132)) , (void*)0) != &p_8))) < 0x6C13L), FAKE_DIVERGE(p_1337->global_0_offset, get_global_id(0), 10)));
                    l_1166++;
                }
                for (l_1055 = 5; (l_1055 >= 0); l_1055 -= 1)
                { /* block id: 529 */
                    int32_t *l_1170 = &l_1149;
                    int32_t *l_1171 = &l_1165[4][4];
                    int32_t *l_1172[8];
                    uint16_t *l_1195 = (void*)0;
                    uint16_t *l_1196 = &p_1337->g_857;
                    int8_t *l_1200 = &p_1337->g_566[3][5][2];
                    int32_t l_1229 = 0x624AADB5L;
                    int i;
                    for (i = 0; i < 8; i++)
                        l_1172[i] = &p_1337->g_123[0][0][0];
                    for (l_1145 = 0; (l_1145 <= 5); l_1145 += 1)
                    { /* block id: 532 */
                        int32_t l_1169[7][6] = {{0L,1L,1L,3L,1L,1L},{0L,1L,1L,3L,1L,1L},{0L,1L,1L,3L,1L,1L},{0L,1L,1L,3L,1L,1L},{0L,1L,1L,3L,1L,1L},{0L,1L,1L,3L,1L,1L},{0L,1L,1L,3L,1L,1L}};
                        int i, j;
                        (**p_1337->g_53) ^= p_1337->g_593[l_1145];
                        if ((***p_1337->g_588))
                            continue;
                        l_1169[1][3] = p_10;
                    }
                    --p_1337->g_1174[7][0];
                    (****p_1337->g_587) |= ((safe_lshift_func_uint8_t_u_s(p_1337->g_593[p_1337->g_15], ((*l_1200) = (safe_lshift_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u(p_1337->g_219, (safe_rshift_func_uint8_t_u_s((((safe_sub_func_uint32_t_u_u(((*l_1015) <= (safe_mul_func_int16_t_s_s((safe_div_func_uint32_t_u_u(p_8, (safe_div_func_int32_t_s_s((safe_sub_func_uint8_t_u_u((l_1165[4][4] |= (4294967295UL | (((*l_1196) = (p_10 ^ (*p_1337->g_31))) <= ((p_1337->g_1117 >= ((void*)0 == l_1199[7][0])) > p_8)))), GROUP_DIVERGE(0, 1))), (*p_1337->g_715))))), FAKE_DIVERGE(p_1337->group_0_offset, get_group_id(0), 10)))), 0L)) , GROUP_DIVERGE(0, 1)) == p_11), 2)))) & p_8), p_8))))) || l_1054[4][0]);
                    for (p_9 = 0; (p_9 < 2); ++p_9)
                    { /* block id: 544 */
                        l_1155 = ((safe_add_func_int16_t_s_s((l_1072 == ((**p_1337->g_691) , (void*)0)), ((*l_1015) = (l_1205 == (p_1337->g_1208 = l_1206))))) >= (safe_rshift_func_int8_t_s_u(9L, 6)));
                        l_1148 &= 0x4CAA3410L;
                        if (p_11)
                            continue;
                        l_1157[0] = (((safe_lshift_func_int16_t_s_s(0x4764L, (0x4C92B51CA12C5E17L | (((*l_1196) = ((safe_div_func_int32_t_s_s(((safe_rshift_func_uint16_t_u_s(p_1337->g_880.f8, (l_1130 = (safe_mod_func_int16_t_s_s((safe_mod_func_int16_t_s_s(0x2203L, (safe_lshift_func_uint8_t_u_u((255UL ^ l_1224), (+(*l_1170)))))), (-4L)))))) > (safe_add_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((((p_8 == p_12) > p_11) != l_1055), l_1162)), l_1160))), l_1229)) <= (*l_1015))) > FAKE_DIVERGE(p_1337->group_1_offset, get_group_id(1), 10))))) != 0x73L) >= 0x16ABCF05E2DD61A9L);
                    }
                }
                return l_1137;
            }
        }
        (*l_1015) = (((safe_rshift_func_int8_t_s_s(((l_1165[4][4] = (l_1232[7][5] != (l_1235 = l_1233))) < (((+((0x90L & ((l_1147 |= (0x4F7FL && (((safe_rshift_func_int16_t_s_u(((p_10 | (safe_mul_func_uint8_t_u_u((safe_add_func_int32_t_s_s(((l_1055 = ((((*p_1337->g_31) = (((p_1337->g_219 = (safe_sub_func_int32_t_s_s((safe_add_func_uint8_t_u_u(l_1054[2][0], (safe_div_func_int64_t_s_s((safe_div_func_int64_t_s_s((safe_div_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(l_1155, (*l_1015))), (safe_mul_func_int16_t_s_s((*l_1015), l_1256[0][0])))), 0x4CFF3D814C91BBE4L)), p_1337->g_880.f8)))), p_10))) == (*l_1015)) == p_8)) | (*l_38)) && (*p_1337->g_715))) <= (-7L)), p_8)), l_1257[2]))) , 0x0E7CL), l_1158)) != p_9) || (*l_1015)))) != (*l_38))) < l_1256[0][0])) <= p_10) ^ (**p_1337->g_53))), 1)) == l_1130) >= l_1164);
        for (p_1337->g_415 = 0; (p_1337->g_415 <= 3); p_1337->g_415 += 1)
        { /* block id: 567 */
            int64_t l_1278[1][2];
            int32_t l_1320 = (-4L);
            int32_t l_1332[9][10][2] = {{{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)}},{{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)}},{{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)}},{{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)}},{{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)}},{{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)}},{{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)}},{{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)}},{{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)},{0x452BF016L,(-1L)}}};
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 2; j++)
                    l_1278[i][j] = 0L;
            }
            l_1259 = ((*p_1337->g_53) = (**p_1337->g_588));
            for (p_1337->g_1117 = 0; (p_1337->g_1117 <= 3); p_1337->g_1117 += 1)
            { /* block id: 572 */
                int16_t *l_1279[1][10] = {{&l_1132,&l_1132,&l_1132,&l_1132,&l_1132,&l_1132,&l_1132,&l_1132,&l_1132,&l_1132}};
                int32_t l_1280 = (-8L);
                int32_t l_1281 = 1L;
                int64_t l_1282 = 9L;
                uint64_t *l_1309[6][7] = {{(void*)0,&p_1337->g_725,(void*)0,&p_1337->g_725,&p_1337->g_725,&p_1337->g_725,(void*)0},{(void*)0,&p_1337->g_725,(void*)0,&p_1337->g_725,&p_1337->g_725,&p_1337->g_725,(void*)0},{(void*)0,&p_1337->g_725,(void*)0,&p_1337->g_725,&p_1337->g_725,&p_1337->g_725,(void*)0},{(void*)0,&p_1337->g_725,(void*)0,&p_1337->g_725,&p_1337->g_725,&p_1337->g_725,(void*)0},{(void*)0,&p_1337->g_725,(void*)0,&p_1337->g_725,&p_1337->g_725,&p_1337->g_725,(void*)0},{(void*)0,&p_1337->g_725,(void*)0,&p_1337->g_725,&p_1337->g_725,&p_1337->g_725,(void*)0}};
                int16_t l_1322 = (-10L);
                int32_t *l_1330 = (void*)0;
                int32_t *l_1331[4];
                int i, j;
                for (i = 0; i < 4; i++)
                    l_1331[i] = &l_1163;
                if ((((safe_lshift_func_uint8_t_u_u((p_12 == (*l_1259)), (((((*p_1337->g_31) = 1UL) || (safe_mul_func_int16_t_s_s(p_1337->g_170[0][6][2], (&p_12 != ((safe_unary_minus_func_int8_t_s(((safe_mod_func_int64_t_s_s((safe_add_func_int16_t_s_s(1L, (((**p_1337->g_691) = (((safe_lshift_func_int16_t_s_u((l_1281 = (l_1280 = ((((safe_div_func_int64_t_s_s(((p_9 = (safe_unary_minus_func_uint64_t_u((safe_sub_func_uint32_t_u_u(((((((p_9 & (((safe_lshift_func_int8_t_s_u((((p_9 <= (!(p_8 & 0UL))) && 4UL) <= 0L), l_1278[0][1])) , (*l_1259)) & (*l_1259))) & GROUP_DIVERGE(2, 1)) && p_9) >= (*p_1337->g_31)) , (void*)0) != (void*)0), (*p_1337->g_54)))))) && (*l_38)), p_1337->g_170[1][3][1])) != p_8) ^ l_1278[0][1]) < p_1337->g_205))), 3)) , 8UL) != (*p_1337->g_692))) & l_1282))), 0x1DBB81D161DA4D45L)) , l_1281))) , (void*)0))))) || 0x01FD0D5699FBB85BL) | 0x75FC158E730E2A35L))) ^ 0xEBL) <= p_8))
                { /* block id: 578 */
                    union U5 **l_1292 = &p_1337->g_719;
                    if ((safe_lshift_func_int16_t_s_s(p_9, 12)))
                    { /* block id: 579 */
                        int8_t l_1285 = 1L;
                        (***p_1337->g_588) = (((((**p_1337->g_691) >= (l_1285 , 0x79A48164A9B7A5D7L)) <= (((safe_mod_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s((safe_lshift_func_uint8_t_u_u(l_1278[0][1], ((void*)0 != l_1292))), p_12)), (safe_rshift_func_uint16_t_u_s((*l_1259), 13)))) & (+0x3FCCL)) || (*l_38))) ^ 0x549A29F2L) || FAKE_DIVERGE(p_1337->global_1_offset, get_global_id(1), 10));
                        return p_9;
                    }
                    else
                    { /* block id: 582 */
                        uint32_t l_1295[6][4] = {{1UL,0xE2585D5AL,1UL,1UL},{1UL,0xE2585D5AL,1UL,1UL},{1UL,0xE2585D5AL,1UL,1UL},{1UL,0xE2585D5AL,1UL,1UL},{1UL,0xE2585D5AL,1UL,1UL},{1UL,0xE2585D5AL,1UL,1UL}};
                        int i, j;
                        l_1295[0][0]--;
                        if ((***p_1337->g_588))
                            break;
                        return l_1278[0][0];
                    }
                }
                else
                { /* block id: 587 */
                    int32_t l_1298[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1298[i] = 0x633EF153L;
                    (*p_1337->g_54) = l_1298[0];
                    if ((l_1299 == (void*)0))
                    { /* block id: 589 */
                        int16_t l_1314 = 0x24A9L;
                        int32_t *l_1316 = &p_1337->g_123[0][0][0];
                        int32_t *l_1317 = &l_1161;
                        int32_t *l_1318 = &l_1055;
                        int32_t *l_1319[7] = {&l_1165[4][4],&l_1159,&l_1165[4][4],&l_1165[4][4],&l_1159,&l_1165[4][4],&l_1165[4][4]};
                        uint32_t l_1323 = 4294967295UL;
                        int i;
                        (*l_1015) |= (safe_mul_func_uint8_t_u_u(((safe_div_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(((safe_add_func_uint8_t_u_u(p_8, (l_1309[4][2] != (void*)0))) && (safe_mul_func_int16_t_s_s(l_1280, ((void*)0 == &p_1337->g_725)))), p_1337->g_107)), ((0UL <= (l_1298[0] = (safe_div_func_int16_t_s_s(((((&p_1337->g_415 == &p_12) ^ 0x72L) & l_1314) , p_11), p_10)))) , l_1282))) | (-2L)), p_1337->g_1315[2][2][3]));
                        ++l_1323;
                        (*l_1316) = (*p_1337->g_54);
                        (*l_1316) ^= (*l_1259);
                    }
                    else
                    { /* block id: 595 */
                        struct S0 **l_1328 = (void*)0;
                        struct S0 **l_1329 = &p_1337->g_1326;
                        (*l_1329) = p_1337->g_1326;
                    }
                    for (p_1337->g_1016 = 0; (p_1337->g_1016 <= 2); p_1337->g_1016 += 1)
                    { /* block id: 600 */
                        int i, j;
                        if (l_1054[p_1337->g_1117][p_1337->g_1016])
                            break;
                    }
                }
                ++l_1333[1];
            }
        }
    }
    return p_10;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_22(uint16_t  p_23, int8_t  p_24, uint32_t * p_25, struct S6 * p_1337)
{ /* block id: 7 */
    int32_t *l_33[6][7][2] = {{{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0}},{{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0}},{{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0}},{{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0}},{{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0}},{{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0}}};
    int32_t **l_35 = &l_33[0][0][0];
    uint64_t l_36 = 1UL;
    int i, j, k;
    (*l_35) = l_33[0][0][0];
    return l_36;
}


/* ------------------------------------------ */
/* 
 * reads : p_1337->g_595 p_1337->g_880.f4 p_1337->g_219 p_1337->g_880.f7 p_1337->g_566 p_1337->g_411 p_1337->g_587 p_1337->g_588 p_1337->g_53 p_1337->g_54 p_1337->g_107 p_1337->g_15
 * writes: p_1337->g_595 p_1337->g_880.f4 p_1337->g_219 p_1337->g_880.f7 p_1337->g_412 p_1337->g_107 p_1337->g_15
 */
uint32_t * func_43(uint8_t * p_44, struct S6 * p_1337)
{ /* block id: 419 */
    uint8_t l_949[8] = {255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL};
    int32_t l_970 = 5L;
    int32_t l_983 = 0x5860DF0FL;
    int32_t ***l_984 = &p_1337->g_53;
    uint32_t l_990 = 0x13DC6018L;
    int32_t l_1008 = 0x73F34482L;
    int32_t l_1009[5];
    int32_t l_1010 = 1L;
    int i;
    for (i = 0; i < 5; i++)
        l_1009[i] = 0x4EDBE27BL;
    for (p_1337->g_595 = (-23); (p_1337->g_595 <= 43); ++p_1337->g_595)
    { /* block id: 422 */
        uint8_t **l_946 = &p_1337->g_65;
        int32_t l_947[4][8][8] = {{{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L}},{{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L}},{{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L}},{{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L},{0x00D53C04L,1L,0L,0x38D6B7B2L,1L,(-1L),0x10FB9707L,0x25DDB185L}}};
        int i, j, k;
        for (p_1337->g_880.f4 = (-2); (p_1337->g_880.f4 > 40); p_1337->g_880.f4 = safe_add_func_uint16_t_u_u(p_1337->g_880.f4, 1))
        { /* block id: 425 */
            for (p_1337->g_219 = 0; (p_1337->g_219 <= 3); p_1337->g_219 += 1)
            { /* block id: 428 */
                uint32_t l_945 = 0x771CCFB7L;
                uint32_t *l_948 = (void*)0;
                for (p_1337->g_880.f7 = 0; (p_1337->g_880.f7 <= 1); p_1337->g_880.f7 += 1)
                { /* block id: 431 */
                    int i, j, k;
                    l_945 = (safe_lshift_func_uint8_t_u_u(p_1337->g_566[(p_1337->g_219 + 2)][(p_1337->g_880.f7 + 6)][p_1337->g_219], (~255UL)));
                    l_947[1][7][5] |= (&p_44 != ((*p_1337->g_411) = l_946));
                    return l_948;
                }
                l_949[7]--;
            }
        }
    }
    (*p_1337->g_54) = (****p_1337->g_587);
    for (p_1337->g_15 = (-2); (p_1337->g_15 != (-6)); p_1337->g_15--)
    { /* block id: 444 */
        int32_t ***l_965 = &p_1337->g_274;
        int32_t ****l_964 = &l_965;
        int32_t ***l_967[5][3] = {{&p_1337->g_274,&p_1337->g_274,&p_1337->g_274},{&p_1337->g_274,&p_1337->g_274,&p_1337->g_274},{&p_1337->g_274,&p_1337->g_274,&p_1337->g_274},{&p_1337->g_274,&p_1337->g_274,&p_1337->g_274},{&p_1337->g_274,&p_1337->g_274,&p_1337->g_274}};
        int32_t ****l_966 = &l_967[3][0];
        int16_t l_1011 = (-2L);
        uint8_t l_1012 = 255UL;
        int i, j;
        (1 + 1);
    }
    return &p_1337->g_670;
}


/* ------------------------------------------ */
/* 
 * reads : p_1337->g_53 p_1337->g_463 p_1337->g_15 p_1337->g_21 p_1337->g_691 p_1337->g_692 p_1337->g_72 p_1337->g_566 p_1337->g_107 p_1337->g_123 p_1337->g_593 p_1337->g_715 p_1337->g_670 p_1337->g_172
 * writes: p_1337->g_54 p_1337->g_463 p_1337->g_15 p_1337->g_811 p_1337->g_72 p_1337->g_107 p_1337->g_593 p_1337->g_725 p_1337->g_145 p_1337->g_123
 */
uint8_t * func_45(int64_t  p_46, int32_t  p_47, struct S6 * p_1337)
{ /* block id: 400 */
    int32_t *l_881 = &p_1337->g_107;
    int32_t l_885 = 0x5367D7B5L;
    int32_t l_891 = 0x0FA62052L;
    int32_t l_892 = 9L;
    int32_t l_893 = (-6L);
    int32_t l_894[5];
    int64_t l_895[1][10][2] = {{{0x082CB025E32A63BCL,(-1L)},{0x082CB025E32A63BCL,(-1L)},{0x082CB025E32A63BCL,(-1L)},{0x082CB025E32A63BCL,(-1L)},{0x082CB025E32A63BCL,(-1L)},{0x082CB025E32A63BCL,(-1L)},{0x082CB025E32A63BCL,(-1L)},{0x082CB025E32A63BCL,(-1L)},{0x082CB025E32A63BCL,(-1L)},{0x082CB025E32A63BCL,(-1L)}}};
    int16_t l_896 = 0x25A5L;
    uint32_t l_899 = 1UL;
    int64_t ***l_921[4][3][9] = {{{&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_850,(void*)0,&p_1337->g_850,&p_1337->g_850,(void*)0,&p_1337->g_850},{&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_850,(void*)0,&p_1337->g_850,&p_1337->g_850,(void*)0,&p_1337->g_850},{&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_850,(void*)0,&p_1337->g_850,&p_1337->g_850,(void*)0,&p_1337->g_850}},{{&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_850,(void*)0,&p_1337->g_850,&p_1337->g_850,(void*)0,&p_1337->g_850},{&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_850,(void*)0,&p_1337->g_850,&p_1337->g_850,(void*)0,&p_1337->g_850},{&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_850,(void*)0,&p_1337->g_850,&p_1337->g_850,(void*)0,&p_1337->g_850}},{{&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_850,(void*)0,&p_1337->g_850,&p_1337->g_850,(void*)0,&p_1337->g_850},{&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_850,(void*)0,&p_1337->g_850,&p_1337->g_850,(void*)0,&p_1337->g_850},{&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_850,(void*)0,&p_1337->g_850,&p_1337->g_850,(void*)0,&p_1337->g_850}},{{&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_850,(void*)0,&p_1337->g_850,&p_1337->g_850,(void*)0,&p_1337->g_850},{&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_850,(void*)0,&p_1337->g_850,&p_1337->g_850,(void*)0,&p_1337->g_850},{&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_850,(void*)0,&p_1337->g_850,&p_1337->g_850,(void*)0,&p_1337->g_850}}};
    int16_t l_935 = 1L;
    int32_t l_936 = (-1L);
    uint8_t *l_938 = &p_1337->g_593[5];
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_894[i] = 0x4143A618L;
    (*p_1337->g_53) = l_881;
    (*p_1337->g_53) = l_881;
    for (p_1337->g_463 = 0; (p_1337->g_463 > 2); p_1337->g_463 = safe_add_func_int8_t_s_s(p_1337->g_463, 1))
    { /* block id: 405 */
        int32_t *l_884 = &p_1337->g_123[1][0][1];
        int32_t *l_886 = &p_1337->g_880.f7;
        int32_t *l_887 = &p_1337->g_123[0][0][0];
        int32_t l_888 = 0x1BAD3810L;
        int32_t *l_889 = (void*)0;
        int32_t *l_890[7][7][3] = {{{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0}},{{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0}},{{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0}},{{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0}},{{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0}},{{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0}},{{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0},{&p_1337->g_107,&p_1337->g_107,(void*)0}}};
        int32_t l_897[6][4] = {{0x17B52E00L,0x17B52E00L,0x17B52E00L,0x17B52E00L},{0x17B52E00L,0x17B52E00L,0x17B52E00L,0x17B52E00L},{0x17B52E00L,0x17B52E00L,0x17B52E00L,0x17B52E00L},{0x17B52E00L,0x17B52E00L,0x17B52E00L,0x17B52E00L},{0x17B52E00L,0x17B52E00L,0x17B52E00L,0x17B52E00L},{0x17B52E00L,0x17B52E00L,0x17B52E00L,0x17B52E00L}};
        int32_t l_898 = 0L;
        int i, j, k;
        --l_899;
    }
    for (p_1337->g_15 = 16; (p_1337->g_15 <= 16); ++p_1337->g_15)
    { /* block id: 410 */
        int64_t ****l_922 = &p_1337->g_811;
        int32_t l_929 = 0x7583A5A9L;
        int64_t l_934[1];
        int32_t l_937 = (-3L);
        int i;
        for (i = 0; i < 1; i++)
            l_934[i] = 0x39B0D9F36D22914AL;
        l_937 ^= (safe_rshift_func_uint8_t_u_s(0x45L, (((safe_lshift_func_uint16_t_u_u((p_1337->g_21 <= (((p_46 == (safe_rshift_func_int16_t_s_s(0x4131L, (safe_mul_func_int16_t_s_s((safe_unary_minus_func_int8_t_s((safe_rshift_func_int8_t_s_s(((safe_add_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((p_47 || (l_921[3][0][5] != ((*l_922) = (void*)0))), (l_929 = (safe_lshift_func_uint16_t_u_u((safe_add_func_int16_t_s_s(((safe_sub_func_int64_t_s_s((l_929 != (safe_mul_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(((((((**p_1337->g_691) ^= l_929) || p_46) && 65534UL) >= p_46) , l_934[0]), GROUP_DIVERGE(1, 1))), FAKE_DIVERGE(p_1337->local_2_offset, get_local_id(2), 10)))), p_1337->g_566[3][5][2])) > l_934[0]), (*l_881))), l_935))))), 9UL)) || (*l_881)), 1)))), 0L))))) & l_934[0]) >= p_1337->g_123[1][0][0])), FAKE_DIVERGE(p_1337->local_1_offset, get_local_id(1), 10))) < l_936) >= (-5L))));
        if (l_934[0])
            continue;
        (*p_1337->g_53) = func_55(&l_881, p_1337);
    }
    return l_938;
}


/* ------------------------------------------ */
/* 
 * reads : p_1337->g_205 p_1337->g_566 p_1337->g_670 p_1337->g_170 p_1337->g_172 p_1337->g_220 p_1337->g_593 p_1337->g_32 p_1337->g_123 p_1337->g_715 p_1337->g_463 p_1337->g_145 p_1337->g_691 p_1337->g_857 p_1337->g_31 p_1337->g_725 p_1337->g_595
 * writes: p_1337->g_205 p_1337->g_170 p_1337->g_172 p_1337->g_598 p_1337->g_670 p_1337->g_804 p_1337->g_811 p_1337->g_123 p_1337->g_566 p_1337->g_145 p_1337->g_691 p_1337->g_850 p_1337->g_725 p_1337->g_857 p_1337->g_34 p_1337->g_54
 */
int32_t  func_48(int32_t ** p_49, int32_t * p_50, int32_t  p_51, int32_t ** p_52, struct S6 * p_1337)
{ /* block id: 343 */
    uint8_t l_779 = 0x7BL;
    int8_t l_784 = 0x3DL;
    int32_t l_795 = 5L;
    int64_t ***l_806[7] = {&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691};
    int32_t ***l_822 = (void*)0;
    int32_t ****l_821 = &l_822;
    uint64_t *l_836[3];
    uint32_t *l_867 = (void*)0;
    int32_t l_870 = 0x2903A61CL;
    int32_t l_871[2][10] = {{0x745F431FL,0x745F431FL,2L,(-2L),0L,(-2L),2L,0x745F431FL,0x745F431FL,2L},{0x745F431FL,0x745F431FL,2L,(-2L),0L,(-2L),2L,0x745F431FL,0x745F431FL,2L}};
    int64_t l_872 = 0x1627EFAB579178FAL;
    int i, j;
    for (i = 0; i < 3; i++)
        l_836[i] = (void*)0;
    for (p_1337->g_205 = 26; (p_1337->g_205 != 52); p_1337->g_205++)
    { /* block id: 346 */
        int16_t ***l_785 = &p_1337->g_741;
        int8_t *l_794 = (void*)0;
        int8_t *l_796 = &p_1337->g_170[1][0][2];
        int32_t l_797 = 0x54EECE03L;
        int8_t *l_798 = &p_1337->g_172;
        uint64_t *l_799 = &p_1337->g_598;
        int64_t ***l_805[7][2][9] = {{{&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691},{&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691}},{{&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691},{&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691}},{{&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691},{&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691}},{{&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691},{&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691}},{{&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691},{&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691}},{{&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691},{&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691}},{{&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691},{&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,&p_1337->g_691,(void*)0,&p_1337->g_691}}};
        int64_t ***l_810 = &p_1337->g_691;
        int64_t ***l_812 = &p_1337->g_691;
        uint32_t l_839[10][4] = {{4294967294UL,5UL,4294967294UL,4294967294UL},{4294967294UL,5UL,4294967294UL,4294967294UL},{4294967294UL,5UL,4294967294UL,4294967294UL},{4294967294UL,5UL,4294967294UL,4294967294UL},{4294967294UL,5UL,4294967294UL,4294967294UL},{4294967294UL,5UL,4294967294UL,4294967294UL},{4294967294UL,5UL,4294967294UL,4294967294UL},{4294967294UL,5UL,4294967294UL,4294967294UL},{4294967294UL,5UL,4294967294UL,4294967294UL},{4294967294UL,5UL,4294967294UL,4294967294UL}};
        int32_t *l_869[10] = {&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0]};
        uint32_t l_873 = 4294967295UL;
        int i, j, k;
        if (((safe_lshift_func_int16_t_s_u((~(((*l_799) = (l_779 , ((safe_mod_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(((l_784 , 0x3467A119L) | (l_785 != (void*)0)), 9)), (safe_div_func_int32_t_s_s((((((*l_798) ^= ((safe_lshift_func_uint16_t_u_u(((0x169FA0BAL & ((((p_51 == ((safe_mul_func_int8_t_s_s(((*l_796) ^= (l_795 = ((p_1337->g_566[3][5][2] && p_1337->g_670) > p_51))), l_784)) < (-1L))) != l_797) > p_51) != l_784)) > l_797), p_51)) , l_784)) >= p_1337->g_220[5][4]) && p_51) != p_51), 0x27DF0587L)))) , p_1337->g_593[5]))) ^ (-1L))), p_1337->g_205)) < p_51))
        { /* block id: 351 */
            int64_t ***l_802 = &p_1337->g_691;
            int64_t ****l_803[5][5][9] = {{{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802}},{{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802}},{{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802}},{{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802}},{{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802},{&l_802,&l_802,(void*)0,&l_802,&l_802,(void*)0,&l_802,&l_802,&l_802}}};
            int32_t l_807 = 0x1567FE99L;
            int32_t *l_813 = &p_1337->g_123[0][0][1];
            int16_t *l_860 = &p_1337->g_145[3];
            int64_t l_861 = (-1L);
            uint64_t *l_862 = &p_1337->g_725;
            uint16_t *l_863 = &p_1337->g_857;
            int32_t *l_864 = &p_1337->g_34;
            int i, j, k;
            for (p_1337->g_670 = (-6); (p_1337->g_670 > 9); p_1337->g_670 = safe_add_func_int64_t_s_s(p_1337->g_670, 6))
            { /* block id: 354 */
                if (l_797)
                    break;
            }
            if (((((~(((((((p_1337->g_804 = l_802) == (l_806[3] = (l_805[4][1][8] = &p_1337->g_691))) <= (!((p_51 > (18446744073709551613UL && 0xA95D4E91FE5B36B9L)) < ((l_807 | ((GROUP_DIVERGE(1, 1) >= p_1337->g_32) , (safe_div_func_int64_t_s_s((p_51 , (((*l_813) |= (((p_1337->g_811 = (l_810 = l_810)) != l_812) < 0x6E2685FBL)) & (*p_1337->g_715))), p_1337->g_463)))) >= l_797)))) || l_784) > p_51) , FAKE_DIVERGE(p_1337->global_1_offset, get_global_id(1), 10)) & (-8L))) > l_797) ^ l_807) || p_51))
            { /* block id: 363 */
                int64_t l_820 = 0x515BA7B468882E48L;
                int32_t l_823 = 0x46017F83L;
                int32_t l_824 = 0x11C6D526L;
                uint64_t **l_833 = &l_799;
                uint64_t *l_835[3];
                uint64_t **l_834 = &l_835[0];
                uint32_t l_837 = 0x0D95939DL;
                int16_t *l_838 = &p_1337->g_145[2];
                int i;
                for (i = 0; i < 3; i++)
                    l_835[i] = &p_1337->g_598;
                (*l_813) &= (l_795 |= 0L);
                (*l_813) = (((safe_lshift_func_uint8_t_u_s((~(safe_mul_func_uint16_t_u_u((((safe_div_func_uint16_t_u_u((((*l_838) &= ((&l_784 != ((((l_797 = l_820) && ((l_824 = ((l_823 = ((void*)0 != l_821)) && l_797)) & (safe_rshift_func_int8_t_s_s((l_820 & (4L >= ((safe_div_func_uint32_t_u_u(((((p_1337->g_566[4][6][0] &= (safe_add_func_int8_t_s_s(((safe_mod_func_uint8_t_u_u((((*l_834) = ((*l_833) = &p_1337->g_595)) != l_836[2]), 0x5FL)) <= (*l_813)), 0L))) != p_51) < l_837) < p_1337->g_172), l_797)) != 0x49BE6DC7E1D289E1L))), p_1337->g_670)))) & p_51) , (void*)0)) != l_837)) < p_51), 6L)) , FAKE_DIVERGE(p_1337->local_1_offset, get_local_id(1), 10)) < p_51), p_51))), (*l_813))) <= p_51) >= l_820);
            }
            else
            { /* block id: 374 */
                if (l_839[4][1])
                    break;
            }
            (*l_813) |= l_839[3][1];
            (*l_864) = ((*l_813) = (safe_sub_func_uint32_t_u_u((safe_div_func_uint32_t_u_u((((*l_796) = (l_839[7][2] || (safe_sub_func_uint32_t_u_u(((*p_1337->g_715) = ((safe_mul_func_uint16_t_u_u(l_797, (((*l_863) = ((((*l_862) = (((!((0x2DL & ((((*l_860) = (l_839[3][3] , ((safe_lshift_func_int16_t_s_s((((*l_810) = (*l_810)) == (p_1337->g_850 = (void*)0)), ((safe_div_func_int16_t_s_s((safe_sub_func_int8_t_s_s((p_51 >= (p_1337->g_857 < (((safe_mul_func_uint16_t_u_u(p_1337->g_220[2][0], 4L)) , (void*)0) != (void*)0))), l_839[4][1])), 65535UL)) , 2L))) < p_51))) && 0xA82BL) && 0xA9L)) || (*l_813))) > l_861) , l_839[4][1])) , p_51) != (-1L))) && p_51))) >= p_51)), l_839[4][1])))) ^ (-9L)), FAKE_DIVERGE(p_1337->global_2_offset, get_global_id(2), 10))), (*p_1337->g_31))));
        }
        else
        { /* block id: 387 */
            uint32_t l_868 = 4294967295UL;
            l_868 ^= (l_797 ^= (((FAKE_DIVERGE(p_1337->group_1_offset, get_group_id(1), 10) && (safe_mul_func_uint8_t_u_u(p_51, ((void*)0 == l_796)))) , ((void*)0 == l_867)) & 0x3D38DBD2L));
        }
        l_873++;
    }
    (*p_52) = (void*)0;
    for (p_1337->g_725 = 13; (p_1337->g_725 >= 34); p_1337->g_725 = safe_add_func_uint16_t_u_u(p_1337->g_725, 2))
    { /* block id: 396 */
        struct S0 *l_879 = &p_1337->g_880;
        struct S0 **l_878 = &l_879;
        (*l_878) = (void*)0;
    }
    return p_1337->g_595;
}


/* ------------------------------------------ */
/* 
 * reads : p_1337->g_107 p_1337->g_593 p_1337->g_725 p_1337->g_54 p_1337->g_715 p_1337->g_670 p_1337->g_172
 * writes: p_1337->g_107 p_1337->g_593 p_1337->g_725 p_1337->g_145 p_1337->g_123
 */
int32_t * func_55(int32_t ** p_56, struct S6 * p_1337)
{ /* block id: 326 */
    uint16_t l_749 = 0x874DL;
    int32_t l_754 = 1L;
    uint32_t *l_771 = &p_1337->g_415;
    uint8_t ****l_774[2][8] = {{&p_1337->g_411,&p_1337->g_411,&p_1337->g_411,&p_1337->g_411,&p_1337->g_411,&p_1337->g_411,&p_1337->g_411,&p_1337->g_411},{&p_1337->g_411,&p_1337->g_411,&p_1337->g_411,&p_1337->g_411,&p_1337->g_411,&p_1337->g_411,&p_1337->g_411,&p_1337->g_411}};
    int i, j;
    for (p_1337->g_107 = 23; (p_1337->g_107 >= (-3)); p_1337->g_107--)
    { /* block id: 329 */
        int32_t *l_748[6] = {&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0]};
        uint8_t *l_755 = &p_1337->g_593[0];
        int8_t l_758[3][6][8] = {{{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L},{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L},{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L},{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L},{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L},{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L}},{{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L},{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L},{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L},{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L},{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L},{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L}},{{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L},{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L},{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L},{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L},{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L},{0x30L,0x5EL,0x3CL,(-3L),0x51L,0L,0x30L,0x01L}}};
        int16_t *l_772 = &p_1337->g_145[2];
        uint8_t ****l_773 = &p_1337->g_411;
        int i, j, k;
        --l_749;
        l_758[1][1][0] = ((l_754 = ((safe_div_func_uint8_t_u_u((--(*l_755)), l_749)) && l_749)) > GROUP_DIVERGE(1, 1));
        for (p_1337->g_725 = 0; (p_1337->g_725 <= 26); p_1337->g_725++)
        { /* block id: 336 */
            return (*p_56);
        }
        p_1337->g_123[0][0][0] = (safe_mul_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1337->local_1_offset, get_local_id(1), 10), 4)), ((*p_1337->g_715) , (safe_div_func_uint8_t_u_u(((safe_add_func_int32_t_s_s((p_1337->g_172 , l_749), (FAKE_DIVERGE(p_1337->group_2_offset, get_group_id(2), 10) , (safe_mod_func_uint16_t_u_u(((1UL == l_754) | ((void*)0 != l_771)), ((*l_772) = l_749)))))) <= (((l_773 == l_774[1][0]) >= l_749) >= 0x1EBD6133L)), l_749)))));
    }
    return (*p_56);
}


/* ------------------------------------------ */
/* 
 * reads : p_1337->g_74 p_1337->g_32 p_1337->g_53 p_1337->g_107 p_1337->g_21 p_1337->g_72 p_1337->g_34 p_1337->g_15 p_1337->g_31 p_1337->g_123 p_1337->g_66 p_1337->g_5 p_1337->g_170 p_1337->g_145 p_1337->g_219 p_1337->g_220 p_1337->g_65 p_1337->g_175 p_1337->g_205 p_1337->g_587 p_1337->g_593 p_1337->g_595 p_1337->g_692 p_1337->g_740 p_1337->g_463
 * writes: p_1337->g_21 p_1337->g_74 p_1337->g_65 p_1337->g_99 p_1337->g_5 p_1337->g_54 p_1337->g_107 p_1337->g_34 p_1337->g_123 p_1337->g_72 p_1337->g_66 p_1337->g_170 p_1337->g_172 p_1337->g_175 p_1337->g_187 p_1337->g_205 p_1337->g_219 p_1337->g_220 p_1337->g_32 p_1337->g_274 p_1337->g_463 p_1337->g_145 p_1337->g_566 p_1337->g_595 p_1337->g_725
 */
int32_t ** func_57(uint8_t  p_58, uint8_t  p_59, uint32_t * p_60, uint8_t * p_61, uint32_t  p_62, struct S6 * p_1337)
{ /* block id: 13 */
    uint8_t *l_98 = (void*)0;
    int32_t *l_100 = &p_1337->g_15;
    int32_t l_267 = (-1L);
    int32_t l_268 = 0x5F2F0760L;
    uint8_t **l_279 = &p_1337->g_65;
    int8_t l_324 = 0x12L;
    int64_t l_335 = 0x1EAF65B7B6F859AAL;
    int32_t l_336 = 0L;
    int32_t l_376 = (-8L);
    int32_t l_377[10][7][3] = {{{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L}},{{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L}},{{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L}},{{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L}},{{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L}},{{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L}},{{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L}},{{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L}},{{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L}},{{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L},{6L,1L,0x5172E1B9L}}};
    int64_t l_438[5] = {0L,0L,0L,0L,0L};
    uint16_t l_446 = 0x395DL;
    int32_t **l_461 = &l_100;
    uint32_t l_478[4] = {5UL,5UL,5UL,5UL};
    uint64_t *l_518 = &p_1337->g_74;
    int32_t *l_543 = &p_1337->g_123[1][0][0];
    uint64_t l_568 = 0x5CDB4B3290DC0F5AL;
    uint64_t l_607 = 18446744073709551612UL;
    uint32_t l_624 = 4294967286UL;
    uint32_t l_627 = 4294967295UL;
    int64_t l_669[3][8][6] = {{{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)}},{{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)}},{{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)},{1L,0x0E1B18A43F410259L,8L,(-1L),(-6L),(-3L)}}};
    int64_t *l_690 = (void*)0;
    int64_t **l_689 = &l_690;
    uint16_t *l_742 = &p_1337->g_219;
    uint8_t l_743 = 246UL;
    int32_t *l_744 = &l_376;
    int32_t **l_745 = &l_100;
    int i, j, k;
lbl_314:
    for (p_1337->g_21 = 18; (p_1337->g_21 > 31); p_1337->g_21 = safe_add_func_int32_t_s_s(p_1337->g_21, 1))
    { /* block id: 16 */
        int32_t *l_69 = &p_1337->g_34;
        int32_t l_70 = (-1L);
        int32_t *l_71[2][8][6] = {{{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0}},{{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0},{&p_1337->g_34,(void*)0,&p_1337->g_15,(void*)0,&p_1337->g_34,(void*)0}}};
        int8_t l_73 = 0x4CL;
        uint8_t **l_82 = &p_1337->g_65;
        uint16_t *l_218[5] = {&p_1337->g_219,&p_1337->g_219,&p_1337->g_219,&p_1337->g_219,&p_1337->g_219};
        int i, j, k;
        --p_1337->g_74;
        p_1337->g_220[5][4] |= func_22(p_1337->g_32, (+(((p_62 ^ ((*p_61) = (func_22((p_1337->g_219 &= (safe_mod_func_int16_t_s_s((safe_unary_minus_func_int32_t_s((safe_mul_func_int8_t_s_s((+(((*l_82) = (void*)0) == &p_1337->g_66)), (safe_add_func_int8_t_s_s((safe_sub_func_uint16_t_u_u(func_87(func_91(l_71[0][6][0], (p_1337->g_99 = ((safe_sub_func_int64_t_s_s(0L, ((void*)0 != &l_70))) , l_98)), l_100, p_60, p_1337), (*l_100), (*l_100), p_1337), 1UL)), p_1337->g_145[2])))))), p_59))), p_1337->g_15, &p_1337->g_32, p_1337) & p_59))) , p_58) , p_1337->g_123[1][0][0])), l_100, p_1337);
        p_1337->g_123[0][0][1] = ((((FAKE_DIVERGE(p_1337->group_1_offset, get_group_id(1), 10) , (*l_69)) | p_1337->g_220[5][4]) | (safe_rshift_func_uint16_t_u_s(p_1337->g_34, (safe_add_func_uint32_t_u_u((safe_rshift_func_int8_t_s_s(p_1337->g_74, ((*l_100) , p_62))), 0UL))))) == ((*l_82) == &p_1337->g_220[4][2]));
        for (p_1337->g_205 = 12; (p_1337->g_205 <= 47); ++p_1337->g_205)
        { /* block id: 57 */
            int64_t l_229 = 0L;
            int32_t **l_230 = &l_69;
            l_229 ^= 0x4EDF9DBFL;
            return &p_1337->g_54;
        }
    }
    for (p_58 = 0; (p_58 == 12); p_58 = safe_add_func_int32_t_s_s(p_58, 3))
    { /* block id: 64 */
        uint32_t l_233[4];
        int32_t l_238 = 1L;
        int32_t l_260 = 0x08E8DD6AL;
        int32_t **l_262 = (void*)0;
        int32_t l_270 = 0L;
        uint8_t l_337 = 0x82L;
        uint8_t ***l_371 = &l_279;
        int32_t l_378[2];
        int16_t l_381 = 0L;
        int32_t l_383 = (-1L);
        uint16_t *l_396[7];
        uint8_t l_405[5][10] = {{0xF3L,0x36L,3UL,255UL,9UL,0xF3L,255UL,252UL,255UL,0xF3L},{0xF3L,0x36L,3UL,255UL,9UL,0xF3L,255UL,252UL,255UL,0xF3L},{0xF3L,0x36L,3UL,255UL,9UL,0xF3L,255UL,252UL,255UL,0xF3L},{0xF3L,0x36L,3UL,255UL,9UL,0xF3L,255UL,252UL,255UL,0xF3L},{0xF3L,0x36L,3UL,255UL,9UL,0xF3L,255UL,252UL,255UL,0xF3L}};
        uint16_t l_570 = 1UL;
        int32_t *l_701 = &p_1337->g_123[0][0][0];
        uint64_t l_716 = 2UL;
        int i, j;
        for (i = 0; i < 4; i++)
            l_233[i] = 0UL;
        for (i = 0; i < 2; i++)
            l_378[i] = 1L;
        for (i = 0; i < 7; i++)
            l_396[i] = &p_1337->g_219;
        (*p_1337->g_53) = p_60;
        (*p_1337->g_53) = p_60;
        if (l_233[0])
        { /* block id: 67 */
            uint32_t l_259 = 0x621D1AF2L;
            int32_t l_269 = 8L;
            uint16_t l_271 = 0x8461L;
            int32_t l_300[6][9][3] = {{{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L}},{{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L}},{{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L}},{{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L}},{{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L}},{{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L},{1L,3L,0x38274297L}}};
            int32_t **l_302 = &l_100;
            int32_t l_331 = 0x61A87ECDL;
            int32_t l_334 = 0L;
            uint8_t l_346 = 0xACL;
            int16_t **l_355 = (void*)0;
            int32_t l_379 = 4L;
            int32_t l_380[3];
            int32_t l_382[2][7][2] = {{{(-5L),(-5L)},{(-5L),(-5L)},{(-5L),(-5L)},{(-5L),(-5L)},{(-5L),(-5L)},{(-5L),(-5L)},{(-5L),(-5L)}},{{(-5L),(-5L)},{(-5L),(-5L)},{(-5L),(-5L)},{(-5L),(-5L)},{(-5L),(-5L)},{(-5L),(-5L)},{(-5L),(-5L)}}};
            uint64_t l_439 = 18446744073709551615UL;
            uint8_t ***l_445[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            uint32_t l_454 = 6UL;
            int8_t l_540[4] = {1L,1L,1L,1L};
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_380[i] = 0x05E8B3B8L;
            for (p_1337->g_66 = 0; (p_1337->g_66 > 24); ++p_1337->g_66)
            { /* block id: 70 */
                uint16_t *l_239 = &p_1337->g_219;
                int32_t l_258[4] = {(-1L),(-1L),(-1L),(-1L)};
                int32_t l_281[7][10][3] = {{{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L}},{{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L}},{{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L}},{{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L}},{{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L}},{{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L}},{{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L},{0x274D7577L,0x64F591B0L,0x64F591B0L}}};
                int8_t *l_298 = &p_1337->g_170[0][6][2];
                int32_t l_299[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                int32_t ***l_305 = (void*)0;
                int32_t *l_318 = &l_268;
                int32_t *l_319 = (void*)0;
                int32_t *l_320 = &l_281[3][3][2];
                int32_t *l_321 = &l_268;
                int32_t *l_322 = &p_1337->g_34;
                int32_t *l_323 = &l_269;
                int32_t *l_325 = (void*)0;
                int32_t *l_326 = (void*)0;
                int32_t *l_327 = (void*)0;
                int32_t *l_328 = (void*)0;
                int32_t *l_329 = &l_269;
                int32_t *l_330 = (void*)0;
                int32_t *l_332 = (void*)0;
                int32_t *l_333[9][6][4] = {{{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]}},{{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]}},{{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]}},{{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]}},{{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]}},{{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]}},{{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]}},{{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]}},{{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&l_267,&l_267,&p_1337->g_123[0][0][0]}}};
                int i, j, k;
                if ((safe_lshift_func_uint16_t_u_u((++(*l_239)), (0xD36738FE241AC8A1L > p_62))))
                { /* block id: 72 */
                    int32_t *l_248 = &p_1337->g_107;
                    int32_t *l_261 = &l_238;
                    int32_t ***l_263 = &l_262;
                    int32_t l_266[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_266[i] = 0L;
                    (*l_261) &= ((((safe_lshift_func_int8_t_s_s(((safe_div_func_int8_t_s_s((safe_add_func_int16_t_s_s((0x74L != (((void*)0 != &p_58) < (((((*l_248) |= 0x67360DF4L) || (safe_mod_func_int64_t_s_s(p_1337->g_123[0][0][0], FAKE_DIVERGE(p_1337->group_2_offset, get_group_id(2), 10)))) ^ GROUP_DIVERGE(0, 1)) >= (safe_mul_func_int8_t_s_s((((safe_unary_minus_func_int8_t_s(2L)) , (safe_lshift_func_uint16_t_u_s((((p_58 , ((p_59 > (safe_lshift_func_int8_t_s_s(l_258[2], 4))) == (*p_61))) || l_259) & FAKE_DIVERGE(p_1337->group_0_offset, get_group_id(0), 10)), 7))) || p_62), l_260))))), l_258[0])), p_1337->g_123[0][0][1])) , p_1337->g_145[4]), 2)) != p_58) || 65533UL) , p_62);
                    if ((((*l_261) , (((((*p_1337->g_31) |= (p_62 & 1L)) , (p_1337->g_170[0][6][2] <= (FAKE_DIVERGE(p_1337->local_2_offset, get_local_id(2), 10) , (((*l_263) = l_262) == (void*)0)))) , &l_98) != &p_61)) , (GROUP_DIVERGE(0, 1) & ((void*)0 != &p_61))))
                    { /* block id: 77 */
                        int32_t *l_264 = &p_1337->g_107;
                        int32_t *l_265[8] = {&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238};
                        int i;
                        --l_271;
                        return &p_1337->g_54;
                    }
                    else
                    { /* block id: 80 */
                        uint8_t **l_278 = &l_98;
                        uint8_t ***l_277 = &l_278;
                        p_1337->g_274 = &l_100;
                        (*l_261) = (safe_div_func_uint8_t_u_u((((*l_277) = (((p_1337->g_74 = p_58) && (*l_100)) , &p_61)) != (l_279 = &p_1337->g_65)), 255UL));
                    }
                    if (p_62)
                        break;
                }
                else
                { /* block id: 88 */
                    int16_t *l_280[2];
                    int32_t l_287 = 0x69746631L;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_280[i] = &p_1337->g_145[2];
                    l_287 |= ((l_269 = (((*l_279) = (void*)0) != &p_58)) <= ((l_281[3][3][2] |= l_258[0]) & ((safe_unary_minus_func_uint32_t_u((safe_mod_func_uint32_t_u_u(((*p_1337->g_31) = FAKE_DIVERGE(p_1337->group_0_offset, get_group_id(0), 10)), (safe_add_func_uint8_t_u_u(0x4EL, (FAKE_DIVERGE(p_1337->local_2_offset, get_local_id(2), 10) , p_58))))))) < 0xC81A5533B808DDD2L)));
                }
                if (((safe_mul_func_int8_t_s_s(p_1337->g_175, (safe_rshift_func_int8_t_s_s(0x42L, ((((*l_279) == (void*)0) & (safe_rshift_func_int8_t_s_u(((((&p_1337->g_170[0][6][2] == &p_1337->g_175) <= (l_281[3][3][2] , (((safe_mul_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s(((*l_298) = 7L), l_299[0])) ^ 0x1D57944C8F225E8CL), p_59)) || l_300[3][2][2]) | p_59))) ^ l_258[2]) > p_62), p_1337->g_123[0][0][0]))) , 0L))))) , l_258[3]))
                { /* block id: 96 */
                    int32_t *l_301 = &l_238;
                    (*l_301) = (p_1337->g_107 = 0x5D2E531EL);
                    (*l_301) &= p_59;
                    for (l_269 = 1; (l_269 <= 5); l_269 += 1)
                    { /* block id: 102 */
                        return &p_1337->g_54;
                    }
                    (*l_301) &= (((p_62 , (safe_div_func_uint8_t_u_u(l_258[0], ((l_305 != (void*)0) | p_1337->g_205)))) || (safe_mod_func_int64_t_s_s((safe_rshift_func_uint8_t_u_s((p_1337->g_220[5][4] , 1UL), (safe_mul_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u(p_62, 6UL)), 0xB98CL)))), 3L))) | 0x5BL);
                }
                else
                { /* block id: 106 */
                    uint16_t l_315[4];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_315[i] = 0UL;
                    if (l_259)
                        goto lbl_314;
                    l_315[3] ^= (((void*)0 != l_239) != GROUP_DIVERGE(0, 1));
                    if (p_59)
                        continue;
                    return &p_1337->g_54;
                }
                (*l_318) |= (safe_lshift_func_uint16_t_u_s(65530UL, 4));
                l_337--;
            }
            for (p_1337->g_172 = 0; (p_1337->g_172 > 18); ++p_1337->g_172)
            { /* block id: 117 */
                int32_t l_347[1][3];
                int32_t *l_348 = (void*)0;
                int32_t *l_349 = &l_334;
                int32_t *l_350 = &p_1337->g_34;
                int16_t ***l_356 = &l_355;
                uint16_t *l_369 = &l_271;
                uint8_t ***l_370 = &l_279;
                uint64_t l_442 = 0x9029FE28174EE4E3L;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_347[i][j] = (-1L);
                }
                (*l_350) = ((*l_349) = (l_331 = (safe_sub_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(l_346, 1)), l_347[0][2]))));
            }
        }
        else
        { /* block id: 197 */
            int8_t l_561 = (-1L);
            int32_t l_569[2][9][4] = {{{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL}},{{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL},{0x34DCB29EL,0x20F4ADF5L,0x20F4ADF5L,0x34DCB29EL}}};
            uint32_t l_596[1][1];
            int32_t l_622 = 0x3CF61CBFL;
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                    l_596[i][j] = 4294967295UL;
            }
            for (p_1337->g_74 = 0; (p_1337->g_74 <= 2); p_1337->g_74 += 1)
            { /* block id: 200 */
                int32_t *l_542 = &l_378[0];
                uint8_t *l_558 = &p_1337->g_463;
                int16_t *l_564 = (void*)0;
                int16_t *l_565 = &p_1337->g_145[4];
                int32_t l_567 = 1L;
                int8_t *l_571 = &p_1337->g_170[1][0][2];
                int i, j;
                l_543 = l_542;
                (*l_543) = (~((safe_rshift_func_int16_t_s_u((safe_mul_func_uint8_t_u_u(0x93L, ((*l_571) = ((((safe_sub_func_int8_t_s_s(((-6L) ^ ((safe_mul_func_int16_t_s_s((l_405[(p_1337->g_74 + 1)][(p_1337->g_74 + 6)] ^ ((*p_61) |= FAKE_DIVERGE(p_1337->global_2_offset, get_global_id(2), 10))), p_58)) && ((!(l_569[0][3][1] = ((safe_div_func_int16_t_s_s((((safe_rshift_func_uint8_t_u_s((((p_62 , (safe_div_func_uint8_t_u_u(((((p_59 && (p_1337->g_566[3][5][2] = (((*l_558) = (!((*p_61) = (*p_61)))) , ((((safe_mul_func_uint16_t_u_u((--p_1337->g_219), ((*l_565) |= (p_59 > 0xF9L)))) , 0x25695DE9AE965FA9L) && p_1337->g_170[1][6][1]) < p_62)))) >= (*l_543)) <= p_62) && 0x74EBB91950645EE4L), (-8L)))) == l_567) == p_59), 7)) , l_568) > 7UL), p_59)) & l_561))) , l_570))), GROUP_DIVERGE(2, 1))) != 0x65AE4756L) >= 1UL) <= (*l_543))))), p_1337->g_220[1][3])) , p_58));
                for (p_59 = 0; (p_59 <= 2); p_59 += 1)
                { /* block id: 213 */
                    uint64_t *l_580 = &l_568;
                    uint64_t *l_594 = &p_1337->g_595;
                    uint64_t *l_597[10] = {&p_1337->g_74,&p_1337->g_598,(void*)0,&p_1337->g_598,&p_1337->g_74,&p_1337->g_74,&p_1337->g_598,(void*)0,&p_1337->g_598,&p_1337->g_74};
                    int32_t l_599 = (-3L);
                    int i, j, k;
                    for (l_267 = 2; (l_267 >= 0); l_267 -= 1)
                    { /* block id: 216 */
                        return &p_1337->g_54;
                    }
                    l_599 |= (safe_add_func_uint32_t_u_u(((safe_mul_func_uint8_t_u_u(((((l_377[(p_1337->g_74 + 1)][(p_1337->g_74 + 1)][p_59] || (safe_mod_func_uint8_t_u_u((*p_61), GROUP_DIVERGE(2, 1)))) > ((((*l_542) = (((((((*l_594) |= (p_59 < (((p_1337->g_72[3][2] &= (safe_sub_func_uint64_t_u_u(p_1337->g_66, (++(*l_580))))) && ((((safe_sub_func_uint8_t_u_u((*p_61), (safe_lshift_func_int8_t_s_u(((*l_571) = (((void*)0 != p_1337->g_587) <= (((safe_mul_func_int16_t_s_s((safe_sub_func_int16_t_s_s((p_59 != (~(p_1337->g_220[5][4] ^ 0x7996L))), 1L)), p_1337->g_123[0][0][0])) , 0x00143BB2L) , p_58))), 0)))) != FAKE_DIVERGE(p_1337->global_0_offset, get_global_id(0), 10)) > p_1337->g_593[5]) >= (-3L))) || p_1337->g_170[0][6][2]))) && l_596[0][0]) > 0x8ACCL) & (*p_61)) , p_62) & p_59)) || 0xF9819457A437C1C9L) && 4294967295UL)) == 0x7CL) , FAKE_DIVERGE(p_1337->group_0_offset, get_group_id(0), 10)), p_1337->g_107)) && 0x6AL), l_569[0][3][1]));
                }
            }
            for (p_1337->g_21 = 0; (p_1337->g_21 <= 3); p_1337->g_21 += 1)
            { /* block id: 229 */
                int32_t l_623 = (-1L);
                int32_t **l_688 = &l_543;
                int16_t ***l_697 = (void*)0;
                int16_t ***l_700 = (void*)0;
                uint32_t **l_714[3][4];
                union U5 **l_721 = &p_1337->g_719;
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 4; j++)
                        l_714[i][j] = &p_1337->g_31;
                }
                (1 + 1);
            }
            if (p_62)
                continue;
            if (p_62)
                continue;
        }
        for (p_1337->g_32 = 18; (p_1337->g_32 >= 8); --p_1337->g_32)
        { /* block id: 316 */
            uint64_t *l_724 = &p_1337->g_725;
            uint32_t l_734 = 1UL;
            int32_t l_737 = 0x69A64FB9L;
            l_737 ^= ((((*l_724) = p_62) , (((((safe_add_func_int8_t_s_s(((((safe_div_func_int8_t_s_s((*l_701), ((-8L) & ((l_734 &= (safe_mod_func_int64_t_s_s((safe_lshift_func_uint8_t_u_u((*l_701), 6)), (*p_1337->g_692)))) >= (safe_rshift_func_int16_t_s_s(p_62, ((*l_701) >= (p_59 <= (+(*p_1337->g_692)))))))))) , 0x75L) <= p_59) == 18446744073709551615UL), 0L)) > p_59) , p_1337->g_145[4]) ^ 1UL) != (-1L))) , p_58);
        }
    }
    (*l_744) |= (GROUP_DIVERGE(0, 1) || (l_743 &= ((((void*)0 != p_1337->g_740) & 0L) < ((*l_742) ^= p_1337->g_463))));
    return &p_1337->g_54;
}


/* ------------------------------------------ */
/* 
 * reads : p_1337->g_107
 * writes: p_1337->g_107
 */
uint16_t  func_87(uint8_t * p_88, int8_t  p_89, uint32_t  p_90, struct S6 * p_1337)
{ /* block id: 43 */
    uint32_t l_211 = 0x0A931D57L;
    int32_t *l_212 = &p_1337->g_34;
    int32_t *l_213[6][2][2] = {{{(void*)0,&p_1337->g_34},{(void*)0,&p_1337->g_34}},{{(void*)0,&p_1337->g_34},{(void*)0,&p_1337->g_34}},{{(void*)0,&p_1337->g_34},{(void*)0,&p_1337->g_34}},{{(void*)0,&p_1337->g_34},{(void*)0,&p_1337->g_34}},{{(void*)0,&p_1337->g_34},{(void*)0,&p_1337->g_34}},{{(void*)0,&p_1337->g_34},{(void*)0,&p_1337->g_34}}};
    int16_t l_214 = 0x1B5FL;
    uint32_t l_215 = 0x519545C7L;
    int i, j, k;
    for (p_1337->g_107 = 0; (p_1337->g_107 == (-7)); --p_1337->g_107)
    { /* block id: 46 */
        int32_t *l_210[10][6] = {{(void*)0,(void*)0,(void*)0,&p_1337->g_107,&p_1337->g_123[0][0][0],&p_1337->g_107},{(void*)0,(void*)0,(void*)0,&p_1337->g_107,&p_1337->g_123[0][0][0],&p_1337->g_107},{(void*)0,(void*)0,(void*)0,&p_1337->g_107,&p_1337->g_123[0][0][0],&p_1337->g_107},{(void*)0,(void*)0,(void*)0,&p_1337->g_107,&p_1337->g_123[0][0][0],&p_1337->g_107},{(void*)0,(void*)0,(void*)0,&p_1337->g_107,&p_1337->g_123[0][0][0],&p_1337->g_107},{(void*)0,(void*)0,(void*)0,&p_1337->g_107,&p_1337->g_123[0][0][0],&p_1337->g_107},{(void*)0,(void*)0,(void*)0,&p_1337->g_107,&p_1337->g_123[0][0][0],&p_1337->g_107},{(void*)0,(void*)0,(void*)0,&p_1337->g_107,&p_1337->g_123[0][0][0],&p_1337->g_107},{(void*)0,(void*)0,(void*)0,&p_1337->g_107,&p_1337->g_123[0][0][0],&p_1337->g_107},{(void*)0,(void*)0,(void*)0,&p_1337->g_107,&p_1337->g_123[0][0][0],&p_1337->g_107}};
        int i, j;
        l_211 |= p_90;
    }
    ++l_215;
    return p_1337->g_107;
}


/* ------------------------------------------ */
/* 
 * reads : p_1337->g_5 p_1337->g_53 p_1337->g_107 p_1337->g_21 p_1337->g_72 p_1337->g_34 p_1337->g_15 p_1337->g_31 p_1337->g_32 p_1337->g_123 p_1337->g_66 p_1337->g_170 p_1337->g_74 p_1337->g_145
 * writes: p_1337->g_5 p_1337->g_54 p_1337->g_107 p_1337->g_34 p_1337->g_123 p_1337->g_72 p_1337->g_66 p_1337->g_170 p_1337->g_172 p_1337->g_175 p_1337->g_187 p_1337->g_74 p_1337->g_205
 */
uint8_t * func_91(uint32_t * p_92, uint8_t * p_93, int32_t * p_94, int32_t * p_95, struct S6 * p_1337)
{ /* block id: 20 */
    uint32_t l_114 = 0xFE4DFDC5L;
    int32_t l_121[3];
    int16_t *l_144 = &p_1337->g_145[2];
    int64_t l_173[3][10] = {{(-1L),0x76DDF6E144B6F7AEL,(-10L),0x76DDF6E144B6F7AEL,(-1L),(-1L),0x76DDF6E144B6F7AEL,(-10L),0x76DDF6E144B6F7AEL,(-1L)},{(-1L),0x76DDF6E144B6F7AEL,(-10L),0x76DDF6E144B6F7AEL,(-1L),(-1L),0x76DDF6E144B6F7AEL,(-10L),0x76DDF6E144B6F7AEL,(-1L)},{(-1L),0x76DDF6E144B6F7AEL,(-10L),0x76DDF6E144B6F7AEL,(-1L),(-1L),0x76DDF6E144B6F7AEL,(-10L),0x76DDF6E144B6F7AEL,(-1L)}};
    int32_t **l_176 = &p_1337->g_54;
    uint64_t l_177 = 18446744073709551615UL;
    int16_t l_184 = 0x7528L;
    int16_t **l_185 = (void*)0;
    int16_t **l_186[1];
    int32_t l_196 = 0L;
    int8_t *l_203 = &p_1337->g_172;
    uint64_t *l_204 = &p_1337->g_74;
    uint32_t l_206[8][10][3] = {{{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL}},{{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL}},{{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL}},{{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL}},{{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL}},{{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL}},{{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL}},{{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL},{0xBE358026L,5UL,4294967287UL}}};
    int32_t *l_207 = &p_1337->g_123[0][0][0];
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_121[i] = 8L;
    for (i = 0; i < 1; i++)
        l_186[i] = &l_144;
    for (p_1337->g_5 = 26; (p_1337->g_5 != 31); ++p_1337->g_5)
    { /* block id: 23 */
        int32_t *l_103 = (void*)0;
        int16_t *l_106[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t *l_119 = (void*)0;
        int32_t *l_120 = &p_1337->g_34;
        int32_t *l_122[3][3] = {{&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0]},{&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0],&p_1337->g_123[0][0][0]}};
        int64_t *l_146 = &p_1337->g_72[7][1];
        uint8_t *l_161 = &p_1337->g_66;
        uint64_t l_168 = 1UL;
        int8_t *l_169 = &p_1337->g_170[0][6][2];
        int8_t *l_171 = &p_1337->g_172;
        int8_t *l_174 = &p_1337->g_175;
        int i, j;
        (*p_1337->g_53) = l_103;
        p_1337->g_123[0][0][0] = (((((void*)0 == p_95) >= (safe_mul_func_int16_t_s_s((p_1337->g_107 ^= 0x3AA3L), (safe_sub_func_int32_t_s_s(((p_1337->g_21 >= ((-1L) != ((GROUP_DIVERGE(1, 1) ^ (safe_sub_func_int16_t_s_s(p_1337->g_72[7][1], (safe_div_func_int32_t_s_s((l_121[1] ^= ((*l_120) = (l_114 , ((safe_mod_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u(((p_1337->g_72[3][1] , 0x683BL) , p_1337->g_34), 0x23L)), GROUP_DIVERGE(0, 1))) < (*p_94))))), (*p_1337->g_31)))))) <= 6UL))) && FAKE_DIVERGE(p_1337->global_1_offset, get_global_id(1), 10)), (*p_94)))))) , l_114) == p_1337->g_15);
        (*l_120) = (((((safe_sub_func_int64_t_s_s(((((safe_sub_func_int32_t_s_s((((*p_1337->g_31) , (safe_add_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(((0x53783AD5L | (((+(safe_mul_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u((safe_mod_func_int8_t_s_s((((*p_1337->g_31) || (((((((l_121[2] == ((*l_146) = ((safe_mod_func_int8_t_s_s((((safe_mul_func_uint8_t_u_u(((l_144 == &p_1337->g_145[2]) && (l_122[1][2] == (p_1337->g_123[1][0][0] , p_94))), 0x18L)) < 0x76476FD3L) || (*p_1337->g_31)), l_114)) , l_114))) , 0UL) >= 1UL) , GROUP_DIVERGE(0, 1)) == p_1337->g_107) != (*p_1337->g_31)) && l_121[1])) , p_1337->g_72[7][1]), p_1337->g_66)), l_121[1])), FAKE_DIVERGE(p_1337->global_0_offset, get_global_id(0), 10)))) && p_1337->g_5) > FAKE_DIVERGE(p_1337->global_1_offset, get_global_id(1), 10))) <= l_121[1]), l_114)), 0x64EFL))) <= p_1337->g_66), 0xE7BD33CEL)) , l_114) , l_121[1]) >= l_114), 0x99ABEDA80D186C8CL)) ^ (-5L)) , 0x8602F12706A3B5EBL) , 1L) || 0x79D12DC1L);
        l_177 |= ((safe_add_func_int64_t_s_s((p_1337->g_32 , (((safe_sub_func_uint16_t_u_u(((((0x374AL <= (((safe_sub_func_uint8_t_u_u((((!0x79L) == ((*l_174) = ((l_121[2] != (safe_sub_func_int8_t_s_s(((((7UL && (p_1337->g_107 ^ (safe_mul_func_int8_t_s_s(((l_114 , (((safe_mod_func_uint32_t_u_u(((((*l_161) = p_1337->g_72[7][1]) >= ((safe_mod_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u(((*l_171) = ((((*l_169) ^= (safe_add_func_uint32_t_u_u(((l_121[1] , (*l_120)) , l_168), 4294967292UL))) , l_121[2]) <= l_121[1])), 0)), (*l_120))) >= l_173[2][3])) & 0x757F069B646BD1A6L), (*p_94))) <= p_1337->g_74) > (*p_1337->g_31))) , p_1337->g_107), 0x34L)))) , p_1337->g_21) ^ p_1337->g_34) == (*p_94)), l_173[2][3]))) || (*l_120)))) , p_1337->g_15), l_114)) , (void*)0) == &p_93)) ^ GROUP_DIVERGE(1, 1)) || FAKE_DIVERGE(p_1337->global_2_offset, get_global_id(2), 10)) | 1L), p_1337->g_145[4])) , &p_1337->g_54) != l_176)), 18446744073709551606UL)) || p_1337->g_145[3]);
    }
    (*l_207) = (((safe_sub_func_int32_t_s_s(((safe_lshift_func_uint8_t_u_u(((p_1337->g_205 = (safe_add_func_uint64_t_u_u(l_184, (((p_1337->g_187 = &p_1337->g_145[4]) != (((p_1337->g_145[2] & (((p_1337->g_123[0][0][0] && (((safe_div_func_uint64_t_u_u(((*l_204) = (safe_rshift_func_uint8_t_u_s((safe_add_func_int16_t_s_s(l_196, (((safe_lshift_func_int8_t_s_s(p_1337->g_170[0][6][2], 4)) , &p_1337->g_54) != (void*)0))), ((*l_203) = (safe_div_func_uint32_t_u_u(((((safe_rshift_func_int8_t_s_s(0x58L, l_173[0][5])) > p_1337->g_72[2][0]) == p_1337->g_107) ^ 7L), (*p_1337->g_31))))))), p_1337->g_32)) > (*p_94)) & l_173[2][3])) < 0x7AF3F720A13F4F6DL) <= p_1337->g_5)) || 0L) , &p_1337->g_145[2])) , FAKE_DIVERGE(p_1337->local_0_offset, get_local_id(0), 10))))) | (-8L)), p_1337->g_123[0][0][0])) != l_121[1]), l_206[6][9][1])) , FAKE_DIVERGE(p_1337->global_1_offset, get_global_id(1), 10)) == l_177);
    return &p_1337->g_66;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S6 c_1338;
    struct S6* p_1337 = &c_1338;
    struct S6 c_1339 = {
        0x40874B28L, // p_1337->g_4
        0x4C924B54L, // p_1337->g_5
        0x335900B0L, // p_1337->g_15
        0x36717B38L, // p_1337->g_21
        4294967286UL, // p_1337->g_32
        &p_1337->g_32, // p_1337->g_31
        0L, // p_1337->g_34
        (void*)0, // p_1337->g_54
        &p_1337->g_54, // p_1337->g_53
        0UL, // p_1337->g_66
        &p_1337->g_66, // p_1337->g_65
        {{0x5735AE52E9AD701FL,0x10705E7732C35242L,0x5735AE52E9AD701FL},{0x5735AE52E9AD701FL,0x10705E7732C35242L,0x5735AE52E9AD701FL},{0x5735AE52E9AD701FL,0x10705E7732C35242L,0x5735AE52E9AD701FL},{0x5735AE52E9AD701FL,0x10705E7732C35242L,0x5735AE52E9AD701FL},{0x5735AE52E9AD701FL,0x10705E7732C35242L,0x5735AE52E9AD701FL},{0x5735AE52E9AD701FL,0x10705E7732C35242L,0x5735AE52E9AD701FL},{0x5735AE52E9AD701FL,0x10705E7732C35242L,0x5735AE52E9AD701FL},{0x5735AE52E9AD701FL,0x10705E7732C35242L,0x5735AE52E9AD701FL}}, // p_1337->g_72
        0xB665F1F474372BB1L, // p_1337->g_74
        &p_1337->g_66, // p_1337->g_99
        (-1L), // p_1337->g_107
        {{{(-6L),(-6L)}},{{(-6L),(-6L)}}}, // p_1337->g_123
        {5L,0x410EL,5L,5L,0x410EL,5L}, // p_1337->g_145
        {{{(-3L),(-3L),1L},{(-3L),(-3L),1L},{(-3L),(-3L),1L},{(-3L),(-3L),1L},{(-3L),(-3L),1L},{(-3L),(-3L),1L},{(-3L),(-3L),1L}},{{(-3L),(-3L),1L},{(-3L),(-3L),1L},{(-3L),(-3L),1L},{(-3L),(-3L),1L},{(-3L),(-3L),1L},{(-3L),(-3L),1L},{(-3L),(-3L),1L}}}, // p_1337->g_170
        0L, // p_1337->g_172
        0x29L, // p_1337->g_175
        (void*)0, // p_1337->g_187
        0UL, // p_1337->g_205
        0x0FCEL, // p_1337->g_219
        {{0x8BL,0UL,0UL,0x8BL,0x8BL,0UL},{0x8BL,0UL,0UL,0x8BL,0x8BL,0UL},{0x8BL,0UL,0UL,0x8BL,0x8BL,0UL},{0x8BL,0UL,0UL,0x8BL,0x8BL,0UL},{0x8BL,0UL,0UL,0x8BL,0x8BL,0UL},{0x8BL,0UL,0UL,0x8BL,0x8BL,0UL}}, // p_1337->g_220
        &p_1337->g_54, // p_1337->g_274
        0UL, // p_1337->g_404
        &p_1337->g_99, // p_1337->g_412
        &p_1337->g_412, // p_1337->g_411
        0x3AF42B1AL, // p_1337->g_415
        255UL, // p_1337->g_418
        {{{0x7AB4964FL,0x4ADDCB0DL,0x7AB4964FL,0x7AB4964FL,0x4ADDCB0DL,0x7AB4964FL,0x7AB4964FL,0x4ADDCB0DL},{0x7AB4964FL,0x4ADDCB0DL,0x7AB4964FL,0x7AB4964FL,0x4ADDCB0DL,0x7AB4964FL,0x7AB4964FL,0x4ADDCB0DL}}}, // p_1337->g_419
        0x04L, // p_1337->g_463
        {0L,0L}, // p_1337->g_480
        {{{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L}},{{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L}},{{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L}},{{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L}},{{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L}},{{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L}},{{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L},{(-7L),0x78L,0x78L,0x25L}}}, // p_1337->g_566
        &p_1337->g_53, // p_1337->g_588
        &p_1337->g_588, // p_1337->g_587
        {250UL,0x75L,250UL,250UL,0x75L,250UL}, // p_1337->g_593
        1UL, // p_1337->g_595
        5UL, // p_1337->g_598
        0xA2E55147L, // p_1337->g_670
        &p_1337->g_72[7][1], // p_1337->g_692
        &p_1337->g_692, // p_1337->g_691
        &p_1337->g_670, // p_1337->g_715
        {{{{0x33756DA0L},{0x33756DA0L},{0x721DDC22L},{0x6FCA75FEL},{8L},{0x1D4FE54AL},{0x1E71687AL},{6L},{0x1E71687AL}},{{0x33756DA0L},{0x33756DA0L},{0x721DDC22L},{0x6FCA75FEL},{8L},{0x1D4FE54AL},{0x1E71687AL},{6L},{0x1E71687AL}}},{{{0x33756DA0L},{0x33756DA0L},{0x721DDC22L},{0x6FCA75FEL},{8L},{0x1D4FE54AL},{0x1E71687AL},{6L},{0x1E71687AL}},{{0x33756DA0L},{0x33756DA0L},{0x721DDC22L},{0x6FCA75FEL},{8L},{0x1D4FE54AL},{0x1E71687AL},{6L},{0x1E71687AL}}},{{{0x33756DA0L},{0x33756DA0L},{0x721DDC22L},{0x6FCA75FEL},{8L},{0x1D4FE54AL},{0x1E71687AL},{6L},{0x1E71687AL}},{{0x33756DA0L},{0x33756DA0L},{0x721DDC22L},{0x6FCA75FEL},{8L},{0x1D4FE54AL},{0x1E71687AL},{6L},{0x1E71687AL}}}}, // p_1337->g_720
        &p_1337->g_720[1][0][4], // p_1337->g_719
        18446744073709551607UL, // p_1337->g_725
        &p_1337->g_187, // p_1337->g_741
        &p_1337->g_741, // p_1337->g_740
        (void*)0, // p_1337->g_804
        &p_1337->g_691, // p_1337->g_811
        &p_1337->g_692, // p_1337->g_850
        65535UL, // p_1337->g_857
        {0L,0x310FD1D1L,0x2E3AL,1L,0xEB81D140L,0x5591L,0xF670AA7AL,0x7EF1EFCFL,-9L,-3L}, // p_1337->g_880
        0x0833216DL, // p_1337->g_1016
        0x7E019434L, // p_1337->g_1117
        {{4294967294UL,0xCF9FC942L,4294967291UL,8UL,1UL,7UL,0x21913C38L,0x0D2F8D90L},{4294967294UL,0xCF9FC942L,4294967291UL,8UL,1UL,7UL,0x21913C38L,0x0D2F8D90L},{4294967294UL,0xCF9FC942L,4294967291UL,8UL,1UL,7UL,0x21913C38L,0x0D2F8D90L},{4294967294UL,0xCF9FC942L,4294967291UL,8UL,1UL,7UL,0x21913C38L,0x0D2F8D90L},{4294967294UL,0xCF9FC942L,4294967291UL,8UL,1UL,7UL,0x21913C38L,0x0D2F8D90L},{4294967294UL,0xCF9FC942L,4294967291UL,8UL,1UL,7UL,0x21913C38L,0x0D2F8D90L},{4294967294UL,0xCF9FC942L,4294967291UL,8UL,1UL,7UL,0x21913C38L,0x0D2F8D90L},{4294967294UL,0xCF9FC942L,4294967291UL,8UL,1UL,7UL,0x21913C38L,0x0D2F8D90L},{4294967294UL,0xCF9FC942L,4294967291UL,8UL,1UL,7UL,0x21913C38L,0x0D2F8D90L},{4294967294UL,0xCF9FC942L,4294967291UL,8UL,1UL,7UL,0x21913C38L,0x0D2F8D90L}}, // p_1337->g_1174
        (void*)0, // p_1337->g_1209
        &p_1337->g_1209, // p_1337->g_1208
        {0x2CE36D4AL}, // p_1337->g_1300
        {{{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL}},{{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL}},{{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL}},{{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL},{(-1L),9L,0x37A042F1L,1L,0x7EAD3B4CL}}}, // p_1337->g_1315
        {4L,3L,0x3CECL,1L,0x70DE11C5L,0UL,0UL,0x683F155AL,0x6E07130CC52B8FA6L,-9L}, // p_1337->g_1327
        &p_1337->g_1327, // p_1337->g_1326
        sequence_input[get_global_id(0)], // p_1337->global_0_offset
        sequence_input[get_global_id(1)], // p_1337->global_1_offset
        sequence_input[get_global_id(2)], // p_1337->global_2_offset
        sequence_input[get_local_id(0)], // p_1337->local_0_offset
        sequence_input[get_local_id(1)], // p_1337->local_1_offset
        sequence_input[get_local_id(2)], // p_1337->local_2_offset
        sequence_input[get_group_id(0)], // p_1337->group_0_offset
        sequence_input[get_group_id(1)], // p_1337->group_1_offset
        sequence_input[get_group_id(2)], // p_1337->group_2_offset
    };
    c_1338 = c_1339;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1337);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1337->g_4, "p_1337->g_4", print_hash_value);
    transparent_crc(p_1337->g_5, "p_1337->g_5", print_hash_value);
    transparent_crc(p_1337->g_15, "p_1337->g_15", print_hash_value);
    transparent_crc(p_1337->g_21, "p_1337->g_21", print_hash_value);
    transparent_crc(p_1337->g_32, "p_1337->g_32", print_hash_value);
    transparent_crc(p_1337->g_34, "p_1337->g_34", print_hash_value);
    transparent_crc(p_1337->g_66, "p_1337->g_66", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1337->g_72[i][j], "p_1337->g_72[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1337->g_74, "p_1337->g_74", print_hash_value);
    transparent_crc(p_1337->g_107, "p_1337->g_107", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1337->g_123[i][j][k], "p_1337->g_123[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1337->g_145[i], "p_1337->g_145[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1337->g_170[i][j][k], "p_1337->g_170[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1337->g_172, "p_1337->g_172", print_hash_value);
    transparent_crc(p_1337->g_175, "p_1337->g_175", print_hash_value);
    transparent_crc(p_1337->g_205, "p_1337->g_205", print_hash_value);
    transparent_crc(p_1337->g_219, "p_1337->g_219", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1337->g_220[i][j], "p_1337->g_220[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1337->g_404, "p_1337->g_404", print_hash_value);
    transparent_crc(p_1337->g_415, "p_1337->g_415", print_hash_value);
    transparent_crc(p_1337->g_418, "p_1337->g_418", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1337->g_419[i][j][k], "p_1337->g_419[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1337->g_463, "p_1337->g_463", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1337->g_480[i], "p_1337->g_480[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1337->g_566[i][j][k], "p_1337->g_566[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1337->g_593[i], "p_1337->g_593[i]", print_hash_value);

    }
    transparent_crc(p_1337->g_595, "p_1337->g_595", print_hash_value);
    transparent_crc(p_1337->g_598, "p_1337->g_598", print_hash_value);
    transparent_crc(p_1337->g_670, "p_1337->g_670", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1337->g_720[i][j][k].f0, "p_1337->g_720[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1337->g_725, "p_1337->g_725", print_hash_value);
    transparent_crc(p_1337->g_857, "p_1337->g_857", print_hash_value);
    transparent_crc(p_1337->g_880.f0, "p_1337->g_880.f0", print_hash_value);
    transparent_crc(p_1337->g_880.f1, "p_1337->g_880.f1", print_hash_value);
    transparent_crc(p_1337->g_880.f2, "p_1337->g_880.f2", print_hash_value);
    transparent_crc(p_1337->g_880.f3, "p_1337->g_880.f3", print_hash_value);
    transparent_crc(p_1337->g_880.f4, "p_1337->g_880.f4", print_hash_value);
    transparent_crc(p_1337->g_880.f5, "p_1337->g_880.f5", print_hash_value);
    transparent_crc(p_1337->g_880.f6, "p_1337->g_880.f6", print_hash_value);
    transparent_crc(p_1337->g_880.f7, "p_1337->g_880.f7", print_hash_value);
    transparent_crc(p_1337->g_880.f8, "p_1337->g_880.f8", print_hash_value);
    transparent_crc(p_1337->g_880.f9, "p_1337->g_880.f9", print_hash_value);
    transparent_crc(p_1337->g_1016, "p_1337->g_1016", print_hash_value);
    transparent_crc(p_1337->g_1117, "p_1337->g_1117", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1337->g_1174[i][j], "p_1337->g_1174[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1337->g_1300.f0, "p_1337->g_1300.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1337->g_1315[i][j][k], "p_1337->g_1315[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1337->g_1327.f0, "p_1337->g_1327.f0", print_hash_value);
    transparent_crc(p_1337->g_1327.f1, "p_1337->g_1327.f1", print_hash_value);
    transparent_crc(p_1337->g_1327.f2, "p_1337->g_1327.f2", print_hash_value);
    transparent_crc(p_1337->g_1327.f3, "p_1337->g_1327.f3", print_hash_value);
    transparent_crc(p_1337->g_1327.f4, "p_1337->g_1327.f4", print_hash_value);
    transparent_crc(p_1337->g_1327.f5, "p_1337->g_1327.f5", print_hash_value);
    transparent_crc(p_1337->g_1327.f6, "p_1337->g_1327.f6", print_hash_value);
    transparent_crc(p_1337->g_1327.f7, "p_1337->g_1327.f7", print_hash_value);
    transparent_crc(p_1337->g_1327.f8, "p_1337->g_1327.f8", print_hash_value);
    transparent_crc(p_1337->g_1327.f9, "p_1337->g_1327.f9", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
