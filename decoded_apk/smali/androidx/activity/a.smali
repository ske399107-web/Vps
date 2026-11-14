.class public abstract Landroidx/activity/a;
.super Lo/t4;
.source "SourceFile"

# interfaces
.implements Lo/Mh;
.implements Lo/Z8;
.implements Lo/te;
.implements Lo/mc;


# instance fields
.field public final b:Lo/U4;

.field public final c:Lo/s2;

.field public final d:Landroidx/lifecycle/a;

.field public final e:Lo/t8;

.field public f:Lo/Lh;

.field public g:Landroidx/activity/b;

.field public final h:Lo/s4;

.field public final i:Lo/t8;

.field public final j:Lo/p4;

.field public final k:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final n:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final o:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lo/t4;-><init>()V

    .line 4
    new-instance v0, Lo/U4;

    .line 6
    invoke-direct {v0}, Lo/U4;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/activity/a;->b:Lo/U4;

    .line 11
    new-instance v0, Lo/s2;

    .line 13
    new-instance v1, Lo/i0;

    .line 15
    move-object v2, p0

    .line 16
    check-cast v2, Lo/U0;

    .line 18
    const/4 v3, 0x4

    .line 19
    invoke-direct {v1, v3, v2}, Lo/i0;-><init>(ILjava/lang/Object;)V

    .line 22
    invoke-direct {v0, v1}, Lo/s2;-><init>(Ljava/lang/Runnable;)V

    .line 25
    iput-object v0, p0, Landroidx/activity/a;->c:Lo/s2;

    .line 27
    new-instance v0, Landroidx/lifecycle/a;

    .line 29
    invoke-direct {v0, p0}, Landroidx/lifecycle/a;-><init>(Lo/R9;)V

    .line 32
    iput-object v0, p0, Landroidx/activity/a;->d:Landroidx/lifecycle/a;

    .line 34
    new-instance v1, Lo/t8;

    .line 36
    invoke-direct {v1, p0}, Lo/t8;-><init>(Lo/te;)V

    .line 39
    iput-object v1, p0, Landroidx/activity/a;->e:Lo/t8;

    .line 41
    const/4 v3, 0x0

    .line 42
    iput-object v3, p0, Landroidx/activity/a;->g:Landroidx/activity/b;

    .line 44
    new-instance v3, Lo/s4;

    .line 46
    invoke-direct {v3, v2}, Lo/s4;-><init>(Lo/U0;)V

    .line 49
    iput-object v3, p0, Landroidx/activity/a;->h:Lo/s4;

    .line 51
    new-instance v4, Lo/t8;

    .line 53
    new-instance v5, Lo/r0;

    .line 55
    const/4 v6, 0x1

    .line 56
    invoke-direct {v5, v6, v2}, Lo/r0;-><init>(ILjava/lang/Object;)V

    .line 59
    invoke-direct {v4, v3, v5}, Lo/t8;-><init>(Lo/s4;Lo/r0;)V

    .line 62
    iput-object v4, p0, Landroidx/activity/a;->i:Lo/t8;

    .line 64
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 69
    new-instance v3, Lo/p4;

    .line 71
    invoke-direct {v3}, Lo/p4;-><init>()V

    .line 74
    iput-object v3, p0, Landroidx/activity/a;->j:Lo/p4;

    .line 76
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 78
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 81
    iput-object v3, p0, Landroidx/activity/a;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 83
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 88
    iput-object v3, p0, Landroidx/activity/a;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 90
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 92
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 95
    iput-object v3, p0, Landroidx/activity/a;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 97
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 99
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 102
    iput-object v3, p0, Landroidx/activity/a;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 104
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 106
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 109
    iput-object v3, p0, Landroidx/activity/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 111
    const/4 v3, 0x0

    .line 112
    iput-boolean v3, p0, Landroidx/activity/a;->p:Z

    .line 114
    iput-boolean v3, p0, Landroidx/activity/a;->q:Z

    .line 116
    new-instance v3, Landroidx/activity/ComponentActivity$2;

    .line 118
    invoke-direct {v3, v2}, Landroidx/activity/ComponentActivity$2;-><init>(Lo/U0;)V

    .line 121
    invoke-virtual {v0, v3}, Landroidx/lifecycle/a;->a(Lo/Q9;)V

    .line 124
    new-instance v3, Landroidx/activity/ComponentActivity$3;

    .line 126
    invoke-direct {v3, v2}, Landroidx/activity/ComponentActivity$3;-><init>(Lo/U0;)V

    .line 129
    invoke-virtual {v0, v3}, Landroidx/lifecycle/a;->a(Lo/Q9;)V

    .line 132
    new-instance v3, Landroidx/activity/ComponentActivity$4;

    .line 134
    invoke-direct {v3, v2}, Landroidx/activity/ComponentActivity$4;-><init>(Lo/U0;)V

    .line 137
    invoke-virtual {v0, v3}, Landroidx/lifecycle/a;->a(Lo/Q9;)V

    .line 140
    invoke-virtual {v1}, Lo/t8;->a()V

    .line 143
    invoke-static {p0}, Lo/x9;->v(Lo/te;)V

    .line 146
    new-instance v0, Lo/n4;

    .line 148
    const/4 v3, 0x0

    .line 149
    invoke-direct {v0, v3, v2}, Lo/n4;-><init>(ILjava/lang/Object;)V

    .line 152
    iget-object v1, v1, Lo/t8;->c:Ljava/lang/Object;

    .line 154
    check-cast v1, Lo/b1;

    .line 156
    const-string v3, "android:support:activity-result"

    .line 158
    invoke-virtual {v1, v3, v0}, Lo/b1;->e(Ljava/lang/String;Lo/se;)V

    .line 161
    new-instance v0, Lo/o4;

    .line 163
    const/4 v1, 0x0

    .line 164
    invoke-direct {v0, v2, v1}, Lo/o4;-><init>(Lo/U0;I)V

    .line 167
    invoke-virtual {p0, v0}, Landroidx/activity/a;->h(Lo/nc;)V

    .line 170
    return-void
