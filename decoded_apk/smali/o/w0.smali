.class public abstract Lo/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/os/Handler;

.field public static final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static c:Lo/q0;

.field public static d:Landroid/content/Context;

.field public static volatile e:I

.field public static volatile f:I

.field public static volatile g:Ljava/lang/String;

.field public static volatile h:Z

.field public static volatile i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    sput-object v0, Lo/w0;->a:Landroid/os/Handler;

    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 17
    sput-object v0, Lo/w0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    const-string v0, "Ch\u01b0a n\u1ed1i adbd tr\u00ean m\u00e1y."

    .line 21
    sput-object v0, Lo/w0;->g:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static a()V
    .locals 6

    .line 1
    sget-object v0, Lo/w0;->d:Landroid/content/Context;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sget v1, Lo/w0;->f:I

    .line 7
    invoke-static {v0, v1}, Lo/x9;->a(Landroid/content/Context;I)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    const-string v1, "ADB local \u0111\u00e3 n\u1ed1i."

    .line 15
    sput-object v1, Lo/w0;->g:Ljava/lang/String;

    .line 17
    :cond_0
    sget-boolean v1, Lo/x9;->T:Z

    .line 19
    const/4 v2, 0x1

    .line 20
    if-nez v1, :cond_5

    .line 22
    sget-boolean v1, Lo/x9;->T:Z

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 27
    move v1, v2

    .line 28
    goto :goto_3

    .line 29
    :cond_1
    :try_start_0
    sget-object v1, Lo/B0;->d:Lo/B0;

    .line 31
    if-eqz v1, :cond_2

    .line 33
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 36
    move-result v1

    .line 37
    if-ne v1, v2, :cond_2

    .line 39
    move v1, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v1, v3

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    goto :goto_1

    .line 45
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_2

    .line 50
    :goto_1
    new-instance v4, Lo/de;

    .line 52
    invoke-direct {v4, v1}, Lo/de;-><init>(Ljava/lang/Throwable;)V

    .line 55
    move-object v1, v4

    .line 56
    :goto_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 58
    instance-of v5, v1, Lo/de;

    .line 60
    if-eqz v5, :cond_3

    .line 62
    move-object v1, v4

    .line 63
    :cond_3
    check-cast v1, Ljava/lang/Boolean;

    .line 65
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    move-result v1

    .line 69
    :goto_3
    if-eqz v1, :cond_4

    .line 71
    goto :goto_4

    .line 72
    :cond_4
    move v2, v3

    .line 73
    :cond_5
    :goto_4
    sget-object v1, Lo/w0;->g:Ljava/lang/String;

    .line 75
    sget-object v3, Lo/w0;->a:Landroid/os/Handler;

    .line 77
    new-instance v4, Lo/u0;

    .line 79
    invoke-direct {v4, v0, v2, v1}, Lo/u0;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 82
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    sput-object p0, Lo/w0;->d:Landroid/content/Context;

    .line 7
    sget-boolean v0, Lo/x9;->T:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-static {p0}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    move-result-object p0

    .line 18
    const-class v0, Landroid/app/NotificationManager;

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/app/NotificationManager;

    .line 26
    if-eqz p0, :cond_0

    .line 28
    const/16 v0, 0x2a

    .line 30
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    sget-object v0, Lo/w0;->c:Lo/q0;

    .line 36
    const/4 v1, 0x0

    .line 37
    if-nez v0, :cond_3

    .line 39
    invoke-static {p0}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lo/w0;->c:Lo/q0;

    .line 44
    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {v0}, Lo/q0;->j()V

    .line 49
    :cond_2
    sput v1, Lo/w0;->e:I

    .line 51
    sput v1, Lo/w0;->f:I

    .line 53
    new-instance v0, Lo/q0;

    .line 55
    invoke-direct {v0, p0}, Lo/q0;-><init>(Landroid/content/Context;)V

    .line 58
    sput-object v0, Lo/w0;->c:Lo/q0;

    .line 60
    new-instance v2, Lo/s0;

    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-direct {v2, v3, p0}, Lo/s0;-><init>(ILjava/lang/Object;)V

    .line 66
    invoke-virtual {v0}, Lo/q0;->j()V

    .line 69
    iget-object v3, v0, Lo/q0;->b:Ljava/lang/Object;

    .line 71
    check-cast v3, Landroid/content/Context;

    .line 73
    const-string v4, "wifi"

    .line 75
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 79
    const-string v4, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    .line 81
    invoke-static {v3, v4}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 86
    const-string v4, "proxyread-adb"

    .line 88
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    .line 91
    move-result-object v3

    .line 92
    const/4 v4, 0x1

    .line 93
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 96
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 99
    iput-object v3, v0, Lo/q0;->e:Ljava/lang/Object;

    .line 101
    const-string v3, "_adb-tls-connect._tcp."

    .line 103
    const-string v5, "_adb._tcp."

    .line 105
    const-string v6, "_adb-tls-pairing._tcp."

    .line 107
    filled-new-array {v6, v3, v5}, [Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 111
    invoke-static {v3}, Lo/f4;->i0([Ljava/lang/Object;)Ljava/util/List;

    .line 114
    move-result-object v3

    .line 115
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 118
    move-result-object v3

    .line 119
    :catchall_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_3

    .line 125
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Ljava/lang/String;

    .line 131
    new-instance v6, Lo/A0;

    .line 133
    invoke-direct {v6, v5, v0, v2}, Lo/A0;-><init>(Ljava/lang/String;Lo/q0;Lo/s0;)V

    .line 136
    iget-object v7, v0, Lo/q0;->a:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :try_start_0
    iget-object v7, v0, Lo/q0;->c:Ljava/lang/Object;

    .line 143
    check-cast v7, Landroid/net/nsd/NsdManager;

    .line 145
    invoke-virtual {v7, v5, v4, v6}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    goto :goto_0

    .line 149
    :cond_3
    invoke-static {p0}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 152
    invoke-static {p0}, Lo/x9;->Z(Landroid/content/Context;)V

    .line 155
    const-string v0, "adb_session"

    .line 157
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 160
    move-result-object v0

    .line 161
    const-string v2, "paired"

    .line 163
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_4

    .line 169
    sget-boolean v0, Lo/x9;->T:Z

    .line 171
    if-nez v0, :cond_4

    .line 173
    invoke-static {p0}, Lo/w0;->c(Landroid/content/Context;)V

    .line 176
    :cond_4
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    sput-object p0, Lo/w0;->d:Landroid/content/Context;

    .line 7
    sget-boolean v0, Lo/w0;->i:Z

    .line 9
    if-nez v0, :cond_1

    .line 11
    sget-boolean v0, Lo/w0;->h:Z

    .line 13
    if-nez v0, :cond_1

    .line 15
    sget-boolean v0, Lo/x9;->T:Z

    .line 17
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    sput-boolean v0, Lo/w0;->i:Z

    .line 23
    const-string v0, "\u0110ang n\u1ed1i l\u1ea1i ADB\u2026"

    .line 25
    sput-object v0, Lo/w0;->g:Ljava/lang/String;

    .line 27
    invoke-static {}, Lo/w0;->a()V

    .line 30
    new-instance v0, Lo/r0;

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v0, v1, p0}, Lo/r0;-><init>(ILjava/lang/Object;)V

    .line 36
    const/16 p0, 0x17

    .line 38
    const-string v1, "pr-adb-re"

    .line 40
    invoke-static {v1, v0, p0}, Lo/Ha;->y0(Ljava/lang/String;Lo/u8;I)Lo/Uf;

    .line 43
    :cond_1
    :goto_0
    return-void
.end method
