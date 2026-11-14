.class public final Lo/F6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/F6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lo/F6;->a:I

    .line 5
    packed-switch v2, :pswitch_data_0

    .line 8
    sget-boolean v2, Lo/g9;->d:Z

    .line 10
    if-nez v2, :cond_0

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    sget-object v2, Lo/g9;->c:Lo/g7;

    .line 15
    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v2}, Lo/g7;->b()V

    .line 20
    :cond_1
    sget-object v2, Lo/g9;->c:Lo/g7;

    .line 22
    if-eqz v2, :cond_2

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 27
    move-result v2

    .line 28
    if-ne v2, v1, :cond_2

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    sget-object v1, Lo/g9;->f:Lcom/ffrt/proxyread/HudAccessService;

    .line 33
    if-eqz v1, :cond_3

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    sget-object v1, Lo/g9;->e:Landroid/content/Context;

    .line 38
    :goto_0
    if-eqz v1, :cond_4

    .line 40
    sput-boolean v0, Lo/g9;->d:Z

    .line 42
    invoke-static {v1}, Lo/g9;->a(Landroid/content/Context;)V

    .line 45
    :cond_4
    :goto_1
    sget-object v0, Lo/g9;->a:Landroid/os/Handler;

    .line 47
    const-wide/16 v1, 0x10

    .line 49
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    :goto_2
    return-void

    .line 53
    :pswitch_0
    :try_start_0
    const-string v2, "EmojiCompat.EmojiCompatInitializer.run"

    .line 55
    sget v3, Lo/pg;->a:I

    .line 57
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 60
    sget-object v2, Lo/C6;->k:Lo/C6;

    .line 62
    if-eqz v2, :cond_5

    .line 64
    move v0, v1

    .line 65
    :cond_5
    if-eqz v0, :cond_6

    .line 67
    invoke-static {}, Lo/C6;->a()Lo/C6;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lo/C6;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    goto :goto_3

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto :goto_4

    .line 77
    :cond_6
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 80
    return-void

    .line 81
    :goto_4
    sget v1, Lo/pg;->a:I

    .line 83
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 86
    throw v0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
