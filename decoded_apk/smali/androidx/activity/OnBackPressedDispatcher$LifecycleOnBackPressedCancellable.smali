.class final Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/P9;
.implements Lo/q3;


# instance fields
.field public final a:Landroidx/lifecycle/a;

.field public final b:Lo/b8;

.field public c:Lo/kc;

.field public final synthetic d:Landroidx/activity/b;


# direct methods
.method public constructor <init>(Landroidx/activity/b;Landroidx/lifecycle/a;Lo/b8;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "onBackPressedCallback"

    .line 6
    invoke-static {p3, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/activity/b;

    .line 11
    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Landroidx/lifecycle/a;

    .line 13
    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Lo/b8;

    .line 15
    invoke-virtual {p2, p0}, Landroidx/lifecycle/a;->a(Lo/Q9;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final b(Lo/R9;Lo/L9;)V
    .locals 3

    .line 1
    sget-object p1, Lo/L9;->ON_START:Lo/L9;

    .line 3
    if-ne p2, p1, :cond_0

    .line 5
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/activity/b;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Lo/b8;

    .line 12
    const-string v0, "onBackPressedCallback"

    .line 14
    invoke-static {p2, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p1, Landroidx/activity/b;->b:Lo/x2;

    .line 19
    invoke-virtual {v0, p2}, Lo/x2;->addLast(Ljava/lang/Object;)V

    .line 22
    new-instance v0, Lo/kc;

    .line 24
    invoke-direct {v0, p1, p2}, Lo/kc;-><init>(Landroidx/activity/b;Lo/b8;)V

    .line 27
    iget-object v1, p2, Lo/b8;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p1}, Landroidx/activity/b;->d()V

    .line 35
    new-instance v1, Lo/lc;

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-direct {v1, v2, p1}, Lo/lc;-><init>(ILjava/lang/Object;)V

    .line 41
    iput-object v1, p2, Lo/b8;->c:Lo/lc;

    .line 43
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lo/kc;

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    sget-object p1, Lo/L9;->ON_STOP:Lo/L9;

    .line 48
    if-ne p2, p1, :cond_1

    .line 50
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lo/kc;

    .line 52
    if-eqz p1, :cond_2

    .line 54
    invoke-virtual {p1}, Lo/kc;->cancel()V

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    sget-object p1, Lo/L9;->ON_DESTROY:Lo/L9;

    .line 60
    if-ne p2, p1, :cond_2

    .line 62
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->cancel()V

    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Landroidx/lifecycle/a;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/lifecycle/a;->f(Lo/Q9;)V

    .line 6
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Lo/b8;

    .line 8
    iget-object v0, v0, Lo/b8;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lo/kc;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Lo/kc;->cancel()V

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lo/kc;

    .line 23
    return-void
.end method
