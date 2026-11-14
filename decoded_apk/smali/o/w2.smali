.class public final Lo/w2;
.super Lo/Ha;
.source "SourceFile"


# static fields
.field public static volatile l:Lo/w2;


# instance fields
.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Lo/w2;

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-direct {p1, v0}, Lo/w2;-><init>(I)V

    .line 13
    iput-object p1, p0, Lo/w2;->k:Ljava/lang/Object;

    .line 15
    return-void

    .line 16
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance p1, Ljava/lang/Object;

    .line 21
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/w2;->k:Ljava/lang/Object;

    .line 26
    new-instance p1, Lo/L5;

    .line 28
    invoke-direct {p1}, Lo/L5;-><init>()V

    .line 31
    const/4 v0, 0x4

    .line 32
    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 35
    return-void

    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static D0()Lo/w2;
    .locals 3

    .line 1
    sget-object v0, Lo/w2;->l:Lo/w2;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lo/w2;->l:Lo/w2;

    .line 7
    return-object v0

    .line 8
    :cond_0
    const-class v0, Lo/w2;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lo/w2;->l:Lo/w2;

    .line 13
    if-nez v1, :cond_1

    .line 15
    new-instance v1, Lo/w2;

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, v2}, Lo/w2;-><init>(I)V

    .line 21
    sput-object v1, Lo/w2;->l:Lo/w2;

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    sget-object v0, Lo/w2;->l:Lo/w2;

    .line 29
    return-object v0

    .line 30
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v1
.end method
