// ---fake_divergence -g 6,15,43 -l 1,1,1
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


// Seed: 68

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   int8_t * f1;
   int8_t * volatile  f2;
};

struct S1 {
    int32_t g_2;
    int32_t g_12;
    uint8_t g_23;
    volatile int8_t g_38;
    volatile int8_t *g_37;
    int32_t g_86;
    int32_t g_92[1];
    int32_t * volatile g_91[4];
    int16_t g_94;
    uint64_t g_103;
    int64_t g_106;
    int8_t g_108;
    int32_t *g_113[7][1];
    int32_t **g_112[9][3];
    int32_t *g_146;
    int32_t **g_145[10];
    int16_t g_149;
    volatile union U0 g_158;
    int8_t ***g_177;
    int32_t ** volatile g_207;
    int8_t g_278;
    uint64_t g_297;
    uint64_t *g_296[6][1][3];
    uint16_t g_305;
    int32_t * volatile * volatile g_329;
    volatile uint64_t ** volatile g_335;
    union U0 g_344[9];
    uint8_t g_353;
    int32_t * volatile * volatile g_354;
    uint32_t g_412[3];
    int32_t ** volatile g_427;
    int32_t ** volatile g_431;
    int32_t ** volatile g_432[4][6];
    volatile union U0 g_438;
    volatile int64_t g_451;
    volatile int64_t *g_450;
    volatile int64_t ** volatile g_449;
    uint16_t g_515[7][7][2];
    int32_t ** volatile g_547[7];
    int32_t ** volatile g_548;
    uint64_t g_611;
    int16_t g_616;
    uint32_t g_617;
    uint16_t g_625;
    union U0 g_633;
    int32_t g_665[8];
    int32_t ** volatile g_666;
    int32_t ** volatile g_667;
    int32_t ***g_727[5][4][2];
    int32_t * volatile g_754;
    union U0 g_791;
    union U0 g_792;
    union U0 g_793;
    union U0 g_794[1][3];
    union U0 g_795;
    union U0 g_796;
    union U0 g_797;
    union U0 g_798;
    union U0 g_799;
    union U0 g_800[9][8];
    union U0 g_801;
    union U0 g_802;
    union U0 g_803;
    union U0 g_804;
    union U0 g_805;
    union U0 g_806[4][6][8];
    union U0 g_807;
    union U0 g_808;
    union U0 g_809;
    union U0 g_810;
    union U0 g_811;
    union U0 g_812;
    union U0 g_813;
    union U0 g_814[5];
    union U0 g_815;
    union U0 g_816;
    union U0 g_817;
    union U0 g_818;
    union U0 g_819[9];
    union U0 g_820;
    union U0 g_821;
    union U0 g_822;
    union U0 g_823;
    union U0 g_824;
    union U0 g_825;
    union U0 g_826;
    union U0 g_827[2];
    union U0 g_828[5];
    union U0 g_829;
    union U0 g_830[5][8][5];
    union U0 g_831;
    union U0 g_832[3];
    union U0 g_833;
    union U0 g_834[1];
    union U0 g_835;
    union U0 g_836;
    union U0 g_837[1][3][9];
    union U0 g_838[3];
    union U0 g_839[10];
    union U0 g_840;
    union U0 g_841;
    union U0 g_842;
    union U0 g_843;
    union U0 g_844[5];
    union U0 g_845;
    union U0 g_846;
    union U0 g_847;
    union U0 g_848;
    union U0 g_849;
    union U0 g_850;
    union U0 g_851;
    union U0 g_852;
    union U0 g_853;
    union U0 g_854;
    union U0 g_855;
    union U0 g_856;
    union U0 g_857;
    union U0 g_858;
    union U0 g_859;
    union U0 g_860;
    union U0 g_861;
    union U0 g_862[9];
    union U0 g_863;
    union U0 g_864;
    union U0 g_865;
    union U0 g_866;
    union U0 g_867;
    union U0 g_868;
    union U0 g_869;
    union U0 g_870;
    union U0 g_871;
    union U0 g_872;
    union U0 g_873;
    union U0 g_874;
    union U0 g_875;
    union U0 *g_790[10][3][8];
    union U0 g_889;
    union U0 g_894;
    union U0 ** volatile g_910[4];
    uint64_t g_943;
    int32_t * volatile g_945;
    int32_t * volatile g_946;
    int32_t g_992;
    volatile uint64_t g_1021;
    uint32_t g_1174;
    union U0 g_1235[10][4];
    volatile int8_t **g_1300;
    volatile int8_t ***g_1299[3][5];
    volatile int8_t *** volatile * volatile g_1298;
    volatile int8_t *** volatile * volatile *g_1297;
    uint32_t g_1395;
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
uint32_t  func_1(struct S1 * p_1406);
int32_t  func_30(uint64_t  p_31, uint32_t  p_32, int16_t  p_33, uint64_t  p_34, uint32_t  p_35, struct S1 * p_1406);
int16_t  func_52(int8_t * p_53, struct S1 * p_1406);
int8_t * func_54(int32_t * p_55, struct S1 * p_1406);
int32_t * func_56(int32_t * p_57, uint8_t  p_58, struct S1 * p_1406);
int32_t * func_59(int64_t  p_60, int32_t  p_61, uint64_t  p_62, struct S1 * p_1406);
int32_t * func_64(int8_t * p_65, int32_t * p_66, uint16_t  p_67, int32_t  p_68, int32_t * p_69, struct S1 * p_1406);
int8_t * func_70(int8_t * p_71, struct S1 * p_1406);
int8_t * func_72(int32_t  p_73, int32_t  p_74, int8_t * p_75, struct S1 * p_1406);
uint32_t  func_79(int32_t  p_80, uint64_t  p_81, int8_t * p_82, int32_t * p_83, uint64_t  p_84, struct S1 * p_1406);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1406->g_2 p_1406->g_23 p_1406->g_548 p_1406->g_113 p_1406->g_853.f0 p_1406->g_354 p_1406->g_37 p_1406->g_38 p_1406->g_353 p_1406->g_857.f0 p_1406->g_894.f0 p_1406->g_149 p_1406->g_804.f0 p_1406->g_617 p_1406->g_843.f0 p_1406->g_807.f0 p_1406->g_450 p_1406->g_451 p_1406->g_1297 p_1406->g_795.f0 p_1406->g_817.f0 p_1406->g_865.f0 p_1406->g_832.f0 p_1406->g_806.f0 p_1406->g_91 p_1406->g_108 p_1406->g_94 p_1406->g_86 p_1406->g_92 p_1406->g_145 p_1406->g_12 p_1406->g_106 p_1406->g_103 p_1406->g_158 p_1406->g_177 p_1406->g_207 p_1406->g_158.f0 p_1406->g_278 p_1406->g_296 p_1406->g_329 p_1406->g_335 p_1406->g_344 p_1406->g_344.f0 p_1406->g_305 p_1406->g_412 p_1406->g_427 p_1406->g_297 p_1406->g_438 p_1406->g_449 p_1406->g_515 p_1406->g_625 p_1406->g_633 p_1406->g_616 p_1406->g_611 p_1406->g_633.f0 p_1406->g_665 p_1406->g_754 p_1406->g_790 p_1406->g_862.f0 p_1406->g_868.f0 p_1406->g_894 p_1406->g_803.f0 p_1406->g_874.f0 p_1406->g_848.f0 p_1406->g_1174
 * writes: p_1406->g_2 p_1406->g_23 p_1406->g_113 p_1406->g_515 p_1406->g_353 p_1406->g_149 p_1406->g_617 p_1406->g_12 p_1406->g_616 p_1406->g_86 p_1406->g_94 p_1406->g_103 p_1406->g_106 p_1406->g_112 p_1406->g_108 p_1406->g_177 p_1406->g_278 p_1406->g_305 p_1406->g_412 p_1406->g_92 p_1406->g_297 p_1406->g_611 p_1406->g_625 p_1406->g_727 p_1406->g_665 p_1406->g_296
 */
uint32_t  func_1(struct S1 * p_1406)
{ /* block id: 4 */
    int8_t l_8 = 1L;
    int32_t *l_9 = &p_1406->g_2;
    int32_t l_19 = 1L;
    int32_t l_21 = 1L;
    int32_t l_22 = 0x47941CE3L;
    int32_t **l_1180 = &l_9;
    int32_t l_1214 = 1L;
    int32_t l_1219 = 0x66258061L;
    int32_t l_1220 = 0x76597ACDL;
    int32_t l_1369 = 1L;
    union U0 *l_1385 = &p_1406->g_811;
    int16_t l_1401 = (-3L);
    int8_t *l_1403 = (void*)0;
    int8_t **l_1402[6][4][3] = {{{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0}},{{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0}},{{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0}},{{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0}},{{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0}},{{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0},{&l_1403,&l_1403,(void*)0}}};
    int32_t *l_1404[1];
    int32_t l_1405 = 9L;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1404[i] = &p_1406->g_665[2];
    for (p_1406->g_2 = 0; (p_1406->g_2 > 26); p_1406->g_2 = safe_add_func_uint8_t_u_u(p_1406->g_2, 1))
    { /* block id: 7 */
        uint16_t l_5 = 0xC370L;
        --l_5;
        return l_8;
    }
    if (((*l_9) = (l_8 , 0x30CC2FDCL)))
    { /* block id: 12 */
        int32_t l_10 = 0x412265E3L;
        int32_t *l_11 = &p_1406->g_2;
        int32_t *l_13 = &p_1406->g_12;
        int32_t *l_14 = (void*)0;
        int32_t *l_15 = &l_10;
        int32_t *l_16 = &l_10;
        int32_t *l_17 = (void*)0;
        int32_t *l_18 = &l_10;
        int32_t *l_20[6] = {&p_1406->g_12,&p_1406->g_12,&p_1406->g_12,&p_1406->g_12,&p_1406->g_12,&p_1406->g_12};
        int8_t l_1194 = 0x15L;
        int8_t l_1236[10][5];
        uint16_t l_1274 = 0x9108L;
        uint16_t l_1277 = 0x44BAL;
        int32_t ***l_1288 = &l_1180;
        int16_t *l_1289 = (void*)0;
        int16_t *l_1290[5][8][1] = {{{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616}},{{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616}},{{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616}},{{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616}},{{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616},{&p_1406->g_616}}};
        int16_t l_1301 = 0x1269L;
        uint8_t *l_1302 = &p_1406->g_353;
        uint8_t *l_1303 = &p_1406->g_23;
        int i, j, k;
        for (i = 0; i < 10; i++)
        {
            for (j = 0; j < 5; j++)
                l_1236[i][j] = 0x2DL;
        }
        ++p_1406->g_23;
        for (l_21 = 0; (l_21 <= 5); l_21 += 1)
        { /* block id: 16 */
            int32_t l_36 = (-1L);
            int32_t *l_1197 = &l_21;
            int32_t l_1212 = 0x5EC9331CL;
            int32_t l_1215 = (-1L);
            int32_t l_1216 = 0x3C9DC6D5L;
            int32_t l_1217 = 0x33615B46L;
            int32_t l_1221 = 1L;
            int32_t l_1222 = 0x29D8FFBAL;
            uint32_t l_1239 = 0xBD411111L;
            int64_t l_1275 = 0x7D69CB90D2C79AA0L;
            int i;
            for (p_1406->g_23 = 0; (p_1406->g_23 <= 5); p_1406->g_23 += 1)
            { /* block id: 19 */
                uint8_t *l_1172 = (void*)0;
                uint8_t *l_1173[6][9][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                int32_t l_1177[6];
                int8_t *l_1208 = (void*)0;
                int8_t **l_1207 = &l_1208;
                int8_t ***l_1206 = &l_1207;
                int32_t l_1218[2][7] = {{0x4F36A433L,0x4F36A433L,1L,0x6F333A66L,0x7D8F3F1CL,0x6F333A66L,1L},{0x4F36A433L,0x4F36A433L,1L,0x6F333A66L,0x7D8F3F1CL,0x6F333A66L,1L}};
                uint64_t *l_1244 = &p_1406->g_943;
                uint64_t *l_1247 = &p_1406->g_297;
                int16_t *l_1248 = &p_1406->g_94;
                int i, j, k;
                for (i = 0; i < 6; i++)
                    l_1177[i] = 0x2A55190BL;
                (1 + 1);
            }
            if ((**p_1406->g_548))
            { /* block id: 485 */
                int32_t *l_1253[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_1253[i] = &p_1406->g_2;
                l_20[l_21] = func_64(func_54((*p_1406->g_548), p_1406), &l_1221, (*l_9), (safe_mul_func_int8_t_s_s((&p_1406->g_412[1] != (p_1406->g_853.f0 , ((&p_1406->g_943 != (void*)0) , (void*)0))), 9UL)), l_1253[0], p_1406);
            }
            else
            { /* block id: 487 */
                int8_t l_1254 = 3L;
                uint16_t *l_1255 = &p_1406->g_515[5][4][1];
                uint8_t *l_1260[7][3][9] = {{{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353},{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353},{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353}},{{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353},{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353},{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353}},{{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353},{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353},{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353}},{{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353},{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353},{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353}},{{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353},{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353},{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353}},{{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353},{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353},{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353}},{{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353},{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353},{&p_1406->g_23,&p_1406->g_353,(void*)0,&p_1406->g_353,&p_1406->g_353,&p_1406->g_23,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353}}};
                int16_t *l_1273 = &p_1406->g_149;
                uint32_t *l_1276 = &p_1406->g_617;
                int i, j, k;
                (*l_13) = (((((*l_1255) = l_1254) == (safe_rshift_func_uint8_t_u_u(((safe_mod_func_uint16_t_u_u(((((*p_1406->g_37) > (((*l_1276) &= ((!((0x57E44CF1B6D7335BL <= ((p_1406->g_353 ^= (*l_9)) == (6UL ^ ((safe_rshift_func_uint16_t_u_s((FAKE_DIVERGE(p_1406->global_2_offset, get_global_id(2), 10) , p_1406->g_857.f0), 13)) , 2L)))) && (safe_mod_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u((safe_mod_func_int16_t_s_s((safe_mod_func_int32_t_s_s((((*l_15) = (safe_mul_func_uint8_t_u_u((((*l_9) > (((*l_1273) ^= ((+(**l_1180)) , p_1406->g_894.f0)) != p_1406->g_853.f0)) > l_1254), l_1274))) ^ (**l_1180)), FAKE_DIVERGE(p_1406->local_0_offset, get_local_id(0), 10))), p_1406->g_804.f0)), (**l_1180))), l_1275)))) , 0x7E1C8C6CL)) & l_1277)) < p_1406->g_843.f0) != 0x52L), 0x2789L)) && GROUP_DIVERGE(2, 1)), p_1406->g_807.f0))) , (**l_1180)) >= 65535UL);
                if ((*l_15))
                    break;
            }
        }
        (*l_1180) = func_59((*p_1406->g_450), (safe_add_func_int16_t_s_s(((((safe_lshift_func_uint8_t_u_s(((*l_1303) = ((safe_lshift_func_int16_t_s_s((GROUP_DIVERGE(1, 1) | (safe_mul_func_int8_t_s_s((l_1288 != l_1288), 253UL))), 15)) || ((**l_1180) = ((p_1406->g_616 = (**l_1180)) < (safe_add_func_int64_t_s_s((((safe_rshift_func_int16_t_s_u((((*l_1302) ^= ((safe_add_func_int16_t_s_s(1L, (((void*)0 == p_1406->g_1297) , l_1301))) <= p_1406->g_795.f0)) , (*l_9)), 2)) || (-1L)) , p_1406->g_817.f0), GROUP_DIVERGE(0, 1))))))), p_1406->g_865.f0)) , p_1406->g_617) | p_1406->g_795.f0) , 4L), p_1406->g_832[2].f0)), p_1406->g_806[2][5][7].f0, p_1406);
    }
    else
    { /* block id: 502 */
        int32_t *l_1312[4];
        uint16_t l_1370 = 1UL;
        uint32_t l_1387 = 0x165741E7L;
        int64_t l_1397 = 0x7E448FF57FBE237BL;
        int i;
        for (i = 0; i < 4; i++)
            l_1312[i] = (void*)0;
        for (p_1406->g_305 = 0; (p_1406->g_305 <= 24); p_1406->g_305++)
        { /* block id: 505 */
            uint32_t l_1339 = 4294967295UL;
            uint64_t l_1363 = 1UL;
            int16_t l_1364[6];
            int32_t l_1367 = (-3L);
            union U0 *l_1386 = &p_1406->g_792;
            int i;
            for (i = 0; i < 6; i++)
                l_1364[i] = 0x341BL;
            for (l_21 = 8; (l_21 > 24); ++l_21)
            { /* block id: 508 */
                uint64_t l_1309[10][6][4] = {{{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL}},{{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL}},{{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL}},{{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL}},{{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL}},{{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL}},{{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL}},{{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL}},{{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL}},{{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL},{1UL,0UL,18446744073709551607UL,0x3361EFE342BBCD9CL}}};
                int32_t l_1340 = 0x2C502A62L;
                int i, j, k;
                (1 + 1);
            }
        }
    }
    l_1405 = (l_1402[5][2][0] == (p_1406->g_1174 , &l_1403));
    return p_1406->g_108;
}


/* ------------------------------------------ */
/* 
 * reads : p_1406->g_37 p_1406->g_2 p_1406->g_23 p_1406->g_12 p_1406->g_91 p_1406->g_108 p_1406->g_94 p_1406->g_86 p_1406->g_92 p_1406->g_145 p_1406->g_149 p_1406->g_106 p_1406->g_103 p_1406->g_158 p_1406->g_177 p_1406->g_207 p_1406->g_158.f0 p_1406->g_113 p_1406->g_278 p_1406->g_296 p_1406->g_329 p_1406->g_335 p_1406->g_354 p_1406->g_344 p_1406->g_344.f0 p_1406->g_305 p_1406->g_38 p_1406->g_412 p_1406->g_427 p_1406->g_297 p_1406->g_438 p_1406->g_353 p_1406->g_449 p_1406->g_450 p_1406->g_451 p_1406->g_515 p_1406->g_548 p_1406->g_617 p_1406->g_625 p_1406->g_633 p_1406->g_616 p_1406->g_611 p_1406->g_633.f0 p_1406->g_665 p_1406->g_754 p_1406->g_790 p_1406->g_862.f0 p_1406->g_857.f0 p_1406->g_868.f0 p_1406->g_894 p_1406->g_803.f0 p_1406->g_874.f0 p_1406->g_848.f0 p_1406->g_839.f0 p_1406->g_819.f0 p_1406->g_821.f0 p_1406->g_943 p_1406->g_946 p_1406->g_873.f0 p_1406->g_799.f0 p_1406->g_889.f0 p_1406->g_1021 p_1406->g_800.f0 p_1406->g_854.f0 p_1406->g_838.f0 p_1406->g_796.f0 p_1406->g_824.f0 p_1406->g_863.f0 p_1406->g_817.f0 p_1406->g_864.f0 p_1406->g_825.f0 p_1406->g_871.f0
 * writes: p_1406->g_86 p_1406->g_94 p_1406->g_103 p_1406->g_106 p_1406->g_112 p_1406->g_12 p_1406->g_149 p_1406->g_108 p_1406->g_177 p_1406->g_113 p_1406->g_278 p_1406->g_305 p_1406->g_412 p_1406->g_92 p_1406->g_515 p_1406->g_297 p_1406->g_353 p_1406->g_611 p_1406->g_617 p_1406->g_625 p_1406->g_616 p_1406->g_727 p_1406->g_665 p_1406->g_296 p_1406->g_790 p_1406->g_943 p_1406->g_1021 p_1406->g_2 p_1406->g_91
 */
int32_t  func_30(uint64_t  p_31, uint32_t  p_32, int16_t  p_33, uint64_t  p_34, uint32_t  p_35, struct S1 * p_1406)
{ /* block id: 20 */
    int32_t *l_43 = &p_1406->g_2;
    int8_t *l_63 = (void*)0;
    int16_t *l_1084 = &p_1406->g_149;
    int64_t l_1085 = 0x0A3DE3A1424E005DL;
    int8_t ****l_1086 = &p_1406->g_177;
    int8_t ****l_1088 = &p_1406->g_177;
    int32_t l_1096[1];
    uint32_t l_1103[9];
    int32_t **l_1124 = &p_1406->g_146;
    uint64_t l_1134 = 0x3BB6A03013A03817L;
    int16_t l_1146 = (-5L);
    int32_t l_1147[3];
    int32_t *l_1158 = (void*)0;
    int32_t *l_1159[4][6] = {{(void*)0,&l_1096[0],&p_1406->g_12,&p_1406->g_665[2],&l_1096[0],&p_1406->g_665[2]},{(void*)0,&l_1096[0],&p_1406->g_12,&p_1406->g_665[2],&l_1096[0],&p_1406->g_665[2]},{(void*)0,&l_1096[0],&p_1406->g_12,&p_1406->g_665[2],&l_1096[0],&p_1406->g_665[2]},{(void*)0,&l_1096[0],&p_1406->g_12,&p_1406->g_665[2],&l_1096[0],&p_1406->g_665[2]}};
    int32_t l_1160 = 3L;
    uint64_t *l_1168 = &p_1406->g_103;
    uint64_t **l_1167 = &l_1168;
    uint32_t l_1169 = 1UL;
    int i, j;
    for (i = 0; i < 1; i++)
        l_1096[i] = 7L;
    for (i = 0; i < 9; i++)
        l_1103[i] = 0xBB6CE3D6L;
    for (i = 0; i < 3; i++)
        l_1147[i] = 8L;
    if ((((void*)0 == p_1406->g_37) && (safe_rshift_func_uint16_t_u_s((safe_lshift_func_int16_t_s_s((4294967295UL <= p_31), 8)), ((l_43 != (void*)0) >= ((*l_43) != (safe_rshift_func_int8_t_s_u(((safe_div_func_int32_t_s_s((p_1406->g_23 , (((((((safe_rshift_func_int16_t_s_u(((*l_1084) = func_52(func_54(func_56(func_59((l_63 != (void*)0), p_1406->g_23, p_1406->g_12, p_1406), p_1406->g_839[5].f0, p_1406), p_1406), p_1406)), (*l_43))) , p_34) , p_1406->g_353) ^ GROUP_DIVERGE(1, 1)) || 0UL) , 18446744073709551609UL) < p_1406->g_817.f0)), 0x5305C076L)) == l_1085), 3))))))))
    { /* block id: 387 */
        int8_t *****l_1087 = &l_1086;
        int32_t l_1091 = 1L;
        int32_t l_1097 = 1L;
        int32_t l_1098 = 0L;
        int32_t l_1099 = 0x758DBCD8L;
        int32_t l_1100 = 0x366ED9B5L;
        int32_t l_1101 = 0x38C15159L;
        int32_t l_1102[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
        int32_t l_1131 = 0x4DAC6C8FL;
        int i;
lbl_1106:
        (*l_43) = (((*l_1087) = l_1086) != l_1088);
        for (p_33 = 18; (p_33 > (-29)); --p_33)
        { /* block id: 392 */
            int32_t *l_1092 = &p_1406->g_665[3];
            int32_t *l_1093 = &p_1406->g_665[2];
            int32_t *l_1094 = &p_1406->g_12;
            int32_t *l_1095[1];
            uint32_t l_1108 = 0x623C3407L;
            int32_t **l_1123 = &p_1406->g_146;
            int16_t l_1132 = (-6L);
            int32_t l_1133[8][8][2] = {{{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L}},{{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L}},{{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L}},{{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L}},{{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L}},{{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L}},{{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L}},{{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L},{0L,0x4CCE5480L}}};
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_1095[i] = &l_1091;
            l_1103[8]++;
            if ((p_35 | 0x67L))
            { /* block id: 394 */
                if (p_32)
                { /* block id: 395 */
                    if (p_1406->g_824.f0)
                        goto lbl_1106;
                }
                else
                { /* block id: 397 */
                    return p_31;
                }
            }
            else
            { /* block id: 400 */
                int64_t l_1115 = (-10L);
                uint64_t *l_1116 = &p_1406->g_297;
                uint16_t *l_1119 = &p_1406->g_515[1][0][1];
                uint64_t **l_1122 = &p_1406->g_296[4][0][2];
                uint16_t *l_1125[10][3][4] = {{{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305}},{{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305}},{{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305}},{{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305}},{{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305}},{{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305}},{{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305}},{{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305}},{{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305}},{{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305},{&p_1406->g_625,&p_1406->g_625,&p_1406->g_305,&p_1406->g_305}}};
                int32_t l_1126 = 0x374F95C8L;
                int i, j, k;
                for (p_1406->g_106 = 1; (p_1406->g_106 >= 0); p_1406->g_106 -= 1)
                { /* block id: 403 */
                    uint8_t l_1107 = 3UL;
                    return l_1107;
                }
                l_1101 = (p_1406->g_854.f0 > l_1108);
                l_1126 = (safe_add_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((p_1406->g_625 = (safe_rshift_func_int8_t_s_u((p_32 != ((l_1115 , (((((((p_1406->g_616 = 0x507EL) >= (((((*l_1092) = (((*l_1116)--) >= (((*l_1119) |= 0xFDD0L) <= (((251UL ^ (((safe_mod_func_int16_t_s_s((p_33 ^ (&p_1406->g_1021 != ((*l_1122) = l_1116))), p_1406->g_874.f0)) , &p_1406->g_412[0]) != &l_1108)) , l_1123) != l_1124)))) , 0x48L) > 1UL) ^ l_1102[6])) > 3UL) ^ (-1L)) | p_35) , l_1098) <= 0x65EE3DA1C2E8947FL)) && GROUP_DIVERGE(0, 1))), p_32))), l_1115)), 0x078CL));
            }
            for (l_1108 = 0; (l_1108 > 16); l_1108 = safe_add_func_int64_t_s_s(l_1108, 3))
            { /* block id: 417 */
                for (p_1406->g_12 = 0; (p_1406->g_12 == (-15)); --p_1406->g_12)
                { /* block id: 420 */
                    return l_1101;
                }
                if (l_1102[6])
                    continue;
            }
            l_1134++;
        }
        for (l_1097 = 0; l_1097 < 4; l_1097 += 1)
        {
            p_1406->g_91[l_1097] = &p_1406->g_92[0];
        }
    }
    else
    { /* block id: 428 */
        uint16_t l_1141[5][8] = {{8UL,0x7575L,1UL,65535UL,0x8A87L,8UL,65535UL,65535UL},{8UL,0x7575L,1UL,65535UL,0x8A87L,8UL,65535UL,65535UL},{8UL,0x7575L,1UL,65535UL,0x8A87L,8UL,65535UL,65535UL},{8UL,0x7575L,1UL,65535UL,0x8A87L,8UL,65535UL,65535UL},{8UL,0x7575L,1UL,65535UL,0x8A87L,8UL,65535UL,65535UL}};
        uint8_t l_1144 = 0x45L;
        int32_t *l_1145[4][2] = {{&l_1096[0],&p_1406->g_665[0]},{&l_1096[0],&p_1406->g_665[0]},{&l_1096[0],&p_1406->g_665[0]},{&l_1096[0],&p_1406->g_665[0]}};
        uint64_t l_1148 = 0x1CCC03B9A392A0B7L;
        int i, j;
        (*l_43) = (safe_sub_func_int32_t_s_s(((safe_div_func_uint16_t_u_u((++l_1141[4][7]), l_1144)) , p_34), p_1406->g_803.f0));
        l_1148--;
    }
    for (p_1406->g_108 = 4; (p_1406->g_108 != 7); p_1406->g_108++)
    { /* block id: 435 */
        return p_35;
    }
    (*p_1406->g_946) = ((((*l_43) = p_32) & (safe_add_func_uint8_t_u_u(((safe_sub_func_int64_t_s_s((-1L), (p_1406->g_864.f0 != ((((9L >= (((*p_1406->g_37) <= (safe_unary_minus_func_uint32_t_u(9UL))) , (l_1160 = (-3L)))) || ((safe_mod_func_uint8_t_u_u((((((3L ^ (safe_add_func_uint64_t_u_u((~(safe_div_func_int64_t_s_s((-1L), (**p_1406->g_449)))), 0x22F81A75AF83B66BL))) , l_1167) != (void*)0) & l_1169) ^ p_1406->g_825.f0), p_1406->g_821.f0)) <= 0x23C5L)) <= 0x5C175F22A2C93E31L) == 0x61A56663L)))) >= p_31), p_31))) == p_1406->g_871.f0);
    return (*l_43);
}


