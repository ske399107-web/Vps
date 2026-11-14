.class Lorg/bouncycastle/jce/provider/OcspCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RESPONSE_SIZE:I = 0x8000

.field private static final DEFAULT_TIMEOUT:I = 0x3a98

.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/URI;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/ocsp/CertID;",
            "Lorg/bouncycastle/asn1/ocsp/OCSPResponse;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOcspResponse(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/ocsp/CertID;",
            "Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;",
            "Ljava/net/URI;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/Extension;",
            ">;",
            "Lorg/bouncycastle/jcajce/util/JcaJceHelper;",
            ")",
            "Lorg/bouncycastle/asn1/ocsp/OCSPResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    const-string v2, "configuration error: "

    .line 6
    sget-object v3, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    .line 8
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v3

    .line 12
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v3, :cond_0

    .line 17
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/util/Map;

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v3, v4

    .line 25
    :goto_0
    if-eqz v3, :cond_2

    .line 27
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    .line 33
    if-eqz v5, :cond_2

    .line 35
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseBytes()Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getResponse()Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 42
    move-result-object v6

    .line 43
    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 50
    move-result-object v6

    .line 51
    invoke-static {v6}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    .line 54
    move-result-object v6

    .line 55
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getValidDate()Ljava/util/Date;

    .line 58
    move-result-object v7

    .line 59
    invoke-static {v6, v7, p0}, Lorg/bouncycastle/jce/provider/OcspCache;->isCertIDFoundAndCurrent(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;Ljava/util/Date;Lorg/bouncycastle/asn1/ocsp/CertID;)Z

    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_1

    .line 65
    return-object v5

    .line 66
    :cond_1
    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    .line 72
    move-result-object v5
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 75
    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 78
    new-instance v7, Lorg/bouncycastle/asn1/ocsp/Request;

    .line 80
    invoke-direct {v7, p0, v4}, Lorg/bouncycastle/asn1/ocsp/Request;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 83
    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 86
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 88
    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 91
    const/4 v8, 0x0

    .line 92
    move-object v9, v4

    .line 93
    :goto_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    .line 96
    move-result v10

    .line 97
    if-eq v8, v10, :cond_4

    .line 99
    move-object/from16 v10, p4

    .line 101
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v11

    .line 105
    check-cast v11, Ljava/security/cert/Extension;

    .line 107
    new-instance v12, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 109
    invoke-interface {v11}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    .line 112
    move-result-object v13

    .line 113
    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    .line 118
    invoke-interface {v11}, Ljava/security/cert/Extension;->getValue()[B

    .line 121
    move-result-object v14

    .line 122
    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 125
    sget-object v14, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 127
    invoke-virtual {v14, v12}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 130
    move-result v14

    .line 131
    if-eqz v14, :cond_3

    .line 133
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 136
    move-result-object v9

    .line 137
    invoke-static {v9}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    .line 140
    move-result-object v9

    .line 141
    :cond_3
    new-instance v14, Lorg/bouncycastle/asn1/x509/Extension;

    .line 143
    invoke-interface {v11}, Ljava/security/cert/Extension;->isCritical()Z

    .line 146
    move-result v11

    .line 147
    invoke-direct {v14, v12, v11, v13}, Lorg/bouncycastle/asn1/x509/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 150
    invoke-virtual {v7, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 153
    add-int/lit8 v8, v8, 0x1

    .line 155
    goto :goto_1

    .line 156
    :cond_4
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    .line 159
    move-result v8

    .line 160
    if-eqz v8, :cond_5

    .line 162
    new-instance v8, Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    .line 164
    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    .line 166
    invoke-direct {v10, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 169
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    .line 171
    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 174
    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    .line 177
    move-result-object v6

    .line 178
    invoke-direct {v8, v4, v10, v6}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 181
    goto :goto_2

    .line 182
    :cond_5
    new-instance v8, Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    .line 184
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    .line 186
    invoke-direct {v7, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 189
    invoke-direct {v8, v4, v7, v4}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 192
    :goto_2
    :try_start_1
    new-instance v6, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    .line 194
    invoke-direct {v6, v8, v4}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;-><init>(Lorg/bouncycastle/asn1/ocsp/TBSRequest;Lorg/bouncycastle/asn1/ocsp/Signature;)V

    .line 197
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 200
    move-result-object v6

    .line 201
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 204
    move-result-object v5

    .line 205
    check-cast v5, Ljava/net/HttpURLConnection;

    .line 207
    const/16 v7, 0x3a98

    .line 209
    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 212
    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 215
    const/4 v7, 0x1

    .line 216
    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 219
    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 222
    const-string v7, "POST"

    .line 224
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 227
    const-string v7, "Content-type"

    .line 229
    const-string v8, "application/ocsp-request"

    .line 231
    invoke-virtual {v5, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v7, "Content-length"

    .line 236
    array-length v8, v6

    .line 237
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 240
    move-result-object v8

    .line 241
    invoke-virtual {v5, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v5}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 247
    move-result-object v7

    .line 248
    invoke-virtual {v7, v6}, Ljava/io/OutputStream;->write([B)V

    .line 251
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 254
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 257
    move-result-object v6

    .line 258
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    .line 261
    move-result v5

    .line 262
    if-gez v5, :cond_6

    .line 264
    const v5, 0x8000

    .line 267
    :cond_6
    invoke-static {v6, v5}, Lorg/bouncycastle/util/io/Streams;->readAllLimited(Ljava/io/InputStream;I)[B

    .line 270
    move-result-object v5

    .line 271
    invoke-static {v5}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseStatus()Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    .line 278
    move-result-object v6

    .line 279
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;->getIntValue()I

    .line 282
    move-result v6

    .line 283
    if-nez v6, :cond_b

    .line 285
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseBytes()Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    .line 288
    move-result-object v6

    .line 289
    invoke-static {v6}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    .line 292
    move-result-object v6

    .line 293
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getResponseType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 296
    move-result-object v7

    .line 297
    sget-object v8, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 299
    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 302
    move-result v7

    .line 303
    if-eqz v7, :cond_9

    .line 305
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getResponse()Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 308
    move-result-object v6

    .line 309
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 312
    move-result-object v6

    .line 313
    invoke-static {v6}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    .line 316
    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    move-object/from16 v7, p1

    .line 319
    move-object/from16 v8, p3

    .line 321
    move-object/from16 v10, p5

    .line 323
    :try_start_2
    invoke-static {v6, v7, v9, v8, v10}, Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker;->validatedOcspResponse(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;[BLjava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Z

    .line 326
    move-result v8

    .line 327
    if-eqz v8, :cond_a

    .line 329
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getValidDate()Ljava/util/Date;

    .line 332
    move-result-object v8

    .line 333
    invoke-static {v6, v8, p0}, Lorg/bouncycastle/jce/provider/OcspCache;->isCertIDFoundAndCurrent(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;Ljava/util/Date;Lorg/bouncycastle/asn1/ocsp/CertID;)Z

    .line 336
    move-result v6

    .line 337
    if-eqz v6, :cond_a

    .line 339
    sget-object v4, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    .line 341
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    move-result-object v4

    .line 345
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 347
    if-eqz v4, :cond_7

    .line 349
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 352
    move-result-object v3

    .line 353
    check-cast v3, Ljava/util/Map;

    .line 355
    goto :goto_3

    .line 356
    :catch_0
    move-exception v0

    .line 357
    goto :goto_5

    .line 358
    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    .line 360
    invoke-interface {v3, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    goto :goto_4

    .line 364
    :cond_8
    new-instance v3, Ljava/util/HashMap;

    .line 366
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 369
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lorg/bouncycastle/jce/provider/OcspCache;->cache:Ljava/util/Map;

    .line 374
    new-instance v4, Ljava/lang/ref/WeakReference;

    .line 376
    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 379
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :goto_4
    return-object v5

    .line 383
    :catch_1
    move-exception v0

    .line 384
    move-object/from16 v7, p1

    .line 386
    goto :goto_5

    .line 387
    :cond_9
    move-object/from16 v7, p1

    .line 389
    :cond_a
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 391
    const-string v1, "OCSP response failed to validate"

    .line 393
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    .line 396
    move-result-object v3

    .line 397
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    .line 400
    move-result v5

    .line 401
    invoke-direct {v0, v1, v4, v3, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .line 404
    throw v0

    .line 405
    :cond_b
    move-object/from16 v7, p1

    .line 407
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    .line 411
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    const-string v3, "OCSP responder failed: "

    .line 416
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseStatus()Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    .line 422
    move-result-object v3

    .line 423
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;->getValue()Ljava/math/BigInteger;

    .line 426
    move-result-object v3

    .line 427
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    move-result-object v1

    .line 434
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    .line 437
    move-result-object v3

    .line 438
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    .line 441
    move-result v5

    .line 442
    invoke-direct {v0, v1, v4, v3, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .line 445
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 446
    :goto_5
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    .line 450
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-static {v0, v3}, Lo/Ve;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 456
    move-result-object v2

    .line 457
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    .line 460
    move-result-object v3

    .line 461
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    .line 464
    move-result v4

    .line 465
    invoke-direct {v1, v2, v0, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .line 468
    throw v1

    .line 469
    :catch_2
    move-exception v0

    .line 470
    move-object/from16 v7, p1

    .line 472
    move-object v1, v0

    .line 473
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    .line 477
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    move-result-object v2

    .line 491
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    .line 494
    move-result-object v3

    .line 495
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    .line 498
    move-result v4

    .line 499
    invoke-direct {v0, v2, v1, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .line 502
    throw v0
.end method

.method private static isCertIDFoundAndCurrent(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;Ljava/util/Date;Lorg/bouncycastle/asn1/ocsp/CertID;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getResponses()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getCertID()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/bouncycastle/asn1/ocsp/CertID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getNextUpdate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    :catch_0
    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
