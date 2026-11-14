.class public Lcom/byp/dts/GameWatcherService;
.super Landroid/app/Service;
.source "GameWatcherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byp/dts/GameWatcherService$100000000;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "GameWatcher"

.field private static final TARGET_PACKAGE:Ljava/lang/String; = "com.dts.freefiremax"


# instance fields
.field private watcherThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$1000006(Lcom/byp/dts/GameWatcherService;Ljava/lang/String;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/byp/dts/GameWatcherService;->isAppRunning(Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method static synthetic access$1000007(Lcom/byp/dts/GameWatcherService;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/byp/dts/GameWatcherService;->openClearDataScreen()V

    return-void
.end method

.method static synthetic access$L1000000()Ljava/lang/String;
    .locals 3

    sget-object v2, Lcom/byp/dts/GameWatcherService;->TARGET_PACKAGE:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$S1000000(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/byp/dts/GameWatcherService;->TARGET_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method private createNotificationChannel()V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_0

    .line 41
    new-instance v5, Landroid/app/NotificationChannel;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "GameWatcher"

    const-string v8, "Game Watcher"

    const/4 v9, 0x2

    invoke-direct {v6, v7, v8, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v2, v5

    .line 42
    move-object v5, v0

    :try_start_0
    const-string v6, "android.app.NotificationManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/byp/dts/GameWatcherService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void

    :catch_0
    move-exception v5

    move-object v3, v5

    new-instance v5, Ljava/lang/NoClassDefFoundError;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private isAppRunning(Ljava/lang/String;)Z
    .locals 11

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Lcom/byp/dts/GameWatcherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    move-object v3, v9

    .line 67
    move-object v9, v3

    if-nez v9, :cond_0

    const/4 v9, 0x0

    move v0, v9

    .line 73
    :goto_0
    return v0

    .line 68
    :cond_0
    move-object v9, v3

    invoke-virtual {v9}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    move-object v4, v9

    .line 69
    move-object v9, v4

    if-nez v9, :cond_1

    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 70
    :cond_1
    move-object v9, v4

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    .line 71
    :cond_2
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 73
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 70
    :cond_3
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v7, v9

    .line 71
    move-object v9, v7

    iget-object v9, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    move v0, v9

    goto :goto_0
.end method

.method private openClearDataScreen()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 78
    move-object v4, v2

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "com.dts.freefiremax"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 79
    move-object v4, v2

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 80
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/byp/dts/GameWatcherService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startWatcher()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v2, v0

    new-instance v3, Ljava/lang/Thread;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Lcom/byp/dts/GameWatcherService$100000000;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/byp/dts/GameWatcherService$100000000;-><init>(Lcom/byp/dts/GameWatcherService;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v2, Lcom/byp/dts/GameWatcherService;->watcherThread:Ljava/lang/Thread;

    .line 62
    move-object v2, v0

    iget-object v2, v2, Lcom/byp/dts/GameWatcherService;->watcherThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    check-cast v3, Landroid/os/IBinder;

    move-object v0, v3

    return-object v0
.end method

.method public onDestroy()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/app/Service;->onDestroy()V

    .line 86
    move-object v2, v0

    iget-object v2, v2, Lcom/byp/dts/GameWatcherService;->watcherThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/byp/dts/GameWatcherService;->watcherThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v7, v0

    invoke-direct {v7}, Lcom/byp/dts/GameWatcherService;->createNotificationChannel()V

    .line 28
    new-instance v7, Landroid/app/Notification$Builder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const-string v10, "GameWatcher"

    invoke-direct {v8, v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v8, "MODDER GANG "

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-string v8, "Watching Free Fire Max..."

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x108009b

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    move-object v5, v7

    .line 33
    move-object v7, v0

    const/4 v8, 0x1

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/byp/dts/GameWatcherService;->startForeground(ILandroid/app/Notification;)V

    .line 35
    move-object v7, v0

    invoke-direct {v7}, Lcom/byp/dts/GameWatcherService;->startWatcher()V

    .line 36
    const/4 v7, 0x1

    move v0, v7

    return v0
.end method
