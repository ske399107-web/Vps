.class public abstract Lo/ud;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lo/s2;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Lo/H1;

.field public final d:Lo/H1;

.field public e:Lo/aa;

.field public f:Z

.field public g:Z

.field public final h:Z

.field public final i:Z

.field public j:I

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lo/sd;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lo/sd;-><init>(Lo/ud;I)V

    .line 10
    new-instance v1, Lo/sd;

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, p0, v2}, Lo/sd;-><init>(Lo/ud;I)V

    .line 16
    new-instance v2, Lo/H1;

    .line 18
    invoke-direct {v2, v0}, Lo/H1;-><init>(Lo/sd;)V

    .line 21
    iput-object v2, p0, Lo/ud;->c:Lo/H1;

    .line 23
    new-instance v0, Lo/H1;

    .line 25
    invoke-direct {v0, v1}, Lo/H1;-><init>(Lo/sd;)V

    .line 28
    iput-object v0, p0, Lo/ud;->d:Lo/H1;

    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lo/ud;->f:Z

    .line 33
    iput-boolean v0, p0, Lo/ud;->g:Z

    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lo/ud;->h:Z

    .line 38
    iput-boolean v0, p0, Lo/ud;->i:Z

    .line 40
    return-void
.end method

.method public static A(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo/vd;

    .line 7
    iget-object v0, v0, Lo/vd;->b:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 12
    move-result p0

    .line 13
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 15
    add-int/2addr p0, v1

    .line 16
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 18
    add-int/2addr p0, v0

    .line 19
    return p0
.end method

.method public static H(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lo/vd;

    .line 7
    iget-object p0, p0, Lo/vd;->a:Lo/Id;

    .line 9
    invoke-virtual {p0}, Lo/Id;->b()I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static I(Landroid/content/Context;Landroid/util/AttributeSet;II)Lo/td;
    .locals 2

    .line 1
    new-instance v0, Lo/td;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v1, Lo/ed;->a:[I

    .line 8
    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x0

    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 17
    move-result p3

    .line 18
    iput p3, v0, Lo/td;->a:I

    .line 20
    const/16 p3, 0xa

    .line 22
    invoke-virtual {p0, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 25
    move-result p2

    .line 26
    iput p2, v0, Lo/td;->b:I

    .line 28
    const/16 p2, 0x9

    .line 30
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 33
    move-result p2

    .line 34
    iput-boolean p2, v0, Lo/td;->c:Z

    .line 36
    const/16 p2, 0xb

    .line 38
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 41
    move-result p1

    .line 42
    iput-boolean p1, v0, Lo/td;->d:Z

    .line 44
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-object v0
.end method

.method public static M(III)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-lez p2, :cond_0

    .line 12
    if-eq p0, p2, :cond_0

    .line 14
    return v1

    .line 15
    :cond_0
    const/high16 p2, -0x80000000

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v0, p2, :cond_4

    .line 20
    if-eqz v0, :cond_3

    .line 22
    const/high16 p2, 0x40000000    # 2.0f

    .line 24
    if-eq v0, p2, :cond_1

    .line 26
    return v1

    .line 27
    :cond_1
    if-ne p1, p0, :cond_2

    .line 29
    move v1, v2

    .line 30
    :cond_2
    return v1

    .line 31
    :cond_3
    return v2

    .line 32
    :cond_4
    if-lt p1, p0, :cond_5

    .line 34
    move v1, v2

    .line 35
    :cond_5
    return v1
.end method

.method public static N(Landroid/view/View;IIII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo/vd;

    .line 7
    iget-object v1, v0, Lo/vd;->b:Landroid/graphics/Rect;

    .line 9
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 11
    add-int/2addr p1, v2

    .line 12
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 14
    add-int/2addr p1, v2

    .line 15
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 17
    add-int/2addr p2, v2

    .line 18
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 20
    add-int/2addr p2, v2

    .line 21
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 23
    sub-int/2addr p3, v2

    .line 24
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 26
    sub-int/2addr p3, v2

    .line 27
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 29
    sub-int/2addr p4, v1

    .line 30
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 32
    sub-int/2addr p4, v0

    .line 33
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 36
    return-void
.end method

.method public static g(III)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result p0

    .line 9
    const/high16 v1, -0x80000000

    .line 11
    if-eq v0, v1, :cond_1

    .line 13
    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    if-eq v0, v1, :cond_0

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 20
    move-result p0

    .line 21
    :cond_0
    return p0

    .line 22
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result p1

    .line 26
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public static w(ZIIII)I
    .locals 4

    .line 1
    sub-int/2addr p1, p3

    .line 2
    const/4 p3, 0x0

    .line 3
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x2

    .line 8
    const/4 v1, -0x1

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    const/high16 v3, 0x40000000    # 2.0f

    .line 13
    if-eqz p0, :cond_2

    .line 15
    if-ltz p4, :cond_0

    .line 17
    :goto_0
    move p2, v3

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    if-ne p4, v1, :cond_1

    .line 21
    if-eq p2, v2, :cond_4

    .line 23
    if-eqz p2, :cond_1

    .line 25
    if-eq p2, v3, :cond_4

    .line 27
    :cond_1
    move p2, p3

    .line 28
    move p4, p2

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    if-ltz p4, :cond_3

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    if-ne p4, v1, :cond_5

    .line 35
    :cond_4
    move p4, p1

    .line 36
    goto :goto_2

    .line 37
    :cond_5
    if-ne p4, v0, :cond_1

    .line 39
    if-eq p2, v2, :cond_7

    .line 41
    if-ne p2, v3, :cond_6

    .line 43
    goto :goto_1

    .line 44
    :cond_6
    move p4, p1

    .line 45
    move p2, p3

    .line 46
    goto :goto_2

    .line 47
    :cond_7
    :goto_1
    move p4, p1

    .line 48
    move p2, v2

    .line 49
    :goto_2
    invoke-static {p4, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public static z(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo/vd;

    .line 7
    iget-object v0, v0, Lo/vd;->b:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 12
    move-result p0

    .line 13
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 15
    add-int/2addr p0, v1

    .line 16
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 18
    add-int/2addr p0, v0

    .line 19
    return p0
.end method


# virtual methods
.method public final B()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lo/md;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Lo/md;->a()I

    .line 16
    move-result v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_1
    return v0
.end method

.method public final C()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final D()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final E()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final F()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final G()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public J(Lo/Ad;Lo/Fd;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    const/4 p2, 0x1

    .line 4
    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 8
    if-nez p1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lo/ud;->e()Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 21
    invoke-virtual {p1}, Lo/md;->a()I

    .line 24
    move-result p2

    .line 25
    :cond_1
    :goto_0
    return p2
.end method

.method public final K(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo/vd;

    .line 7
    iget-object v0, v0, Lo/vd;->b:Landroid/graphics/Rect;

    .line 9
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 11
    neg-int v1, v1

    .line 12
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 14
    neg-int v2, v2

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 18
    move-result v3

    .line 19
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 21
    add-int/2addr v3, v4

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 25
    move-result v4

    .line 26
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 28
    add-int/2addr v4, v0

    .line 29
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 32
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_0

    .line 48
    iget-object v1, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->j:Landroid/graphics/RectF;

    .line 52
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 58
    iget v0, v1, Landroid/graphics/RectF;->left:F

    .line 60
    float-to-double v2, v0

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 64
    move-result-wide v2

    .line 65
    double-to-int v0, v2

    .line 66
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 68
    float-to-double v2, v2

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 72
    move-result-wide v2

    .line 73
    double-to-int v2, v2

    .line 74
    iget v3, v1, Landroid/graphics/RectF;->right:F

    .line 76
    float-to-double v3, v3

    .line 77
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 80
    move-result-wide v3

    .line 81
    double-to-int v3, v3

    .line 82
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 84
    float-to-double v4, v1

    .line 85
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 88
    move-result-wide v4

    .line 89
    double-to-int v1, v4

    .line 90
    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 96
    move-result v0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 100
    move-result p1

    .line 101
    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 104
    return-void
.end method

.method public abstract L()Z
.end method

.method public O(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 7
    invoke-virtual {v1}, Lo/s2;->m()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 16
    invoke-virtual {v3, v2}, Lo/s2;->l(I)Landroid/view/View;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public P(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 7
    invoke-virtual {v1}, Lo/s2;->m()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 16
    invoke-virtual {v3, v2}, Lo/s2;->l(I)Landroid/view/View;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public Q(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract R(Landroidx/recyclerview/widget/RecyclerView;)V
.end method

.method public abstract S(Landroid/view/View;ILo/Ad;Lo/Fd;)Landroid/view/View;
.end method

.method public T(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 7
    if-eqz v0, :cond_3

    .line 9
    if-nez p1, :cond_0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 19
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    const/4 v2, -0x1

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 28
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 36
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 49
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 53
    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {v0}, Lo/md;->a()I

    .line 58
    move-result v0

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 62
    :cond_3
    :goto_1
    return-void
.end method

.method public final U(Landroid/view/View;Lo/D;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lo/Id;->i()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    iget-object v1, p0, Lo/ud;->a:Lo/s2;

    .line 15
    iget-object v1, v1, Lo/s2;->d:Ljava/lang/Object;

    .line 17
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    iget-object v0, v0, Lo/Id;->a:Landroid/view/View;

    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 31
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 33
    invoke-virtual {p0, v1, v0, p1, p2}, Lo/ud;->V(Lo/Ad;Lo/Fd;Landroid/view/View;Lo/D;)V

    .line 36
    :cond_0
    return-void
.end method

.method public V(Lo/Ad;Lo/Fd;Landroid/view/View;Lo/D;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/ud;->e()Z

    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-static {p3}, Lo/ud;->H(Landroid/view/View;)I

    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, p2

    .line 14
    :goto_0
    invoke-virtual {p0}, Lo/ud;->d()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 20
    invoke-static {p3}, Lo/ud;->H(Landroid/view/View;)I

    .line 23
    move-result p3

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move p3, p2

    .line 26
    :goto_1
    const/4 v0, 0x1

    .line 27
    invoke-static {p2, p1, v0, p3, v0}, Lo/C;->B(ZIIII)Lo/C;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p4, p1}, Lo/D;->j(Lo/C;)V

    .line 34
    return-void
.end method

.method public W(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public X()V
    .locals 0

    .line 1
    return-void
.end method

.method public Y(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public Z(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public a0(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroid/view/View;IZ)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez p3, :cond_1

    .line 8
    invoke-virtual {v0}, Lo/Id;->i()Z

    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p3, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->f:Lo/H1;

    .line 19
    invoke-virtual {p3, v0}, Lo/H1;->K(Lo/Id;)V

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object p3, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->f:Lo/H1;

    .line 27
    iget-object p3, p3, Lo/H1;->b:Ljava/lang/Object;

    .line 29
    check-cast p3, Lo/Qe;

    .line 31
    invoke-virtual {p3, v0}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lo/Ih;

    .line 37
    if-nez v2, :cond_2

    .line 39
    invoke-static {}, Lo/Ih;->a()Lo/Ih;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p3, v0, v2}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_2
    iget p3, v2, Lo/Ih;->a:I

    .line 48
    or-int/2addr p3, v1

    .line 49
    iput p3, v2, Lo/Ih;->a:I

    .line 51
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    move-result-object p3

    .line 55
    check-cast p3, Lo/vd;

    .line 57
    invoke-virtual {v0}, Lo/Id;->q()Z

    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x0

    .line 62
    if-nez v2, :cond_d

    .line 64
    invoke-virtual {v0}, Lo/Id;->j()Z

    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_3

    .line 70
    goto/16 :goto_5

    .line 72
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 75
    move-result-object v2

    .line 76
    iget-object v4, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    const/4 v5, -0x1

    .line 79
    if-ne v2, v4, :cond_b

    .line 81
    iget-object v2, p0, Lo/ud;->a:Lo/s2;

    .line 83
    iget-object v4, v2, Lo/s2;->b:Ljava/lang/Object;

    .line 85
    check-cast v4, Lo/ld;

    .line 87
    iget-object v4, v4, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 92
    move-result v4

    .line 93
    if-ne v4, v5, :cond_4

    .line 95
    :goto_2
    move v4, v5

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    iget-object v2, v2, Lo/s2;->c:Ljava/lang/Object;

    .line 99
    check-cast v2, Lo/L3;

    .line 101
    invoke-virtual {v2, v4}, Lo/L3;->d(I)Z

    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_5

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    invoke-virtual {v2, v4}, Lo/L3;->b(I)I

    .line 111
    move-result v2

    .line 112
    sub-int/2addr v4, v2

    .line 113
    :goto_3
    if-ne p2, v5, :cond_6

    .line 115
    iget-object p2, p0, Lo/ud;->a:Lo/s2;

    .line 117
    invoke-virtual {p2}, Lo/s2;->m()I

    .line 120
    move-result p2

    .line 121
    :cond_6
    if-eq v4, v5, :cond_a

    .line 123
    if-eq v4, p2, :cond_f

    .line 125
    iget-object p1, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 127
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 129
    invoke-virtual {p1, v4}, Lo/ud;->u(I)Landroid/view/View;

    .line 132
    move-result-object v2

    .line 133
    if-eqz v2, :cond_9

    .line 135
    invoke-virtual {p1, v4}, Lo/ud;->u(I)Landroid/view/View;

    .line 138
    iget-object v5, p1, Lo/ud;->a:Lo/s2;

    .line 140
    invoke-virtual {v5, v4}, Lo/s2;->i(I)V

    .line 143
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Lo/vd;

    .line 149
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v5}, Lo/Id;->i()Z

    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_8

    .line 159
    iget-object v6, p1, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->f:Lo/H1;

    .line 163
    iget-object v6, v6, Lo/H1;->b:Ljava/lang/Object;

    .line 165
    check-cast v6, Lo/Qe;

    .line 167
    invoke-virtual {v6, v5}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-result-object v7

    .line 171
    check-cast v7, Lo/Ih;

    .line 173
    if-nez v7, :cond_7

    .line 175
    invoke-static {}, Lo/Ih;->a()Lo/Ih;

    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v6, v5, v7}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_7
    iget v6, v7, Lo/Ih;->a:I

    .line 184
    or-int/2addr v1, v6

    .line 185
    iput v1, v7, Lo/Ih;->a:I

    .line 187
    goto :goto_4

    .line 188
    :cond_8
    iget-object v1, p1, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 190
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->f:Lo/H1;

    .line 192
    invoke-virtual {v1, v5}, Lo/H1;->K(Lo/Id;)V

    .line 195
    :goto_4
    iget-object p1, p1, Lo/ud;->a:Lo/s2;

    .line 197
    invoke-virtual {v5}, Lo/Id;->i()Z

    .line 200
    move-result v1

    .line 201
    invoke-virtual {p1, v2, p2, v4, v1}, Lo/s2;->g(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 204
    goto/16 :goto_7

    .line 206
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 208
    new-instance p3, Ljava/lang/StringBuilder;

    .line 210
    const-string v0, "Cannot move a child from non-existing index:"

    .line 212
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    iget-object p1, p1, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object p1

    .line 231
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 234
    throw p2

    .line 235
    :cond_a
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 237
    new-instance p3, Ljava/lang/StringBuilder;

    .line 239
    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    .line 241
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 246
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 249
    move-result p1

    .line 250
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    iget-object p1, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 255
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    move-result-object p1

    .line 266
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 269
    throw p2

    .line 270
    :cond_b
    iget-object v2, p0, Lo/ud;->a:Lo/s2;

    .line 272
    invoke-virtual {v2, p1, p2, v3}, Lo/s2;->f(Landroid/view/View;IZ)V

    .line 275
    iput-boolean v1, p3, Lo/vd;->c:Z

    .line 277
    iget-object p2, p0, Lo/ud;->e:Lo/aa;

    .line 279
    if-eqz p2, :cond_f

    .line 281
    iget-boolean v1, p2, Lo/aa;->e:Z

    .line 283
    if-eqz v1, :cond_f

    .line 285
    iget-object v1, p2, Lo/aa;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 287
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 293
    move-result-object v1

    .line 294
    if-eqz v1, :cond_c

    .line 296
    invoke-virtual {v1}, Lo/Id;->b()I

    .line 299
    move-result v5

    .line 300
    :cond_c
    iget v1, p2, Lo/aa;->a:I

    .line 302
    if-ne v5, v1, :cond_f

    .line 304
    iput-object p1, p2, Lo/aa;->f:Landroid/view/View;

    .line 306
    goto :goto_7

    .line 307
    :cond_d
    :goto_5
    invoke-virtual {v0}, Lo/Id;->j()Z

    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_e

    .line 313
    iget-object v1, v0, Lo/Id;->n:Lo/Ad;

    .line 315
    invoke-virtual {v1, v0}, Lo/Ad;->j(Lo/Id;)V

    .line 318
    goto :goto_6

    .line 319
    :cond_e
    iget v1, v0, Lo/Id;->j:I

    .line 321
    and-int/lit8 v1, v1, -0x21

    .line 323
    iput v1, v0, Lo/Id;->j:I

    .line 325
    :goto_6
    iget-object v1, p0, Lo/ud;->a:Lo/s2;

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v1, p1, p2, v2, v3}, Lo/s2;->g(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 334
    :cond_f
    :goto_7
    iget-boolean p1, p3, Lo/vd;->d:Z

    .line 336
    if-eqz p1, :cond_10

    .line 338
    iget-object p1, v0, Lo/Id;->a:Landroid/view/View;

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 343
    iput-boolean v3, p3, Lo/vd;->d:Z

    .line 345
    :cond_10
    return-void
.end method

.method public abstract b0(Lo/Ad;Lo/Fd;)V
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->i(Ljava/lang/String;)V

    .line 8
    :cond_0
    return-void
.end method

.method public abstract c0(Lo/Fd;)V
.end method

.method public abstract d()Z
.end method

.method public d0(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract e()Z
.end method

.method public e0()Landroid/os/Parcelable;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public f(Lo/vd;)Z
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

.method public f0(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g0(Lo/Ad;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 9
    invoke-virtual {p0, v0}, Lo/ud;->u(I)Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lo/Id;->p()Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 23
    invoke-virtual {p0, v0}, Lo/ud;->u(I)Landroid/view/View;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v0}, Lo/ud;->j0(I)V

    .line 30
    invoke-virtual {p1, v1}, Lo/Ad;->f(Landroid/view/View;)V

    .line 33
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public h(IILo/Fd;Lo/R8;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final h0(Lo/Ad;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lo/Ad;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 9
    :goto_0
    iget-object v2, p1, Lo/Ad;->a:Ljava/util/ArrayList;

    .line 11
    if-ltz v1, :cond_3

    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lo/Id;

    .line 19
    iget-object v2, v2, Lo/Id;->a:Landroid/view/View;

    .line 21
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lo/Id;->p()Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v3, v4}, Lo/Id;->o(Z)V

    .line 36
    invoke-virtual {v3}, Lo/Id;->k()Z

    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 42
    iget-object v5, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 47
    :cond_1
    iget-object v5, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 51
    if-eqz v5, :cond_2

    .line 53
    invoke-virtual {v5, v3}, Lo/qd;->d(Lo/Id;)V

    .line 56
    :cond_2
    const/4 v5, 0x1

    .line 57
    invoke-virtual {v3, v5}, Lo/Id;->o(Z)V

    .line 60
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 63
    move-result-object v2

    .line 64
    const/4 v3, 0x0

    .line 65
    iput-object v3, v2, Lo/Id;->n:Lo/Ad;

    .line 67
    iput-boolean v4, v2, Lo/Id;->o:Z

    .line 69
    iget v3, v2, Lo/Id;->j:I

    .line 71
    and-int/lit8 v3, v3, -0x21

    .line 73
    iput v3, v2, Lo/Id;->j:I

    .line 75
    invoke-virtual {p1, v2}, Lo/Ad;->g(Lo/Id;)V

    .line 78
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 84
    iget-object p1, p1, Lo/Ad;->b:Ljava/util/ArrayList;

    .line 86
    if-eqz p1, :cond_4

    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 91
    :cond_4
    if-lez v0, :cond_5

    .line 93
    iget-object p1, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 98
    :cond_5
    return-void
.end method

.method public i(ILo/R8;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final i0(Landroid/view/View;Lo/Ad;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/ud;->a:Lo/s2;

    .line 3
    iget-object v1, v0, Lo/s2;->b:Ljava/lang/Object;

    .line 5
    check-cast v1, Lo/ld;

    .line 7
    iget-object v2, v1, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 12
    move-result v2

    .line 13
    if-gez v2, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v3, v0, Lo/s2;->c:Ljava/lang/Object;

    .line 18
    check-cast v3, Lo/L3;

    .line 20
    invoke-virtual {v3, v2}, Lo/L3;->f(I)Z

    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 26
    invoke-virtual {v0, p1}, Lo/s2;->C(Landroid/view/View;)V

    .line 29
    :cond_1
    invoke-virtual {v1, v2}, Lo/ld;->h(I)V

    .line 32
    :goto_0
    invoke-virtual {p2, p1}, Lo/Ad;->f(Landroid/view/View;)V

    .line 35
    return-void
.end method

.method public abstract j(Lo/Fd;)I
.end method

.method public final j0(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lo/ud;->u(I)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lo/ud;->a:Lo/s2;

    .line 9
    invoke-virtual {v0, p1}, Lo/s2;->s(I)I

    .line 12
    move-result p1

    .line 13
    iget-object v1, v0, Lo/s2;->b:Ljava/lang/Object;

    .line 15
    check-cast v1, Lo/ld;

    .line 17
    iget-object v2, v1, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v3, v0, Lo/s2;->c:Ljava/lang/Object;

    .line 28
    check-cast v3, Lo/L3;

    .line 30
    invoke-virtual {v3, p1}, Lo/L3;->f(I)Z

    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 36
    invoke-virtual {v0, v2}, Lo/s2;->C(Landroid/view/View;)V

    .line 39
    :cond_1
    invoke-virtual {v1, p1}, Lo/ld;->h(I)V

    .line 42
    :cond_2
    :goto_0
    return-void
.end method

.method public abstract k(Lo/Fd;)I
.end method

.method public k0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lo/ud;->E()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lo/ud;->G()I

    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lo/ud;->n:I

    .line 11
    invoke-virtual {p0}, Lo/ud;->F()I

    .line 14
    move-result v3

    .line 15
    sub-int/2addr v2, v3

    .line 16
    iget v3, p0, Lo/ud;->o:I

    .line 18
    invoke-virtual {p0}, Lo/ud;->D()I

    .line 21
    move-result v4

    .line 22
    sub-int/2addr v3, v4

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 26
    move-result v4

    .line 27
    iget v5, p3, Landroid/graphics/Rect;->left:I

    .line 29
    add-int/2addr v4, v5

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    .line 33
    move-result v5

    .line 34
    sub-int/2addr v4, v5

    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 38
    move-result v5

    .line 39
    iget v6, p3, Landroid/graphics/Rect;->top:I

    .line 41
    add-int/2addr v5, v6

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    .line 45
    move-result p2

    .line 46
    sub-int/2addr v5, p2

    .line 47
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 50
    move-result p2

    .line 51
    add-int/2addr p2, v4

    .line 52
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 55
    move-result p3

    .line 56
    add-int/2addr p3, v5

    .line 57
    sub-int/2addr v4, v0

    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 62
    move-result v6

    .line 63
    sub-int/2addr v5, v1

    .line 64
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    .line 67
    move-result v1

    .line 68
    sub-int/2addr p2, v2

    .line 69
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 72
    move-result v2

    .line 73
    sub-int/2addr p3, v3

    .line 74
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 77
    move-result p3

    .line 78
    invoke-virtual {p0}, Lo/ud;->C()I

    .line 81
    move-result v3

    .line 82
    const/4 v7, 0x1

    .line 83
    if-ne v3, v7, :cond_1

    .line 85
    if-eqz v2, :cond_0

    .line 87
    goto :goto_1

    .line 88
    :cond_0
    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    .line 91
    move-result v2

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    if-eqz v6, :cond_2

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 99
    move-result v6

    .line 100
    :goto_0
    move v2, v6

    .line 101
    :goto_1
    if-eqz v1, :cond_3

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    .line 107
    move-result v1

    .line 108
    :goto_2
    filled-new-array {v2, v1}, [I

    .line 111
    move-result-object p2

    .line 112
    aget p3, p2, v0

    .line 114
    aget p2, p2, v7

    .line 116
    if-eqz p5, :cond_5

    .line 118
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 121
    move-result-object p5

    .line 122
    if-nez p5, :cond_4

    .line 124
    goto :goto_3

    .line 125
    :cond_4
    invoke-virtual {p0}, Lo/ud;->E()I

    .line 128
    move-result v1

    .line 129
    invoke-virtual {p0}, Lo/ud;->G()I

    .line 132
    move-result v2

    .line 133
    iget v3, p0, Lo/ud;->n:I

    .line 135
    invoke-virtual {p0}, Lo/ud;->F()I

    .line 138
    move-result v4

    .line 139
    sub-int/2addr v3, v4

    .line 140
    iget v4, p0, Lo/ud;->o:I

    .line 142
    invoke-virtual {p0}, Lo/ud;->D()I

    .line 145
    move-result v5

    .line 146
    sub-int/2addr v4, v5

    .line 147
    iget-object v5, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 151
    invoke-virtual {p0, p5, v5}, Lo/ud;->y(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 154
    iget p5, v5, Landroid/graphics/Rect;->left:I

    .line 156
    sub-int/2addr p5, p3

    .line 157
    if-ge p5, v3, :cond_6

    .line 159
    iget p5, v5, Landroid/graphics/Rect;->right:I

    .line 161
    sub-int/2addr p5, p3

    .line 162
    if-le p5, v1, :cond_6

    .line 164
    iget p5, v5, Landroid/graphics/Rect;->top:I

    .line 166
    sub-int/2addr p5, p2

    .line 167
    if-ge p5, v4, :cond_6

    .line 169
    iget p5, v5, Landroid/graphics/Rect;->bottom:I

    .line 171
    sub-int/2addr p5, p2

    .line 172
    if-gt p5, v2, :cond_5

    .line 174
    goto :goto_3

    .line 175
    :cond_5
    if-nez p3, :cond_7

    .line 177
    if-eqz p2, :cond_6

    .line 179
    goto :goto_4

    .line 180
    :cond_6
    :goto_3
    return v0

    .line 181
    :cond_7
    :goto_4
    if-eqz p4, :cond_8

    .line 183
    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 186
    goto :goto_5

    .line 187
    :cond_8
    invoke-virtual {p1, p3, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->Z(IIZ)V

    .line 190
    :goto_5
    return v7
.end method

.method public abstract l(Lo/Fd;)I
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 8
    :cond_0
    return-void
.end method

.method public abstract m(Lo/Fd;)I
.end method

.method public abstract m0(ILo/Ad;Lo/Fd;)I
.end method

.method public abstract n(Lo/Fd;)I
.end method

.method public abstract n0(I)V
.end method

.method public abstract o(Lo/Fd;)I
.end method

.method public abstract o0(ILo/Ad;Lo/Fd;)I
.end method

.method public final p(Lo/Ad;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lo/ud;->u(I)Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lo/Id;->p()Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v2}, Lo/Id;->g()Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 30
    invoke-virtual {v2}, Lo/Id;->i()Z

    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 36
    iget-object v3, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 40
    iget-boolean v3, v3, Lo/md;->b:Z

    .line 42
    if-nez v3, :cond_1

    .line 44
    invoke-virtual {p0, v0}, Lo/ud;->j0(I)V

    .line 47
    invoke-virtual {p1, v2}, Lo/Ad;->g(Lo/Id;)V

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p0, v0}, Lo/ud;->u(I)Landroid/view/View;

    .line 54
    iget-object v3, p0, Lo/ud;->a:Lo/s2;

    .line 56
    invoke-virtual {v3, v0}, Lo/s2;->i(I)V

    .line 59
    invoke-virtual {p1, v1}, Lo/Ad;->h(Landroid/view/View;)V

    .line 62
    iget-object v1, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->f:Lo/H1;

    .line 66
    invoke-virtual {v1, v2}, Lo/H1;->K(Lo/Id;)V

    .line 69
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-void
.end method

.method public final p0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 14
    move-result p1

    .line 15
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, v0, p1}, Lo/ud;->q0(II)V

    .line 22
    return-void
.end method

.method public q(I)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_3

    .line 8
    invoke-virtual {p0, v1}, Lo/ud;->u(I)Landroid/view/View;

    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v3}, Lo/Id;->b()I

    .line 22
    move-result v4

    .line 23
    if-ne v4, p1, :cond_2

    .line 25
    invoke-virtual {v3}, Lo/Id;->p()Z

    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_2

    .line 31
    iget-object v4, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 35
    iget-boolean v4, v4, Lo/Fd;->g:Z

    .line 37
    if-nez v4, :cond_1

    .line 39
    invoke-virtual {v3}, Lo/Id;->i()Z

    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_2

    .line 45
    :cond_1
    return-object v2

    .line 46
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method public final q0(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lo/ud;->n:I

    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lo/ud;->l:I

    .line 13
    if-nez p1, :cond_0

    .line 15
    sget-object p1, Landroidx/recyclerview/widget/RecyclerView;->s0:[I

    .line 17
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lo/ud;->o:I

    .line 23
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lo/ud;->m:I

    .line 29
    if-nez p1, :cond_1

    .line 31
    sget-object p1, Landroidx/recyclerview/widget/RecyclerView;->s0:[I

    .line 33
    :cond_1
    return-void
.end method

.method public abstract r()Lo/vd;
.end method

.method public r0(Landroid/graphics/Rect;II)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lo/ud;->E()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Lo/ud;->F()I

    .line 13
    move-result v0

    .line 14
    add-int/2addr v0, v1

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0}, Lo/ud;->G()I

    .line 22
    move-result v1

    .line 23
    add-int/2addr v1, p1

    .line 24
    invoke-virtual {p0}, Lo/ud;->D()I

    .line 27
    move-result p1

    .line 28
    add-int/2addr p1, v1

    .line 29
    iget-object v1, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    sget-object v2, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getMinimumWidth()I

    .line 36
    move-result v1

    .line 37
    invoke-static {p2, v0, v1}, Lo/ud;->g(III)I

    .line 40
    move-result p2

    .line 41
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    .line 46
    move-result v0

    .line 47
    invoke-static {p3, p1, v0}, Lo/ud;->g(III)I

    .line 50
    move-result p1

    .line 51
    iget-object p3, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 56
    return-void
.end method

.method public s(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/vd;
    .locals 1

    .line 1
    new-instance v0, Lo/vd;

    .line 3
    invoke-direct {v0, p1, p2}, Lo/vd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public final s0(II)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    .line 12
    return-void

    .line 13
    :cond_0
    const/high16 v1, -0x80000000

    .line 15
    const v2, 0x7fffffff

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v2

    .line 20
    move v5, v3

    .line 21
    move v2, v1

    .line 22
    move v3, v4

    .line 23
    :goto_0
    if-ge v5, v0, :cond_5

    .line 25
    invoke-virtual {p0, v5}, Lo/ud;->u(I)Landroid/view/View;

    .line 28
    move-result-object v6

    .line 29
    iget-object v7, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 33
    invoke-virtual {p0, v6, v7}, Lo/ud;->y(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 36
    iget v6, v7, Landroid/graphics/Rect;->left:I

    .line 38
    if-ge v6, v3, :cond_1

    .line 40
    move v3, v6

    .line 41
    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    .line 43
    if-le v6, v1, :cond_2

    .line 45
    move v1, v6

    .line 46
    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    .line 48
    if-ge v6, v4, :cond_3

    .line 50
    move v4, v6

    .line 51
    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    .line 53
    if-le v6, v2, :cond_4

    .line 55
    move v2, v6

    .line 56
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_5
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 63
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 66
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 70
    invoke-virtual {p0, v0, p1, p2}, Lo/ud;->r0(Landroid/graphics/Rect;II)V

    .line 73
    return-void
.end method

.method public t(Landroid/view/ViewGroup$LayoutParams;)Lo/vd;
    .locals 1

    .line 1
    instance-of v0, p1, Lo/vd;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lo/vd;

    .line 7
    check-cast p1, Lo/vd;

    .line 9
    invoke-direct {v0, p1}, Lo/vd;-><init>(Lo/vd;)V

    .line 12
    return-object v0

    .line 13
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Lo/vd;

    .line 19
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 21
    invoke-direct {v0, p1}, Lo/vd;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 24
    return-object v0

    .line 25
    :cond_1
    new-instance v0, Lo/vd;

    .line 27
    invoke-direct {v0, p1}, Lo/vd;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    return-object v0
.end method

.method public final t0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object p1, p0, Lo/ud;->a:Lo/s2;

    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lo/ud;->n:I

    .line 11
    iput p1, p0, Lo/ud;->o:I

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-object p1, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 18
    iput-object v0, p0, Lo/ud;->a:Lo/s2;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lo/ud;->n:I

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lo/ud;->o:I

    .line 32
    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    .line 34
    iput p1, p0, Lo/ud;->l:I

    .line 36
    iput p1, p0, Lo/ud;->m:I

    .line 38
    return-void
.end method

.method public final u(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ud;->a:Lo/s2;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lo/s2;->l(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return-object p1
.end method

.method public final u0(Landroid/view/View;IILo/vd;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 7
    iget-boolean v0, p0, Lo/ud;->h:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v0

    .line 15
    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 17
    invoke-static {v0, p2, v1}, Lo/ud;->M(III)Z

    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 26
    move-result p1

    .line 27
    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 29
    invoke-static {p1, p3, p2}, Lo/ud;->M(III)Z

    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 39
    :goto_1
    return p1
.end method

.method public final v()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ud;->a:Lo/s2;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lo/s2;->m()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public v0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final w0(Landroid/view/View;IILo/vd;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo/ud;->h:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    move-result v0

    .line 9
    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 11
    invoke-static {v0, p2, v1}, Lo/ud;->M(III)Z

    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_1

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    move-result p1

    .line 21
    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 23
    invoke-static {p1, p3, p2}, Lo/ud;->M(III)Z

    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 33
    :goto_1
    return p1
.end method

.method public x(Lo/Ad;Lo/Fd;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    const/4 p2, 0x1

    .line 4
    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 8
    if-nez p1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lo/ud;->d()Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 21
    invoke-virtual {p1}, Lo/md;->a()I

    .line 24
    move-result p2

    .line 25
    :cond_1
    :goto_0
    return p2
.end method

.method public abstract x0(Landroidx/recyclerview/widget/RecyclerView;I)V
.end method

.method public y(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->s0:[I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lo/vd;

    .line 9
    iget-object v1, v0, Lo/vd;->b:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 14
    move-result v2

    .line 15
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 17
    sub-int/2addr v2, v3

    .line 18
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 20
    sub-int/2addr v2, v3

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 24
    move-result v3

    .line 25
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 27
    sub-int/2addr v3, v4

    .line 28
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 30
    sub-int/2addr v3, v4

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 34
    move-result v4

    .line 35
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 37
    add-int/2addr v4, v5

    .line 38
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 40
    add-int/2addr v4, v5

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 44
    move-result p1

    .line 45
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 47
    add-int/2addr p1, v1

    .line 48
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 50
    add-int/2addr p1, v0

    .line 51
    invoke-virtual {p2, v2, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 54
    return-void
.end method

.method public final y0(Lo/aa;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/ud;->e:Lo/aa;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    if-eq p1, v0, :cond_0

    .line 7
    iget-boolean v1, v0, Lo/aa;->e:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Lo/aa;->i()V

    .line 14
    :cond_0
    iput-object p1, p0, Lo/ud;->e:Lo/aa;

    .line 16
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->W:Lo/Hd;

    .line 20
    iget-object v2, v1, Lo/Hd;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 25
    iget-object v1, v1, Lo/Hd;->c:Landroid/widget/OverScroller;

    .line 27
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 30
    iget-boolean v1, p1, Lo/aa;->h:Z

    .line 32
    if-eqz v1, :cond_1

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "An instance of "

    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, " was started more than once. Each instance of"

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v2, " is intended to only be used once. You should create a new instance for each use."

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    const-string v2, "RecyclerView"

    .line 79
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1
    iput-object v0, p1, Lo/aa;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    iput-object p0, p1, Lo/aa;->c:Lo/ud;

    .line 86
    iget v1, p1, Lo/aa;->a:I

    .line 88
    const/4 v2, -0x1

    .line 89
    if-eq v1, v2, :cond_2

    .line 91
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 93
    iput v1, v2, Lo/Fd;->a:I

    .line 95
    const/4 v2, 0x1

    .line 96
    iput-boolean v2, p1, Lo/aa;->e:Z

    .line 98
    iput-boolean v2, p1, Lo/aa;->d:Z

    .line 100
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 102
    invoke-virtual {v0, v1}, Lo/ud;->q(I)Landroid/view/View;

    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p1, Lo/aa;->f:Landroid/view/View;

    .line 108
    iget-object v0, p1, Lo/aa;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->W:Lo/Hd;

    .line 112
    invoke-virtual {v0}, Lo/Hd;->a()V

    .line 115
    iput-boolean v2, p1, Lo/aa;->h:Z

    .line 117
    return-void

    .line 118
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 120
    const-string v0, "Invalid target position"

    .line 122
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    throw p1
.end method

.method public z0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
