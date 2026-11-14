.class public final synthetic Lo/Wc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Landroidx/profileinstaller/ProfileInstallerInitializer;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Wc;->a:Landroidx/profileinstaller/ProfileInstallerInitializer;

    iput-object p2, p0, Lo/Wc;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 3

    .line 1
    iget-object p1, p0, Lo/Wc;->a:Landroidx/profileinstaller/ProfileInstallerInitializer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    const/16 p2, 0x1c

    .line 10
    if-lt p1, p2, :cond_0

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lo/t;->f(Landroid/os/Looper;)Landroid/os/Handler;

    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    move-result-object p2

    .line 27
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    :goto_0
    new-instance p2, Ljava/util/Random;

    .line 32
    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    .line 35
    const/16 v0, 0x3e8

    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 41
    move-result v0

    .line 42
    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    .line 45
    move-result p2

    .line 46
    new-instance v0, Lo/c1;

    .line 48
    iget-object v1, p0, Lo/Wc;->b:Landroid/content/Context;

    .line 50
    const/4 v2, 0x2

    .line 51
    invoke-direct {v0, v1, v2}, Lo/c1;-><init>(Landroid/content/Context;I)V

    .line 54
    add-int/lit16 p2, p2, 0x1388

    .line 56
    int-to-long v1, p2

    .line 57
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    return-void
.end method
