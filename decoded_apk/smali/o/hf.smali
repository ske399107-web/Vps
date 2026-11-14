.class public final Lo/hf;
.super Lo/sb;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lo/kb;

.field public final d:Lo/hb;

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Lo/yb;

.field public final i:Lo/P1;

.field public final j:Lo/x3;

.field public k:Lo/tb;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Lo/zb;

.field public o:Landroid/view/ViewTreeObserver;

.field public p:Z

.field public q:Z

.field public r:I

.field public s:I

.field public t:Z


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/view/View;Lo/kb;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lo/P1;

    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1, p0}, Lo/P1;-><init>(ILjava/lang/Object;)V

    .line 10
    iput-object v0, p0, Lo/hf;->i:Lo/P1;

    .line 12
    new-instance v0, Lo/x3;

    .line 14
    invoke-direct {v0, v1, p0}, Lo/x3;-><init>(ILjava/lang/Object;)V

    .line 17
    iput-object v0, p0, Lo/hf;->j:Lo/x3;

    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lo/hf;->s:I

    .line 22
    iput-object p2, p0, Lo/hf;->b:Landroid/content/Context;

    .line 24
    iput-object p4, p0, Lo/hf;->c:Lo/kb;

    .line 26
    iput-boolean p5, p0, Lo/hf;->e:Z

    .line 28
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lo/hb;

    .line 34
    const v2, 0x7f0b0013

    .line 37
    invoke-direct {v1, p4, v0, p5, v2}, Lo/hb;-><init>(Lo/kb;Landroid/view/LayoutInflater;ZI)V

    .line 40
    iput-object v1, p0, Lo/hf;->d:Lo/hb;

    .line 42
    iput p1, p0, Lo/hf;->g:I

    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object p5

    .line 48
    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 51
    move-result-object v0

    .line 52
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 54
    div-int/lit8 v0, v0, 0x2

    .line 56
    const v1, 0x7f060017

    .line 59
    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    move-result p5

    .line 63
    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    .line 66
    move-result p5

    .line 67
    iput p5, p0, Lo/hf;->f:I

    .line 69
    iput-object p3, p0, Lo/hf;->l:Landroid/view/View;

    .line 71
    new-instance p3, Lo/yb;

    .line 73
    const/4 p5, 0x0

    .line 74
    invoke-direct {p3, p2, p5, p1}, Lo/la;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    iput-object p3, p0, Lo/hf;->h:Lo/yb;

    .line 79
    invoke-virtual {p4, p0, p2}, Lo/kb;->b(Lo/Ab;Landroid/content/Context;)V

    .line 82
    return-void
.end method


