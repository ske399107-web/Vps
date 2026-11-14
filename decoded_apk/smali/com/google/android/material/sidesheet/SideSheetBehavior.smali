.class public Lcom/google/android/material/sidesheet/SideSheetBehavior;
.super Lo/W4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lo/W4;"
    }
.end annotation


# instance fields
.field public a:Lo/Ha;

.field public final b:Lo/eb;

.field public final c:Landroid/content/res/ColorStateList;

.field public final d:Lo/Ae;

.field public final e:Lo/k3;

.field public final f:F

.field public final g:Z

.field public h:I

.field public i:Lo/Fh;

.field public j:Z

.field public final k:F

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/lang/ref/WeakReference;

.field public q:Ljava/lang/ref/WeakReference;

.field public final r:I

.field public s:Landroid/view/VelocityTracker;

.field public t:I

.field public final u:Ljava/util/LinkedHashSet;

.field public final v:Lo/i3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/k3;

    invoke-direct {v0, p0}, Lo/k3;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Lo/k3;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const v0, 0x3dcccccd    # 0.1f

    .line 5
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:F

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:I

    .line 7
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/util/LinkedHashSet;

    .line 8
    new-instance v0, Lo/i3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lo/i3;-><init>(Lo/W4;I)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lo/i3;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v1, Lo/k3;

    invoke-direct {v1, p0}, Lo/k3;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Lo/k3;

    .line 11
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    const/4 v1, 0x5

    .line 12
    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const v2, 0x3dcccccd    # 0.1f

    .line 13
    iput v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:F

    const/4 v2, -0x1

    .line 14
    iput v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:I

    .line 15
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/util/LinkedHashSet;

    .line 16
    new-instance v3, Lo/i3;

    invoke-direct {v3, p0, v0}, Lo/i3;-><init>(Lo/W4;I)V

    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lo/i3;

    .line 17
    sget-object v3, Lo/fd;->w:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x3

    .line 18
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 19
    invoke-static {p1, v3, v4}, Lo/Ha;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v4, 0x6

    .line 20
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    const v5, 0x7f0f03cc

    .line 21
    invoke-static {p1, p2, v4, v5}, Lo/Ae;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lo/ze;

    move-result-object p2

    invoke-virtual {p2}, Lo/ze;->a()Lo/Ae;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->d:Lo/Ae;

    .line 22
    :cond_1
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 23
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 24
    iput p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:I

    .line 25
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 26
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    :cond_2
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    .line 28
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eq p2, v2, :cond_3

    .line 30
    sget-object p2, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 31
    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 33
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->d:Lo/Ae;

    if-nez p2, :cond_4

    goto :goto_0

    .line 34
    :cond_4
    new-instance v1, Lo/eb;

    invoke-direct {v1, p2}, Lo/eb;-><init>(Lo/Ae;)V

    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:Lo/eb;

    .line 35
    invoke-virtual {v1, p1}, Lo/eb;->i(Landroid/content/Context;)V

    .line 36
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_5

    .line 37
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:Lo/eb;

    invoke-virtual {v1, p2}, Lo/eb;->k(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 38
    :cond_5
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010031

    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 40
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:Lo/eb;

    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, p2}, Lo/eb;->setTint(I)V

    :goto_0
    const/4 p2, 0x2

    const/high16 v1, -0x40800000    # -1.0f

    .line 41
    invoke-virtual {v3, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->f:F

    const/4 p2, 0x4

    .line 42
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 43
    iput-boolean p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    .line 44
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    return-void
.end method


# virtual methods
.method public final c(Lo/Z4;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lo/Fh;

    .line 6
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lo/Fh;

    .line 6
    return-void
.end method

.method public final f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 9
    invoke-static {p2}, Lo/Dh;->d(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_7

    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    .line 17
    if-eqz p1, :cond_7

    .line 19
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 25
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 27
    if-eqz p2, :cond_1

    .line 29
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    .line 32
    const/4 p2, 0x0

    .line 33
    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 35
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 37
    if-nez p2, :cond_2

    .line 39
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 42
    move-result-object p2

    .line 43
    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 45
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 47
    invoke-virtual {p2, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 50
    if-eqz p1, :cond_4

    .line 52
    if-eq p1, v0, :cond_3

    .line 54
    const/4 p2, 0x3

    .line 55
    if-eq p1, p2, :cond_3

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    .line 60
    if-eqz p1, :cond_5

    .line 62
    iput-boolean v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    .line 64
    return v1

    .line 65
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 68
    move-result p1

    .line 69
    float-to-int p1, p1

    .line 70
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t:I

    .line 72
    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    .line 74
    if-nez p1, :cond_6

    .line 76
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lo/Fh;

    .line 78
    if-eqz p1, :cond_6

    .line 80
    invoke-virtual {p1, p3}, Lo/Fh;->p(Landroid/view/MotionEvent;)Z

    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_6

    .line 86
    goto :goto_1

    .line 87
    :cond_6
    move v0, v1

    .line 88
    :goto_1
    return v0

    .line 89
    :cond_7
    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    .line 91
    return v1
.end method

.method public final g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:Lo/eb;

    .line 5
    sget-object v3, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 19
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 22
    :cond_0
    iget-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 24
    const/4 v4, 0x5

    .line 25
    const/4 v5, 0x0

    .line 26
    if-nez v3, :cond_7

    .line 28
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 30
    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 33
    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v3

    .line 39
    new-instance v6, Landroid/view/animation/PathInterpolator;

    .line 41
    const/high16 v7, 0x3f800000    # 1.0f

    .line 43
    invoke-direct {v6, v5, v5, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 46
    const v7, 0x7f030342

    .line 49
    invoke-static {v3, v7, v6}, Lo/Ha;->p0(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;

    .line 52
    const v6, 0x7f030331

    .line 55
    const/16 v7, 0x12c

    .line 57
    invoke-static {v3, v6, v7}, Lo/Ha;->o0(Landroid/content/Context;II)I

    .line 60
    const v6, 0x7f030336

    .line 63
    const/16 v7, 0x96

    .line 65
    invoke-static {v3, v6, v7}, Lo/Ha;->o0(Landroid/content/Context;II)I

    .line 68
    const v6, 0x7f030335

    .line 71
    const/16 v7, 0x64

    .line 73
    invoke-static {v3, v6, v7}, Lo/Ha;->o0(Landroid/content/Context;II)I

    .line 76
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object v3

    .line 80
    const v6, 0x7f0600b1

    .line 83
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 86
    const v6, 0x7f0600b0

    .line 89
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 92
    const v6, 0x7f0600b2

    .line 95
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 98
    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->f:F

    .line 105
    const/high16 v6, -0x40800000    # -1.0f

    .line 107
    cmpl-float v6, v3, v6

    .line 109
    if-nez v6, :cond_1

    .line 111
    invoke-static {p2}, Lo/vh;->e(Landroid/view/View;)F

    .line 114
    move-result v3

    .line 115
    :cond_1
    invoke-virtual {v2, v3}, Lo/eb;->j(F)V

    .line 118
    goto :goto_0

    .line 119
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Landroid/content/res/ColorStateList;

    .line 121
    if-eqz v3, :cond_3

    .line 123
    invoke-static {p2, v3}, Lo/vh;->i(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 126
    :cond_3
    :goto_0
    iget v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 128
    if-ne v3, v4, :cond_4

    .line 130
    const/4 v3, 0x4

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    move v3, v0

    .line 133
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 136
    move-result v6

    .line 137
    if-eq v6, v3, :cond_5

    .line 139
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u()V

    .line 145
    invoke-virtual {p2}, Landroid/view/View;->getImportantForAccessibility()I

    .line 148
    move-result v3

    .line 149
    if-nez v3, :cond_6

    .line 151
    invoke-virtual {p2, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 154
    :cond_6
    invoke-static {p2}, Lo/Dh;->d(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 157
    move-result-object v3

    .line 158
    if-nez v3, :cond_7

    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 163
    move-result-object v3

    .line 164
    const v6, 0x7f0e00ae

    .line 167
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 170
    move-result-object v3

    .line 171
    invoke-static {p2, v3}, Lo/Dh;->m(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 174
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Lo/Z4;

    .line 180
    iget v3, v3, Lo/Z4;->c:I

    .line 182
    invoke-static {v3, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 185
    move-result v3

    .line 186
    const/4 v6, 0x3

    .line 187
    if-ne v3, v6, :cond_8

    .line 189
    move v3, v1

    .line 190
    goto :goto_2

    .line 191
    :cond_8
    move v3, v0

    .line 192
    :goto_2
    iget-object v7, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lo/Ha;

    .line 194
    if-eqz v7, :cond_9

    .line 196
    invoke-virtual {v7}, Lo/Ha;->T()I

    .line 199
    move-result v7

    .line 200
    if-eq v7, v3, :cond_f

    .line 202
    :cond_9
    iget-object v7, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->d:Lo/Ae;

    .line 204
    const/4 v8, 0x0

    .line 205
    if-nez v3, :cond_c

    .line 207
    new-instance v3, Lo/H9;

    .line 209
    invoke-direct {v3, p0, v1}, Lo/H9;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    .line 212
    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lo/Ha;

    .line 214
    if-eqz v7, :cond_f

    .line 216
    iget-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 218
    if-eqz v3, :cond_a

    .line 220
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 223
    move-result-object v3

    .line 224
    check-cast v3, Landroid/view/View;

    .line 226
    if-eqz v3, :cond_a

    .line 228
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 231
    move-result-object v9

    .line 232
    instance-of v9, v9, Lo/Z4;

    .line 234
    if-eqz v9, :cond_a

    .line 236
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 239
    move-result-object v3

    .line 240
    move-object v8, v3

    .line 241
    check-cast v8, Lo/Z4;

    .line 243
    :cond_a
    if-eqz v8, :cond_b

    .line 245
    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 247
    if-lez v3, :cond_b

    .line 249
    goto :goto_3

    .line 250
    :cond_b
    invoke-virtual {v7}, Lo/Ae;->e()Lo/ze;

    .line 253
    move-result-object v3

    .line 254
    new-instance v7, Lo/g;

    .line 256
    invoke-direct {v7, v5}, Lo/g;-><init>(F)V

    .line 259
    iput-object v7, v3, Lo/ze;->f:Lo/d5;

    .line 261
    new-instance v7, Lo/g;

    .line 263
    invoke-direct {v7, v5}, Lo/g;-><init>(F)V

    .line 266
    iput-object v7, v3, Lo/ze;->g:Lo/d5;

    .line 268
    invoke-virtual {v3}, Lo/ze;->a()Lo/Ae;

    .line 271
    move-result-object v3

    .line 272
    if-eqz v2, :cond_f

    .line 274
    invoke-virtual {v2, v3}, Lo/eb;->setShapeAppearanceModel(Lo/Ae;)V

    .line 277
    goto :goto_3

    .line 278
    :cond_c
    if-ne v3, v1, :cond_18

    .line 280
    new-instance v3, Lo/H9;

    .line 282
    invoke-direct {v3, p0, v0}, Lo/H9;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    .line 285
    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lo/Ha;

    .line 287
    if-eqz v7, :cond_f

    .line 289
    iget-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 291
    if-eqz v3, :cond_d

    .line 293
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 296
    move-result-object v3

    .line 297
    check-cast v3, Landroid/view/View;

    .line 299
    if-eqz v3, :cond_d

    .line 301
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 304
    move-result-object v9

    .line 305
    instance-of v9, v9, Lo/Z4;

    .line 307
    if-eqz v9, :cond_d

    .line 309
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 312
    move-result-object v3

    .line 313
    move-object v8, v3

    .line 314
    check-cast v8, Lo/Z4;

    .line 316
    :cond_d
    if-eqz v8, :cond_e

    .line 318
    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 320
    if-lez v3, :cond_e

    .line 322
    goto :goto_3

    .line 323
    :cond_e
    invoke-virtual {v7}, Lo/Ae;->e()Lo/ze;

    .line 326
    move-result-object v3

    .line 327
    new-instance v7, Lo/g;

    .line 329
    invoke-direct {v7, v5}, Lo/g;-><init>(F)V

    .line 332
    iput-object v7, v3, Lo/ze;->e:Lo/d5;

    .line 334
    new-instance v7, Lo/g;

    .line 336
    invoke-direct {v7, v5}, Lo/g;-><init>(F)V

    .line 339
    iput-object v7, v3, Lo/ze;->h:Lo/d5;

    .line 341
    invoke-virtual {v3}, Lo/ze;->a()Lo/Ae;

    .line 344
    move-result-object v3

    .line 345
    if-eqz v2, :cond_f

    .line 347
    invoke-virtual {v2, v3}, Lo/eb;->setShapeAppearanceModel(Lo/Ae;)V

    .line 350
    :cond_f
    :goto_3
    iget-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lo/Fh;

    .line 352
    if-nez v2, :cond_10

    .line 354
    new-instance v2, Lo/Fh;

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 359
    move-result-object v3

    .line 360
    iget-object v5, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Lo/i3;

    .line 362
    invoke-direct {v2, v3, p1, v5}, Lo/Fh;-><init>(Landroid/content/Context;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/Ng;)V

    .line 365
    iput-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lo/Fh;

    .line 367
    :cond_10
    iget-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lo/Ha;

    .line 369
    invoke-virtual {v2, p2}, Lo/Ha;->O(Landroid/view/View;)I

    .line 372
    move-result v2

    .line 373
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(Landroid/view/View;I)V

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 379
    move-result p3

    .line 380
    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    .line 382
    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lo/Ha;

    .line 384
    invoke-virtual {p3, p1}, Lo/Ha;->S(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I

    .line 387
    move-result p3

    .line 388
    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:I

    .line 390
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 393
    move-result p3

    .line 394
    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    .line 396
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 399
    move-result-object p3

    .line 400
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 402
    if-eqz p3, :cond_11

    .line 404
    iget-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lo/Ha;

    .line 406
    invoke-virtual {v3, p3}, Lo/Ha;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 409
    move-result p3

    .line 410
    goto :goto_4

    .line 411
    :cond_11
    move p3, v0

    .line 412
    :goto_4
    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    .line 414
    iget p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 416
    if-eq p3, v1, :cond_13

    .line 418
    const/4 v3, 0x2

    .line 419
    if-eq p3, v3, :cond_13

    .line 421
    if-eq p3, v6, :cond_14

    .line 423
    if-ne p3, v4, :cond_12

    .line 425
    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lo/Ha;

    .line 427
    invoke-virtual {p3}, Lo/Ha;->J()I

    .line 430
    move-result v0

    .line 431
    goto :goto_5

    .line 432
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 434
    new-instance p2, Ljava/lang/StringBuilder;

    .line 436
    const-string p3, "Unexpected value: "

    .line 438
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    iget p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 443
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    move-result-object p2

    .line 450
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 453
    throw p1

    .line 454
    :cond_13
    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lo/Ha;

    .line 456
    invoke-virtual {p3, p2}, Lo/Ha;->O(Landroid/view/View;)I

    .line 459
    move-result p3

    .line 460
    sub-int v0, v2, p3

    .line 462
    :cond_14
    :goto_5
    invoke-virtual {p2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 465
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    .line 467
    if-nez p2, :cond_15

    .line 469
    iget p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:I

    .line 471
    const/4 p3, -0x1

    .line 472
    if-eq p2, p3, :cond_15

    .line 474
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 477
    move-result-object p1

    .line 478
    if-eqz p1, :cond_15

    .line 480
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 482
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 485
    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    .line 487
    :cond_15
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/util/LinkedHashSet;

    .line 489
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 492
    move-result-object p1

    .line 493
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 496
    move-result p2

    .line 497
    if-eqz p2, :cond_17

    .line 499
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 502
    move-result-object p2

    .line 503
    if-nez p2, :cond_16

    .line 505
    goto :goto_6

    .line 506
    :cond_16
    new-instance p1, Ljava/lang/ClassCastException;

    .line 508
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 511
    throw p1

    .line 512
    :cond_17
    return v1

    .line 513
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 515
    const-string p2, "Invalid sheet edge position value: "

    .line 517
    const-string p3, ". Must be 0 or 1."

    .line 519
    invoke-static {p2, v3, p3}, Lo/o5;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 522
    move-result-object p2

    .line 523
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 526
    throw p1
.end method

.method public final h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 14
    move-result v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 18
    add-int/2addr v2, v1

    .line 19
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 21
    add-int/2addr v2, v1

    .line 22
    add-int/2addr v2, p4

    .line 23
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 25
    invoke-static {p3, v2, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 28
    move-result p3

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 32
    move-result p4

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 36
    move-result p1

    .line 37
    add-int/2addr p1, p4

    .line 38
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 40
    add-int/2addr p1, p4

    .line 41
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 43
    add-int/2addr p1, p4

    .line 44
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 46
    invoke-static {p5, p1, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 49
    move-result p1

    .line 50
    invoke-virtual {p2, p3, p1}, Landroid/view/View;->measure(II)V

    .line 53
    const/4 p1, 0x1

    .line 54
    return p1
.end method

.method public final m(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    check-cast p2, Lo/Pe;

    .line 3
    const/4 p1, 0x1

    .line 4
    iget p2, p2, Lo/Pe;->c:I

    .line 6
    if-eq p2, p1, :cond_0

    .line 8
    const/4 p1, 0x2

    .line 9
    if-ne p2, p1, :cond_1

    .line 11
    :cond_0
    const/4 p2, 0x5

    .line 12
    :cond_1
    iput p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 14
    return-void
.end method

.method public final n(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    .line 1
    new-instance p1, Lo/Pe;

    .line 3
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 5
    invoke-direct {p1, v0, p0}, Lo/Pe;-><init>(Landroid/view/AbsSavedState;Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    .line 8
    return-object p1
.end method

.method public final q(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_1

    .line 18
    if-nez v0, :cond_1

    .line 20
    return v2

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 27
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lo/Fh;

    .line 29
    invoke-virtual {v1, p2}, Lo/Fh;->j(Landroid/view/MotionEvent;)V

    .line 32
    :cond_2
    if-nez v0, :cond_3

    .line 34
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 36
    if-eqz v1, :cond_3

    .line 38
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 41
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 44
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 46
    if-nez v1, :cond_4

    .line 48
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 54
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Landroid/view/VelocityTracker;

    .line 56
    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s()Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_6

    .line 65
    const/4 v1, 0x2

    .line 66
    if-ne v0, v1, :cond_6

    .line 68
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    .line 70
    if-nez v0, :cond_6

    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s()Z

    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_5

    .line 78
    goto :goto_0

    .line 79
    :cond_5
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t:I

    .line 81
    int-to-float v0, v0

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 85
    move-result v1

    .line 86
    sub-float/2addr v0, v1

    .line 87
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 90
    move-result v0

    .line 91
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lo/Fh;

    .line 93
    iget v3, v1, Lo/Fh;->b:I

    .line 95
    int-to-float v3, v3

    .line 96
    cmpl-float v0, v0, v3

    .line 98
    if-lez v0, :cond_6

    .line 100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 103
    move-result v0

    .line 104
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 107
    move-result p2

    .line 108
    invoke-virtual {v1, p1, p2}, Lo/Fh;->b(Landroid/view/View;I)V

    .line 111
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:Z

    .line 113
    xor-int/2addr p1, v2

    .line 114
    return p1
.end method

.method public final r(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 8
    const/4 v0, 0x3

    .line 9
    const/4 v1, 0x5

    .line 10
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 12
    if-nez p1, :cond_1

    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/view/View;

    .line 21
    if-nez p1, :cond_2

    .line 23
    return-void

    .line 24
    :cond_2
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 26
    if-ne v0, v1, :cond_3

    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_3
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 34
    move-result v1

    .line 35
    if-eq v1, v0, :cond_4

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/util/LinkedHashSet;

    .line 42
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_5

    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u()V

    .line 55
    return-void

    .line 56
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    new-instance p1, Ljava/lang/ClassCastException;

    .line 65
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 68
    throw p1
.end method

.method public final s()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lo/Fh;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 10
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 12
    if-ne v0, v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :cond_1
    :goto_0
    return v1
.end method

.method public final t(Landroid/view/View;IZ)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p2, v0, :cond_1

    .line 4
    const/4 v0, 0x5

    .line 5
    if-ne p2, v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lo/Ha;

    .line 9
    invoke-virtual {v0}, Lo/Ha;->J()I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string p3, "Invalid state to get outer edge offset: "

    .line 18
    invoke-static {p2, p3}, Lo/jf;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lo/Ha;

    .line 28
    invoke-virtual {v0}, Lo/Ha;->I()I

    .line 31
    move-result v0

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lo/Fh;

    .line 34
    if-eqz v1, :cond_4

    .line 36
    if-eqz p3, :cond_2

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 41
    move-result p1

    .line 42
    invoke-virtual {v1, v0, p1}, Lo/Fh;->o(II)Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_4

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 52
    move-result p3

    .line 53
    iput-object p1, v1, Lo/Fh;->r:Landroid/view/View;

    .line 55
    const/4 p1, -0x1

    .line 56
    iput p1, v1, Lo/Fh;->c:I

    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-virtual {v1, v0, p3, p1, p1}, Lo/Fh;->h(IIII)Z

    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_3

    .line 65
    iget p3, v1, Lo/Fh;->a:I

    .line 67
    if-nez p3, :cond_3

    .line 69
    iget-object p3, v1, Lo/Fh;->r:Landroid/view/View;

    .line 71
    if-eqz p3, :cond_3

    .line 73
    const/4 p3, 0x0

    .line 74
    iput-object p3, v1, Lo/Fh;->r:Landroid/view/View;

    .line 76
    :cond_3
    if-eqz p1, :cond_4

    .line 78
    :goto_1
    const/4 p1, 0x2

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r(I)V

    .line 82
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Lo/k3;

    .line 84
    invoke-virtual {p1, p2}, Lo/k3;->a(I)V

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r(I)V

    .line 91
    :goto_2
    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/View;

    .line 12
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 15
    :cond_1
    const/high16 v1, 0x40000

    .line 17
    invoke-static {v0, v1}, Lo/Dh;->i(Landroid/view/View;I)V

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lo/Dh;->g(Landroid/view/View;I)V

    .line 24
    const/high16 v2, 0x100000

    .line 26
    invoke-static {v0, v2}, Lo/Dh;->i(Landroid/view/View;I)V

    .line 29
    invoke-static {v0, v1}, Lo/Dh;->g(Landroid/view/View;I)V

    .line 32
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 34
    const/4 v2, 0x5

    .line 35
    if-eq v1, v2, :cond_2

    .line 37
    sget-object v1, Lo/y;->j:Lo/y;

    .line 39
    new-instance v3, Lo/Oe;

    .line 41
    invoke-direct {v3, p0, v2}, Lo/Oe;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    .line 44
    invoke-static {v0, v1, v3}, Lo/Dh;->j(Landroid/view/View;Lo/y;Lo/N;)V

    .line 47
    :cond_2
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 49
    const/4 v2, 0x3

    .line 50
    if-eq v1, v2, :cond_3

    .line 52
    sget-object v1, Lo/y;->h:Lo/y;

    .line 54
    new-instance v3, Lo/Oe;

    .line 56
    invoke-direct {v3, p0, v2}, Lo/Oe;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    .line 59
    invoke-static {v0, v1, v3}, Lo/Dh;->j(Landroid/view/View;Lo/y;Lo/N;)V

    .line 62
    :cond_3
    return-void
.end method
