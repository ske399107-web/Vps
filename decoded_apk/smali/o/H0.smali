.class public final Lo/H0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lo/J0;

.field public final c:Landroid/view/Window;

.field public d:Ljava/lang/CharSequence;

.field public e:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public f:Landroid/widget/Button;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/Button;

.field public i:Landroidx/core/widget/NestedScrollView;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/view/View;

.field public o:Landroid/widget/ListAdapter;

.field public p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:Z

.field public final v:Lo/F0;

.field public final w:Lo/P;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/J0;Landroid/view/Window;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lo/H0;->p:I

    .line 8
    new-instance v1, Lo/P;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2, p0}, Lo/P;-><init>(ILjava/lang/Object;)V

    .line 14
    iput-object v1, p0, Lo/H0;->w:Lo/P;

    .line 16
    iput-object p1, p0, Lo/H0;->a:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lo/H0;->b:Lo/J0;

    .line 20
    iput-object p3, p0, Lo/H0;->c:Landroid/view/Window;

    .line 22
    new-instance p3, Lo/F0;

    .line 24
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 27
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 29
    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    iput-object v1, p3, Lo/F0;->a:Ljava/lang/ref/WeakReference;

    .line 34
    iput-object p3, p0, Lo/H0;->v:Lo/F0;

    .line 36
    sget-object p3, Lo/gd;->e:[I

    .line 38
    const v1, 0x7f03002b

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 49
    move-result p3

    .line 50
    iput p3, p0, Lo/H0;->q:I

    .line 52
    const/4 p3, 0x2

    .line 53
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 56
    const/4 p3, 0x4

    .line 57
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 60
    move-result p3

    .line 61
    iput p3, p0, Lo/H0;->r:I

    .line 63
    const/4 p3, 0x5

    .line 64
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 67
    const/4 p3, 0x7

    .line 68
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 71
    move-result p3

    .line 72
    iput p3, p0, Lo/H0;->s:I

    .line 74
    const/4 p3, 0x3

    .line 75
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 78
    move-result p3

    .line 79
    iput p3, p0, Lo/H0;->t:I

    .line 81
    const/4 p3, 0x6

    .line 82
    const/4 v1, 0x1

    .line 83
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 86
    move-result p3

    .line 87
    iput-boolean p3, p0, Lo/H0;->u:Z

    .line 89
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 92
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-virtual {p2}, Lo/J0;->f()Lo/h1;

    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v1}, Lo/h1;->f(I)Z

    .line 102
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    if-nez p0, :cond_1

    .line 3
    instance-of p0, p1, Landroid/view/ViewStub;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    check-cast p1, Landroid/view/ViewStub;

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    return-object p1

    .line 16
    :cond_1
    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 24
    if-eqz v1, :cond_2

    .line 26
    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 31
    :cond_2
    instance-of p1, p0, Landroid/view/ViewStub;

    .line 33
    if-eqz p1, :cond_3

    .line 35
    check-cast p0, Landroid/view/ViewStub;

    .line 37
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 40
    move-result-object p0

    .line 41
    :cond_3
    check-cast p0, Landroid/view/ViewGroup;

    .line 43
    return-object p0
.end method
