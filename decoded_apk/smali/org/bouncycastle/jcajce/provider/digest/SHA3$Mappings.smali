.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$Mappings;
.super Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/SHA3;
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

    const-class v0, Lorg/bouncycastle/jcajce/provider/digest/SHA3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/digest/SHA3$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lorg/bouncycastle/jcajce/provider/digest/SHA3$Mappings;->PREFIX:Ljava/lang/String;

    .line 8
    const-string v2, "$Digest224"

    .line 10
    const-string v3, "MessageDigest.SHA3-224"

    .line 12
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v0

    .line 16
    const-string v3, "$Digest256"

    .line 18
    const-string v4, "MessageDigest.SHA3-256"

    .line 20
    invoke-static {v0, v1, v3, p1, v4}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v0

    .line 24
    const-string v4, "$Digest384"

    .line 26
    const-string v5, "MessageDigest.SHA3-384"

    .line 28
    invoke-static {v0, v1, v4, p1, v5}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v0

    .line 32
    const-string v5, "$Digest512"

    .line 34
    const-string v6, "MessageDigest.SHA3-512"

    .line 36
    invoke-static {v0, v1, v5, p1, v6}, Lo/o5;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    const-string v6, "MessageDigest"

    .line 43
    invoke-static {p1, v1, v2, v6, v0}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 46
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    invoke-static {p1, v1, v3, v6, v0}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 51
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 53
    invoke-static {p1, v1, v4, v6, v0}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 56
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    invoke-interface {p1, v6, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string v2, "$DigestShake256_512"

    .line 83
    const-string v3, "MessageDigest.SHAKE256-512"

    .line 85
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    move-result-object v0

    .line 89
    const-string v3, "$DigestShake128_256"

    .line 91
    const-string v4, "MessageDigest.SHAKE128-256"

    .line 93
    invoke-static {v0, v1, v3, p1, v4}, Lo/o5;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 98
    invoke-static {p1, v1, v2, v6, v0}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 101
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 103
    invoke-static {p1, v1, v3, v6, v0}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 106
    const-string v0, "Alg.Alias.MessageDigest.SHAKE256"

    .line 108
    const-string v2, "SHAKE256-512"

    .line 110
    const-string v3, "Alg.Alias.MessageDigest.SHAKE128"

    .line 112
    const-string v4, "SHAKE128-256"

    .line 114
    invoke-static {p1, v0, v2, v3, v4}, Lo/o5;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    move-result-object v0

    .line 118
    const-string v2, "$HashMac224"

    .line 120
    invoke-static {v0, v1, v2}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    const-string v2, "$KeyGenerator224"

    .line 126
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v2

    .line 130
    const-string v3, "SHA3-224"

    .line 132
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 137
    invoke-virtual {p0, p1, v3, v0}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlias(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 140
    const-string v2, "$KeyFactory224"

    .line 142
    const-string v3, "SecretKeyFactory.HMACSHA3-224"

    .line 144
    const-string v4, "Alg.Alias.SecretKeyFactory."

    .line 146
    invoke-static {v1, v2, p1, v3, v4}, Lo/o5;->p(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    move-result-object v2

    .line 150
    const-string v3, "HMACSHA3-224"

    .line 152
    invoke-static {v2, v0, p1, v3, v1}, Lo/Ve;->r(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    move-result-object v0

    .line 156
    const-string v2, "$HashMac256"

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    const-string v2, "$KeyGenerator256"

    .line 167
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    move-result-object v3

    .line 171
    const-string v5, "SHA3-256"

    .line 173
    invoke-virtual {p0, p1, v5, v0, v3}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 178
    invoke-virtual {p0, p1, v5, v0}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlias(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 181
    const-string v3, "$KeyFactory256"

    .line 183
    const-string v5, "SecretKeyFactory.HMACSHA3-256"

    .line 185
    invoke-static {v1, v3, p1, v5, v4}, Lo/o5;->p(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    move-result-object v3

    .line 189
    const-string v5, "HMACSHA3-256"

    .line 191
    invoke-static {v3, v0, p1, v5, v1}, Lo/Ve;->r(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    move-result-object v0

    .line 195
    const-string v3, "$HashMac384"

    .line 197
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 204
    const-string v3, "$KeyGenerator384"

    .line 206
    invoke-static {v1, v3}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    move-result-object v3

    .line 210
    const-string v5, "SHA3-384"

    .line 212
    invoke-virtual {p0, p1, v5, v0, v3}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 217
    invoke-virtual {p0, p1, v5, v0}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlias(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 220
    const-string v3, "$KeyFactory384"

    .line 222
    const-string v5, "SecretKeyFactory.HMACSHA3-384"

    .line 224
    invoke-static {v1, v3, p1, v5, v4}, Lo/o5;->p(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    move-result-object v3

    .line 228
    const-string v5, "HMACSHA3-384"

    .line 230
    invoke-static {v3, v0, p1, v5, v1}, Lo/Ve;->r(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    move-result-object v0

    .line 234
    const-string v3, "$HashMac512"

    .line 236
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object v0

    .line 243
    const-string v3, "$KeyGenerator512"

    .line 245
    invoke-static {v1, v3}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    move-result-object v5

    .line 249
    const-string v6, "SHA3-512"

    .line 251
    invoke-virtual {p0, p1, v6, v0, v5}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 256
    invoke-virtual {p0, p1, v6, v0}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addHMACAlias(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 259
    const-string v5, "$KeyFactory512"

    .line 261
    const-string v6, "SecretKeyFactory.HMACSHA3-512"

    .line 263
    invoke-static {v1, v5, p1, v6, v4}, Lo/o5;->p(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    move-result-object v5

    .line 267
    const-string v6, "HMACSHA3-512"

    .line 269
    invoke-static {v5, v0, p1, v6, v1}, Lo/Ve;->r(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    move-result-object v0

    .line 273
    const-string v5, "$KMac128"

    .line 275
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object v0

    .line 282
    invoke-static {v1, v2}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    move-result-object v2

    .line 286
    const-string v5, "128"

    .line 288
    invoke-virtual {p0, p1, v5, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addKMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "$KeyFactoryKMAC128"

    .line 293
    const-string v2, "SecretKeyFactory.KMAC128"

    .line 295
    invoke-static {v1, v0, p1, v2, v4}, Lo/o5;->p(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    move-result-object v0

    .line 299
    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_Kmac128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 301
    const-string v5, "KMAC128"

    .line 303
    invoke-static {v0, v2, p1, v5, v1}, Lo/Ve;->r(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    move-result-object v0

    .line 307
    const-string v2, "$KMac256"

    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    move-result-object v0

    .line 316
    invoke-static {v1, v3}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    move-result-object v2

    .line 320
    const-string v3, "256"

    .line 322
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;->addKMACAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v0, "$KeyFactoryKMAC256"

    .line 327
    const-string v2, "SecretKeyFactory.KMAC256"

    .line 329
    invoke-static {v1, v0, p1, v2, v4}, Lo/o5;->p(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    move-result-object v0

    .line 333
    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_Kmac256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 335
    const-string v3, "KMAC256"

    .line 337
    invoke-static {v0, v2, p1, v3, v1}, Lo/Ve;->r(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    move-result-object v0

    .line 341
    const-string v2, "$DigestTupleHash256_512"

    .line 343
    const-string v3, "MessageDigest.TUPLEHASH256-512"

    .line 345
    invoke-static {v0, v2, p1, v3, v1}, Lo/o5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    move-result-object v0

    .line 349
    const-string v2, "$DigestTupleHash128_256"

    .line 351
    const-string v3, "MessageDigest.TUPLEHASH128-256"

    .line 353
    invoke-static {v0, v2, p1, v3}, Lo/o5;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 356
    const-string v0, "Alg.Alias.MessageDigest.TUPLEHASH256"

    .line 358
    const-string v2, "TUPLEHASH256-512"

    .line 360
    const-string v3, "Alg.Alias.MessageDigest.TUPLEHASH128"

    .line 362
    const-string v4, "TUPLEHASH128-256"

    .line 364
    invoke-static {p1, v0, v2, v3, v4}, Lo/o5;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    move-result-object v0

    .line 368
    const-string v2, "$DigestParallelHash256_512"

    .line 370
    const-string v3, "MessageDigest.PARALLELHASH256-512"

    .line 372
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    move-result-object v0

    .line 376
    const-string v2, "$DigestParallelHash128_256"

    .line 378
    const-string v3, "MessageDigest.PARALLELHASH128-256"

    .line 380
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 383
    const-string v0, "Alg.Alias.MessageDigest.PARALLELHASH256"

    .line 385
    const-string v1, "PARALLELHASH256-512"

    .line 387
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v0, "Alg.Alias.MessageDigest.PARALLELHASH128"

    .line 392
    const-string v1, "PARALLELHASH128-256"

    .line 394
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method
