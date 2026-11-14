.class public final synthetic Lo/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/c1;->a:I

    iput-object p1, p0, Lo/c1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lo/c1;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance v0, Lo/Uc;

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v1, Lo/x9;->z:Lo/u6;

    .line 13
    const/4 v2, 0x0

    .line 14
    iget-object v3, p0, Lo/c1;->b:Landroid/content/Context;

    .line 16
    invoke-static {v3, v0, v1, v2}, Lo/x9;->o0(Landroid/content/Context;Ljava/util/concurrent/Executor;Lo/Vc;Z)V

    .line 19
    return-void

    .line 20
    :pswitch_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 26
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 29
    const/4 v6, 0x1

    .line 30
    const-wide/16 v7, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    move-object v4, v0

    .line 34
    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 37
    new-instance v1, Lo/c1;

    .line 39
    iget-object v2, p0, Lo/c1;->b:Landroid/content/Context;

    .line 41
    const/4 v3, 0x3

    .line 42
    invoke-direct {v1, v2, v3}, Lo/c1;-><init>(Landroid/content/Context;I)V

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 48
    return-void

    .line 49
    :pswitch_1
    iget-object v0, p0, Lo/c1;->b:Landroid/content/Context;

    .line 51
    sget-object v1, Lo/g9;->a:Landroid/os/Handler;

    .line 53
    sget-object v1, Lo/g9;->f:Lcom/ffrt/proxyread/HudAccessService;

    .line 55
    if-eqz v1, :cond_0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    move-result-object v1

    .line 62
    :goto_0
    invoke-static {v1}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 65
    invoke-static {v1}, Lo/g9;->a(Landroid/content/Context;)V

    .line 68
    return-void

    .line 69
    :pswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    const/4 v1, 0x1

    .line 72
    const/16 v2, 0x21

    .line 74
    if-lt v0, v2, :cond_6

    .line 76
    new-instance v3, Landroid/content/ComponentName;

    .line 78
    iget-object v4, p0, Lo/c1;->b:Landroid/content/Context;

    .line 80
    const-string v5, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    .line 82
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 92
    move-result v5

    .line 93
    if-eq v5, v1, :cond_6

    .line 95
    const-string v5, "locale"

    .line 97
    if-lt v0, v2, :cond_3

    .line 99
    sget-object v0, Lo/h1;->g:Lo/G2;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    new-instance v2, Lo/A2;

    .line 106
    invoke-direct {v2, v0}, Lo/A2;-><init>(Lo/G2;)V

    .line 109
    :cond_1
    invoke-virtual {v2}, Lo/A2;->hasNext()Z

    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v2}, Lo/A2;->next()Ljava/lang/Object;

    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 121
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lo/h1;

    .line 127
    if-eqz v0, :cond_1

    .line 129
    check-cast v0, Lo/v1;

    .line 131
    iget-object v0, v0, Lo/v1;->k:Landroid/content/Context;

    .line 133
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    move-result-object v0

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    const/4 v0, 0x0

    .line 141
    :goto_1
    if-eqz v0, :cond_4

    .line 143
    invoke-static {v0}, Lo/e1;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    .line 146
    move-result-object v0

    .line 147
    new-instance v2, Lo/ra;

    .line 149
    new-instance v6, Lo/sa;

    .line 151
    invoke-direct {v6, v0}, Lo/sa;-><init>(Landroid/os/LocaleList;)V

    .line 154
    invoke-direct {v2, v6}, Lo/ra;-><init>(Lo/sa;)V

    .line 157
    goto :goto_2

    .line 158
    :cond_3
    sget-object v2, Lo/h1;->c:Lo/ra;

    .line 160
    if-eqz v2, :cond_4

    .line 162
    goto :goto_2

    .line 163
    :cond_4
    sget-object v2, Lo/ra;->b:Lo/ra;

    .line 165
    :goto_2
    iget-object v0, v2, Lo/ra;->a:Lo/sa;

    .line 167
    iget-object v0, v0, Lo/sa;->a:Landroid/os/LocaleList;

    .line 169
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_5

    .line 175
    invoke-static {v4}, Lo/x9;->P(Landroid/content/Context;)Ljava/lang/String;

    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    move-result-object v2

    .line 183
    if-eqz v2, :cond_5

    .line 185
    invoke-static {v0}, Lo/d1;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 188
    move-result-object v0

    .line 189
    invoke-static {v2, v0}, Lo/e1;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    .line 192
    :cond_5
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0, v3, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 199
    :cond_6
    sput-boolean v1, Lo/h1;->f:Z

    .line 201
    return-void

    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
