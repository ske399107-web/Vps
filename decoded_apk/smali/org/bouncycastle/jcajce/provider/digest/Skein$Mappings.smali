.class public Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;
.super Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/Skein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/digest/Skein;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;-><init>()V

    return-void
.end method

.method private addSkeinMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;II)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skein-MAC-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$SkeinMac_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$SkeinMacKeyGenerator_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mac."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Alg.Alias.Mac.Skein-MAC"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "KeyGenerator."

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Alg.Alias.KeyGenerator.Skein-MAC"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->PREFIX:Ljava/lang/String;

    .line 8
    const-string v2, "$Digest_256_128"

    .line 10
    const-string v3, "MessageDigest.Skein-256-128"

    .line 12
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v0

    .line 16
    const-string v2, "$Digest_256_160"

    .line 18
    const-string v3, "MessageDigest.Skein-256-160"

    .line 20
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v0

    .line 24
    const-string v2, "$Digest_256_224"

    .line 26
    const-string v3, "MessageDigest.Skein-256-224"

    .line 28
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v0

    .line 32
    const-string v2, "$Digest_256_256"

    .line 34
    const-string v3, "MessageDigest.Skein-256-256"

    .line 36
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v0

    .line 40
    const-string v2, "$Digest_512_128"

    .line 42
    const-string v3, "MessageDigest.Skein-512-128"

    .line 44
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object v0

    .line 48
    const-string v2, "$Digest_512_160"

    .line 50
    const-string v3, "MessageDigest.Skein-512-160"

    .line 52
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-result-object v0

    .line 56
    const-string v2, "$Digest_512_224"

    .line 58
    const-string v3, "MessageDigest.Skein-512-224"

    .line 60
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    move-result-object v0

    .line 64
    const-string v2, "$Digest_512_256"

    .line 66
    const-string v3, "MessageDigest.Skein-512-256"

    .line 68
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    move-result-object v0

    .line 72
    const-string v2, "$Digest_512_384"

    .line 74
    const-string v3, "MessageDigest.Skein-512-384"

    .line 76
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    move-result-object v0

    .line 80
    const-string v2, "$Digest_512_512"

    .line 82
    const-string v3, "MessageDigest.Skein-512-512"

    .line 84
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    move-result-object v0

    .line 88
    const-string v2, "$Digest_1024_384"

    .line 90
    const-string v3, "MessageDigest.Skein-1024-384"

    .line 92
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    move-result-object v0

    .line 96
    const-string v2, "$Digest_1024_512"

    .line 98
    const-string v3, "MessageDigest.Skein-1024-512"

    .line 100
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    move-result-object v0

    .line 104
    const-string v2, "$Digest_1024_1024"

    .line 106
    const-string v3, "MessageDigest.Skein-1024-1024"

    .line 108
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    move-result-object v0

    .line 112
    const-string v2, "$HashMac_256_128"

    .line 114
    invoke-static {v0, v1, v2}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    const-string v2, "$HMacKeyGenerator_256_128"

    .line 120
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    const-string v3, "Skein-256-128"

    .line 126
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "$HashMac_256_160"

    .line 131
    invoke-static {v1, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    const-string v2, "$HMacKeyGenerator_256_160"

    .line 137
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    move-result-object v2

    .line 141
    const-string v3, "Skein-256-160"

    .line 143
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "$HashMac_256_224"

    .line 148
    invoke-static {v1, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    const-string v2, "$HMacKeyGenerator_256_224"

    .line 154
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object v2

    .line 158
    const-string v3, "Skein-256-224"

    .line 160
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "$HashMac_256_256"

    .line 165
    invoke-static {v1, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    const-string v2, "$HMacKeyGenerator_256_256"

    .line 171
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v2

    .line 175
    const-string v3, "Skein-256-256"

    .line 177
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "$HashMac_512_128"

    .line 182
    invoke-static {v1, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 186
    const-string v2, "$HMacKeyGenerator_512_128"

    .line 188
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    move-result-object v2

    .line 192
    const-string v3, "Skein-512-128"

    .line 194
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "$HashMac_512_160"

    .line 199
    invoke-static {v1, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 203
    const-string v2, "$HMacKeyGenerator_512_160"

    .line 205
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    move-result-object v2

    .line 209
    const-string v3, "Skein-512-160"

    .line 211
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "$HashMac_512_224"

    .line 216
    invoke-static {v1, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    move-result-object v0

    .line 220
    const-string v2, "$HMacKeyGenerator_512_224"

    .line 222
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    move-result-object v2

    .line 226
    const-string v3, "Skein-512-224"

    .line 228
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "$HashMac_512_256"

    .line 233
    invoke-static {v1, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    move-result-object v0

    .line 237
    const-string v2, "$HMacKeyGenerator_512_256"

    .line 239
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    move-result-object v2

    .line 243
    const-string v3, "Skein-512-256"

    .line 245
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "$HashMac_512_384"

    .line 250
    invoke-static {v1, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    move-result-object v0

    .line 254
    const-string v2, "$HMacKeyGenerator_512_384"

    .line 256
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    move-result-object v2

    .line 260
    const-string v3, "Skein-512-384"

    .line 262
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "$HashMac_512_512"

    .line 267
    invoke-static {v1, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    move-result-object v0

    .line 271
    const-string v2, "$HMacKeyGenerator_512_512"

    .line 273
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    move-result-object v2

    .line 277
    const-string v3, "Skein-512-512"

    .line 279
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "$HashMac_1024_384"

    .line 284
    invoke-static {v1, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    move-result-object v0

    .line 288
    const-string v2, "$HMacKeyGenerator_1024_384"

    .line 290
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    move-result-object v2

    .line 294
    const-string v3, "Skein-1024-384"

    .line 296
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "$HashMac_1024_512"

    .line 301
    invoke-static {v1, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    move-result-object v0

    .line 305
    const-string v2, "$HMacKeyGenerator_1024_512"

    .line 307
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    move-result-object v2

    .line 311
    const-string v3, "Skein-1024-512"

    .line 313
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "$HashMac_1024_1024"

    .line 318
    invoke-static {v1, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    move-result-object v0

    .line 322
    const-string v2, "$HMacKeyGenerator_1024_1024"

    .line 324
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    move-result-object v1

    .line 328
    const-string v2, "Skein-1024-1024"

    .line 330
    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/16 v0, 0x100

    .line 335
    const/16 v1, 0x80

    .line 337
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->addSkeinMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;II)V

    .line 340
    const/16 v2, 0xa0

    .line 342
    invoke-direct {p0, p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->addSkeinMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;II)V

    .line 345
    const/16 v3, 0xe0

    .line 347
    invoke-direct {p0, p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->addSkeinMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;II)V

    .line 350
    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->addSkeinMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;II)V

    .line 353
    const/16 v4, 0x200

    .line 355
    invoke-direct {p0, p1, v4, v1}, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->addSkeinMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;II)V

    .line 358
    invoke-direct {p0, p1, v4, v2}, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->addSkeinMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;II)V

    .line 361
    invoke-direct {p0, p1, v4, v3}, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->addSkeinMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;II)V

    .line 364
    invoke-direct {p0, p1, v4, v0}, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->addSkeinMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;II)V

    .line 367
    const/16 v0, 0x180

    .line 369
    invoke-direct {p0, p1, v4, v0}, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->addSkeinMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;II)V

    .line 372
    invoke-direct {p0, p1, v4, v4}, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->addSkeinMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;II)V

    .line 375
    const/16 v1, 0x400

    .line 377
    invoke-direct {p0, p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->addSkeinMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;II)V

    .line 380
    invoke-direct {p0, p1, v1, v4}, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->addSkeinMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;II)V

    .line 383
    invoke-direct {p0, p1, v1, v1}, Lorg/bouncycastle/jcajce/provider/digest/Skein$Mappings;->addSkeinMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;II)V

    .line 386
    return-void
.end method
