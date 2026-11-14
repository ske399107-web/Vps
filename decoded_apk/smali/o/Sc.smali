.class public final Lo/Sc;
.super Lo/T6;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lo/Tc;


# direct methods
.method public constructor <init>(Lo/Tc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/Sc;->this$0:Lo/Tc;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string p2, "activity"

    .line 3
    invoke-static {p1, p2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    const/16 v0, 0x1d

    .line 10
    if-ge p2, v0, :cond_0

    .line 12
    sget p2, Lo/Rd;->b:I

    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 17
    move-result-object p1

    .line 18
    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 20
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 23
    move-result-object p1

    .line 24
    const-string p2, "null cannot be cast to non-null type androidx.lifecycle.ReportFragment"

    .line 26
    invoke-static {p1, p2}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    check-cast p1, Lo/Rd;

    .line 31
    iget-object p2, p0, Lo/Sc;->this$0:Lo/Tc;

    .line 33
    iget-object p2, p2, Lo/Tc;->h:Lo/C;

    .line 35
    iput-object p2, p1, Lo/Rd;->a:Lo/C;

    .line 37
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lo/Sc;->this$0:Lo/Tc;

    .line 8
    iget v0, p1, Lo/Tc;->b:I

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 12
    iput v0, p1, Lo/Tc;->b:I

    .line 14
    if-nez v0, :cond_0

    .line 16
    iget-object v0, p1, Lo/Tc;->e:Landroid/os/Handler;

    .line 18
    invoke-static {v0}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 21
    iget-object p1, p1, Lo/Tc;->g:Lo/i0;

    .line 23
    const-wide/16 v1, 0x2bc

    .line 25
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string p2, "activity"

    .line 3
    invoke-static {p1, p2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p2, Lo/Sc$a;

    .line 8
    iget-object v0, p0, Lo/Sc;->this$0:Lo/Tc;

    .line 10
    invoke-direct {p2, v0}, Lo/Sc$a;-><init>(Lo/Tc;)V

    .line 13
    invoke-static {p1, p2}, Lo/Rc;->a(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 16
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lo/Sc;->this$0:Lo/Tc;

    .line 8
    iget v0, p1, Lo/Tc;->a:I

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 12
    iput v0, p1, Lo/Tc;->a:I

    .line 14
    if-nez v0, :cond_0

    .line 16
    iget-boolean v0, p1, Lo/Tc;->c:Z

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p1, Lo/Tc;->f:Landroidx/lifecycle/a;

    .line 22
    sget-object v1, Lo/L9;->ON_STOP:Lo/L9;

    .line 24
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p1, Lo/Tc;->d:Z

    .line 30
    :cond_0
    return-void
.end method
