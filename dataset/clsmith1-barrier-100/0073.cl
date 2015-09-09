// ---fake_divergence ---inter_thread_comm -g 41,82,2 -l 1,41,2
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

__constant uint32_t permutations[10][82] = {
{67,35,38,7,68,60,66,78,44,26,3,76,34,39,19,58,51,50,36,27,47,79,59,73,12,9,28,46,80,15,18,16,25,13,55,10,0,57,77,30,69,24,54,23,72,62,81,56,71,1,8,4,37,49,65,52,14,63,29,41,22,17,43,21,6,5,11,53,74,40,20,2,70,32,33,75,45,64,42,61,31,48}, // permutation 0
{33,3,73,35,34,76,4,61,45,44,69,36,42,49,47,32,8,16,21,78,67,63,51,66,20,38,5,62,7,27,75,2,80,30,37,71,0,12,65,64,9,52,15,55,48,59,13,31,39,43,40,1,60,72,24,70,81,23,58,46,10,18,53,26,56,14,41,79,25,19,50,28,57,68,6,54,29,77,17,22,74,11}, // permutation 1
{69,71,28,67,64,6,26,32,47,44,80,63,8,53,3,2,25,14,78,51,49,50,37,41,18,70,58,16,45,35,74,46,9,36,21,24,54,66,61,79,60,72,31,30,77,11,40,22,13,65,68,73,23,76,15,20,27,0,10,1,38,12,75,5,4,56,48,43,57,59,29,17,34,81,55,42,39,19,7,62,33,52}, // permutation 2
{52,38,55,58,35,34,5,42,4,8,80,74,15,2,14,51,10,46,56,66,49,36,29,11,63,59,44,3,26,28,68,57,45,17,62,71,77,0,67,72,18,25,50,70,33,37,23,73,60,19,61,30,20,78,69,54,81,1,75,7,47,32,24,79,41,27,21,53,12,22,40,48,9,43,16,76,39,6,65,31,64,13}, // permutation 3
{23,31,14,75,46,3,41,55,2,38,49,48,69,58,51,20,35,12,40,65,21,43,44,64,68,61,10,36,53,30,11,73,34,60,17,19,25,70,45,7,13,79,50,29,47,57,74,15,4,42,8,33,26,6,62,67,76,1,27,66,80,39,22,72,59,56,63,78,71,77,5,28,24,18,0,37,54,32,52,9,16,81}, // permutation 4
{33,75,60,72,71,41,12,10,23,2,34,49,47,15,54,0,64,4,80,56,22,70,43,11,45,26,27,36,48,53,77,13,66,9,35,21,50,16,58,44,67,42,38,25,65,52,1,20,17,3,7,14,6,24,62,57,46,37,28,74,61,63,76,19,69,79,78,73,81,51,31,5,68,29,18,30,59,39,32,40,8,55}, // permutation 5
{9,74,56,75,1,28,76,53,22,47,60,13,10,49,79,41,21,65,33,63,50,8,62,70,58,23,34,19,6,45,30,64,38,72,54,37,25,3,73,39,57,36,71,4,66,80,18,32,43,40,17,67,69,55,44,77,11,5,16,46,12,59,68,14,20,81,42,51,15,61,26,31,0,27,29,2,48,35,52,7,24,78}, // permutation 6
{11,60,40,38,46,14,63,70,8,73,32,30,71,77,61,6,80,34,72,59,68,37,52,62,48,57,19,53,22,41,27,20,42,1,33,9,51,31,28,21,2,54,39,13,56,47,23,66,25,45,65,76,55,16,44,3,35,74,15,12,81,7,0,78,79,10,5,58,69,29,43,49,17,26,75,50,36,64,4,24,18,67}, // permutation 7
{1,70,2,35,22,59,78,14,28,53,61,20,49,18,4,63,9,10,67,46,3,47,33,66,31,32,16,77,25,17,45,58,54,6,30,52,15,81,40,64,55,71,48,19,39,69,65,42,36,12,27,44,75,5,24,38,68,8,43,79,60,41,13,51,23,73,62,7,34,21,57,26,37,50,11,56,80,29,74,0,72,76}, // permutation 8
{5,68,45,55,79,3,18,76,17,7,11,42,30,19,6,31,47,72,21,81,38,74,61,34,71,9,50,60,25,33,4,29,27,78,14,52,49,73,58,26,44,28,22,57,37,64,35,24,15,59,62,75,20,80,40,43,48,2,1,63,12,41,53,36,10,69,16,65,54,0,46,66,39,32,70,13,23,77,8,51,67,56} // permutation 9
};

// Seed: 73

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int8_t  f0;
   uint32_t  f1;
   uint8_t  f2;
   int32_t  f3;
};

union U1 {
   int8_t * volatile  f0;
};

union U2 {
   int16_t  f0;
};

union U3 {
   int64_t  f0;
   int32_t  f1;
   int16_t  f2;
   volatile uint32_t  f3;
   uint64_t  f4;
};

union U4 {
   volatile uint64_t  f0;
   volatile int64_t  f1;
   volatile int8_t * f2;
};

union U5 {
   int16_t  f0;
   int8_t * f1;
   int32_t  f2;
};

