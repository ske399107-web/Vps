.class public Lio/github/muntashirakon/adb/AdbConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/muntashirakon/adb/AdbConnection$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AdbConnection"


# instance fields
.field private volatile mAbortOnUnauthorised:Z

.field private final mApi:I

.field private volatile mAuthorisationFailed:Z

.field private volatile mConnectAttempted:Z

.field private volatile mConnectionEstablished:Z

.field private volatile mConnectionException:Ljava/lang/Exception;

.field private final mConnectionThread:Ljava/lang/Thread;

.field private volatile mDeviceName:Ljava/lang/String;

.field private final mHost:Ljava/lang/String;

.field private volatile mIsTls:Z

.field private final mKeyPair:Lio/github/muntashirakon/adb/KeyPair;

.field private mLastLocalId:I

.field private final mLock:Ljava/lang/Object;

.field private volatile mMaxData:I

.field private final mOpenedStreams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lio/github/muntashirakon/adb/AdbStream;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlainInputStream:Ljava/io/InputStream;

.field private final mPlainOutputStream:Ljava/io/OutputStream;

.field private final mPort:I

.field private volatile mProtocolVersion:I

.field private volatile mSentSignature:Z

.field private final mSocket:Ljava/net/Socket;

.field private volatile mTlsInputStream:Ljava/io/InputStream;

.field private volatile mTlsOutputStream:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILio/github/muntashirakon/adb/KeyPair;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "Unknown Device"

    .line 6
    iput-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mDeviceName:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mIsTls:Z

    .line 11
    new-instance v1, Ljava/lang/Object;

    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLock:Ljava/lang/Object;

    .line 18
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mHost:Ljava/lang/String;

    .line 23
    iput p2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPort:I

    .line 25
    iput p4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mApi:I

    .line 27
    invoke-static {p4}, Lio/github/muntashirakon/adb/AdbProtocol;->getProtocolVersion(I)I

    .line 30
    move-result v1

    .line 31
    iput v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mProtocolVersion:I

    .line 33
    invoke-static {p4}, Lio/github/muntashirakon/adb/AdbProtocol;->getMaxData(I)I

    .line 36
    move-result p4

    .line 37
    iput p4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mMaxData:I

    .line 39
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iput-object p3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mKeyPair:Lio/github/muntashirakon/adb/KeyPair;

    .line 44
    :try_start_0
    new-instance p3, Ljava/net/Socket;

    .line 46
    invoke-direct {p3, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPlainInputStream:Ljava/io/InputStream;

    .line 57
    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPlainOutputStream:Ljava/io/OutputStream;

    .line 63
    const/4 p1, 0x1

    .line 64
    invoke-virtual {p3, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 67
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 72
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    iput v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLastLocalId:I

    .line 76
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AdbConnection;->createConnectionThread()Ljava/lang/Thread;

    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionThread:Ljava/lang/Thread;

    .line 82
    return-void

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    new-instance p2, Ljava/io/IOException;

    .line 86
    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Ljava/io/IOException;

    .line 95
    throw p1
.end method

.method public static synthetic a(Lio/github/muntashirakon/adb/AdbConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AdbConnection;->lambda$createConnectionThread$0()V

    return-void
.end method

.method private cleanupStreams()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lio/github/muntashirakon/adb/AdbStream;

    .line 23
    :try_start_0
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 32
    return-void
.end method

.method public static create(Ljava/lang/String;ILio/github/muntashirakon/adb/KeyPair;I)Lio/github/muntashirakon/adb/AdbConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lio/github/muntashirakon/adb/AdbConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/github/muntashirakon/adb/AdbConnection;-><init>(Ljava/lang/String;ILio/github/muntashirakon/adb/KeyPair;I)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;ILjava/security/PrivateKey;Ljava/security/cert/Certificate;)Lio/github/muntashirakon/adb/AdbConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lio/github/muntashirakon/adb/AdbConnection;->create(Ljava/lang/String;ILjava/security/PrivateKey;Ljava/security/cert/Certificate;I)Lio/github/muntashirakon/adb/AdbConnection;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;ILjava/security/PrivateKey;Ljava/security/cert/Certificate;I)Lio/github/muntashirakon/adb/AdbConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lio/github/muntashirakon/adb/KeyPair;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/security/PrivateKey;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p2, p3}, Lio/github/muntashirakon/adb/KeyPair;-><init>(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;)V

    invoke-static {p0, p1, v0, p4}, Lio/github/muntashirakon/adb/AdbConnection;->create(Ljava/lang/String;ILio/github/muntashirakon/adb/KeyPair;I)Lio/github/muntashirakon/adb/AdbConnection;

    move-result-object p0

    return-object p0
