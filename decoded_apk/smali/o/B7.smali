.class public final Lo/B7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/B6;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lo/A7;

.field public final c:Lo/u6;

.field public final d:Ljava/lang/Object;

.field public e:Landroid/os/Handler;

.field public f:Ljava/util/concurrent/ThreadPoolExecutor;

.field public g:Ljava/util/concurrent/ThreadPoolExecutor;

.field public h:Lo/L1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/A7;)V
    .locals 2

    .line 1
    sget-object v0, Lo/C7;->d:Lo/u6;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/Object;

    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v1, p0, Lo/B7;->d:Ljava/lang/Object;

    .line 13
    const-string v1, "Context cannot be null"

    .line 15
    invoke-static {p1, v1}, Lo/Ha;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lo/B7;->a:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lo/B7;->b:Lo/A7;

    .line 26
    iput-object v0, p0, Lo/B7;->c:Lo/u6;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/B7;->d:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lo/B7;->h:Lo/L1;

    .line 7
    iget-object v2, p0, Lo/B7;->e:Landroid/os/Handler;

    .line 9
    if-eqz v2, :cond_0

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iput-object v1, p0, Lo/B7;->e:Landroid/os/Handler;

    .line 20
    iget-object v2, p0, Lo/B7;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 27
    :cond_1
    iput-object v1, p0, Lo/B7;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 29
    iput-object v1, p0, Lo/B7;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1
.end method

.method public final b()Lo/L7;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lo/B7;->c:Lo/u6;

    .line 3
    iget-object v1, p0, Lo/B7;->a:Landroid/content/Context;

    .line 5
    iget-object v2, p0, Lo/B7;->b:Lo/A7;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    const/4 v3, 0x0

    .line 21
    aget-object v0, v0, v3

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1, v0}, Lo/z7;->a(Landroid/content/Context;Ljava/util/List;)Lo/I0;

    .line 36
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    iget v1, v0, Lo/I0;->a:I

    .line 39
    if-nez v1, :cond_1

    .line 41
    iget-object v0, v0, Lo/I0;->b:Ljava/lang/Object;

    .line 43
    check-cast v0, Ljava/util/List;

    .line 45
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, [Lo/L7;

    .line 51
    if-eqz v0, :cond_0

    .line 53
    array-length v1, v0

    .line 54
    if-eqz v1, :cond_0

    .line 56
    aget-object v0, v0, v3

    .line 58
    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 61
    const-string v1, "fetchFonts failed (empty result)"

    .line 63
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    throw v0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 69
    const-string v2, "fetchFonts failed ("

    .line 71
    const-string v3, ")"

    .line 73
    invoke-static {v2, v1, v3}, Lo/o5;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 80
    throw v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    .line 84
    const-string v2, "provider not found"

    .line 86
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    throw v1
.end method

.method public final f(Lo/L1;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lo/B7;->d:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lo/B7;->h:Lo/L1;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    iget-object p1, p0, Lo/B7;->d:Ljava/lang/Object;

    .line 9
    monitor-enter p1

    .line 10
    :try_start_1
    iget-object v0, p0, Lo/B7;->h:Lo/L1;

    .line 12
    if-nez v0, :cond_0

    .line 14
    monitor-exit p1

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lo/B7;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 20
    if-nez v0, :cond_1

    .line 22
    const-string v0, "emojiCompat"

    .line 24
    new-instance v8, Lo/v4;

    .line 26
    invoke-direct {v8, v0}, Lo/v4;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 31
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 33
    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 35
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x1

    .line 40
    const-wide/16 v4, 0xf

    .line 42
    move-object v1, v0

    .line 43
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 50
    iput-object v0, p0, Lo/B7;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 52
    iput-object v0, p0, Lo/B7;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    :cond_1
    iget-object v0, p0, Lo/B7;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 56
    new-instance v1, Lo/i0;

    .line 58
    const/16 v2, 0x8

    .line 60
    invoke-direct {v1, v2, p0}, Lo/i0;-><init>(ILjava/lang/Object;)V

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 66
    monitor-exit p1

    .line 67
    :goto_0
    return-void

    .line 68
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw v0

    .line 70
    :catchall_1
    move-exception p1

    .line 71
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    throw p1
.end method