/* ------------------------------------------ */
/* 
 * reads : p_1406->g_278 p_1406->g_86 p_1406->g_353 p_1406->g_819.f0 p_1406->g_665 p_1406->g_449 p_1406->g_450 p_1406->g_451 p_1406->g_821.f0 p_1406->g_297 p_1406->g_943 p_1406->g_946 p_1406->g_12 p_1406->g_873.f0 p_1406->g_799.f0 p_1406->g_889.f0 p_1406->g_1021 p_1406->g_800.f0 p_1406->g_854.f0 p_1406->g_838.f0 p_1406->g_515 p_1406->g_796.f0 p_1406->g_824.f0 p_1406->g_412 p_1406->g_177 p_1406->g_2 p_1406->g_863.f0
 * writes: p_1406->g_278 p_1406->g_611 p_1406->g_108 p_1406->g_665 p_1406->g_353 p_1406->g_106 p_1406->g_297 p_1406->g_943 p_1406->g_12 p_1406->g_113 p_1406->g_1021 p_1406->g_515 p_1406->g_617 p_1406->g_412 p_1406->g_149
 */
int16_t  func_52(int8_t * p_53, struct S1 * p_1406)
{ /* block id: 346 */
    int8_t l_937[7] = {0L,1L,0L,0L,1L,0L,0L};
    int32_t l_948 = 0L;
    int32_t l_963 = 0L;
    int32_t l_964 = 0L;
    int32_t l_965[8] = {0x271DD4A3L,0x271DD4A3L,0x271DD4A3L,0x271DD4A3L,0x271DD4A3L,0x271DD4A3L,0x271DD4A3L,0x271DD4A3L};
    int8_t l_988 = 0x56L;
    int32_t l_990 = 0x7CCB69A1L;
    int32_t *l_1074 = &l_965[4];
    int32_t *l_1075 = (void*)0;
    int32_t *l_1076 = &l_965[2];
    int32_t *l_1077 = (void*)0;
    int32_t *l_1078[9] = {&l_990,&l_990,&l_990,&l_990,&l_990,&l_990,&l_990,&l_990,&l_990};
    int32_t l_1079 = 0x12C9FDE6L;
    int16_t l_1080 = 0x26A0L;
    uint32_t l_1081[2][7][5] = {{{0xEF8D36F1L,4294967290UL,0xEF8D36F1L,0xEF8D36F1L,4294967290UL},{0xEF8D36F1L,4294967290UL,0xEF8D36F1L,0xEF8D36F1L,4294967290UL},{0xEF8D36F1L,4294967290UL,0xEF8D36F1L,0xEF8D36F1L,4294967290UL},{0xEF8D36F1L,4294967290UL,0xEF8D36F1L,0xEF8D36F1L,4294967290UL},{0xEF8D36F1L,4294967290UL,0xEF8D36F1L,0xEF8D36F1L,4294967290UL},{0xEF8D36F1L,4294967290UL,0xEF8D36F1L,0xEF8D36F1L,4294967290UL},{0xEF8D36F1L,4294967290UL,0xEF8D36F1L,0xEF8D36F1L,4294967290UL}},{{0xEF8D36F1L,4294967290UL,0xEF8D36F1L,0xEF8D36F1L,4294967290UL},{0xEF8D36F1L,4294967290UL,0xEF8D36F1L,0xEF8D36F1L,4294967290UL},{0xEF8D36F1L,4294967290UL,0xEF8D36F1L,0xEF8D36F1L,4294967290UL},{0xEF8D36F1L,4294967290UL,0xEF8D36F1L,0xEF8D36F1L,4294967290UL},{0xEF8D36F1L,4294967290UL,0xEF8D36F1L,0xEF8D36F1L,4294967290UL},{0xEF8D36F1L,4294967290UL,0xEF8D36F1L,0xEF8D36F1L,4294967290UL},{0xEF8D36F1L,4294967290UL,0xEF8D36F1L,0xEF8D36F1L,4294967290UL}}};
    int i, j, k;
    for (p_1406->g_278 = 0; (p_1406->g_278 == (-6)); --p_1406->g_278)
    { /* block id: 349 */
        int16_t l_934 = 1L;
        int32_t l_953 = 5L;
        int32_t l_961 = (-1L);
        int32_t l_966 = 9L;
        int32_t l_967 = 0L;
        int32_t l_968 = 0x54DC46D3L;
        int32_t l_970 = (-4L);
        int32_t l_971 = 0x68994F4DL;
        int32_t l_975 = 0x1646C252L;
        int32_t l_978 = 4L;
        int32_t l_980 = 1L;
        int32_t l_982 = 0x757D419FL;
        int32_t l_983 = 0x64A1C9F4L;
        int32_t l_986 = 0x24BCBE2BL;
        int32_t l_987 = 0x78B278B3L;
        int32_t l_989 = (-4L);
        int32_t l_991 = 0x1EF0E453L;
        int32_t l_993 = (-5L);
        uint8_t *l_1071 = &p_1406->g_353;
        for (p_1406->g_611 = 13; (p_1406->g_611 <= 13); ++p_1406->g_611)
        { /* block id: 352 */
            uint8_t l_929 = 0xC6L;
            int32_t l_935 = (-3L);
            uint8_t l_944 = 0xC7L;
            int64_t l_969[4] = {0x48465C092226CD84L,0x48465C092226CD84L,0x48465C092226CD84L,0x48465C092226CD84L};
            int32_t l_972 = 0L;
            int32_t l_973 = 0L;
            int32_t l_974 = 0x281C9CADL;
            int32_t l_976 = (-1L);
            int32_t l_979 = 0x246D97C7L;
            int32_t l_981 = 0x60B287B2L;
            int32_t l_984 = 0x68FECB77L;
            int32_t l_985 = 0x54C5D6D0L;
            uint16_t l_1032[4] = {0x90D0L,0x90D0L,0x90D0L,0x90D0L};
            uint32_t *l_1055 = &p_1406->g_412[1];
            int16_t *l_1072 = &p_1406->g_149;
            uint64_t *l_1073 = &p_1406->g_943;
            int i;
            for (p_1406->g_108 = (-27); (p_1406->g_108 != (-15)); p_1406->g_108 = safe_add_func_uint16_t_u_u(p_1406->g_108, 1))
            { /* block id: 355 */
                int32_t *l_926 = &p_1406->g_665[7];
                uint16_t l_930 = 0x7DC4L;
                uint8_t *l_931[2];
                int16_t *l_936[10] = {&p_1406->g_616,&p_1406->g_94,&p_1406->g_94,&p_1406->g_94,&p_1406->g_616,&p_1406->g_616,&p_1406->g_94,&p_1406->g_94,&p_1406->g_94,&p_1406->g_616};
                int64_t *l_938 = &p_1406->g_106;
                uint64_t *l_939 = (void*)0;
                uint64_t *l_940 = &p_1406->g_297;
                uint64_t *l_941 = (void*)0;
                uint64_t *l_942 = &p_1406->g_943;
                int32_t *l_947 = &l_935;
                int32_t *l_949 = &l_948;
                int32_t l_950 = 0x43C2065CL;
                int32_t *l_951 = &p_1406->g_12;
                int32_t *l_952 = &p_1406->g_665[2];
                int32_t *l_954 = &p_1406->g_665[5];
                int32_t *l_955 = (void*)0;
                int32_t *l_956 = &l_935;
                int32_t *l_957 = &l_950;
                int32_t *l_958 = &l_948;
                int32_t *l_959 = &l_953;
                int32_t *l_960 = &p_1406->g_665[4];
                int32_t *l_962[3][4][1] = {{{&l_961},{&l_961},{&l_961},{&l_961}},{{&l_961},{&l_961},{&l_961},{&l_961}},{{&l_961},{&l_961},{&l_961},{&l_961}}};
                int8_t l_977 = 0x45L;
                uint32_t l_994 = 0x15B138F4L;
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_931[i] = &p_1406->g_353;
                (*l_926) = 0L;
                (*p_1406->g_946) = ((l_944 = (!((*l_942) ^= ((0xE0838891239BDD09L != ((*l_940) ^= ((((p_1406->g_353 ^= ((safe_mul_func_uint8_t_u_u((p_1406->g_86 ^ l_929), l_929)) == l_930)) , ((*l_938) = (safe_mul_func_uint8_t_u_u((l_935 &= (p_1406->g_819[8].f0 >= l_934)), ((((((*p_53) | ((((*l_926) = (l_929 > 0x311FFB37E7E42B74L)) <= l_934) , (*l_926))) | l_934) >= 0x0512C6E6L) || l_937[3]) != (**p_1406->g_449)))))) >= l_937[3]) != p_1406->g_821.f0))) > l_937[6])))) & 1UL);
                --l_994;
            }
            if (l_965[2])
            { /* block id: 367 */
                int32_t **l_997 = &p_1406->g_113[1][0];
                (*l_997) = &l_964;
                l_986 &= (safe_rshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_s(l_982, ((safe_unary_minus_func_uint64_t_u(((safe_div_func_int8_t_s_s(((safe_mod_func_uint16_t_u_u((safe_div_func_uint32_t_u_u((safe_add_func_uint64_t_u_u(l_961, (0xF213L < ((*p_1406->g_946) < (safe_rshift_func_int8_t_s_s(l_953, p_1406->g_873.f0)))))), p_1406->g_799.f0)), (l_948 | p_1406->g_889.f0))) & GROUP_DIVERGE(1, 1)), 0x60L)) || l_963))) | (-1L)))), 10));
            }
            else
            { /* block id: 370 */
                int32_t *l_1013 = &l_971;
                int32_t *l_1014 = (void*)0;
                int32_t *l_1015 = &l_990;
                int32_t *l_1016 = (void*)0;
                int32_t *l_1017 = &l_971;
                int32_t *l_1018 = &l_991;
                int32_t *l_1019 = &l_986;
                int32_t *l_1020[3];
                uint16_t *l_1037 = &p_1406->g_515[2][6][0];
                int i;
                for (i = 0; i < 3; i++)
                    l_1020[i] = &l_970;
                --p_1406->g_1021;
                (*l_1017) ^= (((GROUP_DIVERGE(0, 1) & (((safe_add_func_uint64_t_u_u(l_970, (FAKE_DIVERGE(p_1406->global_0_offset, get_global_id(0), 10) , l_934))) < ((safe_mod_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s(l_979, 2)), FAKE_DIVERGE(p_1406->group_0_offset, get_group_id(0), 10))) >= p_1406->g_800[5][3].f0)) != (l_988 , ((((*l_1037) &= (l_1032[1] && (((p_1406->g_854.f0 > (safe_add_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s((l_1032[3] , p_1406->g_838[2].f0), 14)), l_965[0]))) ^ l_993) & l_1032[1]))) && GROUP_DIVERGE(2, 1)) > FAKE_DIVERGE(p_1406->group_0_offset, get_group_id(0), 10))))) && l_969[2]) > p_1406->g_796.f0);
            }
            l_976 = (((((p_1406->g_617 = l_978) , 0xD93C2B9FEA0B065CL) >= (**p_1406->g_449)) >= ((*l_1055) ^= (safe_mul_func_int8_t_s_s(((safe_unary_minus_func_int32_t_s(l_963)) <= (safe_lshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s((((FAKE_DIVERGE(p_1406->group_0_offset, get_group_id(0), 10) <= (-4L)) , (&p_1406->g_113[1][0] == &p_1406->g_113[1][0])) == (safe_rshift_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((safe_sub_func_uint16_t_u_u((l_985 != (((safe_lshift_func_int8_t_s_s(((((safe_div_func_uint8_t_u_u(l_988, l_973)) && 0x07L) || 4294967295UL) , l_937[0]), 7)) > l_937[2]) ^ l_963)), l_972)) | 0x3E7D1872ADE5781FL), FAKE_DIVERGE(p_1406->group_1_offset, get_group_id(1), 10))), 4))), 5UL)) != p_1406->g_824.f0), 13))), l_937[3])))) == GROUP_DIVERGE(1, 1));
            l_989 ^= (safe_add_func_uint16_t_u_u((!(0x44L && (65535UL || ((l_971 >= ((safe_mod_func_int32_t_s_s((((safe_unary_minus_func_uint32_t_u((l_968 , 0xEBC274ABL))) != (safe_sub_func_uint64_t_u_u(((*l_1073) = ((safe_mod_func_int8_t_s_s((p_1406->g_177 != p_1406->g_177), (safe_mul_func_int16_t_s_s((-3L), (safe_div_func_int64_t_s_s((safe_lshift_func_int16_t_s_u(((*l_1072) = (l_1071 == (void*)0)), 7)), l_964)))))) < (**p_1406->g_449))), l_968))) , 0x4AD447ACL), 0x74E6AD87L)) < p_1406->g_2)) || 0xC7D4L)))), p_1406->g_863.f0));
        }
        if (l_961)
            continue;
    }
    l_1081[1][0][0]--;
    return p_1406->g_863.f0;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_54(int32_t * p_55, struct S1 * p_1406)
{ /* block id: 343 */
    int32_t *l_913 = &p_1406->g_665[2];
    int32_t *l_914 = (void*)0;
    int32_t *l_915[2];
    int16_t l_916 = 0L;
    uint32_t l_917 = 0xF9216A5FL;
    int i;
    for (i = 0; i < 2; i++)
        l_915[i] = (void*)0;
    l_917++;
    return &p_1406->g_278;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1406->g_790
 */
int32_t * func_56(int32_t * p_57, uint8_t  p_58, struct S1 * p_1406)
{ /* block id: 340 */
    union U0 *l_909 = &p_1406->g_791;
    union U0 **l_911 = &p_1406->g_790[6][0][1];
    int32_t *l_912[7][2] = {{&p_1406->g_2,&p_1406->g_2},{&p_1406->g_2,&p_1406->g_2},{&p_1406->g_2,&p_1406->g_2},{&p_1406->g_2,&p_1406->g_2},{&p_1406->g_2,&p_1406->g_2},{&p_1406->g_2,&p_1406->g_2},{&p_1406->g_2,&p_1406->g_2}};
    int i, j;
    (*l_911) = l_909;
    return l_912[1][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1406->g_91 p_1406->g_2 p_1406->g_108 p_1406->g_94 p_1406->g_86 p_1406->g_92 p_1406->g_145 p_1406->g_12 p_1406->g_149 p_1406->g_106 p_1406->g_23 p_1406->g_103 p_1406->g_158 p_1406->g_177 p_1406->g_207 p_1406->g_158.f0 p_1406->g_113 p_1406->g_278 p_1406->g_296 p_1406->g_329 p_1406->g_335 p_1406->g_354 p_1406->g_344 p_1406->g_344.f0 p_1406->g_305 p_1406->g_38 p_1406->g_412 p_1406->g_427 p_1406->g_297 p_1406->g_438 p_1406->g_353 p_1406->g_449 p_1406->g_450 p_1406->g_451 p_1406->g_515 p_1406->g_548 p_1406->g_617 p_1406->g_37 p_1406->g_625 p_1406->g_633 p_1406->g_616 p_1406->g_611 p_1406->g_633.f0 p_1406->g_665 p_1406->g_754 p_1406->g_790 p_1406->g_862.f0 p_1406->g_857.f0 p_1406->g_868.f0 p_1406->g_894 p_1406->g_803.f0 p_1406->g_874.f0 p_1406->g_848.f0
 * writes: p_1406->g_86 p_1406->g_94 p_1406->g_103 p_1406->g_106 p_1406->g_112 p_1406->g_12 p_1406->g_149 p_1406->g_108 p_1406->g_177 p_1406->g_113 p_1406->g_278 p_1406->g_305 p_1406->g_412 p_1406->g_92 p_1406->g_515 p_1406->g_297 p_1406->g_353 p_1406->g_611 p_1406->g_617 p_1406->g_625 p_1406->g_616 p_1406->g_727 p_1406->g_665 p_1406->g_296
 */
int32_t * func_59(int64_t  p_60, int32_t  p_61, uint64_t  p_62, struct S1 * p_1406)
{ /* block id: 21 */
    uint8_t l_76 = 0x5EL;
    int32_t *l_85[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int16_t *l_93 = &p_1406->g_94;
    int32_t **l_99 = &l_85[3];
    uint64_t *l_102 = &p_1406->g_103;
    int32_t *l_104 = &p_1406->g_92[0];
    int64_t *l_105 = &p_1406->g_106;
    int8_t *l_107[7] = {&p_1406->g_108,&p_1406->g_108,&p_1406->g_108,&p_1406->g_108,&p_1406->g_108,&p_1406->g_108,&p_1406->g_108};
    int8_t **l_429 = &l_107[3];
    int32_t *l_433 = (void*)0;
    int32_t l_490 = 0x2762B044L;
    int32_t l_491 = 0x50AD5761L;
    int32_t l_495 = (-9L);
    int32_t l_564 = 0x5CCD274CL;
    int16_t l_565[4][2][8];
    int32_t l_566 = 0x2FFDDCB3L;
    int32_t l_567[6];
    int16_t l_569 = 0L;
    uint64_t l_570 = 0UL;
    int32_t l_589 = 3L;
    int32_t *l_632 = (void*)0;
    int32_t l_649[7] = {0L,0L,0L,0L,0L,0L,0L};
    uint32_t l_656[7];
    int32_t l_693 = 0L;
    int16_t l_699 = 1L;
    int32_t l_700 = 0x207C3CECL;
    int16_t l_703 = 3L;
    int32_t l_730 = (-5L);
    uint32_t *l_776 = &p_1406->g_617;
    int32_t l_777[5];
    int16_t *l_778 = &p_1406->g_616;
    int32_t *l_779 = &l_490;
    int32_t l_780 = 0L;
    uint8_t l_878 = 0UL;
    uint16_t l_891 = 5UL;
    uint64_t *l_901[2];
    uint64_t *l_903 = &l_570;
    int32_t *l_906[4][10][4] = {{{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495}},{{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495}},{{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495}},{{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495},{&l_567[1],&p_1406->g_665[2],&p_1406->g_12,&l_495}}};
    int32_t *l_907 = &l_566;
    int32_t *l_908[1];
    int i, j, k;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 8; k++)
                l_565[i][j][k] = (-1L);
        }
    }
    for (i = 0; i < 6; i++)
        l_567[i] = 1L;
    for (i = 0; i < 7; i++)
        l_656[i] = 0x5BD8E940L;
    for (i = 0; i < 5; i++)
        l_777[i] = 1L;
    for (i = 0; i < 2; i++)
        l_901[i] = &p_1406->g_297;
    for (i = 0; i < 1; i++)
        l_908[i] = &p_1406->g_2;
    l_433 = func_64(((*l_429) = func_70(func_72(l_76, (safe_mod_func_uint32_t_u_u(func_79((p_1406->g_86 = l_76), (safe_sub_func_int16_t_s_s((((safe_add_func_uint16_t_u_u(((void*)0 == p_1406->g_91[2]), ((*l_93) = l_76))) || (p_61 | ((*l_105) = ((safe_div_func_int8_t_s_s((((safe_lshift_func_uint16_t_u_u((((*l_99) = &p_1406->g_92[0]) != (((*l_102) = (safe_rshift_func_int8_t_s_u(l_76, 4))) , l_104)), 13)) , l_76) || p_1406->g_2), p_60)) ^ (-7L))))) , p_62), l_76)), l_107[0], &p_1406->g_2, p_1406->g_108, p_1406), 6L)), l_107[0], p_1406), p_1406)), l_104, p_1406->g_297, p_61, l_104, p_1406);
    for (p_1406->g_305 = (-2); (p_1406->g_305 < 30); p_1406->g_305 = safe_add_func_uint32_t_u_u(p_1406->g_305, 1))
    { /* block id: 208 */
        union U0 *l_444 = &p_1406->g_344[1];
        int32_t l_494[5];
        uint64_t l_496 = 0xACB4DB1A413F0ADCL;
        int32_t l_500 = 1L;
        uint8_t l_503 = 0x8EL;
        uint32_t l_507[3][6] = {{0x4C142F32L,0UL,0x001D9D26L,0UL,0x4C142F32L,0x4C142F32L},{0x4C142F32L,0UL,0x001D9D26L,0UL,0x4C142F32L,0x4C142F32L},{0x4C142F32L,0UL,0x001D9D26L,0UL,0x4C142F32L,0x4C142F32L}};
        int16_t l_527 = (-1L);
        uint32_t l_541 = 0x5523A76DL;
        int8_t l_568 = 0x7FL;
        int64_t l_685 = 7L;
        uint16_t *l_690 = &p_1406->g_625;
        int32_t l_701 = 2L;
        uint32_t l_752 = 0x512A96B1L;
        int i, j;
        for (i = 0; i < 5; i++)
            l_494[i] = 0x5185B2FEL;
        if (p_62)
        { /* block id: 209 */
            int32_t *l_443 = &p_1406->g_92[0];
            int32_t l_445 = 0x6D74E5D6L;
            int64_t **l_448[8][6][5] = {{{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105}},{{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105}},{{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105}},{{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105}},{{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105}},{{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105}},{{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105}},{{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105},{&l_105,&l_105,&l_105,(void*)0,&l_105}}};
            int32_t l_501 = (-1L);
            int32_t l_502[6][3] = {{1L,1L,0x2461E030L},{1L,1L,0x2461E030L},{1L,1L,0x2461E030L},{1L,1L,0x2461E030L},{1L,1L,0x2461E030L},{1L,1L,0x2461E030L}};
            int32_t *l_602 = &l_494[4];
            int32_t *l_603 = (void*)0;
            uint8_t *l_608[1][3][8] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            uint16_t *l_620 = &p_1406->g_515[3][4][1];
            uint16_t *l_624 = &p_1406->g_625;
            uint8_t l_628[1];
            int32_t *l_631 = &l_502[0][2];
            int32_t l_691[7][2] = {{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}};
            int8_t ***l_692 = &l_429;
            int8_t l_702 = 0x5AL;
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_628[i] = 254UL;
            for (p_60 = 0; (p_60 < 13); p_60 = safe_add_func_uint16_t_u_u(p_60, 2))
            { /* block id: 212 */
                int8_t *l_476 = &p_1406->g_108;
                int32_t l_477 = (-1L);
                int32_t l_483[10][3][8] = {{{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L}},{{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L}},{{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L}},{{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L}},{{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L}},{{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L}},{{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L}},{{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L}},{{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L}},{{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L},{0x2F5AA0F5L,(-2L),0x2C11C0F8L,0x064CB1B0L,0x7111CD26L,(-5L),0x5CC22EFAL,1L}}};
                int32_t *l_549 = &l_501;
                int32_t *l_550 = &l_445;
                int32_t *l_551 = (void*)0;
                int32_t *l_552 = &l_502[0][2];
                int32_t *l_553 = &l_445;
                int32_t *l_554 = (void*)0;
                int32_t *l_555 = &l_494[3];
                int32_t *l_556 = (void*)0;
                int32_t *l_557 = &l_445;
                int32_t *l_558 = &l_490;
                int32_t *l_559 = (void*)0;
                int32_t *l_560 = (void*)0;
                int32_t *l_561 = &l_495;
                int32_t *l_562 = &l_500;
                int32_t *l_563[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t *l_601 = &l_483[5][2][4];
                int i, j, k;
                if (((p_1406->g_438 , ((safe_rshift_func_int8_t_s_u(((0x9739L > ((p_1406->g_92[0] && (safe_mul_func_int8_t_s_s((-1L), ((((p_1406->g_412[1] , l_443) == ((*l_99) = (void*)0)) && ((*l_105) = ((((((*l_102) = (l_444 == (void*)0)) , l_445) | p_61) & 4294967295UL) , (*l_433)))) != p_1406->g_353)))) < FAKE_DIVERGE(p_1406->local_2_offset, get_local_id(2), 10))) ^ p_62), 4)) , p_61)) , p_60))
                { /* block id: 216 */
                    uint8_t l_464 = 255UL;
                    int32_t l_489 = (-1L);
                    int32_t l_492 = 0x1856A42AL;
                    int32_t l_493[1];
                    int32_t *l_522 = &p_1406->g_92[0];
                    int32_t l_528 = 0x56E02631L;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_493[i] = 5L;
                    if (((3L != (p_62 , ((safe_sub_func_int8_t_s_s((p_62 | 0x5E8EE7C5L), (l_448[4][5][4] != p_1406->g_449))) == p_61))) != (safe_rshift_func_uint16_t_u_u(p_1406->g_149, 12))))
                    { /* block id: 217 */
                        uint16_t l_475 = 65529UL;
                        int32_t *l_478 = &p_1406->g_12;
                        int32_t *l_479 = &l_477;
                        int32_t *l_480 = &l_445;
                        int32_t *l_481 = &l_445;
                        int32_t *l_482 = &l_445;
                        int32_t *l_484 = &l_445;
                        int32_t *l_485 = &l_483[5][2][4];
                        int32_t *l_486 = &l_483[5][2][4];
                        int32_t *l_487 = &l_483[5][2][4];
                        int32_t *l_488[2][10] = {{&l_477,&l_477,&l_477,&l_445,&l_477,&l_445,&l_477,&l_477,&l_477,&l_477},{&l_477,&l_477,&l_477,&l_445,&l_477,&l_445,&l_477,&l_477,&l_477,&l_477}};
                        int64_t l_499[10] = {0x1976CBA0879DE3ABL,0x43B578E6702D9FACL,0x7A8D4F1E8CC54EF8L,0x43B578E6702D9FACL,0x1976CBA0879DE3ABL,0x1976CBA0879DE3ABL,0x43B578E6702D9FACL,0x7A8D4F1E8CC54EF8L,0x43B578E6702D9FACL,0x1976CBA0879DE3ABL};
                        int i, j;
                        (*l_478) ^= (safe_mod_func_int16_t_s_s((p_62 && (safe_rshift_func_uint16_t_u_s(p_60, 7))), (safe_add_func_uint16_t_u_u((safe_mod_func_int8_t_s_s(((((safe_div_func_int64_t_s_s((((FAKE_DIVERGE(p_1406->group_0_offset, get_group_id(0), 10) < (p_61 , ((l_464 < p_1406->g_38) , ((((p_62 , ((safe_mul_func_int8_t_s_s((safe_rshift_func_int16_t_s_s(p_62, 11)), (safe_div_func_int16_t_s_s(p_1406->g_106, (safe_div_func_int32_t_s_s((((safe_lshift_func_uint8_t_u_u(l_475, 4)) , (void*)0) == l_476), p_1406->g_412[1])))))) , (*l_429))) != (void*)0) == 4294967295UL) != (**p_1406->g_449))))) == p_62) >= 0L), p_61)) >= l_477) || p_61) , p_60), l_445)), p_62))));
                        ++l_496;
                        l_503--;
                    }
                    else
                    { /* block id: 221 */
                        int32_t *l_506[7][3][8] = {{{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]},{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]},{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]}},{{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]},{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]},{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]}},{{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]},{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]},{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]}},{{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]},{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]},{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]}},{{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]},{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]},{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]}},{{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]},{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]},{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]}},{{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]},{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]},{(void*)0,&l_491,&l_494[1],&l_494[3],&l_492,&l_490,&l_494[3],&l_494[1]}}};
                        uint16_t *l_514 = &p_1406->g_515[1][0][1];
                        uint64_t *l_525 = (void*)0;
                        uint64_t *l_526 = &p_1406->g_297;
                        uint32_t l_529 = 0UL;
                        int i, j, k;
                        ++l_507[1][3];
                        l_493[0] = (0L ^ (l_502[0][2] & (((safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_u(((*l_514)--), 14)), 2)) >= (safe_rshift_func_int8_t_s_s(0x1BL, 6))) && (0UL != ((--(*l_514)) <= (((((*l_526) = (((((void*)0 == l_522) , l_502[2][1]) & (safe_sub_func_int64_t_s_s(p_62, 0xD52A01EEB1B25272L))) || p_61)) && p_60) <= p_60) > p_1406->g_305))))));
                        l_529--;
                    }
                    for (p_1406->g_278 = 6; (p_1406->g_278 >= 0); p_1406->g_278 -= 1)
                    { /* block id: 231 */
                        union U0 **l_532 = &l_444;
                        int32_t *l_533 = (void*)0;
                        (*l_532) = &p_1406->g_344[6];
                        return l_533;
                    }
                    for (p_1406->g_297 = 16; (p_1406->g_297 != 56); ++p_1406->g_297)
                    { /* block id: 237 */
                        int32_t **l_536 = (void*)0;
                        int32_t **l_537[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_537[i] = &p_1406->g_113[1][0];
                        l_433 = (p_1406->g_94 , (void*)0);
                    }
                }
                else
                { /* block id: 240 */
                    int32_t *l_538 = &l_502[0][2];
                    int32_t *l_539 = &l_483[5][2][4];
                    int32_t *l_540[6] = {&l_495,&l_495,&l_495,&l_495,&l_495,&l_495};
                    int i;
                    --l_541;
                    (*l_539) = p_61;
                    for (l_491 = 0; (l_491 <= 12); l_491 = safe_add_func_uint32_t_u_u(l_491, 4))
                    { /* block id: 245 */
                        int32_t *l_546 = &l_494[4];
                        (*p_1406->g_548) = l_546;
                        if (l_527)
                            break;
                    }
                    if (p_62)
                        break;
                }
                l_570++;
                for (l_564 = 18; (l_564 == (-30)); l_564--)
                { /* block id: 254 */
                    int8_t **l_579 = (void*)0;
                    int32_t l_588 = (-5L);
                    int32_t l_592 = 0x70DF48A7L;
                    int32_t l_593 = 0x40703971L;
                    int32_t l_594 = 7L;
                    int32_t l_597[3][8] = {{0x33C9281DL,0x6E759441L,0x33C9281DL,0x33C9281DL,0x6E759441L,0x33C9281DL,0x33C9281DL,0x6E759441L},{0x33C9281DL,0x6E759441L,0x33C9281DL,0x33C9281DL,0x6E759441L,0x33C9281DL,0x33C9281DL,0x6E759441L},{0x33C9281DL,0x6E759441L,0x33C9281DL,0x33C9281DL,0x6E759441L,0x33C9281DL,0x33C9281DL,0x6E759441L}};
                    int i, j;
                    for (p_62 = 0; (p_62 <= 2); p_62 += 1)
                    { /* block id: 257 */
                        uint64_t *l_580 = &l_570;
                        int32_t l_590 = 0x16147285L;
                        int32_t l_591 = (-1L);
                        int32_t l_595 = (-1L);
                        int32_t l_596[3];
                        uint64_t l_598 = 18446744073709551614UL;
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_596[i] = (-1L);
                        (*l_553) = (safe_sub_func_int16_t_s_s((l_483[(p_62 + 3)][p_62][(p_62 + 1)] < (l_483[(p_62 + 2)][p_62][(p_62 + 3)] , ((((((*l_580) = (1L > ((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1406->global_2_offset, get_global_id(2), 10), 13)) | ((void*)0 != l_579)))) && l_483[(p_62 + 6)][p_62][(p_62 + 3)]) , (safe_mod_func_int8_t_s_s((((((((((*l_580) = (safe_unary_minus_func_uint8_t_u((((*l_476) = p_62) <= ((safe_div_func_uint32_t_u_u(((safe_rshift_func_uint16_t_u_u((p_1406->g_92[0] , (!p_60)), l_588)) == 0L), p_1406->g_92[0])) & GROUP_DIVERGE(0, 1)))))) < l_503) | p_1406->g_515[4][4][0]) && p_61) <= 1L) && p_1406->g_451) < p_60) != 4294967295UL), (*l_558)))) , 7UL) || 0x7BL))), l_589));
                        l_598--;
                    }
                }
                return l_603;
            }
            if ((safe_rshift_func_int16_t_s_u((p_60 , (*l_433)), ((safe_div_func_int8_t_s_s((p_60 && (p_1406->g_611 = (p_1406->g_353--))), ((**p_1406->g_449) , (safe_rshift_func_uint16_t_u_s(((*l_620) = (safe_lshift_func_uint8_t_u_s((--p_1406->g_617), (*p_1406->g_37)))), (p_62 , p_1406->g_278)))))) | (((l_567[0] = (~((0x0BDF11AEL ^ ((((*l_93) |= (p_1406->g_616 = (safe_lshift_func_uint8_t_u_s((safe_unary_minus_func_uint32_t_u(((--(*l_624)) == p_1406->g_344[6].f0))), 0)))) | 0UL) || GROUP_DIVERGE(1, 1))) == l_628[0]))) , 0L) == p_61)))))
            { /* block id: 275 */
                int32_t *l_629 = &l_495;
                int32_t *l_630 = &l_494[4];
                return l_632;
            }
            else
            { /* block id: 277 */
                int32_t l_640 = 2L;
                int32_t **l_668 = &p_1406->g_113[1][0];
                for (p_1406->g_103 = 0; (p_1406->g_103 <= 0); p_1406->g_103 += 1)
                { /* block id: 280 */
                    uint16_t l_634 = 0xEFAFL;
                    uint32_t *l_639 = &p_1406->g_412[2];
                    int i, j;
                    (*l_602) = ((((l_640 = (p_1406->g_353 = (p_1406->g_633 , (((--l_634) == (safe_sub_func_uint64_t_u_u((((*l_639) = (0L != p_61)) && (l_640 | (((safe_sub_func_int32_t_s_s(((safe_div_func_int32_t_s_s((GROUP_DIVERGE(2, 1) | p_62), (safe_add_func_uint32_t_u_u((((safe_rshift_func_int16_t_s_u((*l_602), 13)) | (((*l_93) &= p_62) == 0x1117L)) , ((!((((-1L) != p_60) && 3UL) | (*p_1406->g_450))) == 0x8C5D4E79L)), l_494[0])))) || l_649[6]), p_1406->g_108)) > l_640) & p_1406->g_616))), p_1406->g_611))) != p_1406->g_92[0])))) , p_1406->g_633.f0) == (-10L)) <= p_1406->g_611);
                }
                (*l_602) = (safe_lshift_func_uint8_t_u_s(((safe_sub_func_uint16_t_u_u((safe_add_func_uint8_t_u_u(p_1406->g_617, l_656[2])), (((FAKE_DIVERGE(p_1406->global_2_offset, get_global_id(2), 10) & (safe_div_func_uint32_t_u_u((((p_62 , (+((((safe_sub_func_int64_t_s_s((safe_lshift_func_uint8_t_u_s((safe_lshift_func_int16_t_s_u(0L, l_541)), ((((&p_1406->g_296[4][0][2] == &p_1406->g_296[3][0][1]) != (l_527 != (*l_433))) || 0x5167266CB8E8F1DCL) | 0x0B577242L))), p_60)) , p_1406->g_665[2]) >= 255UL) , (*l_631)))) != 4294967293UL) == 1L), p_61))) & (-1L)) | p_62))) , p_1406->g_86), 3));
                if (p_62)
                    break;
                (*l_668) = &l_501;
            }
            if ((safe_sub_func_uint64_t_u_u(p_61, (safe_div_func_uint8_t_u_u(p_61, ((safe_add_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((((safe_lshift_func_int16_t_s_u(l_496, 5)) >= (((((((safe_mod_func_int32_t_s_s((((safe_add_func_int32_t_s_s((*l_433), l_685)) >= (safe_add_func_int64_t_s_s((p_62 && (*l_602)), ((safe_mul_func_int8_t_s_s((l_93 != l_690), p_1406->g_344[6].f0)) > 0x3A6DL)))) ^ 0L), 4UL)) && (-1L)) || l_691[6][0]) ^ (**p_1406->g_449)) ^ 1L) , l_692) == (void*)0)) != p_61), l_693)), p_1406->g_92[0])), p_61)) , p_1406->g_278))))))
            { /* block id: 292 */
                int32_t *l_694 = (void*)0;
                int32_t *l_695 = &l_566;
                int32_t *l_696 = &l_691[1][1];
                int32_t *l_697 = (void*)0;
                int32_t *l_698[7][2][2];
                uint8_t l_704 = 0UL;
                int i, j, k;
                for (i = 0; i < 7; i++)
                {
                    for (j = 0; j < 2; j++)
                    {
                        for (k = 0; k < 2; k++)
                            l_698[i][j][k] = &l_500;
                    }
                }
                l_704--;
            }
            else
            { /* block id: 294 */
                int32_t ***l_726 = &l_99;
                int32_t ****l_725 = &l_726;
                l_500 &= (safe_sub_func_int8_t_s_s(((safe_sub_func_int32_t_s_s(((0x72E9L == ((safe_add_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(0xD573E592716B1E2CL, 3UL)), (safe_mod_func_int64_t_s_s(((safe_div_func_uint64_t_u_u(((safe_mul_func_int8_t_s_s((65527UL || (((safe_div_func_uint16_t_u_u(((p_62 != (*l_602)) , (((*l_725) = &l_99) == (p_1406->g_727[1][2][1] = &l_99))), ((*l_624)--))) , 6UL) < l_730)), 0x0FL)) >= 5L), (-1L))) & p_61), 0xF9E62C29953B9950L)))) != 0UL)) ^ 65535UL), p_1406->g_297)) != p_1406->g_103), 0x96L));
                if ((*l_602))
                    break;
            }
        }
        else
        { /* block id: 301 */
            uint8_t l_735 = 1UL;
            int32_t ***l_736 = &p_1406->g_112[0][1];
            uint8_t l_751 = 251UL;
            uint32_t *l_753 = &l_656[6];
            int32_t *l_755 = &p_1406->g_665[2];
            (*p_1406->g_754) = (((*l_753) ^= (safe_lshift_func_int16_t_s_s((((((safe_div_func_int8_t_s_s(((l_735 || GROUP_DIVERGE(0, 1)) == ((((GROUP_DIVERGE(0, 1) >= p_61) == (((((((void*)0 == l_736) || (safe_mod_func_int8_t_s_s((((((void*)0 == l_690) == 0xE290DEBCL) >= (safe_mod_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(((safe_sub_func_uint64_t_u_u(((l_494[0] != (safe_mul_func_int16_t_s_s(((safe_rshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s(0UL, (*p_1406->g_37))), (*l_433))) , 0x26FEL), p_1406->g_616))) < (-9L)), (-1L))) > (-3L)), (-7L))), l_503))) , 1L), 0x0BL))) >= l_751) <= p_60) & p_1406->g_103) >= p_1406->g_92[0])) > 18446744073709551615UL) || p_60)), FAKE_DIVERGE(p_1406->global_0_offset, get_global_id(0), 10))) > p_1406->g_353) && GROUP_DIVERGE(1, 1)) || p_61) >= l_752), 8))) & 4294967295UL);
            (*l_755) = 1L;
        }
    }
    l_780 = ((*l_779) = (((((safe_lshift_func_int16_t_s_u((safe_div_func_uint64_t_u_u((safe_div_func_int32_t_s_s((safe_mod_func_int16_t_s_s(((*l_778) &= (safe_sub_func_uint32_t_u_u(((((((((safe_mul_func_int16_t_s_s(((*l_433) && (l_566 = ((((*l_776) |= (safe_div_func_uint8_t_u_u((((void*)0 == (*l_429)) || (FAKE_DIVERGE(p_1406->local_2_offset, get_local_id(2), 10) , (((safe_lshift_func_uint8_t_u_s(0xA1L, ((safe_rshift_func_uint8_t_u_u(p_1406->g_278, GROUP_DIVERGE(2, 1))) == ((**l_429) = (((void*)0 == (*l_99)) , (safe_div_func_uint8_t_u_u(((void*)0 != &p_1406->g_177), p_1406->g_92[0]))))))) <= FAKE_DIVERGE(p_1406->global_0_offset, get_global_id(0), 10)) , (*l_433)))), p_60))) , l_777[4]) , (*p_1406->g_37)))), 0L)) || 0UL) & FAKE_DIVERGE(p_1406->global_1_offset, get_global_id(1), 10)) , 0x6F84157F9B0BD78EL) | p_1406->g_94) , (*l_433)) || 5UL) || p_62), GROUP_DIVERGE(1, 1)))), 0x4D5CL)), 0x5244E79EL)), FAKE_DIVERGE(p_1406->local_2_offset, get_local_id(2), 10))), FAKE_DIVERGE(p_1406->global_2_offset, get_global_id(2), 10))) , 0x3EL) ^ (*l_433)) ^ 0x4481L) >= p_62));
    for (l_699 = (-14); (l_699 < (-2)); l_699 = safe_add_func_int32_t_s_s(l_699, 3))
    { /* block id: 315 */
        int16_t l_789 = 0x4C68L;
        uint16_t *l_881 = &p_1406->g_515[1][0][1];
        int32_t l_890 = 0x356E829CL;
        uint64_t *l_902 = (void*)0;
        int32_t l_904 = 1L;
        for (l_76 = 0; (l_76 != 22); ++l_76)
        { /* block id: 318 */
            int32_t l_897 = 0L;
            uint64_t **l_900[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            uint64_t *l_905[5] = {&p_1406->g_103,&p_1406->g_103,&p_1406->g_103,&p_1406->g_103,&p_1406->g_103};
            int i;
            for (l_589 = 3; (l_589 > 1); l_589 = safe_sub_func_int16_t_s_s(l_589, 1))
            { /* block id: 321 */
                uint16_t **l_882 = &l_881;
                uint16_t *l_884 = &p_1406->g_515[1][0][1];
                uint16_t **l_883[3][6][9] = {{{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884},{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884},{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884},{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884},{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884},{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884}},{{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884},{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884},{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884},{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884},{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884},{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884}},{{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884},{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884},{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884},{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884},{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884},{&l_884,&l_884,&l_884,(void*)0,&l_884,&l_884,(void*)0,&l_884,&l_884}}};
                uint16_t *l_885 = &p_1406->g_625;
                union U0 *l_888 = &p_1406->g_889;
                int i, j, k;
                (*l_779) = (((safe_sub_func_int8_t_s_s(((*p_1406->g_37) , (*p_1406->g_37)), (((((l_789 ^= (*l_779)) != (p_1406->g_790[6][0][1] != (((((safe_mul_func_int16_t_s_s((l_878 || (p_1406->g_862[2].f0 , (safe_lshift_func_uint16_t_u_s((((*l_882) = l_881) == (l_885 = l_93)), 8)))), ((safe_lshift_func_uint8_t_u_s(p_1406->g_857.f0, 6)) & 1L))) & (*l_433)) , 0L) <= p_61) , l_888))) ^ 0xC1BCL) >= 6UL) ^ l_890))) & 0UL) >= p_1406->g_868.f0);
                (*l_779) = 0x42CE778EL;
            }
            l_891 = ((0x1981L ^ (0UL ^ (*l_433))) <= 1UL);
            (*l_779) |= (-1L);
            (*l_779) = (safe_sub_func_uint32_t_u_u((p_1406->g_894 , ((l_897 ^ ((!(((void*)0 == &l_566) == ((l_904 = (l_890 = (safe_mod_func_int8_t_s_s(((p_1406->g_296[3][0][1] = (l_901[0] = &p_1406->g_611)) != (l_903 = l_902)), p_1406->g_803.f0)))) == (0x75A62543L || ((l_905[4] == &p_62) , p_1406->g_874.f0))))) > p_1406->g_848.f0)) & 8L)), (-5L)));
        }
        if (l_789)
            break;
    }
    return l_908[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1406->g_354 p_1406->g_2
 * writes: p_1406->g_113 p_1406->g_92
 */
int32_t * func_64(int8_t * p_65, int32_t * p_66, uint16_t  p_67, int32_t  p_68, int32_t * p_69, struct S1 * p_1406)
{ /* block id: 201 */
    int32_t *l_430 = &p_1406->g_2;
    (*p_1406->g_354) = l_430;
    (*p_66) = (*l_430);
    return l_430;
}


/* ------------------------------------------ */
/* 
 * reads : p_1406->g_92 p_1406->g_278 p_1406->g_108 p_1406->g_38 p_1406->g_412 p_1406->g_106 p_1406->g_427
 * writes: p_1406->g_412 p_1406->g_94 p_1406->g_106 p_1406->g_12 p_1406->g_305 p_1406->g_113
 */
int8_t * func_70(int8_t * p_71, struct S1 * p_1406)
{ /* block id: 181 */
    uint16_t l_397 = 0x60B0L;
    int32_t l_399 = 0L;
    int32_t l_400 = 0x12A5E24AL;
    uint32_t *l_411 = &p_1406->g_412[1];
    int16_t *l_413[1][3];
    int64_t *l_414 = &p_1406->g_106;
    uint64_t l_415 = 6UL;
    int32_t *l_416 = &p_1406->g_12;
    int8_t *l_428 = &p_1406->g_108;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_413[i][j] = (void*)0;
    }
    (*l_416) = ((((safe_mod_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s((safe_sub_func_int64_t_s_s((-9L), (0xAF96L || (p_1406->g_92[0] == l_397)))), (l_400 = ((*p_71) > (l_399 = (safe_unary_minus_func_int8_t_s((*p_71)))))))), ((*l_414) &= (safe_mul_func_int16_t_s_s((p_1406->g_94 = (safe_sub_func_uint8_t_u_u((((safe_lshift_func_uint8_t_u_s((~((((*l_411) |= (safe_mod_func_int32_t_s_s(((safe_add_func_int16_t_s_s(((-1L) || (l_397 >= l_397)), l_397)) , l_397), p_1406->g_38))) || 0x07F41C3DL) != l_397)), l_397)) , l_397) == l_397), 0x4BL))), p_1406->g_278))))) && 65531UL) || l_415) && (-1L));
    for (l_399 = 0; (l_399 < (-11)); l_399--)
    { /* block id: 190 */
        uint64_t l_423 = 0x61D66600FA4EE61FL;
        int32_t **l_426 = &l_416;
        for (p_1406->g_305 = 0; (p_1406->g_305 != 20); p_1406->g_305++)
        { /* block id: 193 */
            int32_t *l_421 = &l_400;
            int32_t *l_422[2];
            int i;
            for (i = 0; i < 2; i++)
                l_422[i] = &p_1406->g_12;
            ++l_423;
        }
        (*l_426) = &l_400;
    }
    (*p_1406->g_427) = &l_399;
    return l_428;
}