.end method

.method private createConnectionThread()Ljava/lang/Thread;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 3
    new-instance v1, Lo/i0;

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2, p0}, Lo/i0;-><init>(ILjava/lang/Object;)V

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 12
    return-object v0
.end method

.method private getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mIsTls:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mTlsInputStream:Ljava/io/InputStream;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPlainInputStream:Ljava/io/InputStream;

    .line 13
    :goto_0
    return-object v0
.end method

.method private getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mIsTls:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mTlsOutputStream:Ljava/io/OutputStream;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPlainOutputStream:Ljava/io/OutputStream;

    .line 13
    :goto_0
    return-object v0
.end method

.method private synthetic lambda$createConnectionThread$0()V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionThread:Ljava/lang/Thread;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_8

    .line 9
    :try_start_0
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AdbConnection;->getInputStream()Ljava/io/InputStream;

    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mProtocolVersion:I

    .line 15
    iget v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mMaxData:I

    .line 17
    invoke-static {v0, v1, v2}, Lio/github/muntashirakon/adb/AdbProtocol$Message;->parse(Ljava/io/InputStream;II)Lio/github/muntashirakon/adb/AdbProtocol$Message;

    .line 20
    move-result-object v0

    .line 21
    iget v1, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    .line 23
    const/4 v2, 0x1

    .line 24
    sparse-switch v1, :sswitch_data_0

    .line 27
    sget-object v0, Lio/github/muntashirakon/adb/AdbConnection;->TAG:Ljava/lang/String;

    .line 29
    const-string v2, "Unrecognized command = 0x%x"

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v1

    .line 35
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto/16 :goto_4

    .line 50
    :sswitch_0
    invoke-static {}, Lio/github/muntashirakon/adb/AdbProtocol;->generateStls()[B

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    .line 57
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mKeyPair:Lio/github/muntashirakon/adb/KeyPair;

    .line 59
    invoke-static {v0}, Lio/github/muntashirakon/adb/SslUtils;->getSslContext(Lio/github/muntashirakon/adb/KeyPair;)Ljavax/net/ssl/SSLContext;

    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSocket:Ljava/net/Socket;

    .line 69
    iget-object v3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mHost:Ljava/lang/String;

    .line 71
    iget v4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPort:I

    .line 73
    invoke-virtual {v0, v1, v3, v4, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 79
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 82
    sget-object v1, Lio/github/muntashirakon/adb/AdbConnection;->TAG:Ljava/lang/String;

    .line 84
    const-string v3, "Handshake succeeded."

    .line 86
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 93
    move-result-object v1

    .line 94
    iput-object v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mTlsInputStream:Ljava/io/InputStream;

    .line 96
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mTlsOutputStream:Ljava/io/OutputStream;

    .line 102
    iput-boolean v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mIsTls:Z

    .line 104
    monitor-exit p0

    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :try_start_2
    throw v0

    .line 109
    :sswitch_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    :try_start_3
    iget v1, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    .line 112
    iput v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mProtocolVersion:I

    .line 114
    iget v0, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    .line 116
    iput v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mMaxData:I

    .line 118
    iput-boolean v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 123
    monitor-exit p0

    .line 124
    goto :goto_0

    .line 125
    :catchall_1
    move-exception v0

    .line 126
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    :try_start_4
    throw v0

    .line 128
    :sswitch_2
    iget-boolean v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mIsTls:Z

    .line 130
    if-eqz v1, :cond_0

    .line 132
    goto/16 :goto_0

    .line 134
    :cond_0
    iget v1, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    .line 136
    if-eq v1, v2, :cond_1

    .line 138
    goto/16 :goto_0

    .line 140
    :cond_1
    iget-boolean v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSentSignature:Z

    .line 142
    if-eqz v1, :cond_3

    .line 144
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mAbortOnUnauthorised:Z

    .line 146
    if-eqz v0, :cond_2

    .line 148
    iput-boolean v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mAuthorisationFailed:Z

    .line 150
    goto/16 :goto_5

    .line 152
    :cond_2
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mKeyPair:Lio/github/muntashirakon/adb/KeyPair;

    .line 154
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/KeyPair;->getPublicKey()Ljava/security/PublicKey;

    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 160
    iget-object v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mDeviceName:Ljava/lang/String;

    .line 162
    invoke-static {v0, v1}, Lio/github/muntashirakon/adb/AndroidPubkey;->encodeWithName(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)[B

    .line 165
    move-result-object v0

    .line 166
    const/4 v1, 0x3

    .line 167
    invoke-static {v1, v0}, Lio/github/muntashirakon/adb/AdbProtocol;->generateAuth(I[B)[B

    .line 170
    move-result-object v0

    .line 171
    goto :goto_1

    .line 172
    :cond_3
    iget-object v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mKeyPair:Lio/github/muntashirakon/adb/KeyPair;

    .line 174
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/KeyPair;->getPrivateKey()Ljava/security/PrivateKey;

    .line 177
    move-result-object v1

    .line 178
    iget-object v0, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    .line 180
    invoke-static {v1, v0}, Lio/github/muntashirakon/adb/AndroidPubkey;->adbAuthSign(Ljava/security/PrivateKey;[B)[B

    .line 183
    move-result-object v0

    .line 184
    const/4 v1, 0x2

    .line 185
    invoke-static {v1, v0}, Lio/github/muntashirakon/adb/AdbProtocol;->generateAuth(I[B)[B

    .line 188
    move-result-object v0

    .line 189
    iput-boolean v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSentSignature:Z

    .line 191
    :goto_1
    invoke-virtual {p0, v0}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    .line 194
    goto/16 :goto_0

    .line 196
    :sswitch_3
    iget-boolean v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    .line 198
    if-nez v1, :cond_4

    .line 200
    goto/16 :goto_0

    .line 202
    :cond_4
    iget-object v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 204
    iget v3, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    .line 206
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Lio/github/muntashirakon/adb/AdbStream;

    .line 216
    if-nez v1, :cond_5

    .line 218
    goto/16 :goto_0

    .line 220
    :cond_5
    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 221
    :try_start_5
    iget v3, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    .line 223
    const v4, 0x59414b4f

    .line 226
    if-ne v3, v4, :cond_6

    .line 228
    iget v0, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    .line 230
    invoke-virtual {v1, v0}, Lio/github/muntashirakon/adb/AdbStream;->updateRemoteId(I)V

    .line 233
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbStream;->readyForWrite()V

    .line 236
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 239
    goto :goto_2

    .line 240
    :catchall_2
    move-exception v0

    .line 241
    goto :goto_3

    .line 242
    :cond_6
    const v4, 0x45545257

    .line 245
    if-ne v3, v4, :cond_7

    .line 247
    iget-object v0, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    .line 249
    invoke-virtual {v1, v0}, Lio/github/muntashirakon/adb/AdbStream;->addPayload([B)V

    .line 252
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbStream;->sendReady()V

    .line 255
    goto :goto_2

    .line 256
    :cond_7
    iget-object v3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 258
    iget v0, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual {v1, v2}, Lio/github/muntashirakon/adb/AdbStream;->notifyClose(Z)V

    .line 270
    :goto_2
    monitor-exit v1

    .line 271
    goto/16 :goto_0

    .line 273
    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 274
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 275
    :goto_4
    iput-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionException:Ljava/lang/Exception;

    .line 277
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 280
    :cond_8
    :goto_5
    monitor-enter p0

    .line 281
    :try_start_7
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AdbConnection;->cleanupStreams()V

    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 287
    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    .line 290
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    .line 292
    monitor-exit p0

    .line 293
    return-void

    .line 294
    :catchall_3
    move-exception v0

    .line 295
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 296
    throw v0

    .line 297
    :sswitch_data_0
    .sparse-switch
        0x45534c43 -> :sswitch_3
        0x45545257 -> :sswitch_3
        0x48545541 -> :sswitch_2
        0x4e584e43 -> :sswitch_1
        0x534c5453 -> :sswitch_0
        0x59414b4f -> :sswitch_3
    .end sparse-switch
.end method

.method private waitForConnection(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Lio/github/muntashirakon/adb/AdbPairingRequiredException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    move-result-wide v0

    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 12
    move-result-wide p1

    .line 13
    add-long/2addr v0, p1

    .line 14
    :goto_0
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    .line 16
    if-nez p1, :cond_0

    .line 18
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    .line 20
    if-eqz p1, :cond_0

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    move-result-wide p1

    .line 26
    sub-long p1, v0, p1

    .line 28
    const-wide/16 v2, 0x0

    .line 30
    cmp-long p1, p1, v2

    .line 32
    if-lez p1, :cond_0

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    move-result-wide p1

    .line 38
    sub-long p1, v0, p1

    .line 40
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    .line 48
    if-nez p1, :cond_4

    .line 50
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    .line 52
    if-eqz p1, :cond_1

    .line 54
    monitor-exit p0

    .line 55
    const/4 p1, 0x0

    .line 56
    return p1

    .line 57
    :cond_1
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mAuthorisationFailed:Z

    .line 59
    if-nez p1, :cond_3

    .line 61
    iget-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionException:Ljava/lang/Exception;

    .line 63
    if-eqz p1, :cond_2

    .line 65
    instance-of p2, p1, Ljavax/net/ssl/SSLProtocolException;

    .line 67
    if-eqz p2, :cond_2

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    if-eqz p2, :cond_2

    .line 75
    const-string p3, "protocol error"

    .line 77
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_2

    .line 83
    new-instance p2, Lio/github/muntashirakon/adb/AdbPairingRequiredException;

    .line 85
    const-string p3, "ADB pairing is required."

    .line 87
    invoke-direct {p2, p3}, Lio/github/muntashirakon/adb/AdbPairingRequiredException;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lio/github/muntashirakon/adb/AdbPairingRequiredException;

    .line 96
    throw p1

    .line 97
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 99
    const-string p2, "Connection failed"

    .line 101
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 104
    throw p1

    .line 105
    :cond_3
    new-instance p1, Lio/github/muntashirakon/adb/AdbAuthenticationFailedException;

    .line 107
    invoke-direct {p1}, Lio/github/muntashirakon/adb/AdbAuthenticationFailedException;-><init>()V

    .line 110
    throw p1

    .line 111
    :cond_4
    monitor-exit p0

    .line 112
    const/4 p1, 0x1

    .line 113
    return p1

    .line 114
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSocket:Ljava/net/Socket;

    .line 3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 6
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionThread:Ljava/lang/Thread;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 11
    :try_start_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionThread:Ljava/lang/Thread;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    :try_start_1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mKeyPair:Lio/github/muntashirakon/adb/KeyPair;

    .line 18
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/KeyPair;->destroy()V
    :try_end_1
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 21
    :catch_1
    return-void
.end method

.method public connect()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lio/github/muntashirakon/adb/AdbPairingRequiredException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {p0, v2, v3, v0, v1}, Lio/github/muntashirakon/adb/AdbConnection;->connect(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result v0

    return v0
.end method

.method public connect(JLjava/util/concurrent/TimeUnit;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lio/github/muntashirakon/adb/AdbAuthenticationFailedException;,
            Lio/github/muntashirakon/adb/AdbPairingRequiredException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mApi:I

    invoke-static {v0}, Lio/github/muntashirakon/adb/AdbProtocol;->generateConnect(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    .line 5
    iput-boolean p4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mAbortOnUnauthorised:Z

    const/4 p4, 0x0

    .line 6
    iput-boolean p4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mAuthorisationFailed:Z

    .line 7
    iget-object p4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionThread:Ljava/lang/Thread;

    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    .line 8
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lio/github/muntashirakon/adb/AdbConnection;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flushPacket()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AdbConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method public getMaxData()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Lio/github/muntashirakon/adb/AdbPairingRequiredException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-wide v0, 0x7fffffffffffffffL

    .line 10
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    invoke-direct {p0, v0, v1, v2}, Lio/github/muntashirakon/adb/AdbConnection;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Z

    .line 15
    iget v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mMaxData:I

    .line 17
    return v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    const-string v1, "connect() must be called first"

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mProtocolVersion:I

    .line 3
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSocket:Ljava/net/Socket;

    .line 3
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSocket:Ljava/net/Socket;

    .line 11
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isConnectionEstablished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    .line 3
    return v0
.end method

.method public varargs open(I[Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lio/github/muntashirakon/adb/AdbPairingRequiredException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    .line 1
    invoke-static {p1, p2}, Lio/github/muntashirakon/adb/LocalServices;->getDestination(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/muntashirakon/adb/AdbConnection;->open(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid service: "

    .line 3
    invoke-static {p1, v0}, Lo/jf;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public open(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lio/github/muntashirakon/adb/AdbPairingRequiredException;
        }
    .end annotation

    .line 9
    iget v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLastLocalId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLastLocalId:I

    .line 10
    iget-boolean v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    if-eqz v1, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    .line 11
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v1, v2, v3}, Lio/github/muntashirakon/adb/AdbConnection;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Z

    .line 12
    new-instance v1, Lio/github/muntashirakon/adb/AdbStream;

    invoke-direct {v1, p0, v0}, Lio/github/muntashirakon/adb/AdbStream;-><init>(Lio/github/muntashirakon/adb/AdbConnection;I)V

    .line 13
    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p1}, Lio/github/muntashirakon/adb/AdbProtocol;->generateOpen(ILjava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbStream;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    .line 19
    :cond_0
    iget-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p1, Ljava/net/ConnectException;

    const-string v0, "Stream open actively rejected by remote peer."

    invoke-direct {p1, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "connect() must be called first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendPacket([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AdbConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mDeviceName:Ljava/lang/String;

    .line 6
    return-void
.end method
