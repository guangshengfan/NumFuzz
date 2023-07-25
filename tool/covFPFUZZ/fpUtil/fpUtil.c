#include "fpUtil.h"

double i64ToDouble(uint64_t i) {
    return *(double*)(&i);
}

uint64_t doubleToI64(double d) {
    return *(uint64_t*)(&d);
}

float i32ToFloat(uint32_t i) {
    return *(float*)(&i);
}

uint32_t floatToI32(float f) {
    return *(uint32_t*)(&f);
}

uint64_t getDoubleSign(double d) {
    uint64_t i = doubleToI64(d);
    return (i & DBL_SIGNMASK) >> 63;
}

uint64_t getDoubleExpo(double d) {
    uint64_t i = doubleToI64(d);
    return (i & DBL_EXPOMASK) >> 52;
}

uint64_t getDoubleFrac(double d) {
    uint64_t i = doubleToI64(d);
    return (i & DBL_FRACMASK);
}

uint32_t getFloatSign(float f) {
    uint32_t i = floatToI32(f);
    return (i & FLT_SIGNMASK) >> 31;
}

uint32_t getFloatExpo(float f) {
    uint32_t i = floatToI32(f);
    return (i & FLT_EXPOMASK) >> 23;
}

uint32_t getFloatFrac(float f) {
    uint32_t i = floatToI32(f);
    return (i & FLT_FRACMASK);
}

double buildDouble(uint64_t sign, uint64_t expo, uint64_t frac) {
    uint64_t bits;
    bits  = (sign << 63) & DBL_SIGNMASK;
    bits |= (expo << 52) & DBL_EXPOMASK;
    bits |= (frac & DBL_FRACMASK);
    return i64ToDouble(bits);
}

float buildFloat(uint32_t sign, uint32_t expo, uint32_t frac) {
    uint32_t bits;
    bits  = (sign << 31) & FLT_SIGNMASK;
    bits |= (expo << 23) & FLT_EXPOMASK;
    bits |= (frac & FLT_FRACMASK);
    return i32ToFloat(bits);
}

double doubleULP(double d) {
    uint64_t bits = doubleToI64(d);
    // make it positive.
    bits = bits & (DBL_EXPOMASK | DBL_FRACMASK);
    d = i64ToDouble(bits);
    double d_plus = i64ToDouble(bits+1);
    return d_plus - d;
}

float floatULP(float f) {
    uint32_t bits = floatToI32(f);
    // make it positive.
    bits = bits & (FLT_EXPOMASK | FLT_FRACMASK);
    f = i32ToFloat(bits);
    float f_plus = i32ToFloat(bits+1);
    return f_plus - f;
}

uint64_t doubleDist(double d1, double d2) {
    uint64_t dist, bits1, bits2;
    bits1 = doubleToI64(d1) & (DBL_EXPOMASK | DBL_FRACMASK);
    bits2 = doubleToI64(d2) & (DBL_EXPOMASK | DBL_FRACMASK);
    if ((d1 > 0 && d2 < 0) || (d1 < 0 && d2 > 0)) {
        dist = bits1 + bits2;
    }
    else {
        if (bits1 > bits2)
            dist = bits1 - bits2;
        else
            dist = bits2 - bits1;
    }
    return dist;
}

uint32_t floatDist(float f1, float f2) {
    uint32_t dist, bits1, bits2;
    bits1 = floatToI32(f1) & (FLT_EXPOMASK | FLT_FRACMASK);
    bits2 = floatToI32(f2) & (FLT_EXPOMASK | FLT_FRACMASK);
    if ((f1 > 0 && f2 < 0) || (f1 < 0 && f2 > 0)) {
        dist = bits1 + bits2;
    }
    else {
        if (bits1 > bits2)
            dist = bits1 - bits2;
        else
            dist = bits2 - bits1;
    }
    return dist;
}

// uint64_t rand64() {
//     // important to make the generator 'static' here.
//     static std::mt19937_64 mt_generator_64(0xdeadbeef);
//     return mt_generator_64();
// }

// //mindis not included,maxdis included.
// double randNeighbor(double x,uint64_t mindis,uint64_t maxdis){
//     uint64_t tmp;
//     uint64_t bits = 0;
//     uint64_t sign = getDoubleSign(x);
//     uint64_t expo = getDoubleExpo(x);
//     uint64_t frac = getDoubleFrac(x);
//     uint64_t newfrac;
    
//     //buggy
//     //uint64_t nlower = fmax(0,frac - maxdis);
//     //uint64_t nupper = fmax(0,frac - mindis);

//     uint64_t nlower = frac < maxdis ? 0 : frac-maxdis;
//     uint64_t nupper = frac < mindis ? 0 : frac-mindis;

