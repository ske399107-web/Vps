.class Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CrhBytes:I = 0x40

.field public static final DilithiumD:I = 0xd

.field public static final DilithiumN:I = 0x100

.field public static final DilithiumPolyT0PackedBytes:I = 0x1a0

.field public static final DilithiumPolyT1PackedBytes:I = 0x140

.field public static final DilithiumQ:I = 0x7fe001

.field public static final DilithiumQinv:I = 0x3802001

.field public static final RndBytes:I = 0x20

.field public static final SeedBytes:I = 0x20

.field public static final TrBytes:I = 0x40


# instance fields
.field private final CryptoBytes:I

.field private final CryptoPublicKeyBytes:I

.field private final CryptoSecretKeyBytes:I

.field private final DilithiumBeta:I

.field private final DilithiumCTilde:I

.field private final DilithiumEta:I

.field private final DilithiumGamma1:I

.field private final DilithiumGamma2:I

.field private final DilithiumK:I

.field private final DilithiumL:I

.field private final DilithiumMode:I

.field private final DilithiumOmega:I

.field private final DilithiumPolyEtaPackedBytes:I

.field private final DilithiumPolyVecHPackedBytes:I

.field private final DilithiumPolyW1PackedBytes:I

.field private final DilithiumPolyZPackedBytes:I

.field private final DilithiumTau:I

.field private final PolyUniformGamma1NBlocks:I

.field private final random:Ljava/security/SecureRandom;

.field final shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

.field private final symmetric:Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric;


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    .line 6
    const/16 v1, 0x100

    .line 8
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 11
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    .line 13
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumMode:I

    .line 15
    const/16 v0, 0x20

    .line 17
    const/high16 v1, 0x20000

    .line 19
    const/16 v2, 0x60

    .line 21
    const/4 v3, 0x4

    .line 22
    const/high16 v4, 0x80000

    .line 24
    const/4 v5, 0x2

    .line 25
    const/16 v6, 0x80

    .line 27
    if-eq p1, v5, :cond_2

    .line 29
    const/4 v7, 0x3

    .line 30
    const/16 v8, 0x280

    .line 32
    const v9, 0x3ff00

    .line 35
    const/4 v10, 0x5

    .line 36
    if-eq p1, v7, :cond_1

    .line 38
    if-ne p1, v10, :cond_0

    .line 40
    const/16 p1, 0x8

    .line 42
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    .line 44
    const/4 p1, 0x7

    .line 45
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumL:I

    .line 47
    iput v5, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumEta:I

    .line 49
    const/16 p1, 0x3c

    .line 51
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumTau:I

    .line 53
    const/16 p1, 0x78

    .line 55
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumBeta:I

    .line 57
    iput v4, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma1:I

    .line 59
    iput v9, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma2:I

    .line 61
    const/16 p1, 0x4b

    .line 63
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumOmega:I

    .line 65
    iput v8, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyZPackedBytes:I

    .line 67
    iput v6, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    .line 69
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyEtaPackedBytes:I

    .line 71
    const/16 p1, 0x40

    .line 73
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 78
    const-string v0, "The mode "

    .line 80
    const-string v1, "is not supported by Crystals Dilithium!"

    .line 82
    invoke-static {v0, p1, v1}, Lo/o5;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p2

    .line 90
    :cond_1
    const/4 p1, 0x6

    .line 91
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    .line 93
    iput v10, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumL:I

    .line 95
    iput v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumEta:I

    .line 97
    const/16 p1, 0x31

    .line 99
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumTau:I

    .line 101
    const/16 p1, 0xc4

    .line 103
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumBeta:I

    .line 105
    iput v4, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma1:I

    .line 107
    iput v9, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma2:I

    .line 109
    const/16 p1, 0x37

    .line 111
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumOmega:I

    .line 113
    iput v8, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyZPackedBytes:I

    .line 115
    iput v6, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    .line 117
    iput v6, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyEtaPackedBytes:I

    .line 119
    const/16 p1, 0x30

    .line 121
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    iput v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    .line 126
    iput v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumL:I

    .line 128
    iput v5, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumEta:I

    .line 130
    const/16 p1, 0x27

    .line 132
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumTau:I

    .line 134
    const/16 p1, 0x4e

    .line 136
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumBeta:I

    .line 138
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma1:I

    .line 140
    const p1, 0x17400

    .line 143
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma2:I

    .line 145
    const/16 p1, 0x50

    .line 147
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumOmega:I

    .line 149
    const/16 p1, 0x240

    .line 151
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyZPackedBytes:I

    .line 153
    const/16 p1, 0xc0

    .line 155
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    .line 157
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyEtaPackedBytes:I

    .line 159
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    .line 161
    :goto_0
    new-instance p1, Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric$ShakeSymmetric;

    .line 163
    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric$ShakeSymmetric;-><init>()V

    .line 166
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric;

    .line 168
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->random:Ljava/security/SecureRandom;

    .line 170
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumOmega:I

    .line 172
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    .line 174
    add-int/2addr p2, v2

    .line 175
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyVecHPackedBytes:I

    .line 177
    mul-int/lit16 v3, v2, 0x140

    .line 179
    add-int/2addr v3, v0

    .line 180
    iput v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->CryptoPublicKeyBytes:I

    .line 182
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumL:I

    .line 184
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyEtaPackedBytes:I

    .line 186
    mul-int v5, v0, v3

    .line 188
    add-int/2addr v5, v6

    .line 189
    mul-int/2addr v3, v2

    .line 190
    add-int/2addr v3, v5

    .line 191
    mul-int/lit16 v2, v2, 0x1a0

    .line 193
    add-int/2addr v2, v3

    .line 194
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->CryptoSecretKeyBytes:I

    .line 196
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    .line 198
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyZPackedBytes:I

    .line 200
    invoke-static {v0, v3, v2, p2}, Lo/o5;->d(IIII)I

    .line 203
    move-result p2

    .line 204
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->CryptoBytes:I

    .line 206
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma1:I

    .line 208
    if-ne p2, v1, :cond_3

    .line 210
    iget p1, p1, Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric;->stream256BlockBytes:I

    .line 212
    add-int/lit16 p2, p1, 0x23f

    .line 214
    :goto_1
    div-int/2addr p2, p1

    .line 215
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->PolyUniformGamma1NBlocks:I

    .line 217
    goto :goto_2

    .line 218
    :cond_3
    if-ne p2, v4, :cond_4

    .line 220
    iget p1, p1, Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric;->stream256BlockBytes:I

    .line 222
    add-int/lit16 p2, p1, 0x27f

    .line 224
    goto :goto_1

    .line 225
    :goto_2
    return-void

    .line 226
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 228
    const-string p2, "Wrong Dilithium Gamma1!"

    .line 230
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 233
    throw p1
