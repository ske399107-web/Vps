.class public final Lo/si;
.super Lo/x9;
.source "SourceFile"

# interfaces
.implements Lo/T;


# static fields
.field public static final s0:Landroid/view/animation/AccelerateInterpolator;

.field public static final t0:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public U:Landroid/content/Context;

.field public V:Landroid/content/Context;

.field public W:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public X:Landroidx/appcompat/widget/ActionBarContainer;

.field public Y:Lo/s5;

.field public Z:Landroidx/appcompat/widget/ActionBarContextView;

.field public final a0:Landroid/view/View;

.field public b0:Z

.field public c0:Lo/ri;

.field public d0:Lo/ri;

.field public e0:Lo/H1;

.field public f0:Z

.field public final g0:Ljava/util/ArrayList;

.field public h0:I

.field public i0:Z

.field public j0:Z

.field public k0:Z

.field public l0:Z

.field public m0:Lo/Qh;

.field public n0:Z

.field public o0:Z

.field public final p0:Lo/qi;

.field public final q0:Lo/qi;

.field public final r0:Lo/Oh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 3
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 6
    sput-object v0, Lo/si;->s0:Landroid/view/animation/AccelerateInterpolator;

    .line 8
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 10
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 13
    sput-object v0, Lo/si;->t0:Landroid/view/animation/DecelerateInterpolator;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/si;->g0:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lo/si;->h0:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lo/si;->i0:Z

    .line 6
    iput-boolean v0, p0, Lo/si;->l0:Z

    .line 7
    new-instance v0, Lo/qi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/qi;-><init>(Lo/si;I)V

    iput-object v0, p0, Lo/si;->p0:Lo/qi;

    .line 8
    new-instance v0, Lo/qi;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lo/qi;-><init>(Lo/si;I)V

    iput-object v0, p0, Lo/si;->q0:Lo/qi;

    .line 9
    new-instance v0, Lo/Oh;

    invoke-direct {v0, p0}, Lo/Oh;-><init>(Lo/si;)V

    iput-object v0, p0, Lo/si;->r0:Lo/Oh;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lo/si;->s0(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/si;->a0:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/si;->g0:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lo/si;->h0:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lo/si;->i0:Z

    .line 19
    iput-boolean v0, p0, Lo/si;->l0:Z

    .line 20
    new-instance v0, Lo/qi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/qi;-><init>(Lo/si;I)V

    iput-object v0, p0, Lo/si;->p0:Lo/qi;

    .line 21
    new-instance v0, Lo/qi;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lo/qi;-><init>(Lo/si;I)V

    iput-object v0, p0, Lo/si;->q0:Lo/qi;

    .line 22
    new-instance v0, Lo/Oh;

    invoke-direct {v0, p0}, Lo/Oh;-><init>(Lo/si;)V

    iput-object v0, p0, Lo/si;->r0:Lo/Oh;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/si;->s0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final q0(Z)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 4
    iget-boolean v1, p0, Lo/si;->k0:Z

    .line 6
    if-nez v1, :cond_3

    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lo/si;->k0:Z

    .line 11
    iget-object v2, p0, Lo/si;->W:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 13
    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Lo/si;->v0(Z)V

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-boolean v1, p0, Lo/si;->k0:Z

    .line 24
    if-eqz v1, :cond_3

    .line 26
    iput-boolean v0, p0, Lo/si;->k0:Z

    .line 28
    iget-object v1, p0, Lo/si;->W:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 30
    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 35
    :cond_2
    invoke-virtual {p0, v0}, Lo/si;->v0(Z)V

    .line 38
    :cond_3
    :goto_0
    iget-object v1, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 40
    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    .line 43
    move-result v1

    .line 44
    const/16 v2, 0x8

    .line 46
    const/4 v3, 0x4

    .line 47
    if-eqz v1, :cond_7

    .line 49
    const-wide/16 v4, 0xc8

    .line 51
    const-wide/16 v6, 0x64

    .line 53
    if-eqz p1, :cond_4

    .line 55
    iget-object p1, p0, Lo/si;->Y:Lo/s5;

    .line 57
    check-cast p1, Lo/ig;

    .line 59
    iget-object v1, p1, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 61
    invoke-static {v1}, Lo/Dh;->a(Landroid/view/View;)Lo/Ph;

    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, v2}, Lo/Ph;->a(F)V

    .line 69
    invoke-virtual {v1, v6, v7}, Lo/Ph;->c(J)V

    .line 72
    new-instance v2, Lo/hg;

    .line 74
    invoke-direct {v2, p1, v3}, Lo/hg;-><init>(Lo/ig;I)V

    .line 77
    invoke-virtual {v1, v2}, Lo/Ph;->d(Lo/Rh;)V

    .line 80
    iget-object p1, p0, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 82
    invoke-virtual {p1, v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)Lo/Ph;

    .line 85
    move-result-object p1

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    iget-object p1, p0, Lo/si;->Y:Lo/s5;

    .line 89
    check-cast p1, Lo/ig;

    .line 91
    iget-object v1, p1, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 93
    invoke-static {v1}, Lo/Dh;->a(Landroid/view/View;)Lo/Ph;

    .line 96
    move-result-object v1

    .line 97
    const/high16 v3, 0x3f800000    # 1.0f

    .line 99
    invoke-virtual {v1, v3}, Lo/Ph;->a(F)V

    .line 102
    invoke-virtual {v1, v4, v5}, Lo/Ph;->c(J)V

    .line 105
    new-instance v3, Lo/hg;

    .line 107
    invoke-direct {v3, p1, v0}, Lo/hg;-><init>(Lo/ig;I)V

    .line 110
    invoke-virtual {v1, v3}, Lo/Ph;->d(Lo/Rh;)V

    .line 113
    iget-object p1, p0, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 115
    invoke-virtual {p1, v2, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)Lo/Ph;

    .line 118
    move-result-object p1

    .line 119
    move-object v8, v1

    .line 120
    move-object v1, p1

    .line 121
    move-object p1, v8

    .line 122
    :goto_1
    new-instance v0, Lo/Qh;

    .line 124
    invoke-direct {v0}, Lo/Qh;-><init>()V

    .line 127
    iget-object v2, v0, Lo/Qh;->a:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, v1, Lo/Ph;->a:Ljava/lang/ref/WeakReference;

    .line 134
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Landroid/view/View;

    .line 140
    if-eqz v1, :cond_5

    .line 142
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    .line 149
    move-result-wide v3

    .line 150
    goto :goto_2

    .line 151
    :cond_5
    const-wide/16 v3, 0x0

    .line 153
    :goto_2
    iget-object v1, p1, Lo/Ph;->a:Ljava/lang/ref/WeakReference;

    .line 155
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Landroid/view/View;

    .line 161
    if-eqz v1, :cond_6

    .line 163
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 170
    :cond_6
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v0}, Lo/Qh;->b()V

    .line 176
    goto :goto_3

    .line 177
    :cond_7
    if-eqz p1, :cond_8

    .line 179
    iget-object p1, p0, Lo/si;->Y:Lo/s5;

    .line 181
    check-cast p1, Lo/ig;

    .line 183
    iget-object p1, p1, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 185
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object p1, p0, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 190
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 193
    goto :goto_3

    .line 194
    :cond_8
    iget-object p1, p0, Lo/si;->Y:Lo/s5;

    .line 196
    check-cast p1, Lo/ig;

    .line 198
    iget-object p1, p1, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 205
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 208
    :goto_3
    return-void
