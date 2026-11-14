.class public Lo/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/zb;
.implements Lo/ib;
.implements Lo/g2;
.implements Lo/mb;
.implements Lo/Q4;
.implements Lo/S4;
.implements Lo/ec;
.implements Lo/B6;
.implements Lo/M6;
.implements Lo/Ma;
.implements Lo/Vc;
.implements Lo/r3;
.implements Lo/N;


# static fields
.field public static c:Lo/C;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Lo/C;->a:I

    sparse-switch p1, :sswitch_data_0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 8
    new-instance p1, Lo/F;

    .line 9
    invoke-direct {p1, p0}, Lo/E;-><init>(Lo/C;)V

    .line 10
    iput-object p1, p0, Lo/C;->b:Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lo/E;

    invoke-direct {p1, p0}, Lo/E;-><init>(Lo/C;)V

    iput-object p1, p0, Lo/C;->b:Ljava/lang/Object;

    :goto_0
    return-void

    .line 12
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 13
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/C;->b:Ljava/lang/Object;

    .line 15
    new-instance p1, Landroid/os/Handler;

    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lo/Se;

    invoke-direct {v1, p0}, Lo/Se;-><init>(Lo/C;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void

    .line 17
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {p1, v1, v2, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lo/C;->b:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/C;->a:I

    iput-object p2, p0, Lo/C;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lo/C;->a:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1, p2}, Lo/g3;->e(Landroid/content/ClipData;I)Landroid/view/ContentInfo$Builder;

    move-result-object p1

    iput-object p1, p0, Lo/C;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lo/C;->a:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/C;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 2

    const/16 v0, 0x10

    iput v0, p0, Lo/C;->a:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 23
    new-instance v0, Lo/q9;

    invoke-direct {v0, p1, p2, p3}, Lo/q9;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lo/s2;

    const/4 v1, 0x6

    invoke-direct {v0, p1, p2, p3, v1}, Lo/s2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/ContentInfo;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lo/C;->a:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {p1}, Lo/g3;->g(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    iput-object p1, p0, Lo/C;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 2

    const/16 v0, 0xc

    iput v0, p0, Lo/C;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lo/H1;

    const/16 v1, 0xb

    invoke-direct {v0, p1, v1}, Lo/H1;-><init>(Landroid/widget/EditText;I)V

    iput-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lo/C;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lo/P6;

    invoke-direct {v0, p1}, Lo/P6;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    return-void
.end method

.method public static B(ZIIII)Lo/C;
    .locals 7

    .line 1
    new-instance v0, Lo/C;

    .line 3
    const/4 v5, 0x0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v6, p0

    .line 9
    invoke-static/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-direct {v0, p1, p0}, Lo/C;-><init>(ILjava/lang/Object;)V

    .line 17
    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/V7;

    .line 5
    iget-object v0, v0, Lo/V7;->j:Lo/i8;

    .line 7
    invoke-virtual {v0}, Lo/i8;->L()V

    .line 10
    return-void
.end method

.method public C(IILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public a(Lo/kb;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Lo/uf;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lo/uf;

    .line 8
    iget-object v0, v0, Lo/uf;->z:Lo/kb;

    .line 10
    invoke-virtual {v0}, Lo/kb;->k()Lo/kb;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lo/kb;->c(Z)V

    .line 18
    :cond_0
    iget-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    .line 20
    check-cast v0, Lo/d0;

    .line 22
    iget-object v0, v0, Lo/d0;->e:Lo/zb;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-interface {v0, p1, p2}, Lo/zb;->a(Lo/kb;Z)V

    .line 29
    :cond_1
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p0
.end method

.method public build()Lo/T4;
    .locals 3

    .line 1
    new-instance v0, Lo/T4;

    .line 3
    new-instance v1, Lo/C;

    .line 5
    iget-object v2, p0, Lo/C;->b:Ljava/lang/Object;

    .line 7
    check-cast v2, Landroid/view/ContentInfo$Builder;

    .line 9
    invoke-static {v2}, Lo/g3;->f(Landroid/view/ContentInfo$Builder;)Landroid/view/ContentInfo;

    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Lo/C;-><init>(Landroid/view/ContentInfo;)V

    .line 16
    invoke-direct {v0, v1}, Lo/T4;-><init>(Lo/S4;)V

    .line 19
    return-object v0
.end method

.method public c()Landroid/content/ClipData;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 5
    invoke-static {v0}, Lo/g3;->d(Landroid/view/ContentInfo;)Landroid/content/ClipData;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public d(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->r(Landroid/view/View;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_4

    .line 12
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 17
    move-result v1

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne v1, v3, :cond_0

    .line 21
    move v2, v3

    .line 22
    :cond_0
    iget v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:I

    .line 24
    if-nez v0, :cond_1

    .line 26
    if-nez v2, :cond_2

    .line 28
    :cond_1
    if-ne v0, v3, :cond_3

    .line 30
    if-nez v2, :cond_3

    .line 32
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 35
    move-result v0

    .line 36
    neg-int v0, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 41
    move-result v0

    .line 42
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 49
    return v3

    .line 50
    :cond_4
    return v2
.end method

.method public e(ILjava/io/Serializable;)V
    .locals 3

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 4
    :pswitch_0
    const-string v0, ""

    .line 6
    goto :goto_0

    .line 7
    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    .line 9
    goto :goto_0

    .line 10
    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    .line 12
    goto :goto_0

    .line 13
    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    .line 15
    goto :goto_0

    .line 16
    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    .line 18
    goto :goto_0

    .line 19
    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    .line 21
    goto :goto_0

    .line 22
    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    .line 24
    goto :goto_0

    .line 25
    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    .line 27
    goto :goto_0

    .line 28
    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    .line 30
    goto :goto_0

    .line 31
    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    .line 33
    goto :goto_0

    .line 34
    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    .line 36
    :goto_0
    const/4 v1, 0x6

    .line 37
    const-string v2, "ProfileInstaller"

    .line 39
    if-eq p1, v1, :cond_0

    .line 41
    const/4 v1, 0x7

    .line 42
    if-eq p1, v1, :cond_0

    .line 44
    const/16 v1, 0x8

    .line 46
    if-eq p1, v1, :cond_0

    .line 48
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    .line 54
    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :goto_1
    iget-object p2, p0, Lo/C;->b:Ljava/lang/Object;

    .line 59
    check-cast p2, Landroidx/profileinstaller/ProfileInstallReceiver;

    .line 61
    invoke-virtual {p2, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public f(Lo/L1;)V
    .locals 9

    .line 1
    new-instance v7, Lo/v4;

    .line 3
    const-string v0, "EmojiCompatInitializer"

    .line 5
    invoke-direct {v7, v0}, Lo/v4;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 10
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 14
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 17
    const-wide/16 v3, 0xf

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    move-object v0, v8

    .line 22
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 29
    new-instance v0, Lo/D6;

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, p0, p1, v8, v1}, Lo/D6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 35
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public g(Lo/kb;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/d0;

    .line 5
    iget-object v1, v0, Lo/d0;->c:Lo/kb;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne p1, v1, :cond_0

    .line 10
    return v2

    .line 11
    :cond_0
    move-object v1, p1

    .line 12
    check-cast v1, Lo/uf;

    .line 14
    iget-object v1, v1, Lo/uf;->A:Lo/nb;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iget-object v0, v0, Lo/d0;->e:Lo/zb;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-interface {v0, p1}, Lo/zb;->g(Lo/kb;)Z

    .line 29
    move-result v2

    .line 30
    :cond_1
    return v2
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 5
    invoke-static {v0}, Lo/g3;->b(Landroid/view/ContentInfo;)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public i()V
    .locals 2

    .line 1
    const-string v0, "ProfileInstaller"

    .line 3
    const-string v1, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public j(Ljava/lang/CharSequence;IILo/Lg;)Z
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lo/C;->b:Ljava/lang/Object;

    .line 7
    check-cast p2, Ljava/lang/String;

    .line 9
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    iget p1, p4, Lo/Lg;->c:I

    .line 17
    and-int/lit8 p1, p1, 0x3

    .line 19
    or-int/lit8 p1, p1, 0x4

    .line 21
    iput p1, p4, Lo/Lg;->c:I

    .line 23
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    return p1
.end method

.method public k(Lo/kb;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lo/C;->b:Ljava/lang/Object;

    .line 3
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 5
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->z:Lo/g0;

    .line 7
    if-eqz p1, :cond_1

    .line 9
    check-cast p1, Lo/bg;

    .line 11
    iget-object p1, p1, Lo/bg;->a:Landroidx/appcompat/widget/Toolbar;

    .line 13
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->G:Lo/s2;

    .line 15
    iget-object p1, p1, Lo/s2;->d:Ljava/lang/Object;

    .line 17
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_1

    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lo/c8;

    .line 35
    iget-object p2, p2, Lo/c8;->a:Lo/i8;

    .line 37
    invoke-virtual {p2}, Lo/i8;->p()Z

    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_0

    .line 43
    const/4 p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    :goto_0
    return p1
.end method

.method public l(Lo/kb;Lo/nb;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/A3;

    .line 5
    iget-object v1, v0, Lo/A3;->f:Landroid/os/Handler;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    iget-object v1, v0, Lo/A3;->h:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    const/4 v5, -0x1

    .line 19
    if-ge v4, v3, :cond_1

    .line 21
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v6

    .line 25
    check-cast v6, Lo/z3;

    .line 27
    iget-object v6, v6, Lo/z3;->b:Lo/kb;

    .line 29
    if-ne p1, v6, :cond_0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v4, v5

    .line 36
    :goto_1
    if-ne v4, v5, :cond_2

    .line 38
    return-void

    .line 39
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 44
    move-result v3

    .line 45
    if-ge v4, v3, :cond_3

    .line 47
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    move-object v2, v1

    .line 52
    check-cast v2, Lo/z3;

    .line 54
    :cond_3
    new-instance v1, Lo/y3;

    .line 56
    invoke-direct {v1, p0, v2, p2, p1}, Lo/y3;-><init>(Lo/C;Lo/z3;Lo/nb;Lo/kb;)V

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 62
    move-result-wide v2

    .line 63
    const-wide/16 v4, 0xc8

    .line 65
    add-long/2addr v2, v4

    .line 66
    iget-object p2, v0, Lo/A3;->f:Landroid/os/Handler;

    .line 68
    invoke-virtual {p2, v1, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 71
    return-void
.end method

.method public m()Landroid/view/ContentInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 5
    return-object v0
.end method

.method public n(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public o(Lo/kb;Lo/nb;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lo/C;->b:Ljava/lang/Object;

    .line 3
    check-cast p2, Lo/A3;

    .line 5
    iget-object p2, p2, Lo/A3;->f:Landroid/os/Handler;

    .line 7
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public p(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/view/ContentInfo$Builder;

    .line 5
    invoke-static {v0, p1}, Lo/g3;->k(Landroid/view/ContentInfo$Builder;Landroid/os/Bundle;)V

    .line 8
    return-void
.end method

.method public q(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public r(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/view/ContentInfo$Builder;

    .line 5
    invoke-static {v0, p1}, Lo/g3;->j(Landroid/view/ContentInfo$Builder;Landroid/net/Uri;)V

    .line 8
    return-void
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 5
    invoke-static {v0}, Lo/g3;->l(Landroid/view/ContentInfo;)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/bf;

    .line 5
    invoke-virtual {v0}, Lo/bf;->a()V

    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lo/C;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "ContentInfoCompat{"

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lo/C;->b:Ljava/lang/Object;

    .line 20
    check-cast v1, Landroid/view/ContentInfo;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "}"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public u(IF)V
    .locals 0

    .line 1
    return-void
.end method

.method public v(Lo/kb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->u:Lo/bg;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lo/bg;->v(Lo/kb;)V

    .line 12
    :cond_0
    return-void
.end method

.method public w(Landroid/view/View;Lo/Mi;)Lo/Mi;
    .locals 6

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    .line 4
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 6
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Lo/Mi;

    .line 8
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_5

    .line 14
    iput-object p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Lo/Mi;

    .line 16
    invoke-virtual {p2}, Lo/Mi;->d()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-lez v1, :cond_0

    .line 23
    move v1, p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v2

    .line 26
    :goto_0
    iput-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Z

    .line 28
    if-nez v1, :cond_1

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 36
    move v1, p1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v1, v2

    .line 39
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 42
    iget-object v1, p2, Lo/Mi;->a:Lo/Ki;

    .line 44
    invoke-virtual {v1}, Lo/Ki;->m()Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 50
    goto :goto_3

    .line 51
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 54
    move-result v3

    .line 55
    :goto_2
    if-ge v2, v3, :cond_4

    .line 57
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 60
    move-result-object v4

    .line 61
    sget-object v5, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_3

    .line 69
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lo/Z4;

    .line 75
    iget-object v4, v4, Lo/Z4;->a:Lo/W4;

    .line 77
    if-eqz v4, :cond_3

    .line 79
    invoke-virtual {v1}, Lo/Ki;->m()Z

    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_3

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    add-int/2addr v2, p1

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 91
    :cond_5
    return-object p2
.end method

.method public x(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/C;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/view/ContentInfo$Builder;

    .line 5
    invoke-static {v0, p1}, Lo/g3;->i(Landroid/view/ContentInfo$Builder;I)V

    .line 8
    return-void
.end method

.method public y(I)Lo/D;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public z(I)Lo/D;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method