//     uint64_t nrange = nupper-nlower;
//     uint64_t plower = fmin(DBL_FRACMASK,frac + mindis);
//     uint64_t pupper = fmin(DBL_FRACMASK,frac + maxdis);
//     uint64_t prange = pupper - plower;
//     assert(nrange+prange > 1);
//     //use rand64(?)
//     uint64_t r = rand64()%(nrange+prange);
//     if(r<nrange)
//         newfrac = r + nlower;
//     else
//         newfrac = (r-nrange) + plower + 1;
//     if(newfrac > frac)assert(newfrac-frac >= mindis && newfrac-frac <= maxdis);
//     else assert(frac-newfrac >= mindis && frac-newfrac <= maxdis);
//     return buildDouble(sign,expo,newfrac);
// }

// uint32_t rand32() {
//     // important to make the generator 'static' here.
//     static std::mt19937 mt_generator_32(0xdeadbeef);
//     return mt_generator_32();
// }

// double randDouble() {
//     return i64ToDouble(rand64());
// }

// float randFloat() {
//     return i32ToFloat(rand32());
// }

// double rand01()
// {
//     return fabs(randDouble()/DBL_POSINF);
// }

// double revisedCondition(uint64_t opcode, double lhs, double rhs) {
//     double cond1, cond2;
//     double dzdist;
//     switch(opcode) {
//         case OP_ADD:
//             dzdist = fabs(lhs+rhs);
//             cond1 = fabs(lhs) / dzdist;
//             cond2 = fabs(rhs) / dzdist;
//             return cond1 + cond2 - dzdist;
//         case OP_SUB:
//             dzdist = fabs(lhs-rhs);
//             cond1 = fabs(lhs) / dzdist;
//             cond2 = fabs(rhs) / dzdist;
//             return cond1 + cond2 - dzdist;
//         case OP_SIN:
//             // cond1 = fabs(lhs / tan(lhs));
//             // x \to n*pi, n \in Z.
//             cond1 = 1 / fabs(remainder(lhs, PI));
//             return cond1;
//         case OP_COS:
//             // cond1 = fabs(lhs * tan(lhs));
//             // x \to n*pi + pi/2, n \in Z.
//             cond1 = 1 / fabs(remainder((remainder(lhs, PI)-PI_2),PI));
//             return cond1;
//         case OP_TAN:
//             // cond1 = fabs(lhs / (sin(lhs) * cos(lhs)));
//             // x \to n*pi/2, n \in Z.
//             cond1 = 1 / fabs(remainder(lhs, PI_2));
//             return cond1;
//         case OP_ASIN:
//             cond1 = fabs(lhs / (sqrt(1-lhs*lhs) * asin(lhs)));
//             return cond1;
//         case OP_ACOS:
//             cond1 = fabs(lhs / (sqrt(1-lhs*lhs) * acos(lhs)));
//             return cond1;
//         case OP_SINH:
//             cond1 = fabs(lhs / tanh(lhs));
//             return cond1;
//         case OP_COSH:
//             cond1 = fabs(lhs * tanh(lhs));
//             return cond1;
//         case OP_LOG:
//             dzdist = fabs(lhs - 1);
//             cond1 = fabs(1 / log(lhs));
//             return cond1 - dzdist;
//         case OP_LOG10:
//             dzdist = fabs(lhs - 1);
//             cond1 = fabs(1 / log(lhs));
//             return cond1 - dzdist;
//         case OP_POW:
//             cond1 = fabs(rhs);
//             cond2 = fabs(rhs * log(lhs));
//             return cond1 + cond2;
//         default:
//             return -DBL_MAX;
//     }
//     return -DBL_MAX;
// }

// double rawCondition(uint64_t opcode, double lhs, double rhs) {
//     double cond1, cond2, dzdist;
//     switch(opcode) {
//         case OP_ADD:
//             dzdist = fabs(lhs+rhs);
//             cond1 = fabs(lhs) / dzdist;
//             cond2 = fabs(rhs) / dzdist;
//             return cond1 + cond2;
//         case OP_SUB:
//             dzdist = fabs(lhs-rhs);
//             cond1 = fabs(lhs) / dzdist;
//             cond2 = fabs(rhs) / dzdist;
//             return cond1 + cond2;
//         case OP_SIN:
//             cond1 = fabs(lhs / tan(lhs));
//             return cond1;
//         case OP_COS:
//             cond1 = fabs(lhs * tan(lhs));
//             return cond1;
//         case OP_TAN:
//             cond1 = fabs(lhs / (sin(lhs) * cos(lhs)));
//             return cond1;
//         case OP_ASIN:
//             cond1 = fabs(lhs / (sqrt(1-lhs*lhs) * asin(lhs)));
//             return cond1;
//         case OP_ACOS:
//             cond1 = fabs(lhs / (sqrt(1-lhs*lhs) * acos(lhs)));
//             return cond1;
//         case OP_SINH:
//             cond1 = fabs(lhs / tanh(lhs));
//             return cond1;
//         case OP_COSH:
//             cond1 = fabs(lhs * tanh(lhs));
//             return cond1;
//         case OP_LOG:
//             dzdist = fabs(lhs - 1);
//             cond1 = fabs(1 / log(lhs));
//             return cond1;
//         case OP_LOG10:
//             dzdist = fabs(lhs - 1);
//             cond1 = fabs(1 / log(lhs));
//             return cond1;
//         case OP_POW:
//             cond1 = fabs(rhs);
//             cond2 = fabs(rhs * log(lhs));
//             return cond1 + cond2;
//         default:
//             return 1;
//     }
//     return 1;
// }

