// ---fake_divergence -g 1,1,1 -l 1,1,1
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


// Seed: 111

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2;
    int32_t g_3;
    int32_t g_7;
    volatile uint8_t g_17;
    uint32_t g_25[5];
    int32_t g_35;
    int32_t *g_34;
    volatile uint64_t g_36;
    int64_t g_93;
    int64_t *g_92[4];
    uint32_t g_103;
    uint64_t g_146;
    volatile int16_t g_163;
    volatile int16_t *g_162[10];
    volatile int16_t **g_161;
    uint64_t **g_170;
    uint64_t g_174;
    uint8_t g_180;
    uint32_t g_196;
    int64_t g_207[10];
    VECTOR(uint8_t, 8) g_215;
    VECTOR(uint8_t, 2) g_222;
    VECTOR(int8_t, 8) g_240;
    VECTOR(int8_t, 2) g_244;
    uint32_t g_249[3];
    VECTOR(int8_t, 16) g_253;
    VECTOR(uint32_t, 2) g_256;
    VECTOR(uint32_t, 16) g_259;
    VECTOR(uint32_t, 16) g_260;
    VECTOR(uint32_t, 4) g_264;
    int8_t g_288;
    int8_t g_289;
    int64_t g_290;
    uint32_t g_291;
    int64_t **g_308;
    VECTOR(int16_t, 8) g_309;
    uint16_t g_310;
    VECTOR(int16_t, 16) g_391;
    VECTOR(int16_t, 2) g_392;
    int16_t *g_409[10][7];
    VECTOR(int8_t, 16) g_452;
    uint8_t g_454;
    uint64_t g_457;
    VECTOR(int8_t, 2) g_479;
    VECTOR(int8_t, 4) g_517;
    VECTOR(uint64_t, 4) g_536;
    VECTOR(uint64_t, 8) g_544;
    VECTOR(uint64_t, 2) g_559;
    VECTOR(uint64_t, 16) g_564;
    int32_t **g_567;
    int32_t ***g_566;
    VECTOR(int32_t, 16) g_569;
    VECTOR(int32_t, 16) g_572;
    VECTOR(uint64_t, 8) g_573;
    VECTOR(uint64_t, 4) g_577;
    int64_t ***g_582;
    int64_t ****g_581;
    uint32_t g_597;
    uint64_t g_601;
    volatile VECTOR(int32_t, 2) g_604;
    VECTOR(uint16_t, 4) g_611;
    volatile VECTOR(uint16_t, 8) g_621;
    int32_t *g_649;
    volatile VECTOR(uint64_t, 8) g_669;
    uint32_t g_698;
    volatile VECTOR(uint32_t, 2) g_714;
    VECTOR(uint32_t, 16) g_720;
    VECTOR(uint32_t, 2) g_726;
    volatile VECTOR(uint32_t, 16) g_727;
    VECTOR(uint32_t, 8) g_728;
    VECTOR(uint16_t, 16) g_732;
    volatile VECTOR(int32_t, 2) g_761;
    VECTOR(int32_t, 4) g_762;
    volatile VECTOR(uint16_t, 16) g_772;
    VECTOR(uint8_t, 8) g_773;
    VECTOR(int8_t, 16) g_792;
    VECTOR(int8_t, 16) g_793;
    volatile VECTOR(int16_t, 4) g_828;
    volatile VECTOR(int16_t, 8) g_862;
    VECTOR(int8_t, 2) g_863;
    volatile VECTOR(int8_t, 8) g_864;
    volatile VECTOR(int8_t, 4) g_865;
    volatile VECTOR(int8_t, 16) g_868;
    VECTOR(int8_t, 16) g_871;
    int32_t g_874;
    VECTOR(int8_t, 16) g_875;
    VECTOR(int8_t, 8) g_876;
    VECTOR(uint8_t, 2) g_884;
    VECTOR(uint8_t, 4) g_885;
    VECTOR(uint8_t, 16) g_928;
    VECTOR(uint8_t, 16) g_929;
    int8_t *g_931;
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
uint32_t  func_1(struct S0 * p_940);
int64_t  func_41(int32_t * p_42, int64_t * p_43, int32_t * p_44, struct S0 * p_940);
int32_t * func_45(int64_t * p_46, int32_t * p_47, int32_t  p_48, int32_t * p_49, struct S0 * p_940);
int64_t * func_50(int16_t  p_51, uint32_t  p_52, uint32_t  p_53, int32_t  p_54, int32_t * p_55, struct S0 * p_940);
int32_t  func_58(int64_t * p_59, uint16_t  p_60, struct S0 * p_940);
int64_t * func_61(uint16_t  p_62, struct S0 * p_940);
uint16_t  func_63(int32_t  p_64, int32_t  p_65, uint8_t  p_66, int64_t * p_67, struct S0 * p_940);
uint64_t  func_70(int64_t  p_71, uint32_t  p_72, uint8_t  p_73, struct S0 * p_940);
uint32_t  func_87(int64_t * p_88, uint64_t  p_89, int32_t  p_90, int8_t  p_91, struct S0 * p_940);
int32_t  func_106(int64_t * p_107, int64_t * p_108, int32_t * p_109, int32_t  p_110, int32_t  p_111, struct S0 * p_940);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_940->g_3 p_940->g_7 p_940->g_17 p_940->g_577 p_940->g_559 p_940->g_92 p_940->g_264 p_940->g_567 p_940->g_34 p_940->g_35 p_940->g_928 p_940->g_929 p_940->g_103 p_940->g_569 p_940->g_259 p_940->g_884 p_940->g_649 p_940->g_310 p_940->g_762 p_940->g_566
 * writes: p_940->g_3 p_940->g_7 p_940->g_17 p_940->g_174 p_940->g_93 p_940->g_931 p_940->g_569 p_940->g_310 p_940->g_35
 */
uint32_t  func_1(struct S0 * p_940)
{ /* block id: 4 */
    int64_t l_8 = 2L;
    int32_t l_15 = 0x368A9017L;
    int32_t l_16 = 0x6D7C6AE4L;
    int64_t **l_614 = &p_940->g_92[2];
    int32_t l_630 = 0x07B06133L;
    VECTOR(int16_t, 16) l_632 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 4L), 4L), 4L, 1L, 4L, (VECTOR(int16_t, 2))(1L, 4L), (VECTOR(int16_t, 2))(1L, 4L), 1L, 4L, 1L, 4L);
    int16_t l_680 = 0x1479L;
    int32_t l_682[4] = {0x66DBEF97L,0x66DBEF97L,0x66DBEF97L,0x66DBEF97L};
    VECTOR(uint32_t, 4) l_729 = (VECTOR(uint32_t, 4))(0xDDD437D0L, (VECTOR(uint32_t, 2))(0xDDD437D0L, 0x120009A3L), 0x120009A3L);
    VECTOR(uint32_t, 4) l_733 = (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 1UL), 1UL);
    int64_t l_739 = 0x4B24DA9F047CBF05L;
    uint32_t l_776 = 4294967295UL;
    int64_t l_815[7] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    VECTOR(uint64_t, 4) l_825 = (VECTOR(uint64_t, 4))(0x2F4EBB16E8B7ABECL, (VECTOR(uint64_t, 2))(0x2F4EBB16E8B7ABECL, 18446744073709551610UL), 18446744073709551610UL);
    uint16_t l_837 = 0UL;
    VECTOR(int8_t, 2) l_867 = (VECTOR(int8_t, 2))(0x00L, 0x24L);
    VECTOR(int8_t, 16) l_869 = (VECTOR(int8_t, 16))(0x45L, (VECTOR(int8_t, 4))(0x45L, (VECTOR(int8_t, 2))(0x45L, (-4L)), (-4L)), (-4L), 0x45L, (-4L), (VECTOR(int8_t, 2))(0x45L, (-4L)), (VECTOR(int8_t, 2))(0x45L, (-4L)), 0x45L, (-4L), 0x45L, (-4L));
    VECTOR(uint8_t, 16) l_883 = (VECTOR(uint8_t, 16))(247UL, (VECTOR(uint8_t, 4))(247UL, (VECTOR(uint8_t, 2))(247UL, 0xDEL), 0xDEL), 0xDEL, 247UL, 0xDEL, (VECTOR(uint8_t, 2))(247UL, 0xDEL), (VECTOR(uint8_t, 2))(247UL, 0xDEL), 247UL, 0xDEL, 247UL, 0xDEL);
    uint64_t *l_896 = &p_940->g_174;
    uint8_t *l_897[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    for (p_940->g_3 = (-26); (p_940->g_3 > 10); p_940->g_3++)
    { /* block id: 7 */
        int32_t *l_6 = &p_940->g_7;
        int32_t *l_9 = &p_940->g_7;
        int32_t *l_10 = &p_940->g_7;
        int32_t *l_11 = (void*)0;
        int32_t *l_12 = (void*)0;
        int32_t *l_13[4] = {&p_940->g_7,&p_940->g_7,&p_940->g_7,&p_940->g_7};
        int16_t l_14 = 1L;
        int64_t *l_24[6];
        uint32_t l_357 = 0x2779326AL;
        int16_t **l_607[5][5] = {{&p_940->g_409[4][2],&p_940->g_409[4][2],&p_940->g_409[4][2],&p_940->g_409[4][2],&p_940->g_409[4][2]},{&p_940->g_409[4][2],&p_940->g_409[4][2],&p_940->g_409[4][2],&p_940->g_409[4][2],&p_940->g_409[4][2]},{&p_940->g_409[4][2],&p_940->g_409[4][2],&p_940->g_409[4][2],&p_940->g_409[4][2],&p_940->g_409[4][2]},{&p_940->g_409[4][2],&p_940->g_409[4][2],&p_940->g_409[4][2],&p_940->g_409[4][2],&p_940->g_409[4][2]},{&p_940->g_409[4][2],&p_940->g_409[4][2],&p_940->g_409[4][2],&p_940->g_409[4][2],&p_940->g_409[4][2]}};
        uint16_t l_616 = 0x84DEL;
        int32_t l_681[4][10] = {{0x6A001082L,(-1L),0x6A001082L,0x6A001082L,(-1L),0x6A001082L,0x6A001082L,(-1L),0x6A001082L,0x6A001082L},{0x6A001082L,(-1L),0x6A001082L,0x6A001082L,(-1L),0x6A001082L,0x6A001082L,(-1L),0x6A001082L,0x6A001082L},{0x6A001082L,(-1L),0x6A001082L,0x6A001082L,(-1L),0x6A001082L,0x6A001082L,(-1L),0x6A001082L,0x6A001082L},{0x6A001082L,(-1L),0x6A001082L,0x6A001082L,(-1L),0x6A001082L,0x6A001082L,(-1L),0x6A001082L,0x6A001082L}};
        VECTOR(uint32_t, 16) l_721 = (VECTOR(uint32_t, 16))(0x220763ACL, (VECTOR(uint32_t, 4))(0x220763ACL, (VECTOR(uint32_t, 2))(0x220763ACL, 2UL), 2UL), 2UL, 0x220763ACL, 2UL, (VECTOR(uint32_t, 2))(0x220763ACL, 2UL), (VECTOR(uint32_t, 2))(0x220763ACL, 2UL), 0x220763ACL, 2UL, 0x220763ACL, 2UL);
        int64_t l_766 = (-8L);
        VECTOR(int64_t, 4) l_767 = (VECTOR(int64_t, 4))(0x2C30629A388AF2FEL, (VECTOR(int64_t, 2))(0x2C30629A388AF2FEL, 1L), 1L);
        int32_t l_788 = 1L;
        uint8_t l_811 = 255UL;
        VECTOR(int64_t, 2) l_855 = (VECTOR(int64_t, 2))(0x0343CEA3B2DAF2F8L, 1L);
        int i, j;
        for (i = 0; i < 6; i++)
            l_24[i] = &l_8;
        (*l_6) ^= p_940->g_3;
        if (p_940->g_7)
            break;
        p_940->g_17++;
    }
    if ((l_680 | ((safe_div_func_uint8_t_u_u((safe_div_func_uint64_t_u_u(l_729.w, (safe_sub_func_int32_t_s_s(((p_940->g_577.w | GROUP_DIVERGE(2, 1)) >= ((((p_940->g_559.y != l_867.y) , (((!(safe_add_func_uint64_t_u_u(((*l_896) = (l_15 = 4UL)), ((**l_614) = (&p_940->g_17 == l_897[0]))))) , (((safe_lshift_func_uint16_t_u_u(((l_837 <= 0L) >= l_867.y), 1)) , p_940->g_264.x) , l_896)) == &p_940->g_601)) < (-10L)) & 0x0EC5L)), (**p_940->g_567))))), l_733.y)) ^ l_632.sa)))
    { /* block id: 319 */
        uint16_t l_902 = 0xFBD4L;
        int8_t *l_925 = (void*)0;
        int32_t l_930 = 0x33BC20F5L;
        int8_t *l_932[7][6] = {{&p_940->g_288,(void*)0,&p_940->g_288,&p_940->g_288,(void*)0,&p_940->g_288},{&p_940->g_288,(void*)0,&p_940->g_288,&p_940->g_288,(void*)0,&p_940->g_288},{&p_940->g_288,(void*)0,&p_940->g_288,&p_940->g_288,(void*)0,&p_940->g_288},{&p_940->g_288,(void*)0,&p_940->g_288,&p_940->g_288,(void*)0,&p_940->g_288},{&p_940->g_288,(void*)0,&p_940->g_288,&p_940->g_288,(void*)0,&p_940->g_288},{&p_940->g_288,(void*)0,&p_940->g_288,&p_940->g_288,(void*)0,&p_940->g_288},{&p_940->g_288,(void*)0,&p_940->g_288,&p_940->g_288,(void*)0,&p_940->g_288}};
        int32_t *l_933 = (void*)0;
        int32_t *l_934 = (void*)0;
        int32_t *l_935[2];
        int i, j;
        for (i = 0; i < 2; i++)
            l_935[i] = (void*)0;
        if ((safe_sub_func_uint16_t_u_u((l_902 , GROUP_DIVERGE(2, 1)), ((safe_rshift_func_int8_t_s_s((~(safe_lshift_func_int8_t_s_s(((safe_mod_func_int32_t_s_s((1L >= (safe_add_func_int32_t_s_s((safe_mod_func_uint8_t_u_u((((l_902 & (l_883.sd && (safe_div_func_uint16_t_u_u(l_776, (safe_mul_func_uint16_t_u_u((GROUP_DIVERGE(1, 1) , (safe_add_func_int32_t_s_s(((&p_940->g_582 == ((p_940->g_569.s4 &= (safe_div_func_int8_t_s_s((l_16 = (safe_add_func_int32_t_s_s((safe_lshift_func_uint8_t_u_u((l_925 != (p_940->g_931 = ((GROUP_DIVERGE(0, 1) || ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(((l_930 = ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(p_940->g_928.se7)) + ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(p_940->g_929.s3df0)), l_902, ((VECTOR(uint8_t, 2))(0xF9L, 0x3AL)), 0x3BL)).s07))).even) || (p_940->g_577.x >= 0x30L)), ((VECTOR(int32_t, 2))(7L)), 1L)).odd && ((VECTOR(int32_t, 2))(0x453A1144L))))).lo) , &p_940->g_288))), 5)), 0x2774862DL))), p_940->g_103))) , &p_940->g_582)) || p_940->g_259.sd), 5L))), GROUP_DIVERGE(0, 1))))))) , (void*)0) == &l_630), 0x77L)), p_940->g_884.x))), (*p_940->g_649))) , l_8), l_902))), l_902)) , l_902))))
        { /* block id: 324 */
            for (p_940->g_310 = 0; (p_940->g_310 < 9); p_940->g_310 = safe_add_func_int32_t_s_s(p_940->g_310, 2))
            { /* block id: 327 */
                uint16_t l_938 = 0x0D58L;
                if ((*p_940->g_649))
                    break;
                if (l_938)
                    break;
                return p_940->g_762.x;
            }
        }
        else
        { /* block id: 332 */
            return l_902;
        }
        (*p_940->g_34) |= l_837;
        (***p_940->g_566) = (&p_940->g_567 != &p_940->g_567);
        return l_729.x;
    }
    else
    { /* block id: 338 */
        int16_t l_939 = (-1L);
        l_939 = (*p_940->g_649);
    }
    return l_869.s9;
}