.end method

.method public static synthetic f(Landroidx/activity/a;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lo/Pb;
    .locals 4

    .line 1
    new-instance v0, Lo/Pb;

    .line 3
    invoke-direct {v0}, Lo/Pb;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 9
    move-result-object v1

    .line 10
    iget-object v2, v0, Lo/f5;->a:Ljava/util/LinkedHashMap;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    sget-object v1, Lo/u6;->d:Lo/u6;

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_0
    sget-object v1, Lo/x9;->M:Lo/u6;

    .line 25
    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v1, Lo/x9;->N:Lo/u6;

    .line 30
    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 49
    sget-object v1, Lo/x9;->O:Lo/u6;

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_1
    return-object v0
.end method

.method public final b()Lo/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/a;->e:Lo/t8;

    .line 3
    iget-object v0, v0, Lo/t8;->c:Ljava/lang/Object;

    .line 5
    check-cast v0, Lo/b1;

    .line 7
    return-object v0
.end method

.method public final d()Lo/Lh;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/activity/a;->f:Lo/Lh;

    .line 9
    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lo/r4;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-object v0, v0, Lo/r4;->a:Lo/Lh;

    .line 21
    iput-object v0, p0, Landroidx/activity/a;->f:Lo/Lh;

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/activity/a;->f:Lo/Lh;

    .line 25
    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lo/Lh;

    .line 29
    invoke-direct {v0}, Lo/Lh;-><init>()V

    .line 32
    iput-object v0, p0, Landroidx/activity/a;->f:Lo/Lh;

    .line 34
    :cond_1
    iget-object v0, p0, Landroidx/activity/a;->f:Lo/Lh;

    .line 36
    return-object v0

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0
.end method

.method public final e()Landroidx/lifecycle/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/a;->d:Landroidx/lifecycle/a;

    .line 3
    return-object v0
.end method

.method public final g(Lo/O4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/a;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final h(Lo/nc;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/a;->b:Lo/U4;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v1, v0, Lo/U4;->b:Landroidx/activity/a;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    invoke-interface {p1}, Lo/nc;->a()V

    .line 13
    :cond_0
    iget-object v0, v0, Lo/U4;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public final i()Landroidx/activity/b;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/a;->g:Landroidx/activity/b;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroidx/activity/b;

    .line 7
    new-instance v1, Lo/J2;

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, v2, p0}, Lo/J2;-><init>(ILjava/lang/Object;)V

    .line 13
    invoke-direct {v0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Runnable;)V

    .line 16
    iput-object v0, p0, Landroidx/activity/a;->g:Landroidx/activity/b;

    .line 18
    new-instance v0, Landroidx/activity/ComponentActivity$6;

    .line 20
    invoke-direct {v0, p0}, Landroidx/activity/ComponentActivity$6;-><init>(Landroidx/activity/a;)V

    .line 23
    iget-object v1, p0, Landroidx/activity/a;->d:Landroidx/lifecycle/a;

    .line 25
    invoke-virtual {v1, v0}, Landroidx/lifecycle/a;->a(Lo/Q9;)V

    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/activity/a;->g:Landroidx/activity/b;

    .line 30
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/a;->j:Lo/p4;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lo/p4;->a(IILandroid/content/Intent;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 12
    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/activity/a;->i()Landroidx/activity/b;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/activity/b;->b()V

    .line 8
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object v0, p0, Landroidx/activity/a;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lo/O4;

    .line 22
    invoke-interface {v1, p1}, Lo/O4;->a(Ljava/lang/Object;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/a;->e:Lo/t8;

    .line 3
    invoke-virtual {v0, p1}, Lo/t8;->b(Landroid/os/Bundle;)V

    .line 6
    iget-object v0, p0, Landroidx/activity/a;->b:Lo/U4;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iput-object p0, v0, Lo/U4;->b:Landroidx/activity/a;

    .line 13
    iget-object v0, v0, Lo/U4;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lo/nc;

    .line 31
    invoke-interface {v1}, Lo/nc;->a()V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-super {p0, p1}, Lo/t4;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget p1, Lo/Rd;->b:I

    .line 40
    invoke-static {p0}, Lo/Pd;->b(Landroid/app/Activity;)V

    .line 43
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 9
    iget-object p1, p0, Landroidx/activity/a;->c:Lo/s2;

    .line 11
    iget-object p1, p1, Lo/s2;->d:Ljava/lang/Object;

    .line 13
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Lo/c8;

    .line 31
    iget-object p2, p2, Lo/c8;->a:Lo/i8;

    .line 33
    invoke-virtual {p2}, Lo/i8;->k()Z

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x1

    .line 38
    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 p2, 0x0

    .line 10
    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Landroidx/activity/a;->c:Lo/s2;

    .line 14
    iget-object p1, p1, Lo/s2;->d:Ljava/lang/Object;

    .line 16
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p1

    .line 22
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lo/c8;

    .line 34
    iget-object v1, v1, Lo/c8;->a:Lo/i8;

    .line 36
    invoke-virtual {v1}, Lo/i8;->p()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, p2

    .line 44
    :goto_0
    return v0

    .line 45
    :cond_3
    return p2
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/activity/a;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/activity/a;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/O4;

    .line 3
    new-instance v2, Lo/Ob;

    invoke-direct {v2, p1}, Lo/Ob;-><init>(Z)V

    invoke-interface {v1, v2}, Lo/O4;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 4

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/activity/a;->p:Z

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-boolean v0, p0, Landroidx/activity/a;->p:Z

    .line 7
    iget-object v0, p0, Landroidx/activity/a;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/O4;

    .line 8
    new-instance v2, Lo/Ob;

    .line 9
    const-string v3, "newConfig"

    invoke-static {p2, v3}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {v2, p1}, Lo/Ob;-><init>(Z)V

    .line 11
    invoke-interface {v1, v2}, Lo/O4;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 12
    iput-boolean v0, p0, Landroidx/activity/a;->p:Z

    .line 13
    throw p1
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Landroidx/activity/a;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lo/O4;

    .line 22
    invoke-interface {v1, p1}, Lo/O4;->a(Ljava/lang/Object;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/a;->c:Lo/s2;

    .line 3
    iget-object v0, v0, Lo/s2;->d:Ljava/lang/Object;

    .line 5
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lo/c8;

    .line 23
    iget-object v1, v1, Lo/c8;->a:Lo/i8;

    .line 25
    invoke-virtual {v1}, Lo/i8;->q()V

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 32
    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/activity/a;->q:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/activity/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/O4;

    .line 3
    new-instance v2, Lo/Gc;

    invoke-direct {v2, p1}, Lo/Gc;-><init>(Z)V

    invoke-interface {v1, v2}, Lo/O4;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 4

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/activity/a;->q:Z

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-boolean v0, p0, Landroidx/activity/a;->q:Z

    .line 7
    iget-object v0, p0, Landroidx/activity/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/O4;

    .line 8
    new-instance v2, Lo/Gc;

    .line 9
    const-string v3, "newConfig"

    invoke-static {p2, v3}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {v2, p1}, Lo/Gc;-><init>(Z)V

    .line 11
    invoke-interface {v1, v2}, Lo/O4;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 12
    iput-boolean v0, p0, Landroidx/activity/a;->q:Z

    .line 13
    throw p1
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 6
    iget-object p1, p0, Landroidx/activity/a;->c:Lo/s2;

    .line 8
    iget-object p1, p1, Lo/s2;->d:Ljava/lang/Object;

    .line 10
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lo/c8;

    .line 28
    iget-object p2, p2, Lo/c8;->a:Lo/i8;

    .line 30
    invoke-virtual {p2}, Lo/i8;->t()Z

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x1

    .line 35
    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    .line 14
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, -0x1

    .line 19
    iget-object v2, p0, Landroidx/activity/a;->j:Lo/p4;

    .line 21
    invoke-virtual {v2, p1, v1, v0}, Lo/p4;->a(IILandroid/content/Intent;)Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 27
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 30
    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/a;->f:Lo/Lh;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lo/r4;

    .line 11
    if-eqz v1, :cond_0

    .line 13
    iget-object v0, v1, Lo/r4;->a:Lo/Lh;

    .line 15
    :cond_0
    if-nez v0, :cond_1

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :cond_1
    new-instance v1, Lo/r4;

    .line 21
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, v1, Lo/r4;->a:Lo/Lh;

    .line 26
    return-object v1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/a;->d:Landroidx/lifecycle/a;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroidx/lifecycle/a;->g()V

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lo/t4;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 11
    iget-object v0, p0, Landroidx/activity/a;->e:Lo/t8;

    .line 13
    invoke-virtual {v0, p1}, Lo/t8;->c(Landroid/os/Bundle;)V

    .line 16
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 4
    iget-object v0, p0, Landroidx/activity/a;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lo/O4;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v1, v2}, Lo/O4;->a(Ljava/lang/Object;)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public final reportFullyDrawn()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lo/Ha;->Y()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string v0, "reportFullyDrawn() for ComponentActivity"

    .line 9
    invoke-static {v0}, Lo/Ha;->a(Ljava/lang/String;)V

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_3

    .line 15
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->reportFullyDrawn()V

    .line 18
    iget-object v0, p0, Landroidx/activity/a;->i:Lo/t8;

    .line 20
    iget-object v1, v0, Lo/t8;->b:Ljava/lang/Object;

    .line 22
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    const/4 v2, 0x1

    .line 24
    :try_start_1
    iput-boolean v2, v0, Lo/t8;->a:Z

    .line 26
    iget-object v2, v0, Lo/t8;->c:Ljava/lang/Object;

    .line 28
    check-cast v2, Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v2

    .line 34
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lo/u8;

    .line 46
    invoke-interface {v3}, Lo/u8;->a()Ljava/lang/Object;

    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    iget-object v0, v0, Lo/t8;->c:Ljava/lang/Object;

    .line 54
    check-cast v0, Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 63
    return-void

    .line 64
    :goto_2
    :try_start_3
    monitor-exit v1

    .line 65
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 69
    throw v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p0}, Lo/Ng;->s(Landroid/view/View;Lo/R9;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "<this>"

    .line 22
    invoke-static {v0, v1}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const v2, 0x7f0801fc

    .line 28
    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, p0}, Lo/Ng;->u(Landroid/view/View;Lo/te;)V

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0, p0}, Lo/Ng;->t(Landroid/view/View;Lo/mc;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0, v1}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const v1, 0x7f080179

    .line 67
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Landroidx/activity/a;->h:Lo/s4;

    .line 80
    iget-boolean v2, v1, Lo/s4;->c:Z

    .line 82
    if-nez v2, :cond_0

    .line 84
    const/4 v2, 0x1

    .line 85
    iput-boolean v2, v1, Lo/s4;->c:Z

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 94
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 97
    return-void
.end method
