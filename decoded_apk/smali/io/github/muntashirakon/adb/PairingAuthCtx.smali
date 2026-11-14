.class Lio/github/muntashirakon/adb/PairingAuthCtx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# static fields
.field private static final CLIENT_NAME:[B

.field public static final GCM_IV_LENGTH:I = 0xc

.field private static final HKDF_KEY_LENGTH:I = 0x10

.field private static final INFO:[B

.field private static final SERVER_NAME:[B


# instance fields
.field private mDecIv:J

.field private mEncIv:J

.field private mIsDestroyed:Z

.field private final mMsg:[B

.field private final mSecretKey:[B

.field private final mSpake2Ctx:Lio/github/muntashirakon/crypto/spake2/Spake2Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "adb pair client\u0000"

    .line 3
    const-string v1, "UTF-8"

    .line 5
    invoke-static {v0, v1}, Lio/github/muntashirakon/adb/StringCompat;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lio/github/muntashirakon/adb/PairingAuthCtx;->CLIENT_NAME:[B

    .line 11
    const-string v0, "adb pair server\u0000"

    .line 13
    invoke-static {v0, v1}, Lio/github/muntashirakon/adb/StringCompat;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lio/github/muntashirakon/adb/PairingAuthCtx;->SERVER_NAME:[B

    .line 19
    const-string v0, "adb pairing_auth aes-128-gcm key"

    .line 21
    invoke-static {v0, v1}, Lio/github/muntashirakon/adb/StringCompat;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lio/github/muntashirakon/adb/PairingAuthCtx;->INFO:[B

    .line 27
    return-void
.end method

.method private constructor <init>(Lio/github/muntashirakon/crypto/spake2/Spake2Context;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x10

    .line 6
    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSecretKey:[B

    .line 10
    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mDecIv:J

    .line 14
    iput-wide v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mEncIv:J

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mIsDestroyed:Z

    .line 19
    iput-object p1, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSpake2Ctx:Lio/github/muntashirakon/crypto/spake2/Spake2Context;

    .line 21
    invoke-virtual {p1, p2}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->a([B)[B

    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mMsg:[B

    .line 27
    return-void
.end method

.method public static createAlice([B)Lio/github/muntashirakon/adb/PairingAuthCtx;
    .locals 4

    .line 1
    new-instance v0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;

    .line 3
    sget-object v1, Lio/github/muntashirakon/adb/PairingAuthCtx;->CLIENT_NAME:[B

    .line 5
    sget-object v2, Lio/github/muntashirakon/adb/PairingAuthCtx;->SERVER_NAME:[B

    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v0, v3, v1, v2}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;-><init>(I[B[B)V

    .line 11
    :try_start_0
    new-instance v1, Lio/github/muntashirakon/adb/PairingAuthCtx;

    .line 13
    invoke-direct {v1, v0, p0}, Lio/github/muntashirakon/adb/PairingAuthCtx;-><init>(Lio/github/muntashirakon/crypto/spake2/Spake2Context;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object v1

    .line 17
    :catch_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static createBob([B)Lio/github/muntashirakon/adb/PairingAuthCtx;
    .locals 4

    .line 1
    new-instance v0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;

    .line 3
    sget-object v1, Lio/github/muntashirakon/adb/PairingAuthCtx;->SERVER_NAME:[B

    .line 5
    sget-object v2, Lio/github/muntashirakon/adb/PairingAuthCtx;->CLIENT_NAME:[B

    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-direct {v0, v3, v1, v2}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;-><init>(I[B[B)V

    .line 11
    :try_start_0
    new-instance v1, Lio/github/muntashirakon/adb/PairingAuthCtx;

    .line 13
    invoke-direct {v1, v0, p0}, Lio/github/muntashirakon/adb/PairingAuthCtx;-><init>(Lio/github/muntashirakon/crypto/spake2/Spake2Context;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object v1

    .line 17
    :catch_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method private encryptDecrypt(Z[B[B)[B
    .locals 8

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mIsDestroyed:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/params/AEADParameters;

    .line 9
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 11
    iget-object v3, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSecretKey:[B

    .line 13
    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 16
    iget-object v3, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSecretKey:[B

    .line 18
    array-length v3, v3

    .line 19
    mul-int/lit8 v3, v3, 0x8

    .line 21
    invoke-direct {v0, v2, v3, p3}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B)V

    .line 24
    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    .line 27
    move-result-object p3

    .line 28
    invoke-static {p3}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/GCMModeCipher;

    .line 31
    move-result-object p3

    .line 32
    invoke-interface {p3, p1, v0}, Lorg/bouncycastle/crypto/modes/AEADCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 35
    array-length p1, p2

    .line 36
    invoke-interface {p3, p1}, Lorg/bouncycastle/crypto/modes/AEADCipher;->getOutputSize(I)I

    .line 39
    move-result p1

    .line 40
    new-array p1, p1, [B

    .line 42
    array-length v5, p2

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    move-object v2, p3

    .line 46
    move-object v3, p2

    .line 47
    move-object v6, p1

    .line 48
    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processBytes([BII[BI)I

    .line 51
    move-result p2

    .line 52
    :try_start_0
    invoke-interface {p3, p1, p2}, Lorg/bouncycastle/crypto/modes/AEADCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-object p1

    .line 56
    :catch_0
    return-object v1
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 5

    .line 1
    const/16 v0, 0xc

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object v0

    .line 13
    iget-wide v1, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mDecIv:J

    .line 15
    const-wide/16 v3, 0x1

    .line 17
    add-long/2addr v3, v1

    .line 18
    iput-wide v3, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mDecIv:J

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, v1, p1, v0}, Lio/github/muntashirakon/adb/PairingAuthCtx;->encryptDecrypt(Z[B[B)[B

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mIsDestroyed:Z

    .line 4
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSecretKey:[B

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 10
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSpake2Ctx:Lio/github/muntashirakon/crypto/spake2/Spake2Context;

    .line 12
    invoke-virtual {v0}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->destroy()V

    .line 15
    return-void
.end method

.method public encrypt([B)[B
    .locals 5

    .line 1
    const/16 v0, 0xc

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object v0

    .line 13
    iget-wide v1, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mEncIv:J

    .line 15
    const-wide/16 v3, 0x1

    .line 17
    add-long/2addr v3, v1

    .line 18
    iput-wide v3, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mEncIv:J

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {p0, v1, p1, v0}, Lio/github/muntashirakon/adb/PairingAuthCtx;->encryptDecrypt(Z[B[B)[B

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public getMsg()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mMsg:[B

    .line 3
    return-object v0
.end method

.method public initCipher([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mIsDestroyed:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSpake2Ctx:Lio/github/muntashirakon/crypto/spake2/Spake2Context;

    .line 9
    invoke-virtual {v0, p1}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->b([B)[B

    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    .line 15
    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    .line 17
    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    .line 20
    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 23
    new-instance v2, Lorg/bouncycastle/crypto/params/HKDFParameters;

    .line 25
    const/4 v3, 0x0

    .line 26
    sget-object v4, Lio/github/muntashirakon/adb/PairingAuthCtx;->INFO:[B

    .line 28
    invoke-direct {v2, p1, v3, v4}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([B[B[B)V

    .line 31
    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 34
    iget-object p1, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSecretKey:[B

    .line 36
    array-length v2, p1

    .line 37
    invoke-virtual {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generateBytes([BII)I

    .line 40
    const/4 p1, 0x1

    .line 41
    return p1
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mIsDestroyed:Z

    .line 3
    return v0
.end method
