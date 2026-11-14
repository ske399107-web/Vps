.class public final Lo/ri;
.super Lo/h0;
.source "SourceFile"

# interfaces
.implements Lo/ib;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lo/kb;

.field public e:Lo/H1;

.field public f:Ljava/lang/ref/WeakReference;

.field public final synthetic g:Lo/si;


# direct methods
.method public constructor <init>(Lo/si;Landroid/content/Context;Lo/H1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/ri;->g:Lo/si;

    .line 6
    iput-object p2, p0, Lo/ri;->c:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lo/ri;->e:Lo/H1;

    .line 10
    new-instance p1, Lo/kb;

    .line 12
    invoke-direct {p1, p2}, Lo/kb;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 p2, 0x1

    .line 16
    iput p2, p1, Lo/kb;->l:I

    .line 18
    iput-object p1, p0, Lo/ri;->d:Lo/kb;

    .line 20
    iput-object p0, p1, Lo/kb;->e:Lo/ib;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/ri;->g:Lo/si;

    .line 3
    iget-object v1, v0, Lo/si;->c0:Lo/ri;

    .line 5
    if-eq v1, p0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lo/si;->j0:Z

    .line 10
    if-eqz v1, :cond_1

    .line 12
    iput-object p0, v0, Lo/si;->d0:Lo/ri;

    .line 14
    iget-object v1, p0, Lo/ri;->e:Lo/H1;

    .line 16
    iput-object v1, v0, Lo/si;->e0:Lo/H1;

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p0, Lo/ri;->e:Lo/H1;

    .line 21
    invoke-virtual {v1, p0}, Lo/H1;->F(Lo/h0;)V

    .line 24
    :goto_0
    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lo/ri;->e:Lo/H1;

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v2}, Lo/si;->q0(Z)V

    .line 31
    iget-object v2, v0, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 33
    iget-object v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 35
    if-nez v3, :cond_2

    .line 37
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 40
    :cond_2
    iget-object v2, v0, Lo/si;->W:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 42
    iget-boolean v3, v0, Lo/si;->o0:Z

    .line 44
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 47
    iput-object v1, v0, Lo/si;->c0:Lo/ri;

    .line 49
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ri;->f:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final c()Lo/kb;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ri;->d:Lo/kb;

    .line 3
    return-object v0
.end method

.method public final d()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, Lo/zf;

    .line 3
    iget-object v1, p0, Lo/ri;->c:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1}, Lo/zf;-><init>(Landroid/content/Context;)V

    .line 8
    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ri;->g:Lo/si;

    .line 3
    iget-object v0, v0, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ri;->g:Lo/si;

    .line 3
    iget-object v0, v0, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/ri;->g:Lo/si;

    .line 3
    iget-object v0, v0, Lo/si;->c0:Lo/ri;

    .line 5
    if-eq v0, p0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lo/ri;->d:Lo/kb;

    .line 10
    invoke-virtual {v0}, Lo/kb;->w()V

    .line 13
    :try_start_0
    iget-object v1, p0, Lo/ri;->e:Lo/H1;

    .line 15
    invoke-virtual {v1, p0, v0}, Lo/H1;->G(Lo/h0;Lo/kb;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v0}, Lo/kb;->v()V

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    invoke-virtual {v0}, Lo/kb;->v()V

    .line 26
    throw v1
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ri;->g:Lo/si;

    .line 3
    iget-object v0, v0, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    .line 7
    return v0
.end method

.method public final i(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ri;->g:Lo/si;

    .line 3
    iget-object v0, v0, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-object v0, p0, Lo/ri;->f:Ljava/lang/ref/WeakReference;

    .line 15
    return-void
.end method

.method public final j(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ri;->g:Lo/si;

    .line 3
    iget-object v0, v0, Lo/si;->U:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lo/ri;->l(Ljava/lang/CharSequence;)V

    .line 16
    return-void
.end method

.method public final k(Lo/kb;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lo/ri;->e:Lo/H1;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p1, Lo/H1;->b:Ljava/lang/Object;

    .line 7
    check-cast p1, Lo/H5;

    .line 9
    invoke-virtual {p1, p0, p2}, Lo/H5;->k(Lo/h0;Landroid/view/MenuItem;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ri;->g:Lo/si;

    .line 3
    iget-object v0, v0, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 8
    return-void
.end method

.method public final m(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ri;->g:Lo/si;

    .line 3
    iget-object v0, v0, Lo/si;->U:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lo/ri;->n(Ljava/lang/CharSequence;)V

    .line 16
    return-void
.end method

.method public final n(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ri;->g:Lo/si;

    .line 3
    iget-object v0, v0, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    return-void
.end method

.method public final o(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lo/h0;->b:Z

    .line 3
    iget-object v0, p0, Lo/ri;->g:Lo/si;

    .line 5
    iget-object v0, v0, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 7
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 10
    return-void
.end method

.method public final v(Lo/kb;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo/ri;->e:Lo/H1;

    .line 3
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lo/ri;->g()V

    .line 9
    iget-object p1, p0, Lo/ri;->g:Lo/si;

    .line 11
    iget-object p1, p1, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 13
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarContextView;->d:Lo/d0;

    .line 15
    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Lo/d0;->l()Z

    .line 20
    :cond_1
    return-void
.end method
