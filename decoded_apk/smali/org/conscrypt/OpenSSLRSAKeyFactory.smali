.class public final Lorg/conscrypt/OpenSSLRSAKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 3
    instance-of v0, p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;

    .line 9
    check-cast p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 11
    invoke-direct {v0, p1}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;-><init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V

    .line 14
    return-object v0

    .line 15
    :cond_0
    instance-of v0, p1, Ljava/security/spec/RSAPrivateKeySpec;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    new-instance v0, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    .line 21
    check-cast p1, Ljava/security/spec/RSAPrivateKeySpec;

    .line 23
    invoke-direct {v0, p1}, Lorg/conscrypt/OpenSSLRSAPrivateKey;-><init>(Ljava/security/spec/RSAPrivateKeySpec;)V

    .line 26
    return-object v0

    .line 27
    :cond_1
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 29
    if-eqz v0, :cond_2

    .line 31
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 33
    const/4 v0, 0x6

    .line 34
    invoke-static {p1, v0}, Lorg/conscrypt/OpenSSLKey;->getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    const-string v1, "Must use RSAPublicKeySpec or PKCS8EncodedKeySpec; was "

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0

    .line 59
    :cond_3
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 61
    const-string v0, "keySpec == null"

    .line 63
    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p1
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 3
    instance-of v0, p1, Ljava/security/spec/RSAPublicKeySpec;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lorg/conscrypt/OpenSSLRSAPublicKey;

    .line 9
    check-cast p1, Ljava/security/spec/RSAPublicKeySpec;

    .line 11
    invoke-direct {v0, p1}, Lorg/conscrypt/OpenSSLRSAPublicKey;-><init>(Ljava/security/spec/RSAPublicKeySpec;)V

    .line 14
    return-object v0

    .line 15
    :cond_0
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 21
    const/4 v0, 0x6

    .line 22
    invoke-static {p1, v0}, Lorg/conscrypt/OpenSSLKey;->getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const-string v1, "Must use RSAPublicKeySpec or X509EncodedKeySpec; was "

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0

    .line 47
    :cond_2
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 49
    const-string v0, "keySpec == null"

    .line 51
    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1
.end method