struct S6 {
    int32_t g_3[5][6];
    union U1 g_13;
    uint64_t g_23;
    int32_t g_37;
    int32_t *g_36;
    int8_t *g_51;
    int32_t g_70;
    volatile uint32_t g_73;
    union U5 g_104[10][7];
    uint32_t g_110;
    union U1 **g_111;
    int32_t **g_132;
    int32_t *** volatile g_131;
    union U3 g_157;
    union U4 * volatile g_170;
    union U4 * volatile * volatile g_171;
    int32_t g_197;
    uint16_t g_199[9];
    union U1 g_221[1][3];
    volatile union U1 g_226;
    union U2 g_227;
    int32_t * volatile g_230[8];
    int32_t * volatile g_231[10][9];
    union U4 g_244;
    uint16_t g_282;
    uint8_t g_296;
    union U1 g_312;
    int32_t ** volatile g_313[4][10][6];
    union U1 g_374;
    int64_t g_383[10][2][7];
    uint64_t g_403;
    int8_t g_436[8][8];
    union U0 g_449;
    volatile union U4 g_464;
    volatile union U4 *g_463;
    volatile union U4 **g_462;
    volatile union U1 g_470;
    union U4 g_491;
    int32_t ** volatile g_495;
    int16_t * volatile g_511;
    volatile int64_t *g_513[5];
    volatile int64_t ** volatile g_512;
    volatile union U1 *g_533;
    volatile union U1 ** volatile g_532[5];
    union U3 g_595;
    union U1 *g_640[2][10];
    int32_t **g_662;
    uint16_t *g_674;
    uint16_t **g_673;
    volatile union U3 *g_712[10][5];
    uint32_t g_714;
    int32_t * volatile g_746;
    uint64_t g_772;
    uint8_t g_773;
    union U3 g_813;
    uint8_t *g_831;
    volatile union U3 g_844;
    volatile union U1 g_864;
    int32_t * volatile g_865[6];
    int64_t g_963;
    int16_t **g_972;
    int32_t * volatile g_1004;
    int32_t * volatile g_1019[9][2];
    int32_t * volatile g_1020;
    uint64_t *g_1045;
    int32_t g_1067;
    volatile union U1 g_1135;
    uint32_t ** volatile g_1145[1];
    uint32_t ** volatile * volatile g_1146[10][5][5];
    union U0 g_1151;
    volatile uint8_t g_1163[3][5];
    volatile union U3 g_1206;
    union U1 g_1213[5][1][4];
    union U3 *g_1224;
    int16_t *g_1235;
    int16_t **g_1234[4][10];
    uint64_t g_1236[10][3][6];
    uint64_t g_1243;
    volatile union U3 g_1290;
    volatile union U0 **g_1296;
    union U0 g_1302[6];
    volatile uint32_t **g_1313;
    volatile uint32_t ***g_1312[10];
    int32_t g_1326;
    int32_t g_1328;
    uint32_t g_1329;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    uint32_t tid;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint64_t  func_1(struct S6 * p_1348);
uint64_t * func_24(int8_t  p_25, uint64_t * p_26, uint64_t  p_27, int32_t  p_28, union U5  p_29, struct S6 * p_1348);
uint64_t * func_30(int32_t * p_31, uint32_t  p_32, int64_t  p_33, int32_t  p_34, int32_t  p_35, struct S6 * p_1348);
uint16_t  func_46(int8_t * p_47, int16_t  p_48, int32_t * p_49, int64_t  p_50, struct S6 * p_1348);
uint8_t  func_54(int8_t * p_55, int32_t  p_56, struct S6 * p_1348);
int8_t * func_57(int64_t  p_58, uint64_t  p_59, int64_t  p_60, uint16_t  p_61, int32_t * p_62, struct S6 * p_1348);
int32_t * func_66(union U5  p_67, int8_t * p_68, struct S6 * p_1348);
int32_t  func_86(int32_t  p_87, union U1 ** p_88, struct S6 * p_1348);
int32_t  func_89(int32_t  p_90, int64_t  p_91, struct S6 * p_1348);
int64_t  func_92(uint64_t  p_93, union U5  p_94, union U1 ** p_95, int32_t  p_96, union U1 ** p_97, struct S6 * p_1348);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1348->g_714 p_1348->g_511 p_1348->g_227.f0 p_1348->g_449 p_1348->g_23 p_1348->g_963 p_1348->g_383 p_1348->g_3 p_1348->g_403 p_1348->g_104.f0 p_1348->g_36 p_1348->g_37 p_1348->g_104 p_1348->g_comm_values p_1348->g_673 p_1348->g_674 p_1348->g_282 p_1348->g_110 p_1348->g_70 p_1348->g_436 p_1348->g_73 p_1348->g_51 p_1348->g_13 p_1348->g_111 p_1348->g_131 p_1348->l_comm_values p_1348->g_157 p_1348->g_170 p_1348->g_171 p_1348->g_199 p_1348->g_157.f0 p_1348->g_197 p_1348->g_221 p_1348->g_226 p_1348->g_227 p_1348->g_312 p_1348->g_374 p_1348->g_296 p_1348->g_244.f0 p_1348->g_462 p_1348->g_470 p_1348->g_491 p_1348->g_495 p_1348->g_773 p_1348->g_1163 p_1348->g_1020 p_1348->g_1290 p_1348->g_1296 p_1348->g_1236 p_1348->g_662 p_1348->g_844.f0 p_1348->g_464.f0 p_1348->g_772 p_1348->g_463 p_1348->g_464 p_1348->g_1235
 * writes: p_1348->g_714 p_1348->g_110 p_1348->g_1067 p_1348->g_104.f0 p_1348->g_3 p_1348->g_37 p_1348->g_227.f0 p_1348->g_662 p_1348->g_673 p_1348->g_595.f0 p_1348->g_36 p_1348->g_70 p_1348->g_73 p_1348->g_104 p_1348->g_132 p_1348->g_170 p_1348->g_157.f3 p_1348->g_199 p_1348->g_157.f0 p_1348->g_282 p_1348->g_296 p_1348->g_313 p_1348->g_197 p_1348->g_403 p_1348->g_436 p_1348->g_773 p_1348->g_449.f3 p_1348->g_449.f1 p_1348->g_157.f4 p_1348->g_1151.f2 p_1348->g_1163 p_1348->g_963 p_1348->g_595.f4 p_1348->g_813.f4 p_1348->g_449.f0 p_1348->g_1151.f3 p_1348->g_1328 p_1348->g_1329
 */
uint64_t  func_1(struct S6 * p_1348)
{ /* block id: 4 */
    int32_t *l_2 = &p_1348->g_3[4][2];
    int32_t *l_4 = &p_1348->g_3[1][1];
    int32_t *l_5 = &p_1348->g_3[4][2];
    int32_t l_6 = (-3L);
    int32_t *l_7[2][4] = {{&l_6,&p_1348->g_3[3][1],&l_6,&l_6},{&l_6,&p_1348->g_3[3][1],&l_6,&l_6}};
    uint16_t l_8 = 0xE8B8L;
    union U3 **l_1075 = (void*)0;
    union U3 ***l_1074[5][8][2] = {{{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075}},{{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075}},{{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075}},{{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075}},{{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075},{&l_1075,&l_1075}}};
    int32_t *l_1087 = &p_1348->g_70;
    uint8_t *l_1114 = &p_1348->g_296;
    int64_t l_1120 = 0x164EC1AF09A345A4L;
    uint32_t ** volatile l_1147 = (void*)0;/* VOLATILE GLOBAL l_1147 */
    uint64_t l_1149[4];
    uint16_t l_1173[8][7] = {{65531UL,0x7C95L,0x7191L,0xF6D9L,0UL,0xF6D9L,0x7191L},{65531UL,0x7C95L,0x7191L,0xF6D9L,0UL,0xF6D9L,0x7191L},{65531UL,0x7C95L,0x7191L,0xF6D9L,0UL,0xF6D9L,0x7191L},{65531UL,0x7C95L,0x7191L,0xF6D9L,0UL,0xF6D9L,0x7191L},{65531UL,0x7C95L,0x7191L,0xF6D9L,0UL,0xF6D9L,0x7191L},{65531UL,0x7C95L,0x7191L,0xF6D9L,0UL,0xF6D9L,0x7191L},{65531UL,0x7C95L,0x7191L,0xF6D9L,0UL,0xF6D9L,0x7191L},{65531UL,0x7C95L,0x7191L,0xF6D9L,0UL,0xF6D9L,0x7191L}};
    int8_t l_1221[2];
    uint16_t ***l_1268 = &p_1348->g_673;
    union U0 *l_1301 = &p_1348->g_1302[4];
    int8_t l_1318 = 0x5BL;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_1149[i] = 0x6B86984BE799A93AL;
    for (i = 0; i < 2; i++)
        l_1221[i] = (-1L);
    l_8--;
    if (((void*)0 != &p_1348->g_3[2][3]))
    { /* block id: 6 */
        uint32_t l_16[5];
        uint64_t l_872 = 0x7F18EBCE5E1E1FBDL;
        uint64_t l_1046 = 0UL;
        union U0 l_1054 = {0x23L};
        int i;
        for (i = 0; i < 5; i++)
            l_16[i] = 1UL;
        for (l_6 = 0; (l_6 >= (-5)); --l_6)
        { /* block id: 9 */
            int32_t l_21 = 8L;
            uint64_t *l_22 = &p_1348->g_23;
            union U5 l_873 = {0L};
            uint32_t l_1047 = 4294967295UL;
            (1 + 1);
        }
        for (p_1348->g_714 = 0; (p_1348->g_714 <= 34); p_1348->g_714 = safe_add_func_int64_t_s_s(p_1348->g_714, 5))
        { /* block id: 513 */
            union U0 l_1059 = {7L};
            uint32_t *l_1062 = &p_1348->g_110;
            int16_t *l_1068 = &p_1348->g_813.f2;
            int16_t *l_1069 = (void*)0;
            int16_t *l_1070 = &p_1348->g_104[5][4].f0;
            union U2 l_1071 = {0x43D3L};
            union U3 ***l_1076 = &l_1075;
            (*l_2) = (safe_lshift_func_uint8_t_u_s((l_1054 , l_16[0]), (safe_div_func_int16_t_s_s((*p_1348->g_511), ((*l_1070) |= ((p_1348->g_1067 = (((safe_add_func_int8_t_s_s(p_1348->g_714, ((l_1059 , p_1348->g_449) , ((safe_div_func_uint32_t_u_u((p_1348->g_23 , ((*l_1062) = l_1046)), (((((safe_sub_func_int64_t_s_s((safe_mul_func_uint8_t_u_u(((void*)0 == &p_1348->g_673), l_872)), 18446744073709551606UL)) , p_1348->g_963) == p_1348->g_383[5][1][3]) <= 18446744073709551607UL) && l_16[2]))) & l_1059.f0)))) <= (*l_5)) == 0x43L)) , p_1348->g_403))))));
            (*p_1348->g_36) |= (l_1071 , (safe_rshift_func_uint8_t_u_u((l_1074[1][2][1] == l_1076), 1)));
        }
    }
    else
    { /* block id: 520 */
        uint32_t l_1077[7][3][7] = {{{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L},{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L},{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L}},{{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L},{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L},{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L}},{{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L},{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L},{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L}},{{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L},{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L},{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L}},{{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L},{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L},{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L}},{{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L},{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L},{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L}},{{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L},{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L},{4294967295UL,0x25F87176L,0x8A13B71AL,6UL,0UL,0x55F6B595L,0x55F6B595L}}};
        union U5 l_1080 = {-10L};
        int32_t l_1081 = 0L;
        int32_t l_1086 = (-5L);
        int32_t **l_1088 = &l_4;
        int8_t *l_1089 = &p_1348->g_436[0][1];
        int64_t l_1117 = 0x7C41D8EE83561A85L;
        int32_t l_1127[7][6][5] = {{{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L}},{{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L}},{{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L}},{{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L}},{{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L}},{{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L}},{{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L},{(-1L),0x1EE246ABL,0x29DFF2CCL,8L,0L}}};
        union U2 *l_1148 = &p_1348->g_227;
        int16_t l_1162 = 0x370CL;
        int64_t l_1271 = 0x2E8B8EDA2BDE3ECCL;
        int32_t *l_1327 = &p_1348->g_1328;
        int i, j, k;
        (*l_1088) = func_66(p_1348->g_104[5][4], func_57(l_1077[5][1][1], p_1348->g_comm_values[p_1348->tid], ((((l_1081 &= (safe_mul_func_uint16_t_u_u((**p_1348->g_673), (l_1080 , ((*l_5) == l_1077[5][1][1]))))) == (l_1086 ^= (safe_lshift_func_int16_t_s_u(((*p_1348->g_511) = ((safe_sub_func_int16_t_s_s(((-1L) != 0x40F4L), (*p_1348->g_511))) > 4UL)), l_1077[3][2][0])))) | 1UL) >= (*l_4)), l_1080.f0, l_1087, p_1348), p_1348);
        for (p_1348->g_773 = 0; (p_1348->g_773 <= 6); p_1348->g_773 += 1)
        { /* block id: 527 */
            uint8_t l_1099 = 0xDAL;
            int32_t l_1122 = 0x093EBEA5L;
            int32_t l_1125 = 9L;
            int32_t l_1126 = 0x384985AEL;
            int32_t l_1129 = 1L;
            uint32_t l_1132 = 0xF9AE43ABL;
            int32_t *l_1144 = &l_1081;
            uint32_t l_1154 = 4294967288UL;
            uint64_t l_1182 = 18446744073709551610UL;
            int8_t l_1185 = (-1L);
            int32_t *l_1226 = &p_1348->g_37;
            union U0 *l_1294 = &p_1348->g_1151;
            union U0 **l_1293[8][10] = {{&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294},{&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294},{&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294},{&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294},{&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294},{&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294},{&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294},{&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294,&l_1294}};
            uint32_t l_1299 = 2UL;
            union U0 *l_1300[10] = {&p_1348->g_1151,&p_1348->g_449,&p_1348->g_1151,&p_1348->g_1151,&p_1348->g_449,&p_1348->g_1151,&p_1348->g_1151,&p_1348->g_449,&p_1348->g_1151,&p_1348->g_1151};
            int i, j;
            if ((p_1348->g_436[0][1] , ((~(((*l_1087) = 0x9DBD6414B0FB5343L) != 0UL)) , ((void*)0 != l_1089))))
            { /* block id: 529 */
                uint8_t l_1090 = 4UL;
                int32_t l_1123 = 0x4D12BCB7L;
                int32_t l_1130 = 0x5E353E6BL;
                int32_t l_1131 = (-10L);
                uint16_t *l_1138 = &p_1348->g_199[4];
                int32_t l_1139 = (-9L);
                uint16_t l_1140 = 65535UL;
                int32_t l_1155 = 0L;
                uint32_t *l_1160 = &p_1348->g_449.f1;
                uint64_t *l_1161 = &p_1348->g_157.f4;
                int8_t l_1179 = 0x2DL;
                int32_t l_1180 = 0x5C6A749CL;
                int32_t l_1181[10][5] = {{0x576DC5ABL,0x78742434L,(-4L),0x6835794DL,0x374F7526L},{0x576DC5ABL,0x78742434L,(-4L),0x6835794DL,0x374F7526L},{0x576DC5ABL,0x78742434L,(-4L),0x6835794DL,0x374F7526L},{0x576DC5ABL,0x78742434L,(-4L),0x6835794DL,0x374F7526L},{0x576DC5ABL,0x78742434L,(-4L),0x6835794DL,0x374F7526L},{0x576DC5ABL,0x78742434L,(-4L),0x6835794DL,0x374F7526L},{0x576DC5ABL,0x78742434L,(-4L),0x6835794DL,0x374F7526L},{0x576DC5ABL,0x78742434L,(-4L),0x6835794DL,0x374F7526L},{0x576DC5ABL,0x78742434L,(-4L),0x6835794DL,0x374F7526L},{0x576DC5ABL,0x78742434L,(-4L),0x6835794DL,0x374F7526L}};
                int i, j;
                for (p_1348->g_449.f3 = 6; (p_1348->g_449.f3 >= 2); p_1348->g_449.f3 -= 1)
                { /* block id: 532 */
                    int32_t l_1104 = (-7L);
                    int32_t l_1121 = 0x6AB8D158L;
                    int32_t l_1124 = 0x581F13EFL;
                    int32_t l_1128[10] = {0L,1L,0L,0L,1L,0L,0L,1L,0L,0L};
                    union U0 *l_1150 = &p_1348->g_1151;
                    int i;
                    (1 + 1);
                }
                if ((l_1122 ^= ((p_1348->g_1151.f2 = ((*l_1114) = (((((**p_1348->g_673) | (safe_mod_func_uint64_t_u_u((((l_1154 && l_1155) >= 0x40EF9227L) | ((((void*)0 != &p_1348->g_972) && ((safe_lshift_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(((*l_1160) = 8UL), ((*l_1144) = (((*l_1161) = (+((-9L) || p_1348->g_436[4][5]))) , (*l_5))))), 8)) & l_1090)) < l_1090)), (*l_2)))) , 255UL) == 0UL) <= l_1162))) >= (*l_1087))))
                { /* block id: 566 */
                    uint8_t l_1167[2][6][1];
                    int32_t l_1170 = 0x0ED38B74L;
                    int32_t l_1171 = 0x60F217FAL;
                    int32_t l_1172 = 0x15BCEEEAL;
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 6; j++)
                        {
                            for (k = 0; k < 1; k++)
                                l_1167[i][j][k] = 246UL;
                        }
                    }
                    --p_1348->g_1163[2][4];
                    if ((*p_1348->g_1020))
                        continue;
                    if ((*l_1144))
                    { /* block id: 569 */
                        int32_t l_1166 = 0x52C37AB0L;
                        (*l_1144) &= l_1130;
                        ++l_1167[0][2][0];
                    }
                    else
                    { /* block id: 572 */
                        uint64_t l_1176 = 0UL;
                        int32_t l_1177 = (-9L);
                        int32_t l_1178 = 0x778E68D5L;
                        ++l_1173[3][1];
                        (*l_2) &= ((l_1176 || (-4L)) <= (l_1138 != (void*)0));
                        l_1182++;
                        if ((*l_1144))
                            continue;
                    }
                }
                else
                { /* block id: 578 */
                    (*l_1087) = l_1185;
                }
            }
            else
            { /* block id: 581 */
                int32_t l_1188[4][1][6] = {{{0x3A01BD72L,0x29BA60E3L,0x3A01BD72L,0x3A01BD72L,0x29BA60E3L,0x3A01BD72L}},{{0x3A01BD72L,0x29BA60E3L,0x3A01BD72L,0x3A01BD72L,0x29BA60E3L,0x3A01BD72L}},{{0x3A01BD72L,0x29BA60E3L,0x3A01BD72L,0x3A01BD72L,0x29BA60E3L,0x3A01BD72L}},{{0x3A01BD72L,0x29BA60E3L,0x3A01BD72L,0x3A01BD72L,0x29BA60E3L,0x3A01BD72L}}};
                uint32_t *l_1195 = &l_1154;
                int64_t *l_1196 = &p_1348->g_157.f0;
                int64_t *l_1205 = &p_1348->g_963;
                int i, j, k;
                (*l_5) = (((*l_1196) = (safe_sub_func_uint64_t_u_u(l_1188[2][0][0], (safe_sub_func_uint32_t_u_u(((*l_1195) = (safe_div_func_uint32_t_u_u((p_1348->g_110--), (-3L)))), (*l_1144)))))) || ((*l_1144) ^= (safe_mul_func_int8_t_s_s(((**l_1088) = (0xE867L >= ((p_1348->g_104[9][0] , ((((safe_mul_func_uint8_t_u_u(p_1348->g_227.f0, ((-1L) < (safe_lshift_func_uint8_t_u_s((((*l_1205) = (safe_sub_func_int64_t_s_s(((*l_1196) = ((*l_2) >= (0x7987L & (*p_1348->g_511)))), (*l_5)))) , p_1348->g_37), p_1348->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1348->tid, 82))]))))) , 0x6CF6L) >= l_1188[1][0][4]) <= l_1188[2][0][0])) || FAKE_DIVERGE(p_1348->group_0_offset, get_group_id(0), 10)))), (*l_2)))));
                for (p_1348->g_449.f3 = 6; (p_1348->g_449.f3 >= 1); p_1348->g_449.f3 -= 1)
                { /* block id: 592 */
                    return l_1188[1][0][2];
                }
            }
            for (p_1348->g_157.f0 = 0; (p_1348->g_157.f0 <= 6); p_1348->g_157.f0 += 1)
            { /* block id: 598 */
                uint32_t *l_1214 = &p_1348->g_449.f1;
                union U0 *l_1222[3];
                int32_t l_1225[4][3] = {{5L,0x606AEBF9L,5L},{5L,0x606AEBF9L,5L},{5L,0x606AEBF9L,5L},{5L,0x606AEBF9L,5L}};
                int32_t *l_1227 = &p_1348->g_37;
                uint16_t ***l_1270 = &p_1348->g_673;
                int i, j;
                for (i = 0; i < 3; i++)
                    l_1222[i] = &p_1348->g_449;
                (1 + 1);
            }
            for (p_1348->g_595.f4 = 2; (p_1348->g_595.f4 <= 6); p_1348->g_595.f4 += 1)
            { /* block id: 647 */
                for (p_1348->g_813.f4 = 0; (p_1348->g_813.f4 <= 6); p_1348->g_813.f4 += 1)
                { /* block id: 650 */
                    int64_t l_1279 = 1L;
                    union U0 ***l_1295 = &l_1293[1][3];
                    int16_t *l_1297 = &l_1162;
                    int32_t l_1298 = 6L;
                    l_1298 |= ((l_1279 , (safe_sub_func_uint16_t_u_u((safe_mod_func_int32_t_s_s((**l_1088), (*l_1226))), FAKE_DIVERGE(p_1348->global_2_offset, get_global_id(2), 10)))) == (safe_sub_func_int16_t_s_s(((GROUP_DIVERGE(2, 1) ^ (safe_rshift_func_uint8_t_u_s(((safe_rshift_func_uint16_t_u_u((((p_1348->g_1290 , ((**p_1348->g_673) ^= GROUP_DIVERGE(0, 1))) || 0x5270L) , (**l_1088)), 11)) >= (((*l_1297) ^= (((p_1348->g_104[1][0] , ((safe_sub_func_int64_t_s_s((((*l_1295) = (p_1348->g_227 , l_1293[3][7])) == p_1348->g_1296), 0x767BB8A1E8E35831L)) || p_1348->g_403)) == 0x2FFF1172F030A528L) , 1L)) , p_1348->g_963)), (*l_1144)))) < FAKE_DIVERGE(p_1348->local_2_offset, get_local_id(2), 10)), 0x5787L)));
                    return p_1348->g_1236[0][2][4];
                }
                if (l_1299)
                    break;
            }
            for (p_1348->g_449.f0 = 2; (p_1348->g_449.f0 <= 6); p_1348->g_449.f0 += 1)
            { /* block id: 661 */
                int8_t l_1309[1][1][10] = {{{(-4L),0x08L,0x0EL,0x08L,(-4L),(-4L),0x08L,0x0EL,0x08L,(-4L)}}};
                int i, j, k;
                for (p_1348->g_1151.f3 = 6; (p_1348->g_1151.f3 >= 0); p_1348->g_1151.f3 -= 1)
                { /* block id: 664 */
                    uint8_t l_1325 = 0xEFL;
                    l_1301 = l_1300[0];
                    (*p_1348->g_662) = &l_1125;
                    if ((*l_5))
                        continue;
                }
            }
        }
        l_1081 &= (p_1348->g_844.f0 , ((p_1348->g_1329 = ((*l_1327) = p_1348->g_464.f0)) , (safe_div_func_int8_t_s_s((8L <= ((*p_1348->g_1235) &= (((safe_mul_func_uint16_t_u_u((~(0x5498DAD74AD57BCDL && (((safe_lshift_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(((*p_1348->g_674) &= ((p_1348->g_772 , (**l_1088)) <= (safe_mul_func_int8_t_s_s(((safe_mul_func_int16_t_s_s((safe_add_func_int64_t_s_s((0x40L != ((safe_mod_func_int8_t_s_s(((((*l_2) , (safe_rshift_func_int8_t_s_u((**l_1088), 7))) , 2UL) & FAKE_DIVERGE(p_1348->global_1_offset, get_global_id(1), 10)), p_1348->g_3[0][0])) == 0x42L)), (**l_1088))), (**l_1088))) >= (**l_1088)), 0x5FL)))), (*l_2))), (*l_1087))) , (**p_1348->g_462)) , 0x21F22E1F342A244CL))), p_1348->g_383[3][0][6])) < (**l_1088)) ^ 0UL))), (**l_1088)))));
    }
    return (*l_2);
}