# virtual methods
.method public final a(Lo/kb;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/hf;->c:Lo/kb;

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lo/hf;->dismiss()V

    .line 9
    iget-object v0, p0, Lo/hf;->n:Lo/zb;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0, p1, p2}, Lo/zb;->a(Lo/kb;Z)V

    .line 16
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo/hf;->p:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lo/hf;->h:Lo/yb;

    .line 7
    iget-object v0, v0, Lo/la;->z:Lo/G1;

    .line 9
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final c(Lo/zb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/hf;->n:Lo/zb;

    .line 3
    return-void
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/hf;->b()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lo/hf;->h:Lo/yb;

    .line 9
    invoke-virtual {v0}, Lo/la;->dismiss()V

    .line 12
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final f()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lo/hf;->b()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    goto/16 :goto_2

    .line 9
    :cond_0
    iget-boolean v0, p0, Lo/hf;->p:Z

    .line 11
    if-nez v0, :cond_7

    .line 13
    iget-object v0, p0, Lo/hf;->l:Landroid/view/View;

    .line 15
    if-eqz v0, :cond_7

    .line 17
    iput-object v0, p0, Lo/hf;->m:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lo/hf;->h:Lo/yb;

    .line 21
    iget-object v1, v0, Lo/la;->z:Lo/G1;

    .line 23
    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 26
    iput-object p0, v0, Lo/la;->p:Landroid/widget/AdapterView$OnItemClickListener;

    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, v0, Lo/la;->y:Z

    .line 31
    iget-object v2, v0, Lo/la;->z:Lo/G1;

    .line 33
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 36
    iget-object v2, p0, Lo/hf;->m:Landroid/view/View;

    .line 38
    iget-object v3, p0, Lo/hf;->o:Landroid/view/ViewTreeObserver;

    .line 40
    const/4 v4, 0x0

    .line 41
    if-nez v3, :cond_1

    .line 43
    move v3, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v3, v4

    .line 46
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 49
    move-result-object v5

    .line 50
    iput-object v5, p0, Lo/hf;->o:Landroid/view/ViewTreeObserver;

    .line 52
    if-eqz v3, :cond_2

    .line 54
    iget-object v3, p0, Lo/hf;->i:Lo/P1;

    .line 56
    invoke-virtual {v5, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 59
    :cond_2
    iget-object v3, p0, Lo/hf;->j:Lo/x3;

    .line 61
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 64
    iput-object v2, v0, Lo/la;->o:Landroid/view/View;

    .line 66
    iget v2, p0, Lo/hf;->s:I

    .line 68
    iput v2, v0, Lo/la;->l:I

    .line 70
    iget-boolean v2, p0, Lo/hf;->q:Z

    .line 72
    iget-object v3, p0, Lo/hf;->b:Landroid/content/Context;

    .line 74
    iget-object v5, p0, Lo/hf;->d:Lo/hb;

    .line 76
    if-nez v2, :cond_3

    .line 78
    iget v2, p0, Lo/hf;->f:I

    .line 80
    invoke-static {v5, v3, v2}, Lo/sb;->m(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    .line 83
    move-result v2

    .line 84
    iput v2, p0, Lo/hf;->r:I

    .line 86
    iput-boolean v1, p0, Lo/hf;->q:Z

    .line 88
    :cond_3
    iget v1, p0, Lo/hf;->r:I

    .line 90
    invoke-virtual {v0, v1}, Lo/la;->r(I)V

    .line 93
    const/4 v1, 0x2

    .line 94
    iget-object v2, v0, Lo/la;->z:Lo/G1;

    .line 96
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 99
    iget-object v1, p0, Lo/sb;->a:Landroid/graphics/Rect;

    .line 101
    const/4 v2, 0x0

    .line 102
    if-eqz v1, :cond_4

    .line 104
    new-instance v6, Landroid/graphics/Rect;

    .line 106
    invoke-direct {v6, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    move-object v6, v2

    .line 111
    :goto_1
    iput-object v6, v0, Lo/la;->x:Landroid/graphics/Rect;

    .line 113
    invoke-virtual {v0}, Lo/la;->f()V

    .line 116
    iget-object v1, v0, Lo/la;->c:Lo/n6;

    .line 118
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 121
    iget-boolean v6, p0, Lo/hf;->t:Z

    .line 123
    if-eqz v6, :cond_6

    .line 125
    iget-object v6, p0, Lo/hf;->c:Lo/kb;

    .line 127
    iget-object v7, v6, Lo/kb;->m:Ljava/lang/CharSequence;

    .line 129
    if-eqz v7, :cond_6

    .line 131
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 134
    move-result-object v3

    .line 135
    const v7, 0x7f0b0012

    .line 138
    invoke-virtual {v3, v7, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Landroid/widget/FrameLayout;

    .line 144
    const v7, 0x1020016

    .line 147
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    move-result-object v7

    .line 151
    check-cast v7, Landroid/widget/TextView;

    .line 153
    if-eqz v7, :cond_5

    .line 155
    iget-object v6, v6, Lo/kb;->m:Ljava/lang/CharSequence;

    .line 157
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 163
    invoke-virtual {v1, v3, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 166
    :cond_6
    invoke-virtual {v0, v5}, Lo/la;->p(Landroid/widget/ListAdapter;)V

    .line 169
    invoke-virtual {v0}, Lo/la;->f()V

    .line 172
    :goto_2
    return-void

    .line 173
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 175
    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    .line 177
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    throw v0
.end method

.method public final g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo/hf;->q:Z

    .line 4
    iget-object v0, p0, Lo/hf;->d:Lo/hb;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lo/hb;->notifyDataSetChanged()V

    .line 11
    :cond_0
    return-void
.end method

.method public final i(Lo/uf;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lo/kb;->hasVisibleItems()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 8
    new-instance v0, Lo/ub;

    .line 10
    iget-object v5, p0, Lo/hf;->m:Landroid/view/View;

    .line 12
    iget-object v4, p0, Lo/hf;->b:Landroid/content/Context;

    .line 14
    iget-boolean v7, p0, Lo/hf;->e:Z

    .line 16
    iget v3, p0, Lo/hf;->g:I

    .line 18
    move-object v2, v0

    .line 19
    move-object v6, p1

    .line 20
    invoke-direct/range {v2 .. v7}, Lo/ub;-><init>(ILandroid/content/Context;Landroid/view/View;Lo/kb;Z)V

    .line 23
    iget-object v2, p0, Lo/hf;->n:Lo/zb;

    .line 25
    iput-object v2, v0, Lo/ub;->h:Lo/zb;

    .line 27
    iget-object v3, v0, Lo/ub;->i:Lo/sb;

    .line 29
    if-eqz v3, :cond_0

    .line 31
    invoke-interface {v3, v2}, Lo/Ab;->c(Lo/zb;)V

    .line 34
    :cond_0
    invoke-static {p1}, Lo/sb;->u(Lo/kb;)Z

    .line 37
    move-result v2

    .line 38
    iput-boolean v2, v0, Lo/ub;->g:Z

    .line 40
    iget-object v3, v0, Lo/ub;->i:Lo/sb;

    .line 42
    if-eqz v3, :cond_1

    .line 44
    invoke-virtual {v3, v2}, Lo/sb;->o(Z)V

    .line 47
    :cond_1
    iget-object v2, p0, Lo/hf;->k:Lo/tb;

    .line 49
    iput-object v2, v0, Lo/ub;->j:Lo/tb;

    .line 51
    const/4 v2, 0x0

    .line 52
    iput-object v2, p0, Lo/hf;->k:Lo/tb;

    .line 54
    iget-object v2, p0, Lo/hf;->c:Lo/kb;

    .line 56
    invoke-virtual {v2, v1}, Lo/kb;->c(Z)V

    .line 59
    iget-object v2, p0, Lo/hf;->h:Lo/yb;

    .line 61
    iget v3, v2, Lo/la;->f:I

    .line 63
    invoke-virtual {v2}, Lo/la;->g()I

    .line 66
    move-result v2

    .line 67
    iget v4, p0, Lo/hf;->s:I

    .line 69
    iget-object v5, p0, Lo/hf;->l:Landroid/view/View;

    .line 71
    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    .line 74
    move-result v5

    .line 75
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 78
    move-result v4

    .line 79
    and-int/lit8 v4, v4, 0x7

    .line 81
    const/4 v5, 0x5

    .line 82
    if-ne v4, v5, :cond_2

    .line 84
    iget-object v4, p0, Lo/hf;->l:Landroid/view/View;

    .line 86
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 89
    move-result v4

    .line 90
    add-int/2addr v3, v4

    .line 91
    :cond_2
    invoke-virtual {v0}, Lo/ub;->b()Z

    .line 94
    move-result v4

    .line 95
    const/4 v5, 0x1

    .line 96
    if-eqz v4, :cond_3

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    iget-object v4, v0, Lo/ub;->e:Landroid/view/View;

    .line 101
    if-nez v4, :cond_4

    .line 103
    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {v0, v3, v2, v5, v5}, Lo/ub;->d(IIZZ)V

    .line 107
    :goto_0
    iget-object v0, p0, Lo/hf;->n:Lo/zb;

    .line 109
    if-eqz v0, :cond_5

    .line 111
    invoke-interface {v0, p1}, Lo/zb;->g(Lo/kb;)Z

    .line 114
    :cond_5
    return v5

    .line 115
    :cond_6
    :goto_1
    return v1
.end method

.method public final j()Lo/n6;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/hf;->h:Lo/yb;

    .line 3
    iget-object v0, v0, Lo/la;->c:Lo/n6;

    .line 5
    return-object v0
.end method

.method public final l(Lo/kb;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/hf;->l:Landroid/view/View;

    .line 3
    return-void
.end method

.method public final o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/hf;->d:Lo/hb;

    .line 3
    iput-boolean p1, v0, Lo/hb;->c:Z

    .line 5
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/hf;->p:Z

    .line 4
    iget-object v1, p0, Lo/hf;->c:Lo/kb;

    .line 6
    invoke-virtual {v1, v0}, Lo/kb;->c(Z)V

    .line 9
    iget-object v0, p0, Lo/hf;->o:Landroid/view/ViewTreeObserver;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lo/hf;->m:Landroid/view/View;

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lo/hf;->o:Landroid/view/ViewTreeObserver;

    .line 27
    :cond_0
    iget-object v0, p0, Lo/hf;->o:Landroid/view/ViewTreeObserver;

    .line 29
    iget-object v1, p0, Lo/hf;->i:Lo/P1;

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lo/hf;->o:Landroid/view/ViewTreeObserver;

    .line 37
    :cond_1
    iget-object v0, p0, Lo/hf;->m:Landroid/view/View;

    .line 39
    iget-object v1, p0, Lo/hf;->j:Lo/x3;

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 44
    iget-object v0, p0, Lo/hf;->k:Lo/tb;

    .line 46
    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {v0}, Lo/tb;->onDismiss()V

    .line 51
    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-ne p1, p3, :cond_0

    .line 8
    const/16 p1, 0x52

    .line 10
    if-ne p2, p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lo/hf;->dismiss()V

    .line 15
    return p3

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/hf;->s:I

    .line 3
    return-void
.end method

.method public final q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/hf;->h:Lo/yb;

    .line 3
    iput p1, v0, Lo/la;->f:I

    .line 5
    return-void
.end method

.method public final r(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    check-cast p1, Lo/tb;

    .line 3
    iput-object p1, p0, Lo/hf;->k:Lo/tb;

    .line 5
    return-void
.end method

.method public final s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lo/hf;->t:Z

    .line 3
    return-void
.end method

.method public final t(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/hf;->h:Lo/yb;

    .line 3
    invoke-virtual {v0, p1}, Lo/la;->n(I)V

    .line 6
    return-void
.end method