/* ------------------------------------------ */
/* 
 * reads : p_940->g_34 p_940->g_35 p_940->g_7 p_940->g_566 p_940->g_567
 * writes: p_940->g_35 p_940->g_7
 */
int64_t  func_41(int32_t * p_42, int64_t * p_43, int32_t * p_44, struct S0 * p_940)
{ /* block id: 227 */
    uint32_t l_593 = 0x2065EEDBL;
    (***p_940->g_566) = (*p_940->g_34);
    return l_593;
}


/* ------------------------------------------ */
/* 
 * reads : p_940->g_288 p_940->g_34 p_940->g_35 p_940->g_3 p_940->g_309 p_940->g_7 p_940->g_392 p_940->g_454 p_940->g_457 p_940->g_146 p_940->g_479 p_940->g_256 p_940->g_308 p_940->g_92 p_940->g_93 p_940->g_196 p_940->g_291 p_940->g_289 p_940->g_244 p_940->g_517 p_940->g_260 p_940->g_536 p_940->g_544 p_940->g_559 p_940->g_564 p_940->g_566 p_940->g_569 p_940->g_572 p_940->g_573 p_940->g_577 p_940->g_259 p_940->g_249 p_940->g_567 p_940->g_310
 * writes: p_940->g_288 p_940->g_174 p_940->g_196 p_940->g_93 p_940->g_146 p_940->g_454 p_940->g_457 p_940->g_34 p_940->g_291 p_940->g_289 p_940->g_253 p_940->g_566 p_940->g_7 p_940->g_35 p_940->g_581 p_940->g_310
 */
int32_t * func_45(int64_t * p_46, int32_t * p_47, int32_t  p_48, int32_t * p_49, struct S0 * p_940)
{ /* block id: 143 */
    uint64_t l_388[4];
    uint32_t l_397[4][7][1] = {{{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L}},{{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L}},{{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L}},{{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L},{0x78612B10L}}};
    int32_t l_400 = (-7L);
    int32_t l_453 = 1L;
    int32_t **l_461 = &p_940->g_34;
    int32_t *l_463[9][4][3] = {{{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453}},{{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453}},{{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453}},{{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453}},{{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453}},{{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453}},{{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453}},{{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453}},{{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453},{&l_453,&p_940->g_35,&l_453}}};
    int32_t **l_462 = &l_463[8][2][2];
    VECTOR(int16_t, 2) l_474 = (VECTOR(int16_t, 2))(6L, 0x1813L);
    uint64_t l_475 = 0xAFEDE6164F1CED80L;
    VECTOR(int64_t, 16) l_476 = (VECTOR(int64_t, 16))(0x0295ACDAAD809C7FL, (VECTOR(int64_t, 4))(0x0295ACDAAD809C7FL, (VECTOR(int64_t, 2))(0x0295ACDAAD809C7FL, 0x3F5D643F2763DE1EL), 0x3F5D643F2763DE1EL), 0x3F5D643F2763DE1EL, 0x0295ACDAAD809C7FL, 0x3F5D643F2763DE1EL, (VECTOR(int64_t, 2))(0x0295ACDAAD809C7FL, 0x3F5D643F2763DE1EL), (VECTOR(int64_t, 2))(0x0295ACDAAD809C7FL, 0x3F5D643F2763DE1EL), 0x0295ACDAAD809C7FL, 0x3F5D643F2763DE1EL, 0x0295ACDAAD809C7FL, 0x3F5D643F2763DE1EL);
    uint32_t l_477 = 1UL;
    VECTOR(uint8_t, 8) l_478 = (VECTOR(uint8_t, 8))(254UL, (VECTOR(uint8_t, 4))(254UL, (VECTOR(uint8_t, 2))(254UL, 0xCCL), 0xCCL), 0xCCL, 254UL, 0xCCL);
    int64_t ***l_481 = &p_940->g_308;
    int64_t ****l_480 = &l_481;
    uint32_t *l_482 = &p_940->g_291;
    uint32_t l_483 = 0UL;
    int8_t *l_484 = &p_940->g_289;
    int8_t l_485 = 0x2EL;
    int8_t *l_486 = (void*)0;
    uint64_t l_487[9] = {7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL};
    VECTOR(uint8_t, 16) l_504 = (VECTOR(uint8_t, 16))(0xBDL, (VECTOR(uint8_t, 4))(0xBDL, (VECTOR(uint8_t, 2))(0xBDL, 0xABL), 0xABL), 0xABL, 0xBDL, 0xABL, (VECTOR(uint8_t, 2))(0xBDL, 0xABL), (VECTOR(uint8_t, 2))(0xBDL, 0xABL), 0xBDL, 0xABL, 0xBDL, 0xABL);
    VECTOR(int8_t, 4) l_515 = (VECTOR(int8_t, 4))(0x74L, (VECTOR(int8_t, 2))(0x74L, (-1L)), (-1L));
    VECTOR(uint64_t, 16) l_537 = (VECTOR(uint64_t, 16))(0x780E2DE9E9C53EB0L, (VECTOR(uint64_t, 4))(0x780E2DE9E9C53EB0L, (VECTOR(uint64_t, 2))(0x780E2DE9E9C53EB0L, 0x2E6B7442E030C65DL), 0x2E6B7442E030C65DL), 0x2E6B7442E030C65DL, 0x780E2DE9E9C53EB0L, 0x2E6B7442E030C65DL, (VECTOR(uint64_t, 2))(0x780E2DE9E9C53EB0L, 0x2E6B7442E030C65DL), (VECTOR(uint64_t, 2))(0x780E2DE9E9C53EB0L, 0x2E6B7442E030C65DL), 0x780E2DE9E9C53EB0L, 0x2E6B7442E030C65DL, 0x780E2DE9E9C53EB0L, 0x2E6B7442E030C65DL);
    VECTOR(uint64_t, 4) l_549 = (VECTOR(uint64_t, 4))(0xEADCC382CDE57887L, (VECTOR(uint64_t, 2))(0xEADCC382CDE57887L, 4UL), 4UL);
    VECTOR(uint64_t, 8) l_552 = (VECTOR(uint64_t, 8))(0x30CB2C2BDFE38310L, (VECTOR(uint64_t, 4))(0x30CB2C2BDFE38310L, (VECTOR(uint64_t, 2))(0x30CB2C2BDFE38310L, 18446744073709551613UL), 18446744073709551613UL), 18446744073709551613UL, 0x30CB2C2BDFE38310L, 18446744073709551613UL);
    VECTOR(uint64_t, 2) l_558 = (VECTOR(uint64_t, 2))(6UL, 9UL);
    VECTOR(int32_t, 4) l_571 = (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0x1049947BL), 0x1049947BL);
    VECTOR(uint64_t, 2) l_576 = (VECTOR(uint64_t, 2))(0x4376C3671A1D4009L, 18446744073709551615UL);
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_388[i] = 0x9DA2CCC983FD836BL;
    for (p_940->g_288 = (-13); (p_940->g_288 >= 3); ++p_940->g_288)
    { /* block id: 146 */
        uint32_t l_378 = 0UL;
        int16_t *l_412[4][6][10] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int32_t l_422 = 1L;
        int32_t **l_460 = &p_940->g_34;
        int i, j, k;
        for (p_48 = 0; (p_48 > 21); p_48 = safe_add_func_int64_t_s_s(p_48, 1))
        { /* block id: 149 */
            int16_t l_421 = 0L;
            int32_t l_424 = 0x7A36C995L;
            int32_t *l_430 = (void*)0;
            int32_t *l_438 = &l_422;
            int32_t *l_439 = (void*)0;
            int32_t *l_440 = &p_940->g_7;
            int32_t *l_441 = &l_424;
            int32_t *l_442 = &l_400;
            int32_t *l_443 = &l_422;
            int32_t *l_444 = &p_940->g_7;
            int32_t *l_445 = &p_940->g_35;
            int32_t *l_446 = &l_400;
            int32_t *l_447 = (void*)0;
            int32_t *l_448 = &p_940->g_7;
            int32_t *l_449 = &l_400;
            int32_t *l_450 = &l_424;
            int32_t *l_451[10][4][6] = {{{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400}},{{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400}},{{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400}},{{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400}},{{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400}},{{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400}},{{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400}},{{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400}},{{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400}},{{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400},{&l_422,&l_424,(void*)0,(void*)0,&l_422,&l_400}}};
            int i, j, k;
            for (p_940->g_174 = (-27); (p_940->g_174 < 58); p_940->g_174 = safe_add_func_uint32_t_u_u(p_940->g_174, 4))
            { /* block id: 152 */
                int32_t *l_373 = &p_940->g_7;
                int32_t *l_374 = &p_940->g_35;
                int32_t *l_375 = &p_940->g_7;
                int32_t l_376 = (-6L);
                int32_t *l_377[3][9] = {{&p_940->g_3,&p_940->g_7,&p_940->g_35,&p_940->g_35,&p_940->g_7,&p_940->g_35,&p_940->g_35,&p_940->g_7,&p_940->g_3},{&p_940->g_3,&p_940->g_7,&p_940->g_35,&p_940->g_35,&p_940->g_7,&p_940->g_35,&p_940->g_35,&p_940->g_7,&p_940->g_3},{&p_940->g_3,&p_940->g_7,&p_940->g_35,&p_940->g_35,&p_940->g_7,&p_940->g_35,&p_940->g_35,&p_940->g_7,&p_940->g_3}};
                int16_t *l_398 = (void*)0;
                int16_t *l_399 = (void*)0;
                int16_t **l_410 = (void*)0;
                int16_t **l_411 = &p_940->g_409[0][1];
                uint16_t *l_423[8] = {&p_940->g_310,&p_940->g_310,&p_940->g_310,&p_940->g_310,&p_940->g_310,&p_940->g_310,&p_940->g_310,&p_940->g_310};
                int32_t l_425 = 0x09344F5BL;
                int i, j;
                l_378++;
                for (p_940->g_196 = 0; (p_940->g_196 >= 12); p_940->g_196 = safe_add_func_uint16_t_u_u(p_940->g_196, 5))
                { /* block id: 156 */
                    int32_t **l_383 = &l_377[2][8];
                    int32_t ***l_384 = &l_383;
                    (*l_384) = l_383;
                    for (p_940->g_93 = 0; (p_940->g_93 > (-16)); --p_940->g_93)
                    { /* block id: 160 */
                        (*p_47) ^= (safe_unary_minus_func_uint32_t_u((l_388[0] && ((*p_940->g_34) < p_940->g_309.s5))));
                        (*p_47) |= 0x1C388BF9L;
                        (*l_383) = &p_940->g_3;
                    }
                    if ((*l_375))
                        break;
                    return &p_940->g_7;
                }
                (*p_47) = (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(0x4FF0L, 0x16E8L)).xxxxyyyyyxyxyyyy == ((VECTOR(int16_t, 16))(p_940->g_391.s1e8802a9f155fe3f))))).s17, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(p_940->g_392.yxyyxyxyyyyxxyxy)).s9c9a > ((VECTOR(int16_t, 16))(0x3175L, 0x6A95L, ((VECTOR(int16_t, 8))((safe_lshift_func_int16_t_s_s((safe_add_func_int16_t_s_s(l_397[3][0][0], (l_400 = p_940->g_35))), (l_425 = (((l_378 == l_378) != ((((((safe_rshift_func_int16_t_s_u((p_940->g_309.s2 = (((**p_940->g_308) = (safe_div_func_int8_t_s_s((safe_div_func_int16_t_s_s((((safe_sub_func_uint16_t_u_u((((*l_411) = p_940->g_409[6][6]) == l_412[2][4][5]), (l_424 = (safe_sub_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(((l_422 = (l_378 <= (l_421 ^ (0x66L != p_940->g_146)))) & p_940->g_264.z), ((VECTOR(uint8_t, 2))(3UL)), 0x9DL)).x, p_940->g_256.y)), 0x64L)), l_378)), l_388[1]))))) == (-7L)) && 3L), (*l_374))), 0x8DL))) & 8UL)), p_940->g_146)) , (-4L)) , &p_940->g_170) != (void*)0) < 0x4B69D266L) != 0L)) < p_48)))), p_48, ((VECTOR(int16_t, 2))((-9L))), 0x55FDL, ((VECTOR(int16_t, 2))(0x7E44L)), (-7L))), (-1L), ((VECTOR(int16_t, 4))((-9L))), 0x7E03L)).s7470))).xxzxyywxywyzxxww && ((VECTOR(int16_t, 16))((-1L)))))).sacfc, ((VECTOR(int16_t, 4))((-1L)))))).xywyxyzw, ((VECTOR(int16_t, 8))(0L))))).s1620510414410112, (int16_t)3L))).sf43f && ((VECTOR(int16_t, 4))(0x19A6L))))).odd, ((VECTOR(int16_t, 2))(1L))))).odd, p_940->g_392.x));
            }
            for (p_940->g_146 = 19; (p_940->g_146 != 12); --p_940->g_146)
            { /* block id: 179 */
                uint16_t l_431 = 65528UL;
                int32_t **l_436 = (void*)0;
                int32_t **l_437[9];
                int i;
                for (i = 0; i < 9; i++)
                    l_437[i] = &l_430;
                (1 + 1);
            }
            --p_940->g_454;
            p_940->g_457--;
        }
        (*l_460) = &p_940->g_35;
    }
    if (((((*l_461) = &p_940->g_35) == ((*l_462) = &p_940->g_7)) < (((safe_div_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), ((p_940->g_253.s9 = ((((((((safe_lshift_func_uint16_t_u_s((safe_add_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((*l_484) &= (((((p_940->g_146 ^ ((*l_482) ^= (((*l_480) = (((((VECTOR(int16_t, 8))(l_474.xyyxxxyx)).s6 , ((p_48 && l_475) , (((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(l_476.s4ef5)).lo && ((VECTOR(int64_t, 16))(0L, (l_477 >= (((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_478.s17)), GROUP_DIVERGE(2, 1), 255UL, ((VECTOR(uint8_t, 2))(abs(((VECTOR(int8_t, 8))(p_940->g_479.yyxyyyyx)).s04))), 0x7BL, 0x74L)).s3 ^ p_940->g_256.y)), ((0x40L <= (p_48 ^ 0x32E1B750284F3193L)) & p_48), (-8L), ((VECTOR(int64_t, 8))((-1L))), 0L, (**p_940->g_308), 0L, 1L)).se8))).hi && 0x4CB9D4434E24FD4DL))) && p_940->g_196) , (void*)0)) == (void*)0))) , (-9L)) && l_483) && p_48) , p_940->g_35)), p_48)), l_485)), 8UL)), l_397[2][4][0])) ^ p_48) && 0L) , 0UL) != p_48) != p_48) <= FAKE_DIVERGE(p_940->local_2_offset, get_local_id(2), 10)) , (-5L))) , l_487[0]))) , l_486) != l_484)))
    { /* block id: 200 */
        VECTOR(int8_t, 16) l_516 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 1L), 1L), 1L, 1L, 1L, (VECTOR(int8_t, 2))(1L, 1L), (VECTOR(int8_t, 2))(1L, 1L), 1L, 1L, 1L, 1L);
        VECTOR(int8_t, 4) l_518 = (VECTOR(int8_t, 4))(0x64L, (VECTOR(int8_t, 2))(0x64L, 0L), 0L);
        int32_t l_523 = 0L;
        uint8_t *l_524 = &p_940->g_454;
        uint16_t l_525 = 65535UL;
        int i;
        (*p_47) &= (safe_div_func_int32_t_s_s((((*l_484) = ((safe_mod_func_uint16_t_u_u(2UL, (safe_mod_func_uint64_t_u_u((safe_mod_func_int16_t_s_s((((safe_div_func_uint8_t_u_u((safe_mod_func_int8_t_s_s((**l_461), (((safe_add_func_int64_t_s_s((((p_46 == (((safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(l_504.sdbb14471e7d03fe3)).s6, (**l_461))) , (((((*l_524) &= (safe_div_func_int8_t_s_s((((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0x361D9B2E1CFE587BL, 6UL)), 0xC5B65ADA84E9EAA0L, 18446744073709551610UL)).x && p_48) , (l_523 = (((*l_462) = &p_940->g_35) != ((((VECTOR(uint16_t, 4))(0x5686L, ((VECTOR(uint16_t, 2))(1UL, 65535UL)), 0UL)).x , (safe_add_func_uint32_t_u_u((p_940->g_244.x , (safe_mul_func_int8_t_s_s((((safe_sub_func_uint32_t_u_u((safe_add_func_int8_t_s_s((((VECTOR(int32_t, 4))(0x7524C9C2L, 0L, (-2L), (-1L))).x , ((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))((!((VECTOR(int8_t, 4))(l_515.yxwy)).ywzxzywz))), ((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(l_516.s8e1eb56d)).s4231745521664420 <= ((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))(p_940->g_517.xz)).xyxxyxxy, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_518.xxxy)), (-5L), 0L, 0x72L, (safe_mod_func_int8_t_s_s(0x31L, (safe_lshift_func_uint8_t_u_u(((**l_461) >= (*p_940->g_34)), 3)))), p_940->g_196, (**l_461), 0x1CL, 0L, 2L, (-5L), 0x2AL, (-3L))).even))).s6172760643163427))), ((VECTOR(int8_t, 16))(8L)), ((VECTOR(int8_t, 16))(0x34L))))).s4f, (int8_t)p_48))).yyyxxyxy))), ((VECTOR(int8_t, 8))(1L))))).s2), 0x06L)), (*p_49))) | 0x1EL) >= 254UL), 2UL))), l_518.z))) , (*l_461))))) <= p_940->g_260.s6), l_516.sf))) , p_940->g_392.y) , 246UL) , p_48)) , (void*)0)) > p_48) || p_940->g_517.y), p_48)) , (-8L)) , l_525))), l_516.s5)) < 0x2AL) < l_516.s4), p_48)), (**l_461))))) | p_940->g_7)) != l_518.w), 6L));
    }
    else
    { /* block id: 206 */
        int64_t ***l_528[10][6][1] = {{{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308}},{{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308}},{{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308}},{{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308}},{{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308}},{{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308}},{{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308}},{{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308}},{{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308}},{{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308},{&p_940->g_308}}};
        VECTOR(uint32_t, 4) l_533 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x366962AAL), 0x366962AAL);
        VECTOR(uint64_t, 8) l_555 = (VECTOR(uint64_t, 8))(0x9F9378A53FB92E9BL, (VECTOR(uint64_t, 4))(0x9F9378A53FB92E9BL, (VECTOR(uint64_t, 2))(0x9F9378A53FB92E9BL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x9F9378A53FB92E9BL, 18446744073709551615UL);
        VECTOR(uint64_t, 4) l_560 = (VECTOR(uint64_t, 4))(0x6CA8156B48A94430L, (VECTOR(uint64_t, 2))(0x6CA8156B48A94430L, 18446744073709551615UL), 18446744073709551615UL);
        VECTOR(uint64_t, 2) l_561 = (VECTOR(uint64_t, 2))(0x01DFDB34D62CDD56L, 0UL);
        VECTOR(uint64_t, 4) l_565 = (VECTOR(uint64_t, 4))(0x826677C736CB5459L, (VECTOR(uint64_t, 2))(0x826677C736CB5459L, 0UL), 0UL);
        int32_t ****l_568[9] = {&p_940->g_566,(void*)0,&p_940->g_566,&p_940->g_566,(void*)0,&p_940->g_566,&p_940->g_566,(void*)0,&p_940->g_566};
        VECTOR(int32_t, 4) l_570 = (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x07D81B34L), 0x07D81B34L);
        int32_t *l_578 = &p_940->g_7;
        int32_t l_579 = (-2L);
        int64_t *****l_580[1][9] = {{&l_480,&l_480,&l_480,&l_480,&l_480,&l_480,&l_480,&l_480,&l_480}};
        uint32_t l_587 = 0x4D7FA4DEL;
        int i, j, k;
        (*p_47) ^= ((safe_div_func_uint8_t_u_u(((l_528[0][4][0] == &p_940->g_308) , (((safe_lshift_func_uint16_t_u_u(p_48, (safe_lshift_func_int8_t_s_u((((l_579 = (((VECTOR(uint32_t, 2))(l_533.xw)).lo | ((*l_578) ^= (l_533.z && (((l_533.y , ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),VECTOR(uint64_t, 2),((VECTOR(uint64_t, 8))(rhadd(((VECTOR(uint64_t, 4))(p_940->g_536.zyzz)).wxxywwwz, ((VECTOR(uint64_t, 8))(l_537.s66c7b957))))).s21, ((VECTOR(uint64_t, 16))(0x61491A634B7427BAL, (safe_add_func_int32_t_s_s(((safe_sub_func_uint32_t_u_u(((*l_482) = (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(p_940->g_544.s35565013)).s74 * ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(l_549.yxxywzxx)).s07 | ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))(l_552.s4076)).xyyzxwyyzyyxyxwy + ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(l_555.s32)).yxxxxxyxyyxxyyyy + ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))(l_558.yyxx)).wxxzywwzzywwzwxw + ((VECTOR(uint64_t, 4))(p_940->g_559.yxyy)).xxwxwxyyzyxxxzzz)))))).sc11f | ((VECTOR(uint64_t, 16))(l_560.yzyyzyyxyyzyxwwz)).sb5a3))).wzyyxzzyywwxxzzy))).sf1))).xxyxyyxxxxxyyxyy + ((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 8))(l_561.yxyxxxxx)).lo, ((VECTOR(uint64_t, 16))(0x08BA016BB2778BF2L, 0xF022F934E81C3F5AL, (**l_461), ((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(p_940->g_564.saf)).xyxyyxxx * ((VECTOR(uint64_t, 16))(l_565.xwyzzzzzyyyzxzyw)).lo))).s36, ((VECTOR(uint64_t, 16))(18446744073709551615UL, ((p_940->g_566 = p_940->g_566) != (((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 2))(p_940->g_569.s2b)).yyyxxxxxxxyyxyyy, ((VECTOR(int32_t, 2))(0L, 2L)).xyxxxyyyyxyyyyyy))), ((VECTOR(int32_t, 8))(l_570.wwzzxwwy)).s0634634751671672))).s2f8f & ((VECTOR(int32_t, 8))(l_571.ywxxxzzx)).hi))).wxzxyxwwyzzxxxyz, ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(p_940->g_572.sa96b)), ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))((((((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(uint64_t, 16))(abs_diff(((VECTOR(uint64_t, 2))(p_940->g_573.s51)).yxxyyyyyyxxyyyxx, ((VECTOR(uint64_t, 2))(5UL, 0xC9B06F934027FAC0L)).xxxyyxxyxxyxyyyx))).s3cd0, ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 16))(l_576.yyyxyxyxyyxyxxyy)).lo - ((VECTOR(uint64_t, 8))(p_940->g_577.zwxwyxyw))))).hi))).w , GROUP_DIVERGE(0, 1)) , l_578) == p_49), 0x4717FA7BL, (-6L), ((VECTOR(int32_t, 2))(0x566E26A1L)), p_940->g_259.se, p_940->g_392.y, 0x34CFDC3CL, 0x41B8A281L, ((VECTOR(int32_t, 2))(0x33078131L)), ((VECTOR(int32_t, 2))(0x5DAB0DD7L)), p_48, 0x0640BC58L, 1L)).s7107 & ((VECTOR(int32_t, 4))(3L))))), ((VECTOR(int32_t, 4))(0x15DE57CDL))))).wywxyzwwyyzwxywz, ((VECTOR(int32_t, 16))(5L))))), (int32_t)p_48))).lo, ((VECTOR(uint32_t, 8))(4294967293UL))))), p_48, 0x7827A2DCC9DCD751L, (**p_940->g_308), ((VECTOR(int64_t, 4))(0x4C7B61CBC43CEA15L)), 1L)).s161b ^ ((VECTOR(int64_t, 4))((-1L)))))).y , (void*)0)), ((VECTOR(uint64_t, 4))(0xF26D0F5D205BF10EL)), 0x67CD13A49A454799L, 0x61525CF23553FD18L, 1UL, ((VECTOR(uint64_t, 2))(0x6B9ACFE553277423L)), 18446744073709551615UL, 0xCFE8DD2AEACD5B14L, p_48, 8UL, 0UL)).sb1))), 0xDBEFEECD8D16565DL, GROUP_DIVERGE(1, 1), GROUP_DIVERGE(0, 1), ((VECTOR(uint64_t, 8))(0UL)))).sa2b8, ((VECTOR(uint64_t, 4))(18446744073709551615UL))))).wxywxwwwyxxzwyxw))).hi + ((VECTOR(uint64_t, 8))(0xA0FDC9EE4899CB12L))))).s03))), 0UL, ((VECTOR(uint64_t, 4))(0x717717CD6EA679D4L)), ((VECTOR(uint64_t, 2))(0x1BBC209A88A25F04L)), 0x575AFB0A8E5D2A18L, 0UL, p_48, 0x8FCF7C13F4030C1EL, ((VECTOR(uint64_t, 2))(0UL)), 1UL)).sb || (**p_940->g_308))), (*p_49))) <= p_48), (*p_940->g_34))), 18446744073709551615UL, 7UL, ((VECTOR(uint64_t, 4))(0x3F17FDC76A194E26L)), p_940->g_249[0], 18446744073709551614UL, 0x334C03F42430F28FL, ((VECTOR(uint64_t, 4))(18446744073709551613UL)), 18446744073709551615UL)).s30, ((VECTOR(uint64_t, 2))(0x5BCB362264D45092L))))).xyxxyxxyxxxxyxxx - ((VECTOR(uint64_t, 16))(18446744073709551606UL))))).s3) , 65528UL) , p_48))))) != p_48) ^ FAKE_DIVERGE(p_940->group_0_offset, get_group_id(0), 10)), p_48)))) >= (-1L)) > p_940->g_309.s4)), 0x11L)) , (*p_49));
        (*p_940->g_34) = (*p_940->g_34);
        (*p_940->g_34) |= 0x3462E357L;
        if ((((p_48 < ((p_48 , (void*)0) == (p_940->g_581 = &l_481))) ^ (*p_47)) != p_940->g_564.s2))
        { /* block id: 215 */
            return (**p_940->g_566);
        }
        else
        { /* block id: 217 */
            int8_t l_583 = (-10L);
            int32_t l_584 = (-2L);
            int32_t l_585 = (-6L);
            int32_t l_586 = 0x4BB966C0L;
            uint16_t *l_590 = &p_940->g_310;
            l_587--;
            (*l_461) = p_49;
            (*l_578) ^= (((*l_590)--) < ((VECTOR(int16_t, 2))(0L, (-3L))).hi);
            (*l_578) |= (*p_49);
        }
    }
    return p_47;
}