/* ------------------------------------------ */
/* 
 * reads : p_1348->g_157.f0 p_1348->g_511 p_1348->g_227.f0 p_1348->g_3 p_1348->g_673 p_1348->g_674 p_1348->g_282 p_1348->g_104 p_1348->g_70 p_1348->g_199 p_1348->g_36 p_1348->g_963 p_1348->g_972 p_1348->g_227 p_1348->g_449.f2 p_1348->g_244.f0 p_1348->g_1004 p_1348->g_813.f4 p_1348->g_813.f2 p_1348->g_37 p_1348->g_1020 p_1348->g_595.f4
 * writes: p_1348->g_662 p_1348->g_282 p_1348->g_36 p_1348->g_449.f2 p_1348->g_403 p_1348->g_37 p_1348->g_813.f4 p_1348->g_813.f2 p_1348->g_3 p_1348->g_595.f4 p_1348->g_640 p_1348->g_449.f0 p_1348->g_772
 */
uint64_t * func_24(int8_t  p_25, uint64_t * p_26, uint64_t  p_27, int32_t  p_28, union U5  p_29, struct S6 * p_1348)
{ /* block id: 398 */
    union U1 *l_881 = &p_1348->g_221[0][0];
    int8_t l_888[4];
    union U5 *l_890 = &p_1348->g_104[5][4];
    union U5 **l_889 = &l_890;
    int32_t **l_891 = &p_1348->g_36;
    union U2 *l_910 = &p_1348->g_227;
    int16_t **l_976 = (void*)0;
    int32_t l_980 = 0x35519475L;
    uint64_t *l_981 = &p_1348->g_403;
    uint16_t l_1018 = 0xE1A7L;
    union U4 *l_1038 = &p_1348->g_244;
    uint64_t l_1040 = 1UL;
    int32_t *l_1043 = &l_980;
    int32_t *l_1044 = &p_1348->g_197;
    int i;
    for (i = 0; i < 4; i++)
        l_888[i] = (-5L);
    if (((void*)0 == &p_1348->g_449))
    { /* block id: 399 */
        union U1 *l_880[4];
        union U0 l_884 = {0x51L};
        union U2 l_885[2][9][3] = {{{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}}},{{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}},{{0x16FCL},{0L},{0L}}}};
        int32_t **l_886 = (void*)0;
        int32_t ***l_887[8] = {&p_1348->g_132,&p_1348->g_132,&p_1348->g_132,&p_1348->g_132,&p_1348->g_132,&p_1348->g_132,&p_1348->g_132,&p_1348->g_132};
        int64_t l_935 = 0x3B6FD6A88EB13CABL;
        int16_t l_939 = (-1L);
        int16_t *l_975[1][3];
        int16_t **l_974 = &l_975[0][0];
        uint64_t *l_986 = &p_1348->g_772;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_880[i] = &p_1348->g_312;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 3; j++)
                l_975[i][j] = (void*)0;
        }
        if ((safe_sub_func_int64_t_s_s((((((-1L) ^ ((((~1UL) , (safe_mod_func_int16_t_s_s(((1L <= (safe_rshift_func_uint16_t_u_u((l_880[3] == (l_881 = l_880[3])), 8))) != (((&p_1348->g_865[3] == (((((((safe_mod_func_int64_t_s_s(((l_884 , (void*)0) != (p_1348->g_662 = (l_885[1][2][1] , l_886))), 0x7311433B156A153FL)) & l_888[3]) & 0x302BC46AL) , l_889) != &l_890) < p_25) , l_891)) ^ p_28) || 18446744073709551608UL)), FAKE_DIVERGE(p_1348->local_2_offset, get_local_id(2), 10)))) > l_888[0]) < FAKE_DIVERGE(p_1348->local_1_offset, get_local_id(1), 10))) || p_1348->g_157.f0) & p_28) > (*p_1348->g_511)), p_1348->g_3[1][3])))
        { /* block id: 402 */
            union U5 l_892 = {2L};
            int32_t l_896 = (-3L);
            int32_t *l_914 = &l_896;
            if (((&p_1348->g_673 != &p_1348->g_673) ^ 0x3CL))
            { /* block id: 403 */
                uint8_t l_895 = 0xB0L;
                int32_t *l_953 = (void*)0;
                uint64_t *l_979 = &p_1348->g_403;
                if ((((l_892 , (**p_1348->g_673)) || (((((**p_1348->g_673) = (safe_add_func_int32_t_s_s((l_892.f2 = p_25), p_28))) || ((((*p_1348->g_511) || 65535UL) <= ((l_895 >= (+p_27)) , (*p_1348->g_674))) | p_27)) ^ 1L) <= p_29.f0)) >= l_896))
                { /* block id: 406 */
                    union U2 *l_909[7][7][2] = {{{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227}},{{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227}},{{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227}},{{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227}},{{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227}},{{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227}},{{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227},{&l_885[1][2][1],&p_1348->g_227}}};
                    int32_t l_911 = 9L;
                    int8_t *l_912 = &l_888[2];
                    int32_t l_913 = 0x692CBA06L;
                    uint64_t l_936[4] = {0xA6A8371BD1B02EB9L,0xA6A8371BD1B02EB9L,0xA6A8371BD1B02EB9L,0xA6A8371BD1B02EB9L};
                    uint64_t *l_937 = &l_936[1];
                    uint32_t *l_938 = &l_884.f1;
                    int i, j, k;
                    l_914 = ((*l_891) = &p_28);
                    (**l_891) = (0x5C3674A8E2263ACCL | (safe_mod_func_uint32_t_u_u((((safe_sub_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u((((*l_938) = (p_1348->g_104[5][4] , (((((*l_937) = ((safe_add_func_int32_t_s_s(((safe_lshift_func_uint8_t_u_u(p_1348->g_70, (safe_add_func_int8_t_s_s(((p_25 == (((safe_lshift_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_u((((p_28 >= ((*l_914) | (FAKE_DIVERGE(p_1348->local_2_offset, get_local_id(2), 10) > ((safe_mod_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_s(p_29.f0, (((((void*)0 != &p_1348->g_110) , p_1348->g_282) <= 0UL) , p_25))) & 255UL), l_935)) ^ p_25)))) == (-2L)) >= (*p_1348->g_674)), GROUP_DIVERGE(1, 1))) | l_936[1]), p_29.f0)) , 8L) == 0x15L)) || p_25), 0x41L)))) && p_29.f0), 0x027BF8ACL)) & (*p_1348->g_674))) & 0x640411E8342F3FA2L) != p_1348->g_199[4]) == p_27))) || p_27), 0)), 0x06A306AB115FD5DBL)) , l_936[1]) ^ l_939), p_1348->g_282)));
                    if ((safe_sub_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_s((**l_891), 0)), (((*l_937) = (safe_lshift_func_int16_t_s_u(((safe_mod_func_int32_t_s_s(p_29.f0, (255UL || ((**l_891) >= l_895)))) , p_25), 9))) < (safe_lshift_func_int8_t_s_u(0x27L, 4))))))
                    { /* block id: 415 */
                        uint16_t l_950 = 0xFC6DL;
                        int32_t *l_954 = &p_1348->g_3[4][2];
                        ++l_950;
                        l_954 = l_953;
                    }
                    else
                    { /* block id: 418 */
                        int8_t l_964 = 0x2CL;
                        int16_t ***l_973[4][6][2] = {{{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972}},{{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972}},{{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972}},{{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972},{&p_1348->g_972,&p_1348->g_972}}};
                        uint64_t *l_977 = &l_936[1];
                        int32_t l_978 = 0x7C4283B4L;
                        int i, j, k;
                        l_911 = (safe_add_func_int8_t_s_s((0x0CCFDA6DL | ((*l_914) = (0xF193L && (*p_1348->g_674)))), (((*l_912) = (-5L)) , (0x2AL < (!((safe_add_func_uint64_t_u_u((+(safe_lshift_func_uint8_t_u_s(((p_27 <= (safe_div_func_uint64_t_u_u(p_1348->g_963, p_1348->g_199[4]))) > p_29.f0), 1))), l_964)) == l_913))))));
                        l_978 |= (safe_unary_minus_func_uint16_t_u(((safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_1348->global_2_offset, get_global_id(2), 10), (safe_sub_func_int16_t_s_s((l_936[1] == ((safe_rshift_func_uint16_t_u_s(((l_974 = p_1348->g_972) != l_976), (l_964 <= (-5L)))) < (((l_977 != &p_1348->g_772) , p_1348->g_227) , 2L))), (**p_1348->g_673))))) <= p_27)));
                        return l_979;
                    }
                    l_980 ^= (*l_914);
                }
                else
                { /* block id: 427 */
                    return l_981;
                }
            }
            else
            { /* block id: 430 */
                (*l_914) &= p_29.f0;
            }
        }
        else
        { /* block id: 433 */
            uint32_t l_983[4] = {0xF11256B3L,0xF11256B3L,0xF11256B3L,0xF11256B3L};
            int32_t *l_985 = &p_1348->g_197;
            int i;
            for (p_1348->g_282 = 0; (p_1348->g_282 <= 8); p_1348->g_282 += 1)
            { /* block id: 436 */
                int32_t *l_984 = &p_1348->g_197;
                for (p_1348->g_449.f2 = 0; (p_1348->g_449.f2 <= 4); p_1348->g_449.f2 += 1)
                { /* block id: 439 */
                    uint32_t l_982 = 0xB4029731L;
                    for (p_28 = 4; (p_28 >= 0); p_28 -= 1)
                    { /* block id: 442 */
                        l_983[3] |= (l_982 = p_27);
                    }
                    for (p_1348->g_403 = 0; (p_1348->g_403 <= 6); p_1348->g_403 += 1)
                    { /* block id: 448 */
                        l_984 = ((*l_891) = &p_28);
                    }
                }
                l_985 = ((*l_891) = &p_28);
                return l_986;
            }
        }
    }
    else
    { /* block id: 458 */
        union U2 l_991 = {0L};
        uint16_t l_1000 = 1UL;
        int32_t l_1002 = 0x749A439AL;
        int32_t l_1003 = 0x5A9D8D85L;
        for (p_28 = 0; (p_28 != 21); p_28++)
        { /* block id: 461 */
            uint32_t *l_1001[1];
            int i;
            for (i = 0; i < 1; i++)
                l_1001[i] = &p_1348->g_110;
            (*p_1348->g_1004) = (safe_div_func_uint8_t_u_u((l_991 , (4294967294UL ^ (~p_1348->g_244.f0))), (safe_div_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s(l_991.f0, (safe_mod_func_int32_t_s_s(p_29.f0, (l_1003 = (((-9L) == (-1L)) || (l_1002 = (safe_div_func_int8_t_s_s(p_28, l_1000))))))))), p_27))));
        }
        for (p_1348->g_813.f4 = 0; (p_1348->g_813.f4 <= 4); p_1348->g_813.f4 += 1)
        { /* block id: 468 */
            (*l_891) = (void*)0;
            return &p_1348->g_403;
        }
    }
    for (p_1348->g_813.f2 = 0; (p_1348->g_813.f2 == (-23)); p_1348->g_813.f2 = safe_sub_func_uint64_t_u_u(p_1348->g_813.f2, 7))
    { /* block id: 475 */
        int64_t l_1014 = 0x640CB3B1CE87147FL;
        union U1 **l_1034 = (void*)0;
        for (p_1348->g_37 = (-23); (p_1348->g_37 == (-7)); p_1348->g_37 = safe_add_func_int64_t_s_s(p_1348->g_37, 9))
        { /* block id: 478 */
            return &p_1348->g_403;
        }
        if ((safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), 14)))
        { /* block id: 481 */
            int32_t l_1011 = (-7L);
            int32_t l_1036 = 0x022C9833L;
            if (l_1011)
                break;
            (*p_1348->g_1020) = ((safe_mod_func_uint16_t_u_u((l_1014 >= 4294967295UL), (l_1014 , (safe_rshift_func_int16_t_s_s((safe_unary_minus_func_uint64_t_u(l_1018)), 6))))) != 0xACL);
            for (p_1348->g_595.f4 = 2; (p_1348->g_595.f4 != 47); ++p_1348->g_595.f4)
            { /* block id: 486 */
                uint32_t l_1025 = 0xBE55E3EAL;
                int32_t l_1035 = 2L;
                int32_t *l_1037 = &l_980;
                int32_t *l_1039[8] = {&l_980,&l_980,&l_980,&l_980,&l_980,&l_980,&l_980,&l_980};
                int i;
                (*l_1037) &= (safe_add_func_int64_t_s_s(l_1025, (safe_rshift_func_int8_t_s_u((((l_1014 <= ((((0UL != 0x4DL) || ((safe_div_func_uint32_t_u_u((safe_sub_func_int8_t_s_s(l_1014, (((&p_1348->g_640[0][6] != (l_1034 = &p_1348->g_640[0][6])) == (&p_1348->g_673 != (void*)0)) , l_1035))), p_28)) < (-1L))) != p_25) , 0x3134DC983C852691L)) && l_1036) <= l_1011), 3))));
                (*l_1037) = (l_1038 != (void*)0);
                l_1040--;
                (*l_1037) = (p_29.f0 || 8L);
            }
        }
        else
        { /* block id: 493 */
            for (p_25 = 0; (p_25 <= 4); p_25 += 1)
            { /* block id: 496 */
                int i, j;
                p_1348->g_640[1][3] = (p_1348->g_3[p_25][p_25] , l_881);
                for (p_1348->g_449.f0 = 0; p_1348->g_449.f0 < 2; p_1348->g_449.f0 += 1)
                {
                    for (p_1348->g_772 = 0; p_1348->g_772 < 10; p_1348->g_772 += 1)
                    {
                        p_1348->g_640[p_1348->g_449.f0][p_1348->g_772] = &p_1348->g_221[0][0];
                    }
                }
            }
        }
    }
    (*l_1043) ^= p_25;
    (*l_891) = l_1044;
    return &p_1348->g_772;
}


