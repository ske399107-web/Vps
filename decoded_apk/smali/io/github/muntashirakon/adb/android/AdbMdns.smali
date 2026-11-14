.class public Lio/github/muntashirakon/adb/android/AdbMdns;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;,
        Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;,
        Lio/github/muntashirakon/adb/android/AdbMdns$ResolveListener;,
        Lio/github/muntashirakon/adb/android/AdbMdns$ServiceType;
    }
.end annotation


# static fields
.field public static final SERVICE_TYPE_ADB:Ljava/lang/String; = "adb"

.field public static final SERVICE_TYPE_TLS_CONNECT:Ljava/lang/String; = "adb-tls-connect"

.field public static final SERVICE_TYPE_TLS_PAIRING:Ljava/lang/String; = "adb-tls-pairing"


# instance fields
.field private final mAdbDaemonDiscoveredListener:Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;

.field private final mContext:Landroid/content/Context;

.field private final mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

.field private final mNsdManager:Landroid/net/nsd/NsdManager;

.field private mRegistered:Z

.field private mRunning:Z

.field private mServiceName:Ljava/lang/String;

.field private final mServiceType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mContext:Landroid/content/Context;

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    const-string v0, "_%s._tcp"

    .line 18
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mServiceType:Ljava/lang/String;

    .line 24
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    check-cast p3, Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;

    .line 29
    iput-object p3, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mAdbDaemonDiscoveredListener:Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;

    .line 31
    const-string p2, "servicediscovery"

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/net/nsd/NsdManager;

    .line 39
    iput-object p1, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 41
    new-instance p1, Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;

    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-direct {p1, p0, p2}, Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;-><init>(Lio/github/muntashirakon/adb/android/AdbMdns;Lio/github/muntashirakon/adb/android/AdbMdns$1;)V

    .line 47
    iput-object p1, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 49
    return-void
.end method

.method public static synthetic access$200(Lio/github/muntashirakon/adb/android/AdbMdns;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/github/muntashirakon/adb/android/AdbMdns;->onDiscoveryStart()V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lio/github/muntashirakon/adb/android/AdbMdns;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/github/muntashirakon/adb/android/AdbMdns;->onDiscoverStop()V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lio/github/muntashirakon/adb/android/AdbMdns;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/github/muntashirakon/adb/android/AdbMdns;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lio/github/muntashirakon/adb/android/AdbMdns;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/github/muntashirakon/adb/android/AdbMdns;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lio/github/muntashirakon/adb/android/AdbMdns;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/github/muntashirakon/adb/android/AdbMdns;->onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V

    .line 4
    return-void
.end method

.method private isPortAvailable(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    .line 4
    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 9
    iget-object v3, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {v3}, Lio/github/muntashirakon/adb/android/AndroidUtils;->getHostIpAddress(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    invoke-direct {v2, v3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 18
    invoke-virtual {v1, v2, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_3
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception v1

    .line 32
    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 35
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 36
    :catch_0
    return v0
.end method

.method private onDiscoverStop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRegistered:Z

    .line 4
    return-void
.end method

.method private onDiscoveryStart()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRegistered:Z

    .line 4
    return-void
.end method

.method private onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 3
    new-instance v1, Lio/github/muntashirakon/adb/android/AdbMdns$ResolveListener;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lio/github/muntashirakon/adb/android/AdbMdns$ResolveListener;-><init>(Lio/github/muntashirakon/adb/android/AdbMdns;Lio/github/muntashirakon/adb/android/AdbMdns$1;)V

    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/net/nsd/NsdManager;->resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V

    .line 12
    return-void
.end method

.method private onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mServiceName:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mAdbDaemonDiscoveredListener:Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;

    .line 17
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHost()Ljava/net/InetAddress;

    .line 20
    move-result-object p1

    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-interface {v0, p1, v1}, Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;->onPortChanged(Ljava/net/InetAddress;I)V

    .line 25
    :cond_0
    return-void
.end method

.method private onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/net/NetworkInterface;

    .line 30
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v1

    .line 42
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/net/InetAddress;

    .line 54
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHost()Ljava/net/InetAddress;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    .line 75
    move-result v2

    .line 76
    invoke-direct {p0, v2}, Lio/github/muntashirakon/adb/android/AdbMdns;->isPortAvailable(I)Z

    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 82
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    iput-object v2, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mServiceName:Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mAdbDaemonDiscoveredListener:Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;

    .line 90
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHost()Ljava/net/InetAddress;

    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    .line 97
    move-result v4

    .line 98
    invoke-interface {v2, v3, v4}, Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;->onPortChanged(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    :cond_3
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    .line 3
    return v0
.end method

.method public start()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    .line 9
    iget-boolean v1, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRegistered:Z

    .line 11
    if-nez v1, :cond_1

    .line 13
    iget-object v1, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 15
    iget-object v2, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mServiceType:Ljava/lang/String;

    .line 17
    iget-object v3, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 19
    invoke-virtual {v1, v2, v0, v3}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 22
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    .line 9
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRegistered:Z

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 15
    iget-object v1, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 17
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 20
    :cond_1
    return-void
.end method