/* ------------------------------------------ */
/* 
 * reads : p_940->g_7
 * writes: p_940->g_34
 */
int64_t * func_50(int16_t  p_51, uint32_t  p_52, uint32_t  p_53, int32_t  p_54, int32_t * p_55, struct S0 * p_940)
{ /* block id: 132 */
    uint16_t l_360 = 0UL;
    int32_t **l_361 = (void*)0;
    int32_t **l_362 = &p_940->g_34;
    int32_t **l_363 = (void*)0;
    int32_t *l_365 = &p_940->g_7;
    int32_t **l_364 = &l_365;
    int64_t *l_366 = (void*)0;
    for (p_53 = 0; (p_53 <= 45); p_53 = safe_add_func_int8_t_s_s(p_53, 1))
    { /* block id: 135 */
        if ((*p_55))
            break;
        if ((*p_55))
            continue;
        l_360 |= 5L;
    }
    (*l_364) = ((*l_362) = &p_940->g_3);
    return l_366;
}


/* ------------------------------------------ */
/* 
 * reads : p_940->g_34 p_940->g_7
 * writes:
 */
int32_t  func_58(int64_t * p_59, uint16_t  p_60, struct S0 * p_940)
{ /* block id: 128 */
    return (*p_940->g_34);
}


/* ------------------------------------------ */
/* 
 * reads : p_940->g_196 p_940->g_146 p_940->g_291 p_940->g_103
 * writes: p_940->g_196 p_940->g_146 p_940->g_291 p_940->g_103
 */