/* ------------------------------------------ */
/* 
 * reads : p_1348->g_51 p_1348->l_comm_values p_1348->g_37 p_1348->g_73 p_1348->g_13 p_1348->g_111 p_1348->g_3 p_1348->g_comm_values p_1348->g_70 p_1348->g_131 p_1348->g_110 p_1348->g_157 p_1348->g_170 p_1348->g_171 p_1348->g_199 p_1348->g_157.f0 p_1348->g_197 p_1348->g_221 p_1348->g_226 p_1348->g_227 p_1348->g_227.f0 p_1348->g_312 p_1348->g_374 p_1348->g_296 p_1348->g_383 p_1348->g_104 p_1348->g_403 p_1348->g_244.f0 p_1348->g_449 p_1348->g_462 p_1348->g_470 p_1348->g_436 p_1348->g_491 p_1348->g_495 p_1348->g_511 p_1348->g_673 p_1348->g_712 p_1348->g_674 p_1348->g_282 p_1348->g_662 p_1348->g_449.f1 p_1348->g_714 p_1348->g_464.f0 p_1348->g_773 p_1348->g_449.f0 p_1348->g_449.f2 p_1348->g_844 p_1348->g_864
 * writes: p_1348->g_37 p_1348->g_70 p_1348->g_73 p_1348->g_104 p_1348->g_132 p_1348->g_170 p_1348->g_157.f3 p_1348->g_199 p_1348->g_110 p_1348->g_157.f0 p_1348->g_282 p_1348->g_36 p_1348->g_296 p_1348->g_313 p_1348->g_197 p_1348->g_403 p_1348->g_436 p_1348->g_662 p_1348->g_673 p_1348->g_595.f0 p_1348->g_595.f4 p_1348->g_449.f2 p_1348->g_383 p_1348->l_comm_values p_1348->g_714 p_1348->g_449.f1 p_1348->g_772 p_1348->g_773 p_1348->g_831 p_1348->g_449.f0 p_1348->g_227.f0
 */
uint64_t * func_30(int32_t * p_31, uint32_t  p_32, int64_t  p_33, int32_t  p_34, int32_t  p_35, struct S6 * p_1348)
{ /* block id: 12 */
    int8_t l_740 = 0x2AL;
    union U1 *l_800[4];
    int32_t *l_823 = (void*)0;
    int8_t *l_832 = &p_1348->g_449.f0;
    uint16_t ***l_833[3];
    uint16_t ****l_834 = &l_833[2];
    uint32_t l_835 = 0UL;
    int32_t l_836[1][9][5] = {{{0x16BD9CFAL,0L,0x634A4DE3L,0L,0x16BD9CFAL},{0x16BD9CFAL,0L,0x634A4DE3L,0L,0x16BD9CFAL},{0x16BD9CFAL,0L,0x634A4DE3L,0L,0x16BD9CFAL},{0x16BD9CFAL,0L,0x634A4DE3L,0L,0x16BD9CFAL},{0x16BD9CFAL,0L,0x634A4DE3L,0L,0x16BD9CFAL},{0x16BD9CFAL,0L,0x634A4DE3L,0L,0x16BD9CFAL},{0x16BD9CFAL,0L,0x634A4DE3L,0L,0x16BD9CFAL},{0x16BD9CFAL,0L,0x634A4DE3L,0L,0x16BD9CFAL},{0x16BD9CFAL,0L,0x634A4DE3L,0L,0x16BD9CFAL}}};
    uint64_t *l_837[9][4][7] = {{{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772}},{{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772}},{{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772}},{{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772}},{{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772}},{{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772}},{{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772}},{{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772}},{{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772},{&p_1348->g_403,&p_1348->g_403,&p_1348->g_772,(void*)0,&p_1348->g_772,&p_1348->g_403,&p_1348->g_772}}};
    int32_t l_838 = 0x2E61AC59L;
    union U2 l_862[8] = {{-1L},{1L},{-1L},{-1L},{1L},{-1L},{-1L},{1L}};
    uint16_t l_870[1];
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_800[i] = &p_1348->g_221[0][2];
    for (i = 0; i < 3; i++)
        l_833[i] = &p_1348->g_673;
    for (i = 0; i < 1; i++)
        l_870[i] = 1UL;
    for (p_35 = (-30); (p_35 == 15); p_35 = safe_add_func_int64_t_s_s(p_35, 6))
    { /* block id: 15 */
        union U5 l_69 = {0x4AAFL};
        int32_t *l_739 = &p_1348->g_37;
        union U1 *l_799[9][6] = {{&p_1348->g_221[0][0],(void*)0,&p_1348->g_374,&p_1348->g_221[0][0],(void*)0,&p_1348->g_221[0][0]},{&p_1348->g_221[0][0],(void*)0,&p_1348->g_374,&p_1348->g_221[0][0],(void*)0,&p_1348->g_221[0][0]},{&p_1348->g_221[0][0],(void*)0,&p_1348->g_374,&p_1348->g_221[0][0],(void*)0,&p_1348->g_221[0][0]},{&p_1348->g_221[0][0],(void*)0,&p_1348->g_374,&p_1348->g_221[0][0],(void*)0,&p_1348->g_221[0][0]},{&p_1348->g_221[0][0],(void*)0,&p_1348->g_374,&p_1348->g_221[0][0],(void*)0,&p_1348->g_221[0][0]},{&p_1348->g_221[0][0],(void*)0,&p_1348->g_374,&p_1348->g_221[0][0],(void*)0,&p_1348->g_221[0][0]},{&p_1348->g_221[0][0],(void*)0,&p_1348->g_374,&p_1348->g_221[0][0],(void*)0,&p_1348->g_221[0][0]},{&p_1348->g_221[0][0],(void*)0,&p_1348->g_374,&p_1348->g_221[0][0],(void*)0,&p_1348->g_221[0][0]},{&p_1348->g_221[0][0],(void*)0,&p_1348->g_374,&p_1348->g_221[0][0],(void*)0,&p_1348->g_221[0][0]}};
        int i, j;
        for (p_1348->g_37 = 0; (p_1348->g_37 == (-17)); p_1348->g_37 = safe_sub_func_uint8_t_u_u(p_1348->g_37, 1))
        { /* block id: 18 */
            uint8_t l_804 = 3UL;
            for (p_34 = 0; (p_34 != (-23)); --p_34)
            { /* block id: 21 */
                uint32_t l_63 = 0UL;
                uint64_t *l_770 = &p_1348->g_403;
                uint64_t *l_771 = &p_1348->g_772;
                union U3 *l_814 = &p_1348->g_595;
                p_1348->g_773 &= (safe_mod_func_uint64_t_u_u(((*l_771) = ((*l_770) = (0xDB6457B54C1CE2A3L != (func_46(p_1348->g_51, (safe_mul_func_int8_t_s_s(0x70L, func_54(func_57(p_1348->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1348->tid, 82))], l_63, (safe_rshift_func_uint16_t_u_s(p_1348->g_37, p_1348->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1348->tid, 82))])), l_63, func_66(l_69, p_1348->g_51, p_1348), p_1348), p_1348->g_37, p_1348))), l_739, l_740, p_1348) == l_740)))), p_1348->g_227.f0));
                for (p_1348->g_282 = 28; (p_1348->g_282 <= 6); --p_1348->g_282)
                { /* block id: 353 */
                    int32_t *l_776 = &p_1348->g_70;
                    uint16_t ***l_810 = &p_1348->g_673;
                    union U3 **l_815[9] = {&l_814,&l_814,&l_814,&l_814,&l_814,&l_814,&l_814,&l_814,&l_814};
                    int i;
                    (*l_776) &= 0x0909834BL;
                }
                return &p_1348->g_772;
            }
        }
        (*l_739) ^= 6L;
    }
    if (((safe_div_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s(((((safe_unary_minus_func_uint16_t_u((safe_lshift_func_int16_t_s_s((*p_1348->g_511), 0)))) != ((l_823 != l_823) > (((p_35 < (l_838 &= (((safe_add_func_uint32_t_u_u(p_1348->g_282, ((safe_unary_minus_func_int32_t_s((safe_rshift_func_int16_t_s_s((safe_mod_func_uint32_t_u_u((0L != (((((*l_832) |= (+((p_1348->g_831 = (void*)0) != &p_1348->g_773))) | (((*l_834) = l_833[2]) != &p_1348->g_673)) ^ 0x3C442239L) && 0L)), l_835)), p_1348->g_383[5][0][3])))) >= p_1348->g_37))) >= l_836[0][8][0]) != p_1348->g_70))) > 1UL) != p_34))) != p_34) < p_1348->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1348->tid, 82))]), p_33)), 7L)) & p_33))
    { /* block id: 376 */
        uint8_t l_853 = 2UL;
        union U3 **l_856 = (void*)0;
        union U3 ***l_857 = &l_856;
        union U2 *l_863 = &l_862[3];
        int32_t l_866[5] = {0x274BC88DL,0x274BC88DL,0x274BC88DL,0x274BC88DL,0x274BC88DL};
        int i;
        for (p_1348->g_449.f2 = 0; (p_1348->g_449.f2 != 33); ++p_1348->g_449.f2)
        { /* block id: 379 */
            union U2 l_843 = {-7L};
            int16_t *l_846 = &p_1348->g_104[5][4].f0;
            int16_t **l_845 = &l_846;
            int32_t l_847[8][3];
            int32_t l_848 = (-9L);
            int i, j;
            for (i = 0; i < 8; i++)
            {
                for (j = 0; j < 3; j++)
                    l_847[i][j] = (-1L);
            }
            l_848 = (safe_add_func_int32_t_s_s((l_847[0][2] = ((FAKE_DIVERGE(p_1348->local_0_offset, get_local_id(0), 10) , l_843) , (!(p_1348->g_844 , (((*l_845) = p_1348->g_674) == (void*)0))))), p_35));
        }
        l_866[2] = (safe_div_func_int32_t_s_s((0x96A1L < (safe_mul_func_int8_t_s_s(l_853, ((safe_rshift_func_uint16_t_u_s(p_33, (&p_1348->g_712[8][1] == ((*l_857) = l_856)))) <= ((**p_1348->g_673)++))))), (safe_sub_func_uint32_t_u_u(((((*l_863) = l_862[3]) , p_1348->g_864) , (p_1348->g_403 ^ p_1348->g_73)), GROUP_DIVERGE(0, 1)))));
    }
    else
    { /* block id: 388 */
        union U5 l_867 = {0x60B9L};
        uint64_t *l_871 = &p_1348->g_772;
        if (((p_1348->g_104[5][4] = l_867) , (safe_lshift_func_int16_t_s_s(((*p_1348->g_511) = l_870[0]), 13))))
        { /* block id: 391 */
            return l_871;
        }
        else
        { /* block id: 393 */
            return l_837[0][3][6];
        }
    }
    return &p_1348->g_772;
}


/* ------------------------------------------ */
/* 
 * reads : p_1348->g_70 p_1348->g_37 p_1348->g_296 p_1348->g_511 p_1348->g_227.f0 p_1348->g_3 p_1348->l_comm_values
 * writes: p_1348->g_383 p_1348->g_70 p_1348->g_296
 */
uint16_t  func_46(int8_t * p_47, int16_t  p_48, int32_t * p_49, int64_t  p_50, struct S6 * p_1348)
{ /* block id: 342 */
    union U3 **l_743 = (void*)0;
    union U0 l_744 = {-3L};
    int64_t *l_745[8];
    int32_t *l_747 = &p_1348->g_70;
    uint8_t *l_764 = &p_1348->g_296;
    int8_t l_769 = 0x58L;
    int i;
    for (i = 0; i < 8; i++)
        l_745[i] = &p_1348->g_383[3][0][6];
    (*l_747) ^= (((GROUP_DIVERGE(1, 1) , (GROUP_DIVERGE(2, 1) | ((void*)0 == l_743))) & (p_1348->g_383[0][1][1] = ((l_744 , 0x5AL) | 253UL))) > p_50);
    (*l_747) = ((&p_1348->g_104[5][4] == ((((p_48 & (safe_rshift_func_int8_t_s_s((safe_sub_func_int32_t_s_s(((65528UL < 0x52D1L) || (0x6B08L > (safe_lshift_func_int16_t_s_u((0x329EL & (safe_add_func_int16_t_s_s(((safe_add_func_int16_t_s_s((((((*p_49) || ((+((((+(safe_div_func_int64_t_s_s((((safe_mul_func_int8_t_s_s((((((safe_lshift_func_int8_t_s_u(((++(*l_764)) && (((safe_sub_func_int16_t_s_s((*p_1348->g_511), (*l_747))) >= (*l_747)) | p_1348->g_3[2][5])), p_50)) != l_769) > 0UL) , FAKE_DIVERGE(p_1348->global_2_offset, get_global_id(2), 10)) , (*l_747)), (-5L))) || (*p_1348->g_511)) < 1UL), p_48))) | p_1348->g_3[3][4]) >= (*l_747)) & 0x14B02EE6L)) & (*p_49))) <= p_1348->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1348->tid, 82))]) ^ 0xBAL) > p_48), p_48)) && 0UL), p_50))), p_48)))), 0L)), 0))) | 0UL) & 255UL) , &p_1348->g_104[5][4])) || (*l_747));
    return p_48;
}


