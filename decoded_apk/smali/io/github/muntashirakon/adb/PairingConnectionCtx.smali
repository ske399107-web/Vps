.class public final Lio/github/muntashirakon/adb/PairingConnectionCtx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;,
        Lio/github/muntashirakon/adb/PairingConnectionCtx$State;,
        Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;,
        Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;
    }
.end annotation


# static fields
.field public static final EXPORTED_KEY_LABEL:Ljava/lang/String; = "adb-label\u0000"

.field public static final EXPORT_KEY_SIZE:I = 0x40

.field public static final TAG:Ljava/lang/String; = "PairingConnectionCtx"


# instance fields
.field private final mHost:Ljava/lang/String;

.field private mInputStream:Ljava/io/DataInputStream;

.field private mOutputStream:Ljava/io/DataOutputStream;

.field private mPairingAuthCtx:Lio/github/muntashirakon/adb/PairingAuthCtx;

.field private final mPeerInfo:Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;

.field private final mPort:I

.field private final mPswd:[B

.field private final mRole:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

.field private final mSslContext:Ljavax/net/ssl/SSLContext;

.field private mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;I[BLio/github/muntashirakon/adb/KeyPair;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->Client:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mRole:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 3
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$State;->Ready:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mHost:Ljava/lang/String;

    .line 5
    iput p2, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPort:I

    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, [B

    iput-object p3, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPswd:[B

    .line 7
    new-instance p1, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;

    .line 8
    invoke-virtual {p4}, Lio/github/muntashirakon/adb/KeyPair;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p2, p5}, Lio/github/muntashirakon/adb/AndroidPubkey;->encodeWithName(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)[B

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;-><init>(B[B)V

    iput-object p1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPeerInfo:Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;

    .line 10
    invoke-static {p4}, Lio/github/muntashirakon/adb/SslUtils;->getSslContext(Lio/github/muntashirakon/adb/KeyPair;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    iput-object p1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mSslContext:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BLjava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 11
    new-instance v4, Lio/github/muntashirakon/adb/KeyPair;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Ljava/security/PrivateKey;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, p4, p5}, Lio/github/muntashirakon/adb/KeyPair;-><init>(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lio/github/muntashirakon/adb/PairingConnectionCtx;-><init>(Ljava/lang/String;I[BLio/github/muntashirakon/adb/KeyPair;Ljava/lang/String;)V

    return-void
.end method

.method private checkHeaderType(BB)Z
    .locals 3

    .line 1
    if-eq p1, p2, :cond_0

    .line 3
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string v2, "Unexpected header type (expected="

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string p1, " actual="

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, ")"

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
    :cond_0
    const/4 p1, 0x1

    .line 38
    return p1
.end method

.method private createHeader(BI)Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;
    .locals 2

    .line 1
    new-instance v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p1, p2}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;-><init>(BBI)V

    .line 7
    return-object v0
.end method

.method private doExchangeMsgs()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPairingAuthCtx:Lio/github/muntashirakon/adb/PairingAuthCtx;

    .line 3
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/PairingAuthCtx;->getMsg()[B

    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0, v2, v1}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->createHeader(BI)Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, v1, v0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->writeHeader(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;[B)V

    .line 16
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->readHeader()Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-static {v0}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->access$000(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;)B

    .line 25
    move-result v1

    .line 26
    invoke-direct {p0, v2, v1}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->checkHeaderType(BB)Z

    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v0}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->access$100(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;)I

    .line 36
    move-result v0

    .line 37
    new-array v0, v0, [B

    .line 39
    iget-object v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mInputStream:Ljava/io/DataInputStream;

    .line 41
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 44
    :try_start_0
    iget-object v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPairingAuthCtx:Lio/github/muntashirakon/adb/PairingAuthCtx;

    .line 46
    invoke-virtual {v1, v0}, Lio/github/muntashirakon/adb/PairingAuthCtx;->initCipher([B)Z

    .line 49
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    sget-object v1, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    .line 54
    const-string v2, "Unable to initialize pairing cipher"

    .line 56
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v1, Ljava/io/IOException;

    .line 61
    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/io/IOException;

    .line 70
    throw v0

    .line 71
    :cond_1
    :goto_0
    return v2
.end method

.method private doExchangePeerInfo()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x2000

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 9
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPeerInfo:Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;

    .line 15
    invoke-virtual {v2, v1}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;->writeTo(Ljava/nio/ByteBuffer;)V

    .line 18
    iget-object v2, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPairingAuthCtx:Lio/github/muntashirakon/adb/PairingAuthCtx;

    .line 20
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v2, v1}, Lio/github/muntashirakon/adb/PairingAuthCtx;->encrypt([B)[B

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v1, :cond_0

    .line 31
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    .line 33
    const-string v1, "Failed to encrypt peer info"

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return v2

    .line 39
    :cond_0
    array-length v3, v1

    .line 40
    const/4 v4, 0x1

    .line 41
    invoke-direct {p0, v4, v3}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->createHeader(BI)Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    .line 44
    move-result-object v3

    .line 45
    invoke-direct {p0, v3, v1}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->writeHeader(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;[B)V

    .line 48
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->readHeader()Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_4

    .line 54
    invoke-static {v1}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->access$000(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;)B

    .line 57
    move-result v3

    .line 58
    invoke-direct {p0, v4, v3}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->checkHeaderType(BB)Z

    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {v1}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->access$100(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;)I

    .line 68
    move-result v1

    .line 69
    new-array v1, v1, [B

    .line 71
    iget-object v3, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mInputStream:Ljava/io/DataInputStream;

    .line 73
    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 76
    iget-object v3, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPairingAuthCtx:Lio/github/muntashirakon/adb/PairingAuthCtx;

    .line 78
    invoke-virtual {v3, v1}, Lio/github/muntashirakon/adb/PairingAuthCtx;->decrypt([B)[B

    .line 81
    move-result-object v1

    .line 82
    if-nez v1, :cond_2

    .line 84
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    .line 86
    const-string v1, "Unsupported payload while decrypting peer info."

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return v2

    .line 92
    :cond_2
    array-length v3, v1

    .line 93
    if-eq v3, v0, :cond_3

    .line 95
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    const-string v4, "Got size="

    .line 101
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    array-length v1, v1

    .line 105
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, " PeerInfo.size=8192"

    .line 110
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v2

    .line 121
    :cond_3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;->readFrom(Ljava/nio/ByteBuffer;)Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;

    .line 128
    move-result-object v0

    .line 129
    sget-object v1, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    .line 131
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v4

    .line 139
    :cond_4
    :goto_0
    return v2
.end method

.method private exportKeyingMaterial(Ljavax/net/ssl/SSLSocket;I)[B
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lio/github/muntashirakon/adb/SslUtils;->isCustomConscrypt()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-class v0, Lorg/conscrypt/Conscrypt;

    .line 9
    sget v1, Lorg/conscrypt/Conscrypt;->a:I

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    const/16 v1, 0x1d

    .line 16
    if-lt v0, v1, :cond_1

    .line 18
    const-string v0, "com.android.org.conscrypt.Conscrypt"

    .line 20
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    move-result-object v0

    .line 24
    :goto_0
    const-string v1, "exportKeyingMaterial"

    .line 26
    const-class v2, Ljavax/net/ssl/SSLSocket;

    .line 28
    const-class v3, Ljava/lang/String;

    .line 30
    const-class v4, [B

    .line 32
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 34
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Class;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    move-result-object v0

    .line 42
    const-string v1, "adb-label\u0000"

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p2

    .line 48
    const/4 v2, 0x0

    .line 49
    filled-new-array {p1, v1, v2, p2}, [Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    check-cast p1, [B

    .line 59
    return-object p1

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    new-instance p1, Ljavax/net/ssl/SSLException;

    .line 66
    const-string p2, "TLSv1.3 isn\'t supported on your platform. Use custom Conscrypt library instead."

    .line 68
    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_1
    new-instance p2, Ljavax/net/ssl/SSLException;

    .line 74
    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    .line 77
    throw p2

    .line 78
    :goto_2
    throw p1
.end method

.method private notifyResult()V
    .locals 1

    .line 1
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$State;->Stopped:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    .line 3
    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    .line 5
    return-void
.end method

.method private readHeader()Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [B

    .line 4
    iget-object v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mInputStream:Ljava/io/DataInputStream;

    .line 6
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 15
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->readFrom(Ljava/nio/ByteBuffer;)Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method private setupTlsConnection()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mRole:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 3
    sget-object v1, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->Server:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 9
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPort:I

    .line 15
    invoke-virtual {v0, v1}, Ljavax/net/ServerSocketFactory;->createServerSocket(I)Ljava/net/ServerSocket;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    .line 21
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/net/Socket;

    .line 28
    iget-object v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mHost:Ljava/lang/String;

    .line 30
    iget v2, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPort:I

    .line 32
    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 35
    :goto_0
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 39
    iget-object v2, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 41
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 44
    move-result-object v2

    .line 45
    iget-object v3, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mHost:Ljava/lang/String;

    .line 47
    iget v4, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPort:I

    .line 49
    invoke-virtual {v2, v0, v3, v4, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 55
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 58
    sget-object v1, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    .line 60
    const-string v2, "Handshake succeeded."

    .line 62
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v1, Ljava/io/DataInputStream;

    .line 67
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 70
    move-result-object v2

    .line 71
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 74
    iput-object v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mInputStream:Ljava/io/DataInputStream;

    .line 76
    new-instance v1, Ljava/io/DataOutputStream;

    .line 78
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 81
    move-result-object v2

    .line 82
    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 85
    iput-object v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mOutputStream:Ljava/io/DataOutputStream;

    .line 87
    const/16 v1, 0x40

    .line 89
    invoke-direct {p0, v0, v1}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->exportKeyingMaterial(Ljavax/net/ssl/SSLSocket;I)[B

    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPswd:[B

    .line 95
    array-length v2, v1

    .line 96
    array-length v3, v0

    .line 97
    add-int/2addr v2, v3

    .line 98
    new-array v2, v2, [B

    .line 100
    array-length v3, v1

    .line 101
    const/4 v4, 0x0

    .line 102
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPswd:[B

    .line 107
    array-length v1, v1

    .line 108
    array-length v3, v0

    .line 109
    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    invoke-static {v2}, Lio/github/muntashirakon/adb/PairingAuthCtx;->createAlice([B)Lio/github/muntashirakon/adb/PairingAuthCtx;

    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    .line 118
    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPairingAuthCtx:Lio/github/muntashirakon/adb/PairingAuthCtx;

    .line 120
    return-void

    .line 121
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 123
    const-string v1, "Unable to create PairingAuthCtx."

    .line 125
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 128
    throw v0
.end method

.method private writeHeader(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 5
    move-result-object v0

    .line 6
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->writeTo(Ljava/nio/ByteBuffer;)V

    .line 15
    iget-object p1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mOutputStream:Ljava/io/DataOutputStream;

    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 24
    iget-object p1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mOutputStream:Ljava/io/DataOutputStream;

    .line 26
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 29
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPswd:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 7
    :try_start_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mInputStream:Ljava/io/DataInputStream;

    .line 9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    :try_start_1
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mOutputStream:Ljava/io/DataOutputStream;

    .line 14
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    :catch_1
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    .line 19
    sget-object v1, Lio/github/muntashirakon/adb/PairingConnectionCtx$State;->Ready:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    .line 21
    if-eq v0, v1, :cond_0

    .line 23
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPairingAuthCtx:Lio/github/muntashirakon/adb/PairingAuthCtx;

    .line 25
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/PairingAuthCtx;->destroy()V

    .line 28
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    .line 3
    sget-object v1, Lio/github/muntashirakon/adb/PairingConnectionCtx$State;->Ready:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    .line 5
    if-ne v0, v1, :cond_5

    .line 7
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$State;->ExchangingMsgs:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    .line 9
    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    .line 11
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->setupTlsConnection()V

    .line 14
    :goto_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_4

    .line 22
    const/4 v1, 0x1

    .line 23
    if-eq v0, v1, :cond_2

    .line 25
    const/4 v1, 0x2

    .line 26
    if-eq v0, v1, :cond_0

    .line 28
    const/4 v1, 0x3

    .line 29
    if-eq v0, v1, :cond_4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->doExchangePeerInfo()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 38
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->notifyResult()V

    .line 41
    return-void

    .line 42
    :cond_1
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->notifyResult()V

    .line 45
    new-instance v0, Ljava/io/IOException;

    .line 47
    const-string v1, "Could not exchange peer info."

    .line 49
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0

    .line 53
    :cond_2
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->doExchangeMsgs()Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 59
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$State;->ExchangingPeerInfo:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    .line 61
    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->notifyResult()V

    .line 67
    new-instance v0, Ljava/io/IOException;

    .line 69
    const-string v1, "Exchanging message wasn\'t successful."

    .line 71
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    throw v0

    .line 75
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 77
    const-string v1, "Connection closed with errors."

    .line 79
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 82
    throw v0

    .line 83
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 85
    const-string v1, "Connection is not ready yet."

    .line 87
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 90
    throw v0
.end method