.method public engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_13

    .line 3
    if-eqz p2, :cond_12

    .line 5
    const-string v0, "RSA"

    .line 7
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    .line 19
    const-class v1, Ljava/security/spec/RSAPublicKeySpec;

    .line 21
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 31
    new-instance p2, Ljava/security/spec/RSAPublicKeySpec;

    .line 33
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p2, v0, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 44
    return-object p2

    .line 45
    :cond_0
    instance-of v0, p1, Ljava/security/PublicKey;

    .line 47
    const-string v2, "X.509"

    .line 49
    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 57
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 60
    move-result-object p2

    .line 61
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_1

    .line 71
    if-eqz p2, :cond_1

    .line 73
    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 75
    invoke-direct {p1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 78
    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 84
    new-instance p2, Ljava/security/spec/RSAPublicKeySpec;

    .line 86
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 89
    move-result-object v0

    .line 90
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p2, v0, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 97
    return-object p2

    .line 98
    :cond_1
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 100
    const-string p2, "Not a valid X.509 encoding"

    .line 102
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p1

    .line 106
    :cond_2
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 108
    const-class v3, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 110
    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_3

    .line 118
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 120
    new-instance p2, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 122
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 125
    move-result-object v1

    .line 126
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 129
    move-result-object v2

    .line 130
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    .line 133
    move-result-object v3

    .line 134
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    .line 137
    move-result-object v4

    .line 138
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    .line 141
    move-result-object v5

    .line 142
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    .line 145
    move-result-object v6

    .line 146
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    .line 149
    move-result-object v7

    .line 150
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    .line 153
    move-result-object v8

    .line 154
    move-object v0, p2

    .line 155
    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 158
    return-object p2

    .line 159
    :cond_3
    const-class v4, Ljava/security/spec/RSAPrivateKeySpec;

    .line 161
    if-eqz v1, :cond_4

    .line 163
    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_4

    .line 169
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 171
    new-instance p2, Ljava/security/spec/RSAPrivateKeySpec;

    .line 173
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 176
    move-result-object v0

    .line 177
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    .line 180
    move-result-object p1

    .line 181
    invoke-direct {p2, v0, p1}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 184
    return-object p2

    .line 185
    :cond_4
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 187
    if-eqz v1, :cond_5

    .line 189
    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_5

    .line 195
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 197
    new-instance p2, Ljava/security/spec/RSAPrivateKeySpec;

    .line 199
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 202
    move-result-object v0

    .line 203
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    .line 206
    move-result-object p1

    .line 207
    invoke-direct {p2, v0, p1}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 210
    return-object p2

    .line 211
    :cond_5
    instance-of v1, p1, Ljava/security/PrivateKey;

    .line 213
    const-string v5, "Not a valid PKCS#8 encoding"

    .line 215
    const-string v6, "PKCS#8"

    .line 217
    if-eqz v1, :cond_8

    .line 219
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 222
    move-result v3

    .line 223
    if-eqz v3, :cond_8

    .line 225
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 228
    move-result-object p2

    .line 229
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    move-result p1

    .line 237
    if-eqz p1, :cond_7

    .line 239
    if-eqz p2, :cond_7

    .line 241
    new-instance p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 243
    invoke-direct {p1, p2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 246
    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 249
    move-result-object p1

    .line 250
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 252
    instance-of p2, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 254
    if-eqz p2, :cond_6

    .line 256
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 258
    new-instance p2, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 260
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 263
    move-result-object v1

    .line 264
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 267
    move-result-object v2

    .line 268
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    .line 271
    move-result-object v3

    .line 272
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    .line 275
    move-result-object v4

    .line 276
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    .line 279
    move-result-object v5

    .line 280
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    .line 283
    move-result-object v6

    .line 284
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    .line 287
    move-result-object v7

    .line 288
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    .line 291
    move-result-object v8

    .line 292
    move-object v0, p2

    .line 293
    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 296
    return-object p2

    .line 297
    :cond_6
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 299
    const-string p2, "Encoded key is not an RSAPrivateCrtKey"

    .line 301
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 304
    throw p1

    .line 305
    :cond_7
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 307
    invoke-direct {p1, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 310
    throw p1

    .line 311
    :cond_8
    if-eqz v1, :cond_a

    .line 313
    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 316
    move-result v3

    .line 317
    if-eqz v3, :cond_a

    .line 319
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 322
    move-result-object p2

    .line 323
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 326
    move-result-object p1

    .line 327
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    move-result p1

    .line 331
    if-eqz p1, :cond_9

    .line 333
    if-eqz p2, :cond_9

    .line 335
    new-instance p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 337
    invoke-direct {p1, p2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 340
    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 343
    move-result-object p1

    .line 344
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 346
    new-instance p2, Ljava/security/spec/RSAPrivateKeySpec;

    .line 348
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 351
    move-result-object v0

    .line 352
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    .line 355
    move-result-object p1

    .line 356
    invoke-direct {p2, v0, p1}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 359
    return-object p2

    .line 360
    :cond_9
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 362
    invoke-direct {p1, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 365
    throw p1

    .line 366
    :cond_a
    const-string v3, "Key is not encodable"

    .line 368
    if-eqz v1, :cond_d

    .line 370
    const-class v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 372
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 375
    move-result v1

    .line 376
    if-eqz v1, :cond_d

    .line 378
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 381
    move-result-object p2

    .line 382
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    move-result v0

    .line 390
    if-eqz v0, :cond_c

    .line 392
    if-eqz p2, :cond_b

    .line 394
    new-instance p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 396
    invoke-direct {p1, p2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 399
    return-object p1

    .line 400
    :cond_b
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 402
    invoke-direct {p1, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 405
    throw p1

    .line 406
    :cond_c
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    .line 410
    const-string v1, "Encoding type must be PKCS#8; was "

    .line 412
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 418
    move-result-object p1

    .line 419
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    move-result-object p1

    .line 426
    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 429
    throw p2

    .line 430
    :cond_d
    if-eqz v0, :cond_10

    .line 432
    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    .line 434
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 437
    move-result v0

    .line 438
    if-eqz v0, :cond_10

    .line 440
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 443
    move-result-object p2

    .line 444
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    move-result v0

    .line 452
    if-eqz v0, :cond_f

    .line 454
    if-eqz p2, :cond_e

    .line 456
    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 458
    invoke-direct {p1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 461
    return-object p1

    .line 462
    :cond_e
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 464
    invoke-direct {p1, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 467
    throw p1

    .line 468
    :cond_f
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    .line 472
    const-string v1, "Encoding type must be X.509; was "

    .line 474
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 480
    move-result-object p1

    .line 481
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    move-result-object p1

    .line 488
    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 491
    throw p2

    .line 492
    :cond_10
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    .line 496
    const-string v2, "Unsupported key type and key spec combination; key="

    .line 498
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    move-result-object p1

    .line 505
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 508
    move-result-object p1

    .line 509
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const-string p1, ", keySpec="

    .line 514
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 520
    move-result-object p1

    .line 521
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    move-result-object p1

    .line 528
    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 531
    throw v0

    .line 532
    :cond_11
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 534
    const-string p2, "Key must be a RSA key"

    .line 536
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 539
    throw p1

    .line 540
    :cond_12
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 542
    const-string p2, "keySpec == null"

    .line 544
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 547
    throw p1

    .line 548
    :cond_13
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 550
    const-string p2, "key == null"

    .line 552
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 555
    throw p1
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_9

    .line 3
    instance-of v0, p1, Lorg/conscrypt/OpenSSLRSAPublicKey;

    .line 5
    if-nez v0, :cond_8

    .line 7
    instance-of v0, p1, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    goto/16 :goto_0

    .line 13
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    .line 15
    if-eqz v0, :cond_1

    .line 17
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 19
    :try_start_0
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    .line 21
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, v1, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 32
    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 35
    move-result-object p1
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object p1

    .line 37
    :catch_0
    move-exception p1

    .line 38
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 40
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    throw v0

    .line 44
    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 46
    if-eqz v0, :cond_2

    .line 48
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 50
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 53
    move-result-object v1

    .line 54
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 57
    move-result-object v2

    .line 58
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    .line 61
    move-result-object v3

    .line 62
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    .line 65
    move-result-object v4

    .line 66
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    .line 69
    move-result-object v5

    .line 70
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    .line 73
    move-result-object v6

    .line 74
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    .line 77
    move-result-object v7

    .line 78
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    .line 81
    move-result-object v8

    .line 82
    :try_start_1
    new-instance p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 84
    move-object v0, p1

    .line 85
    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 88
    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 91
    move-result-object p1
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    return-object p1

    .line 93
    :catch_1
    move-exception p1

    .line 94
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 96
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .line 99
    throw v0

    .line 100
    :cond_2
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 102
    if-eqz v0, :cond_3

    .line 104
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 106
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 109
    move-result-object v0

    .line 110
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    .line 113
    move-result-object p1

    .line 114
    :try_start_2
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    .line 116
    invoke-direct {v1, v0, p1}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 119
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 122
    move-result-object p1
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    return-object p1

    .line 124
    :catch_2
    move-exception p1

    .line 125
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 127
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .line 130
    throw v0

    .line 131
    :cond_3
    instance-of v0, p1, Ljava/security/PrivateKey;

    .line 133
    const-string v1, "Key does not support encoding"

    .line 135
    if-eqz v0, :cond_5

    .line 137
    const-string v0, "PKCS#8"

    .line 139
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_5

    .line 149
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 152
    move-result-object p1

    .line 153
    if-eqz p1, :cond_4

    .line 155
    :try_start_3
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 157
    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 160
    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 163
    move-result-object p1
    :try_end_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_3

    .line 164
    return-object p1

    .line 165
    :catch_3
    move-exception p1

    .line 166
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 168
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .line 171
    throw v0

    .line 172
    :cond_4
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 174
    invoke-direct {p1, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 177
    throw p1

    .line 178
    :cond_5
    instance-of v0, p1, Ljava/security/PublicKey;

    .line 180
    if-eqz v0, :cond_7

    .line 182
    const-string v0, "X.509"

    .line 184
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_7

    .line 194
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 197
    move-result-object p1

    .line 198
    if-eqz p1, :cond_6

    .line 200
    :try_start_4
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    .line 202
    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 205
    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 208
    move-result-object p1
    :try_end_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_4} :catch_4

    .line 209
    return-object p1

    .line 210
    :catch_4
    move-exception p1

    .line 211
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 213
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .line 216
    throw v0

    .line 217
    :cond_6
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 219
    invoke-direct {p1, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 222
    throw p1

    .line 223
    :cond_7
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 232
    move-result-object p1

    .line 233
    const-string v1, "Key must be an RSA public or private key; was "

    .line 235
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    move-result-object p1

    .line 239
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 242
    throw v0

    .line 243
    :cond_8
    :goto_0
    return-object p1

    .line 244
    :cond_9
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 246
    const-string v0, "key == null"

    .line 248
    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 251
    throw p1
.end method
