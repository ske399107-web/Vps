.class public abstract Lio/github/muntashirakon/adb/AbsAdbConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

.field private mApi:I

.field private mHostAddress:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mThrowOnUnauthorised:Z

.field private mTimeout:J

.field private mTimeoutUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    .line 11
    const-string v0, "127.0.0.1"

    .line 13
    iput-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    .line 15
    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    .line 18
    const-wide v0, 0x7fffffffffffffffL

    .line 23
    iput-wide v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    iput-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mThrowOnUnauthorised:Z

    .line 32
    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->lambda$autoConnect$1(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;I)V

    return-void
.end method

.method private autoConnect(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lio/github/muntashirakon/adb/AdbPairingRequiredException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 29
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 30
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 31
    new-instance v5, Lio/github/muntashirakon/adb/android/AdbMdns;

    new-instance v6, Lo/c;

    const/4 v7, 0x2

    invoke-direct {v6, v3, v1, v4, v7}, Lo/c;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;I)V

    invoke-direct {v5, p1, p2, v6}, Lio/github/muntashirakon/adb/android/AdbMdns;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;)V

    .line 32
    invoke-virtual {v5}, Lio/github/muntashirakon/adb/android/AdbMdns;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p3, p4, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    .line 34
    :try_start_2
    invoke-virtual {v5}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 35
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 36
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-eqz p1, :cond_0

    if-eq p2, v2, :cond_0

    .line 37
    iput-object p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    .line 38
    new-instance p3, Lio/github/muntashirakon/adb/AdbConnection$Builder;

    invoke-direct {p3, p1, p2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;-><init>(Ljava/lang/String;I)V

    iget p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    .line 39
    invoke-virtual {p3, p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setApi(I)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 40
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getAdbKeyPair()Lio/github/muntashirakon/adb/KeyPair;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setKeyPair(Lio/github/muntashirakon/adb/KeyPair;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getDeviceName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setDeviceName(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->build()Lio/github/muntashirakon/adb/AdbConnection;

    move-result-object p1

    iput-object p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 43
    iget-wide p2, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    iget-object p4, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    iget-boolean v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mThrowOnUnauthorised:Z

    invoke-virtual {p1, p2, p3, p4, v1}, Lio/github/muntashirakon/adb/AdbConnection;->connect(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not find any valid host address or port"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :cond_1
    :try_start_3
    new-instance p1, Ljava/lang/InterruptedException;

    const-string p2, "Timed out while trying to find a valid host address and port"

    invoke-direct {p1, p2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 46
    :try_start_4
    invoke-virtual {v5}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 47
    throw p1

    .line 48
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public static synthetic b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->lambda$autoConnect$2(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public static synthetic c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->lambda$autoConnect$0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;I)V

    return-void
.end method

.method private getAdbKeyPair()Lio/github/muntashirakon/adb/KeyPair;
    .locals 3

    .line 1
    new-instance v0, Lio/github/muntashirakon/adb/KeyPair;

    .line 3
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getPrivateKey()Ljava/security/PrivateKey;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    check-cast v1, Ljava/security/PrivateKey;

    .line 12
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getCertificate()Ljava/security/cert/Certificate;

    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-direct {v0, v1, v2}, Lio/github/muntashirakon/adb/KeyPair;-><init>(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;)V

    .line 22
    return-object v0
.end method

.method private static synthetic lambda$autoConnect$0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;I)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 13
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 16
    return-void
.end method

.method private static synthetic lambda$autoConnect$1(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;I)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 13
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 16
    return-void
.end method

.method private static synthetic lambda$autoConnect$2(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;I)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 13
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 16
    return-void
.end method


# virtual methods
.method public autoConnect(Landroid/content/Context;J)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lio/github/muntashirakon/adb/AdbPairingRequiredException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 3
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    new-instance v5, Lio/github/muntashirakon/adb/android/AdbMdns;

    const-string v6, "adb"

    new-instance v7, Lo/c;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v1, v4, v8}, Lo/c;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;I)V

    invoke-direct {v5, p1, v6, v7}, Lio/github/muntashirakon/adb/android/AdbMdns;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;)V

    .line 6
    invoke-virtual {v5}, Lio/github/muntashirakon/adb/android/AdbMdns;->start()V

    .line 7
    new-instance v6, Lio/github/muntashirakon/adb/android/AdbMdns;

    const-string v7, "adb-tls-connect"

    new-instance v8, Lo/c;

    const/4 v9, 0x1

    invoke-direct {v8, v3, v1, v4, v9}, Lo/c;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;I)V

    invoke-direct {v6, p1, v7, v8}, Lio/github/muntashirakon/adb/android/AdbMdns;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;)V

    .line 8
    invoke-virtual {v6}, Lio/github/muntashirakon/adb/android/AdbMdns;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p2, p3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    .line 10
    :try_start_2
    invoke-virtual {v5}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 11
    invoke-virtual {v6}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 12
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-eqz p1, :cond_0

    if-eq p2, v2, :cond_0

    .line 14
    iput-object p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    .line 15
    new-instance p3, Lio/github/muntashirakon/adb/AdbConnection$Builder;

    invoke-direct {p3, p1, p2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;-><init>(Ljava/lang/String;I)V

    iget p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    .line 16
    invoke-virtual {p3, p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setApi(I)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 17
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getAdbKeyPair()Lio/github/muntashirakon/adb/KeyPair;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setKeyPair(Lio/github/muntashirakon/adb/KeyPair;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getDeviceName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setDeviceName(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->build()Lio/github/muntashirakon/adb/AdbConnection;

    move-result-object p1

    iput-object p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 20
    iget-wide p2, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    iget-boolean v2, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mThrowOnUnauthorised:Z

    invoke-virtual {p1, p2, p3, v1, v2}, Lio/github/muntashirakon/adb/AdbConnection;->connect(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not find any valid host address or port"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :cond_1
    :try_start_3
    new-instance p1, Ljava/lang/InterruptedException;

    const-string p2, "Timed out while trying to find a valid host address and port"

    invoke-direct {p1, p2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 23
    :try_start_4
    invoke-virtual {v5}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 24
    invoke-virtual {v6}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 25
    throw p1

    .line 26
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getPrivateKey()Ljava/security/PrivateKey;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lo/b;->o(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_1

    .line 9
    :catch_0
    move-exception v0

    .line 10
    goto :goto_0

    .line 11
    :catch_1
    move-exception v0

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    :goto_1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AdbConnection;->close()V

    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 25
    :cond_0
    return-void
.end method

.method public connect(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lio/github/muntashirakon/adb/AdbPairingRequiredException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lio/github/muntashirakon/adb/AdbConnection$Builder;

    iget-object v2, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;-><init>(Ljava/lang/String;I)V

    iget p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    .line 5
    invoke-virtual {v1, p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setApi(I)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 6
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getAdbKeyPair()Lio/github/muntashirakon/adb/KeyPair;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setKeyPair(Lio/github/muntashirakon/adb/KeyPair;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setDeviceName(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->build()Lio/github/muntashirakon/adb/AdbConnection;

    move-result-object p1

    iput-object p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 9
    iget-wide v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    iget-object v3, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    iget-boolean v4, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mThrowOnUnauthorised:Z

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/github/muntashirakon/adb/AdbConnection;->connect(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 10
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public connect(Ljava/lang/String;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lio/github/muntashirakon/adb/AdbPairingRequiredException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 14
    :cond_0
    iput-object p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    .line 15
    new-instance v1, Lio/github/muntashirakon/adb/AdbConnection$Builder;

    invoke-direct {v1, p1, p2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;-><init>(Ljava/lang/String;I)V

    iget p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    .line 16
    invoke-virtual {v1, p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setApi(I)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 17
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getAdbKeyPair()Lio/github/muntashirakon/adb/KeyPair;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setKeyPair(Lio/github/muntashirakon/adb/KeyPair;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getDeviceName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->setDeviceName(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbConnection$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lio/github/muntashirakon/adb/AdbConnection$Builder;->build()Lio/github/muntashirakon/adb/AdbConnection;

    move-result-object p1

    iput-object p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 20
    iget-wide v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    iget-object p2, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    iget-boolean v3, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mThrowOnUnauthorised:Z

    invoke-virtual {p1, v1, v2, p2, v3}, Lio/github/muntashirakon/adb/AdbConnection;->connect(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public connectTcp(Landroid/content/Context;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lio/github/muntashirakon/adb/AdbPairingRequiredException;
        }
    .end annotation

    .line 1
    const-string v0, "adb"

    .line 3
    invoke-direct {p0, p1, v0, p2, p3}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->autoConnect(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public connectTls(Landroid/content/Context;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lio/github/muntashirakon/adb/AdbPairingRequiredException;
        }
    .end annotation

    .line 1
    const-string v0, "adb-tls-connect"

    .line 3
    invoke-direct {p0, p1, v0, p2, p3}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->autoConnect(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbConnection;->close()V

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public getAdbConnection()Lio/github/muntashirakon/adb/AdbConnection;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public getApi()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    .line 3
    return v0
.end method

.method public abstract getCertificate()Ljava/security/cert/Certificate;
.end method

.method public abstract getDeviceName()Ljava/lang/String;
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public abstract getPrivateKey()Ljava/security/PrivateKey;
.end method

.method public getTimeout()J
    .locals 3

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    .line 3
    iget-wide v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getTimeoutUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    .line 3
    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbConnection;->isConnected()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 16
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbConnection;->isConnectionEstablished()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    monitor-exit v0

    .line 28
    return v1

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1
.end method

.method public isThrowOnUnauthorised()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mThrowOnUnauthorised:Z

    .line 3
    return v0
.end method

.method public varargs openStream(I[Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbConnection;->isConnected()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 9
    :try_start_1
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    invoke-virtual {v1, p1, p2}, Lio/github/muntashirakon/adb/AdbConnection;->open(I[Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    move-result-object p1
    :try_end_1
    .catch Lio/github/muntashirakon/adb/AdbPairingRequiredException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 11
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Not connected to ADB."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public openStream(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbConnection;->isConnected()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    invoke-virtual {v1, p1}, Lio/github/muntashirakon/adb/AdbConnection;->open(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    move-result-object p1
    :try_end_1
    .catch Lio/github/muntashirakon/adb/AdbPairingRequiredException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Not connected to ADB."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public pair(ILjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->pair(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public pair(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getAdbKeyPair()Lio/github/muntashirakon/adb/KeyPair;

    move-result-object v5

    .line 4
    new-instance v7, Lio/github/muntashirakon/adb/PairingConnectionCtx;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UTF-8"

    invoke-static {p3, v1}, Lio/github/muntashirakon/adb/StringCompat;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lio/github/muntashirakon/adb/PairingConnectionCtx;-><init>(Ljava/lang/String;I[BLio/github/muntashirakon/adb/KeyPair;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {v7}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    invoke-virtual {v7}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->close()V

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 9
    :try_start_3
    invoke-virtual {v7}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    .line 10
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public setApi(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mApi:I

    .line 3
    return-void
.end method

.method public setHostAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mHostAddress:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public setThrowOnUnauthorised(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mThrowOnUnauthorised:Z

    .line 3
    return-void
.end method

.method public setTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeout:J

    .line 3
    iput-object p3, p0, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    .line 5
    return-void
.end method