int64_t * func_61(uint16_t  p_62, struct S0 * p_940)
{ /* block id: 54 */
    uint64_t *l_202 = &p_940->g_174;
    uint64_t **l_201 = &l_202;
    int32_t l_208 = 0L;
    VECTOR(uint8_t, 16) l_224 = (VECTOR(uint8_t, 16))(248UL, (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 0x65L), 0x65L), 0x65L, 248UL, 0x65L, (VECTOR(uint8_t, 2))(248UL, 0x65L), (VECTOR(uint8_t, 2))(248UL, 0x65L), 248UL, 0x65L, 248UL, 0x65L);
    VECTOR(uint8_t, 8) l_229 = (VECTOR(uint8_t, 8))(0xE7L, (VECTOR(uint8_t, 4))(0xE7L, (VECTOR(uint8_t, 2))(0xE7L, 0x1CL), 0x1CL), 0x1CL, 0xE7L, 0x1CL);
    VECTOR(int8_t, 8) l_241 = (VECTOR(int8_t, 8))(0x20L, (VECTOR(int8_t, 4))(0x20L, (VECTOR(int8_t, 2))(0x20L, 2L), 2L), 2L, 0x20L, 2L);
    int32_t *l_286 = &l_208;
    int32_t *l_287[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int64_t **l_306 = &p_940->g_92[1];
    VECTOR(int64_t, 8) l_336 = (VECTOR(int64_t, 8))((-10L), (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 0x69E7B2FF7D35495EL), 0x69E7B2FF7D35495EL), 0x69E7B2FF7D35495EL, (-10L), 0x69E7B2FF7D35495EL);
    int16_t l_352 = 0x2F10L;
    int64_t *l_355 = &p_940->g_290;
    int i;
    for (p_62 = 0; (p_62 > 26); p_62++)
    { /* block id: 57 */
        int32_t *l_185 = &p_940->g_7;
        int32_t *l_186 = &p_940->g_7;
        int32_t *l_187 = &p_940->g_7;
        int32_t *l_188 = &p_940->g_7;
        int32_t *l_189 = (void*)0;
        int32_t *l_190 = &p_940->g_35;
        int32_t *l_191 = &p_940->g_7;
        int32_t *l_192 = &p_940->g_35;
        int32_t *l_193 = (void*)0;
        int32_t *l_194 = &p_940->g_7;
        int32_t *l_195[5][10] = {{(void*)0,&p_940->g_7,&p_940->g_7,(void*)0,&p_940->g_35,(void*)0,&p_940->g_35,(void*)0,&p_940->g_7,&p_940->g_7},{(void*)0,&p_940->g_7,&p_940->g_7,(void*)0,&p_940->g_35,(void*)0,&p_940->g_35,(void*)0,&p_940->g_7,&p_940->g_7},{(void*)0,&p_940->g_7,&p_940->g_7,(void*)0,&p_940->g_35,(void*)0,&p_940->g_35,(void*)0,&p_940->g_7,&p_940->g_7},{(void*)0,&p_940->g_7,&p_940->g_7,(void*)0,&p_940->g_35,(void*)0,&p_940->g_35,(void*)0,&p_940->g_7,&p_940->g_7},{(void*)0,&p_940->g_7,&p_940->g_7,(void*)0,&p_940->g_35,(void*)0,&p_940->g_35,(void*)0,&p_940->g_7,&p_940->g_7}};
        uint64_t **l_203 = &l_202;
        uint64_t **l_204 = &l_202;
        VECTOR(uint8_t, 8) l_216 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x56L), 0x56L), 0x56L, 0UL, 0x56L);
        VECTOR(uint8_t, 8) l_223 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x56L), 0x56L), 0x56L, 1UL, 0x56L);
        VECTOR(int8_t, 2) l_238 = (VECTOR(int8_t, 2))(0x1EL, 0x07L);
        VECTOR(int8_t, 8) l_242 = (VECTOR(int8_t, 8))(0x00L, (VECTOR(int8_t, 4))(0x00L, (VECTOR(int8_t, 2))(0x00L, 0x29L), 0x29L), 0x29L, 0x00L, 0x29L);
        VECTOR(int8_t, 16) l_243 = (VECTOR(int8_t, 16))(0x43L, (VECTOR(int8_t, 4))(0x43L, (VECTOR(int8_t, 2))(0x43L, 1L), 1L), 1L, 0x43L, 1L, (VECTOR(int8_t, 2))(0x43L, 1L), (VECTOR(int8_t, 2))(0x43L, 1L), 0x43L, 1L, 0x43L, 1L);
        VECTOR(uint32_t, 8) l_261 = (VECTOR(uint32_t, 8))(4294967293UL, (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 1UL), 1UL), 1UL, 4294967293UL, 1UL);
        int i, j;
        p_940->g_196++;
        for (p_940->g_146 = (-11); (p_940->g_146 <= 36); ++p_940->g_146)
        { /* block id: 61 */
            uint64_t ***l_205 = &l_204;
            int64_t *l_206[8][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            VECTOR(uint8_t, 4) l_221 = (VECTOR(uint8_t, 4))(0xA1L, (VECTOR(uint8_t, 2))(0xA1L, 1UL), 1UL);
            VECTOR(uint8_t, 4) l_230 = (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 255UL), 255UL);
            VECTOR(int8_t, 4) l_237 = (VECTOR(int8_t, 4))(0x20L, (VECTOR(int8_t, 2))(0x20L, 0x3FL), 0x3FL);
            VECTOR(int8_t, 2) l_239 = (VECTOR(int8_t, 2))(0x54L, 0x79L);
            VECTOR(int8_t, 16) l_250 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int8_t, 2))(0L, 1L), (VECTOR(int8_t, 2))(0L, 1L), 0L, 1L, 0L, 1L);
            uint32_t *l_271[10][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
            uint8_t *l_272 = (void*)0;
            uint8_t *l_273[10] = {&p_940->g_180,&p_940->g_180,(void*)0,&p_940->g_180,&p_940->g_180,&p_940->g_180,&p_940->g_180,(void*)0,&p_940->g_180,&p_940->g_180};
            int32_t **l_285 = &l_195[4][0];
            int i, j;
            (1 + 1);
        }
    }
    p_940->g_291++;
    for (p_940->g_291 = 0; (p_940->g_291 >= 53); p_940->g_291++)
    { /* block id: 92 */
        return &p_940->g_290;
    }
    for (p_940->g_103 = 28; (p_940->g_103 != 34); p_940->g_103 = safe_add_func_uint16_t_u_u(p_940->g_103, 6))
    { /* block id: 97 */
        uint16_t l_302[8][8] = {{65535UL,0x36CDL,0x6BEDL,0x36CDL,65535UL,65535UL,0x36CDL,0x6BEDL},{65535UL,0x36CDL,0x6BEDL,0x36CDL,65535UL,65535UL,0x36CDL,0x6BEDL},{65535UL,0x36CDL,0x6BEDL,0x36CDL,65535UL,65535UL,0x36CDL,0x6BEDL},{65535UL,0x36CDL,0x6BEDL,0x36CDL,65535UL,65535UL,0x36CDL,0x6BEDL},{65535UL,0x36CDL,0x6BEDL,0x36CDL,65535UL,65535UL,0x36CDL,0x6BEDL},{65535UL,0x36CDL,0x6BEDL,0x36CDL,65535UL,65535UL,0x36CDL,0x6BEDL},{65535UL,0x36CDL,0x6BEDL,0x36CDL,65535UL,65535UL,0x36CDL,0x6BEDL},{65535UL,0x36CDL,0x6BEDL,0x36CDL,65535UL,65535UL,0x36CDL,0x6BEDL}};
        VECTOR(int32_t, 8) l_322 = (VECTOR(int32_t, 8))(0x163F9E9DL, (VECTOR(int32_t, 4))(0x163F9E9DL, (VECTOR(int32_t, 2))(0x163F9E9DL, 1L), 1L), 1L, 0x163F9E9DL, 1L);
        uint64_t l_328 = 0xF85F5BBE6902670CL;
        int32_t *l_331 = &p_940->g_7;
        VECTOR(uint64_t, 8) l_341 = (VECTOR(uint64_t, 8))(0xEAB3F58FC13AE100L, (VECTOR(uint64_t, 4))(0xEAB3F58FC13AE100L, (VECTOR(uint64_t, 2))(0xEAB3F58FC13AE100L, 8UL), 8UL), 8UL, 0xEAB3F58FC13AE100L, 8UL);
        int16_t l_353 = 0x1B36L;
        int i, j;
        (1 + 1);
    }
    return l_355;
}


/* ------------------------------------------ */
/* 
 * reads : p_940->g_180 p_940->g_7
 * writes: p_940->g_180
 */