.end method

.method public final r0()Landroid/content/Context;
    .locals 4

    .line 1
    iget-object v0, p0, Lo/si;->V:Landroid/content/Context;

    .line 3
    if-nez v0, :cond_1

    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 10
    iget-object v1, p0, Lo/si;->U:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f03000c

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 23
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 25
    if-eqz v0, :cond_0

    .line 27
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 29
    iget-object v2, p0, Lo/si;->U:Landroid/content/Context;

    .line 31
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object v1, p0, Lo/si;->V:Landroid/content/Context;

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lo/si;->U:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lo/si;->V:Landroid/content/Context;

    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/si;->V:Landroid/content/Context;

    .line 43
    return-object v0
.end method

.method public final s0(Landroid/view/View;)V
    .locals 6

    .line 1
    const v0, 0x7f080094

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 10
    iput-object v0, p0, Lo/si;->W:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lo/T;)V

    .line 17
    :cond_0
    const v0, 0x7f080034

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Lo/s5;

    .line 26
    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lo/s5;

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    .line 33
    if-eqz v1, :cond_8

    .line 35
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Lo/s5;

    .line 40
    move-result-object v0

    .line 41
    :goto_0
    iput-object v0, p0, Lo/si;->Y:Lo/s5;

    .line 43
    const v0, 0x7f08003c

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    .line 52
    iput-object v0, p0, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 54
    const v0, 0x7f080036

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    .line 63
    iput-object p1, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 65
    iget-object v0, p0, Lo/si;->Y:Lo/s5;

    .line 67
    if-eqz v0, :cond_7

    .line 69
    iget-object v1, p0, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 71
    if-eqz v1, :cond_7

    .line 73
    if-eqz p1, :cond_7

    .line 75
    check-cast v0, Lo/ig;

    .line 77
    iget-object p1, v0, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lo/si;->U:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lo/si;->Y:Lo/s5;

    .line 87
    check-cast v0, Lo/ig;

    .line 89
    iget v0, v0, Lo/ig;->b:I

    .line 91
    and-int/lit8 v0, v0, 0x4

    .line 93
    const/4 v1, 0x1

    .line 94
    const/4 v2, 0x0

    .line 95
    if-eqz v0, :cond_2

    .line 97
    move v0, v1

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move v0, v2

    .line 100
    :goto_1
    if-eqz v0, :cond_3

    .line 102
    iput-boolean v1, p0, Lo/si;->b0:Z

    .line 104
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 107
    move-result-object v3

    .line 108
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 110
    const/16 v4, 0xe

    .line 112
    iget-object v0, p0, Lo/si;->Y:Lo/s5;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 120
    move-result-object p1

    .line 121
    const/high16 v0, 0x7f040000

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0, p1}, Lo/si;->u0(Z)V

    .line 130
    iget-object p1, p0, Lo/si;->U:Landroid/content/Context;

    .line 132
    sget-object v0, Lo/gd;->a:[I

    .line 134
    const v3, 0x7f030007

    .line 137
    const/4 v5, 0x0

    .line 138
    invoke-virtual {p1, v5, v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_5

    .line 148
    iget-object v0, p0, Lo/si;->W:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 150
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Z

    .line 152
    if-eqz v3, :cond_4

    .line 154
    iput-boolean v1, p0, Lo/si;->o0:Z

    .line 156
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 159
    goto :goto_2

    .line 160
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 162
    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    .line 164
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    throw p1

    .line 168
    :cond_5
    :goto_2
    const/16 v0, 0xc

    .line 170
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_6

    .line 176
    int-to-float v0, v0

    .line 177
    iget-object v1, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 179
    sget-object v2, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 181
    invoke-static {v1, v0}, Lo/vh;->k(Landroid/view/View;F)V

    .line 184
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    return-void

    .line 188
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 190
    const-class v0, Lo/si;

    .line 192
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    const-string v1, " can only be used with a compatible window decor layout"

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    move-result-object v0

    .line 202
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 205
    throw p1

    .line 206
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 208
    if-eqz v0, :cond_9

    .line 210
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 217
    move-result-object v0

    .line 218
    goto :goto_3

    .line 219
    :cond_9
    const-string v0, "null"

    .line 221
    :goto_3
    const-string v1, "Can\'t make a decor toolbar out of "

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    move-result-object v0

    .line 227
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 230
    throw p1
.end method

.method public final t0(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lo/si;->b0:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    const/4 v0, 0x4

    .line 6
    if-eqz p1, :cond_0

    .line 8
    move p1, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lo/si;->Y:Lo/s5;

    .line 13
    check-cast v1, Lo/ig;

    .line 15
    iget v2, v1, Lo/ig;->b:I

    .line 17
    const/4 v3, 0x1

    .line 18
    iput-boolean v3, p0, Lo/si;->b0:Z

    .line 20
    and-int/2addr p1, v0

    .line 21
    and-int/lit8 v0, v2, -0x5

    .line 23
    or-int/2addr p1, v0

    .line 24
    invoke-virtual {v1, p1}, Lo/ig;->a(I)V

    .line 27
    :cond_1
    return-void
.end method

.method public final u0(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lo/si;->Y:Lo/s5;

    .line 6
    check-cast p1, Lo/ig;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object p1, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lo/ve;)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 19
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lo/ve;)V

    .line 22
    iget-object p1, p0, Lo/si;->Y:Lo/s5;

    .line 24
    check-cast p1, Lo/ig;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    :goto_0
    iget-object p1, p0, Lo/si;->Y:Lo/s5;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    iget-object p1, p0, Lo/si;->Y:Lo/s5;

    .line 36
    check-cast p1, Lo/ig;

    .line 38
    iget-object p1, p1, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    .line 44
    iget-object p1, p0, Lo/si;->W:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 46
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 49
    return-void
.end method

.method public final v0(Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lo/si;->j0:Z

    .line 3
    iget-boolean v1, p0, Lo/si;->k0:Z

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_1

    .line 9
    :cond_0
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    if-eqz v0, :cond_0

    .line 13
    move v0, v3

    .line 14
    :goto_0
    iget-object v1, p0, Lo/si;->a0:Landroid/view/View;

    .line 16
    const-wide/16 v4, 0xfa

    .line 18
    const/4 v6, 0x0

    .line 19
    const/high16 v7, 0x3f800000    # 1.0f

    .line 21
    iget-object v8, p0, Lo/si;->r0:Lo/Oh;

    .line 23
    if-eqz v0, :cond_e

    .line 25
    iget-boolean v0, p0, Lo/si;->l0:Z

    .line 27
    if-nez v0, :cond_1a

    .line 29
    iput-boolean v2, p0, Lo/si;->l0:Z

    .line 31
    iget-object v0, p0, Lo/si;->m0:Lo/Qh;

    .line 33
    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {v0}, Lo/Qh;->a()V

    .line 38
    :cond_2
    iget-object v0, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 40
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 43
    iget v0, p0, Lo/si;->h0:I

    .line 45
    iget-object v9, p0, Lo/si;->q0:Lo/qi;

    .line 47
    const/4 v10, 0x0

    .line 48
    if-nez v0, :cond_c

    .line 50
    iget-boolean v0, p0, Lo/si;->n0:Z

    .line 52
    if-nez v0, :cond_3

    .line 54
    if-eqz p1, :cond_c

    .line 56
    :cond_3
    iget-object v0, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 58
    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 61
    iget-object v0, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 66
    move-result v0

    .line 67
    neg-int v0, v0

    .line 68
    int-to-float v0, v0

    .line 69
    if-eqz p1, :cond_4

    .line 71
    filled-new-array {v3, v3}, [I

    .line 74
    move-result-object p1

    .line 75
    iget-object v3, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 77
    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 80
    aget p1, p1, v2

    .line 82
    int-to-float p1, p1

    .line 83
    sub-float/2addr v0, p1

    .line 84
    :cond_4
    iget-object p1, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 89
    new-instance p1, Lo/Qh;

    .line 91
    invoke-direct {p1}, Lo/Qh;-><init>()V

    .line 94
    iget-object v2, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 96
    invoke-static {v2}, Lo/Dh;->a(Landroid/view/View;)Lo/Ph;

    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2, v10}, Lo/Ph;->e(F)V

    .line 103
    iget-object v3, v2, Lo/Ph;->a:Ljava/lang/ref/WeakReference;

    .line 105
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Landroid/view/View;

    .line 111
    if-eqz v3, :cond_6

    .line 113
    if-eqz v8, :cond_5

    .line 115
    new-instance v6, Lo/o6;

    .line 117
    invoke-direct {v6, v8, v3}, Lo/o6;-><init>(Lo/Oh;Landroid/view/View;)V

    .line 120
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 127
    :cond_6
    iget-boolean v3, p1, Lo/Qh;->e:Z

    .line 129
    iget-object v6, p1, Lo/Qh;->a:Ljava/util/ArrayList;

    .line 131
    if-nez v3, :cond_7

    .line 133
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_7
    iget-boolean v2, p0, Lo/si;->i0:Z

    .line 138
    if-eqz v2, :cond_8

    .line 140
    if-eqz v1, :cond_8

    .line 142
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 145
    invoke-static {v1}, Lo/Dh;->a(Landroid/view/View;)Lo/Ph;

    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0, v10}, Lo/Ph;->e(F)V

    .line 152
    iget-boolean v1, p1, Lo/Qh;->e:Z

    .line 154
    if-nez v1, :cond_8

    .line 156
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_8
    sget-object v0, Lo/si;->t0:Landroid/view/animation/DecelerateInterpolator;

    .line 161
    iget-boolean v1, p1, Lo/Qh;->e:Z

    .line 163
    if-nez v1, :cond_9

    .line 165
    iput-object v0, p1, Lo/Qh;->c:Landroid/view/animation/BaseInterpolator;

    .line 167
    :cond_9
    if-nez v1, :cond_a

    .line 169
    iput-wide v4, p1, Lo/Qh;->b:J

    .line 171
    :cond_a
    if-nez v1, :cond_b

    .line 173
    iput-object v9, p1, Lo/Qh;->d:Lo/Ng;

    .line 175
    :cond_b
    iput-object p1, p0, Lo/si;->m0:Lo/Qh;

    .line 177
    invoke-virtual {p1}, Lo/Qh;->b()V

    .line 180
    goto :goto_1

    .line 181
    :cond_c
    iget-object p1, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 183
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 186
    iget-object p1, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 188
    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 191
    iget-boolean p1, p0, Lo/si;->i0:Z

    .line 193
    if-eqz p1, :cond_d

    .line 195
    if-eqz v1, :cond_d

    .line 197
    invoke-virtual {v1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 200
    :cond_d
    invoke-virtual {v9}, Lo/qi;->a()V

    .line 203
    :goto_1
    iget-object p1, p0, Lo/si;->W:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 205
    if-eqz p1, :cond_1a

    .line 207
    sget-object v0, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 209
    invoke-static {p1}, Lo/th;->c(Landroid/view/View;)V

    .line 212
    goto/16 :goto_2

    .line 214
    :cond_e
    iget-boolean v0, p0, Lo/si;->l0:Z

    .line 216
    if-eqz v0, :cond_1a

    .line 218
    iput-boolean v3, p0, Lo/si;->l0:Z

    .line 220
    iget-object v0, p0, Lo/si;->m0:Lo/Qh;

    .line 222
    if-eqz v0, :cond_f

    .line 224
    invoke-virtual {v0}, Lo/Qh;->a()V

    .line 227
    :cond_f
    iget v0, p0, Lo/si;->h0:I

    .line 229
    iget-object v9, p0, Lo/si;->p0:Lo/qi;

    .line 231
    if-nez v0, :cond_19

    .line 233
    iget-boolean v0, p0, Lo/si;->n0:Z

    .line 235
    if-nez v0, :cond_10

    .line 237
    if-eqz p1, :cond_19

    .line 239
    :cond_10
    iget-object v0, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 241
    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 244
    iget-object v0, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 246
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 249
    new-instance v0, Lo/Qh;

    .line 251
    invoke-direct {v0}, Lo/Qh;-><init>()V

    .line 254
    iget-object v7, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 256
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 259
    move-result v7

    .line 260
    neg-int v7, v7

    .line 261
    int-to-float v7, v7

    .line 262
    if-eqz p1, :cond_11

    .line 264
    filled-new-array {v3, v3}, [I

    .line 267
    move-result-object p1

    .line 268
    iget-object v3, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 270
    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 273
    aget p1, p1, v2

    .line 275
    int-to-float p1, p1

    .line 276
    sub-float/2addr v7, p1

    .line 277
    :cond_11
    iget-object p1, p0, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 279
    invoke-static {p1}, Lo/Dh;->a(Landroid/view/View;)Lo/Ph;

    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p1, v7}, Lo/Ph;->e(F)V

    .line 286
    iget-object v2, p1, Lo/Ph;->a:Ljava/lang/ref/WeakReference;

    .line 288
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 291
    move-result-object v2

    .line 292
    check-cast v2, Landroid/view/View;

    .line 294
    if-eqz v2, :cond_13

    .line 296
    if-eqz v8, :cond_12

    .line 298
    new-instance v6, Lo/o6;

    .line 300
    invoke-direct {v6, v8, v2}, Lo/o6;-><init>(Lo/Oh;Landroid/view/View;)V

    .line 303
    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 310
    :cond_13
    iget-boolean v2, v0, Lo/Qh;->e:Z

    .line 312
    iget-object v3, v0, Lo/Qh;->a:Ljava/util/ArrayList;

    .line 314
    if-nez v2, :cond_14

    .line 316
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_14
    iget-boolean p1, p0, Lo/si;->i0:Z

    .line 321
    if-eqz p1, :cond_15

    .line 323
    if-eqz v1, :cond_15

    .line 325
    invoke-static {v1}, Lo/Dh;->a(Landroid/view/View;)Lo/Ph;

    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {p1, v7}, Lo/Ph;->e(F)V

    .line 332
    iget-boolean v1, v0, Lo/Qh;->e:Z

    .line 334
    if-nez v1, :cond_15

    .line 336
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_15
    sget-object p1, Lo/si;->s0:Landroid/view/animation/AccelerateInterpolator;

    .line 341
    iget-boolean v1, v0, Lo/Qh;->e:Z

    .line 343
    if-nez v1, :cond_16

    .line 345
    iput-object p1, v0, Lo/Qh;->c:Landroid/view/animation/BaseInterpolator;

    .line 347
    :cond_16
    if-nez v1, :cond_17

    .line 349
    iput-wide v4, v0, Lo/Qh;->b:J

    .line 351
    :cond_17
    if-nez v1, :cond_18

    .line 353
    iput-object v9, v0, Lo/Qh;->d:Lo/Ng;

    .line 355
    :cond_18
    iput-object v0, p0, Lo/si;->m0:Lo/Qh;

    .line 357
    invoke-virtual {v0}, Lo/Qh;->b()V

    .line 360
    goto :goto_2

    .line 361
    :cond_19
    invoke-virtual {v9}, Lo/qi;->a()V

    .line 364
    :cond_1a
    :goto_2
    return-void
.end method
