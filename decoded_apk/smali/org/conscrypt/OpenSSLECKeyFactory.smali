.class public final Lorg/conscrypt/OpenSSLECKeyFactory;
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
    if-eqz p1, :cond_2

    .line 3
    instance-of v0, p1, Ljava/security/spec/ECPrivateKeySpec;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lorg/conscrypt/OpenSSLECPrivateKey;

    .line 9
    check-cast p1, Ljava/security/spec/ECPrivateKeySpec;

    .line 11
    invoke-direct {v0, p1}, Lorg/conscrypt/OpenSSLECPrivateKey;-><init>(Ljava/security/spec/ECPrivateKeySpec;)V

    .line 14
    return-object v0

    .line 15
    :cond_0
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 21
    const/16 v0, 0x198

    .line 23
    invoke-static {p1, v0}, Lorg/conscrypt/OpenSSLKey;->getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    const-string v1, "Must use ECPrivateKeySpec or PKCS8EncodedKeySpec; was "

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 47
    throw v0

    .line 48
    :cond_2
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 50
    const-string v0, "keySpec == null"

    .line 52
    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 55
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
    instance-of v0, p1, Ljava/security/spec/ECPublicKeySpec;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lorg/conscrypt/OpenSSLECPublicKey;

    .line 9
    check-cast p1, Ljava/security/spec/ECPublicKeySpec;

    .line 11
    invoke-direct {v0, p1}, Lorg/conscrypt/OpenSSLECPublicKey;-><init>(Ljava/security/spec/ECPublicKeySpec;)V

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
    const/16 v0, 0x198

    .line 23
    invoke-static {p1, v0}, Lorg/conscrypt/OpenSSLKey;->getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    const-string v1, "Must use ECPublicKeySpec or X509EncodedKeySpec; was "

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 47
    throw v0

    .line 48
    :cond_2
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 50
    const-string v0, "keySpec == null"

    .line 52
    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1
.end method

