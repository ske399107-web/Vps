.class public abstract Lo/T7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lo/R9;
.implements Lo/Mh;
.implements Lo/Z8;
.implements Lo/te;


# static fields
.field public static final S:Ljava/lang/Object;


# instance fields
.field public A:Z

.field public final B:Z

.field public C:Z

.field public D:Landroid/view/ViewGroup;

.field public E:Landroid/view/View;

.field public F:Z

.field public G:Z

.field public H:Lo/R7;

.field public I:Z

.field public J:Z

.field public K:Ljava/lang/String;

.field public L:Lo/M9;

.field public M:Landroidx/lifecycle/a;

.field public N:Lo/s8;

.field public final O:Landroidx/lifecycle/b;

.field public P:Lo/t8;

.field public final Q:Ljava/util/ArrayList;

.field public final R:Lo/P7;

.field public a:I

.field public b:Landroid/os/Bundle;

.field public c:Landroid/util/SparseArray;

.field public d:Landroid/os/Bundle;

.field public e:Ljava/lang/String;

.field public f:Landroid/os/Bundle;

.field public g:Lo/T7;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/Boolean;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:Lo/i8;

.field public s:Lo/V7;

.field public t:Lo/i8;

.field public u:Lo/T7;

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lo/T7;->S:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lo/T7;->a:I

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lo/T7;->e:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lo/T7;->h:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lo/T7;->j:Ljava/lang/Boolean;

    .line 22
    new-instance v0, Lo/i8;

    .line 24
    invoke-direct {v0}, Lo/i8;-><init>()V

    .line 27
    iput-object v0, p0, Lo/T7;->t:Lo/i8;

    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lo/T7;->B:Z

    .line 32
    iput-boolean v0, p0, Lo/T7;->G:Z

    .line 34
    sget-object v0, Lo/M9;->e:Lo/M9;

    .line 36
    iput-object v0, p0, Lo/T7;->L:Lo/M9;

    .line 38
    new-instance v0, Landroidx/lifecycle/b;

    .line 40
    invoke-direct {v0}, Landroidx/lifecycle/b;-><init>()V

    .line 43
    iput-object v0, p0, Lo/T7;->O:Landroidx/lifecycle/b;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iput-object v0, p0, Lo/T7;->Q:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Lo/P7;

    .line 59
    invoke-direct {v0, p0}, Lo/P7;-><init>(Lo/T7;)V

    .line 62
    iput-object v0, p0, Lo/T7;->R:Lo/P7;

    .line 64
    invoke-virtual {p0}, Lo/T7;->k()V

    .line 67
    return-void
.end method


# virtual methods
.method public A(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lo/T7;->C:Z

    .line 4
    return-void
.end method

.method public B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lo/T7;->t:Lo/i8;

    .line 3
    invoke-virtual {p3}, Lo/i8;->L()V

    .line 6
    const/4 p3, 0x1

    .line 7
    iput-boolean p3, p0, Lo/T7;->p:Z

    .line 9
    new-instance v0, Lo/s8;

    .line 11
    invoke-virtual {p0}, Lo/T7;->d()Lo/Lh;

    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, p0, v1}, Lo/s8;-><init>(Lo/T7;Lo/Lh;)V

    .line 18
    iput-object v0, p0, Lo/T7;->N:Lo/s8;

    .line 20
    invoke-virtual {p0, p1, p2}, Lo/T7;->t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lo/T7;->E:Landroid/view/View;

    .line 26
    const/4 p2, 0x0

    .line 27
    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lo/T7;->N:Lo/s8;

    .line 31
    invoke-virtual {p1}, Lo/s8;->f()V

    .line 34
    iget-object p1, p0, Lo/T7;->E:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lo/T7;->N:Lo/s8;

    .line 38
    invoke-static {p1, v0}, Lo/Ng;->s(Landroid/view/View;Lo/R9;)V

    .line 41
    iget-object p1, p0, Lo/T7;->E:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lo/T7;->N:Lo/s8;

    .line 45
    const-string v1, "<this>"

    .line 47
    invoke-static {p1, v1}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const v1, 0x7f0801fc

    .line 53
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 56
    iget-object p1, p0, Lo/T7;->E:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lo/T7;->N:Lo/s8;

    .line 60
    invoke-static {p1, v0}, Lo/Ng;->u(Landroid/view/View;Lo/te;)V

    .line 63
    iget-object p1, p0, Lo/T7;->O:Landroidx/lifecycle/b;

    .line 65
    iget-object v0, p0, Lo/T7;->N:Lo/s8;

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    const-string v1, "setValue"

    .line 72
    invoke-static {v1}, Landroidx/lifecycle/b;->a(Ljava/lang/String;)V

    .line 75
    iget v1, p1, Landroidx/lifecycle/b;->g:I

    .line 77
    add-int/2addr v1, p3

    .line 78
    iput v1, p1, Landroidx/lifecycle/b;->g:I

    .line 80
    iput-object v0, p1, Landroidx/lifecycle/b;->e:Ljava/lang/Object;

    .line 82
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b;->c(Lo/oa;)V

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lo/T7;->N:Lo/s8;

    .line 88
    iget-object p1, p1, Lo/s8;->c:Landroidx/lifecycle/a;

    .line 90
    if-nez p1, :cond_1

    .line 92
    iput-object p2, p0, Lo/T7;->N:Lo/s8;

    .line 94
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 97
    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    .line 99
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    throw p1
.end method

