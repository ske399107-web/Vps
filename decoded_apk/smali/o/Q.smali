.class public final Lo/Q;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/Q;->a:I

    iput-object p2, p0, Lo/Q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/Rh;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x6

    iput p2, p0, Lo/Q;->a:I

    .line 2
    iput-object p1, p0, Lo/Q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lo/Q;->a:I

    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 9
    return-void

    .line 10
    :sswitch_0
    iget-object p1, p0, Lo/Q;->b:Ljava/lang/Object;

    .line 12
    check-cast p1, Lo/Rh;

    .line 14
    invoke-interface {p1}, Lo/Rh;->b()V

    .line 17
    return-void

    .line 18
    :sswitch_1
    const/4 p1, 0x0

    .line 19
    iget-object v0, p0, Lo/Q;->b:Ljava/lang/Object;

    .line 21
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 23
    iput-object p1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/view/ViewPropertyAnimator;

    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    .line 28
    return-void

    .line 29
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget v0, p0, Lo/Q;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lo/Q;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Lo/Rh;

    .line 10
    invoke-interface {p1}, Lo/Rh;->a()V

    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lo/Q;->b:Ljava/lang/Object;

    .line 16
    check-cast v0, Lo/ug;

    .line 18
    invoke-virtual {v0}, Lo/ug;->m()V

    .line 21
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    return-void

    .line 25
    :pswitch_1
    iget-object p1, p0, Lo/Q;->b:Ljava/lang/Object;

    .line 27
    check-cast p1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->h:Landroid/view/ViewPropertyAnimator;

    .line 32
    return-void

    .line 33
    :pswitch_2
    iget-object p1, p0, Lo/Q;->b:Ljava/lang/Object;

    .line 35
    check-cast p1, Lo/r6;

    .line 37
    invoke-virtual {p1}, Lo/c7;->q()V

    .line 40
    iget-object p1, p1, Lo/r6;->r:Landroid/animation/ValueAnimator;

    .line 42
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 45
    return-void

    .line 46
    :pswitch_3
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 49
    iget-object p1, p0, Lo/Q;->b:Ljava/lang/Object;

    .line 51
    check-cast p1, Lo/W2;

    .line 53
    invoke-static {p1}, Lo/Ng;->g(Landroid/view/View;)Lo/Oh;

    .line 56
    move-result-object v0

    .line 57
    iget-object p1, p1, Lo/W2;->l:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object p1

    .line 63
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lo/mg;

    .line 75
    iget-object v2, v0, Lo/Oh;->a:Ljava/lang/Object;

    .line 77
    check-cast v2, Landroid/view/ViewOverlay;

    .line 79
    invoke-virtual {v2, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    return-void

    .line 84
    :pswitch_4
    new-instance p1, Ljava/util/ArrayList;

    .line 86
    iget-object v0, p0, Lo/Q;->b:Ljava/lang/Object;

    .line 88
    check-cast v0, Lo/P0;

    .line 90
    iget-object v1, v0, Lo/P0;->e:Ljava/util/ArrayList;

    .line 92
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 98
    move-result v1

    .line 99
    const/4 v2, 0x0

    .line 100
    :goto_1
    if-ge v2, v1, :cond_2

    .line 102
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Lo/Wa;

    .line 108
    iget-object v3, v3, Lo/Wa;->b:Lo/Ya;

    .line 110
    iget-object v3, v3, Lo/Ya;->o:Landroid/content/res/ColorStateList;

    .line 112
    if-eqz v3, :cond_1

    .line 114
    invoke-virtual {v0, v3}, Lo/P0;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 117
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    return-void

    .line 121
    :pswitch_5
    const/4 p1, 0x0

    .line 122
    iget-object v0, p0, Lo/Q;->b:Ljava/lang/Object;

    .line 124
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 126
    iput-object p1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/view/ViewPropertyAnimator;

    .line 128
    const/4 p1, 0x0

    .line 129
    iput-boolean p1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    .line 131
    return-void

    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    .line 1
    iget v0, p0, Lo/Q;->a:I

    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 9
    return-void

    .line 10
    :sswitch_0
    iget-object p1, p0, Lo/Q;->b:Ljava/lang/Object;

    .line 12
    check-cast p1, Lo/Rh;

    .line 14
    invoke-interface {p1}, Lo/Rh;->c()V

    .line 17
    return-void

    .line 18
    :sswitch_1
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    iget-object v0, p0, Lo/Q;->b:Ljava/lang/Object;

    .line 22
    check-cast v0, Lo/P0;

    .line 24
    iget-object v1, v0, Lo/P0;->e:Ljava/util/ArrayList;

    .line 26
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge v2, v1, :cond_1

    .line 36
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lo/Wa;

    .line 42
    iget-object v3, v3, Lo/Wa;->b:Lo/Ya;

    .line 44
    iget-object v4, v3, Lo/Ya;->o:Landroid/content/res/ColorStateList;

    .line 46
    if-eqz v4, :cond_0

    .line 48
    iget-object v3, v3, Lo/Ya;->s:[I

    .line 50
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 53
    move-result v5

    .line 54
    invoke-virtual {v4, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 57
    move-result v3

    .line 58
    invoke-virtual {v0, v3}, Lo/P0;->setTint(I)V

    .line 61
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