/* ------------------------------------------ */
/* 
 * reads : p_1348->g_595.f4 p_1348->g_436 p_1348->l_comm_values p_1348->g_70 p_1348->g_511 p_1348->g_227.f0 p_1348->g_712 p_1348->g_674 p_1348->g_282 p_1348->g_662 p_1348->g_104 p_1348->g_449.f1 p_1348->g_714 p_1348->g_464.f0 p_1348->g_673 p_1348->g_comm_values p_1348->g_199
 * writes: p_1348->g_595.f4 p_1348->g_449.f2 p_1348->g_383 p_1348->l_comm_values p_1348->g_714 p_1348->g_449.f1 p_1348->g_36 p_1348->g_403
 */
uint8_t  func_54(int8_t * p_55, int32_t  p_56, struct S6 * p_1348)
{ /* block id: 313 */
    uint8_t l_680 = 0x1AL;
    uint32_t l_710 = 4UL;
    int32_t l_715 = 0x71F53A99L;
    uint16_t l_737[9];
    int i;
    for (i = 0; i < 9; i++)
        l_737[i] = 1UL;
    for (p_1348->g_595.f4 = 2; (p_1348->g_595.f4 <= 7); p_1348->g_595.f4 += 1)
    { /* block id: 316 */
        uint32_t l_681 = 4294967288UL;
        uint8_t *l_686 = &p_1348->g_449.f2;
        int32_t l_687 = 0x7916086EL;
        int64_t *l_708 = &p_1348->g_383[3][0][6];
        int16_t l_709 = 0x1156L;
        union U3 *l_711 = &p_1348->g_157;
        uint32_t *l_713 = &p_1348->g_714;
        int32_t l_735[3];
        int i;
        for (i = 0; i < 3; i++)
            l_735[i] = 0x65618A53L;
        l_681 = l_680;
        l_715 &= ((((*l_713) = (safe_rshift_func_uint8_t_u_u((((p_56 != 0x16E55328L) ^ (((safe_rshift_func_int8_t_s_s(((*p_55) > (((p_56 | (((*l_686) = GROUP_DIVERGE(2, 1)) & (l_687 = 1UL))) == ((safe_add_func_uint64_t_u_u(FAKE_DIVERGE(p_1348->global_2_offset, get_global_id(2), 10), ((safe_lshift_func_uint8_t_u_s(((((safe_mod_func_int64_t_s_s((safe_sub_func_int32_t_s_s(((safe_mul_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s((-1L), (((safe_lshift_func_int8_t_s_u((*p_55), 5)) , (safe_mod_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u(((safe_div_func_int64_t_s_s((p_1348->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1348->tid, 82))] ^= ((*l_708) = l_680)), p_56)) <= 18446744073709551615UL), p_56)), p_56))) & p_1348->g_70))) != l_709), l_680)) | l_710), p_56)), l_681)) && l_681) , 0x31F23D9DL) && 8L), l_681)) < (-7L)))) & (*p_55))) && (*p_1348->g_511))), 2)) , l_711) == p_1348->g_712[8][1])) || (*p_1348->g_674)), 2))) , l_710) >= l_710);
        for (p_1348->g_449.f1 = 0; (p_1348->g_449.f1 <= 7); p_1348->g_449.f1 += 1)
        { /* block id: 326 */
            uint16_t l_733 = 0x0E29L;
            int32_t l_738 = 0x63829D37L;
            (*p_1348->g_662) = &l_687;
            for (l_715 = 0; (l_715 <= 3); l_715 += 1)
            { /* block id: 330 */
                int16_t *l_725[2][8][2] = {{{&p_1348->g_157.f2,&p_1348->g_157.f2},{&p_1348->g_157.f2,&p_1348->g_157.f2},{&p_1348->g_157.f2,&p_1348->g_157.f2},{&p_1348->g_157.f2,&p_1348->g_157.f2},{&p_1348->g_157.f2,&p_1348->g_157.f2},{&p_1348->g_157.f2,&p_1348->g_157.f2},{&p_1348->g_157.f2,&p_1348->g_157.f2},{&p_1348->g_157.f2,&p_1348->g_157.f2}},{{&p_1348->g_157.f2,&p_1348->g_157.f2},{&p_1348->g_157.f2,&p_1348->g_157.f2},{&p_1348->g_157.f2,&p_1348->g_157.f2},{&p_1348->g_157.f2,&p_1348->g_157.f2},{&p_1348->g_157.f2,&p_1348->g_157.f2},{&p_1348->g_157.f2,&p_1348->g_157.f2},{&p_1348->g_157.f2,&p_1348->g_157.f2},{&p_1348->g_157.f2,&p_1348->g_157.f2}}};
                int32_t l_732 = (-1L);
                uint64_t *l_734 = &p_1348->g_403;
                int32_t *l_736[5][10] = {{&p_1348->g_37,&p_1348->g_197,(void*)0,&p_1348->g_197,&p_1348->g_37,&p_1348->g_37,&p_1348->g_197,(void*)0,&p_1348->g_197,&p_1348->g_37},{&p_1348->g_37,&p_1348->g_197,(void*)0,&p_1348->g_197,&p_1348->g_37,&p_1348->g_37,&p_1348->g_197,(void*)0,&p_1348->g_197,&p_1348->g_37},{&p_1348->g_37,&p_1348->g_197,(void*)0,&p_1348->g_197,&p_1348->g_37,&p_1348->g_37,&p_1348->g_197,(void*)0,&p_1348->g_197,&p_1348->g_37},{&p_1348->g_37,&p_1348->g_197,(void*)0,&p_1348->g_197,&p_1348->g_37,&p_1348->g_37,&p_1348->g_197,(void*)0,&p_1348->g_197,&p_1348->g_37},{&p_1348->g_37,&p_1348->g_197,(void*)0,&p_1348->g_197,&p_1348->g_37,&p_1348->g_37,&p_1348->g_197,(void*)0,&p_1348->g_197,&p_1348->g_37}};
                int i, j, k;
                l_738 = (l_737[8] = (l_735[0] = (safe_mod_func_int16_t_s_s((safe_unary_minus_func_uint64_t_u((safe_sub_func_int16_t_s_s(((p_1348->g_104[1][5] , ((*l_734) = (safe_lshift_func_uint16_t_u_u(((((((l_687 = (safe_mul_func_int8_t_s_s(p_1348->g_436[p_1348->g_449.f1][(l_715 + 3)], GROUP_DIVERGE(0, 1)))) >= (safe_lshift_func_int16_t_s_u((((safe_mod_func_int32_t_s_s((safe_mod_func_uint16_t_u_u((p_1348->g_714 , ((l_732 = p_1348->g_464.f0) , (**p_1348->g_673))), GROUP_DIVERGE(2, 1))), p_56)) < 0x1878EA7BEC90D8B6L) || 0x1344BDE6L), (*p_1348->g_674)))) && 0x3B27L) , l_733) , p_1348->g_comm_values[p_1348->tid]) >= p_1348->g_199[4]), 0)))) , 0x1EDCL), p_1348->g_comm_values[p_1348->tid])))), (**p_1348->g_673)))));
                return p_1348->g_70;
            }
        }
    }
    return p_56;
}


/* ------------------------------------------ */
/* 
 * reads : p_1348->g_110 p_1348->g_511 p_1348->g_227.f0 p_1348->g_673 p_1348->g_70 p_1348->g_436
 * writes: p_1348->g_110 p_1348->g_662 p_1348->g_673 p_1348->g_595.f0 p_1348->g_36
 */
int8_t * func_57(int64_t  p_58, uint64_t  p_59, int64_t  p_60, uint16_t  p_61, int32_t * p_62, struct S6 * p_1348)
{ /* block id: 306 */
    uint16_t l_652 = 0xCE87L;
    int32_t l_653 = 0x2AE7E741L;
    int32_t l_654 = (-9L);
    uint32_t *l_655 = &p_1348->g_110;
    int32_t **l_660 = &p_1348->g_36;
    int32_t ***l_661[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    uint32_t l_663 = 4294967288UL;
    int32_t l_666 = (-1L);
    uint16_t ***l_675 = (void*)0;
    uint16_t ***l_676 = &p_1348->g_673;
    uint16_t **l_677 = &p_1348->g_674;
    int64_t *l_678 = &p_1348->g_595.f0;
    int8_t *l_679 = &p_1348->g_436[5][1];
    int i;
    (*l_660) = ((p_58 , (l_652 > ((*l_678) = ((++(*l_655)) >= ((((safe_rshift_func_int16_t_s_s((&p_62 == (p_1348->g_662 = l_660)), 7)) != l_663) == (safe_add_func_uint8_t_u_u((((l_666 | (safe_sub_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u(((*p_1348->g_511) <= (safe_rshift_func_uint16_t_u_s((((*l_676) = p_1348->g_673) != l_677), p_59))), (*p_62))), p_60))) < (*p_62)) | (-8L)), p_1348->g_436[2][5]))) || p_61))))) , p_62);
    return l_679;
}


/* ------------------------------------------ */
/* 
 * reads : p_1348->g_70 p_1348->g_73 p_1348->g_51 p_1348->g_13 p_1348->g_111 p_1348->g_3 p_1348->g_comm_values p_1348->g_131 p_1348->g_110 p_1348->l_comm_values p_1348->g_157 p_1348->g_170 p_1348->g_171 p_1348->g_199 p_1348->g_157.f0 p_1348->g_37 p_1348->g_197 p_1348->g_221 p_1348->g_226 p_1348->g_227 p_1348->g_227.f0 p_1348->g_312 p_1348->g_374 p_1348->g_296 p_1348->g_383 p_1348->g_104 p_1348->g_403 p_1348->g_244.f0 p_1348->g_449 p_1348->g_462 p_1348->g_470 p_1348->g_436 p_1348->g_491 p_1348->g_495
 * writes: p_1348->g_70 p_1348->g_73 p_1348->g_104 p_1348->g_132 p_1348->g_170 p_1348->g_157.f3 p_1348->g_199 p_1348->g_110 p_1348->g_157.f0 p_1348->g_282 p_1348->g_36 p_1348->g_296 p_1348->g_313 p_1348->g_197 p_1348->g_403 p_1348->g_436
 */
