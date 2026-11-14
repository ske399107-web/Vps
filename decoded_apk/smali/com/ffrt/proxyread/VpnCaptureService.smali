.class public final Lcom/ffrt/proxyread/VpnCaptureService;
.super Landroid/net/VpnService;
.source "SourceFile"


# static fields
.field public static final ACTION_STOP:Ljava/lang/String; = "com.ffrt.proxyread.STOP"

.field private static final CH:Ljava/lang/String; = "proxy_read"

.field public static final Companion:Lo/ji;

.field public static final FF_MAX:Ljava/lang/String; = "com.dts.freefiremax"

.field public static final FF_PKG:Ljava/lang/String; = "com.dts.freefireth"

.field private static volatile running:Z

.field private static volatile wantOn:Z


# instance fields
.field private engine:Lcom/ffrt/proxyread/PacketEngine;

.field private tun:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/ji;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/ffrt/proxyread/VpnCaptureService;->Companion:Lo/ji;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/ffrt/proxyread/PacketEngine;Lcom/ffrt/proxyread/VpnCaptureService;)Lo/Ug;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ffrt/proxyread/VpnCaptureService;->startCapture$lambda$4(Lcom/ffrt/proxyread/PacketEngine;Lcom/ffrt/proxyread/VpnCaptureService;)Lo/Ug;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRunning$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ffrt/proxyread/VpnCaptureService;->running:Z

    .line 3
    return v0
.end method

.method public static final synthetic access$getWantOn$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ffrt/proxyread/VpnCaptureService;->wantOn:Z

    .line 3
    return v0
.end method

.method public static final synthetic access$setWantOn$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ffrt/proxyread/VpnCaptureService;->wantOn:Z

    .line 3
    return-void
.end method

