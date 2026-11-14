.class public Lo/u4;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lo/R9;
.implements Lo/mc;
.implements Lo/te;


# instance fields
.field public a:Landroidx/lifecycle/a;

.field public final b:Lo/t8;

.field public final c:Landroidx/activity/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4
    new-instance p1, Lo/t8;

    .line 6
    invoke-direct {p1, p0}, Lo/t8;-><init>(Lo/te;)V

    .line 9
    iput-object p1, p0, Lo/u4;->b:Lo/t8;

    .line 11
    new-instance p1, Landroidx/activity/b;

    .line 13
    new-instance p2, Lo/i0;

    .line 15
    const/4 v0, 0x6

    .line 16
    invoke-direct {p2, v0, p0}, Lo/i0;-><init>(ILjava/lang/Object;)V

    .line 19
    invoke-direct {p1, p2}, Landroidx/activity/b;-><init>(Ljava/lang/Runnable;)V

    .line 22
    iput-object p1, p0, Lo/u4;->c:Landroidx/activity/b;

    .line 24
    return-void
.end method

.method public static a(Lo/u4;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 9
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lo/u4;->d()V

    .line 9
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    return-void
.end method

.method public final b()Lo/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/u4;->b:Lo/t8;

    .line 3
    iget-object v0, v0, Lo/t8;->c:Ljava/lang/Object;

    .line 5
    check-cast v0, Lo/b1;

    .line 7
    return-object v0
.end method

.method public final c()Landroidx/lifecycle/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/u4;->a:Landroidx/lifecycle/a;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroidx/lifecycle/a;

    .line 7
    invoke-direct {v0, p0}, Landroidx/lifecycle/a;-><init>(Lo/R9;)V

    .line 10
    iput-object v0, p0, Lo/u4;->a:Landroidx/lifecycle/a;

    .line 12
    :cond_0
    return-object v0
.end method

.method public final d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "window!!.decorView"

    .line 14
    invoke-static {v0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {v0, p0}, Lo/Ng;->s(Landroid/view/View;Lo/R9;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {v0, p0}, Lo/Ng;->t(Landroid/view/View;Lo/mc;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {v0, p0}, Lo/Ng;->u(Landroid/view/View;Lo/te;)V

    .line 54
    return-void
.end method

.method public final e()Landroidx/lifecycle/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/u4;->c()Landroidx/lifecycle/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/u4;->c:Landroidx/activity/b;

    .line 3
    invoke-virtual {v0}, Landroidx/activity/b;->b()V

    .line 6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const/16 v1, 0x21

    .line 8
    if-lt v0, v1, :cond_0

    .line 10
    invoke-static {p0}, Lo/x;->e(Lo/u4;)Landroid/window/OnBackInvokedDispatcher;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "onBackInvokedDispatcher"

    .line 16
    invoke-static {v0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lo/u4;->c:Landroidx/activity/b;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iput-object v0, v1, Landroidx/activity/b;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 26
    iget-boolean v0, v1, Landroidx/activity/b;->g:Z

    .line 28
    invoke-virtual {v1, v0}, Landroidx/activity/b;->c(Z)V

    .line 31
    :cond_0
    iget-object v0, p0, Lo/u4;->b:Lo/t8;

    .line 33
    invoke-virtual {v0, p1}, Lo/t8;->b(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lo/u4;->c()Landroidx/lifecycle/a;

    .line 39
    move-result-object p1

    .line 40
    sget-object v0, Lo/L9;->ON_CREATE:Lo/L9;

    .line 42
    invoke-virtual {p1, v0}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 45
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "super.onSaveInstanceState()"

    .line 7
    invoke-static {v0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lo/u4;->b:Lo/t8;

    .line 12
    invoke-virtual {v1, v0}, Lo/t8;->c(Landroid/os/Bundle;)V

    .line 15
    return-object v0
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 4
    invoke-virtual {p0}, Lo/u4;->c()Landroidx/lifecycle/a;

    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lo/L9;->ON_RESUME:Lo/L9;

    .line 10
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 13
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/u4;->c()Landroidx/lifecycle/a;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lo/L9;->ON_DESTROY:Lo/L9;

    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lo/u4;->a:Landroidx/lifecycle/a;

    .line 13
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 16
    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lo/u4;->d()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lo/u4;->d()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lo/u4;->d()V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
