.class public final synthetic Lo/D6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lo/D6;->a:I

    iput-object p1, p0, Lo/D6;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo/D6;->c:Ljava/lang/Object;

    iput-object p3, p0, Lo/D6;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lo/D6;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    sget v0, Lcom/ffrt/proxyread/LoginActivity;->y:I

    .line 8
    iget-object v0, p0, Lo/D6;->c:Ljava/lang/Object;

    .line 10
    check-cast v0, Lcom/ffrt/proxyread/LoginActivity;

    .line 12
    const v1, 0x7f050019

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lo/D6;->b:Ljava/lang/Object;

    .line 21
    check-cast v2, Landroid/widget/TextView;

    .line 23
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object v1, p0, Lo/D6;->d:Ljava/lang/Object;

    .line 28
    check-cast v1, Lo/m5;

    .line 30
    iget-object v3, v1, Lo/m5;->c:Ljava/lang/String;

    .line 32
    iget-object v1, v1, Lo/m5;->g:Ljava/lang/String;

    .line 34
    filled-new-array {v3, v1}, [Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lo/f4;->i0([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    move-result-object v1

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v1

    .line 51
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v4

    .line 61
    move-object v5, v4

    .line 62
    check-cast v5, Ljava/lang/String;

    .line 64
    invoke-static {v5}, Lo/tf;->G0(Ljava/lang/String;)Z

    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_0

    .line 70
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const-string v1, " \u00b7 "

    .line 76
    const/4 v4, 0x0

    .line 77
    const/16 v5, 0x3e

    .line 79
    invoke-static {v3, v1, v4, v5}, Lo/e4;->k0(Ljava/util/Collection;Ljava/lang/String;Lo/F8;I)Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Lo/tf;->G0(Ljava/lang/String;)Z

    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_2

    .line 89
    const-string v1, "OK"

    .line 91
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v1, Landroid/content/Intent;

    .line 96
    const-class v2, Lcom/ffrt/proxyread/MainActivity;

    .line 98
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 107
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lo/D6;->b:Ljava/lang/Object;

    .line 110
    check-cast v0, Lo/C;

    .line 112
    iget-object v1, p0, Lo/D6;->c:Ljava/lang/Object;

    .line 114
    check-cast v1, Lo/L1;

    .line 116
    iget-object v2, p0, Lo/D6;->d:Ljava/lang/Object;

    .line 118
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    :try_start_0
    iget-object v0, v0, Lo/C;->b:Ljava/lang/Object;

    .line 125
    check-cast v0, Landroid/content/Context;

    .line 127
    invoke-static {v0}, Lo/L1;->p(Landroid/content/Context;)Lo/C7;

    .line 130
    move-result-object v0

    .line 131
    if-eqz v0, :cond_3

    .line 133
    iget-object v3, v0, Lo/z6;->b:Ljava/lang/Object;

    .line 135
    check-cast v3, Lo/B6;

    .line 137
    check-cast v3, Lo/B7;

    .line 139
    iget-object v4, v3, Lo/B7;->d:Ljava/lang/Object;

    .line 141
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :try_start_1
    iput-object v2, v3, Lo/B7;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 144
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    :try_start_2
    iget-object v0, v0, Lo/z6;->b:Ljava/lang/Object;

    .line 147
    check-cast v0, Lo/B6;

    .line 149
    new-instance v3, Lo/E6;

    .line 151
    invoke-direct {v3, v1, v2}, Lo/E6;-><init>(Lo/L1;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 154
    invoke-interface {v0, v3}, Lo/B6;->f(Lo/L1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    goto :goto_2

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    goto :goto_1

    .line 160
    :catchall_1
    move-exception v0

    .line 161
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    :try_start_4
    throw v0

    .line 163
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 165
    const-string v3, "EmojiCompat font provider not available on this device."

    .line 167
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 170
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    :goto_1
    invoke-virtual {v1, v0}, Lo/L1;->K(Ljava/lang/Throwable;)V

    .line 174
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 177
    :goto_2
    return-void

    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