.method public engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5
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
    if-eqz p1, :cond_e

    .line 3
    if-eqz p2, :cond_d

    .line 5
    const-string v0, "EC"

    .line 7
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_c

    .line 17
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    .line 19
    const-class v1, Ljava/security/spec/ECPublicKeySpec;

    .line 21
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    .line 31
    new-instance p2, Ljava/security/spec/ECPublicKeySpec;

    .line 33
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p2, v0, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

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
    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLECKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    .line 84
    new-instance p2, Ljava/security/spec/ECPublicKeySpec;

    .line 86
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 89
    move-result-object v0

    .line 90
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p2, v0, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

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
    instance-of v1, p1, Ljava/security/interfaces/ECPrivateKey;

    .line 108
    const-class v3, Ljava/security/spec/ECPrivateKeySpec;

    .line 110
    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_3

    .line 118
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    .line 120
    new-instance p2, Ljava/security/spec/ECPrivateKeySpec;

    .line 122
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    .line 125
    move-result-object v0

    .line 126
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 129
    move-result-object p1

    .line 130
    invoke-direct {p2, v0, p1}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 133
    return-object p2

    .line 134
    :cond_3
    instance-of v1, p1, Ljava/security/PrivateKey;

    .line 136
    const-string v4, "PKCS#8"

    .line 138
    if-eqz v1, :cond_5

    .line 140
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_5

    .line 146
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 149
    move-result-object p2

    .line 150
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_4

    .line 160
    if-eqz p2, :cond_4

    .line 162
    new-instance p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 164
    invoke-direct {p1, p2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 167
    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLECKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    .line 173
    new-instance p2, Ljava/security/spec/ECPrivateKeySpec;

    .line 175
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    .line 178
    move-result-object v0

    .line 179
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 182
    move-result-object p1

    .line 183
    invoke-direct {p2, v0, p1}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 186
    return-object p2

    .line 187
    :cond_4
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 189
    const-string p2, "Not a valid PKCS#8 encoding"

    .line 191
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 194
    throw p1

    .line 195
    :cond_5
    const-string v3, "Key is not encodable"

    .line 197
    if-eqz v1, :cond_8

    .line 199
    const-class v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 201
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_8

    .line 207
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 210
    move-result-object p2

    .line 211
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_7

    .line 221
    if-eqz p2, :cond_6

    .line 223
    new-instance p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 225
    invoke-direct {p1, p2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 228
    return-object p1

    .line 229
    :cond_6
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 231
    invoke-direct {p1, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 234
    throw p1

    .line 235
    :cond_7
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    .line 239
    const-string v1, "Encoding type must be PKCS#8; was "

    .line 241
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object p1

    .line 255
    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 258
    throw p2

    .line 259
    :cond_8
    if-eqz v0, :cond_b

    .line 261
    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    .line 263
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_b

    .line 269
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 272
    move-result-object p2

    .line 273
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_a

    .line 283
    if-eqz p2, :cond_9

    .line 285
    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 287
    invoke-direct {p1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 290
    return-object p1

    .line 291
    :cond_9
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 293
    invoke-direct {p1, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 296
    throw p1

    .line 297
    :cond_a
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    .line 301
    const-string v1, "Encoding type must be X.509; was "

    .line 303
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    move-result-object p1

    .line 317
    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 320
    throw p2

    .line 321
    :cond_b
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    .line 325
    const-string v2, "Unsupported key type and key spec combination; key="

    .line 327
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 337
    move-result-object p1

    .line 338
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string p1, ", keySpec="

    .line 343
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 349
    move-result-object p1

    .line 350
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    move-result-object p1

    .line 357
    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 360
    throw v0

    .line 361
    :cond_c
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 363
    const-string p2, "Key must be an EC key"

    .line 365
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 368
    throw p1

    .line 369
    :cond_d
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 371
    const-string p2, "keySpec == null"

    .line 373
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 376
    throw p1

    .line 377
    :cond_e
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 379
    const-string p2, "key == null"

    .line 381
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 384
    throw p1
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_8

    .line 3
    instance-of v0, p1, Lorg/conscrypt/OpenSSLECPublicKey;

    .line 5
    if-nez v0, :cond_7

    .line 7
    instance-of v0, p1, Lorg/conscrypt/OpenSSLECPrivateKey;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    goto/16 :goto_0

    .line 13
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    .line 15
    if-eqz v0, :cond_1

    .line 17
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    .line 19
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 26
    move-result-object p1

    .line 27
    :try_start_0
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    .line 29
    invoke-direct {v1, v0, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 32
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLECKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

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
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    .line 46
    if-eqz v0, :cond_2

    .line 48
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    .line 50
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    .line 53
    move-result-object v0

    .line 54
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 57
    move-result-object p1

    .line 58
    :try_start_1
    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    .line 60
    invoke-direct {v1, v0, p1}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 63
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLECKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 66
    move-result-object p1
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    return-object p1

    .line 68
    :catch_1
    move-exception p1

    .line 69
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 71
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .line 74
    throw v0

    .line 75
    :cond_2
    instance-of v0, p1, Ljava/security/PrivateKey;

    .line 77
    const-string v1, "Key does not support encoding"

    .line 79
    if-eqz v0, :cond_4

    .line 81
    const-string v0, "PKCS#8"

    .line 83
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 93
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_3

    .line 99
    :try_start_2
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 101
    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 104
    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLECKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 107
    move-result-object p1
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    return-object p1

    .line 109
    :catch_2
    move-exception p1

    .line 110
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 112
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .line 115
    throw v0

    .line 116
    :cond_3
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 118
    invoke-direct {p1, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p1

    .line 122
    :cond_4
    instance-of v0, p1, Ljava/security/PublicKey;

    .line 124
    if-eqz v0, :cond_6

    .line 126
    const-string v0, "X.509"

    .line 128
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_6

    .line 138
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 141
    move-result-object p1

    .line 142
    if-eqz p1, :cond_5

    .line 144
    :try_start_3
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    .line 146
    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 149
    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLECKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 152
    move-result-object p1
    :try_end_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_3

    .line 153
    return-object p1

    .line 154
    :catch_3
    move-exception p1

    .line 155
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 157
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .line 160
    throw v0

    .line 161
    :cond_5
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 163
    invoke-direct {p1, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 166
    throw p1

    .line 167
    :cond_6
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 176
    move-result-object p1

    .line 177
    const-string v1, "Key must be EC public or private key; was "

    .line 179
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 186
    throw v0

    .line 187
    :cond_7
    :goto_0
    return-object p1

    .line 188
    :cond_8
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 190
    const-string v0, "key == null"

    .line 192
    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 195
    throw p1
.end method
