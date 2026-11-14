.class public final Landroidx/activity/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Lo/x2;

.field public c:Lo/b8;

.field public final d:Landroid/window/OnBackInvokedCallback;

.field public e:Landroid/window/OnBackInvokedDispatcher;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/activity/b;->a:Ljava/lang/Runnable;

    .line 6
    new-instance p1, Lo/x2;

    .line 8
    invoke-direct {p1}, Lo/x2;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/activity/b;->b:Lo/x2;

    .line 13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    const/16 v0, 0x21

    .line 17
    if-lt p1, v0, :cond_1

    .line 19
    const/16 v0, 0x22

    .line 21
    if-lt p1, v0, :cond_0

    .line 23
    sget-object p1, Lo/jc;->a:Lo/jc;

    .line 25
    new-instance v0, Lo/fc;

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, p0, v1}, Lo/fc;-><init>(Landroidx/activity/b;I)V

    .line 31
    new-instance v1, Lo/fc;

    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-direct {v1, p0, v2}, Lo/fc;-><init>(Landroidx/activity/b;I)V

    .line 37
    new-instance v2, Lo/gc;

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {v2, v3, p0}, Lo/gc;-><init>(ILjava/lang/Object;)V

    .line 43
    new-instance v3, Lo/gc;

    .line 45
    const/4 v4, 0x1

    .line 46
    invoke-direct {v3, v4, p0}, Lo/gc;-><init>(ILjava/lang/Object;)V

    .line 49
    invoke-virtual {p1, v0, v1, v2, v3}, Lo/jc;->a(Lo/F8;Lo/F8;Lo/u8;Lo/u8;)Landroid/window/OnBackInvokedCallback;

    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sget-object p1, Lo/hc;->a:Lo/hc;

    .line 56
    new-instance v0, Lo/gc;

    .line 58
    const/4 v1, 0x2

    .line 59
    invoke-direct {v0, v1, p0}, Lo/gc;-><init>(ILjava/lang/Object;)V

    .line 62
    invoke-virtual {p1, v0}, Lo/hc;->a(Lo/u8;)Landroid/window/OnBackInvokedCallback;

    .line 65
    move-result-object p1

    .line 66
    :goto_0
    iput-object p1, p0, Landroidx/activity/b;->d:Landroid/window/OnBackInvokedCallback;

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lo/R9;Lo/b8;)V
    .locals 2

    .line 1
    const-string v0, "onBackPressedCallback"

    .line 3
    invoke-static {p2, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Lo/R9;->e()Landroidx/lifecycle/a;

    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p1, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 12
    sget-object v1, Lo/M9;->a:Lo/M9;

    .line 14
    if-ne v0, v1, :cond_0

    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    .line 19
    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/b;Landroidx/lifecycle/a;Lo/b8;)V

    .line 22
    iget-object p1, p2, Lo/b8;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p0}, Landroidx/activity/b;->d()V

    .line 30
    new-instance p1, Lo/lc;

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-direct {p1, v0, p0}, Lo/lc;-><init>(ILjava/lang/Object;)V

    .line 36
    iput-object p1, p2, Lo/b8;->c:Lo/lc;

    .line 38
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/activity/b;->b:Lo/x2;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget v1, v0, Lo/x2;->c:I

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    move-object v3, v1

    .line 24
    check-cast v3, Lo/b8;

    .line 26
    iget-boolean v3, v3, Lo/b8;->a:Z

    .line 28
    if-eqz v3, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v1, v2

    .line 32
    :goto_0
    check-cast v1, Lo/b8;

    .line 34
    iput-object v2, p0, Landroidx/activity/b;->c:Lo/b8;

    .line 36
    if-eqz v1, :cond_3

    .line 38
    const/4 v0, 0x1

    .line 39
    iget-object v1, v1, Lo/b8;->d:Lo/i8;

    .line 41
    invoke-virtual {v1, v0}, Lo/i8;->z(Z)Z

    .line 44
    iget-object v0, v1, Lo/i8;->h:Lo/b8;

    .line 46
    iget-boolean v0, v0, Lo/b8;->a:Z

    .line 48
    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {v1}, Lo/i8;->M()Z

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget-object v0, v1, Lo/i8;->g:Landroidx/activity/b;

    .line 56
    invoke-virtual {v0}, Landroidx/activity/b;->b()V

    .line 59
    :goto_1
    return-void

    .line 60
    :cond_3
    iget-object v0, p0, Landroidx/activity/b;->a:Ljava/lang/Runnable;

    .line 62
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 65
    return-void
.end method

.method public final c(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/activity/b;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 3
    iget-object v1, p0, Landroidx/activity/b;->d:Landroid/window/OnBackInvokedCallback;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    if-eqz v1, :cond_1

    .line 9
    sget-object v2, Lo/hc;->a:Lo/hc;

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 14
    iget-boolean v4, p0, Landroidx/activity/b;->f:Z

    .line 16
    if-nez v4, :cond_0

    .line 18
    invoke-virtual {v2, v0, v3, v1}, Lo/hc;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Landroidx/activity/b;->f:Z

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-nez p1, :cond_1

    .line 27
    iget-boolean p1, p0, Landroidx/activity/b;->f:Z

    .line 29
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {v2, v0, v1}, Lo/hc;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    iput-boolean v3, p0, Landroidx/activity/b;->f:Z

    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/activity/b;->g:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/activity/b;->b:Lo/x2;

    .line 6
    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v2

    .line 19
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lo/b8;

    .line 31
    iget-boolean v3, v3, Lo/b8;->a:Z

    .line 33
    if-eqz v3, :cond_1

    .line 35
    const/4 v1, 0x1

    .line 36
    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroidx/activity/b;->g:Z

    .line 38
    if-eq v1, v0, :cond_3

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    const/16 v2, 0x21

    .line 44
    if-lt v0, v2, :cond_3

    .line 46
    invoke-virtual {p0, v1}, Landroidx/activity/b;->c(Z)V

    .line 49
    :cond_3
    return-void
.end method