/* ------------------------------------------ */
/* 
 * reads : p_1406->g_94 p_1406->g_91 p_1406->g_86 p_1406->g_92 p_1406->g_145 p_1406->g_12 p_1406->g_2 p_1406->g_149 p_1406->g_106 p_1406->g_23 p_1406->g_103 p_1406->g_158 p_1406->g_108 p_1406->g_177 p_1406->g_207 p_1406->g_158.f0 p_1406->g_113 p_1406->g_278 p_1406->g_296 p_1406->g_329 p_1406->g_335 p_1406->g_354 p_1406->g_344 p_1406->g_344.f0 p_1406->g_305
 * writes: p_1406->g_94 p_1406->g_12 p_1406->g_86 p_1406->g_149 p_1406->g_106 p_1406->g_108 p_1406->g_177 p_1406->g_103 p_1406->g_113 p_1406->g_278 p_1406->g_305
 */
int8_t * func_72(int32_t  p_73, int32_t  p_74, int8_t * p_75, struct S1 * p_1406)
{ /* block id: 31 */
    uint64_t l_115[4][10] = {{18446744073709551615UL,18446744073709551615UL,0x4D43A62FBF910898L,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,0x4D43A62FBF910898L,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,0x4D43A62FBF910898L,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,0x4D43A62FBF910898L,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,0x4D43A62FBF910898L,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,0x4D43A62FBF910898L,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,0x4D43A62FBF910898L,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,0x4D43A62FBF910898L,18446744073709551615UL,18446744073709551615UL}};
    int32_t *l_143[10] = {&p_1406->g_86,&p_1406->g_86,&p_1406->g_92[0],&p_1406->g_86,&p_1406->g_86,&p_1406->g_86,&p_1406->g_86,&p_1406->g_92[0],&p_1406->g_86,&p_1406->g_86};
    int32_t **l_142[6] = {&l_143[5],&l_143[5],&l_143[5],&l_143[5],&l_143[5],&l_143[5]};
    int32_t l_155 = 0x319A48A8L;
    int8_t *l_176 = &p_1406->g_108;
    int8_t **l_175 = &l_176;
    int8_t ***l_174 = &l_175;
    int32_t l_200 = 0L;
    int32_t l_203 = 1L;
    int32_t **l_246 = (void*)0;
    int32_t *l_262[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint32_t l_287 = 0UL;
    union U0 *l_343[2][8][2] = {{{&p_1406->g_344[6],(void*)0},{&p_1406->g_344[6],(void*)0},{&p_1406->g_344[6],(void*)0},{&p_1406->g_344[6],(void*)0},{&p_1406->g_344[6],(void*)0},{&p_1406->g_344[6],(void*)0},{&p_1406->g_344[6],(void*)0},{&p_1406->g_344[6],(void*)0}},{{&p_1406->g_344[6],(void*)0},{&p_1406->g_344[6],(void*)0},{&p_1406->g_344[6],(void*)0},{&p_1406->g_344[6],(void*)0},{&p_1406->g_344[6],(void*)0},{&p_1406->g_344[6],(void*)0},{&p_1406->g_344[6],(void*)0},{&p_1406->g_344[6],(void*)0}}};
    int32_t **l_389 = (void*)0;
    int32_t **l_390 = &p_1406->g_113[1][0];
    int i, j, k;
lbl_124:
    l_115[1][5]--;
    for (p_1406->g_94 = (-7); (p_1406->g_94 == 15); ++p_1406->g_94)
    { /* block id: 35 */
        uint32_t l_120 = 4294967291UL;
        int32_t *l_150[5][1][2] = {{{&p_1406->g_86,&p_1406->g_92[0]}},{{&p_1406->g_86,&p_1406->g_92[0]}},{{&p_1406->g_86,&p_1406->g_92[0]}},{{&p_1406->g_86,&p_1406->g_92[0]}},{{&p_1406->g_86,&p_1406->g_92[0]}}};
        int32_t l_181 = 0L;
        int32_t l_186 = (-1L);
        int32_t l_189 = 6L;
        int32_t l_193 = (-9L);
        int32_t l_197 = 1L;
        uint64_t *l_299 = &l_115[1][5];
        uint64_t **l_298 = &l_299;
        uint16_t *l_304 = &p_1406->g_305;
        int i, j, k;
        for (p_74 = 0; (p_74 <= 2); p_74 += 1)
        { /* block id: 38 */
            int8_t **l_121 = (void*)0;
            int32_t *l_153 = &p_1406->g_12;
            int8_t ***l_173 = &l_121;
            int32_t l_183 = 0x67EE4AC1L;
            int32_t l_184 = 0x759302C5L;
            int32_t l_185 = 0x55BA672AL;
            int32_t l_201[10][7] = {{0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L},{0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L},{0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L},{0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L},{0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L},{0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L},{0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L},{0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L},{0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L},{0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L,1L,0x7DE94E36L,0x7DE94E36L}};
            uint64_t l_204 = 0xA3E34102941B660CL;
            uint64_t l_263[6] = {6UL,6UL,6UL,6UL,6UL,6UL};
            int i, j;
            l_120 &= 0x6CAD787CL;
            for (l_120 = 0; (l_120 <= 2); l_120 += 1)
            { /* block id: 42 */
                int8_t ***l_122 = &l_121;
                int32_t *l_123 = &p_1406->g_12;
                (*l_122) = l_121;
                (*l_123) = 3L;
            }
            for (p_73 = 2; (p_73 >= 0); p_73 -= 1)
            { /* block id: 48 */
                uint16_t l_151[5];
                int32_t l_154 = 0x2C5C07F4L;
                int32_t l_187[4][8] = {{0x704E7F97L,0x0B70258BL,0L,0x0B70258BL,0x704E7F97L,0x704E7F97L,0x0B70258BL,0L},{0x704E7F97L,0x0B70258BL,0L,0x0B70258BL,0x704E7F97L,0x704E7F97L,0x0B70258BL,0L},{0x704E7F97L,0x0B70258BL,0L,0x0B70258BL,0x704E7F97L,0x704E7F97L,0x0B70258BL,0L},{0x704E7F97L,0x0B70258BL,0L,0x0B70258BL,0x704E7F97L,0x704E7F97L,0x0B70258BL,0L}};
                int32_t l_190 = 1L;
                int32_t l_194 = 0x58AA7628L;
                int32_t l_196 = 0x5DBC7C01L;
                int32_t l_199[10];
                int32_t **l_236 = &p_1406->g_146;
                int i, j;
                for (i = 0; i < 5; i++)
                    l_151[i] = 0xA7F2L;
                for (i = 0; i < 10; i++)
                    l_199[i] = 3L;
                for (p_1406->g_86 = 3; (p_1406->g_86 >= 0); p_1406->g_86 -= 1)
                { /* block id: 51 */
                    int32_t *l_133 = &p_1406->g_12;
                    int32_t ***l_144 = &l_142[1];
                    int32_t **l_147 = &p_1406->g_146;
                    int16_t *l_148 = &p_1406->g_149;
                    int64_t *l_152 = &p_1406->g_106;
                    int i, j;
                    if (p_74)
                        goto lbl_124;
                    l_155 = (safe_mod_func_int32_t_s_s(((*l_153) = (p_1406->g_94 || (safe_mod_func_uint16_t_u_u((l_154 = ((safe_sub_func_int16_t_s_s((safe_mod_func_int32_t_s_s(((p_1406->g_91[(p_74 + 1)] != l_133) > (((((*l_152) = ((((((safe_mod_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_u(((((*l_148) &= (((((safe_sub_func_int64_t_s_s(p_1406->g_86, (246UL < (safe_sub_func_uint8_t_u_u(((p_1406->g_92[0] , ((*l_144) = l_142[1])) != (l_147 = p_1406->g_145[7])), (*l_133)))))) | FAKE_DIVERGE(p_1406->group_2_offset, get_group_id(2), 10)) , &l_143[5]) != (void*)0) , p_1406->g_2)) < p_1406->g_106) >= 18446744073709551615UL), p_73)) <= p_73), p_1406->g_23)) == p_74) , l_150[1][0][1]) != (void*)0) , 0x4DF62E77A0DE8031L) != l_151[4])) || 0xD80D4602054360E2L) , (void*)0) != l_153)), 4294967289UL)), p_1406->g_103)) <= p_1406->g_12)), p_73)))), p_73));
                }
                for (p_1406->g_108 = 0; (p_1406->g_108 <= 0); p_1406->g_108 += 1)
                { /* block id: 63 */
                    int8_t ****l_178 = &p_1406->g_177;
                    int32_t l_188 = 0x3A9B0E50L;
                    int32_t l_191 = (-7L);
                    int32_t l_192 = 1L;
                    int32_t l_195 = (-6L);
                    int32_t l_198 = 0x1E7E789FL;
                    int32_t l_202[4];
                    int64_t *l_252 = &p_1406->g_106;
                    uint64_t *l_257 = &l_115[1][5];
                    int i, j;
                    for (i = 0; i < 4; i++)
                        l_202[i] = 0x2CBB44B8L;
                    (*l_153) = (safe_mul_func_uint16_t_u_u((+l_151[2]), ((p_1406->g_158 , 0xB547BDC28BEC3B11L) == ((safe_div_func_int8_t_s_s(0x1BL, ((safe_div_func_int8_t_s_s(((safe_add_func_uint32_t_u_u((safe_div_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s(p_1406->g_108, (((safe_sub_func_uint32_t_u_u(p_1406->g_94, (((p_73 , (l_174 = l_173)) == ((*l_178) = p_1406->g_177)) > 0x01L))) , 3UL) | 0xD7A0CA3772BF5F29L))), l_120)), GROUP_DIVERGE(1, 1))), p_73)) && p_1406->g_94), p_1406->g_92[0])) || p_73))) , p_1406->g_94))));
                    for (p_1406->g_103 = 0; (p_1406->g_103 != 6); p_1406->g_103 = safe_add_func_uint32_t_u_u(p_1406->g_103, 5))
                    { /* block id: 69 */
                        int32_t *l_182[6][1][10] = {{{&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2}},{{&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2}},{{&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2}},{{&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2}},{{&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2}},{{&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2,&l_155,&p_1406->g_2,&p_1406->g_2}}};
                        int i, j, k;
                        l_204--;
                        (*p_1406->g_207) = &p_74;
                    }
                    if ((safe_sub_func_uint8_t_u_u((safe_div_func_int16_t_s_s((0x0BL && (safe_mul_func_int16_t_s_s(((safe_div_func_uint32_t_u_u(0UL, (safe_sub_func_uint32_t_u_u((safe_add_func_uint16_t_u_u((p_1406->g_12 | p_1406->g_86), (safe_rshift_func_uint8_t_u_u(((safe_sub_func_uint8_t_u_u(((*p_75) < p_74), 1UL)) >= (((18446744073709551613UL & p_74) ^ p_1406->g_158.f0) > 1L)), 6)))), (-7L))))) < p_1406->g_23), p_74))), 6UL)), (*p_75))))
                    { /* block id: 73 */
                        int32_t **l_226 = (void*)0;
                        int32_t **l_227 = (void*)0;
                        int32_t **l_228 = (void*)0;
                        int32_t **l_229 = &p_1406->g_113[0][0];
                        l_194 |= (safe_lshift_func_uint8_t_u_u((+(((*l_229) = &p_74) != &p_74)), 4));
                    }
                    else
                    { /* block id: 76 */
                        int64_t *l_245 = &p_1406->g_106;
                        (*l_153) = ((safe_lshift_func_int8_t_s_s((safe_div_func_uint64_t_u_u(p_1406->g_158.f0, ((p_74 < ((l_142[4] = (p_74 , l_236)) != ((((((l_154 |= ((*l_245) ^= (((safe_add_func_int32_t_s_s((p_73 != (safe_rshift_func_int16_t_s_s(((0x74L || p_1406->g_94) , (safe_div_func_int16_t_s_s(p_73, (safe_add_func_int16_t_s_s(((+l_115[1][5]) >= 0x32L), 0L))))), 8))), 1L)) , &p_1406->g_113[1][0]) == &p_1406->g_113[1][0]))) < p_1406->g_2) ^ GROUP_DIVERGE(0, 1)) , 0xA248FCCA4DEAB918L) , l_115[3][8]) , l_246))) ^ (*l_153)))), (*p_75))) | 0x7990L);
                    }
                    if ((0x25L & ((l_203 = p_73) , (safe_add_func_int64_t_s_s((!(safe_unary_minus_func_uint16_t_u(((safe_mod_func_int64_t_s_s(((*l_252) &= (9L & p_74)), p_73)) , ((((safe_sub_func_uint32_t_u_u(p_73, (safe_div_func_int64_t_s_s(3L, ((*l_257) = GROUP_DIVERGE(0, 1)))))) || (safe_mul_func_int16_t_s_s((p_73 , ((((safe_rshift_func_uint16_t_u_u(((4294967295UL || 0x118907BBL) < (-4L)), 14)) & (*p_75)) > 0L) , (*l_153))), 0xA118L))) | p_1406->g_149) , p_1406->g_92[0]))))), p_1406->g_103)))))
                    { /* block id: 85 */
                        l_262[7] = &l_200;
                        if (l_263[1])
                            continue;
                        (*l_153) = (-1L);
                        if (l_120)
                            continue;
                    }
                    else
                    { /* block id: 90 */
                        int32_t **l_264 = &p_1406->g_113[1][0];
                        (*l_264) = &p_74;
                    }
                }
                for (l_204 = (-15); (l_204 <= 46); ++l_204)
                { /* block id: 96 */
                    int32_t **l_267 = &l_262[7];
                    int32_t **l_268 = &p_1406->g_113[1][0];
                    int8_t *l_277 = &p_1406->g_278;
                    (*l_268) = ((*l_267) = (*p_1406->g_207));
                    if (p_73)
                        break;
                    l_199[3] &= ((*p_75) | ((safe_div_func_int16_t_s_s((p_74 | (((safe_lshift_func_uint8_t_u_u((safe_add_func_int16_t_s_s(p_73, (safe_mul_func_int8_t_s_s(((*l_277) ^= ((*l_153) != 1L)), (safe_lshift_func_uint16_t_u_u(0x4D83L, 11)))))), 6)) ^ (p_1406->g_94 > l_189)) <= ((safe_rshift_func_int16_t_s_u((safe_mod_func_int32_t_s_s((((l_194 <= p_1406->g_158.f0) & 0x708E5559L) ^ 0xB1L), p_1406->g_92[0])), 2)) || p_73))), p_1406->g_106)) >= (*l_153)));
                    return p_75;
                }
            }
        }
        for (p_74 = 0; (p_74 >= 17); ++p_74)
        { /* block id: 108 */
            if (p_74)
                goto lbl_124;
        }
        --l_287;
        l_189 = (safe_mul_func_uint8_t_u_u((((safe_mod_func_int64_t_s_s((safe_mod_func_int16_t_s_s((p_1406->g_296[3][0][1] != ((*l_298) = &p_1406->g_297)), p_1406->g_149)), p_1406->g_92[0])) > (p_1406->g_106 > ((2L <= ((safe_add_func_int32_t_s_s(p_74, 7UL)) == ((*l_304) = (((p_74 | p_1406->g_23) ^ p_73) == p_74)))) && p_74))) , p_1406->g_12), p_1406->g_149));
    }
    for (p_1406->g_278 = 0; (p_1406->g_278 > 17); p_1406->g_278 = safe_add_func_uint16_t_u_u(p_1406->g_278, 2))
    { /* block id: 118 */
        uint64_t l_312 = 0UL;
        int32_t l_316 = 4L;
        int32_t l_320[7][9][4] = {{{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L}},{{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L}},{{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L}},{{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L}},{{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L}},{{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L}},{{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L},{9L,1L,1L,0x6D468218L}}};
        uint16_t l_326[8][8] = {{0x5524L,0x5524L,0xB941L,65535UL,0UL,65535UL,0xB941L,0x5524L},{0x5524L,0x5524L,0xB941L,65535UL,0UL,65535UL,0xB941L,0x5524L},{0x5524L,0x5524L,0xB941L,65535UL,0UL,65535UL,0xB941L,0x5524L},{0x5524L,0x5524L,0xB941L,65535UL,0UL,65535UL,0xB941L,0x5524L},{0x5524L,0x5524L,0xB941L,65535UL,0UL,65535UL,0xB941L,0x5524L},{0x5524L,0x5524L,0xB941L,65535UL,0UL,65535UL,0xB941L,0x5524L},{0x5524L,0x5524L,0xB941L,65535UL,0UL,65535UL,0xB941L,0x5524L},{0x5524L,0x5524L,0xB941L,65535UL,0UL,65535UL,0xB941L,0x5524L}};
        union U0 *l_345 = (void*)0;
        int64_t *l_363 = &p_1406->g_106;
        uint32_t l_368 = 4294967295UL;
        int8_t *l_387 = &p_1406->g_278;
        int32_t **l_388 = &p_1406->g_113[1][0];
        int i, j, k;
        for (p_1406->g_103 = 0; (p_1406->g_103 <= 57); ++p_1406->g_103)
        { /* block id: 121 */
            uint64_t **l_311 = (void*)0;
            uint64_t ***l_310 = &l_311;
            int32_t l_318 = 4L;
            int16_t l_324 = (-3L);
            int8_t **l_330 = (void*)0;
            (*l_310) = (void*)0;
            for (p_1406->g_149 = 0; (p_1406->g_149 <= 0); p_1406->g_149 += 1)
            { /* block id: 125 */
                int32_t l_317 = 0x048CC07BL;
                int32_t l_319 = (-7L);
                int32_t l_321 = 0x4B4F8539L;
                int32_t l_322[10];
                uint64_t *l_334 = &p_1406->g_103;
                uint64_t **l_333 = &l_334;
                int8_t *l_348 = &p_1406->g_108;
                uint32_t l_386 = 5UL;
                int i, j;
                for (i = 0; i < 10; i++)
                    l_322[i] = 0x33DC61EBL;
                for (p_1406->g_86 = 0; (p_1406->g_86 <= 0); p_1406->g_86 += 1)
                { /* block id: 128 */
                    int8_t l_315 = 0x53L;
                    int32_t l_323 = (-1L);
                    int32_t l_325 = 1L;
                    ++l_312;
                    l_326[1][4]++;
                }
                (*p_1406->g_329) = p_1406->g_91[(p_1406->g_149 + 2)];
                if (((l_330 != (void*)0) > (safe_add_func_uint16_t_u_u((l_333 != p_1406->g_335), ((safe_lshift_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s(1L, l_115[(p_1406->g_149 + 1)][(p_1406->g_149 + 8)])) ^ ((safe_lshift_func_uint16_t_u_u(0UL, p_74)) <= (l_318 > l_326[1][4]))), 14)) >= (*p_75))))))
                { /* block id: 133 */
                    for (p_1406->g_86 = 0; (p_1406->g_86 <= 0); p_1406->g_86 += 1)
                    { /* block id: 136 */
                        int32_t **l_342 = &l_262[7];
                        if (p_73)
                            break;
                        (*l_342) = (void*)0;
                        l_345 = l_343[0][1][1];
                    }
                    if (l_318)
                    { /* block id: 141 */
                        return &p_1406->g_108;
                    }
                    else
                    { /* block id: 143 */
                        uint64_t l_349 = 0x62812FE4CCA4B3DCL;
                        uint8_t *l_352[1][10] = {{&p_1406->g_353,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353,&p_1406->g_353}};
                        int i, j;
                        l_349 = (l_320[3][3][0] <= (p_1406->g_103 , (safe_div_func_uint8_t_u_u(((l_348 != p_75) != (l_317 == FAKE_DIVERGE(p_1406->global_0_offset, get_global_id(0), 10))), (*p_75)))));
                        (*p_1406->g_354) = ((safe_div_func_uint8_t_u_u((l_316 |= p_74), (*p_75))) , (*p_1406->g_329));
                        return p_75;
                    }
                }
                else
                { /* block id: 149 */
                    if (l_318)
                        break;
                    for (p_1406->g_12 = 0; (p_1406->g_12 <= 0); p_1406->g_12 += 1)
                    { /* block id: 153 */
                        int64_t **l_359 = (void*)0;
                        int64_t *l_361 = &p_1406->g_106;
                        int64_t **l_360 = &l_361;
                        int32_t l_362 = 4L;
                        int16_t *l_371[3][8];
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 8; j++)
                                l_371[i][j] = (void*)0;
                        }
                        p_74 = ((void*)0 != p_75);
                        if ((**p_1406->g_329))
                            continue;
                        l_317 = (l_320[3][6][1] |= (safe_lshift_func_uint8_t_u_u(0xEDL, ((p_1406->g_94 |= ((safe_mod_func_int16_t_s_s((((*l_360) = (void*)0) != (l_363 = (l_362 , p_1406->g_296[(p_1406->g_149 + 3)][p_1406->g_12][(p_1406->g_12 + 1)]))), (((safe_unary_minus_func_uint16_t_u(GROUP_DIVERGE(2, 1))) , l_322[7]) | ((safe_mul_func_int16_t_s_s((safe_unary_minus_func_uint32_t_u((l_318 = (p_1406->g_344[(p_1406->g_12 + 1)] , (p_1406->g_344[6].f0 > ((l_368 || (safe_sub_func_uint64_t_u_u(((-6L) > 3UL), 0x8A65E6D9E8982A68L))) , 0x2D7B68580AB61AD7L)))))), 0x75B2L)) >= 0xCAD4268E1F56D0E3L)))) == 0x45419E4FL)) ^ 0x3D06L))));
                        p_74 ^= (((l_318 & (safe_add_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_u(l_317, 2)), p_1406->g_106))) < (safe_div_func_uint64_t_u_u((safe_mod_func_int8_t_s_s((*p_75), (safe_rshift_func_int8_t_s_u(0x7AL, 2)))), (-1L)))) || ((safe_mul_func_int8_t_s_s(((p_1406->g_344[(p_1406->g_149 + 3)] , (((safe_sub_func_int64_t_s_s((p_1406->g_106 = (p_1406->g_344[(p_1406->g_149 + 3)].f0 && 0xDF07088B26008E88L)), 0xCE596C879CBFC61AL)) || FAKE_DIVERGE(p_1406->global_2_offset, get_global_id(2), 10)) >= 1L)) != p_1406->g_305), l_312)) > 0x02L));
                    }
                    l_386 ^= p_73;
                    for (l_319 = 0; (l_319 <= 3); l_319 += 1)
                    { /* block id: 168 */
                        l_318 = 4L;
                        if (p_73)
                            break;
                        return l_387;
                    }
                }
            }
        }
        (*l_388) = &l_155;
        if ((**p_1406->g_207))
            continue;
    }
    (*l_390) = &p_74;
    return &p_1406->g_108;
}