.end method

.method private doVerifyInternal([B[BILorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B)Z
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->CryptoBytes:I

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    return v1

    :cond_0
    new-instance p3, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {p3, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    invoke-static {v0, p3, p2, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->unpackSignature(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;[BLorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumGamma1()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumBeta()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->checkNorm(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    new-instance v2, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;

    invoke-direct {v3, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v4, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v5, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v5, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    invoke-static {v4, p6, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->unpackPublicKey(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;[BLorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    move-result-object p6

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    invoke-virtual {v2, p2, v1, v4}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;->challenge([BII)V

    invoke-virtual {v3, p5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->expandMatrix([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->polyVecNtt()V

    invoke-virtual {v3, v5, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;->polyNtt()V

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->shiftLeft()V

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->polyVecNtt()V

    invoke-virtual {p6, v2, p6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/Poly;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v5, p6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->subtract(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->reduce()V

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->invNttToMont()V

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->conditionalAddQ()V

    invoke-virtual {v5, v5, p3}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->useHint(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    const/16 p3, 0x40

    invoke-virtual {v5, p0, p1, p3}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->packW1(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;[BI)V

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    iget p6, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    mul-int/2addr p5, p6

    add-int/2addr p5, p3

    invoke-virtual {p4, p1, v1, p5}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    invoke-virtual {p4, p1, v1, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    invoke-static {p3, p2, v1, p1, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual(I[BI[BI)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public GetSymmetric()Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/mldsa/Symmetric;

    return-object v0
.end method

.method public absorbCtx(Z[B)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update(B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v0, p2

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update(B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    :cond_0
    return-void
.end method

.method public deriveT1([B[B[B[B[B[B)[B
    .locals 13

    move-object v7, p0

    new-instance v8, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;

    invoke-direct {v8, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v9, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v10, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v10, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v11, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v12, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    move-object v0, v12

    move-object v1, v9

    move-object v2, v10

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->unpackSecretKey(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;[B[B[BLorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    move-object v0, p1

    invoke-virtual {v8, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->expandMatrix([B)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    invoke-virtual {v9, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->copyTo(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->polyVecNtt()V

    invoke-virtual {v8, v11, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->reduce()V

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->invNttToMont()V

    invoke-virtual {v11, v10}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->addPolyVecK(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->conditionalAddQ()V

    invoke-virtual {v11, v12}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->power2Round(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-static {v11, p0}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->packPublicKey(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)[B

    move-result-object v0

    return-object v0
.end method

.method public generateKeyPair()[[B
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->generateKeyPairInternal([B)[[B

    move-result-object v0

    return-object v0
.end method

.method public generateKeyPairInternal([B)[[B
    .locals 24

    move-object/from16 v7, p0

    const/16 v0, 0x80

    new-array v1, v0, [B

    const/16 v2, 0x40

    new-array v3, v2, [B

    const/16 v4, 0x20

    new-array v5, v4, [B

    new-array v6, v2, [B

    new-array v8, v4, [B

    new-instance v9, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;

    invoke-direct {v9, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v10, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v10, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v11, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v12, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v13, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v13, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    iget-object v14, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/4 v15, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v14, v2, v15, v4}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object v14, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v4, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    int-to-byte v4, v4

    invoke-virtual {v14, v4}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update(B)V

    iget-object v4, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v14, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumL:I

    int-to-byte v14, v14

    invoke-virtual {v4, v14}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update(B)V

    iget-object v4, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v4, v1, v15, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    const/16 v0, 0x20

    invoke-static {v1, v15, v5, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x40

    invoke-static {v1, v0, v6, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x60

    invoke-static {v1, v4, v8, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v9, v5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->expandMatrix([B)V

    invoke-virtual {v10, v6, v15}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->uniformEta([BS)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumL:I

    int-to-short v0, v0

    invoke-virtual {v11, v6, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->uniformEta([BS)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v0, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    invoke-virtual {v10, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->copyTo(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->polyVecNtt()V

    invoke-virtual {v9, v12, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->reduce()V

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->invNttToMont()V

    invoke-virtual {v12, v11}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->addPolyVecK(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->conditionalAddQ()V

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->power2Round(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-static {v12, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->packPublicKey(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)[B

    move-result-object v9

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x20

    invoke-virtual {v0, v5, v15, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v1, v9

    invoke-virtual {v0, v9, v15, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object v0, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x40

    invoke-virtual {v0, v3, v15, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    move-object v0, v5

    move-object v1, v3

    move-object v2, v8

    move-object v3, v13

    move-object v4, v10

    move-object v5, v11

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->packSecretKey([B[B[BLorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)[[B

    move-result-object v0

    aget-object v16, v0, v15

    const/4 v1, 0x1

    aget-object v17, v0, v1

    const/4 v1, 0x2

    aget-object v18, v0, v1

    const/4 v1, 0x3

    aget-object v19, v0, v1

    const/4 v1, 0x4

    aget-object v20, v0, v1

    const/4 v1, 0x5

    aget-object v21, v0, v1

    move-object/from16 v22, v9

    move-object/from16 v23, p1

    filled-new-array/range {v16 .. v23}, [[B

    move-result-object v0

    return-object v0
.end method

.method public generateMu(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)[B
    .locals 3

    const/16 v0, 0x40

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    return-object v1
.end method

.method public generateSignature([BLorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B[B[B[B[B)[B
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->CryptoBytes:I

    new-array v10, v0, [B

    const/16 v11, 0x40

    new-array v12, v11, [B

    new-instance v13, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v13, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v14, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v14, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v15, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;

    invoke-direct {v15, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v6, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v5, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v5, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v4, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v3, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;

    invoke-direct {v2, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;

    invoke-direct {v1, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;

    invoke-direct {v0, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v17, v1

    move-object v1, v13

    move-object/from16 v18, v2

    move-object v2, v5

    move-object/from16 v19, v3

    move-object/from16 v3, p5

    move-object/from16 v20, v4

    move-object/from16 v4, p6

    move-object/from16 p5, v5

    move-object/from16 v5, p7

    move-object/from16 p6, v6

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->unpackSecretKey(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;[B[B[BLorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    const/16 v0, 0x80

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    move-object/from16 v4, p8

    invoke-static {v4, v3, v1, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8, v3, v1, v11, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v9, v1, v3, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {v9, v12, v3, v11}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->expandMatrix([B)V

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->polyVecNtt()V

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->polyVecNtt()V

    invoke-virtual/range {p6 .. p6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->polyVecNtt()V

    move v0, v3

    move v2, v0

    :goto_0
    const/16 v4, 0x3e8

    if-ge v0, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v2, 0x1

    int-to-short v4, v4

    invoke-virtual {v14, v12, v2}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->uniformGamma1([BS)V

    invoke-virtual {v14, v15}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->copyTo(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->polyVecNtt()V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2, v15}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecMatrix;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->reduce()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->invNttToMont()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->conditionalAddQ()V

    move-object/from16 v5, v19

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->decompose(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v2, v7, v10, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->packW1(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;[BI)V

    invoke-virtual {v9, v8, v3, v11}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget v6, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    iget v11, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    mul-int/2addr v6, v11

    invoke-virtual {v9, v10, v3, v6}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget v6, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    invoke-virtual {v9, v10, v3, v6}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    iget v6, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    move-object/from16 v11, v17

    invoke-virtual {v11, v10, v3, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;->challenge([BII)V

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/mldsa/Poly;->polyNtt()V

    invoke-virtual {v15, v11, v13}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/Poly;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->invNttToMont()V

    invoke-virtual {v15, v14}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->addPolyVecL(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;)V

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->reduce()V

    iget v6, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma1:I

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumBeta:I

    sub-int/2addr v6, v3

    invoke-virtual {v15, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;->checkNorm(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v3, p5

    move/from16 p3, v0

    move-object/from16 v17, v1

    move-object/from16 v6, v18

    goto :goto_1

    :cond_0
    move-object/from16 v3, p5

    move-object/from16 v6, v18

    invoke-virtual {v6, v11, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/Poly;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->invNttToMont()V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->subtract(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->reduce()V

    move/from16 p3, v0

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma2:I

    move-object/from16 v17, v1

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumBeta:I

    sub-int/2addr v0, v1

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->checkNorm(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p6

    invoke-virtual {v6, v11, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->pointwisePolyMontgomery(Lorg/bouncycastle/pqc/crypto/mldsa/Poly;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->invNttToMont()V

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->reduce()V

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma2:I

    invoke-virtual {v6, v1}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->checkNorm(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 p6, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->addPolyVecK(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)V

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->conditionalAddQ()V

    invoke-virtual {v6, v5, v2}, Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;->makeHint(Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;)I

    move-result v1

    move-object/from16 p6, v0

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumOmega:I

    if-le v1, v0, :cond_3

    :goto_1
    move/from16 v0, p3

    move-object/from16 v20, v2

    move-object/from16 p5, v3

    move v2, v4

    move-object/from16 v19, v5

    move-object/from16 v18, v6

    move-object/from16 v1, v17

    const/4 v3, 0x0

    move-object/from16 v17, v11

    const/16 v11, 0x40

    goto/16 :goto_0

    :cond_3
    invoke-static {v10, v15, v6, v7}, Lorg/bouncycastle/pqc/crypto/mldsa/Packing;->packSignature([BLorg/bouncycastle/pqc/crypto/mldsa/PolyVecL;Lorg/bouncycastle/pqc/crypto/mldsa/PolyVecK;Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;)V

    return-object v10

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCryptoPublicKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->CryptoPublicKeyBytes:I

    return v0
.end method

.method public getDilithiumBeta()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumBeta:I

    return v0
.end method

.method public getDilithiumCTilde()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    return v0
.end method

.method public getDilithiumEta()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumEta:I

    return v0
.end method

.method public getDilithiumGamma1()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma1:I

    return v0
.end method

.method public getDilithiumGamma2()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumGamma2:I

    return v0
.end method

.method public getDilithiumK()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    return v0
.end method

.method public getDilithiumL()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumL:I

    return v0
.end method

.method public getDilithiumOmega()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumOmega:I

    return v0
.end method

.method public getDilithiumPolyEtaPackedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyEtaPackedBytes:I

    return v0
.end method

.method public getDilithiumPolyW1PackedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    return v0
.end method

.method public getDilithiumPolyZPackedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyZPackedBytes:I

    return v0
.end method

.method public getDilithiumTau()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumTau:I

    return v0
.end method

.method public getPolyUniformGamma1NBlocks()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->PolyUniformGamma1NBlocks:I

    return v0
.end method

.method public getShake256Digest()Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)V

    return-object v0
.end method

.method public initSign([BZ[B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-virtual {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {p0, p2, p3}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->absorbCtx(Z[B)V

    return-void
.end method

.method public initVerify([B[BZ[B)V
    .locals 5

    const/16 v0, 0x40

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v2, p2

    invoke-virtual {p1, p2, v4, v2}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p1, v1, v4, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p1, v1, v4, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->absorbCtx(Z[B)V

    return-void
.end method

.method public signInternal([BI[B[B[B[B[B[B)[B
    .locals 10

    move-object v9, p0

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v2, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)V

    const/4 v0, 0x0

    move-object v1, p1

    move v3, p2

    invoke-virtual {v2, p1, v0, p2}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update([BII)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->generateMu(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)[B

    move-result-object v1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->generateSignature([BLorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public verifyInternal([BILorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B)Z
    .locals 8

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x40

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v2, v0, [B

    const/4 v0, 0x0

    invoke-virtual {p3, v2, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BI)I

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->doVerifyInternal([B[BILorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B)Z

    move-result p1

    return p1
.end method

.method public verifyInternalMu([B)Z
    .locals 3

    const/16 v0, 0x40

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BI)I

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    return p1
.end method

.method public verifyInternalMuSignature([B[BILorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B)Z
    .locals 8

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumK:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumPolyW1PackedBytes:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x40

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->DilithiumCTilde:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v2, v0, [B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->doVerifyInternal([B[BILorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B)Z

    move-result p1

    return p1
.end method