// double negInvRevisedCondition(uint64_t opcode, double lhs, double rhs){
//     return -1.0/(revisedCondition(opcode,lhs,rhs));
// }


int main ()
{
    float a, b;
    double x, y;
    float aULP;
    double xULP;

    uint32_t asign, aexpo, afrac;
    uint32_t bsign, bexpo, bfrac;
    uint32_t distf, a32, b32;

    uint64_t xsign, xexpo, xfrac;
    uint64_t ysign, yexpo, yfrac;
    uint64_t distd, x64, y64;
    
    a = 32.0;
    b = 15.0;
    x = DBL_NEGINF;
    y = DBL_MAX;

    xsign = getDoubleSign(x);
    xexpo = getDoubleExpo(x);
    xfrac = getDoubleFrac(x);

    ysign = getDoubleSign(y);
    yexpo = getDoubleExpo(y);
    yfrac = getDoubleFrac(y);


    asign = getFloatSign(a);
    aexpo = getFloatExpo(a);
    afrac = getFloatFrac(a);

    bsign = getFloatSign(b);
    bexpo = getFloatExpo(b);
    bfrac = getFloatFrac(b);

    distf = floatDist(a, b);
    distd = doubleDist(x, y);

    double dd = (double)(distd);

    double dnum = log(dd) / log(2.0);

    double distdnum = i64ToDouble(distd);
    uint64_t numd = getDoubleExpo(distdnum)-1023;

    aULP = floatULP(a);
    xULP = doubleULP(x);


    a32 = floatToI32(a);
    b32 = floatToI32(b);

    x64 = doubleToI64(x);
    y64 = doubleToI64(y);

    printf("xsign is %lu\n", xsign);
    printf("xexpo is %lu\n", xexpo);
    printf("xfrac is %lu\n", xfrac);

    printf("ysign is %lu\n", ysign);
    printf("yexpo is %lu\n", yexpo);
    printf("yfrac is %lu\n", yfrac);

    printf("asign is %u\n", asign);
    printf("aexpo is %u\n", aexpo);
    printf("afrac is %u\n", afrac);

    printf("bsign is %u\n", bsign);
    printf("bexpo is %u\n", bexpo);
    printf("bfrac is %u\n", bfrac);

    printf("distf is %u\n", distf);
    printf("distd is %lu\n", distd);
    printf("numd is %lu\n", numd);
    printf("dd is %lf\n", dd);
    printf("dnum is %lf\n", dnum);

    printf("aULP is %le\n", aULP);
    printf("xULP is %.36le\n", xULP);

    printf("a32 is %u\n", a32);
    printf("b32 is %u\n", b32);

    printf("x64 is %lu\n", x64);
    printf("y64 is %lu\n", y64);


    double num, flag;
    int count = 32;
    flag = 1.0;
    num = 1.0;
    for (int i=0; i<count; i++)
    {
        printf(" %lu", getDoubleExpo(num));
        num += flag;
    }
    printf("\n");

    double num1=0.3125;
    printf("DBL_MAX is %.100le\n", DBL_MAX);
    printf("DBL_MIN is %.100le\n", DBL_MIN);
    printf("The Frac of DBL_MAX is %lu\n", getDoubleFrac(DBL_MAX));
    printf("The Frac of DBL_MIN is %lu\n", getDoubleFrac(DBL_MIN));
    printf("The Expo of DBL_MAX is %lu\n", getDoubleExpo(DBL_MAX));
    printf("The Expo of DBL_MIN is %lu\n", getDoubleExpo(DBL_MIN));
    printf("The Expo of num1 is %lu\n", getDoubleExpo(num1));
    printf("The Frac of num1 is %lu\n", getDoubleFrac(num1));
    double new_num1 = buildDouble(getDoubleSign(num1), getDoubleExpo(num1), 0);
    printf("new_num1 is %.64lf\n", new_num1);

    char tmp[64];
    sprintf(tmp, "%le", num1);
    printf("tmp is %s\n", tmp);

    return 0;
}