int32_t * func_66(union U5  p_67, int8_t * p_68, struct S6 * p_1348)
{ /* block id: 22 */
    int64_t l_79 = 0L;
    int32_t l_84[4] = {(-6L),(-6L),(-6L),(-6L)};
    int32_t l_85 = (-10L);
    union U5 l_98 = {0L};
    union U1 *l_100 = &p_1348->g_13;
    union U1 **l_99 = &l_100;
    union U5 *l_103 = &p_1348->g_104[5][4];
    union U2 l_105[2][1] = {{{9L}},{{9L}}};
    union U5 **l_108 = (void*)0;
    uint32_t *l_109[7][10][3] = {{{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110}},{{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110}},{{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110}},{{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110}},{{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110}},{{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110}},{{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110},{&p_1348->g_110,&p_1348->g_110,&p_1348->g_110}}};
    union U5 l_437 = {0x163CL};
    uint16_t l_438 = 5UL;
    union U3 *l_441[10][8][1] = {{{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157}},{{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157}},{{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157}},{{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157}},{{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157}},{{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157}},{{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157}},{{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157}},{{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157}},{{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157},{&p_1348->g_157}}};
    uint32_t l_476 = 0xBF5441CFL;
    uint32_t l_490 = 6UL;
    uint32_t l_572 = 0xBB6EC495L;
    int64_t *l_581 = &p_1348->g_383[3][0][6];
    int64_t **l_580[4] = {&l_581,&l_581,&l_581,&l_581};
    uint64_t l_586 = 18446744073709551615UL;
    int32_t *l_650 = &l_84[2];
    int32_t *l_651 = &p_1348->g_70;
    int i, j, k;
    for (p_1348->g_70 = 0; (p_1348->g_70 <= 22); ++p_1348->g_70)
    { /* block id: 25 */
        int16_t l_78[5][4] = {{(-1L),(-1L),(-4L),0x025FL},{(-1L),(-1L),(-4L),0x025FL},{(-1L),(-1L),(-4L),0x025FL},{(-1L),(-1L),(-4L),0x025FL},{(-1L),(-1L),(-4L),0x025FL}};
        int32_t l_80 = (-1L);
        union U1 **l_81 = (void*)0;
        union U1 *l_83[6][6] = {{&p_1348->g_13,(void*)0,(void*)0,&p_1348->g_13,&p_1348->g_13,(void*)0},{&p_1348->g_13,(void*)0,(void*)0,&p_1348->g_13,&p_1348->g_13,(void*)0},{&p_1348->g_13,(void*)0,(void*)0,&p_1348->g_13,&p_1348->g_13,(void*)0},{&p_1348->g_13,(void*)0,(void*)0,&p_1348->g_13,&p_1348->g_13,(void*)0},{&p_1348->g_13,(void*)0,(void*)0,&p_1348->g_13,&p_1348->g_13,(void*)0},{&p_1348->g_13,(void*)0,(void*)0,&p_1348->g_13,&p_1348->g_13,(void*)0}};
        union U1 **l_82 = &l_83[4][3];
        int i, j;
        ++p_1348->g_73;
        l_80 &= ((safe_mod_func_int32_t_s_s(l_78[4][0], l_79)) , 1L);
        (*l_82) = (void*)0;
    }
    l_85 ^= ((((void*)0 != p_1348->g_51) | (0x4744A690E31D76F0L && l_79)) , (l_84[1] &= p_67.f0));
    if (func_86(func_89(p_67.f0, (l_98.f2 = func_92(l_85, l_98, l_99, (safe_mul_func_uint16_t_u_u((((**l_99) , (((((*l_103) = l_98) , l_105[0][0]) , (l_84[1] = (safe_mul_func_int16_t_s_s(((l_103 = &p_67) == &p_1348->g_104[3][2]), p_67.f0)))) <= (-8L))) == 0x6A3EEC5FL), 0xF790L)), p_1348->g_111, p_1348)), p_1348), &l_100, p_1348))
    { /* block id: 145 */
        uint16_t l_397[2][6][3] = {{{0x9907L,0xA08FL,0xDC03L},{0x9907L,0xA08FL,0xDC03L},{0x9907L,0xA08FL,0xDC03L},{0x9907L,0xA08FL,0xDC03L},{0x9907L,0xA08FL,0xDC03L},{0x9907L,0xA08FL,0xDC03L}},{{0x9907L,0xA08FL,0xDC03L},{0x9907L,0xA08FL,0xDC03L},{0x9907L,0xA08FL,0xDC03L},{0x9907L,0xA08FL,0xDC03L},{0x9907L,0xA08FL,0xDC03L},{0x9907L,0xA08FL,0xDC03L}}};
        uint64_t *l_402[1][5];
        int16_t *l_414 = &l_98.f0;
        int64_t **l_415 = (void*)0;
        int64_t *l_417 = &p_1348->g_383[7][0][3];
        int64_t **l_416 = &l_417;
        uint16_t *l_426 = &l_397[0][3][0];
        int8_t *l_435 = &p_1348->g_436[0][1];
        int32_t l_439 = 1L;
        int32_t l_451 = 0L;
        int32_t l_465 = 0L;
        union U1 *l_475 = (void*)0;
        uint16_t l_487 = 0UL;
        int32_t *l_488 = &p_1348->g_104[5][4].f2;
        int32_t *l_489 = &l_439;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 5; j++)
                l_402[i][j] = &p_1348->g_403;
        }
        for (p_1348->g_282 = 0; (p_1348->g_282 >= 29); ++p_1348->g_282)
        { /* block id: 148 */
            int64_t l_396 = 0L;
            ++l_397[0][3][0];
        }
        p_67.f2 = ((safe_sub_func_int16_t_s_s(p_67.f0, ((((p_1348->g_403 |= p_1348->g_comm_values[p_1348->tid]) >= (p_1348->g_227 , 0UL)) == (safe_sub_func_int16_t_s_s(((safe_mod_func_int16_t_s_s((((((safe_add_func_int8_t_s_s(l_79, (+0xAAL))) < ((l_84[1] , (safe_mod_func_uint16_t_u_u(0x21C5L, (safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(0, 1), 6))))) && (~((*l_414) = (-6L))))) != p_1348->g_296) || p_67.f0) && l_84[3]), 0x3DD2L)) || 1UL), l_397[0][5][1]))) & l_397[1][3][0]))) & 0x3234L);
        if (((((((&l_79 == ((*l_416) = l_402[0][2])) && (safe_sub_func_uint8_t_u_u((p_1348->g_244.f0 < ((((((safe_rshift_func_uint8_t_u_u(0x84L, (safe_div_func_int64_t_s_s((safe_div_func_int64_t_s_s((((((((*l_426) = (p_1348->g_282 = 0x7A9CL)) > (p_67.f2 == (safe_mul_func_uint8_t_u_u(p_67.f2, ((*l_435) = ((safe_lshift_func_int16_t_s_s(0L, (safe_lshift_func_int8_t_s_s((((safe_rshift_func_int8_t_s_u((p_68 == (void*)0), 5)) ^ p_67.f2) & p_67.f2), l_84[0])))) > 0xB150L)))))) , l_437) , l_438) != p_67.f2) < p_1348->g_3[4][2]), 18446744073709551615UL)), 0x35136103671FC6B6L)))) <= p_67.f2) >= l_439) | l_439) <= p_1348->g_383[3][0][6]) ^ l_439)), p_67.f2))) > 0UL) != p_67.f2) | 0xC0L) | 0x0B2BL))
        { /* block id: 158 */
            int32_t *l_440 = &p_1348->g_197;
            (*l_440) = p_67.f2;
        }
        else
        { /* block id: 160 */
            union U3 **l_442 = &l_441[7][0][0];
            int32_t l_450 = 0x03A6C778L;
            union U4 *l_461 = (void*)0;
            union U4 **l_460 = &l_461;
            (*l_442) = l_441[2][7][0];
            l_465 &= (safe_unary_minus_func_int8_t_s((((void*)0 != &l_103) ^ ((*l_426) = (safe_unary_minus_func_uint8_t_u((safe_mul_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((l_84[3] = (l_451 = (l_439 &= (p_1348->g_449 , l_450)))), GROUP_DIVERGE(0, 1))), (((safe_rshift_func_int8_t_s_s(0x33L, (p_67.f2 >= (p_1348->g_244.f0 >= (safe_add_func_int8_t_s_s((FAKE_DIVERGE(p_1348->local_2_offset, get_local_id(2), 10) || (safe_mul_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((l_460 == p_1348->g_462), 0)), 65535UL))), l_397[1][2][0])))))) , p_1348->g_227) , p_67.f2)))))))));
        }
        (*l_488) = ((((safe_rshift_func_uint16_t_u_u((((p_1348->g_470 , (l_98.f2 = (~(((p_1348->g_403 = GROUP_DIVERGE(1, 1)) && (p_1348->g_197 > (safe_rshift_func_int8_t_s_u(l_85, (l_475 != l_475))))) , (l_465 ^ p_67.f2))))) , l_476) && ((((((((((((safe_lshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s((FAKE_DIVERGE(p_1348->global_0_offset, get_global_id(0), 10) < ((safe_mod_func_int8_t_s_s(((safe_sub_func_int32_t_s_s(((*l_489) |= l_487), FAKE_DIVERGE(p_1348->local_0_offset, get_local_id(0), 10))) == 0x13L), l_476)) >= l_105[0][0].f0)), 3)), p_67.f2)), l_84[0])) && 4294967293UL) || p_1348->g_244.f0) | 0x1E8CFBEB238C0D7DL) , (void*)0) == &p_1348->g_132) > l_487) , 65533UL) < p_67.f2) ^ p_1348->g_436[6][2]) > l_490) && FAKE_DIVERGE(p_1348->global_2_offset, get_global_id(2), 10))), p_67.f2)) >= p_67.f2) , l_98.f2) < 0L);
    }
    else
    { /* block id: 172 */
        union U2 l_492 = {9L};
        int32_t *l_493 = &p_1348->g_3[2][1];
        int32_t **l_494 = &l_493;
        int32_t *l_496 = &l_84[0];
        int32_t *l_497 = &p_1348->g_197;
        int32_t l_498[7];
        int32_t *l_499 = &l_84[1];
        int32_t *l_500 = (void*)0;
        int32_t *l_501 = &l_84[1];
        int32_t *l_502[9][7][4] = {{{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]}},{{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]}},{{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]}},{{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]}},{{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]}},{{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]}},{{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]}},{{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]}},{{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]},{&l_84[1],&l_84[3],&p_1348->g_70,&p_1348->g_3[4][2]}}};
        uint8_t l_503 = 1UL;
        int32_t l_514[5];
        union U1 **l_570[9][1][3] = {{{&l_100,&l_100,&l_100}},{{&l_100,&l_100,&l_100}},{{&l_100,&l_100,&l_100}},{{&l_100,&l_100,&l_100}},{{&l_100,&l_100,&l_100}},{{&l_100,&l_100,&l_100}},{{&l_100,&l_100,&l_100}},{{&l_100,&l_100,&l_100}},{{&l_100,&l_100,&l_100}}};
        uint64_t *l_599 = &l_586;
        uint16_t *l_632 = (void*)0;
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_498[i] = 0x3B1EBAE3L;
        for (i = 0; i < 5; i++)
            l_514[i] = 0x22FD75EBL;
        (*p_1348->g_495) = ((p_1348->g_491 , l_492) , ((*l_494) = l_493));
        l_503--;
    }
    return l_651;
}


/* ------------------------------------------ */
/* 
 * reads : p_1348->g_70 p_1348->g_199 p_1348->g_3 p_1348->g_157.f0 p_1348->g_37 p_1348->g_197 p_1348->g_221 p_1348->g_226 p_1348->g_111 p_1348->g_227 p_1348->g_73 p_1348->g_110 p_1348->g_227.f0 p_1348->g_171 p_1348->g_170 p_1348->g_312 p_1348->g_374 p_1348->g_296 p_1348->g_383 p_1348->g_104
 * writes: p_1348->g_70 p_1348->g_157.f3 p_1348->g_73 p_1348->g_104 p_1348->g_199 p_1348->g_110 p_1348->g_157.f0 p_1348->g_282 p_1348->g_36 p_1348->g_296 p_1348->g_313 p_1348->g_197
 */
