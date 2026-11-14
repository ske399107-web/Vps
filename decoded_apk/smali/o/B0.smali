.class public final Lo/B0;
.super Lio/github/muntashirakon/adb/AbsAdbConnectionManager;
.source "SourceFile"


# static fields
.field public static final c:Lo/u6;

.field public static volatile d:Lo/B0;


# instance fields
.field public final a:Ljava/security/PrivateKey;

.field public final b:Ljava/security/cert/Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo/u6;

    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lo/u6;-><init>(I)V

    .line 7
    sput-object v0, Lo/B0;->c:Lo/u6;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Ljava/io/File;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "adbkey.pk8"

    .line 16
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    new-instance v1, Ljava/io/File;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 24
    move-result-object p1

    .line 25
    const-string v2, "adbkey.crt"

    .line 27
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    invoke-virtual {p0, p1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->setApi(I)V

    .line 35
    const-string p1, "BC"

    .line 37
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 40
    move-result-object p1

    .line 41
    if-nez p1, :cond_0

    .line 43
    new-instance p1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 45
    invoke-direct {p1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    .line 48
    invoke-static {p1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 54
    move-result p1

    .line 55
    const-string v2, "RSA"

    .line 57
    if-eqz p1, :cond_6

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_6

    .line 65
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 68
    move-result-object p1

    .line 69
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 71
    new-instance v3, Ljava/io/FileInputStream;

    .line 73
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 76
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 79
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    const-wide/32 v6, 0x7fffffff

    .line 83
    cmp-long v6, v4, v6

    .line 85
    const-string v7, "File "

    .line 87
    if-gtz v6, :cond_5

    .line 89
    long-to-int v4, v4

    .line 90
    :try_start_1
    new-array v5, v4, [B

    .line 92
    const/4 v6, 0x0

    .line 93
    move v8, v4

    .line 94
    move v9, v6

    .line 95
    :goto_0
    if-lez v8, :cond_1

    .line 97
    invoke-virtual {v3, v5, v9, v8}, Ljava/io/FileInputStream;->read([BII)I

    .line 100
    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    if-ltz v10, :cond_1

    .line 103
    sub-int/2addr v8, v10

    .line 104
    add-int/2addr v9, v10

    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    goto/16 :goto_2

    .line 109
    :cond_1
    const-string v10, "copyOf(...)"

    .line 111
    if-lez v8, :cond_2

    .line 113
    :try_start_2
    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 116
    move-result-object v5

    .line 117
    invoke-static {v5, v10}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    .line 124
    move-result v8

    .line 125
    const/4 v9, -0x1

    .line 126
    if-ne v8, v9, :cond_3

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    new-instance v9, Lo/j7;

    .line 131
    const/16 v11, 0x2001

    .line 133
    invoke-direct {v9, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 136
    invoke-virtual {v9, v8}, Ljava/io/OutputStream;->write(I)V

    .line 139
    invoke-static {v3, v9}, Lo/L1;->o(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    .line 142
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 145
    move-result v8

    .line 146
    add-int/2addr v8, v4

    .line 147
    if-ltz v8, :cond_4

    .line 149
    invoke-virtual {v9}, Lo/j7;->a()[B

    .line 152
    move-result-object v0

    .line 153
    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 156
    move-result-object v5

    .line 157
    invoke-static {v5, v10}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 163
    move-result v7

    .line 164
    invoke-static {v0, v5, v4, v6, v7}, Lo/H2;->j0([B[BIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :goto_1
    const/4 v0, 0x0

    .line 168
    invoke-static {v3, v0}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 171
    invoke-direct {v2, v5}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 174
    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 177
    move-result-object p1

    .line 178
    const-string v2, "X.509"

    .line 180
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 183
    move-result-object v2

    .line 184
    new-instance v3, Ljava/io/FileInputStream;

    .line 186
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 189
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 192
    move-result-object v1

    .line 193
    const-string v2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    .line 195
    invoke-static {v1, v2}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 200
    invoke-static {v3, v0}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 203
    new-instance v0, Lo/Cc;

    .line 205
    invoke-direct {v0, p1, v1}, Lo/Cc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    goto/16 :goto_3

    .line 210
    :catchall_1
    move-exception p1

    .line 211
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 212
    :catchall_2
    move-exception v0

    .line 213
    invoke-static {v3, p1}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 216
    throw v0

    .line 217
    :cond_4
    :try_start_5
    new-instance p1, Ljava/lang/OutOfMemoryError;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    .line 221
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    const-string v0, " is too big to fit in memory."

    .line 232
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object v0

    .line 239
    invoke-direct {p1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 242
    throw p1

    .line 243
    :cond_5
    new-instance p1, Ljava/lang/OutOfMemoryError;

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    .line 247
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    const-string v0, " is too big ("

    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 261
    const-string v0, " bytes) to fit in memory."

    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object v0

    .line 270
    invoke-direct {p1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 273
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 274
    :goto_2
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 275
    :catchall_3
    move-exception v0

    .line 276
    invoke-static {v3, p1}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 279
    throw v0

    .line 280
    :cond_6
    invoke-static {v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 283
    move-result-object p1

    .line 284
    new-instance v2, Ljava/security/SecureRandom;

    .line 286
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 289
    const/16 v3, 0x800

    .line 291
    invoke-virtual {p1, v3, v2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 294
    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 297
    move-result-object p1

    .line 298
    new-instance v5, Ljava/util/Date;

    .line 300
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 303
    new-instance v6, Ljava/util/Date;

    .line 305
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 308
    move-result-wide v2

    .line 309
    const-wide v7, 0x496cebb800L

    .line 314
    add-long/2addr v2, v7

    .line 315
    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 318
    new-instance v7, Lorg/bouncycastle/asn1/x500/X500Name;

    .line 320
    const-string v2, "CN=ProxyRead"

    .line 322
    invoke-direct {v7, v2}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    .line 325
    sget-object v2, Lo/jd;->a:Lo/id;

    .line 327
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    sget-object v2, Lo/jd;->b:Lo/h;

    .line 332
    invoke-virtual {v2}, Lo/h;->c()Ljava/util/Random;

    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    .line 339
    move-result-wide v2

    .line 340
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 343
    move-result-wide v2

    .line 344
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 347
    move-result-object v4

    .line 348
    new-instance v9, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;

    .line 350
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 353
    move-result-object v8

    .line 354
    move-object v2, v9

    .line 355
    move-object v3, v7

    .line 356
    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Ljava/security/PublicKey;)V

    .line 359
    new-instance v2, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    .line 361
    const-string v3, "SHA256withRSA"

    .line 363
    invoke-direct {v2, v3}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 369
    move-result-object v3

    .line 370
    invoke-virtual {v2, v3}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;

    .line 373
    move-result-object v2

    .line 374
    new-instance v3, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    .line 376
    invoke-direct {v3}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    .line 379
    new-instance v4, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 381
    invoke-direct {v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    .line 384
    invoke-virtual {v3, v4}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    .line 387
    move-result-object v3

    .line 388
    invoke-virtual {v9, v2}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v3, v2}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    .line 395
    move-result-object v2

    .line 396
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 399
    move-result-object v3

    .line 400
    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    .line 403
    move-result-object v3

    .line 404
    const-string v4, "getEncoded(...)"

    .line 406
    invoke-static {v3, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-static {v0, v3}, Lo/L1;->f0(Ljava/io/File;[B)V

    .line 412
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 415
    move-result-object v0

    .line 416
    invoke-static {v0, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-static {v1, v0}, Lo/L1;->f0(Ljava/io/File;[B)V

    .line 422
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 425
    move-result-object p1

    .line 426
    new-instance v0, Lo/Cc;

    .line 428
    invoke-direct {v0, p1, v2}, Lo/Cc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 431
    :goto_3
    iget-object p1, v0, Lo/Cc;->a:Ljava/lang/Object;

    .line 433
    check-cast p1, Ljava/security/PrivateKey;

    .line 435
    iput-object p1, p0, Lo/B0;->a:Ljava/security/PrivateKey;

    .line 437
    iget-object p1, v0, Lo/Cc;->b:Ljava/lang/Object;

    .line 439
    check-cast p1, Ljava/security/cert/Certificate;

    .line 441
    iput-object p1, p0, Lo/B0;->b:Ljava/security/cert/Certificate;

    .line 443
    return-void
.end method


# virtual methods
.method public final getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/B0;->b:Ljava/security/cert/Certificate;

    .line 3
    return-object v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ProxyRead"

    .line 3
    return-object v0
.end method

.method public final getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/B0;->a:Ljava/security/PrivateKey;

    .line 3
    return-object v0
.end method
