.class public abstract Lo/g9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/os/Handler;

.field public static b:Landroid/view/WindowManager;

.field public static c:Lo/g7;

.field public static d:Z

.field public static e:Landroid/content/Context;

.field public static volatile f:Lcom/ffrt/proxyread/HudAccessService;

.field public static final g:Lo/F6;


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
    sput-object v0, Lo/g9;->a:Landroid/os/Handler;

    .line 12
    new-instance v0, Lo/F6;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, v1}, Lo/F6;-><init>(I)V

    .line 18
    sput-object v0, Lo/g9;->g:Lo/F6;

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 10

    .line 1
    sget-boolean v0, Lo/g9;->d:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lo/g9;->c:Lo/g7;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 13
    move-result v0

    .line 14
    if-ne v0, v1, :cond_1

    .line 16
    sget-object p0, Lo/g9;->c:Lo/g7;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Lo/g7;->b()V

    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    sget-boolean v0, Lo/g9;->d:Z

    .line 26
    if-eqz v0, :cond_2

    .line 28
    invoke-static {}, Lo/g9;->b()V

    .line 31
    :cond_2
    sget-object v0, Lo/g9;->f:Lcom/ffrt/proxyread/HudAccessService;

    .line 33
    if-nez v0, :cond_4

    .line 35
    sget-object v0, Lo/g9;->f:Lcom/ffrt/proxyread/HudAccessService;

    .line 37
    if-eqz v0, :cond_3

    .line 39
    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 44
    move-result v0

    .line 45
    :goto_0
    if-nez v0, :cond_4

    .line 47
    sget p0, Lo/ta;->a:I

    .line 49
    return-void

    .line 50
    :cond_4
    sget-object v0, Lo/g9;->f:Lcom/ffrt/proxyread/HudAccessService;

    .line 52
    if-eqz v0, :cond_5

    .line 54
    move-object p0, v0

    .line 55
    :cond_5
    const-string v0, "window"

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    .line 63
    invoke-static {v0, v2}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    check-cast v0, Landroid/view/WindowManager;

    .line 68
    new-instance v2, Lo/g7;

    .line 70
    invoke-direct {v2, p0}, Lo/g7;-><init>(Landroid/content/Context;)V

    .line 73
    sget-object p0, Lo/g9;->f:Lcom/ffrt/proxyread/HudAccessService;

    .line 75
    const/4 v3, 0x0

    .line 76
    if-eqz p0, :cond_6

    .line 78
    move p0, v1

    .line 79
    goto :goto_1

    .line 80
    :cond_6
    move p0, v3

    .line 81
    :goto_1
    if-eqz p0, :cond_7

    .line 83
    const/16 p0, 0x7f0

    .line 85
    :goto_2
    move v7, p0

    .line 86
    goto :goto_3

    .line 87
    :cond_7
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 89
    const/16 v4, 0x1a

    .line 91
    if-lt p0, v4, :cond_8

    .line 93
    const/16 p0, 0x7f6

    .line 95
    goto :goto_2

    .line 96
    :cond_8
    const/16 p0, 0x7d2

    .line 98
    goto :goto_2

    .line 99
    :goto_3
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    .line 101
    const/4 v5, -0x1

    .line 102
    const/4 v6, -0x1

    .line 103
    const/16 v8, 0x338

    .line 105
    const/4 v9, -0x3

    .line 106
    move-object v4, p0

    .line 107
    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 110
    const/16 v4, 0x30

    .line 112
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 114
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 116
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 118
    const/high16 v3, 0x3f800000    # 1.0f

    .line 120
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 122
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 124
    const/16 v4, 0x1c

    .line 126
    if-lt v3, v4, :cond_9

    .line 128
    invoke-static {p0}, Lo/t;->q(Landroid/view/WindowManager$LayoutParams;)V

    .line 131
    :cond_9
    :try_start_0
    invoke-interface {v0, v2, p0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    sput-object v0, Lo/g9;->b:Landroid/view/WindowManager;

    .line 136
    sput-object v2, Lo/g9;->c:Lo/g7;

    .line 138
    sput-boolean v1, Lo/g9;->d:Z

    .line 140
    sget-object p0, Lo/g9;->a:Landroid/os/Handler;

    .line 142
    sget-object v0, Lo/g9;->g:Lo/F6;

    .line 144
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    sget p0, Lo/ta;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_4

    .line 153
    :catch_0
    move-exception p0

    .line 154
    sget v0, Lo/ta;->a:I

    .line 156
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 159
    move-result-object p0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    const-string v1, "overlay "

    .line 164
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p0

    .line 174
    invoke-static {p0}, Lo/ta;->a(Ljava/lang/String;)V

    .line 177
    :goto_4
    return-void
.end method

.method public static b()V
    .locals 2

    .line 1
    sget-object v0, Lo/g9;->c:Lo/g7;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    sget-object v1, Lo/g9;->b:Landroid/view/WindowManager;

    .line 8
    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lo/g9;->c:Lo/g7;

    .line 16
    sput-object v0, Lo/g9;->b:Landroid/view/WindowManager;

    .line 18
    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lo/g9;->d:Z

    .line 21
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "ctx"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lcom/ffrt/proxyread/Integrity;->c(Landroid/content/Context;)V

    .line 9
    sget-boolean v0, Lo/L1;->b:Z

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lcom/ffrt/proxyread/Integrity;->a()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lo/g9;->e:Landroid/content/Context;

    .line 26
    sget-object v0, Lo/g9;->a:Landroid/os/Handler;

    .line 28
    new-instance v1, Lo/c1;

    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-direct {v1, p0, v2}, Lo/c1;-><init>(Landroid/content/Context;I)V

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    :cond_1
    :goto_0
    return-void
.end method