.method public final C()Landroid/content/Context;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo/T7;->h()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "Fragment "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, " not attached to a context."

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0
.end method

.method public final D()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lo/T7;->E:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "Fragment "

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
.end method

.method public final E(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/T7;->H:Lo/R7;

    .line 3
    if-nez v0, :cond_0

    .line 5
    if-nez p1, :cond_0

    .line 7
    if-nez p2, :cond_0

    .line 9
    if-nez p3, :cond_0

    .line 11
    if-nez p4, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lo/T7;->f()Lo/R7;

    .line 17
    move-result-object v0

    .line 18
    iput p1, v0, Lo/R7;->b:I

    .line 20
    invoke-virtual {p0}, Lo/T7;->f()Lo/R7;

    .line 23
    move-result-object p1

    .line 24
    iput p2, p1, Lo/R7;->c:I

    .line 26
    invoke-virtual {p0}, Lo/T7;->f()Lo/R7;

    .line 29
    move-result-object p1

    .line 30
    iput p3, p1, Lo/R7;->d:I

    .line 32
    invoke-virtual {p0}, Lo/T7;->f()Lo/R7;

    .line 35
    move-result-object p1

    .line 36
    iput p4, p1, Lo/R7;->e:I

    .line 38
    return-void
.end method

.method public final F(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/T7;->r:Lo/i8;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-boolean v1, v0, Lo/i8;->E:Z

    .line 7
    if-nez v1, :cond_0

    .line 9
    iget-boolean v0, v0, Lo/i8;->F:Z

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    const-string v0, "Fragment already added and state has been saved"

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iput-object p1, p0, Lo/T7;->f:Landroid/os/Bundle;

    .line 24
    return-void
.end method

.method public final a()Lo/Pb;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lo/T7;->C()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 11
    if-eqz v1, :cond_1

    .line 13
    instance-of v1, v0, Landroid/app/Application;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    check-cast v0, Landroid/app/Application;

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    .line 22
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_1
    if-nez v0, :cond_2

    .line 30
    const/4 v1, 0x3

    .line 31
    const-string v2, "FragmentManager"

    .line 33
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    const-string v3, "Could not find Application instance from Context "

    .line 43
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lo/T7;->C()Landroid/content/Context;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const-string v3, ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory"

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_2
    new-instance v1, Lo/Pb;

    .line 71
    invoke-direct {v1}, Lo/Pb;-><init>()V

    .line 74
    iget-object v2, v1, Lo/f5;->a:Ljava/util/LinkedHashMap;

    .line 76
    if-eqz v0, :cond_3

    .line 78
    sget-object v3, Lo/u6;->d:Lo/u6;

    .line 80
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_3
    sget-object v0, Lo/x9;->M:Lo/u6;

    .line 85
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lo/x9;->N:Lo/u6;

    .line 90
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lo/T7;->f:Landroid/os/Bundle;

    .line 95
    if-eqz v0, :cond_4

    .line 97
    sget-object v3, Lo/x9;->O:Lo/u6;

    .line 99
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_4
    return-object v1
.end method

.method public final b()Lo/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/T7;->P:Lo/t8;

    .line 3
    iget-object v0, v0, Lo/t8;->c:Ljava/lang/Object;

    .line 5
    check-cast v0, Lo/b1;

    .line 7
    return-object v0
.end method

.method public c()Lo/L1;
    .locals 1

    .line 1
    new-instance v0, Lo/Q7;

    .line 3
    invoke-direct {v0, p0}, Lo/Q7;-><init>(Lo/T7;)V

    .line 6
    return-object v0
.end method

.method public final d()Lo/Lh;
    .locals 3

    .line 1
    iget-object v0, p0, Lo/T7;->r:Lo/i8;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lo/T7;->i()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 12
    iget-object v0, p0, Lo/T7;->r:Lo/i8;

    .line 14
    iget-object v0, v0, Lo/i8;->L:Lo/k8;

    .line 16
    iget-object v0, v0, Lo/k8;->e:Ljava/util/HashMap;

    .line 18
    iget-object v1, p0, Lo/T7;->e:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lo/Lh;

    .line 26
    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lo/Lh;

    .line 30
    invoke-direct {v1}, Lo/Lh;-><init>()V

    .line 33
    iget-object v2, p0, Lo/T7;->e:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    return-object v1

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0

    .line 47
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 49
    const-string v1, "Can\'t access ViewModels from detached fragment"

    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0
.end method

.method public final e()Landroidx/lifecycle/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/T7;->M:Landroidx/lifecycle/a;

    .line 3
    return-object v0
.end method

.method public final f()Lo/R7;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/T7;->H:Lo/R7;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lo/R7;

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v1, Lo/T7;->S:Ljava/lang/Object;

    .line 12
    iput-object v1, v0, Lo/R7;->g:Ljava/lang/Object;

    .line 14
    iput-object v1, v0, Lo/R7;->h:Ljava/lang/Object;

    .line 16
    iput-object v1, v0, Lo/R7;->i:Ljava/lang/Object;

    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 20
    iput v1, v0, Lo/R7;->j:F

    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Lo/R7;->k:Landroid/view/View;

    .line 25
    iput-object v0, p0, Lo/T7;->H:Lo/R7;

    .line 27
    :cond_0
    iget-object v0, p0, Lo/T7;->H:Lo/R7;

    .line 29
    return-object v0
.end method

.method public final g()Lo/i8;
    .locals 3

    .line 1
    iget-object v0, p0, Lo/T7;->s:Lo/V7;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lo/T7;->t:Lo/i8;

    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "Fragment "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, " has not been attached yet."

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0
.end method

.method public final h()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/T7;->s:Lo/V7;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lo/V7;->h:Lo/U0;

    .line 9
    :goto_0
    return-object v0
.end method

.method public final i()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo/T7;->L:Lo/M9;

    .line 3
    sget-object v1, Lo/M9;->b:Lo/M9;

    .line 5
    if-eq v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lo/T7;->u:Lo/T7;

    .line 9
    if-nez v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lo/T7;->u:Lo/T7;

    .line 18
    invoke-virtual {v1}, Lo/T7;->i()I

    .line 21
    move-result v1

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public final j()Lo/i8;
    .locals 3

    .line 1
    iget-object v0, p0, Lo/T7;->r:Lo/i8;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "Fragment "

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, " not associated with a fragment manager."

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
.end method

.method public final k()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/lifecycle/a;

    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/a;-><init>(Lo/R9;)V

    .line 6
    iput-object v0, p0, Lo/T7;->M:Landroidx/lifecycle/a;

    .line 8
    new-instance v0, Lo/t8;

    .line 10
    invoke-direct {v0, p0}, Lo/t8;-><init>(Lo/te;)V

    .line 13
    iput-object v0, p0, Lo/T7;->P:Lo/t8;

    .line 15
    iget-object v0, p0, Lo/T7;->Q:Ljava/util/ArrayList;

    .line 17
    iget-object v1, p0, Lo/T7;->R:Lo/P7;

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 25
    iget v2, p0, Lo/T7;->a:I

    .line 27
    if-ltz v2, :cond_0

    .line 29
    invoke-virtual {v1}, Lo/P7;->a()V

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo/T7;->k()V

    .line 4
    iget-object v0, p0, Lo/T7;->e:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lo/T7;->K:Ljava/lang/String;

    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lo/T7;->e:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lo/T7;->k:Z

    .line 21
    iput-boolean v0, p0, Lo/T7;->l:Z

    .line 23
    iput-boolean v0, p0, Lo/T7;->m:Z

    .line 25
    iput-boolean v0, p0, Lo/T7;->n:Z

    .line 27
    iput-boolean v0, p0, Lo/T7;->o:Z

    .line 29
    iput v0, p0, Lo/T7;->q:I

    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lo/T7;->r:Lo/i8;

    .line 34
    new-instance v2, Lo/i8;

    .line 36
    invoke-direct {v2}, Lo/i8;-><init>()V

    .line 39
    iput-object v2, p0, Lo/T7;->t:Lo/i8;

    .line 41
    iput-object v1, p0, Lo/T7;->s:Lo/V7;

    .line 43
    iput v0, p0, Lo/T7;->v:I

    .line 45
    iput v0, p0, Lo/T7;->w:I

    .line 47
    iput-object v1, p0, Lo/T7;->x:Ljava/lang/String;

    .line 49
    iput-boolean v0, p0, Lo/T7;->y:Z

    .line 51
    iput-boolean v0, p0, Lo/T7;->z:Z

    .line 53
    return-void
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/T7;->s:Lo/V7;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, p0, Lo/T7;->k:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final n()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lo/T7;->y:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lo/T7;->r:Lo/i8;

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 10
    iget-object v2, p0, Lo/T7;->u:Lo/T7;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    if-nez v2, :cond_0

    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v2}, Lo/T7;->n()Z

    .line 22
    move-result v0

    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 25
    :cond_1
    const/4 v1, 0x1

    .line 26
    :cond_2
    return v1
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget v0, p0, Lo/T7;->q:I

    .line 3
    if-lez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lo/T7;->C:Z

    .line 4
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/T7;->s:Lo/V7;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lo/V7;->g:Lo/U0;

    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 14
    return-void

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    const-string p3, "Fragment "

    .line 21
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string p3, " not attached to an activity."

    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p1
.end method

.method public final onLowMemory()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/T7;->C:Z

    .line 4
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/T7;->C:Z

    .line 4
    return-void
.end method

.method public final q(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    const-string v0, "FragmentManager"

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "Fragment "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, " received the following in onActivityResult(): requestCode: "

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string p1, " resultCode: "

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string p1, " data: "

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method public r(Lo/U0;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lo/T7;->C:Z

    .line 4
    iget-object v0, p0, Lo/T7;->s:Lo/V7;

    .line 6
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lo/V7;->g:Lo/U0;

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    iput-boolean p1, p0, Lo/T7;->C:Z

    .line 16
    :cond_1
    return-void
.end method

.method public s(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/T7;->C:Z

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const-string v1, "android:support:fragments"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 14
    iget-object v1, p0, Lo/T7;->t:Lo/i8;

    .line 16
    invoke-virtual {v1, p1}, Lo/i8;->R(Landroid/os/Parcelable;)V

    .line 19
    iget-object p1, p0, Lo/T7;->t:Lo/i8;

    .line 21
    invoke-virtual {p1}, Lo/i8;->j()V

    .line 24
    :cond_0
    iget-object p1, p0, Lo/T7;->t:Lo/i8;

    .line 26
    iget v1, p1, Lo/i8;->s:I

    .line 28
    if-lt v1, v0, :cond_1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lo/i8;->j()V

    .line 34
    :goto_0
    return-void
.end method

.method public t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const/16 v1, 0x80

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "{"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, "} ("

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v1, p0, Lo/T7;->e:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v1, p0, Lo/T7;->v:I

    .line 47
    if-eqz v1, :cond_0

    .line 49
    const-string v1, " id=0x"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget v1, p0, Lo/T7;->v:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    iget-object v1, p0, Lo/T7;->x:Ljava/lang/String;

    .line 65
    if-eqz v1, :cond_1

    .line 67
    const-string v1, " tag="

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lo/T7;->x:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    const-string v1, ")"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method

.method public u()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/T7;->C:Z

    .line 4
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/T7;->C:Z

    .line 4
    return-void
.end method

.method public w(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object p1, p0, Lo/T7;->s:Lo/V7;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p1, Lo/V7;->k:Lo/U0;

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lo/T7;->t:Lo/i8;

    .line 17
    iget-object v0, v0, Lo/i8;->f:Lo/Y7;

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 22
    return-object p1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1
.end method

.method public abstract x(Landroid/os/Bundle;)V
.end method

.method public y()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/T7;->C:Z

    .line 4
    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/T7;->C:Z

    .line 4
    return-void
.end method