/* ------------------------------------------ */
/* 
 * reads : p_1406->g_2
 * writes: p_1406->g_112
 */
uint32_t  func_79(int32_t  p_80, uint64_t  p_81, int8_t * p_82, int32_t * p_83, uint64_t  p_84, struct S1 * p_1406)
{ /* block id: 27 */
    int32_t *l_110 = &p_1406->g_2;
    int32_t **l_109 = &l_110;
    int32_t ***l_111[8][8] = {{(void*)0,(void*)0,&l_109,(void*)0,(void*)0,(void*)0,(void*)0,&l_109},{(void*)0,(void*)0,&l_109,(void*)0,(void*)0,(void*)0,(void*)0,&l_109},{(void*)0,(void*)0,&l_109,(void*)0,(void*)0,(void*)0,(void*)0,&l_109},{(void*)0,(void*)0,&l_109,(void*)0,(void*)0,(void*)0,(void*)0,&l_109},{(void*)0,(void*)0,&l_109,(void*)0,(void*)0,(void*)0,(void*)0,&l_109},{(void*)0,(void*)0,&l_109,(void*)0,(void*)0,(void*)0,(void*)0,&l_109},{(void*)0,(void*)0,&l_109,(void*)0,(void*)0,(void*)0,(void*)0,&l_109},{(void*)0,(void*)0,&l_109,(void*)0,(void*)0,(void*)0,(void*)0,&l_109}};
    uint64_t l_114[5] = {0x5DCB43529ADFF657L,0x5DCB43529ADFF657L,0x5DCB43529ADFF657L,0x5DCB43529ADFF657L,0x5DCB43529ADFF657L};
    int i, j;
    p_1406->g_112[6][2] = l_109;
    l_114[1] = (&p_1406->g_106 != (void*)0);
    return (*l_110);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1407;
    struct S1* p_1406 = &c_1407;
    struct S1 c_1408 = {
        0x7C558BACL, // p_1406->g_2
        0L, // p_1406->g_12
        1UL, // p_1406->g_23
        0x3DL, // p_1406->g_38
        &p_1406->g_38, // p_1406->g_37
        0x261EB613L, // p_1406->g_86
        {0x35B4C0DDL}, // p_1406->g_92
        {&p_1406->g_92[0],&p_1406->g_92[0],&p_1406->g_92[0],&p_1406->g_92[0]}, // p_1406->g_91
        0x57B9L, // p_1406->g_94
        0x7EDEBCD59021B0A0L, // p_1406->g_103
        0x300FFBEBD5D228C8L, // p_1406->g_106
        1L, // p_1406->g_108
        {{&p_1406->g_2},{&p_1406->g_2},{&p_1406->g_2},{&p_1406->g_2},{&p_1406->g_2},{&p_1406->g_2},{&p_1406->g_2}}, // p_1406->g_113
        {{&p_1406->g_113[1][0],&p_1406->g_113[1][0],&p_1406->g_113[1][0]},{&p_1406->g_113[1][0],&p_1406->g_113[1][0],&p_1406->g_113[1][0]},{&p_1406->g_113[1][0],&p_1406->g_113[1][0],&p_1406->g_113[1][0]},{&p_1406->g_113[1][0],&p_1406->g_113[1][0],&p_1406->g_113[1][0]},{&p_1406->g_113[1][0],&p_1406->g_113[1][0],&p_1406->g_113[1][0]},{&p_1406->g_113[1][0],&p_1406->g_113[1][0],&p_1406->g_113[1][0]},{&p_1406->g_113[1][0],&p_1406->g_113[1][0],&p_1406->g_113[1][0]},{&p_1406->g_113[1][0],&p_1406->g_113[1][0],&p_1406->g_113[1][0]},{&p_1406->g_113[1][0],&p_1406->g_113[1][0],&p_1406->g_113[1][0]}}, // p_1406->g_112
        (void*)0, // p_1406->g_146
        {&p_1406->g_146,&p_1406->g_146,&p_1406->g_146,&p_1406->g_146,&p_1406->g_146,&p_1406->g_146,&p_1406->g_146,&p_1406->g_146,&p_1406->g_146,&p_1406->g_146}, // p_1406->g_145
        0x7E42L, // p_1406->g_149
        {0x262ADE66L}, // p_1406->g_158
        (void*)0, // p_1406->g_177
        &p_1406->g_113[5][0], // p_1406->g_207
        0x62L, // p_1406->g_278
        0xBAC3DFB1DF5632F5L, // p_1406->g_297
        {{{&p_1406->g_297,&p_1406->g_297,&p_1406->g_297}},{{&p_1406->g_297,&p_1406->g_297,&p_1406->g_297}},{{&p_1406->g_297,&p_1406->g_297,&p_1406->g_297}},{{&p_1406->g_297,&p_1406->g_297,&p_1406->g_297}},{{&p_1406->g_297,&p_1406->g_297,&p_1406->g_297}},{{&p_1406->g_297,&p_1406->g_297,&p_1406->g_297}}}, // p_1406->g_296
        5UL, // p_1406->g_305
        &p_1406->g_113[1][0], // p_1406->g_329
        (void*)0, // p_1406->g_335
        {{5UL},{4294967288UL},{5UL},{5UL},{4294967288UL},{5UL},{5UL},{4294967288UL},{5UL}}, // p_1406->g_344
        0x65L, // p_1406->g_353
        &p_1406->g_113[0][0], // p_1406->g_354
        {0UL,0UL,0UL}, // p_1406->g_412
        &p_1406->g_113[1][0], // p_1406->g_427
        (void*)0, // p_1406->g_431
        {{(void*)0,&p_1406->g_113[1][0],(void*)0,(void*)0,&p_1406->g_113[1][0],(void*)0},{(void*)0,&p_1406->g_113[1][0],(void*)0,(void*)0,&p_1406->g_113[1][0],(void*)0},{(void*)0,&p_1406->g_113[1][0],(void*)0,(void*)0,&p_1406->g_113[1][0],(void*)0},{(void*)0,&p_1406->g_113[1][0],(void*)0,(void*)0,&p_1406->g_113[1][0],(void*)0}}, // p_1406->g_432
        {0xDD80B240L}, // p_1406->g_438
        0x227993A3B5AB2715L, // p_1406->g_451
        &p_1406->g_451, // p_1406->g_450
        &p_1406->g_450, // p_1406->g_449
        {{{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL}},{{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL}},{{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL}},{{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL}},{{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL}},{{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL}},{{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL},{65535UL,65535UL}}}, // p_1406->g_515
        {&p_1406->g_113[1][0],&p_1406->g_113[2][0],&p_1406->g_113[1][0],&p_1406->g_113[1][0],&p_1406->g_113[2][0],&p_1406->g_113[1][0],&p_1406->g_113[1][0]}, // p_1406->g_547
        &p_1406->g_113[1][0], // p_1406->g_548
        1UL, // p_1406->g_611
        0x01E1L, // p_1406->g_616
        4294967290UL, // p_1406->g_617
        0UL, // p_1406->g_625
        {1UL}, // p_1406->g_633
        {0L,0L,0L,0L,0L,0L,0L,0L}, // p_1406->g_665
        (void*)0, // p_1406->g_666
        (void*)0, // p_1406->g_667
        {{{(void*)0,&p_1406->g_145[7]},{(void*)0,&p_1406->g_145[7]},{(void*)0,&p_1406->g_145[7]},{(void*)0,&p_1406->g_145[7]}},{{(void*)0,&p_1406->g_145[7]},{(void*)0,&p_1406->g_145[7]},{(void*)0,&p_1406->g_145[7]},{(void*)0,&p_1406->g_145[7]}},{{(void*)0,&p_1406->g_145[7]},{(void*)0,&p_1406->g_145[7]},{(void*)0,&p_1406->g_145[7]},{(void*)0,&p_1406->g_145[7]}},{{(void*)0,&p_1406->g_145[7]},{(void*)0,&p_1406->g_145[7]},{(void*)0,&p_1406->g_145[7]},{(void*)0,&p_1406->g_145[7]}},{{(void*)0,&p_1406->g_145[7]},{(void*)0,&p_1406->g_145[7]},{(void*)0,&p_1406->g_145[7]},{(void*)0,&p_1406->g_145[7]}}}, // p_1406->g_727
        &p_1406->g_665[2], // p_1406->g_754
        {0xA4480649L}, // p_1406->g_791
        {1UL}, // p_1406->g_792
        {0UL}, // p_1406->g_793
        {{{0x93DCC3A6L},{0x93DCC3A6L},{0x93DCC3A6L}}}, // p_1406->g_794
        {0x7BCE3439L}, // p_1406->g_795
        {1UL}, // p_1406->g_796
        {1UL}, // p_1406->g_797
        {0UL}, // p_1406->g_798
        {0x0A4580EBL}, // p_1406->g_799
        {{{0x79166CBAL},{4UL},{0UL},{4294967289UL},{0UL},{4UL},{0x79166CBAL},{0UL}},{{0x79166CBAL},{4UL},{0UL},{4294967289UL},{0UL},{4UL},{0x79166CBAL},{0UL}},{{0x79166CBAL},{4UL},{0UL},{4294967289UL},{0UL},{4UL},{0x79166CBAL},{0UL}},{{0x79166CBAL},{4UL},{0UL},{4294967289UL},{0UL},{4UL},{0x79166CBAL},{0UL}},{{0x79166CBAL},{4UL},{0UL},{4294967289UL},{0UL},{4UL},{0x79166CBAL},{0UL}},{{0x79166CBAL},{4UL},{0UL},{4294967289UL},{0UL},{4UL},{0x79166CBAL},{0UL}},{{0x79166CBAL},{4UL},{0UL},{4294967289UL},{0UL},{4UL},{0x79166CBAL},{0UL}},{{0x79166CBAL},{4UL},{0UL},{4294967289UL},{0UL},{4UL},{0x79166CBAL},{0UL}},{{0x79166CBAL},{4UL},{0UL},{4294967289UL},{0UL},{4UL},{0x79166CBAL},{0UL}}}, // p_1406->g_800
        {0x5076F51FL}, // p_1406->g_801
        {0x89418756L}, // p_1406->g_802
        {0xDD5A27B3L}, // p_1406->g_803
        {4294967295UL}, // p_1406->g_804
        {0x7332FE67L}, // p_1406->g_805
        {{{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}}},{{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}}},{{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}}},{{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}},{{0x3340972AL},{0x9163763DL},{0x4CAEED85L},{0x334681E3L},{0x6995CCF1L},{0x9163763DL},{0xD8E58CA4L},{0x5F318EE8L}}}}, // p_1406->g_806
        {0UL}, // p_1406->g_807
        {0x88D63946L}, // p_1406->g_808
        {0xA8DDEB51L}, // p_1406->g_809
        {6UL}, // p_1406->g_810
        {0x2814D33DL}, // p_1406->g_811
        {0xAE23CEE1L}, // p_1406->g_812
        {4294967295UL}, // p_1406->g_813
        {{0xC974868CL},{0xC974868CL},{0xC974868CL},{0xC974868CL},{0xC974868CL}}, // p_1406->g_814
        {0x55AE7F32L}, // p_1406->g_815
        {7UL}, // p_1406->g_816
        {4294967289UL}, // p_1406->g_817
        {4294967289UL}, // p_1406->g_818
        {{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL}}, // p_1406->g_819
        {2UL}, // p_1406->g_820
        {3UL}, // p_1406->g_821
        {0x215727B6L}, // p_1406->g_822
        {0x1C76CCFFL}, // p_1406->g_823
        {0x8CA03482L}, // p_1406->g_824
        {0x543E5D51L}, // p_1406->g_825
        {0xCC321C62L}, // p_1406->g_826
        {{0x22614036L},{0x22614036L}}, // p_1406->g_827
        {{0x18E507B6L},{0x18E507B6L},{0x18E507B6L},{0x18E507B6L},{0x18E507B6L}}, // p_1406->g_828
        {0x1A750497L}, // p_1406->g_829
        {{{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}}},{{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}}},{{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}}},{{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}}},{{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}},{{0xAB864E0AL},{0xFA82CDFCL},{0x7420F967L},{1UL},{0xB129174CL}}}}, // p_1406->g_830
        {0x90B55854L}, // p_1406->g_831
        {{0x8B87BD76L},{0x8B87BD76L},{0x8B87BD76L}}, // p_1406->g_832
        {0x19CE3744L}, // p_1406->g_833
        {{0x25D12FECL}}, // p_1406->g_834
        {2UL}, // p_1406->g_835
        {0x7C563C2AL}, // p_1406->g_836
        {{{{8UL},{0x56F4B644L},{0x56F4B644L},{8UL},{8UL},{0x56F4B644L},{0x56F4B644L},{8UL},{8UL}},{{8UL},{0x56F4B644L},{0x56F4B644L},{8UL},{8UL},{0x56F4B644L},{0x56F4B644L},{8UL},{8UL}},{{8UL},{0x56F4B644L},{0x56F4B644L},{8UL},{8UL},{0x56F4B644L},{0x56F4B644L},{8UL},{8UL}}}}, // p_1406->g_837
        {{0xF08C9396L},{0xF08C9396L},{0xF08C9396L}}, // p_1406->g_838
        {{0x9AB4D601L},{4294967286UL},{0x9AB4D601L},{0x9AB4D601L},{4294967286UL},{0x9AB4D601L},{0x9AB4D601L},{4294967286UL},{0x9AB4D601L},{0x9AB4D601L}}, // p_1406->g_839
        {0x66FF5833L}, // p_1406->g_840
        {0x9672CEFCL}, // p_1406->g_841
        {0x952A1C81L}, // p_1406->g_842
        {0x56A86725L}, // p_1406->g_843
        {{0x3111273BL},{0x3111273BL},{0x3111273BL},{0x3111273BL},{0x3111273BL}}, // p_1406->g_844
        {0x3C4D0078L}, // p_1406->g_845
        {0xA124AE41L}, // p_1406->g_846
        {0x0105D5EEL}, // p_1406->g_847
        {1UL}, // p_1406->g_848
        {0x0F708EE7L}, // p_1406->g_849
        {0UL}, // p_1406->g_850
        {0xE6AB6230L}, // p_1406->g_851
        {0UL}, // p_1406->g_852
        {4294967293UL}, // p_1406->g_853
        {0xEF91AE58L}, // p_1406->g_854
        {0x92239F42L}, // p_1406->g_855
        {4294967295UL}, // p_1406->g_856
        {4294967295UL}, // p_1406->g_857
        {1UL}, // p_1406->g_858
        {0x8310846AL}, // p_1406->g_859
        {0x0769089BL}, // p_1406->g_860
        {0x63FC2982L}, // p_1406->g_861
        {{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL}}, // p_1406->g_862
        {0xC6986335L}, // p_1406->g_863
        {0UL}, // p_1406->g_864
        {4294967295UL}, // p_1406->g_865
        {0x90BCE7BBL}, // p_1406->g_866
        {0x68EFEBA7L}, // p_1406->g_867
        {1UL}, // p_1406->g_868
        {0UL}, // p_1406->g_869
        {0x398FBBA6L}, // p_1406->g_870
        {1UL}, // p_1406->g_871
        {4294967295UL}, // p_1406->g_872
        {0xC8C60020L}, // p_1406->g_873
        {0x82692964L}, // p_1406->g_874
        {5UL}, // p_1406->g_875
        {{{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831}},{{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831}},{{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831}},{{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831}},{{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831}},{{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831}},{{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831}},{{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831}},{{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831}},{{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831},{&p_1406->g_797,&p_1406->g_871,&p_1406->g_845,&p_1406->g_810,&p_1406->g_855,&p_1406->g_800[5][3],&p_1406->g_819[8],&p_1406->g_831}}}, // p_1406->g_790
        {0xDB764825L}, // p_1406->g_889
        {9UL}, // p_1406->g_894
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_1406->g_910
        0xDE1A9D71FF59596FL, // p_1406->g_943
        (void*)0, // p_1406->g_945
        &p_1406->g_12, // p_1406->g_946
        0x645D1138L, // p_1406->g_992
        0x67BA2D9A448D14A1L, // p_1406->g_1021
        3UL, // p_1406->g_1174
        {{{7UL},{4294967294UL},{0x0B6DC745L},{0x32CC1827L}},{{7UL},{4294967294UL},{0x0B6DC745L},{0x32CC1827L}},{{7UL},{4294967294UL},{0x0B6DC745L},{0x32CC1827L}},{{7UL},{4294967294UL},{0x0B6DC745L},{0x32CC1827L}},{{7UL},{4294967294UL},{0x0B6DC745L},{0x32CC1827L}},{{7UL},{4294967294UL},{0x0B6DC745L},{0x32CC1827L}},{{7UL},{4294967294UL},{0x0B6DC745L},{0x32CC1827L}},{{7UL},{4294967294UL},{0x0B6DC745L},{0x32CC1827L}},{{7UL},{4294967294UL},{0x0B6DC745L},{0x32CC1827L}},{{7UL},{4294967294UL},{0x0B6DC745L},{0x32CC1827L}}}, // p_1406->g_1235
        &p_1406->g_37, // p_1406->g_1300
        {{&p_1406->g_1300,&p_1406->g_1300,&p_1406->g_1300,&p_1406->g_1300,&p_1406->g_1300},{&p_1406->g_1300,&p_1406->g_1300,&p_1406->g_1300,&p_1406->g_1300,&p_1406->g_1300},{&p_1406->g_1300,&p_1406->g_1300,&p_1406->g_1300,&p_1406->g_1300,&p_1406->g_1300}}, // p_1406->g_1299
        &p_1406->g_1299[1][2], // p_1406->g_1298
        &p_1406->g_1298, // p_1406->g_1297
        0xDF8DCACDL, // p_1406->g_1395
        sequence_input[get_global_id(0)], // p_1406->global_0_offset
        sequence_input[get_global_id(1)], // p_1406->global_1_offset
        sequence_input[get_global_id(2)], // p_1406->global_2_offset
        sequence_input[get_local_id(0)], // p_1406->local_0_offset
        sequence_input[get_local_id(1)], // p_1406->local_1_offset
        sequence_input[get_local_id(2)], // p_1406->local_2_offset
        sequence_input[get_group_id(0)], // p_1406->group_0_offset
        sequence_input[get_group_id(1)], // p_1406->group_1_offset
        sequence_input[get_group_id(2)], // p_1406->group_2_offset
    };
    c_1407 = c_1408;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1406);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1406->g_2, "p_1406->g_2", print_hash_value);
    transparent_crc(p_1406->g_12, "p_1406->g_12", print_hash_value);
    transparent_crc(p_1406->g_23, "p_1406->g_23", print_hash_value);
    transparent_crc(p_1406->g_38, "p_1406->g_38", print_hash_value);
    transparent_crc(p_1406->g_86, "p_1406->g_86", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1406->g_92[i], "p_1406->g_92[i]", print_hash_value);

    }
    transparent_crc(p_1406->g_94, "p_1406->g_94", print_hash_value);
    transparent_crc(p_1406->g_103, "p_1406->g_103", print_hash_value);
    transparent_crc(p_1406->g_106, "p_1406->g_106", print_hash_value);
    transparent_crc(p_1406->g_108, "p_1406->g_108", print_hash_value);
    transparent_crc(p_1406->g_149, "p_1406->g_149", print_hash_value);
    transparent_crc(p_1406->g_158.f0, "p_1406->g_158.f0", print_hash_value);
    transparent_crc(p_1406->g_278, "p_1406->g_278", print_hash_value);
    transparent_crc(p_1406->g_297, "p_1406->g_297", print_hash_value);
    transparent_crc(p_1406->g_305, "p_1406->g_305", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1406->g_344[i].f0, "p_1406->g_344[i].f0", print_hash_value);

    }
    transparent_crc(p_1406->g_353, "p_1406->g_353", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1406->g_412[i], "p_1406->g_412[i]", print_hash_value);

    }
    transparent_crc(p_1406->g_438.f0, "p_1406->g_438.f0", print_hash_value);
    transparent_crc(p_1406->g_451, "p_1406->g_451", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1406->g_515[i][j][k], "p_1406->g_515[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1406->g_611, "p_1406->g_611", print_hash_value);
    transparent_crc(p_1406->g_616, "p_1406->g_616", print_hash_value);
    transparent_crc(p_1406->g_617, "p_1406->g_617", print_hash_value);
    transparent_crc(p_1406->g_625, "p_1406->g_625", print_hash_value);
    transparent_crc(p_1406->g_633.f0, "p_1406->g_633.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1406->g_665[i], "p_1406->g_665[i]", print_hash_value);

    }
    transparent_crc(p_1406->g_791.f0, "p_1406->g_791.f0", print_hash_value);
    transparent_crc(p_1406->g_792.f0, "p_1406->g_792.f0", print_hash_value);
    transparent_crc(p_1406->g_793.f0, "p_1406->g_793.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1406->g_794[i][j].f0, "p_1406->g_794[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1406->g_795.f0, "p_1406->g_795.f0", print_hash_value);
    transparent_crc(p_1406->g_796.f0, "p_1406->g_796.f0", print_hash_value);
    transparent_crc(p_1406->g_797.f0, "p_1406->g_797.f0", print_hash_value);
    transparent_crc(p_1406->g_798.f0, "p_1406->g_798.f0", print_hash_value);
    transparent_crc(p_1406->g_799.f0, "p_1406->g_799.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1406->g_800[i][j].f0, "p_1406->g_800[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1406->g_801.f0, "p_1406->g_801.f0", print_hash_value);
    transparent_crc(p_1406->g_802.f0, "p_1406->g_802.f0", print_hash_value);
    transparent_crc(p_1406->g_803.f0, "p_1406->g_803.f0", print_hash_value);
    transparent_crc(p_1406->g_804.f0, "p_1406->g_804.f0", print_hash_value);
    transparent_crc(p_1406->g_805.f0, "p_1406->g_805.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1406->g_806[i][j][k].f0, "p_1406->g_806[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1406->g_807.f0, "p_1406->g_807.f0", print_hash_value);
    transparent_crc(p_1406->g_808.f0, "p_1406->g_808.f0", print_hash_value);
    transparent_crc(p_1406->g_809.f0, "p_1406->g_809.f0", print_hash_value);
    transparent_crc(p_1406->g_810.f0, "p_1406->g_810.f0", print_hash_value);
    transparent_crc(p_1406->g_811.f0, "p_1406->g_811.f0", print_hash_value);
    transparent_crc(p_1406->g_812.f0, "p_1406->g_812.f0", print_hash_value);
    transparent_crc(p_1406->g_813.f0, "p_1406->g_813.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1406->g_814[i].f0, "p_1406->g_814[i].f0", print_hash_value);

    }
    transparent_crc(p_1406->g_815.f0, "p_1406->g_815.f0", print_hash_value);
    transparent_crc(p_1406->g_816.f0, "p_1406->g_816.f0", print_hash_value);
    transparent_crc(p_1406->g_817.f0, "p_1406->g_817.f0", print_hash_value);
    transparent_crc(p_1406->g_818.f0, "p_1406->g_818.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1406->g_819[i].f0, "p_1406->g_819[i].f0", print_hash_value);

    }
    transparent_crc(p_1406->g_820.f0, "p_1406->g_820.f0", print_hash_value);
    transparent_crc(p_1406->g_821.f0, "p_1406->g_821.f0", print_hash_value);
    transparent_crc(p_1406->g_822.f0, "p_1406->g_822.f0", print_hash_value);
    transparent_crc(p_1406->g_823.f0, "p_1406->g_823.f0", print_hash_value);
    transparent_crc(p_1406->g_824.f0, "p_1406->g_824.f0", print_hash_value);
    transparent_crc(p_1406->g_825.f0, "p_1406->g_825.f0", print_hash_value);
    transparent_crc(p_1406->g_826.f0, "p_1406->g_826.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1406->g_827[i].f0, "p_1406->g_827[i].f0", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1406->g_828[i].f0, "p_1406->g_828[i].f0", print_hash_value);

    }
    transparent_crc(p_1406->g_829.f0, "p_1406->g_829.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1406->g_830[i][j][k].f0, "p_1406->g_830[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1406->g_831.f0, "p_1406->g_831.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1406->g_832[i].f0, "p_1406->g_832[i].f0", print_hash_value);

    }
    transparent_crc(p_1406->g_833.f0, "p_1406->g_833.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1406->g_834[i].f0, "p_1406->g_834[i].f0", print_hash_value);

    }
    transparent_crc(p_1406->g_835.f0, "p_1406->g_835.f0", print_hash_value);
    transparent_crc(p_1406->g_836.f0, "p_1406->g_836.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1406->g_837[i][j][k].f0, "p_1406->g_837[i][j][k].f0", print_hash_value);

            }
        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1406->g_838[i].f0, "p_1406->g_838[i].f0", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1406->g_839[i].f0, "p_1406->g_839[i].f0", print_hash_value);

    }
    transparent_crc(p_1406->g_840.f0, "p_1406->g_840.f0", print_hash_value);
    transparent_crc(p_1406->g_841.f0, "p_1406->g_841.f0", print_hash_value);
    transparent_crc(p_1406->g_842.f0, "p_1406->g_842.f0", print_hash_value);
    transparent_crc(p_1406->g_843.f0, "p_1406->g_843.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1406->g_844[i].f0, "p_1406->g_844[i].f0", print_hash_value);

    }
    transparent_crc(p_1406->g_845.f0, "p_1406->g_845.f0", print_hash_value);
    transparent_crc(p_1406->g_846.f0, "p_1406->g_846.f0", print_hash_value);
    transparent_crc(p_1406->g_847.f0, "p_1406->g_847.f0", print_hash_value);
    transparent_crc(p_1406->g_848.f0, "p_1406->g_848.f0", print_hash_value);
    transparent_crc(p_1406->g_849.f0, "p_1406->g_849.f0", print_hash_value);
    transparent_crc(p_1406->g_850.f0, "p_1406->g_850.f0", print_hash_value);
    transparent_crc(p_1406->g_851.f0, "p_1406->g_851.f0", print_hash_value);
    transparent_crc(p_1406->g_852.f0, "p_1406->g_852.f0", print_hash_value);
    transparent_crc(p_1406->g_853.f0, "p_1406->g_853.f0", print_hash_value);
    transparent_crc(p_1406->g_854.f0, "p_1406->g_854.f0", print_hash_value);
    transparent_crc(p_1406->g_855.f0, "p_1406->g_855.f0", print_hash_value);
    transparent_crc(p_1406->g_856.f0, "p_1406->g_856.f0", print_hash_value);
    transparent_crc(p_1406->g_857.f0, "p_1406->g_857.f0", print_hash_value);
    transparent_crc(p_1406->g_858.f0, "p_1406->g_858.f0", print_hash_value);
    transparent_crc(p_1406->g_859.f0, "p_1406->g_859.f0", print_hash_value);
    transparent_crc(p_1406->g_860.f0, "p_1406->g_860.f0", print_hash_value);
    transparent_crc(p_1406->g_861.f0, "p_1406->g_861.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1406->g_862[i].f0, "p_1406->g_862[i].f0", print_hash_value);

    }
    transparent_crc(p_1406->g_863.f0, "p_1406->g_863.f0", print_hash_value);
    transparent_crc(p_1406->g_864.f0, "p_1406->g_864.f0", print_hash_value);
    transparent_crc(p_1406->g_865.f0, "p_1406->g_865.f0", print_hash_value);
    transparent_crc(p_1406->g_866.f0, "p_1406->g_866.f0", print_hash_value);
    transparent_crc(p_1406->g_867.f0, "p_1406->g_867.f0", print_hash_value);
    transparent_crc(p_1406->g_868.f0, "p_1406->g_868.f0", print_hash_value);
    transparent_crc(p_1406->g_869.f0, "p_1406->g_869.f0", print_hash_value);
    transparent_crc(p_1406->g_870.f0, "p_1406->g_870.f0", print_hash_value);
    transparent_crc(p_1406->g_871.f0, "p_1406->g_871.f0", print_hash_value);
    transparent_crc(p_1406->g_872.f0, "p_1406->g_872.f0", print_hash_value);
    transparent_crc(p_1406->g_873.f0, "p_1406->g_873.f0", print_hash_value);
    transparent_crc(p_1406->g_874.f0, "p_1406->g_874.f0", print_hash_value);
    transparent_crc(p_1406->g_875.f0, "p_1406->g_875.f0", print_hash_value);
    transparent_crc(p_1406->g_889.f0, "p_1406->g_889.f0", print_hash_value);
    transparent_crc(p_1406->g_894.f0, "p_1406->g_894.f0", print_hash_value);
    transparent_crc(p_1406->g_943, "p_1406->g_943", print_hash_value);
    transparent_crc(p_1406->g_992, "p_1406->g_992", print_hash_value);
    transparent_crc(p_1406->g_1021, "p_1406->g_1021", print_hash_value);
    transparent_crc(p_1406->g_1174, "p_1406->g_1174", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1406->g_1235[i][j].f0, "p_1406->g_1235[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1406->g_1395, "p_1406->g_1395", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
