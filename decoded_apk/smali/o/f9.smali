.class public final synthetic Lo/f9;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/f9;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-object v0, Lo/g9;->c:Lo/g7;

    .line 3
    if-nez v0, :cond_0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget v1, p0, Lo/f9;->a:I

    .line 8
    invoke-virtual {v0, v1}, Lo/g7;->setSizePercent(I)V

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v1

    .line 15
    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    .line 17
    if-eqz v2, :cond_1

    .line 19
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-nez v1, :cond_2

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :try_start_0
    sget-object v2, Lo/g9;->b:Landroid/view/WindowManager;

    .line 28
    if-eqz v2, :cond_3

    .line 30
    invoke-interface {v2, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    :cond_3
    :goto_1
    return-void
.end method