int32_t  func_86(int32_t  p_87, union U1 ** p_88, struct S6 * p_1348)
{ /* block id: 64 */
    uint32_t l_211 = 4294967293UL;
    int32_t l_229 = 0x1D11109AL;
    int32_t l_232 = 1L;
    union U4 **l_237 = (void*)0;
    uint8_t l_285 = 0x90L;
    uint16_t l_299 = 0UL;
    int32_t l_335 = 0x1E049319L;
    int32_t l_339[7] = {0x2ADCFEEEL,0x01E36156L,0x2ADCFEEEL,0x2ADCFEEEL,0x01E36156L,0x2ADCFEEEL,0x2ADCFEEEL};
    int32_t **l_392 = &p_1348->g_36;
    int i;
    for (p_1348->g_70 = 0; (p_1348->g_70 < 5); p_1348->g_70++)
    { /* block id: 67 */
        uint16_t *l_198 = &p_1348->g_199[4];
        int32_t l_210 = 3L;
        union U4 *l_243 = &p_1348->g_244;
        uint32_t l_251 = 4294967293UL;
        int32_t l_265 = (-1L);
        int32_t l_266 = (-3L);
        uint64_t l_270 = 0x2773B058BA22E2F3L;
        int8_t l_304 = 1L;
        int32_t l_344 = (-1L);
        int32_t l_347 = 0x215B9789L;
        int32_t l_348 = (-1L);
        int32_t l_349 = 1L;
        int32_t l_350 = 0L;
        int32_t l_351 = 0x4EE043BEL;
        int32_t l_353 = 0L;
        int32_t l_355 = 4L;
        int32_t l_356 = 0x462E70A7L;
        int32_t l_360 = 0x79557A73L;
        int32_t l_361 = 1L;
        int32_t l_364 = 0x28A39597L;
        int32_t l_366[3];
        uint8_t l_367 = 9UL;
        int i;
        for (i = 0; i < 3; i++)
            l_366[i] = 0L;
        for (p_1348->g_157.f3 = 0; p_1348->g_157.f3 < 10; p_1348->g_157.f3 += 1)
        {
            for (p_1348->g_73 = 0; p_1348->g_73 < 7; p_1348->g_73 += 1)
            {
                union U5 tmp = {{0x272DL}};
                p_1348->g_104[p_1348->g_157.f3][p_1348->g_73] = tmp;
            }
        }
        if ((safe_mul_func_int8_t_s_s(((safe_add_func_uint8_t_u_u((((safe_lshift_func_int16_t_s_u((safe_add_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u(p_87, 8)), (safe_mod_func_uint64_t_u_u((safe_unary_minus_func_uint32_t_u((((4294967295UL >= (safe_mod_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(p_87, (safe_rshift_func_uint16_t_u_s((safe_div_func_uint16_t_u_u(((*l_198)++), p_1348->g_3[1][1])), (safe_mod_func_int64_t_s_s((p_87 & (((safe_lshift_func_int8_t_s_s(0x19L, 0)) != (p_1348->g_110 = (1UL <= (safe_sub_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s((~(0xF4L & p_1348->g_157.f0)), 2)), (-5L)))))) ^ 0x68L)), l_210)))))), p_87))) && l_211) > p_1348->g_70))), GROUP_DIVERGE(0, 1))))), 2L)), p_87)) , l_211) <= (-5L)), l_211)) & p_1348->g_37), p_1348->g_197)))
        { /* block id: 71 */
            uint64_t l_214[3];
            union U0 l_219 = {0x03L};
            union U0 *l_220 = &l_219;
            int64_t *l_228 = &p_1348->g_157.f0;
            int i, j;
            for (i = 0; i < 3; i++)
                l_214[i] = 0UL;
            l_232 = (l_229 = (safe_mul_func_int16_t_s_s(l_214[2], (~(safe_rshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_u(((((*l_220) = l_219) , (p_1348->g_221[0][0] , ((((safe_rshift_func_int16_t_s_s(p_1348->g_199[4], 10)) , 0x07166BAD0E2BE1C1L) ^ (p_87 == (((((*l_228) = (((GROUP_DIVERGE(2, 1) >= (safe_mul_func_int16_t_s_s(((p_1348->g_226 , p_1348->g_111) == (p_1348->g_227 , (void*)0)), p_1348->g_37))) & p_1348->g_157.f0) < 5L)) != l_211) >= 0x3B7AL) | 0xE2B73608L))) , p_1348->g_3[1][3]))) != p_87), 2)), 4))))));
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_1348->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 82)), permutations[(safe_mod_func_uint32_t_u_u(p_87, 10))][(safe_mod_func_uint32_t_u_u(p_1348->tid, 82))]));
            for (l_219.f0 = 0; (l_219.f0 >= (-26)); l_219.f0 = safe_sub_func_uint64_t_u_u(l_219.f0, 8))
            { /* block id: 81 */
                uint32_t l_238 = 0x3869ADE6L;
                l_238 = (safe_mul_func_uint16_t_u_u((l_237 == &p_1348->g_170), ((*l_198) = p_1348->g_73)));
            }
            for (l_219.f1 = 3; (l_219.f1 <= 8); l_219.f1 += 1)
            { /* block id: 87 */
                int i;
                return p_1348->g_199[l_219.f1];
            }
        }
        else
        { /* block id: 90 */
            int64_t *l_252 = &p_1348->g_157.f0;
            int32_t l_264 = 0L;
            int32_t l_267 = (-9L);
            int32_t l_268 = 0x0758DAC6L;
            int32_t l_269 = 0x22A9C7A8L;
            uint32_t l_273 = 0UL;
            uint8_t *l_292 = &l_285;
            uint8_t *l_295 = &p_1348->g_296;
            int32_t *l_307 = &l_264;
            int32_t l_336 = 0x592A695AL;
            int32_t l_338 = 1L;
            int32_t l_345 = 0L;
            int32_t l_346 = 0x0120332DL;
            int32_t l_352 = 0L;
            int32_t l_358 = 1L;
            int32_t l_359 = 0x360CB633L;
            int32_t l_362 = 0x459CDDAFL;
            int32_t l_363 = 0L;
            int32_t l_365[6];
            int32_t **l_390 = &l_307;
            int i;
            for (i = 0; i < 6; i++)
                l_365[i] = 0x43051B70L;
            if ((((safe_div_func_int8_t_s_s((p_87 >= 0x63L), l_210)) == l_232) > ((safe_mod_func_int16_t_s_s(((l_243 = l_243) == (void*)0), (safe_div_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u((((*l_252) = ((((l_237 == ((p_87 != ((safe_add_func_int64_t_s_s(l_251, l_211)) <= p_87)) , l_237)) && GROUP_DIVERGE(1, 1)) == 0x4A0F4C23L) < GROUP_DIVERGE(2, 1))) ^ 0x6DD8F24E66764A77L), p_1348->g_110)), p_87)))) || p_1348->g_227.f0)))
            { /* block id: 93 */
                int32_t *l_253 = (void*)0;
                int32_t *l_254 = &p_1348->g_104[5][4].f2;
                int32_t *l_255 = &l_232;
                int32_t *l_256 = &p_1348->g_104[5][4].f2;
                int32_t *l_257 = (void*)0;
                int32_t *l_258 = &l_229;
                int32_t *l_259 = &p_1348->g_104[5][4].f2;
                int32_t *l_260 = &l_210;
                int32_t *l_261 = &l_210;
                int32_t *l_262 = &l_232;
                int32_t *l_263[10][6][4] = {{{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]}},{{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]}},{{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]}},{{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]}},{{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]}},{{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]}},{{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]}},{{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]}},{{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]}},{{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]},{&l_210,&l_232,&p_1348->g_70,&p_1348->g_3[0][2]}}};
                int i, j, k;
                l_270--;
                if (l_273)
                    continue;
                for (l_251 = 0; (l_251 <= 8); l_251 += 1)
                { /* block id: 98 */
                    int32_t l_275[5] = {0x6CFF39B0L,0x6CFF39B0L,0x6CFF39B0L,0x6CFF39B0L,0x6CFF39B0L};
                    int32_t **l_283 = (void*)0;
                    int32_t **l_284 = &l_254;
                    int i;
                    for (p_1348->g_110 = 0; (p_1348->g_110 <= 8); p_1348->g_110 += 1)
                    { /* block id: 101 */
                        uint8_t l_278 = 247UL;
                        uint16_t *l_281 = &p_1348->g_282;
                        int i;
                        (*l_260) |= (safe_unary_minus_func_int8_t_s(((((((l_275[4] ^ ((*l_254) = p_87)) >= (safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1348->local_1_offset, get_local_id(1), 10), 1L))) ^ 5L) , 0x13L) ^ (l_278 = ((void*)0 != (*p_1348->g_171)))) < (p_1348->g_3[4][2] > ((*l_281) = (++p_1348->g_199[l_251]))))));
                    }
                    (*l_284) = &l_264;
                }
                (*l_255) |= l_285;
            }
            else
            { /* block id: 111 */
                int32_t *l_286 = &l_264;
                int32_t **l_287 = &p_1348->g_36;
                (*l_287) = l_286;
                if (p_87)
                    continue;
            }
            (*l_307) = ((((safe_rshift_func_uint16_t_u_s(((safe_rshift_func_int8_t_s_u(p_87, 5)) <= 0x94L), 2)) || (((*l_295) = (((((*l_292)++) == p_87) != 0x16E4L) | 0x0834L)) && (safe_div_func_uint8_t_u_u(l_299, (safe_div_func_int32_t_s_s(l_268, ((((safe_sub_func_int8_t_s_s(l_304, (safe_div_func_int64_t_s_s(p_1348->g_197, l_273)))) & p_87) == l_273) ^ 3L))))))) != p_87) && 0x7E61L);
            if ((safe_mul_func_int16_t_s_s((p_1348->g_111 == ((safe_mod_func_int32_t_s_s((((((void*)0 == &p_1348->g_110) , p_1348->g_312) , &l_266) == (void*)0), l_265)) , (void*)0)), (((!(p_1348->g_3[4][2] == p_87)) || 0x1CB2L) | p_87))))
            { /* block id: 118 */
                int32_t **l_314 = &l_307;
                int32_t l_329 = 4L;
                int32_t l_330 = 3L;
                int32_t l_332[2][2] = {{0x7C018604L,0x7C018604L},{0x7C018604L,0x7C018604L}};
                int32_t l_357 = 0x11987D1BL;
                int i, j;
                (*l_314) = &l_210;
                if ((safe_mod_func_int8_t_s_s((!(*l_307)), l_229)))
                { /* block id: 120 */
                    for (p_1348->g_73 = 0; p_1348->g_73 < 4; p_1348->g_73 += 1)
                    {
                        for (l_273 = 0; l_273 < 10; l_273 += 1)
                        {
                            for (l_266 = 0; l_266 < 6; l_266 += 1)
                            {
                                p_1348->g_313[p_1348->g_73][l_273][l_266] = (void*)0;
                            }
                        }
                    }
                }
                else
                { /* block id: 122 */
                    int32_t l_319 = 0x2D65BC54L;
                    int32_t l_331 = 1L;
                    int32_t l_333 = 0x76000606L;
                    int32_t l_334 = 0x6053C3B6L;
                    int32_t l_337 = 0x2535A45AL;
                    int32_t l_340 = 0x336EDBC1L;
                    int32_t l_341[8] = {0x35C4E9EEL,1L,0x35C4E9EEL,0x35C4E9EEL,1L,0x35C4E9EEL,0x35C4E9EEL,1L};
                    int64_t l_342 = (-4L);
                    int32_t l_354[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_354[i] = (-2L);
                    for (p_87 = 0; (p_87 < 24); p_87 = safe_add_func_int64_t_s_s(p_87, 7))
                    { /* block id: 125 */
                        int32_t *l_320 = (void*)0;
                        int32_t *l_321 = &l_266;
                        int32_t *l_322 = &l_265;
                        int32_t *l_323 = &p_1348->g_104[5][4].f2;
                        int32_t *l_324 = &l_267;
                        int32_t *l_325 = &l_232;
                        int32_t *l_326 = &l_210;
                        int32_t *l_327 = &p_1348->g_197;
                        int32_t *l_328[10];
                        int16_t l_343 = (-3L);
                        uint32_t *l_384[8][6] = {{&l_273,&l_273,&l_273,&l_273,&l_273,&p_1348->g_110},{&l_273,&l_273,&l_273,&l_273,&l_273,&p_1348->g_110},{&l_273,&l_273,&l_273,&l_273,&l_273,&p_1348->g_110},{&l_273,&l_273,&l_273,&l_273,&l_273,&p_1348->g_110},{&l_273,&l_273,&l_273,&l_273,&l_273,&p_1348->g_110},{&l_273,&l_273,&l_273,&l_273,&l_273,&p_1348->g_110},{&l_273,&l_273,&l_273,&l_273,&l_273,&p_1348->g_110},{&l_273,&l_273,&l_273,&l_273,&l_273,&p_1348->g_110}};
                        int i, j;
                        for (i = 0; i < 10; i++)
                            l_328[i] = &l_267;
                        l_319 ^= p_87;
                        ++l_367;
                        (*l_325) ^= ((l_266 = (((((*l_327) = (((((safe_mul_func_int8_t_s_s(((*l_322) || ((safe_lshift_func_uint16_t_u_s((p_1348->g_282 = (!((p_1348->g_374 , (safe_rshift_func_int8_t_s_u(((**l_314) && (((-5L) | (**l_314)) <= (l_331 >= (7L != (p_1348->g_3[2][1] , ((((((safe_mod_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_s((safe_sub_func_int16_t_s_s(0L, 4UL)), 1)), p_87)) && (**l_314)) ^ 0x1FL) > (**l_314)) || p_1348->g_296) & p_87)))))), 7))) == p_1348->g_383[3][0][6]))), 10)) >= p_87)), p_1348->g_157.f0)) >= l_333) , l_349) , 0x43594089DC33B451L) & p_1348->g_3[0][0])) & p_87) >= l_299) > p_87)) & 0UL);
                    }
                }
            }
            else
            { /* block id: 134 */
                int64_t l_387 = (-1L);
                union U5 *l_391 = &p_1348->g_104[5][4];
                int32_t ***l_393 = &l_392;
                (*l_307) = ((((safe_rshift_func_uint8_t_u_s(255UL, ((l_387 || l_339[4]) & 0x42L))) ^ (((safe_lshift_func_int16_t_s_s((l_390 != (((*l_391) = p_1348->g_104[5][4]) , ((*l_393) = l_392))), 14)) , p_87) <= ((1L ^ p_87) , p_87))) ^ p_1348->g_73) >= l_211);
                (**l_390) = p_87;
            }
            (*l_307) = l_353;
        }
        return l_366[0];
    }
    return p_87;
}


/* ------------------------------------------ */
/* 
 * reads : p_1348->g_110 p_1348->l_comm_values p_1348->g_3 p_1348->g_157 p_1348->g_70 p_1348->g_comm_values p_1348->g_170 p_1348->g_171
 * writes: p_1348->g_104.f2 p_1348->g_170
 */
