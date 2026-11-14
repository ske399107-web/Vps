.class public final Lo/r6;
.super Lo/c7;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:I

.field public final g:Landroid/animation/TimeInterpolator;

.field public h:Landroid/widget/AutoCompleteTextView;

.field public final i:Lo/W3;

.field public final j:Lo/X3;

.field public final k:Lo/s0;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:J

.field public p:Landroid/view/accessibility/AccessibilityManager;

.field public q:Landroid/animation/ValueAnimator;

.field public r:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lo/b7;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lo/c7;-><init>(Lo/b7;)V

    .line 4
    new-instance v0, Lo/W3;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1, p0}, Lo/W3;-><init>(ILjava/lang/Object;)V

    .line 10
    iput-object v0, p0, Lo/r6;->i:Lo/W3;

    .line 12
    new-instance v0, Lo/X3;

    .line 14
    invoke-direct {v0, p0, v1}, Lo/X3;-><init>(Lo/c7;I)V

    .line 17
    iput-object v0, p0, Lo/r6;->j:Lo/X3;

    .line 19
    new-instance v0, Lo/s0;

    .line 21
    invoke-direct {v0, v1, p0}, Lo/s0;-><init>(ILjava/lang/Object;)V

    .line 24
    iput-object v0, p0, Lo/r6;->k:Lo/s0;

    .line 26
    const-wide v0, 0x7fffffffffffffffL

    .line 31
    iput-wide v0, p0, Lo/r6;->o:J

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    const v1, 0x7f030336

    .line 40
    const/16 v2, 0x43

    .line 42
    invoke-static {v0, v1, v2}, Lo/Ha;->o0(Landroid/content/Context;II)I

    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lo/r6;->f:I

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v0

    .line 52
    const/16 v2, 0x32

    .line 54
    invoke-static {v0, v1, v2}, Lo/Ha;->o0(Landroid/content/Context;II)I

    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lo/r6;->e:I

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    move-result-object p1

    .line 64
    sget-object v0, Lo/Q0;->a:Landroid/view/animation/LinearInterpolator;

    .line 66
    const v1, 0x7f03033f

    .line 69
    invoke-static {p1, v1, v0}, Lo/Ha;->p0(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;

    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lo/r6;->g:Landroid/animation/TimeInterpolator;

    .line 75
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/r6;->p:Landroid/view/accessibility/AccessibilityManager;

    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 11
    invoke-static {v0}, Lo/L1;->F(Landroid/widget/EditText;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lo/c7;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 27
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 30
    :cond_0
    iget-object v0, p0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 32
    new-instance v1, Lo/i0;

    .line 34
    const/4 v2, 0x7

    .line 35
    invoke-direct {v1, v2, p0}, Lo/i0;-><init>(ILjava/lang/Object;)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void
.end method

.method public final c()I
    .locals 1

    .line 1
    const v0, 0x7f0e0034

    .line 4
    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    const v0, 0x7f0700c5

    .line 4
    return v0
.end method

.method public final e()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/r6;->j:Lo/X3;

    .line 3
    return-object v0
.end method

.method public final f()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/r6;->i:Lo/W3;

    .line 3
    return-object v0
.end method

.method public final h()Lo/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/r6;->k:Lo/s0;

    .line 3
    return-object v0
.end method

.method public final i(I)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    return p1
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo/r6;->l:Z

    .line 3
    return v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo/r6;->n:Z

    .line 3
    return v0
.end method

.method public final m(Landroid/widget/EditText;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/widget/AutoCompleteTextView;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 8
    iput-object v0, p0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 10
    new-instance v1, Lo/p6;

    .line 12
    invoke-direct {v1, p0}, Lo/p6;-><init>(Lo/r6;)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 18
    iget-object v0, p0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 20
    new-instance v1, Lo/q6;

    .line 22
    invoke-direct {v1, p0}, Lo/q6;-><init>(Lo/r6;)V

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 28
    iget-object v0, p0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 34
    iget-object v0, p0, Lo/c7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-static {p1}, Lo/L1;->F(Landroid/widget/EditText;)Z

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_0

    .line 46
    iget-object p1, p0, Lo/r6;->p:Landroid/view/accessibility/AccessibilityManager;

    .line 48
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 54
    sget-object p1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 56
    iget-object p1, p0, Lo/c7;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 58
    const/4 v1, 0x2

    .line 59
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 62
    :cond_0
    const/4 p1, 0x1

    .line 63
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 66
    return-void

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 69
    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    .line 71
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p1
.end method

.method public final n(Lo/D;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 3
    invoke-static {v0}, Lo/L1;->F(Landroid/widget/EditText;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-class v0, Landroid/widget/Spinner;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lo/D;->i(Ljava/lang/CharSequence;)V

    .line 18
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    const/16 v1, 0x1a

    .line 22
    if-lt v0, v1, :cond_1

    .line 24
    iget-object v0, p1, Lo/D;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 26
    invoke-static {v0}, Lo/b;->p(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x4

    .line 32
    invoke-virtual {p1, v0}, Lo/D;->e(I)Z

    .line 35
    move-result v0

    .line 36
    :goto_0
    if-eqz v0, :cond_2

    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Lo/D;->k(Ljava/lang/String;)V

    .line 42
    :cond_2
    return-void
.end method

.method public final o(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/r6;->p:Landroid/view/accessibility/AccessibilityManager;

    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 11
    invoke-static {v0}, Lo/L1;->F(Landroid/widget/EditText;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 21
    move-result v0

    .line 22
    const v1, 0x8000

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eq v0, v1, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 31
    move-result v0

    .line 32
    const/16 v1, 0x8

    .line 34
    if-ne v0, v1, :cond_2

    .line 36
    :cond_1
    iget-boolean v0, p0, Lo/r6;->n:Z

    .line 38
    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 42
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 48
    move v0, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 54
    move-result p1

    .line 55
    if-eq p1, v2, :cond_3

    .line 57
    if-eqz v0, :cond_4

    .line 59
    :cond_3
    invoke-virtual {p0}, Lo/r6;->u()V

    .line 62
    iput-boolean v2, p0, Lo/r6;->m:Z

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    move-result-wide v0

    .line 68
    iput-wide v0, p0, Lo/r6;->o:J

    .line 70
    :cond_4
    :goto_1
    return-void
.end method

.method public final r()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_0

    .line 7
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lo/r6;->g:Landroid/animation/TimeInterpolator;

    .line 13
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    iget v3, p0, Lo/r6;->f:I

    .line 18
    int-to-long v3, v3

    .line 19
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 22
    new-instance v3, Lo/o6;

    .line 24
    invoke-direct {v3, p0}, Lo/o6;-><init>(Lo/r6;)V

    .line 27
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 30
    iput-object v1, p0, Lo/r6;->r:Landroid/animation/ValueAnimator;

    .line 32
    new-array v0, v0, [F

    .line 34
    fill-array-data v0, :array_1

    .line 37
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 44
    iget v1, p0, Lo/r6;->e:I

    .line 46
    int-to-long v1, v1

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 50
    new-instance v1, Lo/o6;

    .line 52
    invoke-direct {v1, p0}, Lo/o6;-><init>(Lo/r6;)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    iput-object v0, p0, Lo/r6;->q:Landroid/animation/ValueAnimator;

    .line 60
    new-instance v1, Lo/Q;

    .line 62
    const/4 v2, 0x3

    .line 63
    invoke-direct {v1, v2, p0}, Lo/Q;-><init>(ILjava/lang/Object;)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    iget-object v0, p0, Lo/c7;->c:Landroid/content/Context;

    .line 71
    const-string v1, "accessibility"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 79
    iput-object v0, p0, Lo/r6;->p:Landroid/view/accessibility/AccessibilityManager;

    .line 81
    return-void

    nop

    .line 83
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 91
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    iget-object v0, p0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 14
    :cond_0
    return-void
.end method

.method public final t(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo/r6;->n:Z

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput-boolean p1, p0, Lo/r6;->n:Z

    .line 7
    iget-object p1, p0, Lo/r6;->r:Landroid/animation/ValueAnimator;

    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 12
    iget-object p1, p0, Lo/r6;->q:Landroid/animation/ValueAnimator;

    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 17
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 7

    .line 1
    iget-object v0, p0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lo/r6;->o:J

    .line 12
    sub-long/2addr v0, v2

    .line 13
    const-wide/16 v2, 0x0

    .line 15
    cmp-long v2, v0, v2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-ltz v2, :cond_2

    .line 21
    const-wide/16 v5, 0x12c

    .line 23
    cmp-long v0, v0, v5

    .line 25
    if-lez v0, :cond_1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v0, v4

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    move v0, v3

    .line 31
    :goto_1
    if-eqz v0, :cond_3

    .line 33
    iput-boolean v4, p0, Lo/r6;->m:Z

    .line 35
    :cond_3
    iget-boolean v0, p0, Lo/r6;->m:Z

    .line 37
    if-nez v0, :cond_5

    .line 39
    iget-boolean v0, p0, Lo/r6;->n:Z

    .line 41
    xor-int/2addr v0, v3

    .line 42
    invoke-virtual {p0, v0}, Lo/r6;->t(Z)V

    .line 45
    iget-boolean v0, p0, Lo/r6;->n:Z

    .line 47
    if-eqz v0, :cond_4

    .line 49
    iget-object v0, p0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 54
    iget-object v0, p0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 56
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    iget-object v0, p0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 62
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 65
    goto :goto_2

    .line 66
    :cond_5
    iput-boolean v4, p0, Lo/r6;->m:Z

    .line 68
    :goto_2
    return-void
.end method