uint16_t  func_63(int32_t  p_64, int32_t  p_65, uint8_t  p_66, int64_t * p_67, struct S0 * p_940)
{ /* block id: 51 */
    int32_t *l_178 = (void*)0;
    int32_t *l_179[9] = {&p_940->g_7,&p_940->g_7,&p_940->g_7,&p_940->g_7,&p_940->g_7,&p_940->g_7,&p_940->g_7,&p_940->g_7,&p_940->g_7};
    int i;
    p_940->g_180--;
    return p_940->g_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_940->g_174 p_940->g_25
 * writes: p_940->g_34 p_940->g_174 p_940->g_35
 */
uint64_t  func_70(int64_t  p_71, uint32_t  p_72, uint8_t  p_73, struct S0 * p_940)
{ /* block id: 41 */
    int32_t **l_171[1];
    VECTOR(int64_t, 16) l_177 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
    int i;
    for (i = 0; i < 1; i++)
        l_171[i] = (void*)0;
    p_940->g_34 = (void*)0;
    p_940->g_34 = &p_940->g_7;
    if (p_73)
    { /* block id: 44 */
        int64_t l_172 = 0x4150E4BAD84171F4L;
        int32_t l_173 = 0x00C29DF7L;
        --p_940->g_174;
        p_940->g_35 = (((VECTOR(int64_t, 2))(l_177.s5f)).odd == 0x6EBC83D4632091C4L);
    }
    else
    { /* block id: 47 */
        return p_72;
    }
    return p_940->g_25[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_940->g_103 p_940->g_7 p_940->g_3 p_940->g_25 p_940->g_93 p_940->g_35 p_940->g_161 p_940->g_146
 * writes: p_940->g_103 p_940->g_146 p_940->g_34 p_940->g_170
 */
uint32_t  func_87(int64_t * p_88, uint64_t  p_89, int32_t  p_90, int8_t  p_91, struct S0 * p_940)
{ /* block id: 16 */
    int16_t l_94 = (-6L);
    int32_t l_95 = 0x62E52AB2L;
    int32_t *l_96 = &l_95;
    int32_t *l_97 = &l_95;
    int32_t *l_98 = &l_95;
    int32_t *l_99 = &p_940->g_35;
    int32_t *l_100 = &p_940->g_35;
    int32_t *l_101 = (void*)0;
    int32_t *l_102[1];
    int64_t *l_112 = &p_940->g_93;
    VECTOR(uint16_t, 8) l_129 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x04E4L), 0x04E4L), 0x04E4L, 1UL, 0x04E4L);
    VECTOR(int32_t, 8) l_134 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x2377049BL), 0x2377049BL), 0x2377049BL, 1L, 0x2377049BL);
    VECTOR(uint16_t, 16) l_143 = (VECTOR(uint16_t, 16))(0x59BBL, (VECTOR(uint16_t, 4))(0x59BBL, (VECTOR(uint16_t, 2))(0x59BBL, 65535UL), 65535UL), 65535UL, 0x59BBL, 65535UL, (VECTOR(uint16_t, 2))(0x59BBL, 65535UL), (VECTOR(uint16_t, 2))(0x59BBL, 65535UL), 0x59BBL, 65535UL, 0x59BBL, 65535UL);
    int16_t *l_144 = &l_94;
    uint64_t *l_145[9];
    uint64_t l_147 = 0UL;
    int32_t l_148 = 3L;
    int32_t l_167 = (-2L);
    uint64_t **l_168 = &l_145[6];
    uint64_t ***l_169 = (void*)0;
    int i;
    for (i = 0; i < 1; i++)
        l_102[i] = (void*)0;
    for (i = 0; i < 9; i++)
        l_145[i] = &p_940->g_146;
    p_940->g_103++;
    l_167 |= ((*l_96) = ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 4))((-8L), ((VECTOR(int32_t, 2))((-1L), (-1L))), 0x12AC6B8AL)).even, ((VECTOR(int32_t, 16))(func_106(l_112, p_88, &l_95, ((safe_rshift_func_uint16_t_u_s(((!(safe_rshift_func_uint16_t_u_s((((safe_mul_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(p_940->g_7, 6)), p_940->g_103)) || ((safe_mul_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((safe_div_func_uint64_t_u_u((p_90 || ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(l_129.s52)).yyyyyxyy + ((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 16))((+((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))((safe_sub_func_int8_t_s_s((((p_940->g_146 = ((((p_940->g_3 && (l_134.s5 < (safe_mul_func_int8_t_s_s((safe_rshift_func_int8_t_s_s((safe_mul_func_int16_t_s_s(((*l_144) = (((safe_add_func_int8_t_s_s(((*l_98) = (((VECTOR(uint16_t, 2))(0xC35EL, 1UL)).odd != ((VECTOR(uint16_t, 4))(l_143.s9f9b)).w)), (p_89 < p_940->g_25[0]))) < (-5L)) < 0UL)), p_940->g_93)), 0)), p_940->g_25[0])))) > 0xCFE5L) | p_940->g_25[0]) && p_940->g_35)) <= (*p_88)) || (*l_97)), p_940->g_93)), l_147, 9UL, ((VECTOR(uint8_t, 2))(255UL)), ((VECTOR(uint8_t, 2))(1UL)), 0xB7L)).even + ((VECTOR(uint8_t, 4))(0x5FL))))).wwyywzzzxywzxwxx))).s54, ((VECTOR(uint8_t, 2))(248UL))))).xyxy))).yyxzxzxx))).s35 & ((VECTOR(uint16_t, 2))(65529UL))))), 0xE11DL, p_940->g_3, p_89, 0UL, 65527UL, 0x7340L)), ((VECTOR(uint16_t, 8))(0xD4C6L))))).odd, ((VECTOR(uint16_t, 4))(0xC230L)), ((VECTOR(uint16_t, 4))(0x9319L))))).even))).yyyy ^ ((VECTOR(uint16_t, 4))(0UL))))).x), l_148)), GROUP_DIVERGE(1, 1))), 0x5F73L)) < 0x7869F8A89CB40E94L)) | p_89), 5))) , FAKE_DIVERGE(p_940->global_0_offset, get_global_id(0), 10)), 14)) == p_89), p_89, p_940), (*l_98), 0x276CBE3BL, (-1L), ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 2))(0x7858FB2DL)), 0x26E48389L, ((VECTOR(int32_t, 2))((-1L))), 0L, ((VECTOR(int32_t, 4))(0x2A416096L)))).s33))).yyyy, ((VECTOR(int32_t, 4))(0x0286ECF4L))))).hi >= ((VECTOR(int32_t, 2))(0x74F1AD9DL))))).even);
    p_940->g_170 = (l_168 = &l_145[6]);
    return p_940->g_25[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_940->g_103 p_940->g_161 p_940->g_146
 * writes: p_940->g_34
 */
int32_t  func_106(int64_t * p_107, int64_t * p_108, int32_t * p_109, int32_t  p_110, int32_t  p_111, struct S0 * p_940)
{ /* block id: 21 */
    uint32_t l_156 = 0xBA79B219L;
    int32_t *l_159 = (void*)0;
    volatile int16_t **l_164 = &p_940->g_162[7];
    for (p_111 = (-29); (p_111 >= (-29)); p_111 = safe_add_func_uint16_t_u_u(p_111, 5))
    { /* block id: 24 */
        int64_t l_151 = 0x48C36732C95206BBL;
        VECTOR(int32_t, 16) l_152 = (VECTOR(int32_t, 16))(0x3433B3C1L, (VECTOR(int32_t, 4))(0x3433B3C1L, (VECTOR(int32_t, 2))(0x3433B3C1L, 0x3C4F9E1AL), 0x3C4F9E1AL), 0x3C4F9E1AL, 0x3433B3C1L, 0x3C4F9E1AL, (VECTOR(int32_t, 2))(0x3433B3C1L, 0x3C4F9E1AL), (VECTOR(int32_t, 2))(0x3433B3C1L, 0x3C4F9E1AL), 0x3433B3C1L, 0x3C4F9E1AL, 0x3433B3C1L, 0x3C4F9E1AL);
        int32_t *l_153 = (void*)0;
        int32_t *l_154 = &p_940->g_35;
        int32_t *l_155[2][7] = {{&p_940->g_35,&p_940->g_35,&p_940->g_35,&p_940->g_35,&p_940->g_35,&p_940->g_35,&p_940->g_35},{&p_940->g_35,&p_940->g_35,&p_940->g_35,&p_940->g_35,&p_940->g_35,&p_940->g_35,&p_940->g_35}};
        int i, j;
        ++l_156;
        if (p_940->g_103)
        { /* block id: 26 */
            int32_t **l_160[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i;
            (*p_109) = p_940->g_103;
            p_940->g_34 = l_159;
            l_164 = p_940->g_161;
            (*p_109) = (safe_div_func_uint64_t_u_u(0xE3A2289BD9ED4790L, p_940->g_146));
        }
        else
        { /* block id: 31 */
            return (*p_109);
        }
    }
    return l_156;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j;
    struct S0 c_941;
    struct S0* p_940 = &c_941;
    struct S0 c_942 = {
        0x06D44418L, // p_940->g_2
        0x7B1C2A2CL, // p_940->g_3
        0x25FA5FEFL, // p_940->g_7
        0UL, // p_940->g_17
        {0UL,0UL,0UL,0UL,0UL}, // p_940->g_25
        (-9L), // p_940->g_35
        &p_940->g_35, // p_940->g_34
        1UL, // p_940->g_36
        0x666C839C72380CEBL, // p_940->g_93
        {&p_940->g_93,&p_940->g_93,&p_940->g_93,&p_940->g_93}, // p_940->g_92
        0xE043BC77L, // p_940->g_103
        5UL, // p_940->g_146
        0x7C96L, // p_940->g_163
        {&p_940->g_163,&p_940->g_163,&p_940->g_163,&p_940->g_163,&p_940->g_163,&p_940->g_163,&p_940->g_163,&p_940->g_163,&p_940->g_163,&p_940->g_163}, // p_940->g_162
        &p_940->g_162[7], // p_940->g_161
        (void*)0, // p_940->g_170
        18446744073709551615UL, // p_940->g_174
        0xC2L, // p_940->g_180
        4294967295UL, // p_940->g_196
        {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)}, // p_940->g_207
        (VECTOR(uint8_t, 8))(7UL, (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 0x28L), 0x28L), 0x28L, 7UL, 0x28L), // p_940->g_215
        (VECTOR(uint8_t, 2))(0xFBL, 0UL), // p_940->g_222
        (VECTOR(int8_t, 8))(0x2BL, (VECTOR(int8_t, 4))(0x2BL, (VECTOR(int8_t, 2))(0x2BL, 1L), 1L), 1L, 0x2BL, 1L), // p_940->g_240
        (VECTOR(int8_t, 2))(5L, 8L), // p_940->g_244
        {0xE53F050AL,0xE53F050AL,0xE53F050AL}, // p_940->g_249
        (VECTOR(int8_t, 16))(0x35L, (VECTOR(int8_t, 4))(0x35L, (VECTOR(int8_t, 2))(0x35L, (-6L)), (-6L)), (-6L), 0x35L, (-6L), (VECTOR(int8_t, 2))(0x35L, (-6L)), (VECTOR(int8_t, 2))(0x35L, (-6L)), 0x35L, (-6L), 0x35L, (-6L)), // p_940->g_253
        (VECTOR(uint32_t, 2))(4294967289UL, 0xBE9AF0AFL), // p_940->g_256
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 5UL), 5UL), 5UL, 4294967295UL, 5UL, (VECTOR(uint32_t, 2))(4294967295UL, 5UL), (VECTOR(uint32_t, 2))(4294967295UL, 5UL), 4294967295UL, 5UL, 4294967295UL, 5UL), // p_940->g_259
        (VECTOR(uint32_t, 16))(0x5034D1DAL, (VECTOR(uint32_t, 4))(0x5034D1DAL, (VECTOR(uint32_t, 2))(0x5034D1DAL, 4294967295UL), 4294967295UL), 4294967295UL, 0x5034D1DAL, 4294967295UL, (VECTOR(uint32_t, 2))(0x5034D1DAL, 4294967295UL), (VECTOR(uint32_t, 2))(0x5034D1DAL, 4294967295UL), 0x5034D1DAL, 4294967295UL, 0x5034D1DAL, 4294967295UL), // p_940->g_260
        (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 9UL), 9UL), // p_940->g_264
        0x1DL, // p_940->g_288
        8L, // p_940->g_289
        1L, // p_940->g_290
        1UL, // p_940->g_291
        &p_940->g_92[2], // p_940->g_308
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x556DL), 0x556DL), 0x556DL, 0L, 0x556DL), // p_940->g_309
        65532UL, // p_940->g_310
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int16_t, 2))(0L, (-1L)), (VECTOR(int16_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L)), // p_940->g_391
        (VECTOR(int16_t, 2))(1L, 0x45B6L), // p_940->g_392
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_940->g_409
        (VECTOR(int8_t, 16))((-7L), (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 0x2FL), 0x2FL), 0x2FL, (-7L), 0x2FL, (VECTOR(int8_t, 2))((-7L), 0x2FL), (VECTOR(int8_t, 2))((-7L), 0x2FL), (-7L), 0x2FL, (-7L), 0x2FL), // p_940->g_452
        7UL, // p_940->g_454
        18446744073709551608UL, // p_940->g_457
        (VECTOR(int8_t, 2))(0x1BL, 0L), // p_940->g_479
        (VECTOR(int8_t, 4))(0x4BL, (VECTOR(int8_t, 2))(0x4BL, 0x39L), 0x39L), // p_940->g_517
        (VECTOR(uint64_t, 4))(0xEB7232DB23941A26L, (VECTOR(uint64_t, 2))(0xEB7232DB23941A26L, 0x5764D0BADD7EC4F3L), 0x5764D0BADD7EC4F3L), // p_940->g_536
        (VECTOR(uint64_t, 8))(5UL, (VECTOR(uint64_t, 4))(5UL, (VECTOR(uint64_t, 2))(5UL, 18446744073709551612UL), 18446744073709551612UL), 18446744073709551612UL, 5UL, 18446744073709551612UL), // p_940->g_544
        (VECTOR(uint64_t, 2))(0x555864DD3C761AB9L, 0UL), // p_940->g_559
        (VECTOR(uint64_t, 16))(0x74A1E5535A507376L, (VECTOR(uint64_t, 4))(0x74A1E5535A507376L, (VECTOR(uint64_t, 2))(0x74A1E5535A507376L, 0xBDE705CEEBB0FB55L), 0xBDE705CEEBB0FB55L), 0xBDE705CEEBB0FB55L, 0x74A1E5535A507376L, 0xBDE705CEEBB0FB55L, (VECTOR(uint64_t, 2))(0x74A1E5535A507376L, 0xBDE705CEEBB0FB55L), (VECTOR(uint64_t, 2))(0x74A1E5535A507376L, 0xBDE705CEEBB0FB55L), 0x74A1E5535A507376L, 0xBDE705CEEBB0FB55L, 0x74A1E5535A507376L, 0xBDE705CEEBB0FB55L), // p_940->g_564
        &p_940->g_34, // p_940->g_567
        &p_940->g_567, // p_940->g_566
        (VECTOR(int32_t, 16))(0x7478EDE1L, (VECTOR(int32_t, 4))(0x7478EDE1L, (VECTOR(int32_t, 2))(0x7478EDE1L, 4L), 4L), 4L, 0x7478EDE1L, 4L, (VECTOR(int32_t, 2))(0x7478EDE1L, 4L), (VECTOR(int32_t, 2))(0x7478EDE1L, 4L), 0x7478EDE1L, 4L, 0x7478EDE1L, 4L), // p_940->g_569
        (VECTOR(int32_t, 16))(3L, (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 1L), 1L), 1L, 3L, 1L, (VECTOR(int32_t, 2))(3L, 1L), (VECTOR(int32_t, 2))(3L, 1L), 3L, 1L, 3L, 1L), // p_940->g_572
        (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 5UL), 5UL), 5UL, 1UL, 5UL), // p_940->g_573
        (VECTOR(uint64_t, 4))(0x0BFB858C7D1F4710L, (VECTOR(uint64_t, 2))(0x0BFB858C7D1F4710L, 0UL), 0UL), // p_940->g_577
        &p_940->g_308, // p_940->g_582
        &p_940->g_582, // p_940->g_581
        0x3086E3F7L, // p_940->g_597
        0x56A146C0289DB930L, // p_940->g_601
        (VECTOR(int32_t, 2))(0L, 0x53286E3FL), // p_940->g_604
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xAD87L), 0xAD87L), // p_940->g_611
        (VECTOR(uint16_t, 8))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 65526UL), 65526UL), 65526UL, 9UL, 65526UL), // p_940->g_621
        &p_940->g_7, // p_940->g_649
        (VECTOR(uint64_t, 8))(0x5D89F1A2149D449BL, (VECTOR(uint64_t, 4))(0x5D89F1A2149D449BL, (VECTOR(uint64_t, 2))(0x5D89F1A2149D449BL, 0xF30989C779059D3BL), 0xF30989C779059D3BL), 0xF30989C779059D3BL, 0x5D89F1A2149D449BL, 0xF30989C779059D3BL), // p_940->g_669
        7UL, // p_940->g_698
        (VECTOR(uint32_t, 2))(1UL, 0UL), // p_940->g_714
        (VECTOR(uint32_t, 16))(0xDB550C7CL, (VECTOR(uint32_t, 4))(0xDB550C7CL, (VECTOR(uint32_t, 2))(0xDB550C7CL, 0xA4769B88L), 0xA4769B88L), 0xA4769B88L, 0xDB550C7CL, 0xA4769B88L, (VECTOR(uint32_t, 2))(0xDB550C7CL, 0xA4769B88L), (VECTOR(uint32_t, 2))(0xDB550C7CL, 0xA4769B88L), 0xDB550C7CL, 0xA4769B88L, 0xDB550C7CL, 0xA4769B88L), // p_940->g_720
        (VECTOR(uint32_t, 2))(0x0A0FF9C0L, 4294967290UL), // p_940->g_726
        (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x032F87B2L), 0x032F87B2L), 0x032F87B2L, 1UL, 0x032F87B2L, (VECTOR(uint32_t, 2))(1UL, 0x032F87B2L), (VECTOR(uint32_t, 2))(1UL, 0x032F87B2L), 1UL, 0x032F87B2L, 1UL, 0x032F87B2L), // p_940->g_727
        (VECTOR(uint32_t, 8))(2UL, (VECTOR(uint32_t, 4))(2UL, (VECTOR(uint32_t, 2))(2UL, 0xC74967A7L), 0xC74967A7L), 0xC74967A7L, 2UL, 0xC74967A7L), // p_940->g_728
        (VECTOR(uint16_t, 16))(0x668FL, (VECTOR(uint16_t, 4))(0x668FL, (VECTOR(uint16_t, 2))(0x668FL, 0xEAE0L), 0xEAE0L), 0xEAE0L, 0x668FL, 0xEAE0L, (VECTOR(uint16_t, 2))(0x668FL, 0xEAE0L), (VECTOR(uint16_t, 2))(0x668FL, 0xEAE0L), 0x668FL, 0xEAE0L, 0x668FL, 0xEAE0L), // p_940->g_732
        (VECTOR(int32_t, 2))(0x46207F2BL, 0L), // p_940->g_761
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x0D6E574FL), 0x0D6E574FL), // p_940->g_762
        (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xED47L), 0xED47L), 0xED47L, 1UL, 0xED47L, (VECTOR(uint16_t, 2))(1UL, 0xED47L), (VECTOR(uint16_t, 2))(1UL, 0xED47L), 1UL, 0xED47L, 1UL, 0xED47L), // p_940->g_772
        (VECTOR(uint8_t, 8))(2UL, (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 6UL), 6UL), 6UL, 2UL, 6UL), // p_940->g_773
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x09L), 0x09L), 0x09L, 1L, 0x09L, (VECTOR(int8_t, 2))(1L, 0x09L), (VECTOR(int8_t, 2))(1L, 0x09L), 1L, 0x09L, 1L, 0x09L), // p_940->g_792
        (VECTOR(int8_t, 16))(8L, (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 0L), 0L), 0L, 8L, 0L, (VECTOR(int8_t, 2))(8L, 0L), (VECTOR(int8_t, 2))(8L, 0L), 8L, 0L, 8L, 0L), // p_940->g_793
        (VECTOR(int16_t, 4))(0x4A8AL, (VECTOR(int16_t, 2))(0x4A8AL, 0x40ECL), 0x40ECL), // p_940->g_828
        (VECTOR(int16_t, 8))(7L, (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x0770L), 0x0770L), 0x0770L, 7L, 0x0770L), // p_940->g_862
        (VECTOR(int8_t, 2))(1L, 1L), // p_940->g_863
        (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x7DL), 0x7DL), 0x7DL, (-1L), 0x7DL), // p_940->g_864
        (VECTOR(int8_t, 4))(0x6EL, (VECTOR(int8_t, 2))(0x6EL, 0x69L), 0x69L), // p_940->g_865
        (VECTOR(int8_t, 16))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), (-10L)), (-10L)), (-10L), (-4L), (-10L), (VECTOR(int8_t, 2))((-4L), (-10L)), (VECTOR(int8_t, 2))((-4L), (-10L)), (-4L), (-10L), (-4L), (-10L)), // p_940->g_868
        (VECTOR(int8_t, 16))(0x28L, (VECTOR(int8_t, 4))(0x28L, (VECTOR(int8_t, 2))(0x28L, 0x2BL), 0x2BL), 0x2BL, 0x28L, 0x2BL, (VECTOR(int8_t, 2))(0x28L, 0x2BL), (VECTOR(int8_t, 2))(0x28L, 0x2BL), 0x28L, 0x2BL, 0x28L, 0x2BL), // p_940->g_871
        0x148480FEL, // p_940->g_874
        (VECTOR(int8_t, 16))(8L, (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 0x10L), 0x10L), 0x10L, 8L, 0x10L, (VECTOR(int8_t, 2))(8L, 0x10L), (VECTOR(int8_t, 2))(8L, 0x10L), 8L, 0x10L, 8L, 0x10L), // p_940->g_875
        (VECTOR(int8_t, 8))(0x02L, (VECTOR(int8_t, 4))(0x02L, (VECTOR(int8_t, 2))(0x02L, (-1L)), (-1L)), (-1L), 0x02L, (-1L)), // p_940->g_876
        (VECTOR(uint8_t, 2))(0xF4L, 254UL), // p_940->g_884
        (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 0xD6L), 0xD6L), // p_940->g_885
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL), 255UL, 255UL, 255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL, 255UL, 255UL, 255UL), // p_940->g_928
        (VECTOR(uint8_t, 16))(0x35L, (VECTOR(uint8_t, 4))(0x35L, (VECTOR(uint8_t, 2))(0x35L, 5UL), 5UL), 5UL, 0x35L, 5UL, (VECTOR(uint8_t, 2))(0x35L, 5UL), (VECTOR(uint8_t, 2))(0x35L, 5UL), 0x35L, 5UL, 0x35L, 5UL), // p_940->g_929
        (void*)0, // p_940->g_931
        sequence_input[get_global_id(0)], // p_940->global_0_offset
        sequence_input[get_global_id(1)], // p_940->global_1_offset
        sequence_input[get_global_id(2)], // p_940->global_2_offset
        sequence_input[get_local_id(0)], // p_940->local_0_offset
        sequence_input[get_local_id(1)], // p_940->local_1_offset
        sequence_input[get_local_id(2)], // p_940->local_2_offset
        sequence_input[get_group_id(0)], // p_940->group_0_offset
        sequence_input[get_group_id(1)], // p_940->group_1_offset
        sequence_input[get_group_id(2)], // p_940->group_2_offset
    };
    c_941 = c_942;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_940);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_940->g_2, "p_940->g_2", print_hash_value);
    transparent_crc(p_940->g_3, "p_940->g_3", print_hash_value);
    transparent_crc(p_940->g_7, "p_940->g_7", print_hash_value);
    transparent_crc(p_940->g_17, "p_940->g_17", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_940->g_25[i], "p_940->g_25[i]", print_hash_value);

    }
    transparent_crc(p_940->g_35, "p_940->g_35", print_hash_value);
    transparent_crc(p_940->g_36, "p_940->g_36", print_hash_value);
    transparent_crc(p_940->g_93, "p_940->g_93", print_hash_value);
    transparent_crc(p_940->g_103, "p_940->g_103", print_hash_value);
    transparent_crc(p_940->g_146, "p_940->g_146", print_hash_value);
    transparent_crc(p_940->g_163, "p_940->g_163", print_hash_value);
    transparent_crc(p_940->g_174, "p_940->g_174", print_hash_value);
    transparent_crc(p_940->g_180, "p_940->g_180", print_hash_value);
    transparent_crc(p_940->g_196, "p_940->g_196", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_940->g_207[i], "p_940->g_207[i]", print_hash_value);

    }
    transparent_crc(p_940->g_215.s0, "p_940->g_215.s0", print_hash_value);
    transparent_crc(p_940->g_215.s1, "p_940->g_215.s1", print_hash_value);
    transparent_crc(p_940->g_215.s2, "p_940->g_215.s2", print_hash_value);
    transparent_crc(p_940->g_215.s3, "p_940->g_215.s3", print_hash_value);
    transparent_crc(p_940->g_215.s4, "p_940->g_215.s4", print_hash_value);
    transparent_crc(p_940->g_215.s5, "p_940->g_215.s5", print_hash_value);
    transparent_crc(p_940->g_215.s6, "p_940->g_215.s6", print_hash_value);
    transparent_crc(p_940->g_215.s7, "p_940->g_215.s7", print_hash_value);
    transparent_crc(p_940->g_222.x, "p_940->g_222.x", print_hash_value);
    transparent_crc(p_940->g_222.y, "p_940->g_222.y", print_hash_value);
    transparent_crc(p_940->g_240.s0, "p_940->g_240.s0", print_hash_value);
    transparent_crc(p_940->g_240.s1, "p_940->g_240.s1", print_hash_value);
    transparent_crc(p_940->g_240.s2, "p_940->g_240.s2", print_hash_value);
    transparent_crc(p_940->g_240.s3, "p_940->g_240.s3", print_hash_value);
    transparent_crc(p_940->g_240.s4, "p_940->g_240.s4", print_hash_value);
    transparent_crc(p_940->g_240.s5, "p_940->g_240.s5", print_hash_value);
    transparent_crc(p_940->g_240.s6, "p_940->g_240.s6", print_hash_value);
    transparent_crc(p_940->g_240.s7, "p_940->g_240.s7", print_hash_value);
    transparent_crc(p_940->g_244.x, "p_940->g_244.x", print_hash_value);
    transparent_crc(p_940->g_244.y, "p_940->g_244.y", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_940->g_249[i], "p_940->g_249[i]", print_hash_value);

    }
    transparent_crc(p_940->g_253.s0, "p_940->g_253.s0", print_hash_value);
    transparent_crc(p_940->g_253.s1, "p_940->g_253.s1", print_hash_value);
    transparent_crc(p_940->g_253.s2, "p_940->g_253.s2", print_hash_value);
    transparent_crc(p_940->g_253.s3, "p_940->g_253.s3", print_hash_value);
    transparent_crc(p_940->g_253.s4, "p_940->g_253.s4", print_hash_value);
    transparent_crc(p_940->g_253.s5, "p_940->g_253.s5", print_hash_value);
    transparent_crc(p_940->g_253.s6, "p_940->g_253.s6", print_hash_value);
    transparent_crc(p_940->g_253.s7, "p_940->g_253.s7", print_hash_value);
    transparent_crc(p_940->g_253.s8, "p_940->g_253.s8", print_hash_value);
    transparent_crc(p_940->g_253.s9, "p_940->g_253.s9", print_hash_value);
    transparent_crc(p_940->g_253.sa, "p_940->g_253.sa", print_hash_value);
    transparent_crc(p_940->g_253.sb, "p_940->g_253.sb", print_hash_value);
    transparent_crc(p_940->g_253.sc, "p_940->g_253.sc", print_hash_value);
    transparent_crc(p_940->g_253.sd, "p_940->g_253.sd", print_hash_value);
    transparent_crc(p_940->g_253.se, "p_940->g_253.se", print_hash_value);
    transparent_crc(p_940->g_253.sf, "p_940->g_253.sf", print_hash_value);
    transparent_crc(p_940->g_256.x, "p_940->g_256.x", print_hash_value);
    transparent_crc(p_940->g_256.y, "p_940->g_256.y", print_hash_value);
    transparent_crc(p_940->g_259.s0, "p_940->g_259.s0", print_hash_value);
    transparent_crc(p_940->g_259.s1, "p_940->g_259.s1", print_hash_value);
    transparent_crc(p_940->g_259.s2, "p_940->g_259.s2", print_hash_value);
    transparent_crc(p_940->g_259.s3, "p_940->g_259.s3", print_hash_value);
    transparent_crc(p_940->g_259.s4, "p_940->g_259.s4", print_hash_value);
    transparent_crc(p_940->g_259.s5, "p_940->g_259.s5", print_hash_value);
    transparent_crc(p_940->g_259.s6, "p_940->g_259.s6", print_hash_value);
    transparent_crc(p_940->g_259.s7, "p_940->g_259.s7", print_hash_value);
    transparent_crc(p_940->g_259.s8, "p_940->g_259.s8", print_hash_value);
    transparent_crc(p_940->g_259.s9, "p_940->g_259.s9", print_hash_value);
    transparent_crc(p_940->g_259.sa, "p_940->g_259.sa", print_hash_value);
    transparent_crc(p_940->g_259.sb, "p_940->g_259.sb", print_hash_value);
    transparent_crc(p_940->g_259.sc, "p_940->g_259.sc", print_hash_value);
    transparent_crc(p_940->g_259.sd, "p_940->g_259.sd", print_hash_value);
    transparent_crc(p_940->g_259.se, "p_940->g_259.se", print_hash_value);
    transparent_crc(p_940->g_259.sf, "p_940->g_259.sf", print_hash_value);
    transparent_crc(p_940->g_260.s0, "p_940->g_260.s0", print_hash_value);
    transparent_crc(p_940->g_260.s1, "p_940->g_260.s1", print_hash_value);
    transparent_crc(p_940->g_260.s2, "p_940->g_260.s2", print_hash_value);
    transparent_crc(p_940->g_260.s3, "p_940->g_260.s3", print_hash_value);
    transparent_crc(p_940->g_260.s4, "p_940->g_260.s4", print_hash_value);
    transparent_crc(p_940->g_260.s5, "p_940->g_260.s5", print_hash_value);
    transparent_crc(p_940->g_260.s6, "p_940->g_260.s6", print_hash_value);
    transparent_crc(p_940->g_260.s7, "p_940->g_260.s7", print_hash_value);
    transparent_crc(p_940->g_260.s8, "p_940->g_260.s8", print_hash_value);
    transparent_crc(p_940->g_260.s9, "p_940->g_260.s9", print_hash_value);
    transparent_crc(p_940->g_260.sa, "p_940->g_260.sa", print_hash_value);
    transparent_crc(p_940->g_260.sb, "p_940->g_260.sb", print_hash_value);
    transparent_crc(p_940->g_260.sc, "p_940->g_260.sc", print_hash_value);
    transparent_crc(p_940->g_260.sd, "p_940->g_260.sd", print_hash_value);
    transparent_crc(p_940->g_260.se, "p_940->g_260.se", print_hash_value);
    transparent_crc(p_940->g_260.sf, "p_940->g_260.sf", print_hash_value);
    transparent_crc(p_940->g_264.x, "p_940->g_264.x", print_hash_value);
    transparent_crc(p_940->g_264.y, "p_940->g_264.y", print_hash_value);
    transparent_crc(p_940->g_264.z, "p_940->g_264.z", print_hash_value);
    transparent_crc(p_940->g_264.w, "p_940->g_264.w", print_hash_value);
    transparent_crc(p_940->g_288, "p_940->g_288", print_hash_value);
    transparent_crc(p_940->g_289, "p_940->g_289", print_hash_value);
    transparent_crc(p_940->g_290, "p_940->g_290", print_hash_value);
    transparent_crc(p_940->g_291, "p_940->g_291", print_hash_value);
    transparent_crc(p_940->g_309.s0, "p_940->g_309.s0", print_hash_value);
    transparent_crc(p_940->g_309.s1, "p_940->g_309.s1", print_hash_value);
    transparent_crc(p_940->g_309.s2, "p_940->g_309.s2", print_hash_value);
    transparent_crc(p_940->g_309.s3, "p_940->g_309.s3", print_hash_value);
    transparent_crc(p_940->g_309.s4, "p_940->g_309.s4", print_hash_value);
    transparent_crc(p_940->g_309.s5, "p_940->g_309.s5", print_hash_value);
    transparent_crc(p_940->g_309.s6, "p_940->g_309.s6", print_hash_value);
    transparent_crc(p_940->g_309.s7, "p_940->g_309.s7", print_hash_value);
    transparent_crc(p_940->g_310, "p_940->g_310", print_hash_value);
    transparent_crc(p_940->g_391.s0, "p_940->g_391.s0", print_hash_value);
    transparent_crc(p_940->g_391.s1, "p_940->g_391.s1", print_hash_value);
    transparent_crc(p_940->g_391.s2, "p_940->g_391.s2", print_hash_value);
    transparent_crc(p_940->g_391.s3, "p_940->g_391.s3", print_hash_value);
    transparent_crc(p_940->g_391.s4, "p_940->g_391.s4", print_hash_value);
    transparent_crc(p_940->g_391.s5, "p_940->g_391.s5", print_hash_value);
    transparent_crc(p_940->g_391.s6, "p_940->g_391.s6", print_hash_value);
    transparent_crc(p_940->g_391.s7, "p_940->g_391.s7", print_hash_value);
    transparent_crc(p_940->g_391.s8, "p_940->g_391.s8", print_hash_value);
    transparent_crc(p_940->g_391.s9, "p_940->g_391.s9", print_hash_value);
    transparent_crc(p_940->g_391.sa, "p_940->g_391.sa", print_hash_value);
    transparent_crc(p_940->g_391.sb, "p_940->g_391.sb", print_hash_value);
    transparent_crc(p_940->g_391.sc, "p_940->g_391.sc", print_hash_value);
    transparent_crc(p_940->g_391.sd, "p_940->g_391.sd", print_hash_value);
    transparent_crc(p_940->g_391.se, "p_940->g_391.se", print_hash_value);
    transparent_crc(p_940->g_391.sf, "p_940->g_391.sf", print_hash_value);
    transparent_crc(p_940->g_392.x, "p_940->g_392.x", print_hash_value);
    transparent_crc(p_940->g_392.y, "p_940->g_392.y", print_hash_value);
    transparent_crc(p_940->g_452.s0, "p_940->g_452.s0", print_hash_value);
    transparent_crc(p_940->g_452.s1, "p_940->g_452.s1", print_hash_value);
    transparent_crc(p_940->g_452.s2, "p_940->g_452.s2", print_hash_value);
    transparent_crc(p_940->g_452.s3, "p_940->g_452.s3", print_hash_value);
    transparent_crc(p_940->g_452.s4, "p_940->g_452.s4", print_hash_value);
    transparent_crc(p_940->g_452.s5, "p_940->g_452.s5", print_hash_value);
    transparent_crc(p_940->g_452.s6, "p_940->g_452.s6", print_hash_value);
    transparent_crc(p_940->g_452.s7, "p_940->g_452.s7", print_hash_value);
    transparent_crc(p_940->g_452.s8, "p_940->g_452.s8", print_hash_value);
    transparent_crc(p_940->g_452.s9, "p_940->g_452.s9", print_hash_value);
    transparent_crc(p_940->g_452.sa, "p_940->g_452.sa", print_hash_value);
    transparent_crc(p_940->g_452.sb, "p_940->g_452.sb", print_hash_value);
    transparent_crc(p_940->g_452.sc, "p_940->g_452.sc", print_hash_value);
    transparent_crc(p_940->g_452.sd, "p_940->g_452.sd", print_hash_value);
    transparent_crc(p_940->g_452.se, "p_940->g_452.se", print_hash_value);
    transparent_crc(p_940->g_452.sf, "p_940->g_452.sf", print_hash_value);
    transparent_crc(p_940->g_454, "p_940->g_454", print_hash_value);
    transparent_crc(p_940->g_457, "p_940->g_457", print_hash_value);
    transparent_crc(p_940->g_479.x, "p_940->g_479.x", print_hash_value);
    transparent_crc(p_940->g_479.y, "p_940->g_479.y", print_hash_value);
    transparent_crc(p_940->g_517.x, "p_940->g_517.x", print_hash_value);
    transparent_crc(p_940->g_517.y, "p_940->g_517.y", print_hash_value);
    transparent_crc(p_940->g_517.z, "p_940->g_517.z", print_hash_value);
    transparent_crc(p_940->g_517.w, "p_940->g_517.w", print_hash_value);
    transparent_crc(p_940->g_536.x, "p_940->g_536.x", print_hash_value);
    transparent_crc(p_940->g_536.y, "p_940->g_536.y", print_hash_value);
    transparent_crc(p_940->g_536.z, "p_940->g_536.z", print_hash_value);
    transparent_crc(p_940->g_536.w, "p_940->g_536.w", print_hash_value);
    transparent_crc(p_940->g_544.s0, "p_940->g_544.s0", print_hash_value);
    transparent_crc(p_940->g_544.s1, "p_940->g_544.s1", print_hash_value);
    transparent_crc(p_940->g_544.s2, "p_940->g_544.s2", print_hash_value);
    transparent_crc(p_940->g_544.s3, "p_940->g_544.s3", print_hash_value);
    transparent_crc(p_940->g_544.s4, "p_940->g_544.s4", print_hash_value);
    transparent_crc(p_940->g_544.s5, "p_940->g_544.s5", print_hash_value);
    transparent_crc(p_940->g_544.s6, "p_940->g_544.s6", print_hash_value);
    transparent_crc(p_940->g_544.s7, "p_940->g_544.s7", print_hash_value);
    transparent_crc(p_940->g_559.x, "p_940->g_559.x", print_hash_value);
    transparent_crc(p_940->g_559.y, "p_940->g_559.y", print_hash_value);
    transparent_crc(p_940->g_564.s0, "p_940->g_564.s0", print_hash_value);
    transparent_crc(p_940->g_564.s1, "p_940->g_564.s1", print_hash_value);
    transparent_crc(p_940->g_564.s2, "p_940->g_564.s2", print_hash_value);
    transparent_crc(p_940->g_564.s3, "p_940->g_564.s3", print_hash_value);
    transparent_crc(p_940->g_564.s4, "p_940->g_564.s4", print_hash_value);
    transparent_crc(p_940->g_564.s5, "p_940->g_564.s5", print_hash_value);
    transparent_crc(p_940->g_564.s6, "p_940->g_564.s6", print_hash_value);
    transparent_crc(p_940->g_564.s7, "p_940->g_564.s7", print_hash_value);
    transparent_crc(p_940->g_564.s8, "p_940->g_564.s8", print_hash_value);
    transparent_crc(p_940->g_564.s9, "p_940->g_564.s9", print_hash_value);
    transparent_crc(p_940->g_564.sa, "p_940->g_564.sa", print_hash_value);
    transparent_crc(p_940->g_564.sb, "p_940->g_564.sb", print_hash_value);
    transparent_crc(p_940->g_564.sc, "p_940->g_564.sc", print_hash_value);
    transparent_crc(p_940->g_564.sd, "p_940->g_564.sd", print_hash_value);
    transparent_crc(p_940->g_564.se, "p_940->g_564.se", print_hash_value);
    transparent_crc(p_940->g_564.sf, "p_940->g_564.sf", print_hash_value);
    transparent_crc(p_940->g_569.s0, "p_940->g_569.s0", print_hash_value);
    transparent_crc(p_940->g_569.s1, "p_940->g_569.s1", print_hash_value);
    transparent_crc(p_940->g_569.s2, "p_940->g_569.s2", print_hash_value);
    transparent_crc(p_940->g_569.s3, "p_940->g_569.s3", print_hash_value);
    transparent_crc(p_940->g_569.s4, "p_940->g_569.s4", print_hash_value);
    transparent_crc(p_940->g_569.s5, "p_940->g_569.s5", print_hash_value);
    transparent_crc(p_940->g_569.s6, "p_940->g_569.s6", print_hash_value);
    transparent_crc(p_940->g_569.s7, "p_940->g_569.s7", print_hash_value);
    transparent_crc(p_940->g_569.s8, "p_940->g_569.s8", print_hash_value);
    transparent_crc(p_940->g_569.s9, "p_940->g_569.s9", print_hash_value);
    transparent_crc(p_940->g_569.sa, "p_940->g_569.sa", print_hash_value);
    transparent_crc(p_940->g_569.sb, "p_940->g_569.sb", print_hash_value);
    transparent_crc(p_940->g_569.sc, "p_940->g_569.sc", print_hash_value);
    transparent_crc(p_940->g_569.sd, "p_940->g_569.sd", print_hash_value);
    transparent_crc(p_940->g_569.se, "p_940->g_569.se", print_hash_value);
    transparent_crc(p_940->g_569.sf, "p_940->g_569.sf", print_hash_value);
    transparent_crc(p_940->g_572.s0, "p_940->g_572.s0", print_hash_value);
    transparent_crc(p_940->g_572.s1, "p_940->g_572.s1", print_hash_value);
    transparent_crc(p_940->g_572.s2, "p_940->g_572.s2", print_hash_value);
    transparent_crc(p_940->g_572.s3, "p_940->g_572.s3", print_hash_value);
    transparent_crc(p_940->g_572.s4, "p_940->g_572.s4", print_hash_value);
    transparent_crc(p_940->g_572.s5, "p_940->g_572.s5", print_hash_value);
    transparent_crc(p_940->g_572.s6, "p_940->g_572.s6", print_hash_value);
    transparent_crc(p_940->g_572.s7, "p_940->g_572.s7", print_hash_value);
    transparent_crc(p_940->g_572.s8, "p_940->g_572.s8", print_hash_value);
    transparent_crc(p_940->g_572.s9, "p_940->g_572.s9", print_hash_value);
    transparent_crc(p_940->g_572.sa, "p_940->g_572.sa", print_hash_value);
    transparent_crc(p_940->g_572.sb, "p_940->g_572.sb", print_hash_value);
    transparent_crc(p_940->g_572.sc, "p_940->g_572.sc", print_hash_value);
    transparent_crc(p_940->g_572.sd, "p_940->g_572.sd", print_hash_value);
    transparent_crc(p_940->g_572.se, "p_940->g_572.se", print_hash_value);
    transparent_crc(p_940->g_572.sf, "p_940->g_572.sf", print_hash_value);
    transparent_crc(p_940->g_573.s0, "p_940->g_573.s0", print_hash_value);
    transparent_crc(p_940->g_573.s1, "p_940->g_573.s1", print_hash_value);
    transparent_crc(p_940->g_573.s2, "p_940->g_573.s2", print_hash_value);
    transparent_crc(p_940->g_573.s3, "p_940->g_573.s3", print_hash_value);
    transparent_crc(p_940->g_573.s4, "p_940->g_573.s4", print_hash_value);
    transparent_crc(p_940->g_573.s5, "p_940->g_573.s5", print_hash_value);
    transparent_crc(p_940->g_573.s6, "p_940->g_573.s6", print_hash_value);
    transparent_crc(p_940->g_573.s7, "p_940->g_573.s7", print_hash_value);
    transparent_crc(p_940->g_577.x, "p_940->g_577.x", print_hash_value);
    transparent_crc(p_940->g_577.y, "p_940->g_577.y", print_hash_value);
    transparent_crc(p_940->g_577.z, "p_940->g_577.z", print_hash_value);
    transparent_crc(p_940->g_577.w, "p_940->g_577.w", print_hash_value);
    transparent_crc(p_940->g_597, "p_940->g_597", print_hash_value);
    transparent_crc(p_940->g_601, "p_940->g_601", print_hash_value);
    transparent_crc(p_940->g_604.x, "p_940->g_604.x", print_hash_value);
    transparent_crc(p_940->g_604.y, "p_940->g_604.y", print_hash_value);
    transparent_crc(p_940->g_611.x, "p_940->g_611.x", print_hash_value);
    transparent_crc(p_940->g_611.y, "p_940->g_611.y", print_hash_value);
    transparent_crc(p_940->g_611.z, "p_940->g_611.z", print_hash_value);
    transparent_crc(p_940->g_611.w, "p_940->g_611.w", print_hash_value);
    transparent_crc(p_940->g_621.s0, "p_940->g_621.s0", print_hash_value);
    transparent_crc(p_940->g_621.s1, "p_940->g_621.s1", print_hash_value);
    transparent_crc(p_940->g_621.s2, "p_940->g_621.s2", print_hash_value);
    transparent_crc(p_940->g_621.s3, "p_940->g_621.s3", print_hash_value);
    transparent_crc(p_940->g_621.s4, "p_940->g_621.s4", print_hash_value);
    transparent_crc(p_940->g_621.s5, "p_940->g_621.s5", print_hash_value);
    transparent_crc(p_940->g_621.s6, "p_940->g_621.s6", print_hash_value);
    transparent_crc(p_940->g_621.s7, "p_940->g_621.s7", print_hash_value);
    transparent_crc(p_940->g_669.s0, "p_940->g_669.s0", print_hash_value);
    transparent_crc(p_940->g_669.s1, "p_940->g_669.s1", print_hash_value);
    transparent_crc(p_940->g_669.s2, "p_940->g_669.s2", print_hash_value);
    transparent_crc(p_940->g_669.s3, "p_940->g_669.s3", print_hash_value);
    transparent_crc(p_940->g_669.s4, "p_940->g_669.s4", print_hash_value);
    transparent_crc(p_940->g_669.s5, "p_940->g_669.s5", print_hash_value);
    transparent_crc(p_940->g_669.s6, "p_940->g_669.s6", print_hash_value);
    transparent_crc(p_940->g_669.s7, "p_940->g_669.s7", print_hash_value);
    transparent_crc(p_940->g_698, "p_940->g_698", print_hash_value);
    transparent_crc(p_940->g_714.x, "p_940->g_714.x", print_hash_value);
    transparent_crc(p_940->g_714.y, "p_940->g_714.y", print_hash_value);
    transparent_crc(p_940->g_720.s0, "p_940->g_720.s0", print_hash_value);
    transparent_crc(p_940->g_720.s1, "p_940->g_720.s1", print_hash_value);
    transparent_crc(p_940->g_720.s2, "p_940->g_720.s2", print_hash_value);
    transparent_crc(p_940->g_720.s3, "p_940->g_720.s3", print_hash_value);
    transparent_crc(p_940->g_720.s4, "p_940->g_720.s4", print_hash_value);
    transparent_crc(p_940->g_720.s5, "p_940->g_720.s5", print_hash_value);
    transparent_crc(p_940->g_720.s6, "p_940->g_720.s6", print_hash_value);
    transparent_crc(p_940->g_720.s7, "p_940->g_720.s7", print_hash_value);
    transparent_crc(p_940->g_720.s8, "p_940->g_720.s8", print_hash_value);
    transparent_crc(p_940->g_720.s9, "p_940->g_720.s9", print_hash_value);
    transparent_crc(p_940->g_720.sa, "p_940->g_720.sa", print_hash_value);
    transparent_crc(p_940->g_720.sb, "p_940->g_720.sb", print_hash_value);
    transparent_crc(p_940->g_720.sc, "p_940->g_720.sc", print_hash_value);
    transparent_crc(p_940->g_720.sd, "p_940->g_720.sd", print_hash_value);
    transparent_crc(p_940->g_720.se, "p_940->g_720.se", print_hash_value);
    transparent_crc(p_940->g_720.sf, "p_940->g_720.sf", print_hash_value);
    transparent_crc(p_940->g_726.x, "p_940->g_726.x", print_hash_value);
    transparent_crc(p_940->g_726.y, "p_940->g_726.y", print_hash_value);
    transparent_crc(p_940->g_727.s0, "p_940->g_727.s0", print_hash_value);
    transparent_crc(p_940->g_727.s1, "p_940->g_727.s1", print_hash_value);
    transparent_crc(p_940->g_727.s2, "p_940->g_727.s2", print_hash_value);
    transparent_crc(p_940->g_727.s3, "p_940->g_727.s3", print_hash_value);
    transparent_crc(p_940->g_727.s4, "p_940->g_727.s4", print_hash_value);
    transparent_crc(p_940->g_727.s5, "p_940->g_727.s5", print_hash_value);
    transparent_crc(p_940->g_727.s6, "p_940->g_727.s6", print_hash_value);
    transparent_crc(p_940->g_727.s7, "p_940->g_727.s7", print_hash_value);
    transparent_crc(p_940->g_727.s8, "p_940->g_727.s8", print_hash_value);
    transparent_crc(p_940->g_727.s9, "p_940->g_727.s9", print_hash_value);
    transparent_crc(p_940->g_727.sa, "p_940->g_727.sa", print_hash_value);
    transparent_crc(p_940->g_727.sb, "p_940->g_727.sb", print_hash_value);
    transparent_crc(p_940->g_727.sc, "p_940->g_727.sc", print_hash_value);
    transparent_crc(p_940->g_727.sd, "p_940->g_727.sd", print_hash_value);
    transparent_crc(p_940->g_727.se, "p_940->g_727.se", print_hash_value);
    transparent_crc(p_940->g_727.sf, "p_940->g_727.sf", print_hash_value);
    transparent_crc(p_940->g_728.s0, "p_940->g_728.s0", print_hash_value);
    transparent_crc(p_940->g_728.s1, "p_940->g_728.s1", print_hash_value);
    transparent_crc(p_940->g_728.s2, "p_940->g_728.s2", print_hash_value);
    transparent_crc(p_940->g_728.s3, "p_940->g_728.s3", print_hash_value);
    transparent_crc(p_940->g_728.s4, "p_940->g_728.s4", print_hash_value);
    transparent_crc(p_940->g_728.s5, "p_940->g_728.s5", print_hash_value);
    transparent_crc(p_940->g_728.s6, "p_940->g_728.s6", print_hash_value);
    transparent_crc(p_940->g_728.s7, "p_940->g_728.s7", print_hash_value);
    transparent_crc(p_940->g_732.s0, "p_940->g_732.s0", print_hash_value);
    transparent_crc(p_940->g_732.s1, "p_940->g_732.s1", print_hash_value);
    transparent_crc(p_940->g_732.s2, "p_940->g_732.s2", print_hash_value);
    transparent_crc(p_940->g_732.s3, "p_940->g_732.s3", print_hash_value);
    transparent_crc(p_940->g_732.s4, "p_940->g_732.s4", print_hash_value);
    transparent_crc(p_940->g_732.s5, "p_940->g_732.s5", print_hash_value);
    transparent_crc(p_940->g_732.s6, "p_940->g_732.s6", print_hash_value);
    transparent_crc(p_940->g_732.s7, "p_940->g_732.s7", print_hash_value);
    transparent_crc(p_940->g_732.s8, "p_940->g_732.s8", print_hash_value);
    transparent_crc(p_940->g_732.s9, "p_940->g_732.s9", print_hash_value);
    transparent_crc(p_940->g_732.sa, "p_940->g_732.sa", print_hash_value);
    transparent_crc(p_940->g_732.sb, "p_940->g_732.sb", print_hash_value);
    transparent_crc(p_940->g_732.sc, "p_940->g_732.sc", print_hash_value);
    transparent_crc(p_940->g_732.sd, "p_940->g_732.sd", print_hash_value);
    transparent_crc(p_940->g_732.se, "p_940->g_732.se", print_hash_value);
    transparent_crc(p_940->g_732.sf, "p_940->g_732.sf", print_hash_value);
    transparent_crc(p_940->g_761.x, "p_940->g_761.x", print_hash_value);
    transparent_crc(p_940->g_761.y, "p_940->g_761.y", print_hash_value);
    transparent_crc(p_940->g_762.x, "p_940->g_762.x", print_hash_value);
    transparent_crc(p_940->g_762.y, "p_940->g_762.y", print_hash_value);
    transparent_crc(p_940->g_762.z, "p_940->g_762.z", print_hash_value);
    transparent_crc(p_940->g_762.w, "p_940->g_762.w", print_hash_value);
    transparent_crc(p_940->g_772.s0, "p_940->g_772.s0", print_hash_value);
    transparent_crc(p_940->g_772.s1, "p_940->g_772.s1", print_hash_value);
    transparent_crc(p_940->g_772.s2, "p_940->g_772.s2", print_hash_value);
    transparent_crc(p_940->g_772.s3, "p_940->g_772.s3", print_hash_value);
    transparent_crc(p_940->g_772.s4, "p_940->g_772.s4", print_hash_value);
    transparent_crc(p_940->g_772.s5, "p_940->g_772.s5", print_hash_value);
    transparent_crc(p_940->g_772.s6, "p_940->g_772.s6", print_hash_value);
    transparent_crc(p_940->g_772.s7, "p_940->g_772.s7", print_hash_value);
    transparent_crc(p_940->g_772.s8, "p_940->g_772.s8", print_hash_value);
    transparent_crc(p_940->g_772.s9, "p_940->g_772.s9", print_hash_value);
    transparent_crc(p_940->g_772.sa, "p_940->g_772.sa", print_hash_value);
    transparent_crc(p_940->g_772.sb, "p_940->g_772.sb", print_hash_value);
    transparent_crc(p_940->g_772.sc, "p_940->g_772.sc", print_hash_value);
    transparent_crc(p_940->g_772.sd, "p_940->g_772.sd", print_hash_value);
    transparent_crc(p_940->g_772.se, "p_940->g_772.se", print_hash_value);
    transparent_crc(p_940->g_772.sf, "p_940->g_772.sf", print_hash_value);
    transparent_crc(p_940->g_773.s0, "p_940->g_773.s0", print_hash_value);
    transparent_crc(p_940->g_773.s1, "p_940->g_773.s1", print_hash_value);
    transparent_crc(p_940->g_773.s2, "p_940->g_773.s2", print_hash_value);
    transparent_crc(p_940->g_773.s3, "p_940->g_773.s3", print_hash_value);
    transparent_crc(p_940->g_773.s4, "p_940->g_773.s4", print_hash_value);
    transparent_crc(p_940->g_773.s5, "p_940->g_773.s5", print_hash_value);
    transparent_crc(p_940->g_773.s6, "p_940->g_773.s6", print_hash_value);
    transparent_crc(p_940->g_773.s7, "p_940->g_773.s7", print_hash_value);
    transparent_crc(p_940->g_792.s0, "p_940->g_792.s0", print_hash_value);
    transparent_crc(p_940->g_792.s1, "p_940->g_792.s1", print_hash_value);
    transparent_crc(p_940->g_792.s2, "p_940->g_792.s2", print_hash_value);
    transparent_crc(p_940->g_792.s3, "p_940->g_792.s3", print_hash_value);
    transparent_crc(p_940->g_792.s4, "p_940->g_792.s4", print_hash_value);
    transparent_crc(p_940->g_792.s5, "p_940->g_792.s5", print_hash_value);
    transparent_crc(p_940->g_792.s6, "p_940->g_792.s6", print_hash_value);
    transparent_crc(p_940->g_792.s7, "p_940->g_792.s7", print_hash_value);
    transparent_crc(p_940->g_792.s8, "p_940->g_792.s8", print_hash_value);
    transparent_crc(p_940->g_792.s9, "p_940->g_792.s9", print_hash_value);
    transparent_crc(p_940->g_792.sa, "p_940->g_792.sa", print_hash_value);
    transparent_crc(p_940->g_792.sb, "p_940->g_792.sb", print_hash_value);
    transparent_crc(p_940->g_792.sc, "p_940->g_792.sc", print_hash_value);
    transparent_crc(p_940->g_792.sd, "p_940->g_792.sd", print_hash_value);
    transparent_crc(p_940->g_792.se, "p_940->g_792.se", print_hash_value);
    transparent_crc(p_940->g_792.sf, "p_940->g_792.sf", print_hash_value);
    transparent_crc(p_940->g_793.s0, "p_940->g_793.s0", print_hash_value);
    transparent_crc(p_940->g_793.s1, "p_940->g_793.s1", print_hash_value);
    transparent_crc(p_940->g_793.s2, "p_940->g_793.s2", print_hash_value);
    transparent_crc(p_940->g_793.s3, "p_940->g_793.s3", print_hash_value);
    transparent_crc(p_940->g_793.s4, "p_940->g_793.s4", print_hash_value);
    transparent_crc(p_940->g_793.s5, "p_940->g_793.s5", print_hash_value);
    transparent_crc(p_940->g_793.s6, "p_940->g_793.s6", print_hash_value);
    transparent_crc(p_940->g_793.s7, "p_940->g_793.s7", print_hash_value);
    transparent_crc(p_940->g_793.s8, "p_940->g_793.s8", print_hash_value);
    transparent_crc(p_940->g_793.s9, "p_940->g_793.s9", print_hash_value);
    transparent_crc(p_940->g_793.sa, "p_940->g_793.sa", print_hash_value);
    transparent_crc(p_940->g_793.sb, "p_940->g_793.sb", print_hash_value);
    transparent_crc(p_940->g_793.sc, "p_940->g_793.sc", print_hash_value);
    transparent_crc(p_940->g_793.sd, "p_940->g_793.sd", print_hash_value);
    transparent_crc(p_940->g_793.se, "p_940->g_793.se", print_hash_value);
    transparent_crc(p_940->g_793.sf, "p_940->g_793.sf", print_hash_value);
    transparent_crc(p_940->g_828.x, "p_940->g_828.x", print_hash_value);
    transparent_crc(p_940->g_828.y, "p_940->g_828.y", print_hash_value);
    transparent_crc(p_940->g_828.z, "p_940->g_828.z", print_hash_value);
    transparent_crc(p_940->g_828.w, "p_940->g_828.w", print_hash_value);
    transparent_crc(p_940->g_862.s0, "p_940->g_862.s0", print_hash_value);
    transparent_crc(p_940->g_862.s1, "p_940->g_862.s1", print_hash_value);
    transparent_crc(p_940->g_862.s2, "p_940->g_862.s2", print_hash_value);
    transparent_crc(p_940->g_862.s3, "p_940->g_862.s3", print_hash_value);
    transparent_crc(p_940->g_862.s4, "p_940->g_862.s4", print_hash_value);
    transparent_crc(p_940->g_862.s5, "p_940->g_862.s5", print_hash_value);
    transparent_crc(p_940->g_862.s6, "p_940->g_862.s6", print_hash_value);
    transparent_crc(p_940->g_862.s7, "p_940->g_862.s7", print_hash_value);
    transparent_crc(p_940->g_863.x, "p_940->g_863.x", print_hash_value);
    transparent_crc(p_940->g_863.y, "p_940->g_863.y", print_hash_value);
    transparent_crc(p_940->g_864.s0, "p_940->g_864.s0", print_hash_value);
    transparent_crc(p_940->g_864.s1, "p_940->g_864.s1", print_hash_value);
    transparent_crc(p_940->g_864.s2, "p_940->g_864.s2", print_hash_value);
    transparent_crc(p_940->g_864.s3, "p_940->g_864.s3", print_hash_value);
    transparent_crc(p_940->g_864.s4, "p_940->g_864.s4", print_hash_value);
    transparent_crc(p_940->g_864.s5, "p_940->g_864.s5", print_hash_value);
    transparent_crc(p_940->g_864.s6, "p_940->g_864.s6", print_hash_value);
    transparent_crc(p_940->g_864.s7, "p_940->g_864.s7", print_hash_value);
    transparent_crc(p_940->g_865.x, "p_940->g_865.x", print_hash_value);
    transparent_crc(p_940->g_865.y, "p_940->g_865.y", print_hash_value);
    transparent_crc(p_940->g_865.z, "p_940->g_865.z", print_hash_value);
    transparent_crc(p_940->g_865.w, "p_940->g_865.w", print_hash_value);
    transparent_crc(p_940->g_868.s0, "p_940->g_868.s0", print_hash_value);
    transparent_crc(p_940->g_868.s1, "p_940->g_868.s1", print_hash_value);
    transparent_crc(p_940->g_868.s2, "p_940->g_868.s2", print_hash_value);
    transparent_crc(p_940->g_868.s3, "p_940->g_868.s3", print_hash_value);
    transparent_crc(p_940->g_868.s4, "p_940->g_868.s4", print_hash_value);
    transparent_crc(p_940->g_868.s5, "p_940->g_868.s5", print_hash_value);
    transparent_crc(p_940->g_868.s6, "p_940->g_868.s6", print_hash_value);
    transparent_crc(p_940->g_868.s7, "p_940->g_868.s7", print_hash_value);
    transparent_crc(p_940->g_868.s8, "p_940->g_868.s8", print_hash_value);
    transparent_crc(p_940->g_868.s9, "p_940->g_868.s9", print_hash_value);
    transparent_crc(p_940->g_868.sa, "p_940->g_868.sa", print_hash_value);
    transparent_crc(p_940->g_868.sb, "p_940->g_868.sb", print_hash_value);
    transparent_crc(p_940->g_868.sc, "p_940->g_868.sc", print_hash_value);
    transparent_crc(p_940->g_868.sd, "p_940->g_868.sd", print_hash_value);
    transparent_crc(p_940->g_868.se, "p_940->g_868.se", print_hash_value);
    transparent_crc(p_940->g_868.sf, "p_940->g_868.sf", print_hash_value);
    transparent_crc(p_940->g_871.s0, "p_940->g_871.s0", print_hash_value);
    transparent_crc(p_940->g_871.s1, "p_940->g_871.s1", print_hash_value);
    transparent_crc(p_940->g_871.s2, "p_940->g_871.s2", print_hash_value);
    transparent_crc(p_940->g_871.s3, "p_940->g_871.s3", print_hash_value);
    transparent_crc(p_940->g_871.s4, "p_940->g_871.s4", print_hash_value);
    transparent_crc(p_940->g_871.s5, "p_940->g_871.s5", print_hash_value);
    transparent_crc(p_940->g_871.s6, "p_940->g_871.s6", print_hash_value);
    transparent_crc(p_940->g_871.s7, "p_940->g_871.s7", print_hash_value);
    transparent_crc(p_940->g_871.s8, "p_940->g_871.s8", print_hash_value);
    transparent_crc(p_940->g_871.s9, "p_940->g_871.s9", print_hash_value);
    transparent_crc(p_940->g_871.sa, "p_940->g_871.sa", print_hash_value);
    transparent_crc(p_940->g_871.sb, "p_940->g_871.sb", print_hash_value);
    transparent_crc(p_940->g_871.sc, "p_940->g_871.sc", print_hash_value);
    transparent_crc(p_940->g_871.sd, "p_940->g_871.sd", print_hash_value);
    transparent_crc(p_940->g_871.se, "p_940->g_871.se", print_hash_value);
    transparent_crc(p_940->g_871.sf, "p_940->g_871.sf", print_hash_value);
    transparent_crc(p_940->g_874, "p_940->g_874", print_hash_value);
    transparent_crc(p_940->g_875.s0, "p_940->g_875.s0", print_hash_value);
    transparent_crc(p_940->g_875.s1, "p_940->g_875.s1", print_hash_value);
    transparent_crc(p_940->g_875.s2, "p_940->g_875.s2", print_hash_value);
    transparent_crc(p_940->g_875.s3, "p_940->g_875.s3", print_hash_value);
    transparent_crc(p_940->g_875.s4, "p_940->g_875.s4", print_hash_value);
    transparent_crc(p_940->g_875.s5, "p_940->g_875.s5", print_hash_value);
    transparent_crc(p_940->g_875.s6, "p_940->g_875.s6", print_hash_value);
    transparent_crc(p_940->g_875.s7, "p_940->g_875.s7", print_hash_value);
    transparent_crc(p_940->g_875.s8, "p_940->g_875.s8", print_hash_value);
    transparent_crc(p_940->g_875.s9, "p_940->g_875.s9", print_hash_value);
    transparent_crc(p_940->g_875.sa, "p_940->g_875.sa", print_hash_value);
    transparent_crc(p_940->g_875.sb, "p_940->g_875.sb", print_hash_value);
    transparent_crc(p_940->g_875.sc, "p_940->g_875.sc", print_hash_value);
    transparent_crc(p_940->g_875.sd, "p_940->g_875.sd", print_hash_value);
    transparent_crc(p_940->g_875.se, "p_940->g_875.se", print_hash_value);
    transparent_crc(p_940->g_875.sf, "p_940->g_875.sf", print_hash_value);
    transparent_crc(p_940->g_876.s0, "p_940->g_876.s0", print_hash_value);
    transparent_crc(p_940->g_876.s1, "p_940->g_876.s1", print_hash_value);
    transparent_crc(p_940->g_876.s2, "p_940->g_876.s2", print_hash_value);
    transparent_crc(p_940->g_876.s3, "p_940->g_876.s3", print_hash_value);
    transparent_crc(p_940->g_876.s4, "p_940->g_876.s4", print_hash_value);
    transparent_crc(p_940->g_876.s5, "p_940->g_876.s5", print_hash_value);
    transparent_crc(p_940->g_876.s6, "p_940->g_876.s6", print_hash_value);
    transparent_crc(p_940->g_876.s7, "p_940->g_876.s7", print_hash_value);
    transparent_crc(p_940->g_884.x, "p_940->g_884.x", print_hash_value);
    transparent_crc(p_940->g_884.y, "p_940->g_884.y", print_hash_value);
    transparent_crc(p_940->g_885.x, "p_940->g_885.x", print_hash_value);
    transparent_crc(p_940->g_885.y, "p_940->g_885.y", print_hash_value);
    transparent_crc(p_940->g_885.z, "p_940->g_885.z", print_hash_value);
    transparent_crc(p_940->g_885.w, "p_940->g_885.w", print_hash_value);
    transparent_crc(p_940->g_928.s0, "p_940->g_928.s0", print_hash_value);
    transparent_crc(p_940->g_928.s1, "p_940->g_928.s1", print_hash_value);
    transparent_crc(p_940->g_928.s2, "p_940->g_928.s2", print_hash_value);
    transparent_crc(p_940->g_928.s3, "p_940->g_928.s3", print_hash_value);
    transparent_crc(p_940->g_928.s4, "p_940->g_928.s4", print_hash_value);
    transparent_crc(p_940->g_928.s5, "p_940->g_928.s5", print_hash_value);
    transparent_crc(p_940->g_928.s6, "p_940->g_928.s6", print_hash_value);
    transparent_crc(p_940->g_928.s7, "p_940->g_928.s7", print_hash_value);
    transparent_crc(p_940->g_928.s8, "p_940->g_928.s8", print_hash_value);
    transparent_crc(p_940->g_928.s9, "p_940->g_928.s9", print_hash_value);
    transparent_crc(p_940->g_928.sa, "p_940->g_928.sa", print_hash_value);
    transparent_crc(p_940->g_928.sb, "p_940->g_928.sb", print_hash_value);
    transparent_crc(p_940->g_928.sc, "p_940->g_928.sc", print_hash_value);
    transparent_crc(p_940->g_928.sd, "p_940->g_928.sd", print_hash_value);
    transparent_crc(p_940->g_928.se, "p_940->g_928.se", print_hash_value);
    transparent_crc(p_940->g_928.sf, "p_940->g_928.sf", print_hash_value);
    transparent_crc(p_940->g_929.s0, "p_940->g_929.s0", print_hash_value);
    transparent_crc(p_940->g_929.s1, "p_940->g_929.s1", print_hash_value);
    transparent_crc(p_940->g_929.s2, "p_940->g_929.s2", print_hash_value);
    transparent_crc(p_940->g_929.s3, "p_940->g_929.s3", print_hash_value);
    transparent_crc(p_940->g_929.s4, "p_940->g_929.s4", print_hash_value);
    transparent_crc(p_940->g_929.s5, "p_940->g_929.s5", print_hash_value);
    transparent_crc(p_940->g_929.s6, "p_940->g_929.s6", print_hash_value);
    transparent_crc(p_940->g_929.s7, "p_940->g_929.s7", print_hash_value);
    transparent_crc(p_940->g_929.s8, "p_940->g_929.s8", print_hash_value);
    transparent_crc(p_940->g_929.s9, "p_940->g_929.s9", print_hash_value);
    transparent_crc(p_940->g_929.sa, "p_940->g_929.sa", print_hash_value);
    transparent_crc(p_940->g_929.sb, "p_940->g_929.sb", print_hash_value);
    transparent_crc(p_940->g_929.sc, "p_940->g_929.sc", print_hash_value);
    transparent_crc(p_940->g_929.sd, "p_940->g_929.sd", print_hash_value);
    transparent_crc(p_940->g_929.se, "p_940->g_929.se", print_hash_value);
    transparent_crc(p_940->g_929.sf, "p_940->g_929.sf", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