int32_t  func_89(int32_t  p_90, int64_t  p_91, struct S6 * p_1348)
{ /* block id: 45 */
    uint8_t l_139 = 0UL;
    int32_t l_146 = 0x165A292DL;
    int32_t l_147 = 0x57285B31L;
    int32_t *l_152 = &p_1348->g_70;
    union U0 l_155 = {1L};
    int16_t l_156 = 0x12B9L;
    union U5 l_160 = {-2L};
    int32_t *l_165 = &p_1348->g_104[5][4].f2;
    int32_t *l_166 = &l_147;
    int8_t *l_167 = &l_155.f0;
    l_147 |= ((GROUP_DIVERGE(2, 1) <= ((safe_div_func_uint16_t_u_u((~((p_91 > ((safe_add_func_int8_t_s_s((l_139 & l_139), ((safe_rshift_func_int8_t_s_u((p_90 | p_90), p_1348->g_110)) | (safe_mod_func_uint64_t_u_u(((l_139 <= (!(safe_mul_func_int16_t_s_s((l_146 = (p_91 , (0x6D32L < p_1348->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1348->tid, 82))]))), l_139)))) | (-1L)), p_1348->g_3[2][5]))))) != (-1L))) || p_1348->g_3[4][2])), p_90)) , 0x71E7B35EL)) >= l_139);
    for (l_146 = 0; (l_146 >= (-27)); l_146 = safe_sub_func_int16_t_s_s(l_146, 2))
    { /* block id: 50 */
        uint8_t l_150 = 0UL;
        int32_t **l_151[3][3][10] = {{{(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,&p_1348->g_36,&p_1348->g_36,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int i, j, k;
        l_152 = (l_150 , &l_146);
        for (p_91 = 8; (p_91 < 14); p_91 = safe_add_func_uint16_t_u_u(p_91, 1))
        { /* block id: 54 */
            l_156 ^= (l_155 , p_90);
        }
        return p_90;
    }
    (*l_165) = (((p_1348->g_157 , (safe_div_func_int64_t_s_s(p_91, p_90))) <= (*l_152)) >= ((p_1348->g_3[4][2] <= ((l_160 , p_1348->g_3[2][1]) ^ (safe_div_func_uint32_t_u_u((safe_div_func_int64_t_s_s((((*l_167) = (((*l_166) |= p_1348->g_110) >= 4294967295UL)) & p_91), p_1348->g_comm_values[p_1348->tid])), p_90)))) > 0x61L));
    (*p_1348->g_171) = ((((safe_sub_func_uint8_t_u_u(0x57L, p_91)) | p_90) <= p_90) , p_1348->g_170);
    return p_90;
}


/* ------------------------------------------ */
/* 
 * reads : p_1348->g_3 p_1348->g_111 p_1348->g_comm_values p_1348->g_70 p_1348->g_131
 * writes: p_1348->g_70 p_1348->g_132
 */
int64_t  func_92(uint64_t  p_93, union U5  p_94, union U1 ** p_95, int32_t  p_96, union U1 ** p_97, struct S6 * p_1348)
{ /* block id: 35 */
    uint32_t *l_118 = (void*)0;
    int32_t l_124[9][4][7] = {{{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL}},{{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL}},{{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL}},{{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL}},{{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL}},{{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL}},{{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL}},{{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL}},{{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL},{0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL,0x00BB9CBCL}}};
    uint8_t l_125 = 0UL;
    int32_t l_126 = 0x64C77BDDL;
    int32_t *l_129 = (void*)0;
    int32_t *l_130 = &p_1348->g_70;
    int i, j, k;
    for (p_96 = 0; (p_96 <= 2); p_96 = safe_add_func_uint32_t_u_u(p_96, 6))
    { /* block id: 38 */
        uint8_t l_123[10] = {0x7FL,254UL,0x7FL,0x7FL,254UL,0x7FL,0x7FL,254UL,0x7FL,0x7FL};
        int i;
        l_126 &= (safe_div_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_s((0xF0C45E9BC94048DEL && ((((((l_118 != (void*)0) , FAKE_DIVERGE(p_1348->global_0_offset, get_global_id(0), 10)) < p_1348->g_3[4][2]) , (((safe_mul_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(((p_1348->g_111 == p_95) ^ l_123[6]), 14)), (l_124[6][3][2] & 255UL))) | l_124[6][3][2]) , p_1348->g_comm_values[p_1348->tid])) , l_123[6]) > p_93)), l_125)), 4294967290UL));
    }
    (*l_130) |= (safe_rshift_func_int8_t_s_u(0L, 3));
    (*p_1348->g_131) = &l_129;
    return (*l_130);
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[82];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 82; i++)
            l_comm_values[i] = 1;
    struct S6 c_1349;
    struct S6* p_1348 = &c_1349;
    struct S6 c_1350 = {
        {{0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L},{0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L},{0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L},{0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L},{0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L,0x047C4D14L}}, // p_1348->g_3
        {0}, // p_1348->g_13
        0x1CE904CDE8B735D4L, // p_1348->g_23
        (-3L), // p_1348->g_37
        &p_1348->g_37, // p_1348->g_36
        (void*)0, // p_1348->g_51
        (-9L), // p_1348->g_70
        4294967291UL, // p_1348->g_73
        {{{0x7E59L},{0x1383L},{0x1383L},{0x7E59L},{-1L},{0x6BB0L},{0x6BB0L}},{{0x7E59L},{0x1383L},{0x1383L},{0x7E59L},{-1L},{0x6BB0L},{0x6BB0L}},{{0x7E59L},{0x1383L},{0x1383L},{0x7E59L},{-1L},{0x6BB0L},{0x6BB0L}},{{0x7E59L},{0x1383L},{0x1383L},{0x7E59L},{-1L},{0x6BB0L},{0x6BB0L}},{{0x7E59L},{0x1383L},{0x1383L},{0x7E59L},{-1L},{0x6BB0L},{0x6BB0L}},{{0x7E59L},{0x1383L},{0x1383L},{0x7E59L},{-1L},{0x6BB0L},{0x6BB0L}},{{0x7E59L},{0x1383L},{0x1383L},{0x7E59L},{-1L},{0x6BB0L},{0x6BB0L}},{{0x7E59L},{0x1383L},{0x1383L},{0x7E59L},{-1L},{0x6BB0L},{0x6BB0L}},{{0x7E59L},{0x1383L},{0x1383L},{0x7E59L},{-1L},{0x6BB0L},{0x6BB0L}},{{0x7E59L},{0x1383L},{0x1383L},{0x7E59L},{-1L},{0x6BB0L},{0x6BB0L}}}, // p_1348->g_104
        0UL, // p_1348->g_110
        (void*)0, // p_1348->g_111
        (void*)0, // p_1348->g_132
        &p_1348->g_132, // p_1348->g_131
        {0L}, // p_1348->g_157
        (void*)0, // p_1348->g_170
        &p_1348->g_170, // p_1348->g_171
        3L, // p_1348->g_197
        {0x7906L,1UL,0x7906L,0x7906L,1UL,0x7906L,0x7906L,1UL,0x7906L}, // p_1348->g_199
        {{{0},{0},{0}}}, // p_1348->g_221
        {0}, // p_1348->g_226
        {-1L}, // p_1348->g_227
        {&p_1348->g_197,&p_1348->g_197,&p_1348->g_197,&p_1348->g_197,&p_1348->g_197,&p_1348->g_197,&p_1348->g_197,&p_1348->g_197}, // p_1348->g_230
        {{&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0,&p_1348->g_3[3][5],&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0},{&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0,&p_1348->g_3[3][5],&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0},{&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0,&p_1348->g_3[3][5],&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0},{&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0,&p_1348->g_3[3][5],&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0},{&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0,&p_1348->g_3[3][5],&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0},{&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0,&p_1348->g_3[3][5],&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0},{&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0,&p_1348->g_3[3][5],&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0},{&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0,&p_1348->g_3[3][5],&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0},{&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0,&p_1348->g_3[3][5],&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0},{&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0,&p_1348->g_3[3][5],&p_1348->g_3[3][5],(void*)0,&p_1348->g_197,(void*)0}}, // p_1348->g_231
        {2UL}, // p_1348->g_244
        0x9ABFL, // p_1348->g_282
        0x03L, // p_1348->g_296
        {0}, // p_1348->g_312
        {{{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36}},{{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36}},{{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36}},{{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36},{&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36,&p_1348->g_36}}}, // p_1348->g_313
        {0}, // p_1348->g_374
        {{{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL},{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL}},{{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL},{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL}},{{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL},{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL}},{{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL},{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL}},{{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL},{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL}},{{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL},{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL}},{{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL},{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL}},{{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL},{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL}},{{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL},{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL}},{{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL},{0x04C56E7E9149D5CBL,1L,(-1L),0x396B7FB04761E1F9L,0x685396C799F650A6L,4L,0x1810C4CA821C16AAL}}}, // p_1348->g_383
        6UL, // p_1348->g_403
        {{0x2AL,0x08L,0x51L,0x37L,0x51L,0x08L,0x2AL,(-3L)},{0x2AL,0x08L,0x51L,0x37L,0x51L,0x08L,0x2AL,(-3L)},{0x2AL,0x08L,0x51L,0x37L,0x51L,0x08L,0x2AL,(-3L)},{0x2AL,0x08L,0x51L,0x37L,0x51L,0x08L,0x2AL,(-3L)},{0x2AL,0x08L,0x51L,0x37L,0x51L,0x08L,0x2AL,(-3L)},{0x2AL,0x08L,0x51L,0x37L,0x51L,0x08L,0x2AL,(-3L)},{0x2AL,0x08L,0x51L,0x37L,0x51L,0x08L,0x2AL,(-3L)},{0x2AL,0x08L,0x51L,0x37L,0x51L,0x08L,0x2AL,(-3L)}}, // p_1348->g_436
        {0x0BL}, // p_1348->g_449
        {1UL}, // p_1348->g_464
        &p_1348->g_464, // p_1348->g_463
        &p_1348->g_463, // p_1348->g_462
        {0}, // p_1348->g_470
        {1UL}, // p_1348->g_491
        &p_1348->g_36, // p_1348->g_495
        &p_1348->g_227.f0, // p_1348->g_511
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1348->g_513
        &p_1348->g_513[2], // p_1348->g_512
        &p_1348->g_470, // p_1348->g_533
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1348->g_532
        {0x671384D0D20AB1FEL}, // p_1348->g_595
        {{&p_1348->g_221[0][1],&p_1348->g_13,(void*)0,&p_1348->g_374,&p_1348->g_13,&p_1348->g_374,(void*)0,&p_1348->g_13,&p_1348->g_221[0][1],&p_1348->g_221[0][1]},{&p_1348->g_221[0][1],&p_1348->g_13,(void*)0,&p_1348->g_374,&p_1348->g_13,&p_1348->g_374,(void*)0,&p_1348->g_13,&p_1348->g_221[0][1],&p_1348->g_221[0][1]}}, // p_1348->g_640
        (void*)0, // p_1348->g_662
        &p_1348->g_282, // p_1348->g_674
        &p_1348->g_674, // p_1348->g_673
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1348->g_712
        4294967295UL, // p_1348->g_714
        &p_1348->g_104[5][4].f2, // p_1348->g_746
        0xA14DD5A04D716D95L, // p_1348->g_772
        0UL, // p_1348->g_773
        {9L}, // p_1348->g_813
        (void*)0, // p_1348->g_831
        {-5L}, // p_1348->g_844
        {0}, // p_1348->g_864
        {&p_1348->g_104[5][4].f2,&p_1348->g_104[5][4].f2,&p_1348->g_104[5][4].f2,&p_1348->g_104[5][4].f2,&p_1348->g_104[5][4].f2,&p_1348->g_104[5][4].f2}, // p_1348->g_865
        1L, // p_1348->g_963
        (void*)0, // p_1348->g_972
        &p_1348->g_37, // p_1348->g_1004
        {{&p_1348->g_3[4][2],&p_1348->g_197},{&p_1348->g_3[4][2],&p_1348->g_197},{&p_1348->g_3[4][2],&p_1348->g_197},{&p_1348->g_3[4][2],&p_1348->g_197},{&p_1348->g_3[4][2],&p_1348->g_197},{&p_1348->g_3[4][2],&p_1348->g_197},{&p_1348->g_3[4][2],&p_1348->g_197},{&p_1348->g_3[4][2],&p_1348->g_197},{&p_1348->g_3[4][2],&p_1348->g_197}}, // p_1348->g_1019
        &p_1348->g_3[4][2], // p_1348->g_1020
        (void*)0, // p_1348->g_1045
        0x584A85F5L, // p_1348->g_1067
        {0}, // p_1348->g_1135
        {(void*)0}, // p_1348->g_1145
        {{{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]}},{{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]}},{{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]}},{{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]}},{{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]}},{{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]}},{{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]}},{{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]}},{{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]}},{{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]},{&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0],&p_1348->g_1145[0]}}}, // p_1348->g_1146
        {-4L}, // p_1348->g_1151
        {{0xE9L,0xE9L,0UL,0x36L,248UL},{0xE9L,0xE9L,0UL,0x36L,248UL},{0xE9L,0xE9L,0UL,0x36L,248UL}}, // p_1348->g_1163
        {-10L}, // p_1348->g_1206
        {{{{0},{0},{0},{0}}},{{{0},{0},{0},{0}}},{{{0},{0},{0},{0}}},{{{0},{0},{0},{0}}},{{{0},{0},{0},{0}}}}, // p_1348->g_1213
        &p_1348->g_595, // p_1348->g_1224
        &p_1348->g_227.f0, // p_1348->g_1235
        {{&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235},{&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235},{&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235},{&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235,&p_1348->g_1235}}, // p_1348->g_1234
        {{{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L}},{{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L}},{{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L}},{{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L}},{{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L}},{{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L}},{{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L}},{{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L}},{{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L}},{{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L},{0x39C3791AB0780CD6L,1UL,0xC5D6F4B1A04BC1C3L,0x780C4F70661BED2BL,0UL,0xF5233DF6C0CF0174L}}}, // p_1348->g_1236
        18446744073709551608UL, // p_1348->g_1243
        {-8L}, // p_1348->g_1290
        (void*)0, // p_1348->g_1296
        {{-1L},{-1L},{-1L},{-1L},{-1L},{-1L}}, // p_1348->g_1302
        (void*)0, // p_1348->g_1313
        {(void*)0,&p_1348->g_1313,(void*)0,&p_1348->g_1313,(void*)0,(void*)0,&p_1348->g_1313,(void*)0,&p_1348->g_1313,(void*)0}, // p_1348->g_1312
        0x2230D2E6L, // p_1348->g_1326
        0L, // p_1348->g_1328
        0x7EAE7384L, // p_1348->g_1329
        sequence_input[get_global_id(0)], // p_1348->global_0_offset
        sequence_input[get_global_id(1)], // p_1348->global_1_offset
        sequence_input[get_global_id(2)], // p_1348->global_2_offset
        sequence_input[get_local_id(0)], // p_1348->local_0_offset
        sequence_input[get_local_id(1)], // p_1348->local_1_offset
        sequence_input[get_local_id(2)], // p_1348->local_2_offset
        sequence_input[get_group_id(0)], // p_1348->group_0_offset
        sequence_input[get_group_id(1)], // p_1348->group_1_offset
        sequence_input[get_group_id(2)], // p_1348->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 82)), permutations[0][get_linear_local_id()])), // p_1348->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1349 = c_1350;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1348);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1348->g_3[i][j], "p_1348->g_3[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1348->g_23, "p_1348->g_23", print_hash_value);
    transparent_crc(p_1348->g_37, "p_1348->g_37", print_hash_value);
    transparent_crc(p_1348->g_70, "p_1348->g_70", print_hash_value);
    transparent_crc(p_1348->g_73, "p_1348->g_73", print_hash_value);
    transparent_crc(p_1348->g_110, "p_1348->g_110", print_hash_value);
    transparent_crc(p_1348->g_197, "p_1348->g_197", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1348->g_199[i], "p_1348->g_199[i]", print_hash_value);

    }
    transparent_crc(p_1348->g_227.f0, "p_1348->g_227.f0", print_hash_value);
    transparent_crc(p_1348->g_244.f0, "p_1348->g_244.f0", print_hash_value);
    transparent_crc(p_1348->g_282, "p_1348->g_282", print_hash_value);
    transparent_crc(p_1348->g_296, "p_1348->g_296", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1348->g_383[i][j][k], "p_1348->g_383[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1348->g_403, "p_1348->g_403", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1348->g_436[i][j], "p_1348->g_436[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1348->g_464.f0, "p_1348->g_464.f0", print_hash_value);
    transparent_crc(p_1348->g_491.f0, "p_1348->g_491.f0", print_hash_value);
    transparent_crc(p_1348->g_714, "p_1348->g_714", print_hash_value);
    transparent_crc(p_1348->g_772, "p_1348->g_772", print_hash_value);
    transparent_crc(p_1348->g_773, "p_1348->g_773", print_hash_value);
    transparent_crc(p_1348->g_844.f0, "p_1348->g_844.f0", print_hash_value);
    transparent_crc(p_1348->g_963, "p_1348->g_963", print_hash_value);
    transparent_crc(p_1348->g_1067, "p_1348->g_1067", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1348->g_1163[i][j], "p_1348->g_1163[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1348->g_1206.f0, "p_1348->g_1206.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1348->g_1236[i][j][k], "p_1348->g_1236[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1348->g_1243, "p_1348->g_1243", print_hash_value);
    transparent_crc(p_1348->g_1290.f0, "p_1348->g_1290.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1348->g_1302[i].f0, "p_1348->g_1302[i].f0", print_hash_value);

    }
    transparent_crc(p_1348->g_1326, "p_1348->g_1326", print_hash_value);
    transparent_crc(p_1348->g_1328, "p_1348->g_1328", print_hash_value);
    transparent_crc(p_1348->g_1329, "p_1348->g_1329", print_hash_value);
    transparent_crc(p_1348->l_comm_values[get_linear_local_id()], "p_1348->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1348->g_comm_values[get_linear_group_id() * 82 + get_linear_local_id()], "p_1348->g_comm_values[get_linear_group_id() * 82 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
