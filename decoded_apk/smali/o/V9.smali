.class public abstract Lo/V9;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:F

.field public h:Z

.field public i:[I

.field public j:[I

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1
    const/4 v5, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    const/4 v6, 0x1

    .line 6
    iput-boolean v6, p0, Lo/V9;->a:Z

    .line 8
    const/4 v7, -0x1

    .line 9
    iput v7, p0, Lo/V9;->b:I

    .line 11
    const/4 v8, 0x0

    .line 12
    iput v8, p0, Lo/V9;->c:I

    .line 14
    const v0, 0x800033

    .line 17
    iput v0, p0, Lo/V9;->e:I

    .line 19
    sget-object v2, Lo/gd;->n:[I

    .line 21
    invoke-static {p1, p2, v2, v5}, Lo/s2;->y(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lo/s2;

    .line 24
    move-result-object v9

    .line 25
    iget-object v0, v9, Lo/s2;->b:Ljava/lang/Object;

    .line 27
    move-object v4, v0

    .line 28
    check-cast v4, Landroid/content/res/TypedArray;

    .line 30
    move-object v0, p0

    .line 31
    move-object v1, p1

    .line 32
    move-object v3, p2

    .line 33
    invoke-static/range {v0 .. v5}, Lo/Dh;->k(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 36
    iget-object p1, v9, Lo/s2;->b:Ljava/lang/Object;

    .line 38
    check-cast p1, Landroid/content/res/TypedArray;

    .line 40
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 43
    move-result p2

    .line 44
    if-ltz p2, :cond_0

    .line 46
    invoke-virtual {p0, p2}, Lo/V9;->setOrientation(I)V

    .line 49
    :cond_0
    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 52
    move-result p2

    .line 53
    if-ltz p2, :cond_1

    .line 55
    invoke-virtual {p0, p2}, Lo/V9;->setGravity(I)V

    .line 58
    :cond_1
    const/4 p2, 0x2

    .line 59
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_2

    .line 65
    invoke-virtual {p0, p2}, Lo/V9;->setBaselineAligned(Z)V

    .line 68
    :cond_2
    const/4 p2, 0x4

    .line 69
    const/high16 v0, -0x40800000    # -1.0f

    .line 71
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 74
    move-result p2

    .line 75
    iput p2, p0, Lo/V9;->g:F

    .line 77
    const/4 p2, 0x3

    .line 78
    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 81
    move-result p2

    .line 82
    iput p2, p0, Lo/V9;->b:I

    .line 84
    const/4 p2, 0x7

    .line 85
    invoke-virtual {p1, p2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 88
    move-result p2

    .line 89
    iput-boolean p2, p0, Lo/V9;->h:Z

    .line 91
    const/4 p2, 0x5

    .line 92
    invoke-virtual {v9, p2}, Lo/s2;->o(I)Landroid/graphics/drawable/Drawable;

    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p0, p2}, Lo/V9;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    const/16 p2, 0x8

    .line 101
    invoke-virtual {p1, p2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 104
    move-result p2

    .line 105
    iput p2, p0, Lo/V9;->n:I

    .line 107
    const/4 p2, 0x6

    .line 108
    invoke-virtual {p1, p2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 111
    move-result p1

    .line 112
    iput p1, p0, Lo/V9;->o:I

    .line 114
    invoke-virtual {v9}, Lo/s2;->A()V

    .line 117
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lo/U9;

    .line 3
    return p1
.end method

.method public final d(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/V9;->k:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    move-result v1

    .line 7
    iget v2, p0, Lo/V9;->o:I

    .line 9
    add-int/2addr v1, v2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 17
    move-result v3

    .line 18
    sub-int/2addr v2, v3

    .line 19
    iget v3, p0, Lo/V9;->o:I

    .line 21
    sub-int/2addr v2, v3

    .line 22
    iget v3, p0, Lo/V9;->m:I

    .line 24
    add-int/2addr v3, p2

    .line 25
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 28
    iget-object p2, p0, Lo/V9;->k:Landroid/graphics/drawable/Drawable;

    .line 30
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/V9;->k:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    move-result v1

    .line 7
    iget v2, p0, Lo/V9;->o:I

    .line 9
    add-int/2addr v1, v2

    .line 10
    iget v2, p0, Lo/V9;->l:I

    .line 12
    add-int/2addr v2, p2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 20
    move-result v4

    .line 21
    sub-int/2addr v3, v4

    .line 22
    iget v4, p0, Lo/V9;->o:I

    .line 24
    sub-int/2addr v3, v4

    .line 25
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 28
    iget-object p2, p0, Lo/V9;->k:Landroid/graphics/drawable/Drawable;

    .line 30
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    return-void
.end method

.method public f()Lo/U9;
    .locals 3

    .line 1
    iget v0, p0, Lo/V9;->d:I

    .line 3
    const/4 v1, -0x2

    .line 4
    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lo/U9;

    .line 8
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v2, 0x1

    .line 13
    if-ne v0, v2, :cond_1

    .line 15
    new-instance v0, Lo/U9;

    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 21
    return-object v0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public g(Landroid/util/AttributeSet;)Lo/U9;
    .locals 2

    .line 1
    new-instance v0, Lo/U9;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/V9;->f()Lo/U9;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo/V9;->g(Landroid/util/AttributeSet;)Lo/U9;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lo/V9;->h(Landroid/view/ViewGroup$LayoutParams;)Lo/U9;

    move-result-object p1

    return-object p1
.end method

.method public getBaseline()I
    .locals 6

    .line 1
    iget v0, p0, Lo/V9;->b:I

    .line 3
    if-gez v0, :cond_0

    .line 5
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v0

    .line 14
    iget v1, p0, Lo/V9;->b:I

    .line 16
    if-le v0, v1, :cond_6

    .line 18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    .line 25
    move-result v1

    .line 26
    const/4 v2, -0x1

    .line 27
    if-ne v1, v2, :cond_2

    .line 29
    iget v0, p0, Lo/V9;->b:I

    .line 31
    if-nez v0, :cond_1

    .line 33
    return v2

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 36
    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0

    .line 42
    :cond_2
    iget v2, p0, Lo/V9;->c:I

    .line 44
    iget v3, p0, Lo/V9;->d:I

    .line 46
    const/4 v4, 0x1

    .line 47
    if-ne v3, v4, :cond_5

    .line 49
    iget v3, p0, Lo/V9;->e:I

    .line 51
    and-int/lit8 v3, v3, 0x70

    .line 53
    const/16 v4, 0x30

    .line 55
    if-eq v3, v4, :cond_5

    .line 57
    const/16 v4, 0x10

    .line 59
    if-eq v3, v4, :cond_4

    .line 61
    const/16 v4, 0x50

    .line 63
    if-eq v3, v4, :cond_3

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 69
    move-result v2

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 73
    move-result v3

    .line 74
    sub-int/2addr v2, v3

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 78
    move-result v3

    .line 79
    sub-int/2addr v2, v3

    .line 80
    iget v3, p0, Lo/V9;->f:I

    .line 82
    sub-int/2addr v2, v3

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 87
    move-result v3

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 91
    move-result v4

    .line 92
    sub-int/2addr v3, v4

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 96
    move-result v4

    .line 97
    sub-int/2addr v3, v4

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 101
    move-result v4

    .line 102
    sub-int/2addr v3, v4

    .line 103
    iget v4, p0, Lo/V9;->f:I

    .line 105
    const/4 v5, 0x2

    .line 106
    invoke-static {v3, v4, v5, v2}, Lo/Ve;->a(IIII)I

    .line 109
    move-result v2

    .line 110
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lo/U9;

    .line 116
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 118
    add-int/2addr v2, v0

    .line 119
    add-int/2addr v2, v1

    .line 120
    return v2

    .line 121
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    .line 123
    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    .line 125
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 128
    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lo/V9;->b:I

    .line 3
    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/V9;->k:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lo/V9;->o:I

    .line 3
    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lo/V9;->l:I

    .line 3
    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lo/V9;->e:I

    .line 3
    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lo/V9;->d:I

    .line 3
    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 1
    iget v0, p0, Lo/V9;->n:I

    .line 3
    return v0
.end method

.method public getVirtualChildCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 1
    iget v0, p0, Lo/V9;->g:F

    .line 3
    return v0
.end method

.method public h(Landroid/view/ViewGroup$LayoutParams;)Lo/U9;
    .locals 1

    .line 1
    instance-of v0, p1, Lo/U9;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lo/U9;

    .line 7
    check-cast p1, Lo/U9;

    .line 9
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 12
    return-object v0

    .line 13
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Lo/U9;

    .line 19
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 21
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 24
    return-object v0

    .line 25
    :cond_1
    new-instance v0, Lo/U9;

    .line 27
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    return-object v0
.end method

.method public final i(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_1

    .line 5
    iget p1, p0, Lo/V9;->n:I

    .line 7
    and-int/2addr p1, v1

    .line 8
    if-eqz p1, :cond_0

    .line 10
    move v0, v1

    .line 11
    :cond_0
    return v0

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    move-result v2

    .line 16
    if-ne p1, v2, :cond_3

    .line 18
    iget p1, p0, Lo/V9;->n:I

    .line 20
    and-int/lit8 p1, p1, 0x4

    .line 22
    if-eqz p1, :cond_2

    .line 24
    move v0, v1

    .line 25
    :cond_2
    return v0

    .line 26
    :cond_3
    iget v2, p0, Lo/V9;->n:I

    .line 28
    and-int/lit8 v2, v2, 0x2

    .line 30
    if-eqz v2, :cond_5

    .line 32
    sub-int/2addr p1, v1

    .line 33
    :goto_0
    if-ltz p1, :cond_5

    .line 35
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 42
    move-result v2

    .line 43
    const/16 v3, 0x8

    .line 45
    if-eq v2, v3, :cond_4

    .line 47
    move v0, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_5
    :goto_1
    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lo/V9;->k:Landroid/graphics/drawable/Drawable;

    .line 4
    if-nez v1, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    iget v1, p0, Lo/V9;->d:I

    .line 9
    const/16 v2, 0x8

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v1, v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lo/V9;->getVirtualChildCount()I

    .line 17
    move-result v1

    .line 18
    :goto_0
    if-ge v3, v1, :cond_2

    .line 20
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object v4

    .line 24
    if-eqz v4, :cond_1

    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 29
    move-result v5

    .line 30
    if-eq v5, v2, :cond_1

    .line 32
    invoke-virtual {p0, v3}, Lo/V9;->i(I)Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 38
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lo/U9;

    .line 44
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 47
    move-result v4

    .line 48
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 50
    sub-int/2addr v4, v5

    .line 51
    iget v5, p0, Lo/V9;->m:I

    .line 53
    sub-int/2addr v4, v5

    .line 54
    invoke-virtual {p0, p1, v4}, Lo/V9;->d(Landroid/graphics/Canvas;I)V

    .line 57
    :cond_1
    add-int/2addr v3, v0

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0, v1}, Lo/V9;->i(I)Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_c

    .line 65
    sub-int/2addr v1, v0

    .line 66
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    move-result-object v0

    .line 70
    if-nez v0, :cond_3

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 75
    move-result v0

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 79
    move-result v1

    .line 80
    sub-int/2addr v0, v1

    .line 81
    iget v1, p0, Lo/V9;->m:I

    .line 83
    sub-int/2addr v0, v1

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lo/U9;

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 94
    move-result v0

    .line 95
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 97
    add-int/2addr v0, v1

    .line 98
    :goto_1
    invoke-virtual {p0, p1, v0}, Lo/V9;->d(Landroid/graphics/Canvas;I)V

    .line 101
    goto/16 :goto_6

    .line 103
    :cond_4
    invoke-virtual {p0}, Lo/V9;->getVirtualChildCount()I

    .line 106
    move-result v1

    .line 107
    sget-boolean v4, Lo/Xh;->a:Z

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 112
    move-result v4

    .line 113
    if-ne v4, v0, :cond_5

    .line 115
    move v4, v0

    .line 116
    goto :goto_2

    .line 117
    :cond_5
    move v4, v3

    .line 118
    :goto_2
    if-ge v3, v1, :cond_8

    .line 120
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 123
    move-result-object v5

    .line 124
    if-eqz v5, :cond_7

    .line 126
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 129
    move-result v6

    .line 130
    if-eq v6, v2, :cond_7

    .line 132
    invoke-virtual {p0, v3}, Lo/V9;->i(I)Z

    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_7

    .line 138
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Lo/U9;

    .line 144
    if-eqz v4, :cond_6

    .line 146
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 149
    move-result v5

    .line 150
    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 152
    add-int/2addr v5, v6

    .line 153
    goto :goto_3

    .line 154
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 157
    move-result v5

    .line 158
    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 160
    sub-int/2addr v5, v6

    .line 161
    iget v6, p0, Lo/V9;->l:I

    .line 163
    sub-int/2addr v5, v6

    .line 164
    :goto_3
    invoke-virtual {p0, p1, v5}, Lo/V9;->e(Landroid/graphics/Canvas;I)V

    .line 167
    :cond_7
    add-int/2addr v3, v0

    .line 168
    goto :goto_2

    .line 169
    :cond_8
    invoke-virtual {p0, v1}, Lo/V9;->i(I)Z

    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_c

    .line 175
    sub-int/2addr v1, v0

    .line 176
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 179
    move-result-object v0

    .line 180
    if-nez v0, :cond_a

    .line 182
    if-eqz v4, :cond_9

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 187
    move-result v0

    .line 188
    goto :goto_5

    .line 189
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 192
    move-result v0

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 196
    move-result v1

    .line 197
    sub-int/2addr v0, v1

    .line 198
    iget v1, p0, Lo/V9;->l:I

    .line 200
    :goto_4
    sub-int/2addr v0, v1

    .line 201
    goto :goto_5

    .line 202
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 205
    move-result-object v1

    .line 206
    check-cast v1, Lo/U9;

    .line 208
    if-eqz v4, :cond_b

    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 213
    move-result v0

    .line 214
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 216
    sub-int/2addr v0, v1

    .line 217
    iget v1, p0, Lo/V9;->l:I

    .line 219
    goto :goto_4

    .line 220
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 223
    move-result v0

    .line 224
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 226
    add-int/2addr v0, v1

    .line 227
    :goto_5
    invoke-virtual {p0, p1, v0}, Lo/V9;->e(Landroid/graphics/Canvas;I)V

    .line 230
    :cond_c
    :goto_6
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 9
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 9
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lo/V9;->d:I

    .line 5
    const/4 v2, 0x5

    .line 6
    const/16 v3, 0x8

    .line 8
    const/16 v5, 0x50

    .line 10
    const/4 v6, 0x2

    .line 11
    const/16 v7, 0x10

    .line 13
    const v8, 0x800007

    .line 16
    const/4 v9, 0x1

    .line 17
    if-ne v1, v9, :cond_8

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 22
    move-result v1

    .line 23
    sub-int v10, p4, p2

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 28
    move-result v11

    .line 29
    sub-int v11, v10, v11

    .line 31
    sub-int/2addr v10, v1

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 35
    move-result v12

    .line 36
    sub-int/2addr v10, v12

    .line 37
    invoke-virtual/range {p0 .. p0}, Lo/V9;->getVirtualChildCount()I

    .line 40
    move-result v12

    .line 41
    iget v13, v0, Lo/V9;->e:I

    .line 43
    and-int/lit8 v14, v13, 0x70

    .line 45
    and-int/2addr v8, v13

    .line 46
    if-eq v14, v7, :cond_1

    .line 48
    if-eq v14, v5, :cond_0

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 53
    move-result v5

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 58
    move-result v5

    .line 59
    add-int v5, v5, p5

    .line 61
    sub-int v5, v5, p3

    .line 63
    iget v7, v0, Lo/V9;->f:I

    .line 65
    sub-int/2addr v5, v7

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 70
    move-result v5

    .line 71
    sub-int v7, p5, p3

    .line 73
    iget v13, v0, Lo/V9;->f:I

    .line 75
    invoke-static {v7, v13, v6, v5}, Lo/Ve;->a(IIII)I

    .line 78
    move-result v5

    .line 79
    :goto_0
    const/4 v4, 0x0

    .line 80
    :goto_1
    if-ge v4, v12, :cond_17

    .line 82
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 85
    move-result-object v7

    .line 86
    if-nez v7, :cond_2

    .line 88
    goto :goto_3

    .line 89
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 92
    move-result v13

    .line 93
    if-eq v13, v3, :cond_7

    .line 95
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 98
    move-result v13

    .line 99
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 102
    move-result v14

    .line 103
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    move-result-object v15

    .line 107
    check-cast v15, Lo/U9;

    .line 109
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 111
    if-gez v3, :cond_3

    .line 113
    move v3, v8

    .line 114
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 117
    move-result v6

    .line 118
    invoke-static {v3, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 121
    move-result v3

    .line 122
    and-int/lit8 v3, v3, 0x7

    .line 124
    if-eq v3, v9, :cond_5

    .line 126
    if-eq v3, v2, :cond_4

    .line 128
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 130
    add-int/2addr v3, v1

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    sub-int v3, v11, v13

    .line 134
    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 136
    sub-int/2addr v3, v6

    .line 137
    goto :goto_2

    .line 138
    :cond_5
    const/4 v3, 0x2

    .line 139
    invoke-static {v10, v13, v3, v1}, Lo/Ve;->a(IIII)I

    .line 142
    move-result v6

    .line 143
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 145
    add-int/2addr v6, v3

    .line 146
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 148
    sub-int v3, v6, v3

    .line 150
    :goto_2
    invoke-virtual {v0, v4}, Lo/V9;->i(I)Z

    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_6

    .line 156
    iget v6, v0, Lo/V9;->m:I

    .line 158
    add-int/2addr v5, v6

    .line 159
    :cond_6
    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 161
    add-int/2addr v5, v6

    .line 162
    add-int/2addr v13, v3

    .line 163
    add-int v6, v5, v14

    .line 165
    invoke-virtual {v7, v3, v5, v13, v6}, Landroid/view/View;->layout(IIII)V

    .line 168
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 170
    add-int/2addr v14, v3

    .line 171
    add-int/2addr v14, v5

    .line 172
    move v5, v14

    .line 173
    :cond_7
    :goto_3
    add-int/2addr v4, v9

    .line 174
    const/16 v3, 0x8

    .line 176
    const/4 v6, 0x2

    .line 177
    goto :goto_1

    .line 178
    :cond_8
    sget-boolean v1, Lo/Xh;->a:Z

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 183
    move-result v1

    .line 184
    if-ne v1, v9, :cond_9

    .line 186
    move v1, v9

    .line 187
    goto :goto_4

    .line 188
    :cond_9
    const/4 v1, 0x0

    .line 189
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 192
    move-result v3

    .line 193
    sub-int v6, p5, p3

    .line 195
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 198
    move-result v10

    .line 199
    sub-int v10, v6, v10

    .line 201
    sub-int/2addr v6, v3

    .line 202
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 205
    move-result v11

    .line 206
    sub-int/2addr v6, v11

    .line 207
    invoke-virtual/range {p0 .. p0}, Lo/V9;->getVirtualChildCount()I

    .line 210
    move-result v11

    .line 211
    iget v12, v0, Lo/V9;->e:I

    .line 213
    and-int/2addr v8, v12

    .line 214
    and-int/lit8 v12, v12, 0x70

    .line 216
    iget-boolean v13, v0, Lo/V9;->a:Z

    .line 218
    iget-object v14, v0, Lo/V9;->i:[I

    .line 220
    iget-object v15, v0, Lo/V9;->j:[I

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 225
    move-result v4

    .line 226
    invoke-static {v8, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 229
    move-result v4

    .line 230
    if-eq v4, v9, :cond_b

    .line 232
    if-eq v4, v2, :cond_a

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 237
    move-result v2

    .line 238
    goto :goto_5

    .line 239
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 242
    move-result v2

    .line 243
    add-int v2, v2, p4

    .line 245
    sub-int v2, v2, p2

    .line 247
    iget v4, v0, Lo/V9;->f:I

    .line 249
    sub-int/2addr v2, v4

    .line 250
    goto :goto_5

    .line 251
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 254
    move-result v2

    .line 255
    sub-int v4, p4, p2

    .line 257
    iget v8, v0, Lo/V9;->f:I

    .line 259
    const/4 v5, 0x2

    .line 260
    invoke-static {v4, v8, v5, v2}, Lo/Ve;->a(IIII)I

    .line 263
    move-result v2

    .line 264
    :goto_5
    if-eqz v1, :cond_c

    .line 266
    add-int/lit8 v1, v11, -0x1

    .line 268
    const/4 v5, -0x1

    .line 269
    goto :goto_6

    .line 270
    :cond_c
    move v5, v9

    .line 271
    const/4 v1, 0x0

    .line 272
    :goto_6
    const/4 v8, 0x0

    .line 273
    :goto_7
    if-ge v8, v11, :cond_17

    .line 275
    mul-int v16, v5, v8

    .line 277
    add-int v9, v16, v1

    .line 279
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 282
    move-result-object v7

    .line 283
    if-nez v7, :cond_d

    .line 285
    move/from16 p3, v1

    .line 287
    move/from16 p4, v5

    .line 289
    move/from16 p5, v11

    .line 291
    move/from16 v18, v12

    .line 293
    move/from16 v19, v13

    .line 295
    const/4 v1, 0x1

    .line 296
    const/4 v13, -0x1

    .line 297
    goto/16 :goto_b

    .line 299
    :cond_d
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 302
    move-result v4

    .line 303
    move/from16 p3, v1

    .line 305
    const/16 v1, 0x8

    .line 307
    if-eq v4, v1, :cond_16

    .line 309
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 312
    move-result v4

    .line 313
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 316
    move-result v1

    .line 317
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 320
    move-result-object v18

    .line 321
    move/from16 p4, v5

    .line 323
    move-object/from16 v5, v18

    .line 325
    check-cast v5, Lo/U9;

    .line 327
    move/from16 p5, v11

    .line 329
    if-eqz v13, :cond_e

    .line 331
    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 333
    move/from16 v18, v12

    .line 335
    const/4 v12, -0x1

    .line 336
    if-eq v11, v12, :cond_f

    .line 338
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    .line 341
    move-result v12

    .line 342
    goto :goto_8

    .line 343
    :cond_e
    move/from16 v18, v12

    .line 345
    :cond_f
    const/4 v12, -0x1

    .line 346
    :goto_8
    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 348
    if-gez v11, :cond_10

    .line 350
    move/from16 v11, v18

    .line 352
    :cond_10
    and-int/lit8 v11, v11, 0x70

    .line 354
    move/from16 v19, v13

    .line 356
    const/16 v13, 0x10

    .line 358
    if-eq v11, v13, :cond_13

    .line 360
    const/16 v13, 0x30

    .line 362
    if-eq v11, v13, :cond_12

    .line 364
    const/16 v13, 0x50

    .line 366
    if-eq v11, v13, :cond_11

    .line 368
    move v11, v3

    .line 369
    const/4 v13, -0x1

    .line 370
    goto :goto_9

    .line 371
    :cond_11
    sub-int v11, v10, v1

    .line 373
    iget v13, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 375
    sub-int/2addr v11, v13

    .line 376
    const/4 v13, -0x1

    .line 377
    if-eq v12, v13, :cond_14

    .line 379
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 382
    move-result v20

    .line 383
    sub-int v20, v20, v12

    .line 385
    const/4 v12, 0x2

    .line 386
    aget v21, v15, v12

    .line 388
    sub-int v21, v21, v20

    .line 390
    sub-int v11, v11, v21

    .line 392
    goto :goto_9

    .line 393
    :cond_12
    const/4 v13, -0x1

    .line 394
    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 396
    add-int/2addr v11, v3

    .line 397
    if-eq v12, v13, :cond_14

    .line 399
    const/16 v17, 0x1

    .line 401
    aget v20, v14, v17

    .line 403
    sub-int v20, v20, v12

    .line 405
    add-int v11, v20, v11

    .line 407
    goto :goto_9

    .line 408
    :cond_13
    const/4 v11, 0x2

    .line 409
    const/4 v13, -0x1

    .line 410
    invoke-static {v6, v1, v11, v3}, Lo/Ve;->a(IIII)I

    .line 413
    move-result v12

    .line 414
    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 416
    add-int/2addr v12, v11

    .line 417
    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 419
    sub-int v11, v12, v11

    .line 421
    :cond_14
    :goto_9
    invoke-virtual {v0, v9}, Lo/V9;->i(I)Z

    .line 424
    move-result v9

    .line 425
    if-eqz v9, :cond_15

    .line 427
    iget v9, v0, Lo/V9;->l:I

    .line 429
    add-int/2addr v2, v9

    .line 430
    :cond_15
    iget v9, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 432
    add-int/2addr v2, v9

    .line 433
    add-int v9, v2, v4

    .line 435
    add-int/2addr v1, v11

    .line 436
    invoke-virtual {v7, v2, v11, v9, v1}, Landroid/view/View;->layout(IIII)V

    .line 439
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 441
    add-int/2addr v4, v1

    .line 442
    add-int/2addr v4, v2

    .line 443
    move v2, v4

    .line 444
    :goto_a
    const/4 v1, 0x1

    .line 445
    goto :goto_b

    .line 446
    :cond_16
    move/from16 p4, v5

    .line 448
    move/from16 p5, v11

    .line 450
    move/from16 v18, v12

    .line 452
    move/from16 v19, v13

    .line 454
    const/4 v13, -0x1

    .line 455
    goto :goto_a

    .line 456
    :goto_b
    add-int/2addr v8, v1

    .line 457
    move/from16 v5, p4

    .line 459
    move/from16 v11, p5

    .line 461
    move v9, v1

    .line 462
    move/from16 v12, v18

    .line 464
    move/from16 v13, v19

    .line 466
    const/16 v7, 0x10

    .line 468
    move/from16 v1, p3

    .line 470
    goto/16 :goto_7

    .line 472
    :cond_17
    return-void
.end method

.method public onMeasure(II)V
    .locals 37

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    .line 1
    iget v0, v6, Lo/V9;->d:I

    const/4 v10, -0x2

    const/high16 v11, 0x40000000    # 2.0f

    const/16 v12, 0x8

    const/high16 v14, -0x80000000

    const/4 v15, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_28

    .line 2
    iput v5, v6, Lo/V9;->f:I

    .line 3
    invoke-virtual/range {p0 .. p0}, Lo/V9;->getVirtualChildCount()I

    move-result v3

    .line 4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 6
    iget v0, v6, Lo/V9;->b:I

    .line 7
    iget-boolean v9, v6, Lo/V9;->h:Z

    move/from16 v24, v4

    move v13, v5

    move/from16 v18, v13

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v25, v23

    move/from16 v17, v15

    :goto_0
    if-ge v13, v3, :cond_10

    .line 8
    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    if-nez v26, :cond_0

    .line 9
    iget v4, v6, Lo/V9;->f:I

    iput v4, v6, Lo/V9;->f:I

    :goto_1
    move v10, v0

    move/from16 v29, v1

    move v1, v2

    move/from16 v31, v3

    move/from16 v3, v22

    const/16 v27, 0x1

    goto/16 :goto_d

    .line 10
    :cond_0
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v12, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v6, v13}, Lo/V9;->i(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12
    iget v4, v6, Lo/V9;->f:I

    iget v5, v6, Lo/V9;->m:I

    add-int/2addr v4, v5

    iput v4, v6, Lo/V9;->f:I

    .line 13
    :cond_2
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lo/U9;

    .line 14
    iget v4, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v17, v17, v4

    if-ne v1, v11, :cond_3

    .line 15
    iget v12, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v12, :cond_3

    cmpl-float v12, v4, v15

    if-lez v12, :cond_3

    .line 16
    iget v4, v6, Lo/V9;->f:I

    .line 17
    iget v12, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v4

    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v11

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v6, Lo/V9;->f:I

    move v10, v0

    move/from16 v29, v1

    move/from16 v30, v2

    move/from16 v31, v3

    move-object v15, v5

    const/4 v4, 0x1

    const/16 v27, 0x1

    goto :goto_4

    .line 18
    :cond_3
    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v11, :cond_4

    cmpl-float v4, v4, v15

    if-lez v4, :cond_4

    .line 19
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    move v11, v14

    :goto_2
    cmpl-float v4, v17, v15

    if-nez v4, :cond_5

    .line 20
    iget v4, v6, Lo/V9;->f:I

    move v12, v4

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    const/4 v4, 0x0

    move v10, v0

    move-object/from16 v0, p0

    move/from16 v29, v1

    move-object/from16 v1, v26

    move/from16 v30, v2

    move/from16 v2, p1

    move/from16 v31, v3

    move v3, v4

    const/16 v27, 0x1

    move/from16 v4, p2

    move-object v15, v5

    move v5, v12

    .line 21
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    if-eq v11, v14, :cond_6

    .line 22
    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 23
    :cond_6
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 24
    iget v1, v6, Lo/V9;->f:I

    add-int v2, v1, v0

    .line 25
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lo/V9;->f:I

    move/from16 v5, v21

    if-eqz v9, :cond_7

    .line 26
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v21

    :cond_7
    move/from16 v4, v20

    :goto_4
    if-ltz v10, :cond_8

    add-int/lit8 v0, v13, 0x1

    if-ne v10, v0, :cond_8

    .line 27
    iget v0, v6, Lo/V9;->f:I

    iput v0, v6, Lo/V9;->c:I

    :cond_8
    if-ge v13, v10, :cond_9

    .line 28
    iget v0, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_a

    :cond_9
    move/from16 v1, v30

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_5

    .line 29
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_5
    if-eq v1, v0, :cond_b

    .line 30
    iget v0, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    move/from16 v5, v27

    move/from16 v25, v5

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    .line 31
    :goto_6
    iget v0, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    .line 32
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    move/from16 v3, v22

    .line 33
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 34
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    move/from16 v12, v23

    .line 35
    invoke-static {v12, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v11

    if-eqz v24, :cond_c

    .line 36
    iget v12, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v14, -0x1

    if-ne v12, v14, :cond_c

    move/from16 v12, v27

    goto :goto_7

    :cond_c
    const/4 v12, 0x0

    .line 37
    :goto_7
    iget v14, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_e

    if-eqz v5, :cond_d

    :goto_8
    move/from16 v14, v19

    goto :goto_9

    :cond_d
    move v0, v2

    goto :goto_8

    .line 38
    :goto_9
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto :goto_c

    :cond_e
    move/from16 v14, v19

    if-eqz v5, :cond_f

    :goto_a
    move/from16 v2, v18

    goto :goto_b

    :cond_f
    move v0, v2

    goto :goto_a

    .line 39
    :goto_b
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v19, v14

    :goto_c
    move/from16 v20, v4

    move/from16 v23, v11

    move/from16 v24, v12

    :goto_d
    add-int/lit8 v13, v13, 0x1

    move v2, v1

    move/from16 v22, v3

    move v0, v10

    move/from16 v4, v27

    move/from16 v1, v29

    move/from16 v3, v31

    const/4 v5, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x40000000    # 2.0f

    const/16 v12, 0x8

    const/high16 v14, -0x80000000

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_10
    move/from16 v29, v1

    move v1, v2

    move/from16 v31, v3

    move/from16 v27, v4

    move/from16 v2, v18

    move/from16 v14, v19

    move/from16 v5, v21

    move/from16 v3, v22

    move/from16 v12, v23

    .line 40
    iget v0, v6, Lo/V9;->f:I

    move/from16 v10, v31

    if-lez v0, :cond_11

    invoke-virtual {v6, v10}, Lo/V9;->i(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 41
    iget v0, v6, Lo/V9;->f:I

    iget v4, v6, Lo/V9;->m:I

    add-int/2addr v0, v4

    iput v0, v6, Lo/V9;->f:I

    :cond_11
    move/from16 v4, v29

    if-eqz v9, :cond_15

    const/high16 v0, -0x80000000

    if-eq v4, v0, :cond_12

    if-nez v4, :cond_15

    :cond_12
    const/4 v11, 0x0

    .line 42
    iput v11, v6, Lo/V9;->f:I

    move v0, v11

    :goto_e
    if-ge v0, v10, :cond_15

    .line 43
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_13

    .line 44
    iget v13, v6, Lo/V9;->f:I

    iput v13, v6, Lo/V9;->f:I

    goto :goto_f

    .line 45
    :cond_13
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v11, 0x8

    if-ne v15, v11, :cond_14

    goto :goto_f

    .line 46
    :cond_14
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lo/U9;

    .line 47
    iget v13, v6, Lo/V9;->f:I

    add-int v21, v13, v5

    .line 48
    iget v15, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v21, v21, v15

    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v11, v21, v11

    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v6, Lo/V9;->f:I

    :goto_f
    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x0

    goto :goto_e

    .line 49
    :cond_15
    iget v0, v6, Lo/V9;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    add-int/2addr v13, v11

    add-int/2addr v13, v0

    iput v13, v6, Lo/V9;->f:I

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v11, 0x0

    .line 51
    invoke-static {v0, v8, v11}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    const v11, 0xffffff

    and-int/2addr v11, v0

    .line 52
    iget v13, v6, Lo/V9;->f:I

    sub-int/2addr v11, v13

    if-nez v20, :cond_1a

    if-eqz v11, :cond_16

    const/4 v13, 0x0

    cmpl-float v15, v17, v13

    if-lez v15, :cond_16

    goto :goto_13

    .line 53
    :cond_16
    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v9, :cond_19

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v4, v9, :cond_19

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v10, :cond_19

    .line 54
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_18

    .line 55
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v13, 0x8

    if-ne v11, v13, :cond_17

    goto :goto_11

    .line 56
    :cond_17
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lo/U9;

    .line 57
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_18

    .line 58
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 59
    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 60
    invoke-virtual {v9, v11, v14}, Landroid/view/View;->measure(II)V

    :cond_18
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_19
    :goto_12
    move/from16 v22, v3

    goto/16 :goto_1b

    .line 61
    :cond_1a
    :goto_13
    iget v5, v6, Lo/V9;->g:F

    const/4 v9, 0x0

    cmpl-float v13, v5, v9

    if-lez v13, :cond_1b

    move/from16 v17, v5

    :cond_1b
    const/4 v5, 0x0

    .line 62
    iput v5, v6, Lo/V9;->f:I

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v10, :cond_25

    .line 63
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 64
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_1c

    move/from16 v29, v4

    goto/16 :goto_1a

    .line 65
    :cond_1c
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lo/U9;

    .line 66
    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v15, 0x0

    cmpl-float v16, v14, v15

    if-lez v16, :cond_21

    int-to-float v15, v11

    mul-float/2addr v15, v14

    div-float v15, v15, v17

    float-to-int v15, v15

    sub-float v17, v17, v14

    sub-int/2addr v11, v15

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    add-int v16, v16, v14

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v16, v16, v14

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v14, v16, v14

    move/from16 v16, v11

    iget v11, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 68
    invoke-static {v7, v14, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 69
    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v14, :cond_1f

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v4, v14, :cond_1d

    goto :goto_16

    :cond_1d
    if-lez v15, :cond_1e

    goto :goto_15

    :cond_1e
    const/4 v15, 0x0

    .line 70
    :goto_15
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 71
    invoke-virtual {v9, v11, v15}, Landroid/view/View;->measure(II)V

    goto :goto_17

    :cond_1f
    const/high16 v14, 0x40000000    # 2.0f

    .line 72
    :goto_16
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v15, v18, v15

    if-gez v15, :cond_20

    const/4 v15, 0x0

    .line 73
    :cond_20
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 74
    invoke-virtual {v9, v11, v15}, Landroid/view/View;->measure(II)V

    .line 75
    :goto_17
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    and-int/lit16 v11, v11, -0x100

    .line 76
    invoke-static {v12, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move/from16 v11, v16

    .line 77
    :cond_21
    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v15, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v14, v15

    .line 78
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    .line 79
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v16, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_22

    .line 80
    iget v3, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v29, v4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_23

    goto :goto_18

    :cond_22
    move/from16 v29, v4

    const/4 v4, -0x1

    :cond_23
    move v14, v15

    .line 81
    :goto_18
    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v24, :cond_24

    .line 82
    iget v3, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v3, v4, :cond_24

    move/from16 v3, v27

    goto :goto_19

    :cond_24
    const/4 v3, 0x0

    .line 83
    :goto_19
    iget v4, v6, Lo/V9;->f:I

    .line 84
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v4

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v14

    iget v13, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v13

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v6, Lo/V9;->f:I

    move/from16 v24, v3

    move/from16 v3, v16

    :goto_1a
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v29

    goto/16 :goto_14

    .line 85
    :cond_25
    iget v4, v6, Lo/V9;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v5

    add-int/2addr v9, v4

    iput v9, v6, Lo/V9;->f:I

    goto/16 :goto_12

    :goto_1b
    if-nez v24, :cond_26

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_26

    goto :goto_1c

    :cond_26
    move/from16 v2, v22

    .line 86
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 88
    invoke-static {v1, v7, v12}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {v6, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    if-eqz v25, :cond_62

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/4 v9, 0x0

    :goto_1d
    if-ge v9, v10, :cond_62

    .line 90
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_27

    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lo/U9;

    .line 93
    iget v0, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_27

    .line 94
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v4, p2

    .line 96
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 97
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_27
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_28
    move/from16 v27, v4

    move v0, v5

    .line 98
    iput v0, v6, Lo/V9;->f:I

    .line 99
    invoke-virtual/range {p0 .. p0}, Lo/V9;->getVirtualChildCount()I

    move-result v9

    .line 100
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 101
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 102
    iget-object v0, v6, Lo/V9;->i:[I

    const/4 v12, 0x4

    if-eqz v0, :cond_29

    iget-object v0, v6, Lo/V9;->j:[I

    if-nez v0, :cond_2a

    .line 103
    :cond_29
    new-array v0, v12, [I

    iput-object v0, v6, Lo/V9;->i:[I

    .line 104
    new-array v0, v12, [I

    iput-object v0, v6, Lo/V9;->j:[I

    .line 105
    :cond_2a
    iget-object v13, v6, Lo/V9;->i:[I

    .line 106
    iget-object v14, v6, Lo/V9;->j:[I

    const/4 v15, 0x3

    const/4 v0, -0x1

    .line 107
    aput v0, v13, v15

    const/16 v17, 0x2

    aput v0, v13, v17

    aput v0, v13, v27

    const/4 v1, 0x0

    aput v0, v13, v1

    .line 108
    aput v0, v14, v15

    aput v0, v14, v17

    aput v0, v14, v27

    aput v0, v14, v1

    .line 109
    iget-boolean v5, v6, Lo/V9;->a:Z

    .line 110
    iget-boolean v4, v6, Lo/V9;->h:Z

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v10, v0, :cond_2b

    move/from16 v18, v27

    goto :goto_1e

    :cond_2b
    const/16 v18, 0x0

    :goto_1e
    move/from16 v19, v27

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    :goto_1f
    if-ge v3, v9, :cond_3f

    .line 111
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_2c

    .line 112
    iget v7, v6, Lo/V9;->f:I

    iput v7, v6, Lo/V9;->f:I

    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v30, v5

    goto/16 :goto_2c

    :cond_2c
    move/from16 v25, v0

    .line 113
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    move/from16 v26, v2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2d

    move/from16 v30, v5

    move/from16 v0, v25

    move/from16 v2, v26

    move/from16 v25, v3

    move/from16 v26, v4

    goto/16 :goto_2c

    .line 114
    :cond_2d
    invoke-virtual {v6, v3}, Lo/V9;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 115
    iget v0, v6, Lo/V9;->f:I

    iget v2, v6, Lo/V9;->l:I

    add-int/2addr v0, v2

    iput v0, v6, Lo/V9;->f:I

    .line 116
    :cond_2e
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo/U9;

    .line 117
    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v29, v1, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v10, v1, :cond_31

    .line 118
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v1, :cond_31

    const/4 v1, 0x0

    cmpl-float v30, v0, v1

    if-lez v30, :cond_31

    if-eqz v18, :cond_2f

    .line 119
    iget v0, v6, Lo/V9;->f:I

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v30, v3

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    iput v1, v6, Lo/V9;->f:I

    goto :goto_20

    :cond_2f
    move/from16 v30, v3

    .line 120
    iget v0, v6, Lo/V9;->f:I

    .line 121
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lo/V9;->f:I

    :goto_20
    if-eqz v5, :cond_30

    const/4 v0, 0x0

    .line 122
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 123
    invoke-virtual {v7, v1, v1}, Landroid/view/View;->measure(II)V

    move-object v0, v2

    move/from16 v33, v25

    move/from16 v34, v26

    move/from16 v25, v30

    move/from16 v26, v4

    move/from16 v30, v5

    goto/16 :goto_25

    :cond_30
    move-object v0, v2

    move/from16 v33, v25

    move/from16 v34, v26

    move/from16 v25, v30

    const/high16 v1, 0x40000000    # 2.0f

    move/from16 v26, v4

    move/from16 v30, v5

    move/from16 v4, v27

    goto/16 :goto_26

    :cond_31
    move/from16 v30, v3

    .line 124
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v1, :cond_32

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_33

    const/4 v0, -0x2

    .line 125
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, 0x0

    goto :goto_21

    :cond_32
    const/4 v1, 0x0

    :cond_33
    const/high16 v3, -0x80000000

    :goto_21
    cmpl-float v0, v29, v1

    if-nez v0, :cond_34

    .line 126
    iget v0, v6, Lo/V9;->f:I

    move/from16 v31, v0

    goto :goto_22

    :cond_34
    const/16 v31, 0x0

    :goto_22
    const/16 v32, 0x0

    move/from16 v1, v25

    move-object/from16 v0, p0

    move/from16 v33, v1

    move-object v1, v7

    move-object/from16 v35, v2

    move/from16 v34, v26

    move/from16 v2, p1

    move/from16 v36, v3

    move/from16 v25, v30

    move/from16 v3, v31

    move/from16 v26, v4

    move/from16 v4, p2

    move/from16 v30, v5

    move/from16 v5, v32

    .line 127
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    move/from16 v1, v36

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_35

    move-object/from16 v0, v35

    .line 128
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_23

    :cond_35
    move-object/from16 v0, v35

    .line 129
    :goto_23
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz v18, :cond_36

    .line 130
    iget v2, v6, Lo/V9;->f:I

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 131
    iput v3, v6, Lo/V9;->f:I

    goto :goto_24

    .line 132
    :cond_36
    iget v2, v6, Lo/V9;->f:I

    add-int v3, v2, v1

    .line 133
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v6, Lo/V9;->f:I

    :goto_24
    if-eqz v26, :cond_37

    .line 134
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_37
    :goto_25
    move/from16 v4, v21

    const/high16 v1, 0x40000000    # 2.0f

    :goto_26
    if-eq v11, v1, :cond_38

    .line 135
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_38

    move/from16 v5, v27

    move/from16 v24, v5

    goto :goto_27

    :cond_38
    const/4 v5, 0x0

    .line 136
    :goto_27
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 137
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 138
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v8, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    if-eqz v30, :cond_3a

    .line 139
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3a

    .line 140
    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v8, :cond_39

    iget v8, v6, Lo/V9;->e:I

    :cond_39
    and-int/lit8 v8, v8, 0x70

    const/16 v21, 0x4

    shr-int/lit8 v8, v8, 0x4

    const/16 v21, -0x2

    and-int/lit8 v8, v8, -0x2

    shr-int/lit8 v8, v8, 0x1

    move/from16 v21, v1

    .line 141
    aget v1, v13, v8

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v13, v8

    .line 142
    aget v1, v14, v8

    sub-int v7, v2, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v14, v8

    :goto_28
    move/from16 v7, v34

    goto :goto_29

    :cond_3a
    move/from16 v21, v1

    goto :goto_28

    .line 143
    :goto_29
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v19, :cond_3b

    .line 144
    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3b

    move/from16 v7, v27

    goto :goto_2a

    :cond_3b
    const/4 v7, 0x0

    .line 145
    :goto_2a
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v8, 0x0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_3d

    if-eqz v5, :cond_3c

    move/from16 v2, v21

    .line 146
    :cond_3c
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v0, v33

    goto :goto_2b

    :cond_3d
    if-eqz v5, :cond_3e

    move/from16 v2, v21

    :cond_3e
    move/from16 v0, v33

    .line 147
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2b
    move v2, v1

    move v8, v3

    move/from16 v21, v4

    move/from16 v19, v7

    move/from16 v1, v29

    :goto_2c
    add-int/lit8 v3, v25, 0x1

    move/from16 v7, p1

    move/from16 v4, v26

    move/from16 v5, v30

    goto/16 :goto_1f

    :cond_3f
    move v7, v2

    move/from16 v26, v4

    move/from16 v30, v5

    .line 148
    iget v2, v6, Lo/V9;->f:I

    if-lez v2, :cond_40

    invoke-virtual {v6, v9}, Lo/V9;->i(I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 149
    iget v2, v6, Lo/V9;->f:I

    iget v3, v6, Lo/V9;->l:I

    add-int/2addr v2, v3

    iput v2, v6, Lo/V9;->f:I

    .line 150
    :cond_40
    aget v2, v13, v27

    const/4 v3, -0x1

    if-ne v2, v3, :cond_42

    const/4 v4, 0x0

    aget v5, v13, v4

    if-ne v5, v3, :cond_42

    aget v4, v13, v17

    if-ne v4, v3, :cond_42

    const/4 v4, 0x3

    aget v5, v13, v4

    if-eq v5, v3, :cond_41

    goto :goto_2d

    :cond_41
    move v2, v7

    move/from16 v25, v8

    goto :goto_2e

    :cond_42
    const/4 v4, 0x3

    .line 151
    :goto_2d
    aget v3, v13, v4

    const/4 v5, 0x0

    aget v4, v13, v5

    aget v5, v13, v17

    .line 152
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 153
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 154
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x3

    .line 155
    aget v4, v14, v3

    const/4 v3, 0x0

    aget v5, v14, v3

    aget v3, v14, v27

    move/from16 v25, v8

    aget v8, v14, v17

    .line 156
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 157
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 158
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v2

    .line 159
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_2e
    if-eqz v26, :cond_47

    const/high16 v3, -0x80000000

    if-eq v10, v3, :cond_43

    if-nez v10, :cond_47

    :cond_43
    const/4 v3, 0x0

    .line 160
    iput v3, v6, Lo/V9;->f:I

    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v9, :cond_47

    .line 161
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_44

    .line 162
    iget v3, v6, Lo/V9;->f:I

    iput v3, v6, Lo/V9;->f:I

    goto :goto_30

    .line 163
    :cond_44
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v7, 0x8

    if-ne v4, v7, :cond_45

    goto :goto_30

    .line 164
    :cond_45
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lo/U9;

    if-eqz v18, :cond_46

    .line 165
    iget v4, v6, Lo/V9;->f:I

    iget v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v3

    add-int/2addr v7, v4

    .line 166
    iput v7, v6, Lo/V9;->f:I

    goto :goto_30

    .line 167
    :cond_46
    iget v4, v6, Lo/V9;->f:I

    add-int v7, v4, v12

    .line 168
    iget v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v3

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Lo/V9;->f:I

    :goto_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 169
    :cond_47
    iget v3, v6, Lo/V9;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, v3

    iput v5, v6, Lo/V9;->f:I

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v7, p1

    const/4 v4, 0x0

    .line 171
    invoke-static {v3, v7, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v4, v3

    .line 172
    iget v5, v6, Lo/V9;->f:I

    sub-int/2addr v4, v5

    if-nez v21, :cond_4c

    if-eqz v4, :cond_48

    const/4 v8, 0x0

    cmpl-float v16, v1, v8

    if-lez v16, :cond_48

    goto :goto_33

    .line 173
    :cond_48
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v26, :cond_4b

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v10, v1, :cond_4b

    const/4 v1, 0x0

    :goto_31
    if-ge v1, v9, :cond_4b

    .line 174
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4a

    .line 175
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v10, 0x8

    if-ne v8, v10, :cond_49

    goto :goto_32

    .line 176
    :cond_49
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lo/U9;

    .line 177
    iget v8, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v10, 0x0

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4a

    const/high16 v8, 0x40000000    # 2.0f

    .line 178
    invoke-static {v12, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 179
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-static {v13, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 180
    invoke-virtual {v4, v10, v13}, Landroid/view/View;->measure(II)V

    :cond_4a
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_4b
    move/from16 v4, p2

    move/from16 v22, v9

    const/4 v8, 0x0

    goto/16 :goto_42

    .line 181
    :cond_4c
    :goto_33
    iget v2, v6, Lo/V9;->g:F

    const/4 v8, 0x0

    cmpl-float v12, v2, v8

    if-lez v12, :cond_4d

    move v1, v2

    :cond_4d
    const/4 v2, -0x1

    const/4 v8, 0x3

    .line 182
    aput v2, v13, v8

    aput v2, v13, v17

    aput v2, v13, v27

    const/4 v12, 0x0

    aput v2, v13, v12

    .line 183
    aput v2, v14, v8

    aput v2, v14, v17

    aput v2, v14, v27

    aput v2, v14, v12

    .line 184
    iput v12, v6, Lo/V9;->f:I

    move/from16 v12, v25

    const/4 v2, -0x1

    const/4 v8, 0x0

    :goto_34
    if-ge v8, v9, :cond_5c

    .line 185
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_4e

    .line 186
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_4f

    :cond_4e
    move v7, v4

    move/from16 v22, v9

    const/16 v21, 0x0

    const/16 v23, 0x4

    const/16 v28, -0x2

    move/from16 v4, p2

    goto/16 :goto_3f

    .line 187
    :cond_4f
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lo/U9;

    .line 188
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v21, 0x0

    cmpl-float v22, v7, v21

    if-lez v22, :cond_54

    move/from16 v22, v9

    int-to-float v9, v4

    mul-float/2addr v9, v7

    div-float/2addr v9, v1

    float-to-int v9, v9

    sub-float/2addr v1, v7

    sub-int/2addr v4, v9

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v25

    add-int v25, v25, v7

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v25, v25, v7

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v7, v25, v7

    move/from16 v25, v1

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v26, v4

    move/from16 v4, p2

    .line 190
    invoke-static {v4, v7, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 191
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v7, :cond_52

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v10, v7, :cond_50

    goto :goto_36

    :cond_50
    if-lez v9, :cond_51

    goto :goto_35

    :cond_51
    const/4 v9, 0x0

    .line 192
    :goto_35
    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v15, v9, v1}, Landroid/view/View;->measure(II)V

    goto :goto_37

    :cond_52
    const/high16 v7, 0x40000000    # 2.0f

    .line 193
    :goto_36
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    add-int v9, v28, v9

    if-gez v9, :cond_53

    const/4 v9, 0x0

    .line 194
    :cond_53
    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 195
    invoke-virtual {v15, v9, v1}, Landroid/view/View;->measure(II)V

    .line 196
    :goto_37
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    const/high16 v7, -0x1000000

    and-int/2addr v1, v7

    .line 197
    invoke-static {v12, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move/from16 v1, v25

    move/from16 v7, v26

    goto :goto_38

    :cond_54
    move v7, v4

    move/from16 v22, v9

    move/from16 v4, p2

    :goto_38
    if-eqz v18, :cond_55

    .line 198
    iget v9, v6, Lo/V9;->f:I

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    move/from16 v26, v1

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v25, v25, v1

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v25, v25, v1

    add-int v1, v25, v9

    .line 199
    iput v1, v6, Lo/V9;->f:I

    move/from16 v25, v7

    :goto_39
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_3a

    :cond_55
    move/from16 v26, v1

    .line 200
    iget v1, v6, Lo/V9;->f:I

    .line 201
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v1

    move/from16 v25, v7

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v7

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v7

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lo/V9;->f:I

    goto :goto_39

    :goto_3a
    if-eq v11, v1, :cond_56

    .line 202
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v1, v7, :cond_56

    move/from16 v1, v27

    goto :goto_3b

    :cond_56
    const/4 v1, 0x0

    .line 203
    :goto_3b
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v9, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v9

    .line 204
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v7

    .line 205
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v1, :cond_57

    goto :goto_3c

    :cond_57
    move v7, v9

    .line 206
    :goto_3c
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v19, :cond_58

    .line 207
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v1, v7, :cond_59

    move/from16 v1, v27

    goto :goto_3d

    :cond_58
    const/4 v7, -0x1

    :cond_59
    const/4 v1, 0x0

    :goto_3d
    if-eqz v30, :cond_5b

    .line 208
    invoke-virtual {v15}, Landroid/view/View;->getBaseline()I

    move-result v15

    if-eq v15, v7, :cond_5b

    .line 209
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v5, :cond_5a

    iget v5, v6, Lo/V9;->e:I

    :cond_5a
    and-int/lit8 v5, v5, 0x70

    const/16 v23, 0x4

    shr-int/lit8 v5, v5, 0x4

    const/16 v28, -0x2

    and-int/lit8 v5, v5, -0x2

    shr-int/lit8 v5, v5, 0x1

    .line 210
    aget v7, v13, v5

    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v13, v5

    .line 211
    aget v7, v14, v5

    sub-int/2addr v9, v15

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v14, v5

    goto :goto_3e

    :cond_5b
    const/16 v23, 0x4

    const/16 v28, -0x2

    :goto_3e
    move/from16 v19, v1

    move/from16 v7, v25

    move/from16 v1, v26

    :goto_3f
    add-int/lit8 v8, v8, 0x1

    move v4, v7

    move/from16 v9, v22

    move/from16 v7, p1

    goto/16 :goto_34

    :cond_5c
    move/from16 v4, p2

    move/from16 v22, v9

    .line 212
    iget v1, v6, Lo/V9;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v7, v5

    add-int/2addr v7, v1

    iput v7, v6, Lo/V9;->f:I

    .line 213
    aget v1, v13, v27

    const/4 v5, -0x1

    if-ne v1, v5, :cond_5e

    const/4 v7, 0x0

    aget v8, v13, v7

    if-ne v8, v5, :cond_5e

    aget v7, v13, v17

    if-ne v7, v5, :cond_5e

    const/4 v7, 0x3

    aget v8, v13, v7

    if-eq v8, v5, :cond_5d

    goto :goto_40

    :cond_5d
    const/4 v8, 0x0

    goto :goto_41

    :cond_5e
    const/4 v7, 0x3

    .line 214
    :goto_40
    aget v5, v13, v7

    const/4 v8, 0x0

    aget v9, v13, v8

    aget v10, v13, v17

    .line 215
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 216
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 217
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 218
    aget v5, v14, v7

    aget v7, v14, v8

    aget v9, v14, v27

    aget v10, v14, v17

    .line 219
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 220
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 221
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v1

    .line 222
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    :goto_41
    move/from16 v25, v12

    :goto_42
    if-nez v19, :cond_5f

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v11, v1, :cond_5f

    goto :goto_43

    :cond_5f
    move v0, v2

    .line 223
    :goto_43
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int v1, v25, v1

    or-int/2addr v1, v3

    shl-int/lit8 v2, v25, 0x10

    .line 225
    invoke-static {v0, v4, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 226
    invoke-virtual {v6, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    if-eqz v24, :cond_62

    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move/from16 v9, v22

    :goto_44
    if-ge v8, v9, :cond_62

    .line 228
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v10, 0x8

    if-eq v0, v10, :cond_60

    .line 230
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lo/U9;

    .line 231
    iget v0, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v12, -0x1

    if-ne v0, v12, :cond_61

    .line 232
    iget v13, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v4, v7

    .line 234
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 235
    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_45

    :cond_60
    const/4 v12, -0x1

    :cond_61
    :goto_45
    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    :cond_62
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lo/V9;->a:Z

    .line 3
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 9
    iput p1, p0, Lo/V9;->b:I

    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "base aligned child index out of range (0, "

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, ")"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/V9;->k:Landroid/graphics/drawable/Drawable;

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lo/V9;->k:Landroid/graphics/drawable/Drawable;

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 14
    move-result v1

    .line 15
    iput v1, p0, Lo/V9;->l:I

    .line 17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 20
    move-result v1

    .line 21
    iput v1, p0, Lo/V9;->m:I

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iput v0, p0, Lo/V9;->l:I

    .line 26
    iput v0, p0, Lo/V9;->m:I

    .line 28
    :goto_0
    if-nez p1, :cond_2

    .line 30
    const/4 v0, 0x1

    .line 31
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 37
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/V9;->o:I

    .line 3
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lo/V9;->e:I

    .line 3
    if-eq v0, p1, :cond_2

    .line 5
    const v0, 0x800007

    .line 8
    and-int/2addr v0, p1

    .line 9
    if-nez v0, :cond_0

    .line 11
    const v0, 0x800003

    .line 14
    or-int/2addr p1, v0

    .line 15
    :cond_0
    and-int/lit8 v0, p1, 0x70

    .line 17
    if-nez v0, :cond_1

    .line 19
    or-int/lit8 p1, p1, 0x30

    .line 21
    :cond_1
    iput p1, p0, Lo/V9;->e:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 26
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2

    .line 1
    const v0, 0x800007

    .line 4
    and-int/2addr p1, v0

    .line 5
    iget v1, p0, Lo/V9;->e:I

    .line 7
    and-int/2addr v0, v1

    .line 8
    if-eq v0, p1, :cond_0

    .line 10
    const v0, -0x800008

    .line 13
    and-int/2addr v0, v1

    .line 14
    or-int/2addr p1, v0

    .line 15
    iput p1, p0, Lo/V9;->e:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 20
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lo/V9;->h:Z

    .line 3
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget v0, p0, Lo/V9;->d:I

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput p1, p0, Lo/V9;->d:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 1
    iget v0, p0, Lo/V9;->n:I

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    :cond_0
    iput p1, p0, Lo/V9;->n:I

    .line 10
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    .line 1
    and-int/lit8 p1, p1, 0x70

    .line 3
    iget v0, p0, Lo/V9;->e:I

    .line 5
    and-int/lit8 v1, v0, 0x70

    .line 7
    if-eq v1, p1, :cond_0

    .line 9
    and-int/lit8 v0, v0, -0x71

    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lo/V9;->e:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 5
    move-result p1

    .line 6
    iput p1, p0, Lo/V9;->g:F

    .line 8
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
