.class public Landroidx/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static final s0:[I

.field public static final t0:[Ljava/lang/Class;

.field public static final u0:Lo/kd;


# instance fields
.field public A:I

.field public B:I

.field public C:Lo/pd;

.field public D:Landroid/widget/EdgeEffect;

.field public E:Landroid/widget/EdgeEffect;

.field public F:Landroid/widget/EdgeEffect;

.field public G:Landroid/widget/EdgeEffect;

.field public H:Lo/qd;

.field public I:I

.field public J:I

.field public K:Landroid/view/VelocityTracker;

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:Lo/wd;

.field public final R:I

.field public final S:I

.field public final T:F

.field public final U:F

.field public V:Z

.field public final W:Lo/Hd;

.field public final a:Lo/u6;

.field public a0:Lo/T8;

.field public final b:Lo/Ad;

.field public final b0:Lo/R8;

.field public c:Lo/Cd;

.field public final c0:Lo/Fd;

.field public final d:Lo/q0;

.field public d0:Lo/xd;

.field public final e:Lo/s2;

.field public e0:Ljava/util/ArrayList;

.field public final f:Lo/H1;

.field public f0:Z

.field public g:Z

.field public g0:Z

.field public final h:Landroid/graphics/Rect;

.field public final h0:Lo/ld;

.field public final i:Landroid/graphics/Rect;

.field public i0:Z

.field public final j:Landroid/graphics/RectF;

.field public j0:Lo/Kd;

.field public k:Lo/md;

.field public final k0:[I

.field public l:Lo/ud;

.field public l0:Lo/Tb;

.field public final m:Ljava/util/ArrayList;

.field public final m0:[I

.field public final n:Ljava/util/ArrayList;

.field public final n0:[I

.field public o:Lo/s7;

.field public final o0:[I

.field public p:Z

.field public final p0:Ljava/util/ArrayList;

.field public q:Z

.field public final q0:Lo/J2;

.field public r:Z

.field public final r0:Lo/ld;

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:I

.field public final x:Landroid/view/accessibility/AccessibilityManager;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const v0, 0x1010436

    .line 4
    filled-new-array {v0}, [I

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->s0:[I

    .line 10
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 12
    const-class v1, Landroid/content/Context;

    .line 14
    const-class v2, Landroid/util/AttributeSet;

    .line 16
    filled-new-array {v1, v2, v0, v0}, [Ljava/lang/Class;

    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->t0:[Ljava/lang/Class;

    .line 22
    new-instance v0, Lo/kd;

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Lo/kd;-><init>(I)V

    .line 28
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->u0:Lo/kd;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0303a3

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    const/16 v0, 0x8

    .line 2
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v1, Lo/u6;

    const/16 v2, 0x18

    invoke-direct {v1, v10, v2}, Lo/u6;-><init>(Landroid/view/View;I)V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->a:Lo/u6;

    .line 4
    new-instance v1, Lo/Ad;

    invoke-direct {v1, v10}, Lo/Ad;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 5
    new-instance v1, Lo/H1;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lo/H1;-><init>(I)V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->f:Lo/H1;

    .line 6
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 8
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->j:Landroid/graphics/RectF;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    const/4 v14, 0x0

    .line 11
    iput v14, v10, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 12
    iput-boolean v14, v10, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 13
    iput-boolean v14, v10, Landroidx/recyclerview/widget/RecyclerView;->z:Z

    .line 14
    iput v14, v10, Landroidx/recyclerview/widget/RecyclerView;->A:I

    .line 15
    iput v14, v10, Landroidx/recyclerview/widget/RecyclerView;->B:I

    .line 16
    new-instance v1, Lo/pd;

    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->C:Lo/pd;

    .line 19
    new-instance v1, Lo/B5;

    .line 20
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v15, 0x0

    .line 21
    iput-object v15, v1, Lo/qd;->a:Lo/ld;

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lo/qd;->b:Ljava/util/ArrayList;

    const-wide/16 v2, 0x78

    .line 23
    iput-wide v2, v1, Lo/qd;->c:J

    .line 24
    iput-wide v2, v1, Lo/qd;->d:J

    const-wide/16 v2, 0xfa

    .line 25
    iput-wide v2, v1, Lo/qd;->e:J

    .line 26
    iput-wide v2, v1, Lo/qd;->f:J

    const/4 v9, 0x1

    .line 27
    iput-boolean v9, v1, Lo/B5;->g:Z

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lo/B5;->h:Ljava/util/ArrayList;

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lo/B5;->i:Ljava/util/ArrayList;

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lo/B5;->j:Ljava/util/ArrayList;

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lo/B5;->k:Ljava/util/ArrayList;

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lo/B5;->l:Ljava/util/ArrayList;

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lo/B5;->m:Ljava/util/ArrayList;

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lo/B5;->n:Ljava/util/ArrayList;

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lo/B5;->o:Ljava/util/ArrayList;

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lo/B5;->p:Ljava/util/ArrayList;

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lo/B5;->q:Ljava/util/ArrayList;

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lo/B5;->r:Ljava/util/ArrayList;

    .line 39
    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 40
    iput v14, v10, Landroidx/recyclerview/widget/RecyclerView;->I:I

    const/4 v7, -0x1

    .line 41
    iput v7, v10, Landroidx/recyclerview/widget/RecyclerView;->J:I

    const/4 v1, 0x1

    .line 42
    iput v1, v10, Landroidx/recyclerview/widget/RecyclerView;->T:F

    .line 43
    iput v1, v10, Landroidx/recyclerview/widget/RecyclerView;->U:F

    .line 44
    iput-boolean v9, v10, Landroidx/recyclerview/widget/RecyclerView;->V:Z

    .line 45
    new-instance v1, Lo/Hd;

    invoke-direct {v1, v10}, Lo/Hd;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->W:Lo/Hd;

    .line 46
    new-instance v1, Lo/R8;

    .line 47
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->b0:Lo/R8;

    .line 49
    new-instance v1, Lo/Fd;

    .line 50
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v7, v1, Lo/Fd;->a:I

    .line 52
    iput v14, v1, Lo/Fd;->b:I

    .line 53
    iput v14, v1, Lo/Fd;->c:I

    .line 54
    iput v9, v1, Lo/Fd;->d:I

    .line 55
    iput v14, v1, Lo/Fd;->e:I

    .line 56
    iput-boolean v14, v1, Lo/Fd;->f:Z

    .line 57
    iput-boolean v14, v1, Lo/Fd;->g:Z

    .line 58
    iput-boolean v14, v1, Lo/Fd;->h:Z

    .line 59
    iput-boolean v14, v1, Lo/Fd;->i:Z

    .line 60
    iput-boolean v14, v1, Lo/Fd;->j:Z

    .line 61
    iput-boolean v14, v1, Lo/Fd;->k:Z

    .line 62
    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 63
    iput-boolean v14, v10, Landroidx/recyclerview/widget/RecyclerView;->f0:Z

    .line 64
    iput-boolean v14, v10, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    .line 65
    new-instance v1, Lo/ld;

    invoke-direct {v1, v10}, Lo/ld;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->h0:Lo/ld;

    .line 66
    iput-boolean v14, v10, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    const/4 v8, 0x2

    .line 67
    new-array v2, v8, [I

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->k0:[I

    .line 68
    new-array v2, v8, [I

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->m0:[I

    .line 69
    new-array v2, v8, [I

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    .line 70
    new-array v2, v8, [I

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->p0:Ljava/util/ArrayList;

    .line 72
    new-instance v2, Lo/J2;

    invoke-direct {v2, v0, v10}, Lo/J2;-><init>(ILjava/lang/Object;)V

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->q0:Lo/J2;

    .line 73
    new-instance v2, Lo/ld;

    invoke-direct {v2, v10}, Lo/ld;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->r0:Lo/ld;

    .line 74
    invoke-virtual {v10, v9}, Landroid/view/View;->setScrollContainer(Z)V

    .line 75
    invoke-virtual {v10, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 76
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v10, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 78
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 79
    sget-object v5, Lo/Eh;->a:Ljava/lang/reflect/Method;

    .line 80
    invoke-static {v2}, Lo/j9;->c(Landroid/view/ViewConfiguration;)F

    move-result v5

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {v2, v11}, Lo/Eh;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    .line 82
    :goto_0
    iput v5, v10, Landroidx/recyclerview/widget/RecyclerView;->T:F

    if-lt v3, v4, :cond_1

    .line 83
    invoke-static {v2}, Lo/j9;->d(Landroid/view/ViewConfiguration;)F

    move-result v5

    goto :goto_1

    .line 84
    :cond_1
    invoke-static {v2, v11}, Lo/Eh;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    .line 85
    :goto_1
    iput v5, v10, Landroidx/recyclerview/widget/RecyclerView;->U:F

    .line 86
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, v10, Landroidx/recyclerview/widget/RecyclerView;->R:I

    .line 87
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, v10, Landroidx/recyclerview/widget/RecyclerView;->S:I

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    if-ne v2, v8, :cond_2

    move v2, v9

    goto :goto_2

    :cond_2
    move v2, v14

    :goto_2
    invoke-virtual {v10, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 89
    iget-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 90
    iput-object v1, v2, Lo/qd;->a:Lo/ld;

    .line 91
    new-instance v1, Lo/q0;

    new-instance v2, Lo/ld;

    invoke-direct {v2, v10}, Lo/ld;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v1, v2}, Lo/q0;-><init>(Lo/ld;)V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->d:Lo/q0;

    .line 92
    new-instance v1, Lo/s2;

    new-instance v2, Lo/ld;

    invoke-direct {v2, v10}, Lo/ld;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v1, v2}, Lo/s2;-><init>(Lo/ld;)V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 93
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    if-lt v3, v4, :cond_3

    .line 94
    invoke-static/range {p0 .. p0}, Lo/xh;->a(Landroid/view/View;)I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v14

    :goto_3
    if-nez v1, :cond_4

    if-lt v3, v4, :cond_4

    .line 95
    invoke-static {v10, v0}, Lo/xh;->b(Landroid/view/View;I)V

    .line 96
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 97
    invoke-virtual {v10, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 98
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->x:Landroid/view/accessibility/AccessibilityManager;

    .line 100
    new-instance v1, Lo/Kd;

    invoke-direct {v1, v10}, Lo/Kd;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Lo/Kd;)V

    .line 101
    sget-object v4, Lo/ed;->a:[I

    invoke-virtual {v11, v12, v4, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    const/16 v5, 0x1d

    if-lt v3, v5, :cond_6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object/from16 v4, p2

    move v15, v5

    move-object v5, v6

    move-object v15, v6

    move/from16 v6, p3

    .line 102
    invoke-static/range {v1 .. v6}, Lo/u;->q(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    goto :goto_4

    :cond_6
    move-object v15, v6

    .line 103
    :goto_4
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v15, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-ne v1, v7, :cond_7

    const/high16 v1, 0x40000

    .line 105
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 106
    :cond_7
    invoke-virtual {v15, v9, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v10, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    const/4 v7, 0x3

    .line 107
    invoke-virtual {v15, v7, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v6, 0x4

    if-eqz v1, :cond_9

    const/4 v1, 0x6

    .line 108
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x7

    .line 109
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 110
    invoke-virtual {v15, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x5

    .line 111
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    if-eqz v16, :cond_8

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 113
    new-instance v2, Lo/s7;

    const v6, 0x7f060090

    .line 114
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    const v6, 0x7f060092

    .line 115
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    const v6, 0x7f060091

    .line 116
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v20

    move-object v1, v2

    move-object/from16 v2, p0

    move-object/from16 v6, v16

    move/from16 v16, v7

    move/from16 v7, v18

    move/from16 v17, v8

    move/from16 v8, v19

    move/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lo/s7;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    goto :goto_5

    .line 117
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to set fast scroller without both required drawables."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move/from16 v16, v7

    move/from16 v17, v8

    .line 119
    :goto_5
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    const-string v1, ": Could not instantiate the LayoutManager: "

    if-eqz v0, :cond_d

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 123
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_a

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object v2, v0

    goto :goto_7

    .line 125
    :cond_a
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    .line 126
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 127
    :goto_7
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 128
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    goto/16 :goto_d

    :catch_2
    move-exception v0

    goto/16 :goto_e

    :catch_3
    move-exception v0

    goto/16 :goto_f

    :catch_4
    move-exception v0

    goto/16 :goto_10

    .line 129
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 130
    :goto_8
    invoke-static {v2, v14, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lo/ud;

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :try_start_1
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->t0:[Ljava/lang/Class;

    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x4

    .line 134
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v11, v4, v14
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x1

    :try_start_2
    aput-object v12, v4, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v17

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v16
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v15, v4

    goto :goto_b

    :catch_5
    move-exception v0

    :goto_9
    move-object v4, v0

    goto :goto_a

    :catch_6
    move-exception v0

    const/4 v7, 0x1

    goto :goto_9

    .line 135
    :goto_a
    :try_start_3
    new-array v0, v14, [Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v15, 0x0

    .line 136
    :goto_b
    :try_start_4
    invoke-virtual {v0, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 137
    invoke-virtual {v0, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ud;

    invoke-virtual {v10, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lo/ud;)V

    goto/16 :goto_11

    :catch_7
    move-exception v0

    .line 138
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 139
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Error creating LayoutManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0

    .line 140
    :goto_c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Class is not a LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 141
    :goto_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Cannot access non-public constructor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 142
    :goto_e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 143
    :goto_f
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 144
    :goto_10
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Unable to find LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    const/4 v7, 0x1

    .line 145
    :goto_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 146
    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->s0:[I

    invoke-virtual {v11, v12, v3, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v8

    move/from16 v6, p3

    .line 147
    invoke-static/range {v1 .. v6}, Lo/u;->q(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 148
    :cond_e
    invoke-virtual {v8, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 149
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    invoke-virtual {v10, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static D(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    return-object p0

    .line 14
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v0, :cond_3

    .line 23
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->D(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_2

    .line 33
    return-object v3

    .line 34
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    return-object v1
.end method

.method public static I(Landroid/view/View;)Lo/Id;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lo/vd;

    .line 11
    iget-object p0, p0, Lo/vd;->a:Lo/Id;

    .line 13
    return-object p0
.end method

.method public static synthetic b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    return-void
.end method

.method public static synthetic c(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    .line 4
    return-void
.end method

.method public static synthetic d(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic e(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 4
    return-void
.end method

.method private getScrollingChildHelper()Lo/Tb;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l0:Lo/Tb;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lo/Tb;

    .line 7
    invoke-direct {v0, p0}, Lo/Tb;-><init>(Landroid/view/ViewGroup;)V

    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l0:Lo/Tb;

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l0:Lo/Tb;

    .line 14
    return-object v0
.end method

.method public static j(Lo/Id;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/Id;->b:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 11
    :goto_0
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 14
    iget-object v2, p0, Lo/Id;->a:Landroid/view/View;

    .line 16
    if-ne v0, v2, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    move-result-object v0

    .line 23
    instance-of v2, v0, Landroid/view/View;

    .line 25
    if-eqz v2, :cond_1

    .line 27
    check-cast v0, Landroid/view/View;

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iput-object v1, p0, Lo/Id;->b:Ljava/lang/ref/WeakReference;

    .line 34
    :cond_3
    return-void
.end method


# virtual methods
.method public final A(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    :goto_0
    if-eqz v0, :cond_0

    .line 7
    if-eq v0, p0, :cond_0

    .line 9
    instance-of v1, v0, Landroid/view/View;

    .line 11
    if-eqz v1, :cond_0

    .line 13
    move-object p1, v0

    .line 14
    check-cast p1, Landroid/view/View;

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-ne v0, p0, :cond_1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_1
    return-object p1
.end method

.method public final B(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v4, v2, :cond_5

    .line 15
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Lo/s7;

    .line 21
    iget v6, v5, Lo/s7;->v:I

    .line 23
    const/4 v7, 0x1

    .line 24
    const/4 v8, 0x2

    .line 25
    if-ne v6, v7, :cond_3

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 30
    move-result v6

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 34
    move-result v9

    .line 35
    invoke-virtual {v5, v6, v9}, Lo/s7;->d(FF)Z

    .line 38
    move-result v6

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 42
    move-result v9

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 46
    move-result v10

    .line 47
    invoke-virtual {v5, v9, v10}, Lo/s7;->c(FF)Z

    .line 50
    move-result v9

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 54
    move-result v10

    .line 55
    if-nez v10, :cond_4

    .line 57
    if-nez v6, :cond_0

    .line 59
    if-eqz v9, :cond_4

    .line 61
    :cond_0
    if-eqz v9, :cond_1

    .line 63
    iput v7, v5, Lo/s7;->w:I

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 68
    move-result v6

    .line 69
    float-to-int v6, v6

    .line 70
    int-to-float v6, v6

    .line 71
    iput v6, v5, Lo/s7;->p:F

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    if-eqz v6, :cond_2

    .line 76
    iput v8, v5, Lo/s7;->w:I

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 81
    move-result v6

    .line 82
    float-to-int v6, v6

    .line 83
    int-to-float v6, v6

    .line 84
    iput v6, v5, Lo/s7;->m:F

    .line 86
    :cond_2
    :goto_1
    invoke-virtual {v5, v8}, Lo/s7;->f(I)V

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    if-ne v6, v8, :cond_4

    .line 92
    :goto_2
    const/4 v6, 0x3

    .line 93
    if-eq v0, v6, :cond_4

    .line 95
    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Lo/s7;

    .line 97
    return v7

    .line 98
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_5
    return v3
.end method

.method public final C([I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 3
    invoke-virtual {v0}, Lo/s2;->m()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 11
    const/4 v0, -0x1

    .line 12
    aput v0, p1, v2

    .line 14
    aput v0, p1, v1

    .line 16
    return-void

    .line 17
    :cond_0
    const v3, 0x7fffffff

    .line 20
    const/high16 v4, -0x80000000

    .line 22
    move v5, v2

    .line 23
    :goto_0
    if-ge v5, v0, :cond_4

    .line 25
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 27
    invoke-virtual {v6, v5}, Lo/s2;->l(I)Landroid/view/View;

    .line 30
    move-result-object v6

    .line 31
    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v6}, Lo/Id;->p()Z

    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v6}, Lo/Id;->b()I

    .line 45
    move-result v6

    .line 46
    if-ge v6, v3, :cond_2

    .line 48
    move v3, v6

    .line 49
    :cond_2
    if-le v6, v4, :cond_3

    .line 51
    move v4, v6

    .line 52
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    aput v3, p1, v2

    .line 57
    aput v4, p1, v1

    .line 59
    return-void
.end method

.method public final E(I)Lo/Id;
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 9
    invoke-virtual {v0}, Lo/s2;->u()I

    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v0, :cond_3

    .line 16
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 18
    invoke-virtual {v3, v2}, Lo/s2;->t(I)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 22
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_2

    .line 28
    invoke-virtual {v3}, Lo/Id;->i()Z

    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_2

    .line 34
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->F(Lo/Id;)I

    .line 37
    move-result v4

    .line 38
    if-ne v4, p1, :cond_2

    .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 42
    iget-object v1, v1, Lo/s2;->d:Ljava/lang/Object;

    .line 44
    check-cast v1, Ljava/util/ArrayList;

    .line 46
    iget-object v4, v3, Lo/Id;->a:Landroid/view/View;

    .line 48
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 54
    move-object v1, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    return-object v3

    .line 57
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    return-object v1
.end method

.method public final F(Lo/Id;)I
    .locals 7

    .line 1
    const/16 v0, 0x20c

    .line 3
    invoke-virtual {p1, v0}, Lo/Id;->d(I)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-nez v0, :cond_9

    .line 10
    invoke-virtual {p1}, Lo/Id;->f()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Lo/q0;

    .line 19
    iget p1, p1, Lo/Id;->c:I

    .line 21
    iget-object v0, v0, Lo/q0;->a:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v2, :cond_8

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lo/p0;

    .line 36
    iget v5, v4, Lo/p0;->a:I

    .line 38
    const/4 v6, 0x1

    .line 39
    if-eq v5, v6, :cond_6

    .line 41
    const/4 v6, 0x2

    .line 42
    if-eq v5, v6, :cond_4

    .line 44
    const/16 v6, 0x8

    .line 46
    if-eq v5, v6, :cond_1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget v5, v4, Lo/p0;->b:I

    .line 51
    if-ne v5, p1, :cond_2

    .line 53
    iget p1, v4, Lo/p0;->c:I

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    if-ge v5, p1, :cond_3

    .line 58
    add-int/lit8 p1, p1, -0x1

    .line 60
    :cond_3
    iget v4, v4, Lo/p0;->c:I

    .line 62
    if-gt v4, p1, :cond_7

    .line 64
    add-int/lit8 p1, p1, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    iget v5, v4, Lo/p0;->b:I

    .line 69
    if-gt v5, p1, :cond_7

    .line 71
    iget v4, v4, Lo/p0;->c:I

    .line 73
    add-int/2addr v5, v4

    .line 74
    if-le v5, p1, :cond_5

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    sub-int/2addr p1, v4

    .line 78
    goto :goto_1

    .line 79
    :cond_6
    iget v5, v4, Lo/p0;->b:I

    .line 81
    if-gt v5, p1, :cond_7

    .line 83
    iget v4, v4, Lo/p0;->c:I

    .line 85
    add-int/2addr p1, v4

    .line 86
    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_8
    move v1, p1

    .line 90
    :cond_9
    :goto_2
    return v1
.end method

.method public final G(Lo/Id;)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 3
    iget-boolean v0, v0, Lo/md;->b:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-wide v0, p1, Lo/Id;->e:J

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p1, Lo/Id;->c:I

    .line 12
    int-to-long v0, p1

    .line 13
    :goto_0
    return-wide v0
.end method

.method public final H(Landroid/view/View;)Lo/Id;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    if-ne v0, p0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    const-string v2, "View "

    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string p1, " is not a direct child of "

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v0

    .line 38
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public final J(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo/vd;

    .line 7
    iget-boolean v1, v0, Lo/vd;->c:Z

    .line 9
    iget-object v2, v0, Lo/vd;->b:Landroid/graphics/Rect;

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-object v2

    .line 14
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 16
    iget-boolean v1, v1, Lo/Fd;->g:Z

    .line 18
    if-eqz v1, :cond_2

    .line 20
    iget-object v1, v0, Lo/vd;->a:Lo/Id;

    .line 22
    invoke-virtual {v1}, Lo/Id;->l()Z

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 28
    iget-object v1, v0, Lo/vd;->a:Lo/Id;

    .line 30
    invoke-virtual {v1}, Lo/Id;->g()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 36
    :cond_1
    return-object v2

    .line 37
    :cond_2
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 41
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v4

    .line 47
    move v5, v1

    .line 48
    :goto_0
    if-ge v5, v4, :cond_3

    .line 50
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {v6, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 55
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Lo/rd;

    .line 61
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Lo/vd;

    .line 70
    iget-object v7, v7, Lo/vd;->a:Lo/Id;

    .line 72
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-virtual {v6, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 78
    iget v7, v2, Landroid/graphics/Rect;->left:I

    .line 80
    iget v8, v6, Landroid/graphics/Rect;->left:I

    .line 82
    add-int/2addr v7, v8

    .line 83
    iput v7, v2, Landroid/graphics/Rect;->left:I

    .line 85
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 87
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 89
    add-int/2addr v7, v8

    .line 90
    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 92
    iget v7, v2, Landroid/graphics/Rect;->right:I

    .line 94
    iget v8, v6, Landroid/graphics/Rect;->right:I

    .line 96
    add-int/2addr v7, v8

    .line 97
    iput v7, v2, Landroid/graphics/Rect;->right:I

    .line 99
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 101
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 103
    add-int/2addr v7, v6

    .line 104
    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 106
    add-int/lit8 v5, v5, 0x1

    .line 108
    goto :goto_0

    .line 109
    :cond_3
    iput-boolean v1, v0, Lo/vd;->c:Z

    .line 111
    return-object v2
.end method

.method public final K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 7
    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Lo/q0;

    .line 11
    invoke-virtual {v0}, Lo/q0;->f()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public final L()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:I

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

.method public final M(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 12
    invoke-virtual {v0, p1}, Lo/ud;->n0(I)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 18
    return-void
.end method

.method public final N()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 3
    invoke-virtual {v0}, Lo/s2;->u()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const/4 v3, 0x1

    .line 10
    if-ge v2, v0, :cond_0

    .line 12
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 14
    invoke-virtual {v4, v2}, Lo/s2;->t(I)Landroid/view/View;

    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lo/vd;

    .line 24
    iput-boolean v3, v4, Lo/vd;->c:Z

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 31
    iget-object v0, v0, Lo/Ad;->c:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v2

    .line 37
    :goto_1
    if-ge v1, v2, :cond_2

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lo/Id;

    .line 45
    iget-object v4, v4, Lo/Id;->a:Landroid/view/View;

    .line 47
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lo/vd;

    .line 53
    if-eqz v4, :cond_1

    .line 55
    iput-boolean v3, v4, Lo/vd;->c:Z

    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    return-void
.end method

.method public final O(IIZ)V
    .locals 9

    .line 1
    add-int v0, p1, p2

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 5
    invoke-virtual {v1}, Lo/s2;->u()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    const/4 v3, 0x1

    .line 11
    const/16 v4, 0x8

    .line 13
    if-ge v2, v1, :cond_2

    .line 15
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 17
    invoke-virtual {v5, v2}, Lo/s2;->t(I)Landroid/view/View;

    .line 20
    move-result-object v5

    .line 21
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 24
    move-result-object v5

    .line 25
    if-eqz v5, :cond_1

    .line 27
    invoke-virtual {v5}, Lo/Id;->p()Z

    .line 30
    move-result v6

    .line 31
    if-nez v6, :cond_1

    .line 33
    iget v6, v5, Lo/Id;->c:I

    .line 35
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 37
    if-lt v6, v0, :cond_0

    .line 39
    neg-int v4, p2

    .line 40
    invoke-virtual {v5, v4, p3}, Lo/Id;->m(IZ)V

    .line 43
    iput-boolean v3, v7, Lo/Fd;->f:Z

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    if-lt v6, p1, :cond_1

    .line 48
    add-int/lit8 v6, p1, -0x1

    .line 50
    neg-int v8, p2

    .line 51
    invoke-virtual {v5, v4}, Lo/Id;->a(I)V

    .line 54
    invoke-virtual {v5, v8, p3}, Lo/Id;->m(IZ)V

    .line 57
    iput v6, v5, Lo/Id;->c:I

    .line 59
    iput-boolean v3, v7, Lo/Fd;->f:Z

    .line 61
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 66
    iget-object v2, v1, Lo/Ad;->c:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v5

    .line 72
    sub-int/2addr v5, v3

    .line 73
    :goto_2
    if-ltz v5, :cond_5

    .line 75
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lo/Id;

    .line 81
    if-eqz v3, :cond_4

    .line 83
    iget v6, v3, Lo/Id;->c:I

    .line 85
    if-lt v6, v0, :cond_3

    .line 87
    neg-int v6, p2

    .line 88
    invoke-virtual {v3, v6, p3}, Lo/Id;->m(IZ)V

    .line 91
    goto :goto_3

    .line 92
    :cond_3
    if-lt v6, p1, :cond_4

    .line 94
    invoke-virtual {v3, v4}, Lo/Id;->a(I)V

    .line 97
    invoke-virtual {v1, v5}, Lo/Ad;->e(I)V

    .line 100
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, -0x1

    .line 102
    goto :goto_2

    .line 103
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 106
    return-void
.end method

.method public final P()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:I

    .line 7
    return-void
.end method

.method public final Q(Z)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->A:I

    .line 4
    const/4 v2, 0x1

    .line 5
    sub-int/2addr v1, v2

    .line 6
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->A:I

    .line 8
    if-ge v1, v2, :cond_4

    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->A:I

    .line 13
    if-eqz p1, :cond_4

    .line 15
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:I

    .line 17
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:I

    .line 19
    if-eqz p1, :cond_0

    .line 21
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Landroid/view/accessibility/AccessibilityManager;

    .line 23
    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 31
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 34
    move-result-object v1

    .line 35
    const/16 v3, 0x800

    .line 37
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 40
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 43
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 46
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->p0:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v1

    .line 52
    sub-int/2addr v1, v2

    .line 53
    :goto_0
    if-ltz v1, :cond_3

    .line 55
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lo/Id;

    .line 61
    iget-object v3, v2, Lo/Id;->a:Landroid/view/View;

    .line 63
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 66
    move-result-object v3

    .line 67
    if-ne v3, p0, :cond_2

    .line 69
    invoke-virtual {v2}, Lo/Id;->p()Z

    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    iget v3, v2, Lo/Id;->q:I

    .line 78
    if-eq v3, v0, :cond_2

    .line 80
    sget-object v4, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 82
    iget-object v4, v2, Lo/Id;->a:Landroid/view/View;

    .line 84
    invoke-virtual {v4, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 87
    iput v0, v2, Lo/Id;->q:I

    .line 89
    :cond_2
    :goto_1
    add-int/2addr v1, v0

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 94
    :cond_4
    return-void
.end method

.method public final R(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 11
    if-ne v1, v2, :cond_1

    .line 13
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 21
    move-result v1

    .line 22
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 27
    move-result v1

    .line 28
    const/high16 v2, 0x3f000000    # 0.5f

    .line 30
    add-float/2addr v1, v2

    .line 31
    float-to-int v1, v1

    .line 32
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 34
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 39
    move-result p1

    .line 40
    add-float/2addr p1, v2

    .line 41
    float-to-int p1, p1

    .line 42
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 44
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 46
    :cond_1
    return-void
.end method

.method public final S()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:Lo/J2;

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    .line 19
    :cond_0
    return-void
.end method

.method public final T(Lo/Id;Lo/Wb;)V
    .locals 4

    .line 1
    iget v0, p1, Lo/Id;->j:I

    .line 3
    and-int/lit16 v0, v0, -0x2001

    .line 5
    iput v0, p1, Lo/Id;->j:I

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 9
    iget-boolean v0, v0, Lo/Fd;->h:Z

    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lo/H1;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p1}, Lo/Id;->l()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Lo/Id;->i()Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lo/Id;->p()Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Lo/Id;)J

    .line 36
    move-result-wide v2

    .line 37
    iget-object v0, v1, Lo/H1;->c:Ljava/lang/Object;

    .line 39
    check-cast v0, Lo/za;

    .line 41
    invoke-virtual {v0, v2, v3, p1}, Lo/za;->d(JLjava/lang/Object;)V

    .line 44
    :cond_0
    iget-object v0, v1, Lo/H1;->b:Ljava/lang/Object;

    .line 46
    check-cast v0, Lo/Qe;

    .line 48
    invoke-virtual {v0, p1}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lo/Ih;

    .line 54
    if-nez v1, :cond_1

    .line 56
    invoke-static {}, Lo/Ih;->a()Lo/Ih;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, p1, v1}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    iput-object p2, v1, Lo/Ih;->b:Lo/Wb;

    .line 65
    iget p1, v1, Lo/Ih;->a:I

    .line 67
    or-int/lit8 p1, p1, 0x4

    .line 69
    iput p1, v1, Lo/Ih;->a:I

    .line 71
    return-void
.end method

.method public final U(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    .line 1
    if-eqz p2, :cond_0

    .line 3
    move-object v0, p2

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    move-object v0, p1

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Lo/vd;

    .line 26
    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lo/vd;

    .line 30
    iget-boolean v1, v0, Lo/vd;->c:Z

    .line 32
    if-nez v1, :cond_1

    .line 34
    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 36
    iget-object v0, v0, Lo/vd;->b:Landroid/graphics/Rect;

    .line 38
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 40
    sub-int/2addr v1, v2

    .line 41
    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 43
    iget v1, v3, Landroid/graphics/Rect;->right:I

    .line 45
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 47
    add-int/2addr v1, v2

    .line 48
    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 50
    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 52
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 54
    sub-int/2addr v1, v2

    .line 55
    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 57
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 59
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 61
    add-int/2addr v1, v0

    .line 62
    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 64
    :cond_1
    if-eqz p2, :cond_2

    .line 66
    invoke-virtual {p0, p2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 69
    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 72
    :cond_2
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 74
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 76
    const/4 v1, 0x1

    .line 77
    xor-int/lit8 v9, v0, 0x1

    .line 79
    if-nez p2, :cond_3

    .line 81
    move v10, v1

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move v10, v4

    .line 84
    :goto_1
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 86
    move-object v6, p0

    .line 87
    move-object v7, p1

    .line 88
    invoke-virtual/range {v5 .. v10}, Lo/ud;->k0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 91
    return-void
.end method

.method public final V()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->c0(I)V

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 21
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 24
    move-result v0

    .line 25
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 27
    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 32
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 34
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 37
    move-result v1

    .line 38
    or-int/2addr v0, v1

    .line 39
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 41
    if-eqz v1, :cond_3

    .line 43
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 46
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 48
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 51
    move-result v1

    .line 52
    or-int/2addr v0, v1

    .line 53
    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 55
    if-eqz v1, :cond_4

    .line 57
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 60
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 62
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 65
    move-result v1

    .line 66
    or-int/2addr v0, v1

    .line 67
    :cond_4
    if-eqz v0, :cond_5

    .line 69
    sget-object v0, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 74
    :cond_5
    return-void
.end method

.method public final W(IILandroid/view/MotionEvent;)Z
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 3
    move/from16 v9, p1

    .line 5
    move/from16 v10, p2

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    .line 10
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 12
    iget-object v11, v8, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    .line 14
    const/4 v12, 0x1

    .line 15
    const/4 v13, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    aput v13, v11, v13

    .line 20
    aput v13, v11, v12

    .line 22
    invoke-virtual {v8, v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->X(II[I)V

    .line 25
    aget v0, v11, v13

    .line 27
    aget v1, v11, v12

    .line 29
    sub-int v2, v9, v0

    .line 31
    sub-int v3, v10, v1

    .line 33
    move v14, v0

    .line 34
    move v15, v1

    .line 35
    move/from16 v16, v2

    .line 37
    move/from16 v17, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v14, v13

    .line 41
    move v15, v14

    .line 42
    move/from16 v16, v15

    .line 44
    move/from16 v17, v16

    .line 46
    :goto_0
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 57
    :cond_1
    aput v13, v11, v13

    .line 59
    aput v13, v11, v12

    .line 61
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->m0:[I

    .line 63
    const/4 v7, 0x0

    .line 64
    move-object/from16 v0, p0

    .line 66
    move v1, v14

    .line 67
    move v3, v15

    .line 68
    move/from16 v4, v16

    .line 70
    move/from16 v5, v17

    .line 72
    move-object v6, v11

    .line 73
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->s(I[IIII[II)V

    .line 76
    aget v0, v11, v13

    .line 78
    sub-int v1, v16, v0

    .line 80
    aget v2, v11, v12

    .line 82
    sub-int v3, v17, v2

    .line 84
    if-nez v0, :cond_3

    .line 86
    if-eqz v2, :cond_2

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move v0, v13

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    :goto_1
    move v0, v12

    .line 92
    :goto_2
    iget v2, v8, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 94
    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->m0:[I

    .line 96
    aget v5, v4, v13

    .line 98
    sub-int/2addr v2, v5

    .line 99
    iput v2, v8, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 101
    iget v2, v8, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 103
    aget v4, v4, v12

    .line 105
    sub-int/2addr v2, v4

    .line 106
    iput v2, v8, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 108
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    .line 110
    aget v6, v2, v13

    .line 112
    add-int/2addr v6, v5

    .line 113
    aput v6, v2, v13

    .line 115
    aget v5, v2, v12

    .line 117
    add-int/2addr v5, v4

    .line 118
    aput v5, v2, v12

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    .line 123
    move-result v2

    .line 124
    const/4 v4, 0x2

    .line 125
    if-eq v2, v4, :cond_b

    .line 127
    if-eqz p3, :cond_a

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getSource()I

    .line 132
    move-result v2

    .line 133
    const/16 v4, 0x2002

    .line 135
    and-int/2addr v2, v4

    .line 136
    if-ne v2, v4, :cond_4

    .line 138
    goto/16 :goto_7

    .line 140
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    .line 143
    move-result v2

    .line 144
    int-to-float v1, v1

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    .line 148
    move-result v4

    .line 149
    int-to-float v3, v3

    .line 150
    const/4 v5, 0x0

    .line 151
    cmpg-float v6, v1, v5

    .line 153
    const/high16 v7, 0x3f800000    # 1.0f

    .line 155
    if-gez v6, :cond_5

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->v()V

    .line 160
    iget-object v6, v8, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 162
    neg-float v11, v1

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 166
    move-result v12

    .line 167
    int-to-float v12, v12

    .line 168
    div-float/2addr v11, v12

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 172
    move-result v12

    .line 173
    int-to-float v12, v12

    .line 174
    div-float/2addr v4, v12

    .line 175
    sub-float v4, v7, v4

    .line 177
    invoke-static {v6, v11, v4}, Lo/s6;->a(Landroid/widget/EdgeEffect;FF)V

    .line 180
    :goto_3
    const/4 v4, 0x1

    .line 181
    goto :goto_4

    .line 182
    :cond_5
    cmpl-float v6, v1, v5

    .line 184
    if-lez v6, :cond_6

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->w()V

    .line 189
    iget-object v6, v8, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 194
    move-result v11

    .line 195
    int-to-float v11, v11

    .line 196
    div-float v11, v1, v11

    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 201
    move-result v12

    .line 202
    int-to-float v12, v12

    .line 203
    div-float/2addr v4, v12

    .line 204
    invoke-static {v6, v11, v4}, Lo/s6;->a(Landroid/widget/EdgeEffect;FF)V

    .line 207
    goto :goto_3

    .line 208
    :cond_6
    move v4, v13

    .line 209
    :goto_4
    cmpg-float v6, v3, v5

    .line 211
    if-gez v6, :cond_7

    .line 213
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->x()V

    .line 216
    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 218
    neg-float v6, v3

    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 222
    move-result v7

    .line 223
    int-to-float v7, v7

    .line 224
    div-float/2addr v6, v7

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 228
    move-result v7

    .line 229
    int-to-float v7, v7

    .line 230
    div-float/2addr v2, v7

    .line 231
    invoke-static {v4, v6, v2}, Lo/s6;->a(Landroid/widget/EdgeEffect;FF)V

    .line 234
    :goto_5
    const/4 v4, 0x1

    .line 235
    goto :goto_6

    .line 236
    :cond_7
    cmpl-float v6, v3, v5

    .line 238
    if-lez v6, :cond_8

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->u()V

    .line 243
    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 245
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 248
    move-result v6

    .line 249
    int-to-float v6, v6

    .line 250
    div-float v6, v3, v6

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 255
    move-result v11

    .line 256
    int-to-float v11, v11

    .line 257
    div-float/2addr v2, v11

    .line 258
    sub-float/2addr v7, v2

    .line 259
    invoke-static {v4, v6, v7}, Lo/s6;->a(Landroid/widget/EdgeEffect;FF)V

    .line 262
    goto :goto_5

    .line 263
    :cond_8
    :goto_6
    if-nez v4, :cond_9

    .line 265
    cmpl-float v1, v1, v5

    .line 267
    if-nez v1, :cond_9

    .line 269
    cmpl-float v1, v3, v5

    .line 271
    if-eqz v1, :cond_a

    .line 273
    :cond_9
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 278
    :cond_a
    :goto_7
    invoke-virtual/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->l(II)V

    .line 281
    :cond_b
    if-nez v14, :cond_c

    .line 283
    if-eqz v15, :cond_d

    .line 285
    :cond_c
    invoke-virtual {v8, v14, v15}, Landroidx/recyclerview/widget/RecyclerView;->t(II)V

    .line 288
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 291
    move-result v1

    .line 292
    if-nez v1, :cond_e

    .line 294
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 297
    :cond_e
    if-nez v0, :cond_10

    .line 299
    if-nez v14, :cond_10

    .line 301
    if-eqz v15, :cond_f

    .line 303
    goto :goto_8

    .line 304
    :cond_f
    move v12, v13

    .line 305
    goto :goto_9

    .line 306
    :cond_10
    :goto_8
    const/4 v12, 0x1

    .line 307
    :goto_9
    return v12
.end method

.method public final X(II[I)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->P()V

    .line 10
    sget v2, Lo/pg;->a:I

    .line 12
    const-string v2, "RV Scroll"

    .line 14
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 19
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->z(Lo/Fd;)V

    .line 22
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz p1, :cond_0

    .line 27
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 29
    invoke-virtual {v5, p1, v3, v2}, Lo/ud;->m0(ILo/Ad;Lo/Fd;)I

    .line 32
    move-result p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move p1, v4

    .line 35
    :goto_0
    if-eqz p2, :cond_1

    .line 37
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 39
    invoke-virtual {v5, p2, v3, v2}, Lo/ud;->o0(ILo/Ad;Lo/Fd;)I

    .line 42
    move-result p2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move p2, v4

    .line 45
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 48
    invoke-virtual {v1}, Lo/s2;->m()I

    .line 51
    move-result v2

    .line 52
    move v3, v4

    .line 53
    :goto_2
    if-ge v3, v2, :cond_4

    .line 55
    invoke-virtual {v1, v3}, Lo/s2;->l(I)Landroid/view/View;

    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView;->H(Landroid/view/View;)Lo/Id;

    .line 62
    move-result-object v6

    .line 63
    if-eqz v6, :cond_3

    .line 65
    iget-object v6, v6, Lo/Id;->i:Lo/Id;

    .line 67
    if-eqz v6, :cond_3

    .line 69
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 72
    move-result v7

    .line 73
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 76
    move-result v5

    .line 77
    iget-object v6, v6, Lo/Id;->a:Landroid/view/View;

    .line 79
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 82
    move-result v8

    .line 83
    if-ne v7, v8, :cond_2

    .line 85
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 88
    move-result v8

    .line 89
    if-eq v5, v8, :cond_3

    .line 91
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 94
    move-result v8

    .line 95
    add-int/2addr v8, v7

    .line 96
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 99
    move-result v9

    .line 100
    add-int/2addr v9, v5

    .line 101
    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 104
    :cond_3
    add-int/2addr v3, v0

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->Q(Z)V

    .line 109
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    .line 112
    if-eqz p3, :cond_5

    .line 114
    aput p1, p3, v4

    .line 116
    aput p2, p3, v0

    .line 118
    :cond_5
    return-void
.end method

.method public final Y(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Lo/Hd;

    .line 12
    iget-object v1, v0, Lo/Hd;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17
    iget-object v0, v0, Lo/Hd;->c:Landroid/widget/OverScroller;

    .line 19
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-object v0, v0, Lo/ud;->e:Lo/aa;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0}, Lo/aa;->i()V

    .line 33
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 35
    if-nez v0, :cond_2

    .line 37
    const-string p1, "RecyclerView"

    .line 39
    const-string v0, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void

    .line 45
    :cond_2
    invoke-virtual {v0, p1}, Lo/ud;->n0(I)V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 51
    return-void
.end method

.method public final Z(IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string p1, "RecyclerView"

    .line 7
    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 15
    if-eqz v1, :cond_1

    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, Lo/ud;->d()Z

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez v0, :cond_2

    .line 25
    move p1, v1

    .line 26
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 28
    invoke-virtual {v0}, Lo/ud;->e()Z

    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 34
    move p2, v1

    .line 35
    :cond_3
    if-nez p1, :cond_4

    .line 37
    if-eqz p2, :cond_8

    .line 39
    :cond_4
    if-eqz p3, :cond_7

    .line 41
    const/4 p3, 0x1

    .line 42
    if-eqz p1, :cond_5

    .line 44
    move v1, p3

    .line 45
    :cond_5
    if-eqz p2, :cond_6

    .line 47
    or-int/lit8 v1, v1, 0x2

    .line 49
    :cond_6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, v1, p3}, Lo/Tb;->g(II)Z

    .line 56
    :cond_7
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Lo/Hd;

    .line 58
    const/high16 v0, -0x80000000

    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p3, p1, p2, v0, v1}, Lo/Hd;->b(IIILandroid/view/animation/BaseInterpolator;)V

    .line 64
    :cond_8
    return-void
.end method

.method public final a0()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 11
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 16
    :cond_0
    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 11
    return-void
.end method

.method public final b0(Z)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 6
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_1

    .line 11
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 13
    if-nez v2, :cond_1

    .line 15
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 17
    :cond_1
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 19
    if-ne v2, v1, :cond_3

    .line 21
    if-eqz p1, :cond_2

    .line 23
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 25
    if-eqz p1, :cond_2

    .line 27
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 29
    if-nez p1, :cond_2

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 33
    if-eqz p1, :cond_2

    .line 35
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 37
    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    .line 42
    :cond_2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 44
    if-nez p1, :cond_3

    .line 46
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 48
    :cond_3
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 50
    sub-int/2addr p1, v1

    .line 51
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 53
    return-void
.end method

.method public final c0(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lo/Tb;->h(I)V

    .line 8
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lo/vd;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 7
    check-cast p1, Lo/vd;

    .line 9
    invoke-virtual {v0, p1}, Lo/ud;->f(Lo/vd;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lo/ud;->d()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 17
    invoke-virtual {v0, v1}, Lo/ud;->j(Lo/Fd;)I

    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lo/ud;->d()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 17
    invoke-virtual {v0, v1}, Lo/ud;->k(Lo/Fd;)I

    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lo/ud;->d()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 17
    invoke-virtual {v0, v1}, Lo/ud;->l(Lo/Fd;)I

    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public final computeVerticalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lo/ud;->e()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 17
    invoke-virtual {v0, v1}, Lo/ud;->m(Lo/Fd;)I

    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public final computeVerticalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lo/ud;->e()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 17
    invoke-virtual {v0, v1}, Lo/ud;->n(Lo/Fd;)I

    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public final computeVerticalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lo/ud;->e()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 17
    invoke-virtual {v0, v1}, Lo/ud;->o(Lo/Fd;)I

    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lo/Tb;->a(FFZ)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lo/Tb;->b(FF)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 4
    move-result-object v0

    .line 5
    const/4 v4, 0x0

    .line 6
    move v1, p1

    .line 7
    move-object v2, p3

    .line 8
    move v3, p2

    .line 9
    move-object v5, p4

    .line 10
    invoke-virtual/range {v0 .. v5}, Lo/Tb;->c(I[III[I)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 8

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 4
    move-result-object v0

    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v6, 0x0

    .line 7
    move v1, p1

    .line 8
    move-object v2, p5

    .line 9
    move v3, p2

    .line 10
    move v4, p3

    .line 11
    move v5, p4

    .line 12
    invoke-virtual/range {v0 .. v7}, Lo/Tb;->d(I[IIII[II)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 4
    return-void
.end method

.method public final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 4
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v4, v2, :cond_0

    .line 15
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Lo/rd;

    .line 21
    invoke-virtual {v5, p1, p0}, Lo/rd;->b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 24
    add-int/2addr v4, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 28
    if-eqz v2, :cond_3

    .line 30
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_3

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    move-result v2

    .line 40
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 42
    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 47
    move-result v4

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v4, v3

    .line 50
    :goto_1
    const/high16 v5, 0x43870000    # 270.0f

    .line 52
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 58
    move-result v5

    .line 59
    neg-int v5, v5

    .line 60
    add-int/2addr v5, v4

    .line 61
    int-to-float v4, v5

    .line 62
    const/4 v5, 0x0

    .line 63
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 66
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 68
    if-eqz v4, :cond_2

    .line 70
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_2

    .line 76
    move v4, v0

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    move v4, v3

    .line 79
    :goto_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move v4, v3

    .line 84
    :goto_3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 86
    if-eqz v2, :cond_6

    .line 88
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_6

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 97
    move-result v2

    .line 98
    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 100
    if-eqz v5, :cond_4

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 105
    move-result v5

    .line 106
    int-to-float v5, v5

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 110
    move-result v6

    .line 111
    int-to-float v6, v6

    .line 112
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    :cond_4
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 117
    if-eqz v5, :cond_5

    .line 119
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_5

    .line 125
    move v5, v0

    .line 126
    goto :goto_4

    .line 127
    :cond_5
    move v5, v3

    .line 128
    :goto_4
    or-int/2addr v4, v5

    .line 129
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 132
    :cond_6
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 134
    if-eqz v2, :cond_9

    .line 136
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_9

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    move-result v2

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 149
    move-result v5

    .line 150
    iget-boolean v6, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 152
    if-eqz v6, :cond_7

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 157
    move-result v6

    .line 158
    goto :goto_5

    .line 159
    :cond_7
    move v6, v3

    .line 160
    :goto_5
    const/high16 v7, 0x42b40000    # 90.0f

    .line 162
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 165
    neg-int v6, v6

    .line 166
    int-to-float v6, v6

    .line 167
    neg-int v5, v5

    .line 168
    int-to-float v5, v5

    .line 169
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 172
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 174
    if-eqz v5, :cond_8

    .line 176
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_8

    .line 182
    move v5, v0

    .line 183
    goto :goto_6

    .line 184
    :cond_8
    move v5, v3

    .line 185
    :goto_6
    or-int/2addr v4, v5

    .line 186
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 189
    :cond_9
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 191
    if-eqz v2, :cond_c

    .line 193
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 196
    move-result v2

    .line 197
    if-nez v2, :cond_c

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    move-result v2

    .line 203
    const/high16 v5, 0x43340000    # 180.0f

    .line 205
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 208
    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 210
    if-eqz v5, :cond_a

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 215
    move-result v5

    .line 216
    neg-int v5, v5

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 220
    move-result v6

    .line 221
    add-int/2addr v6, v5

    .line 222
    int-to-float v5, v6

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 226
    move-result v6

    .line 227
    neg-int v6, v6

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 231
    move-result v7

    .line 232
    add-int/2addr v7, v6

    .line 233
    int-to-float v6, v7

    .line 234
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 237
    goto :goto_7

    .line 238
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 241
    move-result v5

    .line 242
    neg-int v5, v5

    .line 243
    int-to-float v5, v5

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 247
    move-result v6

    .line 248
    neg-int v6, v6

    .line 249
    int-to-float v6, v6

    .line 250
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 253
    :goto_7
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 255
    if-eqz v5, :cond_b

    .line 257
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 260
    move-result v5

    .line 261
    if-eqz v5, :cond_b

    .line 263
    move v3, v0

    .line 264
    :cond_b
    or-int/2addr v4, v3

    .line 265
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 268
    :cond_c
    if-nez v4, :cond_d

    .line 270
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 272
    if-eqz p1, :cond_d

    .line 274
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 277
    move-result p1

    .line 278
    if-lez p1, :cond_d

    .line 280
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 282
    invoke-virtual {p1}, Lo/qd;->f()Z

    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_d

    .line 288
    goto :goto_8

    .line 289
    :cond_d
    move v0, v4

    .line 290
    :goto_8
    if-eqz v0, :cond_e

    .line 292
    sget-object p1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 297
    :cond_e
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final f(Lo/Id;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lo/Id;->a:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, p0, :cond_0

    .line 10
    move v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->H(Landroid/view/View;)Lo/Id;

    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v4}, Lo/Ad;->j(Lo/Id;)V

    .line 22
    invoke-virtual {p1}, Lo/Id;->k()Z

    .line 25
    move-result p1

    .line 26
    const/4 v3, -0x1

    .line 27
    if-eqz p1, :cond_1

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v0, v3, v1, v2}, Lo/s2;->g(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    if-nez v1, :cond_2

    .line 41
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 43
    invoke-virtual {p1, v0, v3, v2}, Lo/s2;->f(Landroid/view/View;IZ)V

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 49
    iget-object v1, p1, Lo/s2;->b:Ljava/lang/Object;

    .line 51
    check-cast v1, Lo/ld;

    .line 53
    iget-object v1, v1, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 58
    move-result v1

    .line 59
    if-ltz v1, :cond_3

    .line 61
    iget-object v2, p1, Lo/s2;->c:Ljava/lang/Object;

    .line 63
    check-cast v2, Lo/L3;

    .line 65
    invoke-virtual {v2, v1}, Lo/L3;->h(I)V

    .line 68
    invoke-virtual {p1, v0}, Lo/s2;->w(Landroid/view/View;)V

    .line 71
    :goto_1
    return-void

    .line 72
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    const-string v2, "view is not a child, cannot hide "

    .line 78
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p1
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    if-eqz v3, :cond_0

    .line 18
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 20
    if-eqz v3, :cond_0

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 28
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 30
    if-nez v3, :cond_0

    .line 32
    move v3, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v3, v5

    .line 35
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 38
    move-result-object v6

    .line 39
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 41
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 43
    const/16 v9, 0x11

    .line 45
    const/16 v11, 0x21

    .line 47
    const/4 v13, 0x0

    .line 48
    const/4 v14, 0x2

    .line 49
    if-eqz v3, :cond_b

    .line 51
    if-eq v2, v14, :cond_1

    .line 53
    if-ne v2, v4, :cond_b

    .line 55
    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 57
    invoke-virtual {v3}, Lo/ud;->e()Z

    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_3

    .line 63
    if-ne v2, v14, :cond_2

    .line 65
    const/16 v3, 0x82

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v3, v11

    .line 69
    :goto_1
    invoke-virtual {v6, v0, v1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 72
    move-result-object v3

    .line 73
    if-nez v3, :cond_3

    .line 75
    move v3, v4

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move v3, v5

    .line 78
    :goto_2
    if-nez v3, :cond_8

    .line 80
    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 82
    invoke-virtual {v15}, Lo/ud;->d()Z

    .line 85
    move-result v15

    .line 86
    if-eqz v15, :cond_8

    .line 88
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 90
    invoke-virtual {v3}, Lo/ud;->C()I

    .line 93
    move-result v3

    .line 94
    if-ne v3, v4, :cond_4

    .line 96
    move v3, v4

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    move v3, v5

    .line 99
    :goto_3
    if-ne v2, v14, :cond_5

    .line 101
    move v15, v4

    .line 102
    goto :goto_4

    .line 103
    :cond_5
    move v15, v5

    .line 104
    :goto_4
    xor-int/2addr v3, v15

    .line 105
    if-eqz v3, :cond_6

    .line 107
    const/16 v3, 0x42

    .line 109
    goto :goto_5

    .line 110
    :cond_6
    move v3, v9

    .line 111
    :goto_5
    invoke-virtual {v6, v0, v1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 114
    move-result-object v3

    .line 115
    if-nez v3, :cond_7

    .line 117
    move v3, v4

    .line 118
    goto :goto_6

    .line 119
    :cond_7
    move v3, v5

    .line 120
    :cond_8
    :goto_6
    if-eqz v3, :cond_a

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    .line 125
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->A(Landroid/view/View;)Landroid/view/View;

    .line 128
    move-result-object v3

    .line 129
    if-nez v3, :cond_9

    .line 131
    return-object v13

    .line 132
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    .line 135
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 137
    invoke-virtual {v3, v1, v2, v8, v7}, Lo/ud;->S(Landroid/view/View;ILo/Ad;Lo/Fd;)Landroid/view/View;

    .line 140
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    .line 143
    :cond_a
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 146
    move-result-object v3

    .line 147
    goto :goto_7

    .line 148
    :cond_b
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 151
    move-result-object v6

    .line 152
    if-nez v6, :cond_d

    .line 154
    if-eqz v3, :cond_d

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    .line 159
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->A(Landroid/view/View;)Landroid/view/View;

    .line 162
    move-result-object v3

    .line 163
    if-nez v3, :cond_c

    .line 165
    return-object v13

    .line 166
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    .line 169
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 171
    invoke-virtual {v3, v1, v2, v8, v7}, Lo/ud;->S(Landroid/view/View;ILo/Ad;Lo/Fd;)Landroid/view/View;

    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    .line 178
    goto :goto_7

    .line 179
    :cond_d
    move-object v3, v6

    .line 180
    :goto_7
    if-eqz v3, :cond_f

    .line 182
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    .line 185
    move-result v6

    .line 186
    if-nez v6, :cond_f

    .line 188
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 191
    move-result-object v4

    .line 192
    if-nez v4, :cond_e

    .line 194
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 197
    move-result-object v1

    .line 198
    return-object v1

    .line 199
    :cond_e
    invoke-virtual {v0, v3, v13}, Landroidx/recyclerview/widget/RecyclerView;->U(Landroid/view/View;Landroid/view/View;)V

    .line 202
    return-object v1

    .line 203
    :cond_f
    if-eqz v3, :cond_23

    .line 205
    if-ne v3, v0, :cond_10

    .line 207
    goto/16 :goto_b

    .line 209
    :cond_10
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->A(Landroid/view/View;)Landroid/view/View;

    .line 212
    move-result-object v6

    .line 213
    if-nez v6, :cond_11

    .line 215
    move v4, v5

    .line 216
    goto/16 :goto_c

    .line 218
    :cond_11
    if-nez v1, :cond_12

    .line 220
    goto/16 :goto_c

    .line 222
    :cond_12
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->A(Landroid/view/View;)Landroid/view/View;

    .line 225
    move-result-object v6

    .line 226
    if-nez v6, :cond_13

    .line 228
    goto/16 :goto_c

    .line 230
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 233
    move-result v6

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 237
    move-result v7

    .line 238
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 240
    invoke-virtual {v8, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 243
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 246
    move-result v6

    .line 247
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 250
    move-result v7

    .line 251
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 253
    invoke-virtual {v13, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 256
    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 259
    invoke-virtual {v0, v3, v13}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 262
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 264
    invoke-virtual {v6}, Lo/ud;->C()I

    .line 267
    move-result v6

    .line 268
    if-ne v6, v4, :cond_14

    .line 270
    const/4 v6, -0x1

    .line 271
    goto :goto_8

    .line 272
    :cond_14
    move v6, v4

    .line 273
    :goto_8
    iget v15, v8, Landroid/graphics/Rect;->left:I

    .line 275
    iget v5, v13, Landroid/graphics/Rect;->left:I

    .line 277
    if-lt v15, v5, :cond_15

    .line 279
    iget v7, v8, Landroid/graphics/Rect;->right:I

    .line 281
    if-gt v7, v5, :cond_16

    .line 283
    :cond_15
    iget v7, v8, Landroid/graphics/Rect;->right:I

    .line 285
    iget v12, v13, Landroid/graphics/Rect;->right:I

    .line 287
    if-ge v7, v12, :cond_16

    .line 289
    move v5, v4

    .line 290
    goto :goto_9

    .line 291
    :cond_16
    iget v7, v8, Landroid/graphics/Rect;->right:I

    .line 293
    iget v12, v13, Landroid/graphics/Rect;->right:I

    .line 295
    if-gt v7, v12, :cond_17

    .line 297
    if-lt v15, v12, :cond_18

    .line 299
    :cond_17
    if-le v15, v5, :cond_18

    .line 301
    const/4 v5, -0x1

    .line 302
    goto :goto_9

    .line 303
    :cond_18
    const/4 v5, 0x0

    .line 304
    :goto_9
    iget v7, v8, Landroid/graphics/Rect;->top:I

    .line 306
    iget v12, v13, Landroid/graphics/Rect;->top:I

    .line 308
    if-lt v7, v12, :cond_19

    .line 310
    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    .line 312
    if-gt v15, v12, :cond_1a

    .line 314
    :cond_19
    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    .line 316
    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    .line 318
    if-ge v15, v10, :cond_1a

    .line 320
    move v7, v4

    .line 321
    goto :goto_a

    .line 322
    :cond_1a
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 324
    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    .line 326
    if-gt v8, v10, :cond_1b

    .line 328
    if-lt v7, v10, :cond_1c

    .line 330
    :cond_1b
    if-le v7, v12, :cond_1c

    .line 332
    const/4 v7, -0x1

    .line 333
    goto :goto_a

    .line 334
    :cond_1c
    const/4 v7, 0x0

    .line 335
    :goto_a
    if-eq v2, v4, :cond_22

    .line 337
    if-eq v2, v14, :cond_21

    .line 339
    if-eq v2, v9, :cond_20

    .line 341
    if-eq v2, v11, :cond_1f

    .line 343
    const/16 v6, 0x42

    .line 345
    if-eq v2, v6, :cond_1e

    .line 347
    const/16 v6, 0x82

    .line 349
    if-ne v2, v6, :cond_1d

    .line 351
    if-lez v7, :cond_23

    .line 353
    goto :goto_c

    .line 354
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    .line 358
    const-string v4, "Invalid direction: "

    .line 360
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    move-result-object v2

    .line 377
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 380
    throw v1

    .line 381
    :cond_1e
    if-lez v5, :cond_23

    .line 383
    goto :goto_c

    .line 384
    :cond_1f
    if-gez v7, :cond_23

    .line 386
    goto :goto_c

    .line 387
    :cond_20
    if-gez v5, :cond_23

    .line 389
    goto :goto_c

    .line 390
    :cond_21
    if-gtz v7, :cond_24

    .line 392
    if-nez v7, :cond_23

    .line 394
    mul-int/2addr v5, v6

    .line 395
    if-ltz v5, :cond_23

    .line 397
    goto :goto_c

    .line 398
    :cond_22
    if-ltz v7, :cond_24

    .line 400
    if-nez v7, :cond_23

    .line 402
    mul-int/2addr v5, v6

    .line 403
    if-gtz v5, :cond_23

    .line 405
    goto :goto_c

    .line 406
    :cond_23
    :goto_b
    const/4 v4, 0x0

    .line 407
    :cond_24
    :goto_c
    if-eqz v4, :cond_25

    .line 409
    goto :goto_d

    .line 410
    :cond_25
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 413
    move-result-object v3

    .line 414
    :goto_d
    return-object v3
.end method

.method public final g(Lo/rd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v1, "Cannot add item decoration during a scroll  or layout"

    .line 7
    invoke-virtual {v0, v1}, Lo/ud;->c(Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 22
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->N()V

    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 31
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lo/ud;->r()Lo/vd;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    const-string v2, "RecyclerView has no LayoutManager"

    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/ud;->s(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/vd;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lo/ud;->t(Landroid/view/ViewGroup$LayoutParams;)Lo/vd;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    .line 3
    return-object v0
.end method

.method public getAdapter()Lo/md;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 3
    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 v0, -0x1

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getClipToPadding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 3
    return v0
.end method

.method public getCompatAccessibilityDelegate()Lo/Kd;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lo/Kd;

    .line 3
    return-object v0
.end method

.method public getEdgeEffectFactory()Lo/pd;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Lo/pd;

    .line 3
    return-object v0
.end method

.method public getItemAnimator()Lo/qd;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 3
    return-object v0
.end method

.method public getItemDecorationCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLayoutManager()Lo/ud;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->S:I

    .line 3
    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    .line 3
    return v0
.end method

.method public getNanoTime()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getOnFlingListener()Lo/wd;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:Lo/wd;

    .line 3
    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->V:Z

    .line 3
    return v0
.end method

.method public getRecycledViewPool()Lo/zd;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 3
    invoke-virtual {v0}, Lo/Ad;->c()Lo/zd;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:I

    .line 3
    return v0
.end method

.method public final h(Lo/xd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public final hasNestedScrollingParent()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lo/Tb;->f(I)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    if-nez p1, :cond_0

    .line 9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    throw v0

    .line 39
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->B:I

    .line 41
    if-lez p1, :cond_2

    .line 43
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ""

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v0, "RecyclerView"

    .line 68
    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    .line 70
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :cond_2
    return-void
.end method

.method public final isAttachedToWindow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 3
    return v0
.end method

.method public final isLayoutSuppressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 3
    return v0
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lo/Tb;->d:Z

    .line 7
    return v0
.end method

.method public final k()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 3
    invoke-virtual {v0}, Lo/s2;->u()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const/4 v3, -0x1

    .line 10
    if-ge v2, v0, :cond_1

    .line 12
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 14
    invoke-virtual {v4, v2}, Lo/s2;->t(I)Landroid/view/View;

    .line 17
    move-result-object v4

    .line 18
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4}, Lo/Id;->p()Z

    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_0

    .line 28
    iput v3, v4, Lo/Id;->d:I

    .line 30
    iput v3, v4, Lo/Id;->g:I

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 37
    iget-object v2, v0, Lo/Ad;->c:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v4

    .line 43
    move v5, v1

    .line 44
    :goto_1
    if-ge v5, v4, :cond_2

    .line 46
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lo/Id;

    .line 52
    iput v3, v6, Lo/Id;->d:I

    .line 54
    iput v3, v6, Lo/Id;->g:I

    .line 56
    add-int/lit8 v5, v5, 0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-object v2, v0, Lo/Ad;->a:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 64
    move-result v4

    .line 65
    move v5, v1

    .line 66
    :goto_2
    if-ge v5, v4, :cond_3

    .line 68
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Lo/Id;

    .line 74
    iput v3, v6, Lo/Id;->d:I

    .line 76
    iput v3, v6, Lo/Id;->g:I

    .line 78
    add-int/lit8 v5, v5, 0x1

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    iget-object v2, v0, Lo/Ad;->b:Ljava/util/ArrayList;

    .line 83
    if-eqz v2, :cond_4

    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 88
    move-result v2

    .line 89
    :goto_3
    if-ge v1, v2, :cond_4

    .line 91
    iget-object v4, v0, Lo/Ad;->b:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lo/Id;

    .line 99
    iput v3, v4, Lo/Id;->d:I

    .line 101
    iput v3, v4, Lo/Id;->g:I

    .line 103
    add-int/lit8 v1, v1, 0x1

    .line 105
    goto :goto_3

    .line 106
    :cond_4
    return-void
.end method

.method public final l(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    if-lez p1, :cond_0

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 15
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 20
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 28
    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 36
    if-gez p1, :cond_1

    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 40
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 45
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 48
    move-result p1

    .line 49
    or-int/2addr v0, p1

    .line 50
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 52
    if-eqz p1, :cond_2

    .line 54
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 60
    if-lez p2, :cond_2

    .line 62
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 64
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 67
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 69
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 72
    move-result p1

    .line 73
    or-int/2addr v0, p1

    .line 74
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 76
    if-eqz p1, :cond_3

    .line 78
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_3

    .line 84
    if-gez p2, :cond_3

    .line 86
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 88
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 91
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 93
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 96
    move-result p1

    .line 97
    or-int/2addr v0, p1

    .line 98
    :cond_3
    if-eqz v0, :cond_4

    .line 100
    sget-object p1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 105
    :cond_4
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Lo/q0;

    .line 3
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 5
    const-string v2, "RV FullInvalidate"

    .line 7
    if-eqz v1, :cond_3

    .line 9
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 11
    if-eqz v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lo/q0;->f()Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-virtual {v0}, Lo/q0;->f()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 30
    sget v0, Lo/pg;->a:I

    .line 32
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    .line 38
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 41
    :cond_2
    return-void

    .line 42
    :cond_3
    :goto_0
    sget v0, Lo/pg;->a:I

    .line 44
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    .line 50
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 53
    return-void
.end method

.method public final n(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    sget-object v0, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    .line 15
    move-result v0

    .line 16
    invoke-static {p1, v1, v0}, Lo/ud;->g(III)I

    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    .line 32
    move-result v0

    .line 33
    invoke-static {p2, v1, v0}, Lo/ud;->g(III)I

    .line 36
    move-result p2

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 40
    return-void
.end method

.method public final o()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 5
    const-string v2, "RecyclerView"

    .line 7
    if-nez v1, :cond_0

    .line 9
    const-string v1, "No adapter attached; skipping layout"

    .line 11
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 17
    if-nez v1, :cond_1

    .line 19
    const-string v1, "No layout manager attached; skipping layout"

    .line 21
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 27
    const/4 v3, 0x0

    .line 28
    iput-boolean v3, v1, Lo/Fd;->i:Z

    .line 30
    iget v4, v1, Lo/Fd;->d:I

    .line 32
    const/4 v5, 0x1

    .line 33
    if-ne v4, v5, :cond_2

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 38
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 40
    invoke-virtual {v4, v0}, Lo/ud;->p0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->q()V

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->d:Lo/q0;

    .line 49
    iget-object v6, v4, Lo/q0;->c:Ljava/lang/Object;

    .line 51
    check-cast v6, Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_3

    .line 59
    iget-object v4, v4, Lo/q0;->a:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_3

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 70
    iget v4, v4, Lo/ud;->n:I

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 75
    move-result v6

    .line 76
    if-ne v4, v6, :cond_5

    .line 78
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 80
    iget v4, v4, Lo/ud;->o:I

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 85
    move-result v6

    .line 86
    if-eq v4, v6, :cond_4

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 91
    invoke-virtual {v4, v0}, Lo/ud;->p0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 94
    goto :goto_1

    .line 95
    :cond_5
    :goto_0
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 97
    invoke-virtual {v4, v0}, Lo/ud;->p0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->q()V

    .line 103
    :goto_1
    const/4 v4, 0x4

    .line 104
    invoke-virtual {v1, v4}, Lo/Fd;->a(I)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->P()V

    .line 113
    iput v5, v1, Lo/Fd;->d:I

    .line 115
    iget-boolean v6, v1, Lo/Fd;->j:Z

    .line 117
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 119
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Lo/H1;

    .line 121
    if-eqz v6, :cond_20

    .line 123
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 125
    invoke-virtual {v6}, Lo/s2;->m()I

    .line 128
    move-result v6

    .line 129
    sub-int/2addr v6, v5

    .line 130
    :goto_2
    if-ltz v6, :cond_14

    .line 132
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 134
    invoke-virtual {v10, v6}, Lo/s2;->l(I)Landroid/view/View;

    .line 137
    move-result-object v10

    .line 138
    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 141
    move-result-object v10

    .line 142
    invoke-virtual {v10}, Lo/Id;->p()Z

    .line 145
    move-result v11

    .line 146
    if-eqz v11, :cond_6

    .line 148
    goto/16 :goto_7

    .line 150
    :cond_6
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->G(Lo/Id;)J

    .line 153
    move-result-wide v11

    .line 154
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 156
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    new-instance v13, Lo/Wb;

    .line 161
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-virtual {v13, v10}, Lo/Wb;->a(Lo/Id;)V

    .line 167
    iget-object v14, v9, Lo/H1;->c:Ljava/lang/Object;

    .line 169
    check-cast v14, Lo/za;

    .line 171
    invoke-virtual {v14, v11, v12}, Lo/za;->b(J)Ljava/lang/Object;

    .line 174
    move-result-object v14

    .line 175
    check-cast v14, Lo/Id;

    .line 177
    if-eqz v14, :cond_12

    .line 179
    invoke-virtual {v14}, Lo/Id;->p()Z

    .line 182
    move-result v15

    .line 183
    if-nez v15, :cond_12

    .line 185
    iget-object v15, v9, Lo/H1;->b:Ljava/lang/Object;

    .line 187
    check-cast v15, Lo/Qe;

    .line 189
    invoke-virtual {v15, v14}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    move-result-object v16

    .line 193
    move-object/from16 v7, v16

    .line 195
    check-cast v7, Lo/Ih;

    .line 197
    if-eqz v7, :cond_7

    .line 199
    iget v7, v7, Lo/Ih;->a:I

    .line 201
    and-int/2addr v7, v5

    .line 202
    if-eqz v7, :cond_7

    .line 204
    move v7, v5

    .line 205
    goto :goto_3

    .line 206
    :cond_7
    move v7, v3

    .line 207
    :goto_3
    invoke-virtual {v15, v10}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    move-result-object v15

    .line 211
    check-cast v15, Lo/Ih;

    .line 213
    if-eqz v15, :cond_8

    .line 215
    iget v15, v15, Lo/Ih;->a:I

    .line 217
    and-int/2addr v15, v5

    .line 218
    if-eqz v15, :cond_8

    .line 220
    move v15, v5

    .line 221
    goto :goto_4

    .line 222
    :cond_8
    move v15, v3

    .line 223
    :goto_4
    if-eqz v7, :cond_9

    .line 225
    if-ne v14, v10, :cond_9

    .line 227
    invoke-virtual {v9, v10, v13}, Lo/H1;->a(Lo/Id;Lo/Wb;)V

    .line 230
    goto/16 :goto_7

    .line 232
    :cond_9
    invoke-virtual {v9, v14, v4}, Lo/H1;->J(Lo/Id;I)Lo/Wb;

    .line 235
    move-result-object v5

    .line 236
    invoke-virtual {v9, v10, v13}, Lo/H1;->a(Lo/Id;Lo/Wb;)V

    .line 239
    const/16 v13, 0x8

    .line 241
    invoke-virtual {v9, v10, v13}, Lo/H1;->J(Lo/Id;I)Lo/Wb;

    .line 244
    move-result-object v13

    .line 245
    if-nez v5, :cond_e

    .line 247
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 249
    invoke-virtual {v5}, Lo/s2;->m()I

    .line 252
    move-result v5

    .line 253
    move v7, v3

    .line 254
    :goto_5
    if-ge v7, v5, :cond_d

    .line 256
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 258
    invoke-virtual {v13, v7}, Lo/s2;->l(I)Landroid/view/View;

    .line 261
    move-result-object v13

    .line 262
    invoke-static {v13}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 265
    move-result-object v13

    .line 266
    if-ne v13, v10, :cond_a

    .line 268
    goto :goto_6

    .line 269
    :cond_a
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->G(Lo/Id;)J

    .line 272
    move-result-wide v17

    .line 273
    cmp-long v15, v17, v11

    .line 275
    if-nez v15, :cond_c

    .line 277
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 279
    const-string v2, " \n View Holder 2:"

    .line 281
    if-eqz v1, :cond_b

    .line 283
    iget-boolean v1, v1, Lo/md;->b:Z

    .line 285
    if-eqz v1, :cond_b

    .line 287
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    .line 291
    const-string v4, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    .line 293
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 308
    move-result-object v2

    .line 309
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    move-result-object v2

    .line 316
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 319
    throw v1

    .line 320
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    .line 324
    const-string v4, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    .line 326
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    move-result-object v2

    .line 349
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 352
    throw v1

    .line 353
    :cond_c
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 355
    goto :goto_5

    .line 356
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 358
    const-string v7, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    .line 360
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    const-string v7, " cannot be found but it is necessary for "

    .line 368
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 377
    move-result-object v7

    .line 378
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    move-result-object v5

    .line 385
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    goto :goto_7

    .line 389
    :cond_e
    invoke-virtual {v14, v3}, Lo/Id;->o(Z)V

    .line 392
    if-eqz v7, :cond_f

    .line 394
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->f(Lo/Id;)V

    .line 397
    :cond_f
    if-eq v14, v10, :cond_11

    .line 399
    if-eqz v15, :cond_10

    .line 401
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->f(Lo/Id;)V

    .line 404
    :cond_10
    iput-object v10, v14, Lo/Id;->h:Lo/Id;

    .line 406
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->f(Lo/Id;)V

    .line 409
    invoke-virtual {v8, v14}, Lo/Ad;->j(Lo/Id;)V

    .line 412
    invoke-virtual {v10, v3}, Lo/Id;->o(Z)V

    .line 415
    iput-object v14, v10, Lo/Id;->i:Lo/Id;

    .line 417
    :cond_11
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 419
    invoke-virtual {v7, v14, v10, v5, v13}, Lo/qd;->a(Lo/Id;Lo/Id;Lo/Wb;Lo/Wb;)Z

    .line 422
    move-result v5

    .line 423
    if-eqz v5, :cond_13

    .line 425
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->S()V

    .line 428
    goto :goto_7

    .line 429
    :cond_12
    invoke-virtual {v9, v10, v13}, Lo/H1;->a(Lo/Id;Lo/Wb;)V

    .line 432
    :cond_13
    :goto_7
    add-int/lit8 v6, v6, -0x1

    .line 434
    const/4 v5, 0x1

    .line 435
    goto/16 :goto_2

    .line 437
    :cond_14
    iget-object v2, v9, Lo/H1;->b:Ljava/lang/Object;

    .line 439
    check-cast v2, Lo/Qe;

    .line 441
    iget v4, v2, Lo/Qe;->c:I

    .line 443
    const/4 v5, 0x1

    .line 444
    sub-int/2addr v4, v5

    .line 445
    :goto_8
    if-ltz v4, :cond_20

    .line 447
    invoke-virtual {v2, v4}, Lo/Qe;->f(I)Ljava/lang/Object;

    .line 450
    move-result-object v5

    .line 451
    move-object v11, v5

    .line 452
    check-cast v11, Lo/Id;

    .line 454
    invoke-virtual {v2, v4}, Lo/Qe;->g(I)Ljava/lang/Object;

    .line 457
    move-result-object v5

    .line 458
    check-cast v5, Lo/Ih;

    .line 460
    iget v6, v5, Lo/Ih;->a:I

    .line 462
    and-int/lit8 v7, v6, 0x3

    .line 464
    const/4 v10, 0x3

    .line 465
    iget-object v12, v0, Landroidx/recyclerview/widget/RecyclerView;->r0:Lo/ld;

    .line 467
    if-ne v7, v10, :cond_15

    .line 469
    iget-object v6, v12, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 471
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 473
    iget-object v10, v11, Lo/Id;->a:Landroid/view/View;

    .line 475
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 477
    invoke-virtual {v7, v10, v6}, Lo/ud;->i0(Landroid/view/View;Lo/Ad;)V

    .line 480
    :goto_9
    const/4 v7, 0x0

    .line 481
    goto/16 :goto_e

    .line 483
    :cond_15
    and-int/lit8 v7, v6, 0x1

    .line 485
    if-eqz v7, :cond_17

    .line 487
    iget-object v6, v5, Lo/Ih;->b:Lo/Wb;

    .line 489
    if-nez v6, :cond_16

    .line 491
    iget-object v6, v12, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 493
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 495
    iget-object v10, v11, Lo/Id;->a:Landroid/view/View;

    .line 497
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 499
    invoke-virtual {v7, v10, v6}, Lo/ud;->i0(Landroid/view/View;Lo/Ad;)V

    .line 502
    goto :goto_9

    .line 503
    :cond_16
    iget-object v7, v5, Lo/Ih;->c:Lo/Wb;

    .line 505
    invoke-virtual {v12, v11, v6, v7}, Lo/ld;->g(Lo/Id;Lo/Wb;Lo/Wb;)V

    .line 508
    goto :goto_9

    .line 509
    :cond_17
    and-int/lit8 v7, v6, 0xe

    .line 511
    const/16 v10, 0xe

    .line 513
    if-ne v7, v10, :cond_18

    .line 515
    iget-object v6, v5, Lo/Ih;->b:Lo/Wb;

    .line 517
    iget-object v7, v5, Lo/Ih;->c:Lo/Wb;

    .line 519
    invoke-virtual {v12, v11, v6, v7}, Lo/ld;->f(Lo/Id;Lo/Wb;Lo/Wb;)V

    .line 522
    goto :goto_9

    .line 523
    :cond_18
    and-int/lit8 v7, v6, 0xc

    .line 525
    const/16 v10, 0xc

    .line 527
    if-ne v7, v10, :cond_1d

    .line 529
    iget-object v6, v5, Lo/Ih;->b:Lo/Wb;

    .line 531
    iget-object v7, v5, Lo/Ih;->c:Lo/Wb;

    .line 533
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    invoke-virtual {v11, v3}, Lo/Id;->o(Z)V

    .line 539
    iget-object v15, v12, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 541
    iget-boolean v10, v15, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 543
    if-eqz v10, :cond_19

    .line 545
    iget-object v10, v15, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 547
    invoke-virtual {v10, v11, v11, v6, v7}, Lo/qd;->a(Lo/Id;Lo/Id;Lo/Wb;Lo/Wb;)Z

    .line 550
    move-result v6

    .line 551
    if-eqz v6, :cond_1c

    .line 553
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView;->S()V

    .line 556
    goto :goto_c

    .line 557
    :cond_19
    iget-object v10, v15, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 559
    check-cast v10, Lo/B5;

    .line 561
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    iget v12, v6, Lo/Wb;->a:I

    .line 566
    iget v14, v7, Lo/Wb;->a:I

    .line 568
    if-ne v12, v14, :cond_1b

    .line 570
    iget v13, v6, Lo/Wb;->b:I

    .line 572
    iget v3, v7, Lo/Wb;->b:I

    .line 574
    if-eq v13, v3, :cond_1a

    .line 576
    goto :goto_a

    .line 577
    :cond_1a
    invoke-virtual {v10, v11}, Lo/qd;->c(Lo/Id;)V

    .line 580
    move-object v6, v15

    .line 581
    const/4 v3, 0x0

    .line 582
    goto :goto_b

    .line 583
    :cond_1b
    :goto_a
    iget v13, v6, Lo/Wb;->b:I

    .line 585
    iget v3, v7, Lo/Wb;->b:I

    .line 587
    move-object v6, v15

    .line 588
    move v15, v3

    .line 589
    invoke-virtual/range {v10 .. v15}, Lo/B5;->g(Lo/Id;IIII)Z

    .line 592
    move-result v3

    .line 593
    :goto_b
    if-eqz v3, :cond_1c

    .line 595
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->S()V

    .line 598
    :cond_1c
    :goto_c
    const/4 v3, 0x0

    .line 599
    goto :goto_9

    .line 600
    :cond_1d
    and-int/lit8 v3, v6, 0x4

    .line 602
    if-eqz v3, :cond_1f

    .line 604
    iget-object v3, v5, Lo/Ih;->b:Lo/Wb;

    .line 606
    const/4 v7, 0x0

    .line 607
    invoke-virtual {v12, v11, v3, v7}, Lo/ld;->g(Lo/Id;Lo/Wb;Lo/Wb;)V

    .line 610
    :cond_1e
    :goto_d
    const/4 v3, 0x0

    .line 611
    goto :goto_e

    .line 612
    :cond_1f
    const/4 v7, 0x0

    .line 613
    and-int/lit8 v3, v6, 0x8

    .line 615
    if-eqz v3, :cond_1e

    .line 617
    iget-object v3, v5, Lo/Ih;->b:Lo/Wb;

    .line 619
    iget-object v6, v5, Lo/Ih;->c:Lo/Wb;

    .line 621
    invoke-virtual {v12, v11, v3, v6}, Lo/ld;->f(Lo/Id;Lo/Wb;Lo/Wb;)V

    .line 624
    goto :goto_d

    .line 625
    :goto_e
    iput v3, v5, Lo/Ih;->a:I

    .line 627
    iput-object v7, v5, Lo/Ih;->b:Lo/Wb;

    .line 629
    iput-object v7, v5, Lo/Ih;->c:Lo/Wb;

    .line 631
    sget-object v3, Lo/Ih;->d:Lo/Jc;

    .line 633
    invoke-virtual {v3, v5}, Lo/Jc;->c(Ljava/lang/Object;)Z

    .line 636
    add-int/lit8 v4, v4, -0x1

    .line 638
    const/4 v3, 0x0

    .line 639
    goto/16 :goto_8

    .line 641
    :cond_20
    const/4 v7, 0x0

    .line 642
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 644
    invoke-virtual {v2, v8}, Lo/ud;->h0(Lo/Ad;)V

    .line 647
    iget v2, v1, Lo/Fd;->e:I

    .line 649
    iput v2, v1, Lo/Fd;->b:I

    .line 651
    const/4 v3, 0x0

    .line 652
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 654
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->z:Z

    .line 656
    iput-boolean v3, v1, Lo/Fd;->j:Z

    .line 658
    iput-boolean v3, v1, Lo/Fd;->k:Z

    .line 660
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 662
    iput-boolean v3, v2, Lo/ud;->f:Z

    .line 664
    iget-object v2, v8, Lo/Ad;->b:Ljava/util/ArrayList;

    .line 666
    if-eqz v2, :cond_21

    .line 668
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 671
    :cond_21
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 673
    iget-boolean v4, v2, Lo/ud;->k:Z

    .line 675
    if-eqz v4, :cond_22

    .line 677
    iput v3, v2, Lo/ud;->j:I

    .line 679
    iput-boolean v3, v2, Lo/ud;->k:Z

    .line 681
    invoke-virtual {v8}, Lo/Ad;->k()V

    .line 684
    :cond_22
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 686
    invoke-virtual {v2, v1}, Lo/ud;->c0(Lo/Fd;)V

    .line 689
    const/4 v2, 0x1

    .line 690
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->Q(Z)V

    .line 693
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    .line 696
    iget-object v2, v9, Lo/H1;->b:Ljava/lang/Object;

    .line 698
    check-cast v2, Lo/Qe;

    .line 700
    invoke-virtual {v2}, Lo/Qe;->clear()V

    .line 703
    iget-object v2, v9, Lo/H1;->c:Ljava/lang/Object;

    .line 705
    check-cast v2, Lo/za;

    .line 707
    invoke-virtual {v2}, Lo/za;->a()V

    .line 710
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->k0:[I

    .line 712
    aget v4, v2, v3

    .line 714
    const/4 v5, 0x1

    .line 715
    aget v6, v2, v5

    .line 717
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->C([I)V

    .line 720
    aget v8, v2, v3

    .line 722
    if-ne v8, v4, :cond_24

    .line 724
    aget v2, v2, v5

    .line 726
    if-eq v2, v6, :cond_23

    .line 728
    goto :goto_f

    .line 729
    :cond_23
    move v5, v3

    .line 730
    goto :goto_10

    .line 731
    :cond_24
    :goto_f
    const/4 v5, 0x1

    .line 732
    :goto_10
    if-eqz v5, :cond_25

    .line 734
    invoke-virtual {v0, v3, v3}, Landroidx/recyclerview/widget/RecyclerView;->t(II)V

    .line 737
    :cond_25
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->V:Z

    .line 739
    const-wide/16 v4, -0x1

    .line 741
    const/4 v6, -0x1

    .line 742
    if-eqz v2, :cond_37

    .line 744
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 746
    if-eqz v2, :cond_37

    .line 748
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    .line 751
    move-result v2

    .line 752
    if-eqz v2, :cond_37

    .line 754
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 757
    move-result v2

    .line 758
    const/high16 v8, 0x60000

    .line 760
    if-eq v2, v8, :cond_37

    .line 762
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 765
    move-result v2

    .line 766
    const/high16 v8, 0x20000

    .line 768
    if-ne v2, v8, :cond_26

    .line 770
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    .line 773
    move-result v2

    .line 774
    if-eqz v2, :cond_26

    .line 776
    goto/16 :goto_1a

    .line 778
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    .line 781
    move-result v2

    .line 782
    if-nez v2, :cond_27

    .line 784
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 787
    move-result-object v2

    .line 788
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 790
    iget-object v8, v8, Lo/s2;->d:Ljava/lang/Object;

    .line 792
    check-cast v8, Ljava/util/ArrayList;

    .line 794
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 797
    move-result v2

    .line 798
    if-nez v2, :cond_27

    .line 800
    goto/16 :goto_1a

    .line 802
    :cond_27
    iget-wide v8, v1, Lo/Fd;->m:J

    .line 804
    cmp-long v2, v8, v4

    .line 806
    if-eqz v2, :cond_2b

    .line 808
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 810
    iget-boolean v2, v2, Lo/md;->b:Z

    .line 812
    if-eqz v2, :cond_2b

    .line 814
    if-nez v2, :cond_28

    .line 816
    goto :goto_13

    .line 817
    :cond_28
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 819
    invoke-virtual {v2}, Lo/s2;->u()I

    .line 822
    move-result v2

    .line 823
    move v10, v3

    .line 824
    move-object v11, v7

    .line 825
    :goto_11
    if-ge v10, v2, :cond_2c

    .line 827
    iget-object v12, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 829
    invoke-virtual {v12, v10}, Lo/s2;->t(I)Landroid/view/View;

    .line 832
    move-result-object v12

    .line 833
    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 836
    move-result-object v12

    .line 837
    if-eqz v12, :cond_2a

    .line 839
    invoke-virtual {v12}, Lo/Id;->i()Z

    .line 842
    move-result v13

    .line 843
    if-nez v13, :cond_2a

    .line 845
    iget-wide v13, v12, Lo/Id;->e:J

    .line 847
    cmp-long v13, v13, v8

    .line 849
    if-nez v13, :cond_2a

    .line 851
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 853
    iget-object v11, v11, Lo/s2;->d:Ljava/lang/Object;

    .line 855
    check-cast v11, Ljava/util/ArrayList;

    .line 857
    iget-object v13, v12, Lo/Id;->a:Landroid/view/View;

    .line 859
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 862
    move-result v11

    .line 863
    if-eqz v11, :cond_29

    .line 865
    move-object v11, v12

    .line 866
    goto :goto_12

    .line 867
    :cond_29
    move-object v11, v12

    .line 868
    goto :goto_14

    .line 869
    :cond_2a
    :goto_12
    add-int/lit8 v10, v10, 0x1

    .line 871
    goto :goto_11

    .line 872
    :cond_2b
    :goto_13
    move-object v11, v7

    .line 873
    :cond_2c
    :goto_14
    if-eqz v11, :cond_2e

    .line 875
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 877
    iget-object v2, v2, Lo/s2;->d:Ljava/lang/Object;

    .line 879
    check-cast v2, Ljava/util/ArrayList;

    .line 881
    iget-object v8, v11, Lo/Id;->a:Landroid/view/View;

    .line 883
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 886
    move-result v2

    .line 887
    if-nez v2, :cond_2e

    .line 889
    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    .line 892
    move-result v2

    .line 893
    if-nez v2, :cond_2d

    .line 895
    goto :goto_15

    .line 896
    :cond_2d
    move-object v7, v8

    .line 897
    goto :goto_19

    .line 898
    :cond_2e
    :goto_15
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 900
    invoke-virtual {v2}, Lo/s2;->m()I

    .line 903
    move-result v2

    .line 904
    if-lez v2, :cond_35

    .line 906
    iget v2, v1, Lo/Fd;->l:I

    .line 908
    if-eq v2, v6, :cond_2f

    .line 910
    move v3, v2

    .line 911
    :cond_2f
    invoke-virtual {v1}, Lo/Fd;->b()I

    .line 914
    move-result v2

    .line 915
    move v8, v3

    .line 916
    :goto_16
    if-ge v8, v2, :cond_32

    .line 918
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->E(I)Lo/Id;

    .line 921
    move-result-object v9

    .line 922
    if-nez v9, :cond_30

    .line 924
    goto :goto_17

    .line 925
    :cond_30
    iget-object v9, v9, Lo/Id;->a:Landroid/view/View;

    .line 927
    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    .line 930
    move-result v10

    .line 931
    if-eqz v10, :cond_31

    .line 933
    move-object v7, v9

    .line 934
    goto :goto_19

    .line 935
    :cond_31
    add-int/lit8 v8, v8, 0x1

    .line 937
    goto :goto_16

    .line 938
    :cond_32
    :goto_17
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 941
    move-result v2

    .line 942
    const/4 v3, 0x1

    .line 943
    sub-int/2addr v2, v3

    .line 944
    :goto_18
    if-ltz v2, :cond_35

    .line 946
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->E(I)Lo/Id;

    .line 949
    move-result-object v3

    .line 950
    if-nez v3, :cond_33

    .line 952
    goto :goto_19

    .line 953
    :cond_33
    iget-object v3, v3, Lo/Id;->a:Landroid/view/View;

    .line 955
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    .line 958
    move-result v8

    .line 959
    if-eqz v8, :cond_34

    .line 961
    move-object v7, v3

    .line 962
    goto :goto_19

    .line 963
    :cond_34
    add-int/lit8 v2, v2, -0x1

    .line 965
    goto :goto_18

    .line 966
    :cond_35
    :goto_19
    if-eqz v7, :cond_37

    .line 968
    iget v2, v1, Lo/Fd;->n:I

    .line 970
    int-to-long v8, v2

    .line 971
    cmp-long v3, v8, v4

    .line 973
    if-eqz v3, :cond_36

    .line 975
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 978
    move-result-object v2

    .line 979
    if-eqz v2, :cond_36

    .line 981
    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    .line 984
    move-result v3

    .line 985
    if-eqz v3, :cond_36

    .line 987
    move-object v7, v2

    .line 988
    :cond_36
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 991
    :cond_37
    :goto_1a
    iput-wide v4, v1, Lo/Fd;->m:J

    .line 993
    iput v6, v1, Lo/Fd;->l:I

    .line 995
    iput v6, v1, Lo/Fd;->n:I

    .line 997
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:I

    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 10
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 12
    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 20
    move v2, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v0

    .line 23
    :goto_0
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 25
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 27
    if-eqz v2, :cond_1

    .line 29
    iput-boolean v1, v2, Lo/ud;->g:Z

    .line 31
    invoke-virtual {v2, p0}, Lo/ud;->Q(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 34
    :cond_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    .line 36
    sget-object v0, Lo/T8;->e:Ljava/lang/ThreadLocal;

    .line 38
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lo/T8;

    .line 44
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Lo/T8;

    .line 46
    if-nez v1, :cond_3

    .line 48
    new-instance v1, Lo/T8;

    .line 50
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    .line 55
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iput-object v2, v1, Lo/T8;->a:Ljava/util/ArrayList;

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iput-object v2, v1, Lo/T8;->d:Ljava/util/ArrayList;

    .line 67
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Lo/T8;

    .line 69
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_2

    .line 81
    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    .line 86
    move-result v1

    .line 87
    const/high16 v2, 0x41f00000    # 30.0f

    .line 89
    cmpl-float v2, v1, v2

    .line 91
    if-ltz v2, :cond_2

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/high16 v1, 0x42700000    # 60.0f

    .line 96
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Lo/T8;

    .line 98
    const v3, 0x4e6e6b28    # 1.0E9f

    .line 101
    div-float/2addr v3, v1

    .line 102
    float-to-long v3, v3

    .line 103
    iput-wide v3, v2, Lo/T8;->c:J

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 108
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Lo/T8;

    .line 110
    iget-object v0, v0, Lo/T8;->a:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lo/qd;->e()V

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Lo/Hd;

    .line 17
    iget-object v2, v1, Lo/Hd;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 22
    iget-object v1, v1, Lo/Hd;->c:Landroid/widget/OverScroller;

    .line 24
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 27
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 29
    if-eqz v1, :cond_1

    .line 31
    iget-object v1, v1, Lo/ud;->e:Lo/aa;

    .line 33
    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v1}, Lo/aa;->i()V

    .line 38
    :cond_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 42
    if-eqz v1, :cond_2

    .line 44
    iput-boolean v0, v1, Lo/ud;->g:Z

    .line 46
    invoke-virtual {v1, p0}, Lo/ud;->R(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 49
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->p0:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:Lo/J2;

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 59
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lo/H1;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    :goto_0
    sget-object v0, Lo/Ih;->d:Lo/Jc;

    .line 66
    invoke-virtual {v0}, Lo/Jc;->a()Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Lo/T8;

    .line 75
    if-eqz v0, :cond_4

    .line 77
    iget-object v0, v0, Lo/T8;->a:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Lo/T8;

    .line 85
    :cond_4
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lo/rd;

    .line 19
    invoke-virtual {v2, p0}, Lo/rd;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    return v1

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 15
    move-result v0

    .line 16
    const/16 v2, 0x8

    .line 18
    if-ne v0, v2, :cond_8

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 23
    move-result v0

    .line 24
    and-int/lit8 v0, v0, 0x2

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_4

    .line 29
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 31
    invoke-virtual {v0}, Lo/ud;->e()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 37
    const/16 v0, 0x9

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 42
    move-result v0

    .line 43
    neg-float v0, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move v0, v2

    .line 46
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 48
    invoke-virtual {v3}, Lo/ud;->d()Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3

    .line 54
    const/16 v3, 0xa

    .line 56
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 59
    move-result v3

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    :goto_1
    move v3, v2

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 66
    move-result v0

    .line 67
    const/high16 v3, 0x400000

    .line 69
    and-int/2addr v0, v3

    .line 70
    if-eqz v0, :cond_6

    .line 72
    const/16 v0, 0x1a

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 77
    move-result v0

    .line 78
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 80
    invoke-virtual {v3}, Lo/ud;->e()Z

    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_5

    .line 86
    neg-float v0, v0

    .line 87
    goto :goto_1

    .line 88
    :cond_5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 90
    invoke-virtual {v3}, Lo/ud;->d()Z

    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_6

    .line 96
    move v3, v0

    .line 97
    move v0, v2

    .line 98
    goto :goto_2

    .line 99
    :cond_6
    move v0, v2

    .line 100
    move v3, v0

    .line 101
    :goto_2
    cmpl-float v4, v0, v2

    .line 103
    if-nez v4, :cond_7

    .line 105
    cmpl-float v2, v3, v2

    .line 107
    if-eqz v2, :cond_8

    .line 109
    :cond_7
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->T:F

    .line 111
    mul-float/2addr v3, v2

    .line 112
    float-to-int v2, v3

    .line 113
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->U:F

    .line 115
    mul-float/2addr v0, v3

    .line 116
    float-to-int v0, v0

    .line 117
    invoke-virtual {p0, v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->W(IILandroid/view/MotionEvent;)Z

    .line 120
    :cond_8
    return v1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Lo/s7;

    .line 10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->B(Landroid/view/MotionEvent;)Z

    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    .line 20
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 23
    return v2

    .line 24
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 26
    if-nez v0, :cond_2

    .line 28
    return v1

    .line 29
    :cond_2
    invoke-virtual {v0}, Lo/ud;->d()Z

    .line 32
    move-result v0

    .line 33
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 35
    invoke-virtual {v3}, Lo/ud;->e()Z

    .line 38
    move-result v3

    .line 39
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 41
    if-nez v4, :cond_3

    .line 43
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 46
    move-result-object v4

    .line 47
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 49
    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 51
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 57
    move-result v4

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 61
    move-result v5

    .line 62
    const/4 v6, 0x2

    .line 63
    const/high16 v7, 0x3f000000    # 0.5f

    .line 65
    if-eqz v4, :cond_c

    .line 67
    if-eq v4, v2, :cond_b

    .line 69
    if-eq v4, v6, :cond_7

    .line 71
    const/4 v0, 0x3

    .line 72
    if-eq v4, v0, :cond_6

    .line 74
    const/4 v0, 0x5

    .line 75
    if-eq v4, v0, :cond_5

    .line 77
    const/4 v0, 0x6

    .line 78
    if-eq v4, v0, :cond_4

    .line 80
    goto/16 :goto_1

    .line 82
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->R(Landroid/view/MotionEvent;)V

    .line 85
    goto/16 :goto_1

    .line 87
    :cond_5
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 90
    move-result v0

    .line 91
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 93
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 96
    move-result v0

    .line 97
    add-float/2addr v0, v7

    .line 98
    float-to-int v0, v0

    .line 99
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 101
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 103
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 106
    move-result p1

    .line 107
    add-float/2addr p1, v7

    .line 108
    float-to-int p1, p1

    .line 109
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 111
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 113
    goto/16 :goto_1

    .line 115
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    .line 118
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 121
    goto/16 :goto_1

    .line 123
    :cond_7
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 125
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 128
    move-result v4

    .line 129
    if-gez v4, :cond_8

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    .line 133
    const-string v0, "Error processing scroll; pointer index for id "

    .line 135
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string v0, " not found. Did any MotionEvents get skipped?"

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p1

    .line 152
    const-string v0, "RecyclerView"

    .line 154
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v1

    .line 158
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 161
    move-result v5

    .line 162
    add-float/2addr v5, v7

    .line 163
    float-to-int v5, v5

    .line 164
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 167
    move-result p1

    .line 168
    add-float/2addr p1, v7

    .line 169
    float-to-int p1, p1

    .line 170
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->I:I

    .line 172
    if-eq v4, v2, :cond_10

    .line 174
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 176
    sub-int v4, v5, v4

    .line 178
    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 180
    sub-int v6, p1, v6

    .line 182
    if-eqz v0, :cond_9

    .line 184
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 187
    move-result v0

    .line 188
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 190
    if-le v0, v4, :cond_9

    .line 192
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 194
    move v0, v2

    .line 195
    goto :goto_0

    .line 196
    :cond_9
    move v0, v1

    .line 197
    :goto_0
    if-eqz v3, :cond_a

    .line 199
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 202
    move-result v3

    .line 203
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 205
    if-le v3, v4, :cond_a

    .line 207
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 209
    move v0, v2

    .line 210
    :cond_a
    if-eqz v0, :cond_10

    .line 212
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 215
    goto :goto_1

    .line 216
    :cond_b
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 218
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 221
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->c0(I)V

    .line 224
    goto :goto_1

    .line 225
    :cond_c
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 227
    if-eqz v4, :cond_d

    .line 229
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 231
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 234
    move-result v4

    .line 235
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 240
    move-result v4

    .line 241
    add-float/2addr v4, v7

    .line 242
    float-to-int v4, v4

    .line 243
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 245
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 250
    move-result p1

    .line 251
    add-float/2addr p1, v7

    .line 252
    float-to-int p1, p1

    .line 253
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 255
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 257
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:I

    .line 259
    if-ne p1, v6, :cond_e

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 264
    move-result-object p1

    .line 265
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 268
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 271
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->c0(I)V

    .line 274
    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    .line 276
    aput v1, p1, v2

    .line 278
    aput v1, p1, v1

    .line 280
    if-eqz v3, :cond_f

    .line 282
    or-int/lit8 v0, v0, 0x2

    .line 284
    :cond_f
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {p1, v0, v1}, Lo/Tb;->g(II)Z

    .line 291
    :cond_10
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:I

    .line 293
    if-ne p1, v2, :cond_11

    .line 295
    move v1, v2

    .line 296
    :cond_11
    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    sget p1, Lo/pg;->a:I

    .line 3
    const-string p1, "RV OnLayout"

    .line 5
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    .line 11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 17
    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lo/ud;->L()Z

    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 15
    if-eqz v0, :cond_4

    .line 17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 20
    move-result v0

    .line 21
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 24
    move-result v2

    .line 25
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 27
    iget-object v3, v3, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    .line 32
    const/high16 v3, 0x40000000    # 2.0f

    .line 34
    if-ne v0, v3, :cond_1

    .line 36
    if-ne v2, v3, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 41
    if-nez v0, :cond_2

    .line 43
    :goto_0
    return-void

    .line 44
    :cond_2
    iget v0, v1, Lo/Fd;->d:I

    .line 46
    const/4 v2, 0x1

    .line 47
    if-ne v0, v2, :cond_3

    .line 49
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 52
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 54
    invoke-virtual {v0, p1, p2}, Lo/ud;->q0(II)V

    .line 57
    iput-boolean v2, v1, Lo/Fd;->i:Z

    .line 59
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->q()V

    .line 62
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 64
    invoke-virtual {v0, p1, p2}, Lo/ud;->s0(II)V

    .line 67
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 69
    invoke-virtual {v0}, Lo/ud;->v0()Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_8

    .line 75
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 80
    move-result v4

    .line 81
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 84
    move-result v4

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 88
    move-result v5

    .line 89
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 92
    move-result v3

    .line 93
    invoke-virtual {v0, v4, v3}, Lo/ud;->q0(II)V

    .line 96
    iput-boolean v2, v1, Lo/Fd;->i:Z

    .line 98
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->q()V

    .line 101
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 103
    invoke-virtual {v0, p1, p2}, Lo/ud;->s0(II)V

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->q:Z

    .line 109
    if-eqz v0, :cond_5

    .line 111
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 113
    iget-object v0, v0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 115
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    .line 118
    return-void

    .line 119
    :cond_5
    iget-boolean v0, v1, Lo/Fd;->k:Z

    .line 121
    if-eqz v0, :cond_6

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 130
    move-result p2

    .line 131
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 134
    return-void

    .line 135
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 137
    const/4 v2, 0x0

    .line 138
    if-eqz v0, :cond_7

    .line 140
    invoke-virtual {v0}, Lo/md;->a()I

    .line 143
    move-result v0

    .line 144
    iput v0, v1, Lo/Fd;->e:I

    .line 146
    goto :goto_1

    .line 147
    :cond_7
    iput v2, v1, Lo/Fd;->e:I

    .line 149
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    .line 152
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 154
    iget-object v0, v0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 156
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    .line 159
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    .line 162
    iput-boolean v2, v1, Lo/Fd;->g:Z

    .line 164
    :cond_8
    :goto_2
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lo/Cd;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lo/Cd;

    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Lo/Cd;

    .line 13
    iget-object p1, p1, Lo/f;->a:Landroid/os/Parcelable;

    .line 15
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 20
    if-eqz p1, :cond_1

    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Lo/Cd;

    .line 24
    iget-object v0, v0, Lo/Cd;->c:Landroid/os/Parcelable;

    .line 26
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p1, v0}, Lo/ud;->d0(Landroid/os/Parcelable;)V

    .line 31
    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Lo/Cd;

    .line 3
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lo/f;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Lo/Cd;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget-object v1, v1, Lo/Cd;->c:Landroid/os/Parcelable;

    .line 16
    iput-object v1, v0, Lo/Cd;->c:Landroid/os/Parcelable;

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 21
    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {v1}, Lo/ud;->e0()Landroid/os/Parcelable;

    .line 26
    move-result-object v1

    .line 27
    iput-object v1, v0, Lo/Cd;->c:Landroid/os/Parcelable;

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    iput-object v1, v0, Lo/Cd;->c:Landroid/os/Parcelable;

    .line 33
    :goto_0
    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    if-ne p1, p3, :cond_0

    .line 6
    if-eq p2, p4, :cond_1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 13
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 15
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 17
    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 7
    const/4 v8, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 12
    if-eqz v0, :cond_1

    .line 14
    :cond_0
    move-object v0, v6

    .line 15
    move v2, v8

    .line 16
    goto/16 :goto_25

    .line 18
    :cond_1
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->o:Lo/s7;

    .line 20
    const/4 v9, 0x1

    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-nez v0, :cond_3

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 33
    move v0, v8

    .line 34
    goto/16 :goto_3

    .line 36
    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->B(Landroid/view/MotionEvent;)Z

    .line 39
    move-result v0

    .line 40
    goto/16 :goto_3

    .line 42
    :cond_3
    iget v5, v0, Lo/s7;->v:I

    .line 44
    if-nez v5, :cond_4

    .line 46
    goto/16 :goto_2

    .line 48
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_8

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 57
    move-result v5

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 61
    move-result v10

    .line 62
    invoke-virtual {v0, v5, v10}, Lo/s7;->d(FF)Z

    .line 65
    move-result v5

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 69
    move-result v10

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 73
    move-result v11

    .line 74
    invoke-virtual {v0, v10, v11}, Lo/s7;->c(FF)Z

    .line 77
    move-result v10

    .line 78
    if-nez v5, :cond_5

    .line 80
    if-eqz v10, :cond_f

    .line 82
    :cond_5
    if-eqz v10, :cond_6

    .line 84
    iput v9, v0, Lo/s7;->w:I

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 89
    move-result v5

    .line 90
    float-to-int v5, v5

    .line 91
    int-to-float v5, v5

    .line 92
    iput v5, v0, Lo/s7;->p:F

    .line 94
    goto :goto_0

    .line 95
    :cond_6
    if-eqz v5, :cond_7

    .line 97
    iput v1, v0, Lo/s7;->w:I

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 102
    move-result v5

    .line 103
    float-to-int v5, v5

    .line 104
    int-to-float v5, v5

    .line 105
    iput v5, v0, Lo/s7;->m:F

    .line 107
    :cond_7
    :goto_0
    invoke-virtual {v0, v1}, Lo/s7;->f(I)V

    .line 110
    goto/16 :goto_2

    .line 112
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 115
    move-result v5

    .line 116
    if-ne v5, v9, :cond_9

    .line 118
    iget v5, v0, Lo/s7;->v:I

    .line 120
    if-ne v5, v1, :cond_9

    .line 122
    iput v4, v0, Lo/s7;->m:F

    .line 124
    iput v4, v0, Lo/s7;->p:F

    .line 126
    invoke-virtual {v0, v9}, Lo/s7;->f(I)V

    .line 129
    iput v8, v0, Lo/s7;->w:I

    .line 131
    goto/16 :goto_2

    .line 133
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 136
    move-result v5

    .line 137
    if-ne v5, v1, :cond_f

    .line 139
    iget v5, v0, Lo/s7;->v:I

    .line 141
    if-ne v5, v1, :cond_f

    .line 143
    invoke-virtual {v0}, Lo/s7;->g()V

    .line 146
    iget v5, v0, Lo/s7;->w:I

    .line 148
    const/high16 v10, 0x40000000    # 2.0f

    .line 150
    iget v11, v0, Lo/s7;->b:I

    .line 152
    if-ne v5, v9, :cond_c

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 157
    move-result v5

    .line 158
    iget-object v14, v0, Lo/s7;->y:[I

    .line 160
    aput v11, v14, v8

    .line 162
    iget v12, v0, Lo/s7;->q:I

    .line 164
    sub-int/2addr v12, v11

    .line 165
    aput v12, v14, v9

    .line 167
    int-to-float v13, v11

    .line 168
    int-to-float v12, v12

    .line 169
    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    .line 172
    move-result v5

    .line 173
    invoke-static {v13, v5}, Ljava/lang/Math;->max(FF)F

    .line 176
    move-result v5

    .line 177
    iget v12, v0, Lo/s7;->o:I

    .line 179
    int-to-float v12, v12

    .line 180
    sub-float/2addr v12, v5

    .line 181
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 184
    move-result v12

    .line 185
    cmpg-float v12, v12, v10

    .line 187
    if-gez v12, :cond_a

    .line 189
    goto :goto_1

    .line 190
    :cond_a
    iget v12, v0, Lo/s7;->p:F

    .line 192
    iget-object v13, v0, Lo/s7;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 194
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    .line 197
    move-result v15

    .line 198
    iget-object v13, v0, Lo/s7;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 203
    move-result v16

    .line 204
    iget v13, v0, Lo/s7;->q:I

    .line 206
    move/from16 v17, v13

    .line 208
    move v13, v5

    .line 209
    invoke-static/range {v12 .. v17}, Lo/s7;->e(FF[IIII)I

    .line 212
    move-result v12

    .line 213
    if-eqz v12, :cond_b

    .line 215
    iget-object v13, v0, Lo/s7;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 217
    invoke-virtual {v13, v12, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 220
    :cond_b
    iput v5, v0, Lo/s7;->p:F

    .line 222
    :cond_c
    :goto_1
    iget v5, v0, Lo/s7;->w:I

    .line 224
    if-ne v5, v1, :cond_f

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 229
    move-result v5

    .line 230
    iget-object v14, v0, Lo/s7;->x:[I

    .line 232
    aput v11, v14, v8

    .line 234
    iget v12, v0, Lo/s7;->r:I

    .line 236
    sub-int/2addr v12, v11

    .line 237
    aput v12, v14, v9

    .line 239
    int-to-float v11, v11

    .line 240
    int-to-float v12, v12

    .line 241
    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    .line 244
    move-result v5

    .line 245
    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    .line 248
    move-result v5

    .line 249
    iget v11, v0, Lo/s7;->l:I

    .line 251
    int-to-float v11, v11

    .line 252
    sub-float/2addr v11, v5

    .line 253
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 256
    move-result v11

    .line 257
    cmpg-float v10, v11, v10

    .line 259
    if-gez v10, :cond_d

    .line 261
    goto :goto_2

    .line 262
    :cond_d
    iget v12, v0, Lo/s7;->m:F

    .line 264
    iget-object v10, v0, Lo/s7;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 266
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    .line 269
    move-result v15

    .line 270
    iget-object v10, v0, Lo/s7;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 272
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 275
    move-result v16

    .line 276
    iget v10, v0, Lo/s7;->r:I

    .line 278
    move v13, v5

    .line 279
    move/from16 v17, v10

    .line 281
    invoke-static/range {v12 .. v17}, Lo/s7;->e(FF[IIII)I

    .line 284
    move-result v10

    .line 285
    if-eqz v10, :cond_e

    .line 287
    iget-object v11, v0, Lo/s7;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 289
    invoke-virtual {v11, v8, v10}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 292
    :cond_e
    iput v5, v0, Lo/s7;->m:F

    .line 294
    :cond_f
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 297
    move-result v0

    .line 298
    if-eq v0, v3, :cond_10

    .line 300
    if-ne v0, v9, :cond_11

    .line 302
    :cond_10
    iput-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->o:Lo/s7;

    .line 304
    :cond_11
    move v0, v9

    .line 305
    :goto_3
    if-eqz v0, :cond_12

    .line 307
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    .line 310
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 313
    return v9

    .line 314
    :cond_12
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 316
    if-nez v0, :cond_13

    .line 318
    return v8

    .line 319
    :cond_13
    invoke-virtual {v0}, Lo/ud;->d()Z

    .line 322
    move-result v10

    .line 323
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 325
    invoke-virtual {v0}, Lo/ud;->e()Z

    .line 328
    move-result v11

    .line 329
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 331
    if-nez v0, :cond_14

    .line 333
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 336
    move-result-object v0

    .line 337
    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 339
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 342
    move-result v0

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 346
    move-result v5

    .line 347
    iget-object v12, v6, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    .line 349
    if-nez v0, :cond_15

    .line 351
    aput v8, v12, v9

    .line 353
    aput v8, v12, v8

    .line 355
    :cond_15
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 358
    move-result-object v13

    .line 359
    aget v14, v12, v8

    .line 361
    int-to-float v14, v14

    .line 362
    aget v15, v12, v9

    .line 364
    int-to-float v15, v15

    .line 365
    invoke-virtual {v13, v14, v15}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 368
    const/high16 v14, 0x3f000000    # 0.5f

    .line 370
    if-eqz v0, :cond_55

    .line 372
    const-string v15, "RecyclerView"

    .line 374
    if-eq v0, v9, :cond_28

    .line 376
    if-eq v0, v1, :cond_1a

    .line 378
    if-eq v0, v3, :cond_19

    .line 380
    const/4 v1, 0x5

    .line 381
    if-eq v0, v1, :cond_18

    .line 383
    const/4 v1, 0x6

    .line 384
    if-eq v0, v1, :cond_17

    .line 386
    :cond_16
    :goto_4
    move-object v0, v6

    .line 387
    move-object/from16 v21, v13

    .line 389
    goto/16 :goto_23

    .line 391
    :cond_17
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->R(Landroid/view/MotionEvent;)V

    .line 394
    goto :goto_4

    .line 395
    :cond_18
    invoke-virtual {v7, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 398
    move-result v0

    .line 399
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 401
    invoke-virtual {v7, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 404
    move-result v0

    .line 405
    add-float/2addr v0, v14

    .line 406
    float-to-int v0, v0

    .line 407
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 409
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 411
    invoke-virtual {v7, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 414
    move-result v0

    .line 415
    add-float/2addr v0, v14

    .line 416
    float-to-int v0, v0

    .line 417
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 419
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 421
    goto :goto_4

    .line 422
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    .line 425
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 428
    goto :goto_4

    .line 429
    :cond_1a
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 431
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 434
    move-result v0

    .line 435
    if-gez v0, :cond_1b

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    .line 439
    const-string v1, "Error processing scroll; pointer index for id "

    .line 441
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 449
    const-string v1, " not found. Did any MotionEvents get skipped?"

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    move-result-object v0

    .line 458
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return v8

    .line 462
    :cond_1b
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 465
    move-result v1

    .line 466
    add-float/2addr v1, v14

    .line 467
    float-to-int v15, v1

    .line 468
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 471
    move-result v0

    .line 472
    add-float/2addr v0, v14

    .line 473
    float-to-int v14, v0

    .line 474
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 476
    sub-int/2addr v0, v15

    .line 477
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 479
    sub-int/2addr v1, v14

    .line 480
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->I:I

    .line 482
    if-eq v2, v9, :cond_20

    .line 484
    if-eqz v10, :cond_1d

    .line 486
    if-lez v0, :cond_1c

    .line 488
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 490
    sub-int/2addr v0, v2

    .line 491
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 494
    move-result v0

    .line 495
    goto :goto_5

    .line 496
    :cond_1c
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 498
    add-int/2addr v0, v2

    .line 499
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    .line 502
    move-result v0

    .line 503
    :goto_5
    if-eqz v0, :cond_1d

    .line 505
    move v2, v9

    .line 506
    goto :goto_6

    .line 507
    :cond_1d
    move v2, v8

    .line 508
    :goto_6
    if-eqz v11, :cond_1f

    .line 510
    if-lez v1, :cond_1e

    .line 512
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 514
    sub-int/2addr v1, v3

    .line 515
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 518
    move-result v1

    .line 519
    goto :goto_7

    .line 520
    :cond_1e
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 522
    add-int/2addr v1, v3

    .line 523
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    .line 526
    move-result v1

    .line 527
    :goto_7
    if-eqz v1, :cond_1f

    .line 529
    move v2, v9

    .line 530
    :cond_1f
    if-eqz v2, :cond_20

    .line 532
    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 535
    :cond_20
    move/from16 v16, v0

    .line 537
    move/from16 v17, v1

    .line 539
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->I:I

    .line 541
    if-ne v0, v9, :cond_16

    .line 543
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    .line 545
    aput v8, v5, v8

    .line 547
    aput v8, v5, v9

    .line 549
    if-eqz v10, :cond_21

    .line 551
    move/from16 v1, v16

    .line 553
    goto :goto_8

    .line 554
    :cond_21
    move v1, v8

    .line 555
    :goto_8
    if-eqz v11, :cond_22

    .line 557
    move/from16 v3, v17

    .line 559
    goto :goto_9

    .line 560
    :cond_22
    move v3, v8

    .line 561
    :goto_9
    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->m0:[I

    .line 563
    const/16 v18, 0x0

    .line 565
    move-object/from16 v0, p0

    .line 567
    move-object v2, v5

    .line 568
    move-object/from16 v19, v4

    .line 570
    move/from16 v4, v18

    .line 572
    move-object/from16 v18, v5

    .line 574
    move-object/from16 v5, v19

    .line 576
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->r(I[III[I)Z

    .line 579
    move-result v0

    .line 580
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->m0:[I

    .line 582
    if-eqz v0, :cond_23

    .line 584
    aget v0, v18, v8

    .line 586
    sub-int v16, v16, v0

    .line 588
    aget v0, v18, v9

    .line 590
    sub-int v17, v17, v0

    .line 592
    aget v0, v12, v8

    .line 594
    aget v2, v1, v8

    .line 596
    add-int/2addr v0, v2

    .line 597
    aput v0, v12, v8

    .line 599
    aget v0, v12, v9

    .line 601
    aget v2, v1, v9

    .line 603
    add-int/2addr v0, v2

    .line 604
    aput v0, v12, v9

    .line 606
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 609
    move-result-object v0

    .line 610
    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 613
    :cond_23
    move/from16 v0, v16

    .line 615
    move/from16 v2, v17

    .line 617
    aget v3, v1, v8

    .line 619
    sub-int/2addr v15, v3

    .line 620
    iput v15, v6, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 622
    aget v1, v1, v9

    .line 624
    sub-int/2addr v14, v1

    .line 625
    iput v14, v6, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 627
    if-eqz v10, :cond_24

    .line 629
    move v1, v0

    .line 630
    goto :goto_a

    .line 631
    :cond_24
    move v1, v8

    .line 632
    :goto_a
    if-eqz v11, :cond_25

    .line 634
    move v8, v2

    .line 635
    :cond_25
    invoke-virtual {v6, v1, v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->W(IILandroid/view/MotionEvent;)Z

    .line 638
    move-result v1

    .line 639
    if-eqz v1, :cond_26

    .line 641
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 644
    move-result-object v1

    .line 645
    invoke-interface {v1, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 648
    :cond_26
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->a0:Lo/T8;

    .line 650
    if-eqz v1, :cond_16

    .line 652
    if-nez v0, :cond_27

    .line 654
    if-eqz v2, :cond_16

    .line 656
    :cond_27
    invoke-virtual {v1, v6, v0, v2}, Lo/T8;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 659
    goto/16 :goto_4

    .line 661
    :cond_28
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 663
    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 666
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 668
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->S:I

    .line 670
    int-to-float v5, v3

    .line 671
    const/16 v7, 0x3e8

    .line 673
    invoke-virtual {v0, v7, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 676
    if-eqz v10, :cond_29

    .line 678
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 680
    iget v5, v6, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 682
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 685
    move-result v0

    .line 686
    neg-float v0, v0

    .line 687
    goto :goto_b

    .line 688
    :cond_29
    move v0, v4

    .line 689
    :goto_b
    if-eqz v11, :cond_2a

    .line 691
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 693
    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 695
    invoke-virtual {v5, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 698
    move-result v5

    .line 699
    neg-float v5, v5

    .line 700
    goto :goto_c

    .line 701
    :cond_2a
    move v5, v4

    .line 702
    :goto_c
    cmpl-float v7, v0, v4

    .line 704
    if-nez v7, :cond_2c

    .line 706
    cmpl-float v7, v5, v4

    .line 708
    if-eqz v7, :cond_2b

    .line 710
    goto :goto_d

    .line 711
    :cond_2b
    move-object v0, v6

    .line 712
    move v1, v8

    .line 713
    move-object/from16 v21, v13

    .line 715
    goto/16 :goto_21

    .line 717
    :cond_2c
    :goto_d
    float-to-int v0, v0

    .line 718
    float-to-int v5, v5

    .line 719
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 721
    if-nez v7, :cond_2e

    .line 723
    const-string v0, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 725
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_2d
    :goto_e
    move-object v0, v6

    .line 729
    move-object/from16 v21, v13

    .line 731
    goto/16 :goto_20

    .line 733
    :cond_2e
    iget-boolean v10, v6, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 735
    if-eqz v10, :cond_2f

    .line 737
    :goto_f
    goto :goto_e

    .line 738
    :cond_2f
    invoke-virtual {v7}, Lo/ud;->d()Z

    .line 741
    move-result v7

    .line 742
    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 744
    invoke-virtual {v10}, Lo/ud;->e()Z

    .line 747
    move-result v10

    .line 748
    iget v11, v6, Landroidx/recyclerview/widget/RecyclerView;->R:I

    .line 750
    if-eqz v7, :cond_30

    .line 752
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 755
    move-result v12

    .line 756
    if-ge v12, v11, :cond_31

    .line 758
    :cond_30
    move v0, v8

    .line 759
    :cond_31
    if-eqz v10, :cond_32

    .line 761
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 764
    move-result v12

    .line 765
    if-ge v12, v11, :cond_33

    .line 767
    :cond_32
    move v5, v8

    .line 768
    :cond_33
    if-nez v0, :cond_34

    .line 770
    if-nez v5, :cond_34

    .line 772
    goto :goto_f

    .line 773
    :cond_34
    int-to-float v11, v0

    .line 774
    int-to-float v12, v5

    .line 775
    invoke-virtual {v6, v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    .line 778
    move-result v14

    .line 779
    if-nez v14, :cond_2d

    .line 781
    if-nez v7, :cond_36

    .line 783
    if-eqz v10, :cond_35

    .line 785
    goto :goto_10

    .line 786
    :cond_35
    move v14, v8

    .line 787
    goto :goto_11

    .line 788
    :cond_36
    :goto_10
    move v14, v9

    .line 789
    :goto_11
    invoke-virtual {v6, v11, v12, v14}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 792
    iget-object v11, v6, Landroidx/recyclerview/widget/RecyclerView;->Q:Lo/wd;

    .line 794
    if-eqz v11, :cond_51

    .line 796
    check-cast v11, Lo/Ac;

    .line 798
    iget-object v12, v11, Lo/Ac;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 800
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lo/ud;

    .line 803
    move-result-object v12

    .line 804
    if-nez v12, :cond_37

    .line 806
    goto/16 :goto_1e

    .line 808
    :cond_37
    iget-object v15, v11, Lo/Ac;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 810
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lo/md;

    .line 813
    move-result-object v15

    .line 814
    if-nez v15, :cond_38

    .line 816
    goto/16 :goto_1e

    .line 818
    :cond_38
    iget-object v15, v11, Lo/Ac;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 820
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    .line 823
    move-result v15

    .line 824
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 827
    move-result v2

    .line 828
    if-gt v2, v15, :cond_39

    .line 830
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 833
    move-result v2

    .line 834
    if-le v2, v15, :cond_51

    .line 836
    :cond_39
    instance-of v2, v12, Lo/Ed;

    .line 838
    if-nez v2, :cond_3a

    .line 840
    goto/16 :goto_1e

    .line 842
    :cond_3a
    if-nez v2, :cond_3b

    .line 844
    const/4 v15, 0x0

    .line 845
    goto :goto_12

    .line 846
    :cond_3b
    new-instance v15, Lo/u3;

    .line 848
    iget-object v8, v11, Lo/Ac;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 850
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 853
    move-result-object v8

    .line 854
    const/4 v1, 0x1

    .line 855
    invoke-direct {v15, v11, v8, v1}, Lo/u3;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    .line 858
    :goto_12
    if-nez v15, :cond_3c

    .line 860
    goto/16 :goto_1e

    .line 862
    :cond_3c
    invoke-virtual {v12}, Lo/ud;->B()I

    .line 865
    move-result v1

    .line 866
    if-nez v1, :cond_3e

    .line 868
    :goto_13
    move-object/from16 v21, v13

    .line 870
    :cond_3d
    :goto_14
    const/4 v1, -0x1

    .line 871
    :goto_15
    const/4 v2, -0x1

    .line 872
    goto/16 :goto_1d

    .line 874
    :cond_3e
    invoke-virtual {v12}, Lo/ud;->e()Z

    .line 877
    move-result v19

    .line 878
    if-eqz v19, :cond_3f

    .line 880
    invoke-virtual {v11, v12}, Lo/Ac;->e(Lo/ud;)Lo/z6;

    .line 883
    move-result-object v11

    .line 884
    goto :goto_16

    .line 885
    :cond_3f
    invoke-virtual {v12}, Lo/ud;->d()Z

    .line 888
    move-result v19

    .line 889
    if-eqz v19, :cond_40

    .line 891
    invoke-virtual {v11, v12}, Lo/Ac;->d(Lo/ud;)Lo/z6;

    .line 894
    move-result-object v11

    .line 895
    goto :goto_16

    .line 896
    :cond_40
    const/4 v11, 0x0

    .line 897
    :goto_16
    if-nez v11, :cond_41

    .line 899
    goto :goto_13

    .line 900
    :cond_41
    invoke-virtual {v12}, Lo/ud;->v()I

    .line 903
    move-result v8

    .line 904
    const/high16 v19, -0x80000000

    .line 906
    const v20, 0x7fffffff

    .line 909
    move-object/from16 v21, v13

    .line 911
    move/from16 v9, v19

    .line 913
    move/from16 v13, v20

    .line 915
    const/4 v4, 0x0

    .line 916
    const/16 v16, 0x0

    .line 918
    const/16 v19, 0x0

    .line 920
    :goto_17
    if-ge v4, v8, :cond_45

    .line 922
    move/from16 v22, v8

    .line 924
    invoke-virtual {v12, v4}, Lo/ud;->u(I)Landroid/view/View;

    .line 927
    move-result-object v8

    .line 928
    if-nez v8, :cond_42

    .line 930
    goto :goto_18

    .line 931
    :cond_42
    invoke-static {v8, v11}, Lo/Ac;->b(Landroid/view/View;Lo/z6;)I

    .line 934
    move-result v6

    .line 935
    if-gtz v6, :cond_43

    .line 937
    if-le v6, v9, :cond_43

    .line 939
    move v9, v6

    .line 940
    move-object/from16 v19, v8

    .line 942
    :cond_43
    if-ltz v6, :cond_44

    .line 944
    if-ge v6, v13, :cond_44

    .line 946
    move v13, v6

    .line 947
    move-object/from16 v16, v8

    .line 949
    :cond_44
    :goto_18
    add-int/lit8 v4, v4, 0x1

    .line 951
    move-object/from16 v6, p0

    .line 953
    move/from16 v8, v22

    .line 955
    goto :goto_17

    .line 956
    :cond_45
    invoke-virtual {v12}, Lo/ud;->d()Z

    .line 959
    move-result v4

    .line 960
    if-eqz v4, :cond_47

    .line 962
    if-lez v0, :cond_46

    .line 964
    :goto_19
    const/4 v4, 0x1

    .line 965
    goto :goto_1a

    .line 966
    :cond_46
    const/4 v4, 0x0

    .line 967
    goto :goto_1a

    .line 968
    :cond_47
    if-lez v5, :cond_46

    .line 970
    goto :goto_19

    .line 971
    :goto_1a
    if-eqz v4, :cond_48

    .line 973
    if-eqz v16, :cond_48

    .line 975
    invoke-static/range {v16 .. v16}, Lo/ud;->H(Landroid/view/View;)I

    .line 978
    move-result v1

    .line 979
    goto :goto_15

    .line 980
    :cond_48
    if-nez v4, :cond_49

    .line 982
    if-eqz v19, :cond_49

    .line 984
    invoke-static/range {v19 .. v19}, Lo/ud;->H(Landroid/view/View;)I

    .line 987
    move-result v1

    .line 988
    goto :goto_15

    .line 989
    :cond_49
    if-eqz v4, :cond_4a

    .line 991
    move-object/from16 v16, v19

    .line 993
    :cond_4a
    if-nez v16, :cond_4b

    .line 995
    goto :goto_14

    .line 996
    :cond_4b
    invoke-static/range {v16 .. v16}, Lo/ud;->H(Landroid/view/View;)I

    .line 999
    move-result v6

    .line 1000
    invoke-virtual {v12}, Lo/ud;->B()I

    .line 1003
    move-result v8

    .line 1004
    if-eqz v2, :cond_4d

    .line 1006
    move-object v2, v12

    .line 1007
    check-cast v2, Lo/Ed;

    .line 1009
    const/4 v9, 0x1

    .line 1010
    sub-int/2addr v8, v9

    .line 1011
    invoke-interface {v2, v8}, Lo/Ed;->a(I)Landroid/graphics/PointF;

    .line 1014
    move-result-object v2

    .line 1015
    if-eqz v2, :cond_4d

    .line 1017
    iget v8, v2, Landroid/graphics/PointF;->x:F

    .line 1019
    const/4 v9, 0x0

    .line 1020
    cmpg-float v8, v8, v9

    .line 1022
    if-ltz v8, :cond_4c

    .line 1024
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 1026
    cmpg-float v2, v2, v9

    .line 1028
    if-gez v2, :cond_4d

    .line 1030
    :cond_4c
    const/4 v2, 0x1

    .line 1031
    goto :goto_1b

    .line 1032
    :cond_4d
    const/4 v2, 0x0

    .line 1033
    :goto_1b
    if-ne v2, v4, :cond_4e

    .line 1035
    const/4 v2, -0x1

    .line 1036
    goto :goto_1c

    .line 1037
    :cond_4e
    const/4 v2, 0x1

    .line 1038
    :goto_1c
    add-int/2addr v2, v6

    .line 1039
    if-ltz v2, :cond_3d

    .line 1041
    if-lt v2, v1, :cond_4f

    .line 1043
    goto/16 :goto_14

    .line 1045
    :cond_4f
    move v1, v2

    .line 1046
    goto/16 :goto_15

    .line 1048
    :goto_1d
    if-ne v1, v2, :cond_50

    .line 1050
    goto :goto_1f

    .line 1051
    :cond_50
    iput v1, v15, Lo/aa;->a:I

    .line 1053
    invoke-virtual {v12, v15}, Lo/ud;->y0(Lo/aa;)V

    .line 1056
    move-object/from16 v0, p0

    .line 1058
    goto :goto_22

    .line 1059
    :cond_51
    :goto_1e
    move-object/from16 v21, v13

    .line 1061
    :goto_1f
    if-eqz v14, :cond_54

    .line 1063
    if-eqz v10, :cond_52

    .line 1065
    or-int/lit8 v7, v7, 0x2

    .line 1067
    :cond_52
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 1070
    move-result-object v1

    .line 1071
    const/4 v2, 0x1

    .line 1072
    invoke-virtual {v1, v7, v2}, Lo/Tb;->g(II)Z

    .line 1075
    neg-int v1, v3

    .line 1076
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 1079
    move-result v0

    .line 1080
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1083
    move-result v9

    .line 1084
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 1087
    move-result v0

    .line 1088
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1091
    move-result v10

    .line 1092
    move-object/from16 v0, p0

    .line 1094
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->W:Lo/Hd;

    .line 1096
    iget-object v2, v1, Lo/Hd;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 1098
    const/4 v3, 0x2

    .line 1099
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 1102
    const/4 v3, 0x0

    .line 1103
    iput v3, v1, Lo/Hd;->b:I

    .line 1105
    iput v3, v1, Lo/Hd;->a:I

    .line 1107
    iget-object v3, v1, Lo/Hd;->d:Landroid/view/animation/Interpolator;

    .line 1109
    sget-object v4, Landroidx/recyclerview/widget/RecyclerView;->u0:Lo/kd;

    .line 1111
    if-eq v3, v4, :cond_53

    .line 1113
    iput-object v4, v1, Lo/Hd;->d:Landroid/view/animation/Interpolator;

    .line 1115
    new-instance v3, Landroid/widget/OverScroller;

    .line 1117
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1120
    move-result-object v2

    .line 1121
    invoke-direct {v3, v2, v4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 1124
    iput-object v3, v1, Lo/Hd;->c:Landroid/widget/OverScroller;

    .line 1126
    :cond_53
    iget-object v6, v1, Lo/Hd;->c:Landroid/widget/OverScroller;

    .line 1128
    const/high16 v11, -0x80000000

    .line 1130
    const v12, 0x7fffffff

    .line 1133
    const/4 v7, 0x0

    .line 1134
    const/4 v8, 0x0

    .line 1135
    const/high16 v13, -0x80000000

    .line 1137
    const v14, 0x7fffffff

    .line 1140
    invoke-virtual/range {v6 .. v14}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 1143
    invoke-virtual {v1}, Lo/Hd;->a()V

    .line 1146
    goto :goto_22

    .line 1147
    :cond_54
    move-object/from16 v0, p0

    .line 1149
    :goto_20
    const/4 v1, 0x0

    .line 1150
    :goto_21
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 1153
    :goto_22
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->V()V

    .line 1156
    move-object/from16 v2, v21

    .line 1158
    goto :goto_24

    .line 1159
    :cond_55
    move-object v0, v6

    .line 1160
    move v1, v8

    .line 1161
    move-object/from16 v21, v13

    .line 1163
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 1166
    move-result v2

    .line 1167
    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView;->J:I

    .line 1169
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 1172
    move-result v1

    .line 1173
    add-float/2addr v1, v14

    .line 1174
    float-to-int v1, v1

    .line 1175
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    .line 1177
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 1179
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 1182
    move-result v1

    .line 1183
    add-float/2addr v1, v14

    .line 1184
    float-to-int v1, v1

    .line 1185
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 1187
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 1189
    if-eqz v11, :cond_56

    .line 1191
    or-int/lit8 v10, v10, 0x2

    .line 1193
    :cond_56
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 1196
    move-result-object v1

    .line 1197
    const/4 v2, 0x0

    .line 1198
    invoke-virtual {v1, v10, v2}, Lo/Tb;->g(II)Z

    .line 1201
    :goto_23
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 1203
    move-object/from16 v2, v21

    .line 1205
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1208
    :goto_24
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1211
    const/4 v1, 0x1

    .line 1212
    return v1

    .line 1213
    :goto_25
    return v2
.end method

.method public final p()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Lo/Fd;->a(I)V

    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->z(Lo/Fd;)V

    .line 12
    const/4 v3, 0x0

    .line 13
    iput-boolean v3, v1, Lo/Fd;->i:Z

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    .line 18
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Lo/H1;

    .line 20
    iget-object v5, v4, Lo/H1;->b:Ljava/lang/Object;

    .line 22
    check-cast v5, Lo/Qe;

    .line 24
    invoke-virtual {v5}, Lo/Qe;->clear()V

    .line 27
    iget-object v5, v4, Lo/H1;->c:Ljava/lang/Object;

    .line 29
    check-cast v5, Lo/za;

    .line 31
    invoke-virtual {v5}, Lo/za;->a()V

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->P()V

    .line 37
    iget-boolean v6, v0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 39
    if-eqz v6, :cond_0

    .line 41
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->d:Lo/q0;

    .line 43
    iget-object v7, v6, Lo/q0;->a:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v6, v7}, Lo/q0;->i(Ljava/util/ArrayList;)V

    .line 48
    iget-object v7, v6, Lo/q0;->c:Ljava/lang/Object;

    .line 50
    check-cast v7, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v6, v7}, Lo/q0;->i(Ljava/util/ArrayList;)V

    .line 55
    iget-boolean v6, v0, Landroidx/recyclerview/widget/RecyclerView;->z:Z

    .line 57
    if-eqz v6, :cond_0

    .line 59
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 61
    invoke-virtual {v6}, Lo/ud;->X()V

    .line 64
    :cond_0
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 66
    if-eqz v6, :cond_38

    .line 68
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 70
    invoke-virtual {v6}, Lo/ud;->z0()Z

    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_38

    .line 76
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->d:Lo/q0;

    .line 78
    iget-object v7, v6, Lo/q0;->a:Ljava/util/ArrayList;

    .line 80
    iget-object v8, v6, Lo/q0;->e:Ljava/lang/Object;

    .line 82
    check-cast v8, Lo/C;

    .line 84
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 90
    move-result v9

    .line 91
    const/4 v10, 0x1

    .line 92
    sub-int/2addr v9, v10

    .line 93
    const/4 v12, 0x0

    .line 94
    :goto_1
    const/4 v13, -0x1

    .line 95
    const/16 v14, 0x8

    .line 97
    if-ltz v9, :cond_3

    .line 99
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v15

    .line 103
    check-cast v15, Lo/p0;

    .line 105
    iget v15, v15, Lo/p0;->a:I

    .line 107
    if-ne v15, v14, :cond_1

    .line 109
    if-eqz v12, :cond_2

    .line 111
    goto :goto_2

    .line 112
    :cond_1
    move v12, v10

    .line 113
    :cond_2
    add-int/lit8 v9, v9, -0x1

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    move v9, v13

    .line 117
    :goto_2
    const/4 v12, 0x4

    .line 118
    const/4 v15, 0x2

    .line 119
    if-eq v9, v13, :cond_23

    .line 121
    add-int/lit8 v14, v9, 0x1

    .line 123
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object v16

    .line 127
    move-object/from16 v11, v16

    .line 129
    check-cast v11, Lo/p0;

    .line 131
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object v16

    .line 135
    move-object/from16 v13, v16

    .line 137
    check-cast v13, Lo/p0;

    .line 139
    iget v2, v13, Lo/p0;->a:I

    .line 141
    if-eq v2, v10, :cond_1d

    .line 143
    const/16 v18, 0x0

    .line 145
    iget-object v3, v8, Lo/C;->b:Ljava/lang/Object;

    .line 147
    check-cast v3, Lo/q0;

    .line 149
    if-eq v2, v15, :cond_b

    .line 151
    if-eq v2, v12, :cond_4

    .line 153
    goto/16 :goto_f

    .line 155
    :cond_4
    iget v2, v11, Lo/p0;->c:I

    .line 157
    iget v15, v13, Lo/p0;->b:I

    .line 159
    if-ge v2, v15, :cond_5

    .line 161
    add-int/lit8 v15, v15, -0x1

    .line 163
    iput v15, v13, Lo/p0;->b:I

    .line 165
    goto :goto_3

    .line 166
    :cond_5
    iget v10, v13, Lo/p0;->c:I

    .line 168
    add-int/2addr v15, v10

    .line 169
    if-ge v2, v15, :cond_6

    .line 171
    add-int/lit8 v10, v10, -0x1

    .line 173
    iput v10, v13, Lo/p0;->c:I

    .line 175
    iget v2, v11, Lo/p0;->b:I

    .line 177
    const/4 v10, 0x1

    .line 178
    invoke-virtual {v3, v12, v2, v10}, Lo/q0;->g(III)Lo/p0;

    .line 181
    move-result-object v2

    .line 182
    goto :goto_4

    .line 183
    :cond_6
    :goto_3
    move-object/from16 v2, v18

    .line 185
    :goto_4
    iget v10, v11, Lo/p0;->b:I

    .line 187
    iget v15, v13, Lo/p0;->b:I

    .line 189
    if-gt v10, v15, :cond_7

    .line 191
    add-int/lit8 v15, v15, 0x1

    .line 193
    iput v15, v13, Lo/p0;->b:I

    .line 195
    goto :goto_5

    .line 196
    :cond_7
    iget v12, v13, Lo/p0;->c:I

    .line 198
    add-int/2addr v15, v12

    .line 199
    if-ge v10, v15, :cond_8

    .line 201
    sub-int/2addr v15, v10

    .line 202
    add-int/lit8 v10, v10, 0x1

    .line 204
    const/4 v12, 0x4

    .line 205
    invoke-virtual {v3, v12, v10, v15}, Lo/q0;->g(III)Lo/p0;

    .line 208
    move-result-object v18

    .line 209
    iget v10, v13, Lo/p0;->c:I

    .line 211
    sub-int/2addr v10, v15

    .line 212
    iput v10, v13, Lo/p0;->c:I

    .line 214
    :cond_8
    :goto_5
    move-object/from16 v10, v18

    .line 216
    invoke-virtual {v7, v14, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget v11, v13, Lo/p0;->c:I

    .line 221
    if-lez v11, :cond_9

    .line 223
    invoke-virtual {v7, v9, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 226
    goto :goto_6

    .line 227
    :cond_9
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 230
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    iget-object v3, v3, Lo/q0;->b:Ljava/lang/Object;

    .line 235
    check-cast v3, Lo/Jc;

    .line 237
    invoke-virtual {v3, v13}, Lo/Jc;->c(Ljava/lang/Object;)Z

    .line 240
    :goto_6
    if-eqz v2, :cond_a

    .line 242
    invoke-virtual {v7, v9, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 245
    :cond_a
    if-eqz v10, :cond_22

    .line 247
    invoke-virtual {v7, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 250
    goto/16 :goto_f

    .line 252
    :cond_b
    iget v2, v11, Lo/p0;->b:I

    .line 254
    iget v10, v11, Lo/p0;->c:I

    .line 256
    if-ge v2, v10, :cond_d

    .line 258
    iget v12, v13, Lo/p0;->b:I

    .line 260
    if-ne v12, v2, :cond_c

    .line 262
    iget v12, v13, Lo/p0;->c:I

    .line 264
    sub-int v2, v10, v2

    .line 266
    if-ne v12, v2, :cond_c

    .line 268
    const/4 v2, 0x0

    .line 269
    :goto_7
    const/16 v17, 0x1

    .line 271
    goto :goto_9

    .line 272
    :cond_c
    const/4 v2, 0x0

    .line 273
    :goto_8
    const/16 v17, 0x0

    .line 275
    goto :goto_9

    .line 276
    :cond_d
    iget v12, v13, Lo/p0;->b:I

    .line 278
    add-int/lit8 v15, v10, 0x1

    .line 280
    if-ne v12, v15, :cond_e

    .line 282
    iget v12, v13, Lo/p0;->c:I

    .line 284
    sub-int/2addr v2, v10

    .line 285
    if-ne v12, v2, :cond_e

    .line 287
    const/4 v2, 0x1

    .line 288
    goto :goto_7

    .line 289
    :cond_e
    const/4 v2, 0x1

    .line 290
    goto :goto_8

    .line 291
    :goto_9
    iget v12, v13, Lo/p0;->b:I

    .line 293
    if-ge v10, v12, :cond_f

    .line 295
    add-int/lit8 v12, v12, -0x1

    .line 297
    iput v12, v13, Lo/p0;->b:I

    .line 299
    goto :goto_a

    .line 300
    :cond_f
    iget v15, v13, Lo/p0;->c:I

    .line 302
    add-int/2addr v12, v15

    .line 303
    if-ge v10, v12, :cond_10

    .line 305
    add-int/lit8 v15, v15, -0x1

    .line 307
    iput v15, v13, Lo/p0;->c:I

    .line 309
    const/4 v2, 0x2

    .line 310
    iput v2, v11, Lo/p0;->a:I

    .line 312
    const/4 v2, 0x1

    .line 313
    iput v2, v11, Lo/p0;->c:I

    .line 315
    iget v2, v13, Lo/p0;->c:I

    .line 317
    if-nez v2, :cond_22

    .line 319
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 322
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    iget-object v2, v3, Lo/q0;->b:Ljava/lang/Object;

    .line 327
    check-cast v2, Lo/Jc;

    .line 329
    invoke-virtual {v2, v13}, Lo/Jc;->c(Ljava/lang/Object;)Z

    .line 332
    goto/16 :goto_f

    .line 334
    :cond_10
    :goto_a
    iget v10, v11, Lo/p0;->b:I

    .line 336
    iget v12, v13, Lo/p0;->b:I

    .line 338
    if-gt v10, v12, :cond_11

    .line 340
    add-int/lit8 v12, v12, 0x1

    .line 342
    iput v12, v13, Lo/p0;->b:I

    .line 344
    goto :goto_b

    .line 345
    :cond_11
    iget v15, v13, Lo/p0;->c:I

    .line 347
    add-int/2addr v12, v15

    .line 348
    if-ge v10, v12, :cond_12

    .line 350
    sub-int/2addr v12, v10

    .line 351
    add-int/lit8 v10, v10, 0x1

    .line 353
    const/4 v15, 0x2

    .line 354
    invoke-virtual {v3, v15, v10, v12}, Lo/q0;->g(III)Lo/p0;

    .line 357
    move-result-object v18

    .line 358
    iget v10, v11, Lo/p0;->b:I

    .line 360
    iget v12, v13, Lo/p0;->b:I

    .line 362
    sub-int/2addr v10, v12

    .line 363
    iput v10, v13, Lo/p0;->c:I

    .line 365
    :cond_12
    :goto_b
    move-object/from16 v10, v18

    .line 367
    if-eqz v17, :cond_13

    .line 369
    invoke-virtual {v7, v9, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 375
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    iget-object v2, v3, Lo/q0;->b:Ljava/lang/Object;

    .line 380
    check-cast v2, Lo/Jc;

    .line 382
    invoke-virtual {v2, v11}, Lo/Jc;->c(Ljava/lang/Object;)Z

    .line 385
    goto/16 :goto_f

    .line 387
    :cond_13
    if-eqz v2, :cond_17

    .line 389
    if-eqz v10, :cond_15

    .line 391
    iget v2, v11, Lo/p0;->b:I

    .line 393
    iget v3, v10, Lo/p0;->b:I

    .line 395
    if-le v2, v3, :cond_14

    .line 397
    iget v3, v10, Lo/p0;->c:I

    .line 399
    sub-int/2addr v2, v3

    .line 400
    iput v2, v11, Lo/p0;->b:I

    .line 402
    :cond_14
    iget v2, v11, Lo/p0;->c:I

    .line 404
    iget v3, v10, Lo/p0;->b:I

    .line 406
    if-le v2, v3, :cond_15

    .line 408
    iget v3, v10, Lo/p0;->c:I

    .line 410
    sub-int/2addr v2, v3

    .line 411
    iput v2, v11, Lo/p0;->c:I

    .line 413
    :cond_15
    iget v2, v11, Lo/p0;->b:I

    .line 415
    iget v3, v13, Lo/p0;->b:I

    .line 417
    if-le v2, v3, :cond_16

    .line 419
    iget v3, v13, Lo/p0;->c:I

    .line 421
    sub-int/2addr v2, v3

    .line 422
    iput v2, v11, Lo/p0;->b:I

    .line 424
    :cond_16
    iget v2, v11, Lo/p0;->c:I

    .line 426
    iget v3, v13, Lo/p0;->b:I

    .line 428
    if-le v2, v3, :cond_1b

    .line 430
    iget v3, v13, Lo/p0;->c:I

    .line 432
    sub-int/2addr v2, v3

    .line 433
    iput v2, v11, Lo/p0;->c:I

    .line 435
    goto :goto_c

    .line 436
    :cond_17
    if-eqz v10, :cond_19

    .line 438
    iget v2, v11, Lo/p0;->b:I

    .line 440
    iget v3, v10, Lo/p0;->b:I

    .line 442
    if-lt v2, v3, :cond_18

    .line 444
    iget v3, v10, Lo/p0;->c:I

    .line 446
    sub-int/2addr v2, v3

    .line 447
    iput v2, v11, Lo/p0;->b:I

    .line 449
    :cond_18
    iget v2, v11, Lo/p0;->c:I

    .line 451
    iget v3, v10, Lo/p0;->b:I

    .line 453
    if-lt v2, v3, :cond_19

    .line 455
    iget v3, v10, Lo/p0;->c:I

    .line 457
    sub-int/2addr v2, v3

    .line 458
    iput v2, v11, Lo/p0;->c:I

    .line 460
    :cond_19
    iget v2, v11, Lo/p0;->b:I

    .line 462
    iget v3, v13, Lo/p0;->b:I

    .line 464
    if-lt v2, v3, :cond_1a

    .line 466
    iget v3, v13, Lo/p0;->c:I

    .line 468
    sub-int/2addr v2, v3

    .line 469
    iput v2, v11, Lo/p0;->b:I

    .line 471
    :cond_1a
    iget v2, v11, Lo/p0;->c:I

    .line 473
    iget v3, v13, Lo/p0;->b:I

    .line 475
    if-lt v2, v3, :cond_1b

    .line 477
    iget v3, v13, Lo/p0;->c:I

    .line 479
    sub-int/2addr v2, v3

    .line 480
    iput v2, v11, Lo/p0;->c:I

    .line 482
    :cond_1b
    :goto_c
    invoke-virtual {v7, v9, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget v2, v11, Lo/p0;->b:I

    .line 487
    iget v3, v11, Lo/p0;->c:I

    .line 489
    if-eq v2, v3, :cond_1c

    .line 491
    invoke-virtual {v7, v14, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 494
    goto :goto_d

    .line 495
    :cond_1c
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 498
    :goto_d
    if-eqz v10, :cond_22

    .line 500
    invoke-virtual {v7, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 503
    goto :goto_f

    .line 504
    :cond_1d
    iget v2, v11, Lo/p0;->c:I

    .line 506
    iget v3, v13, Lo/p0;->b:I

    .line 508
    if-ge v2, v3, :cond_1e

    .line 510
    const/16 v17, -0x1

    .line 512
    goto :goto_e

    .line 513
    :cond_1e
    const/16 v17, 0x0

    .line 515
    :goto_e
    iget v10, v11, Lo/p0;->b:I

    .line 517
    if-ge v10, v3, :cond_1f

    .line 519
    add-int/lit8 v17, v17, 0x1

    .line 521
    :cond_1f
    if-gt v3, v10, :cond_20

    .line 523
    iget v3, v13, Lo/p0;->c:I

    .line 525
    add-int/2addr v10, v3

    .line 526
    iput v10, v11, Lo/p0;->b:I

    .line 528
    :cond_20
    iget v3, v13, Lo/p0;->b:I

    .line 530
    if-gt v3, v2, :cond_21

    .line 532
    iget v10, v13, Lo/p0;->c:I

    .line 534
    add-int/2addr v2, v10

    .line 535
    iput v2, v11, Lo/p0;->c:I

    .line 537
    :cond_21
    add-int v3, v3, v17

    .line 539
    iput v3, v13, Lo/p0;->b:I

    .line 541
    invoke-virtual {v7, v9, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 544
    invoke-virtual {v7, v14, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 547
    :cond_22
    :goto_f
    const/4 v2, 0x1

    .line 548
    const/4 v3, 0x0

    .line 549
    goto/16 :goto_0

    .line 551
    :cond_23
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 554
    move-result v2

    .line 555
    const/4 v3, 0x0

    .line 556
    :goto_10
    if-ge v3, v2, :cond_37

    .line 558
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 561
    move-result-object v8

    .line 562
    check-cast v8, Lo/p0;

    .line 564
    iget v9, v8, Lo/p0;->a:I

    .line 566
    const/4 v10, 0x1

    .line 567
    if-eq v9, v10, :cond_36

    .line 569
    iget-object v10, v6, Lo/q0;->b:Ljava/lang/Object;

    .line 571
    check-cast v10, Lo/Jc;

    .line 573
    iget-object v11, v6, Lo/q0;->d:Ljava/lang/Object;

    .line 575
    check-cast v11, Lo/ld;

    .line 577
    const/4 v12, 0x2

    .line 578
    if-eq v9, v12, :cond_2d

    .line 580
    const/4 v12, 0x4

    .line 581
    if-eq v9, v12, :cond_25

    .line 583
    if-eq v9, v14, :cond_24

    .line 585
    :goto_11
    move/from16 v21, v2

    .line 587
    :goto_12
    const/4 v2, 0x2

    .line 588
    const/16 v19, 0x1

    .line 590
    goto/16 :goto_20

    .line 592
    :cond_24
    invoke-virtual {v6, v8}, Lo/q0;->h(Lo/p0;)V

    .line 595
    goto :goto_11

    .line 596
    :cond_25
    iget v9, v8, Lo/p0;->b:I

    .line 598
    iget v12, v8, Lo/p0;->c:I

    .line 600
    add-int/2addr v12, v9

    .line 601
    move v13, v9

    .line 602
    const/4 v14, -0x1

    .line 603
    const/4 v15, 0x0

    .line 604
    :goto_13
    if-ge v9, v12, :cond_2a

    .line 606
    invoke-virtual {v11, v9}, Lo/ld;->b(I)Lo/Id;

    .line 609
    move-result-object v21

    .line 610
    if-nez v21, :cond_26

    .line 612
    invoke-virtual {v6, v9}, Lo/q0;->a(I)Z

    .line 615
    move-result v21

    .line 616
    if-eqz v21, :cond_27

    .line 618
    :cond_26
    move/from16 v21, v2

    .line 620
    const/4 v2, 0x4

    .line 621
    goto :goto_15

    .line 622
    :cond_27
    move/from16 v21, v2

    .line 624
    const/4 v2, 0x1

    .line 625
    if-ne v14, v2, :cond_28

    .line 627
    const/4 v2, 0x4

    .line 628
    invoke-virtual {v6, v2, v13, v15}, Lo/q0;->g(III)Lo/p0;

    .line 631
    move-result-object v13

    .line 632
    invoke-virtual {v6, v13}, Lo/q0;->h(Lo/p0;)V

    .line 635
    move v13, v9

    .line 636
    const/4 v15, 0x0

    .line 637
    goto :goto_14

    .line 638
    :cond_28
    const/4 v2, 0x4

    .line 639
    :goto_14
    const/4 v2, 0x1

    .line 640
    const/4 v14, 0x0

    .line 641
    goto :goto_16

    .line 642
    :goto_15
    if-nez v14, :cond_29

    .line 644
    invoke-virtual {v6, v2, v13, v15}, Lo/q0;->g(III)Lo/p0;

    .line 647
    move-result-object v13

    .line 648
    invoke-virtual {v6, v13}, Lo/q0;->c(Lo/p0;)V

    .line 651
    move v13, v9

    .line 652
    const/4 v15, 0x0

    .line 653
    :cond_29
    const/4 v2, 0x1

    .line 654
    const/4 v14, 0x1

    .line 655
    :goto_16
    add-int/2addr v15, v2

    .line 656
    add-int/lit8 v9, v9, 0x1

    .line 658
    move/from16 v2, v21

    .line 660
    goto :goto_13

    .line 661
    :cond_2a
    move/from16 v21, v2

    .line 663
    iget v2, v8, Lo/p0;->c:I

    .line 665
    if-eq v15, v2, :cond_2b

    .line 667
    invoke-virtual {v10, v8}, Lo/Jc;->c(Ljava/lang/Object;)Z

    .line 670
    const/4 v2, 0x4

    .line 671
    invoke-virtual {v6, v2, v13, v15}, Lo/q0;->g(III)Lo/p0;

    .line 674
    move-result-object v8

    .line 675
    goto :goto_17

    .line 676
    :cond_2b
    const/4 v2, 0x4

    .line 677
    :goto_17
    if-nez v14, :cond_2c

    .line 679
    invoke-virtual {v6, v8}, Lo/q0;->c(Lo/p0;)V

    .line 682
    goto :goto_12

    .line 683
    :cond_2c
    invoke-virtual {v6, v8}, Lo/q0;->h(Lo/p0;)V

    .line 686
    goto :goto_12

    .line 687
    :cond_2d
    move/from16 v21, v2

    .line 689
    const/4 v2, 0x4

    .line 690
    iget v9, v8, Lo/p0;->b:I

    .line 692
    iget v12, v8, Lo/p0;->c:I

    .line 694
    add-int/2addr v12, v9

    .line 695
    move v13, v9

    .line 696
    const/4 v14, 0x0

    .line 697
    const/4 v15, -0x1

    .line 698
    :goto_18
    if-ge v13, v12, :cond_33

    .line 700
    invoke-virtual {v11, v13}, Lo/ld;->b(I)Lo/Id;

    .line 703
    move-result-object v20

    .line 704
    if-nez v20, :cond_2e

    .line 706
    invoke-virtual {v6, v13}, Lo/q0;->a(I)Z

    .line 709
    move-result v20

    .line 710
    if-eqz v20, :cond_2f

    .line 712
    :cond_2e
    const/4 v2, 0x2

    .line 713
    goto :goto_1a

    .line 714
    :cond_2f
    const/4 v2, 0x1

    .line 715
    if-ne v15, v2, :cond_30

    .line 717
    const/4 v2, 0x2

    .line 718
    invoke-virtual {v6, v2, v9, v14}, Lo/q0;->g(III)Lo/p0;

    .line 721
    move-result-object v15

    .line 722
    invoke-virtual {v6, v15}, Lo/q0;->h(Lo/p0;)V

    .line 725
    const/4 v15, 0x1

    .line 726
    goto :goto_19

    .line 727
    :cond_30
    const/4 v2, 0x2

    .line 728
    const/4 v15, 0x0

    .line 729
    :goto_19
    const/4 v2, 0x0

    .line 730
    goto :goto_1c

    .line 731
    :goto_1a
    if-nez v15, :cond_31

    .line 733
    invoke-virtual {v6, v2, v9, v14}, Lo/q0;->g(III)Lo/p0;

    .line 736
    move-result-object v15

    .line 737
    invoke-virtual {v6, v15}, Lo/q0;->c(Lo/p0;)V

    .line 740
    const/4 v2, 0x1

    .line 741
    goto :goto_1b

    .line 742
    :cond_31
    const/4 v2, 0x0

    .line 743
    :goto_1b
    move v15, v2

    .line 744
    const/4 v2, 0x1

    .line 745
    :goto_1c
    if-eqz v15, :cond_32

    .line 747
    sub-int/2addr v13, v14

    .line 748
    sub-int/2addr v12, v14

    .line 749
    const/4 v14, 0x1

    .line 750
    :goto_1d
    const/16 v19, 0x1

    .line 752
    goto :goto_1e

    .line 753
    :cond_32
    add-int/lit8 v14, v14, 0x1

    .line 755
    goto :goto_1d

    .line 756
    :goto_1e
    add-int/lit8 v13, v13, 0x1

    .line 758
    move v15, v2

    .line 759
    const/4 v2, 0x4

    .line 760
    goto :goto_18

    .line 761
    :cond_33
    const/16 v19, 0x1

    .line 763
    iget v2, v8, Lo/p0;->c:I

    .line 765
    if-eq v14, v2, :cond_34

    .line 767
    invoke-virtual {v10, v8}, Lo/Jc;->c(Ljava/lang/Object;)Z

    .line 770
    const/4 v2, 0x2

    .line 771
    invoke-virtual {v6, v2, v9, v14}, Lo/q0;->g(III)Lo/p0;

    .line 774
    move-result-object v8

    .line 775
    goto :goto_1f

    .line 776
    :cond_34
    const/4 v2, 0x2

    .line 777
    :goto_1f
    if-nez v15, :cond_35

    .line 779
    invoke-virtual {v6, v8}, Lo/q0;->c(Lo/p0;)V

    .line 782
    goto :goto_20

    .line 783
    :cond_35
    invoke-virtual {v6, v8}, Lo/q0;->h(Lo/p0;)V

    .line 786
    goto :goto_20

    .line 787
    :cond_36
    move/from16 v21, v2

    .line 789
    move/from16 v19, v10

    .line 791
    const/4 v2, 0x2

    .line 792
    invoke-virtual {v6, v8}, Lo/q0;->h(Lo/p0;)V

    .line 795
    :goto_20
    add-int/lit8 v3, v3, 0x1

    .line 797
    move/from16 v2, v21

    .line 799
    const/16 v14, 0x8

    .line 801
    goto/16 :goto_10

    .line 803
    :cond_37
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 806
    goto :goto_21

    .line 807
    :cond_38
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->d:Lo/q0;

    .line 809
    invoke-virtual {v2}, Lo/q0;->b()V

    .line 812
    :goto_21
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Z

    .line 814
    const/4 v3, 0x1

    .line 815
    const/4 v6, 0x0

    .line 816
    if-nez v2, :cond_3a

    .line 818
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    .line 820
    if-eqz v2, :cond_39

    .line 822
    goto :goto_22

    .line 823
    :cond_39
    move v2, v6

    .line 824
    goto :goto_23

    .line 825
    :cond_3a
    :goto_22
    move v2, v3

    .line 826
    :goto_23
    iget-boolean v7, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 828
    if-eqz v7, :cond_3d

    .line 830
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 832
    if-eqz v7, :cond_3d

    .line 834
    iget-boolean v7, v0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 836
    if-nez v7, :cond_3b

    .line 838
    if-nez v2, :cond_3b

    .line 840
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 842
    iget-boolean v8, v8, Lo/ud;->f:Z

    .line 844
    if-eqz v8, :cond_3d

    .line 846
    :cond_3b
    if-eqz v7, :cond_3c

    .line 848
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 850
    iget-boolean v7, v7, Lo/md;->b:Z

    .line 852
    if-eqz v7, :cond_3d

    .line 854
    :cond_3c
    move v7, v3

    .line 855
    goto :goto_24

    .line 856
    :cond_3d
    move v7, v6

    .line 857
    :goto_24
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 859
    iput-boolean v7, v8, Lo/Fd;->j:Z

    .line 861
    if-eqz v7, :cond_3e

    .line 863
    if-eqz v2, :cond_3e

    .line 865
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 867
    if-nez v2, :cond_3e

    .line 869
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 871
    if-eqz v2, :cond_3e

    .line 873
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 875
    invoke-virtual {v2}, Lo/ud;->z0()Z

    .line 878
    move-result v2

    .line 879
    if-eqz v2, :cond_3e

    .line 881
    goto :goto_25

    .line 882
    :cond_3e
    move v3, v6

    .line 883
    :goto_25
    iput-boolean v3, v8, Lo/Fd;->k:Z

    .line 885
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->V:Z

    .line 887
    const/4 v3, 0x0

    .line 888
    if-eqz v2, :cond_3f

    .line 890
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    .line 893
    move-result v2

    .line 894
    if-eqz v2, :cond_3f

    .line 896
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 898
    if-eqz v2, :cond_3f

    .line 900
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 903
    move-result-object v2

    .line 904
    goto :goto_26

    .line 905
    :cond_3f
    move-object v2, v3

    .line 906
    :goto_26
    if-nez v2, :cond_40

    .line 908
    goto :goto_27

    .line 909
    :cond_40
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->A(Landroid/view/View;)Landroid/view/View;

    .line 912
    move-result-object v2

    .line 913
    if-nez v2, :cond_41

    .line 915
    goto :goto_27

    .line 916
    :cond_41
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->H(Landroid/view/View;)Lo/Id;

    .line 919
    move-result-object v3

    .line 920
    :goto_27
    const-wide/16 v6, -0x1

    .line 922
    const/4 v2, -0x1

    .line 923
    if-nez v3, :cond_42

    .line 925
    iput-wide v6, v1, Lo/Fd;->m:J

    .line 927
    iput v2, v1, Lo/Fd;->l:I

    .line 929
    iput v2, v1, Lo/Fd;->n:I

    .line 931
    goto :goto_2b

    .line 932
    :cond_42
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 934
    iget-boolean v8, v8, Lo/md;->b:Z

    .line 936
    if-eqz v8, :cond_43

    .line 938
    iget-wide v6, v3, Lo/Id;->e:J

    .line 940
    :cond_43
    iput-wide v6, v1, Lo/Fd;->m:J

    .line 942
    iget-boolean v6, v0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 944
    if-eqz v6, :cond_44

    .line 946
    :goto_28
    move v6, v2

    .line 947
    goto :goto_29

    .line 948
    :cond_44
    invoke-virtual {v3}, Lo/Id;->i()Z

    .line 951
    move-result v6

    .line 952
    if-eqz v6, :cond_45

    .line 954
    iget v6, v3, Lo/Id;->d:I

    .line 956
    goto :goto_29

    .line 957
    :cond_45
    iget-object v6, v3, Lo/Id;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 959
    if-nez v6, :cond_46

    .line 961
    goto :goto_28

    .line 962
    :cond_46
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->F(Lo/Id;)I

    .line 965
    move-result v6

    .line 966
    :goto_29
    iput v6, v1, Lo/Fd;->l:I

    .line 968
    iget-object v3, v3, Lo/Id;->a:Landroid/view/View;

    .line 970
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 973
    move-result v6

    .line 974
    :cond_47
    :goto_2a
    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    .line 977
    move-result v7

    .line 978
    if-nez v7, :cond_48

    .line 980
    instance-of v7, v3, Landroid/view/ViewGroup;

    .line 982
    if-eqz v7, :cond_48

    .line 984
    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    .line 987
    move-result v7

    .line 988
    if-eqz v7, :cond_48

    .line 990
    check-cast v3, Landroid/view/ViewGroup;

    .line 992
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 995
    move-result-object v3

    .line 996
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 999
    move-result v7

    .line 1000
    if-eq v7, v2, :cond_47

    .line 1002
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 1005
    move-result v6

    .line 1006
    goto :goto_2a

    .line 1007
    :cond_48
    iput v6, v1, Lo/Fd;->n:I

    .line 1009
    :goto_2b
    iget-boolean v3, v1, Lo/Fd;->j:Z

    .line 1011
    if-eqz v3, :cond_49

    .line 1013
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    .line 1015
    if-eqz v3, :cond_49

    .line 1017
    const/4 v3, 0x1

    .line 1018
    goto :goto_2c

    .line 1019
    :cond_49
    const/4 v3, 0x0

    .line 1020
    :goto_2c
    iput-boolean v3, v1, Lo/Fd;->h:Z

    .line 1022
    const/4 v3, 0x0

    .line 1023
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    .line 1025
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Z

    .line 1027
    iget-boolean v3, v1, Lo/Fd;->k:Z

    .line 1029
    iput-boolean v3, v1, Lo/Fd;->g:Z

    .line 1031
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 1033
    invoke-virtual {v3}, Lo/md;->a()I

    .line 1036
    move-result v3

    .line 1037
    iput v3, v1, Lo/Fd;->e:I

    .line 1039
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->k0:[I

    .line 1041
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->C([I)V

    .line 1044
    iget-boolean v3, v1, Lo/Fd;->j:Z

    .line 1046
    iget-object v4, v4, Lo/H1;->b:Ljava/lang/Object;

    .line 1048
    check-cast v4, Lo/Qe;

    .line 1050
    if-eqz v3, :cond_4d

    .line 1052
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 1054
    invoke-virtual {v3}, Lo/s2;->m()I

    .line 1057
    move-result v3

    .line 1058
    const/4 v6, 0x0

    .line 1059
    :goto_2d
    if-ge v6, v3, :cond_4d

    .line 1061
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 1063
    invoke-virtual {v7, v6}, Lo/s2;->l(I)Landroid/view/View;

    .line 1066
    move-result-object v7

    .line 1067
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 1070
    move-result-object v7

    .line 1071
    invoke-virtual {v7}, Lo/Id;->p()Z

    .line 1074
    move-result v8

    .line 1075
    if-nez v8, :cond_4c

    .line 1077
    invoke-virtual {v7}, Lo/Id;->g()Z

    .line 1080
    move-result v8

    .line 1081
    if-eqz v8, :cond_4a

    .line 1083
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 1085
    iget-boolean v8, v8, Lo/md;->b:Z

    .line 1087
    if-nez v8, :cond_4a

    .line 1089
    goto :goto_2e

    .line 1090
    :cond_4a
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 1092
    invoke-static {v7}, Lo/qd;->b(Lo/Id;)V

    .line 1095
    invoke-virtual {v7}, Lo/Id;->c()Ljava/util/List;

    .line 1098
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1101
    new-instance v8, Lo/Wb;

    .line 1103
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 1106
    invoke-virtual {v8, v7}, Lo/Wb;->a(Lo/Id;)V

    .line 1109
    invoke-virtual {v4, v7}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    move-result-object v9

    .line 1113
    check-cast v9, Lo/Ih;

    .line 1115
    if-nez v9, :cond_4b

    .line 1117
    invoke-static {}, Lo/Ih;->a()Lo/Ih;

    .line 1120
    move-result-object v9

    .line 1121
    invoke-virtual {v4, v7, v9}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    :cond_4b
    iput-object v8, v9, Lo/Ih;->b:Lo/Wb;

    .line 1126
    iget v8, v9, Lo/Ih;->a:I

    .line 1128
    or-int/lit8 v8, v8, 0x4

    .line 1130
    iput v8, v9, Lo/Ih;->a:I

    .line 1132
    iget-boolean v8, v1, Lo/Fd;->h:Z

    .line 1134
    if-eqz v8, :cond_4c

    .line 1136
    invoke-virtual {v7}, Lo/Id;->l()Z

    .line 1139
    move-result v8

    .line 1140
    if-eqz v8, :cond_4c

    .line 1142
    invoke-virtual {v7}, Lo/Id;->i()Z

    .line 1145
    move-result v8

    .line 1146
    if-nez v8, :cond_4c

    .line 1148
    invoke-virtual {v7}, Lo/Id;->p()Z

    .line 1151
    move-result v8

    .line 1152
    if-nez v8, :cond_4c

    .line 1154
    invoke-virtual {v7}, Lo/Id;->g()Z

    .line 1157
    move-result v8

    .line 1158
    if-nez v8, :cond_4c

    .line 1160
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->G(Lo/Id;)J

    .line 1163
    move-result-wide v8

    .line 1164
    invoke-virtual {v5, v8, v9, v7}, Lo/za;->d(JLjava/lang/Object;)V

    .line 1167
    :cond_4c
    :goto_2e
    add-int/lit8 v6, v6, 0x1

    .line 1169
    goto :goto_2d

    .line 1170
    :cond_4d
    iget-boolean v3, v1, Lo/Fd;->k:Z

    .line 1172
    const/4 v5, 0x2

    .line 1173
    if-eqz v3, :cond_55

    .line 1175
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 1177
    invoke-virtual {v3}, Lo/s2;->u()I

    .line 1180
    move-result v3

    .line 1181
    const/4 v6, 0x0

    .line 1182
    :goto_2f
    if-ge v6, v3, :cond_4f

    .line 1184
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 1186
    invoke-virtual {v7, v6}, Lo/s2;->t(I)Landroid/view/View;

    .line 1189
    move-result-object v7

    .line 1190
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 1193
    move-result-object v7

    .line 1194
    invoke-virtual {v7}, Lo/Id;->p()Z

    .line 1197
    move-result v8

    .line 1198
    if-nez v8, :cond_4e

    .line 1200
    iget v8, v7, Lo/Id;->d:I

    .line 1202
    if-ne v8, v2, :cond_4e

    .line 1204
    iget v8, v7, Lo/Id;->c:I

    .line 1206
    iput v8, v7, Lo/Id;->d:I

    .line 1208
    :cond_4e
    add-int/lit8 v6, v6, 0x1

    .line 1210
    goto :goto_2f

    .line 1211
    :cond_4f
    iget-boolean v2, v1, Lo/Fd;->f:Z

    .line 1213
    const/4 v3, 0x0

    .line 1214
    iput-boolean v3, v1, Lo/Fd;->f:Z

    .line 1216
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 1218
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 1220
    invoke-virtual {v3, v6, v1}, Lo/ud;->b0(Lo/Ad;Lo/Fd;)V

    .line 1223
    iput-boolean v2, v1, Lo/Fd;->f:Z

    .line 1225
    const/4 v3, 0x0

    .line 1226
    :goto_30
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 1228
    invoke-virtual {v2}, Lo/s2;->m()I

    .line 1231
    move-result v2

    .line 1232
    if-ge v3, v2, :cond_54

    .line 1234
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 1236
    invoke-virtual {v2, v3}, Lo/s2;->l(I)Landroid/view/View;

    .line 1239
    move-result-object v2

    .line 1240
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 1243
    move-result-object v2

    .line 1244
    invoke-virtual {v2}, Lo/Id;->p()Z

    .line 1247
    move-result v6

    .line 1248
    if-eqz v6, :cond_50

    .line 1250
    goto :goto_31

    .line 1251
    :cond_50
    invoke-virtual {v4, v2}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    move-result-object v6

    .line 1255
    check-cast v6, Lo/Ih;

    .line 1257
    if-eqz v6, :cond_51

    .line 1259
    iget v6, v6, Lo/Ih;->a:I

    .line 1261
    and-int/lit8 v6, v6, 0x4

    .line 1263
    if-eqz v6, :cond_51

    .line 1265
    goto :goto_31

    .line 1266
    :cond_51
    invoke-static {v2}, Lo/qd;->b(Lo/Id;)V

    .line 1269
    const/16 v6, 0x2000

    .line 1271
    invoke-virtual {v2, v6}, Lo/Id;->d(I)Z

    .line 1274
    move-result v6

    .line 1275
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 1277
    invoke-virtual {v2}, Lo/Id;->c()Ljava/util/List;

    .line 1280
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1283
    new-instance v7, Lo/Wb;

    .line 1285
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 1288
    invoke-virtual {v7, v2}, Lo/Wb;->a(Lo/Id;)V

    .line 1291
    if-eqz v6, :cond_52

    .line 1293
    invoke-virtual {v0, v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->T(Lo/Id;Lo/Wb;)V

    .line 1296
    goto :goto_31

    .line 1297
    :cond_52
    invoke-virtual {v4, v2}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    move-result-object v6

    .line 1301
    check-cast v6, Lo/Ih;

    .line 1303
    if-nez v6, :cond_53

    .line 1305
    invoke-static {}, Lo/Ih;->a()Lo/Ih;

    .line 1308
    move-result-object v6

    .line 1309
    invoke-virtual {v4, v2, v6}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    :cond_53
    iget v2, v6, Lo/Ih;->a:I

    .line 1314
    or-int/2addr v2, v5

    .line 1315
    iput v2, v6, Lo/Ih;->a:I

    .line 1317
    iput-object v7, v6, Lo/Ih;->b:Lo/Wb;

    .line 1319
    :goto_31
    add-int/lit8 v3, v3, 0x1

    .line 1321
    goto :goto_30

    .line 1322
    :cond_54
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->k()V

    .line 1325
    :goto_32
    const/4 v2, 0x1

    .line 1326
    goto :goto_33

    .line 1327
    :cond_55
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->k()V

    .line 1330
    goto :goto_32

    .line 1331
    :goto_33
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->Q(Z)V

    .line 1334
    const/4 v2, 0x0

    .line 1335
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    .line 1338
    iput v5, v1, Lo/Fd;->d:I

    .line 1340
    return-void
.end method

.method public final q()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->P()V

    .line 7
    const/4 v0, 0x6

    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 10
    invoke-virtual {v1, v0}, Lo/Fd;->a(I)V

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Lo/q0;

    .line 15
    invoke-virtual {v0}, Lo/q0;->b()V

    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 20
    invoke-virtual {v0}, Lo/md;->a()I

    .line 23
    move-result v0

    .line 24
    iput v0, v1, Lo/Fd;->e:I

    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, v1, Lo/Fd;->c:I

    .line 29
    iput-boolean v0, v1, Lo/Fd;->g:Z

    .line 31
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 33
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 35
    invoke-virtual {v2, v3, v1}, Lo/ud;->b0(Lo/Ad;Lo/Fd;)V

    .line 38
    iput-boolean v0, v1, Lo/Fd;->f:Z

    .line 40
    const/4 v2, 0x0

    .line 41
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Lo/Cd;

    .line 43
    iget-boolean v2, v1, Lo/Fd;->j:Z

    .line 45
    const/4 v3, 0x1

    .line 46
    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 50
    if-eqz v2, :cond_0

    .line 52
    move v2, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v2, v0

    .line 55
    :goto_0
    iput-boolean v2, v1, Lo/Fd;->j:Z

    .line 57
    const/4 v2, 0x4

    .line 58
    iput v2, v1, Lo/Fd;->d:I

    .line 60
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->Q(Z)V

    .line 63
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    .line 66
    return-void
.end method

.method public final r(I[III[I)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 4
    move-result-object v0

    .line 5
    move v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Lo/Tb;->c(I[III[I)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lo/Id;->k()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    iget v1, v0, Lo/Id;->j:I

    .line 15
    and-int/lit16 v1, v1, -0x101

    .line 17
    iput v1, v0, Lo/Id;->j:I

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lo/Id;->p()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    .line 33
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1

    .line 54
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 57
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 60
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 63
    return-void
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    iget-object v0, v0, Lo/ud;->e:Lo/aa;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-boolean v0, v0, Lo/aa;->e:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-eqz p2, :cond_2

    .line 21
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->U(Landroid/view/View;Landroid/view/View;)V

    .line 24
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 27
    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move v4, p3

    .line 8
    invoke-virtual/range {v0 .. v5}, Lo/ud;->k0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lo/s7;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 25
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 16
    :goto_0
    return-void
.end method

.method public final s(I[IIII[II)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 4
    move-result-object v0

    .line 5
    move v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    move-object v6, p6

    .line 11
    move v7, p7

    .line 12
    invoke-virtual/range {v0 .. v7}, Lo/Tb;->d(I[IIII[II)Z

    .line 15
    return-void
.end method

.method public final scrollBy(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string p1, "RecyclerView"

    .line 7
    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 15
    if-eqz v1, :cond_1

    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, Lo/ud;->d()Z

    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 24
    invoke-virtual {v1}, Lo/ud;->e()Z

    .line 27
    move-result v1

    .line 28
    if-nez v0, :cond_2

    .line 30
    if-eqz v1, :cond_5

    .line 32
    :cond_2
    const/4 v2, 0x0

    .line 33
    if-eqz v0, :cond_3

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    move p1, v2

    .line 37
    :goto_0
    if-eqz v1, :cond_4

    .line 39
    goto :goto_1

    .line 40
    :cond_4
    move p2, v2

    .line 41
    :goto_1
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->W(IILandroid/view/MotionEvent;)Z

    .line 45
    :cond_5
    return-void
.end method

.method public final scrollTo(II)V
    .locals 0

    .line 1
    const-string p1, "RecyclerView"

    .line 3
    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v0, p1

    .line 20
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:I

    .line 22
    or-int/2addr p1, v0

    .line 23
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:I

    .line 25
    return-void

    .line 26
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 29
    return-void
.end method

.method public setAccessibilityDelegateCompat(Lo/Kd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->j0:Lo/Kd;

    .line 3
    invoke-static {p0, p1}, Lo/Dh;->l(Landroid/view/View;Lo/r;)V

    .line 6
    return-void
.end method

.method public setAdapter(Lo/md;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 7
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->a:Lo/u6;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget-object v1, v1, Lo/md;->a:Lo/nd;

    .line 13
    invoke-virtual {v1, v2}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 23
    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {v1}, Lo/qd;->e()V

    .line 28
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 30
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 32
    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {v1, v3}, Lo/ud;->g0(Lo/Ad;)V

    .line 37
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 39
    invoke-virtual {v1, v3}, Lo/ud;->h0(Lo/Ad;)V

    .line 42
    :cond_2
    iget-object v1, v3, Lo/Ad;->a:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 47
    invoke-virtual {v3}, Lo/Ad;->d()V

    .line 50
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Lo/q0;

    .line 52
    iget-object v4, v1, Lo/q0;->a:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v1, v4}, Lo/q0;->i(Ljava/util/ArrayList;)V

    .line 57
    iget-object v4, v1, Lo/q0;->c:Ljava/lang/Object;

    .line 59
    check-cast v4, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v1, v4}, Lo/q0;->i(Ljava/util/ArrayList;)V

    .line 64
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 66
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 68
    if-eqz p1, :cond_3

    .line 70
    iget-object p1, p1, Lo/md;->a:Lo/nd;

    .line 72
    invoke-virtual {p1, v2}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 75
    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 77
    iget-object v2, v3, Lo/Ad;->a:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 82
    invoke-virtual {v3}, Lo/Ad;->d()V

    .line 85
    invoke-virtual {v3}, Lo/Ad;->c()Lo/zd;

    .line 88
    move-result-object v2

    .line 89
    const/4 v3, 0x1

    .line 90
    if-eqz v1, :cond_4

    .line 92
    iget v1, v2, Lo/zd;->b:I

    .line 94
    sub-int/2addr v1, v3

    .line 95
    iput v1, v2, Lo/zd;->b:I

    .line 97
    :cond_4
    iget v1, v2, Lo/zd;->b:I

    .line 99
    if-nez v1, :cond_5

    .line 101
    move v1, v0

    .line 102
    :goto_0
    iget-object v4, v2, Lo/zd;->a:Landroid/util/SparseArray;

    .line 104
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 107
    move-result v5

    .line 108
    if-ge v1, v5, :cond_5

    .line 110
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lo/yd;

    .line 116
    iget-object v4, v4, Lo/yd;->a:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_5
    if-eqz p1, :cond_6

    .line 126
    iget p1, v2, Lo/zd;->b:I

    .line 128
    add-int/2addr p1, v3

    .line 129
    iput p1, v2, Lo/zd;->b:I

    .line 131
    :cond_6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 133
    iput-boolean v3, p1, Lo/Fd;->f:Z

    .line 135
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->z:Z

    .line 137
    or-int/2addr p1, v0

    .line 138
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->z:Z

    .line 140
    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 143
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 145
    invoke-virtual {p1}, Lo/s2;->u()I

    .line 148
    move-result p1

    .line 149
    const/4 v0, 0x0

    .line 150
    move v1, v0

    .line 151
    :goto_1
    const/4 v2, 0x6

    .line 152
    if-ge v1, p1, :cond_8

    .line 154
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 156
    invoke-virtual {v3, v1}, Lo/s2;->t(I)Landroid/view/View;

    .line 159
    move-result-object v3

    .line 160
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 163
    move-result-object v3

    .line 164
    if-eqz v3, :cond_7

    .line 166
    invoke-virtual {v3}, Lo/Id;->p()Z

    .line 169
    move-result v4

    .line 170
    if-nez v4, :cond_7

    .line 172
    invoke-virtual {v3, v2}, Lo/Id;->a(I)V

    .line 175
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 177
    goto :goto_1

    .line 178
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->N()V

    .line 181
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 183
    iget-object v1, p1, Lo/Ad;->c:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 188
    move-result v3

    .line 189
    :goto_2
    if-ge v0, v3, :cond_a

    .line 191
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    move-result-object v4

    .line 195
    check-cast v4, Lo/Id;

    .line 197
    if-eqz v4, :cond_9

    .line 199
    invoke-virtual {v4, v2}, Lo/Id;->a(I)V

    .line 202
    const/16 v5, 0x400

    .line 204
    invoke-virtual {v4, v5}, Lo/Id;->a(I)V

    .line 207
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 209
    goto :goto_2

    .line 210
    :cond_a
    iget-object v0, p1, Lo/Ad;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 212
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 214
    if-eqz v0, :cond_b

    .line 216
    iget-boolean v0, v0, Lo/md;->b:Z

    .line 218
    if-nez v0, :cond_c

    .line 220
    :cond_b
    invoke-virtual {p1}, Lo/Ad;->d()V

    .line 223
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 226
    return-void
.end method

.method public setChildDrawingOrderCallback(Lo/od;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 8
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 12
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 14
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 16
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 19
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    .line 21
    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 26
    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Lo/pd;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Lo/pd;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 9
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 13
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 15
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->q:Z

    .line 3
    return-void
.end method

.method public setItemAnimator(Lo/qd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lo/qd;->e()V

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lo/qd;->a:Lo/ld;

    .line 13
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 15
    if-eqz p1, :cond_1

    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Lo/ld;

    .line 19
    iput-object v0, p1, Lo/qd;->a:Lo/ld;

    .line 21
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 3
    iput p1, v0, Lo/Ad;->e:I

    .line 5
    invoke-virtual {v0}, Lo/Ad;->k()V

    .line 8
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    .line 4
    return-void
.end method

.method public setLayoutManager(Lo/ud;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 4
    if-ne p1, v1, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 11
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Lo/Hd;

    .line 13
    iget-object v3, v2, Lo/Hd;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    invoke-virtual {v3, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 18
    iget-object v2, v2, Lo/Hd;->c:Landroid/widget/OverScroller;

    .line 20
    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 23
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 25
    if-eqz v2, :cond_1

    .line 27
    iget-object v2, v2, Lo/ud;->e:Lo/aa;

    .line 29
    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {v2}, Lo/aa;->i()V

    .line 34
    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 36
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 38
    if-eqz v2, :cond_4

    .line 40
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 42
    if-eqz v2, :cond_2

    .line 44
    invoke-virtual {v2}, Lo/qd;->e()V

    .line 47
    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 49
    invoke-virtual {v2, v3}, Lo/ud;->g0(Lo/Ad;)V

    .line 52
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 54
    invoke-virtual {v2, v3}, Lo/ud;->h0(Lo/Ad;)V

    .line 57
    iget-object v2, v3, Lo/Ad;->a:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 62
    invoke-virtual {v3}, Lo/Ad;->d()V

    .line 65
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 67
    if-eqz v2, :cond_3

    .line 69
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 71
    iput-boolean v1, v2, Lo/ud;->g:Z

    .line 73
    invoke-virtual {v2, p0}, Lo/ud;->R(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 76
    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-virtual {v2, v4}, Lo/ud;->t0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 82
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    iget-object v2, v3, Lo/Ad;->a:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 90
    invoke-virtual {v3}, Lo/Ad;->d()V

    .line 93
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 95
    iget-object v4, v2, Lo/s2;->c:Ljava/lang/Object;

    .line 97
    check-cast v4, Lo/L3;

    .line 99
    invoke-virtual {v4}, Lo/L3;->g()V

    .line 102
    iget-object v4, v2, Lo/s2;->d:Ljava/lang/Object;

    .line 104
    check-cast v4, Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 109
    move-result v5

    .line 110
    sub-int/2addr v5, v0

    .line 111
    :goto_1
    iget-object v6, v2, Lo/s2;->b:Ljava/lang/Object;

    .line 113
    check-cast v6, Lo/ld;

    .line 115
    iget-object v6, v6, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 117
    if-ltz v5, :cond_7

    .line 119
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object v7

    .line 123
    check-cast v7, Landroid/view/View;

    .line 125
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 128
    move-result-object v7

    .line 129
    if-eqz v7, :cond_6

    .line 131
    iget v8, v7, Lo/Id;->p:I

    .line 133
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 136
    move-result v9

    .line 137
    if-eqz v9, :cond_5

    .line 139
    iput v8, v7, Lo/Id;->q:I

    .line 141
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->p0:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    goto :goto_2

    .line 147
    :cond_5
    sget-object v6, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 149
    iget-object v6, v7, Lo/Id;->a:Landroid/view/View;

    .line 151
    invoke-virtual {v6, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 154
    :goto_2
    iput v1, v7, Lo/Id;->p:I

    .line 156
    :cond_6
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 159
    add-int/lit8 v5, v5, -0x1

    .line 161
    goto :goto_1

    .line 162
    :cond_7
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 165
    move-result v2

    .line 166
    :goto_3
    if-ge v1, v2, :cond_8

    .line 168
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 171
    move-result-object v4

    .line 172
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 175
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 178
    add-int/2addr v1, v0

    .line 179
    goto :goto_3

    .line 180
    :cond_8
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 183
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 185
    if-eqz p1, :cond_a

    .line 187
    iget-object v1, p1, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 189
    if-nez v1, :cond_9

    .line 191
    invoke-virtual {p1, p0}, Lo/ud;->t0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 194
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 196
    if-eqz p1, :cond_a

    .line 198
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 200
    iput-boolean v0, p1, Lo/ud;->g:Z

    .line 202
    invoke-virtual {p1, p0}, Lo/ud;->Q(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 205
    goto :goto_4

    .line 206
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    .line 210
    const-string v2, "LayoutManager "

    .line 212
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    const-string v2, " is already attached to a RecyclerView:"

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object p1, p1, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 225
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object p1

    .line 236
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 239
    throw v0

    .line 240
    :cond_a
    :goto_4
    invoke-virtual {v3}, Lo/Ad;->k()V

    .line 243
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 246
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v0, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lo/Tb;->d:Z

    .line 7
    if-eqz v1, :cond_0

    .line 9
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 11
    iget-object v1, v0, Lo/Tb;->c:Landroid/view/ViewGroup;

    .line 13
    invoke-static {v1}, Lo/vh;->m(Landroid/view/View;)V

    .line 16
    :cond_0
    iput-boolean p1, v0, Lo/Tb;->d:Z

    .line 18
    return-void
.end method

.method public setOnFlingListener(Lo/wd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:Lo/wd;

    .line 3
    return-void
.end method

.method public setOnScrollListener(Lo/xd;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Lo/xd;

    .line 3
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->V:Z

    .line 3
    return-void
.end method

.method public setRecycledViewPool(Lo/zd;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 3
    iget-object v1, v0, Lo/Ad;->g:Lo/zd;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget v2, v1, Lo/zd;->b:I

    .line 9
    add-int/lit8 v2, v2, -0x1

    .line 11
    iput v2, v1, Lo/zd;->b:I

    .line 13
    :cond_0
    iput-object p1, v0, Lo/Ad;->g:Lo/zd;

    .line 15
    if-eqz p1, :cond_1

    .line 17
    iget-object p1, v0, Lo/Ad;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lo/md;

    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 25
    iget-object p1, v0, Lo/Ad;->g:Lo/zd;

    .line 27
    iget v0, p1, Lo/zd;->b:I

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 31
    iput v0, p1, Lo/zd;->b:I

    .line 33
    :cond_1
    return-void
.end method

.method public setRecyclerListener(Lo/Bd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setScrollState(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:I

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:I

    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_1

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Lo/Hd;

    .line 13
    iget-object v1, v0, Lo/Hd;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 18
    iget-object v0, v0, Lo/Hd;->c:Landroid/widget/OverScroller;

    .line 20
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 23
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 25
    if-eqz v0, :cond_1

    .line 27
    iget-object v0, v0, Lo/ud;->e:Lo/aa;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Lo/aa;->i()V

    .line 34
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 36
    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v0, p1}, Lo/ud;->f0(I)V

    .line 41
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Lo/xd;

    .line 43
    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {v0, p0, p1}, Lo/xd;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 48
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 50
    if-eqz v0, :cond_4

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v0

    .line 56
    add-int/lit8 v0, v0, -0x1

    .line 58
    :goto_0
    if-ltz v0, :cond_4

    .line 60
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lo/xd;

    .line 68
    invoke-virtual {v1, p0, p1}, Lo/xd;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 71
    add-int/lit8 v0, v0, -0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 8
    move-result-object v0

    .line 9
    if-eqz p1, :cond_1

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq p1, v1, :cond_0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string p1, "; using default value"

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    const-string v1, "RecyclerView"

    .line 35
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 42
    move-result p1

    .line 43
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 49
    move-result p1

    .line 50
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 52
    :goto_1
    return-void
.end method

.method public setViewCacheExtension(Lo/Gd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    return-void
.end method

.method public final startNestedScroll(I)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lo/Tb;->g(II)Z

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final stopNestedScroll()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lo/Tb;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lo/Tb;->h(I)V

    .line 9
    return-void
.end method

.method public final suppressLayout(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 3
    if-eq p1, v0, :cond_2

    .line 5
    const-string v0, "Do not suppressLayout in layout or scroll"

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->i(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 13
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 15
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 17
    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 21
    if-eqz p1, :cond_0

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 25
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 30
    :cond_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 36
    move-result-wide v3

    .line 37
    const/4 v5, 0x3

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    move-wide v1, v3

    .line 42
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 49
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 52
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 54
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 57
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Lo/Hd;

    .line 59
    iget-object v0, p1, Lo/Hd;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 64
    iget-object p1, p1, Lo/Hd;->c:Landroid/widget/OverScroller;

    .line 66
    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 69
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 71
    if-eqz p1, :cond_2

    .line 73
    iget-object p1, p1, Lo/ud;->e:Lo/aa;

    .line 75
    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {p1}, Lo/aa;->i()V

    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method public final t(II)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 14
    move-result v1

    .line 15
    sub-int v2, v0, p1

    .line 17
    sub-int v3, v1, p2

    .line 19
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Lo/xd;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p0, p1, p2}, Lo/xd;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 31
    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 39
    :goto_0
    if-ltz v0, :cond_1

    .line 41
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lo/xd;

    .line 49
    invoke-virtual {v1, p0, p1, p2}, Lo/xd;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 52
    add-int/lit8 v0, v0, -0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->B:I

    .line 57
    add-int/lit8 p1, p1, -0x1

    .line 59
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->B:I

    .line 61
    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Lo/pd;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 22
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 24
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 33
    move-result v2

    .line 34
    sub-int/2addr v1, v2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 38
    move-result v2

    .line 39
    sub-int/2addr v1, v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 47
    move-result v3

    .line 48
    sub-int/2addr v2, v3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    move-result v3

    .line 53
    sub-int/2addr v2, v3

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 65
    move-result v2

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 69
    :goto_0
    return-void
.end method

.method public final v()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Lo/pd;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 22
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 24
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 33
    move-result v2

    .line 34
    sub-int/2addr v1, v2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 38
    move-result v2

    .line 39
    sub-int/2addr v1, v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 47
    move-result v3

    .line 48
    sub-int/2addr v2, v3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 52
    move-result v3

    .line 53
    sub-int/2addr v2, v3

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 65
    move-result v2

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 69
    :goto_0
    return-void
.end method

.method public final w()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Lo/pd;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 22
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 24
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 33
    move-result v2

    .line 34
    sub-int/2addr v1, v2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 38
    move-result v2

    .line 39
    sub-int/2addr v1, v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 47
    move-result v3

    .line 48
    sub-int/2addr v2, v3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 52
    move-result v3

    .line 53
    sub-int/2addr v2, v3

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 65
    move-result v2

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 69
    :goto_0
    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Lo/pd;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 22
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 24
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 33
    move-result v2

    .line 34
    sub-int/2addr v1, v2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 38
    move-result v2

    .line 39
    sub-int/2addr v1, v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 47
    move-result v3

    .line 48
    sub-int/2addr v2, v3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    move-result v3

    .line 53
    sub-int/2addr v2, v3

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 65
    move-result v2

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 69
    :goto_0
    return-void
.end method

.method public final y()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, " "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", adapter:"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, ", layout:"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ", context:"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public final z(Lo/Fd;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Lo/Hd;

    .line 10
    iget-object v0, v0, Lo/Hd;->c:Landroid/widget/OverScroller;

    .line 12
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    .line 15
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    .line 24
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    :goto_0
    return-void
.end method