.method private final addUnderlyingDns(Landroid/net/VpnService$Builder;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const-class v1, Landroid/net/ConnectivityManager;

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 10
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 12
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 15
    const/4 v3, 0x3

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v1, :cond_4

    .line 19
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 22
    move-result-object v5

    .line 23
    array-length v6, v5

    .line 24
    move v7, v4

    .line 25
    :goto_0
    if-ge v7, v6, :cond_4

    .line 27
    aget-object v8, v5, v7

    .line 29
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 32
    move-result-object v9

    .line 33
    if-nez v9, :cond_0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v10, 0x4

    .line 37
    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 40
    move-result v10

    .line 41
    if-nez v10, :cond_3

    .line 43
    invoke-virtual {v9, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 46
    move-result v10

    .line 47
    invoke-virtual {v9, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 50
    move-result v11

    .line 51
    invoke-virtual {v9, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 54
    move-result v9

    .line 55
    if-nez v10, :cond_1

    .line 57
    if-nez v11, :cond_1

    .line 59
    if-eqz v9, :cond_3

    .line 61
    :cond_1
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 64
    move-result-object v8

    .line 65
    if-nez v8, :cond_2

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v2, v8}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 75
    :cond_3
    :goto_1
    add-int/2addr v7, v0

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object v1

    .line 81
    const-string v5, "iterator(...)"

    .line 83
    invoke-static {v1, v5}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    :catchall_0
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_6

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 96
    const-string v6, "next(...)"

    .line 98
    invoke-static {v5, v6}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    check-cast v5, Ljava/net/InetAddress;

    .line 103
    if-ge v4, v3, :cond_6

    .line 105
    instance-of v6, v5, Ljava/net/Inet4Address;

    .line 107
    if-eqz v6, :cond_5

    .line 109
    :try_start_0
    invoke-virtual {p1, v5}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/net/InetAddress;)Landroid/net/VpnService$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    add-int/2addr v4, v0

    .line 113
    goto :goto_2

    .line 114
    :cond_6
    if-nez v4, :cond_7

    .line 116
    const-string v0, "8.8.8.8"

    .line 118
    invoke-virtual {p1, v0}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 121
    const-string v0, "1.1.1.1"

    .line 123
    invoke-virtual {p1, v0}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 130
    goto :goto_4

    .line 131
    :cond_7
    sget p1, Lo/ta;->a:I

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    .line 135
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 141
    move-result-object v0

    .line 142
    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_9

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    move-result-object v1

    .line 152
    instance-of v2, v1, Ljava/net/Inet4Address;

    .line 154
    if-eqz v2, :cond_8

    .line 156
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    goto :goto_3

    .line 160
    :cond_9
    new-instance v0, Lo/Y5;

    .line 162
    const/16 v1, 0x9

    .line 164
    invoke-direct {v0, v1}, Lo/Y5;-><init>(I)V

    .line 167
    const/16 v1, 0x1f

    .line 169
    const/4 v2, 0x0

    .line 170
    invoke-static {p1, v2, v0, v1}, Lo/e4;->k0(Ljava/util/Collection;Ljava/lang/String;Lo/F8;I)Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "DNS "

    .line 178
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object p1

    .line 188
    invoke-static {p1}, Lo/ta;->a(Ljava/lang/String;)V

    .line 191
    :goto_4
    return-void
.end method

.method private static final addUnderlyingDns$lambda$6(Ljava/net/Inet4Address;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p0, ""

    .line 15
    :goto_0
    return-object p0
.end method

.method public static synthetic b(Ljava/net/Inet4Address;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ffrt/proxyread/VpnCaptureService;->addUnderlyingDns$lambda$6(Ljava/net/Inet4Address;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private final notif()Landroid/app/Notification;
    .locals 4

    .line 1
    const-class v0, Landroid/app/NotificationManager;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/NotificationManager;

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    const/16 v2, 0x1a

    .line 13
    if-lt v1, v2, :cond_0

    .line 15
    invoke-static {}, Lo/b;->f()V

    .line 18
    const v1, 0x7f0e002d

    .line 21
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lo/b;->q(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lo/b;->g(Landroid/app/NotificationChannel;)V

    .line 32
    invoke-static {v0, v1}, Lo/b;->i(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 35
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 37
    const-class v1, Lcom/ffrt/proxyread/MainActivity;

    .line 39
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const/high16 v1, 0xc000000

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lo/Zb;

    .line 51
    const-string v2, "proxy_read"

    .line 53
    invoke-direct {v1, p0, v2}, Lo/Zb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    const v2, 0x7f0e00a4

    .line 59
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Lo/Zb;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 66
    move-result-object v2

    .line 67
    iput-object v2, v1, Lo/Zb;->e:Ljava/lang/CharSequence;

    .line 69
    const v2, 0x7f0e00a3

    .line 72
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Lo/Zb;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 79
    move-result-object v2

    .line 80
    iput-object v2, v1, Lo/Zb;->f:Ljava/lang/CharSequence;

    .line 82
    iget-object v2, v1, Lo/Zb;->p:Landroid/app/Notification;

    .line 84
    const v3, 0x108007d

    .line 87
    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 89
    iput-object v0, v1, Lo/Zb;->g:Landroid/app/PendingIntent;

    .line 91
    const/4 v0, 0x2

    .line 92
    const/4 v2, 0x1

    .line 93
    invoke-virtual {v1, v0, v2}, Lo/Zb;->c(IZ)V

    .line 96
    iput-boolean v2, v1, Lo/Zb;->q:Z

    .line 98
    const/4 v0, -0x2

    .line 99
    iput v0, v1, Lo/Zb;->h:I

    .line 101
    invoke-virtual {v1}, Lo/Zb;->a()Landroid/app/Notification;

    .line 104
    move-result-object v0

    .line 105
    const-string v1, "build(...)"

    .line 107
    invoke-static {v0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    return-object v0
.end method

.method private final startCapture()V
    .locals 7

    .line 1
    new-instance v0, Landroid/net/VpnService$Builder;

    .line 3
    invoke-direct {v0, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 6
    const v1, 0x7f0e00b1

    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 16
    move-result-object v0

    .line 17
    const/16 v1, 0xfa0

    .line 19
    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "10.111.0.2"

    .line 25
    const/16 v2, 0x20

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "0.0.0.0"

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->setBlocking(Z)Landroid/net/VpnService$Builder;

    .line 42
    move-result-object v0

    .line 43
    const-string v3, "setBlocking(...)"

    .line 45
    invoke-static {v0, v3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    const/16 v4, 0x1d

    .line 52
    if-lt v3, v4, :cond_0

    .line 54
    invoke-static {v0}, Lo/u;->j(Landroid/net/VpnService$Builder;)V

    .line 57
    :cond_0
    :try_start_0
    sget v3, Landroid/system/OsConstants;->AF_INET6:I

    .line 59
    invoke-virtual {v0, v3}, Landroid/net/VpnService$Builder;->allowFamily(I)Landroid/net/VpnService$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :catchall_0
    invoke-direct {p0, v0}, Lcom/ffrt/proxyread/VpnCaptureService;->addUnderlyingDns(Landroid/net/VpnService$Builder;)V

    .line 65
    :try_start_1
    const-string v3, "com.dts.freefireth"

    .line 67
    invoke-virtual {v0, v3}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    move v3, v1

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v3

    .line 73
    sget v4, Lo/ta;->a:I

    .line 75
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    const-string v5, "addAllowedApplication FF: "

    .line 83
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3}, Lo/ta;->a(Ljava/lang/String;)V

    .line 96
    move v3, v2

    .line 97
    :goto_0
    :try_start_2
    const-string v4, "com.dts.freefiremax"

    .line 99
    invoke-virtual {v0, v4}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 102
    move v3, v1

    .line 103
    :catch_1
    if-nez v3, :cond_1

    .line 105
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v0, v4}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    :catchall_1
    sget v4, Lo/ta;->a:I

    .line 114
    :cond_1
    invoke-virtual {v0}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    .line 117
    move-result-object v0

    .line 118
    if-nez v0, :cond_2

    .line 120
    sget v0, Lo/ta;->a:I

    .line 122
    sput-boolean v2, Lcom/ffrt/proxyread/VpnCaptureService;->running:Z

    .line 124
    return-void

    .line 125
    :cond_2
    iput-object v0, p0, Lcom/ffrt/proxyread/VpnCaptureService;->tun:Landroid/os/ParcelFileDescriptor;

    .line 127
    sput-boolean v1, Lcom/ffrt/proxyread/VpnCaptureService;->running:Z

    .line 129
    new-instance v4, Lcom/ffrt/proxyread/PacketEngine;

    .line 131
    new-instance v5, Ljava/io/FileInputStream;

    .line 133
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 136
    move-result-object v6

    .line 137
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 140
    new-instance v6, Ljava/io/FileOutputStream;

    .line 142
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 145
    move-result-object v0

    .line 146
    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 149
    invoke-direct {v4, p0, v5, v6}, Lcom/ffrt/proxyread/PacketEngine;-><init>(Landroid/net/VpnService;Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)V

    .line 152
    iput-object v4, p0, Lcom/ffrt/proxyread/VpnCaptureService;->engine:Lcom/ffrt/proxyread/PacketEngine;

    .line 154
    sget v0, Lo/ta;->a:I

    .line 156
    if-eqz v3, :cond_3

    .line 158
    const-string v0, "solo com.dts.freefireth"

    .line 160
    goto :goto_1

    .line 161
    :cond_3
    const-string v0, "full"

    .line 163
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    const-string v5, "VPN activa \u00b7 "

    .line 167
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v0, " \u00b7 TCP/UDP directo \u00b7 IPv6 omitido"

    .line 175
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 182
    invoke-static {v0}, Lo/ta;->a(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lo/i9;->a()V

    .line 188
    sget-object v0, Lo/Hb;->a:[B

    .line 190
    invoke-static {}, Lo/Hb;->j()V

    .line 193
    sget-object v0, Lo/Tg;->a:Lo/Tg;

    .line 195
    invoke-virtual {v0}, Lo/Tg;->u()V

    .line 198
    const-string v0, "proxy_read"

    .line 200
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 203
    move-result-object v0

    .line 204
    const-string v3, "moco_on"

    .line 206
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 209
    move-result v0

    .line 210
    invoke-static {v0}, Lo/Hb;->k(Z)V

    .line 213
    invoke-static {p0}, Lo/g9;->c(Landroid/content/Context;)V

    .line 216
    sget-boolean v0, Lo/L1;->b:Z

    .line 218
    if-eqz v0, :cond_4

    .line 220
    sget-boolean v0, Lo/x9;->T:Z

    .line 222
    if-nez v0, :cond_4

    .line 224
    invoke-static {p0}, Lo/w0;->b(Landroid/content/Context;)V

    .line 227
    :cond_4
    new-instance v0, Lo/t0;

    .line 229
    invoke-direct {v0, v4, p0, v1}, Lo/t0;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    .line 232
    const/16 v1, 0x17

    .line 234
    const-string v2, "pr-tun"

    .line 236
    invoke-static {v2, v0, v1}, Lo/Ha;->y0(Ljava/lang/String;Lo/u8;I)Lo/Uf;

    .line 239
    return-void
.end method

.method private static final startCapture$lambda$4(Lcom/ffrt/proxyread/PacketEngine;Lcom/ffrt/proxyread/VpnCaptureService;)Lo/Ug;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ffrt/proxyread/PacketEngine;->loop()V

    .line 4
    sget p0, Lo/ta;->a:I

    .line 6
    const/4 p0, 0x0

    .line 7
    sput-boolean p0, Lcom/ffrt/proxyread/VpnCaptureService;->running:Z

    .line 9
    :try_start_0
    iget-object p0, p1, Lcom/ffrt/proxyread/VpnCaptureService;->tun:Landroid/os/ParcelFileDescriptor;

    .line 11
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :catchall_0
    :cond_0
    const/4 p0, 0x0

    .line 17
    iput-object p0, p1, Lcom/ffrt/proxyread/VpnCaptureService;->tun:Landroid/os/ParcelFileDescriptor;

    .line 19
    iput-object p0, p1, Lcom/ffrt/proxyread/VpnCaptureService;->engine:Lcom/ffrt/proxyread/PacketEngine;

    .line 21
    sget-boolean p0, Lcom/ffrt/proxyread/VpnCaptureService;->wantOn:Z

    .line 23
    if-eqz p0, :cond_1

    .line 25
    const-wide/16 v0, 0x320

    .line 27
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    :catch_0
    sget-boolean p0, Lcom/ffrt/proxyread/VpnCaptureService;->wantOn:Z

    .line 32
    if-eqz p0, :cond_1

    .line 34
    invoke-direct {p1}, Lcom/ffrt/proxyread/VpnCaptureService;->startCapture()V

    .line 37
    :cond_1
    sget-object p0, Lo/Ug;->a:Lo/Ug;

    .line 39
    return-object p0
.end method

.method private final stopCapture()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/ffrt/proxyread/VpnCaptureService;->wantOn:Z

    .line 4
    sput-boolean v0, Lcom/ffrt/proxyread/VpnCaptureService;->running:Z

    .line 6
    iget-object v1, p0, Lcom/ffrt/proxyread/VpnCaptureService;->engine:Lcom/ffrt/proxyread/PacketEngine;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/ffrt/proxyread/PacketEngine;->stop()V

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/ffrt/proxyread/VpnCaptureService;->engine:Lcom/ffrt/proxyread/PacketEngine;

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/ffrt/proxyread/VpnCaptureService;->tun:Landroid/os/ParcelFileDescriptor;

    .line 18
    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :catchall_0
    :cond_1
    iput-object v1, p0, Lcom/ffrt/proxyread/VpnCaptureService;->tun:Landroid/os/ParcelFileDescriptor;

    .line 25
    sget-object v1, Lo/g9;->a:Landroid/os/Handler;

    .line 27
    new-instance v2, Lo/d9;

    .line 29
    invoke-direct {v2, v0}, Lo/d9;-><init>(I)V

    .line 32
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    invoke-static {}, Lo/i9;->a()V

    .line 38
    sget-object v0, Lo/Hb;->a:[B

    .line 40
    invoke-static {}, Lo/Hb;->j()V

    .line 43
    sget-object v0, Lo/Tg;->a:Lo/Tg;

    .line 45
    invoke-virtual {v0}, Lo/Tg;->u()V

    .line 48
    sget v0, Lo/ta;->a:I

    .line 50
    return-void
.end method

.method public static final z(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/ffrt/proxyread/VpnCaptureService;->Companion:Lo/ji;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lo/ji;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ffrt/proxyread/VpnCaptureService;->stopCapture()V

    .line 4
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 7
    return-void
.end method

.method public onRevoke()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ffrt/proxyread/VpnCaptureService;->stopCapture()V

    .line 4
    invoke-super {p0}, Landroid/net/VpnService;->onRevoke()V

    .line 7
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ffrt/proxyread/VpnCaptureService;->notif()Landroid/app/Notification;

    .line 4
    move-result-object p2

    .line 5
    const/4 p3, 0x1

    .line 6
    invoke-virtual {p0, p3, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    const/4 p2, 0x2

    .line 18
    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 23
    move-result v0

    .line 24
    const v1, -0x1940bcd5

    .line 27
    if-eq v0, v1, :cond_1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const-string v0, "com.ffrt.proxyread.STOP"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 38
    invoke-direct {p0}, Lcom/ffrt/proxyread/VpnCaptureService;->stopCapture()V

    .line 41
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 44
    return p2

    .line 45
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/ffrt/proxyread/Integrity;->c(Landroid/content/Context;)V

    .line 48
    const/4 p1, 0x7

    .line 49
    const/4 v0, 0x0

    .line 50
    :try_start_0
    invoke-static {p1, v0}, Lcom/ffrt/proxyread/SchedHint;->n(II)I

    .line 53
    move-result p1

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    new-instance v1, Lo/de;

    .line 62
    invoke-direct {v1, p1}, Lo/de;-><init>(Ljava/lang/Throwable;)V

    .line 65
    move-object p1, v1

    .line 66
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v0

    .line 70
    instance-of v1, p1, Lo/de;

    .line 72
    if-eqz v1, :cond_3

    .line 74
    move-object p1, v0

    .line 75
    :cond_3
    check-cast p1, Ljava/lang/Number;

    .line 77
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 80
    move-result p1

    .line 81
    sget-boolean v0, Lo/L1;->b:Z

    .line 83
    if-eqz v0, :cond_6

    .line 85
    invoke-static {}, Lcom/ffrt/proxyread/Integrity;->a()Z

    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_6

    .line 91
    if-eq p1, p3, :cond_4

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    sput-boolean p3, Lcom/ffrt/proxyread/VpnCaptureService;->wantOn:Z

    .line 96
    iget-object p1, p0, Lcom/ffrt/proxyread/VpnCaptureService;->tun:Landroid/os/ParcelFileDescriptor;

    .line 98
    if-nez p1, :cond_5

    .line 100
    invoke-direct {p0}, Lcom/ffrt/proxyread/VpnCaptureService;->startCapture()V

    .line 103
    :cond_5
    return p3

    .line 104
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/ffrt/proxyread/VpnCaptureService;->stopCapture()V

    .line 107
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 110
    return p2
.end method
